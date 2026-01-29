.BANK 2 SLOT 0
.ORG $0000

.SECTION "Bank2" FORCE

	lda $000B.w		; AD 0B 00
	sbc $FF1EF8.l,X		; FF F8 1E FF
	inc $0EF8.w,X		; FE F8 0E
	cpx #$1DF8.w		; E0 F8 1D
	sbc $E003.w,X		; FD 03 E0
	sed		; F8
	ora $FF.b,X		; 15 FF
	inc $F7E8.w,X		; FE E8 F7
	asl $31DE.w		; 0E DE 31
	rts		; 60

	cmp $E81FE0.l,X		; DF E0 1F E8
	inc $0102.w,X		; FE 02 01
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	sbc $E4E53F.l,X		; FF 3F E5 E4
	sbc $BF07.w,Y		; F9 07 BF
	rts		; 60

	sbc $47F170.l,X		; FF 70 F1 47
	dec A		; 3A
	asl $FF06.w		; 0E 06 FF
	sbc #$E4FE.w		; E9 FE E4
	clc		; 18
	ora [$F0.b]		; 07 F0
	sed		; F8
	sbc $FDADE4.l,X		; FF E4 AD FD
	sbc $1F.b,S		; E3 1F
	sbc $778880.l,X		; FF 80 88 77
	lda $5C.b,S		; A3 5C
	ora [$FC.b],Y		; 17 FC
	lda ($0F.b)		; B2 0F
	cmp ($FF.b),Y		; D1 FF
	sei		; 78
	sta $E2BECB.l		; 8F CB BE E2
	rti		; 40

	dex		; CA
	inc $09F8.w,X		; FE F8 09
	sbc $F8C77F.l,X		; FF 7F C7 F8
	cmp $FE0301.l		; CF 01 03 FE
	ora $9EE7.w,Y		; 19 E7 9E
	sbc $14FF20.l,X		; FF 20 FF 14
	xce		; FB
	sty $7B.b,X		; 94 7B
	jsr ($A6C2.w,X)		; FC C2 A6
	jsr ($FD02.w,X)		; FC 02 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$FDFE.w		; E0 FE FD
	sta $E03FE1.l,X		; 9F E1 3F E0
	sbc $86A5.w,X		; FD A5 86
	ora [$F8.b]		; 07 F8
	sei		; 78
	sbc $DFEFAF.l,X		; FF AF EF DF
	cmp $A0A29F.l,X		; DF 9F A2 A0
	cpx #$7887.w		; E0 87 78
	cpx $10.b		; E4 10
	cpy $FBFF.w		; CC FF FB
	cmp $BFFC.w,Y		; D9 FC BF
	cpy #$30EF.w		; C0 EF 30
	tsa		; 3B
	cpy $FFC2.w		; CC C2 FF
	cmp $FC.b,S		; C3 FC
	eor [$FF.b]		; 47 FF
	cpy #$F000.w		; C0 00 F0
	jsr $00C3.w		; 20 C3 00
	sbc ($E0.b)		; F2 E0
	sbc $ABFE.w,X		; FD FE AB
	cop $85.b		; 02 85
	ora $2304FE.l		; 0F FE 04 23
	sed		; F8
	tsb $033C.w		; 0C 3C 03
	xce		; FB
	tsb $F6.b		; 04 F6
	ora #$63FF.w		; 09 FF 63
	rol $BE.b		; 26 BE
	eor ($7E.b,X)		; 41 7E
	sta ($16.b,X)		; 81 16
	ora #$0B74.w		; 09 74 0B
	bvs  15.b		; 70 0F
	plp		; 28
	ora [$D8.b]		; 07 D8
	adc $1F2026.l,X		; 7F 26 20 1F
	phy		; 5A
	inc $FF07.w,X		; FE 07 FF
	lda #$465F.w		; A9 5F 46
	lda $F87F86.l,X		; BF 86 7F F8
	adc $5294.w,X		; 7D 94 52
	sbc $DA25.w,X		; FD 25 DA
	lda #$AFD6.w		; A9 D6 AF
	beq  15.b		; F0 0F
	stx $FF.b,Y		; 96 FF
	adc $FF.b,S		; 63 FF
	sed		; F8
	ora $EF1061.l		; 0F 61 10 EF
	tay		; A8
	eor [$7D.b],Y		; 57 7D
	.db $82, $D9, $00		; 82 D9 00
	ldx $FE.b,Y		; B6 FE
	ora $F8E0C2.l		; 0F C2 E0 F8
	asl $FE55.w		; 0E 55 FE
	jmp ($C4FF.w)		; 6C FF C4
	sbc $28FF8C.l,X		; FF 8C FF 28
	cmp $81FFEF.l,X		; DF EF FF 81
	adc $8A.b,X		; 75 8A
.INDEX 8
	sep #$1D		; E2 1D
	cpx #$F8.b		; E0 F8
	ora $767F99.l		; 0F 99 7F 76
	sbc [$A7.b],Y		; F7 A7
	lda [$DD.b]		; A7 DD
	cmp $1C3F7A.l,X		; DF 7A 3F 1C
	sbc $CDFF19.l,X		; FF 19 FF CD
	and $EE1FE5.l,X		; 3F E5 1F EE
	php		; 08
	sbc $FFFD58.l,X		; FF 58 FD FF
	plp		; 28
	cpx #$FE.b		; E0 FE
	lda #$6CAF.w		; A9 AF 6C
	sbc $EFF7B7.l		; EF B7 F7 EF
	sbc $6AFCFC.l		; EF FC FC 6A
	nop		; EA
	sta $D5D500.l		; 8F 00 D5 D5
	inc $50EE.w		; EE EE 50
	asl A		; 0A
	dec $FFFF.w,X		; DE FF FF
	jsr ($FF03.w,X)		; FC 03 FF
	ora $FF.b,X		; 15 FF
	rol A		; 2A
	sbc $FCFF11.l,X		; FF 11 FF FC
	sbc $E7FF7F.l,X		; FF 7F FF E7
	sbc [$DB.b]		; E7 DB
	sbc $0EDBF4.l,X		; FF F4 DB 0E
	asl $2525.w		; 0E 25 25
	rti		; 40

	rti		; 40

	clc		; 18
	clc		; 18
	cpy $FF18.w		; CC 18 FF
	bit $1F.b		; 24 1F
	inc $F1FF.w,X		; FE FF F1
	sbc $BFFFDA.l,X		; FF DA FF BF
	inc $FF.b		; E6 FF
	eor $F08FA0.l,X		; 5F A0 8F F0
	xba		; EB
	sbc $E5FCFF.l,X		; FF FF FC E5
	plx		; FA
	inc $72FD.w,X		; FE FD 72
	adc $699F91.l,X		; 7F 91 9F 69
	ora $008040.l		; 0F 40 80 00
	cpx #$00.b		; E0 00
	sbc $04F085.l,X		; FF 85 F0 04
	sed		; F8
	cop $FC.b		; 02 FC
	bra  -1.b		; 80 FF
	rts		; 60

	sbc $F0E0F0.l,X		; FF F0 E0 F0
	phd		; 0B
	sbc $C00041.l		; EF 41 00 C0
	sbc $F8FFE4.l,X		; FF E4 FF F8
	phd		; 0B
	pei ($EE.b)		; D4 EE
	and $F853FE.l		; 2F FE 53 F8
	phd		; 0B
	ora ($FD.b,X)		; 01 FD
	cop $E2.b		; 02 E2
	inx		; E8
	ora $0811.w		; 0D 11 08
	cpx #$1F.b		; E0 1F
	dec $2F.b,X		; D6 2F
	ora $5FA782.l,X		; 1F 82 A7 5F
	pha		; 48
	lda $F687.w,Y		; B9 87 F6
	dey		; 88
	sec		; 38
	stp		; DB
	adc $C27A.w,X		; 7D 7A C2
	sbc ($10.b),Y		; F1 10
	cpy #$F1.b		; C0 F1
	lsr $3F.b		; 46 3F
	php		; 08
	adc $1FE1CD.l,X		; 7F CD E1 1F
	asl A		; 0A
	sbc $18.b,X		; F5 18
	ldx $5E08.w,Y		; BE 08 5E
	sta ($C6.b,X)		; 81 C6
	rol $C0.b		; 26 C0
	inx		; E8
	brk $D8.b		; 00 D8
	sbc [$7F.b],Y		; F7 7F
	adc $7F10E8.l		; 6F E8 10 7F
	bra  -6.b		; 80 FA
	eor [$F1.b],Y		; 57 F1
	cmp ($02.b)		; D2 02
	phb		; 8B
	phd		; 0B
	ora $6F6F0F.l		; 0F 0F 6F 6F
	lda $8FFFBF.l,X		; BF BF FF 8F
	nop		; EA
	jsr ($FD02.w,X)		; FC 02 FD
	phd		; 0B
	pea $F00F.w		; F4 0F F0
	adc $40BF90.l		; 6F 90 BF 40
	sta $C3.b		; 85 C3
	rti		; 40

	stx $4C4C.w		; 8E 4C 4C
	jsr $F7F7.w		; 20 F7 F7
	eor $F4.b,X		; 55 F4
	phd		; 0B
	sbc $B34CE2.l,X		; FF E2 4C B3
	stp		; DB
	bit $F7.b		; 24 F7
	php		; 08
	lda $1FF0FC.l,X		; BF FC F0 1F
	sed		; F8
	sta $8084.w,Y		; 99 84 80
	dec $D0.b,X		; D6 D0
	lda ($B1.b),Y		; B1 B1
	rol $FE3E.w,X		; 3E 3E FE
	sbc ($3F.b)		; F2 3F
	tas		; 1B
	sbc $7F37.w,X		; FD 37 7F
	bne  47.b		; D0 2F
	lda ($4E.b),Y		; B1 4E
	rol $FEC1.w,X		; 3E C1 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	bvc -10.b		; 50 F6
	lda $5A.b		; A5 5A
	tda		; 7B
	tsb $3B.b		; 04 3B
	tsb $4B.b		; 04 4B
	mvp $EF,$AD		; 44 AD EF
	ora $A2.b,S		; 03 A2
	lsr $41.b,X		; 56 41
	lsr $884D.w		; 4E 4D 88
	inc $BF40.w,X		; FE 40 BF
	ldy #$FC5F.w		; A0 5F FC
	cpy #$B6FF.w		; C0 FF B6
	wai		; CB
	sta [$7F.b]		; 87 7F
	adc ($9F.b),Y		; 71 9F
	sbc ($0F.b)		; F2 0F
	sbc $7907.w,Y		; F9 07 79
	cmp $7087FF.l,X		; DF FF 87 70
	sta $019F61.l		; 8F 61 9F 01
	rts		; 60

	sed		; F8
	asl $1818.w		; 0E 18 18
	eor ($40.b,X)		; 41 40
	tay		; A8
	tay		; A8
	wai		; CB
	wai		; CB
	sbc $F9BDDE.l,X		; FF DE BD F9
	asl $7ADC.w,X		; 1E DC 7A
	plx		; FA
	tda		; 7B
	xce		; FB
	sbc [$AA.b]		; E7 AA
	sbc ($57.b),Y		; F1 57
	sbc $F10C34.l,X		; FF 34 0C F1
	sbc $FF23FF.l,X		; FF FF 23 FF
	ora $FF.b		; 05 FF
	tsb $FF.b		; 04 FF
	cmp [$07.b]		; C7 07
	sta ($01.b,X)		; 81 01
	mvn $38,$00		; 54 00 38
	brk $15.b		; 00 15
	brk $FF.b		; 00 FF
	.db $62, $05, $00		; 62 05 00
	sbc $E0.b,S		; E3 E0
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	sbc $FC57FE.l,X		; FF FE 57 FC
	sbc $FFFC1F.l,X		; FF 1F FC FF
	inc $F0FF.w,X		; FE FF F0
	sbc [$F8.b]		; E7 F8
	tas		; 1B
	trb $1D.b		; 14 1D
	inc A		; 1A
	.db $42, $05		; 42 05
	cmp $F703.w,Y		; D9 03 F7
	ora $E201E4.l		; 0F E4 01 E2
	ora ($82.b,X)		; 01 82
	sbc ($E8.b)		; F2 E8
	beq -28.b		; F0 E4
	sed		; F8
	plx		; FA
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	eor ($D4.b),Y		; 51 D4
	inc $FD03.w,X		; FE 03 FD
	asl $34.b		; 06 34
	php		; 08
	inc $19.b,X		; F6 19
	cmp $0EF1FD.l,X		; DF FD F1 0E
	inc $39.b		; E6 39
	inc $19.b		; E6 19
	jmp ($04EA.w)		; 6C EA 04
	ora $BA.b,S		; 03 BA
	pea $1F00.w		; F4 00 1F
	jsr $FF1F.w		; 20 1F FF
	adc $0BFE51.l,X		; 7F 51 FE 0B
	pea $A45A.w		; F4 5A A4
	stz $4860.w,X		; 9E 60 48
	bcs  48.b		; B0 30
	cpy #$40B5.w		; C0 B5 40
	ror $FF80.w,X		; 7E 80 FF
	sbc $0FF0C0.l,X		; FF C0 F0 0F
	ldx #$6702.w		; A2 02 67
	ora [$F9.b]		; 07 F9
	ora ($29.b,X)		; 01 29
	ora ($C4.b,X)		; 01 C4
	tsb $99.b		; 04 99
	brk $2B.b		; 00 2B
	brk $3F.b		; 00 3F
	jmp.w [$0047]		; DC 47 00
	cop $FD.b		; 02 FD
	ora [$F8.b]		; 07 F8
	ora ($07.b,X)		; 01 07
	inc $FB04.w,X		; FE 04 FB
	cpy #$FFE5.w		; C0 E5 FF
	and $7F7FFF.l,X		; 3F FF 7F 7F
	sbc [$F7.b],Y		; F7 F7
	adc [$77.b],Y		; 77 77
	asl $881E.w,X		; 1E 1E 88
	php		; 08
	adc #$89.b		; 69 89
	adc $85.b		; 65 85
	tsb $EDFF.w		; 0C FF ED
	adc $779080.l,X		; 7F 80 90 77
	dey		; 88
	asl $08E1.w,X		; 1E E1 08
	sbc [$09.b],Y		; F7 09
	phd		; 0B
	asl A		; 0A
	inc $05.b,X		; F6 05
	plx		; FA
	eor ($FF.b,S),Y		; 53 FF
	ror $47.b,X		; 76 47
	jsr ($FFA5.w,X)		; FC A5 FF
	bit $BBFC.w		; 2C FC BB
	plx		; FA
	and ($FD.b),Y		; 31 FD
	cpy #$E8E8.w		; C0 E8 E8
	pea $FAF4.w		; F4 F4 FA
	cop $FC.b		; 02 FC
	plx		; FA
	nop		; EA
	jsr ($C0FE.w,X)		; FC FE C0
	inx		; E8
	ora [$F4.b],Y		; 17 F4
	phd		; 0B
	plx		; FA
	sbc $AD05FF.l,X		; FF FF 05 AD
	ldy $5052.w		; AC 52 50
	sta ($80.b),Y		; 91 80
	tay		; A8
	bra 127.b		; 80 7F
	rts		; 60

.INDEX 8
	sep #$9D		; E2 9D
	cmp $5C23.w,X		; DD 23 5C
	ora $AC2318.l		; 0F 18 23 AC
	eor ($50.b,S),Y		; 53 50
	lda $9FF1F3.l		; AF F3 F1 9F
	inx		; E8
	sbc $98D7FC.l,X		; FF FC D7 98
	adc [$E3.b]		; 67 E3
	ora $663EDA.l,X		; 1F DA 3E 66
	rol $3DCD.w,X		; 3E CD 3D
	eor $FF0F8C.l,X		; 5F 8C 0F FF
	lda $74ED.w		; AD ED 74
	sbc [$B9.b],Y		; F7 B9
	xba		; EB
	inc $FD02.w,X		; FE 02 FD
	beq  -8.b		; F0 F8
	ora ($36.b)		; 12 36
	sbc #$BF.b		; E9 BF
	lda $6BFFF9.l,X		; BF F9 FF 6B
	cmp ($7F.b)		; D2 7F
	cmp $FA.b		; C5 FA
	lda $E19EE0.l,X		; BF E0 9E E1
	ora $A9E0.w,Y		; 19 E0 A9
	bne  64.b		; D0 40
	adc [$EB.b],Y		; 77 EB
	inc $FE79.w,X		; FE 79 FE
	lda ($FF.b),Y		; B1 FF
	sbc $F474B0.l,X		; FF B0 74 F4
	asl $1CFE.w,X		; 1E FE 1C
	jsr ($3EC6.w,X)		; FC C6 3E
	tda		; 7B
	sta [$1D.b]		; 87 1D
	sta $C4.b,S		; 83 C4
	ora $4F.b,S		; 03 4F
	and ($FA.b),Y		; 31 FA
	sbc $03C20B.l,X		; FF 0B C2 03
	jsr ($FCE0.w,X)		; FC E0 FC
	adc ($00.b)		; 72 00
	rol $6FFF.w,X		; 3E FF 6F
	brk $48.b		; 00 48
	brk $5A.b		; 00 5A
	cop $21.b		; 02 21
	ora ($85.b,X)		; 01 85
	sta $E7.b		; 85 E7
	sbc [$F2.b]		; E7 F2
	sbc ($52.b,S),Y		; F3 52
	jsr ($1BFD.w,X)		; FC FD 1B
.ACCU 16
	rep #$A6		; C2 A6
	sbc ($7A.b),Y		; F1 7A
	sed		; F8
	sbc ($0C.b,X)		; E1 0C
	cop $C0.b		; 02 C0
	lda $EF.b,S		; A3 EF
	sbc $7FD0FF.l,X		; FF FF D0 7F
	bvs -17.b		; 70 EF
	sed		; F8
	sta $FC07F0.l		; 8F F0 07 FC
	ora [$F8.b]		; 07 F8
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	jsr $45FD.w		; 20 FD 45
	cpy #$80.b		; C0 80
	ply		; 7A
	sbc ($08.b),Y		; F1 08
	beq   0.b		; F0 00
	sed		; F8
	tsb $F8.b		; 04 F8
	ora ($F8.b)		; 12 F8
	asl A		; 0A
	lda $C3E3.w		; AD E3 C3
	jsr $0DE8.w		; 20 E8 0D
	ora ($FE.b,X)		; 01 FE
	cmp $37C870.l		; CF 70 C8 37
	adc ($92.b),Y		; 71 92
	sbc $866D8B.l,X		; FF 8B 6D 86
	adc $7689.w,Y		; 79 89 76
	sbc $1C.b,S		; E3 1C
	ldy #$1F.b		; A0 1F
	brk $3F.b		; 00 3F
	inc $D9.b		; E6 D9
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	jsr $FC22.w		; 20 22 FC
	inc $A057.w,X		; FE 57 A0
	bcc 111.b		; 90 6F
	asl $FF.b		; 06 FF
	ror A		; 6A
	txy		; 9B
	nop		; EA
	cmp $D41B08.l,X		; DF 08 1B D4
	and [$89.b],Y		; 37 89
	tda		; 7B
	cmp $04DDCA.l,X		; DF CA DD 04
	inc $FF00.w,X		; FE 00 FF
	bit $FC.b		; 24 FC
	inc $39.b,X		; F6 39
	brk $87.b		; 00 87
	brk $6E.b		; 00 6E
	sta ($86.b,X)		; 81 86
	sbc $6671FE.l,X		; FF FE 71 66
	sta $E39D.w,Y		; 99 9D E3
	jmp ($4783.w,X)		; 7C 83 47
	lda $F040.w,Y		; B9 40 F0
	ora $948A6A.l		; 0F 6A 8A 94
	stz $81.b		; 64 81
	sbc $7771FF.l,X		; FF FF 71 77
	lda [$6A.b],Y		; B7 6A
	lda ($95.b)		; B2 95
	sbc #$F4D8.w		; E9 D8 F4
	jmp $0A68.w		; 4C 68 0A
	sbc $04.b,X		; F5 04
	xce		; FB
	ora ($60.b,X)		; 01 60
	sbc $FC58FE.l,X		; FF FE 58 FC
	pei ($90.b)		; D4 90
	.db $42, $F1		; 42 F1
	rtl		; 6B

	rtl		; 6B

	cmp $7ADD.w,X		; DD DD 7A
	ply		; 7A
	adc $D4D4F8.l,X		; 7F F8 D4 D4
	xba		; EB
	xba		; EB
	ldy $613C.w,X		; BC 3C 61
	ora ($87.b,X)		; 01 87
	rtl		; 6B

	sty $DD.b,X		; 94 DD
	jsl $7AF87F.l		; 22 7F F8 7A
	sta $D4.b		; 85 D4
	pld		; 2B
	xba		; EB
	trb $3C.b		; 14 3C
	cmp $DC.b,S		; C3 DC
	plx		; FA
	plx		; FA
	sbc ($F1.b),Y		; F1 F1
	sbc $E6E6DF.l,X		; FF DF E6 E6
	bit #$C588.w		; 89 88 C5
	cpy #$808F.w		; C0 8F 80
	sta $80.b,X		; 95 80
	jsl $05FA21.l		; 22 21 FA 05
	clv		; B8
	sbc #$FF4F.w		; E9 4F FF
	ora $7788.w,Y		; 19 88 77
	cpy #$5C3F.w		; C0 3F 5C
	jsr $DDDF.w		; 20 DF DD
	and $BD.b,S		; 23 BD
	eor $B9.b,S		; 43 B9
	sbc $B2476B.l,X		; FF 6B 47 B2
	lsr $7E82.w		; 4E 82 7E
	eor $BC.b,X		; 55 BC
	sbc #$5938.w		; E9 38 59
	clv		; B8
	and [$E5.b],Y		; 37 E5
	ldy $07F3.w,X		; BC F3 07
	jsr ($FEFF.w,X)		; FC FF FE
	sta ($F5.b),Y		; 91 F5
	lda ($E1.b,X)		; A1 E1
	rol $87.b		; 26 87
	adc [$07.b]		; 67 07
	lsr $1F.b		; 46 1F
	eor $FF0F.w		; 4D 0F FF
	adc $C03FBA.l		; 6F BA 3F C0
	ora $1EFF0A.l		; 0F 0A FF 1E
	sbc $F8FF78.l,X		; FF 78 FF F8
	sbc $D9E4E0.l,X		; FF E0 E4 D9
	cpy #$FFFC.w		; C0 FC FF
	jsr ($E09D.w,X)		; FC 9D E0
	tax		; AA
	cpy #$C036.w		; C0 36 C0
	ldy #$A8C0.w		; A0 C0 A8
	cpy #$C0B8.w		; C0 B8 C0
	sbc [$A1.b],Y		; F7 A1
	plp		; 28
	bne -52.b		; D0 CC
	beq  64.b		; F0 40
	sed		; F8
	ora $1C032D.l		; 0F 2D 03 1C
	ora $1E.b,S		; 03 1E
	phd		; 0B
	bvs  -1.b		; 70 FF
	eor $06FEE9.l		; 4F E9 FE 06
	ora ($1E.b,X)		; 01 1E
	brk $D8.b		; 00 D8
	bpl  34.b		; 10 22
	sbc $45.b,S		; E3 45
	cmp $5B.b		; C5 5B
	stp		; DB
	sbc $6FAF6F.l,X		; FF 6F AF 6F
	and $7AED.w		; 2D ED 7A
	plx		; FA
	lda #$0C79.w		; A9 79 0C
	jsr ($FF1C.w,X)		; FC 1C FF
	dec A		; 3A
	.db $62, $D9, $10		; 62 D9 10
	phd		; 0B
	sbc $05F104.l,X		; FF 04 F1 05
	ldy $7CE1.w,X		; BC E1 7C
	sta $FE.b,S		; 83 FE
	sta ($FC.b,S),Y		; 93 FC
	bit #$D9FF.w		; 89 FF D9
	sbc $F1FE2F.l,X		; FF 2F FE F1
	inc $7F44.w,X		; FE 44 7F
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	ldy $00BF.w		; AC BF 00
	jsr ($FC02.w,X)		; FC 02 FC
	adc ($F1.b,S),Y		; 73 F1
	tsx		; BA
	sta $EAFCFE.l		; 8F FE FC EA
	rti		; 40

	sbc $00D14C.l,X		; FF 4C D1 00
	plx		; FA
	tsb $FD.b		; 04 FD
	beq -57.b		; F0 C7
	inc $F7ED.w,X		; FE ED F7
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	brk $01.b		; 00 01
	cop $FE.b		; 02 FE
	sbc $FF.b,X		; F5 FF
	brk $03.b		; 00 03
	phx		; DA
.INDEX 8
	sep #$D8		; E2 D8
.ACCU 8
	sep #$A9		; E2 A9
	asl $94.b,X		; 16 94
	pld		; 2B
	sbc [$18.b]		; E7 18
	eor $27A0.w,X		; 5D A0 27
	cpy #$DF.b		; C0 DF
	sbc $C600C1.l,X		; FF C1 00 C6
	asl $E6.b		; 06 E6
	ror $84.b		; 66 84
	sed		; F8
	phd		; 0B
	asl $F9.b		; 06 F9
	ror $99.b		; 66 99
	sta ($7F.b,S),Y		; 93 7F
	plp		; 28
	sbc $11F7FF.l,X		; FF FF F7 11
	inc $708F.w		; EE 8F 70
	sbc $40BB10.l		; EF 10 BB 40
	cmp $D620.w,X		; DD 20 D6
	jsr $F860.w		; 20 60 F8
	ora $FF9967.l		; 0F 67 99 FF
	cmp $989E61.l,X		; DF 61 9E 98
	adc [$76.b]		; 67 76
	bit #$7F.b		; 89 7F
	bra -27.b		; 80 E5
	brk $5A.b		; 00 5A
	brk $ED.b		; 00 ED
	tsb $F8E2.w		; 0C E2 F8
	ora $1FFF.w		; 0D FF 1F
	tsb $56F3.w		; 0C F3 56
	eor $F6A9.w,Y		; 59 A9 F6
	tad		; 5B
	ldy #$E9.b		; A0 E9
	ora #$AC.b		; 09 AC
	bit $5F57.w		; 2C 57 5F
	dec $601F.w		; CE 1F 60
	and $3F.b,X		; 35 3F
	ldy #$E8.b		; A0 E8
	ora #$F6.b		; 09 F6
	bit $5FD3.w		; 2C D3 5F
	and $3FF5FC.l,X		; 3F FC F5 3F
	cpy #$D3.b		; C0 D3
	ora $A7.b,S		; 03 A7
	ora [$00.b]		; 07 00
	ldy $A4.b		; A4 A4
.ACCU 8
	sep #$E2		; E2 E2
	lda $B919FF.l,X		; BF FF 19 B9
	sbc $FD.b		; E5 FD
	jmp $03FC.w		; 4C FC 03
	stz $FFEA.w		; 9C EA FF
	ldy $5B.b		; A4 5B
.INDEX 8
	sep #$1D		; E2 1D
	lda $F046.w,Y		; B9 46 F0
	sbc $0335FD.l,X		; FF FD 35 03
	eor [$54.b],Y		; 57 54
	ror $A56E.w		; 6E 6E A5
	lda $5F.b		; A5 5F
	eor $FF1818.l,X		; 5F 18 18 FF
	sta [$62.b]		; 87 62
	.db $62, $76, $76		; 62 76 76
	lda #$A9.b		; A9 A9
	mvn $6E,$AB		; 54 AB 6E
	sta ($A5.b),Y		; 91 A5
	phy		; 5A
	cpy $87.b		; C4 87
	sbc $62E718.l,X		; FF 18 E7 62
	sta $A98A.w,X		; 9D 8A A9
	lsr $2A.b,X		; 56 2A
	lsr $0E94.w,X		; 5E 94 0E
	tsa		; 3B
	ora [$FF.b]		; 07 FF
	cmp $11.b,X		; D5 11
	ora $2D8F96.l		; 0F 96 8F 2D
	ora ($6A.b,S),Y		; 13 6A
	ora $9D.b,X		; 15 9D
	bra 121.b		; 80 79
	xba		; EB
	bit $FADB.w,X		; 3C DB FA
	jsr ($FFFF.w,X)		; FC FF FF
	sbc #$0E.b		; E9 0E
	eor ($1D.b)		; 52 1D
	lda $3E.b		; A5 3E
	eor ($6C.b,S),Y		; 53 6C
	dec $66E0.w,X		; DE E0 66
	sed		; F8
	sta [$F8.b],Y		; 97 F8
	ldx #$7C.b		; A2 7C
	inc $FF.b,X		; F6 FF
	beq 102.b		; F0 66
	sbc ($C0.b),Y		; F1 C0
	cpx #$E0.b		; E0 E0
	asl A		; 0A
	mvn $DC,$E8		; 54 E8 DC
	cpx #$46.b		; E0 46
	sed		; F8
	lda $9C.b,S		; A3 9C
	lsr $40.b,X		; 56 40
	and $00A5D4.l		; 2F D4 A5 00
	.db $42, $02		; 42 02
	bit #$80.b		; 89 80
	sbc $C8.b,X		; F5 C8
	rti		; 40

	ldx $D1.b,Y		; B6 D1
	ldy $FFEA.w,X		; BC EA FF
	adc $39011E.l,X		; 7F 1E 01 39
	asl $20.b		; 06 20
	ora $106C.w,Y		; 19 6C 10
	ldx $6610.w		; AE 10 66
	ora $033C.w,Y		; 19 3C 03
	eor $FFE140.l		; 4F 40 E1 FF
	jsr $0DF8.w		; 20 F8 0D
	phx		; DA
	ora $A6FD.w,X		; 1D FD A6
	adc $59FF02.l,X		; 7F 02 FF 59
	ldx $7A.b		; A6 7A
	sta [$5F.b]		; 87 5F
	sbc $AE19E7.l,X		; FF E7 19 AE
	eor ($7A.b),Y		; 51 7A
	sta $68.b		; 85 68
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sed		; F8
	phd		; 0B
	sec		; 38
	and $659F9E.l,X		; 3F 9E 9F 65
	sbc $FF.b		; E5 FF
	sbc ($1B.b,X)		; E1 1B
	xce		; FB
	tax		; AA
	tda		; 7B
	ora $FF.b,S		; 03 FF
	adc ($9F.b,X)		; 61 9F
	jmp.w [$8423]		; DC 23 84
	rts		; 60

	sbc $1A3F8A.l,X		; FF 8A 3F 1A
	jsr $40EB.w		; 20 EB 40
	cmp $73.b,X		; D5 73
	cmp $E03FA0.l,X		; DF A0 3F E0
	lda $51FCE0.l,X		; BF E0 FC 51
	inc $AF.b,X		; F6 AF
	bne  79.b		; D0 4F
	beq   0.b		; F0 00
	bra  64.b		; 80 40
	inc $C182.w,X		; FE 82 C1
	sbc ($7F.b,X)		; E1 7F
	txs		; 9A
	sbc ($FE.b,X)		; E1 FE
	brk $E0.b		; 00 E0
	plx		; FA
	php		; 08
	xce		; FB
	ora #$F9.b		; 09 F9
	ora ($EE.b,X)		; 01 EE
	asl $F8.b,X		; 16 F8
	sbc $10F8FE.l,X		; FF FE F8 10
	sbc $F919.w,Y		; F9 19 F9
	ora #$00.b		; 09 00
	ora [$01.b]		; 07 01
	asl $09.b		; 06 09
	asl $38.b		; 06 38
	jsr ($FB0E.w,X)		; FC 0E FB
	brk $0F.b		; 00 0F
	sed		; F8
	ora $2606.w,Y		; 19 06 26
	rol $46.b		; 26 46
	sbc $2146FF.l,X		; FF FF 46 21
	and ($89.b,X)		; 21 89
	bit #$99.b		; 89 99
	sta $3838.w,Y		; 99 38 38
	adc ($71.b),Y		; 71 71
	inc $26EE.w		; EE EE 26
	cmp $FF46.w,Y		; D9 46 FF
	sbc $DE21B9.l,X		; FF B9 21 DE
	bit #$76.b		; 89 76
	sta $3866.w,Y		; 99 66 38
	cmp [$71.b]		; C7 71
	stx $11EE.w		; 8E EE 11
	ldx #$40.b		; A2 40
	sbc ($FF.b),Y		; F1 FF
	eor $119100.l		; 4F 00 91 11
	inc $67.b		; E6 67
	ror A		; 6A
	rtl		; 6B

	pei ($D7.b)		; D4 D7
	stz $7F.b,X		; 74 7F
	dec $F9.b		; C6 F9
	sbc $118CFD.l,X		; FF FD 8C 11
	inc $9867.w		; EE 67 98
	rtl		; 6B

	sty $D7.b,X		; 94 D7
	plp		; 28
	adc $A2F1F9.l,X		; 7F F9 F1 A2
	rol $F7D3.w		; 2E D3 F7
	sbc $9F6D5F.l,X		; FF 5F 6D 9F
	cmp #$37.b		; C9 37
	eor $AA.b,X		; 55 AA
	adc $B980.w,Y		; 79 80 B9
	eor ($C2.b,X)		; 41 C2
	ora $2E.b,S		; 03 2E
	cmp ($E6.b),Y		; D1 E6
	dec $E1FD.w		; CE FD E1
	bit $FFE1.w		; 2C E1 FF
	lda $EFDA.w,Y		; B9 DA EF
	ldy $DB.b		; A4 DB
	sta $D6E6.w,Y		; 99 E6 D6
	tsx		; BA
	brk $DF.b		; 00 DF
	xce		; FB
	eor $05.b,X		; 55 05
	bit $912F.w		; 2C 2F 91
	inc $F825.w,X		; FE 25 F8
	ora #$FA.b		; 09 FA
	brk $D0.b		; 00 D0
	trb $0AE1.w		; 1C E1 0A
	xce		; FB
	lda $7F87.w		; AD 87 7F
	eor ($FE.b)		; 52 FE
	ora ($AF.b,X)		; 01 AF
	sep #$00		; E2 00
	dey		; 88
	dey		; 88
	adc $FF19EF.l		; 6F EF 19 FF
	xce		; FB
	ora $FE271F.l,X		; 1F 1F 27 FE
	brk $77.b		; 00 77
	brk $10.b		; 00 10
	cpx #$56.b		; E0 56
	ldx $5EA6.w,Y		; BE A6 5E
	inc $06AB.w,X		; FE AB 06
	lsr $8DAF.w,X		; 5E AF 8D
	and ($1A.b,S),Y		; 33 1A
	ora ($61.b,X)		; 01 61
	rts		; 60

	txa		; 8A
	brk $D9.b		; 00 D9
	inc $FED6.w,X		; FE D6 FE
	sbc $0CB966.l,X		; FF 66 B9 0C
	cmp ($25.b),Y		; D1 25
	and $CB.b		; 25 CB
	wai		; CB
	ldx $B6.b,Y		; B6 B6
	jmp $57FC.w		; 4C FC 57
	sbc $6A4FB2.l		; EF B2 4F 6A
	sbc $3517C1.l,X		; FF C1 17 35
	phd		; 0B
	and $DA.b		; 25 DA
	wai		; CB
	bit $B6.b,X		; 34 B6
	eor #$FC.b		; 49 FC
	cmp $FDDC.w		; CD DC FD
	sta [$6F.b]		; 87 6F
	eor ($2C.b)		; 52 2C
	cmp $C8.b		; C5 C8
	plp		; 28
	stx $8BCE.w		; 8E CE 8B
	cmp $C16CC5.l,X		; DF C5 6C C1
	and $1C.b,X		; 35 1C
	sbc [$ED.b],Y		; F7 ED
	cpy #$3F.b		; C0 3F
	sbc ($31.b),Y		; F1 31
	cmp $71C51D.l,X		; DF 1D C5 71
	ora ($F0.b,X)		; 01 F0
	adc $069C18.l,X		; 7F 18 9C 06
	ldy $D68C.w		; AC 8C D6
	cmp [$2D.b],Y		; D7 2D
	and $4D7F78.l		; 2F 78 7F 4D
	eor $861F.w		; 4D 1F 86
	asl A		; 0A
	sep #$06		; E2 06
	sbc $738C.w,Y		; F9 8C 73
	jsl $4AD02F.l		; 22 2F D0 4A
	sbc $B24DFF.l,X		; FF FF 4D B2
	adc ($66.b,X)		; 61 66
	txs		; 9A
	sta $2023.w,Y		; 99 23 20
	cmp #$C8.b		; C9 C8
	ror A		; 6A
	inx		; E8
	sta $80DC.w,X		; 9D DC 80
	tya		; 98
	sbc $F7F31F.l,X		; FF 1F F3 F7
	rts		; 60

	sta $206798.l,X		; 9F 98 67 20
	cmp $E837C8.l,X		; DF C8 37 E8
	ora [$DC.b],Y		; 17 DC
	and $E0.b,S		; 23 E0
	sta [$F6.b]		; 87 F6
	trb $3B.b		; 14 3B
	cpy $0D.b		; C4 0D
	sbc ($DB.b)		; F2 DB
	bit $3C.b		; 24 3C
	lda $2AD5FE.l,X		; BF FE D5 2A
	.db $62, $1D, $99		; 62 1D 99
	stx $2F.b		; 86 2F
	ldy #$C0.b		; A0 C0
	tsb $EABC.w		; 0C BC EA
	cmp $AE22.w,X		; DD 22 AE
	ora ($D5.b,X)		; 01 D5
	sbc $A602F5.l,X		; FF F5 02 A6
	eor ($AA.b,X)		; 41 AA
	eor ($5B.b,X)		; 41 5B
	ldy $85.b		; A4 85
	ply		; 7A
	.db $42, $E0		; 42 E0
	cmp $FE.b,S		; C3 FE
	sed		; F8
	phd		; 0B
	eor $DFFFF0.l,X		; 5F F0 FF DF
	and $609FF0.l,X		; 3F F0 9F 60
	lda [$48.b],Y		; B7 48
	eor [$A8.b],Y		; 57 A8
	sta $38CF68.l,X		; 9F 68 CF 38
	eor $C960B0.l		; 4F B0 60 C9
	eor ($FC.b),Y		; 51 FC
	cpx #$10.b		; E0 10
	inc $C16B.w,X		; FE 6B C1
	inc $F008.w,X		; FE 08 F0
	sbc $8709.w,Y		; F9 09 87
	ora $D30BFB.l,X		; 1F FB 0B D3
	and ($FE.b,S),Y		; 33 FE
	cmp ($31.b),Y		; D1 31
	beq  32.b		; F0 20
	sbc ($31.b,X)		; E1 31
	ror $FE78.w,X		; 7E 78 FE
	ora $1B06.w,Y		; 19 06 1B
	tsb $13.b		; 04 13
	tsb $11FE.w		; 0C FE 11
	asl $1F00.w		; 0E 00 1F
	sbc $E111FF.l,X		; FF FF 11 E1
	asl $AFAD.w,X		; 1E AD AF
	plx		; FA
	sbc $F4DFD1.l,X		; FF D1 DF F4
	sbc $F33D2A.l,X		; FF 2A 3D F3
	jsr ($0FAE.w,X)		; FC AE 0F
	pei ($F0.b)		; D4 F0
	asl $AFE0.w,X		; 1E E0 AF
	bvc -85.b		; 50 AB
	bit $3F.b		; 24 3F
	dec $BD.b		; C6 BD
	sbc $E8977F.l,X		; FF 7F 97 E8
	ldy $39D0.w		; AC D0 39
	cmp ($6A.b,X)		; C1 6A
	sta $C5.b,S		; 83 C5
	asl $D3.b		; 06 D3
	trb $1A95.w		; 1C 95 1A
	rtl		; 6B

	stz $93.b,X		; 74 93
	sbc $F8F668.l,X		; FF 68 F6 F8
	sta [$9F.b],Y		; 97 9F
	lda $1795.w,Y		; B9 95 17
	ldx #$3D.b		; A2 3D
	eor [$78.b],Y		; 57 78
	adc $907C16.l		; 6F 16 7C 90
	beq -10.b		; F0 F6
	inx		; E8
	cmp $E9.b		; C5 E9
	nop		; EA
	sbc $5509F8.l,X		; FF F8 09 55
	tsx		; BA
	lda [$58.b]		; A7 58
	sbc [$7F.b],Y		; F7 7F
	rti		; 40

	tay		; A8
	tas		; 1B
	asl $F9.b		; 06 F9
	jsr $1DA8.w		; 20 A8 1D
	sbc $0B.b,X		; F5 0B
	sbc ($0D.b)		; F2 0D
	sbc $FC06.w,Y		; F9 06 FC
	ora $FA.b,S		; 03 FA
	ora $FF.b		; 05 FF
	sta $15F8E0.l,X		; 9F E0 F8 15
	sty $81.b,X		; 94 81
	ror A		; 6A
	cpx #$B5.b		; E0 B5
	sbc $EA.b,X		; F5 EA
	sbc $EE3CD3.l		; EF D3 3C EE
	ora ($C2.b),Y		; 11 C2
	plx		; FA
	cpx #$7F.b		; E0 7F
	and #$00.b		; 29 00
	asl A		; 0A
	asl $F3.b		; 06 F3
	sbc $F749FC.l,X		; FF FC 49 F7
	mvn $EF,$FF		; 54 FF EF
	and $AC.b,S		; 23 AC
	.db $82, $54, $C6		; 82 54 C6
	adc ($B2.b)		; 72 B2
	and $C0D5.w		; 2D D5 C0
	and $DC1BE4.l,X		; 3F E4 1B DC
	jsr ($FB3B.w,X)		; FC 3B FB
	sbc $000D00.l,X		; FF 00 0D 00
	cmp $CC.b,X		; D5 CC
	cmp $C3.b,S		; C3 C3
	asl $830E.w		; 0E 0E 83
	adc $5F89.w,Y		; 79 89 5F
	and ($0F.b)		; 32 0F
	lda $60FF.w		; AD FF 60
	bra  43.b		; 80 2B
	sed		; F8
	adc ($8E.b)		; 72 8E
	cmp $3C.b,S		; C3 3C
	asl $90F1.w		; 0E F1 90
	phx		; DA
	jsr ($FF07.w,X)		; FC 07 FF
	sbc $E5C9C0.l,X		; FF C0 C9 E5
	sbc $DD0303.l		; EF 03 03 DD
	cmp $465FDC.l,X		; DF DC 5F 46
	sbc $7939C1.l,X		; FF C1 39 79
	ora $1F.b		; 05 1F
	sty $92.b		; 84 92
	sta ($EF.b,X)		; 81 EF
	bpl   3.b		; 10 03
	jsr ($C414.w,X)		; FC 14 C4
	phx		; DA
	phx		; DA
	sbc ($FF.b,X)		; E1 FF
	sbc $DC02.w,X		; FD 02 DC
	lsr $41.b		; 46 41
	sta ($90.b,S),Y		; 93 90
	adc [$E0.b]		; 67 E0
	eor $F0.b,X		; 55 F0
	plb		; AB
	sbc $4FEF.w,Y		; F9 EF 4F
	cmp $FD.b,X		; D5 FD
	clv		; B8
	sbc $6E5C.w,Y		; F9 5C 6E
	sbc ($90.b,X)		; E1 90
	adc $F01FE0.l		; 6F E0 1F F0
	ora $E2FFF4.l		; 0F F4 FF E2
	clv		; B8
	asl A		; 0A
	sbc $5AA5.w,X		; FD A5 5A
	adc #$9E.b		; 69 9E
	lda ($4C.b,S),Y		; B3 4C
	sbc #$06.b		; E9 06
	adc [$2F.b]		; 67 2F
	tsb $9700.w		; 0C 00 97
	bra  74.b		; 80 4A
	cpy #$20.b		; C0 20
	beq  13.b		; F0 0D
	ror $B04F.w		; 6E 4F B0
	sbc $C3AE5F.l,X		; FF 5F AE C3
	bit $EB.b,X		; 34 EB
	trb $E3.b		; 14 E3
	trb $24DF.w		; 1C DF 24
	sbc [$1C.b]		; E7 1C
	sbc $280814.l		; EF 14 08 28
	wai		; CB
	sbc $F8FEFF.l,X		; FF FF FE F8
	ora #$F6.b		; 09 F6
	rol $FA.b		; 26 FA
	jsl $CD25FD.l		; 22 FD 25 CD
	jsr $2AC3.w		; 20 C3 2A
	cpy $27.b		; C4 27
	beq  10.b		; F0 0A
	sbc $0CF4FF.l,X		; FF FF F4 0C
	asl $19.b		; 06 19
	cop $1D.b		; 02 1D
	ora $1A.b		; 05 1A
	ora ($1E.b,X)		; 01 1E
	ora $1C.b,S		; 03 1C
	ora [$18.b]		; 07 18
	ora ($0C.b,S),Y		; 13 0C
	sbc $0817FF.l,X		; FF FF 17 08
	eor #$B1.b		; 49 B1
	ror $87.b		; 66 87
	cmp $EA0F.w		; CD 0F EA
	sta $1DD2.w		; 8D D2 1D
	lda $ECD3B8.l		; AF B8 D3 EC
	lda $E7.b,S		; A3 E7
	lda $CBFEC0.l,X		; BF C0 FE CB
	ora $F2.b		; 05 F2
	cpx #$00.b		; E0 00
	rti		; 40

	jsr $9481.w		; 20 81 94
	eor $52EC60.l,X		; 5F 60 EC 52
	inc $64FE.w,X		; FE FE 64
	beq  11.b		; F0 0B
	pea $FF05.w		; F4 05 FF
	trb $FC.b		; 14 FC
	bra -16.b		; 80 F0
	ora $43BC.w,Y		; 19 BC 43
	tsa		; 3B
	cpy $78.b		; C4 78
	lda ($FE.b)		; B2 FE
	sbc $F8E0F7.l,X		; FF F7 E0 F8
	ora $AD.b,X		; 15 AD
	ldy #$52.b		; A0 52
	cmp ($36.b)		; D2 36
	inc $6C.b,X		; F6 6C
	lda $DE7689.l,X		; BF 89 76 DE
	jsr ($005F.w,X)		; FC 5F 00
	xce		; FB
	sbc $09002D.l,X		; FF 2D 00 09
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	lda #$7F.b		; A9 7F
	eor ($2D.b)		; 52 2D
	lda $02.b		; A5 02
	dec A		; 3A
	sei		; 78
	mvn $2A,$BC		; 54 BC 2A
	adc $CDDEF3.l		; 6F F3 DE CD
	and $BA1EE1.l,X		; 3F E1 1E BA
	jsr ($FF87.w,X)		; FC 87 FF
	cmp #$01.b		; C9 01
	cpx #$A3.b		; E0 A3
	sbc $8CE0FF.l,X		; FF FF E0 8C
	cpx $F667.w		; EC 67 F6
	mvn $64,$3C		; 54 3C 64
	trb $1EAE.w		; 1C AE 1E
	sta $8F.b,X		; 95 8F
	eor $E0D7.w,Y		; 59 D7 E0
	adc $EC1FF8.l		; 6F F8 1F EC
	ora ($F6.b,S),Y		; 13 F6
	ora #$79.b		; 09 79
	cmp ($03.b),Y		; D1 03
	txa		; 8A
	adc $002F00.l,X		; 7F 00 2F 00
	sbc $2C577F.l,X		; FF 7F 57 2C
	cmp $146F34.l		; CF 34 6F 14
	stp		; DB
	bit $4B.b		; 24 4B
	bit $E3.b,X		; 34 E3
	trb $5F.b		; 14 5F
	bmi  31.b		; 30 1F
	bcs  -1.b		; B0 FF
	sbc $0BF0E4.l,X		; FF E4 F0 0B
	php		; 08
	beq -120.b		; F0 88
	bvs  -9.b		; 70 F7
	ora [$F2.b]		; 07 F2
	tas		; 1B
	plx		; FA
	ora ($EF.b,S),Y		; 13 EF
	asl $E7.b,X		; 16 E7
	trb $E1.b		; 14 E1
	sta [$F7.b]		; 87 F7
	tsb $FE.b		; 04 FE
	xce		; FB
	php		; 08
	trb $08.b		; 14 08
	tsb $FE00.w		; 0C 00 FE
	stx $75.b		; 86 75
	php		; 08
	inc $04FD.w,X		; FE FD 04
	bvs -32.b		; 70 E0
	lda $20BA6D.l,X		; BF 6D BA 20
	sed		; F8
	clc		; 18
	plx		; FA
	ora $F2.b		; 05 F2
	sbc $F8E096.l,X		; FF 96 E0 F8
	ora $A166.w,Y		; 19 66 A1
	asl A		; 0A
	sbc ($A0.b,X)		; E1 A0
	adc ($0A.b),Y		; 71 0A
	sed		; F8
	cmp $DB3D.w		; CD 3D DB
	plx		; FA
	dec $2F.b,X		; D6 2F
	sbc $D0.b,X		; F5 D0
	lda ($1F.b),Y		; B1 1F
	ldy #$E9.b		; A0 E9
	ora $97E9E6.l		; 0F E6 E9 97
	ldx $B017.w,Y		; BE 17 B0
	ora [$FF.b]		; 07 FF
	ora $B84F50.l		; 0F 50 4F B8
	sta $487738.l,X		; 9F 38 77 48
	sta $D07FA0.l		; 8F A0 7F D0
	ora $FC3F90.l,X		; 1F 90 3F FC
	ror $B048.w		; 6E 48 B0
	cpx #$10.b		; E0 10
	beq   0.b		; F0 00
	eor [$70.b],Y		; 57 70
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	and $F700A8.l,X		; 3F A8 00 F7
	tsb $0AF1.w		; 0C F1 0A
	sbc $FE06.w,X		; FD 06 FE
	beq -22.b		; F0 EA
	ldy #$FC.b		; A0 FC
	nop		; EA
	cmp $3D.b,S		; C3 3D
	tya		; 98
	ora $FC82.w		; 0D 82 FC
	jsr ($80FE.w,X)		; FC FE 80
	sed		; F8
	ora ($4F.b),Y		; 11 4F
	bne 127.b		; D0 7F
	cpx #$3C.b		; E0 3C
	ora $E0A083.l,X		; 1F 83 A0 E0
	and $49FEC0.l,X		; 3F C0 FE 49
	tsx		; BA
	ldy $F8FF.w		; AC FF F8
	ora $0000.w		; 0D 00 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	adc $FF00.w,X		; 7D 00 FF
	sed		; F8
	pld		; 2B
	tsb $06.b		; 04 06
	php		; 08
	sbc $010DF8.l		; EF F8 0D 01
	sbc ($F8.b)		; F2 F8
	tsb $0707.w		; 0C 07 07
	php		; 08
	ora $BFDF77.l		; 0F 77 DF BF
	sed		; F8
	ora $8080.w,X		; 1D 80 80
	sbc ($F8.b)		; F2 F8
	tsb $4000.w		; 0C 00 40
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	tsb $0303.w		; 0C 03 03
	tsb $07.b		; 04 07
	cpy $F8.b		; C4 F8
	ora $92B0.w,Y		; 19 B0 92
	asl $A0.b		; 06 A0
	brk $0E.b		; 00 0E
	sta $A40DF8.l		; 8F F8 0D A4
	sed		; F8
	ora $E0FE.w		; 0D FE E0
	sta [$A0.b]		; 87 A0
	sed		; F8
	tsb $A0FF.w		; 0C FF A0
	inc $0101.w,X		; FE 01 01
	ora $02.b,S		; 03 02
	ora $BE.b,S		; 03 BE
	rts		; 60

	rti		; 40

	ora $F9.b		; 05 F9
	beq  -4.b		; F0 FC
	cop $35.b		; 02 35
	inc $0FFE.w,X		; FE FE 0F
	sbc $906060.l,X		; FF 60 60 90
	sed		; F8
	php		; 08
	sei		; 78
	dey		; 88
	beq   8.b		; F0 08
	ora [$FF.b]		; 07 FF
	inc $04FC.w,X		; FE FC 04
	plx		; FA
	txy		; 9B
	sbc $0C0EF8.l,X		; FF F8 0E 0C
	ora ($0D.b,X)		; 01 0D
	ora ($13.b)		; 12 13
	tsb $FF.b		; 04 FF
	cmp ($17.b,X)		; C1 17
	tsb $21.b		; 04 21
	cop $20.b		; 02 20
	ora ($25.b,X)		; 01 25
	lsr $4B.b		; 46 4B
	tsb $FFC6.w		; 0C C6 FF
	sed		; F8
	ora #$FF.b		; 09 FF
	ora [$08.b]		; 07 08
	brk $10.b		; 00 10
	brk $0B.b		; 00 0B
	tsb $1817.w		; 0C 17 18
	ora [$18.b]		; 07 18
	ora $00FE10.l		; 0F 10 FE 00
	beq   3.b		; F0 03
	rts		; 60

	pea $F8C0.w		; F4 C0 F8
	ora $3040C0.l		; 0F C0 40 30
	sty $C0.b		; 84 C0
	sta $20A0.w,X		; 9D A0 20
	sbc $F7E0.w,X		; FD E0 F7
	bvs  32.b		; 70 20
	bra  -3.b		; 80 FD
	jsr $0020.w		; 20 20 00
	inc $0254.w,X		; FE 54 02
	bra  -1.b		; 80 FF
	inc $C0.b,X		; F6 C0
	ora $3C60.w		; 0D 60 3C
	ora $F1C9C8.l		; 0F C8 C9 F1
	ora $001FBE.l,X		; 1F BE 1F 00
	and $E3A239.l,X		; 3F 39 A2 E3
	cpy #$F8.b		; C0 F8
	bpl -32.b		; 10 E0
	jsr $FEC6.w		; 20 C6 FE
	ora ($00.b)		; 12 00
	cpy #$F8.b		; C0 F8
	ora #$FF.b		; 09 FF
	jsr ($C6C0.w,X)		; FC C0 C6
	txa		; 8A
	bit #$3F.b		; 89 3F
	ldx $F8C0.w,Y		; BE C0 F8
	ora [$06.b],Y		; 17 06
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	tsb $0D.b		; 04 0D
	tsb $A1.b		; 04 A1
	jmp.w [$D40A]		; DC 0A D4
	adc ($F4.b,X)		; 61 F4
	asl $0A.b		; 06 0A
	inc $FEC3.w,X		; FE C3 FE
	sbc ($FF.b),Y		; F1 FF
	jsr ($44B8.w,X)		; FC B8 44
	sei		; 78
	sty $E6.b		; 84 E6
	inc A		; 1A
	dec $0622.w,X		; DE 22 06
	beq  87.b		; F0 57
	ora ($0C.b,X)		; 01 0C
	jsr ($F804.w,X)		; FC 04 F8
	jsr $0EF0.w		; 20 F0 0E
	tyx		; BB
	sbc $BAF116.l,X		; FF 16 F1 BA
	pea $B943.w		; F4 43 B9
	cop $F8.b		; 02 F8
	phd		; 0B
	sbc $9857FC.l,X		; FF FC 57 98
	sta [$18.b],Y		; 97 18
	sta $30887C.l		; 8F 7C 88 30
	bpl 124.b		; 10 7C
	eor $F1.b,S		; 43 F1
	tsb $FC.b		; 04 FC
	cpx $8348.w		; EC 48 83
	ror A		; 6A
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	sbc $68140B.l,X		; FF 0B 14 68
	sed		; F8
	sbc $F1DE.w,X		; FD DE F1
	lsr $202F.w,X		; 5E 2F 20
	and $C03F10.l,X		; 3F 10 3F C0
	sed		; F8
	bpl -16.b		; 10 F0
	bpl  96.b		; 10 60
	bpl  -1.b		; 10 FF
	plb		; AB
	bcs -128.b		; B0 80
	bne  64.b		; D0 40
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	ldy #$40.b		; A0 40
	cpx #$4F.b		; E0 4F
	sbc ($EA.b),Y		; F1 EA
	nop		; EA
	ora ($4E.b,X)		; 01 4E
	and $09F8.w,Y		; 39 F8 09
	ora $002ACA.l,X		; 1F CA 2A 00
	adc $525140.l,X		; 7F 40 51 52
	inc $FE3F.w,X		; FE 3F FE
	asl $0FF0.w		; 0E F0 0F
	cpx #$E2.b		; E0 E2
	sed		; F8
	ora #$E0.b		; 09 E0
	sed		; F8
	phd		; 0B
	sbc $F0FF.w,X		; FD FF F0
	xba		; EB
	cpx #$F2.b		; E0 F2
	php		; 08
	phd		; 0B
	tsb $0007.w		; 0C 07 00
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	tsb $1C01.w		; 0C 01 1C
	cop $80.b		; 02 80
	ora ($C0.b)		; 12 C0
	sed		; F8
	phd		; 0B
	and ($2A.b)		; 32 2A
	txa		; 8A
	cmp [$02.b]		; C7 02
	inc $F4FC.w,X		; FE FC F4
	brk $FC.b		; 00 FC
	jsr ($87F8.w,X)		; FC F8 87
	sbc $8139.w,X		; FD 39 81
	inc A		; 1A
	.db $42, $FC		; 42 FC
	jmp.w [$FFED]		; DC ED FF
	sed		; F8
	clc		; 18
	adc ($EE.b),Y		; 71 EE
	bpl  -2.b		; 10 FE
	rep #$0D		; C2 0D
	bpl   8.b		; 10 08
	clc		; 18
	brk $18.b		; 00 18
	rol $48.b,X		; 36 48
	pla		; 68
	pea $28FE.w		; F4 FE 28
	ora $240006.l,X		; 1F 06 00 24
	brk $64.b		; 00 64
	brk $81.b		; 00 81
	stz $0404.w		; 9C 04 04
	sbc $5538.w,X		; FD 38 55
	inc $040A.w,X		; FE 0A 04
	php		; 08
	inc $E51C.w,X		; FE 1C E5
	pea $F8FF.w		; F4 FF F8
	asl A		; 0A
	adc $F206D5.l,X		; 7F D5 06 F2
	ora $243304.l,X		; 1F 04 33 24
	ora [$18.b],Y		; 17 18
	dec A		; 3A
	sbc ($34.b),Y		; F1 34
	sbc ($C0.b),Y		; F1 C0
	jsr ($F079.w,X)		; FC 79 F0
	ora #$F0.b		; 09 F0
	ora $4064E0.l,X		; 1F E0 64 40
	tya		; 98
	rti		; 40

	jsr ($F8A4.w,X)		; FC A4 F8
	dey		; 88
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	pea $BFFE.w		; F4 FE BF
	cpx $0C.b		; E4 0C
	beq -90.b		; F0 A6
	sbc $2F09F8.l,X		; FF F8 09 2F
	cpy #$C2.b		; C0 C2
	tsb $7F.b		; 04 7F
	lsr A		; 4A
	eor $00.b		; 45 00
	and $E9FE22.l,X		; 3F 22 FE E9
	ldx $C2E0.w,Y		; BE E0 C2
	inc $7F.b,X		; F6 7F
	tda		; 7B
	sbc $8030FD.l,X		; FF FD 30 80
	sec		; 38
	pha		; 48
	sei		; 78
	ldy #$CC.b		; A0 CC
	bit $E8.b		; 24 E8
	clc		; 18
	phd		; 0B
	plx		; FA
	cpy #$FC.b		; C0 FC
	rti		; 40

	cpx $2AF1.w		; EC F1 2A
	adc $09F8.w,Y		; 79 F8 09
	cpy $48F1.w		; CC F1 48
	and [$48.b]		; 27 48
	eor [$4B.b],Y		; 57 4B
	adc $447F54.l,X		; 7F 54 7F 44
	ldx $96F1.w,Y		; BE F1 96
	sbc ($CC.b),Y		; F1 CC
	sbc ($90.b)		; F2 90
	rts		; 60

	sbc $A58B.w		; ED 8B A5
	sbc $64051E.l,X		; FF 1E 05 64
	sed		; F8
	ora #$FE.b		; 09 FE
	tsb $64.b		; 04 64
	sed		; F8
	phd		; 0B
	sbc $CC1A7F.l,X		; FF 7F 1A CC
	jsr $52FE.w		; 20 FE 52
	jsr ($F844.w,X)		; FC 44 F8
	php		; 08
	ldx #$C0.b		; A2 C0
	jsr $8AF4.w		; 20 F4 8A
	inc $F09F.w,X		; FE 9F F0
	tsb $EBC5.w		; 0C C5 EB
	ora ($00.b,X)		; 01 00
	ora $C6.b,S		; 03 C6
	sbc #$80.b		; E9 80
.ACCU 8
	sep #$A0		; E2 A0
	beq  -2.b		; F0 FE
	inc $84.b,X		; F6 84
	sbc $FE.b		; E5 FE
	jsr ($ECFF.w,X)		; FC FF EC
	ora ($FD.b),Y		; 11 FD
	sbc $7B02EF.l,X		; FF EF 02 7B
	sty $FF.b		; 84 FF
	tsb $F1.b		; 04 F1
	asl A		; 0A
	cpx #$01.b		; E0 01
	cmp $06.b		; C5 06
	phb		; 8B
	jmp $E0A0.w		; 4C A0 E0
	ora $18961C.l		; 0F 1C 96 18
	bpl  -2.b		; 10 FE
	sed		; F8
	phd		; 0B
	trb $A0.b		; 14 A0
	cpx #$10.b		; E0 10
	jmp ($49A6.w)		; 6C A6 49
	and $F6F8.w,Y		; 39 F8 F6
	.db $42, $F4		; 42 F4
	jsl $E06CE7.l		; 22 E7 6C E0
	eor [$01.b],Y		; 57 01
	inc $C080.w,X		; FE 80 C0
.ACCU 8
	sep #$E0		; E2 E0
	inx		; E8
	asl A		; 0A
	phy		; 5A
	sbc ($FE.b)		; F2 FE
	rol $0E1E.w,X		; 3E 1E 0E
	ora $041B00.l,X		; 1F 00 1B 04
	phd		; 0B
	cpy $05.b		; C4 05
	asl $01.b		; 06 01
	bit $49.b		; 24 49
	jmp $0CE81F.l		; 5C 1F E8 0C
	tsx		; BA
	ldy $F8.b		; A4 F8
	phd		; 0B
	inc $F8A4.w,X		; FE A4 F8
	phd		; 0B
	eor $00.b,X		; 55 00
	rts		; 60

	sbc ($A4.b,S),Y		; F3 A4
	sed		; F8
	asl A		; 0A
	cpy $F2.b		; C4 F2
	ldy $F8.b		; A4 F8
	phd		; 0B
	sta ($FE.b,S),Y		; 93 FE
	tsb $1D.b		; 04 1D
	php		; 08
	ora $4A.b,S		; 03 4A
	cld		; D8
	inc A		; 1A
.ACCU 16
	rep #$E1		; C2 E1
	php		; 08
	sta $A2.b,S		; 83 A2
	cmp $80.b,X		; D5 80
	jmp $389E.w		; 4C 9E 38
	sbc ($1F.b,X)		; E1 1F
	adc [$F1.b]		; 67 F1
	asl $FFF2.w,X		; 1E F2 FF
	sed		; F8
	ora #$547F.w		; 09 7F 54
	sbc #$F118.w		; E9 18 F1
	bpl -63.b		; 10 C1
	jsr $32D0.w		; 20 D0 32
	txs		; 9A
	pea $EAEB.w		; F4 EB EA
	pea $AB15.w		; F4 15 AB
	txa		; 8A
	sbc $EA5E.w		; ED 5E EA
	tax		; AA
	sbc #$066F.w		; E9 6F 06
	lda #$31F1.w		; A9 F1 31
	nop		; EA
	ldy $2A.b		; A4 2A
	sbc $4C10F8.l,X		; FF F8 10 4C
	brk $E1.b		; 00 E1
	inc $CAFF.w,X		; FE FF CA
	bne  20.b		; D0 14
	txs		; 9A
	phx		; DA
	inc $A9FD.w,X		; FE FD A9
	tax		; AA
	jmp $E280.w		; 4C 80 E2
	inc $C2FE.w,X		; FE FE C2
	sed		; F8
	ora $F8C0.w		; 0D C0 F8
	ora $C2.b,X		; 15 C2
	sed		; F8
	ora #$FCC0.w		; 09 C0 FC
	rts		; 60

	eor $C2.b,X		; 55 C2
	sed		; F8
	ora #$24FE.w		; 09 FE 24
	cpx $E603.w		; EC 03 E6
	cmp $F4BC.w,Y		; D9 BC F4
	cpy #$E8.b		; C0 E8
	ora $07EC24.l		; 0F 24 EC 07
	eor $5A.b,X		; 55 5A
	pea $60A0.w		; F4 A0 60
	cpy #$24.b		; C0 24
	inx		; E8
	phd		; 0B
	cpy #$EB.b		; C0 EB
	dey		; 88
	sbc $F2B8.w,X		; FD B8 F2
	eor $54.b,X		; 55 54
	ldx $F1.b,Y		; B6 F1
	jsr $10F8.w		; 20 F8 10
	txa		; 8A
	sbc ($07.b)		; F2 07
	cmp ($FF.b,S),Y		; D3 FF
	stx $F4.b		; 86 F4
	rol $22FC.w,X		; 3E FC 22
	eor $FE.b,X		; 55 FE
	stz $40.b		; 64 40
	beq   9.b		; F0 09
	rol $A0F4.w,X		; 3E F4 A0
	bne  18.b		; D0 12
	inc $56FF.w,X		; FE FF 56
	ora $B6.b,X		; 15 B6
	.db $42, $F7		; 42 F7
	ldx $FC.b,Y		; B6 FC
	asl $DB.b		; 06 DB
	inc $0AF8.w,X		; FE F8 0A
	rol $C8.b		; 26 C8
	ora $6555.w,Y		; 19 55 65
	bra 127.b		; 80 7F
	wai		; CB
	inc $80FC.w,X		; FE FC 80
	beq  11.b		; F0 0B
	lsr $FC.b		; 46 FC
	cpy #$F8.b		; C0 F8
	asl $46.b,X		; 16 46
	bit #$FFAC.w		; 89 AC FF
	jsr ($8CC7.w,X)		; FC C7 8C
	sbc $0319F8.l,X		; FF F8 19 03
	and $BF11F8.l,X		; 3F F8 11 BF
	adc $05FFFF.l,X		; 7F FF FF 05
	ora [$16.b]		; 07 16
	ora $A07E.w,Y		; 19 7E A0
	dec $10F8.w		; CE F8 10
	ora [$05.b]		; 07 05
	ora $0E.b,S		; 03 0E
	ora ($1A.b,X)		; 01 1A
	ora $1FF5.w,X		; 1D F5 1F
	lsr $00CB.w,X		; 5E CB 00
	cmp $A0.b,X		; D5 A0
	cpx #$0B.b		; E0 0B
	ora $1E0E.w		; 0D 0E 1E
	sta ($EF.b),Y		; 91 EF
	bvs  -1.b		; 70 FF
	brk $7E.b		; 00 7E
	sta [$FE.b]		; 87 FE
	inc $FA01.w,X		; FE 01 FA
	ora $EB.b		; 05 EB
	ora $F8C0.w,X		; 1D C0 F8
	ora $E622DD.l		; 0F DD 22 E6
	sbc $807E57.l,X		; FF 57 7E 80
	dec $CA80.w,X		; DE 80 CA
	sty $CA.b		; 84 CA
	sta $C9.b		; 85 C9
	sty $45.b		; 84 45
	dey		; 88
	sbc $801ED0.l		; EF D0 1E 80
	cpy #$0E.b		; C0 0E
	sed		; F8
	sbc $1DFF.w		; ED FF 1D
	cop $3B.b		; 02 3B
	brk $1B.b		; 00 1B
	tsb $C227.w		; 0C 27 C2
	ora #$D374.w		; 09 74 D3
	jsr $FE8D.w		; 20 8D FE
	brk $44.b		; 00 44
	ldx $F1.b		; A6 F1
	clc		; 18
	sty $95.b		; 84 95
	cpy $F3.b		; C4 F3
	and ($B2.b),Y		; 31 B2
	bvc -14.b		; 50 F2
	sbc ($2F.b,X)		; E1 2F
	brk $FA.b		; 00 FA
	.db $82, $04, $7A		; 82 04 7A
	dey		; 88
	plx		; FA
	bcc -66.b		; 90 BE
	cpy #$AC.b		; C0 AC
	cmp ($F4.b)		; D2 F4
	and $9005D6.l,X		; 3F D6 05 90
	sbc [$44.b],Y		; F7 44
	dey		; 88
	cpy $00.b		; C4 00
	sty $40.b		; 84 40
	stx $42.b		; 86 42
	dec $0E.b		; C6 0E
	phy		; 5A
	inc $0284.w,X		; FE 84 02
	inc $C022.w,X		; FE 22 C0
	ora $F31C.w		; 0D 1C F3
	rti		; 40

	sta $E1.b,S		; 83 E1
	clc		; 18
	rti		; 40

	inc $20.b,X		; F6 20
	jsr $A6FD.w		; 20 FD A6
	ldy #$D0.b		; A0 D0
	bpl   0.b		; 10 00
	sbc $88.b,X		; F5 88
	sty $4A.b		; 84 4A
	sbc #$DA79.w		; E9 79 DA
	sbc $5D14F8.l,X		; FF F8 14 5D
	sbc $FF.b,S		; E3 FF
	lda $8E43DD.l		; AF DD 43 8E
	eor ($ED.b,S),Y		; 53 ED
	jsl $F328C7.l		; 22 C7 28 F3
	trb $69.b		; 14 69
	inc A		; 1A
	and $D1C5.w,Y		; 39 C5 D1
	asl A		; 0A
	sbc $31F206.l,X		; FF 06 F2 31
	cmp ($E0.b),Y		; D1 E0
	sbc $C68E.w,X		; FD 8E C6
	rti		; 40

	lsr $C0.b		; 46 C0
	dec $80.b		; C6 80
	stx $10.b		; 86 10
	ora $FE00.w		; 0D 00 FE
	dec $FE.b		; C6 FE
	.db $62, $F0, $0F		; 62 F0 0F
	bpl 112.b		; 10 70
	inc A		; 1A
	sta $28FE.w		; 8D FE 28
	bpl   8.b		; 10 08
	inc $041C.w,X		; FE 1C 04
	pea $FEFF.w		; F4 FF FE
	bne -56.b		; D0 C8
	asl $F87A.w,X		; 1E 7A F8
	bpl 115.b		; 10 73
	php		; 08
	adc [$08.b],Y		; 77 08
	sbc [$90.b]		; E7 90
	inc $6C90.w		; EE 90 6C
	bcc  43.b		; 90 2B
	cpy #$FC.b		; C0 FC
	brk $F8.b		; 00 F8
	sei		; 78
	cmp #$F8FF.w		; C9 FF F8
	ora $047E8E.l		; 0F 8E 7E 04
	eor ($90.b),Y		; 51 90
	cop $06.b		; 02 06
	inc $E216.w,X		; FE 16 E2
	sbc $F8E0.w,X		; FD E0 F8
	ora $8CFC1C.l		; 0F 1C FC 8C
	inc $14FE.w,X		; FE FE 14
	tsb $4D7C.w		; 0C 7C 4D
	bcs  16.b		; B0 10
	ora $15.b,S		; 03 15
	ora #$FF0B.w		; 09 0B FF
	ora $0C13.w		; 0D 13 0C
	rol A		; 2A
	asl $0D.b,X		; 16 0D
	asl $08.b,X		; 16 08
	inc A		; 1A
	ora $26.b,S		; 03 26
	beq -15.b		; F0 F1
	asl $542F.w,X		; 1E 2F 54
	cpy $3500.w		; CC 00 35
	brk $1A.b		; 00 1A
	php		; 08
	cmp $3FF8.w,Y		; D9 F8 3F
	and $C5.b		; 25 C5
	sbc $8DFF.w,Y		; F9 FF 8D
	tax		; AA
	bra  -8.b		; 80 F8
	bpl -118.b		; 10 8A
	phx		; DA
	cpy #$FE.b		; C0 FE
	plp		; 28
	inx		; E8
	ora $D5EFBC.l		; 0F BC EF D5
	rep #$8A		; C2 8A
	bvc -73.b		; 50 B7
	nop		; EA
	sta [$CA.b]		; 87 CA
	sbc $6E12F8.l,X		; FF F8 12 6E
	inc $30.b		; E6 30
	lda ($E5.b),Y		; B1 E5
	sbc $F8FFFF.l,X		; FF FF FF F8
	ora ($19.b)		; 12 19
	ora ($26.b,X)		; 01 26
	ora [$2D.b]		; 07 2D
	rol $0413.w		; 2E 13 04
	ora $06.b,X		; 15 06
	tsa		; 3B
	php		; 08
	ora ($16.b,X)		; 01 16
	sta $0C3F8E.l		; 8F 8E 3F 0C
	rol $3800.w,X		; 3E 00 38
	cmp $00C1B5.l		; CF B5 C1 00
	bit $20.b,X		; 34 20
	trb $F6.b		; 14 F6
	cmp [$5A.b]		; C7 5A
	cmp ($64.b,X)		; C1 64
	cop $47.b		; 02 47
	lda ($50.b),Y		; B1 50
	ora $98.b		; 05 98
	sbc [$C0.b],Y		; F7 C0
	sbc ($AE.b)		; F2 AE
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	tax		; AA
	plx		; FA
	sbc $DA0DFF.l,X		; FF FF 0D DA
	rts		; 60

	ora $3F0187.l,X		; 1F 87 01 3F
	rol $06C6.w,X		; 3E C6 06
	adc $D278.w,Y		; 79 78 D2
	plx		; FA
	adc $FBD2.w,Y		; 79 D2 FB
	ora $71.b		; 05 71
	cpy $367F.w		; CC 7F 36
	sbc #$C1.b		; E9 C1
	brk $F9.b		; 00 F9
	brk $87.b		; 00 87
	ldy $FEE9.w,X		; BC E9 FE
	adc $E2D1F8.l,X		; 7F F8 D1 E2
	bra -64.b		; 80 C0
	jsr $D0F0.w		; 20 F0 D0
	bmi 120.b		; 30 78
	plp		; 28
	cld		; D8
	bcc -96.b		; 90 A0
	.db $82, $31, $C0		; 82 31 C0
	cpx #$E1.b		; E0 E1
	bit $10.b,X		; 34 10
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	inc $FC70.w,X		; FE 70 FC
	and $C2.b,S		; 23 C2
	brk $2D.b		; 00 2D
	asl $15.b		; 06 15
	rol $3B.b		; 26 3B
	tsb $FC05.w		; 0C 05 FC
	bit $7790.w,X		; 3C 90 77
	and $24030C.l		; 2F 0C 03 24
	sty $318A.w		; 8C 8A 31
	inc $F8FC.w,X		; FE FC F8
	ora #$8402.w		; 09 02 84
	asl A		; 0A
	jsr ($030B.w,X)		; FC 0B 03
	asl A		; 0A
	phd		; 0B
	asl $E2.b		; 06 E2
	ora [$05.b],Y		; 17 05
	jmp.w [$84C9]		; DC C9 84
	ora $0E00.w		; 0D 00 0E
	brk $0C.b		; 00 0C
	jmp.w [$FEBB]		; DC BB FE
	sbc $0F0FFE.l,X		; FF FE 0F 0F
	inc $18F0.w,X		; FE F0 18
	ora $E0EC.w,Y		; 19 EC E0
	phy		; 5A
	sbc $5CA5.w,Y		; F9 A5 5C
	dex		; CA
	rol $12E1.w,X		; 3E E1 12
	sbc $0D.b,X		; F5 0D
	ldx $0F.b		; A6 0F
	brk $E7.b		; 00 E7
	ldy $F1.b		; A4 F1
	rts		; 60

	rti		; 40

	cmp $D4.b,S		; C3 D4
	rts		; 60

	jsr $D1EE.w		; 20 EE D1
	rts		; 60

	txa		; 8A
	rts		; 60

	sta $8A.b,S		; 83 8A
	jsr $B090.w		; 20 90 B0
	inc $42.b,X		; F6 42
	lda ($B2.b),Y		; B1 B2
	sbc ($36.b)		; F2 36
	cmp ($34.b,S),Y		; D3 34
	trb $F8FE.w		; 1C FE F8
	ora $8C2E.w,X		; 1D 2E 8C
	phd		; 0B
	bit $0717.w		; 2C 17 07
	bcc  -4.b		; 90 FC
	ora ($26.b),Y		; 11 26
	inc $F2.b,X		; F6 F2
	sty $F8.b		; 84 F8
	phd		; 0B
	inc $FA57.w,X		; FE 57 FA
	cmp $C0BFA0.l,X		; DF A0 BF C0
	and $807FC0.l,X		; 3F C0 7F 80
	lda $FCFC40.l,X		; BF 40 FC FC
	cpy #$0FF0.w		; C0 F0 0F
	tas		; 1B
	eor $48.b		; 45 48
	lda ($FF.b)		; B2 FF
	jsr ($F5FD.w,X)		; FC FD F5
	inc $C192.w,X		; FE 92 C1
	dey		; 88
	cmp #$FC92.w		; C9 92 FC
	jsr ($6EFE.w,X)		; FC FE 6E
	cmp ($C0.b),Y		; D1 C0
	jsr ($FEFE.w,X)		; FC FE FE
	inc $34FF.w,X		; FE FF 34
	sbc ($FE.b)		; F2 FE
	sed		; F8
	phd		; 0B
	jsl $18341C.l		; 22 1C 34 18
	and [$19.b]		; 27 19
	bit $2210.w,X		; 3C 10 22
	clc		; 18
	and $0A11.w,X		; 3D 11 0A
	rts		; 60

	pea $F830.w		; F4 30 F8
	jsr ($3EBA.w,X)		; FC BA 3E
	jsr ($FEFA.w,X)		; FC FA FE
	adc [$78.b]		; 67 78
	sbc $F0CF9F.l,X		; FF 9F CF F0
	adc $FCC370.l		; 6F 70 C3 FC
	eor $FCA3F8.l,X		; 5F F8 A3 FC
	cmp [$E8.b],Y		; D7 E8
	wai		; CB
	pea $9284.w		; F4 84 92
	adc $0BF87B.l,X		; 7F 7B F8 0B
	ror $FCFF.w		; 6E FF FC
	sbc $A370FE.l,X		; FF FE 70 A3
	sbc $6E0FF8.l,X		; FF F8 0F 6E
	cpx #$FF19.w		; E0 19 FF
	jsr ($EAFD.w,X)		; FC FD EA
	inc $A932.w,X		; FE 32 A9
	stz $D1.b,X		; 74 D1
	bvs -46.b		; 70 D2
	jsr ($01FE.w,X)		; FC FE 01
	cld		; D8
	asl A		; 0A
	xce		; FB
	bne   9.b		; D0 09
	cmp $FF.b,S		; C3 FF
	inc $0AF8.w,X		; FE F8 0A
	ora ($39.b,S),Y		; 13 39
	rts		; 60

	tas		; 1B
	and ($14.b),Y		; 31 14
	sec		; 38
	tsa		; 3B
	ora $10.b,X		; 15 10
	sec		; 38
	ora $40.b,X		; 15 40
	asl $5E39.w		; 0E 39 5E
	ror A		; 6A
	jsr ($0BF8.w,X)		; FC F8 0B
	eor [$68.b],Y		; 57 68
	ora $A8.b,S		; 03 A8
	jmp ($7877.w)		; 6C 77 78
	jsr ($FC58.w,X)		; FC 58 FC
	jsr ($FE60.w,X)		; FC 60 FE
	nop		; EA
	and [$FC.b],Y		; 37 FC
	inc $FC6A.w,X		; FE 6A FC
	inc $09F8.w,X		; FE F8 09
	sbc $EB0FF8.l,X		; FF F8 0F EB
	ora $33C1.w,Y		; 19 C1 33
	sbc $D5FDFC.l,X		; FF FC FD D5
	rol A		; 2A
	cmp ($FE.b,X)		; C1 FE
	jmp.w [$FCD2]		; DC D2 FC
	inc $86FE.w,X		; FE FE 86
	and $0F.b,S		; 23 0F
	and $321E39.l,X		; 3F 39 1E 32
	and #$8631.w		; 29 31 86
	rol $1932.w		; 2E 32 19
	and ($2C.b,X)		; 21 2C
	bmi 101.b		; 30 65
	sbc $863D8A.l,X		; FF 8A 3D 86
	plx		; FA
	jsr ($FA45.w,X)		; FC 45 FA
	plb		; AB
	pea $F8C7.w		; F4 C7 F8
	lda [$7E.b]		; A7 7E
	phb		; 8B
	pea $E8D7.w		; F4 D7 E8
	sed		; F8
	lda $10E03F.l		; AF 3F E0 10
	dec $32.b,X		; D6 32
	.db $82, $66, $FE		; 82 66 FE
	adc $25.b,S		; 63 25
	jsr ($AAFD.w,X)		; FC FD AA
	inc $800E.w,X		; FE 0E 80
	sbc ($FC.b,X)		; E1 FC
	inc $D5FE.w,X		; FE FE D5
	sbc $0BA8B4.l,X		; FF B4 A8 0B
	bmi -22.b		; 30 EA
	beq  -8.b		; F0 F8
	phd		; 0B
	bvc -56.b		; 50 C8
	ora #$051A.w		; 09 1A 05
	sbc $00.b		; E5 00
	pld		; 2B
	and $45C1BE.l,X		; 3F BE C1 45
	cmp ($D4.b,X)		; C1 D4
	pei ($EA.b)		; D4 EA
	lda $36.b		; A5 36
	cmp $D1.b,X		; D5 D1
	cpx $B61A.w		; EC 1A B6
	sbc $84C0FA.l,X		; FF FA C0 84
	sei		; 78
	txs		; 9A
	sta [$15.b]		; 87 15
	pea $282A.w		; F4 2A 28
	tax		; AA
	lda $32.b		; A5 32
	lda #$007F.w		; A9 7F 00
	phd		; 0B
	lda $007E.w,X		; BD 7E 00
	cmp [$56.b],Y		; D7 56
	cpy #$C00D.w		; C0 0D C0
	cpy #$F060.w		; C0 60 F0
	sed		; F8
	phd		; 0B
	ror $EA.b,X		; 76 EA
	phd		; 0B
	and ($1C.b),Y		; 31 1C
	bmi  33.b		; 30 21
	jsr ($1E17.w,X)		; FC 17 1E
	jsl $313D38.l		; 22 38 3D 31
	rol A		; 2A
	and ($35.b)		; 32 35
	and $F4A8.w,Y		; 39 A8 F4
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	inc $FC2C.w,X		; FE 2C FC
	sta $FA00F0.l		; 8F F0 00 FA
	jsr $F8FC.w		; 20 FC F8
	lda $10F820.l,X		; BF 20 F8 10
	ldy $0464.w		; AC 64 04
	sta $CC57.w		; 8D 57 CC
	jsr ($FDFC.w,X)		; FC FC FD
	mvn $1C,$FE		; 54 FE 1C
	brk $3C.b		; 00 3C
	tay		; A8
	cmp $FCFC.w,Y		; D9 FC FC
	dec A		; 3A
	pha		; 48
	inc $0205.w,X		; FE 05 02
	ora ($FD.b,X)		; 01 FD
	cpy #$B7E1.w		; C0 E1 B7
	cpx #$0324.w		; E0 24 03
	ora $0A.b,S		; 03 0A
	sed		; F8
	cmp #$6806.w		; C9 06 68
	sbc ($FC.b,X)		; E1 FC
	ldy $B4.b,X		; B4 B4
	ora $00FFFF.l		; 0F FF FF 00
	dec A		; 3A
	dec A		; 3A
	ror $E981.w,X		; 7E 81 E9
	bit $5B.b,X		; 34 5B
	rol $AD.b,X		; 36 AD
	cmp ($AF.b)		; D2 AF
	cmp ($28.b)		; D2 28
	plp		; 28
	sbc $15.b,X		; F5 15
	cpx #$C5F4.w		; E0 F4 C5
	pla		; 68
	lda $9E.b,S		; A3 9E
	cpx $3E42.w		; EC 42 3E
	cmp $38.b		; C5 38
	sbc $CCD4EF.l,X		; FF EF D4 CC
	sta $53.b,X		; 95 53
	cmp $B858.w		; CD 58 B8
	and ($39.b),Y		; 31 39
	lda ($51.b)		; B2 51
	eor ($89.b)		; 52 89
	lsr $C9.b,X		; 56 C9
	bit $FB1F.w,X		; 3C 1F FB
	ora $2F.b,S		; 03 2F
	brk $27.b		; 00 27
	brk $4F.b		; 00 4F
	inc $FAAF.w,X		; FE AF FA
	sbc ($40.b),Y		; F1 40
	ldy #$BF80.w		; A0 80 BF
	ply		; 7A
	cpx #$3020.w		; E0 20 30
	bvc -48.b		; 50 D0
	bcs 112.b		; B0 70
	cmp $99.b,S		; C3 99
	stz $AC91.w,X		; 9E 91 AC
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	cpy #$D0.b		; C0 D0
	sbc $B2FF.w,X		; FD FF B2
	sta $DC48.w,Y		; 99 48 DC
	mvp $6D,$38		; 44 38 6D
	and ($48.b),Y		; 31 48
	bmi 125.b		; 30 7D
	and ($4C.b,X)		; 21 4C
	bmi 121.b		; 30 79
	and ($BF.b,X)		; 21 BF
	tsx		; BA
	trb $60.b		; 14 60
	sei		; 78
	jsr $007F.w		; 20 7F 00
	ror $F1E6.w,X		; 7E E6 F1
	jsr ($D2FE.w,X)		; FC FE D2
	phx		; DA
	inc $E401.w,X		; FE 01 E4
	and [$FC.b],Y		; 37 FC
	inc $20FE.w,X		; FE FE 20
	sed		; F8
	ora $08C858.l		; 0F 58 C8 08
	tya		; 98
	sed		; F8
	jsr ($A8FD.w,X)		; FC FD A8
	lsr $FEE9.w,X		; 5E E9 FE
	sec		; 38
	brk $78.b		; 00 78
	pla		; 68
	sbc ($FC.b,X)		; E1 FC
	jsr ($06FE.w,X)		; FC FE 06
	phd		; 0B
	ora $030AB4.l,X		; 1F B4 0A 03
	ora $0207.w		; 0D 07 02
	tsb $F8.b		; 04 F8
	cpy $A9.b		; C4 A9
	stx $91.b,Y		; 96 91
	tsb $FE95.w		; 0C 95 FE
	inc $D9.b		; E6 D9
	php		; 08
.ACCU 16
	rep #$E9		; C2 E9
	cpx #$DA.b		; E0 DA
	inc $8779.w,X		; FE 79 87
	lda $5A.b		; A5 5A
	tay		; A8
	tay		; A8
	adc $747570.l,X		; 7F 70 75 74
	sbc $7F07.w,Y		; F9 07 7F
	bra  -4.b		; 80 FC
	ora $FE.b,S		; 03 FE
	cpy $0093.w		; CC 93 00
	phb		; 8B
	adc $FFA080.l,X		; 7F 80 A0 FF
	lda #$AA99.w		; A9 99 AA
	ror $5A.b		; 66 5A
	eor $F828.w,Y		; 59 28 F8
	sbc $62A423.l,X		; FF 23 A4 62
	and $38F8.w,Y		; 39 F8 38
	sed		; F8
	adc $1E06.w,Y		; 79 06 1E
	ora ($A7.b,X)		; 01 A7
	ror A		; 6A
	sbc $F843.w,Y		; F9 43 F8
	beq -101.b		; F0 9B
	cpy #$40.b		; C0 40
	rts		; 60

	ldy #$A0.b		; A0 A0
	rts		; 60

	bit $A0.b		; 24 A0
	cmp ($CA.b),Y		; D1 CA
	cmp ($D9.b,X)		; C1 D9
	sbc [$B2.b],Y		; F7 B2
	bit #$D880.w		; 89 80 D8
	sta ($36.b),Y		; 91 36
	ldx #$FF.b		; A2 FF
	sbc $702AF8.l,X		; FF F8 2A 70
	jmp ($3930.w)		; 6C 30 39
	adc ($2C.b,X)		; 61 2C
	bvs 100.b		; 70 64
	sec		; 38
	and $2871.w		; 2D 71 28
	bvs  21.b		; 70 15
	ldy $00.b		; A4 00
	adc #$262C.w		; 69 2C 26
	jsr ($FC1C.w,X)		; FC 1C FC
	rol $7E8D.w		; 2E 8D 7E
	sty $FCFF.w		; 8C FF FC
	sbc $FEFD.w,X		; FD FD FE
	jsr $0FF8.w		; 20 F8 0F
	bcs -112.b		; B0 90
	bpl  48.b		; 10 30
	beq  99.b		; F0 63
	lda $FC.b		; A5 FC
	sbc $FE50.w,X		; FD 50 FE
	bvs -60.b		; 70 C4
	sbc #$FEFC.w		; E9 FC FE
	inc $B817.w,X		; FE 17 B8
	tsb $07.b		; 04 07
	ora $06.b		; 05 06
	iny		; C8
	sta ($FD.b,X)		; 81 FD
	plx		; FA
	ora $4E.b,S		; 03 4E
	brk $93.b		; 00 93
	lda #$F8FE.w		; A9 FE F8
	ora $06F9.w		; 0D F9 06
	stz $C322.w,X		; 9E 22 C3
	inc $FAA6.w,X		; FE A6 FA
	ora [$F8.b]		; 07 F8
	plx		; FA
	ora $A0.b		; 05 A0
	sed		; F8
	ora $63F071.l		; 0F 71 F0 63
	cpx #$A9.b		; E0 A9
	sbc $53E8BB.l,X		; FF BB E8 53
	beq 122.b		; F0 7A
	sbc $D0D1.w,Y		; F9 D1 D0
	tda		; 7B
	sed		; F8
	cmp ($D1.b)		; D2 D1
	bpl -103.b		; 10 99
	brk $17.b		; 00 17
	cmp $A00A.w,Y		; D9 0A A0
	sbc $2F.b,S		; E3 2F
	jsr ($C9A6.w,X)		; FC A6 C9
	rti		; 40

	eor [$F2.b],Y		; 57 F2
	plx		; FA
	jsr ($FFC2.w,X)		; FC C2 FF
	inc $D860.w,X		; FE 60 D8
	ora $714926.l		; 0F 26 49 71
	bit $5860.w,X		; 3C 60 58
	rts		; 60

	ora $61.b,X		; 15 61
	eor $1083.w,Y		; 59 83 10
	adc ($33.b,X)		; 61 33
	eor $F8.b,S		; 43 F8
	jsl $FE09F8.l		; 22 F8 09 FE
	jmp ($46E1.w,X)		; 7C E1 46
	sed		; F8
	dey		; 88
	sed		; F8
	asl $FF.b		; 06 FF
	jsr ($FAFD.w,X)		; FC FD FA
	inc $6FA5.w,X		; FE A5 6F
	jmp ($FC94.w)		; 6C 94 FC
	jsr ($60FE.w,X)		; FC FE 60
	jsr $6020.w		; 20 20 60
	cpx #$FC.b		; E0 FC
	sbc $54A0.w,X		; FD A0 54
	sbc $F2C6FE.l,X		; FF FE C6 F2
	inc $0BF8.w,X		; FE F8 0B
	jsr $0BFE.w		; 20 FE 0B
	tsb $0A0D.w		; 0C 0D 0A
	ora $0C.b,S		; 03 0C
	sta $22.b,X		; 95 22
	ora [$08.b]		; 07 08
	plp		; 28
	inc $CA2F.w,X		; FE 2F CA
	inc $2AF8.w,X		; FE F8 2A
	cpy #$54.b		; C0 54
	jsl $0DF2FA.l		; 22 FA F2 0D
	sed		; F8
	sbc ($20.b)		; F2 20
	sei		; 78
	bpl  -8.b		; 10 F8
	sbc $D8D922.l,X		; FF 22 D9 D8
	adc ($F0.b,S),Y		; 73 F0
	eor $D0.b,X		; 55 D0
	sbc $E0.b,S		; E3 E0
	cmp [$C0.b]		; C7 C0
	eor ($D1.b)		; 52 D1
	and ($2A.b,X)		; 21 2A
	ldx $E1.b		; A6 E1
	jsl $6A2227.l		; 22 27 22 6A
	sta ($BE.b),Y		; 91 BE
	sbc ($8D.b,X)		; E1 8D
	php		; 08
	plx		; FA
	rti		; 40

	bra  37.b		; 80 25
	inc $FF0A.w,X		; FE 0A FF
	plx		; FA
	inc $20FD.w,X		; FE FD 20
	sed		; F8
	asl $3928.w		; 0E 28 39
	adc ($43.b,X)		; 61 43
	adc ($38.b,S),Y		; 73 38
	rts		; 60

	eor $BF.b		; 45 BF
	mvp $7B,$71		; 44 71 7B
	adc $51.b,S		; 63 51
	adc ($6B.b,X)		; 61 6B
	adc ($28.b,S),Y		; 73 28
	inc $ABFA.w,X		; FE FA AB
	rol $09FC.w,X		; 3E FC 09
	asl $FC66.w		; 0E 66 FC
	rts		; 60

	inc $FE68.w,X		; FE 68 FE
	inc $FAFE.w,X		; FE FE FA
	ora [$F5.b]		; 07 F5
	ora $62813C.l		; 0F 3C 81 62
	sbc $0B.b,X		; F5 0B
	beq  15.b		; F0 0F
	.db $62, $FA, $FF		; 62 FA FF
	adc $10D080.l,X		; 7F 80 D0 10
	sbc ($A2.b,S),Y		; F3 A2
	lda ($F7.b,X)		; A1 F7
	sbc ($A4.b),Y		; F1 A4
	lda $C7.b,S		; A3 C7
	cmp ($B2.b,X)		; C1 B2
	lda ($E7.b),Y		; B1 E7
	sbc ($AA.b,X)		; E1 AA
	lda ($88.b,X)		; A1 88
	brk $DF.b		; 00 DF
	eor $11FC60.l,X		; 5F 60 FC 11
	mvn $4F,$62		; 54 62 4F
	.db $62, $F8, $7F		; 62 F8 7F
	cmp ($FC.b)		; D2 FC
	jsr ($76BF.w,X)		; FC BF 76
	sbc $F8FEFF.l,X		; FF FF FE F8
	ora $7189.w		; 0D 89 71
	stp		; DB
	adc $91.b,S		; 63 91
	adc ($FB.b,X)		; 61 FB
	eor $99.b,S		; 43 99
	adc ($F2.b,X)		; 61 F2
	.db $42, $28		; 42 28
	cpy #$6B.b		; C0 6B
	sbc $FE41F1.l,X		; FF F1 41 FE
	ldx $D9.b		; A6 D9
	jsr ($FDFC.w,X)		; FC FC FD
	cpy $E2.b		; C4 E2
	brk $13.b		; 00 13
	trb $1817.w		; 1C 17 18
	tas		; 1B
	tyx		; BB
	bit $14.b,X		; 34 14
	ora [$18.b]		; 07 18
	plx		; FA
	jsr ($100F.w,X)		; FC 0F 10
	tsb $A0.b		; 04 A0
	phd		; 0B
	inc $1BE5.w,X		; FE E5 1B
	ora $6887.w		; 0D 87 68
	sbc $1F.b		; E5 1F
	phy		; 5A
	xba		; EB
	ora $C2FCF1.l,X		; 1F F1 FC C2
	sbc $F86017.l,X		; FF 17 60 F8
	ora $818A68.l		; 0F 68 8A 81
	lda [$A1.b]		; A7 A1
	jmp $EFC3.w		; 4C C3 EF
	sbc ($44.b,X)		; E1 44
	and $ED4343.l		; 2F 43 43 ED
	sbc $48.b,S		; E3 48
	eor [$32.b]		; 47 32
	sta ($62.b,X)		; 81 62
	stz $BF.b		; 64 BF
	lsr $FF.b,X		; 56 FF
	jsr ($A26C.w,X)		; FC 6C A2
	jmp ($0FF8.w)		; 6C F8 0F
	inc $0BF8.w,X		; FE F8 0B
	eor $E1.b,X		; 55 E1
	cmp $7361.w,Y		; D9 61 73
	cmp $FF.b,S		; C3 FF
	sta ($58.b,X)		; 81 58
	cpx #$C9.b		; E0 C9
	adc ($5B.b),Y		; 71 5B
	sbc $51.b,S		; E3 51
	sbc ($2B.b,X)		; E1 2B
	cmp ($6E.b,S),Y		; D3 6E
	pha		; 48
	sbc $586662.l,X		; FF 62 66 58
	jsr ($FE60.w,X)		; FC 60 FE
	and $283730.l		; 2F 30 37 28
	ora $474A30.l		; 0F 30 4A 47
	ora $2473C0.l,X		; 1F C0 73 24
	ldx $FE.b		; A6 FE
	sbc ($1F.b,X)		; E1 1F
	sbc ($62.b,S),Y		; F3 62
	tya		; 98
	plx		; FA
	plx		; FA
	wai		; CB
	and [$F8.b],Y		; 37 F8
	dex		; CA
	eor $8D1078.l,X		; 5F 78 10 8D
	sta $66.b,S		; 83 66
	ora $CD613F.l		; 0F 3F 61 CD
	cmp $54.b,S		; C3 54
	eor $F8.b,S		; 43 F8
	asl $4903.w,X		; 1E 03 49
	eor [$9A.b]		; 47 9A
	sta [$44.b]		; 87 44
	bcc  98.b		; 90 62
	sta $C66862.l,X		; 9F 62 68 C6
	phx		; DA
	lsr $85.b,X		; 56 85
	plx		; FA
	and [$38.b]		; 27 38
	ldx $FC.b		; A6 FC
	ldy #$FE.b		; A0 FE
	.db $82, $98, $09		; 82 98 09
	inc $0AFC.w,X		; FE FC 0A
	cmp $7F.b,S		; C3 7F
	dec $3E.b,X		; D6 3E
	sbc $FC.b,S		; E3 FC
	rol $3FC3.w		; 2E C3 3F
	inc $1E.b		; E6 1E
	wai		; CB
	and $E93EC2.l,X		; 3F C2 3E E9
	sbc $0BE860.l,X		; FF 60 E8 0B
	jsr ($CBD5.w,X)		; FC D5 CB
	txa		; 8A
	sta [$D9.b]		; 87 D9
	cmp [$92.b]		; C7 92
	sta $61071A.l		; 8F 1A 07 61
	ora #$C3CE.w		; 09 CE C3
	ldx #$AA.b		; A2 AA
	sta [$00.b]		; 87 00
	plx		; FA
	jsr ($8608.w,X)		; FC 08 86
	ldx #$FA.b		; A2 FA
	inc $C22A.w,X		; FE 2A C2
	jsl $868FFF.l		; 22 FF 8F 86
	inc $71.b		; E6 71
	cmp ($8A.b,X)		; C1 8A
.ACCU 8
.INDEX 8
	sep #$F7		; E2 F7
	cmp [$A2.b]		; C7 A2
.INDEX 16
	rep #$D7		; C2 D7
	sbc [$FD.b]		; E7 FD
	cmp $2CBE.w		; CD BE 2C
	sbc $F382.w,Y		; F9 82 F3
	sed		; F8
	jsr ($8852.w,X)		; FC 52 88
	phd		; 0B
	asl $04.b		; 06 04
	trb $1C.b		; 14 1C
	sta $5F.b		; 85 5F
	beq  -8.b		; F0 F8
	phd		; 0B
	asl A		; 0A
	bpl -104.b		; 10 98
	asl A		; 0A
	inc $0E.b,X		; F6 0E
	ora $05.b,S		; 03 05
	ora $0B.b		; 05 0B
	tsb $F8F0.w		; 0C F0 F8
	ora #$10.b		; 09 10
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	sta ($C8.b)		; 92 C8
	ora #$9878.w		; 09 78 98
	dec $FF.b		; C6 FF
	lda [$FA.b],Y		; B7 FA
	phd		; 0B
	sbc ($FB.b),Y		; F1 FB
	dec $FEF0.w		; CE F0 FE
	sbc $8E.b,S		; E3 8E
	adc $F1.b,S		; 63 F1
	pei ($8A.b)		; D4 8A
	ply		; 7A
	bcs -80.b		; B0 B0
	lsr $50AF.w		; 4E AF 50
	sed		; F8
	ora [$F6.b]		; 07 F6
	tas		; 1B
	inc $7D6C.w		; EE 6C 7D
	stz $E279.w		; 9C 79 E2
	ora #$90F0.w		; 09 F0 90
	clc		; 18
	sbc $A8B4FF.l,X		; FF FF B4 A8
	ora #$3E32.w		; 09 32 3E
	bvc  79.b		; 50 4F
	pld		; 2B
	adc $84.b		; 65 84
	sbc ($88.b,S),Y		; F3 88
	inc $78.b,X		; F6 78
	lsr $2E3A.w		; 4E 3A 2E
	adc $6CDD1C.l		; 6F 1C DD 6C
	eor ($00.b,X)		; 41 00
	ldy #$79A0.w		; A0 A0 79
	php		; 08
	sep #$81		; E2 81
	brk $FE.b		; 00 FE
	sbc $0083F4.l,X		; FF F4 83 00
	jmp $31D6C3.l		; 5C C3 D6 31
	ror $AD81.w,X		; 7E 81 AD
	adc $99.b,S		; 63 99
	sta [$F0.b]		; 87 F0
	asl $508F.w		; 0E 8F 50
	ldx #$A97E.w		; A2 7E A9
	adc $683C.w,Y		; 79 3C 68
	adc $18.b,X		; 75 18
	bra -39.b		; 80 D9
	plx		; FA
	sbc $0086DE.l,X		; FF DE 86 00
	cpy $3C.b		; C4 3C
	asl A		; 0A
	inc $FE03.w,X		; FE 03 FE
	and $DE.b,S		; 23 DE
	and ($DC.b,X)		; 21 DC
	eor $C4BD12.l,X		; 5F 12 BD C4
	eor $4B64.w,Y		; 59 64 4B
	stx $26.b		; 86 26
	tsx		; BA
	inc $CAC0.w,X		; FE C0 CA
	cpx #$C25F.w		; E0 5F C2
	sed		; F8
	stz $ECE4.w		; 9C E4 EC
	pea $AC84.w		; F4 84 AC
	tsb $0C.b		; 04 0C
	inc $D2FE.w,X		; FE FE D2
	eor ($2C.b,X)		; 41 2C
	sta [$A8.b],Y		; 97 A8
	phd		; 0B
	tax		; AA
	rep #$04		; C2 04
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	sta $C2FFF5.l,X		; 9F F5 FF C2
	plb		; AB
	cpy #$FFAA.w		; C0 AA FF
	jsr ($7023.w,X)		; FC 23 70
	asl $42D1.w		; 0E D1 42
	cmp $BE25.w,X		; DD 25 BE
	eor ($9A.b),Y		; 51 9A
	lda $1AF131.l,X		; BF 31 F1 1A
	cpx $372B.w		; EC 2B 37
	cmp $8C.b,S		; C3 8C
.ACCU 8
	sep #$ED		; E2 ED
	stz $FE.b		; 64 FE
	trb $FE.b		; 14 FE
	beq 116.b		; F0 74
	sta ($50.b),Y		; 91 50
	and ($E0.b,X)		; 21 E0
	bcc -31.b		; 90 E1
	inc $E1C8.w,X		; FE C8 E1
	php		; 08
	eor $A4B1F8.l,X		; 5F F8 B1 A4
	and ($26.b),Y		; 31 26
	lda $8828.w,Y		; B9 28 88
	sbc $5E.b		; E5 5E
	pha		; 48
	brk $4C.b		; 00 4C
	brk $FF.b		; 00 FF
	sbc $8B0046.l,X		; FF 46 00 8B
	lsr $1B.b		; 46 1B
	dec $5B.b,X		; D6 5B
	dec $5A.b,X		; D6 5A
	dec $1A.b,X		; D6 1A
	stx $09.b,Y		; 96 09
	sty $4B.b,X		; 94 4B
	stx $85.b,Y		; 96 85
	php		; 08
	lsr A		; 4A
	stx $B8.b,Y		; 96 B8
	ldx $24.b		; A6 24
	eor $FC.b,S		; 43 FC
	xba		; EB
	ora $0E02FE.l		; 0F FE 02 0E
	inc $0DF8.w,X		; FE F8 0D
	dec $F0.b,X		; D6 F0
	ora $47605F.l		; 0F 5F 60 47
	sei		; 78
	and $3D.b,S		; 23 3D
	lda $11FEFF.l,X		; BF FF FE 11
	asl $1F10.w,X		; 1E 10 1F
	php		; 08
	ora $1150C0.l		; 0F C0 50 11
	asl A		; 0A
	bit #$C2.b		; 89 C2
	and $03FC00.l,X		; 3F 00 FC 03
	sbc $83F855.l,X		; FF 55 F8 83
	jsr ($7CC1.w,X)		; FC C1 7C
	cmp $7E.b,S		; C3 7E
	adc ($BF.b,X)		; 61 BF
	ror $44.b,X		; 76 44
	sbc ($C0.b,S),Y		; F3 C0
	lda ($F6.b)		; B2 F6
	sbc ($FF.b)		; F2 FF
	sbc $9661A0.l,X		; FF A0 61 96
	inc A		; 1A
	stx $1B.b		; 86 1B
	stx $5B.b		; 86 5B
.INDEX 16
	rep #$5B		; C2 5B
	.db $42, $D9		; 42 D9
	.db $42, $99		; 42 99
	cop $D9.b		; 02 D9
	tsb $42.b		; 04 42
	cop $8C.b		; 02 8C
	inc $F2C4.w,X		; FE C4 F2
	inc $44C1.w,X		; FE C1 44
	lsr $FE.b,X		; 56 FE
	and $E0FE.w,X		; 3D FE E0
	beq   9.b		; F0 09
	inc $0DF8.w,X		; FE F8 0D
	eor $15.b,X		; 55 15
	tsb $DA.b		; 04 DA
	plp		; 28
	plb		; AB
	bit $D1.b		; 24 D1
	stz $24DA.w,X		; 9E DA 24
	bne  11.b		; D0 0B
	plx		; FA
	sty $0E.b,X		; 94 0E
	tax		; AA
	jsr $4980.w		; 20 80 49
	adc [$0D.b]		; 67 0D
	inc $20D1.w		; EE D1 20
	plx		; FA
	cmp #$F1.b		; C9 F1
	beq -28.b		; F0 E4
	ldx $EE.b,Y		; B6 EE
	lda ($A3.b)		; B2 A3
	jmp.w [$16C0]		; DC C0 16
	sbc $4B70F4.l,X		; FF F4 70 4B
	cli		; 58
	and [$BC.b]		; 27 BC
	eor ($FC.b,X)		; 41 FC
	asl $FC.b		; 06 FC
	beq  60.b		; F0 3C
	brk $8E.b		; 00 8E
	ora $FF.b,X		; 15 FF
	brk $A7.b		; 00 A7
	brk $F9.b		; 00 F9
	lsr $5EA2.w,X		; 5E A2 5E
	ora $36.b,S		; 03 36
	ora [$68.b]		; 07 68
	ora $3DBFD2.l		; 0F D2 BF 3D
	tas		; 1B
	cpx $3D.b		; E4 3D
	.db $82, $3F, $70		; 82 3F 70
	and $38EA88.l,X		; 3F 88 EA 38
	jsl $00E4F1.l		; 22 F1 E4 00
.INDEX 16
	rep #$DA		; C2 DA
	cmp ($C4.b,S),Y		; D3 C4
	lsr $F2.b,X		; 56 F2
	bra  41.b		; 80 29
	phy		; 5A
	cpx #$F010.w		; E0 10 F0
	inc $C208.w,X		; FE 08 C2
	cmp ($F8.b,S),Y		; D3 F8
	cop $60.b		; 02 60
	ora $4FFF.w		; 0D FF 4F
	plp		; 28
	and [$58.b],Y		; 37 58
	jsr ($A80F.w,X)		; FC 0F A8
	cop $68.b		; 02 68
	jsr ($6956.w,X)		; FC 56 69
	jmp $FCA2.w		; 4C A2 FC
	sed		; F8
	ora #$FE.b		; 09 FE
	ldy $4CB0.w		; AC B0 4C
	phd		; 0B
	tsb $D2E8.w		; 0C E8 D2
	trb $FCE2.w		; 1C E2 FC
	ora [$18.b],Y		; 17 18
	asl A		; 0A
	lda $18D6E8.l		; AF E8 D6 18
	inc $AC.b		; E6 AC
	sbc ($FE.b)		; F2 FE
	asl A		; 0A
	ora $C40706.l		; 0F 06 07 C4
	bra  17.b		; 80 11
	and $EB5CF8.l,X		; 3F F8 5C EB
	sed		; F8
	tsb $04F8.w		; 0C F8 04
	beq  24.b		; F0 18
	inc $9183.w,X		; FE 83 91
	trb $C0.b		; 14 C0
	asl $2A.b		; 06 2A
	cpy #$4CF0.w		; C0 F0 4C
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
.ACCU 16
	rep #$E2		; C2 E2
	.db $82, $38, $08		; 82 38 08
	php		; 08
	and $381FFC.l,X		; 3F FC 1F 38
	ora $1C0F28.l,X		; 1F 28 0F 1C
	ora $0308A3.l		; 0F A3 08 03
	pld		; 2B
	ora $6A.b,S		; 03 6A
	trb $A1.b		; 14 A1
	cop $AC.b		; 02 AC
	bmi -96.b		; 30 A0
	phx		; DA
	trb $21.b		; 14 21
	cpx $995E.w		; EC 5E 99
	adc $E0.b,X		; 75 E0
	sed		; F8
	inc $FC04.w,X		; FE 04 FC
	inc $02FC.w,X		; FE FC 02
	txy		; 9B
	sbc ($FE.b),Y		; F1 FE
	.db $42, $FE		; 42 FE
	stz $0FF8.w		; 9C F8 0F
	and $503E46.l,X		; 3F 46 3E 50
	ora [$D8.b]		; 07 D8
	rol A		; 2A
	pla		; 68
	pea $4648.w		; F4 48 46
	inc $F868.w,X		; FE 68 F8
	sbc $D2CC.w,X		; FD CC D2
	dec $DA.b		; C6 DA
	ldy $FCAA.w		; AC AA FC
	and $DE6030.l		; 2F 30 60 DE
	cpy #$0BD8.w		; C0 D8 0B
	ora $EB.b,X		; 15 EB
	sbc [$BA.b],Y		; F7 BA
	sta $42F4.w		; 8D F4 42
	sed		; F8
	rti		; 40

	sbc ($8F.b),Y		; F1 8F
	bcc   9.b		; 90 09
	inc $F613.w,X		; FE 13 F6
	inx		; E8
	phd		; 0B
	cld		; D8
	trb $17FF.w		; 1C FF 17
	cld		; D8
	ora [$D6.b]		; 07 D6
	ora ($DE.b)		; 12 DE
	ora ($DF.b,X)		; 01 DF
	brk $1F.b		; 00 1F
	cpy #$163B.w		; C0 3B 16
	bra -55.b		; 80 C9
	stx $FEAA.w		; 8E AA FE
	and #$2100.w		; 29 00 21
	clv		; B8
	jsl $7058C9.l		; 22 C9 58 70
	tsb $C19D.w		; 0C 9D C1
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	eor $A7.b		; 45 A7
	pha		; 48
	adc ($EE.b,S),Y		; 73 EE
	ora ($1A.b)		; 12 1A
	cmp ($1B.b),Y		; D1 1B
	bmi  11.b		; 30 0B
	sed		; F8
	rtl		; 6B

	cli		; 58
	sta [$85.b]		; 87 85
	rtl		; 6B

	sty $E7.b,X		; 94 E7
	trb $FE.b		; 14 FE
	cmp [$65.b]		; C7 65
	ror $F1.b		; 66 F1
	inc $FF48.w,X		; FE 48 FF
	sty $FE.b		; 84 FE
	txs		; 9A
	plp		; 28
	brk $42.b		; 00 42
	ror $1E12.w,X		; 7E 12 1E
	lda ($43.b,X)		; A1 43
	trb $41BF.w		; 1C BF 41
	sbc $FE01FE.l,X		; FF FE 01 FE
	brk $FF.b		; 00 FF
	pea $CA8F.w		; F4 8F CA
	ldy $FF5A.w,X		; BC 5A FF
	sed		; F8
	ora #$7B.b		; 09 7B
	tsb $4C2B.w		; 0C 2B 4C
	adc [$18.b],Y		; 77 18
	phd		; 0B
	eor $03FC85.l,X		; 5F 85 FC 03
	jmp $185F.w		; 4C 5F 18
	ora [$60.b]		; 07 60
	sbc ($5E.b),Y		; F1 5E
	beq  13.b		; F0 0D
.INDEX 16
	rep #$50		; C2 50
	ora $87FE.w,X		; 1D FE 87
	sbc ($6F.b,X)		; E1 6F
	bvc  31.b		; 50 1F
	rts		; 60

	jsr ($605F.w,X)		; FC 5F 60
	plx		; FA
	and $AEA340.l,X		; 3F 40 A3 AE
	cmp $5F3FA0.l,X		; DF A0 3F 5F
	inc $09F8.w,X		; FE F8 09
	cli		; 58
	jmp.w [$0704]		; DC 04 07
	cmp $59.b		; C5 59
	lsr $5E01.w,X		; 5E 01 5E
	txa		; 8A
	ldy $7359.w,X		; BC 59 73
	ora $1C.b,S		; 03 1C
	ror A		; 6A
	eor ($44.b,S),Y		; 53 44
	cpx $FEEB.w		; EC EB FE
	sbc $FB02A0.l,X		; FF A0 02 FB
	tsb $FD.b		; 04 FD
	ora ($FD.b,X)		; 01 FD
	cop $FE.b		; 02 FE
	trb $CC.b		; 14 CC
	ror $08.b,X		; 76 08
	ldx $8510.w		; AE 10 85
	sbc $7E.b,S		; E3 7E
	bne -28.b		; D0 E4
	jsr ($23E6.w,X)		; FC E6 23
	brk $E6.b		; 00 E6
	inc $3F26.w,X		; FE 26 3F
	ldy $2000.w		; AC 00 20
	bra  96.b		; 80 60
	cpy #$E030.w		; C0 30 E0
	inc $E0B0.w,X		; FE B0 E0
	cpy #$82B1.w		; C0 B1 82
	sed		; F8
	ora ($42.b),Y		; 11 42
	jsl $6BFE85.l		; 22 85 FE 6B
	sta ($F0.b),Y		; 91 F0
	mvn $36,$C7		; 54 C7 36
	sbc $96A70F.l,X		; FF 0F A7 96
	lda [$54.b]		; A7 54
	adc $34.b		; 65 34
	and $74.b		; 25 74
	ora $6A.b		; 05 6A
	tas		; 1B
	pla		; 68
	tas		; 1B
	sbc ($2B.b),Y		; F1 2B
	asl $FE48.w		; 0E 48 FE
	txa		; 8A
	brk $CA.b		; 00 CA
	brk $6A.b		; 00 6A
	jsr ($CBDB.w,X)		; FC DB CB
	txs		; 9A
	sbc $066B.w,X		; FD 6B 06
	bra  -2.b		; 80 FE
	cop $7E.b		; 02 7E
	.db $42, $7E		; 42 7E
	eor ($7D.b,X)		; 41 7D
	mvp $09,$F8		; 44 F8 09
	stz $82E2.w,X		; 9E E2 82
	sbc $8F.b,X		; F5 8F
	rti		; 40

	sta $1C6EBB.l,X		; 9F BB 6E 1C
	sed		; F8
	ora $075C3B.l		; 0F 3B 5C 07
	pha		; 48
	ora [$58.b],Y		; 17 58
	and $FCA803.l		; 2F 03 A8 FC
	and $4C.b,S		; 23 4C
	inc $F2.b,X		; F6 F2
	.db $42, $E8		; 42 E8
	ora $A071.w		; 0D 71 A0
	ora #$AC.b		; 09 AC
	sbc $FF827F.l,X		; FF 7F 82 FF
	cpy #$60DD.w		; C0 DD 60
	inc $31.b		; E6 31
	and ($01.b)		; 32 01
	rol $734D.w,X		; 3E 4D 73
	lsr $FF.b,X		; 56 FF
	sbc $6D.b,X		; F5 6D
	ror $5D.b		; 66 5D
	lsr A		; 4A
	and $3C02.w,X		; 3D 02 3C
	trb $3A.b		; 14 3A
	jmp $F082.w		; 4C 82 F0
	asl A		; 0A
	asl $E2.b,X		; 16 E2
	jmp.w [$FF00]		; DC 00 FF
	lda $94C01C.l,X		; BF 1C C0 94
	rti		; 40

	bit $98.b		; 24 98
	jsl $CC10D8.l		; 22 D8 10 CC
	and ($CA.b,S),Y		; 33 CA
	sbc $DA.b,S		; E3 DA
	bit $85.b,X		; 34 85
	xce		; FB
	ror A		; 6A
	sbc #$2C.b		; E9 2C
	stz $0671.w		; 9C 71 06
	and ($00.b)		; 32 00
	and $96.b		; 25 96
	lda ($38.b,X)		; A1 38
	tas		; 1B
	bmi  -1.b		; 30 FF
	eor $0B221B.l,X		; 5F 1B 22 0B
	rol A		; 2A
	ora ($4C.b,S),Y		; 13 4C
	ora $08.b,X		; 15 08
	and $C8.b,X		; 35 C8
	eor $C6.b,X		; 55 C6
	tad		; 5B
	bit $C2.b		; 24 C2
	eor #$80.b		; 49 80
	sbc $62FCDE.l		; EF DE FC 62
	brk $42.b		; 00 42
	brk $A2.b		; 00 A2
	jsr ($91F1.w,X)		; FC F1 91
	sbc $B0BD03.l,X		; FF 03 BD B0
	lda $AF22.w,X		; BD 22 AF
	eor ($DF.b)		; 52 DF
	brk $DF.b		; 00 DF
	jsr $FEFF.w		; 20 FF FE
	brk $54.b		; 00 54
	trb $EA.b		; 14 EA
	inc $C650.w,X		; FE 50 C6
	sbc $9C.b,S		; E3 9C
	adc $62.b,X		; 75 62
	adc $FE2C.w,X		; 7D 2C FE
	and $3CBA.w,Y		; 39 BA 3C
	bra  17.b		; 80 11
	phb		; 8B
	jmp $9877.w		; 4C 77 98
	sed		; F8
	eor $9C73FC.l,X		; 5F FC 73 9C
	and $9857E8.l		; 2F E8 57 98
	pld		; 2B
	sty $8867.w		; 8C 67 88
	dey		; 88
	ldx #$A92A.w		; A2 2A A9
	jsr ($1CD0.w,X)		; FC D0 1C
	sta $E633.w		; 8D 33 E6
	ldx #$5106.w		; A2 06 51
	asl A		; 0A
	lda $BCD94D.l		; AF 4D D9 BC
	and $5000.w,Y		; 39 00 50
	tsb $7FFE.w		; 0C FE 7F
	bra  -2.b		; 80 FE
	ora ($FC.b,X)		; 01 FC
	inc $FF0F.w,X		; FE 0F FF
	bra -96.b		; 80 A0
	ora ($05.b,S),Y		; 13 05
	asl A		; 0A
	rol A		; 2A
	and [$FE.b],Y		; 37 FE
	rol $0A37.w		; 2E 37 0A
	phd		; 0B
	ora ($23.b,S),Y		; 13 23
	ora $10E96B.l		; 0F 6B E9 10
	ora $0E.b		; 05 0E
	inc $1E7A.w		; EE 7A 1E
	cmp ($74.b)		; D2 74
	phy		; 5A
	sbc ($FF.b,X)		; E1 FF
	adc [$5A.b],Y		; 77 5A
	sbc $AA57FF.l,X		; FF FF 57 AA
	and $E8.b,X		; 35 E8
	ora $1FC8.w,X		; 1D C8 1F
	cmp #$7F.b		; C9 7F
	cmp #$BF.b		; C9 BF
	bit #$F4.b		; 89 F4
	tsb $0085.w		; 0C 85 00
	asl $15AB.w,X		; 1E AB 15
	ldy #$37A9.w		; A0 A9 37
	brk $36.b		; 00 36
	inc $1E76.w,X		; FE 76 1E
	cmp $7844.w		; CD 44 78
	ora $F0FFFF.l		; 0F FF FF F0
	sed		; F8
	phd		; 0B
	inc $E95B.w		; EE 5B E9
	eor [$AF.b],Y		; 57 AF
	ora $B8.b,X		; 15 B8
	ora ($F9.b,S),Y		; 13 F9
	sta ($FE.b)		; 92 FE
	sta ($FD.b,S),Y		; 93 FD
	sta ($2F.b),Y		; 91 2F
	sbc $A03031.l,X		; FF 31 30 A0
	brk $A8.b		; 00 A8
	brk $E8.b		; 00 E8
	brk $EC.b		; 00 EC
	brk $6C.b		; 00 6C
	inc $1D6E.w,X		; FE 6E 1D
	stx $11.b		; 86 11
	sbc $FEBF40.l,X		; FF 40 BF FE
	ldy #$FEDE.w		; A0 DE FE
	eor $CE70FD.l,X		; 5F FD 70 CE
	beq  44.b		; F0 2C
	bra 117.b		; 80 75
	tsa		; 3B
	inx		; E8
	bpl -109.b		; 10 93
	cli		; 58
	phd		; 0B
	sbc ($70.b,X)		; E1 70
	ora ($00.b),Y		; 11 00
	eor $FF0F98.l,X		; 5F 98 0F FF
	and $9C73C8.l		; 2F C8 73 9C
	sta $947348.l		; 8F 48 73 94
	ora [$C8.b]		; 07 C8
	tad		; 5B
	stz $882F.w		; 9C 2F 88
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	bra -86.b		; 80 AA
	jsr ($F89C.w,X)		; FC 9C F8
	jsr ($5A67.w,X)		; FC 67 5A
	cmp $CE275B.l,X		; DF 5B 27 CE
	inc $40FF.w,X		; FE FF 40
	eor $42F400.l		; 4F 00 F4 42
	clv		; B8
	jmp $44B8.w		; 4C B8 44
	bcs  92.b		; B0 5C
	bcs -104.b		; B0 98
	bvs -120.b		; 70 88
	rts		; 60

	tya		; 98
	eor [$E1.b],Y		; 57 E1
	rts		; 60

	clv		; B8
	rts		; 60

	asl $60.b		; 06 60
	stp		; DB
	lsr $DCDA.w,X		; 5E DA DC
	adc ($FE.b)		; 72 FE
	sbc ($1C.b,S),Y		; F3 1C
	sbc $985707.l,X		; FF 07 57 98
	cmp ($1C.b,S),Y		; D3 1C
	ora [$98.b],Y		; 17 98
	sbc [$38.b],Y		; F7 38
	ora ($9C.b,S),Y		; 13 9C
	lda [$38.b],Y		; B7 38
	sed		; F8
	and $FD.b		; 25 FD
	plp		; 28
	ldx $9224.w		; AE 24 92
	jsr ($7426.w,X)		; FC 26 74
	bra  89.b		; 80 59
	cop $06.b		; 02 06
	ora $02.b		; 05 02
	phk		; 4B
	plx		; FA
	ora $0A.b		; 05 0A
	ora $FCAA.w		; 0D AA FC
	ldy #$20.b		; A0 20
	sep #$80		; E2 80
	eor ($18.b)		; 52 18
	cpy #$38.b		; C0 38
	sbc $70C041.l,X		; FF 41 C0 70
	cpy #$30.b		; C0 30
	bra -80.b		; 80 B0
	bra -32.b		; 80 E0
	cpy #$60.b		; C0 60
	pea $7D88.w		; F4 88 7D
	ora $6206.w,X		; 1D 06 62
	nop		; EA
	plx		; FA
	nop		; EA
	adc [$B8.b],Y		; 77 B8
	ldy $B837.w		; AC 37 B8
	stz $5002.w		; 9C 02 50
	jsr ($F2F6.w,X)		; FC F6 F2
	tay		; A8
	inc $7C3A.w,X		; FE 3A 7C
	rti		; 40

	eor $AEFA.w,X		; 5D FA AE
	inc $0CF8.w,X		; FE F8 0C
	brk $F8.b		; 00 F8
	ora $7E8020.l		; 0F 20 80 7E
	sbc ($C0.b,X)		; E1 C0
	.db $82, $A6, $FE		; 82 A6 FE
	rts		; 60

	cmp $FAF3.w,Y		; D9 F3 FA
	ldx #$0A.b		; A2 0A
	inc $60FE.w,X		; FE FE 60
	sty $0F.b,X		; 94 0F
	pld		; 2B
	adc ($9F.b)		; 72 9F
	eor [$90.b],Y		; 57 90
	bvc  15.b		; 50 0F
	sbc ($7F.b),Y		; F1 7F
	rol A		; 2A
	sbc [$26.b]		; E7 26
	sbc $3C.b,S		; E3 3C
	eor [$D8.b],Y		; 57 D8
	lda [$38.b]		; A7 38
	eor ($1C.b,S),Y		; 53 1C
	cmp [$18.b]		; C7 18
	phk		; 4B
	bra -126.b		; 80 82
	inc $7EA0.w,X		; FE A0 7E
	sbc $7C8C.w,X		; FD 8C 7C
	eor $95.b,X		; 55 95
	ply		; 7A
	ora $1B.b		; 05 1B
	mvn $58,$24		; 54 24 58
	ora #$FE.b		; 09 FE
	jsr ($F463.w,X)		; FC 63 F4
	sty $A4.b		; 84 A4
	sei		; 78
	lda $65.b,S		; A3 65
	ora $8A.b		; 05 8A
	ldy #$D0.b		; A0 D0
	tsb $808A.w		; 0C 8A 80
	sed		; F8
	ora [$AC.b],Y		; 17 AC
	sbc ($82.b)		; F2 82
	jsr ($FCAB.w,X)		; FC AB FC
	bit $9807.w		; 2C 07 98
	lda ($3C.b,S),Y		; B3 3C
	eor $1A.b,X		; 55 1A
	tsb $FE.b		; 04 FE
	jsr $0AEA.w		; 20 EA 0A
	ora ($A0.b)		; 12 A0
	sbc ($46.b,S),Y		; F3 46
	sbc ($22.b),Y		; F1 22
	bvc   9.b		; 50 09
	inc $F044.w,X		; FE 44 F0
	phd		; 0B
	inc $3AA9.w,X		; FE A9 3A
	sty $F8FE.w		; 8C FE F8
	tsb $A8E0.w		; 0C E0 A8
	asl $FE00.w		; 0E 00 FE
	jsr ($09F8.w,X)		; FC F8 09
	inc $0DF8.w,X		; FE F8 0D
	xba		; EB
	bit $FC.b,X		; 34 FC
	lda $34AB08.l,X		; BF 08 AB 34
	and [$38.b]		; 27 38
	sbc [$78.b]		; E7 78
	pld		; 2B
	bit $67.b,X		; 34 67
	sei		; 78
	and $AA9230.l		; 2F 30 92 AA
	iny		; C8
	stz $D242.w,X		; 9E 42 D2
	jsr ($FCDA.w,X)		; FC DA FC
	cpx #$78.b		; E0 78
	ora #$BC.b		; 09 BC
	jmp ($78E0.w,X)		; 7C E0 78
	ora #$AA.b		; 09 AA
	cop $8A.b		; 02 8A
	jsr ($78E0.w,X)		; FC E0 78
	ora #$8A.b		; 09 8A
	jsr ($78E0.w,X)		; FC E0 78
	asl A		; 0A
	sta $800EF8.l		; 8F F8 0E 80
	sed		; F8
	ora $0C0088.l		; 0F 88 00 0C
	sty $7C88.w		; 8C 88 7C
	adc $120070.l		; 6F 70 00 12
	jsr ($F2F6.w,X)		; FC F6 F2
	dey		; 88
	inc $49FC.w,X		; FE FC 49
	ldx #$FA.b		; A2 FA
	.db $62, $62, $FC		; 62 62 FC
	bit $E2.b		; 24 E2
	sbc ($0E.b,S),Y		; F3 0E
	beq  26.b		; F0 1A
	bit $FE.b,X		; 34 FE
	sed		; F8
	asl A		; 0A
	and ($3C.b,S),Y		; 33 3C
	cpy $E3FC.w		; CC FC E3
	jmp ($30B7.w,X)		; 7C B7 30
	tay		; A8
	clv		; B8
	tsx		; BA
	lda ($3C.b,S),Y		; B3 3C
	ldy $FEC2.w,X		; BC C2 FE
	cmp $0FACE2.l		; CF E2 AC 0F
	brk $F3.b		; 00 F3
	dec $BE.b		; C6 BE
	sed		; F8
	ora #$C0.b		; 09 C0
	sed		; F8
	ora $377877.l		; 0F 77 78 37
	sec		; 38
	sed		; F8
	lda [$C2.b],Y		; B7 C2
	jsr ($276C.w,X)		; FC 6C 27
	sec		; 38
	adc ($7D.b)		; 72 7D
	lda $3A.b,X		; B5 3A
	sty $FE.b		; 84 FE
	bcc -54.b		; 90 CA
	txa		; 8A
	sed		; F8
	sbc $3A60.w,X		; FD 60 3A
	and [$C1.b]		; 27 C1
	jsr ($1A15.w,X)		; FC 15 1A
	cpy $F8.b		; C4 F8
	phd		; 0B
	sta [$38.b]		; 87 38
	lda $CB00.w		; AD 00 CB
	stz $88.b,X		; 74 88
	phk		; 4B
	jsr ($F8E7.w,X)		; FC E7 F8
	ldy $FAF0.w,X		; BC F0 FA
	sta ($B7.b)		; 92 B7
	dey		; 88
	sbc $04.b		; E5 04
	cpx #$09.b		; E0 09
	jsr ($0048.w,X)		; FC 48 00
	phy		; 5A
	sbc $0C00FF.l,X		; FF FF 00 0C
	ora $17.b		; 05 17
	tsb $1A.b		; 04 1A
	trb $0C.b		; 14 0C
	ora ($15.b,S),Y		; 13 15
	asl $180E.w		; 0E 0E 18
	ora #$16.b		; 09 16
	ora ($3A.b),Y		; 11 3A
	jsr ($600E.w,X)		; FC 0E 60
	txa		; 8A
	inc $0BF8.w,X		; FE F8 0B
	cmp ($B7.b)		; D2 B7
	dec $66.b		; C6 66
	ora [$48.b]		; 07 48
	sta $82BF6F.l		; 8F 6F BF 82
	bvs  87.b		; 70 57
	cli		; 58
	tsa		; 3B
	bit $17.b,X		; 34 17
	clc		; 18
	ldy $22.b		; A4 22
	cli		; 58
	eor ($C2.b)		; 52 C2
	.db $82, $3E, $7E		; 82 3E 7E
	cpx $CA62.w		; EC 62 CA
	inc $5C66.w,X		; FE 66 5C
	sbc $3013F8.l,X		; FF F8 13 30
	cmp $FCEF18.l,X		; DF 18 EF FC
	lda $F70CFE.l		; AF FE 0C F7
	cop $FB.b		; 02 FB
	sty $F1.b		; 84 F1
	stx $8CF3.w		; 8E F3 8C
	sbc [$62.b]		; E7 62
	ldy #$09.b		; A0 09
	sbc $5ABCE3.l,X		; FF E3 BC 5A
	clc		; 18
	brk $58.b		; 00 58
	cop $38.b		; 02 38
	.db $82, $5B, $C3		; 82 5B C3
	phy		; 5A
	cpy $FE.b		; C4 FE
.ACCU 16
.INDEX 16
	rep #$BF		; C2 BF
	cmp $9A.b,X		; D5 9A
	.db $82, $9C, $84		; 82 9C 84
	sbc ($00.b,X)		; E1 00
	adc ($8A.b,X)		; 61 8A
	sbc ($21.b,X)		; E1 21
	plx		; FA
	cmp $35B24C.l		; CF 4C B2 35
	cpx $F549.w		; EC 49 F5
	bpl  24.b		; 10 18
	inc $D0C0.w,X		; FE C0 D0
	ora $FF279A.l		; 0F 9A 27 FF
	sbc $F880.w,X		; FD 80 F8
	ora $FFE791.l		; 0F 91 E7 FF
	ora $A2CF99.l,X		; 1F 99 CF A2
	dec $DE32.w		; CE 32 DE
	bit $9C.b		; 24 9C
	mvp $68,$9C		; 44 9C 68
	clv		; B8
	pha		; 48
	clv		; B8
	tax		; AA
	jsl $71308E.l		; 22 8E 30 71
	eor ($7E.b,S),Y		; 53 7E
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	nop		; EA
	eor [$4B.b]		; 47 4B
	inc $4AA8.w,X		; FE A8 4A
	lda $A0.b		; A5 A0
	jsr ($5040.w,X)		; FC 40 50
	bpl -103.b		; 10 99
	jmp.w [$FFFE]		; DC FE FF
	cop $28.b		; 02 28
	ora $FFAA.w		; 0D AA FF
	stx $65.b		; 86 65
	and $F8.b,X		; 35 F8
	sbc $C0.b,S		; E3 C0
	jsr $780D.w		; 20 0D 78
	sbc $B8.b,S		; E3 B8
	bpl -80.b		; 10 B0
	bvc 112.b		; 50 70
	bpl 112.b		; 10 70
	eor ($8D.b,X)		; 41 8D
	jsr $FE60.w		; 20 60 FE
	eor [$41.b],Y		; 57 41
	brk $EB.b		; 00 EB
	jmp ($A0F6.w,X)		; 7C F6 A0
	nop		; EA
	rol A		; 2A
	pea $FD8A.w		; F4 8A FD
	eor ($E6.b),Y		; 51 E6
	jsr $1048.w		; 20 48 10
	php		; 08
	clc		; 18
	inc $29FC.w,X		; FE FC 29
	lda [$BC.b],Y		; B7 BC
	clv		; B8
	ora ($A8.b)		; 12 A8
	tax		; AA
	txa		; 8A
	brk $E8.b		; 00 E8
	ora $C462.w,Y		; 19 62 C4
	brk $E8.b		; 00 E8
	inc A		; 1A
	eor $60E0E6.l		; 4F E6 E0 60
	asl $D1.b,X		; 16 D1
	dey		; 88
	asl A		; 0A
	phd		; 0B
	brk $22.b		; 00 22
	bne  18.b		; D0 12
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	dec $FF00.w,X		; DE 00 FF
	sed		; F8
	phd		; 0B
	php		; 08
	ora $F8F013.l		; 0F 13 F0 F8
	tsb $F8FF.w		; 0C FF F8
	ora $8080C0.l		; 0F C0 80 80
	sbc $300DF8.l		; EF F8 0D 30
	tsb $FD40.w		; 0C 40 FD
	ora ($01.b,X)		; 01 01
	sbc $0202.w,X		; FD 02 02
	ora $00FDFE.l		; 0F FE FD 00
	cop $04.b		; 02 04
	tsb $FD.b		; 04 FD
	cmp $10F8.w		; CD F8 10
	phb		; 8B
	trb $0F.b		; 14 0F
	bpl  23.b		; 10 17
	cmp $F7.b,S		; C3 F7
	clc		; 18
	ora [$08.b]		; 07 08
	inc $202F.w,X		; FE 2F 20
	and $E03F10.l,X		; 3F 10 3F E0
	sed		; F8
	bpl  -8.b		; 10 F8
	trb $FF.b		; 14 FF
	ora $B41864.l,X		; 1F 64 18 B4
	bra -44.b		; 80 D4
	.db $42, $F2		; 42 F2
	bit $F2.b		; 24 F2
	brk $A2.b		; 00 A2
	eor ($E1.b,X)		; 41 E1
	.db $42, $00		; 42 00
	nop		; EA
	inc $AA9D.w		; EE 9D AA
	jsr $F879.w		; 20 79 F8
	trb $F8FF.w		; 1C FF F8
	phd		; 0B
	sec		; 38
	inc $2090.w		; EE 90 20
	inc $0BF8.w,X		; FE F8 0B
	plp		; 28
	bmi -32.b		; 30 E0
	sed		; F8
	ora $FE0403.l		; 0F 03 04 FE
	ora [$01.b]		; 07 01
	.db $82, $FE, $5D		; 82 FE 5D
	inc $5903.w,X		; FE 03 59
	rti		; 40

	sbc ($FF.b,X)		; E1 FF
	sbc $E1FE54.l,X		; FF 54 FE E1
	inc $C120.w,X		; FE 20 C1
	tsb $44.b		; 04 44
	brk $FE.b		; 00 FE
	sed		; F8
	inc $40.b,X		; F6 40
	asl $FF.b,X		; 16 FF
	.db $82, $FE, $0D		; 82 FE 0D
	sbc $FE40.w,X		; FD 40 FE
	inc $0450.w,X		; FE 50 04
	sbc $0065.w,X		; FD 65 00
	sed		; F8
	asl $AAA0.w		; 0E A0 AA
	eor $15.b		; 45 15
	jsr ($FAF1.w,X)		; FC F1 FA
	sbc ($FF.b),Y		; F1 FF
	tax		; AA
	jsr ($F1F6.w,X)		; FC F6 F1
	inc $A1FD.w,X		; FE FD A1
	plx		; FA
	sbc #$CF.b		; E9 CF
	rti		; 40

	inc $BCFC.w,X		; FE FC BC
	jsr ($F8C1.w,X)		; FC C1 F8
	bpl   0.b		; 10 00
	asl $00.b		; 06 00
	sbc $060F1F.l,X		; FF 1F 0F 06
	tsb $04.b		; 04 04
	ora #$01.b		; 09 01
	ora $0C01.w		; 0D 01 0C
	brk $08.b		; 00 08
	cop $10.b		; 02 10
	ora [$3E.b],Y		; 17 3E
	inc $09F0.w,X		; FE F0 09
	brk $0B.b		; 00 0B
	brk $1E.b		; 00 1E
	inc $001F.w,X		; FE 1F 00
	ora $2800.w,X		; 1D 00 28
	sbc $9C00FF.l,X		; FF FF 00 9C
	brk $EE.b		; 00 EE
	tsb $FCF6.w		; 0C F6 FC
	asl A		; 0A
	sei		; 78
	eor $5C.b		; 45 5C
	and ($BC.b,X)		; 21 BC
	eor ($FC.b,X)		; 41 FC
	brk $10.b		; 00 10
	and $F2F0FC.l,X		; 3F FC F0 F2
	ldx $86.b		; A6 86
	brk $A3.b		; 00 A3
	brk $43.b		; 00 43
	ldy #$1F.b		; A0 1F
	sty $F6.b		; 84 F6
	sbc $2120F8.l,X		; FF F8 20 21
	brk $23.b		; 00 23
	brk $27.b		; 00 27
	ora $2FFE7F.l		; 0F 7F FE 2F
	rti		; 40

	adc $6C00FE.l		; 6F FE 00 6C
	.db $42, $00		; 42 00
	mvp $48,$00		; 44 00 48
	bit $FEFE.w,X		; 3C FE FE
	bvc   0.b		; 50 00
	bcc  -2.b		; 90 FE
	sta ($00.b,S),Y		; 93 00
	clc		; 18
	ora $1B.b,S		; 03 1B
	sbc $27242F.l,X		; FF 2F 24 27
	php		; 08
	and $044308.l		; 2F 08 43 04
	eor [$08.b]		; 47 08
	eor [$80.b]		; 47 80
	sta [$18.b],Y		; 97 18
	rol $0FF0.w,X		; 3E F0 0F
	cpy #$E1.b		; C0 E1
	phk		; 4B
	mvp $20,$E0		; 44 E0 20
	ldy #$FC.b		; A0 FC
	bvc -48.b		; 50 D0
	lda $904061.l		; AF 61 40 90
	pha		; 48
	iny		; C8
	jsr $F0E6.w		; 20 E6 F0
	ora #$D8.b		; 09 D8
	sbc ($10.b)		; F2 10
	bpl   8.b		; 10 08
	php		; 08
	bra  83.b		; 80 53
	sbc $14FE.w,X		; FD FE 14
	php		; 08
	bpl  -2.b		; 10 FE
	sec		; 38
	cmp $FF.b,S		; C3 FF
	eor [$F0.b]		; 47 F0
	bpl  47.b		; 10 2F
	sec		; 38
	tsb $33.b		; 04 33
	tsb $7F.b		; 04 7F
	lsr A		; 4A
	and $101F22.l,X		; 3F 22 1F 10
	and $80.b,S		; 23 80
	ora $CE0708.l		; 0F 08 07 CE
	cmp $FF82.w,X		; DD 82 FF
	lda $09F8FF.l		; AF FF F8 09
	and ($82.b),Y		; 31 82
	and $794A.w,Y		; 39 4A 79
	ldy #$CD.b		; A0 CD
	bit $E9.b		; 24 E9
	clc		; 18
	sbc ($10.b),Y		; F1 10
	stz $F1.b,X		; 74 F1
	ora $45.b		; 05 45
	tsb $F1.b		; 04 F1
	bra -68.b		; 80 BC
	sbc ($DA.b),Y		; F1 DA
	sbc $8A0AF8.l,X		; FF F8 0A 8A
	sbc ($FE.b)		; F2 FE
	and $58.b		; 25 58
	ldx $A0F4.w,Y		; BE F4 A0
	sed		; F8
	ora $00FB8A.l		; 0F 8A FB 00
	tsb $F333.w		; 0C 33 F3
	sta $AA.b		; 85 AA
	sbc ($F0.b),Y		; F1 F0
	ora ($7C.b)		; 12 7C
	sbc ($FE.b)		; F2 FE
	ora $06.b,S		; 03 06
	sbc ($FE.b),Y		; F1 FE
	jsr ($F466.w,X)		; FC 66 F4
	pea $0463.w		; F4 63 04
	pea $C0FE.w		; F4 FE C0
	ora ($C0.b,X)		; 01 C0
	ora $80.b,S		; 03 80
	.db $42, $FE		; 42 FE
	mvp $55,$55		; 44 55 55
	cli		; 58
	pea $E887.w		; F4 87 E8
	plp		; 28
	tya		; 98
	sed		; F8
	ora $F8F200.l		; 0F 00 F2 F8
	nop		; EA
	stx $43FD.w		; 8E FD 43
	sed		; F8
	asl $FFFE.w		; 0E FE FF
	sbc $F840AF.l,X		; FF AF 40 F8
	bpl  31.b		; 10 1F
	tsb $1F.b		; 04 1F
	brk $13.b		; 00 13
	brk $11.b		; 00 11
	jsr $2031.w		; 20 31 20
	bmi -119.b		; 30 89
	nop		; EA
	adc $F2A0FE.l,X		; 7F FE A0 F2
	bit $00.b		; 24 00
	jsl $004200.l		; 22 00 42 00
	eor ($FE.b,X)		; 41 FE
	cop $FE.b		; 02 FE
	tsb $FFFA.w		; 0C FA FF
	sta [$04.b]		; 87 04
	sbc ($19.b)		; F2 19
	sbc ($18.b,S),Y		; F3 18
	sbc $F100.w,Y		; F9 00 F1
	trb $C1.b		; 14 C1
	asl $F1.b		; 06 F1
	ldx $23.b		; A6 23
	ldx $0005.w,Y		; BE 05 00
	ora $C60F.w		; 0D 0F C6
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	eor ($80.b),Y		; 51 80
	ldy $F8.b,X		; B4 F8
	tsb $FF80.w		; 0C 80 FF
	txa		; 8A
	sed		; F8
	phd		; 0B
	and ($FE.b,S),Y		; 33 FE
	sta $6003FE.l,X		; 9F FE 03 60
	tsb $67.b		; 04 67
	cop $43.b		; 02 43
	lda $01.b,X		; B5 01
	eor ($03.b,X)		; 41 03
	.db $42, $73		; 42 73
	ora $3F.b,S		; 03 3F
	ora $88009C.l,X		; 1F 9C 00 88
	brk $84.b		; 00 84
	brk $82.b		; 00 82
	inc $0081.w,X		; FE 81 00
	beq  -2.b		; F0 FE
	sbc $0BE8BA.l,X		; FF BA E8 0B
	cld		; D8
	trb $07D8.w		; 1C D8 07
	dec $12.b,X		; D6 12
	dec $DF01.w,X		; DE 01 DF
	brk $1F.b		; 00 1F
	cpy #$2D.b		; C0 2D
	sty $3B.b,X		; 94 3B
	asl $D3.b,X		; 16 D3
	xba		; EB
	and #$C9.b		; 29 C9
	sbc #$78.b		; E9 78
	cpx #$E0.b		; E0 E0
	sbc ($D4.b),Y		; F1 D4
	ora ($B7.b,S),Y		; 13 B7
	asl $E9.b		; 06 E9
	plx		; FA
	sbc #$E4.b		; E9 E4
	sbc ($40.b),Y		; F1 40
	ldy #$E0.b		; A0 E0
	ldy $FFE5.w		; AC E5 FF
	jmp $10FEA0.l		; 5C A0 FE 10
	brk $31.b		; 00 31
	and ($01.b)		; 32 01
	rol $734D.w,X		; 3E 4D 73
	sbc $6D5683.l,X		; FF 83 56 6D
	ror $5D.b		; 66 5D
	lsr A		; 4A
	and $3C02.w,X		; 3D 02 3C
	trb $3A.b		; 14 3A
	cpy $F4D5.w		; CC D5 F4
	sbc $40FF14.l,X		; FF 14 FF 40
	jmp.w [$1C00]		; DC 00 1C
	cpy #$94.b		; C0 94
	rti		; 40

	bit $98.b		; 24 98
	jsl $3F10D8.l		; 22 D8 10 3F
	pea $33CC.w		; F4 CC 33
	dex		; CA
	sbc $DA.b,S		; E3 DA
	bit $00.b,X		; 34 00
	inc $7C2C.w,X		; FE 2C 7C
	sbc #$26.b		; E9 26
	brk $E3.b		; 00 E3
	adc ($32.b),Y		; 71 32
	brk $25.b		; 00 25
	bit $08.b,X		; 34 08
	clc		; 18
	brk $FE.b		; 00 FE
	trb $1C.b		; 14 1C
	ply		; 7A
	ora $04FE.w,X		; 1D FE 04
	tsb $0C00.w		; 0C 00 0C
	ror A		; 6A
	pea $E0BC.w		; F4 BC E0
	ora #$0C.b		; 09 0C
	ora $FE938E.l,X		; 1F 8E 93 FE
	bpl  19.b		; 10 13
	ora ($FE.b)		; 12 FE
	brk $11.b		; 00 11
	inc $FF94.w,X		; FE 94 FF
	cpx #$F4.b		; E0 F4
	inc $FE22.w,X		; FE 22 FE
	.db $42, $B8		; 42 B8
	jmp $44B8.w		; 4C B8 44
	bcs  -1.b		; B0 FF
	and $5C.b,S		; 23 5C
	bcs -104.b		; B0 98
	bvs -120.b		; 70 88
	rts		; 60

	tya		; 98
	rts		; 60

	clv		; B8
	rts		; 60

	asl $C2.b		; 06 C2
	dex		; CA
	bcs -71.b		; B0 B9
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	lda [$F8.b]		; A7 F8
	asl $830A.w		; 0E 0A 83
	mvp $FF,$FE		; 44 FE FF
	php		; 08
	tsb $60FE.w		; 0C FE 60
	inc $FE.b,X		; F6 FE
	cmp [$E1.b],Y		; D7 E1
	ldy #$0A.b		; A0 0A
	ora $FE02.w		; 0D 02 FE
	sed		; F8
	tsb $F060.w		; 0C 60 F0
	ora $FE8020.l		; 0F 20 80 FE
	rts		; 60

	bra  88.b		; 80 58
	bmi -32.b		; 30 E0
	inc $B060.w,X		; FE 60 B0
	sbc ($FA.b,S),Y		; F3 FA
	inc $E0FE.w,X		; FE FE E0
	.db $42, $8C		; 42 8C
	asl $FE.b,X		; 16 FE
	bpl  -1.b		; 10 FF
	jsr $AAAB.w		; 20 AB AA
	sbc $E44040.l,X		; FF 40 40 E4
	bne  15.b		; D0 0F
	sbc $6B26F8.l,X		; FF F8 26 6B
	sbc #$BC.b		; E9 BC
	phx		; DA
	inc $00FE.w,X		; FE FE 00
	sed		; F8
	ora $C1FEB2.l		; 0F B2 FE C1
	cmp $F8FE.w,X		; DD FE F8
	ora #$7A.b		; 09 7A
	inc $09F8.w,X		; FE F8 09
	sbc $023FF8.l,X		; FF F8 3F 02
	xce		; FB
	tsb $FD.b		; 04 FD
	ora ($FF.b,X)		; 01 FF
	phd		; 0B
	sbc $FE02.w,X		; FD 02 FE
	trb $CC.b		; 14 CC
	ror $08.b,X		; 76 08
	ldx $7E10.w		; AE 10 7E
	bne -124.b		; D0 84
	jsr ($09C7.w,X)		; FC C7 09
	sei		; 78
	and $00.b,S		; 23 00
	inc $FE.b		; E6 FE
	rol $00.b		; 26 00
	ora $FE.b		; 05 FE
	lda $F01015.l		; AF 15 10 F0
	ldy #$F0.b		; A0 F0
	rti		; 40

	bvc  32.b		; 50 20
	bpl  40.b		; 10 28
	sec		; 38
	bpl  12.b		; 10 0C
	sbc ($70.b),Y		; F1 70
	jmp ($E28F.w,X)		; 7C 8F E2
	inc $00A8.w,X		; FE A8 00
	pla		; 68
	lsr $05.b,X		; 56 05
	asl A		; 0A
	rol A		; 2A
	and [$F8.b],Y		; 37 F8
	lda $372EFE.l,X		; BF FE 2E 37
	asl A		; 0A
	phd		; 0B
	ora ($23.b,S),Y		; 13 23
	ora $1E1510.l		; 0F 10 15 1E
	bvs -11.b		; 70 F5
	sbc $74FD68.l,X		; FF 68 FD 74
	jmp ($54F1.w,X)		; 7C F1 54
	sbc ($77.b)		; F2 77
	phy		; 5A
	eor [$AA.b],Y		; 57 AA
	and $E8.b,X		; 35 E8
	ora $1FC8.w,X		; 1D C8 1F
	cmp #$FF.b		; C9 FF
	and $BFC97F.l,X		; 3F 7F C9 BF
	bit #$F4.b		; 89 F4
	tsb $0085.w		; 0C 85 00
	ora $00.b,X		; 15 00
	ora [$00.b],Y		; 17 00
	and [$00.b],Y		; 37 00
	rol $D6.b,X		; 36 D6
	sbc #$FE.b		; E9 FE
	ror $4F.b,X		; 76 4F
.INDEX 8
	sep #$53		; E2 53
	sbc ($8A.b),Y		; F1 8A
	asl $88FE.w		; 0E FE 88
	asl $D548.w		; 0E 48 D5
	php		; 08
	inc $8182.w,X		; FE 82 81
	inc $B8FD.w,X		; FE FD B8
	sbc $AE.b,S		; E3 AE
	sbc $3F.b,S		; E3 3F
	stz $0A03.w		; 9C 03 0A
	ora #$0A.b		; 09 0A
	asl $05.b		; 06 05
	cop $93.b		; 02 93
	ora $0012.w		; 0D 12 00
	jsl $14FEC1.l		; 22 C1 FE 14
	stx $7C.b		; 86 7C
	sbc $61FF98.l,X		; FF 98 FF 61
	rti		; 40

	clc		; 18
	cpy #$38.b		; C0 38
	cpy #$70.b		; C0 70
	cpy #$30.b		; C0 30
	bra -80.b		; 80 B0
	eor [$C0.b],Y		; 57 C0
	rts		; 60

	pha		; 48
	ora $F4.b,S		; 03 F4
	brk $FE.b		; 00 FE
	bmi   0.b		; 30 00
	sei		; 78
	bne -111.b		; D0 91
	inc $0880.w,X		; FE 80 08
	tsb $FE04.w		; 0C 04 FE
	sta ($0A.b,S),Y		; 93 0A
	cmp ($08.b,S),Y		; D3 08
	sbc $0BE000.l,X		; FF 00 E0 0B
	brk $FB.b		; 00 FB
	tsb $AEF1.w		; 0C F1 AE
	dec A		; 3A
	tax		; AA
	plx		; FA
	sbc #$05.b		; E9 05
	brk $D9.b		; 00 D9
	wai		; CB
	pla		; 68
	sbc [$FE.b]		; E7 FE
	sbc $FC32.w,X		; FD 32 FC
	cpy #$80.b		; C0 80
	and #$A8.b		; 29 A8
	inc $F280.w,X		; FE 80 F2
	tsb $FEF2.w		; 0C F2 FE
	bra -16.b		; 80 F0
	and ($90.b,S),Y		; 33 90
	cpx $FFD1.w		; EC D1 FF
	beq  -8.b		; F0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	asl A		; 0A
	pea $051A.w		; F4 1A 05
	sbc $00.b		; E5 00
	pld		; 2B
	and $3DC1BE.l,X		; 3F BE C1 3D
	.db $42, $D4		; 42 D4
	pei ($DC.b)		; D4 DC
	jsr ($001F.w,X)		; FC 1F 00
	sbc $2BFF9A.l,X		; FF 9A FF 2B
	sbc $F500F7.l,X		; FF F7 00 F5
	bmi -64.b		; 30 C0
	sty $78.b		; 84 78
	txs		; 9A
	sta [$15.b]		; 87 15
	pea $282A.w		; F4 2A 28
	txa		; 8A
	jsr ($00F0.w,X)		; FC F0 00
	stp		; DB
	phd		; 0B
	jsr ($7F00.w,X)		; FC 00 7F
	cld		; D8
	cmp #$D7.b		; C9 D7
	cmp $0DD0.w,Y		; D9 D0 0D
	cpy #$C0.b		; C0 C0
	rts		; 60

	beq  -8.b		; F0 F8
	phd		; 0B
	phd		; 0B
	brk $BE.b		; 00 BE
	cpx #$00.b		; E0 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	and ($35.b),Y		; 31 35
	adc $717D.w,Y		; 79 7D 71
	adc $7C70.w,X		; 7D 70 7C
	.db $62, $72, $CC		; 62 72 CC
	cpy $2020.w		; CC 20 20
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	tsb $3000.w		; 0C 00 30
	brk $C0.b		; 00 C0
	brk $06.b		; 00 06
	asl $09.b		; 06 09
	ora #$11.b		; 09 11
	ora ($13.b),Y		; 11 13
	ora ($22.b,S),Y		; 13 22
	jsl $0C0606.l		; 22 06 06 0C
	tsb $6060.w		; 0C 60 60
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	rts		; 60

	sbc #$ED.b		; E9 ED
	cmp ($C1.b,X)		; C1 C1
	cmp ($C1.b,X)		; C1 C1
	.db $42, $43		; 42 43
	mvp $18,$46		; 44 46 18
	trb $7060.w		; 1C 60 70
	clc		; 18
	brk $12.b		; 00 12
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $2121.w		; 0E 21 21
	eor ($41.b,X)		; 41 41
	.db $42, $43		; 42 43
	dey		; 88
	sty $9890.w		; 8C 90 98
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3C.b		; 00 3C
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	clc		; 18
	dec A		; 3A
	and $B0BDB1.l,X		; 3F B1 BD B0
	ldx $BDA1.w,Y		; BE A1 BD
	jsr $1438.w		; 20 38 14
	bit $40.b,X		; 34 40
	rti		; 40

	jsr $4000.w		; 20 00 40
	brk $42.b		; 00 42
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $46.b		; 00 46
	brk $48.b		; 00 48
	brk $30.b		; 00 30
	brk $EB.b		; 00 EB
	sbc $FE0801.l,X		; FF 01 08 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	tya		; 98
	cop $08.b		; 02 08
	ora $08.b,S		; 03 08
	tsb $08.b		; 04 08
	ora $08.b		; 05 08
	asl $C3.b		; 06 C3
	inc $0708.w,X		; FE 08 07
	php		; 08
	sbc $C24802.l,X		; FF 02 48 C2
	sed		; F8
	and $0809.w		; 2D 09 08
	asl A		; 0A
	php		; 08
	phd		; 0B
	sbc $0C08DF.l,X		; FF DF 08 0C
	php		; 08
	ora $0E08.w		; 0D 08 0E
	php		; 08
	ora $081008.l		; 0F 08 10 08
	ora ($08.b),Y		; 11 08
	ora ($C2.b)		; 12 C2
	sed		; F8
	rol A		; 2A
	sbc $0813FF.l,X		; FF FF 13 08
	trb $08.b		; 14 08
	ora $08.b,X		; 15 08
	asl $08.b,X		; 16 08
	ora [$08.b],Y		; 17 08
	clc		; 18
	php		; 08
	ora $1A08.w,Y		; 19 08 1A
	php		; 08
	ora $081BFE.l		; 0F FE 1B 08
	trb $1D08.w		; 1C 08 1D
	nop		; EA
	jmp ($28F8.w,X)		; 7C F8 28
	asl $1F08.w,X		; 1E 08 1F
	php		; 08
	jsr $FFFF.w		; 20 FF FF
	php		; 08
	and ($08.b,X)		; 21 08
	jsl $082308.l		; 22 08 23 08
	bit $08.b		; 24 08
	and $08.b		; 25 08
	rol $08.b		; 26 08
	and [$08.b]		; 27 08
	plp		; 28
	sbc $08FF.w,X		; FD FF 08
	and #$C2.b		; 29 C2
	sed		; F8
	rol $2A.b		; 26 2A
	php		; 08
	pld		; 2B
	php		; 08
	bit $2D08.w		; 2C 08 2D
	php		; 08
	rol $2F08.w		; 2E 08 2F
	php		; 08
	sbc $08300F.l,X		; FF 0F 30 08
	and ($08.b),Y		; 31 08
	and ($08.b)		; 32 08
	and ($08.b,S),Y		; 33 08
	bit $08.b,X		; 34 08
	and $08.b,X		; 35 08
	rol $FE.b,X		; 36 FE
	sbc $F87EE6.l,X		; FF E6 7E F8
	bit $37.b		; 24 37
	php		; 08
	sec		; 38
	php		; 08
	and $3A08.w,Y		; 39 08 3A
	php		; 08
	tsa		; 3B
	php		; 08
	bit $3D08.w,X		; 3C 08 3D
	sbc $3E08DF.l,X		; FF DF 08 3E
	php		; 08
	and $084008.l,X		; 3F 08 40 08
	eor ($08.b,X)		; 41 08
	.db $42, $08		; 42 08
	eor $08.b,S		; 43 08
	mvp $F8,$80		; 44 80 F8
	bit $FF.b		; 24 FF
	sbc $460845.l,X		; FF 45 08 46
	php		; 08
	eor [$08.b]		; 47 08
	pha		; 48
	php		; 08
	eor #$08.b		; 49 08
	lsr A		; 4A
	php		; 08
	phk		; 4B
	php		; 08
	jmp $FF08.w		; 4C 08 FF
	xce		; FB
	eor $4E08.w		; 4D 08 4E
	php		; 08
	eor $085008.l		; 4F 08 50 08
	eor ($08.b),Y		; 51 08
	eor ($C0.b)		; 52 C0
	sed		; F8
	bit $53.b		; 24 53
	php		; 08
	mvn $FF,$FF		; 54 FF FF
	php		; 08
	eor $08.b,X		; 55 08
	lsr $08.b,X		; 56 08
	eor [$08.b],Y		; 57 08
	cli		; 58
	php		; 08
	eor $5A08.w,Y		; 59 08 5A
	php		; 08
	tad		; 5B
	php		; 08
	jmp $08BF7F.l		; 5C 7F BF 08
	eor $5E08.w,X		; 5D 08 5E
	php		; 08
	eor $C06008.l,X		; 5F 08 60 C0
	sed		; F8
	bit $61.b		; 24 61
	php		; 08
	.db $62, $08, $63		; 62 08 63
	sbc $F8F0F7.l,X		; FF F7 F0 F8
	asl A		; 0A
	stz $08.b		; 64 08
	adc $08.b		; 65 08
	ror $08.b		; 66 08
	adc [$08.b]		; 67 08
	pla		; 68
	php		; 08
	adc #$C0.b		; 69 C0
	sed		; F8
	bit $6A.b		; 24 6A
	php		; 08
	ror $6B7B.w,X		; 7E 7B 6B
	nop		; EA
	sed		; F8
	ora ($6C.b)		; 12 6C
	php		; 08
	adc $6E08.w		; 6D 08 6E
	cpy #$F8.b		; C0 F8
	bit $6F.b		; 24 6F
	inx		; E8
	sed		; F8
	asl $70.b,X		; 16 70
	php		; 08
	adc ($D5.b),Y		; 71 D5
	tax		; AA
	ror $FCE0.w		; 6E E0 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $DBF8.w,X		; FE F8 DB
	brk $FF.b		; 00 FF
	sed		; F8
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
	jsr ($0AAA.w,X)		; FC AA 0A
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	rol $F000.w		; 2E 00 F0
	brk $00.b		; 00 00
	brk $AB.b		; 00 AB
	ror A		; 6A
	brk $10.b		; 00 10
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $2FF8.w,X		; FE F8 2F
	bvc  85.b		; 50 55
	sta $C0.b,S		; 83 C0
	sed		; F8
	ror $F8A6.w,X		; 7E A6 F8
	tas		; 1B
	ldy $F8.b		; A4 F8
	and $DC.b,S		; 23 DC
	sed		; F8
	ora $F8C0.w,Y		; 19 C0 F8
	jsr $FE81.w		; 20 81 FE
	cmp ($C3.b,X)		; C1 C3
	.db $42, $F8		; 42 F8
	bit $FE89.w,X		; 3C 89 FE
	cpy #$F8.b		; C0 F8
	dec A		; 3A
	sta ($10.b),Y		; 91 10
	sta ($FE.b)		; 92 FE
	bvc 126.b		; 50 7E
	beq -111.b		; F0 91
	ldx $38F8.w,Y		; BE F8 38
	txy		; 9B
	bpl -100.b		; 10 9C
	bpl -99.b		; 10 9D
	plx		; FA
	cpy #$F8.b		; C0 F8
	sec		; 38
	lda $10.b		; A5 10
	sta $1F.b,S		; 83 1F
	ldx $10.b		; A6 10
	lda [$FA.b]		; A7 FA
	cpy #$F8.b		; C0 F8
	sec		; 38
	ldx $AF10.w		; AE 10 AF
	bpl -80.b		; 10 B0
	ldy $FA37.w,X		; BC 37 FA
	inc $3AF0.w,X		; FE F0 3A
	lda $10.b,X		; B5 10
	ldx $DE.b,Y		; B6 DE
	inx		; E8
	bit $10B9.w,X		; 3C B9 10
	tsx		; BA
	cpy #$F8.b		; C0 F8
	bit $68CF.w,X		; 3C CF 68
	beq  -2.b		; F0 FE
	stz $25E8.w		; 9C E8 25
	inc $16F8.w,X		; FE F8 16
	pei ($FE.b)		; D4 FE
	cpy #$F8.b		; C0 F8
	jsl $1B10D5.l		; 22 D5 10 1B
	jsr ($10D6.w,X)		; FC D6 10
	cmp [$E6.b],Y		; D7 E6
	sed		; F8
	trb $D8.b		; 14 D8
	inc $F8C0.w,X		; FE C0 F8
	ora ($50.b,S),Y		; 13 50
	cmp [$50.b],Y		; D7 50
	dec $FD.b,X		; D6 FD
	asl $50.b		; 06 50
	cmp $E8.b,X		; D5 E8
	sbc $DA10D9.l,X		; FF D9 10 DA
	bpl -37.b		; 10 DB
	cpy #$F8.b		; C0 F8
	trb $DC.b		; 14 DC
	inc $DFBF.w,X		; FE BF DF
	cpy #$F8.b		; C0 F8
	trb $DB.b		; 14 DB
	bvc -38.b		; 50 DA
	bvc -39.b		; 50 D9
	inx		; E8
	sbc $DE1130.l,X		; FF 30 11 DE
	bpl -33.b		; 10 DF
	cpy #$F8.b		; C0 F8
	trb $F7.b		; 14 F7
	ora ($35.b,S),Y		; 13 35
	ora ($35.b),Y		; 11 35
	eor ($40.b),Y		; 51 40
	sed		; F8
	ora ($DF.b,S),Y		; 13 DF
	bvc -34.b		; 50 DE
	bvc  48.b		; 50 30
	inc $7F.b		; E6 7F
	sbc $1136E4.l		; EF E4 36 11
	sbc $10.b,S		; E3 10
	cpx $C0.b		; E4 C0
	sed		; F8
	trb $3B.b		; 14 3B
	ora ($3B.b),Y		; 11 3B
	cpy #$F8.b		; C0 F8
	trb $E4.b		; 14 E4
	sbc [$5E.b],Y		; F7 5E
	bvc -29.b		; 50 E3
	bvc  54.b		; 50 36
	cpy #$FF.b		; C0 FF
	bit $E811.w,X		; 3C 11 E8
	inc $F0.b		; E6 F0
	asl $42.b,X		; 16 42
	ora ($42.b),Y		; 11 42
	cpy #$F8.b		; C0 F8
	trb $B8.b		; 14 B8
	cmp $50E8EC.l,X		; DF EC E8 50
	bit $FDC0.w,X		; 3C C0 FD
	eor $11.b,S		; 43 11
	mvp $EB,$11		; 44 11 EB
	cpy #$F8.b		; C0 F8
	asl $FB.b,X		; 16 FB
	sbc $114B.w,Y		; F9 4B 11
	phk		; 4B
	cpy #$F8.b		; C0 F8
	asl $EB.b,X		; 16 EB
	bvc  68.b		; 50 44
	eor ($43.b),Y		; 51 43
	cpx $4C.b		; E4 4C
	ora ($7B.b),Y		; 11 7B
	and $F210DD.l,X		; 3F DD 10 F2
	cpy #$F8.b		; C0 F8
	asl $52.b,X		; 16 52
	ora ($52.b),Y		; 11 52
	cpy #$F8.b		; C0 F8
	asl $F2.b,X		; 16 F2
	bvc -35.b		; 50 DD
	bvc  76.b		; 50 4C
	adc $53E4EF.l,X		; 7F EF E4 53
	ora ($54.b),Y		; 11 54
	ora ($F9.b),Y		; 11 F9
	cpy #$F8.b		; C0 F8
	asl $5B.b,X		; 16 5B
	ora ($5B.b),Y		; 11 5B
	cpy #$F8.b		; C0 F8
	asl $F9.b,X		; 16 F9
	sbc [$43.b]		; E7 43
	bvc  84.b		; 50 54
	eor ($53.b),Y		; 51 53
	cpx $30.b		; E4 30
	ora ($FF.b),Y		; 11 FF
	beq  17.b		; F0 11
	and $F8C0AC.l		; 2F AC C0 F8
	ora $5E.b,X		; 15 5E
	ora ($5E.b),Y		; 11 5E
	cpy #$F8.b		; C0 F8
	ora $FE.b,X		; 15 FE
	eor ($FF.b),Y		; 51 FF
	ror $F7F4.w,X		; 7E F4 F7
	ldx $F182.w,Y		; BE 82 F1
	asl $11.b		; 06 11
	ora [$C0.b]		; 07 C0
	sed		; F8
	asl $61.b,X		; 16 61
	ora ($61.b),Y		; 11 61
	cpy #$F8.b		; C0 F8
	asl $07.b,X		; 16 07
	eor ($06.b),Y		; 51 06
	eor ($7A.b),Y		; 51 7A
	ora $82F37E.l		; 0F 7E F3 82
	sbc ($02.b),Y		; F1 02
	pea $1131.w		; F4 31 11
	and ($BA.b)		; 32 BA
	sed		; F8
	asl $1164.w		; 0E 64 11
	adc $83.b		; 65 83
	eor [$FE.b]		; 47 FE
	eor ($64.b),Y		; 51 64
	phx		; DA
	nop		; EA
	sed		; F8
	tsb $1133.w		; 0C 33 11
	bit $D8.b,X		; 34 D8
	cmp $7B.b,X		; D5 7B
	inc $7EEA.w,X		; FE EA 7E
	sbc ($82.b)		; F2 82
	sbc ($02.b)		; F2 02
	pea $1137.w		; F4 37 11
	sec		; 38
	cpy #$F8.b		; C0 F8
	asl $1168.w		; 0E 68 11
	adc #$D8.b		; 69 D8
	lda $FE.b,S		; A3 FE
	eor ($68.b),Y		; 51 68
	cpy #$F8.b		; C0 F8
	asl $1139.w		; 0E 39 11
	dec A		; 3A
	cld		; D8
	nop		; EA
	sbc [$FE.b],Y		; F7 FE
	nop		; EA
	ror $82F2.w,X		; 7E F2 82
	sbc ($02.b)		; F2 02
	pea $113D.w		; F4 3D 11
	rol $3F11.w,X		; 3E 11 3F
	ldx $0CF8.w,Y		; BE F8 0C
	jmp ($B011.w)		; 6C 11 B0
	adc $51FE6D.l,X		; 7F 6D FE 51
	jmp ($F8C0.w)		; 6C C0 F8
	tsb $513F.w		; 0C 3F 51
	rti		; 40

	ora ($41.b),Y		; 11 41
	ora ($CB.b),Y		; 11 CB
	xce		; FB
	ror $F106.w,X		; 7E 06 F1
	inx		; E8
	ror $53F3.w,X		; 7E F3 53
	ora ($E2.b),Y		; 11 E2
	bpl   2.b		; 10 02
	pea $1145.w		; F4 45 11
	lsr $11.b		; 46 11
	eor [$0F.b]		; 47 0F
	xce		; FB
	cpy #$F8.b		; C0 F8
	tsb $1170.w		; 0C 70 11
	adc ($FE.b),Y		; 71 FE
	eor ($70.b),Y		; 51 70
	cpy #$F8.b		; C0 F8
	tsb $5147.w		; 0C 47 51
	pha		; 48
	ora [$FF.b]		; 07 FF
	ora ($49.b),Y		; 11 49
	ora ($4A.b),Y		; 11 4A
	cld		; D8
	inc $E2E9.w,X		; FE E9 E2
	bvc  83.b		; 50 53
	eor ($30.b),Y		; 51 30
	ora ($DE.b),Y		; 11 DE
	cmp $E7.b,S		; C3 E7
	cop $F5.b		; 02 F5
	eor $4E11.w		; 4D 11 4E
	rti		; 40

	sed		; F8
	asl $1172.w		; 0E 72 11
	adc ($FE.b,S),Y		; 73 FE
	eor ($7E.b),Y		; 51 7E
	ldy $4072.w,X		; BC 72 40
	sed		; F8
	asl $114F.w		; 0E 4F 11
	bvc  17.b		; 50 11
	eor ($C0.b),Y		; 51 C0
	sbc ($50.b)		; F2 50
	sbc [$EF.b]		; E7 EF
	sbc [$7E.b],Y		; F7 7E
	sbc ($36.b),Y		; F1 36
	ora ($F8.b),Y		; 11 F8
	bpl   2.b		; 10 02
	pea $1155.w		; F4 55 11
	lsr $11.b,X		; 56 11
	eor [$BE.b],Y		; 57 BE
	sed		; F8
	tsb $1174.w		; 0C 74 11
	bcs 127.b		; B0 7F
	adc $FE.b,X		; 75 FE
	eor ($74.b),Y		; 51 74
	cpy #$F8.b		; C0 F8
	tsb $5157.w		; 0C 57 51
	cli		; 58
	ora ($59.b),Y		; 11 59
	ora ($5A.b),Y		; 11 5A
	ldy $C0BD.w,X		; BC BD C0
	sbc $F850.w,Y		; F9 50 F8
	jsr ($3CE1.w,X)		; FC E1 3C
	cop $F7.b		; 02 F7
	jmp $875D11.l		; 5C 11 5D 87
	and $F880.w,X		; 3D 80 F8
	asl $1176.w		; 0E 76 11
	adc [$FE.b],Y		; 77 FE
	eor ($76.b),Y		; 51 76
	bra  -8.b		; 80 F8
	asl $515D.w		; 0E 5D 51
	jmp $EEDEF5.l		; 5C F5 DE EE
	bvc  -2.b		; 50 FE
	nop		; EA
	bit $4451.w,X		; 3C 51 44
	cop $F7.b		; 02 F7
	eor $C06011.l,X		; 5F 11 60 C0
	sed		; F8
	asl $9EC3.w		; 0E C3 9E
	sei		; 78
	ora ($79.b),Y		; 11 79
	inc $7851.w,X		; FE 51 78
	cpy #$F8.b		; C0 F8
	asl $5160.w		; 0E 60 51
	eor $C0CF7D.l,X		; 5F 7D CF C0
	inc $44EA.w,X		; FE EA 44
	eor ($DD.b),Y		; 51 DD
	bpl   4.b		; 10 04
	inc $62.b		; E6 62
	ora ($63.b),Y		; 11 63
	sbc [$B0.b],Y		; F7 B0
	cpy #$85.b		; C0 85
	bpl -122.b		; 10 86
	dec $FD.b,X		; D6 FD
	cpx #$10.b		; E0 10
	sbc ($FE.b,X)		; E1 FE
	bvc -32.b		; 50 E0
	sei		; 78
	cmp $FEE29A.l		; CF 9A E2 FE
	sta [$10.b]		; 87 10
	dey		; 88
	ldy $C3.b,X		; B4 C3
	adc $51.b,S		; 63 51
	.db $62, $BE, $E7		; 62 BE E7
	cpy #$FE.b		; C0 FE
	nop		; EA
	cmp $E250.w,X		; DD 50 E2
	bpl   4.b		; 10 04
	inc $66.b		; E6 66
	ora ($67.b),Y		; 11 67
	cpy #$7B.b		; C0 7B
	cld		; D8
	stx $8D10.w		; 8E 10 8D
	cpy #$FD.b		; C0 FD
	sbc $10.b		; E5 10
	inc $FE.b		; E6 FE
	bvc -27.b		; 50 E5
	cpy #$FD.b		; C0 FD
	sbc ($D9.b,S),Y		; F3 D9
	sta $C09010.l		; 8F 10 90 C0
	adc [$51.b]		; 67 51
	ror $C0.b		; 66 C0
	inc $0BEA.w,X		; FE EA 0B
	sbc [$E2.b]		; E7 E2
	bvc -25.b		; 50 E7
	cop $F5.b		; 02 F5
	inc $116A.w,X		; FE 6A 11
	rtl		; 6B

	cpy #$7B.b		; C0 7B
	cld		; D8
	stx $10.b,Y		; 96 10
	sty $EE.b,X		; 94 EE
	sbc $10E9.w,X		; FD E9 10
	nop		; EA
	inc $E950.w,X		; FE 50 E9
	cpy #$FD.b		; C0 FD
	sbc ($35.b,S),Y		; F3 35
	sta [$10.b],Y		; 97 10
	tya		; 98
	cpy #$6B.b		; C0 6B
	eor ($6A.b),Y		; 51 6A
	brk $FC.b		; 00 FC
	inc $E7E9.w,X		; FE E9 E7
	plx		; FA
	cmp [$C0.b]		; C7 C0
	cop $F4.b		; 02 F4
	cpx $6E10.w		; EC 10 6E
	ora ($6F.b),Y		; 11 6F
	ora ($EF.b),Y		; 11 EF
	inc $7B.b,X		; F6 7B
	cld		; D8
	ldy #$10.b		; A0 10
	sta $F0FDC0.l,X		; 9F C0 FD F0
	bpl -15.b		; 10 F1
	inc $F050.w,X		; FE 50 F0
	cpy #$FD.b		; C0 FD
	sbc $9F.b,S		; E3 9F
	lda ($10.b,X)		; A1 10
	ldx #$CA.b		; A2 CA
	sbc $516F50.l		; EF 50 6F 51
	ror $EC51.w		; 6E 51 EC
	lda ($7F.b,S),Y		; B3 7F
	inc $C0EB.w		; EE EB C0
	cop $F4.b		; 02 F4
	sbc ($10.b,S),Y		; F3 10
	pea $F510.w		; F4 10 F5
	bpl -10.b		; 10 F6
	ldy $F6ED.w,X		; BC ED F6
	tay		; A8
	bpl -90.b		; 10 A6
	dec $F7E5.w		; CE E5 F7
	brk $FB.b		; 00 FB
	sbc [$C0.b],Y		; F7 C0
	sbc $F1A9.w,X		; FD A9 F1
	cmp $C0AA10.l		; CF 10 AA C0
	inc $50.b,X		; F6 50
	sbc $50.b,X		; F5 50
	pea $F350.w		; F4 50 F3
	plx		; FA
	cmp [$EE.b]		; C7 EE
	inc $02EA.w,X		; FE EA 02
	inc $FA.b,X		; F6 FA
	bpl  -5.b		; 10 FB
	bpl  -4.b		; 10 FC
	bpl  -3.b		; 10 FD
	inc $DB.b,X		; F6 DB
	asl $50B0.w,X		; 1E B0 50
	lda $FEFDC0.l		; AF C0 FD FE
	brk $FB.b		; 00 FB
	inc $FDC0.w,X		; FE C0 FD
	lda ($10.b),Y		; B1 10
	lda ($FF.b)		; B2 FF
	ldy $FDC0.w		; AC C0 FD
	bvc  -4.b		; 50 FC
	bvc  -5.b		; 50 FB
	bvc  -6.b		; 50 FA
	inc $EAFE.w		; EE FE EA
	adc $F602BC.l,X		; 7F BC 02 F6
	ora ($11.b,X)		; 01 11
	cop $11.b		; 02 11
	ora $11.b,S		; 03 11
	tsb $F4.b		; 04 F4
	ldx $50.b,Y		; B6 50
	lda $5B.b,X		; B5 5B
	beq -64.b		; F0 C0
	sbc $1105.w,X		; FD 05 11
	brk $FA.b		; 00 FA
	ora $18.b		; 05 18
	jmp.w [$F4EA]		; DC EA F4
.INDEX 16
	rep #$50		; C2 50
	tsb $5F.b		; 04 5F
	sbc $0351.w,X		; FD 51 03
	eor ($02.b),Y		; 51 02
	eor ($01.b),Y		; 51 01
	cpx $FEFC.w		; EC FC FE
	sbc #$02.b		; E9 02
	inc $08.b,X		; F6 08
	ora ($09.b),Y		; 11 09
	ora ($E3.b),Y		; 11 E3
	cmp $110A.w,X		; DD 0A 11
	phd		; 0B
	pea $50BA.w		; F4 BA 50
	lda $FDC0.w,Y		; B9 C0 FD
	tsb $0011.w		; 0C 11 00
	plx		; FA
	plx		; FA
	cmp $FDC00C.l		; CF 0C C0 FD
	pea $50C3.w		; F4 C3 50
	phd		; 0B
	eor ($0A.b),Y		; 51 0A
	eor ($09.b),Y		; 51 09
	eor ($08.b),Y		; 51 08
	plx		; FA
	eor [$EC.b]		; 47 EC
	inc $02EA.w,X		; FE EA 02
	inc $0D.b,X		; F6 0D
	ora ($0E.b),Y		; 11 0E
	ora ($0F.b),Y		; 11 0F
	ora ($10.b),Y		; 11 10
	cpy #$EB79.w		; C0 79 EB
	tsb $ECCB.w		; 0C CB EC
	ora ($11.b),Y		; 11 11
	brk $FA.b		; 00 FA
	ora ($C0.b),Y		; 11 C0
	sbc $C4F4.w,X		; FD F4 C4
	bpl -97.b		; 10 9F
	sbc $51.b,X		; F5 51
	ora $510E51.l		; 0F 51 0E 51
	ora $FEEC.w		; 0D EC FE
	nop		; EA
	cop $F6.b		; 02 F6
	ora ($11.b)		; 12 11
	sta $1113F2.l		; 8F F2 13 11
	trb $11.b		; 14 11
	ora $C0.b,X		; 15 C0
	tsb $ECCB.w		; 0C CB EC
	asl $D6.b,X		; 16 D6
	and $FA0011.l,X		; 3F 11 00 FA
	asl $C0.b,X		; 16 C0
	sbc $C4F4.w,X		; FD F4 C4
	ora $51.b,X		; 15 51
	trb $51.b		; 14 51
	ora ($51.b,S),Y		; 13 51
	ora ($EB.b)		; 12 EB
	adc [$EC.b]		; 67 EC
	inc $02EA.w,X		; FE EA 02
	inc $17.b,X		; F6 17
	ora ($18.b),Y		; 11 18
	ora ($19.b),Y		; 11 19
	rol $79.b,X		; 36 79
	eor [$0C.b],Y		; 57 0C
	wai		; CB
	cpx $D119.w		; EC 19 D1
	brk $FA.b		; 00 FA
	ora $C091.w,Y		; 19 91 C0
	jsr ($C5F4.w,X)		; FC F4 C5
	sei		; 78
	sbc [$F0.b],Y		; F7 F0
	eor ($18.b),Y		; 51 18
	eor ($17.b),Y		; 51 17
	ldy $E8FD.w		; AC FD E8
	bvc   6.b		; 50 06
	dec $1A.b,X		; D6 1A
	ora ($B3.b),Y		; 11 B3
	jmp.w [$111B]		; DC 1B 11
	trb $0CC0.w		; 1C C0 0C
	wai		; CB
	cpx $001D.w		; EC 1D 00
	xce		; FB
	plx		; FA
	tas		; 1B
	ora $FDD4.w,X		; 1D D4 FD
	pea $50C5.w		; F4 C5 50
	trb $1B51.w		; 1C 51 1B
	eor ($1A.b),Y		; 51 1A
	cpx $EBFD.w		; EC FD EB
	mvn $FC,$55		; 54 55 FC
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($0015.w,X)		; FC 15 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	asl $00.b,X		; 16 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	sec		; 38
	brk $FF.b		; 00 FF
	sed		; F8
	jsr $0038.w		; 20 38 00
	jmp ($FE38.w,X)		; 7C 38 FE
	mvp $FE,$00		; 44 00 FE
	tsb $01.b		; 04 01
	inc $FE64.w,X		; FE 64 FE
	inc $FEFC.w		; EE FC FE
	ora ($84.b,S),Y		; 13 84
	sbc $FF64.w,X		; FD 64 FF
	sbc [$FC.b],Y		; F7 FC
	inx		; E8
	bpl   7.b		; 10 07
	jmp ($9AFE.w,X)		; 7C FE 9A
	cpx #$78FC.w		; E0 FC 78
	sed		; F8
	cop $84.b		; 02 84
	cpx #$F9FB.w		; E0 FB F9
	inc $47.b		; E6 47
	cpy #$7864.w		; C0 64 78
	sei		; 78
	jmp ($FDF7.w,X)		; 7C F7 FD
	cpx #$22F4.w		; E0 F4 22
	stz $E0.b		; 64 E0
	beq  96.b		; F0 60
	inc $E060.w,X		; FE 60 E0
	jsr ($24C9.w,X)		; FC C9 24
	cmp [$FD.b]		; C7 FD
	rts		; 60

	sbc $6CFDE0.l,X		; FF E0 FD 6C
	sta ($E0.b)		; 92 E0
	and [$C0.b],Y		; 37 C0
	jmp ($7C30.w,X)		; 7C 30 7C
	clc		; 18
	cpx #$6CFC.w		; E0 FC 6C
	xce		; FB
	sbc $2360.w,X		; FD 60 23
	lda ($30.b,S),Y		; B3 30
	bmi  24.b		; 30 18
	sta [$A0.b],Y		; 97 A0
	cpy #$7E1A.w		; C0 1A 7E
	bra  -2.b		; 80 FE
	cpy #$80FD.w		; C0 FD 80
	sbc $FEFF.w,X		; FD FF FE
	ror $18FF.w,X		; 7E FF 18
	bit $00.b		; 24 00
	bit $3408.w,X		; 3C 08 34
	inc $FE18.w,X		; FE 18 FE
	cpx #$007E.w		; E0 7E 00
	.db $42, $22		; 42 22
	sbc $18FD.w,Y		; F9 FD 18
	sbc $880057.l,X		; FF 57 00 88
	mvp $CC,$FE		; 44 FE CC
	txs		; 9A
	and ($E3.b)		; 32 E3
	rep #$40		; C2 40
	sbc $C1FF.w,X		; FD FF C1
	beq  28.b		; F0 1C
	sbc ($23.b),Y		; F1 23
	brk $22.b		; 00 22
	inc $003E.w,X		; FE 3E 00
	eor $7F32.w		; 4D 32 7F
	inc $6CE5.w,X		; FE E5 6C
	cpx #$FF1C.w		; E0 1C FF
	and ($FF.b)		; 32 FF
	bra  -4.b		; 80 FC
	.db $82, $04, $01		; 82 04 01
	.db $82, $C0, $20		; 82 C0 20
	inc $C8B3.w,X		; FE B3 C8
	ora $FF.b,S		; 03 FF
	cpy $20.b		; C4 20
	jsr ($00F8.w,X)		; FC F8 00
	sty $E4.b		; 84 E4
	phd		; 0B
	plx		; FA
	cpx #$FEA0.w		; E0 A0 FE
	inx		; E8
	ldy $FC.b		; A4 FC
	ldy #$7FFC.w		; A0 FC 7F
	brk $41.b		; 00 41
	sbc ($01.b,X)		; E1 01
	brk $4F.b		; 00 4F
	cpx $4800.w		; EC 00 48
	bmi 126.b		; 30 7E
	inc $3070.w,X		; FE 70 30
	tad		; 5B
	sbc $263E3E.l,X		; FF 3E 3E 26
	sbc $023CFC.l,X		; FF FC 3C 02
	bvc -16.b		; 50 F0
	sbc $4244.w,X		; FD 44 42
	bit $94.b		; 24 94
	eor $42.b		; 45 42
	rti		; 40

	jsr ($FF47.w,X)		; FC 47 FF
	sbc $40B2.w,X		; FD B2 40
	txa		; 8A
	dec $FE.b		; C6 FE
	cpy #$2478.w		; C0 78 24
	cmp ($FE.b,X)		; C1 FE
	cpx #$FEC2.w		; E0 C2 FE
	sbc $F7F7F2.l,X		; FF F2 F7 F7
	sta ($00.b,X)		; 81 00
	sta $8900.w,X		; 9D 00 89
	plx		; FA
	sbc ($81.b),Y		; F1 81
	ror $5AFF.w,X		; 7E FF 5A
	inc $463E.w,X		; FE 3E 46
	cpx #$6262.w		; E0 62 62
	ror $76.b,X		; 76 76
	ror $5AFF.w,X		; 7E FF 5A
	sbc $E01E3A.l,X		; FF 3A 1E E0
	sta $00.b,X		; 95 00
	sta $85E0.w		; 8D E0 85
	ply		; 7A
	sbc $FEE31A.l,X		; FF 1A E3 FE
	ror $FCE0.w		; 6E E0 FC
	adc ($FF.b)		; 72 FF
	ply		; 7A
	sbc $A8A46E.l,X		; FF 6E A4 A8
	ror $424C.w		; 6E 4C 42
	sbc ($A0.b)		; F2 A0
	sbc ($E4.b,S),Y		; F3 E4
	lda #$F1.b		; A9 F1
	cop $0B.b		; 02 0B
	.db $42, $F5		; 42 F5
	txy		; 9B
	sbc ($FF.b)		; F2 FF
	cpx #$F182.w		; E0 82 F1
	eor $C9.b,X		; 55 C9
	inc $F6BA.w,X		; FE BA F6
	sbc ($E7.b),Y		; F1 E7
	sbc $E0FDD9.l,X		; FF D9 FD E0
	sed		; F8
	ora $E0EF.w		; 0D EF E0
	sed		; F8
	ora $3E8417.l		; 0F 17 84 3E
	clc		; 18
	inc $220C.w,X		; FE 0C 22
	sbc ($FE.b)		; F2 FE
	cpx #$2FFC.w		; E0 FC 2F
	.db $82, $65, $0C		; 82 65 0C
	jsl $C0FEF4.l		; 22 F4 FE C0
	jsr ($AA7C.w,X)		; FC 7C AA
	sbc ($E0.b),Y		; F1 E0
	ora ($44.b,X)		; 01 44
	bra  -4.b		; 80 FC
	xba		; EB
	asl $E0.b,X		; 16 E0
	sbc $5DF9.w,X		; FD F9 5D
	ldx $E2.b		; A6 E2
	sbc ($EA.b),Y		; F1 EA
	sbc ($2C.b,S),Y		; F3 2C
	php		; 08
	jsr $C0F3.w		; 20 F3 C0
	inc $5519.w,X		; FE 19 55
	php		; 08
	bpl  -7.b		; 10 F9
	sbc $40F38A.l,X		; FF 8A F3 40
	sed		; F8
	asl A		; 0A
	stx $FC.b		; 86 FC
	cmp ($41.b,X)		; C1 41
	sty $F6.b		; 84 F6
	sbc $3EF32A.l,X		; FF 2A F3 3E
	eor $78F8.w		; 4D F8 78
	sbc ($C0.b),Y		; F1 C0
	cli		; 58
	inc $32FF.w,X		; FE FF 32
	inc $243E.w,X		; FE 3E 24
	inc $B1.b,X		; F6 B1
	.db $82, $C0, $FD		; 82 C0 FD
	rti		; 40

	.db $82, $20, $FD		; 82 20 FD
	and $2CFFFC.l,X		; 3F FC FF 2C
	rti		; 40

	ora $60F1.w,X		; 1D F1 60
	cpx #$FEFE.w		; E0 FE FE
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	lda $D6.b		; A5 D6
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	cop $F2.b		; 02 F2
	sbc ($4E.b),Y		; F1 4E
	ror A		; 6A
	sbc ($48.b,S),Y		; F3 48
	asl $A0F1.w,X		; 1E F1 A0
	sbc $9344.w,X		; FD 44 93
	bmi  -2.b		; 30 FE
	sbc $F13E3E.l,X		; FF 3E 3E F1
	dex		; CA
	.db $82, $2A, $F4		; 82 2A F4
	asl $03F4.w,X		; 1E F4 03
	sbc ($3F.b,S),Y		; F3 3F
	bit $F6.b		; 24 F6
	sbc $2A43FE.l,X		; FF FE 43 2A
	pea $F8C0.w		; F4 C0 F8
	ora $4AB5.w,Y		; 19 B5 4A
	sbc $42E742.l,X		; FF 42 E7 42
	lda $00.b		; A5 00
	inc $C4E7.w,X		; FE E7 C4
	sta $FE.b,S		; 83 FE
	sbc $42004A.l,X		; FF 4A 00 42
	inc $D0F4.w,X		; FE F4 D0
	sbc $91F1FC.l,X		; FF FC F1 91
	ror $66FF.w		; 6E FF 66
	inc $1C99.w,X		; FE 99 1C
	sbc ($88.b),Y		; F1 88
	ora [$F7.b]		; 07 F7
	inc $6EFF.w,X		; FE FF 6E
	brk $66.b		; 00 66
	inc $0288.w,X		; FE 88 02
	sbc $40FF62.l,X		; FF 62 FF 40
	cpx $39.b		; E4 39
	tay		; A8
	jsr $6024.w		; 20 24 60
	inx		; E8
	ora $EC42.w		; 0D 42 EC
	jmp.w [$28F6]		; DC F6 28
	cpx #$F8.b		; E0 F8
	ora $1DF9.w,X		; 1D F9 1D
	cpy #$62.b		; C0 62
	sbc ($9C.b)		; F2 9C
	rts		; 60

	jmp ($5C30.w,X)		; 7C 30 5C
	rts		; 60

	cpx $7C.b		; E4 7C
	jmp ($D15B.w)		; 6C 5B D1
	sbc $E16060.l,X		; FF 60 60 E1
	sec		; 38
	rts		; 60

	sbc ($86.b,X)		; E1 86
	sbc #$66.b		; E9 66
	rti		; 40

	inx		; E8
	phd		; 0B
	eor $A5.b		; 45 A5
	ror $407E.w,X		; 7E 7E 40
	inx		; E8
	phd		; 0B
	ldx $A0.b		; A6 A0
	sed		; F8
	asl $F8A2.w		; 0E A2 F8
	ora #$A0.b		; 09 A0
	and $BC.b,S		; 23 BC
	adc [$00.b],Y		; 77 00
	eor $FE.b,X		; 55 FE
	plx		; FA
	eor #$36.b		; 49 36
	ror $F93C.w,X		; 7E 3C F9
	inx		; E8
	cpx #$E4.b		; E0 E4
	jsl $3636FF.l		; 22 FF 36 36
	bit $A0FF.w,X		; 3C FF A0
	jsr ($BFF9.w,X)		; FC F9 BF
	sbc ($00.b),Y		; F1 00
	ora $0C1200.l		; 0F 00 12 0C
	dec A		; 3A
	trb $FEA0.w		; 1C A0 FE
	asl $FF.b		; 06 FF
	tsb $FD0C.w		; 0C 0C FD
	adc $BC1C1C.l,X		; 7F 1C 1C BC
	pea $0300.w		; F4 00 03
	cop $0F.b		; 02 0F
	ora ($1D.b,X)		; 01 1D
	ora ($2D.b,X)		; 01 2D
	ora [$2D.b]		; 07 2D
	ora [$3D.b],Y		; 17 3D
	adc $FC0C08.l,X		; 7F 08 0C FC
	ora ($03.b,X)		; 01 03
	ora $0F.b,S		; 03 0F
	ora $1F.b,S		; 03 1F
	inc $F413.w,X		; FE 13 F4
	sta [$C9.b]		; 87 C9
	sbc $DC90F0.l,X		; FF F0 90 DC
	stz $EED2.w		; 9C D2 EE
	lda [$FE.b],Y		; B7 FE
	sbc $1DE1.w,X		; FD E1 1D
	ldx $FCE0.w		; AE E0 FC
	cpx #$F0.b		; E0 F0
	cpx #$FC.b		; E0 FC
	dec $F8.b		; C6 F8
	inc $F0CD.w,X		; FE CD F0
	sbc $0900FF.l,X		; FF FF 00 09
	php		; 08
	asl $03.b,X		; 16 03
	ora #$05.b		; 09 05
	jsr $3D03.w		; 20 03 3D
	bmi -49.b		; 30 CF
	stz $1B.b		; 64 1B
	txs		; 9A
	adc $80F0.w,X		; 7D F0 80
	ora #$EF.b		; 09 EF
	brk $17.b		; 00 17
	ora ($1E.b,X)		; 01 1E
	lda $2E1FF1.l,X		; BF F1 1F 2E
	inc $48.b		; E6 48
	brk $A0.b		; 00 A0
	jsr $80D8.w		; 20 D8 80
	jsr $0C50.w		; 20 50 0C
	inc $0B0F.w,X		; FE 0F 0B
	rti		; 40

	lda [$00.b],Y		; B7 00
	adc $7FB0.w,X		; 7D B0 7F
	ldy #$00.b		; A0 00
	jsr $D800.w		; 20 00 D8
	tda		; 7B
	sbc $8000AF.l,X		; FF AF 00 80
	cli		; 58
	sbc #$CE.b		; E9 CE
	brk $B3.b		; 00 B3
	lda ($FC.b),Y		; B1 FC
	ora $737712.l,X		; 1F 12 77 73
	sta [$EF.b],Y		; 97 EF
	bcs  63.b		; B0 3F
	stp		; DB
	inc $EB71.w,X		; FE 71 EB
	sbc $1F0FFC.l		; EF FC 0F 1F
	ora $3FC77F.l		; 0F 7F C7 3F
	cpy $FEFF.w		; CC FF FE
	adc [$1F.b]		; 67 1F
	sbc ($80.b),Y		; F1 80
	bra -32.b		; 80 E0
	brk $70.b		; 00 70
	brk $68.b		; 00 68
	xba		; EB
	bcs -64.b		; B0 C0
	pla		; 68
	bne -52.b		; D0 CC
	xba		; EB
	inc $80FC.w		; EE FC 80
	beq  -2.b		; F0 FE
	bcc -32.b		; 90 E0
	nop		; EA
	ora [$A0.b]		; 07 A0
	inx		; E8
	ora #$00.b		; 09 00
	cmp $E8A0.w,Y		; D9 A0 E8
	tsb $EF80.w		; 0C 80 EF
	jmp ($60FC.w,X)		; 7C FC 60
	bcc   0.b		; 90 00
	inc $0600.w,X		; FE 00 06
	sty $E0FE.w		; 8C FE E0
	inx		; E8
	sta $2A.b		; 85 2A
	dec $D3.b		; C6 D3
	cpy $D2.b		; C4 D2
	sbc $E0C082.l,X		; FF 82 C0 E0
	asl $E4BF.w		; 0E BF E4
	sbc $5255FC.l,X		; FF FC 55 52
	sbc ($26.b),Y		; F1 26
	bra -32.b		; 80 E0
	asl $E47F.w		; 0E 7F E4
	sbc $0FE820.l,X		; FF 20 E8 0F
	cpx #$FD.b		; E0 FD
	lda $F880D1.l		; AF D1 80 F8
	asl $1C22.w		; 0E 22 1C
	rol $F18A.w,X		; 3E 8A F1
	rti		; 40

	inx		; E8
	asl A		; 0A
	trb $40FE.w		; 1C FE 40
	inx		; E8
	asl A		; 0A
	ora $3844AE.l,X		; 1F AE 44 38
	sei		; 78
	bmi  -8.b		; 30 F8
	bvs  98.b		; 70 62
	sta $56BF00.l,X		; 9F 00 BF 56
	sbc ($81.b),Y		; F1 81
	asl $E3.b,X		; 16 E3
	wai		; CB
	bmi  20.b		; 30 14
	.db $62, $7E, $7E		; 62 7E 7E
	ora $FC.b,X		; 15 FC
	rol $4ABE.w,X		; 3E BE 4A
	lsr $AB90.w,X		; 5E 90 AB
	cpy $FEAA.w		; CC AA FE
	.db $42, $8C		; 42 8C
	mvn $4F,$98		; 54 98 4F
	ora $F0F482.l		; 0F 82 F4 F0
	inc $FFF0.w,X		; FE F0 FF
	inc $FFE0.w,X		; FE E0 FF
	ora ($1B.b,X)		; 01 1B
	sbc $07FE3F.l,X		; FF 3F FE 07
	pld		; 2B
	cmp [$2B.b]		; C7 2B
	phk		; 4B
	adc $A74710.l		; 6F 10 47 A7
	cmp $07D9AB.l		; CF AB D9 07
	ora $FEF086.l		; 0F 86 F0 FE
	ora $AF47FE.l,X		; 1F FE 47 AF
	clv		; B8
	sta [$30.b]		; 87 30
	ora $2788FE.l,X		; 1F FE 88 27
	ora $DAAE.w,X		; 1D AE DA
	adc $5AFE.w		; 6D FE 5A
	adc $756A.w		; 6D 6A 75
	ora ($FD.b)		; 12 FD
	and $FEE5FF.l,X		; 3F FF E5 FE
	cmp $E6.b,X		; D5 E6
	cmp $8AF0.w		; CD F0 8A
	inc $F882.w,X		; FE 82 F8
	ora ($08.b)		; 12 08
	sbc $FF.b		; E5 FF
	sbc $F80500.l,X		; FF 00 05 F8
	rts		; 60

	xba		; EB
	pei ($C9.b)		; D4 C9
	lda $B187.w,Y		; B9 87 B1
	sta $8AB0.w		; 8D B0 8A
	lda ($9C.b,X)		; A1 9C
	rts		; 60

	sbc $609FDF.l,X		; FF DF 9F 60
	cmp $C61066.l,X		; DF 66 10 C6
	bmi -127.b		; 30 81
	sei		; 78
	sta ($7E.b,X)		; 81 7E
	sty $7F.b		; 84 7F
	.db $82, $AF, $E1		; 82 AF E1
	sbc $3F40FF.l,X		; FF FF 40 3F
	trb $9EF7.w		; 1C F7 9E
	and $3C.b,S		; 23 3C
	cmp #$48.b		; C9 48
	and $80.b		; 25 80
	adc $06.b,X		; 75 06
	xba		; EB
	ora $EA.b		; 05 EA
	ora $D209FE.l,X		; 1F FE 09 D2
	eor $08.b,X		; 55 08
	dex		; CA
	trb $182D.w		; 1C 2D 18
	inc $FE08.w,X		; FE 08 FE
	ora ($FC.b)		; 12 FC
	adc $FC11F8.l,X		; 7F F8 11 FC
	and ($FC.b,X)		; 21 FC
	adc ($EB.b),Y		; 71 EB
	lda [$6D.b],Y		; B7 6D
	inc $6DB5.w,X		; FE B5 6D
	lda $FF5D.w		; AD 5D FF
	jsr ($7F90.w,X)		; FC 90 7F
	eor $CF57FF.l		; 4F FF 57 CF
	adc [$1F.b]		; 67 1F
	lda $FE.b,S		; A3 FE
	sta $3F.b,S		; 83 3F
	bcc -61.b		; 90 C3
	sbc $004F20.l,X		; FF 20 4F 00
	cpy #$00.b		; C0 00
	bcs   8.b		; B0 08
	bcs -64.b		; B0 C0
	tay		; A8
	cmp [$A8.b]		; C7 A8
	ldy $FF.b		; A4 FF
	clc		; 18
	cpx $C410.w		; EC 10 C4
	dex		; CA
	inc $AB.b		; E6 AB
	and [$C0.b],Y		; 37 C0
	cpx #$FE.b		; E0 FE
	beq  -2.b		; F0 FE
	sbc $F3C4FE.l,X		; FF FE C4 F3
	brk $3B.b		; 00 3B
.INDEX 16
	rep #$19		; C2 19
	and $C8.b,S		; 23 C8
	ora ($00.b,X)		; 01 00
	and $07D801.l,X		; 3F 01 D8 07
	sbc ($41.b,X)		; E1 41
	adc ($0F.b),Y		; 71 0F
	tsa		; 3B
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	jsr ($E984.w,X)		; FC 84 E9
	bra   7.b		; 80 07
	sbc $1FCA.w,X		; FD CA 1F
	brk $07.b		; 00 07
	brk $F4.b		; 00 F4
	sed		; F8
	ora $FF03F5.l		; 0F F5 03 FF
	brk $B3.b		; 00 B3
	bvs -26.b		; 70 E6
	sbc ($CC.b,X)		; E1 CC
	cmp $93.b,S		; C3 93
	sta $8799FE.l		; 8F FE 99 87
	inc $E9E4.w,X		; FE E4 E9
	sbc $3FFF1F.l,X		; FF 1F FF 3F
	sbc $FE7F.w,Y		; F9 7F FE
	adc $00F0FE.l,X		; 7F FE F0 00
	sta $F36A20.l		; 8F 20 6A F3
	beq  -1.b		; F0 FF
	sbc $18FE.w,Y		; F9 FE 18
	brk $FE.b		; 00 FE
	jsr ($FEFF.w,X)		; FC FF FE
	cpx #$7D40.w		; E0 40 7D
	ldy $FA.b		; A4 FA
	sbc $D509F8.l,X		; FF F8 09 D5
	sbc #$2F.b		; E9 2F
	sbc ($C7.b),Y		; F1 C7
	bpl  -3.b		; 10 FD
	asl $83.b		; 06 83
	cmp [$00.b],Y		; D7 00
	sbc ($78.b)		; F2 78
	sbc ($C2.b,S),Y		; F3 C2
	xba		; EB
	cpx #$F8F8.w		; E0 F8 F8
	cpx #$9AFF.w		; E0 FF 9A
	inc $17.b,X		; F6 17
	eor ($5F.b,X)		; 41 5F
	rts		; 60

	sbc $F0FE.w,X		; FD FE F0
	sed		; F8
	ora #$DB.b		; 09 DB
	sbc $C1E5.w		; ED E5 C1
	and $F00B.w		; 2D 0B F0
	sed		; F8
	asl A		; 0A
	ldy #$E8D9.w		; A0 D9 E8
	beq  -8.b		; F0 F8
	asl A		; 0A
	sbc $FDF0.w		; ED F0 FD
	sbc $1F55C2.l,X		; FF C2 55 1F
	cop $FF.b		; 02 FF
	bpl -105.b		; 10 97
	adc [$4F.b]		; 67 4F
	sta $34FEE5.l		; 8F E5 FE 34
	bpl  23.b		; 10 17
	inc $070C.w,X		; FE 0C 07
	sed		; F8
	ora $31EB8D.l		; 0F 8D EB 31
	sbc $FF38.w,Y		; F9 38 FF
	rti		; 40

	sbc $47C13E.l,X		; FF 3E C1 47
	inc $07F0.w,X		; FE F0 07
	cpx $07BD.w		; EC BD 07
	rti		; 40

	bra  62.b		; 80 3E
	sty $17F8.w		; 8C F8 17
	sbc ($55.b),Y		; F1 55
	sta $99D5.w,Y		; 99 D5 99
	sty $58.b,X		; 94 58
	ror A		; 6A
	tsb $EC17.w		; 0C 17 EC
	stx $FB.b		; 86 FB
	sbc $FEFEE1.l,X		; FF E1 FE FE
	rts		; 60

	adc $FEF110.l,X		; 7F 10 F1 FE
	brk $9F.b		; 00 9F
	xce		; FB
	sbc $FA87FF.l,X		; FF FF 87 FA
	iny		; C8
	sbc $EFE0C0.l		; EF C0 E0 EF
	beq -25.b		; F0 E7
	ora [$02.b],Y		; 17 02
	asl A		; 0A
	brk $07.b		; 00 07
	tya		; 98
	ora [$7F.b]		; 07 7F
	xce		; FB
	sta ($07.b,X)		; 81 07
	iny		; C8
	bpl -64.b		; 10 C0
	ora $2D0FE0.l,X		; 1F E0 0F 2D
	sbc ($07.b,X)		; E1 07
.INDEX 8
	sep #$D9		; E2 D9
	sta $3FE0.w,X		; 9D E0 3F
	bpl -60.b		; 10 C4
	php		; 08
	and ($07.b)		; 32 07
	rol $E1DC.w		; 2E DC E1
	jsl $60B30F.l		; 22 0F B3 60
	inc $F0C0.w,X		; FE C0 F0
	php		; 08
	inx		; E8
	sed		; F8
	brk $F2.b		; 00 F2
	sbc $E181FF.l,X		; FF FF 81 E1
	lsr $68B1.w,X		; 5E B1 68
	eor $AC.b,S		; 43 AC
	jsr $195A.w		; 20 5A 19
	and [$06.b]		; 27 06
	ora $0601.w,Y		; 19 01 06
	brk $01.b		; 00 01
	sbc $3F8111.l,X		; FF 11 81 3F
	lda [$1F.b]		; A7 1F
	eor $1F.b,S		; 43 1F
	and ($07.b,X)		; 21 07
	ora $F300.w,Y		; 19 00 F3
	sbc $0AE01F.l,X		; FF 1F E0 0A
	sta $1A.b,X		; 95 1A
	and $6A84.w		; 2D 84 6A
	php		; 08
	lda $30.b,X		; B5 30
	iny		; C8
	cpy #$30.b		; C0 30
	sbc $0071C5.l,X		; FF C5 71 00
	.db $62, $F8, $CA		; 62 F8 CA
	beq -124.b		; F0 84
	sbc ($08.b),Y		; F1 08
	sbc ($FC.b,S),Y		; F3 FC
	sbc $FF43FF.l,X		; FF FF 43 FF
	adc ($0F.b,S),Y		; 73 0F
	sed		; F8
	jsr $3E3F.w		; 20 3F 3E
	cpy #$0F.b		; C0 0F
	rol $9003.w,X		; 3E 03 90
	cop $F8.b		; 02 F8
	brk $CD.b		; 00 CD
	tsb $07FF.w		; 0C FF 07
	ora $E0E520.l,X		; 1F 20 E5 E0
	sbc $60F22D.l,X		; FF 2D F2 60
	sbc ($00.b)		; F2 00
	sbc ($BF.b,S),Y		; F3 BF
	cmp $BF.b,S		; C3 BF
	and [$EF.b]		; 27 EF
	ora [$0F.b]		; 07 0F
	ora $1EEEFE.l,X		; 1F FE EE 1E
	cmp $A080D0.l		; CF D0 80 A0
	wai		; CB
	and ($C0.b,S),Y		; 33 C0
	ora $C0.b,S		; 03 C0
	and [$10.b]		; 27 10
	eor [$7C.b]		; 47 7C
	ora [$F0.b]		; 07 F0
	asl $7EE1.w		; 0E E1 7E
	lda $0305.w,X		; BD 05 03
	ora #$07.b		; 09 07
	sed		; F8
	eor $FE.b		; 45 FE
	inc A		; 1A
	ora [$1D.b]		; 07 1D
	tsb $36.b		; 04 36
	php		; 08
	and $EA.b		; 25 EA
	dex		; CA
	brk $68.b		; 00 68
	.db $62, $FE, $C2		; 62 FE C2
	asl $E1B6.w		; 0E B6 E1
	bpl  -8.b		; 10 F8
	phb		; 8B
	sbc ($93.b),Y		; F1 93
	sta $4F8AB0.l		; 8F B0 8A 4F
	jsr $5370.w		; 20 70 53
	jsr ($C20F.w,X)		; FC 0F C2
	sbc $7CFF7F.l,X		; FF 7F FF 7C
	sbc $FFF13E.l,X		; FF 3E F1 FF
	bra  -1.b		; 80 FF
	ldy $FE7F.w		; AC 7F FE
	cli		; 58
	beq  -8.b		; F0 F8
	ora #$F1.b		; 09 F1
	sed		; F8
	tsb $1C00.w		; 0C 00 1C
	cpx #$23.b		; E0 23
	stz $0BF0.w		; 9C F0 0B
	ora $F0.b		; 05 F0
	eor $E0DC.w,Y		; 59 DC E0
	jsr ($72BE.w,X)		; FC BE 72
	cpx #$F8.b		; E0 F8
	ora #$7F.b		; 09 7F
	adc $1FF41F.l,X		; 7F 1F F4 1F
	ora $D403C3.l,X		; 1F C3 03 D4
	tsb $4D4F.w		; 0C 4F 4D
	sbc $CC.b,X		; F5 CC
	sbc ($FC.b,X)		; E1 FC
	sbc $038C3E.l,X		; FF 3E 8C 03
	sbc ($FE.b),Y		; F1 FE
	brk $D1.b		; 00 D1
	inc $9EE8.w,X		; FE E8 9E
	sbc $57B2AF.l,X		; FF AF B2 57
	sta $FEBF.w		; 8D BF FE
	inc $FFF1.w,X		; FE F1 FF
	sbc $2E00.w,Y		; F9 00 2E
	adc ($F8.b),Y		; 71 F8
	phd		; 0B
	adc ($D2.b),Y		; 71 D2
	ora $FE.b,X		; 15 FE
	sbc ($F8.b),Y		; F1 F8
	tsb $F52F.w		; 0C 2F F5
	sbc $1518F8.l,X		; FF F8 18 15
	sbc $3B03.w,X		; FD 03 3B
	ora [$98.b]		; 07 98
	sei		; 78
	ora [$00.b],Y		; 17 00
	sbc ($0E.b)		; F2 0E
	sbc $FD4701.l,X		; FF 01 47 FD
	sbc $0A5E.w		; ED 5E 0A
	sbc $381FF3.l,X		; FF F3 1F 38
	jsr ($8BB1.w,X)		; FC B1 8B
	.db $82, $99, $87		; 82 99 87
	and $3307.w,Y		; 39 07 33
	ora $730F07.l,X		; 1F 07 0F 73
	ora $3F1FE7.l		; 0F E7 1F 3F
	lsr $7C.b		; 46 7C
	inc $433E.w,X		; FE 3E 43
	adc $FF.b,X		; 75 FF
	jsr ($F13F.w,X)		; FC 3F F1
	ora $98F18A.l		; 0F 8A F1 98
	sbc ($FF.b,S),Y		; F3 FF
	inc $0303.w,X		; FE 03 03
	eor $2F.b,X		; 55 2F
	lda $51FE.w,Y		; B9 FE 51
	sed		; F8
	phd		; 0B
	inc $09F8.w,X		; FE F8 09
	sbc $E20FF8.l,X		; FF F8 0F E2
	sed		; F8
	tsb $FF03.w		; 0C 03 FF
	tsb $E4.b		; 04 E4
	sed		; F8
	phd		; 0B
	cpy $B4FF.w		; CC FF B4
	tsb $04.b		; 04 04
	inx		; E8
	ora ($FF.b,X)		; 01 FF
	tsa		; 3B
	sbc $47FF6E.l,X		; FF 6E FF 47
	phd		; 0B
	sbc $FFDFFF.l,X		; FF FF DF FF
	lda $9EC3.w,X		; BD C3 9E
	tsa		; 3B
	tsa		; 3B
	ror $476E.w		; 6E 6E 47
	eor [$DF.b]		; 47 DF
	sta ($FA.b,X)		; 81 FA
	cmp $E0757F.l,X		; DF 7F 75 E0
	cld		; D8
	dec $33A9.w,X		; DE A9 33
	sbc $8FFDF1.l,X		; FF F1 FD 8F
	sbc $E4E0FD.l,X		; FF FD E0 E4
	cld		; D8
	cld		; D8
	ror $337E.w,X		; 7E 7E 33
	and ($F1.b,S),Y		; 33 F1
	sbc ($FD.b),Y		; F1 FD
	ldx $BF.b,Y		; B6 BF
	beq -94.b		; F0 A2
	sed		; F8
	asl A		; 0A
	rts		; 60

	adc $A2B0D9.l		; 6F D9 B0 A2
	sed		; F8
	ora #$60.b		; 09 60
	rts		; 60

	beq -16.b		; F0 F0
	bcs -80.b		; B0 B0
	bpl -124.b		; 10 84
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	txs		; 9A
	cop $FE.b		; 02 FE
	cpx #$F8.b		; E0 F8
	ora #$9A.b		; 09 9A
	inx		; E8
	cmp [$02.b],Y		; D7 02
	sbc $1DFDE4.l,X		; FF E4 FD 1D
	sbc $E3FF27.l,X		; FF 27 FF E3
	and $FCE4E2.l		; 2F E2 E4 FC
	ora $1D1DFC.l,X		; 1F FC 1D 1D
	and [$27.b]		; 27 27
	sbc $E3.b,S		; E3 E3
	.db $82, $80, $FD		; 82 80 FD
	inc $FE.b		; E6 FE
	lda $BFCDFF.l,X		; BF FF CD BF
	ora $4DFF.w,Y		; 19 FF 4D
	sbc ($FE.b,X)		; E1 FE
	bra -26.b		; 80 E6
	inc $BF.b		; E6 BF
	lda $FE1919.l,X		; BF 19 19 FE
	xce		; FB
	and $A2E5.w,X		; 3D E5 A2
	sbc $B847.w,X		; FD 47 B8
	lda ($EC.b,S),Y		; B3 EC
	ply		; 7A
	cmp $A9.b		; C5 A9
	inc $A2.b,X		; F6 A2
	inc $B8B8.w,X		; FE B8 B8
	cpx $807F.w		; EC 7F 80
	cpx $C5C5.w		; EC C5 C5
	sbc [$F7.b],Y		; F7 F7
	sbc $FE02.w,X		; FD 02 FE
	dey		; 88
	inc A		; 1A
	sbc $FF0BE0.l,X		; FF E0 0B FF
	ora [$FF.b],Y		; 17 FF
	and $7F5FBF.l		; 2F BF 5F 7F
	sta $F0BE0C.l,X		; 9F 0C BE F0
	ora #$C0.b		; 09 C0
	and $E0C0FE.l,X		; 3F FE C0 E0
	cpx #$D5.b		; E0 D5
	ror $B5EA.w		; 6E EA B5
	ror $81.b		; 66 81
	sbc $98DD98.l,X		; FF 98 DD 98
	sta [$87.b]		; 87 87
	ldx $D59C.w,Y		; BE 9C D5
	cpy #$06.b		; C0 06
	ora $FEFE1F.l,X		; 1F 1F FE FE
	jsr $FFF8.w		; 20 F8 FF
	adc [$FF.b]		; 67 FF
	adc $63.b,S		; 63 63
	and $ABD53F.l,X		; 3F 3F D5 AB
	plx		; FA
	adc $FF.b,X		; 75 FF
	bmi  -1.b		; 30 FF
	sbc $FF14F0.l,X		; FF F0 14 FF
	jmp $AE485D.l		; 5C 5D 48 AE
	asl $57.b		; 06 57
	ora ($E6.b)		; 12 E6
	sta $FFCF8F.l		; 8F 8F CF FF
	sbc $EBEBCF.l,X		; FF CF EB EB
	lda $A3.b,S		; A3 A3
	lda [$B7.b],Y		; B7 B7
	sbc $EDF9.w,Y		; F9 F9 ED
	sbc $AAD5.w		; ED D5 AA
	tsx		; BA
	sbc $FF.b,X		; F5 FF
	cmp $0F.b,S		; C3 0F
	cpy #$FF.b		; C0 FF
	cli		; 58
	cop $75.b		; 02 75
	bit $B2.b,X		; 34 B2
	bpl  88.b		; 10 58
	php		; 08
	cmp $FF.b,S		; C3 FF
	lsr $4F4F.w		; 4E 4F 4F
	dex		; CA
	lda [$A7.b]		; A7 A7
	sta $CBCB9F.l,X		; 9F 9F CB CB
	sbc $F8F7E7.l		; EF E7 F7 F8
	and ($F2.b),Y		; 31 F2
	sty $07.b		; 84 07
	sbc $13FF0F.l,X		; FF 0F FF 13
	inc $FE1B.w,X		; FE 1B FE
	sbc $F8.b,S		; E3 F8
	ora $070404.l,X		; 1F 04 04 07
	ora [$0F.b]		; 07 0F
	ora $1BFF13.l		; 0F 13 FF 1B
	brk $3C.b		; 00 3C
	tas		; 1B
	sed		; F8
	sty $3C.b,X		; 94 3C
	sbc $F4FF.w,X		; FD FF F4
	jmp ($F7BC.w,X)		; 7C BC F7
	adc #$E9.b		; 69 E9
	phx		; DA
	sbc $FDF1D3.l,X		; FF D3 F1 FD
	sbc $F5.b,X		; F5 F5
	sed		; F8
	stz $46.b,X		; 74 46
	jsr ($DAFC.w,X)		; FC FC DA
	phx		; DA
	cmp ($F0.b,S),Y		; D3 F0
	eor [$FF.b],Y		; 57 FF
	eor $3C.b,X		; 55 3C
	dec $DE.b		; C6 DE
	ora $FF.b,S		; 03 FF
	ldy $01.b		; A4 01
	lda ($F1.b,S),Y		; B3 F1
	ora $0C.b,S		; 03 0C
	eor [$55.b],Y		; 57 55
	eor $DE.b,X		; 55 DE
	dec A		; 3A
	ldy $A4.b		; A4 A4
	sbc ($F8.b,X)		; E1 F8
	cli		; 58
	lda ($F0.b,S),Y		; B3 F0
	bcc  -1.b		; 90 FF
	jmp.w [$7AE8]		; DC E8 7A
	sbc $E1FF72.l,X		; FF 72 FF E1
	sbc $5FFFDB.l,X		; FF DB FF 5F
	sbc $9090B7.l,X		; FF B7 90 90
	jmp.w [$E8DC]		; DC DC E8
	ply		; 7A
	ply		; 7A
	ora $727284.l,X		; 1F 84 72 72
	stp		; DB
	stp		; DB
	eor $8C5C5F.l,X		; 5F 5F 5C 8C
	sbc ($8A.b),Y		; F1 8A
	rol $19EC.w,X		; 3E EC 19
	.db $82, $FE, $FF		; 82 FE FF
	and [$02.b],Y		; 37 02
	cop $8A.b		; 02 8A
	ora $8219.w,Y		; 19 19 82
	inc $6C37.w,X		; FE 37 6C
	bit $8037.w,X		; 3C 37 80
	cmp $9CE6D2.l		; CF D2 E6 9C
	dex		; CA
	sbc $70E3FB.l,X		; FF FB E3 70
	sbc ($F0.b),Y		; F1 F0
	inc $E6.b		; E6 E6
	stz $CACA.w		; 9C CA CA
	xce		; FB
	txa		; 8A
	sbc $FCCCF0.l,X		; FF F0 CC FC
	bra  -1.b		; 80 FF
	tda		; 7B
	sbc $5CFFCE.l,X		; FF CE FF 5C
	ora ($FF.b),Y		; 11 FF
	inc $F177.w,X		; FE 77 F1
	beq -128.b		; F0 80
	bra 123.b		; 80 7B
	tda		; 7B
	dec $FFCE.w		; CE CE FF
	sbc $775C5C.l,X		; FF 5C 5C 77
	adc [$41.b],Y		; 77 41
	inc $FEA1.w,X		; FE A1 FE
	rts		; 60

	sta $C0F2AD.l,X		; 9F AD F2 C0
	and $078EF1.l,X		; 3F F1 8E 07
	bra  76.b		; 80 4C
	sbc [$AF.b],Y		; F7 AF
	plx		; FA
	sty $E2.b		; 84 E2
	tsb $1F.b		; 04 1F
	stx $F3.b		; 86 F3
	sbc ($3F.b,S),Y		; F3 3F
	and $FA8E8E.l,X		; 3F 8E 8E FA
	sbc ($F1.b),Y		; F1 F1
	jmp ($FFFF.w)		; 6C FF FF
	xce		; FB
	sta ($FD.b,X)		; 81 FD
	rti		; 40

	ror $BF8E.w,X		; 7E 8E BF
	lsr $82FA.w		; 4E FA 82
	lda $7A40.w,X		; BD 40 7A
	bcs  32.b		; B0 20
	jsr $1807.w		; 20 07 18
	rol $BF3E.w,X		; 3E 3E BF
	lda $7DFFE8.l,X		; BF E8 FF 7D
	adc $0E3E.w,X		; 7D 3E 0E
	dec $CF.b,X		; D6 CF
	cmp $F9F8F8.l		; CF F8 F8 F9
	sbc $FFFAFA.l,X		; FF FA FA FF
	inc $0A0E.w,X		; FE 0E 0A
	asl A		; 0A
	tsb $640C.w		; 0C 0C 64
	stz $07.b		; 64 07
	ora [$64.b]		; 07 64
	tsx		; BA
	ora $02.b		; 05 02
	asl A		; 0A
	ora $F5.b,S		; 03 F5
	lda $F3E10F.l,X		; BF 0F E1 F3
	sed		; F8
	txy		; 9B
	sty $1111.w		; 8C 11 11
	lsr $F2.b,X		; 56 F2
	tax		; AA
	tax		; AA
	mvn $F0,$54		; 54 54 F0
	sed		; F8
	jsr ($3752.w,X)		; FC 52 37
	and ($EE.b,S),Y		; 33 EE
	inc $7B5C.w		; EE 5C 7B
	eor $3E.b,X		; 55 3E
	sbc $FEABC1.l,X		; FF C1 AB FE
	eor $FF.b,X		; 55 FF
	iny		; C8
	and [$CC.b],Y		; 37 CC
	and ($04.b,S),Y		; 33 04
	tsb $74.b		; 04 74
	sbc ($BA.b),Y		; F1 BA
	sbc $515BFF.l,X		; FF FF 5B 51
	sbc $BAA8.w		; ED A8 BA
	clv		; B8
	sbc $79FBEC.l,X		; FF EC FB 79
	adc $BEFF7E.l,X		; 7F 7E FF BE
	adc $107FD1.l,X		; 7F D1 7F 10
	ldx $57F1.w		; AE F1 57
	clv		; B8
	eor [$B8.b]		; 47 B8
	ora ($EC.b,S),Y		; 13 EC
	asl $E9A6.w		; 0E A6 E9
	brk $C2.b		; 00 C2
	jsr ($FE06.w,X)		; FC 06 FE
	and ($FE.b,S),Y		; 33 FE
	sbc $30.b,X		; F5 30
	brk $1B.b		; 00 1B
	lda $2727.w,X		; BD 27 27
	jsr ($C406.w,X)		; FC 06 C4
	adc $33FF.w		; 6D FF 33
	sbc $881B1B.l,X		; FF 1B 1B 88
	sbc ($ED.b),Y		; F1 ED
	ldx $F1.b		; A6 F1
	lda $00FFE1.l		; AF E1 FF 00
	sbc $AFFE.w,Y		; F9 FE AF
	eor $F7A2.w,X		; 5D A2 F7
	sbc [$ED.b],Y		; F7 ED
	sbc $A4A4.w		; ED A4 A4
	lda $AFC611.l		; AF 11 C6 AF
	inc $FF.b		; E6 FF
	plx		; FA
	ldx #$A2.b		; A2 A2
	cpy $1B.b		; C4 1B
	ora $94FFFD.l		; 0F FD FF 94
	inc $E1.b		; E6 E1
	ror $E0.b,X		; 76 E0
	lda $FF937D.l,X		; BF 7D 93 FF
	rol $FDC4.w		; 2E C4 FD
	sbc $9494.w,X		; FD 94 94
	cmp $7676DF.l,X		; DF DF 76 76
	ply		; 7A
	nop		; EA
	sta ($93.b,S),Y		; 93 93
	tay		; A8
	sbc #$C0.b		; E9 C0
	sbc $E0C0.w,X		; FD C0 E0
	phx		; DA
	sbc $F13C73.l,X		; FF 73 3C F1
	sbc $FE55.w,X		; FD 55 FE
	ora [$00.b],Y		; 17 00
	ora $E0C017.l		; 0F 17 C0 E0
	phx		; DA
	phx		; DA
	adc ($73.b,S),Y		; 73 73
	ldy #$B1.b		; A0 B1
	rol $F2D6.w		; 2E D6 F2
	sbc ($82.b),Y		; F1 82
	jsr ($823F.w,X)		; FC 3F 82
	ora ($1D.b,S),Y		; 13 1D
	inc $F178.w,X		; FE 78 F1
	ora $3FFC82.l		; 0F 82 FC 3F
	and $131384.l,X		; 3F 84 13 13
	ora $0F19.w,Y		; 19 19 0F
	ora $FF00FF.l		; 0F FF 00 FF
	sta ($FF.b),Y		; 91 FF
	sbc ($FF.b,S),Y		; F3 FF
	stx $FF.b,Y		; 96 FF
	sbc ($FF.b)		; F2 FF
	ldx $FE.b,Y		; B6 FE
	ora $76.b,S		; 03 76
	bra -15.b		; 80 F1
	sta ($91.b),Y		; 91 91
	sbc ($F3.b,S),Y		; F3 F3
	stx $96.b,Y		; 96 96
	sbc ($F2.b)		; F2 F2
	ldx $78.b		; A6 78
	sbc $76.b,S		; E3 76
	bra -13.b		; 80 F3
	cmp ($FE.b)		; D2 FE
	sta $52F120.l,X		; 9F 20 F1 52
	asl A		; 0A
	dec $187F.w		; CE 7F 18
	sbc $77FE5D.l,X		; FF 5D FE 77
	cmp ($D2.b)		; D2 D2
	sta $52AA9F.l,X		; 9F 9F AA 52
	eor ($FE.b)		; 52 FE
	sbc $CECEE6.l,X		; FF E6 CE CE
	eor $775D.w,X		; 5D 5D 77
	adc [$69.b],Y		; 77 69
	sta [$A3.b],Y		; 97 A3
	dec $77CB.w,X		; DE CB 77
	lda $0FEE.w,Y		; B9 EE 0F
	sbc ($40.b,X)		; E1 40
	lda $40FEA1.l,X		; BF A1 FE 40
	eor $DDC4EF.l,X		; 5F EF C4 DD
	cmp $FF07.w,X		; DD 07 FF
	stz $74.b,X		; 74 74
	sbc [$E7.b]		; E7 E7
	stz $36.b		; 64 36
	sbc ($E0.b)		; F2 E0
	cpx #$BD.b		; E0 BD
	cpy #$7E.b		; C0 7E
	cpy $7FFF.w		; CC FF 7F
	sbc $7B60.w,X		; FD 60 7B
	sta $64FD.w,Y		; 99 FD 64
	ror $BD86.w,X		; 7E 86 BD
	eor ($FA.b,X)		; 41 FA
	.db $82, $7F, $7F		; 82 7F 7F
	lda ($B3.b,S),Y		; B3 B3
	bra -121.b		; 80 87
	ldx $9B44.w,Y		; BE 44 9B
	txy		; 9B
	sbc $B8F9.w,Y		; F9 F9 B8
	sbc $7D7D1F.l,X		; FF 1F 7D 7D
	clc		; 18
	clc		; 18
	tsb $04.b		; 04 04
	phd		; 0B
	phd		; 0B
	sta [$97.b],Y		; 97 97
	php		; 08
	php		; 08
	and [$36.b],Y		; 37 36
	inc $F87F.w,X		; FE 7F F8
	sta [$87.b]		; 87 87
	sbc [$CC.b]		; E7 CC
	xce		; FB
	cpx $FFF4.w		; EC F4 FF
	pla		; 68
	adc $C9FCF7.l,X		; 7F F7 FC C9
	stz $FFF8.w,X		; 9E F8 FF
	sed		; F8
	sei		; 78
	adc [$3B.b]		; 67 3B
	and ($5F.b),Y		; 31 5F
	ora ($AA.b),Y		; 11 AA
	sta $9AE7BD.l,X		; 9F BD E7 9A
	and $0F.b		; 25 0F
	sbc $DA3B64.l,X		; FF 64 3B DA
	and $A0.b,X		; 35 A0
	tda		; 7B
	and ($EE.b),Y		; 31 EE
	ora ($60.b),Y		; 11 60
	sta $E1E718.l,X		; 9F 18 E7 E1
	sbc $F621DE.l,X		; FF DE 21 F6
	cmp $FC0330.l		; CF 30 03 FC
	sbc $FB55EE.l,X		; FF EE 55 FB
	tax		; AA
	sbc $55FFF7.l,X		; FF F7 FF 55
	ldx $DF20.w,Y		; BE 20 DF
	adc $2AE2.w,Y		; 79 E2 2A
	cmp $11.b,X		; D5 11
	inc $FB04.w		; EE 04 FB
	ora $FA.b		; 05 FA
	eor ($BE.b,X)		; 41 BE
	sta [$FF.b]		; 87 FF
	adc ($9E.b,X)		; 61 9E
	bvs -113.b		; 70 8F
	beq -128.b		; F0 80
	adc $FD0FFA.l,X		; 7F FA 0F FD
	ora [$FA.b]		; 07 FA
	ora $807F.w		; 0D 7F 80
	inc $09.b,X		; F6 09
	sbc ($0C.b,S),Y		; F3 0C
	sed		; F8
	ora [$FE.b]		; 07 FE
	ora ($FE.b,X)		; 01 FE
	asl $E87F.w		; 0E 7F E8
	ora [$07.b]		; 07 07
	ora $090D.w		; 0D 0D 09
	ora #$0C.b		; 09 0C
	tsb $01F8.w		; 0C F8 01
	sta $AEA9.w,Y		; 99 A9 AE
	ora $7DF3FF.l		; 0F FF F3 7D
	dec $AF.b,X		; D6 AF
	cld		; D8
	cpy $ED13.w		; CC 13 ED
	ora ($EF.b)		; 12 EF
	ora ($FF.b,X)		; 01 FF
	ldx $F0F0.w		; AE F0 F0
	eor ($02.b),Y		; 51 02
	dec $D6.b,X		; D6 D6
	cld		; D8
	cld		; D8
	jsl $EDECEC.l		; 22 EC EC ED
	bmi  60.b		; 30 3C
	sbc $7B60.w		; ED 60 7B
	tda		; 7B
	ldy $75.b		; A4 75
	cmp $FCDFAA.l		; CF AA DF FC
	tsa		; 3B
	cmp [$A1.b]		; C7 A1
	eor $21FF81.l,X		; 5F 81 FF 21
	sbc $CCF5EB.l,X		; FF EB F5 CC
	nop		; EA
	cmp $FFFCDF.l,X		; DF DF FC FF
	inc $5E.b		; E6 5E
	lsr $7E7E.w,X		; 5E 7E 7E
	dec $1EDE.w,X		; DE DE 1E
	asl $87FA.w,X		; 1E FA 87
	sbc $17EBAB.l,X		; FF AB EB 17
	asl $7D.b		; 06 7D
	lda ($EE.b),Y		; B1 EE
	ora $81.b		; 05 81
	cmp $EAC0.w,Y		; D9 C0 EA
	adc $3E.b,X		; 75 3E
	sed		; F8
	ora $AA.b		; 05 AA
	bit $4E3C.w,X		; 3C 3C 4E
	lsr $FAFA.w		; 4E FA FA
	cld		; D8
	sbc ($FC.b)		; F2 FC
	plb		; AB
	bmi -56.b		; 30 C8
	sbc ($06.b,X)		; E1 06
	ror $B8E1.w,X		; 7E E1 B8
	lda $FCFE.w,Y		; B9 FE FC
	stx $0606.w		; 8E 06 06
	bra -19.b		; 80 ED
	stx $FA.b		; 86 FA
	cpx #$D7.b		; E0 D7
	sbc $24.b		; E5 24
	cmp $D539.w,Y		; D9 39 D5
	sbc ($76.b),Y		; F1 76
	and $FFC4.w,X		; 3D C4 FF
	adc $5A.b,S		; 63 5A
	sbc ($07.b),Y		; F1 07
	sbc $E5.b		; E5 E5
	tay		; A8
	and $85F0.w,Y		; 39 F0 85
	sbc $7676.w,X		; FD 76 76
	cop $E2.b		; 02 E2
	dec $FF.b,X		; D6 FF
	cmp ($80.b,S),Y		; D3 80
	sbc ($7F.b),Y		; F1 7F
	inc $FF97.w,X		; FE 97 FF
	ora $FE5BC3.l		; 0F C3 5B FE
	sbc [$FF.b]		; E7 FF
	sta $D301.w,Y		; 99 01 D3
	cmp ($AC.b,S),Y		; D3 AC
	adc $7FFFFF.l,X		; 7F FF FF 7F
	sta [$97.b],Y		; 97 97
	tad		; 5B
	tad		; 5B
	sbc [$E7.b]		; E7 E7
	sta $CE99.w,Y		; 99 99 CE
	dec $DF70.w		; CE 70 DF
	sbc $3F.b		; E5 3F
	cmp $FF.b,X		; D5 FF
	sbc $2EF17F.l,X		; FF 7F F1 2E
	cpy #$7F.b		; C0 7F
	sbc #$BE.b		; E9 BE
	rts		; 60

	cmp $8FEEBB.l,X		; DF BB EE 8F
	sta $2A1A1A.l		; 8F 1A 1A 2A
	cmp $F0.b,S		; C3 F0
	rol A		; 2A
	and $B7C42F.l		; 2F 2F C4 B7
	lda [$D6.b],Y		; B7 D6
	cmp $C5.b		; C5 C5
	sbc $FBFF.w,X		; FD FF FB
	cpx #$7A.b		; E0 7A
	clv		; B8
	sbc $7E4C.w,X		; FD 4C 7E
	dec $BD.b,X		; D6 BD
	eor ($7E.b),Y		; 51 7E
	sty $00.b		; 84 00
	sbc #$80.b		; E9 80
	ora $F1FF1F.l,X		; 1F 1F FF F1
	cmp [$C7.b]		; C7 C7
	lda ($B3.b,S),Y		; B3 B3
	lda #$A9.b		; A9 A9
	inc $FBEC.w		; EE EC FB
	plx		; FA
	txa		; 8A
	inc $FF4B.w,X		; FE 4B FF
	sbc $11154B.l,X		; FF 4B 15 11
	phd		; 0B
	phd		; 0B
	ora [$16.b],Y		; 17 16
	phd		; 0B
	ora $85.b,S		; 03 85
	sta ($0B.b,X)		; 81 0B
	brk $15.b		; 00 15
	bpl -76.b		; 10 B4
	sbc $EEBFC3.l,X		; FF C3 BF EE
	cmp $CFF4.w,Y		; D9 F4 CF
	sbc #$FE.b		; E9 FE
	jsr ($7EE7.w,X)		; FC E7 7E
	adc ($2D.b,X)		; 61 2D
	sbc $98C3C3.l		; EF C3 C3 98
	bne  -1.b		; D0 FF
	bit $D8.b		; 24 D8
	sbc [$A1.b],Y		; F7 A1
	ror $C1F8.w,X		; 7E F8 C1
	beq -65.b		; F0 BF
	ldx $91FC.w,Y		; BE FC 91
	ror $FE01.w		; 6E 01 FE
	trb $0CE3.w		; 1C E3 0C
	sbc ($84.b,S),Y		; F3 84
	tda		; 7B
	sbc ($FF.b,X)		; E1 FF
	sta ($D1.b),Y		; 91 D1
	sta $47B8FC.l,X		; 9F FC B8 47
	lda [$FA.b]		; A7 FA
	tad		; 5B
	sbc $7FFBBD.l,X		; FF BD FB 7F
	jsr ($FFFF.w,X)		; FC FF FF
	xce		; FB
	ply		; 7A
	eor $B5.b,X		; 55 B5
	sed		; F8
	iny		; C8
	jmp ($F2E4.w,X)		; 7C E4 F2
	ora $04FB.w		; 0D FB 04
	sbc $FC06.w,Y		; F9 06 FC
	ora $7F.b,S		; 03 7F
	sec		; 38
	ply		; 7A
	sta $15.b		; 85 15
	nop		; EA
	iny		; C8
	and [$64.b],Y		; 37 64
	txy		; 9B
	asl $00EE.w,X		; 1E EE 00
	tax		; AA
	rep #$83		; C2 83
	inc $92FA.w,X		; FE FA 92
	jmp ($78FC.w)		; 6C FC 78
	inc $AC7C.w,X		; FE 7C AC
	sty $FFAB.w		; 8C AB FF
	jmp ($786C.w)		; 6C 6C 78
	sbc $796444.l,X		; FF 44 64 79
	lda ($82.b)		; B2 82
	cpy #$92.b		; C0 92
	dec $E382.w,X		; DE 82 E3
	adc $7A.b,S		; 63 7A
	cpx $87.b		; E4 87
	sbc $000000.l,X		; FF 00 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	sed		; F8
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	sta $3F.b,S		; 83 3F
	brk $7F.b		; 00 7F
	inc $3844.w,X		; FE 44 38
	jmp ($44D1.w,X)		; 7C D1 44
	sec		; 38
	mvp $ED,$F8		; 44 F8 ED
	sbc $FE38.w,X		; FD 38 FE
	beq 127.b		; F0 7F
	sbc $00E0F3.l,X		; FF F3 E0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $22.b		; 00 22
	trb $1C3E.w		; 1C 3E 1C
	jsl $F88064.l		; 22 64 80 F8
	sbc $00E8ED.l,X		; FF ED E8 00
	pea $FE1C.w		; F4 1C FE
	sbc $0001E0.l,X		; FF E0 01 00
	ora $7F.b,S		; 03 7F
	stz $00.b		; 64 00
	ora [$00.b]		; 07 00
	asl A		; 0A
	ora $0F.b		; 05 0F
	ora ($02.b,X)		; 01 02
	inc $FF.b,X		; F6 FF
	asl A		; 0A
	tsb $ED.b		; 04 ED
	ora $FA.b		; 05 FA
	sbc $F33E11.l,X		; FF 11 3E F3
	cpy #$D1.b		; C0 D1
	inc $C020.w,X		; FE 20 C0
	cpx #$C0.b		; E0 C0
	jsr $3032.w		; 20 32 30
	sed		; F8
	sbc $79FEED.l,X		; FF ED FE 79
	phb		; 8B
	sbc $0BF876.l,X		; FF 76 F8 0B
	ora $631000.l,X		; 1F 00 10 63
	sed		; F8
	ora $F0DA0F.l		; 0F 0F DA F0
	sta [$58.b]		; 87 58
	sbc $041A37.l,X		; FF 37 1A 04
	sbc #$F8.b		; E9 F8
	ora $80FD0F.l		; 0F 0F FD 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $4B.b		; 00 4B
	bne -40.b		; D0 D8
	brk $74.b		; 00 74
	inc $F8.b		; E6 F8
	ora #$ED.b		; 09 ED
	ora $FEF188.l		; 0F 88 F1 FE
	lda $000270.l,X		; BF 70 02 00
	and $02.b		; 25 02
	mvn $28,$00		; 54 00 28
	cpy $F8.b		; C4 F8
	phd		; 0B
	sbc $0023.w		; ED 23 00
	ora [$FF.b],Y		; 17 FF
	jsr $FEF3.w		; 20 F3 FE
	sei		; 78
	brk $84.b		; 00 84
	brk $A7.b		; 00 A7
	brk $A5.b		; 00 A5
	cpx $F8FF.w		; EC FF F8
	ora #$DC.b		; 09 DC
	lda $ED.b,S		; A3 ED
	cli		; 58
	brk $5A.b		; 00 5A
	sbc ($F8.b,S),Y		; F3 F8
	ora #$48.b		; 09 48
	brk $CF.b		; 00 CF
	cmp $DFB1.w		; CD B1 DF
	sbc $300AF8.l,X		; FF F8 0A 30
	inc $F3FD.w,X		; FE FD F3
	inc $00F0.w,X		; FE F0 00
	bcc   0.b		; 90 00
	stz $F860.w		; 9C 60 F8
	ora $0BD8.w		; 0D D8 0B
	rts		; 60

	inc $28F8.w,X		; FE F8 28
	sed		; F8
	ora $7F3F40.l,X		; 1F 40 3F 7F
	asl $F2.b		; 06 F2
	sbc $2B.b,S		; E3 2B
	jsr ($4400.w,X)		; FC 00 44
	inc $0038.w,X		; FE 38 00
	and $F3093F.l,X		; 3F 3F 09 F3
	sbc $C2ACFD.l,X		; FF FD AC C2
	cpx #$18.b		; E0 18
	cpx #$4C.b		; E0 4C
	sbc $FF.b,X		; F5 FF
	sbc $F8F1.w,X		; FD F1 F8
	asl $016E.w		; 0E 6E 01
	dey		; 88
	tad		; 5B
	ora $FE.b,S		; 03 FE
	plx		; FA
	brk $0E.b		; 00 0E
	.db $42, $F1		; 42 F1
	ora $ABF40B.l		; 0F 0B F4 AB
	bra  -1.b		; 80 FF
	sbc $420F.w,X		; FD 0F 42
	sbc ($08.b),Y		; F1 08
	sbc ($06.b)		; F2 06
	sbc ($FC.b),Y		; F1 FC
	brk $1A.b		; 00 1A
	ldy $62.b		; A4 62
	adc ($0B.b),Y		; 71 0B
	sbc ($FF.b,S),Y		; F3 FF
	sbc $7BF8.w,X		; FD F8 7B
	pla		; 68
	.db $62, $09, $FE		; 62 09 FE
	sed		; F8
	asl A		; 0A
	php		; 08
	ora ($09.b,X)		; 01 09
	ora $F8FE06.l,X		; 1F 06 FE F8
	asl A		; 0A
	ora [$14.b]		; 07 14
	ror $FFFC.w		; 6E FC FF
	sed		; F8
	ror $3C4C.w,X		; 7E 4C 3C
	brk $2C.b		; 00 2C
	inc $54FF.w,X		; FE FF 54
	lda ($E1.b,X)		; A1 E1
	asl $FEF2.w		; 0E F2 FE
	ora ($FE.b,S),Y		; 13 FE
	sbc $56EE23.l,X		; FF 23 EE 56
	brk $FC.b		; 00 FC
	and ($6D.b,X)		; 21 6D
	inc $0052.w,X		; FE 52 00
	ora ($00.b)		; 12 00
	rol A		; 2A
	cpx #$88.b		; E0 88
	inc $1F.b		; E6 1F
	inc $FE92.w,X		; FE 92 FE
	lda ($00.b,X)		; A1 00
	sbc ($00.b,X)		; E1 00
	cmp ($11.b,X)		; C1 11
	inc $DD05.w,X		; FE 05 DD
	bpl  65.b		; 10 41
	bit $124D.w		; 2C 4D 12
	and ($00.b,S),Y		; 33 00
	lda ($0D.b,S),Y		; B3 0D
	sbc #$EF.b		; E9 EF
	sbc $F1D9F8.l,X		; FF F8 D9 F1
	trb $3E00.w		; 1C 00 3E
	brk $32.b		; 00 32
	brk $0C.b		; 00 0C
	inc $003F.w,X		; FE 3F 00
	asl $FFF0.w,X		; 1E F0 FF
	lda $D9.b		; A5 D9
	tsb $21.b		; 04 21
	bra  -2.b		; 80 FE
	brk $81.b		; 00 81
	cop $B1.b		; 02 B1
	cop $93.b		; 02 93
	jsr $F1F0.w		; 20 F0 F1
	sta $B1.b,S		; 83 B1
	phy		; 5A
	brk $5E.b		; 00 5E
	brk $DE.b		; 00 DE
	sta [$7E.b]		; 87 7E
	brk $FF.b		; 00 FF
	sbc $6C004E.l,X		; FF 4E 00 6C
	brk $7C.b		; 00 7C
	cmp $004D00.l		; CF 00 4D 00
	lsr A		; 4A
	brk $42.b		; 00 42
	tsb $46.b		; 04 46
	php		; 08
	txa		; 8A
	sbc [$FF.b],Y		; F7 FF
	ora ($0A.b,X)		; 01 0A
	ora ($09.b,X)		; 01 09
	asl A		; 0A
	pea $0035.w		; F4 35 00
	and $3900.w,X		; 3D 00 39
	brk $71.b		; 00 71
	brk $F1.b		; 00 F1
	brk $C7.b		; 00 C7
	sbc $009CF0.l,X		; FF F0 9C 00
	tya		; 98
	jmp $440064.l		; 5C 64 00 44
	jsr $2844.w		; 20 44 28
	tsb $8540.w		; 0C 40 85
	clc		; 18
	php		; 08
	bpl  10.b		; 10 0A
	sbc $EB.b,X		; F5 EB
	clv		; B8
	inc $2DF0.w,X		; FE F0 2D
	cli		; 58
	inc $F8FF.w,X		; FE FF F8
	jsr $8807.w		; 20 07 88
	sbc ($77.b,X)		; E1 77
	brk $E4.b		; 00 E4
	jmp ($FEED.w,X)		; 7C ED FE
	bpl   4.b		; 10 04
	jmp $14E000.l		; 5C 00 E0 14
	eor [$00.b]		; 47 00
	cpx #$0D.b		; E0 0D
	sbc $A0FEAF.l,X		; FF AF FE A0
	beq  63.b		; F0 3F
	ora ($04.b)		; 12 04
	tsb $F8EF.w		; 0C EF F8
	ora $F8F1.w		; 0D F1 F8
	asl $F8FF.w		; 0E FF F8
	adc $280254.l,X		; 7F 54 02 28
	tsb $12.b		; 04 12
	lda $01BF.w		; AD BF 01
	ora $F8EF.w		; 0D EF F8
	ora #$23.b		; 09 23
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	and $40.b,X		; 35 40
	trb $20.b		; 14 20
	tsb $08.b		; 04 08
	sbc $E499E6.l,X		; FF E6 99 E4
	ora [$07.b]		; 07 07
	sei		; 78
	sei		; 78
	brk $C8.b		; 00 C8
	brk $E8.b		; 00 E8
	txa		; 8A
	cpx #$0B.b		; E0 0B
	eor ($FE.b)		; 52 FE
	dec $6DEC.w,X		; DE EC 6D
	and $817FF2.l		; 2F F2 7F 81
	sta ($F0.b,X)		; 81 F0
	cmp ($2D.b),Y		; D1 2D
	inc $FFFF.w,X		; FE FF FF
	cmp $1F.b,S		; C3 1F
	adc $408100.l		; 6F 00 81 40
	sta ($28.b),Y		; 91 28
	inc $FCF6.w,X		; FE F6 FC
	jsr ($B203.w,X)		; FC 03 B2
	phx		; DA
	bit $7BFB.w,X		; 3C FB 7B
	asl $F1.b		; 06 F1
	ror $F8E0.w		; 6E E0 F8
	ora #$49.b		; 09 49
	brk $CA.b		; 00 CA
	ora ($4C.b,X)		; 01 4C
	cop $68.b		; 02 68
	pei ($C0.b)		; D4 C0
	cpy #$3C.b		; C0 3C
	sed		; F8
	inc $B0E2.w,X		; FE E2 B0
	brk $31.b		; 00 31
	brk $33.b		; 00 33
	cpx #$F8.b		; E0 F8
	ora #$08.b		; 09 08
	bpl   4.b		; 10 04
	plp		; 28
	mvp $FD,$8D		; 44 8D FD
	bcs -68.b		; B0 BC
	sbc $F009F8.l		; EF F8 09 F0
	.db $82, $B8, $20		; 82 B8 20
	sed		; F8
	and #$22.b		; 29 22
	trb $001D.w		; 1C 1D 00
	lda $010320.l,X		; BF 20 03 01
	tsb $3F03.w		; 0C 03 3F
	brk $47.b		; 00 47
	eor $2EFAD9.l		; 4F D9 FA 2E
	sbc ($C0.b)		; F2 C0
	ora [$5A.b]		; 07 5A
	ror $0C.b,X		; 76 0C
	tsb $3838.w		; 0C 38 38
	and $016FF1.l,X		; 3F F1 6F 01
	inx		; E8
	sbc #$F8.b		; E9 F8
	bvs -16.b		; 70 F0
	eor $FCD3.w,Y		; 59 D3 FC
	.db $82, $D9, $FC		; 82 D9 FC
	asl $0C.b,X		; 16 0C
	nop		; EA
	bvs 112.b		; 70 70
	lsr A		; 4A
	dec $4E.b,X		; D6 4E
	tya		; 98
	beq  73.b		; F0 49
	rol $EAB8.w,X		; 3E B8 EA
	ror $FE.b,X		; 76 FE
	cmp $20.b,S		; C3 20
	sbc $0AF8.w		; ED F8 0A
	stz $F2E9.w,X		; 9E E9 F2
	sbc ($F3.b),Y		; F1 F3
	sbc $A10762.l,X		; FF 62 07 A1
	trb $41.b		; 14 41
	brk $F7.b		; 00 F7
	cmp $F8E0.w,X		; DD E0 F8
	phd		; 0B
	wai		; CB
	php		; 08
	bne  86.b		; D0 56
	sbc ($FE.b,S),Y		; F3 FE
	adc $86.b,X		; 75 86
.INDEX 16
	rep #$D1		; C2 D1
	and ($AD.b,X)		; 21 AD
	sed		; F8
	phd		; 0B
	sei		; 78
	ldy $E1.b,X		; B4 E1
	ldx $E2.b,Y		; B6 E2
	eor $D01E7F.l,X		; 5F 7F 1E D0
	and [$01.b]		; 27 01
	asl $06.b		; 06 06
	php		; 08
	bcs  -1.b		; B0 FF
	nop		; EA
	sed		; F8
	phd		; 0B
	clc		; 18
	clc		; 18
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	cmp $55.b,X		; D5 55
	dex		; CA
	sed		; F8
	ora $E8.b,X		; 15 E8
	sed		; F8
	ora [$C0.b],Y		; 17 C0
	sed		; F8
	ora #$FF.b		; 09 FF
	inc $0302.w,X		; FE 02 03
	beq -60.b		; F0 C4
	sbc $B617F8.l,X		; FF F8 17 B6
	sed		; F8
	ora $FD.b,X		; 15 FD
	cmp [$EC.b],Y		; D7 EC
	xba		; EB
	sbc $C01CF8.l,X		; FF F8 1C C0
	cpy #$3030.w		; C0 30 30
	tsb $020C.w		; 0C 0C 02
	cop $A4.b		; 02 A4
	sed		; F8
	tas		; 1B
	dec $FE.b,X		; D6 FE
	nop		; EA
	lda $F0A020.l,X		; BF 20 A0 F0
	phd		; 0B
	inc A		; 1A
	iny		; C8
	asl $FF.b,X		; 16 FF
	sed		; F8
	ora $1F.b,X		; 15 1F
	brk $60.b		; 00 60
	ora ($80.b),Y		; 11 80
	rti		; 40

	asl $F591.w		; 0E 91 F5
	cmp $ED.b,X		; D5 ED
	sed		; F8
	tsb $7E7F.w		; 0C 7F 7E
	cmp $F8A2.w,Y		; D9 A2 F8
	ora #$00.b		; 09 00
	jsr $1040.w		; 20 40 10
	ldy #$0DF8.w		; A0 F8 0D
	ora $C2.b		; 05 C2
	bra -56.b		; 80 C8
	ora $04FFFF.l,X		; 1F FF FF 04
	tsb $0E.b		; 04 0E
	tsb $149E.w		; 0C 9E 14
	sty $CC.b,X		; 94 CC
	trb $2D48.w		; 1C 48 2D
	sbc ($02.b,X)		; E1 02
	ldx #$0050.w		; A2 50 00
	lda $00BFFF.l,X		; BF FF BF 00
	xce		; FB
	brk $F3.b		; 00 F3
	brk $E3.b		; 00 E3
	trb $37E9.w		; 1C E9 37
	brk $1E.b		; 00 1E
	brk $5C.b		; 00 5C
	eor ($14.b,X)		; 41 14
	sbc $9441C7.l,X		; FF C7 41 94
	adc [$A2.b],Y		; 77 A2
	eor ($80.b,X)		; 41 80
	sbc $14.b,S		; E3 14
	stz $3E02.w		; 9C 02 3E
	trb $18A1.w		; 1C A1 18
	phd		; 0B
	ldx $88FE.w,Y		; BE FE 88
	jsr ($781C.w,X)		; FC 1C 78
	cmp ($FB.b),Y		; D1 FB
	lda $FF1F51.l,X		; BF 51 1F FF
	cop $D9.b		; 02 D9
	bit $0480.w		; 2C 80 04
	jsr $807E.w		; 20 7E 80
	cop $00.b		; 02 00
	bit $C71C.w,X		; 3C 1C C7
	.db $82, $E0, $C3		; 82 E0 C3
	sed		; F8
	brk $D0.b		; 00 D0
	jsr ($ED80.w,X)		; FC 80 ED
	sbc #$80.b		; E9 80
	asl $03.b		; 06 03
	lsr $0AE8.w,X		; 5E E8 0A
	ror $02F1.w,X		; 7E F1 02
	sta ($80.b,S),Y		; 93 80
	sed		; F8
	ora $8C4D10.l		; 0F 10 4D 8C
	tax		; AA
	eor #$40.b		; 49 40
	bra  -1.b		; 80 FF
	iny		; C8
	clv		; B8
	lsr $04.b,X		; 56 04
	beq  10.b		; F0 0A
	brk $F0.b		; 00 F0
	ora $8034.w,Y		; 19 34 80
	.db $82, $F8, $57		; 82 F8 57
	jsr $0808.w		; 20 08 08
	asl A		; 0A
	asl $40.b		; 06 40
	ror $E8E0.w		; 6E E0 E8
	ora [$EB.b],Y		; 17 EB
	inc $FE7A.w,X		; FE 7A FE
	rti		; 40

	rti		; 40

	cpx #$0FF8.w		; E0 F8 0F
	ora ($FC.b),Y		; 11 FC
	ror A		; 6A
	inc $A116.w,X		; FE 16 A1
	inx		; E8
	tsb $08.b		; 04 08
	.db $62, $C2, $5C		; 62 C2 5C
	cmp ($33.b,X)		; C1 33
	lda ($E1.b,S),Y		; B3 E1
	cmp #$2A.b		; C9 2A
	jsr ($FED1.w,X)		; FC D1 FE
	jmp $0A10C1.l		; 5C C1 10 0A
	cmp ($BD.b,X)		; C1 BD
	sbc $E4.b,X		; F5 E4
	dec $BFD5.w		; CE D5 BF
	inc $80C0.w,X		; FE C0 80
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	bit $A1.b		; 24 A1
	brk $84.b		; 00 84
	asl A		; 0A
	txs		; 9A
	adc ($61.b,X)		; 61 61
	sbc $F8EFED.l		; EF ED EF F8
	ora #$5E.b		; 09 5E
	brk $7B.b		; 00 7B
	brk $F1.b		; 00 F1
	sed		; F8
	asl A		; 0A
	rol $A01C.w,X		; 3E 1C A0
	sbc $4F83D1.l		; EF D1 83 4F
	sed		; F8
	phd		; 0B
	ora $000AB5.l,X		; 1F B5 0A 00
	sta ($F1.b,X)		; 81 F1
	sed		; F8
	ora #$0C.b		; 09 0C
	sbc ($3C.b)		; F2 3C
	sta $0BE8.w,Y		; 99 E8 0B
	tsb $AAF2.w		; 0C F2 AA
	tay		; A8
	asl A		; 0A
	ror $0420.w,X		; 7E 20 04
	bit $08E1.w		; 2C E1 08
	asl $111E.w,X		; 1E 1E 11
	ora ($5B.b),Y		; 11 5B
	eor $2AFF.w,Y		; 59 FF 2A
	sei		; 78
	sed		; F8
	ora [$90.b],Y		; 17 90
	bcc  64.b		; 90 40
	rts		; 60

	cli		; 58
	cli		; 58
	asl $90.b		; 06 90
	clv		; B8
	asl $F058.w,X		; 1E 58 F0
	and ($04.b),Y		; 31 04
	beq  11.b		; F0 0B
	adc #$FD.b		; 69 FD
	pea $F8AC.w		; F4 AC F8
	ora $E8F8.w,X		; 1D F8 E8
	and $A8DF02.l,X		; 3F 02 DF A8
	tsb $F8FF.w		; 0C FF F8
	phd		; 0B
	ora ($13.b,S),Y		; 13 13
	tsb $0C.b		; 04 0C
	lda $57.b,X		; B5 57
	bit $34.b,X		; 34 34
	bcc -96.b		; 90 A0
	ora $E380.w		; 0D 80 E3
	rti		; 40

	cpx $20D9.w		; EC D9 20
	beq -16.b		; F0 F0
	cld		; D8
	nop		; EA
	dec $EA.b,X		; D6 EA
	adc $F8E0F5.l,X		; 7F F5 E0 F8
	ora $090006.l		; 0F 06 00 09
	tsb $09.b		; 04 09
	cop $E9.b		; 02 E9
	beq  12.b		; F0 0C
	ror $B2.b		; 66 B2
	sbc $0352F8.l,X		; FF F8 52 03
	brk $AB.b		; 00 AB
	sta ($04.b)		; 92 04
	cop $14.b		; 02 14
	sbc $0FF8.w		; ED F8 0F
	cop $D8.b		; 02 D8
	jsr $F092.w		; 20 92 F0
	ora $11F820.l		; 0F 20 F8 11
	sbc $20EFEA.l,X		; FF EA EF 20
.INDEX 8
	sep #$1C		; E2 1C
	cpx #$16.b		; E0 16
	nop		; EA
	cmp $D0CA.w,Y		; D9 CA D0
	ora $083232.l,X		; 1F 32 32 08
	tsb $0B0B.w		; 0C 0B 0B
	sty $F8.b		; 84 F8
	ora $5F57C8.l,X		; 1F C8 57 5F
	iny		; C8
	jsr $2830.w		; 20 30 28
	ora $000CA0.l,X		; 1F A0 0C 00
	bne  67.b		; D0 43
	clv		; B8
	sed		; F8
	ora #$26.b		; 09 26
	rol $08.b		; 26 08
	clc		; 18
	ldy #$F8.b		; A0 F8
	ora ($F8.b),Y		; 11 F8
	and [$E7.b],Y		; 37 E7
	asl $06.b		; 06 06
	tya		; 98
	tya		; 98
	jsr $A060.w		; 20 60 A0
	ldy #$A8.b		; A0 A8
	sed		; F8
	and $04.b,X		; 35 04
	plb		; AB
	sbc $E0FF.w		; ED FF E0
	phx		; DA
	jmp.w [$19D8]		; DC D8 19
	sbc $F825F8.l,X		; FF F8 25 F8
	adc ($C1.b,S),Y		; 73 C1
	tay		; A8
	sbc $0DF8.w		; ED F8 0D
	beq -19.b		; F0 ED
	ror A		; 6A
	brk $50.b		; 00 50
	dex		; CA
	sed		; F8
	ora $DAC018.l,X		; 1F 18 C0 DA
	ora ($0C.b,X)		; 01 0C
	dec A		; 3A
	cmp ($FE.b),Y		; D1 FE
	jsr ($D9AA.w,X)		; FC AA D9
	ora $FE7554.l		; 0F 54 75 FE
	asl $F2.b		; 06 F2
	inc $A0FC.w,X		; FE FC A0
	bne  36.b		; D0 24
	sbc $E009F8.l,X		; FF F8 09 E0
	tay		; A8
	adc $FF0606.l		; 6F 06 06 FF
	ora $1DF88A.l,X		; 1F 8A F8 1D
	eor ($41.b,X)		; 41 41
	ora ($81.b,X)		; 01 81
	adc ($61.b,X)		; 61 61
	ora $0719.w,Y		; 19 19 07
	ora [$03.b]		; 07 03
	ora $C0.b,S		; 03 C0
	sbc $80F8FC.l,X		; FF FC F8 80
	beq  17.b		; F0 11
	ora ($03.b,X)		; 01 03
	ora $300D.w		; 0D 0D 30
	bmi -64.b		; 30 C0
	cpy #$55.b		; C0 55
	phk		; 4B
	bra -128.b		; 80 80
	rol $C2.b,X		; 36 C2
	.db $82, $E8, $11		; 82 E8 11
	plp		; 28
	dey		; 88
	lsr $F0C0.w,X		; 5E C0 F0
	rol $2CA8.w,X		; 3E A8 2C
	bit #$5A.b		; 89 5A
	eor ($FC.b)		; 52 FC
	plx		; FA
	jsr ($B1C1.w,X)		; FC C1 B1
	bvc -126.b		; 50 82
	cmp ($FC.b,X)		; C1 FC
	plx		; FA
	jsr ($9880.w,X)		; FC 80 98
	jsr $7AAB.w		; 20 AB 7A
	asl A		; 0A
	pea $0C07.w		; F4 07 0C
	cpx #$0D.b		; E0 0D
	asl A		; 0A
	cpx #$2A.b		; E0 2A
	pha		; 48
	sed		; F8
	and [$FE.b]		; 27 FE
	cld		; D8
	inc A		; 1A
	sbc $0B28F8.l,X		; FF F8 28 0B
	phd		; 0B
	php		; 08
	sbc #$DF.b		; E9 DF
	.db $62, $98, $10		; 62 98 10
	sty $06.b		; 84 06
	asl $28.b		; 06 28
	plp		; 28
	jsr $C830.w		; 20 30 C8
	iny		; C8
	cpy $13F8.w		; CC F8 13
	cmp [$D7.b],Y		; D7 D7
	adc ($61.b,X)		; 61 61
	ora ($81.b,X)		; 01 81
	jsr ($00E9.w,X)		; FC E9 00
	cpx #$18.b		; E0 18
	ora $010D.w		; 0D 0D 01
	ora $8A.b,S		; 03 8A
	pei ($64.b)		; D4 64
	sed		; F8
	ora $7DE1.w,Y		; 19 E1 7D
	cpy #$C0.b		; C0 C0
	ldy #$08.b		; A0 08
	clc		; 18
	rol $26.b		; 26 26
	inc A		; 1A
	sed		; F8
	ora $20A0A0.l,X		; 1F A0 A0 20
	rts		; 60

	lda $8A.b,X		; B5 8A
	brk $F0.b		; 00 F0
	and [$FE.b],Y		; 37 FE
	dec $F8C0.w,X		; DE C0 F8
	and $7908B0.l		; 2F B0 08 79
	plp		; 28
	adc [$8F.b],Y		; 77 8F
	cmp ($F6.b,S),Y		; D3 F6
	asl $4CFE.w,X		; 1E FE 4C
	inx		; E8
	and ($1E.b)		; 32 1E
	cmp $805281.l		; CF 81 52 80
	adc ($FC.b,S),Y		; 73 FC
	beq  11.b		; F0 0B
	tsb $8C00.w		; 0C 00 8C
	lda $FEA8.w		; AD A8 FE
	cli		; 58
	clv		; B8
	tsb $C0DF.w		; 0C DF C0
	sed		; F8
	clc		; 18
	stz $FE69.w,X		; 9E 69 FE
	cmp ($9F.b),Y		; D1 9F
	asl A		; 0A
	ora [$9A.b]		; 07 9A
	adc $1AD400.l		; 6F 00 D4 1A
	dex		; CA
	sbc $1E1111.l,X		; FF 11 11 1E
	sta $5DFD.w,Y		; 99 FD 5D
	cpy $13C0.w		; CC C0 13
	rol $58F1.w,X		; 3E F1 58
	cli		; 58
	rti		; 40

	rts		; 60

	bcc -112.b		; 90 90
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora ($32.b),Y		; 11 32
	and ($7E.b)		; 32 7E
.INDEX 8
	sep #$5D		; E2 5D
	ora #$C8.b		; 09 C8
	inx		; E8
	and $B000.w,Y		; 39 00 B0
	eor $4C9898.l,X		; 5F 98 98 4C
	lda $C83C.w,Y		; B9 3C C8
	trb $7EA4.w		; 1C A4 7E
	sta $3C.b		; 85 3C
	bit $34.b,X		; 34 34
	tsb $0C.b		; 04 0C
	ora ($13.b,S),Y		; 13 13
	brk $D0.b		; 00 D0
	ora [$DA.b],Y		; 17 DA
	lda ($FF.b)		; B2 FF
	xce		; FB
	sbc [$10.b],Y		; F7 10
	bpl -16.b		; 10 F0
	bvc -32.b		; 50 E0
	clc		; 18
	sbc $8500.w,Y		; F9 00 85
	php		; 08
	sta [$00.b],Y		; 97 00
	sty $A0.b,X		; 94 A0
	bcc  13.b		; 90 0D
	pla		; 68
	brk $7E.b		; 00 7E
	sbc $806B.w		; ED 6B 80
	beq   9.b		; F0 09
	and ($00.b,X)		; 21 00
	tsa		; 3B
	brk $0C.b		; 00 0C
	jsr $0BF8.w		; 20 F8 0B
	bra -14.b		; 80 F2
	sbc ($E2.b,S),Y		; F3 E2
	cmp [$00.b]		; C7 00
	and $883540.l		; 2F 40 35 88
	and [$00.b],Y		; 37 00
	jsr $601F.w		; 20 1F 60
	phd		; 0B
	sbc $DFFE.w		; ED FE DF
	iny		; C8
	sbc $63.b,S		; E3 63
	cmp ($FE.b)		; D2 FE
	sta ($40.b)		; 92 40
	inc $5021.w,X		; FE 21 50
	and [$A1.b],Y		; 37 A1
	nop		; EA
	adc $AB85DE.l,X		; 7F DE 85 AB
	stz $5E.b,X		; 74 5E
	bvc  61.b		; 50 3D
	sta ($82.b),Y		; 91 82
	inc $FEA1.w,X		; FE A1 FE
	mvp $44,$82		; 44 82 44
	bra  72.b		; 80 48
	tsb $48.b		; 04 48
	cpx #$8F.b		; E0 8F
	and ($FC.b),Y		; 31 FC
	sbc $ED.b,X		; F5 ED
	sta $FE.b,S		; 83 FE
	sta [$FE.b]		; 87 FE
	cop $04.b		; 02 04
	and ($0A.b),Y		; 31 0A
	and #$D0.b		; 29 D0
	sbc [$40.b],Y		; F7 40
	inc $D649.w,X		; FE 49 D6
	sta ($A9.b,X)		; 81 A9
	brk $D1.b		; 00 D1
	rol A		; 2A
	cop $B1.b		; 02 B1
	dec $1800.w		; CE 00 18
	eor $86FEC6.l,X		; 5F C6 FE 86
	inc $0006.w,X		; FE 06 00
	rol $2A00.w		; 2E 00 2A
	tyx		; BB
	eor $55.b,X		; 55 55
	asl $DCCA.w,X		; 1E CA DC
	cld		; D8
	and $A0.b		; 25 A0
	bne  81.b		; D0 51
	brk $B0.b		; 00 B0
	rtl		; 6B

	ror $F8.b,X		; 76 F8
	asl $E020.w,X		; 1E 20 E0
	ora ($EA.b,S),Y		; 13 EA
	lda $41.b,S		; A3 41
	ldy #$09.b		; A0 09
	tsa		; 3B
	sbc $F8FF.w,X		; FD FF F8
	ora $F18F97.l		; 0F 97 8F F1
	sta $10.b,X		; 95 10
	inc $0885.w,X		; FE 85 08
	stx $9A11.w		; 8E 11 9A
	lsr $EA.b		; 46 EA
	ora $0C.b		; 05 0C
	sbc ($70.b),Y		; F1 70
	jsr ($78FE.w,X)		; FC FE 78
	ror $6569.w,X		; 7E 69 65
	sbc $023CD7.l,X		; FF D7 3C 02
	phd		; 0B
	brk $0D.b		; 00 0D
	cop $0C.b		; 02 0C
	bit $2C.b		; 24 2C
	cop $2B.b		; 02 2B
	brk $78.b		; 00 78
	sbc ($2F.b)		; F2 2F
	adc $DFDB.w,Y		; 79 DB DF
	beq   0.b		; F0 00
	sbc ($08.b)		; F2 08
	sbc ($D3.b),Y		; F1 D3
	jsr ($D0CB.w,X)		; FC CB D0
	eor #$A0.b		; 49 A0
	lda #$40.b		; A9 40
	bmi  83.b		; 30 53
	adc #$0F.b		; 69 0F
	lda [$39.b],Y		; B7 39
	rti		; 40

	plp		; 28
	bpl  41.b		; 10 29
	dec $0008.w,X		; DE 08 00
	ldx $CF.b,Y		; B6 CF
	adc ($CF.b,X)		; 61 CF
	sta [$6E.b]		; 87 6E
	lsr $D7F3.w,X		; 5E F3 D7
	brk $D6.b		; 00 D6
	inc $04B3.w,X		; FE B3 04
	sbc ($00.b)		; F2 00
	stz $F88F.w,X		; 9E 8F F8
	ora #$4C.b		; 09 4C
	sbc $E6D6.w,X		; FD D6 E6
	adc $FF.b,S		; 63 FF
	sbc $910851.l,X		; FF 51 08 91
	brk $0A.b		; 00 0A
	sta $8E0BA8.l		; 8F A8 0B 8E
	ldx $5A61.w,Y		; BE 61 5A
	tay		; A8
	asl A		; 0A
	lda $1042A8.l,X		; BF A8 42 10
	.db $42, $24		; 42 24
	bit $18.b		; 24 18
	clc		; 18
	sbc $FE0A98.l		; EF 98 0A FE
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	tax		; AA
	cmp $80.b,X		; D5 80
	dey		; 88
	jsr $D9E6.w		; 20 E6 D9
	tsb $AA.b		; 04 AA
	sec		; 38
.ACCU 16
	rep #$E0		; C2 E0
	inx		; E8
	and ($60.b,X)		; 21 60
	ldy #$D0.b		; A0 D0
	sec		; 38
	brk $B0.b		; 00 B0
	and $25F020.l,X		; 3F 20 F0 25
	tax		; AA
	lda $C8600C.l,X		; BF 0C 60 C8
	bpl  38.b		; 10 26
.INDEX 8
	sep #$1C		; E2 1C
	txa		; 8A
	clv		; B8
	clv		; B8
	and [$98.b],Y		; 37 98
	asl $98.b		; 06 98
	tsb $94.b		; 04 94
	ora ($10.b,X)		; 01 10
	xce		; FB
	and $FFE7.w,Y		; 39 E7 FF
	adc [$FE.b]		; 67 FE
	adc $60.b,S		; 63 60
	pla		; 68
	phd		; 0B
	eor ($90.b,X)		; 41 90
	sta ($46.b),Y		; 91 46
	tda		; 7B
	rti		; 40

	eor $B00A90.l		; 4F 90 0A B0
	inc $F0DA.w,X		; FE DA F0
	asl A		; 0A
	plp		; 28
	ror A		; 6A
	cmp ($23.b),Y		; D1 23
	tsb $F9.b		; 04 F9
	stp		; DB
	sbc $F824.w,X		; FD 24 F8
	ora #$3BD7.w		; 09 D7 3B
	cmp ($DC.b),Y		; D1 DC
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$18.b		; A9 18
	clc		; 18
	inc $E8.b		; E6 E8
	and ($80.b,X)		; 21 80
	bra 120.b		; 80 78
	sei		; 78
	ply		; 7A
	and $3D07.w		; 2D 07 3D
	clv		; B8
	asl A		; 0A
	brk $F0.b		; 00 F0
	ora ($81.b,S),Y		; 13 81
	sta ($7E.b,X)		; 81 7E
	lda $35.b,S		; A3 35
	cop $98.b		; 02 98
	asl $03.b,X		; 16 03
	lda ($60.b)		; B2 60
	ora $AAAC.w,Y		; 19 AC AA
	cpx $3C.b		; E4 3C
	bit $F040.w,X		; 3C 40 F0
	ora [$C6.b],Y		; 17 C6
	tax		; AA
	eor ($28.b,X)		; 41 28
	jsr ($3024.w,X)		; FC 24 30
	mvp $76,$FC		; 44 FC 76
	lsr $30.b		; 46 30
	ora [$F0.b],Y		; 17 F0
	ora ($E8.b),Y		; 11 E8
	and ($C7.b)		; 32 C7
	sed		; F8
	jsr ($52E0.w,X)		; FC E0 52
	stx $99.b		; 86 99
	sbc $22E4DF.l		; EF DF E4 22
	sbc $003FFA.l,X		; FF FA 3F 00
	adc $EC2D.w,Y		; 79 2D EC
	jmp ($DB7F.w)		; 6C 7F DB
	brk $E7.b		; 00 E7
	brk $95.b		; 00 95
	brk $59.b		; 00 59
	brk $21.b		; 00 21
	clc		; 18
	inc $7C93.w		; EE 93 7C
	cmp $FC08.w,Y		; D9 08 FC
	adc ($EE.b),Y		; 71 EE
	adc $3128C0.l		; 6F C0 28 31
	pha		; 48
	sta $8FD18A.l		; 8F 8A D1 8F
	brk $0E.b		; 00 0E
	bcc  17.b		; 90 11
	asl $C5C8.w		; 0E C8 C5
	bvs -124.b		; 70 84
	lda $C0.b,S		; A3 C0
	jsr ($00F0.w,X)		; FC F0 00
	inc $42F8.w		; EE F8 42
	and $44.b,X		; 35 44
	lda $B2BE.w,X		; BD BE B2
	sbc ($C9.b,X)		; E1 C9
	cpy $C0.b		; C4 C0
	ora #$94.b		; 09 94
	stx $71.b		; 86 71
	eor $05.b,S		; 43 05
	eor $84FEA0.l,X		; 5F A0 FE 84
	brk $48.b		; 00 48
	eor $FEAEFE.l,X		; 5F FE AE FE
	phx		; DA
	lsr $FE03.w,X		; 5E 03 FE
	cmp ($C6.b,X)		; C1 C6
	lda ($12.b),Y		; B1 12
	lda ($39.b),Y		; B1 39
	cmp $C6.b,S		; C3 C6
	sta $A142.w,Y		; 99 42 A1
	lda $E6.b,S		; A3 E6
	pei ($63.b)		; D4 63
	ora $BE.b,X		; 15 BE
	cmp ($3C.b)		; D2 3C
	ldy $BD.b		; A4 BD
	phx		; DA
	adc ($6F.b,X)		; 61 6F
	plp		; 28
	ora $E8D4.w		; 0D D4 E8
	ora $ACB5.w		; 0D B5 AC
	rts		; 60

	ora [$F0.b]		; 07 F0
	jsr ($F30E.w,X)		; FC 0E F3
	cop $48.b		; 02 48
	ora $19FE.w,Y		; 19 FE 19
	inc $FE.b		; E6 FE
	sed		; F8
	sbc ($EC.b),Y		; F1 EC
	sbc $04ED.w		; ED ED 04
	rti		; 40

	mvp $C4,$80		; 44 80 C4
	brk $FE.b		; 00 FE
	php		; 08
	eor $08.b		; 45 08
	tad		; 5B
	stz $0A.b,X		; 74 0A
	bcc 113.b		; 90 71
	ora $B88A.w,Y		; 19 8A B8
.INDEX 8
	sep #$14		; E2 14
	sed		; F8
	cop $59.b		; 02 59
	sta ($41.b)		; 92 41
	sbc [$2B.b],Y		; F7 2B
	jsr $0141.w		; 20 41 01
	bvc  19.b		; 50 13
	sta $2090.w,Y		; 99 90 20
	and ($40.b,X)		; 21 40
	cmp ($0F.b,X)		; C1 0F
	lda ($F7.b,X)		; A1 F7
	lda ($D8.b),Y		; B1 D8
	ora $AA73FE.l,X		; 1F FE 73 AA
	rts		; 60

	ldx #$F2.b		; A2 F2
	ora $003010.l		; 0F 10 30 00
	rti		; 40

	bra  14.b		; 80 0E
	and $03F7.w		; 2D F7 03
	brk $FC.b		; 00 FC
	sta $411882.l,X		; 9F 82 18 41
	beq -28.b		; F0 E4
	adc [$60.b]		; 67 60
	tsb $F1ED.w		; 0C ED F1
	adc #$B9.b		; 69 B9
	lda ($87.b,X)		; A1 87
	rol $FC.b,X		; 36 FC
	ora $28.b		; 05 28
	eor $98.b		; 45 98
	sty $F8.b		; 84 F8
	sta ($86.b)		; 92 86
	sta [$E9.b],Y		; 97 E9
	lsr $FFD6.w,X		; 5E D6 FF
	jsr ($20C7.w,X)		; FC C7 20
	lda $B9D2.w,Y		; B9 D2 B9
	adc ($08.b)		; 72 08
	asl $20.b,X		; 16 20
	pei ($01.b)		; D4 01
	eor $00.b,X		; 55 00
	cmp $A0146F.l,X		; DF 6F 14 A0
	xba		; EB
	brk $88.b		; 00 88
	tsb $11.b		; 04 11
	sbc ($8D.b),Y		; F1 8D
	brk $E9.b		; 00 E9
	brk $29.b		; 00 29
	sta ($91.b,S),Y		; 93 91
	inx		; E8
	cmp $0E.b,S		; C3 0E
	cmp #$94.b		; C9 94
	ldy $66.b		; A4 66
	jsr $1D44.w		; 20 44 1D
	adc #$89.b		; 69 89
	bpl -101.b		; 10 9B
	lda ($D8.b,X)		; A1 D8
	and #$C0.b		; 29 C0
	lsr $E9.b,X		; 56 E9
	clc		; 18
	ror $9A.b		; 66 9A
	bvs  85.b		; 70 55
	eor $5A.b,X		; 55 5A
	adc ($C6.b,X)		; 61 C6
	cpx $FE99.w		; EC 99 FE
	sbc $675E.w,X		; FD 5E 67
	rts		; 60

	ldx #$5C.b		; A2 5C
	ldy $94.b		; A4 94
	clv		; B8
	phy		; 5A
	sbc $0129F8.l,X		; FF F8 29 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AD.b		; 00 AD
	beq   0.b		; F0 00
	sbc $FE01FC.l,X		; FF FC 01 FE
	sbc $13F8F1.l,X		; FF F1 F8 13
	sbc $408080.l,X		; FF 80 80 40
	cmp $E0007F.l,X		; DF 7F 00 E0
	cpx #$F0.b		; E0 F0
	brk $08.b		; 00 08
	sbc ($FD.b),Y		; F1 FD
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	cpx #$F8.b		; E0 F8
	ldy #$FF.b		; A0 FF
	inc $1FFF.w		; EE FF 1F
	brk $20.b		; 00 20
	trb $0023.w		; 1C 23 00
	rol $FB1C.w,X		; 3E 1C FB
	php		; 08
	rol $2200.w,X		; 3E 00 22
	sbc ($FD.b),Y		; F1 FD
	ora $221C23.l,X		; 1F 23 1C 22
	inc $3FFC.w,X		; FE FC 3F
	sbc $F8E0.w		; ED E0 F8
	brk $04.b		; 00 04
	sei		; 78
	sty $00.b		; 84 00
	jsr ($FC78.w,X)		; FC 78 FC
	brk $38.b		; 00 38
	jsr $F1FA.w		; 20 FA F1
	jsr ($84F8.w,X)		; FC F8 84
	sbc $0870FE.l		; EF FE 70 08
	sbc $03E0.w		; ED E0 03
	sbc $7FDF07.l		; EF 07 DF 7F
	ldx $1F.b		; A6 1F
	ora ($0F.b,X)		; 01 0F
	brk $02.b		; 00 02
	sbc ($FD.b),Y		; F1 FD
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	ora $03010E.l		; 0F 0E 01 03
	sta [$23.b]		; 87 23
	adc $00E0FC.l,X		; 7F FC E0 00
	sta $10.b,X		; 95 10
	brk $F0.b		; 00 F0
	bra -56.b		; 80 C8
	rts		; 60

	plx		; FA
	sbc ($FE.b),Y		; F1 FE
	inc $80ED.w,X		; FE ED 80
	sed		; F8
	phd		; 0B
	brk $00.b		; 00 00
	eor $92.b,X		; 55 92
	inc $80.b,X		; F6 80
	sed		; F8
	asl A		; 0A
	sbc ($FD.b),Y		; F1 FD
	bra  -8.b		; 80 F8
	and ($C0.b,X)		; 21 C0
	sed		; F8
	ora #$55.b		; 09 55
	rti		; 40

	sbc ($FE.b),Y		; F1 FE
	cpy #$FD.b		; C0 FD
	sbc $F8C0FD.l,X		; FF FD C0 F8
	ora $4113D7.l,X		; 1F D7 13 41
	rol $FB00.w		; 2E 00 FB
	tsx		; BA
	sbc ($FE.b),Y		; F1 FE
	inc $BD3F.w,X		; FE 3F BD
	jsr ($ACA0.w,X)		; FC A0 AC
	phx		; DA
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	ora #$F1.b		; 09 F1
	bra  -8.b		; 80 F8
	ora ($8A.b)		; 12 8A
	tay		; A8
	cpy #$FE.b		; C0 FE
	cpy #$F0.b		; C0 F0
	ora #$C0.b		; 09 C0
	sbc $FC8F.w,X		; FD 8F FC
	inc $FC.b,X		; F6 FC
	lsr A		; 4A
	plp		; 28
	bra  -3.b		; 80 FD
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	cpy #$F8.b		; C0 F8
	bit $80.b		; 24 80
	sta [$C0.b]		; 87 C0
	sbc $820AB1.l,X		; FF B1 0A 82
	sbc ($15.b),Y		; F1 15
	beq   9.b		; F0 09
	sty $F3.b,X		; 94 F3
	sbc ($F8.b),Y		; F1 F8
	asl $8BF8.w		; 0E F8 8B
	dec $E086.w,X		; DE 86 E0
	beq -64.b		; F0 C0
	cpx #$00.b		; E0 00
	cpy #$0B.b		; C0 0B
	sbc ($E1.b),Y		; F1 E1
	cmp $86FCFF.l		; CF FF FC 86
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	php		; 08
	sbc ($14.b),Y		; F1 14
	php		; 08
	stx $10.b		; 86 10
	tya		; 98
	jsr ($2084.w,X)		; FC 84 20
	sta $F3.b		; 85 F3
	adc ($10.b,X)		; 61 10
	inc $3F84.w,X		; FE 84 3F
	ora $FC0876.l,X		; 1F 76 08 FC
	ora ($90.b,X)		; 01 90
	asl $FC.b		; 06 FC
	inc $B4.b,X		; F6 B4
	cmp $37.b		; C5 37
	sbc ($FE.b,S),Y		; F3 FE
	inc $013A.w,X		; FE 3A 01
	cop $00.b		; 02 00
	ora $19.b,S		; 03 19
	sbc ($03.b),Y		; F1 03
	cop $90.b		; 02 90
	plx		; FA
	inc $FE.b,X		; F6 FE
	sbc $A0.b,X		; F5 A0
	brk $FE.b		; 00 FE
	sed		; F8
	asl A		; 0A
	jmp ($F408.w,X)		; 7C 08 F4
	asl $F1.b		; 06 F1
	jsr ($4240.w,X)		; FC 40 42
	inc $FE.b,X		; F6 FE
	sbc $FE.b,X		; F5 FE
	sed		; F8
	asl A		; 0A
	adc #$1F.b		; 69 1F
	brk $81.b		; 00 81
	sty $8097.w		; 8C 97 80
	sed		; F8
	asl A		; 0A
	sty $5125.w		; 8C 25 51
	sbc ($80.b),Y		; F1 80
	sbc $F03A40.l,X		; FF 40 3A F0
	ora #$80.b		; 09 80
	dec $F5.b		; C6 F5
	.db $62, $AB, $F1		; 62 AB F1
	pea $FC19.w		; F4 19 FC
	trb $FEC0.w		; 1C C0 FE
	sbc ($F8.b),Y		; F1 F8
	ora #$0B.b		; 09 0B
	ldx #$C0.b		; A2 C0
	jsr ($08F0.w,X)		; FC F0 08
	rti		; 40

	sed		; F8
	ora $4002.w		; 0D 02 40
	sed		; F8
	ora $9280.w		; 0D 80 92
	plp		; 28
	txy		; 9B
	sbc $FCFF.w		; ED FF FC
	cpy $F8FF.w		; CC FF F8
	phd		; 0B
	bra -64.b		; 80 C0
	sed		; F8
	ora #$A0.b		; 09 A0
	eor $FE.b,X		; 55 FE
	cpy $F0FE.w		; CC FE F0
	phd		; 0B
	sei		; 78
	cpy #$FE.b		; C0 FE
	bra  -1.b		; 80 FF
	cpy #$FC.b		; C0 FC
	adc $55.b		; 65 55
	bra  -8.b		; 80 F8
	ora #$C0.b		; 09 C0
	sed		; F8
	tsb $8040.w		; 0C 40 80
	sed		; F8
	bpl   0.b		; 10 00
	sed		; F8
	ora $1CF8C0.l,X		; 1F C0 F8 1C
	cpy #$E8.b		; C0 E8
	asl $5555.w		; 0E 55 55
	bne -21.b		; D0 EB
	cpy #$E8.b		; C0 E8
	ora #$FE.b		; 09 FE
	sbc $C0.b		; E5 C0
	cpx #$26.b		; E0 26
	bra -24.b		; 80 E8
	ora $58F8C0.l,X		; 1F C0 F8 58
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	eor $5DF5.w,X		; 5D F5 5D
	rti		; 40

	cpx #$0C.b		; E0 0C
	rti		; 40

	nop		; EA
	inc $0CF8.w,X		; FE F8 0C
	sei		; 78
	brk $0F.b		; 00 0F
	bpl -128.b		; 10 80
	inx		; E8
	ora $0F1F.w		; 0D 1F 0F
	bra -24.b		; 80 E8
	ora $0015.w		; 0D 15 00
	cpy #$E0.b		; C0 E0
	rol $00.b		; 26 00
	inx		; E8
	sec		; 38
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	adc $F8FF00.l,X		; 7F 00 FF F8
	cli		; 58
	rol $08.b		; 26 08
	and [$08.b]		; 27 08
	plp		; 28
	php		; 08
	and #$08.b		; 29 08
	rol A		; 2A
	php		; 08
	pld		; 2B
	php		; 08
	sbc $F8D6FF.l,X		; FF FF D6 F8
	ora $083A.w,X		; 1D 3A 08
	tsa		; 3B
	php		; 08
	bit $3D08.w,X		; 3C 08 3D
	php		; 08
	rol $3F08.w,X		; 3E 08 3F
	php		; 08
	rti		; 40

	php		; 08
	sbc $0841FF.l,X		; FF FF 41 08
	eor ($08.b),Y		; 51 08
	eor ($08.b)		; 52 08
	and ($08.b,S),Y		; 33 08
	bit $08.b,X		; 34 08
	and $08.b,X		; 35 08
	rol $08.b,X		; 36 08
	and [$08.b],Y		; 37 08
	cmp $FF.b,S		; C3 FF
	sec		; 38
	php		; 08
	and $48F2.w,Y		; 39 F2 48
	eor ($48.b)		; 52 48
	eor ($48.b),Y		; 51 48
	eor ($48.b,X)		; 41 48
	rti		; 40

	pha		; 48
	sbc $483FF7.l,X		; FF F7 3F 48
	rol $3D48.w,X		; 3E 48 3D
	pha		; 48
	bit $3B48.w,X		; 3C 48 3B
	pha		; 48
	dec A		; 3A
	pha		; 48
	cpy #$FE.b		; C0 FE
	eor #$08.b		; 49 08
	sbc $084A8F.l,X		; FF 8F 4A 08
	phk		; 4B
	php		; 08
	jmp $4D08.w		; 4C 08 4D
	php		; 08
	lsr $4F08.w		; 4E 08 4F
	php		; 08
	bvc  -1.b		; 50 FF
	adc $085392.l,X		; 7F 92 53 08
	.db $42, $08		; 42 08
	eor $08.b,S		; 43 08
	mvp $45,$08		; 44 08 45
	php		; 08
	lsr $08.b		; 46 08
	eor [$08.b]		; 47 08
	pha		; 48
	clc		; 18
	sbc $5348F2.l,X		; FF F2 48 53
	cmp ($50.b)		; D2 50
	pha		; 48
	eor $484E48.l		; 4F 48 4E 48
	sbc $484DD2.l,X		; FF D2 4D 48
	jmp $4B48.w		; 4C 48 4B
	pha		; 48
	lsr A		; 4A
	pha		; 48
	eor #$C0.b		; 49 C0
	sbc $1F01FF.l,X		; FF FF 01 1F
	rol $0914.w,X		; 3E 14 09
	trb $0C.b		; 14 0C
	mvn $FC,$0D		; 54 0D FC
	trb $22.b		; 14 22
	trb $24.b		; 14 24
	trb $7C.b		; 14 7C
	bit $03F0.w,X		; 3C F0 03
	trb $23.b		; 14 23
	trb $21.b		; 14 21
	pea $141F.w		; F4 1F 14
	asl $CF1E.w		; 0E 1E CF
	cpx $1425.w		; EC 25 14
	phd		; 0B
	cpx $1404.w		; EC 04 14
	sta $00.b		; 85 00
	inc $F4EC.w,X		; FE EC F4
	cpx $F83C.w		; EC 3C F8
	ora $181410.l		; 0F 10 14 18
	trb $1B.b		; 14 1B
	ora ($E3.b,X)		; 01 E3
	mvn $FC,$1C		; 54 1C FC
	inc $E231.w,X		; FE 31 E2
	ora ($C7.b)		; 12 C7
	sbc $14.b,S		; E3 14
	bmi  20.b		; 30 14
	and $142CF4.l		; 2F F4 2C 14
	ora $32FA.w,X		; 1D FA 32
	sbc ($0C.b),Y		; F1 0C
	trb $1A.b		; 14 1A
	cpx $1413.w		; EC 13 14
	stx $EC.b		; 86 EC
	bcs  31.b		; B0 1F
	pea $00EC.w		; F4 EC 00
	ora #$BC.b		; 09 BC
	beq  35.b		; F0 23
	ora ($0D.b),Y		; 11 0D
	ora ($0D.b)		; 12 0D
	ora ($FE.b,S),Y		; 13 FE
	sbc $150D6B.l,X		; FF 6B 0D 15
	ora $0D16.w		; 0D 16 0D
	ora [$0D.b],Y		; 17 0D
	clc		; 18
	ora $0D19.w		; 0D 19 0D
	inc A		; 1A
	ora $FE1B.w		; 0D 1B FE
	ora $F8D90D.l,X		; 1F 0D D9 F8
	bpl   6.b		; 10 06
	ora ($06.b,X)		; 01 06
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	tsb $06.b		; 04 06
	ora $06.b		; 05 06
	dec $FFFF.w,X		; DE FF FF
	ora [$06.b]		; 07 06
	pha		; 48
	asl $E7.b		; 06 E7
	inc $0D21.w,X		; FE 21 0D
	jsl $0D230D.l		; 22 0D 23 0D
	bit $0D.b		; 24 0D
	sbc $0D25CF.l,X		; FF CF 25 0D
	rol $0D.b		; 26 0D
	and [$0D.b]		; 27 0D
	plp		; 28
	ora $0D29.w		; 0D 29 0D
	rol A		; 2A
	ora $F72B.w		; 0D 2B F7
	sbc $092EC0.l,X		; FF C0 2E 09
	and $10FF7E.l		; 2F 7E FF 10
	asl $11.b		; 06 11
	asl $12.b		; 06 12
	asl $13.b		; 06 13
	asl $14.b		; 06 14
	asl $BF.b		; 06 BF
	sbc $160615.l,X		; FF 15 06 16
	asl $17.b		; 06 17
	asl $58.b		; 06 58
	cpy #$FF.b		; C0 FF
	and ($0D.b),Y		; 31 0D
	and ($0D.b)		; 32 0D
	and ($0D.b,S),Y		; 33 0D
	bit $FF.b,X		; 34 FF
	sta $0D350D.l,X		; 9F 0D 35 0D
	rol $0D.b,X		; 36 0D
	and [$0D.b],Y		; 37 0D
	sec		; 38
	ora $0D39.w		; 0D 39 0D
	dec A		; 3A
	ora $FB3B.w		; 0D 3B FB
	sbc $403EC0.l,X		; FF C0 3E 40
	sed		; F8
	asl A		; 0A
	jsr $2106.w		; 20 06 21
	asl $22.b		; 06 22
	asl $23.b		; 06 23
	asl $24.b		; 06 24
	asl $25.b		; 06 25
	sta $2606FF.l,X		; 9F FF 06 26
	asl $27.b		; 06 27
	asl $49.b		; 06 49
	cpy #$10.b		; C0 10
	ora $0D40.w		; 0D 40 0D
	eor ($0D.b,X)		; 41 0D
	sbc $0D42FF.l,X		; FF FF 42 0D
	eor $0D.b,S		; 43 0D
	mvp $45,$0D		; 44 0D 45
	ora $0D46.w		; 0D 46 0D
	eor [$0D.b]		; 47 0D
	pha		; 48
	ora $0D49.w		; 0D 49 0D
	sbc $0D4AFB.l,X		; FF FB 4A 0D
	phk		; 4B
	ora $0D4C.w		; 0D 4C 0D
	eor $4E0D.w		; 4D 0D 4E
	ora $384F.w		; 0D 4F 38
	sbc $310630.l,X		; FF 30 06 31
	sbc $32069F.l,X		; FF 9F 06 32
	asl $33.b		; 06 33
	asl $34.b		; 06 34
	asl $35.b		; 06 35
	asl $36.b		; 06 36
	asl $37.b		; 06 37
	asl $59.b		; 06 59
	sbc $20C0FF.l,X		; FF FF C0 20
	ora $0D50.w		; 0D 50 0D
	eor ($0D.b),Y		; 51 0D
	eor ($0D.b)		; 52 0D
	eor ($0D.b,S),Y		; 53 0D
	mvn $55,$0D		; 54 0D 55
	ora $FFFF.w		; 0D FF FF
	lsr $0D.b,X		; 56 0D
	eor [$0D.b],Y		; 57 0D
	cli		; 58
	ora $0D59.w		; 0D 59 0D
	phy		; 5A
	ora $0D5B.w		; 0D 5B 0D
	jmp $0D5D0D.l		; 5C 0D 5D 0D
	xce		; FB
	sbc $5F0D5E.l,X		; FF 5E 0D 5F
	cpy #$FF.b		; C0 FF
	rti		; 40

	asl $41.b		; 06 41
	asl $42.b		; 06 42
	asl $43.b		; 06 43
	asl $44.b		; 06 44
	asl $45.b		; 06 45
	sta $4606FF.l,X		; 9F FF 06 46
	asl $47.b		; 06 47
	asl $4A.b		; 06 4A
	cpy #$30.b		; C0 30
	ora $0D60.w		; 0D 60 0D
	adc ($0D.b,X)		; 61 0D
	sbc $0D62FF.l,X		; FF FF 62 0D
	adc $0D.b,S		; 63 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	ror $0D.b		; 66 0D
	adc [$0D.b]		; 67 0D
	pla		; 68
	ora $0D69.w		; 0D 69 0D
	sbc $0D6AFB.l,X		; FF FB 6A 0D
	rtl		; 6B

	ora $0D6C.w		; 0D 6C 0D
	adc $6E0D.w		; 6D 0D 6E
	ora $C06F.w		; 0D 6F C0
	sbc $090608.l,X		; FF 08 06 09
	sbc $0A06DF.l,X		; FF DF 06 0A
	asl $0B.b		; 06 0B
	asl $0C.b		; 06 0C
	asl $0D.b		; 06 0D
	asl $0E.b		; 06 0E
	asl $0F.b		; 06 0F
	asl $5A.b		; 06 5A
	brk $FF.b		; 00 FF
	sbc $0D71FF.l,X		; FF FF 71 0D
	adc ($0D.b)		; 72 0D
	adc ($0D.b,S),Y		; 73 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	ror $0D.b,X		; 76 0D
	adc [$0D.b],Y		; 77 0D
	sei		; 78
	ora $B0FF.w		; 0D FF B0
	adc $7A0D.w,Y		; 79 0D 7A
	ora $0D7B.w		; 0D 7B 0D
	jmp ($7D0D.w,X)		; 7C 0D 7D
	cpy $0D.b		; C4 0D
	adc $C0FFFF.l,X		; 7F FF FF C0
	sbc $190618.l,X		; FF 18 06 19
	asl $1A.b		; 06 1A
	asl $1B.b		; 06 1B
	asl $1C.b		; 06 1C
	asl $1D.b		; 06 1D
	asl $1E.b		; 06 1E
	asl $1F.b		; 06 1F
	sbc $06FF.w,X		; FD FF 06
	phk		; 4B
	cpy #$FF.b		; C0 FF
	sta ($0D.b,X)		; 81 0D
	.db $82, $0D, $83		; 82 0D 83
	ora $0D84.w		; 0D 84 0D
	sta $0D.b		; 85 0D
	stx $0D.b		; 86 0D
	sbc $0D878F.l,X		; FF 8F 87 0D
	dey		; 88
	ora $0D89.w		; 0D 89 0D
	txa		; 8A
	ora $0D8B.w		; 0D 8B 0D
	sty $8D0D.w		; 8C 0D 8D
	sbc $C4FF.w,X		; FD FF C4
	sta $28FFC0.l		; 8F C0 FF 28
	asl $29.b		; 06 29
	asl $2A.b		; 06 2A
	asl $2B.b		; 06 2B
	asl $2C.b		; 06 2C
	asl $2D.b		; 06 2D
	asl $EF.b		; 06 EF
	sbc $2F062E.l,X		; FF 2E 06 2F
	asl $5B.b		; 06 5B
	cpy #$FF.b		; C0 FF
	sta ($0D.b),Y		; 91 0D
	sta ($0D.b)		; 92 0D
	sta ($0D.b,S),Y		; 93 0D
	sty $0D.b,X		; 94 0D
	sta $FF.b,X		; 95 FF
	adc $0D960D.l,X		; 7F 0D 96 0D
	sta [$0D.b],Y		; 97 0D
	tya		; 98
	ora $0D99.w		; 0D 99 0D
	txs		; 9A
	ora $0D9B.w		; 0D 9B 0D
	stz $9D0D.w		; 9C 0D 9D
	cpx $C4FF.w		; EC FF C4
	sta $38FFC0.l,X		; 9F C0 FF 38
	asl $39.b		; 06 39
	asl $3A.b		; 06 3A
	asl $3B.b		; 06 3B
	asl $3C.b		; 06 3C
	adc $3D06FE.l,X		; 7F FE 06 3D
	asl $3E.b		; 06 3E
	asl $3F.b		; 06 3F
	asl $4C.b		; 06 4C
	cpy #$70.b		; C0 70
	ora $0DA0.w		; 0D A0 0D
	sbc $0DA1FF.l,X		; FF FF A1 0D
	ldx #$0D.b		; A2 0D
	lda $0D.b,S		; A3 0D
	ldy $0D.b		; A4 0D
	lda $0D.b		; A5 0D
	ldx $0D.b		; A6 0D
	lda [$0D.b]		; A7 0D
	tay		; A8
	ora $BFFF.w		; 0D FF BF
	lda #$0D.b		; A9 0D
	tax		; AA
	ora $0DAB.w		; 0D AB 0D
	ldy $AD0D.w		; AC 0D AD
	ora $0DAE.w		; 0D AE 0D
	lda $FF7E0D.l		; AF 0D 7E FF
	sbc $4DFDBE.l,X		; FF BE FD 4D
	asl $4E.b,X		; 16 4E
	asl $4F.b,X		; 16 4F
	asl $50.b,X		; 16 50
	asl $51.b,X		; 16 51
	asl $52.b,X		; 16 52
	asl $53.b,X		; 16 53
	asl $54.b,X		; 16 54
	ora $5516FF.l		; 0F FF 16 55
	asl $56.b,X		; 16 56
	asl $EA.b,X		; 16 EA
	bra  13.b		; 80 0D
	bcs  13.b		; B0 0D
	lda ($0D.b),Y		; B1 0D
	lda ($FF.b)		; B2 FF
	sbc $0DB30D.l,X		; FF 0D B3 0D
	ldy $0D.b,X		; B4 0D
	lda $0D.b,X		; B5 0D
	ldx $0D.b,Y		; B6 0D
	lda [$0D.b],Y		; B7 0D
	clv		; B8
	ora $0DB9.w		; 0D B9 0D
	tsx		; BA
	sbc $BB0DF7.l,X		; FF F7 0D BB
	ora $0DBC.w		; 0D BC 0D
	lda $BE0D.w,X		; BD 0D BE
	ora $0DBF.w		; 0D BF 0D
	stx $FDC0.w		; 8E C0 FD
	eor $FF16.w,X		; 5D 16 FF
	sbc $5F165E.l,X		; FF 5E 16 5F
	asl $60.b,X		; 16 60
	asl $61.b,X		; 16 61
	asl $62.b,X		; 16 62
	asl $63.b,X		; 16 63
	asl $64.b,X		; 16 64
	asl $65.b,X		; 16 65
	asl $F8.b,X		; 16 F8
	sbc $90C066.l,X		; FF 66 C0 90
	ora $0DC0.w		; 0D C0 0D
	cmp ($0D.b,X)		; C1 0D
	rep #$0D		; C2 0D
	cmp $0D.b,S		; C3 0D
	cpy $FF.b		; C4 FF
	sbc $0DC50D.l,X		; FF 0D C5 0D
	dec $0D.b		; C6 0D
	cmp [$0D.b]		; C7 0D
	iny		; C8
	ora $0DC9.w		; 0D C9 0D
	dex		; CA
	ora $0DCB.w		; 0D CB 0D
	cpy $FF7F.w		; CC 7F FF
	ora $0DCD.w		; 0D CD 0D
	dec $CF0D.w		; CE 0D CF
	ora $369E.w		; 0D 9E 36
	inx		; E8
	tsb $090E.w		; 0C 0E 09
	ora $090C09.l		; 0F 09 0C 09
	inc $0DFF.w,X		; FE FF 0D
	tay		; A8
	inx		; E8
	asl A		; 0A
	bne  13.b		; D0 0D
	cmp ($0D.b),Y		; D1 0D
	cmp ($0D.b)		; D2 0D
	cmp ($0D.b,S),Y		; D3 0D
	pei ($0D.b)		; D4 0D
	cmp $0D.b,X		; D5 0D
	dec $FF.b,X		; D6 FF
	sbc $0DD70D.l,X		; FF 0D D7 0D
	cld		; D8
	ora $0DD9.w		; 0D D9 0D
	phx		; DA
	ora $0DDB.w		; 0D DB 0D
	jmp.w [$DD0D]		; DC 0D DD
	ora $FDDE.w		; 0D DE FD
	xce		; FB
	ora $F8DF.w		; 0D DF F8
	cpx #$0E.b		; E0 0E
	asl $1F09.w,X		; 1E 09 1F
	ora #$1C.b		; 09 1C
	ora #$1D.b		; 09 1D
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	cpx #$0D.b		; E0 0D
	sbc ($FF.b,X)		; E1 FF
	sbc $0DE20D.l,X		; FF 0D E2 0D
	sbc $0D.b,S		; E3 0D
	cpx $0D.b		; E4 0D
	sbc $0D.b		; E5 0D
	inc $0D.b		; E6 0D
	sbc [$0D.b]		; E7 0D
	inx		; E8
	ora $FFE9.w		; 0D E9 FF
	cmp [$0D.b],Y		; D7 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	cpx $ED0D.w		; EC 0D ED
	ora $0DEE.w		; 0D EE 0D
	sbc $11E0B8.l		; EF B8 E0 11
	sbc $FF0EF8.l,X		; FF F8 0E FF
	sbc $F10DF0.l,X		; FF F0 0D F1
	ora $0DF2.w		; 0D F2 0D
	sbc ($0D.b,S),Y		; F3 0D
	pea $F50D.w		; F4 0D F5
	ora $0DF6.w		; 0D F6 0D
	sbc [$0D.b],Y		; F7 0D
	sbc $0DF8BF.l,X		; FF BF F8 0D
	sbc $FA0D.w,Y		; F9 0D FA
	ora $0DFB.w		; 0D FB 0D
	jsr ($FD0D.w,X)		; FC 0D FD
	ora $0DFE.w		; 0D FE 0D
	sbc $C0EFFF.l,X		; FF FF EF C0
	sbc $911C90.l,X		; FF 90 1C 91
	trb $1C92.w		; 1C 92 1C
	sta ($1C.b,S),Y		; 93 1C
	sty $1C.b,X		; 94 1C
	sta $1C.b,X		; 95 1C
	dec $D0.b,X		; D6 D0
	and ($A0.b,S),Y		; 33 A0
	sbc $A11CFD.l,X		; FF FD 1C A1
	trb $1CA2.w		; 1C A2 1C
	lda $1C.b,S		; A3 1C
	ldy $1C.b		; A4 1C
	lda $C0.b		; A5 C0
	sed		; F8
	bit $B0.b,X		; 34 B0
	trb $1CB1.w		; 1C B1 1C
	lda $1CB2FF.l,X		; BF FF B2 1C
	lda ($1C.b,S),Y		; B3 1C
	ldy $1C.b,X		; B4 1C
	lda $C0.b,X		; B5 C0
	sed		; F8
	bit $C0.b,X		; 34 C0
	trb $1CC1.w		; 1C C1 1C
.INDEX 16
	rep #$1C		; C2 1C
	cmp $F7.b,S		; C3 F7
	sbc $C41C.w,X		; FD 1C C4
	trb $C0C5.w		; 1C C5 C0
	sed		; F8
	jsr $0270.w		; 20 70 02
	adc ($02.b),Y		; 71 02
	cpx $0FF8.w		; EC F8 0F
	bne  28.b		; D0 1C
	cmp ($1C.b),Y		; D1 1C
	lda $1CD2F7.l,X		; BF F7 D2 1C
	cmp ($1C.b,S),Y		; D3 1C
	pei ($1C.b)		; D4 1C
	cmp $C0.b,X		; D5 C0
	sed		; F8
	jsr $0280.w		; 20 80 02
	sta ($C0.b,X)		; 81 C0
	sed		; F8
	bpl -32.b		; 10 E0
	trb $AAFF.w		; 1C FF AA
	sbc ($1C.b,X)		; E1 1C
.INDEX 8
	sep #$1C		; E2 1C
	sbc $1C.b,S		; E3 1C
	cpx $1C.b		; E4 1C
	sbc $40.b		; E5 40
	sed		; F8
	bit $FF.b,X		; 34 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	rol $0000.w,X		; 3E 00 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	sta [$54.b]		; 87 54
	clc		; 18
	inc $55FC.w,X		; FE FC 55
	clc		; 18
	lsr $18.b,X		; 56 18
	eor [$18.b],Y		; 57 18
	cli		; 58
	inc $D07F.w,X		; FE 7F D0
	cli		; 58
	eor [$58.b],Y		; 57 58
	lsr $58.b,X		; 56 58
	eor $58.b,X		; 55 58
	mvn $E6,$FE		; 54 FE E6
	sbc $F8E0.w,X		; FD E0 F8
	and $3F.b		; 25 3F
	jsr ($1861.w,X)		; FC 61 18
	.db $62, $18, $63		; 62 18 63
	clc		; 18
	stz $FE.b		; 64 FE
	cli		; 58
	adc $58.b,S		; 63 58
	.db $62, $58, $FE		; 62 58 FE
	sbc ($61.b,X)		; E1 61
	cpx #$F8.b		; E0 F8
	bmi 109.b		; 30 6D
	clc		; 18
	ror $6F18.w		; 6E 18 6F
	clc		; 18
	bvs  -2.b		; 70 FE
	cli		; 58
	adc $580FF7.l		; 6F F7 0F 58
	ror $6D58.w		; 6E 58 6D
	cpx #$F8.b		; E0 F8
	bmi 121.b		; 30 79
	clc		; 18
	ply		; 7A
	clc		; 18
	tda		; 7B
	clc		; 18
	jmp ($FFBF.w,X)		; 7C BF FF
	inc $7B58.w,X		; FE 58 7B
	cli		; 58
	ply		; 7A
	cli		; 58
	adc $F8E0.w,Y		; 79 E0 F8
	plp		; 28
	eor $5A18.w,Y		; 59 18 5A
	clc		; 18
	tad		; 5B
	clc		; 18
	jmp $18F87F.l		; 5C 7F F8 18
	eor $5E18.w,X		; 5D 18 5E
	clc		; 18
	eor $FE6018.l,X		; 5F 18 60 FE
	cli		; 58
	eor $FF5E58.l,X		; 5F 58 5E FF
	cmp ($58.b,X)		; C1 58
	eor $5C58.w,X		; 5D 58 5C
	cli		; 58
	tad		; 5B
	cli		; 58
	phy		; 5A
	cli		; 58
	eor $E0FE.w,Y		; 59 FE E0
	sed		; F8
	asl $3FFF.w,X		; 1E FF 3F
	adc $18.b		; 65 18
	ror $18.b		; 66 18
	adc [$18.b]		; 67 18
	pla		; 68
	clc		; 18
	adc #$18.b		; 69 18
	ror A		; 6A
	clc		; 18
	rtl		; 6B

	clc		; 18
	jmp ($3FFC.w)		; 6C FC 3F
	inc $6B58.w,X		; FE 58 6B
	cli		; 58
	ror A		; 6A
	cli		; 58
	adc #$58.b		; 69 58
	pla		; 68
	cli		; 58
	adc [$58.b]		; 67 58
	ror $F8.b		; 66 F8
	sbc $F8E0E2.l,X		; FF E2 E0 F8
	jsr $1871.w		; 20 71 18
	adc ($18.b)		; 72 18
	adc ($18.b,S),Y		; 73 18
	stz $18.b,X		; 74 18
	adc $18.b,X		; 75 18
	ror $87.b,X		; 76 87
	sbc $187718.l,X		; FF 18 77 18
	sei		; 78
	inc $7758.w,X		; FE 58 77
	cli		; 58
	ror $58.b,X		; 76 58
	adc $58.b,X		; 75 58
	stz $07.b,X		; 74 07
	sbc $587358.l,X		; FF 58 73 58
	adc ($E2.b)		; 72 E2
	cpx #$F8.b		; E0 F8
	jsr $187D.w		; 20 7D 18
	ror $7F18.w,X		; 7E 18 7F
	clc		; 18
	sbc $1880F0.l,X		; FF F0 80 18
	sta ($18.b,X)		; 81 18
	.db $82, $18, $83		; 82 18 83
	clc		; 18
	sty $FE.b		; 84 FE
	cli		; 58
	sta $58.b,S		; 83 58
	sbc $5882E0.l,X		; FF E0 82 58
	sta ($58.b,X)		; 81 58
	bra  88.b		; 80 58
	adc $E27E58.l,X		; 7F 58 7E E2
	cpx #$F8.b		; E0 F8
	and ($98.b,X)		; 21 98
	sbc $987E0F.l,X		; FF 0F 7E 98
	adc $988098.l,X		; 7F 98 80 98
	sta ($98.b,X)		; 81 98
	.db $82, $98, $83		; 82 98 83
	tya		; 98
	sty $FF.b		; 84 FF
	and $83D8FE.l,X		; 3F FE D8 83
	cld		; D8
	.db $82, $D8, $81		; 82 D8 81
	cld		; D8
	bra -40.b		; 80 D8
	adc $D87ED8.l,X		; 7F D8 7E D8
	adc $FFF8.w,X		; 7D F8 FF
	inc $F8E0.w,X		; FE E0 F8
	asl $9871.w,X		; 1E 71 98
	adc ($98.b)		; 72 98
	adc ($98.b,S),Y		; 73 98
	stz $98.b,X		; 74 98
	adc $98.b,X		; 75 98
	ror $87.b,X		; 76 87
	sbc $987798.l,X		; FF 98 77 98
	sei		; 78
	inc $77D8.w,X		; FE D8 77
	cld		; D8
	ror $D8.b,X		; 76 D8
	adc $D8.b,X		; 75 D8
	stz $07.b,X		; 74 07
	sbc $D873D8.l,X		; FF D8 73 D8
	adc ($E2.b)		; 72 E2
	cpx #$F8.b		; E0 F8
	jsr $9865.w		; 20 65 98
	ror $98.b		; 66 98
	adc [$98.b]		; 67 98
	sbc $9868F0.l,X		; FF F0 68 98
	adc #$98.b		; 69 98
	ror A		; 6A
	tya		; 98
	rtl		; 6B

	tya		; 98
	jmp ($D8FE.w)		; 6C FE D8
	rtl		; 6B

	cld		; D8
	sbc $D86AE0.l,X		; FF E0 6A D8
	adc #$D8.b		; 69 D8
	pla		; 68
	cld		; D8
	adc [$D8.b]		; 67 D8
	ror $E2.b		; 66 E2
	cpx #$F8.b		; E0 F8
	jsr $FF59.w		; 20 59 FF
	ora $985A98.l,X		; 1F 98 5A 98
	tad		; 5B
	tya		; 98
	jmp $985D98.l		; 5C 98 5D 98
	lsr $5F98.w,X		; 5E 98 5F
	tya		; 98
	rts		; 60

	inc $FE1F.w,X		; FE 1F FE
	cld		; D8
	eor $D85ED8.l,X		; 5F D8 5E D8
	eor $5CD8.w,X		; 5D D8 5C
	cld		; D8
	tad		; 5B
	cld		; D8
	phy		; 5A
	pea $E287.w		; F4 87 E2
	cpx #$F8.b		; E0 F8
	jsr $EFE0.w		; 20 E0 EF
	tya		; 98
	ply		; 7A
	tya		; 98
	tda		; 7B
	tya		; 98
	jmp ($5FFE.w,X)		; 7C FE 5F
	sbc $D87BD8.l,X		; FF D8 7B D8
	ply		; 7A
	cld		; D8
	adc $FFE8.w,Y		; 79 E8 FF
	cpx #$F8.b		; E0 F8
	and [$6D.b]		; 27 6D
	tya		; 98
	ror $6F98.w		; 6E 98 6F
	tya		; 98
	beq  -5.b		; F0 FB
	bvs  -2.b		; 70 FE
	cld		; D8
	adc $D86ED8.l		; 6F D8 6E D8
	adc $F8E0.w		; 6D E0 F8
	bmi  97.b		; 30 61
	tya		; 98
	.db $62, $87, $DF		; 62 87 DF
	tya		; 98
	adc $98.b,S		; 63 98
	stz $FE.b		; 64 FE
	cld		; D8
	adc $D8.b,S		; 63 D8
	.db $62, $D8, $61		; 62 D8 61
	cpx #$F8.b		; E0 F8
	bmi  63.b		; 30 3F
	jsr ($9855.w,X)		; FC 55 98
	lsr $98.b,X		; 56 98
	eor [$98.b],Y		; 57 98
	cli		; 58
	inc $57D8.w,X		; FE D8 57
	cld		; D8
	lsr $D8.b,X		; 56 D8
	tax		; AA
	tax		; AA
	eor $E0.b,X		; 55 E0
	sed		; F8
	plp		; 28
	bpl -32.b		; 10 E0
	and [$E0.b],Y		; 37 E0
	inc $E010.w,X		; FE 10 E0
	and [$E0.b],Y		; 37 E0
	inc $E010.w,X		; FE 10 E0
	and [$E0.b],Y		; 37 E0
	inc $AAAA.w,X		; FE AA AA
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	tax		; AA
	tax		; AA
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	sed		; F8
	ora $2EE010.l		; 0F 10 E0 2E
	cpx #$F8.b		; E0 F8
	ora $2FE010.l		; 0F 10 E0 2F
	cpx #$F8.b		; E0 F8
	ora $2FE010.l		; 0F 10 E0 2F
	cpx #$F8.b		; E0 F8
	ora $10AAAA.l		; 0F AA AA 10
	cpx #$2F.b		; E0 2F
	cpx #$F8.b		; E0 F8
	ora $37E010.l		; 0F 10 E0 37
	cpx #$FE.b		; E0 FE
	bpl -32.b		; 10 E0
	and [$E0.b],Y		; 37 E0
	inc $E010.w,X		; FE 10 E0
	and [$E0.b],Y		; 37 E0
	inc $000A.w,X		; FE 0A 00
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	eor $00.b,S		; 43 00
	sbc $0720F8.l,X		; FF F8 20 07
	inc $3F03.w,X		; FE 03 3F
	inc $181F.w,X		; FE 1F 18
	jsr $17FC.w		; 20 FC 17
	ora $80F0FA.l		; 0F FA F0 80
	stx $F0.b		; 86 F0
	inc $FEFE.w,X		; FE FE FE
	jsr ($F4FC.w,X)		; FC FC F4
	sed		; F8
	inc $EA14.w,X		; FE 14 EA
	bit $78DE.w,X		; 3C DE 78
	inc $FE30.w,X		; FE 30 FE
	inc $FCCC.w,X		; FE CC FC
	rts		; 60

	sbc $7000F4.l,X		; FF F4 00 70
	jsr $1038.w		; 20 38 10
	bit $18.b,X		; 34 18
	trb $C008.w		; 1C 08 C0
	ora $E10707.l		; 0F 07 07 E1
	cmp ($01.b,S),Y		; D3 01
	ora $FA.b,S		; 03 FA
	ora $1F.b,S		; 03 1F
	asl $1836.w		; 0E 36 18
	cpy #$40.b		; C0 40
	sbc $E08031.l,X		; FF 31 80 E0
	cpy #$F0.b		; C0 F0
	brk $E8.b		; 00 E8
	beq -12.b		; F0 F4
	sec		; 38
	bit $0FF0.w,X		; 3C F0 0F
	stx $C8.b		; 86 C8
	cpx #$05.b		; E0 05
	ldy #$00.b		; A0 00
	stz $81FE.w,X		; 9E FE 81
	cpy $E0.b		; C4 E0
	jsr ($00F8.w,X)		; FC F8 00
	sed		; F8
	beq  -8.b		; F0 F8
	bmi -16.b		; 30 F0
	lda [$21.b],Y		; B7 21
	tsb $80.b		; 04 80
	inc $FE7F.w,X		; FE 7F FE
	and $FFA0FC.l,X		; 3F FC A0 FF
	sed		; F8
	cpx #$98.b		; E0 98
	brk $9C.b		; 00 9C
	php		; 08
	inc $0C.b,X		; F6 0C
	sbc $10F3E6.l,X		; FF E6 F3 10
	xce		; FB
	asl $FF.b		; 06 FF
	rts		; 60

	ora $7FFE06.l		; 0F 06 FE 7F
	ldx $FEF0.w,Y		; BE F0 FE
	and $1D0E77.l,X		; 3F 77 0E 1D
	asl $FC80.w		; 0E 80 FC
	adc $10F8.w,Y		; 79 F8 10
	jsr ($100F.w,X)		; FC 0F 10
	iny		; C8
	inc $6C.b,X		; F6 6C
	adc $F436.w		; 6D 36 F4
	cmp $0E03.w		; CD 03 0E
	bpl -126.b		; 10 82
	ora ($3E.b,X)		; 01 3E
	ora ($A0.b,X)		; 01 A0
	eor $1F.b,S		; 43 1F
	stx $10.b		; 86 10
	sta ($00.b,S),Y		; 93 00
	cpy #$FE.b		; C0 FE
	bra  -2.b		; 80 FE
	clv		; B8
	asl $9E3E.w		; 0E 3E 9E
	beq  -2.b		; F0 FE
	cpy #$3A.b		; C0 3A
	cop $F8.b		; 02 F8
	ora $7F3B5F.l,X		; 1F 5F 3B 7F
	and ($0C.b,S),Y		; 33 0C
	sbc $FE.b,S		; E3 FE
	tda		; 7B
	and ($FC.b),Y		; 31 FC
	and $00031E.l,X		; 3F 1E 03 00
	sbc $2EFD9F.l,X		; FF 9F FD 2E
	sbc $66DF26.l,X		; FF 26 DF 66
	lda $864DC6.l		; AF C6 4D 86
	inc $740C.w,X		; FE 0C 74
	sec		; 38
	inc $068F.w,X		; FE 8F 06
	adc $5B30.w,Y		; 79 30 5B
	and ($3E.b),Y		; 31 3E
	tas		; 1B
	and $0C161E.l		; 2F 1E 16 0C
	tsb $5DC7.w		; 0C C7 5D
	cpx #$1A.b		; E0 1A
	tsb $FE9E.w		; 0C 9E FE
	txs		; 9A
	tsb $FD77.w		; 0C 77 FD
	brk $38.b		; 00 38
	clv		; B8
	beq  10.b		; F0 0A
	brk $A0.b		; 00 A0
	clc		; 18
	sta ($0E.b,X)		; 81 0E
	inc $21E1.w,X		; FE E1 21
	mvn $24,$38		; 54 38 24
	pla		; 68
	beq -80.b		; F0 B0
	cpy #$74.b		; C0 74
	ora ($02.b,X)		; 01 02
	tsb $2A62.w		; 0C 62 2A
	rti		; 40

	asl $300C.w,X		; 1E 0C 30
	cpy #$EA.b		; C0 EA
	ldy $70.b,X		; B4 70
	brk $06.b		; 00 06
	stz $60.b		; 64 60
	beq -121.b		; F0 87
	cpy #$08.b		; C0 08
	jsr ($BE60.w,X)		; FC 60 BE
	jmp ($3C5E.w,X)		; 7C 5E 3C
	rol $0B4E.w,X		; 3E 4E 0B
	bne   3.b		; D0 03
	and $FC7C1F.l		; 2F 1F 7C FC
	plx		; FA
	stz $8C1E.w		; 9C 1E 8C
	sbc ($09.b),Y		; F1 09
	rts		; 60

	plx		; FA
	trb $FE9E.w		; 1C 9E FE
	sed		; F8
	pea $0078.w		; F4 78 00
	clc		; 18
	eor ($C8.b,X)		; 41 C8
	inc $1C2A.w,X		; FE 2A 1C
	inc $C4BF.w,X		; FE BF C4
	lsr $7738.w,X		; 5E 38 77
	dec A		; 3A
	rtl		; 6B

	and ($71.b),Y		; 31 71
	brk $7F.b		; 00 7F
	rol $7B.b,X		; 36 7B
	rol $7F.b,X		; 36 7F
	adc $F17878.l,X		; 7F 78 78 F1
	clv		; B8
	bvs -24.b		; 70 E8
	bvs -48.b		; 70 D0
	cpx #$E0.b		; E0 E0
	cpy #$00.b		; C0 00
	ora [$0F.b],Y		; 17 0F
	and $E0861C.l		; 2F 1C 86 E0
	tsa		; 3B
	trb $1BB8.w		; 1C B8 1B
	ora [$7C.b]		; 07 7C
	adc ($28.b,X)		; 61 28
	inc $0860.w,X		; FE 60 08
	cld		; D8
	bmi 106.b		; 30 6A
	beq -96.b		; F0 A0
	sbc ($08.b)		; F2 08
	sbc $FF62FE.l		; EF FE 62 FF
	sei		; 78
	ora [$01.b]		; 07 01
	phd		; 0B
	ora [$C0.b]		; 07 C0
	sbc ($30.b)		; F2 30
	adc $580014.l,X		; 7F 14 00 58
	bmi  -4.b		; 30 FC
	sei		; 78
	sed		; F8
	cpx #$A0.b		; E0 A0
	.db $62, $22, $F4		; 62 22 F4
	tsb $D4.b		; 04 D4
	beq  38.b		; F0 26
	sbc ($AA.b)		; F2 AA
	ply		; 7A
	jsr $12F1.w		; 20 F1 12
	inc $10.b,X		; F6 10
	pha		; 48
	sbc $FCFEFE.l,X		; FF FE FE FC
	dec $F2A8.w,X		; DE A8 F2
	brk $64.b		; 00 64
	jsr ($BCBE.w,X)		; FC BE BC
	dec $18F8.w		; CE F8 18
	ror A		; 6A
	jsr ($ACF8.w,X)		; FC F8 AC
	bvs 112.b		; 70 70
	rol $80.b,X		; 36 80
	ora $F2AB.w		; 0D AB F2
	bra -12.b		; 80 F4
	adc $7F3FFE.l,X		; 7F FE 3F 7F
	trb $F1.b		; 14 F1
	rti		; 40

	sbc ($E1.b)		; F2 E1
	lsr $80.b,X		; 56 80
	sbc ($FE.b)		; F2 FE
	inc $FEFC.w,X		; FE FC FE
	cpx #$20.b		; E0 20
	sbc ($3C.b)		; F2 3C
	cpx $FEF5.w		; EC F5 FE
	jsr ($0481.w,X)		; FC 81 04
	sei		; 78
	beq  23.b		; F0 17
	cpy $C0.b		; C4 C0
	brk $F2.b		; 00 F2
	lsr $80.b		; 46 80
	brk $CA.b		; 00 CA
	inc $FEFF.w,X		; FE FF FE
	brk $D8.b		; 00 D8
	.db $82, $F8, $1F		; 82 F8 1F
	sbc $F3FA1E.l,X		; FF 1E FA F3
	bpl  12.b		; 10 0C
	sbc $FC7FFE.l,X		; FF FE 7F FC
	bvs -24.b		; 70 E8
	ora #$FE.b		; 09 FE
	bra   2.b		; 80 02
	inc $609E.w,X		; FE 9E 60
	ldy #$EA.b		; A0 EA
	jsr ($E3D5.w,X)		; FC D5 E3
	.db $62, $3F, $FC		; 62 3F FC
	sbc #$62.b		; E9 62
	jsr ($70E8.w,X)		; FC E8 70
	bvc  32.b		; 50 20
	adc $8005F0.l,X		; 7F F0 05 80
	ldy $183E.w,X		; BC 3E 18
	ora $600A0C.l,X		; 1F 0C 0A 60
	sbc #$E2.b		; E9 E2
	sbc ($C3.b,X)		; E1 C3
	sbc $5E09F8.l,X		; FF F8 09 5E
	cpx #$80.b		; E0 80
	bne -32.b		; D0 E0
	sed		; F8
	rol $C220.w,X		; 3E 20 C2
	adc $2620.w,X		; 7D 20 26
	inx		; E8
	asl A		; 0A
	inc $3855.w,X		; FE 55 38
	and $FFF0.w,X		; 3D F0 FF
	pla		; 68
	bmi -48.b		; 30 D0
	rts		; 60

	and $F2DE3A.l,X		; 3F 3A DE F2
	asl $1C04.w		; 0E 04 1C
	php		; 08
	bit $A048.w		; 2C 48 A0
	sbc ($17.b)		; F2 17
	ora $20BF69.l		; 0F 69 BF 20
	sbc $E2DEFC.l,X		; FF FC DE E2
	plx		; FA
	jmp.w [$1FE1]		; DC E1 1F
	ora $391936.l		; 0F 36 19 39
	inc $F6A0.w,X		; FE A0 F6
	sbc ($80.b,X)		; E1 80
	inc $B8.b,X		; F6 B8
	beq -12.b		; F0 F4
	sed		; F8
	jmp.w [$0C38]		; DC 38 0C
	jsr $0EEB.w		; 20 EB 0E
	ora ($80.b),Y		; 11 80
	sbc ($08.b),Y		; F1 08
	inc $1C2F.w,X		; FE 2F 1C
	dec $0B.b,X		; D6 0B
	cpx #$80.b		; E0 80
	inc $B03F.w		; EE 3F B0
	ldx $38D4.w		; AE D4 38
	inx		; E8
	cpx #$EB.b		; E0 EB
	ora $04A000.l		; 0F 00 A0 04
	stz $08FC.w,X		; 9E FC 08
	tsx		; BA
	sbc ($8C.b),Y		; F1 8C
	cop $F8.b		; 02 F8
	sep #$04		; E2 04
	inc $F1C6.w,X		; FE C6 F1
	lsr $2D11.w,X		; 5E 11 2D
	bra   6.b		; 80 06
	inc $0E15.w,X		; FE 15 0E
	tsx		; BA
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	cop $DC.b		; 02 DC
	.db $62, $80, $A6		; 62 80 A6
	jsr $1A2C.w		; 20 2C 1A
	inc $000C.w,X		; FE 0C 00
	cop $82.b		; 02 82
	sbc ($01.b),Y		; F1 01
	adc $FE.b		; 65 FE
	sed		; F8
	trb $AA6F.w		; 1C 6F AA
	inx		; E8
	eor ($1E.b),Y		; 51 1E
	jmp ($F180.w,X)		; 7C 80 F1
	ldx $7E7C.w,Y		; BE 7C 7E
	inc $F1E0.w		; EE E0 F1
	ora ($2A.b,X)		; 01 2A
.ACCU 16
	rep #$E3		; C2 E3
	jsr ($1FBC.w,X)		; FC BC 1F
	cpy #$F3.b		; C0 F3
	stz $28F3.w		; 9C F3 28
	xba		; EB
	stz $F336.w,X		; 9E 36 F3
	cpx #$F8.b		; E0 F8
	ora $42.b,X		; 15 42
	cpx #$FD.b		; E0 FD
	bit $EC.b		; 24 EC
	tda		; 7B
	sta ($0F.b,S),Y		; 93 0F
	ora [$7D.b]		; 07 7D
	rol $C0B2.w,X		; 3E B2 C0
	inc $F0EC.w,X		; FE EC F0
	plx		; FA
	trb $382B.w		; 1C 2B 38
	ror A		; 6A
	ora $4406.w		; 0D 06 44
	beq   9.b		; F0 09
	asl $EA.b,X		; 16 EA
	lsr $F6E4.w,X		; 5E E4 F6
	inc $9470.w		; EE 70 94
	bit $4078.w		; 2C 78 40
	cpx #$EB.b		; E0 EB
	ldy #$FE.b		; A0 FE
	inc $BF0B.w,X		; FE 0B BF
	cpx $747E.w		; EC 7E 74
	sbc $DC003C.l,X		; FF 3C 00 DC
	sec		; 38
	jmp ($8054.w)		; 6C 54 80
	sed		; F8
	ora #$0E75.w		; 09 75 0E
	and $1660.w		; 2D 60 16
	nop		; EA
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	cpx #$D8.b		; E0 D8
	sbc ($FC.b,X)		; E1 FC
	clv		; B8
	jmp ($F5BF.w,X)		; 7C BF F5
	ora ($F2.b)		; 12 F2
	tad		; 5B
	bmi 123.b		; 30 7B
	and ($7B.b),Y		; 31 7B
	ror A		; 6A
	sbc ($79.b,S),Y		; F3 79
	bvs -21.b		; 70 EB
	asl $F8F2.w,X		; 1E F2 F8
	bpl -21.b		; 10 EB
	sbc $602070.l,X		; FF 70 20 60
	trb $E1.b		; 14 E1
	bra -20.b		; 80 EC
	sbc ($01.b,S),Y		; F3 01
	sbc [$61.b],Y		; F7 61
	sbc $7DBB67.l,X		; FF 67 BB 7D
	adc $3103FE.l,X		; 7F FE 03 31
	brk $E6.b		; 00 E6
	beq -128.b		; F0 80
	inx		; E8
	beq -36.b		; F0 DC
	clv		; B8
	nop		; EA
	stz $3C2E.w		; 9C 2E 3C
	tsb $2BFE.w		; 0C FE 2B
	trb $193F.w		; 1C 3F 19
	inc $3956.w,X		; FE 56 39
	ora $C280.w,Y		; 19 80 C2
	bvs -58.b		; 70 C6
	cpx $66.b		; E4 66
	inc $9F.b,X		; F6 9F
	jmp $A0FC7E.l		; 5C 7E FC A0
	sbc ($0D.b,X)		; E1 0D
	pld		; 2B
	ora $3E1E3D.l,X		; 1F 3D 1E 3E
	clc		; 18
	sec		; 38
	sbc ($E3.b,X)		; E1 E3
	rti		; 40

	ldy $FA.b,X		; B4 FA
	jsr ($8E7D.w,X)		; FC 7D 8E
	sta $071556.l		; 8F 56 15 07
	sbc $0E.b,X		; F5 0E
	nop		; EA
	trb $D4F4.w		; 1C F4 D4
	dex		; CA
	inx		; E8
	asl A		; 0A
	cpx #$FC.b		; E0 FC
	rol $FE.b,X		; 36 FE
	and $2F0E.w,X		; 3D 0E 2F
	tay		; A8
	phx		; DA
	bit $F0EC.w,X		; 3C EC F0
	beq  68.b		; F0 44
	stp		; DB
	inc $F166.w,X		; FE 66 F1
	bra -11.b		; 80 F5
	pea $C21D.w		; F4 1D C2
	cmp ($FE.b)		; D2 FE
	sei		; 78
	bra  -8.b		; 80 F8
	beq 120.b		; F0 78
	ldy $16F1.w,X		; BC F1 16
	ora $82D57E.l		; 0F 7E D5 82
	bit $18.b,X		; 34 18
	bit $3F10.w,X		; 3C 10 3F
	clc		; 18
	cpx #$EC.b		; E0 EC
	sty $3CE4.w		; 8C E4 3C
	jsr ($F240.w,X)		; FC 40 F2
	sbc $183CB7.l,X		; FF B7 3C 18
	eor [$38.b],Y		; 57 38
	adc $067D33.l,X		; 7F 33 7D 06
	asl $0D04.w		; 0E 04 0D
	asl $FA.b		; 06 FA
	nop		; EA
	inc $5FFF.w,X		; FE FF 5F
	cop $F3.b		; 02 F3
	sed		; F8
	bvs  -4.b		; 70 FC
	sei		; 78
	dec $B66C.w,X		; DE 6C B6
	iny		; C8
	jmp.w [$7A00]		; DC 00 7A
	and ($7D.b),Y		; 31 7D
	cpx $D9.b		; E4 D9
	jmp ($DE85.w,X)		; 7C 85 DE
	and ($7E.b,S),Y		; 33 7E
	and ($55.b),Y		; 31 55
	tay		; A8
	sbc #$8C.b		; E9 8C
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	asl A		; 0A
	sbc $E2A27E.l,X		; FF 7E A2 E2
	.db $82, $E9, $FF		; 82 E9 FF
	adc $3B.b,X		; 75 3B
	lda $6FFA7B.l,X		; BF 7B FA 6F
	sbc $66F00F.l,X		; FF 0F F0 66
	sbc $6DBB65.l,X		; FF 65 BB 6D
	cpx #$3A.b		; E0 3A
	lsr $9E8C.w,X		; 5E 8C 9E
	sbc ($5F.b,X)		; E1 5F
	tsb $FEFE.w		; 0C FE FE
	jsr ($9C7A.w,X)		; FC 7A 9C
	adc $9E.b,X		; 75 9E
	sbc $80F7F6.l		; EF F6 F7 80
	sbc [$DF.b],Y		; F7 DF
	lda $3EF19E.l,X		; BF 9E F1 3E
	ror $0F07.w,X		; 7E 07 0F
	bra  -9.b		; 80 F7
	jmp ($BA00.w,X)		; 7C 00 BA
	jmp ($CEFD.w,X)		; 7C FD CE
	cmp $40BC30.l		; CF 30 BC 40
	sbc ($DE.b,S),Y		; F3 DE
	tsa		; 3B
	ora [$62.b]		; 07 62
	adc $395719.l,X		; 7F 19 57 39
	plx		; FA
	plb		; AB
	cpy #$F2.b		; C0 F2
	jsl $F2C4F2.l		; 22 F2 C4 F2
	inc $FD8C.w,X		; FE 8C FD
	stx $EF.b		; 86 EF
	stx $E0.b		; 86 E0
	dec $DCE2.w,X		; DE E2 DC
	tax		; AA
	eor $00.b,X		; 55 00
	cmp ($82.b)		; D2 82
	cpx $E2.b		; E4 E2
	jmp.w [$CCF0]		; DC F0 CC
	brk $F1.b		; 00 F1
	rol $EAC2.w,X		; 3E C2 EA
	rti		; 40

	inc $E2.b,X		; F6 E2
	dex		; CA
	sed		; F8
	ror A		; 6A
	inc $74.b		; E6 74
	sec		; 38
	ply		; 7A
	bit $607D.w,X		; 3C 7D 60
	cmp ($60.b),Y		; D1 60
	inc $58.b		; E6 58
	nop		; EA
	inc A		; 1A
	adc $EB.b,X		; 75 EB
	cmp $84F1.w,X		; DD F1 84
	nop		; EA
	lsr $D9.b		; 46 D9
	cpy #$A0.b		; C0 A0
	cpx #$E9.b		; E0 E9
	cld		; D8
	cmp $E9A2EA.l,X		; DF EA A2 E9
	asl A		; 0A
	ora $0704.w,X		; 1D 04 07
	ora $D8.b,X		; 15 D8
	sbc ($5C.b),Y		; F1 5C
	sec		; 38
	cpy $E65E.w		; CC 5E E6
	clc		; 18
	sei		; 78
	rol A		; 2A
	dec $60D0.w,X		; DE D0 60
	tay		; A8
	bvs -112.b		; 70 90
	eor $51FD84.l,X		; 5F 84 FD 51
	rts		; 60

	jmp ($FFE2.w,X)		; 7C E2 FF
	inc $5284.w,X		; FE 84 52
	pei ($7C.b)		; D4 7C
	brk $F4.b		; 00 F4
	asl $E2.b		; 06 E2
	jsr ($E300.w,X)		; FC 00 E3
	brk $F2.b		; 00 F2
	bpl  17.b		; 10 11
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($FEFA.w,X)		; FC FA FE
	cmp $0E1F06.l,X		; DF 06 1F 0E
	and $3E571E.l		; 2F 1E 57 3E
	adc $267F36.l		; 6F 36 7F 26
	and $F4F406.l		; 2F 06 F4 F4
	sbc $063F17.l,X		; FF 17 3F 06
	adc $FF3E.w,X		; 7D 3E FF
	jmp $4EFF.w		; 4C FF 4E
	adc $003F3A.l,X		; 7F 3A 3F 00
	ldx $E9.b		; A6 E9
	sbc ($02.b,X)		; E1 02
	inc $5EA8.w,X		; FE A8 5E
	and ($2D.b,S),Y		; 33 2D
	.db $82, $D1, $FF		; 82 D1 FF
	cpy #$FF.b		; C0 FF
	asl $4FFE.w		; 0E FE 4F
	stx $95.b		; 86 95
	asl $0C9E.w		; 0E 9E 0C
	jmp ($E818.w,X)		; 7C 18 E8
	jsr $7084.w		; 20 84 70
	mvn $EA,$8C		; 54 8C EA
	cpx #$7E.b		; E0 7E
	bra -80.b		; 80 B0
	sbc ($32.b,X)		; E1 32
	jsr ($3957.w,X)		; FC 57 39
	cpx #$DA.b		; E0 DA
	sed		; F8
	inc $FCF0.w,X		; FE F0 FC
	adc $7E382B.l,X		; 7F 2B 38 7E
	bit $36EF.w,X		; 3C EF 36
	phx		; DA
	cpx $EC.b		; E4 EC
	jsr $2CE7.w		; 20 E7 2C
	tya		; 98
	cmp $E220.w,Y		; D9 20 E2
	pla		; 68
	ora [$D8.b]		; 07 D8
	lsr $EA.b,X		; 56 EA
	.db $62, $D2, $70		; 62 D2 70
	rti		; 40

	sbc $39.b,S		; E3 39
	bpl  -2.b		; 10 FE
	lda $F2C0FF.l,X		; BF FF C0 F2
	adc $5E30.w,X		; 7D 30 5E
	and $7F.b,X		; 35 7F
	jsr $FCF1.w		; 20 F1 FC
	iny		; C8
	lsr $EC.b,X		; 56 EC
	sbc $FF66.w,X		; FD 66 FF
	sbc [$0B.b]		; E7 0B
	ror $7F.b		; 66 7F
	inc $D7.b		; E6 D7
	cpx #$38.b		; E0 38
	bpl  16.b		; 10 10
	sed		; F8
	bne  12.b		; D0 0C
	bmi 124.b		; 30 7C
	dec $B4.b,X		; D6 B4
	rol $4C1C.w		; 2E 1C 4C
	ora [$0E.b],Y		; 17 0E
	asl $0404.w		; 0E 04 04
	ora $FB.b		; 05 FB
	ldy $F2.b		; A4 F2
	bra  -8.b		; 80 F8
	asl $800C.w		; 0E 0C 80
	sed		; F8
	phd		; 0B
	cpx $0C.b		; E4 0C
	cmp $010F.w,Y		; D9 0F 01
	ora $0F050F.l,X		; 1F 0F 05 0F
	and [$19.b],Y		; 37 19
	tsa		; 3B
	ora ($FC.b),Y		; 11 FC
	asl $D960.w,X		; 1E 60 D9
	tsb $7F80.w		; 0C 80 7F
	cop $A8.b		; 02 A8
	beq -32.b		; F0 E0
	clv		; B8
	beq 124.b		; F0 7C
	tya		; 98
	ldy $18.b		; A4 18
	ora $91AB.w		; 0D AB 91
	cmp ($42.b)		; D2 42
	dec $02.b,X		; D6 02
	cld		; D8
	ora ($2F.b,X)		; 01 2F
	cpx #$F1.b		; E0 F1
	ldy $E2.b		; A4 E2
	lda $C1E65E.l,X		; BF 5E E6 C1
	cpy $CCBE.w		; CC BE CC
	inc $EE8C.w,X		; FE 8C EE
	ora $E000E1.l,X		; 1F E1 00 E0
	ora #$1F.b		; 09 1F
	asl $3F.b		; 06 3F
	sbc $61F2.w,X		; FD F2 61
	bvc -32.b		; 50 E0
	cmp $3AE5.w,X		; DD E5 3A
	trb $A07A.w		; 1C 7A A0
	cpx #$1F.b		; E0 1F
	cpy #$F8.b		; C0 F8
	phd		; 0B
	sta ($7C.b)		; 92 7C
	sed		; F8
	ldy #$D8.b		; A0 D8
	ora $42FC.w		; 0D FC 42
	pei ($15.b)		; D4 15
	asl $077F.w		; 0E 7F 07
	adc ($F0.b,X)		; 61 F0
	phx		; DA
	nop		; EA
	.db $82, $F0, $60		; 82 F0 60
	trb $EA82.w		; 1C 82 EA
	cmp $C1FE.w		; CD FE C1
	sbc $CE0EF7.l,X		; FF F7 0E CE
	tay		; A8
.ACCU 8
.INDEX 8
	sep #$79		; E2 79
	brk $7B.b		; 00 7B
	bmi 125.b		; 30 7D
	and ($7A.b,S),Y		; 33 7A
	and [$4B.b],Y		; 37 4B
	sbc $7B3C77.l,X		; FF 77 3C 7B
	bcc -71.b		; 90 B9
	rts		; 60

	sed		; F8
	cpy #$F4.b		; C0 F4
	sed		; F8
	inc $F5DC.w		; EE DC F5
	plb		; AB
	eor ($CE.b)		; 52 CE
	sbc $CEA0C6.l		; EF C6 A0 CE
	inc $80FE.w,X		; FE FE 80
	inc $F61C.w,X		; FE 1C F6
	bra  14.b		; 80 0E
	and $A0F4.w		; 2D F4 A0
	tyx		; BB
	ply		; 7A
	sbc ($3F.b)		; F2 3F
	ldy #$CB.b		; A0 CB
	dec $FEB0.w,X		; DE B0 FE
	sbc ($B0.b),Y		; F1 B0
	rts		; 60

	sed		; F8
	and $5F8070.l,X		; 3F 70 80 5F
	and ($75.b),Y		; 31 75
	and $77.b,S		; 23 77
	and $7E.b,S		; 23 7E
	and [$65.b]		; 27 65
	rol $7FC4.w,X		; 3E C4 7F
	and ($1D.b)		; 32 1D
	sty $DE.b,X		; 94 DE
	ldy $9E7F.w,X		; BC 7F 9E
	tyx		; BB
	asl $38D7.w,X		; 1E D7 38
	brk $4F.b		; 00 4F
	jmp ($74E0.w,X)		; 7C E0 74
	cmp ($00.b,X)		; C1 00
	adc $EF5026.l,X		; 7F 26 50 EF
	inc $1E08.w,X		; FE 08 1E
	cpx $E1.b		; E4 E1
	rti		; 40

	sbc ($0B.b)		; F2 0B
	asl $1F.b		; 06 1F
	lsr $EAD3.w,X		; 5E D3 EA
	inc $2F.b,X		; F6 2F
	trb $D220.w		; 1C 20 D2
	jsr ($E7A0.w,X)		; FC A0 E7
	inc $BA64.w,X		; FE 64 BA
	jmp ($3855.w)		; 6C 55 38
	and $E3A0.w,Y		; 39 A0 E3
	cli		; 58
	bcc  -2.b		; 90 FE
	asl $EA.b,X		; 16 EA
	jmp.w [$D13E]		; DC 3E D1
	ldy #$08.b		; A0 08
	jsr ($5DFA.w,X)		; FC FA 5D
	inc $600A.w,X		; FE 0A 60
	cmp ($F8.b,S),Y		; D3 F8
	cpx #$FC.b		; E0 FC
	php		; 08
	asl $D12C.w		; 0E 2C D1
	asl $0C.b,X		; 16 0C
	cpy #$DC.b		; C0 DC
	and $F8.b		; 25 F8
	sty $C9.b		; 84 C9
	cpx #$DD.b		; E0 DD
	inc $8F80.w,X		; FE 80 8F
	asl $B5.b		; 06 B5
	asl $FE33.w		; 0E 33 FE
	plx		; FA
	bit $3E7C.w,X		; 3C 7C 3E
	inc $7D00.w,X		; FE 00 7D
	sec		; 38
	adc [$38.b],Y		; 77 38
	sbc ($02.b,X)		; E1 02
	adc $570232.l,X		; 7F 32 02 57
	sec		; 38
	dec A		; 3A
	cld		; D8
	lda $0080.w,Y		; B9 80 00
	brk $0E.b		; 00 0E
	inc $0408.w,X		; FE 08 04
	trb $FA.b		; 14 FA
	cpy $B8.b		; C4 B8
	cpy #$D3.b		; C0 D3
	cpy $2A1F.w		; CC 1F 2A
	sbc #$6F.b		; E9 6F
	and ($73.b),Y		; 31 73
	cmp [$00.b],Y		; D7 00
	and ($6D.b,X)		; 21 6D
	and ($3E.b,S),Y		; 33 3E
	asl $E8B9.w,X		; 1E B9 E8
	sbc ($80.b,X)		; E1 80
	jsl $9A17FF.l		; 22 FF 17 9A
	ldy $5CF0.w,X		; BC F0 5C
	clv		; B8
	jsr ($9C10.w,X)		; FC 10 9C
	brk $3D.b		; 00 3D
	tas		; 1B
	dec A		; 3A
	rti		; 40

	cmp $A06A.w,Y		; D9 6A A0
	bit $3C.b		; 24 3C
	bra -67.b		; 80 BD
	ror A		; 6A
	sbc ($38.b),Y		; F1 38
	stz $60.b		; 64 60
	plb		; AB
	tsx		; BA
	pea $D838.w		; F4 38 D8
	cpx #$B9.b		; E0 B9
	bra -64.b		; 80 C0
	ora ($F0.b),Y		; 11 F0
	sed		; F8
	ora $5AB466.l		; 0F 66 B4 5A
	tsx		; BA
	asl $0007.w		; 0E 07 00
	.db $82, $C0, $B2		; 82 C0 B2
	jmp $84BC.w		; 4C BC 84
	dex		; CA
	.db $82, $0E, $86		; 82 0E 86
	sed		; F8
	phx		; DA
	cpy #$D8.b		; C0 D8
	phd		; 0B
	adc $20DE07.l,X		; 7F 07 DE 20
	pea $E670.w		; F4 70 E6
	eor $9470DF.l,X		; 5F DF 70 94
	sed		; F8
	jmp ($BC98.w,X)		; 7C 98 BC
	cpy #$F8.b		; C0 F8
	bit $D880.w		; 2C 80 D8
	ora $57DEED.l		; 0F ED DE 57
	stx $A880.w		; 8E 80 A8
	ora #$30.b		; 09 30
	nop		; EA
	rol $06E2.w,X		; 3E E2 06
	ora [$C0.b],Y		; 17 C0
	jsr $80DA.w		; 20 DA 80
	cpy $55C0.w		; CC C0 55
	dey		; 88
	brk $BE.b		; 00 BE
	cmp ($D1.b),Y		; D1 D1
	dey		; 88
	cmp ($A6.b,S),Y		; D3 A6
	cmp #$DA.b		; C9 DA
	asl A		; 0A
	tax		; AA
	and ($DE.b,X)		; 21 DE
	brk $F6.b		; 00 F6
	cpx $F2.b		; E4 F2
	phx		; DA
	cmp $A83C.w,Y		; D9 3C A8
	asl A		; 0A
	ora $280FFE.l,X		; 1F FE 0F 28
	iny		; C8
	jsr ($DEC0.w,X)		; FC C0 DE
	ldy $1EFE.w,X		; BC FE 1E
	sbc ($F1.b)		; F2 F1
	tsx		; BA
	sbc $C4A0EC.l,X		; FF EC A0 C4
	rts		; 60

	ldx $B8.b,Y		; B6 B8
	bvs  96.b		; 70 60
	ldy $3B.b,X		; B4 3B
	trb $307C.w		; 1C 7C 30
	sbc ($60.b,S),Y		; F3 60
	eor [$F5.b],Y		; 57 F5
	ora $7A2F23.l,X		; 1F 23 2F 7A
	cmp $C2.b		; C5 C2
	sbc ($9E.b)		; F2 9E
	tsb $8C5E.w		; 0C 5E 8C
	tax		; AA
	jmp.w [$F8D4]		; DC D4 F8
	rti		; 40

	cmp $42.b,S		; C3 42
	cpy #$C0.b		; C0 C0
	cld		; D8
	ora $3FFCC0.l		; 0F C0 FC 3F
	inc $D21A.w,X		; FE 1A D2
	eor $2B.b,X		; 55 2B
	inc $C0AB.w		; EE AB C0
	beq  96.b		; F0 60
	bvc -74.b		; 50 B6
	lda $FCA0.w,Y		; B9 A0 FC
	.db $82, $F4, $05		; 82 F4 05
	sta $80.b		; 85 80
	sbc ($1E.b)		; F2 1E
	rep #$01		; C2 01
	cpy #$F8.b		; C0 F8
	ora $FECAA4.l		; 0F A4 CA FE
	ora ($7C.b,X)		; 01 7C
	ora $C406.w		; 0D 06 C4
	dec $AAA0.w,X		; DE A0 AA
	rol $1D1D.w		; 2E 1D 1D
	phd		; 0B
	cpy $7B.b		; C4 7B
	plp		; 28
	.db $82, $0B, $07		; 82 0B 07
	asl $E0.b		; 06 E0
	sbc #$DE.b		; E9 DE
	jsr ($35FC.w,X)		; FC FC 35
	pha		; 48
	tsb $C1.b		; 04 C1
	cpx #$A9.b		; E0 A9
	cpx #$CD.b		; E0 CD
	ora $2C.b,X		; 15 2C
	tay		; A8
	cmp ($FE.b,S),Y		; D3 FE
	pea $C04C.w		; F4 4C C0
	tax		; AA
	ldy #$C0.b		; A0 C0
	eor ($E0.b,S),Y		; 53 E0
	sbc [$62.b],Y		; F7 62
	inc $76AD.w,X		; FE AD 76
	phy		; 5A
	ora $FC.b,S		; 03 FC
	bit $003C.w,X		; 3C 3C 00
	dex		; CA
	asl A		; 0A
	and $193F1B.l,X		; 3F 1B 3F 19
	and $1BAFF5.l		; 2F F5 AF 1B
	asl $62.b,X		; 16 62
	tyx		; BB
	plp		; 28
	tsx		; BA
	jsr ($BC58.w,X)		; FC 58 BC
	cld		; D8
	stz $98.b,X		; 74 98
	inx		; E8
	rol $6AB9.w,X		; 3E B9 6A
	ora $81.b		; 05 81
	lda ($90.b),Y		; B1 90
	cmp [$80.b]		; C7 80
	bcs  15.b		; B0 0F
	phy		; 5A
	cmp ($68.b)		; D2 68
	bmi -91.b		; 30 A5
	jmp $5082D2.l		; 5C D2 82 50
	eor ($3E.b),Y		; 51 3E
	rti		; 40

	cpy $5C.b		; C4 5C
	ldy $96.b		; A4 96
	sbc #$B2.b		; E9 B2
	ldy #$F0.b		; A0 F0
	ora #$B5.b		; 09 B5
	nop		; EA
	cpy #$D9.b		; C0 D9
	ldy #$A3.b		; A0 A3
	cpx #$FC.b		; E0 FC
	rts		; 60

	trb $60A3.w		; 1C A3 60
	ldy $BC.b,X		; B4 BC
	tya		; 98
	phd		; 0B
	beq  -4.b		; F0 FC
	bcs 127.b		; B0 7F
	eor $B800.w,X		; 5D 00 B8
	bpl -12.b		; 10 F4
	clc		; 18
	cpx $FCD8.w		; EC D8 FC
	cpx #$99.b		; E0 99
	dec $3BFE.w,X		; DE FE 3B
	ora [$98.b]		; 07 98
	cmp ($BD.b,X)		; C1 BD
	brk $82.b		; 00 82
	sbc $68E25C.l,X		; FF 5C E2 68
	beq -44.b		; F0 D4
	bpl -45.b		; 10 D3
	asl A		; 0A
	beq  25.b		; F0 19
	ldx $1C.b		; A6 1C
	ora $0D1E0C.l,X		; 1F 0C 1E 0D
	and [$A0.b],Y		; 37 A0
	rts		; 60

	phd		; 0B
	cpx $A4.b		; E4 A4
	bcs  96.b		; B0 60
.ACCU 16
	rep #$EA		; C2 EA
	bit $7F.b,X		; 34 7F
	cmp $AF.b		; C5 AF
	eor ($DE.b),Y		; 51 DE
	and $3F00.w,X		; 3D 00 3F
	clc		; 18
	trb $EA.b		; 14 EA
	cpx #$B8.b		; E0 B8
	asl A		; 0A
	cpy #$14.b		; C0 14
	sta $C2D5DA.l,X		; 9F DA D5 C2
	jmp ($E0AF.w,X)		; 7C AF E0
	jmp.w [$FCBE]		; DC BE FC
	jmp.w [$F8EA]		; DC EA F8
	jmp ($0EC1.w,X)		; 7C C1 0E
	and $7F7F.w,X		; 3D 7F 7F
	clc		; 18
	and $0F1A19.l		; 2F 19 1A 0F
	ora [$0E.b],Y		; 17 0E
	asl A		; 0A
	bcs -45.b		; B0 D3
	cli		; 58
	bmi -76.b		; 30 B4
	clc		; 18
	ldy $9018.w,X		; BC 18 90
	ldx $27FC.w		; AE FC 27
	txy		; 9B
	asl $06.b		; 06 06
	inc A		; 1A
	tsb $BC8B.w		; 0C 8B BC
	tyx		; BB
	brk $40.b		; 00 40
	pea $70E8.w		; F4 E8 70
	jsl $70A8CA.l		; 22 CA A8 70
	bra -78.b		; 80 B2
	trb $800A.w		; 1C 0A 80
	clc		; 18
	dec $D2.b		; C6 D2
	rol $09A0.w,X		; 3E A0 09
	dex		; CA
	inx		; E8
	inc $8615.w,X		; FE 15 86
	rol $F8A1.w,X		; 3E A1 F8
	rti		; 40

	ldy $DC78.w,X		; BC 78 DC
	sec		; 38
	jmp ($990A.w,X)		; 7C 0A 99
	bra -95.b		; 80 A1
.INDEX 16
	rep #$17		; C2 17
	php		; 08
	tas		; 1B
	inc $1F2E.w,X		; FE 2E 1F
	ora $0E.b,X		; 15 0E
	asl $C128.w		; 0E 28 C1
	brk $60.b		; 00 60
	lsr A		; 4A
	rol A		; 2A
	stz $F4FE.w,X		; 9E FE F4
	sec		; 38
	eor $D0.b,X		; 55 D0
	cpy #$C2CA.w		; C0 CA C2
	clv		; B8
	ora $F178.w		; 0D 78 F1
	bra -19.b		; 80 ED
	stz $A242.w,X		; 9E 42 A2
.ACCU 16
	rep #$E1		; C2 E1
	eor $89.b,X		; 55 89
	asl $FA37.w,X		; 1E 37 FA
	cmp ($C2.b),Y		; D1 C2
	phx		; DA
	cld		; D8
	phx		; DA
	bra -22.b		; 80 EA
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sbc ($C6.b,X)		; E1 C6
	clv		; B8
	ldy $1C3F.w,X		; BC 3F 1C
	tsa		; 3B
	trb $1A3F.w		; 1C 3F 1A
	asl $2B.b		; 06 2B
	trb $803E.w		; 1C 3E 80
	asl $DBE0.w,X		; 1E E0 DB
	pea $FCD8.w		; F4 D8 FC
	cld		; D8
	jsr ($BA28.w,X)		; FC 28 BA
	jsr $E49E.w		; 20 9E E4
	cpx #$DA.b		; E0 DA
	brk $D6.b		; 00 D6
	and $1B.b,X		; 35 1B
	brk $D2.b		; 00 D2
	tsb $D200.w		; 0C 00 D2
	jsr ($E2EA.w,X)		; FC EA E2
	bcs -32.b		; B0 E0
	sei		; 78
	bcs  -8.b		; B0 F8
	jsr $F221.w		; 20 21 F2
	cpy #$90.b		; C0 90
	ora $0AF13A.l		; 0F 3A F1 0A
	rtl		; 6B

	php		; 08
	and $76FF0A.l,X		; 3F 0A FF 76
	cmp #$C0.b		; C9 C0
	bcc  21.b		; 90 15
	cmp $F58AFE.l,X		; DF FE 8A F5
	lda $C0BFFE.l		; AF FE BF C0
	bcc  14.b		; 90 0E
	cpy #$98.b		; C0 98
	ora #$3F.b		; 09 3F
	brk $5F.b		; 00 5F
	rol A		; 2A
	sbc $C0FF6A.l,X		; FF 6A FF C0
	tya		; 98
	clc		; 18
	lda ($10.b),Y		; B1 10
	sbc ($B9.b)		; F2 B9
	rol A		; 2A
	inc $C020.w,X		; FE 20 C0
	tya		; 98
	ora [$F6.b],Y		; 17 F6
	sbc $822E6E.l,X		; FF 6E 2E 82
	nop		; EA
	lda $98C060.l,X		; BF 60 C0 98
	ora [$9F.b],Y		; 17 9F
	bra  -1.b		; 80 FF
	cpy #$98.b		; C0 98
	clc		; 18
	lda ($02.b,X)		; A1 02
	rti		; 40

	inc $98C0.w,X		; FE C0 98
	clc		; 18
.ACCU 8
.INDEX 8
	sep #$B9		; E2 B9
	.db $62, $A8, $C2		; 62 A8 C2
	inc $9DC0.w,X		; FE C0 9D
	cpy #$90.b		; C0 90
	and $BF98C0.l,X		; 3F C0 98 BF
	cpy #$90.b		; C0 90
	ora ($0E.b),Y		; 11 0E
	adc $0A07EA.l,X		; 7F EA 07 0A
	rts		; 60

	sbc ($C0.b)		; F2 C0
	bcc  23.b		; 90 17
	cpy #$F1.b		; C0 F1
	nop		; EA
	sbc $E05F6A.l,X		; FF 6A 5F E0
	trb $5555.w		; 1C 55 55
	tya		; 98
	lda ($E0.b)		; B2 E0
	tya		; 98
	ora ($80.b),Y		; 11 80
	sbc ($3E.b)		; F2 3E
	sbc ($C0.b),Y		; F1 C0
	tya		; 98
	clc		; 18
	cpx #$FE.b		; E0 FE
	cpy #$98.b		; C0 98
	ora [$E0.b],Y		; 17 E0
	inc $6AFD.w,X		; FE FD 6A
	cpy #$98.b		; C0 98
	ora [$E0.b],Y		; 17 E0
	cpx $60FF.w		; EC FF 60
	clv		; B8
	cpy #$60.b		; C0 60
	cpx #$C1.b		; E0 C1
	cpy #$98.b		; C0 98
	ora ($00.b),Y		; 11 00
	pea $753F.w		; F4 3F 75
	lda $C0.b,X		; B5 C0
	sta $0FA860.l,X		; 9F 60 A8 0F
	bra -20.b		; 80 EC
	sbc $ACDC20.l,X		; FF 20 DC AC
	cpy #$90.b		; C0 90
	and $6798C0.l,X		; 3F C0 98 67
	ora [$A0.b]		; 07 A0
	eor [$C0.b],Y		; 57 C0
	tya		; 98
	tsb $C07E.w		; 0C 7E C0
	tya		; 98
	and [$60.b]		; 27 60
	tay		; A8
	tas		; 1B
	stp		; DB
	cpx $EE.b		; E4 EE
	cpx $E6.b		; E4 E6
	rts		; 60

	ldy #$0A.b		; A0 0A
	sbc $7A.b,X		; F5 7A
	brk $F6.b		; 00 F6
	rts		; 60

	ldy #$17.b		; A0 17
	brk $F2.b		; 00 F2
	cmp $60FFEA.l,X		; DF EA FF 60
	ldy #$18.b		; A0 18
	bra -14.b		; 80 F2
	sta $55DF0A.l,X		; 9F 0A DF 55
	ora $18A060.l,X		; 1F 60 A0 18
	rti		; 40

	sbc $FE.b,X		; F5 FE
	sta $A460.w,Y		; 99 60 A4
	rts		; 60

	beq  15.b		; F0 0F
	ror $7500.w,X		; 7E 00 75
	rol $0436.w		; 2E 36 04
	bra -11.b		; 80 F5
	rol $98C0.w		; 2E C0 98
	ora [$0E.b],Y		; 17 0E
	cpx #$0E.b		; E0 0E
	cpx #$58.b		; E0 58
	clc		; 18
	jmp.w [$307E]		; DC 7E 30
	rts		; 60

	sed		; F8
	ora $AD.b,X		; 15 AD
	sbc $EE.b,X		; F5 EE
	inc $6002.w		; EE 02 60
	sbc $CE.b,X		; F5 CE
	ldx $F860.w		; AE 60 F8
	tsb $0D17.w		; 0C 17 0D
	rts		; 60

	inc $C0C0.w,X		; FE C0 C0
	eor $60B6.w,Y		; 59 B6 60
	cmp $8E.b,X		; D5 8E
	inc $6060.w		; EE 60 60
	ldy #$7F.b		; A0 7F
	sbc $AF.b,X		; F5 AF
	rts		; 60

	beq  31.b		; F0 1F
	rts		; 60

	sed		; F8
	eor $11F060.l,X		; 5F 60 F0 11
	asl $F500.w		; 0E 00 F5
	asl $EAFF.w		; 0E FF EA
	sbc $A0.b,X		; F5 A0
	sbc ($6A.b),Y		; F1 6A
	lda $C6F460.l		; AF 60 F4 C6
	cmp $76.b,X		; D5 76
	sbc $DC66.w		; ED 66 DC
	inc $691E.w,X		; FE 1E 69
	ldy $F418.w		; AC 18 F4
	inc $4291.w,X		; FE 91 42
	lda ($A4.b,X)		; A1 A4
	sed		; F8
	phd		; 0B
	jsr ($FACA.w,X)		; FC CA FA
	php		; 08
	ror $9ED9.w,X		; 7E D9 9E
	jmp $BE5550.l		; 5C 50 55 BE
	lda ($5E.b),Y		; B1 5E
	cpx #$71.b		; E0 71
	sbc #$40.b		; E9 40
	cmp ($42.b)		; D2 42
	cmp ($E0.b,S),Y		; D3 E0
	eor $C284.w,X		; 5D 84 C2
	and $55.b		; 25 55
	cop $73.b		; 02 73
	dey		; 88
	sbc $C8.b,S		; E3 C8
	dec $60AB.w,X		; DE AB 60
	cpy #$0A.b		; C0 0A
	mvp $FE,$EB		; 44 EB FE
	lda $35.b		; A5 35
	clc		; 18
	.db $42, $D0		; 42 D0
	asl A		; 0A
	inc A		; 1A
	lda ($00.b,S),Y		; B3 00
	stz $FE.b,X		; 74 FE
	inc $D202.w,X		; FE 02 D2
	cpx #$54.b		; E0 54
	lda $9E.b,X		; B5 9E
	ldy $BC.b		; A4 BC
.INDEX 8
	sep #$5E		; E2 5E
	cpx #$5C.b		; E0 5C
	rts		; 60

	eor $63DA.w,X		; 5D DA 63
	cpy #$58.b		; C0 58
	phd		; 0B
	adc $9292.w,X		; 7D 92 92
	txs		; 9A
	lda ($02.b,X)		; A1 02
	ldx $9C.b,Y		; B6 9C
	txs		; 9A
	ldx #$60.b		; A2 60
	beq  31.b		; F0 1F
	cpy $57.b		; C4 57
	sbc ($A8.b)		; F2 A8
	tax		; AA
	ora $0E.b,X		; 15 0E
	rol A		; 2A
	rol $B1.b,X		; 36 B1
	dec $C29A.w		; CE 9A C2
	sbc $3E09F8.l,X		; FF F8 09 3E
	ora [$AB.b]		; 07 AB
	tax		; AA
	tda		; 7B
	bit $E27D.w,X		; 3C 7D E2
	cmp ($FE.b,S),Y		; D3 FE
	jsr ($BA88.w,X)		; FC 88 BA
	inc $0AF8.w,X		; FE F8 0A
	ldx #$F1.b		; A2 F1
	jsr $0DE0.w		; 20 E0 0D
	tax		; AA
	rol A		; 2A
	mvn $00,$B6		; 54 B6 00
	dec $68.b,X		; D6 68
	ldx $CC20.w,Y		; BE 20 CC
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	php		; 08
	sbc $F3DE.w,X		; FD DE F3
	mvp $C2,$EA		; 44 EA C2
	ora [$82.b],Y		; 17 82
	sty $1A.b		; 84 1A
	tsb $1834.w		; 0C 34 18
	sei		; 78
	bmi 121.b		; 30 79
	eor $BA.b,X		; 55 BA
	cop $40.b		; 02 40
	pei ($FE.b)		; D4 FE
	inc $F56A.w,X		; FE 6A F5
	lsr $0E3D.w,X		; 5E 3D 0E
	ror $C2.b,X		; 76 C2
	eor [$D0.b],Y		; 57 D0
	lda #$E4.b		; A9 E4
	jmp $1C6EFE.l		; 5C FE 6E 1C
	ply		; 7A
	bit $8056.w,X		; 3C 56 80
	lda $FCA8.w,Y		; B9 A8 FC
	lda ($B1.b)		; B2 B1
	ror $FF.b		; 66 FF
	jsr ($4CBE.w,X)		; FC BE 4C
	cmp ($FE.b,X)		; C1 FE
	ror $50.b		; 66 50
	lsr A		; 4A
	plb		; AB
	tsx		; BA
	plb		; AB
	eor ($F2.b,X)		; 41 F2
	cpx #$F4.b		; E0 F4
	ldx $0C16.w,Y		; BE 16 0C
	bvc  82.b		; 50 52
.ACCU 16
.INDEX 16
	rep #$F6		; C2 F6
	dec $A8.b		; C6 A8
	inx		; E8
	pei ($A0.b)		; D4 A0
	dec $1F.b,X		; D6 1F
	ply		; 7A
	dec A		; 3A
	ply		; 7A
	tsx		; BA
	jsr ($06AA.w,X)		; FC AA 06
	stz $1086.w,X		; 9E 86 10
	lsr $42.b,X		; 56 42
	bvc   9.b		; 50 09
	.db $82, $D8, $0A		; 82 D8 0A
	bvs -59.b		; 70 C5
	ldx #$7FCC.w		; A2 CC 7F
	inc $E960.w,X		; FE 60 E9
	sei		; 78
	bcs  98.b		; B0 62
	rts		; 60

	phd		; 0B
	cpy #$003E.w		; C0 3E 00
	adc $1E3D28.l,X		; 7F 28 3D 1E
	tas		; 1B
	ora [$05.b]		; 07 05
	cop $7E.b		; 02 7E
	brk $4E.b		; 00 4E
	and [$C9.b],Y		; 37 C9
	eor $94.b,X		; 55 94
	mvn $06,$7C		; 54 7C 06
	inc $C1.b		; E6 C1
	inc $F8A2.w,X		; FE A2 F8
	ora ($E4.b,S),Y		; 13 E4
	jmp $B47A.w		; 4C 7A B4
	sta $FC.b,X		; 95 FC
	cpy #$0A98.w		; C0 98 0A
	stx $93.b,Y		; 96 93
	cpy #$0BC0.w		; C0 C0 0B
	bit $4EF0.w,X		; 3C F0 4E
	sec		; 38
	bpl  44.b		; 10 2C
	clc		; 18
	rol A		; 2A
	plp		; 28
	inc A		; 1A
	beq  -3.b		; F0 FD
	ror $FEFC.w		; 6E FC FE
	jsr ($3DE8.w,X)		; FC E8 3D
	jsr ($EA44.w,X)		; FC 44 EA
	bra  80.b		; 80 50
	rep #$81		; C2 81
	.db $62, $F4, $A6		; 62 F4 A6
	bvc  32.b		; 50 20
	cmp #$A0A5.w		; C9 A5 A0
	clc		; 18
	sbc ($8A.b)		; F2 8A
	pea $06E0.w		; F4 E0 06
	cpx #$D998.w		; E0 98 D9
	tax		; AA
	jsr $B602.w		; 20 02 B6
	cpy #$405A.w		; C0 5A 40
	jmp ($F0FE.w)		; 6C FE F0
	ora $E650.w		; 0D 50 E6
	cop $82.b		; 02 82
	cmp ($82.b)		; D2 82
	lsr A		; 4A
	sty $9C.b,X		; 94 9C
	dec $80FD.w,X		; DE FD 80
	cpy $00.b		; C4 00
	dec $0A.b		; C6 0A
	asl $9E.b,X		; 16 9E
	brk $F2.b		; 00 F2
	txa		; 8A
	ldy $A0A2.w		; AC A2 A0
	lda ($2E.b)		; B2 2E
	stz $40B1.w,X		; 9E B1 40
	sbc $585C.w		; ED 5C 58
	cop $B4.b		; 02 B4
	.db $62, $C4, $46		; 62 C4 46
	sbc ($02.b)		; F2 02
	php		; 08
	sbc #$020A.w		; E9 0A 02
	jsr ($2007.w,X)		; FC 07 20
	pea $E6CA.w		; F4 CA E6
	tay		; A8
	beq  84.b		; F0 54
	clv		; B8
	ldy $0570.w,X		; BC 70 05
	clc		; 18
	ldx $1C.b		; A6 1C
	php		; 08
	php		; 08
	tsb $C8.b		; 04 C8
	asl A		; 0A
	ldy #$408C.w		; A0 8C 40
	eor ($09.b,X)		; 41 09
	dec $EE.b,X		; D6 EE
	.db $82, $BE, $EA		; 82 BE EA
	ldy #$82FC.w		; A0 FC 82
	ldx #$E27A.w		; A2 7A E2
	asl $2040.w		; 0E 40 20
	sed		; F8
	ora #$C602.w		; 09 02 C6
	brk $F0.b		; 00 F0
	asl A		; 0A
	ora $5F091F.l		; 0F 1F 09 5F
	adc $00.b,X		; 75 00
	beq  11.b		; F0 0B
	dec $BE0C.w,X		; DE 0C BE
	cpy $A402.w		; CC 02 A4
	rts		; 60

	ldy $7A.b,X		; B4 7A
	sep #$82		; E2 82
	sbc ($78.b)		; F2 78
	beq -11.b		; F0 F5
	cmp $BC9906.l,X		; DF 06 99 BC
	sbc #$B400.w		; E9 00 B4
	tsb $6E00.w		; 0C 00 6E
	tsb $7B.b		; 04 7B
	rol $5F.b		; 26 5F
	and ($7C.b,S),Y		; 33 7C
	lda #$5555.w		; A9 55 55
	ora $C01D.w,X		; 1D 1D C0
	sbc #$F4A2.w		; E9 A2 F4
	jmp.w [$F892]		; DC 92 F8
	.db $82, $E6, $F0		; 82 E6 F0
	ora #$DCB8.w		; 09 B8 DC
	cpy $58.b		; C4 58
	ora #$BD46.w		; 09 46 BD
	txs		; 9A
	adc $F672.w,X		; 7D 72 F6
	ldx $C1.b,Y		; B6 C1
	ora $950D1E.l		; 0F 1E 0D 95
	mvn $B0,$BA		; 54 BA B0
	phd		; 0B
	rts		; 60

	tsx		; BA
	lda ($FE.b),Y		; B1 FE
	pea $C0FE.w		; F4 FE C0
	inc $A424.w,X		; FE 24 A4
	.db $82, $FC, $52		; 82 FC 52
	sbc $C0.b,X		; F5 C0
	.db $82, $E8, $16		; 82 E8 16
	beq  -8.b		; F0 F8
	asl A		; 0A
	ldy #$16AC.w		; A0 AC 16
	jsr ($E8E4.w,X)		; FC E4 E8
	phd		; 0B
	tax		; AA
	trb $D5FB.w		; 1C FB D5
	jmp ($3998.w,X)		; 7C 98 39
	brk $F0.b		; 00 F0
	asl $FC6A.w		; 0E 6A FC
	ldy $7478.w,X		; BC 78 74
	brk $F0.b		; 00 F0
	asl A		; 0A
	cpy $E4.b		; C4 E4
	jmp ($A3F2.w,X)		; 7C F2 A3
	tax		; AA
	ora $1E03.w		; 0D 03 1E
	tsx		; BA
	cpy $E2.b		; C4 E2
	stz $6A.b		; 64 6A
	stz $128C.w,X		; 9E 8C 12
	phx		; DA
	nop		; EA
	bcc   4.b		; 90 04
	cld		; D8
	ora #$F0A0.w		; 09 A0 F0
	ora ($C4.b,S),Y		; 13 C4
	jsr ($DA46.w,X)		; FC 46 DA
	asl A		; 0A
	ora [$1E.b]		; 07 1E
	trb $F945.w		; 1C 45 F9
	mvp $F8,$C2		; 44 C2 F8
	ora #$7664.w		; 09 64 76
	sbc $F800FE.l		; EF FE 00 F8
	pld		; 2B
	jmp $385C70.l		; 5C 70 5C 38
	jmp $0BD0.w		; 4C D0 0B
	.db $82, $FE, $A2		; 82 FE A2
	asl $3B07.w,X		; 1E 07 3B
	dec A		; 3A
	sta ($49.b,X)		; 81 49
	eor $04.b,X		; 55 04
	jsr ($7ABE.w,X)		; FC BE 7A
	cld		; D8
	phd		; 0B
	cpx $F6.b		; E4 F6
	cop $E8.b		; 02 E8
	tsb $F508.w		; 0C 08 F5
	.db $62, $FE, $07		; 62 FE 07
	sed		; F8
	cpy #$94FC.w		; C0 FC 94
	sed		; F8
	stz $DCFE.w,X		; 9E FE DC
	sed		; F8
	inc $AA9C.w		; EE 9C AA
	eor ($9C.b,X)		; 41 9C
.ACCU 16
	rep #$E9		; C2 E9
	stz $BEFE.w,X		; 9E FE BE
	beq  11.b		; F0 0B
	ldy #$FCF2.w		; A0 F2 FC
	inc $E140.w,X		; FE 40 E1
	sta $54.b,X		; 95 54
	plx		; FA
	.db $82, $76, $40		; 82 76 40
	ora ($C2.b),Y		; 11 C2
	cpx #$1409.w		; E0 09 14
	sep #$8D		; E2 8D
	jmp ($50ED.w,X)		; 7C ED 50
	lda ($57.b)		; B2 57
	eor $62.b,X		; 55 62
	sta ($40.b),Y		; 91 40
	bcs  60.b		; B0 3C
	adc ($6A.b),Y		; 71 6A
	lda $C94A.w,Y		; B9 4A C9
	bne  56.b		; D0 38
	ora #$C9A2.w		; 09 A2 C9
	jsr ($ABC9.w,X)		; FC C9 AB
	ldy #$F05C.w		; A0 5C F0
	ora #$603C.w		; 09 3C 60
	tyx		; BB
	.db $42, $F8		; 42 F8
	ora ($C2.b,S),Y		; 13 C2
	cld		; D8
	ora #$407E.w		; 09 7E 40
	cpy #$AA11.w		; C0 11 AA
	eor $80.b,X		; 55 80
	stx $993A.w		; 8E 3A 99
	ldy #$A0BB.w		; A0 BB A0
	cmp $1BF19A.l		; CF 9A F1 1B
	brk $75.b		; 00 75
.INDEX 16
	rep #$D3		; C2 D3
	ply		; 7A
	rtl		; 6B

	sbc $6F.b,X		; F5 6F
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	clc		; 18
	rti		; 40

	sbc $F2A4.w,X		; FD A4 F2
	ora $0E3D03.l		; 0F 03 3D 0E
	adc [$38.b],Y		; 77 38
	adc $F3F6.w,Y		; 79 F6 F3
	pla		; 68
	sbc $A1A07A.l,X		; FF 7A A0 A1
	inc $F7CC.w,X		; FE CC F7
	dec $C6EB.w		; CE EB C6
	inc $40.b		; E6 40
	cmp ($44.b,S),Y		; D3 44
	inc $1D.b		; E6 1D
	ora $3E.b,S		; 03 3E
	eor $AB.b,X		; 55 AB
	dec $9AF3.w,X		; DE F3 9A
	.db $82, $C2, $E0		; 82 C2 E0
	phd		; 0B
	ror A		; 6A
	tsx		; BA
	jmp $38E2.w		; 4C E2 38
	bcc  75.b		; 90 4B
	brk $32.b		; 00 32
	ora ($5C.b)		; 12 5C
	and ($F0.b)		; 32 F0
	phd		; 0B
	bcc -62.b		; 90 C2
	inc $5FA2.w,X		; FE A2 5F
	and $E1222F.l,X		; 3F 2F 22 E1
	and $A0.b,X		; 35 A0
	asl $0CF8.w,X		; 1E F8 0C
	jmp $7A0AE8.l		; 5C E8 0A 7A
	jsr ($B41D.w,X)		; FC 1D B4
	bne 122.b		; D0 7A
	xce		; FB
	ldx #$D8.b		; A2 D8
	ora $C040.w		; 0D 40 C0
	ora $37AA86.l,X		; 1F 86 AA 37
	ora $005B.w,Y		; 19 5B 00
	adc ($63.b),Y		; 71 63
	clv		; B8
	dex		; CA
	brk $F8.b		; 00 F8
	bcc -113.b		; 90 8F
	lda $98EC.w		; AD EC 98
	phx		; DA
	sty $FEDE.w		; 8C DE FE
	cpy $6BC0.w		; CC C0 6B
	trb $E99E.w		; 1C 9E E9
	nop		; EA
	tyx		; BB
	inc $DA.b		; E6 DA
.ACCU 16
	rep #$AC		; C2 AC
	jsr $288A.w		; 20 8A 28
	ror A		; 6A
	cpx #$80.b		; E0 80
	beq -64.b		; F0 C0
	.db $62, $C1, $40		; 62 C1 40
	rti		; 40

	brk $92.b		; 00 92
	bmi -13.b		; 30 F3
	dey		; 88
	sty $D8.b		; 84 D8
	nop		; EA
	inc $83.b,X		; F6 83
	tax		; AA
	sty $86.b		; 84 86
	sed		; F8
	beq -40.b		; F0 D8
	cpy #$40.b		; C0 40
	ora #$FCFE.w		; 09 FE FC
	stz $8272.w		; 9C 72 82
	lsr $1E.b,X		; 56 1E
	ora ($9E.b,X)		; 01 9E
	ror $C0.b,X		; 76 C0
	sei		; 78
	ora #$1C3B.w		; 09 3B 1C
	asl $F698.w,X		; 1E 98 F6
	brk $B6.b		; 00 B6
	bvc  76.b		; 50 4C
	jmp $1C385C.l		; 5C 5C 38 1C
	rol A		; 2A
	plp		; 28
	ror A		; 6A
	ldy $1F.b,X		; B4 1F
	phb		; 8B
	bra -29.b		; 80 E3
	inc A		; 1A
	cmp $C020.w		; CD 20 C0
	ora $BFFF.w		; 0D FF BF
	cpx #$C8.b		; E0 C8
	ora #$AA77.w		; 09 77 AA
	tax		; AA
	bpl  99.b		; 10 63
	brk $98.b		; 00 98
	asl A		; 0A
	ldy #$ED.b		; A0 ED
	rol $09E0.w,X		; 3E E0 09
	inc $0FC8.w,X		; FE C8 0F
	bra -50.b		; 80 CE
	ldx $19E8.w,Y		; BE E8 19
	cpx #$D8.b		; E0 D8
	phd		; 0B
	ora ($A9.b)		; 12 A9
	rti		; 40

	jmp.w [$D8E0]		; DC E0 D8
	ora #$069C.w		; 09 9C 06
	ror $A2CC.w,X		; 7E CC A2
	adc ($FC.b)		; 72 FC
	ldy #$66.b		; A0 66
	adc $E006.w,Y		; 79 06 E0
	brk $D8.b		; 00 D8
	cpx #$DC.b		; E0 DC
	rol $C6B9.w,X		; 3E B9 C6
	trb $E986.w		; 1C 86 E9
	tsb $C2.b		; 04 C2
	tsa		; 3B
	.db $62, $7E, $9E		; 62 7E 9E
	bcs  -1.b		; B0 FF
	plb		; AB
	jsl $FE182E.l		; 22 2E 18 FE
	tsb $FEFD.w		; 0C FD FE
	adc $7E8E86.l,X		; 7F 86 8E 7E
	sbc ($A8.b),Y		; F1 A8
	sbc ($F0.b)		; F2 F0
	sbc $C226.w,X		; FD 26 C2
	clv		; B8
	rol $0F.b,X		; 36 0F
	tda		; 7B
	bit $0E7C.w,X		; 3C 7C 0E
	adc $E070.w,Y		; 79 70 E0
	cld		; D8
	beq -85.b		; F0 AB
	lda ($9C.b)		; B2 9C
	sed		; F8
	ror $E5A0.w		; 6E A0 E5
	pla		; 68
	cpx $98C0.w		; EC C0 98
	ora #$C1C8.w		; 09 C8 C1
	asl $D5.b		; 06 D5
	ora [$78.b]		; 07 78
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	jmp $8024E1.l		; 5C E1 24 80
	ora #$8420.w		; 09 20 84
	cli		; 58
	bmi 112.b		; 30 70
	jsr $8582.w		; 20 82 85
	tax		; AA
	phx		; DA
	rol $E01C.w,X		; 3E 1C E0
	ora ($6C.b),Y		; 11 6C
	tay		; A8
	tsb $B1.b		; 04 B1
	inc $4627.w,X		; FE 27 46
	cpx #$AA0A.w		; E0 0A AA
	ldx $FCE0.w		; AE E0 FC
	dey		; 88
	wai		; CB
	ror $0AC8.w,X		; 7E C8 0A
	nop		; EA
	beq   9.b		; F0 09
	brk $64.b		; 00 64
	php		; 08
	inc $38D4.w		; EE D4 38
	jsr $6A6C.w		; 20 6C 6A
	eor $00.b,X		; 55 00
	rts		; 60

	and ($D0.b,X)		; 21 D0
	cpy #$800D.w		; C0 0D 80
	rol $FE.b		; 26 FE
	jsr ($40F3.w,X)		; FC F3 40
	jsr $3C1C.w		; 20 1C 3C
	rep #$44		; C2 44
	sed		; F8
	asl A		; 0A
	bvc -16.b		; 50 F0
	asl A		; 0A
	eor $49.b,X		; 55 49
	stz $09B8.w,X		; 9E B8 09
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $B4D2.w		; 0D D2 B4
	bra -72.b		; 80 B8
	ora $F022.w		; 0D 22 F0
	ora #$14.b		; 09 14
	cpx #$F8.b		; E0 F8
	phd		; 0B
	lda $380E.w,X		; BD 0E 38
	dec A		; 3A
	.db $82, $E8, $09		; 82 E8 09
	ora $3A0607.l,X		; 1F 07 06 3A
	xba		; EB
	lsr $87E6.w		; 4E E6 87
	cop $55.b		; 02 55
	eor $FE.b,X		; 55 FE
	phd		; 0B
	bcs -17.b		; B0 EF
	cld		; D8
	pea $5FA1.w		; F4 A1 5F
	dec $5CED.w,X		; DE ED 5C
	phx		; DA
	asl $76.b,X		; 16 76
	brk $60.b		; 00 60
	ora #$55.b		; 09 55
	sbc $02E21C.l		; EF 1C E2 02
	.db $82, $20, $72		; 82 20 72
	ply		; 7A
	jsr ($E01E.w,X)		; FC 1E E0
	ora #$F7.b		; 09 F7
	.db $62, $FB, $14		; 62 FB 14
	eor ($EA.b),Y		; 51 EA
	asl A		; 0A
	ldx $DE7C.w,Y		; BE 7C DE
	ora ($7A.b),Y		; 11 7A
	sbc ($F0.b),Y		; F1 F0
	asl A		; 0A
	jsr ($183D.w,X)		; FC 3D 18
	rol $E819.w,X		; 3E 19 E8
	tax		; AA
	lsr $9E59.w,X		; 5E 59 9E
	ldy $74B2.w,X		; BC B2 74
	clc		; 18
	rti		; 40

	cpy #$09.b		; C0 09
	cop $80.b		; 02 80
	ora #$00.b		; 09 00
	stp		; DB
	ldy $56.b		; A4 56
	ldx $F0.b,Y		; B6 F0
	asl A		; 0A
	.db $42, $5A		; 42 5A
	iny		; C8
	phd		; 0B
	bra  -4.b		; 80 FC
	cpx #$AE.b		; E0 AE
	clv		; B8
	bra  -3.b		; 80 FD
	plp		; 28
	iny		; C8
	ora #$41.b		; 09 41
	cmp $E0.b,X		; D5 E0
	jsr ($E0CA.w,X)		; FC CA E0
	sed		; F8
	ora $DEC0.w		; 0D C0 DE
	cpy #$BA.b		; C0 BA
	jsr $A672.w		; 20 72 A6
	lsr A		; 4A
	lda ($16.b,X)		; A1 16
	jmp ($E218.w,X)		; 7C 18 E2
	beq -128.b		; F0 80
	sbc $EEA6.w,X		; FD A6 EE
	phd		; 0B
	stz $D1.b		; 64 D1
	rti		; 40

	eor $3A.b,X		; 55 3A
	trb $0A.b		; 14 0A
	adc ($2A.b,X)		; 61 2A
	adc $E8A8.w,Y		; 79 A8 E8
	phd		; 0B
	rol $0DA0.w,X		; 3E A0 0D
	sbc $AAAFFE.l,X		; FF FE AF AA
	dec A		; 3A
.ACCU 8
.INDEX 8
	sep #$7C		; E2 7C
	sec		; 38
	pea $AF41.w		; F4 41 AF
	tsx		; BA
	rol $60.b,X		; 36 60
	rts		; 60

	ora #$9E.b		; 09 9E
	mvp $C0,$9A		; 44 9A C0
	asl $1AAA.w		; 0E AA 1A
	sbc $0A70.w,Y		; F9 70 0A
	jmp $FF97E3.l		; 5C E3 97 FF
	txs		; 9A
	dec $FEF0.w		; CE F0 FE
	txs		; 9A
	dec $FEF0.w		; CE F0 FE
	tsb $1ABE.w		; 0C BE 1A
	rol $3B04.w,X		; 3E 04 3B
	asl $2F.b,X		; 16 2F
	tas		; 1B
	bvs  88.b		; 70 58
	ora $4AC0.w		; 0D C0 4A
	txa		; 8A
	iny		; C8
	ora #$3F.b		; 09 3F
	bit $55.b		; 24 55
	inc $7029.w,X		; FE 29 70
	tsb $F09E.w		; 0C 9E F0
	sed		; F8
	phd		; 0B
	inc $8A.b,X		; F6 8A
	beq  -8.b		; F0 F8
	phd		; 0B
	bra  88.b		; 80 58
	ora #$2F.b		; 09 2F
	tay		; A8
	tsx		; BA
	tay		; A8
	ora $0106.w,Y		; 19 06 01
	tas		; 1B
	dey		; 88
	eor $9AE8.w,Y		; 59 E8 9A
	ldx $4A64.w,Y		; BE 64 4A
	eor $55.b,X		; 55 55
	rti		; 40

	ldy #$0B.b		; A0 0B
	and $80EFDE.l,X		; 3F DE EF 80
	pea $E2A4.w		; F4 A4 E2
	cpx #$EA.b		; E0 EA
	tsx		; BA
	cmp ($A0.b)		; D2 A0
	stz $FE.b		; 64 FE
	inc $FF75.w,X		; FE 75 FF
	stz $402B.w		; 9C 2B 40
	lda [$80.b]		; A7 80
	and $3D00.w,X		; 3D 00 3D
	ldy $B3.b		; A4 B3
	ora $1B06.w		; 0D 06 1B
	tsb $103D.w		; 0C 3D 10
	php		; 08
	lsr $A031.w,X		; 5E 31 A0
	tsb $98E0.w		; 0C E0 98
	ora $0F1D.w		; 0D 1D 0F
	ora [$DA.b],Y		; 17 DA
	eor #$41.b		; 49 41
	adc $B8C0.w		; 6D C0 B8
	ora #$0E.b		; 09 0E
	stz $0DC8.w,X		; 9E C8 0D
	cop $60.b		; 02 60
	phd		; 0B
	cpx #$DA.b		; E0 DA
	inx		; E8
	cpx #$DA.b		; E0 DA
	rti		; 40

	eor $05.b,X		; 55 05
	ror $FE7A.w,X		; 7E 7A FE
	jsr ($6ACE.w,X)		; FC CE 6A
	lsr $FC.b		; 46 FC
	jsr $6AFC.w		; 20 FC 6A
	sep #$C4		; E2 C4
	eor $65.b,X		; 55 65
	.db $42, $B9		; 42 B9
	bit $C4C4.w,X		; 3C C4 C4
	bne  10.b		; D0 0A
	cpx #$FC.b		; E0 FC
	ldy #$8C.b		; A0 8C
	cpy $D2.b		; C4 D2
	sed		; F8
	and $D4.b,X		; 35 D4
	rol $F5.b		; 26 F5
	rts		; 60

	bcc  11.b		; 90 0B
	jsr $FF62.w		; 20 62 FF
	inc $60E0.w,X		; FE E0 60
	inc $A0.b		; E6 A0
	bcc  15.b		; 90 0F
	ldy #$00.b		; A0 00
	sta $7360FE.l,X		; 9F FE 60 73
	ldy #$90.b		; A0 90
	ora [$94.b],Y		; 17 94
	tay		; A8
	ldy #$E0.b		; A0 E0
	dec $95A0.w,X		; DE A0 95
	ldy #$98.b		; A0 98
	ora ($C0.b),Y		; 11 C0
	brk $83.b		; 00 83
	tax		; AA
	tax		; AA
	inc $E5.b,X		; F6 E5
	ldy #$98.b		; A0 98
	ora $A07442.l		; 0F 42 74 A0
	tya		; 98
	tas		; 1B
	cpx #$6E.b		; E0 6E
	ldy #$98.b		; A0 98
	ora [$20.b],Y		; 17 20
	ror $A0.b,X		; 76 A0
	tya		; 98
	ora [$A0.b],Y		; 17 A0
	tax		; AA
	rts		; 60

	jmp ($A0FA.w,X)		; 7C FA A0
	stz $9060.w		; 9C 60 90
	ora $3F90A0.l,X		; 1F A0 90 3F
	ldy #$98.b		; A0 98
	sta $11E0E6.l,X		; 9F E6 E0 11
	tax		; AA
	tax		; AA
	rts		; 60

	bvs   9.b		; 70 09
	ldy #$90.b		; A0 90
	ora $5E.b,X		; 15 5E
	inc $A0.b,X		; F6 A0
	bcc  23.b		; 90 17
	bra  86.b		; 80 56
	jsr $A0F6.w		; 20 F6 A0
	tya		; 98
	ora $09F000.l		; 0F 00 F0 09
	bpl  84.b		; 10 54
	ldy #$98.b		; A0 98
	ora $E6.b,X		; 15 E6
	adc $69A0E2.l,X		; 7F E2 A0 69
	ldy #$98.b		; A0 98
	ora [$A0.b],Y		; 17 A0
	jsr ($5450.w,X)		; FC 50 54
	tsx		; BA
	ldy #$98.b		; A0 98
	ora [$60.b],Y		; 17 60
	tad		; 5B
	bra -96.b		; 80 A0
	tya		; 98
	ora [$60.b],Y		; 17 60
	inc $7FD5.w,X		; FE D5 7F
	ldy #$9C.b		; A0 9C
	ldy #$90.b		; A0 90
	eor $9F98A0.l,X		; 5F A0 98 9F
	rti		; 40

	ldy #$11.b		; A0 11
	cmp $4AFF00.l,X		; DF 00 FF 4A
	lda $207F6A.l,X		; BF 6A 7F 20
	eor $B5.b,X		; 55 B5
	rti		; 40

	ldy #$17.b		; A0 17
	brk $F6.b		; 00 F6
	rti		; 40

	ldy #$17.b		; A0 17
	cpy #$ED.b		; C0 ED
	ldx $C5.b,Y		; B6 C5
	rti		; 40

	ldy #$11.b		; A0 11
	bra -28.b		; 80 E4
	eor $40C3EA.l,X		; 5F EA C3 40
	ldy #$18.b		; A0 18
	bra -33.b		; 80 DF
	rti		; 40

	lda [$60.b]		; A7 60
	sed		; F8
	ora $00CE.w		; 0D CE 00
	sbc $4E.b,X		; F5 4E
	rts		; 60

	adc $55.b,X		; 75 55
	sei		; 78
	rol $9A3E.w		; 2E 3E 9A
	lda #$60.b		; A9 60
	sed		; F8
	ora ($20.b,S),Y		; 13 20
	.db $62, $9E, $F5		; 62 9E F5
	asl $F03E.w		; 0E 3E F0
	ora $04.b		; 05 04
	rts		; 60

	sed		; F8
	ora $20.b,X		; 15 20
	adc $C0E0.w		; 6D E0 C0
	rts		; 60

	sbc $FE.b,X		; F5 FE
	rti		; 40

	ldy #$9F.b		; A0 9F
	rts		; 60

	sed		; F8
	eor $1750E0.l,X		; 5F E0 50 17
	eor $8E.b,X		; 55 8E
	ldx $F060.w		; AE 60 F0
	asl $CE.b,X		; 16 CE
	brk $D5.b		; 00 D5
	stx $ABFF.w		; 8E FF AB
	asl A		; 0A
	txa		; 8A
	sbc $EE.b,X		; F5 EE
	rts		; 60

	inc $04.b,X		; F6 04
	bit $3C.b		; 24 3C
	ror $E0.b		; 66 E0
	stz $A61C.w,X		; 9E 1C A6
	sbc [$83.b],Y		; F7 83
	sbc ($1C.b)		; F2 1C
	brk $2D.b		; 00 2D
	beq  18.b		; F0 12
	trb $7F.b		; 14 7F
	bit $1D6B.w		; 2C 6B 1D
	sed		; F8
	sbc $C28817.l,X		; FF 17 88 C2
	jmp ($FEF8.w,X)		; 7C F8 FE
	cld		; D8
	sbc $DABFDA.l,X		; FF DA BF DA
	adc $FF9E.w		; 6D 9E FF
	jsl $B804F3.l		; 22 F3 04 B8
	sty $64.b		; 84 64
	sbc ($80.b,X)		; E1 80
.INDEX 8
	sep #$19		; E2 19
	adc $D58639.l,X		; 7F 39 86 D5
	ldy $6D.b		; A4 6D
	jsr $8C62.w		; 20 62 8C
	jsr ($8CFF.w,X)		; FC FF 8C
	brk $80.b		; 00 80
	tsb $49FA.w		; 0C FA 49
	dec $BC.b		; C6 BC
	eor $C0EC15.l,X		; 5F 15 EC C0
	inc $FCCC.w,X		; FE CC FC
	cld		; D8
	cpy #$11.b		; C0 11
	jsr $0CC1.w		; 20 C1 0C
	lda $3380.w,Y		; B9 80 33
	sty $84.b,X		; 94 84
	sei		; 78
	stz $C019.w,X		; 9E 19 C0
	tyx		; BB
	bra -92.b		; 80 A4
	rep #$C3		; C2 C3
	plx		; FA
	sbc $8E.b,X		; F5 8E
	sta $46F1.w,X		; 9D F1 46
	ldx $0D37.w,Y		; BE 37 0D
	ora $E07D05.l		; 0F 05 7D E0
	lda $BE46.w,Y		; B9 46 BE
	cpx $B7B0.w		; EC B0 B7
	tax		; AA
	beq -96.b		; F0 A0
	ldx $60E0.w,Y		; BE E0 60
	beq  63.b		; F0 3F
	ora $2421A2.l,X		; 1F A2 21 24
	stz $EA9A.w,X		; 9E 9A EA
	ldy JOY2L.w		; AC 1A 42
	eor $9C.b		; 45 9C
	jsl $2E663E.l		; 22 3E 66 2E
	adc $DCA9E2.l,X		; 7F E2 A9 DC
	ldy $EFB4.w		; AC B4 EF
	ora [$CA.b]		; 07 CA
	cmp ($AA.b,S),Y		; D3 AA
	jmp.w [$FCFC]		; DC FC FC
	cmp $7CFA.w,Y		; D9 FA 7C
	lda [$CE.b],Y		; B7 CE
	cmp $008DA0.l		; CF A0 8D 00
	inc $19.b		; E6 19
	cpy $A9.b		; C4 A9
	ora $FEE2.w,Y		; 19 E2 FE
	sed		; F8
	sbc $7704F4.l,X		; FF F4 04 77
	dec $7CBE.w,X		; DE BE 7C
	plx		; FA
	jsr ($38DC.w,X)		; FC DC 38
	ply		; 7A
	jsr ($1597.w,X)		; FC 97 15
	rol $EFEE.w		; 2E EE EF
	asl $EB.b		; 06 EB
	iny		; C8
	and ($E0.b)		; 32 E0
	rtl		; 6B

	bmi 119.b		; 30 77
	bra  26.b		; 80 1A
	tsb $F8.b		; 04 F8
	ldx #$D0.b		; A2 D0
	asl $02.b		; 06 02
	sbc $C2E7C6.l		; EF C6 E7 C2
	jsl $60A2FD.l		; 22 FD A2 60
	tsx		; BA
	cpy #$FE.b		; C0 FE
	and [$1B.b],Y		; 37 1B
	eor $FD7533.l,X		; 5F 33 75 FD
	cmp [$23.b],Y		; D7 23
	adc $C0.b,S		; 63 C0
	ora #$8B.b		; 09 8B
	asl $87.b		; 06 87
	cop $8F.b		; 02 8F
	brk $BC.b		; 00 BC
	php		; 08
	ldy #$0C.b		; A0 0C
	pha		; 48
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	cpx #$070B.w		; E0 0B 07
	ora [$0F.b],Y		; 17 0F
	ora $2F0F.w,X		; 1D 0F 2F
	ora $3A7B.w,Y		; 19 7B 3A
	cpx $D0D3.w		; EC D3 D0
	rts		; 60

	inx		; E8
	cpx #$B8E6.w		; E0 E6 B8
	and #$3C98.w		; 29 98 3C
	dec $E350.w		; CE 50 E3
	and $1FC18F.l,X		; 3F 8F C1 1F
	rtl		; 6B

	and [$36.b],Y		; 37 36
	ora $FE35D6.l		; 0F D6 35 FE
	bcs -30.b		; B0 E2
	stz $F8FC.w,X		; 9E FC F8
	asl $52.b		; 06 52
	ror $B6FF.w,X		; 7E FF B6
	inc $4270.w,X		; FE 70 42
	adc $0D7E3C.l,X		; 7F 3C 7E 0D
	adc $0D1FFF.l,X		; 7F FF 1F 0D
	and $307D1D.l,X		; 3F 1D 7D 30
	adc $F28031.l		; 6F 31 80 F2
	cpx $AEC0.w		; EC C0 AE
	cpy $7D.b		; C4 7D
	stx $EA.b		; 86 EA
	cmp $FB.b,S		; C3 FB
	lsr $60C1.w,X		; 5E C1 60
	cmp ($A0.b)		; D2 A0
	sbc ($73.b)		; F2 73
	ora ($6B.b,X)		; 01 6B
	and ($A2.b),Y		; 31 A2
	and [$FE.b],Y		; 37 FE
	bvs  25.b		; 70 19
	jsr $C0D2.w		; 20 D2 C0
	brk $C8.b		; 00 C8
	bra -36.b		; 80 DC
	dey		; 88
	ldy $FA.b		; A4 FA
	stz $05DC.w		; 9C DC 05
	sei		; 78
	stz $00F1.w,X		; 9E F1 00
	sbc ($04.b)		; F2 04
	bit $5F.b		; 24 5F
	rol $2C7F.w,X		; 3E 7F 2C
	ora $81.b		; 05 81
	jmp $5FC0C2.l		; 5C C2 C0 5F
	ldy #$495A.w		; A0 5A 49
	inc $B61E.w,X		; FE 1E B6
	cpy #$0367.w		; C0 67 03
	adc [$23.b],Y		; 77 23
	.db $42, $3F		; 42 3F
	ora ($BC.b,S),Y		; 13 BC
	lda $9E3B.w,Y		; B9 3B 9E
	eor $22.b,X		; 55 22
	ldx #$F100.w		; A2 00 F1
	rol $FF.b		; 26 FF
	ror $FC.b,X		; 76 FC
	bpl -15.b		; 10 F1
	tsb $F2.b		; 04 F2
	bit $7FBC.w,X		; 3C BC 7F
	lda $E4CCE0.l		; AF E0 CC E4
	brk $EE.b		; 00 EE
	cpy $FF.b		; C4 FF
	dec $A1C4.w		; CE C4 A1
	cld		; D8
	sbc [$F8.b],Y		; F7 F8
	rts		; 60

	lsr A		; 4A
	inc A		; 1A
	lsr $60.b,X		; 56 60
	sbc $20BD60.l		; EF 60 BD 20
	sbc ($FF.b)		; F2 FF
	inc $7FFE.w,X		; FE FE 7F
	jmp ($7EEB.w,X)		; 7C EB 7E
	cmp ($38.b),Y		; D1 38
	rts		; 60

	rol $5F29.w,X		; 3E 29 5F
	and $C7.b,X		; 35 C7
	dec $0A36.w,X		; DE 36 0A
	sbc $A0BFC0.l,X		; FF C0 BF A0
	txs		; 9A
	lda $18FF1A.l,X		; BF 1A FF 18
	sbc $7EC7BE.l,X		; FF BE C7 7E
	sbc $98FE98.l,X		; FF 98 FE 98
	nop		; EA
	asl $119C.w,X		; 1E 9C 11
	asl $365F.w,X		; 1E 5F 36
	ror A		; 6A
	and [$21.b],Y		; 37 21
	jsr ($F2C0.w,X)		; FC C0 F2
	asl $8AAF.w		; 0E AF 8A
	ror $5D.b		; 66 5D
	inc $FB.b		; E6 FB
	sty $57C1.w		; 8C C1 57
	sbc $40BC02.l,X		; FF 02 BC 40
	sbc ($3D.b),Y		; F1 3D
	adc $607F2D.l,X		; 7F 2D 7F 60
	sbc #$AA82.w		; E9 82 AA
	and ($FA.b,X)		; 21 FA
	bit $F1.b,X		; 34 F1
	.db $62, $B4, $FE		; 62 B4 FE
	ldx $B9.b		; A6 B9
	ror $FF34.w,X		; 7E 34 FF
	eor $6B.b,S		; 43 6B
	rol $FAF7.w,X		; 3E F7 FA
	sec		; 38
	ora $0E83EA.l		; 0F EA 83 0E
	.db $42, $B9		; 42 B9
	cpx #$E04C.w		; E0 4C E0
	xce		; FB
	ora $E0D928.l		; 0F 28 D9 E0
	ldy $81.b		; A4 81
	tay		; A8
	bvs  84.b		; 70 54
	sec		; 38
	rol $0E0C.w,X		; 3E 0C 0E
	brk $86.b		; 00 86
	eor [$CA.b],Y		; 57 CA
	lsr $E2.b,X		; 56 E2
	and $351B9C.l		; 2F 9C 1B 35
	inc A		; 1A
	ror $E13E.w,X		; 7E 3E E1
	asl A		; 0A
	jsr ($FD7C.w,X)		; FC 7C FD
	inc $FF7E.w,X		; FE 7E FF
	.db $62, $E7, $A0		; 62 E7 A0
	nop		; EA
	mvp $36,$F1		; 44 F1 36
	tas		; 1B
	and $1F16.w,X		; 3D 16 1F
	bmi  55.b		; 30 37
	clc		; 18
	jmp $277B3F.l		; 5C 3F 7B 27
	ldy #$560C.w		; A0 0C 56
	and $081E.w		; 2D 1E 08
	ora $F2F806.l		; 0F 06 F8 F2
	bra   3.b		; 80 03
	ora $419E07.l		; 0F 07 9E 41
	tsb $3B.b		; 04 3B
	ora $20336F.l,X		; 1F 6F 33 20
	.db $42, $66		; 42 66
	adc ($AB.b,S),Y		; 73 AB
	mvn $FE,$FC		; 54 FC FE
	ldy $8D60.w,X		; BC 60 8D
	dec $09D8.w,X		; DE D8 09
	nop		; EA
	ldy $FE.b,X		; B4 FE
	stz $62.b,X		; 74 62
	eor ($51.b,X)		; 41 51
	cpy $00.b		; C4 00
	sbc ($0C.b),Y		; F1 0C
	mvp $FE,$C6		; 44 C6 FE
	tsb $FF.b		; 04 FF
	and [$FB.b]		; 27 FB
	stz $1EEF.w,X		; 9E EF 1E
	sbc $DE9E.w		; ED 9E DE
	bit $6EB5.w,X		; 3C B5 6E
	xce		; FB
	dec $7E.b		; C6 7E
	sed		; F8
	lda $0071FF.l		; AF FF 71 00
	adc $2E30.w,Y		; 79 30 2E
	ora $0917.w,Y		; 19 17 09
	phd		; 0B
	lsr $C191.w		; 4E 91 C1
	cmp [$A0.b],Y		; D7 A0
	cpx $FF.b		; E4 FF
	inc $8920.w,X		; FE 20 89
	sbc $6E.b,X		; F5 6E
	plx		; FA
	jmp ($D42E.w)		; 6C 2E D4
.ACCU 16
	rep #$E2		; C2 E2
	lda $5B.b,X		; B5 5B
	ply		; 7A
	ora $DE.b		; 05 DE
	nop		; EA
	lsr $74.b		; 46 74
	cld		; D8
	jsl $40FFB9.l		; 22 B9 FF 40
	cli		; 58
	sbc ($56.b),Y		; F1 56
	ldy #$09E0.w		; A0 E0 09
	ora $94.b,X		; 15 94
	asl $AA.b,X		; 16 AA
	bra  34.b		; 80 22
	ldy #$FCE6.w		; A0 E6 FC
	tya		; 98
	asl A		; 0A
	ldy #$15BF.w		; A0 BF 15
	bit $6C.b		; 24 6C
	brk $E2.b		; 00 E2
	jsr $0B90.w		; 20 90 0B
	plx		; FA
	cpy #$0BA8.w		; C0 A8 0B
	asl $AFA5.w,X		; 1E A5 AF
	asl $3E2E.w,X		; 1E 2E 3E
	lsr $A0.b		; 46 A0
	tsa		; 3B
	ora ($2F.b,X)		; 01 2F
	ora $421B.w,Y		; 19 1B 42
	sbc ($F0.b,X)		; E1 F0
	lda $F0F21A.l,X		; BF 1A F2 F0
	cpy $00.b		; C4 00
	dec $D784.w		; CE 84 D7
	stx $9CEA.w		; 8E EA 9C
	pea $3698.w		; F4 98 36
	asl $F21A.w,X		; 1E 1A F2
	jsl $463DD3.l		; 22 D3 3D 46
	sbc #$FC34.w		; E9 34 FC
	bit $377F.w,X		; 3C 7F 37
	rts		; 60

	bvs -16.b		; 70 F0
	eor $68FC.w		; 4D FC 68
	inc $3ADE.w,X		; FE DE 3A
	sbc $490AD0.l,X		; FF D0 0A 49
	cpx #$401B.w		; E0 1B 40
	ora #$C0C2.w		; 09 C2 C0
	cmp ($A1.b,X)		; C1 A1
	sbc $7118.w,X		; FD 18 71
	beq -40.b		; F0 D8
	bit $D8E1.w,X		; 3C E1 D8
	ror $E9.b		; 66 E9
	cpx #$7080.w		; E0 80 70
	cpy #$6FFD.w		; C0 FD 6F
	ldy $E270.w,X		; BC 70 E2
	ora ($1B.b)		; 12 1B
	tsb $193E.w		; 0C 3E 19
	adc [$39.b],Y		; 77 39
	adc $7E33.w,X		; 7D 33 7E
	ldy #$FCC1.w		; A0 C1 FC
	sbc $D1E4FF.l,X		; FF FF E4 D1
	sed		; F8
	bne -84.b		; D0 AC
	cld		; D8
	dec $4F8C.w,X		; DE 8C 4F
	stx $85.b		; 86 85
	cop $02.b		; 02 02
	brk $77.b		; 00 77
	ora $D861.w		; 0D 61 D8
	ora $0F2A08.l,X		; 1F 08 2A 0F
	asl $BE.b		; 06 BE
	trb $9803.w		; 1C 03 98
	tsx		; BA
	xce		; FB
	eor $FCE8FF.l,X		; 5F FF E8 FC
	iny		; C8
	sta $70B8.w,Y		; 99 B8 70
	pla		; 68
	beq -20.b		; F0 EC
	beq 126.b		; F0 7E
	ldy $8EBE.w,X		; BC BE 8E
	sta $C37F.w,Y		; 99 7F C3
	asl $29.b		; 06 29
	ora $113F.w,X		; 1D 3F 11
	adc $E06F27.l,X		; 7F 27 6F E0
	stp		; DB
	bcs -62.b		; B0 C2
	bcs  95.b		; B0 5F
	eor $B8DC.w,Y		; 59 DC B8
	inc $FC9C.w		; EE 9C FC
	inx		; E8
	plx		; FA
	stp		; DB
	asl $F8.b		; 06 F8
	asl A		; 0A
	inc $06.b,X		; F6 06
	sed		; F8
	asl A		; 0A
	asl $D4.b,X		; 16 D4
	inc $40.b,X		; F6 40
	sbc $F0.b,X		; F5 F0
	rti		; 40

	inc $2C.b,X		; F6 2C
	tsx		; BA
	inc $ABFC.w,X		; FE FC AB
	eor $741C3A.l,X		; 5F 3A 1C 74
	bvs -71.b		; 70 B9
	brk $F1.b		; 00 F1
	cpy $B3.b		; C4 B3
	ora [$0C.b],Y		; 17 0C
	and $7818.w		; 2D 18 78
	ldy #$E1E9.w		; A0 E9 E1
	eor $FEB2E8.l,X		; 5F E8 B2 FE
	sbc $C0.b,S		; E3 C0
	sbc [$C2.b]		; E7 C2
	eor $7EBDE2.l,X		; 5F E2 BD 7E
	stz $E1.b		; 64 E1
	bra -61.b		; 80 C3
	php		; 08
	cop $36.b		; 02 36
	ror $FE34.w,X		; 7E 34 FE
	adc $24FFBF.l,X		; 7F BF FF 24
	adc $006F2C.l,X		; 7F 2C 6F 00
	xce		; FB
	sty $3102.w		; 8C 02 31
	plx		; FA
	ldx $FE6C.w,Y		; BE 6C FE
	jmp ($CC7E.w)		; 6C 7E CC
	cmp $F6.b,S		; C3 F6
	jsr ($B898.w,X)		; FC 98 B8
	bra  17.b		; 80 11
	and [$C4.b],Y		; 37 C4
	sbc ($0D.b),Y		; F1 0D
	jsr $FCBF.w		; 20 BF FC
	dey		; 88
	lda ($B0.b,X)		; A1 B0
	cpx $0298.w		; EC 98 02
	bcs  96.b		; B0 60
	lda #$6E04.w		; A9 04 6E
	trb $5DF0.w		; 1C F0 5D
	ldx $0CCA.w,Y		; BE CA 0C
	and [$0E.b],Y		; 37 0E
	ror $7E3C.w,X		; 7E 3C 7E
	jsr $3EEA.w		; 20 EA 3E
	adc $EF4760.l,X		; 7F 60 47 EF
	bpl -100.b		; 10 9C
	rol A		; 2A
	tay		; A8
	bvs  -8.b		; 70 F8
	brk $B3.b		; 00 B3
	ora $2FBE0D.l,X		; 1F 0D BE 2F
	asl $F5.b		; 06 F5
	.db $42, $19		; 42 19
	tsa		; 3B
	inc A		; 1A
	ldy #$2065.w		; A0 65 20
	pea $7440.w		; F4 40 74
	asl $00.b		; 06 00
	adc [$00.b],Y		; 77 00
	ora $3F06.w		; 0D 06 3F
	cop $02.b		; 02 02
	cmp ($0F.b)		; D2 0F
	ora [$FC.b]		; 07 FC
	beq 120.b		; F0 78
	inc A		; 1A
	cmp $60B0.w		; CD B0 60
	jsr ($E040.w,X)		; FC 40 E0
	beq -32.b		; F0 E0
	jmp.w [$FCEF]		; DC EF FC
	cpx #$0FEC.w		; E0 EC 0F
	ora ($1C.b,X)		; 01 1C
	cmp ($0D.b),Y		; D1 0D
	and $3919.w		; 2D 19 39
	ora ($C0.b),Y		; 11 C0
	jsr ($BBF0.w,X)		; FC F0 BB
	tax		; AA
	bra -24.b		; 80 E8
	bcs -128.b		; B0 80
	phx		; DA
	cmp $6EA086.l		; CF 86 A0 6E
	stz $E0CE.w,X		; 9E CE E0
	jsr ($603E.w,X)		; FC 3E 60
	ora #$A000.w		; 09 00 A0
	bra 104.b		; 80 68
	ora #$BEBC.w		; 09 BC BE
	inc $FEE0.w,X		; FE E0 FE
	rts		; 60

	cmp $FCBC.w,X		; DD BC FC
	rol $C0.b,X		; 36 C0
	inx		; E8
	phd		; 0B
	ply		; 7A
	cld		; D8
	sbc ($C0.b),Y		; F1 C0
	cpx $00BC.w		; EC BC 00
	jsr $A0E1.w		; 20 E1 A0
	nop		; EA
	inc $E0FC.w,X		; FE FC E0
	txs		; 9A
	rti		; 40

	pla		; 68
	ora #$ECC0.w		; 09 C0 EC
	cpy #$9CFE.w		; C0 FE 9C
	jsr ($1F3E.w,X)		; FC 3E 1F
	jsr ($3F1C.w,X)		; FC 1C 3F
	asl $3E5F.w,X		; 1E 5F 3E
	jmp ($1A84.w)		; 6C 84 1A
	sbc $0E.b,S		; E3 0E
	brk $DC.b		; 00 DC
	pla		; 68
	sbc $CC7A57.l,X		; FF 57 7A CC
	ldx $FDC4.w		; AE C4 FD
	stx $DF.b		; 86 DF
	rol $F6EB.w,X		; 3E EB F6
	sbc [$02.b],Y		; F7 02
	bcc  33.b		; 90 21
	ror A		; 6A
	xba		; EB
	lda [$5E.b],Y		; B7 5E
	cpx #$0EC1.w		; E0 C1 0E
	pld		; 2B
	jsr $78E1.w		; 20 E1 78
	stz $DA.b		; 64 DA
	bra -11.b		; 80 F5
	adc $80BFC2.l,X		; 7F C2 BF 80
	sbc ($A0.b),Y		; F1 A0
	eor $7BAA08.l,X		; 5F 08 AA 7B
	ora [$1F.b]		; 07 1F
	asl $3E.b		; 06 3E
	tsb $F250.w		; 0C 50 F2
	ldy #$0887.w		; A0 87 08
	tax		; AA
	dec $F8E0.w,X		; DE E0 F8
	rts		; 60

	cmp ($56.b)		; D2 56
	adc $F1A02E.l,X		; 7F 2E A0 F1
	adc ($C8.b),Y		; 71 C8
	cmp #$E248.w		; C9 48 E2
	ldx $D75E.w,Y		; BE 5E D7
	.db $82, $FA, $90		; 82 FA 90
	jmp.w [$05B8]		; DC B8 05
	adc ($E4.b)		; 72 E4
	jsl $6AB440.l		; 22 40 B4 6A
	.db $42, $FC		; 42 FC
	nop		; EA
	rol $7D08.w,X		; 3E 08 7D
	cld		; D8
	jsr $46F2.w		; 20 F2 46
	dex		; CA
	bne  96.b		; D0 60
	pla		; 68
	bmi -76.b		; 30 B4
	dec A		; 3A
	trb $6168.w		; 1C 68 61
	ldx $005E.w		; AE 5E 00
	nop		; EA
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	ora ($82.b),Y		; 11 82
	cpy $8B80.w		; CC 80 8B
	.db $82, $CB, $CF		; 82 CB CF
	stx $C7.b		; 86 C7
	bit $1FFC.w,X		; 3C FC 1F
	lda $82EA.w		; AD EA 82
	clc		; 18
	asl $0F.b,X		; 16 0F
	ora $38E6.w		; 0D E6 38
	txa		; 8A
	rol $D194.w,X		; 3E 94 D1
	adc $628854.l,X		; 7F 54 88 62
	pla		; 68
	beq -40.b		; F0 D8
	cpx #$F8B4.w		; E0 B4 F8
	inc $8280.w		; EE 80 82
	ror $8E60.w		; 6E 60 8E
	eor $F5.b,X		; 55 F5
	ldy $60F2.w		; AC F2 60
	dey		; 88
	phd		; 0B
	ldx #$0960.w		; A2 60 09
	brk $9A.b		; 00 9A
	phx		; DA
	ldy $E6.b,X		; B4 E6
	.db $82, $9E, $1A		; 82 9E 1A
	bcs -64.b		; B0 C0
	nop		; EA
	nop		; EA
	lda $0C2040.l,X		; BF 40 20 0C
	stz $A0F2.w		; 9C F2 A0
	bne   9.b		; D0 09
	sbc $C25606.l,X		; FF 06 56 C2
	.db $42, $A4		; 42 A4
	inc $1001.w,X		; FE 01 10
	ldy #$3FAF.w		; A0 AF 3F
	ldy $A19E.w,X		; BC 9E A1
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	tay		; A8
	bvs  94.b		; 70 5E
	cpx #$EA20.w		; E0 20 EA
	tax		; AA
	tsb $60.b		; 04 60
	stz $5E.b,X		; 74 5E
	ldy $3A.b		; A4 3A
	cmp ($D0.b,S),Y		; D3 D0
	txy		; 9B
	ror $A4.b		; 66 A4
	sbc $FAE816.l,X		; FF 16 E8 FA
	lsr A		; 4A
	cmp ($06.b,X)		; C1 06
	cpy $EA.b		; C4 EA
	dec $9C.b		; C6 9C
	ror $0F.b,X		; 76 0F
	jsr $70B2.w		; 20 B2 70
	cpx $04.b		; E4 04
.ACCU 16
	rep #$64		; C2 64
	stz $EA30.w		; 9C 30 EA
	asl $85.b		; 06 85
	iny		; C8
	adc $DC7E0D.l,X		; 7F 0D 7E DC
	lda $CA70.w,Y		; B9 70 CA
	ror $E1B0.w,X		; 7E B0 E1
	bit $EAA6.w,X		; 3C A6 EA
	stz $D100.w		; 9C 00 D1
	tya		; 98
	dec $0008.w,X		; DE 08 00
	eor $0814F2.l,X		; 5F F2 14 08
	rol $5F18.w,X		; 3E 18 5F
	and ($60.b)		; 32 60
	adc ($5C.b,X)		; 61 5C
	rti		; 40

	ora $00EE.w,Y		; 19 EE 00
	sbc $6CF610.l,X		; FF 10 F6 6C
	nop		; EA
	jmp ($78F4.w,X)		; 7C F4 78
	sed		; F8
	rts		; 60

	jsr ($3CB6.w,X)		; FC B6 3C
	mvp $42,$04		; 44 04 42
	ldx $EC.b		; A6 EC
	asl $FC62.w,X		; 1E 62 FC
	rts		; 60

	cmp ($42.b)		; D2 42
	tay		; A8
	tsb $BE.b		; 04 BE
	cmp ($42.b,S),Y		; D3 42
	stx $50.b,Y		; 96 50
	lda $0D.b,X		; B5 0D
	sec		; 38
	ora $A0.b		; 05 A0
	.db $82, $20, $F4		; 82 20 F4
	tsx		; BA
	ldy $DE.b		; A4 DE
	lda ($7A.b)		; B2 7A
	eor [$5D.b],Y		; 57 5D
	asl $F1.b		; 06 F1
	tsa		; 3B
	trb $9E36.w		; 1C 36 9E
	sbc ($A0.b),Y		; F1 A0
	pea $EAAC.w		; F4 AC EA
	.db $82, $72, $E8		; 82 72 E8
	beq -96.b		; F0 A0
	pea $2A1D.w		; F4 1D 2A
	tax		; AA
	jsr ($F2C0.w,X)		; FC C0 F2
	asl $0C.b,X		; 16 0C
	inc $38.b		; E6 38
	rts		; 60

	adc ($08.b),Y		; 71 08
	jsr ($2934.w,X)		; FC 34 29
	trb $BE34.w		; 1C 34 BE
	sta $E00E.w,Y		; 99 0E E0
	inc $5EFD.w,X		; FE FD 5E
	phb		; 8B
	pld		; 2B
	brk $06.b		; 00 06
	ldy #$9CFC.w		; A0 FC 9C
	cmp ($20.b)		; D2 20
	ldy $1EE9.w		; AC E9 1E
	inx		; E8
	sty $E1.b		; 84 E1
	.db $42, $89		; 42 89
	and $19801C.l,X		; 3F 1C 80 19
	.db $62, $BF, $6C		; 62 BF 6C
	inc $E8FA.w,X		; FE FA E8
	plx		; FA
	bit $38FF.w,X		; 3C FF 38
	lda $00D77A.l		; AF 7A D7 00
	cmp ($82.b,X)		; C1 82
	tsx		; BA
	and #$171F.w		; 29 1F 17
	stx $0F5F.w		; 8E 5F 0F
	plx		; FA
	ora $3F0F.w,Y		; 19 0F 3F
	ldy #$98FF.w		; A0 FF 98
	jmp ($BC98.w,X)		; 7C 98 BC
	inx		; E8
	adc ($F8.b),Y		; 71 F8
	bcc  70.b		; 90 46
	jmp $B8F4B8.l		; 5C B8 F4 B8
	sed		; F8
	jsl $0FDC33.l		; 22 33 DC 0F
	asl A		; 0A
	plx		; FA
	sbc $6F27.w,X		; FD 27 6F
	rep #$C2		; C2 C2
	ror $FD.b		; 66 FD
	ror $78F6.w		; 6E F6 78
	bmi -24.b		; 30 E8
	clv		; B8
	inc $3E7D.w,X		; FE 7D 3E
	bvc  98.b		; 50 62
	jsr ($CA02.w,X)		; FC 02 CA
	and [$57.b],Y		; 37 57
	stz $3E0E.w		; 9C 0E 3E
	trb $0A1C.w		; 1C 1C 0A
	rtl		; 6B

	ldy $F1.b		; A4 F1
	clc		; 18
	sbc [$38.b],Y		; F7 38
	mvn $F0,$55		; 54 55 F0
	cop $F5.b		; 02 F5
	cpx #$6095.w		; E0 95 60
	sbc ($C4.b)		; F2 C4
	lsr $E0.b,X		; 56 E0
	pea $9C26.w		; F4 26 9C
	lsr $58EA.w,X		; 5E EA 58
	sbc $182F20.l		; EF 20 2F 18
	ldy #$84D2.w		; A0 D2 84
	.db $42, $F0		; 42 F0
	rti		; 40

	pla		; 68
	jsr $FA41.w		; 20 41 FA
	tad		; 5B
	eor ($0C.b),Y		; 51 0C
	sbc $DBC0F6.l,X		; FF F6 C0 DB
	ora $C0B9DE.l		; 0F DE B9 C0
	phx		; DA
	bit $C324.w,X		; 3C 24 C3
	eor ($55.b,X)		; 41 55
	trb $FECE.w		; 1C CE FE
	bra 103.b		; 80 67
	sed		; F8
	lsr $F8FF.w,X		; 5E FF F8
	ora $3A5C.w		; 0D 5C 3A
	plp		; 28
	lda ($AC.b,S),Y		; B3 AC
	nop		; EA
	bra  21.b		; 80 15
	asl $7B.b,X		; 16 7B
	beq  -3.b		; F0 FD
	txs		; 9A
	adc $40.b,X		; 75 40
	.db $82, $26, $EA		; 82 26 EA
	and $FF5F.w		; 2D 5F FF
	asl $1C3A.w,X		; 1E 3A 1C
	rol $2A18.w,X		; 3E 18 2A
	inc $2AE1.w		; EE E1 2A
	adc ($E8.b)		; 72 E8
	beq -44.b		; F0 D4
	sec		; 38
	bit $4118.w		; 2C 18 41
	eor $1C.b,X		; 55 1C
	php		; 08
	sta ($01.b,S),Y		; 93 01
	adc ($E4.b)		; 72 E4
	asl $0EC0.w		; 0E C0 0E
	ldx #$1AEB.w		; A2 EB 1A
	sbc $041D55.l		; EF 55 1D 04
	ldy $4C44.w		; AC 44 4C
	clv		; B8
	cmp ($40.b)		; D2 40
	nop		; EA
	lsr $60C2.w,X		; 5E C2 60
	.db $82, $A8, $70		; 82 A8 70
	bit $A040.w		; 2C 40 A0
	php		; 08
	jsr ($801B.w,X)		; FC 1B 80
	cmp ($30.b),Y		; D1 30
	bit $AD70.w		; 2C 70 AD
	ror A		; 6A
	cpy #$BEE1.w		; C0 E1 BE
	bvc   9.b		; 50 09
	jmp ($8220.w,X)		; 7C 20 82
.ACCU 16
.INDEX 16
	rep #$75		; C2 75
	jmp ($9A33.w,X)		; 7C 33 9A
	sbc ($28.b,X)		; E1 28
	ply		; 7A
	jmp.w [$C3D5]		; DC D5 C3
	cld		; D8
	lda ($BE.b,X)		; A1 BE
	.db $82, $60, $63		; 82 60 63
	cpy #$5ED9.w		; C0 D9 5E
	and $2C7E6D.l,X		; 3F 6D 7E 2C
	php		; 08
	sty $7E.b,X		; 94 7E
	bit $3C61.w,X		; 3C 61 3C
	sta $FEA8AD.l		; 8F AD A8 FE
	bit $0E79.w		; 2C 79 0E
	jmp $68B9.w		; 4C B9 68
	pha		; 48
	tsb $6862.w		; 0C 62 68
	and $AA.b,X		; 35 AA
	ply		; 7A
	sbc $7426FE.l,X		; FF FE 26 74
	ldx $89.b		; A6 89
	cpx #$624D.w		; E0 4D 62
	ldx #$A260.w		; A2 60 A2
	trb $0B36.w		; 1C 36 0B
	ora [$37.b]		; 07 37
	ora ($2E.b,X)		; 01 2E
	ldy $FE99.w,X		; BC 99 FE
	.db $62, $2B, $1C		; 62 2B 1C
	ora [$20.b],Y		; 17 20
	adc ($C0.b,X)		; 61 C0
	beq   4.b		; F0 04
	.db $82, $2A, $1C		; 82 2A 1C
	stx $2E.b,Y		; 96 2E
	trb $95DA.w		; 1C DA 95
	eor $3C.b,X		; 55 3C
	cpx $B120.w		; EC 20 B1
	bra 104.b		; 80 68
	ora #$80FE.w		; 09 FE 80
	pla		; 68
	asl A		; 0A
	cpx #$C2DC.w		; E0 DC C2
	ldy $53A8.w		; AC A8 53
	bit $EA2F.w,X		; 3C 2F EA
	ldy $D124.w,X		; BC 24 D1
	mvn $1E,$38		; 54 38 1E
	plx		; FA
	eor $2F.b,X		; 55 2F
	ldx $829F.w,Y		; BE 9F 82
	bvc  10.b		; 50 0A
	ldy $A091.w,X		; BC 91 A0
	sbc ($C4.b)		; F2 C4
	cmp $5C78.w,Y		; D9 78 5C
	sec		; 38
	bit $A842.w,X		; 3C 42 A8
	ldy $3EF8.w		; AC F8 3E
	sta $390C.w,Y		; 99 0C 39
	inc $F1.b,X		; F6 F1
	inc $9230.w,X		; FE 30 92
	dec $E8.b,X		; D6 E8
	beq  -8.b		; F0 F8
	ora $09F8FF.l		; 0F FF F8 09
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	beq  -8.b		; F0 F8
	ora ($07.b),Y		; 11 07
	bit $BA5E.w,X		; 3C 5E BA
	trb $BD5A.w		; 1C 5A BD
	php		; 08
	sta ($EA.b)		; 92 EA
	rti		; 40

	pea $22F4.w		; F4 F4 22
	and $20.b,X		; 35 20
	ror $EC.b,X		; 76 EC
	inx		; E8
	ora $7CFE.w		; 0D FE 7C
	inc $2F0A.w,X		; FE 0A 2F
	stz $5C4F.w,X		; 9E 4F 5C
	dey		; 88
	ora $13584A.l		; 0F 4A 58 13
	tyx		; BB
	bit $3B10.w		; 2C 10 3B
	trb $D1A2.w		; 1C A2 D1
	ror A		; 6A
	lda $F8EAFE.l,X		; BF FE EA F8
	ora #$3A3A.w		; 09 3A 3A
	cpx $58E0.w		; EC E0 58
	asl A		; 0A
	ora $00.b,S		; 03 00
	ora $3703.w		; 0D 03 37
	asl $D1AC.w,X		; 1E AC D1
	.db $62, $AE, $79		; 62 AE 79
	bit $08.b,X		; 34 08
	jmp.w [$DE42]		; DC 42 DE
	sta ($F8.b)		; 92 F8
	tsb $F8.b		; 04 F8
	ora #$0AB0.w		; 09 B0 0A
	bra  76.b		; 80 4C
	tsb $50.b		; 04 50
	cpx #$2A42.w		; E0 42 2A
	plx		; FA
	txs		; 9A
	brk $82.b		; 00 82
	txa		; 8A
	.db $82, $5C, $82		; 82 5C 82
	sbc ($0C.b)		; F2 0C
	jsr ($F0F4.w,X)		; FC F4 F0
	sed		; F8
	bpl -40.b		; 10 D8
	rol A		; 2A
	tay		; A8
	ora $0CF8.w		; 0D F8 0C
	beq  -8.b		; F0 F8
	bpl  62.b		; 10 3E
	jsr $1E09.w		; 20 09 1E
	pea $282E.w		; F4 2E 28
	sbc ($7C.b)		; F2 7C
	cpx $56AA.w		; EC AA 56
	ror $0970.w,X		; 7E 70 09
	jmp $0A58.w		; 4C 58 0A
	asl $FE.b		; 06 FE
	php		; 08
	inc $7F80.w,X		; FE 80 7F
	dec A		; 3A
	lda ($3E.b),Y		; B1 3E
	cpy #$0FE0.w		; C0 E0 0F
	ldy $D1.b		; A4 D1
	stx $3B.b		; 86 3B
	asl A		; 0A
	tsb $3B.b		; 04 3B
	trb $962C.w		; 1C 2C 96
	tda		; 7B
	plx		; FA
	jsr ($00E8.w,X)		; FC E8 00
	tsb $4428.w		; 0C 28 44
	sbc $3F5FFC.l,X		; FF FC 5F 3F
	tsb $AE1A.w		; 0C 1A AE
	php		; 08
	inx		; E8
	rti		; 40

	ora #$8BE8.w		; 09 E8 8B
	sed		; F8
	tsb $DC.b		; 04 DC
	sec		; 38
	bit $C0.b,X		; 34 C0
	sbc ($EA.b,X)		; E1 EA
	asl A		; 0A
	cop $94.b		; 02 94
	rts		; 60

	sbc ($08.b)		; F2 08
	jmp ($F250.w)		; 6C 50 F2
	cpx #$FE00.w		; E0 00 FE
	adc ($E6.b),Y		; 71 E6
	sbc ($DA.b,X)		; E1 DA
	tax		; AA
	jsl $86FCF0.l		; 22 F0 FC 86
	ply		; 7A
	tas		; 1B
	jmp ($0FA9.w,X)		; 7C A9 0F
	ldy #$C0E5.w		; A0 E5 C0
	cpy #$A009.w		; C0 09 A0
	cpx $16.b		; E4 16
	sty $40.b,X		; 94 40
	sta ($00.b),Y		; 91 00
	cmp ($3C.b),Y		; D1 3C
	nop		; EA
	sbc ($80.b),Y		; F1 80
	rol $20EA.w,X		; 3E EA 20
	sbc ($95.b,S),Y		; F3 95
	bit $C4.b		; 24 C4
	cpy #$E0EC.w		; C0 EC E0
	inc $6162.w,X		; FE 62 61
	eor ($E0.b)		; 52 E0
	dey		; 88
	eor [$E8.b],Y		; 57 E8
	jmp ($34E0.w,X)		; 7C E0 34
	clc		; 18
	sed		; F8
	brk $F5.b		; 00 F5
	sty $CA.b		; 84 CA
	adc $9C54.w		; 6D 54 9C
	phx		; DA
	bmi 114.b		; 30 72
	bvs  -4.b		; 70 FC
	sbc ($E0.b)		; F2 E0
	inc $F500.w,X		; FE 00 F5
.ACCU 16
	rep #$A8		; C2 A8
	phd		; 0B
	and $5A.b		; 25 5A
	jsr $22F2.w		; 20 F2 22
	bpl   9.b		; 10 09
	ldx $A0.b,Y		; B6 A0
	ora ($0F.b,S),Y		; 13 0F
	cpx #$8ADA.w		; E0 DA 8A
	bpl -32.b		; 10 E0
	tsa		; 3B
	cpx #$C8ED.w		; E0 ED C8
	txy		; 9B
	cmp $A0.b		; C5 A0
	jmp ($D9E0.w)		; 6C E0 D9
	sed		; F8
	cpx #$08E2.w		; E0 E2 08
	trb $84.b		; 14 84
	nop		; EA
	plb		; AB
	jmp ($83F6.w,X)		; 7C F6 83
	pei ($A4.b)		; D4 A4
	ldx $15E2.w		; AE E2 15
	asl $070B.w		; 0E 0B 07
	brk $44.b		; 00 44
	ror $EC.b		; 66 EC
	ora $1E54.w,X		; 1D 54 1E
.ACCU 8
	sep #$E0		; E2 E0
	jsr $2050.w		; 20 50 20
	asl $01.b		; 06 01
	dex		; CA
	plp		; 28
	adc #$C2.b		; 69 C2
	sbc ($1E.b),Y		; F1 1E
	lda ($54.b,S),Y		; B3 54
	eor $828E.w,X		; 5D 8E 82
	inc $58.b,X		; F6 58
	jsr ($DACC.w,X)		; FC CC DA
	lsr $3CEA.w,X		; 5E EA 3C
	bpl  64.b		; 10 40
	inc $70.b		; E6 70
	bpl  12.b		; 10 0C
	ldx $72.b		; A6 72
	jmp ($5C18.w,X)		; 7C 18 5C
	rts		; 60

	sta ($34.b)		; 92 34
	bra -10.b		; 80 F6
	inx		; E8
	bit $F000.w,X		; 3C 00 F0
	ora #$FC.b		; 09 FC
	inc $3AC8.w,X		; FE C8 3A
	and #$FA.b		; 29 FA
	sbc $9120.w		; ED 20 91
	ldy #$2F67.w		; A0 67 2F
	clc		; 18
	cpy #$E466.w		; C0 66 E4
	ldy $F4.b		; A4 F4
	sta $8E.b,X		; 95 8E
	cpy #$4A3F.w		; C0 3F 4A
	sbc ($FE.b,S),Y		; F3 FE
	and $12131C.l		; 2F 1C 13 12
	mvp $86,$E0		; 44 E0 86
	pea $F6FE.w		; F4 FE F6
	iny		; C8
	cpx #$8155.w		; E0 55 81
	sty $EE.b		; 84 EE
	cpx #$A6DE.w		; E0 DE A6
	dec $DEE0.w,X		; DE E0 DE
	cpy #$C4F4.w		; C0 F4 C4
	.db $82, $20, $CE		; 82 20 CE
	bit $209E.w		; 2C 9E 20
	and ($C8.b,S),Y		; 33 C8
	tsx		; BA
	jsr ($AA14.w,X)		; FC 14 AA
	cli		; 58
	inx		; E8
	bra -45.b		; 80 D3
	asl $221D.w,X		; 1E 1D 22
	sta $F4D8.w,Y		; 99 D8 F4
	and $D0.b		; 25 D0
	cpx #$B8EC.w		; E0 EC B8
	jsl $7A3A99.l		; 22 99 3A 7A
	mvp $4E,$F2		; 44 F2 4E
	cmp ($63.b,S),Y		; D3 63
	sbc $7F36.w		; ED 36 7F
	and [$FC.b],Y		; 37 FC
	rol $C1FE.w,X		; 3E FE C1
	nop		; EA
	bit #$FC.b		; 89 FC
	ldx $FE8A.w,Y		; BE 8A FE
	xba		; EB
	brk $FE.b		; 00 FE
	clc		; 18
	sbc $0FE0F3.l,X		; FF F3 E0 0F
	sbc $0F90F8.l,X		; FF F8 90 0F
	ora [$0C.b]		; 07 0C
	asl $080A.w		; 0E 0A 08
	cpy #$09F0.w		; C0 F0 09
	beq -32.b		; F0 E0
	tsb $2BEA.w		; 0C EA 2B
	cpy #$82F5.w		; C0 F5 82
	cmp [$06.b],Y		; D7 06
	ror $ECD4.w,X		; 7E D4 EC
	cpx #$BCFC.w		; E0 FC BC
	sei		; 78
	jmp.w [$CBE2]		; DC E2 CB
	ror $4034.w,X		; 7E 34 40
	dey		; 88
	cpx #$0A06.w		; E0 06 0A
	php		; 08
	plx		; FA
	lda $C2FC.w		; AD FC C2
	cmp #$20.b		; C9 20
	and $98.b,S		; 23 98
	jmp ($FCD8.w,X)		; 7C D8 FC
	cli		; 58
	jsr $7CEA.w		; 20 EA 7C
	beq -87.b		; F0 A9
	tax		; AA
	rol A		; 2A
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	lda ($00.b),Y		; B1 00
	beq   0.b		; F0 00
	sbc $00FF.w,X		; FD FF 00
	sbc $0120F8.l,X		; FF F8 20 01
	brk $06.b		; 00 06
	ora ($0B.b,X)		; 01 0B
	ora [$1E.b]		; 07 1E
	ora ($2D.b,X)		; 01 2D
	asl $3C5B.w,X		; 1E 5B 3C
	sta $75FF.w		; 8D FF 75
	tsa		; 3B
	inc $07FC.w		; EE FC 07
	jsr ($001E.w,X)		; FC 1E 00
	bit $3900.w,X		; 3C 00 39
	ora $3E.b,S		; 03 3E
	sbc $ED0087.l,X		; FF 87 00 ED
	asl $CFB7.w,X		; 1E B7 CF
	sbc $BFF3.w		; ED F3 BF
	cpy #$3CDB.w		; C0 DB 3C
	sbc $1F00FF.l,X		; FF FF 00 1F
	cmp $E2.b,S		; C3 E2
	inx		; E8
	cmp $00F300.l		; CF 00 F3 00
	cpy #$E11E.w		; C0 1E E1
	sbc [$3C.b],Y		; F7 3C
	ror $81FF.w,X		; 7E FF 81
	beq -10.b		; F0 F6
	bcs -64.b		; B0 C0
	sbc $F0E809.l,X		; FF 09 E8 F0
	stz $F8.b,X		; 74 F8
	tsx		; BA
	stz $DE.b,X		; 74 DE
	bit $B5.b,X		; 34 B5
	dec $E2C0.w		; CE C0 E2
	eor [$EE.b]		; 47 EE
	beq  -2.b		; F0 FE
	stz $00.b,X		; 74 00
	bit $00.b,X		; 34 00
	stx $D9.b		; 86 D9
	sbc $FF.b,X		; F5 FF
	ldx $FEFC.w		; AE FC FE
	inc $F8FF.w,X		; FE FF F8
	ora $F577AF.l		; 0F AF 77 F5
	ror $6CDF.w		; 6E DF 6C
	adc $B7DA.w		; 6D DA B7
	cld		; D8
	sta [$FF.b]		; 87 FF
	stp		; DB
	ldy $DF.b,X		; B4 DF
	bcs  -2.b		; B0 FE
	adc ($07.b)		; 72 07
	stz $0E.b		; 64 0E
	adc ($0D.b,X)		; 61 0D
	cmp ($19.b,X)		; C1 19
	ora $1BC3FE.l,X		; 1F FE C3 1B
	sta $33.b,S		; 83 33
	sta [$37.b]		; 87 37
	inc $2CD3.w,X		; FE D3 2C
	jmp $EEBF.w		; 4C BF EE
	adc $3DFFFF.l,X		; 7F FF FF 3D
	inc $EF18.w		; EE 18 EF
	bit $CB.b,X		; 34 CB
	sta $C366.w,Y		; 99 66 C3
	bit $1818.w,X		; 3C 18 18
	ror $EF6E.w		; 6E 6E EF
	sbc $6FFC3F.l		; EF 3F FC 6F
	adc $082C2C.l		; 6F 2C 2C 08
	php		; 08
	sta ($81.b,X)		; 81 81
	cmp $F7.b,S		; C3 F7
	inc $76EF.w		; EE EF 76
	sbc $37FAFF.l,X		; FF FF FA 37
	lda $1BFD5B.l,X		; BF 5B FD 1B
	stp		; DB
	and $0DFA.w		; 2D FA 0D
	xce		; FB
	tsb $E04E.w		; 0C 4E E0
	rol $70.b		; 26 70
	sbc $B097A7.l,X		; FF A7 97 B0
	sta ($98.b,S),Y		; 93 98
	wai		; CB
	cld		; D8
	cmp #$CC.b		; C9 CC
	sbc #$EC.b		; E9 EC
	inx		; E8
	cpx $FF9C.w		; EC 9C FF
	sbc [$83.b],Y		; F7 83
	brk $8C.b		; 00 8C
	ora $97.b,S		; 03 97
	ora $871FEF.l		; 0F EF 1F 87
	adc $8AFF7B.l,X		; 7F 7B FF 8A
	jsr ($0003.w,X)		; FC 03 00
	and $000F3E.l,X		; 3F 3E 0F 00
	ora $002700.l,X		; 1F 00 27 00
	xce		; FB
	sed		; F8
	adc ($0F.b,S),Y		; 73 0F
	sta $300A7F.l,X		; 9F 7F 0A 30
	rol $FF.b		; 26 FF
	sbc $EEE4.w,X		; FD E4 EE
	adc $17F800.l,X		; 7F 00 F8 17
	sbc $FEFE.w,Y		; F9 FE FE
	sed		; F8
	brk $E6.b		; 00 E6
	sed		; F8
	sbc $FEFE.w,X		; FD FE FE
	cpx #$0AF8.w		; E0 F8 0A
	tax		; AA
	beq -18.b		; F0 EE
	inc $F8E0.w,X		; FE E0 F8
	asl A		; 0A
	rol $11F8.w		; 2E F8 11
	sbc $2A0DF8.l,X		; FF F8 0D 2A
	ldx $59.b,Y		; B6 59
	lda $C3FF.w,X		; BD FF C3
	phy		; 5A
	sta $2E556C.l,X		; 9F 6C 55 2E
	eor $1B2537.l		; 4F 37 25 1B
	ora ($0C.b,S),Y		; 13 0C
	rol A		; 2A
	eor $C3.b,S		; 43 C3
	sta $19411B.l,X		; 9F 1B 41 19
	asl $0E20.w,X		; 1E 20 0E
	bmi   7.b		; 30 07
	clc		; 18
	ora $0C.b,S		; 03 0C
	sbc $3CBC77.l,X		; FF 77 BC 3C
	cmp $81.b,S		; C3 81
	ror $BD42.w,X		; 7E 42 BD
	stp		; DB
	bit $BD.b		; 24 BD
	cmp $78.b,S		; C3 78
	sed		; F8
	ora #$7E.b		; 09 7E
	ror $FE18.w,X		; 7E 18 FE
	asl $00.b,X		; 16 00
	cmp $E3.b,S		; C3 E3
	phx		; DA
	and $9B6D.w		; 2D 6D 9B
	lda $01FF57.l,X		; BF 57 FF 01
	sbc [$2F.b],Y		; F7 2F
	lda [$6F.b],Y		; B7 6F
	xba		; EB
	cmp [$CB.b],Y		; D7 CB
	lda [$A1.b],Y		; B7 A1
	eor $BFFE2A.l,X		; 5F 2A FE BF
	rol $87.b		; 26 87
	bcc -113.b		; 90 8F
	ldy #$600F.w		; A0 0F 60
	ora [$C0.b],Y		; 17 C0
	and [$80.b],Y		; 37 80
	tad		; 5B
	brk $FD.b		; 00 FD
	nop		; EA
	sbc $09F8CD.l,X		; FF CD F8 09
	eor $F8FEFD.l,X		; 5F FD FE F8
	asl $F8E0.w		; 0E E0 F8
	asl $0718.w,X		; 1E 18 07
	asl $09.b,X		; 16 09
	and #$1E.b		; 29 1E
	plp		; 28
	ora $43FF38.l,X		; 1F 38 FF 43
	ora $503F58.l,X		; 1F 58 3F 50
	and $073E71.l,X		; 3F 71 3E 07
	brk $09.b		; 00 09
	brk $6A.b		; 00 6A
	ora $FE0FEE.l,X		; 1F EE 0F FE
	rol $E9FE.w,X		; 3E FE E9
	stp		; DB
	bit $C03F.w,X		; 3C 3F C0
	cmp ($3E.b,X)		; C1 3E
	adc $11FC8C.l,X		; 7F 8C FC 11
	sbc $9F9F67.l		; EF 67 9F 9F
	adc $C0537F.l,X		; 7F 7F 53 C0
	and [$FE.b],Y		; 37 FE
	inx		; E8
	bra   0.b		; 80 00
	cmp [$D8.b]		; C7 D8
	sbc ($3F.b),Y		; F1 3F
	cpy #$5FA8.w		; C0 A8 5F
	trb $07EF.w		; 1C EF 07
	bne  99.b		; D0 63
	sbc $A1F347.l,X		; FF 47 F3 A1
	sbc $005D.w,X		; FD 5D 00
	sbc $E1F7FE.l		; EF FE F7 E1
	sbc $E8FFA0.l,X		; FF A0 FF E8
	ora #$FF.b		; 09 FF
	cpy #$E0FF.w		; C0 FF E0
	sbc $10FF80.l,X		; FF 80 FF 10
	sbc $3DA162.l,X		; FF 62 A1 3D
	clv		; B8
	sbc ($A8.b)		; F2 A8
	sbc [$88.b]		; E7 88
	sbc ($25.b),Y		; F1 25
	lda $FF52.w,X		; BD 52 FF
	clv		; B8
	sbc ($7A.b,S),Y		; F3 7A
	inx		; E8
	ora #$FE.b		; 09 FE
	cop $B1.b		; 02 B1
	beq  16.b		; F0 10
	lda ($7D.b)		; B2 7D
	lda $7B.b,X		; B5 7B
	sbc $7B.b		; E5 7B
	sbc $77EB3F.l,X		; FF 3F EB 77
	pla		; 68
	sbc [$4D.b],Y		; F7 4D
	sbc ($DB.b,S),Y		; F3 DB
	sbc [$D3.b]		; E7 D3
	sbc $790039.l		; EF 39 00 79
	brk $73.b		; 00 73
	asl $FEC1.w,X		; 1E C1 FE
	stz $00.b,X		; 74 00
	sbc $B8.b,S		; E3 B8
	stx $8A.b,Y		; 96 8A
	jsr ($3C02.w,X)		; FC 02 3C
	and $18F820.l,X		; 3F 20 F8 18
	ldx $03FE.w		; AE FE 03
	ora ($05.b,X)		; 01 05
	ora $C4.b,S		; 03 C4
	sbc $07FE.w		; ED FE 07
	inc $070B.w,X		; FE 0B 07
	sei		; 78
	inc $FE03.w		; EE 03 FE
	sbc $0FE7.w,X		; FD E7 0F
	sbc $DFA7DF.l,X		; FF DF A7 DF
	cmp [$BF.b]		; C7 BF
	inc $BFC6.w,X		; FE C6 BF
	eor $BF.b		; 45 BF
	eor [$BB.b]		; 47 BB
	eor #$1F.b		; 49 1F
	sbc $B7.b,S		; E3 B7
	cmp $00DF00.l		; CF 00 DF 00
	sta $609EFE.l,X		; 9F FE 9E 60
	tyx		; BB
	and $01.b		; 25 01
	brk $B7.b		; 00 B7
	cpy #$0EF0.w		; C0 F0 0E
	rti		; 40

	ldy #$13F0.w		; A0 F0 13
	inx		; E8
	ldx $FEFF.w,Y		; BE FF FE
	jsr ($3CFF.w,X)		; FC FF 3C
	sbc $F8E038.l,X		; FF 38 E0 F8
	trb $3F.b		; 14 3F
	inc $FD3E.w,X		; FE 3E FD
	ror $7DFD.w,X		; 7E FD 7D
	eor $7EFB70.l		; 4F 70 FB 7E
	plx		; FA
	and $ECF8.w,X		; 3D F8 EC
	php		; 08
	sbc $FC00.w,X		; FD 00 FC
	xce		; FB
	adc $F9E9B8.l,X		; 7F B8 E9 F9
	sed		; F8
	sbc ($FF.b),Y		; F1 FF
	sta $03738F.l		; 8F 8F 73 03
	sbc $FE01.w,X		; FD 01 FE
	php		; 08
	sta $FFC078.l		; 8F 78 C0 FF
	xce		; FB
	cpx $8F.b		; E4 8F
	brk $63.b		; 00 63
	brk $B5.b		; 00 B5
	brk $82.b		; 00 82
	brk $C2.b		; 00 C2
	ora $ED9A71.l		; 0F 71 9A ED
	lsr $070F.w		; 4E 0F 07
	asl $1607.w		; 0E 07 16
	ora $FE52F1.l		; 0F F1 52 FE
	asl $2EFE.w,X		; 1E FE 2E
	ora $E16407.l,X		; 1F 07 64 E1
	inc $E10F.w,X		; FE 0F E1
	adc $4EFDFE.l,X		; 7F FE FD 4E
	eor ($AF.b,S),Y		; 53 AF
	and ($CF.b,S),Y		; 33 CF
	rol $CF.b,X		; 36 CF
	asl $EF.b,X		; 16 EF
	bit $DF.b		; 24 DF
	sei		; 78
	brk $FE.b		; 00 FE
	jsl $00A7DD.l		; 22 DD A7 00
	inc $F83C.w,X		; FE 3C F8
	pla		; 68
	inc $00EF.w,X		; FE EF 00
	dec $DC00.w		; CE 00 DC
	inc $F842.w,X		; FE 42 F8
	ora $017C.w		; 0D 7C 01
	brk $60.b		; 00 60
	sed		; F8
	asl $4A9C.w		; 0E 9C 4A
	inc $1620.w,X		; FE 20 16
	rtl		; 6B

	inc $FEF0.w,X		; FE F0 FE
	bvs  64.b		; 70 40
	sed		; F8
	tsb $C228.w		; 0C 28 C2
	stz $FE.b		; 64 FE
	sei		; 78
	nop		; EA
	inc $7F7C.w,X		; FE 7C 7F
	bpl  -5.b		; 10 FB
	bit $3BFB.w,X		; 3C FB 3B
	jsr ($FD1E.w,X)		; FC 1E FD
	ora $E8BD.w,X		; 1D BD E8
	sbc $0000.w,X		; FD 00 00
	mvp $FE,$3E		; 44 3E FE
	cpy #$7FFE.w		; C0 FE 7F
	rol $FA3F.w		; 2E 3F FA
	asl $0FFC.w,X		; 1E FC 0F
	sbc $FE07.w,X		; FD 07 FE
	ora $FF.b,S		; 03 FF
	cpy #$BF3F.w		; C0 3F BF
	cpy #$8822.w		; C0 22 88
	inc $22.b		; E6 22
	inc $7F.b		; E6 7F
	jsr $62FC.w		; 20 FC 62
	sbc $F4FCB4.l,X		; FF B4 FC F4
	cmp $10F740.l,X		; DF 40 F7 10
	eor $C31B.w,X		; 5D 1B C3
	ldy $F7.b		; A4 F7
	adc $FEA2.w,Y		; 79 A2 FE
	and $A2A3E2.l,X		; 3F E2 A3 A2
	brk $E3.b		; 00 E3
	beq  44.b		; F0 2C
	ora $5CFE3C.l,X		; 1F 3C FE 5C
	and $3F7CFE.l,X		; 3F FE 7C 3F
	clv		; B8
	jsr $7F00.w		; 20 00 7F
	inc $EC86.w,X		; FE 86 EC
	inc $01E0.w,X		; FE E0 01
	tsb $C8FE.w		; 0C FE C8
	rol $DB24.w		; 2E 24 DB
	cmp ($F0.b,S),Y		; D3 F0
	inc $EB14.w,X		; FE 14 EB
	inc $F30C.w,X		; FE 0C F3
	inc $00D8.w,X		; FE D8 00
	cmp $23C7.w,Y		; D9 C7 23
	brk $C9.b		; 00 C9
	brk $EB.b		; 00 EB
	inc $00E3.w,X		; FE E3 00
	sbc ($FE.b),Y		; F1 FE
	jsr ($6091.w,X)		; FC 91 60
	and ($FF.b)		; 32 FF
	ora ($FF.b)		; 12 FF
	cop $FF.b		; 02 FF
	ora ($FE.b,X)		; 01 FE
	bra -88.b		; 80 A8
	lda [$88.b]		; A7 88
	inc $F7F5.w,X		; FE F5 F7
	sbc $F142F0.l,X		; FF F0 42 F1
	tyx		; BB
	brk $1C.b		; 00 1C
	xce		; FB
	cop $FD.b		; 02 FD
	sta ($7E.b,X)		; 81 7E
	ror $60.b		; 66 60
	sta $8D0F78.l,X		; 9F 78 0F 8D
	lda [$B7.b]		; A7 B7
	cld		; D8
	bpl -17.b		; 10 EF
	.db $62, $7C, $2A		; 62 7C 2A
	sbc #$1E.b		; E9 1E
	adc $8280.w,X		; 7D 80 82
	sta ($3A.b,X)		; 81 3A
	sbc #$C0.b		; E9 C0
	brk $0E.b		; 00 0E
	sbc $FFD348.l,X		; FF 48 D3 FF
	sta $3EC1.w		; 8D C1 3E
	rol $0EC1.w,X		; 3E C1 0E
	sbc ($F8.b)		; F2 F8
	php		; 08
	cmp $FC52C0.l		; CF C0 52 FC
	tsb $FF85.w		; 0C 85 FF
	cpx $E1.b		; E4 E1
	txs		; 9A
	sbc ($7E.b),Y		; F1 7E
	cmp $8B7D67.l,X		; DF 67 7D 8B
	sbc [$D4.b],Y		; F7 D4
	plx		; FA
	and $69.b,S		; 23 69
	sed		; F8
	bra -128.b		; 80 80
	inx		; E8
	phk		; 4B
	sei		; 78
	cpx $0083.w		; EC 83 00
	iny		; C8
	brk $86.b		; 00 86
	sbc $DDDC04.l,X		; FF 04 DC DD
	sta [$14.b]		; 87 14
	inc $FFFA.w,X		; FE FA FF
	pea $B6FF.w		; F4 FF B6
	adc $F00FF7.l,X		; 7F F7 0F F0
	sta $DC6F5B.l,X		; 9F 5B 6F DC
	ora ($5D.b,S),Y		; 13 5D
	asl $FA.b		; 06 FA
	brk $F6.b		; 00 F6
	and $760454.l,X		; 3F 54 04 76
	tsb $17.b		; 04 17
	asl $8B.b		; 06 8B
	ora $BE.b,S		; 03 BE
	beq   2.b		; F0 02
	cld		; D8
	tsb $EA74.w		; 0C 74 EA
	ora [$25.b]		; 07 25
	sty $D0.b		; 84 D0
	ora $FE7FF8.l		; 0F F8 7F FE
	stz $80F2.w		; 9C F2 80
	sbc ($FE.b)		; F2 FE
	jsr $A8FF.w		; 20 FF A8
	inc $F07A.w,X		; FE 7A F0
	ora #$0E.b		; 09 0E
	sbc ($0A.b),Y		; F1 0A
	sbc ($0B.b),Y		; F1 0B
	beq  23.b		; F0 17
	and ($09.b)		; 32 09
	beq  16.b		; F0 10
	cpx #$FCFE.w		; E0 FE FC
	asl $FEE0.w		; 0E E0 FE
	brk $84.b		; 00 84
	lsr $5E.b		; 46 5E
	inc $AC40.w,X		; FE 40 AC
	sbc $09FDFF.l,X		; FF FF FD 09
	inc $06.b,X		; F6 06
	sbc $FE01.w,Y		; F9 01 FE
	bra 127.b		; 80 7F
	eor ($3E.b,X)		; 41 3E
	and ($0D.b)		; 32 0D
	ora $DC03.w		; 0D 03 DC
	and ($E6.b),Y		; 31 E6
	brk $E6.b		; 00 E6
	txa		; 8A
	ror $1C46.w,X		; 7E 46 1C
	stz $FFF8.w,X		; 9E F8 FF
	asl A		; 0A
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	asl $90.b		; 06 90
	bvs  96.b		; 70 60
	ldy #$E1.b		; A0 E1
	and ($40.b,X)		; 21 40
	ldy #$32.b		; A0 32
	bpl -95.b		; 10 A1
	eor ($6C.b)		; 52 6C
	sec		; 38
	txa		; 8A
	cop $9F.b		; 02 9F
	sbc $F1FCFF.l,X		; FF FF FC F1
	ora $008D00.l,X		; 1F 00 8D 00
	ora ($03.b)		; 12 03
	lda $8F.b,S		; A3 8F
	and $173E.w		; 2D 3E 17
	clv		; B8
	ror $1F11.w		; 6E 11 1F
	ora $3F61F1.l		; 0F F1 61 3F
	cmp ($5B.b,X)		; C1 5B
	and $40.b		; 25 40
	bvs -92.b		; 70 A4
	rti		; 40

	ora ($C3.b,X)		; 01 C3
	sbc $800380.l,X		; FF 80 03 80
	ora $15.b,X		; 15 15
	bra  53.b		; 80 35
	and ($FE.b)		; 32 FE
	adc $8C.b,X		; 75 8C
	jsr ($FF02.w,X)		; FC 02 FF
	rts		; 60

	ror $FAE1.w,X		; 7E E1 FA
	sbc $FB.b,X		; F5 FB
	sbc $F3.b,X		; F5 F3
	sbc $96F7.w,X		; FD F7 96
	cpy $01E1.w		; CC E1 01
	clc		; 18
	asl $FCDD.w		; 0E DD FC
	rts		; 60

	mvn $F1,$FD		; 54 FD F1
	sbc $3437.w,X		; FD 37 34
	bvc -13.b		; 50 F3
	cop $7C.b		; 02 7C
	dec $FFF3.w		; CE F3 FF
	adc $E11B80.l,X		; 7F 80 1B E1
	bra   8.b		; 80 08
	mvn $0E,$C0		; 54 C0 0E
	inc $F0.b,X		; F6 F0
	inc $8203.w		; EE 03 82
	cpx #$0C.b		; E0 0C
	ora $68.b		; 05 68
	bra -26.b		; 80 E6
	.db $82, $E6, $9D		; 82 E6 9D
	ldx $FEE0.w,Y		; BE E0 FE
	sbc $36C0.w,X		; FD C0 36
	asl $FE.b,X		; 16 FE
	.db $42, $F2		; 42 F2
	sbc $FBFE.w,X		; FD FE FB
	rti		; 40

	sbc ($DE.b),Y		; F1 DE
	ora #$FE.b		; 09 FE
	sbc $C02000.l		; EF 00 20 C0
	inc $40FE.w,X		; FE FE 40
	bra  -2.b		; 80 FE
	trb $3E.b		; 14 3E
	stz $06.b		; 64 06
	jsr ($FCFE.w,X)		; FC FE FC
	sbc $050206.l,X		; FF 06 02 05
	ora ($04.b,X)		; 01 04
	asl $FA94.w,X		; 1E 94 FA
	tsb $02.b		; 04 02
	cop $B0.b		; 02 B0
	ldy #$F1.b		; A0 F1
	txs		; 9A
	sbc ($FC.b),Y		; F1 FC
	sbc $CF945E.l,X		; FF 5E 94 CF
	adc ($D1.b),Y		; 71 D1
	ldy #$D0.b		; A0 D0
	cli		; 58
	pla		; 68
	clc		; 18
	pla		; 68
	bmi 104.b		; 30 68
	jmp $B98F54.l		; 5C 54 8F B9
	php		; 08
	tsb $2E.b		; 04 2E
	rol A		; 2A
	asl $8704.w		; 0E 04 87
	inc $FFA3.w,X		; FE A3 FF
	sbc $D1C93A.l,X		; FF 3A C9 D1
	brk $7A.b		; 00 7A
	lda $7B.b		; A5 7B
	bit $29.b		; 24 29
	ror $EC.b,X		; 76 EC
	adc ($F7.b,S),Y		; 73 F7
	tsa		; 3B
	sbc [$39.b],Y		; F7 39
	plx		; FA
	ora $FD1DFE.l,X		; 1F FE 1D FD
	asl $3500.w,X		; 1E 00 35
	ldy #$FE.b		; A0 FE
	ror $A0.b,X		; 76 A0
	tda		; 7B
	sbc ($3B.b,X)		; E1 3B
	beq  -1.b		; F0 FF
	sbc $1DF03D.l,X		; FF 3D F0 1D
	inx		; E8
	asl $F9F6.w,X		; 1E F6 F9
	inc $6FF1.w,X		; FE F1 6F
	sbc ($F7.b),Y		; F1 F7
	ora #$FF.b		; 09 FF
	ora $0F6D.w		; 0D 6D 0F
	sbc #$9F.b		; E9 9F
	adc $FB77F3.l		; 6F F3 77 FB
	asl A		; 0A
	rts		; 60

	adc $6F.b		; 65 6F
	ora $693F.w		; 0D 3F 69
	sta $01FF0D.l,X		; 9F 0D FF 01
	sbc ($03.b,S),Y		; F3 03
	sbc $F8FE0C.l,X		; FF 0C FE F8
	ora [$FE.b],Y		; 17 FE
	sbc ($0F.b)		; F2 0F
	sta [$2A.b]		; 87 2A
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ora $421FFE.l		; 0F FE 1F 42
	sbc $40.b,S		; E3 40
	inc $42.b		; E6 42
	inc $D8.b		; E6 D8
	ora $FCD591.l,X		; 1F 91 D5 FC
	brk $E2.b		; 00 E2
	cmp ($20.b),Y		; D1 20
	sbc $61FE21.l,X		; FF 21 FE 61
	inc $8C62.w,X		; FE 62 8C
	asl $FEDE.w		; 0E DE FE
	lda $7AFE.w,X		; BD FE 7A
	sta $FA.b,S		; 83 FA
	inc $00FA.w,X		; FE FA 00
	asl $F812.w		; 0E 12 F8
	phd		; 0B
	.db $42, $C0		; 42 C0
	ora ($7E.b,S),Y		; 13 7E
	iny		; C8
	ora $B2A4.w,X		; 1D A4 B2
	ora $95FFFF.l,X		; 1F FF FF 95
	cmp $65A649.l		; CF 49 A6 65
	eor ($32.b,S),Y		; 53 32
	and [$0E.b],Y		; 37 0E
	php		; 08
	ora [$07.b]		; 07 07
	cop $49.b		; 02 49
	brk $60.b		; 00 60
	sta [$7E.b],Y		; 97 7E
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	asl $FFE9.w,X		; 1E E9 FF
	cop $00.b		; 02 00
	ror $07.b,X		; 76 07
	ply		; 7A
	ora $3F.b,S		; 03 3F
	jmp $BFEA8E.l		; 5C 8E EA BF
	bra  63.b		; 80 3F
	bra -97.b		; 80 9F
	stx $40.b		; 86 40
	sed		; F8
	ora [$3E.b]		; 07 3E
	pea $F7C3.w		; F4 C3 F7
	sei		; 78
	cpx $EE3F.w		; EC 3F EE
	rol $75.b		; 26 75
	sty $6067.w		; 8C 67 60
	adc ($ED.b)		; 72 ED
	bcc  -9.b		; 90 F7
	cmp [$C8.b],Y		; D7 C8
	bcc   3.b		; 90 03
	ror $03.b,X		; 76 03
	cpy $E9.b		; C4 E9
	beq  -4.b		; F0 FC
	adc $C7AAFE.l		; 6F FE AA C7
	inc $83.b,X		; F6 83
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	inc $F0.b		; E6 F0
	sed		; F8
	asl $E222.w		; 0E 22 E2
	cli		; 58
	and $38FE59.l,X		; 3F 59 FE 38
	cpy $73.b		; C4 73
	inc $7FB7.w,X		; FE B7 7F
	asl $FE1D.w		; 0E 1D FE
	adc $3C.b,S		; 63 3C
	and $3B00.w,X		; 3D 00 3B
	inc $FE37.w,X		; FE 37 FE
	eor ($FE.b,X)		; 41 FE
	cmp ($EE.b,X)		; C1 EE
	sta $FC82FE.l,X		; 9F FE 82 FC
	inc $02FC.w,X		; FE FC 02
	jsr ($00F6.w,X)		; FC F6 00
	pea $EC00.w		; F4 00 EC
	sbc $DCFEFF.l,X		; FF FF FE DC
	brk $D8.b		; 00 D8
	brk $B8.b		; 00 B8
	brk $06.b		; 00 06
	brk $0A.b		; 00 0A
	tsb $04.b		; 04 04
	brk $1A.b		; 00 1A
	tsb $87.b		; 04 87
	ora ($2F.b,X)		; 01 2F
	ora ($72.b)		; 12 72
	and ($FE.b,X)		; 21 FE
	lsr $4C33.w,X		; 5E 33 4C
	inx		; E8
	sed		; F8
	sbc ($FC.b)		; F2 FC
	ora ($00.b)		; 12 00
	and ($FE.b,X)		; 21 FE
	and ($00.b)		; 32 00
	stz $3FFF.w,X		; 9E FF 3F
	rti		; 40

	adc $204F20.l		; 6F 20 4F 20
	and [$10.b],Y		; 37 10
	and [$10.b]		; 27 10
	txy		; 9B
	php		; 08
	sta ($08.b,S),Y		; 93 08
	bit #$04.b		; 89 04
	tay		; A8
	bvc  78.b		; 50 4E
.INDEX 16
	rep #$DA		; C2 DA
	ldy $F2.b		; A4 F2
	tya		; 98
	sbc ($54.b)		; F2 54
	adc [$70.b]		; 67 70
	bne  15.b		; D0 0F
	lda $F8FEC2.l		; AF C2 FE F8
	ora ($F3.b)		; 12 F3
	php		; 08
	sbc $D5F2.w,Y		; F9 F2 D5
	beq  -4.b		; F0 FC
	.db $42, $C8		; 42 C8
	ora #$FE.b		; 09 FE
	lda [$FF.b]		; A7 FF
	sbc ($7F.b),Y		; F1 7F
	sbc [$7F.b]		; E7 7F
	dec $4E7F.w		; CE 7F 4E
	sbc $1CFF5E.l,X		; FF 5E FF 1C
	inc $FF3C.w,X		; FE 3C FF
	jmp.w [$77C2]		; DC C2 77
	asl A		; 0A
	eor $BEF35A.l,X		; 5F 5A F3 BE
	phy		; 5A
	sbc ($4E.b),Y		; F1 4E
	tsb $0E.b		; 04 0E
	bpl  -8.b		; 10 F8
	inc $09F8.w,X		; FE F8 09
	php		; 08
	beq  78.b		; F0 4E
	inc $A578.w,X		; FE 78 A5
	cmp [$FE.b],Y		; D7 FE
	inc $FEB2.w,X		; FE B2 FE
	and $121E.w		; 2D 1E 12
	tsb $F494.w		; 0C 94 F4
	sbc $F55EFC.l,X		; FF FC 5E F5
	asl $F060.w,X		; 1E 60 F0
	asl $0206.w		; 0E 06 02
	ora $4C.b,S		; 03 4C
	sbc #$30.b		; E9 30
	beq  11.b		; F0 0B
	sbc $760DF8.l,X		; FF F8 0D 76
	sbc ($BF.b)		; F2 BF
	bra  17.b		; 80 11
	rol $409F.w		; 2E 9F 40
	trb $14B4.w		; 1C B4 14
	rol $6418.w,X		; 3E 18 64
	pea $EA81.w		; F4 81 EA
	inc A		; 1A
	asl $EA18.w,X		; 1E 18 EA
	bit $F8.b		; 24 F8
	ora $FEDA8C.l,X		; 1F 8C DA FE
	jsr ($1004.w,X)		; FC 04 10
	bit $FE03.w,X		; 3C 03 FE
	ora $CD.b		; 05 CD
	cpy $E8.b		; C4 E8
	asl $FF38.w		; 0E 38 FF
	adc $E31E.w,Y		; 79 1E E3
	inc $FF72.w,X		; FE 72 FF
	sbc ($FE.b)		; F2 FE
	inc $FE.b		; E6 FE
	adc $4151.w,X		; 7D 51 41
	brk $7B.b		; 00 7B
	inc $E482.w,X		; FE 82 E4
	bra -30.b		; 80 E2
	rol $F8FE.w		; 2E FE F8
	ora $3F85.w		; 0D 85 3F
	plp		; 28
	inc $DC7A.w,X		; FE 7A DC
	inc $1635.w,X		; FE 35 16
	and ($01.b,X)		; 21 01
	bit $00.b		; 24 00
	rol $287C.w		; 2E 7C 28
	ror $3B10.w		; 6E 10 3B
	php		; 08
	rol $6802.w,X		; 3E 02 68
	php		; 08
	tay		; A8
	stp		; DB
	sbc $62F0.w,X		; FD F0 62
	ora [$00.b]		; 07 00
	ora ($10.b),Y		; 11 10
	trb $441C.w		; 1C 1C 44
	sbc [$20.b]		; E7 20
	lda $071F.w,X		; BD 1F 07
	cpy $17.b		; C4 17
	clc		; 18
	ora $03.b,S		; 03 03
	bra -46.b		; 80 D2
	ldy $4480.w,X		; BC 80 44
	brk $50.b		; 00 50
	cpx $7B.b		; E4 7B
	inc $9A.b,X		; F6 9A
	inc $DCE4.w		; EE E4 DC
	lda #$D2.b		; A9 D2
	inc $DA.b		; E6 DA
	inc $E00F.w,X		; FE 0F E0
	cmp $D8E4.w,Y		; D9 E4 D8
	ora #$FE.b		; 09 FE
	cpx $58F1.w		; EC F1 58
	sbc $DCFECC.l,X		; FF CC FE DC
	sbc $B8FE9C.l,X		; FF 9C FE B8
	rts		; 60

	cmp #$73.b		; C9 73
	lsr $A2.b,X		; 56 A2
	tsx		; BA
	cmp $FEBFFE.l,X		; DF FE BF FE
	inx		; E8
	dec $FE.b,X		; D6 FE
	inc $0055.w,X		; FE 55 00
	pla		; 68
	inc $D4DC.w,X		; FE DC D4
	sta ($AD.b,X)		; 81 AD
	sbc $90B2FD.l,X		; FF FD B2 90
	sta ($EB.b,X)		; 81 EB
	sbc $ED0EF8.l,X		; FF F8 0E ED
	sbc $C9EA38.l,X		; FF 38 EA C9
	pha		; 48
	nop		; EA
	plx		; FA
	cmp ($FD.b)		; D2 FD
	asl $E6.b		; 06 E6
	sbc $01F0ED.l,X		; FF ED F0 01
	beq 122.b		; F0 7A
	wai		; CB
	jsr $105F.w		; 20 5F 10
	cmp [$51.b],Y		; D7 51
	jmp ($BE44.w,X)		; 7C 44 BE
	mvp $B9,$42		; 44 42 B9
	sbc $230F0F.l,X		; FF 0F 0F 23
	ora $F0.b,S		; 03 F0
	sta [$E1.b]		; 87 E1
	phy		; 5A
	pei ($E6.b)		; D4 E6
	brk $FB.b		; 00 FB
	asl $F7.b		; 06 F7
	ora $30FFFE.l		; 0F FE FF 30
	xce		; FB
	ora [$FD.b]		; 07 FD
	sta $DE.b,S		; 83 DE
	ora ($FB.b),Y		; 11 FB
	cop $19.b		; 02 19
	inc $EFE0.w		; EE E0 EF
	ror $FE54.w,X		; 7E 54 FE
	adc [$70.b],Y		; 77 70
	phd		; 0B
	php		; 08
	sbc ($1A.b,X)		; E1 1A
	cop $E2.b		; 02 E2
	.db $42, $C2		; 42 C2
	dey		; 88
	cmp $1CFE.w		; CD FE 1C
	inc $002D.w,X		; FE 2D 00
	sbc $0E.b		; E5 0E
	ora ($F2.b),Y		; 11 F2
	inc $FE0D.w,X		; FE 0D FE
	rol $FE78.w		; 2E 78 FE
	sed		; F8
	lda $FBFF9E.l,X		; BF 9E FF FB
	jsr ($FBFD.w,X)		; FC FD FB
	xce		; FB
	cmp [$00.b]		; C7 00
	bne   9.b		; D0 09
	dec $03B9.w,X		; DE B9 03
	cpy #$6E07.w		; C0 07 6E
	php		; 08
	bit $E017.w		; 2C 17 E0
	and $7FC968.l,X		; 3F 68 C9 7F
	jsr ($84F0.w,X)		; FC F0 84
	ror $2CD9.w,X		; 7E D9 2C
	inc $CA65.w,X		; FE 65 CA
	cmp [$60.b]		; C7 60
	sbc ($F0.b),Y		; F1 F0
	plx		; FA
	pha		; 48
	adc $D21F57.l,X		; 7F 57 1F D2
	bvs  -1.b		; 70 FF
	clc		; 18
	sbc $07FF0C.l,X		; FF 0C FF 07
	rts		; 60

	clv		; B8
	rol $A544.w,X		; 3E 44 A5
	adc [$00.b],Y		; 77 00
	txy		; 9B
	cmp [$7B.b],Y		; D7 7B
	lda $F7E1.w,X		; BD E1 F7
	brk $79.b		; 00 79
	jmp $D1A9B2.l		; 5C B2 A9 D1
	rts		; 60

	sbc $E94130.l,X		; FF 30 41 E9
	asl $FF.b		; 06 FF
	sta $D4.b,S		; 83 D4
	lda $C92BE2.l,X		; BF E2 2B C9
	and $B3E9.w,X		; 3D E9 B3
	brk $DD.b		; 00 DD
	brk $66.b		; 00 66
	brk $BB.b		; 00 BB
	xba		; EB
	sbc $F2.b,X		; F5 F2
	clv		; B8
	tsb $F801.w		; 0C 01 F8
	cmp $EDF2.w,X		; DD F2 ED
	sed		; F8
	phd		; 0B
	and $5C04FF.l,X		; 3F FF 04 5C
	lda $D170.w,Y		; B9 70 D1
	sbc $43FF02.l,X		; FF 02 FF 43
	inc $18.b		; E6 18
	ora $FD.b,S		; 03 FD
	ora $FC.b,S		; 03 FC
	ora $F0.b,S		; 03 F0
	ora [$F0.b]		; 07 F0
	ora $67.b,S		; 03 67
	sed		; F8
	tay		; A8
	phy		; 5A
	cmp $01.b,X		; D5 01
	sbc $E892BB.l,X		; FF BB 92 E8
	ora $F8C3.w		; 0D C3 F8
	ora $A880.w		; 0D 80 A8
	ora ($9F.b),Y		; 11 9F
	cpx #$10B0.w		; E0 B0 10
	sed		; F8
	lda $FF039F.l,X		; BF 9F 03 FF
	and [$CF.b],Y		; 37 CF
	eor $57ABBF.l,X		; 5F BF AB 57
	cmp $7E3F.w,X		; DD 3F 7E
	adc $4016.w,X		; 7D 16 40
	lda ($F3.b,S),Y		; B3 F3
	.db $42, $B9		; 42 B9
	lda $084F00.l,X		; BF 00 4F 08
	lsr $A8.b		; 46 A8
	cmp #$46.b		; C9 46
	ldy $3FFE.w		; AC FE 3F
	bra   4.b		; 80 04
	inc $7EBF.w,X		; FE BF 7E
	sbc ($D2.b),Y		; F1 D2
	cmp [$68.b],Y		; D7 68
	dec $BCE2.w,X		; DE E2 BC
	dec $00E7.w,X		; DE E7 00
	cmp [$10.b]		; C7 10
	adc $C6DB5E.l		; 6F 5E DB C6
	inc $C2.b,X		; F6 C2
	beq -17.b		; F0 EF
	lsr $FEDF.w,X		; 5E DF FE
	and #$1F.b		; 29 1F
	inc $1F2B.w,X		; FE 2B 1F
	and ($F0.b,S),Y		; 33 F0
	ora $37FE1E.l,X		; 1F 1E FE 37
	asl $1F26.w,X		; 1E 26 1F
	lsr $3F.b		; 46 3F
	ora $1B00.w		; 0D 00 1B
	cmp $1AFEFF.l		; CF FF FE 1A
	brk $16.b		; 00 16
	inc $000F.w,X		; FE 0F 00
	cmp $BB.b,X		; D5 BB
	tyx		; BB
	adc $F5FD.w,X		; 7D FD F5
	sbc $277F7E.l,X		; FF 7E 7F 27
	lda ($FB.b),Y		; B1 FB
	sta $BF7F.w,Y		; 99 7F BF
	adc $003B80.l,X		; 7F 80 3B 00
	adc $7E18.w,X		; 7D 18 7E
	bit $BE1D.w,X		; 3C 1D BE
	inc $AC3E.w,X		; FE 3E AC
	lda #$1F.b		; A9 1F
	adc $FBFCFE.l,X		; 7F FE FC FB
	xce		; FB
	sbc $F8FF.w,X		; FD FF F8
	ora $DCB142.l,X		; 1F 42 B1 DC
	ldx $BEDF.w,Y		; BE DF BE
	lda $FBF8DE.l,X		; BF DE F8 FB
	sei		; 78
	sbc $1FC2.w,X		; FD C2 1F
	inc $FE3C.w,X		; FE 3C FE
	ror $BE1C.w,X		; 7E 1C BE
	asl $8EBE.w,X		; 1E BE 8E
	cmp $CF7FFE.l,X		; DF FE 7F CF
	lda $E0DFC0.l,X		; BF C0 DF E0
	cmp [$E8.b],Y		; D7 E8
	sbc [$EC.b],Y		; F7 EC
	inc $6FE7.w,X		; FE E7 6F
	sbc [$EF.b],Y		; F7 EF
	adc [$FF.b],Y		; 77 FF
	sbc $EFA9C7.l,X		; FF C7 A9 EF
	bra -25.b		; 80 E7
	cpy #$C0E9.w		; C0 E9 C0
	inc $EF40.w		; EE 40 EF
	rti		; 40

	sbc [$40.b],Y		; F7 40
	adc [$FF.b],Y		; 77 FF
	inc $C1E1.w,X		; FE E1 C1
	stz $F4.b		; 64 F4
	sta $798777.l		; 8F 77 87 79
	sbc ($9E.b,X)		; E1 9E
	beq  37.b		; F0 25
	cmp $3E00.w		; CD 00 3E
	sbc $6476.w,X		; FD 76 64
	sbc ($03.b)		; F2 03
	sbc [$01.b],Y		; F7 01
	adc $E0D4.w,Y		; 79 D4 E0
	cmp $7C6FF0.l,X		; DF F0 6F 7C
	sbc $3EB3E1.l,X		; FF E1 B3 3E
	cmp $669F.w,X		; DD 9F 66
	cmp [$BB.b]		; C7 BB
	sbc ($CD.b,S),Y		; F3 CD
	sbc $DFE4.w,Y		; F9 E4 DF
	rts		; 60

	sbc $306FBF.l,X		; FF BF 6F 30
	lda ($1C.b,S),Y		; B3 1C
	cmp $6606.w,X		; DD 06 66
	sta $BB.b,S		; 83 BB
	cmp ($CD.b,X)		; C1 CD
	bvs 118.b		; 70 76
	ora ($FE.b,X)		; 01 FE
	rol $03.b		; 26 03
	sbc #$AB.b		; E9 AB
	tsa		; 3B
	sbc ($3F.b)		; F2 3F
	pei ($83.b)		; D4 83
	tya		; 98
	asl A		; 0A
	and $FFFC87.l,X		; 3F 87 FC FF
	pei ($FF.b)		; D4 FF
	bra -89.b		; 80 A7
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	stz $A7.b		; 64 A7
	rol $37D0.w,X		; 3E D0 37
	cpy #$FB1B.w		; C0 1B FB
	adc $F40FE0.l		; 6F E0 0F F4
	ldy #$01E2.w		; A0 E2 01
	bra  24.b		; 80 18
	bra  15.b		; 80 0F
	cpy #$E00F.w		; C0 0F E0
	lsr $F1.b,X		; 56 F1
	beq  -1.b		; F0 FF
	eor $D5.b,X		; 55 D5
	jsr ($C05F.w,X)		; FC 5F C0
	sta [$E0.b]		; 87 E0
	wai		; CB
	clc		; 18
	sbc $04.b		; E5 04
	clc		; 18
	jmp.w [$B282]		; DC 82 B2
	ply		; 7A
	ldy $98.b		; A4 98
	asl $4EF6.w,X		; 1E F6 4E
	and $3F5EFE.l,X		; 3F FE 5E 3F
	eor $FE3E.w,X		; 5D 3E FE
	clc		; 18
	inc $3E7D.w,X		; FE 7D 3E
	ror $0F3D.w,X		; 7E 3D 0F
	brk $2F.b		; 00 2F
	cpx $1E.b		; E4 1E
	ora $FF.b		; 05 FF
	inc $A202.w,X		; FE 02 A2
	inc $F1ED.w,X		; FE ED F1
	sta $B74FFF.l,X		; 9F FF 4F B7
	and $F0FF0F.l		; 2F 0F FF F0
	sta [$97.b],Y		; 97 97
	txy		; 9B
	ora $070B.w		; 0D 0B 07
	ora $0F.b		; 05 0F
	and $1F07FE.l,X		; 3F FE 07 1F
	eor $07.b,S		; 43 07
	adc $07610F.l,X		; 7F 0F 61 07
	rts		; 60

	lda $F9.b,S		; A3 F9
	sbc #$DFFE.w		; E9 FE DF
	inc $DFDF.w		; EE DF DF
	sbc $078780.l		; EF 80 87 07
	sbc $F7FF.w,X		; FD FF F7
	xce		; FB
	sbc [$FD.b],Y		; F7 FD
	adc ($E8.b,X)		; 61 E8
	stx $DF.b		; 86 DF
	ror A		; 6A
	cpy #$FEEF.w		; C0 EF FE
	bra -65.b		; 80 BF
	jmp.w [$FFFB]		; DC FB FF
	sbc ($FF.b,X)		; E1 FF
	adc [$FB.b],Y		; 77 FB
	adc [$BB.b],Y		; 77 BB
	adc [$BF.b],Y		; 77 BF
	adc ($7F.b,S),Y		; 73 7F
	lda ($FE.b,S),Y		; B3 FE
	sbc $1A8FB3.l,X		; FF B3 8F 1A
	sbc [$BB.b],Y		; F7 BB
	rti		; 40

	adc [$20.b],Y		; 77 20
	inc $E960.w,X		; FE 60 E9
	adc $B1.b,S		; 63 B1
	ora ($7F.b,X)		; 01 7F
	ora ($FE.b,X)		; 01 FE
	inx		; E8
	sbc [$F6.b],Y		; F7 F6
	sbc $FCFF.w,Y		; F9 FF FC
	ldy #$0A90.w		; A0 90 0A
	cpy $5FD6.w		; CC D6 5F
	tad		; 5B
	inc $6A70.w,X		; FE 70 6A
	lda #$FCFF.w		; A9 FF FC
	jmp ($1F9B.w,X)		; 7C 9B 1F
	cpx $F70F.w		; EC 0F F7
	cpy $F4.b		; C4 F4
	sed		; F8
	phd		; 0B
	pei ($FE.b)		; D4 FE
	sbc $9B18.w,Y		; F9 18 9B
	tsb $07EC.w		; 0C EC 07
	cpy $F5.b		; C4 F5
	phk		; 4B
	cmp ($9C.b)		; D2 9C
	cpx #$C4F9.w		; E0 F9 C4
	beq  11.b		; F0 0B
	pei ($C4.b)		; D4 C4
	beq  11.b		; F0 0B
	pei ($05.b)		; D4 05
	sbc $06F813.l,X		; FF 13 F8 06
	sed		; F8
	ora $FD.b,S		; 03 FD
	cmp $3C.b,S		; C3 3C
	sbc ($DE.b,X)		; E1 DE
	sbc ($6E.b),Y		; F1 6E
	pei ($7A.b)		; D4 7A
	ora $484D.w,X		; 1D 4D 48
	nop		; EA
	rol $DEC0.w,X		; 3E C0 DE
	tya		; 98
	pea $EF48.w		; F4 48 EF
	bra -65.b		; 80 BF
	nop		; EA
	sbc $3640FC.l,X		; FF FC 40 36
	inx		; E8
	phd		; 0B
	txs		; 9A
	xba		; EB
	bra -69.b		; 80 BB
	adc $7CBA.w,X		; 7D BA 7C
	lda $B77A.w,X		; BD 7A B7
	ply		; 7A
	adc $78B511.l,X		; 7F 11 B5 78
	lda [$78.b],Y		; B7 78
	sbc $70FB74.l,X		; FF 74 FB 70
	cpx $FE81.w		; EC 81 FE
	asl A		; 0A
	adc $7A7B81.l,X		; 7F 81 7B 7A
	txy		; 9B
	and $0281.w,Y		; 39 81 02
	cmp $02.b,S		; C3 02
	beq   1.b		; F0 01
	sbc $F954.w,Y		; F9 54 F9
	plb		; AB
	ldy $A1.b,X		; B4 A1
	inc $7EFD.w,X		; FE FD 7E
	ldx $FBFE.w		; AE FE FB
	adc $BFF0.w,X		; 7D F0 BF
	xce		; FB
	sbc $7DBE.w,X		; FD BE 7D
	ror $DDBD.w,X		; 7E BD DD
	ldx $5E3F.w,Y		; BE 3F 5E
	adc $0C315E.l		; 6F 5E 31 0C
	cmp $A3.b,S		; C3 A3
	adc $3DFE.w,X		; 7D FE 3D
	jmp ($1E80.w,X)		; 7C 80 1E
	and $D7FE7C.l,X		; 3F 7C FE D7
	tyx		; BB
	cmp $DBBDBB.l,X		; DF BB BD DB
	inc $DBFD.w,X		; FE FD DB
	sbc $74EFD9.l,X		; FF D9 EF 74
	and $FE.b,X		; 35 FE
	cpx $00F2.w		; EC F2 00
	stp		; DB
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	bcc  16.b		; 90 10
	sbc $2A7FFF.l,X		; FF FF 7F 2A
	eor $08FE.w,X		; 5D FE 08
	sta $F0C4.w,Y		; 99 C4 F0
	asl A		; 0A
	sbc $F8FEF0.l,X		; FF F0 FE F8
	cpy $F7.b		; C4 F7
	sta ($2C.b)		; 92 2C
	sbc $0BF0C4.l,X		; FF C4 F0 0B
	pei ($C4.b)		; D4 C4
	inc $C0.b,X		; F6 C0
	cpy $F1.b		; C4 F1
	sbc $D4FB.w,Y		; F9 FB D4
	cpy $F0.b		; C4 F0
	ora #$ED1E.w		; 09 1E ED
	ora $7B87F6.l		; 0F F6 87 7B
	cpy $F0.b		; C4 F0
	asl A		; 0A
	sbc $F606.w		; ED 06 F6
	cmp $E1.b,S		; C3 E1
	ora $7B.b,S		; 03 7B
	cmp $FF203E.l,X		; DF 3E 20 FF
	bra -47.b		; 80 D1
	sbc $FFFF50.l,X		; FF 50 FF FF
	adc $C037A0.l,X		; 7F A0 37 C0
	lda $803F48.l,X		; BF 48 3F 80
	ora $809F00.l,X		; 1F 00 9F 80
	sta $400FC0.l,X		; 9F C0 0F 40
	eor $A00F00.l,X		; 5F 00 0F A0
	ora $6007C0.l		; 0F C0 07 60
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $AB.b,X		; 35 AB
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	.db $42, $0C		; 42 0C
	inc $F8C8.w,X		; FE C8 F8
	and $FCF8.w,Y		; 39 F8 FC
	lda $F8FEBF.l,X		; BF BF FE F8
	tsb $0D91.w		; 0C 91 0D
	sta ($0D.b)		; 92 0D
	sta ($0D.b,S),Y		; 93 0D
	inc $0BF8.w		; EE F8 0B
	sta ($4D.b,S),Y		; 93 4D
	sta ($4D.b)		; 92 4D
	sta ($4D.b),Y		; 91 4D
	inc $D47F.w,X		; FE 7F D4
	sed		; F8
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	ora ($94.b),Y		; 11 94
	ora $0D95.w		; 0D 95 0D
	stx $0D.b,Y		; 96 0D
	sta [$0D.b],Y		; 97 0D
	tya		; 98
	ora $0D99.w		; 0D 99 0D
	txs		; 9A
	sed		; F8
	cmp $FE.b,S		; C3 FE
	eor $4D99.w		; 4D 99 4D
	tya		; 98
	eor $4D97.w		; 4D 97 4D
	inc $FD95.w		; EE 95 FD
	and $BE944D.l,X		; 3F 4D 94 BE
	sed		; F8
	bit $9B.b		; 24 9B
	ora $0D9C.w		; 0D 9C 0D
	sta $9E0D.w,X		; 9D 0D 9E
	ora $0D9F.w		; 0D 9F 0D
	ldy #$87C6.w		; A0 C6 87
	inc $FCF4.w,X		; FE F4 FC
	sta $4D9E4D.l,X		; 9F 4D 9E 4D
	inc $F9FB.w		; EE FB F9
	stz $9B4D.w		; 9C 4D 9B
	ror $26F8.w,X		; 7E F8 26
	lda ($0D.b,X)		; A1 0D
	ldx #$A30D.w		; A2 0D A3
.ACCU 16
	rep #$A4		; C2 A4
	ora $FDFC.w		; 0D FC FD
	sbc $F8.b,X		; F5 F8
	lda $4D.b,S		; A3 4D
	ldx #$A14D.w		; A2 4D A1
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	rol $A5.b		; 26 A5
	ora $0DA6.w		; 0D A6 0D
	cpx $A7F7.w		; EC F7 A7
	dex		; CA
	inc $0BF8.w,X		; FE F8 0B
	lda [$4D.b]		; A7 4D
	ldx $4D.b		; A6 4D
	lda $BE.b		; A5 BE
	sed		; F8
	bit $A8.b		; 24 A8
	ora $87F8.w		; 0D F8 87
	lda #$AAD0.w		; A9 D0 AA
	ora $0DAB.w		; 0D AB 0D
	ldy $AD0D.w		; AC 0D AD
	inc $DC3F.w,X		; FE 3F DC
	eor $4DAC.w		; 4D AC 4D
	plb		; AB
	eor $4DAA.w		; 4D AA 4D
	inc $4DA9.w		; EE A9 4D
	tay		; A8
	cpy #$24F8.w		; C0 F8 24
	sbc $0DAE0F.l,X		; FF 0F AE 0D
	lda $0DB00D.l		; AF 0D B0 0D
	lda ($0D.b),Y		; B1 0D
	lda ($0D.b)		; B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ldy $FF.b,X		; B4 FF
	sbc $B34DFE.l		; EF FE 4D B3
	eor $4DB2.w		; 4D B2 4D
	lda ($4D.b),Y		; B1 4D
	bcs  77.b		; B0 4D
	lda $C0AE4D.l		; AF 4D AE C0
	sed		; F8
	bit $B5.b		; 24 B5
	sbc $B60D87.l,X		; FF 87 0D B6
	ora $0DB7.w		; 0D B7 0D
	clv		; B8
	ora $0DB9.w		; 0D B9 0D
	tsx		; BA
	ora $FEBB.w		; 0D BB FE
	sbc $BA4DF7.l,X		; FF F7 4D BA
	eor $4DB9.w		; 4D B9 4D
	clv		; B8
	eor $4DB7.w		; 4D B7 4D
	ldx $4D.b,Y		; B6 4D
	lda $C0.b,X		; B5 C0
	sed		; F8
	jsl $FF0DBC.l		; 22 BC 0D FF
	ora $BE0DBD.l		; 0F BD 0D BE
	ora $0DBF.w		; 0D BF 0D
	cpy #$C10D.w		; C0 0D C1
	ora $0DC2.w		; 0D C2 0D
	cmp $FF.b,S		; C3 FF
	lda $C24DFE.l,X		; BF FE 4D C2
	eor $4DC1.w		; 4D C1 4D
	cpy #$BF4D.w		; C0 4D BF
	eor $4DBE.w		; 4D BE 4D
	lda $BC4D.w,X		; BD 4D BC
	sbc $F8BE7F.l,X		; FF 7F BE F8
	jsr $0DC4.w		; 20 C4 0D
	cmp $0D.b		; C5 0D
	dec $0D.b		; C6 0D
	cmp [$0D.b]		; C7 0D
	iny		; C8
	ora $0DC9.w		; 0D C9 0D
	dex		; CA
	ora $F8CB.w		; 0D CB F8
	sbc $CA4DFE.l,X		; FF FE 4D CA
	eor $4DC9.w		; 4D C9 4D
	iny		; C8
	eor $4DC7.w		; 4D C7 4D
	dec $4D.b		; C6 4D
	cmp $FD.b		; C5 FD
	sbc $C0C44D.l,X		; FF 4D C4 C0
	sed		; F8
	jsr $0DCC.w		; 20 CC 0D
	cmp $CE0D.w		; CD 0D CE
	ora $0DCF.w		; 0D CF 0D
	bne  13.b		; D0 0D
	cmp ($0D.b),Y		; D1 0D
	ora $0DD2FF.l		; 0F FF D2 0D
	cmp ($0D.b,S),Y		; D3 0D
	inc $FA.b,X		; F6 FA
	eor $4DD1.w		; 4D D1 4D
	bne  77.b		; D0 4D
	cmp $FDEF4D.l		; CF 4D EF FD
	dec $CD4D.w		; CE 4D CD
	eor $C0CC.w		; 4D CC C0
	sed		; F8
	jsr $0DD4.w		; 20 D4 0D
	cmp $46.b,X		; D5 46
	xba		; EB
	dec $0D.b,X		; D6 0D
	cmp [$0D.b],Y		; D7 0D
	ora $0DD8CF.l		; 0F CF D8 0D
	cmp $F70D.w,Y		; D9 0D F7
	plx		; FA
	eor $4DD7.w		; 4D D7 4D
	dec $F7.b,X		; D6 F7
	sbc ($C8.b,S),Y		; F3 C8
	cmp $4D.b,X		; D5 4D
	pei ($C0.b)		; D4 C0
	sed		; F8
	asl $0D94.w,X		; 1E 94 0D
	phx		; DA
	ora $C0DB.w		; 0D DB C0
	jmp.w [$3F1F]		; DC 1F 3F
	ora $0DDD.w		; 0D DD 0D
	dec $DF0D.w,X		; DE 0D DF
	inc $4DDE.w,X		; FE DE 4D
	cmp $DC4D.w,X		; DD 4D DC
	cmp $DBC8EF.l,X		; DF EF C8 DB
	eor $3CDA.w		; 4D DA 3C
	inx		; E8
	asl $0DE0.w,X		; 1E E0 0D
	sbc ($0D.b,X)		; E1 0D
	sep #$C6		; E2 C6
	sbc [$E3.b]		; E7 E3
	adc ($BF.b,X)		; 61 BF
	ora $FEE4.w		; 0D E4 FE
	eor $CEE3.w		; 4D E3 CE
	sbc $E14DE2.l,X		; FF E2 4D E1
	eor $9FE0.w		; 4D E0 9F
	sbc $1CF8C0.l,X		; FF C0 F8 1C
	sbc $0D.b		; E5 0D
	inc $0D.b		; E6 0D
	sbc [$C0.b]		; E7 C0
	inx		; E8
	ora $0DE9.w		; 0D E9 0D
	nop		; EA
	ora $F3F0.w		; 0D F0 F3
	xba		; EB
	inc $EA4D.w,X		; FE 4D EA
	eor $4DE9.w		; 4D E9 4D
	inx		; E8
	dex		; CA
	sbc [$F7.b]		; E7 F7
	sbc $4DE64D.l,X		; FF 4D E6 4D
	sbc $C0.b		; E5 C0
	sed		; F8
	trb $0DEC.w		; 1C EC 0D
	sbc $EE0D.w		; ED 0D EE
	ora $0DEF.w		; 0D EF 0D
	beq  13.b		; F0 0D
	ora $0DF1FF.l		; 0F FF F1 0D
	sbc ($0D.b)		; F2 0D
	sbc ($FE.b,S),Y		; F3 FE
	cmp $8DF3.w		; CD F3 8D
	sbc ($4D.b,S),Y		; F3 4D
	sbc ($4D.b)		; F2 4D
	sbc $4DF1FB.l,X		; FF FB F1 4D
	beq  77.b		; F0 4D
	sbc $4DEE4D.l		; EF 4D EE 4D
	sbc $EC4D.w		; ED 4D EC
	cpy #$1CF8.w		; C0 F8 1C
	sed		; F8
	ora $FFF9.w		; 0D F9 FF
	sta [$0D.b]		; 87 0D
	plx		; FA
	ora $0DFB.w		; 0D FB 0D
	jsr ($FD0D.w,X)		; FC 0D FD
	ora $0DFE.w		; 0D FE 0D
	sbc $FFFF76.l,X		; FF 76 FF FF
	asl $4E00.w		; 0E 00 4E
	sbc $4DFE4D.l,X		; FF 4D FE 4D
	sbc $FC4D.w,X		; FD 4D FC
	eor $4DFB.w		; 4D FB 4D
	plx		; FA
	eor $FDF9.w		; 4D F9 FD
	sbc $C0F84D.l,X		; FF 4D F8 C0
	sed		; F8
	trb $0E01.w		; 1C 01 0E
	cop $0E.b		; 02 0E
	ora $0E.b,S		; 03 0E
	tsb $0E.b		; 04 0E
	ora $0E.b		; 05 0E
	asl $0E.b		; 06 0E
	ora $0E07FF.l		; 0F FF 07 0E
	php		; 08
	asl $FE09.w		; 0E 09 FE
	lsr $4E08.w		; 4E 08 4E
	ora [$4E.b]		; 07 4E
	asl $4E.b		; 06 4E
	sbc $4E05FD.l,X		; FF FD 05 4E
	tsb $4E.b		; 04 4E
	ora $4E.b,S		; 03 4E
	cop $4E.b		; 02 4E
	ora ($4E.b,X)		; 01 4E
	cpy #$1BF8.w		; C0 F8 1B
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	sta [$3F.b]		; 87 3F
	tsb $0D0E.w		; 0C 0E 0D
	asl $0FFF.w		; 0E FF 0F
	asl $0E10.w		; 0E 10 0E
	ora ($0E.b),Y		; 11 0E
	ora ($FC.b)		; 12 FC
	sbc $114EFE.l,X		; FF FE 4E 11
	lsr $4E10.w		; 4E 10 4E
	ora $4E0E4E.l		; 0F 4E 0E 4E
	ora $0C4E.w		; 0D 4E 0C
	lsr $82AB.w		; 4E AB 82
	phd		; 0B
	lsr $C00A.w		; 4E 0A C0
	sed		; F8
	trb $F8FE.w		; 1C FE F8
	adc ($42.b)		; 72 42
	bne  63.b		; D0 3F
	sbc $FFFCF8.l,X		; FF F8 FC FF
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	sbc [$00.b],Y		; F7 00
	sbc $0126F8.l,X		; FF F8 26 01
	brk $0E.b		; 00 0E
	brk $17.b		; 00 17
	brk $7C.b		; 00 7C
	ora $EE.b,S		; 03 EE
	sed		; F8
	asl A		; 0A
	ora ($0F.b,X)		; 01 0F
	cmp ($1F.b,S),Y		; D3 1F
	ora $F61F1F.l		; 0F 1F 1F F6
	ora $007700.l		; 0F 00 77 00
	lda $17FF00.l,X		; BF 00 FF 17
	dec $1FFE.w		; CE FE 1F
	cpx #$FCE4.w		; E0 E4 FC
	inc $7F.b		; E6 7F
	adc $1900FF.l,X		; 7F FF 00 19
	sbc $7EFDF4.l,X		; FF F4 FD 7E
	cpx $22.b		; E4 22
	lda #$FEFE.w		; A9 FE FE
	jsr ($E6FF.w,X)		; FC FF E6
	jsr ($FEE0.w,X)		; FC E0 FE
	ora ($1C.b),Y		; 11 1C
	sbc $B80CFE.l,X		; FF FE 0C B8
	stz $F8FF.w,X		; 9E FF F8
	phd		; 0B
	tsb $04.b		; 04 04
	inx		; E8
	lda $0286B8.l,X		; BF B8 86 02
	brk $05.b		; 00 05
	brk $1B.b		; 00 1B
	brk $2F.b		; 00 2F
	brk $DF.b		; 00 DF
	beq  48.b		; F0 30
	cpy #$86FD.w		; C0 FD 86
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	sty $3F.b		; 84 3F
	and $C0FF0C.l,X		; 3F 0C FF C0
	bcs  15.b		; B0 0F
	jmp ($0FF0.w)		; 6C F0 0F
	cpx #$E41F.w		; E0 1F E4
	tas		; 1B
	sed		; F8
	lda $C007C3.l		; AF C3 07 C0
	and $88E718.l,X		; 3F 18 E7 88
	inc $FEFF.w,X		; FE FF FE
	adc $CFFE80.l,X		; 7F 80 FE CF
	beq -92.b		; F0 A4
	bmi 104.b		; 30 68
	and $DC.b,S		; 23 DC
	cop $FD.b		; 02 FD
	tda		; 7B
	sbc $3410F8.l,X		; FF F8 10 34
	sei		; 78
	stz $FD.b		; 64 FD
	inc $E619.w,X		; FE 19 E6
	phx		; DA
	sbc ($F8.b,X)		; E1 F8
	ora $0B0013.l		; 0F 13 00 0B
	php		; 08
	tsb $78.b		; 04 78
	brk $09.b		; 00 09
	jmp ($0000.w,X)		; 7C 00 00
	inc $60.b,X		; F6 60
	ror $C286.w		; 6E 86 C2
	eor $FE7C82.l,X		; 5F 82 7C FE
	sbc ($F7.b)		; F2 F7
	brk $CE.b		; 00 CE
	ora ($3C.b,X)		; 01 3C
	ora $7F.b,S		; 03 7F
	ldx $F4FD.w,Y		; BE FD F4
	eor $F8FF5E.l,X		; 5F 5E FF F8
	asl $8F70.w		; 0E 70 8F
	adc $9C.b,S		; 63 9C
	sbc $20DF10.l		; EF 10 DF 20
	txs		; 9A
	sbc $FF9FE1.l,X		; FF E1 9F FF
	sed		; F8
	asl $C44C.w		; 0E 4C C4
	tsa		; 3B
	dec $BC21.w,X		; DE 21 BC
	eor $FB.b,S		; 43 FB
	tsb $FA.b		; 04 FA
	sbc $E0FBE2.l,X		; FF E2 FB E0
	sed		; F8
	bpl   7.b		; 10 07
	sed		; F8
	and [$D8.b]		; 27 D8
	eor $20DCB0.l		; 4F B0 DC 20
	clv		; B8
	rti		; 40

	ldy $FFE7.w,X		; BC E7 FF
	jmp $10F0.w		; 4C F0 10
	lda [$E0.b]		; A7 E0
	jsr ($FBFC.w,X)		; FC FC FB
	xce		; FB
	sbc [$F7.b],Y		; F7 F7
	sbc $E0.b,S		; E3 E0
	sta [$FF.b]		; 87 FF
	cmp $C0DFC0.l		; CF C0 DF C0
	ror $002E.w		; 6E 2E 00
	bit $2900.w		; 2C 00 29
	brk $3A.b		; 00 3A
	brk $8F.b		; 00 8F
	sbc ($33.b),Y		; F1 33
	brk $25.b		; 00 25
	brk $27.b		; 00 27
	rts		; 60

	ora $1E1EFF.l,X		; 1F FF 1E 1E
	clc		; 18
	ora [$1D.b]		; 07 1D
	sbc $3FFF1B.l,X		; FF 1B FF 3F
	brk $64.b		; 00 64
	.db $82, $D8, $FE		; 82 D8 FE
	ldy $EF.b		; A4 EF
	plx		; FA
	eor $0CF8A0.l,X		; 5F A0 F8 0C
	ora [$BE.b],Y		; 17 BE
	cmp $BFBFDF.l,X		; DF DF BF BF
	ror A		; 6A
	sbc ($FE.b)		; F2 FE
	cmp $BD00.w,X		; DD 00 BD
	brk $BE.b		; 00 BE
	sta $58F1.w		; 8D F1 58
	sbc ($FA.b),Y		; F1 FA
	cpx #$FEFD.w		; E0 FD FE
	sbc $7DFFFD.l,X		; FF FD FF 7D
	adc $4BE3.w,X		; 7D E3 4B
	adc [$00.b],Y		; 77 00
	adc $00DEC6.l		; 6F C6 DE 00
	inc $FE10.w		; EE 10 FE
	jsr ($F9F0.w,X)		; FC F0 F9
	stx $FF.b		; 86 FF
	sbc [$E7.b]		; E7 E7
	cmp [$C7.b]		; C7 C7
	cmp [$FE.b],Y		; D7 FE
	sbc $FFF820.l		; EF 20 F8 FF
	eor $40DFAA.l		; 4F AA DF 40
	stz $DB00.w,X		; 9E 00 DB
	cop $B6.b		; 02 B6
	eor $639D.w,X		; 5D 9D 63
	sta $80FE91.l,X		; 9F 91 FE 80
	lda $3C8AFE.l,X		; BF FE 8A 3C
	brk $41.b		; 00 41
	brk $63.b		; 00 63
	brk $FF.b		; 00 FF
	sbc ($16.b)		; F2 16
	brk $1A.b		; 00 1A
	brk $1D.b		; 00 1D
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	inc $630B.w,X		; FE 0B 63
	sta $060707.l		; 8F 07 07 06
	sbc $FDFF05.l,X		; FF 05 FF FD
	tda		; 7B
	brk $B7.b		; 00 B7
	bvs  28.b		; 70 1C
	pei ($FA.b)		; D4 FA
	xba		; EB
	brk $CB.b		; 00 CB
	inc $00C9.w,X		; FE C9 00
	rol $E1.b		; 26 E1
	ror $7F7F.w		; 6E 7F 7F
	stz $FEFF.w,X		; 9E FF FE
	ror $02F5.w		; 6E F5 02
	beq  31.b		; F0 1F
	sbc [$FE.b],Y		; F7 FE
	ora $B6.b,S		; 03 B6
	ora $F7.b,S		; 03 F7
	brk $C6.b		; 00 C6
	cop $FF.b		; 02 FF
	ora ($FA.b,X)		; 01 FA
	sbc $FF786E.l,X		; FF 6E 78 FF
	sbc $B8B8.w,X		; FD B8 B8
	lda $C0B8.w,Y		; B9 B8 C0
	cpy #$106A.w		; C0 6A 10
	pld		; 2B
	bpl  21.b		; 10 15
	beq  79.b		; F0 4F
	php		; 08
	.db $82, $FF, $0C		; 82 FF 0C
	and ($2F.b),Y		; 31 2F
	dec $21E1.w,X		; DE E1 21
	cpy #$FF7F.w		; C0 7F FF
	jmp ($E3E3.w)		; 6C E3 E3
	adc ($61.b,X)		; 61 61
	brk $00.b		; 00 00
	cpy #$E9D6.w		; C0 D6 E9
	asl $BF1E.w,X		; 1E 1E BF
	eor #$51AF.w		; 49 AF 51
	sbc $59B73F.l,X		; FF 3F B7 59
	ldx $FF5D.w,Y		; BE 5D FF
	php		; 08
	rol $9900.w,X		; 3E 00 99
	clc		; 18
	sta [$80.b]		; 87 80
	eor #$411C.w		; 49 1C 41
	adc $00FE84.l,X		; 7F 84 FE 00
	trb $00C1.w		; 1C C1 00
	adc [$86.b]		; 67 86
	pla		; 68
	cli		; 58
	and ($04.b,X)		; 21 04
	inc $9A02.w,X		; FE 02 9A
	sbc #$FCFF.w		; E9 FF FC
	ror $7603.w		; 6E 03 76
	adc ($FF.b,X)		; 61 FF
	ora ($F1.b,X)		; 01 F1
	inc $E500.w,X		; FE 00 E5
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	plx		; FA
	.db $82, $00, $38		; 82 00 38
	rol $19AB.w,X		; 3E AB 19
	brk $FB.b		; 00 FB
	sbc $FEFDFD.l,X		; FF FD FD FE
	inc $C000.w,X		; FE 00 C0
	plx		; FA
	ror $A2.b,X		; 76 A2
	sec		; 38
	dec $FFFF.w,X		; DE FF FF
	ora #$13.b		; 09 13
	cop $0D.b		; 02 0D
	asl $8E.b		; 06 8E
	ora ($FC.b,X)		; 01 FC
	ora $CF0E1F.l		; 0F 1F 0E CF
	ora [$BD.b]		; 07 BD
	eor $E0.b		; 45 E0
	and $ECE03C.l,X		; 3F 3C E0 EC
	cpx #$F0.b		; E0 F0
	beq 112.b		; F0 70
	adc ($CD.b),Y		; 71 CD
	sbc ($E0.b,X)		; E1 E0
	bmi  48.b		; 30 30
	jsr ($C6F0.w,X)		; FC F0 C6
	iny		; C8
	clc		; 18
	inx		; E8
	trb $9C7E.w		; 1C 7E 9C
	inc $9C6A.w,X		; FE 6A 9C
	inc $D3FF.w,X		; FE FF D3
	brk $DC.b		; 00 DC
	jsl $271DE2.l		; 22 E2 1D 27
	and $2B3F03.l,X		; 3F 03 3F 2B
	lda $1F81FE.l,X		; BF FE 81 1F
	asl $01.b,X		; 16 01
	sta ($63.b,X)		; 81 63
	bra 127.b		; 80 7F
	and $FF800E.l,X		; 3F 0E 80 FF
	inc $0BF8.w,X		; FE F8 0B
	ldy $FF.b,X		; B4 FF
	jmp ($E94E.w)		; 6C 4E E9
	inc $09F8.w,X		; FE F8 09
	ora [$68.b]		; 07 68
	cpx #$1E.b		; E0 1E
	jmp.w [$FC68]		; DC 68 FC
	sei		; 78
	stx $3C.b		; 86 3C
	dec $FF.b		; C6 FF
	sbc $435C.w,X		; FD 5C 43
	ora $2E6B.w		; 0D 6B 2E
	and [$16.b],Y		; 37 16
	and $540318.l		; 2F 18 03 54
	sbc #$41.b		; E9 41
	brk $21.b		; 00 21
	brk $0F.b		; 00 0F
	cmp $100030.l,X		; DF 30 00 10
	brk $08.b		; 00 08
	sbc ($06.b,X)		; E1 06
	inc $09.b,X		; F6 09
	ror $7E.b		; 66 7E
	adc ($F2.b)		; 72 F2
	sta [$2F.b]		; 87 2F
	eor $FF00.w,X		; 5D 00 FF
	ldx #$B2.b		; A2 B2
	lda $3EC000.l,X		; BF 00 C0 3E
	sta ($76.b,X)		; 81 76
	sbc $9FF8.w		; ED F8 9F
	inc $EBE8.w		; EE E8 EB
	bra -25.b		; 80 E7
	brk $CF.b		; 00 CF
	php		; 08
	wai		; CB
	clc		; 18
	xba		; EB
	php		; 08
	dec A		; 3A
	bra -20.b		; 80 EC
	cmp $F7EBD6.l		; CF D6 EB F7
	brk $EC.b		; 00 EC
	jsr ($2910.w,X)		; FC 10 29
	phx		; DA
	jsr ($0EC4.w,X)		; FC C4 0E
	clv		; B8
	inc $C309.w,X		; FE 09 C3
	sbc $AEFE.w,X		; FD FE AE
	ora ($01.b,X)		; 01 01
	ora [$FF.b]		; 07 FF
	sed		; F8
	asl A		; 0A
	sbc $409F40.l,X		; FF 40 9F 40
	beq  31.b		; F0 1F
	eor $4F20CA.l,X		; 5F CA 20 4F
	jsr $1037.w		; 20 37 10
	txy		; 9B
	php		; 08
	bit #$04.b		; 89 04
	plp		; 28
	inc $2ED0.w,X		; FE D0 2E
	sta $C0CFFE.l,X		; 9F FE CF C0
	adc [$60.b]		; 67 60
	adc ($6B.b,S),Y		; 73 6B
	ora ($70.b,X)		; 01 70
	cmp $FEB619.l		; CF 19 B6 FE
	inc $E6FC.w,X		; FE FC E6
	sbc ($F8.b)		; F2 F8
	tsb $88FE.w		; 0C FE 88
	cpy $FE20.w		; CC 20 FE
	lsr A		; 4A
	sta $02F4.w		; 8D F4 02
	plx		; FA
	sed		; F8
	sbc $70E2A0.l,X		; FF A0 E2 70
	sbc $03.b,X		; F5 03
	ora ($00.b,S),Y		; 13 00
	clc		; 18
	inc $0098.w,X		; FE 98 00
	sty $FEFF.w		; 8C FF FE
	brk $CC.b		; 00 CC
	brk $36.b		; 00 36
	brk $F8.b		; 00 F8
	sed		; F8
	jsr ($E8FC.w,X)		; FC FC E8
	nop		; EA
	adc [$77.b],Y		; 77 77
	xce		; FB
	xce		; FB
	tsa		; 3B
	xce		; FB
	sbc $0D0D3B.l,X		; FF 3B 0D 0D
	bit $C0E9.w		; 2C E9 C0
	cmp [$30.b],Y		; D7 30
	and [$0F.b],Y		; 37 0F
	and $1F3810.l		; 2F 10 38 1F
	rol $291F.w,X		; 3E 1F 29
	tay		; A8
	and $0F4E1F.l,X		; 3F 1F 4E 0F
	inc A		; 1A
	sbc $D83AFF.l,X		; FF FF 3A D8
	ora $FF4020.l		; 0F 20 40 FF
	sed		; F8
	ora $DA2DD4.l		; 0F D4 2D DA
	inx		; E8
	jmp ($161F.w,X)		; 7C 1F 16
	asl $D504.w		; 0E 04 D5
	sed		; F8
	asl A		; 0A
	sbc $001D.w		; ED 1D 00
	jmp ($61EF.w,X)		; 7C EF 61
	ldx $1FBF.w		; AE BF 1F
	adc $FD520F.l,X		; 7F 0F 52 FD
	rts		; 60

	sta $40AE88.l		; 8F 88 AE 40
	rti		; 40

	jmp ($E2C8.w)		; 6C C8 E2
	bpl  21.b		; 10 15
	sbc ($9F.b,X)		; E1 9F
	dec $F070.w,X		; DE 70 F0
	ora $0DBED5.l,X		; 1F D5 BE 0D
	ora $14.b,S		; 03 14
	phd		; 0B
	bit $3E1B.w		; 2C 1B 3E
	ora $847E.w,X		; 1D 7E 84
	and $FCFFCE.l,X		; 3F CE FF FC
	sbc $000B.w		; ED 0B 00
	tas		; 1B
	php		; 08
	ora $1D0C.w,X		; 1D 0C 1D
	cpy #$FF.b		; C0 FF
	ldy #$AA.b		; A0 AA
	cmp $B8D730.l		; CF 30 D7 B8
	lda $F8DFD8.l,X		; BF D8 DF F8
	iny		; C8
	ora ($08.b,X)		; 01 08
	sbc $A8BBCC.l,X		; FF CC BB A8
	sbc $FF87.w		; ED 87 FF
	lda ($88.b,S),Y		; B3 88
	sbc $FF4CF0.l,X		; FF F0 4C FF
	sbc $04FA01.l,X		; FF 01 FA 04
	xce		; FB
	ora $1F.b		; 05 1F
	ror $04FB.w,X		; 7E FB 04
	sbc $FD06.w,Y		; F9 06 FD
	cop $FE.b		; 02 FE
	bit $00C3.w,X		; 3C C3 00
	jsr ($FC01.w,X)		; FC 01 FC
	bvc -61.b		; 50 C3
	jsr ($E36B.w,X)		; FC 6B E3
	cmp ($D2.b),Y		; D1 D2
	adc $2AF8FD.l		; 6F FD F8 2A
	cpx #$5F.b		; E0 5F
	pla		; 68
	phb		; 8B
	clv		; B8
	sta $FF04.w,Y		; 99 04 FF
	.db $42, $C8		; 42 C8
	inc $52.b,X		; F6 52
	eor [$CA.b]		; 47 CA
	sbc ($3D.b,X)		; E1 3D
	sta $FF5320.l		; 8F 20 53 FF
	cop $01.b		; 02 01
	ora $FE.b,S		; 03 FE
	plx		; FA
	rti		; 40

	sed		; F8
	asl A		; 0A
	sbc $BEFEFF.l,X		; FF FF FE BE
	adc $6EFD.w		; 6D FD 6E
	lda $B67F6E.l,X		; BF 6E 7F B6
	xce		; FB
	ldx $FD.b,Y		; B6 FD
	phx		; DA
	inc $FFFF.w,X		; FE FF FF
	cmp $EDFB.w,X		; DD FB ED
	tsb $2C6D.w		; 0C 6D 2C
	ror $6E24.w		; 6E 24 6E
	jsr $30B6.w		; 20 B6 30
	ldx $90.b,Y		; B6 90
	phx		; DA
	iny		; C8
	sbc $40DDFF.l,X		; FF FF DD 40
	sbc $FF6C.w		; ED 6C FF
	ror $FF.b		; 66 FF
	and ($FF.b,S),Y		; 33 FF
	lda ($7F.b,S),Y		; B3 7F
	sta $5C7F.w,Y		; 99 7F 5C
	lda $FFFFAE.l,X		; BF AE FF FF
	cmp $64EFD3.l,X		; DF D3 EF 64
	sbc $32FF26.l,X		; FF 26 FF 32
	sbc $197F13.l,X		; FF 13 7F 19
	adc $06BF0C.l,X		; 7F 0C BF 06
	sbc $83DF5F.l		; EF 5F DF 83
	sbc $8FF906.l		; EF 06 F9 8F
	jsr ($FF80.w,X)		; FC 80 FF
	cpy #$FF.b		; C0 FF
	cpx #$FF.b		; E0 FF
	bvs  71.b		; 70 47
	sbc [$FA.b],Y		; F7 FA
	beq -16.b		; F0 F0
	rts		; 60

	sbc $DFFF30.l,X		; FF 30 FF DF
	and ($A0.b,S),Y		; 33 A0
	adc $0FFF80.l		; 6F 80 FF 0F
	and [$C0.b],Y		; 37 C0
	ora $E01BE8.l,X		; 1F E8 1B E0
	ora $F00EF4.l		; 0F F4 0E F0
	and $0F1F80.l,X		; 3F 80 1F 0F
	ora $FE.b,S		; 03 FE
	cpy #$0F.b		; C0 0F
	cpx #$07.b		; E0 07
	inc $03F0.w,X		; FE F0 03
	inc $47E0.w,X		; FE E0 47
	eor [$FF.b]		; 47 FF
	cpy #$00.b		; C0 00
	bcs   0.b		; B0 00
	inx		; E8
	wai		; CB
	inx		; E8
	adc ($09.b),Y		; 71 09
	lda $C0FD63.l,X		; BF 63 FD C0
	cpy #$F0.b		; C0 F0
	sbc $E1F7F7.l,X		; FF F7 F7 E1
	ora ($00.b)		; 12 00
	bne  11.b		; D0 0B
	phx		; DA
	clv		; B8
	brk $EE.b		; 00 EE
	stz $F0.b		; 64 F0
	tsb $FCDA.w		; 0C DA FC
	lda $0FA0.w		; AD A0 0F
	brk $C8.b		; 00 C8
	brk $83.b		; 00 83
	brk $C7.b		; 00 C7
	jmp ($EFE9.w)		; 6C E9 EF
	sbc [$F1.b]		; E7 F1
	adc $FF.b,X		; 75 FF
	cpx #$D0.b		; E0 D0
	ora $F5D9FD.l		; 0F FD D9 F5
	inc $FEFE.w,X		; FE FE FE
	inc $D021.w,X		; FE 21 D0
	asl $8000.w		; 0E 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	sta [$D3.b]		; 87 D3
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	clv		; B8
	jsr $10E8.w		; 20 E8 10
	tay		; A8
	bra  16.b		; 80 10
	and #$80.b		; 29 80
	ldx $E0.b		; A6 E0
	sbc $FFF37C.l,X		; FF 7C F3 FF
	sbc $006BCA.l		; EF CA 6B 00
	ora $00.b,X		; 15 00
	pld		; 2B
	php		; 08
	ror $54.b,X		; 76 54
	lda $24.b		; A5 24
	cpy $7FCB.w		; CC CB 7F
	sbc $B7B7FD.l,X		; FF FD B7 B7
	xba		; EB
	xba		; EB
	cmp $55.b,X		; D5 55
	bit #$01.b		; 89 01
	phx		; DA
	cop $26.b		; 02 26
	pei ($F7.b)		; D4 F7
	php		; 08
	plx		; FA
	ora $07.b		; 05 07
	sbc $EC07F8.l,X		; FF F8 07 EC
	ora $FE.b,S		; 03 FE
	bra  -8.b		; 80 F8
	ora $E410E4.l		; 0F E4 10 E4
	clc		; 18
	sbc ($08.b)		; F2 08
	sbc $689663.l,X		; FF 63 96 68
	stx $78.b		; 86 78
	cmp $38.b		; C5 38
	eor $BC.b,S		; 43 BC
	ora $FC.b,S		; 03 FC
	sed		; F8
	sbc $FE16FC.l,X		; FF FC 16 FE
	sbc $FFD2BC.l,X		; FF BC D2 FF
	sbc [$04.b]		; E7 04
	sbc $DB0A.w		; ED 0A DB
	asl $FF.b		; 06 FF
	sbc $FE1CAE.l		; EF AE 1C FE
	bit $FC7B.w,X		; 3C 7B FC
	sbc [$F8.b],Y		; F7 F8
	sbc $F8F0.w		; ED F0 F8
	brk $F2.b		; 00 F2
	jsr ($DDE1.w,X)		; FC E1 DD
	sbc $3D012A.l,X		; FF 2A 01 3D
	ora ($FD.b),Y		; 11 FD
	and ($F9.b,X)		; 21 F9
	eor ($F3.b,X)		; 41 F3
	sta $22.b,S		; 83 22
	cmp $E194.w,Y		; D9 94 E1
	stx $34E4.w		; 8E E4 34
	dec $AE14.w,X		; DE 14 AE
	jsr $0AF8.w		; 20 F8 0A
	sbc $DFDFFF.l		; EF FF DF DF
	phd		; 0B
	ldy $09F1.w		; AC F1 09
	ldx #$AF.b		; A2 AF
	bvc 124.b		; 50 7C
	ror $77.b,X		; 76 77
	jmp.w [$C154]		; DC 54 C1
	jsr $13F8.w		; 20 F8 13
	asl $FEC0.w,X		; 1E C0 FE
	sbc $FCFF.w,X		; FD FF FC
	asl $FEFF.w,X		; 1E FF FE
	sbc $E8DFFF.l,X		; FF FF DF E8
	lda $5ED0.w,X		; BD D0 5E
	lda ($FF.b,X)		; A1 FF
	and $0FD8D7.l,X		; 3F D7 D8 0F
	bmi -80.b		; 30 B0
	bmi -27.b		; 30 E5
	and ($07.b,S),Y		; 33 07
	dey		; 88
	sbc $03.b,S		; E3 03
	dec $06.b		; C6 06
	bne  -1.b		; D0 FF
	jsr $FDFF.w		; 20 FF FD
	pei ($CF.b)		; D4 CF
	ora $7D3FCC.l		; 0F CC 3F 7D
	brk $F9.b		; 00 F9
	brk $03.b		; 00 03
	dey		; 88
	cmp $60BC.w,Y		; D9 BC 60
	sbc #$10.b		; E9 10
	sbc $003FFD.l,X		; FF FD 3F 00
	ora $8E.b,X		; 15 8E
	stz $3E9E.w,X		; 9E 9E 3E
	rol $7D7D.w,X		; 3E 7D 7D
	jsr ($06D2.w,X)		; FC D2 06
	asl $C0.b		; 06 C0
	cpy #$DB.b		; C0 DB
	cli		; 58
	rts		; 60

	cpx #$C7.b		; E0 C7
	cpx $9FD9.w		; EC D9 9F
	ldy $7BE1.w		; AC E1 7B
	sty $EB.b		; 84 EB
	nop		; EA
	phx		; DA
	inc $87.b,X		; F6 87
	ror $C6.b		; 66 C6
	dex		; CA
	tda		; 7B
	tda		; 7B
	sbc [$F7.b],Y		; F7 F7
	ora $98BA0F.l		; 0F 0F BA 98
	eor #$E0.b		; 49 E0
	inc $FAA0.w,X		; FE A0 FA
	inc $F2A4.w,X		; FE A4 F2
	and [$F8.b]		; 27 F8
	sbc $E70BF8.l,X		; FF F8 0B E7
	and ($FE.b,S),Y		; 33 FE
	dey		; 88
	sbc [$30.b]		; E7 30
	sed		; F8
	bit $61.b,X		; 34 61
	sed		; F8
	jsr ($1A03.w,X)		; FC 03 1A
	cmp $FE3F.w		; CD 3F FE
	sbc $E93F.w		; ED 3F E9
	tsa		; 3B
	sbc $38E8FF.l,X		; FF FF E8 38
	beq  63.b		; F0 3F
	beq  15.b		; F0 0F
	sed		; F8
	ora [$CB.b]		; 07 CB
	stx $C7.b,Y		; 96 C7
	dey		; 88
	wai		; CB
	stx $6C.b		; 86 6C
	sty $FF.b		; 84 FF
	sbc $3800E8.l,X		; FF E8 00 38
	rti		; 40

	cli		; 58
	ldy #$D0.b		; A0 D0
	bmi  96.b		; 30 60
	beq 112.b		; F0 70
	sed		; F8
	sei		; 78
	beq  27.b		; F0 1B
	bcc  -1.b		; 90 FF
	sbc $0F101F.l,X		; FF 1F 10 0F
	beq  31.b		; F0 1F
	cpx #$1F.b		; E0 1F
	beq -125.b		; F0 83
	brk $E1.b		; 00 E1
	brk $91.b		; 00 91
	rts		; 60

	lda $FFD0.w,Y		; B9 D0 FF
	and [$CD.b],Y		; 37 CD
	dey		; 88
	ora $9DF8.w		; 0D F8 9D
	sei		; 78
	lda $7F7F78.l,X		; BF 78 7F 7F
	ora $C27C1F.l,X		; 1F 1F 7C C2
	and ($29.b,S),Y		; 33 29
	tay		; A8
	eor $D158.w,X		; 5D 58 D1
	txa		; 8A
	jsr ($0080.w,X)		; FC 80 00
	inc $FE88.w,X		; FE 88 FE
	rtl		; 6B

	php		; 08
	brk $FE.b		; 00 FE
	pea $C407.w		; F4 07 C4
	sbc ($05.b)		; F2 05
	cmp ($02.b,X)		; C1 02
	plx		; FA
	lda $363E2B.l,X		; BF 2B 3E 36
	cpy #$F8.b		; C0 F8
	cld		; D8
	sbc $BBF3.w		; ED F3 BB
	plp		; 28
	adc ($E1.b,X)		; 61 E1
	sed		; F8
	ora ($84.b,X)		; 01 84
	beq  -2.b		; F0 FE
	lda $20F0.w,X		; BD F0 20
	dec $02F9.w,X		; DE F9 02
	plx		; FA
	and $00FC.w		; 2D FC 00
	asl $E585.w,X		; 1E 85 E5
	dec $E994.w,X		; DE 94 E9
	inc $01FD.w,X		; FE FD 01
	lda $0FDF60.l		; AF 60 DF 0F
	cmp $50.b,S		; C3 50
	sta [$80.b],Y		; 97 80
	sbc [$20.b],Y		; F7 20
	lsr $C7.b		; 46 C7
	bra 116.b		; 80 74
	ora $1F.b,S		; 03 1F
	ldx $1700.w,Y		; BE 00 17
	ora [$27.b]		; 07 27
	ora [$6F.b]		; 07 6F
	adc $DF1FCF.l,X		; 7F CF 1F DF
	and $57553F.l,X		; 3F 3F 55 57
	sty $BA.b,X		; 94 BA
	rti		; 40

	bra -13.b		; 80 F3
	inc $0AF8.w,X		; FE F8 0A
	lda $F2.b,S		; A3 F2
	sbc $7F0AF8.l,X		; FF F8 0A 7F
	rti		; 40

	.db $62, $E8, $0C		; 62 E8 0C
	cld		; D8
	lda $87.b,X		; B5 87
	beq -18.b		; F0 EE
	sed		; F8
	asl A		; 0A
	tsb $F4.b		; 04 F4
	tya		; 98
	php		; 08
	cop $C8.b		; 02 C8
	bpl -112.b		; 10 90
	sbc $2220FF.l,X		; FF FF 20 22
	rti		; 40

	.db $42, $80		; 42 80
	sbc $FB01.w,Y		; F9 01 FB
	ora $F3.b,S		; 03 F3
	ora $F7.b,S		; 03 F7
	ora [$E7.b]		; 07 E7
	ora [$CF.b]		; 07 CF
	cmp $56.b,X		; D5 56
	ora $B91E9F.l		; 0F 9F 1E B9
	inc $D2.b		; E6 D2
	.db $82, $BA, $23		; 82 BA 23
	bit $C1.b		; 24 C1
	adc $C7.b		; 65 C7
	phx		; DA
	sbc $FFD7FD.l,X		; FF FD D7 FF
	ldx #$EC.b		; A2 EC
	inc $88EE.w		; EE EE 88
	inc $F8FF.w,X		; FE FF F8
	ora [$FA.b],Y		; 17 FA
	ora $F5.b,S		; 03 F5
	asl $D6.b		; 06 D6
	ora $CEF6.w,Y		; 19 F6 CE
	adc $38C8A8.l,X		; 7F A8 C8 38
	bpl -16.b		; 10 F0
	stz $E0.b		; 64 E0
	cpy $2CC0.w		; CC C0 2C
	sed		; F8
	bne -15.b		; D0 F1
	lda $2302.w		; AD 02 23
	phx		; DA
	ora $3FD9BC.l		; 0F BC D9 3F
	ldx $E1.b		; A6 E1
	bra -46.b		; 80 D2
	pea $64FC.w		; F4 FC 64
	ldy $6083.w		; AC 83 60
	ror $067E.w,X		; 7E 7E 06
	cpy $18.b		; C4 18
.ACCU 16
	rep #$66		; C2 66
	ror $C0.b		; 66 C0
	cmp [$18.b],Y		; D7 18
	inc $F4.b,X		; F6 F4
	ldy $7800.w,X		; BC 00 78
	ldx $23E1.w,Y		; BE E1 23
	lda ($EC.b)		; B2 EC
	sbc $FE9FD8.l,X		; FF D8 9F FE
	sbc $60B0B0.l,X		; FF B0 B0 60
	rts		; 60

	ldy #$9B.b		; A0 9B
	bra  45.b		; 80 2D
	cop $39.b		; 02 39
	asl $FF.b		; 06 FF
	lda $873CC3.l,X		; BF C3 3C 87
	sei		; 78
	stz $FB60.w		; 9C 60 FB
	php		; 08
	lda $007C60.l		; AF 60 7C 00
	beq   3.b		; F0 03
	cpy #$1F.b		; C0 1F
	cpx #$1E.b		; E0 1E
	phx		; DA
	jsr ($F003.w,X)		; FC 03 F0
	ora [$80.b]		; 07 80
	tax		; AA
	nop		; EA
	sbc [$18.b]		; E7 18
	sbc $06B9C3.l,X		; FF C3 B9 06
	jmp.w [$2C43]		; DC 43 2C
	and $C8.b,S		; 23 C8
	ora [$E8.b]		; 07 E8
	and [$90.b]		; 27 90
	inc $70.b		; E6 70
	brk $0B.b		; 00 0B
	brk $DD.b		; 00 DD
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	cpy #$23.b		; C0 23
	sbc ($01.b),Y		; F1 01
	ora ($FC.b,X)		; 01 FC
	cpy #$8B.b		; C0 8B
	sbc $0BC2A8.l,X		; FF A8 C2 0B
	sbc ($03.b),Y		; F1 03
	bne  -1.b		; D0 FF
	ora [$FF.b]		; 07 FF
	asl $DEF0.w		; 0E F0 DE
	sta [$C2.b]		; 87 C2
	sbc $01FF.w		; ED FF 01
	sbc $E006EE.l,X		; FF EE 06 E0
	cmp $079EF7.l,X		; DF F7 9E 07
	lda $FE39FF.l,X		; BF FF 39 FE
	adc ($75.b,S),Y		; 73 75
	sbc $FF8CFF.l,X		; FF FF 8C FF
	clc		; 18
	sbc $FEAA30.l,X		; FF 30 AA FE
	beq  -8.b		; F0 F8
	asl A		; 0A
	plx		; FA
	sbc ($81.b)		; F2 81
	lda $F8FF.w		; AD FF F8
	asl A		; 0A
	tsb $CA.b		; 04 CA
	dey		; 88
	sbc ($F4.b)		; F2 F4
	ora [$E0.b]		; 07 E0
	jmp ($FB9E.w,X)		; 7C 9E FB
	sbc $813EC2.l,X		; FF C2 3E 81
	dey		; 88
	inc $F8.b,X		; F6 F8
	brk $82.b		; 00 82
	ora ($3C.b,X)		; 01 3C
	ora ($7C.b,X)		; 01 7C
	ora ($C0.b,X)		; 01 C0
	eor $700A20.l,X		; 5F 20 0A 70
	ora $F5C1E9.l,X		; 1F E9 C1 F5
	cmp $8E.b,S		; C3 8E
	inc $3F80.w,X		; FE 80 3F
	bra  25.b		; 80 19
	asl $B4D1.w		; 0E D1 B4
	inc $0CF0.w,X		; FE F0 0C
	sbc $07FF1C.l,X		; FF 1C FF 07
	dey		; 88
	sbc $E7FF73.l,X		; FF 73 FF E7
	sbc $DDFFCE.l,X		; FF CE FF DD
	inc $FE99.w,X		; FE 99 FE
	beq -72.b		; F0 B8
	sbc $318A.w,X		; FD 8A 31
	sbc $D1CA23.l,X		; FF 23 CA D1
	cpy $D13E.w		; CC 3E D1
	tya		; 98
	inc $FA65.w,X		; FE 65 FA
	sbc $F6CFFF.l,X		; FF FF CF F6
	cmp $BEEE.w,X		; DD EE BE
	cmp $9D6F.w,X		; DD 6F 9D
	xba		; EB
	ora $5BA5.w,X		; 1D A5 5B
	sbc $DB.b		; E5 DB
	rts		; 60

	plx		; FA
	sbc $F6C0FF.l,X		; FF FF C0 F6
	sty $EE.b		; 84 EE
	tsb $08DD.w		; 0C DD 08
	cmp $9D00.w,X		; DD 00 9D
	ora ($5B.b,X)		; 01 5B
	ora ($DB.b,X)		; 01 DB
	bvc -32.b		; 50 E0
	sbc $3F.b,S		; E3 3F
	inx		; E8
	beq  -8.b		; F0 F8
	inc $F0EE.w,X		; FE EE F0
	sbc $EE.b,X		; F5 EE
	inc $BFDF.w		; EE DF BF
	cmp $5DFC7C.l,X		; DF 7C FC 5D
	rti		; 40

	beq  96.b		; F0 60
	beq -32.b		; F0 E0
	inc $EEC0.w,X		; FE C0 EE
	sty $A0DF.w		; 8C DF A0
	inc $F00E.w,X		; FE 0E F0
	sbc $380AF8.l,X		; FF F8 0A 38
	beq  19.b		; F0 13
	lda $0BD1.w,X		; BD D1 0B
	cpx #$07.b		; E0 07
	cpy #$0F.b		; C0 0F
	sta ($0E.b,X)		; 81 0E
	ldy #$2F.b		; A0 2F
	lsr $33.b,X		; 56 33
	sed		; F8
	ora [$F0.b]		; 07 F0
	asl $92.b		; 06 92
	inc $A910.w,X		; FE 10 A9
	cpy #$4A.b		; C0 4A
	lsr $DC.b,X		; 56 DC
	sbc ($E2.b),Y		; F1 E2
	adc $FE06FE.l		; 6F FE 06 FE
	ora $E31FF8.l		; 0F F8 1F E3
	adc $F2CA9F.l		; 6F 9F CA F2
	cop $14.b		; 02 14
	inc $C6FE.w,X		; FE FE C6
	sbc ($1D.b),Y		; F1 1D
	sbc [$00.b]		; E7 00
	sta $75FDB3.l,X		; 9F B3 FD 75
	sbc $6BFBFE.l,X		; FF FE FB 6B
	sbc [$7E.b],Y		; F7 7E
	sbc ($EF.b,X)		; E1 EF
	asl $7EFF.w,X		; 1E FF 7E
	wai		; CB
	sbc #$FF.b		; E9 FF
	bmi  -3.b		; 30 FD
	and ($FB.b,X)		; 21 FB
	sbc [$1F.b],Y		; F7 1F
	rts		; 60

	sbc [$40.b],Y		; F7 40
	sbc ($17.b,X)		; E1 17
	sbc $D7FF.w		; ED FF D7
	xba		; EB
	xba		; EB
	sbc [$FB.b],Y		; F7 FB
	sbc [$FA.b],Y		; F7 FA
	inc $FCFF.w,X		; FE FF FC
	inc $F5.b,X		; F6 F5
	plx		; FA
	ror $FEF9.w,X		; 7E F9 FE
	adc $EB81.w,Y		; 79 81 EB
	cpy #$F7.b		; C0 F7
	cpx #$F7.b		; E0 F7
	beq  -1.b		; F0 FF
	beq  -9.b		; F0 F7
	bvs -10.b		; 70 F6
	bvs  -6.b		; 70 FA
	bvs  -7.b		; 70 F9
	sei		; 78
	adc $7F4D.w,Y		; 79 4D 7F
	lda $FFC3BE.l,X		; BF BE C3 FF
	adc $E47EFD.l,X		; 7F FD 7E E4
	adc $F2F1.w,Y		; 79 F1 F2
	cpx #$B3.b		; E0 B3
	bne  31.b		; D0 1F
	lda $5C7F1E.l,X		; BF 1E 7F 5C
	lda $387F3C.l,X		; BF 3C 7F 38
	ror $F870.w,X		; 7E 70 F8
	rol $79.b		; 26 79
	ora $E802C0.l		; 0F C0 02 E8
	asl $FFFF.w		; 0E FF FF
	rti		; 40

	sed		; F8
	bpl  -3.b		; 10 FD
	sbc ($77.b,S),Y		; F3 77
	xce		; FB
	lda $32DF7B.l,X		; BF 7B DF 32
	plb		; AB
	lsr $9F.b,X		; 56 9F
	ror $AF.b		; 66 AF
	ror $87.b,X		; 76 87
	lda $61568F.l,X		; BF 8F 56 61
	sbc ($80.b,S),Y		; F3 80
	cop $7B.b		; 02 7B
	cop $36.b		; 02 36
	cop $16.b		; 02 16
	cop $87.b		; 02 87
	ply		; 7A
	plx		; FA
	lda #$26.b		; A9 26
	asl $EF.b		; 06 EF
	sta $8F.b,X		; 95 8F
	ora $F0B1.w		; 0D B1 F0
	ldy #$09.b		; A0 09
	beq   0.b		; F0 00
	sta $80B861.l		; 8F 61 B8 80
	beq   9.b		; F0 09
	inc $7FBC.w,X		; FE BC 7F
	wai		; CB
	sbc $FFFDF1.l		; EF F1 FD FF
	lda ($0A.b,X)		; A1 0A
	cmp $FFE7.w,Y		; D9 E7 FF
	inc $F9.b,X		; F6 F9
	xce		; FB
	jsr ($7F18.w,X)		; FC 18 7F
	tsb $E0.b		; 04 E0
	sbc ($FF.b),Y		; F1 FF
	sta [$0B.b]		; 87 0B
	cmp $FB.b,X		; D5 FB
	brk $FC.b		; 00 FC
	ora $F9.b		; 05 F9
	ora [$FA.b]		; 07 FA
	ora $07FAF0.l		; 0F F0 FA 07
	tsx		; BA
	and $8F77E0.l,X		; 3F E0 77 8F
	adc [$8F.b]		; 67 8F
	nop		; EA
	ora [$02.b]		; 07 02
	asl A		; 0A
	inc $0F07.w,X		; FE 07 0F
	beq 103.b		; F0 67
	ora $BF3F9F.l,X		; 1F 9F 3F BF
	inc $DFA7.w,X		; FE A7 DF
	lsr $F7.b		; 46 F7
	bmi  -4.b		; 30 FC
	lsr $B7FE.w		; 4E FE B7
	asl $BEFE.w		; 0E FE BE
	ora [$EF.b]		; 07 EF
	ora [$FB.b],Y		; 17 FB
	cmp $21.b,S		; C3 21
	ora [$26.b],Y		; 17 26
	asl $22FE.w		; 0E FE 22
	asl $FE60.w		; 0E 60 FE
	ora $FE9106.l		; 0F 06 91 FE
	ora [$FE.b]		; 07 FE
	ora ($D1.b)		; 12 D1
	inc $FAF0.w,X		; FE F0 FA
	xce		; FB
	ora [$7F.b],Y		; 17 7F
	sbc ($3F.b,S),Y		; F3 3F
	stx $FF.b		; 86 FF
	cmp #$A4.b		; C9 A4
	adc $FFDEE1.l,X		; 7F E1 DE FF
	lsr A		; 4A
	cpx #$DF.b		; E0 DF
	beq -49.b		; F0 CF
	cmp $F7E2.w,X		; DD E2 F7
	sed		; F8
	jsr ($E28A.w,X)		; FC 8A E2
	ora $91A2.w,X		; 1D A2 91
	ora ($FE.b,X)		; 01 FE
	sbc [$9A.b]		; E7 9A
	cld		; D8
	sbc [$FE.b],Y		; F7 FE
	ora $00F3FE.l,X		; 1F FE F3 00
	cld		; D8
	jsr $30CF.w		; 20 CF 30
	rts		; 60

	sta $3C8F70.l,X		; 9F 70 8F 3C
	cmp $1E.b,S		; C3 1E
	inx		; E8
	stx $7878.w		; 8E 78 78
	jmp ($FA7C.w,X)		; 7C 7C FA
	.db $82, $1F, $DF		; 82 1F DF
	ldy #$FF.b		; A0 FF
	ora [$E3.b]		; 07 E3
	adc $FF0EC0.l		; 6F C0 0E FF
	sed		; F8
	ora $F503EF.l		; 0F EF 03 F5
	phd		; 0B
	inc $F309.w,X		; FE 09 F3
	sbc $F5040F.l,X		; FF 0F 04 F5
	asl $75.b		; 06 75
	stx $72.b		; 86 72
	sta $7F.b		; 85 7F
	bit #$70.b		; 89 70
	ora [$70.b]		; 07 70
	ora $17.b,S		; 03 17
	cpx #$FE.b		; E0 FE
	sei		; 78
	ora ($78.b,X)		; 01 78
	stx $FAE1.w		; 8E E1 FA
	inc $C7.b,X		; F6 C7
	and $4F5FFF.l,X		; 3F FF 5F 4F
	lda $5EBFDF.l,X		; BF DF BF 5E
	lda $6E1FEE.l,X		; BF EE 1F 6E
	sta $B7DEAD.l,X		; 9F AD DE B7
	iny		; C8
	tad		; 5B
	sbc ($21.b,X)		; E1 21
	inc $FCFE.w,X		; FE FE FC
	lsr $9F.b,X		; 56 9F
	sei		; 78
	jmp.w [$FFF8]		; DC F8 FF
	cmp ($FE.b,X)		; C1 FE
	ora $F80734.l,X		; 1F 34 07 F8
	tsb $38F3.w		; 0C F3 38
	cmp [$80.b]		; C7 80
	lda ($E1.b)		; B2 E1
	txy		; 9B
	jmp.w [$46FD]		; DC FD 46
	sbc $E0EF6D.l,X		; FF 6D EF E0
	cmp ($DA.b),Y		; D1 DA
	brk $CF.b		; 00 CF
	and ($09.b,S),Y		; 33 09
	sbc [$1A.b],Y		; F7 1A
	sbc $17E57A.l,X		; FF 7A E5 17
	inx		; E8
	and $3BC2.w,X		; 3D C2 3B
	cmp [$77.b]		; C7 77
	sta $35B1B7.l		; 8F B7 B1 35
	cmp ($F5.b)		; D2 F5
	brk $EA.b		; 00 EA
	cmp $FF.b,S		; C3 FF
	and ($D1.b),Y		; 31 D1
	cmp [$E3.b],Y		; D7 E3
	adc [$8B.b]		; 67 8B
	tda		; 7B
	sta [$F7.b],Y		; 97 F7
	sta $FB93FD.l		; 8F FD 93 FB
	and $F28C38.l,X		; 3F 38 8C F2
	sta $F0.b,S		; 83 F0
	bra  96.b		; 80 60
	brk $8E.b		; 00 8E
	nop		; EA
	sbc ($0F.b),Y		; F1 0F
	rts		; 60

	php		; 08
	adc $E3597C.l,X		; 7F 7C 59 E3
.INDEX 16
	rep #$DC		; C2 DC
	sbc $E0.b,S		; E3 E0
	sbc $FBFFF0.l,X		; FF F0 FF FB
	pea $04EB.w		; F4 EB 04
	lda ($F1.b,S),Y		; B3 F1
	sta $004F7F.l,X		; 9F 7F 4F 00
	sbc $DE.b,S		; E3 DE
	beq  10.b		; F0 0A
	ora ($C1.b,S),Y		; 13 C1
	tsb $0885.w		; 0C 85 08
	sbc $F1EA3E.l,X		; FF 3E EA F1
	sbc $FEFD.w,X		; FD FD FE
	sta $5E.b,X		; 95 5E
	sbc $A9FB.w,X		; FD FB A9
	pei ($7A.b)		; D4 7A
	jsr ($FD78.w,X)		; FC 78 FD
	eor $79FFBF.l,X		; 5F BF FF 79
	sbc ($25.b),Y		; F1 25
	ora $50C1AD.l,X		; 1F AD C1 50
	dec $9E44.w		; CE 44 9E
	sbc $0E.b		; E5 0E
	sbc $A8FF1F.l,X		; FF 1F FF A8
	plx		; FA
	stx $E0FE.w		; 8E FE E0
	rti		; 40

	cmp [$E2.b],Y		; D7 E2
	bne  13.b		; D0 0D
	lsr $27D1.w,X		; 5E D1 27
	and $FF23.w,X		; 3D 23 FF
	sbc $3D213E.l,X		; FF 3E 21 3D
	jsl $17231E.l		; 22 1E 23 17
	and $65.b,S		; 23 65
	eor $66.b,S		; 43 66
	eor ($C0.b,X)		; 41 C0
	ora [$C0.b]		; 07 C0
	ora $A7.b,S		; 03 A7
	bne -64.b		; D0 C0
	ora $C0.b		; 05 C0
	asl $F8.b		; 06 F8
	bra  -2.b		; 80 FE
	ora ($73.b,X)		; 01 73
	lda ($FE.b,X)		; A1 FE
	ora ($FB.b),Y		; 11 FB
	and $FB7BE9.l,X		; 3F E9 7B FB
	and [$6F.b],Y		; 37 6F
	sta [$B7.b],Y		; 97 B7
	cmp $5F82A0.l		; CF A0 82 5F
	sty $FEFB.w		; 8C FB FE
	tyx		; BB
	cmp ($77.b),Y		; D1 77
	ora $B7.b,S		; 03 B7
	ora [$CF.b]		; 07 CF
	and ($F1.b,X)		; 21 F1
	xba		; EB
	sbc $0EF8FF.l,X		; FF FF F8 0E
	and $FFF212.l,X		; 3F 12 F2 FF
	sed		; F8
	asl A		; 0A
	ora ($7E.b,X)		; 01 7E
	stx $79.b		; 86 79
	phb		; 8B
	adc [$FF.b],Y		; 77 FF
	ora $FE3F16.l		; 0F 16 3F FE
	sta $5C802F.l		; 8F 2F 80 5C
	sta $DC.b,S		; 83 DC
	ora $4A.b,S		; 03 4A
	sbc $7700.w,Y		; F9 00 77
	bra -113.b		; 80 8F
	adc $EFE0F4.l,X		; 7F F4 E0 EF
	beq -13.b		; F0 F3
	bcs -73.b		; B0 B7
	clv		; B8
	tyx		; BB
	mvp $94,$D4		; 44 D4 94
	and $05570F.l,X		; 3F 0F 57 05
	sbc $6FDF2F.l,X		; FF 2F DF 6F
	ldy $FEF3.w		; AC F3 FE
	sbc $71E9F6.l,X		; FF F6 E9 71
	dec $F8.b		; C6 F8
	cop $FF.b		; 02 FF
	inc $3FFD.w,X		; FE FD 3F
	sed		; F8
	ora $FA7BFD.l		; 0F FD 7B FA
	adc $7CFB.w,X		; 7D FB 7C
	stx $43.b		; 86 43
	sbc $7DFCFE.l,X		; FF FE FC 7D
	inc $7B78.w,X		; FE 78 7B
	sei		; 78
	jsr ($E87C.w,X)		; FC 7C E8
	ora $FE38FE.l,X		; 1F FE 38 FE
	sbc $A063.w,X		; FD 63 A0
	cmp [$40.b]		; C7 40
	sta [$00.b]		; 87 00
	sta [$56.b]		; 87 56
	sbc #$8F.b		; E9 8F
	bra  15.b		; 80 0F
	ply		; 7A
	cmp ($29.b,S),Y		; D3 29
	sbc ($4E.b,X)		; E1 4E
	sta [$FE.b],Y		; 97 FE
	rti		; 40

	bra -24.b		; 80 E8
	eor ($C0.b),Y		; 51 C0
	inc $C220.w,X		; FE 20 C2
	ldy #$E040.w		; A0 40 E0
	inc $D8D6.w,X		; FE D6 D8
	ora #$FD.b		; 09 FD
	sbc $79FCFE.l,X		; FF FE FC 79
	tax		; AA
	ldx $6D01.w,Y		; BE 01 6D
	ora ($CF.b,S),Y		; 13 CF
	bmi  25.b		; 30 19
	inc $38.b		; E6 38
	cmp [$FC.b]		; C7 FC
	ora $FD.b,S		; 03 FD
	cmp $38.b,S		; C3 38
	tsa		; 3B
	sbc $91.b		; E5 91
	tda		; 7B
	sed		; F8
	xce		; FB
	beq -12.b		; F0 F4
	beq  -9.b		; F0 F7
	bit $0080.w,X		; 3C 80 00
	bpl -105.b		; 10 97
	pha		; 48
	and $01DF0C.l,X		; 3F 0C DF 01
	rti		; 40

	asl A		; 0A
	inc $42.b,X		; F6 42
	rol $E9C8.w,X		; 3E C8 E9
	eor $D5.b,X		; 55 D5
	lda $F7.b		; A5 F7
	eor ($8B.b),Y		; 51 8B
	eor [$FC.b]		; 47 FC
	rti		; 40

	sbc ($9A.b,S),Y		; F3 9A
	sbc ($9F.b,X)		; E1 9F
	lda ($FF.b),Y		; B1 FF
	cmp $FE.b		; C5 FE
	sbc $E187.w,X		; FD 87 E1
	inc $7A7C.w,X		; FE 7C 7A
	jsr ($7BFE.w,X)		; FC FE 7B
	sbc $F53B.w,X		; FD 3B F5
	xce		; FB
	sbc $F9F73A.l,X		; FF 3A F7 F9
	plx		; FA
	sbc ($39.b),Y		; F1 39
	jmp ($FC39.w,X)		; 7C 39 FC
	and ($E5.b),Y		; 31 E5
.INDEX 16
	rep #$98		; C2 98
	sbc $00.b,S		; E3 00
	beq  34.b		; F0 22
	eor ($4E.b),Y		; 51 4E
	inc $FE44.w,X		; FE 44 FE
	ora [$7D.b]		; 07 7D
	eor $10F040.l,X		; 5F 40 F0 10
	inc $BA.b		; E6 BA
	bne  32.b		; D0 20
	beq  32.b		; F0 20
	bra -78.b		; 80 B2
	inx		; E8
	bpl  -8.b		; 10 F8
	bpl  24.b		; 10 18
	inc $E1.b,X		; F6 E1
	sbc $48BED0.l,X		; FF D0 BE 48
	eor $BC.b,S		; 43 BC
	cpx #$A09F.w		; E0 9F A0
	cmp $90CF70.l,X		; DF 70 CF 90
	adc $7076DF.l		; 6F DF 76 70
	sta $00C7B8.l		; 8F B8 C7 00
	adc $8977.w,Y		; 79 77 89
	lda $6FE39C.l,X		; BF 9C E3 6F
	inc $D9.b,X		; F6 D9
	sbc $16FF13.l		; EF 13 FF 16
	dec $F081.w,X		; DE 81 F0
	ora $07C13E.l		; 0F 3E C1 07
	sed		; F8
	cpy #$A982.w		; C0 82 A9
	jmp ($EC88.w,X)		; 7C 88 EC
	rol A		; 2A
	jmp ($E30D.w,X)		; 7C 0D E3
	sbc $AA.b,X		; F5 AA
	lda ($83.b),Y		; B1 83
	stz $FC.b		; 64 FC
	cop $FD.b		; 02 FD
	asl $F9.b		; 06 F9
	clv		; B8
	jsl $06F9B8.l		; 22 B8 F9 06
	ora $8AE9B0.l		; 0F B0 E9 8A
	cpx $A4FE.w		; EC FE A4
	sta $E086B8.l		; 8F B8 86 E0
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	sbc $D1E0.w,Y		; F9 E0 D1
	cmp $01.b,S		; C3 01
	inc $C021.w,X		; FE 21 C0
	sty $60.b,X		; 94 60
	bra -32.b		; 80 E0
	sta [$34.b]		; 87 34
	sec		; 38
	adc $FC87.w,Y		; 79 87 FC
	cmp $B2.b,X		; D5 B2
	bra  -6.b		; 80 FA
	cop $CA.b		; 02 CA
	sta $80.b,S		; 83 80
	pea $FE2A.w		; F4 2A FE
	ora $22.b,S		; 03 22
	cmp ($C1.b,X)		; C1 C1
	rti		; 40

	sta ($52.b,X)		; 81 52
	cmp $05.b,S		; C3 05
	sbc $DF.b		; E5 DF
	sbc ($C4.b),Y		; F1 C4
	sbc [$FE.b],Y		; F7 FE
	inx		; E8
	tas		; 1B
	pea $FC08.w		; F4 08 FC
	php		; 08
	phy		; 5A
	cmp ($00.b,X)		; C1 00
	plx		; FA
	sta $C2.b,S		; 83 C2
	tsb $FE.b		; 04 FE
	tsb $C1.b		; 04 C1
	inc $01FC.w,X		; FE FC 01
	jsr ($D8FE.w,X)		; FC FE D8
	adc $ECE721.l,X		; 7F 21 E7 EC
	sbc ($FC.b,S),Y		; F3 FC
	sbc ($F6.b,S),Y		; F3 F6
	sbc $64FE.w,Y		; F9 FE 64
	cmp $FD74.w,Y		; D9 74 FD
	plp		; 28
	eor $B23382.l,X		; 5F 82 33 B2
	ror $7CE9.w,X		; 7E E9 7C
	inc $FE80.w,X		; FE 80 FE
	.db $82, $F2, $02		; 82 F2 02
	eor ($FE.b)		; 52 FE
	ror $FE.b		; 66 FE
	lda [$9E.b],Y		; B7 9E
	inc $09F8.w,X		; FE F8 09
	bmi  -4.b		; 30 FC
	inc $CA.b		; E6 CA
	sbc #$FC.b		; E9 FC
.ACCU 16
	rep #$EE		; C2 EE
	sbc ($D6.b,S),Y		; F3 D6
	sbc $0033EF.l		; EF EF 33 00
	stz $3EFD.w,X		; 9E FD 3E
	nop		; EA
	sta $C0.b,X		; 95 C0
	jsr ($BA56.w,X)		; FC 56 BA
	sbc $1CDE04.l		; EF 04 DE 1C
	ldx $3DA0.w,Y		; BE A0 3D
	sta $AB40.w,Y		; 99 40 AB
	lda $D7A4.w,Y		; B9 A4 D7
	ora $48FF.w		; 0D FF 48
	jsr ($FFFF.w,X)		; FC FF FF
	rti		; 40

	rol A		; 2A
	jsr $2040.w		; 20 40 20
	jsr $3000.w		; 20 00 30
	bpl  31.b		; 10 1F
	sty $20.b		; 84 20
	bpl  16.b		; 10 10
	brk $18.b		; 00 18
	php		; 08
	lsr $F06E.w		; 4E 6E F0
	phd		; 0B
	bit $0A.b		; 24 0A
	bvs  -6.b		; 70 FA
	sbc $C9EFF2.l		; EF F2 EF C9
	adc ($30.b,S),Y		; 73 30
	ror $7F01.w,X		; 7E 01 7F
	cmp $0F.b,X		; D5 0F
	lda $9B.b,S		; A3 9B
	sta $510998.l,X		; 9F 98 09 51
	sbc #$A8AF.w		; E9 AF A8
	asl $FEE0.w		; 0E E0 FE
	beq  -1.b		; F0 FF
	sed		; F8
	cpy $FF.b		; C4 FF
	adc $8FFF6A.l		; 6F 6A FF 8F
	ror $7D8B.w,X		; 7E 8B 7D
	cmp $0B7F33.l		; CF 33 7F 0B
	cmp $FF87.w,X		; DD 87 FF
	sta $CDE540.l,X		; 9F 40 E5 CD
	adc $D9BE.w,X		; 7D BE D9
	lda [$01.b]		; A7 01
	stx $C9.b,Y		; 96 C9
	sbc $FF8338.l,X		; FF 38 83 FF
	cmp $FF.b,S		; C3 FF
	sbc $FE7E.w,X		; FD 7E FE
	jsr ($FEFA.w,X)		; FC FA FE
	jsr ($C4F8.w,X)		; FC F8 C4
	eor ($FE.b,S),Y		; 53 FE
	pea $38FE.w		; F4 FE 38
	ror $F578.w,X		; 7E 78 F5
	jsr ($FFE3.w,X)		; FC E3 FF
	phd		; 0B
	dex		; CA
	cpx #$FE.b		; E0 FE
	bpl   8.b		; 10 08
	php		; 08
	brk $0C.b		; 00 0C
	tsb $08.b		; 04 08
	tsb $04.b		; 04 04
	cmp $4A.b,S		; C3 4A
	brk $06.b		; 00 06
	cop $FE.b		; 02 FE
	tsb $02.b		; 04 02
	ora ($96.b)		; 12 96
	bpl -110.b		; 10 92
	eor $55.b,X		; 55 55
	inc $9A7E.w,X		; FE 7E 9A
	sbc ($4C.b,S),Y		; F3 4C
	sed		; F8
	ora #$F0DF.w		; 09 DF F0
	ora $00A924.l		; 0F 24 A9 00
	xba		; EB
	cop $EA.b		; 02 EA
	ldy $EA.b,X		; B4 EA
	ora $00.b,X		; 15 00
	brk $E8.b		; 00 E8
	phd		; 0B
	bpl -86.b		; 10 AA
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C5.b		; 00 C5
	plx		; FA
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($0CFF.w,X)		; FC FF 0C
	inc $FCF8.w,X		; FE F8 FC
	inc $1AF8.w,X		; FE F8 1A
	sta ($0D.b),Y		; 91 0D
	sta ($BF.b)		; 92 BF
	sbc $0D930D.l,X		; FF 0D 93 0D
	cmp $0D.b,S		; C3 0D
	cpy $0D.b		; C4 0D
	cpy $F8.b		; C4 F8
	and ($94.b),Y		; 31 94
	ora $0D95.w		; 0D 95 0D
	stx $0D.b,Y		; 96 0D
	sta [$7F.b],Y		; 97 7F
	sbc $0D980D.l,X		; FF 0D 98 0D
	cmp $0D.b		; C5 0D
	dec $0D.b		; C6 0D
	cmp [$BE.b]		; C7 BE
	sed		; F8
	bmi -103.b		; 30 99
	ora $0D9A.w		; 0D 9A 0D
	txy		; 9B
	ora $FEFF.w		; 0D FF FE
	stz $9D0D.w		; 9C 0D 9D
	ora $0DC8.w		; 0D C8 0D
	cmp #$CA0D.w		; C9 0D CA
	cpy #$F8.b		; C0 F8
	bmi -98.b		; 30 9E
	ora $0D9F.w		; 0D 9F 0D
	ldy #$FF.b		; A0 FF
	sbc [$0D.b],Y		; F7 0D
	lda ($0D.b,X)		; A1 0D
	ldx #$0D.b		; A2 0D
	wai		; CB
	ora $0DCC.w		; 0D CC 0D
	cmp $CE0D.w		; CD 0D CE
	ldx $2EF8.w,Y		; BE F8 2E
	lda $0D.b,S		; A3 0D
	sbc $0DA4BF.l,X		; FF BF A4 0D
	lda $0D.b		; A5 0D
	ldx $0D.b		; A6 0D
	lda [$0D.b]		; A7 0D
	cmp $0DD00D.l		; CF 0D D0 0D
	cmp ($0D.b),Y		; D1 0D
	cmp ($FF.b)		; D2 FF
	sbc $2EF8C0.l,X		; FF C0 F8 2E
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	tax		; AA
	ora $0DAB.w		; 0D AB 0D
	ldy $D30D.w		; AC 0D D3
	ora $0DD4.w		; 0D D4 0D
	cmp $FD.b,X		; D5 FD
	sbc $3ED60D.l,X		; FF 0D D6 3E
	sed		; F8
	bmi -83.b		; 30 AD
	ora $0DAE.w		; 0D AE 0D
	lda $0DB00D.l		; AF 0D B0 0D
	cmp [$0D.b],Y		; D7 0D
	cld		; D8
	ora $FFFB.w		; 0D FB FF
	cmp $DA0D.w,Y		; D9 0D DA
	jmp ($32F0.w,X)		; 7C F0 32
	lda ($0D.b),Y		; B1 0D
	lda ($0D.b)		; B2 0D
	lda ($0D.b,S),Y		; B3 0D
	stp		; DB
	ora $0DDC.w		; 0D DC 0D
	cmp $BFFD.w,X		; DD FD BF
	ora $C0DE.w		; 0D DE C0
	sed		; F8
	and ($B4.b)		; 32 B4
	ora $0DB5.w		; 0D B5 0D
	ldx $0D.b,Y		; B6 0D
	cmp $0DE00D.l,X		; DF 0D E0 0D
	sbc ($F0.b,X)		; E1 F0
	sbc $32F8C2.l,X		; FF C2 F8 32
	inc $0DB7.w,X		; FE B7 0D
	clv		; B8
	ora $0DB9.w		; 0D B9 0D
	sep #$0D		; E2 0D
	sbc $0D.b,S		; E3 0D
	cpx $F7.b		; E4 F7
	sbc $0DE50D.l,X		; FF 0D E5 0D
	inc $BC.b		; E6 BC
	sed		; F8
	rol $0DBA.w		; 2E BA 0D
	tyx		; BB
	ora $0DBC.w		; 0D BC 0D
	lda $E70D.w,X		; BD 0D E7
	ora $FEFF.w		; 0D FF FE
	inx		; E8
	ora $0DE9.w		; 0D E9 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	cpx $F8BE.w		; EC BE F8
	rol A		; 2A
	ldx $BF0D.w,Y		; BE 0D BF
	ora $FFC0.w		; 0D C0 FF
	adc $0DC10D.l,X		; 7F 0D C1 0D
	rep #$0D		; C2 0D
	sbc $EE0D.w		; ED 0D EE
	ora $0DEF.w		; 0D EF 0D
	beq  13.b		; F0 0D
	sbc ($0D.b),Y		; F1 0D
	sbc ($FF.b)		; F2 FF
	sbc $2AF8C0.l,X		; FF C0 F8 2A
	cpx $F3CD.w		; EC CD F3
	ora $0DF4.w		; 0D F4 0D
	sbc $0D.b,X		; F5 0D
	inc $0D.b,X		; F6 0D
	php		; 08
	asl $0E09.w		; 0E 09 0E
	adc $0E0AFF.l,X		; 7F FF 0A 0E
	phd		; 0B
	asl $0E0C.w		; 0E 0C 0E
	ora $400E.w		; 0D 0E 40
	sed		; F8
	pld		; 2B
	sbc [$0D.b],Y		; F7 0D
	sed		; F8
	ora $0DF9.w		; 0D F9 0D
	beq -65.b		; F0 BF
	plx		; FA
	wai		; CB
	asl $0E0F.w		; 0E 0F 0E
	bpl  14.b		; 10 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b)		; 12 0E
	ora ($FF.b,S),Y		; 13 FF
	sbc $2AF8C0.l,X		; FF C0 F8 2A
	xce		; FB
	ora $0DFC.w		; 0D FC 0D
	sbc $FE0D.w,X		; FD 0D FE
	ora $0DFF.w		; 0D FF 0D
	trb $0E.b		; 14 0E
	ora $0E.b,X		; 15 0E
	asl $DF.b,X		; 16 DF
	sbc $0E170E.l,X		; FF 0E 17 0E
	clc		; 18
	asl $C019.w		; 0E 19 C0
	sed		; F8
	rol A		; 2A
	sbc ($4D.b)		; F2 4D
	brk $0E.b		; 00 0E
	ora ($0E.b,X)		; 01 0E
	cop $0E.b		; 02 0E
	sbc $0E035F.l,X		; FF 5F 03 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	trb $1D0E.w		; 1C 0E 1D
	asl $0E1E.w		; 0E 1E 0E
	ora $F0BE0E.l,X		; 1F 0E BE F0
	and #$FFF8.w		; 29 F8 FF
	cpy #$04.b		; C0 04
	asl $0E05.w		; 0E 05 0E
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	jsr $210E.w		; 20 0E 21
	asl $55F8.w		; 0E F8 55
	jsl $0E2386.l		; 22 86 23 0E
	bit $0E.b		; 24 0E
	and $7E.b		; 25 7E
	sed		; F8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	cmp ($01.b,X)		; C1 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C5.b		; 00 C5
	plx		; FA
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($0CFF.w,X)		; FC FF 0C
	inc $FCF8.w,X		; FE F8 FC
	inc $1CF8.w,X		; FE F8 1C
	sta ($0D.b),Y		; 91 0D
	sta ($BF.b)		; 92 BF
	cmp $0DC80D.l,X		; DF 0D C8 0D
	cmp #$CA0D.w		; C9 0D CA
	ora $F8C2.w		; 0D C2 F8
	and ($93.b,S),Y		; 33 93
	ora $0D94.w		; 0D 94 0D
	sta $FE.b,X		; 95 FE
	sbc $FFFB.w,X		; FD FB FF
	wai		; CB
	ora $BCCC.w		; 0D CC BC
	sed		; F8
	bmi -106.b		; 30 96
	ora $0D97.w		; 0D 97 0D
	tya		; 98
	ora $0DCD.w		; 0D CD 0D
	dec $CF0D.w		; CE 0D CF
	cmp $D00DFF.l,X		; DF FF 0D D0
	ora $0DD1.w		; 0D D1 0D
	cmp ($BE.b)		; D2 BE
	sed		; F8
	bit $0D99.w		; 2C 99 0D
	txs		; 9A
	ora $0D9B.w		; 0D 9B 0D
	stz $FF0D.w		; 9C 0D FF
	tas		; 1B
	cmp ($0D.b,S),Y		; D3 0D
	pei ($0D.b)		; D4 0D
	cmp $0D.b,X		; D5 0D
	dec $0D.b,X		; D6 0D
	cmp [$0D.b],Y		; D7 0D
	cld		; D8
	cpy #$F8.b		; C0 F8
	bit $FF9D.w		; 2C 9D FF
	sbc $0D9E4A.l,X		; FF 4A 9E 0D
	sta $0DD90D.l,X		; 9F 0D D9 0D
	phx		; DA
	ora $0DDB.w		; 0D DB 0D
	jmp.w [$DD0D]		; DC 0D DD
	ora $FFFE.w		; 0D FE FF
	dec $F8C0.w,X		; DE C0 F8
	rol A		; 2A
	ldy #$0D.b		; A0 0D
	lda ($0D.b,X)		; A1 0D
	ldx #$0D.b		; A2 0D
	lda $0D.b,S		; A3 0D
	ldy $0D.b		; A4 0D
	cmp $DFE00D.l,X		; DF 0D E0 DF
	sbc $0DE10D.l,X		; FF 0D E1 0D
	sep #$0D		; E2 0D
	sbc $82.b,S		; E3 82
	sed		; F8
	bit $0DA5.w		; 2C A5 0D
	ldx $0D.b		; A6 0D
	lda [$0D.b]		; A7 0D
	tay		; A8
	ora $FEFF.w		; 0D FF FE
	lda #$E40D.w		; A9 0D E4
	ora $0DE5.w		; 0D E5 0D
	inc $0D.b		; E6 0D
	sbc [$C2.b]		; E7 C2
	beq  46.b		; F0 2E
	tax		; AA
	ora $0DAB.w		; 0D AB 0D
	ldy $F7FF.w		; AC FF F7
	ora $0DAD.w		; 0D AD 0D
	ldx $E80D.w		; AE 0D E8
	ora $0DE9.w		; 0D E9 0D
	nop		; EA
	ora $C0EB.w		; 0D EB C0
	sed		; F8
	bit $0DAF.w		; 2C AF 0D
	sbc $0DB0FF.l,X		; FF FF B0 0D
	lda ($0D.b),Y		; B1 0D
	lda ($0D.b)		; B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ldy $0D.b,X		; B4 0D
	cpx $ED0D.w		; EC 0D ED
	ora $0DEE.w		; 0D EE 0D
	inc $EFFF.w,X		; FE FF EF
	cpy #$F8.b		; C0 F8
	bit $0DB5.w		; 2C B5 0D
	ldx $0D.b,Y		; B6 0D
	lda [$0D.b],Y		; B7 0D
	clv		; B8
	ora $0DB9.w		; 0D B9 0D
	tsx		; BA
	ora $DFF0.w		; 0D F0 DF
	sbc $0DF10D.l,X		; FF 0D F1 0D
	sbc ($0D.b)		; F2 0D
	sbc ($C0.b,S),Y		; F3 C0
	sed		; F8
	bit $0DBB.w		; 2C BB 0D
	ldy $BD0D.w,X		; BC 0D BD
	ora $0DBE.w		; 0D BE 0D
	sbc $0DBFFB.l,X		; FF FB BF 0D
	cpy #$0D.b		; C0 0D
	pea $F50D.w		; F4 0D F5
	ora $0DF6.w		; 0D F6 0D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	rol A		; 2A
	cmp ($0D.b,X)		; C1 0D
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $0DC30D.l,X		; FF 0D C3 0D
	cpy $0D.b		; C4 0D
	cmp $0D.b		; C5 0D
	dec $0D.b		; C6 0D
	cmp [$0D.b]		; C7 0D
	sed		; F8
	ora $0DF9.w		; 0D F9 0D
	plx		; FA
	sbc $0DC3.w,X		; FD C3 0D
	xce		; FB
	cpy #$28F8.w		; C0 F8 28
	jsr ($FD0D.w,X)		; FC 0D FD
	ora $0DFE.w		; 0D FE 0D
	sbc $FF0ED0.l,X		; FF D0 0E FF
	adc $020E01.l,X		; 7F 01 0E 02
	asl $0E03.w		; 0E 03 0E
	and [$0E.b]		; 27 0E
	plp		; 28
	asl $0E29.w		; 0E 29 0E
	rol A		; 2A
	asl $0E2B.w		; 0E 2B 0E
	sbc $F8C2FF.l,X		; FF FF C2 F8
	and $04.b,S		; 23 04
	asl $0E05.w		; 0E 05 0E
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	php		; 08
	asl $0E09.w		; 0E 09 0E
	asl A		; 0A
	asl $EFFF.w		; 0E FF EF
	phd		; 0B
	asl $0E0C.w		; 0E 0C 0E
	bit $2D0E.w		; 2C 0E 2D
	asl $0E2E.w		; 0E 2E 0E
	and $C0300E.l		; 2F 0E 30 C0
	sed		; F8
	bit $0D.b		; 24 0D
	beq  -1.b		; F0 FF
	asl $0FFF.w		; 0E FF 0F
	asl $0D9A.w		; 0E 9A 0D
	bpl  14.b		; 10 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b)		; 12 0E
	ora ($FF.b,S),Y		; 13 FF
	sbc [$0E.b],Y		; F7 0E
	trb $0E.b		; 14 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	bit $0E.b,X		; 34 0E
	and $C0.b,X		; 35 C0
	sed		; F8
	bit $15.b		; 24 15
	asl $FFFF.w		; 0E FF FF
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	clc		; 18
	asl $0E19.w		; 0E 19 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	trb $1D0E.w		; 1C 0E 1D
	asl $FEFF.w		; 0E FF FE
	rol $0E.b,X		; 36 0E
	and [$0E.b],Y		; 37 0E
	sec		; 38
	asl $0E39.w		; 0E 39 0E
	dec A		; 3A
	cpy #$24F8.w		; C0 F8 24
	asl $1F0E.w,X		; 1E 0E 1F
	asl $FF20.w		; 0E 20 FF
	ora $0E210E.l,X		; 1F 0E 21 0E
	jsl $0E230E.l		; 22 0E 23 0E
	bit $0E.b		; 24 0E
	and $0E.b		; 25 0E
	rol $0E.b		; 26 0E
	tsa		; 3B
	sbc $3CC055.l,X		; FF 55 C0 3C
	asl $0E3D.w		; 0E 3D 0E
	rol $AF0E.w,X		; 3E 0E AF
	eor $F8CC.w		; 4D CC F8
	trb $FF.b		; 14 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	cmp ($01.b,X)		; C1 01
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
	jsr $1000.w		; 20 00 10
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	rti		; 40

	brk $84.b		; 00 84
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
	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1000.w		; A2 00 10
	lda $76.b,X		; B5 76
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	bne   2.b		; D0 02
	bra  13.b		; 80 0D
	ldx #$1080.w		; A2 80 10
	lda $76.b,X		; B5 76
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	bne   5.b		; D0 05
	phk		; 4B
	plb		; AB
	jsr $A5C8.w		; 20 C8 A5
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
	jsl $808C1E.l		; 22 1E 8C 80
	jsr $A4C8.w		; 20 C8 A4
	jsr $A5B1.w		; 20 B1 A5
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C12.w		; AD 12 1C
	bne  13.b		; D0 0D
	jsr $A7D0.w		; 20 D0 A7
	bcs   8.b		; B0 08
	jsr $A7F6.w		; 20 F6 A7
	jsr $A295.w		; 20 95 A2
	bcs   8.b		; B0 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C00.w		; AE 00 1C
	jsr ($8053.w,X)		; FC 53 80
	plb		; AB
	rtl		; 6B

	cmp $9880.w,Y		; D9 80 98
	bra 111.b		; 80 6F
	bra 110.b		; 80 6E
	bra 109.b		; 80 6D
	bra -10.b		; 80 F6
	bra  14.b		; 80 0E
	sta ($31.b,X)		; 81 31
	sta ($73.b,X)		; 81 73
	sta ($97.b,X)		; 81 97
	sta ($CA.b,X)		; 81 CA
	sta ($F5.b,X)		; 81 F5
	sta ($0A.b,X)		; 81 0A
	.db $82, $60, $60		; 82 60 60
	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0000.w		; A9 00 00
	sta $50.b,X		; 95 50
	dec $1C02.w		; CE 02 1C
	bne  22.b		; D0 16
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   5.b		; 10 05
	stz $1C00.w		; 9C 00 1C
	bra   6.b		; 80 06
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $1C62.w		; AD 62 1C
	sta $50.b,X		; 95 50
	dec $1C02.w		; CE 02 1C
	bne  18.b		; D0 12
	lda #$0004.w		; A9 04 00
	sta $1C00.w		; 8D 00 1C
	stz $1C62.w		; 9C 62 1C
	ldx $1C08.w		; AE 08 1C
	lda $80B9.w,X		; BD B9 80
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $C2.b		; 00 C2
	bmi -82.b		; 30 AE
	bit $1C.b		; 24 1C
	jsr ($80E2.w,X)		; FC E2 80
	rts		; 60

	brk $00.b		; 00 00
	and $C784.w,X		; 3D 84 C7
	sta [$58.b]		; 87 58
	phb		; 8B
	sep #$8E		; E2 8E
	jmp ($8092.w)		; 6C 92 80
	sta $95F6.w,Y		; 99 F6 95
	asl A		; 0A
	sta $A09E.w,X		; 9D 9E A0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $1C62.w		; AD 62 1C
	sta $50.b,X		; 95 50
	dec $1C02.w		; CE 02 1C
	lda $1C02.w		; AD 02 1C
	bne   6.b		; D0 06
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	trb $1C0A.w		; 1C 0A 1C
	ldx $1C24.w		; AE 24 1C
	jsr ($811D.w,X)		; FC 1D 81
	rts		; 60

	brk $00.b		; 00 00
	lda #$3382.w		; A9 82 33
	stx $BD.b		; 86 BD
	bit #$8D4E.w		; 89 4E 8D
	cld		; D8
	bcc  98.b		; 90 62
	sty $EC.b,X		; 94 EC
	sta [$76.b],Y		; 97 76
	txy		; 9B
	brk $9F.b		; 00 9F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $1C62.w		; AD 62 1C
	sta $50.b,X		; 95 50
	dec $1C02.w		; CE 02 1C
	lda $1C02.w		; AD 02 1C
	beq   1.b		; F0 01
	rts		; 60

	lda #$0004.w		; A9 04 00
	trb $1C0A.w		; 1C 0A 1C
	lda $1C08.w		; AD 08 1C
	cmp #$0018.w		; C9 18 00
	bpl   4.b		; 10 04
	stz $1C00.w		; 9C 00 1C
	rts		; 60

	lda $1C10.w		; AD 10 1C
	bne  15.b		; D0 0F
	stz $1C00.w		; 9C 00 1C
	lda $009C.w		; AD 9C 00
	and #$0007.w		; 29 07 00
	inc A		; 1A
	sta $1C10.w		; 8D 10 1C
	bra   9.b		; 80 09
	dec $1C10.w		; CE 10 1C
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$0080.w		; 29 80 00
	beq   6.b		; F0 06
	ldx $1C24.w		; AE 24 1C
	jsr ($8183.w,X)		; FC 83 81
	rts		; 60

	brk $00.b		; 00 00
	lda $84.b		; A5 84
	and $8BC088.l		; 2F 88 C0 8B
	lsr A		; 4A
	sta $E892D4.l		; 8F D4 92 E8
	sta $965E.w,Y		; 99 5E 96
	adc ($9D.b)		; 72 9D
	asl $A1.b		; 06 A1
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $1C62.w		; AD 62 1C
	sta $50.b,X		; 95 50
	dec $1C02.w		; CE 02 1C
	lda $1C02.w		; AD 02 1C
	bne  33.b		; D0 21
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
	stz $1C12.w		; 9C 12 1C
	jsr $A34E.w		; 20 4E A3
	bcc  19.b		; 90 13
	ldx $88.b		; A6 88
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$000A.w		; A9 0A 00
	sta $1C00.w		; 8D 00 1C
	lda #$0004.w		; A9 04 00
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $1C62.w		; AD 62 1C
	sta $50.b,X		; 95 50
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
	stz $1C12.w		; 9C 12 1C
	jsr $A34E.w		; 20 4E A3
	bcc  19.b		; 90 13
	ldx $88.b		; A6 88
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$000A.w		; A9 0A 00
	sta $1C00.w		; 8D 00 1C
	lda #$0004.w		; A9 04 00
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$0080.w		; 29 80 00
	beq   4.b		; F0 04
	jsr $824D.w		; 20 4D 82
	rts		; 60

	lda $1C62.w		; AD 62 1C
	sta $50.b,X		; 95 50
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	bne   4.b		; D0 04
	jsr $824D.w		; 20 4D 82
	rts		; 60

	dec $1C02.w		; CE 02 1C
	ldx $88.b		; A6 88
	lda $1C62.w		; AD 62 1C
	sta $50.b,X		; 95 50
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $00.b		; 85 00
	lda $1C0A.w		; AD 0A 1C
	and #$0002.w		; 29 02 00
	bne  32.b		; D0 20
	lda $00.b		; A5 00
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc $1C18.w		; 6D 18 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $1C1A.w		; 8D 1A 1C
	stz $1C1C.w		; 9C 1C 1C
	jsr $824D.w		; 20 4D 82
	lda $1C0A.w		; AD 0A 1C
	ora #$0002.w		; 09 02 00
	sta $1C0A.w		; 8D 0A 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $1C1A.w		; AD 1A 1C
	clc		; 18
	adc $1C1C.w		; 6D 1C 1C
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	cmp #$FFFF.w		; C9 FF FF
	beq  59.b		; F0 3B
	cmp #$FFFE.w		; C9 FE FF
	beq  18.b		; F0 12
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	inc $1C1C.w		; EE 1C 1C
	inc $1C1C.w		; EE 1C 1C
	lda #$0016.w		; A9 16 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	lda $0002.w,Y		; B9 02 00
	sta $1C02.w		; 8D 02 1C
	lda $0004.w,Y		; B9 04 00
	sta $50.b,X		; 95 50
	inc $1C1C.w		; EE 1C 1C
	inc $1C1C.w		; EE 1C 1C
	inc $1C1C.w		; EE 1C 1C
	inc $1C1C.w		; EE 1C 1C
	inc $1C1C.w		; EE 1C 1C
	inc $1C1C.w		; EE 1C 1C
	lda #$0018.w		; A9 18 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	lda #$0002.w		; A9 02 00
	trb $1C0A.w		; 1C 0A 1C
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($82BD.w,X)		; FC BD 82
	rts		; 60

	sbc $82EF82.l		; EF 82 EF 82
	sbc $82EF82.l		; EF 82 EF 82
	sbc $82EF82.l		; EF 82 EF 82
	sbc #$E983.w		; E9 83 E9
	sta $E9.b,S		; 83 E9
	sta $13.b,S		; 83 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $13.b		; 84 13
	sty $C2.b		; 84 C2
	bmi -83.b		; 30 AD
	bvc  28.b		; 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $8377.w		; 4C 77 83
	jsr $83A6.w		; 20 A6 83
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $834C.w		; 4C 4C 83
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8553.w,X		; BD 53 85
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $8573.w,X		; 1D 73 85
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8583.w,X		; BD 83 85
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8553.w,X		; BD 53 85
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8583.w,X		; BD 83 85
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A810.w		; 20 10 A8
	bcs  39.b		; B0 27
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $85C3.w,X		; BD C3 85
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $85A3.w,X		; BD A3 85
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $84F3.w,X		; BD F3 84
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8583.w,X		; BD 83 85
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $85F3.w,X		; BD F3 85
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $85D3.w,X		; BD D3 85
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8623.w,X		; BD 23 86
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8603.w,X		; BD 03 86
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $8533.w,X		; 7D 33 85
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $8533.w,X		; FD 33 85
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8513.w,X		; BD 13 85
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	asl $20.b		; 06 20
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	asl $08.b		; 06 08
	ora #$0908.w		; 09 08 09
	php		; 08
	ora #$0004.w		; 09 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	ora #$0808.w		; 09 08 08
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($8647.w,X)		; FC 47 86
	rts		; 60

	adc $7986.w,Y		; 79 86 79
	stx $79.b		; 86 79
	stx $79.b		; 86 79
	stx $79.b		; 86 79
	stx $79.b		; 86 79
	stx $73.b		; 86 73
	sta [$73.b]		; 87 73
	sta [$73.b]		; 87 73
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$9D.b]		; 87 9D
	sta [$C2.b]		; 87 C2
	bmi -83.b		; 30 AD
	bvc  28.b		; 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $8701.w		; 4C 01 87
	jsr $8730.w		; 20 30 87
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $86D6.w		; 4C D6 86
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $88DD.w,X		; BD DD 88
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $88FD.w,X		; 1D FD 88
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $890D.w,X		; BD 0D 89
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $88DD.w,X		; BD DD 88
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $890D.w,X		; BD 0D 89
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A810.w		; 20 10 A8
	bcs  39.b		; B0 27
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $894D.w,X		; BD 4D 89
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $892D.w,X		; BD 2D 89
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $887D.w,X		; BD 7D 88
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $890D.w,X		; BD 0D 89
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $897D.w,X		; BD 7D 89
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $895D.w,X		; BD 5D 89
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $89AD.w,X		; BD AD 89
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $898D.w,X		; BD 8D 89
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $88BD.w,X		; 7D BD 88
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $88BD.w,X		; FD BD 88
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $889D.w,X		; BD 9D 88
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	php		; 08
	jsr $0000.w		; 20 00 00
	php		; 08
	jsr $0000.w		; 20 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	php		; 08
	brk $08.b		; 00 08
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	php		; 08
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $22.b		; 05 22
	asl $808C.w,X		; 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($89D1.w,X)		; FC D1 89
	rts		; 60

	ora $8A.b,S		; 03 8A
	ora $8A.b,S		; 03 8A
	ora $8A.b,S		; 03 8A
	ora $8A.b,S		; 03 8A
	ora $8A.b,S		; 03 8A
	ora $8A.b,S		; 03 8A
	plx		; FA
	txa		; 8A
	plx		; FA
	txa		; 8A
	plx		; FA
	txa		; 8A
	and #$298B.w		; 29 8B 29
	phb		; 8B
	and #$298B.w		; 29 8B 29
	phb		; 8B
	and #$298B.w		; 29 8B 29
	phb		; 8B
	and #$298B.w		; 29 8B 29
	phb		; 8B
	and #$298B.w		; 29 8B 29
	phb		; 8B
	and #$298B.w		; 29 8B 29
	phb		; 8B
	and #$298B.w		; 29 8B 29
	phb		; 8B
	and #$298B.w		; 29 8B 29
	phb		; 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C50.w		; AD 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $8A8D.w		; 4C 8D 8A
	jsr $8AB7.w		; 20 B7 8A
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $8A60.w		; 4C 60 8A
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8C6E.w,X		; BD 6E 8C
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $8C8E.w,X		; 1D 8E 8C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8C9E.w,X		; BD 9E 8C
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8C6E.w,X		; BD 6E 8C
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8C9E.w,X		; BD 9E 8C
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8CDE.w,X		; BD DE 8C
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8CBE.w,X		; BD BE 8C
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $8C0E.w,X		; BD 0E 8C
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8C9E.w,X		; BD 9E 8C
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8D0E.w,X		; BD 0E 8D
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8CEE.w,X		; BD EE 8C
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8D3E.w,X		; BD 3E 8D
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8D1E.w,X		; BD 1E 8D
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $8C4E.w,X		; 7D 4E 8C
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $8C4E.w,X		; FD 4E 8C
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8C2E.w,X		; BD 2E 8C
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	php		; 08
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	php		; 08
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	ora [$22.b]		; 07 22
	asl $808C.w,X		; 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($8D62.w,X)		; FC 62 8D
	rts		; 60

	sty $8D.b,X		; 94 8D
	sty $8D.b,X		; 94 8D
	sty $8D.b,X		; 94 8D
	sty $8D.b,X		; 94 8D
	sty $8D.b,X		; 94 8D
	sty $8D.b,X		; 94 8D
	bit #$898E.w		; 89 8E 89
	stx $8E89.w		; 8E 89 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
	clv		; B8
	stx $8EB8.w		; 8E B8 8E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C50.w		; AD 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $8E1C.w		; 4C 1C 8E
	jsr $8E46.w		; 20 46 8E
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $8DF1.w		; 4C F1 8D
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8FF8.w,X		; BD F8 8F
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $9018.w,X		; 1D 18 90
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9028.w,X		; BD 28 90
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $8FF8.w,X		; BD F8 8F
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9028.w,X		; BD 28 90
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9068.w,X		; BD 68 90
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9048.w,X		; BD 48 90
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $8F98.w,X		; BD 98 8F
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9028.w,X		; BD 28 90
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9098.w,X		; BD 98 90
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9078.w,X		; BD 78 90
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $90C8.w,X		; BD C8 90
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $90A8.w,X		; BD A8 90
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $8FD8.w,X		; 7D D8 8F
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $8FD8.w,X		; FD D8 8F
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $8FB8.w,X		; BD B8 8F
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $0020.w		; 0C 20 00
	jsr $8000.w		; 20 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $0020.w		; 0C 20 00
	brk $08.b		; 00 08
	jsr $0000.w		; 20 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora #$0900.w		; 09 00 09
	inc $FEFF.w,X		; FE FF FE
	sbc $200020.l,X		; FF 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $FE.b		; 05 FE
	sbc $FE0900.l,X		; FF 00 09 FE
	sbc $080608.l,X		; FF 08 06 08
	asl $08.b		; 06 08
	asl $04.b		; 06 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	ora [$08.b]		; 07 08
	asl $08.b		; 06 08
	ora [$08.b]		; 07 08
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $22.b		; 05 22
	asl $808C.w,X		; 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($90EC.w,X)		; FC EC 90
	rts		; 60

	asl $1E91.w,X		; 1E 91 1E
	sta ($1E.b),Y		; 91 1E
	sta ($1E.b),Y		; 91 1E
	sta ($1E.b),Y		; 91 1E
	sta ($1E.b),Y		; 91 1E
	sta ($18.b),Y		; 91 18
	sta ($18.b)		; 92 18
	sta ($18.b)		; 92 18
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($42.b)		; 92 42
	sta ($C2.b)		; 92 C2
	bmi -83.b		; 30 AD
	bvc  28.b		; 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $91A6.w		; 4C A6 91
	jsr $91D5.w		; 20 D5 91
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $917B.w		; 4C 7B 91
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9382.w,X		; BD 82 93
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $93A2.w,X		; 1D A2 93
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $93B2.w,X		; BD B2 93
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9382.w,X		; BD 82 93
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $93B2.w,X		; BD B2 93
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A810.w		; 20 10 A8
	bcs  39.b		; B0 27
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $93F2.w,X		; BD F2 93
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $93D2.w,X		; BD D2 93
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $9322.w,X		; BD 22 93
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $93B2.w,X		; BD B2 93
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9422.w,X		; BD 22 94
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9402.w,X		; BD 02 94
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9452.w,X		; BD 52 94
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9432.w,X		; BD 32 94
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $9362.w,X		; 7D 62 93
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $9362.w,X		; FD 62 93
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9342.w,X		; BD 42 93
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	asl $20.b		; 06 20
	brk $00.b		; 00 00
	php		; 08
	jsr $0000.w		; 20 00 00
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora #$0900.w		; 09 00 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	ora [$44.b]		; 07 44
	brk $00.b		; 00 00
	ora #$0500.w		; 09 00 05
	rti		; 40

	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	ora [$22.b]		; 07 22
	asl $808C.w,X		; 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($9476.w,X)		; FC 76 94
	rts		; 60

	tay		; A8
	sty $A8.b,X		; 94 A8
	sty $A8.b,X		; 94 A8
	sty $A8.b,X		; 94 A8
	sty $A8.b,X		; 94 A8
	sty $9D.b,X		; 94 9D
	sta $9D.b,X		; 95 9D
	sta $9D.b,X		; 95 9D
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $CC.b,X		; 95 CC
	sta $C2.b,X		; 95 C2
	bmi -83.b		; 30 AD
	bvc  28.b		; 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $9530.w		; 4C 30 95
	jsr $955A.w		; 20 5A 95
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $9505.w		; 4C 05 95
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $970C.w,X		; BD 0C 97
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $972C.w,X		; 1D 2C 97
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $973C.w,X		; BD 3C 97
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $970C.w,X		; BD 0C 97
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $973C.w,X		; BD 3C 97
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $977C.w,X		; BD 7C 97
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $975C.w,X		; BD 5C 97
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $96AC.w,X		; BD AC 96
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $973C.w,X		; BD 3C 97
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $97AC.w,X		; BD AC 97
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $978C.w,X		; BD 8C 97
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $97DC.w,X		; BD DC 97
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $97BC.w,X		; BD BC 97
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $96EC.w,X		; 7D EC 96
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $96EC.w,X		; FD EC 96
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $96CC.w,X		; BD CC 96
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	jsr $2000.w		; 20 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	asl A		; 0A
	jsr $0000.w		; 20 00 00
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	tsb $84.b		; 04 84
	brk $84.b		; 00 84
	brk $84.b		; 00 84
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora [$22.b]		; 07 22
	asl $808C.w,X		; 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($9800.w,X)		; FC 00 98
	rts		; 60

	and ($98.b)		; 32 98
	and ($98.b)		; 32 98
	and ($98.b)		; 32 98
	and ($98.b)		; 32 98
	and ($98.b)		; 32 98
	and ($98.b)		; 32 98
	bit $2C99.w		; 2C 99 2C
	sta $992C.w,Y		; 99 2C 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
	lsr $99.b,X		; 56 99
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C50.w		; AD 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $98BA.w		; 4C BA 98
	jsr $98E9.w		; 20 E9 98
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $988F.w		; 4C 8F 98
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9A96.w,X		; BD 96 9A
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $9AB6.w,X		; 1D B6 9A
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9AC6.w,X		; BD C6 9A
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9A96.w,X		; BD 96 9A
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9AC6.w,X		; BD C6 9A
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9B06.w,X		; BD 06 9B
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9AE6.w,X		; BD E6 9A
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $9A36.w,X		; BD 36 9A
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9AC6.w,X		; BD C6 9A
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9B36.w,X		; BD 36 9B
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9B16.w,X		; BD 16 9B
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9B66.w,X		; BD 66 9B
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9B46.w,X		; BD 46 9B
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $9A76.w,X		; 7D 76 9A
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $9A76.w,X		; FD 76 9A
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9A56.w,X		; BD 56 9A
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	asl $20.b		; 06 20
	brk $00.b		; 00 00
	asl $20.b		; 06 20
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $20.b		; 06 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $04.b		; 05 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $22.b		; 05 22
	asl $808C.w,X		; 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($9B8A.w,X)		; FC 8A 9B
	rts		; 60

	ldy $BC9B.w,X		; BC 9B BC
	txy		; 9B
	ldy $BC9B.w,X		; BC 9B BC
	txy		; 9B
	ldy $BC9B.w,X		; BC 9B BC
	txy		; 9B
	lda ($9C.b),Y		; B1 9C
	lda ($9C.b),Y		; B1 9C
	lda ($9C.b),Y		; B1 9C
	cpx #$E09C.w		; E0 9C E0
	stz $9CE0.w		; 9C E0 9C
	cpx #$E09C.w		; E0 9C E0
	stz $9CE0.w		; 9C E0 9C
	cpx #$E09C.w		; E0 9C E0
	stz $9CE0.w		; 9C E0 9C
	cpx #$E09C.w		; E0 9C E0
	stz $9CE0.w		; 9C E0 9C
	cpx #$E09C.w		; E0 9C E0
	stz $9CE0.w		; 9C E0 9C
	cpx #$C29C.w		; E0 9C C2
	bmi -83.b		; 30 AD
	bvc  28.b		; 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $9C44.w		; 4C 44 9C
	jsr $9C6E.w		; 20 6E 9C
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $9C19.w		; 4C 19 9C
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9E20.w,X		; BD 20 9E
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $9E40.w,X		; 1D 40 9E
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9E50.w,X		; BD 50 9E
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9E20.w,X		; BD 20 9E
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9E50.w,X		; BD 50 9E
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9E90.w,X		; BD 90 9E
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9E70.w,X		; BD 70 9E
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $9DC0.w,X		; BD C0 9D
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9E50.w,X		; BD 50 9E
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9EC0.w,X		; BD C0 9E
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9EA0.w,X		; BD A0 9E
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $9EF0.w,X		; BD F0 9E
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9ED0.w,X		; BD D0 9E
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $9E00.w,X		; 7D 00 9E
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $9E00.w,X		; FD 00 9E
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0004.w		; C9 04 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $9DE0.w,X		; BD E0 9D
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $04.b		; 05 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $22.b		; 05 22
	asl $808C.w,X		; 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C46.w		; AD 46 1C
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$00FE.w		; 29 FE 00
	tax		; AA
	jsr ($9F14.w,X)		; FC 14 9F
	rts		; 60

	lsr $9F.b		; 46 9F
	lsr $9F.b		; 46 9F
	lsr $9F.b		; 46 9F
	lsr $9F.b		; 46 9F
	lsr $9F.b		; 46 9F
	lsr $9F.b		; 46 9F
	rti		; 40

	ldy #$A040.w		; A0 40 A0
	rti		; 40

	ldy #$A06F.w		; A0 6F A0
	adc $A06FA0.l		; 6F A0 6F A0
	adc $A06FA0.l		; 6F A0 6F A0
	adc $A06FA0.l		; 6F A0 6F A0
	adc $A06FA0.l		; 6F A0 6F A0
	adc $A06FA0.l		; 6F A0 6F A0
	adc $A06FA0.l		; 6F A0 6F A0
	adc $A06FA0.l		; 6F A0 6F A0
	adc $30C2A0.l		; 6F A0 C2 30
	lda $1C50.w		; AD 50 1C
	and #$0080.w		; 29 80 00
	bne   8.b		; D0 08
	lda $1C4C.w		; AD 4C 1C
	bmi   3.b		; 30 03
	jmp $9FCE.w		; 4C CE 9F
	jsr $9FFD.w		; 20 FD 9F
	bcc   1.b		; 90 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   3.b		; F0 03
	jmp $9FA3.w		; 4C A3 9F
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $A1B4.w,X		; BD B4 A1
	sta $0010.w		; 8D 10 00
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $0010.w		; AD 10 00
	ora $A1D4.w,X		; 1D D4 A1
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $A1E4.w,X		; BD E4 A1
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $A1B4.w,X		; BD B4 A1
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ora #$0004.w		; 09 04 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $A1E4.w,X		; BD E4 A1
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A810.w		; 20 10 A8
	bcs  39.b		; B0 27
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $A224.w,X		; BD 24 A2
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $A204.w,X		; BD 04 A2
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	lda $009E.w		; AD 9E 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $1C6C.w		; 6D 6C 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	cmp $1C46.w		; CD 46 1C
	bmi  45.b		; 30 2D
	beq  43.b		; F0 2B
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$0008.w		; C9 08 00
	bpl  32.b		; 10 20
	asl A		; 0A
	tax		; AA
	lda $A154.w,X		; BD 54 A1
	ora $1C6E.w		; 0D 6E 1C
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $A1E4.w,X		; BD E4 A1
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $A254.w,X		; BD 54 A2
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $A234.w,X		; BD 34 A2
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsr $A810.w		; 20 10 A8
	bcs  41.b		; B0 29
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	tax		; AA
	lda $A284.w,X		; BD 84 A2
	bpl   4.b		; 10 04
	jsr $8220.w		; 20 20 82
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $A264.w,X		; BD 64 A2
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $1C44.w		; AD 44 1C
	bmi  17.b		; 30 11
	lda $1C2E.w		; AD 2E 1C
	clc		; 18
	adc $A194.w,X		; 7D 94 A1
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi  24.b		; 30 18
	bra  17.b		; 80 11
	lda $1C2E.w		; AD 2E 1C
	sec		; 38
	sbc $A194.w,X		; FD 94 A1
	sta $1C74.w		; 8D 74 1C
	cmp $1C2C.w		; CD 2C 1C
	bmi   7.b		; 30 07
	bra   0.b		; 80 00
	lda #$0001.w		; A9 01 00
	bra   3.b		; 80 03
	lda #$0002.w		; A9 02 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	lda $009A.w		; AD 9A 00
	and #$000F.w		; 29 0F 00
	cmp #$000A.w		; C9 0A 00
	bpl   7.b		; 10 07
	lda $50.b,X		; B5 50
	ora #$0008.w		; 09 08 00
	sta $50.b,X		; 95 50
	lda $50.b,X		; B5 50
	sta $1C62.w		; 8D 62 1C
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	ldx $1C08.w		; AE 08 1C
	lda $A174.w,X		; BD 74 A1
	sta $1C02.w		; 8D 02 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	and #$003F.w		; 29 3F 00
	sta $1C02.w		; 8D 02 1C
	beq  31.b		; F0 1F
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $0054.w,Y		; B9 54 00
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	lda #$1004.w		; A9 04 10
	bra   3.b		; 80 03
	lda #$1000.w		; A9 00 10
	sta $1C62.w		; 8D 62 1C
	sta $50.b,X		; 95 50
	lda #$0014.w		; A9 14 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $84.b		; 00 84
	brk $20.b		; 00 20
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $20.b		; 02 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora $FE.b		; 05 FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $04FFFC.l,X		; FF FC FF 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $FE.b		; 00 FE
	sbc $00FFFC.l,X		; FF FC FF 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $60.b		; 05 60
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C72.w		; AD 72 1C
	beq   5.b		; F0 05
	dec $1C72.w		; CE 72 1C
	sec		; 38
	rts		; 60

	lda $1C0A.w		; AD 0A 1C
	and #$0004.w		; 29 04 00
	beq  10.b		; F0 0A
	lda $1C0A.w		; AD 0A 1C
	and #$0001.w		; 29 01 00
	beq   2.b		; F0 02
	clc		; 18
	rts		; 60

	lda $1C0E.w		; AD 0E 1C
	beq   5.b		; F0 05
	dec $1C0E.w		; CE 0E 1C
	bra  25.b		; 80 19
	lda $1C46.w		; AD 46 1C
	cmp $1C6A.w		; CD 6A 1C
	bpl  17.b		; 10 11
	jsr $A2E7.w		; 20 E7 A2
	bcs  22.b		; B0 16
	jsr $A39D.w		; 20 9D A3
	bcs  17.b		; B0 11
	jsr $A497.w		; 20 97 A4
	bcc   2.b		; 90 02
	clc		; 18
	rts		; 60

	lda $1C0C.w		; AD 0C 1C
	bne   7.b		; D0 07
	jsr $A314.w		; 20 14 A3
	bcc   5.b		; 90 05
	sec		; 38
	rts		; 60

	dec $1C0C.w		; CE 0C 1C
	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C54.w		; AD 54 1C
	and #$4000.w		; 29 00 40
	beq  33.b		; F0 21
	lda $009A.w		; AD 9A 00
	xba		; EB
	and #$000F.w		; 29 0F 00
	ldx $1C08.w		; AE 08 1C
	cmp $AA2D.w,X		; DD 2D AA
	bmi  18.b		; 30 12
	lda #$000A.w		; A9 0A 00
	sta $1C72.w		; 8D 72 1C
	ldx $88.b		; A6 88
	lda #$0000.w		; A9 00 00
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	xba		; EB
	rol A		; 2A
	and #$000F.w		; 29 0F 00
	ldx $1C08.w		; AE 08 1C
	cmp $AA4F.w,X		; DD 4F AA
	bpl  30.b		; 10 1E
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $1C56.w		; AD 56 1C
	and #$0F00.w		; 29 00 0F
	beq   5.b		; F0 05
	jsr $A370.w		; 20 70 A3
	bcs  20.b		; B0 14
	jsr $A3BB.w		; 20 BB A3
	bcs  15.b		; B0 0F
	jsr $A39D.w		; 20 9D A3
	bcs  10.b		; B0 0A
	bra   6.b		; 80 06
	lda $AA71.w,X		; BD 71 AA
	sta $1C0C.w		; 8D 0C 1C
	clc		; 18
	rts		; 60

	sec		; 38
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $1C56.w		; AD 56 1C
	and #$0F00.w		; 29 00 0F
	beq   5.b		; F0 05
	jsr $A370.w		; 20 70 A3
	bcs  12.b		; B0 0C
	jsr $A3BB.w		; 20 BB A3
	bcs   7.b		; B0 07
	jsr $A39D.w		; 20 9D A3
	bcs   2.b		; B0 02
	clc		; 18
	rts		; 60

	sec		; 38
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A77E.w		; 20 7E A7
	jsr $A854.w		; 20 54 A8
	bcs  31.b		; B0 1F
	lda $1C64.w		; AD 64 1C
	beq  28.b		; F0 1C
	sec		; 38
	sbc $1C66.w		; ED 66 1C
	cmp $1C64.w		; CD 64 1C
	bpl   5.b		; 10 05
	jsr $A419.w		; 20 19 A4
	bra  12.b		; 80 0C
	sec		; 38
	sbc #$000E.w		; E9 0E 00
	cmp $1C64.w		; CD 64 1C
	bpl   5.b		; 10 05
	jsr $A452.w		; 20 52 A4
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C4A.w		; AD 4A 1C
	cmp #$0030.w		; C9 30 00
	bpl  18.b		; 10 12
	ldy $1C06.w		; AC 06 1C
	lda $1C22.w		; AD 22 1C
	beq  10.b		; F0 0A
	cmp #$00FF.w		; C9 FF 00
	beq   5.b		; F0 05
	jsr $A431.w		; 20 31 A4
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C56.w		; AD 56 1C
	and #$00F0.w		; 29 F0 00
	beq  81.b		; F0 51
	lda $0018.w,Y		; B9 18 00
	and #$0001.w		; 29 01 00
	beq  73.b		; F0 49
	jsr $A756.w		; 20 56 A7
	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	bne  31.b		; D0 1F
	lda $1C46.w		; AD 46 1C
	sec		; 38
	sbc $1C66.w		; ED 66 1C
	cmp $1C64.w		; CD 64 1C
	bpl   5.b		; 10 05
	jsr $A419.w		; 20 19 A4
	bra  43.b		; 80 2B
	sec		; 38
	sbc #$000E.w		; E9 0E 00
	cmp $1C64.w		; CD 64 1C
	bpl  36.b		; 10 24
	jsr $A452.w		; 20 52 A4
	bra  29.b		; 80 1D
	lda $1C46.w		; AD 46 1C
	sec		; 38
	sbc $1C68.w		; ED 68 1C
	cmp $1C64.w		; CD 64 1C
	bpl   5.b		; 10 05
	jsr $A419.w		; 20 19 A4
	bra  12.b		; 80 0C
	sec		; 38
	sbc #$000E.w		; E9 0E 00
	cmp $1C64.w		; CD 64 1C
	bpl   5.b		; 10 05
	jsr $A477.w		; 20 77 A4
	sec		; 38
	rts		; 60

	clc		; 18
	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $1C56.w		; AD 56 1C
	and #$0004.w		; 29 04 00
	beq   6.b		; F0 06
	lda #$1004.w		; A9 04 10
	sta $50.b,X		; 95 50
	rts		; 60

	lda #$1000.w		; A9 00 10
	sta $50.b,X		; 95 50
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	tax		; AA
	lda $A96D.w,X		; BD 6D A9
	beq   6.b		; F0 06
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sec		; 38
	rts		; 60

	lda $1C6E.w		; AD 6E 1C
	ora #$0008.w		; 09 08 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sec		; 38
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C24.w		; AE 24 1C
	lda $A9D1.w,X		; BD D1 A9
	sta $00.b		; 85 00
	lda $009A.w		; AD 9A 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	lda $0000.w,X		; BD 00 00
	bpl   5.b		; 10 05
	jsr $8220.w		; 20 20 82
	sec		; 38
	rts		; 60

	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sec		; 38
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C24.w		; AE 24 1C
	lda $A975.w,X		; BD 75 A9
	sta $00.b		; 85 00
	ldx $88.b		; A6 88
	lda $009A.w		; AD 9A 00
	and #$0003.w		; 29 03 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	lda $0000.w,X		; BD 00 00
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sec		; 38
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $009A.w		; AD 9A 00
	xba		; EB
	rol A		; 2A
	and #$000F.w		; 29 0F 00
	ldx $1C08.w		; AE 08 1C
	cmp $AA93.w,X		; DD 93 AA
	bpl  23.b		; 10 17
	lda $AAB5.w,X		; BD B5 AA
	sta $1C02.w		; 8D 02 1C
	lda $AAF9.w,X		; BD F9 AA
	sta $1C00.w		; 8D 00 1C
	lda $1C0A.w		; AD 0A 1C
	ora #$0001.w		; 09 01 00
	sta $1C0A.w		; 8D 0A 1C
	sec		; 38
	rts		; 60

	lda $AAD7.w,X		; BD D7 AA
	sta $1C0E.w		; 8D 0E 1C
	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	ldy $1C04.w		; AC 04 1C
	lda $16.b,X		; B5 16
	and #$00FF.w		; 29 FF 00
	sta $1C4E.w		; 8D 4E 1C
	lda $0016.w,Y		; B9 16 00
	and #$00FF.w		; 29 FF 00
	sta $1C50.w		; 8D 50 1C
	lda $50.b,X		; B5 50
	sta $1C5A.w		; 8D 5A 1C
	lda $0050.w,Y		; B9 50 00
	sta $1C5C.w		; 8D 5C 1C
	lda $54.b,X		; B5 54
	sta $1C54.w		; 8D 54 1C
	lda $0054.w,Y		; B9 54 00
	sta $1C56.w		; 8D 56 1C
	lda $01.b,X		; B5 01
	and #$00FF.w		; 29 FF 00
	sta $1C28.w		; 8D 28 1C
	lda $0001.w,Y		; B9 01 00
	and #$00FF.w		; 29 FF 00
	sta $1C2A.w		; 8D 2A 1C
	lda $30.b,X		; B5 30
	sta $1C38.w		; 8D 38 1C
	lda $32.b,X		; B5 32
	sta $1C3E.w		; 8D 3E 1C
	lda $0030.w,Y		; B9 30 00
	sta $1C3A.w		; 8D 3A 1C
	lda $0032.w,Y		; B9 32 00
	sta $1C40.w		; 8D 40 1C
	lda $0021.w,Y		; B9 21 00
	sta $1C2E.w		; 8D 2E 1C
	lda $21.b,X		; B5 21
	sta $1C2C.w		; 8D 2C 1C
	sec		; 38
	sbc $0021.w,Y		; F9 21 00
	sta $1C44.w		; 8D 44 1C
	bpl  22.b		; 10 16
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $1C46.w		; 8D 46 1C
	lda $1C3A.w		; AD 3A 1C
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $1C4C.w		; 8D 4C 1C
	lda #$0001.w		; A9 01 00
	bra  12.b		; 80 0C
	sta $1C46.w		; 8D 46 1C
	lda $1C3A.w		; AD 3A 1C
	sta $1C4C.w		; 8D 4C 1C
	lda #$0002.w		; A9 02 00
	sta $1C6E.w		; 8D 6E 1C
	lda $25.b,X		; B5 25
	sta $1C32.w		; 8D 32 1C
	lda $0025.w,Y		; B9 25 00
	sta $1C34.w		; 8D 34 1C
	ldy $1C06.w		; AC 06 1C
	lda $0016.w,Y		; B9 16 00
	and #$00FF.w		; 29 FF 00
	sta $1C52.w		; 8D 52 1C
	lda $0050.w,Y		; B9 50 00
	sta $1C5E.w		; 8D 5E 1C
	lda $0054.w,Y		; B9 54 00
	sta $1C58.w		; 8D 58 1C
	lda $0000.w,Y		; B9 00 00
	and #$00FF.w		; 29 FF 00
	sta $1C22.w		; 8D 22 1C
	lda $0021.w,Y		; B9 21 00
	sta $1C30.w		; 8D 30 1C
	lda $0025.w,Y		; B9 25 00
	sta $1C36.w		; 8D 36 1C
	lda $1C2C.w		; AD 2C 1C
	sec		; 38
	sbc $0021.w,Y		; F9 21 00
	sta $1C48.w		; 8D 48 1C
	bpl   4.b		; 10 04
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $1C4A.w		; 8D 4A 1C
	lda $50.b,X		; B5 50
	sta $1C60.w		; 8D 60 1C
	sta $52.b,X		; 95 52
	sta $1C70.w		; 8D 70 1C
	stz $50.b,X		; 74 50
	jsr $A63E.w		; 20 3E A6
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1900.w		; AE 00 19
	lda $1C70.w		; AD 70 1C
	sta $1902.w,X		; 9D 02 19
	lda $1900.w		; AD 00 19
	inc A		; 1A
	inc A		; 1A
	and #$01FF.w		; 29 FF 01
	sta $1900.w		; 8D 00 19
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1000.w		; A0 00 10
	cpx #$1000.w		; E0 00 10
	bne   3.b		; D0 03
	ldy #$1080.w		; A0 80 10
	sty $1C04.w		; 8C 04 1C
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	sta $1C1E.w		; 8D 1E 1C
	asl A		; 0A
	sta $1C24.w		; 8D 24 1C
	lda $0000.w,Y		; B9 00 00
	and #$00FF.w		; 29 FF 00
	sta $1C20.w		; 8D 20 1C
	asl A		; 0A
	sta $1C26.w		; 8D 26 1C
	ldy #$1100.w		; A0 00 11
	cpx #$1000.w		; E0 00 10
	bne   3.b		; D0 03
	ldy #$1180.w		; A0 80 11
	sty $1C06.w		; 8C 06 1C
	lda $1E3B.w		; AD 3B 1E
	asl A		; 0A
	sta $1C08.w		; 8D 08 1C
	lda $1F62.w		; AD 62 1F
	and #$00FF.w		; 29 FF 00
	beq  18.b		; F0 12
	lda $1C08.w		; AD 08 1C
	clc		; 18
	adc #$0006.w		; 69 06 00
	cmp #$001E.w		; C9 1E 00
	bmi   3.b		; 30 03
	lda #$001E.w		; A9 1E 00
	sta $1C08.w		; 8D 08 1C
	jsr $A8D3.w		; 20 D3 A8
	jsr $A7A6.w		; 20 A6 A7
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C24.w		; AE 24 1C
	lda $AB1B.w,X		; BD 1B AB
	sta $1C6A.w		; 8D 6A 1C
	lda $AB79.w,X		; BD 79 AB
	sta $1C18.w		; 8D 18 1C
	lda $AB2F.w,X		; BD 2F AB
	sta $1C6C.w		; 8D 6C 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $1C14.w		; 9C 14 1C
	stz $1C16.w		; 9C 16 1C
	ldx $1C56.w		; AE 56 1C
	txa		; 8A
	and #$00F0.w		; 29 F0 00
	bne  20.b		; D0 14
	txa		; 8A
	and #$0F00.w		; 29 00 0F
	beq  52.b		; F0 34
	xba		; EB
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	sec		; 38
	sbc #$0004.w		; E9 04 00
	sta $1C16.w		; 8D 16 1C
	bra  38.b		; 80 26
	txa		; 8A
	and #$0004.w		; 29 04 00
	beq   5.b		; F0 05
	jsr $A6BD.w		; 20 BD A6
	bra  27.b		; 80 1B
	txa		; 8A
	and #$0008.w		; 29 08 00
	beq  16.b		; F0 10
	txa		; 8A
	and #$0003.w		; 29 03 00
	beq   5.b		; F0 05
	jsr $A6F0.w		; 20 F0 A6
	bra  10.b		; 80 0A
	jsr $A723.w		; 20 23 A7
	bra   5.b		; 80 05
	jsr $A68A.w		; 20 8A A6
	bra   0.b		; 80 00
	rts		; 60

	txa		; 8A
	and #$0050.w		; 29 50 00
	beq  22.b		; F0 16
	txa		; 8A
	and #$0010.w		; 29 10 00
	beq   8.b		; F0 08
	lda #$0000.w		; A9 00 00
	sta $1C14.w		; 8D 14 1C
	bra  30.b		; 80 1E
	lda #$0004.w		; A9 04 00
	sta $1C14.w		; 8D 14 1C
	bra  22.b		; 80 16
	txa		; 8A
	and #$0020.w		; 29 20 00
	beq   8.b		; F0 08
	lda #$0008.w		; A9 08 00
	sta $1C14.w		; 8D 14 1C
	bra   8.b		; 80 08
	lda #$000C.w		; A9 0C 00
	sta $1C14.w		; 8D 14 1C
	bra   0.b		; 80 00
	rts		; 60

	txa		; 8A
	and #$0050.w		; 29 50 00
	beq  22.b		; F0 16
	txa		; 8A
	and #$0010.w		; 29 10 00
	beq   8.b		; F0 08
	lda #$0020.w		; A9 20 00
	sta $1C14.w		; 8D 14 1C
	bra  30.b		; 80 1E
	lda #$0022.w		; A9 22 00
	sta $1C14.w		; 8D 14 1C
	bra  22.b		; 80 16
	txa		; 8A
	and #$0020.w		; 29 20 00
	beq   8.b		; F0 08
	lda #$0024.w		; A9 24 00
	sta $1C14.w		; 8D 14 1C
	bra   8.b		; 80 08
	lda #$0026.w		; A9 26 00
	sta $1C14.w		; 8D 14 1C
	bra   0.b		; 80 00
	rts		; 60

	txa		; 8A
	and #$0050.w		; 29 50 00
	beq  22.b		; F0 16
	txa		; 8A
	and #$0010.w		; 29 10 00
	beq   8.b		; F0 08
	lda #$0018.w		; A9 18 00
	sta $1C14.w		; 8D 14 1C
	bra  30.b		; 80 1E
	lda #$001A.w		; A9 1A 00
	sta $1C14.w		; 8D 14 1C
	bra  22.b		; 80 16
	txa		; 8A
	and #$0020.w		; 29 20 00
	beq   8.b		; F0 08
	lda #$001C.w		; A9 1C 00
	sta $1C14.w		; 8D 14 1C
	bra   8.b		; 80 08
	lda #$001E.w		; A9 1E 00
	sta $1C14.w		; 8D 14 1C
	bra   0.b		; 80 00
	rts		; 60

	txa		; 8A
	and #$0050.w		; 29 50 00
	beq  22.b		; F0 16
	txa		; 8A
	and #$0010.w		; 29 10 00
	beq   8.b		; F0 08
	lda #$0010.w		; A9 10 00
	sta $1C14.w		; 8D 14 1C
	bra  30.b		; 80 1E
	lda #$0012.w		; A9 12 00
	sta $1C14.w		; 8D 14 1C
	bra  22.b		; 80 16
	txa		; 8A
	and #$0020.w		; 29 20 00
	beq   8.b		; F0 08
	lda #$0014.w		; A9 14 00
	sta $1C14.w		; 8D 14 1C
	bra   8.b		; 80 08
	lda #$0016.w		; A9 16 00
	sta $1C14.w		; 8D 14 1C
	bra   0.b		; 80 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C26.w		; AE 26 1C
	lda $A76A.w,X		; BD 6A A7
	clc		; 18
	adc $1C14.w		; 6D 14 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $1C64.w		; 8D 64 1C
	rts		; 60

	brk $00.b		; 00 00
	cmp $21AF.w,X		; DD AF 21
	bcs 101.b		; B0 65
	bcs -87.b		; B0 A9
	bcs -19.b		; B0 ED
	bcs  49.b		; B0 31
	lda ($75.b),Y		; B1 75
	lda ($B9.b),Y		; B1 B9
	lda ($F9.b),Y		; B1 F9
	lda ($C2.b),Y		; B1 C2
	bmi -82.b		; 30 AE
	rol $1C.b		; 26 1C
	lda $A792.w,X		; BD 92 A7
	clc		; 18
	adc $1C16.w		; 6D 16 1C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $1C64.w		; 8D 64 1C
	rts		; 60

	brk $00.b		; 00 00
	ora #$4DB0.w		; 09 B0 4D
	bcs -111.b		; B0 91
	bcs -43.b		; B0 D5
	bcs  25.b		; B0 19
	lda ($5D.b),Y		; B1 5D
	lda ($A1.b),Y		; B1 A1
	lda ($E5.b),Y		; B1 E5
	lda ($25.b),Y		; B1 25
	lda ($C2.b)		; B2 C2
	bmi -82.b		; 30 AE
	bit $1C.b		; 24 1C
	lda $A7BC.w,X		; BD BC A7
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $1C66.w		; 8D 66 1C
	lda $0002.w,X		; BD 02 00
	sta $1C68.w		; 8D 68 1C
	rts		; 60

	brk $00.b		; 00 00
	ora $B0.b		; 05 B0
	eor #$8DB0.w		; 49 B0 8D
	bcs -47.b		; B0 D1
	bcs  21.b		; B0 15
	lda ($59.b),Y		; B1 59
	lda ($9D.b),Y		; B1 9D
	lda ($E1.b),Y		; B1 E1
	lda ($21.b),Y		; B1 21
	lda ($C2.b)		; B2 C2
	bmi -83.b		; 30 AD
	plp		; 28
	trb $20C9.w		; 1C C9 20
	brk $D0.b		; 00 D0
	inc A		; 1A
	lda #$0001.w		; A9 01 00
	sta $1C12.w		; 8D 12 1C
	lda #$0010.w		; A9 10 00
	sta $1C00.w		; 8D 00 1C
	lda #$0001.w		; A9 01 00
	trb $1C0A.w		; 1C 0A 1C
	lda #$0002.w		; A9 02 00
	trb $1C0A.w		; 1C 0A 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C54.w		; AD 54 1C
	and #$8000.w		; 29 00 80
	beq  14.b		; F0 0E
	lda #$0002.w		; A9 02 00
	trb $1C0A.w		; 1C 0A 1C
	lda #$0001.w		; A9 01 00
	trb $1C0A.w		; 1C 0A 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $4A.b,X		; B5 4A
	and #$00FF.w		; 29 FF 00
	lsr A		; 4A
	lsr A		; 4A
	sta $00.b		; 85 00
	lda $49.b,X		; B5 49
	and #$00FF.w		; 29 FF 00
	cmp $00.b		; C5 00
	bpl  44.b		; 10 2C
	lda $009A.w		; AD 9A 00
	xba		; EB
	rol A		; 2A
	rol A		; 2A
	and #$000F.w		; 29 0F 00
	ldx $1C08.w		; AE 08 1C
	cmp $AC6B.w,X		; DD 6B AC
	bpl  27.b		; 10 1B
	ldx $1C24.w		; AE 24 1C
	lda $AC57.w,X		; BD 57 AC
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	lda #$0004.w		; A9 04 00
	sta $1C02.w		; 8D 02 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C0A.w		; AD 0A 1C
	and #$0004.w		; 29 04 00
	bne   8.b		; D0 08
	lda $1C16.w		; AD 16 1C
	cmp #$0014.w		; C9 14 00
	beq   2.b		; F0 02
	clc		; 18
	rts		; 60

	lda $009A.w		; AD 9A 00
	xba		; EB
	rol A		; 2A
	rol A		; 2A
	and #$000F.w		; 29 0F 00
	jsr $A294.w		; 20 94 A2
	ldx $1C08.w		; AE 08 1C
	cmp $AC35.w,X		; DD 35 AC
	bpl  85.b		; 10 55
	lda $1C64.w		; AD 64 1C
	ldx $1C26.w		; AE 26 1C
	clc		; 18
	adc $AC21.w,X		; 7D 21 AC
	beq   5.b		; F0 05
	cmp $1C46.w		; CD 46 1C
	bmi  68.b		; 30 44
	lda $AC8D.w,X		; BD 8D AC
	sta $00.b		; 85 00
	lda $1C24.w		; AD 24 1C
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $00.b		; 85 00
	lda $009A.w		; AD 9A 00
	and #$0006.w		; 29 06 00
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	lda $0000.w,X		; BD 00 00
	beq  36.b		; F0 24
	ldx $88.b		; A6 88
	sta $50.b,X		; 95 50
	sta $1C62.w		; 8D 62 1C
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	lda #$0004.w		; A9 04 00
	sta $1C02.w		; 8D 02 1C
	lda $1C0A.w		; AD 0A 1C
	ora #$0004.w		; 09 04 00
	sta $1C0A.w		; 8D 0A 1C
	lda #$0001.w		; A9 01 00
	trb $1C0A.w		; 1C 0A 1C
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C08.w		; AD 08 1C
	asl A		; 0A
	clc		; 18
	adc $1C08.w		; 6D 08 1C
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $A90D.w,Y		; B9 0D A9
	sta $70.b,X		; 95 70
	lda $A90E.w,Y		; B9 0E A9
	sta $71.b,X		; 95 71
	lda $A90F.w,Y		; B9 0F A9
	sta $72.b,X		; 95 72
	lda $A910.w,Y		; B9 10 A9
	sta $73.b,X		; 95 73
	lda $A911.w,Y		; B9 11 A9
	sta $74.b,X		; 95 74
	lda $A912.w,Y		; B9 12 A9
	sta $75.b,X		; 95 75
	lda $72.b,X		; B5 72
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$60.b		; 69 60
	sta $49.b,X		; 95 49
	sta $4A.b,X		; 95 4A
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($04.b,X)		; 01 04
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora $04.b,S		; 03 04
	tsb $03.b		; 04 03
	ora $01.b,S		; 03 01
	tsb $04.b		; 04 04
	tsb $03.b		; 04 03
	ora $01.b,S		; 03 01
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	tsb $05.b		; 04 05
	ora $04.b		; 05 04
	tsb $00.b		; 04 00
	ora $05.b		; 05 05
	ora $04.b		; 05 04
	tsb $00.b		; 04 00
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora $00.b		; 05 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bit #$A9.b		; 89 A9
	sta ($A9.b),Y		; 91 A9
	sta $A1A9.w,Y		; 99 A9 A1
	lda #$A9.b		; A9 A9
	lda #$B1.b		; A9 B1
	lda #$B9.b		; A9 B9
	lda #$C1.b		; A9 C1
	lda #$C9.b		; A9 C9
	lda #$00.b		; A9 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	tsb $24.b		; 04 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	brk $E5.b		; 00 E5
	lda #$ED.b		; A9 ED
	lda #$F5.b		; A9 F5
	lda #$FD.b		; A9 FD
	lda #$05.b		; A9 05
	tax		; AA
	ora $15AA.w		; 0D AA 15
	tax		; AA
	ora $25AA.w,X		; 1D AA 25
	tax		; AA
	inc $00FF.w,X		; FE FF 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $43.b		; 00 43
	plb		; AB
	eor #$AB.b		; 49 AB
	eor $AB55AB.l		; 4F AB 55 AB
	tad		; 5B
	plb		; AB
	adc ($AB.b,X)		; 61 AB
	adc [$AB.b]		; 67 AB
	adc $73AB.w		; 6D AB 73
	plb		; AB
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8D.b		; 00 8D
	plb		; AB
	sta [$AB.b],Y		; 97 AB
	lda ($AB.b,X)		; A1 AB
	plb		; AB
	plb		; AB
	lda $AB.b,X		; B5 AB
	lda $ABC9AB.l,X		; BF AB C9 AB
	cmp ($AB.b,S),Y		; D3 AB
	cmp $E7AB.w,X		; DD AB E7
	plb		; AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	sbc ($AB.b),Y		; F1 AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	xce		; FB
	plb		; AB
	ora #$AC.b		; 09 AC
	ora [$AC.b],Y		; 17 AC
	ora [$AC.b],Y		; 17 AC
	ora [$AC.b],Y		; 17 AC
	inc $02FF.w,X		; FE FF 02
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	ora #$FF.b		; 09 FF
	sbc $02FFFE.l,X		; FF FE FF 02
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	asl $FF.b		; 06 FF
	sbc $20FFFE.l,X		; FF FE FF 20
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$FF.b]		; 07 FF
	sbc $20FFFE.l,X		; FF FE FF 20
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	asl $08.b		; 06 08
	asl $08.b		; 06 08
	asl $FF.b		; 06 FF
	sbc $02FFFE.l,X		; FF FE FF 02
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	ora #$FF.b		; 09 FF
	sbc $000000.l,X		; FF 00 00 00
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
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0A00.w		; 0C 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $0800.w		; 0C 00 08
	brk $08.b		; 00 08
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	ldy $ACB5.w		; AC B5 AC
	cmp #$AC.b		; C9 AC
	cmp $F1AC.w,X		; DD AC F1
	ldy $AD05.w		; AC 05 AD
	ora $2DAD.w,Y		; 19 AD 2D
	lda $AD41.w		; AD 41 AD
	brk $00.b		; 00 00
	eor $AD.b,X		; 55 AD
	eor $65AD.w,X		; 5D AD 65
	lda $AD6D.w		; AD 6D AD
	adc $AD.b,X		; 75 AD
	adc $85AD.w,X		; 7D AD 85
	lda $AD8D.w		; AD 8D AD
	sta $AD.b,X		; 95 AD
	brk $00.b		; 00 00
	sta $A5AD.w,X		; 9D AD A5
	lda $ADAD.w		; AD AD AD
	lda $AD.b,X		; B5 AD
	lda $C5AD.w,X		; BD AD C5
	lda $ADCD.w		; AD CD AD
	cmp $AD.b,X		; D5 AD
	cmp $00AD.w,X		; DD AD 00
	brk $E5.b		; 00 E5
	lda $ADED.w		; AD ED AD
	sbc $AD.b,X		; F5 AD
	sbc $05AD.w,X		; FD AD 05
	ldx $AE0D.w		; AE 0D AE
	ora $AE.b,X		; 15 AE
	ora $25AE.w,X		; 1D AE 25
	ldx $0000.w		; AE 00 00
	and $35AE.w		; 2D AE 35
	ldx $AE3D.w		; AE 3D AE
	eor $AE.b		; 45 AE
	eor $55AE.w		; 4D AE 55
	ldx $AE5D.w		; AE 5D AE
	adc $AE.b		; 65 AE
	adc $00AE.w		; 6D AE 00
	brk $75.b		; 00 75
	ldx $AE7D.w		; AE 7D AE
	sta $AE.b		; 85 AE
	sta $95AE.w		; 8D AE 95
	ldx $AE9D.w		; AE 9D AE
	lda $AE.b		; A5 AE
	lda $B5AE.w		; AD AE B5
	ldx $0000.w		; AE 00 00
	lda $C5AE.w,X		; BD AE C5
	ldx $AECD.w		; AE CD AE
	cmp $AE.b,X		; D5 AE
	cmp $E5AE.w,X		; DD AE E5
	ldx $AEED.w		; AE ED AE
	sbc $AE.b,X		; F5 AE
	sbc $00AE.w,X		; FD AE 00
	brk $05.b		; 00 05
	lda $15AF0D.l		; AF 0D AF 15
	lda $25AF1D.l		; AF 1D AF 25
	lda $35AF2D.l		; AF 2D AF 35
	lda $45AF3D.l		; AF 3D AF 45
	lda $4D0000.l		; AF 00 00 4D
	lda $5DAF55.l		; AF 55 AF 5D
	lda $6DAF65.l		; AF 65 AF 6D
	lda $7DAF75.l		; AF 75 AF 7D
	lda $8DAF85.l		; AF 85 AF 8D
	lda $950000.l		; AF 00 00 95
	lda $A5AF9D.l		; AF 9D AF A5
	lda $B5AFAD.l		; AF AD AF B5
	lda $C5AFBD.l		; AF BD AF C5
	lda $D5AFCD.l		; AF CD AF D5
	lda $000000.l		; AF 00 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	cop $00.b		; 02 00
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
	cop $00.b		; 02 00
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
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
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
	cop $00.b		; 02 00
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
	cop $00.b		; 02 00
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
	cop $24.b		; 02 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	brk $15.b		; 00 15
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $22.b		; 00 22
	brk $22.b		; 00 22
	brk $41.b		; 00 41
	brk $41.b		; 00 41
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $19.b		; 00 19
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $33.b		; 00 33
	brk $32.b		; 00 32
	brk $35.b		; 00 35
	brk $3A.b		; 00 3A
	brk $46.b		; 00 46
	brk $07.b		; 00 07
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	brk $29.b		; 00 29
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $25.b		; 00 25
	brk $25.b		; 00 25
	brk $33.b		; 00 33
	brk $33.b		; 00 33
	brk $4E.b		; 00 4E
	brk $33.b		; 00 33
	brk $4F.b		; 00 4F
	brk $4F.b		; 00 4F
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $17.b		; 00 17
	brk $34.b		; 00 34
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $17.b		; 00 17
	brk $34.b		; 00 34
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $1A.b		; 00 1A
	brk $0C.b		; 00 0C
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	brk $31.b		; 00 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $24.b		; 00 24
	brk $37.b		; 00 37
	brk $29.b		; 00 29
	brk $4B.b		; 00 4B
	brk $3D.b		; 00 3D
	brk $4B.b		; 00 4B
	brk $4B.b		; 00 4B
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $2F.b		; 00 2F
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $37.b		; 00 37
	brk $41.b		; 00 41
	brk $40.b		; 00 40
	brk $05.b		; 00 05
	brk $13.b		; 00 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	brk $22.b		; 00 22
	brk $27.b		; 00 27
	brk $22.b		; 00 22
	brk $49.b		; 00 49
	brk $49.b		; 00 49
	brk $4C.b		; 00 4C
	brk $4C.b		; 00 4C
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	brk $3B.b		; 00 3B
	brk $36.b		; 00 36
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	brk $3B.b		; 00 3B
	brk $36.b		; 00 36
	brk $2C.b		; 00 2C
	brk $24.b		; 00 24
	brk $30.b		; 00 30
	brk $3F.b		; 00 3F
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $65.b		; 00 65
	brk $65.b		; 00 65
	brk $26.b		; 00 26
	brk $26.b		; 00 26
	brk $2D.b		; 00 2D
	brk $2D.b		; 00 2D
	brk $1E.b		; 00 1E
	brk $33.b		; 00 33
	brk $0F.b		; 00 0F
	brk $37.b		; 00 37
	brk $1E.b		; 00 1E
	brk $33.b		; 00 33
	brk $0F.b		; 00 0F
	brk $37.b		; 00 37
	brk $2D.b		; 00 2D
	brk $63.b		; 00 63
	brk $42.b		; 00 42
	brk $56.b		; 00 56
	brk $06.b		; 00 06
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sbc $4EFFFD.l,X		; FF FD FF 4E
	brk $4E.b		; 00 4E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	brk $1F.b		; 00 1F
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $4A.b		; 00 4A
	brk $4A.b		; 00 4A
	brk $2A.b		; 00 2A
	brk $2E.b		; 00 2E
	brk $31.b		; 00 31
	brk $31.b		; 00 31
	brk $2A.b		; 00 2A
	brk $2E.b		; 00 2E
	brk $35.b		; 00 35
	brk $39.b		; 00 39
	brk $33.b		; 00 33
	brk $35.b		; 00 35
	brk $45.b		; 00 45
	brk $43.b		; 00 43
	brk $0C.b		; 00 0C
	brk $1A.b		; 00 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2D.b		; 00 2D
	brk $2D.b		; 00 2D
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $4C.b		; 00 4C
	brk $4C.b		; 00 4C
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $4B.b		; 00 4B
	brk $47.b		; 00 47
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $2E.b		; 00 2E
	brk $2D.b		; 00 2D
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $2E.b		; 00 2E
	brk $3D.b		; 00 3D
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $3F.b		; 00 3F
	brk $59.b		; 00 59
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $45.b		; 00 45
	brk $24.b		; 00 24
	brk $43.b		; 00 43
	brk $31.b		; 00 31
	brk $52.b		; 00 52
	brk $52.b		; 00 52
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $45.b		; 00 45
	brk $45.b		; 00 45
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $45.b		; 00 45
	brk $45.b		; 00 45
	brk $4F.b		; 00 4F
	brk $53.b		; 00 53
	brk $48.b		; 00 48
	brk $64.b		; 00 64
	brk $11.b		; 00 11
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $65.b		; 00 65
	brk $65.b		; 00 65
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	brk $47.b		; 00 47
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $2B.b		; 00 2B
	brk $1A.b		; 00 1A
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $22.b		; 00 22
	brk $22.b		; 00 22
	brk $1B.b		; 00 1B
	brk $1E.b		; 00 1E
	brk $1A.b		; 00 1A
	brk $1C.b		; 00 1C
	brk $1B.b		; 00 1B
	brk $1E.b		; 00 1E
	brk $1A.b		; 00 1A
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $25.b		; 00 25
	brk $25.b		; 00 25
	brk $21.b		; 00 21
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $53.b		; 00 53
	adc [$67.b],Y		; 77 67
	eor $D4FF.w,X		; 5D FF D4
	ora $021334.l,X		; 1F 34 13 02
	bpl  65.b		; 10 41
	sbc $CB5E00.l,X		; FF 00 5E CB
	adc [$CB.b],Y		; 77 CB
	adc ($CB.b),Y		; 71 CB
	ror $FEFF.w,X		; 7E FF FE
	eor ($77.b,S),Y		; 53 77
	adc [$5D.b]		; 67 5D
	sbc $1F05D4.l,X		; FF D4 05 1F
	tsb $38.b		; 04 38
	cmp [$19.b]		; C7 19
	ldx #$34A3.w		; A2 A3 34
	ora ($0A.b,S),Y		; 13 0A
	trb $2D.b		; 14 2D
	sbc $370C00.l,X		; FF 00 0C 37
	ora $22.b,S		; 03 22
	cop $0C.b		; 02 0C
	ora ($20.b,S),Y		; 13 20
	asl $FF15.w		; 0E 15 FF
	jsr ($7753.w,X)		; FC 53 77
	adc [$5D.b]		; 67 5D
	sbc $0826D4.l,X		; FF D4 26 08
	asl A		; 0A
	asl A		; 0A
	ora $100745.l,X		; 1F 45 07 10
	ora $FF.b,X		; 15 FF
	brk $14.b		; 00 14
	plp		; 28
	ora ($04.b,X)		; 01 04
	and $13221E.l,X		; 3F 1E 22 13
	ora $0A.b		; 05 0A
	ora $FF.b,S		; 03 FF
	inc $7753.w,X		; FE 53 77
	adc [$5D.b]		; 67 5D
	sbc $3842D4.l,X		; FF D4 42 38
	ora $1F.b		; 05 1F
	tsb $16.b		; 04 16
	sbc $7A5500.l,X		; FF 00 55 7A
	bpl  17.b		; 10 11
	and $0510.w		; 2D 10 05
	asl $1929.w		; 0E 29 19
	asl $15.b		; 06 15
	cmp ($FF.b,S),Y		; D3 FF
	jsr ($7753.w,X)		; FC 53 77
	adc [$5D.b]		; 67 5D
	sbc $111FD4.l,X		; FF D4 1F 11
	php		; 08
	bpl  72.b		; 10 48
	rol A		; 2A
	bpl  64.b		; 10 40
	sbc $CB5E00.l,X		; FF 00 5E CB
	adc [$CB.b],Y		; 77 CB
	adc $8657CB.l		; 6F CB 57 86
	sei		; 78
	wai		; CB
	sbc $7753FE.l,X		; FF FE 53 77
	adc [$5D.b]		; 67 5D
	sbc $010BD4.l,X		; FF D4 0B 01
	sbc $190F00.l,X		; FF 00 0F 19
	rol $2812.w,X		; 3E 12 28
	and [$08.b],Y		; 37 08
	and $0E20.w		; 2D 20 0E
	ora ($20.b,S),Y		; 13 20
	pld		; 2B
	sbc $9F68FC.l,X		; FF FC 68 9F
	adc ($86.b,X)		; 61 86
	wai		; CB
	ror $D4FF.w,X		; 7E FF D4
	ora ($15.b,X)		; 01 15
	bpl  56.b		; 10 38
	asl A		; 0A
	asl A		; 0A
	ora $290845.l,X		; 1F 45 08 29
	ora $2E.b,X		; 15 2E
	ora ($FF.b,S),Y		; 13 FF
	brk $05.b		; 00 05
	lsr $2B.b		; 46 2B
	ora [$45.b]		; 07 45
	ora $FF2C.w		; 0D 2C FF
	inc $9F68.w,X		; FE 68 9F
	adc ($86.b,X)		; 61 86
	wai		; CB
	ror $D4FF.w,X		; 7E FF D4
	phd		; 0B
	ora ($1A.b,X)		; 01 1A
	rol $1F22.w,X		; 3E 22 1F
	tsb $0337.w		; 0C 37 03
	asl $FF.b		; 06 FF
	jsr ($7753.w,X)		; FC 53 77
	adc [$5D.b]		; 67 5D
	sbc $7A55D4.l,X		; FF D4 55 7A
	bpl  17.b		; 10 11
	and $0510.w		; 2D 10 05
	asl $FF47.w		; 0E 47 FF
	brk $05.b		; 00 05
	ora $A23804.l,X		; 1F 04 38 A2
	lda $42.b,S		; A3 42
	sbc $7753FE.l,X		; FF FE 53 77
	adc [$5D.b]		; 67 5D
	sbc $3842D4.l,X		; FF D4 42 38
	eor $7A.b,X		; 55 7A
	bpl  17.b		; 10 11
	inc A		; 1A
	cop $1F.b		; 02 1F
	ora $FF1945.l,X		; 1F 45 19 FF
	brk $01.b		; 00 01
	cop $13.b		; 02 13
	trb $1A.b		; 14 1A
	ply		; 7A
	txy		; 9B
	adc $1138.w,Y		; 79 38 11
	sec		; 38
	ora $40.b,S		; 03 40
	sbc $799FFC.l,X		; FF FC 9F 79
	wai		; CB
	stz $FF.b		; 64 FF
	pei ($26.b)		; D4 26
	php		; 08
	asl A		; 0A
	asl A		; 0A
	ora $1F0745.l,X		; 1F 45 07 1F
	tsb $FF10.w		; 0C 10 FF
	brk $5D.b		; 00 5D
	adc ($CB.b,S),Y		; 73 CB
	adc $967A.w,Y		; 79 7A 96
	bra  -1.b		; 80 FF
	inc $799F.w,X		; FE 9F 79
	wai		; CB
	stz $FF.b		; 64 FF
	pei ($2C.b)		; D4 2C
	bpl  12.b		; 10 0C
	and $040A.w		; 2D 0A 04
	and #$B4.b		; 29 B4
	and $00FF.w		; 2D FF 00
	jsr $130E.w		; 20 0E 13
	php		; 08
	.db $42, $0B		; 42 0B
	cop $FF.b		; 02 FF
	jsr ($B3C9.w,X)		; FC C9 B3
	inc A		; 1A
	ora ($06.b)		; 12 06
	rol A		; 2A
	bpl  21.b		; 10 15
	cmp ($FF.b)		; D2 FF
	ldx #$23A3.w		; A2 A3 23
	eor #$3E.b		; 49 3E
	ora $102A23.l,X		; 1F 23 2A 10
	tsb $FEFF.w		; 0C FF FE
	ora ($10.b,X)		; 01 10
	tsb $3802.w		; 0C 02 38
	cop $16.b		; 02 16
	ldx #$1AA3.w		; A2 A3 1A
	sbc $382E06.l,X		; FF 06 2E 38
	tsb $27.b		; 04 27
	rol A		; 2A
	ora $02.b,X		; 15 02
	bit $1826.w		; 2C 26 18
	sbc $101FFE.l,X		; FF FE 1F 10
	ora ($10.b,X)		; 01 10
	tsb $2706.w		; 0C 06 27
	ldx #$2DA3.w		; A2 A3 2D
	sbc $054703.l,X		; FF 03 47 05
	ora $14.b,S		; 03 14
	tsb $2710.w		; 0C 10 27
	sbc $16C8FE.l,X		; FF FE C8 16
	asl $2C.b		; 06 2C
	bit $13.b,X		; 34 13
	ora $0C.b		; 05 0C
	ora $07.b		; 05 07
	rol $FF.b		; 26 FF
	inc $2345.w,X		; FE 45 23
	bit $34.b		; 24 34
	jmp $2E20.w		; 4C 20 2E
	ora $14.b,X		; 15 14
	cop $12.b		; 02 12
	ora $FF2345.l,X		; 1F 45 23 FF
	ora $06.b,X		; 15 06
	rol $08.b		; 26 08
	tsb $0213.w		; 0C 13 02
	and #$19.b		; 29 19
	sec		; 38
	sbc $1102FE.l,X		; FF FE 02 11
	eor [$2E.b]		; 47 2E
	cop $02.b		; 02 02
	ora $FF.b,X		; 15 FF
	inc $2405.w,X		; FE 05 24
	ora $D220.w		; 0D 20 D2
	sbc $24FFFC.l,X		; FF FC FF 24
	bit $4C.b,X		; 34 4C
	plp		; 28
	clv		; B8
	sec		; 38
	ldx #$24A3.w		; A2 A3 24
	and [$15.b]		; 27 15
	ora [$35.b]		; 07 35
	sbc $1F3E1A.l,X		; FF 1A 3E 1F
	and [$15.b]		; 27 15
	cop $26.b		; 02 26
	clc		; 18
	cmp ($FF.b),Y		; D1 FF
	jsr ($ACA7.w,X)		; FC A7 AC
	asl $27.b		; 06 27
	inc A		; 1A
	bit $0C10.w		; 2C 10 0C
	sec		; 38
	ldx #$19A3.w		; A2 A3 19
	sbc $77CB5E.l,X		; FF 5E CB 77
	wai		; CB
	adc $CD90CB.l		; 6F CB 90 CD
	sec		; 38
	inc A		; 1A
	rol $291F.w,X		; 3E 1F 29
	bit $26FF.w		; 2C FF 26
	pld		; 2B
	tsb $1808.w		; 0C 08 18
	sbc $ACA7FC.l,X		; FF FC A7 AC
	asl $27.b		; 06 27
	inc A		; 1A
	adc $8657CB.l		; 6F CB 57 86
	sei		; 78
	wai		; CB
	ora $05FF.w,Y		; 19 FF 05
	tay		; A8
	lda #$5A.b		; A9 5A
	wai		; CB
	adc $CB.b		; 65 CB
	sec		; 38
	inc A		; 1A
	rol $281F.w,X		; 3E 1F 28
	ora $11FF0D.l,X		; 1F 0D FF 11
	and $2E.b,X		; 35 2E
	trb $20.b		; 14 20
	ora $07.b,X		; 15 07
	and $42.b,X		; 35 42
	jsl $FCFF26.l		; 22 26 FF FC
	bit $34.b		; 24 34
	jmp $A228.w		; 4C 28 A2
	lda $34.b,S		; A3 34
	ora ($19.b,S),Y		; 13 19
	inc A		; 1A
	sbc $471102.l,X		; FF 02 11 47
	rol $19B4.w		; 2E B4 19
	ora ($29.b,X)		; 01 29
	lda $FF38.w		; AD 38 FF
	ora $27.b,X		; 15 27
	ora $07.b,X		; 15 07
	and $02.b,X		; 35 02
	ora #$15.b		; 09 15
	cop $26.b		; 02 26
	clc		; 18
	sbc $14B1FC.l,X		; FF FC B1 14
	cmp $C4.b,S		; C3 C4
	ora $CB5E.w,Y		; 19 5E CB
	adc [$CB.b],Y		; 77 CB
	dey		; 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	sbc $26B3B2.l,X		; FF B2 B3 26
	plp		; 28
	ldx #$2DA3.w		; A2 A3 2D
	ora ($14.b)		; 12 14
	jsl $130E0B.l		; 22 0B 0E 13
	sbc $421002.l,X		; FF 02 10 42
	ora [$1F.b]		; 07 1F
	ora $4900.w		; 0D 00 49
	cop $34.b		; 02 34
	cmp ($FF.b),Y		; D1 FF
	jsr ($1001.w,X)		; FC 01 10
	tsb $A238.w		; 0C 38 A2
	lda $15.b,S		; A3 15
	rol $FF13.w		; 2E 13 FF
	ora $241A42.l,X		; 1F 42 1A 24
	asl $34.b		; 06 34
	bpl   6.b		; 10 06
	ora $D3.b,X		; 15 D3
	sbc $02011F.l,X		; FF 1F 01 02
	cop $24.b		; 02 24
	brk $38.b		; 00 38
	rol $2B47.w		; 2E 47 2B
	bit $14.b,X		; 34 14
	sbc $CB71FC.l,X		; FF FC 71 CB
	ror $C519.w,X		; 7E 19 C5
	ora [$15.b]		; 07 15
	sbc $2DB4C6.l,X		; FF C6 B4 2D
	ora ($3B.b,X)		; 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $CB6FFC.l,X		; FF FC 6F CB
	bcc  25.b		; 90 19
	cmp $07.b		; C5 07
	ora $FF.b,X		; 15 FF
	dec $B4.b		; C6 B4
	and $3B01.w		; 2D 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $CB6FFC.l,X		; FF FC 6F CB
	eor [$86.b],Y		; 57 86
	sei		; 78
	wai		; CB
	ora $07C5.w,Y		; 19 C5 07
	ora $FF.b,X		; 15 FF
	dec $B4.b		; C6 B4
	and $3B01.w		; 2D 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $868FFC.l,X		; FF FC 8F 86
	stz $CB60.w,X		; 9E 60 CB
	ora $07C5.w,Y		; 19 C5 07
	ora $FF.b,X		; 15 FF
	dec $B4.b		; C6 B4
	and $3B01.w		; 2D 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $8088FC.l,X		; FF FC 88 80
	wai		; CB
	adc $5D.b		; 65 5D
	ora $07C5.w,Y		; 19 C5 07
	ora $FF.b,X		; 15 FF
	dec $B4.b		; C6 B4
	and $3B01.w		; 2D 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $799FFC.l,X		; FF FC 9F 79
	wai		; CB
	stz $19.b		; 64 19
	cmp $07.b		; C5 07
	ora $FF.b,X		; 15 FF
	dec $B4.b		; C6 B4
	and $3B01.w		; 2D 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $9F68FC.l,X		; FF FC 68 9F
	adc ($86.b,X)		; 61 86
	wai		; CB
	ror $C519.w,X		; 7E 19 C5
	ora [$15.b]		; 07 15
	sbc $2DB4C6.l,X		; FF C6 B4 2D
	ora ($3B.b,X)		; 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $7753FC.l,X		; FF FC 53 77
	adc [$5D.b]		; 67 5D
	ora $07C5.w,Y		; 19 C5 07
	ora $FF.b,X		; 15 FF
	dec $B4.b		; C6 B4
	and $3B01.w		; 2D 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $4811FC.l,X		; FF FC 11 48
	adc ($CB.b),Y		; 71 CB
	ror $C519.w,X		; 7E 19 C5
	ora [$15.b]		; 07 15
	sbc $2DB4C6.l,X		; FF C6 B4 2D
	ora ($3B.b,X)		; 01 3B
	ora ($18.b,S),Y		; 13 18
	sbc $D304FC.l,X		; FF FC 04 D3
	sbc $77CB5E.l,X		; FF 5E CB 77
	wai		; CB
	adc ($CB.b),Y		; 71 CB
	ror $FF38.w,X		; 7E 38 FF
	ldy $B6.b		; A4 B6
	tsb $1910.w		; 0C 10 19
	cmp ($FF.b,S),Y		; D3 FF
	inc $2E0A.w,X		; FE 0A 2E
	ora $16.b,X		; 15 16
	sbc $3406A9.l,X		; FF A9 06 34
	bpl  21.b		; 10 15
	rol $FF13.w		; 2E 13 FF
	ora $46.b		; 05 46
	pld		; 2B
	cop $11.b		; 02 11
	and $34.b,X		; 35 34
	bpl  44.b		; 10 2C
	sbc $3401FD.l,X		; FF FD 01 34
	bpl  40.b		; 10 28
	ora $0C4504.l,X		; 1F 04 45 0C
	and [$FF.b],Y		; 37 FF
	ora ($10.b,X)		; 01 10
	tsb $C238.w		; 0C 38 C2
	ora #$29.b		; 09 29
	bit $FF09.w		; 2C 09 FF
	ora $02.b,X		; 15 02
	rol $1535.w,X		; 3E 35 15
	cop $FF.b		; 02 FF
	inc $3711.w,X		; FE 11 37
	pld		; 2B
	cop $11.b		; 02 11
	and [$2B.b],Y		; 37 2B
	cop $FF.b		; 02 FF
	ora ($10.b,X)		; 01 10
	tsb $9F1A.w		; 0C 1A 9F
	sei		; 78
	ror $5D5E.w,X		; 7E 5E 5D
	sbc $261915.l,X		; FF 15 19 26
	sbc $CB1CFC.l,X		; FF FC 1C CB
	rol $6FFF.w		; 2E FF 6F
	wai		; CB
	bcc  35.b		; 90 23
	ora $06.b,X		; 15 06
	ora $06.b,X		; 15 06
	sbc $232924.l,X		; FF 24 29 23
	ora $FF18.w,Y		; 19 18 FF
	inc $1520.w,X		; FE 20 15
	ora $0C.b		; 05 0C
	bpl  44.b		; 10 2C
	sbc $011FFD.l,X		; FF FD 1F 01
	clc		; 18
	sbc $0C0210.l,X		; FF 10 02 0C
	bpl  10.b		; 10 0A
	trb $FF.b		; 14 FF
	ora $06.b,X		; 15 06
	bit $10.b,X		; 34 10
	bit $FEFF.w		; 2C FF FE
	asl A		; 0A
	rol A		; 2A
	sec		; 38
	ora ($10.b,X)		; 01 10
	tsb $FF19.w		; 0C 19 FF
	rol $2812.w,X		; 3E 12 28
	and [$08.b],Y		; 37 08
	rol $FF.b		; 26 FF
	jsr ($2205.w,X)		; FC 05 22
	eor $14.b		; 45 14
	ora $FF.b,S		; 03 FF
	adc $8657CB.l		; 6F CB 57 86
	sei		; 78
	wai		; CB
	sbc $2E0AFE.l,X		; FF FE 0A 2E
	asl $02.b		; 06 02
	ora $64FF.w,Y		; 19 FF 64
	wai		; CB
	adc $72.b		; 65 72
	ror $AF64.w,X		; 7E 64 AF
	inc A		; 1A
	sbc $420346.l,X		; FF 46 03 42
	bit $10.b,X		; 34 10
	cmp ($FF.b,S),Y		; D3 FF
	sbc $030F.w,X		; FD 0F 03
	clc		; 18
	cmp ($20.b)		; D2 20
	rol $FF15.w		; 2E 15 FF
	tay		; A8
	lda #$49.b		; A9 49
	ora $133408.l		; 0F 08 34 13
	sbc $2B0A14.l,X		; FF 14 0A 2B
	asl $15.b		; 06 15
	sbc $0323FE.l,X		; FF FE 23 03
	tyx		; BB
	tsb $2E09.w		; 0C 09 2E
	ora [$36.b]		; 07 36
	ora $FF.b,S		; 03 FF
	tsb $0815.w		; 0C 15 08
	ora ($35.b),Y		; 11 35
	clc		; 18
	sbc $3424FC.l,X		; FF FC 24 34
	bpl  62.b		; 10 3E
	and $15.b,X		; 35 15
	cop $FF.b		; 02 FF
	sta $609E86.l		; 8F 86 9E 60
	wai		; CB
	sbc $1102FE.l,X		; FF FE 02 11
	eor [$2E.b]		; 47 2E
	ora ($06.b),Y		; 11 06
	and [$23.b]		; 27 23
	ora ($FF.b),Y		; 11 FF
	ora $140A.w,Y		; 19 0A 14
	.db $42, $09		; 42 09
	inc A		; 1A
	sbc $2C2901.l,X		; FF 01 29 2C
	clc		; 18
	sbc $1001FD.l,X		; FF FD 01 10
	tsb $1119.w		; 0C 19 11
	asl $27.b		; 06 27
	ora $0CFF.w,Y		; 19 FF 0C
	and [$03.b],Y		; 37 03
	jsl $FF1602.l		; 22 02 16 FF
	ora $34.b,X		; 15 34
	bpl   6.b		; 10 06
	ora $D3.b,X		; 15 D3
	sbc $3415FE.l,X		; FF FE 15 34
	trb $08.b		; 14 08
	tsb $1513.w		; 0C 13 15
	cop $FF.b		; 02 FF
	rol $03.b		; 26 03
	ora $27.b,X		; 15 27
	ora $2E.b,X		; 15 2E
	lsr $45.b		; 46 45
	and $FF.b,S		; 23 FF
	ora ($02.b,X)		; 01 02
	ora ($16.b,S),Y		; 13 16
	ora $29.b,X		; 15 29
	rol $FF.b		; 26 FF
	jsr ($3406.w,X)		; FC 06 34
	asl A		; 0A
	rol $06.b		; 26 06
	bit $10.b,X		; 34 10
	rol $FF.b		; 26 FF
	jsr $0A15.w		; 20 15 0A
	sbc $2A0AFE.l,X		; FF FE 0A 2A
	eor $4B.b		; 45 4B
	php		; 08
	and $FF.b,S		; 23 FF
	adc $1665.w,Y		; 79 65 16
	adc ($7E.b)		; 72 7E
	.db $62, $38, $FF		; 62 38 FF
	bpl  35.b		; 10 23
	ora ($29.b,S),Y		; 13 29
	bit $13.b,X		; 34 13
	and $2E.b,S		; 23 2E
	phd		; 0B
	sbc $3401FD.l,X		; FF FD 01 34
	bpl  40.b		; 10 28
	ora $0C4504.l,X		; 1F 04 45 0C
	and [$FF.b],Y		; 37 FF
	eor ($79.b),Y		; 51 79
	adc $70.b,S		; 63 70
	eor $FEFF.w,X		; 5D FF FE
	ora ($10.b,X)		; 01 10
	tsb $FF1A.w		; 0C 1A FF
	lsr $77CB.w,X		; 5E CB 77
	wai		; CB
	lda $FF19BF.l		; AF BF 19 FF
	sei		; 78
	wai		; CB
	sta ($CB.b,S),Y		; 93 CB
	ora $19.b,X		; 15 19
	rol $FF.b		; 26 FF
	jsr ($3424.w,X)		; FC 24 34
	bpl  62.b		; 10 3E
	and $15.b,X		; 35 15
	cop $19.b		; 02 19
	sbc $714811.l,X		; FF 11 48 71
	wai		; CB
	ror $FEFF.w,X		; 7E FF FE
	asl A		; 0A
	rol A		; 2A
	eor $5E.b		; 45 5E
	wai		; CB
	adc [$CB.b],Y		; 77 CB
	lda $20FFBF.l		; AF BF FF 20
	ora $27.b,X		; 15 27
	cop $23.b		; 02 23
	sbc $39120F.l,X		; FF 0F 12 39
	and [$03.b],Y		; 37 03
	clc		; 18
	sbc $CB5EFD.l,X		; FF FD 5E CB
	adc [$CB.b],Y		; 77 CB
	adc ($CB.b),Y		; 71 CB
	ror $2CFF.w,X		; 7E FF 2C
	bpl  12.b		; 10 0C
	asl $A4.b,X		; 16 A4
	ldx $FF.b,Y		; B6 FF
	trb $27.b		; 14 27
	rol A		; 2A
	and #$26.b		; 29 26
	ora $3E.b,S		; 03 3E
	and $FF.b,X		; 35 FF
	inc $060E.w,X		; FE 0E 06
	cop $1A.b		; 02 1A
	sbc $2A231F.l,X		; FF 1F 23 2A
	ora $02.b,X		; 15 02
	eor ($FF.b,X)		; 41 FF
	tsb $0634.w		; 0C 34 06
	plp		; 28
	tsb $FF2B.w		; 0C 2B FF
	jsr ($061E.w,X)		; FC 1E 06
	ora $BFAF.w,Y		; 19 AF BF
	bpl  17.b		; 10 11
	inc A		; 1A
	sbc $420CBB.l,X		; FF BB 0C 42
	and [$0C.b]		; 27 0C
	ora $02.b,X		; 15 02
	bit $FF18.w		; 2C 18 FF
	sta $64CB79.l,X		; 9F 79 CB 64
	sbc $2E15FE.l,X		; FF FE 15 2E
	trb $06.b		; 14 06
	sbc $133402.l,X		; FF 02 34 13
	ora ($3B.b,X)		; 01 3B
	ora ($26.b,S),Y		; 13 26
	sbc $1520FD.l,X		; FF FD 20 15
	phd		; 0B
	rol $0323.w		; 2E 23 03
	tyx		; BB
	tsb $14FF.w		; 0C FF 14
	bit $08.b,X		; 34 08
	rol $100C.w		; 2E 0C 10
	asl $3803.w,X		; 1E 03 38
	sbc $0F0B26.l,X		; FF 26 0B 0F
	ora $45.b,S		; 03 45
	ora $FF18.w		; 0D 18 FF
	inc $190A.w,X		; FE 0A 19
	rol $03.b		; 26 03
	ora $0A.b,X		; 15 0A
	trb $45.b		; 14 45
	inc A		; 1A
	sbc $2C021D.l,X		; FF 1D 02 2C
	inc A		; 1A
	sbc $132310.l,X		; FF 10 23 13
	ora $262E0E.l,X		; 1F 0E 2E 26
	sbc $0D0BFC.l,X		; FF FC 0B 0D
	sec		; 38
	sbc $619F68.l,X		; FF 68 9F 61
	stx $CB.b		; 86 CB
	ror $FF18.w,X		; 7E 18 FF
	inc $061E.w,X		; FE 1E 06
	ora $BFAF.w,Y		; 19 AF BF
	asl $1A.b,X		; 16 1A
	ora $02.b,X		; 15 02
	sbc $0E022A.l,X		; FF 2A 02 0E
	cop $0B.b		; 02 0B
	sec		; 38
	ldx $CA.b,Y		; B6 CA
	asl $FF.b,X		; 16 FF
	ora ($15.b)		; 12 15
	sec		; 38
	bit $10.b,X		; 34 10
	bit $FF18.w		; 2C 18 FF
	sbc $0314.w,X		; FD 14 03
	rti		; 40

	rol $0D45.w		; 2E 45 0D
	bit $15FF.w		; 2C FF 15
	rol $2446.w		; 2E 46 24
	bit $13.b,X		; 34 13
	and $FF.b,S		; 23 FF
	inc $1505.w,X		; FE 05 15
	rol $3409.w,X		; 3E 09 34
	asl $16.b		; 06 16
	ora $29.b,X		; 15 29
	sbc $1A4519.l,X		; FF 19 45 1A
	ora $02.b,X		; 15 02
	asl $0C.b		; 06 0C
	and [$FF.b]		; 27 FF
	jsr ($3424.w,X)		; FC 24 34
	jmp $FF28.w		; 4C 28 FF
	rol $0F.b		; 26 0F
	ora $46.b,S		; 03 46
	ora $28.b		; 05 28
	sbc $677753.l,X		; FF 53 77 67
	eor $A438.w,X		; 5D 38 A4
	ldx $18.b,Y		; B6 18
	sbc $02AFFE.l,X		; FF FE AF 02
	ora $2A.b,X		; 15 2A
	tsb $2913.w		; 0C 13 29
	bit $13.b,X		; 34 13
	sbc $3E2E06.l,X		; FF 06 2E 3E
	clc		; 18
	sbc $341AFD.l,X		; FF FD 1A 34
	inc A		; 1A
	bit $1A.b,X		; 34 1A
	sbc $152E0F.l,X		; FF 0F 2E 15
	asl $1E.b,X		; 16 1E
	jsl $450215.l		; 22 15 02 45
	sbc $262A08.l,X		; FF 08 2A 26
	sbc $2A13FE.l,X		; FF FE 13 2A
	ora ($35.b),Y		; 11 35
	ora $40.b,S		; 03 40
	sbc $002345.l,X		; FF 45 23 00
	trb $03.b		; 14 03
	rti		; 40

	rol $FF19.w		; 2E 19 FF
	ora #$34.b		; 09 34
	asl $42.b		; 06 42
	ora #$46.b		; 09 46
	ora $FF.b,X		; 15 FF
	jsr ($4B8B.w,X)		; FC 8B 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $1CC0.w		; 8D C0 1C
	lda #$0001.w		; A9 01 00
	sta $1C98.w		; 8D 98 1C
	ldx $1C88.w		; AE 88 1C
	lda $C1CA.w,X		; BD CA C1
	sta $1C9C.w		; 8D 9C 1C
	lda $C1CC.w,X		; BD CC C1
	sta $1CC4.w		; 8D C4 1C
	sta $1CE4.w		; 8D E4 1C
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $1C18.w		; 8D 18 1C
	jsl $838268.l		; 22 68 82 83
	stz $0C00.w		; 9C 00 0C
	ldx #$0C00.w		; A2 00 0C
	ldy #$0C00.w		; A0 00 0C
	lda #$0BFE.w		; A9 FE 0B
	phb		; 8B
	mvn $00,$00		; 54 00 00
	plb		; AB
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C84.w		; AD 84 1C
	beq  61.b		; F0 3D
	sta $0074.w		; 8D 74 00
	lda $1C9A.w		; AD 9A 1C
	ora #$0001.w		; 09 01 00
	sta $1C9A.w		; 8D 9A 1C
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	lda #$5800.w		; A9 00 58
	sta $1CCA.w		; 8D CA 1C
	sta $1CC6.w		; 8D C6 1C
	lda $1C86.w		; AD 86 1C
	beq  25.b		; F0 19
	sta $0074.w		; 8D 74 00
	jsl $808C43.l		; 22 43 8C 80
	lda $1C9A.w		; AD 9A 1C
	ora #$0002.w		; 09 02 00
	sta $1C9A.w		; 8D 9A 1C
	lda #$5B60.w		; A9 60 5B
	sta $1CEA.w		; 8D EA 1C
	sta $1CE6.w		; 8D E6 1C
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C92.w		; AD 92 1C
	bne  14.b		; D0 0E
	lda #$1CC0.w		; A9 C0 1C
	sta $1C8C.w		; 8D 8C 1C
	ldx $1CC0.w		; AE C0 1C
	jsr ($B921.w,X)		; FC 21 B9
	plb		; AB
	rtl		; 6B

	lda #$1CE0.w		; A9 E0 1C
	sta $1C8C.w		; 8D 8C 1C
	ldx $1CE0.w		; AE E0 1C
	jsr ($B921.w,X)		; FC 21 B9
	plb		; AB
	rtl		; 6B

	pld		; 2B
	lda $B9A9.w,Y		; B9 A9 B9
	bit $68B9.w		; 2C B9 68
	lda $B94A.w,Y		; B9 4A B9
	rts		; 60

	lda $5C.b		; A5 5C
	and #$4080.w		; 29 80 40
	bne   8.b		; D0 08
	ldx $1C8C.w		; AE 8C 1C
	lda $0002.w,X		; BD 02 00
	bne  10.b		; D0 0A
	ldx $1C8C.w		; AE 8C 1C
	lda #$0002.w		; A9 02 00
	sta $0000.w,X		; 9D 00 00
	rts		; 60

	dec A		; 3A
	sta $0002.w,X		; 9D 02 00
	rts		; 60

	lda $60.b		; A5 60
	and #$4080.w		; 29 80 40
	bne   8.b		; D0 08
	ldx $1C8C.w		; AE 8C 1C
	lda $0002.w,X		; BD 02 00
	bne  10.b		; D0 0A
	ldx $1C8C.w		; AE 8C 1C
	lda #$0002.w		; A9 02 00
	sta $0000.w,X		; 9D 00 00
	rts		; 60

	dec A		; 3A
	sta $0002.w,X		; 9D 02 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C8C.w		; AE 8C 1C
	lda $60.b		; A5 60
	and #$4080.w		; 29 80 40
	bne   5.b		; D0 05
	lda $0002.w,X		; BD 02 00
	bne  43.b		; D0 2B
	lda #$0002.w		; A9 02 00
	sta $1C90.w		; 8D 90 1C
	lda $0004.w,X		; BD 04 00
	asl A		; 0A
	clc		; 18
	adc $0004.w,X		; 7D 04 00
	asl A		; 0A
	sta $1C94.w		; 8D 94 1C
	lda $000A.w,X		; BD 0A 00
	sta $1C96.w		; 8D 96 1C
	sta $0006.w,X		; 9D 06 00
	stz $0008.w,X		; 9E 08 00
	lda #$0008.w		; A9 08 00
	sta $0000.w,X		; 9D 00 00
	lda #$0020.w		; A9 20 00
	sta $0002.w,X		; 9D 02 00
	rts		; 60

	dec A		; 3A
	sta $0002.w,X		; 9D 02 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C8C.w		; AE 8C 1C
	ldy $1C9C.w		; AC 9C 1C
	lda $0000.w,Y		; B9 00 00
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	bne   3.b		; D0 03
	jmp $BA6D.w		; 4C 6D BA
	cmp #$00FE.w		; C9 FE 00
	bne   3.b		; D0 03
	jmp $BA8E.w		; 4C 8E BA
	cmp #$00FD.w		; C9 FD 00
	bne   3.b		; D0 03
	jmp $BAA2.w		; 4C A2 BA
	cmp #$00FC.w		; C9 FC 00
	bne   3.b		; D0 03
	jmp $BACD.w		; 4C CD BA
	sta $00.b		; 85 00
	and #$00F8.w		; 29 F8 00
	lsr A		; 4A
	lsr A		; 4A
	tax		; AA
	lda $BA2D.w,X		; BD 2D BA
	sta $02.b		; 85 02
	lda $00.b		; A5 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $02.b		; 65 02
	clc		; 18
	adc #$C000.w		; 69 00 C0
	sta $1C80.w		; 8D 80 1C
	lda #$007F.w		; A9 7F 00
	sta $1C82.w		; 8D 82 1C
	iny		; C8
	tya		; 98
	ldx $1C8C.w		; AE 8C 1C
	sta $1C9C.w		; 8D 9C 1C
	lda $0008.w,X		; BD 08 00
	clc		; 18
	adc $0006.w,X		; 7D 06 00
	sta $1C8E.w		; 8D 8E 1C
	lda $0008.w,X		; BD 08 00
	clc		; 18
	adc #$0020.w		; 69 20 00
	sta $0008.w,X		; 9D 08 00
	lda #$0000.w		; A9 00 00
	sta $1C90.w		; 8D 90 1C
	lda #$0008.w		; A9 08 00
	sta $0002.w,X		; 9D 02 00
	lda #$0004.w		; A9 04 00
	sta $0000.w,X		; 9D 00 00
	rts		; 60

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $0A.b		; 00 0A
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	brk $12.b		; 00 12
	brk $14.b		; 00 14
	brk $16.b		; 00 16
	brk $18.b		; 00 18
	brk $1A.b		; 00 1A
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $20.b		; 00 20
	brk $22.b		; 00 22
	brk $24.b		; 00 24
	brk $26.b		; 00 26
	brk $28.b		; 00 28
	brk $2A.b		; 00 2A
	brk $2C.b		; 00 2C
	brk $2E.b		; 00 2E
	brk $30.b		; 00 30
	brk $32.b		; 00 32
	brk $34.b		; 00 34
	brk $36.b		; 00 36
	brk $38.b		; 00 38
	brk $3A.b		; 00 3A
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0006.w,X		; BD 06 00
	clc		; 18
	adc $0004.w,X		; 7D 04 00
	sta $0006.w,X		; 9D 06 00
	stz $0008.w,X		; 9E 08 00
	iny		; C8
	tya		; 98
	sta $1C9C.w		; 8D 9C 1C
	lda #$0008.w		; A9 08 00
	sta $0002.w,X		; 9D 02 00
	lda #$0008.w		; A9 08 00
	sta $0000.w,X		; 9D 00 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0060.w		; A9 60 00
	sta $0002.w,X		; 9D 02 00
	lda #$0006.w		; A9 06 00
	sta $0000.w,X		; 9D 00 00
	iny		; C8
	tya		; 98
	sta $1C9C.w		; 8D 9C 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C92.w		; AD 92 1C
	eor #$FFFE.w		; 49 FE FF
	sta $1C92.w		; 8D 92 1C
	iny		; C8
	tya		; 98
	sta $1C9C.w		; 8D 9C 1C
	ldx #$1CC0.w		; A2 C0 1C
	cpx $1C8C.w		; EC 8C 1C
	bne   3.b		; D0 03
	ldx #$1CE0.w		; A2 E0 1C
	lda #$0008.w		; A9 08 00
	sta $0000.w,X		; 9D 00 00
	lda #$0040.w		; A9 40 00
	sta $0002.w,X		; 9D 02 00
	ldx $1C8C.w		; AE 8C 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C8C.w		; AE 8C 1C
	stz $0000.w,X		; 9E 00 00
	stz $0002.w,X		; 9E 02 00
	stz $1C9C.w		; 9C 9C 1C
	stz $0004.w,X		; 9E 04 00
	stz $0006.w,X		; 9E 06 00
	stz $0008.w,X		; 9E 08 00
	stz $000A.w,X		; 9E 0A 00
	stz $1C98.w		; 9C 98 1C
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1E42.w		; AE 42 1E
	jsr ($BAF8.w,X)		; FC F8 BA
	plb		; AB
	rtl		; 6B

	asl A		; 0A
	tyx		; BB
	ora [$BB.b],Y		; 17 BB
	and $BB.b,X		; 35 BB
	jmp $BB81BB.l		; 5C BB 81 BB
	ldx $BB.b		; A6 BB
	cmp $F4BB.w		; CD BB F4
	tyx		; BB
	ora $20BC.w,X		; 1D BC 20
	lda $F720BD.l		; AF BD 20 F7
	lda $42EE.w,X		; BD EE 42
	asl $42EE.w,X		; 1E EE 42
	asl $E260.w,X		; 1E 60 E2
	jsr $10C2.w		; 20 C2 10
	lda #$8507.w		; A9 07 85
	phb		; 8B
	lda #$8518.w		; A9 18 85
	txa		; 8A
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1E50.w		; A2 50 1E
	stx $1E46.w		; 8E 46 1E
	jsr $BC35.w		; 20 35 BC
	ldy #$1E70.w		; A0 70 1E
	jsr $BC56.w		; 20 56 BC
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$07.b		; A9 07
	sta $8B.b		; 85 8B
	lda #$18.b		; A9 18
	sta $8A.b		; 85 8A
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1E50.w		; A2 50 1E
	ldy #$1E70.w		; A0 70 1E
	jsr $BCC9.w		; 20 C9 BC
	ldx #$1E58.w		; A2 58 1E
	stx $1E46.w		; 8E 46 1E
	jsr $BC35.w		; 20 35 BC
	ldy #$1E74.w		; A0 74 1E
	jsr $BC56.w		; 20 56 BC
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$07.b		; A9 07
	sta $8B.b		; 85 8B
	lda #$18.b		; A9 18
	sta $8A.b		; 85 8A
	ldx #$1E58.w		; A2 58 1E
	ldy #$1E74.w		; A0 74 1E
	jsr $BCC9.w		; 20 C9 BC
	ldx #$1E60.w		; A2 60 1E
	stx $1E46.w		; 8E 46 1E
	jsr $BC35.w		; 20 35 BC
	ldy #$1E78.w		; A0 78 1E
	jsr $BC56.w		; 20 56 BC
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$07.b		; A9 07
	sta $8B.b		; 85 8B
	lda #$18.b		; A9 18
	sta $8A.b		; 85 8A
	ldx #$1E60.w		; A2 60 1E
	ldy #$1E78.w		; A0 78 1E
	jsr $BCC9.w		; 20 C9 BC
	ldx #$1E68.w		; A2 68 1E
	stx $1E46.w		; 8E 46 1E
	jsr $BC35.w		; 20 35 BC
	ldy #$1E7C.w		; A0 7C 1E
	jsr $BC56.w		; 20 56 BC
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $8B.b		; 85 8B
	lda #$18.b		; A9 18
	sta $8A.b		; 85 8A
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx #$1E68.w		; A2 68 1E
	ldy #$1E7C.w		; A0 7C 1E
	jsr $BCC9.w		; 20 C9 BC
	ldx #$1E70.w		; A2 70 1E
	stx $1E46.w		; 8E 46 1E
	jsr $BC35.w		; 20 35 BC
	ldy #$1E80.w		; A0 80 1E
	jsr $BC56.w		; 20 56 BC
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $8B.b		; 85 8B
	lda #$18.b		; A9 18
	sta $8A.b		; 85 8A
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx #$1E70.w		; A2 70 1E
	ldy #$1E80.w		; A0 80 1E
	jsr $BCC9.w		; 20 C9 BC
	ldx #$1E78.w		; A2 78 1E
	stx $1E46.w		; 8E 46 1E
	jsr $BC35.w		; 20 35 BC
	ldy #$1E84.w		; A0 84 1E
	jsr $BC56.w		; 20 56 BC
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $8B.b		; 85 8B
	lda #$18.b		; A9 18
	sta $8A.b		; 85 8A
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx #$1E78.w		; A2 78 1E
	ldy #$1E84.w		; A0 84 1E
	jsr $BCC9.w		; 20 C9 BC
	ldx #$1E80.w		; A2 80 1E
	stx $1E46.w		; 8E 46 1E
	jsr $BC35.w		; 20 35 BC
	ldy #$1E88.w		; A0 88 1E
	jsr $BC56.w		; 20 56 BC
.ACCU 8
	sep #$20		; E2 20
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx #$1E80.w		; A2 80 1E
	ldy #$1E88.w		; A0 88 1E
	jsr $BCC9.w		; 20 C9 BC
.ACCU 8
	sep #$20		; E2 20
	lda #$0B.b		; A9 0B
	sta $8B.b		; 85 8B
	lda #$18.b		; A9 18
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0002.w,X		; BD 02 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$1EC0.w		; 69 C0 1E
	sta $1E48.w		; 8D 48 1E
	lda $0006.w,X		; BD 06 00
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$1EC0.w		; 69 C0 1E
	sta $1E4A.w		; 8D 4A 1E
	rts		; 60

	jsr $BFA2.w		; 20 A2 BF
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $01.b,X		; B5 01
	cmp #$01.b		; C9 01
	beq   2.b		; F0 02
	bra  26.b		; 80 1A
	lda $05.b,X		; B5 05
	cmp #$00.b		; C9 00
	beq  20.b		; F0 14
	jsr $BD62.w		; 20 62 BD
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$0C.b		; A9 0C
	sta $8B.b		; 85 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $1E42.w		; EE 42 1E
	inc $1E42.w		; EE 42 1E
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $0001.w,X		; BD 01 00
	bne   8.b		; D0 08
	lda $0003.w,X		; BD 03 00
	sta $1D01.w		; 8D 01 1D
	bra  10.b		; 80 0A
	lda #$FF.b		; A9 FF
	sta $1D01.w		; 8D 01 1D
	lda #$09.b		; A9 09
	sta $1D06.w		; 8D 06 1D
	lda $0005.w,X		; BD 05 00
	bne   8.b		; D0 08
	lda $0007.w,X		; BD 07 00
	sta $1D04.w		; 8D 04 1D
	bra  10.b		; 80 0A
	lda #$FF.b		; A9 FF
	sta $1D04.w		; 8D 04 1D
	lda #$09.b		; A9 09
	sta $1D07.w		; 8D 07 1D
	lda $1E42.w		; AD 42 1E
	cmp #$0A.b		; C9 0A
	bmi   4.b		; 30 04
	jsl $809836.l		; 22 36 98 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $1E42.w		; EE 42 1E
	inc $1E42.w		; EE 42 1E
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $0001.w,X		; BD 01 00
	clc		; 18
	adc $0005.w,X		; 7D 05 00
	cmp #$02.b		; C9 02
	bne   3.b		; D0 03
	jmp $BD61.w		; 4C 61 BD
	lda $1E14.w		; AD 14 1E
	cmp #$01.b		; C9 01
	bne  65.b		; D0 41
	lda $0000.w,X		; BD 00 00
	sta $0000.w,Y		; 99 00 00
	lda $0001.w,X		; BD 01 00
	sta $0001.w,Y		; 99 01 00
	lda $0002.w,X		; BD 02 00
	sta $0002.w,Y		; 99 02 00
	lda $0003.w,X		; BD 03 00
	sta $0003.w,Y		; 99 03 00
	stx $00.b		; 86 00
	lda $0001.w,X		; BD 01 00
	cmp #$01.b		; C9 01
	beq  10.b		; F0 0A
	ldx $1E48.w		; AE 48 1E
	lda #$FF.b		; A9 FF
	lda #$7F.b		; A9 7F
	sta $0003.w,X		; 9D 03 00
	stx $00.b		; 86 00
	lda $0005.w,X		; BD 05 00
	cmp #$01.b		; C9 01
	beq   8.b		; F0 08
	ldx $1E4A.w		; AE 4A 1E
	lda #$01.b		; A9 01
	sta $0003.w,X		; 9D 03 00
	ldx $00.b		; A6 00
	jmp $BD61.w		; 4C 61 BD
	lda $0004.w,X		; BD 04 00
	sta $0000.w,Y		; 99 00 00
	lda $0005.w,X		; BD 05 00
	sta $0001.w,Y		; 99 01 00
	lda $0006.w,X		; BD 06 00
	sta $0002.w,Y		; 99 02 00
	lda $0007.w,X		; BD 07 00
	sta $0003.w,Y		; 99 03 00
	stx $00.b		; 86 00
	lda $0005.w,X		; BD 05 00
	cmp #$01.b		; C9 01
	beq  10.b		; F0 0A
	ldx $1E4A.w		; AE 4A 1E
	lda #$FF.b		; A9 FF
	lda #$7F.b		; A9 7F
	sta $0003.w,X		; 9D 03 00
	ldx $00.b		; A6 00
	lda $0001.w,X		; BD 01 00
	cmp #$01.b		; C9 01
	beq   8.b		; F0 08
	ldx $1E48.w		; AE 48 1E
	lda #$01.b		; A9 01
	sta $0003.w,X		; 9D 03 00
	ldx $00.b		; A6 00
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $0003.w,X		; BD 03 00
	cmp $0007.w,X		; DD 07 00
	bmi  31.b		; 30 1F
	lda $0000.w,X		; BD 00 00
	sta $0000.w,Y		; 99 00 00
	lda $0001.w,X		; BD 01 00
	sta $0001.w,Y		; 99 01 00
	lda $0002.w,X		; BD 02 00
	sta $0002.w,Y		; 99 02 00
	lda $0003.w,X		; BD 03 00
	sta $0003.w,Y		; 99 03 00
	lda #$01.b		; A9 01
	sta $1E14.w		; 8D 14 1E
	bra  29.b		; 80 1D
	lda $0004.w,X		; BD 04 00
	sta $0000.w,Y		; 99 00 00
	lda $0005.w,X		; BD 05 00
	sta $0001.w,Y		; 99 01 00
	lda $0006.w,X		; BD 06 00
	sta $0002.w,Y		; 99 02 00
	lda $0007.w,X		; BD 07 00
	sta $0003.w,Y		; 99 03 00
	lda #$02.b		; A9 02
	sta $1E14.w		; 8D 14 1E
	lda #$0C.b		; A9 0C
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$01.b		; A9 01
	sta $00.b		; 85 00
	sta $01.b		; 85 01
	sta $02.b		; 85 02
	sta $03.b		; 85 03
	sta $04.b		; 85 04
	sta $05.b		; 85 05
	sta $06.b		; 85 06
	sta $07.b		; 85 07
	ldy #$10.b		; A0 10
	lda #$08.b		; A9 08
	sta $22.b		; 85 22
	stz $24.b		; 64 24
	stx $26.b		; 86 26
	sty $28.b		; 84 28
	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldy $28.b		; A4 28
	ldx $26.b		; A6 26
	lda $009A.w		; AD 9A 00
	and #$07.b		; 29 07
	sta $1A.b		; 85 1A
	tax		; AA
	lda $0000.w,X		; BD 00 00
	beq -27.b		; F0 E5
	stz $0000.w,X		; 9E 00 00
	lda $1A.b		; A5 1A
	clc		; 18
	adc #$11.b		; 69 11
	sta $0000.w,Y		; 99 00 00
	iny		; C8
	dec $22.b		; C6 22
	bne -43.b		; D0 D5
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $10.b		; A5 10
	sta $1EC3.w		; 8D C3 1E
	lda $11.b		; A5 11
	sta $1EC7.w		; 8D C7 1E
	lda $12.b		; A5 12
	sta $1ECB.w		; 8D CB 1E
	lda $13.b		; A5 13
	sta $1ECF.w		; 8D CF 1E
	lda $14.b		; A5 14
	sta $1ED3.w		; 8D D3 1E
	lda $15.b		; A5 15
	sta $1ED7.w		; 8D D7 1E
	lda $16.b		; A5 16
	sta $1EDB.w		; 8D DB 1E
	lda $17.b		; A5 17
	sta $1EDF.w		; 8D DF 1E
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $1EC0.w		; AD C0 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E50.w		; 8D 50 1E
	lda $1EC4.w		; AD C4 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E54.w		; 8D 54 1E
	lda $1EC8.w		; AD C8 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E58.w		; 8D 58 1E
	lda $1ECC.w		; AD CC 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E5C.w		; 8D 5C 1E
	lda $1ED0.w		; AD D0 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E60.w		; 8D 60 1E
	lda $1ED4.w		; AD D4 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E64.w		; 8D 64 1E
	lda $1ED8.w		; AD D8 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E68.w		; 8D 68 1E
	lda $1EDC.w		; AD DC 1E
	and #$0F.b		; 29 0F
	dec A		; 3A
	jsl $8098AC.l		; 22 AC 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1E6C.w		; 8D 6C 1E
	lda $1EC1.w		; AD C1 1E
	dec A		; 3A
	sta $1E51.w		; 8D 51 1E
	lda $1EC5.w		; AD C5 1E
	dec A		; 3A
	sta $1E55.w		; 8D 55 1E
	lda $1EC9.w		; AD C9 1E
	dec A		; 3A
	sta $1E59.w		; 8D 59 1E
	lda $1ECD.w		; AD CD 1E
	dec A		; 3A
	sta $1E5D.w		; 8D 5D 1E
	lda $1ED1.w		; AD D1 1E
	dec A		; 3A
	sta $1E61.w		; 8D 61 1E
	lda $1ED5.w		; AD D5 1E
	dec A		; 3A
	sta $1E65.w		; 8D 65 1E
	lda $1ED9.w		; AD D9 1E
	dec A		; 3A
	sta $1E69.w		; 8D 69 1E
	lda $1EDD.w		; AD DD 1E
	dec A		; 3A
	sta $1E6D.w		; 8D 6D 1E
	lda #$00.b		; A9 00
	sta $00.b		; 85 00
	lda $1EC0.w		; AD C0 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E52.w		; 8D 52 1E
	inc $00.b		; E6 00
	lda $1EC4.w		; AD C4 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E56.w		; 8D 56 1E
	inc $00.b		; E6 00
	lda $1EC8.w		; AD C8 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E5A.w		; 8D 5A 1E
	inc $00.b		; E6 00
	lda $1ECC.w		; AD CC 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E5E.w		; 8D 5E 1E
	inc $00.b		; E6 00
	lda $1ED0.w		; AD D0 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E62.w		; 8D 62 1E
	inc $00.b		; E6 00
	lda $1ED4.w		; AD D4 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E66.w		; 8D 66 1E
	inc $00.b		; E6 00
	lda $1ED8.w		; AD D8 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E6A.w		; 8D 6A 1E
	inc $00.b		; E6 00
	lda $1EDC.w		; AD DC 1E
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $1E6E.w		; 8D 6E 1E
	lda $1E51.w		; AD 51 1E
	beq   6.b		; F0 06
	lda $1EC3.w		; AD C3 1E
	sta $1E53.w		; 8D 53 1E
	lda $1E55.w		; AD 55 1E
	beq   6.b		; F0 06
	lda $1EC7.w		; AD C7 1E
	sta $1E57.w		; 8D 57 1E
	lda $1E59.w		; AD 59 1E
	beq   6.b		; F0 06
	lda $1ECB.w		; AD CB 1E
	sta $1E5B.w		; 8D 5B 1E
	lda $1E5D.w		; AD 5D 1E
	beq   6.b		; F0 06
	lda $1ECF.w		; AD CF 1E
	sta $1E5F.w		; 8D 5F 1E
	lda $1E61.w		; AD 61 1E
	beq   6.b		; F0 06
	lda $1ED3.w		; AD D3 1E
	sta $1E63.w		; 8D 63 1E
	lda $1E65.w		; AD 65 1E
	beq   6.b		; F0 06
	lda $1ED7.w		; AD D7 1E
	sta $1E67.w		; 8D 67 1E
	lda $1E69.w		; AD 69 1E
	beq   6.b		; F0 06
	lda $1EDB.w		; AD DB 1E
	sta $1E6B.w		; 8D 6B 1E
	lda $1E6D.w		; AD 6D 1E
	beq   6.b		; F0 06
	lda $1EDF.w		; AD DF 1E
	sta $1E6F.w		; 8D 6F 1E
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $0000.w,X		; BD 00 00
	sta $1D00.w		; 8D 00 1D
	lda $0002.w,X		; BD 02 00
	and #$F0.b		; 29 F0
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $1D06.w		; 8D 06 1D
	lda $01.b,X		; B5 01
	cmp #$01.b		; C9 01
	bne   5.b		; D0 05
	lda #$09.b		; A9 09
	sta $1D06.w		; 8D 06 1D
	lda $0004.w,X		; BD 04 00
	sta $1D03.w		; 8D 03 1D
	lda $0006.w,X		; BD 06 00
	and #$F0.b		; 29 F0
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $1D07.w		; 8D 07 1D
	lda $05.b,X		; B5 05
	cmp #$01.b		; C9 01
	bne   5.b		; D0 05
	lda #$09.b		; A9 09
	sta $1D07.w		; 8D 07 1D
	stx $00.b		; 86 00
	sty $02.b		; 84 02
.INDEX 8
	sep #$10		; E2 10
	lda $1D00.w		; AD 00 1D
	tax		; AA
	lda $C009.w,X		; BD 09 C0
	sta $8E.b		; 85 8E
.INDEX 16
	rep #$10		; C2 10
	ldx $00.b		; A6 00
	ldy $02.b		; A4 02
	stz $1D02.w		; 9C 02 1D
	stz $1D05.w		; 9C 05 1D
	lda $1D00.w		; AD 00 1D
	cmp $1D03.w		; CD 03 1D
	bne   5.b		; D0 05
	lda #$01.b		; A9 01
	sta $1D05.w		; 8D 05 1D
	rts		; 60

	brk $02.b		; 00 02
	php		; 08
	tsb $0E0A.w		; 0C 0A 0E
	bpl   6.b		; 10 06
	tsb $00.b		; 04 00
	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0003.w		; A9 03 00
	sta $1C4A.w		; 8D 4A 1C
	lda #$C596.w		; A9 96 C5
	sta $1C44.w		; 8D 44 1C
	lda #$C756.w		; A9 56 C7
	sta $1C46.w		; 8D 46 1C
	lda #$C916.w		; A9 16 C9
	sta $1C48.w		; 8D 48 1C
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $C03C.w		; 20 3C C0
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C4A.w		; CE 4A 1C
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	ldx $1C44.w		; AE 44 1C
	ldy #$0560.w		; A0 60 05
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1C44.w		; AD 44 1C
	sec		; 38
	sbc #$0020.w		; E9 20 00
	cmp #$C3F6.w		; C9 F6 C3
	bne   3.b		; D0 03
	lda #$C596.w		; A9 96 C5
	sta $1C44.w		; 8D 44 1C
	ldx $1C46.w		; AE 46 1C
	ldy #$0580.w		; A0 80 05
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1C46.w		; AD 46 1C
	sec		; 38
	sbc #$0020.w		; E9 20 00
	cmp #$C5B6.w		; C9 B6 C5
	bne   3.b		; D0 03
	lda #$C756.w		; A9 56 C7
	sta $1C46.w		; 8D 46 1C
	ldx $1C48.w		; AE 48 1C
	ldy #$05A0.w		; A0 A0 05
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1C48.w		; AD 48 1C
	sec		; 38
	sbc #$0020.w		; E9 20 00
	cmp #$C776.w		; C9 76 C7
	bne   3.b		; D0 03
	lda #$C916.w		; A9 16 C9
	sta $1C48.w		; 8D 48 1C
	lda #$0003.w		; A9 03 00
	sta $1C4A.w		; 8D 4A 1C
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $1C4A.w		; 8D 4A 1C
	lda #$0002.w		; A9 02 00
	sta $1C4C.w		; 8D 4C 1C
	lda #$C936.w		; A9 36 C9
	sta $1C44.w		; 8D 44 1C
	lda #$CCB6.w		; A9 B6 CC
	sta $1C46.w		; 8D 46 1C
	lda #$CE36.w		; A9 36 CE
	sta $1C48.w		; 8D 48 1C
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $C0DB.w		; 20 DB C0
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C4A.w		; CE 4A 1C
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	ldx $1C44.w		; AE 44 1C
	ldy #$06C0.w		; A0 C0 06
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1C44.w		; AD 44 1C
	clc		; 18
	adc #$0020.w		; 69 20 00
	cmp #$CAD6.w		; C9 D6 CA
	bne   3.b		; D0 03
	lda #$C936.w		; A9 36 C9
	sta $1C44.w		; 8D 44 1C
	lda #$0002.w		; A9 02 00
	sta $1C4A.w		; 8D 4A 1C
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $C115.w		; 20 15 C1
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C4C.w		; AD 4C 1C
	beq   1.b		; F0 01
	rts		; 60

	lda $1C56.w		; AD 56 1C
	bne  33.b		; D0 21
	nop		; EA
	ldx $1C46.w		; AE 46 1C
	ldy #$0600.w		; A0 00 06
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1C46.w		; AD 46 1C
	clc		; 18
	adc #$0020.w		; 69 20 00
	cmp #$CE36.w		; C9 36 CE
	bne   3.b		; D0 03
	lda #$CCB6.w		; A9 B6 CC
	sta $1C46.w		; 8D 46 1C
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $C14E.w		; 20 4E C1
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C4C.w		; AD 4C 1C
	beq   1.b		; F0 01
	rts		; 60

	lda $1C58.w		; AD 58 1C
	bne  33.b		; D0 21
	nop		; EA
	ldx $1C48.w		; AE 48 1C
	ldy #$0620.w		; A0 20 06
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1C48.w		; AD 48 1C
	clc		; 18
	adc #$0020.w		; 69 20 00
	cmp #$CFB6.w		; C9 B6 CF
	bne   3.b		; D0 03
	lda #$CE36.w		; A9 36 CE
	sta $1C48.w		; 8D 48 1C
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $1C4A.w		; 8D 4A 1C
	lda #$CAF6.w		; A9 F6 CA
	sta $1C44.w		; 8D 44 1C
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $C19A.w		; 20 9A C1
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C4A.w		; CE 4A 1C
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	ldx $1C44.w		; AE 44 1C
	ldy #$0520.w		; A0 20 05
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1C44.w		; AD 44 1C
	clc		; 18
	adc #$0020.w		; 69 20 00
	cmp #$CC96.w		; C9 96 CC
	bne   3.b		; D0 03
	lda #$CAF6.w		; A9 F6 CA
	sta $1C44.w		; 8D 44 1C
	lda #$0002.w		; A9 02 00
	sta $1C4A.w		; 8D 4A 1C
	rts		; 60

	jmp.w [$E0B4]		; DC B4 E0
	ora ($FE.b,X)		; 01 FE
	ldy $E0.b,X		; B4 E0
	ora ($ED.b,X)		; 01 ED
	ldy $E0.b,X		; B4 E0
	ora ($12.b,X)		; 01 12
	lda $E0.b,X		; B5 E0
	ora ($25.b,X)		; 01 25
	lda $E0.b,X		; B5 E0
	ora ($70.b,X)		; 01 70
	lda $E0.b,X		; B5 E0
	ora ($38.b,X)		; 01 38
	lda $E0.b,X		; B5 E0
	ora ($4A.b,X)		; 01 4A
	lda $E0.b,X		; B5 E0
	ora ($5E.b,X)		; 01 5E
	lda $E0.b,X		; B5 E0
	ora ($8B.b,X)		; 01 8B
	lda ($E0.b,S),Y		; B3 E0
	ora ($06.b,X)		; 01 06
	ldy $E0.b,X		; B4 E0
	ora ($43.b,X)		; 01 43
	ldy $E0.b,X		; B4 E0
	ora ($20.b,X)		; 01 20
	ldy $E0.b,X		; B4 E0
	ora ($6C.b,X)		; 01 6C
	ldy $E0.b,X		; B4 E0
	ora ($8F.b,X)		; 01 8F
	ldy $E0.b,X		; B4 E0
	ora ($B9.b,X)		; 01 B9
	ldy $E0.b,X		; B4 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($3D.b,X)		; 01 3D
	lda ($E0.b)		; B2 E0
	ora ($B0.b,X)		; 01 B0
	lda ($E0.b)		; B2 E0
	ora ($75.b,X)		; 01 75
	lda ($E0.b)		; B2 E0
	ora ($E5.b,X)		; 01 E5
	lda ($E0.b)		; B2 E0
	ora ($19.b,X)		; 01 19
	lda ($E0.b,S),Y		; B3 E0
	ora ($56.b,X)		; 01 56
	lda ($E0.b,S),Y		; B3 E0
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($3D.b,X)		; 01 3D
	lda ($20.b)		; B2 20
	ora ($83.b,X)		; 01 83
	lda $20.b,X		; B5 20
	ora ($21.b,X)		; 01 21
	ldx $20.b,Y		; B6 20
	ora ($E3.b,X)		; 01 E3
	lda $20.b,X		; B5 20
	ora ($6F.b,X)		; 01 6F
	ldx $20.b,Y		; B6 20
	ora ($C9.b,X)		; 01 C9
	ldx $20.b,Y		; B6 20
	ora ($17.b,X)		; 01 17
	clv		; B8
	jsr $C801.w		; 20 01 C8
	lda [$20.b],Y		; B7 20
	ora ($6D.b,X)		; 01 6D
	lda [$20.b],Y		; B7 20
	ora ($18.b,X)		; 01 18
	lda [$20.b],Y		; B7 20
	ora ($00.b,X)		; 01 00
	brk $84.b		; 00 84
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
	.db $42, $08		; 42 08
	phx		; DA
	pld		; 2B
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	and $6ADF5F.l,X		; 3F 5F DF 6A
	sta $72BB7A.l,X		; 9F 7A BB 72
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	jmp.w [$FF37]		; DC 37 FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	cmp $7A9F6A.l,X		; DF 6A 9F 7A
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	sbc $43FF43.l,X		; FF 43 FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	sta $72BB7A.l,X		; 9F 7A BB 72
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$0037]		; DC 37 00
	brk $42.b		; 00 42
	php		; 08
	sbc $43FF43.l,X		; FF 43 FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $00.b,S		; 43 00
	brk $42.b		; 00 42
	php		; 08
	lda $43FF47.l,X		; BF 47 FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $00.b,S		; 43 00
	brk $42.b		; 00 42
	php		; 08
	sta $43FF4F.l,X		; 9F 4F FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$00.b]		; 47 00
	brk $42.b		; 00 42
	php		; 08
	and $43FF5F.l,X		; 3F 5F FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $420000.l		; 4F 00 00 42
	php		; 08
	cmp $43FF6A.l,X		; DF 6A FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $005F3F.l		; 4F 3F 5F 00
	brk $42.b		; 00 42
	php		; 08
	sta $43FF7A.l,X		; 9F 7A FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $DF5F3F.l		; 4F 3F 5F DF
	ror A		; 6A
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	tyx		; BB
	adc ($FF.b)		; 72 FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $DF5F3F.l		; 4F 3F 5F DF
	ror A		; 6A
	sta $00007A.l,X		; 9F 7A 00 00
	.db $42, $08		; 42 08
	sbc [$6A.b],Y		; F7 6A
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sbc $43FF43.l,X		; FF 43 FF 43
	lda $4F9F47.l,X		; BF 47 9F 4F
	and $6ADF5F.l,X		; 3F 5F DF 6A
	sta $72BB7A.l,X		; 9F 7A BB 72
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	ora ($47.b,S),Y		; 13 47
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sbc $47BF43.l,X		; FF 43 BF 47
	sta $5F3F4F.l,X		; 9F 4F 3F 5F
	cmp $7A9F6A.l,X		; DF 6A 9F 7A
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	bvc  35.b		; 50 23
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	lda $4F9F47.l,X		; BF 47 9F 4F
	and $6ADF5F.l,X		; 3F 5F DF 6A
	sta $72BB7A.l,X		; 9F 7A BB 72
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
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
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $72BB5B.l,X		; 9F 5B BB 72
	sbc [$6A.b],Y		; F7 6A
	ora $23507C.l,X		; 1F 7C 50 23
	ora $00007C.l,X		; 1F 7C 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $6AF75B.l,X		; 9F 5B F7 6A
	ora ($47.b,S),Y		; 13 47
	ora $27957C.l,X		; 1F 7C 95 27
	ora $00007C.l,X		; 1F 7C 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $47135B.l,X		; 9F 5B 13 47
	bvc  35.b		; 50 23
	ora $2BDA7C.l,X		; 1F 7C DA 2B
	ora $00007C.l,X		; 1F 7C 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $23505B.l,X		; 9F 5B 50 23
	sta $27.b,X		; 95 27
	ora $37DC7C.l,X		; 1F 7C DC 37
	ora $00007C.l,X		; 1F 7C 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $27955B.l,X		; 9F 5B 95 27
	phx		; DA
	pld		; 2B
	ora $43FF7C.l,X		; 1F 7C FF 43
	ora $00007C.l,X		; 1F 7C 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $2BDA5B.l,X		; 9F 5B DA 2B
	jmp.w [$1F37]		; DC 37 1F
	jmp ($43FF.w,X)		; 7C FF 43
	ora $00007C.l,X		; 1F 7C 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $37DC5B.l,X		; 9F 5B DC 37
	sbc $7C1F43.l,X		; FF 43 1F 7C
	lda $7C1F47.l,X		; BF 47 1F 7C
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $43FF5B.l,X		; 9F 5B FF 43
	sbc $7C1F43.l,X		; FF 43 1F 7C
	sta $7C1F4F.l,X		; 9F 4F 1F 7C
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $43FF5B.l,X		; 9F 5B FF 43
	lda $7C1F47.l,X		; BF 47 1F 7C
	and $7C1F5F.l,X		; 3F 5F 1F 7C
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $47BF5B.l,X		; 9F 5B BF 47
	sta $7C1F4F.l,X		; 9F 4F 1F 7C
	cmp $7C1F6A.l,X		; DF 6A 1F 7C
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $4F9F5B.l,X		; 9F 5B 9F 4F
	and $7C1F5F.l,X		; 3F 5F 1F 7C
	sta $7C1F7A.l,X		; 9F 7A 1F 7C
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $5F3F5B.l,X		; 9F 5B 3F 5F
	cmp $7C1F6A.l,X		; DF 6A 1F 7C
	tyx		; BB
	adc ($1F.b)		; 72 1F
	jmp ($0000.w,X)		; 7C 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $6ADF5B.l,X		; 9F 5B DF 6A
	sta $7C1F7A.l,X		; 9F 7A 1F 7C
	sbc [$6A.b],Y		; F7 6A
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
	.db $42, $08		; 42 08
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $DF5F3F.l		; 4F 3F 5F DF
	ror A		; 6A
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sta $27.b,X		; 95 27
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $DF5F3F.l		; 4F 3F 5F DF
	ror A		; 6A
	sta $43FF7A.l,X		; 9F 7A FF 43
	ora $7FBA6A.l,X		; 1F 6A BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	phx		; DA
	pld		; 2B
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	sbc $43FF43.l,X		; FF 43 FF 43
	lda $4F9F47.l,X		; BF 47 9F 4F
	and $6ADF5F.l,X		; 3F 5F DF 6A
	sta $72BB7A.l,X		; 9F 7A BB 72
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	jmp.w [$0037]		; DC 37 00
	brk $42.b		; 00 42
	php		; 08
	sbc $47BF43.l,X		; FF 43 BF 47
	sta $5F3F4F.l,X		; 9F 4F 3F 5F
	cmp $7A9F6A.l,X		; DF 6A 9F 7A
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sbc $000043.l,X		; FF 43 00 00
	.db $42, $08		; 42 08
	lda $4F9F47.l,X		; BF 47 9F 4F
	and $6ADF5F.l,X		; 3F 5F DF 6A
	sta $72BB7A.l,X		; 9F 7A BB 72
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sbc $000043.l,X		; FF 43 00 00
	.db $42, $08		; 42 08
	sta $5F3F4F.l,X		; 9F 4F 3F 5F
	cmp $7A9F6A.l,X		; DF 6A 9F 7A
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	lda $000047.l,X		; BF 47 00 00
	.db $42, $08		; 42 08
	and $6ADF5F.l,X		; 3F 5F DF 6A
	sta $72BB7A.l,X		; 9F 7A BB 72
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sta $00004F.l,X		; 9F 4F 00 00
	.db $42, $08		; 42 08
	cmp $7A9F6A.l,X		; DF 6A 9F 7A
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	sbc $6A1F43.l,X		; FF 43 1F 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	and $00005F.l,X		; 3F 5F 00 00
	.db $42, $08		; 42 08
	sta $72BB7A.l,X		; 9F 7A BB 72
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	cmp $00006A.l,X		; DF 6A 00 00
	.db $42, $08		; 42 08
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sta $00007A.l,X		; 9F 7A 00 00
	.db $42, $08		; 42 08
	sbc [$6A.b],Y		; F7 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $FF.b,S		; 43 FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	tyx		; BB
	adc ($00.b)		; 72 00
	brk $42.b		; 00 42
	php		; 08
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$FF.b]		; 47 FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sbc [$6A.b],Y		; F7 6A
	brk $00.b		; 00 00
	.db $42, $08		; 42 08
	bvc  35.b		; 50 23
	sta $27.b,X		; 95 27
	phx		; DA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $1F43FF.l		; 4F FF 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	ora ($47.b,S),Y		; 13 47
	dec $4439.w		; CE 39 44
	plp		; 28
	sta $5B1F5B.l,X		; 9F 5B 1F 5B
	cmp $72DF66.l,X		; DF 66 DF 72
	cmp $7EDC7E.l,X		; DF 7E DC 7E
	cmp $D67E.w,Y		; D9 7E D6
	ror $7336.w,X		; 7E 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $39CE5B.l,X		; FF 5B CE 39
	stx $40.b		; 86 40
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	dec $8639.w		; CE 39 86
	rti		; 40

	jsr ($FF5B.w,X)		; FC 5B FF
	tad		; 5B
	sta $5B1F5B.l,X		; 9F 5B 1F 5B
	cmp $72DF66.l,X		; DF 66 DF 72
	cmp $7EDC7E.l,X		; DF 7E DC 7E
	cmp $D67E.w,Y		; D9 7E D6
	ror $7336.w,X		; 7E 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $CE5B.w,Y		; F9 5B CE
	and $4086.w,Y		; 39 86 40
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	dec $8639.w		; CE 39 86
	rti		; 40

	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	dec $8639.w		; CE 39 86
	rti		; 40

	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	dec $8639.w		; CE 39 86
	rti		; 40

	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	dec $8639.w		; CE 39 86
	rti		; 40

	dec $7E.b,X		; D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $39CE.w,X		; 7E CE 39
	stx $40.b		; 86 40
	cmp $D67E.w,Y		; D9 7E D6
	ror $7336.w,X		; 7E 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$CE7E]		; DC 7E CE
	and $4086.w,Y		; 39 86 40
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	dec $8639.w		; CE 39 86
	rti		; 40

	cmp $7EDC7E.l,X		; DF 7E DC 7E
	cmp $D67E.w,Y		; D9 7E D6
	ror $7336.w,X		; 7E 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $39CE72.l,X		; DF 72 CE 39
	stx $40.b		; 86 40
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	dec $8639.w		; CE 39 86
	rti		; 40

	cmp $72DF66.l,X		; DF 66 DF 72
	cmp $7EDC7E.l,X		; DF 7E DC 7E
	cmp $D67E.w,Y		; D9 7E D6
	ror $7336.w,X		; 7E 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	ora $39CE5B.l,X		; 1F 5B CE 39
	stx $40.b		; 86 40
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $5B9F5B.l,X		; FF 5B 9F 5B
	brk $00.b		; 00 00
	phk		; 4B
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
	brk $4B.b		; 00 4B
	brk $BD.b		; 00 BD
	lsr $5A9F.w,X		; 5E 9F 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	brk $00.b		; 00 00
	phk		; 4B
	brk $DB.b		; 00 DB
	ror $BD.b		; 66 BD
	lsr $5A9F.w,X		; 5E 9F 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $0000.w		; 6E 00 00
	phk		; 4B
	brk $F9.b		; 00 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$00.b],Y		; 77 00
	brk $4B.b		; 00 4B
	brk $17.b		; 00 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $007F56.l		; 6F 56 7F 00
	brk $4B.b		; 00 4B
	brk $56.b		; 00 56
	adc $F97717.l,X		; 7F 17 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $4B0000.l		; 6F 00 00 4B
	brk $77.b		; 00 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $00.b,S		; 63 00
	brk $4B.b		; 00 4B
	brk $B8.b		; 00 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$00.b],Y		; 57 00
	brk $4B.b		; 00 4B
	brk $FA.b		; 00 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($00.b,S),Y		; 53 00
	brk $4B.b		; 00 4B
	brk $FB.b		; 00 FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	brk $00.b		; 00 00
	phk		; 4B
	brk $FD.b		; 00 FD
	eor $FA53FB.l		; 4F FB 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $00004B.l,X		; FF 4B 00 00
	phk		; 4B
	brk $FF.b		; 00 FF
	phk		; 4B
	sbc $FB4F.w,X		; FD 4F FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	brk $00.b		; 00 00
	phk		; 4B
	brk $7F.b		; 00 7F
	eor $FD4BFF.l		; 4F FF 4B FD
	eor $FA53FB.l		; 4F FB 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	sbc $000052.l,X		; FF 52 00 00
	phk		; 4B
	brk $FF.b		; 00 FF
	eor ($7F.b)		; 52 7F
	eor $FD4BFF.l		; 4F FF 4B FD
	eor $FA53FB.l		; 4F FB 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $9F5E.w,X		; BD 5E 9F
	phy		; 5A
	brk $00.b		; 00 00
	php		; 08
	bpl -97.b		; 10 9F
	lsr $62BF.w,X		; 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $77BF7F.l,X		; FF 7F BF 77
	adc $6F3F73.l,X		; 7F 73 3F 6F
	sbc $62BF66.l,X		; FF 66 BF 62
	sta $7FFF5E.l,X		; 9F 5E FF 7F
	brk $00.b		; 00 00
	php		; 08
	bpl -97.b		; 10 9F
	lsr $5E9F.w,X		; 5E 9F 5E
	lda $66FF62.l,X		; BF 62 FF 66
	and $737F6B.l,X		; 3F 6B 7F 73
	lda $7FFF77.l,X		; BF 77 FF 7F
	lda $737F77.l,X		; BF 77 7F 73
	and $66FF6F.l,X		; 3F 6F FF 66
	lda $7FFF62.l,X		; BF 62 FF 7F
	brk $00.b		; 00 00
	php		; 08
	bpl -65.b		; 10 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $77BF7F.l,X		; FF 7F BF 77
	adc $6F3F73.l,X		; 7F 73 3F 6F
	sbc $7FFF66.l,X		; FF 66 FF 7F
	brk $00.b		; 00 00
	php		; 08
	bpl  -1.b		; 10 FF
	ror $BF.b		; 66 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $77BF7F.l,X		; FF 7F BF 77
	adc $6F3F73.l,X		; 7F 73 3F 6F
	sbc $00007F.l,X		; FF 7F 00 00
	php		; 08
	bpl  63.b		; 10 3F
	adc $BF66FF.l		; 6F FF 66 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $77BF7F.l,X		; FF 7F BF 77
	adc $7FFF73.l,X		; 7F 73 FF 7F
	brk $00.b		; 00 00
	php		; 08
	bpl 127.b		; 10 7F
	adc ($3F.b,S),Y		; 73 3F
	adc $BF66FF.l		; 6F FF 66 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $77BF7F.l,X		; FF 7F BF 77
	sbc $00007F.l,X		; FF 7F 00 00
	php		; 08
	bpl -65.b		; 10 BF
	adc [$7F.b],Y		; 77 7F
	adc ($3F.b,S),Y		; 73 3F
	adc $BF66FF.l		; 6F FF 66 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	brk $00.b		; 00 00
	php		; 08
	bpl  -1.b		; 10 FF
	adc $7F77BF.l,X		; 7F BF 77 7F
	adc ($3F.b,S),Y		; 73 3F
	adc $BF66FF.l		; 6F FF 66 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $00007F.l,X		; FF 7F 00 00
	php		; 08
	bpl -65.b		; 10 BF
	adc [$FF.b],Y		; 77 FF
	adc $7F77BF.l,X		; 7F BF 77 7F
	adc ($3F.b,S),Y		; 73 3F
	adc $BF66FF.l		; 6F FF 66 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	adc $7FFF73.l,X		; 7F 73 FF 7F
	brk $00.b		; 00 00
	php		; 08
	bpl 127.b		; 10 7F
	adc ($BF.b,S),Y		; 73 BF
	adc [$FF.b],Y		; 77 FF
	adc $7F77BF.l,X		; 7F BF 77 7F
	adc ($3F.b,S),Y		; 73 3F
	adc $BF66FF.l		; 6F FF 66 BF
	.db $62, $9F, $5E		; 62 9F 5E
	sta $62BF5E.l,X		; 9F 5E BF 62
	sbc $6B3F66.l,X		; FF 66 3F 6B
	sbc $00007F.l,X		; FF 7F 00 00
	php		; 08
	bpl  63.b		; 10 3F
	rtl		; 6B

	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $77BF7F.l,X		; FF 7F BF 77
	adc $6F3F73.l,X		; 7F 73 3F 6F
	sbc $62BF66.l,X		; FF 66 BF 62
	sta $5E9F5E.l,X		; 9F 5E 9F 5E
	lda $66FF62.l,X		; BF 62 FF 66
	sbc $00007F.l,X		; FF 7F 00 00
	php		; 08
	bpl  -1.b		; 10 FF
	ror $3F.b		; 66 3F
	rtl		; 6B

	adc $77BF73.l,X		; 7F 73 BF 77
	sbc $77BF7F.l,X		; FF 7F BF 77
	adc $6F3F73.l,X		; 7F 73 3F 6F
	sbc $62BF66.l,X		; FF 66 BF 62
	sta $5E9F5E.l,X		; 9F 5E 9F 5E
	lda $7FFF62.l,X		; BF 62 FF 7F
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	and ($7F.b,S),Y		; 33 7F
	eor $7F.b,X		; 55 7F
	adc [$7F.b],Y		; 77 7F
	sta $BB7F.w,Y		; 99 7F BB
	adc $FF7FDD.l,X		; 7F DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	trb $7F33.w		; 1C 33 7F
	and ($7F.b,S),Y		; 33 7F
	eor $7F.b,X		; 55 7F
	adc [$7F.b],Y		; 77 7F
	sta $BB7F.w,Y		; 99 7F BB
	adc $FF7FDD.l,X		; 7F DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $FF7F55.l,X		; 7F 55 7F FF
	adc $000000.l,X		; 7F 00 00 00
	trb $7F55.w		; 1C 55 7F
	and ($7F.b,S),Y		; 33 7F
	and ($7F.b,S),Y		; 33 7F
	eor $7F.b,X		; 55 7F
	adc [$7F.b],Y		; 77 7F
	sta $BB7F.w,Y		; 99 7F BB
	adc $FF7FDD.l,X		; 7F DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	trb $7F77.w		; 1C 77 7F
	eor $7F.b,X		; 55 7F
	and ($7F.b,S),Y		; 33 7F
	and ($7F.b,S),Y		; 33 7F
	eor $7F.b,X		; 55 7F
	adc [$7F.b],Y		; 77 7F
	sta $BB7F.w,Y		; 99 7F BB
	adc $FF7FDD.l,X		; 7F DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $FF7F99.l,X		; 7F 99 7F FF
	adc $000000.l,X		; 7F 00 00 00
	trb $7F99.w		; 1C 99 7F
	adc [$7F.b],Y		; 77 7F
	eor $7F.b,X		; 55 7F
	and ($7F.b,S),Y		; 33 7F
	and ($7F.b,S),Y		; 33 7F
	eor $7F.b,X		; 55 7F
	adc [$7F.b],Y		; 77 7F
	sta $BB7F.w,Y		; 99 7F BB
	adc $FF7FDD.l,X		; 7F DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	trb $7FBB.w		; 1C BB 7F
	sta $777F.w,Y		; 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $557F33.l,X		; 7F 33 7F 55
	adc $997F77.l,X		; 7F 77 7F 99
	adc $DD7FBB.l,X		; 7F BB 7F DD
	adc $DD7FFF.l,X		; 7F FF 7F DD
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	trb $7FDD.w		; 1C DD 7F
	tyx		; BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $557F33.l,X		; 7F 33 7F 55
	adc $997F77.l,X		; 7F 77 7F 99
	adc $DD7FBB.l,X		; 7F BB 7F DD
	adc $FF7FFF.l,X		; 7F FF 7F FF
	adc $000000.l,X		; 7F 00 00 00
	trb $7FFF.w		; 1C FF 7F
	cmp $BB7F.w,X		; DD 7F BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $557F33.l,X		; 7F 33 7F 55
	adc $997F77.l,X		; 7F 77 7F 99
	adc $DD7FBB.l,X		; 7F BB 7F DD
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	trb $7FDD.w		; 1C DD 7F
	sbc $7FDD7F.l,X		; FF 7F DD 7F
	tyx		; BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $557F33.l,X		; 7F 33 7F 55
	adc $997F77.l,X		; 7F 77 7F 99
	adc $FF7FBB.l,X		; 7F BB 7F FF
	adc $000000.l,X		; 7F 00 00 00
	trb $7FBB.w		; 1C BB 7F
	cmp $FF7F.w,X		; DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $557F33.l,X		; 7F 33 7F 55
	adc $997F77.l,X		; 7F 77 7F 99
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	trb $7F99.w		; 1C 99 7F
	tyx		; BB
	adc $FF7FDD.l,X		; 7F DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $557F33.l,X		; 7F 33 7F 55
	adc $FF7F77.l,X		; 7F 77 7F FF
	adc $000000.l,X		; 7F 00 00 00
	trb $7F77.w		; 1C 77 7F
	sta $BB7F.w,Y		; 99 7F BB
	adc $FF7FDD.l,X		; 7F DD 7F FF
	adc $BB7FDD.l,X		; 7F DD 7F BB
	adc $777F99.l,X		; 7F 99 7F 77
	adc $337F55.l,X		; 7F 55 7F 33
	adc $557F33.l,X		; 7F 33 7F 55
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	tda		; 7B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc [$FF.b],Y		; F7 FF
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
	inc $FFFF.w,X		; FE FF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	xce		; FB
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FDFF.l,X		; FF FF FD F7
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $40.b		; 00 40
	bra   0.b		; 80 00
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
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	cop $00.b		; 02 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	jsl $000080.l		; 22 80 00 00
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
	mvp $00,$00		; 44 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
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
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
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
	ora ($00.b,X)		; 01 00
	brk $06.b		; 00 06
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
	rti		; 40

	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
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
	brk $10.b		; 00 10
	jsr $8000.w		; 20 00 80
	brk $02.b		; 00 02
	bra   0.b		; 80 00
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
	tsb $00.b		; 04 00
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
	brk $80.b		; 00 80
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
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
	brk $C0.b		; 00 C0
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	sbc $66.b,S		; E3 66
	sbc $00.b,S		; E3 00
	brk $9C.b		; 00 9C
	sbc $06.b,S		; E3 06
	cpx $8E.b		; E4 8E
	cpx $F8.b		; E4 F8
	cpx $80.b		; E4 80
	sbc $F4.b		; E5 F4
	sbc $72.b		; E5 72
	inc $FA.b		; E6 FA
	inc $6E.b		; E6 6E
	sbc [$00.b]		; E7 00
	brk $42.b		; 00 42
.INDEX 8
	sep #$50		; E2 50
.INDEX 8
	sep #$5E		; E2 5E
.ACCU 8
	sep #$6C		; E2 6C
.ACCU 8
.INDEX 8
	sep #$7A		; E2 7A
	sep #$88		; E2 88
.INDEX 8
	sep #$96		; E2 96
.ACCU 8
	sep #$A4		; E2 A4
.ACCU 8
.INDEX 8
	sep #$B2		; E2 B2
	sep #$4E		; E2 4E
	ora ($0A.b),Y		; 11 0A
	brk $02.b		; 00 02
	brk $9E.b		; 00 9E
	bit $90.b,X		; 34 90
	bit $B2.b,X		; 34 B2
	bit $B0.b,X		; 34 B0
	bit $94.b,X		; 34 94
	bit $AE.b,X		; 34 AE
	bit $A0.b,X		; 34 A0
	bit $C2.b,X		; 34 C2
	bit $C0.b,X		; 34 C0
	bit $A4.b,X		; 34 A4
	bit $4E.b,X		; 34 4E
	ora ($0A.b),Y		; 11 0A
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
	brk $47.b		; 00 47
	ora ($24.b),Y		; 11 24
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
	brk $AC.b		; 00 AC
	ora ($10.b),Y		; 11 10
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
	brk $4E.b		; 00 4E
	ora ($0A.b),Y		; 11 0A
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
	brk $40.b		; 00 40
	ora ($40.b),Y		; 11 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CC.b		; 00 CC
	sbc #$0A.b		; E9 0A
	nop		; EA
	cli		; 58
	nop		; EA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $00EA.w,X		; 7E EA 00
	brk $AC.b		; 00 AC
	nop		; EA
	dec $EA.b,X		; D6 EA
	trb $00EB.w		; 1C EB 00
	brk $00.b		; 00 00
	brk $5A.b		; 00 5A
	xba		; EB
	brk $00.b		; 00 00
	dey		; 88
	xba		; EB
.ACCU 16
	rep #$EB		; C2 EB
	brk $EC.b		; 00 EC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $00EC.w,X		; 3E EC 00
	brk $74.b		; 00 74
	cpx $ECBE.w		; EC BE EC
	php		; 08
	sbc $ED46.w		; ED 46 ED
	brk $00.b		; 00 00
	sei		; 78
	sbc $0000.w		; ED 00 00
	ldx $DCED.w		; AE ED DC
	sbc $EE2E.w		; ED 2E EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -18.b		; 70 EE
	brk $00.b		; 00 00
	ldx $EE.b		; A6 EE
	cld		; D8
	inc $0000.w		; EE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	sbc $580000.l		; EF 00 00 58
	sbc $00EF86.l		; EF 86 EF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	sbc $DA0000.l		; EF 00 00 DA
	sbc $00F004.l		; EF 04 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	beq   0.b		; F0 00
	brk $68.b		; 00 68
	beq -78.b		; F0 B2
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	beq  74.b		; F0 4A
	ora ($18.b),Y		; 11 18
	brk $02.b		; 00 02
	brk $95.b		; 00 95
	bit $98.b,X		; 34 98
	bit $9F.b,X		; 34 9F
	bit $B0.b,X		; 34 B0
	bit $B1.b,X		; 34 B1
	bit $00.b,X		; 34 00
	jsr $3491.w		; 20 91 34
	bcc  52.b		; 90 34
	lda ($34.b),Y		; B1 34
	lda ($34.b),Y		; B1 34
	txs		; 9A
	bit $94.b,X		; 34 94
	bit $A5.b,X		; 34 A5
	bit $A8.b,X		; 34 A8
	bit $AF.b,X		; 34 AF
	bit $C0.b,X		; 34 C0
	bit $C1.b,X		; 34 C1
	bit $00.b,X		; 34 00
	jsr $34A1.w		; 20 A1 34
	ldy #$34.b		; A0 34
	cmp ($34.b,X)		; C1 34
	cmp ($34.b,X)		; C1 34
	tax		; AA
	bit $A4.b,X		; 34 A4
	bit $4A.b,X		; 34 4A
	ora ($1A.b),Y		; 11 1A
	brk $02.b		; 00 02
	brk $B0.b		; 00 B0
	bit $94.b,X		; 34 94
	bit $92.b,X		; 34 92
	bit $9D.b,X		; 34 9D
	bit $9C.b,X		; 34 9C
	bit $93.b,X		; 34 93
	bit $00.b,X		; 34 00
	jsr $3491.w		; 20 91 34
	bcc  52.b		; 90 34
	lda ($34.b),Y		; B1 34
	lda ($34.b),Y		; B1 34
	txs		; 9A
	bit $94.b,X		; 34 94
	bit $C0.b,X		; 34 C0
	bit $A4.b,X		; 34 A4
	bit $A2.b,X		; 34 A2
	bit $AD.b,X		; 34 AD
	bit $AC.b,X		; 34 AC
	bit $A3.b,X		; 34 A3
	bit $00.b,X		; 34 00
	jsr $34A1.w		; 20 A1 34
	ldy #$34.b		; A0 34
	cmp ($34.b,X)		; C1 34
	cmp ($34.b,X)		; C1 34
	tax		; AA
	bit $A4.b,X		; 34 A4
	bit $4A.b,X		; 34 4A
	ora ($18.b),Y		; 11 18
	brk $02.b		; 00 02
	brk $B1.b		; 00 B1
	bit $97.b,X		; 34 97
	bit $98.b,X		; 34 98
	bit $9F.b,X		; 34 9F
	bit $93.b,X		; 34 93
	bit $00.b,X		; 34 00
	jsr $3491.w		; 20 91 34
	bcc  52.b		; 90 34
	lda ($34.b),Y		; B1 34
	lda ($34.b),Y		; B1 34
	txs		; 9A
	bit $94.b,X		; 34 94
	bit $C1.b,X		; 34 C1
	bit $A7.b,X		; 34 A7
	bit $A8.b,X		; 34 A8
	bit $AF.b,X		; 34 AF
	bit $A3.b,X		; 34 A3
	bit $00.b,X		; 34 00
	jsr $34A1.w		; 20 A1 34
	ldy #$34.b		; A0 34
	cmp ($34.b,X)		; C1 34
	cmp ($34.b,X)		; C1 34
	tax		; AA
	bit $A4.b,X		; 34 A4
	bit $4A.b,X		; 34 4A
	ora ($18.b),Y		; 11 18
	brk $02.b		; 00 02
	brk $95.b		; 00 95
	bit $98.b,X		; 34 98
	bit $9C.b,X		; 34 9C
	bit $90.b,X		; 34 90
	bit $9A.b,X		; 34 9A
	bit $00.b,X		; 34 00
	jsr $3491.w		; 20 91 34
	bcc  52.b		; 90 34
	lda ($34.b),Y		; B1 34
	lda ($34.b),Y		; B1 34
	txs		; 9A
	bit $94.b,X		; 34 94
	bit $A5.b,X		; 34 A5
	bit $A8.b,X		; 34 A8
	bit $AC.b,X		; 34 AC
	bit $A0.b,X		; 34 A0
	bit $AA.b,X		; 34 AA
	bit $00.b,X		; 34 00
	jsr $34A1.w		; 20 A1 34
	ldy #$34.b		; A0 34
	cmp ($34.b,X)		; C1 34
	cmp ($34.b,X)		; C1 34
	tax		; AA
	bit $A4.b,X		; 34 A4
	bit $4B.b,X		; 34 4B
	ora ($14.b),Y		; 11 14
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $9B.b,X		; 34 9B
	bit $9D.b,X		; 34 9D
	bit $9D.b,X		; 34 9D
	bit $9C.b,X		; 34 9C
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $AB.b,X		; 34 AB
	bit $AD.b,X		; 34 AD
	bit $AD.b,X		; 34 AD
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	lsr A		; 4A
	ora ($1A.b),Y		; 11 1A
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $9B.b,X		; 34 9B
	bit $94.b,X		; 34 94
	bit $9F.b,X		; 34 9F
	bit $92.b,X		; 34 92
	bit $B2.b,X		; 34 B2
	bit $9F.b,X		; 34 9F
	bit $B5.b,X		; 34 B5
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $AB.b,X		; 34 AB
	bit $A4.b,X		; 34 A4
	bit $AF.b,X		; 34 AF
	bit $A2.b,X		; 34 A2
	bit $C2.b,X		; 34 C2
	bit $AF.b,X		; 34 AF
	bit $C5.b,X		; 34 C5
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	phk		; 4B
	ora ($14.b),Y		; 11 14
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $9B.b,X		; 34 9B
	bit $90.b,X		; 34 90
	bit $9F.b,X		; 34 9F
	bit $B0.b,X		; 34 B0
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $AB.b,X		; 34 AB
	bit $A0.b,X		; 34 A0
	bit $AF.b,X		; 34 AF
	bit $C0.b,X		; 34 C0
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	lsr A		; 4A
	ora ($1A.b),Y		; 11 1A
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $99.b,X		; 34 99
	bit $B2.b,X		; 34 B2
	bit $9E.b,X		; 34 9E
	bit $98.b,X		; 34 98
	bit $B1.b,X		; 34 B1
	bit $94.b,X		; 34 94
	bit $9F.b,X		; 34 9F
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $A9.b,X		; 34 A9
	bit $C2.b,X		; 34 C2
	bit $AE.b,X		; 34 AE
	bit $A8.b,X		; 34 A8
	bit $C1.b,X		; 34 C1
	bit $A4.b,X		; 34 A4
	bit $AF.b,X		; 34 AF
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	phk		; 4B
	ora ($16.b),Y		; 11 16
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $B3.b,X		; 34 B3
	bit $94.b,X		; 34 94
	bit $9C.b,X		; 34 9C
	bit $B2.b,X		; 34 B2
	bit $B0.b,X		; 34 B0
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $C3.b,X		; 34 C3
	bit $A4.b,X		; 34 A4
	bit $AC.b,X		; 34 AC
	bit $C2.b,X		; 34 C2
	bit $C0.b,X		; 34 C0
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	lsr A		; 4A
	ora ($18.b),Y		; 11 18
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $B2.b,X		; 34 B2
	bit $9F.b,X		; 34 9F
	bit $90.b,X		; 34 90
	bit $9C.b,X		; 34 9C
	bit $B2.b,X		; 34 B2
	bit $B0.b,X		; 34 B0
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $C2.b,X		; 34 C2
	bit $AF.b,X		; 34 AF
	bit $A0.b,X		; 34 A0
	bit $AC.b,X		; 34 AC
	bit $C2.b,X		; 34 C2
	bit $C0.b,X		; 34 C0
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	lsr A		; 4A
	ora ($1A.b),Y		; 11 1A
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $9C.b,X		; 34 9C
	bit $94.b,X		; 34 94
	bit $9E.b,X		; 34 9E
	bit $B1.b,X		; 34 B1
	bit $B2.b,X		; 34 B2
	bit $9C.b,X		; 34 9C
	bit $94.b,X		; 34 94
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $AC.b,X		; 34 AC
	bit $A4.b,X		; 34 A4
	bit $AE.b,X		; 34 AE
	bit $C1.b,X		; 34 C1
	bit $C2.b,X		; 34 C2
	bit $AC.b,X		; 34 AC
	bit $A4.b,X		; 34 A4
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	phk		; 4B
	ora ($16.b),Y		; 11 16
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $9E.b,X		; 34 9E
	bit $9A.b,X		; 34 9A
	bit $B2.b,X		; 34 B2
	bit $B1.b,X		; 34 B1
	bit $9D.b,X		; 34 9D
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $AE.b,X		; 34 AE
	bit $AA.b,X		; 34 AA
	bit $C2.b,X		; 34 C2
	bit $C1.b,X		; 34 C1
	bit $AD.b,X		; 34 AD
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	eor #$1E11.w		; 49 11 1E
	brk $05.b		; 00 05
	brk $B0.b		; 00 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	bit $9F.b,X		; 34 9F
	bit $92.b,X		; 34 92
	bit $97.b,X		; 34 97
	bit $98.b,X		; 34 98
	bit $91.b,X		; 34 91
	bit $98.b,X		; 34 98
	bit $9B.b,X		; 34 9B
	bit $9D.b,X		; 34 9D
	bit $9D.b,X		; 34 9D
	bit $9C.b,X		; 34 9C
	bit $C0.b,X		; 34 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $A2.b,X		; 34 A2
	bit $A7.b,X		; 34 A7
	bit $A8.b,X		; 34 A8
	bit $A1.b,X		; 34 A1
	bit $A8.b,X		; 34 A8
	bit $AB.b,X		; 34 AB
	bit $AD.b,X		; 34 AD
	bit $AD.b,X		; 34 AD
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	ldy $34.b,X		; B4 34
	tya		; 98
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy $34.b		; C4 34
	tay		; A8
	bit $AC.b,X		; 34 AC
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jmp $1211.w		; 4C 11 12
	brk $02.b		; 00 02
	brk $93.b		; 00 93
	bit $9F.b,X		; 34 9F
	bit $90.b,X		; 34 90
	bit $B4.b,X		; 34 B4
	bit $00.b,X		; 34 00
	jsr $3496.w		; 20 96 34
	bcc  52.b		; 90 34
	txy		; 9B
	bit $94.b,X		; 34 94
	bit $A3.b,X		; 34 A3
	bit $AF.b,X		; 34 AF
	bit $A0.b,X		; 34 A0
	bit $C4.b,X		; 34 C4
	bit $00.b,X		; 34 00
	jsr $34A6.w		; 20 A6 34
	ldy #$34.b		; A0 34
	plb		; AB
	bit $A4.b,X		; 34 A4
	bit $4C.b,X		; 34 4C
	ora ($12.b),Y		; 11 12
	brk $02.b		; 00 02
	brk $B1.b		; 00 B1
	bit $98.b,X		; 34 98
	bit $9B.b,X		; 34 9B
	bit $94.b,X		; 34 94
	bit $00.b,X		; 34 00
	jsr $349D.w		; 20 9D 34
	lda ($34.b,S),Y		; B3 34
	sty $34.b,X		; 94 34
	sta $34C134.l,X		; 9F 34 C1 34
	tay		; A8
	bit $AB.b,X		; 34 AB
	bit $A4.b,X		; 34 A4
	bit $00.b,X		; 34 00
	jsr $34AD.w		; 20 AD 34
	cmp $34.b,S		; C3 34
	ldy $34.b		; A4 34
	lda $114434.l		; AF 34 44 11
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	sty $34.b,X		; 94 34
	stz $B134.w		; 9C 34 B1
	bit $9F.b,X		; 34 9F
	bit $B5.b,X		; 34 B5
	bit $00.b,X		; 34 00
	jsr $349C.w		; 20 9C 34
	sty $34.b,X		; 94 34
	ldy $34.b,X		; B4 34
	brk $20.b		; 00 20
	stz $9F34.w,X		; 9E 34 9F
	bit $94.b,X		; 34 94
	bit $B1.b,X		; 34 B1
	bit $B1.b,X		; 34 B1
	bit $B5.b,X		; 34 B5
	bit $00.b,X		; 34 00
	jsr $34B0.w		; 20 B0 34
	sta $9A34.w,X		; 9D 34 9A
	bit $93.b,X		; 34 93
	bit $98.b,X		; 34 98
	bit $94.b,X		; 34 94
	bit $9F.b,X		; 34 9F
	bit $A4.b,X		; 34 A4
	bit $AC.b,X		; 34 AC
	bit $C1.b,X		; 34 C1
	bit $AF.b,X		; 34 AF
	bit $C5.b,X		; 34 C5
	bit $00.b,X		; 34 00
	jsr $34AC.w		; 20 AC 34
	ldy $34.b		; A4 34
	cpy $34.b		; C4 34
	brk $20.b		; 00 20
	ldx $AF34.w		; AE 34 AF
	bit $A4.b,X		; 34 A4
	bit $C1.b,X		; 34 C1
	bit $C1.b,X		; 34 C1
	bit $C5.b,X		; 34 C5
	bit $00.b,X		; 34 00
	jsr $34C0.w		; 20 C0 34
	lda $AA34.w		; AD 34 AA
	bit $A3.b,X		; 34 A3
	bit $A8.b,X		; 34 A8
	bit $A4.b,X		; 34 A4
	bit $AF.b,X		; 34 AF
	bit $AE.b,X		; 34 AE
	ora ($0A.b),Y		; 11 0A
	brk $02.b		; 00 02
	brk $9F.b		; 00 9F
	bit $94.b,X		; 34 94
	bit $90.b,X		; 34 90
	bit $93.b,X		; 34 93
	bit $B5.b,X		; 34 B5
	bit $AF.b,X		; 34 AF
	bit $A4.b,X		; 34 A4
	bit $A0.b,X		; 34 A0
	bit $A3.b,X		; 34 A3
	bit $C5.b,X		; 34 C5
	bit $4E.b,X		; 34 4E
	ora ($0A.b),Y		; 11 0A
	brk $03.b		; 00 03
	brk $2B.b		; 00 2B
	bmi  44.b		; 30 2C
	bmi  45.b		; 30 2D
	bmi  46.b		; 30 2E
	bmi  47.b		; 30 2F
	bmi  59.b		; 30 3B
	bmi  60.b		; 30 3C
	bmi  61.b		; 30 3D
	bmi  62.b		; 30 3E
	bmi  63.b		; 30 3F
	bmi  75.b		; 30 4B
	bmi  76.b		; 30 4C
	bmi  77.b		; 30 4D
	bmi  78.b		; 30 4E
	bmi  79.b		; 30 4F
	bmi  75.b		; 30 4B
	ora ($14.b),Y		; 11 14
	brk $02.b		; 00 02
	brk $21.b		; 00 21
	bit $B0.b,X		; 34 B0
	bit $94.b,X		; 34 94
	bit $B1.b,X		; 34 B1
	bit $00.b,X		; 34 00
	jsr $349B.w		; 20 9B 34
	bcc  52.b		; 90 34
	lda ($34.b),Y		; B1 34
	sta ($34.b)		; 92 34
	sta [$34.b],Y		; 97 34
	and ($34.b),Y		; 31 34
	cpy #$34.b		; C0 34
	ldy $34.b		; A4 34
	cmp ($34.b,X)		; C1 34
	brk $20.b		; 00 20
	plb		; AB
	bit $A0.b,X		; 34 A0
	bit $C1.b,X		; 34 C1
	bit $A2.b,X		; 34 A2
	bit $A7.b,X		; 34 A7
	bit $4A.b,X		; 34 4A
	ora ($18.b),Y		; 11 18
	brk $02.b		; 00 02
	brk $9F.b		; 00 9F
	bit $94.b,X		; 34 94
	bit $B1.b,X		; 34 B1
	bit $B2.b,X		; 34 B2
	bit $9F.b,X		; 34 9F
	bit $9C.b,X		; 34 9C
	bit $00.b,X		; 34 00
	jsr $349B.w		; 20 9B 34
	bcc  52.b		; 90 34
	lda ($34.b),Y		; B1 34
	sta ($34.b)		; 92 34
	sta [$34.b],Y		; 97 34
	lda $34A434.l		; AF 34 A4 34
	cmp ($34.b,X)		; C1 34
.ACCU 16
.INDEX 16
	rep #$34		; C2 34
	lda $34AC34.l		; AF 34 AC 34
	brk $20.b		; 00 20
	plb		; AB
	bit $A0.b,X		; 34 A0
	bit $C1.b,X		; 34 C1
	bit $A2.b,X		; 34 A2
	bit $A7.b,X		; 34 A7
	bit $4C.b,X		; 34 4C
	ora ($10.b),Y		; 11 10
	brk $02.b		; 00 02
	brk $B0.b		; 00 B0
	bit $B1.b,X		; 34 B1
	bit $90.b,X		; 34 90
	bit $96.b,X		; 34 96
	bit $94.b,X		; 34 94
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	cpy #$C134.w		; C0 34 C1
	bit $A0.b,X		; 34 A0
	bit $A6.b,X		; 34 A6
	bit $A4.b,X		; 34 A4
	bit $00.b,X		; 34 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	eor $0C11.w		; 4D 11 0C
	brk $02.b		; 00 02
	brk $95.b		; 00 95
	bit $98.b,X		; 34 98
	bit $9C.b,X		; 34 9C
	bit $98.b,X		; 34 98
	bit $B0.b,X		; 34 B0
	bit $97.b,X		; 34 97
	bit $A5.b,X		; 34 A5
	bit $A8.b,X		; 34 A8
	bit $AC.b,X		; 34 AC
	bit $A8.b,X		; 34 A8
	bit $C0.b,X		; 34 C0
	bit $A7.b,X		; 34 A7
	bit $4D.b,X		; 34 4D
	ora ($0E.b),Y		; 11 0E
	brk $02.b		; 00 02
	brk $9E.b		; 00 9E
	bit $94.b,X		; 34 94
	bit $9F.b,X		; 34 9F
	bit $95.b,X		; 34 95
	bit $94.b,X		; 34 94
	bit $92.b,X		; 34 92
	bit $B1.b,X		; 34 B1
	bit $AE.b,X		; 34 AE
	bit $A4.b,X		; 34 A4
	bit $AF.b,X		; 34 AF
	bit $A5.b,X		; 34 A5
	bit $A4.b,X		; 34 A4
	bit $A2.b,X		; 34 A2
	bit $C1.b,X		; 34 C1
	bit $A9.b,X		; 34 A9
	ora ($1C.b),Y		; 11 1C
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	and $2586.w		; 2D 86 25
	eor $002D.w		; 4D 2D 00
	jsr $2D22.w		; 20 22 2D
	bra  45.b		; 80 2D
	brk $2D.b		; 00 2D
	lsr $2D.b		; 46 2D
	brk $20.b		; 00 20
	brk $2D.b		; 00 2D
	ora [$2D.b]		; 07 2D
	phd		; 0B
	and $2584.w		; 2D 84 25
	eor $502D.w		; 4D 2D 50
	and $2D96.w		; 2D 96 2D
	eor $002D.w,X		; 5D 2D 00
	jsr $2D32.w		; 20 32 2D
	bcc  45.b		; 90 2D
	bpl  45.b		; 10 2D
	lsr $2D.b,X		; 56 2D
	brk $20.b		; 00 20
	bpl  45.b		; 10 2D
	ora [$2D.b],Y		; 17 2D
	tas		; 1B
	and $2D94.w		; 2D 94 2D
	eor $A72D.w,X		; 5D 2D A7
	ora ($24.b),Y		; 11 24
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	and $2586.w		; 2D 86 25
	eor $002D.w		; 4D 2D 00
	jsr $2D0C.w		; 20 0C 2D
	ror A		; 6A
	and $2D01.w		; 2D 01 2D
	lsr $2D.b		; 46 2D
	pha		; 48
	and $2000.w		; 2D 00 20
	and #$862D.w		; 29 2D 86
	and $23.b		; 25 23
	and $2000.w		; 2D 00 20
	brk $2D.b		; 00 2D
	ora $2D852D.l		; 0F 2D 85 2D
	ora [$2D.b]		; 07 2D
	bvc  45.b		; 50 2D
	stx $2D.b,Y		; 96 2D
	eor $002D.w,X		; 5D 2D 00
	jsr $2D1C.w		; 20 1C 2D
	ply		; 7A
	and $2D11.w		; 2D 11 2D
	lsr $2D.b,X		; 56 2D
	cli		; 58
	and $2000.w		; 2D 00 20
	and $962D.w,Y		; 39 2D 96
	and $2D33.w		; 2D 33 2D
	brk $20.b		; 00 20
	bpl  45.b		; 10 2D
	ora $2D952D.l,X		; 1F 2D 95 2D
	ora [$2D.b],Y		; 17 2D
	ldy $1011.w		; AC 11 10
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	and $2D25.w		; 2D 25 2D
	sta $2D.b		; 85 2D
	ora [$2D.b]		; 07 2D
	brk $20.b		; 00 20
	ora [$2D.b]		; 07 2D
	lsr $2D.b		; 46 2D
	ora ($2D.b,X)		; 01 2D
	asl $352D.w,X		; 1E 2D 35
	and $2D95.w		; 2D 95 2D
	ora [$2D.b],Y		; 17 2D
	brk $20.b		; 00 20
	ora [$2D.b],Y		; 17 2D
	lsr $2D.b,X		; 56 2D
	ora ($2D.b),Y		; 11 2D
	plb		; AB
	ora ($14.b),Y		; 11 14
	brk $02.b		; 00 02
	brk $8C.b		; 00 8C
	and $2D8D.w		; 2D 8D 2D
	stx $8F2D.w		; 8E 2D 8F
	and $2DCC.w		; 2D CC 2D
	cmp $CE2D.w		; CD 2D CE
	and $2DCF.w		; 2D CF 2D
	inc $EF2D.w		; EE 2D EF
	and $2D9C.w		; 2D 9C 2D
	sta $9E2D.w,X		; 9D 2D 9E
	and $2D9F.w		; 2D 9F 2D
	jmp.w [$DD2D]		; DC 2D DD
	and $2DDE.w		; 2D DE 2D
	cmp $2DFE2D.l,X		; DF 2D FE 2D
	sbc $11AC2D.l,X		; FF 2D AC 11
	ora ($00.b)		; 12 00
	cop $00.b		; 02 00
	phd		; 0B
	and $2582.w		; 2D 82 25
	adc #$4D2D.w		; 69 2D 4D
	and $2000.w		; 2D 00 20
	tsb $6C2D.w		; 0C 2D 6C
	and $2D49.w		; 2D 49 2D
	stx $25.b		; 86 25
	tas		; 1B
	and $2D92.w		; 2D 92 2D
	adc $5D2D.w,Y		; 79 2D 5D
	and $2000.w		; 2D 00 20
	trb $7C2D.w		; 1C 2D 7C
	and $2D59.w		; 2D 59 2D
	stx $2D.b,Y		; 96 2D
	tay		; A8
	ora ($20.b),Y		; 11 20
	brk $02.b		; 00 02
	brk $2E.b		; 00 2E
	and $2D86.w		; 2D 86 2D
	asl $2D.b		; 06 2D
	sta $2D.b,S		; 83 2D
	eor [$2D.b]		; 47 2D
	stx $2D.b		; 86 2D
	brk $20.b		; 00 20
	brk $2D.b		; 00 2D
	ora [$2D.b]		; 07 2D
	brk $2D.b		; 00 2D
	brk $20.b		; 00 20
	and $2D462D.l		; 2F 2D 46 2D
	stx $25.b		; 86 25
	adc ($2D.b,X)		; 61 2D
	sta $2D.b,S		; 83 2D
	rol $962D.w,X		; 3E 2D 96
	and $2D16.w		; 2D 16 2D
	sta ($2D.b,S),Y		; 93 2D
	eor [$2D.b],Y		; 57 2D
	stx $2D.b,Y		; 96 2D
	brk $20.b		; 00 20
	bpl  45.b		; 10 2D
	ora [$2D.b],Y		; 17 2D
	bpl  45.b		; 10 2D
	brk $20.b		; 00 20
	and $2D562D.l,X		; 3F 2D 56 2D
	stx $2D.b,Y		; 96 2D
	adc ($2D.b),Y		; 71 2D
	sta ($2D.b,S),Y		; 93 2D
	lda #$1C11.w		; A9 11 1C
	brk $02.b		; 00 02
	brk $47.b		; 00 47
	and $2D66.w		; 2D 66 2D
	stx $25.b		; 86 25
	tsb $002D.w		; 0C 2D 00
	jsr $2D68.w		; 20 68 2D
	eor #$012D.w		; 49 2D 01
	and $2D07.w		; 2D 07 2D
	brk $20.b		; 00 20
	tsb $222D.w		; 0C 2D 22
	and $2585.w		; 2D 85 25
	jmp ($572D.w)		; 6C 2D 57
	and $2D76.w		; 2D 76 2D
	stx $2D.b,Y		; 96 2D
	trb $002D.w		; 1C 2D 00
	jsr $2D78.w		; 20 78 2D
	eor $112D.w,Y		; 59 2D 11
	and $2D17.w		; 2D 17 2D
	brk $20.b		; 00 20
	trb $322D.w		; 1C 2D 32
	and $2D95.w		; 2D 95 2D
	jmp ($AB2D.w,X)		; 7C 2D AB
	ora ($14.b),Y		; 11 14
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	and $2588.w		; 2D 88 25
	stx $25.b		; 86 25
	ora $25862D.l		; 0F 2D 86 25
	brk $20.b		; 00 20
	pla		; 68
	and $2D47.w		; 2D 47 2D
	sta $2D.b		; 85 2D
	and $2D.b,S		; 23 2D
	ora ($2D.b)		; 12 2D
	tya		; 98
	and $2D96.w		; 2D 96 2D
	ora $2D962D.l,X		; 1F 2D 96 2D
	brk $20.b		; 00 20
	sei		; 78
	and $2D57.w		; 2D 57 2D
	sta $2D.b,X		; 95 2D
	and ($2D.b,S),Y		; 33 2D
	tax		; AA
	ora ($1A.b),Y		; 11 1A
	brk $02.b		; 00 02
	brk $2B.b		; 00 2B
	and $2D87.w		; 2D 87 2D
	ora ($2D.b,X)		; 01 2D
	eor $2D.b,S		; 43 2D
	stx $25.b		; 86 25
	brk $20.b		; 00 20
	asl $022D.w		; 0E 2D 02
	and $2D48.w		; 2D 48 2D
	brk $20.b		; 00 20
	ror $2D.b		; 66 2D
	stx $25.b		; 86 25
	adc $2D.b		; 65 2D
	tsa		; 3B
	and $2D97.w		; 2D 97 2D
	ora ($2D.b),Y		; 11 2D
	eor ($2D.b,S),Y		; 53 2D
	stx $2D.b,Y		; 96 2D
	brk $20.b		; 00 20
	asl $122D.w,X		; 1E 2D 12
	and $2D58.w		; 2D 58 2D
	brk $20.b		; 00 20
	ror $2D.b,X		; 76 2D
	stx $2D.b,Y		; 96 2D
	adc $2D.b,X		; 75 2D
	lda #$1C11.w		; A9 11 1C
	brk $02.b		; 00 02
	brk $2E.b		; 00 2E
	and $2586.w		; 2D 86 25
	.db $62, $2D, $00		; 62 2D 00
	jsr $2D0C.w		; 20 0C 2D
	and [$2D.b]		; 27 2D
	ora ($2D.b,X)		; 01 2D
	ora [$2D.b]		; 07 2D
	brk $20.b		; 00 20
	pld		; 2B
	and $2D87.w		; 2D 87 2D
	ora ($2D.b,X)		; 01 2D
	eor $2D.b,S		; 43 2D
	stx $25.b		; 86 25
	rol $962D.w,X		; 3E 2D 96
	and $2D72.w		; 2D 72 2D
	brk $20.b		; 00 20
	trb $372D.w		; 1C 2D 37
	and $2D11.w		; 2D 11 2D
	ora [$2D.b],Y		; 17 2D
	brk $20.b		; 00 20
	tsa		; 3B
	and $2D97.w		; 2D 97 2D
	ora ($2D.b),Y		; 11 2D
	eor ($2D.b,S),Y		; 53 2D
	stx $2D.b,Y		; 96 2D
	lda #$1C11.w		; A9 11 1C
	brk $02.b		; 00 02
	brk $2B.b		; 00 2B
	and $2D87.w		; 2D 87 2D
	ora ($2D.b,X)		; 01 2D
	eor $2D.b,S		; 43 2D
	stx $25.b		; 86 25
	brk $20.b		; 00 20
	rol A		; 2A
	and $2586.w		; 2D 86 25
	pha		; 48
	and $2000.w		; 2D 00 20
	adc $2D.b		; 65 2D
	lsr A		; 4A
	and $2D85.w		; 2D 85 2D
	jmp ($3B2D.w)		; 6C 2D 3B
	and $2D97.w		; 2D 97 2D
	ora ($2D.b),Y		; 11 2D
	eor ($2D.b,S),Y		; 53 2D
	stx $2D.b,Y		; 96 2D
	brk $20.b		; 00 20
	dec A		; 3A
	and $2D96.w		; 2D 96 2D
	cli		; 58
	and $2000.w		; 2D 00 20
	adc $2D.b,X		; 75 2D
	phy		; 5A
	and $2D95.w		; 2D 95 2D
	jmp ($AA2D.w,X)		; 7C 2D AA
	ora ($18.b),Y		; 11 18
	brk $02.b		; 00 02
	brk $2E.b		; 00 2E
	and $2586.w		; 2D 86 25
	.db $62, $2D, $00		; 62 2D 00
	jsr $2D0C.w		; 20 0C 2D
	and [$2D.b]		; 27 2D
	ora ($2D.b,X)		; 01 2D
	ora [$2D.b]		; 07 2D
	brk $20.b		; 00 20
	pld		; 2B
	and $2D49.w		; 2D 49 2D
	brk $2D.b		; 00 2D
	rol $962D.w,X		; 3E 2D 96
	and $2D72.w		; 2D 72 2D
	brk $20.b		; 00 20
	trb $372D.w		; 1C 2D 37
	and $2D11.w		; 2D 11 2D
	ora [$2D.b],Y		; 17 2D
	brk $20.b		; 00 20
	tsa		; 3B
	and $2D59.w		; 2D 59 2D
	bpl  45.b		; 10 2D
	tay		; A8
	ora ($22.b),Y		; 11 22
	brk $02.b		; 00 02
	brk $0B.b		; 00 0B
	and $2583.w		; 2D 83 25
	stx $25.b		; 86 25
	jmp ($472D.w)		; 6C 2D 47
	and $2586.w		; 2D 86 25
	rti		; 40

	and $2000.w		; 2D 00 20
	asl A		; 0A
	and $2D4D.w		; 2D 4D 2D
	adc $2D.b,S		; 63 2D
	stx $25.b		; 86 25
	brk $20.b		; 00 20
	adc $2D.b		; 65 2D
	lsr $2D.b		; 46 2D
	rts		; 60

	and $2D4D.w		; 2D 4D 2D
	tas		; 1B
	and $2D93.w		; 2D 93 2D
	stx $2D.b,Y		; 96 2D
	jmp ($572D.w,X)		; 7C 2D 57
	and $2D96.w		; 2D 96 2D
	bvc  45.b		; 50 2D
	brk $20.b		; 00 20
	inc A		; 1A
	and $2D5D.w		; 2D 5D 2D
	adc ($2D.b,S),Y		; 73 2D
	stx $2D.b,Y		; 96 2D
	brk $20.b		; 00 20
	adc $2D.b,X		; 75 2D
	lsr $2D.b,X		; 56 2D
	bvs  45.b		; 70 2D
	eor $A82D.w,X		; 5D 2D A8
	ora ($22.b),Y		; 11 22
	brk $02.b		; 00 02
	brk $61.b		; 00 61
	and $2583.w		; 2D 83 25
	rtl		; 6B

	and $2D0F.w		; 2D 0F 2D
	stx $25.b		; 86 25
	brk $20.b		; 00 20
	ora #$092D.w		; 09 2D 09
	and $2D24.w		; 2D 24 2D
	sta $2D.b		; 85 2D
	and ($2D.b,X)		; 21 2D
	pha		; 48
	jsr $2D0A.w		; 20 0A 2D
	ora ($2D.b,X)		; 01 2D
	ora [$2D.b]		; 07 2D
	lsr A		; 4A
	and $2D4D.w		; 2D 4D 2D
	adc ($2D.b),Y		; 71 2D
	sta ($2D.b,S),Y		; 93 2D
	tda		; 7B
	and $2D1F.w		; 2D 1F 2D
	stx $2D.b,Y		; 96 2D
	brk $20.b		; 00 20
	ora $192D.w,Y		; 19 2D 19
	and $2D34.w		; 2D 34 2D
	sta $2D.b,X		; 95 2D
	and ($2D.b),Y		; 31 2D
	brk $20.b		; 00 20
	inc A		; 1A
	and $2D11.w		; 2D 11 2D
	ora [$2D.b],Y		; 17 2D
	phy		; 5A
	and $2D5D.w		; 2D 5D 2D
	lda #$1C11.w		; A9 11 1C
	brk $02.b		; 00 02
	brk $61.b		; 00 61
	and $2583.w		; 2D 83 25
	rtl		; 6B

	and $2D0F.w		; 2D 0F 2D
	stx $25.b		; 86 25
	brk $20.b		; 00 20
	adc $2D.b,S		; 63 2D
	pla		; 68
	and $2D48.w		; 2D 48 2D
	brk $20.b		; 00 20
	brk $2D.b		; 00 2D
	ora [$2D.b]		; 07 2D
	ora $482D.w		; 0D 2D 48
	and $2D71.w		; 2D 71 2D
	sta ($2D.b,S),Y		; 93 2D
	tda		; 7B
	and $2D1F.w		; 2D 1F 2D
	stx $2D.b,Y		; 96 2D
	brk $20.b		; 00 20
	adc ($2D.b,S),Y		; 73 2D
	sei		; 78
	and $2D58.w		; 2D 58 2D
	brk $20.b		; 00 20
	bpl  45.b		; 10 2D
	ora [$2D.b],Y		; 17 2D
	ora $582D.w,X		; 1D 2D 58
	and $11AB.w		; 2D AB 11
	asl $00.b,X		; 16 00
	cop $00.b		; 02 00
	adc ($2D.b,X)		; 61 2D
	.db $82, $25, $01		; 82 25 01
	and $2D00.w		; 2D 00 2D
	eor $232D.w		; 4D 2D 23
	and $2000.w		; 2D 00 20
	tsb $012D.w		; 0C 2D 01
	and $2D4D.w		; 2D 4D 2D
	eor $2D712D.l		; 4F 2D 71 2D
	sta ($2D.b)		; 92 2D
	ora ($2D.b),Y		; 11 2D
	bpl  45.b		; 10 2D
	eor $332D.w,X		; 5D 2D 33
	and $2000.w		; 2D 00 20
	trb $112D.w		; 1C 2D 11
	and $2D5D.w		; 2D 5D 2D
	eor $11AA2D.l,X		; 5F 2D AA 11
	clc		; 18
	brk $02.b		; 00 02
	brk $46.b		; 00 46
	and $2D01.w		; 2D 01 2D
	and $2D.b,S		; 23 2D
	and $2D.b		; 25 2D
	eor $4F2D.w		; 4D 2D 4F
	and $2000.w		; 2D 00 20
	tsb $232D.w		; 0C 2D 23
	and $2D46.w		; 2D 46 2D
	ora ($2D.b,X)		; 01 2D
	ora [$2D.b]		; 07 2D
	lsr $2D.b,X		; 56 2D
	ora ($2D.b),Y		; 11 2D
	and ($2D.b,S),Y		; 33 2D
	and $2D.b,X		; 35 2D
	eor $5F2D.w,X		; 5D 2D 5F
	and $2000.w		; 2D 00 20
	trb $332D.w		; 1C 2D 33
	and $2D56.w		; 2D 56 2D
	ora ($2D.b),Y		; 11 2D
	ora [$2D.b],Y		; 17 2D
	plb		; AB
	ora ($14.b),Y		; 11 14
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	and $2D49.w		; 2D 49 2D
	sta $25.b		; 85 25
	ora $4D2D.w		; 0D 2D 4D
	and $2D23.w		; 2D 23 2D
	brk $20.b		; 00 20
	adc [$2D.b]		; 67 2D
	stx $25.b		; 86 25
	rti		; 40

	and $2D17.w		; 2D 17 2D
	eor $952D.w,Y		; 59 2D 95
	and $2D1D.w		; 2D 1D 2D
	eor $332D.w,X		; 5D 2D 33
	and $2000.w		; 2D 00 20
	adc [$2D.b],Y		; 77 2D
	stx $2D.b,Y		; 96 2D
	bvc  45.b		; 50 2D
	lda [$11.b]		; A7 11
	rol $00.b		; 26 00
	cop $00.b		; 02 00
	adc $802D.w		; 6D 2D 80
	and $2586.w		; 2D 86 25
	bit $2D.b		; 24 2D
	tsb $002D.w		; 0C 2D 00
	jsr $2D02.w		; 20 02 2D
	bra  45.b		; 80 2D
	eor $072D.w		; 4D 2D 07
	and $2000.w		; 2D 00 20
	jsr $812D.w		; 20 2D 81
	and $2586.w		; 2D 86 25
	eor $002D.w		; 4D 2D 00
	jsr $2D0E.w		; 20 0E 2D
	stx $25.b		; 86 25
	adc $2D.b		; 65 2D
	adc $902D.w,X		; 7D 2D 90
	and $2D96.w		; 2D 96 2D
	bit $2D.b,X		; 34 2D
	trb $002D.w		; 1C 2D 00
	jsr $2D12.w		; 20 12 2D
	bcc  45.b		; 90 2D
	eor $172D.w,X		; 5D 2D 17
	and $2000.w		; 2D 00 20
	bmi  45.b		; 30 2D
	sta ($2D.b),Y		; 91 2D
	stx $2D.b,Y		; 96 2D
	eor $002D.w,X		; 5D 2D 00
	jsr $2D1E.w		; 20 1E 2D
	stx $2D.b,Y		; 96 2D
	adc $2D.b,X		; 75 2D
	lda #$1E11.w		; A9 11 1E
	brk $02.b		; 00 02
	brk $6D.b		; 00 6D
	and $2D80.w		; 2D 80 2D
	stx $25.b		; 86 25
	bit $2D.b		; 24 2D
	tsb $002D.w		; 0C 2D 00
	jsr $2D46.w		; 20 46 2D
	pla		; 68
	and $2D2F.w		; 2D 2F 2D
	stx $25.b		; 86 25
	brk $20.b		; 00 20
	jsr $812D.w		; 20 2D 81
	and $2586.w		; 2D 86 25
	eor $7D2D.w		; 4D 2D 7D
	and $2D90.w		; 2D 90 2D
	stx $2D.b,Y		; 96 2D
	bit $2D.b,X		; 34 2D
	trb $002D.w		; 1C 2D 00
	jsr $2D56.w		; 20 56 2D
	sei		; 78
	and $2D3F.w		; 2D 3F 2D
	stx $2D.b,Y		; 96 2D
	brk $20.b		; 00 20
	bmi  45.b		; 30 2D
	sta ($2D.b),Y		; 91 2D
	stx $2D.b,Y		; 96 2D
	eor $AA2D.w,X		; 5D 2D AA
	ora ($18.b),Y		; 11 18
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	and $2D81.w		; 2D 81 2D
	stx $25.b		; 86 25
	eor $002D.w		; 4D 2D 00
	jsr $2D03.w		; 20 03 2D
	ora [$2D.b]		; 07 2D
	tsb $6C2D.w		; 0C 2D 6C
	and $2D4A.w		; 2D 4A 2D
	phd		; 0B
	and $2D68.w		; 2D 68 2D
	bmi  45.b		; 30 2D
	sta ($2D.b),Y		; 91 2D
	stx $2D.b,Y		; 96 2D
	eor $002D.w,X		; 5D 2D 00
	jsr $2D13.w		; 20 13 2D
	ora [$2D.b],Y		; 17 2D
	trb $7C2D.w		; 1C 2D 7C
	and $2D5A.w		; 2D 5A 2D
	tas		; 1B
	and $2D78.w		; 2D 78 2D
	plb		; AB
	ora ($16.b),Y		; 11 16
	brk $02.b		; 00 02
	brk $4B.b		; 00 4B
	and $2586.w		; 2D 86 25
	pha		; 48
	and $2D65.w		; 2D 65 2D
	brk $20.b		; 00 20
	phd		; 0B
	and $2D81.w		; 2D 81 2D
	ora ($2D.b,X)		; 01 2D
	asl $2D.b		; 06 2D
	eor $4F2D.w		; 4D 2D 4F
	and $2D5B.w		; 2D 5B 2D
	stx $2D.b,Y		; 96 2D
	cli		; 58
	and $2D75.w		; 2D 75 2D
	brk $20.b		; 00 20
	tas		; 1B
	and $2D91.w		; 2D 91 2D
	ora ($2D.b),Y		; 11 2D
	asl $2D.b,X		; 16 2D
	eor $5F2D.w,X		; 5D 2D 5F
	and $11A9.w		; 2D A9 11
	asl $0200.w,X		; 1E 00 02
	brk $63.b		; 00 63
	and $2D01.w		; 2D 01 2D
	adc [$2D.b]		; 67 2D
	eor $4F2D.w		; 4D 2D 4F
	and $2000.w		; 2D 00 20
	lsr $012D.w		; 4E 2D 01
	and $2D00.w		; 2D 00 2D
	brk $20.b		; 00 20
	ora [$2D.b]		; 07 2D
	lsr $2D.b		; 46 2D
	sta $2D.b		; 85 2D
	phd		; 0B
	and $2D83.w		; 2D 83 2D
	adc ($2D.b,S),Y		; 73 2D
	ora ($2D.b),Y		; 11 2D
	adc [$2D.b],Y		; 77 2D
	eor $5F2D.w,X		; 5D 2D 5F
	and $2000.w		; 2D 00 20
	lsr $112D.w,X		; 5E 2D 11
	and $2D10.w		; 2D 10 2D
	brk $20.b		; 00 20
	ora [$2D.b],Y		; 17 2D
	lsr $2D.b,X		; 56 2D
	sta $2D.b,X		; 95 2D
	tas		; 1B
	and $2D93.w		; 2D 93 2D
	lda #$1C11.w		; A9 11 1C
	brk $02.b		; 00 02
	brk $64.b		; 00 64
	and $2D0C.w		; 2D 0C 2D
	and $2D.b,S		; 23 2D
	lsr $2D.b		; 46 2D
	ora [$2D.b]		; 07 2D
	jsl $2D802D.l		; 22 2D 80 2D
	pla		; 68
	and $2000.w		; 2D 00 20
	ora $2D.b		; 05 2D
	stx $25.b		; 86 25
	and $2D.b		; 25 2D
	ror $2D.b		; 66 2D
	pha		; 48
	and $2D74.w		; 2D 74 2D
	trb $332D.w		; 1C 2D 33
	and $2D56.w		; 2D 56 2D
	ora [$2D.b],Y		; 17 2D
	and ($2D.b)		; 32 2D
	bcc  45.b		; 90 2D
	sei		; 78
	and $2000.w		; 2D 00 20
	ora $2D.b,X		; 15 2D
	stx $2D.b,Y		; 96 2D
	and $2D.b,X		; 35 2D
	ror $2D.b,X		; 76 2D
	cli		; 58
	and $11AB.w		; 2D AB 11
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	stz $2D.b		; 64 2D
	bra  45.b		; 80 2D
	stx $25.b		; 86 25
	jmp ($002D.w)		; 6C 2D 00
	jsr $2D0A.w		; 20 0A 2D
	pla		; 68
	and $2D2E.w		; 2D 2E 2D
	stx $25.b		; 86 25
	adc ($2D.b,X)		; 61 2D
	stz $2D.b,X		; 74 2D
	bcc  45.b		; 90 2D
	stx $2D.b,Y		; 96 2D
	jmp ($002D.w,X)		; 7C 2D 00
	jsr $2D1A.w		; 20 1A 2D
	sei		; 78
	and $2D3E.w		; 2D 3E 2D
	stx $2D.b,Y		; 96 2D
	adc ($2D.b),Y		; 71 2D
	plb		; AB
	ora ($14.b),Y		; 11 14
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	and $2D6C.w		; 2D 6C 2D
	lsr $2D.b		; 46 2D
	sta $2D.b		; 85 2D
	phd		; 0B
	and $2D83.w		; 2D 83 2D
	brk $20.b		; 00 20
	ora $2D.b,S		; 03 2D
	sta $2D.b		; 85 2D
	adc ($2D.b,X)		; 61 2D
	trb $7C2D.w		; 1C 2D 7C
	and $2D56.w		; 2D 56 2D
	sta $2D.b,X		; 95 2D
	tas		; 1B
	and $2D93.w		; 2D 93 2D
	brk $20.b		; 00 20
	ora ($2D.b,S),Y		; 13 2D
	sta $2D.b,X		; 95 2D
	adc ($2D.b),Y		; 71 2D
	ldy $1011.w		; AC 11 10
	brk $02.b		; 00 02
	brk $65.b		; 00 65
	and $2D46.w		; 2D 46 2D
	rts		; 60

	and $2D4D.w		; 2D 4D 2D
	brk $20.b		; 00 20
	lsr $2D.b		; 46 2D
	ora ($2D.b,X)		; 01 2D
	.db $62, $2D, $75		; 62 2D 75
	and $2D56.w		; 2D 56 2D
	bvs  45.b		; 70 2D
	eor $002D.w,X		; 5D 2D 00
	jsr $2D56.w		; 20 56 2D
	ora ($2D.b),Y		; 11 2D
	adc ($2D.b)		; 72 2D
	ldy $1211.w		; AC 11 12
	brk $02.b		; 00 02
	brk $64.b		; 00 64
	and $2D85.w		; 2D 85 2D
	adc $2D.b		; 65 2D
	brk $20.b		; 00 20
	tsb $072D.w		; 0C 2D 07
	and $2D47.w		; 2D 47 2D
	stx $25.b		; 86 25
	rti		; 40

	and $2D74.w		; 2D 74 2D
	sta $2D.b,X		; 95 2D
	adc $2D.b,X		; 75 2D
	brk $20.b		; 00 20
	trb $172D.w		; 1C 2D 17
	and $2D57.w		; 2D 57 2D
	stx $2D.b,Y		; 96 2D
	bvc  45.b		; 50 2D
	plb		; AB
	ora ($16.b),Y		; 11 16
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	and $2D23.w		; 2D 23 2D
	eor [$2D.b]		; 47 2D
	ora [$2D.b]		; 07 2D
	and $2D.b,S		; 23 2D
	brk $20.b		; 00 20
	tsb $022D.w		; 0C 2D 02
	and $2D80.w		; 2D 80 2D
	stx $25.b		; 86 25
	jmp ($1C2D.w)		; 6C 2D 1C
	and $2D33.w		; 2D 33 2D
	eor [$2D.b],Y		; 57 2D
	ora [$2D.b],Y		; 17 2D
	and ($2D.b,S),Y		; 33 2D
	brk $20.b		; 00 20
	trb $122D.w		; 1C 2D 12
	and $2D90.w		; 2D 90 2D
	stx $2D.b,Y		; 96 2D
	jmp ($AB2D.w,X)		; 7C 2D AB
	ora ($16.b),Y		; 11 16
	brk $02.b		; 00 02
	brk $64.b		; 00 64
	and $2D80.w		; 2D 80 2D
	eor ($2D.b,X)		; 41 2D
	eor $0B2D.w		; 4D 2D 0B
	and $2D84.w		; 2D 84 2D
	eor $002D.w		; 4D 2D 00
	jsr $2D63.w		; 20 63 2D
	eor $0C2D.w		; 4D 2D 0C
	and $2D74.w		; 2D 74 2D
	bcc  45.b		; 90 2D
	eor ($2D.b),Y		; 51 2D
	eor $1B2D.w,X		; 5D 2D 1B
	and $2D94.w		; 2D 94 2D
	eor $002D.w,X		; 5D 2D 00
	jsr $2D73.w		; 20 73 2D
	eor $1C2D.w,X		; 5D 2D 1C
	and $11A8.w		; 2D A8 11
	jsl $000200.l		; 22 00 02 00
	rtl		; 6B

	and $2D4D.w		; 2D 4D 2D
	ora [$2D.b]		; 07 2D
	brk $20.b		; 00 20
	phd		; 0B
	and $2D83.w		; 2D 83 2D
	lsr $862D.w		; 4E 2D 86
	and $00.b		; 25 00
	jsr $2D29.w		; 20 29 2D
	stx $25.b		; 86 25
	and $2D.b,S		; 23 2D
	brk $20.b		; 00 20
	brk $2D.b		; 00 2D
	ora $2D852D.l		; 0F 2D 85 2D
	ora [$2D.b]		; 07 2D
	tda		; 7B
	and $2D5D.w		; 2D 5D 2D
	ora [$2D.b],Y		; 17 2D
	brk $20.b		; 00 20
	tas		; 1B
	and $2D93.w		; 2D 93 2D
	lsr $962D.w,X		; 5E 2D 96
	and $2000.w		; 2D 00 20
	and $962D.w,Y		; 39 2D 96
	and $2D33.w		; 2D 33 2D
	brk $20.b		; 00 20
	bpl  45.b		; 10 2D
	ora $2D952D.l,X		; 1F 2D 95 2D
	ora [$2D.b],Y		; 17 2D
	tax		; AA
	ora ($1A.b),Y		; 11 1A
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	and $2D02.w		; 2D 02 2D
	bra  45.b		; 80 2D
	eor $8A2D.w		; 4D 2D 8A
	and $2D4D.w		; 2D 4D 2D
	eor $20002D.l		; 4F 2D 00 20
	rol $0B2D.w		; 2E 2D 0B
	and $2D83.w		; 2D 83 2D
	rol $4A2D.w		; 2E 2D 4A
	and $2D1C.w		; 2D 1C 2D
	ora ($2D.b)		; 12 2D
	bcc  45.b		; 90 2D
	eor $9A2D.w,X		; 5D 2D 9A
	and $2D5D.w		; 2D 5D 2D
	eor $20002D.l,X		; 5F 2D 00 20
	rol $1B2D.w,X		; 3E 2D 1B
	and $2D93.w		; 2D 93 2D
	rol $5A2D.w,X		; 3E 2D 5A
	and $11AC.w		; 2D AC 11
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	pha		; 48
	and $2D24.w		; 2D 24 2D
	phb		; 8B
	and $2000.w		; 2D 00 20
	brk $2D.b		; 00 2D
	ora $2D852D.l		; 0F 2D 85 2D
	ora [$2D.b]		; 07 2D
	cli		; 58
	and $2D34.w		; 2D 34 2D
	txy		; 9B
	and $2000.w		; 2D 00 20
	bpl  45.b		; 10 2D
	ora $2D952D.l,X		; 1F 2D 95 2D
	ora [$2D.b],Y		; 17 2D
	tsb $022D.w		; 0C 2D 02
	and $2D80.w		; 2D 80 2D
	eor $8A2D.w		; 4D 2D 8A
	and $2D4D.w		; 2D 4D 2D
	eor $20002D.l		; 4F 2D 00 20
	rol $0B2D.w		; 2E 2D 0B
	and $2D83.w		; 2D 83 2D
	rol $4A2D.w		; 2E 2D 4A
	and $2D1C.w		; 2D 1C 2D
	ora ($2D.b)		; 12 2D
	bcc  45.b		; 90 2D
	eor $9A2D.w,X		; 5D 2D 9A
	and $2D5D.w		; 2D 5D 2D
	eor $20002D.l,X		; 5F 2D 00 20
	rol $1B2D.w,X		; 3E 2D 1B
	and $2D93.w		; 2D 93 2D
	rol $5A2D.w,X		; 3E 2D 5A
	and $11AC.w		; 2D AC 11
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	pha		; 48
	and $2D24.w		; 2D 24 2D
	phb		; 8B
	and $2000.w		; 2D 00 20
	brk $2D.b		; 00 2D
	ora $2D852D.l		; 0F 2D 85 2D
	ora [$2D.b]		; 07 2D
	cli		; 58
	and $2D34.w		; 2D 34 2D
	txy		; 9B
	and $2000.w		; 2D 00 20
	bpl  45.b		; 10 2D
	ora $2D952D.l,X		; 1F 2D 95 2D
	ora [$2D.b],Y		; 17 2D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF6.l,X		; FF F6 FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $104000.l,X		; FF 00 40 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	ldy #$0000.w		; A0 00 00
	brk $01.b		; 00 01
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
	php		; 08
	tsb $01.b		; 04 01
	rti		; 40

	bpl   0.b		; 10 00
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bit #$0000.w		; 89 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	cpy #$0001.w		; C0 01 00
	bpl   8.b		; 10 08
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
	bra   9.b		; 80 09
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
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
	brk $08.b		; 00 08
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
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
	tsb $40.b		; 04 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora ($10.b)		; 12 10
	ora ($80.b,X)		; 01 80
	bpl  32.b		; 10 20
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
	clc		; 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	rti		; 40

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
	cop $00.b		; 02 00
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
	asl $00.b		; 06 00
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
	asl A		; 0A
	rti		; 40

	brk $08.b		; 00 08
	cmp ($00.b),Y		; D1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $02.b		; 00 02
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $00		; Opcode 00 overrunning bank boundry at 02FFFF. Skipping.
.ENDS
