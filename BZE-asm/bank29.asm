.BANK 29 SLOT 0
.ORG $0000

.SECTION "Bank29" FORCE

	cmp $006D.w		; CD 6D 00
	sbc $0277F8.l,X		; FF F8 77 02
	inc $FE06.w,X		; FE 06 FE
	sed		; F8
	asl A		; 0A
	tsb $FE.b		; 04 FE
	sbc $CC05.w,X		; FD 05 CC
	lda $01FE.w		; AD FE 01
	inc $FE41.w,X		; FE 41 FE
	sbc $FE40.w,X		; FD 40 FE
	sed		; F8
	bvc  90.b		; 50 5A
	lda $F8FF.w		; AD FF F8
	ora ($8C.b,S),Y		; 13 8C
	jsr ($F8FE.w,X)		; FC FE F8
	and [$09.b],Y		; 37 09
	inc $28F8.w,X		; FE F8 28
	bne  -4.b		; D0 FC
	sbc $800AF8.l,X		; FF F8 0A 80
	inc $3AF8.w,X		; FE F8 3A
	ror A		; 6A
	sbc $FF.b,X		; F5 FF
	sbc $B2F2C6.l,X		; FF C6 F2 B2
	beq  11.b		; F0 0B
	inc $80FD.w,X		; FE FD 80
	inc $18F8.w,X		; FE F8 18
	cmp ($F8.b)		; D2 F8
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	rol $0002.w		; 2E 02 00
	stz $0A2A.w		; 9C 2A 0A
	inc $FE08.w,X		; FE 08 FE
	rti		; 40

	inc $22F8.w,X		; FE F8 22
	dec $FC.b,X		; D6 FC
	tax		; AA
	tax		; AA
	inc $F8FF.w,X		; FE FF F8
	and $F2.b,S		; 23 F2
	cpx $F858.w		; EC 58 F8
	eor $48.b,S		; 43 48
	sed		; F8
	ora ($4C.b,S),Y		; 13 4C
	sed		; F8
	jsr $F854.w		; 20 54 F8
	bit $8D5A.w		; 2C 5A 8D
	sbc $3CA7F8.l,X		; FF F8 A7 3C
	inx		; E8
	and $D8.b,X		; 35 D8
	sed		; F8
	ora $E75405.l		; 0F 05 54 E7
	rts		; 60

	beq  11.b		; F0 0B
	rol $42E4.w		; 2E E4 42
	tax		; AA
	tax		; AA
	inc $E084.w,X		; FE 84 E0
	and ($FF.b),Y		; 31 FF
	sed		; F8
	phy		; 5A
	ldy $2AE0.w,X		; BC E0 2A
	dey		; 88
	inc $E88C.w		; EE 8C E8
	eor ($FE.b,S),Y		; 53 FE
	sed		; F8
	eor [$8A.b],Y		; 57 8A
	pea $AAAA.w		; F4 AA AA
	sei		; 78
	cpx $FE.b		; E4 FE
	sed		; F8
	and [$18.b],Y		; 37 18
	inx		; E8
	eor ($7A.b,X)		; 41 7A
	jsr ($F876.w,X)		; FC 76 F8
	ora ($BA.b),Y		; 11 BA
	cpx #$09.b		; E0 09
	ldx $E0.b,Y		; B6 E0
	txy		; 9B
	ror $10D0.w		; 6E D0 10
	tax		; AA
	ror A		; 6A
	asl $EF.b,X		; 16 EF
	txs		; 9A
	cpx #$3D.b		; E0 3D
	txa		; 8A
	cpx #$13.b		; E0 13
	cpx $27F8.w		; EC F8 27
	sty $F8.b		; 84 F8
	and [$B4.b],Y		; 37 B4
	sed		; F8
	ora #$C2B8.w		; 09 B8 C2
	inc $1DF8.w,X		; FE F8 1D
	tsb $25.b		; 04 25
	plb		; AB
	cpx $D8.b		; E4 D8
	inc A		; 1A
	stz $D0.b,X		; 74 D0
	ora ($FE.b,S),Y		; 13 FE
	sbc $080BF8.l,X		; FF F8 0B 08
	dec $1CD8.w		; CE D8 1C
	iny		; C8
	sed		; F8
	phd		; 0B
	clc		; 18
	mvn $C0,$2C		; 54 2C C0
	ora #$40FE.w		; 09 FE 40
	inc $D8E7.w,X		; FE E7 D8
	sta $40.b,S		; 83 40
	inx		; E8
	ora $FE.b,X		; 15 FE
	sed		; F8
	ora ($AD.b),Y		; 11 AD
	phy		; 5A
	clv		; B8
	cpx #$29.b		; E0 29
	stx $D8.b		; 86 D8
	ora [$04.b],Y		; 17 04
	inc $90FD.w,X		; FE FD 90
	cld		; D8
	ora $5E.b,X		; 15 5E
	sed		; F8
	eor ($FE.b,X)		; 41 FE
	sed		; F8
	asl $FE80.w		; 0E 80 FE
	sed		; F8
	asl A		; 0A
	eor $B5.b,X		; 55 B5
	nop		; EA
	sed		; F8
	ora ($D4.b,S),Y		; 13 D4
	sed		; F8
	ora $F8C2.w		; 0D C2 F8
	asl $F0BA.w		; 0E BA F0
	eor $F0.b,S		; 43 F0
	sed		; F8
	ora [$FF.b],Y		; 17 FF
	sed		; F8
	adc $C852.w,Y		; 79 52 C8
	ora $AD5646.l		; 0F 46 56 AD
	inc $18F8.w,X		; FE F8 18
	stz $11D0.w,X		; 9E D0 11
	stx $FE.b		; 86 FE
	sed		; F8
	trb $74.b		; 14 74
	bne  19.b		; D0 13
	dec $11E0.w,X		; DE E0 11
	sec		; 38
	beq  42.b		; F0 2A
	rti		; 40

	inc $39F8.w,X		; FE F8 39
	tax		; AA
	tax		; AA
.ACCU 16
	rep #$E0		; C2 E0
	adc $59B860.l,X		; 7F 60 B8 59
	rol A		; 2A
	cpy #$3A.b		; C0 3A
	bpl -64.b		; 10 C0
	plp		; 28
	cpx #$B0.b		; E0 B0
	ora $15D0F8.l,X		; 1F F8 D0 15
	bit $28DC.w		; 2C DC 28
	cld		; D8
	ora #$56AA.w		; 09 AA 56
	clv		; B8
	sed		; F8
	ora ($EE.b),Y		; 11 EE
	tya		; 98
	and #$D0CA.w		; 29 CA D0
	ora $2FE82A.l		; 0F 2A E8 2F
	asl $D0.b,X		; 16 D0
	and ($FE.b,X)		; 21 FE
	jsr ($FE45.w,X)		; FC 45 FE
	sed		; F8
	asl $D2.b,X		; 16 D2
	sed		; F8
	ora $A02AB5.l,X		; 1F B5 2A A0
	sed		; F8
	and [$EE.b]		; 27 EE
	beq   9.b		; F0 09
	bpl -60.b		; 10 C4
	pha		; 48
	inc $28F8.w,X		; FE F8 28
	cld		; D8
	clv		; B8
	adc $26.b		; 65 26
	bne  23.b		; D0 17
	.db $82, $F8, $0D		; 82 F8 0D
	tay		; A8
	lsr A		; 4A
	inc $B0DE.w,X		; FE DE B0
	ora ($94.b,S),Y		; 13 94
	ldy #$4F.b		; A0 4F
	inc $1BF8.w,X		; FE F8 1B
	asl $F0.b,X		; 16 F0
	ora $A864.w,Y		; 19 64 A8
	pld		; 2B
	tax		; AA
	tax		; AA
	cmp ($2C.b)		; D2 2C
	dey		; 88
	and $A416.w,X		; 3D 16 A4
	sbc ($A0.b)		; F2 A0
	plb		; AB
	inc $A0.b		; E6 A0
	ora ($FE.b),Y		; 11 FE
	sed		; F8
	and $F038.w,X		; 3D 38 F0
	and $F6D4.w		; 2D D4 F6
	tax		; AA
	rol $B80C.w,X		; 3E 0C B8
	ora ($90.b)		; 12 90
	lda $B2.b,X		; B5 B2
	beq   9.b		; F0 09
	stz $0AF8.w		; 9C F8 0A
	jmp $FF2ED8.l		; 5C D8 2E FF
	sed		; F8
	sty $FF.b,X		; 94 FF
	brk $E7.b		; 00 E7
	ora $FC1380.l,X		; 1F 80 13 FC
	inc $F8FF.w,X		; FE FF F8
	ora $EAF13F.l		; 0F 3F F1 EA
	bit $FEB5.w,X		; 3C B5 FE
	sta $07FF7C.l,X		; 9F 7C FF 07
	sed		; F8
	asl $FDE8.w		; 0E E8 FD
	ora $C3.b,S		; 03 C3
	and $FCFDD4.l,X		; 3F D4 FD FC
	cmp [$F8.b]		; C7 F8
	jsr ($3F03.w,X)		; FC 03 3F
	sbc ($FF.b,S),Y		; F3 FF
	bit $C0F0.w,X		; 3C F0 C0
	dec $FA29.w		; CE 29 FA
	brk $38.b		; 00 38
	nop		; EA
	ora $D00FCC.l		; 0F CC 0F D0
	cmp $F3A7FA.l,X		; DF FA A7 F3
	ora $F3ECFC.l		; 0F FC EC F3
	beq  63.b		; F0 3F
	tsb $7ED2.w		; 0C D2 7E
	trb $CC80.w		; 1C 80 CC
	jsr ($031C.w,X)		; FC 1C 03
	sbc ($0C.b,S),Y		; F3 0C
	sbc $7F80FF.l,X		; FF FF 80 7F
	rol $F4C0.w,X		; 3E C0 F4
	sei		; 78
	cpx #$C7.b		; E0 C7
	brk $33.b		; 00 33
	txs		; 9A
	ldy $8700.w,X		; BC 00 87
	sta $1F60E0.l,X		; 9F E0 60 1F
	trb $18E0.w		; 1C E0 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	and $8E1ECF.l,X		; 3F CF 1E 8E
.ACCU 8
	sep #$E0		; E2 E0
	ora $E0E01F.l,X		; 1F 1F E0 E0
	stz $F103.w		; 9C 03 F1
	php		; 08
	adc $ACF4BC.l,X		; 7F BC F4 AC
	ora $FE70F0.l		; 0F F0 70 FE
	ora ($FF.b,X)		; 01 FF
	adc $A88020.l,X		; 7F 20 80 A8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc ($84.b),Y		; F1 84
	sty $F0.b		; 84 F0
	sta $0893E4.l,X		; 9F E4 93 08
	rol A		; 2A
	ply		; 7A
	sbc ($5D.b,S),Y		; F3 5D
	sbc $5D0AF8.l,X		; FF F8 0A 5D
	jsr ($FC41.w,X)		; FC 41 FC
	adc ($01.b)		; 72 01
	cpx #$73.b		; E0 73
	cpx #$DF.b		; E0 DF
	sed		; F8
	phd		; 0B
	sbc ($94.b),Y		; F1 94
	sbc $C5.b		; E5 C5
	cpx #$F8.b		; E0 F8
	asl $F8FF.w		; 0E FF F8
	tsb $E0EA.w		; 0C EA E0
	sbc $92BAB3.l,X		; FF B3 BA 92
	jsr ($F8E1.w,X)		; FC E1 F8
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora #$3F.b		; 09 3F
	cpy #$40.b		; C0 40
	inc $F8E1.w,X		; FE E1 F8
	ora #$40.b		; 09 40
	.db $82, $24, $E0		; 82 24 E0
	inc $FE40.w,X		; FE 40 FE
	jmp ($F8E0.w)		; 6C E0 F8
	ora #$40.b		; 09 40
	ldy #$F8.b		; A0 F8
	phd		; 0B
	lda #$D6.b		; A9 D6
	rti		; 40

	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F1DE.w		; 0C DE F1
	rts		; 60

	sed		; F8
	asl A		; 0A
	adc $60F1D0.l,X		; 7F D0 F1 60
	sed		; F8
	phd		; 0B
	sta ($7C.b,X)		; 81 7C
	adc $BCF180.l,X		; 7F 80 F1 BC
	inc $FCFE.w,X		; FE FE FC
	ora $87.b,S		; 03 87
	ror $7C33.w,X		; 7E 33 7C
	and $0FD8.w,X		; 3D D8 0F
	and $F5FE46.l,X		; 3F 46 FE F5
	asl A		; 0A
	txa		; 8A
	adc $FF505F.l,X		; 7F 5F 50 FF
	.db $42, $79		; 42 79
	sbc ($FF.b)		; F2 FF
	sbc $FFF2DF.l,X		; FF DF F2 FF
	cpy #$AA.b		; C0 AA
	adc $C301FE.l,X		; 7F FE 01 C3
	ora [$E2.b],Y		; 17 E2
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $80E378.l,X		; FF 78 E3 80
	cmp $8409F8.l,X		; DF F8 09 84
	cmp $F6.b,S		; C3 F6
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc $E6965F.l,X		; FF 5F 96 E6
	adc [$B6.b]		; 67 B6
	sbc $F319.w,X		; FD 19 F3
	cpx #$EE.b		; E0 EE
	cpx $8D.b		; E4 8D
	sbc ($02.b),Y		; F1 02
	adc ($15.b,X)		; 61 15
	sei		; 78
	sbc $00.b,X		; F5 00
.INDEX 16
	rep #$1F		; C2 1F
	inc $F87C.w,X		; FE 7C F8
	ora #$8A.b		; 09 8A
	jsr ($F8FF.w,X)		; FC FF F8
	ora #$02.b		; 09 02
	php		; 08
	rts		; 60

	and $E00A8A.l,X		; 3F 8A 0A E0
	sed		; F8
	asl A		; 0A
	cpx $24.b		; E4 24
	txa		; 8A
	asl $88.b,X		; 16 88
	sbc $2CE3E0.l		; EF E0 E3 2C
	cpx #$6AFF.w		; E0 FF 6A
	asl A		; 0A
	ldx $6B.b		; A6 6B
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$83.b		; 09 83
	nop		; EA
	inc $96F4.w,X		; FE F4 96
	rol $98.b		; 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $F100.w,X		; 1E 00 F1
	sbc $0B908F.l,X		; FF 8F 90 0B
	sbc ($2F.b),Y		; F1 2F
	dex		; CA
	wai		; CB
	sbc ($0F.b),Y		; F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	cpx #$F4C0.w		; E0 C0 F4
	and $0DE4C1.l,X		; 3F C1 E4 0D
	bmi -65.b		; 30 BF
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
	lda $F1E329.l,X		; BF 29 E3 F1
	stx $F8.b		; 86 F8
	ora #$55.b		; 09 55
	sbc ($9E.b,X)		; E1 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	inx		; E8
	cpx $A6.b		; E4 A6
	pea $D5FC.w		; F4 FC D5
	pld		; 2B
	ldy #$2BF2.w		; A0 F2 2B
	adc [$01.b],Y		; 77 01
	inc $FDFF.w		; EE FF FD
	bvs -23.b		; 70 E9
	jsr ($FFFF.w,X)		; FC FF FF
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	lda ($63.b,S),Y		; B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	bpl 106.b		; 10 6A
	jsr ($131C.w,X)		; FC 1C 13
	and $2F0CFC.l,X		; 3F FC 0C 2F
	ora ($DF.b,S),Y		; 13 DF
	and [$1F.b]		; 27 1F
	sbc $E77CE4.l		; EF E4 7C E7
	sbc $0FCE7B.l,X		; FF 7B CE 0F
	pei ($87.b)		; D4 87
	tyx		; BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	ror $18.b		; 66 18
	brk $F9.b		; 00 F9
	sbc [$FF.b],Y		; F7 FF
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$C06B.w		; E0 6B C0
	sbc [$A0.b]		; E7 A0
	stp		; DB
	bvc -29.b		; 50 E3
	sbc $47203D.l,X		; FF 3D 20 47
	cpx #$0609.w		; E0 09 06
	ora [$09.b],Y		; 17 09
	and $1F6F17.l		; 2F 17 6F 1F
	cmp $24170F.l,X		; DF 0F 17 24
	and $BFFFC3.l,X		; 3F C3 FF BF
	cpx #$00BF.w		; E0 BF 00
	sta $ACE1CA.l,X		; 9F CA E1 AC
	ora $EFF7FE.l		; 0F FE F7 EF
	adc $FFF2FE.l,X		; 7F FE F2 FF
	sed		; F8
	ora #$55AA.w		; 09 AA 55
	eor $AA.b,X		; 55 AA
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
	sbc $8541.w,X		; FD 41 85
	sbc [$C0.b]		; E7 C0
	asl $B2.b		; 06 B2
	cmp $FF20.w,Y		; D9 20 FF
	rol $FFF1.w		; 2E F1 FF
	tax		; AA
	ldy $F0.b		; A4 F0
	cpx #$F8.b		; E0 F8
	ora #$EB.b		; 09 EB
	jsr ($E314.w,X)		; FC 14 E3
	sbc $FD.b,X		; F5 FD
	lda $9E.b,X		; B5 9E
	inx		; E8
	ora #$AA.b		; 09 AA
	plx		; FA
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
	ora [$C2.b]		; 07 C2
	sbc $F8E0FA.l,X		; FF FA E0 F8
	phd		; 0B
	phb		; 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cpy $CD.b		; C4 CD
	iny		; C8
	lda [$FD.b]		; A7 FD
	sbc $A25F80.l,X		; FF 80 5F A2
	sbc #$EF.b		; E9 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	ora $033F01.l		; 0F 01 3F 03
	eor $5FBF33.l		; 4F 33 BF 5F
	adc $BF7FED.l,X		; 7F ED 7F BF
	sbc $1FBF3F.l,X		; FF 3F BF 1F
	ora $F1630F.l,X		; 1F 0F 63 F1
	eor $6454F2.l,X		; 5F F2 54 64
	cmp $3F03.w,Y		; D9 03 3F
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
	sbc $FFF5.w,X		; FD F5 FF
	sei		; 78
	txs		; 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$D5.b		; E0 D5
	brk $FA.b		; 00 FA
	adc $A6.b,S		; 63 A6
	dec A		; 3A
	phx		; DA
	beq -27.b		; F0 E5
	inc $A0E0.w,X		; FE E0 A0
	ora ($9E.b),Y		; 11 9E
	asl A		; 0A
	sbc $0F.b,S		; E3 0F
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $3DCA7E.l,X		; FF 7E CA 3D
	ldy #$F5.b		; A0 F5
	plp		; 28
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
	rti		; 40

	ldy $80.b		; A4 80
	jsr ($A0EF.w,X)		; FC EF A0
	eor ($A0.b)		; 52 A0
	beq   1.b		; F0 01
	jsr ($E0D8.w,X)		; FC D8 E0
	phd		; 0B
	inc $0BF8.w,X		; FE F8 0B
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	cmp $F7.b,S		; C3 F7
	dey		; 88
	lsr $620E.w,X		; 5E 0E 62
	xce		; FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sbc ($F1.b,X)		; E1 F1
	sta $FDFA70.l		; 8F 70 FA FD
	cop $FB.b		; 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	cmp [$D8.b]		; C7 D8
	rts		; 60

	adc [$40.b]		; 67 40
	ora $FCBF2A.l,X		; 1F 2A BF FC
	cmp $33EA36.l,X		; DF 36 EA 33
	eor $7F0F.w,Y		; 59 0F 7F
	sta $80FC26.l,X		; 9F 26 FC 80
	sbc ($D8.b,X)		; E1 D8
	ldy #$E4.b		; A0 E4
	jsr ($2227.w,X)		; FC 27 22
	sbc ($02.b,S),Y		; F3 02
	sbc [$05.b],Y		; F7 05
	sbc $FF08.w		; ED 08 FF
	sbc [$2A.b]		; E7 2A
	sed		; F8
	sbc $FAFD25.l,X		; FF 25 FD FA
	xce		; FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $2748.w,X		; 7D 48 27
	cpy #$0F.b		; C0 0F
	brk $5F.b		; 00 5F
	rti		; 40

	cpy #$FC.b		; C0 FC
	pei ($07.b)		; D4 07
	mvn $FF,$87		; 54 87 FF
	sta $BF.b,S		; 83 BF
	cmp $FD.b,S		; C3 FD
	ldy $21FC.w,X		; BC FC 21
	jsr ($1AB0.w,X)		; FC B0 1A
	jsr ($FC71.w,X)		; FC 71 FC
	asl $76.b		; 06 76
	cld		; D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $DE01.w,X		; FE 01 DE
	cmp $BBCE87.l,X		; DF 87 CE BB
	ldy #$65.b		; A0 65
	cpx $F8.b		; E4 F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $FEE09B.l,X		; 7F 9B E0 FE
	adc $BFF93C.l		; 6F 3C F9 BF
	asl $E10F.w,X		; 1E 0F E1
	bit $F8.b		; 24 F8
	ora $8040.w		; 0D 40 80
	sbc $FC57A8.l,X		; FF A8 57 FC
	tsx		; BA
	txy		; 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	eor $E050FE.l		; 4F FE 50 E0
	sbc ($5E.b),Y		; F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $05FEE4.l		; 6F E4 FE 05
	ldy $D26E.w		; AC 6E D2
	bit $18EA.w,X		; 3C EA 18
	sbc $DC2CC7.l,X		; FF C7 2C DC
	asl A		; 0A
	inc $F8FE.w,X		; FE FE F8
	ora #$40.b		; 09 40
	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	jmp $01FCFE.l		; 5C FE FC 01
	lsr $F481.w,X		; 5E 81 F4
	cop $C2.b		; 02 C2
	ora $D020EB.l,X		; 1F EB 20 D0
	ora #$36.b		; 09 36
	bit $C9FF.w,X		; 3C FF C9
	sbc $605FF7.l,X		; FF F7 5F 60
	asl $883E.w,X		; 1E 3E 88
	lda $807F80.l,X		; BF 80 7F 80
	ldx #$004B.w		; A2 4B 00
	sta [$00.b],Y		; 97 00
	ldx $A014.w,Y		; BE 14 A0
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	inc $F764.w,X		; FE 64 F7
	cmp $60EB.w,Y		; D9 EB 60
	sbc ($CF.b),Y		; F1 CF
	inc A		; 1A
	jsr $00D2.w		; 20 D2 00
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $17FC.w,X		; FD FC 17
	ldx $FBFF.w		; AE FF FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	dec $C7EA.w		; CE EA C7
	cpy $D8C0.w		; CC C0 D8
	asl A		; 0A
	sbc $0FFC55.l,X		; FF 55 FC 0F
	dec $F020.w		; CE 20 F0
	bpl -32.b		; 10 E0
	inc $AAFE.w,X		; FE FE AA
	ldy #$AEFE.w		; A0 FE AE
	nop		; EA
	cpx #$0BF8.w		; E0 F8 0B
	cmp $E0DB.w		; CD DB E0
	sbc $1AE2.w,X		; FD E2 1A
	jsr ($74C0.w,X)		; FC C0 74
	cpx #$09F8.w		; E0 F8 09
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	cpx #$BF.b		; E0 BF
	dec $F1.b		; C6 F1
	ora $AE.b,X		; 15 AE
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	cpy $CD.b		; C4 CD
	inc $E1A1.w,X		; FE A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($AF.b),Y		; F1 AF
	tax		; AA
	sta ($E0.b,X)		; 81 E0
	ora #$E1.b		; 09 E1
	asl $2FDF.w,X		; 1E DF 2F
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $AAAA.w		; 0D AA AA
	tsx		; BA
	sbc #$60.b		; E9 60
	cpy #$0B.b		; C0 0B
	nop		; EA
	cmp $DFE9.w,Y		; D9 E9 DF
	ldy $CE.b		; A4 CE
	asl $0EC0.w,X		; 1E C0 0E
	cpy #$F8.b		; C0 F8
	ora $F0BEA4.l		; 0F A4 BE F0
	lda $E0.b,X		; B5 E0
	sed		; F8
	ora $FB24.w		; 0D 24 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $640AF0.l,X		; BF F0 0A 64
	sbc ($DB.b),Y		; F1 DB
	jmp $565F.w		; 4C 5F 56
	sbc $FEE0.w		; ED E0 FE
	beq   1.b		; F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	sbc $68AB.w,X		; FD AB 68
	sbc $FF.b,S		; E3 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $FA.b,X		; F6 FA
	sbc $80EC02.l		; EF 02 EC 80
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
	cpx #$FE.b		; E0 FE
	beq -16.b		; F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	and $EF30AA.l,X		; 3F AA 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $FF81.w,Y		; F9 81 FF
	sed		; F8
	cmp ($4A.b),Y		; D1 4A
	ldx #$AA.b		; A2 AA
	ror A		; 6A
	bcc -112.b		; 90 90
	and $23704C.l,X		; 3F 4C 70 23
	asl A		; 0A
	bcc  29.b		; 90 1D
	ora ($A2.b)		; 12 A2
	cmp ($F8.b)		; D2 F8
	phd		; 0B
	asl $0B18.w,X		; 1E 18 0B
	phx		; DA
	pla		; 68
	tas		; 1B
	ror $8E.b		; 66 8E
	lsr A		; 4A
	lsr $B5.b,X		; 56 B5
	inc $32B2.w,X		; FE B2 32
	inc $1BFC.w,X		; FE FC 1B
	bvs  27.b		; 70 1B
	inc $2978.w,X		; FE 78 29
	inc $0BF8.w,X		; FE F8 0B
	mvp $92,$AA		; 44 AA 92
	inc $ECFF.w,X		; FE FF EC
	sei		; 78
	and #$06.b		; 29 06
	bmi  15.b		; 30 0F
	jsl $FC52FE.l		; 22 FE 52 FC
	inc $0DF8.w,X		; FE F8 0D
	jmp $5556.w		; 4C 56 55
	lsr $50.b,X		; 56 50
	adc $503A.w		; 6D 3A 50
	asl $FE80.w,X		; 1E 80 FE
	sed		; F8
	asl A		; 0A
	.db $42, $50		; 42 50
	and ($8B.b,X)		; 21 8B
	pla		; 68
	bit $78EA.w		; 2C EA 78
	adc $FE.b,S		; 63 FE
	sed		; F8
	txy		; 9B
	cop $08.b		; 02 08
	and $F6D552.l		; 2F 52 D5 F6
	stx $70.b,Y		; 96 70
	ora $FE.b,X		; 15 FE
	sed		; F8
	ora [$0A.b],Y		; 17 0A
	pha		; 48
	bit $F8FE.w		; 2C FE F8
	clc		; 18
	php		; 08
	asl $60C6.w		; 0E C6 60
	bpl -86.b		; 10 AA
	and $80.b		; 25 80
	inc $22F8.w,X		; FE F8 22
	brk $E8.b		; 00 E8
	asl $F8FE.w		; 0E FE F8
	eor [$3E.b],Y		; 57 3E
	sei		; 78
	ora #$42.b		; 09 42
	tay		; A8
	cpx #$14.b		; E0 14
	inc $AB41.w,X		; FE 41 AB
	eor ($E8.b)		; 52 E8
	and $FF.b,S		; 23 FF
	sei		; 78
	bpl  29.b		; 10 1D
	inc $44FE.w,X		; FE FE 44
	bit $1258.w		; 2C 58 12
	php		; 08
	cpx #$17.b		; E0 17
	asl A		; 0A
	tax		; AA
	asl $70E4.w		; 0E E4 70
	sbc ($66.b)		; F2 66
	sed		; F8
	ora [$FE.b],Y		; 17 FE
	adc $48.b,X		; 75 48
	lda #$FE.b		; A9 FE
	iny		; C8
	ora $E2.b,X		; 15 E2
	iny		; C8
	and #$FA.b		; 29 FA
	ora $DC.b		; 05 DC
	plp		; 28
	pld		; 2B
	tax		; AA
	plp		; 28
	and ($E8.b,X)		; 21 E8
	jsr ($0004.w,X)		; FC 04 00
	sty $00.b		; 84 00
	sta $FE.b		; 85 FE
	sed		; F8
	trb $E8.b		; 14 E8
	eor $55.b,X		; 55 55
	dex		; CA
	iny		; C8
	ora ($A2.b,S),Y		; 13 A2
	iny		; C8
	ora $3852.w		; 0D 52 38
	ora [$50.b],Y		; 17 50
	sec		; 38
	ora $40.b,X		; 15 40
	sec		; 38
	ora $F4.b,X		; 15 F4
	inx		; E8
	ora #$00.b		; 09 00
	cpx #$43.b		; E0 43
	tay		; A8
	bvc  11.b		; 50 0B
	eor $50.b,X		; 55 50
	inc $09F8.w		; EE F8 09
	lda $4A1CD0.l		; AF D0 1C 4A
	bpl  46.b		; 10 2E
	stz $C0.b,X		; 74 C0
	ora #$F8.b		; 09 F8
	ldy $FC.b		; A4 FC
	clv		; B8
	rti		; 40

	and [$1B.b]		; 27 1B
	mvn $D8,$0C		; 54 0C D8
	eor ($80.b)		; 52 80
	inc $0DF8.w,X		; FE F8 0D
	ora ($FE.b,X)		; 01 FE
	bit $10.b,X		; 34 10
	.db $42, $E6		; 42 E6
	cpy #$27.b		; C0 27
	lsr $28.b		; 46 28
	and $55.b		; 25 55
	eor $EC.b,X		; 55 EC
	inx		; E8
	ora $21283C.l,X		; 1F 3C 28 21
	rol $E0.b		; 26 E0
	lda ($0C.b,S),Y		; B3 0C
	bcs  47.b		; B0 2F
	bcs -14.b		; B0 F2
	sty $C8.b		; 84 C8
	plp		; 28
	cpy #$10.b		; C0 10
	bmi -84.b		; 30 AC
	inx		; E8
	asl $55.b,X		; 16 55
	eor $D0.b,X		; 55 D0
	nop		; EA
	inc $15F8.w,X		; FE F8 15
	.db $42, $A8		; 42 A8
	dec A		; 3A
	sbc $44E3F8.l,X		; FF F8 E3 44
	sbc $C220.w		; ED 20 C2
	inc $1FF8.w,X		; FE F8 1F
	ldy $2C38.w,X		; BC 38 2C
	eor $55.b,X		; 55 55
	inc $E2.b,X		; F6 E2
	bmi -72.b		; 30 B8
	and $E0.b,S		; 23 E0
	cpy #$09.b		; C0 09
	inc $12F8.w,X		; FE F8 12
	ror A		; 6A
	sed		; F8
	plp		; 28
	ldx $18.b		; A6 18
	ora $FE.b,X		; 15 FE
	sed		; F8
	mvp $E8,$A6		; 44 A6 E8
	ora $AB55.w,Y		; 19 55 AB
	stz $24E8.w		; 9C E8 24
	tya		; 98
	inx		; E8
	eor $70.b,S		; 43 70
	bmi  67.b		; 30 43
	stx $E0.b		; 86 E0
	and ($D4.b),Y		; 31 D4
	beq  50.b		; F0 32
	rti		; 40

	inc $18F8.w,X		; FE F8 18
	sbc ($F0.b)		; F2 F0
	jsr $8AB6.w		; 20 B6 8A
	bvs  -8.b		; 70 F8
	phd		; 0B
	rol $F1.b,X		; 36 F1
	rti		; 40

	inc $05FC.w,X		; FE FC 05
	inc $0DF8.w,X		; FE F8 0D
	lsr $2890.w,X		; 5E 90 28
	inc $09A8.w		; EE A8 09
	lda ($A8.b,X)		; A1 A8
	bcs  64.b		; B0 40
	inc $FE0A.w,X		; FE 0A FE
	sed		; F8
	tsb $90EE.w		; 0C EE 90
	cld		; D8
	plp		; 28
	ldy $AA.b		; A4 AA
	ror $F0.b,X		; 76 F0
	rol $AC.b		; 26 AC
	inc $15F8.w,X		; FE F8 15
	inc A		; 1A
	cld		; D8
	bit $0E.b,X		; 34 0E
	bne 113.b		; D0 71
	cop $F0.b		; 02 F0
	ora $1BE036.l,X		; 1F 36 E0 1B
	ror A		; 6A
	mvn $10,$04		; 54 04 10
	ora [$FE.b],Y		; 17 FE
	sed		; F8
	and $3CF4CE.l,X		; 3F CE F4 3C
	.db $82, $C2, $FE		; 82 C2 FE
	rol $0980.w		; 2E 80 09
	inc $0DF8.w,X		; FE F8 0D
	cmp $F0.b,X		; D5 F0
	sbc $2219F8.l,X		; FF F8 19 22
	bra  47.b		; 80 2F
	rti		; 40

	cpy #$21.b		; C0 21
	stx $E0.b		; 86 E0
	eor $31FE84.l		; 4F 84 FE 31
	and ($3E.b),Y		; 31 3E
	sbc $3F3EFF.l,X		; FF FF 3E 3F
	and $C60F0F.l,X		; 3F 0F 0F C6
	inc $FF87.w,X		; FE 87 FF
	ora [$77.b]		; 07 77
	sta $BECEFF.l		; 8F FF CE BE
	cmp ($EF.b,X)		; C1 EF
	sbc $FEC0EF.l,X		; FF EF C0 FE
	beq -17.b		; F0 EF
	eor $32.b		; 45 32
	sta ($7D.b)		; 92 7D
	inc $0201.w,X		; FE 01 02
	ora ($0D.b,X)		; 01 0D
	tsb $2DFC.w		; 0C FC 2D
	tsb $FEFC.w		; 0C FC FE
	bit $6B.b		; 24 6B
	sbc $FF49E8.l		; EF E8 49 FF
	sbc ($FB.b,S),Y		; F3 FB
	sbc ($FF.b,X)		; E1 FF
	cpx $01.b		; E4 01
	inc $80.b,X		; F6 80
	sbc $E4FBC0.l,X		; FF C0 FB E4
	sbc $F07FE0.l,X		; FF E0 7F F0
	adc $FEC3FF.l,X		; 7F FF C3 FE
	lda $7FFD7F.l,X		; BF 7F FD 7F
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	jsr ($B4F0.w,X)		; FC F0 B4
	sta [$F0.b]		; 87 F0
	pei ($BD.b)		; D4 BD
	lda $317C.w,X		; BD 7C 31
	brk $EF.b		; 00 EF
	bcc  -4.b		; 90 FC
	lda $F7AD.w		; AD AD F7
	php		; 08
	ora $6A.b,S		; 03 6A
	sed		; F8
	rts		; 60

	sec		; 38
	tsb $63DF.w		; 0C DF 63
	jsr $607E.w		; 20 7E 60
	phd		; 0B
	sbc $E866.w,X		; FD 66 E8
	bpl   0.b		; 10 00
	tsx		; BA
	inx		; E8
	jsr ($E6DA.w,X)		; FC DA E6
	and ($38.b,X)		; 21 38
	trb $E0.b		; 14 E0
	sbc $22DD.w,X		; FD DD 22
	ldx #$38.b		; A2 38
	cld		; D8
	inc $F8E0.w,X		; FE E0 F8
	ora $4A78A0.l		; 0F A0 78 4A
	inc $10EF.w,X		; FE EF 10
	plp		; 28
	tay		; A8
	dec A		; 3A
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $3EEE.w		; 0E EE 3E
	and $C1.b,X		; 35 C1
	bmi  21.b		; 30 15
	and $EA60.w,X		; 3D 60 EA
	jsr ($E044.w,X)		; FC 44 E0
	sed		; F8
	tas		; 1B
	adc $FADF81.l,X		; 7F 81 DF FA
	stz $4AFB.w		; 9C FB 4A
	asl A		; 0A
	bra  33.b		; 80 21
	cpx $FC7B.w		; EC 7B FC
	tsa		; 3B
	pea $1DF2.w		; F4 F2 1D
	txa		; 8A
	pla		; 68
	jsr ($84C2.w,X)		; FC C2 84
	sbc $C012.w,X		; FD 12 C0
	sed		; F8
	ora $C612ED.l		; 0F ED 12 C6
	phk		; 4B
	inx		; E8
	adc $40C090.l		; 6F 90 C0 40
	sbc $F8A011.l,X		; FF 11 A0 F8
	ora ($AB.b,S),Y		; 13 AB
	inc $BFE0.w,X		; FE E0 BF
	rti		; 40

	ldy $43.b,X		; B4 43
	inc $A0F2.w,X		; FE F2 A0
	pld		; 2B
	cld		; D8
	rts		; 60

	asl A		; 0A
	bpl -25.b		; 10 E7
	sec		; 38
	sta [$F8.b]		; 87 F8
	adc $FC97DC.l,X		; 7F DC 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $7C43BF.l,X		; 3F BF 43 7C
	mvp $AC,$3F		; 44 3F AC
	eor ($07.b,X)		; 41 07
	sta $EB.b		; 85 EB
	xba		; EB
	adc $03F87F.l,X		; 7F 7F F8 03
	eor $89BE.w,Y		; 59 BE 89
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
	bit $873C.w,X		; 3C 3C 87
	sta [$AD.b]		; 87 AD
	and ($1F.b),Y		; 31 1F
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$B4.b		; E0 B4
	sbc ($23.b,X)		; E1 23
	cmp $FD.b,S		; C3 FD
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$FFC0]		; DC C0 FF
	pei ($E4.b)		; D4 E4
	rti		; 40

	and $C38F90.l,X		; 3F 90 8F C3
	cpy #$A5.b		; C0 A5
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	rts		; 60

	dey		; 88
	beq -46.b		; F0 D2
	cpx #$E9.b		; E0 E9
	eor $DF7FEA.l		; 4F EA 7F DF
	sbc $BD1DB9.l,X		; FF B9 1D BD
	ora $E0C0FF.l		; 0F FF C0 E0
	sbc #$B0.b		; E9 B0
	lda $C0F00F.l,X		; BF 0F F0 C0
	bpl -98.b		; 10 9E
	asl $6001.w,X		; 1E 01 60
	ora $D3E45F.l,X		; 1F 5F E4 D3
	lda $F3F3.w		; AD F3 F3
	cmp $EAE2A0.l,X		; DF A0 E2 EA
	sbc ($FF.b,X)		; E1 FF
	ldy #$BE.b		; A0 BE
	cmp ($49.b,S),Y		; D3 49
	tyx		; BB
	ora $19.b,S		; 03 19
	ora ($AA.b),Y		; 11 AA
	ldx $F5FE.w		; AE FE F5
	bit $F2.b		; 24 F2
	jsr $13F8.w		; 20 F8 13
	lsr $F6.b		; 46 F6
	dec $20ED.w,X		; DE ED 20
	beq  22.b		; F0 16
	inc $BA01.w,X		; FE 01 BA
	inc $AAAA.w,X		; FE AA AA
	cpx #$F8.b		; E0 F8
	ora $7A.b,X		; 15 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	cpx #$F8.b		; E0 F8
	ora [$CA.b],Y		; 17 CA
	cmp $F226.w,X		; DD 26 F2
	cpx #$F8.b		; E0 F8
	phd		; 0B
	adc ($E0.b,X)		; 61 E0
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BD.b,S),Y		; 13 BD
	tay		; A8
	tyx		; BB
	mvp $43,$D8		; 44 D8 43
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$F6.b		; E9 F6
	sbc $AA09F8.l,X		; FF F8 09 AA
	asl A		; 0A
	phx		; DA
	cpx $EBE2.w		; EC E2 EB
	jsr ($58F1.w,X)		; FC F1 58
	sbc $F020.w,X		; FD 20 F0
	phd		; 0B
	cpx #$FD.b		; E0 FD
	.db $62, $E9, $CA		; 62 E9 CA
	jsr $5E04.w		; 20 04 5E
	cpx $E1B4.w		; EC B4 E1
	sbc $D7D6DA.l,X		; FF DA D6 D7
	jsr $8490.w		; 20 90 84
	asl $E0.b		; 06 E0
	rti		; 40

	and ($7B.b)		; 32 7B
	stz $EAEB.w		; 9C EB EA
	cpx $9FFA.w		; EC FA 9F
	adc ($E1.b,X)		; 61 E1
	adc $409FF8.l,X		; 7F F8 9F 40
	cpy #$C0.b		; C0 C0
	asl $DE9E.w,X		; 1E 9E DE
	and $EFEFA5.l,X		; 3F A5 EF EF
	adc $9B1B7F.l,X		; 7F 7F 1B 9B
	ora ($C0.b,X)		; 01 C0
	php		; 08
	dec $63FB.w,X		; DE FB 63
	bra  16.b		; 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FF.b		; E0 FF
	jsr ($FF0F.w,X)		; FC 0F FF
	sta ($B8.b,X)		; 81 B8
	tsb $F7.b		; 04 F7
	sed		; F8
	inx		; E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($81.b,X)		; 01 81
	clv		; B8
	tsb $40.b		; 04 40
	mvn $ED,$6F		; 54 6F ED
	cpy #$00.b		; C0 00
	ora $1903E0.l,X		; 1F E0 03 19
	eor #$D0.b		; 49 D0
	bcs  65.b		; B0 41
	sbc ($09.b)		; F2 09
	plb		; AB
	jmp $DFE1.w		; 4C E1 DF
	adc ($ED.b,X)		; 61 ED
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	stz $FAEB.w,X		; 9E EB FA
	and ($0F.b,X)		; 21 0F
	pei ($09.b)		; D4 09
	adc $207F5F.l,X		; 7F 5F 7F 20
	adc $3E7F38.l,X		; 7F 38 7F 3E
	adc $F011C0.l,X		; 7F C0 11 F0
	jsr ($205F.w,X)		; FC 5F 20
	eor [$38.b]		; 47 38
	eor ($3E.b,X)		; 41 3E
	sbc $8887.w,X		; FD 87 88
	and $89F0.w,Y		; 39 F0 89
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq  96.b		; F0 60
	beq 112.b		; F0 70
	inc $1FE9.w,X		; FE E9 1F
	bcs -80.b		; B0 B0
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	bra 112.b		; 80 70
	asl $FD.b		; 06 FD
	inc $F040.w,X		; FE 40 F0
	dec $FCFE.w		; CE FE FC
	nop		; EA
	eor ($7D.b,X)		; 41 7D
	sbc $F77F.w,X		; FD 7F F7
	cpx #$71.b		; E0 71
	adc $CE.b,X		; 75 CE
	inc $80FC.w,X		; FE FC 80
	adc $8AFE82.l,X		; 7F 82 FE 8A
	adc $CE08F0.l,X		; 7F F0 08 CE
	sbc $B8B8FC.l,X		; FF FC B8 B8
	sed		; F8
	inc $B020.w,X		; FE 20 B0
	sbc $FECE.w,X		; FD CE FE
	sbc $FEF6.w,X		; FD F6 FE
	inc $D785.w,X		; FE 85 D7
	iny		; C8
	ora $0FF8F0.l		; 0F F0 F8 0F
	sbc $F777.w,X		; FD 77 F7
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
	jsr ($7075.w,X)		; FC 75 70
	stz $70.b,X		; 74 70
	phd		; 0B
	bit $88.b		; 24 88
	phd		; 0B
	sta [$72.b]		; 87 72
	cpy #$40.b		; C0 40
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
	ldy #$F8.b		; A0 F8
	phd		; 0B
	ora $9A.b,S		; 03 9A
	phb		; 8B
	inc $FEA0.w,X		; FE A0 FE
	bra  -1.b		; 80 FF
	cpy #$FF.b		; C0 FF
	sbc $6DAEB8.l,X		; FF B8 AE 6D
	inc $E020.w,X		; FE 20 E0
	inc $C6FE.w,X		; FE FE C6
	inc $0307.w,X		; FE 07 03
	inc $FBFC.w,X		; FE FC FB
	sbc $04FEC8.l,X		; FF C8 FE 04
	ora $FE.b,S		; 03 FE
	jsr ($FFAF.w,X)		; FC AF FF
	xce		; FB
	xce		; FB
	cmp $DFCFD7.l,X		; DF D7 CF DF
	dec $96DE.w		; CE DE 96
	sbc $D686FF.l		; EF FF 86 D6
	dec $F7.b		; C6 F7
	inc $35.b		; E6 35
	phx		; DA
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $39FF79.l,X		; FF 79 FF 39
	ora ($FC.b,S),Y		; 13 FC
	sbc $6CFF19.l,X		; FF 19 FF 6C
	inc $C606.w,X		; FE 06 C6
	ora [$D7.b],Y		; 17 D7
	ora $D7ABE4.l,X		; 1F E4 AB D7
	jsr ($FC6A.w,X)		; FC 6A FC
	sed		; F8
	inc $FFE8.w,X		; FE E8 FF
	inc $68FC.w,X		; FE FC 68
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
	lsr $70D0.w,X		; 5E D0 70
	lda #$40.b		; A9 40
	asl A		; 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $91FE.w,X		; FD FE 91
	sbc $AF.b,X		; F5 AF
	cmp #$07.b		; C9 07
	sbc $780C00.l,X		; FF 00 0C 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	cpy #$FC.b		; C0 FC
	beq -124.b		; F0 84
	rts		; 60

	trb $FEF8.w		; 1C F8 FE
	sta $FE407A.l		; 8F 7A 40 FE
	rts		; 60

	cpy #$06.b		; C0 06
	ora ($FE.b,X)		; 01 FE
	bvs -32.b		; 70 E0
	inc $F25C.w,X		; FE 5C F2
	sep #$86		; E2 86
	ora ($FE.b,X)		; 01 FE
	ldy #$40.b		; A0 40
	inc $6090.w,X		; FE 90 60
	inc $023C.w,X		; FE 3C 02
	ldx $FCB8.w		; AE B8 FC
	ora $FC0A07.l		; 0F 07 0A FC
	inc $00F8.w,X		; FE F8 00
	inc $08.b,X		; F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $FC07.w		; 0C 07 FC
	sbc $D5FEE1.l,X		; FF E1 FE D5
	sec		; 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $F7FE.w		; AE FE F7
	ldx $50.b,Y		; B6 50
	dey		; 88
	lda $79FFFE.l,X		; BF FE FF 79
	cmp ($0A.b),Y		; D1 0A
	eor $D30E.w,Y		; 59 0E D3
	inc $FCFA.w,X		; FE FA FC
	ora $8FFEC7.l		; 0F C7 FE 8F
	eor [$FE.b]		; 47 FE
	tax		; AA
	bvs   5.b		; 70 05
	eor [$FC.b],Y		; 57 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($A804.w,X)		; FC 04 A8
	eor [$FC.b],Y		; 57 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	sta ($FE.b,X)		; 81 FE
	jsr ($F454.w,X)		; FC 54 F4
	sbc $A04FFF.l,X		; FF FF 4F A0
	ora #$70.b		; 09 70
	rts		; 60

	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  24.b		; 30 18
	sbc $D00EF8.l		; EF F8 0E D0
	inc $F8D8.w,X		; FE D8 F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	plb		; AB
	ldy $F8.b,X		; B4 F8
	php		; 08
	sed		; F8
	cmp $58.b,S		; C3 58
	ora $FEFE08.l		; 0F 08 FE FE
	inc $7C0C.w,X		; FE 0C 7C
	ror $1ED3.w,X		; 7E D3 1E
	inc $5EFE.w,X		; FE FE 5E
	eor $FC820C.l,X		; 5F 0C 82 FC
	inc $A1FE.w,X		; FE FE A1
	inc $3302.w,X		; FE 02 33
	lda $03FF.w		; AD FF 03
	inc $06FF.w,X		; FE FF 06
	asl $31.b		; 06 31
	rep #$88		; C2 88
	eor $E0.b,X		; 55 E0
	nop		; EA
	inc $0578.w,X		; FE 78 05
	cpy #$F6.b		; C0 F6
	mvn $F0,$77		; 54 77 F0
	sed		; F8
	clc		; 18
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
	ora ($9F.b,S),Y		; 13 9F
	cpy #$FE.b		; C0 FE
	jsr ($F0F8.w,X)		; FC F8 F0
	inc $C0C8.w,X		; FE C8 C0
	bit $F430.w,X		; 3C 30 F4
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
	sbc $A85EFE.l,X		; FF FE 5E A8
	ora $0FA84F.l		; 0F 4F A8 0F
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	pld		; 2B
	brk $02.b		; 00 02
	inc $44F8.w,X		; FE F8 44
	php		; 08
	brk $01.b		; 00 01
	inc $41FF.w,X		; FE FF 41
	inc $20F8.w,X		; FE F8 20
	pei ($F8.b)		; D4 F8
	ora #$78.b		; 09 78
	plb		; AB
	inc $FEFF.w,X		; FE FF FE
	tsb $00.b		; 04 00
	asl $FE.b		; 06 FE
	sed		; F8
	and ($80.b,X)		; 21 80
	inc $1AF8.w,X		; FE F8 1A
	cpy #$F8.b		; C0 F8
	and $02.b,S		; 23 02
	rti		; 40

	inc $22F8.w,X		; FE F8 22
	asl A		; 0A
	sed		; F8
	pld		; 2B
	cmp ($4A.b)		; D2 4A
	inc $5405.w,X		; FE 05 54
	eor $FE.b,X		; 55 FE
	asl $F8.b		; 06 F8
	tas		; 1B
	ora ($F8.b)		; 12 F8
	phd		; 0B
	inc $0FF8.w,X		; FE F8 0F
	sbc $984BF8.l,X		; FF F8 4B 98
	sed		; F8
	tas		; 1B
	sty $1DF8.w		; 8C F8 1D
	txy		; 9B
	lda $F8D8.w		; AD D8 F8
	ora $09.b,X		; 15 09
	inc $18F8.w,X		; FE F8 18
	php		; 08
	inc $F0F2.w,X		; FE F2 F0
	asl $FE40.w		; 0E 40 FE
	sed		; F8
	clc		; 18
	tax		; AA
	eor $C2.b,X		; 55 C2
	beq  22.b		; F0 16
	sbc $8C63F8.l,X		; FF F8 63 8C
	sed		; F8
	eor ($B0.b,S),Y		; 53 B0
	sed		; F8
	and $8A.b,S		; 23 8A
	sed		; F8
	ora $FE80.w		; 0D 80 FE
	sed		; F8
	trb $F8FF.w		; 1C FF F8
	ora $F8DC.w		; 0D DC F8
	and $55.b,S		; 23 55
	plb		; AB
	cmp ($F8.b,S),Y		; D3 F8
	asl $F8FE.w,X		; 1E FE F8
	and ($B6.b,X)		; 21 B6
	inx		; E8
	bit $28.b		; 24 28
	nop		; EA
	inc $20F8.w,X		; FE F8 20
	bra  -2.b		; 80 FE
	sed		; F8
	trb $CE.b		; 14 CE
	sed		; F8
	inc A		; 1A
	sbc ($AC.b)		; F2 AC
	phy		; 5A
	inx		; E8
	and [$DC.b]		; 27 DC
	cpx #$21.b		; E0 21
	lsr $0480.w,X		; 5E 80 04
	inc $F878.w,X		; FE 78 F8
	asl $82.b,X		; 16 82
	phy		; 5A
	ror $24F8.w		; 6E F8 24
	stz $F8.b		; 64 F8
	and $0CDA.w		; 2D DA 0C
.INDEX 8
	sep #$52		; E2 52
	jmp.w [$F620]		; DC 20 F6
	.db $42, $FE		; 42 FE
	sed		; F8
	asl $AB55.w,X		; 1E 55 AB
	stz $45D0.w		; 9C D0 45
	inc $37F8.w,X		; FE F8 37
	bvc  -4.b		; 50 FC
	inc $0BF8.w,X		; FE F8 0B
	asl $D8.b,X		; 16 D8
	ora #$82.b		; 09 82
	inc $0CF8.w,X		; FE F8 0C
	stp		; DB
	inx		; E8
	bit $52AA.w		; 2C AA 52
	lsr $4AE0.w,X		; 5E E0 4A
	.db $42, $E0		; 42 E0
	and [$B8.b]		; 27 B8
	cld		; D8
	ora [$7C.b],Y		; 17 7C
	pei ($FE.b)		; D4 FE
	sed		; F8
	eor ($54.b),Y		; 51 54
	bne  89.b		; D0 59
	bit $0A.b		; 24 0A
	ora ($54.b,X)		; 01 54
	clv		; B8
	cmp $FE.b,X		; D5 FE
	inc $FE.b,X		; F6 FE
	sed		; F8
	ora $FEDC.w,Y		; 19 DC FE
	inc $D5FC.w,X		; FE FC D5
	lsr $FC.b,X		; 56 FC
	iny		; C8
	and $EEFC28.l,X		; 3F 28 FC EE
	inx		; E8
	ora ($FE.b),Y		; 11 FE
	jsr ($FE84.w,X)		; FC 84 FE
	sbc $FFFE85.l,X		; FF 85 FE FF
	dec $2DF0.w		; CE F0 2D
	eor $55.b,X		; 55 55
	iny		; C8
	sed		; F8
	ora #$BE.b		; 09 BE
	sed		; F8
	pld		; 2B
	dex		; CA
	sed		; F8
	and $5E.b,X		; 35 5E
	pea $C8EA.w		; F4 EA C8
	eor $32.b,S		; 43 32
	bne  27.b		; D0 1B
	bvc -40.b		; 50 D8
	and ($2A.b),Y		; 31 2A
	cld		; D8
	and #$55.b		; 29 55
	sta $34.b,X		; 95 34
	cpx #$31.b		; E0 31
	dec $E8.b,X		; D6 E8
	tas		; 1B
	cpy $11E8.w		; CC E8 11
	dec $C8.b,X		; D6 C8
	trb $B896.w		; 1C 96 B8
	.db $62, $BE, $D0		; 62 BE D0
	tas		; 1B
	sta ($B0.b)		; 92 B0
	phd		; 0B
	phx		; DA
	tay		; A8
	jmp $FE4A.w		; 4C 4A FE
	sed		; F8
	asl A		; 0A
	pha		; 48
	inc $40FD.w,X		; FE FD 40
	inc $B8DA.w,X		; FE DA B8
	adc ($AA.b,S),Y		; 73 AA
	tax		; AA
	pea $09E8.w		; F4 E8 09
	cop $F0.b		; 02 F0
	eor [$FC.b],Y		; 57 FC
	cpy #$43.b		; C0 43
	tsb $D0.b		; 04 D0
	and $44.b,X		; 35 44
	iny		; C8
	ora $11D002.l		; 0F 02 D0 11
	sta ($F0.b)		; 92 F0
	adc #$32.b		; 69 32
	inx		; E8
	and $AA.b		; 25 AA
	eor $FE.b,X		; 55 FE
	inc $E760.w,X		; FE 60 E7
	trb $36B8.w		; 1C B8 36
	bvc -94.b		; 50 A2
	inc $46FE.w,X		; FE FE 46
	inc $1EF8.w,X		; FE F8 1E
	cpx $0D98.w		; EC 98 0D
	cld		; D8
	sed		; F8
	and [$AA.b]		; 27 AA
	lsr $FE.b,X		; 56 FE
	stx $FE.b		; 86 FE
	sed		; F8
	trb $2E.b		; 14 2E
	tya		; 98
	bit $9854.w		; 2C 54 98
	plp		; 28
	tsb $C6.b		; 04 C6
	cpy #$3E.b		; C0 3E
	tsb $11E8.w		; 0C E8 11
	eor $41.b,X		; 55 41
	stx $FEE2.w		; 8E E2 FE
	sed		; F8
	ora $13F8FF.l		; 0F FF F8 13
	dec $21F8.w,X		; DE F8 21
	dex		; CA
	cld		; D8
	eor ($FF.b,X)		; 41 FF
	jmp ($3390.w)		; 6C 90 33
	lda $FEAA.w		; AD AA FE
	sed		; F8
	lda $8872.w,X		; BD 72 88
	trb $FE80.w		; 1C 80 FE
	sed		; F8
	rol $A0.b,X		; 36 A0
	sed		; F8
	inc A		; 1A
	stx $E8.b,Y		; 96 E8
	and #$94.b		; 29 94
	inx		; E8
	ora #$E0.b		; 09 E0
	dey		; 88
	and ($AA.b,X)		; 21 AA
	tax		; AA
	inc $CBF8.w,X		; FE F8 CB
	jmp ($17D0.w,X)		; 7C D0 17
	dec $1990.w,X		; DE 90 19
	and ($B8.b)		; 32 B8
	ora ($2E.b,S),Y		; 13 2E
	clv		; B8
	trb $4A.b		; 14 4A
	tya		; 98
	and ($3E.b,X)		; 21 3E
	tya		; 98
	bpl 116.b		; 10 74
	tay		; A8
	eor $AA.b,X		; 55 AA
	tax		; AA
	sty $78.b		; 84 78
	adc #$74.b		; 69 74
	tay		; A8
	ora ($8A.b),Y		; 11 8A
	ldy #$17.b		; A0 17
	bit $47A0.w,X		; 3C A0 47
	bpl -52.b		; 10 CC
	txs		; 9A
	cpx #$0D.b		; E0 0D
	bvc -112.b		; 50 90
	ora $AA924E.l,X		; 1F 4E 92 AA
	tax		; AA
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	sta ($28.b),Y		; 91 28
	bne  57.b		; D0 39
	cpy $88.b		; C4 88
	and $29F0A6.l,X		; 3F A6 F0 29
	dec $2360.w		; CE 60 23
	phx		; DA
	cpx #$C213.w		; E0 13 C2
	cpx #$8819.w		; E0 19 88
	sei		; 78
	and ($AA.b),Y		; 31 AA
	tax		; AA
	lsr A		; 4A
	bcc  59.b		; 90 3B
	jmp $CE13A8.l		; 5C A8 13 CE
	cli		; 58
	phk		; 4B
	jmp ($38D0.w,X)		; 7C D0 38
	asl $58.b		; 06 58
	tas		; 1B
	dex		; CA
	clv		; B8
	ora ($50.b)		; 12 50
	bne  11.b		; D0 0B
	ldy #$17E8.w		; A0 E8 17
	tax		; AA
	tax		; AA
	trb $2BF8.w		; 1C F8 2B
	ora ($F8.b)		; 12 F8
	ora $71D8D2.l		; 0F D2 D8 71
.INDEX 16
	rep #$50		; C2 50
	eor #$A062.w		; 49 62 A0
	eor ($B8.b),Y		; 51 B8
	beq  25.b		; F0 19
	sei		; 78
	pea $5004.w		; F4 04 50
	adc ($AA.b,X)		; 61 AA
	tax		; AA
	brk $F8.b		; 00 F8
	adc $D650.w,X		; 7D 50 D6
	sed		; F8
	sbc $5E.b,X		; F5 5E
	rti		; 40

	bit $E858.w		; 2C 58 E8
	ora #$806A.w		; 09 6A 80
	and ($8E.b,X)		; 21 8E
	beq  11.b		; F0 0B
	.db $82, $E0, $13		; 82 E0 13
	tax		; AA
	lsr $3E.b,X		; 56 3E
	clv		; B8
	ora $21601E.l,X		; 1F 1E 60 21
	cpy $27F0.w		; CC F0 27
	cpy $E0.b		; C4 E0
	ora #$D0D4.w		; 09 D4 D0
	phd		; 0B
	dec $68.b		; C6 68
	bpl -128.b		; 10 80
	inc $62FC.w,X		; FE FC 62
	dec $8C6F.w,X		; DE 6F 8C
	sbc $6F1CF8.l,X		; FF F8 1C 6F
	brk $FF.b		; 00 FF
	inc $0FFC.w,X		; FE FC 0F
	jsr ($6303.w,X)		; FC 03 63
	bit $9FFA.w		; 2C FA 9F
	sbc $EEC7FF.l,X		; FF FF C7 EE
	ora $C5FEE6.l,X		; 1F E6 FE C5
	cpx $FE.b		; E4 FE
	ora $E67FEB.l,X		; 1F EB 7F E6
	sbc $FE00FD.l,X		; FF FD 00 FE
	cpx #$FEFE.w		; E0 FE FE
	jsr ($5E01.w,X)		; FC 01 5E
	sta ($F4.b,X)		; 81 F4
	cop $EB.b		; 02 EB
	cpx #$FEFF.w		; E0 FF FE
	inc $1FFF.w,X		; FE FF 1F
	sbc $C9FF3C.l,X		; FF 3C FF C9
	sbc $605FF7.l,X		; FF F7 5F 60
	cmp $80BF80.l,X		; DF 80 BF 80
	adc $47FE80.l,X		; 7F 80 FE 47
	ldx #$004B.w		; A2 4B 00
	sta [$00.b],Y		; 97 00
	ldx $FF01.w,Y		; BE 01 FF
	sta $C03FFF.l		; 8F FF 3F C0
	php		; 08
	eor $E4F8FE.l		; 4F FE F8 E4
	sbc $CFFFEF.l,X		; FF EF FF CF
	brk $1F.b		; 00 1F
	ldy $FCC2.w		; AC C2 FC
	sbc $00.b,X		; F5 00
	tsx		; BA
	ora ($E0.b,X)		; 01 E0
	sbc $97FE.w,X		; FD FE 97
	sbc $FFFCFD.l,X		; FF FD FC FF
	xce		; FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	sbc ($00.b,X)		; E1 00
	sta ($0C.b)		; 92 0C
	rti		; 40

	lda ($67.b)		; B2 67
	and $FFFE81.l,X		; 3F 81 FE FF
	bra  -8.b		; 80 F8
	asl A		; 0A
	tax		; AA
	sbc $59FC55.l,X		; FF 55 FC 59
	and $FCFCD4.l		; 2F D4 FC FC
	inc $0CF8.w,X		; FE F8 0C
	cpx #$FEFF.w		; E0 FF FE
	inc $E0C0.w,X		; FE C0 E0
	sed		; F8
	asl $0A08.w		; 0E 08 0A
	stz $E0.b,X		; 74 E0
	sed		; F8
	ora #$1AE2.w		; 09 E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$5F4C.w		; 09 4C 5F
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	cpx #$BF.b		; E0 BF
	dec $F1.b		; C6 F1
	brk $7F.b		; 00 7F
	sta ($FE.b,X)		; 81 FE
	sbc $DCFD.w,X		; FD FD DC
	inc $90.b,X		; F6 90
	jsr ($A100.w,X)		; FC 00 A1
	sbc ($D7.b,X)		; E1 D7
	rti		; 40

	lda $09F8AC.l,X		; BF AC F8 09
	sbc $DF1EE1.l,X		; FF E1 1E DF
	ldx #$EA.b		; A2 EA
	and $EEFF60.l		; 2F 60 FF EE
	cpx $F8.b		; E4 F8
	asl A		; 0A
	cpy #$FC.b		; C0 FC
	cpy $F0.b		; C4 F0
	tsb $F8FE.w		; 0C FE F8
	ora $C1FC.w		; 0D FC C1
	eor $00.b,X		; 55 00
	sbc $FF08.w,X		; FD 08 FF
	sed		; F8
	phd		; 0B
	ora $03.b,S		; 03 03
	cpx #$F8.b		; E0 F8
	tsb $FD5E.w		; 0C 5E FD
	sbc $150BF8.l,X		; FF F8 0B 15
	ldx $F8C0.w,Y		; BE C0 F8
	asl $FD68.w		; 0E 68 FD
	cpx #$F8.b		; E0 F8
	asl $FB24.w		; 0E 24 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lsr $BFA6.w,X		; 5E A6 BF
	beq  10.b		; F0 0A
	stz $F1.b		; 64 F1
	stp		; DB
	sbc $F359E7.l,X		; FF E7 59 F3
	cpx #$FE.b		; E0 FE
	eor $01F0FF.l,X		; 5F FF F0 01
	inc $01.b		; E6 01
	cpx $4603.w		; EC 03 46
	sbc ($FF.b,S),Y		; F3 FF
	sed		; F8
	ora #$DF.b		; 09 DF
	sei		; 78
	ora [$E0.b]		; 07 E0
	ora $4FDAC0.l,X		; 1F C0 DA 4F
	and $FFF13F.l,X		; 3F 3F F1 FF
	inc $9F.b,X		; F6 9F
	rol $0CF8.w,X		; 3E F8 0C
	sbc $55AAAA.l,X		; FF AA AA 55
	eor $FF.b,X		; 55 FF
	inc $01FC.w,X		; FE FC 01
	ora ($02.b,X)		; 01 02
	cop $06.b		; 02 06
	tsb $05.b		; 04 05
	tsb $F1.b		; 04 F1
	sbc $01AA.w,X		; FD AA 01
	inc $FC03.w,X		; FE 03 FC
	sbc [$DF.b],Y		; F7 DF
	ora [$F9.b]		; 07 F9
	ora [$FB.b]		; 07 FB
	cpx #$FE.b		; E0 FE
	beq -16.b		; F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	ora ($E0.b,X)		; 01 E0
	inc $551F.w,X		; FE 1F 55
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $B881.w,Y		; F9 81 B8
	bvs  95.b		; 70 5F
	bit $1BE0.w		; 2C E0 1B
	sty $D8.b		; 84 D8
	phk		; 4B
	eor $55.b,X		; 55 55
	ror $F8E4.w		; 6E E4 F8
	pha		; 48
	eor $FE.b,X		; 55 FE
	sed		; F8
	adc $68AC.w		; 6D AC 68
	adc [$36.b]		; 67 36
	bcs  13.b		; B0 0D
	cpx $38.b		; E4 38
	ora ($5C.b),Y		; 11 5C
	bvs  29.b		; 70 1D
	stz $48.b,X		; 74 48
	and ($55.b,X)		; 21 55
	eor $FF.b,X		; 55 FF
	sed		; F8
	adc $B824.w,X		; 7D 24 B8
	and ($FE.b,S),Y		; 33 FE
	sed		; F8
	adc $F0.b,S		; 63 F0
	jmp ($4096.w)		; 6C 96 40
	ora #$FE.b		; 09 FE
	inc $F082.w,X		; FE 82 F0
	phd		; 0B
	pha		; 48
	iny		; C8
	ora $625555.l		; 0F 55 55 62
	rti		; 40

	ora $11F8C8.l		; 0F C8 F8 11
	inc $0DF8.w,X		; FE F8 0D
	dey		; 88
	pla		; 68
	ora #$28.b		; 09 28
	.db $62, $18, $60		; 62 18 60
	ora $8E.b,X		; 15 8E
	clv		; B8
	adc ($96.b),Y		; 71 96
	bra  41.b		; 80 29
	eor $55.b,X		; 55 55
	cld		; D8
	bcs  65.b		; B0 41
	lsr $13B0.w,X		; 5E B0 13
	stz $17F0.w,X		; 9E F0 17
	inc $8BF8.w,X		; FE F8 8B
	cld		; D8
	tya		; 98
	and #$2E.b		; 29 2E
	php		; 08
	and $00.b		; 25 00
	php		; 08
	and $9858.w		; 2D 58 98
	ora ($55.b),Y		; 11 55
	sta $AA.b,X		; 95 AA
	inx		; E8
	phd		; 0B
	ldy $90.b		; A4 90
	and $B08C.w,X		; 3D 8C B0
	tas		; 1B
	jmp.w [$1188]		; DC 88 11
	bit $D0.b,X		; 34 D0
	ora #$D6.b		; 09 D6
	sed		; F8
	asl A		; 0A
	lda ($B5.b)		; B2 B5
	mvn $FE,$55		; 54 55 FE
	tad		; 5B
	clc		; 18
	ror $F816.w		; 6E 16 F8
	bmi  26.b		; 30 1A
	inx		; E8
	and ($06.b),Y		; 31 06
	tya		; 98
	and $4858.w,X		; 3D 58 48
	ora $FF0E8A.l		; 0F 8A 0E FF
	sed		; F8
	tas		; 1B
	eor $B5.b,X		; 55 B5
	lsr A		; 4A
	pha		; 48
	tas		; 1B
	inc $88.b,X		; F6 88
	and [$48.b],Y		; 37 48
	plp		; 28
	and $38F2.w,X		; 3D F2 38
	and $7890.w		; 2D 90 78
	and [$FE.b]		; 27 FE
	sed		; F8
	ora ($A6.b),Y		; 11 A6
	inx		; E8
	phd		; 0B
	sta ($AA.b,X)		; 81 AA
	tax		; AA
	inc $14F8.w,X		; FE F8 14
	lda $E8.b,S		; A3 E8
	sta ($F4.b,X)		; 81 F4
	inx		; E8
	and #$AA.b		; 29 AA
	bne  29.b		; D0 1D
	sbc $7A97F8.l,X		; FF F8 97 7A
	bcc  49.b		; 90 31
	jmp ($1590.w,X)		; 7C 90 15
	jsl $AA17F0.l		; 22 F0 17 AA
	tax		; AA
	rol A		; 2A
	clv		; B8
	trb $E4.b		; 14 E4
	rti		; 40

	ora ($FF.b)		; 12 FF
	sed		; F8
	lda $D8CE.w,Y		; B9 CE D8
	and $A4.b,X		; 35 A4
	iny		; C8
	ora $281C.w,Y		; 19 1C 28
	and #$08.b		; 29 08
	pla		; 68
	ora $B84A.w,Y		; 19 4A B8
	ora $5AAAAA.l		; 0F AA AA 5A
	sed		; F8
	ora $3398CA.l,X		; 1F CA 98 33
	inc $F0.b,X		; F6 F0
	ora $A82A.w,X		; 1D 2A A8
	phd		; 0B
	jmp ($63A0.w)		; 6C A0 63
	phx		; DA
	bcc  73.b		; 90 49
	sbc $EABBF8.l,X		; FF F8 BB EA
	pla		; 68
	ora $D4AAAA.l,X		; 1F AA AA D4
	bvs   9.b		; 70 09
	tya		; 98
	rti		; 40

	ora $18C2.w		; 0D C2 18
	and #$70.b		; 29 70
	php		; 08
	adc $FE.b,S		; 63 FE
	sed		; F8
	eor $2A081C.l,X		; 5F 1C 08 2A
	sty $2010.w		; 8C 10 20
	inc $15F8.w,X		; FE F8 15
	tax		; AA
	eor $02.b,X		; 55 02
	tya		; 98
	phd		; 0B
	inc $0BF8.w,X		; FE F8 0B
	cpy $98.b		; C4 98
	ora $BC.b,X		; 15 BC
	tya		; 98
	tas		; 1B
	inc $80FF.w,X		; FE FF 80
	inc $1EF8.w,X		; FE F8 1E
	iny		; C8
	sed		; F8
	asl $48.b,X		; 16 48
	bcc  59.b		; 90 3B
	eor $55.b,X		; 55 55
	stx $0DA8.w		; 8E A8 0D
	ror $C0.b		; 66 C0
	ora ($FF.b),Y		; 11 FF
	sed		; F8
	sta $22.b		; 85 22
	beq  15.b		; F0 0F
.ACCU 16
	rep #$28		; C2 28
	phd		; 0B
	and ($E0.b)		; 32 E0
	and ($30.b),Y		; 31 30
	cpy #$17.b		; C0 17
	sbc $ADB9F8.l,X		; FF F8 B9 AD
	tax		; AA
	nop		; EA
	iny		; C8
	ora $41567E.l		; 0F 7E 56 41
	inc $0CF8.w,X		; FE F8 0C
	brk $E0.b		; 00 E0
	adc $B0AE.w		; 6D AE B0
	eor ($3A.b,X)		; 41 3A
	rti		; 40

	adc $E89C.w		; 6D 9C E8
	ora $AAAA.w,Y		; 19 AA AA
	sty $E8.b,X		; 94 E8
	phd		; 0B
	bra  40.b		; 80 28
	and $0FA012.l		; 2F 12 A0 0F
	inc $15F8.w,X		; FE F8 15
	dec A		; 3A
	dey		; 88
	and $B8B6.w,Y		; 39 B6 B8
	ora [$B0.b],Y		; 17 B0
	clv		; B8
	ora $1FE0D8.l		; 0F D8 E0 1F
	lsr $41.b,X		; 56 41
	ror $F0.b,X		; 76 F0
	ora $8C.b,X		; 15 8C
	beq  89.b		; F0 59
	php		; 08
	inc $1CF8.w,X		; FE F8 1C
	.db $82, $E8, $51		; 82 E8 51
	inc $E0.b,X		; F6 E0
	ora $0CFE.w		; 0D FE 0C
	plp		; 28
	and $5555.w,Y		; 39 55 55
	stx $18.b		; 86 18
	pld		; 2B
	ora ($D0.b)		; 12 D0
	trb $A0B4.w		; 1C B4 A0
	asl $50.b,X		; 16 50
	bpl  25.b		; 10 19
	inc $26F8.w,X		; FE F8 26
	bvc  16.b		; 50 10
	ora $44.b,X		; 15 44
	bpl  12.b		; 10 0C
	pla		; 68
	sed		; F8
	pld		; 2B
	eor $55.b,X		; 55 55
	mvn $17,$F8		; 54 F8 17
	bit $1B90.w		; 2C 90 1B
	jsr $1190.w		; 20 90 11
	inc A		; 1A
	bcc  13.b		; 90 0D
	ldx $F8.b,Y		; B6 F8
	ora ($C4.b),Y		; 11 C4
	sed		; F8
	and ($FE.b,X)		; 21 FE
	sed		; F8
	ora ($46.b),Y		; 11 46
	clv		; B8
	lda $55.b,S		; A3 55
	bvc -22.b		; 50 EA
	bne  39.b		; D0 27
	cpx $76F2.w		; EC F2 76
	cli		; 58
	ora $1720A4.l		; 0F A4 20 17
	inc $B820.w,X		; FE 20 B8
	ora $15E0CE.l		; 0F CE E0 15
	eor $55.b,X		; 55 55
	tax		; AA
	cpx #$3F.b		; E0 3F
	lsr $11D0.w,X		; 5E D0 11
	ldx $FE.b,Y		; B6 FE
	bvc -48.b		; 50 D0
	ora $96.b,X		; 15 96
	sed		; F8
	ora #$707C.w		; 09 7C 70
	and $A848.w		; 2D 48 A8
	ora #$60EE.w		; 09 EE 60
	ora ($75.b,S),Y		; 13 75
	inc A		; 1A
	stz $0B88.w		; 9C 88 0B
	bit $B0.b		; 24 B0
	and $16.b		; 25 16
	sed		; F8
	jsr $8180.w		; 20 80 81
	inc $0102.w,X		; FE 02 01
	inc $FF.b,X		; F6 FF
	inc $0103.w,X		; FE 03 01
	ora ($68.b,S),Y		; 13 68
	ora #$6070.w		; 09 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne  -1.b		; D0 FF
	sed		; F8
	pla		; 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	beq -112.b		; F0 90
	beq -48.b		; F0 D0
	inc $F8D8.w,X		; FE D8 F8
	plp		; 28
	beq -18.b		; F0 EE
	sed		; F8
	sbc $08F8C8.l,X		; FF C8 F8 08
	sed		; F8
	xce		; FB
	cpx #$0F.b		; E0 0F
	ora [$03.b]		; 07 03
	inc $0DF8.w,X		; FE F8 0D
	sei		; 78
	bcs  15.b		; B0 0F
	jmp ($7CFE.w,X)		; 7C FE 7C
	ror $FEFE.w,X		; 7E FE FE
	lsr $845F.w,X		; 5E 5F 84
	sed		; F8
	tda		; 7B
	cpy $82FE.w		; CC FE 82
	jsr ($FEFE.w,X)		; FC FE FE
	lda ($FE.b,X)		; A1 FE
	cop $FF.b		; 02 FF
	ora $34.b,S		; 03 34
	ora $FE.b,X		; 15 FE
	sbc $350606.l,X		; FF 06 06 35
	ora $FE.b,S		; 03 FE
	jsr ($AA83.w,X)		; FC 83 AA
	sei		; 78
	ora $F9.b		; 05 F9
	rts		; 60

	sed		; F8
	ora #$E821.w		; 09 21 E8
	asl $F8F0.w		; 0E F0 F8
	asl $D860.w		; 0E 60 D8
	asl $30C3.w		; 0E C3 30
	sbc ($FE.b),Y		; F1 FE
	sei		; 78
	beq  -2.b		; F0 FE
	jmp ($FEF8.w,X)		; 7C F8 FE
	inc $FCFC.w,X		; FE FC FC
	bmi  -2.b		; 30 FE
	xba		; EB
	nop		; EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	sty $78.b		; 84 78
	tsb $FEC3.w		; 0C C3 FE
	cop $FC.b		; 02 FC
	inc $FE15.w,X		; FE 15 FE
	inc $F40F.w,X		; FE 0F F4
	inc $FE07.w		; EE 07 FE
	ora $1F07.w		; 0D 07 1F
	ora $08FCFE.l		; 0F FE FC 08
	ora [$FE.b]		; 07 FE
	jsr ($FE10.w,X)		; FC 10 FE
	sbc $FCFE0F.l,X		; FF 0F FE FC
	clv		; B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	inc $DEFD.w,X		; FE FD DE
	sbc $FFAD.w,X		; FD AD FF
	sbc ($FE.b),Y		; F1 FE
	sbc $5FFE.w		; ED FE 5F
	sbc $13FF1B.l,X		; FF 1B FF 13
	sbc $33FC11.l,X		; FF 11 FC 33
	cmp $537A1F.l,X		; DF 1F 7A 53
	lda $2B7F93.l,X		; BF 93 7F 2B
	eor $FE.b,S		; 43 FE
	rtl		; 6B

	inc $67FF.w,X		; FE FF 67
	eor $FC.b,S		; 43 FC
	ora $D6.b,X		; 15 D6
	eor $19.b		; 45 19
	inc $0BF8.w,X		; FE F8 0B
	tax		; AA
	pea $C0FE.w		; F4 FE C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($5FBD.w,X)		; FC BD 5F
	lsr $C0FF.w		; 4E FF C0
	inc $F8FC.w,X		; FE FC F8
	beq  -2.b		; F0 FE
	iny		; C8
	cpy #$3C.b		; C0 3C
	bmi -12.b		; 30 F4
	beq -92.b		; F0 A4
	lda $8F.b		; A5 8F
	beq  -4.b		; F0 FC
	ldx $FEF1.w		; AE F1 FE
	sec		; 38
	sed		; F8
	cpy $0CFC.w		; CC FC 0C
	cmp ($C6.b,X)		; C1 C6
	inc $FE04.w,X		; FE 04 FE
	ldx #$F0.b		; A2 F0
	phd		; 0B
	ora ($A0.b,X)		; 01 A0
	beq  13.b		; F0 0D
	asl $FC.b		; 06 FC
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
	ldy #$FF.b		; A0 FF
	ora [$FE.b]		; 07 FE
	dey		; 88
	inx		; E8
	ora $0FE879.l		; 0F 79 E8 0F
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
	adc $008E.w		; 6D 8E 00
	sbc $023FF8.l,X		; FF F8 3F 02
	inc $2CF8.w,X		; FE F8 2C
	asl $FE.b		; 06 FE
	tsb $B9.b		; 04 B9
	lda ($FE.b),Y		; B1 FE
	ora $FE.b		; 05 FE
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	asl A		; 0A
	eor ($FE.b,X)		; 41 FE
	rti		; 40

	ror A		; 6A
	sta $FE.b		; 85 FE
	sed		; F8
	clc		; 18
	sbc $5481F8.l,X		; FF F8 81 54
	sed		; F8
	phd		; 0B
	inc $87F8.w,X		; FE F8 87
	ora #$F8FE.w		; 09 FE F8
	trb $F8D2.w		; 1C D2 F8
	ora $5556FF.l		; 0F FF 56 55
	asl $78.b		; 06 78
	pea $FE80.w		; F4 80 FE
	sed		; F8
	trb $46.b		; 14 46
	beq  28.b		; F0 1C
	sbc $A059F8.l,X		; FF F8 59 A0
	sed		; F8
	and ($8C.b),Y		; 31 8C
	inx		; E8
	and $F834.w		; 2D 34 F8
	ora $AA85.w,X		; 1D 85 AA
	inx		; E8
	sbc ($74.b)		; F2 74
	cpx $85FE.w		; EC FE 85
	inc $16F8.w,X		; FE F8 16
	cpx #$FE.b		; E0 FE
	inc $0FF8.w,X		; FE F8 0F
	tax		; AA
	tsx		; BA
	lsr $F0.b		; 46 F0
	tsa		; 3B
	tax		; AA
	inx		; E8
	ora ($98.b),Y		; 11 98
	inx		; E8
	ora $F8FF.w,X		; 1D FF F8
	ora $E2B2.w,Y		; 19 B2 E2
	bcs -26.b		; B0 E6
	jmp ($0EF8.w)		; 6C F8 0E
	bra   0.b		; 80 00
	lsr A		; 4A
	.db $82, $FE, $F8		; 82 FE F8
	ora $FF.b,X		; 15 FF
	sed		; F8
	tsx		; BA
	nop		; EA
	beq  13.b		; F0 0D
	asl $FC00.w		; 0E 00 FC
	inc $5546.w,X		; FE 46 55
	ldx $DA.b		; A6 DA
	inc A		; 1A
	beq  11.b		; F0 0B
	.db $82, $FE, $01		; 82 FE 01
	sed		; F8
	adc $72.b,S		; 63 72
	inx		; E8
	and $35E83E.l,X		; 3F 3E E8 35
	asl $16F0.w		; 0E F0 16
	eor $85.b,X		; 55 85
	bcc -24.b		; 90 E8
	jsr $F018.w		; 20 18 F0
	lda $FE.b,X		; B5 FE
	sed		; F8
	adc $F696.w,X		; 7D 96 F6
	stx $E8.b,Y		; 96 E8
	phd		; 0B
	sta ($E8.b)		; 92 E8
	ora $17A8FE.l		; 0F FE A8 17
	.db $42, $FE		; 42 FE
	lsr $C8.b		; 46 C8
	adc #$E8C2.w		; 69 C2 E8
	tsa		; 3B
	asl A		; 0A
	brk $08.b		; 00 08
	inc $12F8.w,X		; FE F8 12
	mvn $EA,$D5		; 54 D5 EA
	inc $09F8.w,X		; FE F8 09
	cpx $FFFE.w		; EC FE FF
	sed		; F8
	asl $A8.b,X		; 16 A8
	cld		; D8
	ora [$9F.b],Y		; 17 9F
	sbc [$C4.b]		; E7 C4
	beq  17.b		; F0 11
	inc $2CF8.w,X		; FE F8 2C
	tax		; AA
	tax		; AA
	bra  -2.b		; 80 FE
	sed		; F8
	rti		; 40

	txs		; 9A
	sed		; F8
	jsl $2DD014.l		; 22 14 D0 2D
	dec $F8.b		; C6 F8
	tsa		; 3B
	pei ($F8.b)		; D4 F8
	ora $5A.b,X		; 15 5A
	inx		; E8
	eor [$FE.b],Y		; 57 FE
	sed		; F8
	and $ADAA.w,X		; 3D AA AD
	cmp ($D8.b)		; D2 D8
	and $BC.b,S		; 23 BC
	cpx $F8FE.w		; EC FE F8
	phk		; 4B
	ror $C0.b		; 66 C0
	ora ($4A.b,S),Y		; 13 4A
	inx		; E8
	ora $E00008.l		; 0F 08 00 E0
	adc [$40.b],Y		; 77 40
	inc $18F8.w,X		; FE F8 18
	tax		; AA
	tax		; AA
	stz $1CD0.w		; 9C D0 1C
	dec $D8.b,X		; D6 D8
	phd		; 0B
	inc $25F8.w,X		; FE F8 25
	ldx #$DC.b		; A2 DC
	sbc $4EFCF8.l,X		; FF F8 FC 4E
	ldy #$E0.b		; A0 E0
	tay		; A8
	inx		; E8
	and ($3C.b,S),Y		; 33 3C
	cpy #$B7.b		; C0 B7
	phy		; 5A
	lda ($BA.b),Y		; B1 BA
	inx		; E8
	jsr ($D042.w,X)		; FC 42 D0
	bmi -48.b		; 30 D0
	cld		; D8
	phd		; 0B
	stx $FE.b		; 86 FE
	sed		; F8
	clc		; 18
	ldx $2DD8.w		; AE D8 2D
	inc $AA80.w,X		; FE 80 AA
	lda $F8FE.w,Y		; B9 FE F8
	tsb $D890.w		; 0C 90 D8
	asl $A824.w		; 0E 24 A8
	sta ($FE.b,S),Y		; 93 FE
	sed		; F8
	adc $F0.b,X		; 75 F0
	sbc ($46.b)		; F2 46
	inc $AA44.w,X		; FE 44 AA
	tax		; AA
	inc $12F8.w,X		; FE F8 12
	asl $B6.b		; 06 B6
	brk $B0.b		; 00 B0
	ora $FECE.w		; 0D CE FE
	inc $13F8.w,X		; FE F8 13
	bvs -16.b		; 70 F0
	ora [$2A.b],Y		; 17 2A
	beq  60.b		; F0 3C
	bit $F0.b,X		; 34 F0
	ora $AAAA.w		; 0D AA AA
	rol $12F0.w		; 2E F0 12
	inc $1FF8.w,X		; FE F8 1F
	bit $2180.w		; 2C 80 21
	dey		; 88
	clv		; B8
	and [$E6.b],Y		; 37 E6
	ldy #$1B.b		; A0 1B
	stz $0BF0.w		; 9C F0 0B
	mvn $11,$88		; 54 88 11
	bcs -88.b		; B0 A8
	clc		; 18
	tax		; AA
	tax		; AA
	pea $40A0.w		; F4 A0 40
	bmi -32.b		; 30 E0
	ora $0FF846.l,X		; 1F 46 F8 0F
	jmp $23F8.w		; 4C F8 23
	stz $A4AE.w,X		; 9E AE A4
	sta [$B2.b]		; 87 B2
	cld		; D8
	rti		; 40

.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	ora $82AAAA.l		; 0F AA AA 82
	sed		; F8
	ora ($80.b,S),Y		; 13 80
	sed		; F8
	ora $8028.w		; 0D 28 80
	bpl  -1.b		; 10 FF
	sed		; F8
	inc A		; 1A
	bvs -16.b		; 70 F0
	tas		; 1B
	dec $70.b		; C6 70
	and $C092.w,X		; 3D 92 C0
	tda		; 7B
	cpy $AAF6.w		; CC F6 AA
	tax		; AA
	sbc ($D0.b)		; F2 D0
	bmi  -2.b		; 30 FE
	sed		; F8
	and ($FE.b)		; 32 FE
	rts		; 60

	adc ($30.b,X)		; 61 30
	iny		; C8
	adc [$46.b],Y		; 77 46
	cpx #$0411.w		; E0 11 04
	inx		; E8
	asl $E648.w,X		; 1E 48 E6
	ror $11E8.w,X		; 7E E8 11
	sbc $A923.w,X		; FD 23 A9
	bvs  77.b		; 70 4D
	sbc $FCFFF6.l,X		; FF F6 FF FC
	trb $0303.w		; 1C 03 03
	sbc $FFFFC0.l,X		; FF C0 FF FF
	.db $62, $48, $EB		; 62 48 EB
	inc $F1FC.w,X		; FE FC F1
	jsr ($783E.w,X)		; FC 3E 78
	sbc [$33.b],Y		; F7 33
	sbc $C0FC01.l,X		; FF 01 FC C0
	beq -16.b		; F0 F0
	cpx #$01FF.w		; E0 FF 01
	inc $E8FF.w,X		; FE FF E8
	eor [$D0.b]		; 47 D0
	ora $09F8E0.l		; 0F E0 F8 09
	sbc [$C0.b]		; E7 C0
	adc $E00F00.l,X		; 7F 00 0F E0
	and ($56.b),Y		; 31 56
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sbc [$1F.b],Y		; F7 1F
	cmp $F0.b,X		; D5 F0
	cpx #$F8.b		; E0 F8
	ora #$EB.b		; 09 EB
	jsr ($0B90.w,X)		; FC 90 0B
	cpy $FFE0.w		; CC E0 FF
	lda $FC.b,X		; B5 FC
	cpx #$F8.b		; E0 F8
	ora $DAB2.w		; 0D B2 DA
	stx $F8C0.w		; 8E C0 F8
	ora #$E0.b		; 09 E0
	lsr $F8.b,X		; 56 F8
	phd		; 0B
	sbc #$FC.b		; E9 FC
	cpx #$F8.b		; E0 F8
	ora $E080.w,Y		; 19 80 E0
	sbc $03FE17.l,X		; FF 17 FE 03
	sbc $FA07.w,X		; FD 07 FA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	phb		; 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cpy $FF.b		; C4 FF
	sbc $A7C8CD.l,X		; FF CD C8 A7
	bra  95.b		; 80 5F
	brk $DF.b		; 00 DF
	bra -17.b		; 80 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	ora $033F01.l		; 0F 01 3F 03
	sbc $334F7F.l,X		; FF 7F 4F 33
	lda $BF7F5F.l,X		; BF 5F 7F BF
	sbc $1FBF3F.l,X		; FF 3F BF 1F
	ora $AAAA0F.l,X		; 1F 0F AA AA
	eor $55.b,X		; 55 55
	tsb $FCFF.w		; 0C FF FC
	mvn $07,$D2		; 54 D2 07
	ora $18.b,S		; 03 18
	php		; 08
	phk		; 4B
	brk $55.b		; 00 55
	and ($FF.b),Y		; 31 FF
	brk $AA.b		; 00 AA
	jsr ($93AB.w,X)		; FC AB 93
	xce		; FB
	ora [$CF.b]		; 07 CF
	and [$8F.b],Y		; 37 8F
	sbc $1D8747.l,X		; FF 47 87 1D
	clc		; 18
	and [$20.b],Y		; 37 20
	cmp $40DF40.l		; CF 40 DF 40
	sta $ECF780.l		; 8F 80 F7 EC
	cld		; D8
	tya		; 98
	ora ($FF.b)		; 12 FF
	cop $00.b		; 02 00
	sbc $FE3F.w,Y		; F9 3F FE
	adc $953FFE.l,X		; 7F FE 3F 95
	tax		; AA
	rol A		; 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	asl $E00A.w,X		; 1E 0A E0
	cmp $00.b,X		; D5 00
	plx		; FA
	plx		; FA
	cpx #$FE.b		; E0 FE
	sbc ($99.b),Y		; F1 99
	lsr $FF.b		; 46 FF
	inc $A0E0.w,X		; FE E0 A0
	asl A		; 0A
	sbc $0F.b,S		; E3 0F
	sei		; 78
	lsr A		; 4A
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $F5A07E.l,X		; FF 7E A0 F5
	lda $A287.w,Y		; B9 87 A2
	cpy #$4D.b		; C0 4D
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
	jsr ($F7DF.w,X)		; FC DF F7
	inc $0EF8.w,X		; FE F8 0E
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $F80E.w,X		; 5E 0E F8
	beq  98.b		; F0 62
	xce		; FB
	ply		; 7A
	sbc $66F101.l,X		; FF 01 F1 66
	brk $F0.b		; 00 F0
	ora $8FF1E1.l		; 0F E1 F1 8F
	bvs  -6.b		; 70 FA
	sbc $FB02.w,X		; FD 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	cmp [$38.b]		; C7 38
	rts		; 60

	adc [$40.b]		; 67 40
	ora $FCBF2A.l,X		; 1F 2A BF FC
	cmp $099E80.l,X		; DF 80 9E 09
	inc $7F0F.w		; EE 0F 7F
	sta $66FC26.l,X		; 9F 26 FC 66
	bra -100.b		; 80 9C
	sbc $41BAD8.l,X		; FF D8 BA 41
	cpy #$7F.b		; C0 7F
	.db $82, $F3, $02		; 82 F3 02
	sbc [$05.b],Y		; F7 05
	sbc $FF08.w		; ED 08 FF
	sbc [$2A.b]		; E7 2A
	and $FF.b		; 25 FF
	adc $FBFAFD.l,X		; 7F FD FA FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	rti		; 40

	cop $7C.b		; 02 7C
	cpy #$FC.b		; C0 FC
	pei ($87.b)		; D4 87
	sbc $40BF83.l,X		; FF 83 BF 40
	ora $C3.b		; 05 C3
	sbc $FCBC.w,X		; FD BC FC
	and ($FC.b,X)		; 21 FC
	jsr ($1B83.w,X)		; FC 83 1B
	adc ($FC.b),Y		; 71 FC
	asl $C7.b		; 06 C7
	.db $62, $F8, $0C		; 62 F8 0C
	inc $E001.w,X		; FE 01 E0
	inc $DE01.w,X		; FE 01 DE
	cmp $BBCE87.l,X		; DF 87 CE BB
	ldy #$65.b		; A0 65
	cpx $F8.b		; E4 F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $FEE09B.l,X		; 7F 9B E0 FE
	adc $BFF93C.l		; 6F 3C F9 BF
	asl $E10F.w,X		; 1E 0F E1
	bit $F8.b		; 24 F8
	ora $8040.w		; 0D 40 80
	sbc $FC57A8.l,X		; FF A8 57 FC
	bne -101.b		; D0 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
	.db $42, $3F		; 42 3F
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	asl A		; 0A
	sbc $87.b,X		; F5 87
	lda $F1E04F.l,X		; BF 4F E0 F1
	lsr $C1F3.w,X		; 5E F3 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	rol A		; 2A
	rts		; 60

	adc $42FEE4.l		; 6F E4 FE 42
	sbc #$3C.b		; E9 3C
	xba		; EB
	clc		; 18
	sbc $2CACC7.l,X		; FF C7 AC 2C
	inc $AA1F.w		; EE 1F AA
	sed		; F8
	phd		; 0B
	rti		; 40

	nop		; EA
	iny		; C8
	sbc $EBF8FD.l,X		; FF FD F8 EB
	jmp $01FCFE.l		; 5C FE FC 01
	lsr $F481.w,X		; 5E 81 F4
	cop $EB.b		; 02 EB
	adc $F3FDED.l,X		; 7F ED FD F3
	bit $1E1F.w,X		; 3C 1F 1E
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $BF8860.l,X		; 5F 60 88 BF
	bra 127.b		; 80 7F
	bra  62.b		; 80 3E
	trb $A2.b		; 14 A2
	phk		; 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	ldy #$19.b		; A0 19
	inc $F764.w,X		; FE 64 F7
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	inc A		; 1A
	and $F5FCFA.l,X		; 3F FA FC F5
	brk $BA.b		; 00 BA
	ora ($E0.b,X)		; 01 E0
	sta [$FF.b],Y		; 97 FF
	sbc $FFFC.w,X		; FD FC FF
	xce		; FB
	sta $CB.b		; 85 CB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	stz $FF55.w,X		; 9E 55 FF
	bra  -8.b		; 80 F8
	asl A		; 0A
	tax		; AA
	sbc $D4FC55.l,X		; FF 55 FC D4
	jsr ($E779.w,X)		; FC 79 E7
	jsr $09F0.w		; 20 F0 09
	eor [$10.b],Y		; 57 10
	cpx #$FE.b		; E0 FE
	inc $AEFE.w,X		; FE FE AE
	nop		; EA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	stz $E0.b,X		; 74 E0
	sed		; F8
	ora #$14.b		; 09 14
	tya		; 98
.INDEX 8
	sep #$1A		; E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$E2.b		; 09 E2
	pea $7DAE.w		; F4 AE 7D
	cpx #$BF.b		; E0 BF
	dec $F1.b		; C6 F1
	plp		; 28
	nop		; EA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	ora $00FD90.l		; 0F 90 FD 00
	lda ($E1.b,X)		; A1 E1
	cmp [$7D.b],Y		; D7 7D
	eor $24.b,X		; 55 24
	sbc ($81.b),Y		; F1 81
	cpx #$09.b		; E0 09
	sbc ($1E.b,X)		; E1 1E
	cmp $FF602F.l,X		; DF 2F 60 FF
	tya		; 98
	sbc ($70.b)		; F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $B2D5.w		; 0E D5 B2
	inc $0DF8.w,X		; FE F8 0D
	tsx		; BA
	sbc #$16.b		; E9 16
	sbc ($FF.b,X)		; E1 FF
	sed		; F8
	asl A		; 0A
	ora $E9.b,S		; 03 E9
	cmp $F0AAFE.l,X		; DF FE AA F0
	lsr $FFFD.w,X		; 5E FD FF
	sed		; F8
	phd		; 0B
	cpy #$F8.b		; C0 F8
	asl $FD68.w		; 0E 68 FD
	cpx #$F8.b		; E0 F8
	asl $FB24.w		; 0E 24 FB
	brk $65.b		; 00 65
	lda $4C.b,X		; B5 4C
	brk $DB.b		; 00 DB
	lda $640AF0.l,X		; BF F0 0A 64
	sbc ($DB.b),Y		; F1 DB
	lsr $ED.b,X		; 56 ED
	cpx #$BF.b		; E0 BF
	inc $F0FE.w,X		; FE FE F0
	ora ($E6.b,X)		; 01 E6
	ora ($EC.b,X)		; 01 EC
	ora $68.b,S		; 03 68
	inc $FF.b		; E6 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	ora $C0FD55.l,X		; 1F 55 FD C0
	and $FFF13F.l,X		; 3F 3F F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$7F.b		; 09 7F
	sbc $0101.w		; ED 01 01
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
	sta ($FF.b,X)		; 81 FF
	sed		; F8
	adc [$9C.b],Y		; 77 9C
	plp		; 28
	and $32.b,X		; 35 32
	cli		; 58
	ora $92.b,X		; 15 92
	pla		; 68
	and ($FF.b),Y		; 31 FF
	sed		; F8
	cmp ($F6.b),Y		; D1 F6
	beq  33.b		; F0 21
	bit $CBB8.w,X		; 3C B8 CB
	eor $55.b,X		; 55 55
	sbc $1C57F8.l,X		; FF F8 57 1C
	bcc   9.b		; 90 09
	lsr $0C50.w,X		; 5E 50 0C
	bpl -71.b		; 10 B9
	inc $12FE.w,X		; FE FE 12
	clv		; B8
	ora [$EE.b],Y		; 17 EE
	sei		; 78
	eor $1F88BE.l,X		; 5F BE 88 1F
	eor $AB.b,X		; 55 AB
	ldx $1B88.w		; AE 88 1B
	.db $42, $88		; 42 88
	ora $8838.w		; 0D 38 88
	ora $E084.w		; 0D 84 E0
	ora #$B0.b		; 09 B0
	php		; 08
	ora ($08.b,S),Y		; 13 08
	plx		; FA
	sbc $F8FF.w,X		; FD FF F8
	cmp [$56.b],Y		; D7 56
	eor $E6.b,X		; 55 E6
	sei		; 78
	and [$FE.b]		; 27 FE
	sed		; F8
	eor $04.b,X		; 55 04
	sed		; F8
	cli		; 58
	ora $14.b,X		; 15 14
	rts		; 60

	bvs  72.b		; 70 48
	bcc 105.b		; 90 69
	ldy #$E8.b		; A0 E8
	ora $0DF8FE.l		; 0F FE F8 0D
	sed		; F8
	cpx #$1B.b		; E0 1B
	eor [$55.b],Y		; 57 55
	pea $40E7.w		; F4 E7 40
	cop $FE.b		; 02 FE
	sbc $20A3.w,X		; FD A3 20
	phy		; 5A
	stz $78F0.w		; 9C F0 78
	rts		; 60

	cpx #$0D.b		; E0 0D
	dey		; 88
	clc		; 18
	ora $16D862.l		; 0F 62 D8 16
	lda $E6AA.w		; AD AA E6
	plp		; 28
	rol A		; 2A
	clv		; B8
	sed		; F8
	asl $FE80.w		; 0E 80 FE
	jsr ($68A8.w,X)		; FC A8 68
	trb $96.b		; 14 96
	pla		; 68
	rol $D858.w,X		; 3E 58 D8
	and [$46.b]		; 27 46
	cld		; D8
	ora $056A.w,Y		; 19 6A 05
	and ($60.b)		; 32 60
	and $11D802.l,X		; 3F 02 D8 11
	ldx $78.b,Y		; B6 78
	ora $6096.w,Y		; 19 96 60
	asl $C0.b,X		; 16 C0
	inc $0CF8.w,X		; FE F8 0C
	tax		; AA
	sed		; F8
	asl $FF.b,X		; 16 FF
	eor #$B5.b		; 49 B5
	dec $FED2.w,X		; DE D2 FE
	rol $E8.b		; 26 E8
	ora $1BD87C.l,X		; 1F 7C D8 1B
	ldx $2158.w		; AE 58 21
	ldy #$58.b		; A0 58
	asl $B940.w,X		; 1E 40 B9
	rol A		; 2A
	inc $0DF8.w,X		; FE F8 0D
	tsb $FE.b		; 04 FE
	ora $B4.b		; 05 B4
	sec		; 38
	clc		; 18
	tay		; A8
	cpx #$09.b		; E0 09
	sty $F6.b,X		; 94 F6
	php		; 08
	trb $61.b		; 14 61
	eor $54.b,X		; 55 54
	lsr $FE40.w		; 4E 40 FE
	jsr ($DC6E.w,X)		; FC 6E DC
	and [$08.b],Y		; 37 08
	eor $2A.b,X		; 55 2A
	inx		; E8
	bpl  85.b		; 10 55
	lda $FD4C.w		; AD 4C FD
	inc $1CF8.w,X		; FE F8 1C
	bit $C8.b,X		; 34 C8
	clc		; 18
	inc $15F8.w,X		; FE F8 15
	tsb $09E8.w		; 0C E8 09
	inc $C8.b,X		; F6 C8
	pld		; 2B
	.db $42, $FE		; 42 FE
	sed		; F8
	jsr $443A.w		; 20 3A 44
	bcc -24.b		; 90 E8
	ora $8C.b,X		; 15 8C
	inc $DC18.w,X		; FE 18 DC
	php		; 08
	rti		; 40

	inc $FE0A.w,X		; FE 0A FE
	bvc  85.b		; 50 55
	plx		; FA
	cpy #$F0.b		; C0 F0
	eor $FF.b,X		; 55 FF
	sed		; F8
	jsr ($B8FA.w,X)		; FC FA B8
	bvs -62.b		; 70 C2
	bvc  92.b		; 50 5C
	tsx		; BA
	rts		; 60

	eor $FF.b,X		; 55 FF
	sed		; F8
	bmi  85.b		; 30 55
	eor $18.b,X		; 55 18
	rts		; 60

	ora $FCF8FE.l		; 0F FE F8 FC
	bpl  88.b		; 10 58
	phd		; 0B
	inc $3CF8.w,X		; FE F8 3C
	cpx #$B8.b		; E0 B8
	mvp $98,$7E		; 44 7E 98
	asl A		; 0A
	inc $1EF8.w,X		; FE F8 1E
	jmp ($26F8.w)		; 6C F8 26
	eor $B5.b,X		; 55 B5
	cmp ($D0.b)		; D2 D0
	ora $DC.b,X		; 15 DC
	iny		; C8
	tas		; 1B
	phx		; DA
	wai		; CB
	.db $82, $B7, $80		; 82 B7 80
	lda $28.b,X		; B5 28
	cld		; D8
	pei ($C4.b)		; D4 C4
	beq  29.b		; F0 1D
	eor ($4A.b,X)		; 41 4A
	tax		; AA
	inc $0EF8.w,X		; FE F8 0E
	inc $A0.b,X		; F6 A0
	eor $35E8C0.l		; 4F C0 E8 35
	sbc $FEBC7A.l,X		; FF 7A BC FE
	sed		; F8
	and ($84.b,X)		; 21 84
	beq -99.b		; F0 9D
	tax		; AA
	sta ($88.b)		; 92 88
	cpx #$0F.b		; E0 0F
	stz $88.b,X		; 74 88
	ora #$FE.b		; 09 FE
	sed		; F8
	ora #$D4.b		; 09 D4
	beq   9.b		; F0 09
	inc $61D0.w		; EE D0 61
	ldx $E0.b,Y		; B6 E0
	ora $AAAA70.l,X		; 1F 70 AA AA
	txs		; 9A
	bvs   9.b		; 70 09
	stx $21F0.w		; 8E F0 21
	iny		; C8
	clv		; B8
	ora [$8E.b],Y		; 17 8E
	php		; 08
	ora $E0A5.w		; 0D A5 E0
	lda #$6C.b		; A9 6C
	ldy #$2D.b		; A0 2D
	jsl $7C1198.l		; 22 98 11 7C
	bne  45.b		; D0 2D
	tax		; AA
	tax		; AA
	.db $82, $E0, $0F		; 82 E0 0F
	bra -26.b		; 80 E6
	jmp $19D0.w		; 4C D0 19
	sbc $3F17F8.l,X		; FF F8 17 3F
	cld		; D8
	ora #$FE.b		; 09 FE
	sed		; F8
	ora $18A85A.l		; 0F 5A A8 18
	bne -107.b		; D0 95
	tax		; AA
	tax		; AA
	inc $0EF8.w,X		; FE F8 0E
	jmp ($2EA8.w)		; 6C A8 2E
	inc $55F8.w,X		; FE F8 55
	asl $A0FC.w		; 0E FC A0
	bra  29.b		; 80 1D
	ldx #$DE.b		; A2 DE
	trb $F0.b		; 14 F0
	tsa		; 3B
	sta ($50.b)		; 92 50
	and ($FE.b),Y		; 31 FE
	xba		; EB
	adc ($50.b)		; 72 50
	and ($FE.b,X)		; 21 FE
	sed		; F8
	bpl  63.b		; 10 3F
	brk $5F.b		; 00 5F
	jsr $3847.w		; 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $B1EE.w,Y		; 39 EE B1
	cpy #$3F.b		; C0 3F
	jmp $E080.w		; 4C 80 E0
	cpy #$F0.b		; C0 F0
	rts		; 60

	beq 112.b		; F0 70
	inc $B0B0.w,X		; FE B0 B0
	sbc $40F0F0.l,X		; FF F0 F0 40
	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	adc $3FC1FA.l,X		; 7F FA C1 3F
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $F77F.w,X		; FD 7F F7
	adc $CE.b,X		; 75 CE
	inc $E3FC.w,X		; FE FC E3
	cpx #$80.b		; E0 80
	adc $8AFE82.l,X		; 7F 82 FE 8A
	adc $FCFFCE.l,X		; 7F CE FF FC
	clv		; B8
	ora ($40.b),Y		; 11 40
	clv		; B8
	sed		; F8
	inc $CEFD.w,X		; FE FD CE
	inc $60FD.w,X		; FE FD 60
	sbc $FEF6.w,X		; FD F6 FE
	ora $0FD0.w		; 0D D0 0F
	beq  -8.b		; F0 F8
	ora $F777FD.l		; 0F FD 77 F7
	ror $D70B.w,X		; 7E 0B D7
	plx		; FA
	adc ($81.b)		; 72 81
	plp		; 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	phd		; 0B
	lsr $FF.b		; 46 FF
	adc ($A8.b,X)		; 61 A8
	pla		; 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$D0.b		; C0 D0
	ldy $FEFC.w,X		; BC FC FE
	sty $98CC.w		; 8C CC 98
	rts		; 60

	jsr ($F8D0.w,X)		; FC D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($EA88.w,X)		; FC 88 EA
	inc $FC70.w,X		; FE 70 FC
	sta ($E8.b)		; 92 E8
	phd		; 0B
	jsl $990BB0.l		; 22 B0 0B 99
	nop		; EA
	cpy #$E0.b		; C0 E0
	tsx		; BA
	rti		; 40

	inc $FE98.w,X		; FE 98 FE
	ora $01.b,S		; 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $0102.w,X		; FE 02 01
	bpl -89.b		; 10 A7
	inc $8EFC.w,X		; FE FC 8E
	sbc $F7FF.w,X		; FD FF F7
	cmp ($FA.b),Y		; D1 FA
	dec $4C.b		; C6 4C
	plb		; AB
	lda $FE023B.l		; AF 3B 02 FE
	rol $D3FA.w		; 2E FA D3
	cmp $80.b,S		; C3 80
	bit $FE7C.w,X		; 3C 7C FE
	stz $9E5C.w		; 9C 5C 9E
	lsr $1EFE.w,X		; 5E FE 1E
	bmi -123.b		; 30 85
	dec $C0FE.w,X		; DE FE C0
	jsr ($E0FE.w,X)		; FC FE E0
	inc $346A.w,X		; FE 6A 34
	inc $FCFE.w,X		; FE FE FC
	ldy $FE.b,X		; B4 FE
	ldy #$F8.b		; A0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	ldy #$FE.b		; A0 FE
	bra  23.b		; 80 17
	adc ($FF.b),Y		; 71 FF
	cpy #$FF.b		; C0 FF
	sbc $20FE6D.l,X		; FF 6D FE 20
	cpx #$5D.b		; E0 5D
	sbc [$FE.b],Y		; F7 FE
	inc $FEC6.w,X		; FE C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $0304.w,X		; FE 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $FB1FFF.l,X		; FF FF 1F FB
	xce		; FB
	cmp $DFCFD7.l,X		; DF D7 CF DF
	dec $96DE.w		; CE DE 96
	stx $D6.b		; 86 D6
	dec $F7.b		; C6 F7
	inc $FE.b		; E6 FE
	adc $FF046E.l,X		; 7F 6E 04 FF
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $39FF79.l,X		; FF 79 FF 39
	sbc $82FF19.l,X		; FF 19 FF 82
	sta $06FE6C.l,X		; 9F 6C FE 06
	dec $17.b		; C6 17
	cmp [$1F.b],Y		; D7 1F
	cmp [$7C.b],Y		; D7 7C
	eor $FC.b,X		; 55 FC
	ror A		; 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	sbc $68FCFE.l,X		; FF FE FC 68
	inc $FEFE.w,X		; FE FE FE
	ldy #$FE.b		; A0 FE
	cmp $FE7B.w		; CD 7B FE
	inc $FE68.w,X		; FE 68 FE
	cpx #$FF.b		; E0 FF
	rts		; 60

	rts		; 60

	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl -34.b		; 10 DE
	cmp ($FE.b,X)		; C1 FE
	bcc -16.b		; 90 F0
	eor $03E3.w,X		; 5D E3 03
	ora $70.b		; 05 70
	ora $0A90.w,Y		; 19 90 0A
	phd		; 0B
	cop $07.b		; 02 07
	brk $06.b		; 00 06
	eor ($FD.b)		; 52 FD
	inc $F591.w,X		; FE 91 F5
	lda $D6FC1C.l,X		; BF 1C FC D6
	tsb $7C78.w		; 0C 78 7C
	inc $FDF1.w,X		; FE F1 FD
	brk $30.b		; 00 30
	cpy #$FC.b		; C0 FC
	sta $71.b,S		; 83 71
	beq -124.b		; F0 84
	sed		; F8
	inc $A28D.w,X		; FE 8D A2
	rti		; 40

	inc $C060.w,X		; FE 60 C0
	clc		; 18
	tsb $FE.b		; 04 FE
	bvs -32.b		; 70 E0
	inc $F25C.w,X		; FE 5C F2
.INDEX 8
	sep #$18		; E2 18
	asl $FE.b		; 06 FE
	ldy #$40.b		; A0 40
	inc $6090.w,X		; FE 90 60
	inc $08F0.w,X		; FE F0 08
	ldx $FCB8.w		; AE B8 FC
	ora $FC0A07.l		; 0F 07 0A FC
	cpx #$03.b		; E0 03
	inc $08F6.w,X		; FE F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $FC07.w		; 0C 07 FC
	jsr ($FE87.w,X)		; FC 87 FE
	cmp $38.b,X		; D5 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $C3FE.w		; AE FE C3
	and ($F7.b),Y		; 31 F7
	ldx $BF.b,Y		; B6 BF
	inc $FFFF.w,X		; FE FF FF
	ora ($0A.b),Y		; 11 0A
	eor $4C3A.w,Y		; 59 3A 4C
	inc $FCFA.w,X		; FE FA FC
	ora $8FFEC7.l		; 0F C7 FE 8F
	eor [$C3.b]		; 47 C3
	ora $FE.b,X		; 15 FE
	tax		; AA
	eor [$FC.b],Y		; 57 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	sta [$21.b]		; 87 21
	inc $A0FC.w,X		; FE FC A0
	lsr $FC04.w,X		; 5E 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sbc [$99.b]		; E7 99
	ora ($80.b,X)		; 01 80
	sta ($FE.b,X)		; 81 FE
	jsr ($FFFD.w,X)		; FC FD FF
	mvn $0F,$F4		; 54 F4 0F
	bcs   9.b		; B0 09
	bvs  96.b		; 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $63.b		; 00 63
	ldy $30B8.w,X		; BC B8 30
	sed		; F8
	asl $FED0.w		; 0E D0 FE
	cld		; D8
	sed		; F8
	plp		; 28
	lda $E99CD2.l		; AF D2 9C E9
	iny		; C8
	sed		; F8
	php		; 08
	sed		; F8
	sbc $0FD8.w,Y		; F9 D8 0F
	php		; 08
	inc $FEFE.w,X		; FE FE FE
	tsb $4E7C.w		; 0C 7C 4E
	tda		; 7B
	ror $FEFE.w,X		; 7E FE FE
	lsr $0C5F.w,X		; 5E 5F 0C
	.db $82, $FC, $FE		; 82 FC FE
	inc $FEA1.w,X		; FE A1 FE
	cop $CC.b		; 02 CC
	ldy $FF.b,X		; B4 FF
	ora $FE.b,S		; 03 FE
	sbc $220606.l,X		; FF 06 06 22
	lsr $81.b,X		; 56 81
.ACCU 8
	sep #$E0		; E2 E0
	nop		; EA
	inc $0578.w,X		; FE 78 05
	cpy #$F6.b		; C0 F6
	jmp $18759F.l		; 5C 9F 75 18
	beq  -8.b		; F0 F8
	clc		; 18
	lda $F10EE0.l,X		; BF E0 0E F1
	inc $F078.w,X		; FE 78 F0
	inc $F87C.w,X		; FE 7C F8
	stx $1F.b		; 86 1F
	inc $FCFE.w,X		; FE FE FC
	inc $EAEB.w,X		; FE EB EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs -122.b		; 70 86
	adc ($FE.b,X)		; 61 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	inc $FE15.w,X		; FE 15 FE
	bpl  94.b		; 10 5E
	inc $F2AC.w,X		; FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $FCFE0F.l,X		; 1F 0F FE FC
	adc #$FF.b		; 69 FF
	ldy $FEF2.w		; AC F2 FE
	bpl  15.b		; 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $BFFF.w,X		; FD FF BF
	mvn $FE,$FF		; 54 FF FE
	sbc $FDDE.w,X		; FD DE FD
	lda $EDFE.w		; AD FE ED
	inc $FF5F.w,X		; FE 5F FF
	tas		; 1B
	sbc $0FF013.l,X		; FF 13 F0 0F
	stz $FCF1.w		; 9C F1 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $BD.b,S		; 43 BD
	tsx		; BA
	inc $FE6B.w,X		; FE 6B FE
	sbc $FC4367.l,X		; FF 67 43 FC
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($76.b,X)		; C1 76
	plx		; FA
	inc $D9FC.w,X		; FE FC D9
	lda [$C0.b]		; A7 C0
	inc $F8FC.w,X		; FE FC F8
	beq  -2.b		; F0 FE
	iny		; C8
	cpy #$3C.b		; C0 3C
	bmi  47.b		; 30 2F
	adc $F0F4.w,X		; 7D F4 F0
	ldy $F0.b		; A4 F0
	jsr ($F1AE.w,X)		; FC AE F1
	inc $F838.w,X		; FE 38 F8
	cpy $0CFC.w		; CC FC 0C
	tsb $FEAA.w		; 0C AA FE
	tsb $FE.b		; 04 FE
	ldx #$F0.b		; A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	sbc $EA9A3F.l,X		; FF 3F 9A EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	tsb $FCF1.w		; 0C F1 FC
	lda ($FE.b,X)		; A1 FE
	inc $FEA9.w,X		; FE A9 FE
	inc $DCFF.w,X		; FE FF DC
	cmp $06FE81.l,X		; DF 81 FE 06
	sbc $0D0AF8.l,X		; FF F8 0A 0D
	ora $0D0F.w		; 0D 0F 0D
	ora $03.b		; 05 03
	inc $09F8.w,X		; FE F8 09
	eor ($FF.b,X)		; 41 FF
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	bcs -72.b		; B0 B8
	ora $0FB8A1.l		; 0F A1 B8 0F
	xba		; EB
	nop		; EA
	lda $BEFBAA.l,X		; BF AA FB BE
	ora $94AF3E.l,X		; 1F 3E AF 94
	sta $FBFA8A.l,X		; 9F 8A FA FB
	inc $EBFB.w,X		; FE FB EB
	ora $FE.b,X		; 15 FE
	eor $7E.b,X		; 55 7E
	jmp.w [$7FFE]		; DC FE 7F
	inc $FE75.w,X		; FE 75 FE
	ora $FE.b		; 05 FE
	trb $FF.b		; 14 FF
	cpy $30F2.w		; CC F2 30
	inc $FE1E.w,X		; FE 1E FE
	asl $FEAE.w		; 0E AE FE
	rol A		; 2A
	txa		; 8A
	ldx $119E.w,Y		; BE 9E 11
	jmp ($0EF8.w,X)		; 7C F8 0E
	inc $B10F.w,X		; FE 0F B1
	ora $1FB5FE.l,X		; 1F FE B5 1F
	lda ($1F.b,X)		; A1 1F
	sbc #$FF.b		; E9 FF
	cmp $FEDE.w		; CD DE FE
	sbc $C8DE.w		; ED DE C8
	plx		; FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $2DDA.w		; EC DA 2D
	rti		; 40

	and ($FF.b,S),Y		; 33 FF
	inc $37FC.w,X		; FE FC 37
	ldy $D9.b,X		; B4 D9
	jsr ($65FE.w,X)		; FC FE 65
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	stx $0600.w		; 8E 00 06
	inc $34F8.w,X		; FE F8 34
	tsb $00.b		; 04 00
	ora $FE.b		; 05 FE
	ora ($25.b,X)		; 01 25
	sta $FE.b,X		; 95 FE
	eor ($FE.b,X)		; 41 FE
	sed		; F8
	asl $E4.b,X		; 16 E4
	inc $FFFE.w,X		; FE FE FF
	sed		; F8
	ora $1BF8A6.l		; 0F A6 F8 1B
	trb $88.b		; 14 88
	ldy $C4.b		; A4 C4
	sed		; F8
	phd		; 0B
	inc $49F8.w,X		; FE F8 49
	tay		; A8
	ldx #$AB.b		; A2 AB
	tax		; AA
	tya		; 98
	bra  -2.b		; 80 FE
	sed		; F8
	asl $F868.w,X		; 1E 68 F8
	ora ($80.b)		; 12 80
	sed		; F8
	eor $FE.b,S		; 43 FE
	sed		; F8
	and [$F0.b],Y		; 37 F0
	beq  85.b		; F0 55
	inc $B5F8.w,X		; FE F8 B5
	dec $F095.w		; CE 95 F0
	sbc ($3A.b)		; F2 3A
	sbc $00.b,X		; F5 00
	cop $FE.b		; 02 FE
	.db $42, $FE		; 42 FE
	sed		; F8
	trb $FCDC.w		; 1C DC FC
	pei ($AA.b)		; D4 AA
	inc $F8FF.w,X		; FE FF F8
	eor [$9E.b],Y		; 57 9E
	sed		; F8
	ora #$FE.b		; 09 FE
	sed		; F8
	and ($0A.b,X)		; 21 0A
	inc $20F8.w,X		; FE F8 20
	dec $FE.b,X		; D6 FE
	inc $0BE0.w		; EE E0 0B
	lsr $AB.b,X		; 56 AB
	bcc -28.b		; 90 E4
	sty $E2.b,X		; 94 E2
	rti		; 40

	inc $18F8.w,X		; FE F8 18
	sbc $5C3BF8.l,X		; FF F8 3B 5C
	inx		; E8
	sec		; 38
	bra  -2.b		; 80 FE
	sed		; F8
	inc A		; 1A
	rti		; 40

	inx		; E8
	asl $AAAD.w		; 0E AD AA
	sta ($F8.b)		; 92 F8
	phd		; 0B
	ora #$FE.b		; 09 FE
	sed		; F8
	jsr $C808.w		; 20 08 C8
	beq  14.b		; F0 0E
	pea $0BF0.w		; F4 F0 0B
	sbc ($F4.b)		; F2 F4
	pea $49F0.w		; F4 F0 49
	stz $09F8.w		; 9C F8 09
	sta ($6A.b)		; 92 6A
	plp		; 28
	dec $F8FE.w,X		; DE FE F8
	eor $F8944C.l		; 4F 4C 94 F8
	phd		; 0B
	php		; 08
	beq  27.b		; F0 1B
	ror $FE.b,X		; 76 FE
	php		; 08
	beq  11.b		; F0 0B
	ora ($95.b,X)		; 01 95
	mvn $F0,$09		; 54 09 F0
	eor $FF.b,X		; 55 FF
	sed		; F8
	.db $62, $F4, $E0		; 62 F4 E0
	tas		; 1B
	sbc $96FE1C.l,X		; FF 1C FE 96
	beq  77.b		; F0 4D
	cpy $E8.b		; C4 E8
	ora $B2AAD5.l		; 0F D5 AA B2
	inc $FE.b,X		; F6 FE
	jsr ($D8C4.w,X)		; FC C4 D8
	phd		; 0B
	inc $82FC.w,X		; FE FC 82
	inc $16F8.w,X		; FE F8 16
	rol $E0.b		; 26 E0
	pld		; 2B
	inc $35F8.w,X		; FE F8 35
	adc ($55.b)		; 72 55
	sbc $F860FC.l,X		; FF FC 60 F8
	ora $FE80FE.l,X		; 1F FE 80 FE
	sed		; F8
	asl $7A.b,X		; 16 7A
	sed		; F8
	pha		; 48
	nop		; EA
	cld		; D8
	ora ($82.b),Y		; 11 82
	beq  51.b		; F0 33
	cmp $55.b,X		; D5 55
	sty $F8.b		; 84 F8
	and $21D0EE.l		; 2F EE D0 21
	inc $43F8.w,X		; FE F8 43
	mvp $43,$D0		; 44 D0 43
	cop $40.b		; 02 40
	inc $12F8.w,X		; FE F8 12
	cpx #$F8.b		; E0 F8
	ora ($8E.b,S),Y		; 13 8E
	iny		; C8
	rts		; 60

	lda $2CAA.w		; AD AA 2C
	bne  45.b		; D0 2D
	ror $B8.b,X		; 76 B8
	and ($45.b),Y		; 31 45
	inc $0EF8.w,X		; FE F8 0E
	dec $F8.b,X		; D6 F8
	and [$F2.b]		; 27 F2
	inx		; E8
	ora ($EE.b),Y		; 11 EE
	inx		; E8
	and ($FE.b,S),Y		; 33 FE
	sed		; F8
	and ($56.b,X)		; 21 56
	cmp $E8.b,X		; D5 E8
	cpy #$0D.b		; C0 0D
	inc $09F8.w,X		; FE F8 09
	sta $FE.b		; 85 FE
	sed		; F8
	asl $AC.b,X		; 16 AC
	bcs  61.b		; B0 3D
	ror $55F0.w		; 6E F0 55
	tsb $25B0.w		; 0C B0 25
	ldy #$D0.b		; A0 D0
	and $F8.b		; 25 F8
	cpx #$29.b		; E0 29
	lsr $55.b,X		; 56 55
	php		; 08
	lda ($F8.b,S),Y		; B3 F8
	tas		; 1B
	bra  -2.b		; 80 FE
	sed		; F8
	trb $B0EE.w		; 1C EE B0
	lsr $FE.b,X		; 56 FE
	sed		; F8
	ora $3A.b,X		; 15 3A
	bcs  25.b		; B0 19
	ldx #$E0.b		; A2 E0
	jsr $C0DC.w		; 20 DC C0
	rol $55.b,X		; 36 55
	eor $6E.b,X		; 55 6E
	cld		; D8
	and [$BE.b]		; 27 BE
	beq  12.b		; F0 0C
	phx		; DA
	beq  60.b		; F0 3C
	cpy #$F0.b		; C0 F0
	and [$CC.b],Y		; 37 CC
	dec $E8CE.w		; CE CE E8
	ora $21E80C.l		; 0F 0C E8 21
	stz $2D98.w		; 9C 98 2D
	eor $D5.b,X		; 55 D5
	bcs -40.b		; B0 D8
	and $24.b,S		; 23 24
	sed		; F8
	eor ($38.b,X)		; 41 38
	bne  45.b		; D0 2D
	ldy $7DD0.w		; AC D0 7D
	tay		; A8
	bne  31.b		; D0 1F
	inc $0BF8.w,X		; FE F8 0B
	trb $21A8.w		; 1C A8 21
	inc $23F8.w,X		; FE F8 23
	tax		; AA
	tax		; AA
	php		; 08
	inc $24F8.w,X		; FE F8 24
	ldy $0BA8.w,X		; BC A8 0B
	lsr $98.b,X		; 56 98
	adc #$F0.b		; 69 F0
	inc $FE.b		; E6 FE
	jsr ($E806.w,X)		; FC 06 E8
	eor $5DC008.l		; 4F 08 C0 5D
	txa		; 8A
	eor $B6.b,X		; 55 B6
	dey		; 88
	ora #$8E.b		; 09 8E
	ldx $8E.b,Y		; B6 8E
	jsr ($4036.w,X)		; FC 36 40
	inc $0BF8.w,X		; FE F8 0B
	stx $A0.b,Y		; 96 A0
	and $3A.b,X		; 35 3A
	sed		; F8
	and $365455.l		; 2F 55 54 36
	beq   9.b		; F0 09
	sei		; 78
	inx		; E8
	pld		; 2B
	tya		; 98
	cpy #$0D.b		; C0 0D
	rol $B2FE.w,X		; 3E FE B2
	.db $42, $F8		; 42 F8
	ora $FCF8FF.l		; 0F FF F8 FC
	eor $55.b,X		; 55 55
	jsl $FE6B80.l		; 22 80 6B FE
	sed		; F8
	eor $C032.w,X		; 5D 32 C0
	rol $D0F0.w		; 2E F0 D0
	sty $B2.b		; 84 B2
	sed		; F8
	and $D0E4.w,X		; 3D E4 D0
	ora $B05C.w,X		; 1D 5C B0
	eor ($F4.b,S),Y		; 53 F4
	inx		; E8
	pld		; 2B
	eor $55.b,X		; 55 55
	sty $C8.b		; 84 C8
	sta $A82E.w,Y		; 99 2E A8
	adc [$FF.b]		; 67 FF
	sed		; F8
	ora $0D8838.l		; 0F 38 88 0D
	bit $1188.w		; 2C 88 11
	rol A		; 2A
	dey		; 88
	ora ($34.b)		; 12 34
	ldy #$12.b		; A0 12
	ora ($60.b)		; 12 60
	ora [$55.b],Y		; 17 55
	sbc $F8FE.w,X		; FD FE F8
	phd		; 0B
.INDEX 8
	sep #$98		; E2 98
	and $82.b		; 25 82
	sed		; F8
	and $D2.b		; 25 D2
	sed		; F8
	phd		; 0B
	stx $A0.b		; 86 A0
	tsb $7090.w		; 0C 90 70
	eor $0003.w,X		; 5D 03 00
	ora [$00.b]		; 07 00
	sbc $F4AEFF.l,X		; FF FF AE F4
	adc $CDC4.w,X		; 7D C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $80DF00.l,X		; 5F 00 DF 80
	sbc $E0F740.l		; EF 40 F7 E0
	sbc $010FFF.l,X		; FF FF 0F 01
	and $334F03.l,X		; 3F 03 4F 33
	lda $BF7F5F.l,X		; BF 5F 7F BF
	sbc $1FBF3F.l,X		; FF 3F BF 1F
	ora $F0C70F.l,X		; 1F 0F C7 F0
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	jsr ($D254.w,X)		; FC 54 D2
	ora [$03.b]		; 07 03
	clc		; 18
	ora $4B088F.l,X		; 1F 8F 08 4B
	brk $55.b		; 00 55
	brk $AA.b		; 00 AA
	jsr ($00AB.w,X)		; FC AB 00
	sbc $FEFFFF.l,X		; FF FF FF FE
	xce		; FB
	ora [$CF.b]		; 07 CF
	and [$8F.b],Y		; 37 8F
	sta [$1D.b]		; 87 1D
	clc		; 18
	and [$20.b],Y		; 37 20
	cmp $40DF40.l		; CF 40 DF 40
	sta $801C31.l		; 8F 31 1C 80
	sbc [$EC.b],Y		; F7 EC
	adc $FF02FC.l,X		; 7F FC 02 FF
	ora $C4FC70.l		; 0F 70 FC C4
	inc $FF7F.w,X		; FE 7F FF
	sbc $FD2AAA.l,X		; FF AA 2A FD
	sbc $FF.b,X		; F5 FF
	sei		; 78
	txs		; 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$D5.b		; E0 D5
	brk $FA.b		; 00 FA
	sec		; 38
	ror $FA.b		; 66 FA
	cpx #$FF.b		; E0 FF
	beq -27.b		; F0 E5
	inc $BAE0.w,X		; FE E0 BA
	eor $E30AA0.l		; 4F A0 0A E3
	jsr ($AA36.w,X)		; FC 36 AA
	cmp [$81.b]		; C7 81
	sbc $ED297E.l,X		; FF 7E 29 ED
	ldy #$F5.b		; A0 F5
	ldx #$C0.b		; A2 C0
	stz $80FF.w,X		; 9E FF 80
	bra  -3.b		; 80 FD
	ora $E1.b,X		; 15 E1
	stz $2828.w,X		; 9E 28 28
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$80.b		; C9 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$C2.b],Y		; D7 C2
	ora $800580.l,X		; 1F 80 05 80
	lda [$90.b],Y		; B7 90
	adc $A0F750.l,X		; 7F 50 F7 A0
	adc $8087A7.l		; 6F A7 87 80
	sbc $7FEC80.l		; EF 80 EC 7F
	ora $FC07BF.l		; 0F BF 07 FC
	ora ($22.b),Y		; 11 22
	sbc $FC801F.l,X		; FF 1F 80 FC
	sbc $1605A0.l		; EF A0 05 16
	eor ($01.b)		; 52 01
	jsr ($FEB2.w,X)		; FC B2 FE
	sed		; F8
	ora ($7E.b)		; 12 7E
	sed		; F8
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $620E.w,X		; 5E 0E 62
	xce		; FB
	ply		; 7A
	sbc $E1F001.l,X		; FF 01 F0 E1
	sbc ($66.b),Y		; F1 66
	brk $F0.b		; 00 F0
	ora $FA708F.l		; 0F 8F 70 FA
	sbc $F102.w,X		; FD 02 F1
	cmp [$FB.b]		; C7 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	adc [$40.b]		; 67 40
	ora $9E382A.l,X		; 1F 2A 38 9E
	lda $80DFFC.l,X		; BF FC DF 80
	inc $7F0F.w		; EE 0F 7F
	sta $266609.l,X		; 9F 09 66 26
	jsr ($FF9C.w,X)		; FC 9C FF
	cld		; D8
	tsx		; BA
	bra 127.b		; 80 7F
	eor ($C0.b,X)		; 41 C0
	sbc ($02.b,S),Y		; F3 02
	sbc [$05.b],Y		; F7 05
	sbc $FF08.w		; ED 08 FF
	sbc [$82.b]		; E7 82
	sbc $FD252A.l,X		; FF 2A 25 FD
	plx		; FA
	xce		; FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $027FF3.l,X		; FF F3 7F 02
	tda		; 7B
	bvs 125.b		; 70 7D
	pha		; 48
	ora $405F00.l		; 0F 00 5F 40
	cpy #$FC.b		; C0 FC
	jmp ($D440.w,X)		; 7C 40 D4
	sta [$FF.b]		; 87 FF
	sta $BF.b,S		; 83 BF
	cmp $FD.b,S		; C3 FD
	ora $83.b		; 05 83
	ldy $21FC.w,X		; BC FC 21
	jsr ($71FC.w,X)		; FC FC 71
	jsr ($C706.w,X)		; FC 06 C7
	tas		; 1B
	dec $F862.w,X		; DE 62 F8
	tsb $01FE.w		; 0C FE 01
	cpx #$FE.b		; E0 FE
	ora ($87.b,X)		; 01 87
	dec $A0BB.w		; CE BB A0
	adc $E4.b		; 65 E4
	sed		; F8
	asl A		; 0A
	cmp $30CF6F.l,X		; DF 6F CF 30
	lda $9B7F47.l,X		; BF 47 7F 9B
	cpx #$FE.b		; E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F824E1.l		; 0F E1 24 F8
	ora $3C40.w		; 0D 40 3C
	jsr ($FF80.w,X)		; FC 80 FF
	tay		; A8
	eor [$9B.b],Y		; 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($D0.b)		; 32 D0
	sbc $A0.b,X		; F5 A0
	.db $42, $3F		; 42 3F
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	asl A		; 0A
	lda $F1E04F.l,X		; BF 4F E0 F1
	lsr $C1F3.w,X		; 5E F3 C1
	brk $87.b		; 00 87
	dec $0A.b		; C6 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $0FFEE4.l		; 6F E4 FE 0F
	jsr ($1808.w,X)		; FC 08 18
	ora $FA.b,S		; 03 FA
	clc		; 18
	sbc $0A0BC7.l,X		; FF C7 0B 0A
	inc $AA1F.w		; EE 1F AA
	sed		; F8
	phd		; 0B
	dex		; CA
	tsb $FC.b		; 04 FC
	sbc $20FEFE.l,X		; FF FE FE 20
	jmp $01FCFE.l		; 5C FE FC 01
	lsr $F481.w,X		; 5E 81 F4
	cop $EB.b		; 02 EB
	cpx #$FF.b		; E0 FF
	inc $E1FC.w,X		; FE FC E1
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $BF8860.l,X		; 5F 60 88 BF
	bra -31.b		; 80 E1
	eor $7F.b,S		; 43 7F
	bra -94.b		; 80 A2
	phk		; 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	and $018F.w,Y		; 39 8F 01
	txs		; 9A
	inc $EB.b		; E6 EB
	inc $F764.w,X		; FE 64 F7
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	sbc ($A3.b),Y		; F1 A3
	inc A		; 1A
	jsr ($00F5.w,X)		; FC F5 00
	tsx		; BA
	ora ($E0.b,X)		; 01 E0
	sta [$5F.b],Y		; 97 5F
	clv		; B8
	sbc $FFFCFD.l,X		; FF FD FC FF
	xce		; FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	cpx $4559.w		; EC 59 45
	sbc $F880FF.l,X		; FF FF 80 F8
	asl A		; 0A
	tax		; AA
	sbc $D4FC55.l,X		; FF 55 FC D4
	jsr ($15D6.w,X)		; FC D6 15
	jsr ($F020.w,X)		; FC 20 F0
	ora $FEE0.w		; 0D E0 FE
	inc $AEFE.w,X		; FE FE AE
	nop		; EA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	tsb $05.b		; 04 05
	stz $E0.b,X		; 74 E0
	sed		; F8
	ora #$E2.b		; 09 E2
	inc A		; 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$E2.b		; 09 E2
	ldx $6B.b		; A6 6B
	pea $BFE0.w		; F4 E0 BF
	dec $F1.b		; C6 F1
	plp		; 28
	nop		; EA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	ora $90BF5F.l		; 0F 5F BF 90
	sbc $A100.w,X		; FD 00 A1
	sbc ($D7.b,X)		; E1 D7
	bit $F1.b		; 24 F1
	dex		; CA
	sbc $1EE1FF.l,X		; FF FF E1 1E
	cmp $82AA2F.l,X		; DF 2F AA 82
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	php		; 08
	plb		; AB
	rol A		; 2A
	sbc $030BF8.l,X		; FF F8 0B 03
	ora $E0.b,S		; 03 E0
	sed		; F8
	tsb $FD5E.w		; 0C 5E FD
	sbc $C00BF8.l,X		; FF F8 0B C0
	sed		; F8
	asl $FD68.w		; 0E 68 FD
	cpx #$F8.b		; E0 F8
	asl $2D7C.w		; 0E 7C 2D
	bit $FB.b		; 24 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $640AF0.l,X		; BF F0 0A 64
	sbc ($DB.b),Y		; F1 DB
	lsr $ED.b,X		; 56 ED
	cmp ($AF.b,S),Y		; D3 AF
	cpx #$FE.b		; E0 FE
	beq   1.b		; F0 01
	inc $01.b		; E6 01
	cpx $6803.w		; EC 03 68
	inc $7F.b		; E6 7F
	eor $FF.b,X		; 55 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$FF.b		; 09 FF
	sbc $ED7F.w,X		; FD 7F ED
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	asl $04.b		; 06 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $FC03.w,X		; FE 03 FC
	ora [$FB.b]		; 07 FB
	sbc [$F9.b],Y		; F7 F9
	ora [$FB.b]		; 07 FB
	cpx #$FE.b		; E0 FE
	beq -16.b		; F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	bmi -17.b		; 30 EF
	beq  15.b		; F0 0F
	eor [$55.b]		; 47 55
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $CE81.w,Y		; F9 81 CE
	clv		; B8
	sta ($6C.b),Y		; 91 6C
	dey		; 88
	ora ($B2.b),Y		; 11 B2
	pla		; 68
	ora $46B6.w		; 0D B6 46
	eor $AD.b,X		; 55 AD
	mvn $2B,$B0		; 54 B0 2B
	stx CGWSEL.w		; 8E 30 21
	sbc $D133F8.l,X		; FF F8 33 D1
	bvs  29.b		; 70 1D
	sbc ($78.b),Y		; F1 78
	ora [$3A.b],Y		; 17 3A
	iny		; C8
	phd		; 0B
	stx $FE.b		; 86 FE
	sed		; F8
	bit $AA.b		; 24 AA
	tax		; AA
	bvs  16.b		; 70 10
	jsr $1832.w		; 20 32 18
	ora $16182C.l,X		; 1F 2C 18 16
	bra  16.b		; 80 10
	ora [$98.b],Y		; 17 98
	beq  33.b		; F0 21
	jsr $29F0.w		; 20 F0 29
	pha		; 48
	beq  11.b		; F0 0B
	rol $3C.b,X		; 36 3C
	tax		; AA
	tax		; AA
	inc $3CFE.w,X		; FE FE 3C
	sec		; 38
	eor $06.b,X		; 55 06
	pha		; 48
	eor $AE.b		; 45 AE
	sed		; F8
	and $0A.b,S		; 23 0A
	inx		; E8
	eor #$02.b		; 49 02
	bra  29.b		; 80 1D
	dey		; 88
	inx		; E8
	pld		; 2B
	bpl -88.b		; 10 A8
	tad		; 5B
	tax		; AA
	eor $EC.b,X		; 55 EC
	sed		; F8
	phd		; 0B
	lda ($E0.b)		; B2 E0
	eor $DA.b,S		; 43 DA
	tay		; A8
	ora ($94.b,S),Y		; 13 94
	tay		; A8
	and ($D8.b,S),Y		; 33 D8
	dec $FE41.w,X		; DE 41 FE
	sed		; F8
	asl A		; 0A
	ora $AB88.w		; 0D 88 AB
	.db $42, $A0		; 42 A0
	eor ($AB.b,X)		; 41 AB
	eor $BE.b,X		; 55 BE
	nop		; EA
	php		; 08
	inx		; E8
	bcc  16.b		; 90 10
	rol $88.b		; 26 88
	sta $0CD8A0.l		; 8F A0 D8 0C
	bra  -2.b		; 80 FE
	sed		; F8
	tsb $A058.w		; 0C 58 A0
	bpl  64.b		; 10 40
	ldy #$0F.b		; A0 0F
	eor $55.b,X		; 55 55
	cpx $E8.b		; E4 E8
	pld		; 2B
	sty $80.b,X		; 94 80
	phk		; 4B
	lda ($D8.b)		; B2 D8
	eor ($F2.b),Y		; 51 F2
	inx		; E8
	eor [$EA.b]		; 47 EA
	beq  13.b		; F0 0D
	sta ($F0.b)		; 92 F0
	ora [$C8.b],Y		; 17 C8
	bcc  45.b		; 90 2D
	inc $50FE.w,X		; FE FE 50
	eor $AA.b,X		; 55 AA
	rol $15D0.w,X		; 3E D0 15
	jmp.w [$2148]		; DC 48 21
	clc		; 18
	sec		; 38
	ora $C2.b,X		; 15 C2
	sed		; F8
	ora $E65E.w		; 0D 5E E6
	adc $68.b		; 65 68
	sta $55.b,S		; 83 55
	eor $78.b,X		; 55 78
	clv		; B8
	ora $8888.w,X		; 1D 88 88
	ora $83202A.l		; 0F 2A 20 83
	sbc $0CE1F8.l,X		; FF F8 E1 0C
	cld		; D8
	and ($C2.b,X)		; 21 C2
	cpy #$1F.b		; C0 1F
	bcs -48.b		; B0 D0
	and ($C2.b),Y		; 31 C2
	mvn $5D,$55		; 54 55 5D
	inc A		; 1A
	bpl  25.b		; 10 19
	eor ($E8.b),Y		; 51 E8
	rol $78C8.w		; 2E C8 78
	ora ($B6.b,S),Y		; 13 B6
	sei		; 78
	tad		; 5B
	nop		; EA
	bne  72.b		; D0 48
	ror $C0.b		; 66 C0
	asl $0640.w		; 0E 40 06
	inc $13F8.w,X		; FE F8 13
	eor $55.b,X		; 55 55
	clv		; B8
	tay		; A8
	bit $FE.b		; 24 FE
	sed		; F8
	lsr $F880.w		; 4E 80 F8
	rol A		; 2A
	jmp ($1968.w,X)		; 7C 68 19
	lda ($C8.b)		; B2 C8
	ora ($72.b,S),Y		; 13 72
	bcs  27.b		; B0 1B
	bcs  96.b		; B0 60
	sta ($A6.b,X)		; 81 A6
	inx		; E8
	plp		; 28
	eor $55.b,X		; 55 55
	dec $0CF8.w,X		; DE F8 0C
	stz $09A0.w		; 9C A0 09
	inc $0AF8.w,X		; FE F8 0A
	trb $D8.b		; 14 D8
	jsr $F40E.w		; 20 0E F4
	tsb $72F0.w		; 0C F0 72
	.db $42, $98		; 42 98
	and $D8.b		; 25 D8
	clv		; B8
	tsb $5555.w		; 0C 55 55
	php		; 08
	ldx $F6.b,Y		; B6 F6
	jsr ($E840.w,X)		; FC 40 E8
	asl A		; 0A
	adc $2390.w		; 6D 90 23
	cmp ($A0.b,S),Y		; D3 A0
	bit $C826.w,X		; 3C 26 C8
	ora $24.b,X		; 15 24
	cmp #$2C.b		; C9 2C
	tya		; 98
	ora $205555.l		; 0F 55 55 20
	cpx #$6E.b		; E0 6E
	sty $2918.w		; 8C 18 29
	bit $32E8.w,X		; 3C E8 32
	and ($D8.b)		; 32 D8
	lsr A		; 4A
	tsx		; BA
	cpx #$20.b		; E0 20
	ldx $5AF0.w,Y		; BE F0 5A
	stx $F8.b,Y		; 96 F8
	ora #$D4.b		; 09 D4
	tya		; 98
	phd		; 0B
	eor $55.b,X		; 55 55
	inc $1CFE.w,X		; FE FE 1C
	cpx #$23.b		; E0 23
	inc $80.b		; E6 80
	and $A0E4.w,X		; 3D E4 A0
	tas		; 1B
	inc $2DA8.w,X		; FE A8 2D
	ldy $23F8.w		; AC F8 23
	sbc $56FCF8.l,X		; FF F8 FC 56
	clc		; 18
	jsr ($D555.w,X)		; FC 55 D5
	sbc ($30.b)		; F2 30
	ora [$0A.b],Y		; 17 0A
	bne  24.b		; D0 18
	rol A		; 2A
	inx		; E8
	tas		; 1B
	sei		; 78
	sbc ($FF.b,X)		; E1 FF
	sed		; F8
	ora $E068.w		; 0D 68 E0
	eor [$10.b]		; 47 10
	bmi   9.b		; 30 09
	inc $0BF8.w,X		; FE F8 0B
	ror A		; 6A
	eor $45.b,X		; 55 45
	inc $24F8.w,X		; FE F8 24
	iny		; C8
	sed		; F8
	ora ($3C.b),Y		; 11 3C
	cpy #$0F.b		; C0 0F
	eor #$FE.b		; 49 FE
	sed		; F8
	trb $D4F6.w		; 1C F6 D4
	cpx $F8.b		; E4 F8
	tas		; 1B
	plx		; FA
	clv		; B8
	and $ACD2.w		; 2D D2 AC
	cld		; D8
	bra -12.b		; 80 F4
	pei ($98.b)		; D4 98
	phd		; 0B
	.db $42, $FE		; 42 FE
	cmp $D0.b,S		; C3 D0
	and $AB.b,X		; 35 AB
	tax		; AA
	lsr $D8.b,X		; 56 D8
	and $FE8005.l		; 2F 05 80 FE
	sed		; F8
	inc A		; 1A
	stx $F0.b,Y		; 96 F0
	trb $FE.b		; 14 FE
	sed		; F8
	eor #$E2.b		; 49 E2
	beq  31.b		; F0 1F
	lsr $C0.b,X		; 56 C0
	ora #$B8.b		; 09 B8
	bcc  11.b		; 90 0B
	tax		; AA
	dec A		; 3A
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	inc $0BF8.w,X		; FE F8 0B
	beq -120.b		; F0 88
	tda		; 7B
	ldx $1F80.w,Y		; BE 80 1F
	dec $90E6.w,X		; DE E6 90
	bpl  53.b		; 10 35
	ror $C0.b,X		; 76 C0
	trb $C0.b		; 14 C0
	rti		; 40

	clv		; B8
	inc $DFFE.w		; EE FE DF
	inc $0103.w,X		; FE 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $0102.w,X		; FE 02 01
	inc $FFFC.w,X		; FE FC FF
	adc ($6A.b),Y		; 71 6A
	sbc $F7FFFD.l,X		; FF FD FF F7
	cmp ($FA.b),Y		; D1 FA
	plb		; AB
	lda $CC023B.l		; AF 3B 02 CC
	lsr $2EFE.w		; 4E FE 2E
	plx		; FA
	beq  58.b		; F0 3A
	bit $0F7C.w,X		; 3C 7C 0F
	cmp $FE.b,S		; C3 FE
	stz $9E5C.w		; 9C 5C 9E
	lsr $1EFE.w,X		; 5E FE 1E
	dec $C0FE.w,X		; DE FE C0
	trb $AA.b		; 14 AA
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
	cmp $CEF87F.l,X		; DF 7F F8 CE
	dec $8696.w,X		; DE 96 86
	dec $C6.b,X		; D6 C6
	sbc [$E6.b],Y		; F7 E6
	ror $FF04.w		; 6E 04 FF
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
	lda [$DB.b],Y		; B7 DB
	ora $05.b,S		; 03 05
	bvs  61.b		; 70 3D
	cld		; D8
	asl A		; 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $7008.w,X		; FD 08 70
	inc $F522.w,X		; FE 22 F5
	lda $780CD6.l,X		; BF D6 0C 78
	jmp ($0FF0.w,X)		; 7C F0 0F
	inc $FDF1.w,X		; FE F1 FD
	brk $30.b		; 00 30
	cpy #$FC.b		; C0 FC
	beq -124.b		; F0 84
	sed		; F8
	dec $61.b		; C6 61
	inc $AAF7.w,X		; FE F7 AA
	rti		; 40

	inc $C060.w,X		; FE 60 C0
	inc $E070.w,X		; FE 70 E0
	bpl  96.b		; 10 60
	inc $AAE8.w,X		; FE E8 AA
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ldy #$40.b		; A0 40
	clc		; 18
	cpy #$FE.b		; C0 FE
	bcc  96.b		; 90 60
	inc $B8AE.w,X		; FE AE B8
	jsr ($8023.w,X)		; FC 23 80
	ora $FC0A07.l		; 0F 07 0A FC
	inc $0FF6.w,X		; FE F6 0F
	beq   8.b		; F0 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $FC07.w		; 0C 07 FC
	inc $38D5.w,X		; FE D5 38
	sbc $FE0E1F.l		; EF 1F 0E FE
	inc $F7.b		; E6 F7
	ldx $B7.b		; A6 B7
	ldx $F7FE.w		; AE FE F7
	ldx $BF.b,Y		; B6 BF
	cmp [$E8.b]		; C7 E8
	inc $FFFF.w,X		; FE FF FF
	ora ($0A.b),Y		; 11 0A
	eor $FAFE.w,Y		; 59 FE FA
	jsr ($300F.w,X)		; FC 0F 30
	ora $FEC7.w		; 0D C7 FE
	sta $AAFE47.l		; 8F 47 FE AA
	eor [$57.b],Y		; 57 57
	bra  -4.b		; 80 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	sta [$21.b]		; 87 21
	inc $04FC.w,X		; FE FC 04
	jsr ($B57A.w,X)		; FC 7A B5
	jsr ($FB00.w,X)		; FC 00 FB
	eor $C1.b,X		; 55 C1
	ora ($80.b,X)		; 01 80
	sta ($FE.b,X)		; 81 FE
	jsr ($F454.w,X)		; FC 54 F4
	phy		; 5A
	sbc ($80.b),Y		; F1 80
	sbc $FCFE7F.l,X		; FF 7F FE FC
	bvs  96.b		; 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	sty $0E0F.w		; 8C 0F 0E
	bne  -2.b		; D0 FE
	cld		; D8
	sed		; F8
	plp		; 28
	sed		; F8
	lda $C8FFD2.l		; AF D2 FF C8
	sed		; F8
	php		; 08
	sed		; F8
	and #$98.b		; 29 98
	ora $FEFE08.l		; 0F 08 FE FE
	inc $7C0C.w,X		; FE 0C 7C
	lsr $7E7B.w		; 4E 7B 7E
	inc $5EFE.w,X		; FE FE 5E
	eor $FC820C.l,X		; 5F 0C 82 FC
	inc $A1FE.w,X		; FE FE A1
	inc $CC02.w,X		; FE 02 CC
	ldy $FF.b,X		; B4 FF
	ora $FE.b,S		; 03 FE
	sbc $220606.l,X		; FF 06 06 22
	lsr $07.b,X		; 56 07
	nop		; EA
	cpx #$EA.b		; E0 EA
	inc $0578.w,X		; FE 78 05
	cpy #$F6.b		; C0 F6
	phb		; 8B
	eor $F01875.l		; 4F 75 18 F0
	sed		; F8
	clc		; 18
	ror $B8.b		; 66 B8
	asl $FEF1.w		; 0E F1 FE
	sei		; 78
	beq  -2.b		; F0 FE
	jmp ($86F8.w,X)		; 7C F8 86
	ora $FCFEFE.l,X		; 1F FE FE FC
	inc $EAEB.w,X		; FE EB EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs -122.b		; 70 86
	adc ($FE.b,X)		; 61 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	inc $FE15.w,X		; FE 15 FE
	bpl  94.b		; 10 5E
	inc $F2AC.w,X		; FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $FCFE0F.l,X		; 1F 0F FE FC
	adc #$FF.b		; 69 FF
	ldy $FEF2.w		; AC F2 FE
	bpl  15.b		; 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $BFFF.w,X		; FD FF BF
	mvn $FE,$FF		; 54 FF FE
	sbc $FDDE.w,X		; FD DE FD
	lda $EDFE.w		; AD FE ED
	inc $FF5F.w,X		; FE 5F FF
	tas		; 1B
	sbc $0FF013.l,X		; FF 13 F0 0F
	stz $FCF1.w		; 9C F1 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $BD.b,S		; 43 BD
	tsx		; BA
	inc $FE6B.w,X		; FE 6B FE
	sbc $FC4367.l,X		; FF 67 43 FC
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($EE.b,X)		; C1 EE
	pea $FCFE.w		; F4 FE FC
	tay		; A8
	inc $01.b,X		; F6 01
	cpy #$FE.b		; C0 FE
	jsr ($F0F8.w,X)		; FC F8 F0
	inc $C0C8.w,X		; FE C8 C0
	bit $FA5F.w,X		; 3C 5F FA
	bmi -12.b		; 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $FEF1.w		; AE F1 FE
	sec		; 38
	sed		; F8
	cpy $18FC.w		; CC FC 18
	mvn $FE,$0C		; 54 0C FE
	tsb $FE.b		; 04 FE
	ldx #$F0.b		; A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	sbc $EA9A7F.l,X		; FF 7F 9A EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	clc		; 18
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	lda ($FE.b,X)		; A1 FE
	inc $FEA9.w,X		; FE A9 FE
	inc $BFB9.w,X		; FE B9 BF
	sbc $06FE81.l,X		; FF 81 FE 06
	sbc $0D0AF8.l,X		; FF F8 0A 0D
	ora $0D0F.w		; 0D 0F 0D
	ora $03.b		; 05 03
	sta $FE.b,S		; 83 FE
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	dec $D8.b,X		; D6 D8
	ora $0FD8C7.l		; 0F C7 D8 0F
	xba		; EB
	nop		; EA
	lda $3FFBAA.l,X		; BF AA FB 3F
	jmp ($AFBE.w,X)		; 7C BE AF
	sty $9F.b,X		; 94 9F
	txa		; 8A
	plx		; FA
	xce		; FB
	inc $EBFB.w,X		; FE FB EB
	ora $FE.b,X		; 15 FE
	eor $FC.b,X		; 55 FC
	clv		; B8
	inc $FE7F.w,X		; FE 7F FE
	adc $FE.b,X		; 75 FE
	ora $FE.b		; 05 FE
	trb $FF.b		; 14 FF
	adc ($FC.b,X)		; 61 FC
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	inc $8A2A.w,X		; FE 2A 8A
	ldx $F99E.w,Y		; BE 9E F9
	beq  17.b		; F0 11
	asl $0FFE.w		; 0E FE 0F
	lda ($1F.b),Y		; B1 1F
	inc $1FB5.w,X		; FE B5 1F
	lda ($D3.b,X)		; A1 D3
	sbc $DECD1F.l,X		; FF 1F CD DE
	inc $DEED.w,X		; FE ED DE
	iny		; C8
	plx		; FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $805B.w		; EC 5B 80
	phx		; DA
	and ($FF.b,S),Y		; 33 FF
	inc $37FC.w,X		; FE FC 37
	ldy $D9.b,X		; B4 D9
	jsr ($02FE.w,X)		; FC FE 02
	brk $65.b		; 00 65
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6D.b		; 00 6D
	plb		; AB
	brk $FF.b		; 00 FF
	sed		; F8
	and $F8FE02.l,X		; 3F 02 FE F8
	inc A		; 1A
	asl $FE.b		; 06 FE
	sed		; F8
	rol $46.b		; 26 46
	inc $10F8.w,X		; FE F8 10
	pei ($F8.b)		; D4 F8
	and #$5A.b		; 29 5A
	plb		; AB
	stz $27F8.w		; 9C F8 27
	txs		; 9A
	sed		; F8
	ora ($C0.b,S),Y		; 13 C0
	sed		; F8
	tas		; 1B
	stx $FE.b		; 86 FE
	sed		; F8
	trb $D2.b		; 14 D2
	sed		; F8
	asl $80.b,X		; 16 80
	inc $26F8.w,X		; FE F8 26
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	trb $FA.b		; 14 FA
	lda $F0BE.w		; AD BE F0
	tas		; 1B
	inc $3BF8.w,X		; FE F8 3B
	ldx #$04FC.w		; A2 FC 04
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	inc $41FD.w,X		; FE FD 41
	inc $1AF8.w,X		; FE F8 1A
	tax		; AA
	lda $DC.b,X		; B5 DC
	inc $F8FE.w,X		; FE FE F8
	ora $41F8FF.l		; 0F FF F8 41
	ldx $F8.b		; A6 F8
	ora [$FE.b],Y		; 17 FE
	sed		; F8
	and [$09.b]		; 27 09
	inc $1CF8.w,X		; FE F8 1C
	lsr $30F8.w,X		; 5E F8 30
	rti		; 40

	.db $42, $2D		; 42 2D
	inc $16F8.w,X		; FE F8 16
	jsr $78F8.w		; 20 F8 78
	inc $FE05.w,X		; FE 05 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	phd		; 0B
	tsb $FE.b		; 04 FE
	sed		; F8
	tsb $1A19.w		; 0C 19 1A
	inc $F21C.w		; EE 1C F2
	php		; 08
	inc $FE40.w,X		; FE 40 FE
	sed		; F8
	ora $09.b,X		; 15 09
	tsb $AD.b		; 04 AD
	inc $E8F4.w,X		; FE F4 E8
	asl A		; 0A
	cld		; D8
	sbc $2A8BF8.l,X		; FF F8 8B 2A
	cpx #$0A55.w		; E0 55 0A
	inc $10F8.w,X		; FE F8 10
	ldy $E2B5.w		; AC B5 E2
	sbc ($FE.b),Y		; F1 FE
	ror $E8.b		; 66 E8
	ora $F59E.w,X		; 1D 9E F5
	rti		; 40

	inc $0CF8.w,X		; FE F8 0C
	lsr $32F0.w,X		; 5E F0 32
	eor $56.b		; 45 56
	eor $FE.b,X		; 55 FE
	sed		; F8
	asl $CE.b,X		; 16 CE
	sed		; F8
	ora $FE85.w,Y		; 19 85 FE
	sed		; F8
	bpl -34.b		; 10 DE
	sed		; F8
	ora $0FD898.l		; 0F 98 D8 0F
	ldx $41E0.w		; AE E0 41
	inc $1BF8.w,X		; FE F8 1B
	bvc -16.b		; 50 F0
	adc $B325.w		; 6D 25 B3
	inc $13F8.w,X		; FE F8 13
	inc A		; 1A
	inx		; E8
	ora $F4FE.w		; 0D FE F4
	iny		; C8
	ora $FE42.w		; 0D 42 FE
	tax		; AA
	tax		; AA
	eor $F448D8.l,X		; 5F D8 48 F4
	inx		; E8
	ora [$FE.b],Y		; 17 FE
	sed		; F8
	asl $D6.b,X		; 16 D6
	beq  25.b		; F0 19
	jmp ($43C8.w)		; 6C C8 43
	tsb $11F8.w		; 0C F8 11
	ora ($FC.b)		; 12 FC
	asl $51F8.w		; 0E F8 51
	tax		; AA
	tax		; AA
	tsb $F8.b		; 04 F8
	ora ($2E.b),Y		; 11 2E
	inx		; E8
	eor [$4C.b]		; 47 4C
	cld		; D8
	ora ($36.b),Y		; 11 36
	cpy #$1413.w		; C0 13 14
	sed		; F8
	ora ($24.b),Y		; 11 24
	beq   9.b		; F0 09
	trb $F8.b		; 14 F8
	eor $D856.w,Y		; 59 56 D8
	sta [$0A.b]		; 87 0A
	lda $D858.w		; AD 58 D8
	ora ($FE.b),Y		; 11 FE
	sed		; F8
	ora $29F8A4.l,X		; 1F A4 F8 29
	sbc $E01808.l,X		; FF 08 18 E0
	and ($40.b,X)		; 21 40
	inc $16F8.w,X		; FE F8 16
	tax		; AA
	tax		; AA
	asl $B8.b,X		; 16 B8
	phy		; 5A
	sbc $EA5DF8.l,X		; FF F8 5D EA
	bne  93.b		; D0 5D
	.db $62, $B8, $1B		; 62 B8 1B
	lsr $11D8.w,X		; 5E D8 11
	inc $31F8.w,X		; FE F8 31
	sbc $BE4DF8.l,X		; FF F8 4D BE
	cld		; D8
	ora $AA92.w		; 0D 92 AA
	inc $1DF8.w,X		; FE F8 1D
	sta ($D0.b)		; 92 D0
	ora ($FE.b),Y		; 11 FE
	.db $82, $F0, $61		; 82 F0 61
	pha		; 48
	tay		; A8
	ora $AC44.w,X		; 1D 44 AC
	stx $E8.b		; 86 E8
	and $AA.b,X		; 35 AA
	tax		; AA
	.db $62, $E0, $41		; 62 E0 41
	bne -40.b		; D0 D8
	sta ($5A.b),Y		; 91 5A
	beq  21.b		; F0 15
	jmp $31F0.w		; 4C F0 31
	rts		; 60

	cld		; D8
	eor ($44.b),Y		; 51 44
	inx		; E8
	eor $B9D8EE.l		; 4F EE D8 B9
	cpy #$1B88.w		; C0 88 1B
	tax		; AA
	tax		; AA
	ldy $88.b,X		; B4 88
	tas		; 1B
	sty $2F88.w		; 8C 88 2F
	jmp $06B5D0.l		; 5C D0 B5 06
	iny		; C8
	and $CC04.w,Y		; 39 04 CC
	cpx #$71E8.w		; E0 E8 71
	txs		; 9A
	clv		; B8
	sta ($0A.b),Y		; 91 0A
	sed		; F8
	phk		; 4B
	tax		; AA
	lda ($80.b)		; B2 80
	bne  33.b		; D0 21
	dex		; CA
	dey		; 88
	ora ($36.b,S),Y		; 13 36
	pla		; 68
	ora $098866.l,X		; 1F 66 88 09
	cmp ($A6.b)		; D2 A6
	jsr ($09A8.w,X)		; FC A8 09
	rti		; 40

	inc $A417.w,X		; FE 17 A4
	sei		; 78
	jmp $FFFF.w		; 4C FF FF
	ora $0F0F00.l,X		; 1F 00 0F 0F
	beq 112.b		; F0 70
	sbc $FFFF03.l,X		; FF 03 FF FF
	sbc $F1C00E.l,X		; FF 0E C0 F1
	beq  15.b		; F0 0F
	sbc $10FDE7.l,X		; FF E7 FD 10
	ora [$FE.b],Y		; 17 FE
	sbc $DAFC.w,X		; FD FC DA
	bra -128.b		; 80 80
	cpx #$09F8.w		; E0 F8 09
	rts		; 60

	and ($D4.b,X)		; 21 D4
	nop		; EA
	bra 127.b		; 80 7F
	cpx #$09F8.w		; E0 F8 09
	sbc $03A07F.l,X		; FF 7F A0 03
	sbc ($F7.b)		; F2 F7
	sbc $7F09F8.l,X		; FF F8 09 7F
	bra -15.b		; 80 F1
	sbc $BC46.w,Y		; F9 46 BC
	inc $FCFE.w,X		; FE FE FC
	ora $87.b,S		; 03 87
	ror $F0B5.w,X		; 7E B5 F0
	ora $FAC63F.l		; 0F 3F C6 FA
	ora [$FE.b],Y		; 17 FE
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $FFFC5F.l,X		; 7F 5F FC FF
	and $0BF8E2.l,X		; 3F E2 F8 0B
	sbc ($1F.b,X)		; E1 1F
	sta $AAC0FE.l,X		; 9F FE C0 AA
	adc $E201FE.l,X		; 7F FE 01 E2
	ora $80BE57.l,X		; 1F 57 BE 80
	cld		; D8
	cmp [$FF.b]		; C7 FF
	sei		; 78
	sbc $80.b,S		; E3 80
	cmp $F609F8.l,X		; DF F8 09 F6
	sbc ($F0.b,X)		; E1 F0
.INDEX 8
	sep #$1F		; E2 1F
	jsr ($FFAB.w,X)		; FC AB FF
	eor $FDE696.l,X		; 5F 96 E6 FD
	ora $81D9.w,Y		; 19 D9 81
	sbc ($E0.b,S),Y		; F3 E0
	inc $FD32.w		; EE 32 FD
	sbc $C33F02.l,X		; FF 02 3F C3
	rol A		; 2A
	tda		; 7B
	brk $C2.b		; 00 C2
	ora $F87CFE.l,X		; 1F FE 7C F8
	ora #$FC8A.w		; 09 8A FC
	sbc $0409F8.l,X		; FF F8 09 04
	bpl  96.b		; 10 60
	and $E00A8A.l,X		; 3F 8A 0A E0
	sed		; F8
	asl A		; 0A
	iny		; C8
	sta ($8A.b,S),Y		; 93 8A
	asl $FF.b,X		; 16 FF
	inc $E0FF.w,X		; FE FF E0
	sbc $2C.b,S		; E3 2C
	php		; 08
	ldx $E0.b		; A6 E0
	sbc $FFFDA6.l,X		; FF A6 FD FF
	sed		; F8
	asl A		; 0A
	sta $EA.b,S		; 83 EA
	rti		; 40

	ora $9826FE.l		; 0F FE 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $3020.w,X		; 1E 20 30
	adc $D3.b,X		; 75 D3
	ldy #$F8.b		; A0 F8
	ora #$CAF6.w		; 09 F6 CA
	inc $CBE5.w,X		; FE E5 CB
	sbc ($0F.b),Y		; F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	cpx #$C0.b		; E0 C0
	pea $27E4.w		; F4 E4 27
	sed		; F8
	ora $BF30.w		; 0D 30 BF
	rti		; 40

	rti		; 40

	inc $E6E6.w,X		; FE E6 E6
	cmp $F48F91.l,X		; DF 91 8F F4
	lda ($00.b),Y		; B1 00
	lda $22DF00.l		; AF 00 DF 22
	sbc ($E7.b,X)		; E1 E7
	ora $075F.w,Y		; 19 5F 07
	lda $20.b		; A5 20
	lda $29BF4F.l,X		; BF 4F BF 29
	sbc $F1.b,S		; E3 F1
	stx $F8.b		; 86 F8
	ora #$B29E.w		; 09 9E B2
	bvs -57.b		; 70 C7
	cpx #$F0.b		; E0 F0
	tsb $A660.w		; 0C 60 A6
	sbc $FC.b,X		; F5 FC
	cmp $2B.b,X		; D5 2B
	pld		; 2B
	plp		; 28
	bpl 119.b		; 10 77
	asl $F8E2.w		; 0E E2 F8
	ora $CACE.w		; 0D CE CA
	inc $DE17.w,X		; FE 17 DE
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
	ror $FE.b		; 66 FE
	pea $0018.w		; F4 18 00
	sbc $30FC.w,Y		; F9 FC 30
	inc $FF7C.w,X		; FE 7C FF
	jsr ($1974.w,X)		; FC 74 19
	sbc ($76.b),Y		; F1 76
	sbc $6BE0F1.l,X		; FF F1 E0 6B
	cpy #$E7.b		; C0 E7
	ldy #$DB.b		; A0 DB
	bvc  61.b		; 50 3D
	jsr $E047.w		; 20 47 E0
	ora #$FF06.w		; 09 06 FF
	sta [$17.b]		; 87 17
	ora #$172F.w		; 09 2F 17
	adc $24DF1F.l		; 6F 1F DF 24
	and $BFFFC3.l,X		; 3F C3 FF BF
	cpx #$03.b		; E0 03
	phy		; 5A
	lda $2C9F00.l,X		; BF 00 9F 2C
	inx		; E8
	sbc [$EF.b],Y		; F7 EF
	adc $1FF2FE.l,X		; 7F FE F2 1F
	rol A		; 2A
	sbc $AA09F8.l,X		; FF F8 09 AA
	eor $55.b,X		; 55 55
	tax		; AA
	jsr ($7F07.w,X)		; FC 07 7F
	beq  13.b		; F0 0D
	sbc $BD0AF8.l,X		; FF F8 0A BD
	and $E0.b,X		; 35 E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	beq -32.b		; F0 E0
	sed		; F8
	ora $E00F.w		; 0D 0F E0
	sed		; F8
	tsb $F15E.w		; 0C 5E F1
	sbc $3BA0A9.l,X		; FF A9 A0 3B
	cpx #$FE.b		; E0 FE
	inx		; E8
	nop		; EA
	cpx #$F8.b		; E0 F8
	ora #$6EA4.w		; 09 A4 6E
	sbc ($FA.b)		; F2 FA
	ora $D7.b,X		; 15 D7
	sbc [$EC.b],Y		; F7 EC
	sbc ($DF.b,S),Y		; F3 DF
	sed		; F8
	ora #$FE0F.w		; 09 0F FE
	jsr ($031C.w,X)		; FC 1C 03
	rol A		; 2A
	xba		; EB
	cpx #$FC.b		; E0 FC
	cop $C8.b		; 02 C8
	tsb $FC.b		; 04 FC
	sbc ($B0.b),Y		; F1 B0
	cpy #$FF.b		; C0 FF
	cmp $47.b,X		; D5 47
	sep #$C0		; E2 C0
	cpx #$F8.b		; E0 F8
	ora #$FCE2.w		; 09 E2 FC
	cpx #$F8.b		; E0 F8
	ora #$0101.w		; 09 01 01
	jsr ($63C0.w,X)		; FC C0 63
	plb		; AB
	ora $C0.b,S		; 03 C0
	sed		; F8
	ora #$D2FE.w		; 09 FE D2
	sbc #$E2E8.w		; E9 E8 E2
	sbc $C0E7FD.l,X		; FF FD E7 C0
	asl $28.b		; 06 28
	mvn $59,$52		; 54 52 59
	beq   9.b		; F0 09
	rol $FFF1.w		; 2E F1 FF
	beq -32.b		; F0 E0
	sed		; F8
	ora #$FCEB.w		; 09 EB FC
	and $55.b		; 25 55
	pei ($E2.b)		; D4 E2
	sbc $FE.b,X		; F5 FE
	lda $9E.b,X		; B5 9E
	inx		; E8
	ora #$FC8B.w		; 09 8B FC
	cpy #$F8.b		; C0 F8
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
	sbc $F740FF.l,X		; FF FF 40 F7
	cpx #$0F.b		; E0 0F
	ora ($3F.b,X)		; 01 3F
	ora $4F.b,S		; 03 4F
	and ($BF.b,S),Y		; 33 BF
	eor $FFBF7F.l,X		; 5F 7F BF FF
	and $F86BBF.l,X		; 3F BF 6B F8
	ora $630F1F.l,X		; 1F 1F 0F 63
	sbc ($5F.b),Y		; F1 5F
	sbc ($54.b)		; F2 54
	cmp ($07.b)		; D2 07
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
	ora $EF5E3F.l		; 0F 3F 5E EF
	ora [$F8.b]		; 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$D5.b		; E0 D5
	brk $FA.b		; 00 FA
	cpy $21E1.w		; CC E1 21
	cmp ($FE.b,S),Y		; D3 FE
	sbc ($FF.b),Y		; F1 FF
	inc $A0E0.w,X		; FE E0 A0
	asl A		; 0A
	php		; 08
	eor $580FE3.l		; 4F E3 0F 58
	cmp [$81.b]		; C7 81
	sbc $1EE57E.l,X		; FF 7E E5 1E
	ldy #$F5.b		; A0 F5
	plp		; 28
	sbc $4D.b,S		; E3 4D
	bra -128.b		; 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	inc $8029.w		; EE 29 80
	phx		; DA
	iny		; C8
	cmp #$80.b		; C9 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $FC.b		; 05 FC
	adc ($80.b),Y		; 71 80
	lda [$90.b],Y		; B7 90
	adc $A0F750.l,X		; 7F 50 F7 A0
	adc $80EF80.l		; 6F 80 EF 80
	ply		; 7A
	bpl -20.b		; 10 EC
	adc $07BF0F.l,X		; 7F 0F BF 07
	jsr ($F19A.w,X)		; FC 9A F1
	jsr $8052.w		; 20 52 80
	jsr ($A0EF.w,X)		; FC EF A0
	eor ($01.b)		; 52 01
	bvc  -8.b		; 50 F8
	jsr ($E0D8.w,X)		; FC D8 E0
	phd		; 0B
	inc $0BF8.w,X		; FE F8 0B
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	sbc ($83.b,X)		; E1 83
	lsr $620E.w,X		; 5E 0E 62
	xce		; FB
	ply		; 7A
	sbc $66F101.l,X		; FF 01 F1 66
	cmp $E3.b,S		; C3 E3
	asl $8FE1.w		; 0E E1 8F
	bvs  -6.b		; 70 FA
	sbc $FB02.w,X		; FD 02 FB
	tsb $E0.b		; 04 E0
	ora [$8F.b]		; 07 8F
	lda ($F7.b),Y		; B1 F7
	rts		; 60

	adc [$40.b]		; 67 40
	ora $FCBF2A.l,X		; 1F 2A BF FC
	cmp $36B267.l,X		; DF 67 B2 36
	nop		; EA
	ora $269F7F.l		; 0F 7F 9F 26
	jsr ($E180.w,X)		; FC 80 E1
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
	adc $E4580A.l		; 6F 0A 58 E4
	inc $D26E.w,X		; FE 6E D2
	bit $18EA.w,X		; 3C EA 18
	sbc $DC2CC7.l,X		; FF C7 2C DC
	ora $FC.b,X		; 15 FC
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	jmp $01FCFE.l		; 5C FE FC 01
	lsr $F481.w,X		; 5E 81 F4
	sta $3F.b		; 85 3F
	cop $EB.b		; 02 EB
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $7C3C60.l,X		; 5F 60 3C 7C
	dey		; 88
	lda $807F80.l,X		; BF 80 7F 80
	ldx #$004B.w		; A2 4B 00
	sta [$00.b],Y		; 97 00
	ldx $4028.w,Y		; BE 28 40
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	inc $F764.w,X		; FE 64 F7
	lda ($8F.b,S),Y		; B3 8F
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	inc A		; 1A
	jsr $00D2.w		; 20 D2 00
	tsx		; BA
	ora ($E0.b,X)		; 01 E0
	ror $97E1.w,X		; 7E E1 97
	sbc $FFFCFD.l,X		; FF FD FC FF
	xce		; FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	nop		; EA
	ldy $4540.w		; AC 40 45
	sbc $C0CCC7.l,X		; FF C7 CC C0
	cld		; D8
	asl A		; 0A
	sbc $D4FC55.l,X		; FF 55 FC D4
	jsr ($2ABA.w,X)		; FC BA 2A
	beq -48.b		; F0 D0
	ora $F320.w		; 0D 20 F3
	cpx #$FEFE.w		; E0 FE FE
	inc $EAAE.w,X		; FE AE EA
	cpx #$0BF8.w		; E0 F8 0B
	cmp $E0DB.w		; CD DB E0
	sbc $3028.w,X		; FD 28 30
.INDEX 8
	sep #$1A		; E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$E2.b		; 09 E2
	pea $855D.w		; F4 5D 85
	cpx #$BF.b		; E0 BF
	dec $F1.b		; C6 F1
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	cpy $CD.b		; C4 CD
	inc $ABEB.w,X		; FE EB AB
	lda ($E1.b,X)		; A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($81.b),Y		; F1 81
	cpx #$09.b		; E0 09
	sbc ($1E.b,X)		; E1 1E
	cmp $FF602F.l,X		; DF 2F 60 FF
	tya		; 98
	sbc ($AA.b)		; F2 AA
	tax		; AA
	bvs  -8.b		; 70 F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	ldy $BED3.w		; AC D3 BE
	cpy #$09.b		; C0 09
	sbc #$DF.b		; E9 DF
	ldy $CE.b		; A4 CE
	tax		; AA
	beq -64.b		; F0 C0
	cpy #$0C.b		; C0 0C
	ldx $0FF8.w,Y		; BE F8 0F
	rts		; 60

	cmp ($68.b),Y		; D1 68
	jsr ($F8E0.w,X)		; FC E0 F8
	asl $FB24.w		; 0E 24 FB
	brk $65.b		; 00 65
	lda $4C.b,X		; B5 4C
	brk $DB.b		; 00 DB
	lda $640AF0.l,X		; BF F0 0A 64
	sbc ($DB.b),Y		; F1 DB
	lsr $ED.b,X		; 56 ED
	cpx #$5F.b		; E0 5F
	sbc $F0FE.w,X		; FD FE F0
	ora ($E6.b,X)		; 01 E6
	ora ($EC.b,X)		; 01 EC
	inc $D2.b,X		; F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	plb		; AB
	plx		; FA
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$7F.b		; 09 7F
	sbc $0101.w		; ED 01 01
	cop $EF.b		; 02 EF
	cmp $040602.l,X		; DF 02 06 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $FC03.w,X		; FE 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FB.b]		; 07 FB
	cpx #$FE.b		; E0 FE
	lda $F0F03F.l,X		; BF 3F F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	bmi -17.b		; 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $B5AA.w,Y		; F9 AA B5
	sta ($D6.b,X)		; 81 D6
	rti		; 40

	sta $1DB074.l		; 8F 74 B0 1D
	sbc $8029F8.l,X		; FF F8 29 80
	inc $12F8.w,X		; FE F8 12
	ldy $90.b,X		; B4 90
	pha		; 48
	bra  90.b		; 80 5A
	lda $F8FE.w		; AD FE F8
	asl A		; 0A
	rol A		; 2A
	bmi -28.b		; 30 E4
	trb $6828.w		; 1C 28 68
	bra  -2.b		; 80 FE
	sed		; F8
	jmp $5054.w		; 4C 54 50
	trb $98.b		; 14 98
	plp		; 28
	ora ($44.b),Y		; 11 44
	inc $24F8.w,X		; FE F8 24
	tax		; AA
	tax		; AA
	ror $1378.w		; 6E 78 13
	cpx $1360.w		; EC 60 13
	bmi  72.b		; 30 48
	ora #$FE.b		; 09 FE
	sed		; F8
	ora $1040.w		; 0D 40 10
	and $66.b,X		; 35 66
	inx		; E8
	ora ($34.b,S),Y		; 13 34
	jsr ($F862.w,X)		; FC 62 F8
	ora $AAAA.w		; 0D AA AA
	sta ($98.b,S),Y		; 93 98
	pld		; 2B
	rol $60.b		; 26 60
	ora $FE00.w		; 0D 00 FE
	sei		; 78
	pha		; 48
	sta ($64.b,X)		; 81 64
	inc $9058.w,X		; FE 58 90
	ora [$20.b],Y		; 17 20
	jsr $FA31.w		; 20 31 FA
	cld		; D8
	ora ($EA.b,S),Y		; 13 EA
	phy		; 5A
	beq -40.b		; F0 D8
	and $FF.b		; 25 FF
	sed		; F8
	cpx #$EB.b		; E0 EB
	beq  44.b		; F0 2C
	inc $0B80.w,X		; FE 80 0B
	asl $80.b		; 06 80
	inc $22F8.w,X		; FE F8 22
	pla		; 68
	bvc  34.b		; 50 22
	stx $FE.b		; 86 FE
	sed		; F8
	asl $55.b,X		; 16 55
	eor $D0.b,X		; 55 D0
	sed		; F8
	asl $90.b,X		; 16 90
	sed		; F8
	rti		; 40

	inc $4FF8.w,X		; FE F8 4F
	inx		; E8
	sei		; 78
	ora $7EE4.w		; 0D E4 7E
	cmp ($D0.b)		; D2 D0
	ora $D896.w		; 0D 96 D8
	ora $19F8FE.l		; 0F FE F8 19
	plb		; AB
	lsr A		; 4A
	sty $15D8.w		; 8C D8 15
	eor $08.b		; 45 08
	cpx #$10.b		; E0 10
	bne  -8.b		; D0 F8
	ora #$C2.b		; 09 C2
	plp		; 28
	sta [$BA.b]		; 87 BA
	cpy #$27.b		; C0 27
	rol $AAE4.w,X		; 3E E4 AA
	tax		; AA
	inc $E030.w,X		; FE 30 E0
	ora #$46.b		; 09 46
	php		; 08
	ora [$1C.b],Y		; 17 1C
	plp		; 28
	sta $68FE26.l		; 8F 26 FE 68
	cld		; D8
	ora [$3A.b],Y		; 17 3A
	sed		; F8
	adc [$FF.b]		; 67 FF
	sed		; F8
	xba		; EB
	tax		; AA
	inc A		; 1A
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	ora ($34.b,S),Y		; 13 34
	cli		; 58
	and [$4E.b],Y		; 37 4E
	sec		; 38
	eor ($4A.b,S),Y		; 53 4A
	cli		; 58
	tsa		; 3B
	bpl  72.b		; 10 48
	sta $52.b		; 85 52
	pha		; 48
	and [$FF.b]		; 27 FF
	sed		; F8
	and [$84.b]		; 27 84
	and $D0.b		; 25 D0
	inc $D02A.w,X		; FE 2A D0
	ora [$E4.b],Y		; 17 E4
	inc $DE42.w,X		; FE 42 DE
	bmi -10.b		; 30 F6
	tax		; AA
	stx $FE85.w		; 8E 85 FE
	sed		; F8
	inc A		; 1A
	jmp.w [$17A8]		; DC A8 17
	bne  -8.b		; D0 F8
	ora [$44.b],Y		; 17 44
	clc		; 18
	ora $FF14.w,X		; 1D 14 FF
	bra   8.b		; 80 08
	phy		; 5A
	lda $FE.b,X		; B5 FE
	sbc $71B8.w,X		; FD B8 71
	cpy $0EE8.w		; CC E8 0E
	bra  -2.b		; 80 FE
	sed		; F8
	asl $E8B0.w		; 0E B0 E8
	bit $C886.w		; 2C 86 C8
	ora ($FE.b),Y		; 11 FE
	sed		; F8
	ora $46.b,X		; 15 46
	tax		; AA
	tax		; AA
	inc $20F8.w,X		; FE F8 20
	cli		; 58
	cpy #$523B.w		; C0 3B 52
	cpy #$C81C.w		; C0 1C C8
	cpy #$D41E.w		; C0 1E D4
	ldy #$B017.w		; A0 17 B0
	cpx #$8637.w		; E0 37 86
	bmi  61.b		; 30 3D
	stx $31F8.w		; 8E F8 31
	tax		; AA
	tax		; AA
	ror $11C0.w		; 6E C0 11
	sei		; 78
	ldy #$C80F.w		; A0 0F C8
	bne 123.b		; D0 7B
	sty $2308.w		; 8C 08 23
	inc $59F8.w,X		; FE F8 59
	sbc $F01330.l,X		; FF 30 13 F0
	pea $E848.w		; F4 48 E8
	asl $093A.w		; 0E 3A 09
	sec		; 38
	bcs -122.b		; B0 86
	jsr ($3FA8.w,X)		; FC A8 3F
	plp		; 28
	bcc  53.b		; 90 35
	asl $40.b		; 06 40
	inc $F8CE.w,X		; FE CE F8
	bit $AA.b		; 24 AA
	tax		; AA
	phx		; DA
	inc $0FF8.w,X		; FE F8 0F
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $C84A.w,Y		; 19 4A C8
	jmp $53A8EA.l		; 5C EA A8 53
	sty $1B20.w		; 8C 20 1B
	dec $A0.b,X		; D6 A0
	and $00.b,S		; 23 00
	tay		; A8
	bit #$7A.b		; 89 7A
	sta [$E4.b]		; 87 E4
	bvs  67.b		; 70 43
	cpx #$98.b		; E0 98
	clc		; 18
	ora $63.b,S		; 03 63
	sty $FD.b		; 84 FD
	ora ($8B.b)		; 12 8B
	sed		; F8
	ora $E812ED.l		; 0F ED 12 E8
	cmp $E5.b,S		; C3 E5
	adc $E0FF90.l		; 6F 90 FF E0
	rti		; 40

	sbc $304111.l,X		; FF 11 41 30
	ora ($E0.b)		; 12 E0
	sta $BF0A.w		; 8D 0A BF
	rti		; 40

	ldy $43.b,X		; B4 43
	cop $FC.b		; 02 FC
	ldy #$2B.b		; A0 2B
	cpy $FFD7.w		; CC D7 FF
	cmp $E710FF.l,X		; DF FF 10 E7
	sec		; 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $2E43BF.l,X		; 3F BF 43 2E
	eor ($7D.b,X)		; 41 7D
	bvc  68.b		; 50 44
	and $EB41AC.l,X		; 3F AC 41 EB
	xba		; EB
	adc $03F87F.l,X		; 7F 7F F8 03
	eor $1933.w,Y		; 59 33 19
	sed		; F8
	ora [$FF.b],Y		; 17 FF
	sty $04.b		; 84 04
	cpx #$00.b		; E0 00
	cpx #$01.b		; E0 01
	and $5984D0.l,X		; 3F D0 84 59
	ldx $E485.w,Y		; BE 85 E4
	ora ($BF.b,X)		; 01 BF
	lda $33FBFB.l,X		; BF FB FB 33
	eor ($EF.b)		; 52 EF
	bit $41.b		; 24 41
	jmp.w [$F0F7]		; DC F7 F0
	ora ($01.b,X)		; 01 01
	bit $AD3C.w,X		; 3C 3C AD
	and ($1F.b),Y		; 31 1F
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	beq  31.b		; F0 1F
	cpx #$B4.b		; E0 B4
	cmp $FD.b,S		; C3 FD
	brk $7F.b		; 00 7F
	cpx #$FF.b		; E0 FF
	cpx #$F7.b		; E0 F7
	inc $FE01.w,X		; FE 01 FE
	jmp.w [$E4D4]		; DC D4 E4
	rti		; 40

	and $C38F90.l,X		; 3F 90 8F C3
	cpy #$07.b		; C0 07
	clc		; 18
	lda $E2.b		; A5 E2
	beq -16.b		; F0 F0
	cmp ($FF.b)		; D2 FF
	ora $FFE24F.l		; 0F 4F E2 FF
	nop		; EA
	adc $BD1DB9.l,X		; 7F B9 1D BD
	ora $EFC0FF.l		; 0F FF C0 EF
	cpy #$FE.b		; C0 FE
	bcs  -1.b		; B0 FF
	brk $BF.b		; 00 BF
	ora $10C0F0.l		; 0F F0 C0 10
	stz $1F1E.w,X		; 9E 1E 1F
	eor $C030E4.l,X		; 5F E4 30 C0
	cmp ($AD.b,S),Y		; D3 AD
	sbc ($F3.b,S),Y		; F3 F3
	dec $E1A6.w		; CE A6 E1
	xce		; FB
	ror $A0FF.w		; 6E FF A0
	ldx $49D3.w,Y		; BE D3 49
	tyx		; BB
	brk $EF.b		; 00 EF
	tsb $51BE.w		; 0C BE 51
	sbc $54BA10.l		; EF 10 BA 54
	sbc $5772.w,X		; FD 72 57
	rti		; 40

	jsr $10F8.w		; 20 F8 10
	cmp $8222.w,X		; DD 22 82
	lsr $F7.b,X		; 56 F7
	php		; 08
	cpx #$F8.b		; E0 F8
	ora ($38.b,S),Y		; 13 38
	lsr $55.b		; 46 55
	eor $BA.b,X		; 55 BA
	inc $F8E0.w,X		; FE E0 F8
	ora $48.b,X		; 15 48
	and $23DA.w,Y		; 39 DA 23
	cpx #$F8.b		; E0 F8
	ora ($AA.b),Y		; 11 AA
	jsr ($20E1.w,X)		; FC E1 20
	clc		; 18
	nop		; EA
	sbc $0F6D.w,X		; FD 6D 0F
	stz $FC.b		; 64 FC
	cpx #$F8.b		; E0 F8
	ora [$FB.b],Y		; 17 FB
	cpy #$F8.b		; C0 F8
	asl $C004.w		; 0E 04 C0
	sed		; F8
	ora $20DF02.l		; 0F 02 DF 20
	tyx		; BB
	lda $06F9FA.l		; AF FA F9 06
	cpy #$F8.b		; C0 F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $43,$D8		; 44 D8 43
	php		; 08
	xce		; FB
	tsb $DF.b		; 04 DF
	dec $AD43.w		; CE 43 AD
	rol A		; 2A
	sbc $2009F8.l,X		; FF F8 09 20
	cpy #$FF.b		; C0 FF
	cmp $58F1FC.l,X		; DF FC F1 58
	sbc $F020.w,X		; FD 20 F0
	phd		; 0B
	cpx #$FD.b		; E0 FD
	ldy #$19.b		; A0 19
	cli		; 58
	bpl   4.b		; 10 04
	adc ($24.b,X)		; 61 24
	rti		; 40

	cpy #$FD.b		; C0 FD
	phx		; DA
	ldx $AF.b		; A6 AF
	bpl   8.b		; 10 08
	sty $06.b		; 84 06
	cpx #$40.b		; E0 40
	eor ($66.b),Y		; 51 66
	jmp ($EAE0.w,X)		; 7C E0 EA
	xba		; EB
	plx		; FA
	sta $E34078.l,X		; 9F 78 40 E3
	cpy #$7F.b		; C0 7F
	sed		; F8
	sta $C01EC0.l,X		; 9F C0 1E C0
	and $EFDE9E.l,X		; 3F 9E DE EF
	sbc $1B7F7F.l		; EF 7F 7F 1B
	txy		; 9B
	ora ($A5.b,X)		; 01 A5
	xce		; FB
	cpy #$08.b		; C0 08
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FF.b		; E0 FF
	jsr ($F763.w,X)		; FC 63 F7
	ora $B881FF.l		; 0F FF 81 B8
	tsb $E8.b		; 04 E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($F8.b,X)		; 01 F8
	adc $04B881.l		; 6F 81 B8 04
	rti		; 40

	mvn $00,$C0		; 54 C0 00
	ora $1903E0.l,X		; 1F E0 03 19
	eor #$D0.b		; 49 D0
	sbc $B061.w		; ED 61 B0
	eor ($F2.b,X)		; 41 F2
	ora #$AB.b		; 09 AB
	pld		; 2B
	eor #$DF.b		; 49 DF
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	sbc $9E5F.w		; ED 5F 9E
	xba		; EB
	plx		; FA
	and ($0F.b,X)		; 21 0F
	pei ($09.b)		; D4 09
	adc $387F20.l,X		; 7F 20 7F 38
	adc $C07F3E.l,X		; 7F 3E 7F C0
	ora ($7F.b),Y		; 11 7F
	sbc $FCF0.w,X		; FD F0 FC
	eor $384720.l,X		; 5F 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $B15C.w,Y		; 39 5C B1
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	sta [$E9.b]		; 87 E9
	beq  96.b		; F0 60
	beq 112.b		; F0 70
	inc $B0B0.w,X		; FE B0 B0
	beq  64.b		; F0 40
	bra  31.b		; 80 1F
	asl $20.b		; 06 20
	cpy #$90.b		; C0 90
	rts		; 60

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
	eor $E0.b,S		; 43 E0
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
	cpy #$D0.b		; C0 D0
	ldy $FEFC.w,X		; BC FC FE
	sty $4CCC.w		; 8C CC 4C
	bmi  -4.b		; 30 FC
	bne  -8.b		; D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($D544.w,X)		; FC 44 D5
	inc $FC70.w,X		; FE 70 FC
	lda $D95AFF.l		; AF FF 5A D9
	bcc -88.b		; 90 A8
	phd		; 0B
	phk		; 4B
	phx		; DA
	cmp ($75.b,X)		; C1 75
	cpy #$40.b		; C0 40
	inc $FE98.w,X		; FE 98 FE
	ora $01.b,S		; 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $0102.w,X		; FE 02 01
	sta $49.b		; 85 49
	inc $B2FC.w,X		; FE FC B2
	sbc ($FF.b)		; F2 FF
	sbc [$D1.b],Y		; F7 D1
	plx		; FA
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
	inc $CD1A.w,X		; FE 1A CD
	inc $B4FC.w,X		; FE FC B4
	inc $F8A0.w,X		; FE A0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	ldy #$FE.b		; A0 FE
	bra  69.b		; 80 45
	jmp $FFC0FF.l		; 5C FF C0 FF
	sbc $20FE6D.l,X		; FF 6D FE 20
	cpx #$FE.b		; E0 FE
	inc $FDD7.w,X		; FE D7 FD
	dec $FE.b		; C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $0304.w,X		; FE 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $FFFBFB.l,X		; FF FB FB FF
	sta [$DF.b]		; 87 DF
	cmp [$CF.b],Y		; D7 CF
	cmp $96DECE.l,X		; DF CE DE 96
	stx $D6.b		; 86 D6
	dec $F7.b		; C6 F7
	inc $6E.b		; E6 6E
	sbc $FF049F.l,X		; FF 9F 04 FF
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $39FF79.l,X		; FF 79 FF 39
	sbc $E0FF19.l,X		; FF 19 FF E0
	and [$6C.b]		; 27 6C
	inc $C606.w,X		; FE 06 C6
	ora [$D7.b],Y		; 17 D7
	ora $5FFCD7.l,X		; 1F D7 FC 5F
	eor $6A.b,X		; 55 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	sbc $68FCFE.l,X		; FF FE FC 68
	inc $FEFE.w,X		; FE FE FE
	ldy #$FE.b		; A0 FE
	inc $F3FE.w,X		; FE FE F3
	stz $FE68.w,X		; 9E 68 FE
	cpx #$FF.b		; E0 FF
	rts		; 60

	rts		; 60

	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl 119.b		; 10 77
	bcc  -2.b		; 90 FE
	bcc -16.b		; 90 F0
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	bvs -41.b		; 70 D7
	cmp $2E.b,X		; D5 2E
	php		; 08
	sbc $060007.l,X		; FF 07 00 06
	eor ($FD.b)		; 52 FD
	inc $F591.w,X		; FE 91 F5
	bvs -16.b		; 70 F0
	lda $780CD6.l,X		; BF D6 0C 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	ora $FCC0C6.l		; 0F C6 C0 FC
	beq -124.b		; F0 84
	sed		; F8
	inc $9AFB.w,X		; FE FB 9A
	rti		; 40

	inc $1061.w,X		; FE 61 10
	rts		; 60

	cpy #$FE.b		; C0 FE
	bvs -32.b		; 70 E0
	inc $F25C.w,X		; FE 5C F2
	rts		; 60

	clc		; 18
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ldy #$40.b		; A0 40
	inc $6090.w,X		; FE 90 60
	cpy #$23.b		; C0 23
	inc $B8AE.w,X		; FE AE B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	jsr ($0F80.w,X)		; FC 80 0F
	inc $08F6.w,X		; FE F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $F007.w		; 0C 07 F0
	ora $D5FEFC.l,X		; 1F FC FE D5
	sec		; 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $850E.w		; AE 0E 85
	inc $B6F7.w,X		; FE F7 B6
	lda $79FFFE.l,X		; BF FE FF 79
	cmp ($0A.b),Y		; D1 0A
	inx		; E8
	bmi  89.b		; 30 59
	inc $FCFA.w,X		; FE FA FC
	ora $8FFEC7.l		; 0F C7 FE 8F
	eor [$0D.b]		; 47 0D
	eor [$FE.b],Y		; 57 FE
	tax		; AA
	eor [$FC.b],Y		; 57 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	sta [$21.b]		; 87 21
	inc $80FC.w,X		; FE FC 80
	ply		; 7A
	tsb $FC.b		; 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	sta ($F5.b,X)		; 81 F5
	sbc $54FCFE.l,X		; FF FE FC 54
	pea $389D.w		; F4 9D 38
	ora #$70.b		; 09 70
	rts		; 60

	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne -113.b		; D0 8F
	sbc ($68.b),Y		; F1 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $FED0.w		; 0E D0 FE
	cld		; D8
	sed		; F8
	ldx $284A.w,Y		; BE 4A 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	cmp [$C8.b],Y		; D7 C8
	ora $FEFE08.l		; 0F 08 FE FE
	inc $ED3B.w,X		; FE 3B ED
	tsb $7E7C.w		; 0C 7C 7E
	inc $5EFE.w,X		; FE FE 5E
	eor $FC820C.l,X		; 5F 0C 82 FC
	inc $A1FE.w,X		; FE FE A1
	and ($D3.b),Y		; 31 D3
	inc $FF02.w,X		; FE 02 FF
	ora $FE.b,S		; 03 FE
	sbc $588A06.l,X		; FF 06 8A 58
	asl $87.b		; 06 87
.ACCU 16
	rep #$E0		; C2 E0
	nop		; EA
	inc $0578.w,X		; FE 78 05
	cpy #$F6.b		; C0 F6
	cmp $61.b,X		; D5 61
	bne  95.b		; D0 5F
	beq  -8.b		; F0 F8
	clc		; 18
	lda $F10EE0.l,X		; BF E0 0E F1
	inc $F078.w,X		; FE 78 F0
	inc $F87C.w,X		; FE 7C F8
	clc		; 18
	ror $FEFE.w,X		; 7E FE FE
	jsr ($EBFE.w,X)		; FC FE EB
	nop		; EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs  24.b		; 70 18
	stx $FE.b		; 86 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	inc $7841.w,X		; FE 41 78
	ora $FE.b,X		; 15 FE
	inc $F2AC.w,X		; FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $FDA50F.l,X		; 1F 0F A5 FD
	inc $ACFC.w,X		; FE FC AC
	sbc ($FE.b)		; F2 FE
	bpl  15.b		; 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FF.b,X		; F5 FF
	sbc $54FDFC.l,X		; FF FC FD 54
	sbc $DEFDFE.l,X		; FF FE FD DE
	sbc $FEAD.w,X		; FD AD FE
	sbc $5FFE.w		; ED FE 5F
	sbc $C2FF1B.l,X		; FF 1B FF C2
	and $F19C13.l,X		; 3F 13 9C F1
	jsr ($DF33.w,X)		; FC 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $F4.b,S		; 43 F4
	nop		; EA
	inc $FE6B.w,X		; FE 6B FE
	sbc $FC4367.l,X		; FF 67 43 FC
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	phx		; DA
	sbc #$FEC1.w		; E9 C1 FE
	jsr ($3749.w,X)		; FC 49 37
	cpy #$FE.b		; C0 FE
	jsr ($F0F8.w,X)		; FC F8 F0
	inc $C0C8.w,X		; FE C8 C0
	lda $303CF4.l,X		; BF F4 3C 30
	pea $A4F0.w		; F4 F0 A4
	beq  -4.b		; F0 FC
	ldx $FEF1.w		; AE F1 FE
	sec		; 38
	sed		; F8
	cpy $A831.w		; CC 31 A8
	jsr ($FE0C.w,X)		; FC 0C FE
	tsb $FE.b		; 04 FE
	ldx #$F0.b		; A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$FFFE.w		; E9 FE FF
	ldy $F0.b		; A4 F0
	phd		; 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $30AA.w,X		; 7E AA 30
	cpy $7E.b		; C4 7E
	jsr ($FEA1.w,X)		; FC A1 FE
	inc $FEA9.w,X		; FE A9 FE
	eor ($7F.b)		; 52 7F
	inc $D1F1.w,X		; FE F1 D1
	inc $FF06.w,X		; FE 06 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0305.w		; 0D 05 03
	ora [$FD.b]		; 07 FD
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	pea $0FB8.w		; F4 B8 0F
	sbc $B8.b		; E5 B8
	ora $BFEAEB.l		; 0F EB EA BF
	tax		; AA
	adc $BEFBF8.l,X		; 7F F8 FB BE
	lda $8A9F94.l		; AF 94 9F 8A
	plx		; FA
	xce		; FB
	inc $EBFB.w,X		; FE FB EB
	ora $FE.b,X		; 15 FE
	sed		; F8
	adc ($55.b),Y		; 71 55
	inc $FE7F.w,X		; FE 7F FE
	adc $FE.b,X		; 75 FE
	ora $FE.b		; 05 FE
	trb $FF.b		; 14 FF
	cmp $F8.b,S		; C3 F8
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	inc $8A2A.w,X		; FE 2A 8A
	ldx $E1F3.w,Y		; BE F3 E1
	stz $0E11.w,X		; 9E 11 0E
	inc $B10F.w,X		; FE 0F B1
	ora $1FB5FE.l,X		; 1F FE B5 1F
	lda [$FF.b]		; A7 FF
	lda ($1F.b,X)		; A1 1F
	cmp $FEDE.w		; CD DE FE
	sbc $C8DE.w		; ED DE C8
	plx		; FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	lda [$00.b],Y		; B7 00
	cpx $33DA.w		; EC DA 33
	sbc $37FCFE.l,X		; FF FE FC 37
	ldy $D9.b,X		; B4 D9
	jsr ($0005.w,X)		; FC 05 00
	inc $0065.w,X		; FE 65 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($D1.b,X)		; A1 D1
	brk $FF.b		; 00 FF
	ora #$F8FE.w		; 09 FE F8
	rol $08.b,X		; 36 08
	cpy $FF.b		; C4 FF
	sed		; F8
	ora ($5A.b)		; 12 5A
	rtl		; 6B

	bra  -2.b		; 80 FE
	sed		; F8
	asl $FF.b,X		; 16 FF
	sed		; F8
	jsl $F8FE40.l		; 22 40 FE F8
	asl $F8FF.w,X		; 1E FF F8
	lda $F8FE02.l,X		; BF 02 FE F8
	tsb $F8FF.w		; 0C FF F8
	eor ($01.b,X)		; 41 01
	jmp ($FE95.w)		; 6C 95 FE
	ora $FE.b		; 05 FE
	sbc $FE04.w,X		; FD 04 FE
	sed		; F8
	tsb $F0B4.w		; 0C B4 F0
	tas		; 1B
	sbc $147DF8.l,X		; FF F8 7D 14
	pei ($4C.b)		; D4 4C
	inc $31F8.w,X		; FE F8 31
	ply		; 7A
	inx		; E8
	ora $FFE4.w,Y		; 19 E4 FF
	sed		; F8
	adc [$8E.b],Y		; 77 8E
	beq  13.b		; F0 0D
	inc $0BF8.w,X		; FE F8 0B
	tax		; AA
	tax		; AA
	asl $FE.b		; 06 FE
	sed		; F8
	plp		; 28
	lsr $0BF0.w		; 4E F0 0B
	sbc $8442F8.l,X		; FF F8 42 84
	cpx #$17.b		; E0 17
	bvs -32.b		; 70 E0
	rol $4C.b,X		; 36 4C
	beq  41.b		; F0 29
	iny		; C8
	cld		; D8
	pld		; 2B
	tax		; AA
	tax		; AA
	dex		; CA
	sed		; F8
	ora #$F880.w		; 09 80 F8
	and $F8A6.w		; 2D A6 F8
	and ($FF.b,X)		; 21 FF
	sed		; F8
	eor $F0BD.w,X		; 5D BD F0
	bit $F022.w,X		; 3C 22 F0
	adc $F2.b		; 65 F2
	bne -72.b		; D0 B8
	nop		; EA
	sed		; F8
	ora ($6A.b),Y		; 11 6A
	lda $F0BB.w		; AD BB F0
	adc $C868.w		; 6D 68 C8
	and [$A0.b],Y		; 37 A0
	sed		; F8
	eor $FF.b		; 45 FF
	sed		; F8
	lda ($08.b),Y		; B1 08
	inc $32F8.w,X		; FE F8 32
	sta ($F8.b)		; 92 F8
	and $FE0A.w,X		; 3D 0A FE
	sed		; F8
	rol $AA.b		; 26 AA
	eor $92.b,X		; 55 92
	sed		; F8
	eor ($0C.b,X)		; 41 0C
	inx		; E8
	adc ($F4.b,X)		; 61 F4
	cpx #$1B.b		; E0 1B
	cld		; D8
	clv		; B8
	ora ($FE.b),Y		; 11 FE
	sed		; F8
	clc		; 18
	bra  -2.b		; 80 FE
	sed		; F8
	trb $C2.b		; 14 C2
	sed		; F8
	and [$78.b]		; 27 78
	sed		; F8
	ora ($55.b)		; 12 55
	eor $C4.b,X		; 55 C4
	sed		; F8
	pld		; 2B
	bra  -8.b		; 80 F8
	clc		; 18
	ror $1CF8.w,X		; 7E F8 1C
	ldy $57D8.w,X		; BC D8 57
	bit $2BF8.w,X		; 3C F8 2B
	cli		; 58
	bcs  47.b		; B0 2F
	rti		; 40

	sed		; F8
	eor $C4.b		; 45 C4
	cpy #$19.b		; C0 19
	cmp $87.b,X		; D5 87
	sbc $5A93F8.l,X		; FF F8 93 5A
	sed		; F8
	ora ($9C.b),Y		; 11 9C
	ldy $BC4A.w		; AC 4A BC
	cop $00.b		; 02 00
	asl A		; 0A
	bra  -2.b		; 80 FE
	ldy $63.b		; A4 63
	php		; 08
	inc $E196.w,X		; FE 96 E1
	stx $C1.b		; 86 C1
	bra   1.b		; 80 01
	inc $D504.w,X		; FE 04 D5
	tax		; AA
	ora $D8.b,X		; 15 D8
	cmp $E8.b,X		; D5 E8
	ldy #$86.b		; A0 86
	adc ($D0.b)		; 72 D0
	and ($80.b,X)		; 21 80
	bcs  45.b		; B0 2D
	eor ($FE.b,X)		; 41 FE
	sed		; F8
	clc		; 18
	tsb $0DF0.w		; 0C F0 0D
	inc $2BF8.w,X		; FE F8 2B
	rol A		; 2A
	eor $2E.b,X		; 55 2E
	inx		; E8
	and ($A0.b),Y		; 31 A0
	cpx #$0F.b		; E0 0F
	cpx $D8A6.w		; EC A6 D8
	tya		; 98
	and ($80.b),Y		; 31 80
	sta $FE.b		; 85 FE
	sed		; F8
	ora ($5A.b)		; 12 5A
	sed		; F8
	ora $95.b,X		; 15 95
	mvn $F8,$78		; 54 78 F8
	ora [$68.b],Y		; 17 68
	ldy #$09.b		; A0 09
	bmi  -8.b		; 30 F8
	phd		; 0B
	ldx #$26.b		; A2 26
	ldx $04.b		; A6 04
	cld		; D8
	ora #$C01D.w		; 09 1D C0
	dec $7FFD.w,X		; DE FD 7F
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	bit $1010.w		; 2C 10 10
	pla		; 68
	inx		; E8
	bra -64.b		; 80 C0
	ora ($01.b,X)		; 01 01
	asl $101E.w		; 0E 1E 10
	sec		; 38
	rol $F09E.w,X		; 3E 9E F0
	tsb $10E8.w		; 0C E8 10
	sbc ($02.b),Y		; F1 02
	asl $F500.w,X		; 1E 00 F5
	ora [$F1.b],Y		; 17 F1
	jsl $FED4E4.l		; 22 E4 D4 FE
	brk $0C.b		; 00 0C
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	adc $0EE8.w,X		; 7D E8 0E
	inc $C280.w,X		; FE 80 C2
	rti		; 40

	cpx #$20.b		; E0 20
	bvs  20.b		; 70 14
	sec		; 38
	tsb $FFCD.w		; 0C CD FF
	and [$FF.b],Y		; 37 FF
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	jsr ($7E00.w,X)		; FC 00 7E
	brk $3F.b		; 00 3F
	sty $AA.b		; 84 AA
	jsr $1E17.w		; 20 17 1E
	wai		; CB
	asl $CB.b		; 06 CB
	jsr ($70E6.w,X)		; FC E6 70
	brk $3C.b		; 00 3C
	brk $3A.b		; 00 3A
	jsr ($0FD9.w,X)		; FC D9 0F
	tsx		; BA
	inc $307F.w,X		; FE 7F 30
	sbc [$3B.b],Y		; F7 3B
	bra  30.b		; 80 1E
	adc ($00.b,S),Y		; 73 00
	sbc $01ECE1.l,X		; FF E1 EC 01
	adc $00C700.l,X		; 7F 00 C7 00
	sbc $CF3FFF.l,X		; FF FF 3F CF
	jsr ($7FFF.w,X)		; FC FF 7F
	cmp [$7F.b]		; C7 7F
	sbc $F3FF8C.l,X		; FF 8C FF F3
	sed		; F8
	sec		; 38
	trb $03E0.w		; 1C E0 03
	jsr ($C31F.w,X)		; FC 1F C3
	adc $9E1108.l		; 6F 08 11 9E
	ora $FD3EE5.l,X		; 1F E5 3E FD
	sbc ($08.b,X)		; E1 08
	cpx $E0FF.w		; EC FF E0
	sbc $FFDE9F.l,X		; FF 9F DE FF
	eor $FF.b,S		; 43 FF
	cmp ($C1.b,X)		; C1 C1
	brk $6E.b		; 00 6E
	eor ($58.b,X)		; 41 58
	eor [$C3.b]		; 47 C3
	bra -128.b		; 80 80
	cmp $FF.b		; C5 FF
	sei		; 78
	tsb $60FE.w		; 0C FE 60
	ora $E601E6.l,X		; 1F E6 01 E6
	lda $BD084C.l,X		; BF 4C 08 BD
	phx		; DA
	sbc $93AACA.l,X		; FF CA AA 93
	inc $FCE2.w,X		; FE E2 FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $FA1FE7.l,X		; FF E7 1F FA
	xce		; FB
	mvn $F8,$FF		; 54 FF F8
	ora $E2F13F.l		; 0F 3F F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	sbc $0EF807.l,X		; FF 07 F8 0E
	inx		; E8
	sbc $3870.w,X		; FD 70 38
	mvp $FC,$D4		; 44 D4 FC
	jsr ($F8C7.w,X)		; FC C7 F8
	jsr ($3F03.w,X)		; FC 03 3F
	trb $5405.w		; 1C 05 54
	bit $C0F0.w,X		; 3C F0 C0
	plx		; FA
	dec $22F5.w		; CE F5 22
	tsb $D408.w		; 0C 08 D4
	ora $5FFFFA.l		; 0F FA FF 5F
	inx		; E8
	and $FC0F.w,Y		; 39 0F FC
	cpx $F0F3.w		; EC F3 F0
	inc $F1.b,X		; F6 F1
	bit $CC80.w,X		; 3C 80 CC
	jsr ($131C.w,X)		; FC 1C 13
	asl $F303.w,X		; 1E 03 F3
	tsb $6885.w		; 0C 85 68
	brk $78.b		; 00 78
	cpx #$7A.b		; E0 7A
	php		; 08
	tsb $D833.w		; 0C 33 D8
	sbc ($FC.b),Y		; F1 FC
	brk $E0.b		; 00 E0
	eor ($1C.b,X)		; 41 1C
	and $18E01C.l		; 2F 1C E0 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	inc $1BF3.w,X		; FE F3 1B
	ora $8EE01F.l,X		; 1F 1F E0 8E
	php		; 08
	cpx #$9C.b		; E0 9C
	ora $F1.b,S		; 03 F1
	ldy $0FF4.w,X		; BC F4 0F
	bvc -84.b		; 50 AC
	ora $FE70F0.l		; 0F F0 70 FE
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
	cpx #$F8.b		; E0 F8
	ora #$C03F.w		; 09 3F C0
	rti		; 40

	inc $F8E1.w,X		; FE E1 F8
	ora #$E040.w		; 09 40 E0
	inc $FE40.w,X		; FE 40 FE
	bcc  36.b		; 90 24
	jmp ($F8E0.w)		; 6C E0 F8
	ora #$A040.w		; 09 40 A0
	sed		; F8
	phd		; 0B
	rti		; 40

	sta $EA.b,X		; 95 EA
	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F046.w		; 0C 46 F0
	ora #$7F82.w		; 09 82 7F
	bne -15.b		; D0 F1
	rts		; 60

	sed		; F8
	phd		; 0B
	adc $80BE40.l,X		; 7F 40 BE 80
	sbc ($BC.b),Y		; F1 BC
	inc $FCFE.w,X		; FE FE FC
	ora $87.b,S		; 03 87
	ror $07F2.w,X		; 7E F2 07
	rtl		; 6B

	iny		; C8
	ora $E4E9F5.l		; 0F F5 E9 E4
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $F5425F.l,X		; 7F 5F 42 F5
	and $FFF279.l,X		; 3F 79 F2 FF
	sbc $FFF2DF.l,X		; FF DF F2 FF
	cpy #$AA.b		; C0 AA
	adc $E201FE.l,X		; 7F FE 01 E2
	ora $417C57.l,X		; 1F 57 7C 41
	cld		; D8
	cmp [$FF.b]		; C7 FF
	sei		; 78
	sbc $80.b,S		; E3 80
	cmp $F609F8.l,X		; DF F8 09 F6
	cmp $7C38F2.l,X		; DF F2 38 7C
	jsr ($FFAB.w,X)		; FC AB FF
	eor $FDE696.l,X		; 5F 96 E6 FD
	ora $E0F3.w,Y		; 19 F3 E0
	ror $1B.b		; 66 1B
	inc $8DE4.w		; EE E4 8D
	sbc ($02.b),Y		; F1 02
	sei		; 78
	sbc $00.b,X		; F5 00
	lsr $84.b,X		; 56 84
.INDEX 16
	rep #$1F		; C2 1F
	inc $F87C.w,X		; FE 7C F8
	ora #$E0D3.w		; 09 D3 E0
	tsb $60FF.w		; 0C FF 60
	brk $02.b		; 00 02
	and $E00A8A.l,X		; 3F 8A 0A E0
	sed		; F8
	asl A		; 0A
	txa		; 8A
	adc $1612.w,Y		; 79 12 16
	sbc $E0FFFE.l,X		; FF FE FF E0
	sbc $2C.b,S		; E3 2C
	cpx #$35FF.w		; E0 FF 35
	ora $A6.b		; 05 A6
	rtl		; 6B

	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$EA83.w		; 09 83 EA
	inc $7A26.w,X		; FE 26 7A
	ora $98.b		; 05 98
	sbc $E703.w,X		; FD 03 E7
	asl $EA08.w,X		; 1E 08 EA
	ldy #$09F8.w		; A0 F8 09
	inc $C6.b,X		; F6 C6
	lda $F1CBCA.l,X		; BF CA CB F1
	ora $BFCA4F.l		; 0F 4F CA BF
	and [$E0.b]		; 27 E0
	jsr ($C004.w,X)		; FC 04 C0
	pea $0DE4.w		; F4 E4 0D
	bmi -65.b		; 30 BF
	rti		; 40

	rti		; 40

	sbc $E6FE91.l,X		; FF 91 FE E6
	inc $DF.b		; E6 DF
	sta ($B1.b),Y		; 91 B1
	brk $AF.b		; 00 AF
	brk $DF.b		; 00 DF
	jsl $E1A0FE.l		; 22 FE A0 E1
	sbc [$19.b]		; E7 19
	eor $4FBF20.l,X		; 5F 20 BF 4F
	lda $E2D829.l,X		; BF 29 D8 E2
	cli		; 58
	asl $E5.b,X		; 16 E5
	cpx #$9E09.w		; E0 09 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	ldx $F5.b		; A6 F5
	asl $FC2A.w		; 0E 2A FC
	cmp $2B.b,X		; D5 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $FDFF.w		; EE FF FD
	bvs -23.b		; 70 E9
	sbc $FFFC2F.l,X		; FF 2F FC FF
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
	rts		; 60

	adc $E1CA.w,X		; 7D CA E1
	inc $EFF7.w,X		; FE F7 EF
	adc $FFE306.l,X		; 7F 06 E3 FF
	sbc $5555AA.l,X		; FF AA 55 55
	tax		; AA
	bvc -23.b		; 50 E9
	jsr ($E365.w,X)		; FC 65 E3
	adc $FF09F0.l,X		; 7F F0 09 FF
	sed		; F8
	asl A		; 0A
	cpx #$57A8.w		; E0 A8 57
	eor $93.b,X		; 55 93
	sbc $F8E0F0.l,X		; FF F0 E0 F8
	ora $E366.w		; 0D 66 E3
	cpx #$5EFF.w		; E0 FF 5E
	sbc ($FF.b),Y		; F1 FF
	tsa		; 3B
	tax		; AA
	nop		; EA
	cpx #$24FE.w		; E0 FE 24
	inc $E0.b		; E6 E0
	jsr ($E1AC.w,X)		; FC AC E1
	cmp $E0E2.w,Y		; D9 E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	sbc $570FFD.l,X		; FF FD 0F 57
	php		; 08
	inc $1CFC.w,X		; FE FC 1C
	ora $2A.b,S		; 03 2A
	xba		; EB
	cpx #$04FC.w		; E0 FC 04
	jsr ($5720.w,X)		; FC 20 57
	sbc ($B0.b),Y		; F1 B0
	cpy #$E2FF.w		; C0 FF E2
	cpy #$F8E0.w		; C0 E0 F8
	ora #$FCE2.w		; 09 E2 FC
	ora $F8E0AD.l,X		; 1F AD E0 F8
	ora #$0101.w		; 09 01 01
	jsr ($63C0.w,X)		; FC C0 63
	cpy #$09F8.w		; C0 F8 09
	inc $E9D2.w,X		; FE D2 E9
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
	eor $A2BFFF.l,X		; 5F FF BF A2
	sbc #$EF.b		; E9 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	ora $033F01.l		; 0F 01 3F 03
	eor $5FBF33.l		; 4F 33 BF 5F
	adc $7AFDAF.l,X		; 7F AF FD 7A
	cmp ($BF.b),Y		; D1 BF
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
	ora $6F1FEF.l		; 0F EF 1F 6F
	ora [$F8.b]		; 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$D5.b		; E0 D5
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
	eor $78.b,X		; 55 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$ED7F.w		; 09 7F ED
	lda $A9917F.l,X		; BF 7F 91 A9
	cop $06.b		; 02 06
	tsb $05.b		; 04 05
	tsb $50.b		; 04 50
	sbc $FC03FE.l		; EF FE 03 FC
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
	eor ($F9.b)		; 52 F9
	sta ($10.b,X)		; 81 10
	pla		; 68
	eor $0E3812.l,X		; 5F 12 38 0E
	phx		; DA
	adc $05FE.w,Y		; 79 FE 05
	eor $55.b,X		; 55 55
	inc $64FE.w,X		; FE FE 64
	bcc  13.b		; 90 0D
	inx		; E8
	sed		; F8
	ora #$F8FE.w		; 09 FE F8
	ora $8876.w		; 0D 76 88
	bmi  -2.b		; 30 FE
	sed		; F8
	ora $2D308E.l,X		; 1F 8E 30 2D
	phy		; 5A
	bmi   9.b		; 30 09
	eor $55.b,X		; 55 55
	asl $88.b,X		; 16 88
	ora $1180C2.l		; 0F C2 80 11
	stz $7720.w		; 9C 20 77
	tsb $1D68.w		; 0C 68 1D
	bcc  40.b		; 90 28
	ora ($3C.b),Y		; 11 3C
	bra  27.b		; 80 1B
	asl $FCFE.w		; 0E FE FC
	bra  13.b		; 80 0D
	eor $55.b,X		; 55 55
	inc $35F8.w,X		; FE F8 35
	rts		; 60

	clc		; 18
	ora ($BC.b,S),Y		; 13 BC
	jmp ($F8FE.w)		; 6C FE F8
	ora $501C.w,X		; 1D 1C 50
	ora $08BD.w,X		; 1D BD 08
	rol $B0.b,X		; 36 B0
	beq  72.b		; F0 48
	lsr $1178.w		; 4E 78 11
	eor [$55.b],Y		; 57 55
	rol $FF.b		; 26 FF
	rti		; 40

	cop $FE.b		; 02 FE
	sed		; F8
	asl $0845.w		; 0E 45 08
	sta $10.b,S		; 83 10
	beq  22.b		; F0 16
	txs		; 9A
	cpx #$1A12.w		; E0 12 1A
	jsr $3E2B.w		; 20 2B 3E
	cli		; 58
	eor $55.b,S		; 43 55
	sta $488C.w		; 8D 8C 48
	rol $E82E.w		; 2E 2E E8
	asl $D8B0.w		; 0E B0 D8
	bpl  46.b		; 10 2E
	sed		; F8
	asl $105C.w		; 0E 5C 10
	ora $1044.w,Y		; 19 44 10
	ora $6AB546.l,X		; 1F 46 B5 6A
	inc $FE42.w,X		; FE 42 FE
	sed		; F8
	bpl 108.b		; 10 6C
	sed		; F8
	jsr $FE40.w		; 20 40 FE
	sed		; F8
	inc A		; 1A
	ply		; 7A
	cpx #$FC0E.w		; E0 0E FC
	cli		; 58
	tas		; 1B
	phy		; 5A
	sbc [$40.b]		; E7 40
	dey		; 88
	tax		; AA
	inc $FE01.w,X		; FE 01 FE
	bit $35E8.w,X		; 3C E8 35
	stx $D8.b,Y		; 96 D8
	adc ($D6.b,S),Y		; 73 D6
	rti		; 40

	and ($AA.b,X)		; 21 AA
	dex		; CA
	sed		; F8
	cld		; D8
	ora ($98.b),Y		; 11 98
	beq  17.b		; F0 11
	sbc $168CF8.l,X		; FF F8 8C 16
	rts		; 60

	asl $EE8C.w		; 0E 8C EE
	ldx $23C8.w,Y		; BE C8 23
	pei ($FF.b)		; D4 FF
	eor ($55.b,X)		; 41 55
	inc $FE06.w,X		; FE 06 FE
	beq -64.b		; F0 C0
	tsb $F8FE.w		; 0C FE F8
	and $4E.b		; 25 4E
	inx		; E8
	ora $3548B0.l,X		; 1F B0 48 35
	inc $31F8.w,X		; FE F8 31
	and $087D08.l		; 2F 08 7D 08
	and $84.b		; 25 84
	brk $86.b		; 00 86
	rol $10F8.w,X		; 3E F8 10
	inc $F8FE.w		; EE FE F8
	ora $2A.b,X		; 15 2A
	lda #$FED4.w		; A9 D4 FE
	jsr ($C894.w,X)		; FC 94 C8
	ora ($46.b),Y		; 11 46
	cpx #$E809.w		; E0 09 E8
	tay		; A8
	cpy #$7863.w		; C0 63 78
	cld		; D8
	and [$AA.b],Y		; 37 AA
	tax		; AA
	nop		; EA
	plp		; 28
	ora $21F0AA.l,X		; 1F AA F0 21
	rol $A0F2.w,X		; 3E F2 A0
	plp		; 28
	and $D6.b		; 25 D6
	bne  57.b		; D0 39
	dec $E8.b		; C6 E8
	ora $20.b,X		; 15 20
	cpy #$AE43.w		; C0 43 AE
	inx		; E8
	and $FFAAAA.l,X		; 3F AA AA FF
	sed		; F8
	lda #$B0A8.w		; A9 A8 B0
	tas		; 1B
	inc $10F8.w,X		; FE F8 10
	trb $E2.b		; 14 E2
	inc $3BF8.w,X		; FE F8 3B
	cop $E0.b		; 02 E0
	jsr $2898.w		; 20 98 28
	eor [$FE.b],Y		; 57 FE
	sed		; F8
	sta $AA.b,S		; 83 AA
	tax		; AA
	sbc $78FCF8.l,X		; FF F8 FC 78
	clc		; 18
	txa		; 8A
	dec $3FE8.w		; CE E8 3F
	jmp.w [$66AA]		; DC AA 66
	clc		; 18
	ora $E8CE.w,Y		; 19 CE E8
	phk		; 4B
	jsl $9A1190.l		; 22 90 11 9A
	tya		; 98
	ora $AA.b,X		; 15 AA
	stx $AA.b,Y		; 96 AA
	inc $3E.b		; E6 3E
	cpx #$5C22.w		; E0 22 5C
	tya		; 98
	jsl $71F8FE.l		; 22 FE F8 71
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	sta $FF.b,X		; 95 FF
	cli		; 58
	phy		; 5A
	adc [$BD.b],Y		; 77 BD
	inc $08F7.w,X		; FE F7 08
	brk $28.b		; 00 28
	ora ($FF.b),Y		; 11 FF
	jsr $526A.w		; 20 6A 52
	ora ($6C.b)		; 12 6C
	adc $DAFE84.l,X		; 7F 84 FE DA
	sta ($AC.b),Y		; 91 AC
	sbc ($43.b,X)		; E1 43
	dey		; 88
	ora $7102.w		; 0D 02 71
	eor ($DE.b,X)		; 41 DE
	jsr ($42FD.w,X)		; FC FD 42
	jsr ($AFED.w,X)		; FC ED AF
	cpx $F8DE.w		; EC DE F8
	ora #$2802.w		; 09 02 28
	adc ($BF.b,X)		; 61 BF
	rti		; 40

	sbc $02FD10.l		; EF 10 FD 02
	stz $39.b,X		; 74 39
	adc $EE.b,X		; 75 EE
	bcc  81.b		; 90 51
	sbc $BE3BE0.l,X		; FF E0 3B BE
	sec		; 38
	ora $C048B7.l		; 0F B7 48 C0
	ora ($80.b)		; 12 80
	jsr $DF13.w		; 20 13 DF
	sbc $C7E484.l,X		; FF 84 E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	sbc $FFBE0C.l,X		; FF 0C BE FF
	and $FBBC.w,X		; 3D BC FB
	eor $7F7F5F.l,X		; 5F 5F 7F 7F
	and $0C0C3F.l,X		; 3F 3F 0C 0C
	bit $AD.b		; 24 AD
	ora ($F4.b,X)		; 01 F4
	bit $FC.b		; 24 FC
	sbc $EA.b,S		; E3 EA
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
	ora $39.b,S		; 03 39
	tsb $FCFC.w		; 0C FC FC
	ldx #$BEC8.w		; A2 C8 BE
	jsr ($FBF3.w,X)		; FC F3 FB
	sty $FF.b		; 84 FF
	cpx $01.b		; E4 01
	inc $80.b,X		; F6 80
	sbc $E4FBC0.l,X		; FF C0 FB E4
	sbc $FF7FE0.l,X		; FF E0 7F FF
	ora $FE7FF0.l		; 0F F0 7F FE
	lda $7FFD7F.l,X		; BF 7F FD 7F
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$B4D3.w		; E0 D3 B4
	jsr ($F0F0.w,X)		; FC F0 F0
	pei ($BD.b)		; D4 BD
	lda $EF4A.w,X		; BD 4A EF
	bcc  80.b		; 90 50
	tad		; 5B
	ldy $F4.b		; A4 F4
	beq  -8.b		; F0 F8
	ora $DF0CF8.l,X		; 1F F8 0C DF
	adc $20.b,S		; 63 20
	ror $0B60.w,X		; 7E 60 0B
	sbc $E0DE.w,X		; FD DE E0
	bpl   1.b		; 10 01
	stz $E8.b,X		; 74 E8
	jsr ($E6DA.w,X)		; FC DA E6
	and ($38.b,X)		; 21 38
	trb $E0.b		; 14 E0
	sbc $22DD.w,X		; FD DD 22
	ora $07.b		; 05 07
	cld		; D8
	inc $F0C0.w,X		; FE C0 F0
	bpl -96.b		; 10 A0
	jsr $EFF5.w		; 20 F5 EF
	bpl  58.b		; 10 3A
	ora $B5.b		; 05 B5
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $3EEE.w		; 0E EE 3E
	and $C1.b,X		; 35 C1
	bmi  21.b		; 30 15
	nop		; EA
	jsr ($3744.w,X)		; FC 44 37
	and $E0.b		; 25 E0
	sed		; F8
	tas		; 1B
	adc $BCDF81.l,X		; 7F 81 DF BC
	xba		; EB
	xce		; FB
	bra  33.b		; 80 21
	cpx $F905.w		; EC 05 F9
	tda		; 7B
	jsr ($C41D.w,X)		; FC 1D C4
	txa		; 8A
	pla		; 68
	jsr ($84C2.w,X)		; FC C2 84
	sbc $BC76.w,X		; FD 76 BC
	ora ($C0.b)		; 12 C0
	sed		; F8
	ora $F10AED.l		; 0F ED 0A F1
	adc $40C090.l		; 6F 90 C0 40
	sbc $EAB411.l,X		; FF 11 B4 EA
	ldy #$13F8.w		; A0 F8 13
	cpx #$40BF.w		; E0 BF 40
	ldy $43.b,X		; B4 43
	inc $C0F2.w,X		; FE F2 C0
	inx		; E8
	phd		; 0B
	pei ($F2.b)		; D4 F2
	bpl  -1.b		; 10 FF
	cmp [$E7.b]		; C7 E7
	sec		; 38
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
	sbc $BFBF84.l,X		; FF 84 BF BF
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne -91.b		; D0 A5
	asl A		; 0A
	sbc $BFBF01.l,X		; FF 01 BF BF
	xce		; FB
	xce		; FB
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	and ($52.b,S),Y		; 33 52
	bit $DCF2.w,X		; 3C F2 DC
	ora ($01.b,X)		; 01 01
	bit $D43C.w,X		; 3C 3C D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	bit $F60C.w,X		; 3C 0C F6
	bmi -63.b		; 30 C1
	trb $B4E0.w		; 1C E0 B4
	cmp $FD.b,S		; C3 FD
	ora $E02F01.l,X		; 1F 01 2F E0
	sbc $FEF7E0.l,X		; FF E0 F7 FE
	jmp.w [$FED4]		; DC D4 FE
	ora [$E4.b]		; 07 E4
	rti		; 40

	and $C38F90.l,X		; 3F 90 8F C3
	cpy #$E2A5.w		; C0 A5 E2
	beq -16.b		; F0 F0
	cmp ($43.b)		; D2 43
	jsr ($E9E0.w,X)		; FC E0 E9
	eor $B97FEA.l		; 4F EA 7F B9
	ora $0FBD.w,X		; 1D BD 0F
	sbc $C00FFE.l,X		; FF FE 0F C0
	cpx #$B0E9.w		; E0 E9 B0
	lda $C0F00F.l,X		; BF 0F F0 C0
	bpl -98.b		; 10 9E
	asl $5F1F.w,X		; 1E 1F 5F
	brk $85.b		; 00 85
	cpx $D3.b		; E4 D3
	lda $4CF3.w		; AD F3 4C
	ora #$37A6.w		; 09 A6 37
	tay		; A8
	sbc ($FF.b,X)		; E1 FF
	ldy #$D3BE.w		; A0 BE D3
	eor #$03BB.w		; 49 BB 03
	ora $FE11.w,Y		; 19 11 FE
	sbc $AA.b,X		; F5 AA
	plb		; AB
	bit $F2.b		; 24 F2
	jsr $13F8.w		; 20 F8 13
	lsr $F6.b		; 46 F6
	dec $20ED.w,X		; DE ED 20
	beq  22.b		; F0 16
	inc $BA01.w,X		; FE 01 BA
	inc $F8E0.w,X		; FE E0 F8
	ora $AA.b,X		; 15 AA
	tax		; AA
	ply		; 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	cpx #$17F8.w		; E0 F8 17
	rol $F2.b		; 26 F2
	adc ($77.b)		; 72 77
	cpx #$0BF8.w		; E0 F8 0B
	eor $B0.b,S		; 43 B0
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $AA,$2F		; 44 2F AA
	cld		; D8
	eor $08.b,S		; 43 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$FFF6.w		; E9 F6 FF
	sed		; F8
	ora #$ECDA.w		; 09 DA EC
	tax		; AA
	ldy #$EBE2.w		; A0 E2 EB
	jsr ($58F1.w,X)		; FC F1 58
	sbc $D8E0.w,X		; FD E0 D8
	bpl  98.b		; 10 62
	xba		; EB
	tsb $5E.b		; 04 5E
	cpx $020C.w		; EC 0C 02
	ldy $E1.b,X		; B4 E1
	sbc $B79CDA.l,X		; FF DA 9C B7
	sty $02.b		; 84 02
	and #$E006.w		; 29 06 E0
	rti		; 40

	stz $EAEB.w		; 9C EB EA
	cpx $07B3.w		; EC B3 07
	plx		; FA
	sta $7FE161.l,X		; 9F 61 E1 7F
	sed		; F8
	sta $FC04C0.l,X		; 9F C0 04 FC
	asl $DE9E.w,X		; 1E 9E DE
	sbc $7F7FEF.l		; EF EF 7F 7F
	eor ($BA.b,S),Y		; 53 BA
	tas		; 1B
	txy		; 9B
	ora ($C0.b,X)		; 01 C0
	php		; 08
	dec $1080.w,X		; DE 80 10
	mvp $76,$3F		; 44 3F 76
	sta $E011.w,X		; 9D 11 E0
	sbc $FF0FFC.l,X		; FF FC 0F FF
	sta ($B8.b,X)		; 81 B8
	tsb $E8.b		; 04 E8
	nop		; EA
	sbc $8FFD.w,X		; FD FD 8F
	sbc $0F0962.l,X		; FF 62 09 0F
	ora ($81.b,X)		; 01 81
	clv		; B8
	tsb $40.b		; 04 40
	mvn $00,$C0		; 54 C0 00
	ora $1ED6E0.l,X		; 1F E0 D6 1E
	ora $19.b,S		; 03 19
	eor #$B0D0.w		; 49 D0 B0
	eor ($F2.b,X)		; 41 F2
	ora #$4CAB.w		; 09 AB 4C
	sbc ($DF.b,X)		; E1 DF
	adc $167D.w,X		; 7D 7D 16
	plx		; FA
	plx		; FA
	cmp [$D7.b],Y		; D7 D7
	stz $FBDC.w,X		; 9E DC FB
	ora $7F09D4.l		; 0F D4 09 7F
	jsr $D77F.w		; 20 7F D7
	eor $3E7F38.l,X		; 5F 38 7F 3E
	adc $F011C0.l,X		; 7F C0 11 F0
	jsr ($205F.w,X)		; FC 5F 20
	eor [$38.b]		; 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $61FF.w,Y		; 39 FF 61
	lda $C089.w		; AD 89 C0
	bra -32.b		; 80 E0
	cpy #$60F0.w		; C0 F0 60
	beq 112.b		; F0 70
	inc $B0B0.w,X		; FE B0 B0
	plx		; FA
	sta [$F0.b]		; 87 F0
	rti		; 40

	bra  32.b		; 80 20
	cpy #$6090.w		; C0 90 60
	bra 112.b		; 80 70
	inc $3F41.w,X		; FE 41 3F
	rti		; 40

	beq -50.b		; F0 CE
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $F77F.w,X		; FD 7F F7
	adc $78.b,X		; 75 78
	trb $FECE.w		; 1C CE FE
	jsr ($7F80.w,X)		; FC 80 7F
	.db $82, $FE, $8A		; 82 FE 8A
	adc $CE023C.l,X		; 7F 3C 02 CE
	sbc $B8B8FC.l,X		; FF FC B8 B8
	sed		; F8
	inc $08FD.w,X		; FE FD 08
	ldy $FECE.w		; AC CE FE
	sbc $FEF6.w,X		; FD F6 FE
	ora #$0FB8.w		; 09 B8 0F
	adc $F8F0E1.l,X		; 7F E1 F0 F8
	ora $F777FD.l		; 0F FD 77 F7
	ror $72FA.w,X		; 7E FA 72
	sta ($28.b,X)		; 81 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $8F3FFA.l,X		; 7F FA 3F 8F
	cpy #$2F31.w		; C0 31 2F
	inc $A8.b,X		; F6 A8
	pla		; 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$BCD0.w		; C0 D0 BC
	jsr ($130C.w,X)		; FC 0C 13
	inc $CC8C.w,X		; FE 8C CC
	jsr ($F8D0.w,X)		; FC D0 F8
	inc $510C.w,X		; FE 0C 51
	sbc $FEFC40.l,X		; FF 40 FC FE
	bvs  -4.b		; 70 FC
	adc [$58.b]		; 67 58
	phd		; 0B
	ora $E15C.w,X		; 1D 5C E1
	.db $82, $58, $58		; 82 58 58
	phd		; 0B
	cpy #$FE40.w		; C0 40 FE
	tya		; 98
	inc $0103.w,X		; FE 03 01
	inc $4BFC.w,X		; FE FC 4B
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($FE.b),Y		; D1 FE
	lda ($F2.b)		; B2 F2
	sbc $90A4F7.l,X		; FF F7 A4 90
	cmp ($FA.b),Y		; D1 FA
	cmp $F1.b		; C5 F1
	and $FEE3.w,Y		; 39 E3 FE
	rol $7A69.w		; 2E 69 7A
	plx		; FA
	bra  60.b		; 80 3C
	jmp ($9CFE.w,X)		; 7C FE 9C
	jmp $185E9E.l		; 5C 9E 5E 18
	ldx $FE.b		; A6 FE
	asl $FEDE.w,X		; 1E DE FE
	cpy #$FEFC.w		; C0 FC FE
	bvc -115.b		; 50 8D
	cpx #$FEFE.w		; E0 FE FE
	inc $B4FC.w,X		; FE FC B4
	inc $F8A0.w,X		; FE A0 F8
	phd		; 0B
	ora $E6.b,S		; 03 E6
	jsl $FEA0FE.l		; 22 FE A0 FE
	bra  -1.b		; 80 FF
	cpy #$FFFF.w		; C0 FF FF
	adc $EBAE.w		; 6D AE EB
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
	pea $90E9.w		; F4 E9 90
	asl A		; 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $91FE.w,X		; FD FE 91
	sbc $AF.b,X		; F5 AF
	cmp #$0C00.w		; C9 00 0C
	cmp ($3F.b,X)		; C1 3F
	sei		; 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	cpy #$F0FC.w		; C0 FC F0
	sty $F8.b		; 84 F8
	clc		; 18
	sta [$FE.b]		; 87 FE
	jmp $407A.w		; 4C 7A 40
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
	phy		; 5A
	sbc ($FE.b),Y		; F1 FE
	sbc $FCFE80.l,X		; FF 80 FE FC
	bvs  96.b		; 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	and ($DE.b),Y		; 31 DE
	bmi  -8.b		; 30 F8
	asl $FED0.w		; 0E D0 FE
	cld		; D8
	sed		; F8
	plp		; 28
	stz $57E9.w		; 9C E9 57
	adc #$C8.b		; 69 C8
	sed		; F8
	php		; 08
	sed		; F8
	sbc #$88.b		; E9 88
	ora $FEFE08.l		; 0F 08 FE FE
	inc $7C0C.w,X		; FE 0C 7C
	ror $3DA7.w,X		; 7E A7 3D
	inc $5EFE.w,X		; FE FE 5E
	eor $FC820C.l,X		; 5F 0C 82 FC
	inc $A1FE.w,X		; FE FE A1
	inc $6602.w,X		; FE 02 66
	phy		; 5A
	sbc $FFFE03.l,X		; FF 03 FE FF
	asl $06.b		; 06 06
	txy		; 9B
	tax		; AA
	ora ($AB.b),Y		; 11 AB
	cpx #$EA.b		; E0 EA
	inc $0578.w,X		; FE 78 05
	cpy #$F6.b		; C0 F6
	ora $77.b		; 05 77
	dec A		; 3A
	tsb $F8F0.w		; 0C F0 F8
	clc		; 18
	lda $F10EE0.l,X		; BF E0 0E F1
	inc $F078.w,X		; FE 78 F0
	inc $F87C.w,X		; FE 7C F8
	cmp $0F.b,S		; C3 0F
	inc $FCFE.w,X		; FE FE FC
	inc $EAEB.w,X		; FE EB EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs -61.b		; 70 C3
	bmi  -2.b		; 30 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	inc $FE15.w,X		; FE 15 FE
	php		; 08
	lda $F2ACFE.l		; AF FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $FCFE0F.l,X		; 1F 0F FE FC
	ldy $FF.b,X		; B4 FF
	ldy $FEF2.w		; AC F2 FE
	bpl  15.b		; 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	eor $FDFEFF.l,X		; 5F FF FE FD
	dec $ADFD.w,X		; DE FD AD
	inc $FEED.w,X		; FE ED FE
	eor $FF1BFF.l,X		; 5F FF 1B FF
	ora ($9C.b,S),Y		; 13 9C
	sbc ($F8.b),Y		; F1 F8
	sta [$FC.b]		; 87 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $FE.b,S		; 43 FE
	lsr $6B5D.w,X		; 5E 5D 6B
	inc $67FF.w,X		; FE FF 67
	eor $FC.b,S		; 43 FC
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($FA77.w,X)		; FC 77 FA
	tay		; A8
	inc $01.b,X		; F6 01
	cpy #$FE.b		; C0 FE
	jsr ($F0F8.w,X)		; FC F8 F0
	inc $C0C8.w,X		; FE C8 C0
	bit $2F30.w,X		; 3C 30 2F
	adc $F0F4.w,X		; 7D F4 F0
	ldy $F0.b		; A4 F0
	jsr ($F1AE.w,X)		; FC AE F1
	inc $F838.w,X		; FE 38 F8
	cpy $0CFC.w		; CC FC 0C
	tsb $FEAA.w		; 0C AA FE
	tsb $FE.b		; 04 FE
	ldx #$F0.b		; A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	sbc $EA9A3F.l,X		; FF 3F 9A EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	tsb $FCB1.w		; 0C B1 FC
	lda ($FE.b,X)		; A1 FE
	inc $FEA9.w,X		; FE A9 FE
	inc $DFD4.w,X		; FE D4 DF
	sbc ($D1.b),Y		; F1 D1
	inc $FF06.w,X		; FE 06 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0305.w		; 0D 05 03
	inc $09F8.w,X		; FE F8 09
	eor ($FF.b,X)		; 41 FF
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	rol $98.b,X		; 36 98
	ora $0F9827.l		; 0F 27 98 0F
	xba		; EB
	nop		; EA
	lda $BEFBAA.l,X		; BF AA FB BE
	ora $94AF3E.l,X		; 1F 3E AF 94
	sta $FBFA8A.l,X		; 9F 8A FA FB
	inc $EBFB.w,X		; FE FB EB
	ora $FE.b,X		; 15 FE
	eor $7E.b,X		; 55 7E
	jmp.w [$7FFE]		; DC FE 7F
	inc $FE75.w,X		; FE 75 FE
	ora $FE.b		; 05 FE
	trb $FF.b		; 14 FF
	cpy $30F2.w		; CC F2 30
	inc $FE1E.w,X		; FE 1E FE
	asl $FEAE.w		; 0E AE FE
	rol A		; 2A
	txa		; 8A
	ldx $119E.w,Y		; BE 9E 11
	jmp ($0EF8.w,X)		; 7C F8 0E
	inc $B10F.w,X		; FE 0F B1
	ora $1FB5FE.l,X		; 1F FE B5 1F
	lda ($1F.b,X)		; A1 1F
	sbc #$FF.b		; E9 FF
	cmp $FEDE.w		; CD DE FE
	sbc $C8DE.w		; ED DE C8
	plx		; FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $2DDA.w		; EC DA 2D
	rti		; 40

	and ($FF.b,S),Y		; 33 FF
	inc $37FC.w,X		; FE FC 37
	ldy $D9.b,X		; B4 D9
	jsr ($65FE.w,X)		; FC FE 65
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	brk $6D.b		; 00 6D
	cpx $FF00.w		; EC 00 FF
	sed		; F8
	and $F8FE04.l		; 2F 04 FE F8
	ora ($06.b)		; 12 06
	inc $FE02.w,X		; FE 02 FE
	sbc $B55542.l,X		; FF 42 55 B5
	brk $40.b		; 00 40
	inc $1CF8.w,X		; FE F8 1C
	sbc $685DF8.l,X		; FF F8 5D 68
	sed		; F8
	ora $09F866.l		; 0F 66 F8 09
	pla		; 68
	sed		; F8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	adc [$01.b]		; 67 01
	and $6B.b		; 25 6B
	inc $3EF8.w,X		; FE F8 3E
	ora #$FE.b		; 09 FE
	sed		; F8
	jsl $F8FFD8.l		; 22 D8 FF F8
	bit $80.b		; 24 80
	inc $18F8.w,X		; FE F8 18
	plp		; 28
	sed		; F8
	rol $4905.w,X		; 3E 05 49
	eor $84.b,X		; 55 84
	beq  10.b		; F0 0A
	sbc $09E8EC.l,X		; FF EC E8 09
	inc $0BF8.w,X		; FE F8 0B
	sbc $F8EEFE.l,X		; FF FE EE F8
	ora ($FF.b),Y		; 11 FF
	sed		; F8
	bit #$B5.b		; 89 B5
	ldy #$66.b		; A0 66
	sed		; F8
	ora ($3E.b),Y		; 11 3E
	sed		; F8
	ora ($42.b),Y		; 11 42
	sed		; F8
	adc ($08.b,X)		; 61 08
	tsb $20F0.w		; 0C F0 20
	dec $FCFE.w,X		; DE FE FC
	stx $C8.b,Y		; 96 C8
	ora ($F0.b)		; 12 F0
	rol A		; 2A
	rol A		; 2A
	beq  42.b		; F0 2A
	ora $2E.b		; 05 2E
	beq  12.b		; F0 0C
	inc $10EE.w,X		; FE EE 10
	sbc [$A4.b],Y		; F7 A4
	tax		; AA
	rti		; 40

	inc $E0B3.w,X		; FE B3 E0
	adc ($88.b)		; 72 88
	cpx #$6A.b		; E0 6A
	jmp $5FE0.w		; 4C E0 5F
	pha		; 48
	cpx $46.b		; E4 46
	sed		; F8
	ora $7AAAAA.l,X		; 1F AA AA 7A
	beq  15.b		; F0 0F
	ror $F0.b,X		; 76 F0
	bpl   4.b		; 10 04
	cpx #$29.b		; E0 29
	cop $E8.b		; 02 E8
	rol A		; 2A
	asl $E8.b		; 06 E8
	ora $D05E.w,Y		; 19 5E D0
	eor $64.b,S		; 43 64
	bne  13.b		; D0 0D
	dec $1DC8.w		; CE C8 1D
	tax		; AA
	tax		; AA
	lda ($E8.b,X)		; A1 E8
	eor $34.b		; 45 34
	beq  59.b		; F0 3B
	ror $4CF4.w,X		; 7E F4 4C
	jsr ($F8FE.w,X)		; FC FE F8
	and $46.b,X		; 35 46
	beq  27.b		; F0 1B
	dec A		; 3A
	beq  85.b		; F0 55
	clv		; B8
	cpx #$97.b		; E0 97
	tax		; AA
	tax		; AA
	bit $E0.b,X		; 34 E0
	lda ($EA.b,S),Y		; B3 EA
	inx		; E8
	tas		; 1B
	rol A		; 2A
	sbc [$F0.b],Y		; F7 F0
	cmp ($EE.b,S),Y		; D3 EE
	bne  12.b		; D0 0C
	cpx $94D0.w		; EC D0 94
	stz $39F0.w,X		; 9E F0 39
	sec		; 38
	cld		; D8
	ora $AAAA.w,X		; 1D AA AA
	stx $B8.b		; 86 B8
	adc $E8.b,S		; 63 E8
	cld		; D8
	and [$7D.b]		; 27 7D
	beq  37.b		; F0 25
	rts		; 60

	clv		; B8
	ora $4A.b,X		; 15 4A
	clv		; B8
	ora $F835.w,X		; 1D 35 F8
	and ($33.b,X)		; 21 33
	sed		; F8
	bit $C1.b		; 24 C1
	sed		; F8
	tas		; 1B
	tax		; AA
	nop		; EA
	jmp ($37B0.w)		; 6C B0 37
	ldx $F8.b,Y		; B6 F8
	eor #$94.b		; 49 94
	inx		; E8
	ror $F05C.w,X		; 7E 5C F0
	and ($C2.b,S),Y		; 33 C2
	cld		; D8
	eor $C07E.w,X		; 5D 7E C0
	ora $D03E.w		; 0D 3E D0
	phd		; 0B
	jsr ($0DD8.w,X)		; FC D8 0D
	ora ($AA.b,X)		; 01 AA
	phx		; DA
	jsr $F8FE.w		; 20 FE F8
	asl A		; 0A
	dec $8FB1.w,X		; DE B1 8F
	tya		; 98
	sei		; 78
	sbc $3F4AF8.l,X		; FF F8 4A 3F
	sed		; F8
	ora $21F074.l		; 0F 74 F0 21
	asl A		; 0A
	inc $19F8.w,X		; FE F8 19
	ror $D5.b		; 66 D5
	bra  -2.b		; 80 FE
	jsr ($FE08.w,X)		; FC 08 FE
	jmp ($3DE8.w)		; 6C E8 3D
	and ($F0.b)		; 32 F0
	eor [$6E.b]		; 47 6E
	cpy #$0F.b		; C0 0F
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cmp ($FA.b,X)		; C1 FA
	ora $20.b		; 05 20
	inc $F536.w,X		; FE 36 F5
	rts		; 60

	rol $F0.b,X		; 36 F0
	ora ($34.b)		; 12 34
	beq  21.b		; F0 15
	cpy #$F0.b		; C0 F0
	jmp ($0BEB.w,X)		; 7C EB 0B
	sbc $577F00.l,X		; FF 00 7F 57
	sed		; F8
	ora $03FCF9.l		; 0F F9 FC 03
	ora [$2E.b]		; 07 2E
	trb $F8EF.w		; 1C EF F8
	asl A		; 0A
	sbc $07FAFF.l,X		; FF FF FA 07
	brk $3E.b		; 00 3E
	tsb $40.b		; 04 40
	asl $91.b		; 06 91
	ora [$11.b],Y		; 17 11
	and [$21.b]		; 27 21
	mvp $FE,$41		; 44 41 FE
	sbc ($FF.b)		; F2 FF
	sbc $54A228.l,X		; FF 28 A2 54
	mvp $4E,$0E		; 44 0E 4E
	asl $0E9F.w		; 0E 9F 0E
	ora $3E3F1E.l,X		; 1F 1E 3F 3E
	adc $A7FE0C.l,X		; 7F 0C FE A7
	sbc $BE1C.w		; ED 1C BE
	sec		; 38
	jmp ($20D7.w,X)		; 7C D7 20
	cpy #$9B.b		; C0 9B
	sed		; F8
	asl $D9E0.w		; 0E E0 D9
	tya		; 98
	asl $D0F0.w		; 0E F0 D0
	cpx #$80.b		; E0 80
	dec $B480.w,X		; DE 80 B4
	beq  10.b		; F0 0A
	sed		; F8
	adc $E00F.w,Y		; 79 0F E0
	phd		; 0B
	bpl  31.b		; 10 1F
	sbc [$E0.b]		; E7 E0
	plp		; 28
	bmi  20.b		; 30 14
	clc		; 18
	tsb $10FE.w		; 0C FE 10
	clc		; 18
	sbc $F0FA07.l		; EF 07 FA F0
	brk $38.b		; 00 38
	brk $76.b		; 00 76
	inc $0418.w,X		; FE 18 04
	eor #$69.b		; 49 69
	ora ($E0.b),Y		; 11 E0
	bit $FE28.w		; 2C 28 FE
	sbc $58B9.w,X		; FD B9 58
	bpl  15.b		; 10 0F
	sbc #$20.b		; E9 20
	bvs  48.b		; 70 30
	adc $FE10.w,X		; 7D 10 FE
	bit $30FE.w,X		; 3C FE 30
	sec		; 38
	sbc $78200F.l,X		; FF 0F 20 78
	brk $70.b		; 00 70
	bra 112.b		; 80 70
	php		; 08
	trb $0E14.w		; 1C 14 0E
	ora [$0E.b]		; 07 0E
	asl A		; 0A
	cop $C0.b		; 02 C0
	mvn $F2,$DA		; 54 DA F2
	inc $CAC4.w,X		; FE C4 CA
	asl $D261.w,X		; 1E 61 D2
	brk $0F.b		; 00 0F
	inc $0702.w,X		; FE 02 07
	inc $E057.w,X		; FE 57 E0
	asl A		; 0A
	rol $C0.b		; 26 C0
	ora $03F0F4.l		; 0F F4 F0 03
	xce		; FB
	phd		; 0B
	asl $06.b		; 06 06
	asl $28C0.w		; 0E C0 28
	trb HTIMEH.w		; 1C 08 42
	trb $3A70.w		; 1C 70 3A
	sbc $0EC6.w,X		; FD C6 0E
	cpy #$3C.b		; C0 3C
	brk $FC.b		; 00 FC
	bne -92.b		; D0 A4
	dec A		; 3A
	sed		; F8
	asl A		; 0A
	txs		; 9A
	jmp ($0F07.w,X)		; 7C 07 0F
	ora ($D0.b,X)		; 01 D0
	ora ($BD.b,X)		; 01 BD
	sbc $FEC288.l,X		; FF 88 C2 FE
	cld		; D8
	beq -42.b		; F0 D6
	sbc ($33.b)		; F2 33
	mvp $73,$FF		; 44 FF 73
	sec		; 38
	inc A		; 1A
	tsb $8645.w		; 0C 45 86
	lda [$C2.b]		; A7 C2
	eor ($62.b),Y		; 51 62
	jsr $22B2.w		; 20 B2 22
	jmp ($C3FC.w,X)		; 7C FC C3
	ldx $00C7.w,Y		; BE C7 00
	sbc [$80.b]		; E7 80
	sbc ($40.b,S),Y		; F3 40
	sbc ($DB.b)		; F2 DB
	sed		; F8
	sbc $26E0FF.l,X		; FF FF E0 26
	ora ($96.b,X)		; 01 96
	ora ($42.b,X)		; 01 42
	php		; 08
	and ($0E.b,X)		; 21 0E
	jsr $0013.w		; 20 13 00
	sbc $FCFF.w,X		; FD FF FC
	sbc $F1FF.w,Y		; F9 FF F1
	ora [$E7.b]		; 07 E7
	stp		; DB
	cmp $BDDFEB.l,X		; DF EB DF BD
	and $FFFFDE.l,X		; 3F DE FF FF
	adc ($00.b)		; 72 00
	sbc $6081FF.l,X		; FF FF 81 60
	php		; 08
	cpy #$20.b		; C0 20
	cmp [$90.b]		; C7 90
	eor $001FC0.l		; 4F C0 1F 00
	sbc $FEFE01.l,X		; FF 01 FE FE
	sbc $29FF.w,X		; FD FF 29
	sbc ($FE.b),Y		; F1 FE
	sbc $DFEFF7.l		; EF F7 EF DF
	cmp $3FFFEF.l,X		; DF EF FF 3F
	cpx #$03.b		; E0 03
	jmp ($76F8.w,X)		; 7C F8 76
	rol $7980.w,X		; 3E 80 79
	brk $77.b		; 00 77
	cpx $1A.b		; E4 1A
	cpx #$5C.b		; E0 5C
	tya		; 98
	ora $20B388.l		; 0F 88 B3 20
	and $EB7FFC.l,X		; 3F FC 7F EB
	sbc $FFF0.w,X		; FD F0 FF
	sbc $FFE3B4.l,X		; FF B4 E3 FF
	cmp $600728.l		; CF 28 07 60
	ora $19815A.l,X		; 1F 5A 81 19
	cpy #$3F.b		; C0 3F
	trb $C32C.w		; 1C 2C C3
	clv		; B8
	ora [$D0.b]		; 07 D0
	ora $DFE680.l		; 0F 80 E6 DF
	sbc $2023BF.l,X		; FF BF 23 20
	inc $F8E7.w,X		; FE E7 F8
	inc $D0BE.w,X		; FE BE D0
	sbc ($C8.b),Y		; F1 C8
	inc $AA55.w,X		; FE 55 AA
	ora $69.b,X		; 15 69
	adc $07D97F.l,X		; 7F 7F D9 07
	sta $83.b,S		; 83 83
	dec $FF.b		; C6 FF
	jsr ($7F07.w,X)		; FC 07 7F
	bra -125.b		; 80 83
	lsr $BC.b,X		; 56 BC
	sei		; 78
	sep #$03		; E2 03
	jsr ($7470.w,X)		; FC 70 74
	sbc ($81.b),Y		; F1 81
	sbc $038080.l,X		; FF 80 80 03
	bne -32.b		; D0 E0
	sed		; F8
	asl A		; 0A
	cpx #$E5.b		; E0 E5
	bcs -32.b		; B0 E0
	cpy #$01.b		; C0 01
	cmp $01F83F.l,X		; DF 3F F8 01
	ora $F8F8.w		; 0D F8 F8
	cmp [$C1.b]		; C7 C1
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	bmi  -2.b		; 30 FE
	ora ($EA.b,X)		; 01 EA
	dec $38.b		; C6 38
	jmp $00FA.w		; 4C FA 00
	beq  23.b		; F0 17
	cpy #$C3.b		; C0 C3
	sbc ($3E.b),Y		; F1 3E
	brk $3F.b		; 00 3F
	sbc $FFC0.w,Y		; F9 C0 FF
	rol $FEE8.w,X		; 3E E8 FE
	sed		; F8
	ora $06.b,S		; 03 06
	sbc $FDE8F7.l,X		; FF F7 E8 FD
	inc $0F.b,X		; F6 0F
	cmp $F8.b,S		; C3 F8
	ora $07308B.l,X		; 1F 8B 30 07
	brk $3B.b		; 00 3B
	bra  30.b		; 80 1E
	adc ($00.b,S),Y		; 73 00
	cpx $E201.w		; EC 01 E2
	php		; 08
	lda ($C7.b,S),Y		; B3 C7
	stz $CF3F.w		; 9C 3F CF
	inc $C7.b		; E6 C7
	cmp $58.b,S		; C3 58
	sty $F3FF.w		; 8C FF F3
	sed		; F8
	sec		; 38
	trb $82E0.w		; 1C E0 82
	ora $C38101.l,X		; 1F 01 81 C3
	adc $BC8196.l		; 6F 96 81 BC
	and #$FF.b		; 29 FF
	cpy #$86.b		; C0 86
	sta $C1C11C.l,X		; 9F 1C C1 C1
	brk $6E.b		; 00 6E
	eor ($03.b,X)		; 41 03
	cmp $58.b,S		; C3 58
	eor [$C3.b]		; 47 C3
	adc #$78.b		; 69 78
	asl $E6.b,X		; 16 E6
	php		; 08
	and ($01.b)		; 32 01
	inc $22.b		; E6 22
	inc $F3.b		; E6 F3
	sbc $CAEA82.l,X		; FF 82 EA CA
	inc $FCE2.w,X		; FE E2 FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $3EE4E7.l,X		; FF E7 E4 3E
	ora $F8FFFA.l,X		; 1F FA FF F8
	ora $E2F13F.l		; 0F 3F F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	sbc $E1D507.l,X		; FF 07 D5 E1
	sed		; F8
	asl $EFE3.w		; 0E E3 EF
	pei ($FC.b)		; D4 FC
	jsr ($F8C7.w,X)		; FC C7 F8
	jsr ($1003.w,X)		; FC 03 10
	bvc  63.b		; 50 3F
	mvn $22,$3C		; 54 3C 22
	plx		; FA
	adc [$E9.b]		; 67 E9
	and ($20.b),Y		; 31 20
	stp		; DB
	cpx $0FD4.w		; EC D4 0F
	plx		; FA
	sbc $39B07C.l,X		; FF 7C B0 39
	ora $F3ECFC.l		; 0F FC EC F3
	beq   2.b		; F0 02
	jsr $80C9.w		; 20 C9 80
	eor $FCCC78.l		; 4F 78 CC FC
	trb $F303.w		; 1C 03 F3
	tsb $6885.w		; 0C 85 68
	brk $78.b		; 00 78
	cpx #$E8.b		; E0 E8
	and ($0C.b,X)		; 21 0C
	and ($E4.b,S),Y		; 33 E4
	sbc ($FC.b),Y		; F1 FC
	brk $E0.b		; 00 E0
	eor ($1C.b,X)		; 41 1C
	ldy $E0B0.w,X		; BC B0 E0
	clc		; 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	inc $1BF3.w,X		; FE F3 1B
	ora $84471F.l,X		; 1F 1F 47 84
	stz $9CE9.w,X		; 9E E9 9C
	ora $F1.b,S		; 03 F1
	ldy $ACF4.w,X		; BC F4 AC
	ora [$28.b]		; 07 28
	ora $FE70F0.l		; 0F F0 70 FE
	jsr $0F08.w		; 20 08 0F
	eor [$FC.b]		; 47 FC
	bit $64.b		; 24 64
	sbc ($F0.b),Y		; F1 F0
	sta $0428E4.l,X		; 9F E4 28 04
	bvc -66.b		; 50 BE
	sbc $F8FF5D.l,X		; FF 5D FF F8
	asl A		; 0A
	eor $59FC.w,X		; 5D FC 59
	eor ($08.b,X)		; 41 08
	inc $C686.w,X		; FE 86 C6
	sbc ($05.b),Y		; F1 05
	sed		; F8
	tsb $E0C5.w		; 0C C5 E0
	sed		; F8
	asl $AE51.w		; 0E 51 AE
	sbc $F0.b		; E5 F0
	asl $E0EA.w		; 0E EA E0
	sbc $E1FCB3.l,X		; FF B3 FC E1
	sed		; F8
	phd		; 0B
	pld		; 2B
	rol A		; 2A
	cpx #$F8.b		; E0 F8
	ora #$3F.b		; 09 3F
	cpy #$40.b		; C0 40
	inc $E8E1.w,X		; FE E1 E8
	asl A		; 0A
	rti		; 40

	cpx #$FE.b		; E0 FE
	rti		; 40

	inc $9248.w,X		; FE 48 92
	jmp ($F8E0.w)		; 6C E0 F8
	ora #$40.b		; 09 40
	ldy #$F8.b		; A0 F8
	phd		; 0B
	rti		; 40

	plp		; 28
	cmp $A0.b,X		; D5 A0
	inx		; E8
	tsb $4640.w		; 0C 40 46
	beq   9.b		; F0 09
	.db $82, $7F, $D0		; 82 7F D0
	sbc ($60.b),Y		; F1 60
	sed		; F8
	phd		; 0B
	sta ($7C.b,X)		; 81 7C
	adc $BCF180.l,X		; 7F 80 F1 BC
	inc $FCFE.w,X		; FE FE FC
	ora $87.b,S		; 03 87
	ror $A0FD.w,X		; 7E FD A0
	lsr $D8.b		; 46 D8
	ora $F5EE1D.l		; 0F 1D EE F5
	asl A		; 0A
	txa		; 8A
	adc $79425F.l,X		; 7F 5F 42 79
	sbc ($FE.b)		; F2 FE
	sbc ($1F.b,X)		; E1 1F
	cpx #$0A.b		; E0 0A
	eor $EA.b,S		; 43 EA
	tax		; AA
	adc $E201FE.l,X		; 7F FE 01 E2
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $78C20B.l,X		; FF 0B C2 78
	sbc $80.b,S		; E3 80
	cmp $F609F8.l,X		; DF F8 09 F6
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc ($33.b,X)		; E1 33
	sbc $E6965F.l,X		; FF 5F 96 E6
	sbc $F319.w,X		; FD 19 F3
	cpx #$EE.b		; E0 EE
	stp		; DB
	bcs -28.b		; B0 E4
	sta $02F1.w		; 8D F1 02
	sei		; 78
	sbc $00.b,X		; F5 00
.INDEX 16
	rep #$1F		; C2 1F
	inc $803A.w,X		; FE 3A 80
	jmp ($09F8.w,X)		; 7C F8 09
	bne -48.b		; D0 D0
	asl A		; 0A
	eor $DC.b,X		; 55 DC
	ora $0A8A3F.l		; 0F 3F 8A 0A
	rti		; 40

	stz $F8E0.w,X		; 9E E0 F8
	asl A		; 0A
	txa		; 8A
	asl $FF.b,X		; 16 FF
	inc $E0FF.w,X		; FE FF E0
	sbc $44.b,S		; E3 44
	eor $E02C.w		; 4D 2C E0
	sbc $F16BA6.l,X		; FF A6 6B F1
	sbc $8309F8.l,X		; FF F8 09 83
	sta ($5E.b,X)		; 81 5E
	nop		; EA
	inc $9826.w,X		; FE 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $EA08.w,X		; 1E 08 EA
	sta ($F1.b,X)		; 81 F1
	ldy #$09F8.w		; A0 F8 09
	inc $CA.b,X		; F6 CA
	wai		; CB
	sbc ($0F.b),Y		; F1 0F
	and $CA4F3F.l		; 2F 3F 4F CA
	lda $C0E027.l,X		; BF 27 E0 C0
	pea $0DE4.w		; F4 E4 0D
	bmi -65.b		; 30 BF
	rti		; 40

	cmp ($7F.b,X)		; C1 7F
	rti		; 40

	inc $E6E6.w,X		; FE E6 E6
	cmp $00B191.l,X		; DF 91 B1 00
	lda $A4DF00.l		; AF 00 DF A4
	and $E7E122.l,X		; 3F 22 E1 E7
	ora $205F.w,Y		; 19 5F 20
	lda $28BF4F.l,X		; BF 4F BF 28
	stx $29.b,Y		; 96 29
	cld		; D8
.ACCU 8
	sep #$E5		; E2 E5
	cpx #$9E09.w		; E0 09 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	sta $83.b		; 85 83
	rts		; 60

	ldx $F5.b		; A6 F5
	jsr ($2BD5.w,X)		; FC D5 2B
	pld		; 2B
	adc [$26.b],Y		; 77 26
	jsr ($EE01.w,X)		; FC 01 EE
	ora $01DE.w,Y		; 19 DE 01
	dex		; CA
	dec $B3FD.w,X		; DE FD B3
	adc $6C.b,S		; 63 6C
	and $DBC8FC.l		; 2F FC C8 DB
	bpl  23.b		; 10 17
	bpl 106.b		; 10 6A
	jsr ($131C.w,X)		; FC 1C 13
	tsb $132F.w		; 0C 2F 13
	cmp $27FFC3.l,X		; DF C3 FF 27
	ora $7CE4EF.l,X		; 1F EF E4 7C
	sbc [$FF.b]		; E7 FF
	tda		; 7B
	dec $BB87.w		; CE 87 BB
	sta ($7B.b,X)		; 81 7B
	rti		; 40

	adc $0801.w,X		; 7D 01 08
	ror $18.b		; 66 18
	brk $F9.b		; 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($3FFF.w,X)		; 7C FF 3F
	ldy $EC.b,X		; B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$C06B.w		; E0 6B C0
	sbc [$A0.b]		; E7 A0
	stp		; DB
	bvc  61.b		; 50 3D
	jsr $FE47.w		; 20 47 FE
	lda $0609E0.l,X		; BF E0 09 06
	ora [$09.b],Y		; 17 09
	and $1F6F17.l		; 2F 17 6F 1F
	cmp $C33F24.l,X		; DF 24 3F C3
	bcs  90.b		; B0 5A
	rol $E1.b,X		; 36 E1
	sbc $9F00.w,X		; FD 00 9F
	dex		; CA
	sbc ($6D.b,X)		; E1 6D
	dex		; CA
	phy		; 5A
	sbc $227F.w,X		; FD 7F 22
	cmp $541F.w,X		; DD 1F 54
	sbc $55AAFD.l,X		; FF FD AA 55
	eor $AA.b,X		; 55 AA
	jsr ($E365.w,X)		; FC 65 E3
	adc $FF09F0.l,X		; 7F F0 09 FF
	sed		; F8
	asl A		; 0A
	ply		; 7A
	cmp $E0.b,X		; D5 E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	beq -32.b		; F0 E0
	sed		; F8
	ora $E366.w		; 0D 66 E3
	cpx #$5EFF.w		; E0 FF 5E
	sbc ($A4.b),Y		; F1 A4
	tax		; AA
	sbc $FEE03B.l,X		; FF 3B E0 FE
	bit $E6.b		; 24 E6
	cpx #$ACFC.w		; E0 FC AC
	sbc ($D9.b,X)		; E1 D9
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	ora $E0.b,X		; 15 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	sbc $FE0FFD.l,X		; FF FD 0F FE
	jsr ($031C.w,X)		; FC 1C 03
	rol A		; 2A
	xba		; EB
	cpx #$FC.b		; E0 FC
	cop $C8.b		; 02 C8
	tsb $FC.b		; 04 FC
	sbc ($B0.b),Y		; F1 B0
	cpy #$FF.b		; C0 FF
	cmp $47.b,X		; D5 47
	sep #$C0		; E2 C0
	cpx #$F8.b		; E0 F8
	ora #$E2.b		; 09 E2
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$01.b		; 09 01
	ora ($FC.b,X)		; 01 FC
	cpy #$63.b		; C0 63
	plb		; AB
	sta $C0.b,S		; 83 C0
	sed		; F8
	ora #$FE.b		; 09 FE
	cmp ($E9.b)		; D2 E9
	inx		; E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $C0E7.w,X		; FD E7 C0
	asl $C6.b		; 06 C6
	tax		; AA
	lda ($D9.b)		; B2 D9
	rti		; 40

	cld		; D8
	ora #$1F.b		; 09 1F
	cmp $F0.b,X		; D5 F0
	cpx #$F8.b		; E0 F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	tax		; AA
	tax		; AA
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
	sbc ($2F.b,X)		; E1 2F
	jsr ($FDE0.w,X)		; FC E0 FD
	ora $FD.b,S		; 03 FD
	ora [$FA.b]		; 07 FA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	phb		; 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cmp $CDC4FF.l,X		; DF FF C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $EFE9A2.l,X		; 5F A2 E9 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	ora $033F01.l		; 0F 01 3F 03
	sbc $334F6B.l		; EF 6B 4F 33
	lda $7A7F5F.l,X		; BF 5F 7F 7A
	cmp ($BF.b),Y		; D1 BF
	ora $630F1F.l,X		; 1F 1F 0F 63
	sbc ($5F.b),Y		; F1 5F
	sbc ($54.b)		; F2 54
	sbc $D96431.l,X		; FF 31 64 D9
	ora $18.b,S		; 03 18
	php		; 08
	phk		; 4B
	brk $55.b		; 00 55
	brk $AA.b		; 00 AA
	jsr ($FFAB.w,X)		; FC AB FF
	sbc $07FB93.l,X		; FF 93 FB 07
	cmp $878F37.l		; CF 37 8F 87
	ora $3718.w,X		; 1D 18 37
	jsr $40CF.w		; 20 CF 40
	cmp $40E8D7.l,X		; DF D7 E8 40
	sta $18F780.l		; 8F 80 F7 18
	pea $E2A6.w		; F4 A6 E2
	and $F318FE.l,X		; 3F FE 18 F3
	tax		; AA
	sbc $FD2AC7.l,X		; FF C7 2A FD
	sbc $9A.b,X		; F5 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$5B.b		; E0 5B
	ldx $D5.b		; A6 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	beq -72.b		; F0 B8
	dex		; CA
	cpx #$A0.b		; E0 A0
	ora ($9E.b),Y		; 11 9E
	asl A		; 0A
	sbc $0F.b,S		; E3 0F
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $3DCA7E.l,X		; FF 7E CA 3D
	ldy #$F5.b		; A0 F5
	plp		; 28
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
	rti		; 40

	ldy $80.b		; A4 80
	jsr ($A0EF.w,X)		; FC EF A0
	eor ($A0.b)		; 52 A0
	beq   1.b		; F0 01
	jsr ($E0D8.w,X)		; FC D8 E0
	phd		; 0B
	inc $0BF8.w,X		; FE F8 0B
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	cmp $F7.b,S		; C3 F7
	dey		; 88
	lsr $620E.w,X		; 5E 0E 62
	xce		; FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sbc ($F1.b,X)		; E1 F1
	sta $FDFA70.l		; 8F 70 FA FD
	cop $FB.b		; 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	cmp [$D8.b]		; C7 D8
	rts		; 60

	adc [$40.b]		; 67 40
	ora $FCBF2A.l,X		; 1F 2A BF FC
	cmp $25EA36.l,X		; DF 36 EA 25
	phb		; 8B
	ora $CC447F.l		; 0F 7F 44 CC
	jsr ($E180.w,X)		; FC 80 E1
	cld		; D8
	ldy #$E4.b		; A0 E4
	lda $F322FC.l,X		; BF FC 22 F3
	cop $F7.b		; 02 F7
	ora $ED.b		; 05 ED
	php		; 08
	ror $C1.b		; 66 C1
	and $FD.b		; 25 FD
	plx		; FA
	xce		; FB
	sbc $FFFC4F.l,X		; FF 4F FC FF
	sed		; F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	rti		; 40

	bra  15.b		; 80 0F
	cpy #$FC.b		; C0 FC
	pei ($87.b)		; D4 87
	sbc $A8BF83.l,X		; FF 83 BF A8
	rts		; 60

	cmp $FD.b,S		; C3 FD
	ldy $21FC.w,X		; BC FC 21
	jsr ($71FC.w,X)		; FC FC 71
	jsr ($3506.w,X)		; FC 06 35
	ldy $D876.w,X		; BC 76 D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $8701.w,X		; FE 01 87
	dec $A0BB.w		; CE BB A0
	adc $BF.b		; 65 BF
	cmp $0AF8E4.l,X		; DF E4 F8 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $FEE09B.l,X		; 7F 9B E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F824E1.l		; 0F E1 24 F8
	ora $F878.w		; 0D 78 F8
	rti		; 40

	bra  -1.b		; 80 FF
	tay		; A8
	eor [$9B.b],Y		; 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	adc $FD.b,X		; 75 FD
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	eor $5EF1E0.l		; 4F E0 F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	jsr ($0AA1.w,X)		; FC A1 0A
	sta $F8.b,X		; 95 F8
	clc		; 18
	adc $6EFEE4.l		; 6F E4 FE 6E
	cmp ($3C.b)		; D2 3C
	nop		; EA
	tay		; A8
	tax		; AA
	clc		; 18
	sbc $2CC12E.l,X		; FF 2E C1 2C
	phx		; DA
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	jsr ($C80B.w,X)		; FC 0B C8
	lda $01FE.w,Y		; B9 FE 01
	lsr $F481.w,X		; 5E 81 F4
	cop $EB.b		; 02 EB
	jsr $09D0.w		; 20 D0 09
	adc $3C3678.l,X		; 7F 78 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $BF8860.l,X		; 5F 60 88 BF
	bra 127.b		; 80 7F
	bra  -8.b		; 80 F8
	bvc -94.b		; 50 A2
	phk		; 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	bne -20.b		; D0 EC
	inc $B9BB.w,X		; FE BB B9
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
	sbc $AAD5.w,Y		; F9 D5 AA
	sta ($6E.b,X)		; 81 6E
	rti		; 40

	cmp $18EE.w		; CD EE 18
	ora $488C.w,X		; 1D 8C 48
	phd		; 0B
	.db $42, $FE		; 42 FE
	sed		; F8
	tsb $8063.w		; 0C 63 80
	and $58B6.w,Y		; 39 B6 58
	eor $6055AA.l		; 4F AA 55 60
	jsr ($F864.w,X)		; FC 64 F8
	ora ($C3.b),Y		; 11 C3
	sei		; 78
	adc #$70F6.w		; 69 F6 70
	and $0EF8FE.l		; 2F FE F8 0E
	bra  -2.b		; 80 FE
	sed		; F8
	clc		; 18
	cmp ($F8.b)		; D2 F8
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	rol A		; 2A
	eor $AB.b,X		; 55 AB
	stx $08.b		; 86 08
	ora [$72.b],Y		; 17 72
	sed		; F8
	ora ($78.b,S),Y		; 13 78
	beq  57.b		; F0 39
	ror $F0.b,X		; 76 F0
	phd		; 0B
	stz $F1.b,X		; 74 F1
	bra  -2.b		; 80 FE
	sed		; F8
	clc		; 18
	stx $68.b		; 86 68
	jsr $56AA.w		; 20 AA 56
	sbc ($70.b)		; F2 70
	jsl $2EF8FE.l		; 22 FE F8 2E
	sta ($70.b)		; 92 70
	trb $5E.b		; 14 5E
	sed		; F8
	ora $F858.w,Y		; 19 58 F8
	asl $F8FE.w		; 0E FE F8
	ora $FE82.w		; 0D 82 FE
	sed		; F8
	jsr $FCD8.w		; 20 D8 FC
	plb		; AB
	eor $F6.b,X		; 55 F6
	sbc ($84.b)		; F2 84
	inc $14F8.w,X		; FE F8 14
	bvs -16.b		; 70 F0
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	bpl -128.b		; 10 80
	inc $1AF8.w,X		; FE F8 1A
	dex		; CA
	sed		; F8
	clc		; 18
	inc $E8.b,X		; F6 E8
	ora $28AB55.l,X		; 1F 55 AB 28
	beq  53.b		; F0 35
	dec $FC.b		; C6 FC
	lda ($F8.b)		; B2 F8
	and $E8.b,X		; 35 E8
	inx		; E8
	ora #$EBEA.w		; 09 EA EB
	rti		; 40

	inc $11F8.w,X		; FE F8 11
	sty $E0.b,X		; 94 E0
	eor #$5556.w		; 49 56 55
	rol A		; 2A
	ora ($06.b)		; 12 06
	beq  15.b		; F0 0F
	lsr A		; 4A
	inc $20F8.w,X		; FE F8 20
	pei ($E8.b)		; D4 E8
	ora ($8C.b,S),Y		; 13 8C
	sed		; F8
	and #$E09E.w		; 29 9E E0
	ora #$F822.w		; 09 22 F8
	ora ($58.b,S),Y		; 13 58
	bpl -35.b		; 10 DD
	eor $AA.b,X		; 55 AA
	jsr $12F0.w		; 20 F0 12
	tax		; AA
	cpx #$0C.b		; E0 0C
	rep #$40		; C2 40
	sta ($BA.b,S),Y		; 93 BA
	beq  25.b		; F0 19
	rol $45.b,X		; 36 45
	inc $12F8.w,X		; FE F8 12
	tax		; AA
	tax		; AA
	.db $82, $D0, $3E		; 82 D0 3E
	rol A		; 2A
	bne  25.b		; D0 19
	asl $D0.b,X		; 16 D0
	inc A		; 1A
	sei		; 78
	beq  49.b		; F0 31
	stz $1D28.w,X		; 9E 28 1D
	inc $DAFC.w,X		; FE FC DA
	bpl  69.b		; 10 45
	tsb $30.b		; 04 30
	pld		; 2B
	eor $3C55.w,Y		; 59 55 3C
	bne  23.b		; D0 17
	php		; 08
	inc $F8FF.w,X		; FE FF F8
	jsr ($F08C.w,X)		; FC 8C F0
	bit $16.b,X		; 34 16
	iny		; C8
	and $8A.b		; 25 8A
	sed		; F8
	eor #$F894.w		; 49 94 F8
	ora $FFAAAD.l,X		; 1F AD AA FF
	sed		; F8
	and [$D8.b],Y		; 37 D8
	cpx #$11.b		; E0 11
	sta $FE.b		; 85 FE
	sed		; F8
	clc		; 18
	ldx $E0.b		; A6 E0
	ora [$CE.b],Y		; 17 CE
	sed		; F8
	ora $F8CA.w,Y		; 19 CA F8
	tas		; 1B
	jmp ($16E0.w)		; 6C E0 16
	asl A		; 0A
	tax		; AA
	inc $42B0.w,X		; FE B0 42
	rti		; 40

	tay		; A8
	and $A49E.w,X		; 3D 9E A4
	inc $A0A2.w,X		; FE A2 A0
	ora $F8FE.w		; 0D FE F8
	ora ($F3.b),Y		; 11 F3
	jsr $AA77.w		; 20 77 AA
	lsr $1C.b,X		; 56 1C
	cpx #$1B.b		; E0 1B
	mvp $AC,$FE		; 44 FE AC
	tay		; A8
	ora $BE70.w		; 0D 70 BE
	inc $FC.b,X		; F6 FC
	cpy $B0.b		; C4 B0
	ora $F8FE8A.l		; 0F 8A FE F8
	trb $2C.b		; 14 2C
	bcs  43.b		; B0 2B
	eor $55.b,X		; 55 55
	cpy #$D8.b		; C0 D8
	sbc ($84.b,S),Y		; F3 84
	bne  45.b		; D0 2D
	jmp $DA0FF0.l		; 5C F0 0F DA
	tay		; A8
	ora [$42.b],Y		; 17 42
	cpy #$0A.b		; C0 0A
	rol $F0.b		; 26 F0
	inc A		; 1A
	bvs -96.b		; 70 A0
	and $26.b		; 25 26
	pei ($5F.b)		; D4 5F
	adc ($64.b),Y		; 71 64
	beq  40.b		; F0 28
	sbc $20DF00.l,X		; FF 00 DF 20
	rol $54.b,X		; 36 54
	inc $F8.b		; E6 F8
	bpl -24.b		; 10 E8
	inc $0511.w		; EE 11 05
	eor $7978.w,X		; 5D 78 79
	ora ($7B.b)		; 12 7B
	dec $10AB.w,X		; DE AB 10
	ora #$FCFF.w		; 09 FF FC
	cmp $7CDC21.l,X		; DF 21 DC 7C
	cmp $7F.b,X		; D5 7F
	mvp $0A,$62		; 44 62 0A
	ror A		; 6A
	sbc $8526.w,X		; FD 26 85
	inc $7ED1.w,X		; FE D1 7E
	inx		; E8
	sbc $FE7FD4.l,X		; FF D4 7F FE
	and $92DFFD.l		; 2F FD DF 92
	adc ($F0.b,X)		; 61 F0
	adc ($B7.b,X)		; 61 B7
	pha		; 48
	adc $FBFB7F.l,X		; 7F 7F FB FB
	eor $2F2F5F.l,X		; 5F 5F 2F 2F
	clv		; B8
	inc $1FFF.w,X		; FE FF 1F
	lda $03.b,S		; A3 03
	cmp ($01.b),Y		; D1 01
	inx		; E8
	brk $1F.b		; 00 1F
	cpx #$47.b		; E0 47
	sed		; F8
	inc $FB0F.w,X		; FE 0F FB
	ora [$F6.b]		; 07 F6
	beq -78.b		; F0 B2
	jsr ($C1FE.w,X)		; FC FE C1
	adc $DFFB.w,Y		; 79 FB DF
	cmp $0F0FD8.l,X		; DF D8 0F 0F
	ora $E0.b,S		; 03 E0
	sbc $0FB203.l,X		; FF 03 B2 0F
	adc $3F7F.w,Y		; 79 7F 3F
	and $B10808.l,X		; 3F 08 08 B1
	eor $78.b		; 45 78
	ldy #$F7.b		; A0 F7
	ora $AFC0BC.l		; 0F BC C0 AF
	cmp ($2D.b),Y		; D1 2D
	adc ($F7.b,X)		; 61 F7
	cpy #$FE.b		; C0 FE
	sbc [$F7.b],Y		; F7 F7
	tsx		; BA
	tsx		; BA
	bcs  14.b		; B0 0E
	jmp.w [$EEE4]		; DC E4 EE
	inc $799D.w		; EE 9D 79
	tsx		; BA
	adc $7D7D.w,Y		; 79 7D 7D
	and $55DAFC.l		; 2F FC DA 55
	adc $2A.b,X		; 75 2A
	rol A		; 2A
	and $FC.b,X		; 35 FC
	jsr ($BD82.w,X)		; FC 82 BD
	bra  -1.b		; 80 FF
	txa		; 8A
	sbc ($FF.b),Y		; F1 FF
	cmp $DAE6D5.l,X		; DF D5 E6 DA
	phx		; DA
	jsr ($EAFD.w,X)		; FC FD EA
	plx		; FA
	sbc $F5.b,X		; F5 F5
	xba		; EB
	xba		; EB
	sbc $5757FF.l,X		; FF FF 57 57
	ldy #$A0.b		; A0 A0
	ora ($12.b)		; 12 12
	and $DF.b		; 25 DF
	cop $FE.b		; 02 FE
	ora $6F.b		; 05 6F
	asl A		; 0A
	sbc $FF6F14.l,X		; FF 14 6F FF
	sbc $5FFDA8.l,X		; FF A8 FD 5F
	sbc $11F7ED.l,X		; FF ED F7 11
	and $E6030D.l		; 2F 0D 03 E6
	sbc ($52.b,X)		; E1 52
	eor ($F3.b),Y		; 51 F3
	sbc ($7F.b),Y		; F1 7F
	and $79F8DB.l,X		; 3F DB F8 79
	sei		; 78
	adc #$D778.w		; 69 78 D7
	cmp [$9D.b],Y		; D7 9D
	eor ($BF.b),Y		; 51 BF
	lda $FE0EFF.l		; AF FF 0E FE
	ldy $73FF.w,X		; BC FF 73
	sta [$FF.b]		; 87 FF
	sta [$EF.b]		; 87 EF
	inx		; E8
	sbc ($80.b),Y		; F1 80
	inc $89.b,X		; F6 89
	sbc $C4FBC0.l,X		; FF C0 FB C4
	adc $E0FF8C.l		; 6F 8C FF E0
	adc $DF3FF8.l,X		; 7F F8 3F DF
	sbc ($80.b),Y		; F1 80
	sbc $1A77C0.l,X		; FF C0 77 1A
	sbc $F8E0E0.l,X		; FF E0 E0 F8
	cpx #$61.b		; E0 61
	sbc $F60810.l,X		; FF 10 08 F6
	ora #$32F0.w		; 09 F0 32
	phx		; DA
	sta [$21.b]		; 87 21
	sbc $0A.b,X		; F5 0A
	cpy #$40.b		; C0 40
	trb $DC.b		; 14 DC
	xce		; FB
	bcs  -2.b		; B0 FE
	ror $10F0.w		; 6E F0 10
	inc $F701.w,X		; FE 01 F7
	php		; 08
	inx		; E8
	stp		; DB
	bit $12.b		; 24 12
	eor $C2.b,X		; 55 C2
	pea $F080.w		; F4 80 F0
	ora ($EC.b),Y		; 11 EC
	cpy #$EF.b		; C0 EF
	jmp ($BEF1.w,X)		; 7C F1 BE
	sbc ($71.b)		; F2 71
	bpl -96.b		; 10 A0
	sed		; F8
	ora ($E2.b)		; 12 E2
	cmp $12D824.l,X		; DF 24 D8 12
	eor ($15.b,X)		; 41 15
	ora ($DE.b,X)		; 01 DE
	ldy #$F8.b		; A0 F8
	ora ($CF.b),Y		; 11 CF
	sbc ($9E.b),Y		; F1 9E
	sep #$41		; E2 41
	mvn $F8,$F6		; 54 F6 F8
	sbc $10A8.w,Y		; F9 A8 10
	cpy #$58.b		; C0 58
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
	tsb $E2D7.w		; 0C D7 E2
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
	bra  32.b		; 80 20
	ora ($DF.b,S),Y		; 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	and [$D4.b]		; 27 D4
	beq  63.b		; F0 3F
	sbc $BCBE0C.l,X		; FF 0C BE BC
.ACCU 16
	rep #$E9		; C2 E9
	inc $BDEA.w		; EE EA BD
	sbc $E00C0C.l,X		; FF 0C 0C E0
	jsr ($0180.w,X)		; FC 80 01
	pea $F1C4.w		; F4 C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($FF1F.w,X)		; FC 1F FF
	ora $77.b,S		; 03 77
	sei		; 78
	xba		; EB
	dey		; 88
	adc ($FE.b)		; 72 FE
	stp		; DB
	stp		; DB
	ora [$23.b]		; 07 23
	ora $A06903.l,X		; 1F 03 69 A0
	eor $10.b,S		; 43 10
	sbc $105F.w,X		; FD 5F 10
	sed		; F8
	adc ($12.b),Y		; 71 12
	beq -61.b		; F0 C3
	jsr ($1CF7.w,X)		; FC F7 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $EFFF.w,X		; FE FF EF
	rol A		; 2A
	eor ($87.b),Y		; 51 87
	sbc $1BFCFF.l,X		; FF FF FC 1B
	tas		; 1B
	phx		; DA
	tsa		; 3B
	and $787B.w,Y		; 39 7B 78
	xce		; FB
	sed		; F8
	adc ($70.b),Y		; 71 70
	sta [$FF.b]		; 87 FF
	and ($31.b),Y		; 31 31
	rol $AA3E.w,X		; 3E 3E AA
	ora $FEC60F.l		; 0F 0F C6 FE
	sta [$FF.b]		; 87 FF
	ora [$77.b]		; 07 77
	sbc $FF8F1D.l,X		; FF 1D 8F FF
	dec $C1BE.w		; CE BE C1
	sbc $F0FEC0.l		; EF C0 FE F0
	sbc $923245.l		; EF 45 32 92
	adc $E0BE.w,X		; 7D BE E0
	phy		; 5A
	cop $01.b		; 02 01
	ora $FC0C.w		; 0D 0C FC
	adc $EB.b,S		; 63 EB
	sbc $F3FCBE.l,X		; FF BE FC F3
	bpl -38.b		; 10 DA
	xce		; FB
	cpx $01.b		; E4 01
	inc $80.b,X		; F6 80
	cpx $E9.b		; E4 E9
	cpx $E4.b		; E4 E4
	sbc #$C3BF.w		; E9 BF C3
	beq 127.b		; F0 7F
	inc $7FBF.w,X		; FE BF 7F
	sbc $E47F.w,X		; FD 7F E4
	nop		; EA
	cpx #$E0.b		; E0 E0
	jsr ($34F0.w,X)		; FC F0 34
	and $D4F0.w		; 2D F0 D4
	lda $4ABD.w,X		; BD BD 4A
	sbc $F4A490.l		; EF 90 A4 F4
	mvn $F0,$AD		; 54 AD F0
	sed		; F8
	ora $DF0CF8.l,X		; 1F F8 0C DF
	adc $A0.b,S		; 63 A0
	sbc ($FE.b,X)		; E1 FE
	sed		; F8
	ora #$34FD.w		; 09 FD 34
	cpy #$10.b		; C0 10
	ldy #$AE.b		; A0 AE
	inx		; E8
	jsr ($F8DA.w,X)		; FC DA F8
	xba		; EB
	cpx #$F0.b		; E0 F0
	ora ($EA.b)		; 12 EA
	jsr ($22DD.w,X)		; FC DD 22
	cld		; D8
	inc $A0E0.w,X		; FE E0 A0
	cpy #$F0.b		; C0 F0
	bpl -96.b		; 10 A0
	jsr $EFF5.w		; 20 F5 EF
	bpl  58.b		; 10 3A
	dec $A021.w		; CE 21 A0
	ror $FF.b,X		; 76 FF
	sed		; F8
	asl $3EEE.w		; 0E EE 3E
	and $C1.b,X		; 35 C1
	bmi  21.b		; 30 15
	nop		; EA
	jsr ($E044.w,X)		; FC 44 E0
	sed		; F8
	tas		; 1B
	adc $253181.l,X		; 7F 81 31 25
	sta $FB9CE1.l		; 8F E1 9C FB
	bra  33.b		; 80 21
	cpx $F905.w		; EC 05 F9
	tda		; 7B
	jsr ($EC75.w,X)		; FC 75 EC
	txa		; 8A
	pla		; 68
	jsr ($84C2.w,X)		; FC C2 84
	sbc $5C76.w,X		; FD 76 5C
	ora ($C0.b)		; 12 C0
	sed		; F8
	ora $F10AED.l		; 0F ED 0A F1
	adc $40C090.l		; 6F 90 C0 40
	sbc $69E91E.l,X		; FF 1E E9 69
	ora $A0.b,X		; 15 A0
	sed		; F8
	ora ($E0.b),Y		; 11 E0
	lda $43B440.l,X		; BF 40 B4 43
	inc $E3.b,X		; F6 E3
	ply		; 7A
	bne  12.b		; D0 0C
	inc $FF3F.w,X		; FE 3F FF
	bpl -25.b		; 10 E7
	sec		; 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $EE43BF.l,X		; 3F BF 43 EE
	inc A		; 1A
	jmp ($3F44.w,X)		; 7C 44 3F
	ldy $EB41.w		; AC 41 EB
	xba		; EB
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	inc $FFFD.w,X		; FE FD FF
	sty $04.b		; 84 04
	cpx #$00.b		; E0 00
	cpx #$01.b		; E0 01
	and $0AA5D0.l,X		; 3F D0 A5 0A
	sbc $BFBF01.l,X		; FF 01 BF BF
	ora $DE.b,X		; 15 DE
	xce		; FB
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
	php		; 08
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$3FF0]		; DC F0 3F
	pei ($E4.b)		; D4 E4
	rti		; 40

	and $C38F90.l,X		; 3F 90 8F C3
	cpy #$A5.b		; C0 A5
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	beq  24.b		; F0 18
.INDEX 8
	sep #$D2		; E2 D2
	cpx #$E9.b		; E0 E9
	eor $B97FEA.l		; 4F EA 7F B9
	ora $7FF7.w,X		; 1D F7 7F
	lda $FF0F.w,X		; BD 0F FF
	cpy #$E0.b		; C0 E0
	sbc #$B0.b		; E9 B0
	lda $C0F00F.l,X		; BF 0F F0 C0
	bpl -98.b		; 10 9E
	asl $5F1F.w,X		; 1E 1F 5F
	brk $28.b		; 00 28
	cpx $D3.b		; E4 D3
	lda $4CF3.w		; AD F3 4C
	ora #$BC.b		; 09 BC
	eor ($A6.b,X)		; 41 A6
	sbc ($FF.b,X)		; E1 FF
	ldy #$BE.b		; A0 BE
	cmp ($49.b,S),Y		; D3 49
	tyx		; BB
	ora $19.b,S		; 03 19
	ora ($55.b),Y		; 11 55
	eor $F5FE.w,X		; 5D FE F5
	jsl $F820E4.l		; 22 E4 20 F8
	ora ($46.b),Y		; 11 46
	inc $DE.b,X		; F6 DE
	sbc $F020.w		; ED 20 F0
	asl $FE.b,X		; 16 FE
	ora ($BA.b,X)		; 01 BA
	inc $5555.w,X		; FE 55 55
	cpx #$F8.b		; E0 F8
	ora $7A.b,X		; 15 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	cpx #$F8.b		; E0 F8
	ora [$95.b],Y		; 17 95
	tyx		; BB
	rol $F2.b		; 26 F2
	cpx #$F8.b		; E0 F8
	phd		; 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $7B.b		; 06 7B
	eor $C0.b,X		; 55 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $43,$D8		; 44 D8 43
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$A0.b		; E9 A0
	iny		; C8
	tsb $ECDA.w		; 0C DA EC
.ACCU 8
	sep #$EB		; E2 EB
	eor $50.b,X		; 55 50
	jsr ($58F1.w,X)		; FC F1 58
	sbc $D8E0.w,X		; FD E0 D8
	bpl  98.b		; 10 62
	xba		; EB
	tsb $5E.b		; 04 5E
	cpx $E1B4.w		; EC B4 E1
	asl $01.b		; 06 01
	sbc $CF78DA.l,X		; FF DA 78 CF
	sty $81.b		; 84 81
	sty $06.b,X		; 94 06
	cpx #$40.b		; E0 40
	stz $EAEB.w		; 9C EB EA
	cpx $03D9.w		; EC D9 03
	plx		; FA
	sta $7FE161.l,X		; 9F 61 E1 7F
	sed		; F8
	sta $FE02C0.l,X		; 9F C0 02 FE
	asl $DE9E.w,X		; 1E 9E DE
	sbc $7F7FEF.l		; EF EF 7F 7F
	tas		; 1B
	ldx $FB.b		; A6 FB
	txy		; 9B
	phy		; 5A
	wai		; CB
	php		; 08
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FF.b		; E0 FF
	jsr ($F763.w,X)		; FC 63 F7
	ora $B881FF.l		; 0F FF 81 B8
	tsb $E8.b		; 04 E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($F8.b,X)		; 01 F8
	ldx $81.b,Y		; B6 81
	clv		; B8
	tsb $40.b		; 04 40
	mvn $62,$C0		; 54 C0 62
	cmp #$03.b		; C9 03
	ora $D049.w,Y		; 19 49 D0
	inc $B0.b,X		; F6 B0
	bcs  65.b		; B0 41
	sbc ($09.b)		; F2 09
	plb		; AB
	jmp $DFE1.w		; 4C E1 DF
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	bne -65.b		; D0 BF
	stz $FBDC.w,X		; 9E DC FB
	ora $7F09D4.l		; 0F D4 09 7F
	jsr $387F.w		; 20 7F 38
	adc $FE7F3E.l,X		; 7F 3E 7F FE
	plx		; FA
	cpy #$11.b		; C0 11
	beq  -4.b		; F0 FC
	eor $384720.l,X		; 5F 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $8186.w,Y		; 39 86 81
	cpy #$80.b		; C0 80
	cpx #$0F.b		; E0 0F
	cmp ($C0.b,S),Y		; D3 C0
	beq  96.b		; F0 60
	beq 112.b		; F0 70
	inc $B0B0.w,X		; FE B0 B0
	beq  64.b		; F0 40
	and $20800C.l,X		; 3F 0C 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	plx		; FA
	cmp ($CE.b,X)		; C1 CE
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $F77F.w,X		; FD 7F F7
	adc $CE.b,X		; 75 CE
	inc $E3FC.w,X		; FE FC E3
	cpx #$80.b		; E0 80
	adc $8AFE82.l,X		; 7F 82 FE 8A
	adc $FCFFCE.l,X		; 7F CE FF FC
	clv		; B8
	ora ($40.b),Y		; 11 40
	clv		; B8
	sed		; F8
	inc $CEFD.w,X		; FE FD CE
	inc $60FD.w,X		; FE FD 60
	sbc $FEF6.w,X		; FD F6 FE
	adc $F00F78.l,X		; 7F 78 0F F0
	sed		; F8
	ora $F777FD.l		; 0F FD 77 F7
	ror $D70B.w,X		; 7E 0B D7
	plx		; FA
	adc ($81.b)		; 72 81
	plp		; 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	and $61FFF6.l		; 2F F6 FF 61
	tay		; A8
	pla		; 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$D0.b		; C0 D0
	ldy $FEFC.w,X		; BC FC FE
	sty $98CC.w		; 8C CC 98
	rts		; 60

	jsr ($F8D0.w,X)		; FC D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($AA88.w,X)		; FC 88 AA
	inc $FC70.w,X		; FE 70 FC
	lda $A910FF.l		; AF FF 10 A9
	tsx		; BA
	sei		; 78
	phd		; 0B
	sta $6B.b,S		; 83 6B
	ora ($AA.b,X)		; 01 AA
	cpy #$40.b		; C0 40
	inc $FE98.w,X		; FE 98 FE
	ora $01.b,S		; 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $4902.w,X		; FE 02 49
	tya		; 98
	dec $FED1.w		; CE D1 FE
	lda ($F2.b)		; B2 F2
	sbc $14D1F7.l,X		; FF F7 D1 14
	and ($FA.b)		; 32 FA
	cmp $F1.b		; C5 F1
	and $FEE3.w,Y		; 39 E3 FE
	rol $4DFA.w		; 2E FA 4D
	ora $7C3C80.l		; 0F 80 3C 7C
	inc $5C9C.w,X		; FE 9C 5C
	stz $C35E.w,X		; 9E 5E C3
	trb $FE.b		; 14 FE
	asl $FEDE.w,X		; 1E DE FE
	cpy #$FC.b		; C0 FC
	inc $AAE0.w,X		; FE E0 AA
	eor ($FE.b),Y		; 51 FE
	inc $FCFE.w,X		; FE FE FC
	ldy $FE.b,X		; B4 FE
	ldy #$F8.b		; A0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	ldy #$FE.b		; A0 FE
	ora $71.b,X		; 15 71
	adc ($C2.b)		; 72 C2
	bvs -60.b		; 70 C4
	sbc $FE6DFC.l,X		; FF FC 6D FE
	jsr $5DE0.w		; 20 E0 5D
	sbc [$FE.b],Y		; F7 FE
	inc $FEC6.w,X		; FE C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $0304.w,X		; FE 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $FBDFFF.l,X		; FF FF DF FB
	xce		; FB
	cmp $DFCFD7.l,X		; DF D7 CF DF
	dec $96DE.w		; CE DE 96
	stx $D6.b		; 86 D6
	dec $F7.b		; C6 F7
	inc $35.b		; E6 35
	phx		; DA
	sbc $FF2827.l,X		; FF 27 28 FF
	bmi  -1.b		; 30 FF
	and ($FF.b),Y		; 31 FF
	adc $39FF.w,Y		; 79 FF 39
	sbc $6CFF19.l,X		; FF 19 FF 6C
	sed		; F8
	cmp #$FE.b		; C9 FE
	asl $C6.b		; 06 C6
	ora [$D7.b],Y		; 17 D7
	ora $6AFCD7.l,X		; 1F D7 FC 6A
	jsr ($D557.w,X)		; FC 57 D5
	sed		; F8
	inc $FFE8.w,X		; FE E8 FF
	inc $68FC.w,X		; FE FC 68
	inc $FEFE.w,X		; FE FE FE
	ldy #$FE.b		; A0 FE
	inc $68FE.w,X		; FE FE 68
	inc $E7BC.w,X		; FE BC E7
	cpx #$FF.b		; E0 FF
	rts		; 60

	rts		; 60

	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl  -2.b		; 10 FE
	ora $90A4.w,X		; 1D A4 90
	beq -80.b		; F0 B0
	sbc $03.b,S		; E3 03
	ora $70.b		; 05 70
	xba		; EB
	lda $0BFF.w		; AD FF 0B
	plx		; FA
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $91FE.w,X		; FD FE 91
	sbc $AF.b,X		; F5 AF
	cmp #$00.b		; C9 00
	tsb $E078.w		; 0C 78 E0
	ora $F1FE7C.l,X		; 1F 7C FE F1
	sbc $3000.w,X		; FD 00 30
	cpy #$FC.b		; C0 FC
	beq -124.b		; F0 84
	sed		; F8
	sty $FEC3.w		; 8C C3 FE
	and $72.b		; 25 72
	rti		; 40

	inc $C060.w,X		; FE 60 C0
	inc $2070.w,X		; FE 70 20
	cpy #$E0.b		; C0 E0
	inc $F25C.w,X		; FE 5C F2
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ldy #$30.b		; A0 30
	bra  64.b		; 80 40
	inc $6090.w,X		; FE 90 60
	inc $47AE.w,X		; FE AE 47
	brk $B8.b		; 00 B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	jsr ($F6FE.w,X)		; FC FE F6
	ora $FC08E0.l,X		; 1F E0 08 FC
	php		; 08
	ora [$0C.b]		; 07 0C
	ora [$FC.b]		; 07 FC
	inc $38D5.w,X		; FE D5 38
	and $FEEF1C.l,X		; 3F 1C EF FE
	inc $F7.b		; E6 F7
	ldx $B7.b		; A6 B7
	ldx $F7FE.w		; AE FE F7
	ldx $BF.b,Y		; B6 BF
	asl A		; 0A
	cmp ($FE.b),Y		; D1 FE
	sbc $0AD179.l,X		; FF 79 D1 0A
	eor $FAFE.w,Y		; 59 FE FA
	jsr ($1A61.w,X)		; FC 61 1A
	ora $8FFEC7.l		; 0F C7 FE 8F
	eor [$FE.b]		; 47 FE
	tax		; AA
	eor [$AE.b],Y		; 57 AE
	brk $FC.b		; 00 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($F504.w,X)		; FC 04 F5
	ror A		; 6A
	jsr ($00FC.w,X)		; FC FC 00
	xce		; FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	sta ($FE.b,X)		; 81 FE
	jsr ($F454.w,X)		; FC 54 F4
	phy		; 5A
	sbc ($80.b),Y		; F1 80
	sbc $FCFEFF.l,X		; FF FF FE FC
	bvs  96.b		; 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  24.b		; 30 18
	sbc $D00EF8.l		; EF F8 0E D0
	inc $F8D8.w,X		; FE D8 F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	plb		; AB
	ldy $F8.b,X		; B4 F8
	php		; 08
	sed		; F8
	cmp $50.b		; C5 50
	ora $FEFE08.l		; 0F 08 FE FE
	inc $7C0C.w,X		; FE 0C 7C
	ror $1ED3.w,X		; 7E D3 1E
	inc $5EFE.w,X		; FE FE 5E
	eor $FC820C.l,X		; 5F 0C 82 FC
	inc $A1FE.w,X		; FE FE A1
	inc $3302.w,X		; FE 02 33
	lda $03FF.w		; AD FF 03
	inc $06FF.w,X		; FE FF 06
	asl $D1.b		; 06 D1
	ldx #$88.b		; A2 88
	eor $E0.b,X		; 55 E0
	nop		; EA
	inc $0578.w,X		; FE 78 05
	cpy #$F6.b		; C0 F6
	inc $DA.b,X		; F6 DA
	plx		; FA
	rts		; 60

	asl $1875.w		; 0E 75 18
	beq  -8.b		; F0 F8
	asl $E0BF.w		; 0E BF E0
	asl $FEF1.w		; 0E F1 FE
	sei		; 78
	beq  -2.b		; F0 FE
	jmp ($86F8.w,X)		; 7C F8 86
	ora $FCFEFE.l,X		; 1F FE FE FC
	inc $EAEB.w,X		; FE EB EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs -122.b		; 70 86
	adc ($FE.b,X)		; 61 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	inc $FE15.w,X		; FE 15 FE
	bpl  94.b		; 10 5E
	inc $F2AC.w,X		; FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $FCFE0F.l,X		; 1F 0F FE FC
	adc #$FF.b		; 69 FF
	ldy $FEF2.w		; AC F2 FE
	bpl  15.b		; 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $BFFF.w,X		; FD FF BF
	mvn $FE,$FF		; 54 FF FE
	sbc $FDDE.w,X		; FD DE FD
	lda $EDFE.w		; AD FE ED
	inc $FF5F.w,X		; FE 5F FF
	tas		; 1B
	sbc $0FF013.l,X		; FF 13 F0 0F
	stz $FCF1.w		; 9C F1 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $BD.b,S		; 43 BD
	tsx		; BA
	inc $FE6B.w,X		; FE 6B FE
	sbc $FC4367.l,X		; FF 67 43 FC
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($EE.b,X)		; C1 EE
	pea $FCFE.w		; F4 FE FC
	tay		; A8
	inc $01.b,X		; F6 01
	cpy #$FE.b		; C0 FE
	jsr ($F0F8.w,X)		; FC F8 F0
	inc $C0C8.w,X		; FE C8 C0
	bit $FA5F.w,X		; 3C 5F FA
	bmi -12.b		; 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $FEF1.w		; AE F1 FE
	sec		; 38
	sed		; F8
	cpy $18FC.w		; CC FC 18
	mvn $FE,$0C		; 54 0C FE
	tsb $FE.b		; 04 FE
	ldx #$F0.b		; A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	sbc $EA9A7F.l,X		; FF 7F 9A EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	clc		; 18
	.db $62, $FC, $A1		; 62 FC A1
	inc $A9FE.w,X		; FE FE A9
	inc $A9FE.w,X		; FE FE A9
	lda $FED1F1.l,X		; BF F1 D1 FE
	asl $FF.b		; 06 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0305.w		; 0D 05 03
	sta $FE.b,S		; 83 FE
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	ldx $80.b,Y		; B6 80
	ora $0F80A7.l		; 0F A7 80 0F
	xba		; EB
	nop		; EA
	lda $3FFBAA.l,X		; BF AA FB 3F
	jmp ($AFBE.w,X)		; 7C BE AF
	sty $9F.b,X		; 94 9F
	txa		; 8A
	plx		; FA
	xce		; FB
	inc $EBFB.w,X		; FE FB EB
	ora $FE.b,X		; 15 FE
	eor $FC.b,X		; 55 FC
	clv		; B8
	inc $FE7F.w,X		; FE 7F FE
	adc $FE.b,X		; 75 FE
	ora $FE.b		; 05 FE
	trb $FF.b		; 14 FF
	adc ($FC.b,X)		; 61 FC
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	inc $8A2A.w,X		; FE 2A 8A
	ldx $F99E.w,Y		; BE 9E F9
	beq  17.b		; F0 11
	asl $0FFE.w		; 0E FE 0F
	lda ($1F.b),Y		; B1 1F
	inc $1FB5.w,X		; FE B5 1F
	lda ($D3.b,X)		; A1 D3
	sbc $DECD1F.l,X		; FF 1F CD DE
	inc $DEED.w,X		; FE ED DE
	iny		; C8
	plx		; FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $805B.w		; EC 5B 80
	phx		; DA
	and ($FF.b,S),Y		; 33 FF
	inc $37FC.w,X		; FE FC 37
	ldy $D9.b,X		; B4 D9
	jsr ($02FE.w,X)		; FC FE 02
	brk $65.b		; 00 65
	brk $F0.b		; 00 F0
	brk $A1.b		; 00 A1
	cmp $00.b,X		; D5 00
	sbc $F8FE09.l,X		; FF 09 FE F8
	rti		; 40

	ora ($FE.b,X)		; 01 FE
	sed		; F8
	rol $F8AA.w		; 2E AA F8
	and $EBF8FF.l		; 2F FF F8 EB
	dec $36.b,X		; D6 36
	cop $FE.b		; 02 FE
	sed		; F8
	rti		; 40

	asl $FE.b		; 06 FE
	sed		; F8
	bit $B6.b		; 24 B6
	sed		; F8
	and [$04.b]		; 27 04
	inc $05FD.w,X		; FE FD 05
	bvs -16.b		; 70 F0
	ora #$40.b		; 09 40
	pei ($5A.b)		; D4 5A
	inc $FE00.w,X		; FE 00 FE
	sed		; F8
	ora $AFF8FF.l		; 0F FF F8 AF
	bra  -2.b		; 80 FE
	sed		; F8
	ora ($3A.b)		; 12 3A
	beq 114.b		; F0 72
	.db $82, $FE, $F8		; 82 FE F8
	asl A		; 0A
	plb		; AB
	phy		; 5A
	ror $F6.b		; 66 F6
	stx $FE.b		; 86 FE
	sed		; F8
	asl A		; 0A
	rti		; 40

	beq  61.b		; F0 3D
	inc $55F8.w,X		; FE F8 55
	cpx $2EEA.w		; EC EA 2E
	cpx #$0E.b		; E0 0E
	bra  -2.b		; 80 FE
	sed		; F8
	bpl  85.b		; 10 55
	eor $44.b,X		; 55 44
	cpx #$A8.b		; E0 A8
	tsa		; 3B
	inx		; E8
	ora [$EA.b],Y		; 17 EA
	sed		; F8
	pld		; 2B
	inx		; E8
	inc $F8FF.w,X		; FE FF F8
	ora #$1C.b		; 09 1C
	cld		; D8
	and [$18.b]		; 27 18
	dec $F865.w,X		; DE 65 F8
	jsr $5555.w		; 20 55 55
	stz $6AE0.w,X		; 9E E0 6A
	asl $F0.b,X		; 16 F0
	ora #$26.b		; 09 26
	cld		; D8
	sta ($74.b,S),Y		; 93 74
	jmp.w [$F8FE]		; DC FE F8
	phd		; 0B
	rts		; 60

	jmp.w [$E0EA]		; DC EA E0
	ora #$FF.b		; 09 FF
	sed		; F8
	sta $55.b,X		; 95 55
	lda [$06.b],Y		; B7 06
	iny		; C8
	pld		; 2B
	cpx #$E8.b		; E0 E8
	rol $A4.b		; 26 A4
	sed		; F8
	asl $FCFE.w		; 0E FE FC
	inc $09F0.w		; EE F0 09
	tsb $40.b		; 04 40
	inc $05FC.w,X		; FE FC 05
	tax		; AA
	tax		; AA
	inc $17F8.w,X		; FE F8 17
	clv		; B8
	beq  14.b		; F0 0E
	inc $1BF8.w,X		; FE F8 1B
	sec		; 38
	cpx #$31.b		; E0 31
	cpx $2FB8.w		; EC B8 2F
	inc $0BF8.w,X		; FE F8 0B
	stz $3DF0.w		; 9C F0 3D
	inc $1FF8.w,X		; FE F8 1F
	phy		; 5A
	cmp $DE.b,X		; D5 DE
	beq  10.b		; F0 0A
	lda ($E8.b)		; B2 E8
	ora ($FE.b)		; 12 FE
	sed		; F8
	ora $FE85.w,X		; 1D 85 FE
	sed		; F8
	asl $F8D8.w		; 0E D8 F8
	ora $13F0B6.l,X		; 1F B6 F0 13
	inc $75F8.w,X		; FE F8 75
	asl $9BB8.w,X		; 1E B8 9B
	ror $55.b		; 66 55
	asl A		; 0A
	inc $1EF8.w,X		; FE F8 1E
	php		; 08
	inc $E082.w,X		; FE 82 E0
	eor ($98.b,X)		; 41 98
	beq -113.b		; F0 8F
	asl $F8.b		; 06 F8
	and ($FE.b,X)		; 21 FE
	sed		; F8
	phd		; 0B
	eor $55.b,X		; 55 55
	rol $D8.b		; 26 D8
	and $F83C.w,X		; 3D 3C F8
	pld		; 2B
	dec $98E6.w,X		; DE E6 98
	clv		; B8
	ora ($F8.b),Y		; 11 F8
	tay		; A8
	tsb $ABF6.w		; 0C F6 AB
	inc $09F8.w,X		; FE F8 09
	sed		; F8
	tay		; A8
	ldy $AD.b,X		; B4 AD
	nop		; EA
	sbc $5CFCF8.l,X		; FF F8 FC 5C
	cpy #$2C.b		; C0 2C
	bra  -2.b		; 80 FE
	sed		; F8
	asl $92.b,X		; 16 92
	tay		; A8
	lsr $C05A.w,X		; 5E 5A C0
	adc ($CA.b,S),Y		; 73 CA
	bne  78.b		; D0 4E
	lda $01FD.w,Y		; B9 FD 01
	ora [$FE.b],Y		; 17 FE
	ora $07.b,S		; 03 07
	rol $EF1C.w		; 2E 1C EF
	sed		; F8
	asl A		; 0A
	plx		; FA
	ora [$00.b]		; 07 00
	rol $4004.w,X		; 3E 04 40
	asl $FF.b		; 06 FF
	sbc $111791.l,X		; FF 91 17 11
	and [$21.b]		; 27 21
	mvp $FE,$41		; 44 41 FE
	sbc ($28.b)		; F2 28
	ldx #$54.b		; A2 54
	mvp $4E,$0E		; 44 0E 4E
	asl $4FFF.w		; 0E FF 4F
	sta $1E1F0E.l,X		; 9F 0E 1F 1E
	and $0C7F3E.l,X		; 3F 3E 7F 0C
	inc $BE1C.w,X		; FE 1C BE
	sec		; 38
	jmp ($43DB.w,X)		; 7C DB 43
	cmp [$20.b],Y		; D7 20
	cpy #$AF.b		; C0 AF
	sed		; F8
	asl $F1E0.w		; 0E E0 F1
	sed		; F8
	ora $F008.w		; 0D 08 F0
	bra -34.b		; 80 DE
	bra  71.b		; 80 47
	sbc $0A9840.l,X		; FF 40 98 0A
	sed		; F8
	brk $F0.b		; 00 F0
	and $100998.l		; 2F 98 09 10
	cpx #$28.b		; E0 28
	bmi  20.b		; 30 14
	clc		; 18
	sec		; 38
	and $10FE0C.l,X		; 3F 0C FE 10
	clc		; 18
	sbc $3800F0.l		; EF F0 00 38
	brk $D0.b		; 00 D0
	sta $18FE76.l		; 8F 76 FE 18
	tsb $49.b		; 04 49
	adc #$2C.b		; 69 2C
	plp		; 28
	brk $7F.b		; 00 7F
	inc $B9FD.w,X		; FE FD B9
	cli		; 58
	bpl  32.b		; 10 20
	bvs  48.b		; 70 30
	adc $4810.w,X		; 7D 10 48
	sbc $FE3CFE.l,X		; FF FE 3C FE
	bmi  56.b		; 30 38
	jsr $0078.w		; 20 78 00
	bvs -128.b		; 70 80
	adc $087010.l,X		; 7F 10 70 08
	trb $0E14.w		; 1C 14 0E
	ora [$0E.b]		; 07 0E
	asl A		; 0A
	mvn $CC,$40		; 54 40 CC
	cpx #$30.b		; E0 30
	cpy $CA.b		; C4 CA
	asl $0F00.w,X		; 1E 00 0F
	inc $0702.w,X		; FE 02 07
	adc #$7A.b		; 69 7A
	inc $E8C5.w,X		; FE C5 E8
	asl A		; 0A
	cmp ($F0.b)		; D2 F0
	ora $0BFB03.l		; 0F 03 FB 0B
	asl $06.b		; 06 06
	asl $2178.w		; 0E 78 21
	cpy #$28.b		; C0 28
	trb $7008.w		; 1C 08 70
	dec A		; 3A
	sbc $0EC6.w,X		; FD C6 0E
	asl $C07E.w		; 0E 7E C0
	bit $A400.w,X		; 3C 00 A4
	dec A		; 3A
	sed		; F8
	asl A		; 0A
	txs		; 9A
	jmp ($0F07.w,X)		; 7C 07 0F
	ora ($68.b,X)		; 01 68
	mvp $01,$D0		; 44 D0 01
	lda $FEFF.w,X		; BD FF FE
	cld		; D8
	beq -31.b		; F0 E1
	sbc $33F2D6.l,X		; FF D6 F2 33
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
	cpx #$26.b		; E0 26
	ora ($96.b,X)		; 01 96
	ora ($42.b,X)		; 01 42
	php		; 08
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
	cpy #$20.b		; C0 20
	cmp [$90.b]		; C7 90
	eor $FFFFC0.l		; 4F C0 FF FF
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
	cpx #$5C.b		; E0 5C
	tya		; 98
	lda ($20.b,S),Y		; B3 20
	and $EB7FFC.l,X		; 3F FC 7F EB
	mvp $FD,$F8		; 44 F8 FD
	sbc $FFE3B4.l,X		; FF B4 E3 FF
	cmp $1FFF28.l		; CF 28 FF 1F
	ora [$60.b]		; 07 60
	ora $19815A.l,X		; 1F 5A 81 19
	cpy #$2C.b		; C0 2C
	cmp $B8.b,S		; C3 B8
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
	cpx #$E5.b		; E0 E5
	inx		; E8
	bra -80.b		; 80 B0
	cpx #$C0.b		; E0 C0
	and $6F01F8.l,X		; 3F F8 01 6F
	clc		; 18
	ora $F8F8.w		; 0D F8 F8
	cmp [$C1.b]		; C7 C1
	cpx #$F8.b		; E0 F8
	asl A		; 0A
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
	sbc $FC03.w,X		; FD 03 FC
	inc $0F.b,X		; F6 0F
	cmp $8B.b,S		; C3 8B
	bmi   7.b		; 30 07
	brk $3B.b		; 00 3B
	bra  15.b		; 80 0F
	adc ($1E.b),Y		; 71 1E
	adc ($00.b,S),Y		; 73 00
	cpx $B301.w		; EC 01 B3
	cmp [$9C.b]		; C7 9C
	and $E384CF.l,X		; 3F CF 84 E3
	inc $58.b		; E6 58
	sty $F3FF.w		; 8C FF F3
	sed		; F8
	sec		; 38
	sbc ($80.b,X)		; E1 80
	trb $82E0.w		; 1C E0 82
	ora $966FC3.l,X		; 1F C3 6F 96
	cpy #$94.b		; C0 94
	sta ($BC.b,X)		; 81 BC
	cpy #$86.b		; C0 86
	sta $1C81FF.l,X		; 9F FF 81 1C
	cmp ($C1.b,X)		; C1 C1
	brk $6E.b		; 00 6E
	eor ($58.b,X)		; 41 58
	eor [$C3.b]		; 47 C3
	adc #$61.b		; 69 61
	tsb $78.b		; 04 78
	asl $E6.b,X		; 16 E6
	ora ($E6.b,X)		; 01 E6
	jsl $E64119.l		; 22 19 41 E6
	sbc ($FF.b,S),Y		; F3 FF
	dex		; CA
	inc $FCE2.w,X		; FE E2 FC
	adc $72.b,X		; 75 72
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $FA1FE7.l,X		; FF E7 1F FA
	sbc $3F0FF8.l,X		; FF F8 0F 3F
	sbc ($9F.b),Y		; F1 9F
	nop		; EA
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sta $07FF7C.l,X		; 9F 7C FF 07
	sed		; F8
	asl $EFE3.w		; 0E E3 EF
	pei ($FC.b)		; D4 FC
	jsr ($0870.w,X)		; FC 70 08
	cmp [$F8.b]		; C7 F8
	jsr ($3F03.w,X)		; FC 03 3F
	mvn $A8,$3C		; 54 3C A8
	clc		; 18
	jsl $E967FA.l		; 22 FA 67 E9
	stp		; DB
	cpx $0FD4.w		; EC D4 0F
	bpl  62.b		; 10 3E
	plx		; FA
	sbc $FC0F39.l,X		; FF 39 0F FC
	cpx $F0F3.w		; EC F3 F0
	cld		; D8
	and [$02.b]		; 27 02
	jmp $8081.w		; 4C 81 80
	cpy $1CFC.w		; CC FC 1C
	ora $F3.b,S		; 03 F3
	tsb $3C85.w		; 0C 85 3C
	pea $0068.w		; F4 68 00
	sei		; 78
	cpx #$0C.b		; E0 0C
	and ($E4.b,S),Y		; 33 E4
	sbc ($FC.b),Y		; F1 FC
	brk $10.b		; 00 10
	lsr $41E0.w,X		; 5E E0 41
	trb $18E0.w		; 1C E0 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	inc $D8F3.w,X		; FE F3 D8
	and $1B.b,S		; 23 1B
	ora $E99E1F.l,X		; 1F 1F 9E E9
	stz $F103.w		; 9C 03 F1
	ldy $03C2.w,X		; BC C2 03
	pea $0FAC.w		; F4 AC 0F
	beq 112.b		; F0 70
	inc $1420.w,X		; FE 20 14
	ora ($08.b)		; 12 08
	ora $F1FC47.l		; 0F 47 FC F1
	beq -97.b		; F0 9F
	and ($02.b)		; 32 02
	cpx $28.b		; E4 28
	ldx $A8FF.w,Y		; BE FF A8
	ldy $FF5D.w		; AC 5D FF
	sed		; F8
	asl A		; 0A
	eor $08FC.w,X		; 5D FC 08
	inc $C686.w,X		; FE 86 C6
	sbc ($A0.b),Y		; F1 A0
	plp		; 28
	ora $F8.b		; 05 F8
	tsb $E0C5.w		; 0C C5 E0
	sed		; F8
	asl $F0E5.w		; 0E E5 F0
	asl $E0EA.w		; 0E EA E0
	sbc $B315D7.l,X		; FF D7 15 B3
	jsr ($F8E1.w,X)		; FC E1 F8
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora #$3F.b		; 09 3F
	cpy #$40.b		; C0 40
	inc $E8E1.w,X		; FE E1 E8
	asl A		; 0A
	ora $24.b,X		; 15 24
	rti		; 40

	cpx #$FE.b		; E0 FE
	rti		; 40

	inc $E06C.w,X		; FE 6C E0
	sed		; F8
	ora #$40.b		; 09 40
	eor #$94.b		; 49 94
	ldy #$F8.b		; A0 F8
	phd		; 0B
	rti		; 40

	ldy #$E8.b		; A0 E8
	tsb $4640.w		; 0C 40 46
	beq   9.b		; F0 09
	nop		; EA
	rti		; 40

	.db $82, $7F, $D0		; 82 7F D0
	sbc ($60.b),Y		; F1 60
	sed		; F8
	phd		; 0B
	adc $BEF180.l,X		; 7F 80 F1 BE
	ror $FEBC.w,X		; 7E BC FE
	inc $03FC.w,X		; FE FC 03
	sta [$7E.b]		; 87 7E
	lsr $D8.b		; 46 D8
	ora $F5EE1D.l		; 0F 1D EE F5
	asl A		; 0A
	txa		; 8A
	adc $FF505F.l,X		; 7F 5F 50 FF
	.db $42, $79		; 42 79
	sbc ($1F.b)		; F2 1F
	cpx #$0A.b		; E0 0A
	eor $EA.b,S		; 43 EA
	tax		; AA
	adc $E201FE.l,X		; 7F FE 01 E2
	ora $5705F0.l,X		; 1F F0 05 57
	cld		; D8
	cmp [$FF.b]		; C7 FF
	sei		; 78
	sbc $80.b,S		; E3 80
	cmp $F609F8.l,X		; DF F8 09 F6
	sbc ($F0.b,X)		; E1 F0
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc $E6965F.l,X		; FF 5F 96 E6
	sbc $9919.w,X		; FD 19 99
	adc $E0F3.w		; 6D F3 E0
	inc $8DE4.w		; EE E4 8D
	sbc ($02.b),Y		; F1 02
	sei		; 78
	sbc $00.b,X		; F5 00
	cli		; 58
	ora $1FC2.w,X		; 1D C2 1F
	inc $F87C.w,X		; FE 7C F8
	ora #$D0.b		; 09 D0
	bne  10.b		; D0 0A
	eor $DC.b,X		; 55 DC
	ora $20403F.l		; 0F 3F 40 20
	txa		; 8A
	asl A		; 0A
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	txa		; 8A
	asl $4F.b,X		; 16 4F
	ldx #$FF.b		; A2 FF
	inc $E0FF.w,X		; FE FF E0
	sbc $2C.b,S		; E3 2C
	cpx #$FF.b		; E0 FF
	ldx $A6.b		; A6 A6
	rti		; 40

	rtl		; 6B

	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$83.b		; 09 83
	nop		; EA
	inc $AF26.w,X		; FE 26 AF
	cpy #$98.b		; C0 98
	sbc $E703.w,X		; FD 03 E7
	asl $EA08.w,X		; 1E 08 EA
	ldy #$F8.b		; A0 F8
	ora #$F6.b		; 09 F6
	sed		; F8
	sta [$CA.b],Y		; 97 CA
	wai		; CB
	sbc ($0F.b),Y		; F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	cpx #$C0.b		; E0 C0
	pea $E09F.w		; F4 9F E0
	cpx $0D.b		; E4 0D
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
	sbc $E0.b		; E5 E0
	ora #$CB.b		; 09 CB
.INDEX 16
	rep #$9E		; C2 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	ldx $F5.b		; A6 F5
	jsr ($41D5.w,X)		; FC D5 41
	ora ($2B.b,S),Y		; 13 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $DE19.w		; EE 19 DE
	ora ($CA.b,X)		; 01 CA
	inc $DE17.w,X		; FE 17 DE
	sbc $63B3.w,X		; FD B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	bpl 106.b		; 10 6A
	jsr ($E1FE.w,X)		; FC FE E1
	trb $0C13.w		; 1C 13 0C
	and $27DF13.l		; 2F 13 DF 27
	ora $7CE4EF.l,X		; 1F EF E4 7C
	sbc [$7F.b]		; E7 7F
	ldy #$7BFF.w		; A0 FF 7B
	dec $BB87.w		; CE 87 BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	ror $BE.b		; 66 BE
	sbc $F90018.l,X		; FF 18 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$C06B.w		; E0 6B C0
	sbc [$1F.b]		; E7 1F
	sbc $50DBA0.l,X		; FF A0 DB 50
	and $4720.w,X		; 3D 20 47
	cpx #$0609.w		; E0 09 06
	ora [$09.b],Y		; 17 09
	and $585F17.l		; 2F 17 5F 58
	adc $24DF1F.l		; 6F 1F DF 24
	and $E136C3.l,X		; 3F C3 36 E1
	sbc $9F00.w,X		; FD 00 9F
	dex		; CA
	sbc ($B0.b,X)		; E1 B0
	rol $F7FE.w,X		; 3E FE F7
	sbc $DD227F.l		; EF 7F 22 DD
	sbc $55AAFD.l,X		; FF FD AA 55
	eor $AA.b,X		; 55 AA
	tay		; A8
	pea $65FC.w		; F4 FC 65
	sbc $7F.b,S		; E3 7F
	beq   9.b		; F0 09
	sbc $E00AF8.l,X		; FF F8 0A E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	tax		; AA
	eor #$F0.b		; 49 F0
	cpx #$0DF8.w		; E0 F8 0D
	ror $E3.b		; 66 E3
	cpx #$5EFF.w		; E0 FF 5E
	sbc ($FF.b),Y		; F1 FF
	tsa		; 3B
	cpx #$55FE.w		; E0 FE 55
	sbc $24.b,X		; F5 24
	inc $E0.b		; E6 E0
	jsr ($E1AC.w,X)		; FC AC E1
	cmp $E0E2.w,Y		; D9 E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	sbc $FE0FFD.l,X		; FF FD 0F FE
	pld		; 2B
	tsb $FC.b		; 04 FC
	trb $2A03.w		; 1C 03 2A
	xba		; EB
	cpx #$04FC.w		; E0 FC 04
	jsr ($90F1.w,X)		; FC F1 90
	plb		; AB
	bcs -64.b		; B0 C0
	sbc $E0C0E2.l,X		; FF E2 C0 E0
	sed		; F8
	ora #$E2.b		; 09 E2
	jsr ($568F.w,X)		; FC 8F 56
	cpx #$09F8.w		; E0 F8 09
	ora ($01.b,X)		; 01 01
	jsr ($63C0.w,X)		; FC C0 63
	cpy #$09F8.w		; C0 F8 09
	inc $E9D2.w,X		; FE D2 E9
	inx		; E8
	sep #$07		; E2 07
	sta $FDFF.w		; 8D FF FD
	sbc [$C0.b]		; E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	eor $55.b,X		; 55 55
	cmp $F0.b,X		; D5 F0
	cpx #$09F8.w		; E0 F8 09
	pld		; 2B
	cmp $EB35.w,X		; DD 35 EB
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	phb		; 8B
	jsr ($F8C0.w,X)		; FC C0 F8
	asl A		; 0A
	eor $5F.b,X		; 55 5F
	cpx #$20EF.w		; E0 EF 20
	beq  11.b		; F0 0B
	cpx #$1BF8.w		; E0 F8 1B
	txy		; 9B
	sbc ($E0.b,X)		; E1 E0
	sbc $FD03.w,X		; FD 03 FD
	ora [$FA.b]		; 07 FA
	cpx #$0BF8.w		; E0 F8 0B
	sed		; F8
	lda $00078B.l,X		; BF 8B 07 00
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
	adc $D7D17A.l,X		; 7F 7A D1 D7
	inc $1FBF.w,X		; FE BF 1F
	ora $F1630F.l,X		; 1F 0F 63 F1
	eor $6454F2.l,X		; 5F F2 54 64
	cmp $1803.w,Y		; D9 03 18
	php		; 08
	phk		; 4B
	brk $63.b		; 00 63
	inc $0055.w,X		; FE 55 00
	tax		; AA
	jsr ($93AB.w,X)		; FC AB 93
	xce		; FB
	ora [$CF.b]		; 07 CF
	and [$FF.b],Y		; 37 FF
	lda $1D878F.l		; AF 8F 87 1D
	clc		; 18
	and [$20.b],Y		; 37 20
	cmp $40DF40.l		; CF 40 DF 40
	sta $18F780.l		; 8F 80 F7 18
	pea $FFD1.w		; F4 D1 FF
	ldx $E2.b		; A6 E2
	and $F318FE.l,X		; 3F FE 18 F3
	tax		; AA
	rol A		; 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $8F07EF.l		; 0F EF 07 8F
	lda [$F8.b],Y		; B7 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$00D5.w		; E0 D5 00
	plx		; FA
	dec A		; 3A
	phx		; DA
	beq  76.b		; F0 4C
	and $B8.b,S		; 23 B8
	dex		; CA
	cpx #$0AA0.w		; E0 A0 0A
	sbc $0F.b,S		; E3 0F
	bit $5895.w,X		; 3C 95 58
	cmp [$81.b]		; C7 81
	sbc $F5A07E.l,X		; FF 7E A0 F5
	plp		; 28
	sbc $7B.b,S		; E3 7B
	clv		; B8
	eor $8080.w		; 4D 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$A7.b		; C9 A7
	beq -128.b		; F0 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $80.b		; 05 80
	lda [$90.b],Y		; B7 90
	adc $50E9C7.l,X		; 7F C7 E9 50
	sbc [$A0.b],Y		; F7 A0
	adc $80EF80.l		; 6F 80 EF 80
	cpx $0F7F.w		; EC 7F 0F
	eor ($80.b,X)		; 41 80
	lda $9AFC07.l,X		; BF 07 FC 9A
	sbc ($80.b),Y		; F1 80
	jsr ($4148.w,X)		; FC 48 41
	sbc $0152A0.l		; EF A0 52 01
	jsr ($E0D8.w,X)		; FC D8 E0
	phd		; 0B
	sbc ($87.b,X)		; E1 87
	inc $0BF8.w,X		; FE F8 0B
	cpx #$0050.w		; E0 50 00
	stx $5E88.w		; 8E 88 5E
	asl $EF62.w		; 0E 62 EF
	cmp $FB.b,S		; C3 FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sta $FDFA70.l		; 8F 70 FA FD
	sbc $8F.b,S		; E3 8F
	cop $FB.b		; 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	adc [$40.b]		; 67 40
	ora $2A4BB1.l,X		; 1F B1 4B 2A
	lda $36DFFC.l,X		; BF FC DF 36
	nop		; EA
	ora $CC447F.l		; 0F 7F 44 CC
	asl $7F.b,X		; 16 7F
	jsr ($E180.w,X)		; FC 80 E1
	cld		; D8
	ldy #$22E4.w		; A0 E4 22
	sbc ($02.b,S),Y		; F3 02
	sbc [$05.b],Y		; F7 05
	sbc $F908.w		; ED 08 F9
	sbc $25C166.l,X		; FF 66 C1 25
	sbc $FBFA.w,X		; FD FA FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $707BF3.l,X		; FF F3 7B 70
	sta $487D00.l,X		; 9F 00 7D 48
	ora $405F00.l		; 0F 00 5F 40
	cpy #$1FFC.w		; C0 FC 1F
	bvc -44.b		; 50 D4
	sta [$FF.b]		; 87 FF
	sta $BF.b,S		; 83 BF
	cmp $FD.b,S		; C3 FD
	ldy $C1FC.w,X		; BC FC C1
	ror A		; 6A
	and ($FC.b,X)		; 21 FC
	jsr ($FC71.w,X)		; FC 71 FC
	asl $76.b		; 06 76
	cld		; D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $7801.w,X		; FE 01 78
	adc $BBCE87.l,X		; 7F 87 CE BB
	ldy #$E465.w		; A0 65 E4
	sed		; F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $F1BF9B.l,X		; 7F 9B BF F1
	cpx #$F9FE.w		; E0 FE F9
	lda $E10F1E.l,X		; BF 1E 0F E1
	bit $F8.b		; 24 F8
	ora $8040.w		; 0D 40 80
	sbc $EBF0A8.l,X		; FF A8 F0 EB
	eor [$9B.b],Y		; 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	plx		; FA
	eor $4F.b,S		; 43 4F
	cpx #$5EF1.w		; E0 F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $E45015.l		; 6F 15 50 E4
	inc $D26E.w,X		; FE 6E D2
	bit $18EA.w,X		; 3C EA 18
	sbc $55C12E.l,X		; FF 2E C1 55
	sbc $DA2C.w,Y		; F9 2C DA
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	iny		; C8
	lda $01FE.w,Y		; B9 FE 01
	lsr $FE17.w,X		; 5E 17 FE
	sta ($F4.b,X)		; 81 F4
	cop $EB.b		; 02 EB
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $60F0F0.l,X		; 5F F0 F0 60
	dey		; 88
	lda $807F80.l,X		; BF 80 7F 80
	ldx #$004B.w		; A2 4B 00
	sta [$A1.b],Y		; 97 A1
	ldy #$BE00.w		; A0 00 BE
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	inc $B9BB.w,X		; FE BB B9
	cmp $60EB.w,Y		; D9 EB 60
	sbc ($CF.b),Y		; F1 CF
	inc A		; 1A
	jsr $00D2.w		; 20 D2 00
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $17FC.w,X		; FD FC 17
	ldx $FBFF.w		; AE FF FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	dec $C7EA.w		; CE EA C7
	cpy $D8C0.w		; CC C0 D8
	asl A		; 0A
	sbc $0FFC55.l,X		; FF 55 FC 0F
	dec $F020.w		; CE 20 F0
	bpl -32.b		; 10 E0
	inc $AAFE.w,X		; FE FE AA
	ldy #$AEFE.w		; A0 FE AE
	nop		; EA
	cpx #$0BF8.w		; E0 F8 0B
	cmp $E0DB.w		; CD DB E0
	sbc $1AE2.w,X		; FD E2 1A
	jsr ($74C0.w,X)		; FC C0 74
	cpx #$09F8.w		; E0 F8 09
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	cpx #$BF.b		; E0 BF
	dec $F1.b		; C6 F1
	ora $AE.b,X		; 15 AE
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	cpy $CD.b		; C4 CD
	inc $E1A1.w,X		; FE A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($AF.b),Y		; F1 AF
	tax		; AA
	sta ($E0.b,X)		; 81 E0
	ora #$E1.b		; 09 E1
	asl $2FDF.w,X		; 1E DF 2F
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $AAAA.w		; 0D AA AA
	tsx		; BA
	sbc #$60.b		; E9 60
	cpy #$0B.b		; C0 0B
	nop		; EA
	cmp $DFE9.w,Y		; D9 E9 DF
	ldy $CE.b		; A4 CE
	sbc $C00FB0.l,X		; FF B0 0F C0
	sed		; F8
	asl $BEA4.w		; 0E A4 BE
	beq -67.b		; F0 BD
	cpx #$F8.b		; E0 F8
	ora $FB24.w		; 0D 24 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $5F4CDB.l,X		; FF DB 4C 5F
	lsr $ED.b,X		; 56 ED
	cpx #$FE.b		; E0 FE
	beq   1.b		; F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	sbc $68AB.w,X		; FD AB 68
	sbc $FF.b,S		; E3 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $FA.b,X		; F6 FA
	sbc $80EC02.l		; EF 02 EC 80
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
	cpx #$FE.b		; E0 FE
	beq -16.b		; F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	and $EF30AA.l,X		; 3F AA 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $E481.w,Y		; F9 81 E4
	bvs 107.b		; 70 6B
	inc $0FF8.w,X		; FE F8 0F
	phy		; 5A
	eor $7E.b,X		; 55 7E
	rts		; 60

	and ($5A.b,X)		; 21 5A
	rts		; 60

	ora #$0A.b		; 09 0A
	sec		; 38
	rol A		; 2A
	rti		; 40

	inc $2CF8.w,X		; FE F8 2C
	ldx $30.b,Y		; B6 30
	ply		; 7A
	sep #$80		; E2 80
	eor [$72.b]		; 47 72
	beq  69.b		; F0 45
	sed		; F8
	bvc  43.b		; 50 2B
	lda $FEAA.w		; AD AA FE
	sed		; F8
	lda [$C6.b]		; A7 C6
	cpx $FE42.w		; EC 42 FE
	sed		; F8
	clc		; 18
	rol $38.b,X		; 36 38
	adc [$0E.b],Y		; 77 0E
	sei		; 78
	pld		; 2B
	phx		; DA
	cli		; 58
	and [$64.b]		; 27 64
	rol $55.b		; 26 55
	cmp $FE.b,X		; D5 FE
	sbc $F8FE80.l,X		; FF 80 FE F8
	rol $40DA.w,X		; 3E DA 40
	tsb $F8FE.w		; 0C FE F8
	sta $FA.b,S		; 83 FA
	bpl  25.b		; 10 19
	inc $10.b		; E6 10
	and [$D8.b]		; 27 D8
	pha		; 48
	adc ($F2.b,S),Y		; 73 F2
	rti		; 40

	dec A		; 3A
	tax		; AA
	lsr $80.b,X		; 56 80
	inc $24F8.w,X		; FE F8 24
	phx		; DA
	pha		; 48
	bit $D0C0.w,X		; 3C C0 D0
	rol $A6.b,X		; 36 A6
	sed		; F8
	jsl $80D728.l		; 22 28 D7 80
	inc $1CF8.w,X		; FE F8 1C
	lsr $0DE0.w		; 4E E0 0D
	eor $55.b,X		; 55 55
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $D884.w,X		; 1D 84 D8
	lda ($AE.b)		; B2 AE
	sbc ($8A.b)		; F2 8A
	cld		; D8
	ora $7140D9.l		; 0F D9 40 71
	ldx $FE34.w,Y		; BE 34 FE
	sed		; F8
	ora $1CA2.w		; 0D A2 1C
	eor $55.b,X		; 55 55
	beq  -8.b		; F0 F8
	ora $1D1878.l		; 0F 78 18 1D
	inc $25F8.w,X		; FE F8 25
	inc A		; 1A
	clc		; 18
	and ($EE.b,S),Y		; 33 EE
	bpl  77.b		; 10 4D
	sbc $52FCFC.l,X		; FF FC FC 52
	inc $15F8.w,X		; FE F8 15
	cmp $5A.b,X		; D5 5A
	cmp $2CF8.w		; CD F8 2C
	sbc $5C2CF8.l,X		; FF F8 2C 5C
	cld		; D8
	ora ($FE.b),Y		; 11 FE
	sed		; F8
	ora $FE86.w		; 0D 86 FE
	sed		; F8
	trb $CE.b		; 14 CE
	sed		; F8
	inc A		; 1A
	bra  -2.b		; 80 FE
	sed		; F8
	asl $95.b,X		; 16 95
	tax		; AA
	stx $F8.b,Y		; 96 F8
	jsr $F8FE.w		; 20 FE F8
	and $FE.b,X		; 35 FE
	bcs -81.b		; B0 AF
	jmp $7204.w		; 4C 04 72
	plp		; 28
	ora ($70.b)		; 12 70
	and #$AA.b		; 29 AA
	eor $A0.b,X		; 55 A0
	cpx #$6E.b		; E0 6E
	lda ($E0.b)		; B2 E0
	ora $F8FE.w		; 0D FE F8
	and #$30.b		; 29 30
	cpx $CE1C.w		; EC 1C CE
	sty $FE.b		; 84 FE
	sed		; F8
	bit $E2.b		; 24 E2
	cpy #$13.b		; C0 13
	cop $38.b		; 02 38
	eor ($55.b),Y		; 51 55
	eor $FE.b,X		; 55 FE
	bmi  61.b		; 30 3D
	stx $08.b		; 86 08
	sta ($FF.b),Y		; 91 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	sta ($EC.b)		; 92 EC
	cpx #$19.b		; E0 19
	rol A		; 2A
	tay		; A8
	ora $E016.w		; 0D 16 E0
	phd		; 0B
	dec $0988.w		; CE 88 09
	adc $0884AD.l,X		; 7F AD 84 08
	ldy $FF.b		; A4 FF
	jsr $00FF.w		; 20 FF 00
	inc $7811.w		; EE 11 78
	adc $7B12.w,Y		; 79 12 7B
	inc $E7F2.w,X		; FE F2 E7
	plb		; AB
	inc $52.b,X		; F6 52
	inc $21DF.w,X		; FE DF 21
	jmp.w [$447C]		; DC 7C 44
	.db $62, $0A, $6A		; 62 0A 6A
	sbc $0826.w,X		; FD 26 08
	cpx #$FD.b		; E0 FD
	cmp ($7E.b),Y		; D1 7E
	eor $FFE8FF.l,X		; 5F FF E8 FF
	pei ($7F.b)		; D4 7F
	inc $922F.w,X		; FE 2F 92
	adc ($F0.b,X)		; 61 F0
	adc ($B7.b,X)		; 61 B7
	pha		; 48
	adc $FBFB7F.l,X		; 7F 7F FB FB
	sbc [$FF.b],Y		; F7 FF
	eor $2F2F5F.l,X		; 5F 5F 2F 2F
	clv		; B8
	inc $03A3.w,X		; FE A3 03
	cmp ($01.b),Y		; D1 01
	inx		; E8
	brk $1F.b		; 00 1F
	cpx #$47.b		; E0 47
	sed		; F8
	sta [$3D.b]		; 87 3D
	inc $FB0F.w,X		; FE 0F FB
	ora [$B2.b]		; 07 B2
	jsr ($C1FE.w,X)		; FC FE C1
	adc $DFFB.w,Y		; 79 FB DF
	cmp $D8F83C.l,X		; DF 3C F8 D8
	ora $03030F.l		; 0F 0F 03 03
	lda ($0F.b)		; B2 0F
	adc $3F7F.w,Y		; 79 7F 3F
	and $08FDFF.l,X		; 3F FF FD 08
	php		; 08
	lda ($45.b),Y		; B1 45
	sei		; 78
	ldy #$BC.b		; A0 BC
	cpy #$AF.b		; C0 AF
	cmp ($2D.b),Y		; D1 2D
	adc ($F7.b,X)		; 61 F7
	cpy #$FE.b		; C0 FE
	sbc [$03.b],Y		; F7 03
	ldy $BAF7.w		; AC F7 BA
	tsx		; BA
	jmp.w [$EEE4]		; DC E4 EE
	inc $799D.w		; EE 9D 79
	cmp $1B.b,S		; C3 1B
	tsx		; BA
	adc $7D7D.w,Y		; 79 7D 7D
	phx		; DA
	eor $75.b,X		; 55 75
	rol A		; 2A
	rol A		; 2A
	eor $FEDF5B.l		; 4F 5B DF FE
	sed		; F8
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
	ldy #$A0.b		; A0 A0
	ora ($12.b)		; 12 12
	and $DF.b		; 25 DF
	cop $FF.b		; 02 FF
	sbc $6F05FE.l,X		; FF FE 05 6F
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
	ora $519D7E.l,X		; 1F 7E 9D 51
	lda $0EFFAF.l,X		; BF AF FF 0E
	inc $8773.w,X		; FE 73 87
	sbc $DFEF87.l,X		; FF 87 EF DF
	jsr $BFF8.w		; 20 F8 BF
	sta $FF89F6.l		; 8F F6 89 FF
	cpy #$FB.b		; C0 FB
	cpy $FF.b		; C4 FF
	cpx #$7F.b		; E0 7F
	sed		; F8
	and $05DE31.l,X		; 3F 31 DE 05
	eor $FF80.w,Y		; 59 80 FF
	cpy #$FF.b		; C0 FF
	cpx #$E0.b		; E0 E0
	sed		; F8
	cpx #$61.b		; E0 61
	adc #$C0.b		; 69 C0
	sbc $F60810.l,X		; FF 10 08 F6
	ora #$DA.b		; 09 DA
	sta [$CB.b]		; 87 CB
	ldy $F521.w		; AC 21 F5
	asl A		; 0A
	cpy #$40.b		; C0 40
	trb $DC.b		; 14 DC
	inc $F6E9.w,X		; FE E9 F6
	cmp $4A.b,S		; C3 4A
	ldx $0A40.w,Y		; BE 40 0A
	sbc [$08.b],Y		; F7 08
	inx		; E8
	stp		; DB
	bit $C2.b		; 24 C2
	pea $2880.w		; F4 80 28
	ora ($54.b),Y		; 11 54
	cmp $EC.b		; C5 EC
	cpy #$EF.b		; C0 EF
	jmp ($BEF1.w,X)		; 7C F1 BE
	sbc ($A0.b)		; F2 A0
	sed		; F8
	ora ($E2.b)		; 12 E2
	eor ($54.b,X)		; 41 54
	cmp $12D824.l,X		; DF 24 D8 12
	eor ($DE.b,X)		; 41 DE
	ldy #$F8.b		; A0 F8
	ora ($CF.b),Y		; 11 CF
	sbc ($04.b),Y		; F1 04
	tsb $9E.b		; 04 9E
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	sed		; F8
	eor ($51.b),Y		; 51 51
	sbc ($B8.b,S),Y		; F3 B8
	bpl -64.b		; 10 C0
	cli		; 58
	phy		; 5A
	bit $D8F4.w,X		; 3C F4 D8
	brk $F0.b		; 00 F0
	ora ($5D.b),Y		; 11 5D
	adc $F426.w		; 6D 26 F4
	ora ($6A.b)		; 12 6A
	adc $F20084.l,X		; 7F 84 00 F2
	and $0DF8.w,X		; 3D F8 0D
	cpx $41E9.w		; EC E9 41
	tsb $F5.b		; 04 F5
	.db $42, $54		; 42 54
	bra  -4.b		; 80 FC
	tsb $F0.b		; 04 F0
	tsb $A263.w		; 0C 63 A2
	dec $0D86.w		; CE 86 0D
	dex		; CA
	sbc $FD6210.l		; EF 10 62 FD
	ora $54.b		; 05 54
	rts		; 60

	sed		; F8
	ora ($EA.b)		; 12 EA
	sbc #$FD.b		; E9 FD
	sta $8012C0.l,X		; 9F C0 12 80
	jsr $DF13.w		; 20 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	sbc $77500C.l,X		; FF 0C 50 77
	ldx $C2BC.w,Y		; BE BC C2
	sbc #$EE.b		; E9 EE
	nop		; EA
	tsb $100C.w		; 0C 0C 10
	lda $F401.w,X		; BD 01 F4
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
	adc ($12.b),Y		; 71 12
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
	cpy #$3B.b		; C0 3B
	jmp ($F0FE.w,X)		; 7C FE F0
	sbc $923245.l		; EF 45 32 92
	adc $025A.w,X		; 7D 5A 02
	ora ($0D.b,X)		; 01 0D
	tsb $C1FC.w		; 0C FC C1
	and ($63.b,X)		; 21 63
	xba		; EB
	sbc $F3FCBE.l,X		; FF BE FC F3
	xce		; FB
	cpx $01.b		; E4 01
	ldy $7F.b,X		; B4 7F
	inc $80.b,X		; F6 80
	cpx $E9.b		; E4 E9
	cpx $E4.b		; E4 E4
	sbc #$F0.b		; E9 F0
	adc $7FBFFE.l,X		; 7F FE BF 7F
	sbc $877F.w,X		; FD 7F 87
	adc #$E4.b		; 69 E4
	nop		; EA
	cpx #$E0.b		; E0 E0
	jsr ($F0F0.w,X)		; FC F0 F0
	pei ($BD.b)		; D4 BD
	lda $A85A.w,X		; BD 5A A8
	lsr A		; 4A
	sbc $F4A490.l		; EF 90 A4 F4
	beq  -8.b		; F0 F8
	ora $5A0CF8.l,X		; 1F F8 0C 5A
	eor ($DF.b,X)		; 41 DF
	adc $A0.b,S		; 63 A0
	sbc ($FE.b,X)		; E1 FE
	sed		; F8
	ora #$FD.b		; 09 FD
	pla		; 68
	tya		; 98
	bpl -24.b		; 10 E8
	jsr ($F8DA.w,X)		; FC DA F8
	xba		; EB
	eor $E0C1.w,X		; 5D C1 E0
	beq  18.b		; F0 12
	nop		; EA
	jsr ($22DD.w,X)		; FC DD 22
	cld		; D8
	inc $F0C0.w,X		; FE C0 F0
	bpl -96.b		; 10 A0
	jsr $41F5.w		; 20 F5 41
	eor ($EF.b,X)		; 41 EF
	bpl  58.b		; 10 3A
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $3EEE.w		; 0E EE 3E
	and $ED.b,X		; 35 ED
	.db $62, $C1, $30		; 62 C1 30
	ora $EA.b,X		; 15 EA
	jsr ($E044.w,X)		; FC 44 E0
	sed		; F8
	tas		; 1B
	adc $E18F81.l,X		; 7F 81 8F E1
	stz $4AFB.w		; 9C FB 4A
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
	cpy #$40.b		; C0 40
	sbc $A0E91E.l,X		; FF 1E E9 A0
	sed		; F8
	ora ($E0.b),Y		; 11 E0
	lda $40FC2A.l,X		; BF 2A FC 40
	ldy $43.b,X		; B4 43
	inc $E3.b,X		; F6 E3
	asl $90.b		; 06 90
	tsb $10FF.w		; 0C FF 10
	sbc [$38.b]		; E7 38
	sta [$F8.b]		; 87 F8
	adc $FC97DC.l,X		; 7F DC 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $7C43BF.l,X		; 3F BF 43 7C
	mvp $AC,$3F		; 44 3F AC
	eor ($35.b,X)		; 41 35
	jsr ($EBEB.w,X)		; FC EB EB
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	sbc $E00484.l,X		; FF 84 04 E0
	brk $E0.b		; 00 E0
	xce		; FB
	pld		; 2B
	ora ($3F.b,X)		; 01 3F
	bne -91.b		; D0 A5
	asl A		; 0A
	sbc $BFBF01.l,X		; FF 01 BF BF
	xce		; FB
	xce		; FB
	and ($52.b,S),Y		; 33 52
	bit $BCF2.w,X		; 3C F2 BC
	cmp $DC.b,S		; C3 DC
	ora ($01.b,X)		; 01 01
	bit $D43C.w,X		; 3C 3C D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp $F0.b,S		; C3 F0
	cmp ($1C.b,X)		; C1 1C
	cpx #$B4.b		; E0 B4
	cmp $FD.b,S		; C3 FD
	and $E0FFE0.l		; 2F E0 FF E0
	ora ($E0.b),Y		; 11 E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$E4D4]		; DC D4 E4
	rti		; 40

	and $90307F.l,X		; 3F 7F 30 90
	sta $A5C0C3.l		; 8F C3 C0 A5
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	beq -46.b		; F0 D2
	cpx #$E9.b		; E0 E9
	eor $EAEFC4.l		; 4F C4 EF EA
	adc $BD1DB9.l,X		; 7F B9 1D BD
	ora $E0C0FF.l		; 0F FF C0 E0
	sbc #$B0.b		; E9 B0
	sbc $0FBF00.l,X		; FF 00 BF 0F
	beq -64.b		; F0 C0
	bpl -98.b		; 10 9E
	asl $5F1F.w,X		; 1E 1F 5F
	cpx $50.b		; E4 50
	sei		; 78
	cmp ($AD.b,S),Y		; D3 AD
	sbc ($4C.b,S),Y		; F3 4C
	ora #$A6.b		; 09 A6
	sbc ($FF.b,X)		; E1 FF
	ldy #$BE.b		; A0 BE
	sta $AA.b,S		; 83 AA
	cmp ($49.b,S),Y		; D3 49
	tyx		; BB
	ora $19.b,S		; 03 19
	ora ($FE.b),Y		; 11 FE
	sbc $22.b,X		; F5 22
	cpx $20.b		; E4 20
	sed		; F8
	ora ($BA.b),Y		; 11 BA
	tax		; AA
	lsr $F6.b		; 46 F6
	dec $20ED.w,X		; DE ED 20
	beq  22.b		; F0 16
	inc $BA01.w,X		; FE 01 BA
	inc $F8E0.w,X		; FE E0 F8
	ora $7A.b,X		; 15 7A
	sbc ($DA.b),Y		; F1 DA
	and $AA.b,S		; 23 AA
	rol A		; 2A
	cpx #$F8.b		; E0 F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	cpx #$F8.b		; E0 F8
	ora [$26.b],Y		; 17 26
	sbc ($E0.b)		; F2 E0
	sed		; F8
	phd		; 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	adc [$F7.b],Y		; 77 F7
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $43,$D8		; 44 D8 43
	php		; 08
	xce		; FB
	ldx #$AA.b		; A2 AA
	tsb $DA.b		; 04 DA
	sbc #$F6.b		; E9 F6
	sbc $DA09F8.l,X		; FF F8 09 DA
	cpx $EBE2.w		; EC E2 EB
	jsr ($0AF1.w,X)		; FC F1 0A
	dex		; CA
	cli		; 58
	sbc $D8E0.w,X		; FD E0 D8
	bpl  98.b		; 10 62
	xba		; EB
	tsb $5E.b		; 04 5E
	cpx $E1B4.w		; EC B4 E1
	jsr $FF20.w		; 20 20 FF
	phx		; DA
	sei		; 78
	cmp $900684.l		; CF 84 06 90
	and ($E0.b)		; 32 E0
	rti		; 40

	stz $EAEB.w		; 9C EB EA
	cpx $7BFA.w		; EC FA 7B
	rti		; 40

	sta $7FE161.l,X		; 9F 61 E1 7F
	sed		; F8
	sta $C01EC0.l,X		; 9F C0 1E C0
	cmp $EFDE9E.l,X		; DF 9E DE EF
	sbc $1B7F7F.l		; EF 7F 7F 1B
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
	and $9180.w,Y		; 39 80 91
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
	and $41EA78.l,X		; 3F 78 EA 41
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
	inc $ACFD.w,X		; FE FD AC
	adc $53FEF6.l,X		; 7F F6 FE 53
	tay		; A8
	ora [$F0.b],Y		; 17 F0
	inc $77FD.w,X		; FE FD 77
	sbc [$7E.b],Y		; F7 7E
	plx		; FA
	adc ($81.b)		; 72 81
	sbc ($FA.b,X)		; E1 FA
	plp		; 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	and $68A8F6.l		; 2F F6 A8 68
	sec		; 38
	and $B8680C.l,X		; 3F 0C 68 B8
	pla		; 68
	cpy #$D0.b		; C0 D0
	ldy $FEFC.w,X		; BC FC FE
	sty $13CC.w		; 8C CC 13
	tsb $D0FC.w		; 0C FC D0
	sed		; F8
	inc $40FF.w,X		; FE FF 40
	jsr ($7551.w,X)		; FC 51 75
	inc $FC70.w,X		; FE 70 FC
	lda $B95FFF.l		; AF FF 5F B9
	ldy $88.b,X		; B4 88
	phd		; 0B
	bvc -70.b		; 50 BA
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
	inc $FEEB.w,X		; FE EB FE
	dec $FE.b		; C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $0304.w,X		; FE 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $DFFBFB.l,X		; FF FB FB DF
	sbc $CFD7FB.l,X		; FF FB D7 CF
	cmp $96DECE.l,X		; DF CE DE 96
	stx $D6.b		; 86 D6
	dec $F7.b		; C6 F7
	inc $35.b		; E6 35
	phx		; DA
	plp		; 28
	sbc $04FF30.l,X		; FF 30 FF 04
	sbc $79FF31.l,X		; FF 31 FF 79
	sbc $19FF39.l,X		; FF 39 FF 19
	sbc $F93F6C.l,X		; FF 6C 3F F9
	inc $C606.w,X		; FE 06 C6
	ora [$D7.b],Y		; 17 D7
	ora $6AFCD7.l,X		; 1F D7 FC 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	tax		; AA
	txs		; 9A
	sbc $68FCFE.l,X		; FF FE FC 68
	inc $FEFE.w,X		; FE FE FE
	ldy #$FE.b		; A0 FE
	inc $68FE.w,X		; FE FE 68
	inc $F7E0.w,X		; FE E0 F7
	ldy $60FF.w,X		; BC FF 60
	rts		; 60

	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	sta $17.b,S		; 83 17
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	bvs  -5.b		; 70 FB
	bcc  10.b		; 90 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $C1F4.w,X		; FD F4 C1
	inc $F591.w,X		; FE 91 F5
	lda $0C00C9.l		; AF C9 00 0C
	sei		; 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $183F.w,X		; FD 3F 18
	brk $30.b		; 00 30
	cpy #$FC.b		; C0 FC
	beq -124.b		; F0 84
	sed		; F8
	inc $821F.w,X		; FE 1F 82
	rti		; 40

	sta [$41.b]		; 87 41
	inc $C060.w,X		; FE 60 C0
	inc $E070.w,X		; FE 70 E0
	inc $F25C.w,X		; FE 5C F2
	bra  97.b		; 80 61
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ldy #$40.b		; A0 40
	inc $6090.w,X		; FE 90 60
	brk $8F.b		; 00 8F
	inc $B8AE.w,X		; FE AE B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	brk $3E.b		; 00 3E
	jsr ($F6FE.w,X)		; FC FE F6
	php		; 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $C007.w		; 0C 07 C0
	adc $D5FEFC.l,X		; 7F FC FE D5
	sec		; 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $1438.w		; AE 38 14
	inc $B6F7.w,X		; FE F7 B6
	lda $79FFFE.l,X		; BF FE FF 79
	cmp ($A2.b),Y		; D1 A2
	cmp $0A.b,S		; C3 0A
	eor $FAFE.w,Y		; 59 FE FA
	jsr ($C70F.w,X)		; FC 0F C7
	inc $348F.w,X		; FE 8F 34
	jmp $AAFE47.l		; 5C 47 FE AA
	eor [$FC.b],Y		; 57 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	bit $01C9.w,X		; 3C C9 01
	nop		; EA
	inc $04FC.w,X		; FE FC 04
	jsr ($00FC.w,X)		; FC FC 00
	xce		; FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($D5.b,X)		; 01 D5
	inc $8180.w,X		; FE 80 81
	inc $54FC.w,X		; FE FC 54
	pea $F15A.w		; F4 5A F1
	bra  -2.b		; 80 FE
	jsr ($6070.w,X)		; FC 70 60
	bcs  32.b		; B0 20
	bvs  -1.b		; 70 FF
	and ($A0.b),Y		; 31 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $DED0.w		; 0E D0 DE
	eor [$FE.b],Y		; 57 FE
	cld		; D8
	sed		; F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	xce		; FB
	dey		; 88
	ora $69FE08.l		; 0F 08 FE 69
	lda [$FE.b]		; A7 FE
	inc $7C0C.w,X		; FE 0C 7C
	ror $FEFE.w,X		; 7E FE FE
	lsr $0C5F.w,X		; 5E 5F 0C
	and $8266.w,X		; 3D 66 82
	jsr ($FEFE.w,X)		; FC FE FE
	lda ($FE.b,X)		; A1 FE
	cop $FF.b		; 02 FF
	ora $FE.b,S		; 03 FE
	phy		; 5A
	ora ($FF.b),Y		; 11 FF
	asl $06.b		; 06 06
	sta [$A2.b],Y		; 97 A2
	cpx #$EA.b		; E0 EA
	inc $3AAB.w,X		; FE AB 3A
	sei		; 78
	ora $C0.b		; 05 C0
	inc $E6.b,X		; F6 E6
	adc [$F0.b],Y		; 77 F0
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
	bcc -128.b		; 90 80
	ora $811FFF.l		; 0F FF 1F 81
	bra  15.b		; 80 0F
	xba		; EB
	nop		; EA
	lda $BEFBAA.l,X		; BF AA FB BE
	lda $8A9F94.l		; AF 94 9F 8A
	plx		; FA
	xce		; FB
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
	sbc $7BFFFF.l,X		; FF FF FF 7B
	inc $FF7F.w,X		; FE 7F FF
	sbc $FF77FF.l,X		; FF FF 77 FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFDFF.l,X		; FF FF FD FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFB.l,X		; FF FB FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $7FFFFF.l,X		; FF FF FF 7F
	inc $FBFF.w,X		; FE FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FE9FFF.l,X		; FF FF 9F FE
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	xce		; FB
	sbc $F9FFFF.l,X		; FF FF FF F9
	sbc $FFFAFF.l,X		; FF FF FA FF
	inc $FFFF.w,X		; FE FF FF
	cmp $FFFB.w,X		; DD FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $080081.l,X		; FF 81 00 08
	jmp $2604.w		; 4C 04 26
	rti		; 40

	ora ($61.b),Y		; 11 61
	adc ($30.b),Y		; 71 30
	sty $40.b,X		; 94 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $11.b		; 00 11
	asl $0011.w		; 0E 11 00
	brk $04.b		; 00 04
	jsr $001C.w		; 20 1C 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	tsb $28.b		; 04 28
	brk $44.b		; 00 44
	brk $42.b		; 00 42
	iny		; C8
	eor ($C2.b,X)		; 41 C2
	bpl -64.b		; 10 C0
	and ($08.b,X)		; 21 08
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($41.b,X)		; 01 41
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	ldy #$14.b		; A0 14
	brk $00.b		; 00 00
	pha		; 48
	pha		; 48
	jsr $0804.w		; 20 04 08
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
	brk $50.b		; 00 50
	tsb $A43A.w		; 0C 3A A4
	bit $14.b,X		; 34 14
	bcc   2.b		; 90 02
	ldy $10.b,X		; B4 10
	ror A		; 6A
	bpl   1.b		; 10 01
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
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	rol $40.b		; 26 40
	jsr $2030.w		; 20 30 20
	rti		; 40

	rti		; 40

	dey		; 88
	brk $A0.b		; 00 A0
	php		; 08
	bpl  70.b		; 10 46
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	.db $42, $10		; 42 10
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $80.b		; 04 80
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
	tsb $0074.w		; 0C 74 00
	dex		; CA
	bit $08.b,X		; 34 08
	lda ($05.b,X)		; A1 05
	bmi   4.b		; 30 04
	rts		; 60

	bra  64.b		; 80 40
	rti		; 40

	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	tsb $00.b		; 04 00
	jsr $0080.w		; 20 80 00
	brk $42.b		; 00 42
	dey		; 88
	bmi   0.b		; 30 00
	dey		; 88
	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	cop $88.b		; 02 88
	bit $8B21.w,X		; 3C 21 8B
	bit #$E4.b		; 89 E4
	dex		; CA
	cpy $28.b		; C4 28
	ora ($F8.b,X)		; 01 F8
	brk $84.b		; 00 84
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $08.b		; 00 08
	ora [$44.b]		; 07 44
	brk $90.b		; 00 90
	eor $00.b,S		; 43 00
	bra  72.b		; 80 48
	cpx $00.b		; E4 00
	brk $94.b		; 00 94
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($01.b,X)		; 81 01
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
	brk $0C.b		; 00 0C
	clc		; 18
	rti		; 40

	brk $E4.b		; 00 E4
	bvc -120.b		; 50 88
	ora ($62.b),Y		; 11 62
	.db $82, $20, $B1		; 82 20 B1
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	php		; 08
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	php		; 08
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
	brk $90.b		; 00 90
	eor ($12.b)		; 52 12
	jsr $C020.w		; 20 20 C0
	bra   1.b		; 80 01
	asl A		; 0A
	php		; 08
	mvp $98,$00		; 44 00 98
	brk $40.b		; 00 40
	bit $00.b		; 24 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	pld		; 2B
	and $10.b		; 25 10
	cpx $935A.w		; EC 5A 93
	brk $86.b		; 00 86
	inx		; E8
	cld		; D8
	brk $08.b		; 00 08
	rti		; 40

	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	brk $04.b		; 00 04
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1200.w		; 0C 00 12
	brk $10.b		; 00 10
	php		; 08
	bpl 112.b		; 10 70
	pla		; 68
	cpx #$00.b		; E0 00
	jsr $1081.w		; 20 81 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and #$00.b		; 29 00
	sta $20.b,S		; 83 20
	cop $8C.b		; 02 8C
	ror $0544.w		; 6E 44 05
	ror $12.b,X		; 76 12
	brk $84.b		; 00 84
	.db $82, $84, $10		; 82 84 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0020.w		; 0C 20 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	rts		; 60

	bcc -118.b		; 90 8A
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra -104.b		; 80 98
	tsb $02.b		; 04 02
	.db $82, $00, $00		; 82 00 00
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
	brk $04.b		; 00 04
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFDFF.l,X		; FF FF FD BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	cmp $FF7F7F.l,X		; DF 7F 7F FF
	lda $FFFFFB.l,X		; BF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $FFFF.w,X		; DE FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFFA.l,X		; FF FA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFF53.l,X		; FF 53 FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBDFFF.l,X		; FF FF DF FB
	sbc $FDFFF7.l,X		; FF F7 FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7EF.l,X		; FF EF F7 FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFB7FF.l,X		; FF FF B7 FF
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
	sbc $FFFFAD.l,X		; FF AD FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF9.l,X		; FF F9 FF FF
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
	sbc $D7FFFF.l,X		; FF FF FF D7
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FFBFEF.l,X		; FF EF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFD.l,X		; FF FD FB FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFF7.w,X		; FD F7 BF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($FFFD.w,X)		; FC FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7BF7.l,X		; FF F7 7B FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BF7EFE.l,X		; FF FE 7E BF
	sbc $BFFFFF.l,X		; FF FF FF BF
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
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FDFF7E.l,X		; FF 7E FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFBFFF.l,X		; BF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBFFFF.l,X		; FF FF FF BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $52FFFF.l,X		; FF FF FF 52
	trb $0504.w		; 1C 04 05
	lda #$88.b		; A9 88
	plp		; 28
	rti		; 40

	cmp $00.b,S		; C3 00
	bcs   0.b		; B0 00
	brk $D0.b		; 00 D0
	jsr $0006.w		; 20 06 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $80.b		; 00 80
	pha		; 48
	bpl   0.b		; 10 00
	ora $1134.w,Y		; 19 34 11
	tsb $10.b		; 04 10
	bpl  32.b		; 10 20
	rti		; 40

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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  42.b		; 90 2A
	and ($40.b,X)		; 21 40
	cmp ($22.b),Y		; D1 22
	sta $00.b		; 85 00
	brk $40.b		; 00 40
	and ($44.b,X)		; 21 44
	tsb $82.b		; 04 82
	jsr $0400.w		; 20 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $A0.b		; 00 A0
	bra  90.b		; 80 5A
	php		; 08
	php		; 08
	sta ($00.b,X)		; 81 00
	brk $01.b		; 00 01
	brk $30.b		; 00 30
	ldy #$48.b		; A0 48
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
	brk $01.b		; 00 01
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
	brk $04.b		; 00 04
	jsr $E0F0.w		; 20 F0 E0
	tay		; A8
	bvs -112.b		; 70 90
	cop $00.b		; 02 00
	ora $0320.w,X		; 1D 20 03
	plp		; 28
	php		; 08
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $40.b		; 00 40
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
	bra   0.b		; 80 00
	rti		; 40

	bcc   0.b		; 90 00
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	cop $10.b		; 02 10
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	rep #$09		; C2 09
	brk $80.b		; 00 80
	jsr $9210.w		; 20 10 92
	brk $01.b		; 00 01
	ldx #$14.b		; A2 14
	bvc   0.b		; 50 00
	php		; 08
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	php		; 08
	brk $8C.b		; 00 8C
	asl A		; 0A
	jsr $0000.w		; 20 00 00
	php		; 08
	ora #$10.b		; 09 10
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
	brk $08.b		; 00 08
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
	tsb $00A0.w		; 0C A0 00
	eor ($00.b)		; 52 00
	brk $84.b		; 00 84
	and ($18.b)		; 32 18
	jsl $04A000.l		; 22 00 A0 04
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
	rts		; 60

	cop $80.b		; 02 80
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl 120.b		; 10 78
	brk $80.b		; 00 80
	ora #$00.b		; 09 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $14.b		; 00 14
	php		; 08
	asl $92.b		; 06 92
	cop $A2.b		; 02 A2
	pha		; 48
	brk $20.b		; 00 20
	cpy #$44.b		; C0 44
	tsb $21.b		; 04 21
	.db $82, $04, $00		; 82 04 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $81.b		; 00 81
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	tsb $40.b		; 04 40
	php		; 08
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	tsb $00.b		; 04 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	beq  10.b		; F0 0A
	ldy #$00.b		; A0 00
	brk $24.b		; 00 24
	jmp ($6082.w)		; 6C 82 60
	bpl  86.b		; 10 56
	.db $82, $02, $00		; 82 02 00
	tsb $04.b		; 04 04
	bra   1.b		; 80 01
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	sty $00.b		; 84 00
	brk $20.b		; 00 20
	bra  16.b		; 80 10
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  22.b		; 10 16
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	cpy #$14.b		; C0 14
	tsb $8480.w		; 0C 80 84
	jsr $0404.w		; 20 04 04
	ldy #$00.b		; A0 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	php		; 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
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
	lsr A		; 4A
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	jsr $0110.w		; 20 10 01
	brk $20.b		; 00 20
	php		; 08
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
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	sbc [$CF.b],Y		; F7 CF
	sbc $FFEFFE.l,X		; FF FE EF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF3FF.l,X		; FF FF F3 FF
	sbc $DFFEFF.l,X		; FF FF FE DF
	inc $FFFF.w,X		; FE FF FF
	sbc $D7FEFF.l,X		; FF FF FE D7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FD.b],Y		; F7 FD
	cmp $FFFF.w,X		; DD FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFF.w,X		; FD FF FF
	inc $FEF7.w,X		; FE F7 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $B7FFBF.l,X		; FF BF FF B7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFE7FF.l,X		; FF FF E7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDBF.l,X		; FF BF FD FF
	dec $FEFF.w,X		; DE FF FE
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $97FFFF.l,X		; FF FF FF 97
	sbc [$BF.b],Y		; F7 BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFB7D.l,X		; FF 7D FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBE.l,X		; FF BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	cmp [$FF.b]		; C7 FF
	sbc $FCFFDF.l,X		; FF DF FF FC
	xce		; FB
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FF5D.w,X		; FD 5D FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFF7DF.l		; CF DF F7 FF
	sbc $FBFFB7.l,X		; FF B7 FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FDFFFB.l,X		; FF FB FF FD
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FD7.l,X		; FF D7 7F FF
	sbc $DFE7FF.l,X		; FF FF E7 DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $EDFE.w,X		; FE FE ED
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $EF7FFF.l		; EF FF 7F EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7BF7.l,X		; FF F7 7B FF
	sbc [$BF.b],Y		; F7 BF
	adc $FFFFFF.l,X		; 7F FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7DFF.l,X		; FF FF 7D FF
	xce		; FB
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
	sbc $CFFFFF.l,X		; FF FF FF CF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	cmp $7FDFFF.l		; CF FF DF 7F
	sbc $FFFFCF.l,X		; FF CF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFBF.l		; EF BF FF FE
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $BFFF7D.l,X		; FF 7D FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCF6FF.l,X		; FF FF F6 FC
	sbc $FFF7FF.l		; EF FF F7 FF
	sbc $F7FF7F.l,X		; FF 7F FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFF.w,X		; FD FF EF
	sbc $FFFF7B.l,X		; FF 7B FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFB.l,X		; 7F FB FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	stp		; DB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7DFFF.l,X		; FF FF DF F7
	sbc $7CBD.w,Y		; F9 BD 7C
	inc $FFDF.w,X		; FE DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc [$FC.b],Y		; F7 FC
	cmp $BEFDFF.l,X		; DF FF FD BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	xce		; FB
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $61FFFF.l,X		; FF FF FF 61
	bne -118.b		; D0 8A
	lda $429B.w,Y		; B9 9B 42
	asl $08.b		; 06 08
	tya		; 98
	ora ($C4.b,X)		; 01 C4
	rts		; 60

	rol $00.b,X		; 36 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($00.b,X)		; A1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta ($90.b,X)		; 81 90
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	rti		; 40

	ora $28.b		; 05 28
	brk $80.b		; 00 80
	eor [$00.b]		; 47 00
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
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $22.b		; 00 22
	phy		; 5A
	jsr $1684.w		; 20 84 16
	bit $4C.b		; 24 4C
	bpl  10.b		; 10 0A
	brk $64.b		; 00 64
	asl $00.b		; 06 00
	brk $91.b		; 00 91
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
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
	dey		; 88
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	bpl   4.b		; 10 04
	plp		; 28
	pha		; 48
	rti		; 40

	brk $40.b		; 00 40
	rts		; 60

	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	tsb $00.b		; 04 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
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
	lda ($19.b),Y		; B1 19
	cpx #$2A.b		; E0 2A
	php		; 08
	eor #$05.b		; 49 05
	sta $2034.w,X		; 9D 34 20
	bcc  11.b		; 90 0B
	bra   0.b		; 80 00
	sty $1020.w		; 8C 20 10
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A9.b		; 00 A9
	cop $70.b		; 02 70
	plp		; 28
	bit $40.b		; 24 40
	ror $1048.w		; 6E 48 10
	bcc  65.b		; 90 41
	tsb $00.b		; 04 00
	bvs   1.b		; 70 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	rti		; 40

	ora $0A.b		; 05 0A
	ora $0142.w		; 0D 42 01
	bvs  10.b		; 70 0A
	cmp $0C00.w,Y		; D9 00 0C
	ora #$04.b		; 09 04
	bit #$02.b		; 89 02
	cop $60.b		; 02 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
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
	brk $01.b		; 00 01
	brk $0A.b		; 00 0A
	cpy #$20.b		; C0 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	sta $1C.b		; 85 1C
	ora ($01.b,X)		; 01 01
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $01.b		; 00 01
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
	bpl -84.b		; 10 AC
	bcc -116.b		; 90 8C
	ora $98.b,S		; 03 98
	ora ($12.b,X)		; 01 12
	ror A		; 6A
	mvp $40,$04		; 44 04 40
	rti		; 40

	jmp $0264.w		; 4C 64 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	.db $82, $01, $00		; 82 01 00
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
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
	brk $4C.b		; 00 4C
	bpl   9.b		; 10 09
	bcc -92.b		; 90 A4
	asl A		; 0A
	brk $20.b		; 00 20
	ldy $02.b		; A4 02
	brk $24.b		; 00 24
	bit $00.b		; 24 00
	php		; 08
	jsr $0000.w		; 20 00 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $24.b		; 00 24
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
	tsb $04.b		; 04 04
	adc $9A49.w,Y		; 79 49 9A
	lsr A		; 4A
	tya		; 98
	.db $82, $20, $5A		; 82 20 5A
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	brk $49.b		; 00 49
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $0A.b		; 00 0A
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	mvp $60,$00		; 44 00 60
	brk $08.b		; 00 08
	cop $20.b		; 02 20
	trb $02.b		; 14 02
	php		; 08
	brk $20.b		; 00 20
	pha		; 48
	ora ($00.b,X)		; 01 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $88.b		; 00 88
	tay		; A8
	eor [$80.b],Y		; 57 80
	pha		; 48
	cmp ($03.b)		; D2 03
	ora ($60.b,X)		; 01 60
	ldx #$20.b		; A2 20
	ldy $02A2.w		; AC A2 02
	dey		; 88
	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	php		; 08
	brk $20.b		; 00 20
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	eor ($22.b,X)		; 41 22
	bmi   8.b		; 30 08
	ora ($02.b,X)		; 01 02
	bne  15.b		; D0 0F
	ora #$11.b		; 09 11
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
	brk $02.b		; 00 02
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
	eor ($10.b)		; 52 10
	cop $90.b		; 02 90
	cop $8A.b		; 02 8A
	bvc   8.b		; 50 08
	cop $20.b		; 02 20
	cpy #$4C.b		; C0 4C
	.db $42, $00		; 42 00
	brk $10.b		; 00 10
	brk $06.b		; 00 06
	brk $80.b		; 00 80
	ora ($40.b,X)		; 01 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $03.b		; 00 03
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
	php		; 08
	brk $0A.b		; 00 0A
	brk $14.b		; 00 14
	sty $02.b		; 84 02
	sty $0008.w		; 8C 08 00
	tsb $04.b		; 04 04
	brk $02.b		; 00 02
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
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFDBF.l,X		; BF BF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	adc [$E7.b],Y		; 77 E7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l		; EF FB FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	inc $FFBF.w,X		; FE BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFEF.l,X		; DF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFFFBE.l,X		; DF BE FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DF9FFF.l,X		; FF FF 9F DF
	cmp $BFFFAB.l,X		; DF AB FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	cmp $FFFFFE.l,X		; DF FE FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	sbc $FFEFF7.l,X		; FF F7 EF FF
	sbc $FFEFDF.l,X		; FF DF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FF7FFE.l,X		; FF FE 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
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
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	cmp $FEFFEF.l,X		; DF EF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFEEFF.l,X		; FF FF EE FF
	sbc $FFFBFF.l		; EF FF FB FF
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	xce		; FB
	cmp $FFBFFF.l,X		; DF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	adc $FBFFFF.l,X		; 7F FF FF FB
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w		; EE FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	ldx $E7FF.w,Y		; BE FF E7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
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
	cmp $FCFDFF.l,X		; DF FF FD FC
	cmp $FFFFEE.l,X		; DF EE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEFFFF.l,X		; FF FF FF EE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	ora ($10.b),Y		; 11 10
	ora #$07.b		; 09 07
	jsr $0000.w		; 20 00 00
	asl $70.b		; 06 70
	bcs -108.b		; B0 94
	sty $46.b		; 84 46
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	rti		; 40

	cop $01.b		; 02 01
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
	rti		; 40

	tsb $12.b		; 04 12
	ora ($82.b,X)		; 01 82
	.db $62, $80, $80		; 62 80 80
	brk $21.b		; 00 21
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $61.b		; 02 61
	.db $42, $09		; 42 09
	rts		; 60

	ora ($30.b,X)		; 01 30
	plp		; 28
	and ($00.b,X)		; 21 00
	asl $66.b,X		; 16 66
	.db $42, $80		; 42 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bpl -128.b		; 10 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	ora ($00.b,X)		; 01 00
	php		; 08
	bit $0400.w		; 2C 00 04
	mvp $00,$00		; 44 00 00
	tsb $0E.b		; 04 0E
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
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
	tsb $00.b		; 04 00
	stz $4022.w		; 9C 22 40
	brk $80.b		; 00 80
	tsb $01.b		; 04 01
	ora ($80.b,S),Y		; 13 80
	nop		; EA
	bcc  65.b		; 90 41
	brk $0A.b		; 00 0A
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($36.b,X)		; 01 36
	brk $08.b		; 00 08
	rti		; 40

	asl $01.b		; 06 01
	and $00.b		; 25 00
	jsr $0020.w		; 20 20 00
	tsb $00.b		; 04 00
	rti		; 40

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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	tsb $08.b		; 04 08
	cop $8B.b		; 02 8B
	rti		; 40

	tsb $00.b		; 04 00
	ora $33.b		; 05 33
	php		; 08
	jsr $8001.w		; 20 01 80
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
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $80.b		; 00 80
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
	dey		; 88
	cop $04.b		; 02 04
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $C0.b		; 00 C0
	tsb $00.b		; 04 00
	php		; 08
	sta ($02.b,X)		; 81 02
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
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $62, $00, $64		; 62 00 64
	ldy $22.b		; A4 22
	ora #$0D.b		; 09 0D
	cop $C0.b		; 02 C0
	.db $82, $84, $24		; 82 84 24
	php		; 08
	ora $88.b		; 05 88
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	stz $04.b,X		; 74 04
	dec $01.b		; C6 01
	rti		; 40

	.db $82, $00, $80		; 82 00 80
	cpy #$00.b		; C0 00
	mvp $20,$00		; 44 00 20
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	bra  24.b		; 80 18
	bra  36.b		; 80 24
	tsb $80.b		; 04 80
	ora ($40.b)		; 12 40
	jsr $0408.w		; 20 08 04
	php		; 08
	ply		; 7A
	pea $4028.w		; F4 28 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	brk $20.b		; 00 20
	rti		; 40

	brk $00.b		; 00 00
	jsl $807202.l		; 22 02 72 80
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

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
	brk $0E.b		; 00 0E
	rep #$C1		; C2 C1
	rts		; 60

	bit $E2.b		; 24 E2
	brk $02.b		; 00 02
	.db $82, $40, $40		; 82 40 40
	plp		; 28
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	tsb $00.b		; 04 00
	cop $04.b		; 02 04
	bra   0.b		; 80 00
	brk $84.b		; 00 84
	tsb $00.b		; 04 00
	rti		; 40

	tsb $0020.w		; 0C 20 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	cop $20.b		; 02 20
	brk $40.b		; 00 40
	tsb $88.b		; 04 88
	and ($08.b),Y		; 31 08
	cpx #$02.b		; E0 02
	eor $201030.l,X		; 5F 30 10 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $1C.b		; 00 1C
	php		; 08
	.db $82, $10, $14		; 82 10 14
	bra   0.b		; 80 00
	jsr $0647.w		; 20 47 06
	brk $00.b		; 00 00
	bit $80.b		; 24 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra   0.b		; 80 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $FFEF.w,Y		; BE EF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $EDFFFF.l,X		; FF FF FF ED
	lda $7FFFFF.l,X		; BF FF FF 7F
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xba		; EB
	inc $FFFF.w		; EE FF FF
	adc $FF7FFF.l,X		; 7F FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
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
	sbc $7E7FFF.l,X		; FF FF 7F 7E
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFF7FE.l,X		; FF FE F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $7FFFF7.l,X		; BF F7 FF 7F
	sbc $FFDFFF.l,X		; FF FF DF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
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
	sbc ($EF.b,S),Y		; F3 EF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBE7F.l,X		; FF 7F BE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFF57F.l,X		; FF 7F F5 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFF7EF.l,X		; FF EF F7 FF
	sbc $77FFFF.l,X		; FF FF FF 77
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFDFB.l,X		; FF FB FD FF
	sbc $FF7FFB.l,X		; FF FB 7F FF
	sbc [$DF.b],Y		; F7 DF
	sbc $FF7FEF.l,X		; FF EF 7F FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FF7FBB.l,X		; FF BB 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	adc $FFFFEF.l,X		; 7F EF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $DFF66F.l,X		; FF 6F F6 DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l		; EF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $F7FBFF.l,X		; FF FF FB F7
	lda [$FF.b],Y		; B7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l		; EF FF FF FD
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $BDFFFB.l,X		; FF FB FF BD
	sbc $FE7FFF.l,X		; FF FF 7F FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDB.l,X		; FF DB FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $73FFFF.l,X		; FF FF FF 73
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFB.l,X		; FF FB FF F7
	sbc $EFFFFF.l,X		; FF FF FF EF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sta $FFFE1F.l,X		; 9F 1F FE FF
	cmp $FFFFFD.l,X		; DF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $EFFFFF.l,X		; BF FF FF EF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFF7EF.l,X		; FF EF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFF.w,X		; FD FF DF
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	inc $FFFF.w		; EE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FDFFD.l,X		; FF FD DF 7F
	sbc $BFDFBB.l,X		; FF BB DF BF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	adc $F7FFF7.l,X		; 7F F7 FF F7
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $FFFDFB.l,X		; FF FB FD FF
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
	xce		; FB
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
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
	sbc $DFF7FF.l,X		; FF FF F7 DF
	lda $FF3FFE.l,X		; BF FE 3F FF
	xce		; FB
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $57FFFB.l,X		; 7F FB FF 57
	sbc $FF7F.w,X		; FD 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFBFFB.l,X		; FF FB BF FF
	adc [$EF.b],Y		; 77 EF
	sbc $F7FFFB.l,X		; FF FB FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFF.w,X		; FD FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C9FFFF.l,X		; FF FF FF C9
	and ($A4.b,X)		; 21 A4
	cpy $9098.w		; CC 98 90
	cop $22.b		; 02 22
	rti		; 40

	jsr $1B84.w		; 20 84 1B
	tsb $20.b		; 04 20
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	rts		; 60

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $60.b		; 04 60
	ora #$00.b		; 09 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra  57.b		; 80 39
	tsb $80.b		; 04 80
	bcc -128.b		; 90 80
	ora ($08.b)		; 12 08
	bit $08.b		; 24 08
	inc A		; 1A
	rti		; 40

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
	brk $22.b		; 00 22
	eor [$10.b],Y		; 57 10
	rti		; 40

	sbc ($40.b,X)		; E1 40
	and [$40.b]		; 27 40
	bpl -111.b		; 10 91
	jsr $02C0.w		; 20 C0 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $01.b		; 00 01
	brk $28.b		; 00 28
	brk $22.b		; 00 22
	stz $50.b		; 64 50
	tsb $80.b		; 04 80
	jsr $802A.w		; 20 2A 80
	bra   0.b		; 80 00
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
	tsb $12.b		; 04 12
	lsr $04.b		; 46 04
	brk $10.b		; 00 10
	adc ($0C.b)		; 72 0C
	sty $80.b		; 84 80
	brk $08.b		; 00 08
	cpy #$56.b		; C0 56
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	rti		; 40

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
	lsr $1020.w,X		; 5E 20 10
	sta ($04.b,X)		; 81 04
	brk $10.b		; 00 10
	adc ($00.b,X)		; 61 00
	php		; 08
	ldy #$80.b		; A0 80
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
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
	brk $04.b		; 00 04
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
	brk $02.b		; 00 02
	php		; 08
	cpy #$00.b		; C0 00
	stz $8212.w		; 9C 12 82
	adc #$D0.b		; 69 D0
	bra -54.b		; 80 CA
	php		; 08
	cpy $2840.w		; CC 40 28
	bra 100.b		; 80 64
	ora ($00.b,X)		; 01 00
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
	php		; 08
	bpl -124.b		; 10 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $10.b		; 00 10
	brk $C0.b		; 00 C0
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	jsr $0080.w		; 20 80 00
	cop $12.b		; 02 12
	bpl -92.b		; 10 A4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta ($82.b,X)		; 81 82
	brk $43.b		; 00 43
	cop $21.b		; 02 21
	ora ($00.b,X)		; 01 00
	php		; 08
	sta ($02.b)		; 92 02
	cpy #$40.b		; C0 40
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	rti		; 40

	brk $04.b		; 00 04
	cpy #$50.b		; C0 50
	brk $28.b		; 00 28
	bra   0.b		; 80 00
	bvc   4.b		; 50 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jsr $0000.w		; 20 00 00
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
	brk $42.b		; 00 42
	bcc  56.b		; 90 38
	and ($90.b,X)		; 21 90
	cmp ($01.b,S),Y		; D3 01
	bpl  68.b		; 10 44
	ora ($A6.b,X)		; 01 A6
	jsr $0028.w		; 20 28 00
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $08.b		; 02 08
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($A0.b,X)		; 81 A0
	ora $08.b		; 05 08
	and ($0C.b)		; 32 0C
	bpl  20.b		; 10 14
	bit $22.b		; 24 22
	brk $30.b		; 00 30
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $46.b		; 00 46
	php		; 08
	ora $1469.w		; 0D 69 14
	dey		; 88
	ora ($4A.b),Y		; 11 4A
	ror A		; 6A
	dey		; 88
	tsb $24.b		; 04 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $00.b,S		; 63 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	and ($C0.b,X)		; 21 C0
	bpl   3.b		; 10 03
	.db $82, $60, $00		; 82 60 00
	brk $00.b		; 00 00
	asl $20.b		; 06 20
	bvc   8.b		; 50 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	pha		; 48
	cmp $9102.w		; CD 02 91
	ldy $80.b,X		; B4 80
	cpy #$12.b		; C0 12
	asl $07.b		; 06 07
	bvc -60.b		; 50 C4
	pha		; 48
	sty $10.b		; 84 10
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rts		; 60

	cli		; 58
	brk $04.b		; 00 04
	bpl  96.b		; 10 60
	brk $BC.b		; 00 BC
	bcc   4.b		; 90 04
	ora ($C4.b,X)		; 01 C4
	rti		; 40

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
	sbc $DFFFFF.l,X		; FF FF FF DF
	inc $FFEF.w,X		; FE EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFF.w,X		; 7D FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFFE.l,X		; FF FE FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDBFFF.l,X		; FF FF BF FD
	sbc $FEFFDF.l,X		; FF DF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF9FFF.l,X		; FF FF 9F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $DFF7BD.l,X		; FF BD F7 DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $BBBFFF.l,X		; FF FF BF BB
	sbc $FFFEFF.l,X		; FF FF FE FF
	xce		; FB
	sbc ($EF.b,S),Y		; F3 EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFF7F.l,X		; FF 7F FF FE
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFDDFF.l,X		; FF FF DD EF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7DFFFF.l,X		; FF FF FF 7D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FBEFEF.l,X		; FF EF EF FB
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFE.l,X		; FF FE FF EF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBEFFF.l,X		; FF FF EF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFB.l,X		; FF FB 7F FF
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBD.w,Y		; F9 BD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FF7F.w,X		; FE 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFEFF.l,X		; FF FF FE EF
	sbc [$FB.b],Y		; F7 FB
	sbc $FFFFBF.l,X		; FF BF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDDFF7.l,X		; FF F7 DF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFD66F.l,X		; FF 6F D6 FF
	sbc $EFFFFD.l,X		; FF FD FF EF
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
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $9FFFDF.l,X		; FF DF FF 9F
	sbc $FBFFFB.l,X		; FF FB FF FB
	tyx		; BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFB.w,X		; FE FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FB7FFF.l,X		; FF FF 7F FB
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $BEFFFF.l,X		; FF FF FF BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF7FF.l,X		; FF FF F7 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEF7F.l,X		; FF 7F EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A8C2FF.l,X		; FF FF C2 A8
	sta ($00.b,X)		; 81 00
	jsr $0D40.w		; 20 40 0D
	tsb $2046.w		; 0C 46 20
	jsl $284090.l		; 22 90 40 28
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cop $00.b		; 02 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	cop $00.b		; 02 00
	tsb $40.b		; 04 40
	ora $800000.l		; 0F 00 00 80
	brk $09.b		; 00 09
	ora ($00.b,X)		; 01 00
	txa		; 8A
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $43.b		; 00 43
	stz $11.b		; 64 11
	bpl   0.b		; 10 00
	cop $9C.b		; 02 9C
	stx $20.b		; 86 20
	ldy #$00.b		; A0 00
	bcc -128.b		; 90 80
	rti		; 40

	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	rti		; 40

	brk $20.b		; 00 20
	brk $01.b		; 00 01
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl 104.b		; 10 68
	jsr $2041.w		; 20 41 20
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rti		; 40

	php		; 08
	bmi  64.b		; 30 40
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  67.b		; 70 43
	rol $90.b		; 26 90
	sta [$03.b]		; 87 03
	rti		; 40

	and #$20.b		; 29 20
	ora ($10.b,X)		; 01 10
	bcc  12.b		; 90 0C
	brk $02.b		; 00 02
	.db $82, $10, $00		; 82 10 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $60.b		; 00 60
	plp		; 28
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	bvc  36.b		; 50 24
	jsr $9400.w		; 20 00 94
	bvc   0.b		; 50 00
	bvc -128.b		; 50 80
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
	brk $04.b		; 00 04
	cpy #$48.b		; C0 48
	cop $00.b		; 02 00
	cpx #$F0.b		; E0 F0
	tsb $08.b		; 04 08
	bpl -128.b		; 10 80
	brk $05.b		; 00 05
	sta ($A0.b),Y		; 91 A0
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bpl  12.b		; 10 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	jsr $0040.w		; 20 40 00
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	cop $43.b		; 02 43
	plp		; 28
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	plp		; 28
	ora ($00.b)		; 12 00
	php		; 08
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $0C80.w		; 0C 80 0C
	bra   3.b		; 80 03
	sta ($0C.b,S),Y		; 93 0C
	lda ($0A.b),Y		; B1 0A
	brk $2C.b		; 00 2C
	rti		; 40

	brk $00.b		; 00 00
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	bpl   0.b		; 10 00
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
	brk $E2.b		; 00 E2
	cop $82.b		; 02 82
	php		; 08
	bra   0.b		; 80 00
	brk $32.b		; 00 32
	brk $90.b		; 00 90
	jsr $00A8.w		; 20 A8 00
	bpl   0.b		; 10 00
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
	brk $04.b		; 00 04
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
	rts		; 60

	lsr $87.b		; 46 87
	dey		; 88
	jsr $0412.w		; 20 12 04
	and ($40.b,X)		; 21 40
	rts		; 60

	txa		; 8A
	php		; 08
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0040.w		; 20 40 00
	brk $02.b		; 00 02
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
	brk $69.b		; 00 69
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	brk $88.b		; 00 88
	brk $50.b		; 00 50
	tsb $92.b		; 04 92
	plp		; 28
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	rti		; 40

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
	brk $0C.b		; 00 0C
	bit $8A.b		; 24 8A
	cop $40.b		; 02 40
	cop $00.b		; 02 00
	ora ($B2.b,X)		; 01 B2
	tsb $88.b		; 04 88
	brk $80.b		; 00 80
	php		; 08
	php		; 08
	tsb $00.b		; 04 00
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
	brk $01.b		; 00 01
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
	tsb $00.b		; 04 00
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
	brk $0C.b		; 00 0C
	jsr $308A.w		; 20 8A 30
	plp		; 28
	ora ($00.b,X)		; 01 00
	pha		; 48
	jsr $808C.w		; 20 8C 80
	bvc -118.b		; 50 8A
	tsb $00.b		; 04 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
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
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
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
	brk $C2.b		; 00 C2
	dec $54.b		; C6 54
	bmi -120.b		; 30 88
	cop $8A.b		; 02 8A
	tsb WRDIVL.w		; 0C 04 42
	tsb $00.b		; 04 00
	ora #$01.b		; 09 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	php		; 08
	bit $04.b		; 24 04
	bmi   0.b		; 30 00
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	bmi  64.b		; 30 40
	bmi   0.b		; 30 00
	php		; 08
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
	brk $04.b		; 00 04
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ply		; 7A
	sbc $FFFFE7.l,X		; FF E7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $7BFFFF.l,X		; FF FF FF 7B
	sbc ($FF.b,S),Y		; F3 FF
	sbc ($FF.b,S),Y		; F3 FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	adc $FFFFBE.l,X		; 7F BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $B7FFFF.l,X		; FF FF FF B7
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
	sbc $BFFDFF.l,X		; FF FF FD BF
	sbc $BFFFDE.l,X		; FF DE FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $F7FDFF.l,X		; FF FF FD F7
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFEDF.l,X		; FF DF FE FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $EFFBF6.l,X		; FF F6 FB EF
	tda		; 7B
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFEFF7.l,X		; FF F7 EF FF
	sbc $EFBFFF.l,X		; FF FF BF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7BFFF.l,X		; FF FF BF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	cmp $DFFBBF.l,X		; DF BF FB DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $F7FFFB.l,X		; FF FB FF F7
	sbc $FFFFFD.l,X		; FF FD FF FF
	inc $7FFF.w,X		; FE FF 7F
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FEFF7F.l,X		; FF 7F FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFBFFE.l		; EF FE BF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $BFFFE7.l,X		; 7F E7 FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFF7.l,X		; 7F F7 FF FF
	inc $FBFF.w,X		; FE FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBEBF.l,X		; FF BF BE FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FBFFFF.l,X		; BF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFBFE.l,X		; FF FE FB FB
	cmp $FFBFFF.l,X		; DF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFDFB.l		; EF FB FD FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $F7F3FF.l,X		; FF FF F3 F7
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	lda $DFFFFF.l,X		; BF FF FF DF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFF75F.l,X		; FF 5F F7 DF
	inc $F7FF.w,X		; FE FF F7
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F9FFFF.l,X		; FF FF FF F9
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $BFFFFD.l,X		; FF FD FF BF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	inc $FFFF.w,X		; FE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	inc $BFFF.w,X		; FE FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $BE3EFB.l,X		; FF FB 3E BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FEFFEF.l,X		; FF EF FF FE
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $FF7F.w,X		; 7E 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	stx $000E.w		; 8E 0E 00
	sbc ($40.b,X)		; E1 40
	cop $04.b		; 02 04
	.db $42, $8D		; 42 8D
	eor $047C.w		; 4D 7C 04
	cop $21.b		; 02 21
	ora ($88.b,X)		; 01 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	jsr $4400.w		; 20 00 44
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
	ora ($D0.b),Y		; 11 D0
	cpy $02.b		; C4 02
	brk $80.b		; 00 80
	mvp $04,$04		; 44 04 04
	eor ($00.b,X)		; 41 00
	rol $60.b		; 26 60
	bcc   0.b		; 90 00
	cop $00.b		; 02 00
	rti		; 40

	brk $20.b		; 00 20
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
	and ($C0.b)		; 32 C0
	bit $00.b		; 24 00
	lsr $10.b		; 46 10
	asl A		; 0A
	bra  64.b		; 80 40
	tya		; 98
	asl A		; 0A
	jsr $8140.w		; 20 40 81
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $800C.w		; 20 0C 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	tsb $08.b		; 04 08
	ora $0C.b		; 05 0C
	brk $40.b		; 00 40
	php		; 08
	brk $08.b		; 00 08
	rts		; 60

	jsr $8003.w		; 20 03 80
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
	and ($FA.b)		; 32 FA
	eor $19.b		; 45 19
	jmp ($1808.w)		; 6C 08 18
	clc		; 18
	cli		; 58
	plp		; 28
	cop $00.b		; 02 00
	plp		; 28
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ldy #$00.b		; A0 00
	php		; 08
	rts		; 60

	bvs -96.b		; 70 A0
	bcc  48.b		; 90 30
	bcc   0.b		; 90 00
	ora ($00.b,X)		; 01 00
	ora ($40.b),Y		; 11 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
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
	brk $0C.b		; 00 0C
	lda ($03.b,X)		; A1 03
	brk $80.b		; 00 80
	iny		; C8
	ora ($00.b,X)		; 01 00
	mvp $2C,$31		; 44 31 2C
	pha		; 48
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	jsr $0000.w		; 20 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $20.b		; 04 20
	bcc  32.b		; 90 20
	dey		; 88
	tsb $08.b		; 04 08
	php		; 08
	adc ($02.b,X)		; 61 02
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $42.b		; 00 42
	sta $008244.l		; 8F 44 82 00
	ldy #$40.b		; A0 40
	.db $42, $80		; 42 80
	.db $82, $52, $1A		; 82 52 1A
	trb $06.b		; 14 06
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $41.b		; 00 41
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $22.b		; 00 22
	bra  86.b		; 80 56
	brk $80.b		; 00 80
	sta ($80.b)		; 92 80
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
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	lsr $06.b		; 46 06
	jmp $8AC0.w		; 4C C0 8A
	iny		; C8
	phd		; 0B
	cpy $30.b		; C4 30
	bvc   1.b		; 50 01
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2200.w		; 20 00 22
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	brk $04.b		; 00 04
	php		; 08
	pha		; 48
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $84.b		; 00 84
	brk $06.b		; 00 06
	brk $60.b		; 00 60
	tsb $71.b		; 04 71
	ora ($42.b,X)		; 01 42
	ldy #$00.b		; A0 00
	plp		; 28
	dey		; 88
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	rti		; 40

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
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
	cop $00.b		; 02 00
	php		; 08
	brk $02.b		; 00 02
	php		; 08
	ldy $40.b		; A4 40
	brk $00.b		; 00 00
	tsb $0A.b		; 04 0A
	cop $04.b		; 02 04
	tsb $01.b		; 04 01
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
	brk $20.b		; 00 20
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
	brk $90.b		; 00 90
	adc $0A.b,S		; 63 0A
	sec		; 38
	cop $40.b		; 02 40
	rti		; 40

	sty $CA.b		; 84 CA
	rol $00.b		; 26 00
	cmp ($04.b,X)		; C1 04
	sty $4000.w		; 8C 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6A.b		; 00 6A
	jsl $109804.l		; 22 04 98 10
	brk $18.b		; 00 18
	brk $90.b		; 00 90
	bra   2.b		; 80 02
	cpy $180B.w		; CC 0B 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	inc $F3FF.w,X		; FE FF F3
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFEF.l,X		; FF EF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFEFFD.l,X		; FF FD EF FF
	tda		; 7B
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
	sbc $FFFDFD.l,X		; FF FD FD FF
	sbc $FFDEFF.l,X		; FF FF DE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFE.l,X		; DF FE FF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $FFEF.w,X		; DE EF FF
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	lda $FFFEFF.l,X		; BF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDF7.l,X		; FF F7 FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
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
	sbc $FFFDF7.l,X		; FF F7 FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFB.l,X		; BF FB FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFE.l,X		; FF FE FF FF
	inc $FFF7.w,X		; FE F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	lda $FFFFFD.l,X		; BF FD FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $F7FF.w,X		; FE FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $F7FBFF.l,X		; FF FF FB F7
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
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFBFF.l,X		; FF FF FB EF
	sbc $FEFFDF.l,X		; FF DF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFDDFF.l,X		; FF FF DD DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFF7.l,X		; FF F7 FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFEFF.l		; EF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFD.l,X		; FF FD FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7EFEF.l,X		; FF EF EF F7
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $80FFFF.l,X		; FF FF FF 80
	bcc  29.b		; 90 1D
	stz $8C4C.w		; 9C 4C 8C
	sty $00.b		; 84 00
	tsb $38.b		; 04 38
	trb $1444.w		; 1C 44 14
	php		; 08
	cop $90.b		; 02 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
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
	rts		; 60

	cop $04.b		; 02 04
	brk $44.b		; 00 44
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
	brk $08.b		; 00 08
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
	rts		; 60

	php		; 08
	bcc -30.b		; 90 E2
	and $08.b		; 25 08
	jsr $1680.w		; 20 80 16
	bpl   1.b		; 10 01
	brk $04.b		; 00 04
	bra   0.b		; 80 00
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
	brk $01.b		; 00 01
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $4000.w		; 0E 00 40
	cop $70.b		; 02 70
	brk $2A.b		; 00 2A
	jsr $0180.w		; 20 80 01
	brk $A1.b		; 00 A1
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $40.b		; 00 40
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
	brk $05.b		; 00 05
	bra  80.b		; 80 50
	bra  74.b		; 80 4A
	brk $80.b		; 00 80
	rol $50.b		; 26 50
	lda ($10.b,S),Y		; B3 10
	php		; 08
	cop $4C.b		; 02 4C
	trb $00.b		; 14 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	cop $70.b		; 02 70
	trb $30.b		; 14 30
	brk $48.b		; 00 48
	ora ($A1.b,X)		; 01 A1
	iny		; C8
	brk $C1.b		; 00 C1
	sty $42.b		; 84 42
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

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
	brk $91.b		; 00 91
	eor ($80.b,S),Y		; 53 80
	bcs -125.b		; B0 83
	brk $30.b		; 00 30
	jsr $0004.w		; 20 04 00
	clc		; 18
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  80.b		; 80 50
	brk $08.b		; 00 08
	bvc  16.b		; 50 10
	tsb $02.b		; 04 02
	brk $44.b		; 00 44
	eor ($00.b),Y		; 51 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	rti		; 40

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
	lda ($80.b,X)		; A1 80
	bpl   0.b		; 10 00
	sty $2085.w		; 8C 85 20
	and [$30.b],Y		; 37 30
	pha		; 48
	ldy $20.b		; A4 20
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	cop $00.b		; 02 00
	rti		; 40

	cop $92.b		; 02 92
	cop $04.b		; 02 04
	mvp $08,$50		; 44 50 08
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $80.b		; 00 80
	php		; 08
	php		; 08
	bra   8.b		; 80 08
	ldy #$C4.b		; A0 C4
	rol A		; 2A
	cpx #$06.b		; E0 06
	adc ($00.b,X)		; 61 00
	sta $201002.l		; 8F 02 10 20
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	cmp $90.b,S		; C3 90
	ldy #$10.b		; A0 10
	brk $20.b		; 00 20
	eor ($04.b)		; 52 04
	bvc  12.b		; 50 0C
	brk $88.b		; 00 88
	bra   8.b		; 80 08
	php		; 08
	brk $08.b		; 00 08
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
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $6A.b		; 00 6A
	bpl -128.b		; 10 80
	pei ($10.b)		; D4 10
	tsb $00.b		; 04 00
	jsr $0087.w		; 20 87 00
	sty $00.b		; 84 00
	and $000800.l		; 2F 00 08 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0B.b		; 00 0B
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	brk $11.b		; 00 11
	ora ($4C.b,X)		; 01 4C
	bpl  32.b		; 10 20
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
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	phd		; 0B
	plp		; 28
	trb $A0.b		; 14 A0
	bra   8.b		; 80 08
	iny		; C8
	bra   7.b		; 80 07
	jsr $2002.w		; 20 02 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $60.b		; 00 60
	.db $42, $04		; 42 04
	brk $30.b		; 00 30
	asl $02.b		; 06 02
	brk $20.b		; 00 20
	bra   8.b		; 80 08
	iny		; C8
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFDBFF.l,X		; DF FF DB FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFF7.l,X		; FF F7 EF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDE77F.l,X		; FF 7F E7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFDFFF.l,X		; BF FF DF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF77.l,X		; FF 77 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FBFFFF.l,X		; DF FF FF FB
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F77EFF.l,X		; FF FF 7E F7
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc [$FB.b],Y		; F7 FB
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEF7.l,X		; FF F7 FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	cmp [$FF.b],Y		; D7 FF
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
	sbc $DFF9FF.l,X		; FF FF F9 DF
	lda $7FFFEF.l,X		; BF EF FF 7F
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $BFFEFF.l,X		; FF FF FE BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFF5.l,X		; FF F5 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $7FFFBF.l,X		; FF BF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc [$FB.b],Y		; F7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFD.w,X		; FD FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	lda $FFEFFF.l,X		; BF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7DFFF.l,X		; FF FF DF F7
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $F7FEFF.l,X		; FF FF FE F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	lda $FDFFFF.l,X		; BF FF FF FD
	sbc $FEFBFF.l,X		; FF FF FB FE
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $F7FFFF.l,X		; FF FF FF F7
	cmp $FFFFFF.l,X		; DF FF FF FF
	xce		; FB
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEF7BB.l,X		; FF BB F7 FE
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	xce		; FB
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF77.l,X		; FF 77 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	sbc $EEFEFF.l,X		; FF FF FE EE
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $7FFFFF.l,X		; DF FF FF 7F
	sbc $FFF7FF.l,X		; FF FF F7 FF
	lda $FDEF7F.l,X		; BF 7F EF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFBF.l,X		; FF BF FF FE
	xce		; FB
	sbc $FFFBFF.l,X		; FF FF FB FF
	tda		; 7B
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $F7FFFE.l,X		; FF FE FF F7
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $99FFFF.l,X		; FF FF FF 99
	bvc   5.b		; 50 05
	dec A		; 3A
	inc A		; 1A
	ora $12.b		; 05 12
	jsr $4024.w		; 20 24 40
	plp		; 28
	brk $29.b		; 00 29
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$02.b		; A0 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	iny		; C8
	jsl $401109.l		; 22 09 11 40
	sty $10.b		; 84 10
	ora ($04.b),Y		; 11 04
	sta $0010.w		; 8D 10 00
	tya		; 98
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
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
	brk $02.b		; 00 02
	brk $2A.b		; 00 2A
	bra -78.b		; 80 B2
	pha		; 48
	jsr $6100.w		; 20 00 61
	cop $43.b		; 02 43
	ora ($20.b,S),Y		; 13 20
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0040.w		; 20 40 00
	brk $54.b		; 00 54
	jsr $0018.w		; 20 18 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	and $02.b,S		; 23 02
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $02.b		; 00 02
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
	php		; 08
	brk $00.b		; 00 00
	asl $A2.b		; 06 A2
	stx $40.b		; 86 40
	tsb $10.b		; 04 10
	rol $10.b,X		; 36 10
	ora $10.b		; 05 10
	pha		; 48
	bvs -40.b		; 70 D8
	ora ($08.b,X)		; 01 08
	brk $40.b		; 00 40
	brk $10.b		; 00 10
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
	cop $00.b		; 02 00
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $04.b		; 00 04
	php		; 08
	plp		; 28
	mvn $C0,$20		; 54 20 C0
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	rts		; 60

	brk $35.b		; 00 35
	jsl $002000.l		; 22 00 20 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

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
	plp		; 28
	jsr $5964.w		; 20 64 59
	asl $84.b		; 06 84
	rti		; 40

	txs		; 9A
	ora ($16.b),Y		; 11 16
	.db $82, $01, $40		; 82 01 40
	sta ($01.b)		; 92 01
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $E0.b		; 00 E0
	asl $00.b		; 06 00
	php		; 08
	cop $42.b		; 02 42
	bit $2042.w		; 2C 42 20
	ldy #$90.b		; A0 90
	bvc   0.b		; 50 00
	rti		; 40

	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $04.b		; 06 04
	asl $48.b		; 06 48
	bmi  13.b		; 30 0D
	ror A		; 6A
	trb $4A22.w		; 1C 22 4A
	brk $90.b		; 00 90
	ldy $48.b		; A4 48
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
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
	php		; 08
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sty $08.b		; 84 08
	rti		; 40

	brk $20.b		; 00 20
	bcc   0.b		; 90 00
	tya		; 98
	cop $8A.b		; 02 8A
	rti		; 40

	brk $20.b		; 00 20
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
	brk $02.b		; 00 02
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
	ora ($04.b,X)		; 01 04
	ora $22.b		; 05 22
	brk $02.b		; 00 02
	tya		; 98
	ora $02.b,S		; 03 02
	cpy #$00.b		; C0 00
	bmi   2.b		; 30 02
	.db $42, $00		; 42 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	php		; 08
	mvp $20,$C8		; 44 C8 20
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $02.b		; 00 02
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
	brk $09.b		; 00 09
	brk $90.b		; 00 90
	bmi   4.b		; 30 04
	ora #$C4.b		; 09 C4
	bit $22.b		; 24 22
	asl $00.b		; 06 00
	ora $21.b		; 05 21
	cop $00.b		; 02 00
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	bpl   2.b		; 10 02
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bra -128.b		; 80 80
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
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	brk $48.b		; 00 48
	tsb $00.b		; 04 00
	cpy #$02.b		; C0 02
	jsr $81C2.w		; 20 C2 81
	bra  16.b		; 80 10
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
	php		; 08
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
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
	brk $C6.b		; 00 C6
	plp		; 28
	jsl $4222D0.l		; 22 D0 22 42
	plp		; 28
	ora ($30.b,X)		; 01 30
	jsl $0D8000.l		; 22 00 80 0D
	ora ($08.b,X)		; 01 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $0A.b		; 00 0A
	brk $C8.b		; 00 C8
	jsl $020000.l		; 22 00 00 02
	brk $08.b		; 00 08
	brk $84.b		; 00 84
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $7BFFFF.l,X		; FF FF FF 7B
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	dec $DFDF.w,X		; DE DF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFBF.l		; 6F BF FF FF
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
	adc $FFDFFF.l,X		; 7F FF DF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFE.l		; EF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFBFDE.l,X		; FF DE BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $7FFBFF.l,X		; FF FF FB 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFF5.l,X		; FF F5 FF F7
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FF.b,X		; F5 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7DFF.l,X		; FF FF 7D FF
	sbc [$FF.b],Y		; F7 FF
	sbc $EFFFFF.l,X		; FF FF FF EF
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
	sbc $FF7FDF.l,X		; FF DF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFF.w,X		; FD FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FEFABF.l,X		; FF BF FA FE
	sbc $FDFFFF.l		; EF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7F7FF.l,X		; FF FF F7 F7
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
	sbc $BFBFFF.l,X		; FF FF BF BF
	sbc $FDFFF7.l,X		; FF F7 FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $C08009.l,X		; FF 09 80 C0
	brk $88.b		; 00 88
	cpy #$51.b		; C0 51
	jsr $8804.w		; 20 04 88
	bpl   0.b		; 10 00
	pha		; 48
	brk $04.b		; 00 04
	ora [$00.b]		; 07 00
	tsb $10.b		; 04 10
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
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
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
	brk $C0.b		; 00 C0
	tsb $C0.b		; 04 C0
	jsl $804800.l		; 22 00 48 80
	rol A		; 2A
	cop $00.b		; 02 00
	jsr $4400.w		; 20 00 44
	cop $10.b		; 02 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $20.b		; 00 20
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
	bit $42.b,X		; 34 42
	eor ($00.b),Y		; 51 00
	ora $00.b		; 05 00
	asl $0090.w		; 0E 90 00
	and $0080.w,Y		; 39 80 00
	adc ($82.b)		; 72 82
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
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
	cli		; 58
	brk $98.b		; 00 98
	bra -112.b		; 80 90
	php		; 08
	rti		; 40

	.db $62, $10, $10		; 62 10 10
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
	bra   0.b		; 80 00
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
	brk $0B.b		; 00 0B
	brk $08.b		; 00 08
	pha		; 48
	rts		; 60

	brk $13.b		; 00 13
	tsb $40.b		; 04 40
	trb $84.b		; 14 84
	cop $04.b		; 02 04
	lda ($04.b)		; B2 04
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	bpl   1.b		; 10 01
	cop $00.b		; 02 00
	brk $42.b		; 00 42
	tsb $02.b		; 04 02
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
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
	brk $A9.b		; 00 A9
	bra   0.b		; 80 00
	bpl   8.b		; 10 08
	jsr $0086.w		; 20 86 00
	bit $08.b		; 24 08
	rti		; 40

	dey		; 88
	tsb $44.b		; 04 44
	plp		; 28
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  25.b		; 30 19
	brk $72.b		; 00 72
	bpl -127.b		; 10 81
	tsb $2002.w		; 0C 02 20
	lsr $10.b		; 46 10
	tsb $1801.w		; 0C 01 18
	jmp $0000.w		; 4C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	rts		; 60

	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	bcc -96.b		; 90 A0
	brk $20.b		; 00 20
	bra  65.b		; 80 41
	cpy #$80.b		; C0 80
	ora $00.b		; 05 00
	ora ($00.b)		; 12 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	tsb $0110.w		; 0C 10 01
	ora ($2A.b)		; 12 2A
	.db $42, $40		; 42 40
	jsr $A000.w		; 20 00 A0
	brk $0A.b		; 00 0A
	bra   0.b		; 80 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	jsr $200A.w		; 20 0A 20
	tsb $70.b		; 04 70
	jsr $4108.w		; 20 08 41
	asl $0A.b		; 06 0A
	brk $00.b		; 00 00
	ora ($28.b,X)		; 01 28
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $02.b		; 00 02
	rti		; 40

	brk $50.b		; 00 50
	tsb $44.b		; 04 44
	.db $42, $00		; 42 00
	bra   1.b		; 80 01
	cop $00.b		; 02 00
	plp		; 28
	rti		; 40

	bmi   0.b		; 30 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $60.b		; 00 60
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
	pla		; 68
	ora ($90.b),Y		; 11 90
	txa		; 8A
	rti		; 40

	jsr $0808.w		; 20 08 08
	sta $0070.w,X		; 9D 70 00
	jsl $100001.l		; 22 01 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	jsr $804C.w		; 20 4C 80
	ora ($40.b,X)		; 01 40
	pha		; 48
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	eor ($15.b,X)		; 41 15
	bcc  10.b		; 90 0A
	bpl -126.b		; 10 82
	brk $52.b		; 00 52
	ldy #$08.b		; A0 08
	tsb $01.b		; 04 01
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $82.b		; 00 82
	ora ($A1.b)		; 12 A1
	sbc $48.b,S		; E3 48
	bpl   6.b		; 10 06
	tsb $0800.w		; 0C 00 08
	ora ($01.b)		; 12 01
	rti		; 40

	jsr $2700.w		; 20 00 27
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	adc ($00.b),Y		; 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00.b,S		; E3 00
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
	.db $EC		; Opcode EC overrunning bank boundry at 1DFFFF. Skipping.
.ENDS
