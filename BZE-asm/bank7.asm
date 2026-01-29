.BANK 7 SLOT 0
.ORG $0000

.SECTION "Bank7" FORCE

	sbc $0034.w,X		; FD 34 00
	sbc $3813F8.l,X		; FF F8 13 38
	sec		; 38
	mvp $FE,$64		; 44 64 FE
	inc $FE7C.w,X		; FE 7C FE
	cmp $F8F05D.l,X		; DF 5D F0 F8
	sei		; 78
	sty $F0.b		; 84 F0
	jsr ($FC78.w,X)		; FC 78 FC
	cpx #$F8.b		; E0 F8
	ora $F460.w		; 0D 60 F4
	cpx #$F8.b		; E0 F8
	ora $1860.w		; 0D 60 18
	inc $C8F0.w,X		; FE F0 C8
	.db $82, $60, $AE		; 82 60 AE
	sbc [$E4.b],Y		; F7 E4
	beq  96.b		; F0 60
	jsr ($F8D0.w,X)		; FC D0 F8
	bpl -16.b		; 10 F0
	jsr ($64E6.w,X)		; FC E6 64
	txs		; 9A
	ldy #$F8.b		; A0 F8
	tsb $3C7E.w		; 0C 7E 3C
	wai		; CB
	and #$42.b		; 29 42
	clc		; 18
	bit $FCFE.w,X		; 3C FE FC
	beq -10.b		; F0 F6
	cpx #$68.b		; E0 68
	dec $C210.w		; CE 10 C2
	bvs  -8.b		; 70 F8
	beq -74.b		; F0 B6
	bcc -39.b		; 90 D9
	plp		; 28
	lda ($FE.b)		; B2 FE
	cpy #$FE.b		; C0 FE
	stz $C4.b,X		; 74 C4
	bcc  -1.b		; 90 FF
	ora $54.b,S		; 03 54
	bcs -18.b		; B0 EE
	inc $F06C.w,X		; FE 6C F0
	jsr ($FF90.w,X)		; FC 90 FF
	sbc ($20.b,X)		; E1 20
	inc $0AF8.w,X		; FE F8 0A
	dec $009A.w,X		; DE 9A 00
	inc $F0E5.w		; EE E5 F0
	sed		; F8
	ora #$00.b		; 09 00
	bra  76.b		; 80 4C
	pha		; 48
	beq  62.b		; F0 3E
	brk $D8.b		; 00 D8
	beq  -2.b		; F0 FE
	cpy $F0C8.w		; CC C8 F0
	jsr ($FD96.w,X)		; FC 96 FD
	brk $42.b		; 00 42
	stz $383C.w,X		; 9E 3C 38
	beq  -8.b		; F0 F8
	asl A		; 0A
	ror $2090.w,X		; 7E 90 20
	bne 120.b		; D0 78
	beq -100.b		; F0 9C
	bne  -8.b		; D0 F8
	phd		; 0B
	pha		; 48
	inc $7801.w,X		; FE 01 78
	clc		; 18
	bit $3C.b		; 24 3C
	sec		; 38
	beq  -4.b		; F0 FC
	cli		; 58
	plx		; FA
	brk $FE.b		; 00 FE
	ldy $30.b		; A4 30
	pha		; 48
	brk $30.b		; 00 30
	beq   0.b		; F0 00
	pha		; 48
	rol $363A.w,X		; 3E 3A 36
	cpy $06A4.w		; CC A4 06
	bra -80.b		; 80 B0
	sec		; 38
	sbc $FEA0.w,X		; FD A0 FE
	rts		; 60

	sed		; F8
	tsb $F0E6.w		; 0C E6 F0
	eor $FF.b,X		; 55 FF
	ldx #$FD.b		; A2 FD
	beq  -1.b		; F0 FF
	cpx #$F8.b		; E0 F8
	ora #$90.b		; 09 90
	jsr ($FE20.w,X)		; FC 20 FE
	mvp $44,$FE		; 44 FE 44
	inc $F660.w		; EE 60 F6
	lda $703E.w		; AD 3E 70
	sei		; 78
	cpy #$F7.b		; C0 F7
	ror $F0C0.w,X		; 7E C0 F0
	asl A		; 0A
	ldy #$F7.b		; A0 F7
	cpx #$F0.b		; E0 F0
	phd		; 0B
	jmp ($38FC.w)		; 6C FC 38
	jmp ($D770.w,X)		; 7C 70 D7
	inc $64F0.w,X		; FE F0 64
	bne -12.b		; D0 F4
	bit $F07E.w,X		; 3C 7E F0
	sbc $F150.w,X		; FD 50 F1
	and [$0C.b],Y		; 37 0C
	tsb $0CFE.w		; 0C FE 0C
	asl $FFC0.w,X		; 1E C0 FF
	bmi  68.b		; 30 44
	pha		; 48
	jsr ($5FCF.w,X)		; FC CF 5F
	inc $7830.w,X		; FE 30 78
	jsr $F077.w		; 20 77 F0
	ora $03.b,S		; 03 03
	tsb $06.b		; 04 06
	ora $FEFCFE.l		; 0F FE FC FE
	bit $F0.b,X		; 34 F0
	sta $464887.l		; 8F 87 48 46
	sbc $CF07FE.l		; EF FE 07 CF
	adc $E3F0FC.l,X		; 7F FC F0 E3
	cmp $24.b,S		; C3 24
	asl $EF.b		; 06 EF
	sep #$CF		; E2 CF
	stx $CF.b		; 86 CF
	rts		; 60

	ora ($C0.b)		; 12 C0
	sed		; F8
	bne -16.b		; D0 F0
	ora $2C98.w		; 0D 98 2C
	inc $9366.w,X		; FE 66 93
	sbc ($99.b),Y		; F1 99
	sec		; 38
	eor [$40.b]		; 47 40
	beq -16.b		; F0 F0
	tsb $35F6.w		; 0C F6 35
	jmp ($711C.w,X)		; 7C 1C 71
	and ($FE.b,X)		; 21 FE
	jmp $4434.w		; 4C 34 44
	tsx		; BA
	bcs -16.b		; B0 F0
	ora $5200FE.l		; 0F FE 00 52
	bra 114.b		; 80 72
	bit $FE34.w,X		; 3C 34 FE
	jsl $668E83.l		; 22 83 8E 66
	php		; 08
	bit $E3.b,X		; 34 E3
	beq  -4.b		; F0 FC
	tsb $F2.b		; 04 F2
	stz $8A.b,X		; 74 8A
	and ($02.b,X)		; 21 02
	cpy #$64.b		; C0 64
	beq  16.b		; F0 10
	bit $0CFE.w		; 2C FE 0C
	phb		; 8B
	bcs  76.b		; B0 4C
	lda ($FE.b)		; B2 FE
	brk $CE.b		; 00 CE
	cpy #$F8.b		; C0 F8
	asl $A000.w		; 0E 00 A0
	bne -28.b		; D0 E4
	dec A		; 3A
	inc $F090.w,X		; FE 90 F0
	ora #$E8.b		; 09 E8
	sbc $1EFDFF.l,X		; FF FF FD 1E
	rts		; 60

	pea $FF67.w		; F4 67 FF
	sta ($FF.b)		; 92 FF
	sty $FE.b,X		; 94 FE
	tya		; 98
	sbc $0F99.w,X		; FD 99 0F
	asl $7666.w		; 0E 66 76
	bit #$00.b		; 89 00
	ror $F0.b,X		; 76 F0
	clc		; 18
	inc $0906.w,X		; FE 06 09
	bra -13.b		; 80 F3
	tsb $F008.w		; 0C 08 F0
	cmp $4616C6.l		; CF C6 16 46
	brk $64.b		; 00 64
	lda #$0C.b		; A9 0C
	php		; 08
	beq -32.b		; F0 E0
	sbc $00E9.w,X		; FD E9 00
	sta $080C.w,X		; 9D 0C 08
	lda ($FD.b)		; B2 FD
	beq  -9.b		; F0 F7
	eor [$EF.b]		; 47 EF
	adc $83F00F.l		; 6F 0F F0 83
	sta $44.b,S		; 83 44
	beq  -4.b		; F0 FC
	stx $E0.b		; 86 E0
	pea $C0E0.w		; F4 E0 C0
	jsr $0E78.w		; 20 78 0E
	jsr ($C0F8.w,X)		; FC F8 C0
	bra -64.b		; 80 C0
	beq   6.b		; F0 06
	beq -64.b		; F0 C0
	ldx #$BE.b		; A2 BE
	ora [$0F.b]		; 07 0F
	ora $07.b,S		; 03 07
	inc $C081.w,X		; FE 81 C0
	beq  78.b		; F0 4E
	ldx #$D2.b		; A2 D2
	stx $D0.b,Y		; 96 D0
	sbc $0004.w,X		; FD 04 00
	ror $B4F0.w		; 6E F0 B4
	inc $817C.w,X		; FE 7C 81
	plx		; FA
	beq  99.b		; F0 63
	eor $A4.b,S		; 43 A4
	bcs  -4.b		; B0 FC
	dec $8003.w,X		; DE 03 80
	beq  14.b		; F0 0E
	cpy #$C2.b		; C0 C2
	inc $864C.w,X		; FE 4C 86
	bvs  -9.b		; 70 F7
	cpx #$58.b		; E0 58
	bra  -3.b		; 80 FD
	sta [$80.b]		; 87 80
	lda #$87.b		; A9 87
	eor ($E3.b,X)		; 41 E3
	inc $5EC1.w,X		; FE C1 5E
	jsr ($C6EE.w,X)		; FC EE C6
	and #$A6.b		; 29 A6
	inx		; E8
	lda [$87.b]		; A7 87
	inc $FDA0.w,X		; FE A0 FD
	rts		; 60

	rti		; 40

	ldy #$40.b		; A0 40
	cpx #$FE.b		; E0 FE
	tsb $50.b		; 04 50
	cpy #$6A.b		; C0 6A
	sbc $2A08B4.l,X		; FF B4 08 2A
	jsr ($D410.w,X)		; FC 10 D4
	ldy $F830.w		; AC 30 F8
	ora $30CE.w		; 0D CE 30
	sed		; F8
	ora $FE6A.w		; 0D 6A FE
	beq -14.b		; F0 F2
	ora $8680.w		; 0D 80 86
	eor #$F0.b		; 49 F0
	sbc ($8F.b,S),Y		; F3 8F
	ldy $01FE.w		; AC FE 01
	pha		; 48
	sty $A9.b		; 84 A9
	jmp ($1C78.w,X)		; 7C 78 1C
	cpx $37F5.w		; EC F5 37
	brk $0C.b		; 00 0C
	sbc $0301.w,X		; FD 01 03
	inc $02FD.w,X		; FE FD 02
	inc $10F3.w,X		; FE F3 10
	ora [$F0.b]		; 07 F0
	cmp ($FE.b)		; D2 FE
	eor #$AC.b		; 49 AC
	brk $39.b		; 00 39
	tay		; A8
	beq -88.b		; F0 A8
	inc $8EB0.w,X		; FE B0 8E
	tay		; A8
	brk $F0.b		; 00 F0
	sta ($F5.b)		; 92 F5
	bcs  -1.b		; B0 FF
	bvs -16.b		; 70 F0
	ora #$FE.b		; 09 FE
.ACCU 16
	rep #$20		; C2 20
	php		; 08
	bne  -8.b		; D0 F8
	phd		; 0B
	inc $6E00.w,X		; FE 00 6E
	beq  24.b		; F0 18
	jsr ($82C6.w,X)		; FC C6 82
	inc $D0A2.w,X		; FE A2 D0
	sbc [$A0.b]		; E7 A0
	sed		; F8
	phd		; 0B
	tsb $0620.w		; 0C 20 06
	bpl -30.b		; 10 E2
	asl $FC16.w,X		; 1E 16 FC
	asl $08A0.w		; 0E A0 08
	adc ($55.b),Y		; 71 55
	bcs  -8.b		; B0 F8
	asl $0712.w		; 0E 12 07
	sta $F0F4B8.l		; 8F B8 F4 F0
	inc $F8A0.w,X		; FE A0 F8
	ora #$FC60.w		; 09 60 FC
	ora $002A.w		; 0D 2A 00
	sed		; F8
	ora $F5F0.w		; 0D F0 F5
	stx $F8A2.w		; 8E A2 F8
	pea $F570.w		; F4 70 F5
	bvc -15.b		; 50 F1
	stz $BE.b		; 64 BE
	sbc ($C7.b)		; F2 C7
	dec $6FF0.w,X		; DE F0 6F
	eor [$A8.b]		; 47 A8
	bvc -81.b		; 50 AF
	bvs -16.b		; 70 F0
	tsb $28E4.w		; 0C E4 28
	cpx #$E4.b		; E0 E4
	cpy #$FD.b		; C0 FD
	bra -128.b		; 80 80
	rti		; 40

	ror A		; 6A
	jsr ($3EAA.w,X)		; FC AA 3E
	beq -19.b		; F0 ED
	bmi -15.b		; 30 F1
	bra -16.b		; 80 F0
	tsb $F300.w		; 0C 00 F3
	bpl -16.b		; 10 F0
	asl A		; 0A
	jsr $44F1.w		; 20 F1 44
	sbc $A2EE44.l		; EF 44 EE A2
	sbc ($B0.b,X)		; E1 B0
	asl $F520.w,X		; 1E 20 F5
	sbc [$0C.b]		; E7 0C
	ora ($63.b,X)		; 01 63
.INDEX 16
	rep #$92		; C2 92
	ora ($5E.b,X)		; 01 5E
	jsr ($29D8.w,X)		; FC D8 29
	stx $C4.b		; 86 C4
	sbc #$07FE.w		; E9 FE 07
	bpl  80.b		; 10 50
	inc $04.b		; E6 04
	ora $B0AA04.l		; 0F 04 AA B0
	ldy #$69EC.w		; A0 EC 69
	ldy $B250.w		; AC 50 B2
	asl $6F.b		; 06 6F
	ora ($CF.b)		; 12 CF
	cli		; 58
	jsr ($00AA.w,X)		; FC AA 00
	rti		; 40

	beq  17.b		; F0 11
	bcs -12.b		; B0 F4
	ldy #$0CF0.w		; A0 F0 0C
	cpy #$F0F1.w		; C0 F1 F0
	sed		; F8
	ora #$B62C.w		; 09 2C B6
	tsb $28.b		; 04 28
	bne -15.b		; D0 F1
	cmp $E9F5D0.l		; CF D0 F5 E9
	ldy #$62F1.w		; A0 F1 62
	tax		; AA
	inc A		; 1A
	bit $2A.b,X		; 34 2A
	sbc #$F19A.w		; E9 9A F1
	ldy #$D0F5.w		; A0 F5 D0
	sed		; F8
	ora #$F170.w		; 09 70 F1
	.db $82, $E9, $43		; 82 E9 43
	brk $F7.b		; 00 F7
	cli		; 58
	lsr $44.b		; 46 44
	mvp $B0,$AB		; 44 AB B0
	pea $C381.w		; F4 81 C3
	dec A		; 3A
	and #$6AC1.w		; 29 C1 6A
	sbc #$F250.w		; E9 50 F2
	sta ($42.b,X)		; 81 42
	beq  80.b		; F0 50
	beq   9.b		; F0 09
	ldy #$7AE1.w		; A0 E1 7A
	dec A		; 3A
	.db $42, $60		; 42 60
	sbc [$E9.b],Y		; F7 E9
	cmp [$28.b]		; C7 28
	ldy #$0703.w		; A0 03 07
	ora ($E0.b,X)		; 01 E0
	sta ($36.b)		; 92 36
	bit $04.b,X		; 34 04
	phd		; 0B
	bvs -28.b		; 70 E4
	mvn $50,$72		; 54 72 50
	jmp.w [$D0EB]		; DC EB D0
	sbc $67FF.w		; ED FF 67
	sty $10.b,X		; 94 10
	inx		; E8
	tsb $D970.w		; 0C 70 D9
	lda $44.b,X		; B5 44
	tay		; A8
	inc $F800.w,X		; FE 00 F8
	phd		; 0B
	bvc -39.b		; 50 D9
	eor $4AEE64.l		; 4F 64 EE 4A
	dex		; CA
	and ($FE.b,X)		; 21 FE
	beq -32.b		; F0 E0
	ora #$ECD6.w		; 09 D6 EC
	beq   7.b		; F0 07
	sty $01.b,X		; 94 01
	tay		; A8
	lsr A		; 4A
	dey		; 88
	pha		; 48
	xba		; EB
	cpx #$60E4.w		; E0 E4 60
	pea $E28C.w		; F4 8C E2
	bcc -32.b		; 90 E0
	ora #$5555.w		; 09 55 55
	ldx #$BE06.w		; A2 06 BE
	sbc ($D0.b),Y		; F1 D0
.ACCU 8
	sep #$A0		; E2 A0
	jsr ($EAEC.w,X)		; FC EC EA
	rti		; 40

	beq   9.b		; F0 09
	cpx #$0AF8.w		; E0 F8 0A
	cpx #$75EB.w		; E0 EB 75
	eor $E4C8.w,X		; 5D C8 E4
	bpl  -8.b		; 10 F8
	ora #$C0.b		; 09 C0
	jmp.w [$4F06]		; DC 06 4F
	brk $E8.b		; 00 E8
	ora $FE68.w		; 0D 68 FE
	bra  64.b		; 80 40
	cpy #$83E4.w		; C0 E4 83
	asl $42.b		; 06 42
	sbc $8EE3.w		; ED E3 8E
	beq -28.b		; F0 E4
	bcs -25.b		; B0 E7
	.db $82, $FE, $05		; 82 FE 05
	eor $F0.b,X		; 55 F0
	sbc ($D0.b)		; F2 D0
	sed		; F8
	ora #$FE.b		; 09 FE
	sty $E2.b		; 84 E2
	inx		; E8
	dec $EE30.w,X		; DE 30 EE
	rts		; 60

	cpx #$C30C.w		; E0 0C C3
	sei		; 78
	bvc -34.b		; 50 DE
	sbc [$84.b]		; E7 84
	ora ($E3.b,X)		; 01 E3
	ldy $81C3.w,X		; BC C3 81
	cmp $75.b,S		; C3 75
	lda $0DE000.l		; AF 00 E0 0D
	bcs -35.b		; B0 DD
	cpy #$04F1.w		; C0 F1 04
	sbc $CFE9C0.l		; EF C0 E9 CF
	sta [$C7.b]		; 87 C7
	bcs -40.b		; B0 D8
	phd		; 0B
	eor ($A9.b)		; 52 A9
	bcc -17.b		; 90 EF
	jsr $FEEB.w		; 20 EB FE
	cmp [$60.b]		; C7 60
	cld		; D8
	asl A		; 0A
	tya		; 98
	ora [$BF.b]		; 07 BF
	phx		; DA
	beq -11.b		; F0 F5
	sta [$48.b]		; 87 48
	rti		; 40

	sbc $80E140.l		; EF 40 E1 80
	cld		; D8
	phd		; 0B
	lsr A		; 4A
	sbc ($70.b)		; F2 70
	sbc [$66.b],Y		; F7 66
	jsr $81DC.w		; 20 DC 81
	phd		; 0B
	eor $E7.b,S		; 43 E7
	inc $43F0.w,X		; FE F0 43
	jsr $0EDC.w		; 20 DC 0E
	asl $DE.b,X		; 16 DE
	cpx #$0FE0.w		; E0 E0 0F
	cpy #$5CE0.w		; C0 E0 5C
	bpl  -3.b		; 10 FD
.INDEX 8
	sep #$D0		; E2 D0
	sbc ($05.b),Y		; F1 05
	cmp $40D2.w,X		; DD D2 40
	cpx #$09.b		; E0 09
	jmp $E050.w		; 4C 50 E0
	ora $D460.w		; 0D 60 D4
	ora $C7.b,S		; 03 C7
	bne -19.b		; D0 ED
	ror A		; 6A
	eor $EB.b,X		; 55 EB
	ldy #$F4.b		; A0 F4
	bcc -24.b		; 90 E8
	ora #$80.b		; 09 80
	sbc #$87.b		; E9 87
	ldy #$D8.b		; A0 D8
	phd		; 0B
	bmi -20.b		; 30 EC
	brk $E8.b		; 00 E8
	tsb $E910.w		; 0C 10 E9
	cop $51.b		; 02 51
	jmp ($E0FE.w)		; 6C FE E0
	sbc $3C22.w,X		; FD 22 3C
	sbc ($54.b)		; F2 54
	plb		; AB
	inc $D710.w,X		; FE 10 D7
	bcc -40.b		; 90 D8
	ora #$40.b		; 09 40
	sbc #$81.b		; E9 81
	rti		; 40

	inx		; E8
	phd		; 0B
	rti		; 40

	pea $0AAA.w		; F4 AA 0A
	bvc -11.b		; 50 F5
	beq -28.b		; F0 E4
	lda ($EC.b)		; B2 EC
	bne -15.b		; D0 F1
	bmi -28.b		; 30 E4
	cpx #$EF.b		; E0 EF
	bvc -21.b		; 50 EB
	ldy #$AA.b		; A0 AA
	ror $FE.b		; 66 FE
	bcs -11.b		; B0 F5
	bpl  -1.b		; 10 FF
	bra -19.b		; 80 ED
	cpy #$EB.b		; C0 EB
	lsr $FC.b,X		; 56 FC
	ldy #$2F.b		; A0 2F
	cpx #$F8.b		; E0 F8
	ora $00A1.w		; 0D A1 00
	cpx #$0B.b		; E0 0B
	bpl -24.b		; 10 E8
	phd		; 0B
	sty $EF.b		; 84 EF
	sty $CE.b		; 84 CE
	trb $24D1.w		; 1C D1 24
	mvn $83,$02		; 54 02 83
	tay		; A8
	asl $D5F0.w		; 0E F0 D5
	bvs  -8.b		; 70 F8
	ora #$AB.b		; 09 AB
	asl A		; 0A
	cpx #$E9.b		; E0 E9
	bra  96.b		; 80 60
	cpx #$0E.b		; E0 0E
	bvc -46.b		; 50 D2
	stx $FE.b		; 86 FE
	cpx #$FD.b		; E0 FD
	jsr $09F8.w		; 20 F8 09
	pea $FEE1.w		; F4 E1 FE
	bpl -125.b		; 10 83
	cmp [$81.b]		; C7 81
	cmp $CEFE84.l		; CF 84 FE CE
	sty $AA.b		; 84 AA
	tax		; AA
	phk		; 4B
	cpy #$F1.b		; C0 F1
	cmp ($EC.b)		; D2 EC
	bcs -40.b		; B0 D8
	asl A		; 0A
	jsr $09E8.w		; 20 E8 09
	brk $C8.b		; 00 C8
	tsb $D910.w		; 0C 10 D9
	nop		; EA
	pea $AC9A.w		; F4 9A AC
	bmi -11.b		; 30 F5
	rti		; 40

	cmp $86EDD0.l		; CF D0 ED 86
	cpy #$00.b		; C0 00
	sbc ($C3.b)		; F2 C3
	brk $F4.b		; 00 F4
	lsr $15.b,X		; 56 15
	ldy #$D1.b		; A0 D1
	jsr $C7DC.w		; 20 DC C7
	beq  -4.b		; F0 FC
	rti		; 40

.INDEX 8
	sep #$D2		; E2 D2
	xba		; EB
	cpy #$FD.b		; C0 FD
	ldy #$E7.b		; A0 E7
	mvn $C0,$D1		; 54 D1 C0
	brk $E0.b		; 00 E0
	ora #$B0.b		; 09 B0
	jmp.w [$CC2A]		; DC 2A CC
	bpl -43.b		; 10 D5
	ldx #$40.b		; A2 40
	sed		; F8
	tsb $AAAA.w		; 0C AA AA
	sbc ($80.b,X)		; E1 80
	cld		; D8
	phd		; 0B
	brk $EC.b		; 00 EC
	bvc -16.b		; 50 F0
	tsb $B9D0.w		; 0C D0 B9
	bmi -56.b		; 30 C8
	ora #$00.b		; 09 00
	sbc ($62.b),Y		; F1 62
	jsr ($21AA.w,X)		; FC AA 21
	bpl -48.b		; 10 D0
	asl A		; 0A
	jsr $10BD.w		; 20 BD 10
	xba		; EB
	jsr $0AE8.w		; 20 E8 0A
	bmi -23.b		; 30 E9
	asl $E4.b		; 06 E4
	ora $E20768.l		; 0F 68 07 E2
	bcc -48.b		; 90 D0
	ora #$40.b		; 09 40
	bne  12.b		; D0 0C
	inc $90.b		; E6 90
	cpy $83.b		; C4 83
	cmp [$FE.b]		; C7 FE
	eor $D5.b,X		; 55 D5
	cpy #$B8.b		; C0 B8
	ora #$E0.b		; 09 E0
	cpx $E890.w		; EC 90 E8
	ora #$A0.b		; 09 A0
	cpx $B8B0.w		; EC B0 B8
	ora #$50.b		; 09 50
	cpy $EB54.w		; CC 54 EB
	bmi -50.b		; 30 CE
	ply		; 7A
	eor ($67.b)		; 52 67
	rti		; 40

	nop		; EA
	inc $42FD.w,X		; FE FD 42
	cmp ($22.b,X)		; C1 22
	bmi -64.b		; 30 C0
	cpx #$0D.b		; E0 0D
	cpy #$F5.b		; C0 F5
	eor $D0.b,X		; 55 D0
	jsr $D0DF.w		; 20 DF D0
	iny		; C8
	ora #$70.b		; 09 70
	beq  12.b		; F0 0C
	bvc -25.b		; 50 E7
	beq -96.b		; F0 A0
	sed		; F8
	ora #$E0.b		; 09 E0
	sbc ($8A.b),Y		; F1 8A
	cmp $61.b,X		; D5 61
	beq -20.b		; F0 EC
	jsr ($DEF2.w,X)		; FC F2 DE
	lda #$90.b		; A9 90
	tax		; AA
	clv		; B8
	inc $F3F0.w,X		; FE F0 F3
	rol A		; 2A
	tay		; A8
	lsr $F010.w		; 4E 10 F0
	ora $EF70.w		; 0D 70 EF
	bcc -41.b		; 90 D7
	inc $C840.w,X		; FE 40 C8
	ora #$86.b		; 09 86
	jmp.w [$AAAA]		; DC AA AA
	bvs -17.b		; 70 EF
	cpy $70E9.w		; CC E9 70
	nop		; EA
	bcs -72.b		; B0 B8
	phd		; 0B
	bra -54.b		; 80 CA
	rts		; 60

	beq   9.b		; F0 09
	bvs -28.b		; 70 E4
	ldy #$E8.b		; A0 E8
	ora #$5E.b		; 09 5E
	eor $A0.b,X		; 55 A0
	cpx $20.b		; E4 20
	cld		; D8
	ora #$03.b		; 09 03
	sty $00.b		; 84 00
	.db $42, $C9		; 42 C9
	bpl -16.b		; 10 F0
	ora #$20.b		; 09 20
	cpx $20.b		; E4 20
	clv		; B8
	ora $DD40.w		; 0D 40 DD
	eor $95.b,X		; 55 95
	bvs -13.b		; 70 F3
	bra -84.b		; 80 AC
	rts		; 60

	sed		; F8
	ora #$16.b		; 09 16
	jsr ($E8A0.w,X)		; FC A0 E8
	ora $C5C0.w		; 0D C0 C5
	jsr $14F5.w		; 20 F5 14
	mvn $20,$70		; 54 70 20
	sed		; F8
	ora #$FA.b		; 09 FA
	sbc ($96.b)		; F2 96
	cpy #$E0.b		; C0 E0
	tsb $F180.w		; 0C 80 F1
	rts		; 60

	sbc [$45.b],Y		; F7 45
	eor $F0.b,X		; 55 F0
	lda $B890.w		; AD 90 B8
	tsb $50E0.w		; 0C E0 50
	inx		; E8
	ora $F8FE.w		; 0D FE F8
	asl A		; 0A
	jsr $D0BA.w		; 20 BA D0
	inc $15.b		; E6 15
	eor $B0.b,X		; 55 B0
	lda [$00.b],Y		; B7 00
	sbc $FD70.w		; ED 70 FD
	bra  -2.b		; 80 FE
	sbc ($70.b),Y		; F1 70
	sed		; F8
	phd		; 0B
	bcs -27.b		; B0 E5
	eor [$AB.b],Y		; 57 AB
	jsr $01FF.w		; 20 FF 01
	eor $30.b,S		; 43 30
	iny		; C8
	ora $E5F0.w		; 0D F0 E5
	rti		; 40

	cmp ($81.b),Y		; D1 81
	cpy #$DB.b		; C0 DB
	brk $FD.b		; 00 FD
	asl A		; 0A
	eor $60FF40.l,X		; 5F 40 FF 60
	sbc $B0.b,X		; F5 B0
	lda $C783FE.l,X		; BF FE 83 C7
	cmp ($EF.b,X)		; C1 EF
	cpy $80.b		; C4 80
	cpy #$0A.b		; C0 0A
	bvc  84.b		; 50 54
	ldx $F080.w		; AE 80 F0
	ora $E8A0.w		; 0D A0 E8
	ora #$F0.b		; 09 F0
	eor ($F1.b)		; 52 F1
	clc		; 18
	dec $5683.w		; CE 83 56
	inc $09C9.w		; EE C9 09
	sbc ($10.b,S),Y		; F3 10
	inc $F5F0.w,X		; FE F0 F5
	eor [$30.b]		; 47 30
	sbc $AAB0.w,X		; FD B0 AA
	eor $81.b,X		; 55 81
	rts		; 60

	cpx #$12.b		; E0 12
	bra -17.b		; 80 EF
	rti		; 40

	sbc $50F580.l,X		; FF 80 F5 50
	cmp $EA1A82.l,X		; DF 82 1A EA
	ldy #$03.b		; A0 03
	asl $A9.b		; 06 A9
	ora ($A4.b,X)		; 01 A4
	ora $F0.b,S		; 03 F0
	tax		; AA
	cld		; D8
	inc $AA81.w,X		; FE 81 AA
	tax		; AA
	.db $62, $70, $FC		; 62 70 FC
	bcc -72.b		; 90 B8
	tsb $E670.w		; 0C 70 E6
	bcs -88.b		; B0 A8
	asl A		; 0A
	cpy #$E0.b		; C0 E0
	tsb $D140.w		; 0C 40 D1
	bmi  -8.b		; 30 F8
	ora #$AA.b		; 09 AA
	eor $B0.b,X		; 55 B0
	ldy $F890.w,X		; BC 90 F8
	ora $FD80.w		; 0D 80 FD
	bra -41.b		; 80 D7
	bvc -56.b		; 50 C8
	ora #$44.b		; 09 44
	bne -45.b		; D0 D3
	bra -11.b		; 80 F5
	ldy #$D5.b		; A0 D5
	eor $55.b,X		; 55 55
	rti		; 40

	lda $D1FE.w,Y		; B9 FE D1
	bvs -56.b		; 70 C8
	phd		; 0B
	bcs -19.b		; B0 ED
	bra -15.b		; 80 F1
	rti		; 40

	cpy $FD10.w		; CC 10 FD
	bcs -93.b		; B0 A3
	eor $45.b,X		; 55 45
	jsr $0FD8.w		; 20 D8 0F
	clc		; 18
	cpx $60.b		; E4 60
	clv		; B8
	tsb $B3A0.w		; 0C A0 B3
	bvc -56.b		; 50 C8
	ora $C8C0.w		; 0D C0 C8
	tsb $1050.w		; 0C 50 10
	lda [$6E.b],Y		; B7 6E
	bra -40.b		; 80 D8
	asl A		; 0A
	bmi   3.b		; 30 03
	sta [$F0.b]		; 87 F0
	sep #$C4		; E2 C4
	tax		; AA
	tax		; AA
	bvc -33.b		; 50 DF
	ldy $B2.b		; A4 B2
	ror $BB.b		; 66 BB
	rts		; 60

	cmp $70.b,X		; D5 70
	iny		; C8
	ora #$D0.b		; 09 D0
	jmp.w [$F8FF]		; DC FF F8
	mvp $A0,$00		; 44 00 A0
	ora $10AAAA.l		; 0F AA AA 10
	sbc [$00.b]		; E7 00
	sbc $D8C0.w,X		; FD C0 D8
	asl A		; 0A
	bpl -16.b		; 10 F0
	ora $FDE0.w		; 0D E0 FD
	bne -78.b		; D0 B2
	pha		; 48
	sbc $80.b		; E5 80
	bcs  20.b		; B0 14
	lsr $E5.b,X		; 56 E5
	bmi -24.b		; 30 E8
	ora $C7EA40.l		; 0F 40 EA C7
	rti		; 40

	inx		; E8
	asl A		; 0A
	bne -46.b		; D0 D2
	tsb $C1.b		; 04 C1
	bne -46.b		; D0 D2
	beq -126.b		; F0 82
	tax		; AA
	rti		; 40

	rts		; 60

	stz $6008.w		; 9C 08 60
	lda $FF.b,X		; B5 FF
	sed		; F8
	phy		; 5A
	beq -104.b		; F0 98
	ora $09F050.l		; 0F 50 F0 09
	tax		; AA
	tax		; AA
	bpl -28.b		; 10 E4
	ldy #$B8.b		; A0 B8
	ora $0FF8F0.l		; 0F F0 F8 0F
	bvc -33.b		; 50 DF
	rts		; 60

	lda $B020.w,X		; BD 20 B0
	ora $19E090.l		; 0F 90 E0 19
	bmi -47.b		; 30 D1
	phy		; 5A
	eor $60.b,X		; 55 60
	tyx		; BB
	beq  -2.b		; F0 FE
	beq -23.b		; F0 E9
	cmp ($30.b,X)		; C1 30
	bcs  14.b		; B0 0E
	adc ($EC.b)		; 72 EC
	sbc $B061F8.l,X		; FF F8 61 B0
	dey		; 88
	ora $0AD0E0.l,X		; 1F E0 D0 0A
	eor $55.b,X		; 55 55
	bmi -64.b		; 30 C0
	trb $D0.b		; 14 D0
	cmp [$E0.b]		; C7 E0
	sbc $78E0.w,X		; FD E0 78
	ora $1F9800.l		; 0F 00 98 1F
	sbc $A07AF8.l,X		; FF F8 7A A0
	dey		; 88
	ora $0F90F0.l,X		; 1F F0 90 0F
	eor $55.b,X		; 55 55
	cpy #$A8.b		; C0 A8
	ora #$E0.b		; 09 E0
	sed		; F8
	ora $D0E450.l		; 0F 50 E4 D0
	sei		; 78
	ora $1F90D0.l		; 0F D0 90 1F
	sbc $0084F8.l,X		; FF F8 84 00
	beq  24.b		; F0 18
	bcs -51.b		; B0 CD
	cmp $57.b,X		; D5 57
	brk $80.b		; 00 80
	asl A		; 0A
	bcs -112.b		; B0 90
	trb $80.b		; 14 80
	bcc  15.b		; 90 0F
	bpl -15.b		; 10 F1
	bra -49.b		; 80 CF
	bra -63.b		; 80 C1
	jsr $00E7.w		; 20 E7 00
	ldy #$0F.b		; A0 0F
	eor $55.b,X		; 55 55
	beq -96.b		; F0 A0
	ora $0F9060.l,X		; 1F 60 90 0F
	brk $F0.b		; 00 F0
	stz $E0.b,X		; 74 E0
	ldy $F0.b		; A4 F0
	sei		; 78
	ora $0F9050.l		; 0F 50 90 0F
	beq -72.b		; F0 B8
	ora $50DA3C.l		; 0F 3C DA 50
	eor $FE.b,X		; 55 FE
	brk $E2.b		; 00 E2
	rti		; 40

	sty $98C0.w		; 8C C0 98
	ora $0F70C0.l		; 0F C0 70 0F
	bvc -96.b		; 50 A0
	ora $0F9000.l		; 0F 00 90 0F
	eor $55.b,X		; 55 55
	sbc $2064F8.l,X		; FF F8 64 20
	dey		; 88
	clc		; 18
	cpx #$B5.b		; E0 B5
	bcc -104.b		; 90 98
	inc A		; 1A
	beq -104.b		; F0 98
	ora [$18.b],Y		; 17 18
	inc $B070.w,X		; FE 70 B0
	trb $20.b		; 14 20
	beq 106.b		; F0 6A
	eor $55.b,X		; 55 55
	sbc $D01FF8.l,X		; FF F8 1F D0
	bra  25.b		; 80 19
	bpl -28.b		; 10 E4
	beq -112.b		; F0 90
	ora $0F9870.l,X		; 1F 70 98 0F
	bmi 104.b		; 30 68
	ora $0FE8E0.l		; 0F E0 E8 0F
	jsr $74F0.w		; 20 F0 74
	eor $55.b,X		; 55 55
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($0005.w,X)		; FC 05 00
	sbc $0032F8.l,X		; FF F8 32 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000087.l,X		; 1F 87 00 00
	ora ($00.b,X)		; 01 00
	ora $FE.b,S		; 03 FE
	cop $01.b		; 02 01
	inc $3207.w,X		; FE 07 32
	and $0F7301.l,X		; 3F 01 73 0F
	beq -18.b		; F0 EE
	inc $3FFE.w,X		; FE FE 3F
	inc $F2F0.w,X		; FE F0 F2
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra  -2.b		; 80 FE
	cpy #$80.b		; C0 80
	jsr ($3813.w,X)		; FC 13 38
	bra -26.b		; 80 E6
	cpx #$E0.b		; E0 E0
	inc $FEFE.w		; EE FE FE
	cpx #$1C.b		; E0 1C
	jsr ($F2FF.w,X)		; FC FF F2
	adc $385900.l,X		; 7F 00 59 38
	and $017610.l,X		; 3F 10 76 01
	cpy $7943.w		; CC 43 79
	ora [$77.b]		; 07 77
	trb $01.b		; 14 01
	phd		; 0B
	cpx #$07.b		; E0 07
	bcs  -9.b		; B0 F7
	cpx #$FF.b		; E0 FF
	cpy $F8.b		; C4 F8
	tas		; 1B
	brk $70.b		; 00 70
	brk $C8.b		; 00 C8
	bmi -16.b		; 30 F0
	brk $F0.b		; 00 F0
	jsr $0187.w		; 20 87 01
	jsr ($FA40.w,X)		; FC 40 FA
	sed		; F8
	jsr ($20EC.w,X)		; FC EC 20
	sep #$00		; E2 00
	asl $C8EE.w,X		; 1E EE C8
	sbc $0040.w,Y		; F9 40 00
	sed		; F8
	tsb $86.b		; 04 86
	ora $1020FC.l,X		; 1F FC 20 10
	beq   8.b		; F0 08
	brk $1C.b		; 00 1C
	php		; 08
	ora $00.b,X		; 15 00
	.db $62, $60, $FE		; 62 60 FE
	ora $15FE.w,X		; 1D FE 15
	sbc ($FF.b,S),Y		; F3 FF
	bpl 126.b		; 10 7E
	sbc $FEFE.w,Y		; F9 FE FE
	sbc $9E000C.l,X		; FF 0C 00 9E
	tsb $8C5E.w		; 0C 5E 8C
	sed		; F8
	cpy #$FE.b		; C0 FE
	phx		; DA
	dey		; 88
	cmp ($80.b)		; D2 80
	dec $C5.b,X		; D6 C5
	sbc ($E1.b),Y		; F1 E1
	inc $FE8C.w		; EE 8C FE
	dey		; 88
	tsb $80.b		; 04 80
	tsb $18FE.w		; 0C FE 18
	brk $1F.b		; 00 1F
	ror $182C.w,X		; 7E 2C 18
	adc $B318.w,X		; 7D 18 B3
	bvs -128.b		; 70 80
	asl $3B01.w,X		; 1E 01 3B
	ora $37.b		; 05 37
	ora #$33.b		; 09 33
	jsr ($FCC0.w,X)		; FC C0 FC
	ora $B0FE.w		; 0D FE B0
	ora $3000.w,Y		; 19 00 30
	brk $48.b		; 00 48
	sbc $DC3040.l,X		; FF 40 30 DC
	bmi  62.b		; 30 3E
	jsr ($B47E.w,X)		; FC 7E B4
	plx		; FA
	bcs  -2.b		; B0 FE
	brk $3F.b		; 00 3F
	rti		; 40

	inc $FCFE.w		; EE FE FC
	brk $B4.b		; 00 B4
	brk $B0.b		; 00 B0
	tsb $10.b		; 04 10
	bit $40FE.w,X		; 3C FE 40
	sbc $33001F.l,X		; FF 1F 00 33
	bpl 124.b		; 10 7C
	cpx #$C2.b		; E0 C2
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $D2FF0D.l		; 0F 0D FF D2
	ora [$0F.b],Y		; 17 0F
	inc $FFF7.w,X		; FE F7 FF
	sed		; F8
	brk $3C.b		; 00 3C
	sed		; F8
	sei		; 78
	brk $F9.b		; 00 F9
	and ($E9.b)		; 32 E9
	inc $80F0.w,X		; FE F0 80
	inc $F6FE.w		; EE FE F6
	rti		; 40

	sed		; F8
	ora #$3D.b		; 09 3D
	sbc $5B007D.l		; EF 7D 00 5B
	tsb $77.b		; 04 77
	asl A		; 0A
	rti		; 40

	sed		; F8
	phd		; 0B
	bit $2A00.w		; 2C 00 2A
	rti		; 40

	sed		; F8
	tsb $80F2.w		; 0C F2 80
	inc $A0.b,X		; F6 A0
	sta $1F.b,S		; 83 1F
	rti		; 40

	sed		; F8
	ora $F5A0.w		; 0D A0 F5
	bra  -9.b		; 80 F7
	ror $9B01.w,X		; 7E 01 9B
	ora $73.b		; 05 73
	sty $4BFE.w		; 8C FE 4B
	bra -16.b		; 80 F0
	asl A		; 0A
	adc $803C.w,X		; 7D 3C 80
	inc $4C.b,X		; F6 4C
	bra -36.b		; 80 DC
	dey		; 88
	sed		; F8
	cmp $9087.w,Y		; D9 87 90
	beq -64.b		; F0 C0
	stx $FC.b		; 86 FC
	dey		; 88
	brk $90.b		; 00 90
	brk $F1.b		; 00 F1
	sbc $0063F0.l,X		; FF F0 63 00
	mvn $3D,$20		; 54 20 3D
	bpl  27.b		; 10 1B
	brk $CF.b		; 00 CF
	bit $5D43.w		; 2C 43 5D
	ora $C0.b,S		; 03 C0
	and [$3F.b],Y		; 37 3F
	lda [$B2.b],Y		; B7 B2
	ora [$00.b]		; 07 00
	asl $7E.b		; 06 7E
	sbc ($23.b),Y		; F1 23
	ora ($0C.b)		; 12 0C
	inc $D2.b,X		; F6 D2
	ora ($3E.b)		; 12 3E
	jsr ($020F.w,X)		; FC 0F 02
	jsr ($F8FC.w,X)		; FC FC F8
	pea $FE40.w		; F4 40 FE
	rts		; 60

	jsr ($0DF2.w,X)		; FC F2 0D
	ora ($3C.b),Y		; 11 3C
	rti		; 40

	php		; 08
	inc $0A3F.w,X		; FE 3F 0A
	cop $92.b		; 02 92
	inc $8002.w,X		; FE 02 80
	pei ($12.b)		; D4 12
	lsr $00.b		; 46 00
	asl A		; 0A
	sbc $FF03.w,X		; FD 03 FF
	jsr ($CB0A.w,X)		; FC 0A CB
	inc $6200.w,X		; FE 00 62
	jmp ($12FE.w,X)		; 7C FE 12
	tsb $FFFF.w		; 0C FF FF
	ora $F8.b,S		; 03 F8
	ora #$00.b		; 09 00
	sbc $1F6F00.l,X		; FF 00 6F 1F
	and $1E3E19.l,X		; 3F 19 3E 1E
	rol $3F18.w,X		; 3E 18 3F
	clc		; 18
	and ($F7.b,S),Y		; 33 F7
	adc $10.b,S		; 63 10
	ora $B26000.l,X		; 1F 00 60 B2
	sbc ($19.b),Y		; F1 19
	brk $1E.b		; 00 1E
	ora ($18.b,X)		; 01 18
	inc $1F10.w,X		; FE 10 1F
	inc $E9B2.w,X		; FE B2 E9
	inc $9C00.w,X		; FE 00 9C
	bra -106.b		; 80 96
	pla		; 68
	bpl -24.b		; 10 E8
	bpl  -8.b		; 10 F8
	bpl -29.b		; 10 E3
	ora [$38.b]		; 07 38
	beq -16.b		; F0 F0
	ora $80.b,S		; 03 80
	bvs   0.b		; 70 00
	bpl   0.b		; 10 00
	sbc [$20.b],Y		; F7 20
	adc ($FC.b,S),Y		; 73 FC
	plx		; FA
	asl $1DF1.w		; 0E F1 1D
	inc $3839.w,X		; FE 39 38
	pha		; 48
.INDEX 8
	sep #$10		; E2 10
	bvs  32.b		; 70 20
	rep #$08		; C2 08
	inc $FE.b,X		; F6 FE
	sbc $E9D3E1.l,X		; FF E1 D3 E9
	brk $DE.b		; 00 DE
	bra -38.b		; 80 DA
	sty $52.b		; 84 52
	tsb $0C56.w		; 0C 56 0C
	dec $9A0C.w,X		; DE 0C 9A
	php		; 08
	nop		; EA
	ora ($12.b,X)		; 01 12
	dec $F1.b		; C6 F1
	tsb $C1F2.w		; 0C F2 C1
	sbc ($8C.b,S),Y		; F3 8C
	tsb $0C.b		; 04 0C
	sbc $E0807E.l,X		; FF 7E 80 E0
	adc [$19.b]		; 67 19
	sbc $1BFF1D.l		; EF 1D FF 1B
	.db $82, $FE, $FF		; 82 FE FF
	ora ($3D.b)		; 12 3D
	clc		; 18
	bit $10.b,X		; 34 10
	clc		; 18
	brk $39.b		; 00 39
	brk $5D.b		; 00 5D
	txa		; 8A
	sbc #$82.b		; E9 82
	bit $FE.b,X		; 34 FE
	pea $C110.w		; F4 10 C1
	sbc #$CE.b		; E9 CE
	cpy #$7A.b		; C0 7A
	tsb $66.b		; 04 66
	trb $1FCE.w		; 1C CE 1F
	.db $82, $34, $DC		; 82 34 DC
	bmi 120.b		; 30 78
	bmi  48.b		; 30 30
	cpy #$34.b		; C0 34
	inc $3EFA.w,X		; FE FA 3E
	ora $F1.b,S		; 03 F1
	sbc $EAF7EA.l,X		; FF EA F7 EA
	brk $17.b		; 00 17
	ora $FD000F.l		; 0F 0F 00 FD
	and $307300.l,X		; 3F 00 73 30
	pla		; 68
	ldy $06FC.w,X		; BC FC 06
	pea $FC00.w		; F4 00 FC
	bmi  64.b		; 30 40
	iny		; C8
	cpy #$F0.b		; C0 F0
	bmi 108.b		; 30 6C
	brk $FD.b		; 00 FD
	cmp $F032.w		; CD 32 F0
	jsr ($30C0.w,X)		; FC C0 30
	brk $F8.b		; 00 F8
	ora #$0C.b		; 09 0C
	lda $F1B9B7.l,X		; BF B7 B9 F1
	sbc [$0A.b],Y		; F7 0A
	sbc $40DD08.l,X		; FF 08 DD 40
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	brk $48.b		; 00 48
	rti		; 40

	sed		; F8
	asl $FDFA.w		; 0E FA FD
	sbc $0DF840.l,X		; FF 40 F8 0D
	bit $F840.w		; 2C 40 F8
	ora $0D17.w		; 0D 17 0D
	ora $193F09.l,X		; 1F 09 3F 19
	dec A		; 3A
	bpl 114.b		; 10 72
	jsr $40E7.w		; 20 E7 40
	sei		; 78
	and $0D82CB.l,X		; 3F CB 82 0D
	brk $09.b		; 00 09
	cpy #$F1.b		; C0 F1
	bpl   1.b		; 10 01
	jsr $4001.w		; 20 01 40
	sty $FB.b		; 84 FB
	ror $E007.w,X		; 7E 07 E0
	cpx #$80.b		; E0 80
	ldy #$CF.b		; A0 CF
	sbc ($68.b),Y		; F1 68
	bpl -36.b		; 10 DC
	and $CA08F6.l		; 2F F6 08 CA
	brk $46.b		; 00 46
	bra 124.b		; 80 7C
	sbc ($71.b)		; F2 71
	ldy #$05.b		; A0 05
	sbc ($88.b),Y		; F1 88
	tsb $C2.b		; 04 C2
	sbc $F27E84.l,X		; FF 84 7E F2
	rti		; 40

	ora $133F03.l,X		; 1F 03 3F 13
	ror $7C32.w,X		; 7E 32 7C
	bit $FB.b,X		; 34 FB
	cmp [$C3.b]		; C7 C3
	rts		; 60

	pea $E060.w		; F4 60 E0
	ldx $0003.w,Y		; BE 03 00
	ora ($56.b,S),Y		; 13 56
	ora ($07.b,X)		; 01 07
	sta [$34.b]		; 87 34
	ora $60.b,S		; 03 60
	tsb $72.b		; 04 72
	brk $F9.b		; 00 F9
	cpy #$BC.b		; C0 BC
	ora $FF.b,X		; 15 FF
	bmi   8.b		; 30 08
	pea $CE08.w		; F4 08 CE
	bit $08FC.w,X		; 3C FC 08
	sei		; 78
	bmi -74.b		; 30 B6
	cpy #$3C.b		; C0 3C
	ora ($80.b)		; 12 80
	eor $5B44FE.l,X		; 5F FE 44 5B
	brk $DF.b		; 00 DF
	brk $F9.b		; 00 F9
	txy		; 9B
	asl $7F.b		; 06 7F
	brk $B3.b		; 00 B3
	bvs 119.b		; 70 77
	brk $F9.b		; 00 F9
	ora $03.b,S		; 03 03
	eor $7F07.w,Y		; 59 07 7F
	sbc ($05.b,S),Y		; F3 05
	tsx		; BA
	brk $D4.b		; 00 D4
	adc $FE.b		; 65 FE
	inc $8232.w		; EE 32 82
	xba		; EB
	cpy #$EB.b		; C0 EB
	eor $F82000.l,X		; 5F 00 20 F8
	jsr $F0F4.w		; 20 F4 F0
	pea $FD03.w		; F4 03 FD
	inc $B824.w		; EE 24 B8
	cpx #$FE.b		; E0 FE
	beq   8.b		; F0 08
	bra -98.b		; 80 9E
	sbc ($D2.b),Y		; F1 D2
	cpy #$E2.b		; C0 E2
	and [$2D.b]		; 27 2D
	trb $00.b		; 14 00
	and $E1FE.w		; 2D FE E1
	and $40.b,X		; 35 40
	sbc $C0.b		; E5 C0
	clc		; 18
	inc $60FD.w,X		; FE FD 60
	eor $BC6CC2.l,X		; 5F C2 6C BC
	rti		; 40

	bra -22.b		; 80 EA
	cpx #$C0.b		; E0 C0
	jsr ($80C0.w,X)		; FC C0 80
.ACCU 8
	sep #$A5		; E2 A5
	and $EAB6.w,X		; 3D B6 EA
	bra -22.b		; 80 EA
	sed		; F8
	cpx #$1C.b		; E0 1C
	rti		; 40

.ACCU 8
.INDEX 8
	sep #$7C		; E2 7C
	clc		; 18
	lda ($BA.b)		; B2 BA
	stz $80.b,X		; 74 80
	rti		; 40

	sbc ($04.b,X)		; E1 04
	rol $C0.b,X		; 36 C0
	sbc $0D82.w,X		; FD 82 0D
	brk $1C.b		; 00 1C
	sty $FF.b		; 84 FF
	cpy #$3C.b		; C0 3C
	bne  32.b		; D0 20
	bcc  96.b		; 90 60
	bcs  96.b		; B0 60
	sed		; F8
	rts		; 60

	and ($82.b,X)		; 21 82
	jsr ($FCF8.w,X)		; FC F8 FC
	beq  45.b		; F0 2D
	sbc $FE19.w,X		; FD 19 FE
	inc $F8FC.w,X		; FE FC F8
	plx		; FA
	dec $102B.w,X		; DE 2B 10
	eor $20.b,X		; 55 20
	lda $F27F40.l		; AF 40 7F F2
	ror $21.b,X		; 76 21
	rol $5B01.w		; 2E 01 5B
	ora $BB.b		; 05 BB
	ora $C2.b		; 05 C2
	asl A		; 0A
	nop		; EA
	ora #$00.b		; 09 00
	sbc $0011F0.l		; EF F0 11 00
	and $00.b		; 25 00
	eor $14.b		; 45 14
	xba		; EB
	stz $FC7C.w,X		; 9E 7C FC
	jmp ($FCF8.w,X)		; 7C F8 FC
	bvc  19.b		; 50 13
	dey		; 88
	rti		; 40

	jsr ($EB4C.w,X)		; FC 4C EB
	cop $EC.b		; 02 EC
	dey		; 88
	rti		; 40

	cmp $B1.b,S		; C3 B1
	cmp ($CB.b)		; D2 CB
	ora [$00.b]		; 07 00
	asl $1D4C.w		; 0E 4C 1D
	dec $D2.b		; C6 D2
	cpy #$E3.b		; C0 E3
	cpy #$FC.b		; C0 FC
	tsb $FE.b		; 04 FE
	phd		; 0B
	ldx $F1.b,Y		; B6 F1
	cli		; 58
	ldy #$F0.b		; A0 F0
	adc [$40.b]		; 67 40
	inc $40E0.w,X		; FE E0 40
	bvs  32.b		; 70 20
	beq  32.b		; F0 20
	tay		; A8
	.db $62, $D1, $FF		; 62 D1 FF
	bvs -31.b		; 70 E1
	inc $F2FE.w,X		; FE FE F2
	brk $10.b		; 00 10
	adc $7C8C00.l,X		; 7F 00 8C 7C
	sta $0AFF60.l,X		; 9F 60 FF 0A
	tyx		; BB
	rts		; 60

	inc $DC61.w,X		; FE 61 DC
	eor $9F.b,S		; 43 9F
	brk $BB.b		; 00 BB
	lsr $B8F1.w		; 4E F1 B8
.INDEX 8
	sep #$10		; E2 10
	sbc $F9.b,S		; E3 F9
	jsr ($622F.w,X)		; FC 2F 62
	adc [$94.b]		; 67 94
	dec $17FF.w		; CE FF 17
	bit $04FE.w,X		; 3C FE 04
	rol $7EE4.w,X		; 3E E4 7E
	sty $FA.b		; 84 FA
	beq  -6.b		; F0 FA
	brk $FE.b		; 00 FE
	brk $F9.b		; 00 F9
	stx $EE31.w		; 8E 31 EE
	sty $00.b		; 84 00
	cpx $FC.b		; E4 FC
	beq -99.b		; F0 9D
	cpx #$60.b		; E0 60
	cmp $FC.b,S		; C3 FC
	asl $0A.b,X		; 16 0A
	bvc -30.b		; 50 E2
	ora ($80.b,X)		; 01 80
	dec A		; 3A
	sta ($22.b),Y		; 91 22
	tsb $7A.b		; 04 7A
	beq -124.b		; F0 84
	cop $C0.b		; 02 C0
	eor $18.b		; 45 18
	ror $F234.w,X		; 7E 34 F2
	asl $183C.w,X		; 1E 3C 18
	ror $FE15.w		; 6E 15 FE
	ldy $F818.w,X		; BC 18 F8
	rti		; 40

	sbc #$F8.b		; E9 F8
	and $A6F2.w		; 2D F2 A6
	sbc $41.b,X		; F5 41
	nop		; EA
	cpx #$7F.b		; E0 7F
	sbc ($D6.b),Y		; F1 D6
	adc $00.b		; 65 00
	eor $20.b,X		; 55 20
	tsa		; 3B
	bpl  55.b		; 10 37
	brk $4C.b		; 00 4C
	ora $01.b,S		; 03 01
	ora ($38.b,X)		; 01 38
	sbc ($39.b),Y		; F1 39
	inc $20FE.w		; EE FE 20
	inc $C6.b,X		; F6 C6
	tax		; AA
	tsa		; 3B
	jmp.w [$9D7E]		; DC 7E 9D
	sbc ($C8.b,X)		; E1 C8
	bmi  -1.b		; 30 FF
	sta $B8.b		; 85 B8
	bvc  59.b		; 50 3B
	bne 125.b		; D0 7D
	bcc -70.b		; 90 BA
	clc		; 18
	inc $8000.w,X		; FE 00 80
	sbc ($EE.b)		; F2 EE
	sei		; 78
	jsr ($FED0.w,X)		; FC D0 FE
	bcc   2.b		; 90 02
	clc		; 18
	sty $E0.b,X		; 94 E0
	trb $126F.w		; 1C 6F 12
	sbc $344F1B.l,X		; FF 1B 4F 34
	eor $367F3F.l,X		; 5F 3F 7F 36
	jmp ($7934.w,X)		; 7C 34 79
	bmi 126.b		; 30 7E
	cpx #$E9.b		; E0 E9
	and ($0F.b)		; 32 0F
	cmp [$8C.b],Y		; D7 8C
	and $FA3600.l,X		; 3F 00 36 FA
	ora $30.b,S		; 03 30
	asl $E1.b		; 06 E1
	sbc #$00.b		; E9 00
	sbc ($E0.b,X)		; E1 E0
	ldy #$9C.b		; A0 9C
	pea $E9C0.w		; F4 C0 E9
	jmp.w [$FE28]		; DC 28 FE
	ldy #$E2.b		; A0 E2
	sta $F10EC2.l,X		; 9F C2 0E F1
	sei		; 78
	brk $E8.b		; 00 E8
	brk $28.b		; 00 28
	jsr ($F108.w,X)		; FC 08 F1
	brk $FF.b		; 00 FF
	and $2F1825.l,X		; 3F 25 18 2F
	clc		; 18
	and $1A3E1B.l,X		; 3F 1B 3E 1A
	jmp ($7D30.w,X)		; 7C 30 7D
	bmi  -9.b		; 30 F7
	rts		; 60

	sbc $7F.b,S		; E3 7F
	cld		; D8
	ror $1B.b		; 66 1B
	brk $1A.b		; 00 1A
	ora ($30.b,X)		; 01 30
	cpy #$03.b		; C0 03
	rts		; 60

	lda [$F1.b],Y		; B7 F1
	adc $C0FCB8.l,X		; 7F B8 FC C0
	ldy $3280.w,X		; BC 80 32
	tsb $04FE.w		; 0C FE 04
	inc $789A.w,X		; FE 9A 78
	plx		; FA
	asl $07.b,X		; 16 07
	ror A		; 6A
	cmp $E93E.w,Y		; D9 3E E9
	rti		; 40

	sbc $23F1.w,X		; FD F1 23
	tsb $FC.b		; 04 FC
	sbc $23F8.w,X		; FD F8 23
	cpx #$66.b		; E0 66
	clc		; 18
	inc $FF1C.w		; EE 1C FF
	inc A		; 1A
	and $60F41E.l,X		; 3F 1E F4 60
	jsr ($3837.w,X)		; FC 37 38
	cmp $0038.w,Y		; D9 38 00
	jmp $FD1EC2.l		; 5C C2 1E FD
	bpl  63.b		; 10 3F
	cmp $C9B2.w,X		; DD B2 C9
	bne  64.b		; D0 40
	bcc   0.b		; 90 00
	bcs  76.b		; B0 4C
	jsr $609C.w		; 20 9C 60
	bra -30.b		; 80 E2
	sbc $40FF.w		; ED FF 40
	jsr $EFFF.w		; 20 FF EF
	rts		; 60

	bra -30.b		; 80 E2
	sbc [$1D.b]		; E7 1D
	adc $5DBF19.l		; 6F 19 BF 5D
	ldx $FE5C.w,Y		; BE 5C FE
	ora $FD580D.l		; 0F 0D 58 FD
	cli		; 58
	adc [$10.b],Y		; 77 10
	dec $7D.b		; C6 7D
.ACCU 16
	rep #$E1		; C2 E1
	eor $EEC3.w,X		; 5D C3 EE
	ldy $5801.w,X		; BC 01 58
	inc $1003.w,X		; FE 03 10
	adc ($D1.b)		; 72 D1
	dec $00C0.w		; CE C0 00
	inc $DA.b		; E6 DA
	adc ($DF.b),Y		; 71 DF
	bmi 114.b		; 30 72
	bit $C0.b,X		; 34 C0
	bit $E600.w,X		; 3C 00 E6
	tsb $B4.b		; 04 B4
	tsb $428C.w		; 0C 8C 42
	cmp #$C7FF.w		; C9 FF C7
	asl $EF.b		; 06 EF
	asl $DE.b		; 06 DE
	tsb $081F.w		; 0C 1F 08
	bit $7B10.w,X		; 3C 10 7B
	sec		; 38
	bit $EB10.w,X		; 3C 10 EB
	ror $0026.w,X		; 7E 26 00
	lsr $C4.b		; 46 C4
	sbc ($40.b),Y		; F1 40
	sbc ($03.b,X)		; E1 03
	sec		; 38
	stz $F3.b,X		; 74 F3
	trb $6A00.w		; 1C 00 6A
	tsb $76.b		; 04 76
	sei		; 78
	ora ($13.b),Y		; 11 13
	bpl -52.b		; 10 CC
	sec		; 38
	plx		; FA
	rti		; 40

	sbc $E5.b,S		; E3 E5
	ldy #$FE.b		; A0 FE
	inx		; E8
	jmp ($4110.w,X)		; 7C 10 41
	cmp #$E340.w		; C9 40 E3
	sbc $27DF06.l,X		; FF 06 DF 27
	sta $63EC7F.l,X		; 9F 7F EC 63
	ldx $FE64.w,Y		; BE 64 FE
	pla		; 68
	sbc $7F78.w,Y		; F9 78 7F
	bne 102.b		; D0 66
	tsb $63F1.w		; 0C F1 63
	eor $6400FF.l,X		; 5F FF 00 64
	ora ($68.b,X)		; 01 68
	ora ($78.b,X)		; 01 78
	pea $00E9.w		; F4 E9 00
	sbc ($00.b,X)		; E1 00
	txs		; 9A
	sty $72.b		; 84 72
	tsb $EF6E.w		; 0C 6E EF
	xce		; FB
	trb $DE.b		; 14 DE
	bit $9A.b		; 24 9A
	sei		; 78
	dey		; 88
	nop		; EA
	brk $24.b		; 00 24
	bra 100.b		; 80 64
	cop $E1.b		; 02 E1
	pei ($00.b)		; D4 00
	ldy $0C.b		; A4 0C
	sbc $E6F104.l,X		; FF 04 F1 E6
	eor $659F34.l		; 4F 34 9F 65
	ldx $ED66.w,Y		; BE 66 ED
	eor $7B4408.l,X		; 5F 08 44 7B
	php		; 08
	sbc $82F370.l,X		; FF 70 F3 82
	sbc ($FE.b),Y		; F1 FE
	adc $BF.b		; 65 BF
	sbc $4401BA.l,X		; FF BA 01 44
	cop $08.b		; 02 08
	tsb $70.b		; 04 70
	cpy #$F1.b		; C0 F1
	jmp.w [$BC40]		; DC 40 BC
	bra  74.b		; 80 4A
	tsb $9E.b		; 04 9E
	sbc $0417.w,X		; FD 17 04
	bit $D1C0.w		; 2C C0 D1
	bmi -32.b		; 30 E0
	cpx #$00.b		; E0 00
	rti		; 40

	plp		; 28
	bra  72.b		; 80 48
	cmp $E9.b,S		; C3 E9
	pea $7CFF.w		; F4 FF 7C
	sta $F132DA.l,X		; 9F DA 32 F1
	adc [$18.b]		; 67 18
	and $1A3F1C.l		; 2F 1C 3F 1A
	adc $58FF3A.l,X		; 7F 3A FF 58
	dec $EF.b		; C6 EF
	sbc $18F3C0.l,X		; FF C0 F3 18
	lsr $001A.w		; 4E 1A 00
	dec A		; 3A
	brk $58.b		; 00 58
	cpy #$F5.b		; C0 F5
	inc $5FFF.w,X		; FE FF 5F
	brk $DA.b		; 00 DA
	sty $74.b		; 84 74
	php		; 08
	cpx $18.b		; E4 18
	iny		; C8
	bmi -98.b		; 30 9E
	sei		; 78
	adc $8780.w,Y		; 79 80 87
	bra -46.b		; 80 D2
	dey		; 88
	adc ($4A.b,X)		; 61 4A
	tya		; 98
	sbc ($30.b,X)		; E1 30
	rol $8606.w,X		; 3E 06 86
	sbc $C2D69F.l,X		; FF 9F D6 C2
	asl $3B08.w,X		; 1E 08 3B
	bpl 119.b		; 10 77
	jsr $41EA.w		; 20 EA 41
	dec $3901.w,X		; DE 01 39
	ora [$F4.b]		; 07 F4
	asl $003E.w		; 0E 3E 00
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	nop		; EA
	ora #$00.b		; 09 00
	ora [$DF.b],Y		; 17 DF
	phx		; DA
	brk $BC.b		; 00 BC
	sta [$6F.b]		; 87 6F
	bit $7C3C.w,X		; 3C 3C 7C
	bra  -6.b		; 80 FA
	plx		; FA
	sec		; 38
	pea $E4D0.w		; F4 D0 E4
	brk $EB.b		; 00 EB
	bit $F11F.w,X		; 3C 1F F1
	ora $D3.b		; 05 D3
	sec		; 38
	tsb $D0.b		; 04 D0
	php		; 08
	txy		; 9B
	pei ($7D.b)		; D4 7D
	brk $FF.b		; 00 FF
	cop $B7.b		; 02 B7
	bvs -10.b		; 70 F6
	adc ($DE.b,X)		; 61 DE
	eor ($9D.b,X)		; 41 9D
	ora $B7.b,S		; 03 B7
	brk $C3.b		; 00 C3
	inc $EC7C.w		; EE 7C EC
	cpy $0F.b		; C4 0F
	brk $29.b		; 00 29
	brk $6B.b		; 00 6B
	inc $96C0.w,X		; FE C0 96
	sbc ($9C.b,X)		; E1 9C
	lda $3C7842.l,X		; BF 42 78 3C
	bne 126.b		; D0 7E
	jsr ($90FC.w,X)		; FC FC 90
	cpy #$D9.b		; C0 D9
.ACCU 16
	rep #$E3		; C2 E3
	inc $7BD0.w		; EE D0 7B
	sed		; F8
	adc $8090F1.l,X		; 7F F1 90 80
	sbc ($00.b,X)		; E1 00
	php		; 08
	asl $D6.b		; 06 D6
	tsb $1F.b		; 04 1F
	php		; 08
	and ($7F.b,S),Y		; 33 7F
	lda ($10.b,X)		; A1 10
	ror $21.b		; 66 21
	cpx $FF43.w		; EC 43 FF
	ora ($33.b,X)		; 01 33
	bra -67.b		; 80 BD
	sbc $A019.w,Y		; F9 19 A0
	ora $FCCBB8.l,X		; 1F B8 CB FC
	bra -38.b		; 80 DA
	bra -60.b		; 80 C4
	sed		; F8
	beq -16.b		; F0 F0
	bra -24.b		; 80 E8
	lda $DE.b,X		; B5 DE
	asl $DA80.w		; 0E 80 DA
	bra -62.b		; 80 C2
	beq -128.b		; F0 80
	tsx		; BA
	ror $2CE9.w		; 6E E9 2C
	clc		; 18
	adc $3FC100.l,X		; 7F 00 C1 3F
	stp		; DB
	adc $024D20.l		; 6F 20 4D 02
	tda		; 7B
	tsb $B3.b		; 04 B3
	cpy #$80.b		; C0 80
	phx		; DA
	ora ($36.b)		; 12 36
	sbc #$43FA.w		; E9 FA 43
	trb $26.b		; 14 26
	cmp $E400.w,Y		; D9 00 E4
	rol $7CC4.w,X		; 3E C4 7C
	iny		; C8
	sed		; F8
	bne  -2.b		; D0 FE
	pea $5BE0.w		; F4 E0 5B
	lda ($EE.b,S),Y		; B3 EE
	cpy $00.b		; C4 00
	iny		; C8
	plx		; FA
	sbc $C0.b,S		; E3 C0
	rti		; 40

	stp		; DB
	and $DA0048.l,X		; 3F 48 00 DA
	sbc $43DC60.l,X		; FF 60 DC 43
	txy		; 9B
	cpy #$2E.b		; C0 2E
	sbc ($F0.b),Y		; F1 F0
	adc [$EE.b],Y		; 77 EE
	sbc $0004.w,Y		; F9 04 00
	and [$00.b]		; 27 00
	stz $00.b		; 64 00
	jmp ($E999.w,X)		; 7C 99 E9
	cld		; D8
	jsr $EB78.w		; 20 78 EB
	rti		; 40

	clv		; B8
	rts		; 60

	jsr ($4060.w,X)		; FC 60 40
	lda $4030.w,Y		; B9 30 40
	tsx		; BA
	stx $DE.b		; 86 DE
	sed		; F8
	ora $88.b		; 05 88
	tsb $30.b		; 04 30
	rti		; 40

	lda $D614.w,Y		; B9 14 D6
	adc $190F.w,X		; 7D 0F 19
	cpy #$F7.b		; C0 F7
	rti		; 40

	inc $D240.w,X		; FE 40 D2
	sei		; 78
	cop $D4.b		; 02 D4
	lda $D4C0FE.l,X		; BF FE C0 D4
	jmp $C680E2.l		; 5C E2 80 C6
	inc $EA44.w,X		; FE 44 EA
	rti		; 40

	jsr ($6440.w,X)		; FC 40 64
	jmp ($ED85.w,X)		; 7C 85 ED
	dex		; CA
	ror $0044.w,X		; 7E 44 00
	rti		; 40

	brk $BA.b		; 00 BA
	cpy #$F1.b		; C0 F1
	.db $82, $5E, $05		; 82 5E 05
	sta $E9C6.w,Y		; 99 C6 E9
	ror $21.b		; 66 21
	eor $8CD280.l		; 4F 80 D2 8C
	cmp $C7.b,S		; C3 C7
	nop		; EA
	asl $B8.b		; 06 B8
	eor [$C4.b],Y		; 57 C4
	and $403100.l,X		; 3F 00 31 40
	cld		; D8
	phd		; 0B
	php		; 08
	pea $00F0.w		; F4 F0 00
	cpx $40.b		; E4 40
	jmp.w [$A818]		; DC 18 A8
	eor $F0.b		; 45 F0
	php		; 08
	sbc ($80.b),Y		; F1 80
	ora $7F.b		; 05 7F
	lda $56.b		; A5 56
	sbc ($2E.b),Y		; F1 2E
	ora ($2C.b,X)		; 01 2C
	ora $3D.b,S		; 03 3D
	ora $77.b,S		; 03 77
	brk $C5.b		; 00 C5
	jsr ($FECA.w,X)		; FC CA FE
	rol $235C.w,X		; 3E 5C 23
	lsr $88C5.w		; 4E C5 88
	brk $9C.b		; 00 9C
	php		; 08
	inc $10B8.w,X		; FE B8 10
	beq -128.b		; F0 80
	sbc $7BFD.w,X		; FD FD 7B
	lsr $5EBC.w,X		; 5E BC 5E
	dex		; CA
	xba		; EB
	ora ($CF.b),Y		; 11 CF
	and ($5F.b),Y		; 31 5F
	and [$7E.b],Y		; 37 7E
	tsb $E1.b		; 04 E1
	adc $7F30.w,Y		; 79 30 7F
	adc $88.b,S		; 63 88
	cpx #$C1.b		; E0 C1
	adc ($8C.b),Y		; 71 8C
	and [$84.b],Y		; 37 84
	ora ($29.b,X)		; 01 29
	inc $FE.b,X		; F6 FE
	ora [$42.b]		; 07 42
	ldy $3492.w		; AC 92 34
	cpy #$E9.b		; C0 E9
	cpx $6F18.w		; EC 18 6F
	sbc $FC.b,S		; E3 FC
	clc		; 18
	stz $30.b,X		; 74 30
	sec		; 38
	sta $DC.b,S		; 83 DC
	cld		; D8
	jsr ($08FC.w,X)		; FC FC 08
	sbc ($F7.b),Y		; F1 F7
	sbc $DF0BF5.l,X		; FF F5 0B DF
	pld		; 2B
	sta $6ABE7B.l,X		; 9F 7B BE 6A
	jsr ($6360.w,X)		; FC 60 63
	txa		; 8A
	tyx		; BB
	tsb $7BF2.w		; 0C F2 7B
	brk $F5.b		; 00 F5
	pea $016A.w		; F4 6A 01
	tsb $E1.b		; 04 E1
	lda $CA.b		; A5 CA
	brk $CC.b		; 00 CC
	cpy #$C0.b		; C0 C0
	pea $CC08.w		; F4 08 CC
	and [$00.b],Y		; 37 00
	sec		; 38
	jsr ($1410.w,X)		; FC 10 14
	cpx $C0F1.w		; EC F1 C0
	cpy $C187.w		; CC 87 C1
	rol $FC43.w,X		; 3E 43 FC
	bpl   8.b		; 10 08
	.db $82, $F1, $27		; 82 F1 27
	ora $1F2F.w,Y		; 19 2F 1F
	jsr ($0A17.w,X)		; FC 17 0A
	ldx $7E7E.w,Y		; BE 7E 7E
	tsb $7F.b		; 04 7F
	clc		; 18
	xce		; FB
	rts		; 60

	sbc ($0C.b,X)		; E1 0C
	sbc ($6E.b,S),Y		; F3 6E
	sbc $017EC7.l,X		; FF C7 7E 01
	tsb $3E.b		; 04 3E
	cmp ($60.b,X)		; C1 60
	sbc ($F1.b)		; F2 F1
	sed		; F8
	bra -100.b		; 80 9C
	bra 124.b		; 80 7C
	brk $A1.b		; 00 A1
	lda #$1C66.w		; A9 66 1C
	tsx		; BA
	jmp.w [$E140]		; DC 40 E1
	stx $7832.w		; 8E 32 78
	sbc [$1F.b],Y		; F7 1F
	lda $C0F3.w		; AD F3 C0
	brk $B0.b		; 00 B0
	rti		; 40

	sbc $00.b,S		; E3 00
	eor $325F3E.l		; 4F 3E 5F 32
	adc $427D32.l,X		; 7F 32 7D 42
	bit $3840.w		; 2C 40 38
	rti		; 40

	and ($4E.b)		; 32 4E
	rol $F106.w,X		; 3E 06 F1
	bit $FEF8.w,X		; 3C F8 FE
	bmi   2.b		; 30 02
	sec		; 38
	asl $FC.b		; 06 FC
	brk $E9.b		; 00 E9
	cpy #$BA.b		; C0 BA
	sty $01.b		; 84 01
	dec $043A.w,X		; DE 3A 04
	ldx #$80.b		; A2 80
	clv		; B8
	rti		; 40

	jsr $8CC0.w		; 20 C0 8C
	cmp #$E00B.w		; C9 0B E0
	tsb $80.b		; 04 80
	mvp $F1,$01		; 44 01 F1
	inc $7F80.w,X		; FE 80 7F
	dex		; CA
	brk $FF.b		; 00 FF
	lda [$FF.b],Y		; B7 FF
	ora [$DF.b]		; 07 DF
	and $9F.b		; 25 9F
	stz $BF.b		; 64 BF
	jmp ($64FE.w,X)		; 7C FE 64
	pea $A360.w		; F4 60 A3
	sbc ($67.b)		; F2 67
	.db $82, $F6, $82		; 82 F6 82
	sbc ($08.b,X)		; E1 08
	sbc ($FC.b)		; F2 FC
	sta $F3.b,X		; 95 F3
	cpy #$D9.b		; C0 D9
	jmp.w [$F12A]		; DC 2A F1
	pla		; 68
	bpl -65.b		; 10 BF
	ora $C8.b		; 05 C8
	bmi  88.b		; 30 58
	bmi -72.b		; 30 B8
	bvs -16.b		; 70 F0
	cpy #$C2.b		; C0 C2
	bmi 111.b		; 30 6F
	cmp $FBFE.w,Y		; D9 FE FB
	tsa		; 3B
	sta ($D2.b,X)		; 81 D2
	bvs -78.b		; 70 B2
	cmp ($FF.b)		; D2 FF
	brk $3F.b		; 00 3F
	ora $FA021E.l,X		; 1F 1E 02 FA
	nop		; EA
	sbc ($70.b,S),Y		; F3 70
	bpl -76.b		; 10 B4
	adc ($CA.b)		; 72 CA
	rol $2B02.w,X		; 3E 02 2B
	lda ($70.b,S),Y		; B3 70
	brk $A0.b		; 00 A0
	adc ($E9.b)		; 72 E9
	cmp ($DE.b),Y		; D1 DE
	ora $EA54.w		; 0D 54 EA
	ldy $C078.w		; AC 78 C0
	ldy $08FF.w,X		; BC FF 08
	lda $CB1A.w,Y		; B9 1A CB
	sbc ($6F.b),Y		; F1 6F
	ora [$4F.b],Y		; 17 4F
	sta [$EB.b]		; 87 EB
	bra -13.b		; 80 F3
	jmp ($423C.w,X)		; 7C 3C 42
	sbc [$60.b],Y		; F7 60
	inc $84.b		; E6 84
	sbc ($80.b),Y		; F1 80
	pea $D03C.w		; F4 3C D0
	lda $03.b,X		; B5 03
	jsr ($C060.w,X)		; FC 60 C0
	sbc ($40.b)		; F2 40
	tya		; 98
	rti		; 40

	cmp ($BA.b,X)		; C1 BA
	dex		; CA
	stz $0010.w		; 9C 10 00
	plx		; FA
	cmp ($8F.b,X)		; C1 8F
	rti		; 40

	lda ($9D.b,S),Y		; B3 9D
	rti		; 40

	jsr ($FC6F.w,X)		; FC 6F FC
	adc $EA.b		; 65 EA
	sta ($77.b,S),Y		; 93 77
	ora $EF.b,S		; 03 EF
	asl $DF.b		; 06 DF
	dec $CF.b,X		; D6 CF
	asl $1E.b		; 06 1E
	tsb $081C.w		; 0C 1C 08
	bra -68.b		; 80 BC
	and $40.b,S		; 23 40
	cmp $3E06.w,Y		; D9 06 3E
	jmp.w [$BB80]		; DC 80 BB
	ror $50.b,X		; 76 50
	cpx #$40.b		; E0 40
	lda ($A0.b),Y		; B1 A0
	cmp [$D9.b],Y		; D7 D9
	bvc  32.b		; 50 20
	cpx #$80.b		; E0 80
	sbc ($49.b)		; F2 49
	lda ($FD.b,S),Y		; B3 FD
	xce		; FB
	eor ($CC.b,X)		; 41 CC
	bra -13.b		; 80 F3
	adc $5E00.w		; 6D 00 5E
	bit $1839.w		; 2C 39 18
	and ($80.b,S),Y		; 33 80
	sbc #$003F.w		; E9 3F 00
	and $0102.w,Y		; 39 02 01
	asl $80.b		; 06 80
	tax		; AA
	eor $C0.b		; 45 C0
	bit $7FD4.w,X		; 3C D4 7F
	jsr ($2C1E.w,X)		; FC 1E 2C
	cmp ($80.b,X)		; C1 80
.INDEX 16
	rep #$9F		; C2 9F
	rts		; 60

	lda $CC7E7E.l,X		; BF 7E 7E CC
	plx		; FA
	iny		; C8
	lda $B0.b		; A5 B0
	rti		; 40

	lda #$A9C0.w		; A9 C0 A9
	bit #$687E.w		; 89 7E 68
	brk $C8.b		; 00 C8
	sta $FF.b		; 85 FF
	rti		; 40

	lda #$D040.w		; A9 40 D0
	sbc ($77.b,X)		; E1 77
	txy		; 9B
	sei		; 78
	adc $012E10.l,X		; 7F 10 2E 01
	and $8302.w		; 2D 02 83
	bpl  89.b		; 10 59
	ora [$7B.b]		; 07 7B
	cmp $40.b		; C5 40
	wai		; CB
	sbc $7FDB11.l,X		; FF 11 DB 7F
.ACCU 16
	rep #$27		; C2 27
	lda ($D1.b)		; B2 D1
	bmi -60.b		; 30 C4
	cmp ($BC.b),Y		; D1 BC
	pha		; 48
	bit $7CC0.w,X		; 3C C0 7C
	sed		; F8
	sed		; F8
	cpy #$C285.w		; C0 85 C2
	rti		; 40

	sbc #$F18E.w		; E9 8E F1
	pla		; 68
	iny		; C8
	bit $FCE3.w		; 2C E3 FC
	beq  50.b		; F0 32
	jmp ($7108.w,X)		; 7C 08 71
	sbc $FF.b,S		; E3 FF
	cmp [$35.b]		; C7 35
	cop $3D.b		; 02 3D
	cop $3F.b		; 02 3F
	ora #$80A2.w		; 09 A2 80
	lda $FF.b		; A5 FF
	ora $12.b,S		; 03 12
	tsx		; BA
	bne -22.b		; D0 EA
	sbc $78B8FE.l,X		; FF FE B8 78
	brk $C9.b		; 00 C9
	inx		; E8
	rti		; 40

	sbc $C0A438.l		; EF 38 A4 C0
	txs		; 9A
	asl $0BF7.w		; 0E F7 0B
	brk $19.b		; 00 19
	php		; 08
	ora ($FE.b,S),Y		; 13 FE
	sbc ($1D.b,X)		; E1 1D
	cop $3A.b		; 02 3A
	tsb $32.b		; 04 32
	rti		; 40

	sbc $40.b,S		; E3 40
	cmp ($B4.b),Y		; D1 B4
	cpx $1CFE.w		; EC FE 1C
	inc $F1BE.w,X		; FE BE F1
	sbc $BE00E7.l,X		; FF E7 00 BE
	jmp $52BF.w		; 4C BF 52
	sbc $7A50.w,X		; FD 50 7A
	plp		; 28
	jmp ($7020.w,X)		; 7C 20 70
	cpy #$F57F.w		; C0 7F F5
	jmp $5200.w		; 4C 00 52
	brk $50.b		; 00 50
	cop $28.b		; 02 28
	tsb $3E.b		; 04 3E
	cmp $FF.b,S		; C3 FF
	sed		; F8
	jsr ($E980.w,X)		; FC 80 E9
	bpl -49.b		; 10 CF
	sbc $7F3FB6.l,X		; FF B6 3F 7F
	asl $7F.b,X		; 16 7F
	rol $7D.b		; 26 7D
	bit $187B.w,X		; 3C 7B 18
	bra -54.b		; 80 CA
	bpl -82.b		; 10 AE
	sbc ($16.b,X)		; E1 16
	sbc $DE.b,X		; F5 DE
	pha		; 48
	sbc ($3C.b),Y		; F1 3C
	cpx #$80B9.w		; E0 B9 80
	dex		; CA
	cpx $BC40.w		; EC 40 BC
	brk $ED.b		; 00 ED
	ldy $CA48.w,X		; BC 48 CA
	ldx $F1.b		; A6 F1
	lda $3F.b,X		; B5 3F
	rti		; 40

	clc		; 18
	cpy $CB.b		; C4 CB
	tsb $EA.b		; 04 EA
	iny		; C8
	rti		; 40

.ACCU 16
	rep #$EF		; C2 EF
	ora [$DF.b],Y		; 17 DF
	asl $0C1E.w		; 0E 1E 0C
	jsr ($FED7.w,X)		; FC D7 FE
	bit $7B18.w,X		; 3C 18 7B
	bmi  -9.b		; 30 F7
	rti		; 40

	sbc [$00.b]		; E7 00
	eor [$88.b],Y		; 57 88
	sbc ($04.b),Y		; F1 04
	dec $F0B8.w,X		; DE B8 F0
	rti		; 40

	cpy #$C0CC.w		; C0 CC C0
	rti		; 40

	nop		; EA
	cpy #$304C.w		; C0 4C 30
	tsx		; BA
	and [$D0.b],Y		; 37 D0
	cli		; 58
	mvn $88,$80		; 54 80 88
	brk $E2.b		; 00 E2
	rts		; 60

	lda ($BE.b),Y		; B1 BE
	tsb $E1.b		; 04 E1
	phy		; 5A
	jmp $00F108.l		; 5C 08 F1 00
	ora [$09.b],Y		; 17 09
	trb $8C9A.w		; 1C 9A 8C
	nop		; EA
	ora #$DB08.w		; 09 08 DB
	cmp #$3F46.w		; C9 46 3F
	sta $ED.b,X		; 95 ED
	cpy #$C8C3.w		; C0 C3 C8
	eor ($C9.b,S),Y		; 53 C9
	bcs -51.b		; B0 CD
	ora $FF.b		; 05 FF
	.db $82, $9C, $09		; 82 9C 09
	sbc ($86.b,S),Y		; F3 86
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	rol $1C.b		; 26 1C
	rol $3E1C.w		; 2E 1C 3E
	trb $0149.w		; 1C 49 01
	jmp ($FE38.w,X)		; 7C 38 FE
	rts		; 60

	phx		; DA
	tsb $FEF2.w		; 0C F2 FE
	tay		; A8
	sbc $FEF8.w,Y		; F9 F8 FE
	bmi  32.b		; 30 20
	sbc #$F628.w		; E9 28 F6
	trb $08.b		; 14 08
	cli		; 58
	eor ($1C.b,X)		; 41 1C
	inc $B014.w,X		; FE 14 B0
	txa		; 8A
	iny		; C8
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	txy		; 9B
	txy		; 9B
	sbc $70.b,X		; F5 70
	brk $EA.b		; 00 EA
	sbc $94FCF8.l,X		; FF F8 FC 94
	wai		; CB
	ora $0B04.w		; 0D 04 0B
	jsr ($0B02.w,X)		; FC 02 0B
	asl $2D.b		; 06 2D
	asl $FCF8.w,X		; 1E F8 FC
	.db $42, $E1		; 42 E1
	ora $73.b,S		; 03 73
	sbc ($FE.b),Y		; F1 FE
	ora $07.b,S		; 03 07
	asl $FF.b		; 06 FF
	and $00C7FF.l,X		; 3F FF C7 00
	adc $FBC7.w		; 6D C7 FB
	asl $5D.b		; 06 5D
	bit $FB.b		; 24 FB
	jsr $C36D.w		; 20 6D C3
	wai		; CB
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	jmp.w [$C4E0]		; DC E0 C4
	jsr $2220.w		; 20 20 22
	jsr $2026.w		; 20 26 20
	cmp [$C0.b]		; C7 C0
	clc		; 18
	adc $0204DB.l,X		; 7F DB 04 02
	cpx #$03.b		; E0 03
	tyx		; BB
	ror $5D.b		; 66 5D
	tsb $BB.b		; 04 BB
	jmp ($F8FF.w,X)		; 7C FF F8
	plb		; AB
	lsr $DD.b		; 46 DD
	lsr $20.b		; 46 20
	cmp ($07.b,X)		; C1 07
	rts		; 60

	asl $02.b		; 06 02
	rol $06.b		; 26 06
	adc $0766E3.l,X		; 7F E3 66 07
	cmp [$06.b]		; C7 06
	lsr $24.b		; 46 24
	stz $E3.b		; 64 E3
	.db $62, $A9, $EB		; 62 A9 EB
	tay		; A8
	dex		; CA
	ora [$66.b],Y		; 17 66
	asl $65.b		; 06 65
	cpy #$C6.b		; C0 C6
	trb $FFA9.w		; 1C A9 FF
	sbc $E0.b,S		; E3 E0
	lda ($0F.b,X)		; A1 0F
	sbc $04BC9B.l,X		; FF 9B BC 04
	cmp $00.b,S		; C3 00
	inx		; E8
	xce		; FB
	brk $DD.b		; 00 DD
	jsl $6507EA.l		; 22 EA 07 65
	ora $B6C307.l		; 0F 07 C3 B6
	bra -33.b		; 80 DF
	bit $E0.b		; 24 E0
	cmp $03.b,S		; C3 03
	asl $C2.b		; 06 C2
	php		; 08
	and $B786FE.l,X		; 3F FE 86 B7
	adc ($E0.b,X)		; 61 E0
	rts		; 60

	rts		; 60

	cpy #$00.b		; C0 00
	jmp.w [$FDAF]		; DC AF FD
	beq  32.b		; F0 20
	bne  56.b		; D0 38
	cmp $0060.w,Y		; D9 60 00
	bcs  96.b		; B0 60
	bne -128.b		; D0 80
	cmp $16BA.w,Y		; D9 BA 16
	tsa		; 3B
	cmp ($48.b),Y		; D1 48
	sbc $A6.b,S		; E3 A6
	txs		; 9A
	rti		; 40

	jsr $8058.w		; 20 58 80
	phd		; 0B
	sbc $8313F8.l,X		; FF F8 13 83
	jsr ($BE99.w,X)		; FC 99 BE
	sed		; F8
	bra  93.b		; 80 5D
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	asl $05.b		; 06 05
	stz $EEA3.w		; 9C A3 EE
	bra -122.b		; 80 86
	bra -96.b		; 80 A0
	ora $C6.b,S		; 03 C6
	mvp $FD,$80		; 44 80 FD
	jsr $DDFC.w		; 20 FC DD
	bit $DC.b		; 24 DC
	tsb $20D0.w		; 0C D0 20
	tyx		; BB
	stx $F8.b		; 86 F8
	cpx #$C4.b		; E0 C4
	jsr $FFB1.w		; 20 B1 FF
	cmp $02.b,S		; C3 02
	jsr $8006.w		; 20 06 80
	ora [$C0.b]		; 07 C0
	ror $E0.b		; 66 E0
	stz $62.b		; 64 62
	inc $C4.b		; E6 C4
	jsl $EB2A18.l		; 22 18 2A EB
	php		; 08
	wai		; CB
	cpx #$02.b		; E0 02
	brk $F9.b		; 00 F9
	jsr $35D9.w		; 20 D9 35
	ldy $0241.w		; AC 41 02
	sbc $F2.b		; E5 F2
	dec $FD.b		; C6 FD
	tsb $04.b		; 04 04
	cpy #$F0.b		; C0 F0
	ora ($5A.b),Y		; 11 5A
	cld		; D8
	cmp ($F5.b,X)		; C1 F5
	clv		; B8
	sbc $00.b,X		; F5 00
	sbc $00C0.w,Y		; F9 C0 00
	plx		; FA
	cpy $6D.b		; C4 6D
	dec $C0.b		; C6 C0
	pea $8B09.w		; F4 09 8B
	cmp $23.b,S		; C3 23
	cmp $C4.b,S		; C3 C4
	cpy $1C.b		; C4 1C
	phx		; DA
	sbc $C38003.l		; EF 03 80 C3
	inc $20.b,X		; F6 20
	eor ($4E.b,S),Y		; 53 4E
	sta ($03.b),Y		; 91 03
	ora ($32.b,X)		; 01 32
	brk $F8.b		; 00 F8
	tsb $09.b		; 04 09
	sbc $0227C7.l,X		; FF C7 27 02
	sta ($2B.b),Y		; 91 2B
	sta [$5F.b]		; 87 5F
	sbc $ECE121.l,X		; FF 21 E1 EC
	and ($E6.b,X)		; 21 E6
	ora ($4D.b,X)		; 01 4D
	sta [$CF.b]		; 87 CF
	cmp #$A1.b		; C9 A1
	sta $AA.b		; 85 AA
	sed		; F8
	ply		; 7A
	sbc [$E1.b]		; E7 E1
	sbc $0480.w		; ED 80 04
	sta ($FF.b)		; 92 FF
	sbc $8075.w,X		; FD 75 80
	ora #$41.b		; 09 41
	and $F020.w		; 2D 20 F0
	ora [$07.b],Y		; 17 07
	adc $7AA0.w,Y		; 79 A0 7A
	inc A		; 1A
	txa		; 8A
	rol $9B.b		; 26 9B
	tsb $CC.b		; 04 CC
	sbc [$22.b],Y		; F7 22
	pha		; 48
	xce		; FB
	pha		; 48
	adc $D0.b,X		; 75 D0
	sed		; F8
	asl A		; 0A
	sta ($6C.b)		; 92 6C
	bit $F8C0.w		; 2C C0 F8
	phd		; 0B
	bit $F8E0.w		; 2C E0 F8
	phd		; 0B
	and $FF.b		; 25 FF
	sed		; F8
	asl A		; 0A
	tda		; 7B
	tda		; 7B
	lda $37E9E4.l,X		; BF E4 E9 37
	beq  -8.b		; F0 F8
	asl A		; 0A
	jsr $2320.w		; 20 20 23
	plb		; AB
	bne  12.b		; D0 0C
	xba		; EB
	tsb $55.b		; 04 55
	cpy #$E3.b		; C0 E3
	xba		; EB
	sbc [$EF.b],Y		; F7 EF
	sed		; F8
	phd		; 0B
	tsb $C3.b		; 04 C3
	rtl		; 6B

	tsx		; BA
	sbc $60BBFF.l,X		; FF FF BB 60
	adc $C3.b		; 65 C3
	cmp $F0.b,S		; C3 F0
	sed		; F8
	asl A		; 0A
	stz $60.b		; 64 60
	ldx #$EA.b		; A2 EA
	cmp $EB.b,S		; C3 EB
	iny		; C8
	ora #$FF.b		; 09 FF
	tsb $E4.b		; 04 E4
	sbc $F10AF8.l,X		; FF F8 0A F1
	sed		; F8
	asl $F8FF.w		; 0E FF F8
	ora $C2D90B.l,X		; 1F 0B D9 C2
	tsb $05.b		; 04 05
	asl A		; 0A
	bra  -8.b		; 80 F8
	ora #$03.b		; 09 03
	sbc ($F8.b),Y		; F1 F8
	tsb $6D80.w		; 0C 80 6D
	eor $C3C0.w,X		; 5D C0 C3
	cmp [$A1.b]		; C7 A1
	sed		; F8
	phd		; 0B
	ror $C0.b		; 66 C0
	sbc ($F8.b),Y		; F1 F8
	phd		; 0B
	rti		; 40

	jsr $DED6.w		; 20 D6 DE
	sbc [$AE.b]		; E7 AE
	sed		; F8
	tsb $FCE3.w		; 0C E3 FC
	adc $E0.b,S		; 63 E0
	sed		; F8
	asl A		; 0A
	cpy $E0.b		; C4 E0
	sed		; F8
	tsb $C306.w		; 0C 06 C3
	and [$E0.b]		; 27 E0
	sed		; F8
	tsb $DFBB.w		; 0C BB DF
	brk $55.b		; 00 55
	sbc $00.b,S		; E3 00
	sed		; F8
	phd		; 0B
	asl $00.b		; 06 00
	jsr $0DF8.w		; 20 F8 0D
	sbc ($01.b)		; F2 01
	adc $01.b,S		; 63 01
	cmp ($F0.b,X)		; C1 F0
	sed		; F8
	asl A		; 0A
	ora $55.b		; 05 55
	ora ($21.b,X)		; 01 21
	sbc ($F8.b),Y		; F1 F8
	tsb $8613.w		; 0C 13 86
	adc ($22.b,X)		; 61 22
	beq  11.b		; F0 0B
	sbc ($F8.b,S),Y		; F3 F8
	tsb $F8FF.w		; 0C FF F8
	jsl $08F0D5.l		; 22 D5 F0 08
	sbc ($E2.b)		; F2 E2
	cpx #$0C.b		; E0 0C
	cmp ($E0.b,S),Y		; D3 E0
	asl $E960.w		; 0E 60 E9
	and $3C.b,S		; 23 3C
	eor $CB84.w		; 4D 84 CB
	sbc $803F.w		; ED 3F 80
	eor $E95C.w		; 4D 5C E9
	eor $99EE.w		; 4D EE 99
	cpx #$03.b		; E0 03
	bra   6.b		; 80 06
	.db $82, $06, $86		; 82 06 86
	asl $5E.b		; 06 5E
	tad		; 5B
	sbc $0486.w,X		; FD 86 04
	sty $80.b		; 84 80
	sbc ($42.b,X)		; E1 42
	adc ($50.b,X)		; 61 50
	dec $C1.b		; C6 C1
	bvc -121.b		; 50 87
	cmp ($B0.b),Y		; D1 B0
	.db $82, $F8, $80		; 82 F8 80
.ACCU 8
	sep #$20		; E2 20
	asl $C2F3.w,X		; 1E F3 C2
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	lda $E2B908.l		; AF 08 B9 E2
	asl $01.b		; 06 01
	ora $03.b		; 05 03
	clv		; B8
	nop		; EA
	jsr ($9FE2.w,X)		; FC E2 9F
	plp		; 28
	sei		; 78
	stx $B8FF.w		; 8E FF B8
	cpx $80E4.w		; EC E4 80
	sbc ($83.b,X)		; E1 83
	plb		; AB
	dec $BD.b		; C6 BD
	stx $22.b,Y		; 96 22
	sta $E1B8.w,Y		; 99 B8 E1
	xce		; FB
	rol $5D.b		; 26 5D
	tsb $80E9.w		; 0C E9 80
	sep #$04		; E2 04
	sta $EE36E1.l,X		; 9F E1 36 EE
	inc $26C2.w,X		; FE C2 26
	brk $E1.b		; 00 E1
	ora $E8.b,S		; 03 E8
	asl $3A.b		; 06 3A
	rts		; 60

	sbc ($36.b,X)		; E1 36
	sbc ($57.b),Y		; F1 57
	ora ($5F.b,X)		; 01 5F
	ldx $03.b		; A6 03
	cmp $06.b,S		; C3 06
	rol $24.b		; 26 24
	bit $61.b		; 24 61
	sbc $13.b		; E5 13
	sbc ($8D.b),Y		; F1 8D
	sta $00.b,S		; 83 00
	sbc ($7C.b,X)		; E1 7C
	lda $F8E0.w,Y		; B9 E0 F8
	bcs -128.b		; B0 80
	sed		; F8
	tax		; AA
	lsr $FE86.w,X		; 5E 86 FE
	inx		; E8
	txs		; 9A
	sbc $5BD9.w		; ED D9 5B
	ldy $FF.b,X		; B4 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	and $86CB.w,X		; 3D CB 86
	eor $5C.b		; 45 5C
	sbc ($7B.b),Y		; F1 7B
	eor $9F.b,X		; 55 9F
	inx		; E8
	phd		; 0B
	sta $9E.b,S		; 83 9E
	inx		; E8
	tsb $20F0.w		; 0C F0 20
	rts		; 60

	sta $E020D2.l		; 8F D2 20 E0
	ora #$E081.w		; 09 81 E0
	asl $D8E0.w		; 0E E0 D8
	ora $E1FBD7.l		; 0F D7 FB E1
	cld		; D8
	asl $FB00.w		; 0E 00 FB
	ldy #$0FE9.w		; A0 E9 0F
	cpx #$060B.w		; E0 0B 06
	rol $03.b		; 26 03
	brk $E0.b		; 00 E0
	tsb $24FB.w		; 0C FB 24
	adc $AA.b		; 65 AA
	asl A		; 0A
	cpy #$E000.w		; C0 00 E0
	phd		; 0B
	wai		; CB
	xba		; EB
	brk $E0.b		; 00 E0
	phd		; 0B
	sbc $00C9.w,X		; FD C9 00
	cpx #$001B.w		; E0 1B 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C5.b		; 00 C5
	inc $FF00.w,X		; FE 00 FF
	sed		; F8
	jsr ($0CFF.w,X)		; FC FF 0C
	inc $9DF8.w,X		; FE F8 9D
	cmp ($0D.b,X)		; C1 0D
	rep #$0D		; C2 0D
	cmp $FB.b,S		; C3 FB
	cmp $0DC40D.l,X		; DF 0D C4 0D
	cpy #$37F8.w		; C0 F8 37
	cmp $0D.b		; C5 0D
	dec $0D.b		; C6 0D
	cmp [$0D.b]		; C7 0D
	iny		; C8
	ora $BEC9.w		; 0D C9 BE
	sed		; F8
	and ($FF.b)		; 32 FF
	sbc $920D91.l		; EF 91 0D 92
	ora $0DCA.w		; 0D CA 0D
	wai		; CB
	ora $0DCC.w		; 0D CC 0D
	cmp $CE0D.w		; CD 0D CE
	cpy #$2CF8.w		; C0 F8 2C
	sta ($FF.b,S),Y		; 93 FF
	sbc $0D940D.l,X		; FF 0D 94 0D
	sta $0D.b,X		; 95 0D
	stx $0D.b,Y		; 96 0D
	sta [$0D.b],Y		; 97 0D
	cmp $0DD00D.l		; CF 0D D0 0D
	cmp ($0D.b),Y		; D1 0D
	cmp ($FD.b)		; D2 FD
	sbc $C0D30D.l,X		; FF 0D D3 C0
	sed		; F8
	bit $0D98.w		; 2C 98 0D
	sta $9A0D.w,Y		; 99 0D 9A
	ora $0D9B.w		; 0D 9B 0D
	stz $D40D.w		; 9C 0D D4
	ora $FFBF.w		; 0D BF FF
	cmp $0D.b,X		; D5 0D
	dec $0D.b,X		; D6 0D
	cmp [$0D.b],Y		; D7 0D
	cld		; D8
	cpy #$2CF8.w		; C0 F8 2C
	sta $9E0D.w,X		; 9D 0D 9E
	ora $0D9F.w		; 0D 9F 0D
	ldy #$DFFF.w		; A0 FF DF
	ora $0DA1.w		; 0D A1 0D
	cmp $DA0D.w,Y		; D9 0D DA
	ora $0DDB.w		; 0D DB 0D
	jmp.w [$DD0D]		; DC 0D DD
	ora $BEDE.w		; 0D DE BE
	sed		; F8
	rol A		; 2A
	sbc $0DA2FF.l,X		; FF FF A2 0D
	lda $0D.b,S		; A3 0D
	ldy $0D.b		; A4 0D
	lda $0D.b		; A5 0D
	ldx $0D.b		; A6 0D
	cmp $0DE00D.l,X		; DF 0D E0 0D
	sbc ($0D.b,X)		; E1 0D
	sbc $0DE2FF.l		; EF FF E2 0D
	sbc $0D.b,S		; E3 0D
	cpx $C0.b		; E4 C0
	sed		; F8
	rol A		; 2A
	lda [$0D.b]		; A7 0D
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	tax		; AA
	ora $FFAB.w		; 0D AB FF
	sbc [$0D.b],Y		; F7 0D
	sbc $0D.b		; E5 0D
	inc $0D.b		; E6 0D
	sbc [$0D.b]		; E7 0D
	inx		; E8
	ora $0DE9.w		; 0D E9 0D
	nop		; EA
	rol $2CF8.w,X		; 3E F8 2C
	ldy $FF0D.w		; AC 0D FF
	sbc $AE0DAD.l,X		; FF AD 0D AE
	ora $0DAF.w		; 0D AF 0D
	xba		; EB
	ora $0DEC.w		; 0D EC 0D
	sbc $EE0D.w		; ED 0D EE
	ora $0DEF.w		; 0D EF 0D
	inc $F0FF.w,X		; FE FF F0
	rol $30F0.w,X		; 3E F0 30
	bcs  13.b		; B0 0D
	lda ($0D.b),Y		; B1 0D
	sbc ($0D.b),Y		; F1 0D
	sbc ($0D.b)		; F2 0D
	sbc ($0D.b,S),Y		; F3 0D
	pea $F50D.w		; F4 0D F5
	sbc $0DFF.w,X		; FD FF 0D
	inc $C0.b,X		; F6 C0
	sed		; F8
	rol $0DB2.w		; 2E B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ldy $0D.b,X		; B4 0D
	sbc [$0D.b],Y		; F7 0D
	sed		; F8
	ora $0DF9.w		; 0D F9 0D
	sbc $0DFAFF.l		; EF FF FA 0D
	xce		; FB
	ora $C0FC.w		; 0D FC C0
	sed		; F8
	rol $0DB5.w		; 2E B5 0D
	ldx $0D.b,Y		; B6 0D
	lda [$0D.b],Y		; B7 0D
	sbc $FE0D.w,X		; FD 0D FE
	sbc ($FE.b,X)		; E1 FE
	ora $C6FF.w		; 0D FF C6
	asl $0E01.w		; 0E 01 0E
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	and $0DB8.w		; 2D B8 0D
	lda $BA0D.w,Y		; B9 0D BA
	sbc $BB0DF7.l,X		; FF F7 0D BB
	ora $0E02.w		; 0D 02 0E
	ora $0E.b,S		; 03 0E
	tsb $0E.b		; 04 0E
	ora $0E.b		; 05 0E
	asl $C0.b		; 06 C0
	sed		; F8
	bit $0DBC.w		; 2C BC 0D
	sbc $0DBDFF.l,X		; FF FF BD 0D
	ldx $BF0D.w,Y		; BE 0D BF
	ora $0DC0.w		; 0D C0 0D
	ora [$0E.b]		; 07 0E
	php		; 08
	asl $0E09.w		; 0E 09 0E
	asl A		; 0A
	asl $FC3E.w		; 0E 3E FC
	phd		; 0B
	cpy #$2AF8.w		; C0 F8 2A
	tsb $0D0E.w		; 0C 0E 0D
	asl $0FFF.w		; 0E FF 0F
	asl $0E10.w		; 0E 10 0E
	ora ($FF.b),Y		; 11 FF
	sbc [$0E.b],Y		; F7 0E
	and $2E0E.w		; 2D 0E 2E
	asl $0E2F.w		; 0E 2F 0E
	bmi  14.b		; 30 0E
	and ($0E.b),Y		; 31 0E
	and ($BE.b)		; 32 BE
	sed		; F8
	plp		; 28
	ora ($0E.b)		; 12 0E
	sbc $0E13FF.l,X		; FF FF 13 0E
	trb $0E.b		; 14 0E
	ora $0E.b,X		; 15 0E
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	and ($0E.b,S),Y		; 33 0E
	bit $0E.b,X		; 34 0E
	and $0E.b,X		; 35 0E
	xce		; FB
	sbc $370E36.l,X		; FF 36 0E 37
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	plp		; 28
	clc		; 18
	asl $0E19.w		; 0E 19 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	trb $1D0E.w		; 1C 0E 1D
	sbc $1E0EF7.l,X		; FF F7 0E 1E
	asl $0E38.w		; 0E 38 0E
	and $3A0E.w,Y		; 39 0E 3A
	asl $0E3B.w		; 0E 3B 0E
	bit $F8C0.w,X		; 3C C0 F8
	plp		; 28
	ora $FFFF0E.l,X		; 1F 0E FF FF
	jsr $210E.w		; 20 0E 21
	asl $0E22.w		; 0E 22 0E
	and $0E.b,S		; 23 0E
	bit $0E.b		; 24 0E
	and $0E.b		; 25 0E
	and $3E0E.w,X		; 3D 0E 3E
	asl $FFEF.w		; 0E EF FF
	and $0E400E.l,X		; 3F 0E 40 0E
	eor ($C0.b,X)		; 41 C0
	sed		; F8
	plp		; 28
	rol $0E.b		; 26 0E
	and [$0E.b]		; 27 0E
	plp		; 28
	asl $0E29.w		; 0E 29 0E
	rol A		; 2A
	sbc $2B0E5F.l,X		; FF 5F 0E 2B
	asl $0E2C.w		; 0E 2C 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	mvp $45,$0E		; 44 0E 45
	asl $C046.w		; 0E 46 C0
	sed		; F8
	ora [$15.b],Y		; 17 15
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	cmp ($00.b,X)		; C1 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0017.w,X		; FD 17 00
	sbc $001FFD.l,X		; FF FD 1F 00
	and [$00.b],Y		; 37 00
	and $2610.w		; 2D 10 26
	clc		; 18
	beq  -2.b		; F0 FE
	jsr $FFFA.w		; 20 FA FF
	sbc $1E.b,X		; F5 1E
	nop		; EA
	sbc $F009F8.l,X		; FF F8 09 F0
	brk $8F.b		; 00 8F
	xce		; FB
	.db $62, $00, $E3		; 62 00 E3
	sta $F8EF.w		; 8D EF F8
	asl A		; 0A
	brk $70.b		; 00 70
	bvs  30.b		; 70 1E
	cmp $FF0BF8.l,X		; DF F8 0B FF
	cpx #$EB6D.w		; E0 6D EB
	sbc ($F8.b),Y		; F1 F8
	ora $F8FF.w		; 0D FF F8
	bcc  15.b		; 90 0F
	cpx #$1EF8.w		; E0 F8 1E
	bra -82.b		; 80 AE
	sed		; F8
	bmi   1.b		; 30 01
	inc $0AF8.w,X		; FE F8 0A
	sbc $9E13F8.l,X		; FF F8 13 9E
	cmp [$F0.b]		; C7 F0
	adc $BE7FBF.l,X		; 7F BF 7F BE
	inc $FC3E.w,X		; FE 3E FC
	sbc $1B3FDF.l,X		; FF DF 3F 1B
	inx		; E8
	sta $FFFF3F.l		; 8F 3F FF FF
	sbc $FFFE7F.l,X		; FF 7F FE FF
	ldy #$478E.w		; A0 8E 47
	sed		; F8
	beq  96.b		; F0 60
	sbc $E2DAF8.l,X		; FF F8 DA E2
	adc $9F679F.l		; 6F 9F 67 9F
	lda $FF.b		; A5 FF
	cpy #$DEE0.w		; C0 E0 DE
	sed		; F8
	ora #$FDFF.w		; 09 FF FD
	tsb $3F.b		; 04 3F
	brk $7E.b		; 00 7E
	sta ($00.b,X)		; 81 00
	sbc $01F7C3.l,X		; FF C3 F7 01
	sbc $FBF4F9.l,X		; FF F9 F4 FB
	sbc $FB.b,X		; F5 FB
	ora $07.b,S		; 03 07
	cpx #$0DF8.w		; E0 F8 0D
	cmp ($3E.b,X)		; C1 3E
	and $7F80C0.l,X		; 3F C0 80 7F
	bmi  -1.b		; 30 FF
	bvs  -1.b		; 70 FF
	beq -68.b		; F0 BC
	dec $85FE.w,X		; DE FE 85
	ora $FEF8.w		; 0D F8 FE
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $C0FF.w		; 0D FF C0
	brk $FE.b		; 00 FE
	jsr ($0140.w,X)		; FC 40 01
	sbc $FC.b,X		; F5 FC
	bra  34.b		; 80 22
	inc $FFFF.w,X		; FE FF FF
	ora ($FC.b,S),Y		; 13 FC
	and [$08.b],Y		; 37 08
	sbc $0C23BF.l,X		; FF BF 23 0C
	ora ($0E.b),Y		; 11 0E
	ora $1006.w,Y		; 19 06 10
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $1F.b,S		; 03 1F
	and $0CFF.w,Y		; 39 FF 0C
	sbc ($0F.b),Y		; F1 0F
	inc $FE07.w,X		; FE 07 FE
	bit $8E23.w,X		; 3C 23 8E
	php		; 08
	sbc $FF.b,S		; E3 FF
	adc $00F002.l,X		; 7F 02 F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	bra  62.b		; 80 3E
	cpy #$1F.b		; C0 1F
	cpx #$C7.b		; E0 C7
	ora [$F1.b]		; 07 F1
	ora ($FC.b,X)		; 01 FC
	beq  -1.b		; F0 FF
	adc ($FE.b),Y		; 71 FE
	sbc $6FA0FC.l,X		; FF FC A0 6F
	pea $3DDB.w		; F4 DB 3D
	cpx #$9F.b		; E0 9F
	adc ($41.b)		; 72 41
	ora $0B3CFE.l,X		; 1F FE 3C 0B
	adc #$47.b		; 69 47
	cmp [$8F.b],Y		; D7 8F
	rti		; 40

	sed		; F8
	jsr ($7F7E.w,X)		; FC 7E 7F
	and $70073F.l,X		; 3F 3F 07 70
	sta $0FC71F.l,X		; 9F 1F C7 0F
	jsr ($8CF8.w,X)		; FC F8 8C
	sbc ($FB.b)		; F2 FB
	ora [$88.b]		; 07 88
	ldy $42.b		; A4 42
	ora $79FF10.l,X		; 1F 10 FF 79
	pea $A0F0.w		; F4 F0 A0
	rts		; 60

	sed		; F8
	ora #$F3.b		; 09 F3
	inc $1B00.w,X		; FE 00 1B
	trb $F046.w		; 1C 46 F0
	sed		; F8
	ora #$D2.b		; 09 D2
	sbc $3AE9BA.l,X		; FF BA E9 3A
	sed		; F8
	asl A		; 0A
	beq -61.b		; F0 C3
	brk $7E.b		; 00 7E
	.db $42, $81		; 42 81
	sbc $F1F3EC.l,X		; FF EC F3 F1
	sta ($A7.b,X)		; 81 A7
	sed		; F8
	sbc [$79.b],Y		; F7 79
	sbc $E4C381.l,X		; FF 81 C3 E4
	ora $FE.b,S		; 03 FE
	inc $FCFE.w,X		; FE FE FC
	adc $50.b,X		; 75 50
	sbc [$10.b],Y		; F7 10
	lda ($78.b,S),Y		; B3 78
	dec $879F.w		; CE 9F 87
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	dey		; 88
	sbc ($20.b,X)		; E1 20
	sta $2C.b,S		; 83 2C
	ora $C3E81F.l		; 0F 1F E8 C3
	beq -15.b		; F0 F1
	beq -57.b		; F0 C7
	eor ($00.b)		; 52 00
	adc $3B02A2.l,X		; 7F A2 02 3B
	php		; 08
	sbc $20EF5F.l,X		; FF 5F EF 20
	stz $7D81.w,X		; 9E 81 7D
	cop $F8.b		; 02 F8
	asl $F3.b		; 06 F3
	tsb $1CE1.w		; 0C E1 1C
	ora ($00.b,X)		; 01 00
	inx		; E8
	jsr ($A802.w,X)		; FC 02 A8
	mvp $FE,$86		; 44 86 FE
	rti		; 40

	inc $F0.b		; E6 F0
	ora #$86.b		; 09 86
	ldy #$FE.b		; A0 FE
	sbc $E8FC.w		; ED FC E8
	and ($07.b),Y		; 31 07
	stx $FC07.w		; 8E 07 FC
	pea $E1EC.w		; F4 EC E1
	beq  -1.b		; F0 FF
	sed		; F8
	ora ($F2.b,S),Y		; 13 F2
	sty $F2.b,X		; 94 F2
	sbc $F7FE32.l,X		; FF 32 FE F7
.ACCU 8
	sep #$E7		; E2 E7
	inc $C240.w,X		; FE 40 C2
	cpx #$F8.b		; E0 F8
	ora ($C7.b,S),Y		; 13 C7
	brk $EF.b		; 00 EF
	cmp [$E7.b]		; C7 E7
	cpy #$FE.b		; C0 FE
	stx $E0.b		; 86 E0
	plx		; FA
	cpx #$F8.b		; E0 F8
	ora ($F3.b,S),Y		; 13 F3
	cpy #$F3.b		; C0 F3
	jsr ($F17C.w,X)		; FC 7C F1
	beq -122.b		; F0 86
	and [$F1.b],Y		; 37 F1
	cpx #$F8.b		; E0 F8
	trb $81.b		; 14 81
	dec $F981.w,X		; DE 81 F9
	bvs 112.b		; 70 70
	rti		; 40

	inx		; E8
	clc		; 18
	sed		; F8
	stz $C6FD.w,X		; 9E FD C6
	sed		; F8
	bmi 120.b		; 30 78
	inc $F8E4.w,X		; FE E4 F8
	ora $040106.l		; 0F 06 01 04
	ora ($0B.b,X)		; 01 0B
	cpx #$03.b		; E0 03
	brk $02.b		; 00 02
	lsr $FF.b		; 46 FF
	pea $38FE.w		; F4 FE 38
	sed		; F8
	phd		; 0B
	ora $E0BFFF.l,X		; 1F FF BF E0
	asl $07F0.w		; 0E F0 07
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	sta $7D.b,S		; 83 7D
	dec $38.b		; C6 38
	sta [$3A.b]		; 87 3A
	jmp ($FF11.w)		; 6C 11 FF
	sbc $FCF6C8.l,X		; FF C8 F6 FC
	ora ($7D.b,X)		; 01 7D
	ora ($79.b,X)		; 01 79
	ora $3B.b,S		; 03 3B
	ora $EF.b,S		; 03 EF
	eor $FF3F9F.l,X		; 5F 9F 3F FF
	lda $A13F3F.l,X		; BF 3F 3F A1
	adc $7B61F6.l,X		; 7F F6 61 7B
	cmp ($D7.b,X)		; C1 D7
	sbc $5FFFF6.l		; EF F6 FF 5F
	sta [$64.b]		; 87 64
	sbc ($F8.b),Y		; F1 F8
	sbc $E7E7.w,Y		; F9 E7 E7
	cmp $57F63B.l,X		; DF 3B F6 57
	sbc ($FE.b),Y		; F1 FE
	jmp ($83FC.w,X)		; 7C FC 83
	ora #$FF.b		; 09 FF
	sbc $FCFF.w,X		; FD FF FC
	sbc ($FC.b),Y		; F1 FC
	sbc $80FE.w,X		; FD FE 80
	sbc $E0F6FD.l,X		; FF FD F6 E0
	adc [$F7.b]		; 67 F7
	adc $F7.b,S		; 63 F7
	sta ($67.b,S),Y		; 93 67
	cmp $0F63F0.l		; CF F0 63 0F
	phd		; 0B
	sta $F5F193.l,X		; 9F 93 F1 F5
	rtl		; 6B

	sta ($0B.b,S),Y		; 93 0B
	and $9B6302.l,X		; 3F 02 63 9B
	phd		; 0B
	sbc ($97.b,S),Y		; F3 97
	adc [$F9.b]		; 67 F9
	dex		; CA
	cmp $E0BC.w,Y		; D9 BC E0
	cmp $A7FA.w		; CD FA A7
	sbc [$E3.b],Y		; F7 E3
	ora $CFE9.w,X		; 1D E9 CF
	cmp $C7FD.w		; CD FD C7
	ora $FC.b,S		; 03 FC
	sbc [$F9.b]		; E7 F9
	xce		; FB
	lda $8087F4.l,X		; BF F4 87 80
	sta $FFDF00.l		; 8F 00 DF FF
	and [$40.b],Y		; 37 40
	inc $5C81.w,X		; FE 81 5C
	ora $F8.b,S		; 03 F8
	eor [$20.b]		; 47 20
	sta $7FAFF0.l		; 8F F0 AF 7F
	bit $F1.b		; 24 F1
	and $FE87FC.l,X		; 3F FC 87 FE
	bra -65.b		; 80 BF
	bra -97.b		; 80 9F
	cpy #$DF.b		; C0 DF
	cpy #$CF.b		; C0 CF
	cpx #$4A.b		; E0 4A
	sbc $78823F.l,X		; FF 3F 82 78
	tsb $04F0.w		; 0C F0 04
	beq  24.b		; F0 18
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	cpy #$60.b		; C0 60
	bra  -4.b		; 80 FC
	pla		; 68
	pei ($46.b)		; D4 46
	beq -14.b		; F0 F2
	lda ($F1.b)		; B2 F1
	cpx #$FE.b		; E0 FE
	lda ($F0.b),Y		; B1 F0
	trb $00.b		; 14 00
	cpx #$36.b		; E0 36
	ora [$77.b]		; 07 77
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	jsr ($F8FF.w,X)		; FC FF F8
	ora $FEC2E7.l		; 0F E7 C2 FE
	jsr ($82C7.w,X)		; FC C7 82
	clv		; B8
	and $068FFE.l,X		; 3F FE 8F 06
	asl $E0.b		; 06 E0
	sed		; F8
	bpl -31.b		; 10 E1
	cpy #$F1.b		; C0 F1
	cpy #$F9.b		; C0 F9
	bne  13.b		; D0 0D
	ora $FBFE.w,X		; 1D FE FB
	beq  30.b		; F0 1E
	sbc $E0.b,S		; E3 E0
	sed		; F8
	bpl -29.b		; 10 E3
	cmp ($E2.b,X)		; C1 E2
	sbc [$DE.b],Y		; F7 DE
	cpx #$FE.b		; E0 FE
	cmp $80.b,S		; C3 80
	cmp [$83.b]		; C7 83
	sta $80.b,S		; 83 80
	sed		; F8
	ora ($E0.b)		; 12 E0
	bra 123.b		; 80 7B
	sta [$F0.b]		; 87 F0
	rts		; 60

	rts		; 60

	jsr ($FFED.w,X)		; FC ED FF
	adc ($72.b)		; 72 72
	cpx #$F8.b		; E0 F8
	bpl 112.b		; 10 70
	jsr $FFFE.w		; 20 FE FF
	xce		; FB
	sed		; F8
	bvs  -8.b		; 70 F8
	bvc -36.b		; 50 DC
	dey		; 88
	stz $1C08.w		; 9C 08 1C
	php		; 08
	php		; 08
	jsr $30F8.w		; 20 F8 30
	and [$01.b],Y		; 37 01
	and $01FF.w		; 2D FF 01
	ora [$1B.b]		; 07 1B
	ora $0F.b,S		; 03 0F
	ora $0B.b,S		; 03 0B
	ora [$1F.b]		; 07 1F
	ora $37FC17.l		; 0F 17 FC 37
	sbc $13F4.w,X		; FD F4 13
	ora [$FF.b]		; 07 FF
	sbc $FF0F.w,X		; FD 0F FF
	sbc $80D8C8.l		; EF C8 D8 80
	lda [$FF.b],Y		; B7 FF
	sbc $C87790.l,X		; FF 90 77 C8
	sbc $104E38.l		; EF 38 4E 10
	cmp $30BFB0.l,X		; DF B0 BF 30
	beq  -8.b		; F0 F8
	sbc [$E7.b]		; E7 E7
	cpy $FFFF.w		; CC FF FF
	jmp.w [$D898]		; DC 98 D8
	bcc -71.b		; 90 B9
	lda ($BB.b),Y		; B1 BB
	and ($B7.b),Y		; 31 B7
	adc ($77.b),Y		; 71 77
	lda $2FFF9E.l,X		; BF 9E FF 2F
	sbc [$FF.b],Y		; F7 FF
	and $07F70F.l,X		; 3F 0F F7 07
	tda		; 7B
	sta [$FF.b]		; 87 FF
	cmp $FB.b,S		; C3 FB
	cmp $FF.b,S		; C3 FF
	cmp [$7F.b]		; C7 7F
	sbc $3D3F1F.l,X		; FF 1F 3F 3D
	ldy $C7C8.w,X		; BC C8 C7
	sbc [$C7.b]		; E7 C7
	cmp [$FE.b],Y		; D7 FE
	cmp $C7.b,S		; C3 C7
	sbc $E17B06.l,X		; FF 06 7B E1
	and #$D9.b		; 29 D9
	jsr ($26FB.w,X)		; FC FB 26
	sbc ($FF.b,X)		; E1 FF
	beq  -9.b		; F0 F7
	tsa		; 3B
	cmp $FEE6.w,Y		; D9 E6 FE
	sbc $FCF878.l,X		; FF 78 F8 FC
	sbc $F8F9F8.l,X		; FF F8 F9 F8
	xba		; EB
	xce		; FB
	beq  -5.b		; F0 FB
	adc $45FFFF.l,X		; 7F FF FF 45
	cmp [$00.b]		; C7 00
	xce		; FB
	cop $F9.b		; 02 F9
	tsb $BC.b		; 04 BC
	lsr $7D.b		; 46 7D
	.db $62, $FE, $63		; 62 FE 63
	sbc $FF8363.l,X		; FF 63 83 FF
	cmp [$C7.b]		; C7 C7
	and $0C39.w,Y		; 39 39 0C
	asl $0E06.w,X		; 1E 06 0E
	adc $EF.b,S		; 63 EF
	sbc $E7.b,S		; E3 E7
	sbc $FC.b,S		; E3 FC
	sbc $C798FF.l,X		; FF FF 98 C7
	sbc $4AD6.w,Y		; F9 D6 4A
	cpx $7D.b		; E4 7D
	rts		; 60

	ldx $E478.w		; AE 78 E4
	bmi -20.b		; 30 EC
	bvs -28.b		; 70 E4
	clv		; B8
	sbc $43.b,S		; E3 43
	sbc $B8E7E0.l		; EF E0 E7 B8
	inc $F0.b,X		; F6 F0
	bvs 120.b		; 70 78
	sbc $D55838.l,X		; FF 38 58 D5
	inc $C0B8.w,X		; FE B8 C0
	rol $0EE0.w		; 2E E0 0E
	jsl $FF31E0.l		; 22 E0 31 FF
	sed		; F8
	xba		; EB
	lda ($D5.b,X)		; A1 D5
	sbc $5B09F8.l,X		; FF F8 09 5B
	sbc $0F1708.l,X		; FF 08 17 0F
	inc $0BF8.w,X		; FE F8 0B
	tas		; 1B
	phd		; 0B
	pea $F8FF.w		; F4 FF F8
	asl A		; 0A
	ldx $FF30.w,Y		; BE 30 FF
	and ($3B.b),Y		; 31 3B
	pea $BFDF.w		; F4 DF BF
	sbc $7DF4.w,Y		; F9 F4 7D
	ply		; 7A
	inc $68FD.w,X		; FE FD 68
.ACCU 8
.INDEX 8
	sep #$71		; E2 71
	adc $707D70.l,X		; 7F 70 7D 70
	jsr ($C272.w,X)		; FC 72 C2
	sbc $15E155.l,X		; FF 55 E1 15
	sbc $FF.b,S		; E3 FF
	cmp $DF.b,S		; C3 DF
	sbc $E7.b,S		; E3 E7
	tyx		; BB
	adc $7B7F4F.l		; 6F 4F 7F 7B
	sbc $BF97.w,Y		; F9 97 BF
	lda $CBC3F1.l,X		; BF F1 C3 CB
	xce		; FB
	phk		; 4B
	xce		; FB
	xce		; FB
	brk $CB.b		; 00 CB
	cmp $D8.b,S		; C3 D8
	sbc $FAFEF0.l,X		; FF F0 FE FA
	sbc $C4.b,X		; F5 C4
	inc $F1.b,X		; F6 F1
	sbc $FF63.w,X		; FD 63 FF
	sbc ($F4.b,S),Y		; F3 F4
	sbc [$FE.b],Y		; F7 FE
	sbc $7FCEFD.l,X		; FF FD CE 7F
	adc $F7.b,S		; 63 F7
	tda		; 7B
	xce		; FB
	and $5BE09F.l		; 2F 9F E0 5B
	ora ($5F.b,S),Y		; 13 5F
	sta $F06FAF.l,X		; 9F AF 6F F0
	lda ($63.b,S),Y		; B3 63
	adc $13F4A1.l,X		; 7F A1 F4 13
	and $AE3FB5.l,X		; 3F B5 3F AE
	cmp #$FF.b		; C9 FF
	ror $3C.b		; 66 3C
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	jsr ($2638.w,X)		; FC 38 26
	sed		; F8
	inc $F8.b		; E6 F8
	ldx $B8.b		; A6 B8
	jsr ($F0CE.w,X)		; FC CE F0
	stx $B8F0.w		; 8E F0 B8
	clc		; 18
	mvn $FF,$BC		; 54 BC FF
	jsr ($FFFE.w,X)		; FC FE FF
	inc $F0C2.w,X		; FE C2 F0
	rtl		; 6B

	jsr ($C1CA.w,X)		; FC CA C1
	eor $FF.b,X		; 55 FF
	sed		; F8
	tas		; 1B
	adc ($80.b,S),Y		; 73 80
	clv		; B8
	asl $0004.w		; 0E 04 00
	adc $FF31E0.l		; 6F E0 31 FF
	sed		; F8
	lsr $B43F.w		; 4E 3F B4
	xce		; FB
	sbc $0AF866.l,X		; FF 66 F8 0A
	bpl 102.b		; 10 66
	sed		; F8
	ora $07F3.w		; 0D F3 07
	adc $0B03.w,X		; 7D 03 0B
	tsb $0D.b		; 04 0D
	ora $FE.b,S		; 03 FE
	ora ($05.b,X)		; 01 05
	sbc $0602E0.l,X		; FF E0 02 06
	ora $02.b,S		; 03 02
	ora ($0F.b,X)		; 01 0F
	and $E24301.l		; 2F 01 43 E2
	ora ($C9.b),Y		; 11 C9
	ora ($E0.b,X)		; 01 E0
	sbc $D5F300.l,X		; FF 00 F3 D5
	cmp #$CB.b		; C9 CB
	sbc [$EB.b]		; E7 EB
	jsr ($7FBC.w,X)		; FC BC 7F
	adc $EDFE9F.l		; 6F 9F FE ED
	adc $24DFFE.l,X		; 7F FE DF 24
	lda $6BEF.w,Y		; B9 EF 6B
	sbc ($F0.b),Y		; F1 F0
	jsr ($7F3F.w,X)		; FC 3F 7F
	asl A		; 0A
	lda $1FFFFB.l,X		; BF FB FF 1F
	sbc $F11FC2.l,X		; FF C2 1F F1
	ora $EFD73F.l		; 0F 3F D7 EF
	sbc $4C3F2E.l		; EF 2E 3F 4C
	cmp $E5.b,X		; D5 E5
	sed		; F8
	bcs  24.b		; B0 18
	sbc [$FB.b],Y		; F7 FB
	asl $F13E.w,X		; 1E 3E F1
	sbc $0EFDFF.l,X		; FF FF FD 0E
	asl $1EF3.w,X		; 1E F3 1E
	adc $32C85F.l		; 6F 5F C8 32
	sbc ($03.b,S),Y		; F3 03
	and [$DB.b]		; 27 DB
	rti		; 40

	adc $FB.b,S		; 63 FB
	sbc $AD.b,X		; F5 AD
	cmp #$D8.b		; C9 D8
	lda ($03.b,S),Y		; B3 03
	sbc $EBD87B.l,X		; FF 7B D8 EB
	cmp $268083.l,X		; DF 83 80 26
	lda $DFD8.w,Y		; B9 D8 DF
	sed		; F8
	ldy $FFE9.w		; AC E9 FF
	cmp #$FF.b		; C9 FF
	adc ($20.b,X)		; 61 20
	ora ($87.b,X)		; 01 87
	inc $D4.b		; E6 D4
	sbc $F8BBB7.l,X		; FF B7 BB F8
	ora $E01EFC.l		; 0F FC 1E E0
	tsa		; 3B
	cpy #$7F.b		; C0 7F
	bra -68.b		; 80 BC
	rti		; 40

	stz $DF.b,X		; 74 DF
	and $6800DB.l,X		; 3F DB 00 68
	bra -24.b		; 80 E8
	bpl  12.b		; 10 0C
	sbc ($81.b,S),Y		; F3 81
	sec		; 38
	sei		; 78
	sed		; F8
	sed		; F8
	brk $80.b		; 00 80
	tsb $A26A.w		; 0C 6A A2
	brk $90.b		; 00 90
	rol $BC8D.w,X		; 3E 8D BC
	tya		; 98
	tsx		; BA
	rts		; 60

	beq  14.b		; F0 0E
	cop $44.b		; 02 44
	bpl  26.b		; 10 1A
	sbc $CE12E0.l,X		; FF E0 12 CE
	trb $55.b		; 14 55
	inc $40.b,X		; F6 40
	cmp $EF.b,X		; D5 EF
	inc $CE1C.w,X		; FE 1C CE
	phx		; DA
	dec $F8.b		; C6 F8
	ora #$20.b		; 09 20
	plb		; AB
	bpl  11.b		; 10 0B
	sbc $FFFDC6.l		; EF C6 FD FF
	jsr $FED7.w		; 20 D7 FE
	asl A		; 0A
	phx		; DA
	dec $F035.w,X		; DE 35 F0
	tsb $B8F7.w		; 0C F7 B8
	asl $88A6.w		; 0E A6 88
	cld		; D8
	bpl 119.b		; 10 77
	cld		; D8
	dey		; 88
	adc $0FA04A.l,X		; 7F 4A A0 0F
	phy		; 5A
	tsb $40.b		; 04 40
	rol A		; 2A
	inc $FC46.w,X		; FE 46 FC
	cmp ($1A.b,X)		; C1 1A
	iny		; C8
	tsb $E048.w		; 0C 48 E0
	sbc $F8FFFF.l,X		; FF FF FF F8
	asl A		; 0A
	and $BFDFFF.l,X		; 3F FF DF BF
	sbc $A7EB5F.l		; EF 5F EB A7
	ply		; 7A
	eor #$5E.b		; 49 5E
	ora ($FF.b)		; 12 FF
	tsb $FD.b		; 04 FD
	cmp $2A3DC3.l,X		; DF C3 3D 2A
	lda #$FF.b		; A9 FF
	and $BF1F7F.l,X		; 3F 7F 1F BF
	sta [$CF.b]		; 87 CF
	sbc ($F3.b,X)		; E1 F3
	sed		; F8
	eor [$C1.b]		; 47 C1
	adc #$F8.b		; 69 F8
	xce		; FB
	sbc [$FE.b],Y		; F7 FE
	sbc [$F3.b],Y		; F7 F3
	xce		; FB
	sta $79.b,S		; 83 79
	lda ($9C.b,X)		; A1 9C
	sta $F8.b		; 85 F8
	inc $10.b,X		; F6 10
	tsb $FFF2.w		; 0C F2 FF
	sed		; F8
	sbc $7EFCFC.l,X		; FF FC FC 7E
	sbc $0FFEFF.l,X		; FF FF FE 0F
	ora $F7EBD7.l,X		; 1F D7 EB F7
	xba		; EB
	adc $333B73.l		; 6F 73 3B 33
	tsa		; 3B
	and [$34.b],Y		; 37 34
	and [$E2.b]		; 27 E2
	xce		; FB
	bpl -52.b		; 10 CC
	cmp $F20C08.l		; CF 08 0C F2
	sta $03.b,S		; 83 03
	cmp [$07.b]		; C7 07
	inc $FECF.w,X		; FE CF FE
	sbc $301FE3.l,X		; FF E3 1F 30
	sec		; 38
	sed		; F8
	sbc $F3FEF1.l,X		; FF F1 FE F3
	jsr ($F9C5.w,X)		; FC C5 F9
	ora [$E4.b],Y		; 17 E4
	lsr $806F.w,X		; 5E 6F 80
	sta ($FB.b)		; 92 FB
	dey		; 88
	cmp ($4C.b,S),Y		; D3 4C
	lda $C1FFBD.l		; AF BD FF C1
	ldy #$E1.b		; A0 E1
	php		; 08
	ora [$8F.b]		; 07 8F
	stx $DF.b,Y		; 96 DF
	jsr $6FA1.w		; 20 A1 6F
	phk		; 4B
	ora [$6B.b],Y		; 17 6B
	cpy #$80.b		; C0 80
	sec		; 38
	lda ($FE.b),Y		; B1 FE
	cpx #$C0.b		; E0 C0
	cmp ($31.b,X)		; C1 31
	lda ($15.b),Y		; B1 15
	ldy $1958.w,X		; BC 58 19
	ldx $E08A.w		; AE 8A E0
	asl $8AEF.w		; 0E EF 8A
	cpx #$10.b		; E0 10
	cpx #$00.b		; E0 00
	ror $0257.w,X		; 7E 57 02
	cpx $E8.b		; E4 E8
	ora $0020.w		; 0D 20 00
	.db $42, $1E		; 42 1E
	inc $AA.b,X		; F6 AA
	lda ($FF.b)		; B2 FF
	ldx $50.b		; A6 50
	lda ($DA.b)		; B2 DA
	sbc $E3.b		; E5 E3
	cop $FE.b		; 02 FE
	phb		; 8B
	txa		; 8A
	tya		; 98
	plp		; 28
	bit $0160.w,X		; 3C 60 01
	wai		; CB
	beq  13.b		; F0 0D
	bra -64.b		; 80 C0
	inc $0000.w		; EE 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	bra   1.b		; 80 01
	tsb $19.b		; 04 19
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	sbc $03FFFF.l,X		; FF FF FF 03
	inc $5501.w,X		; FE 01 55
	sbc $0E07FF.l,X		; FF FF 07 0E
	ora [$3E.b],Y		; 17 3E
	bvc -65.b		; 50 BF
	eor $1807FF.l		; 4F FF 07 18
	rts		; 60

	sta $41FF83.l		; 8F 83 FF 41
	eor ($FF.b),Y		; 51 FF
	sbc $FFFCFC.l,X		; FF FC FC FF
	inc $DE03.w,X		; FE 03 DE
	cpy $EF.b		; C4 EF
	sbc [$FF.b],Y		; F7 FF
	jsr ($C403.w,X)		; FC 03 C4
	sbc [$03.b],Y		; F7 03
	inc $5501.w,X		; FE 01 55
	sbc $8080FF.l,X		; FF FF 80 80
	cpx #$E0.b		; E0 E0
	sei		; 78
	inx		; E8
	stz $80FF.w		; 9C FF 80
	rts		; 60

	clc		; 18
	sty $E7.b		; 84 E7
	sbc $7F1451.l		; EF 51 14 7F
	rti		; 40

	bra -32.b		; 80 E0
	bmi 112.b		; 30 70
	plp		; 28
	plp		; 28
	trb $14.b		; 14 14
	clc		; 18
	asl A		; 0A
	cop $80.b		; 02 80
	rti		; 40

	jsr $0810.w		; 20 10 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $88FCCD.l,X		; FF CD FC 88
	inx		; E8
	sbc $020101.l,X		; FF 01 01 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	php		; 08
	clc		; 18
	eor [$55.b],Y		; 57 55
	eor $11.b,X		; 55 11
	inc $03FF.w,X		; FE FF 03
	asl $0F.b		; 06 0F
	asl $3402.w,X		; 1E 02 34
	asl $02FE.w		; 0E FE 02
	tsb $08.b		; 04 08
	bpl  32.b		; 10 20
	sbc $0555FF.l,X		; FF FF 55 05
	sta ($81.b,X)		; 81 81
	xba		; EB
	xba		; EB
	rol $13EF.w		; 2E EF 13
	sbc ($12.b)		; F2 12
	sbc ($A7.b,S),Y		; F3 A7
	adc [$F9.b]		; 67 F9
	rol $B04F.w,X		; 3E 4F B0
	ror $1014.w,X		; 7E 14 10
	tsb $180C.w		; 0C 0C 18
	sbc $0005FF.l,X		; FF FF 05 00
	.db $82, $82, $F9		; 82 82 F9
	sbc $7F8F.w,Y		; F9 8F 7F
	ora [$FF.b]		; 07 FF
	sta $7F.b,S		; 83 7F
	cmp $3E.b,S		; C3 3E
	adc $9F.b,S		; 63 9F
	eor [$BF.b]		; 47 BF
	adc $FF06.w,X		; 7D 06 FF
	sbc $1B0055.l,X		; FF 55 00 1B
	ora $0605.w,X		; 1D 05 06
	sbc $8CFD.w,X		; FD FD 8C
	jsr ($DFE7.w,X)		; FC E7 DF
	iny		; C8
	and [$66.b],Y		; 37 66
	sta $FB04.w,Y		; 99 04 FB
	sbc ($F8.b,X)		; E1 F8
	cop $03.b		; 02 03
	eor ($D5.b,S),Y		; 53 D5
	eor ($11.b),Y		; 51 11
	sbc $C080FF.l,X		; FF FF 80 C0
	rts		; 60

	jsr $3010.w		; 20 10 30
	rti		; 40

	sbc $204080.l,X		; FF 80 40 20
	bpl -37.b		; 10 DB
	cop $45.b		; 02 45
	brk $FC.b		; 00 FC
	xce		; FB
	asl $02.b		; 06 02
	ora ($03.b,X)		; 01 03
	ora ($FC.b,X)		; 01 FC
	cop $01.b		; 02 01
	cmp $00F7.w		; CD F7 00
	ora ($FF.b),Y		; 11 FF
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $80A0.w		; 20 A0 80
	bpl -48.b		; 10 D0
	plp		; 28
	tay		; A8
	bra  64.b		; 80 40
	cmp ($FF.b,X)		; C1 FF
	bra  -1.b		; 80 FF
	sbc $060101.l,X		; FF 01 01 06
	asl $08.b		; 06 08
	php		; 08
	bmi  48.b		; 30 30
	cpy #$C0.b		; C0 C0
	ora ($03.b,X)		; 01 03
	ora $04.b		; 05 04
	tsb $2818.w		; 0C 18 28
	rts		; 60

	ldy #$3F.b		; A0 3F
	jsr ($BCFF.w,X)		; FC FF BC
	cpy #$3F.b		; C0 3F
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	clc		; 18
	and [$24.b]		; 27 24
	stz $40.b		; 64 40
	cpy #$80.b		; C0 80
	bra   4.b		; 80 04
	ora $08.b		; 05 08
	asl A		; 0A
	tsb $D7.b		; 04 D7
	sbc [$41.b],Y		; F7 41
	bpl -72.b		; 10 B8
	sbc $A2642C.l,X		; FF 2C 64 A2
	ora ($11.b)		; 12 11
	ora ($30.b),Y		; 11 30
	phx		; DA
	.db $42, $09		; 42 09
	ora ($80.b,X)		; 01 80
	bra  64.b		; 80 40
	sbc $0150FF.l,X		; FF FF 50 01
	dec A		; 3A
	cmp $2D.b		; C5 2D
	sbc [$9E.b],Y		; F7 9E
	ror $1DE4.w,X		; 7E E4 1D
	txs		; 9A
	ror $1FE5.w,X		; 7E E5 1F
	tya		; 98
	adc $010FF1.l		; 6F F1 0F 01
	cop $01.b		; 02 01
	eor [$55.b],Y		; 57 55
	brk $00.b		; 00 00
	ora [$FF.b],Y		; 17 FF
	dec A		; 3A
	sbc $20.b		; E5 20
	pla		; 68
	sbc ($7E.b,X)		; E1 7E
	bpl -33.b		; 10 DF
	sbc $A20000.l,X		; FF 00 00 A2
	cmp $9C2042.l,X		; DF 42 20 9C
	sty $08.b		; 84 08
	sty $8C18.w		; 8C 18 8C
	php		; 08
	trb $14.b		; 14 14
	stz $EF0C.w		; 9C 0C EF
	sbc $41.b,X		; F5 41
	brk $DF.b		; 00 DF
	lda [$28.b],Y		; B7 28
	pla		; 68
	jsr $04C0.w		; 20 C0 04
	bpl 112.b		; 10 70
	rti		; 40

	bpl  96.b		; 10 60
	rts		; 60

	ora [$04.b]		; 07 04
	plb		; AB
	tax		; AA
	eor $55.b,X		; 55 55
	sbc $0402FE.l,X		; FF FE 02 04
	php		; 08
	bpl  32.b		; 10 20
	rti		; 40

	bra  -1.b		; 80 FF
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	bpl  32.b		; 10 20
	rti		; 40

	and $8A2ACF.l,X		; 3F CF 2A 8A
	sbc [$18.b]		; E7 18
	trb $14.b		; 14 14
	asl A		; 0A
	asl A		; 0A
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	clc		; 18
	trb $0A.b		; 14 0A
	ora $02.b		; 05 02
	ora ($01.b,X)		; 01 01
	and $FF3A00.l,X		; 3F 00 3A FF
	bra -128.b		; 80 80
	bvs 112.b		; 70 70
	ora $70800F.l		; 0F 0F 80 70
	ora ($0E.b,X)		; 01 0E
	ora ($3C.b,X)		; 01 3C
	brk $3C.b		; 00 3C
	sbc $F00F0F.l,X		; FF 0F 0F F0
	beq   7.b		; F0 07
	php		; 08
	sed		; F8
	php		; 08
	cmp ($0F.b,X)		; C1 0F
	cpy #$0F.b		; C0 0F
	sbc $780707.l,X		; FF 07 07 78
	sei		; 78
	bra -128.b		; 80 80
	ora $04.b,S		; 03 04
	bit $C044.w,X		; 3C 44 C0
	rti		; 40

	and $00FF00.l,X		; 3F 00 FF 00
	jsr ($1C03.w,X)		; FC 03 1C
	trb $E0E0.w		; 1C E0 E0
	ora ($02.b,X)		; 01 02
	asl $7012.w		; 0E 12 70
	bcc -128.b		; 90 80
	bra   2.b		; 80 02
	sbc $FFFFC1.l,X		; FF C1 FF FF
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	clc		; 18
	clc		; 18
	rts		; 60

	rts		; 60

	sbc $020101.l,X		; FF 01 01 02
	ora $0C.b,S		; 03 0C
	asl A		; 0A
	bmi  40.b		; 30 28
	cpy #$A0.b		; C0 A0
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $1010F0.l		; 0F F0 10 10
	jsr $C020.w		; 20 20 C0
	cpy #$E0.b		; C0 E0
	bpl  32.b		; 10 20
	bmi  64.b		; 30 40
	rts		; 60

	bra  64.b		; 80 40
	sbc $5554FF.l,X		; FF FF 54 55
	plx		; FA
	sbc $9E91.w,X		; FD 91 9E
	clv		; B8
	lda $E59F9D.l,X		; BF 9D 9F E5
	sbc [$CF.b]		; E7 CF
	cmp $E3C9C9.l		; CF C9 C9 E3
	sbc $60.b,S		; E3 60
	rti		; 40

	rts		; 60

	tya		; 98
	bcs -74.b		; B0 B6
	jmp.w [$557F]		; DC 7F 55
	brk $00.b		; 00 00
	sbc [$1F.b]		; E7 1F
	and ($20.b),Y		; 31 20
	bne -64.b		; D0 C0
	php		; 08
	ldy $52.b		; A4 52
	trb $FFA7.w		; 1C A7 FF
	sbc $BC5555.l,X		; FF 55 55 BC
	lda $80E7E7.l,X		; BF E7 E7 80
	bra -87.b		; 80 A9
	lda #$E0.b		; A9 E0
	cpx #$44.b		; E0 44
	cpy $C0.b		; C4 C0
	cpy #$81.b		; C0 81
	bra  64.b		; 80 40
	clc		; 18
	adc $3B1F56.l,X		; 7F 56 1F 3B
	and $FFFF7F.l,X		; 3F 7F FF FF
	mvp $F3,$54		; 44 54 F3
	sbc $EF7F67.l,X		; FF 67 7F EF
	sbc $E97F73.l,X		; FF 73 7F E9
	sbc $B97F61.l,X		; FF 61 7F B9
	and $0105.w,Y		; 39 05 01
	bra -128.b		; 80 80
	bra -58.b		; 80 C6
	inc $577F.w,X		; FE 7F 57
	ora ($41.b,X)		; 01 41
	eor [$BB.b]		; 47 BB
	bpl  16.b		; 10 10
	bvc  80.b		; 50 50
	jsr $0488.w		; 20 88 04
	rti		; 40

	plp		; 28
	cli		; 58
	ora $04.b,S		; 03 04
	php		; 08
	lda $1151F6.l,X		; BF F6 51 11
	sbc $0101FF.l,X		; FF FF 01 01
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $01FF.w		; 20 FF 01
	cop $04.b		; 02 04
	php		; 08
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	adc $808080.l,X		; 7F 80 80 80
	sbc ($0F.b,S),Y		; F3 0F
	ldx #$0A.b		; A2 0A
	bra 127.b		; 80 7F
	rti		; 40

	rti		; 40

	jsr $1820.w		; 20 20 18
	clc		; 18
	ora [$07.b]		; 07 07
	adc $182040.l,X		; 7F 40 20 18
	ora [$02.b]		; 07 02
	tsb $0BF1.w		; 0C F1 0B
	sbc $FFFFFF.l,X		; FF FF FF FF
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	ora $C2FF1F.l,X		; 1F 1F FF C2
	ora $C1.b,S		; 03 C1
	ora $FF.b,S		; 03 FF
	ora [$07.b]		; 07 07
	sed		; F8
	sed		; F8
	sbc $F0080F.l,X		; FF 0F 08 F0
	php		; 08
	sbc $00BF00.l,X		; FF 00 BF 00
	ora ($FE.b,X)		; 01 FE
	asl $700E.w		; 0E 0E 70
	bvs -128.b		; 70 80
	bra  -4.b		; 80 FC
	cop $1C.b		; 02 1C
	ora ($E0.b)		; 12 E0
	bcc -128.b		; 90 80
	ora ($60.b,X)		; 01 60
	brk $20.b		; 00 20
	sbc $010101.l,X		; FF 01 01 01
	sbc $0555F6.l,X		; FF F6 55 05
	sbc $E3.b,S		; E3 E3
	asl A		; 0A
	cop $11.b		; 02 11
	ora ($07.b),Y		; 11 07
	php		; 08
	tsb $02.b		; 04 02
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	jmp.w [$1122]		; DC 22 11
	clc		; 18
	tsb $FF04.w		; 0C 04 FF
	sbc $480055.l,X		; FF 55 00 48
	inc $3185.w,X		; FE 85 31
	ldx #$A8.b		; A2 A8
	ror $CF61.w		; 6E 61 CF
	and [$3F.b],Y		; 37 3F
	and $EE6F6F.l,X		; 3F 6F 6F EE
	ror $3101.w		; 6E 01 31
	tay		; A8
	adc [$FD.b]		; 67 FD
	sbc $0E0001.l,X		; FF 01 00 0E
	asl $164C.w,X		; 1E 4C 16
	and $36.b,X		; 35 36
	ldx $3B.b,Y		; B6 3B
	tda		; 7B
	ora $03.b,S		; 03 03
	php		; 08
	sei		; 78
	sta [$B7.b]		; 87 B7
	sbc $01FDF5.l,X		; FF F5 FD 01
	trb $88.b		; 14 88
	clv		; B8
	adc ($80.b)		; 72 80
	cmp $8C3680.l		; CF 80 36 8C
	cmp ($CA.b,X)		; C1 CA
	cpy #$06.b		; C0 06
	cop $FF.b		; 02 FF
	ora ($01.b,X)		; 01 01
	cmp $054502.l,X		; DF 02 45 05
	sbc $C0C0FF.l,X		; FF FF C0 C0
	rti		; 40

	bra  64.b		; 80 40
	bra  15.b		; 80 0F
	bne  96.b		; D0 60
	cpy #$80.b		; C0 80
	adc $010581.l		; 6F 81 05 01
	cmp $2020C0.l,X		; DF C0 20 20
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	cpx #$20.b		; E0 20
	rti		; 40

	ora ($40.b,X)		; 01 40
	brk $40.b		; 00 40
	sbc $D50303.l,X		; FF 03 03 D5
	sta $40.b		; 85 40
	eor $FF.b,X		; 55 FF
	sbc $02FEFF.l,X		; FF FF FE 02
	beq -64.b		; F0 C0
	ora ($01.b,X)		; 01 01
	ora $FEFF3F.l		; 0F 3F FF FE
	sbc $FD7EFF.l,X		; FF FF 7E FD
	inc $0D.b,X		; F6 0D
	cmp ($31.b,S),Y		; D3 31
	eor $C6.b,S		; 43 C6
	asl $09.b		; 06 09
	ora [$0C.b],Y		; 17 0C
	adc $8CFD53.l		; 6F 53 FD 8C
	sbc [$31.b],Y		; F7 31
	ora ($0C.b,X)		; 01 0C
	ora ($38.b,X)		; 01 38
	cop $F0.b		; 02 F0
	cpx #$83.b		; E0 83
	ora $0C.b,S		; 03 0C
	asl $3831.w		; 0E 31 38
	sbc $000100.l,X		; FF 00 01 00
	sta $617980.l,X		; 9F 80 79 61
	asl $0719.w,X		; 1E 19 07
	ora [$FF.b]		; 07 FF
	sbc $000103.l,X		; FF 03 01 00
	plp		; 28
	cmp [$C7.b],Y		; D7 C7
	cmp [$33.b]		; C7 33
	bmi -33.b		; 30 DF
	and $FC.b,S		; 23 FC
	jsr ($FFFF.w,X)		; FC FF FF
	brk $01.b		; 00 01
	brk $E7.b		; 00 E7
	ora [$78.b]		; 07 78
	clc		; 18
	cpx #$60.b		; E0 60
	bra -128.b		; 80 80
	sbc $5503F3.l,X		; FF F3 03 55
	brk $FF.b		; 00 FF
	cpy #$08.b		; C0 08
	bit $09.b,X		; 34 09
	php		; 08
	ora ($03.b,X)		; 01 03
	cpy #$20.b		; C0 20
	clc		; 18
	ora [$81.b]		; 07 81
	ora $FF0500.l		; 0F 00 05 FF
	bra  24.b		; 80 18
	mvp $3B,$18		; 44 18 3B
	sed		; F8
	ora [$01.b]		; 07 01
	php		; 08
	brk $04.b		; 00 04
	sbc $01FFFF.l,X		; FF FF FF 01
	jsr ($FC00.w,X)		; FC 00 FC
	sbc $348EC0.l,X		; FF C0 8E 34
	pla		; 68
	asl $801C.w		; 0E 1C 80
	lsr $5860.w		; 4E 60 58
	clc		; 18
	trb $81.b		; 14 81
	cmp $FFAA80.l,X		; DF 80 AA FF
	ora $02.b,S		; 03 02
	bvs -94.b		; 70 A2
	sta ($09.b,S),Y		; 93 09
	sbc $0390.w,Y		; F9 90 03
	bvs -109.b		; 70 93
	ora $FFF99C.l		; 0F 9C F9 FF
	tay		; A8
	plx		; FA
	sbc $340403.l,X		; FF 03 04 34
	ldy #$80.b		; A0 80
	ldy $2C.b,X		; B4 2C
	tsx		; BA
	bpl -85.b		; 10 AB
	tsx		; BA
	lda $73.b		; A5 73
	ora $34.b,S		; 03 34
	bra  44.b		; 80 2C
	bmi  48.b		; 30 30
	tax		; AA
	adc ($BD.b)		; 72 BD
	sbc $FC57FF.l,X		; FF FF 57 FC
	cpx $28.b		; E4 28
	sty $48.b		; 84 48
	dec $A64A.w		; CE 4A A6
	adc $FF.b		; 65 FF
	ora ($FD.b,X)		; 01 FD
	rti		; 40

	sbc $845FB8.l,X		; FF B8 5F 84
	ora ($08.b,S),Y		; 13 08
	and ($31.b,S),Y		; 33 31
	clc		; 18
	rti		; 40

	rol $8738.w,X		; 3E 38 87
	tsb $BB.b		; 04 BB
	sbc $FD7F.w,X		; FD 7F FD
	lda $090F03.l,X		; BF 03 0F 09
	asl $3F16.w		; 0E 16 3F
	phd		; 0B
	inc $FB9E.w,X		; FE 9E FB
	adc ($FF.b,S),Y		; 73 FF
	adc $F1FCFF.l,X		; 7F FF FC F1
	ora ($E6.b,X)		; 01 E6
	ora [$CB.b]		; 07 CB
	tsb $381D.w		; 0C 1D 38
	adc ($7C.b,S),Y		; 73 7C
	adc $FF80FF.l,X		; 7F FF 80 FF
	sbc $DD7FFF.l,X		; FF FF 7F DD
	cmp ($6E.b),Y		; D1 6E
	pla		; 68
	sbc $A4.b,X		; F5 A4
	xce		; FB
	adc ($5D.b,S),Y		; 73 5D
	adc $DEFF.w,X		; 7D FF DE
	sbc $04FDF0.l,X		; FF F0 FD 04
	cmp ($E3.b),Y		; D1 E3
	pla		; 68
	sta ($A4.b),Y		; 91 A4
	ply		; 7A
	adc ($FC.b,S),Y		; 73 FC
	sta $DE03.w,X		; 9D 03 DE
	and $03F8F0.l,X		; 3F F0 F8 03
	xce		; FB
	sbc $01FFF5.l,X		; FF F5 FF 01
	inc $08FF.w,X		; FE FF 08
	sbc [$0A.b],Y		; F7 0A
	sbc $10.b,X		; F5 10
	sbc $01EB14.l		; EF 14 EB 01
	inc $F708.w,X		; FE 08 F7
	inc $FAFE.w,X		; FE FE FA
	asl A		; 0A
	xce		; FB
	phd		; 0B
	pea $F714.w		; F4 14 F7
	ora [$F1.b],Y		; 17 F1
	ora ($F8.b,X)		; 01 F8
	php		; 08
	sbc $FFFAFB.l,X		; FF FB FA FF
	phy		; 5A
	bit $39.b,X		; 34 39
	stx $04.b		; 86 04
	sbc ($43.b,S),Y		; F3 43
	clv		; B8
	bra 127.b		; 80 7F
	sbc $40F708.l,X		; FF 08 F7 40
	lda $5046B5.l,X		; BF B5 46 50
	tad		; 5B
	bne -44.b		; D0 D4
	sta $303788.l		; 8F 88 37 30
	eor $C8CF48.l		; 4F 48 CF C8
	sbc $45553F.l,X		; FF 3F 55 45
	ora #$C6.b		; 09 C6
	txy		; 9B
	lda [$F0.b]		; A7 F0
	sbc $9B9A.w,X		; FD 9A 9B
	ora [$E7.b]		; 07 E7
	cop $1C.b		; 02 1C
	cop $02.b		; 02 02
	sbc $784080.l,X		; FF 80 40 78
	lda $7F0106.l,X		; BF 06 01 7F
	adc $FF.b,X		; 75 FF
	eor $EF.b,X		; 55 EF
	sty $DF.b		; 84 DF
	clc		; 18
	inc $FDE0.w,X		; FE E0 FD
	sbc [$0F.b],Y		; F7 0F
	asl $8E80.w		; 0E 80 8E
	sty $1B.b		; 84 1B
	clc		; 18
	inc $E1.b		; E6 E1
	trb $F003.w		; 1C 03 F0
	ora $7F7FFF.l		; 0F FF 7F 7F
	cmp $804580.l		; CF 80 45 80
	sta ($01.b),Y		; 91 01
	ldx $4001.w		; AE 01 40
	rti		; 40

	jsr $817E.w		; 20 7E 81
	rti		; 40

	jsr $400F.w		; 20 0F 40
	ora $00.b		; 05 00
	cmp $C020C0.l,X		; DF C0 20 C0
	tsb $C03F.w		; 0C 3F C0
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	sbc ($F0.b),Y		; F1 F0
	sbc $010101.l,X		; FF 01 01 01
	ora $3004.w,Y		; 19 04 30
	sed		; F8
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	asl $1A.b		; 06 1A
	ora $35.b		; 05 35
	and ($FF.b,S),Y		; 33 FF
	and ($FF.b,S),Y		; 33 FF
	rti		; 40

	lda $80C0C0.l,X		; BF C0 C0 80
	bra  16.b		; 80 10
	ora ($80.b,S),Y		; 13 80
	sta $1A08.w		; 8D 08 1A
	cmp $4040C0.l		; CF C0 40 40
	bra -120.b		; 80 88
	bpl  19.b		; 10 13
	.db $82, $85, $1A		; 82 85 1A
	cop $02.b		; 02 02
	cpx #$E001.w		; E0 01 E0
	sbc $A06030.l,X		; FF 30 60 A0
	sbc $C07030.l,X		; FF 30 70 C0
	sbc $D555FF.l,X		; FF FF 55 D5
	dec $80.b		; C6 80
	lsr $A0.b		; 46 A0
	bmi -48.b		; 30 D0
	clc		; 18
	inx		; E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	ora $FC.b,S		; 03 FC
	ora ($07.b,X)		; 01 07
	lda $E7CF9F.l,X		; BF 9F CF E7
	sbc ($F9.b,S),Y		; F3 F9
	jsr ($F877.w,X)		; FC 77 F8
	cmp $5557CC.l,X		; DF CC 57 55
	adc $707760.l,X		; 7F 60 77 70
	ora $06.b,S		; 03 06
	asl $01.b		; 06 01
	ora ($C0.b,X)		; 01 C0
	rti		; 40

	lda $FF8F20.l,X		; BF 20 8F FF
	sbc $FEFF.w,Y		; F9 FF FE
	sbc $FFDF3F.l,X		; FF 3F DF FF
	lda $FF.b,X		; B5 FF
	sbc $08.b,S		; E3 08
	bit $18.b,X		; 34 18
	inx		; E8
	cpy #$A270.w		; C0 70 A2
	and ($E5.b,X)		; 21 E5
	rep #$C0		; C2 C0
	sty $1088.w		; 8C 88 10
	sbc [$18.b],Y		; F7 18
	bpl  16.b		; 10 10
	bvs  65.b		; 70 41
	rts		; 60

	rep #$03		; C2 03
	sty $1004.w		; 8C 04 10
	php		; 08
	inc $FDBF.w,X		; FE BF FD
	xce		; FB
	sbc $0EF303.l,X		; FF 03 F3 0E
	sbc $38DF17.l		; EF 17 DF 38
	lda $1A7F65.l,X		; BF 65 7F 1A
	asl $FFC0.w,X		; 1E C0 FF
	pea $F00F.w		; F4 0F F0
	ora $803FE0.l,X		; 1F E0 3F 80
	adc $FF61FF.l,X		; 7F FF 61 FF
	cmp $FFFF3F.l,X		; DF 3F FF FF
	sbc $FB02FF.l,X		; FF FF 02 FB
	sta ($9D.b,X)		; 81 9D
.ACCU 8
	sep #$E6		; E2 E6
	bpl -10.b		; 10 F6
	tay		; A8
	tyx		; BB
	rts		; 60

	ror $80.b		; 66 80
	txy		; 9B
	asl $FC61.w,X		; 1E 61 FC
	asl $5E.b		; 06 5E
	sbc $15.b,S		; E3 15
	xce		; FB
	ora $FC43F9.l		; 0F F9 43 FC
	tya		; 98
	sbc $E1E758.l,X		; FF 58 E7 E1
	bra  -1.b		; 80 FF
	sbc $B1D7FF.l,X		; FF FF D7 B1
	adc ($A0.b,S),Y		; 73 A0
	ldx $32.b		; A6 32
	dec A		; 3A
	eor $80.b		; 45 80
	ldy $9C.b		; A4 9C
	cmp [$84.b]		; C7 84
	ora ($81.b,X)		; 01 81
	ora [$04.b]		; 07 04
	txa		; 8A
	lda $86A4.w,X		; BD A4 86
	jsl $C48408.l		; 22 08 84 C4
	stz $0C18.w		; 9C 18 0C
	ora ($85.b,X)		; 01 85
	sta ($FF.b,X)		; 81 FF
	lda $C0FFFF.l,X		; BF FF FF C0
	jmp.w [$DBC3]		; DC C3 DB
	ora $97.b		; 05 97
	asl $8D2F.w		; 0E 2F 8D
	lda $960F7A.l		; AF 7A 0F 96
	asl $3D13.w,X		; 1E 13 3D
	sbc $3C.b,S		; E3 3C
	sbc [$78.b]		; E7 78
	sbc $70DFE0.l		; EF E0 DF 70
	cmp $018F80.l,X		; DF 80 8F 01
	adc $7FFC0B.l,X		; 7F 0B FC 7F
	lda $78EF7F.l,X		; BF 7F EF 78
	adc $8EC8.w,Y		; 79 C8 8E
	bne  24.b		; D0 18
	cpy #$3060.w		; C0 60 30
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	bra -123.b		; 80 85
	inc $0682.w,X		; FE 82 06
	clc		; 18
	php		; 08
	bpl  48.b		; 10 30
	bpl  64.b		; 10 40
	jsr $8040.w		; 20 40 80
	bra  -1.b		; 80 FF
	lda $E0D7FD.l,X		; BF FD D7 E0
	ldy #$9030.w		; A0 30 90
	bpl -56.b		; 10 C8
	asl A		; 0A
	inc $05.b		; E6 05
	sbc ($03.b,S),Y		; F3 03
	jsr ($FF01.w,X)		; FC 01 FF
	sbc $408F9F.l,X		; FF 9F 8F 40
	cmp [$20.b]		; C7 20
	sbc ($10.b,X)		; E1 10
	beq   8.b		; F0 08
	jsr ($FEFF.w,X)		; FC FF FE
	ora ($77.b,X)		; 01 77
	inc $A99B.w,X		; FE 9B A9
	rts		; 60

	and $404060.l,X		; 3F 60 40 40
	rti		; 40

	bra   1.b		; 80 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $C0.b		; 04 C0
	ora $404020.l,X		; 1F 20 40 40
	bra -127.b		; 80 81
	cop $04.b		; 02 04
	adc $66EF3F.l		; 6F 3F EF 66
	sbc $243098.l		; EF 98 30 24
	cop $12.b		; 02 12
	rol A		; 2A
	and ($40.b,X)		; 21 40
	rti		; 40

	mvn $DC,$10		; 54 10 DC
	php		; 08
	.db $62, $14, $02		; 62 14 02
	ora ($12.b,X)		; 01 12
	phd		; 0B
	rts		; 60

	tsb $30.b		; 04 30
	sbc $FFAFFF.l,X		; FF FF AF FF
	sta $64.b,X		; 95 64
	eor $4C34.w		; 4D 34 4C
	and [$AB.b],Y		; 37 AB
	trb $39C3.w		; 1C C3 39
	lda $9D.b,S		; A3 9D
	cmp ($CD.b,S),Y		; D3 CD
	sbc ($FC.b,S),Y		; F3 FC
	lsr A		; 4A
	and $BFBE02.l,X		; 3F 02 BE BF
	eor $9D25.w,X		; 5D 25 9D
	sta $D9.b		; 85 D9
	cmp $E9.b		; C5 E9
	pea $FFE9.w		; F4 E9 FF
	sbc $F4CF.w,X		; FD CF F4
	bvc  47.b		; 50 2F
	eor ($50.b,S),Y		; 53 50
	eor $DC0FE0.l,X		; 5F E0 0F DC
	jsr $2303.w		; 20 03 23
	clc		; 18
	ora [$10.b]		; 07 10
	mvp $E0,$0F		; 44 0F E0
	ora $10441F.l		; 0F 1F 44 10
	and [$04.b]		; 27 04
	ora $FA0444.l,X		; 1F 44 04 FA
	sbc $FFF77D.l,X		; FF 7D F7 FF
	beq -32.b		; F0 E0
	cpx $18D8.w		; EC D8 18
	ldy $46.b		; A4 46
	inx		; E8
	cpy #$FA72.w		; C0 72 FA
	tsb $7C.b		; 04 7C
	sbc $F4F010.l,X		; FF 10 F0 F4
	tsb $461C.w		; 0C 1C 46
	cop $C2.b		; 02 C2
	inc A		; 1A
	bra 100.b		; 80 64
	sei		; 78
	rtl		; 6B

	ply		; 7A
	ora ($04.b),Y		; 11 04
	jsr ($02FF.w,X)		; FC FF 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	php		; 08
	inc $0402.w,X		; FE 02 04
	sbc $000003.l,X		; FF 03 00 00
	beq  15.b		; F0 0F
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	eor $05.b,X		; 55 05
	plb		; AB
	inc $FFAA.w,X		; FE AA FF
	sbc $AAFFFF.l,X		; FF FF FF AA
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $990FFF.l		; 0F FF 0F 99
	lda [$C0.b]		; A7 C0
	cpx #$C4E4.w		; E0 E4 C4
	sty $FFCC.w		; 8C CC FF
	beq -111.b		; F0 91
	bra -81.b		; 80 AF
	eor ($F8.b,X)		; 41 F8
	cpx #$E0F0.w		; E0 F0 E0
	sed		; F8
	cpy #$8FE0.w		; C0 E0 8F
	bra -111.b		; 80 91
	sbc $AA7F57.l,X		; FF 57 7F AA
	sbc $0919F0.l		; EF F0 19 09
	ora #$01.b		; 09 01
	ora [$06.b]		; 07 06
	asl $01.b		; 06 01
	sta ($70.b,X)		; 81 70
	bmi -11.b		; 30 F5
	cpx #$100E.w		; E0 0E 10
	ora [$08.b]		; 07 08
	ora $06.b,S		; 03 06
	sta ($70.b,X)		; 81 70
	bmi  -1.b		; 30 FF
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc ($BD.b)		; F2 BD
	adc ($74.b),Y		; 71 74
	tsx		; BA
	sbc $3B.b,X		; F5 3B
	ldx $7E38.w,Y		; BE 38 7E
	lda $9CFB.w,Y		; B9 FB 9C
	cmp $71F6EC.l,X		; DF EC F6 71
	sbc $FA32.w,Y		; F9 32 FA
	and ($7B.b),Y		; 31 7B
	bmi 122.b		; 30 7A
	and $38BD.w,Y		; 39 BD 38
	cmp $EE98.w,X		; DD 98 EE
	cpy $8557.w		; CC 57 85
	plb		; AB
	inc $02A8.w,X		; FE A8 02
	sbc $FFFFFF.l,X		; FF FF FF FF
	tax		; AA
	bra  42.b		; 80 2A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $A33FFF.l		; EF FF 3F A3
	ldy $F0.b		; A4 F0
	sed		; F8
	pea $F0E4.w		; F4 E4 F0
	beq -16.b		; F0 F0
	cpx #$B8A8.w		; E0 A8 B8
	jsr $3030.w		; 20 30 30
	tay		; A8
	bvc  -8.b		; 50 F8
	beq -32.b		; F0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$B0E0.w		; E0 E0 B0
	ldy #$2020.w		; A0 20 20
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	sbc $554001.l,X		; FF 01 40 55
	cop $00.b		; 02 00
	eor $FF.b,X		; 55 FF
	sbc $FF55FF.l,X		; FF FF 55 FF
	sbc $8EFB6F.l,X		; FF 6F FB 8E
	eor $20283F.l		; 4F 3F 28 20
	trb $90.b		; 14 90
	stx $94.b,Y		; 96 94
	lda $048622.l,X		; BF 22 86 04
	ora $12.b,S		; 03 12
	and $E0088F.l,X		; 3F 8F 08 E0
	sty $60.b		; 84 60
	cop $19.b		; 02 19
	cpy #$1204.w		; C0 04 12
	sbc $AAABFD.l,X		; FF FD AB AA
	lda $4060FF.l,X		; BF FF 60 40
	stz $60.b,X		; 74 60
	ror $0230.w		; 6E 30 02
	bit $18.b		; 24 18
	bpl  12.b		; 10 0C
	asl A		; 0A
	bra  -1.b		; 80 FF
	lda $4E1420.l,X		; BF 20 14 4E
	cop $24.b		; 02 24
	bpl -118.b		; 10 8A
	phd		; 0B
	brk $1F.b		; 00 1F
	brk $ED.b		; 00 ED
	tas		; 1B
	ora #$09.b		; 09 09
	ora ($1B.b)		; 12 1B
	ora #$09.b		; 09 09
	sbc $033775.l		; EF 75 37 03
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	jsr $A0B5.w		; 20 B5 A0
	cmp $405F5F.l,X		; DF 5F 5F 40
	ora $C0.b,X		; 15 C0
	and $20E080.l,X		; 3F 80 E0 20
	rts		; 60

	bra -15.b		; 80 F1
	sbc $33.b		; E5 33
	bit $1F.b,X		; 34 1F
	jsr $4040.w		; 20 40 40
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	bra -128.b		; 80 80
	jsr $60C0.w		; 20 C0 60
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	ora ($F0.b,X)		; 01 F0
	cop $00.b		; 02 00
	sbc $FF5555.l,X		; FF 55 55 FF
	sbc $FFE7FF.l,X		; FF FF E7 FF
	stp		; DB
	sbc $091FEE.l,X		; FF EE 1F 09
	bpl  52.b		; 10 34
	php		; 08
	dec A		; 3A
	tsb $35.b		; 04 35
	jsl $F17172.l		; 22 72 71 F1
	beq 127.b		; F0 7F
	asl $C009.w		; 0E 09 C0
	bra -124.b		; 80 84
	jsr $3042.w		; 20 42 30
	ora ($38.b,X)		; 01 38
	jsr $101C.w		; 20 1C 10
	sbc $AAA3FF.l,X		; FF FF A3 AA
	bit $807D.w,X		; 3C 7D 80
	eor $22.b,S		; 43 22
	bra  16.b		; 80 10
	adc ($49.b,X)		; 61 49
	bmi  36.b		; 30 24
	clc		; 18
	stx $8C.b,Y		; 96 8C
	eor $3CFFC6.l		; 4F C6 FF 3C
	ldx #$4910.w		; A2 10 49
	bit $92.b		; 24 92
	eor #$93.b		; 49 93
	sbc $8223.w,Y		; F9 23 82
	sbc $8080FF.l,X		; FF FF 80 80
	rti		; 40

	cpy #$C080.w		; C0 80 C0
	cpy #$FF80.w		; C0 80 FF
	sbc $404080.l,X		; FF 80 40 40
	sbc ($FF.b,S),Y		; F3 FF
	and ($B3.b,S),Y		; 33 B3
	lda $4141C0.l,X		; BF C0 41 41
	rti		; 40

	ora ($63.b,X)		; 01 63
	cop $20.b		; 02 20
	cop $34.b		; 02 34
	rol $98.b,X		; 36 98
	trb $9FC0.w		; 1C C0 9F
	ora ($01.b,X)		; 01 01
	adc $02.b,S		; 63 02
	asl $04.b		; 06 04
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $40.b,S		; 03 40
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	ora ($0F.b,X)		; 01 0F
	bvc   2.b		; 50 02
	brk $AA.b		; 00 AA
	eor $AA.b,X		; 55 AA
	tax		; AA
	tax		; AA
	sbc $50BFFF.l,X		; FF FF BF 50
	sbc $50AF00.l,X		; FF 00 AF 50
	ldx $01AC.w		; AE AC 01
	cop $01.b		; 02 01
	tax		; AA
	sbc $07F805.l,X		; FF 05 F8 07
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora ($DF.b,X)		; 01 DF
	sbc $997DBB.l,X		; FF BB 7D 99
	lsr $2315.w,X		; 5E 15 23
	ora $4443.w		; 0D 43 44
	asl A		; 0A
	asl A		; 0A
	lda #$B4.b		; A9 B4
	bcc   9.b		; 90 09
	sta ($13.b,S),Y		; 93 13
	sbc $801418.l,X		; FF 18 14 80
	ora $C001.w		; 0D 01 C0
	bra -127.b		; 80 81
	rts		; 60

	ora ($01.b,X)		; 01 01
	eor [$BF.b],Y		; 57 BF
	plb		; AB
	adc $40FFFF.l,X		; 7F FF FF 40
	jsr $B4C3.w		; 20 C3 B4
	tsb $3C48.w		; 0C 48 3C
	ldy #$80B0.w		; A0 B0 80
	sbc $2040FF.l,X		; FF FF 40 20
	cmp $03.b,S		; C3 03
	ldy $600C.w,X		; BC 0C 60
	bvs -128.b		; 70 80
	bra -17.b		; 80 EF
	cmp $610753.l		; CF 53 07 61
	stz $AAA2.w,X		; 9E A2 AA
	php		; 08
	bra -128.b		; 80 80
	jsr $4320.w		; 20 20 43
	eor $30.b,S		; 43 30
	bmi -120.b		; 30 88
	bmi   8.b		; 30 08
	bra  48.b		; 80 30
	bmi  48.b		; 30 30
	rep #$0F		; C2 0F
	brk $00.b		; 00 00
	sbc $780707.l,X		; FF 07 07 78
	sei		; 78
	bra -128.b		; 80 80
	inc $0000.w,X		; FE 00 00
	rti		; 40

	sbc $380707.l,X		; FF 07 07 38
	sec		; 38
	cpy #$01C0.w		; C0 C0 01
	ora [$FC.b]		; 07 FC
	cop $54.b		; 02 54
	tax		; AA
	sbc $555555.l,X		; FF 55 55 55
	sbc $5555FF.l,X		; FF FF 55 55
	sbc $55FF55.l,X		; FF 55 FF 55
	sbc $31DFB7.l,X		; FF B7 DF 31
	ldy $DB.b		; A4 DB
	jmp $180C.w		; 4C 0C 18
	clc		; 18
	bvs  16.b		; 70 10
	rti		; 40

	rts		; 60

	rti		; 40

	bra  64.b		; 80 40
	bra  92.b		; 80 5C
	bra  68.b		; 80 44
	rti		; 40

	php		; 08
	bvs  64.b		; 70 40
	jsr $80C0.w		; 20 C0 80
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	bpl -17.b		; 10 EF
	ora [$07.b]		; 07 07
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	sbc ($FF.b,X)		; E1 FF
	brk $00.b		; 00 00
	sbc $3C3003.l,X		; FF 03 30 3C
	cpy #$0EC0.w		; C0 C0 0E
	ora ($0E.b,X)		; 01 0E
	asl $F0F0.w		; 0E F0 F0
	adc $FF.b,X		; 75 FF
	eor $00.b,X		; 55 00
	xce		; FB
	cmp [$81.b]		; C7 81
	bra  15.b		; 80 0F
	sbc $03FC80.l,X		; FF 80 FC 03
	cpx #$811F.w		; E0 1F 81
	adc $7E3F07.l,X		; 7F 07 3F 7E
	beq  84.b		; F0 54
	jsr ($0003.w,X)		; FC 03 00
	eor $FF.b,X		; 55 FF
	eor $AA.b,X		; 55 AA
	tax		; AA
	sbc $AAAAFF.l,X		; FF FF AA AA
	sbc $FFDEFF.l,X		; FF FF DE FF
	eor $02.b,S		; 43 02
	ora ($55.b,X)		; 01 55
	ora ($FF.b,X)		; 01 FF
	mvn $02,$01		; 54 01 02
	cop $A8.b		; 02 A8
	tay		; A8
	inc $AAFE.w,X		; FE FE AA
	tay		; A8
	sbc $0201FE.l,X		; FF FE 01 02
	cop $FF.b		; 02 FF
	brk $00.b		; 00 00
	sbc $0C0303.l,X		; FF 03 03 0C
	tsb $1010.w		; 0C 10 10
	jsr $C320.w		; 20 20 C3
	ora $100000.l		; 0F 00 00 10
	sbc $800F0F.l		; EF 0F 0F 80
	bra  64.b		; 80 40
	rti		; 40

	sbc $000000.l,X		; FF 00 00 00
	inc $0E01.w,X		; FE 01 0E
	asl $7070.w		; 0E 70 70
	bra -128.b		; 80 80
	cmp ($00.b,S),Y		; D3 00
	rti		; 40

	brk $03.b		; 00 03
	sbc $010104.l,X		; FF 04 01 01
	ora ($C3.b,X)		; 01 C3
	brk $82.b		; 00 82
	brk $3F.b		; 00 3F
	cpy #$2020.w		; C0 20 20
	cpy #$4120.w		; C0 20 41
	pea $5040.w		; F4 40 50
	sbc $020101.l,X		; FF 01 01 02
	ora ($06.b,X)		; 01 06
	cop $01.b		; 02 01
	cop $04.b		; 02 04
	and $E0.b,S		; 23 E0
	ora ($40.b,X)		; 01 40
	sbc $01807F.l,X		; FF 7F 80 01
	ora ($03.b,X)		; 01 03
	sbc $FF9F01.l,X		; FF 01 9F FF
	eor $11.b		; 45 11
	beq -17.b		; F0 EF
	bpl  48.b		; 10 30
	jsr $4160.w		; 20 60 41
	eor ($82.b,X)		; 41 82
	.db $82, $04, $84		; 82 04 84
	clc		; 18
	clc		; 18
	beq  16.b		; F0 10
	jsr $8040.w		; 20 40 80
	sbc $5550FF.l,X		; FF FF 50 55
	inc $F801.w,X		; FE 01 F8
	ora [$E2.b]		; 07 E2
	asl $7889.w,X		; 1E 89 78
	ora [$F0.b],Y		; 17 F0
	bit $59E3.w		; 2C E3 59
	cmp [$B3.b]		; C7 B3
	sta $0F0701.l		; 8F 01 07 0F
	ora $FF7F3F.l,X		; 1F 3F 7F FF
	sbc $277F55.l,X		; FF 55 7F 27
	cpx #$C7D8.w		; E0 D8 C7
	adc ($1F.b,X)		; 61 1F
	sta [$7F.b]		; 87 7F
	trb $70FC.w		; 1C FC 70
	sbc ($C3.b,S),Y		; F3 C3
	cpy $F08F.w		; CC 8F F0
	ora $FFFF3F.l,X		; 1F 3F FF FF
	jsr ($F003.w,X)		; FC 03 F0
	tsb $30C0.w		; 0C C0 30
	bra  -1.b		; 80 FF
	sbc $0F02BD.l,X		; FF BD 02 0F
	sbc $E0FC3C.l,X		; FF 3C FC E0
	sbc ($01.b,X)		; E1 01
	asl $700F.w		; 0E 0F 70
	ror $F881.w,X		; 7E 81 F8
	ora [$C0.b]		; 07 C0
	and $03FCFF.l,X		; 3F FF FC 03
	cpx #$F01E.w		; E0 1E F0
	bra  -1.b		; 80 FF
	sbc $80500B.l,X		; FF 0B 50 80
	sta $03.b,S		; 83 03
	trb $E01F.w		; 1C 1F E0
	sed		; F8
	ora [$C0.b]		; 07 C0
	and $1CFF03.l,X		; 3F 03 FF 1C
	jsr ($E063.w,X)		; FC 63 E0
	bra 124.b		; 80 7C
	cpx #$1F03.w		; E0 03 1F
	sbc $1540FF.l,X		; FF FF 40 15
	ora $E7E7E0.l,X		; 1F E0 E7 E7
	adc $8F78.w,Y		; 79 78 8F
	sta ($7F.b,X)		; 81 7F
	asl $70FE.w		; 0E FE 70
	sbc [$87.b],Y		; F7 87
	lda $0138.w,Y		; B9 38 01
	asl $8070.w		; 0E 70 80
	sbc $F054FF.l,X		; FF FF 54 F0
	cmp ($3F.b,X)		; C1 3F
	cmp $FFC3.w,X		; DD C3 FF
	trb $E3FF.w		; 1C FF E3
	sbc $EE1C.w,X		; FD 1C EE
	cpx #$0131.w		; E0 31 01
	dec $030E.w		; CE 0E 03
	trb $01E0.w		; 1C E0 01
	ora ($0E.b,X)		; 01 0E
	asl $DFFF.w		; 0E FF DF
	sbc $AF.b,X		; F5 AF
	sty $7383.w		; 8C 83 73
	ora $787E8E.l		; 0F 8E 7E 78
	sed		; F8
	cpx #$83E0.w		; E0 E0 83
	bra  15.b		; 80 0F
	bit $7F03.w,X		; 3C 03 7F
	sbc $F801FE.l,X		; FF FE 01 F8
	ora [$E0.b]		; 07 E0
	ora $FF7F80.l,X		; 1F 80 7F FF
	sbc $3F3FFF.l,X		; FF FF 3F 3F
	brk $E0.b		; 00 E0
	cpx #$6063.w		; E0 63 60
	sty $3380.w		; 8C 80 33
	ora $CC.b,S		; 03 CC
	tsb $3030.w		; 0C 30 30
	cpy #$E0C0.w		; C0 C0 E0
	ora $806060.l,X		; 1F 60 60 80
	bra 127.b		; 80 7F
	ora $02.b		; 05 02
	brk $F3.b		; 00 F3
	ora $D0303C.l		; 0F 3C 30 D0
	cpy #$2438.w		; C0 38 24
	ora $FF.b,S		; 03 FF
	ora $FD.b,S		; 03 FD
	cop $00.b		; 02 00
	sbc $9B07FF.l,X		; FF FF 07 9B
	ora $EC.b,S		; 03 EC
	tsb $30B3.w		; 0C B3 30
	sbc $C2FFFF.l,X		; FF FF FF C2
	sbc $02FE01.l,X		; FF 01 FE 02
	cop $0D.b		; 02 0D
	tsb $3137.w		; 0C 37 31
	stp		; DB
.ACCU 16
	rep #$2E		; C2 2E
	tsb $11D5.w		; 0C D5 11
	ror A		; 6A
	.db $62, $FF, $01		; 62 FF 01
	ora ($02.b,X)		; 01 02
	cop $0C.b		; 02 0C
	tsb $1010.w		; 0C 10 10
	rts		; 60

	rts		; 60

	and ($03.b,S),Y		; 33 03
	jsl $C03F02.l		; 22 02 3F C0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	cpy #$8040.w		; C0 40 80
	cmp $5145A7.l,X		; DF A7 45 51
	sbc $040803.l,X		; FF 03 08 04
	php		; 08
	bpl   8.b		; 10 08
	bmi  16.b		; 30 10
	jsr $4020.w		; 20 20 40
	ora [$08.b]		; 07 08
	bpl  32.b		; 10 20
	rti		; 40

	bra -17.b		; 80 EF
	sbc $FC5151.l,X		; FF 51 51 FC
	sbc $0C0404.l,X		; FF 04 04 0C
	ora #$1219.w		; 09 19 12
	ora ($2C.b)		; 12 2C
	bit $7010.w		; 2C 10 70
	rts		; 60

	cpx #$04FC.w		; E0 FC 04
	php		; 08
	bpl  32.b		; 10 20
	rti		; 40

	sbc $1554FF.l,X		; FF FF 54 15
	cmp ($3F.b,X)		; C1 3F
	.db $82, $7E, $05		; 82 7E 05
	jsr ($F90A.w,X)		; FC 0A F9
	trb $F3.b		; 14 F3
	and #$57E6.w		; 29 E6 57
	iny		; C8
	eor $0301F0.l		; 4F F0 01 03
	ora [$0E.b]		; 07 0E
	clc		; 18
	bmi  -1.b		; 30 FF
	sbc $664055.l,X		; FF 55 40 66
	ora $873EC9.l,X		; 1F C9 3E 87
	sei		; 78
	ora $817EE0.l,X		; 1F E0 7E 81
	beq  15.b		; F0 0F
	cmp ($3F.b,X)		; C1 3F
	asl $FE.b		; 06 FE
	inc $E0F8.w,X		; FE F8 E0
	bra   1.b		; 80 01
	sbc $5500FF.l,X		; FF FF 00 55
	adc $07F880.l,X		; 7F 80 F8 07
	cpx #$831F.w		; E0 1F 83
	adc $63FC1C.l,X		; 7F 1C FC 63
	cpx #$819E.w		; E0 9E 81
	sei		; 78
	ora [$03.b]		; 07 03
	ora $FFFF7F.l,X		; 1F 7F FF FF
	adc $030154.l,X		; 7F 54 01 03
	sbc $7F030F.l,X		; FF 0F 03 7F
	tsb $70FC.w		; 0C FC 70
	sbc [$87.b],Y		; F7 87
	clv		; B8
	sec		; 38
	cmp ($C0.b,X)		; C1 C0
	asl $0C03.w		; 0E 03 0C
	bvs -128.b		; 70 80
	sbc $FC05FD.l,X		; FF FD 05 FC
	stz $E681.w,X		; 9E 81 E6
	stx $B9.b		; 86 B9
	sec		; 38
	dec $C0.b		; C6 C0
	clc		; 18
	sbc ($01.b,X)		; E1 01
	asl $330E.w		; 0E 0E 33
	bmi 127.b		; 30 7F
	bra   1.b		; 80 01
	ora ($0E.b,X)		; 01 0E
	asl $3030.w		; 0E 30 30
	sbc [$FF.b],Y		; F7 FF
	sbc ($0F.b),Y		; F1 0F
	ora $C330FF.l		; 0F FF 30 C3
	ora $0C.b,S		; 03 0C
	tsb $3031.w		; 0C 31 30
	dec $C0.b		; C6 C0
	and $C601.w,Y		; 39 01 C6
	asl $FF.b		; 06 FF
	ora $03.b,S		; 03 03
	tsb $300C.w		; 0C 0C 30
	bmi -64.b		; 30 C0
	cpy #$3FDF.w		; C0 DF 3F
	ora $C0C100.l		; 0F 00 C1 C0
	dec $C0.b		; C6 C0
	clc		; 18
	adc $03.b,S		; 63 03
	stz $601C.w		; 9C 1C 60
	rts		; 60

	bra -128.b		; 80 80
	cpy #$C03F.w		; C0 3F C0
	cpy #$003F.w		; C0 3F 00
	cop $00.b		; 02 00
	beq  15.b		; F0 0F
	bmi  48.b		; 30 30
	cpy #$FFC0.w		; C0 C0 FF
	cop $FC.b		; 02 FC
	cop $00.b		; 02 00
	sbc $3C0303.l,X		; FF 03 03 3C
	bit $C0C3.w,X		; 3C C3 C0
	sbc $02FFFE.l,X		; FF FE FF 02
	jsr ($03FF.w,X)		; FC FF 03
	ora $0C.b,S		; 03 0C
	tsb $3033.w		; 0C 33 30
	cpy $33C0.w		; CC C0 33
	ora $CC.b,S		; 03 CC
	tsb $3031.w		; 0C 31 30
	sbc $0C0303.l,X		; FF 03 03 0C
	tsb $3030.w		; 0C 30 30
	sbc $43FFFF.l,X		; FF FF FF 43
	sbc ($01.b),Y		; F1 01
	and ($02.b)		; 32 02
	cmp $320C.w		; CD 0C 32
	bmi -51.b		; 30 CD
	cmp ($12.b,X)		; C1 12
	cop $6D.b		; 02 6D
	tsb $31B7.w		; 0C B7 31
	ora ($FE.b,X)		; 01 FE
	cop $02.b		; 02 02
	tsb $300C.w		; 0C 0C 30
	bmi -64.b		; 30 C0
	cpy #$FF01.w		; C0 01 FF
	sbc $C61555.l,X		; FF 55 15 C6
	sed		; F8
	sta $3AF1.w		; 8D F1 3A
	cmp $65.b,S		; C3 65
	stx $D3.b		; 86 D3
	trb $3827.w		; 1C 27 38
	eor $C03F70.l		; 4F 70 3F C0
	sbc $F8FCFE.l,X		; FF FE FC F8
	cpx #$80C0.w		; E0 C0 80
	lda $AEFB.w,X		; BD FB AE
	nop		; EA
	inc $0102.w,X		; FE 02 01
	tsb $04.b		; 04 04
	asl A		; 0A
	cop $12.b		; 02 12
	jsr $4014.w		; 20 14 40
	bra -127.b		; 80 81
	ora ($01.b,X)		; 01 01
	ora $04.b,S		; 03 04
	php		; 08
	ora ($20.b)		; 12 20
	rti		; 40

	ora ($81.b,X)		; 01 81
	adc $4511F3.l,X		; 7F F3 11 45
	sbc $0101FF.l,X		; FF FF 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	bpl  -1.b		; 10 FF
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	inc $03FF.w		; EE FF 03
	rti		; 40

	sbc $FFFF01.l,X		; FF 01 FF FF
	ora $FC.b,S		; 03 FC
	asl $F9.b		; 06 F9
	clc		; 18
	sbc [$21.b]		; E7 21
	cmp $80FC05.l,X		; DF 05 FC 80
	bra   2.b		; 80 02
	sbc $15407F.l,X		; FF 7F 40 15
	ldy $70C3.w,X		; BC C3 70
	sta $863FC1.l		; 8F C1 3F 86
	ror $F819.w,X		; 7E 19 F8
	adc [$E0.b]		; 67 E0
	trb $FF03.w		; 1C 03 FF
	ora ($07.b,X)		; 01 07
	ora $DFFFFF.l,X		; 1F FF FF DF
	eor $40.b,X		; 55 40
	ora $7EF8.w,Y		; 19 F8 7E
	clc		; 18
	sbc $E661.w,Y		; F9 61 E6
	stx $B8.b		; 86 B8
	sec		; 38
	cmp $C0.b,S		; C3 C0
	trb $80E0.w		; 1C E0 80
	ora [$18.b]		; 07 18
	rts		; 60

	bra -128.b		; 80 80
	sbc $000103.l,X		; FF 03 01 00
	cpx #$611F.w		; E0 1F 61
	rts		; 60

	stx $80.b		; 86 80
	asl $E601.w,X		; 1E 01 E6
	ora ($FF.b,X)		; 01 FF
	sbc $057D3F.l,X		; FF 3F 7D 05
	and $03C3FF.l,X		; 3F FF C3 03
	stp		; DB
	bit $CFAB.w,X		; 3C AB CF
	eor $EE.b,X		; 55 EE
	and $1D.b,S		; 23 1D
	ora [$02.b]		; 07 02
	sbc $040303.l,X		; FF 03 03 04
	ora $08.b,S		; 03 08
	asl $FF01.w		; 0E 01 FF
	ora $0F043F.l		; 0F 3F 04 0F
	cop $70.b		; 02 70
	.db $42, $80		; 42 80
	rti		; 40

	beq -16.b		; F0 F0
	dey		; 88
	php		; 08
	cpy #$0280.w		; C0 80 02
	jsr ($7C42.w,X)		; FC 42 7C
	rti		; 40

	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	brk $A0.b		; 00 A0
	sbc $CE0201.l,X		; FF 01 02 CE
	eor $FF020A.l,X		; 5F 0A 02 FF
	bra -128.b		; 80 80
	ora [$07.b]		; 07 07
	tya		; 98
	tya		; 98
	cpx #$01E0.w		; E0 E0 01
	asl $80FF.w		; 0E FF 80
	bra 127.b		; 80 7F
	sbc $FC02.w,X		; FD 02 FC
	ora $FC.b,S		; 03 FC
	trb $E11C.w		; 1C 1C E1
	cpx #$1806.w		; E0 06 18
	adc $03.b,S		; 63 03
	stz $631C.w		; 9C 1C 63
	rts		; 60

	sbc $1C0303.l,X		; FF 03 03 1C
	trb $6060.w		; 1C 60 60
	sbc $FEFF.w,X		; FD FF FE
	eor $F0.b,S		; 43 F0
	adc ($03.b,S),Y		; 73 03
	sty $310C.w		; 8C 0C 31
	bmi -58.b		; 30 C6
	cpy #$031B.w		; C0 1B 03
	adc $31B50C.l		; 6F 0C B5 31
	sbc $0C0303.l,X		; FF 03 03 0C
	tsb $3030.w		; 0C 30 30
	cpy #$01C0.w		; C0 C0 01
	sbc $5541FF.l,X		; FF FF 41 55
	sed		; F8
	sbc $6D031B.l,X		; FF 1B 03 6D
	tsb $31BF.w		; 0C BF 31
	sbc $30F6CE.l,X		; FF CE F6 30
	eor $E641.w,Y		; 59 41 E6
	stx $FF.b		; 86 FF
	ora ($0E.b,X)		; 01 0E
	bmi  64.b		; 30 40
	bra  -1.b		; 80 FF
	cmp $E68015.l,X		; DF 15 80 E6
	ora [$99.b]		; 07 99
	asl $7867.w,X		; 1E 67 78
	sta $C03FF0.l		; 8F F0 3F C0
	adc $FEFF80.l,X		; 7F 80 FF FE
	ora ($F8.b,X)		; 01 F8
	cpx #$0180.w		; E0 80 01
	sbc $FAFF.w,X		; FD FF FA
	adc $0103FE.l,X		; 7F FE 03 01
	ora [$03.b]		; 07 03
	ora [$0E.b]		; 07 0E
	asl $14.b		; 06 14
	php		; 08
	plp		; 28
	sta $51.b,X		; 95 51
	plb		; AB
	lda $01.b,S		; A3 01
	cop $01.b		; 02 01
	tsb $02.b		; 04 02
	php		; 08
	tsb $10.b		; 04 10
	php		; 08
	jsr $C010.w		; 20 10 C0
	jsr $FEFB.w		; 20 FB FE
	tax		; AA
	tax		; AA
	sbc $010201.l,X		; FF 01 02 01
	tsb $08.b		; 04 08
	php		; 08
	jsr $C023.w		; 20 23 C0
	txa		; 8A
	cop $B5.b		; 02 B5
	bmi   1.b		; 30 01
	cop $04.b		; 02 04
	php		; 08
	jsr $02C0.w		; 20 C0 02
	bmi  95.b		; 30 5F
	sbc $6EFA0A.l,X		; FF 0A FA 6E
	jsr ($0233.w,X)		; FC 33 02
	bra  26.b		; 80 1A
	and $4639.w,X		; 3D 39 46
	trb $7EDA.w		; 1C DA 7E
	ldy #$FDF8.w		; A0 F8 FD
	ora $39.b,S		; 03 39
	tsb $18.b		; 04 18
	.db $42, $38		; 42 38
	bra  -1.b		; 80 FF
	cmp [$95.b],Y		; D7 95
	.db $82, $1F, $E0		; 82 1F E0
	and $807FC0.l,X		; 3F C0 7F 80
	jmp ($FB03.w,X)		; 7C 03 FB
	tsb $FF.b		; 04 FF
	sbc $E08F70.l,X		; FF 70 8F E0
	cpy #$8380.w		; C0 80 83
	tsb $8F.b		; 04 8F
	sbc $5400FE.l,X		; FF FE 00 54
	ora $C03FF0.l		; 0F F0 3F C0
	inc $C001.w,X		; FE 01 C0
	and $FE0EFF.l,X		; 3F FF 0E FE
	cmp [$C0.b]		; C7 C0
	jsr ($0103.w,X)		; FC 03 01
	and $FF7D3F.l,X		; 3F 3F 7D FF
	brk $05.b		; 00 05
	sbc $F00F0F.l,X		; FF 0F 0F F0
	beq   7.b		; F0 07
	cpx #$DB1F.w		; E0 1F DB
	sbc $DC.b,S		; E3 DC
	trb $E0EF.w		; 1C EF E0
	ora $5FFDE0.l,X		; 1F E0 FD 5F
	bvc   0.b		; 50 00
	sbc $3EFFFF.l,X		; FF FF FF 3E
	ora ($22.b,X)		; 01 22
	sbc $3CDD.w,X		; FD DD 3C
	dec $C0.b		; C6 C0
	sei		; 78
	bra   1.b		; 80 01
	inc $F1FF.w,X		; FE FF F1
	ora $40.b,X		; 15 40
	cmp $CFBF3F.l		; CF 3F BF CF
	ora ($EF.b,S),Y		; 13 EF
	jmp $06C0E0.l		; 5C E0 C0 06
	ora ($34.b,X)		; 01 34
	ora $F0303F.l		; 0F 3F 30 F0
	ora ($FF.b,X)		; 01 FF
	sbc $FD1555.l,X		; FF 55 15 FD
	inc $3CDA.w,X		; FE DA 3C
	sbc $F9.b,X		; F5 F9
	nop		; EA
	sbc ($D4.b,S),Y		; F3 D4
	sbc [$48.b]		; E7 48
	sta $8F3CA3.l		; 8F A3 3C 8F
	beq  -1.b		; F0 FF
	sbc $F8FCFE.l,X		; FF FE FC F8
	beq -64.b		; F0 C0
	sbc $5601FF.l,X		; FF FF 01 56
	eor [$78.b]		; 47 78
	sta $E01FF0.l		; 8F F0 1F E0
	and $807EC0.l,X		; 3F C0 7E 80
	sbc $0FFE07.l,X		; FF 07 FE 0F
	beq  63.b		; F0 3F
	bra   1.b		; 80 01
	ora [$0F.b]		; 07 0F
	and $FAFFF5.l,X		; 3F F5 FF FA
	ora $3D03FF.l		; 0F FF 03 3D
	ora ($4E.b,X)		; 01 4E
	asl $70F1.w		; 0E F1 70
	stz $E780.w,X		; 9E 80 E7
	ora [$78.b]		; 07 78
	sei		; 78
	ora [$08.b]		; 07 08
	ora ($31.b,X)		; 01 31
	asl $704E.w		; 0E 4E 70
	beq -128.b		; F0 80
	bra 127.b		; 80 7F
	sbc $83403F.l,X		; FF 3F 40 83
	ora $9C.b,S		; 03 9C
	trb $E0E1.w		; 1C E1 E0
	asl $03E3.w,X		; 1E E3 03
	bit $C33C.w,X		; 3C 3C C3
	cpy #$010D.w		; C0 0D 01
	ora $FC.b,S		; 03 FC
	trb $E01C.w		; 1C 1C E0
	cpx #$FF01.w		; E0 01 FF
	sbc $F05501.l,X		; FF 01 55 F0
	sbc $DD0333.l,X		; FF 33 03 DD
	trb $606E.w		; 1C 6E 60
	ldx $87.b,Y		; B6 87
	dec $7918.w,X		; DE 18 79
	adc ($A6.b,X)		; 61 A6
	stx $FF.b		; 86 FF
	ora [$18.b]		; 07 18
	rts		; 60

	bra  -1.b		; 80 FF
	cmp $E70015.l,X		; DF 15 00 E7
	ora [$98.b]		; 07 98
	ora $C73E31.l,X		; 1F 31 3E C7
	sed		; F8
	ora $807FE0.l,X		; 1F E0 7F 80
	sbc $F820DF.l,X		; FF DF 20 F8
	cpx #$3FC0.w		; E0 C0 3F
	pea $A800.w		; F4 00 A8
	ora $6060E0.l,X		; 1F E0 60 60
	bra -128.b		; 80 80
	ora ($04.b,X)		; 01 04
	ora ($03.b,X)		; 01 03
	asl $01.b		; 06 01
	asl $08.b		; 06 08
	sbc $5FFAFF.l,X		; FF FF FA 5F
	sbc $0603.w,X		; FD 03 06
	tsb $1D.b		; 04 1D
	ora #$322A.w		; 09 2A 32
	mvn $A9,$44		; 54 44 A9
	dey		; 88
	eor ($10.b)		; 52 10
	ldy $20.b		; A4 20
	ora $04.b,S		; 03 04
	ora ($18.b,X)		; 01 18
	cop $20.b		; 02 20
	tsb $40.b		; 04 40
	php		; 08
	bra  16.b		; 80 10
	jsr $BFFF.w		; 20 FF BF
	ora $00.b,S		; 03 00
	stx $9C0F.w		; 8E 0F 9C
	ora $703F38.l,X		; 1F 38 3F 70
	adc $C0FFE0.l,X		; 7F E0 FF C0
	sbc $FFFF80.l,X		; FF 80 FF FF
	cmp $80.b,X		; D5 80
	sbc $FFFAFF.l,X		; FF FF FA FF
	lda [$DA.b],Y		; B7 DA
	eor $47B7B0.l,X		; 5F B0 B7 47
	cmp $EDEF19.l,X		; DF 19 EF ED
	adc $0ACF6E.l		; 6F 6E CF 0A
	eor [$16.b],Y		; 57 16
	phx		; DA
	lda ($07.b),Y		; B1 07
	eor $ED3F19.l		; 4F 19 3F ED
	sbc ($76.b,S),Y		; F3 76
	sta $3A.b,S		; 83 3A
	asl $36.b		; 06 36
	sty $FFFF.w		; 8C FF FF
	sbc $FBD5.w,X		; FD D5 FB
	asl $86E7.w		; 0E E7 86
	wai		; CB
	tsx		; BA
	cmp ($32.b,S),Y		; D3 32
	sta [$26.b]		; 87 26
	plb		; AB
	rol A		; 2A
	eor #$164A.w		; 49 4A 16
	ora $10.b,X		; 15 10
	tya		; 98
	cpy #$8084.w		; C0 84 80
	tsb $5880.w		; 0C 80 58
	mvn $E8,$B4		; 54 B4 E8
	ora ($0F.b,X)		; 01 0F
	bit $0000.w,X		; 3C 00 00
	lda ($4C.b,S),Y		; B3 4C
	bmi  48.b		; 30 30
	bra -128.b		; 80 80
	tsb $04.b		; 04 04
	and $0001CF.l,X		; 3F CF 01 00
	cpx #$181F.w		; E0 1F 18
	clc		; 18
	trb $04.b		; 14 04
	php		; 08
	jsr $0303.w		; 20 03 03
	ora [$40.b]		; 07 40
	ora $0157C2.l,X		; 1F C2 57 01
	brk $FF.b		; 00 FF
	ora $F0F00F.l		; 0F 0F F0 F0
	ora $7C.b,S		; 03 7C
	bra  -1.b		; 80 FF
	ror $01FF.w,X		; 7E FF 01
	eor $FF.b,X		; 55 FF
	ora $F0F10F.l		; 0F 0F F1 F0
	asl $39.b		; 06 39
	ora ($C7.b,X)		; 01 C7
	asl $1E.b		; 06 1E
	clc		; 18
	sbc $01FFE7.l,X		; FF E7 FF 01
	asl $18.b		; 06 18
	cpx #$FFFF.w		; E0 FF FF
	ora $04.b,X		; 15 04
	ror $87.b,X		; 76 87
	cld		; D8
	ora $C33E31.l,X		; 1F 31 3E C3
	jsr ($F00F.w,X)		; FC 0F F0
	sec		; 38
	dec $E4.b		; C6 E4
	ora $F8FE39.l,X		; 1F 39 FE F8
	cpx #$01C0.w		; E0 C0 01
	cmp $5554FF.l,X		; DF FF 54 55
	ora $807FE0.l,X		; 1F E0 7F 80
	jsr ($27C0.w,X)		; FC C0 27
	asl $98.b		; 06 98
	clc		; 18
	rts		; 60

	adc $80.b,S		; 63 80
	cmp $0F0340.l		; CF 40 03 0F
	clc		; 18
	adc ($87.b,X)		; 61 87
	ora $D5FF3F.l,X		; 1F 3F FF D5
	eor ($40.b),Y		; 51 40
	ora $F0FFF0.l		; 0F F0 FF F0
	sbc ($E0.b,S),Y		; F3 E0
	tsb $30E0.w		; 0C E0 30
	cmp ($06.b,X)		; C1 06
	and $E0FF07.l,X		; 3F 07 FF E0
	cpx #$D507.w		; E0 07 D5
	sbc $FF5541.l,X		; FF 41 55 FF
	cpy #$0DC3.w		; C0 C3 0D
	ora ($77.b,X)		; 01 77
	asl $BF.b		; 06 BF
	and $C6DE.w,Y		; 39 DE C6
	cld		; D8
	sec		; 38
	sbc $380601.l,X		; FF 01 06 38
	cpy #$FF03.w		; C0 03 FF
	sbc $C75515.l,X		; FF 15 55 C7
	ora [$1C.b]		; 07 1C
	ora $8F7E61.l,X		; 1F 61 7E 8F
	beq  62.b		; F0 3E
	cpy #$03FB.w		; C0 FB 03
	cld		; D8
	ora $F83C23.l,X		; 1F 23 3C F8
	cpx #$0180.w		; E0 80 01
	tsb $20.b		; 04 20
	cpy #$5FFF.w		; C0 FF 5F
	brk $A0.b		; 00 A0
	ora $837CE0.l,X		; 1F E0 7C 83
	sbc ($0E.b),Y		; F1 0E
	sbc [$38.b]		; E7 38
	cmp $C03FF0.l		; CF F0 3F C0
	inc $01FB.w,X		; FE FB 01
	ora [$FF.b]		; 07 FF
	sbc $3F4AA0.l,X		; FF A0 4A 3F
	cpy #$4040.w		; C0 40 40
	.db $82, $80, $0B		; 82 80 0B
	ora ($3A.b,X)		; 01 3A
	cop $F5.b		; 02 F5
	tsb $DA.b		; 04 DA
	clc		; 18
	and $0321.w		; 2D 21 03
	tsb $C030.w		; 0C 30 C0
	ora ($FF.b,X)		; 01 FF
	sbc $D3555A.l,X		; FF 5A 55 D3
	ora $F910B4.l		; 0F B4 10 F9
	adc ($A6.b,X)		; 61 A6
	stx $48.b		; 86 48
	php		; 08
	sta ($10.b),Y		; 91 10
	ror $60.b		; 66 60
	dey		; 88
	bra  63.b		; 80 3F
	cpy #$0601.w		; C0 01 06
	php		; 08
	bpl  96.b		; 10 60
	bra  -1.b		; 80 FF
	sbc $8E0003.l,X		; FF 03 00 8E
	ora $381F9C.l		; 0F 9C 1F 38
	and $E07F70.l,X		; 3F 70 7F E0
	sbc $80FFC0.l,X		; FF C0 FF 80
	sbc $D0FF05.l,X		; FF 05 FF D0
	bra  -1.b		; 80 FF
	ora $AA0003.l		; 0F 03 00 AA
	eor $FE.b,X		; 55 FE
	inc $FCFC.w,X		; FE FC FC
	sed		; F8
	sed		; F8
	bne -48.b		; D0 D0
	bra -128.b		; 80 80
	sbc $57FFFF.l,X		; FF FF FF 57
	sbc $A8EF57.l,X		; FF 57 EF A8
	cmp $BB58.w,X		; DD 58 BB
	bcs 119.b		; B0 77
	rts		; 60

	sbc $7FDF80.l		; EF 80 DF 7F
	sbc $5B1CA9.l,X		; FF A9 1C 5B
	sec		; 38
	lda [$70.b],Y		; B7 70
	adc $C09FE0.l		; 6F E0 9F C0
	and $FFFFFF.l,X		; 3F FF FF FF
	adc $8A15EF.l,X		; 7F EF 15 8A
	ora $161E.w		; 0D 1E 16
	ora $3A01.w,Y		; 19 01 3A
	asl $464C.w,X		; 1E 4C 46
	asl $03.b		; 06 03
	ora $01.b,S		; 03 01
	jsr $01F0.w		; 20 F0 01
	bpl   2.b		; 10 02
	ora ($18.b,X)		; 01 18
	cop $44.b		; 02 44
	cop $01.b		; 02 01
	cmp $0000FF.l		; CF FF 00 00
	ora [$F8.b]		; 07 F8
	php		; 08
	php		; 08
	ora ($11.b),Y		; 11 11
	cop $02.b		; 02 02
	bit $24.b		; 24 24
	eor #$9248.w		; 49 48 92
	bcc  79.b		; 90 4F
	sbc $E05501.l,X		; FF 01 55 E0
	rts		; 60

	bra -128.b		; 80 80
	bra  32.b		; 80 20
	jsr $4040.w		; 20 40 40
	ora [$07.b]		; 07 07
	tyx		; BB
	clv		; B8
	ora $074020.l,X		; 1F 20 40 07
	clv		; B8
	and $0555FF.l,X		; 3F FF 55 05
	ora $03.b,S		; 03 03
	asl $3F0F.w		; 0E 0F 3F
	and $700303.l,X		; 3F 03 03 70
	adc $1FFC83.l,X		; 7F 83 FC 1F
	cpx #$F0FC.w		; E0 FC F0
	cpy #$FCFF.w		; C0 FF FC
	bra  -1.b		; 80 FF
	sbc $844055.l,X		; FF 55 40 84
	jsr ($E161.w,X)		; FC 61 E1
	tsb $670F.w		; 0C 0F 67
	sei		; 78
	ora $07F9E0.l,X		; 1F E0 F9 07
	sbc [$1F.b]		; E7 1F
	stz $037C.w		; 9C 7C 03
	asl $80F0.w,X		; 1E F0 80
	ora $FF.b,S		; 03 FF
	eor $475551.l,X		; 5F 51 55 47
	sei		; 78
	ora $0CFDE3.l,X		; 1F E3 FD 0C
	wai		; CB
	sec		; 38
	and [$F0.b],Y		; 37 F0
	cmp $FF3FC0.l		; CF C0 3F FF
	bra   3.b		; 80 03
	ora [$0F.b]		; 07 0F
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $9F4155.l,X		; FF 55 41 9F
	bra -26.b		; 80 E6
	sta ($9E.b,X)		; 81 9E
	ora $D8.b		; 05 D8
	bit $3FC7.w,X		; 3C C7 3F
	xce		; FB
	xce		; FB
	sbc $071BFC.l,X		; FF FC 1B 07
	adc $3F0681.l,X		; 7F 81 06 3F
	sec		; 38
	ora [$FF.b]		; 07 FF
	sbc $391551.l,X		; FF 51 15 39
	rol $C0FF.w,X		; 3E FF C0
	cpx #$071F.w		; E0 1F 07
	sed		; F8
	adc $C681.w,Y		; 79 81 C6
	ora [$70.b]		; 07 70
	adc $C0F887.l,X		; 7F 87 F8 C0
	ora $F8FEFF.l,X		; 1F FF FE F8
	bra  -3.b		; 80 FD
	sbc $FCF455.l,X		; FF 55 F4 FC
	and ($C3.b)		; 32 C3
	iny		; C8
	ora $8F3C33.l		; 0F 33 3C 8F
	beq  63.b		; F0 3F
	cmp ($FE.b,X)		; C1 FE
	asl $F8.b		; 06 F8
	clc		; 18
	ora $C0F0FC.l,X		; 1F FC F0 C0
	ora ($06.b,X)		; 01 06
	ora ($18.b,X)		; 01 18
	ora [$5F.b]		; 07 5F
	sbc $8FAFA0.l,X		; FF A0 AF 8F
	beq  63.b		; F0 3F
	cpy #$F1FC.w		; C0 FC F1
	sbc $20.b,S		; E3 20
	stx $3C81.w		; 8E 81 3C
	ora $F0.b,S		; 03 F0
	ora $200F03.l		; 0F 03 0F 20
	ora $FF7F80.l,X		; 1F 80 7F FF
	sbc $0AFFFD.l,X		; FF FD FF 0A
	mvn $FB,$E7		; 54 E7 FB
	ora $6D.b,S		; 03 6D
	tsb $30B2.w		; 0C B2 30
	mvp $99,$40		; 44 40 99
	sta ($22.b,X)		; 81 22
	cop $44.b		; 02 44
	tsb $1F.b		; 04 1F
	cpx #$0201.w		; E0 01 02
	tsb $FF.b		; 04 FF
	sbc $1C0557.l,X		; FF 57 05 1C
	jsr ($0464.w,X)		; FC 64 04
	bit #$3208.w		; 89 08 32
	bmi  76.b		; 30 4C
	rti		; 40

	bcc -128.b		; 90 80
	and $05.b		; 25 05
	eor $FF030F.l		; 4F 0F 03 FF
	tsb $08.b		; 04 08
	bmi  64.b		; 30 40
	bra  -1.b		; 80 FF
	sbc $3A0000.l,X		; FF 00 00 3A
	and $E07F70.l,X		; 3F 70 7F E0
	sbc $83FFC1.l,X		; FF C1 FF 83
	sbc $0FFF07.l,X		; FF 07 FF 0F
	sbc $3FFF5F.l,X		; FF 5F FF 3F
	brk $03.b		; 00 03
	brk $A0.b		; 00 A0
	eor $40E0E0.l,X		; 5F E0 E0 40
	rti		; 40

	sbc $0002FF.l,X		; FF FF 02 00
	ora $00.b,S		; 03 00
	sbc $01FFFF.l,X		; FF FF FF 01
	stz $01.b,X		; 74 01
	bpl  -1.b		; 10 FF
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	sbc $FFFF01.l,X		; FF 01 FF FF
	sbc $DF15.w,X		; FD 15 DF
	eor ($5D.b,X)		; 41 5D
	rti		; 40

	eor $C0CB42.l		; 4F 42 CB C0
	cmp [$C4.b]		; C7 C4
	eor $D05FC8.l		; 4F C8 5F D0
	sbc $BFBEC0.l,X		; FF C0 BE BF
	ora ($BD.b,X)		; 01 BD
	ora ($3E.b,X)		; 01 3E
	cop $38.b		; 02 38
	bmi  32.b		; 30 20
	sbc $0001BF.l,X		; FF BF 01 00
	dec $3E.b		; C6 3E
	sta $FF387F.l,X		; 9F 7F 38 FF
	rts		; 60

	sbc $1EFC03.l,X		; FF 03 FC 1E
	sbc ($60.b,X)		; E1 60
	sta $FF01FF.l,X		; 9F FF 01 FF
	eor $E00000.l,X		; 5F 00 00 E0
	sbc $1C03E3.l,X		; FF E3 03 1C
	trb $E3E3.w		; 1C E3 E3
	trb $E71C.w		; 1C 1C E7
	cpx #$3C3B.w		; E0 3B 3C
	sbc $0140EF.l,X		; FF EF 40 01
	jmp ($E083.w,X)		; 7C 83 E0
	ora $197F87.l,X		; 1F 87 7F 19
	sed		; F8
	cmp ($C1.b,X)		; C1 C1
	sed		; F8
	sbc $807FFF.l,X		; FF FF 7F 80
	ora [$3E.b]		; 07 3E
	cmp $0055FF.l,X		; DF FF 55 00
	adc ($F0.b,S),Y		; 73 F0
	cmp $C77EC0.l		; CF C0 7E C7
	ora [$E0.b]		; 07 E0
	sbc $7FFE01.l,X		; FF 01 FE 7F
	bra  -1.b		; 80 FF
	ora $FF3F0F.l		; 0F 0F 3F FF
	sed		; F8
	sbc $F7.b,X		; F5 F7
	ora $54.b,X		; 15 54
	inc $1CE0.w,X		; FE E0 1C
	ora $0FFF80.l,X		; 1F 80 FF 0F
	beq  -8.b		; F0 F8
	cmp $C0.b,S		; C3 C0
	clc		; 18
	ora [$FF.b]		; 07 FF
	sbc $3F07E0.l,X		; FF E0 07 3F
	sbc $41FFFF.l,X		; FF FF FF 41
	sbc $1F1C.w,X		; FD 1C 1F
	sbc ($FE.b,X)		; E1 FE
	ora $03FCF0.l		; 0F F0 FC 03
	sbc ($1F.b,X)		; E1 1F
	stx $7E.b		; 86 7E
	clc		; 18
	sed		; F8
	adc ($E0.b,X)		; 61 E0
	cpx #$3F03.w		; E0 03 3F
	inc $F801.w,X		; FE 01 F8
	ora [$E0.b]		; 07 E0
	ora $F4F7FF.l,X		; 1F FF F7 F4
	plb		; AB
	and $07FBC0.l,X		; 3F C0 FB 07
	dec $383E.w		; CE 3E 38
	sed		; F8
	cmp $C0.b,S		; C3 C0
	ora $F0017E.l		; 0F 7E 01 F0
	ora $013E07.l		; 0F 07 3E 01
	sed		; F8
	ora [$C0.b]		; 07 C0
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $403FFF.l,X		; FF FF 3F 40
	sbc $E0.b,S		; E3 E0
	jmp ($B160.w)		; 6C 60 B1
	sta ($C6.b,X)		; 81 C6
	asl $18.b		; 06 18
	clc		; 18
	adc $60.b,S		; 63 60
	sty $3180.w		; 8C 80 31
	ora ($E0.b,X)		; 01 E0
	ora $806060.l,X		; 1F 60 60 80
	bra   1.b		; 80 01
	sbc $5542FF.l,X		; FF FF 42 55
	sbc ($1F.b,X)		; E1 1F
	ror $60.b		; 66 60
	dey		; 88
	bra  51.b		; 80 33
	ora $C4.b,S		; 03 C4
	tsb $19.b		; 04 19
	clc		; 18
	ror $60.b		; 66 60
	dey		; 88
	bra  -1.b		; 80 FF
	ora $04.b,S		; 03 04
	clc		; 18
	rts		; 60

	bra  -1.b		; 80 FF
	sbc $E10017.l,X		; FF 17 00 E1
	cpx #$2026.w		; E0 26 20
	iny		; C8
	cpy #$0232.w		; C0 32 02
	eor [$07.b]		; 47 07
	sta $5F5F0F.l		; 8F 0F 5F 5F
	inc $1FFE.w,X		; FE FE 1F
	sbc $FFC020.l,X		; FF 20 C0 FF
	ora $EA0003.l		; 0F 03 00 EA
	ora $3E.b,X		; 15 3E
	rol $7C7C.w,X		; 3E 7C 7C
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	ldy #$FFA0.w		; A0 A0 FF
	sbc $F503FF.l,X		; FF FF 03 F5
	ora $FD.b,S		; 03 FD
	ora $0A.b,S		; 03 0A
	ora [$27.b]		; 07 27
	tas		; 1B
	bcc  96.b		; 90 60
	rti		; 40

	bra  -4.b		; 80 FC
	tsb $18.b		; 04 18
	ora $803060.l		; 0F 60 30 80
	cpy #$FC32.w		; C0 32 FC
	brk $00.b		; 00 00
	sbc $07FFFF.l,X		; FF FF FF 07
	ora [$38.b]		; 07 38
	sec		; 38
	cpy #$CEC0.w		; C0 C0 CE
	cmp ($00.b,S),Y		; D3 00
	rti		; 40

	sbc $0FFFFF.l,X		; FF FF FF 0F
	ora $07F0F0.l		; 0F F0 F0 07
	and $0101.w,Y		; 39 01 01
	sbc ($FF.b),Y		; F1 FF
	brk $55.b		; 00 55
	sbc $C13F3F.l,X		; FF 3F 3F C1
	cpy #$011F.w		; C0 1F 01
	inc $770E.w		; EE 0E 77
	bvs -103.b		; 70 99
	sta ($01.b,X)		; 81 01
	asl $8070.w		; 0E 70 80
	sbc $C150FF.l,X		; FF FF 50 C1
	jsr ($FF03.w,X)		; FC 03 FF
	jsr ($031F.w,X)		; FC 1F 03
	sbc $FF1C.w,X		; FD 1C FF
	sbc ($EE.b,X)		; E1 EE
	asl $7077.w		; 0E 77 70
	sta $0381.w,Y		; 99 81 03
	trb $01E0.w		; 1C E0 01
	ora ($FF.b,X)		; 01 FF
	adc $70BF55.l,X		; 7F 55 BF 70
	beq -121.b		; F0 87
	bra  56.b		; 80 38
	ora [$C1.b]		; 07 C1
	and $F8FE0E.l,X		; 3F 0E FE F8
	sed		; F8
	cmp $C0.b,S		; C3 C0
	ora $FF7F0F.l,X		; 1F 0F 7F FF
	sbc $F801FE.l,X		; FF FE 01 F8
	ora [$C0.b]		; 07 C0
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $E303.w,X		; FD 03 E3
	ora $3CE3EF.l,X		; 1F EF E3 3C
	tsb $30F3.w		; 0C F3 30
	cpy $73C0.w		; CC C0 73
	ora $8C.b,S		; 03 8C
	tsb $3030.w		; 0C 30 30
	sbc $0C0303.l,X		; FF 03 03 0C
	tsb $3030.w		; 0C 30 30
	cpy #$FFC0.w		; C0 C0 FF
	cmp $87400F.l,X		; DF 0F 40 87
	bra -104.b		; 80 98
	bra -29.b		; 80 E3
	ora $0C.b,S		; 03 0C
	tsb $7071.w		; 0C 71 70
	stx $80.b		; 86 80
	clc		; 18
	sbc $03.b,S		; E3 03
	bra 127.b		; 80 7F
	bra -128.b		; 80 80
	ora $DF.b,S		; 03 DF
	sbc $C01542.l,X		; FF 42 15 C0
	and $0CC0C3.l,X		; 3F C3 C0 0C
	adc ($03.b,S),Y		; 73 03
	sty $300C.w		; 8C 0C 30
	bmi -57.b		; 30 C7
	cpy #$020A.w		; C0 0A 02
	sbc $300C03.l,X		; FF 03 0C 30
	cpy #$FFF5.w		; C0 F5 FF
	and $18F800.l,X		; 3F 00 F8 18
	adc $03.b,S		; 63 03
	sta $3F3E0F.l		; 8F 0F 3E 3F
	pea $A0FF.w		; F4 FF A0
	sbc $A8FF05.l,X		; FF 05 FF A8
	sed		; F8
	cpx #$80E0.w		; E0 E0 80
	bra  -1.b		; 80 FF
	and $3A0003.l,X		; 3F 03 00 3A
	ora $CF.b		; 05 CF
	ora $BE1F1F.l		; 0F 1F 1F BE
	ldx $F4F4.w,Y		; BE F4 F4
	cpx #$40E0.w		; E0 E0 40
	rti		; 40

	sbc $00FFFF.l,X		; FF FF FF 00
	ora $00.b,S		; 03 00
	tay		; A8
	eor [$E8.b],Y		; 57 E8
	inx		; E8
	cpy #$80C0.w		; C0 C0 80
	bra  -1.b		; 80 FF
	sbc $0043FF.l,X		; FF FF 43 00
	brk $FC.b		; 00 FC
	ora $0C.b,S		; 03 0C
	tsb $1010.w		; 0C 10 10
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	ora ($D6.b,X)		; 01 D6
	sbc $FF5540.l,X		; FF 40 55 FF
	ora ($06.b,X)		; 01 06
	ora $2601.w,Y		; 19 01 26
	asl $49.b		; 06 49
	php		; 08
	sta ($10.b)		; 92 10
	bit $20.b		; 24 20
	ora ($06.b,X)		; 01 06
	php		; 08
	bpl  32.b		; 10 20
	sbc $C055FF.l,X		; FF FF 55 C0
	beq -16.b		; F0 F0
	and ($30.b,S),Y		; 33 30
	jmp $B340.w		; 4C 40 B3
	sta $CD.b,S		; 83 CD
	tsb $1016.w		; 0C 16 10
	pla		; 68
	rts		; 60

	sta ($83.b,S),Y		; 93 83
	ora $804030.l		; 0F 30 40 80
	ora $03.b,S		; 03 03
	sbc $3FC1FF.l,X		; FF FF C1 3F
	beq  15.b		; F0 0F
	and ($30.b,S),Y		; 33 30
	cpy $73C0.w		; CC C0 73
	ora $8D.b,S		; 03 8D
	tsb $3036.w		; 0C 36 30
	cld		; D8
	cpy #$0363.w		; C0 63 03
	sbc $0C0303.l,X		; FF 03 03 0C
	tsb $3030.w		; 0C 30 30
	cpy #$FFC0.w		; C0 C0 FF
	sbc $78403F.l,X		; FF 3F 40 78
	sed		; F8
	sta $E618.w,Y		; 99 18 E6
	cpx #$0139.w		; E0 39 01
	dec $310E.w		; CE 0E 31
	bmi -58.b		; 30 C6
	cpy #$0119.w		; C0 19 01
	sed		; F8
	ora [$18.b]		; 07 18
	clc		; 18
	cpx #$01E0.w		; E0 E0 01
	sbc $5502FF.l,X		; FF FF 02 55
	ror $8E01.w,X		; 7E 01 8E
	asl $7070.w		; 0E 70 70
	sta [$80.b]		; 87 80
	and $CE01.w,Y		; 39 01 CE
	asl $7071.w		; 0E 71 70
	stx $FF80.w		; 8E 80 FF
	ora ($0E.b,X)		; 01 0E
	bvs -128.b		; 70 80
	sbc [$F7.b],Y		; F7 F7
	eor ($01.b)		; 52 01
	ora [$FF.b]		; 07 FF
	sec		; 38
	cmp [$07.b]		; C7 07
	sec		; 38
	sec		; 38
	cmp [$C0.b]		; C7 C0
	sec		; 38
	cmp $15.b,X		; D5 15
	and $07FF3F.l,X		; 3F 3F FF 07
	sec		; 38
	cpy #$FFFD.w		; C0 FD FF
	ora $61E000.l		; 0F 00 E0 61
	ora ($8A.b,X)		; 01 8A
	ora $A0FFF0.l		; 0F F0 FF A0
	sbc $2FFF05.l,X		; FF 05 FF 2F
	sbc $E0FF7F.l,X		; FF 7F FF E0
	cpx #$8080.w		; E0 80 80
	sbc $0003C3.l,X		; FF C3 03 00
	ror A		; 6A
	ora $BF.b,X		; 15 BF
	and $E07575.l,X		; 3F 75 75 E0
	cpx #$4040.w		; E0 40 40
	tsb $04.b		; 04 04
	sbc $000FFF.l,X		; FF FF 0F 00
	ora $00.b,S		; 03 00
	ldy #$A05F.w		; A0 5F A0
	ldy #$FFFF.w		; A0 FF FF
	and [$33.b],Y		; 37 33
	bpl  17.b		; 10 11
	ora $FF.b,S		; 03 FF
	tsb $09.b		; 04 09
	ora ($12.b,X)		; 01 12
	cop $24.b		; 02 24
	tsb $01.b		; 04 01
	cop $04.b		; 02 04
	sbc $000537.l,X		; FF 37 05 00
	stx $9281.w		; 8E 81 92
	.db $82, $24, $04		; 82 24 04
	eor #$1208.w		; 49 08 12
	bpl -128.b		; 10 80
	bit $20.b		; 24 20
	adc $7FFF80.l,X		; 7F 80 FF 7F
	sbc $F83833.l,X		; FF 33 38 F8
	eor #$9208.w		; 49 08 92
	bpl  36.b		; 10 24
	jsr $4149.w		; 20 49 41
	ora ($02.b)		; 12 02
	sty $84.b		; 84 84
	jsr $07F8.w		; 20 F8 07
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	sbc $5542FF.l,X		; FF FF 42 55
	beq  15.b		; F0 0F
	and ($30.b),Y		; 31 30
	lsr $40.b		; 46 40
	bit #$1281.w		; 89 81 12
	cop $24.b		; 02 24
	tsb $49.b		; 04 49
	php		; 08
	sta ($10.b)		; 92 10
	sbc $040201.l,X		; FF 01 02 04
	php		; 08
	bpl  -1.b		; 10 FF
	sbc $780057.l,X		; FF 57 00 78
	sed		; F8
	lda $4638.w,Y		; B9 38 46
	rti		; 40

	tya		; 98
	bra 101.b		; 80 65
	ora $8F.b		; 05 8F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $38FF07.l,X		; 3F 07 FF 38
	rti		; 40

	bra -65.b		; 80 BF
	tax		; AA
	ora ($00.b,X)		; 01 00
	ror $F47F.w,X		; 7E 7F F4
	sbc $FFFFA0.l,X		; FF A0 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $FF.b,X		; 55 FF
	lda $AA0001.l,X		; BF 01 00 AA
	sbc $03FF01.l,X		; FF 01 FF 03
	sbc $07FF07.l,X		; FF 07 FF 07
	sbc $05FF07.l,X		; FF 07 FF 05
	sbc $C255FF.l,X		; FF FF 55 C2
	sbc $FF0003.l,X		; FF 03 00 FF
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	ora #$3209.w		; 09 09 32
	and ($C4.b)		; 32 C4
	cpy $FF.b		; C4 FF
	sbc $0303FF.l,X		; FF FF 03 03
	brk $18.b		; 00 18
	sbc [$28.b]		; E7 28
	plp		; 28
	bne -48.b		; D0 D0
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	sbc $4C4FFF.l,X		; FF FF 4F 4C
	ora $04.b		; 05 04
	adc $08F8.w,Y		; 79 F8 08
	php		; 08
	.db $82, $10, $10		; 82 10 10
	tsb $07.b		; 04 07
	php		; 08
	bpl -49.b		; 10 CF
	cpy $C3.b		; C4 C3
	brk $C6.b		; 00 C6
	rol $4048.w,X		; 3E 48 40
	cop $02.b		; 02 02
	bpl -128.b		; 10 80
	bra  -2.b		; 80 FE
	ora ($02.b,X)		; 01 02
	cop $07.b		; 02 07
	ora [$02.b]		; 07 02
	brk $30.b		; 00 30
	ora $101041.l		; 0F 41 10 10
	.db $82, $FF, $FF		; 82 FF FF
	ora $E30047.l		; 0F 47 00 E3
	cpx #$2024.w		; E0 24 20
	ora ($01.b,X)		; 01 01
	eor #$0141.w		; 49 41 01
	ora ($01.b,X)		; 01 01
	ora ($1F.b,X)		; 01 1F
	sbc $AB4020.l,X		; FF 20 40 AB
	plx		; FA
	ora ($00.b,X)		; 01 00
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF15FF.l,X		; FF FF 15 FF
	bcs -16.b		; B0 F0
	sbc $01FFAB.l,X		; FF AB FF 01
	sed		; F8
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $FF.b,X		; 15 FF
	bcs -15.b		; B0 F1
	stx $87.b		; 86 87
	and $01DB1B.l,X		; 3F 1B DB 01
	ora ($06.b,X)		; 01 06
	jsl $FFFF3C.l		; 22 3C FF FF
	sbc $FFAB1F.l		; EF 1F AB FF
	ora #$1EFC.w		; 09 FC 1E
	sbc ($B2.b,S),Y		; F3 B2
	cmp [$C5.b]		; C7 C5
	ora $27BF9B.l,X		; 1F 9B BF 27
	sbc $C1FFDF.l,X		; FF DF FF C1
	ora ($03.b,X)		; 01 03
	ora $0C.b,S		; 03 0C
	bit $38.b		; 24 38
	bcc -32.b		; 90 E0
	jsr $80C0.w		; 20 C0 80
	sbc $000700.l,X		; FF 00 07 00
	cpx #$209F.w		; E0 9F 20
	ldy #$4040.w		; A0 40 40
	bra -128.b		; 80 80
	adc $3380FF.l,X		; 7F FF 80 33
	brk $11.b		; 00 11
	brk $E7.b		; 00 E7
	cpx #$2020.w		; E0 20 20
	ora $C00320.l,X		; 1F 20 03 C0
	ora $C0.b,S		; 03 C0
	trb $02FC.w		; 1C FC 02
	cop $FC.b		; 02 FC
	ora $02.b,S		; 03 02
	cop $43.b		; 02 43
	cmp $E3C002.l,X		; DF 02 C0 E3
	ora $101102.l,X		; 1F 02 11 10
	ora $7D830F.l		; 0F 0F 83 7D
	ora ($FF.b,X)		; 01 FF
	ora ($01.b,X)		; 01 01
	sbc [$DD.b],Y		; F7 DD
	eor ($E8.b,S),Y		; 53 E8
	sta [$80.b]		; 87 80
	ora [$40.b]		; 07 40
	rti		; 40

	and $FDFF3F.l,X		; 3F 3F FF FD
	sbc $C0F0F2.l,X		; FF F2 F0 C0
	adc $3F40FF.l,X		; 7F FF 40 3F
	ora ($0E.b,X)		; 01 0E
	cpy #$FFF0.w		; C0 F0 FF
	sbc $FFFF.w,X		; FD FF FF
	cmp $03.b,S		; C3 03
	ora $787F0E.l		; 0F 0E 7F 78
	dec $78E0.w,X		; DE E0 78
	sbc $03.b,S		; E3 03
	cmp [$01.b]		; C7 01
	sta $FC94.w,X		; 9D 94 FC
	sbc $80FEF0.l,X		; FF F0 FE 80
	sed		; F8
	ora ($E1.b,X)		; 01 E1
	ora [$87.b]		; 07 87
	ora $3E1E.w,X		; 1D 1E 3E
	and $F76B.w,Y		; 39 6B F7
	sbc $7FFF.w,X		; FD FF 7F
	and $817F.w		; 2D 7F 81
	ora ($C2.b,X)		; 01 C2
	ora ($04.b)		; 12 04
	bit $C8.b,X		; 34 C8
	tay		; A8
	bpl  16.b		; 10 10
	jsr $40A0.w		; 20 A0 40
	rti		; 40

	adc $B0408F.l,X		; 7F 8F 40 B0
	bne -64.b		; D0 C0
	bmi -32.b		; 30 E0
	cpy #$8080.w		; C0 80 80
	ora $000300.l		; 0F 00 03 00
	bra 127.b		; 80 7F
	bra -128.b		; 80 80
	sbc $DF43FF.l,X		; FF FF 43 DF
	ora ($05.b,X)		; 01 05
	cmp [$C0.b]		; C7 C0
	tsb $23.b		; 04 23
	jsr $1F1F.w		; 20 1F 1F
	asl $07F6.w		; 0E F6 07
	and $F71F20.l,X		; 3F 20 1F F7
	and $0501.w		; 2D 01 05
	ora $8F10FF.l,X		; 1F FF 10 8F
	bra 127.b		; 80 7F
	adc $E0F8F8.l,X		; 7F F8 F8 E0
	cpx #$07FF.w		; E0 FF 07
	sed		; F8
	adc $AA15FF.l,X		; 7F FF 15 AA
	sbc $FCE3FF.l,X		; FF FF E3 FC
	ora $FEFFE0.l,X		; 1F E0 FF FE
	ora ($F8.b,X)		; 01 F8
	ora [$E0.b]		; 07 E0
	ora $FF18E3.l,X		; 1F E3 18 FF
	jsr ($01E0.w,X)		; FC E0 01
	ora [$1F.b]		; 07 1F
	jmp ($FFFB.w,X)		; 7C FB FF
	tax		; AA
	inc $03FF.w,X		; FE FF 03
	tsb $02.b		; 04 02
	tas		; 1B
	phd		; 0B
	adc $92CB.w		; 6D CB 92
	eor $C2862D.l		; 4F 2D 86 C2
	and $0334.w,X		; 3D 34 03
	tsb $19.b		; 04 19
	adc [$9A.b]		; 67 9A
	eor ($6C.b,X)		; 41 6C
	.db $42, $90		; 42 90
	tsb $60.b		; 04 60
	sbc $00AFFF.l,X		; FF FF AF 00
	sbc ($33.b,S),Y		; F3 33
	rol $C7.b		; 26 C7
	sbc $DB8F.w		; ED 8F DB
	ora $6F3FB7.l,X		; 1F B7 3F 6F
	adc $BFFFDF.l,X		; 7F DF FF BF
	sbc $D0C070.l,X		; FF 70 C0 D0
	jsr $8040.w		; 20 40 80
	ora $5500FE.l		; 0F FE 00 55
	adc $808080.l,X		; 7F 80 80 80
	ora $0C.b,S		; 03 0C
	tsb $1012.w		; 0C 12 10
	jsl $0C0323.l		; 22 23 03 0C
	bmi -61.b		; 30 C3
	cmp $FF.b,X		; D5 FF
	nop		; EA
	eor [$FF.b],Y		; 57 FF
	sbc ($C3.b,S),Y		; F3 C3
	cmp $C0.b,S		; C3 C0
	sbc $C1FEE0.l		; EF E0 FE C1
	sbc $D307.w,Y		; F9 07 D3
	ora $3F0F01.l		; 0F 01 0F 3F
	cpy #$E03C.w		; C0 3C E0
	bpl -61.b		; 10 C3
	ora $FFFD3F.l		; 0F 3F FD FF
	inc $EEFF.w,X		; FE FF EE
	sbc $09FA02.l,X		; FF 02 FA 09
	pei ($33.b)		; D4 33
	adc #$D3E7.w		; 69 E7 D3
	cmp $669EA6.l		; CF A6 9E 66
	asl $02F1.w,X		; 1E F1 02
	cmp ($08.b,X)		; C1 08
	ora [$30.b]		; 07 30
	ora $C01FE0.l		; 0F E0 1F C0
	and $017F81.l,X		; 3F 81 7F 01
	sbc $47FFFF.l,X		; FF FF FF 47
	ora $93.b		; 05 93
	bvs -76.b		; 70 B4
	bcc  73.b		; 90 49
	ora ($B3.b,X)		; 01 B3
	and $47.b,S		; 23 47
	eor [$AE.b]		; 47 AE
	stx $1C5C.w		; 8E 5C 1C
	stz $0F1C.w		; 9C 1C 0F
	sbc $402010.l,X		; FF 10 20 40
	bra  -1.b		; 80 FF
	brk $03.b		; 00 03
	brk $80.b		; 00 80
	adc $808080.l,X		; 7F 80 80 80
	bra -128.b		; 80 80
	bra  -1.b		; 80 FF
	sbc $55FFFF.l,X		; FF FF FF 55
	eor $8F.b,X		; 55 8F
	bvs  -2.b		; 70 FE
	cop $F4.b		; 02 F4
	tsb $38C9.w		; 0C C9 38
	and ($F1.b)		; 32 F1
	stz $E3.b		; 64 E3
	cpy $99C3.w		; CC C3 99
	sta [$F0.b]		; 87 F0
	sta ($03.b,X)		; 81 03
	ora [$0F.b]		; 07 0F
	ora $FF7F3F.l,X		; 1F 3F 7F FF
	adc $263FFF.l,X		; 7F FF 3F 26
	asl $226B.w,X		; 1E 6B 22
	dec $44.b,X		; D6 44
	lda $5A89.w		; AD 89 5A
	ora ($A5.b)		; 12 A5
	bit $50.b		; 24 50
	rti		; 40

	cop $FE.b		; 02 FE
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	sbc $1157F3.l,X		; FF F3 57 11
	cpy $553C.w		; CC 3C 55
	mvp $88,$A8		; 44 A8 88
	eor ($10.b)		; 52 10
	ldy $20.b		; A4 20
	eor #$0141.w		; 49 41 01
	ora ($03.b,X)		; 01 03
	sbc $100804.l,X		; FF 04 08 10
	jsr $FF40.w		; 20 40 FF
	sbc $E80001.l,X		; FF 01 00 E8
	sbc $8FFFC7.l,X		; FF C7 FF 8F
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	sbc $1FFF1F.l,X		; FF 1F FF 1F
	sbc $40FF1F.l,X		; FF 1F FF 40
	ora $0C050F.l,X		; 1F 0F 05 0C
	sta $A887.w,Y		; 99 87 A8
	dey		; 88
	cop $50.b		; 02 50
	bpl   5.b		; 10 05
	ora ($7F.b,X)		; 01 7F
	bra   1.b		; 80 01
	ora ($D3.b,X)		; 01 D3
	brk $42.b		; 00 42
	brk $33.b		; 00 33
	ora $115104.l		; 0F 04 51 11
	sbc $FFFF01.l,X		; FF 01 FF FF
	ora ($00.b,X)		; 01 00
	asl $1C1F.w,X		; 1E 1F 1C
	ora $1C1F1C.l,X		; 1F 1C 1F 1C
	ora $3C3F3C.l,X		; 1F 3C 3F 3C
	and $3C3F3C.l,X		; 3F 3C 3F 3C
	and $FFFFFD.l,X		; 3F FD FF FF
	ora ($00.b,X)		; 01 00
	bra  -1.b		; 80 FF
	and $FF3FFF.l,X		; 3F FF 3F FF
	and $FF3FFF.l,X		; 3F FF 3F FF
	and $FF3FFF.l,X		; 3F FF 3F FF
	and $A840FF.l,X		; 3F FF 40 A8
	tax		; AA
	lsr $AA.b,X		; 56 AA
	txs		; 9A
	tax		; AA
	tax		; AA
	txs		; 9A
	lda $AA.b		; A5 AA
	tax		; AA
	tax		; AA
	stx $AA.b,Y		; 96 AA
	tax		; AA
	eor $99.b,X		; 55 99
	tax		; AA
	adc $99.b		; 65 99
	adc #$6BAA.w		; 69 AA 6B
	plb		; AB
	tsx		; BA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	lda #$6AAA.w		; A9 AA 6A
	sta $A6.b,X		; 95 A6
	tax		; AA
	lsr $AA.b,X		; 56 AA
	tax		; AA
	adc #$AAA9.w		; 69 A9 AA
	txs		; 9A
	phy		; 5A
	ror A		; 6A
	lda #$A5E9.w		; A9 E9 A5
	phy		; 5A
	phy		; 5A
	tsx		; BA
	lda #$9595.w		; A9 95 95
	ldx $5596.w		; AE 96 55
	lda #$9AAA.w		; A9 AA 9A
	tsx		; BA
	tax		; AA
	tax		; AA
	plb		; AB
	tax		; AA
	lda $AABFAA.l		; AF AA BF AA
	lda #$96E6.w		; A9 E6 96
	ldx $EB.b		; A6 EB
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
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
	rti		; 40

	brk $A0.b		; 00 A0
	cop $00.b		; 02 00
	eor [$57.b],Y		; 57 57
	eor $44.b,X		; 55 44
	asl $0301.w		; 0E 01 03
	ora ($48.b,X)		; 01 48
	asl $0301.w		; 0E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	and $57.b,X		; 35 57
	ora $60.b,S		; 03 60
	asl $0301.w		; 0E 01 03
	ora ($07.b,X)		; 01 07
	ora ($65.b,X)		; 01 65
	asl $0E22.w		; 0E 22 0E
	ora ($03.b,X)		; 01 03
	ora ($21.b,X)		; 01 21
	asl $5700.w		; 0E 00 57
	eor [$55.b],Y		; 57 55
	mvn $01,$0E		; 54 0E 01
	ora $01.b,S		; 03 01
	cli		; 58
	asl $0301.w		; 0E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	and $57.b,X		; 35 57
	ora $70.b,S		; 03 70
	asl $0301.w		; 0E 01 03
	ora ($07.b,X)		; 01 07
	ora ($75.b,X)		; 01 75
	asl $0E32.w		; 0E 32 0E
	ora ($03.b,X)		; 01 03
	ora ($31.b,X)		; 01 31
	asl $9563.w		; 0E 63 95
	and [$40.b]		; 27 40
	ora ($10.b,X)		; 01 10
	php		; 08
	ora $01.b,S		; 03 01
	ora [$05.b]		; 07 05
	php		; 08
	ora $10.b		; 05 10
	ora $04.b,S		; 03 04
	ora ($77.b,X)		; 01 77
	eor $5557.w,X		; 5D 57 55
	adc $867914.l,X		; 7F 14 79 86
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	tsb $0107.w		; 0C 07 01
	stx $1C.b		; 86 1C
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($73.b,X)		; 01 73
	cmp $37.b,X		; D5 37
	bvc   1.b		; 50 01
	bpl   9.b		; 10 09
	php		; 08
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $0D08.w		; 0D 08 0D
	bpl   3.b		; 10 03
	php		; 08
	tsb $09.b		; 04 09
	ora $575777.l,X		; 1F 77 57 57
	eor $8E.b,X		; 55 8E
	trb $88.b		; 14 88
	bit #$1F04.w		; 89 04 1F
	ora ($0C.b,X)		; 01 0C
	ora $01.b,S		; 03 01
	ora [$95.b]		; 07 95
	trb $0103.w		; 1C 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$73.b]		; 07 73
	cmp $5F.b,X		; D5 5F
	eor $01.b,X		; 55 01
	bpl  16.b		; 10 10
	php		; 08
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	trb $08.b		; 14 08
	asl $10.b,X		; 16 10
	ora ($04.b,X)		; 01 04
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	sbc $555755.l,X		; FF 55 57 55
	asl $14.b		; 06 14
	txy		; 9B
	trb $1803.w		; 1C 03 18
	ora ($0C.b,X)		; 01 0C
	and $010301.l,X		; 3F 01 03 01
	ldy $1C.b		; A4 1C
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($73.b,X)		; 01 73
	cmp $5F.b,X		; D5 5F
	eor $01.b,X		; 55 01
	bpl  31.b		; 10 1F
	php		; 08
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora ($08.b,X)		; 01 08
	bit $10.b		; 24 10
	jsl $032304.l		; 22 04 23 03
	ora ($0F.b,X)		; 01 0F
	rol $F72F.w		; 2E 2F F7
	eor $57.b,X		; 55 57
	eor $AC.b,X		; 55 AC
	trb $01.b		; 14 01
	ora $1C.b,S		; 03 1C
	ora ($14.b,X)		; 01 14
	ora $010301.l,X		; 1F 01 03 01
	ldy $1C.b,X		; B4 1C
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($73.b,X)		; 01 73
	cmp $0B.b,X		; D5 0B
	mvn $10,$01		; 54 01 10
	pld		; 2B
	php		; 08
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($08.b,X)		; 01 08
	asl $10.b		; 06 10
	tsb $36.b		; 04 36
	ora ($03.b,X)		; 01 03
	adc [$55.b],Y		; 77 55
	eor [$55.b],Y		; 57 55
	ldy $0114.w,X		; BC 14 01
	ora $08.b,S		; 03 08
	ora ($7F.b,X)		; 01 7F
	ora ($03.b,X)		; 01 03
	ora ($C4.b,X)		; 01 C4
	trb $0301.w		; 1C 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($63.b,X)		; 01 63
	cmp $77.b,X		; D5 77
	cmp $01.b,X		; D5 01
	bpl   8.b		; 10 08
	and ($07.b)		; 32 07
	ora ($34.b,X)		; 01 34
	and [$08.b],Y		; 37 08
	and [$10.b],Y		; 37 10
	ora $031801.l		; 0F 01 18 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	trb $5577.w		; 1C 77 55
	eor [$55.b],Y		; 57 55
	cpy $0114.w		; CC 14 01
	ora $08.b,S		; 03 08
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($D4.b,X)		; 01 D4
	trb $0301.w		; 1C 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $73.b		; 00 73
	cmp $011001.l,X		; DF 01 10 01
	bpl  62.b		; 10 3E
	clc		; 18
	adc $031801.l,X		; 7F 01 18 03
	clc		; 18
	ora ($07.b,X)		; 01 07
	trb $5577.w		; 1C 77 55
	eor [$05.b],Y		; 57 05
	jmp.w [$0114]		; DC 14 01
	ora $08.b,S		; 03 08
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora ($E4.b,X)		; 01 E4
	trb $0301.w		; 1C 01 03
	ora ($0F.b,X)		; 01 0F
	and ($03.b,S),Y		; 33 03
	brk $73.b		; 00 73
	cmp $01.b,X		; D5 01
	bpl   1.b		; 10 01
	bpl  68.b		; 10 44
	clc		; 18
	ora $01.b,S		; 03 01
	ora $1C0301.l		; 0F 01 03 1C
	eor $015755.l,X		; 5F 55 57 01
	sbc #$0314.w		; E9 14 03
	php		; 08
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	sbc ($1C.b),Y		; F1 1C
	ora $01.b,S		; 03 01
	ora [$2F.b]		; 07 2F
	ora $00.b,S		; 03 00
	eor $1001D5.l,X		; 5F D5 01 10
	ora ($10.b,X)		; 01 10
	lsr A		; 4A
	clc		; 18
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $571C01.l,X		; 1F 01 1C 57
	eor $17.b,X		; 55 17
	brk $F5.b		; 00 F5
	trb $0103.w		; 1C 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$FD.b]		; 07 FD
	trb $2503.w		; 1C 03 25
	ora $00.b,S		; 03 00
	cmp ($F5.b,S),Y		; D3 F5
	ora ($10.b,X)		; 01 10
	ora ($10.b,X)		; 01 10
	eor ($01.b,S),Y		; 53 01
	clc		; 18
	ora [$01.b]		; 07 01
	ora $18.b,S		; 03 18
	ora ($0C.b,X)		; 01 0C
	eor $000F55.l,X		; 5F 55 0F 00
	sbc $01FF1C.l,X		; FF 1C FF 01
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora [$1D.b]		; 07 1D
	jmp.w [$0301]		; DC 01 03
	brk $53.b		; 00 53
	cmp $58.b,X		; D5 58
	bpl  88.b		; 10 58
	bpl   1.b		; 10 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $0C.b,S		; 03 0C
	eor [$55.b],Y		; 57 55
	ora $00.b,S		; 03 00
	php		; 08
	ora $0301.w,X		; 1D 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($DB.b,X)		; 01 DB
	trb $0003.w		; 1C 03 00
	eor ($D5.b,S),Y		; 53 D5
	eor $105F10.l,X		; 5F 10 5F 10
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	tsb $D557.w		; 0C 57 D5
	ora $00.b,S		; 03 00
	bpl  29.b		; 10 1D
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	cmp $DB01.w		; CD 01 DB
	trb $0003.w		; 1C 03 00
	eor ($75.b,S),Y		; 53 75
	ror $10.b		; 66 10
	ror $10.b		; 66 10
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($0C.b,X)		; 01 0C
	ora [$57.b]		; 07 57
	ora $0003.w		; 0D 03 00
	ora [$1D.b],Y		; 17 1D
	ora $010301.l		; 0F 01 03 01
	cpy #$DB01.w		; C0 01 DB
	trb $0003.w		; 1C 03 00
	eor ($75.b,S),Y		; 53 75
	adc $6D10.w		; 6D 10 6D
	bpl   3.b		; 10 03
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	tsb $5701.w		; 0C 01 57
	ora $0003.w		; 0D 03 00
	trb $011D.w		; 1C 1D 01
	ora $01.b,S		; 03 01
	and $DB01FB.l,X		; 3F FB 01 DB
	trb $0003.w		; 1C 03 00
	eor $75.b,S		; 43 75
	stz $10.b,X		; 74 10
	stz $10.b,X		; 74 10
	ora ($1E.b,X)		; 01 1E
	ora $0C01.w,X		; 1D 01 0C
	ora $030357.l		; 0F 57 03 03
	brk $21.b		; 00 21
	ora $0103.w,X		; 1D 03 01
	ora [$FF.b]		; 07 FF
	ora ($DB.b,X)		; 01 DB
	trb $0003.w		; 1C 03 00
	eor ($75.b,S),Y		; 53 75
	adc $7910.w,Y		; 79 10 79
	bpl   3.b		; 10 03
	ora ($10.b),Y		; 11 10
	ora [$01.b]		; 07 01
	tsb $5703.w		; 0C 03 57
	ora $03.b,S		; 03 03
	brk $25.b		; 00 25
	ora $0103.w,X		; 1D 03 01
	ora $DB01F3.l		; 0F F3 01 DB
	trb $AA00.w		; 1C 00 AA
	ldy #$AAAA.w		; A0 AA AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	stx $35.b,Y		; 96 35
	sta $7D4A77.l,X		; 9F 77 4A 7D
	lda $1079.w		; AD 79 10
	ply		; 7A
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
	lsr $10.b		; 46 10
	rti		; 40

	brk $00.b		; 00 00
	asl $1800.w		; 0E 00 18
	ora $3E3F.w,Y		; 19 3F 3E
	eor $7E916B.l,X		; 5F 6B 91 7E
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $20C2.w,X		; 7E C2 20
	rti		; 40

	and ($40.b),Y		; 31 40
	and ($16.b)		; 32 16
	brk $9F.b		; 00 9F
	jsr $7BDE.w		; 20 DE 7B
	brk $00.b		; 00 00
	cop $14.b		; 02 14
	ora $5A5F52.l,X		; 1F 52 5F 5A
	sta $6ADF62.l,X		; 9F 62 DF 6A
	ora $7B5F73.l,X		; 1F 73 5F 7B
	sbc $5BFB7F.l,X		; FF 7F FB 5B
	cmp [$4B.b],Y		; D7 4B
	lda $47.b,X		; B5 47
	trb $1D00.w		; 1C 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	brk $C2.b		; 00 C2
	jsr $30C5.w		; 20 C5 30
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $7E91.w,X		; 7E 91 7E
	lda ($7E.b)		; B2 7E
	cmp ($7E.b,S),Y		; D3 7E
	pea $157E.w		; F4 7E 15
	adc $577F36.l,X		; 7F 36 7F 57
	adc $DE7F98.l,X		; 7F 98 7F DE
	tda		; 7B
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	asl $1800.w		; 0E 00 18
	ora $3E3F.w,Y		; 19 3F 3E
	eor $30C56B.l,X		; 5F 6B C5 30
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $20C2.w,X		; 7E C2 20
	rti		; 40

	and ($40.b),Y		; 31 40
	and ($16.b)		; 32 16
	brk $9F.b		; 00 9F
	jsr $7BDE.w		; 20 DE 7B
	bpl  33.b		; 10 21
	lda ($7E.b)		; B2 7E
	sbc $7E.b,X		; F5 7E
	cli		; 58
	adc $DD7F9A.l,X		; 7F 9A 7F DD
	adc $917FFE.l,X		; 7F FE 7F 91
	ror $3EBA.w,X		; 7E BA 3E
	phx		; DA
	lsr $FB.b		; 46 FB
	lsr $571B.w		; 4E 1B 57
	jmp $677C5F.l		; 5C 5F 7C 67
	sta $DE6F.w,X		; 9D 6F DE
	tda		; 7B
	php		; 08
	jsl $0020C2.l		; 22 C2 20 00
	brk $23.b		; 00 23
	trb $25.b		; 14 25
	trb $2847.w		; 1C 47 28
	pha		; 48
	bmi 106.b		; 30 6A
	sec		; 38
	phb		; 8B
	rti		; 40

	sty $AC44.w		; 8C 44 AC
	pha		; 48
	cmp $ED4C.w		; CD 4C ED
	mvn $58,$EE		; 54 EE 58
	ora $7FFF61.l		; 0F 61 FF 7F
	ora ($40.b),Y		; 11 40
	brk $9D.b		; 00 9D
	brk $55.b		; 00 55
	eor $55.b,X		; 55 55
	eor $02.b,X		; 55 02
	ora $06.b,S		; 03 06
	ora [$0A.b]		; 07 0A
	phd		; 0B
	asl $120F.w		; 0E 0F 12
	ora ($16.b,S),Y		; 13 16
	ora [$1A.b],Y		; 17 1A
	tas		; 1B
	asl $551F.w,X		; 1E 1F 55
	eor $55.b,X		; 55 55
	ora $22.b		; 05 22
	and $26.b,S		; 23 26
	and [$2A.b]		; 27 2A
	pld		; 2B
	rol $322F.w		; 2E 2F 32
	and ($36.b,S),Y		; 33 36
	and [$3A.b],Y		; 37 3A
	tsa		; 3B
	eor $55.b,X		; 55 55
	eor $55.b,X		; 55 55
	tsb $05.b		; 04 05
	php		; 08
	ora #$0D0C.w		; 09 0C 0D
	bpl  17.b		; 10 11
	trb $15.b		; 14 15
	clc		; 18
	ora $1D1C.w,Y		; 19 1C 1D
	jsr $5521.w		; 20 21 55
	eor $55.b,X		; 55 55
	ora $24.b		; 05 24
	and $28.b		; 25 28
	and #$2D2C.w		; 29 2C 2D
	bmi  49.b		; 30 31
	bit $35.b,X		; 34 35
	sec		; 38
	and $3D3C.w,Y		; 39 3C 3D
	eor $55.b,X		; 55 55
	eor $55.b,X		; 55 55
	rol $423F.w,X		; 3E 3F 42
	eor $46.b,S		; 43 46
	eor [$4A.b]		; 47 4A
	phk		; 4B
	lsr $524F.w		; 4E 4F 52
	eor ($56.b,S),Y		; 53 56
	eor [$5A.b],Y		; 57 5A
	tad		; 5B
	eor $55.b,X		; 55 55
	eor $05.b,X		; 55 05
	lsr $625F.w,X		; 5E 5F 62
	adc $66.b,S		; 63 66
	adc [$6A.b]		; 67 6A
	rtl		; 6B

	ror $726F.w		; 6E 6F 72
	adc ($76.b,S),Y		; 73 76
	adc [$55.b],Y		; 77 55
	eor $55.b,X		; 55 55
	eor $40.b,X		; 55 40
	eor ($44.b,X)		; 41 44
	eor $48.b		; 45 48
	eor #$4D4C.w		; 49 4C 4D
	bvc  81.b		; 50 51
	mvn $58,$55		; 54 55 58
	eor $5D5C.w,Y		; 59 5C 5D
	eor $55.b,X		; 55 55
	eor $05.b,X		; 55 05
	rts		; 60

	adc ($64.b,X)		; 61 64
	adc $68.b		; 65 68
	adc #$6D6C.w		; 69 6C 6D
	bvs 113.b		; 70 71
	stz $75.b,X		; 74 75
	sei		; 78
	adc $5555.w,Y		; 79 55 55
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	pla		; 68
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora #$0000.w		; 09 00 00
	ora $01.b,S		; 03 01
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	sbc $007FFF.l,X		; FF FF 7F 00
	bit #$0000.w		; 89 00 00
	sbc $03FFFF.l,X		; FF FF FF 03
	bit #$0000.w		; 89 00 00
	ora $01.b,S		; 03 01
	jsr ($FFFE.w,X)		; FC FE FF
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	and $03071F.l,X		; 3F 1F 07 03
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	clc		; 18
	ora $89.b,S		; 03 89
	brk $00.b		; 00 00
	bit $C318.w,X		; 3C 18 C3
	sbc [$FF.b]		; E7 FF
	ora $80.b,S		; 03 80
	brk $00.b		; 00 00
	bit $1818.w,X		; 3C 18 18
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	ldy $AA.b		; A4 AA
	ror A		; 6A
	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
	brk $FD.b		; 00 FD
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $56.b		; 00 56
	php		; 08
	rol $01.b		; 26 01
	ora $0008D7.l		; 0F D7 08 00
	brk $29.b		; 00 29
	php		; 08
	ora $01.b,S		; 03 01
	pld		; 2B
	rti		; 40

	pha		; 48
	bvs  85.b		; 70 55
	eor [$55.b],Y		; 57 55
	dec A		; 3A
	php		; 08
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($40.b,X)		; 01 40
	php		; 08
	ora ($10.b,X)		; 01 10
	ora $61.b,S		; 03 61
	ora [$01.b]		; 07 01
	ora $D7.b,S		; 03 D7
	eor $57.b,X		; 55 57
	and $37.b,X		; 35 37
	php		; 08
	ora $400A01.l		; 0F 01 0A 40
	adc ($03.b,X)		; 61 03
	bpl   1.b		; 10 01
	and $030148.l,X		; 3F 48 01 03
	ora ($07.b,X)		; 01 07
	ora ($3A.b,X)		; 01 3A
	pha		; 48
	bvs  85.b		; 70 55
	sbc [$55.b],Y		; F7 55
	eor #$0308.w		; 49 08 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor $501F08.l		; 4F 08 1F 50
	php		; 08
	eor ($08.b,S),Y		; 53 08
	ora ($01.b),Y		; 11 01
	ora [$01.b]		; 07 01
	cmp [$7D.b],Y		; D7 7D
	eor [$35.b],Y		; 57 35
	lsr $08.b		; 46 08
	ora ($0F.b,X)		; 01 0F
	asl A		; 0A
	rti		; 40

	ora ($53.b),Y		; 11 53
	pha		; 48
	bvc  72.b		; 50 48
	ora $03484E.l,X		; 1F 4E 48 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor #$0048.w		; 49 48 00
	brk $47.b		; 00 47
	eor $06.b,X		; 55 06
	trb $19.b		; 14 19
	bpl   7.b		; 10 07
	asl $05.b		; 06 05
	tsb $7F.b		; 04 7F
	eor ($00.b),Y		; 51 00
	brk $22.b		; 00 22
	trb $76.b		; 14 76
	asl $56.b		; 06 56
	asl $0A.b		; 06 0A
	rol A		; 2A
	and $000006.l		; 2F 06 00 00
	eor [$55.b],Y		; 57 55
	ora $14.b,X		; 15 14
	and $3002.w,Y		; 39 02 30
	ora #$070A.w		; 09 0A 07
	tsb $7F.b		; 04 7F
	eor ($00.b),Y		; 51 00
	brk $1B.b		; 00 1B
	trb $B8.b		; 14 B8
	ora $19B2.w,Y		; 19 B2 19
	asl $0C.b		; 06 0C
	ora [$06.b]		; 07 06
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	phx		; DA
	ora ($01.b)		; 12 01
	adc $57D7.w		; 6D D7 57
	and [$00.b],Y		; 37 00
	lda [$12.b],Y		; B7 12
	sbc $01.b,S		; E3 01
	eor $12.b,X		; 55 12
	lsr $0112.w,X		; 5E 12 01
	adc [$01.b]		; 67 01
	bvc  18.b		; 50 12
	ora ($51.b,X)		; 01 51
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	eor [$2A.b],Y		; 57 2A
	asl $6901.w		; 0E 01 69
	ora ($57.b,X)		; 01 57
	and $77.b,X		; 35 77
	ora $A2.b,S		; 03 A2
	ora $CB01.w		; 0D 01 CB
	ora ($8D.b,X)		; 01 8D
	ora ($E5.b,X)		; 01 E5
	ora $0E80.w		; 0D 80 0E
	ora ($4B.b,X)		; 01 4B
	trb $CB01.w		; 1C 01 CB
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	cpy #$0501.w		; C0 01 05
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($45.b,X)		; 01 45
	brk $00.b		; 00 00
	ora [$40.b],Y		; 17 40
	cop $05.b		; 02 05
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	bvs   0.b		; 70 00
	brk $05.b		; 00 05
	eor $01.b		; 45 01
	rti		; 40

	ora [$40.b]		; 07 40
	ora ($00.b,X)		; 01 00
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	ora $06.b		; 05 06
	eor $00.b		; 45 00
	bcs   0.b		; B0 00
	brk $06.b		; 00 06
	ora $40.b		; 05 40
	brk $00.b		; 00 00
	ora $050600.l		; 0F 00 06 05
	asl $45.b		; 06 45
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	asl $05.b		; 06 05
	rti		; 40

	brk $00.b		; 00 00
	ora $050600.l		; 0F 00 06 05
	asl $45.b		; 06 45
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	asl $05.b		; 06 05
	rti		; 40

	brk $00.b		; 00 00
	ora $050600.l		; 0F 00 06 05
	asl $45.b		; 06 45
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	asl $05.b		; 06 05
	rti		; 40

	brk $3C.b		; 00 3C
	tas		; 1B
	ora $0507.w		; 0D 07 05
	ora $40.b,S		; 03 40
	ora $05.b		; 05 05
	rti		; 40

	ora ($03.b,X)		; 01 03
	ora [$45.b]		; 07 45
	cpy #$FBB3.w		; C0 B3 FB
	brk $07.b		; 00 07
	ora $03.b		; 05 03
	rti		; 40

	ora ($40.b,X)		; 01 40
	rti		; 40

	tsb $45.b		; 04 45
	rti		; 40

	ora $40.b,S		; 03 40
	ora [$45.b]		; 07 45
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	php		; 08
	eor $08.b		; 45 08
	eor $C0.b		; 45 C0
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	eor $08.b		; 45 08
	eor $00.b		; 45 00
	tsb $0300.w		; 0C 00 03
	php		; 08
	eor $08.b		; 45 08
	eor $C0.b		; 45 C0
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	eor $08.b		; 45 08
	eor $00.b		; 45 00
	tsb $0300.w		; 0C 00 03
	php		; 08
	eor $08.b		; 45 08
	eor $C0.b		; 45 C0
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	eor $08.b		; 45 08
	eor $00.b		; 45 00
	tsb $0300.w		; 0C 00 03
	php		; 08
	eor $08.b		; 45 08
	eor $C0.b		; 45 C0
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	eor $08.b		; 45 08
	eor $C0.b		; 45 C0
	eor [$F0.b],Y		; 57 F0
	cmp $07.b,X		; D5 07
	ora $03.b		; 05 03
	rti		; 40

	ora $030D.w		; 0D 0D 03
	ora [$05.b]		; 07 05
	ora $40.b,S		; 03 40
	ora $030D.w		; 0D 0D 03
	ora [$45.b]		; 07 45
	jmp ($5F35.w,X)		; 7C 35 5F
	ora $0507.w		; 0D 07 05
	ora $40.b,S		; 03 40
	ora $030D.w		; 0D 0D 03
	ora [$45.b]		; 07 45
	ora [$05.b]		; 07 05
	ora $40.b,S		; 03 40
	ora $030D.w		; 0D 0D 03
	ora [$45.b]		; 07 45
	cpy #$30C0.w		; C0 C0 30
	bmi   8.b		; 30 08
	ora $08.b		; 05 08
	ora $08.b		; 05 08
	ora $08.b		; 05 08
	ora $0C.b		; 05 0C
	tsb $0303.w		; 0C 03 03
	php		; 08
	ora $08.b		; 05 08
	ora $08.b		; 05 08
	ora $08.b		; 05 08
	ora $C0.b		; 05 C0
	cpy #$3030.w		; C0 30 30
	asl A		; 0A
	ora $0A.b		; 05 0A
	ora $0A.b		; 05 0A
	ora $0A.b		; 05 0A
	ora $0C.b		; 05 0C
	tsb $0303.w		; 0C 03 03
	asl A		; 0A
	ora $0A.b		; 05 0A
	ora $0A.b		; 05 0A
	ora $0A.b		; 05 0A
	ora $A4.b		; 05 A4
	tax		; AA
	tax		; AA
	tax		; AA
	bvc -102.b		; 50 9A
	sta $55A9.w,Y		; 99 A9 55
	eor $5A.b,X		; 55 5A
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
	brk $F5.b		; 00 F5
	tsb $03.b		; 04 03
	eor $57.b,X		; 55 57
	ora #$1854.w		; 09 54 18
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	cli		; 58
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	rti		; 40

	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $01,$18		; 54 18 01
	ora $01.b,S		; 03 01
	ora $0F5858.l		; 0F 58 58 0F
	ora ($03.b,X)		; 01 03
	ora ($40.b,X)		; 01 40
	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$64.b]		; 07 64
	cli		; 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$64.b]		; 07 64
	cli		; 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $39,$18		; 54 18 39
	ora $01.b,S		; 03 01
	ora $1F5870.l,X		; 1F 70 58 1F
	ora ($03.b,X)		; 01 03
	and $0340.w,Y		; 39 40 03
	eor $57.b,X		; 55 57
	ora #$1854.w		; 09 54 18
	and $0103.w,Y		; 39 03 01
	ora $1F5870.l,X		; 1F 70 58 1F
	ora ($03.b,X)		; 01 03
	and $0340.w,Y		; 39 40 03
	eor $57.b,X		; 55 57
	ora #$1854.w		; 09 54 18
	and $0103.w		; 2D 03 01
	ora [$7C.b]		; 07 7C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	rti		; 40

	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $2D,$18		; 54 18 2D
	ora $01.b,S		; 03 01
	ora [$7C.b]		; 07 7C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	rti		; 40

	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	eor $0318.w,Y		; 59 18 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	rts		; 60

	cli		; 58
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $57.b,S		; 03 57
	eor $57.b,X		; 55 57
	eor $59.b,X		; 55 59
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $3F5860.l,X		; 3F 60 58 3F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc $18.b		; 65 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $65.b,X		; 55 65
	clc		; 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $71.b,X		; 55 71
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0F5878.l		; 0F 78 58 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc ($18.b),Y		; 71 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0F5878.l		; 0F 78 58 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc $0318.w,X		; 7D 18 03
	ora ($FF.b,X)		; 01 FF
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	sty $58.b		; 84 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $7D.b,X		; 55 7D
	clc		; 18
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$84.b]		; 07 84
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $7D.b,X		; 55 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$84.b]		; 07 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $7D.b,X		; 55 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$84.b]		; 07 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $71.b,X		; 55 71
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0FD878.l		; 0F 78 D8 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc ($98.b),Y		; 71 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0FD878.l		; 0F 78 D8 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc $98.b		; 65 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $65.b,X		; 55 65
	tya		; 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $59.b,X		; 55 59
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $3FD860.l,X		; 3F 60 D8 3F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	eor $0398.w,Y		; 59 98 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	rts		; 60

	cld		; D8
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $03.b,S		; 03 03
	eor [$57.b],Y		; 57 57
	ora $54.b,S		; 03 54
	clc		; 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	jmp ($07D8.w,X)		; 7C D8 07
	ora ($03.b,X)		; 01 03
	and $03C0.w		; 2D C0 03
	eor [$57.b],Y		; 57 57
	ora $54.b,S		; 03 54
	clc		; 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	jmp ($07D8.w,X)		; 7C D8 07
	ora ($03.b,X)		; 01 03
	and $03C0.w		; 2D C0 03
	eor [$57.b],Y		; 57 57
	ora $54.b,S		; 03 54
	clc		; 18
	and $0380.w,Y		; 39 80 03
	ora ($1F.b,X)		; 01 1F
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $39,$18		; 54 18 39
	bra   3.b		; 80 03
	ora ($1F.b,X)		; 01 1F
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $35,$18		; 54 18 35
	bra   3.b		; 80 03
	ora ($07.b,X)		; 01 07
	stz $D8.b		; 64 D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $35,$18		; 54 18 35
	bra   3.b		; 80 03
	ora ($07.b,X)		; 01 07
	stz $D8.b		; 64 D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $01,$18		; 54 18 01
	bra   3.b		; 80 03
	ora ($0F.b,X)		; 01 0F
	cli		; 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $01,$18		; 54 18 01
	bra   3.b		; 80 03
	ora ($0F.b,X)		; 01 0F
	cli		; 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$0957.w		; C0 57 09
	ora $55.b,S		; 03 55
	cli		; 58
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	rti		; 40

	mvn $01,$18		; 54 18 01
	ora $01.b,S		; 03 01
	ora $030957.l		; 0F 57 09 03
	eor $58.b,X		; 55 58
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	rti		; 40

	mvn $01,$18		; 54 18 01
	ora $01.b,S		; 03 01
	ora $030957.l		; 0F 57 09 03
	eor $64.b,X		; 55 64
	cli		; 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora #$5503.w		; 09 03 55
	stz $58.b		; 64 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora #$5503.w		; 09 03 55
	bvs  88.b		; 70 58
	ora $390301.l,X		; 1F 01 03 39
	rti		; 40

	mvn $39,$18		; 54 18 39
	ora $01.b,S		; 03 01
	ora $030957.l,X		; 1F 57 09 03
	eor $70.b,X		; 55 70
	cli		; 58
	ora $390301.l,X		; 1F 01 03 39
	rti		; 40

	mvn $39,$18		; 54 18 39
	ora $01.b,S		; 03 01
	ora $030957.l,X		; 1F 57 09 03
	eor $7C.b,X		; 55 7C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	rti		; 40

	mvn $2D,$18		; 54 18 2D
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora #$5503.w		; 09 03 55
	jmp ($0758.w,X)		; 7C 58 07
	ora ($03.b,X)		; 01 03
	and $5440.w		; 2D 40 54
	clc		; 18
	and $0103.w		; 2D 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $60.b,X		; 55 60
	cli		; 58
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $575557.l,X		; 3F 57 55 57
	eor $60.b,X		; 55 60
	cli		; 58
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $575557.l,X		; 3F 57 55 57
	eor $6C.b,X		; 55 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	clc		; 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $6C.b,X		; 55 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	clc		; 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $78.b,X		; 55 78
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $78.b,X		; 55 78
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $84.b,X		; 55 84
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	clc		; 18
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $84.b,X		; 55 84
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	clc		; 18
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $84.b,X		; 55 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $84.b,X		; 55 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $78.b,X		; 55 78
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $78.b,X		; 55 78
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $6C.b,X		; 55 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	tya		; 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $6C.b,X		; 55 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	tya		; 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $60.b,X		; 55 60
	cld		; D8
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $575557.l,X		; 3F 57 55 57
	eor $60.b,X		; 55 60
	cld		; D8
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $030357.l,X		; 3F 57 03 03
	eor [$7C.b],Y		; 57 7C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	cpy #$1854.w		; C0 54 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	jmp ($07D8.w,X)		; 7C D8 07
	ora ($03.b,X)		; 01 03
	and $54C0.w		; 2D C0 54
	clc		; 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$1854.w		; C0 54 18
	and $0380.w,Y		; 39 80 03
	ora ($1F.b,X)		; 01 1F
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$1854.w		; C0 54 18
	and $0380.w,Y		; 39 80 03
	ora ($1F.b,X)		; 01 1F
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	stz $D8.b		; 64 D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$1854.w		; C0 54 18
	and $80.b,X		; 35 80
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora $03.b,S		; 03 03
	eor [$64.b],Y		; 57 64
	cld		; D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$1854.w		; C0 54 18
	and $80.b,X		; 35 80
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora $03.b,S		; 03 03
	eor [$58.b],Y		; 57 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$1854.w		; C0 54 18
	ora ($80.b,X)		; 01 80
	ora $01.b,S		; 03 01
	ora $030357.l		; 0F 57 03 03
	eor [$58.b],Y		; 57 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$1854.w		; C0 54 18
	ora ($80.b,X)		; 01 80
	ora $01.b,S		; 03 01
	ora $AAAAAA.l		; 0F AA AA AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $85.b		; 00 85
	jmp $AD7FFF.l		; 5C FF 7F AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($80.b),Y		; 11 80
	brk $79.b		; 00 79
	asl $00.b		; 06 00
	brk $38.b		; 00 38
	stz $3030.w,X		; 9E 30 30
	pha		; 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra  32.b		; 80 20
	dey		; 88
	clv		; B8
	inc $0101.w,X		; FE 01 01
	ror $FCFC.w,X		; 7E FC FC
	inc $FCFC.w,X		; FE FC FC
	jsr ($0CFE.w,X)		; FC FE 0C
	inc $1E0C.w,X		; FE 0C 1E
	brk $80.b		; 00 80
	sec		; 38
	ora $1838FC.l		; 0F FC 38 18
	tsb $08.b		; 04 08
	tsb $20.b		; 04 20
	rti		; 40

	cpx #$F88B.w		; E0 8B F8
	phd		; 0B
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ror $0404.w,X		; 7E 04 04
	dex		; CA
	cpy #$C020.w		; C0 20 C0
	jsr $38C0.w		; 20 C0 38
	stz $8800.w,X		; 9E 00 88
	clc		; 18
	clc		; 18
	bit $03.b		; 24 03
	and [$40.b]		; 27 40
	rol $40.b		; 26 40
	bra  63.b		; 80 3F
	sed		; F8
	ldy $8000.w,X		; BC 00 80
	ror $817E.w,X		; 7E 7E 81
	ror $7E81.w,X		; 7E 81 7E
	sta ($78.b,X)		; 81 78
	bra 112.b		; 80 70
	ror $1638.w,X		; 7E 38 16
	sed		; F8
	ldy $1838.w,X		; BC 38 18
	tsb $C3.b		; 04 C3
	ror $18.b		; 66 18
	ror $817E.w,X		; 7E 7E 81
	ror $7E81.w,X		; 7E 81 7E
	sta ($78.b,X)		; 81 78
	bra 112.b		; 80 70
	sed		; F8
	inc $F2F8.w,X		; FE F8 F2
	inc $017E.w,X		; FE 7E 01
	sei		; 78
	bra -80.b		; 80 B0
	rti		; 40

	jsr $1122.w		; 20 22 11
	pha		; 48
	bra  -2.b		; 80 FE
	ror $7801.w,X		; 7E 01 78
	bra 112.b		; 80 70
	cop $01.b		; 02 01
	php		; 08
	bpl   0.b		; 10 00
	brk $2F.b		; 00 2F
	inc $7E34.w,X		; FE 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($2F.b,X)		; 21 2F
	dey		; 88
	phd		; 0B
	sbc $7EFF7E.l,X		; FF 7E FF 7E
	sta ($7E.b,X)		; 81 7E
	ora ($01.b,X)		; 01 01
	tsb $011F.w		; 0C 1F 01
	trb $22.b		; 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	and $D6FB00.l		; 2F 00 FB D6
	jsr ($FCFE.w,X)		; FC FE FC
	cop $FC.b		; 02 FC
	bmi 120.b		; 30 78
	cop $12.b		; 02 12
	ora $8040.w		; 0D 40 80
	php		; 08
	trb $027C.w		; 1C 7C 02
	sbc $280B.w,X		; FD 0B 28
	sbc $FF7EBF.l,X		; FF BF 7E FF
	ror $0101.w,X		; 7E 01 01
	tsb $0E.b		; 04 0E
	tsb $0C1E.w		; 0C 1E 0C
	asl $3C18.w,X		; 1E 18 3C
	sec		; 38
	jsr ($F8F0.w,X)		; FC F0 F8
	cpx #$E0F0.w		; E0 F0 E0
	and $882FFE.l		; 2F FE 2F 88
	inc A		; 1A
	and $020102.l,X		; 3F 02 01 02
	ora ($01.b,X)		; 01 01
	cop $16.b		; 02 16
	jsr $100F.w		; 20 0F 10
	and $403F7F.l,X		; 3F 7F 3F 40
	and $0B8080.l,X		; 3F 80 80 0B
	sbc $06002F.l,X		; FF 2F 00 06
	sta $110A80.l		; 8F 80 0A 11
	bpl -32.b		; 10 E0
	jmp ($7002.w)		; 6C 02 70
	sty $FF7E.w		; 8C 7E FF
	ror $7E81.w,X		; 7E 81 7E
	lda ($FF.b,S),Y		; B3 FF
	ora $FF.b,S		; 03 FF
	ror $FF.b		; 66 FF
	rts		; 60

	bcc  96.b		; 90 60
	asl A		; 0A
	ora ($10.b),Y		; 11 10
	rts		; 60

	stz $82.b		; 64 82
	sei		; 78
	tsb $06.b		; 04 06
	ora $10110A.l		; 0F 0A 11 10
	cpx #$026C.w		; E0 6C 02
	bvs -116.b		; 70 8C
	cmp $CFFFFF.l		; CF FF FF CF
	bit $247E.w,X		; 3C 7E 24
	.db $42, $20		; 42 20
	rti		; 40

	mvp $1A,$82		; 44 82 1A
	ora ($24.b,X)		; 01 24
	clc		; 18
	.db $42, $24		; 42 24
	php		; 08
	trb $2010.w		; 1C 10 20
	tsb $02.b		; 04 02
	plp		; 28
	rti		; 40

	cop $01.b		; 02 01
	mvn $62,$88		; 54 88 62
	trb $38.b		; 14 38
	stz $A8A0.w,X		; 9E A0 A8
	bmi  48.b		; 30 30
	pha		; 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($7E.b,X)		; 01 7E
	sed		; F8
	stz $8088.w		; 9C 88 80
	jsr ($02FC.w,X)		; FC FC 02
	jsr ($FC02.w,X)		; FC 02 FC
	cop $F0.b		; 02 F0
	cpx #$0101.w		; E0 01 01
	jsr ($3258.w,X)		; FC 58 32
	bra -120.b		; 80 88
	inc $F0FC.w,X		; FE FC F0
	cpx #$2214.w		; E0 14 22
	ora ($01.b,X)		; 01 01
	jsr ($A7B8.w,X)		; FC B8 A7
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	pha		; 48
	sty $CC.b		; 84 CC
	cop $CC.b		; 02 CC
	stx $84.b		; 86 84
	sec		; 38
	brk $00.b		; 00 00
	bra 102.b		; 80 66
	ror $99.b		; 66 99
	ror $FE2F.w,X		; 7E 2F FE
	and $7E3488.l		; 2F 88 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($7E.b,X)		; 21 7E
	sbc $7E817E.l,X		; FF 7E 81 7E
	ora ($01.b,X)		; 01 01
	phd		; 0B
	sbc $0C022F.l,X		; FF 2F 02 0C
	ora $221401.l,X		; 1F 01 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	jsr ($FCFE.w,X)		; FC FE FC
	ora $FC.b,S		; 03 FC
	ora ($FF.b,X)		; 01 FF
	lda $18000B.l,X		; BF 0B 00 18
	and $B810.w,X		; 3D 10 B8
	bcs  -8.b		; B0 F8
	beq  -8.b		; F0 F8
	rts		; 60

	beq  48.b		; F0 30
	sei		; 78
	clc		; 18
	bit $FC1C.w,X		; 3C 1C FC
	sbc $E0EFFC.l,X		; FF FC EF E0
	sed		; F8
	plx		; FA
	jsr ($CCFE.w,X)		; FC FE CC
	cop $84.b		; 02 84
	plp		; 28
	mvp $18,$01		; 44 01 18
	and $78.b		; 25 78
	bvs -128.b		; 70 80
	rts		; 60

	bra  64.b		; 80 40
	cpy $EC.b		; C4 EC
	cop $FC.b		; 02 FC
	cop $B3.b		; 02 B3
	jsr ($002F.w,X)		; FC 2F 00
	ror $FF.b		; 66 FF
	rts		; 60

	bcc  96.b		; 90 60
	asl A		; 0A
	sbc ($74.b),Y		; F1 74
	cop $78.b		; 02 78
	sty $7E.b		; 84 7E
	sbc $7E817E.l,X		; FF 7E 81 7E
	sec		; 38
	stz $A8A0.w,X		; 9E A0 A8
	bmi  48.b		; 30 30
	pha		; 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($7E.b,X)		; 01 7E
	sed		; F8
	stz $8088.w		; 9C 88 80
	jsr ($02FC.w,X)		; FC FC 02
	jsr ($FC02.w,X)		; FC 02 FC
	cop $F0.b		; 02 F0
	cpx #$0101.w		; E0 01 01
	jsr ($3258.w,X)		; FC 58 32
	rts		; 60

	phb		; 8B
	inc $F0FC.w,X		; FE FC F0
	cpx #$2214.w		; E0 14 22
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	ora ($FC.b,X)		; 01 FC
	inc $00F9.w		; EE F9 00
	brk $14.b		; 00 14
	trb $2A.b		; 14 2A
	cpy #$02FC.w		; C0 FC 02
	beq -64.b		; F0 C0
	php		; 08
	tsb $20.b		; 04 20
	rti		; 40

	sec		; 38
	tsb $3CF8.w		; 0C F8 3C
	sec		; 38
	sec		; 38
	mvp $42,$24		; 44 24 42
	and $23.b,S		; 23 23
	mvn $08,$04		; 54 04 08
	rts		; 60

	bcc   4.b		; 90 04
	php		; 08
	sed		; F8
	xba		; EB
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	jsr ($FE1C.w,X)		; FC 1C FE
	trb $9CBE.w		; 1C BE 9C
	bra -128.b		; 80 80
	sed		; F8
	and $882FFE.l		; 2F FE 2F 88
	bit $7E.b,X		; 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($7E.b,X)		; 21 7E
	sbc $7E817E.l,X		; FF 7E 81 7E
	ora ($01.b,X)		; 01 01
	phd		; 0B
	sbc $0C022F.l,X		; FF 2F 02 0C
	ora $221401.l,X		; 1F 01 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	jsr ($FCFE.w,X)		; FC FE FC
	ora $FC.b,S		; 03 FC
	ora ($7F.b,X)		; 01 7F
	sbc $184CAF.l,X		; FF AF 4C 18
	and $8508.w,X		; 3D 08 85
	ldy #$4040.w		; A0 40 40
	bcc   8.b		; 90 08
	bvc -120.b		; 50 88
	plp		; 28
	mvp $20,$18		; 44 18 20
	jsr ($FCFE.w,X)		; FC FE FC
	cop $FC.b		; 02 FC
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	adc $0000CF.l,X		; 7F CF 00 00
	jsr $4070.w		; 20 70 40
	bra  16.b		; 80 10
	php		; 08
	ldy #$0408.w		; A0 08 04
	bvc  32.b		; 50 20
	dey		; 88
	bvc -45.b		; 50 D3
	beq  59.b		; F0 3B
	sbc ($0E.b,S),Y		; F3 0E
	ora $100801.l,X		; 1F 01 08 10
	tsb $08.b		; 04 08
	ora $04.b,S		; 03 04
	bra -61.b		; 80 C3
	tsb $07.b		; 04 07
	php		; 08
	bra  64.b		; 80 40
	tsb $08.b		; 04 08
	ora $84.b,S		; 03 84
	and $0000F8.l		; 2F F8 00 00
	sei		; 78
	jsr ($0264.w,X)		; FC 64 02
	rti		; 40

	rti		; 40

	cpx $02.b		; E4 02
	sed		; F8
	tsb $38.b		; 04 38
	stz $A8A0.w,X		; 9E A0 A8
	bmi  48.b		; 30 30
	pha		; 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($7E.b,X)		; 01 7E
	sed		; F8
	stz $8A00.w		; 9C 00 8A
	jsr ($02FC.w,X)		; FC FC 02
	jsr ($FC02.w,X)		; FC 02 FC
	cop $F0.b		; 02 F0
	cpx #$0101.w		; E0 01 01
	jsr ($ADB8.w,X)		; FC B8 AD
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	ora $E0.b,X		; 15 E0
	inc $10E2.w		; EE E2 10
	cpx #$FEE0.w		; E0 E0 FE
	xba		; EB
	sei		; 78
	rti		; 40

	asl $110E.w		; 0E 0E 11
	tsb $60.b		; 04 60
	stz $80.b		; 64 80
	asl $0E01.w		; 0E 01 0E
	asl $011E.w		; 0E 1E 01
	ror $817E.w,X		; 7E 7E 81
	clc		; 18
	clc		; 18
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ror $FE2F.w,X		; 7E 2F FE
	and $7E3488.l		; 2F 88 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($7E.b,X)		; 21 7E
	sbc $7E817E.l,X		; FF 7E 81 7E
	ora ($01.b,X)		; 01 01
	phd		; 0B
	sbc $0CA02F.l,X		; FF 2F A0 0C
	ora $221401.l,X		; 1F 01 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	jsr ($FCFF.w,X)		; FC FF FC
	ora $FC.b,S		; 03 FC
	ora ($01.b,X)		; 01 01
	and $FAF8FC.l		; 2F FC F8 FA
	inc $FF.b		; E6 FF
	cpx #$E010.w		; E0 10 E0
	php		; 08
	beq -14.b		; F0 F2
	ora ($FC.b,X)		; 01 FC
	cop $3C.b		; 02 3C
	sec		; 38
	rti		; 40

	bmi  64.b		; 30 40
	jsr $7662.w		; 20 62 76
	sta ($7E.b,X)		; 81 7E
	sta ($0B.b,X)		; 81 0B
	sed		; F8
	lda ($FF.b,S),Y		; B3 FF
	rts		; 60

	inc $0E0E.w,X		; FE 0E 0E
	lsr $3E81.w,X		; 5E 81 3E
	rti		; 40

	ror $FF.b		; 66 FF
	rts		; 60

	bcc  96.b		; 90 60
	asl A		; 0A
	ora ($10.b),Y		; 11 10
	jsr $4224.w		; 20 24 42
	sec		; 38
	tsb $0B.b		; 04 0B
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	sbc $9E387E.l,X		; FF 7E 38 9E
	ldy #$30A8.w		; A0 A8 30
	bmi  72.b		; 30 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($7E.b,X)		; 01 7E
	sed		; F8
	stz $8800.w		; 9C 00 88
	jsr ($02FC.w,X)		; FC FC 02
	jsr ($FC02.w,X)		; FC 02 FC
	cop $F0.b		; 02 F0
	cpx #$FC01.w		; E0 01 FC
	asl $081F.w,X		; 1E 1F 08
	.db $82, $05, $05		; 82 05 05
	ply		; 7A
	bmi   5.b		; 30 05
	.db $82, $CC, $03		; 82 CC 03
	bmi -128.b		; 30 80
	bra   9.b		; 80 09
	bra -81.b		; 80 AF
	clv		; B8
	and $020101.l		; 2F 01 01 02
	ora ($02.b,X)		; 01 02
	ora ($F8.b,X)		; 01 F8
	bmi  48.b		; 30 30
	pha		; 48
	sty $CC.b		; 84 CC
	cop $CC.b		; 02 CC
	cop $84.b		; 02 84
	sed		; F8
	sbc ($00.b)		; F2 00
	brk $FE.b		; 00 FE
	ror $7801.w,X		; 7E 01 78
	bra 112.b		; 80 70
	cop $01.b		; 02 01
	php		; 08
	bpl  47.b		; 10 2F
	inc $882F.w,X		; FE 2F 88
	bit $7E.b,X		; 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($7E.b,X)		; 21 7E
	sbc $7E817E.l,X		; FF 7E 81 7E
	ora ($01.b,X)		; 01 01
	phd		; 0B
	sbc $0C202F.l,X		; FF 2F 20 0C
	ora $221401.l,X		; 1F 01 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	jsr ($FCFF.w,X)		; FC FF FC
	cop $FD.b		; 02 FD
	ora ($B3.b,X)		; 01 B3
	sbc $CCC97F.l,X		; FF 7F C9 CC
	inc $20C0.w,X		; FE C0 20
	cmp ($14.b,X)		; C1 14
	and $20.b,S		; 23 20
	cpy #$04C8.w		; C0 C8 04
	beq   8.b		; F0 08
	ora #$111F.w		; 09 1F 11
	jsl $C0C528.l		; 22 28 C5 C0
	cpy #$3080.w		; C0 80 30
	pha		; 48
	and $F803A0.l		; 2F A0 03 F8
	sed		; F8
	jsr ($04F8.w,X)		; FC F8 04
	sed		; F8
	ora ($01.b,X)		; 01 01
	bmi 120.b		; 30 78
	bra -48.b		; 80 D0
	php		; 08
	cpx #$FF10.w		; E0 10 FF
	cmp $080000.l		; CF 00 00 08
	trb $2010.w		; 1C 10 20
	tsb $02.b		; 04 02
	plp		; 28
	rti		; 40

	cop $01.b		; 02 01
	mvn $62,$88		; 54 88 62
	trb $38.b		; 14 38
	stz $A8A0.w,X		; 9E A0 A8
	bmi  48.b		; 30 30
	pha		; 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($3E.b,X)		; 01 3E
	sed		; F8
	stz $8A00.w		; 9C 00 8A
	jsr ($02FC.w,X)		; FC FC 02
	jsr ($FC02.w,X)		; FC 02 FC
	cop $F0.b		; 02 F0
	cpx #$0101.w		; E0 01 01
	sbc $EFB8.w,X		; FD B8 EF
	inc $30F7.w		; EE F7 30
	bmi  72.b		; 30 48
	sty $CC.b		; 84 CC
	cop $9C.b		; 02 9C
	cop $0C.b		; 02 0C
	ldy #$0510.w		; A0 10 05
	ora $0A.b		; 05 0A
	bvs 117.b		; 70 75
	.db $82, $40, $83		; 82 40 83
	tsb $02.b		; 04 02
	ora ($02.b,X)		; 01 02
	ora ($B8.b,X)		; 01 B8
	ora $B88280.l		; 0F 80 82 B8
	clc		; 18
	tsb $80.b		; 04 80
	php		; 08
	tsb $20.b		; 04 20
	rti		; 40

	ora ($01.b,X)		; 01 01
	ror $0BF8.w,X		; 7E F8 0B
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	sbc $E0.b		; E5 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	and $882FFE.l		; 2F FE 2F 88
	bit $7E.b,X		; 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($3E.b,X)		; 21 3E
	adc $3E413E.l,X		; 7F 3E 41 3E
	ora ($01.b,X)		; 01 01
	phd		; 0B
	sbc $0CA02F.l,X		; FF 2F A0 0C
	ora $221401.l,X		; 1F 01 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	jsr ($FCFF.w,X)		; FC FF FC
	cop $FD.b		; 02 FD
	ora ($01.b,X)		; 01 01
	lda $F403FC.l,X		; BF FC 03 F4
	cpy #$38F8.w		; C0 F8 38
	tsb $F4.b		; 04 F4
	cop $E0.b		; 02 E0
	trb $E2.b		; 14 E2
	inx		; E8
	tsb $F0.b		; 04 F0
	php		; 08
	stz $FE.b		; 64 FE
	php		; 08
	mvn $38,$82		; 54 82 38
	mvp $D6,$FB		; 44 FB D6
	and $783000.l		; 2F 00 30 78
	cop $12.b		; 02 12
	ora $8040.w		; 0D 40 80
	php		; 08
	trb $027C.w		; 1C 7C 02
	sbc $FF7E.w,X		; FD 7E FF
	ror $7E81.w,X		; 7E 81 7E
	cmp $0000FF.l		; CF FF 00 00
	cop $07.b		; 02 07
	tsb $08.b		; 04 08
	asl A		; 0A
	ora ($10.b),Y		; 11 10
	rts		; 60

	stz $82.b		; 64 82
	php		; 08
	tsb $70.b		; 04 70
	dey		; 88
	sec		; 38
	stz $A8A0.w,X		; 9E A0 A8
	bmi  48.b		; 30 30
	pha		; 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($7E.b,X)		; 01 7E
	clv		; B8
	inc $82E0.w,X		; FE E0 82
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFC.w,X)		; FC FC FC
	inc $FE0C.w,X		; FE 0C FE
	tsb $011E.w		; 0C 1E 01
	ora ($03.b,X)		; 01 03
	ora ($FC.b,X)		; 01 FC
	ror $380B.w,X		; 7E 0B 38
	brk $0E.b		; 00 0E
	asl $0411.w		; 0E 11 04
	cpx #$DEE4.w		; E0 E4 DE
	ora ($86.b,X)		; 01 86
	cli		; 58
	cli		; 58
	ldy $08.b		; A4 08
	bra  56.b		; 80 38
	cpy #$FC01.w		; C0 01 FC
	cpy #$20C0.w		; C0 C0 20
	jsr $2F18.w		; 20 18 2F
	inc $882F.w,X		; FE 2F 88
	bit $7E.b,X		; 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($7E.b,X)		; 21 7E
	sbc $7E817E.l,X		; FF 7E 81 7E
	ora ($01.b,X)		; 01 01
	phd		; 0B
	sbc $0CF82F.l,X		; FF 2F F8 0C
	ora $221401.l,X		; 1F 01 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	jsr ($FCFE.w,X)		; FC FE FC
	cop $FC.b		; 02 FC
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	inc $FD6B.w,X		; FE 6B FD
	bmi 120.b		; 30 78
	ora ($40.b,X)		; 01 40
	bra -112.b		; 80 90
	php		; 08
	cpx #$5811.w		; E0 11 58
	sbc $0201.w,X		; FD 01 02
	tsb $80.b		; 04 80
	tsb $02.b		; 04 02
	pha		; 48
	tsb $90.b		; 04 90
	pla		; 68
	and $40BF80.l		; 2F 80 BF 40
	jsr ($FCFF.w,X)		; FC FF FC
	cop $FC.b		; 02 FC
	ora ($F8.b,X)		; 01 F8
	jsr ($0234.w,X)		; FC 34 02
	tsb $0C12.w		; 0C 12 0C
	cpy #$9E38.w		; C0 38 9E
	ldy #$30A8.w		; A0 A8 30
	bmi  72.b		; 30 48
	asl $4E.b		; 06 4E
	sta ($4C.b,X)		; 81 4C
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($7E.b,X)		; 01 7E
	sed		; F8
	stz $8A00.w		; 9C 00 8A
	jsr ($02FC.w,X)		; FC FC 02
	jsr ($FC02.w,X)		; FC 02 FC
	cop $F0.b		; 02 F0
	cpx #$0101.w		; E0 01 01
	jsr ($F7B8.w,X)		; FC B8 F7
	ror $3089.w,X		; 7E 89 30
	bmi  72.b		; 30 48
	sta $CC.b		; 85 CC
	ora $F0.b,S		; 03 F0
	tsb $E2.b		; 04 E2
	clc		; 18
	bit $07.b		; 24 07
	ora [$08.b]		; 07 08
	cop $F0.b		; 02 F0
	sbc ($EF.b)		; F2 EF
	cmp $01.b,S		; C3 01
	sed		; F8
	sbc $8C0000.l		; EF 00 00 8C
	tsb $1012.w		; 0C 12 10
	rts		; 60

	stz $02.b		; 64 02
	rts		; 60

	bra -126.b		; 80 82
	inc $01.b		; E6 01
	cpx #$F88B.w		; E0 8B F8
	phd		; 0B
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	jsr ($0404.w,X)		; FC 04 04
	dex		; CA
	cpy #$C020.w		; C0 20 C0
	jsr $2FC0.w		; 20 C0 2F
	inc $882F.w,X		; FE 2F 88
	bit $7E.b,X		; 34 7E
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	bit $1E40.w		; 2C 40 1E
	and ($7E.b,X)		; 21 7E
	sbc $7E817E.l,X		; FF 7E 81 7E
	ora ($01.b,X)		; 01 01
	phd		; 0B
	sbc $0C08AF.l,X		; FF AF 08 0C
	ora $221401.l,X		; 1F 01 14 22
	jsr $D8C0.w		; 20 C0 D8
	tsb $E0.b		; 04 E0
	clc		; 18
	jsr ($FCFE.w,X)		; FC FE FC
	cop $FC.b		; 02 FC
	ora ($01.b,X)		; 01 01
	sbc $FC03EB.l,X		; FF EB 03 FC
	bpl  56.b		; 10 38
	plp		; 28
	mvp $82,$4C		; 44 4C 82
	sty $02.b		; 84 02
	cpy #$8004.w		; C0 04 80
	ora ($30.b,X)		; 01 30
	eor #$3C18.w		; 49 18 3C
	jsr $C8C0.w		; 20 C0 C8
	tsb $F0.b		; 04 F0
	php		; 08
	phd		; 0B
	sed		; F8
	plx		; FA
	plx		; FA
	clc		; 18
	inc $40C2.w,X		; FE C2 40
	pla		; 68
	sty $70.b		; 84 70
	dey		; 88
	ora ($3D.b,X)		; 01 3D
	sec		; 38
	rti		; 40

	bmi  64.b		; 30 40
	jsr $7662.w		; 20 62 76
	sta ($7E.b,X)		; 81 7E
	sta ($0B.b,X)		; 81 0B
	plp		; 28
	sbc $FEFCBF.l,X		; FF BF FC FE
	jsr ($0101.w,X)		; FC 01 01
	tsb $0E.b		; 04 0E
	tsb $0C1E.w		; 0C 1E 0C
	asl $3C18.w,X		; 1E 18 3C
	sec		; 38
	jsr ($F8F0.w,X)		; FC F0 F8
	cpx #$E0F0.w		; E0 F0 E0
	ldx $AA.b		; A6 AA
	ror A		; 6A
	tax		; AA
	tax		; AA
	cop $9A.b		; 02 9A
	cop $AA.b		; 02 AA
	clc		; 18
	tax		; AA
	plp		; 28
	tax		; AA
	ora ($AA.b,X)		; 01 AA
	ora ($AA.b,X)		; 01 AA
	cop $AA.b		; 02 AA
	cop $AA.b		; 02 AA
	cop $AA.b		; 02 AA
	cop $A6.b		; 02 A6
	brk $AA.b		; 00 AA
	brk $AA.b		; 00 AA
	cop $AA.b		; 02 AA
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($E5.b,X)		; 01 E5
	ora $B84A61.l,X		; 1F 61 4A B8
	eor $1F.b,S		; 43 1F
	cpx $68.b		; E4 68
	jmp $7418A9.l		; 5C A9 18 74
	lda ($E8.b,S),Y		; B3 E8
	rol $46.b,X		; 36 46
	bvs  78.b		; 70 4E
	sbc $7DFF8D.l,X		; FF 8D FF 7D
	sbc $99BFE9.l,X		; FF E9 BF 99
	sbc $25DFFB.l,X		; FF FB DF 25
	cmp $28BF50.l,X		; DF 50 BF 28
	pei ($BC.b)		; D4 BC
	stx $FF.b		; 86 FF
	lsr $30.b		; 46 30
	bit $9B.b		; 24 9B
	lsr $DD12.w,X		; 5E 12 DD
	sbc [$F8.b]		; E7 F8
	inc A		; 1A
	ora ($D8.b,S),Y		; 13 D8
	sbc $76FFBE.l,X		; FF BE FF 76
	sbc $FFF9.w,Y		; F9 F9 FF
	cmp $EF9FE5.l,X		; DF E5 9F EF
	sbc $525F.w,Y		; F9 5F 52
	sbc $D8F7.w,X		; FD F7 D8
	ora $033AB6.l		; 0F B6 3A 03
	trb $45.b		; 14 45
	bit #$3170.w		; 89 70 31
	stz $548F.w,X		; 9E 8F 54
	wai		; CB
	ora $EFF8.w		; 0D F8 EF
	inc $F9.b		; E6 F9
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	cpy $FB.b		; C4 FB
	cpy #$90FF.w		; C0 FF 90
	sbc $09FB04.l		; EF 04 FB 09
	inc $FA.b,X		; F6 FA
	tsb $04EA.w		; 0C EA 04
	sbc $B94B0D.l,X		; FF 0D 4B B9
	bvc  18.b		; 50 12
	sbc $20.b,S		; E3 20
	and [$44.b],Y		; 37 44
	adc $F70880.l		; 6F 80 08 F7
	brk $FF.b		; 00 FF
	ora $09F2.w		; 0D F2 09
	inc $10.b,X		; F6 10
	sbc $04DF20.l		; EF 20 DF 04
	xce		; FB
	brk $FF.b		; 00 FF
	cmp $017220.l,X		; DF 20 72 01
	sta $25E2.w,Y		; 99 E2 25
	cmp $938C10.l,X		; DF 10 8C 93
	trb $3BE5.w		; 1C E5 3B
	phk		; 4B
	cop $00.b		; 02 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $00FA05.l,X		; 7F 05 FA 00
	sbc $21EF10.l,X		; FF 10 EF 21
	dec $FD02.w,X		; DE 02 FD
	cmp #$6D0E.w		; C9 0E 6D
	sta [$4C.b],Y		; 97 4C
	brk $B5.b		; 00 B5
	cmp $527B.w,Y		; D9 7B 52
	sbc ($A2.b,X)		; E1 A2
	ora $9DDA5C.l,X		; 1F 5C DA 9D
	php		; 08
	sbc [$05.b],Y		; F7 05
	plx		; FA
	brk $FF.b		; 00 FF
	sta ($6E.b),Y		; 91 6E
	eor ($AD.b)		; 52 AD
	ldy #$1C5F.w		; A0 5F 1C
	sbc $98.b,S		; E3 98
	adc [$5F.b]		; 67 5F
	rts		; 60

	eor $CFEE64.l,X		; 5F 64 EE CF
	sep #$84		; E2 84
	eor $8601.w,X		; 5D 01 86
	phd		; 0B
	sta $5E8F14.l		; 8F 14 8F 5E
	rti		; 40

	lda $CEBB44.l,X		; BF 44 BB CE
	and ($80.b),Y		; 31 80
	adc $02FE01.l,X		; 7F 01 FE 02
	sbc $FB04.w,X		; FD 04 FB
	asl $75F1.w		; 0E F1 75
	stx $9A.b		; 86 9A
	trb $AEB0.w		; 1C B0 AE
	ora $E3F3.w		; 0D F3 E3
	asl $35.b		; 06 35
	ldx $5D.b,Y		; B6 5D
	tay		; A8
	ora $0481.w,Y		; 19 81 04
	xce		; FB
	clc		; 18
	sbc [$A0.b]		; E7 A0
	eor $02FC01.l,X		; 5F 01 FC 02
	sbc $CA35.w,Y		; F9 35 CA
	inc A		; 1A
	sbc $06.b		; E5 06
	sed		; F8
	plx		; FA
	bmi -108.b		; 30 94
	pld		; 2B
	rol $C1.b,X		; 36 C1
	phk		; 4B
	sta $FE.b,S		; 83 FE
	pea $6D71.w		; F4 71 6D
	bpl  47.b		; 10 2F
	and ($31.b),Y		; 31 31
	and $00C2.w		; 2D C2 00
	sbc $33D32C.l,X		; FF 2C D3 33
	cpy $011E.w		; CC 1E 01
	lda ($04.b)		; B2 04
	bne  14.b		; D0 0E
	pha		; 48
	stx $19.b		; 86 19
	jsr $ED0D.w		; 20 0D ED
	ora ($D5.b,S),Y		; 13 D5
	pld		; 2B
	adc ($85.b),Y		; 71 85
	lda [$56.b]		; A7 56
	sta [$5C.b]		; 87 5C
	tyx		; BB
	cmp ($C2.b),Y		; D1 C2
	sty $6B.b,X		; 94 6B
	cop $B0.b		; 02 B0
	and $48.b,S		; 23 48
	ora $5882.w		; 0D 82 58
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	cop $FD.b		; 02 FD
	brk $64.b		; 00 64
	lda $12.b		; A5 12
	cmp [$4B.b]		; C7 4B
	stx $F8.b		; 86 F8
	ldy $FF.b,X		; B4 FF
	lda ($64.b)		; B2 64
	tad		; 5B
	.db $62, $2C, $75		; 62 2C 75
	jsr $0278.w		; 20 78 02
	rol A		; 2A
	bpl  99.b		; 10 63
	tya		; 98
	lda ($4E.b),Y		; B1 4E
	eor ($0C.b),Y		; 51 0C
	cpx $1A.b		; E4 1A
	sta ($4A.b),Y		; 91 4A
	dec $4911.w		; CE 11 49
	sbc $E1.b		; E5 E1
	brk $D3.b		; 00 D3
	asl A		; 0A
	lda $53600E.l,X		; BF 0E 60 53
	asl $CB8C.w		; 0E 8C CB
	dec A		; 3A
	asl A		; 0A
	ora ($1A.b,X)		; 01 1A
	bit $9F.b		; 24 9F
	rts		; 60

	and ($D4.b,X)		; 21 D4
	adc ($80.b,S),Y		; 73 80
	pha		; 48
	ldx $42.b		; A6 42
	and ($46.b),Y		; 31 46
	sta ($F6.b),Y		; 91 F6
	ora #$7070.w		; 09 70 70
	ora $A04964.l,X		; 1F 64 49 A0
	tyx		; BB
	cmp $83.b,S		; C3 83
	lda ($20.b,S),Y		; B3 20
	ldx $8371.w,Y		; BE 71 83
	sta $8F1F.w,X		; 9D 1F 8F
	brk $89.b		; 00 89
	ora ($1F.b)		; 12 1F
	cpx #$209D.w		; E0 9D 20
	cop $6C.b		; 02 6C
	ora ($48.b,X)		; 01 48
	jmp ($6092.w)		; 6C 92 60
	bra  30.b		; 80 1E
	cpy #$40BA.w		; C0 BA 40
	adc $E469.w		; 6D 69 E4
	ora #$0D19.w		; 09 19 0D
	sbc $83.b,S		; E3 83
	lsr $BD.b,X		; 56 BD
	sta ($FC.b,X)		; 81 FC
	and $7E8100.l,X		; 3F 00 81 7E
	mvp $84,$92		; 44 92 84
	adc ($72.b)		; 72 72
	sty $D4.b		; 84 D4
	plp		; 28
	rti		; 40

	.db $82, $03, $00		; 82 03 00
	lsr $02.b,X		; 56 02
	ror $72.b		; 66 72
	eor $72FE.w		; 4D FE 72
	stz $0613.w,X		; 9E 13 06
	cli		; 58
	adc #$6C36.w		; 69 36 6C
	rol $ED6E.w		; 2E 6E ED
	bpl -53.b		; 10 CB
	trb $41.b		; 14 41
	bpl  33.b		; 10 21
	rti		; 40

	eor #$96B4.w		; 49 B4 96
	brk $91.b		; 00 91
	cop $9F.b		; 02 9F
	rti		; 40

	bvs  22.b		; 70 16
	cpx $18.b		; E4 18
	lda ($9C.b,S),Y		; B3 9C
	and $DAC7.w,X		; 3D C7 DA
	cmp ($54.b)		; D2 54
	cld		; D8
	bit $C1.b,X		; 34 C1
	txy		; 9B
	cmp ($FA.b,X)		; C1 FA
	sbc $DCFFD8.l,X		; FF D8 FF DC
	sbc $FBFFD7.l,X		; FF D7 FF FB
	sbc $EFF1.w		; ED F1 EF
	beq  -1.b		; F0 FF
	sbc [$FF.b]		; E7 FF
	tsx		; BA
	sbc $07.b		; E5 07
	adc $4E04.w,Y		; 79 04 4E
	and $E4.b,S		; 23 E4
	mvp $92,$A8		; 44 A8 92
	dec $9719.w,X		; DE 19 97
	cmp $5FF516.l,X		; DF 16 F5 5F
	sta $D6FF.w,Y		; 99 FF D6
	xce		; FB
	tay		; A8
	sbc $F7FF19.l,X		; FF 19 FF F7
	sbc $EEB3.w		; ED B3 EE
	ror $EB.b,X		; 76 EB
	tas		; 1B
	cop $30.b		; 02 30
	eor $7E5D.w,Y		; 59 5D 7E
	dec $1327.w,X		; DE 27 13
.INDEX 8
	sep #$92		; E2 92
	cpy $B9BC.w		; CC BC B9
	lda [$69.b],Y		; B7 69
	ldx #$FD.b		; A2 FD
	adc ($FF.b)		; 72 FF
	jsr ($E6E3.w,X)		; FC E3 E6
	sbc $FDA2.w,X		; FD A2 FD
	sed		; F8
	adc $61D7B8.l,X		; 7F B8 D7 61
	inc $8971.w,X		; FE 71 89
	lda $A18A84.l,X		; BF 84 8A A1
	sbc $C7.b,X		; F5 C7
	lda $1E.b		; A5 1E
	lda ($9C.b,S),Y		; B3 9C
	dec $5B00.w		; CE 00 5B
	sta $01.b,X		; 95 01
	inc $7B84.w,X		; FE 84 7B
	bra 127.b		; 80 7F
	cmp $3A.b		; C5 3A
	tsb $FB.b		; 04 FB
	bcc 111.b		; 90 6F
	brk $FF.b		; 00 FF
	ora ($EE.b),Y		; 11 EE
	sbc ($9D.b),Y		; F1 9D
	inc A		; 1A
	ora ($07.b,S),Y		; 13 07
	bit $CC.b,X		; 34 CC
	and $31BD.w,Y		; 39 BD 31
	rtl		; 6B

	adc ($3A.b,S),Y		; 73 3A
	jmp $028A.w		; 4C 8A 02
	sta ($6E.b),Y		; 91 6E
	ora ($ED.b)		; 12 ED
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$31.b],Y		; F7 31
	dec $9C63.w		; CE 63 9C
	php		; 08
	sbc [$02.b],Y		; F7 02
	sbc $0C7A.w,X		; FD 7A 0C
	lsr $B287.w,X		; 5E 87 B2
	cmp $BC45.w,Y		; D9 45 BC
	eor ($98.b),Y		; 51 98
	pei ($99.b)		; D4 99
	and $36.b		; 25 36
	sta $08AE.w,Y		; 99 AE 08
	sbc [$06.b],Y		; F7 06
	sbc $6F90.w,Y		; F9 90 6F
	tsb $FB.b		; 04 FB
	bpl -17.b		; 10 EF
	bcc 111.b		; 90 6F
	bit $DB.b		; 24 DB
	dey		; 88
	adc [$B1.b],Y		; 77 B1
	ldx $8988.w		; AE 88 89
	dex		; CA
	sbc ($0E.b,S),Y		; F3 0E
	and $5B.b,S		; 23 5B
	rol A		; 2A
	and ($C0.b,S),Y		; 33 C0
	rol $5E48.w,X		; 3E 48 5E
	and $5FA0.w,Y		; 39 A0 5F
	dey		; 88
	adc [$C2.b],Y		; 77 C2
	and $FD02.w,X		; 3D 02 FD
	asl A		; 0A
	sbc $00.b,X		; F5 00
	sbc $18F708.l,X		; FF 08 F7 18
	sbc [$75.b]		; E7 75
	sty $7B.b		; 84 7B
	cpx #$7F.b		; E0 7F
	lda ($25.b),Y		; B1 25
	lda ($01.b),Y		; B1 01
	mvn $09,$B0		; 54 B0 09
	cmp $00.b,S		; C3 00
	cmp $FB0438.l,X		; DF 38 04 FB
	rts		; 60

	sta $21CE30.l,X		; 9F 30 CE 21
	dec $FE01.w,X		; DE 01 FE
	asl $F9.b		; 06 F9
	tsb $FB.b		; 04 FB
	trb $C0E3.w		; 1C E3 C0
	sbc $38E2D0.l,X		; FF D0 E2 38
	lsr $9624.w		; 4E 24 96
	dey		; 88
	dec $2F48.w,X		; DE 48 2F
	bvs 100.b		; 70 64
	stx $3F.b		; 86 3F
	cpy #$34.b		; C0 34
	eor $1132.w		; 4D 32 11
	cpx $69.b		; E4 69
	ora ($21.b)		; 12 21
	.db $42, $C0		; 42 C0
	asl $93.b,X		; 16 93
	php		; 08
	sty $59.b		; 84 59
	and ($B0.b,S),Y		; 33 B0
	sbc #$418E.w		; E9 8E 41
	sta $7F0C5D.l,X		; 9F 5D 0C 7F
	mvp $89,$DC		; 44 DC 89
	dec $B1.b,X		; D6 B1
	and ($63.b)		; 32 63
	pla		; 68
	ora [$F9.b]		; 07 F9
	brk $40.b		; 00 40
	rol A		; 2A
	asl $70E1.w,X		; 1E E1 70
	phb		; 8B
.INDEX 8
	sep #$15		; E2 15
	tsb $4A.b		; 04 4A
	stz $0600.w		; 9C 00 06
	eor ($17.b,S),Y		; 53 17
	sec		; 38
	cmp [$53.b],Y		; D7 53
	sta $A2.b		; 85 A2
	eor $2CE288.l		; 4F 88 E2 2C
	bpl -29.b		; 10 E3
	sbc $EE.b		; E5 EE
	asl $A9.b		; 06 A9
	cmp ($0C.b,S),Y		; D3 0C
	clc		; 18
	ldy $0D.b		; A4 0D
	bvc 119.b		; 50 77
	brk $93.b		; 00 93
	mvp $02,$1C		; 44 1C 02
	bpl   1.b		; 10 01
	ora ($85.b,X)		; 01 85
	inc $5F.b,X		; F6 5F
	adc $A2E8.w,X		; 7D E8 A2
	cmp #$1E4A.w		; C9 4A 1E
	cpy $14D4.w		; CC D4 14
	adc $0532.w,X		; 7D 32 05
	phy		; 5A
	ldy #$30.b		; A0 30
	bra  55.b		; 80 37
	brk $B6.b		; 00 B6
	php		; 08
	sbc ($14.b,X)		; E1 14
	phk		; 4B
	jsr $2182.w		; 20 82 21
	sed		; F8
	cop $CE.b		; 02 CE
	sed		; F8
	ldy $98.b		; A4 98
	ora #$A450.w		; 09 50 A4
	eor $88.b,X		; 55 88
	sbc $1FDADC.l,X		; FF DC DA 1F
	adc ($01.b,X)		; 61 01
	eor $05.b,S		; 43 05
	cop $87.b		; 02 87
	rts		; 60

	rol $AA81.w		; 2E 81 AA
	ora ($00.b),Y		; 11 00
	brk $21.b		; 00 21
	asl $1F.b		; 06 1F
	bra -68.b		; 80 BC
	rti		; 40

	sbc ($F4.b)		; F2 F4
	sta ($3F.b),Y		; 91 3F
	adc $F481.w,X		; 7D 81 F4
	sbc #$33FF.w		; E9 FF 33
	cld		; D8
	sbc $A5.b,X		; F5 A5
	cld		; D8
	ldx #$4D.b		; A2 4D
	phd		; 0B
	brk $C1.b		; 00 C1
	brk $7E.b		; 00 7E
	brk $06.b		; 00 06
	bpl -116.b		; 10 8C
	rti		; 40

	asl A		; 0A
	brk $27.b		; 00 27
	clc		; 18
	sta ($60.b)		; 92 60
	pha		; 48
	bmi -47.b		; 30 D1
	brk $00.b		; 00 00
	sbc $F6D1.w		; ED D1 F6
	ora ($2C.b,S),Y		; 13 2C
	adc [$87.b]		; 67 87
	sbc $E17C.w,X		; FD 7C E1
	dey		; 88
	sta $20DF50.l		; 8F 50 DF 20
	bpl   2.b		; 10 02
	ora ($08.b,X)		; 01 08
	eor ($84.b,S),Y		; 53 84
	sei		; 78
	bra  33.b		; 80 21
	.db $82, $77, $00		; 82 77 00
	dec $FD06.w,X		; DE 06 FD
	sbc $B005.w,X		; FD 05 B0
	sec		; 38
	sta $43.b,S		; 83 43
	rti		; 40

	adc $FC195C.l,X		; 7F 5C 19 FC
	cpy $B90C.w		; CC 0C B9
	rti		; 40

	cop $00.b		; 02 00
	eor $007C00.l		; 4F 00 7C 00
	lda $832000.l,X		; BF 00 20 83
	ora $00.b,S		; 03 00
	sbc $3FA110.l		; EF 10 A1 3F
	ora ($AF.b,X)		; 01 AF
	php		; 08
	sbc [$7C.b]		; E7 7C
	sbc $01.b,S		; E3 01
	sta $33.b,S		; 83 33
	pha		; 48
	ora [$A0.b],Y		; 17 A0
	tyx		; BB
	asl $AB.b		; 06 AB
	inc $FFA1.w,X		; FE A1 FF
	sbc #$E9FF.w		; E9 FF E9
	lda $DDFEF5.l,X		; BF F5 FE DD
	sbc $F7FFB3.l,X		; FF B3 FF F7
	sbc $5CF33F.l,X		; FF 3F F3 5C
	ldx $88.b		; A6 88
	adc $9F4493.l,X		; 7F 93 44 9F
	sbc $BD.b,X		; F5 BD
	ora $93103B.l		; 0F 3B 10 93
	lda ($F7.b),Y		; B1 F7
	cmp $DBFBD5.l		; CF D5 FB DB
	sbc [$EE.b],Y		; F7 EE
	sbc $8F7E97.l,X		; FF 97 7E 8F
	sbc ($1C.b)		; F2 1C
	sbc $056FD3.l		; EF D3 6F 05
	cmp ($88.b,X)		; C1 88
	ora $6666ED.l		; 0F ED 66 66
	eor [$57.b]		; 47 57
	ror $B7.b		; 66 B7
	rol $403A.w		; 2E 3A 40
	sbc $E146.w,Y		; F9 46 E1
	inc $F748.w,X		; FE 48 F7
	stz $9B.b		; 64 9B
	lsr $F9.b		; 46 F9
	lsr $B9.b		; 46 B9
	ldx $D9.b		; A6 D9
	brk $FF.b		; 00 FF
	rti		; 40

	lda $658358.l,X		; BF 58 83 65
	dey		; 88
	ldy $51DD.w,X		; BC DD 51
	lda $21A5.w		; AD A5 21
	eor ($34.b)		; 52 34
	lda $EBC0.w		; AD C0 EB
	jmp $00FF00.l		; 5C 00 FF 00
	sbc $01639C.l,X		; FF 9C 63 01
	inc $DE21.w,X		; FE 21 DE
	bpl -17.b		; 10 EF
	bra 127.b		; 80 7F
	pha		; 48
	lda [$BA.b],Y		; B7 BA
	lsr $B1.b		; 46 B1
	sty $167D.w		; 8C 7D 16
	jmp $C9FA.w		; 4C FA C9
	adc ($A8.b),Y		; 71 A8
	and ($44.b)		; 32 44
	adc ($8E.b,X)		; 61 8E
	cpx #$02.b		; E0 02
	sbc $7F80.w,X		; FD 80 7F
	trb $EB.b		; 14 EB
	pha		; 48
	lda [$41.b],Y		; B7 41
	ldx $DF20.w,Y		; BE 20 DF
	rti		; 40

	lda $D27F80.l,X		; BF 80 7F D2
	cpx #$D4.b		; E0 D4
	.db $62, $AF, $0B		; 62 AF 0B
	adc $F168.w		; 6D 68 F1
	eor $73BF.w		; 4D BF 73
	and [$A5.b],Y		; 37 A5
.INDEX 16
	rep #$12		; C2 12
	cpy #$403F.w		; C0 3F 40
	lda $68F40B.l,X		; BF 0B F4 68
	sta [$41.b],Y		; 97 41
	ldx $CC33.w,Y		; BE 33 CC
	and $DA.b		; 25 DA
	cop $FD.b		; 02 FD
	cmp $70.b,S		; C3 70
	inx		; E8
	adc [$10.b],Y		; 77 10
	cmp $77.b,S		; C3 77
	ora [$BC.b]		; 07 BC
	inc $34.b		; E6 34
	dex		; CA
	sta $C155.w,X		; 9D 55 C1
	ora $BF40.w,Y		; 19 40 BF
	rts		; 60

	sta $07FF00.l,X		; 9F 00 FF 07
	sed		; F8
	lda $5A.b		; A5 5A
	tsb $FB.b		; 04 FB
	bpl -22.b		; 10 EA
	asl $E0.b		; 06 E0
	sbc $1C.b,S		; E3 1C
	adc [$D5.b],Y		; 77 D5
	tay		; A8
	eor $AB.b,X		; 55 AB
	cmp ($D3.b)		; D2 D3
	adc [$CF.b]		; 67 CF
	sta $FA.b,X		; 95 FA
	ora ($61.b)		; 12 61
	rts		; 60

	ora $EC.b,S		; 03 EC
	lsr $82A0.w,X		; 5E A0 82
	pla		; 68
	and $C910.w		; 2D 10 C9
	bpl -20.b		; 10 EC
	cop $45.b		; 02 45
	tay		; A8
	dex		; CA
	ora $7A.b,X		; 15 7A
	eor $39.b		; 45 39
	lda ($6C.b)		; B2 6C
	sty $A106.w		; 8C 06 A1
	txa		; 8A
	ora #$DD99.w		; 09 99 DD
	brk $A2.b		; 00 A2
	ldx $A28C.w,Y		; BE 8C A2
	clc		; 18
	plp		; 28
	eor [$07.b]		; 47 07
	beq  82.b		; F0 52
	ldy $6294.w		; AC 94 62
	ldy #$4C42.w		; A0 42 4C
	sta ($2B.b),Y		; 91 2B
	bvc  16.b		; 50 10
	ora ($3E.b),Y		; 11 3E
	eor $A0.b		; 45 A0
	bne  38.b		; D0 26
	jmp ($C274.w)		; 6C 74 C2
	iny		; C8
	cmp #$1429.w		; C9 29 14
	mvp $FA,$14		; 44 14 FA
	ora $B2.b		; 05 B2
	php		; 08
	and #$3756.w		; 29 56 37
	bra  77.b		; 80 4D
	bmi  46.b		; 30 2E
	bpl  10.b		; 10 0A
	sbc ($A9.b,X)		; E1 A9
	eor ($9A.b)		; 52 9A
	stz $EB.b,X		; 74 EB
	jmp ($3970.w)		; 6C 70 39
	cli		; 58
	ora ($1F.b)		; 12 1F
	stz $E4.b		; 64 E4
	ldy $CC.b,X		; B4 CC
	stx $79.b,Y		; 96 79
	cmp ($81.b)		; D2 81
	lsr A		; 4A
	cmp $10.b,S		; C3 10
	lsr $80.b		; 46 80
	ora $9FE0.w,X		; 1D E0 9F
	brk $48.b		; 00 48
	ora ($60.b,S),Y		; 13 60
	ora #$A04D.w		; 09 4D A0
	xba		; EB
	jmp $0058.w		; 4C 58 00
	ror $C7.b,X		; 76 C7
	phy		; 5A
	tda		; 7B
	brk $F1.b		; 00 F1
	sbc ($87.b,X)		; E1 87
	tda		; 7B
	jmp.w [$1256]		; DC 56 12
	lda ($04.b,S),Y		; B3 04
	lda $201C50.l		; AF 50 1C 20
	sty $00.b		; 84 00
	php		; 08
	asl $78.b		; 06 78
	brk $62.b		; 00 62
	ora ($ED.b,X)		; 01 ED
	brk $C0.b		; 00 C0
	lsr $58.b		; 46 58
	adc $9B.b,X		; 75 9B
	sta $07.b		; 85 07
	lda ($EE.b,X)		; A1 EE
	cli		; 58
	lda $2E.b		; A5 2E
	sbc $990138.l		; EF 38 01 99
	lda $9A04.w,Y		; B9 04 9A
	tsb $FA.b		; 04 FA
	brk $5A.b		; 00 5A
	bit $A7.b		; 24 A7
	brk $C1.b		; 00 C1
	bpl -58.b		; 10 C6
	ora ($67.b,X)		; 01 67
	bra -117.b		; 80 8B
	ora #$EBC0.w		; 09 C0 EB
	jsr $B3D3.w		; 20 D3 B3
	inx		; E8
	clv		; B8
	sei		; 78
	adc $3D.b,X		; 75 3D
	eor #$3F6D.w		; 49 6D 3F
	eor $04F2.w		; 4D F2 04
	trb $22.b		; 14 22
	bit $3700.w		; 2C 00 37
	php		; 08
	sta $00C200.l		; 8F 00 C2 00
	eor ($80.b,S),Y		; 53 80
	bcs   2.b		; B0 02
	phd		; 0B
	ldy $E5.b,X		; B4 E5
	tay		; A8
	lda ($B3.b),Y		; B1 B3
	ora ($68.b,X)		; 01 68
	lda $E64BFD.l,X		; BF FD 4B E6
	adc $9895.w,X		; 7D 95 98
	lda $57104B.l		; AF 4B 10 57
	brk $C8.b		; 00 C8
	asl $97.b		; 06 97
	pha		; 48
	asl $00.b		; 06 00
	cli		; 58
	ora ($6A.b,X)		; 01 6A
	brk $10.b		; 00 10
	rti		; 40

	ldy $32.b,X		; B4 32
	tay		; A8
	phy		; 5A
	sbc $CF.b,X		; F5 CF
	tsx		; BA
	eor $86.b,S		; 43 86
	and [$AB.b]		; 27 AB
	and $74EEC7.l,X		; 3F C7 EE 74
	ldy $02CD.w		; AC CD 02
	ora $A2.b		; 05 A2
	bpl  32.b		; 10 20
	bit $D880.w,X		; 3C 80 D8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($53.b),Y		; 11 53
	php		; 08
	and [$BF.b]		; 27 BF
	sta ($63.b,S),Y		; 93 63
	eor [$3E.b]		; 47 3E
	ldy #$9312.w		; A0 12 93
	adc ($45.b)		; 72 45
	adc $18.b,X		; 75 18
	rts		; 60

	adc $EF42.w,Y		; 79 42 EF
	dec $FEE7.w,X		; DE E7 FE
	ror $18FB.w,X		; 7E FB 18
	sbc $D5FD5B.l,X		; FF 5B FD D5
	plx		; FA
	ldy $C4FF.w,X		; BC FF C4
	lda $5693DA.l,X		; BF DA 93 56
	ldx #$7E5D.w		; A2 5D 7E
	lsr $0E73.w,X		; 5E 73 0E
	and [$3D.b],Y		; 37 3D
	ldx $7FB2.w,Y		; BE B2 7F
	ora $9248.w,X		; 1D 48 92
	adc $FDA2.w,X		; 7D A2 FD
	jmp $AD5AA3.l		; 5C A3 5A AD
	asl $BCF9.w,X		; 1E F9 BC
	sbc ($72.b,S),Y		; F3 72
	sbc $F718.w		; ED 18 F7
	ldy $96B3.w		; AC B3 96
	ora [$6F.b]		; 07 6F
	lda [$B2.b],Y		; B7 B2
	ora $954ABA.l,X		; 1F BA 4A 95
	stz $2E.b		; 64 2E
	and ($DE.b,S),Y		; 33 DE
	tas		; 1B
	ldy #$065F.w		; A0 5F 06
	sbc $D827.w,Y		; F9 27 D8
	ora ($ED.b)		; 12 ED
	asl A		; 0A
	sbc $04.b,X		; F5 04
	xce		; FB
	jsl $E51ADD.l		; 22 DD 1A E5
	dec $7359.w		; CE 59 73
	xba		; EB
	rol $938F.w		; 2E 8F 93
	ora $3129.w,Y		; 19 29 31
	eor $75.b		; 45 75
	lda ($23.b)		; B2 23
	ldy $4831.w		; AC 31 48
	lda [$63.b],Y		; B7 63
	stz $F10E.w		; 9C 0E F1
	ora ($EE.b),Y		; 11 EE
	and ($DE.b,X)		; 21 DE
	eor $BA.b		; 45 BA
	jsl $DF20DD.l		; 22 DD 20 DF
	tax		; AA
	cmp $18.b		; C5 18
	eor $28.b,X		; 55 28
	and ($E9.b,X)		; 21 E9
	ora ($DB.b),Y		; 11 DB
	sec		; 38
	lda ($47.b,S),Y		; B3 47
	ldy #$F464.w		; A0 64 F4
	adc $107F80.l,X		; 7F 80 7F 10
	sbc $01DF20.l		; EF 20 DF 01
	inc $E718.w,X		; FE 18 E7
	ora $FC.b,S		; 03 FC
	jsr $74DF.w		; 20 DF 74
	phb		; 8B
	wai		; CB
	bcc -66.b		; 90 BE
	.db $82, $9D, $1D		; 82 9D 1D
	sbc $37F4.w,Y		; F9 F4 37
	sty $3C99.w		; 8C 99 3C
	sbc $9D.b,X		; F5 9D
	cmp $8004.w		; CD 04 80
	adc $1D7D82.l,X		; 7F 82 7D 1D
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora $18FB04.l		; 0F 04 FB 18
	sbc [$95.b]		; E7 95
	ror A		; 6A
	ora $FA.b		; 05 FA
	bit $31.b		; 24 31
	lda ($A2.b),Y		; B1 A2
	jmp ($72AF.w,X)		; 7C AF 72
	.db $82, $86, $D6		; 82 86 D6
	ora $6E.b		; 05 6E
	mvp $49,$C9		; 44 C9 49
	sta $D728.w,X		; 9D 28 D7
	bit #$54.b		; 89 54
	brk $D1.b		; 00 D1
	ora [$F8.b]		; 07 F8
	txa		; 8A
	and ($95.b),Y		; 31 95
	.db $62, $76, $80		; 62 76 80
	asl A		; 0A
	cpx $48.b		; E4 48
	ora ($42.b,S),Y		; 13 42
	sta ($7F.b,S),Y		; 93 7F
	eor $B28DCC.l,X		; 5F CC 8D B2
	ldx #$0A.b		; A2 0A
	cmp $8A4C.w		; CD 4C 8A
	bcc -12.b		; 90 F4
	cpx $1A.b		; E4 1A
	lsr A		; 4A
	ldy $E6.b,X		; B4 E6
	brk $BA.b		; 00 BA
	rti		; 40

	pla		; 68
	ora $02.b,X		; 15 02
	adc ($65.b),Y		; 71 65
	ora ($8B.b)		; 12 8B
	rti		; 40

	rti		; 40

	sty $40.b,X		; 94 40
	sta [$D0.b],Y		; 97 D0
	eor ($B4.b,S),Y		; 53 B4
	cmp $0FBF.w,X		; DD BF 0F
	ply		; 7A
	eor $E9C6A2.l,X		; 5F A2 C6 E9
	php		; 08
	pld		; 2B
	cpy $68.b		; C4 68
	stx $34.b		; 86 34
	dey		; 88
	sta ($20.b)		; 92 20
	pla		; 68
	bcc -128.b		; 90 80
	jsr $1920.w		; 20 20 19
	cmp [$20.b],Y		; D7 20
	lda $1021BD.l,X		; BF BD 21 10
	adc ($9E.b,S),Y		; 73 9E
	lsr $77.b		; 46 77
	.db $82, $80, $54		; 82 80 54
	jmp ($31ED.w)		; 6C ED 31
	rts		; 60

	adc $41.b,X		; 75 41
	cop $44.b		; 02 44
	plb		; AB
	adc ($04.b,X)		; 61 04
	iny		; C8
	jsr $027D.w		; 20 7D 02
	sta [$20.b],Y		; 97 20
	sta $108A40.l		; 8F 40 8A 10
	cmp $76.b		; C5 76
	cmp $EAE1.w		; CD E1 EA
	lda ($21.b,S),Y		; B3 21
	ora #$5D.b		; 09 5D
	phb		; 8B
	plb		; AB
	eor $A10D32.l		; 4F 32 0D A1
	xce		; FB
	bit #$00.b		; 89 00
	trb $0E22.w		; 1C 22 0E
	rti		; 40

	sbc [$00.b],Y		; F7 00
	stz $10.b		; 64 10
	ldy #$10.b		; A0 10
.INDEX 8
	sep #$10		; E2 10
	sty $02.b		; 84 02
	adc $07.b,X		; 75 07
	pea $AA67.w		; F4 67 AA
	lsr $1CB6.w		; 4E B6 1C
	lda $A568.w		; AD 68 A5
	adc ($35.b),Y		; 71 35
	lsr $E38B.w		; 4E 8B E3
	sta $9860.w,Y		; 99 60 98
	brk $93.b		; 00 93
	jsr $00E3.w		; 20 E3 00
	stx $41.b,Y		; 96 41
	stx $08.b		; 86 08
	and ($80.b),Y		; 31 80
	trb $48.b		; 14 48
	adc $83.b		; 65 83
	cmp ($C6.b)		; D2 C6
	and $78.b,X		; 35 78
	tax		; AA
	sta ($31.b)		; 92 31
	ora #$2F.b		; 09 2F
	xba		; EB
	plx		; FA
	phk		; 4B
	jmp ($7CB8.w)		; 6C B8 7C
	brk $23.b		; 00 23
	trb $0087.w		; 1C 87 00
	stz $09.b		; 64 09
	ldx $40.b,Y		; B6 40
	bit $00.b,X		; 34 00
	ldy $10.b		; A4 10
	lsr $81.b		; 46 81
	jsr $0AA4.w		; 20 A4 0A
	rts		; 60

	stz $60.b,X		; 74 60
	phd		; 0B
	inc $B64A.w,X		; FE 4A B6
	cmp $00.b		; C5 00
	tsa		; 3B
	eor $5B0F80.l		; 4F 80 0F 5B
	sty $97.b		; 84 97
	php		; 08
	ora $000180.l,X		; 1F 80 01 00
	eor #$30.b		; 49 30
	sbc $04B000.l,X		; FF 00 B0 04
	bvs -128.b		; 70 80
	rol $59.b,X		; 36 59
	cpy #$C8.b		; C0 C8
	and $D8.b,X		; 35 D8
	sbc #$6F.b		; E9 6F
	cmp [$68.b],Y		; D7 68
	plp		; 28
	php		; 08
	eor [$07.b]		; 47 07
	sbc #$7F.b		; E9 7F
	ldx $09.b		; A6 09
	and [$00.b],Y		; 37 00
	and $02.b		; 25 02
	bra  16.b		; 80 10
	ora [$80.b],Y		; 17 80
	adc [$80.b],Y		; 77 80
	sed		; F8
	brk $81.b		; 00 81
	brk $86.b		; 00 86
	sty $3A.b		; 84 3A
	sbc $D9.b,X		; F5 D9
	stx $FC.b		; 86 FC
	bit $E6.b,X		; 34 E6
	tsb $217D.w		; 0C 7D 21
	dey		; 88
	tay		; A8
	adc ($C0.b,X)		; 61 C0
	adc $000A00.l,X		; 7F 00 0A 00
	adc #$10.b		; 69 10
	phb		; 8B
	rti		; 40

	cmp ($20.b,S),Y		; D3 20
	phx		; DA
	tsb $57.b		; 04 57
	brk $2E.b		; 00 2E
	ora ($7D.b),Y		; 11 7D
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	sta $91.b		; 85 91
	ora $3D83.w		; 0D 83 3D
	plx		; FA
	tas		; 1B
	stz $C1.b		; 64 C1
	adc $41.b,X		; 75 41
	stz $E0F3.w		; 9C F3 E0
	lda $03FBB4.l,X		; BF B4 FB 03
	sbc $1AFE85.l,X		; FF 85 FE 1A
	sbc $C2.b		; E5 C2
	lda $90BEC1.l,X		; BF C1 BE 90
	sbc $4C26B5.l		; EF B5 26 4C
	sta $A5D1BE.l		; 8F BE D1 A5
	sta $2911.w,Y		; 99 11 29
	rol $58.b,X		; 36 58
	lda $F559.w,X		; BD 59 F5
	eor $FBF4.w,Y		; 59 F4 FB
	tsb $D0F3.w		; 0C F3 D0
	sbc $017EC1.l,X		; FF C1 7E 01
	inc $EF50.w,X		; FE 50 EF
	adc $71E6.w,Y		; 79 E6 71
	inc $77E3.w		; EE E3 77
	and [$86.b]		; 27 86
	asl A		; 0A
	cmp $D9.b,S		; C3 D9
	ora $9A56.w,Y		; 19 56 9A
	ora $72C9.w		; 0D C9 72
	sty $EB.b		; 84 EB
	cmp $9C63.w,X		; DD 63 9C
	asl $F9.b		; 06 F9
	cop $FD.b		; 02 FD
	ora $12E6.w,Y		; 19 E6 12
	sbc $F609.w		; ED 09 F6
	brk $FF.b		; 00 FF
	cmp #$B536.w		; C9 36 B5
	ror $55.b		; 66 55
	nop		; EA
	cmp $81D1C7.l,X		; DF C7 D1 81
	adc $7279.w,X		; 7D 79 72
	ldy #$CCAF.w		; A0 AF CC
	wai		; CB
	mvp $DB,$24		; 44 24 DB
	rti		; 40

	lda $8138C7.l,X		; BF C7 38 81
	ror $8679.w,X		; 7E 79 86
	jsr $8CDF.w		; 20 DF 8C
	adc ($40.b,S),Y		; 73 40
	lda $FA05BE.l,X		; BF BE 05 FA
	eor ($74.b,X)		; 41 74
	phk		; 4B
	txa		; 8A
	clv		; B8
	pla		; 68
	txa		; 8A
	sbc $03.b,S		; E3 03
	cpx #$4E27.w		; E0 27 4E
	bra   4.b		; 80 04
	xce		; FB
	rti		; 40

	lda $88BF40.l,X		; BF 40 BF 88
	adc [$08.b],Y		; 77 08
	sbc [$03.b],Y		; F7 03
	jsr ($DF20.w,X)		; FC 20 DF
	brk $FF.b		; 00 FF
	phd		; 0B
	.db $82, $B0, $E8		; 82 B0 E8
	eor $E4.b,X		; 55 E4
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	ora ($0F.b,X)		; 01 0F
	txs		; 9A
	sbc $E822.w,X		; FD 22 E8
	pei ($1C.b)		; D4 1C
	cop $FD.b		; 02 FD
	ldy #$455F.w		; A0 5F 45
	tsx		; BA
	cpy #$013E.w		; C0 3E 01
	jsr ($6698.w,X)		; FC 98 66
	jsr $06D7.w		; 20 D7 06
	sbc ($70.b,X)		; E1 70
	ldy $E0E0.w,X		; BC E0 E0
	adc $40A5.w		; 6D A5 40
	eor [$21.b]		; 47 21
	asl $B4.b,X		; 16 B4
	stz $69.b,X		; 74 69
	tsb $74.b		; 04 74
	cpy $32.b		; C4 32
	eor $1A25.w		; 4D 25 1A
	mvp $E0,$9A		; 44 9A E0
	inc A		; 1A
	iny		; C8
	and ($91.b,S),Y		; 33 91
	lsr A		; 4A
	stp		; DB
	jsr $205F.w		; 20 5F 20
	adc $549A.w		; 6D 9A 54
	ror $EECD.w		; 6E CD EE
	xba		; EB
	sbc ($C7.b)		; F2 C7
	cmp $A42701.l		; CF 01 27 A4
	jmp ($E350.w,X)		; 7C 50 E3
	jmp ($D501.w)		; 6C 01 D5
	cop $51.b		; 02 51
	jsr $0449.w		; 20 49 04
	adc ($08.b),Y		; 71 08
	bcc  74.b		; 90 4A
	ora [$D0.b]		; 07 D0
	clc		; 18
	asl $2F.b		; 06 2F
	adc $0919.w		; 6D 19 09
	pha		; 48
	txy		; 9B
	eor ($E4.b),Y		; 51 E4
	pei ($00.b)		; D4 00
	.db $42, $80		; 42 80
	lda $26FA.w,X		; BD FA 26
.INDEX 8
	sep #$17		; E2 17
	bra 102.b		; 80 66
	bcc  32.b		; 90 20
	eor $1A.b		; 45 1A
	ora ($BB.b,X)		; 01 BB
	mvp $16,$69		; 44 69 16
	ora ($04.b),Y		; 11 04
	tas		; 1B
	mvp $64,$8C		; 44 8C 64
	sta ($AC.b),Y		; 91 AC
	ldx #$A4.b		; A2 A4
	asl $02A5.w,X		; 1E A5 02
	sta ($30.b)		; 92 30
	sbc ($07.b,X)		; E1 07
	ldy $91.b		; A4 91
	cmp ($93.b,S),Y		; D3 93
	php		; 08
	sta ($52.b,X)		; 81 52
	ply		; 7A
	ora $58.b		; 05 58
	.db $82, $6D, $90		; 82 6D 90
	asl A		; 0A
	sty $51.b,X		; 94 51
	txa		; 8A
	tsb $0020.w		; 0C 20 00
	jmp ($D1FE.w,X)		; 7C FE D1
	adc $1272.w,Y		; 79 72 12
	lsr $86.b,X		; 56 86
	bra -17.b		; 80 EF
	ror $3D.b		; 66 3D
	lda ($46.b,S),Y		; B3 46
	adc [$83.b],Y		; 77 83
	tsb $0A24.w		; 0C 24 0A
	sta $0A.b		; 85 0A
	lda ($08.b),Y		; B1 08
	adc $009910.l		; 6F 10 99 00
	cli		; 58
	tsb $88.b		; 04 88
	brk $F6.b		; 00 F6
	lda $B4.b,S		; A3 B4
	phd		; 0B
	adc $AB767A.l		; 6F 7A 76 AB
	adc $26.b		; 65 26
	ldy $7B.b,X		; B4 7B
	ldy #$73.b		; A0 73
	xce		; FB
	and $00FC.w,X		; 3D FC 00
	pei ($21.b)		; D4 21
	sbc $00.b		; E5 00
	bpl  76.b		; 10 4C
	ora ($C8.b),Y		; 11 C8
	sty $48.b,X		; 94 48
	tsb $88.b		; 04 88
	pla		; 68
	.db $82, $AF, $22		; 82 AF 22
	eor ($A2.b),Y		; 51 A2
	bvs -80.b		; 70 B0
	sty $06.b		; 84 06
	bit #$4F29.w		; 89 29 4F
	.db $82, $CB, $D3		; 82 CB D3
	tsb $81.b		; 04 81
	eor $5D80.w,X		; 5D 80 5D
	bra  90.b		; 80 5A
	ora $FD.b		; 05 FD
	cop $4E.b		; 02 4E
	bcc  25.b		; 90 19
	stz $2C.b		; 64 2C
	brk $6A.b		; 00 6A
	trb $74.b		; 14 74
	inc $8B.b,X		; F6 8B
	clc		; 18
	ldy $DE.b		; A4 DE
	bne 118.b		; D0 76
	lda $98.b		; A5 98
	jmp ($8088.w,X)		; 7C 88 80
	brk $80.b		; 00 80
	ora ($11.b)		; 12 11
	php		; 08
	lda [$40.b]		; A7 40
	and ($02.b,X)		; 21 02
	ora ($88.b,X)		; 01 88
	adc $02.b		; 65 02
	adc [$00.b],Y		; 77 00
	sbc $CD02.w,X		; FD 02 CD
	jsl $00301F.l		; 22 1F 30 00
	cpx #$76.b		; E0 76
	phy		; 5A
	sta $7688.w,X		; 9D 88 76
	ror $A8.b,X		; 76 A8
	beq -61.b		; F0 C3
	cld		; D8
	plx		; FA
	and $1F00DF.l,X		; 3F DF 00 1F
	brk $A4.b		; 00 A4
	ora ($72.b,X)		; 01 72
	ora $88.b		; 05 88
	ora ($0F.b,X)		; 01 0F
	brk $27.b		; 00 27
	bpl -126.b		; 10 82
	rti		; 40

	bra  66.b		; 80 42
	ldx $26.b,Y		; B6 26
	lda ($06.b,X)		; A1 06
	inc $F6.b,X		; F6 F6
	jsl $F5549A.l		; 22 9A 54 F5
	bmi 124.b		; 30 7C
	tax		; AA
	jsl $9D00BD.l		; 22 BD 00 9D
	rti		; 40

	cmp $2920.w,Y		; D9 20 29
	brk $65.b		; 00 65
	brk $02.b		; 00 02
	dey		; 88
	sta $00.b,S		; 83 00
	cmp $D100.w,X		; DD 00 D1
	ldx $21CC.w,Y		; BE CC 21
	cmp ($22.b,X)		; C1 22
	ldx #$74.b		; A2 74
	lsr $0C.b		; 46 0C
	ora $C3.b,X		; 15 C3
	ora $62.b		; 05 62
	phx		; DA
	.db $62, $D0, $6F		; 62 D0 6F
	sbc [$FF.b],Y		; F7 FF
	ldy $FF.b,X		; B4 FF
	cpx #$FF.b		; E0 FF
	ldy $FF.b,X		; B4 FF
	cmp ($FE.b,S),Y		; D3 FE
	rti		; 40

	sbc $29FD42.l,X		; FF 42 FD 29
	cpx $1C.b		; E4 1C
	sbc $85.b,S		; E3 85
	inc $6D0D.w,X		; FE 0D 6D
	phd		; 0B
	eor $8A.b		; 45 8A
	cpy $3C6B.w		; CC 6B 3C
	sta $600D.w,X		; 9D 0D 60
	cmp $84FF40.l,X		; DF 40 FF 84
	tda		; 7B
	ora $81F2.w		; 0D F2 81
	inc $7788.w,X		; FE 88 77
	plp		; 28
	cmp [$0D.b],Y		; D7 0D
	sbc ($B5.b)		; F2 B5
	and ($C0.b)		; 32 C0
	ora $FD9E.w,Y		; 19 9E FD
	and $8EEE06.l		; 2F 06 EE 8E
	lda $C9.b,S		; A3 C9
	lda ($C4.b)		; B2 C4
	eor $30BA.w		; 4D BA 30
	cmp $9CFF00.l		; CF 00 FF 9C
	adc $06.b,S		; 63 06
	sbc $718E.w,Y		; F9 8E 71
	sta ($7E.b,X)		; 81 7E
	bra 127.b		; 80 7F
	php		; 08
	sbc [$F5.b],Y		; F7 F5
	brk $1D.b		; 00 1D
	cmp ($D6.b),Y		; D1 D6
	cmp $C3F3.w,X		; DD F3 C3
	asl $131A.w		; 0E 1A 13
	cld		; D8
	plb		; AB
	jmp.w [$4DEA]		; DC EA 4D
	brk $FF.b		; 00 FF
	ora ($EE.b),Y		; 11 EE
	pei ($2B.b)		; D4 2B
	cmp $3C.b,S		; C3 3C
	asl A		; 0A
	sbc $10.b,X		; F5 10
	sbc $487788.l		; EF 88 77 48
	lda [$9A.b],Y		; B7 9A
	clv		; B8
	and ($90.b),Y		; 31 90
	eor ($82.b,S),Y		; 53 82
	asl A		; 0A
	ora ($28.b,S),Y		; 13 28
	ldx $6F.b,Y		; B6 6F
	sta ($85.b,X)		; 81 85
	eor ($1F.b)		; 52 1F
	xce		; FB
	tya		; 98
	adc [$10.b]		; 67 10
	sbc $02FD02.l		; EF 02 FD 02
	sbc $DF20.w,X		; FD 20 DF
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	tas		; 1B
	cpx $EC.b		; E4 EC
	ldx $B9.b		; A6 B9
	sty $B3.b,X		; 94 B3
	sta $40.b,S		; 83 40
	ora ($E2.b)		; 12 E2
	tda		; 7B
	tas		; 1B
	lda ($17.b),Y		; B1 17
	bpl  51.b		; 10 33
	ora $5AA5.w		; 0D A5 5A
	sta $6C.b,S		; 83 6C
	sta ($7C.b,X)		; 81 7C
	and #$20D4.w		; 29 D4 20
	stz $CA15.w		; 9C 15 CA
	bit $CB.b		; 24 CB
	ora ($E2.b),Y		; 11 E2
	jsr ($A679.w,X)		; FC 79 A6
	bit $7D8A.w		; 2C 8A 7D
	trb $B3.b		; 14 B3
	ora #$D456.w		; 09 56 D4
	lda $94.b,S		; A3 94
	sta [$20.b]		; 87 20
	ora #$00AE.w		; 09 AE 00
	ora [$D0.b]		; 07 D0
	php		; 08
	sep #$4C		; E2 4C
	bra   9.b		; 80 09
	ldy #$D4.b		; A0 D4
	and #$01F8.w		; 29 F8 01
	ror $81.b,X		; 76 81
	sbc ($AB.b),Y		; F1 AB
	ldx $0C.b		; A6 0C
	lda ($B9.b),Y		; B1 B9
	tda		; 7B
	adc ($D0.b,S),Y		; 73 D0
	adc $94BED1.l		; 6F D1 BE 94
	jsl $04BC7E.l		; 22 7E BC 04
	bvc -61.b		; 50 C3
	bmi -58.b		; 30 C6
	php		; 08
	sbc #$1004.w		; E9 04 10
	bit #$0540.w		; 89 40 05
	jmp.w [$1721]		; DC 21 17
	rti		; 40

	and $D9D6.w,Y		; 39 D6 D9
	cmp $0C.b		; C5 0C
	cli		; 58
	ldy $768B.w,X		; BC 8B 76
	adc $3578.w,Y		; 79 78 35
	stp		; DB
	txs		; 9A
	adc $16.b		; 65 16
	ora #$2A60.w		; 09 60 2A
	bpl  38.b		; 10 26
	cmp ($74.b,X)		; C1 74
	ora ($96.b,X)		; 01 96
	brk $8A.b		; 00 8A
	rti		; 40

	and [$40.b]		; 27 40
	sbc #$DB00.w		; E9 00 DB
	bcc  52.b		; 90 34
	adc $EE92.w,X		; 7D 92 EE
	sbc $65.b,S		; E3 65
	eor $C17021.l		; 4F 21 70 C1
	beq -12.b		; F0 F4
.ACCU 16
.INDEX 16
	rep #$71		; C2 71
	ror $1201.w,X		; 7E 01 12
	bra  17.b		; 80 11
	jsr $049A.w		; 20 9A 04
	stz $3E40.w,X		; 9E 40 3E
	brk $13.b		; 00 13
	tsb $810E.w		; 0C 0E 81
	cmp $737A.w,Y		; D9 7A 73
	jmp $D7F8.w		; 4C F8 D7
	rti		; 40

	sei		; 78
	ora ($A0.b,X)		; 01 A0
	jmp.w [$AB04]		; DC 04 AB
.ACCU 8
	sep #$E3		; E2 E3
	cmp ($85.b,S),Y		; D3 85
	brk $B3.b		; 00 B3
	brk $78.b		; 00 78
	cop $87.b		; 02 87
	bpl  75.b		; 10 4B
	trb $7B.b		; 14 7B
	bra -113.b		; 80 8F
	bvc  40.b		; 50 28
	trb $06.b		; 14 06
	sta [$8F.b]		; 87 8F
	eor $77.b,X		; 55 77
	and #$C9.b		; 29 C9
	adc [$6A.b],Y		; 77 6A
	eor #$B2.b		; 49 B2
	tda		; 7B
	bit #$4E.b		; 89 4E
	ora $786D.w		; 0D 6D 78
	bra   7.b		; 80 07
	tay		; A8
	sta ($44.b)		; 92 44
	bra  28.b		; 80 1C
	ldx $9400.w,Y		; BE 00 94
	php		; 08
	lda ($10.b,X)		; A1 10
	sta ($20.b)		; 92 20
	sta [$64.b],Y		; 97 64
	nop		; EA
	bit $E5BA.w		; 2C BA E5
	ora $7EE8.w,X		; 1D E8 7E
	ldy $E69D.w		; AC 9D E6
	phd		; 0B
	sbc $E794.w		; ED 94 E7
	txy		; 9B
	brk $D3.b		; 00 D3
	brk $1A.b		; 00 1A
	brk $07.b		; 00 07
	bmi  87.b		; 30 57
	brk $15.b		; 00 15
	pha		; 48
	ora ($00.b)		; 12 00
	clc		; 18
	ora ($7E.b,X)		; 01 7E
	phx		; DA
	pld		; 2B
	stz $EC.b,X		; 74 EC
	cmp $1B32DE.l,X		; DF DE 32 1B
	jsr ($4AD9.w,X)		; FC D9 4A
	bcs  19.b		; B0 13
	ora [$2F.b]		; 07 2F
	rol $01.b,X		; 36 01
	phb		; 8B
	brk $24.b		; 00 24
	bpl -59.b		; 10 C5
	php		; 08
	ora ($02.b),Y		; 11 02
	lda $10.b		; A5 10
	tsb $94E0.w		; 0C E0 94
	rti		; 40

	ora ($56.b,S),Y		; 13 56
	jmp ($8360.w,X)		; 7C 60 83
	eor $9C.b,S		; 43 9C
	cmp $A8B0.w,X		; DD B0 A8
	stz $4863.w		; 9C 63 48
	ldx $33.b,Y		; B6 33
	tyx		; BB
	and $9F80.w,Y		; 39 80 9F
	brk $9C.b		; 00 9C
	jsr $00A2.w		; 20 A2 00
	asl $41.b,X		; 16 41
	stz $4900.w		; 9C 00 49
	brk $54.b		; 00 54
	brk $C0.b		; 00 C0
	bpl  32.b		; 10 20
	php		; 08
	and ($68.b,X)		; 21 68
	tsx		; BA
	sbc $DA.b,S		; E3 DA
	dec $41.b		; C6 41
	bvc  48.b		; 50 30
	clv		; B8
	trb $AF70.w		; 1C 70 AF
	rti		; 40

	sbc [$00.b],Y		; F7 00
	sta [$00.b],Y		; 97 00
	trb $3100.w		; 1C 00 31
	php		; 08
	lda [$08.b]		; A7 08
	adc [$00.b]		; 67 00
	sta $AE7320.l		; 8F 20 73 AE
	lda ($1F.b,X)		; A1 1F
	asl $EF.b,X		; 16 EF
	stx $33.b,Y		; 96 33
	bcs  48.b		; B0 30
	inc $328A.w		; EE 8A 32
	.db $42, $EA		; 42 EA
	ora ($EA.b,X)		; 01 EA
	cmp $EEFE21.l,X		; DF 21 FE EE
	xce		; FB
	stx $FF.b,Y		; 96 FF
	ldy $8AEF.w,X		; BC EF 8A
	sbc $F2.b,X		; F5 F2
	sbc $FF15.w,X		; FD 15 FF
	beq 114.b		; F0 72
	jmp $E2D563.l		; 5C 63 D5 E2
	eor ($62.b,S),Y		; 53 62
	sbc $9EDF.w		; ED DF 9E
	php		; 08
	bit $B4.b,X		; 34 B4
	cmp ($11.b,X)		; C1 11
	bvs -113.b		; 70 8F
	rti		; 40

	lda $423FC0.l,X		; BF C0 3F 42
	lda $32CD.w,X		; BD CD 32
	php		; 08
	sbc [$34.b],Y		; F7 34
	wai		; CB
	ora ($FE.b,X)		; 01 FE
	lda $694C.w		; AD 4C 69
	ror $070D.w,X		; 7E 0D 07
	adc $CEBA43.l,X		; 7F 43 BA CE
	tsx		; BA
	cpy $C8AA.w		; CC AA C8
	adc [$C1.b]		; 67 C1
	tsb $68F3.w		; 0C F3 68
	sta [$05.b],Y		; 97 05
	plx		; FA
	eor $BC.b,S		; 43 BC
	txa		; 8A
	adc $88.b,X		; 75 88
	adc [$88.b],Y		; 77 88
	adc [$41.b],Y		; 77 41
	ldx $4DEA.w,Y		; BE EA 4D
	eor [$6C.b],Y		; 57 6C
	inc $1157.w,X		; FE 57 11
	adc ($AD.b),Y		; 71 AD
	cmp $CCAA.w		; CD AA CC
	plb		; AB
	cpx $A4AF.w		; EC AF A4
	pha		; 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	lsr $A9.b,X		; 56 A9
	ora ($EE.b),Y		; 11 EE
	sta $8872.w		; 8D 72 88
	adc [$A8.b],Y		; 77 A8
	eor [$A4.b],Y		; 57 A4
	tad		; 5B
	txs		; 9A
	trb $7645.w		; 1C 45 76
	eor $A6.b,X		; 55 A6
	stz $1723.w		; 9C 23 17
	ora $E626.w,Y		; 19 26 E6
	cop $84.b		; 02 84
	tyx		; BB
	cmp $E718.w,X		; DD 18 E7
	mvp $04,$BB		; 44 BB 04
	xce		; FB
	brk $FF.b		; 00 FF
	ora ($EE.b),Y		; 11 EE
	rol $D9.b		; 26 D9
	brk $FF.b		; 00 FF
	tya		; 98
	ror $C2.b		; 66 C2
	ora $0565.w		; 0D 65 05
	pea $0C12.w		; F4 12 0C
	bcc  88.b		; 90 58
	adc $CA.b		; 65 CA
	jmp ($9137.w,X)		; 7C 37 91
	lda $39.b,S		; A3 39
	bmi -49.b		; 30 CF
	bit $DA.b		; 24 DA
	sta ($6E.b,X)		; 81 6E
	and ($DE.b,X)		; 21 DE
	bvc -114.b		; 50 8E
	ora #$82.b		; 09 82
	trb $EA.b		; 14 EA
	rti		; 40

	stx $6C38.w		; 8E 38 6C
	and [$F0.b],Y		; 37 F0
	ldy $D6.b,X		; B4 D6
	bit $0F.b		; 24 0F
	ror $4FA8.w		; 6E A8 4F
	.db $62, $C0, $90		; 62 C0 90
	cpx $B10C.w		; EC 0C B1
	asl $0F.b		; 06 0F
	brk $2D.b		; 00 2D
	cop $B4.b		; 02 B4
	phk		; 4B
	ora ($44.b,S),Y		; 13 44
	ora $C3A4.w,Y		; 19 A4 C3
	bit $8172.w		; 2C 72 81
	dec $C251.w,X		; DE 51 C2
	eor $4E3C.w		; 4D 3C 4E
	plb		; AB
	cmp $EBA5DA.l		; CF DA A5 EB
	sta $7DD2.w,X		; 9D D2 7D
	inc A		; 1A
	phx		; DA
	ror $F281.w		; 6E 81 F2
	brk $25.b		; 00 25
	bcc  57.b		; 90 39
	brk $1A.b		; 00 1A
	rti		; 40

	eor $20.b,S		; 43 20
	rti		; 40

	ldx $27.b		; A6 27
	rti		; 40

	cpy $71.b		; C4 71
	bpl  32.b		; 10 20
	sta $072E9F.l		; 8F 9F 2E 07
	sty $85.b		; 84 85
	sty $BC.b,X		; 94 BC
	sta [$D3.b],Y		; 97 D3
	php		; 08
	and $0C.b,S		; 23 0C
	sta $9B.b,S		; 83 9B
	mvp $00,$62		; 44 62 00
	tsx		; BA
	eor ($54.b,X)		; 41 54
	rol A		; 2A
	.db $42, $21		; 42 21
	plp		; 28
	mvp $0A,$D4		; 44 D4 0A
	mvn $4D,$37		; 54 37 4D
	ldx $B943.w,Y		; BE 43 B9
	bvc  92.b		; 50 5C
	cmp [$21.b],Y		; D7 21
	ror $45.b,X		; 76 45
	plx		; FA
	cmp $FEA8.w		; CD A8 FE
	iny		; C8
	brk $49.b		; 00 49
	jsr $3244.w		; 20 44 32
	lda ($02.b,X)		; A1 02
	cmp $12AC10.l		; CF 10 AC 12
	jsr $0112.w		; 20 12 01
	cop $9C.b		; 02 9C
	asl $712E.w,X		; 1E 2E 71
	ldy #$59F3.w		; A0 F3 59
	jmp $9F7FB3.l		; 5C B3 7F 9F
	bit $54E7.w,X		; 3C E7 54
	clv		; B8
	.db $62, $F1, $00		; 62 F1 00
	txa		; 8A
	tsb $88.b		; 04 88
	trb $B3.b		; 14 B3
	brk $90.b		; 00 90
	brk $D7.b		; 00 D7
	brk $AA.b		; 00 AA
	ora ($8D.b,X)		; 01 8D
	bpl  91.b		; 10 5B
	xba		; EB
	eor [$84.b],Y		; 57 84
	txa		; 8A
	sta $EC1416.l,X		; 9F 16 14 EC
	cpy #$22EA.w		; C0 EA 22
	bpl  94.b		; 10 5E
	tax		; AA
	adc ($04.b,X)		; 61 04
	bpl 122.b		; 10 7A
	ora ($42.b,X)		; 01 42
	jsr $00EF.w		; 20 EF 00
	inc $DD01.w,X		; FE 01 DD
	brk $A1.b		; 00 A1
	lsr $9E.b		; 46 9E
	brk $0D.b		; 00 0D
	.db $82, $8A, $E6		; 82 8A E6
	bit $ABBA.w		; 2C BA AB
	ldy $A8.b		; A4 A8
	dex		; CA
	stx $A4.b,Y		; 96 A4
	lda $B3.b,X		; B5 B3
	ldx #$5527.w		; A2 27 55
	plp		; 28
	clc		; 18
	and ($45.b,X)		; 21 45
	bra  27.b		; 80 1B
	rti		; 40

	and ($04.b),Y		; 31 04
	eor $004C10.l		; 4F 10 4C 00
	cld		; D8
	brk $8C.b		; 00 8C
	bpl -100.b		; 10 9C
	and $1243.w,Y		; 39 43 12
	ora $478E.w,Y		; 19 8E 47
	phy		; 5A
	bit #$68.b		; 89 68
	trb $B3.b		; 14 B3
	eor $A9.b,X		; 55 A9
	sbc [$08.b]		; E7 08
.ACCU 16
	rep #$24		; C2 24
	sbc $7110.w		; ED 10 71
	brk $87.b		; 00 87
	plp		; 28
	sta [$00.b],Y		; 97 00
	tsb $5642.w		; 0C 42 56
	brk $ED.b		; 00 ED
	sta $129166.l		; 8F 66 91 12
	cpx $4102.w		; EC 02 41
	ora $A7D8.w		; 0D D8 A7
	rol $2004.w,X		; 3E 04 20
	asl $38.b		; 06 38
	bvs   0.b		; 70 00
	ror $1300.w		; 6E 00 13
	ldy #$40BE.w		; A0 BE 40
	and [$10.b]		; 27 10
	cmp $00.b		; C5 00
	cmp $22C500.l,X		; DF 00 C5 22
	asl $CA11.w		; 0E 11 CA
	iny		; C8
	cpx #$F284.w		; E0 84 F2
	ora $892996.l		; 0F 96 29 89
	tas		; 1B
	asl $FA.b,X		; 16 FA
	bvs -40.b		; 70 D8
	inc $18.b		; E6 18
	and [$00.b],Y		; 37 00
	tad		; 5B
	jsr $08F0.w		; 20 F0 08
	dec $10.b		; C6 10
	cpy $20.b		; C4 20
	ora $00.b		; 05 00
	and [$08.b]		; 27 08
	plb		; AB
	stz $67.b		; 64 67
	lda $A40D.w		; AD 0D A4
	sed		; F8
	inc A		; 1A
	.db $62, $80, $AE		; 62 80 AE
	rti		; 40

	trb $7E40.w		; 1C 40 7E
	sbc ($70.b,X)		; E1 70
	cmp $9CDF6D.l,X		; DF 6D DF 9C
	xce		; FB
	dec A		; 3A
	sbc [$B8.b]		; E7 B8
	sbc $A8FF89.l,X		; FF 89 FF A8
	sbc $D99F64.l,X		; FF 64 9F D9
	ora ($7F.b),Y		; 11 7F
	sta ($8E.b),Y		; 91 8E
	sbc ($DB.b,S),Y		; F3 DB
.ACCU 8
.INDEX 8
	sep #$77		; E2 77
	php		; 08
	inc $F739.w		; EE 39 F7
	bpl  13.b		; 10 0D
	cmp ($11.b,X)		; C1 11
	inc $EE11.w		; EE 11 EE
	.db $82, $7D, $C2		; 82 7D C2
	and $FF00.w,X		; 3D 00 FF
	plp		; 28
	cmp [$10.b],Y		; D7 10
	sbc $A8FE01.l		; EF 01 FE A8
	and ($9A.b,S),Y		; 33 9A
	ora [$4F.b]		; 07 4F
	ora ($7E.b),Y		; 11 7E
	ora ($AA.b)		; 12 AA
	dex		; CA
	ora $6DD8.w,Y		; 19 D8 6D
	adc ($93.b),Y		; 71 93
	jsl $02DF20.l		; 22 20 DF 02
	sbc $FE01.w,X		; FD 01 FE
	ora ($ED.b)		; 12 ED
	txa		; 8A
	adc $18.b,X		; 75 18
	sbc [$61.b]		; E7 61
	stz $FD02.w,X		; 9E 02 FD
	eor ($9C.b)		; 52 9C
	ldy $EE.b		; A4 EE
	ror $0D.b,X		; 76 0D
	sbc ($8B.b),Y		; F1 8B
	sei		; 78
	pld		; 2B
	sbc $68.b		; E5 68
	beq  35.b		; F0 23
	cmp $DA.b		; C5 DA
	bpl -17.b		; 10 EF
	ldy $5B.b		; A4 5B
	tsb $FB.b		; 04 FB
	sta ($7E.b,X)		; 81 7E
	plp		; 28
	cmp [$60.b],Y		; D7 60
	sta $C0DF20.l,X		; 9F 20 DF C0
	and $7A88A2.l,X		; 3F A2 88 7A
	sbc ($F3.b,X)		; E1 F3
	trb $0CEB.w		; 1C EB 0C
	cmp $A30A.w,Y		; D9 0A A3
	adc $E5.b		; 65 E5
	ora ($26.b),Y		; 11 26
	eor $80.b,S		; 43 80
	adc $109F60.l,X		; 7F 60 9F 10
	sbc $08F708.l		; EF 08 F7 08
	sbc [$20.b],Y		; F7 20
	dec $FE01.w,X		; DE 01 FE
	cop $FC.b		; 02 FC
	ldy $8E72.w		; AC 72 8E
	cpx #$6D.b		; E0 6D
	ora ($7F.b,X)		; 01 7F
	tad		; 5B
	rep #$0C		; C2 0C
	stx $AD.b,Y		; 96 AD
	and ($30.b,X)		; 21 30
	stx $89.b		; 86 89
	tsb $8B.b		; 04 8B
	sta ($5E.b,X)		; 81 5E
	eor ($AE.b),Y		; 51 AE
	ror $6180.w		; 6E 80 61
	stx $94.b,Y		; 96 94
	.db $62, $80, $4F		; 62 80 4F
	brk $7E.b		; 00 7E
	adc $4454A9.l,X		; 7F A9 54 44
	ora $E32D.w,Y		; 19 2D E3
	lda ($49.b,X)		; A1 49
	pld		; 2B
	eor $168F.w		; 4D 8F 16
	adc $E0.b,X		; 75 E0
	eor $8472.w,X		; 5D 72 84
	rol $89.b,X		; 36 89
	eor ($80.b,S),Y		; 53 80
	xce		; FB
	tsb $50.b		; 04 50
	sty $71.b		; 84 71
	brk $1A.b		; 00 1A
	sta ($02.b,X)		; 81 02
	ldy #$04.b		; A0 04
	pei ($95.b)		; D4 95
	cmp $1BDD.w,Y		; D9 DD 1B
	sty $09.b		; 84 09
	txy		; 9B
	stz $7928.w,X		; 9E 28 79
	rol A		; 2A
	plb		; AB
	bvc -77.b		; 50 B3
	pld		; 2B
	rti		; 40

	asl $20.b		; 06 20
	cpx #$04.b		; E0 04
	inc $00.b,X		; F6 00
	adc ($00.b,X)		; 61 00
	ldy $02.b		; A4 02
	stz $00.b,X		; 74 00
	jmp $B420.w		; 4C 20 B4
	sta $13.b,X		; 95 13
	stx $11.b		; 86 11
	cmp $24.b		; C5 24
	dey		; 88
	adc [$25.b]		; 67 25
	inc $37.b,X		; F6 37
	txa		; 8A
	ora #$8A.b		; 09 8A
	plp		; 28
	jmp $3922.w		; 4C 22 39
	mvp $56,$28		; 44 28 56
	eor [$20.b],Y		; 57 20
	dey		; 88
	eor ($92.b)		; 52 92
	pha		; 48
	inc $10.b		; E6 10
	cmp [$20.b],Y		; D7 20
	stz $AACA.w		; 9C CA AA
	asl $0167.w,X		; 1E 67 01
	adc ($23.b,S),Y		; 73 23
	rts		; 60

	brk $04.b		; 00 04
	and [$81.b],Y		; 37 81
	ora $48B4.w,Y		; 19 B4 48
	ora $32.b		; 05 32
	sbc $10.b,S		; E3 10
	cpx $FE12.w		; EC 12 FE
	brk $DE.b		; 00 DE
	and ($C8.b,X)		; 21 C8
	brk $C6.b		; 00 C6
	jsr $40B7.w		; 20 B7 40
	ldy $02.b,X		; B4 02
	ora ($3E.b),Y		; 11 3E
	ror A		; 6A
	trb $74.b		; 14 74
	phb		; 8B
	eor $D61C.w,X		; 5D 1C D6
	and [$F2.b],Y		; 37 F2
	ora $2E13.w,X		; 1D 13 2E
	cmp ($3E.b,X)		; C1 3E
	sta ($66.b,X)		; 81 66
	sbc #$12.b		; E9 12
	mvn $EB,$21		; 54 21 EB
	brk $C0.b		; 00 C0
	and #$D2.b		; 29 D2
	jsr $20D3.w		; 20 D3 20
	and ($40.b)		; 32 40
	lda $C5.b,S		; A3 C5
	bit #$29.b		; 89 29
	ldx $64.b,Y		; B6 64
	stx $6A.b,Y		; 96 6A
	lsr A		; 4A
	jmp ($2A4E.w,X)		; 7C 4E 2A
	ora [$58.b],Y		; 17 58
	and [$98.b]		; 27 98
	sec		; 38
	cop $D6.b		; 02 D6
	jsr $00BB.w		; 20 BB 00
	sta $40.b,X		; 95 40
	cmp ($02.b,X)		; C1 02
	sta $40.b,X		; 95 40
	sta $62.b		; 85 62
	ldx $A8CC.w		; AE CC A8
	inc $9841.w		; EE 41 98
	ora [$A3.b],Y		; 17 A3
	tsb $0D.b		; 04 0D
	jmp.w [$1BA7]		; DC A7 1B
	tda		; 7B
	bra 122.b		; 80 7A
	and [$00.b],Y		; 37 00
	ora ($06.b),Y		; 11 06
	ror $01.b		; 66 01
	ora $B240.w,X		; 1D 40 B2
	rti		; 40

	cli		; 58
	brk $84.b		; 00 84
	rti		; 40

	sta $00.b		; 85 00
	sta ($9F.b,S),Y		; 93 9F
	sta $76.b		; 85 76
	eor $37BA.w,Y		; 59 BA 37
	cmp [$E8.b]		; C7 E8
	sbc [$54.b]		; E7 54
	rts		; 60

	pla		; 68
	tya		; 98
	ldx #$6A.b		; A2 6A
	jsl $108944.l		; 22 44 89 10
	eor $00.b		; 45 00
	sec		; 38
	brk $58.b		; 00 58
	brk $9F.b		; 00 9F
	jsr $4027.w		; 20 27 40
	sta ($14.b,X)		; 81 14
	adc #$58.b		; 69 58
	sbc #$F6.b		; E9 F6
	and $852F.w,X		; 3D 2F 85
	sta $2FD5.w,X		; 9D D5 2F
	cmp [$2F.b]		; C7 2F
	tya		; 98
	sbc [$01.b]		; E7 01
	ora #$81.b		; 09 81
	rol $01.b,X		; 36 01
	tsb $00D1.w		; 0C D1 00
	.db $62, $00, $D0		; 62 00 D0
	brk $D0.b		; 00 D0
	brk $18.b		; 00 18
	brk $F6.b		; 00 F6
	brk $0B.b		; 00 0B
	jmp $9D15DB.l		; 5C DB 15 9D
	ror $84.b		; 66 84
	eor $1EA6.w		; 4D A6 1E
	pha		; 48
	pla		; 68
	clc		; 18
	rol $1171.w		; 2E 71 11
	lda $00.b,S		; A3 00
	dex		; CA
	jsr $009D.w		; 20 9D 00
	and ($C8.b)		; 32 C8
	cmp ($30.b,X)		; C1 30
	sta [$00.b],Y		; 97 00
	cmp ($10.b,X)		; C1 10
	inc $BA00.w		; EE 00 BA
	lda ($7A.b,X)		; A1 7A
	stz $DB.b		; 64 DB
	adc $97.b,X		; 75 97
	bvc  80.b		; 50 50
	sta ($2B.b,X)		; 81 2B
	bcs  63.b		; B0 3F
	lda $ED66.w		; AD 66 ED
	inx		; E8
	cmp $FDDFFC.l,X		; DF FC DF FD
	inc $EF5C.w		; EE 5C EF
	bit #$FF.b		; 89 FF
	ldy $AFFF.w,X		; BC FF AF
	dec $FC.b,X		; D6 FC
	sbc $3D8909.l,X		; FF 09 89 3D
	clc		; 18
	cpx $711B.w		; EC 1B 71
	php		; 08
	stp		; DB
	sep #$0E		; E2 0E
	sbc $FF.b,S		; E3 FF
	sta ($C9.b),Y		; 91 C9
	ora ($09.b),Y		; 11 09
	inc $18.b,X		; F6 18
	sbc [$08.b]		; E7 08
	sbc [$00.b],Y		; F7 00
	sbc $023DC2.l,X		; FF C2 3D 02
	sbc $6E91.w,X		; FD 91 6E
	ora ($FE.b,X)		; 01 FE
	xce		; FB
	cop $4B.b		; 02 4B
	bit $19.b,X		; 34 19
	cld		; D8
	tax		; AA
	dex		; CA
	ror $5F1E.w,X		; 7E 1E 5F
	ora $9E.b,S		; 03 9E
	ora $A0.b,S		; 03 A0
	and ($02.b,S),Y		; 33 02
	sbc $FF00.w,X		; FD 00 FF
	clc		; 18
	sbc [$8A.b]		; E7 8A
	adc $1E.b,X		; 75 1E
	sbc ($03.b,X)		; E1 03
	jsr ($FD02.w,X)		; FC 02 FD
	jsr $C3DF.w		; 20 DF C3
	cmp $4173.w,Y		; D9 73 41
	sbc ($70.b,X)		; E1 70
	eor $B93A.w		; 4D 3A B9
	ora #$26.b		; 09 26
	sbc $A4.b		; E5 A4
	dec $9C52.w		; CE 52 9C
	cmp ($3E.b,X)		; C1 3E
	eor ($BE.b,X)		; 41 BE
	rts		; 60

	sta $09F708.l,X		; 9F 08 F7 09
	inc $24.b,X		; F6 24
	stp		; DB
	sty $7B.b		; 84 7B
	bpl -17.b		; 10 EF
	stz $C0.b,X		; 74 C0
	bvs -60.b		; 70 C4
	and $47.b,S		; 23 47
	lda #$59.b		; A9 59
	txa		; 8A
	eor $87B1.w		; 4D B1 87
	plx		; FA
	mvp $CA,$A2		; 44 A2 CA
	rti		; 40

	lda $03BF40.l,X		; BF 40 BF 03
	jsr ($F609.w,X)		; FC 09 F6
	php		; 08
	sbc [$81.b],Y		; F7 81
	ror $BF40.w,X		; 7E 40 BF
	.db $82, $7D, $7B		; 82 7D 7B
	bcc 124.b		; 90 7C
	sty $C3.b,X		; 94 C3
	clv		; B8
	.db $42, $8B		; 42 8B
	lsr A		; 4A
	sbc $D128.w,Y		; F9 28 D1
	and $C3.b,S		; 23 C3
	eor ($1F.b),Y		; 51 1F
	tsb $EB.b		; 04 EB
	ora $6A.b,X		; 15 6A
	cpy #$37.b		; C0 37
	jsl $374854.l		; 22 54 48 37
	bit $DA.b		; 24 DA
	ora $669170.l		; 0F 70 91 66
	rti		; 40

	bvc  24.b		; 50 18
	ora ($C0.b,S),Y		; 13 C0
	cmp $026F.w		; CD 6F 02
	ora ($E3.b)		; 12 E3
	adc $ECF883.l		; 6F 83 F8 EC
	jmp ($AF1A.w,X)		; 7C 1A AF
	brk $78.b		; 00 78
	sta $A2.b		; 85 A2
	trb $FF.b		; 14 FF
	brk $06.b		; 00 06
	clv		; B8
	eor $158220.l,X		; 5F 20 82 15
	stz $83.b,X		; 74 83
	stz $F4.b,X		; 74 F4
	asl A		; 0A
	rtl		; 6B

	plp		; 28
	ora $9DBA.w,Y		; 19 BA 9D
	brk $B9.b		; 00 B9
	sed		; F8
	asl $7997.w,X		; 1E 97 79
	and $CB.b		; 25 CB
	ora $209400.l		; 0F 00 94 20
	cpx $02.b		; E4 02
	.db $42, $21		; 42 21
	rti		; 40

	stx $C0.b		; 86 C0
	and ($84.b,X)		; 21 84
	cop $14.b		; 02 14
	rts		; 60

	cop $0B.b		; 02 0B
	plx		; FA
	adc $A8.b,S		; 63 A8
	ora ($14.b,S),Y		; 13 14
	rol $4854.w		; 2E 54 48
	lsr $80.b		; 46 80
	lsr $BD.b,X		; 56 BD
.INDEX 8
	sep #$95		; E2 95
	stz $89.b,X		; 74 89
	jmp.w [$EC00]		; DC 00 EC
	brk $D0.b		; 00 D0
	and ($E7.b,X)		; 21 E7
	bpl 127.b		; 10 7F
	brk $42.b		; 00 42
	ora ($4A.b,X)		; 01 4A
	bmi -16.b		; 30 F0
	sec		; 38
	lda $3F.b		; A5 3F
	ror $57.b		; 66 57
	eor $4F.b,S		; 43 4F
	ora [$A5.b],Y		; 17 A5
	stz $58.b,X		; 74 58
	clc		; 18
	rtl		; 6B

	sbc $04C3CA.l		; EF CA C3 04
	cpy $00.b		; C4 00
	dex		; CA
	jsr $00B2.w		; 20 B2 00
	trb $A642.w		; 1C 42 A6
	ora ($94.b,X)		; 01 94
	jsr $0174.w		; 20 74 01
	bmi -64.b		; 30 C0
	sta ($3E.b,X)		; 81 3E
	adc $1B.b,S		; 63 1B
	pei ($90.b)		; D4 90
	eor $0D.b,X		; 55 0D
	sei		; 78
	tsa		; 3B
	inc $04.b		; E6 04
	tya		; 98
	xba		; EB
	and $438000.l,X		; 3F 00 80 43
	rts		; 60

	stz $01EE.w		; 9C EE 01
	sbc ($00.b)		; F2 00
	cpy #$04.b		; C0 04
	ror A		; 6A
	sta ($04.b),Y		; 91 04
	ora ($F1.b)		; 12 F1
	bmi  30.b		; 30 1E
	ora $6D88.w,Y		; 19 88 6D
	ldx $5A.b,Y		; B6 5A
	dec $EB.b,X		; D6 EB
	phb		; 8B
	cld		; D8
	lda ($68.b,X)		; A1 68
	stx $4FF2.w		; 8E F2 4F
	bra -58.b		; 80 C6
	jsr $8012.w		; 20 12 80
	sta $60.b		; 85 60
	mvn $05,$00		; 54 00 05
	jsl $090097.l		; 22 97 00 09
	bit $81.b		; 24 81
	adc #$FF.b		; 69 FF
	rol $3FC8.w,X		; 3E C8 3F
	cmp $20.b,X		; D5 20
	asl $75.b,X		; 16 75
	bpl -52.b		; 10 CC
	rol $8A97.w		; 2E 97 8A
	adc $96.b,S		; 63 96
	brk $45.b		; 00 45
	bra -64.b		; 80 C0
	bpl  95.b		; 10 5F
	bra -118.b		; 80 8A
	rti		; 40

	and $50.b,S		; 23 50
	pla		; 68
	bra -100.b		; 80 9C
	jsr $23B7.w		; 20 B7 23
	rti		; 40

	stz $10.b,X		; 74 10
	ora ($AA.b),Y		; 11 AA
.ACCU 8
.INDEX 8
	sep #$34		; E2 34
	xce		; FB
	cmp ($2E.b),Y		; D1 2E
	sta $46D518.l,X		; 9F 18 D5 46
	cld		; D8
	tsb $8B.b		; 04 8B
	bit $EA.b		; 24 EA
	tsb $1F.b		; 04 1F
	rti		; 40

	tsb $02.b		; 04 02
	cmp ($08.b),Y		; D1 08
	sbc $B902.w		; ED 02 B9
	brk $43.b		; 00 43
	asl $F898.w,X		; 1E 98 F8
	cmp [$36.b]		; C7 36
	eor $23.b,X		; 55 23
	ora $A4ED.w		; 0D ED A4
	sty $69.b		; 84 69
	ply		; 7A
	eor $00E34C.l,X		; 5F 4C E3 00
	ora [$00.b]		; 07 00
	iny		; C8
	ora ($DC.b,X)		; 01 DC
	brk $12.b		; 00 12
	brk $73.b		; 00 73
	php		; 08
	sta $00.b		; 85 00
	lda ($00.b,S),Y		; B3 00
	eor $0F20.w,X		; 5D 20 0F
	rol A		; 2A
	cli		; 58
	cpy $8F16.w		; CC 16 8F
	mvn $89,$1D		; 54 1D 89
	rol $41F2.w,X		; 3E F2 41
	ora $07.b,S		; 03 07
	cmp ($2C.b,S),Y		; D3 2C
	cmp $00.b,X		; D5 00
	and $10.b,S		; 23 10
	bvs -128.b		; 70 80
	beq   2.b		; F0 02
	cmp ($00.b,X)		; C1 00
	ldx $F800.w,Y		; BE 00 F8
	brk $CB.b		; 00 CB
	ldy $42.b		; A4 42
	ldx #$A2.b		; A2 A2
	lsr $886E.w		; 4E 6E 88
	and ($BA.b),Y		; 31 BA
	and $3F17C6.l,X		; 3F C6 17 3F
	cmp $7F9216.l		; CF 16 92 7F
	ldx #$FD.b		; A2 FD
	dec $9AFD.w		; CE FD 9A
	sbc [$B4.b],Y		; F7 B4
	sbc $97FBC6.l,X		; FF C6 FB 97
	inc $FF76.w,X		; FE 76 FF
	cmp ($11.b,X)		; C1 11
	ldy $34.b,X		; B4 34
	stz $ED18.w,X		; 9E 18 ED
	cmp $D54253.l,X		; DF 53 42 D5
	.db $62, $5C, $63		; 62 5C 63
	cmp ($52.b),Y		; D1 52
	ora ($FE.b,X)		; 01 FE
	bit $CB.b,X		; 34 CB
	clc		; 18
	sbc [$CD.b]		; E7 CD
	and ($42.b)		; 32 42
	lda $BF40.w,X		; BD 40 BF
	rti		; 40

	lda $4FAF50.l,X		; BF 50 AF 4F
	cmp #$AA.b		; C9 AA
	iny		; C8
	lda ($D4.b)		; B2 D4
	tsx		; BA
	dec $467E.w		; CE 7E 46
	eor $0F.b		; 45 0F
	adc #$7E.b		; 69 7E
	lda $494C.w		; AD 4C 49
	ldx $88.b,Y		; B6 88
	adc [$90.b],Y		; 77 90
	adc $46758A.l		; 6F 8A 75 46
	lda $FA05.w,Y		; B9 05 FA
	pla		; 68
	sta [$0C.b],Y		; 97 0C
	sbc ($A7.b,S),Y		; F3 A7
	bcc -121.b		; 90 87
	pea $6496.w		; F4 96 64
	lda $65.b,X		; B5 65
	and #$75.b		; 29 75
	inc $4F56.w,X		; FE 56 4F
	stz $EA.b,X		; 74 EA
	eor $80.b		; 45 80
	adc $047B84.l,X		; 7F 84 7B 04
	xce		; FB
	and $DA.b		; 25 DA
	and ($DE.b,X)		; 21 DE
	lsr $A9.b,X		; 56 A9
	mvp $40,$BB		; 44 BB 40
	lda $E2DCBA.l,X		; BF BA DC E2
	bit $06.b		; 24 06
	rol $57.b		; 26 57
	ora $DC.b,S		; 03 DC
	and [$69.b]		; 27 69
	eor $9A6E49.l		; 4F 49 6E 9A
	sty $98.b		; 84 98
	adc [$20.b]		; 67 20
	cmp $03F906.l,X		; DF 06 F9 03
	jsr ($FB04.w,X)		; FC 04 FB
	eor #$B6.b		; 49 B6
	pha		; 48
	lda [$80.b],Y		; B7 80
	adc $A610DE.l,X		; 7F DE 10 A6
	brk $3E.b		; 00 3E
	tsb $F4E1.w		; 0C E1 F4
	sbc $A631.w		; ED 31 A6
	tsb $55.b		; 04 55
	rol $4C.b		; 26 4C
	sta $E31C.w,X		; 9D 1C E3
	trb $EB.b		; 14 EB
	sta $6872.w		; 8D 72 68
	ora [$21.b],Y		; 17 21
	dec $38C7.w,X		; DE C7 38
	ora $FA.b		; 05 FA
	jsl $A9DF51.l		; 22 51 DF A9
	pea $FD85.w		; F4 85 FD
	cmp ($88.b,X)		; C1 88
	ldy $41F2.w		; AC F2 41
	phb		; 8B
	lda ($BE.b,S),Y		; B3 BE
	bit $DC.b		; 24 DC
	clv		; B8
	bne  38.b		; D0 26
	cpy #$3B.b		; C0 3B
	rol A		; 2A
	trb $D1.b		; 14 D1
	jsl $4C9926.l		; 22 26 99 4C
	bmi  90.b		; 30 5A
	sta ($93.b,X)		; 81 93
	mvp $98,$5B		; 44 5B 98
	lda $6B33.w,Y		; B9 33 6B
	tsb $B9.b		; 04 B9
	inc $A3.b		; E6 A3
	adc $C1C67D.l		; 6F 7D C6 C1
	lda $6489A6.l		; AF A6 89 64
	ora $49.b,S		; 03 49
	sty $5A.b		; 84 5A
	lda ($38.b,X)		; A1 38
	ora $91.b,S		; 03 91
	brk $2C.b		; 00 2C
	ora ($91.b),Y		; 11 91
	.db $62, $C6, $39		; 62 C6 39
	and $54.b,S		; 23 54
	cmp $AD.b,S		; C3 AD
	sta $77.b,X		; 95 77
	txy		; 9B
	dec $28.b		; C6 28
	asl $BC.b,X		; 16 BC
	ldx $3E44.w,Y		; BE 44 3E
	eor [$42.b],Y		; 57 42
	tax		; AA
	eor ($42.b,X)		; 41 42
	bpl -120.b		; 10 88
	jsr $1128.w		; 20 28 11
	tay		; A8
	eor ($70.b,X)		; 41 70
	ora ($C1.b,X)		; 01 C1
	bpl -83.b		; 10 AD
	bpl 111.b		; 10 6F
	cpx $D868.w		; EC 68 D8
	cpy #$68.b		; C0 68
	rep #$CF		; C2 CF
	cmp ($A1.b)		; D2 A1
	plp		; 28
	sta $C63215.l,X		; 9F 15 32 C6
	eor [$56.b],Y		; 57 56
	sta ($26.b,X)		; 81 26
	ora ($16.b,X)		; 01 16
	lda ($30.b,X)		; A1 30
	tsb $DE.b		; 04 DE
	brk $60.b		; 00 60
	bpl -99.b		; 10 9D
	rts		; 60

	rol A		; 2A
	bcc  33.b		; 90 21
	inc $D176.w,X		; FE 76 D1
	rol A		; 2A
	sta $700B.w		; 8D 0B 70
	ora $E7F4C6.l		; 0F C6 F4 E7
	rol A		; 2A
	bvs -53.b		; 70 CB
	rol $8900.w,X		; 3E 00 89
	rol $7280.w		; 2E 80 72
	sta ($07.b,X)		; 81 07
	tay		; A8
	and $001880.l,X		; 3F 80 18 00
	sta $458200.l		; 8F 00 82 45
	tax		; AA
	cmp ($C6.b),Y		; D1 C6
	adc $AA.b,S		; 63 AA
	jmp ($E426.w)		; 6C 26 E4
	dec $E0.b,X		; D6 E0
	inx		; E8
	nop		; EA
	ora ($E7.b)		; 12 E7
	ror A		; 6A
	lda ($2E.b,S),Y		; B3 2E
	brk $0C.b		; 00 0C
	bcc -109.b		; 90 93
	rti		; 40

	bpl  11.b		; 10 0B
	stp		; DB
	tsb $55.b		; 04 55
	brk $18.b		; 00 18
	mvp $01,$6C		; 44 6C 01
	inc $ED.b		; E6 ED
	and $1E.b,X		; 35 1E
	sta ($C9.b)		; 92 C9
	pha		; 48
	phx		; DA
	adc ($78.b,S),Y		; 73 78
	iny		; C8
	and ($AB.b,S),Y		; 33 AB
	cpy $4F.b		; C4 4F
	dec $D6.b		; C6 D6
	brk $21.b		; 00 21
	cpy #$26.b		; C0 26
	bpl  65.b		; 10 41
	ldy $17.b		; A4 17
	dey		; 88
	dey		; 88
	stz $3B.b		; 64 3B
	brk $53.b		; 00 53
	plp		; 28
	eor [$E4.b],Y		; 57 E4
	cmp ($21.b),Y		; D1 21
	sta $20F90B.l		; 8F 0B F9 20
	adc $536F.w,Y		; 79 6F 53
	jsl $84E3B8.l		; 22 B8 E3 84
	adc $590219.l,X		; 7F 19 02 59
	stx $F2.b		; 86 F2
	tsb $4B.b		; 04 4B
	sty $F0.b,X		; 94 F0
	brk $DD.b		; 00 DD
	brk $1C.b		; 00 1C
	brk $80.b		; 00 80
	brk $24.b		; 00 24
	bvs   5.b		; 70 05
	bmi -93.b		; 30 A3
	sta $1D.b,S		; 83 1D
	sta $330B43.l		; 8F 43 0B 33
	lda $B566.w,X		; BD 66 B5
	sbc $8F9F.w		; ED 9F 8F
	brk $CF.b		; 00 CF
	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $F4.b		; 00 F4
	brk $42.b		; 00 42
	bra  74.b		; 80 4A
	brk $60.b		; 00 60
	brk $38.b		; 00 38
	inc A		; 1A
	asl $06.b,X		; 16 06
	lda ($B9.b),Y		; B1 B9
	and [$B3.b]		; 27 B3
	ply		; 7A
	ora [$C0.b]		; 07 C0
	stx $8A.b		; 86 8A
	sty $B116.w		; 8C 16 B1
	sbc $00.b		; E5 00
	sbc $5600.w,Y		; F9 00 56
	php		; 08
	adc $F800.w		; 6D 00 F8
	brk $79.b		; 00 79
	brk $73.b		; 00 73
	brk $4E.b		; 00 4E
	brk $59.b		; 00 59
	cpx #$C7.b		; E0 C7
	and [$20.b]		; 27 20
	lsr $F7.b		; 46 F7
	bit $3C6A.w,X		; 3C 6A 3C
	stz $AC62.w		; 9C 62 AC
	ora $3C73.w,Y		; 19 73 3C
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	lda [$FE.b]		; A7 FE
	sbc [$FF.b]		; E7 FF
	sbc $68CF.w,X		; FD CF 68
	sbc [$E5.b],Y		; F7 E5
	sbc $F0F79F.l,X		; FF 9F F7 F0
	cmp $6AAC3C.l		; CF 3C AC 6A
	and $0C0A.w,X		; 3D 0A 0C
	phb		; 8B
	cmp $8D.b		; C5 8D
	adc $2E65.w		; 6D 65 2E
	jmp.w [$EBA3]		; DC A3 EB
	tsb $AC.b		; 04 AC
	cmp ($28.b,S),Y		; D3 28
	cmp [$88.b],Y		; D7 88
	sbc [$81.b],Y		; F7 81
	ror $F28D.w,X		; 7E 8D F2
	ldy $DB.b		; A4 DB
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	eor $AABA.w		; 4D BA AA
	pei ($A3.b)		; D4 A3
	cmp #$8BEF.w		; C9 EF 8B
	pld		; 2B
	stx $BC.b		; 86 BC
	plx		; FA
	cpy #$3519.w		; C0 19 35
	and ($08.b)		; 32 08
	sbc [$80.b],Y		; F7 80
	adc $8B7E81.l,X		; 7F 81 7E 8B
	stz $02.b,X		; 74 02
	sbc $47B8.w,X		; FD B8 47
	brk $FF.b		; 00 FF
	bmi -49.b		; 30 CF
	nop		; EA
	ora #$CCAB.w		; 09 AB CC
	ora ($C8.b,S),Y		; 13 C8
	ora $E3F338.l		; 0F 38 F3 E3
	dec $D9.b,X		; D6 D9
	ora $F435.w,Y		; 19 35 F4
	brk $08.b		; 00 08
	sbc [$88.b],Y		; F7 88
	adc [$00.b],Y		; 77 00
	sbc $E3F708.l,X		; FF 08 F7 E3
	trb $2FD0.w		; 1C D0 2F
	ora ($EE.b),Y		; 11 EE
	brk $FF.b		; 00 FF
	adc $47A1EA.l,X		; 7F EA A1 47
	rtl		; 6B

	adc ($A8.b,X)		; 61 A8
	lda [$14.b],Y		; B7 14
	and [$47.b]		; 27 47
	sta $33.b,X		; 95 33
	eor $8D.b,X		; 55 8D
	stx $956A.w		; 8E 6A 95
	ora ($FE.b,X)		; 01 FE
	adc ($9E.b,X)		; 61 9E
	ldy #$045F.w		; A0 5F 04
	xce		; FB
	ora $FA.b		; 05 FA
	ora ($EE.b),Y		; 11 EE
	sty $7F73.w		; 8C 73 7F
	tda		; 7B
	phd		; 0B
	mvp $B1,$1A		; 44 1A B1
	pld		; 2B
	lda ($1B.b)		; B2 1B
	.db $42, $EB		; 42 EB
	lda $A2.b,S		; A3 A2
	wai		; CB
	inx		; E8
	stx $2B.b		; 86 2B
	sty $00.b		; 84 00
	sbc $28CB14.l,X		; FF 14 CB 28
	cmp $32.b,X		; D5 32
	cmp $44B9.w		; CD B9 44
	.db $82, $75, $81		; 82 75 81
	ror $192A.w,X		; 7E 2A 19
	rol $8C8F.w,X		; 3E 8F 8C
	cmp $10F238.l,X		; DF 38 F2 10
	dec A		; 3A
	lda [$EC.b],Y		; B7 EC
	tyx		; BB
	bit $38B7.w		; 2C B7 38
	ror $5A81.w		; 6E 81 5A
	and ($80.b,X)		; 21 80
	adc ($1C.b),Y		; 71 1C
	ora ($41.b,X)		; 01 41
	sty $A6.b		; 84 A6
	eor ($1A.b),Y		; 51 1A
	cmp ($A4.b,X)		; C1 A4
	eor $61.b,S		; 43 61
	rol $C4.b		; 26 C4
	ldx $84.b		; A6 84
	tsx		; BA
	trb $27.b		; 14 27
	dec $57.b,X		; D6 57
	brk $C1.b		; 00 C1
	adc $E5C8.w,Y		; 79 C8 E5
	sbc [$90.b]		; E7 90
	phk		; 4B
	php		; 08
	adc ($85.b),Y		; 71 85
	bvc -100.b		; 50 9C
	eor ($60.b,X)		; 41 60
	dey		; 88
	rol $59.b		; 26 59
	cli		; 58
	lda [$5C.b]		; A7 5C
	brk $1D.b		; 00 1D
	lsr $DD.b		; 46 DD
	txs		; 9A
	clv		; B8
	lda $00.b,X		; B5 00
	ora [$B5.b],Y		; 17 B5
	txa		; 8A
	sty $49C8.w		; 8C C8 49
	eor $96D9.w		; 4D D9 96
	lda ($58.b,X)		; A1 58
	and ($44.b,X)		; 21 44
	dex		; CA
	brk $88.b		; 00 88
	ror $75.b		; 66 75
	brk $26.b		; 00 26
	eor ($32.b),Y		; 51 32
	bra -23.b		; 80 E9
	brk $59.b		; 00 59
	lsr $DD.b		; 46 DD
	bcc 120.b		; 90 78
	sbc ($6A.b,X)		; E1 6A
	stx $C7.b,Y		; 96 C7
	jsl $34F495.l		; 22 95 F4 34
	sty $C0.b,X		; 94 C0
	ldy #$18A1.w		; A0 A1 18
	and $081640.l		; 2F 40 16 08
	pha		; 48
	and $DD.b		; 25 DD
	jsr $030C.w		; 20 0C 03
	tda		; 7B
	bra  85.b		; 80 55
	asl A		; 0A
	lda [$D2.b]		; A7 D2
	stz $AE.b,X		; 74 AE
	trb $225C.w		; 1C 5C 22
	ldx $F276.w,Y		; BE 76 F2
	cmp $7E.b		; C5 7E
	adc ($1A.b,S),Y		; 73 1A
	jmp.w [$2D1A]		; DC 1A 2D
	bpl  84.b		; 10 54
	ora ($A3.b,X)		; 01 A3
	rti		; 40

	eor $14.b,S		; 43 14
	pld		; 2B
	tsb $C4.b		; 04 C4
	ora ($F7.b,X)		; 01 F7
	brk $64.b		; 00 64
	sta ($CD.b,X)		; 81 CD
	cmp $8A5D18.l		; CF 18 5D 8A
	adc $9D546A.l		; 6F 6A 54 9D
	clc		; 18
	and [$06.b],Y		; 37 06
	and #$C729.w		; 29 29 C7
	stx $10.b		; 86 10
	jsr $8122.w		; 20 22 81
	bpl -96.b		; 10 A0
	plb		; AB
	brk $AF.b		; 00 AF
	rti		; 40

	sbc $DD00.w,X		; FD 00 DD
	cop $38.b		; 02 38
	eor ($95.b,X)		; 41 95
	sbc ($56.b)		; F2 56
	cmp $DD.b		; C5 DD
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	ldx #$8D01.w		; A2 01 8D
	pea $CA3F.w		; F4 3F CA
	and ($D7.b,X)		; 21 D7
	ldy $0D.b		; A4 0D
	brk $66.b		; 00 66
	ora $0C31.w,Y		; 19 31 0C
	trb $5241.w		; 1C 41 52
	plp		; 28
	sty $4A.b		; 84 4A
	dec $1B20.w,X		; DE 20 1B
	rti		; 40

	eor [$3C.b]		; 47 3C
	eor ($57.b)		; 52 57
	bit #$0982.w		; 89 82 09
	sta $96.b		; 85 96
	sbc ($C8.b)		; F2 C8
	sta $DF542B.l,X		; 9F 2B 54 DF
	bit $C7.b,X		; 34 C7
	brk $AA.b		; 00 AA
	brk $3D.b		; 00 3D
	rti		; 40

	ply		; 7A
	brk $0D.b		; 00 0D
	rti		; 40

	rti		; 40

	bmi -85.b		; 30 AB
	brk $59.b		; 00 59
	ldx #$6B23.w		; A2 23 6B
	pla		; 68
	dey		; 88
	stz $F14A.w		; 9C 4A F1
	ror $2314.w		; 6E 14 23
	lda $09.b,S		; A3 09
	jmp ($A75A.w,X)		; 7C 5A A7
	jmp $570094.l		; 5C 94 00 57
	jsr $00B5.w		; 20 B5 00
	sta ($00.b),Y		; 91 00
	pei ($08.b)		; D4 08
	inc $00.b,X		; F6 00
	lda $00.b		; A5 00
	sta [$20.b]		; 87 20
	bit $3000.w		; 2C 00 30
	tya		; 98
	adc $FA38.w,Y		; 79 38 FA
	.db $62, $B2, $EF		; 62 B2 EF
	ora $15.b		; 05 15
	brk $20.b		; 00 20
	dey		; 88
	pha		; 48
	sbc $006710.l		; EF 10 67 00
	cmp [$00.b],Y		; D7 00
	sta $08.b,X		; 95 08
	bpl   8.b		; 10 08
	nop		; EA
	brk $DB.b		; 00 DB
	tsb $BF.b		; 04 BF
	brk $AE.b		; 00 AE
	sbc ($DB.b,X)		; E1 DB
	cmp ($D8.b),Y		; D1 D8
	and $6A.b		; 25 6A
	phb		; 8B
	tad		; 5B
	lda $1A1DEE.l,X		; BF EE 1D 1A
	adc $93.b,S		; 63 93
	ror A		; 6A
	sbc ($DF.b),Y		; F1 DF
	sbc $FF3C2E.l,X		; FF 2E 3C FF
	txs		; 9A
	sbc $9F.b,X		; F5 9F
	jsr ($FFDC.w,X)		; FC DC FF
	inc $6EFD.w		; EE FD 6E
	sbc $5DD995.l,X		; FF 95 D9 5D
	sta $1996.w,Y		; 99 96 19
	ora $0D.b		; 05 0D
	cmp $F8.b		; C5 F8
	asl A		; 0A
	sta $4C.b,X		; 95 4C
	phb		; 8B
	adc $D16F.w		; 6D 6F D1
	inc $E619.w		; EE 19 E6
	bmi -17.b		; 30 EF
	ora $FA.b		; 05 FA
	cpx #$403F.w		; E0 3F 40
	sbc $6DF708.l,X		; FF 08 F7 6D
	lda ($EB.b)		; B2 EB
	cmp $72.b		; C5 72
	sty $8D.b		; 84 8D
	eor #$DA56.w		; 49 56 DA
	cmp ($9D.b,S),Y		; D3 9D
	asl $CB.b		; 06 CB
	and [$EE.b]		; 27 EE
	lda ($37.b,S),Y		; B3 37
	cmp ($3E.b,X)		; C1 3E
	brk $FF.b		; 00 FF
	ora #$52F6.w		; 09 F6 52
	lda $6E91.w		; AD 91 6E
	cop $FD.b		; 02 FD
	rol $D9.b		; 26 D9
	and ($CC.b,S),Y		; 33 CC
	sta ($56.b,S),Y		; 93 56
	lda $8073CC.l		; AF CC 73 80
	adc $C12B.w,X		; 7D 2B C1
	sta ($E7.b,X)		; 81 E7
	adc [$55.b]		; 67 55
	inx		; E8
	sta $66.b,X		; 95 66
	ora ($ED.b)		; 12 ED
	sty $0073.w		; 8C 73 00
	sbc $81D629.l,X		; FF 29 D6 81
	ror $9867.w,X		; 7E 67 98
	rti		; 40

	lda $47FB04.l,X		; BF 04 FB 47
	bra  96.b		; 80 60
	sta ($F1.b),Y		; 91 F1
	ora ($64.b,S),Y		; 13 64
	sty $87.b		; 84 87
	cpx $6B.b		; E4 6B
	mvn $81,$FE		; 54 FE 81
	stz $0025.w,X		; 9E 25 00
	sbc $11FF00.l,X		; FF 00 FF 11
	inc $FB04.w		; EE 04 FB
	sty $7B.b		; 84 7B
	rti		; 40

	lda $047F80.l,X		; BF 80 7F 04
	xce		; FB
	cpy $44.b		; C4 44
	rol A		; 2A
	iny		; C8
	sta $25DD.w,Y		; 99 DD 25
	and $C5E3.w		; 2D E3 C5
	mvn $B1,$25		; 54 25 B1
	cpy $0F.b		; C4 0F
	dec $42.b		; C6 42
	lda $F708.w,Y		; B9 08 F7
	txy		; 9B
	stz $23.b		; 64 23
	cld		; D8
	cmp ($3E.b,X)		; C1 3E
	tsb $FB.b		; 04 FB
	sta ($7E.b,X)		; 81 7E
	asl $F9.b		; 06 F9
	and ($DC.b,X)		; 21 DC
	and ($8E.b)		; 32 8E
	lsr $2A9E.w		; 4E 9E 2A
	sty $93.b,X		; 94 93
	and $2D.b,X		; 35 2D
	cmp [$2A.b]		; C7 2A
	xba		; EB
	sbc $0225.w,Y		; F9 25 02
	and ($00.b),Y		; 31 00
	adc $A045.w,X		; 7D 45 A0
	eor $B8.b,S		; 43 B8
	eor $88.b,S		; 43 88
	bit $D8.b		; 24 D8
	jsl $D42AD4.l		; 22 D4 2A D4
	cpx #$B184.w		; E0 84 B1
	jsr $A583.w		; 20 83 A5
	pha		; 48
	pha		; 48
	phd		; 0B
	adc ($78.b)		; 72 78
	phk		; 4B
	.db $42, $F6		; 42 F6
	bcs  92.b		; B0 5C
	cmp ($2C.b,S),Y		; D3 2C
	asl $92C1.w,X		; 1E C1 92
	pha		; 48
	adc $82.b,X		; 75 82
	ora #$60A4.w		; 09 A4 60
	sta $49.b,X		; 95 49
	bcc  49.b		; 90 31
	rep #$C4		; C2 C4
	pea $7A1B.w		; F4 1B 7A
	eor $95.b,X		; 55 95
	phd		; 0B
	jsr $4954.w		; 20 54 49
	txa		; 8A
	ora $2C0C49.l		; 0F 49 0C 2C
	phd		; 0B
	sta $801720.l		; 8F 20 17 80
	ror A		; 6A
	brk $C5.b		; 00 C5
	inc A		; 1A
	lda ($04.b)		; B2 04
	adc ($85.b)		; 72 85
	lda ($40.b,S),Y		; B3 40
	beq   6.b		; F0 06
	adc ($BF.b),Y		; 71 BF
	dey		; 88
	rol A		; 2A
	and [$AD.b]		; 27 AD
	tyx		; BB
	tsb $9D.b		; 04 9D
	adc $85.b		; 65 85
	eor $D3.b,S		; 43 D3
	lsr $6404.w		; 4E 04 64
	brk $C0.b		; 00 C0
	bne   5.b		; D0 05
	bvc   2.b		; 50 02
	cmp ($28.b,S),Y		; D3 28
	txy		; 9B
	brk $BC.b		; 00 BC
	cop $21.b		; 02 21
	bcc  27.b		; 90 1B
	bra  94.b		; 80 5E
	cmp $8560.w,X		; DD 60 85
	nop		; EA
	sep #$80		; E2 80
	lsr $08.b,X		; 56 08
	sbc [$07.b],Y		; F7 07
	cpx $F4.b		; E4 F4
	and #$32ED.w		; 29 ED 32
	dec A		; 3A
	brk $32.b		; 00 32
	pha		; 48
	sta $A904.w,Y		; 99 04 A9
	asl $08.b,X		; 16 08
	cop $0E.b		; 02 0E
	lda ($D6.b),Y		; B1 D6
	brk $2C.b		; 00 2C
	cmp ($D1.b,X)		; C1 D1
	lda $3868.w		; AD 68 38
	ldy $ADF0.w,X		; BC F0 AD
	ldy $844A.w		; AC 4A 84
	stz $F6D2.w,X		; 9E D2 F6
	eor $D2EE55.l,X		; 5F 55 EE D2
	brk $87.b		; 00 87
	rti		; 40

	ora $005300.l,X		; 1F 00 53 00
	phd		; 0B
	bvs -68.b		; 70 BC
	ora ($C2.b,X)		; 01 C2
	and ($10.b,X)		; 21 10
	ora $00.b,S		; 03 00
	txy		; 9B
	phb		; 8B
	adc $1059AF.l,X		; 7F AF 59 10
	cpy $8A.b		; C4 8A
	cmp $C264.w,Y		; D9 64 C2
	cmp ($09.b),Y		; D1 09
	ldx $6466.w		; AE 66 64
	bpl -128.b		; 10 80
	rti		; 40

	jsl $013A84.l		; 22 84 3A 01
	rol $3C00.w		; 2E 00 3C
	ora ($F6.b,X)		; 01 F6
	brk $18.b		; 00 18
	sta ($E0.b,X)		; 81 E0
	and [$82.b],Y		; 37 82
	jmp $FA7C.w		; 4C 7C FA
	lda $F2.b		; A5 F2
	inc A		; 1A
	sbc $13A6.w,X		; FD A6 13
	cmp ($0B.b,S),Y		; D3 0B
	lsr $88C1.w		; 4E C1 88
	.db $42, $B3		; 42 B3
	brk $05.b		; 00 05
	brk $0D.b		; 00 0D
	cop $00.b		; 02 00
	.db $42, $EC		; 42 EC
	brk $E4.b		; 00 E4
	clc		; 18
	trb $B822.w		; 1C 22 B8
	adc [$D1.b],Y		; 77 D1
	bpl -84.b		; 10 AC
	rol $5257.w		; 2E 57 52
	tya		; 98
	and [$76.b],Y		; 37 76
	ldx $A805.w		; AE 05 A8
	lsr $885B.w		; 4E 5B 88
	brk $ED.b		; 00 ED
	cop $D5.b		; 02 D5
	brk $8D.b		; 00 8D
	jsr $00C8.w		; 20 C8 00
	bvc   1.b		; 50 01
	eor ($05.b)		; 52 05
	cpx $01.b		; E4 01
	tay		; A8
	adc ($34.b),Y		; 71 34
	jsr ($D1C8.w,X)		; FC C8 D1
	rol $86.b		; 26 86
	sbc ($98.b)		; F2 98
	sta $F2B8.w,Y		; 99 B8 F2
	ror $82.b		; 66 82
	eor $8E.b		; 45 8E
	brk $07.b		; 00 07
	brk $22.b		; 00 22
	tsb $007D.w		; 0C 7D 00
	adc $04.b,S		; 63 04
	eor [$00.b]		; 47 00
	sta $BA00.w,Y		; 99 00 BA
	brk $48.b		; 00 48
	sbc ($BD.b,S),Y		; F3 BD
	rts		; 60

	lsr A		; 4A
	beq  12.b		; F0 0C
	plp		; 28
	stp		; DB
	tsa		; 3B
	and ($6A.b),Y		; 31 6A
	ora [$F6.b]		; 07 F6
	tax		; AA
	and $7D.b,X		; 35 7D
	lda $FBFF39.l,X		; BF 39 FF FB
	sbc $DBF73E.l,X		; FF 3E F7 DB
	sbc [$6C.b]		; E7 6C
	sbc $61FBF6.l,X		; FF F6 FB 61
	cmp $B2099C.l,X		; DF 9C 09 B2
	eor $AE5EAD.l,X		; 5F AD 5E AE
	and [$7E.b],Y		; 37 7E
	adc $ED.b,S		; 63 ED
	ror $5E.b,X		; 76 5E
	ldx #$59F0.w		; A2 F0 59
	cld		; D8
	sbc [$52.b],Y		; F7 52
	sbc $F34C.w		; ED 4C F3
	ldx $6AF9.w,Y		; BE F9 6A
	lda $BBF4.w,X		; BD F4 BB
	tsx		; BA
	sbc $BF7A.w,X		; FD 7A BF
	dec $2E19.w,X		; DE 19 2E
	and ($15.b,S),Y		; 33 15
	cpx $5A.b		; E4 5A
	txa		; 8A
	eor ($6F.b)		; 52 6F
	cmp $073277.l		; CF 77 32 07
	plp		; 28
	and $22E718.l,X		; 3F 18 E7 22
	cmp $FB04.w,X		; DD 04 FB
	asl A		; 0A
	sbc $42.b,X		; F5 42
	lda $B847.w,X		; BD 47 B8
	cop $FD.b		; 02 FD
	plp		; 28
	cmp [$AE.b],Y		; D7 AE
	and ($B2.b,S),Y		; 33 B2
	and $45.b,S		; 23 45
	adc $2B.b,X		; 75 2B
	and ($83.b),Y		; 31 83
	ora #$CF2E.w		; 09 2E CF
	tda		; 7B
	xba		; EB
	dec $2258.w		; CE 58 22
	cmp $DD22.w,X		; DD 22 DD
	eor $BA.b		; 45 BA
	and ($DE.b,X)		; 21 DE
	ora ($FE.b,X)		; 01 FE
	asl $6BF1.w		; 0E F1 6B
	sty $48.b,X		; 94 48
	lda [$F4.b],Y		; B7 F4
	adc $B3E420.l,X		; 7F 20 E4 B3
	eor [$FA.b]		; 47 FA
	inc A		; 1A
	lda #$2811.w		; A9 11 28
	and ($1A.b,S),Y		; 33 1A
	eor $52.b,X		; 55 52
	txa		; 8A
	stz $8B.b,X		; 74 8B
	jsr $03DF.w		; 20 DF 03
	jsr ($E51A.w,X)		; FC 1A E5
	ora ($FE.b,X)		; 01 FE
	jsr $10DF.w		; 20 DF 10
	sbc $4DFD02.l		; EF 02 FD 4D
	sta $F5.b		; 85 F5
	cli		; 58
	sta $3614.w,Y		; 99 14 36
	ora $FF.b		; 05 FF
	beq -99.b		; F0 9D
	ora $D3BE.w,Y		; 19 BE D3
	cmp $0580.w,Y		; D9 80 05
	plx		; FA
	bvc -81.b		; 50 AF
	bpl -17.b		; 10 EF
	tsb $FB.b		; 04 FB
	beq  15.b		; F0 0F
	ora $92E6.w,Y		; 19 E6 92
	adc $7F80.w		; 6D 80 7F
	xce		; FB
	lda $4CF0.w,X		; BD F0 4C
	sta $2B6E.w,X		; 9D 6E 2B
	lda ($0B.b),Y		; B1 0B
	.db $82, $56, $87		; 82 56 87
	lda $203F06.l,X		; BF 06 3F 20
	clc		; 18
	lsr $C3.b		; 46 C3
	bit $0C.b,X		; 34 0C
	sbc ($40.b,S),Y		; F3 40
	asl $817E.w,X		; 1E 7E 81
	cop $F9.b		; 02 F9
	and $D8.b,S		; 23 D8
	and ($CC.b,S),Y		; 33 CC
	jmp $1AA4.w		; 4C A4 1A
	jsr ($1DFE.w,X)		; FC FE 1D
	ora $672D.w		; 0D 2D 67
	sta $66D7.w		; 8D D7 66
	cmp $16.b		; C5 16
	cpx DMASRC1H.w		; EC 13 43
	clc		; 18
	ora $44.b,S		; 03 44
	ror $81.b		; 66 81
	cli		; 58
	.db $82, $11, $62		; 82 11 62
	eor [$A8.b],Y		; 57 A8
	iny		; C8
	and ($40.b,X)		; 21 40
	ldx $A761.w,Y		; BE 61 A7
	txs		; 9A
	plx		; FA
	stp		; DB
	ora $4C2F4D.l,X		; 1F 4D 2F 4C
	jmp ($3714.w,X)		; 7C 14 37
	eor ($A4.b,S),Y		; 53 A4
	.db $82, $64, $70		; 82 64 70
	dey		; 88
	tsb $21.b		; 04 21
	adc ($80.b,X)		; 61 80
	tya		; 98
	rts		; 60

	wai		; CB
	brk $94.b		; 00 94
	pha		; 48
	pha		; 48
	lda [$99.b],Y		; B7 99
	ror $70.b		; 66 70
	adc [$98.b]		; 67 98
	ora $C0.b,X		; 15 C0
	jmp $2180C0.l		; 5C C0 80 21
	cpy $9F.b		; C4 9F
	sed		; F8
	php		; 08
	asl A		; 0A
	phx		; DA
	txy		; 9B
	tya		; 98
	brk $BA.b		; 00 BA
	mvp $90,$23		; 44 23 90
	ora $043B60.l,X		; 1F 60 3B 04
	sta $807560.l		; 8F 60 75 80
	cop $64.b		; 02 64
	and [$19.b],Y		; 37 19
	cop $28.b		; 02 28
	lda ($0F.b,S),Y		; B3 0F
	cpy #$6086.w		; C0 86 60
	phk		; 4B
	tax		; AA
	xce		; FB
	eor $A69D4F.l,X		; 5F 4F 9D A6
	sbc ($04.b)		; F2 04
	cmp [$20.b],Y		; D7 20
	cpx #$F018.w		; E0 18 F0
	ora $00B4.w		; 0D B4 00
	asl $10.b		; 06 10
	brk $B0.b		; 00 B0
	ora ($58.b,X)		; 01 58
.ACCU 16
	rep #$A5		; C2 A5
	and $4C.b,X		; 35 4C
	lda $CE79.w		; AD 79 CE
	php		; 08
	pea $C09E.w		; F4 9E C0
	stx $74.b		; 86 74
	sbc ($D6.b)		; F2 D6
	ora [$5A.b]		; 07 5A
	ora ($33.b,X)		; 01 33
	bra -122.b		; 80 86
	brk $D5.b		; 00 D5
	jsl $310061.l		; 22 61 00 31
	pha		; 48
	ora $3A80.w		; 0D 80 3A
	cpy #$28AD.w		; C0 AD 28
	inc $F70E.w,X		; FE 0E F7
	adc $6D.b,S		; 63 6D
	cli		; 58
	dec $F1.b		; C6 F1
	sec		; 38
	sei		; 78
	sta $6413.w		; 8D 13 64
	bra -105.b		; 80 97
	rti		; 40

	sbc ($10.b,X)		; E1 10
	stz $98.b		; 64 98
	plb		; AB
	trb $0A.b		; 14 0A
	and $82.b		; 25 82
	ora $A5.b		; 05 A5
	pha		; 48
	ror $0001.w,X		; 7E 01 00
	ora $DD0C3D.l,X		; 1F 3D 0C DD
	lda ($7A.b)		; B2 7A
	cpx #$FC4B.w		; E0 4B FC
	cmp $AB.b,X		; D5 AB
	sta [$46.b],Y		; 97 46
	ldy $01.b		; A4 01
	cpx #$F100.w		; E0 00 F1
	cop $55.b		; 02 55
	php		; 08
	ora $004300.l,X		; 1F 00 43 00
	eor $20.b,X		; 55 20
	and $FE90.w		; 2D 90 FE
	brk $E8.b		; 00 E8
	adc ($C7.b,S),Y		; 73 C7
	lda $59B8.w,Y		; B9 B8 59
	ora $03.b,X		; 15 03
	sta $279B.w,X		; 9D 9B 27
	dec $69.b		; C6 69
	mvp $48,$3F		; 44 3F 48
	sty $C600.w		; 8C 00 C6
	brk $B6.b		; 00 B6
	brk $BC.b		; 00 BC
	.db $42, $00		; 42 00
	stz $29.b		; 64 29
	bpl  18.b		; 10 12
	lda #$00B7.w		; A9 B7 00
	bit $18.b,X		; 34 18
	dey		; 88
	php		; 08
	bvs  96.b		; 70 60
	stx $F4.b		; 86 F4
	bcs  93.b		; B0 5D
	eor $3A36.w,X		; 5D 36 3A
	ora $83.b,X		; 15 83
	eor $A7.b		; 45 A7
	rti		; 40

	sbc [$00.b],Y		; F7 00
	sta [$08.b],Y		; 97 08
	ora #$A242.w		; 09 42 A2
	tsb $55.b		; 04 55
	dey		; 88
	nop		; EA
	brk $BA.b		; 00 BA
	brk $A7.b		; 00 A7
	asl A		; 0A
	beq -74.b		; F0 B6
	ora ($62.b)		; 12 62
	tsb $E4.b		; 04 E4
	cmp $E60F36.l		; CF 36 0F E6
	iny		; C8
	and $6A14FA.l		; 2F FA 14 6A
	sbc $765FF2.l,X		; FF F2 5F 76
	sbc $FBF7.w,X		; FD F7 FB
	asl $FEFB.w,X		; 1E FB FE
	sbc $D1FF7A.l,X		; FF 7A FF D1
	sbc $EBA169.l,X		; FF 69 A1 EB
	sta ($EB.b,X)		; 81 EB
	sec		; 38
	ldy $79.b,X		; B4 79
	pld		; 2B
	stz $A6.b,X		; 74 A6
	and $76.b,X		; 35 76
	rol $B26E.w		; 2E 6E B2
	lda $FDFF.w,Y		; B9 FF FD
	adc $3DD77C.l,X		; 7F 7C D7 3D
	sbc $3DDF76.l,X		; FF 76 DF 3D
	sbc $A7FBFF.l,X		; FF FF FB A7
	cmp $46F9.w,X		; DD F9 46
	dec A		; 3A
	rti		; 40

	adc $24.b,X		; 75 24
	eor [$66.b],Y		; 57 66
	ldx #$AD47.w		; A2 47 AD
	rol $88.b		; 26 88
	ora $400185.l		; 0F 85 01 40
	lda $24FF00.l,X		; BF 00 FF 24
	stp		; DB
	lsr $B9.b		; 46 B9
	.db $82, $FD, $64		; 82 FD 64
	stp		; DB
	pha		; 48
	sbc [$21.b],Y		; F7 21
	inc $0CEB.w,X		; FE EB 0C
	lda $52C2.w		; AD C2 52
	stz $B5.b,X		; 74 B5
	and ($41.b,X)		; 21 41
	lda $4CAC.w		; AD AC 4C
	adc $88.b		; 65 88
	cli		; 58
	txy		; 9B
	php		; 08
	sbc [$80.b],Y		; F7 80
	adc $21AF50.l,X		; 7F 50 AF 21
	dec $FE01.w,X		; DE 01 FE
	tsb $00F3.w		; 0C F3 00
	sbc $14E718.l,X		; FF 18 E7 14
	cmp $4300.w		; CD 00 43
	mvn $CB,$66		; 54 66 CB
	adc ($5C.b)		; 72 5C
	jsr ($0C77.w,X)		; FC 77 0C
	lda ($0E.b),Y		; B1 0E
	dec A		; 3A
	stx $04.b		; 86 04
	xce		; FB
	brk $FF.b		; 00 FF
	mvp $42,$BB		; 44 BB 42
	lda $A35C.w,X		; BD 5C A3
	tsb $FB.b		; 04 FB
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	.db $82, $11, $B7		; 82 11 B7
	and $BF.b		; 25 BF
	and ($B1.b,S),Y		; 33 B1
	sty $AD.b		; 84 AD
	tay		; A8
	rol $D64A.w		; 2E 4A D6
	.db $62, $D2, $B0		; 62 D2 B0
	brk $FF.b		; 00 FF
	and $DA.b		; 25 DA
	and ($CC.b,S),Y		; 33 CC
	bra 127.b		; 80 7F
	tay		; A8
	eor [$0A.b],Y		; 57 0A
	sbc $42.b,X		; F5 42
	lda $6F90.w,X		; BD 90 6F
	cmp $0F.b,X		; D5 0F
	tya		; 98
	bvs  59.b		; 70 3B
	cmp $E6BD.w		; CD BD E6
	adc [$07.b],Y		; 77 07
	ora [$C0.b],Y		; 17 C0
	inc $CF70.w		; EE 70 CF
	adc ($04.b),Y		; 71 04
	beq  16.b		; F0 10
	sbc $A4F402.l		; EF 02 F4 A4
	tad		; 5B
	ora [$F8.b]		; 07 F8
	brk $FF.b		; 00 FF
	rts		; 60

	sta $6CBE41.l,X		; 9F 41 BE 6C
	mvp $62,$26		; 44 26 62
	sta $DD.b,S		; 83 DD
	sbc [$E7.b],Y		; F7 E7
	inc $5B.b		; E6 5B
	tas		; 1B
	cmp $69.b,X		; D5 69
	cmp [$81.b],Y		; D7 81
	asl $18E3.w,X		; 1E E3 18
	bit #$A054.w		; 89 54 A0
	lsr A		; 4A
	adc $2410.w		; 6D 10 24
	sta $CA31.w,Y		; 99 31 CA
	brk $2A.b		; 00 2A
	adc ($8E.b,X)		; 61 8E
	sta $D7EA.w,Y		; 99 EA D7
	sbc ($F5.b,S),Y		; F3 F5
	adc $2C5BDC.l		; 6F DC 5B 2C
	phb		; 8B
	sta $04.b,X		; 95 04
	dec $A4F0.w		; CE F0 A4
	ora [$08.b]		; 07 08
	and [$CA.b],Y		; 37 CA
	tsb $B4.b		; 04 B4
	php		; 08
	bcc  36.b		; 90 24
	stz $82.b,X		; 74 82
	inc $09.b,X		; F6 09
	sta $E21C00.l		; 8F 00 1C E2
	jsl $141A12.l		; 22 12 1A 14
	eor $0E1E.w,Y		; 59 1E 0E
	cmp ($20.b)		; D2 20
	stz $14.b		; 64 14
	bit $E51D.w		; 2C 1D E5
	bit $C915.w		; 2C 15 C9
	bit $39.b,X		; 34 39
.ACCU 16
	rep #$68		; C2 68
	sta ($27.b,X)		; 81 27
	php		; 08
	and $1182.w,Y		; 39 82 11
	nop		; EA
	ora ($2A.b),Y		; 11 2A
.ACCU 16
	rep #$28		; C2 28
	cmp $4012.w		; CD 12 40
	inc A		; 1A
	xce		; FB
	xba		; EB
	ora $EB.b,X		; 15 EB
	dex		; CA
	bcc  -9.b		; 90 F7
	tay		; A8
	sbc [$74.b],Y		; F7 74
	cpy #$A912.w		; C0 12 A9
	mvn $85,$60		; 54 60 85
	cli		; 58
	tsb $14.b		; 04 14
	php		; 08
	ora $5062.w		; 0D 62 50
	ora [$C7.b]		; 07 C7
	php		; 08
	sbc $2610.w		; ED 10 26
	cop $62.b		; 02 62
	tsb $25.b		; 04 25
	eor [$31.b]		; 47 31
	sbc $2B4B.w,Y		; F9 4B 2B
	bvc  93.b		; 50 5D
	bpl  16.b		; 10 10
	adc #$CDD6.w		; 69 D6 CD
	bmi -29.b		; 30 E3
	clc		; 18
	bit $31C0.w,X		; 3C C0 31
	asl $C5.b		; 06 C5
	bpl -96.b		; 10 A0
	cop $E7.b		; 02 E7
	php		; 08
	and #$0286.w		; 29 86 02
	beq  14.b		; F0 0E
	cli		; 58
	sta $F28B.w		; 8D 8B F2
	ora ($02.b,S),Y		; 13 02
	inx		; E8
	adc $3D089D.l		; 6F 9D 08 3D
	ldy $06.b		; A4 06
	ora $0782.w		; 0D 82 07
	cpx #$304C.w		; E0 4C 30
	sed		; F8
	tsb $16.b		; 04 16
	adc ($06.b,X)		; 61 06
	bvs -126.b		; 70 82
	mvp $60,$99		; 44 99 60
	ora $2826.w,X		; 1D 26 28
	sbc [$6C.b]		; E7 6C
	jmp $D817.w		; 4C 17 D8
	sta ($FB.b)		; 92 FB
	.db $82, $F0, $A0		; 82 F0 A0
	dey		; 88
	phd		; 0B
	sta $7089.w,Y		; 99 89 70
	sec		; 38
	bra -70.b		; 80 BA
	ora ($00.b,X)		; 01 00
	and [$04.b]		; 27 04
	ora #$228D.w		; 09 8D 22
	and [$40.b],Y		; 37 40
	.db $62, $84, $CA		; 62 84 CA
	ply		; 7A
	adc $48C7.w,X		; 7D C7 48
	lda #$7DB7.w		; A9 B7 7D
	ora ($8A.b,X)		; 01 8A
	sta $6CA145.l,X		; 9F 45 A1 6C
	lsr $8735.w		; 4E 35 87
	bpl  56.b		; 10 38
	brk $14.b		; 00 14
	.db $42, $82		; 42 82
	php		; 08
	and $40.b,X		; 35 40
	ora ($A8.b)		; 12 A8
	sta ($44.b,S),Y		; 93 44
	stx $5851.w		; 8E 51 58
	bra -16.b		; 80 F0
	plx		; FA
	phb		; 8B
	ora $2382.w,Y		; 19 82 23
	ror $0683.w,X		; 7E 83 06
	lsr $5153.w		; 4E 53 51
	and [$91.b],Y		; 37 91
	tda		; 7B
	tsb $25.b		; 04 25
	brk $C4.b		; 00 C4
	jsl $7C00DC.l		; 22 DC 00 7C
	brk $33.b		; 00 33
	cpy #$08B6.w		; C0 B6 08
	ror $8680.w		; 6E 80 86
	eor $8178.w,Y		; 59 78 81
	phb		; 8B
	adc $60E4.w		; 6D E4 60
	ror $FD0D.w		; 6E 0D FD
	dec $32.b,X		; D6 32
	brk $0E.b		; 00 0E
	bmi  90.b		; 30 5A
	sbc $3FFFBC.l,X		; FF BC FF 3F
	inc $DF77.w,X		; FE 77 DF
	tsb $D6F7.w		; 0C F7 D6
	lda $BCFF02.l,X		; BF 02 FF BC
	sbc $598BB0.l,X		; FF B0 8B 59
	sta [$01.b],Y		; 97 01
	cmp $713B.w		; CD 3B 71
	jmp $9BF47F.l		; 5C 7F F4 9B
	sbc $652AE1.l,X		; FF E1 2A 65
	ldy $D3FF.w,X		; BC FF D3
	sbc $F7FE77.l		; EF 77 FE F7
	inc $B7DF.w		; EE DF B7
	lda ($6F.b)		; B2 6F
	sbc $7F.b		; E5 7F
	sbc $FF.b		; E5 FF
	eor $B9.b		; 45 B9
	ldy $8ABB.w,X		; BC BB 8A
	mvp $E2,$53		; 44 53 E2
	xce		; FB
	ora [$9F.b]		; 07 9F
	cmp $5BC2.w,X		; DD C2 5B
	.db $62, $3B, $91		; 62 3B 91
	inc $D7B8.w,X		; FE B8 D7
	rts		; 60

	sbc $C3FDE2.l,X		; FF E2 FD C3
	jsr ($62BD.w,X)		; FC BD 62
.ACCU 16
.INDEX 16
	rep #$BD		; C2 BD
	xce		; FB
	cmp $9D5B.w,X		; DD 5B 9D
	dec $B300.w		; CE 00 B3
	sty $A5.b,X		; 94 A5
	rol $E5.b,X		; 36 E5
	sbc [$8A.b],Y		; F7 8A
	lda #$86FD.w		; A9 FD 86
	adc ($A9.b),Y		; 71 A9
	ora $00E6.w,Y		; 19 E6 00
	sbc $246F90.l,X		; FF 90 6F 24
	stp		; DB
	sbc $1A.b		; E5 1A
	dey		; 88
	adc [$84.b],Y		; 77 84
	tda		; 7B
	and ($DE.b,X)		; 21 DE
	dey		; 88
	brk $BA.b		; 00 BA
	jmp $736B.w		; 4C 6B 73
	lda $4CB1.w,X		; BD B1 4C
	and $B407.w,Y		; 39 07 B4
	inc A		; 1A
	ora ($F1.b,S),Y		; 13 F1
	sta $FF00.w,X		; 9D 00 FF
	php		; 08
	sbc [$63.b],Y		; F7 63
	stz $4EB1.w		; 9C B1 4E
	php		; 08
	sbc [$04.b],Y		; F7 04
	xce		; FB
	ora ($ED.b)		; 12 ED
	sta ($6E.b),Y		; 91 6E
	sta $258E.w,Y		; 99 8E 25
	rol $D4.b,X		; 36 D4
	sta $9951.w,Y		; 99 51 99
	eor $BC.b		; 45 BC
	inc $8C.b,X		; F6 8C
	lsr $7A83.w,X		; 5E 83 7A
	tsb $7788.w		; 0C 88 77
	bit $DB.b		; 24 DB
	bcc 111.b		; 90 6F
	ora ($EE.b),Y		; 11 EE
	tsb $FB.b		; 04 FB
	sty $7B.b		; 84 7B
	cop $FD.b		; 02 FD
	php		; 08
	sbc [$53.b],Y		; F7 53
	and [$30.b],Y		; 37 30
	lsr $C033.w		; 4E 33 C0
	stp		; DB
	rol A		; 2A
	asl $CA27.w		; 0E 27 CA
	cmp $88.b,S		; C3 88
	sta $B1.b,S		; 83 B1
	ldx $13.b		; A6 13
	cpx $FF00.w		; EC 00 FF
	brk $FF.b		; 00 FF
	asl A		; 0A
	sbc $06.b,X		; F5 06
	sbc $3DC2.w,Y		; F9 C2 3D
	bra 127.b		; 80 7F
	ldy #$D65F.w		; A0 5F D6
	clc		; 18
	jmp.w [$BC10]		; DC 10 BC
	ora ($2A.b,X)		; 01 2A
	ror $BB23.w,X		; 7E 23 BB
	jmp ($7BB0.w,X)		; 7C B0 7B
	cpx #$8F74.w		; E0 74 8F
	ora $EA.b,X		; 15 EA
	phd		; 0B
	cpx $02.b		; E4 02
	sbc $D421.w,X		; FD 21 D4
	and $D8.b		; 25 D8
	bmi -49.b		; 30 CF
	rts		; 60

	sta $7AFB04.l,X		; 9F 04 FB 7A
	ldx $75E1.w		; AE E1 75
	dec A		; 3A
	adc $1674.w,X		; 7D 74 16
	ror $C784.w,X		; 7E 84 C7
	sta ($DE.b)		; 92 DE
	inx		; E8
	sta $F5.b,S		; 83 F5
	bvs -127.b		; 70 81
	jsl $44A298.l		; 22 98 A2 44
	cmp $2A.b,X		; D5 2A
	and ($48.b,S),Y		; 33 48
	ror $19.b		; 66 19
	phk		; 4B
	bit $89.b,X		; 34 89
	rol $A0.b,X		; 36 A0
	pld		; 2B
	stz $5BD0.w		; 9C D0 5B
	bit #$B495.w		; 89 95 B4
	tax		; AA
	ldy $B9F7.w,X		; BC F7 B9
	sta ($EE.b),Y		; 91 EE
	and $A4.b		; 25 A4
	cpy $13.b		; C4 13
	and $522400.l		; 2F 00 24 52
	lsr A		; 4A
	and ($49.b,X)		; 21 49
	ora ($D6.b)		; 12 D6
	php		; 08
	sta ($70.b,X)		; 81 70
	ror A		; 6A
	ora ($4E.b),Y		; 11 4E
	stz $8A.b		; 64 8A
	sbc $3DE4.w,X		; FD E4 3D
	inc A		; 1A
	wai		; CB
	tay		; A8
	and $42.b,S		; 23 42
	cmp ($03.b)		; D2 03
	clv		; B8
	and $113A.w		; 2D 3A 11
	tax		; AA
	txa		; 8A
	bpl -128.b		; 10 80
	.db $42, $20		; 42 20
	eor $A0.b,X		; 55 A0
	jmp $47012C.l		; 5C 2C 01 47
	php		; 08
	cmp $00.b		; C5 00
	and ($0C.b),Y		; 31 0C
	bit $05.b		; 24 05
	mvn $7C,$14		; 54 14 7C
	and $8326.w		; 2D 26 83
	jmp $63FD.w		; 4C FD 63
	eor ($80.b),Y		; 51 80
	tsb $F3.b		; 04 F3
	brk $EA.b		; 00 EA
	bpl -101.b		; 10 9B
	rts		; 60

	bne   2.b		; D0 02
	bvs  12.b		; 70 0C
	cop $11.b		; 02 11
	plb		; AB
	tsb $DA.b		; 04 DA
	and ($5A.b,X)		; 21 5A
	ora ($1C.b,X)		; 01 1C
	adc $B81A.w,Y		; 79 1A B8
	cpy #$F777.w		; C0 77 F7
	cpy $C288.w		; CC 88 C2
	ror $73.b		; 66 73
	dec $E6F8.w,X		; DE F8 E6
	ora $8600.w,Y		; 19 00 86
	ora [$40.b]		; 07 40
	bra   8.b		; 80 08
	adc ($02.b),Y		; 71 02
	and $AE10.w		; 2D 10 AE
	brk $17.b		; 00 17
	jsr $D8C0.w		; 20 C0 D8
	lda #$72D4.w		; A9 D4 72
	eor $7F.b,X		; 55 7F
	and [$94.b],Y		; 37 94
	bit #$8478.w		; 89 78 84
	cmp ($3D.b)		; D2 3D
	dec $D4.b,X		; D6 D4
	and [$00.b]		; 27 00
	pld		; 2B
	trb $28.b		; 14 28
	.db $82, $88, $40		; 82 88 40
	ror $10.b		; 66 10
	ply		; 7A
	ora $80.b		; 05 80
	.db $42, $0F		; 42 0F
	jsr $EEB4.w		; 20 B4 EE
	tsb $56.b		; 04 56
	adc $05.b		; 65 05
	and [$28.b],Y		; 37 28
	cld		; D8
	sbc $D16F03.l,X		; FF 03 6F D1
	rti		; 40

	phy		; 5A
	rts		; 60

	ora $50.b		; 05 50
	lda ($48.b,X)		; A1 48
	plx		; FA
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	ora ($91.b,X)		; 01 91
	brk $9F.b		; 00 9F
	jsr $02DD.w		; 20 DD 02
	bne  60.b		; D0 3C
	clc		; 18
	jmp ($34B4.w,X)		; 7C B4 34
	eor ($02.b),Y		; 51 02
	sec		; 38
	cmp $01.b,S		; C3 01
	ldy $99.b,X		; B4 99
	sta $00B8.w,Y		; 99 B8 00
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	phk		; 4B
	bra -19.b		; 80 ED
	ora ($3C.b)		; 12 3C
	brk $4B.b		; 00 4B
	tsb $62.b		; 04 62
	tsb $DB.b		; 04 DB
	bit $BE.b		; 24 BE
	stx $B77E.w		; 8E 7E B7
	lda [$24.b],Y		; B7 24
	bit $3B04.w		; 2C 04 3B
	and ($53.b,S),Y		; 33 53
	plb		; AB
	eor [$BD.b]		; 47 BD
	and $F2.b,S		; 23 F2
	ldx $FFF3.w,Y		; BE F3 FF
	stp		; DB
	inc $DF.b,X		; F6 DF
	ldx $F7FB.w,Y		; BE FB F7
	jsr ($FDEF.w,X)		; FC EF FD
	sbc $F6FB.w,X		; FD FB F6
	cmp $4260F6.l,X		; DF F6 60 42
	stz $8205.w,X		; 9E 05 82
	sep #$08		; E2 08
	sta [$BD.b],Y		; 97 BD
	sbc $AE86.w,Y		; F9 86 AE
	eor [$85.b],Y		; 57 85
	ror $BFE0.w		; 6E E0 BF
	lda $FFBAFF.l,X		; BF FF BA FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $7E.b,X		; F5 7E
	txy		; 9B
	sbc $AEFBDF.l,X		; FF DF FB AE
	xce		; FB
	lda $99.b,X		; B5 99
	pla		; 68
	inc $E7.b,X		; F6 E7
	mvp $44,$00		; 44 00 44
	ldx #$A0.b		; A2 A0
	mvp $C8,$41		; 44 41 C8
	lda [$2C.b]		; A7 2C
	cmp [$DF.b],Y		; D7 DF
	sbc $FEDF72.l,X		; FF 72 DF FE
	xce		; FB
	phy		; 5A
	sbc $4D7FEB.l,X		; FF EB 7F 4D
	sbc $DFFFEF.l,X		; FF EF FF DF
	sbc $8F0DCB.l,X		; FF CB 0D 8F
	mvn $BE,$31		; 54 31 BE
	php		; 08
	bvs  84.b		; 70 54
	ora $BA.b		; 05 BA
	sta $EF.b,S		; 83 EF
	lsr $CF.b,X		; 56 CF
	cpy #$09.b		; C0 09
	inc $04.b,X		; F6 04
	xce		; FB
	bcs -49.b		; B0 CF
	brk $FF.b		; 00 FF
	sty $FB.b		; 84 FB
.ACCU 8
.INDEX 8
	sep #$7D		; E2 7D
	lsr $B9.b		; 46 B9
	bne 127.b		; D0 7F
	adc $037680.l		; 6F 80 76 03
	lda $20.b		; A5 20
	jmp.w [$C712]		; DC 12 C7
	and ($FF.b),Y		; 31 FF
	eor $AA.b		; 45 AA
	jmp $4CBB.w		; 4C BB 4C
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	jsr $10DF.w		; 20 DF 10
	sbc $45FE01.l		; EF 01 FE 45
	tsx		; BA
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc [$4B.b],Y		; F7 4B
	cop $E5.b		; 02 E5
	pld		; 2B
	sta ($1C.b)		; 92 1C
	bpl -83.b		; 10 AD
	and $DE.b		; 25 DE
	lda $32D2.w,Y		; B9 D2 32
	ora ($5F.b,X)		; 01 5F
	jsr $FD02.w		; 20 02 FD
	and ($DE.b,X)		; 21 DE
	bpl -17.b		; 10 EF
	brk $FF.b		; 00 FF
	tsb $FB.b		; 04 FB
	bcc 111.b		; 90 6F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	phx		; DA
	eor $DC1F.w		; 4D 1F DC
	sbc $B2.b		; E5 B2
	adc ($12.b,S),Y		; 73 12
	lda $D9.b,X		; B5 D9
	eor $4D00.w		; 4D 00 4D
	ldx $CB.b,Y		; B6 CB
	tsb $B748.w		; 0C 48 B7
	trb $A0E3.w		; 1C E3 A0
	eor $91ED12.l,X		; 5F 12 ED 91
	ror $FF00.w		; 6E 00 FF
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$8F.b],Y		; F7 8F
	lsr $CF.b,X		; 56 CF
	bpl -110.b		; 10 92
	phd		; 0B
	eor $FA11.w,X		; 5D 11 FA
	sty $EE.b		; 84 EE
	cmp $5F645F.l		; CF 5F 64 5F
	rts		; 60

	asl $F9.b		; 06 F9
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	ora ($EE.b),Y		; 11 EE
	bra 127.b		; 80 7F
	dec $4431.w		; CE 31 44
	tyx		; BB
	rti		; 40

	lda $49A020.l,X		; BF 20 A0 49
	tay		; A8
	bit $E6BE.w,X		; 3C BE E6
	asl $0F.b		; 06 0F
	sbc ($BC.b,S),Y		; F3 BC
	ldx #$9A.b		; A2 9A
	trb $8675.w		; 1C 75 86
	asl $0EC1.w,X		; 1E C1 0E
	sbc ($31.b),Y		; F1 31
	rep #$06		; C2 06
	sbc $FC03.w,Y		; F9 03 FC
	ldy #$5F.b		; A0 5F
	clc		; 18
	sbc [$04.b]		; E7 04
	xce		; FB
	sbc [$B7.b],Y		; F7 B7
	dex		; CA
	and $A2.b,X		; 35 A2
	bit $9C82.w,X		; 3C 82 9C
	tad		; 5B
	sta $96.b,S		; 83 96
	adc ($A2.b,X)		; 61 A2
	ora #$E0.b		; 09 E0
	plp		; 28
	php		; 08
	rti		; 40

	asl A		; 0A
	pei ($20.b)		; D4 20
	cmp [$02.b],Y		; D7 02
	adc #$23.b		; 69 23
	jmp.w [$738C]		; DC 8C 73
	bit $CB.b,X		; 34 CB
	and [$D8.b]		; 27 D8
	bvc -61.b		; 50 C3
	inc $A9.b		; E6 A9
	bvs   5.b		; 70 05
	asl $3BA6.w		; 0E A6 3B
	lda ($B2.b),Y		; B1 B2
	cmp $65.b,X		; D5 65
	cmp $2C.b		; C5 2C
	ora ($7C.b)		; 12 7C
	ora ($F6.b,X)		; 01 F6
	brk $58.b		; 00 58
	ldx #$52.b		; A2 52
	ora #$5D.b		; 09 5D
	.db $82, $82, $68		; 82 82 68
	.db $42, $B8		; 42 B8
	lda ($5E.b,X)		; A1 5E
	mvp $0C,$08		; 44 08 0C
	tsb $4F3C.w		; 0C 3C 4F
	cmp ($91.b,X)		; C1 91
	sty $B0.b		; 84 B0
	sta ($76.b,S),Y		; 93 76
	php		; 08
	cmp [$45.b]		; C7 45
	lda $D7.b		; A5 D7
	jsr $20D7.w		; 20 D7 20
	bcs   2.b		; B0 02
	jmp $CD22.w		; 4C 22 CD
	cop $8B.b		; 02 8B
	rti		; 40

	bmi   8.b		; 30 08
	eor $0202.w,Y		; 59 02 02
	ora ($AA.b,X)		; 01 AA
	inc A		; 1A
	tyx		; BB
	lda $1852.w,Y		; B9 52 18
	sei		; 78
	phd		; 0B
	eor ($4B.b)		; 52 4B
	cmp $00.b,S		; C3 00
	adc ($A9.b),Y		; 71 A9
	inc $C701.w,X		; FE 01 C7
	bmi -122.b		; 30 86
	rti		; 40

	and [$C0.b],Y		; 37 C0
	bcs  69.b		; B0 45
	cpx #$15.b		; E0 15
	sbc $4702.w,X		; FD 02 47
	clc		; 18
	lda ($13.b,S),Y		; B3 13
	eor $A0.b,S		; 43 A0
	eor $E5D5.w		; 4D D5 E5
	inc $C1D8.w,X		; FE D8 C1
	inc $09.b,X		; F6 09
	lda $70E4.w,X		; BD E4 70
	stz $4C.b,X		; 74 4C
	ldy #$5F.b		; A0 5F
	jsr $200E.w		; 20 0E 20
	ora ($08.b,X)		; 01 08
	inc $A000.w,X		; FE 00 A0
	eor $8B102B.l,X		; 5F 2B 10 8B
	brk $81.b		; 00 81
	jmp ($3DD4.w,X)		; 7C D4 3D
	lda $9DC9.w,Y		; B9 C9 9D
	bit #$7E.b		; 89 7E
	txy		; 9B
	dex		; CA
	dec $8476.w		; CE 76 84
	rol $83C0.w,X		; 3E C0 83
	brk $42.b		; 00 42
	bra -124.b		; 80 84
	adc ($76.b)		; 72 76
	brk $0C.b		; 00 0C
	cpx #$41.b		; E0 41
	bit $69.b,X		; 34 69
	sta ($3F.b)		; 92 3F
	brk $60.b		; 00 60
	rol $6CA4.w		; 2E A4 6C
	pha		; 48
	eor #$A7.b		; 49 A7
	ldx #$A8.b		; A2 A8
	sty $EE1D.w		; 8C 1D EE
	jmp $82C642.l		; 5C 42 C6 82
	cmp ($00.b),Y		; D1 00
	ora ($80.b,S),Y		; 13 80
	ldx $00.b,Y		; B6 00
	eor $F900.w,X		; 5D 00 F9
	cop $11.b		; 02 11
	brk $C1.b		; 00 C1
	bit $007D.w,X		; 3C 7D 00
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
	sbc $001100.l,X		; FF 00 11 00
	ora ($9A.b,X)		; 01 9A
	ora [$F4.b]		; 07 F4
	cmp $030400.l,X		; DF 00 04 03
	ora $0D1D03.l		; 0F 03 1D 0D
	and $1C7A12.l		; 2F 12 7A 1C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	pea $0017.w		; F4 17 00
	tsb $E0.b		; 04 E0
	clc		; 18
	cpx #$E4.b		; E0 E4
	clc		; 18
	asl $0A0C.w,X		; 1E 0C 0A
	tsb $3404.w		; 0C 04 34
	cmp $011400.l,X		; DF 00 14 01
	ora $01.b,S		; 03 01
	ora $02.b		; 05 02
	ora $03.b,S		; 03 03
	phd		; 0B
	ora [$07.b]		; 07 07
	ora $04.b,S		; 03 04
	bit $DF.b,X		; 34 DF
	brk $14.b		; 00 14
	cpy #$E0.b		; C0 E0
	cpy #$D0.b		; C0 D0
	rts		; 60

	ldy #$A0.b		; A0 A0
	inx		; E8
	bpl  16.b		; 10 10
	ldy #$B0.b		; A0 B0
	bit $DF.b,X		; 34 DF
	brk $14.b		; 00 14
	bit $3C7E.w,X		; 3C 7E 3C
	and $3A06.w,X		; 3D 06 3A
	dec A		; 3A
	dec A		; 3A
	and $3A39.w,Y		; 39 39 3A
	ora $34.b,S		; 03 34
	cmp $181400.l,X		; DF 00 14 18
	bit $5818.w,X		; 3C 18 58
	bmi  40.b		; 30 28
	plp		; 28
	tay		; A8
	pha		; 48
	pha		; 48
	plp		; 28
	rts		; 60

	pea $00DD.w		; F4 DD 00
	tsb $3F.b		; 04 3F
	adc $07073F.l,X		; 7F 3F 07 07
	tsa		; 3B
	sec		; 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	sec		; 38
	sec		; 38
	stz $40.b,X		; 74 40
	brk $00.b		; 00 00
	jsr ($FC02.w,X)		; FC 02 FC
	jsr ($F4F0.w,X)		; FC F0 F4
	cmp [$00.b],Y		; D7 00
	mvn $0C,$03		; 54 03 0C
	ora $13.b,S		; 03 13
	tsb $183C.w		; 0C 3C 18
	bit $7C.b		; 24 7C
	mvp $18,$38		; 44 38 18
	sec		; 38
	sec		; 38
	pea $00D7.w		; F4 D7 00
	mvn $30,$C0		; 54 C0 30
	cpy #$C8.b		; C0 C8
	bmi  60.b		; 30 3C
	clc		; 18
	bit $3E.b		; 24 3E
	jsl $1C181C.l		; 22 1C 18 1C
	trb $DD34.w		; 1C 34 DD
	brk $04.b		; 00 04
	sec		; 38
	jmp ($3838.w,X)		; 7C 38 38
	lsr $1C38.w,X		; 5E 38 1C
	trb $1C1C.w		; 1C 1C 1C
	bit $DD.b,X		; 34 DD
	brk $04.b		; 00 04
	tsb $0E.b		; 04 0E
	tsb $04.b		; 04 04
	inc A		; 1A
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	pea $00DD.w		; F4 DD 00
	tsb $3F.b		; 04 3F
	adc $07073F.l,X		; 7F 3F 07 07
	tsa		; 3B
	sec		; 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	sec		; 38
	sec		; 38
	stz $40.b,X		; 74 40
	brk $00.b		; 00 00
	jsr ($FC02.w,X)		; FC 02 FC
	jsr ($F4F0.w,X)		; FC F0 F4
	cmp $0400.w,X		; DD 00 04
	and $073F7F.l,X		; 3F 7F 3F 07
	ora [$3B.b]		; 07 3B
	sec		; 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	sec		; 38
	sec		; 38
	pea $00D7.w		; F4 D7 00
	mvn $18,$E0		; 54 E0 18
	cpx #$C4.b		; E0 C4
	sec		; 38
	rol $221C.w,X		; 3E 1C 22
	rol $38C4.w,X		; 3E C4 38
	trb $381C.w		; 1C 1C 38
	eor [$7F.b],Y		; 57 7F
	lda #$2A.b		; A9 2A
	jmp ($4438.w,X)		; 7C 38 44
	mvp $22,$7C		; 44 7C 22
	trb $0E1F.w		; 1C 1F 0E
	ora $380303.l		; 0F 03 03 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $030E.w		; 1C 0E 03
	mvn $A0,$7F		; 54 7F A0
	rol A		; 2A
	trb $1C22.w		; 1C 22 1C
	trb $08.b		; 14 08
	jsr ($FC18.w,X)		; FC 18 FC
	inx		; E8
	inx		; E8
	trb $0808.w		; 1C 08 08
	clc		; 18
	inx		; E8
	eor $8A8DCF.l		; 4F CF 8D 8A
	ora $0E0E0E.l,X		; 1F 0E 0E 0E
	rol $1C1C.w		; 2E 1C 1C
	eor $384424.l,X		; 5F 24 44 38
	asl $0E0E.w		; 0E 0E 0E
	ora ($03.b),Y		; 11 03
	bit $38.b		; 24 38
	eor $828DC7.l,X		; 5F C7 8D 82
	sec		; 38
	bpl  44.b		; 10 2C
	bpl -32.b		; 10 E0
	php		; 08
	asl $04.b		; 06 04
	pea $040A.w		; F4 0A 04
	bpl  16.b		; 10 10
	php		; 08
	beq  -4.b		; F0 FC
	tsb $5F.b		; 04 5F
	cmp [$0D.b]		; C7 0D
	bra 125.b		; 80 7D
	sec		; 38
	sec		; 38
	sec		; 38
	ora ($38.b,X)		; 01 38
	sec		; 38
	sec		; 38
	sec		; 38
	mvp $38,$38		; 44 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	eor $802DC7.l,X		; 5F C7 2D 80
	jmp.w [$8888]		; DC 88 88
	dey		; 88
	cpy #$88.b		; C0 88
	php		; 08
	php		; 08
	php		; 08
	trb $08.b		; 14 08
	dey		; 88
	dey		; 88
	dey		; 88
	bra   8.b		; 80 08
	eor $A00DE7.l,X		; 5F E7 0D A0
	adc $3F383F.l,X		; 7F 3F 38 3F
	ora $38.b,S		; 03 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	ora [$40.b]		; 07 40
	and $383F3F.l,X		; 3F 3F 3F 38
	ora [$3F.b]		; 07 3F
	ora [$74.b]		; 07 74
	ora ($20.b,X)		; 01 20
	sed		; F8
	beq -16.b		; F0 F0
	jsr ($FCFE.w,X)		; FC FE FC
	jsr ($FCF0.w,X)		; FC F0 FC
	eor [$7F.b],Y		; 57 7F
	lda #$2A.b		; A9 2A
	jmp ($4438.w,X)		; 7C 38 44
	mvp $24,$3C		; 44 3C 24
	clc		; 18
	ora $030F0C.l,X		; 1F 0C 0F 03
	ora $38.b,S		; 03 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	tsb $5703.w		; 0C 03 57
	adc $3E2AA9.l,X		; 7F A9 2A 3E
	trb $2222.w		; 1C 22 22
	bit $1824.w,X		; 3C 24 18
	sed		; F8
	bmi -16.b		; 30 F0
	cpy #$C0.b		; C0 C0
	trb $1C1C.w		; 1C 1C 1C
	clc		; 18
	clc		; 18
	bmi -64.b		; 30 C0
	eor $A08DF7.l		; 4F F7 8D A0
	ora $0E0E0E.l,X		; 1F 0E 0E 0E
	asl $0707.w,X		; 1E 07 07
	ora [$08.b]		; 07 08
	tsb $04.b		; 04 04
	ora $0E.b,S		; 03 0E
	asl $090E.w		; 0E 0E 09
	tsb $03.b		; 04 03
	eor $A08DF7.l		; 4F F7 8D A0
	sec		; 38
	bpl  16.b		; 10 10
	bpl -40.b		; 10 D8
	jsr $2020.w		; 20 20 20
	bpl -32.b		; 10 E0
	jsr $10C0.w		; 20 C0 10
	bpl  16.b		; 10 10
	bmi -32.b		; 30 E0
	cpy #$5F.b		; C0 5F
	sbc [$0D.b]		; E7 0D
	ldy #$7F.b		; A0 7F
	and $033F38.l,X		; 3F 38 3F 03
	sec		; 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	ora [$40.b]		; 07 40
	and $383F3F.l,X		; 3F 3F 3F 38
	ora [$3F.b]		; 07 3F
	ora [$74.b]		; 07 74
	ora ($20.b,X)		; 01 20
	sed		; F8
	beq -16.b		; F0 F0
	jsr ($FCFE.w,X)		; FC FE FC
	jsr ($FCF0.w,X)		; FC F0 FC
	eor $800DC7.l,X		; 5F C7 0D 80
	adc $3F383F.l,X		; 7F 3F 38 3F
	ora $38.b,S		; 03 38
	sec		; 38
	sec		; 38
	sec		; 38
	mvp $3F,$38		; 44 38 3F
	and $5F3838.l,X		; 3F 38 38 5F
	cmp $F8888D.l		; CF 8D 88 F8
	beq  16.b		; F0 10
	beq -64.b		; F0 C0
	bit $08.b,X		; 34 08
	php		; 08
	inc A		; 1A
	tsb $040A.w		; 0C 0A 04
	beq -16.b		; F0 F0
	bpl  24.b		; 10 18
	tsb $F404.w		; 0C 04 F4
	cmp $070400.l,X		; DF 00 04 07
	ora $1B3B07.l,X		; 1F 07 3B 1B
	ora $187804.l,X		; 1F 04 78 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	pea $00DF.w		; F4 DF 00
	tsb $E0.b		; 04 E0
	sed		; F8
	cpx #$DC.b		; E0 DC
	cld		; D8
	sed		; F8
	jsr $181E.w		; 20 1E 18
	trb $1C1C.w		; 1C 1C 1C
	trb $DFF4.w		; 1C F4 DF
	brk $04.b		; 00 04
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	cop $0B.b		; 02 0B
	asl $01.b		; 06 01
	ora $0D.b		; 05 0D
	ora ($01.b,X)		; 01 01
	ora ($34.b,X)		; 01 34
	cmp $0400.w,X		; DD 00 04
	cpy #$E0.b		; C0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	pea $00DF.w		; F4 DF 00
	tsb $07.b		; 04 07
	ora $1B3B07.l,X		; 1F 07 3B 1B
	eor $383824.l,X		; 5F 24 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	pea $00DF.w		; F4 DF 00
	tsb $E0.b		; 04 E0
	sed		; F8
	cpx #$DC.b		; E0 DC
	cld		; D8
	plx		; FA
	bit $1C.b		; 24 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $F41C.w		; 1C 1C F4
	eor [$00.b],Y		; 57 00
	trb $07.b		; 14 07
	clc		; 18
	ora [$27.b]		; 07 27
	clc		; 18
	sei		; 78
	bmi  72.b		; 30 48
	sei		; 78
	and ($30.b),Y		; 31 30
	bmi -12.b		; 30 F4
	cmp [$00.b],Y		; D7 00
	mvn $18,$E0		; 54 E0 18
	cpx #$C4.b		; E0 C4
	sec		; 38
	rol $221C.w,X		; 3E 1C 22
	rol $3CC2.w,X		; 3E C2 3C
	trb $3C1C.w		; 1C 1C 3C
	rti		; 40

	cmp [$00.b],Y		; D7 00
	mvn $03,$01		; 54 01 03
	ora ($05.b,X)		; 01 05
	asl $0814.w		; 0E 14 08
	cop $04.b		; 02 04
	php		; 08
	pea $00DF.w		; F4 DF 00
	tsb $70.b		; 04 70
	sed		; F8
	bvs -128.b		; 70 80
	bra -16.b		; 80 F0
	bra 112.b		; 80 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs -12.b		; 70 F4
	cmp $4400.w,X		; DD 00 44
	and $073F7F.l,X		; 3F 7F 3F 07
	ora [$3B.b]		; 07 3B
	sec		; 38
	sec		; 38
	tsa		; 3B
	and $07383F.l,X		; 3F 3F 38 07
	stz $D0.b,X		; 74 D0
	brk $40.b		; 00 40
	sed		; F8
	tsb $F8.b		; 04 F8
	sed		; F8
	cpx #$10.b		; E0 10
	cpx #$E0.b		; E0 E0
	pea $00D7.w		; F4 D7 00
	mvn $18,$07		; 54 07 18
	ora [$23.b]		; 07 23
	trb $387C.w		; 1C 7C 38
	mvp $40,$7F		; 44 7F 40
	and $3F3838.l,X		; 3F 38 38 3F
	pea $00D7.w		; F4 D7 00
	mvp $18,$E0		; 44 E0 18
	cpx #$E4.b		; E0 E4
	clc		; 18
	asl $120C.w,X		; 1E 0C 12
	cpx $E018.w		; EC 18 E0
	tsb $74E0.w		; 0C E0 74
	rti		; 40

	brk $00.b		; 00 00
	and $3F3F40.l,X		; 3F 40 3F 3F
	ora ($F4.b,X)		; 01 F4
	cmp $4400.w,X		; DD 00 44
	beq  -8.b		; F0 F8
	beq -52.b		; F0 CC
	iny		; C8
	clv		; B8
	pea $7038.w		; F4 38 70
	inx		; E8
	cpx #$70.b		; E0 70
	bcc  87.b		; 90 57
	adc $7C2AA9.l,X		; 7F A9 2A 7C
	sec		; 38
	mvp $7C,$44		; 44 44 7C
	bit $18.b		; 24 18
	and $071F1C.l,X		; 3F 1C 1F 07
	ora [$38.b]		; 07 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	trb $5707.w		; 1C 07 57
	adc $3E2AA9.l,X		; 7F A9 2A 3E
	trb $2222.w		; 1C 22 22
	rol $1824.w,X		; 3E 24 18
	jsr ($F838.w,X)		; FC 38 F8
	cpx #$E0.b		; E0 E0
	trb $1C1C.w		; 1C 1C 1C
	trb $3818.w		; 1C 18 38
	cpx #$4F.b		; E0 4F
	sbc [$0D.b],Y		; F7 0D
	ldy #$03.b		; A0 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $0E10.w		; 0D 10 0E
	bpl  15.b		; 10 0F
	ora ($01.b,X)		; 01 01
	ora ($0E.b,X)		; 01 0E
	ora $0DF74F.l		; 0F 4F F7 0D
	ldy #$E0.b		; A0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cld		; D8
	tsb $38.b		; 04 38
	tsb $F8.b		; 04 F8
	cpy #$C0.b		; C0 C0
	cpy #$38.b		; C0 38
	sed		; F8
	eor [$7F.b],Y		; 57 7F
	lda ($2A.b,X)		; A1 2A
	rol $1D1C.w,X		; 3E 1C 1D
	cop $0F.b		; 02 0F
	and ($0C.b,S),Y		; 33 0C
	adc $3F7F38.l,X		; 7F 38 7F 3F
	and $03011C.l,X		; 3F 1C 01 03
	tsb $3F38.w		; 0C 38 3F
	eor [$74.b],Y		; 57 74
	and #$20.b		; 29 20
	jmp ($8838.w,X)		; 7C 38 88
	bmi -64.b		; 30 C0
	jsr ($FCFE.w,X)		; FC FE FC
	jsr ($7038.w,X)		; FC 38 70
	cpy #$FC.b		; C0 FC
	eor [$7F.b],Y		; 57 7F
	lda ($2A.b,X)		; A1 2A
	ora $01.b,S		; 03 01
	and ($48.b),Y		; 31 48
	sei		; 78
	pha		; 48
	bmi  63.b		; 30 3F
	clc		; 18
	ora $010707.l,X		; 1F 07 07 01
	bmi  48.b		; 30 30
	bmi  24.b		; 30 18
	ora [$57.b]		; 07 57
	adc $FC2AA9.l,X		; 7F A9 2A FC
	sed		; F8
.ACCU 16
	rep #$22		; C2 22
	rol $1C22.w,X		; 3E 22 1C
	jsr ($F838.w,X)		; FC 38 F8
	cpx #$E0.b		; E0 E0
	sed		; F8
	bit $1C1C.w,X		; 3C 1C 1C
	trb $E038.w		; 1C 38 E0
	eor [$00.b],Y		; 57 00
	and #$3800.w		; 29 00 38
	bpl  95.b		; 10 5F
	rti		; 40

	and $3F2010.l,X		; 3F 10 20 3F
	eor $80ADC7.l,X		; 5F C7 AD 80
	sed		; F8
	bvs 116.b		; 70 74
	bvs -114.b		; 70 8E
	inc $7074.w,X		; FE 74 70
	bvs -120.b		; 70 88
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	sty $708C.w		; 8C 8C 70
	eor ($7F.b),Y		; 51 7F
	bra  42.b		; 80 2A
	and $587020.l,X		; 3F 20 70 58
	jsr $183F.w		; 20 3F 18
	ora $200F0F.l,X		; 1F 0F 0F 20
	jsr $0F18.w		; 20 18 0F
	eor [$7F.b],Y		; 57 7F
	lda #$F82A.w		; A9 2A F8
	beq -124.b		; F0 84
	mvp $84,$7C		; 44 7C 84
	sei		; 78
	sed		; F8
	beq -16.b		; F0 F0
	cpy #$C0.b		; C0 C0
	beq 120.b		; F0 78
	sec		; 38
	sec		; 38
	sei		; 78
	beq -64.b		; F0 C0
	eor [$7F.b],Y		; 57 7F
	lda #$7F2A.w		; A9 2A 7F
	bit $4444.w,X		; 3C 44 44
	jmp ($3844.w,X)		; 7C 44 38
	and $071F1C.l,X		; 3F 1C 1F 07
	ora [$3C.b]		; 07 3C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $5707.w		; 1C 07 57
	adc $FC2AA9.l,X		; 7F A9 2A FC
	sec		; 38
	jsl $223E22.l		; 22 22 3E 22
	trb $38FC.w		; 1C FC 38
	sed		; F8
	cpx #$E0.b		; E0 E0
	sec		; 38
	trb $1C1C.w		; 1C 1C 1C
	trb $E038.w		; 1C 38 E0
	eor $CF.b		; 45 CF
	dey		; 88
	dey		; 88
	ora ($03.b,X)		; 01 03
	ora $03.b		; 05 03
	ora $0B.b,S		; 03 0B
	tsb $08.b		; 04 08
	ora [$01.b]		; 07 01
	cop $04.b		; 02 04
	ora [$57.b]		; 07 57
	ora [$A9.b],Y		; 17 A9
	cop $F0.b		; 02 F0
	cpx #$20.b		; E0 20
	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	bra -32.b		; 80 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	pea $00D7.w		; F4 D7 00
	mvn $18,$07		; 54 07 18
	ora [$21.b]		; 07 21
	asl $1C3E.w,X		; 1E 3E 1C
	jsl $07183F.l		; 22 3F 18 07
	trb $071E.w		; 1C 1E 07
	pea $00D7.w		; F4 D7 00
	mvn $18,$E0		; 54 E0 18
	cpx #$84.b		; E0 84
	sei		; 78
	jmp ($4438.w,X)		; 7C 38 44
	jsr ($E018.w,X)		; FC 18 E0
	sec		; 38
	sei		; 78
	cpx #$F4.b		; E0 F4
	cmp $070400.l,X		; DF 00 04 07
	ora $1B3B07.l,X		; 1F 07 3B 1B
	eor $383824.l,X		; 5F 24 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	pea $00DF.w		; F4 DF 00
	tsb $E0.b		; 04 E0
	sed		; F8
	cpx #$DC.b		; E0 DC
	cld		; D8
	plx		; FA
	bit $1C.b		; 24 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $F41C.w		; 1C 1C F4
	cmp $030400.l,X		; DF 00 04 03
	ora $0D1D03.l		; 0F 03 1D 0D
	and $1C7A12.l		; 2F 12 7A 1C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	pea $0017.w		; F4 17 00
	tsb $E0.b		; 04 E0
	clc		; 18
	cpx #$E4.b		; E0 E4
	clc		; 18
	asl $0A0C.w,X		; 1E 0C 0A
	tsb $F404.w		; 0C 04 F4
	cmp [$00.b],Y		; D7 00
	mvn $0C,$03		; 54 03 0C
	ora $13.b,S		; 03 13
	tsb $183C.w		; 0C 3C 18
	bit $7C.b		; 24 7C
	mvp $18,$38		; 44 38 18
	sec		; 38
	sec		; 38
	pea $00D7.w		; F4 D7 00
	mvn $30,$C0		; 54 C0 30
	cpy #$C8.b		; C0 C8
	bmi  60.b		; 30 3C
	clc		; 18
	bit $3E.b		; 24 3E
	jsl $1C181C.l		; 22 1C 18 1C
	trb $DDF4.w		; 1C F4 DD
	brk $44.b		; 00 44
	bit $3C7E.w,X		; 3C 7E 3C
	ora [$06.b]		; 07 06
	dec A		; 3A
	and $393A.w,Y		; 39 3A 39
	dec A		; 3A
	sec		; 38
	and $3401.w,Y		; 39 01 34
	cmp $4400.w,X		; DD 00 44
	tsb $0E.b		; 04 0E
	tsb $04.b		; 04 04
	sty $04.b		; 84 04
	tsb $C4.b		; 04 C4
	sty $04.b		; 84 04
	bra -12.b		; 80 F4
	cmp $3F0400.l,X		; DF 00 04 3F
	adc $38783F.l,X		; 7F 3F 78 38
	and $030304.l,X		; 3F 04 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	pea $00DF.w		; F4 DF 00
	tsb $F8.b		; 04 F8
	jsr ($3CF8.w,X)		; FC F8 3C
	sec		; 38
	sed		; F8
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bit $DD.b,X		; 34 DD
	brk $04.b		; 00 04
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	bit $DD.b,X		; 34 DD
	brk $04.b		; 00 04
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	pea $00DD.w		; F4 DD 00
	mvp $7E,$3C		; 44 3C 7E
	bit $0607.w,X		; 3C 07 06
	dec A		; 3A
	and $393A.w,Y		; 39 3A 39
	dec A		; 3A
	sec		; 38
	and $3401.w,Y		; 39 01 34
	cmp $4400.w,X		; DD 00 44
	tsb $0E.b		; 04 0E
	tsb $04.b		; 04 04
	sty $04.b		; 84 04
	tsb $C4.b		; 04 C4
	sty $04.b		; 84 04
	bra  87.b		; 80 57
	adc $3F2AA9.l,X		; 7F A9 2A 3F
	trb $4444.w		; 1C 44 44
	jmp ($3844.w,X)		; 7C 44 38
	and $0F1F1C.l,X		; 3F 1C 1F 0F
	ora $38381C.l		; 0F 1C 38 38
	sec		; 38
	sec		; 38
	trb $570F.w		; 1C 0F 57
	adc $FC2AA9.l,X		; 7F A9 2A FC
	sec		; 38
	jsl $223E22.l		; 22 22 3E 22
	trb $38FC.w		; 1C FC 38
	sed		; F8
	beq -16.b		; F0 F0
	sec		; 38
	trb $1C1C.w		; 1C 1C 1C
	trb $F038.w		; 1C 38 F0
	eor [$7F.b],Y		; 57 7F
	ora #$3F2A.w		; 09 2A 3F
	trb $0718.w		; 1C 18 07
	clc		; 18
	bit $18.b		; 24 18
	and $0F1F18.l,X		; 3F 18 1F 0F
	ora $18071C.l		; 0F 1C 07 18
	clc		; 18
	ora $A97F57.l		; 0F 57 7F A9
	rol A		; 2A
	inc $023C.w,X		; FE 3C 02
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	jsl $38FC1C.l		; 22 1C FC 38
	sed		; F8
	beq -16.b		; F0 F0
	bit $1CFC.w,X		; 3C FC 1C
	trb $381C.w		; 1C 1C 38
	beq  87.b		; F0 57
	adc $7C2AA9.l,X		; 7F A9 2A 7C
	sec		; 38
	mvp $7C,$44		; 44 44 7C
	jsl $0E1F1C.l		; 22 1C 1F 0E
	ora $380303.l		; 0F 03 03 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $030E.w		; 1C 0E 03
	bvc 127.b		; 50 7F
	bra  42.b		; 80 2A
	tsb $120E.w		; 0C 0E 12
	tsb $18FC.w		; 0C FC 18
	sed		; F8
	cpx #$E0.b		; E0 E0
	tsb $0C.b		; 04 0C
	clc		; 18
	cpx #$57.b		; E0 57
	adc $7C2AA9.l,X		; 7F A9 2A 7C
	sec		; 38
	mvp $3C,$44		; 44 44 3C
	bit $18.b		; 24 18
	ora $030F0C.l,X		; 1F 0C 0F 03
	ora $38.b,S		; 03 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	tsb $5703.w		; 0C 03 57
	adc $3E2AA9.l,X		; 7F A9 2A 3E
	trb $2222.w		; 1C 22 22
	bit $1824.w,X		; 3C 24 18
	sed		; F8
	bmi -16.b		; 30 F0
	cpy #$C0.b		; C0 C0
	trb $1C1C.w		; 1C 1C 1C
	clc		; 18
	clc		; 18
	bmi -64.b		; 30 C0
	eor $800DC7.l		; 4F C7 0D 80
	adc $3938.w,X		; 7D 38 39
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	mvp $38,$38		; 44 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	eor [$7F.b],Y		; 57 7F
	lda #$2A.b		; A9 2A
	dec $AA84.w		; CE 84 AA
	tax		; AA
	ror $245A.w,X		; 7E 5A 24
	rol $3E14.w,X		; 3E 14 3E
	trb $841C.w		; 1C 1C 84
	mvp $24,$44		; 44 44 24
	bit $14.b		; 24 14
	trb $C74F.w		; 1C 4F C7
	ora $0780.w		; 0D 80 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $4F.b,S		; 03 4F
	cmp [$0D.b]		; C7 0D
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  79.b		; 80 4F
	cmp [$0D.b]		; C7 0D
	bra   7.b		; 80 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $4F.b,S		; 03 4F
	cmp [$0D.b]		; C7 0D
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  79.b		; 80 4F
	cmp [$0D.b]		; C7 0D
	bra 125.b		; 80 7D
	sec		; 38
	and $3838.w,Y		; 39 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	mvp $38,$38		; 44 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	eor [$7F.b],Y		; 57 7F
	lda #$2A.b		; A9 2A
	dec $AA84.w		; CE 84 AA
	tax		; AA
	ror $245A.w,X		; 7E 5A 24
	rol $3E14.w,X		; 3E 14 3E
	trb $841C.w		; 1C 1C 84
	mvp $24,$44		; 44 44 24
	bit $14.b		; 24 14
	trb $DD34.w		; 1C 34 DD
	brk $04.b		; 00 04
	sec		; 38
	jmp ($3838.w,X)		; 7C 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $DD.b,X		; 34 DD
	brk $04.b		; 00 04
	php		; 08
	trb $0808.w		; 1C 08 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	pea $00DD.w		; F4 DD 00
	tsb $3F.b		; 04 3F
	adc $07073F.l,X		; 7F 3F 07 07
	tsa		; 3B
	sec		; 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	sec		; 38
	sec		; 38
	stz $40.b,X		; 74 40
	brk $00.b		; 00 00
	jsr ($FC02.w,X)		; FC 02 FC
	jsr ($F4F0.w,X)		; FC F0 F4
	ora [$00.b],Y		; 17 00
	tsb $0F.b		; 04 0F
	bpl  15.b		; 10 0F
	and [$18.b]		; 27 18
	sec		; 38
	bpl  40.b		; 10 28
	bpl  16.b		; 10 10
	pea $00D7.w		; F4 D7 00
	mvn $04,$F8		; 54 F8 04
	sed		; F8
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	rol $221C.w,X		; 3E 1C 22
	rol $38C4.w,X		; 3E C4 38
	trb $381C.w		; 1C 1C 38
	eor [$7F.b],Y		; 57 7F
	lda #$7C2A.w		; A9 2A 7C
	sec		; 38
	mvp $7C,$44		; 44 44 7C
	jsl $1E3F1C.l		; 22 1C 3F 1E
	ora $380707.l,X		; 1F 07 07 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $071E.w		; 1C 1E 07
	eor [$7F.b],Y		; 57 7F
	lda #$1C2A.w		; A9 2A 1C
	php		; 08
	trb $14.b		; 14 14
	trb $1028.w		; 1C 28 10
	sed		; F8
	bmi -16.b		; 30 F0
	cpx #$08E0.w		; E0 E0 08
	php		; 08
	php		; 08
	php		; 08
	bpl  48.b		; 10 30
	cpx #$E75F.w		; E0 5F E7
	ora $7FA0.w		; 0D A0 7F
	and $033F38.l,X		; 3F 38 3F 03
	sec		; 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	ora [$40.b]		; 07 40
	and $383F3F.l,X		; 3F 3F 3F 38
	ora [$3F.b]		; 07 3F
	ora [$74.b]		; 07 74
	ora ($20.b,X)		; 01 20
	sed		; F8
	beq -16.b		; F0 F0
	jsr ($FCFE.w,X)		; FC FE FC
	jsr ($FCF0.w,X)		; FC F0 FC
	eor $CD.b		; 45 CD
	php		; 08
	txa		; 8A
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	eor $8A0DCD.l		; 4F CD 0D 8A
	sed		; F8
	cpx #$E0D8.w		; E0 D8 E0
	cpy #$2020.w		; C0 20 20
	cpy #$C020.w		; C0 20 C0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$C0C0.w		; C0 C0 C0
	ldx $6A.b		; A6 6A
	lda $66.b		; A5 66
	lda $6A.b		; A5 6A
	lda $A6.b		; A5 A6
	tax		; AA
	phy		; 5A
	adc #$A595.w		; 69 95 A5
	eor $59.b,X		; 55 59
	adc $A5.b		; 65 A5
	lsr $AA.b,X		; 56 AA
	tax		; AA
	eor $55.b,X		; 55 55
	ldx $6A.b		; A6 6A
	ror A		; 6A
	ora $00.b		; 05 00
	brk $65.b		; 00 65
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
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	sbc ($05.b,X)		; E1 05
	brk $00.b		; 00 00
	rti		; 40

	eor $01.b,X		; 55 01
	asl $16.b		; 06 16
	sec		; 38
	eor [$54.b]		; 47 54
	eor $00.b,X		; 55 00
	bvc   1.b		; 50 01
	tsa		; 3B
	jmp.w [$1EC0]		; DC C0 1E
	cpx $0160.w		; EC 60 01
	ora $50.b,S		; 03 50
	eor $54.b,X		; 55 54
	eor $0C.b,X		; 55 0C
	bit $E776.w,X		; 3C 76 E7
	cmp $80.b,S		; C3 80
	ora ($03.b,X)		; 01 03
	tsb $0E.b		; 04 0E
	ora ($18.b,X)		; 01 18
	rol $55.b,X		; 36 55
	eor $44.b		; 45 44
	ora $EB.b		; 05 EB
	sbc ($B0.b,S),Y		; F3 B0
	iny		; C8
	cpy #$9820.w		; C0 20 98
	asl $04.b		; 06 04
	ora ($01.b,X)		; 01 01
	rti		; 40

	ora $55.b		; 05 55
	eor $40.b		; 45 40
	bra -63.b		; 80 C1
	cmp [$CF.b],Y		; D7 CF
	ora $0313.w		; 0D 13 03
	sty $61.b		; 84 61
	brk $54.b		; 00 54
	eor $15.b,X		; 55 15
	ora [$1F.b]		; 07 1F
	jmp ($0607.w,X)		; 7C 07 06
	tsb $181C.w		; 0C 1C 18
	sed		; F8
	beq   0.b		; F0 00
	rti		; 40

	rti		; 40

	eor $1F.b,X		; 55 1F
	rts		; 60

	bmi  50.b		; 30 32
	adc $4000F0.l,X		; 7F F0 00 40
	eor $55.b,X		; 55 55
	ora ($2E.b,X)		; 01 2E
	tsb $68.b		; 04 68
	cld		; D8
	bcs  16.b		; B0 10
	ldy #$55B0.w		; A0 B0 55
	eor $55.b,X		; 55 55
	mvn $0F,$08		; 54 08 0F
	sei		; 78
	asl $0838.w		; 0E 38 08
	jmp ($1F4F.w,X)		; 7C 4F 1F
	ora ($0E.b,S),Y		; 13 0E
	asl $03.b		; 06 03
	ora $06.b,S		; 03 06
	eor $15.b,X		; 55 15
	ora $15.b,X		; 15 15
	ora [$C1.b]		; 07 C1
	cmp ($03.b,X)		; C1 03
	cop $06.b		; 02 06
	asl $80.b		; 06 80
	sec		; 38
	bpl  64.b		; 10 40
	sei		; 78
	sec		; 38
	trb $04.b		; 14 04
	ora $55.b,X		; 15 55
	ora ($02.b,X)		; 01 02
	ora $E0.b,S		; 03 E0
	jsr $4040.w		; 20 40 40
	jsr $4293.w		; 20 93 42
	brk $55.b		; 00 55
	eor ($45.b,X)		; 41 45
	ora ($1F.b,X)		; 01 1F
	jsr ($0FC8.w,X)		; FC C8 0F
	ora ($C1.b,X)		; 01 C1
	cpy #$5560.w		; C0 60 55
	mvn $55,$40		; 54 40 55
	bmi  64.b		; 30 40
	bra -64.b		; 80 C0
	cpy #$50C0.w		; C0 C0 50
	clc		; 18
	bpl  64.b		; 10 40
	bit $40.b,X		; 34 40
	ora $55.b,X		; 15 55
	eor $15.b		; 45 15
	ora $030103.l		; 0F 03 01 03
	ora $010C0C.l		; 0F 0C 0C 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $55.b		; 02 55
	eor ($55.b),Y		; 51 55
	ora ($B0.b,X)		; 01 B0
	ldy #$4010.w		; A0 10 40
	jsr $2040.w		; 20 40 20
	tsa		; 3B
	and $18.b,S		; 23 18
	jsr $5530.w		; 20 30 55
	eor ($54.b),Y		; 51 54
	mvn $0C,$04		; 54 04 0C
	tsb $0A.b		; 04 0A
	ora $02.b		; 05 02
	ora ($04.b,X)		; 01 04
	cop $04.b		; 02 04
	bra   1.b		; 80 01
	.db $82, $50, $15		; 82 50 15
	bpl   1.b		; 10 01
	bpl  24.b		; 10 18
	tsb $80.b		; 04 80
	tsb $0107.w		; 0C 07 01
	eor $01.b,X		; 55 01
	ora $54.b		; 05 54
	bmi  64.b		; 30 40
	bra  48.b		; 80 30
	cpy #$0919.w		; C0 19 09
	php		; 08
	ora [$08.b],Y		; 17 08
	ora $45.b		; 05 45
	ora $15.b		; 05 15
	ldy #$0781.w		; A0 81 07
	ora ($80.b,X)		; 01 80
	rts		; 60

	bra -16.b		; 80 F0
	sed		; F8
	rts		; 60

	eor $54.b,X		; 55 54
	eor $41.b,X		; 55 41
	bpl -128.b		; 10 80
	eor [$AF.b]		; 47 AF
	clc		; 18
	ora ($5E.b,X)		; 01 5E
	tsb $8902.w		; 0C 02 89
	mvp $40,$03		; 44 03 40
	eor ($11.b),Y		; 51 11
	eor $51.b,X		; 55 51
	and ($02.b),Y		; 31 02
	and $181E.w		; 2D 1E 18
	ora ($0E.b,X)		; 01 0E
	and $3C.b,X		; 35 3C
	cop $02.b		; 02 02
	ora $51.b		; 05 51
	eor $50.b		; 45 50
	ora $C0.b,X		; 15 C0
	adc ($C1.b,X)		; 61 C1
	asl $06.b		; 06 06
	bra -64.b		; 80 C0
	jsr $1C30.w		; 20 30 1C
	tsb $1115.w		; 0C 15 11
	brk $55.b		; 00 55
	asl $01.b		; 06 01
	tsb $02.b		; 04 02
	ora ($80.b,X)		; 01 80
	rti		; 40

	and ($8A.b,S),Y		; 33 8A
	bvc  84.b		; 50 54
	bpl  21.b		; 10 15
	tsb $090A.w		; 0C 0A 09
	sbc ($18.b),Y		; F1 18
	tsb $43.b		; 04 43
	ldy $E3.b		; A4 E3
	brk $05.b		; 00 05
	eor ($45.b,X)		; 41 45
	sed		; F8
	sed		; F8
	asl $1F30.w,X		; 1E 30 1F
	ora [$07.b]		; 07 07
	brk $55.b		; 00 55
	ora ($11.b),Y		; 11 11
	ora ($02.b,X)		; 01 02
	tsb $09.b		; 04 09
	rts		; 60

	ldy #$8040.w		; A0 40 80
	eor $55.b,X		; 55 55
	eor ($55.b),Y		; 51 55
	asl $1378.w,X		; 1E 78 13
	ora ($30.b),Y		; 11 30
	bit $67.b		; 24 67
	adc $01.b,S		; 63 01
	stx $02.b		; 86 02
	ora $0F.b,S		; 03 0F
	sta ($8E.b,X)		; 81 8E
	ora ($55.b,X)		; 01 55
	eor $55.b,X		; 55 55
	bra -63.b		; 80 C1
	ora ($C3.b,X)		; 01 C3
	sta $C0.b,S		; 83 C0
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	cpx #$7430.w		; E0 30 74
	brk $10.b		; 00 10
	eor $45.b		; 45 45
	ora ($38.b,X)		; 01 38
	pha		; 48
	bpl -128.b		; 10 80
	jsr $1540.w		; 20 40 15
	ora $05.b,X		; 15 05
	tsb $0E.b		; 04 0E
	bpl  56.b		; 10 38
	sec		; 38
	clc		; 18
	asl A		; 0A
	ora $02.b,S		; 03 02
	cop $44.b		; 02 44
	bpl  85.b		; 10 55
	mvp $80,$80		; 44 80 80
	tsb $1F.b		; 04 1F
	inc $6090.w		; EE 90 60
	cop $05.b		; 02 05
	ora $05.b,X		; 15 05
	mvp $8C,$55		; 44 55 8C
	cop $08.b		; 02 08
	ora $80.b		; 05 80
	bra  32.b		; 80 20
	cpy #$B0C8.w		; C0 C8 B0
	sbc ($55.b,S),Y		; F3 55
	ora ($05.b,X)		; 01 05
	ora ($01.b,X)		; 01 01
	php		; 08
	php		; 08
	ora [$03.b]		; 07 03
	dec $C6.b		; C6 C6
	bra  85.b		; 80 55
	eor $01.b,X		; 55 01
	tsb $64.b		; 04 64
	eor $0438.w,X		; 5D 38 04
	ora $13.b,S		; 03 13
	ora $01CF.w		; 0D CF 01
	ora ($01.b,X)		; 01 01
	eor $05.b,X		; 55 05
	eor $80.b,X		; 55 80
	eor [$38.b]		; 47 38
	sta [$48.b]		; 87 48
	bmi  48.b		; 30 30
	bra  64.b		; 80 40
	jsr $1580.w		; 20 80 15
	rti		; 40

	eor $40.b,X		; 55 40
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	tsb $8C.b		; 04 8C
	sed		; F8
	beq -64.b		; F0 C0
	ora $15.b,X		; 15 15
	eor ($51.b,X)		; 41 51
	tsb $303C.w		; 0C 3C 30
	ora ($02.b,X)		; 01 02
	tsb $03.b		; 04 03
	ora $F8.b		; 05 F8
	cpx #$4112.w		; E0 12 41
	tsb $55.b		; 04 55
	ora $60.b		; 05 60
	sta $0807FF.l,X		; 9F FF 07 08
	and ($C2.b),Y		; 31 C2
	trb $00E0.w		; 1C E0 00
	mvn $15,$54		; 54 54 15
	ora ($03.b,X)		; 01 03
	ora [$0C.b]		; 07 0C
	bit $E776.w,X		; 3C 76 E7
	cmp $80.b,S		; C3 80
	rti		; 40

	eor $00.b,X		; 55 00
	eor $0C.b,X		; 55 0C
	bit $E776.w,X		; 3C 76 E7
	cmp $07.b,S		; C3 07
	ora $55F07C.l,X		; 1F 7C F0 55
	ora $00.b		; 05 00
	mvn $0E,$06		; 54 06 0E
	trb $F018.w		; 1C 18 F0
	cpx #$0304.w		; E0 04 03
	ora ($55.b,X)		; 01 55
	ora $00.b,X		; 15 00
	eor $F0.b,X		; 55 F0
	bra  72.b		; 80 48
	jsr $1007.w		; 20 07 10
	sta $8618E0.l		; 8F E0 18 86
	adc ($00.b,X)		; 61 00
	bvc  85.b		; 50 55
	eor $07.b,X		; 55 07
	ora $060703.l,X		; 1F 03 07 06
	tsb $181C.w		; 0C 1C 18
	beq -32.b		; F0 E0
	ora ($55.b,X)		; 01 55
	ora ($55.b,X)		; 01 55
	bra   4.b		; 80 04
	tsb $26.b		; 04 26
	ora $2001.w,Y		; 19 01 20
	rts		; 60

	ldy #$5540.w		; A0 40 55
	eor $05.b,X		; 55 05
	ora ($C0.b,X)		; 01 C0
	jsr $1080.w		; 20 80 10
	pha		; 48
	jsr $1007.w		; 20 07 10
	ora ($02.b,X)		; 01 02
	ora $45.b,S		; 03 45
	ora $40.b		; 05 40
	eor $C0.b,X		; 55 C0
	rti		; 40

	rti		; 40

	bmi -64.b		; 30 C0
	ora $7C.b,S		; 03 7C
	lsr $3A.b		; 46 3A
	ora ($50.b,X)		; 01 50
	eor $44.b,X		; 55 44
	eor $38.b,X		; 55 38
	cpy #$8C78.w		; C0 78 8C
	sec		; 38
	bit $02.b		; 24 02
	ora ($12.b,X)		; 01 12
	jsr $0E58.w		; 20 58 0E
	rti		; 40

	ora $55.b		; 05 55
	ora $20.b		; 05 20
	bcc  40.b		; 90 28
	ora [$04.b]		; 07 04
	cop $06.b		; 02 06
	php		; 08
	ora $50.b,S		; 03 50
	ora $55.b		; 05 55
	mvn $03,$01		; 54 01 03
	ora $03.b,S		; 03 03
	ror $C0E0.w,X		; 7E E0 C0
	bra -64.b		; 80 C0
	cpx #$5530.w		; E0 30 55
	eor $11.b,X		; 55 11
	eor $18.b,X		; 55 18
	bpl   7.b		; 10 07
	adc [$76.b],Y		; 77 76
	rol $30.b,X		; 36 30
	stz $09.b,X		; 74 09
	clc		; 18
	asl $05.b,X		; 16 05
	cop $04.b		; 02 04
	eor $45.b,X		; 55 45
	eor ($55.b),Y		; 51 55
	eor ($01.b,X)		; 41 01
	eor $07031F.l,X		; 5F 1F 03 07
	ora [$80.b]		; 07 80
	.db $62, $68, $05		; 62 68 05
	phd		; 0B
	ora ($0B.b),Y		; 11 0B
	eor $54.b,X		; 55 54
	mvp $1E,$00		; 44 00 1E
	ora $0204.w,Y		; 19 04 02
	asl $88.b		; 06 88
	eor $07.b,S		; 43 07
	ora ($15.b,X)		; 01 15
	brk $55.b		; 00 55
	ora ($70.b,X)		; 01 70
	cpx #$02C0.w		; E0 C0 02
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	ora ($55.b,X)		; 01 55
	cpx #$03F0.w		; E0 F0 03
	ora $0E.b,S		; 03 0E
	sei		; 78
	bmi   0.b		; 30 00
	eor $15.b,X		; 55 15
	brk $E0.b		; 00 E0
	bmi  24.b		; 30 18
	clc		; 18
	asl $070F.w		; 0E 0F 07
	rti		; 40

	tsb $51.b		; 04 51
	ora $07.b		; 05 07
	ora ($30.b,X)		; 01 30
	bvc -96.b		; 50 A0
	rti		; 40

	bra  85.b		; 80 55
	ora ($55.b,X)		; 01 55
	eor $4F.b,X		; 55 4F
	stz $23.b,X		; 74 23
	cli		; 58
	rts		; 60

	asl $02.b		; 06 02
	tsb $1604.w		; 0C 04 16
	php		; 08
	and ($12.b,X)		; 21 12
	ora $54.b,X		; 15 54
	eor $50.b,X		; 55 50
	ora ($01.b,X)		; 01 01
	cop $47.b		; 02 47
	eor $80.b,S		; 43 80
	php		; 08
	php		; 08
	tsb $8607.w		; 0C 07 86
	ora $51.b,S		; 03 51
	eor $45.b		; 45 45
	tsb $4C.b		; 04 4C
	.db $82, $49, $80		; 82 49 80
	ora [$80.b]		; 07 80
	ora [$04.b]		; 07 04
	cop $01.b		; 02 01
	bvc  85.b		; 50 55
	tsb $55.b		; 04 55
	bra -64.b		; 80 C0
	cpx #$30F0.w		; E0 F0 30
	bmi   1.b		; 30 01
	ora ($7F.b,X)		; 01 7F
	bit $5401.w,X		; 3C 01 54
	ora $00.b		; 05 00
	eor $80.b		; 45 80
	rti		; 40

	php		; 08
	bit $3C.b,X		; 34 3C
	ora $510C0F.l		; 0F 0F 0C 51
	ora $10.b		; 05 10
	ora ($18.b),Y		; 11 18
	plp		; 28
	bne  96.b		; D0 60
	bra   1.b		; 80 01
	asl $0B.b		; 06 0B
	eor $04.b		; 45 04
	eor ($44.b),Y		; 51 44
	rts		; 60

	ldy #$8040.w		; A0 40 80
	asl $01.b		; 06 01
	tsb $02.b		; 04 02
	ora ($00.b,X)		; 01 00
	eor ($51.b),Y		; 51 51
	eor $80.b,X		; 55 80
	rts		; 60

	clc		; 18
	.db $62, $04, $5A		; 62 04 5A
	bit $0A0D.w,X		; 3C 0D 0A
	ora $50.b,S		; 03 50
	ora $54.b		; 05 54
	ora $21.b,X		; 15 21
	bpl   6.b		; 10 06
	asl $20.b,X		; 16 20
	rti		; 40

	plp		; 28
	cmp [$88.b]		; C7 88
	ora [$54.b]		; 07 54
	eor $54.b		; 45 54
	eor $03.b,X		; 55 03
	asl $800C.w		; 0E 0C 80
	cpy #$8001.w		; C0 01 80
	rti		; 40

	rti		; 40

	eor ($C1.b,X)		; 41 C1
	sta [$9F.b]		; 87 9F
	eor $04.b		; 45 04
	eor $45.b		; 45 45
	bvs  16.b		; 70 10
	bra  32.b		; 80 20
	ora $07.b,S		; 03 07
	ora [$03.b]		; 07 03
	ora ($07.b,X)		; 01 07
	ora ($44.b,X)		; 01 44
	eor $55.b,X		; 55 55
	cpy #$8040.w		; C0 40 80
	ora [$06.b]		; 07 06
	ora ($01.b,X)		; 01 01
	asl $3B.b		; 06 3B
	bit $18.b		; 24 18
	eor ($05.b),Y		; 51 05
	eor $00.b		; 45 00
	cpy #$C0C0.w		; C0 C0 C0
	jsr $0E80.w		; 20 80 0E
	php		; 08
	ora $55.b		; 05 55
	eor $15.b,X		; 55 15
	eor $38.b		; 45 38
	bmi 112.b		; 30 70
	rts		; 60

	rts		; 60

	cpx #$C0C0.w		; E0 C0 C0
	trb $0C16.w		; 1C 16 0C
	bmi  28.b		; 30 1C
	trb $1455.w		; 1C 55 14
	eor $04.b,X		; 55 04
	and $361F06.l		; 2F 06 1F 36
	ora ($03.b)		; 12 03
	php		; 08
	sty $40C0.w		; 8C C0 40
	php		; 08
	ora $44.b		; 05 44
	eor ($05.b),Y		; 51 05
	ora $03.b,S		; 03 03
	rti		; 40

	bra  28.b		; 80 1C
	ora ($08.b)		; 12 08
	tsb $01.b		; 04 01
	eor $54.b,X		; 55 54
	rti		; 40

	eor $C0.b		; 45 C0
	jsr $1F80.w		; 20 80 1F
	ora [$48.b]		; 07 48
	bmi -128.b		; 30 80
	rti		; 40

	jsr $0080.w		; 20 80 00
	bvc  64.b		; 50 40
	eor $03.b,X		; 55 03
	ora [$01.b]		; 07 01
	ora $0C.b,S		; 03 0C
	cpy #$45E0.w		; C0 E0 45
	eor $51.b		; 45 51
	mvn $A0,$60		; 54 60 A0
	eor $80.b,S		; 43 80
	tsb $01.b		; 04 01
	ora $05.b,S		; 03 05
	sed		; F8
	cpx #$0C12.w		; E0 12 0C
	ora ($55.b),Y		; 11 55
	eor $55.b,X		; 55 55
	cpy #$8020.w		; C0 20 80
	ora $720710.l		; 0F 10 07 72
	bpl  96.b		; 10 60
	tsb $02.b		; 04 02
	dey		; 88
	mvn $55,$18		; 54 18 55
	ora $01.b,X		; 15 01
	brk $19.b		; 00 19
	ora $0311.w,Y		; 19 11 03
	cop $06.b		; 02 06
	trb $0507.w		; 1C 07 05
	bvc  65.b		; 50 41
	eor $80.b,X		; 55 80
	bra   1.b		; 80 01
	cop $03.b		; 02 03
	tsb $01.b		; 04 01
	beq   8.b		; F0 08
	cpx #$0055.w		; E0 55 00
	eor $00.b,X		; 55 00
	rts		; 60

	cpx #$FFFF.w		; E0 FF FF
	ora $E0FC3E.l,X		; 1F 3E FC E0
	eor $00.b,X		; 55 00
	ora ($00.b,X)		; 01 00
	beq 120.b		; F0 78
	and $553007.l,X		; 3F 07 30 55
	ora $55.b		; 05 55
	ora $C0.b		; 05 C0
	rts		; 60

	rts		; 60

	cpx #$FFFF.w		; E0 FF FF
	ora $07.b,S		; 03 07
	ora $E0FC3E.l		; 0F 3E FC E0
	eor $11.b		; 45 11
	brk $50.b		; 00 50
	ora [$01.b]		; 07 01
	ora ($F8.b,X)		; 01 F8
	sbc $50BC7F.l,X		; FF 7F BC 50
	ora $50.b,X		; 15 50
	eor $18.b,X		; 55 18
	plp		; 28
	jmp ($80C7.w)		; 6C C7 80
	bmi  40.b		; 30 28
	jmp ($03C6.w)		; 6C C6 03
	ora ($00.b,X)		; 01 00
	bvc  85.b		; 50 55
	eor $FC.b,X		; 55 FC
	stx $02.b		; 86 02
	asl $111A.w		; 0E 1A 11
	bpl  35.b		; 10 23
	rol $5538.w		; 2E 38 55
	eor $00.b		; 45 00
	eor $46.b,X		; 55 46
	mvp $98,$CC		; 44 CC 98
	bpl -16.b		; 10 F0
	ora [$C0.b]		; 07 C0
	cpy #$C078.w		; C0 78 C0
	eor ($01.b),Y		; 51 01
	eor $15.b,X		; 55 15
	clc		; 18
	ora ($06.b),Y		; 11 06
	ora [$C4.b]		; 07 C4
	bra  98.b		; 80 62
	ora $23.b,X		; 15 23
	ora $54551F.l		; 0F 1F 55 54
	bpl   4.b		; 10 04
	bra  96.b		; 80 60
	bvc -96.b		; 50 A0
	tya		; 98
	rts		; 60

	bne   1.b		; D0 01
	ora ($15.b,X)		; 01 15
	eor $04.b,X		; 55 04
	eor $60.b,X		; 55 60
	cpy #$E080.w		; C0 80 E0
	bpl  16.b		; 10 10
	bpl   3.b		; 10 03
	ora $04.b,S		; 03 04
	ora [$03.b]		; 07 03
	ora $55.b,X		; 15 55
	eor $45.b,X		; 55 45
	bvs -80.b		; 70 B0
	bra -96.b		; 80 A0
	tya		; 98
	ldy #$7C18.w		; A0 18 7C
	sbc ($74.b,S),Y		; F3 74
	sta $78.b,S		; 83 78
	tsb $5014.w		; 0C 14 50
	brk $55.b		; 00 55
	ora $80.b		; 05 80
	bra  12.b		; 80 0C
	asl A		; 0A
	ora $02.b		; 05 02
	asl $141F.w		; 0E 1F 14
	brk $15.b		; 00 15
	brk $03.b		; 00 03
	ora ($30.b,X)		; 01 30
	bne -32.b		; D0 E0
	bvc   1.b		; 50 01
	eor ($55.b),Y		; 51 55
	cop $01.b		; 02 01
	cop $10.b		; 02 10
	bmi  16.b		; 30 10
	plp		; 28
	bpl   4.b		; 10 04
	asl A		; 0A
	ora $00.b,X		; 15 00
	tsb $00.b		; 04 00
	clc		; 18
	ora [$0F.b],Y		; 17 0F
	bra  85.b		; 80 55
	eor ($10.b),Y		; 51 10
	eor $07.b,X		; 55 07
	tsb $1802.w		; 0C 02 18
	ora ($06.b,X)		; 01 06
	ora $A04080.l,X		; 1F 80 40 A0
	bvs   8.b		; 70 08
	ora ($45.b,X)		; 01 45
	eor ($45.b,X)		; 41 45
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	bpl  32.b		; 10 20
	bne -32.b		; D0 E0
	bra  81.b		; 80 51
	eor $10.b,X		; 55 10
	ora $06.b,X		; 15 06
	ora [$FE.b]		; 07 FE
	stz $0D.b		; 64 0D
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	rti		; 40

	bra  17.b		; 80 11
	eor $55.b,X		; 55 55
	bvc   1.b		; 50 01
	cop $05.b		; 02 05
	asl A		; 0A
	trb $C021.w		; 1C 21 C0
	rts		; 60

	bra  48.b		; 80 30
	cpy #$15F0.w		; C0 F0 15
	eor $45.b,X		; 55 45
	bpl   1.b		; 10 01
	asl $03.b		; 06 03
	cop $05.b		; 02 05
	cop $01.b		; 02 01
	bmi  16.b		; 30 10
	rts		; 60

	bra  81.b		; 80 51
	mvp $45,$55		; 44 55 45
	ora ($06.b,X)		; 01 06
	asl $02.b		; 06 02
	ora $80.b		; 05 80
	rts		; 60

	rts		; 60

	ldy $0834.w,X		; BC 34 08
	rti		; 40

	eor $55.b,X		; 55 55
	eor $54.b,X		; 55 54
	php		; 08
	tsb $02.b		; 04 02
	ora #$0F04.w		; 09 04 0F
	php		; 08
	ora $19.b,S		; 03 19
	bpl   1.b		; 10 01
	tsb $0201.w		; 0C 01 02
	ora ($54.b,X)		; 01 54
	ora $55.b		; 05 55
	ora $C0.b		; 05 C0
	rti		; 40

	rti		; 40

	cpy #$4080.w		; C0 80 40
	jsr $2720.w		; 20 20 27
	bit $0518.w,X		; 3C 18 05
	eor $05.b,X		; 55 05
	rti		; 40

	asl $06.b		; 06 06
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	jmp ($073C.w,X)		; 7C 3C 07
	eor $55.b,X		; 55 55
	mvp $3E,$55		; 44 55 3E
	ora [$3F.b]		; 07 3F
	ora ($21.b,X)		; 01 21
	jsr $CF1E.w		; 20 1E CF
	bra -127.b		; 80 81
	.db $82, $06, $04		; 82 06 04
	tsb $55.b		; 04 55
	ora $55.b		; 05 55
	brk $04.b		; 00 04
	php		; 08
	php		; 08
	iny		; C8
	sei		; 78
	bmi -64.b		; 30 C0
	bra  -1.b		; 80 FF
	ora ($15.b,X)		; 01 15
	eor $55.b,X		; 55 55
	eor $0C.b,X		; 55 0C
	clc		; 18
	cpx #$4780.w		; E0 80 47
	bit $0C.b,X		; 34 0C
	rts		; 60

	bmi  15.b		; 30 0F
	ora ($02.b,X)		; 01 02
	cpy $58.b		; C4 58
	rts		; 60

	ora $00.b,X		; 15 00
	brk $40.b		; 00 40
	asl $02.b		; 06 02
	inc $9518.w,X		; FE 18 95
	lsr $65.b,X		; 56 65
	ldx $9A.b		; A6 9A
	ldx $59.b		; A6 59
	tax		; AA
	adc #$595A.w		; 69 5A 59
	tax		; AA
	lda #$6695.w		; A9 95 66
	tax		; AA
	ldx $A6.b		; A6 A6
	ldx $59.b		; A6 59
	eor $AA69.w,Y		; 59 69 AA
	ror A		; 6A
	tax		; AA
	eor $05.b,X		; 55 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra  64.b		; 80 40
	and $10.b		; 25 10
	bpl  33.b		; 10 21
	tay		; A8
	bra   8.b		; 80 08
	bne  78.b		; D0 4E
	brk $00.b		; 00 00
	ror A		; 6A
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
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
	brk $D4.b		; 00 D4
	eor $38.b,S		; 43 38
	asl A		; 0A
	and $A9.b		; 25 A9
	ror $1C.b		; 66 1C
	plp		; 28
	stz $B8.b		; 64 B8
	cop $08.b		; 02 08
	cpy $1008.w		; CC 08 10
	ora $1220.w		; 0D 20 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	ora ($02.b,X)		; 01 02
	rti		; 40

	dey		; 88
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	bcs -116.b		; B0 8C
	tya		; 98
	bpl  32.b		; 10 20
	bmi -125.b		; 30 83
	brk $02.b		; 00 02
	stx $00.b		; 86 00
	bra  68.b		; 80 44
	eor $100040.l		; 4F 40 00 10
	cpy #$0000.w		; C0 00 00
	rti		; 40

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
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bvc -128.b		; 50 80
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $34.b		; 00 34
	inc A		; 1A
	ora ($62.b,X)		; 01 62
	eor $E6.b,S		; 43 E6
	cmp ($08.b,X)		; C1 08
	asl $C4.b		; 06 C4
	inx		; E8
	rti		; 40

	.db $42, $93		; 42 93
	sta ($40.b,X)		; 81 40
	and ($04.b,X)		; 21 04
	brk $40.b		; 00 40
	brk $84.b		; 00 84
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	tsb $48.b		; 04 48
	php		; 08
	cop $08.b		; 02 08
	brk $8A.b		; 00 8A
	ora ($20.b)		; 12 20
	brk $00.b		; 00 00
	pha		; 48
	bpl   0.b		; 10 00
	rti		; 40

	sta ($00.b),Y		; 91 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b,Y		; 96 00
	beq  36.b		; F0 24
	cmp ($41.b),Y		; D1 41
	asl A		; 0A
	plp		; 28
	tsb $10.b		; 04 10
	cli		; 58
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $40.b		; 00 40
	plp		; 28
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
	bra  64.b		; 80 40
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0C00.w		; 20 00 0C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	trb $00.b		; 14 00
	stz $9EF5.w		; 9C F5 9E
	bvs -32.b		; 70 E0
	bpl -30.b		; 10 E2
	and $63.b,X		; 35 63
	sbc ($00.b,X)		; E1 00
	cpy #$0054.w		; C0 54 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($41.b,X)		; 01 41
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	trb $02.b		; 14 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $11.b		; 00 11
	cop $01.b		; 02 01
	brk $0A.b		; 00 0A
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
	brk $86.b		; 00 86
	ora ($16.b,S),Y		; 13 16
	rts		; 60

	brk $7A.b		; 00 7A
	.db $82, $16, $80		; 82 16 80
	jsr $2B54.w		; 20 54 2B
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $A8.b		; 00 A8
	ora #$0000.w		; 09 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($05.b,X)		; 01 05
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $18.b		; 00 18
	and $A404.w,Y		; 39 04 A4
	sty $82.b		; 84 82
	bit $E4.b,X		; 34 E4
	ldy #$B0BE.w		; A0 BE B0
	bcc  30.b		; 90 1E
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bpl   1.b		; 10 01
	dey		; 88
	brk $20.b		; 00 20
	php		; 08
	ora $16.b,S		; 03 16
	brk $00.b		; 00 00
	plp		; 28
	rti		; 40

	brk $08.b		; 00 08
	bpl  32.b		; 10 20
	tsb $00.b		; 04 00
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bpl   4.b		; 10 04
	bra   9.b		; 80 09
	bpl   0.b		; 10 00
	cop $01.b		; 02 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra -115.b		; 80 8D
	tsb $0100.w		; 0C 00 01
	jsl $001240.l		; 22 40 12 00
	brk $95.b		; 00 95
	asl A		; 0A
	.db $42, $28		; 42 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $40.b		; 00 40
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	.db $82, $3C, $A0		; 82 3C A0
	eor $E60A.w		; 4D 0A E6
	iny		; C8
	sbc $00.b,S		; E3 00
	lsr $AC76.w		; 4E 76 AC
	ora ($02.b)		; 12 02
	php		; 08
	brk $02.b		; 00 02
	jsr $0042.w		; 20 42 00
	brk $40.b		; 00 40
	cop $50.b		; 02 50
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	bpl   1.b		; 10 01
	bra   2.b		; 80 02
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $4D.b		; 04 4D
	lsr A		; 4A
	lsr $8C00.w		; 4E 00 8C
	sta ($82.b,X)		; 81 82
	bit $60.b,X		; 34 60
	sty $00.b,X		; 94 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
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
	ora [$F0.b]		; 07 F0
	lda $48.b,X		; B5 48
	rti		; 40

	eor ($54.b)		; 52 54
	inc A		; 1A
	trb $9402.w		; 1C 02 94
	lsr $C440.w		; 4E 40 C4
	clc		; 18
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0100.w		; 20 00 01
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $82.b		; 04 82
	brk $90.b		; 00 90
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $88.b		; 00 88
	cop $06.b		; 02 06
	php		; 08
	bra   0.b		; 80 00
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
	lda $42.b,S		; A3 42
	eor ($10.b)		; 52 10
	cop $20.b		; 02 20
	jsl $200249.l		; 22 49 02 20
	brk $90.b		; 00 90
	brk $42.b		; 00 42
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $7F80.w		; F4 80 7F
	sta ($0A.b,X)		; 81 0A
	.db $82, $7D, $82		; 82 7D 82
	trb $83.b		; 14 83
	adc #$E883.w		; 69 83 E8
	sta $73.b,S		; 83 73
	sty $E6.b		; 84 E6
	sty $47.b		; 84 47
	sta $BA.b		; 85 BA
	sta $87.b		; 85 87
	stx $0C.b		; 86 0C
	sta [$91.b]		; 87 91
	sta [$EC.b]		; 87 EC
	sta [$53.b]		; 87 53
	dey		; 88
	tay		; A8
	dey		; 88
	eor $89.b		; 45 89
	dey		; 88
	bit #$89F5.w		; 89 F5 89
	jmp $8AE78A.l		; 5C 8A E7 8A
	jmp ($0F8B.w)		; 6C 8B 0F
	sty $8CB2.w		; 8C B2 8C
	eor #$DA8D.w		; 49 8D DA
	sta $8E4D.w		; 8D 4D 8E
	cpy $4B8E.w		; CC 8E 4B
	sta $078FB8.l		; 8F B8 8F 07
	bcc 110.b		; 90 6E
	bcc -19.b		; 90 ED
	bcc  78.b		; 90 4E
	sta ($EB.b),Y		; 91 EB
	sta ($70.b),Y		; 91 70
	sta ($07.b)		; 92 07
	sta ($BC.b,S),Y		; 93 BC
	sta ($5F.b,S),Y		; 93 5F
	sty $F6.b,X		; 94 F6
	sty $81.b,X		; 94 81
	sta $12.b,X		; 95 12
	stx $97.b,Y		; 96 97
	stx $4C.b,Y		; 96 4C
	sta [$FB.b],Y		; 97 FB
	sta [$86.b],Y		; 97 86
	tya		; 98
	sbc $99B498.l,X		; FF 98 B4 99
	and $9AA09A.l,X		; 3F 9A A0 9A
	ora [$9B.b]		; 07 9B
	bra -101.b		; 80 9B
	ora $9C.b		; 05 9C
	jmp ($F19C.w)		; 6C 9C F1
	stz $9D8E.w		; 9C 8E 9D
	and $9E.b		; 25 9E
.INDEX 16
	rep #$9E		; C2 9E
	ora [$9F.b],Y		; 17 9F
	adc ($9F.b)		; 72 9F
	cmp $A04C9F.l,X		; DF 9F 4C A0
	lda $50A0.w,Y		; B9 A0 50
	lda ($DB.b,X)		; A1 DB
	lda ($7E.b,X)		; A1 7E
	ldx #$A32D.w		; A2 2D A3
	inc $85A3.w		; EE A3 85
	ldy $34.b		; A4 34
	lda $BF.b		; A5 BF
	lda $1A.b		; A5 1A
	ldx $CF.b		; A6 CF
	ldx $60.b		; A6 60
	lda [$E5.b]		; A7 E5
	lda [$58.b]		; A7 58
	tay		; A8
	cmp [$A8.b],Y		; D7 A8
	ror $D5A9.w		; 6E A9 D5
	lda #$AA78.w		; A9 78 AA
	cmp $64AA.w,Y		; D9 AA 64
	plb		; AB
	sbc $AB.b,S		; E3 AB
	pla		; 68
	ldy $ACD5.w		; AC D5 AC
	sty $AD.b		; 84 AD
	sbc $ACAD.w,X		; FD AD AC
	ldx $AF37.w		; AE 37 AF
	iny		; C8
	lda $08B071.l		; AF 71 B0 08
	lda ($B1.b),Y		; B1 B1
	lda ($48.b),Y		; B1 48
	lda ($CD.b)		; B2 CD
	lda ($70.b)		; B2 70
	lda ($13.b,S),Y		; B3 13
	ldy $92.b,X		; B4 92
	ldy $05.b,X		; B4 05
	lda $D2.b,X		; B5 D2
	lda $69.b,X		; B5 69
	ldx $00.b,Y		; B6 00
	lda [$73.b],Y		; B7 73
	lda [$0A.b],Y		; B7 0A
	clv		; B8
	sta $B8.b,X		; 95 B8
	jsr $93B9.w		; 20 B9 93
	lda $BA2A.w,Y		; B9 2A BA
	lda $BA.b,X		; B5 BA
	plp		; 28
	tyx		; BB
	lda ($BB.b,S),Y		; B3 BB
	rol $BC.b		; 26 BC
	lda $48BC.w,X		; BD BC 48
	lda $BDBB.w,X		; BD BB BD
	trb $83BE.w		; 1C BE 83
	ldx $BF1A.w,Y		; BE 1A BF
	plb		; AB
	lda $B5C000.l,X		; BF 00 C0 B5
	cpy #$EA17.w		; C0 17 EA
	asl $B8.b		; 06 B8
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $B8.b,X		; F6 B8
	php		; 08
	cop $48.b		; 02 48
	inc $A002.w		; EE 02 A0
	php		; 08
	tsb $48.b		; 04 48
	inc $C802.w		; EE 02 C8
	php		; 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $00FB.w		; ED FB 00
	php		; 08
	rti		; 40

	cpx $E00C.w		; EC 0C E0
	brk $09.b		; 00 09
	rti		; 40

	cpx $F00C.w		; EC 0C F0
	brk $0A.b		; 00 0A
	rti		; 40

	cpx $F80C.w		; EC 0C F8
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	inc $0C00.w		; EE 00 0C
	rti		; 40

	sbc $E80B.w		; ED 0B E8
	brk $0D.b		; 00 0D
	rti		; 40

	inc $B0FA.w,X		; FE FA B0
	brk $0E.b		; 00 0E
	rti		; 40

	inc $E0FA.w,X		; FE FA E0
	brk $0F.b		; 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	cpx #$1800.w		; E0 00 18
	rti		; 40

	sbc #$FF0F.w		; E9 0F FF
	brk $19.b		; 00 19
	rti		; 40

	cop $F6.b		; 02 F6
	inx		; E8
	brk $1A.b		; 00 1A
	rti		; 40

	inc $B00A.w		; EE 0A B0
	brk $1B.b		; 00 1B
	rti		; 40

	inc $02.b,X		; F6 02
	bcs   0.b		; B0 00
	trb $FE40.w		; 1C 40 FE
	plx		; FA
	iny		; C8
	brk $1D.b		; 00 1D
	rti		; 40

	inc $D0FA.w,X		; FE FA D0
	brk $1E.b		; 00 1E
	rti		; 40

	inc $D80A.w		; EE 0A D8
	brk $1F.b		; 00 1F
	rti		; 40

	inc $02.b,X		; F6 02
	cld		; D8
	brk $20.b		; 00 20
	rti		; 40

	inc $D8FA.w,X		; FE FA D8
	brk $21.b		; 00 21
	rti		; 40

	ora [$F1.b]		; 07 F1
	inc $00.b,X		; F6 00
	jsl $EB1740.l		; 22 40 17 EB
	ora $B1.b		; 05 B1
	php		; 08
	brk $48.b		; 00 48
	xba		; EB
	ora $C1.b		; 05 C1
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $D1.b		; 05 D1
	php		; 08
	tsb $48.b		; 04 48
	jsr ($E1F4.w,X)		; FC F4 E1
	php		; 08
	asl $48.b		; 06 48
	sbc [$09.b]		; E7 09
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sta $480A08.l,X		; 9F 08 0A 48
	xba		; EB
	ora $00F1.w		; 0D F1 00
	tsb $0340.w		; 0C 40 03
	sbc $F1.b,X		; F5 F1
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	sbc $00F1.w		; ED F1 00
	asl $EB40.w		; 0E 40 EB
	ora $00F9.w		; 0D F9 00
	ora $0FE940.l		; 0F 40 E9 0F
	sbc ($00.b,X)		; E1 00
	trb $0940.w		; 1C 40 09
	sbc $1D00F9.l		; EF F9 00 1D
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	xce		; FB
	sbc $00B1.w,X		; FD B1 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	xce		; FB
	sbc $00C1.w,X		; FD C1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	jsl $FDFB40.l		; 22 40 FB FD
	cmp ($00.b),Y		; D1 00
	and $40.b,S		; 23 40
	xce		; FB
	sbc $00D9.w,X		; FD D9 00
	bit $40.b		; 24 40
	sbc $15.b,S		; E3 15
	cmp ($00.b,X)		; C1 00
	and $40.b		; 25 40
	sbc $15.b,S		; E3 15
	cmp $2600.w,Y		; D9 00 26
	rti		; 40

	ora [$F1.b]		; 07 F1
	sta $402700.l,X		; 9F 00 27 40
	xba		; EB
	ora $00E9.w		; 0D E9 00
	plp		; 28
	rti		; 40

	ora ($F1.b,S),Y		; 13 F1
	sbc $0008DA.l,X		; FF DA 08 00
	pha		; 48
	cpx $BA04.w		; EC 04 BA
	php		; 08
	cop $48.b		; 02 48
	jsr ($BAF4.w,X)		; FC F4 BA
	php		; 08
	tsb $48.b		; 04 48
	sbc $AA03.w		; ED 03 AA
	php		; 08
	asl $48.b		; 06 48
	sbc $AAF3.w,X		; FD F3 AA
	php		; 08
	php		; 08
	pha		; 48
	inc $CA02.w		; EE 02 CA
	php		; 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $00FA.w		; 0D FA 00
	tsb $0B40.w		; 0C 40 0B
	sbc $00F8.w		; ED F8 00
	ora $F940.w		; 0D 40 F9
	sbc $0E00A2.l,X		; FF A2 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$0F00.w		; A2 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	inx		; E8
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $F20B.w		; ED 0B F2
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldx #$1E00.w		; A2 00 1E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	jsr $FE40.w		; 20 40 FE
	plx		; FA
	dex		; CA
	brk $21.b		; 00 21
	rti		; 40

	inc $D2FA.w,X		; FE FA D2
	brk $22.b		; 00 22
	rti		; 40

	sbc $00EA09.l		; EF 09 EA 00
	and $40.b,S		; 23 40
	ora [$F1.b]		; 07 F1
	beq   0.b		; F0 00
	bit $40.b		; 24 40
	ora $FEF2.w,Y		; 19 F2 FE
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	cpx $0C.b		; E4 0C
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	cpx $C904.w		; EC 04 C9
	php		; 08
	tsb $48.b		; 04 48
	cpx $B904.w		; EC 04 B9
	php		; 08
	asl $48.b		; 06 48
	jmp.w [$B914]		; DC 14 B9
	php		; 08
	php		; 08
	pha		; 48
	inx		; E8
	bpl -31.b		; 10 E1
	brk $0A.b		; 00 0A
	rti		; 40

	jsr ($C1FC.w,X)		; FC FC C1
	brk $0B.b		; 00 0B
	rti		; 40

	inx		; E8
	bpl -23.b		; 10 E9
	brk $0C.b		; 00 0C
	rti		; 40

	sbc #$F10F.w		; E9 0F F1
	brk $0D.b		; 00 0D
	rti		; 40

	sbc #$F90F.w		; E9 0F F9
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cpx $0F00.w		; EC 00 0F
	rti		; 40

	pea $A104.w		; F4 04 A1
	brk $1A.b		; 00 1A
	rti		; 40

	pea $A904.w		; F4 04 A9
	brk $1B.b		; 00 1B
	rti		; 40

	cpx $14.b		; E4 14
	lda ($00.b),Y		; B1 00
	trb $EC40.w		; 1C 40 EC
	tsb $00B1.w		; 0C B1 00
	ora $F440.w,X		; 1D 40 F4
	tsb $B1.b		; 04 B1
	brk $1E.b		; 00 1E
	rti		; 40

	jmp.w [$C91C]		; DC 1C C9
	brk $1F.b		; 00 1F
	rti		; 40

	cpx $14.b		; E4 14
	cmp #$2000.w		; C9 00 20
	rti		; 40

	cpx $14.b		; E4 14
	cmp ($00.b),Y		; D1 00
	and ($40.b,X)		; 21 40
	tsb $F4.b		; 04 F4
	sbc ($00.b)		; F2 00
	jsl $FCFC40.l		; 22 40 FC FC
	ldx $00.b		; A6 00
	and $40.b,S		; 23 40
	jsr ($AEFC.w,X)		; FC FC AE
	brk $24.b		; 00 24
	rti		; 40

	jsr ($B6FC.w,X)		; FC FC B6
	brk $25.b		; 00 25
	rti		; 40

	sbc $E8FB.w,X		; FD FB E8
	brk $26.b		; 00 26
	rti		; 40

	inc $12.b		; E6 12
	cmp $2700.w,Y		; D9 00 27
	rti		; 40

	asl $05EB.w		; 0E EB 05
	cmp #$0008.w		; C9 08 00
	pha		; 48
	cpx $E904.w		; EC 04 E9
	php		; 08
	cop $48.b		; 02 48
	jsr ($E9F4.w,X)		; FC F4 E9
	php		; 08
	tsb $48.b		; 04 48
	sbc $0B.b		; E5 0B
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	sbc $FB.b,X		; F5 FB
	cmp $0808.w,Y		; D9 08 08
	pha		; 48
	cpx $F90C.w		; EC 0C F9
	brk $0A.b		; 00 0A
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $0D00.w,Y		; F9 00 0D
	rti		; 40

	sbc $15.b,S		; E3 15
	cmp ($00.b),Y		; D1 00
	asl $0C40.w		; 0E 40 0C
	cpx $00F9.w		; EC F9 00
	ora $F30540.l		; 0F 40 05 F3
	cmp $1A00.w,Y		; D9 00 1A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	ora $DCEB.w		; 0D EB DC
	brk $1C.b		; 00 1C
	rti		; 40

	ora $10.b,X		; 15 10
	cpx #$08D7.w		; E0 D7 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	lda [$08.b],Y		; B7 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	cmp [$08.b]		; C7 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	lda $480608.l,X		; BF 08 06 48
	cmp $B417.w,Y		; D9 17 B4
	php		; 08
	php		; 08
	pha		; 48
	jsr $EED8.w		; 20 D8 EE
	brk $0A.b		; 00 0A
	rti		; 40

	clc		; 18
	cpx #$00E7.w		; E0 E7 00
	phd		; 0B
	rti		; 40

	cld		; D8
	jsr $00C4.w		; 20 C4 00
	tsb $E040.w		; 0C 40 E0
	clc		; 18
	cpy $00.b		; C4 00
	ora $D840.w		; 0D 40 D8
	jsr $00CC.w		; 20 CC 00
	asl $2040.w		; 0E 40 20
	cld		; D8
	dec $0F00.w,X		; DE 00 0F
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $401A00.l		; CF 00 1A 40
	php		; 08
	beq -49.b		; F0 CF
	brk $1B.b		; 00 1B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $401C00.l		; CF 00 1C 40
	php		; 08
	beq -41.b		; F0 D7
	brk $1D.b		; 00 1D
	rti		; 40

	inx		; E8
	bpl -72.b		; 10 B8
	brk $1E.b		; 00 1E
	rti		; 40

	inx		; E8
	bpl -64.b		; 10 C0
	brk $1F.b		; 00 1F
	rti		; 40

	inx		; E8
	bpl -56.b		; 10 C8
	brk $20.b		; 00 20
	rti		; 40

	plp		; 28
	bne -32.b		; D0 E0
	brk $21.b		; 00 21
	rti		; 40

	jsr $E6D8.w		; 20 D8 E6
	brk $22.b		; 00 22
	rti		; 40

	pea $B004.w		; F4 04 B0
	brk $23.b		; 00 23
	rti		; 40

	ora [$D7.b],Y		; 17 D7
	ora $08D3.w,Y		; 19 D3 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	xba		; EB
	php		; 08
	cop $48.b		; 02 48
	cmp $08F311.l,X		; DF 11 F3 08
	tsb $48.b		; 04 48
	cmp $08E311.l,X		; DF 11 E3 08
	asl $48.b		; 06 48
	ora [$E9.b]		; 07 E9
	cpx #$0808.w		; E0 08 08
	pha		; 48
	ora $E3.b,X		; 15 E3
	sed		; F8
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F8DB.w,X		; 1D DB F8
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $00E3F9.l,X		; FF F9 E3 00
	tsb $F440.w		; 0C 40 F4
	tsb $DB.b		; 04 DB
	brk $0D.b		; 00 0D
	rti		; 40

	pea $E304.w		; F4 04 E3
	brk $0E.b		; 00 0E
	rti		; 40

	ora $D5DB.w,X		; 1D DB D5
	brk $0F.b		; 00 0F
	rti		; 40

	ora $DDDB.w,X		; 1D DB DD
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$11.b]		; E7 11
	stp		; DB
	brk $1B.b		; 00 1B
	rti		; 40

	cmp [$21.b],Y		; D7 21
	sbc $00.b,S		; E3 00
	trb $EF40.w		; 1C 40 EF
	ora #$00EB.w		; 09 EB 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$00F3.w		; 09 F3 00
	asl $EF40.w,X		; 1E 40 EF
	ora #$00FB.w		; 09 FB 00
	ora $01F740.l,X		; 1F 40 F7 01
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	sbc $00FBF9.l,X		; FF F9 FB 00
	and ($40.b,X)		; 21 40
	ora [$E1.b],Y		; 17 E1
	beq   0.b		; F0 00
	jsl $E31540.l		; 22 40 15 E3
	cmp $402300.l,X		; DF 00 23 40
	ora [$F1.b]		; 07 F1
	beq   0.b		; F0 00
	bit $40.b		; 24 40
	ora $00F0E9.l		; 0F E9 F0 00
	and $40.b		; 25 40
	ora ($02.b,S),Y		; 13 02
	inc $08EA.w		; EE EA 08
	brk $48.b		; 00 48
	cmp ($1E.b)		; D2 1E
	sbc $0208.w		; ED 08 02
	pha		; 48
	sep #$0E		; E2 0E
	sbc $0408.w		; ED 08 04
	pha		; 48
	plx		; FA
	inc $00FA.w,X		; FE FA 00
	asl $40.b		; 06 40
	cop $F6.b		; 02 F6
	plx		; FA
	brk $07.b		; 00 07
	rti		; 40

	inc A		; 1A
	dec $00F4.w,X		; DE F4 00
	php		; 08
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc $0900.w		; ED 00 09
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc $00.b,X		; F5 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00EA.w,X		; FE EA 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00F2.w,X		; FE F2 00
	tsb $F240.w		; 0C 40 F2
	asl $ED.b		; 06 ED
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $00.b,X		; F5 00
	asl $D240.w		; 0E 40 D2
	rol $FD.b		; 26 FD
	brk $0F.b		; 00 0F
	rti		; 40

	phx		; DA
	asl $00FD.w,X		; 1E FD 00
	asl $40.b,X		; 16 40
.INDEX 8
	sep #$16		; E2 16
	sbc $1700.w,X		; FD 00 17
	rti		; 40

	nop		; EA
	asl $00FD.w		; 0E FD 00
	clc		; 18
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $1900.w,X		; FD 00 19
	rti		; 40

	trb $FADC.w		; 1C DC FA
	brk $1A.b		; 00 1A
	rti		; 40

	bit $D4.b		; 24 D4
	plx		; FA
	brk $1B.b		; 00 1B
	rti		; 40

	bpl -14.b		; 10 F2
	inc $08EA.w,X		; FE EA 08
	brk $48.b		; 00 48
	sep #$0E		; E2 0E
	cmp $0208.w,X		; DD 08 02
	pha		; 48
	sep #$0E		; E2 0E
	sbc $0408.w		; ED 08 04
	pha		; 48
	cmp ($1E.b)		; D2 1E
	sbc [$08.b]		; E7 08
	asl $48.b		; 06 48
	cmp ($1E.b)		; D2 1E
	sbc [$08.b],Y		; F7 08
	php		; 08
	pha		; 48
	dex		; CA
	rol $00F3.w		; 2E F3 00
	asl A		; 0A
	rti		; 40

	dex		; CA
	rol $00FB.w		; 2E FB 00
	phd		; 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	sep #$00		; E2 00
	tsb $FA40.w		; 0C 40 FA
	inc $00D2.w,X		; FE D2 00
	ora $E240.w		; 0D 40 E2
	asl $FD.b,X		; 16 FD
	brk $0E.b		; 00 0E
	rti		; 40

	nop		; EA
	asl $00FD.w		; 0E FD 00
	ora $06F240.l		; 0F 40 F2 06
	plx		; FA
	brk $1A.b		; 00 1A
	rti		; 40

	plx		; FA
	inc $00FA.w,X		; FE FA 00
	tas		; 1B
	rti		; 40

	cpx $DA0C.w		; EC 0C DA
	brk $1C.b		; 00 1C
	rti		; 40

	pea $DA04.w		; F4 04 DA
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($D7FC.w,X)		; FC FC D7
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($D8.b,S),Y		; 13 D8
	clc		; 18
	sbc $0008.w		; ED 08 00
	pha		; 48
	inx		; E8
	php		; 08
	sbc $0208.w		; ED 08 02
	pha		; 48
	sbc $0D.b,S		; E3 0D
	cmp $0408.w,X		; DD 08 04
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $0608.w,X		; DD 08 06
	pha		; 48
	ora ($DD.b,S),Y		; 13 DD
	inc $08.b		; E6 08
	php		; 08
	pha		; 48
	sed		; F8
	brk $F5.b		; 00 F5
	brk $0A.b		; 00 0A
	rti		; 40

	cmp $FD1F.w,Y		; D9 1F FD
	brk $0B.b		; 00 0B
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $0C00.w,X		; FD 00 0C
	rti		; 40

	sbc #$FD0F.w		; E9 0F FD
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	asl $0340.w		; 0E 40 03
	sbc $E9.b,X		; F5 E9
	brk $0F.b		; 00 0F
	rti		; 40

	and $D5.b,S		; 23 D5
	xba		; EB
	brk $1A.b		; 00 1A
	rti		; 40

	pld		; 2B
	cmp $00EB.w		; CD EB 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00E4.w		; ED E4 00
	trb $0B40.w		; 1C 40 0B
	sbc $00EC.w		; ED EC 00
	ora $DB40.w,X		; 1D 40 DB
	ora $00E5.w,X		; 1D E5 00
	asl $0040.w,X		; 1E 40 00
	sed		; F8
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	sed		; F8
	brk $FD.b		; 00 FD
	brk $20.b		; 00 20
	rti		; 40

	sed		; F8
	brk $ED.b		; 00 ED
	brk $21.b		; 00 21
	rti		; 40

	jsl $B80FE1.l		; 22 E1 0F B8
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	clv		; B8
	php		; 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	clv		; B8
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	cld		; D8
	php		; 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	cld		; D8
	php		; 08
	php		; 08
	pha		; 48
	nop		; EA
	asl $F8.b		; 06 F8
	php		; 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $F8.b,X		; F6 F8
	php		; 08
	tsb $ED48.w		; 0C 48 ED
	ora $E8.b,S		; 03 E8
	php		; 08
	asl $FD48.w		; 0E 48 FD
	sbc ($E8.b,S),Y		; F3 E8
	php		; 08
	jsr $EE48.w		; 20 48 EE
	cop $C8.b		; 02 C8
	php		; 08
	jsl $F2FE48.l		; 22 48 FE F2
	iny		; C8
	php		; 08
	bit $48.b		; 24 48
	asl $C8E2.w		; 0E E2 C8
	php		; 08
	rol $48.b		; 26 48
	sbc [$09.b]		; E7 09
	ldy #$08.b		; A0 08
	plp		; 28
	pha		; 48
	sbc $0898F1.l,X		; FF F1 98 08
	rol A		; 2A
	pha		; 48
	sbc #$D80F.w		; E9 0F D8
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	clv		; B8
	brk $2D.b		; 00 2D
	rti		; 40

	asl A		; 0A
	inc $00F8.w		; EE F8 00
	rol $0A40.w		; 2E 40 0A
	inc $0000.w		; EE 00 00
	and $13E540.l		; 2F 40 E5 13
	cpx $3C00.w		; EC 00 3C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpy #$00.b		; C0 00
	and $E240.w,X		; 3D 40 E2
	asl $B0.b,X		; 16 B0
	brk $3E.b		; 00 3E
	rti		; 40

	inc $12.b		; E6 12
	iny		; C8
	brk $3F.b		; 00 3F
	rti		; 40

	nop		; EA
	asl $00B0.w		; 0E B0 00
	rti		; 40

	rti		; 40

	sbc ($06.b)		; F2 06
	bcs   0.b		; B0 00
	eor ($40.b,X)		; 41 40
	plx		; FA
	inc $00B0.w,X		; FE B0 00
	.db $42, $40		; 42 40
	cmp $00C119.l,X		; DF 19 C1 00
	eor $40.b,S		; 43 40
	cop $F6.b		; 02 F6
	bcs   0.b		; B0 00
	mvp $0A,$40		; 44 40 0A
	inc $00B0.w		; EE B0 00
	eor $40.b		; 45 40
	sbc $009809.l		; EF 09 98 00
	lsr $40.b		; 46 40
	sbc [$01.b],Y		; F7 01
	tya		; 98
	brk $47.b		; 00 47
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ldy #$00.b		; A0 00
	pha		; 48
	rti		; 40

	sbc [$01.b],Y		; F7 01
	tay		; A8
	brk $49.b		; 00 49
	rti		; 40

	sbc $00A8F9.l,X		; FF F9 A8 00
	lsr A		; 4A
	rti		; 40

	ora [$F1.b]		; 07 F1
	tay		; A8
	brk $4B.b		; 00 4B
	rti		; 40

	asl $E3.b,X		; 16 E3
	ora $089C.w		; 0D 9C 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	stz $0208.w		; 9C 08 02
	pha		; 48
	ora $ED.b,S		; 03 ED
	stz $0408.w		; 9C 08 04
	pha		; 48
	sbc $0D.b,S		; E3 0D
	ldy $0608.w		; AC 08 06
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	ldy $0808.w		; AC 08 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	ldy $0A08.w		; AC 08 0A
	pha		; 48
	sbc $0D.b,S		; E3 0D
	ldy $0C08.w,X		; BC 08 0C
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	ldy $0E08.w,X		; BC 08 0E
	pha		; 48
	ora $ED.b,S		; 03 ED
	ldy $2008.w,X		; BC 08 20
	pha		; 48
	xba		; EB
	ora $D4.b		; 05 D4
	php		; 08
	jsl $F5FB48.l		; 22 48 FB F5
	pei ($08.b)		; D4 08
	bit $48.b		; 24 48
	xba		; EB
	ora $00E4.w		; 0D E4 00
	rol $40.b		; 26 40
	ora ($E5.b,S),Y		; 13 E5
	ldy $00.b		; A4 00
	and [$40.b]		; 27 40
	ora ($E5.b,S),Y		; 13 E5
	ldy $2800.w		; AC 00 28
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	ldy $00.b,X		; B4 00
	and #$1340.w		; 29 40 13
	sbc $BC.b		; E5 BC
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $15.b,S		; E3 15
	cpy $2B00.w		; CC 00 2B
	rti		; 40

	xba		; EB
	ora $00CC.w		; 0D CC 00
	bit $F340.w		; 2C 40 F3
	ora $CC.b		; 05 CC
	brk $2D.b		; 00 2D
	rti		; 40

	xce		; FB
	sbc $00CC.w,X		; FD CC 00
	rol $0340.w		; 2E 40 03
	sbc $CC.b,X		; F5 CC
	brk $2F.b		; 00 2F
	rti		; 40

	phd		; 0B
	sbc $00CC.w		; ED CC 00
	rol $40.b,X		; 36 40
	asl $E3.b,X		; 16 E3
	ora $08A3.w		; 0D A3 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	lda $08.b,S		; A3 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	lda $08.b,S		; A3 08
	tsb $48.b		; 04 48
	sbc $0D.b,S		; E3 0D
	lda ($08.b,S),Y		; B3 08
	asl $48.b		; 06 48
	sbc $0D.b,S		; E3 0D
	cmp $08.b,S		; C3 08
	php		; 08
	pha		; 48
	xba		; EB
	ora $D3.b		; 05 D3
	php		; 08
	asl A		; 0A
	pha		; 48
	xce		; FB
	sbc $D3.b,X		; F5 D3
	php		; 08
	tsb $F348.w		; 0C 48 F3
	sbc $08B3.w,X		; FD B3 08
	asl $0348.w		; 0E 48 03
	sbc $08B3.w		; ED B3 08
	jsr $F348.w		; 20 48 F3
	sbc $08C3.w,X		; FD C3 08
	jsl $ED0348.l		; 22 48 03 ED
	cmp $08.b,S		; C3 08
	bit $48.b		; 24 48
	xba		; EB
	ora $00E3.w		; 0D E3 00
	rol $40.b		; 26 40
	phd		; 0B
	sbc $00D3.w		; ED D3 00
	and [$40.b]		; 27 40
	ora ($E5.b,S),Y		; 13 E5
	ldy $2800.w		; AC 00 28
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	ldy $00.b,X		; B4 00
	and #$1340.w		; 29 40 13
	sbc $BC.b		; E5 BC
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cpy $00.b		; C4 00
	pld		; 2B
	rti		; 40

	inc $12.b		; E6 12
	txy		; 9B
	brk $2C.b		; 00 2C
	rti		; 40

	inc $9B0A.w		; EE 0A 9B
	brk $2D.b		; 00 2D
	rti		; 40

	inc $02.b,X		; F6 02
	txy		; 9B
	brk $2E.b		; 00 2E
	rti		; 40

	inc $9BFA.w,X		; FE FA 9B
	brk $2F.b		; 00 2F
	rti		; 40

	asl $F2.b		; 06 F2
	txy		; 9B
	brk $36.b		; 00 36
	rti		; 40

	ora $D408E8.l		; 0F E8 08 D4
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	cpx $08.b		; E4 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	cpx $08.b		; E4 08
	asl $48.b		; 06 48
	clc		; 18
	cld		; D8
	dec $0808.w,X		; DE 08 08
	pha		; 48
	php		; 08
	inx		; E8
	cmp [$08.b],Y		; D7 08
	asl A		; 0A
	pha		; 48
	sbc [$09.b]		; E7 09
	cpy $08.b		; C4 08
	tsb $F748.w		; 0C 48 F7
	sbc $08C4.w,Y		; F9 C4 08
	asl $1048.w		; 0E 48 10
	inx		; E8
	sbc [$00.b]		; E7 00
	jsr $1140.w		; 20 40 11
	sbc [$FA.b]		; E7 FA
	brk $21.b		; 00 21
	rti		; 40

	tsb $EFEC.w		; 0C EC EF
	brk $22.b		; 00 22
	rti		; 40

	inc $BC0A.w		; EE 0A BC
	brk $23.b		; 00 23
	rti		; 40

	asl $F7EA.w		; 0E EA F7
	brk $24.b		; 00 24
	rti		; 40

	plp		; 28
	bne -28.b		; D0 E4
	brk $25.b		; 00 25
	rti		; 40

	php		; 08
	beq -25.b		; F0 E7
	brk $26.b		; 00 26
	rti		; 40

	ora ($F0.b),Y		; 11 F0
	brk $CC.b		; 00 CC
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cpy $0208.w		; CC 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	ldy $08.b,X		; B4 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	stp		; DB
	php		; 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	jmp.w [$0808]		; DC 08 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	cpx $0A08.w		; EC 08 0A
	pha		; 48
	bpl -24.b		; 10 E8
	xce		; FB
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldy $00.b,X		; B4 00
	ora $0340.w		; 0D 40 03
	sbc $BC.b,X		; F5 BC
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpy $00.b		; C4 00
	ora $FDFB40.l		; 0F 40 FB FD
	cpy $00.b		; C4 00
	trb $0340.w		; 1C 40 03
	sbc $C4.b,X		; F5 C4
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $1E.b		; 00 1E
	rti		; 40

	php		; 08
	beq -13.b		; F0 F3
	brk $1F.b		; 00 1F
	rti		; 40

	inc $F40A.w		; EE 0A F4
	brk $20.b		; 00 20
	rti		; 40

	php		; 08
	beq  -5.b		; F0 FB
	brk $21.b		; 00 21
	rti		; 40

	asl A		; 0A
	inc $00EB.w		; EE EB 00
	jsl $F10E40.l		; 22 40 0E F1
	sbc $0008CA.l,X		; FF CA 08 00
	pha		; 48
	sbc $DA03.w		; ED 03 DA
	php		; 08
	cop $48.b		; 02 48
	sbc $DAF3.w,X		; FD F3 DA
	php		; 08
	tsb $48.b		; 04 48
	inc $EA02.w		; EE 02 EA
	php		; 08
	asl $48.b		; 06 48
	inc $EAF2.w,X		; FE F2 EA
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $00FA.w,X		; FE FA 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	plx		; FA
	brk $0B.b		; 00 0B
	rti		; 40

	asl A		; 0A
	inc $00FA.w		; EE FA 00
	tsb $0D40.w		; 0C 40 0D
	xba		; EB
	sep #$00		; E2 00
	ora $0140.w		; 0D 40 01
	sbc [$CA.b],Y		; F7 CA
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	ora $EA0E40.l		; 0F 40 0E EA
	nop		; EA
	brk $1A.b		; 00 1A
	rti		; 40

	nop		; EA
	asl $00FA.w		; 0E FA 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	plx		; FA
	brk $1C.b		; 00 1C
	rti		; 40

	inc A		; 1A
	sbc ($FF.b),Y		; F1 FF
	sep #$08		; E2 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	rep #$08		; C2 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b)		; B2 08
	asl $48.b		; 06 48
	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	dex		; CA
	brk $09.b		; 00 09
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b)		; D2 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	phx		; DA
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	tsb $0340.w		; 0C 40 03
	sbc $EA.b,X		; F5 EA
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b)		; F2 00
	asl $0340.w		; 0E 40 03
	sbc $FA.b,X		; F5 FA
	brk $0F.b		; 00 0F
	rti		; 40

	phd		; 0B
	sbc $00FA.w		; ED FA 00
	clc		; 18
	rti		; 40

	pea $AA04.w		; F4 04 AA
	brk $19.b		; 00 19
	rti		; 40

	jsr ($AAFC.w,X)		; FC FC AA
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	tax		; AA
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $AAEC.w		; 0C EC AA
	brk $1C.b		; 00 1C
	rti		; 40

	ora $B1EB.w		; 0D EB B1
	brk $1D.b		; 00 1D
	rti		; 40

	ora $B9EB.w		; 0D EB B9
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $03.b,X		; F5 03
	ldx #$00.b		; A2 00
	ora $FBFD40.l,X		; 1F 40 FD FB
	ldx #$00.b		; A2 00
	jsr $0540.w		; 20 40 05
	sbc ($A2.b,S),Y		; F3 A2
	brk $21.b		; 00 21
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b),Y		; F1 00
	jsl $F30540.l		; 22 40 05 F3
	lda ($00.b)		; B2 00
	and $40.b,S		; 23 40
	ora $F3.b		; 05 F3
	tsx		; BA
	brk $24.b		; 00 24
	rti		; 40

	sbc $00F909.l		; EF 09 F9 00
	and $40.b		; 25 40
	phd		; 0B
	sbc ($FE.b)		; F2 FE
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	cop $EE.b		; 02 EE
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	sbc $FB.b,X		; F5 FB
	cmp #$0408.w		; C9 08 04
	pha		; 48
	ora $EB.b		; 05 EB
	cmp #$0608.w		; C9 08 06
	pha		; 48
	sbc $08E901.l		; EF 01 E9 08
	php		; 08
	pha		; 48
	sbc $08E9F1.l,X		; FF F1 E9 08
	asl A		; 0A
	pha		; 48
	phd		; 0B
	sbc $00F9.w		; ED F9 00
	tsb $EB40.w		; 0C 40 EB
	ora $00F9.w		; 0D F9 00
	ora $F340.w		; 0D 40 F3
	ora $F9.b		; 05 F9
	brk $0E.b		; 00 0E
	rti		; 40

	xce		; FB
	sbc $00F9.w,X		; FD F9 00
	ora $F50340.l		; 0F 40 03 F5
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	ora ($F2.b)		; 12 F2
	inc $08B1.w,X		; FE B1 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b,X)		; A1 08
	tsb $48.b		; 04 48
	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	cop $F6.b		; 02 F6
	lda $0700.w,Y		; B9 00 07
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	cmp #$0900.w		; C9 00 09
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00D1.w,X		; FE D1 00
	phd		; 0B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	tsb $F840.w		; 0C 40 F8
	brk $99.b		; 00 99
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,X)		; A1 00
	asl $0340.w		; 0E 40 03
	sbc $A9.b,X		; F5 A9
	brk $0F.b		; 00 0F
	rti		; 40

	pea $E9FC.w		; F4 FC E9
	php		; 08
	asl $48.b,X		; 16 48
	sbc [$F9.b],Y		; F7 F9
	cmp $1808.w,Y		; D9 08 18
	pha		; 48
	tsb $F4.b		; 04 F4
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($F5.b),Y		; 11 F5
	xce		; FB
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	ora $F3.b		; 05 F3
	rep #$00		; C2 00
	asl $40.b		; 06 40
	ora $F3.b		; 05 F3
	dex		; CA
	brk $07.b		; 00 07
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b)		; D2 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	tsx		; BA
	brk $09.b		; 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	ldx #$00.b		; A2 00
	asl A		; 0A
	rti		; 40

	asl $F2.b		; 06 F2
	tax		; AA
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b)		; B2 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	lda ($00.b)		; B2 00
	ora $0640.w		; 0D 40 06
	sbc ($B2.b)		; F2 B2
	brk $0E.b		; 00 0E
	rti		; 40

	pea $E9FC.w		; F4 FC E9
	php		; 08
	asl $48.b,X		; 16 48
	sbc [$F9.b],Y		; F7 F9
	cmp $1808.w,Y		; D9 08 18
	pha		; 48
	tsb $F4.b		; 04 F4
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $1C.b		; 00 1C
	rti		; 40

	ora [$F0.b],Y		; 17 F0
	brk $D9.b		; 00 D9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	cop $EE.b		; 02 EE
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	ora #$F9EF.w		; 09 EF F9
	brk $08.b		; 00 08
	rti		; 40

	beq   8.b		; F0 08
	sbc #$0900.w		; E9 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	xce		; FB
	sbc $00D1.w,X		; FD D1 00
	tsb $0340.w		; 0C 40 03
	sbc $D1.b,X		; F5 D1
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	ora $03F540.l		; 0F 40 F5 03
	cmp #$1800.w		; C9 00 18
	rti		; 40

	sbc $C9FB.w,X		; FD FB C9
	brk $19.b		; 00 19
	rti		; 40

	ora $F3.b		; 05 F3
	cmp #$1A00.w		; C9 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b,X)		; A1 00
	trb $0540.w		; 1C 40 05
	sbc ($A9.b,S),Y		; F3 A9
	brk $1D.b		; 00 1D
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b),Y		; B1 00
	asl $FE40.w,X		; 1E 40 FE
	plx		; FA
	lda ($00.b),Y		; B1 00
	ora $F20640.l,X		; 1F 40 06 F2
	lda ($00.b),Y		; B1 00
	jsr $EF40.w		; 20 40 EF
	ora #$00F1.w		; 09 F1 00
	and ($40.b,X)		; 21 40
	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	jsl $F31640.l		; 22 40 16 F3
	sbc $08A1.w,X		; FD A1 08
	brk $48.b		; 00 48
	xba		; EB
	ora $B9.b		; 05 B9
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $B1.b,X		; F5 B1
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $C1.b,X		; F5 C1
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $D1.b,X		; F5 D1
	php		; 08
	php		; 08
	pha		; 48
	ora $F5.b,S		; 03 F5
	sbc #$0A00.w		; E9 00 0A
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	tsb $0840.w		; 0C 40 08
	beq -31.b		; F0 E1
	brk $0D.b		; 00 0D
	rti		; 40

	beq   8.b		; F0 08
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	ora $EF0940.l		; 0F 40 09 EF
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,X)		; A1 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda #$1C00.w		; A9 00 1C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda ($00.b),Y		; B1 00
	ora $F340.w,X		; 1D 40 F3
	ora $C9.b		; 05 C9
	brk $1E.b		; 00 1E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b),Y		; D1 00
	ora $05F340.l,X		; 1F 40 F3 05
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	phd		; 0B
	sbc $00B8.w		; ED B8 00
	and ($40.b,X)		; 21 40
	phd		; 0B
	sbc $00C0.w		; ED C0 00
	jsl $0AEE40.l		; 22 40 EE 0A
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	bit $40.b		; 24 40
	tas		; 1B
	beq   0.b		; F0 00
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	cpx $B904.w		; EC 04 B9
	php		; 08
	cop $48.b		; 02 48
	jsr ($B9F4.w,X)		; FC F4 B9
	php		; 08
	tsb $48.b		; 04 48
	brk $F8.b		; 00 F8
	cmp #$0600.w		; C9 00 06
	rti		; 40

	php		; 08
	beq -79.b		; F0 B1
	brk $07.b		; 00 07
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	php		; 08
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$0900.w		; A9 00 09
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	sed		; F8
	brk $B1.b		; 00 B1
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	tsb $F040.w		; 0C 40 F0
	php		; 08
	cmp #$0D00.w		; C9 00 0D
	rti		; 40

	sed		; F8
	brk $C9.b		; 00 C9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	sta $0F00.w,Y		; 99 00 0F
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b),Y		; D1 00
	asl $40.b,X		; 16 40
	sed		; F8
	brk $D1.b		; 00 D1
	brk $17.b		; 00 17
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	clc		; 18
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b,X)		; E1 00
	ora $F040.w,Y		; 19 40 F0
	php		; 08
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	cop $F6.b		; 02 F6
	sbc [$00.b]		; E7 00
	ora $EB40.w,X		; 1D 40 EB
	ora $00F9.w		; 0D F9 00
	asl $0440.w,X		; 1E 40 04
	pea $00ED.w		; F4 ED 00
	ora $0BED40.l,X		; 1F 40 ED 0B
	sbc ($00.b),Y		; F1 00
	jsr $FE40.w		; 20 40 FE
	plx		; FA
	cmp $2100.w,Y		; D9 00 21
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	jsl $F9FF40.l		; 22 40 FF F9
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	tas		; 1B
	sbc $FB.b,X		; F5 FB
	ldy $08.b		; A4 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	ldy $08.b,X		; B4 08
	cop $48.b		; 02 48
	sbc $9CFF.w,Y		; F9 FF 9C
	brk $04.b		; 00 04
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	stz $0500.w		; 9C 00 05
	rti		; 40

	ora $F3.b		; 05 F3
	ldy $00.b		; A4 00
	asl $40.b		; 06 40
	ora $F3.b		; 05 F3
	ldy $0700.w		; AC 00 07
	rti		; 40

	ora $F3.b		; 05 F3
	ldy $00.b,X		; B4 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	ldy $0900.w,X		; BC 00 09
	rti		; 40

	sbc $03.b,X		; F5 03
	cpy $00.b		; C4 00
	asl A		; 0A
	rti		; 40

	sbc $C4FB.w,X		; FD FB C4
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	cpy $00.b		; C4 00
	tsb $F840.w		; 0C 40 F8
	brk $D9.b		; 00 D9
	brk $14.b		; 00 14
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $15.b		; 00 15
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1600.w,Y		; F9 00 16
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($40.b),Y		; D1 40
	ora $00.b,X		; 15 00
	cop $F6.b		; 02 F6
	sbc $1700.w,Y		; F9 00 17
	rti		; 40

	asl A		; 0A
	inc $40F9.w		; EE F9 40
	asl $00.b,X		; 16 00
	sbc ($05.b,S),Y		; F3 05
	cmp #$1800.w		; C9 00 18
	rti		; 40

	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	ora $0340.w,Y		; 19 40 03
	sbc $C9.b,X		; F5 C9
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $1440.w,Y		; D9 40 14
	brk $04.b		; 00 04
	pea $00E1.w		; F4 E1 00
	tas		; 1B
	rti		; 40

	pea $F104.w		; F4 04 F1
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$1D00.w		; E9 00 1D
	rti		; 40

	inc $02.b,X		; F6 02
	sbc #$1D40.w		; E9 40 1D
	brk $06.b		; 00 06
	sbc ($F1.b)		; F2 F1
	brk $1E.b		; 00 1E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($40.b,X)		; E1 40
	tas		; 1B
	brk $19.b		; 00 19
	sbc [$F9.b],Y		; F7 F9
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	lda #$0208.w		; A9 08 02
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	ora [$F1.b]		; 07 F1
	sta $0600.w,Y		; 99 00 06
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b,X)		; A1 00
	ora [$40.b]		; 07 40
	ora [$F1.b]		; 07 F1
	lda #$0800.w		; A9 00 08
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b),Y		; B1 00
	ora #$0740.w		; 09 40 07
	sbc ($B9.b),Y		; F1 B9
	brk $0A.b		; 00 0A
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $D9.b		; 00 D9
	brk $16.b		; 00 16
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $17.b		; 00 17
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1800.w,Y		; F9 00 18
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($40.b),Y		; D1 40
	ora [$00.b],Y		; 17 00
	cop $F6.b		; 02 F6
	sbc $1900.w,Y		; F9 00 19
	rti		; 40

	asl A		; 0A
	inc $40F9.w		; EE F9 40
	clc		; 18
	brk $F3.b		; 00 F3
	ora $C9.b		; 05 C9
	brk $1A.b		; 00 1A
	rti		; 40

	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp #$1C00.w		; C9 00 1C
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $1640.w,Y		; D9 40 16
	brk $04.b		; 00 04
	pea $00E1.w		; F4 E1 00
	ora $F440.w,X		; 1D 40 F4
	tsb $F1.b		; 04 F1
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$1F00.w		; E9 00 1F
	rti		; 40

	inc $02.b,X		; F6 02
	sbc #$1F40.w		; E9 40 1F
	brk $06.b		; 00 06
	sbc ($F1.b)		; F2 F1
	brk $20.b		; 00 20
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($40.b,X)		; E1 40
	ora $1800.w,X		; 1D 00 18
	sbc ($FE.b)		; F2 FE
	ldy #$08.b		; A0 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	bcs   8.b		; B0 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	cop $F6.b		; 02 F6
	ldy #$00.b		; A0 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	tay		; A8
	brk $09.b		; 00 09
	rti		; 40

	phd		; 0B
	sbc $00BB.w		; ED BB 00
	asl A		; 0A
	rti		; 40

	xba		; EB
	ora $00F4.w		; 0D F4 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpx #$00.b		; E0 00
	tsb $0B40.w		; 0C 40 0B
	sbc $00F8.w		; ED F8 00
	ora $0840.w		; 0D 40 08
	beq -16.b		; F0 F0
	brk $0E.b		; 00 0E
	rti		; 40

	nop		; EA
	asl $00FA.w		; 0E FA 00
	ora $08F040.l		; 0F 40 F0 08
	inc $00.b		; E6 00
	clc		; 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	bcs   0.b		; B0 00
	ora $0340.w,Y		; 19 40 03
	sbc $B8.b,X		; F5 B8
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpy #$00.b		; C0 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	iny		; C8
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F5.b,S		; 03 F5
	bne   0.b		; D0 00
	ora $0340.w,X		; 1D 40 03
	sbc $D8.b,X		; F5 D8
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $F4.b		; 04 F4
	cpx #$00.b		; E0 00
	ora $0BED40.l,X		; 1F 40 ED 0B
	cpx $2000.w		; EC 00 20
	rti		; 40

	ora $F3.b		; 05 F3
	sbc [$00.b],Y		; F7 00
	and ($40.b,X)		; 21 40
	asl $B4EA.w		; 0E EA B4
	brk $22.b		; 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	inx		; E8
	brk $23.b		; 00 23
	rti		; 40

	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	dec $08.b		; C6 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	ldx $0408.w		; AE 08 04
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	stz $0608.w,X		; 9E 08 06
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	dec $0808.w,X		; DE 08 08
	pha		; 48
	brk $F8.b		; 00 F8
	ldx $0A00.w		; AE 00 0A
	rti		; 40

	beq   8.b		; F0 08
	ldx $0B00.w,Y		; BE 00 0B
	rti		; 40

	sed		; F8
	brk $BE.b		; 00 BE
	brk $0C.b		; 00 0C
	rti		; 40

	beq   8.b		; F0 08
	dec $00.b		; C6 00
	ora $F040.w		; 0D 40 F0
	php		; 08
	inc $0E00.w		; EE 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	stz $0F00.w,X		; 9E 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx $00.b		; A6 00
	inc A		; 1A
	rti		; 40

	xce		; FB
	sbc $00D6.w,X		; FD D6 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00EE.w,X		; FD EE 00
	trb $FB40.w		; 1C 40 FB
	sbc $00F6.w,X		; FD F6 00
	ora $1040.w,X		; 1D 40 10
	inx		; E8
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	tsb $B1EC.w		; 0C EC B1
	brk $1F.b		; 00 1F
	rti		; 40

	jsr ($FDFC.w,X)		; FC FC FD
	brk $20.b		; 00 20
	rti		; 40

	sbc $00F209.l		; EF 09 F2 00
	and ($40.b,X)		; 21 40
	ora $F3.b,X		; 15 F3
	sbc $08A0.w,X		; FD A0 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	bcs   8.b		; B0 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	bcs   8.b		; B0 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	bne   8.b		; D0 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $00E0.w,X		; FD E0 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx #$00.b		; E0 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	inx		; E8
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F5.b,S		; 03 F5
	beq   0.b		; F0 00
	ora $F140.w		; 0D 40 F1
	ora [$F0.b]		; 07 F0
	brk $0E.b		; 00 0E
	rti		; 40

	cop $F6.b		; 02 F6
	inx		; E8
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	xce		; FB
	brk $1A.b		; 00 1A
	rti		; 40

	xba		; EB
	ora $00B8.w		; 0D B8 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldy #$00.b		; A0 00
	trb $0340.w		; 1C 40 03
	sbc $A8.b,X		; F5 A8
	brk $1D.b		; 00 1D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpy #$00.b		; C0 00
	asl $0340.w,X		; 1E 40 03
	sbc $C8.b,X		; F5 C8
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $20.b		; 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	jsr ($2100.w,X)		; FC 00 21
	rti		; 40

	sbc $00F809.l		; EF 09 F8 00
	jsl $05F340.l		; 22 40 F3 05
	cpx #$00.b		; E0 00
	and $40.b,S		; 23 40
	ora $F8.b,X		; 15 F8
	sed		; F8
	cmp $480008.l		; CF 08 00 48
	sbc ($FF.b),Y		; F1 FF
	sta $480208.l,X		; 9F 08 02 48
	sbc ($FF.b),Y		; F1 FF
	lda $480408.l		; AF 08 04 48
	sbc ($FF.b),Y		; F1 FF
	lda $480608.l,X		; BF 08 06 48
	ora #$BBEF.w		; 09 EF BB
	brk $08.b		; 00 08
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta $400900.l,X		; 9F 00 09 40
	ora ($F7.b,X)		; 01 F7
	lda [$00.b]		; A7 00
	asl A		; 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $400B00.l		; AF 00 0B 40
	ora ($F7.b,X)		; 01 F7
	lda [$00.b],Y		; B7 00
	tsb $0140.w		; 0C 40 01
	sbc [$BF.b],Y		; F7 BF
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp [$00.b]		; C7 00
	asl $0B40.w		; 0E 40 0B
	sbc $00B4.w		; ED B4 00
	ora $05F340.l		; 0F 40 F3 05
	sbc [$00.b],Y		; F7 00
	clc		; 18
	rti		; 40

	pea $E704.w		; F4 04 E7
	brk $19.b		; 00 19
	rti		; 40

	jsr ($E7FC.w,X)		; FC FC E7
	brk $1A.b		; 00 1A
	rti		; 40

	ora $AFEB.w		; 0D EB AF
	brk $1B.b		; 00 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	xce		; FB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $401D00.l,X		; DF 00 1D 40
	sbc $00DFF9.l,X		; FF F9 DF 00
	asl $EF40.w,X		; 1E 40 EF
	ora #$00EF.w		; 09 EF 00
	ora $01F740.l,X		; 1F 40 F7 01
	sbc $402000.l		; EF 00 20 40
	ora ($F0.b)		; 12 F0
	brk $AF.b		; 00 AF
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	lda $480208.l,X		; BF 08 02 48
	sbc ($FE.b)		; F2 FE
	sta $480408.l,X		; 9F 08 04 48
	sbc $FB.b,X		; F5 FB
	cmp $480608.l,X		; DF 08 06 48
	inc $FA.b,X		; F6 FA
	cmp $480808.l		; CF 08 08 48
	inx		; E8
	bpl -69.b		; 10 BB
	brk $0A.b		; 00 0A
	rti		; 40

	brk $F8.b		; 00 F8
	lda $400B00.l		; AF 00 0B 40
	brk $F8.b		; 00 F8
	lda [$00.b],Y		; B7 00
	tsb $0040.w		; 0C 40 00
	sed		; F8
	lda $400D00.l,X		; BF 00 0D 40
	brk $F8.b		; 00 F8
	cmp [$00.b]		; C7 00
	asl $0840.w		; 0E 40 08
	beq -65.b		; F0 BF
	brk $0F.b		; 00 0F
	rti		; 40

	cop $F6.b		; 02 F6
	sta $401A00.l,X		; 9F 00 1A 40
	cop $F6.b		; 02 F6
	lda [$00.b]		; A7 00
	tas		; 1B
	rti		; 40

	sbc $E30B.w		; ED 0B E3
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $EB0B.w		; ED 0B EB
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $EF.b		; 00 EF
	brk $1E.b		; 00 1E
	rti		; 40

	inx		; E8
	bpl -77.b		; 10 B3
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc [$00.b],Y		; F7 00
	jsr $0D40.w		; 20 40 0D
	cld		; D8
	clc		; 18
	dec $08.b		; C6 08
	brk $48.b		; 00 48
	sbc #$EE07.w		; E9 07 EE
	php		; 08
	cop $48.b		; 02 48
	cmp ($1F.b),Y		; D1 1F
	inc $0408.w		; EE 08 04
	pha		; 48
	pei ($1C.b)		; D4 1C
	dec $0608.w,X		; DE 08 06
	pha		; 48
	cpx $0C.b		; E4 0C
	dec $0808.w,X		; DE 08 08
	pha		; 48
	sbc ($17.b,X)		; E1 17
	inc $0A00.w		; EE 00 0A
	rti		; 40

	sbc ($17.b,X)		; E1 17
	inc $00.b,X		; F6 00
	phd		; 0B
	rti		; 40

	cmp ($27.b),Y		; D1 27
	inc $0C00.w,X		; FE 00 0C
	rti		; 40

	cmp $FE1F.w,Y		; D9 1F FE
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($17.b,X)		; E1 17
	inc $0E00.w,X		; FE 00 0E
	rti		; 40

	pea $E604.w		; F4 04 E6
	brk $0F.b		; 00 0F
	rti		; 40

	cld		; D8
	jsr $00D6.w		; 20 D6 00
	inc A		; 1A
	rti		; 40

	cpx #$18.b		; E0 18
	dec $00.b,X		; D6 00
	tas		; 1B
	rti		; 40

	ora ($CF.b),Y		; 11 CF
	and ($D1.b,X)		; 21 D1
	php		; 08
	brk $48.b		; 00 48
	cmp $08C911.l,X		; DF 11 C9 08
	cop $48.b		; 02 48
	sbc $08C101.l		; EF 01 C1 08
	tsb $48.b		; 04 48
	sbc $08B9F1.l,X		; FF F1 B9 08
	asl $48.b		; 06 48
	sbc $08C9F1.l,X		; FF F1 C9 08
	php		; 08
	pha		; 48
	ora [$D9.b],Y		; 17 D9
	cmp ($08.b,X)		; C1 08
	asl A		; 0A
	pha		; 48
	ora ($E5.b,S),Y		; 13 E5
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	tas		; 1B
	cmp $00D9.w,X		; DD D9 00
	ora $0F40.w		; 0D 40 0F
	sbc #$00B9.w		; E9 B9 00
	asl $0F40.w		; 0E 40 0F
	sbc #$00C1.w		; E9 C1 00
	ora $E90F40.l		; 0F 40 0F E9
	cmp #$1C00.w		; C9 00 1C
	rti		; 40

	sbc $00D109.l		; EF 09 D1 00
	ora $F740.w,X		; 1D 40 F7
	ora ($D1.b,X)		; 01 D1
	brk $1E.b		; 00 1E
	rti		; 40

	ora $00D1E9.l		; 0F E9 D1 00
	ora $E11740.l,X		; 1F 40 17 E1
	cmp ($00.b),Y		; D1 00
	jsr $1F40.w		; 20 40 1F
	cmp $00D1.w,Y		; D9 D1 00
	and ($40.b,X)		; 21 40
	and [$D1.b]		; 27 D1
	cmp $2200.w		; CD 00 22
	rti		; 40

	ora $F3.b,X		; 15 F3
	sbc $08CA.w,X		; FD CA 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	txs		; 9A
	php		; 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	nop		; EA
	brk $0C.b		; 00 0C
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	ora $0340.w		; 0D 40 03
	sbc $EA.b,X		; F5 EA
	brk $0E.b		; 00 0E
	rti		; 40

	xba		; EB
	ora $00E3.w		; 0D E3 00
	ora $ED0B40.l		; 0F 40 0B ED
	cmp $1A00.w,X		; DD 00 1A
	rti		; 40

	phd		; 0B
	sbc $00E5.w		; ED E5 00
	tas		; 1B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cpx #$00.b		; E0 00
	trb $F640.w		; 1C 40 F6
	cop $92.b		; 02 92
	brk $1D.b		; 00 1D
	rti		; 40

	beq   8.b		; F0 08
	bcc   0.b		; 90 00
	asl $0340.w,X		; 1E 40 03
	sbc $CA.b,X		; F5 CA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b)		; D2 00
	jsr $0640.w		; 20 40 06
	sbc ($B2.b)		; F2 B2
	brk $21.b		; 00 21
	rti		; 40

	asl $F2.b		; 06 F2
	tsx		; BA
	brk $22.b		; 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	rep #$00		; C2 00
	and $40.b,S		; 23 40
	bpl -31.b		; 10 E1
	ora $0008E0.l		; 0F E0 08 00
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cpx #$08.b		; E0 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	rol A		; 2A
	dec $B4.b		; C6 B4
	php		; 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	ldy $0808.w,X		; BC 08 08
	pha		; 48
	sep #$0E		; E2 0E
	iny		; C8
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($FE.b)		; F2 FE
	iny		; C8
	php		; 08
	tsb $0248.w		; 0C 48 02
	inc $CC.b,X		; F6 CC
	brk $0E.b		; 00 0E
	rti		; 40

	asl A		; 0A
	inc $00CC.w		; EE CC 00
	ora $FEFA40.l		; 0F 40 FA FE
	cpy #$00.b		; C0 00
	asl $2240.w,X		; 1E 40 22
	dec $BB.b,X		; D6 BB
	brk $1F.b		; 00 1F
	rti		; 40

	jsl $00C3D6.l		; 22 D6 C3 00
	jsr $DE40.w		; 20 40 DE
	inc A		; 1A
	cld		; D8
	brk $21.b		; 00 21
	rti		; 40

	inc $12.b		; E6 12
	cld		; D8
	brk $22.b		; 00 22
	rti		; 40

	inc $D80A.w		; EE 0A D8
	brk $23.b		; 00 23
	rti		; 40

	inc $02.b,X		; F6 02
	cld		; D8
	brk $24.b		; 00 24
	rti		; 40

	inc A		; 1A
	plx		; FA
	inc $B1.b,X		; F6 B1
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $A3.b		; E6 A3
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	ora #$F8EF.w		; 09 EF F8
	brk $0A.b		; 00 0A
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	cop $F6.b		; 02 F6
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	sbc ($06.b)		; F2 06
	nop		; EA
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00BB.w		; EE BB 00
	asl $1A40.w		; 0E 40 1A
	dec $00B0.w,X		; DE B0 00
	ora $EE0A40.l		; 0F 40 0A EE
	lda ($00.b,S),Y		; B3 00
	inc A		; 1A
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda ($00.b,S),Y		; B3 00
	tas		; 1B
	rti		; 40

	xba		; EB
	ora $00F8.w		; 0D F8 00
	trb $F340.w		; 1C 40 F3
	ora $E3.b		; 05 E3
	brk $1D.b		; 00 1D
	rti		; 40

	xba		; EB
	ora $00F4.w		; 0D F4 00
	asl $EA40.w,X		; 1E 40 EA
	asl $00A9.w		; 0E A9 00
	ora $F30540.l,X		; 1F 40 05 F3
	cmp ($00.b,X)		; C1 00
	jsr $0540.w		; 20 40 05
	sbc ($C9.b,S),Y		; F3 C9
	brk $21.b		; 00 21
	rti		; 40

	inc $ED0A.w		; EE 0A ED
	brk $22.b		; 00 22
	rti		; 40

	ora [$F1.b]		; 07 F1
	cpx #$00.b		; E0 00
	and $40.b,S		; 23 40
	ora [$F1.b]		; 07 F1
	inx		; E8
	brk $24.b		; 00 24
	rti		; 40

	ora [$F1.b]		; 07 F1
	beq   0.b		; F0 00
	and $40.b		; 25 40
	sed		; F8
	brk $E1.b		; 00 E1
	brk $26.b		; 00 26
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b),Y		; D1 00
	and [$40.b]		; 27 40
	ora [$F1.b]		; 07 F1
	cmp $2800.w,Y		; D9 00 28
	rti		; 40

	asl $02.b,X		; 16 02
	inc $08B2.w		; EE B2 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b)		; D2 08
	asl $48.b		; 06 48
	sbc $08C201.l		; EF 01 C2 08
	php		; 08
	pha		; 48
	sbc #$FC0F.w		; E9 0F FC
	brk $0A.b		; 00 0A
	rti		; 40

	cop $F6.b		; 02 F6
	ldx #$00.b		; A2 00
	phd		; 0B
	rti		; 40

	cop $F6.b		; 02 F6
	tax		; AA
	brk $0C.b		; 00 0C
	rti		; 40

	beq   8.b		; F0 08
	sbc [$00.b]		; E7 00
	ora $0340.w		; 0D 40 03
	sbc $D2.b,X		; F5 D2
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sep #$00		; E2 00
	inc A		; 1A
	rti		; 40

	xce		; FB
	sbc $00E2.w,X		; FD E2 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	trb $EB40.w		; 1C 40 EB
	ora $00B3.w		; 0D B3 00
	ora $0440.w,X		; 1D 40 04
	pea $00EA.w		; F4 EA 00
	asl $EC40.w,X		; 1E 40 EC
	tsb $00F7.w		; 0C F7 00
	ora $F20640.l,X		; 1F 40 06 F2
	sbc ($00.b)		; F2 00
	jsr $EE40.w		; 20 40 EE
	asl A		; 0A
	sbc $402100.l		; EF 00 21 40
	ora #$FAEF.w		; 09 EF FA
	brk $22.b		; 00 22
	rti		; 40

	sbc $00C2F9.l,X		; FF F9 C2 00
	and $40.b,S		; 23 40
	sbc $00CAF9.l,X		; FF F9 CA 00
	bit $40.b		; 24 40
	ora $FFF1.w,Y		; 19 F1 FF
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	ora ($F7.b,X)		; 01 F7
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $0B00.w,Y		; B9 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	tsb $0140.w		; 0C 40 01
	sbc [$C9.b],Y		; F7 C9
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	asl $0140.w		; 0E 40 01
	sbc [$D9.b],Y		; F7 D9
	brk $0F.b		; 00 0F
	rti		; 40

	ora #$B2EF.w		; 09 EF B2
	brk $18.b		; 00 18
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $00.b		; E5 00
	ora $0940.w,Y		; 19 40 09
	sbc $1A00BE.l		; EF BE 00 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1C00.w		; E9 00 1C
	rti		; 40

	cpx $F10C.w		; EC 0C F1
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $A90B.w		; ED 0B A9
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	jsr $F040.w		; 20 40 F0
	php		; 08
	sbc INIDSP.w		; ED 00 21
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b,X)		; A1 00
	jsl $F30540.l		; 22 40 05 F3
	lda #$2300.w		; A9 00 23
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	bit $40.b		; 24 40
	asl $FBF5.w,X		; 1E F5 FB
	cmp $480008.l		; CF 08 00 48
	sbc $FB.b,X		; F5 FB
	sta $480208.l,X		; 9F 08 02 48
	sbc $FB.b,X		; F5 FB
	lda $480408.l		; AF 08 04 48
	ora $EB.b		; 05 EB
	lda $480608.l		; AF 08 06 48
	inc $FA.b,X		; F6 FA
	lda $480808.l,X		; BF 08 08 48
	sbc ($06.b)		; F2 06
	inx		; E8
	brk $0A.b		; 00 0A
	rti		; 40

	xba		; EB
	ora $00F4.w		; 0D F4 00
	phd		; 0B
	rti		; 40

	sbc $A30B.w		; ED 0B A3
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $AB0B.w		; ED 0B AB
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $03.b,X		; F5 03
	cpx $00.b		; E4 00
	asl $1540.w		; 0E 40 15
	sbc $B5.b,S		; E3 B5
	brk $0F.b		; 00 0F
	rti		; 40

	ora $B5DB.w,X		; 1D DB B5
	brk $1A.b		; 00 1A
	rti		; 40

	and $D3.b		; 25 D3
	ldx $00.b,Y		; B6 00
	tas		; 1B
	rti		; 40

	and $B6CB.w		; 2D CB B6
	brk $1C.b		; 00 1C
	rti		; 40

	inx		; E8
	bpl  -6.b		; 10 FA
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $DF.b		; 00 DF
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $401F00.l,X		; DF 00 1F 40
	php		; 08
	beq -33.b		; F0 DF
	brk $20.b		; 00 20
	rti		; 40

	ora $F3.b		; 05 F3
	sta $402100.l,X		; 9F 00 21 40
	ora $F3.b		; 05 F3
	lda [$00.b]		; A7 00
	jsl $EB0D40.l		; 22 40 0D EB
	lda [$00.b]		; A7 00
	and $40.b,S		; 23 40
	ora $F3.b		; 05 F3
	cmp $402400.l		; CF 00 24 40
	ora $F3.b		; 05 F3
	cmp [$00.b],Y		; D7 00
	and $40.b		; 25 40
	ora #$FAEF.w		; 09 EF FA
	brk $26.b		; 00 26
	rti		; 40

	asl $F2.b		; 06 F2
	lda $402700.l,X		; BF 00 27 40
	asl $F2.b		; 06 F2
	cmp [$00.b]		; C7 00
	plp		; 28
	rti		; 40

	sbc $00EE09.l		; EF 09 EE 00
	and #$0740.w		; 29 40 07
	sbc ($E7.b),Y		; F1 E7
	brk $2A.b		; 00 2A
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $402B00.l		; EF 00 2B 40
	ora [$F1.b]		; 07 F1
	sbc [$00.b],Y		; F7 00
	bit $1B40.w		; 2C 40 1B
	brk $F0.b		; 00 F0
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	sbc $A3F3.w,X		; FD F3 A3
	php		; 08
	tsb $48.b		; 04 48
	ora $F5.b,S		; 03 F5
	tyx		; BB
	brk $06.b		; 00 06
	rti		; 40

	phd		; 0B
	sbc $00BB.w		; ED BB 00
	ora [$40.b]		; 07 40
	ora ($E5.b,S),Y		; 13 E5
	tyx		; BB
	brk $08.b		; 00 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,S),Y		; D3 00
	ora #$0B40.w		; 09 40 0B
	sbc $00D3.w		; ED D3 00
	asl A		; 0A
	rti		; 40

	phd		; 0B
	sbc $00EB.w		; ED EB 00
	phd		; 0B
	rti		; 40

	phd		; 0B
	sbc $00F3.w		; ED F3 00
	tsb $1B40.w		; 0C 40 1B
	cmp $00B8.w,X		; DD B8 00
	ora $FC40.w		; 0D 40 FC
	jsr ($00E2.w,X)		; FC E2 00
	asl $FC40.w		; 0E 40 FC
	jsr ($00EA.w,X)		; FC EA 00
	ora $EC0C40.l		; 0F 40 0C EC
	xce		; FB
	brk $16.b		; 00 16
	rti		; 40

	pea $E504.w		; F4 04 E5
	brk $17.b		; 00 17
	rti		; 40

	pea $ED04.w		; F4 04 ED
	brk $18.b		; 00 18
	rti		; 40

	pea $F504.w		; F4 04 F5
	brk $19.b		; 00 19
	rti		; 40

	ora $E3.b,X		; 15 E3
	lda ($00.b,S),Y		; B3 00
	inc A		; 1A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $00.b,S		; C3 00
	tas		; 1B
	rti		; 40

	ora $A3EB.w		; 0D EB A3
	brk $1C.b		; 00 1C
	rti		; 40

	ora $ABEB.w		; 0D EB AB
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $B3FB.w,X		; FD FB B3
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b,S),Y		; B3 00
	ora $EB0D40.l,X		; 1F 40 0D EB
	lda ($00.b,S),Y		; B3 00
	jsr $F540.w		; 20 40 F5
	ora $B0.b,S		; 03 B0
	brk $21.b		; 00 21
	rti		; 40

	asl $CBEA.w		; 0E EA CB
	brk $22.b		; 00 22
	rti		; 40

	sbc [$01.b],Y		; F7 01
	clv		; B8
	brk $23.b		; 00 23
	rti		; 40

	ora $06EA.w,Y		; 19 EA 06
	cmp ($08.b)		; D2 08
	brk $48.b		; 00 48
	sbc $0D.b,S		; E3 0D
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	sbc $0D.b,S		; E3 0D
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $00EA.w,X		; FE EA 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	nop		; EA
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00D2.w,X		; FE D2 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00DA.w,X		; FE DA 00
	tsb $EA40.w		; 0C 40 EA
	asl $00E2.w		; 0E E2 00
	ora $F240.w		; 0D 40 F2
	asl $E2.b		; 06 E2
	brk $0E.b		; 00 0E
	rti		; 40

	plx		; FA
	inc $00E2.w,X		; FE E2 00
	ora $0DEB40.l		; 0F 40 EB 0D
	ldx #$00.b		; A2 00
	clc		; 18
	rti		; 40

	php		; 08
	beq -14.b		; F0 F2
	brk $19.b		; 00 19
	rti		; 40

	inx		; E8
	bpl  -6.b		; 10 FA
	brk $1A.b		; 00 1A
	rti		; 40

	beq   8.b		; F0 08
	plx		; FA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	tax		; AA
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda ($00.b)		; B2 00
	ora $E340.w,X		; 1D 40 E3
	ora $CA.b,X		; 15 CA
	brk $1E.b		; 00 1E
	rti		; 40

	xba		; EB
	ora $00CA.w		; 0D CA 00
	ora $05F340.l,X		; 1F 40 F3 05
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	xce		; FB
	sbc $00CA.w,X		; FD CA 00
	and ($40.b,X)		; 21 40
	cpx $EA0C.w		; EC 0C EA
	brk $22.b		; 00 22
	rti		; 40

	sbc $F20B.w		; ED 0B F2
	brk $23.b		; 00 23
	rti		; 40

	ora $F3.b		; 05 F3
	plx		; FA
	brk $24.b		; 00 24
	rti		; 40

	ora [$F9.b],Y		; 17 F9
	sbc [$D3.b],Y		; F7 D3
	php		; 08
	brk $48.b		; 00 48
	sbc $B303.w		; ED 03 B3
	php		; 08
	cop $48.b		; 02 48
	sbc $B3F3.w,X		; FD F3 B3
	php		; 08
	tsb $48.b		; 04 48
	sbc $08A301.l		; EF 01 A3 08
	asl $48.b		; 06 48
	beq   8.b		; F0 08
	cmp $00.b,S		; C3 00
	php		; 08
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b,S		; E3 00
	asl A		; 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	dec $0B00.w,X		; DE 00 0B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inc $00.b		; E6 00
	tsb $E940.w		; 0C 40 E9
	ora $0D00EE.l		; 0F EE 00 0D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inc $0E00.w		; EE 00 0E
	rti		; 40

	sbc #$F60F.w		; E9 0F F6
	brk $0F.b		; 00 0F
	rti		; 40

	sbc #$FE0F.w		; E9 0F FE
	brk $18.b		; 00 18
	rti		; 40

	sbc ($06.b)		; F2 06
	wai		; CB
	brk $19.b		; 00 19
	rti		; 40

	plx		; FA
	inc $00CB.w,X		; FE CB 00
	inc A		; 1A
	rti		; 40

	cop $F6.b		; 02 F6
	wai		; CB
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1C00.w		; E9 00 1C
	rti		; 40

	sed		; F8
	brk $C3.b		; 00 C3
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b,S		; C3 00
	asl $0740.w,X		; 1E 40 07
	sbc ($F1.b),Y		; F1 F1
	brk $1F.b		; 00 1F
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $20.b		; 00 20
	rti		; 40

	sbc $00A3F9.l,X		; FF F9 A3 00
	and ($40.b,X)		; 21 40
	sbc $00ABF9.l,X		; FF F9 AB 00
	jsl $F91840.l		; 22 40 18 F9
	sbc [$AB.b],Y		; F7 AB
	php		; 08
	brk $48.b		; 00 48
	ora #$ABE7.w		; 09 E7 AB
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	sbc $9BF3.w,X		; FD F3 9B
	php		; 08
	asl $48.b		; 06 48
	ora $9DE3.w		; 0D E3 9D
	php		; 08
	php		; 08
	pha		; 48
	sbc $08BBF1.l,X		; FF F1 BB 08
	asl A		; 0A
	pha		; 48
	jsr ($CBFC.w,X)		; FC FC CB
	brk $0C.b		; 00 0C
	rti		; 40

	beq   8.b		; F0 08
	nop		; EA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	stp		; DB
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $DBEC.w		; 0C EC DB
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($DCFC.w,X)		; FC FC DC
	brk $1C.b		; 00 1C
	rti		; 40

	pea $E404.w		; F4 04 E4
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $F00C.w		; EC 0C F0
	brk $1E.b		; 00 1E
	rti		; 40

	ora $A3DB.w,X		; 1D DB A3
	brk $1F.b		; 00 1F
	rti		; 40

	plx		; FA
	inc $00E1.w,X		; FE E1 00
	jsr $1A40.w		; 20 40 1A
	dec $009B.w,X		; DE 9B 00
	and ($40.b,X)		; 21 40
	ora [$F1.b]		; 07 F1
	sbc $00.b,S		; E3 00
	jsl $F10740.l		; 22 40 07 F1
	xba		; EB
	brk $23.b		; 00 23
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,S),Y		; F3 00
	bit $40.b		; 24 40
	ora [$F1.b]		; 07 F1
	xce		; FB
	brk $25.b		; 00 25
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	rol $40.b		; 26 40
	trb $93DC.w		; 1C DC 93
	brk $27.b		; 00 27
	rti		; 40

	ora $00BBE9.l		; 0F E9 BB 00
	plp		; 28
	rti		; 40

	ora $00C3E9.l		; 0F E9 C3 00
	and #$1640.w		; 29 40 16
	jsr ($B1F4.w,X)		; FC F4 B1
	php		; 08
	brk $48.b		; 00 48
	tsb $B1E4.w		; 0C E4 B1
	php		; 08
	cop $48.b		; 02 48
	tsb $C1E4.w		; 0C E4 C1
	php		; 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	ora #$F9EF.w		; 09 EF F9
	brk $08.b		; 00 08
	rti		; 40

	phd		; 0B
	sbc $00E9.w		; ED E9 00
	ora #$FC40.w		; 09 40 FC
	jsr ($00C1.w,X)		; FC C1 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp #$0C00.w		; C9 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	ora $0C40.w		; 0D 40 0C
	cpx $00D1.w		; EC D1 00
	asl $1440.w		; 0E 40 14
	cpx $D1.b		; E4 D1
	brk $0F.b		; 00 0F
	rti		; 40

	trb $BBDC.w		; 1C DC BB
	brk $18.b		; 00 18
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $19.b		; 00 19
	rti		; 40

	ora $E1EB.w		; 0D EB E1
	brk $1A.b		; 00 1A
	rti		; 40

	ora $00B9D9.l,X		; 1F D9 B9 00
	tas		; 1B
	rti		; 40

	sbc $00D9F9.l,X		; FF F9 D9 00
	trb $0740.w		; 1C 40 07
	sbc ($D9.b),Y		; F1 D9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00D9E9.l		; 0F E9 D9 00
	asl $0940.w,X		; 1E 40 09
	sbc $1F00F1.l		; EF F1 00 1F
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	lda ($00.b,X)		; A1 00
	jsr $1740.w		; 20 40 17
	sbc ($A9.b,X)		; E1 A9
	brk $21.b		; 00 21
	rti		; 40

	asl $E808.w,X		; 1E 08 E8
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	ora #$C1E7.w		; 09 E7 C1
	php		; 08
	cop $48.b		; 02 48
	tsb $B1E4.w		; 0C E4 B1
	php		; 08
	tsb $48.b		; 04 48
	jsr $A5D8.w		; 20 D8 A5
	brk $06.b		; 00 06
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $0700.w,Y		; D9 00 07
	rti		; 40

	ora #$F1EF.w		; 09 EF F1
	brk $08.b		; 00 08
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $09.b		; 00 09
	rti		; 40

	clc		; 18
	cpx #$A3.b		; E0 A3
	brk $0A.b		; 00 0A
	rti		; 40

	ora $C1DF.w,Y		; 19 DF C1
	brk $0B.b		; 00 0B
	rti		; 40

	ora $C9DF.w,Y		; 19 DF C9
	brk $0C.b		; 00 0C
	rti		; 40

	and ($D7.b,X)		; 21 D7
	tyx		; BB
	brk $0D.b		; 00 0D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cmp $00.b,S		; C3 00
	asl $3140.w		; 0E 40 31
	cmp [$BD.b]		; C7 BD
	brk $0F.b		; 00 0F
	rti		; 40

	and $BDBF.w,Y		; 39 BF BD
	brk $16.b		; 00 16
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	lda $1700.w,X		; BD 00 17
	rti		; 40

	and #$BECF.w		; 29 CF BE
	brk $18.b		; 00 18
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $00.b,S		; C3 00
	ora $1C40.w,Y		; 19 40 1C
	jmp.w [$00B9]		; DC B9 00
	inc A		; 1A
	rti		; 40

	tsb $E9EC.w		; 0C EC E9
	brk $1B.b		; 00 1B
	rti		; 40

	clc		; 18
	cpx #$AB.b		; E0 AB
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	plb		; AB
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b,S),Y		; B3 00
	asl $2440.w,X		; 1E 40 24
	pei ($B3.b)		; D4 B3
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	tyx		; BB
	brk $20.b		; 00 20
	rti		; 40

	jsr ($B4FC.w,X)		; FC FC B4
	brk $21.b		; 00 21
	rti		; 40

	jsr ($BCFC.w,X)		; FC FC BC
	brk $22.b		; 00 22
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $23.b		; 00 23
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b,X)		; E1 00
	bit $40.b		; 24 40
	ora $00D1E9.l		; 0F E9 D1 00
	and $40.b		; 25 40
	ora [$E1.b],Y		; 17 E1
	cmp ($00.b),Y		; D1 00
	rol $40.b		; 26 40
	ora $E60A.w,X		; 1D 0A E6
	cmp #$0008.w		; C9 08 00
	pha		; 48
	asl A		; 0A
	inc $B1.b		; E6 B1
	php		; 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $A1.b		; E5 A1
	php		; 08
	tsb $48.b		; 04 48
	and #$B7CF.w		; 29 CF B7
	brk $06.b		; 00 06
	rti		; 40

	asl A		; 0A
	inc $00F1.w		; EE F1 00
	ora [$40.b]		; 07 40
	bpl -24.b		; 10 E8
	cmp $0800.w,Y		; D9 00 08
	rti		; 40

	sec		; 38
	cpy #$AE.b		; C0 AE
	brk $09.b		; 00 09
	rti		; 40

	inc A		; 1A
	dec $00B1.w,X		; DE B1 00
	asl A		; 0A
	rti		; 40

	inc A		; 1A
	dec $00B9.w,X		; DE B9 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00C1.w		; EE C1 00
	tsb $1240.w		; 0C 40 12
	inc $C1.b		; E6 C1
	brk $0D.b		; 00 0D
	rti		; 40

	inc A		; 1A
	dec $00C1.w,X		; DE C1 00
	asl $1A40.w		; 0E 40 1A
	dec $00C9.w,X		; DE C9 00
	ora $F60240.l		; 0F 40 02 F6
	lda ($00.b)		; B2 00
	asl $40.b,X		; 16 40
	cop $F6.b		; 02 F6
	tsx		; BA
	brk $17.b		; 00 17
	rti		; 40

	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	clc		; 18
	rti		; 40

	jsl $00B8D6.l		; 22 D6 B8 00
	ora $2240.w,Y		; 19 40 22
	dec $C0.b,X		; D6 C0
	brk $1A.b		; 00 1A
	rti		; 40

	tas		; 1B
	cmp $00A9.w,X		; DD A9 00
	tas		; 1B
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldx #$00.b		; A2 00
	ora $0340.w,X		; 1D 40 03
	sbc $AA.b,X		; F5 AA
	brk $1E.b		; 00 1E
	rti		; 40

	bit $C4.b,X		; 34 C4
	lda ($00.b),Y		; B1 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	sbc #$2000.w		; E9 00 20
	rti		; 40

	bit $B3CC.w		; 2C CC B3
	brk $21.b		; 00 21
	rti		; 40

	lsr $B2.b		; 46 B2
	lda #$2200.w		; A9 00 22
	rti		; 40

	rol $AABA.w,X		; 3E BA AA
	brk $23.b		; 00 23
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	bit $40.b		; 24 40
	ora $00E1E9.l		; 0F E9 E1 00
	and $40.b		; 25 40
	ora [$D5.b],Y		; 17 D5
	tas		; 1B
	inx		; E8
	php		; 08
	brk $48.b		; 00 48
	inc $C902.w		; EE 02 C9
	php		; 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	cpy $08.b		; C4 08
	tsb $48.b		; 04 48
	asl $D0D2.w,X		; 1E D2 D0
	php		; 08
	asl $48.b		; 06 48
	dec $1A.b,X		; D6 1A
	bne   8.b		; D0 08
	php		; 08
	pha		; 48
	sbc $13.b		; E5 13
	inx		; E8
	brk $0A.b		; 00 0A
	rti		; 40

	inc $D90A.w		; EE 0A D9
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	sbc $13.b		; E5 13
	beq   0.b		; F0 00
	ora $0640.w		; 0D 40 06
	sbc ($D4.b)		; F2 D4
	brk $0E.b		; 00 0E
	rti		; 40

	asl $D4EA.w		; 0E EA D4
	rti		; 40

	asl $FE00.w		; 0E 00 FE
	plx		; FA
	dec $00.b		; C6 00
	ora $FAFE40.l		; 0F 40 FE FA
	dec $1A00.w		; CE 00 1A
	rti		; 40

	inc $D6FA.w,X		; FE FA D6
	brk $1B.b		; 00 1B
	rti		; 40

	dec $DE2A.w		; CE 2A DE
	brk $1C.b		; 00 1C
	rti		; 40

	dec $E62A.w		; CE 2A E6
	brk $1D.b		; 00 1D
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp #$1E00.w		; C9 00 1E
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp ($00.b),Y		; D1 00
	ora $12E640.l,X		; 1F 40 E6 12
	bne   0.b		; D0 00
	jsr $E640.w		; 20 40 E6
	ora ($D8.b)		; 12 D8
	brk $21.b		; 00 21
	rti		; 40

	dec $22.b,X		; D6 22
	cpx #$00.b		; E0 00
	jsl $1ADE40.l		; 22 40 DE 1A
	cpx #$00.b		; E0 00
	and $40.b,S		; 23 40
	inc $12.b		; E6 12
	cpx #$00.b		; E0 00
	bit $40.b		; 24 40
	trb $FA.b		; 14 FA
	inc $CD.b,X		; F6 CD
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $CD.b		; 06 CD
	php		; 08
	cop $48.b		; 02 48
	phx		; DA
	asl $AD.b,X		; 16 AD
	php		; 08
	tsb $48.b		; 04 48
	nop		; EA
	asl $AD.b		; 06 AD
	php		; 08
	asl $48.b		; 06 48
	nop		; EA
	asl $BD.b		; 06 BD
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $00BD.w,X		; FE BD 00
	asl A		; 0A
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,S),Y		; B3 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	tyx		; BB
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,X)		; E1 00
	ora $1940.w		; 0D 40 19
	cmp $0E00EC.l,X		; DF EC 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0F00.w,X		; DD 00 0F
	rti		; 40

	phx		; DA
	asl $00BD.w,X		; 1E BD 00
	inc A		; 1A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	lda $1B00.w,X		; BD 00 1B
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp $00.b		; C5 00
	trb $0A40.w		; 1C 40 0A
	inc $00CF.w		; EE CF 00
	ora $0A40.w,X		; 1D 40 0A
	inc $00D7.w		; EE D7 00
	asl $FC40.w,X		; 1E 40 FC
	jsr ($00E9.w,X)		; FC E9 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	cmp $2000.w,X		; DD 00 20
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $21.b		; 00 21
	rti		; 40

	ora $E3.b,X		; 15 E3
	inx		; E8
	brk $22.b		; 00 22
	rti		; 40

	asl $FCF4.w,X		; 1E F4 FC
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc $08B101.l		; EF 01 B1 08
	cop $48.b		; 02 48
	sbc $08B1F1.l,X		; FF F1 B1 08
	tsb $48.b		; 04 48
	jsr ($C1FC.w,X)		; FC FC C1
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	ora [$40.b]		; 07 40
	sbc $99FF.w,Y		; F9 FF 99
	brk $08.b		; 00 08
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b,X)		; A1 00
	ora #$0440.w		; 09 40 04
	pea $00A9.w		; F4 A9 00
	asl A		; 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta $0B00.w,Y		; 99 00 0B
	rti		; 40

	pea $C104.w		; F4 04 C1
	brk $0C.b		; 00 0C
	rti		; 40

	ora $00B1E9.l		; 0F E9 B1 00
	ora $0F40.w		; 0D 40 0F
	sbc #$00B9.w		; E9 B9 00
	asl $E740.w		; 0E 40 E7
	ora ($B6.b),Y		; 11 B6
	brk $0F.b		; 00 0F
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	lda [$00.b],Y		; B7 00
	asl $40.b,X		; 16 40
	sed		; F8
	brk $D9.b		; 00 D9
	brk $17.b		; 00 17
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $18.b		; 00 18
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1900.w,Y		; F9 00 19
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($40.b),Y		; D1 40
	clc		; 18
	brk $02.b		; 00 02
	inc $F9.b,X		; F6 F9
	brk $1A.b		; 00 1A
	rti		; 40

	asl A		; 0A
	inc $40F9.w		; EE F9 40
	ora $F300.w,Y		; 19 00 F3
	ora $C9.b		; 05 C9
	brk $1B.b		; 00 1B
	rti		; 40

	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	trb $0340.w		; 1C 40 03
	sbc $C9.b,X		; F5 C9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $1740.w,Y		; D9 40 17
	brk $04.b		; 00 04
	pea $00E1.w		; F4 E1 00
	asl $F440.w,X		; 1E 40 F4
	tsb $F1.b		; 04 F1
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$2000.w		; E9 00 20
	rti		; 40

	inc $02.b,X		; F6 02
	sbc #$2040.w		; E9 40 20
	brk $06.b		; 00 06
	sbc ($F1.b)		; F2 F1
	brk $21.b		; 00 21
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($40.b,X)		; E1 40
	asl $1700.w,X		; 1E 00 17
	sed		; F8
	sed		; F8
	txs		; 9A
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	dex		; CA
	php		; 08
	asl $48.b		; 06 48
	beq   8.b		; F0 08
	sbc #$0800.w		; E9 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	phx		; DA
	brk $09.b		; 00 09
	rti		; 40

	beq   8.b		; F0 08
	ldx #$00.b		; A2 00
	asl A		; 0A
	rti		; 40

	beq   8.b		; F0 08
	tax		; AA
	brk $0B.b		; 00 0B
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b)		; B2 00
	tsb $F040.w		; 0C 40 F0
	php		; 08
	tsx		; BA
	brk $0D.b		; 00 0D
	rti		; 40

	beq   8.b		; F0 08
	rep #$00		; C2 00
	asl $F040.w		; 0E 40 F0
	php		; 08
	dex		; CA
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b)		; D2 00
	clc		; 18
	rti		; 40

	php		; 08
	beq -76.b		; F0 B4
	brk $19.b		; 00 19
	rti		; 40

	php		; 08
	beq -68.b		; F0 BC
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b,X)		; E1 00
	trb $0240.w		; 1C 40 02
	inc $E2.b,X		; F6 E2
	brk $1D.b		; 00 1D
	rti		; 40

	xba		; EB
	ora $40F9.w		; 0D F9 40
	tas		; 1B
	brk $F4.b		; 00 F4
	tsb $D9.b		; 04 D9
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1F00.w		; E9 00 1F
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $20.b		; 00 20
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	and ($40.b,X)		; 21 40
	bpl -15.b		; 10 F1
	sbc $0008D5.l,X		; FF D5 08 00
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	sbc $08.b		; E5 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b		; C5 08
	tsb $48.b		; 04 48
	php		; 08
	beq -11.b		; F0 F5
	brk $06.b		; 00 06
	rti		; 40

	sbc #$E10F.w		; E9 0F E1
	brk $07.b		; 00 07
	rti		; 40

	ora #$E2EF.w		; 09 EF E2
	brk $08.b		; 00 08
	rti		; 40

	beq   8.b		; F0 08
	sbc $00.b,X		; F5 00
	ora #$F840.w		; 09 40 F8
	brk $F5.b		; 00 F5
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b,X		; D5 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0C00.w,X		; DD 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b		; E5 00
	ora $0140.w		; 0D 40 01
	sbc [$ED.b],Y		; F7 ED
	brk $0E.b		; 00 0E
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	ora $09EF40.l		; 0F 40 EF 09
	wai		; CB
	brk $16.b		; 00 16
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $1700.w,X		; FD 00 17
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $00.b,X		; F5 00
	clc		; 18
	rti		; 40

	ora ($F1.b),Y		; 11 F1
	sbc $0008A2.l,X		; FF A2 08 00
	pha		; 48
	sbc ($FE.b)		; F2 FE
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	inc $B202.w		; EE 02 B2
	php		; 08
	asl $48.b		; 06 48
	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $08.b		; 00 08
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	rep #$00		; C2 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	tsb $0140.w		; 0C 40 01
	sbc [$AA.b],Y		; F7 AA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $C2FF.w,Y		; F9 FF C2
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	rep #$00		; C2 00
	ora $F20640.l		; 0F 40 06 F2
	tsx		; BA
	brk $18.b		; 00 18
	rti		; 40

	asl $BAEA.w		; 0E EA BA
	brk $19.b		; 00 19
	rti		; 40

	ora #$C2EF.w		; 09 EF C2
	brk $1A.b		; 00 1A
	rti		; 40

	inc $B2FA.w,X		; FE FA B2
	brk $1B.b		; 00 1B
	rti		; 40

	inc $BAFA.w,X		; FE FA BA
	brk $1C.b		; 00 1C
	rti		; 40

	trb $F1.b		; 14 F1
	sbc $0008C1.l,X		; FF C1 08 00
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	beq   8.b		; F0 08
	cmp $0600.w,Y		; D9 00 06
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	ora [$40.b]		; 07 40
	ora ($F7.b,X)		; 01 F7
	cmp #$0800.w		; C9 00 08
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b),Y		; D1 00
	ora #$F940.w		; 09 40 F9
	sbc $0A00D1.l,X		; FF D1 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	ora #$C8EF.w		; 09 EF C8
	brk $0C.b		; 00 0C
	rti		; 40

	ora #$D0EF.w		; 09 EF D0
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	sbc $00B9.w		; ED B9 00
	asl $F840.w		; 0E 40 F8
	brk $D9.b		; 00 D9
	brk $0F.b		; 00 0F
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $1600.w,Y		; D9 00 16
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,X)		; A1 00
	ora [$40.b],Y		; 17 40
	ora $F5.b,S		; 03 F5
	lda #$1800.w		; A9 00 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	ora $0340.w,Y		; 19 40 03
	sbc $B9.b,X		; F5 B9
	brk $1A.b		; 00 1A
	rti		; 40

	xba		; EB
	ora $00B6.w		; 0D B6 00
	tas		; 1B
	rti		; 40

	xba		; EB
	ora $00BE.w		; 0D BE 00
	trb $1640.w		; 1C 40 16
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b,S),Y		; B3 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b,S),Y		; B3 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	cmp $08.b,S		; C3 08
	asl $48.b		; 06 48
	brk $F8.b		; 00 F8
	stp		; DB
	brk $08.b		; 00 08
	rti		; 40

	beq   8.b		; F0 08
	cld		; D8
	brk $09.b		; 00 09
	rti		; 40

	beq   8.b		; F0 08
	cpx #$00.b		; E0 00
	asl A		; 0A
	rti		; 40

	sbc #$B30F.w		; E9 0F B3
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tyx		; BB
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $A3.b		; 00 A3
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	lda $00.b,S		; A3 00
	asl $0840.w		; 0E 40 08
	beq -93.b		; F0 A3
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $DB.b		; 00 DB
	brk $18.b		; 00 18
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b,X)		; C1 00
	ora $1B40.w,Y		; 19 40 1B
	cmp $00C2.w,X		; DD C2 00
	inc A		; 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp ($00.b,S),Y		; D3 00
	tas		; 1B
	rti		; 40

	sbc $D3FB.w,X		; FD FB D3
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,S),Y		; D3 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$00AB.w		; 09 AB 00
	asl $F740.w,X		; 1E 40 F7
	ora ($AB.b,X)		; 01 AB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00ABF9.l,X		; FF F9 AB 00
	jsr $0740.w		; 20 40 07
	sbc ($AB.b),Y		; F1 AB
	brk $21.b		; 00 21
	rti		; 40

	ora ($F3.b),Y		; 11 F3
	sbc $08A3.w,X		; FD A3 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	ora $F5.b,S		; 03 F5
	plb		; AB
	brk $06.b		; 00 06
	rti		; 40

	ora $BBEB.w		; 0D EB BB
	brk $07.b		; 00 07
	rti		; 40

	xce		; FB
	sbc $00DB.w,X		; FD DB 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $00.b,S		; A3 00
	ora #$0540.w		; 09 40 05
	sbc ($BB.b,S),Y		; F3 BB
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $00.b,S		; C3 00
	phd		; 0B
	rti		; 40

	ora $F3.b		; 05 F3
	wai		; CB
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,S),Y		; D3 00
	ora $ED40.w		; 0D 40 ED
	phd		; 0B
	ldx $0E00.w,Y		; BE 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,S),Y		; B3 00
	ora $FAFE40.l		; 0F 40 FE FA
	lda ($00.b,S),Y		; B3 00
	asl $40.b,X		; 16 40
	asl $F2.b		; 06 F2
	lda ($00.b,S),Y		; B3 00
	ora [$40.b],Y		; 17 40
	inc $CD0A.w		; EE 0A CD
	brk $18.b		; 00 18
	rti		; 40

	ora [$F1.b]		; 07 F1
	stp		; DB
	brk $19.b		; 00 19
	rti		; 40

	asl $F5.b,X		; 16 F5
	xce		; FB
	lda $0008.w,X		; BD 08 00
	pha		; 48
	sbc $CD03.w		; ED 03 CD
	php		; 08
	cop $48.b		; 02 48
	inc $A502.w		; EE 02 A5
	php		; 08
	tsb $48.b		; 04 48
	pld		; 2B
	cmp $00C5.w		; CD C5 00
	asl $40.b		; 06 40
	and ($C5.b,S),Y		; 33 C5
	cmp $00.b		; C5 00
	ora [$40.b]		; 07 40
	ora $F5.b,S		; 03 F5
	cmp $0800.w,X		; DD 00 08
	rti		; 40

	ora $BCEB.w		; 0D EB BC
	brk $09.b		; 00 09
	rti		; 40

	ora $C4EB.w		; 0D EB C4
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $00.b,X		; D5 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp $00.b		; C5 00
	tsb $1B40.w		; 0C 40 1B
	cmp $00C5.w,X		; DD C5 00
	ora $FD40.w		; 0D 40 FD
	xce		; FB
	cmp $0E00.w		; CD 00 0E
	rti		; 40

	sbc $D5FB.w,X		; FD FB D5
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F3.b		; 05 F3
	clv		; B8
	brk $16.b		; 00 16
	rti		; 40

	ora $F3.b		; 05 F3
	cpy #$00.b		; C0 00
	ora [$40.b],Y		; 17 40
	ora $F3.b		; 05 F3
	iny		; C8
	brk $18.b		; 00 18
	rti		; 40

	and $D5.b,S		; 23 D5
	cmp $00.b		; C5 00
	ora $FE40.w,Y		; 19 40 FE
	plx		; FA
	lda $00.b		; A5 00
	inc A		; 1A
	rti		; 40

	inc $ADFA.w,X		; FE FA AD
	brk $1B.b		; 00 1B
	rti		; 40

	inc $B50A.w		; EE 0A B5
	brk $1C.b		; 00 1C
	rti		; 40

	inc $02.b,X		; F6 02
	lda $00.b,X		; B5 00
	ora $FE40.w,X		; 1D 40 FE
	plx		; FA
	lda $00.b,X		; B5 00
	asl $1A40.w,X		; 1E 40 1A
	ora $ED.b,S		; 03 ED
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	jsr ($B9F4.w,X)		; FC F4 B9
	php		; 08
	cop $48.b		; 02 48
	tsb $B9E4.w		; 0C E4 B9
	php		; 08
	tsb $48.b		; 04 48
	ora ($E5.b,S),Y		; 13 E5
	lda ($00.b,X)		; A1 00
	asl $40.b		; 06 40
	ora ($E5.b,S),Y		; 13 E5
	lda #$0700.w		; A9 00 07
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00B1.w		; ED B1 00
	ora #$1340.w		; 09 40 13
	sbc $B1.b		; E5 B1
	brk $0A.b		; 00 0A
	rti		; 40

	xce		; FB
	sbc $00B1.w,X		; FD B1 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $0099.w		; EE 99 00
	tsb $F540.w		; 0C 40 F5
	ora $B0.b,S		; 03 B0
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $03.b,X		; F5 03
	clv		; B8
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F0.b		; 00 F0
	cmp #$1608.w		; C9 08 16
	pha		; 48
	bpl -24.b		; 10 E8
	cmp #$1800.w		; C9 00 18
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	ora $0140.w,Y		; 19 40 01
	sbc [$D9.b],Y		; F7 D9
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$E9EF.w		; 09 EF E9
	brk $1B.b		; 00 1B
	rti		; 40

	ora #$F1EF.w		; 09 EF F1
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1D00.w,Y		; F9 00 1D
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $1E.b		; 00 1E
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	ora $EE0A40.l,X		; 1F 40 0A EE
	sbc ($00.b,X)		; E1 00
	jsr $0A40.w		; 20 40 0A
	inc $00F9.w		; EE F9 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00F1.w,X		; FD F1 00
	jsl $FAFE40.l		; 22 40 FE FA
	sbc #$2300.w		; E9 00 23
	rti		; 40

	sbc $00E1F9.l,X		; FF F9 E1 00
	bit $40.b		; 24 40
	ora $0DE3.w,Y		; 19 E3 0D
	ldy $0008.w		; AC 08 00
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	ldy $0208.w		; AC 08 02
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cpy $08.b		; C4 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	cpy $08.b		; C4 08
	asl $48.b		; 06 48
	ora $F5.b,S		; 03 F5
	ldy $0800.w		; AC 00 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldy $00.b,X		; B4 00
	ora #$E440.w		; 09 40 E4
	trb $A4.b		; 14 A4
	brk $0A.b		; 00 0A
	rti		; 40

	cpx $A40C.w		; EC 0C A4
	brk $0B.b		; 00 0B
	rti		; 40

	pea $A404.w		; F4 04 A4
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($A4FC.w,X)		; FC FC A4
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $DCEC.w		; 0C EC DC
	brk $0E.b		; 00 0E
	rti		; 40

	trb $E4.b		; 14 E4
	jmp.w [$0F00]		; DC 00 0F
	rti		; 40

	sbc $BC0B.w		; ED 0B BC
	brk $18.b		; 00 18
	rti		; 40

	sbc $03.b,X		; F5 03
	ldy $1900.w,X		; BC 00 19
	rti		; 40

	sbc $BCFB.w,X		; FD FB BC
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F3.b		; 05 F3
	ldy $1B00.w,X		; BC 00 1B
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpx $00.b		; E4 00
	trb $DF40.w		; 1C 40 DF
	ora $00C4.w,Y		; 19 C4 00
	ora $E740.w,X		; 1D 40 E7
	ora ($C4.b),Y		; 11 C4
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00C409.l		; EF 09 C4 00
	ora $E11740.l,X		; 1F 40 17 E1
	pei ($00.b)		; D4 00
	jsr $0B40.w		; 20 40 0B
	sbc $00AC.w		; ED AC 00
	and ($40.b,X)		; 21 40
	sbc $15.b,S		; E3 15
	ldy $2200.w,X		; BC 00 22
	rti		; 40

	ora [$F1.b]		; 07 F1
	pei ($00.b)		; D4 00
	and $40.b,S		; 23 40
	ora $00D4E9.l		; 0F E9 D4 00
	bit $40.b		; 24 40
	inc A		; 1A
	cpx #$10.b		; E0 10
	lda #$0008.w		; A9 08 00
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	ora $CDD7.w,Y		; 19 D7 CD
	php		; 08
	asl $48.b		; 06 48
	beq   8.b		; F0 08
	lda #$0800.w		; A9 00 08
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b),Y		; B1 00
	ora #$F940.w		; 09 40 F9
	sbc $0A00C9.l,X		; FF C9 00 0A
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	tsb $F040.w		; 0C 40 F0
	php		; 08
	cmp #$0D00.w		; C9 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldy $0E00.w,X		; BC 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cpy $00.b		; C4 00
	ora $F70140.l		; 0F 40 01 F7
	cpy $1800.w		; CC 00 18
	rti		; 40

	and #$D4CF.w		; 29 CF D4
	brk $19.b		; 00 19
	rti		; 40

	and #$DCCF.w		; 29 CF DC
	brk $1A.b		; 00 1A
	rti		; 40

	sed		; F8
	brk $B1.b		; 00 B1
	brk $1B.b		; 00 1B
	rti		; 40

	ora #$BEEF.w		; 09 EF BE
	brk $1C.b		; 00 1C
	rti		; 40

	ora #$C6EF.w		; 09 EF C6
	brk $1D.b		; 00 1D
	rti		; 40

	ora #$CEEF.w		; 09 EF CE
	brk $1E.b		; 00 1E
	rti		; 40

	and ($C7.b),Y		; 31 C7
	dec $00.b,X		; D6 00
	ora $E71140.l,X		; 1F 40 11 E7
	iny		; C8
	brk $20.b		; 00 20
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	bne   0.b		; D0 00
	and ($40.b,X)		; 21 40
	nop		; EA
	asl $00D3.w		; 0E D3 00
	jsl $FAFE40.l		; 22 40 FE FA
	lda ($00.b,X)		; A1 00
	and $40.b,S		; 23 40
	inc $A9FA.w,X		; FE FA A9
	brk $24.b		; 00 24
	rti		; 40

	inc $D10A.w		; EE 0A D1
	brk $25.b		; 00 25
	rti		; 40

	asl $FFF1.w		; 0E F1 FF
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	sbc ($FE.b)		; F2 FE
	cmp #$0208.w		; C9 08 02
	pha		; 48
	sbc $08E901.l		; EF 01 E9 08
	tsb $48.b		; 04 48
	sbc $08E9F1.l,X		; FF F1 E9 08
	asl $48.b		; 06 48
	ora #$E1EF.w		; 09 EF E1
	brk $08.b		; 00 08
	rti		; 40

	cop $F6.b		; 02 F6
	cmp #$0900.w		; C9 00 09
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0E00.w,Y		; F9 00 0E
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $1800.w,Y		; D9 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	ora $0F40.w,Y		; 19 40 0F
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	nop		; EA
	asl $F1.b		; 06 F1
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $F1.b,X		; F6 F1
	php		; 08
	asl $48.b		; 06 48
	pea $D1FC.w		; F4 FC D1
	php		; 08
	php		; 08
	pha		; 48
	tsb $EC.b		; 04 EC
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	sbc $C9FF.w,Y		; F9 FF C9
	brk $0C.b		; 00 0C
	rti		; 40

	asl A		; 0A
	inc $00F1.w		; EE F1 00
	ora $0A40.w		; 0D 40 0A
	inc $00F9.w		; EE F9 00
	asl $EC40.w		; 0E 40 EC
	tsb $00D9.w		; 0C D9 00
	ora $F70140.l		; 0F 40 01 F7
	cmp #$1C00.w		; C9 00 1C
	rti		; 40

	ora #$C9EF.w		; 09 EF C9
	brk $1D.b		; 00 1D
	rti		; 40

	trb $E4.b		; 14 E4
	cmp [$00.b],Y		; D7 00
	asl $1C40.w,X		; 1E 40 1C
	jmp.w [$00D7]		; DC D7 00
	ora $D42440.l,X		; 1F 40 24 D4
	cmp [$00.b],Y		; D7 00
	jsr $1240.w		; 20 40 12
	nop		; EA
	asl $D9.b		; 06 D9
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $D9.b,X		; F6 D9
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $F1.b		; 05 F1
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $F1.b,X		; F5 F1
	php		; 08
	asl $48.b		; 06 48
	sbc $08C901.l		; EF 01 C9 08
	php		; 08
	pha		; 48
	nop		; EA
	asl $00E9.w		; 0E E9 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc #$0B00.w		; E9 00 0B
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	tsb $0240.w		; 0C 40 02
	inc $E9.b,X		; F6 E9
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00E9.w		; EE E9 00
	asl $1240.w		; 0E 40 12
	inc $E4.b		; E6 E4
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E6.b)		; 12 E6
	cpx $1A00.w		; EC 00 1A
	rti		; 40

	clc		; 18
	cpx #$F7.b		; E0 F7
	brk $1B.b		; 00 1B
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	trb $1440.w		; 1C 40 14
	cpx $F3.b		; E4 F3
	brk $1D.b		; 00 1D
	rti		; 40

	asl A		; 0A
	inc $00E1.w		; EE E1 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00C9.w,Y		; F9 C9 00
	ora $F9FF40.l,X		; 1F 40 FF F9
	cmp ($00.b),Y		; D1 00
	jsr $1240.w		; 20 40 12
	inx		; E8
	php		; 08
	jmp.w [$0008]		; DC 08 00
	pha		; 48
	sed		; F8
	sed		; F8
	jmp.w [$0208]		; DC 08 02
	pha		; 48
	cpx $CC04.w		; EC 04 CC
	php		; 08
	tsb $48.b		; 04 48
	ora $ECE3.w		; 0D E3 EC
	php		; 08
	asl $48.b		; 06 48
	sbc $ECF3.w,X		; FD F3 EC
	php		; 08
	php		; 08
	pha		; 48
	sbc $EC03.w		; ED 03 EC
	php		; 08
	asl A		; 0A
	pha		; 48
	php		; 08
	beq -36.b		; F0 DC
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($CCFC.w,X)		; FC FC CC
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($D4FC.w,X)		; FC FC D4
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq -28.b		; F0 E4
	brk $0F.b		; 00 0F
	rti		; 40

	and $D5.b,S		; 23 D5
	xce		; FB
	brk $1C.b		; 00 1C
	rti		; 40

	pld		; 2B
	cmp $00FC.w		; CD FC 00
	ora $ED40.w,X		; 1D 40 ED
	phd		; 0B
	jsr ($1E00.w,X)		; FC 00 1E
	rti		; 40

	sbc $03.b,X		; F5 03
	jsr ($1F00.w,X)		; FC 00 1F
	rti		; 40

	sbc $FCFB.w,X		; FD FB FC
	brk $20.b		; 00 20
	rti		; 40

	ora $F6DB.w,X		; 1D DB F6
	brk $21.b		; 00 21
	rti		; 40

	sbc $13.b		; E5 13
	cpx #$00.b		; E0 00
	jsl $13E540.l		; 22 40 E5 13
	inx		; E8
	brk $23.b		; 00 23
	rti		; 40

	ora ($E4.b)		; 12 E4
	tsb $08D1.w		; 0C D1 08
	brk $48.b		; 00 48
	pea $D1FC.w		; F4 FC D1
	php		; 08
	cop $48.b		; 02 48
	cpx $E104.w		; EC 04 E1
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	jmp.w [$0608]		; DC 08 06
	pha		; 48
	cpx $14.b		; E4 14
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $09.b		; 00 09
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0A.b		; 00 0A
	rti		; 40

	cpx $F10C.w		; EC 0C F1
	brk $0B.b		; 00 0B
	rti		; 40

	pea $F104.w		; F4 04 F1
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($F1FC.w,X)		; FC FC F1
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	pei ($00.b)		; D4 00
	asl $1C40.w		; 0E 40 1C
	jmp.w [$00E4]		; DC E4 00
	ora $0CEC40.l		; 0F 40 EC 0C
	sbc $1800.w,Y		; F9 00 18
	rti		; 40

	tsb $F4.b		; 04 F4
	cpx $1900.w		; EC 00 19
	rti		; 40

	tsb $ECEC.w		; 0C EC EC
	brk $1A.b		; 00 1A
	rti		; 40

	trb $E4.b		; 14 E4
	cpx #$00.b		; E0 00
	tas		; 1B
	rti		; 40

	trb $E4.b		; 14 E4
	inx		; E8
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00C909.l		; EF 09 C9 00
	ora $1940.w,X		; 1D 40 19
	inx		; E8
	php		; 08
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	stp		; DB
	php		; 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	sbc $08.b,S		; E3 08
	asl $48.b		; 06 48
	jsr $CED0.w		; 20 D0 CE
	php		; 08
	php		; 08
	pha		; 48
	clc		; 18
	cld		; D8
	dec $0A08.w,X		; DE 08 0A
	pha		; 48
	bmi -64.b		; 30 C0
	iny		; C8
	php		; 08
	tsb $0848.w		; 0C 48 08
	beq -21.b		; F0 EB
	brk $0E.b		; 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	xba		; EB
	brk $0F.b		; 00 0F
	rti		; 40

	cpx #$18.b		; E0 18
	cmp $1E00.w,X		; DD 00 1E
	rti		; 40

	inx		; E8
	bpl  -2.b		; 10 FE
	brk $1F.b		; 00 1F
	rti		; 40

	inx		; E8
	bpl -29.b		; 10 E3
	brk $20.b		; 00 20
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $00.b,S		; E3 00
	and ($40.b,X)		; 21 40
	clc		; 18
	cpx #$D6.b		; E0 D6
	brk $22.b		; 00 22
	rti		; 40

	plp		; 28
	bne -34.b		; D0 DE
	brk $23.b		; 00 23
	rti		; 40

	brk $F8.b		; 00 F8
	xba		; EB
	brk $24.b		; 00 24
	rti		; 40

	bmi -56.b		; 30 C8
	cld		; D8
	brk $25.b		; 00 25
	rti		; 40

	sec		; 38
	cpy #$D8.b		; C0 D8
	brk $26.b		; 00 26
	rti		; 40

	cpx $CB0C.w		; EC 0C CB
	brk $27.b		; 00 27
	rti		; 40

	pea $CB04.w		; F4 04 CB
	brk $28.b		; 00 28
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,S),Y		; F3 00
	and #$EC40.w		; 29 40 EC
	tsb $00FB.w		; 0C FB 00
	rol A		; 2A
	rti		; 40

	inc $F30A.w		; EE 0A F3
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $00FBF9.l,X		; FF F9 FB 00
	bit $0740.w		; 2C 40 07
	sbc ($FB.b),Y		; F1 FB
	brk $2D.b		; 00 2D
	rti		; 40

	ora [$F9.b],Y		; 17 F9
	sbc [$D9.b],Y		; F7 D9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	ora $ED.b,S		; 03 ED
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	xce		; FB
	sbc $A9.b,X		; F5 A9
	php		; 08
	asl $48.b		; 06 48
	pea $C9FC.w		; F4 FC C9
	php		; 08
	php		; 08
	pha		; 48
	sbc ($07.b),Y		; F1 07
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	ora #$D9EF.w		; 09 EF D9
	brk $0C.b		; 00 0C
	rti		; 40

	phd		; 0B
	sbc $00A9.w		; ED A9 00
	ora $0B40.w		; 0D 40 0B
	sbc $00B1.w		; ED B1 00
	asl $1340.w		; 0E 40 13
	sbc $BB.b		; E5 BB
	brk $0F.b		; 00 0F
	rti		; 40

	tas		; 1B
	cmp $00B4.w,X		; DD B4 00
	inc A		; 1A
	rti		; 40

	tas		; 1B
	cmp $00BC.w,X		; DD BC 00
	tas		; 1B
	rti		; 40

	pea $F104.w		; F4 04 F1
	brk $1C.b		; 00 1C
	rti		; 40

	ora #$E1EF.w		; 09 EF E1
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp #$1E00.w		; C9 00 1E
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	ora $03F540.l,X		; 1F 40 F5 03
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $21.b		; 00 21
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$2200.w		; E9 00 22
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	ora $F3.b		; 05 F3
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $25.b		; 00 25
	rti		; 40

	tas		; 1B
	sbc ($FD.b,S),Y		; F3 FD
	ldx $08.b		; A6 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	ldx $08.b		; A6 08
	cop $48.b		; 02 48
	jsr ($CEF4.w,X)		; FC F4 CE
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	ldx $0608.w,Y		; BE 08 06
	pha		; 48
	cop $F6.b		; 02 F6
	ldx $00.b,Y		; B6 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00B6.w		; EE B6 00
	ora #$FA40.w		; 09 40 FA
	inc $00DE.w,X		; FE DE 00
	asl A		; 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b)		; F2 00
	phd		; 0B
	rti		; 40

	xba		; EB
	ora $00AD.w		; 0D AD 00
	tsb $F840.w		; 0C 40 F8
	brk $E3.b		; 00 E3
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	plx		; FA
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $D4EC.w		; 0C EC D4
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($06.b)		; F2 06
	ldx $00.b,Y		; B6 00
	clc		; 18
	rti		; 40

	sbc $03.b,X		; F5 03
	nop		; EA
	brk $19.b		; 00 19
	rti		; 40

	plx		; FA
	inc $00B6.w,X		; FE B6 00
	inc A		; 1A
	rti		; 40

	ora $F3.b		; 05 F3
	ldx $1B00.w,Y		; BE 00 1B
	rti		; 40

	ora $F3.b		; 05 F3
	dec $00.b		; C6 00
	trb $F640.w		; 1C 40 F6
	cop $9E.b		; 02 9E
	brk $1D.b		; 00 1D
	rti		; 40

	inc $9EFA.w,X		; FE FA 9E
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F2.b		; 06 F2
	stz $1F00.w,X		; 9E 00 1F
	rti		; 40

	asl $A0EA.w		; 0E EA A0
	brk $20.b		; 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	jmp.w [$2100]		; DC 00 21
	rti		; 40

	ora [$F1.b]		; 07 F1
	cpx $00.b		; E4 00
	jsl $F10740.l		; 22 40 07 F1
	cpx $2300.w		; EC 00 23
	rti		; 40

	ora [$F1.b]		; 07 F1
	pea $2400.w		; F4 00 24
	rti		; 40

	ora [$F1.b]		; 07 F1
	jsr ($2500.w,X)		; FC 00 25
	rti		; 40

	ora $00FCE9.l		; 0F E9 FC 00
	rol $40.b		; 26 40
	ora $F7F9.w,X		; 1D F9 F7
	ldx $0008.w,Y		; BE 08 00
	pha		; 48
	sbc $CEF7.w,Y		; F9 F7 CE
	php		; 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	ldx $0408.w		; AE 08 04
	pha		; 48
	cop $EE.b		; 02 EE
	ldx $0608.w		; AE 08 06
	pha		; 48
	sbc $9EFF.w,Y		; F9 FF 9E
	brk $08.b		; 00 08
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	stz $0900.w,X		; 9E 00 09
	rti		; 40

	ora #$DEEF.w		; 09 EF DE
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inc $00.b,X		; F6 00
	phd		; 0B
	rti		; 40

	bpl -24.b		; 10 E8
	plb		; AB
	brk $0C.b		; 00 0C
	rti		; 40

	php		; 08
	beq -26.b		; F0 E6
	brk $0D.b		; 00 0D
	rti		; 40

	ora #$BEEF.w		; 09 EF BE
	brk $0E.b		; 00 0E
	rti		; 40

	ora #$C6EF.w		; 09 EF C6
	brk $0F.b		; 00 0F
	rti		; 40

	ora #$CEEF.w		; 09 EF CE
	brk $18.b		; 00 18
	rti		; 40

	ora #$D6EF.w		; 09 EF D6
	brk $19.b		; 00 19
	rti		; 40

	ora ($E6.b)		; 12 E6
	ldx $00.b		; A6 00
	inc A		; 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	inc $1B00.w		; EE 00 1B
	rti		; 40

	ora #$A1EF.w		; 09 EF A1
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $E2FF.w,Y		; F9 FF E2
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $9BEC.w		; 0C EC 9B
	brk $1E.b		; 00 1E
	rti		; 40

	ora $E3.b,X		; 15 E3
	stz $1F00.w,X		; 9E 00 1F
	rti		; 40

	sbc $03.b,X		; F5 03
	ldx $00.b		; A6 00
	jsr $FD40.w		; 20 40 FD
	xce		; FB
	ldx $00.b		; A6 00
	and ($40.b,X)		; 21 40
	ora $F3.b		; 05 F3
	ldx $00.b		; A6 00
	jsl $FBFD40.l		; 22 40 FD FB
	dec $2300.w,X		; DE 00 23
	rti		; 40

	inc $02.b,X		; F6 02
	sbc #$2400.w		; E9 00 24
	rti		; 40

	asl $F2.b		; 06 F2
	inc $00.b,X		; F6 00
	and $40.b		; 25 40
	asl $F2.b		; 06 F2
	inc $2600.w,X		; FE 00 26
	rti		; 40

	asl $FEEA.w		; 0E EA FE
	brk $27.b		; 00 27
	rti		; 40

	ora [$F1.b]		; 07 F1
	inc $2800.w		; EE 00 28
	rti		; 40

	jsr $F000.w		; 20 00 F0
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	sbc $CAF3.w,X		; FD F3 CA
	php		; 08
	cop $48.b		; 02 48
	sbc $08AAF1.l,X		; FF F1 AA 08
	tsb $48.b		; 04 48
	bpl -24.b		; 10 E8
	lda ($00.b,X)		; A1 00
	asl $40.b		; 06 40
	clc		; 18
	cpx #$A7.b		; E0 A7
	brk $07.b		; 00 07
	rti		; 40

	sed		; F8
	brk $AF.b		; 00 AF
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $B7.b		; 00 B7
	brk $09.b		; 00 09
	rti		; 40

	sed		; F8
	brk $BF.b		; 00 BF
	brk $0A.b		; 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	lda $400B00.l,X		; BF 00 0B 40
	sed		; F8
	brk $C7.b		; 00 C7
	brk $0C.b		; 00 0C
	rti		; 40

	ora #$E9EF.w		; 09 EF E9
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	sbc $00E1.w		; ED E1 00
	asl $0440.w		; 0E 40 04
	pea $00A2.w		; F4 A2 00
	ora $EB0D40.l		; 0F 40 0D EB
	cmp $1600.w,Y		; D9 00 16
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $17.b		; 00 17
	rti		; 40

	ora $CAEB.w		; 0D EB CA
	brk $18.b		; 00 18
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $19.b		; 00 19
	rti		; 40

	sbc $DAFB.w,X		; FD FB DA
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F3.b		; 05 F3
	phx		; DA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $401C00.l		; CF 00 1C 40
	inc $E1FA.w,X		; FE FA E1
	brk $1D.b		; 00 1D
	rti		; 40

	inc $02.b,X		; F6 02
	beq   0.b		; F0 00
	asl $0F40.w,X		; 1E 40 0F
	sbc #$00A9.w		; E9 A9 00
	ora $E90F40.l,X		; 1F 40 0F E9
	lda ($00.b),Y		; B1 00
	jsr $0F40.w		; 20 40 0F
	sbc #$00B9.w		; E9 B9 00
	and ($40.b,X)		; 21 40
	sbc $00E9F9.l,X		; FF F9 E9 00
	jsl $F10740.l		; 22 40 07 F1
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	ora [$F1.b]		; 07 F1
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	and $40.b		; 25 40
	beq   8.b		; F0 08
	sbc ($00.b)		; F2 00
	rol $40.b		; 26 40
	ora [$E1.b],Y		; 17 E1
	lda $402700.l		; AF 00 27 40
	ora [$E1.b],Y		; 17 E1
	lda [$00.b],Y		; B7 00
	plp		; 28
	rti		; 40

	ora $F4FC.w,Y		; 19 FC F4
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	tsb $D1E4.w		; 0C E4 D1
	php		; 08
	cop $48.b		; 02 48
	jsr ($E1F4.w,X)		; FC F4 E1
	php		; 08
	tsb $48.b		; 04 48
	tsb $E1E4.w		; 0C E4 E1
	php		; 08
	asl $48.b		; 06 48
	jsr ($F1F4.w,X)		; FC F4 F1
	php		; 08
	php		; 08
	pha		; 48
	tsb $F1E4.w		; 0C E4 F1
	php		; 08
	asl A		; 0A
	pha		; 48
	cpx $F10C.w		; EC 0C F1
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $0D.b		; 00 0D
	rti		; 40

	trb $E5DC.w		; 1C DC E5
	brk $0E.b		; 00 0E
	rti		; 40

	trb $EDDC.w		; 1C DC ED
	brk $0F.b		; 00 0F
	rti		; 40

	pea $D604.w		; F4 04 D6
	brk $1C.b		; 00 1C
	rti		; 40

	pea $DE04.w		; F4 04 DE
	brk $1D.b		; 00 1D
	rti		; 40

	pea $E604.w		; F4 04 E6
	brk $1E.b		; 00 1E
	rti		; 40

	bit $D4.b		; 24 D4
	inc $1F00.w		; EE 00 1F
	rti		; 40

	trb $CFDC.w		; 1C DC CF
	brk $20.b		; 00 20
	rti		; 40

	bit $D4.b		; 24 D4
	cmp $402100.l		; CF 00 21 40
	trb $D8DC.w		; 1C DC D8
	brk $22.b		; 00 22
	rti		; 40

	pea $F804.w		; F4 04 F8
	brk $23.b		; 00 23
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp ($00.b,X)		; C1 00
	bit $40.b		; 24 40
	ora $E3.b,X		; 15 E3
	cmp #$2500.w		; C9 00 25
	rti		; 40

	ora $BDDB.w,X		; 1D DB BD
	brk $26.b		; 00 26
	rti		; 40

	and $D3.b		; 25 D3
	lda [$80.b],Y		; B7 80
	and ($C0.b,X)		; 21 C0
	and $D3.b		; 25 D3
	lda $402700.l,X		; BF 00 27 40
	ora $C7DB.w,X		; 1D DB C7
	brk $28.b		; 00 28
	rti		; 40

	and $D3.b		; 25 D3
	cmp [$00.b]		; C7 00
	and #$1D40.w		; 29 40 1D
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	ora ($F7.b,X)		; 01 F7
	lda ($00.b,X)		; A1 00
	tsb $40.b		; 04 40
	ora ($F7.b,X)		; 01 F7
	lda #$0500.w		; A9 00 05
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	ora ($F7.b,X)		; 01 F7
	lda $0700.w,Y		; B9 00 07
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b,X)		; C1 00
	php		; 08
	rti		; 40

	sbc $C1FF.w,Y		; F9 FF C1
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sta ($00.b),Y		; 91 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sta $0C00.w,Y		; 99 00 0C
	rti		; 40

	xce		; FB
	sbc $0099.w,X		; FD 99 00
	ora $0340.w		; 0D 40 03
	sbc $99.b,X		; F5 99
	brk $0E.b		; 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	sta ($00.b),Y		; 91 00
	ora $02F640.l		; 0F 40 F6 02
	cmp #$1400.w		; C9 00 14
	rti		; 40

	inc $C9FA.w,X		; FE FA C9
	brk $15.b		; 00 15
	rti		; 40

	beq   0.b		; F0 00
	cmp ($08.b),Y		; D1 08
	asl $48.b,X		; 16 48
	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	clc		; 18
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $1900.w,Y		; D9 00 19
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	inc A		; 1A
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	trb $0140.w		; 1C 40 01
	sbc [$E9.b],Y		; F7 E9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	asl $0340.w,X		; 1E 40 03
	sbc $F9.b,X		; F5 F9
	brk $1F.b		; 00 1F
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	jsr $EC40.w		; 20 40 EC
	tsb $00F9.w		; 0C F9 00
	and ($40.b,X)		; 21 40
	sbc $F10B.w		; ED 0B F1
	brk $22.b		; 00 22
	rti		; 40

	sbc $00E909.l		; EF 09 E9 00
	and $40.b,S		; 23 40
	ora [$F1.b],Y		; 17 F1
	sbc $00089A.l,X		; FF 9A 08 00
	pha		; 48
	sbc ($FE.b)		; F2 FE
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	inc $AA02.w		; EE 02 AA
	php		; 08
	tsb $48.b		; 04 48
	inc $AAF2.w,X		; FE F2 AA
	php		; 08
	asl $48.b		; 06 48
	cop $F6.b		; 02 F6
	tsx		; BA
	brk $08.b		; 00 08
	rti		; 40

	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	ora #$F640.w		; 09 40 F6
	cop $CA.b		; 02 CA
	brk $0A.b		; 00 0A
	rti		; 40

	inc $CAFA.w,X		; FE FA CA
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	tsb $0140.w		; 0C 40 01
	sbc [$9A.b],Y		; F7 9A
	brk $0D.b		; 00 0D
	rti		; 40

	beq   0.b		; F0 00
	cmp ($08.b),Y		; D1 08
	clc		; 18
	pha		; 48
	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	trb $F940.w		; 1C 40 F9
	sbc $1D00E1.l,X		; FF E1 00 1D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	asl $0140.w,X		; 1E 40 01
	sbc [$E9.b],Y		; F7 E9
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	jsr $0340.w		; 20 40 03
	sbc $F9.b,X		; F5 F9
	brk $21.b		; 00 21
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	jsl $0CEC40.l		; 22 40 EC 0C
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	sbc $F10B.w		; ED 0B F1
	brk $24.b		; 00 24
	rti		; 40

	sbc $00E909.l		; EF 09 E9 00
	and $40.b		; 25 40
	ora $D9F8F8.l		; 0F F8 F8 D9
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	lda #$0208.w		; A9 08 02
	pha		; 48
	brk $F0.b		; 00 F0
	lda #$0408.w		; A9 08 04
	pha		; 48
	beq   0.b		; F0 00
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	brk $F0.b		; 00 F0
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	sbc $FB.b,X		; F5 FB
	cmp #$0A08.w		; C9 08 0A
	pha		; 48
	sbc $08E901.l		; EF 01 E9 08
	tsb $0348.w		; 0C 48 03
	sbc $F1.b,X		; F5 F1
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	sbc $C90B.w		; ED 0B C9
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda ($00.b,X)		; A1 00
	and ($40.b,X)		; 21 40
	sbc $00A1F9.l,X		; FF F9 A1 00
	jsl $08F040.l		; 22 40 F0 08
	sbc ($C0.b,X)		; E1 C0
	ora $1E80.w,X		; 1D 80 1E
	sbc $9903.w		; ED 03 99
	php		; 08
	brk $48.b		; 00 48
	inc $A902.w		; EE 02 A9
	php		; 08
	cop $48.b		; 02 48
	sbc $08B901.l		; EF 01 B9 08
	tsb $48.b		; 04 48
	sbc $99FB.w,X		; FD FB 99
	brk $06.b		; 00 06
	rti		; 40

	sbc $A1FB.w,X		; FD FB A1
	brk $07.b		; 00 07
	rti		; 40

	asl $F2.b		; 06 F2
	lda #$0800.w		; A9 00 08
	rti		; 40

	inc $02.b,X		; F6 02
	cmp #$0900.w		; C9 00 09
	rti		; 40

	inc $C9FA.w,X		; FE FA C9
	brk $0A.b		; 00 0A
	rti		; 40

	phd		; 0B
	sbc $00A1.w		; ED A1 00
	phd		; 0B
	rti		; 40

	inc $A9FA.w,X		; FE FA A9
	brk $0C.b		; 00 0C
	rti		; 40

	inc $B1FA.w,X		; FE FA B1
	brk $0D.b		; 00 0D
	rti		; 40

	asl $A6EA.w		; 0E EA A6
	brk $0E.b		; 00 0E
	rti		; 40

	dec $A01A.w,X		; DE 1A A0
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ldy $00.b		; A4 00
	asl $40.b,X		; 16 40
	sbc $00B9F9.l,X		; FF F9 B9 00
	ora [$40.b],Y		; 17 40
	sbc $00C1F9.l,X		; FF F9 C1 00
	clc		; 18
	rti		; 40

	sbc [$11.b]		; E7 11
	lda [$00.b]		; A7 00
	ora $F040.w,Y		; 19 40 F0
	brk $D1.b		; 00 D1
	php		; 08
	inc A		; 1A
	pha		; 48
	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	trb $0040.w		; 1C 40 00
	sed		; F8
	cmp $1D00.w,Y		; D9 00 1D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	asl $F940.w,X		; 1E 40 F9
	sbc $1F00E1.l,X		; FF E1 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	jsr $0140.w		; 20 40 01
	sbc [$E9.b],Y		; F7 E9
	brk $21.b		; 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	bit $40.b		; 24 40
	cpx $F90C.w		; EC 0C F9
	brk $25.b		; 00 25
	rti		; 40

	sbc $F10B.w		; ED 0B F1
	brk $26.b		; 00 26
	rti		; 40

	sbc $00E909.l		; EF 09 E9 00
	and [$40.b]		; 27 40
	clc		; 18
	ora $48A8E1.l		; 0F E1 A8 48
	brk $08.b		; 00 08
	inc $D0F2.w,X		; FE F2 D0
	pha		; 48
	cop $08.b		; 02 08
	ora ($DE.b)		; 12 DE
	txy		; 9B
	pha		; 48
	tsb $08.b		; 04 08
	asl A		; 0A
	inc $B8.b		; E6 B8
	pha		; 48
	asl $08.b		; 06 08
	sbc $40ACF9.l,X		; FF F9 AC 40
	php		; 08
	brk $07.b		; 00 07
	sbc ($A8.b),Y		; F1 A8
	rti		; 40

	ora #$0700.w		; 09 00 07
	sbc ($B0.b),Y		; F1 B0
	rti		; 40

	asl A		; 0A
	brk $0E.b		; 00 0E
	nop		; EA
	bne  64.b		; D0 40
	phd		; 0B
	brk $0F.b		; 00 0F
	sbc #$40C8.w		; E9 C8 40
	tsb $0600.w		; 0C 00 06
	sbc ($E0.b)		; F2 E0
	rti		; 40

	ora $FE00.w		; 0D 00 FE
	plx		; FA
	cpx #$40.b		; E0 40
	asl $F400.w		; 0E 00 F4
	tsb $A6.b		; 04 A6
	rti		; 40

	ora $FCFC00.l		; 0F 00 FC FC
	tay		; A8
	rti		; 40

	clc		; 18
	brk $0B.b		; 00 0B
	sbc $40EE.w		; ED EE 40
	ora $0300.w,Y		; 19 00 03
	sbc $E8.b,X		; F5 E8
	rti		; 40

	inc A		; 1A
	brk $03.b		; 00 03
	sbc $F0.b,X		; F5 F0
	rti		; 40

	tas		; 1B
	brk $03.b		; 00 03
	sbc $F8.b,X		; F5 F8
	rti		; 40

	trb $FB00.w		; 1C 00 FB
	sbc $40F8.w,X		; FD F8 40
	ora $0700.w,X		; 1D 00 07
	sbc ($C8.b),Y		; F1 C8
	rti		; 40

	asl $0A00.w,X		; 1E 00 0A
	inc $4098.w		; EE 98 40
	ora $EE0A00.l,X		; 1F 00 0A EE
	ldy #$40.b		; A0 40
	jsr $0200.w		; 20 00 02
	inc $A0.b,X		; F6 A0
	rti		; 40

	and ($00.b,X)		; 21 00
	cop $F6.b		; 02 F6
	cpy #$40.b		; C0 40
	jsl $F9FF00.l		; 22 00 FF F9
	iny		; C8
	rti		; 40

	and $00.b,S		; 23 00
	asl $F3.b,X		; 16 F3
	sbc $08B1.w,X		; FD B1 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cmp #$0208.w		; C9 08 02
	pha		; 48
	inc $FA.b,X		; F6 FA
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	sed		; F8
	brk $F9.b		; 00 F9
	brk $08.b		; 00 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	ora #$0340.w		; 09 40 03
	sbc $B9.b,X		; F5 B9
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	xce		; FB
	sbc $00C1.w,X		; FD C1 00
	tsb $0340.w		; 0C 40 03
	sbc $C1.b,X		; F5 C1
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	sbc $00BC.w		; ED BC 00
	asl $EC40.w		; 0E 40 EC
	tsb $00F2.w		; 0C F2 00
	ora $03F540.l		; 0F 40 F5 03
	sbc #$1800.w		; E9 00 18
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $19.b		; 00 19
	rti		; 40

	sbc $EA0B.w		; ED 0B EA
	brk $1A.b		; 00 1A
	rti		; 40

	inc $C90A.w		; EE 0A C9
	brk $1B.b		; 00 1B
	rti		; 40

	sed		; F8
	brk $01.b		; 00 01
	brk $1C.b		; 00 1C
	rti		; 40

	bpl -24.b		; 10 E8
	lda [$00.b],Y		; B7 00
	ora $EE40.w,X		; 1D 40 EE
	asl A		; 0A
	sep #$00		; E2 00
	asl $F940.w,X		; 1E 40 F9
	sbc $1F00F1.l,X		; FF F1 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b,X)		; A1 00
	jsr $0740.w		; 20 40 07
	sbc ($A9.b),Y		; F1 A9
	brk $21.b		; 00 21
	rti		; 40

	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	dec $08.b		; C6 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $D6.b,X		; F5 D6
	php		; 08
	tsb $48.b		; 04 48
	sbc $0896F1.l,X		; FF F1 96 08
	asl $48.b		; 06 48
	sbc $08A6F1.l,X		; FF F1 A6 08
	php		; 08
	pha		; 48
	sbc $089E01.l		; EF 01 9E 08
	asl A		; 0A
	pha		; 48
	beq   8.b		; F0 08
	dec $00.b		; C6 00
	tsb $EB40.w		; 0C 40 EB
	ora $00D6.w		; 0D D6 00
	ora $F340.w		; 0D 40 F3
	ora $D6.b		; 05 D6
	brk $0E.b		; 00 0E
	rti		; 40

	xba		; EB
	ora $00DE.w		; 0D DE 00
	ora $00F840.l		; 0F 40 F8 00
	inc $00.b		; E6 00
	trb $F440.w		; 1C 40 F4
	tsb $FE.b		; 04 FE
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	inc $00.b,X		; F6 00
	asl $F740.w,X		; 1E 40 F7
	ora ($EE.b,X)		; 01 EE
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	inc $00.b		; E6 00
	jsr $F040.w		; 20 40 F0
	php		; 08
	ldx $00.b,Y		; B6 00
	and ($40.b,X)		; 21 40
	beq   8.b		; F0 08
	ldx $2200.w,Y		; BE 00 22
	rti		; 40

	sbc $00AE09.l		; EF 09 AE 00
	and $40.b,S		; 23 40
	sbc [$01.b],Y		; F7 01
	ldx $2400.w		; AE 00 24
	rti		; 40

	ora $F1.b,X		; 15 F1
	sbc $0008BB.l,X		; FF BB 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	sbc $089B01.l		; EF 01 9B 08
	tsb $48.b		; 04 48
	sbc $08AB01.l		; EF 01 AB 08
	asl $48.b		; 06 48
	sbc $CBFF.w,Y		; F9 FF CB
	brk $08.b		; 00 08
	rti		; 40

	sbc $D3FF.w,Y		; F9 FF D3
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,S),Y		; D3 00
	asl A		; 0A
	rti		; 40

	ora #$D3EF.w		; 09 EF D3
	brk $0B.b		; 00 0B
	rti		; 40

	sbc #$8E0F.w		; E9 0F 8E
	brk $0C.b		; 00 0C
	rti		; 40

	sbc #$960F.w		; E9 0F 96
	brk $0D.b		; 00 0D
	rti		; 40

	plx		; FA
	inc $008B.w,X		; FE 8B 00
	asl $F240.w		; 0E 40 F2
	asl $93.b		; 06 93
	brk $0F.b		; 00 0F
	rti		; 40

	plx		; FA
	inc $0093.w,X		; FE 93 00
	clc		; 18
	rti		; 40

	xba		; EB
	ora $00CF.w		; 0D CF 00
	ora $0140.w,Y		; 19 40 01
	sbc [$BB.b],Y		; F7 BB
	brk $1A.b		; 00 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	wai		; CB
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $009BF9.l,X		; FF F9 9B 00
	trb $FF40.w		; 1C 40 FF
	sbc $00A3.w,Y		; F9 A3 00
	ora $FF40.w,X		; 1D 40 FF
	sbc $00AB.w,Y		; F9 AB 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00B3.w,Y		; F9 B3 00
	ora $11E740.l,X		; 1F 40 E7 11
	stz $2000.w,X		; 9E 00 20
	rti		; 40

	ora $EE02.w,Y		; 19 02 EE
	tyx		; BB
	php		; 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	wai		; CB
	php		; 08
	cop $48.b		; 02 48
	inc $9BF2.w,X		; FE F2 9B
	php		; 08
	tsb $48.b		; 04 48
	inc $ABF2.w,X		; FE F2 AB
	php		; 08
	asl $48.b		; 06 48
	ora ($E6.b)		; 12 E6
	tyx		; BB
	brk $08.b		; 00 08
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $00.b,S		; C3 00
	ora #$FB40.w		; 09 40 FB
	sbc $00D3.w,X		; FD D3 00
	asl A		; 0A
	rti		; 40

	inc A		; 1A
	dec $00BB.w,X		; DE BB 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	wai		; CB
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b,S),Y		; D3 00
	ora $0B40.w		; 0D 40 0B
	sbc $00DB.w		; ED DB 00
	asl $1340.w		; 0E 40 13
	sbc $DB.b		; E5 DB
	brk $0F.b		; 00 0F
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $00.b,S		; A3 00
	clc		; 18
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b,S),Y		; B3 00
	ora $0A40.w,Y		; 19 40 0A
	inc $00E3.w		; EE E3 00
	inc A		; 1A
	rti		; 40

	ora #$EBEF.w		; 09 EF EB
	brk $1B.b		; 00 1B
	rti		; 40

	asl $9BEA.w		; 0E EA 9B
	brk $1C.b		; 00 1C
	rti		; 40

	asl $A3EA.w		; 0E EA A3
	brk $1D.b		; 00 1D
	rti		; 40

	asl $ABEA.w		; 0E EA AB
	brk $1E.b		; 00 1E
	rti		; 40

	asl $B3EA.w		; 0E EA B3
	brk $1F.b		; 00 1F
	rti		; 40

	asl $B5DA.w,X		; 1E DA B5
	brk $20.b		; 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,S),Y		; F3 00
	and ($40.b,X)		; 21 40
	ora [$F1.b]		; 07 F1
	xce		; FB
	brk $22.b		; 00 22
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	and $40.b,S		; 23 40
	sbc [$01.b],Y		; F7 01
	dec $00.b,X		; D6 00
	bit $40.b		; 24 40
	ora ($04.b),Y		; 11 04
	cpx $08C1.w		; EC C1 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	ora [$E9.b]		; 07 E9
	lda #$0408.w		; A9 08 04
	pha		; 48
	ora [$D9.b],Y		; 17 D9
	txs		; 9A
	php		; 08
	asl $48.b		; 06 48
	ora [$D9.b],Y		; 17 D9
	tax		; AA
	php		; 08
	php		; 08
	pha		; 48
	ora [$E1.b],Y		; 17 E1
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	ora $00D9E9.l		; 0F E9 D9 00
	phd		; 0B
	rti		; 40

	ora $00E1E9.l		; 0F E9 E1 00
	tsb $0F40.w		; 0C 40 0F
	sbc #$00E9.w		; E9 E9 00
	ora $0F40.w		; 0D 40 0F
	sbc #$00F1.w		; E9 F1 00
	asl $0F40.w		; 0E 40 0F
	sbc #$00F9.w		; E9 F9 00
	ora $E41440.l		; 0F 40 14 E4
	cmp ($00.b,X)		; C1 00
	inc A		; 1A
	rti		; 40

	trb $E4.b		; 14 E4
	cmp #$1B00.w		; C9 00 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	ora $00B9E9.l		; 0F E9 B9 00
	ora $1740.w,X		; 1D 40 17
	sbc ($B9.b,X)		; E1 B9
	brk $1E.b		; 00 1E
	rti		; 40

	ora $00D1E9.l		; 0F E9 D1 00
	ora $001B40.l,X		; 1F 40 1B 00
	beq -103.b		; F0 99
	php		; 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	cop $EE.b		; 02 EE
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sbc $B1F3.w,X		; FD F3 B1
	php		; 08
	asl $48.b		; 06 48
	ora $B1E3.w		; 0D E3 B1
	php		; 08
	php		; 08
	pha		; 48
	cop $F6.b		; 02 F6
	lda #$0A00.w		; A9 00 0A
	rti		; 40

	asl A		; 0A
	inc $00A9.w		; EE A9 00
	phd		; 0B
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	inc A		; 1A
	dec $00A9.w,X		; DE A9 00
	ora $2240.w		; 0D 40 22
	dec $A9.b,X		; D6 A9
	brk $0E.b		; 00 0E
	rti		; 40

	rol A		; 2A
	dec $00A9.w		; CE A9 00
	ora $FEFA40.l		; 0F 40 FA FE
	cmp ($00.b,X)		; C1 00
	inc A		; 1A
	rti		; 40

	inc A		; 1A
	dec $00C1.w,X		; DE C1 00
	tas		; 1B
	rti		; 40

	jsr $A1D8.w		; 20 D8 A1
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b,X)		; C1 00
	ora $1240.w,X		; 1D 40 12
	inc $C9.b		; E6 C9
	brk $1E.b		; 00 1E
	rti		; 40

	phd		; 0B
	sbc $00F1.w		; ED F1 00
	ora $ED0B40.l,X		; 1F 40 0B ED
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $21.b		; 00 21
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $22.b		; 00 22
	rti		; 40

	tsb $E1EC.w		; 0C EC E1
	brk $23.b		; 00 23
	rti		; 40

	tsb $E9EC.w		; 0C EC E9
	brk $24.b		; 00 24
	rti		; 40

	and $D3.b		; 25 D3
	lda ($00.b),Y		; B1 00
	and $40.b		; 25 40
	rol A		; 2A
	dec $0099.w		; CE 99 00
	rol $40.b		; 26 40
	rol A		; 2A
	dec $00A1.w		; CE A1 00
	and [$40.b]		; 27 40
	ora $B1DB.w,X		; 1D DB B1
	brk $28.b		; 00 28
	rti		; 40

	ora $B9DB.w,X		; 1D DB B9
	brk $29.b		; 00 29
	rti		; 40

	bpl  -8.b		; 10 F8
	sed		; F8
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	php		; 08
	inx		; E8
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	ora ($DD.b,S),Y		; 13 DD
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	php		; 08
	pha		; 48
	ora $08A9E1.l		; 0F E1 A9 08
	asl A		; 0A
	pha		; 48
	phd		; 0B
	sbc $00E9.w		; ED E9 00
	tsb $0B40.w		; 0C 40 0B
	sbc $00F1.w		; ED F1 00
	ora $0B40.w		; 0D 40 0B
	sbc $00F9.w		; ED F9 00
	asl $1840.w		; 0E 40 18
	cpx #$B9.b		; E0 B9
	brk $0F.b		; 00 0F
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $1C.b		; 00 1C
	rti		; 40

	phd		; 0B
	sbc $00D1.w		; ED D1 00
	ora $1340.w,X		; 1D 40 13
	sbc $D1.b		; E5 D1
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $1F.b		; 00 1F
	rti		; 40

	bpl -24.b		; 10 E8
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	phd		; 0B
	sbc $00E1.w		; ED E1 00
	and ($40.b,X)		; 21 40
	ora [$EE.b],Y		; 17 EE
	cop $A9.b		; 02 A9
	php		; 08
	brk $48.b		; 00 48
	asl $A9E2.w		; 0E E2 A9
	php		; 08
	cop $48.b		; 02 48
	asl $B9E2.w		; 0E E2 B9
	php		; 08
	tsb $48.b		; 04 48
	inc $B1F2.w,X		; FE F2 B1
	php		; 08
	asl $48.b		; 06 48
	ora [$E9.b]		; 07 E9
	sta $0808.w,Y		; 99 08 08
	pha		; 48
	ora $D9EB.w		; 0D EB D9
	brk $0A.b		; 00 0A
	rti		; 40

	ora $E1EB.w		; 0D EB E1
	brk $0B.b		; 00 0B
	rti		; 40

	inx		; E8
	bpl -103.b		; 10 99
	brk $0C.b		; 00 0C
	rti		; 40

	bpl -24.b		; 10 E8
	sbc #$0D00.w		; E9 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b),Y		; F1 00
	asl $ED40.w		; 0E 40 ED
	phd		; 0B
	lda ($00.b,X)		; A1 00
	ora $F20640.l		; 0F 40 06 F2
	lda #$1A00.w		; A9 00 1A
	rti		; 40

	inc $02.b,X		; F6 02
	lda $1B00.w,Y		; B9 00 1B
	rti		; 40

	inc $C1FA.w,X		; FE FA C1
	brk $1C.b		; 00 1C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	ora $0640.w,X		; 1D 40 06
	sbc ($C9.b)		; F2 C9
	brk $1E.b		; 00 1E
	rti		; 40

	asl $C9EA.w		; 0E EA C9
	brk $1F.b		; 00 1F
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp #$2000.w		; C9 00 20
	rti		; 40

	sbc $00A1F9.l,X		; FF F9 A1 00
	and ($40.b,X)		; 21 40
	ora $00F9E9.l		; 0F E9 F9 00
	jsl $EB0D40.l		; 22 40 0D EB
	cmp ($00.b),Y		; D1 00
	and $40.b,S		; 23 40
	ora [$E1.b],Y		; 17 E1
	sta $2400.w,Y		; 99 00 24
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	lda ($00.b,X)		; A1 00
	and $40.b		; 25 40
	ora $08.b,X		; 15 08
	inx		; E8
	lda #$0008.w		; A9 08 00
	pha		; 48
	tsb $EC.b		; 04 EC
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	trb $DC.b		; 14 DC
	sta $0408.w,Y		; 99 08 04
	pha		; 48
	ora $EB.b		; 05 EB
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	bpl -24.b		; 10 E8
	sbc #$0800.w		; E9 00 08
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b),Y		; F1 00
	ora #$0840.w		; 09 40 08
	beq -111.b		; F0 91
	brk $0A.b		; 00 0A
	rti		; 40

	clc		; 18
	cpx #$A9.b		; E0 A9
	brk $0B.b		; 00 0B
	rti		; 40

	clc		; 18
	cpx #$B1.b		; E0 B1
	brk $0C.b		; 00 0C
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	lda $0E00.w,Y		; B9 00 0E
	rti		; 40

	clc		; 18
	cpx #$B9.b		; E0 B9
	brk $0F.b		; 00 0F
	rti		; 40

	asl A		; 0A
	inc $0089.w		; EE 89 00
	clc		; 18
	rti		; 40

	bpl -24.b		; 10 E8
	sta ($00.b),Y		; 91 00
	ora $2040.w,Y		; 19 40 20
	cld		; D8
	lda #$1A00.w		; A9 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp ($00.b,X)		; C1 00
	trb $1540.w		; 1C 40 15
	sbc $C9.b,S		; E3 C9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00D1E9.l		; 0F E9 D1 00
	asl $0F40.w,X		; 1E 40 0F
	sbc #$00D9.w		; E9 D9 00
	ora $E90F40.l,X		; 1F 40 0F E9
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	asl $F8.b,X		; 16 F8
	sed		; F8
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	php		; 08
	inx		; E8
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	tsb $EC.b		; 04 EC
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	asl $89E2.w		; 0E E2 89
	php		; 08
	php		; 08
	pha		; 48
	php		; 08
	beq -87.b		; F0 A9
	brk $0A.b		; 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	lda #$0B00.w		; A9 00 0B
	rti		; 40

	clc		; 18
	cpx #$A9.b		; E0 A9
	brk $0C.b		; 00 0C
	rti		; 40

	phd		; 0B
	sbc $00F1.w		; ED F1 00
	ora $0B40.w		; 0D 40 0B
	sbc $00F9.w		; ED F9 00
	asl $0C40.w		; 0E 40 0C
	cpx $00D1.w		; EC D1 00
	ora $EC0C40.l		; 0F 40 0C EC
	cmp $1A00.w,Y		; D9 00 1A
	rti		; 40

	tsb $E1EC.w		; 0C EC E1
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $E9EC.w		; 0C EC E9
	brk $1C.b		; 00 1C
	rti		; 40

	clc		; 18
	cpx #$99.b		; E0 99
	brk $1D.b		; 00 1D
	rti		; 40

	clc		; 18
	cpx #$A1.b		; E0 A1
	brk $1E.b		; 00 1E
	rti		; 40

	trb $E4.b		; 14 E4
	lda ($00.b),Y		; B1 00
	ora $E41440.l,X		; 1F 40 14 E4
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b,X)		; C1 00
	and ($40.b,X)		; 21 40
	trb $E4.b		; 14 E4
	cmp #$2200.w		; C9 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	sta ($00.b),Y		; 91 00
	and $40.b,S		; 23 40
	brk $F8.b		; 00 F8
	lda #$2400.w		; A9 00 24
	rti		; 40

	ora ($0C.b)		; 12 0C
	cpx $C9.b		; E4 C9
	php		; 08
	brk $48.b		; 00 48
	tsb $B9E4.w		; 0C E4 B9
	php		; 08
	cop $48.b		; 02 48
	sbc $99F3.w,X		; FD F3 99
	php		; 08
	tsb $48.b		; 04 48
	ora $99E3.w		; 0D E3 99
	php		; 08
	asl $48.b		; 06 48
	sbc $A9F3.w,X		; FD F3 A9
	php		; 08
	php		; 08
	pha		; 48
	ora $A9E3.w		; 0D E3 A9
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $F1EC.w		; 0C EC F1
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	bit #$0E00.w		; 89 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	sta ($00.b),Y		; 91 00
	ora $F40440.l		; 0F 40 04 F4
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	ora $0440.w,X		; 1D 40 04
	pea $00C9.w		; F4 C9 00
	asl $F540.w,X		; 1E 40 F5
	ora $A1.b,S		; 03 A1
	brk $1F.b		; 00 1F
	rti		; 40

	clc		; 18
	cpx #$91.b		; E0 91
	brk $20.b		; 00 20
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $21.b		; 00 21
	rti		; 40

	tsb $E1EC.w		; 0C EC E1
	brk $22.b		; 00 22
	rti		; 40

	tsb $E9EC.w		; 0C EC E9
	brk $23.b		; 00 23
	rti		; 40

	ora $FFF1.w,X		; 1D F1 FF
	lda #$0008.w		; A9 08 00
	pha		; 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	plx		; FA
	inc $D9.b,X		; F6 D9
	php		; 08
	tsb $48.b		; 04 48
	pea $99FC.w		; F4 FC 99
	php		; 08
	asl $48.b		; 06 48
	cpx $0C.b		; E4 0C
	txs		; 9A
	php		; 08
	php		; 08
	pha		; 48
	sbc $B9FF.w,Y		; F9 FF B9
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $0B00.w,Y		; B9 00 0B
	rti		; 40

	asl A		; 0A
	inc $00E9.w		; EE E9 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00B9.l		; EF B9 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda #$0E00.w		; A9 00 0E
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora $F60240.l		; 0F 40 02 F6
	cmp #$1A00.w		; C9 00 1A
	rti		; 40

	plx		; FA
	inc $00D1.w,X		; FE D1 00
	tas		; 1B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	trb $0A40.w		; 1C 40 0A
	inc $00D1.w		; EE D1 00
	ora $0A40.w,X		; 1D 40 0A
	inc $00D9.w		; EE D9 00
	asl $0A40.w,X		; 1E 40 0A
	inc $00E1.w		; EE E1 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	sbc ($00.b),Y		; F1 00
	jsr $FB40.w		; 20 40 FB
	sbc $00F9.w,X		; FD F9 00
	and ($40.b,X)		; 21 40
	phd		; 0B
	sbc $00F9.w		; ED F9 00
	jsl $E51340.l		; 22 40 13 E5
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	phd		; 0B
	sbc $009F.w		; ED 9F 00
	bit $40.b		; 24 40
	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F1EC.w		; 0C EC F1
	brk $26.b		; 00 26
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b),Y		; B1 00
	and [$40.b]		; 27 40
	sbc ($07.b),Y		; F1 07
	lda $2800.w,Y		; B9 00 28
	rti		; 40

	sbc $13.b		; E5 13
	tax		; AA
	brk $29.b		; 00 29
	rti		; 40

	inc $920A.w		; EE 0A 92
	brk $2A.b		; 00 2A
	rti		; 40

	php		; 08
	beq -89.b		; F0 A7
	brk $2B.b		; 00 2B
	rti		; 40

	trb $F8.b		; 14 F8
	sed		; F8
	lda #$0008.w		; A9 08 00
	pha		; 48
	bpl -32.b		; 10 E0
	ldy $08.b		; A4 08
	cop $48.b		; 02 48
	sbc $C1F7.w,Y		; F9 F7 C1
	php		; 08
	tsb $48.b		; 04 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	asl $48.b		; 06 48
	sbc $E1F3.w,X		; FD F3 E1
	php		; 08
	php		; 08
	pha		; 48
	sbc $F1F3.w,X		; FD F3 F1
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	lda ($00.b,X)		; A1 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00A1.l		; EF A1 00 0D
	rti		; 40

	php		; 08
	beq -87.b		; F0 A9
	brk $0E.b		; 00 0E
	rti		; 40

	ora #$C1EF.w		; 09 EF C1
	brk $0F.b		; 00 0F
	rti		; 40

	ora #$C9EF.w		; 09 EF C9
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldx $00.b		; A6 00
	ora $0840.w,X		; 1D 40 08
	beq -79.b		; F0 B1
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $99FB.w,X		; FD FB 99
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F3.b		; 05 F3
	sta $2000.w,Y		; 99 00 20
	rti		; 40

	jsr $A9D8.w		; 20 D8 A9
	brk $21.b		; 00 21
	rti		; 40

	sbc $A1FF.w,Y		; F9 FF A1
	brk $22.b		; 00 22
	rti		; 40

	ora $9DEB.w		; 0D EB 9D
	brk $23.b		; 00 23
	rti		; 40

	inc $B9FA.w,X		; FE FA B9
	brk $24.b		; 00 24
	rti		; 40

	asl $F2.b		; 06 F2
	lda $2500.w,Y		; B9 00 25
	rti		; 40

	ora $FFF1.w,X		; 1D F1 FF
	lda #$0008.w		; A9 08 00
	pha		; 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	plx		; FA
	inc $D9.b,X		; F6 D9
	php		; 08
	tsb $48.b		; 04 48
	pea $99FC.w		; F4 FC 99
	php		; 08
	asl $48.b		; 06 48
	cpx $0C.b		; E4 0C
	txs		; 9A
	php		; 08
	php		; 08
	pha		; 48
	sbc $B9FF.w,Y		; F9 FF B9
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $0B00.w,Y		; B9 00 0B
	rti		; 40

	asl A		; 0A
	inc $00E9.w		; EE E9 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00B9.l		; EF B9 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda #$0E00.w		; A9 00 0E
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora $F60240.l		; 0F 40 02 F6
	cmp #$1A00.w		; C9 00 1A
	rti		; 40

	plx		; FA
	inc $00D1.w,X		; FE D1 00
	tas		; 1B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	trb $0A40.w		; 1C 40 0A
	inc $00D1.w		; EE D1 00
	ora $0A40.w,X		; 1D 40 0A
	inc $00D9.w		; EE D9 00
	asl $0A40.w,X		; 1E 40 0A
	inc $00E1.w		; EE E1 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	sbc ($00.b),Y		; F1 00
	jsr $FB40.w		; 20 40 FB
	sbc $00F9.w,X		; FD F9 00
	and ($40.b,X)		; 21 40
	phd		; 0B
	sbc $00F9.w		; ED F9 00
	jsl $E51340.l		; 22 40 13 E5
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	phd		; 0B
	sbc $009F.w		; ED 9F 00
	bit $40.b		; 24 40
	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F1EC.w		; 0C EC F1
	brk $26.b		; 00 26
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b),Y		; B1 00
	and [$40.b]		; 27 40
	sbc ($07.b),Y		; F1 07
	lda $2800.w,Y		; B9 00 28
	rti		; 40

	sbc $13.b		; E5 13
	tax		; AA
	brk $29.b		; 00 29
	rti		; 40

	inc $920A.w		; EE 0A 92
	brk $2A.b		; 00 2A
	rti		; 40

	php		; 08
	beq -89.b		; F0 A7
	brk $2B.b		; 00 2B
	rti		; 40

	ora [$EA.b],Y		; 17 EA
	asl $D9.b		; 06 D9
	dey		; 88
	brk $C8.b		; 00 C8
	plx		; FA
	inc $D9.b,X		; F6 D9
	dey		; 88
	cop $C8.b		; 02 C8
	inc $F102.w		; EE 02 F1
	dey		; 88
	tsb $C8.b		; 04 C8
	inc $C902.w		; EE 02 C9
	dey		; 88
	asl $C8.b		; 06 C8
	phd		; 0B
	sbc $809E.w		; ED 9E 80
	php		; 08
	cpy #$EC.b		; C0 EC
	tsb $80B9.w		; 0C B9 80
	ora #$ECC0.w		; 09 C0 EC
	tsb $80A9.w		; 0C A9 80
	asl A		; 0A
	cpy #$EC.b		; C0 EC
	tsb $80A1.w		; 0C A1 80
	phd		; 0B
	cpy #$05.b		; C0 05
	sbc ($AB.b,S),Y		; F3 AB
	bra  12.b		; 80 0C
	cpy #$ED.b		; C0 ED
	phd		; 0B
	lda ($80.b),Y		; B1 80
	ora $FEC0.w		; 0D C0 FE
	plx		; FA
	sbc #$0E80.w		; E9 80 0E
	cpy #$FE.b		; C0 FE
	plx		; FA
	lda $0F80.w,Y		; B9 80 0F
	cpy #$06.b		; C0 06
	sbc ($B9.b)		; F2 B9
	bra  24.b		; 80 18
	cpy #$E9.b		; C0 E9
	ora $19809A.l		; 0F 9A 80 19
	cpy #$02.b		; C0 02
	inc $B1.b,X		; F6 B1
	bra  26.b		; 80 1A
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	sbc #$1B80.w		; E9 80 1B
	cpy #$F6.b		; C0 F6
	cop $E9.b		; 02 E9
	bra  28.b		; 80 1C
	cpy #$FE.b		; C0 FE
	plx		; FA
	cmp ($80.b),Y		; D1 80
	ora $FEC0.w,X		; 1D C0 FE
	plx		; FA
	cmp #$1E80.w		; C9 80 1E
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	cmp ($80.b,X)		; C1 80
	ora $02F6C0.l,X		; 1F C0 F6 02
	cmp ($80.b,X)		; C1 80
	jsr $FEC0.w		; 20 C0 FE
	plx		; FA
	cmp ($80.b,X)		; C1 80
	and ($C0.b,X)		; 21 C0
	ora [$F1.b]		; 07 F1
	lda $80.b,S		; A3 80
	jsl $EF18C0.l		; 22 C0 18 EF
	ora ($A1.b,X)		; 01 A1
	php		; 08
	brk $48.b		; 00 48
	sbc $08B101.l		; EF 01 B1 08
	cop $48.b		; 02 48
	sbc $08C101.l		; EF 01 C1 08
	tsb $48.b		; 04 48
	sbc $08B1F1.l,X		; FF F1 B1 08
	asl $48.b		; 06 48
	sbc $03.b,X		; F5 03
	sta $0800.w,Y		; 99 00 08
	rti		; 40

	sbc $00A1F9.l,X		; FF F9 A1 00
	ora #$FF40.w		; 09 40 FF
	sbc $00A9.w,Y		; F9 A9 00
	asl A		; 0A
	rti		; 40

	sbc $00C1F9.l,X		; FF F9 C1 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00C9.w,Y		; F9 C9 00
	ora $F040.w		; 0D 40 F0
	php		; 08
	cmp ($00.b),Y		; D1 00
	clc		; 18
	rti		; 40

	sed		; F8
	brk $D1.b		; 00 D1
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	beq   8.b		; F0 08
	sbc #$1C00.w		; E9 00 1C
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $1E00.w,Y		; D9 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	sbc [$00.b]		; E7 00
	ora $0DEB40.l,X		; 1F 40 EB 0D
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc INIDSP.w		; ED 00 21
	rti		; 40

	sbc $F10B.w		; ED 0B F1
	brk $22.b		; 00 22
	rti		; 40

	inc $D9FA.w,X		; FE FA D9
	brk $23.b		; 00 23
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	bit $40.b		; 24 40
	sbc $00E1F9.l,X		; FF F9 E1 00
	and $40.b		; 25 40
	trb $FFF1.w		; 1C F1 FF
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	lda #$0400.w		; A9 00 04
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda ($00.b),Y		; B1 00
	ora $40.b		; 05 40
	sbc $B1FF.w,Y		; F9 FF B1
	brk $06.b		; 00 06
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b),Y		; B1 00
	ora [$40.b]		; 07 40
	ora ($F7.b,X)		; 01 F7
	lda ($00.b,X)		; A1 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp #$0B00.w		; C9 00 0B
	rti		; 40

	plx		; FA
	inc $00C9.w,X		; FE C9 00
	tsb $0240.w		; 0C 40 02
	inc $C9.b,X		; F6 C9
	brk $0D.b		; 00 0D
	rti		; 40

	nop		; EA
	asl $00BC.w		; 0E BC 00
	asl $F440.w		; 0E 40 F4
	tsb $99.b		; 04 99
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b),Y		; D1 00
	trb $40.b		; 14 40
	sed		; F8
	brk $D1.b		; 00 D1
	brk $15.b		; 00 15
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	asl $40.b,X		; 16 40
	beq   8.b		; F0 08
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	beq   8.b		; F0 08
	sbc #$1800.w		; E9 00 18
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $19.b		; 00 19
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $1A00.w,Y		; D9 00 1A
	rti		; 40

	cop $F6.b		; 02 F6
	sbc [$00.b]		; E7 00
	tas		; 1B
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	trb $0440.w		; 1C 40 04
	pea $00ED.w		; F4 ED 00
	ora $ED40.w,X		; 1D 40 ED
	phd		; 0B
	sbc ($00.b),Y		; F1 00
	asl $FE40.w,X		; 1E 40 FE
	plx		; FA
	cmp $1F00.w,Y		; D9 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	jsr $FF40.w		; 20 40 FF
	sbc $00E1.w,Y		; F9 E1 00
	and ($40.b,X)		; 21 40
	ora $00F0.w,Y		; 19 F0 00
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	asl $40.b		; 06 40
	brk $F8.b		; 00 F8
	lda #$0700.w		; A9 00 07
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp #$0B00.w		; C9 00 0B
	rti		; 40

	sbc #$BD0F.w		; E9 0F BD
	brk $0C.b		; 00 0C
	rti		; 40

	pea $9904.w		; F4 04 99
	brk $0D.b		; 00 0D
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b),Y		; D1 00
	asl $40.b,X		; 16 40
	sed		; F8
	brk $D1.b		; 00 D1
	brk $17.b		; 00 17
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	clc		; 18
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b,X)		; E1 00
	ora $F040.w,Y		; 19 40 F0
	php		; 08
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	cop $F6.b		; 02 F6
	sbc [$00.b]		; E7 00
	ora $EB40.w,X		; 1D 40 EB
	ora $00F9.w		; 0D F9 00
	asl $0440.w,X		; 1E 40 04
	pea $00ED.w		; F4 ED 00
	ora $0BED40.l,X		; 1F 40 ED 0B
	sbc ($00.b),Y		; F1 00
	jsr $FE40.w		; 20 40 FE
	plx		; FA
	cmp $2100.w,Y		; D9 00 21
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	jsl $F9FF40.l		; 22 40 FF F9
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	trb $F8F8.w		; 1C F8 F8
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	php		; 08
	inx		; E8
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	clc		; 18
	cpx #$B9.b		; E0 B9
	brk $04.b		; 00 04
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	ora $40.b		; 05 40
	php		; 08
	beq -63.b		; F0 C1
	brk $06.b		; 00 06
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b,X)		; C1 00
	ora [$40.b]		; 07 40
	clc		; 18
	cpx #$C1.b		; E0 C1
	brk $08.b		; 00 08
	rti		; 40

	asl A		; 0A
	inc $0099.w		; EE 99 00
	ora #$0340.w		; 09 40 03
	sbc $A1.b,X		; F5 A1
	brk $0A.b		; 00 0A
	rti		; 40

	phd		; 0B
	sbc $00A1.w		; ED A1 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	lda $00.b		; A5 00
	tsb $FC40.w		; 0C 40 FC
	jsr ($00A9.w,X)		; FC A9 00
	ora $0440.w		; 0D 40 04
	pea $00A9.w		; F4 A9 00
	asl $0C40.w		; 0E 40 0C
	cpx $00A9.w		; EC A9 00
	ora $F00040.l		; 0F 40 00 F0
	cmp #$1408.w		; C9 08 14
	pha		; 48
	bpl -24.b		; 10 E8
	cmp #$1600.w		; C9 00 16
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	ora [$40.b],Y		; 17 40
	ora ($F7.b,X)		; 01 F7
	cmp $1800.w,Y		; D9 00 18
	rti		; 40

	ora #$E9EF.w		; 09 EF E9
	brk $19.b		; 00 19
	rti		; 40

	ora #$F1EF.w		; 09 EF F1
	brk $1A.b		; 00 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $1C.b		; 00 1C
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	ora $0A40.w,X		; 1D 40 0A
	inc $00E1.w		; EE E1 00
	asl $0A40.w,X		; 1E 40 0A
	inc $00F9.w		; EE F9 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	sbc ($00.b),Y		; F1 00
	jsr $FE40.w		; 20 40 FE
	plx		; FA
	sbc #$2100.w		; E9 00 21
	rti		; 40

	sbc $00E1F9.l,X		; FF F9 E1 00
	jsl $F01940.l		; 22 40 19 F0
	brk $C8.b		; 00 C8
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	iny		; C8
	php		; 08
	cop $48.b		; 02 48
	sbc $D8F7.w,Y		; F9 F7 D8
	php		; 08
	tsb $48.b		; 04 48
	nop		; EA
	asl $B0.b		; 06 B0
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $B0.b,X		; F6 B0
	php		; 08
	php		; 08
	pha		; 48
	sbc $A003.w		; ED 03 A0
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $A0F3.w,X		; FD F3 A0
	php		; 08
	tsb $EF48.w		; 0C 48 EF
	ora ($E8.b,X)		; 01 E8
	php		; 08
	asl $FF48.w		; 0E 48 FF
	sbc ($E8.b),Y		; F1 E8
	php		; 08
	jsr $0A48.w		; 20 48 0A
	inc $00B8.w		; EE B8 00
	jsl $0BED40.l		; 22 40 ED 0B
	cpy #$00.b		; C0 00
	and $40.b,S		; 23 40
	sbc $03.b,X		; F5 03
	cpy #$00.b		; C0 00
	bit $40.b		; 24 40
	sbc $C0FB.w,X		; FD FB C0
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	cpy #$00.b		; C0 00
	rol $40.b		; 26 40
	ora $C0EB.w		; 0D EB C0
	brk $27.b		; 00 27
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpy #$00.b		; C0 00
	plp		; 28
	rti		; 40

	sbc $03.b,X		; F5 03
	sed		; F8
	brk $29.b		; 00 29
	rti		; 40

	sbc $F8FB.w,X		; FD FB F8
	brk $2A.b		; 00 2A
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $2B.b		; 00 2B
	rti		; 40

	ora #$E0EF.w		; 09 EF E0
	brk $2C.b		; 00 2C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx #$00.b		; E0 00
	and $0D40.w		; 2D 40 0D
	xba		; EB
	ldy #$00.b		; A0 00
	rol $0D40.w		; 2E 40 0D
	xba		; EB
	tay		; A8
	brk $2F.b		; 00 2F
	rti		; 40

	ora #$D8EF.w		; 09 EF D8
	brk $32.b		; 00 32
	rti		; 40

	asl A		; 0A
	inc $00B0.w		; EE B0 00
	and ($40.b,S),Y		; 33 40
	asl $F1.b,X		; 16 F1
	sbc $0008A0.l,X		; FF A0 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldy #$08.b		; A0 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	iny		; C8
	php		; 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	iny		; C8
	php		; 08
	asl $48.b		; 06 48
	ora ($DD.b,S),Y		; 13 DD
	iny		; C8
	php		; 08
	php		; 08
	pha		; 48
	pea $D8FC.w		; F4 FC D8
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $EC.b		; 04 EC
	cld		; D8
	php		; 08
	tsb $EE48.w		; 0C 48 EE
	cop $B8.b		; 02 B8
	php		; 08
	asl $FE48.w		; 0E 48 FE
	sbc ($B8.b)		; F2 B8
	php		; 08
	jsr $1148.w		; 20 48 11
	sbc [$A0.b]		; E7 A0
	brk $22.b		; 00 22
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tay		; A8
	brk $23.b		; 00 23
	rti		; 40

	sbc ($07.b),Y		; F1 07
	bcs   0.b		; B0 00
	bit $40.b		; 24 40
	cpx $D80C.w		; EC 0C D8
	brk $25.b		; 00 25
	rti		; 40

	trb $E4.b		; 14 E4
	cld		; D8
	brk $26.b		; 00 26
	rti		; 40

	sbc $B0FF.w,Y		; F9 FF B0
	brk $27.b		; 00 27
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bcs   0.b		; B0 00
	plp		; 28
	rti		; 40

	asl $E2.b,X		; 16 E2
	tyx		; BB
	brk $29.b		; 00 29
	rti		; 40

	asl $BBDA.w,X		; 1E DA BB
	brk $2A.b		; 00 2A
	rti		; 40

	ora #$B0EF.w		; 09 EF B0
	brk $2B.b		; 00 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	bcs   0.b		; B0 00
	bit $0E40.w		; 2C 40 0E
	nop		; EA
	clv		; B8
	brk $2D.b		; 00 2D
	rti		; 40

	asl $C0EA.w		; 0E EA C0
	brk $2E.b		; 00 2E
	rti		; 40

	tas		; 1B
	nop		; EA
	asl $A1.b		; 06 A1
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $B1.b		; 06 B1
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $B1.b,X		; F6 B1
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $00A1.w,X		; FE A1 00
	asl $40.b		; 06 40
	plx		; FA
	inc $00A9.w,X		; FE A9 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	lda #$0800.w		; A9 00 08
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp ($00.b,X)		; C1 00
	ora #$EF40.w		; 09 40 EF
	ora #$00C1.w		; 09 C1 00
	asl A		; 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	sbc $00C1F9.l,X		; FF F9 C1 00
	tsb $ED40.w		; 0C 40 ED
	ora $C9.b,S		; 03 C9
	php		; 08
	asl $48.b,X		; 16 48
	ora ($F7.b,X)		; 01 F7
	sbc $00.b		; E5 00
	clc		; 18
	rti		; 40

	xba		; EB
	ora $00D9.w		; 0D D9 00
	ora $F340.w,Y		; 19 40 F3
	ora $D9.b		; 05 D9
	brk $1A.b		; 00 1A
	rti		; 40

	xce		; FB
	sbc $00D9.w,X		; FD D9 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	xba		; EB
	ora $00E1.w		; 0D E1 00
	ora $EB40.w,X		; 1D 40 EB
	ora $00E9.w		; 0D E9 00
	asl $EB40.w,X		; 1E 40 EB
	ora $00F1.w		; 0D F1 00
	ora $0DEB40.l,X		; 1F 40 EB 0D
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx $2200.w		; EC 00 22
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $23.b		; 00 23
	rti		; 40

	sbc $C9FB.w,X		; FD FB C9
	brk $24.b		; 00 24
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $25.b		; 00 25
	rti		; 40

	inc $E1FA.w,X		; FE FA E1
	brk $28.b		; 00 28
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	and #$1B40.w		; 29 40 1B
	nop		; EA
	asl $A1.b		; 06 A1
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $A9.b,X		; F6 A9
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $B9.b,X		; F6 B9
	php		; 08
	tsb $48.b		; 04 48
	sep #$0E		; E2 0E
	lda ($08.b),Y		; B1 08
	asl $48.b		; 06 48
	plx		; FA
	inc $00A1.w,X		; FE A1 00
	php		; 08
	rti		; 40

	sbc ($06.b)		; F2 06
	lda ($00.b),Y		; B1 00
	ora #$F240.w		; 09 40 F2
	asl $B9.b		; 06 B9
	brk $0A.b		; 00 0A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	nop		; EA
	asl $00C1.w		; 0E C1 00
	tsb $F240.w		; 0C 40 F2
	asl $C1.b		; 06 C1
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $C903.w		; ED 03 C9
	php		; 08
	clc		; 18
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	sbc $00.b		; E5 00
	inc A		; 1A
	rti		; 40

	xba		; EB
	ora $00D9.w		; 0D D9 00
	tas		; 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	xce		; FB
	sbc $00D9.w,X		; FD D9 00
	ora $0340.w,X		; 1D 40 03
	sbc $D9.b,X		; F5 D9
	brk $1E.b		; 00 1E
	rti		; 40

	xba		; EB
	ora $00E1.w		; 0D E1 00
	ora $0DEB40.l,X		; 1F 40 EB 0D
	sbc #$2000.w		; E9 00 20
	rti		; 40

	xba		; EB
	ora $00F1.w		; 0D F1 00
	and ($40.b,X)		; 21 40
	xba		; EB
	ora $00F9.w		; 0D F9 00
	jsl $05F340.l		; 22 40 F3 05
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx $2400.w		; EC 00 24
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $25.b		; 00 25
	rti		; 40

	sbc $C9FB.w,X		; FD FB C9
	brk $26.b		; 00 26
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $27.b		; 00 27
	rti		; 40

	inc $E1FA.w,X		; FE FA E1
	brk $2A.b		; 00 2A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	pld		; 2B
	rti		; 40

	ora $F8.b,X		; 15 F8
	sed		; F8
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $B1.b,X		; F5 B1
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	php		; 08
	beq  -7.b		; F0 F9
	brk $0C.b		; 00 0C
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $0D00.w,Y		; F9 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$0E00.w		; A9 00 0E
	rti		; 40

	php		; 08
	beq -31.b		; F0 E1
	brk $0F.b		; 00 0F
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	trb $E940.w		; 1C 40 E9
	ora $1D00C4.l		; 0F C4 00 1D
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	phd		; 0B
	sbc $00E9.w		; ED E9 00
	ora $08F040.l,X		; 1F 40 F0 08
	sbc ($00.b),Y		; F1 00
	jsr $F840.w		; 20 40 F8
	brk $F1.b		; 00 F1
	brk $21.b		; 00 21
	rti		; 40

	php		; 08
	beq -15.b		; F0 F1
	brk $22.b		; 00 22
	rti		; 40

	phd		; 0B
	sbc $00B1.w		; ED B1 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00B9.w		; ED B9 00
	bit $40.b		; 24 40
	xba		; EB
	ora $00BC.w		; 0D BC 00
	and $40.b		; 25 40
	inc $F90A.w		; EE 0A F9
	brk $26.b		; 00 26
	rti		; 40

	ora ($02.b,S),Y		; 13 02
	inc $08B9.w		; EE B9 08
	brk $48.b		; 00 48
	ora ($DE.b)		; 12 DE
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	xce		; FB
	sbc $C9.b,X		; F5 C9
	php		; 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $C9.b		; E5 C9
	php		; 08
	asl $48.b		; 06 48
	and ($C5.b,S),Y		; 33 C5
	cmp #$0800.w		; C9 00 08
	rti		; 40

	plx		; FA
	inc $00BC.w,X		; FE BC 00
	ora #$0B40.w		; 09 40 0B
	sbc $00B1.w		; ED B1 00
	asl A		; 0A
	rti		; 40

	tas		; 1B
	cmp $00C9.w,X		; DD C9 00
	phd		; 0B
	rti		; 40

	tas		; 1B
	cmp $00D1.w,X		; DD D1 00
	tsb $2340.w		; 0C 40 23
	cmp $C8.b,X		; D5 C8
	brk $0D.b		; 00 0D
	rti		; 40

	pld		; 2B
	cmp $00C8.w		; CD C8 00
	asl $F040.w		; 0E 40 F0
	brk $D9.b		; 00 D9
	php		; 08
	clc		; 18
	pha		; 48
	brk $F0.b		; 00 F0
	cmp $1A08.w,Y		; D9 08 1A
	pha		; 48
	bpl -32.b		; 10 E0
	cmp $1C08.w,Y		; D9 08 1C
	pha		; 48
	cld		; D8
	jsr $00E3.w		; 20 E3 00
	asl $D040.w,X		; 1E 40 D0
	plp		; 28
	sbc $00.b		; E5 00
	ora $10E840.l,X		; 1F 40 E8 10
	dec $2000.w,X		; DE 00 20
	rti		; 40

	cpx #$18.b		; E0 18
	cmp $402100.l,X		; DF 00 21 40
	jsr ($E9FC.w,X)		; FC FC E9
	brk $22.b		; 00 22
	rti		; 40

	jsl $C118D8.l		; 22 D8 18 C1
	php		; 08
	brk $48.b		; 00 48
	inx		; E8
	php		; 08
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	clc		; 18
	cld		; D8
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	bmi -64.b		; 30 C0
	cpy $08.b		; C4 08
	asl A		; 0A
	pha		; 48
	plp		; 28
	bne -63.b		; D0 C1
	brk $0C.b		; 00 0C
	rti		; 40

	plp		; 28
	bne -55.b		; D0 C9
	brk $0D.b		; 00 0D
	rti		; 40

	cld		; D8
	jsr $00D1.w		; 20 D1 00
	asl $E040.w		; 0E 40 E0
	clc		; 18
	cmp ($00.b),Y		; D1 00
	ora $10E840.l		; 0F 40 E8 10
	cmp ($00.b),Y		; D1 00
	trb $F040.w		; 1C 40 F0
	php		; 08
	cmp ($00.b),Y		; D1 00
	ora $F840.w,X		; 1D 40 F8
	brk $D1.b		; 00 D1
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	ora $F00840.l,X		; 1F 40 08 F0
	cmp ($00.b),Y		; D1 00
	jsr $1040.w		; 20 40 10
	inx		; E8
	cmp ($00.b),Y		; D1 00
	and ($40.b,X)		; 21 40
	clc		; 18
	cpx #$D1.b		; E0 D1
	brk $22.b		; 00 22
	rti		; 40

	jsr $D1D8.w		; 20 D8 D1
	brk $23.b		; 00 23
	rti		; 40

	plp		; 28
	bne -47.b		; D0 D1
	brk $24.b		; 00 24
	rti		; 40

	php		; 08
	beq -79.b		; F0 B1
	brk $25.b		; 00 25
	rti		; 40

	plx		; FA
	inc $00B9.w,X		; FE B9 00
	rol $40.b		; 26 40
	cop $F6.b		; 02 F6
	lda $2700.w,Y		; B9 00 27
	rti		; 40

	asl A		; 0A
	inc $00B9.w		; EE B9 00
	plp		; 28
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda $2900.w,Y		; B9 00 29
	rti		; 40

	inc A		; 1A
	dec $00B9.w,X		; DE B9 00
	rol A		; 2A
	rti		; 40

	cmp $C92B.w		; CD 2B C9
	brk $2B.b		; 00 2B
	rti		; 40

	beq   0.b		; F0 00
	cmp $2C08.w,Y		; D9 08 2C
	pha		; 48
	brk $F0.b		; 00 F0
	cmp $2E08.w,Y		; D9 08 2E
	pha		; 48
	bpl -32.b		; 10 E0
	cmp $3008.w,Y		; D9 08 30
	pha		; 48
	cld		; D8
	jsr $00E3.w		; 20 E3 00
	and ($40.b)		; 32 40
	bne  40.b		; D0 28
	sbc $00.b		; E5 00
	and ($40.b,S),Y		; 33 40
	inx		; E8
	bpl -34.b		; 10 DE
	brk $34.b		; 00 34
	rti		; 40

	cpx #$18.b		; E0 18
	cmp $403500.l,X		; DF 00 35 40
	jsr ($E9FC.w,X)		; FC FC E9
	brk $36.b		; 00 36
	rti		; 40

	ora $0CE4.w,Y		; 19 E4 0C
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	beq   8.b		; F0 08
	lda ($00.b),Y		; B1 00
	cop $40.b		; 02 40
	sed		; F8
	brk $B1.b		; 00 B1
	brk $03.b		; 00 03
	rti		; 40

	sbc #$990F.w		; E9 0F 99
	brk $04.b		; 00 04
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sta $0500.w,Y		; 99 00 05
	rti		; 40

	inx		; E8
	bpl -79.b		; 10 B1
	brk $06.b		; 00 06
	rti		; 40

	pea $A104.w		; F4 04 A1
	brk $07.b		; 00 07
	rti		; 40

	pea $A904.w		; F4 04 A9
	brk $08.b		; 00 08
	rti		; 40

	jmp.w [$A71C]		; DC 1C A7
	brk $09.b		; 00 09
	rti		; 40

	nop		; EA
	asl $B9.b		; 06 B9
	php		; 08
	ora ($48.b)		; 12 48
	cpx $D104.w		; EC 04 D1
	php		; 08
	trb $48.b		; 14 48
	sbc $F9FF.w,Y		; F9 FF F9
	brk $16.b		; 00 16
	rti		; 40

	cop $F6.b		; 02 F6
	cmp #$1700.w		; C9 00 17
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $18.b		; 00 18
	rti		; 40

	plx		; FA
	inc $00B9.w,X		; FE B9 00
	ora $FA40.w,Y		; 19 40 FA
	inc $00C1.w,X		; FE C1 00
	inc A		; 1A
	rti		; 40

	nop		; EA
	asl $00C9.w		; 0E C9 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp #$1C00.w		; C9 00 1C
	rti		; 40

	plx		; FA
	inc $00C9.w,X		; FE C9 00
	ora $EB40.w,X		; 1D 40 EB
	ora $00F9.w		; 0D F9 00
	asl $F940.w,X		; 1E 40 F9
	sbc $1F00F1.l,X		; FF F1 00 1F
	rti		; 40

	inc $E10A.w		; EE 0A E1
	brk $20.b		; 00 20
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	inc $E90A.w		; EE 0A E9
	brk $26.b		; 00 26
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $27.b		; 00 27
	rti		; 40

	ora $0BE5.w,Y		; 19 E5 0B
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc ($06.b)		; F2 06
	sta $0200.w,Y		; 99 00 02
	rti		; 40

	nop		; EA
	asl $0099.w		; 0E 99 00
	ora $40.b,S		; 03 40
	sbc $03.b,X		; F5 03
	lda ($00.b,X)		; A1 00
	tsb $40.b		; 04 40
	sbc $03.b,X		; F5 03
	lda #$0500.w		; A9 00 05
	rti		; 40

	sbc $13.b		; E5 13
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	sbc $B10B.w		; ED 0B B1
	brk $07.b		; 00 07
	rti		; 40

	sbc $03.b,X		; F5 03
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	cmp $A61B.w,X		; DD 1B A6
	brk $09.b		; 00 09
	rti		; 40

	nop		; EA
	asl $B9.b		; 06 B9
	php		; 08
	ora ($48.b)		; 12 48
	cpx $D104.w		; EC 04 D1
	php		; 08
	trb $48.b		; 14 48
	sbc $F9FF.w,Y		; F9 FF F9
	brk $16.b		; 00 16
	rti		; 40

	cop $F6.b		; 02 F6
	cmp #$1700.w		; C9 00 17
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $18.b		; 00 18
	rti		; 40

	plx		; FA
	inc $00B9.w,X		; FE B9 00
	ora $FA40.w,Y		; 19 40 FA
	inc $00C1.w,X		; FE C1 00
	inc A		; 1A
	rti		; 40

	nop		; EA
	asl $00C9.w		; 0E C9 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp #$1C00.w		; C9 00 1C
	rti		; 40

	plx		; FA
	inc $00C9.w,X		; FE C9 00
	ora $EB40.w,X		; 1D 40 EB
	ora $00F9.w		; 0D F9 00
	asl $F940.w,X		; 1E 40 F9
	sbc $1F00F1.l,X		; FF F1 00 1F
	rti		; 40

	inc $E10A.w		; EE 0A E1
	brk $20.b		; 00 20
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	inc $E90A.w		; EE 0A E9
	brk $26.b		; 00 26
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $27.b		; 00 27
	rti		; 40

	ora ($F1.b,S),Y		; 13 F1
	sbc $0088BE.l,X		; FF BE 88 00
	iny		; C8
	cpx $DE04.w		; EC 04 DE
	dey		; 88
	cop $C8.b		; 02 C8
	jsr ($DEF4.w,X)		; FC F4 DE
	dey		; 88
	tsb $C8.b		; 04 C8
	sbc $EE03.w		; ED 03 EE
	dey		; 88
	asl $C8.b		; 06 C8
	sbc $EEF3.w,X		; FD F3 EE
	dey		; 88
	php		; 08
	iny		; C8
	inc $CE02.w		; EE 02 CE
	dey		; 88
	asl A		; 0A
	iny		; C8
	xba		; EB
	ora $80A6.w		; 0D A6 80
	tsb $0BC0.w		; 0C C0 0B
	sbc $80A8.w		; ED A8 80
	ora $F9C0.w		; 0D C0 F9
	sbc $0E80FE.l,X		; FF FE 80 0E
	cpy #$01.b		; C0 01
	sbc [$FE.b],Y		; F7 FE
	bra  15.b		; 80 0F
	cpy #$04.b		; C0 04
	pea $80B8.w		; F4 B8 80
	trb $EDC0.w		; 1C C0 ED
	phd		; 0B
	ldx $1D80.w		; AE 80 1D
	cpy #$F1.b		; C0 F1
	ora [$FE.b]		; 07 FE
	bra  30.b		; 80 1E
	cpy #$01.b		; C0 01
	sbc [$C6.b],Y		; F7 C6
	bra  31.b		; 80 1F
	cpy #$01.b		; C0 01
	sbc [$BE.b],Y		; F7 BE
	bra  32.b		; 80 20
	cpy #$FE.b		; C0 FE
	plx		; FA
	dec $80.b,X		; D6 80
	and ($C0.b,X)		; 21 C0
	inc $CEFA.w,X		; FE FA CE
	bra  34.b		; 80 22
	cpy #$EF.b		; C0 EF
	ora #$80B6.w		; 09 B6 80
	and $C0.b,S		; 23 C0
	ora [$F1.b]		; 07 F1
	bcs -128.b		; B0 80
	bit $C0.b		; 24 C0
	ora $FEF2.w,Y		; 19 F2 FE
	dec $88.b		; C6 88
	brk $C8.b		; 00 C8
	cpx $0C.b		; E4 0C
	inc $0288.w,X		; FE 88 02
	iny		; C8
	cpx $D604.w		; EC 04 D6
	dey		; 88
	tsb $C8.b		; 04 C8
	cpx $E604.w		; EC 04 E6
	dey		; 88
	asl $C8.b		; 06 C8
	jmp.w [$E614]		; DC 14 E6
	dey		; 88
	php		; 08
	iny		; C8
	inx		; E8
	bpl -58.b		; 10 C6
	bra  10.b		; 80 0A
	cpy #$FC.b		; C0 FC
	jsr ($80E6.w,X)		; FC E6 80
	phd		; 0B
	cpy #$E8.b		; C0 E8
	bpl -66.b		; 10 BE
	bra  12.b		; 80 0C
	cpy #$E9.b		; C0 E9
	ora $0D80B6.l		; 0F B6 80 0D
	cpy #$E9.b		; C0 E9
	ora $0E80AE.l		; 0F AE 80 0E
	cpy #$01.b		; C0 01
	sbc [$BB.b],Y		; F7 BB
	bra  15.b		; 80 0F
	cpy #$F4.b		; C0 F4
	tsb $06.b		; 04 06
	bra  26.b		; 80 1A
	cpy #$F4.b		; C0 F4
	tsb $FE.b		; 04 FE
	bra  27.b		; 80 1B
	cpy #$E4.b		; C0 E4
	trb $F6.b		; 14 F6
	bra  28.b		; 80 1C
	cpy #$EC.b		; C0 EC
	tsb $80F6.w		; 0C F6 80
	ora $F4C0.w,X		; 1D C0 F4
	tsb $F6.b		; 04 F6
	bra  30.b		; 80 1E
	cpy #$DC.b		; C0 DC
	trb $80DE.w		; 1C DE 80
	ora $14E4C0.l,X		; 1F C0 E4 14
	dec $2080.w,X		; DE 80 20
	cpy #$E4.b		; C0 E4
	trb $D6.b		; 14 D6
	bra  33.b		; 80 21
	cpy #$04.b		; C0 04
	pea $80B5.w		; F4 B5 80
	jsl $FCFCC0.l		; 22 C0 FC FC
	ora ($80.b,X)		; 01 80
	and $C0.b,S		; 23 C0
	jsr ($F9FC.w,X)		; FC FC F9
	bra  36.b		; 80 24
	cpy #$FC.b		; C0 FC
	jsr ($80F1.w,X)		; FC F1 80
	and $C0.b		; 25 C0
	sbc $BFFB.w,X		; FD FB BF
	bra  38.b		; 80 26
	cpy #$E6.b		; C0 E6
	ora ($CE.b)		; 12 CE
	bra  39.b		; 80 27
	cpy #$17.b		; C0 17
	cmp [$19.b],Y		; D7 19
	sbc [$88.b],Y		; F7 88
	brk $C8.b		; 00 C8
	sbc [$F9.b],Y		; F7 F9
	cmp $C80288.l,X		; DF 88 02 C8
	cmp $88D711.l,X		; DF 11 D7 88
	tsb $C8.b		; 04 C8
	cmp $88E711.l,X		; DF 11 E7 88
	asl $C8.b		; 06 C8
	ora [$E9.b]		; 07 E9
	nop		; EA
	dey		; 88
	php		; 08
	iny		; C8
	ora $E3.b,X		; 15 E3
	phx		; DA
	bra  10.b		; 80 0A
	cpy #$1D.b		; C0 1D
	stp		; DB
	phx		; DA
	bra  11.b		; 80 0B
	cpy #$FF.b		; C0 FF
	sbc $80EF.w,Y		; F9 EF 80
	tsb $F4C0.w		; 0C C0 F4
	tsb $F7.b		; 04 F7
	bra  13.b		; 80 0D
	cpy #$F4.b		; C0 F4
	tsb $EF.b		; 04 EF
	bra  14.b		; 80 0E
	cpy #$1D.b		; C0 1D
	stp		; DB
	sbc $0F80.w,X		; FD 80 0F
	cpy #$1D.b		; C0 1D
	stp		; DB
	sbc $80.b,X		; F5 80
	inc A		; 1A
	cpy #$E7.b		; C0 E7
	ora ($F7.b),Y		; 11 F7
	bra  27.b		; 80 1B
	cpy #$D7.b		; C0 D7
	and ($EF.b,X)		; 21 EF
	bra  28.b		; 80 1C
	cpy #$EF.b		; C0 EF
	ora #$80E7.w		; 09 E7 80
	ora $EFC0.w,X		; 1D C0 EF
	ora #$80DF.w		; 09 DF 80
	asl $EFC0.w,X		; 1E C0 EF
	ora #$80D7.w		; 09 D7 80
	ora $01F7C0.l,X		; 1F C0 F7 01
	cmp [$80.b],Y		; D7 80
	jsr $FFC0.w		; 20 C0 FF
	sbc $80D7.w,Y		; F9 D7 80
	and ($C0.b,X)		; 21 C0
	ora [$E1.b],Y		; 17 E1
	sep #$80		; E2 80
	jsl $E315C0.l		; 22 C0 15 E3
	sbc ($80.b,S),Y		; F3 80
	and $C0.b,S		; 23 C0
	ora [$F1.b]		; 07 F1
	sep #$80		; E2 80
	bit $C0.b		; 24 C0
	ora $80E2E9.l		; 0F E9 E2 80
	and $C0.b		; 25 C0
	ora [$06.b],Y		; 17 06
	nop		; EA
	clv		; B8
	pha		; 48
	brk $08.b		; 00 08
	inc $FA.b,X		; F6 FA
	clv		; B8
	pha		; 48
	cop $08.b		; 02 08
	cop $EE.b		; 02 EE
	ldy #$48.b		; A0 48
	tsb $08.b		; 04 08
	cop $EE.b		; 02 EE
	iny		; C8
	pha		; 48
	asl $08.b		; 06 08
	sbc $FB0B.w		; ED 0B FB
	rti		; 40

	php		; 08
	brk $0C.b		; 00 0C
	cpx $40E0.w		; EC E0 40
	ora #$0C00.w		; 09 00 0C
	cpx $40F0.w		; EC F0 40
	asl A		; 0A
	brk $0C.b		; 00 0C
	cpx $40F8.w		; EC F8 40
	phd		; 0B
	brk $F3.b		; 00 F3
	ora $EE.b		; 05 EE
	rti		; 40

	tsb $0B00.w		; 0C 00 0B
	sbc $40E8.w		; ED E8 40
	ora $FA00.w		; 0D 00 FA
	inc $40B0.w,X		; FE B0 40
	asl $FA00.w		; 0E 00 FA
	inc $40E0.w,X		; FE E0 40
	ora $06F200.l		; 0F 00 F2 06
	cpx #$40.b		; E0 40
	clc		; 18
	brk $0F.b		; 00 0F
	sbc #$40FF.w		; E9 FF 40
	ora $F600.w,Y		; 19 00 F6
	cop $E8.b		; 02 E8
	rti		; 40

	inc A		; 1A
	brk $0A.b		; 00 0A
	inc $40B0.w		; EE B0 40
	tas		; 1B
	brk $02.b		; 00 02
	inc $B0.b,X		; F6 B0
	rti		; 40

	trb $FA00.w		; 1C 00 FA
	inc $40C8.w,X		; FE C8 40
	ora $FA00.w,X		; 1D 00 FA
	inc $40D0.w,X		; FE D0 40
	asl $0A00.w,X		; 1E 00 0A
	inc $40D8.w		; EE D8 40
	ora $F60200.l,X		; 1F 00 02 F6
	cld		; D8
	rti		; 40

	jsr $FA00.w		; 20 00 FA
	inc $40D8.w,X		; FE D8 40
	and ($00.b,X)		; 21 00
	sbc ($07.b),Y		; F1 07
	inc $40.b,X		; F6 40
	jsl $FF1300.l		; 22 00 13 FF
	sbc ($DA.b),Y		; F1 DA
	pha		; 48
	brk $08.b		; 00 08
	tsb $EC.b		; 04 EC
	tsx		; BA
	pha		; 48
	cop $08.b		; 02 08
	pea $BAFC.w		; F4 FC BA
	pha		; 48
	tsb $08.b		; 04 08
	ora $ED.b,S		; 03 ED
	tax		; AA
	pha		; 48
	asl $08.b		; 06 08
	sbc ($FD.b,S),Y		; F3 FD
	tax		; AA
	pha		; 48
	php		; 08
	php		; 08
	cop $EE.b		; 02 EE
	dex		; CA
	pha		; 48
	asl A		; 0A
	php		; 08
	ora $FAEB.w		; 0D EB FA
	rti		; 40

	tsb $ED00.w		; 0C 00 ED
	phd		; 0B
	sed		; F8
	rti		; 40

	ora $FF00.w		; 0D 00 FF
	sbc $40A2.w,Y		; F9 A2 40
	asl $F700.w		; 0E 00 F7
	ora ($A2.b,X)		; 01 A2
	rti		; 40

	ora $04F400.l		; 0F 00 F4 04
	inx		; E8
	rti		; 40

	trb $0B00.w		; 1C 00 0B
	sbc $40F2.w		; ED F2 40
	ora $0700.w,X		; 1D 00 07
	sbc ($A2.b),Y		; F1 A2
	rti		; 40

	asl $F700.w,X		; 1E 00 F7
	ora ($DA.b,X)		; 01 DA
	rti		; 40

	ora $01F700.l,X		; 1F 00 F7 01
	sep #$40		; E2 40
	jsr $FA00.w		; 20 00 FA
	inc $40CA.w,X		; FE CA 40
	and ($00.b,X)		; 21 00
	plx		; FA
	inc $40D2.w,X		; FE D2 40
	jsl $EF0900.l		; 22 00 09 EF
	nop		; EA
	rti		; 40

	and $00.b,S		; 23 00
	sbc ($07.b),Y		; F1 07
	beq  64.b		; F0 40
	bit $00.b		; 24 00
	ora $F2FE.w,Y		; 19 FE F2
	cmp $0048.w,Y		; D9 48 00
	php		; 08
	tsb $A1E4.w		; 0C E4 A1
	pha		; 48
	cop $08.b		; 02 08
	tsb $EC.b		; 04 EC
	cmp #$0448.w		; C9 48 04
	php		; 08
	tsb $EC.b		; 04 EC
	lda $0648.w,Y		; B9 48 06
	php		; 08
	trb $DC.b		; 14 DC
	lda $0848.w,Y		; B9 48 08
	php		; 08
	bpl -24.b		; 10 E8
	sbc ($40.b,X)		; E1 40
	asl A		; 0A
	brk $FC.b		; 00 FC
	jsr ($40C1.w,X)		; FC C1 40
	phd		; 0B
	brk $10.b		; 00 10
	inx		; E8
	sbc #$0C40.w		; E9 40 0C
	brk $0F.b		; 00 0F
	sbc #$40F1.w		; E9 F1 40
	ora $0F00.w		; 0D 00 0F
	sbc #$40F9.w		; E9 F9 40
	asl $F700.w		; 0E 00 F7
	ora ($EC.b,X)		; 01 EC
	rti		; 40

	ora $F40400.l		; 0F 00 04 F4
	lda ($40.b,X)		; A1 40
	inc A		; 1A
	brk $04.b		; 00 04
	pea $40A9.w		; F4 A9 40
	tas		; 1B
	brk $14.b		; 00 14
	cpx $B1.b		; E4 B1
	rti		; 40

	trb $0C00.w		; 1C 00 0C
	cpx $40B1.w		; EC B1 40
	ora $0400.w,X		; 1D 00 04
	pea $40B1.w		; F4 B1 40
	asl $1C00.w,X		; 1E 00 1C
	jmp.w [$40C9]		; DC C9 40
	ora $E41400.l,X		; 1F 00 14 E4
	cmp #$2040.w		; C9 40 20
	brk $14.b		; 00 14
	cpx $D1.b		; E4 D1
	rti		; 40

	and ($00.b,X)		; 21 00
	pea $F204.w		; F4 04 F2
	rti		; 40

	jsl $FCFC00.l		; 22 00 FC FC
	ldx $40.b		; A6 40
	and $00.b,S		; 23 00
	jsr ($AEFC.w,X)		; FC FC AE
	rti		; 40

	bit $00.b		; 24 00
	jsr ($B6FC.w,X)		; FC FC B6
	rti		; 40

	and $00.b		; 25 00
	xce		; FB
	sbc $40E8.w,X		; FD E8 40
	rol $00.b		; 26 00
	ora ($E6.b)		; 12 E6
	cmp $2740.w,Y		; D9 40 27
	brk $17.b		; 00 17
	ora $D3D7.w,Y		; 19 D7 D3
	pha		; 48
	brk $08.b		; 00 08
	sbc $EBF7.w,Y		; F9 F7 EB
	pha		; 48
	cop $08.b		; 02 08
	ora ($DF.b),Y		; 11 DF
	sbc ($48.b,S),Y		; F3 48
	tsb $08.b		; 04 08
	ora ($DF.b),Y		; 11 DF
	sbc $48.b,S		; E3 48
	asl $08.b		; 06 08
	sbc #$E007.w		; E9 07 E0
	pha		; 48
	php		; 08
	php		; 08
	sbc $15.b,S		; E3 15
	sed		; F8
	rti		; 40

	asl A		; 0A
	brk $DB.b		; 00 DB
	ora $40F8.w,X		; 1D F8 40
	phd		; 0B
	brk $F9.b		; 00 F9
	sbc $0C40E3.l,X		; FF E3 40 0C
	brk $04.b		; 00 04
	pea $40DB.w		; F4 DB 40
	ora $0400.w		; 0D 00 04
	pea $40E3.w		; F4 E3 40
	asl $DB00.w		; 0E 00 DB
	ora $40D5.w,X		; 1D D5 40
	ora $1DDB00.l		; 0F 00 DB 1D
	cmp $1A40.w,X		; DD 40 1A
	brk $11.b		; 00 11
	sbc [$DB.b]		; E7 DB
	rti		; 40

	tas		; 1B
	brk $21.b		; 00 21
	cmp [$E3.b],Y		; D7 E3
	rti		; 40

	trb $0900.w		; 1C 00 09
	sbc $1D40EB.l		; EF EB 40 1D
	brk $09.b		; 00 09
	sbc $1E40F3.l		; EF F3 40 1E
	brk $09.b		; 00 09
	sbc $1F40FB.l		; EF FB 40 1F
	brk $01.b		; 00 01
	sbc [$FB.b],Y		; F7 FB
	rti		; 40

	jsr $F900.w		; 20 00 F9
	sbc $2140FB.l,X		; FF FB 40 21
	brk $E1.b		; 00 E1
	ora [$F0.b],Y		; 17 F0
	rti		; 40

	jsl $15E300.l		; 22 00 E3 15
	cmp $002340.l,X		; DF 40 23 00
	sbc ($07.b),Y		; F1 07
	beq  64.b		; F0 40
	bit $00.b		; 24 00
	sbc #$F00F.w		; E9 0F F0
	rti		; 40

	and $00.b		; 25 00
	ora ($EE.b,S),Y		; 13 EE
	cop $EA.b		; 02 EA
	pha		; 48
	brk $08.b		; 00 08
	asl $EDD2.w,X		; 1E D2 ED
	pha		; 48
	cop $08.b		; 02 08
	asl $EDE2.w		; 0E E2 ED
	pha		; 48
	tsb $08.b		; 04 08
	inc $FAFA.w,X		; FE FA FA
	rti		; 40

	asl $00.b		; 06 00
	inc $02.b,X		; F6 02
	plx		; FA
	rti		; 40

	ora [$00.b]		; 07 00
	dec $F41A.w,X		; DE 1A F4
	rti		; 40

	php		; 08
	brk $E6.b		; 00 E6
	ora ($ED.b)		; 12 ED
	rti		; 40

	ora #$E600.w		; 09 00 E6
	ora ($F5.b)		; 12 F5
	rti		; 40

	asl A		; 0A
	brk $FE.b		; 00 FE
	plx		; FA
	nop		; EA
	rti		; 40

	phd		; 0B
	brk $FE.b		; 00 FE
	plx		; FA
	sbc ($40.b)		; F2 40
	tsb $0600.w		; 0C 00 06
	sbc ($ED.b)		; F2 ED
	rti		; 40

	ora $0600.w		; 0D 00 06
	sbc ($F5.b)		; F2 F5
	rti		; 40

	asl $2600.w		; 0E 00 26
	cmp ($FD.b)		; D2 FD
	rti		; 40

	ora $DA1E00.l		; 0F 00 1E DA
	sbc $1640.w,X		; FD 40 16
	brk $16.b		; 00 16
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	rti		; 40

	ora [$00.b],Y		; 17 00
	asl $FDEA.w		; 0E EA FD
	rti		; 40

	clc		; 18
	brk $06.b		; 00 06
	sbc ($FD.b)		; F2 FD
	rti		; 40

	ora $DC00.w,Y		; 19 00 DC
	trb $40FA.w		; 1C FA 40
	inc A		; 1A
	brk $D4.b		; 00 D4
	bit $FA.b		; 24 FA
	rti		; 40

	tas		; 1B
	brk $17.b		; 00 17
	asl $EA.b		; 06 EA
	cmp $00C8.w,Y		; D9 C8 00
	dey		; 88
	inc $FA.b,X		; F6 FA
	cmp $02C8.w,Y		; D9 C8 02
	dey		; 88
	cop $EE.b		; 02 EE
	sbc ($C8.b),Y		; F1 C8
	tsb $88.b		; 04 88
	cop $EE.b		; 02 EE
	cmp #$C8.b		; C9 C8
	asl $88.b		; 06 88
	sbc $9E0B.w		; ED 0B 9E
	cpy #$08.b		; C0 08
	bra  12.b		; 80 0C
	cpx $C0B9.w		; EC B9 C0
	ora #$80.b		; 09 80
	tsb $A9EC.w		; 0C EC A9
	cpy #$0A.b		; C0 0A
	bra  12.b		; 80 0C
	cpx $C0A1.w		; EC A1 C0
	phd		; 0B
	bra -13.b		; 80 F3
	ora $AB.b		; 05 AB
	cpy #$0C.b		; C0 0C
	bra  11.b		; 80 0B
	sbc $C0B1.w		; ED B1 C0
	ora $FA80.w		; 0D 80 FA
	inc $C0E9.w,X		; FE E9 C0
	asl $FA80.w		; 0E 80 FA
	inc $C0B9.w,X		; FE B9 C0
	ora $06F280.l		; 0F 80 F2 06
	lda $18C0.w,Y		; B9 C0 18
	bra  15.b		; 80 0F
	sbc #$9A.b		; E9 9A
	cpy #$19.b		; C0 19
	bra -10.b		; 80 F6
	cop $B1.b		; 02 B1
	cpy #$1A.b		; C0 1A
	bra  10.b		; 80 0A
	inc $C0E9.w		; EE E9 C0
	tas		; 1B
	bra   2.b		; 80 02
	inc $E9.b,X		; F6 E9
	cpy #$1C.b		; C0 1C
	bra  -6.b		; 80 FA
	inc $C0D1.w,X		; FE D1 C0
	ora $FA80.w,X		; 1D 80 FA
	inc $C0C9.w,X		; FE C9 C0
	asl $0A80.w,X		; 1E 80 0A
	inc $C0C1.w		; EE C1 C0
	ora $F60280.l,X		; 1F 80 02 F6
	cmp ($C0.b,X)		; C1 C0
	jsr $FA80.w		; 20 80 FA
	inc $C0C1.w,X		; FE C1 C0
	and ($80.b,X)		; 21 80
	sbc ($07.b),Y		; F1 07
	lda $C0.b,S		; A3 C0
	jsl $FF1380.l		; 22 80 13 FF
	sbc ($BE.b),Y		; F1 BE
	iny		; C8
	brk $88.b		; 00 88
	tsb $EC.b		; 04 EC
	dec $02C8.w,X		; DE C8 02
	dey		; 88
	pea $DEFC.w		; F4 FC DE
	iny		; C8
	tsb $88.b		; 04 88
	ora $ED.b,S		; 03 ED
	inc $06C8.w		; EE C8 06
	dey		; 88
	sbc ($FD.b,S),Y		; F3 FD
	inc $08C8.w		; EE C8 08
	dey		; 88
	cop $EE.b		; 02 EE
	dec $0AC8.w		; CE C8 0A
	dey		; 88
	ora $A6EB.w		; 0D EB A6
	cpy #$0C.b		; C0 0C
	bra -19.b		; 80 ED
	phd		; 0B
	tay		; A8
	cpy #$0D.b		; C0 0D
	bra  -1.b		; 80 FF
	sbc $C0FE.w,Y		; F9 FE C0
	asl $F780.w		; 0E 80 F7
	ora ($FE.b,X)		; 01 FE
	cpy #$0F.b		; C0 0F
	bra -12.b		; 80 F4
	tsb $B8.b		; 04 B8
	cpy #$1C.b		; C0 1C
	bra  11.b		; 80 0B
	sbc $C0AE.w		; ED AE C0
	ora $0780.w,X		; 1D 80 07
	sbc ($FE.b),Y		; F1 FE
	cpy #$1E.b		; C0 1E
	bra  -9.b		; 80 F7
	ora ($C6.b,X)		; 01 C6
	cpy #$1F.b		; C0 1F
	bra  -9.b		; 80 F7
	ora ($BE.b,X)		; 01 BE
	cpy #$20.b		; C0 20
	bra  -6.b		; 80 FA
	inc $C0D6.w,X		; FE D6 C0
	and ($80.b,X)		; 21 80
	plx		; FA
	inc $C0CE.w,X		; FE CE C0
	jsl $EF0980.l		; 22 80 09 EF
	ldx $C0.b,Y		; B6 C0
	and $80.b,S		; 23 80
	sbc ($07.b),Y		; F1 07
	bcs -64.b		; B0 C0
	bit $80.b		; 24 80
	ora $F2FE.w,Y		; 19 FE F2
	dec $C8.b		; C6 C8
	brk $88.b		; 00 88
	tsb $FEE4.w		; 0C E4 FE
	iny		; C8
	cop $88.b		; 02 88
	tsb $EC.b		; 04 EC
	dec $C8.b,X		; D6 C8
	tsb $88.b		; 04 88
	tsb $EC.b		; 04 EC
	inc $C8.b		; E6 C8
	asl $88.b		; 06 88
	trb $DC.b		; 14 DC
	inc $C8.b		; E6 C8
	php		; 08
	dey		; 88
	bpl -24.b		; 10 E8
	dec $C0.b		; C6 C0
	asl A		; 0A
	bra  -4.b		; 80 FC
	jsr ($C0E6.w,X)		; FC E6 C0
	phd		; 0B
	bra  16.b		; 80 10
	inx		; E8
	ldx $0CC0.w,Y		; BE C0 0C
	bra  15.b		; 80 0F
	sbc #$B6.b		; E9 B6
	cpy #$0D.b		; C0 0D
	bra  15.b		; 80 0F
	sbc #$AE.b		; E9 AE
	cpy #$0E.b		; C0 0E
	bra  -9.b		; 80 F7
	ora ($BB.b,X)		; 01 BB
	cpy #$0F.b		; C0 0F
	bra   4.b		; 80 04
	pea $C006.w		; F4 06 C0
	inc A		; 1A
	bra   4.b		; 80 04
	pea $C0FE.w		; F4 FE C0
	tas		; 1B
	bra  20.b		; 80 14
	cpx $F6.b		; E4 F6
	cpy #$1C.b		; C0 1C
	bra  12.b		; 80 0C
	cpx $C0F6.w		; EC F6 C0
	ora $0480.w,X		; 1D 80 04
	pea $C0F6.w		; F4 F6 C0
	asl $1C80.w,X		; 1E 80 1C
	jmp.w [$C0DE]		; DC DE C0
	ora $E41480.l,X		; 1F 80 14 E4
	dec $20C0.w,X		; DE C0 20
	bra  20.b		; 80 14
	cpx $D6.b		; E4 D6
	cpy #$21.b		; C0 21
	bra -12.b		; 80 F4
	tsb $B5.b		; 04 B5
	cpy #$22.b		; C0 22
	bra  -4.b		; 80 FC
	jsr ($C001.w,X)		; FC 01 C0
	and $80.b,S		; 23 80
	jsr ($F9FC.w,X)		; FC FC F9
	cpy #$24.b		; C0 24
	bra  -4.b		; 80 FC
	jsr ($C0F1.w,X)		; FC F1 C0
	and $80.b		; 25 80
	xce		; FB
	sbc $C0BF.w,X		; FD BF C0
	rol $80.b		; 26 80
	ora ($E6.b)		; 12 E6
	dec $27C0.w		; CE C0 27
	bra  23.b		; 80 17
	ora $F7D7.w,Y		; 19 D7 F7
	iny		; C8
	brk $88.b		; 00 88
	sbc $DFF7.w,Y		; F9 F7 DF
	iny		; C8
	cop $88.b		; 02 88
	ora ($DF.b),Y		; 11 DF
	cmp [$C8.b],Y		; D7 C8
	tsb $88.b		; 04 88
	ora ($DF.b),Y		; 11 DF
	sbc [$C8.b]		; E7 C8
	asl $88.b		; 06 88
	sbc #$07.b		; E9 07
	nop		; EA
	iny		; C8
	php		; 08
	dey		; 88
	sbc $15.b,S		; E3 15
	phx		; DA
	cpy #$0A.b		; C0 0A
	bra -37.b		; 80 DB
	ora $C0DA.w,X		; 1D DA C0
	phd		; 0B
	bra  -7.b		; 80 F9
	sbc $0CC0EF.l,X		; FF EF C0 0C
	bra   4.b		; 80 04
	pea $C0F7.w		; F4 F7 C0
	ora $0480.w		; 0D 80 04
	pea $C0EF.w		; F4 EF C0
	asl $DB80.w		; 0E 80 DB
	ora $C0FD.w,X		; 1D FD C0
	ora $1DDB80.l		; 0F 80 DB 1D
	sbc $C0.b,X		; F5 C0
	inc A		; 1A
	bra  17.b		; 80 11
	sbc [$F7.b]		; E7 F7
	cpy #$1B.b		; C0 1B
	bra  33.b		; 80 21
	cmp [$EF.b],Y		; D7 EF
	cpy #$1C.b		; C0 1C
	bra   9.b		; 80 09
	sbc $1DC0E7.l		; EF E7 C0 1D
	bra   9.b		; 80 09
	sbc $1EC0DF.l		; EF DF C0 1E
	bra   9.b		; 80 09
	sbc $1FC0D7.l		; EF D7 C0 1F
	bra   1.b		; 80 01
	sbc [$D7.b],Y		; F7 D7
	cpy #$20.b		; C0 20
	bra  -7.b		; 80 F9
	sbc $21C0D7.l,X		; FF D7 C0 21
	bra -31.b		; 80 E1
	ora [$E2.b],Y		; 17 E2
	cpy #$22.b		; C0 22
	bra -29.b		; 80 E3
	ora $F3.b,X		; 15 F3
	cpy #$23.b		; C0 23
	bra -15.b		; 80 F1
	ora [$E2.b]		; 07 E2
	cpy #$24.b		; C0 24
	bra -23.b		; 80 E9
	ora $25C0E2.l		; 0F E2 C0 25
	bra  19.b		; 80 13
	inc $ED02.w		; EE 02 ED
	iny		; C8
	brk $88.b		; 00 88
	asl $EAD2.w,X		; 1E D2 EA
	iny		; C8
	cop $88.b		; 02 88
	asl $EAE2.w		; 0E E2 EA
	iny		; C8
	tsb $88.b		; 04 88
	inc $E5FA.w,X		; FE FA E5
	cpy #$06.b		; C0 06
	bra -10.b		; 80 F6
	cop $E5.b		; 02 E5
	cpy #$07.b		; C0 07
	bra -34.b		; 80 DE
	inc A		; 1A
	xba		; EB
	cpy #$08.b		; C0 08
	bra -26.b		; 80 E6
	ora ($F2.b)		; 12 F2
	cpy #$09.b		; C0 09
	bra -26.b		; 80 E6
	ora ($EA.b)		; 12 EA
	cpy #$0A.b		; C0 0A
	bra  -2.b		; 80 FE
	plx		; FA
	sbc $C0.b,X		; F5 C0
	phd		; 0B
	bra  -2.b		; 80 FE
	plx		; FA
	sbc $0CC0.w		; ED C0 0C
	bra   6.b		; 80 06
	sbc ($F2.b)		; F2 F2
	cpy #$0D.b		; C0 0D
	bra   6.b		; 80 06
	sbc ($EA.b)		; F2 EA
	cpy #$0E.b		; C0 0E
	bra  38.b		; 80 26
	cmp ($E2.b)		; D2 E2
	cpy #$0F.b		; C0 0F
	bra  30.b		; 80 1E
	phx		; DA
	sep #$C0		; E2 C0
	asl $80.b,X		; 16 80
	asl $E2.b,X		; 16 E2
	sep #$C0		; E2 C0
	ora [$80.b],Y		; 17 80
	asl $E2EA.w		; 0E EA E2
	cpy #$18.b		; C0 18
	bra   6.b		; 80 06
	sbc ($E2.b)		; F2 E2
	cpy #$19.b		; C0 19
	bra -36.b		; 80 DC
	trb $C0E5.w		; 1C E5 C0
	inc A		; 1A
	bra -44.b		; 80 D4
	bit $E5.b		; 24 E5
	cpy #$1B.b		; C0 1B
	bra  16.b		; 80 10
	inc $D5F2.w,X		; FE F2 D5
	iny		; C8
	brk $88.b		; 00 88
	asl $E2E2.w		; 0E E2 E2
	iny		; C8
	cop $88.b		; 02 88
	asl $D2E2.w		; 0E E2 D2
	iny		; C8
	tsb $88.b		; 04 88
	asl $D8D2.w,X		; 1E D2 D8
	iny		; C8
	asl $88.b		; 06 88
	asl $C8D2.w,X		; 1E D2 C8
	iny		; C8
	php		; 08
	dey		; 88
	rol $D4CA.w		; 2E CA D4
	cpy #$0A.b		; C0 0A
	bra  46.b		; 80 2E
	dex		; CA
	cpy $0BC0.w		; CC C0 0B
	bra   6.b		; 80 06
	sbc ($E5.b)		; F2 E5
	cpy #$0C.b		; C0 0C
	bra  -2.b		; 80 FE
	plx		; FA
	sbc $C0.b,X		; F5 C0
	ora $1680.w		; 0D 80 16
	sep #$CA		; E2 CA
	cpy #$0E.b		; C0 0E
	bra  14.b		; 80 0E
	nop		; EA
	dex		; CA
	cpy #$0F.b		; C0 0F
	bra   6.b		; 80 06
	sbc ($CD.b)		; F2 CD
	cpy #$1A.b		; C0 1A
	bra  -2.b		; 80 FE
	plx		; FA
	cmp $1BC0.w		; CD C0 1B
	bra  12.b		; 80 0C
	cpx $C0ED.w		; EC ED C0
	trb $0480.w		; 1C 80 04
	pea $C0ED.w		; F4 ED C0
	ora $FC80.w,X		; 1D 80 FC
	jsr ($C0F0.w,X)		; FC F0 C0
	asl $1180.w,X		; 1E 80 11
	sed		; F8
	sed		; F8
	cmp ($08.b)		; D2 08
	brk $48.b		; 00 48
	plx		; FA
	inc $C2.b,X		; F6 C2
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $B2.b,X		; F5 B2
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $E2.b,X		; F5 E2
	php		; 08
	asl $48.b		; 06 48
	sbc $F103.w		; ED 03 F1
	php		; 08
	php		; 08
	pha		; 48
	php		; 08
	beq -38.b		; F0 DA
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq  -6.b		; F0 FA
	brk $0B.b		; 00 0B
	rti		; 40

	asl A		; 0A
	inc $00C2.w		; EE C2 00
	tsb $0A40.w		; 0C 40 0A
	inc $00CA.w		; EE CA 00
	ora $1040.w		; 0D 40 10
	inx		; E8
	plx		; FA
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq -14.b		; F0 F2
	brk $0F.b		; 00 0F
	rti		; 40

	phd		; 0B
	sbc $00B2.w		; ED B2 00
	inc A		; 1A
	rti		; 40

	phd		; 0B
	sbc $00BA.w		; ED BA 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00E2.w		; ED E2 00
	trb $0B40.w		; 1C 40 0B
	sbc $00EA.w		; ED EA 00
	ora $0840.w,X		; 1D 40 08
	beq -46.b		; F0 D2
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $F2FB.w,X		; FD FB F2
	brk $1F.b		; 00 1F
	rti		; 40

	ora $DF11.w,Y		; 19 11 DF
	cmp #$08.b		; C9 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	asl A		; 0A
	inc $A9.b		; E6 A9
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $B9.b		; E6 B9
	php		; 08
	asl $48.b		; 06 48
	ora ($DD.b,S),Y		; 13 DD
	sta $0808.w,Y		; 99 08 08
	pha		; 48
	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $0B00.w,Y		; D9 00 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,X)		; E1 00
	tsb $F940.w		; 0C 40 F9
	sbc $0D00E3.l,X		; FF E3 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b),Y		; F1 00
	asl $0940.w		; 0E 40 09
	sbc $0F00F9.l		; EF F9 00 0F
	rti		; 40

	inc A		; 1A
	dec $00A9.w,X		; DE A9 00
	inc A		; 1A
	rti		; 40

	inc A		; 1A
	dec $00B1.w,X		; DE B1 00
	tas		; 1B
	rti		; 40

	inc A		; 1A
	dec $00B9.w,X		; DE B9 00
	trb $1A40.w		; 1C 40 1A
	dec $00C1.w,X		; DE C1 00
	ora $0240.w,X		; 1D 40 02
	inc $AB.b,X		; F6 AB
	brk $1E.b		; 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b,S),Y		; B3 00
	ora $ED0B40.l,X		; 1F 40 0B ED
	lda ($00.b,X)		; A1 00
	jsr $0940.w		; 20 40 09
	sbc $2100C9.l		; EF C9 00 21
	rti		; 40

	trb $89DC.w		; 1C DC 89
	brk $22.b		; 00 22
	rti		; 40

	trb $91DC.w		; 1C DC 91
	brk $23.b		; 00 23
	rti		; 40

	tsb $E9EC.w		; 0C EC E9
	brk $24.b		; 00 24
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,S),Y		; F3 00
	and $40.b		; 25 40
	sbc $00E9F9.l,X		; FF F9 E9 00
	rol $40.b		; 26 40
	sbc [$01.b],Y		; F7 01
	xba		; EB
	brk $27.b		; 00 27
	rti		; 40

	clc		; 18
	sbc ($0F.b,X)		; E1 0F
	tay		; A8
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	bne   8.b		; D0 08
	cop $48.b		; 02 48
	dec $9B12.w,X		; DE 12 9B
	php		; 08
	tsb $48.b		; 04 48
	inc $0A.b		; E6 0A
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	sbc $ACFF.w,Y		; F9 FF AC
	brk $08.b		; 00 08
	rti		; 40

	sbc ($07.b),Y		; F1 07
	tay		; A8
	brk $09.b		; 00 09
	rti		; 40

	sbc ($07.b),Y		; F1 07
	bcs   0.b		; B0 00
	asl A		; 0A
	rti		; 40

	nop		; EA
	asl $00D0.w		; 0E D0 00
	phd		; 0B
	rti		; 40

	sbc #$0F.b		; E9 0F
	iny		; C8
	brk $0C.b		; 00 0C
	rti		; 40

	sbc ($06.b)		; F2 06
	cpx #$00.b		; E0 00
	ora $FA40.w		; 0D 40 FA
	inc $00E0.w,X		; FE E0 00
	asl $0440.w		; 0E 40 04
	pea $00A6.w		; F4 A6 00
	ora $FCFC40.l		; 0F 40 FC FC
	tay		; A8
	brk $18.b		; 00 18
	rti		; 40

	sbc $EE0B.w		; ED 0B EE
	brk $19.b		; 00 19
	rti		; 40

	sbc $03.b,X		; F5 03
	inx		; E8
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	beq   0.b		; F0 00
	tas		; 1B
	rti		; 40

	sbc $03.b,X		; F5 03
	sed		; F8
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $F8FB.w,X		; FD FB F8
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	iny		; C8
	brk $1E.b		; 00 1E
	rti		; 40

	inc $980A.w		; EE 0A 98
	brk $1F.b		; 00 1F
	rti		; 40

	inc $A00A.w		; EE 0A A0
	brk $20.b		; 00 20
	rti		; 40

	inc $02.b,X		; F6 02
	ldy #$00.b		; A0 00
	and ($40.b,X)		; 21 40
	inc $02.b,X		; F6 02
	cpy #$00.b		; C0 00
	jsl $FFF940.l		; 22 40 F9 FF
	iny		; C8
	brk $23.b		; 00 23
	rti		; 40

	asl $07E9.w		; 0E E9 07
	lda #$08.b		; A9 08
	brk $48.b		; 00 48
	sbc $A9F7.w,Y		; F9 F7 A9
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	sta $0608.w,Y		; 99 08 06
	pha		; 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	sbc ($08.b,X)		; E1 08
	asl A		; 0A
	pha		; 48
	pea $B904.w		; F4 04 B9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($B9FC.w,X)		; FC FC B9
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $A10B.w		; ED 0B A1
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	ora $F70140.l		; 0F 40 01 F7
	cmp #$00.b		; C9 00
	trb $FB40.w		; 1C 40 FB
	sbc $00F9.w,X		; FD F9 00
	ora $F640.w,X		; 1D 40 F6
	cop $F1.b		; 02 F1
	brk $1E.b		; 00 1E
	rti		; 40

	inc $F1FA.w,X		; FE FA F1
	brk $1F.b		; 00 1F
	rti		; 40

	asl $06EA.w,X		; 1E EA 06
	sta $480008.l,X		; 9F 08 00 48
	nop		; EA
	asl $AF.b		; 06 AF
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $9F.b,X		; F6 9F
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $AF.b,X		; F6 AF
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $480808.l,X		; DF 08 08 48
	inc $BF02.w		; EE 02 BF
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $CF02.w		; EE 02 CF
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($CF.b)		; F2 CF
	php		; 08
	asl $FE48.w		; 0E 48 FE
	sbc ($BF.b)		; F2 BF
	php		; 08
	jsr $EF48.w		; 20 48 EF
	ora ($EF.b,X)		; 01 EF
	php		; 08
	jsl $F1FF48.l		; 22 48 FF F1
	sbc $482408.l		; EF 08 24 48
	ora $F5.b,S		; 03 F5
	cmp $402600.l,X		; DF 00 26 40
	ora $F5.b,S		; 03 F5
	sbc [$00.b]		; E7 00
	and [$40.b]		; 27 40
	inc $02.b,X		; F6 02
	sta [$00.b],Y		; 97 00
	plp		; 28
	rti		; 40

	inc $97FA.w,X		; FE FA 97
	brk $29.b		; 00 29
	rti		; 40

	dec $BF1A.w,X		; DE 1A BF
	brk $2A.b		; 00 2A
	rti		; 40

	inc $12.b		; E6 12
	lda $402B00.l,X		; BF 00 2B 40
	asl A		; 0A
	inc $009F.w		; EE 9F 00
	bit $0A40.w		; 2C 40 0A
	inc $00A7.w		; EE A7 00
	and $0A40.w		; 2D 40 0A
	inc $00AF.w		; EE AF 00
	rol $0A40.w		; 2E 40 0A
	inc $00B7.w		; EE B7 00
	and $EA0E40.l		; 2F 40 0E EA
	lda $403600.l,X		; BF 00 36 40
	asl $C7EA.w		; 0E EA C7
	brk $37.b		; 00 37
	rti		; 40

	asl $CFEA.w		; 0E EA CF
	brk $38.b		; 00 38
	rti		; 40

	phd		; 0B
	sbc $00E7.w		; ED E7 00
	and $E240.w,Y		; 39 40 E2
	asl $B7.b,X		; 16 B7
	brk $3A.b		; 00 3A
	rti		; 40

	sbc $00FF09.l		; EF 09 FF 00
	tsa		; 3B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $403C00.l,X		; FF 00 3C 40
	sbc $00FFF9.l,X		; FF F9 FF 00
	and $0740.w,X		; 3D 40 07
	sbc ($FF.b),Y		; F1 FF
	brk $3E.b		; 00 3E
	rti		; 40

	asl $F1.b,X		; 16 F1
	sbc $0008B3.l,X		; FF B3 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b,S),Y		; B3 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	cmp $08.b,S		; C3 08
	asl $48.b		; 06 48
	brk $F8.b		; 00 F8
	stp		; DB
	brk $08.b		; 00 08
	rti		; 40

	beq   8.b		; F0 08
	cld		; D8
	brk $09.b		; 00 09
	rti		; 40

	beq   8.b		; F0 08
	cpx #$00.b		; E0 00
	asl A		; 0A
	rti		; 40

	sbc #$0F.b		; E9 0F
	lda ($00.b,S),Y		; B3 00
	phd		; 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tyx		; BB
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $A3.b		; 00 A3
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	lda $00.b,S		; A3 00
	asl $0840.w		; 0E 40 08
	beq -93.b		; F0 A3
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $DB.b		; 00 DB
	brk $18.b		; 00 18
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b,X)		; C1 00
	ora $1B40.w,Y		; 19 40 1B
	cmp $00C2.w,X		; DD C2 00
	inc A		; 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp ($00.b,S),Y		; D3 00
	tas		; 1B
	rti		; 40

	sbc $D3FB.w,X		; FD FB D3
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,S),Y		; D3 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$AB.b		; 09 AB
	brk $1E.b		; 00 1E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	plb		; AB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00ABF9.l,X		; FF F9 AB 00
	jsr $0740.w		; 20 40 07
	sbc ($AB.b),Y		; F1 AB
	brk $21.b		; 00 21
	rti		; 40

	ror $C1.b		; 66 C1
	sta $C1.b		; 85 C1
	sta ($C1.b)		; 92 C1
	lda $06C1.w,X		; BD C1 06
.INDEX 16
	rep #$13		; C2 13
.INDEX 16
	rep #$56		; C2 56
.INDEX 16
	rep #$9F		; C2 9F
.ACCU 16
	rep #$24		; C2 24
	cmp $B5.b,S		; C3 B5
	cmp $46.b,S		; C3 46
	cpy $D7.b		; C4 D7
	cpy $20.b		; C4 20
	cmp $69.b		; C5 69
	cmp $B2.b		; C5 B2
	cmp $FB.b		; C5 FB
	cmp $8C.b		; C5 8C
	dec $1D.b		; C6 1D
	cmp [$AE.b]		; C7 AE
	cmp [$87.b]		; C7 87
	iny		; C8
	rts		; 60

	cmp #$CA39.w		; C9 39 CA
	ora $D8.b		; 05 D8
	clc		; 18
	sed		; F8
	php		; 08
	brk $48.b		; 00 48
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	cop $48.b		; 02 48
	sed		; F8
	brk $F8.b		; 00 F8
	brk $68.b		; 00 68
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $69.b		; 00 69
	rti		; 40

	brk $F8.b		; 00 F8
	jsr ($6A00.w,X)		; FC 00 6A
	rti		; 40

	cop $FC.b		; 02 FC
	pea $08F0.w		; F4 F0 08
	tsb $48.b		; 04 48
	jsr ($00F4.w,X)		; FC F4 00
	dey		; 88
	tsb $C8.b		; 04 C8
	ora [$04.b]		; 07 04
	cpx $08F0.w		; EC F0 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	brk $88.b		; 00 88
	asl $C8.b		; 06 C8
	trb $E4.b		; 14 E4
	sbc ($00.b)		; F2 00
	rtl		; 6B

	rti		; 40

	trb $E4.b		; 14 E4
	jsr ($6C00.w,X)		; FC 00 6C
	rti		; 40

	trb $E4.b		; 14 E4
	asl $80.b		; 06 80
	rtl		; 6B

	cpy #$F107.w		; C0 07 F1
	inx		; E8
	brk $6D.b		; 00 6D
	rti		; 40

	ora [$F1.b]		; 07 F1
	bpl -128.b		; 10 80
	adc $0CC0.w		; 6D C0 0C
	php		; 08
	inx		; E8
	ora ($08.b,X)		; 01 08
	php		; 08
	pha		; 48
	clc		; 18
	cld		; D8
	ora ($08.b,X)		; 01 08
	asl A		; 0A
	pha		; 48
	php		; 08
	inx		; E8
	ora ($08.b),Y		; 11 08
	tsb $0848.w		; 0C 48 08
	inx		; E8
	cmp $C80C88.l,X		; DF 88 0C C8
	php		; 08
	inx		; E8
	sbc $C80888.l		; EF 88 08 C8
	clc		; 18
	cld		; D8
	sbc $C80A88.l		; EF 88 0A C8
	clc		; 18
	cpx #$0011.w		; E0 11 00
	ror $2040.w		; 6E 40 20
	cld		; D8
	ora ($00.b),Y		; 11 00
	adc $E01840.l		; 6F 40 18 E0
	ora $7800.w,Y		; 19 00 78
	rti		; 40

	clc		; 18
	cpx #$80DF.w		; E0 DF 80
	sei		; 78
	cpy #$E018.w		; C0 18 E0
	sbc [$80.b]		; E7 80
	ror $20C0.w		; 6E C0 20
	cld		; D8
	sbc [$80.b]		; E7 80
	adc $F502C0.l		; 6F C0 02 F5
	xce		; FB
	beq   8.b		; F0 08
	asl $F548.w		; 0E 48 F5
	xce		; FB
	brk $08.b		; 00 08
	jsr $0B48.w		; 20 48 0B
	cpx $EA04.w		; EC 04 EA
	php		; 08
	jsl $04EC48.l		; 22 48 EC 04
	plx		; FA
	php		; 08
	bit $48.b		; 24 48
	sbc ($07.b),Y		; F1 07
	ora ($00.b)		; 12 00
	adc $F940.w,Y		; 79 40 F9
	sbc $7A0012.l,X		; FF 12 00 7A
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $7B.b		; 00 7B
	rti		; 40

	jsr ($F2FC.w,X)		; FC FC F2
	brk $7C.b		; 00 7C
	rti		; 40

	jsr ($FAFC.w,X)		; FC FC FA
	rti		; 40

	and $00.b		; 25 00
	jsr ($02FC.w,X)		; FC FC 02
	brk $7D.b		; 00 7D
	rti		; 40

	cpx $0A0C.w		; EC 0C 0A
	brk $7E.b		; 00 7E
	rti		; 40

	pea $0A04.w		; F4 04 0A
	brk $7F.b		; 00 7F
	rti		; 40

	jsr ($0AFC.w,X)		; FC FC 0A
	brk $80.b		; 00 80
	rti		; 40

	tsb $FBF5.w		; 0C F5 FB
	ora ($08.b,X)		; 01 08
	rol $48.b		; 26 48
	ora $EB.b		; 05 EB
	ora ($48.b,X)		; 01 48
	rol $08.b		; 26 08
	sbc $FB.b,X		; F5 FB
	sbc [$08.b]		; E7 08
	plp		; 28
	pha		; 48
	ora $EB.b		; 05 EB
	sbc [$48.b]		; E7 48
	plp		; 28
	php		; 08
	ora $F3.b		; 05 F3
	ora ($C0.b),Y		; 11 C0
	and #$0D80.w		; 29 80 0D
	xba		; EB
	ora ($C0.b),Y		; 11 C0
	plp		; 28
	bra -11.b		; 80 F5
	ora $11.b,S		; 03 11
	bra  40.b		; 80 28
	cpy #$FBFD.w		; C0 FD FB
	ora ($80.b),Y		; 11 80
	and #$F5C0.w		; 29 C0 F5
	ora $F7.b,S		; 03 F7
	bra  38.b		; 80 26
	cpy #$FBFD.w		; C0 FD FB
	sbc [$80.b],Y		; F7 80
	and [$C0.b]		; 27 C0
	ora $F3.b		; 05 F3
	sbc [$C0.b],Y		; F7 C0
	and [$80.b]		; 27 80
	ora $F7EB.w		; 0D EB F7
	cpy #$8026.w		; C0 26 80
	asl $F7.b,X		; 16 F7
	sbc $0801.w,Y		; F9 01 08
	rol A		; 2A
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sbc [$08.b]		; E7 08
	bit $0C48.w		; 2C 48 0C
	cpx $0019.w		; EC 19 00
	sta ($40.b,X)		; 81 40
	jsr ($DFFC.w,X)		; FC FC DF
	brk $82.b		; 00 82
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $408300.l,X		; DF 00 83 40
	tsb $DFEC.w		; 0C EC DF
	bra -127.b		; 80 81
	cpy #$E90F.w		; C0 0F E9
	ora ($00.b,X)		; 01 00
	sty $40.b		; 84 40
	jsr ($19FC.w,X)		; FC FC 19
	bra -126.b		; 80 82
	cpy #$F107.w		; C0 07 F1
	ora ($00.b,X)		; 01 00
	sta $40.b		; 85 40
	ora [$F1.b]		; 07 F1
	ora #$8600.w		; 09 00 86
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ora ($80.b),Y		; 11 80
	bit $FFC0.w		; 2C C0 FF
	sbc $8011.w,Y		; F9 11 80
	and $07C0.w		; 2D C0 07
	sbc ($11.b),Y		; F1 11
	brk $87.b		; 00 87
	rti		; 40

	ora $00EBE9.l		; 0F E9 EB 00
	dey		; 88
	rti		; 40

	ora $800DE9.l		; 0F E9 0D 80
	dey		; 88
	cpy #$E90F.w		; C0 0F E9
	sbc [$80.b],Y		; F7 80
	sty $C0.b		; 84 C0
	tsb $F4.b		; 04 F4
	ora $8380.w,Y		; 19 80 83
	cpy #$F107.w		; C0 07 F1
	sbc [$80.b]		; E7 80
	sta [$C0.b]		; 87 C0
	ora [$F1.b]		; 07 F1
	sbc $C08680.l		; EF 80 86 C0
	sbc [$01.b],Y		; F7 01
	sbc [$80.b],Y		; F7 80
	rol A		; 2A
	cpy #$F9FF.w		; C0 FF F9
	sbc [$80.b],Y		; F7 80
	pld		; 2B
	cpy #$F107.w		; C0 07 F1
	sbc [$80.b],Y		; F7 80
	sta $C0.b		; 85 C0
	clc		; 18
	sbc $80FB.w,X		; FD FB 80
	brk $89.b		; 00 89
	rti		; 40

	sbc $88FB.w,X		; FD FB 88
	brk $89.b		; 00 89
	rti		; 40

	sbc $90FB.w,X		; FD FB 90
	brk $89.b		; 00 89
	rti		; 40

	sbc $98FB.w,X		; FD FB 98
	brk $89.b		; 00 89
	rti		; 40

	sbc $A0FB.w,X		; FD FB A0
	brk $89.b		; 00 89
	rti		; 40

	sbc $A8FB.w,X		; FD FB A8
	brk $89.b		; 00 89
	rti		; 40

	sbc $B0FB.w,X		; FD FB B0
	brk $89.b		; 00 89
	rti		; 40

	sbc $B8FB.w,X		; FD FB B8
	brk $89.b		; 00 89
	rti		; 40

	sbc $C0FB.w,X		; FD FB C0
	brk $89.b		; 00 89
	rti		; 40

	sbc $C8FB.w,X		; FD FB C8
	brk $89.b		; 00 89
	rti		; 40

	sbc $D0FB.w,X		; FD FB D0
	brk $89.b		; 00 89
	rti		; 40

	sbc $D8FB.w,X		; FD FB D8
	brk $89.b		; 00 89
	rti		; 40

	sbc $E0FB.w,X		; FD FB E0
	brk $89.b		; 00 89
	rti		; 40

	sbc $E8FB.w,X		; FD FB E8
	brk $89.b		; 00 89
	rti		; 40

	sbc $F0FB.w,X		; FD FB F0
	brk $89.b		; 00 89
	rti		; 40

	sbc $F8FB.w,X		; FD FB F8
	brk $89.b		; 00 89
	rti		; 40

	sbc $00FB.w,X		; FD FB 00
	brk $89.b		; 00 89
	rti		; 40

	sbc $08FB.w,X		; FD FB 08
	brk $89.b		; 00 89
	rti		; 40

	sbc $10FB.w,X		; FD FB 10
	brk $89.b		; 00 89
	rti		; 40

	sbc $18FB.w,X		; FD FB 18
	brk $89.b		; 00 89
	rti		; 40

	sbc $20FB.w,X		; FD FB 20
	brk $89.b		; 00 89
	rti		; 40

	sbc $28FB.w,X		; FD FB 28
	brk $89.b		; 00 89
	rti		; 40

	sbc $30FB.w,X		; FD FB 30
	brk $89.b		; 00 89
	rti		; 40

	sbc $38FB.w,X		; FD FB 38
	brk $89.b		; 00 89
	rti		; 40

	clc		; 18
	sbc $80FB.w,X		; FD FB 80
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $88FB.w,X		; FD FB 88
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $90FB.w,X		; FD FB 90
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $98FB.w,X		; FD FB 98
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $A0FB.w,X		; FD FB A0
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $A8FB.w,X		; FD FB A8
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $B0FB.w,X		; FD FB B0
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $B8FB.w,X		; FD FB B8
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $C0FB.w,X		; FD FB C0
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $C8FB.w,X		; FD FB C8
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $D0FB.w,X		; FD FB D0
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $D8FB.w,X		; FD FB D8
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $E0FB.w,X		; FD FB E0
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $E8FB.w,X		; FD FB E8
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $F0FB.w,X		; FD FB F0
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $F8FB.w,X		; FD FB F8
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $00FB.w,X		; FD FB 00
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $08FB.w,X		; FD FB 08
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $10FB.w,X		; FD FB 10
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $18FB.w,X		; FD FB 18
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $20FB.w,X		; FD FB 20
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $28FB.w,X		; FD FB 28
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $30FB.w,X		; FD FB 30
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $38FB.w,X		; FD FB 38
	brk $8A.b		; 00 8A
	rti		; 40

	clc		; 18
	sbc $80FB.w,X		; FD FB 80
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $88FB.w,X		; FD FB 88
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $90FB.w,X		; FD FB 90
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $98FB.w,X		; FD FB 98
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $A0FB.w,X		; FD FB A0
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $A8FB.w,X		; FD FB A8
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $B0FB.w,X		; FD FB B0
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $B8FB.w,X		; FD FB B8
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $C0FB.w,X		; FD FB C0
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $C8FB.w,X		; FD FB C8
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $D0FB.w,X		; FD FB D0
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $D8FB.w,X		; FD FB D8
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $E0FB.w,X		; FD FB E0
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $E8FB.w,X		; FD FB E8
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $F0FB.w,X		; FD FB F0
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $F8FB.w,X		; FD FB F8
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $00FB.w,X		; FD FB 00
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $08FB.w,X		; FD FB 08
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $10FB.w,X		; FD FB 10
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $18FB.w,X		; FD FB 18
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $20FB.w,X		; FD FB 20
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $28FB.w,X		; FD FB 28
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $30FB.w,X		; FD FB 30
	brk $8B.b		; 00 8B
	rti		; 40

	sbc $38FB.w,X		; FD FB 38
	brk $8B.b		; 00 8B
	rti		; 40

	tsb $F7F9.w		; 0C F9 F7
	bra   8.b		; 80 08
	rol $F948.w		; 2E 48 F9
	sbc [$90.b],Y		; F7 90
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$A0.b],Y		; F7 A0
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$B0.b],Y		; F7 B0
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$C0.b],Y		; F7 C0
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$D0.b],Y		; F7 D0
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$E0.b],Y		; F7 E0
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$F0.b],Y		; F7 F0
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$00.b],Y		; F7 00
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$10.b],Y		; F7 10
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$20.b],Y		; F7 20
	php		; 08
	rol $F948.w		; 2E 48 F9
	sbc [$30.b],Y		; F7 30
	php		; 08
	rol $0C48.w		; 2E 48 0C
	sbc $80F7.w,Y		; F9 F7 80
	php		; 08
	rti		; 40

	pha		; 48
	sbc $90F7.w,Y		; F9 F7 90
	php		; 08
	rti		; 40

	pha		; 48
	sbc $A0F7.w,Y		; F9 F7 A0
	php		; 08
	rti		; 40

	pha		; 48
	sbc $B0F7.w,Y		; F9 F7 B0
	php		; 08
	rti		; 40

	pha		; 48
	sbc $C0F7.w,Y		; F9 F7 C0
	php		; 08
	rti		; 40

	pha		; 48
	sbc $D0F7.w,Y		; F9 F7 D0
	php		; 08
	rti		; 40

	pha		; 48
	sbc $E0F7.w,Y		; F9 F7 E0
	php		; 08
	rti		; 40

	pha		; 48
	sbc $F0F7.w,Y		; F9 F7 F0
	php		; 08
	rti		; 40

	pha		; 48
	sbc $00F7.w,Y		; F9 F7 00
	php		; 08
	rti		; 40

	pha		; 48
	sbc $10F7.w,Y		; F9 F7 10
	php		; 08
	rti		; 40

	pha		; 48
	sbc $20F7.w,Y		; F9 F7 20
	php		; 08
	rti		; 40

	pha		; 48
	sbc $30F7.w,Y		; F9 F7 30
	php		; 08
	rti		; 40

	pha		; 48
	tsb $F7F9.w		; 0C F9 F7
	bra   8.b		; 80 08
	.db $42, $48		; 42 48
	sbc $90F7.w,Y		; F9 F7 90
	php		; 08
	.db $42, $48		; 42 48
	sbc $A0F7.w,Y		; F9 F7 A0
	php		; 08
	.db $42, $48		; 42 48
	sbc $B0F7.w,Y		; F9 F7 B0
	php		; 08
	.db $42, $48		; 42 48
	sbc $C0F7.w,Y		; F9 F7 C0
	php		; 08
	.db $42, $48		; 42 48
	sbc $D0F7.w,Y		; F9 F7 D0
	php		; 08
	.db $42, $48		; 42 48
	sbc $E0F7.w,Y		; F9 F7 E0
	php		; 08
	.db $42, $48		; 42 48
	sbc $F0F7.w,Y		; F9 F7 F0
	php		; 08
	.db $42, $48		; 42 48
	sbc $00F7.w,Y		; F9 F7 00
	php		; 08
	.db $42, $48		; 42 48
	sbc $10F7.w,Y		; F9 F7 10
	php		; 08
	.db $42, $48		; 42 48
	sbc $20F7.w,Y		; F9 F7 20
	php		; 08
	.db $42, $48		; 42 48
	sbc $30F7.w,Y		; F9 F7 30
	php		; 08
	.db $42, $48		; 42 48
	tsb $F7F9.w		; 0C F9 F7
	bra   8.b		; 80 08
	mvp $F9,$48		; 44 48 F9
	sbc [$90.b],Y		; F7 90
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$A0.b],Y		; F7 A0
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$B0.b],Y		; F7 B0
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$C0.b],Y		; F7 C0
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$D0.b],Y		; F7 D0
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$E0.b],Y		; F7 E0
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$F0.b],Y		; F7 F0
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$00.b],Y		; F7 00
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$10.b],Y		; F7 10
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$20.b],Y		; F7 20
	php		; 08
	mvp $F9,$48		; 44 48 F9
	sbc [$30.b],Y		; F7 30
	php		; 08
	mvp $18,$48		; 44 48 18
	sbc ($FF.b),Y		; F1 FF
	bra   8.b		; 80 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	bra  72.b		; 80 48
	lsr $08.b		; 46 08
	sbc ($FF.b),Y		; F1 FF
	bcc   8.b		; 90 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	bcc  72.b		; 90 48
	lsr $08.b		; 46 08
	sbc ($FF.b),Y		; F1 FF
	ldy #$4608.w		; A0 08 46
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldy #$4648.w		; A0 48 46
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bcs   8.b		; B0 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	bcs  72.b		; B0 48
	lsr $08.b		; 46 08
	sbc ($FF.b),Y		; F1 FF
	cpy #$4608.w		; C0 08 46
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cpy #$4648.w		; C0 48 46
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bne   8.b		; D0 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	bne  72.b		; D0 48
	lsr $08.b		; 46 08
	sbc ($FF.b),Y		; F1 FF
	cpx #$4608.w		; E0 08 46
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cpx #$4648.w		; E0 48 46
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	beq   8.b		; F0 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	beq  72.b		; F0 48
	lsr $08.b		; 46 08
	sbc ($FF.b),Y		; F1 FF
	brk $08.b		; 00 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	brk $48.b		; 00 48
	lsr $08.b		; 46 08
	sbc ($FF.b),Y		; F1 FF
	bpl   8.b		; 10 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	bpl  72.b		; 10 48
	lsr $08.b		; 46 08
	sbc ($FF.b),Y		; F1 FF
	jsr $4608.w		; 20 08 46
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	jsr $4648.w		; 20 48 46
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bmi   8.b		; 30 08
	lsr $48.b		; 46 48
	ora ($EF.b,X)		; 01 EF
	bmi  72.b		; 30 48
	lsr $08.b		; 46 08
	clc		; 18
	sbc ($FF.b),Y		; F1 FF
	bra   8.b		; 80 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bra  72.b		; 80 48
	pha		; 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bcc   8.b		; 90 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bcc  72.b		; 90 48
	pha		; 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	ldy #$4808.w		; A0 08 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldy #$4848.w		; A0 48 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bcs   8.b		; B0 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bcs  72.b		; B0 48
	pha		; 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	cpy #$4808.w		; C0 08 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cpy #$4848.w		; C0 48 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bne   8.b		; D0 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bne  72.b		; D0 48
	pha		; 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	cpx #$4808.w		; E0 08 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cpx #$4848.w		; E0 48 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	beq   8.b		; F0 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	beq  72.b		; F0 48
	pha		; 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	brk $08.b		; 00 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	brk $48.b		; 00 48
	pha		; 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bpl   8.b		; 10 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bpl  72.b		; 10 48
	pha		; 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	jsr $4808.w		; 20 08 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	jsr $4848.w		; 20 48 48
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bmi   8.b		; 30 08
	pha		; 48
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bmi  72.b		; 30 48
	pha		; 48
	php		; 08
	clc		; 18
	sbc ($FF.b),Y		; F1 FF
	bra   8.b		; 80 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bra  72.b		; 80 48
	lsr A		; 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bcc   8.b		; 90 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bcc  72.b		; 90 48
	lsr A		; 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	ldy #$4A08.w		; A0 08 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldy #$4A48.w		; A0 48 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bcs   8.b		; B0 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bcs  72.b		; B0 48
	lsr A		; 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	cpy #$4A08.w		; C0 08 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cpy #$4A48.w		; C0 48 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bne   8.b		; D0 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bne  72.b		; D0 48
	lsr A		; 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	cpx #$4A08.w		; E0 08 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cpx #$4A48.w		; E0 48 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	beq   8.b		; F0 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	beq  72.b		; F0 48
	lsr A		; 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	brk $08.b		; 00 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	brk $48.b		; 00 48
	lsr A		; 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bpl   8.b		; 10 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bpl  72.b		; 10 48
	lsr A		; 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	jsr $4A08.w		; 20 08 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	jsr $4A48.w		; 20 48 4A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	bmi   8.b		; 30 08
	lsr A		; 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	bmi  72.b		; 30 48
	lsr A		; 4A
	php		; 08
	bit $E9.b		; 24 E9
	ora [$80.b]		; 07 80
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$80.b],Y		; F7 80
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$80.b]		; E7 80
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$90.b]		; 07 90
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$90.b],Y		; F7 90
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$90.b]		; E7 90
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$A0.b]		; 07 A0
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$A0.b],Y		; F7 A0
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$A0.b]		; E7 A0
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$B0.b]		; 07 B0
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$B0.b],Y		; F7 B0
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$B0.b]		; E7 B0
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$C0.b]		; 07 C0
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$C0.b],Y		; F7 C0
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$C0.b]		; E7 C0
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$D0.b]		; 07 D0
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$D0.b],Y		; F7 D0
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$D0.b]		; E7 D0
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$E0.b]		; 07 E0
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$E0.b],Y		; F7 E0
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$E0.b]		; E7 E0
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$F0.b]		; 07 F0
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$F0.b],Y		; F7 F0
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$F0.b]		; E7 F0
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$00.b]		; 07 00
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$00.b],Y		; F7 00
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$00.b]		; E7 00
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$10.b]		; 07 10
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$10.b],Y		; F7 10
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$10.b]		; E7 10
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$20.b]		; 07 20
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$20.b],Y		; F7 20
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$20.b]		; E7 20
	pha		; 48
	jmp $E908.w		; 4C 08 E9
	ora [$30.b]		; 07 30
	php		; 08
	jmp $F948.w		; 4C 48 F9
	sbc [$30.b],Y		; F7 30
	php		; 08
	lsr $0948.w		; 4E 48 09
	sbc [$30.b]		; E7 30
	pha		; 48
	jmp $2408.w		; 4C 08 24
	sbc #$8007.w		; E9 07 80
	php		; 08
	rts		; 60

	pha		; 48
	sbc $80F7.w,Y		; F9 F7 80
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$80.b]		; E7 80
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$9007.w		; E9 07 90
	php		; 08
	rts		; 60

	pha		; 48
	sbc $90F7.w,Y		; F9 F7 90
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$90.b]		; E7 90
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$A007.w		; E9 07 A0
	php		; 08
	rts		; 60

	pha		; 48
	sbc $A0F7.w,Y		; F9 F7 A0
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$A0.b]		; E7 A0
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$B007.w		; E9 07 B0
	php		; 08
	rts		; 60

	pha		; 48
	sbc $B0F7.w,Y		; F9 F7 B0
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$B0.b]		; E7 B0
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$C007.w		; E9 07 C0
	php		; 08
	rts		; 60

	pha		; 48
	sbc $C0F7.w,Y		; F9 F7 C0
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$C0.b]		; E7 C0
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$D007.w		; E9 07 D0
	php		; 08
	rts		; 60

	pha		; 48
	sbc $D0F7.w,Y		; F9 F7 D0
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$D0.b]		; E7 D0
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$E007.w		; E9 07 E0
	php		; 08
	rts		; 60

	pha		; 48
	sbc $E0F7.w,Y		; F9 F7 E0
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$E0.b]		; E7 E0
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$F007.w		; E9 07 F0
	php		; 08
	rts		; 60

	pha		; 48
	sbc $F0F7.w,Y		; F9 F7 F0
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$F0.b]		; E7 F0
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$0007.w		; E9 07 00
	php		; 08
	rts		; 60

	pha		; 48
	sbc $00F7.w,Y		; F9 F7 00
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$00.b]		; E7 00
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$1007.w		; E9 07 10
	php		; 08
	rts		; 60

	pha		; 48
	sbc $10F7.w,Y		; F9 F7 10
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$10.b]		; E7 10
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$2007.w		; E9 07 20
	php		; 08
	rts		; 60

	pha		; 48
	sbc $20F7.w,Y		; F9 F7 20
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$20.b]		; E7 20
	pha		; 48
	rts		; 60

	php		; 08
	sbc #$3007.w		; E9 07 30
	php		; 08
	rts		; 60

	pha		; 48
	sbc $30F7.w,Y		; F9 F7 30
	php		; 08
	.db $62, $48, $09		; 62 48 09
	sbc [$30.b]		; E7 30
	pha		; 48
	rts		; 60

	php		; 08
	bit $E9.b		; 24 E9
	ora [$80.b]		; 07 80
	php		; 08
	stz $48.b		; 64 48
	sbc $80F7.w,Y		; F9 F7 80
	php		; 08
	ror $48.b		; 66 48
	ora #$80E7.w		; 09 E7 80
	pha		; 48
	stz $08.b		; 64 08
	sbc #$9007.w		; E9 07 90
	php		; 08
	stz $48.b		; 64 48
	sbc $90F7.w,Y		; F9 F7 90
	php		; 08
	ror $48.b		; 66 48
	ora #$90E7.w		; 09 E7 90
	pha		; 48
	stz $08.b		; 64 08
	sbc #$A007.w		; E9 07 A0
	php		; 08
	stz $48.b		; 64 48
	sbc $A0F7.w,Y		; F9 F7 A0
	php		; 08
	ror $48.b		; 66 48
	ora #$A0E7.w		; 09 E7 A0
	pha		; 48
	stz $08.b		; 64 08
	sbc #$B007.w		; E9 07 B0
	php		; 08
	stz $48.b		; 64 48
	sbc $B0F7.w,Y		; F9 F7 B0
	php		; 08
	ror $48.b		; 66 48
	ora #$B0E7.w		; 09 E7 B0
	pha		; 48
	stz $08.b		; 64 08
	sbc #$C007.w		; E9 07 C0
	php		; 08
	stz $48.b		; 64 48
	sbc $C0F7.w,Y		; F9 F7 C0
	php		; 08
	ror $48.b		; 66 48
	ora #$C0E7.w		; 09 E7 C0
	pha		; 48
	stz $08.b		; 64 08
	sbc #$D007.w		; E9 07 D0
	php		; 08
	stz $48.b		; 64 48
	sbc $D0F7.w,Y		; F9 F7 D0
	php		; 08
	ror $48.b		; 66 48
	ora #$D0E7.w		; 09 E7 D0
	pha		; 48
	stz $08.b		; 64 08
	sbc #$E007.w		; E9 07 E0
	php		; 08
	stz $48.b		; 64 48
	sbc $E0F7.w,Y		; F9 F7 E0
	php		; 08
	ror $48.b		; 66 48
	ora #$E0E7.w		; 09 E7 E0
	pha		; 48
	stz $08.b		; 64 08
	sbc #$F007.w		; E9 07 F0
	php		; 08
	stz $48.b		; 64 48
	sbc $F0F7.w,Y		; F9 F7 F0
	php		; 08
	ror $48.b		; 66 48
	ora #$F0E7.w		; 09 E7 F0
	pha		; 48
	stz $08.b		; 64 08
	sbc #$0007.w		; E9 07 00
	php		; 08
	stz $48.b		; 64 48
	sbc $00F7.w,Y		; F9 F7 00
	php		; 08
	ror $48.b		; 66 48
	ora #$00E7.w		; 09 E7 00
	pha		; 48
	stz $08.b		; 64 08
	sbc #$1007.w		; E9 07 10
	php		; 08
	stz $48.b		; 64 48
	sbc $10F7.w,Y		; F9 F7 10
	php		; 08
	ror $48.b		; 66 48
	ora #$10E7.w		; 09 E7 10
	pha		; 48
	stz $08.b		; 64 08
	sbc #$2007.w		; E9 07 20
	php		; 08
	stz $48.b		; 64 48
	sbc $20F7.w,Y		; F9 F7 20
	php		; 08
	ror $48.b		; 66 48
	ora #$20E7.w		; 09 E7 20
	pha		; 48
	stz $08.b		; 64 08
	sbc #$3007.w		; E9 07 30
	php		; 08
	stz $48.b		; 64 48
	sbc $30F7.w,Y		; F9 F7 30
	php		; 08
	ror $48.b		; 66 48
	ora #$30E7.w		; 09 E7 30
	pha		; 48
	stz $08.b		; 64 08
	ora $D8.b		; 05 D8
	clc		; 18
	sed		; F8
	dey		; 88
	brk $C8.b		; 00 C8
	inx		; E8
	php		; 08
	sed		; F8
	dey		; 88
	cop $C8.b		; 02 C8
	sed		; F8
	brk $00.b		; 00 00
	bra 104.b		; 80 68
	cpy #$00F8.w		; C0 F8 00
	sed		; F8
	bra 105.b		; 80 69
	cpy #$F800.w		; C0 00 F8
	jsr ($6A80.w,X)		; FC 80 6A
	cpy #$CA68.w		; C0 68 CA
	lda ($CA.b),Y		; B1 CA
	plx		; FA
	dex		; CA
	lda $CB.b,S		; A3 CB
	sed		; F8
	wai		; CB
	eor $D2CC.w		; 4D CC D2
	cpy $CD1B.w		; CC 1B CD
	tsb $0CE4.w		; 0C E4 0C
	inc $08.b,X		; F6 08
	brk $48.b		; 00 48
	pea $F6FC.w		; F4 FC F6
	php		; 08
	cop $48.b		; 02 48
	jmp.w [$F91C]		; DC 1C F9
	brk $66.b		; 00 66
	rti		; 40

	jmp.w [$011C]		; DC 1C 01
	brk $67.b		; 00 67
	rti		; 40

	cpx $14.b		; E4 14
	asl $00.b		; 06 00
	pla		; 68
	rti		; 40

	cpx $060C.w		; EC 0C 06
	brk $69.b		; 00 69
	rti		; 40

	pea $0604.w		; F4 04 06
	brk $6A.b		; 00 6A
	rti		; 40

	jsr ($06FC.w,X)		; FC FC 06
	brk $6B.b		; 00 6B
	rti		; 40

	tsb $F4.b		; 04 F4
	sed		; F8
	brk $6C.b		; 00 6C
	rti		; 40

	tsb $F4.b		; 04 F4
	brk $00.b		; 00 00
	adc $F240.w		; 6D 40 F2
	asl $EE.b		; 06 EE
	brk $6E.b		; 00 6E
	rti		; 40

	plx		; FA
	inc $00EE.w,X		; FE EE 00
	adc $010C40.l		; 6F 40 0C 01
	sbc $0408F1.l		; EF F1 08 04
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ora ($88.b,X)		; 01 88
	tsb $C8.b		; 04 C8
	ora ($DF.b),Y		; 11 DF
	cop $08.b		; 02 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	inx		; E8
	php		; 08
	php		; 08
	pha		; 48
	ora #$E9EF.w		; 09 EF E9
	brk $76.b		; 00 76
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ora ($80.b)		; 12 80
	php		; 08
	cpy #$DF19.w		; C0 19 DF
	ora ($80.b)		; 12 80
	ora #$09C0.w		; 09 C0 09
	sbc $768011.l		; EF 11 80 76
	cpy #$E711.w		; C0 11 E7
	sed		; F8
	bra   6.b		; 80 06
	cpy #$DF19.w		; C0 19 DF
	sed		; F8
	bra   7.b		; 80 07
	cpy #$E612.w		; C0 12 E6
	inc A		; 1A
	brk $77.b		; 00 77
	rti		; 40

	ora ($E6.b)		; 12 E6
	cpx #$7780.w		; E0 80 77
	cpy #$221C.w		; C0 1C 22
	dec $0803.w		; CE 03 08
	asl A		; 0A
	pha		; 48
	and ($BE.b)		; 32 BE
	ora $08.b,S		; 03 08
	tsb $2248.w		; 0C 48 22
	dec $0813.w		; CE 13 08
	asl $2248.w		; 0E 48 22
	dec $08D7.w		; CE D7 08
	jsr $2248.w		; 20 48 22
	dec $08E7.w		; CE E7 08
	jsl $BE3248.l		; 22 48 32 BE
	sbc [$08.b]		; E7 08
	bit $48.b		; 24 48
	inc A		; 1A
	dec $0019.w,X		; DE 19 00
	sei		; 78
	rti		; 40

	inc A		; 1A
	dec $0021.w,X		; DE 21 00
	adc $3A40.w,Y		; 79 40 3A
	ldx $0022.w,Y		; BE 22 00
	ply		; 7A
	rti		; 40

	and [$D1.b]		; 27 D1
	pld		; 2B
	brk $7B.b		; 00 7B
	rti		; 40

	and [$D1.b]		; 27 D1
	cmp $C07B80.l		; CF 80 7B C0
	inc A		; 1A
	dec $80D9.w,X		; DE D9 80
	adc $32C0.w,Y		; 79 C0 32
	dec $13.b		; C6 13
	bra  36.b		; 80 24
	cpy #$BE3A.w		; C0 3A BE
	ora ($80.b,S),Y		; 13 80
	and $C0.b		; 25 C0
	and ($C6.b)		; 32 C6
	tas		; 1B
	brk $7C.b		; 00 7C
	rti		; 40

	jsl $8023D6.l		; 22 D6 23 80
	jsr $2AC0.w		; 20 C0 2A
	dec $8023.w		; CE 23 80
	and ($C0.b,X)		; 21 C0
	and ($C6.b)		; 32 C6
	and $00.b,S		; 23 00
	adc $1240.w,X		; 7D 40 12
	inc $E1.b		; E6 E1
	brk $7E.b		; 00 7E
	rti		; 40

	inc A		; 1A
	dec $80E1.w,X		; DE E1 80
	sei		; 78
	cpy #$E612.w		; C0 12 E6
	ora $7E80.w,Y		; 19 80 7E
	cpy #$C632.w		; C0 32 C6
	cmp [$80.b],Y		; D7 80
	adc $32C0.w,X		; 7D C0 32
	dec $DF.b		; C6 DF
	bra 124.b		; 80 7C
	cpy #$D622.w		; C0 22 D6
	sbc [$80.b],Y		; F7 80
	asl A		; 0A
	cpy #$CE2A.w		; C0 2A CE
	sbc [$80.b],Y		; F7 80
	phd		; 0B
	cpy #$C632.w		; C0 32 C6
	sbc [$80.b],Y		; F7 80
	tsb $3AC0.w		; 0C C0 3A
	ldx $80F7.w,Y		; BE F7 80
	ora $3AC0.w		; 0D C0 3A
	ldx $80D8.w,Y		; BE D8 80
	ply		; 7A
	cpy #$F80E.w		; C0 0E F8
	sed		; F8
	sbc ($08.b),Y		; F1 08
	rol $48.b		; 26 48
	inx		; E8
	php		; 08
	cmp ($08.b,X)		; C1 08
	plp		; 28
	pha		; 48
	inx		; E8
	php		; 08
	cmp ($08.b),Y		; D1 08
	rol A		; 2A
	pha		; 48
	sed		; F8
	sed		; F8
	cmp ($08.b,X)		; C1 08
	bit $0848.w		; 2C 48 08
	inx		; E8
	cmp ($08.b,X)		; C1 08
	rol $F848.w		; 2E 48 F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	rti		; 40

	pha		; 48
	php		; 08
	inx		; E8
	cmp ($08.b),Y		; D1 08
	.db $42, $48		; 42 48
	sbc ($FD.b,S),Y		; F3 FD
	sbc ($08.b,X)		; E1 08
	mvp $03,$48		; 44 48 03
	sbc $08E1.w		; ED E1 08
	lsr $48.b		; 46 48
	ora ($F7.b,X)		; 01 F7
	lda $7F00.w,Y		; B9 00 7F
	rti		; 40

	ora #$B9EF.w		; 09 EF B9
	brk $80.b		; 00 80
	rti		; 40

	xba		; EB
	ora $00E1.w		; 0D E1 00
	sta ($40.b,X)		; 81 40
	sbc ($07.b),Y		; F1 07
	lda $8200.w,Y		; B9 00 82
	rti		; 40

	sbc $B9FF.w,Y		; F9 FF B9
	brk $83.b		; 00 83
	rti		; 40

	asl $EF01.w		; 0E 01 EF
	ldx $4808.w,Y		; BE 08 48
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	ldx $4A08.w,Y		; BE 08 4A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	dec $08.b,X		; D6 08
	jmp $0148.w		; 4C 48 01
	sbc $4E08E6.l		; EF E6 08 4E
	pha		; 48
	cmp $48BE11.l,X		; DF 11 BE 48
	lsr A		; 4A
	php		; 08
	sbc $48BE01.l		; EF 01 BE 48
	pha		; 48
	php		; 08
	sbc $48D601.l		; EF 01 D6 48
	jmp $EF08.w		; 4C 08 EF
	ora ($E6.b,X)		; 01 E6
	pha		; 48
	lsr $0D08.w		; 4E 08 0D
	xba		; EB
	dec $8400.w		; CE 00 84
	rti		; 40

	sbc [$11.b]		; E7 11
	dec $00.b,X		; D6 00
	sta $40.b		; 85 40
	ora ($E7.b),Y		; 11 E7
	dec $40.b,X		; D6 40
	sta $00.b		; 85 00
	xba		; EB
	ora $40CE.w		; 0D CE 40
	sty $00.b		; 84 00
	sbc ($05.b,S),Y		; F3 05
	dec $8600.w		; CE 00 86
	rti		; 40

	ora $F3.b		; 05 F3
	dec $8640.w		; CE 40 86
	brk $16.b		; 00 16
	inx		; E8
	php		; 08
	cld		; D8
	php		; 08
	rts		; 60

	pha		; 48
	php		; 08
	inx		; E8
	cld		; D8
	pha		; 48
	rts		; 60

	php		; 08
	sbc $0D.b,S		; E3 0D
	iny		; C8
	php		; 08
	.db $62, $48, $05		; 62 48 05
	xba		; EB
	iny		; C8
	php		; 08
	stz $48.b		; 64 48
	ora ($F7.b,X)		; 01 F7
	cpy #$8700.w		; C0 00 87
	rti		; 40

	ora #$C0EF.w		; 09 EF C0
	brk $88.b		; 00 88
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpy #$8900.w		; C0 00 89
	rti		; 40

	ora $C0DF.w,Y		; 19 DF C0
	brk $8A.b		; 00 8A
	rti		; 40

	sed		; F8
	brk $D8.b		; 00 D8
	brk $8B.b		; 00 8B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	iny		; C8
	rti		; 40

	stz $00.b		; 64 00
	sbc ($05.b,S),Y		; F3 05
	bne  64.b		; D0 40
	stz $00.b,X		; 74 00
	cpx $E80C.w		; EC 0C E8
	brk $8C.b		; 00 8C
	rti		; 40

	pea $E804.w		; F4 04 E8
	brk $8D.b		; 00 8D
	rti		; 40

	tsb $F4.b		; 04 F4
	inx		; E8
	rti		; 40

	sta $0C00.w		; 8D 00 0C
	cpx $40E8.w		; EC E8 40
	sty $0000.w		; 8C 00 00
	sed		; F8
	cld		; D8
	rti		; 40

	phb		; 8B
	brk $15.b		; 00 15
	sbc $C8.b,S		; E3 C8
	rti		; 40

	.db $62, $00, $15		; 62 00 15
	sbc $D0.b,S		; E3 D0
	rti		; 40

	adc ($00.b)		; 72 00
	cmp $40C019.l,X		; DF 19 C0 40
	txa		; 8A
	brk $E7.b		; 00 E7
	ora ($C0.b),Y		; 11 C0
	rti		; 40

	bit #$EF00.w		; 89 00 EF
	ora #$40C0.w		; 09 C0 40
	dey		; 88
	brk $F7.b		; 00 F7
	ora ($C0.b,X)		; 01 C0
	rti		; 40

	sta [$00.b]		; 87 00
	tsb $0CE4.w		; 0C E4 0C
	plx		; FA
	dey		; 88
	brk $C8.b		; 00 C8
	pea $FAFC.w		; F4 FC FA
	dey		; 88
	cop $C8.b		; 02 C8
	jmp.w [$FF1C]		; DC 1C FF
	bra 102.b		; 80 66
	cpy #$1CDC.w		; C0 DC 1C
	sbc [$80.b],Y		; F7 80
	adc [$C0.b]		; 67 C0
	cpx $14.b		; E4 14
	sbc ($80.b)		; F2 80
	pla		; 68
	cpy #$0CEC.w		; C0 EC 0C
	sbc ($80.b)		; F2 80
	adc #$F4C0.w		; 69 C0 F4
	tsb $F2.b		; 04 F2
	bra 106.b		; 80 6A
	cpy #$FCFC.w		; C0 FC FC
	sbc ($80.b)		; F2 80
	rtl		; 6B

	cpy #$F404.w		; C0 04 F4
	brk $80.b		; 00 80
	jmp ($04C0.w)		; 6C C0 04
	pea $80F8.w		; F4 F8 80
	adc $F2C0.w		; 6D C0 F2
	asl $0A.b		; 06 0A
	bra 110.b		; 80 6E
	cpy #$FEFA.w		; C0 FA FE
	asl A		; 0A
	bra 111.b		; 80 6F
	cpy #$F80E.w		; C0 0E F8
	sed		; F8
	sbc ($48.b),Y		; F1 48
	rol $08.b		; 26 08
	php		; 08
	inx		; E8
	cmp ($48.b,X)		; C1 48
	plp		; 28
	php		; 08
	php		; 08
	inx		; E8
	cmp ($48.b),Y		; D1 48
	rol A		; 2A
	php		; 08
	sed		; F8
	sed		; F8
	cmp ($48.b,X)		; C1 48
	bit $E808.w		; 2C 08 E8
	php		; 08
	cmp ($48.b,X)		; C1 48
	rol $F808.w		; 2E 08 F8
	sed		; F8
	cmp ($48.b),Y		; D1 48
	rti		; 40

	php		; 08
	inx		; E8
	php		; 08
	cmp ($48.b),Y		; D1 48
	.db $42, $08		; 42 08
	sbc $E1F3.w,X		; FD F3 E1
	pha		; 48
	mvp $ED,$08		; 44 08 ED
	ora $E1.b,S		; 03 E1
	pha		; 48
	lsr $08.b		; 46 08
	sbc [$01.b],Y		; F7 01
	lda $7F40.w,Y		; B9 40 7F
	brk $EF.b		; 00 EF
	ora #$40B9.w		; 09 B9 40
	bra   0.b		; 80 00
	ora $E1EB.w		; 0D EB E1
	rti		; 40

	sta ($00.b,X)		; 81 00
	ora [$F1.b]		; 07 F1
	lda $8240.w,Y		; B9 40 82
	brk $FF.b		; 00 FF
	sbc $40B9.w,Y		; F9 B9 40
	sta $00.b,S		; 83 00
	ror $D9CD.w,X		; 7E CD D9
	cmp $CE2E.w		; CD 2E CE
	eor [$CE.b]		; 47 CE
	rts		; 60

	dec $CEC1.w		; CE C1 CE
	bpl -49.b		; 10 CF
	ora $E712DE.l		; 0F DE 12 E7
	php		; 08
	brk $48.b		; 00 48
	inc $E702.w		; EE 02 E7
	php		; 08
	cop $48.b		; 02 48
	inc $E1F2.w,X		; FE F2 E1
	php		; 08
	tsb $48.b		; 04 48
	dec $F71A.w,X		; DE 1A F7
	brk $60.b		; 00 60
	rti		; 40

	inc $12.b		; E6 12
	sbc [$00.b],Y		; F7 00
	adc ($40.b,X)		; 61 40
	inc $F70A.w		; EE 0A F7
	brk $62.b		; 00 62
	rti		; 40

	inc $02.b,X		; F6 02
	sbc [$00.b],Y		; F7 00
	adc $40.b,S		; 63 40
	dec $DF1A.w,X		; DE 1A DF
	brk $64.b		; 00 64
	rti		; 40

	asl $E9EA.w		; 0E EA E9
	brk $65.b		; 00 65
	rti		; 40

	inc $F1FA.w,X		; FE FA F1
	brk $66.b		; 00 66
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	adc [$40.b]		; 67 40
	asl $F1EA.w		; 0E EA F1
	brk $68.b		; 00 68
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $6900.w		; ED 00 69
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $406A00.l,X		; DF 00 6A 40
	sbc $DFFF.w,Y		; F9 FF DF
	brk $6B.b		; 00 6B
	rti		; 40

	asl $12DE.w		; 0E DE 12
	cmp $480608.l,X		; DF 08 06 48
	dec $EF12.w,X		; DE 12 EF
	php		; 08
	php		; 08
	pha		; 48
	inc $DF02.w		; EE 02 DF
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $EF02.w		; EE 02 EF
	php		; 08
	tsb $0E48.w		; 0C 48 0E
	nop		; EA
	sbc [$00.b]		; E7 00
	jmp ($0E40.w)		; 6C 40 0E
	nop		; EA
	sbc $406D00.l		; EF 00 6D 40
	inc $DFFA.w,X		; FE FA DF
	brk $6E.b		; 00 6E
	rti		; 40

	inc $E7FA.w,X		; FE FA E7
	brk $6F.b		; 00 6F
	rti		; 40

	inc $EFFA.w,X		; FE FA EF
	brk $70.b		; 00 70
	rti		; 40

	inc $F7FA.w,X		; FE FA F7
	brk $71.b		; 00 71
	rti		; 40

	asl $F2.b		; 06 F2
	cpx $00.b		; E4 00
	adc ($40.b)		; 72 40
	asl $F2.b		; 06 F2
	cpx $7300.w		; EC 00 73
	rti		; 40

	asl $F2.b		; 06 F2
	pea $7400.w		; F4 00 74
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $7500.w		; ED 00 75
	rti		; 40

	tsb $FF.b		; 04 FF
	sbc ($DF.b),Y		; F1 DF
	php		; 08
	asl $0F48.w		; 0E 48 0F
	sbc ($DF.b,X)		; E1 DF
	pha		; 48
	asl $FF08.w		; 0E 08 FF
	sbc ($EF.b),Y		; F1 EF
	dey		; 88
	asl $0FC8.w		; 0E C8 0F
	sbc ($EF.b,X)		; E1 EF
	iny		; C8
	asl $0488.w		; 0E 88 04
	php		; 08
	inx		; E8
	cmp $482008.l,X		; DF 08 20 48
	clc		; 18
	cld		; D8
	cmp $482208.l,X		; DF 08 22 48
	php		; 08
	inx		; E8
	sbc $C82088.l		; EF 88 20 C8
	clc		; 18
	cld		; D8
	sbc $C82288.l		; EF 88 22 C8
	bpl  17.b		; 10 11
	cmp $2408F0.l,X		; DF F0 08 24
	pha		; 48
	and ($CF.b,X)		; 21 CF
	beq   8.b		; F0 08
	rol $48.b		; 26 48
	ora ($DF.b),Y		; 11 DF
	dec $2488.w,X		; DE 88 24
	iny		; C8
	and ($CF.b,X)		; 21 CF
	dec $2688.w,X		; DE 88 26
	iny		; C8
	trb $D6DC.w		; 1C DC D6
	brk $76.b		; 00 76
	rti		; 40

	bit $D4.b		; 24 D4
	dec $00.b,X		; D6 00
	adc [$40.b],Y		; 77 40
	ora $08DF.w,Y		; 19 DF 08
	brk $78.b		; 00 78
	rti		; 40

	and ($D7.b,X)		; 21 D7
	php		; 08
	brk $79.b		; 00 79
	rti		; 40

	and #$08CF.w		; 29 CF 08
	brk $7A.b		; 00 7A
	rti		; 40

	trb $E4.b		; 14 E4
	brk $00.b		; 00 00
	tda		; 7B
	rti		; 40

	trb $00DC.w		; 1C DC 00
	bra 118.b		; 80 76
	cpy #$DF19.w		; C0 19 DF
	dec $7880.w		; CE 80 78
	cpy #$D721.w		; C0 21 D7
	dec $7980.w		; CE 80 79
	cpy #$CF29.w		; C0 29 CF
	dec $7A80.w		; CE 80 7A
	cpy #$D424.w		; C0 24 D4
	brk $80.b		; 00 80
	adc [$C0.b],Y		; 77 C0
	trb $E4.b		; 14 E4
	dec $80.b,X		; D6 80
	tda		; 7B
	cpy #$0C0D.w		; C0 0D 0C
	cpx $D7.b		; E4 D7
	php		; 08
	plp		; 28
	pha		; 48
	cpx $0C.b		; E4 0C
	sbc [$08.b]		; E7 08
	rol A		; 2A
	pha		; 48
	cpx $0C.b		; E4 0C
	sbc [$08.b],Y		; F7 08
	bit $F448.w		; 2C 48 F4
	jsr ($08DF.w,X)		; FC DF 08
	rol $F448.w		; 2E 48 F4
	jsr ($08EF.w,X)		; FC EF 08
	rti		; 40

	pha		; 48
	tsb $EC.b		; 04 EC
	sbc [$08.b],Y		; F7 08
	.db $42, $48		; 42 48
	tsb $EC.b		; 04 EC
	sbc [$08.b]		; E7 08
	mvp $14,$48		; 44 48 14
	cpx $FF.b		; E4 FF
	brk $7C.b		; 00 7C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp [$00.b],Y		; D7 00
	adc $0440.w,X		; 7D 40 04
	pea $00DF.w		; F4 DF 00
	ror $1440.w,X		; 7E 40 14
	cpx $E7.b		; E4 E7
	brk $7F.b		; 00 7F
	rti		; 40

	pea $FF04.w		; F4 04 FF
	brk $80.b		; 00 80
	rti		; 40

	jsr ($FFFC.w,X)		; FC FC FF
	brk $81.b		; 00 81
	rti		; 40

	ora ($FC.b)		; 12 FC
	pea $08DF.w		; F4 DF 08
	lsr $48.b		; 46 48
	tsb $DFE4.w		; 0C E4 DF
	php		; 08
	pha		; 48
	pha		; 48
	cmp $08EF11.l,X		; DF 11 EF 08
	lsr A		; 4A
	pha		; 48
	sbc $08EF01.l		; EF 01 EF 08
	jmp $FF48.w		; 4C 48 FF
	sbc ($EF.b),Y		; F1 EF
	php		; 08
	lsr $0448.w		; 4E 48 04
	pea $00D7.w		; F4 D7 00
	.db $82, $40, $0C		; 82 40 0C
	cpx $00D7.w		; EC D7 00
	sta $40.b,S		; 83 40
	trb $E4.b		; 14 E4
	cmp [$00.b],Y		; D7 00
	sty $40.b		; 84 40
	ora $00FFE9.l		; 0F E9 FF 00
	sta $40.b		; 85 40
	pea $E704.w		; F4 04 E7
	brk $86.b		; 00 86
	rti		; 40

	cpx $14.b		; E4 14
	sbc [$00.b]		; E7 00
	sta [$40.b]		; 87 40
	cpx $E70C.w		; EC 0C E7
	brk $88.b		; 00 88
	rti		; 40

	cmp $00FF19.l,X		; DF 19 FF 00
	bit #$E740.w		; 89 40 E7
	ora ($FF.b),Y		; 11 FF
	brk $8A.b		; 00 8A
	rti		; 40

	sbc $00FF09.l		; EF 09 FF 00
	phb		; 8B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $408C00.l,X		; FF 00 8C 40
	sbc $00FFF9.l,X		; FF F9 FF 00
	sta $0740.w		; 8D 40 07
	sbc ($FF.b),Y		; F1 FF
	brk $8E.b		; 00 8E
	rti		; 40

	brk $00.b		; 00 00
	brk $46.b		; 00 46
	brk $86.b		; 00 86
	adc ($DC.b)		; 72 DC
	ora $0C.b		; 05 0C
	ora ($08.b)		; 12 08
	asl A		; 0A
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0800.w		; 20 00 08
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	sbc $F3FFFF.l,X		; FF FF FF F3
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	adc $FFFFFB.l,X		; 7F FB FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FEFC.w		; ED FC FE
	lda $FFFFFF.l,X		; BF FF FF FF
	cmp $FFFF.w,X		; DD FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	tyx		; BB
	sbc [$BB.b],Y		; F7 BB
	xce		; FB
	cmp $EF7F3B.l,X		; DF 3B 7F EF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp [$FB.b],Y		; D7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $BBFFFF.l,X		; FF FF FF BB
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $DDFFF7.l,X		; 7F F7 FF DD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $6FFFFF.l,X		; FF FF FF 6F
	sbc $FFFF7F.l		; EF 7F FF FF
	sbc $FDBFFF.l,X		; FF FF BF FD
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFDA.l,X		; FF DA FF FF
	lda $FEFFFF.l,X		; BF FF FF FE
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FF7.l,X		; FF F7 7F FF
	sbc $DAF3FF.l,X		; FF FF F3 DA
	inc $BFF9.w,X		; FE F9 BF
	sbc $FFFF6F.l,X		; FF 6F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFAF.l,X		; FF AF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFBF.w,X		; FD BF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFDF.l,X		; BF DF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFF7.l,X		; 7F F7 FF FF
	sbc $FFEF.w,X		; FD EF FF
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
	adc $5FFF76.l,X		; 7F 76 FF 5F
	sbc $FFD5FF.l,X		; FF FF D5 FF
	sbc $7FFFFF.l		; EF FF FF 7F
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $77FF.w,X		; FD FF 77
	sbc $F7FF.w,X		; FD FF F7
	sbc $F5FFFF.l,X		; FF FF FF F5
	sbc $FFF7FB.l,X		; FF FB F7 FF
	sbc $CE3FFF.l,X		; FF FF 3F CE
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $FFFFFF.l,X		; 5F FF FF FF
	sbc $FEFFFF.l		; EF FF FF FE
	sbc $FFFCFB.l,X		; FF FB FC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $EFBFFF.l,X		; FF FF BF EF
	sbc $FF7FFF.l		; EF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l		; EF FF FB FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFD.l,X		; FF FD FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CF737E.l,X		; FF 7E 73 CF
	sbc $FFFDBE.l,X		; FF BE FD FF
	sbc [$FF.b],Y		; F7 FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $5BFFFF.l,X		; FF FF FF 5B
	and $FFFF.w,X		; 3D FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFF6.l,X		; FF F6 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $BFBB.w,X		; DD BB BF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFDF7F.l		; EF 7F DF FF
	tyx		; BB
	plx		; FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FFFCFD.l,X		; FF FD FC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $9BFFD7.l,X		; DF D7 FF 9B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFEDF.l,X		; BF DF FE FF
	sbc $DF6FFF.l,X		; FF FF 6F DF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	lda $2F.b,X		; B5 2F
	plx		; FA
	inc $FEDF.w,X		; FE DF FE
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FEFFEF.l,X		; FF EF FF FE
	ror $FDFD.w,X		; 7E FD FD
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $7FFFFF.l		; EF FF FF 7F
	sbc #$FBFF.w		; E9 FF FB
	sbc $FFBF.w,X		; FD BF FF
	sbc $5EFF.w,X		; FD FF 5E
	sbc $FDFFFB.l,X		; FF FB FF FD
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FF77FF.l,X		; FF FF 77 FF
	lda $FFBFEF.l,X		; BF EF BF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $DFFFFD.l,X		; FF FD FF DF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFE7F.l		; EF 7F FE FF
	sbc $CEFBFF.l,X		; FF FF FB CE
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FFAFE7.l,X		; FF E7 AF FF
	sbc [$F6.b],Y		; F7 F6
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FDFF.w,Y		; F9 FF FD
	xce		; FB
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $BEFFFF.l,X		; FF FF FF BE
	sbc $FEF5AC.l,X		; FF AC F5 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	jsr ($FFFE.w,X)		; FC FE FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $FFBFDE.l,X		; FF DE BF FF
	sbc $FBEF.w,X		; FD EF FB
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFF.w,X		; FD FF FF
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
	tyx		; BB
	adc $7FFFFB.l,X		; 7F FB FF 7F
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FE5FFF.l,X		; FF FF 5F FE
	sbc $FF68FF.l,X		; FF FF 68 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b]		; E7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF727E.l,X		; FF 7E 72 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFD.w,X		; FE FD FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	cmp $FFFDFF.l,X		; DF FF FD FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FF5FFA.l,X		; FF FA 5F FF
	inc $FEFF.w,X		; FE FF FE
	adc $F5FFFF.l,X		; 7F FF FF F5
	sbc $FFFFDF.l,X		; FF DF FF FF
	adc $FFFFFE.l,X		; 7F FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FBFDEF.l,X		; FF EF FD FB
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	eor $7F77.w,X		; 5D 77 7F
	sbc $7EDFFF.l,X		; FF FF DF 7E
	tad		; 5B
	sbc $FFFFFF.l		; EF FF FF FF
	sta $FFFFFF.l,X		; 9F FF FF FF
	sbc $EFF7EE.l,X		; FF EE F7 EF
	sbc $FFFDAF.l,X		; FF AF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $2DFEB7.l,X		; FF B7 FE 2D
	sbc $AF7FFF.l,X		; FF FF 7F AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBBFFF.l,X		; FF FF BF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FFDD.w,X		; FE DD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFEF7.l,X		; FF F7 FE FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFB3FF.l,X		; FF FF B3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $30FFFF.l,X		; FF FF FF 30
	rep #$86		; C2 86
	lda ($FE.b),Y		; B1 FE
	adc ($E2.b,X)		; 61 E2
	ldy #$0880.w		; A0 80 08
	brk $9A.b		; 00 9A
.ACCU 16
.INDEX 16
	rep #$73		; C2 73
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	rti		; 40

	php		; 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	ora $00.b		; 05 00
	brk $11.b		; 00 11
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $00.b,X		; B4 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	inx		; E8
	and $AD.b		; 25 AD
	sty $14.b		; 84 14
	jmp $0141.w		; 4C 41 01
	ldy $94.b		; A4 94
	bra  32.b		; 80 20
	ora $00.b		; 05 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	trb $40.b		; 14 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B2.b		; 00 B2
	txs		; 9A
	sta $49CF3B.l,X		; 9F 3B CF 49
	and ($10.b)		; 32 10
	stz $84.b		; 64 84
	cpx $F0A0.w		; EC A0 F0
	phx		; DA
	cpx #$0048.w		; E0 48 00
	php		; 08
	jsl $024004.l		; 22 04 40 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $80.b		; 00 80
	tsb $01.b		; 04 01
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
	brk $02.b		; 00 02
	adc ($0C.b,S),Y		; 73 0C
	php		; 08
	ora $4834.w		; 0D 34 48
	jsr $9E00.w		; 20 00 9E
	bpl  20.b		; 10 14
	ora ($80.b),Y		; 11 80
	php		; 08
	tsb $0004.w		; 0C 04 00
	brk $00.b		; 00 00
	rts		; 60

	asl $20.b		; 06 20
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
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
	brk $1C.b		; 00 1C
	jmp $CC417A.l		; 5C 7A 41 CC
	sbc ($87.b),Y		; F1 87
	and $0705.w,Y		; 39 05 07
	sbc $7A.b		; E5 7A
	adc ($94.b,X)		; 61 94
	pla		; 68
	eor ($00.b,X)		; 41 00
	dey		; 88
	brk $00.b		; 00 00
	eor $80.b		; 45 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	rti		; 40

	bra   0.b		; 80 00
	ora $10.b,S		; 03 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	brk $86.b		; 00 86
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	dey		; 88
	bit $10.b		; 24 10
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
	brk $82.b		; 00 82
	bra  44.b		; 80 2C
	sta $08.b,S		; 83 08
	brk $C0.b		; 00 C0
	bmi  88.b		; 30 58
	brk $B0.b		; 00 B0
	phx		; DA
	cop $88.b		; 02 88
	brk $98.b		; 00 98
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl  80.b		; 10 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($48.b,X)		; 01 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A2.b		; 00 A2
	eor ($70.b),Y		; 51 70
	ora $3E.b		; 05 3E
	stz $20.b		; 64 20
	jsr $2000.w		; 20 00 20
	brk $0A.b		; 00 0A
	lda ($04.b,X)		; A1 04
	pha		; 48
	sta ($02.b,X)		; 81 02
	bra   4.b		; 80 04
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $62.b		; 00 62
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra   3.b		; 80 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
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
	brk $0D.b		; 00 0D
	jmp.w [$E080]		; DC 80 E0
	ora ($09.b),Y		; 11 09
	and ($21.b,X)		; 21 21
	asl $09.b		; 06 09
	ora ($00.b)		; 12 00
	jmp $0040.w		; 4C 40 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $1734.w		; 4E 34 17
	dex		; CA
	eor $78.b,S		; 43 78
	jmp ($B639.w,X)		; 7C 39 B6
	jsl $C71C1A.l		; 22 1A 1C C7
	bit $00.b		; 24 00
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bpl  36.b		; 10 24
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	ora $00.b		; 05 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
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
	sty $B0.b		; 84 B0
	cpx #$901D.w		; E0 1D 90
	and $84.b,S		; 23 84
	ldy $08.b		; A4 08
	rts		; 60

	bit $0040.w,X		; 3C 40 00
	adc ($40.b),Y		; 71 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cop $00.b		; 02 00
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
	tad		; 5B
	cmp $58.b,S		; C3 58
	sta $7A.b,X		; 95 7A
	cop $42.b		; 02 42
	adc $80.b,S		; 63 80
	rol $24.b		; 26 24
	clv		; B8
	dey		; 88
	brk $72.b		; 00 72
	sbc ($43.b,X)		; E1 43
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $00, $20		; 82 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $15.b		; 02 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ldy $3286.w		; AC 86 32
	asl $815A.w,X		; 1E 5A 81
	jsr $5A03.w		; 20 03 5A
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	bpl  32.b		; 10 20
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
	ldy $5C38.w,X		; BC 38 5C
	bpl 104.b		; 10 68
	iny		; C8
	rol $824B.w		; 2E 4B 82
	and ($B4.b)		; 32 B4
	ldy $1C26.w,X		; BC 26 1C
	ora ($04.b,S),Y		; 13 04
	ora ($00.b,X)		; 01 00
	brk $06.b		; 00 06
	ora #$0000.w		; 09 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	tsb $20.b		; 04 20
	brk $08.b		; 00 08
	brk $12.b		; 00 12
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1222.w		; 1C 22 12
	beq -94.b		; F0 A2
	bcc -126.b		; 90 82
	iny		; C8
	ora ($08.b)		; 12 08
	trb $0448.w		; 1C 48 04
	php		; 08
	brk $10.b		; 00 10
	rti		; 40

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
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $06.b		; 00 06
	jsl $D9A78A.l		; 22 8A A7 D9
	cmp #$1A1C.w		; C9 1C 1A
	bne  46.b		; D0 2E
	adc $1C.b,X		; 75 1C
	bcc   8.b		; 90 08
	tsb $70.b		; 04 70
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	trb $00.b		; 14 00
	brk $22.b		; 00 22
	brk $20.b		; 00 20
	ora ($C0.b,X)		; 01 C0
	brk $04.b		; 00 04
	jsr $5000.w		; 20 00 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	ora ($20.b,X)		; 01 20
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
	.db $82, $9C, $00		; 82 9C 00
	cop $90.b		; 02 90
	bit $E0.b		; 24 E0
	jsr $6128.w		; 20 28 61
	mvn $10,$82		; 54 82 10
	.db $42, $00		; 42 00
	cmp ($80.b,X)		; C1 80
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	sbc $DBFFFF.l,X		; FF FF FF DB
	and $75.b,X		; 35 75
	sbc $FFD3DF.l,X		; FF DF D3 FF
	sbc $FFFFFF.l		; EF FF FF FF
	adc [$7F.b],Y		; 77 7F
	sbc ($BE.b,S),Y		; F3 BE
	sbc $7F699F.l,X		; FF 9F 69 7F
	sbc $EF7EDF.l,X		; FF DF 7E EF
	sbc $EFCDFF.l,X		; FF FF CD EF
	and $FFFFF7.l,X		; 3F F7 FF FF
	sbc $FBD7FF.l,X		; FF FF D7 FB
	adc $FEFE.w		; 6D FE FE
	inc $EFDF.w,X		; FE DF EF
	sbc [$7F.b],Y		; F7 7F
	sbc [$FF.b],Y		; F7 FF
	adc $FFFFFE.l,X		; 7F FE FF FF
	xce		; FB
	sbc $FFF3FF.l,X		; FF FF F3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5EFFFF.l,X		; FF FF FF 5E
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBBFB.l,X		; FF FB BB FF
	sbc $DFFF5F.l,X		; FF 5F FF DF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FBFF.w,X		; FD FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FEFF.w,X		; FE FF FE
	cmp $FFDFCB.l,X		; DF CB DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFE.l,X		; FF FE DF FF
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
	inc $A60E.w,X		; FE 0E A6
	adc $FFFF5E.l,X		; 7F 5E FF FF
	ror $FF.b		; 66 FF
	xce		; FB
	sbc $FEDE.w,Y		; F9 DE FE
	lda $B7EFFF.l,X		; BF FF EF B7
	cmp $F7FE.w,Y		; D9 FE F7
	sbc $AFFFBE.l,X		; FF BE FF AF
	xba		; EB
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $EFFFFE.l,X		; FF FE FF EF
	eor $FF.b,X		; 55 FF
	lda $FDE7FF.l,X		; BF FF E7 FD
	sbc $EAFFFF.l,X		; FF FF FF EA
	sbc $F7FFFB.l,X		; FF FB FF F7
	sbc $FF7FFD.l,X		; FF FD 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $ACFFCD.l,X		; FF CD FF AC
	cmp [$FF.b],Y		; D7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $D7FFFF.l,X		; BF FF FF D7
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $FE7FFF.l,X		; FF FF 7F FE
	sbc $FBFF7F.l,X		; FF 7F FF FB
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
	sbc $F5FFFF.l,X		; FF FF FF F5
	lda $FFEEC9.l,X		; BF C9 EE FF
	sbc $FFFDAB.l,X		; FF AB FD FF
	xce		; FB
	lda $EFFFFF.l,X		; BF FF FF EF
	sbc $EDD7FF.l,X		; FF FF D7 ED
	sbc $DF7FDF.l,X		; FF DF 7F DF
	sbc $FFFF.w,X		; FD FF FF
	sbc [$EE.b],Y		; F7 EE
	and $FBB7FF.l,X		; 3F FF B7 FB
	sbc $CFFFDD.l,X		; FF DD FF CF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FEFBF7.l,X		; FF F7 FB FE
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFEF3F.l,X		; FF 3F EF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFEF.l,X		; FF EF BF FF
	sbc $FFFE.w,X		; FD FE FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	lda $FF7FFF.l,X		; BF FF 7F FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FBDDFA.l,X		; FF FA DD FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	lda $FFFFFF.l		; AF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DBFFFF.l,X		; FF FF FF DB
	sta $FB6E.w,X		; 9D 6E FB
	cmp $FFFFFF.l		; CF FF FF FF
	sbc $F7FFFF.l		; EF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($FD1D.w,X)		; FC 1D FD
	adc $FFAEDF.l,X		; 7F DF AE FF
	lda $FFBFFD.l,X		; BF FD BF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $BF375F.l,X		; FF 5F 37 BF
	plx		; FA
	plx		; FA
	xce		; FB
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFBF.w,X		; FD BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D7FFFF.l,X		; FF FF FF D7
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $F3FFDF.l,X		; FF DF FF F3
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	adc $79BFFF.l		; 6F FF BF 79
	sbc $FFFFEB.l,X		; FF EB FF FF
	sbc ($F7.b,S),Y		; F3 F7
	sbc $EFFEFC.l,X		; FF FC FE EF
	sbc $B79CFD.l,X		; FF FD 9C B7
	xce		; FB
	sbc $DE7FFE.l,X		; FF FE 7F DE
	sbc $AFFBFE.l,X		; FF FE FB AF
	inc $FEBF.w		; EE BF FE
	sbc $FFFDFF.l,X		; FF FF FD FF
	inc $7B6F.w,X		; FE 6F 7B
	lda $EF.b		; A5 EF
	inc $BFEF.w		; EE EF BF
	sbc [$FF.b],Y		; F7 FF
	sbc $7FFBFF.l,X		; FF FF FB 7F
	sbc $FFFDBB.l,X		; FF BB FD FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
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
	sbc $FDBFDF.l,X		; FF DF BF FD
	sbc $FFFF.w,X		; FD FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	cmp $FFFFFE.l,X		; DF FE FF FF
	sbc $F7FDF6.l,X		; FF F6 FD F7
	tyx		; BB
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $7BDF.w,X		; FD DF 7B
	sbc $FFF7BF.l,X		; FF BF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $6F73BF.l,X		; FF BF 73 6F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFB5F.l,X		; FF 5F FB 7F
	cmp $FEFFFF.l,X		; DF FF FF FE
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FDEF7E.l,X		; FF 7E EF FD
	sbc $BDFFDF.l,X		; FF DF FF BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFBF9F.l,X		; FF 9F BF EF
	sbc $FDFDFF.l,X		; FF FF FD FD
	sbc $ABAFFF.l,X		; FF FF AF AB
	sbc $FFFCFF.l,X		; FF FF FC FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $F7FFFF.l,X		; DF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFF.w,X		; FD FF FF
	tda		; 7B
	sbc $FFFFB7.l,X		; FF B7 FF FF
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
	sbc $CDFFFF.l,X		; FF FF FF CD
	stp		; DB
	eor $DDFF.w		; 4D FF DD
	sbc $BFFF77.l,X		; FF 77 FF BF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	rtl		; 6B

	ldx $3F.b,Y		; B6 3F
	sbc #$9BFF.w		; E9 FF 9B
	cmp $F7AFBF.l,X		; DF BF AF F7
	sbc $FF7CFF.l,X		; FF FF 7C FF
	sbc $BFFDFF.l,X		; FF FF FD BF
	sbc $CFD7DF.l,X		; FF DF D7 CF
	sbc $FBFF7F.l,X		; FF 7F FF FB
	rol $FFFF.w,X		; 3E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFF0F.l,X		; FF 0F FF FB
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	plx		; FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEFFFF.l,X		; FF FF FF EE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFEFFE.l,X		; FF FE EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FDFFFF.l,X		; BF FF FF FD
	lda $FFFBBF.l		; AF BF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $F6FFFF.l,X		; FF FF FF F6
	sbc $FFBE.w,X		; FD BE FF
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
	tyx		; BB
	ldx $FDF6.w,Y		; BE F6 FD
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $6FDFFB.l,X		; FF FB DF 6F
	inc $FFFF.w,X		; FE FF FF
	sbc $F86FFF.l,X		; FF FF 6F F8
	cmp $FFDFFF.l,X		; DF FF DF FF
	lda $F7FBFF.l,X		; BF FF FB F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $6CFE77.l,X		; FF 77 FE 6C
	sbc $FF3DFF.l,X		; FF FF 3D FF
	inc $BFFF.w,X		; FE FF BF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $6FFFFF.l,X		; FF FF FF 6F
	xce		; FB
	xce		; FB
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
	sbc $EF7FB7.l,X		; FF B7 7F EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	cmp $FFFF7F.l,X		; DF 7F FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l		; EF FF F7 FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	tsb $43.b		; 04 43
	lsr A		; 4A
	jsr ($E66C.w,X)		; FC 6C E6
	and $62.b,X		; 35 62
	ror $F9E7.w,X		; 7E E7 F9
	bit $0C66.w,X		; 3C 66 0C
	plp		; 28
	cpy $0080.w		; CC 80 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bpl  48.b		; 10 30
	ora ($00.b,X)		; 01 00
	brk $09.b		; 00 09
	jsr $4100.w		; 20 00 41
	ora ($80.b,X)		; 01 80
	php		; 08
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bmi -128.b		; 30 80
	brk $C8.b		; 00 C8
	bcc   8.b		; 90 08
	brk $00.b		; 00 00
	rol $00.b		; 26 00
	php		; 08
	bra  17.b		; 80 11
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
	dec $A50F.w,X		; DE 0F A5
	brk $9B.b		; 00 9B
	bcc  35.b		; 90 23
	mvp $02,$0D		; 44 0D 02
	lda $1903.w		; AD 03 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $06.b		; 00 06
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	lda $4551.w,X		; BD 51 45
	stx $7F.b,Y		; 96 7F
	ldx #$77F9.w		; A2 F9 77
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	rti		; 40

	sty $66.b,X		; 94 66
	ora $2A.b,S		; 03 2A
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$4812.w		; C0 12 48
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	clc		; 18
	brk $89.b		; 00 89
	ora ($00.b,X)		; 01 00
	tsb $08.b		; 04 08
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
	brk $9A.b		; 00 9A
	bcc  16.b		; 90 10
	brk $82.b		; 00 82
	lsr $53.b		; 46 53
	cpx #$00A0.w		; E0 A0 00
	clc		; 18
	eor ($66.b,X)		; 41 66
	lda ($00.b,X)		; A1 00
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	cop $00.b		; 02 00
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
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
	ora $3B.b		; 05 3B
	tay		; A8
	jsr $245F.w		; 20 5F 24
	bra -52.b		; 80 CC
	ldx $E1CC.w,Y		; BE CC E1
	tsb $82.b		; 04 82
	rti		; 40

	ora #$C040.w		; 09 40 C0
	bra  32.b		; 80 20
	rti		; 40

	jsl $044000.l		; 22 00 40 04
	brk $A0.b		; 00 A0
	rti		; 40

	clc		; 18
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	and ($00.b,X)		; 21 00
	bcc   0.b		; 90 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	jsr $0480.w		; 20 80 04
	brk $10.b		; 00 10
	bra   0.b		; 80 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	adc ($18.b),Y		; 71 18
	ldy $CA00.w,X		; BC 00 CA
	bpl -126.b		; 10 82
	sbc $04A0.w,Y		; F9 A0 04
	cop $80.b		; 02 80
	ora $60.b,S		; 03 60
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
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
	sbc ($1C.b),Y		; F1 1C
	inc $85.b		; E6 85
	cmp #$5522.w		; C9 22 55
	rti		; 40

	and $4A.b		; 25 4A
	sbc $82.b,X		; F5 82
	ora ($6C.b,X)		; 01 6C
	cop $40.b		; 02 40
	brk $04.b		; 00 04
	tsb $42.b		; 04 42
	ora $00.b		; 05 00
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	ora ($21.b),Y		; 11 21
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	bra   2.b		; 80 02
	dey		; 88
	sec		; 38
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	rts		; 60

	bra   1.b		; 80 01
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  65.b		; 80 41
	bit $62C8.w		; 2C C8 62
	tsb $21.b		; 04 21
	sta $C0B9.w,X		; 9D B9 C0
	jsr $8018.w		; 20 18 80
	tsb $0240.w		; 0C 40 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	bra   0.b		; 80 00
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
	ora ($08.b,X)		; 01 08
	sed		; F8
	dec $83.b		; C6 83
	and $E0B2.w,X		; 3D B2 E0
	bcs   0.b		; B0 00
	inc $BA.b,X		; F6 BA
	eor $14.b,S		; 43 14
	cop $70.b		; 02 70
	plp		; 28
	bcc   0.b		; 90 00
	tsb $00.b		; 04 00
	bpl  77.b		; 10 4D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	rti		; 40

	eor ($00.b),Y		; 51 00
	ora $00.b,S		; 03 00
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sta ($02.b,X)		; 81 02
	jsr $0024.w		; 20 24 00
	brk $11.b		; 00 11
	cop $00.b		; 02 00
	rti		; 40

	cpy #$0421.w		; C0 21 04
	brk $00.b		; 00 00
	ora #$8004.w		; 09 04 80
	brk $06.b		; 00 06
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
	brk $22.b		; 00 22
	tsb $34.b		; 04 34
	ora #$0912.w		; 09 12 09
	brk $06.b		; 00 06
	brk $20.b		; 00 20
	bmi  64.b		; 30 40
	dey		; 88
	txs		; 9A
	eor ($40.b,X)		; 41 40
	ora ($41.b,X)		; 01 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $02.b		; 02 02
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txa		; 8A
	tsb $4FDA.w		; 0C DA 4F
	cpy $3486.w		; CC 86 34
	bne -108.b		; D0 94
	bcs  20.b		; B0 14
	adc $EA.b,S		; 63 EA
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0401.w		; 20 01 04
	asl $00.b,X		; 16 00
	ora $01.b		; 05 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $40.b		; 00 40
	tsb $0140.w		; 0C 40 01
	sta ($80.b,X)		; 81 80
	bpl   0.b		; 10 00
	bra   4.b		; 80 04
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	bpl -112.b		; 10 90
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $14.b		; 02 14
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
	brk $AC.b		; 00 AC
	tsb $55.b		; 04 55
	txa		; 8A
	lda ($01.b,X)		; A1 01
	lda ($05.b,X)		; A1 05
	iny		; C8
	and $C04A.w		; 2D 4A C0
	bpl  84.b		; 10 54
	bmi -128.b		; 30 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0004.w		; 20 04 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4100.w		; 20 00 41
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
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
	brk $93.b		; 00 93
	inc $2D.b,X		; F6 2D
	sed		; F8
	sbc ($3D.b)		; F2 3D
	ldx $D0.b		; A6 D0
	dec $06E0.w		; CE E0 06
	ora ($C9.b,X)		; 01 C9
	tya		; 98
	trb $02.b		; 14 02
	bvc   2.b		; 50 02
	tsb $0100.w		; 0C 00 01
	php		; 08
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	pha		; 48
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	rol $00.b,X		; 36 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	dey		; 88
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $05.b		; 04 05
	brk $C0.b		; 00 C0
	ora ($02.b,X)		; 01 02
	brk $04.b		; 00 04
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
	ora ($A0.b)		; 12 A0
	pei ($2E.b)		; D4 2E
	rti		; 40

	bne  33.b		; D0 21
	sty $A3.b		; 84 A3
	ldx #$0000.w		; A2 00 00
	cop $C0.b		; 02 C0
	sta ($00.b),Y		; 91 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	bcc   0.b		; 90 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sec		; 38
	ora ($00.b)		; 12 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rol $5B.b,X		; 36 5B
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
	asl $3481.w,X		; 1E 81 34
	inc A		; 1A
	sta ($C0.b,X)		; 81 C0
	.db $62, $20, $3F		; 62 20 3F
	jsl $018001.l		; 22 01 80 01
	stz $01.b		; 64 01
	bit $40.b		; 24 40
	ora $81.b		; 05 81
	and ($00.b,X)		; 21 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	php		; 08
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	cop $20.b		; 02 20
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	bne   0.b		; D0 00
	pha		; 48
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	brk $41.b		; 00 41
	cop $80.b		; 02 80
	brk $82.b		; 00 82
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
	stz $98.b		; 64 98
	cli		; 58
	rep #$07		; C2 07
	clc		; 18
	jsr $5000.w		; 20 00 50
	asl $D192.w		; 0E 92 D1
	brk $00.b		; 00 00
	ora ($44.b,X)		; 01 44
	brk $00.b		; 00 00
	ora $40.b		; 05 40
	inc A		; 1A
	php		; 08
	bit $00.b,X		; 34 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	tsx		; BA
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $BF7F.w,X		; FD 7F BF
	sbc $FFFD.w,X		; FD FD FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	wai		; CB
	sbc [$7B.b],Y		; F7 7B
	adc $7EFBDE.l,X		; 7F DE FB 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $7FFBEF.l,X		; FF EF FB 7F
	adc $FFFFDF.l,X		; 7F DF FF FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $7FFFBF.l		; EF BF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFEFFF.l,X		; FF FF EF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7CBFF.l,X		; FF FF CB F7
	xce		; FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	adc $FFFFFF.l,X		; 7F FF FF FF
	and $BFFFFF.l,X		; 3F FF FF BF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	cmp $FFF7FE.l,X		; DF FE F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	lda $FFF71B.l,X		; BF 1B F7 FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	xce		; FB
	lda $FFFFFB.l,X		; BF FB FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	adc $FFBFEE.l,X		; 7F EE BF FF
	lda $FFFCFF.l,X		; BF FF FC FF
	sbc $FEFBFF.l		; EF FF FB FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	lda $FFF7.w,X		; BD F7 FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and [$FF.b],Y		; 37 FF
	sbc [$FF.b],Y		; F7 FF
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
	sbc $F9F7FF.l,X		; FF FF F7 F9
	sbc $FFDFF7.l,X		; FF F7 DF FF
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $F6FF.w,X		; FD FF F6
	lda $BF77.w,Y		; B9 77 BF
	sbc $BFFEFF.l,X		; FF FF FE BF
	xce		; FB
	sbc $FFFEDF.l,X		; FF DF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFBFBF.l,X		; 7F BF BF FF
	sbc $FF5FFB.l,X		; FF FB 5F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFD.l,X		; FF FD FF F7
	sbc ($FF.b,S),Y		; F3 FF
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
	sbc $FEFF5E.l,X		; FF 5E FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $BFFFFF.l,X		; BF FF FF BF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFDA.w,Y		; F9 DA FF
	sbc $FFFF7F.l		; EF 7F FF FF
	sbc $FDFEFF.l		; EF FF FE FD
	sbc $FBFBFF.l,X		; FF FF FB FB
	sbc $DFEF.w		; ED EF DF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $BFF7EF.l,X		; FF EF F7 BF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $F7.b,X		; F5 F7
	sbc $FFFFFB.l,X		; FF FB FF FF
	adc $FEBF.w,X		; 7D BF FE
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
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
	xce		; FB
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	adc $BFFFFF.l,X		; 7F FF FF BF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F77FFF.l,X		; FF FF 7F F7
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFD7FD.l,X		; FF FD D7 FF
	sbc $FAF7.w,X		; FD F7 FA
	sbc $FDFFFF.l,X		; FF FF FF FD
	adc $F7F7FF.l,X		; 7F FF F7 F7
	xce		; FB
	sbc $FFDE5E.l,X		; FF 5E DE FF
	sbc $FF6FFE.l,X		; FF FE 6F FF
	adc $DFFFFF.l,X		; 7F FF FF DF
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FDFF.w,X		; FD FF FD
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFEFF.l,X		; BF FF FE FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFBFF.l,X		; FF FF FB FB
	stp		; DB
	sbc $FEFFF7.l,X		; FF F7 FF FE
	sbc $FFFF7F.l,X		; FF 7F FF FF
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
	sbc $73BFFF.l,X		; FF FF BF 73
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $C5FFFF.l,X		; FF FF FF C5
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc [$FF.b],Y		; F7 FF
	adc $EE7BE7.l,X		; 7F E7 7B EE
	eor $FF7FFF.l,X		; 5F FF 7F FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $5BDEE7.l,X		; FF E7 DE 5B
	sbc ($FE.b,S),Y		; F3 FE
	xce		; FB
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFE.w,X		; FD FE FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7EFE.l,X		; FF FE 7E FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFDF.l,X		; FF DF FF BF
	xce		; FB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFBFFE.l,X		; FF FE BF FF
	tsx		; BA
	sbc $FFF5FF.l,X		; FF FF F5 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $DFFF.w,X		; FE FF DF
	sbc [$F7.b],Y		; F7 F7
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tsx		; BA
	sbc $FE5F7A.l,X		; FF 7A 5F FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FAC7FF.l,X		; FF FF C7 FA
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFF.w,X		; DD FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFAFF.l,X		; DF FF FA FF
	sbc $FFDE7F.l,X		; FF 7F DE FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $FBEF.w,X		; FE EF FB
	adc $FFFFFF.l		; 6F FF FF FF
	sbc $FFFF5F.l,X		; FF 5F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc ($FF.b,S),Y		; 73 FF
	sbc $FF3EFF.l,X		; FF FF 3E FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $F1FEFB.l,X		; FF FB FE F1
	sbc $FEFFFF.l,X		; FF FF FF FE
	cmp $FFB7FF.l,X		; DF FF B7 FF
	sbc $FFEFFB.l,X		; FF FB EF FF
	sbc $BFFFF7.l,X		; FF F7 FF BF
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	sbc $FF7F.w,X		; FD 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBD.l,X		; FF BD FF FF
	sbc $FDEFFB.l,X		; FF FB EF FD
	sbc $FFF7FB.l,X		; FF FB F7 FF
	xce		; FB
	sbc $E9FDF7.l		; EF F7 FD E9
	stp		; DB
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $8290DF.l,X		; FF DF 90 82
	bpl -28.b		; 10 E4
	jmp $2AD4.w		; 4C D4 2A
	tay		; A8
	tsb $82.b		; 04 82
	cpx #$8040.w		; E0 40 80
	sta $00.b,S		; 83 00
	brk $50.b		; 00 50
	brk $04.b		; 00 04
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	bcs   4.b		; B0 04
	brk $C0.b		; 00 C0
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	bpl  66.b		; 10 42
	brk $00.b		; 00 00
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	dey		; 88
	bpl  16.b		; 10 10
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ror $80.b		; 66 80
	cmp $0439.w,Y		; D9 39 04
	bra -112.b		; 80 90
	eor ($02.b,X)		; 41 02
	bvs  64.b		; 70 40
	plp		; 28
	bra -32.b		; 80 E0
	brk $31.b		; 00 31
	php		; 08
	brk $05.b		; 00 05
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $86.b		; 00 86
	lda ($72.b)		; B2 72
	lda $51.b		; A5 51
	eor ($1E.b)		; 52 1E
	bpl  18.b		; 10 12
	and $06.b,S		; 23 06
	cpx #$5209.w		; E0 09 52
	jsr $0000.w		; 20 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	sta ($40.b,X)		; 81 40
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	brk $02.b		; 00 02
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
	eor $32.b		; 45 32
	sbc $0122.w,Y		; F9 22 01
	pha		; 48
	asl $EC.b		; 06 EC
	and $0A.b,S		; 23 0A
	sei		; 78
	brk $72.b		; 00 72
	ora ($24.b),Y		; 11 24
	.db $62, $00, $10		; 62 00 10
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $90.b		; 00 90
	cop $28.b		; 02 28
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
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
	eor [$61.b]		; 47 61
	asl $60.b,X		; 16 60
	asl A		; 0A
	jsr $40BC.w		; 20 BC 40
	cmp [$09.b],Y		; D7 09
	dex		; CA
	dey		; 88
	.db $42, $90		; 42 90
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	jsr $0404.w		; 20 04 04
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	jsr $4020.w		; 20 20 40
	brk $80.b		; 00 80
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
	sta ($42.b,S),Y		; 93 42
	jsl $248803.l		; 22 03 88 24
	sbc $02.b,S		; E3 02
	txa		; 8A
	tay		; A8
	eor ($80.b),Y		; 51 80
	tsb $23.b		; 04 23
	inc $80.b,X		; F6 80
	brk $04.b		; 00 04
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsl $000004.l		; 22 04 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	php		; 08
	tsb $0A.b		; 04 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $4A.b,S		; A3 4A
	adc ($10.b)		; 72 10
	jsr $F00A.w		; 20 0A F0
	bra 110.b		; 80 6E
	clc		; 18
	ldy $20.b,X		; B4 20
	sta ($15.b,X)		; 81 15
	tsb $002E.w		; 0C 2E 00
	eor ($80.b,X)		; 41 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $44.b		; 00 44
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	php		; 08
	bmi   0.b		; 30 00
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	clc		; 18
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
	adc $F331.w,Y		; 79 31 F3
	asl A		; 0A
	ora $20.b,S		; 03 20
	brk $81.b		; 00 81
	lda $40.b,S		; A3 40
	ldy #$22E2.w		; A0 E2 22
	sta ($80.b,X)		; 81 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	php		; 08
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($02.b,X)		; 81 02
	rep #$00		; C2 00
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   1.b		; 50 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tas		; 1B
	tsb $73.b		; 04 73
	bcc   0.b		; 90 00
	php		; 08
	brk $00.b		; 00 00
	ldx $141A.w,Y		; BE 1A 14
	iny		; C8
	jmp $0514.w		; 4C 14 05
	tsb $00.b		; 04 00
	clc		; 18
	brk $01.b		; 00 01
	bra  16.b		; 80 10
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	ora ($02.b,X)		; 01 02
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora ($10.b,X)		; 01 10
	.db $42, $80		; 42 80
	ora ($0C.b,X)		; 01 0C
	brk $00.b		; 00 00
	cop $02.b		; 02 02
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
	phd		; 0B
	bvc   2.b		; 50 02
	asl $1100.w		; 0E 00 11
	ror $16.b		; 66 16
	.db $42, $30		; 42 30
	cmp ($02.b,S),Y		; D3 02
	brk $54.b		; 00 54
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $80.b		; 00 80
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	stz $1E.b		; 64 1E
	ror $40A4.w		; 6E A4 40
	ldx #$F5D4.w		; A2 D4 F5
	phb		; 8B
	stx $02.b		; 86 02
	bpl  10.b		; 10 0A
	cop $80.b		; 02 80
	tsb $60.b		; 04 60
	brk $00.b		; 00 00
	eor ($10.b,X)		; 41 10
	brk $03.b		; 00 03
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	cop $80.b		; 02 80
	brk $20.b		; 00 20
	ora ($04.b,X)		; 01 04
	ora $00.b		; 05 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bra  85.b		; 80 55
	brk $04.b		; 00 04
	ora ($50.b,X)		; 01 50
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	mvp $C0,$F7		; 44 F7 C0
	sbc #$88C9.w		; E9 C9 88
	brk $18.b		; 00 18
	brk $05.b		; 00 05
	php		; 08
	ora $01.b		; 05 01
	lsr $0000.w		; 4E 00 00
	jsr $0048.w		; 20 48 00
	bit $00.b		; 24 00
	rti		; 40

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $B3.b		; 00 B3
	rti		; 40

	ora $A011.w		; 0D 11 A0
	and $CC.b,S		; 23 CC
	phy		; 5A
	cpy $92.b		; C4 92
	ora ($EF.b,X)		; 01 EF
	stx $84.b		; 86 84
	bvc  32.b		; 50 20
	brk $00.b		; 00 00
	ora ($02.b)		; 12 02
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	sta ($60.b)		; 92 60
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora ($80.b,X)		; 01 80
	ora $58A020.l		; 0F 20 A0 58
	jsl $800020.l		; 22 20 00 80
	stz $8069.w		; 9C 69 80
	.db $82, $30, $08		; 82 30 08
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	rti		; 40

	bra   0.b		; 80 00
	tsb $0000.w		; 0C 00 00
	ora $10.b,S		; 03 10
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
	sec		; 38
	adc ($C6.b)		; 72 C6
	bmi  12.b		; 30 0C
	ldx $0F.b,Y		; B6 0F
	eor ($5C.b,X)		; 41 5C
	dex		; CA
	iny		; C8
	sbc ($28.b,X)		; E1 28
	cpy $12.b		; C4 12
	bra  64.b		; 80 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rti		; 40

	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bvc   0.b		; 50 00
	brk $10.b		; 00 10
	pha		; 48
	php		; 08
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	jsl $845448.l		; 22 48 54 84
	bit $0902.w		; 2C 02 09
	tyx		; BB
	phd		; 0B
	ora [$E0.b],Y		; 17 E0
.INDEX 16
	rep #$99		; C2 99
	php		; 08
	tay		; A8
	and [$20.b],Y		; 37 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $10.b		; 00 10
	sty $08.b		; 84 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	ldy #$8000.w		; A0 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	bpl -128.b		; 10 80
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $52.b		; 00 52
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $00		; Opcode 00 overrunning bank boundry at 07FFFE. Skipping.
	.db $1C		; Opcode 1C overrunning bank boundry at 07FFFF. Skipping.
.ENDS
