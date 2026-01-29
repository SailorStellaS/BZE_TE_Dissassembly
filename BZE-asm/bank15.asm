.BANK 15 SLOT 0
.ORG $0000

.SECTION "Bank15" FORCE

	brk $00.b		; 00 00
	ora $073800.l		; 0F 00 38 07
	pha		; 48
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
	bpl  96.b		; 10 60
	cpx #$1778.w		; E0 78 17
	cmp [$8C.b],Y		; D7 8C
	sta ($80.b,X)		; 81 80
	pla		; 68
	beq  -1.b		; F0 FF
	sbc $C7FF7F.l,X		; FF 7F FF C7
	lda $B00060.l,X		; BF 60 00 B0
	jsr $2023.w		; 20 23 20
	sta [$78.b]		; 87 78
	brk $FF.b		; 00 FF
	ror $1FFF.w,X		; 7E FF 1F
	sbc $007F80.l,X		; FF 80 7F 00
	brk $00.b		; 00 00
	cpy #$7000.w		; C0 00 70
	bra  40.b		; 80 28
	bpl  56.b		; 10 38
	rti		; 40

	dey		; 88
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	jmp.w [$00FC]		; DC FC 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	cpy $00.b		; C4 00
	inc $C0.b,X		; F6 C0
	sbc $43FF0C.l,X		; FF 0C FF 43
	eor ($B1.b,S),Y		; 53 B1
	lda $A7ABA8.l		; AF A8 AB A7
	ldy #$48.b		; A0 48
	pha		; 48
	eor ($2F.b,X)		; 41 2F
	sty $D203.w		; 8C 03 D2
	ora $FC02.w		; 0D 02 FC
	sta ($F0.b,X)		; 81 F0
	ldx $F2.b		; A6 F2
	ora $F007F0.l		; 0F F0 07 F0
	cop $F2.b		; 02 F2
	brk $7C.b		; 00 7C
	ora ($3C.b,X)		; 01 3C
	sed		; F8
	xba		; EB
	tad		; 5B
	bne  15.b		; D0 0F
	sbc $DF1A8A.l,X		; FF 8A 1A DF
	ora $F5DF.w,X		; 1D DF F5
	ora $F5.b,X		; 15 F5
	inc A		; 1A
	inx		; E8
	rts		; 60

	tsb $A0F7.w		; 0C F7 A0
	ora $15FF00.l		; 0F 00 FF 15
	sbc $2A3F02.l,X		; FF 02 3F 2A
	ora $05ED0A.l,X		; 1F 0A ED 05
	sta $9966.w,Y		; 99 66 99
	ror $58.b		; 66 58
	and [$48.b]		; 27 48
	and [$48.b],Y		; 37 48
	and [$4C.b],Y		; 37 4C
	and ($2C.b,S),Y		; 33 2C
	ora ($2C.b,S),Y		; 13 2C
	ora ($66.b,S),Y		; 13 66
	brk $66.b		; 00 66
	brk $27.b		; 00 27
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $F6.b		; 00 F6
	bvc  -9.b		; 50 F7
	bvc  -9.b		; 50 F7
	bpl  -9.b		; 10 F7
	bpl 114.b		; 10 72
	bcc 121.b		; 90 79
	bit #$7F.b		; 89 7F
	stx $3F.b		; 86 3F
	cpy #$5F.b		; C0 5F
	ora $1F0F5F.l		; 0F 5F 0F 1F
	ora $9F0F1F.l		; 0F 1F 0F 9F
	ora $86068F.l		; 0F 8F 06 86
	brk $C0.b		; 00 C0
	brk $D2.b		; 00 D2
	cmp ($7C.b,S),Y		; D3 7C
	adc $807F70.l,X		; 7F 70 7F 80
	sbc $10FF88.l,X		; FF 88 FF 10
	inc $02FF.w,X		; FE FF 02
	inc $FC04.w,X		; FE 04 FC
	jsr $82F2.w		; 20 F2 82
	cmp $F38D.w		; CD 8D F3
	adc ($C2.b,S),Y		; 73 C2
	lsr A		; 4A
	ora ($31.b,X)		; 01 31
	ora $01.b,S		; 03 01
	ora $01.b		; 05 01
	bit $CF.b		; 24 CF
	bit $CE.b		; 24 CE
	bit $DE.b,X		; 34 DE
	jsr $A8DE.w		; 20 DE A8
	dec $DC88.w,X		; DE 88 DC
	inx		; E8
	jsr ($FCC8.w,X)		; FC C8 FC
	lda ($82.b)		; B2 82
	bcs -128.b		; B0 80
	ldy #$80.b		; A0 80
	bit $14.b,X		; 34 14
	cpx $44.b		; E4 44
	cpx #$40.b		; E0 40
	bra   0.b		; 80 00
	ldy #$20.b		; A0 20
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	phd		; 0B
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $16.b		; 00 16
	php		; 08
	asl $1E01.w,X		; 1E 01 1E
	ora ($2E.b,X)		; 01 2E
	ora ($3A.b),Y		; 11 3A
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$08.b]		; 07 08
	ora [$01.b]		; 07 01
	asl $0E01.w		; 0E 01 0E
	ora ($0E.b),Y		; 11 0E
	ora $1A.b		; 05 1A
	dec A		; 3A
	ora $32.b		; 05 32
	ora $2F50.w		; 0D 50 2F
	eor ($2E.b),Y		; 51 2E
	adc ($0D.b,S),Y		; 73 0D
	adc $1D.b,S		; 63 1D
	adc $1D.b,S		; 63 1D
	rtl		; 6B

	ora $05.b,X		; 15 05
	inc A		; 1A
	ora $2F12.w		; 0D 12 2F
	bpl  46.b		; 10 2E
	bpl  13.b		; 10 0D
	bmi  29.b		; 30 1D
	jsr $201D.w		; 20 1D 20
	ora $20.b,X		; 15 20
	plb		; AB
	eor $8B.b,X		; 55 8B
	stz $89.b,X		; 74 89
	ror $9B.b,X		; 76 9B
	adc $9B.b		; 65 9B
	adc $9A.b		; 65 9A
	stz $99.b		; 64 99
	ror $99.b		; 66 99
	ror $55.b		; 66 55
	jsr $0074.w		; 20 74 00
	ror $00.b,X		; 76 00
	adc $00.b		; 65 00
	adc $00.b		; 65 00
	adc $01.b		; 65 01
	ror $00.b		; 66 00
	ror $00.b		; 66 00
	and $FF1D.w,X		; 3D 1D FF
	cmp $19FB.w,X		; DD FB 19
	xce		; FB
	lda $397F.w,Y		; B9 7F 39
	adc $317739.l,X		; 7F 39 77 31
	inc $50.b,X		; F6 50
	cmp $02DFC2.l,X		; DF C2 DF 02
	ora $06BF06.l,X		; 1F 06 BF 06
	lda $86BF86.l,X		; BF 86 BF 86
	lda $0F5F8E.l,X		; BF 8E 5F 0F
	eor $54.b,X		; 55 54
	eor $24BF54.l,X		; 5F 54 BF 24
	inc $24.b		; E6 24
	dec $7B1C.w,X		; DE 1C 7B
	ora $1176.w,Y		; 19 76 11
	ldy $91.b,X		; B4 91
	cmp $A8FFA8.l,X		; DF A8 FF A8
	sbc $D8FFD8.l,X		; FF D8 FF D8
	sbc $E0F6E0.l,X		; FF E0 F6 E0
	sbc $61FFE1.l,X		; FF E1 FF 61
	sta $E71A70.l		; 8F 70 1A E7
	ora ($E0.b,S),Y		; 13 E0
	tas		; 1B
	sbc #$35.b		; E9 35
	cpy $C63A.w		; CC 3A C6
	ply		; 7A
	sta [$7D.b]		; 87 7D
	sta $0070.w		; 8D 70 00
	sbc [$06.b]		; E7 06
	inc $E600.w		; EE 00 E6
	ora ($C3.b,X)		; 01 C3
	brk $C1.b		; 00 C1
	brk $85.b		; 00 85
	ora $8A.b		; 05 8A
	brk $8E.b		; 00 8E
	bvc -76.b		; 50 B4
	pha		; 48
	ldy $08.b,X		; B4 08
	rts		; 60

	tya		; 98
	bne  56.b		; D0 38
	cpy #$78.b		; C0 78
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	rts		; 60

	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bcc -16.b		; 90 F0
	brk $E0.b		; 00 E0
	jsr $20A0.w		; 20 A0 20
	cpy #$40.b		; C0 40
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	dec $50FF.w		; CE FF 50
	adc ($8C.b),Y		; 71 8C
	adc ($3E.b,X)		; 61 3E
	adc $3C.b,S		; 63 3C
	adc $19.b,S		; 63 19
	eor $00.b,S		; 43 00
	sbc $11EFEF.l,X		; FF EF EF 11
	ora ($8F.b),Y		; 11 8F
	ora ($BE.b,X)		; 01 BE
	jsr $009C.w		; 20 9C 00
	stz $BC02.w,X		; 9E 02 BC
	brk $0E.b		; 00 0E
	asl $8E06.w,X		; 1E 06 8E
	php		; 08
	ldy $00.b		; A4 00
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$06.b		; C0 06
	sbc $007F02.l,X		; FF 02 7F 00
	ror $7E40.w,X		; 7E 40 7E
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sbc $07EA08.l		; EF 08 EA 07
	sbc [$0F.b]		; E7 0F
	sbc [$0F.b],Y		; F7 0F
	beq -64.b		; F0 C0
	and ($37.b,S),Y		; 33 37
	clc		; 18
	brk $1D.b		; 00 1D
	ora $1E00.w		; 0D 00 1E
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	ora $0F.b,S		; 03 0F
	cpy #$0F.b		; C0 0F
	sbc ($CF.b),Y		; F1 CF
	cpx #$E7.b		; E0 E7
	sbc $07FFE2.l		; EF E2 FF 07
	inx		; E8
	ora ($E0.b),Y		; 11 E0
	xce		; FB
	sbc $FEF3.w,Y		; F9 F3 FE
	sbc ($2F.b)		; F2 2F
	and ($D5.b)		; 32 D5
	cpy #$35.b		; C0 35
	bit $07.b,X		; 34 07
	bne   0.b		; D0 00
	bit $FD01.w,X		; 3C 01 FD
	cpx #$FC.b		; E0 FC
	adc ($F0.b,X)		; 61 F0
	ora ($F0.b,X)		; 01 F0
	wai		; CB
	inx		; E8
	ora $0916E8.l,X		; 1F E8 16 09
	asl $09.b,X		; 16 09
	ora $0400.w		; 0D 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$1F.b		; C0 1F
	cpx #$1F.b		; E0 1F
	cpx #$8F.b		; E0 8F
	bvs 103.b		; 70 67
	clc		; 18
	ora $0706.w,Y		; 19 06 07
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $18.b		; 00 18
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $FF.b		; 05 FF
	ora ($BF.b,X)		; 01 BF
	brk $BF.b		; 00 BF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $F3.b		; 00 F3
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	jmp ($7C50.w,X)		; 7C 50 7C
	iny		; C8
	cpx $A4A4.w		; EC A4 A4
	pea $BAB4.w		; F4 B4 BA
	sta ($5E.b)		; 92 5E
	eor ($B0.b)		; 52 B0
	bmi -48.b		; 30 D0
	bcc -40.b		; 90 D8
	dey		; 88
	cld		; D8
	bpl  -4.b		; 10 FC
	cli		; 58
	jsr ($F648.w,X)		; FC 48 F6
	stz $72.b		; 64 72
	jsr $0030.w		; 20 30 00
	sta $9DC3.w,Y		; 99 C3 9D
	cmp [$98.b]		; C7 98
	cmp [$3A.b]		; C7 3A
	cmp [$3A.b]		; C7 3A
	cmp [$32.b]		; C7 32
	cmp [$3A.b]		; C7 3A
	cmp $3CCF30.l		; CF 30 CF 3C
	brk $38.b		; 00 38
	brk $3D.b		; 00 3D
	ora $B9.b		; 05 B9
	sta ($B8.b,X)		; 81 B8
	bra  56.b		; 80 38
	brk $30.b		; 00 30
	brk $3A.b		; 00 3A
	asl A		; 0A
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	and $1FE000.l,X		; 3F 00 E0 1F
	jsr $21DF.w		; 20 DF 21
	dec $32CD.w,X		; DE CD 32
	sbc $BA02.w,X		; FD 02 BA
	mvp $C1,$3E		; 44 3E C1
	brk $00.b		; 00 00
	ora $20DF00.l,X		; 1F 00 DF 20
	stz $0061.w,X		; 9E 61 00
	inc $02.b,X		; F6 02
	pea $A845.w		; F4 45 A8
	cmp ($00.b,X)		; C1 00
	ora $1A02.w		; 0D 02 1A
	ora $1E.b		; 05 1E
	ora ($26.b,X)		; 01 26
	ora $112E.w,Y		; 19 2E 11
	plp		; 28
	ora [$48.b],Y		; 17 48
	and [$58.b],Y		; 37 58
	and [$02.b]		; 27 02
	ora $05.b		; 05 05
	asl A		; 0A
	ora ($0A.b,X)		; 01 0A
	ora $1102.w,Y		; 19 02 11
	cop $17.b		; 02 17
	brk $37.b		; 00 37
	brk $27.b		; 00 27
	brk $7E.b		; 00 7E
	ldx #$7F.b		; A2 7F
	lda $639F4F.l,X		; BF 4F 9F 63
	sta [$F8.b]		; 87 F8
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora $FE.b,S		; 03 FE
	asl $1DBE.w		; 0E BE 1D
	ldy $8303.w,X		; BC 03 83
	and $001F80.l,X		; 3F 80 1F 00
	ora [$01.b]		; 07 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora ($FF.b,X)		; 01 FF
	beq 107.b		; F0 6B
	stz $9F.b		; 64 9F
	tya		; 98
	sbc ($F9.b),Y		; F1 F9
	adc $F5.b,X		; 75 F5
	trb $021C.w		; 1C 1C 02
	jsl $309C8D.l		; 22 8D 9C 30
	beq 100.b		; F0 64
	sbc ($90.b,S),Y		; F3 90
	sed		; F8
	bcc  -1.b		; 90 FF
	and ($FF.b),Y		; 31 FF
	trb $80FF.w		; 1C FF 80
	sbc $287EC0.l,X		; FF C0 7E 28
	bne  -4.b		; D0 FC
	brk $4C.b		; 00 4C
	bra -128.b		; 80 80
	brk $88.b		; 00 88
	cli		; 58
	sed		; F8
	pha		; 48
	bcs  56.b		; B0 38
	cpy #$00.b		; C0 00
	bne   0.b		; D0 00
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	php		; 08
	jmp ($5C40.w,X)		; 7C 40 5C
	bmi 124.b		; 30 7C
	brk $38.b		; 00 38
	cmp ($1E.b)		; D2 1E
	inx		; E8
	asl $07F5.w		; 0E F5 07
	plx		; FA
	ora $7C.b,S		; 03 7C
	ora ($9F.b,X)		; 01 9F
	sta ($0E.b,X)		; 81 0E
	cpx #$76.b		; E0 76
	bvs -27.b		; 70 E5
	tsb $F3.b		; 04 F3
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	rts		; 60

	sta $704000.l		; 8F 00 40 70
	jsr $1038.w		; 20 38 10
	trb $8C88.w		; 1C 88 8C
	mvp $20,$C6		; 44 C6 20
.INDEX 8
	sep #$12		; E2 12
	sbc ($0A.b,S),Y		; F3 0A
	xce		; FB
	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	bvs   0.b		; 70 00
	clv		; B8
	bra  92.b		; 80 5C
	rti		; 40

	tsb $7400.w		; 0C 00 74
	bvs  55.b		; 70 37
	php		; 08
	ora [$08.b],Y		; 17 08
	ora ($0C.b,S),Y		; 13 0C
	phd		; 0B
	tsb $05.b		; 04 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $38.b		; 00 38
	sec		; 38
	php		; 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $AF.b		; 00 AF
	rts		; 60

	sta [$70.b],Y		; 97 70
	wai		; CB
	sec		; 38
	adc $1C.b		; 65 1C
	dec A		; 3A
	asl $9C.b		; 06 9C
	ora $C0.b,S		; 03 C0
	ora $1FFE06.l		; 0F 06 FE 1F
	brk $2F.b		; 00 2F
	jsr $1017.w		; 20 17 10
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora #$08.b		; 09 08
	ldx $84.b,Y		; B6 84
	dec $FDC4.w		; CE C4 FD
	tsb $EA.b		; 04 EA
	ora ($97.b),Y		; 11 97
	pla		; 68
	lda $18E550.l		; AF 50 E5 18
	cmp $69ED30.l		; CF 30 ED 69
	sbc ($31.b),Y		; F1 31
	asl $0A.b		; 06 0A
	ora $64.b,X		; 15 64
	asl A		; 0A
	adc ($12.b)		; 72 12
	.db $62, $1A, $62		; 62 1A 62
	bmi -128.b		; 30 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0E.b,X)		; 01 0E
	ora ($15.b,X)		; 01 15
	asl A		; 0A
	rol A		; 2A
	ora $5A.b,X		; 15 5A
	and $B7.b		; 25 B7
	phk		; 4B
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	asl A		; 0A
	tsb $14.b		; 04 14
	php		; 08
	and $19.b		; 25 19
	phk		; 4B
	bmi -128.b		; 30 80
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	beq -84.b		; F0 AC
	bvc -36.b		; 50 DC
	ldy #$54.b		; A0 54
	plp		; 28
	bit $48.b,X		; 34 48
	sec		; 38
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bvc  40.b		; 50 28
	jsr $A818.w		; 20 18 A8
	brk $C8.b		; 00 C8
	rti		; 40

	bra   0.b		; 80 00
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
	bne  32.b		; D0 20
	bne  32.b		; D0 20
	bra  96.b		; 80 60
	rti		; 40

	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	tsb $0C03.w		; 0C 03 0C
	ora $1C.b,S		; 03 1C
	ora $38.b,S		; 03 38
	ora [$35.b]		; 07 35
	asl A		; 0A
	ror $D50C.w,X		; 7E 0C D5
	asl $03.b,X		; 16 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	tsb $09.b		; 04 09
	ora $3E00.w,X		; 1D 00 3E
	ror A		; 6A
	sta $804E.w,X		; 9D 4E 80
	adc $D7A6.w		; 6D A6 D7
	bmi -21.b		; 30 EB
	ora $1DE8.w,Y		; 19 E8 1D
	ldy $37.b,X		; B4 37
	eor $9D0E.w,Y		; 59 0E 9D
	ora $02B9.w,Y		; 19 B9 02
	txy		; 9B
	tsb $0F.b		; 04 0F
	brk $06.b		; 00 06
	brk $17.b		; 00 17
	ora $E8.b,X		; 15 E8
	cpy #$E0.b		; C0 E0
	cpx #$58.b		; E0 58
	and [$58.b]		; 27 58
	and [$68.b]		; 27 68
	ora [$68.b]		; 07 68
	ora [$28.b]		; 07 28
	ora [$28.b]		; 07 28
	ora [$2C.b]		; 07 2C
	ora $04.b,S		; 03 04
	ora $27.b,S		; 03 27
	brk $27.b		; 00 27
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $FC.b		; 00 FC
	bit $43C3.w,X		; 3C C3 43
	cmp $DF4C.w		; CD 4C DF
	eor ($FE.b,S),Y		; 53 FE
	ora ($EB.b,X)		; 01 EB
	ora [$E4.b],Y		; 17 E4
	trb $1CE5.w		; 1C E5 1C
	and $3C7F03.l,X		; 3F 03 7F 3C
	adc $207333.l,X		; 7F 33 73 20
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	sbc ($A4.b,X)		; E1 A4
	sbc ($20.b,X)		; E1 20
	ldx $AF22.w		; AE 22 AF
	ldy $6F.b		; A4 6F
	sbc $68FFBC.l		; EF BC FF 68
	adc $E00794.l		; 6F 94 07 E0
	lsr $DFFB.w,X		; 5E FB DF
	sbc $58FCDD.l,X		; FF DD FC 58
	sbc $7B96.w,X		; FD 96 7B
	eor [$B3.b]		; 47 B3
	ora $F9.b,S		; 03 F9
	ora ($F4.b,X)		; 01 F4
	beq -52.b		; F0 CC
	iny		; C8
	inc $7A70.w,X		; FE 70 7A
	brk $B7.b		; 00 B7
	brk $9F.b		; 00 9F
	brk $E6.b		; 00 E6
	sed		; F8
	beq  -4.b		; F0 FC
	sed		; F8
	php		; 08
	sed		; F8
	bmi -16.b		; 30 F0
	bra  -4.b		; 80 FC
	jsr ($7878.w,X)		; FC 78 78
	rts		; 60

	rts		; 60

	bvs  16.b		; 70 10
	php		; 08
	php		; 08
	cmp $FA01.w		; CD 01 FA
	ora $8C.b,S		; 03 8C
	ora $C0FF00.l		; 0F 00 FF C0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra  -2.b		; 80 FE
	brk $FD.b		; 00 FD
	ora ($F2.b,X)		; 01 F2
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	sbc [$28.b],Y		; F7 28
	inc $FC00.w		; EE 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr A		; 4A
	.db $42, $54		; 42 54
	mvp $F0,$F0		; 44 F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$CACF]		; DC CF CA
	asl $1053.w		; 0E 53 10
	stz $27.b		; 64 27
	tay		; A8
	rol $38B0.w		; 2E B0 38
	cpx #$B0.b		; E0 B0
	cpx #$A0.b		; E0 A0
	jsr ($3D30.w,X)		; FC 30 3D
	bit $3F.b,X		; 34 3F
	jsr $023A.w		; 20 3A 02
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	adc [$E0.b]		; 67 E0
	adc $00FF00.l,X		; 7F 00 FF 00
	brk $FF.b		; 00 FF
	ora [$03.b]		; 07 03
	ora $01.b		; 05 01
	ora $01.b		; 05 01
	ora $01.b		; 05 01
	sta $00FF80.l,X		; 9F 80 FF 00
	sbc $000000.l,X		; FF 00 00 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	pha		; 48
	txa		; 8A
	jsr $A3E4.w		; 20 E4 A3
	jmp $8B65.w		; 4C 65 8B
	eor ($9F.b,S),Y		; 53 9F
	eor $332D17.l		; 4F 17 2D 33
	cmp [$FC.b]		; C7 FC
	dey		; 88
	and $380F90.l,X		; 3F 90 0F 38
	phd		; 0B
	bvs   7.b		; 70 07
	adc ($07.b,X)		; 61 07
	sbc ($1F.b),Y		; F1 1F
	cpy #$0F.b		; C0 0F
	cpx #$2F.b		; E0 2F
	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$40.b		; E0 40
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $05.b		; 05 05
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $0A.b		; 04 0A
	ora $0E.b		; 05 0E
	ora ($16.b,X)		; 01 16
	ora #$14.b		; 09 14
	phd		; 0B
	trb $0203.w		; 1C 03 02
	ora ($00.b,X)		; 01 00
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	cop $01.b		; 02 01
	asl $09.b		; 06 09
	asl $0B.b		; 06 0B
	tsb $03.b		; 04 03
	tsb $6A9A.w		; 0C 9A 6A
	and $D5.b,X		; 35 D5
	ror A		; 6A
	txa		; 8A
	.db $62, $AA, $70		; 62 AA 70
	ldx #$74.b		; A2 74
	ldy #$71.b		; A0 71
	lda [$73.b]		; A7 73
	lda [$68.b]		; A7 68
	sta [$D5.b]		; 87 D5
	ora $A01F82.l		; 0F 82 1F A0
	ora $A00FA0.l,X		; 1F A0 0F A0
	ora $A10FA0.l		; 0F A0 0F A1
	ora $0FC095.l		; 0F 95 C0 0F
	bmi  17.b		; 30 11
	stz $83FA.w,X		; 9E FA 83
	eor $F809C0.l		; 4F C0 09 F8
	lda ($DF.b,X)		; A1 DF
	beq -49.b		; F0 CF
	asl A		; 0A
	nop		; EA
	brk $C0.b		; 00 C0
	cpx #$80.b		; E0 80
	jmp ($BF00.w,X)		; 7C 00 BF
	bra  23.b		; 80 17
	bpl   2.b		; 10 02
	rep #$8C		; C2 8C
	bne -64.b		; D0 C0
	brk $E0.b		; 00 E0
	brk $6C.b		; 00 6C
	sty $F53F.w		; 8C 3F F5
	adc $EF67.w		; 6D 67 EF
	and $AA.b		; 25 AA
	plb		; AB
	asl $F6.b,X		; 16 F6
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sty $3C43.w		; 8C 43 3C
	phd		; 0B
	ldy $FC1B.w,X		; BC 1B FC
	tas		; 1B
	ror $7E15.w,X		; 7E 15 7E
	adc #$81.b		; 69 81
	ror $7C83.w,X		; 7E 83 7C
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $8F.b		; 00 8F
	stx $8687.w		; 8E 87 86
	cmp $72FF4D.l		; CF 4D FF 72
	sbc $36FF0A.l,X		; FF 0A FF 36
	cmp $058F45.l		; CF 45 8F 05
	inc $FE70.w,X		; FE 70 FE
	sei		; 78
	adc $7230.w,X		; 7D 30 72
	brk $0A.b		; 00 0A
	brk $36.b		; 00 36
	brk $75.b		; 00 75
	bmi 117.b		; 30 75
	bvs  14.b		; 70 0E
	asl $A1E0.w		; 0E E0 A1
	tax		; AA
	rol A		; 2A
	lda $A6A9.w		; AD A9 A6
	ldy $AD.b		; A4 AD
	ldy $AB.b		; A4 AB
	ldx #$2E.b		; A2 2E
	jsl $B0FF0C.l		; 22 0C FF B0
	ora $FF557E.l,X		; 1F 7E 55 FF
	lsr $FF.b,X		; 56 FF
	tad		; 5B
	sbc $5DFF5B.l,X		; FF 5B FF 5D
	sbc $5A7EDD.l,X		; FF DD 7E 5A
	and $F924.w,Y		; 39 24 F9
	bra  57.b		; 80 39
	brk $85.b		; 00 85
	bra 124.b		; 80 7C
	sei		; 78
	cmp [$03.b]		; C7 03
	plx		; FA
	ora $678059.l		; 0F 59 80 67
	cpy $F7.b		; C4 F7
	bvs  -9.b		; 70 F7
	beq  -5.b		; F0 FB
	sei		; 78
	xce		; FB
	bra  -8.b		; 80 F8
	sed		; F8
	sbc $00F5.w,X		; FD F5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($1E.b,X)		; 01 1E
	brk $61.b		; 00 61
	asl $37C8.w,X		; 1E C8 37
	tas		; 1B
	cpx $B4.b		; E4 B4
	phk		; 4B
	stp		; DB
	bit $92.b		; 24 92
	adc $6A95.w		; 6D 95 6A
	brk $00.b		; 00 00
	asl $3700.w,X		; 1E 00 37
	php		; 08
	cpx $1B.b		; E4 1B
	rti		; 40

	lda $6DD924.l,X		; BF 24 D9 6D
	bcc 106.b		; 90 6A
	bcc -128.b		; 90 80
	rol $6040.w,X		; 3E 40 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora [$0D.b]		; 07 0D
	ora [$0D.b]		; 07 0D
	ora $1C.b		; 05 1C
	ora $1A2C.w		; 0D 2C 1A
	cld		; D8
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	asl $160A.w		; 0E 0A 16
	cop $2C.b		; 02 2C
	tsb $00.b		; 04 00
	ora $02.b,S		; 03 02
	asl $780A.w		; 0E 0A 78
	lsr $F4C3.w,X		; 5E C3 F4
	asl $D0.b		; 06 D0
	trb $3820.w		; 1C 20 38
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	bit $F800.w,X		; 3C 00 F8
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	rti		; 40

	rti		; 40

	ldy $7FB8.w		; AC B8 7F
	bvs  86.b		; 70 56
	dec $78.b		; C6 78
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	bpl -72.b		; 10 B8
	php		; 08
	inc $78B8.w,X		; FE B8 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F.b,S		; 03 0F
	ora $F87E3C.l,X		; 1F 3C 7E F8
	jsr ($F0E0.w,X)		; FC E0 F0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	asl $7F.b		; 06 7F
	clc		; 18
	sbc $C0FEE0.l,X		; FF E0 FE C0
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bit $2813.w		; 2C 13 28
	ora [$28.b],Y		; 17 28
	ora [$28.b],Y		; 17 28
	ora [$50.b],Y		; 17 50
	and $512E51.l		; 2F 51 2E 51
	rol $2E51.w		; 2E 51 2E
	ora ($0C.b,S),Y		; 13 0C
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	and $102E10.l		; 2F 10 2E 10
	rol $2E10.w		; 2E 10 2E
	bpl -13.b		; 10 F3
	ora [$F9.b]		; 07 F9
	ora $FB.b,S		; 03 FB
	brk $FC.b		; 00 FC
	ora ($FC.b,X)		; 01 FC
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	beq -98.b		; F0 9E
	stz $0F01.w		; 9C 01 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	beq   1.b		; F0 01
	jsr ($F761.w,X)		; FC 61 F7
	iny		; C8
	plx		; FA
	sbc $A7.b		; E5 A7
	ora $E37E.w,Y		; 19 7E E3
	inc $7EF6.w,X		; FE F6 7E
	inc $0E06.w,X		; FE 06 0E
	bvs -15.b		; 70 F1
	iny		; C8
	cmp ($C4.b)		; D2 C4
	sbc ($18.b,X)		; E1 18
	cmp $00.b		; C5 00
	xba		; EB
	adc ($F7.b)		; 72 F7
	rol $02FF.w,X		; 3E FF 02
	sbc $9CFF30.l,X		; FF 30 FF 9C
	jmp ($00E0.w,X)		; 7C E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $7F01.w,X		; BC 01 7F
	and $001C.w		; 2D 1C 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $8780.w		; 2C 80 87
	sei		; 78
	sta [$78.b]		; 87 78
	sta [$78.b]		; 87 78
	sta [$78.b]		; 87 78
	sta [$78.b]		; 87 78
	eor [$28.b],Y		; 57 28
	eor ($2C.b,S),Y		; 53 2C
	eor ($2C.b,S),Y		; 53 2C
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $FF.b		; 00 FF
	and $09FF.w		; 2D FF 09
	lda $5BBF5B.l,X		; BF 5B BF 5B
	lda $639F43.l,X		; BF 43 9F 63
	sta $30CF60.l,X		; 9F 60 CF 30
	and $0900.w		; 2D 00 09
	brk $5B.b		; 00 5B
	brk $5B.b		; 00 5B
	brk $43.b		; 00 43
	brk $63.b		; 00 63
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $2D.b		; 00 2D
	and ($2F.b,X)		; 21 2F
	and ($2E.b,X)		; 21 2E
	jsr $202F.w		; 20 2F 20
	and [$00.b]		; 27 00
	and ($13.b,S),Y		; 33 13
	bit $F01C.w,X		; 3C 1C F0
	brk $FF.b		; 00 FF
	dec $DEFF.w,X		; DE FF DE
	sbc $DFFFDF.l,X		; FF DF FF DF
	cmp $CCDFDF.l,X		; DF DF DF CC
	jmp.w [$00C0]		; DC C0 00
	brk $30.b		; 00 30
	and $C0BEC0.l,X		; 3F C0 BE C0
	sed		; F8
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $98CE.w,X		; FE CE 98
	clc		; 18
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0902.w		; 0D 02 09
	asl $11.b		; 06 11
	asl $0F30.w		; 0E 30 0F
	jsr $441F.w		; 20 1F 44
	tsa		; 3B
	pha		; 48
	and [$99.b],Y		; 37 99
	ror $02.b		; 66 02
	ora ($06.b,X)		; 01 06
	ora ($0E.b,X)		; 01 0E
	ora ($0F.b,X)		; 01 0F
	brk $1F.b		; 00 1F
	brk $3B.b		; 00 3B
	tsb $37.b		; 04 37
	php		; 08
	ror $18.b		; 66 18
	phd		; 0B
	sbc $17.b,X		; F5 17
	sbc $13.b,S		; E3 13
	cpx #$33.b		; E0 33
	iny		; C8
	and $79C4.w,Y		; 39 C4 79
	sta $CD41C2.l,X		; 9F C2 41 CD
	sty $01F4.w		; 8C F4 01
	sbc #$01.b		; E9 01
	sbc $08CF00.l		; EF 00 CF 08
	cmp $00.b,S		; C3 00
	stz $7C04.w		; 9C 04 7C
	bit $328E.w,X		; 3C 8E 32
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	ora $1C.b		; 05 1C
	ora ($30.b,S),Y		; 13 30
	and $C05EE0.l		; 2F E0 5E C0
	sec		; 38
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $BF.b		; 00 BF
	bra  -1.b		; 80 FF
	ora ($F4.b,X)		; 01 F4
	ora [$E8.b]		; 07 E8
	asl $1CD0.w		; 0E D0 1C
	ldy #$38.b		; A0 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra  -6.b		; 80 FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	tad		; 5B
	bit $2B.b		; 24 2B
	trb $2D.b		; 14 2D
	ora ($16.b)		; 12 16
	ora #$0D.b		; 09 0D
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $12.b		; 00 12
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	bmi 111.b		; 30 6F
	bpl -89.b		; 10 A7
	clc		; 18
	lda ($0C.b,S),Y		; B3 0C
	cmp $6E06.w,Y		; D9 06 6E
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bra  -8.b		; 80 F8
	brk $7C.b		; 00 7C
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
	ora [$04.b]		; 07 04
	bit $E02F.w,X		; 3C 2F E0
	sta $009C80.l,X		; 9F 80 9C 00
	ldy $003F.w,X		; BC 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $C2.b		; 00 C2
	cop $00.b		; 02 00
	brk $F8.b		; 00 F8
	brk $2C.b		; 00 2C
	bne -117.b		; D0 8B
	stz $36.b,X		; 74 36
	iny		; C8
	lsr $A8.b,X		; 56 A8
	ldx $CC40.w,Y		; BE 40 CC
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	jsr $A854.w		; 20 54 A8
	iny		; C8
	bit $A8.b		; 24 A8
	tsb $40.b		; 04 40
	pha		; 48
	jsr $8820.w		; 20 20 88
	bvs -64.b		; 70 C0
	bpl -96.b		; 10 A0
	iny		; C8
	cpx #$30.b		; E0 30
	cpy #$30.b		; C0 30
	rti		; 40

	rts		; 60

	rti		; 40

	bra -96.b		; 80 A0
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	rti		; 40

	beq -128.b		; F0 80
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	clc		; 18
	bit $3E2E.w,X		; 3C 2E 3E
	jsl $E02072.l		; 22 72 20 E0
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	clc		; 18
	ror $7F26.w,X		; 7E 26 7F
	jsr $00FF.w		; 20 FF 00
	sbc ($80.b,S),Y		; F3 80
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $180B.w		; 0C 0B 18
	ora [$30.b],Y		; 17 30
	rol $5F60.w		; 2E 60 5F
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $5F7013.l,X		; 1F 13 70 5F
	cpy #$3E.b		; C0 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	and $E32A.w,X		; 3D 2A E3
	stz $06.b,X		; 74 06
	bne  28.b		; D0 1C
	ldy #$38.b		; A0 38
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	trb $F800.w		; 1C 00 F8
	brk $E8.b		; 00 E8
	php		; 08
	cpy #$00.b		; C0 00
	rti		; 40

	rti		; 40

	bpl -32.b		; 10 E0
	sbc $FC13.w,Y		; F9 13 FC
	trb $EF.b		; 14 EF
	phd		; 0B
	and [$C4.b],Y		; 37 C4
	sbc $7F01.w,Y		; F9 01 7F
	sta ($3F.b,X)		; 81 3F
	cpy #$00.b		; C0 00
	ora $140710.l		; 0F 10 07 14
	ora $1B.b,S		; 03 1B
	bpl -52.b		; 10 CC
	php		; 08
	ora [$06.b]		; 07 06
	sta ($00.b,X)		; 81 00
	cpy #$00.b		; C0 00
	sta ($D8.b,X)		; 81 D8
	ora ($A0.b,X)		; 01 A0
	tas		; 1B
	ora ($FF.b,X)		; 01 FF
	cmp ($FE.b,X)		; C1 FE
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	cpy #$FF.b		; C0 FF
	brk $80.b		; 00 80
	jsr ($F800.w,X)		; FC 00 F8
	ora ($E0.b,X)		; 01 E0
	cmp ($00.b,X)		; C1 00
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	sbc $ECFF08.l,X		; FF 08 FF EC
	and $3C29.w,Y		; 39 29 3C
	bit $041C.w		; 2C 1C 04
	sbc [$00.b],Y		; F7 00
	beq   0.b		; F0 00
	jsr ($0800.w,X)		; FC 00 08
	brk $EC.b		; 00 EC
	brk $EF.b		; 00 EF
	dec $EF.b		; C6 EF
	cmp $E7.b,S		; C3 E7
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	bra  -8.b		; 80 F8
	rti		; 40

	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	sec		; 38
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	adc $7F3C4E.l		; 6F 4E 3C 7F
	ora $303F.w,X		; 1D 3F 30
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	sbc $38FF04.l		; EF 04 FF 38
	sbc $007F08.l,X		; FF 08 7F 00
	sbc $007800.l,X		; FF 00 78 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	beq  -1.b		; F0 FF
	sbc $FE7F.w,X		; FD 7F FE
	asl $053C.w,X		; 1E 3C 05
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rti		; 40

	inc $FEF9.w,X		; FE F9 FE
	tas		; 1B
	sbc $FB07.w,X		; FD 07 FB
	ora [$3A.b]		; 07 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $A0.b,S		; E3 A0
	cpx $8B63.w		; EC 63 8B
	sty $A6.b,X		; 94 A6
	bit #$00.b		; 89 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	sbc $80.b,S		; E3 80
	cpx $08.b		; E4 08
	adc ($00.b),Y		; 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $90.b		; 00 90
	rts		; 60

	tya		; 98
	rts		; 60

	beq   0.b		; F0 00
	bcs  78.b		; B0 4E
	eor $0000B7.l		; 4F B7 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	bpl   0.b		; 10 00
	asl $2F40.w		; 0E 40 2F
	bcs   7.b		; B0 07
	ora ($0C.b,S),Y		; 13 0C
	ora ($0E.b),Y		; 11 0E
	ora #$06.b		; 09 06
	ora #$06.b		; 09 06
	ora #$06.b		; 09 06
	php		; 08
	ora [$04.b]		; 07 04
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $46.b		; 00 46
	lda $DD22.w,Y		; B9 22 DD
	sty $7B.b		; 84 7B
	sty $7B.b		; 84 7B
	cpy $3B.b		; C4 3B
	dec $39.b		; C6 39
.INDEX 8
	sep #$1D		; E2 1D
	sbc $1C.b,S		; E3 1C
	lda $DD46.w,Y		; B9 46 DD
	jsl $7B007B.l		; 22 7B 00 7B
	brk $3B.b		; 00 3B
	brk $39.b		; 00 39
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	brk $03.b		; 00 03
	jsr ($FC03.w,X)		; FC 03 FC
	ora ($FE.b,X)		; 01 FE
	sta ($7E.b,X)		; 81 7E
	sta ($7E.b,X)		; 81 7E
	sta ($7E.b,X)		; 81 7E
	eor ($BE.b,X)		; 41 BE
	adc ($9E.b,X)		; 61 9E
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $BE.b		; 00 BE
	brk $9E.b		; 00 9E
	brk $98.b		; 00 98
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora #$3E.b		; 09 3E
	ora $36.b,X		; 15 36
	ora ($7E.b,X)		; 01 7E
	and $D9.b,S		; 23 D9
	eor ($3F.b,X)		; 41 3F
	and $1F8080.l,X		; 3F 80 80 1F
	brk $08.b		; 00 08
	brk $14.b		; 00 14
	brk $0D.b		; 00 0D
	ora $1D3F.w		; 0D 3F 1D
	adc $C03F3E.l,X		; 7F 3E 3F C0
	lda $FF7FFF.l,X		; BF FF 7F FF
	ldy $FE81.w,X		; BC 81 FE
	sta $78.b,S		; 83 78
	ora $74.b,S		; 03 74
	asl $B0.b		; 06 B0
	stx $68.b		; 86 68
	cpy $DC90.w		; CC 90 DC
	bvs 120.b		; 70 78
	adc $007C01.l,X		; 7F 01 7C 00
	inc $F802.w,X		; FE 02 F8
	brk $7C.b		; 00 7C
	tsb $B0.b		; 04 B0
	bra -24.b		; 80 E8
	pha		; 48
	cpy #$80.b		; C0 80
	stx $07.b,Y		; 96 07
	bcs  63.b		; B0 3F
	brk $78.b		; 00 78
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sbc $C801.w,Y		; F9 01 C8
	php		; 08
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
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
	sbc $F10E00.l,X		; FF 00 0E F1
.INDEX 8
	sep #$1D		; E2 1D
	cld		; D8
	and [$24.b]		; 27 24
	tas		; 1B
	ora ($0D.b)		; 12 0D
	ora ($0E.b),Y		; 11 0E
	ora #$06.b		; 09 06
	brk $00.b		; 00 00
	sbc ($00.b),Y		; F1 00
	ora $2700.w,X		; 1D 00 27
	brk $1B.b		; 00 1B
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $87.b		; 00 87
	sei		; 78
	cpy $2633.w		; CC 33 26
	cmp $FC03.w,Y		; D9 03 FC
	dec $7E31.w		; CE 31 7E
	sta ($6E.b,X)		; 81 6E
	sta ($27.b),Y		; 91 27
	cld		; D8
	sei		; 78
	brk $33.b		; 00 33
	tsb $06D9.w		; 0C D9 06
	jsr ($3103.w,X)		; FC 03 31
	dec $7E81.w		; CE 81 7E
	sta ($6E.b),Y		; 91 6E
	cld		; D8
	and [$FF.b]		; 27 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$8F.b		; C0 8F
	bvs -57.b		; 70 C7
	sec		; 38
	eor $BC.b,S		; 43 BC
	and $DC.b,S		; 23 DC
	and $DC.b,S		; 23 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bvs -128.b		; 70 80
	sec		; 38
	cpy #$BC.b		; C0 BC
	rti		; 40

	jmp.w [$DC20]		; DC 20 DC
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $B0.b		; 00 B0
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
	brk $05.b		; 00 05
	cop $06.b		; 02 06
	ora ($1D.b,X)		; 01 1D
	cop $29.b		; 02 29
	asl $12.b,X		; 16 12
	ora $0A15.w		; 0D 15 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	brk $06.b		; 00 06
	ora ($0C.b)		; 12 0C
	ora $0A01.w		; 0D 01 0A
	tsb $06.b		; 04 06
	asl $03.b		; 06 03
	ora $80.b,S		; 03 80
	ora ($C0.b,X)		; 01 C0
	clc		; 18
	php		; 08
	jsr ($C718.w,X)		; FC 18 C7
	lda $01FF45.l		; AF 45 FF 01
	ora [$09.b]		; 07 09
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $4A84.w,X		; BC 84 4A
	bmi  30.b		; 30 1E
	brk $75.b		; 00 75
	dex		; CA
	eor ($C6.b),Y		; 51 C6
	sec		; 38
	adc [$09.b]		; 67 09
	.db $62, $5D, $B2		; 62 5D B2
	tsb $F1.b		; 04 F1
	asl A		; 0A
	tsx		; BA
	rts		; 60

	dec $80B2.w		; CE B2 80
	sec		; 38
	ora $18.b,S		; 03 18
	ora $3C.b,S		; 03 3C
	jsr $000C.w		; 20 0C 00
	asl $4410.w,X		; 1E 10 44
	eor ($C0.b,X)		; 41 C0
	sta ($6F.b),Y		; 91 6F
	sta ($D7.b,S),Y		; 93 D7
	pld		; 2B
	sbc $77B707.l,X		; FF 07 B7 77
	adc ($FA.b)		; 72 FA
	dec A		; 3A
	ply		; 7A
	dec A		; 3A
	tsx		; BA
	clv		; B8
	tsx		; BA
	sta ($4B.b,S),Y		; 93 4B
	pld		; 2B
	cmp $03.b,S		; C3 03
	sta [$02.b]		; 87 02
	adc $32FF32.l,X		; 7F 32 FF 32
	sbc $00FF38.l,X		; FF 38 FF 00
	sbc $020304.l,X		; FF 04 03 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
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
	brk $71.b		; 00 71
	stx $8679.w		; 8E 79 86
	bit $C3.b,X		; 34 C3
	dec A		; 3A
	cmp ($99.b,X)		; C1 99
	rts		; 60

	jmp ($1E10.w)		; 6C 10 1E
	brk $07.b		; 00 07
	brk $8E.b		; 00 8E
	brk $86.b		; 00 86
	brk $C3.b		; 00 C3
	brk $C1.b		; 00 C1
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	cmp $E66798.l		; CF 98 67 E6
	ora $C03F.w,Y		; 19 3F C0
	sta [$78.b]		; 87 78
	sbc ($1E.b,X)		; E1 1E
	and $008300.l,X		; 3F 00 83 00
	cmp $006700.l		; CF 00 67 00
	ora $C000.w,Y		; 19 00 C0
	brk $78.b		; 00 78
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $3C.b		; 00 3C
	cpy #$0F.b		; C0 0F
	beq -122.b		; F0 86
	sei		; 78
	sed		; F8
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora $0D.b		; 05 0D
	cop $0A.b		; 02 0A
	ora $09.b		; 05 09
	asl $0B.b		; 06 0B
	tsb $04.b		; 04 04
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	asl $02.b		; 06 02
	tsb $05.b		; 04 05
	cop $04.b		; 02 04
	ora $04.b,S		; 03 04
	ora $03.b,S		; 03 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $FD.b		; 00 FD
	adc ($7A.b,X)		; 61 7A
	lda $6C.b,S		; A3 6C
	plb		; AB
	adc $609F90.l,X		; 7F 90 9F 60
	cmp $3C.b,S		; C3 3C
	rti		; 40

	lda $3EFE01.l,X		; BF 01 FE 3E
	rts		; 60

	stz $9000.w		; 9C 00 90
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra  60.b		; 80 3C
	cpy #$BF.b		; C0 BF
	rti		; 40

	inc $FE00.w,X		; FE 00 FE
	ora [$BC.b]		; 07 BC
	sta [$58.b]		; 87 58
	lsr $2EA8.w		; 4E A8 2E
	jmp.w [$7C18]		; DC 18 7C
	clc		; 18
	cpx $B488.w		; EC 88 B4
	bra  -3.b		; 80 FD
	sbc $7AFE.w,Y		; F9 FE 7A
	jsr ($FCB4.w,X)		; FC B4 FC
	pei ($F8.b)		; D4 F8
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	bvs  -8.b		; 70 F8
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	asl A		; 0A
	php		; 08
	asl $0E08.w		; 0E 08 0E
	php		; 08
	asl A		; 0A
	clc		; 18
	asl A		; 0A
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $0C04.w		; 0C 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	sec		; 38
	trb $70.b		; 14 70
	adc $E0B6E6.l		; 6F E6 B6 E0
	sec		; 38
	sed		; F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  56.b		; 10 38
	plp		; 28
	rol $7818.w,X		; 3E 18 78
	cli		; 58
	clv		; B8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	adc $181C63.l,X		; 7F 63 1C 18
	ora [$07.b]		; 07 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $1C.b		; 00 1C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	cop $0D.b		; 02 0D
	tsb $13.b		; 04 13
	and ($08.b,S),Y		; 33 08
	php		; 08
	cmp ($D0.b),Y		; D1 D0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$33.b]		; 07 33
	ora $7C.b,S		; 03 7C
	phd		; 0B
	sbc $B6FF17.l,X		; FF 17 FF B6
	ldx $A1.b,Y		; B6 A1
	lda ($46.b,X)		; A1 46
	rts		; 60

	eor $A658.w,Y		; 59 58 A6
	ldx $B9.b		; A6 B9
	lda $843C.w,Y		; B9 3C 84
	ror $A702.w,X		; 7E 02 A7
	sbc $FE2F.w,Y		; F9 2F FE
	eor $E71FFF.l		; 4F FF 1F E7
	lda $C63FD9.l,X		; BF D9 3F C6
	ora [$C3.b]		; 07 C3
	ora $C1.b,S		; 03 C1
	cpx $ECEC.w		; EC EC EC
	cpx $ECEC.w		; EC EC EC
	jmp ($6CEC.w)		; 6C EC 6C
	cpx $6E6C.w		; EC 6C 6E
	stz $76.b		; 64 76
	rol $76.b,X		; 36 76
	inx		; E8
	inc $FE68.w,X		; FE 68 FE
	pla		; 68
	inc $FE68.w,X		; FE 68 FE
	rts		; 60

	inc $FF20.w,X		; FE 20 FF
	jsr $00FF.w		; 20 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
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
	brk $4E.b		; 00 4E
	cmp $B2.b,S		; C3 B2
	adc ($9E.b,S),Y		; 73 9E
	adc [$BC.b]		; 67 BC
	phk		; 4B
	sbc $4E7E9C.l,X		; FF 9C 7E 4E
	rol $BC2E.w,X		; 3E 2E BC
	bit $3C.b,X		; 34 3C
	brk $4D.b		; 00 4D
	eor ($21.b,X)		; 41 21
	and ($0B.b,X)		; 21 0B
	ora $9C.b,S		; 03 9C
	brk $CF.b		; 00 CF
	sta ($EF.b,X)		; 81 EF
	cmp ($77.b,X)		; C1 77
	eor $3E.b,S		; 43 3E
	brk $5A.b		; 00 5A
	bra 122.b		; 80 7A
	cpx #$FF.b		; E0 FF
	php		; 08
	tsa		; 3B
	clc		; 18
	ror $30.b,X		; 76 30
	iny		; C8
	rti		; 40

	clv		; B8
	brk $C0.b		; 00 C0
	cpy #$3C.b		; C0 3C
	bit $0464.w,X		; 3C 64 04
	php		; 08
	brk $DC.b		; 00 DC
	cpy $B8.b		; C4 B8
	dey		; 88
	bvs  48.b		; 70 30
	rti		; 40

	rti		; 40

	tsa		; 3B
	ora [$64.b]		; 07 64
	clc		; 18
	adc $073B13.l		; 6F 13 3B 07
	adc $374F07.l,X		; 7F 07 4F 37
	tad		; 5B
	and [$6F.b]		; 27 6F
	ora ($02.b,S),Y		; 13 02
	ora [$18.b],Y		; 17 18
	and $10.b,S		; 23 10
	and [$03.b]		; 27 03
	ora [$03.b]		; 07 03
	and [$33.b],Y		; 37 33
	ora [$21.b]		; 07 21
	ora [$10.b]		; 07 10
	pld		; 2B
	brk $80.b		; 00 80
	jsr $F070.w		; 20 70 F0
	sed		; F8
	sed		; F8
	sed		; F8
	jsr ($FFF8.w,X)		; FC F8 FF
	sed		; F8
	sbc [$F9.b],Y		; F7 F9
	asl $0012.w		; 0E 12 00
	beq   0.b		; F0 00
	sed		; F8
	cpx #$FC.b		; E0 FC
	beq  -4.b		; F0 FC
	beq  -2.b		; F0 FE
	beq  -4.b		; F0 FC
	sbc ($F8.b,X)		; E1 F8
	ora $F9.b,S		; 03 F9
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sed		; F8
	brk $07.b		; 00 07
	sed		; F8
	ora [$F8.b]		; 07 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $3E.b		; 00 3E
	cmp ($1F.b,X)		; C1 1F
	cpx #$8F.b		; E0 8F
	bvs -25.b		; 70 E7
	clc		; 18
	sbc [$08.b],Y		; F7 08
	tsa		; 3B
	tsb $1D.b		; 04 1D
	cop $0D.b		; 02 0D
	cop $C1.b		; 02 C1
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $CD.b		; 00 CD
	and ($65.b)		; 32 65
	txs		; 9A
	lda [$48.b],Y		; B7 48
	sta ($6C.b,S),Y		; 93 6C
	phx		; DA
	and $CA.b		; 25 CA
	and $EA.b,X		; 35 EA
	ora $E6.b,X		; 15 E6
	ora $0D32.w,Y		; 19 32 0D
	txs		; 9A
	ora $48.b		; 05 48
	ora [$6C.b]		; 07 6C
	ora $25.b,S		; 03 25
	cop $35.b		; 02 35
	cop $15.b		; 02 15
	cop $19.b		; 02 19
	cop $07.b		; 02 07
	brk $1E.b		; 00 1E
	brk $31.b		; 00 31
	ora ($7F.b,X)		; 01 7F
	bmi  76.b		; 30 4C
	php		; 08
	lsr $04.b		; 46 04
	adc $000302.l,X		; 7F 02 03 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $00300E.l		; 0F 0E 30 00
	tsa		; 3B
	and ($3D.b,S),Y		; 33 3D
	and $0002.w,Y		; 39 02 00
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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	asl $3D20.w		; 0E 20 3D
	adc ($3A.b,X)		; 61 3A
	eor $01.b,S		; 43 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $80.b		; 00 80
	bmi -64.b		; 30 C0
	rts		; 60

	bra  96.b		; 80 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $C6.b,X		; 74 C6
	sec		; 38
	stx $8C00.w		; 8E 00 8C
	php		; 08
	sty $CC78.w		; 8C 78 CC
	bvs -58.b		; 70 C6
	bit $18C6.w,X		; 3C C6 18
	eor $38.b,S		; 43 38
	brk $74.b		; 00 74
	tsb $78.b		; 04 78
	php		; 08
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bit $7804.w,X		; 3C 04 78
	rti		; 40

	rol $0002.w,X		; 3E 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $73.b		; 00 73
	ora ($FF.b,X)		; 01 FF
	adc ($EF.b,S),Y		; 73 EF
	ror $4CCF.w		; 6E CF 4C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	adc ($00.b,S),Y		; 73 00
	ror $7C10.w,X		; 7E 10 7C
	bmi  54.b		; 30 36
	and [$30.b],Y		; 37 30
	tsa		; 3B
	bpl  56.b		; 10 38
	ora $1E1F1F.l		; 0F 1F 1F 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	asl $3F.b		; 06 3F
	tsb $003F.w		; 0C 3F 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs -72.b		; 70 B8
	dey		; 88
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7F34.w,X		; FD 34 7F
	tsb $2F.b		; 04 2F
	ora ($2C.b)		; 12 2C
	ora $0311.w		; 0D 11 03
	ora $070F07.l,X		; 1F 07 0F 07
	ora $023607.l,X		; 1F 07 36 02
	tsb $00.b		; 04 00
	brk $12.b		; 00 12
	tsb $1F.b		; 04 1F
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	stz $20.b		; 64 20
	sty $00.b		; 84 00
	cpx $60.b		; E4 60
	bit $30.b,X		; 34 30
	stz $C0C0.w		; 9C C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$E0.b		; C0 E0
	cpy #$B8.b		; C0 B8
	tya		; 98
	sei		; 78
	sei		; 78
	sei		; 78
	clc		; 18
	sec		; 38
	iny		; C8
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	jmp ($3002.w,X)		; 7C 02 30
	ora ($00.b,X)		; 01 00
	trb $3D1C.w		; 1C 1C 3D
	tsb $30.b		; 04 30
	trb $7C63.w		; 1C 63 7C
	dex		; CA
	trb $0046.w		; 1C 46 00
	and ($00.b,S),Y		; 33 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $1C.b,S		; 03 1C
	ora ($3D.b,S),Y		; 13 3D
	and ($25.b,X)		; 21 25
	brk $21.b		; 00 21
	bpl -20.b		; 10 EC
	cpx $01.b		; E4 01
	ora ($E3.b),Y		; 11 E3
	sep #$07		; E2 07
	ora $CF.b,X		; 15 CF
	cpx #$4F.b		; E0 4F
	bvs -113.b		; 70 8F
	bmi -113.b		; 30 8F
	bmi  71.b		; 30 47
	sbc ($07.b,S),Y		; F3 07
	inc $FC46.w,X		; FE 46 FC
	ora $F8.b		; 05 F8
	brk $10.b		; 00 10
	ldy #$20.b		; A0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	sbc ($0E.b),Y		; F1 0E
	inc $0701.w,X		; FE 01 07
	sed		; F8
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$FE.b]		; 07 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $0E.b		; 00 0E
	ora ($01.b,X)		; 01 01
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	bpl 123.b		; 10 7B
	sty $1C.b		; 84 1C
	sbc $C6.b,S		; E3 C6
	and $CC33.w,Y		; 39 33 CC
	wai		; CB
	bit $31.b,X		; 34 31
	dec $6699.w		; CE 99 66
	bpl -32.b		; 10 E0
	sty $78.b		; 84 78
	sbc $1C.b,S		; E3 1C
	and $CC06.w,Y		; 39 06 CC
	ora $34.b,S		; 03 34
	cmp $CE.b,S		; C3 CE
	and ($66.b),Y		; 31 66
	ora $010E.w,Y		; 19 0E 01
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000100.l		; 0F 00 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $09.b,X		; F6 09
	inc $09.b,X		; F6 09
	pea $F40B.w		; F4 0B F4
	phd		; 0B
	pea $F40B.w		; F4 0B F4
	phd		; 0B
	pea $F40B.w		; F4 0B F4
	phd		; 0B
	ora #$02.b		; 09 02
	ora #$02.b		; 09 02
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $DF.b		; 00 DF
	bvc  -8.b		; 50 F8
	adc [$FF.b]		; 67 FF
	bra  -1.b		; 80 FF
	brk $F0.b		; 00 F0
	ora $FF7F80.l		; 0F 80 7F FF
	brk $FF.b		; 00 FF
	brk $70.b		; 00 70
	jsr $0067.w		; 20 67 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $007F00.l		; 0F 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3C43.w,X		; 1E 43 3C
	adc ($3F.b,X)		; 61 3F
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $301F20.l		; 0F 20 1F 30
	ora [$30.b]		; 07 30
	ora $10.b,S		; 03 10
	bit $1F00.w,X		; 3C 00 1F
	ora ($1E.b,X)		; 01 1E
	brk $3F.b		; 00 3F
	jsr $001F.w		; 20 1F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $000000.l		; 0F 00 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	clc		; 18
	rti		; 40

	tsb $D460.w		; 0C 60 D4
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bne  80.b		; D0 50
	tya		; 98
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	bne  32.b		; D0 20
	iny		; C8
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  32.b		; 80 20
	cpy #$30.b		; C0 30
	cpy #$E8.b		; C0 E8
	bpl -28.b		; 10 E4
	clc		; 18
	ldy $48.b,X		; B4 48
	lda ($4C.b)		; B2 4C
	txs		; 9A
	stz $9A.b		; 64 9A
	stz $1A.b		; 64 1A
	cpx $09.b		; E4 09
	inc $10.b,X		; F6 10
	cpx #$18.b		; E0 18
	cpx #$48.b		; E0 48
	bcs  76.b		; B0 4C
	bcs 100.b		; B0 64
	tya		; 98
	stz $98.b		; 64 98
	cpx $18.b		; E4 18
	inc $08.b,X		; F6 08
	ora #$F6.b		; 09 F6
	ora #$F6.b		; 09 F6
	ora ($FE.b,X)		; 01 FE
	eor ($BE.b,X)		; 41 BE
	eor ($BE.b,X)		; 41 BE
	eor ($BE.b,X)		; 41 BE
	eor ($BE.b,X)		; 41 BE
	eor ($BE.b,X)		; 41 BE
	inc $08.b,X		; F6 08
	inc $08.b,X		; F6 08
	inc $BE00.w,X		; FE 00 BE
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	phd		; 0B
	inx		; E8
	ora [$E9.b],Y		; 17 E9
	asl $D1.b,X		; 16 D1
	rol $DD22.w		; 2E 22 DD
	cpy $3B.b		; C4 3B
	ora $FEE6.w,Y		; 19 E6 FE
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $16.b		; 00 16
	brk $2E.b		; 00 2E
	brk $DD.b		; 00 DD
	brk $3B.b		; 00 3B
	brk $E6.b		; 00 E6
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	rol $7C82.w,X		; 3E 82 7C
	.db $82, $7C, $04		; 82 7C 04
	sed		; F8
	php		; 08
	beq  48.b		; F0 30
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $05.b,S		; 03 05
	ora $07.b		; 05 07
	ora $0F.b		; 05 0F
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	asl $0B02.w		; 0E 02 0B
	php		; 08
	ora $1C.b		; 05 1C
	ora $1E3C.w		; 0D 3C 1E
	sec		; 38
	bit $3F70.w,X		; 3C 70 3F
	inc $56.b,X		; F6 56
	beq -40.b		; F0 D8
	beq  14.b		; F0 0E
	asl $0E.b		; 06 0E
	asl A		; 0A
	asl $12.b,X		; 16 12
	tsb $1804.w		; 0C 04 18
	php		; 08
	lsr $3848.w,X		; 5E 48 38
	plp		; 28
	bpl   0.b		; 10 00
	tyx		; BB
	eor ($4D.b,X)		; 41 4D
	tsb $03.b		; 04 03
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $45.b,S		; 03 45
	tsb $07.b		; 04 07
	ora $03.b,S		; 03 03
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$BC.b]		; 07 BC
	ldy $F0.b		; A4 F0
	sei		; 78
	dey		; 88
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cpx $40.b		; E4 40
	beq -116.b		; F0 8C
	bra 124.b		; 80 7C
	rti		; 40

	jsr ($FCD0.w,X)		; FC D0 FC
	bne  -4.b		; D0 FC
	bne  -4.b		; D0 FC
	bne  -4.b		; D0 FC
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	brk $1B.b		; 00 1B
	brk $12.b		; 00 12
	tsb $3026.w		; 0C 26 30
	ror $18.b		; 66 18
	cpy $0202.w		; CC 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $0C0A.w		; 0E 0A 0C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $70.b		; 04 70
	rti		; 40

	ora #$06.b		; 09 06
	ora $3606.w,Y		; 19 06 36
	ora #$35.b		; 09 35
	asl A		; 0A
	cli		; 58
	and [$22.b]		; 27 22
	ora $001F.w,X		; 1D 1F 00
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora #$01.b		; 09 01
	asl A		; 0A
	bpl  39.b		; 10 27
	php		; 08
	ora $0006.w,Y		; 19 06 00
	ora $01.b,S		; 03 01
	cop $48.b		; 02 48
	adc $C9.b,S		; 63 C9
	jsl $046388.l		; 22 88 63 04
	sbc [$D5.b]		; E7 D5
	rol $AA.b,X		; 36 AA
	adc $6F9D5D.l,X		; 7F 5D 9D 6F
	sta $5E.b,S		; 83 5E
.INDEX 16
	rep #$1C		; C2 1C
	brk $5D.b		; 00 5D
	brk $D9.b		; 00 D9
	brk $08.b		; 00 08
	cpy #$9477.w		; C0 77 94
	and $1C9FE2.l,X		; 3F E2 9F 1C
	sbc $7F8000.l,X		; FF 00 80 7F
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $8078E0.l,X		; 1F E0 78 80
	cpx #$0000.w		; E0 00 00
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	beq   3.b		; F0 03
	jsr ($3EC1.w,X)		; FC C1 3E
	sed		; F8
	ora [$FE.b]		; 07 FE
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $3E.b		; 00 3E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $C6.b		; 00 C6
	sec		; 38
	clc		; 18
	cpx #$8060.w		; E0 60 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	inc $00FF.w,X		; FE FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $807FE0.l,X		; 1F E0 7F 80
	sbc $07F800.l,X		; FF 00 F8 07
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $FC.b		; 00 FC
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E3.b		; 00 E3
	trb $8778.w		; 1C 78 87
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $8700.w		; 1C 00 87
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	ora $19.b,S		; 03 19
	asl $3B.b		; 06 3B
	tsb $36.b		; 04 36
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $09.b,S		; 03 09
	asl $61.b		; 06 61
	asl $2CD3.w,X		; 1E D3 2C
	and [$D8.b]		; 27 D8
	adc $21DE90.l		; 6F 90 DE 21
	lda $6746.w,Y		; B9 46 67
	tya		; 98
	cmp $001E30.l		; CF 30 1E 00
	bit $D810.w		; 2C 10 D8
	jsr $6090.w		; 20 90 60
	and ($C0.b,X)		; 21 C0
	lsr $81.b		; 46 81
	tya		; 98
	ora [$30.b]		; 07 30
	ora $807F80.l		; 0F 80 7F 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $7F007F.l,X		; 7F 7F 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $DA.b		; 00 DA
	and $D2.b		; 25 D2
	and $4AB5.w		; 2D B5 4A
	lda $BB42.w,X		; BD 42 BB
	mvp $28,$D6		; 44 D6 28
	jmp.w [$4820]		; DC 20 48
	bcs  37.b		; B0 25
	clc		; 18
	and $4A12.w		; 2D 12 4A
	bit $42.b,X		; 34 42
	bit $3844.w,X		; 3C 44 38
	plp		; 28
	bpl  32.b		; 10 20
	bpl -80.b		; 10 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	plp		; 28
	ror $FB4C.w		; 6E 4C FB
	txa		; 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	brk $7C.b		; 00 7C
	bmi  -2.b		; 30 FE
	stz $00.b,X		; 74 00
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
	brk $E1.b		; 00 E1
	asl $07F8.w,X		; 1E F8 07
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($CF.b,X)		; 01 CF
	brk $73.b		; 00 73
	bra  24.b		; 80 18
	cpx #$708C.w		; E0 8C 70
	asl $0700.w,X		; 1E 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	cpy #$40A0.w		; C0 A0 40
	bne  32.b		; D0 20
	bvc  32.b		; 50 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$38A0.w		; E0 A0 38
	pla		; 68
	asl $83BA.w		; 0E BA 83
	eor $00C1.w,X		; 5D C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $00BC05.l		; 0F 05 BC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0B.b		; 02 0B
	php		; 08
	lda $70BE.w,X		; BD BE 70
	adc ($6E.b),Y		; 71 6E
	ror $5140.w		; 6E 40 51
	lsr $000E.w		; 4E 0E 00
	sta ($0C.b),Y		; 91 0C
	dec $37C4.w		; CE C4 37
	bit $70FE.w,X		; 3C FE 70
	sbc $00FF64.l,X		; FF 64 FF 00
	sbc $80FF04.l,X		; FF 04 FF 80
	adc $1A31C0.l,X		; 7F C0 31 1A
	sta ($FE.b)		; 92 FE
	ora ($F3.b,X)		; 01 F3
	tsb $9F6C.w		; 0C 6C 9F
	ora ($7A.b,X)		; 01 7A
	and ($73.b)		; 32 73
	eor [$43.b]		; 47 43
	sta $C11E42.l		; 8F 42 1E C1
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $0C88.w		; 0C 88 0C
	bra  60.b		; 80 3C
	bra 126.b		; 80 7E
	.db $42, $3C		; 42 3C
	ora ($C0.b,X)		; 01 C0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	and $FFC03F.l,X		; 3F 3F C0 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $C0.b		; 00 C0
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $0000FF.l,X		; FF FF 00 00
	brk $E0.b		; 00 E0
	brk $FE.b		; 00 FE
	brk $1F.b		; 00 1F
	cpx #$7C83.w		; E0 83 7C
	sed		; F8
	ora [$FF.b]		; 07 FF
	brk $01.b		; 00 01
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7C00.w		; E0 00 7C
	bra   7.b		; 80 07
	sed		; F8
	brk $FF.b		; 00 FF
	inc $3E01.w,X		; FE 01 3E
	cmp ($7F.b,X)		; C1 7F
	bra -16.b		; 80 F0
	ora $8300FF.l		; 0F FF 00 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	brk $80.b		; 00 80
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	beq -127.b		; F0 81
	ror $FF00.w,X		; 7E 00 FF
	brk $FF.b		; 00 FF
	cpy $3B.b		; C4 3B
.INDEX 8
	sep #$1D		; E2 1D
	and ($0E.b),Y		; 31 0E
	ora $F006.w,Y		; 19 06 F0
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3B.b		; 00 3B
	brk $1D.b		; 00 1D
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $76.b		; 00 76
	ora #$6D.b		; 09 6D
	ora ($EC.b)		; 12 EC
	ora ($EC.b,S),Y		; 13 EC
	ora ($C8.b,S),Y		; 13 C8
	and [$C8.b],Y		; 37 C8
	and [$C8.b],Y		; 37 C8
	and [$C0.b],Y		; 37 C0
	and $120609.l,X		; 3F 09 06 12
	tsb $0C13.w		; 0C 13 0C
	ora ($0C.b,S),Y		; 13 0C
	and [$08.b],Y		; 37 08
	and [$08.b],Y		; 37 08
	and [$08.b],Y		; 37 08
	and $679800.l,X		; 3F 00 98 67
	jsr $47DF.w		; 20 DF 47
	clv		; B8
	ora $E31CF0.l		; 0F F0 1C E3
	and ($CD.b)		; 32 CD
	stz $9B.b		; 64 9B
	adc #$96.b		; 69 96
	adc [$18.b]		; 67 18
	cmp $40B820.l,X		; DF 20 B8 40
	beq   0.b		; F0 00
	sbc $00.b,S		; E3 00
	cmp $9B02.w		; CD 02 9B
	tsb $96.b		; 04 96
	php		; 08
	bra 127.b		; 80 7F
	bne  47.b		; D0 2F
	cmp ($2D.b)		; D2 2D
	sbc #$16.b		; E9 16
	sbc $F312.w		; ED 12 F3
	tsb $06F9.w		; 0C F9 06
	jsr ($7F03.w,X)		; FC 03 7F
	brk $2F.b		; 00 2F
	bpl  45.b		; 10 2D
	ora ($16.b)		; 12 16
	ora #$12.b		; 09 12
	ora $030C.w		; 0D 0C 03
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	cli		; 58
	ldy #$50.b		; A0 50
	ldy #$30.b		; A0 30
	cpy #$30.b		; C0 30
	cpy #$90.b		; C0 90
	rts		; 60

	cld		; D8
	jsr $10EC.w		; 20 EC 10
	pea $A008.w		; F4 08 A0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	cpx #$08.b		; E0 08
	beq -75.b		; F0 B5
	sty $DD.b		; 84 DD
	eor $AA.b		; 45 AA
	jsl $E912D6.l		; 22 D6 12 E9
	ora #$F5.b		; 09 F5
	ora $1A.b		; 05 1A
	cop $EE.b		; 02 EE
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ply		; 7A
	adc $5D7F3A.l,X		; 7F 3A 7F 5D
	sbc $F6FFED.l,X		; FF ED FF F6
	sbc $FDFFFA.l,X		; FF FA FF FD
	sbc $003B1D.l,X		; FF 1D 3B 00
	cmp $048F00.l		; CF 00 8F 04
	cmp $287F94.l,X		; DF 94 7F 28
	and $88BF18.l,X		; 3F 18 BF 88
	ora $000048.l,X		; 1F 48 00 00
	bmi  48.b		; 30 30
	stz $70.b,X		; 74 70
	ldy $20.b,X		; B4 20
	tay		; A8
	bra -104.b		; 80 98
	cpy #$88.b		; C0 88
	rts		; 60

	php		; 08
	cpx #$C6.b		; E0 C6
	sec		; 38
	.db $62, $9C, $73		; 62 9C 73
	sty $C639.w		; 8C 39 C6
	sec		; 38
	cmp [$9C.b]		; C7 9C
	adc $9E.b,S		; 63 9E
	adc ($DE.b,X)		; 61 DE
	and ($38.b,X)		; 21 38
	brk $9C.b		; 00 9C
	brk $8C.b		; 00 8C
	brk $C6.b		; 00 C6
	brk $C7.b		; 00 C7
	brk $63.b		; 00 63
	brk $61.b		; 00 61
	brk $21.b		; 00 21
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $2E.b		; 00 2E
	rts		; 60

	asl $30.b,X		; 16 30
	asl A		; 0A
	clc		; 18
	brk $0C.b		; 00 0C
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$F0.b],Y		; 97 F0
	eor $003F40.l,X		; 5F 40 3F 00
	bit $8800.w,X		; 3C 00 88
	sta $00FC00.l		; 8F 00 FC 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	jsr $00BF.w		; 20 BF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	stz $04.b,X		; 74 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	and $08.b,S		; 23 08
	and $08.b,S		; 23 08
	and $09.b,S		; 23 09
	jsl $042208.l		; 22 08 22 04
	rol $15.b		; 26 15
	and [$2B.b],Y		; 37 2B
	rol $021E.w,X		; 3E 1E 02
	asl $1E02.w,X		; 1E 02 1E
	cop $1D.b		; 02 1D
	brk $1D.b		; 00 1D
	brk $19.b		; 00 19
	brk $08.b		; 00 08
	brk $36.b		; 00 36
	trb $1E.b		; 14 1E
	pha		; 48
	bpl 105.b		; 10 69
	brk $5E.b		; 00 5E
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	rts		; 60

	cpy #$A0.b		; C0 A0
	ldy #$B7.b		; A0 B7
	brk $9E.b		; 00 9E
	php		; 08
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	adc [$75.b],Y		; 77 75
	ldx $770E.w,Y		; BE 0E 77
	and $BE.b,X		; 35 BE
	sta $3B7B71.l		; 8F 71 7B 3B
	tda		; 7B
	tda		; 7B
	tda		; 7B
	tda		; 7B
	tda		; 7B
	sbc $717F8A.l,X		; FF 8A 7F 71
	lda $71FE8A.l,X		; BF 8A FE 71
	bvs -113.b		; 70 8F
	php		; 08
	sbc $3AFF1A.l,X		; FF 1A FF 3A
	sbc $808080.l,X		; FF 80 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	ora $38.b,S		; 03 38
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	sei		; 78
	eor $3740.w,X		; 5D 40 37
	bmi  15.b		; 30 0F
	ora $000701.l		; 0F 01 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $7E.b		; 00 7E
	rol $0F3F.w,X		; 3E 3F 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	bcs  16.b		; B0 10
	pla		; 68
	php		; 08
	cld		; D8
	iny		; C8
	plp		; 28
	inx		; E8
	cli		; 58
	sei		; 78
	bmi -104.b		; 30 98
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	tya		; 98
	bcc  -8.b		; 90 F8
	bmi  56.b		; 30 38
	bpl -104.b		; 10 98
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	jmp $2604.w		; 4C 04 26
	asl A		; 0A
	tas		; 1B
	tsb $0C.b		; 04 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D9.b		; 00 D9
	ora $04F4.w,Y		; 19 F4 04
	ora ($01.b,X)		; 01 01
	plx		; FA
	cop $E5.b		; 02 E5
	adc $C3F1.w		; 6D F1 C3
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	sbc $FBFEE6.l,X		; FF E6 FE FB
	sbc $02FF.w,X		; FD FF 02
	ora [$60.b]		; 07 60
	ora $800FC0.l,X		; 1F C0 0F 80
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $237F07.l		; 0F 07 7F 23
	sbc $7A.b,S		; E3 7A
	cop $FF.b		; 02 FF
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $09.b		; 00 09
	php		; 08
	eor $FF40.w,X		; 5D 40 FF
	ora ($F9.b,X)		; 01 F9
	brk $F6.b		; 00 F6
	tsb $EF.b		; 04 EF
	asl $1C9F.w		; 0E 9F 1C
	iny		; C8
	sed		; F8
	ora $0F1FF0.l		; 0F F0 1F 0F
	ora ($02.b,S),Y		; 13 02
	ora ($01.b,S),Y		; 13 01
	sbc $F701.w,X		; FD 01 F7
	ora ($E7.b,X)		; 01 E7
	ora $3F.b,S		; 03 3F
	and [$00.b],Y		; 37 00
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	tsb $0C0D.w		; 0C 0D 0C
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	ora $0702.w		; 0D 02 07
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $5F.b		; 00 5F
	pha		; 48
	lda $707FB0.l		; AF B0 7F 70
	sbc [$F8.b],Y		; F7 F8
	sbc $F8FBF8.l,X		; FF F8 FB F8
	sbc [$F4.b],Y		; F7 F4
	adc $086E.w		; 6D 6E 08
	cpx #$00.b		; E0 00
	beq  32.b		; F0 20
	beq 112.b		; F0 70
	sed		; F8
	beq  -8.b		; F0 F8
	beq  -4.b		; F0 FC
	rts		; 60

	jsr ($FE4C.w,X)		; FC 4C FE
	pea $F408.w		; F4 08 F4
	php		; 08
	txs		; 9A
	stz $EE.b		; 64 EE
	bpl  86.b		; 10 56
	tay		; A8
	lda $0AF550.l		; AF 50 F5 0A
	eor $0822.w,X		; 5D 22 08
	beq   8.b		; F0 08
	bvs 100.b		; 70 64
	clc		; 18
	bpl  12.b		; 10 0C
	jsr $101C.w		; 20 1C 10
	tsb $040A.w		; 0C 0A 04
	jsl $443B9C.l		; 22 9C 3B 44
	adc $9C.b,S		; 63 9C
	lsr $A8.b,X		; 56 A8
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $0814.w		; 0C 14 08
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	asl A		; 0A
	and $001E16.l,X		; 3F 16 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	bpl  22.b		; 10 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	tas		; 1B
	rol $19.b		; 26 19
	asl $09.b,X		; 16 09
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora $0D00.w		; 0D 00 0D
	brk $09.b		; 00 09
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	cpy #$CE.b		; C0 CE
	bmi  39.b		; 30 27
	cld		; D8
	sta $7C.b,S		; 83 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bmi -64.b		; 30 C0
	cld		; D8
	jsr $007C.w		; 20 7C 00
	tsa		; 3B
	tda		; 7B
	tsa		; 3B
	tda		; 7B
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	tas		; 1B
	tsa		; 3B
	tas		; 1B
	tsa		; 3B
	tas		; 1B
	tas		; 1B
	dec A		; 3A
	sbc $3AFF3A.l,X		; FF 3A FF 3A
	adc $1A7F1A.l,X		; 7F 1A 7F 1A
	adc $187F1A.l,X		; 7F 1A 7F 18
	adc $003F08.l,X		; 7F 08 3F 00
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$19.b		; C0 19
	ora $1D0D.w,X		; 1D 0D 1D
	ora $0C0D.w		; 0D 0D 0C
	asl $0E04.w		; 0E 04 0E
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	php		; 08
	and $003F00.l,X		; 3F 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $030F01.l,X		; 1F 01 0F 03
	ora $000700.l		; 0F 00 07 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	cpy #$1C.b		; C0 1C
	trb $E2EE.w		; 1C EE E2
	beq -112.b		; F0 90
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	bpl  -2.b		; 10 FE
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	ror A		; 6A
	sty $6A.b		; 84 6A
	sty $66.b		; 84 66
	bra  98.b		; 80 62
	bra  98.b		; 80 62
	bra -63.b		; 80 C1
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $84.b		; 00 84
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $23.b		; 00 23
	brk $03.b		; 00 03
	brk $02.b		; 00 02
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
	clc		; 18
	ora $100718.l		; 0F 18 07 10
	ora [$30.b]		; 07 30
	ora $200F30.l,X		; 1F 30 0F 20
	asl $3F60.w,X		; 1E 60 3F
	adc ($0F.b,X)		; 61 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $101F00.l		; 0F 00 1F 10
	ora $001F00.l		; 0F 00 1F 00
	and $001E20.l,X		; 3F 20 1E 00
	cmp $F9C5.w		; CD C5 F9
	cmp #$71.b		; C9 71
	bvc 113.b		; 50 71
	bvc  49.b		; 50 31
	rti		; 40

	sta $0FE8.w,Y		; 99 E8 0F
	dec $07.b		; C6 07
	.db $82, $77, $32		; 82 77 32
	eor $0EDE06.l		; 4F 06 DE 0E
	stz $CE0E.w,X		; 9E 0E CE
	lsr $060E.w		; 4E 0E 06
	stx $80.b		; 86 80
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$09.b]		; 07 09
	asl $11.b		; 06 11
	asl $0E11.w		; 0E 11 0E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $8C.b		; 00 8C
	bvs  59.b		; 70 3B
	cpy #$7C.b		; C0 7C
	sta $F0.b,S		; 83 F0
	ora $823EC1.l		; 0F C1 3E 82
	adc $FF00.w,X		; 7D 00 FF
	brk $FF.b		; 00 FF
	bvs   0.b		; 70 00
	cpy #$00.b		; C0 00
	sta $00.b,S		; 83 00
	ora $003E00.l		; 0F 00 3E 00
	adc $FF00.w,X		; 7D 00 FF
	brk $FF.b		; 00 FF
	brk $2F.b		; 00 2F
	bpl  47.b		; 10 2F
	bpl  23.b		; 10 17
	php		; 08
	asl $09.b,X		; 16 09
	asl $09.b,X		; 16 09
	phy		; 5A
	ora $4B.b		; 05 4B
	tsb $6B.b		; 04 6B
	tsb $10.b		; 04 10
	ora $080F10.l		; 0F 10 0F 08
	ora [$09.b]		; 07 09
	asl $09.b		; 06 09
	asl $05.b		; 06 05
	cop $04.b		; 02 04
	ora $04.b,S		; 03 04
	ora $90.b,S		; 03 90
	adc $F847B8.l		; 6F B8 47 F8
	ora [$68.b]		; 07 68
	sta [$2C.b],Y		; 97 2C
	cmp ($07.b,S),Y		; D3 07
	sed		; F8
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	adc $B84790.l		; 6F 90 47 B8
	ora [$F8.b]		; 07 F8
	sta [$68.b],Y		; 97 68
	cmp ($2C.b,S),Y		; D3 2C
	sed		; F8
	ora [$FC.b]		; 07 FC
	ora $FC.b,S		; 03 FC
	ora $FF.b,S		; 03 FF
	brk $07.b		; 00 07
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora [$F8.b]		; 07 F8
	ora $C738E0.l,X		; 1F E0 38 C7
	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	ora [$E0.b]		; 07 E0
	ora $C038C7.l,X		; 1F C7 38 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	cpy #$1C.b		; C0 1C
	cpx #$0E.b		; E0 0E
	beq -58.b		; F0 C6
	sec		; 38
	ora $FC.b,S		; 03 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sec		; 38
	cpy #$FC.b		; C0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora $110010.l		; 0F 10 00 11
	ora ($3E.b,X)		; 01 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora $010E0F.l		; 0F 0F 0E 01
	ora ($0D.b,X)		; 01 0D
	brk $13.b		; 00 13
	ora ($17.b,X)		; 01 17
	ora $8F.b		; 05 8F
	ora $FF.b		; 05 FF
	bra  15.b		; 80 0F
	asl $FEFE.w		; 0E FE FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0D0C.w		; 0D 0C 0D
	php		; 08
	ora $00.b		; 05 00
	bra   0.b		; 80 00
	inc $FEF0.w,X		; FE F0 FE
	ora ($FC.b,X)		; 01 FC
	sbc $3717E8.l,X		; FF E8 17 37
	php		; 08
	lda $FFA2.w,X		; BD A2 FF
	cpy #$83.b		; C0 83
	tsb $1E.b		; 04 1E
	eor $BB3F.w,X		; 5D 3F BB
	lda $0817BB.l,X		; BF BB 17 08
	iny		; C8
	cmp [$E2.b]		; C7 E2
	eor ($C0.b,X)		; 41 C0
	brk $00.b		; 00 00
	jmp ($FD00.w,X)		; 7C 00 FD
	clc		; 18
	sbc $00FF3B.l,X		; FF 3B FF 00
	sbc $E0FF00.l,X		; FF 00 FF E0
	ora $E0C738.l,X		; 1F 38 C7 E0
	ora $7F00FF.l,X		; 1F FF 00 7F
	bra -90.b		; 80 A6
	cmp [$FF.b]		; C7 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	cpx #$C7.b		; E0 C7
	sec		; 38
	ora $000000.l,X		; 1F 00 00 00
	brk $C0.b		; 00 C0
	asl $0FD8.w,X		; 1E D8 0F
	ora $1802.w,Y		; 19 02 18
	ora $0D.b		; 05 0D
	ora $0E.b,S		; 03 0E
	ora $04.b		; 05 04
	stx $80.b		; 86 80
	sta $80.b,S		; 83 80
	cpy #$C0.b		; C0 C0
	asl $00.b		; 06 00
	ora $000308.l		; 0F 08 03 00
	ora [$05.b]		; 07 05
	asl $02.b		; 06 02
	sta ($01.b,X)		; 81 01
	bra  64.b		; 80 40
	bra  97.b		; 80 61
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	cpx #$60.b		; E0 60
	cpy #$60.b		; C0 60
	cpx #$E0.b		; E0 E0
	cpx #$F0.b		; E0 F0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rts		; 60

	rti		; 40

	cpx #$80.b		; E0 80
	brk $70.b		; 00 70
	rts		; 60

	beq  96.b		; F0 60
	sed		; F8
	beq -96.b		; F0 A0
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	rts		; 60

	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $1C.b		; 00 1C
	eor ($3E.b,X)		; 41 3E
	cmp $78.b,S		; C3 78
	cmp $74.b,S		; C3 74
	asl $68.b		; 06 68
	tsb $1850.w		; 0C 50 18
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	and $407C01.l,X		; 3F 01 7C 40
	ldx $F882.w,Y		; BE 82 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	ora $80.b,S		; 03 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  15.b		; 10 0F
	jsr $201F.w		; 20 1F 20
	ora $261D22.l,X		; 1F 22 1D 26
	ora $1827.w,Y		; 19 27 18
	and [$18.b]		; 27 18
	and $000F10.l		; 2F 10 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $1902.w,X		; 1D 02 19
	asl $18.b		; 06 18
	ora [$18.b]		; 07 18
	ora [$10.b]		; 07 10
	ora $00FF00.l		; 0F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra 109.b		; 80 6D
	cop $34.b		; 02 34
	ora $2E.b,S		; 03 2E
	ora ($37.b),Y		; 11 37
	php		; 08
	ora ($0C.b,S),Y		; 13 0C
	ora $0806.w,Y		; 19 06 08
	ora [$0D.b]		; 07 0D
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	inc $7F80.w,X		; FE 80 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	cpy #$3F.b		; C0 3F
	cpx #$1F.b		; E0 1F
	sec		; 38
	cmp [$FE.b]		; C7 FE
	ora ($7F.b,X)		; 01 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $C7.b		; 00 C7
	brk $63.b		; 00 63
	stz $B04F.w		; 9C 4F B0
	ora $C738E0.l,X		; 1F E0 38 C7
	jsr $47DF.w		; 20 DF 47
	clv		; B8
	jmp $98B0.w		; 4C B0 98
	rts		; 60

	stz $B060.w		; 9C 60 B0
	rti		; 40

	cpx #$00.b		; E0 00
	cmp [$00.b]		; C7 00
	cmp $00B800.l,X		; DF 00 B8 00
	bcs   0.b		; B0 00
	rts		; 60

	bra -16.b		; 80 F0
	ora $F000FF.l		; 0F FF 00 F0
	brk $1C.b		; 00 1C
	cpx #$06.b		; E0 06
	sed		; F8
	xce		; FB
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	rti		; 40

	eor $607E40.l,X		; 5F 40 7E 60
	and [$77.b],Y		; 37 77
	sec		; 38
	sei		; 78
	and $D81F78.l,X		; 3F 78 1F D8
	eor $3F7FCC.l		; 4F CC 7F 3F
	adc $1F7F3F.l,X		; 7F 3F 7F 1F
	and $071F08.l,X		; 3F 08 1F 07
	ora $476F07.l		; 0F 07 6F 47
	and $01F903.l,X		; 3F 03 F9 01
	cmp $E11D.w,X		; DD 1D E1
	sbc ($3B.b,X)		; E1 3B
	ora $EA.b,S		; 03 EA
	cop $DA.b		; 02 DA
	asl A		; 0A
	ldy $7E1D.w,X		; BC 1D 7E
	sec		; 38
	jsr ($FDFF.w,X)		; FC FF FD
	sbc $FD.b,S		; E3 FD
	ora $F2FFFB.l,X		; 1F FB FF F2
	sbc [$E8.b],Y		; F7 E8
	sbc [$DC.b]		; E7 DC
	cmp $B8.b,S		; C3 B8
	sta ($BF.b,X)		; 81 BF
	tyx		; BB
	adc $797B.w,Y		; 79 7B 79
	adc $7D7C.w,X		; 7D 7C 7D
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	lda $39FF.w,Y		; B9 FF 39
	sbc $00FF78.l,X		; FF 78 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($00.b,X)		; E1 00
	bra   0.b		; 80 00
	brk $D2.b		; 00 D2
	sbc $C0.b,S		; E3 C0
	cmp ($BC.b,X)		; C1 BC
	ldy $4242.w,X		; BC 42 42
	bit $423C.w,X		; 3C 3C 42
	.db $42, $11		; 42 11
	bit $B8.b,X		; 34 B8
	adc $8E.b,S		; 63 8E
	cpx $FE82.w		; EC 82 FE
	ora $00FF.w,Y		; 19 FF 00
	sbc $00FF18.l,X		; FF 18 FF 00
	sbc $1DE62C.l,X		; FF 2C E6 1D
	brk $E0.b		; 00 E0
	cpx #$F0.b		; E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	bit $1E7C.w,X		; 3C 7C 1E
	asl $070F.w,X		; 1E 0F 07
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	cpx #$F0.b		; E0 F0
	beq  -8.b		; F0 F8
	sec		; 38
	jsr ($FE0C.w,X)		; FC 0C FE
	asl $7F.b		; 06 7F
	ora $1F.b,S		; 03 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	bvs 112.b		; 70 70
	bmi 120.b		; 30 78
	trb $0C38.w		; 1C 38 0C
	trb $0F02.w		; 1C 02 0F
	ora ($03.b,X)		; 01 03
	ora $83.b,S		; 03 83
	sed		; F8
	sed		; F8
	bmi  -8.b		; 30 F8
	bpl  -4.b		; 10 FC
	php		; 08
	ror $3F04.w,X		; 7E 04 3F
	brk $1F.b		; 00 1F
	brk $8F.b		; 00 8F
	ora ($FF.b,X)		; 01 FF
	cpy #$FF.b		; C0 FF
	brk $00.b		; 00 00
	jsr ($E000.w,X)		; FC 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $0E.b		; 00 0E
	beq  56.b		; F0 38
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $90.b		; 00 90
	rts		; 60

	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	bpl -32.b		; 10 E0
	trb $60E0.w		; 1C E0 60
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $0F.b		; 00 0F
	beq   3.b		; F0 03
	jsr ($FF00.w,X)		; FC 00 FF
	ora $FC.b,S		; 03 FC
	asl $F9.b		; 06 F9
	ora #$F6.b		; 09 F6
	brk $FF.b		; 00 FF
	sta $7C.b,S		; 83 7C
	beq   0.b		; F0 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FC.b		; 00 FC
	ora $F8.b,S		; 03 F8
	ora [$F6.b]		; 07 F6
	ora #$FF.b		; 09 FF
	brk $7C.b		; 00 7C
	bra -64.b		; 80 C0
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	cpy #$04.b		; C0 04
	sed		; F8
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	adc $2B92.w		; 6D 92 2B
	pei ($87.b)		; D4 87
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $3C.b		; 00 3C
	cpy #$EC12.w		; C0 12 EC
	cpy $3B.b		; C4 3B
	sei		; 78
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $4F007F.l,X		; FF 7F 00 4F
	cpy #$FE02.w		; C0 02 FE
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $80BF00.l,X		; FF 00 BF 80
	ora $000C.w		; 0D 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$FC7C.w		; C0 7C FC
	inc $00F2.w,X		; FE F2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FE30.w,X)		; FC 30 FE
	rts		; 60

	sbc $00FF00.l,X		; FF 00 FF 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	adc $0000.w,Y		; 79 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  -1.b		; 30 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	asl $3D0E.w		; 0E 0E 3D
	and ($6F.b),Y		; 31 6F
	eor $007070.l		; 4F 70 70 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($3F.b,X)		; 01 3F
	asl $307F.w		; 0E 7F 30
	bvs   0.b		; 70 00
	ora $1C62.w,Y		; 19 62 1C
	jsl $0C220C.l		; 22 0C 22 0C
	and $1E.b,S		; 23 1E
	and ($04.b,S),Y		; 33 04
	and ($04.b),Y		; 31 04
	ora ($08.b),Y		; 11 08
	ora $203C.w,Y		; 19 3C 20
	trb $1C00.w		; 1C 00 1C
	brk $1E.b		; 00 1E
	cop $0C.b		; 02 0C
	brk $1E.b		; 00 1E
	bpl  14.b		; 10 0E
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	tas		; 1B
	ora $0A0B0D.l		; 0F 0D 0B 0A
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $020F08.l		; 0F 08 0F 02
	ora $020705.l		; 0F 05 07 02
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	tya		; 98
	ora $7E01FD.l,X		; 1F FD 01 7E
	brk $36.b		; 00 36
	beq   4.b		; F0 04
	jmp ($0700.w,X)		; 7C 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $04.b		; E4 04
	inc $FF00.w,X		; FE 00 FF
	brk $4F.b		; 00 4F
	rti		; 40

	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bit $3A38.w,X		; 3C 38 3A
	php		; 08
	dec $C7.b		; C6 C7
	ldx $E03E.w,Y		; BE 3E E0
	sbc $000100.l,X		; FF 00 01 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	tsb $FE.b		; 04 FE
	sec		; 38
	sbc $E1C0.w,Y		; F9 C0 E1
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $63.b		; 00 63
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $E100.w		; 1C 00 E1
	asl $C07F.w,X		; 1E 7F C0
	stx $A9.b,Y		; 96 A9
	ora $AC91.w,X		; 1D 91 AC
	bra  62.b		; 80 3E
	ora ($35.b,X)		; 01 35
	iny		; C8
	bne   6.b		; D0 06
	asl $8000.w,X		; 1E 00 80
	bra  73.b		; 80 49
	ora ($72.b),Y		; 11 72
	clc		; 18
	adc [$00.b],Y		; 77 00
	sbc $487E00.l,X		; FF 00 7E 48
	bit $8404.w,X		; 3C 04 84
	sei		; 78
	stz $88.b,X		; 74 88
	ldy $E850.w		; AC 50 E8
	bcc -48.b		; 90 D0
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	bpl -120.b		; 10 88
	bpl  80.b		; 10 50
	rti		; 40

	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jmp $988020.l		; 5C 20 80 98
	tsb $AC.b		; 04 AC
	ror $08.b		; 66 08
	.db $62, $1E, $33		; 62 1E 33
	tsb $31.b		; 04 31
	ora $000019.l		; 0F 19 00 00
	rti		; 40

	jmp $186000.l		; 5C 00 60 18
	brk $3C.b		; 00 3C
	jsr $000C.w		; 20 0C 00
	asl $0610.w,X		; 1E 10 06
	brk $CF.b		; 00 CF
	and $EB38C8.l,X		; 3F C8 38 EB
	clc		; 18
	xba		; EB
	clc		; 18
	adc $18.b,S		; 63 18
	adc ($08.b,S),Y		; 73 08
	adc $0C.b,X		; 75 0C
	lda ($0C.b),Y		; B1 0C
	bpl  16.b		; 10 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	tya		; 98
	inc $6E4C.w,X		; FE 4C 6E
	sty $36.b		; 84 36
	sty $36.b		; 84 36
	cpx $36.b		; E4 36
	cpx $C43E.w		; EC 3E C4
	asl $1EE4.w,X		; 1E E4 1E
	mvp $90,$44		; 44 44 90
	brk $E8.b		; 00 E8
	jsr $20E8.w		; 20 E8 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E8.b		; 00 E8
	php		; 08
	beq  16.b		; F0 10
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $0E.b,S		; 03 0E
	ora $0C.b		; 05 0C
	ora $18.b,S		; 03 18
	ora $000018.l		; 0F 18 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	php		; 08
	sty $8C00.w		; 8C 00 8C
	bvc  24.b		; 50 18
	cpy #$E018.w		; C0 18 E0
	sec		; 38
	bra  56.b		; 80 38
	bvc 120.b		; 50 78
	ldy #$70F0.w		; A0 F0 70
	brk $F8.b		; 00 F8
	dey		; 88
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	php		; 08
	inc A		; 1A
	tsb $16.b		; 04 16
	bpl  52.b		; 10 34
	php		; 08
	jmp ($6820.w)		; 6C 20 68
	bcc -40.b		; 90 D8
	bcc -40.b		; 90 D8
	cpy #$04C8.w		; C0 C8 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $30.b		; 00 30
	jsr $0010.w		; 20 10 00
	ldy #$A000.w		; A0 00 A0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	ora ($00.b)		; 12 00
	ora ($08.b)		; 12 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	bmi  59.b		; 30 3B
	rol $0C2F.w		; 2E 2F 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $3E.b		; 00 3E
	asl A		; 0A
	sec		; 38
	bpl   2.b		; 10 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $0B.b		; 02 0B
	tsb $0B.b		; 04 0B
	tsb $1E.b		; 04 1E
	ora ($16.b,X)		; 01 16
	ora #$0001.w		; 09 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	ora ($06.b,X)		; 01 06
	ora #$D906.w		; 09 06 D9
	bit $6499.w		; 2C 99 64
	sta $1964.w,Y		; 99 64 19
	cpx $3B.b		; E4 3B
	dec $22.b		; C6 22
	dec $31.b		; C6 31
	cmp [$7B.b],Y		; D7 7B
	sta $63C02B.l		; 8F 2B C0 63
	bra  99.b		; 80 63
	bra -29.b		; 80 E3
	brk $C1.b		; 00 C1
	brk $D9.b		; 00 D9
	clc		; 18
	phx		; DA
	asl A		; 0A
	phb		; 8B
	brk $3C.b		; 00 3C
	adc ($BB.b,S),Y		; 73 BB
	stz $B4.b,X		; 74 B4
	tda		; 7B
	tsb $8950.w		; 0C 50 89
	sbc ($A3.b),Y		; F1 A3
	sbc [$CF.b]		; E7 CF
	cmp $B37E7C.l,X		; DF 7C 7E B3
	bit $B4.b,X		; 34 B4
	bmi -125.b		; 30 83
	sec		; 38
	bcc  39.b		; 90 27
	brk $37.b		; 00 37
	ora ($3F.b,X)		; 01 3F
	dec $3F.b		; C6 3F
	cld		; D8
	lda $0000B8.l,X		; BF B8 00 00
	bra 120.b		; 80 78
	sei		; 78
	sei		; 78
	sed		; F8
	dey		; 88
	iny		; C8
	bra -112.b		; 80 90
	rts		; 60

	rts		; 60

	cpx #$4070.w		; E0 70 40
	bvc -128.b		; 50 80
	sei		; 78
	bvs  -4.b		; 70 FC
	sec		; 38
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	rti		; 40

	beq   0.b		; F0 00
	inc $0102.w,X		; FE 02 01
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $17.b		; 04 17
	php		; 08
	rol $2A10.w		; 2E 10 2A
	trb $01.b		; 14 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	cop $04.b		; 02 04
	cop $09.b		; 02 09
	ora $11.b		; 05 11
	ora $0915.w		; 0D 15 09
	adc $A12D9F.l,X		; 7F 9F 2D A1
	dec A		; 3A
	sei		; 78
	ora [$1E.b],Y		; 17 1E
	and $61.b,S		; 23 61
	bpl  27.b		; 10 1B
	and [$E6.b]		; 27 E6
	eor [$DE.b],Y		; 57 DE
	stz $BF00.w,X		; 9E 00 BF
	lsr $E71F.w,X		; 5E 1F E7
	ora [$F9.b],Y		; 17 F9
	ora ($FC.b,X)		; 01 FC
	bpl  -1.b		; 10 FF
	rti		; 40

	lsr $0622.w,X		; 5E 22 06
	brk $E0.b		; 00 E0
	cli		; 58
	sei		; 78
	pei ($94.b)		; D4 94
	ply		; 7A
	adc ($FE.b)		; 72 FE
	ldy $FE.b,X		; B4 FE
	bvs  63.b		; 70 3F
	cpy #$827D.w		; C0 7D 82
	brk $00.b		; 00 00
	tya		; 98
	brk $FC.b		; 00 FC
	pla		; 68
	dec $FC8C.w,X		; DE 8C FC
	pha		; 48
	bvs   0.b		; 70 00
	php		; 08
	nop		; EA
	asl A		; 0A
	iny		; C8
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpx #$50E0.w		; E0 E0 50
	bpl -16.b		; 10 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpx #$00F0.w		; E0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda #$6946.w		; A9 46 69
	asl $69.b		; 06 69
	asl $35.b		; 06 35
	cop $15.b		; 02 15
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $46.b		; 00 46
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $59.b		; 00 59
	tsb $02.b		; 04 02
	asl $00.b		; 06 00
	asl $01.b		; 06 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	asl $1EF0.w,X		; 1E F0 1E
	cpx #$700C.w		; E0 0C 70
	tsb $0C70.w		; 0C 70 0C
	clv		; B8
	sty $8430.w		; 8C 30 84
	bmi -124.b		; 30 84
	cpx $04.b		; E4 04
	cpx $04.b		; E4 04
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	sed		; F8
	bra 120.b		; 80 78
	brk $06.b		; 00 06
	bmi  28.b		; 30 1C
	and ($0A.b),Y		; 31 0A
	and $14.b,S		; 23 14
	adc [$38.b]		; 67 38
	adc $4D00.w		; 6D 00 4D
	bpl -39.b		; 10 D9
	rts		; 60

	sbc ($1F.b),Y		; F1 1F
	bpl  15.b		; 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $38.b		; 00 38
	jsr $0010.w		; 20 10 00
	sec		; 38
	php		; 08
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	beq  64.b		; F0 40
	beq -64.b		; F0 C0
	beq -128.b		; F0 80
	ldy #$2000.w		; A0 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	tay		; A8
	tya		; 98
	tya		; 98
	cli		; 58
	pha		; 48
	cli		; 58
	pha		; 48
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  64.b		; F0 40
	sed		; F8
	rts		; 60

	sei		; 78
	bmi 120.b		; 30 78
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	and $1F3737.l		; 2F 37 37 1F
	ora ($1A.b,S),Y		; 13 1A
	bpl  25.b		; 10 19
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	trb $3E.b		; 14 3E
	php		; 08
	ora ($00.b,S),Y		; 13 00
	ora ($01.b),Y		; 11 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $09.b,X		; 16 09
	bit $1B.b		; 24 1B
	bit $2C13.w		; 2C 13 2C
	ora ($68.b,S),Y		; 13 68
	ora [$48.b],Y		; 17 48
	and [$40.b],Y		; 37 40
	and $093F40.l,X		; 3F 40 3F 09
	asl $1B.b		; 06 1B
	tsb $13.b		; 04 13
	tsb $0C13.w		; 0C 13 0C
	ora [$08.b],Y		; 17 08
	and [$08.b],Y		; 37 08
	and $003F00.l,X		; 3F 00 3F 00
	adc $987D81.l,X		; 7F 81 7D 98
	adc [$A0.b]		; 67 A0
	eor $FA80.w		; 4D 80 FA
	cop $F4.b		; 02 F4
	tsb $F5.b		; 04 F5
	ora $E9.b		; 05 E9
	ora ($83.b,X)		; 01 83
	cop $9A.b		; 02 9A
	cop $B8.b		; 02 B8
	clc		; 18
	lda ($32.b)		; B2 32
	ora [$05.b]		; 07 05
	ora $0A0F0B.l		; 0F 0B 0F 0A
	ora [$16.b],Y		; 17 16
	sed		; F8
	sei		; 78
	cpx $71.b		; E4 71
	ror A		; 6A
	lsr A		; 4A
	sbc $04.b		; E5 04
	lda ($A0.b,X)		; A1 A0
	sbc $246FA4.l		; EF A4 6F 24
	adc $BFF024.l		; 6F 24 F0 BF
	cpy #$C8BF.w		; C0 BF C8
	sta $FA1E14.l,X		; 9F 14 1E FA
	lsr $5AFE.w,X		; 5E FE 5A
	inc $FEDA.w,X		; FE DA FE
	phx		; DA
	asl $0E2E.w,X		; 1E 2E 0E
	asl $0E.b		; 06 0E
	asl A		; 0A
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	brk $40.b		; 00 40
	brk $0C.b		; 00 0C
	sbc $00FF06.l,X		; FF 06 FF 00
	ora $001F00.l,X		; 1F 00 1F 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  31.b		; 80 1F
	brk $70.b		; 00 70
	ora $906F90.l		; 0F 90 6F 90
	adc $7E19E6.l		; 6F E6 19 7E
	sta ($5D.b,X)		; 81 5D
	ldx #$E01F.w		; A2 1F E0
	brk $00.b		; 00 00
	ora $106F00.l		; 0F 00 6F 10
	eor $7B0030.l		; 4F 30 00 7B
	sta ($7A.b,X)		; 81 7A
	ldx #$E054.w		; A2 54 E0
	brk $C0.b		; 00 C0
	brk $78.b		; 00 78
	bra   4.b		; 80 04
	sed		; F8
	dec $28.b,X		; D6 28
	inc $AA50.w		; EE 50 AA
	trb $1A.b		; 14 1A
	bit $1C.b		; 24 1C
	ldy #$0000.w		; A0 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $28.b		; 00 28
	sty $10.b,X		; 94 10
	tsb $0054.w		; 0C 54 00
	cpx $20.b		; E4 20
	cpy #$2B00.w		; C0 00 2B
	trb $63.b		; 14 63
	trb $3946.w		; 1C 46 39
	mvp $46,$38		; 44 38 46
	dec A		; 3A
	eor $5E33.w		; 4D 33 5E
	and ($9E.b,X)		; 21 9E
	adc ($14.b,X)		; 61 14
	asl A		; 0A
	trb $3900.w		; 1C 00 39
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $61.b		; 00 61
	ora ($A3.b,X)		; 01 A3
	mvp $14,$E3		; 44 E3 14
	lda $ECD2.w		; AD D2 EC
	cop $D8.b		; 02 D8
	ror $7C.b		; 66 7C
	asl $A0.b		; 06 A0
	stz $CC90.w		; 9C 90 CC
	jmp $001884.l		; 5C 84 18 00
	cld		; D8
	bcc -104.b		; 90 98
	bit $BC.b		; 24 BC
	rti		; 40

	sed		; F8
	brk $78.b		; 00 78
	clc		; 18
	bvs  64.b		; 70 40
	rti		; 40

	and $483F40.l,X		; 3F 40 3F 48
	and [$48.b],Y		; 37 48
	and [$48.b],Y		; 37 48
	and [$4C.b],Y		; 37 4C
	and ($2C.b,S),Y		; 33 2C
	ora ($2C.b,S),Y		; 13 2C
	ora ($3F.b,S),Y		; 13 3F
	brk $3F.b		; 00 3F
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $E9.b		; 00 E9
	ora ($C9.b,X)		; 01 C9
	ora ($D2.b,X)		; 01 D2
	cop $D2.b		; 02 D2
	cop $F2.b		; 02 F2
	jsl $73827E.l		; 22 7E 82 73
	sta $178F71.l		; 8F 71 8F 17
	asl $37.b,X		; 16 37
	rol $2F.b,X		; 36 2F
	and $2D2F.w		; 2D 2F 2D
	and $01830D.l		; 2F 0D 83 01
	sta $00.b,S		; 83 00
	stx $06.b		; 86 06
	ror $EF24.w		; 6E 24 EF
	bit $ED.b		; 24 ED
	bit $EB.b		; 24 EB
	jsl $EF22EF.l		; 22 EF 22 EF
	jsl $BEE2EF.l		; 22 EF E2 BE
	sbc $FFDBFF.l,X		; FF FF DB FF
	stp		; DB
	sbc $DDFFDB.l,X		; FF DB FF DD
	sbc $DDFFDD.l,X		; FF DD FF DD
	inc $7E1C.w,X		; FE 1C 7E
	rti		; 40

	ldy #$A000.w		; A0 00 A0
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	asl $0E70.w		; 0E 70 0E
	lda ($0F.b),Y		; B1 0F
	ora $0F.b		; 05 0F
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	ora [$0F.b]		; 07 0F
	ora $0D.b		; 05 0D
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	sed		; F8
	tsb $04F0.w		; 0C F0 04
	beq   6.b		; F0 06
	jsr ($7C06.w,X)		; FC 06 7C
	asl $F8.b		; 06 F8
	.db $82, $3C, $82		; 82 3C 82
	jmp $00F0C3.l		; 5C C3 F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $0B.b		; 02 0B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	cop $1D.b		; 02 1D
	sbc $3D.b,S		; E3 3D
	cmp $3F.b,S		; C3 3F
	cmp $C9C627.l		; CF 27 C6 C9
	ora ($CC.b,X)		; 01 CC
	asl $0080.w,X		; 1E 80 00
	sty $E01E.w		; 8C 1E E0
	brk $C2.b		; 00 C2
	cop $CF.b		; 02 CF
	brk $C7.b		; 00 C7
	ora $BE01.w,Y		; 19 01 BE
	tsb $3F.b		; 04 3F
	brk $7F.b		; 00 7F
	tsb $7F.b		; 04 7F
	asl $1601.w,X		; 1E 01 16
	ora #$0916.w		; 09 16 09
	bit $1B.b		; 24 1B
	bit $2C13.w		; 2C 13 2C
	ora ($68.b,S),Y		; 13 68
	ora [$48.b],Y		; 17 48
	and [$01.b],Y		; 37 01
	asl $09.b		; 06 09
	asl $09.b		; 06 09
	asl $1B.b		; 06 1B
	tsb $13.b		; 04 13
	tsb $0C13.w		; 0C 13 0C
	ora [$08.b],Y		; 17 08
	and [$08.b],Y		; 37 08
	bmi -64.b		; 30 C0
	sei		; 78
	dey		; 88
	jmp ($7F80.w,X)		; 7C 80 7F
	txa		; 8A
	adc [$80.b]		; 67 80
	adc $FA89.w		; 6D 89 FA
	cop $F4.b		; 02 F4
	tsb $CE.b		; 04 CE
	ora $82078E.l		; 0F 8E 07 82
	ora $8A.b,S		; 03 8A
	brk $98.b		; 00 98
	clc		; 18
	txy		; 9B
	ora ($07.b)		; 12 07
	ora $0F.b		; 05 0F
	phd		; 0B
	eor [$03.b],Y		; 57 03
	adc $025283.l,X		; 7F 83 52 02
	clv		; B8
	bra -24.b		; 80 E8
	dex		; CA
	lda $A4.b		; A5 A4
	lda ($A0.b,X)		; A1 A0
	sbc $AB2BA4.l		; EF A4 2B AB
	rol A		; 2A
	plb		; AB
	plp		; 28
	lda $C84780.l		; AF 80 47 C8
	ora $FA5EF4.l,X		; 1F F4 5E FA
	lsr $5AFE.w,X		; 5E FE 5A
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0080.w		; C0 80 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cmp $D52A.w,X		; DD 2A D5
	jsl $E344A3.l		; 22 A3 44 E3
	trb $AD.b		; 14 AD
	cmp ($ED.b)		; D2 ED
	cop $D8.b		; 02 D8
	ror $74.b		; 66 74
	asl $6102.w		; 0E 02 61
	rol A		; 2A
	rti		; 40

	jmp $001884.l		; 5C 84 18 00
	cld		; D8
	bcc -104.b		; 90 98
	bit $BC.b		; 24 BC
	rti		; 40

	sed		; F8
	php		; 08
	asl $00.b		; 06 00
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
	tsb $0C19.w		; 0C 19 0C
	ora $1904.w,Y		; 19 04 19
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E08.w		; 0E 08 0E
	php		; 08
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	lda ($4E.b),Y		; B1 4E
	lda ($4E.b),Y		; B1 4E
	lda #$6946.w		; A9 46 69
	asl $69.b		; 06 69
	asl $35.b		; 06 35
	cop $15.b		; 02 15
	cop $03.b		; 02 03
	brk $4E.b		; 00 4E
	brk $4E.b		; 00 4E
	brk $46.b		; 00 46
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	adc [$00.b]		; 67 00
	dec $08.b		; C6 08
	cpy $CC40.w		; CC 40 CC
	bvc -40.b		; 50 D8
	brk $98.b		; 00 98
	bra -112.b		; 80 90
	ldy #$1AB0.w		; A0 B0 1A
	cop $7C.b		; 02 7C
	mvp $40,$70		; 44 70 40
	sec		; 38
	php		; 08
	ldy #$F080.w		; A0 80 F0
	bcc  96.b		; 90 60
	brk $40.b		; 00 40
	brk $2C.b		; 00 2C
	adc ($0E.b,X)		; 61 0E
	adc $0E.b,S		; 63 0E
	adc $0E.b,S		; 63 0E
	adc $16.b,S		; 63 16
	and ($16.b,S),Y		; 33 16
	and ($06.b,S),Y		; 33 06
	and ($06.b,S),Y		; 33 06
	and ($1E.b,S),Y		; 33 1E
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	bit $0C20.w,X		; 3C 20 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl   0.b		; 10 00
	brk $70.b		; 00 70
	ply		; 7A
	jmp ($E054.w,X)		; 7C 54 E0
	cpy #$F0C0.w		; C0 C0 F0
	cpy #$00C0.w		; C0 C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	adc $40FF70.l,X		; 7F 70 FF 40
	inc $FC40.w,X		; FE 40 FC
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	tsb $1C.b		; 04 1C
	ora #$1239.w		; 09 39 12
	and ($02.b,S),Y		; 33 02
	adc $03.b,S		; 63 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	brk $0B.b		; 00 0B
	php		; 08
	asl $10.b,X		; 16 10
	ora $3C01.w		; 0D 01 3C
	jsr $E3AE.w		; 20 AE E3
	sta ($F3.b)		; 92 F3
	cop $73.b		; 02 73
	.db $82, $F3, $10		; 82 F3 10
	sbc ($14.b),Y		; F1 14
	sbc ($0C.b),Y		; F1 0C
	sbc ($2C.b,X)		; E1 2C
	adc ($1C.b,X)		; 61 1C
	brk $0C.b		; 00 0C
	brk $9C.b		; 00 9C
	bpl  28.b		; 10 1C
	bpl -114.b		; 10 8E
	bra  46.b		; 80 2E
	jsr $203E.w		; 20 3E 20
	asl $1700.w,X		; 1E 00 17
	php		; 08
	ora $0A.b,X		; 15 0A
	and $2912.w		; 2D 12 29
	asl $59.b,X		; 16 59
	rol $51.b		; 26 51
	rol $4CB3.w		; 2E B3 4C
	lda ($4C.b,S),Y		; B3 4C
	php		; 08
	asl $0A.b		; 06 0A
	tsb $12.b		; 04 12
	tsb $0816.w		; 0C 16 08
	rol $18.b		; 26 18
	rol $4C10.w		; 2E 10 4C
	bmi  76.b		; 30 4C
	bmi -96.b		; 30 A0
	ora ($82.b,X)		; 01 82
	and ($8C.b,S),Y		; 33 8C
	and $3986.w,Y		; 39 86 39
	lda $19.b,S		; A3 19
	rep #$08		; C2 08
	cmp [$0C.b],Y		; D7 0C
	cop $1C.b		; 02 1C
	brk $7E.b		; 00 7E
	tsb $0660.w		; 0C 60 06
	rts		; 60

	ora $700669.l		; 0F 69 06 70
	ora [$30.b]		; 07 30
	cop $30.b		; 02 30
	cmp ($F9.b,X)		; C1 F9
	rti		; 40

	and $403F40.l,X		; 3F 40 3F 40
	and $483F40.l,X		; 3F 40 3F 48
	and [$48.b],Y		; 37 48
	and [$48.b],Y		; 37 48
	and [$4C.b],Y		; 37 4C
	and ($3F.b,S),Y		; 33 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	brk $F5.b		; 00 F5
	ora $F5.b		; 05 F5
	ora ($F9.b),Y		; 11 F9
	ora ($F9.b),Y		; 11 F9
	ora ($FA.b),Y		; 11 FA
	ora ($F2.b)		; 12 F2
	cop $F2.b		; 02 F2
	cop $7E.b		; 02 7E
	.db $82, $0F, $0A		; 82 0F 0A
	tas		; 1B
	asl A		; 0A
	ora [$06.b],Y		; 17 06
	ora [$06.b],Y		; 17 06
	ora [$05.b],Y		; 17 05
	ora $0D0F0D.l		; 0F 0D 0F 0D
	sta $01.b,S		; 83 01
	adc $246F24.l		; 6F 24 6F 24
	ror $EB24.w		; 6E 24 EB
	jsl $EF22EB.l		; 22 EB 22 EF
	jsl $ED22EF.l		; 22 EF 22 ED
	and ($FE.b,X)		; 21 FE
	phx		; DA
	inc $FFDA.w,X		; FE DA FF
	stp		; DB
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $0040DE.l,X		; FF DE 40 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$0FFF.w		; C0 FF 0F
	sbc ($0F.b),Y		; F1 0F
	sbc ($0F.b,S),Y		; F3 0F
	sbc ($0E.b)		; F2 0E
	plx		; FA
	asl $FA.b		; 06 FA
	asl $78.b		; 06 78
	asl $79.b		; 06 79
	ora [$0F.b]		; 07 0F
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $05.b		; 04 05
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $60.b		; 00 60
	sec		; 38
	brk $B8.b		; 00 B8
	bra -16.b		; 80 F0
	sed		; F8
	sed		; F8
	jsr ($FC34.w,X)		; FC 34 FC
	cpy $66FE.w		; CC FE 66
	rol $D0DC.w,X		; 3E DC D0
	bpl -32.b		; 10 E0
	ldy #$0000.w		; A0 00 00
	cld		; D8
	brk $FC.b		; 00 FC
	iny		; C8
	jsr ($7E30.w,X)		; FC 30 7E
	clc		; 18
	trb $DEC1.w		; 1C C1 DE
	ldy #$A1DD.w		; A0 DD A1
	sbc #$5191.w		; E9 91 51
	plb		; AB
	rol $D7.b		; 26 D7
	ror $DC8E.w		; 6E 8E DC
	asl $3CFC.w,X		; 1E FC 3C
	tsb $B5.b		; 04 B5
	sty $A7.b		; 84 A7
	sta $A7.b,X		; 95 A7
	plp		; 28
	ora [$10.b]		; 07 10
	eor $0C3F04.l		; 4F 04 3F 0C
	and $0F3E18.l,X		; 3F 18 3E 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs   0.b		; 70 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $77.b,X		; 94 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	rol $00.b		; 26 00
	bit $08.b		; 24 08
	bit $6C00.w		; 2C 00 6C
	jsr $2068.w		; 20 68 20
	pla		; 68
	jsr $2068.w		; 20 68 20
	pla		; 68
	trb $1804.w		; 1C 04 18
	brk $10.b		; 00 10
	brk $38.b		; 00 38
	plp		; 28
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	cpy #$B8EC.w		; C0 EC B8
	ldy $BEAC.w,X		; BC AC BE
	dec $7FDF.w,X		; DE DF 7F
	eor $674069.l		; 4F 69 40 67
	eor $00.b,S		; 43 00
	brk $F8.b		; 00 F8
	plp		; 28
	cpx #$F040.w		; E0 40 F0
	bvc  -8.b		; 50 F8
	jsr $004F.w		; 20 4F 00
	eor [$07.b]		; 47 07
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	sta ($81.b,X)		; 81 81
	eor ($41.b,X)		; 41 41
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	sta ($00.b,X)		; 81 00
	cmp ($80.b,X)		; C1 80
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bra -96.b		; 80 A0
	ldy #$10B0.w		; A0 B0 10
	cli		; 58
	inx		; E8
	jmp ($1EDE.w)		; 6C DE 1E
	lda $1F01.w		; AD 01 1F
	ora $4080C0.l		; 0F C0 80 40
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$0070.w		; C0 70 00
	rol $1F20.w,X		; 3E 20 1F
	asl $000F.w,X		; 1E 0F 00
	lda $FFFC84.l,X		; BF 84 FC FF
	sbc ($FF.b)		; F2 FF
	brk $0F.b		; 00 0F
	inx		; E8
	asl $0EE8.w		; 0E E8 0E
	beq   6.b		; F0 06
	pea $FC06.w		; F4 06 FC
	sei		; 78
	inc $0002.w,X		; FE 02 00
	brk $FA.b		; 00 FA
	asl A		; 0A
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $3C.b		; 00 3C
	ora $2F.b,S		; 03 2F
	bpl  43.b		; 10 2B
	trb $63.b		; 14 63
	trb $3946.w		; 1C 46 39
	mvp $46,$38		; 44 38 46
	dec A		; 3A
	cmp $0033.w		; CD 33 00
	ora $140F10.l		; 0F 10 0F 14
	asl A		; 0A
	trb $3900.w		; 1C 00 39
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $0B.b		; 02 0B
	tsb $0B.b		; 04 0B
	tsb $1E.b		; 04 1E
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $01.b,S		; 03 01
	asl $5B.b		; 06 5B
	tay		; A8
	stp		; DB
	plp		; 28
	sta $60996F.l,X		; 9F 6F 99 60
	trb $3CE0.w		; 1C E0 3C
	cpy #$C032.w		; C0 32 C0
	bmi -64.b		; 30 C0
	lda $C72F47.l		; AF 47 2F C7
	adc $836080.l		; 6F 80 60 83
	cpx #$C003.w		; E0 03 C0
	ora ($CC.b,X)		; 01 CC
	ora $0FCE.w		; 0D CE 0F
	cmp $C6F3.w,X		; DD F3 C6
	sbc ($EC.b,S),Y		; F3 EC
	sbc $F966.w,Y		; F9 66 F9
	ora $0B.b,S		; 03 0B
	and [$FD.b],Y		; 37 FD
	adc $FD7DFD.l,X		; 7F FD 7D FD
	sta $9C41.w		; 8D 41 9C
	bvc -90.b		; 50 A6
	rts		; 60

	ora $F007E9.l		; 0F E9 07 F0
	ora [$F2.b]		; 07 F2
	and $FA3FFA.l,X		; 3F FA 3F FA
	dec $D6.b		; C6 D6
	cpy $9CCE.w		; CC CE 9C
	jmp.w [$BC38]		; DC 38 BC
	sed		; F8
	sed		; F8
	beq  -8.b		; F0 F8
	beq 112.b		; F0 70
	cpx #$9470.w		; E0 70 94
	sbc $08FF84.l		; EF 84 FF 08
	inc $7E18.w,X		; FE 18 7E
	bcs 124.b		; B0 7C
	beq 124.b		; F0 7C
	cpx #$C0B8.w		; E0 B8 C0
	clv		; B8
	rti		; 40

	and $403F40.l,X		; 3F 40 3F 40
	and $483748.l,X		; 3F 48 37 48
	and [$48.b],Y		; 37 48
	and [$4C.b],Y		; 37 4C
	and ($2C.b,S),Y		; 33 2C
	ora ($3F.b,S),Y		; 13 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	brk $13.b		; 00 13
	brk $F5.b		; 00 F5
	ora $F5.b,X		; 15 F5
	ora $F9.b,X		; 15 F9
	ora $19F9.w,Y		; 19 F9 19
	sbc $F909.w,Y		; F9 09 F9
	ora #$837F.w		; 09 7F 83
	adc $0A1F83.l,X		; 7F 83 1F 0A
	ora $061F0A.l,X		; 1F 0A 1F 06
	ora $060F06.l,X		; 1F 06 0F 06
	ora $008306.l		; 0F 06 83 00
	sta $00.b,S		; 83 00
	jmp ($6A24.w)		; 6C 24 6A
	jsl $5E226E.l		; 22 6E 22 5E
	ora ($75.b)		; 12 75
	ora ($77.b),Y		; 11 77
	ora ($76.b),Y		; 11 76
	bpl -10.b		; 10 F6
	beq  -1.b		; F0 FF
	stp		; DB
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $EEFFED.l,X		; FF ED FF EE
	sbc $EFFFEE.l,X		; FF EE FF EF
	sbc $40E00F.l,X		; FF 0F E0 40
	beq -96.b		; F0 A0
	sei		; 78
	bmi 120.b		; 30 78
	bvc  56.b		; 50 38
	bpl  48.b		; 10 30
	jsr $0090.w		; 20 90 00
	cpx #$4000.w		; E0 00 40
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	bra -48.b		; 80 D0
	bra -48.b		; 80 D0
	cpy #$C0E0.w		; C0 E0 C0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	pla		; 68
	asl $10.b		; 06 10
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $03.b		; 04 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $57.b		; 00 57
	bvs  15.b		; 70 0F
	sec		; 38
	and $38.b,S		; 23 38
	and [$3C.b]		; 27 3C
	ora ($3C.b,X)		; 01 3C
	ora $36.b,S		; 03 36
	rti		; 40

	ror $41.b		; 66 41
	adc $8F.b,S		; 63 8F
	brk $D7.b		; 00 D7
	bpl -49.b		; 10 CF
	php		; 08
	cmp $00.b,S		; C3 00
	sbc [$24.b]		; E7 24
	sbc ($20.b,X)		; E1 20
	sta $02.b,S		; 83 02
	bra   0.b		; 80 00
	php		; 08
	ora [$08.b]		; 07 08
	ora [$11.b]		; 07 11
	asl $0A15.w		; 0E 15 0A
	pld		; 2B
	ora $2B.b,X		; 15 2B
	ora $56.b,X		; 15 56
	rol A		; 2A
	ldx $4A.b,Y		; B6 4A
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0A00.w		; 0E 00 0A
	tsb $15.b		; 04 15
	php		; 08
	ora $08.b,X		; 15 08
	pld		; 2B
	ora ($4B.b),Y		; 11 4B
	and ($E8.b),Y		; 31 E8
	ora $33F0.w,X		; 1D F0 33
	cpx $C04E.w		; EC 4E C0
	bcc  76.b		; 90 4C
	asl $1949.w		; 0E 49 19
.ACCU 8
	sep #$63		; E2 63
	cpx $71.b		; E4 71
	ora [$15.b],Y		; 17 15
	bmi  12.b		; 30 0C
	stz $3F.b		; 64 3F
	cpy #$C87F.w		; C0 7F C8
	sbc $C4FFC0.l,X		; FF C0 FF C4
	clv		; B8
	dec $00A0.w		; CE A0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	stz $CCC0.w		; 9C C0 CC
	cmp ($C1.b),Y		; D1 C1
	xba		; EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	bra -31.b		; 80 E1
	bcc -21.b		; 90 EB
	iny		; C8
	sbc [$00.b],Y		; F7 00
	brk $16.b		; 00 16
	asl $7050.w		; 0E 50 70
	beq -48.b		; F0 D0
	mvn $00,$F4		; 54 F4 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $507F02.l,X		; 1F 02 7F 50
	inc $FC50.w,X		; FE 50 FC
	jsr $00DE.w		; 20 DE 00
	inc $C000.w,X		; FE 00 C0
	brk $80.b		; 00 80
	sec		; 38
	dec $18.b		; C6 18
	dec $3C.b		; C6 3C
	ror $18.b		; 66 18
	.db $62, $0C, $22		; 62 0C 22
	trb $0C33.w		; 1C 33 0C
	and ($06.b,S),Y		; 33 06
	ora ($7C.b,S),Y		; 13 7C
	mvp $44,$7C		; 44 7C 44
	clc		; 18
	brk $3C.b		; 00 3C
	jsr $001C.w		; 20 1C 00
	asl $1E02.w		; 0E 02 1E
	ora ($0C.b)		; 12 0C
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs   0.b		; 70 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	asl $09.b,X		; 16 09
	asl $09.b,X		; 16 09
	bit $1B.b		; 24 1B
	bit $2C13.w		; 2C 13 2C
	ora ($68.b,S),Y		; 13 68
	ora [$48.b],Y		; 17 48
	and [$40.b],Y		; 37 40
	and $090609.l,X		; 3F 09 06 09
	asl $1B.b		; 06 1B
	tsb $13.b		; 04 13
	tsb $0C13.w		; 0C 13 0C
	ora [$08.b],Y		; 17 08
	and [$08.b],Y		; 37 08
	and $827A00.l,X		; 3F 00 7A 82
	adc $987E84.l,X		; 7F 84 7E 98
	eor $915D88.l		; 4F 88 5D 91
	plx		; FA
	cop $F2.b		; 02 F2
	cop $F4.b		; 02 F4
	tsb $86.b		; 04 86
	ora $84.b		; 05 84
	ora ($98.b,X)		; 01 98
	ora ($B8.b,X)		; 01 B8
	bmi -77.b		; 30 B3
	jsl $0F0507.l		; 22 07 05 0F
	ora $0B0F.w		; 0D 0F 0B
	ora $EF6F1F.l,X		; 1F 1F 6F EF
	bit $34.b,X		; 34 34
	iny		; C8
	dex		; CA
	lda $A4.b		; A5 A4
	lda $A2.b,S		; A3 A2
	sbc $EDA4.w		; ED A4 ED
	lda $0F.b		; A5 0F
	jsr ($FE25.w,X)		; FC 25 FE
	bpl  -1.b		; 10 FF
	iny		; C8
	and $FA5EF4.l,X		; 3F F4 5E FA
	jmp $FF5AFE.l		; 5C FE 5A FF
	phy		; 5A
	rti		; 40

	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bcs -64.b		; B0 C0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $2A13.w		; 2C 13 2A
	ora ($1A.b),Y		; 11 1A
	ora ($1A.b,X)		; 01 1A
	ora ($0D.b,X)		; 01 0D
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	sta $7D.b,S		; 83 7D
	sta $7D.b,S		; 83 7D
	sta $7D.b,S		; 83 7D
	sta $7D.b,S		; 83 7D
	sta $5C.b,S		; 83 5C
	.db $82, $DC, $02		; 82 DC 02
	jmp.w [$8102]		; DC 02 81
	ora ($80.b,X)		; 01 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	inc $FF1F.w,X		; FE 1F FF
	jsr $2EE0.w		; 20 E0 2E
	cpx #$E0AE.w		; E0 AE E0
	lda $E08FE0.l		; AF E0 8F E0
	eor $407E70.l,X		; 5F 70 7E 40
	rts		; 60

	rts		; 60

	eor $405F40.l,X		; 5F 40 5F 40
	ora $001F00.l,X		; 1F 00 1F 00
	and $008F20.l,X		; 3F 20 8F 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	tsb $00.b		; 04 00
	tsb $0C04.w		; 0C 04 0C
	asl $1E.b		; 06 1E
	ora #$39.b		; 09 39
	ora ($73.b)		; 12 73
	jsr $0463.w		; 20 63 04
	dec $03.b		; C6 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $09.b		; 00 09
	php		; 08
	asl $10.b,X		; 16 10
	and $1E21.w		; 2D 21 1E
	cop $78.b		; 02 78
	rti		; 40

	brk $63.b		; 00 63
	brk $41.b		; 00 41
	bra -63.b		; 80 C1
	brk $C1.b		; 00 C1
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cmp ($41.b,X)		; C1 41
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $77.b,X		; 94 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $12.b		; 00 12
	and ($10.b,S),Y		; 33 10
	and ($04.b,S),Y		; 33 04
	ror $20.b		; 66 20
	ror $08.b		; 66 08
	jmp $CC00.w		; 4C 00 CC
	bvc -40.b		; 50 D8
	brk $90.b		; 00 90
	ora $0E01.w		; 0D 01 0E
	cop $38.b		; 02 38
	jsr $041C.w		; 20 1C 04
	bmi   0.b		; 30 00
	sei		; 78
	pha		; 48
	jsr $6000.w		; 20 00 60
	brk $0C.b		; 00 0C
	asl $0B0B.w		; 0E 0B 0B
	asl A		; 0A
	phd		; 0B
	ora $070D.w		; 0D 0D 07
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $00.b		; 04 00
	brk $0F.b		; 00 0F
	cop $0E.b		; 02 0E
	tsb $0F.b		; 04 0F
	ora $0F.b		; 05 0F
	cop $04.b		; 02 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq  -8.b		; F0 F8
	sed		; F8
	sty $04.b,X		; 94 04
	jmp ($003C.w,X)		; 7C 3C 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	sei		; 78
	bit $0000.w,X		; 3C 00 00
	brk $C0.b		; 00 C0
	rts		; 60

	cpy #$8060.w		; C0 60 80
	jsr $30C0.w		; 20 C0 30
	cpx #$C030.w		; E0 30 C0
	bpl -32.b		; 10 E0
	clc		; 18
	beq  24.b		; F0 18
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$F000.w		; E0 00 F0
	bpl -32.b		; 10 E0
	brk $70.b		; 00 70
	clc		; 18
	bra -120.b		; 80 88
	bra -120.b		; 80 88
	bpl -116.b		; 10 8C
	sec		; 38
	sty $8430.w		; 8C 30 84
	sei		; 78
	cpy $78.b		; C4 78
	cpy $E0.b		; C4 E0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	dey		; 88
	beq -128.b		; F0 80
	sed		; F8
	bra -72.b		; 80 B8
	bra  56.b		; 80 38
	brk $02.b		; 00 02
	asl $06.b		; 06 06
	ora [$05.b]		; 07 05
	ora $07.b		; 05 07
	ora $04.b		; 05 04
	tsb $03.b		; 04 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	ora $02.b,S		; 03 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	rts		; 60

	jsr $D0B0.w		; 20 B0 D0
	cld		; D8
	ldy $5A3C.w,X		; BC 3C 5A
	cop $3E.b		; 02 3E
	asl $0000.w,X		; 1E 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	brk $7C.b		; 00 7C
	rti		; 40

	rol $1E3C.w,X		; 3E 3C 1E
	brk $30.b		; 00 30
	stz $08.b		; 64 08
	bit $1C.b		; 24 1C
	rol $04.b,X		; 36 04
	ora ($08.b)		; 12 08
	inc A		; 1A
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $180E.w		; 0C 0E 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $0F.b		; 00 0F
	cop $2F.b		; 02 2F
	bpl  43.b		; 10 2B
	trb $63.b		; 14 63
	trb $3946.w		; 1C 46 39
	mvp $46,$38		; 44 38 46
	dec A		; 3A
	cmp $8E33.w		; CD 33 8E
	adc ($10.b),Y		; 71 10
	ora $1C0A14.l		; 0F 14 0A 1C
	brk $39.b		; 00 39
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $D5.b		; 00 D5
	jsl $E344A3.l		; 22 A3 44 E3
	trb $AD.b		; 14 AD
	cmp ($ED.b)		; D2 ED
	cop $D8.b		; 02 D8
	ror $74.b		; 66 74
	asl $9CB0.w		; 0E B0 9C
	rol A		; 2A
	rti		; 40

	jmp $001884.l		; 5C 84 18 00
	cld		; D8
	bcc -104.b		; 90 98
	bit $BC.b		; 24 BC
	rti		; 40

	sed		; F8
	php		; 08
	pla		; 68
	php		; 08
	php		; 08
	jmp ($6820.w)		; 6C 20 68
	brk $58.b		; 00 58
	brk $D0.b		; 00 D0
	rti		; 40

	bne  64.b		; D0 40
	bne -128.b		; D0 80
	cld		; D8
	bvs 120.b		; 70 78
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	bmi  16.b		; 30 10
	rts		; 60

	rti		; 40

	jsr $2000.w		; 20 00 20
	brk $F0.b		; 00 F0
	bvc -64.b		; 50 C0
	bra  15.b		; 80 0F
	inc $47.b,X		; F6 47
	clv		; B8
	eor [$B8.b]		; 47 B8
	lsr $B9.b		; 46 B9
	ror $99.b		; 66 99
	ldx $19.b		; A6 19
	ldx $09.b,Y		; B6 09
	cmp ($0D.b)		; D2 0D
	inc $00.b,X		; F6 00
	clv		; B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $98.b		; 00 98
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $2D.b		; 00 2D
	bit $2D.b		; 24 2D
	bit $2D.b		; 24 2D
	tsb $ED.b		; 04 ED
	sty $3D.b		; 84 3D
	jmp.w [$FF7F]		; DC 7F FF
	lsr $C7.b		; 46 C7
	bcs -125.b		; B0 83
	sbc $DBFFDB.l,X		; FF DB FF DB
	cmp $1B9FDB.l,X		; DF DB 9F 1B
	cmp $8087C3.l,X		; DF C3 87 80
	clv		; B8
	bra 126.b		; 80 7E
	cop $A1.b		; 02 A1
	jmp $6B9469.l		; 5C 69 94 6B
	stx $EB.b,Y		; 96 EB
	ora [$CF.b],Y		; 17 CF
	bit $29D9.w,X		; 3C D9 29
	dec $DC2F.w,X		; DE 2F DC
	jsr $205B.w		; 20 5B 20
	sta ($60.b,S),Y		; 93 60
	sta ($60.b),Y		; 91 60
	ora ($E0.b,S),Y		; 13 E0
	and $C62FC3.l,X		; 3F C3 2F C6
	rol $20C1.w		; 2E C1 20
	cmp $3F.b,S		; C3 3F
	bvs  26.b		; 70 1A
	stz $A0.b,X		; 74 A0
	cmp ($8E.b,X)		; C1 8E
	sta $FCFFFF.l,X		; 9F FF FF FC
	inc $F161.w,X		; FE 61 F1
	asl A		; 0A
	asl A		; 0A
	bcc  48.b		; 90 30
	sty $31.b		; 84 31
	brk $3F.b		; 00 3F
	bra 127.b		; 80 7F
	ldx $707F.w,Y		; BE 7F 70
	sbc $0AFF01.l,X		; FF 01 FF 0A
	sbc [$0F.b],Y		; F7 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$73.b],Y		; 37 73
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs   0.b		; 70 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $77.b,X		; 94 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $3C.b		; 00 3C
	stx $78.b		; 86 78
	dec $78.b		; C6 78
	dec $78.b		; C6 78
	cpy $70.b		; C4 70
	cpy $48.b		; C4 48
	cpy $CC40.w		; CC 40 CC
	bcc -104.b		; 90 98
	sei		; 78
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $B8.b		; 00 B8
	dey		; 88
	rts		; 60

	brk $00.b		; 00 00
	adc ($02.b,X)		; 61 02
	adc $12.b,S		; 63 12
	and ($12.b,S),Y		; 33 12
	and ($08.b,S),Y		; 33 08
	tsa		; 3B
	tsb $143E.w		; 0C 3E 14
	rol $04.b,X		; 36 04
	ror $3E.b		; 66 3E
	jsr $203C.w		; 20 3C 20
	tsb $0C00.w		; 0C 00 0C
	brk $16.b		; 00 16
	ora ($10.b)		; 12 10
	bpl   8.b		; 10 08
	brk $38.b		; 00 38
	jsr $6200.w		; 20 00 62
	jsr $2062.w		; 20 62 20
	.db $62, $00, $42		; 62 00 42
	brk $42.b		; 00 42
	brk $42.b		; 00 42
	jsr $2062.w		; 20 62 20
	.db $62, $3C, $20		; 62 3C 20
	trb $1C00.w		; 1C 00 1C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	.db $62, $00, $62		; 62 00 62
	brk $22.b		; 00 22
	bpl  50.b		; 10 32
	bpl  50.b		; 10 32
	brk $32.b		; 00 32
	brk $12.b		; 00 12
	php		; 08
	inc A		; 1A
	bit $3C20.w,X		; 3C 20 3C
	jsr $001C.w		; 20 1C 00
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	brk $1A.b		; 00 1A
	trb $161F.w		; 1C 1F 16
	ora [$15.b],Y		; 17 15
	ora [$13.b],Y		; 17 13
	ora ($0F.b,S),Y		; 13 0F
	ora #$04.b		; 09 04
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	php		; 08
	inc A		; 1A
	cop $1C.b		; 02 1C
	php		; 08
	asl $1F0A.w,X		; 1E 0A 1F
	tsb $0009.w		; 0C 09 00
	php		; 08
	and $7312.w,Y		; 39 12 73
	plp		; 28
	adc $1C.b,S		; 63 1C
	dec $70.b		; C6 70
	dec $38.b		; C6 38
	sty $8C70.w		; 8C 70 8C
	cpx #$1788.w		; E0 88 17
	ora ($2C.b),Y		; 11 2C
	jsr $021E.w		; 20 1E 02
	sei		; 78
	rti		; 40

	bit $7004.w,X		; 3C 04 70
	brk $F8.b		; 00 F8
	dey		; 88
	bvs   0.b		; 70 00
	sbc $DD44.w,X		; FD 44 DD
	mvp $48,$DE		; 44 DE 48
	jmp.w [$F84A]		; DC 4A F8
	ror $FEFC.w,X		; 7E FC FE
	jmp $84CE.w		; 4C CE 84
	stx $F6.b		; 86 F6
	lda ($F6.b)		; B2 F6
	lda ($F8.b)		; B2 F8
	bcs  -8.b		; B0 F8
	bcs -12.b		; B0 F4
	sty $C0.b		; 84 C0
	brk $B0.b		; 00 B0
	bra 120.b		; 80 78
	brk $84.b		; 00 84
	stx $84.b		; 86 84
	stx $84.b		; 86 84
	stx $80.b		; 86 80
	.db $82, $C0, $C2		; 82 C0 C2
	rti		; 40

	rep #$40		; C2 40
	rep #$40		; C2 40
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $BC.b		; 00 BC
	bra -68.b		; 80 BC
	bra  60.b		; 80 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   1.b		; 80 01
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	sta ($01.b,X)		; 81 01
	bra -126.b		; 80 82
	sta [$7E.b]		; 87 7E
	adc $E07C78.l,X		; 7F 78 7C E0
	beq -128.b		; F0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$80.b]		; 07 80
	adc $F0BFCC.l,X		; 7F CC BF F0
	lda $807C80.l,X		; BF 80 7C 80
	bvs   0.b		; 70 00
	brk $52.b		; 00 52
	ora $054A.w		; 0D 4A 05
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	tsb $0400.w		; 0C 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	sta $B8.b,S		; 83 B8
	sta $BC.b,S		; 83 BC
	sta [$FC.b]		; 87 FC
	sta [$78.b]		; 87 78
	ora [$70.b]		; 07 70
	ora [$70.b]		; 07 70
	ora $78.b		; 05 78
	tsb $027E.w		; 0C 7E 02
	jmp ($7800.w,X)		; 7C 00 78
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $F8.b		; 04 F8
	brk $F0.b		; 00 F0
	brk $9F.b		; 00 9F
	adc $51B7.w		; 6D B7 51
	and [$C3.b]		; 27 C3
	and $F60FC2.l,X		; 3F C2 0F F6
	ora $ED1FF6.l		; 0F F6 1F ED
	asl $6DEC.w,X		; 1E EC 6D
	bra  89.b		; 80 59
	dey		; 88
	stp		; DB
	clc		; 18
	rep #$00		; C2 00
	inc $00.b,X		; F6 00
	inc $00.b,X		; F6 00
	sbc $ED00.w		; ED 00 ED
	ora ($F5.b,X)		; 01 F5
	lda $D4.b,X		; B5 D4
	mvn $24,$AC		; 54 AC 24
	lda $2DA4.w		; AD A4 2D
	bit $2F.b		; 24 2F
	bit $5F.b		; 24 5F
	mvp $44,$57		; 44 57 44
	lda $7E0B.w,X		; BD 0B 7E
	pld		; 2B
	adc $5BFF5B.l,X		; 7F 5B FF 5B
	sbc $DBFFDB.l,X		; FF DB FF DB
	sbc $BBFFBB.l,X		; FF BB FF BB
	inc A		; 1A
	sbc [$13.b]		; E7 13
	cpx #$E91B.w		; E0 1B E9
	and $CC.b,X		; 35 CC
	dec A		; 3A
	dec $7A.b		; C6 7A
	lda $72C5C5.l,X		; BF C5 C5 72
	cop $E7.b		; 02 E7
	asl $EE.b		; 06 EE
	brk $E6.b		; 00 E6
	ora ($C3.b,X)		; 01 C3
	brk $C1.b		; 00 C1
	brk $BD.b		; 00 BD
	ora $FE.b		; 05 FE
	sec		; 38
	sbc $48B4FD.l,X		; FF FD B4 48
	bcs   8.b		; B0 08
	rts		; 60

	tya		; 98
	beq  24.b		; F0 18
	bra 112.b		; 80 70
	rti		; 40

	bmi   0.b		; 30 00
	cpx #$70F0.w		; E0 F0 70
	rts		; 60

	rti		; 40

	rts		; 60

	bcc -16.b		; 90 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rts		; 60

	cpy #$0000.w		; C0 00 00
	brk $F0.b		; 00 F0
	bra   3.b		; 80 03
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	ldy #$E060.w		; A0 60 E0
	rts		; 60

	ldy #$0060.w		; A0 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	tsb $081B.w		; 0C 1B 08
	ora ($0C.b)		; 12 0C
	asl $08.b,X		; 16 08
	rol $10.b,X		; 36 10
	bit $08.b,X		; 34 08
	bit $2800.w		; 2C 00 28
	bmi 120.b		; 30 78
	asl $02.b		; 06 02
	tsb $0800.w		; 0C 00 08
	brk $1C.b		; 00 1C
	trb $08.b		; 14 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $E6.b		; 00 E6
	sbc ($F3.b,S),Y		; F3 F3
	sbc $CE.b,X		; F5 CE
	cpx #$E1EF.w		; E0 EF E1
	ora $5581.w		; 0D 81 55
	eor $CE8F.w		; 4D 8F CE
	phb		; 8B
	lda #$F941.w		; A9 41 F9
	cpx $F8.b		; E4 F8
	sta ($FC.b,X)		; 81 FC
	rti		; 40

	pea $F002.w		; F4 02 F0
	ora $E0.b,S		; 03 E0
	ora $F60FF1.l		; 0F F1 0F F6
	lsr $B74E.w,X		; 5E 4E B7
	lda [$78.b]		; A7 78
	bvs -88.b		; 70 A8
	ldy #$A8EC.w		; A0 EC A8
	pei ($90.b)		; D4 90
	dec $94.b,X		; D6 94
	inc $94.b,X		; F6 94
	ora $C0A7E1.l		; 0F E1 A7 C0
	bvs -128.b		; 70 80
	beq  80.b		; F0 50
	sed		; F8
	bvc  -8.b		; 50 F8
	pla		; 68
	jsr ($FC68.w,X)		; FC 68 FC
	pla		; 68
	asl $1C23.w		; 0E 23 1C
	adc $38.b,S		; 63 38
	.db $62, $3C, $66		; 62 3C 66
	bpl  70.b		; 10 46
	sec		; 38
	jmp $4C20.w		; 4C 20 4C
	bmi -40.b		; 30 D8
	trb $3E00.w		; 1C 00 3E
	jsl $18001C.l		; 22 1C 00 18
	brk $3C.b		; 00 3C
	tsb $30.b		; 04 30
	brk $38.b		; 00 38
	php		; 08
	rts		; 60

	rti		; 40

	tay		; A8
	ldy $9F9C.w,X		; BC 9C 9F
	adc $40694F.l,X		; 7F 4F 69 40
	adc [$40.b]		; 67 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  80.b		; F0 50
	sed		; F8
	rts		; 60

	eor $074700.l		; 4F 00 47 07
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $05.b		; 00 05
	cop $07.b		; 02 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $03.b		; 05 03
	asl A		; 0A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($11.b,X)		; 01 11
	phd		; 0B
	bpl   8.b		; 10 08
	jsl $314117.l		; 22 17 41 31
	.db $42, $3E		; 42 3E
	ldx $5C.b		; A6 5C
	ldx $5C.b		; A6 5C
	.db $42, $B8		; 42 B8
	php		; 08
	ora [$08.b]		; 07 08
	ora [$10.b]		; 07 10
	ora $340F31.l		; 0F 31 0F 34
	ora $53.b		; 05 53
	jsr $2053.w		; 20 53 20
	lda [$40.b],Y		; B7 40
	stp		; DB
	cmp $AD.b,S		; C3 AD
	sbc ($3B.b,X)		; E1 3B
	ora $A61E.w,Y		; 19 1E A6
	and $D82700.l,X		; 3F 00 27 D8
	rtl		; 6B

	pei ($71.b)		; D4 71
	dec $3CFE.w		; CE FE 3C
	lda $E61FDE.l,X		; BF DE 1F E6
	ora [$E1.b]		; 07 E1
	brk $D8.b		; 00 D8
	brk $5E.b		; 00 5E
	tsb $58.b		; 04 58
	asl $D850.w		; 0E 50 D8
	iny		; C8
	pea $68C4.w		; F4 C4 68
	iny		; C8
	jmp.w [$FCC4]		; DC C4 FC
	brk $E4.b		; 00 E4
	inc A		; 1A
	cpx $1A.b		; E4 1A
	jmp $7832.w		; 4C 32 78
	bmi 124.b		; 30 7C
	sec		; 38
	sed		; F8
	ldx $E0.b,Y		; B6 E0
	rol $00.b		; 26 00
	inc A		; 1A
	bra -72.b		; 80 B8
	bcc -120.b		; 90 88
	bmi -120.b		; 30 88
	php		; 08
	and [$00.b]		; 27 00
	and $08.b		; 25 08
	and $6F00.w		; 2D 00 6F
	eor ($6B.b,X)		; 41 6B
	adc ($6B.b,X)		; 61 6B
	sbc ($6B.b,X)		; E1 6B
	cmp ($7B.b),Y		; D1 7B
	trb $1804.w		; 1C 04 18
	brk $10.b		; 00 10
	brk $39.b		; 00 39
	and #$2070.w		; 29 70 20
	bvc   0.b		; 50 00
	bvc   0.b		; 50 00
	rts		; 60

	jsr $6040.w		; 20 40 60
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	plp		; 28
	inc $CE40.w		; EE 40 CE
	bcs -100.b		; B0 9C
	rti		; 40

	trb $38E0.w		; 1C E0 38
	bra  56.b		; 80 38
	cpy #$0078.w		; C0 78 00
	sei		; 78
	bvc  64.b		; 50 40
	clv		; B8
	dey		; 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $1090.w		; 20 90 10
	bne  80.b		; D0 50
	sbc $1EE617.l		; EF 17 E6 1E
	lda $0C.b,X		; B5 0C
	lda ($0C.b),Y		; B1 0C
	lda ($0E.b,S),Y		; B3 0E
	txs		; 9A
	asl $58.b		; 06 58
	stx $C9.b		; 86 C9
	ora [$07.b]		; 07 07
	brk $09.b		; 00 09
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	sta $02.b,S		; 83 02
	cop $02.b		; 02 02
	lda $FFFC8C.l,X		; BF 8C FC FF
	bit $3F.b		; 24 3F
.INDEX 16
	rep #$1B		; C2 1B
	cmp ($1B.b)		; D2 1B
	pea $E01D.w		; F4 1D E0
	ora $0DE0.w		; 0D E0 0D
	jsr ($FA70.w,X)		; FC 70 FA
	cop $D2.b		; 02 D2
	ora ($F4.b)		; 12 F4
	bpl -28.b		; 10 E4
	brk $E2.b		; 00 E2
	brk $F6.b		; 00 F6
	tsb $FA.b		; 04 FA
	php		; 08
	tsb $03.b		; 04 03
	asl A		; 0A
	ora $0A.b		; 05 0A
	ora $14.b		; 05 14
	phd		; 0B
	ora $0B.b,X		; 15 0B
	and $2F13.w		; 2D 13 2F
	ora [$5F.b],Y		; 17 5F
	and $0003.w		; 2D 03 00
	ora $02.b		; 05 02
	tsb $02.b		; 04 02
	asl A		; 0A
	tsb $08.b		; 04 08
	tsb $10.b		; 04 10
	tsb $0817.w		; 0C 17 08
	and $C04312.l		; 2F 12 43 C0
	.db $62, $CD, $B2		; 62 CD B2
	sta $9CC3.w,X		; 9D C3 9C
	adc [$3E.b]		; 67 3E
	sta [$2E.b]		; 87 2E
	cpy #$FEC0.w		; C0 C0 FE
	adc $301D20.l,X		; 7F 20 1D 30
	ora $60.b		; 05 60
	ora $60.b		; 05 60
	ora $0EC0.w		; 0D C0 0E
.INDEX 16
	rep #$1E		; C2 1E
	cpy #$DC3F.w		; C0 3F DC
	lda $7E00FF.l,X		; BF FF 00 7E
	sta ($BE.b,X)		; 81 BE
	eor ($14.b,X)		; 41 14
	sbc $FF.b,S		; E3 FF
	brk $F4.b		; 00 F4
	sbc ($C7.b,S),Y		; F3 C7
	beq -23.b		; F0 E9
	inx		; E8
	brk $81.b		; 00 81
	php		; 08
	xba		; EB
	eor #$EB88.w		; 49 88 EB
	php		; 08
	brk $00.b		; 00 00
	adc $F8.b,S		; 63 F8
	bra  -3.b		; 80 FD
	cpy #$C0FC.w		; C0 FC C0
	brk $60.b		; 00 60
	bcs  64.b		; B0 40
	bcc -64.b		; 90 C0
	bpl -48.b		; 10 D0
	cli		; 58
	bvc -103.b		; 50 99
	sbc $37FF3F.l,X		; FF 3F FF 37
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	ora ($A0.b,X)		; 01 A0
	ora $0D.b,S		; 03 0D
	sta $1E.b,S		; 83 1E
	phb		; 8B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F7000.l,X		; 1F 00 70 0F
	bcc 111.b		; 90 6F
	bcc 111.b		; 90 6F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $106F00.l		; 0F 00 6F 10
	eor $030430.l		; 4F 30 04 03
	php		; 08
	ora [$0B.b]		; 07 0B
	ora [$14.b]		; 07 14
	tsb $1723.w		; 0C 23 17
	and ($10.b,X)		; 21 10
	lsr $2E.b		; 46 2E
	.db $82, $63, $03		; 82 63 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora $11.b,S		; 03 11
	ora $220F10.l		; 0F 10 0F 22
	ora $751F60.l,X		; 1F 60 1F 75
	sty $7EF4.w		; 8C F4 7E
	txa		; 8A
	phb		; 8B
	sbc $04.b		; E5 04
	lda [$87.b],Y		; B7 87
	stp		; DB
	cmp $76.b,S		; C3 76
	and ($3D.b,S),Y		; 33 3D
	eor $0083.w		; 4D 83 00
	tda		; 7B
	asl A		; 0A
	jsr ($FF70.w,X)		; FC 70 FF
	xce		; FB
	jsr ($7E78.w,X)		; FC 78 7E
	ldy $CD3F.w,X		; BC 3F CD
	ora $E000C2.l		; 0F C2 00 E0
	bra  96.b		; 80 60
	brk $C0.b		; 00 C0
	cpx #$B0E0.w		; E0 E0 B0
	bcc -24.b		; 90 E8
	dey		; 88
	bne -112.b		; D0 90
	clv		; B8
	dey		; 88
	cpy #$80C0.w		; C0 C0 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rts		; 60

	sed		; F8
	bvs -16.b		; 70 F0
	jmp ($4CC0.w)		; 6C C0 4C
	cpy #$7800.w		; C0 00 78
	bra   4.b		; 80 04
	sed		; F8
	dec $28.b,X		; D6 28
	inc $AA50.w		; EE 50 AA
	trb $1A.b		; 14 1A
	bit $1C.b		; 24 1C
	ldy #$0000.w		; A0 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $28.b		; 00 28
	sty $10.b,X		; 94 10
	tsb $0054.w		; 0C 54 00
	cpx $20.b		; E4 20
	cpy #$A100.w		; C0 00 A1
	lsr $5EA1.w,X		; 5E A1 5E
	sta $7D.b,S		; 83 7D
	sta $7D.b,S		; 83 7D
	sta $7D.b,S		; 83 7D
	sta ($6E.b),Y		; 91 6E
	cmp ($2E.b),Y		; D1 2E
	eor ($2E.b),Y		; 51 2E
	lsr $5E20.w,X		; 5E 20 5E
	jsr $007D.w		; 20 7D 00
	adc $7D00.w,X		; 7D 00 7D
	brk $6E.b		; 00 6E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $EB.b		; 00 EB
	tda		; 7B
	ply		; 7A
	phy		; 5A
	phy		; 5A
	lsr A		; 4A
	dec A		; 3A
	rol A		; 2A
	and $0139.w,Y		; 39 39 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $7B.b		; 00 7B
	bpl 123.b		; 10 7B
	and ($7B.b,X)		; 21 7B
	and ($3B.b),Y		; 31 3B
	ora ($39.b),Y		; 11 39
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpx #$E0C0.w		; E0 C0 E0
	ldy #$70F0.w		; A0 F0 70
	sei		; 78
	inc $A53E.w,X		; FE 3E A5
	ora ($9F.b,X)		; 01 9F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$3E80.w		; E0 80 3E
	brk $1F.b		; 00 1F
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	asl $08.b		; 06 08
	ora [$19.b]		; 07 19
	tsb $0619.w		; 0C 19 06
	ora ($0C.b,S),Y		; 13 0C
	ora ($08.b,S),Y		; 13 08
	and ($1C.b,S),Y		; 33 1C
	and [$07.b],Y		; 37 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	ora [$01.b]		; 07 01
	tsb $0E00.w		; 0C 00 0E
	cop $1C.b		; 02 1C
	bpl   8.b		; 10 08
	brk $80.b		; 00 80
	sed		; F8
	jsr $60F0.w		; 20 F0 60
	beq  32.b		; F0 20
	bcs -96.b		; B0 A0
	bcs   0.b		; B0 00
	bmi   0.b		; 30 00
	bmi  64.b		; 30 40
	rts		; 60

	bmi  48.b		; 30 30
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	bra   0.b		; 80 00
	adc $03.b		; 65 03
	bpl   3.b		; 10 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	beq  13.b		; F0 0D
	ply		; 7A
	ora $F00F7A.l		; 0F 7A 0F F0
	sta [$38.b]		; 87 38
	stx $78.b		; 86 78
	dec $18.b		; C6 18
	dec $30.b		; C6 30
	ror $FA.b		; 66 FA
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	ply		; 7A
	cop $FC.b		; 02 FC
	sty $3C.b		; 84 3C
	tsb $7C.b		; 04 7C
	mvp $04,$1C		; 44 1C 04
	tad		; 5B
	rol A		; 2A
	adc $BF0D.w,X		; 7D 0D BF
	eor [$BB.b]		; 47 BB
	mvp $4D,$B3		; 44 B3 4D
	ldx $4A.b,Y		; B6 4A
	ldy $58.b		; A4 58
	lda [$58.b]		; A7 58
	and $320F15.l		; 2F 15 0F 32
	eor [$38.b]		; 47 38
	mvp $4D,$38		; 44 38 4D
	bmi  75.b		; 30 4B
	and ($5B.b),Y		; 31 5B
	and $58.b,S		; 23 58
	jsr $FFFD.w		; 20 FD FF
	adc ($FC.b)		; 72 FC
	brk $00.b		; 00 00
	inc $FE16.w,X		; FE 16 FE
	ldx $FA.b,Y		; B6 FA
	rol A		; 2A
	sbc $64.b,X		; F5 64
	sbc $54.b,X		; F5 54
	bcs 127.b		; B0 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $01.b,X		; 16 01
	lda [$01.b],Y		; B7 01
	and $0B6F05.l		; 2F 05 6F 0B
	eor $E8C80B.l,X		; 5F 0B C8 E8
	brk $08.b		; 00 08
	bcs -72.b		; B0 B8
	bvc  84.b		; 50 54
	tax		; AA
	tay		; A8
	stx $94.b,Y		; 96 94
	sta $B58C.w		; 8D 8C B5
	sty $00.b,X		; 94 00
	jsr ($FC00.w,X)		; FC 00 FC
	jsr $40FE.w		; 20 FE 40
	inc $7CA0.w,X		; FE A0 7C
	pei ($78.b)		; D4 78
	inc $FE72.w		; EE 72 FE
	ror A		; 6A
	ldx $2427.w		; AE 27 24
	rol $1C.b		; 26 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3C1B.w,X		; 3C 1B 3C
	tas		; 1B
	trb $0002.w		; 1C 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	pei ($E5.b)		; D4 E5
	cpy $E5.b		; C4 E5
	ldy $EB.b		; A4 EB
	tay		; A8
	wai		; CB
	dey		; 88
	wai		; CB
	php		; 08
	wai		; CB
	brk $FB.b		; 00 FB
	jsr $0BDF.w		; 20 DF 0B
	cmp $1BBF1B.l,X		; DF 1B BF 1B
	lda $37BF17.l,X		; BF 17 BF 37
	and $373737.l,X		; 3F 37 37 37
	and [$07.b]		; 27 07
	tsx		; BA
	sta ($BA.b)		; 92 BA
	sta ($B7.b)		; 92 B7
	sta ($B5.b,S),Y		; 93 B5
	bcc -75.b		; 90 B5
	bcc -82.b		; 90 AE
	dey		; 88
	tsx		; BA
	dey		; 88
	tyx		; BB
	dey		; 88
	sbc $6DFF6D.l,X		; FF 6D FF 6D
	sbc $6EFE6C.l,X		; FF 6C FE 6E
	inc $FF6E.w,X		; FE 6E FF
	adc [$FF.b],Y		; 77 FF
	adc [$FF.b],Y		; 77 FF
	adc [$80.b],Y		; 77 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $59.b		; 00 59
	rol $69.b		; 26 69
	asl $2D.b		; 06 2D
	cop $35.b		; 02 35
	cop $14.b		; 02 14
	ora $12.b,S		; 03 12
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	trb $0C.b		; 14 0C
	jmp $3C5C.w		; 4C 5C 3C
	bit $00.b		; 24 00
	cli		; 58
	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $38.b		; 00 38
	clc		; 18
	jmp ($FE00.w,X)		; 7C 00 FE
	jmp $00FE.w		; 4C FE 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	cpy #$80E0.w		; C0 E0 80
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	beq -128.b		; F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2F03.w		; 1C 03 2F
	bpl  43.b		; 10 2B
	trb $23.b		; 14 23
	trb $3946.w		; 1C 46 39
	mvp $46,$38		; 44 38 46
	dec A		; 3A
	cmp $0033.w		; CD 33 00
	ora $140F10.l		; 0F 10 0F 14
	asl A		; 0A
	trb $3900.w		; 1C 00 39
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $DD.b		; 00 DD
	rol A		; 2A
	cmp $22.b,X		; D5 22
	lda $44.b,S		; A3 44
	sbc $14.b,S		; E3 14
	lda $ECD2.w		; AD D2 EC
	cop $D8.b		; 02 D8
	ror $7C.b		; 66 7C
	asl $02.b		; 06 02
	adc ($2A.b,X)		; 61 2A
	rti		; 40

	jmp $001884.l		; 5C 84 18 00
	cld		; D8
	bcc -104.b		; 90 98
	bit $BC.b		; 24 BC
	rti		; 40

	sed		; F8
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $01.b		; 04 01
	ora $0D05.w		; 0D 05 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	ldy $BCE1.w,X		; BC E1 BC
	sbc ($9C.b,X)		; E1 9C
	sbc ($8C.b,X)		; E1 8C
	sbc ($8C.b,X)		; E1 8C
	sbc ($9C.b,X)		; E1 9C
	sbc ($1C.b),Y		; F1 1C
	sbc ($04.b),Y		; F1 04
	lda ($1E.b),Y		; B1 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	lsr $0E40.w,X		; 5E 40 0E
	brk $8E.b		; 00 8E
	bra  30.b		; 80 1E
	bpl  24.b		; 10 18
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
	brk $38.b		; 00 38
	sta $58.b,S		; 83 58
	cmp $5C.b,S		; C3 5C
	cmp $1C.b,S		; C3 1C
	cmp $2C.b,S		; C3 2C
	adc $0E.b,S		; 63 0E
	adc $0C.b,S		; 63 0C
	and ($0C.b,X)		; 21 0C
	adc ($FC.b,X)		; 61 FC
	bra  60.b		; 80 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	asl $3C02.w,X		; 1E 02 3C
	jsr $001E.w		; 20 1E 00
	asl $0900.w,X		; 1E 00 09
	ora [$0A.b]		; 07 0A
	asl $15.b		; 06 15
	tsb $1D1D.w		; 0C 1D 1D
	and $2D3D23.l		; 2F 23 3D 2D
	adc $276733.l,X		; 7F 33 67 27
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $3F00.w,X		; 1E 00 3F
	trb $123F.w		; 1C 3F 12
	and $1B3D0C.l,X		; 3F 0C 3D 1B
	eor ($15.b)		; 52 15
	ldx $3D.b		; A6 3D
	eor $DE8F7C.l		; 4F 7C 8F DE
	asl $03DD.w		; 0E DD 03
	rti		; 40

	ora $AC.b,S		; 03 AC
	sta [$CE.b]		; 87 CE
	cpx #$C00D.w		; E0 0D C0
	ora $1D84.w		; 0D 84 1D
	tsb $3E.b		; 04 3E
	eor ($3C.b,X)		; 41 3C
	rti		; 40

	lda $DD20.w,X		; BD 20 DD
	cop $FE.b		; 02 FE
	ror $BE81.w,X		; 7E 81 BE
	eor ($14.b,X)		; 41 14
	sbc $FF.b,S		; E3 FF
	brk $14.b		; 00 14
	xba		; EB
	xce		; FB
	trb $38F9.w		; 1C F9 38
	sed		; F8
	sei		; 78
	php		; 08
	xba		; EB
	eor #$EB88.w		; 49 88 EB
	php		; 08
	brk $00.b		; 00 00
	sbc $08.b,S		; E3 08
	bpl -35.b		; 10 DD
	bmi -68.b		; 30 BC
	bvs 124.b		; 70 7C
	bvc -104.b		; 50 98
	pla		; 68
	ldy $35D4.w		; AC D4 35
	phb		; 8B
	tsa		; 3B
	eor [$9F.b]		; 47 9F
	dec $CB0B.w		; CE 0B CB
	ora #$0484.w		; 09 84 04
	brk $A1.b		; 00 A1
	bpl -127.b		; 10 81
	plp		; 28
	lda $16.b,S		; A3 16
	ora ($8E.b),Y		; 11 8E
	ora #$850E.w		; 09 0E 85
	ora $030786.l		; 0F 86 07 03
	ldy #$815F.w		; A0 5F 81
	ror $7E81.w,X		; 7E 81 7E
	sta ($7E.b,X)		; 81 7E
	sta ($6E.b),Y		; 91 6E
	cmp ($2E.b),Y		; D1 2E
	eor ($2E.b),Y		; 51 2E
	eor $5F26.w,Y		; 59 26 5F
	jsr $007E.w		; 20 7E 00
	ror $7E00.w,X		; 7E 00 7E
	brk $6E.b		; 00 6E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $26.b		; 00 26
	brk $F5.b		; 00 F5
	mvn $D4,$F5		; 54 F5 D4
	sbc $C4.b		; E5 C4
	sbc $A4.b		; E5 A4
	xba		; EB
	plp		; 28
	wai		; CB
	brk $FB.b		; 00 FB
	brk $EF.b		; 00 EF
	ora [$5F.b],Y		; 17 5F
	phd		; 0B
	cmp $1BDF0B.l,X		; DF 0B DF 1B
	lda $173F1B.l,X		; BF 1B 3F 17
	and [$37.b],Y		; 37 37
	ora [$07.b]		; 07 07
	ora [$00.b]		; 07 00
	cpy #$7800.w		; C0 00 78
	bra   4.b		; 80 04
	sed		; F8
	dec $28.b,X		; D6 28
	inc $AA50.w		; EE 50 AA
	trb $1A.b		; 14 1A
	bit $1C.b		; 24 1C
	ldy #$0000.w		; A0 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $28.b		; 00 28
	sty $10.b,X		; 94 10
	tsb $0054.w		; 0C 54 00
	cpx $20.b		; E4 20
	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$40C0.w		; C0 C0 40
	rts		; 60

	jsr $E0E0.w		; 20 E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra -32.b		; 80 E0
	cpy #$00E0.w		; C0 E0 00
	php		; 08
	ora [$0B.b]		; 07 0B
	ora [$14.b]		; 07 14
	tsb $1723.w		; 0C 23 17
	and ($10.b,X)		; 21 10
	lsr $2E.b		; 46 2E
	sta $63.b,S		; 83 63
	tya		; 98
	adc ($07.b),Y		; 71 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora $11.b,S		; 03 11
	ora $220F10.l		; 0F 10 0F 22
	ora $4C1F60.l,X		; 1F 60 1F 4C
	ora $70.b,S		; 03 70
	stz $58.b,X		; 74 58
	jmp $7C5C78.l		; 5C 78 5C 7C
	lsr $4F6F.w		; 4E 6F 4F
	asl A		; 0A
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	jsr $0050.w		; 20 50 00
	pha		; 48
	brk $4F.b		; 00 4F
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $0D08.w		; 0D 08 0D
	ora $0E0D.w		; 0D 0D 0E
	asl $0B.b		; 06 0B
	ora $8D.b,S		; 03 8D
	bra -118.b		; 80 8A
	cop $03.b		; 02 03
	ora $02.b,S		; 03 02
	brk $0F.b		; 00 0F
	ora $0E.b		; 05 0E
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	tsb $83.b		; 04 83
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	brk $F4.b		; 00 F4
	ror $8B8A.w,X		; 7E 8A 8B
	sbc $04.b		; E5 04
	lda [$87.b],Y		; B7 87
	stp		; DB
	cmp $36.b,S		; C3 36
	lda ($7D.b,S),Y		; B3 7D
	ora $007F.w		; 0D 7F 00
	tda		; 7B
	asl A		; 0A
	jsr ($FF70.w,X)		; FC 70 FF
	xce		; FB
	jsr ($7E78.w,X)		; FC 78 7E
	ldy $CD3F.w,X		; BC 3F CD
	ora $B000C2.l		; 0F C2 00 B0
	cop $0B.b		; 02 0B
	cop $1B.b		; 02 1B
	php		; 08
	tas		; 1B
	tsb $16.b		; 04 16
	brk $36.b		; 00 36
	bpl  52.b		; 10 34
	bvc 116.b		; 50 74
	bvs 116.b		; 70 74
	ora $01.b		; 05 01
	tsb $0608.w		; 0C 08 06
	cop $08.b		; 02 08
	brk $1C.b		; 00 1C
	trb $08.b		; 14 08
	brk $48.b		; 00 48
	brk $68.b		; 00 68
	brk $06.b		; 00 06
	sta ($06.b),Y		; 91 06
	ora ($0E.b),Y		; 11 0E
	ora $1902.w,Y		; 19 02 19
	cop $09.b		; 02 09
	cop $09.b		; 02 09
	cop $09.b		; 02 09
	cop $09.b		; 02 09
	asl $0E00.w		; 0E 00 0E
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -15.b		; 10 F1
	ora ($F3.b)		; 12 F3
	asl $F3.b,X		; 16 F3
	tsb $ACE1.w		; 0C E1 AC
	sbc ($BC.b,X)		; E1 BC
	sbc ($BC.b,X)		; E1 BC
	sbc ($BC.b,X)		; E1 BC
	sbc ($4E.b,X)		; E1 4E
	rti		; 40

	jmp $AC40.w		; 4C 40 AC
	ldy #$A0BE.w		; A0 BE A0
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $7F.b		; 00 7F
	ora $B843B1.l,X		; 1F B1 43 B8
	mvp $4D,$B3		; 44 B3 4D
	ldx $4A.b,Y		; B6 4A
	ldy $58.b		; A4 58
	lda [$58.b]		; A7 58
	ldy #$195F.w		; A0 5F 19
	and [$40.b]		; 27 40
	and $4D3B44.l,X		; 3F 44 3B 4D
	bmi  75.b		; 30 4B
	and ($5B.b),Y		; 31 5B
	and $58.b,S		; 23 58
	jsr $205F.w		; 20 5F 20
	inc $E6.b		; E6 E6
	sbc $7BF9.w,Y		; F9 F9 7B
	sbc $611F07.l,X		; FF 07 1F 61
	and $FC.b,S		; 23 FC
	bit $24F5.w		; 2C F5 24
	sbc $64.b,X		; F5 64
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	beq  -1.b		; F0 FF
	and ($FF.b,X)		; 21 FF
	ora ($FF.b,X)		; 01 FF
	ldy #$2C9F.w		; A0 9F 2C
	ora $2F.b,S		; 03 2F
	phd		; 0B
	adc $38300B.l		; 6F 0B 30 38
	bne -40.b		; D0 D8
	bne -44.b		; D0 D4
	dex		; CA
	iny		; C8
	stx $94.b,Y		; 96 94
	ora $94B50C.l		; 0F 0C B5 94
	lda $3095.w,X		; BD 95 30
	jsr ($FEC0.w,X)		; FC C0 FE
	cpy #$80FE.w		; C0 FE 80
	jsr ($F814.w,X)		; FC 14 F8
	bit $FEF0.w		; 2C F0 FE
	ror A		; 6A
	sbc $03036A.l,X		; FF 6A 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc #$2D06.w		; 69 06 2D
	cop $35.b		; 02 35
	cop $14.b		; 02 14
	ora $12.b,S		; 03 12
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora $920FB3.l,X		; 1F B3 0F 92
	asl $069A.w		; 0E 9A 06
	dex		; CA
	asl $49.b		; 06 49
	sta [$E5.b]		; 87 E5
	ora $65.b,S		; 03 65
	ora $07.b,S		; 03 07
	ora [$04.b]		; 07 04
	tsb $05.b		; 04 05
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $82.b		; 00 82
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	brk $C0.b		; 00 C0
	cpx #$B0E0.w		; E0 E0 B0
	bcc -24.b		; 90 E8
	dey		; 88
	cld		; D8
	tya		; 98
	bcs -128.b		; B0 80
	pea $8004.w		; F4 04 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rts		; 60

	sed		; F8
	bvs  -8.b		; 70 F8
	jmp ($4EC0.w)		; 6C C0 4E
	tsb $3E.b		; 04 3E
	brk $00.b		; 00 00
	bit $343C.w		; 2C 3C 34
	trb $4C58.w		; 1C 58 4C
	rts		; 60

	jsr $1808.w		; 20 08 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	brk $3C.b		; 00 3C
	php		; 08
	ror $7E04.w,X		; 7E 04 7E
	rti		; 40

	inc $FE00.w,X		; FE 00 FE
	brk $7C.b		; 00 7C
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	ora $0F7000.l,X		; 1F 00 70 0F
	bcc 111.b		; 90 6F
	bcc 111.b		; 90 6F
	inc $19.b		; E6 19
	ror $5D81.w,X		; 7E 81 5D
	ldx #$E01F.w		; A2 1F E0
	brk $00.b		; 00 00
	ora $106F00.l		; 0F 00 6F 10
	eor $7B0030.l		; 4F 30 00 7B
	sta ($7A.b,X)		; 81 7A
	ldx #$E054.w		; A2 54 E0
	brk $BA.b		; 00 BA
	sta ($B6.b)		; 92 B6
	sta ($B5.b)		; 92 B5
	bcc -85.b		; 90 AB
	dey		; 88
	tax		; AA
	dey		; 88
	lda [$84.b],Y		; B7 84
	lda $84.b,X		; B5 84
	lda $6DFF87.l,X		; BF 87 FF 6D
	sbc $6EFE6D.l,X		; FF 6D FE 6E
	inc $FF76.w,X		; FE 76 FF
	adc [$FF.b],Y		; 77 FF
	tda		; 7B
	sbc $78FF7B.l,X		; FF 7B FF 78
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	sbc $F23F26.l,X		; FF 26 3F F2
	tas		; 1B
	sep #$0B		; E2 0B
	cpx #$E00B.w		; E0 0B E0
	ora $780E78.l		; 0F 78 0E 78
	asl $02FA.w		; 0E FA 02
	bne  16.b		; D0 10
	cpx $00.b		; E4 00
	pea $F600.w		; F4 00 F6
	cop $FA.b		; 02 FA
	asl A		; 0A
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$80C0.w		; C0 C0 80
	cpy #$8000.w		; C0 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$00E0.w		; C0 E0 00
	cpx #$E000.w		; E0 00 E0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	and $142B10.l		; 2F 10 2B 14
	and $1C.b,S		; 23 1C
	lsr $39.b		; 46 39
	mvp $46,$38		; 44 38 46
	dec A		; 3A
	cmp $8E33.w		; CD 33 8E
	adc ($10.b),Y		; 71 10
	ora $1C0A14.l		; 0F 14 0A 1C
	brk $39.b		; 00 39
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $D5.b		; 00 D5
	jsl $E344A3.l		; 22 A3 44 E3
	trb $AD.b		; 14 AD
	cmp ($EC.b)		; D2 EC
	cop $D8.b		; 02 D8
	ror $7C.b		; 66 7C
	asl $A0.b		; 06 A0
	stz $402A.w		; 9C 2A 40
	jmp $001884.l		; 5C 84 18 00
	cld		; D8
	bcc -104.b		; 90 98
	bit $BC.b		; 24 BC
	rti		; 40

	sed		; F8
	brk $78.b		; 00 78
	clc		; 18
	lda $BC95.w,X		; BD 95 BC
	sty $BA.b,X		; 94 BA
	sta ($BE.b)		; 92 BE
	sta ($7F.b)		; 92 7F
	ora ($77.b,S),Y		; 13 77
	ora ($75.b)		; 12 75
	brk $7F.b		; 00 7F
	tsb $FF.b		; 04 FF
	ror A		; 6A
	sbc $6DFF6B.l,X		; FF 6B FF 6D
	sbc $ECFF6D.l,X		; FF 6D FF EC
	inc $EEEC.w,X		; FE EC EE
	inc $E0E4.w		; EE E4 E0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	lsr $7E81.w,X		; 5E 81 7E
	sta ($7E.b,X)		; 81 7E
	sta ($7E.b,X)		; 81 7E
	sta ($6E.b),Y		; 91 6E
	cmp ($2E.b),Y		; D1 2E
	eor ($2E.b),Y		; 51 2E
	eor $5E26.w,Y		; 59 26 5E
	jsr $007E.w		; 20 7E 00
	ror $7E00.w,X		; 7E 00 7E
	brk $6E.b		; 00 6E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $26.b		; 00 26
	brk $F5.b		; 00 F5
	mvn $D4,$F5		; 54 F5 D4
	xba		; EB
	tay		; A8
	nop		; EA
	ldy #$21EB.w		; A0 EB 21
	xba		; EB
	and ($FB.b,X)		; 21 FB
	ora ($CF.b),Y		; 11 CF
	and [$5F.b],Y		; 37 5F
	phd		; 0B
	cmp $17BF0B.l,X		; DF 0B BF 17
	lda [$17.b],Y		; B7 17
	and [$16.b],Y		; 37 16
	and [$16.b],Y		; 37 16
	ora [$06.b],Y		; 17 06
	ora [$10.b],Y		; 17 10
	php		; 08
	ora [$09.b]		; 07 09
	ora [$10.b]		; 07 10
	asl $0E13.w		; 0E 13 0E
	and [$1F.b]		; 27 1F
	and [$1C.b]		; 27 1C
	eor $4B39.w		; 4D 39 4B
	tsa		; 3B
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	ora $0900.w		; 0D 00 09
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora $3F.b,S		; 03 3F
	asl $3E.b		; 06 3E
	ora $42.b		; 05 42
	ora $E6.b,X		; 15 E6
	and $3C8F.w,X		; 3D 8F 3C
	eor $DDCE7E.l		; 4F 7E CE DD
	.db $82, $E0, $FD		; 82 E0 FD
	inc $FFFF.w,X		; FE FF FF
	cpx #$C00D.w		; E0 0D C0
	ora $1DC4.w		; 0D C4 1D
	sty $1E.b		; 84 1E
	cmp ($3C.b,X)		; C1 3C
	bra 125.b		; 80 7D
	cpy #$F9FF.w		; C0 FF F9
	sbc $408080.l,X		; FF 80 80 40
	rti		; 40

	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $60.b		; 00 60
	bcs  64.b		; B0 40
	bcc -64.b		; 90 C0
	bpl -128.b		; 10 80
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	rts		; 60

	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	jsr $2081.w		; 20 81 20
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bvs 120.b		; 70 78
	cli		; 58
	sec		; 38
	plp		; 28
	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bmi  -8.b		; 30 F8
	clc		; 18
	jsr ($FC08.w,X)		; FC 08 FC
	brk $FC.b		; 00 FC
	bpl -16.b		; 10 F0
	brk $B0.b		; 00 B0
	php		; 08
	tya		; 98
	brk $98.b		; 00 98
	tsb $8C.b		; 04 8C
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $7E.b		; 00 7E
	sta ($BE.b,X)		; 81 BE
	eor ($14.b,X)		; 41 14
	sbc $FF.b,S		; E3 FF
	brk $14.b		; 00 14
	xba		; EB
	tda		; 7B
	jmp ($C8E9.w)		; 6C E9 C8
	inx		; E8
	inx		; E8
	php		; 08
	xba		; EB
	eor #$EB88.w		; 49 88 EB
	php		; 08
	brk $00.b		; 00 00
	sbc $08.b,S		; E3 08
	rts		; 60

	sbc $FCC0.w		; ED C0 FC
	cpx #$72FC.w		; E0 FC 72
	sta $249F34.l,X		; 9F 34 9F 24
	stz $9E24.w,X		; 9E 24 9E
	bit $9E.b		; 24 9E
	stz $DE.b		; 64 DE
	mvp $4C,$DE		; 44 DE 4C
	dec $64.b,X		; D6 64
	tsb $62.b		; 04 62
	cop $70.b		; 02 70
	bpl 112.b		; 10 70
	bpl 104.b		; 10 68
	php		; 08
	plp		; 28
	php		; 08
	plp		; 28
	php		; 08
	jsr $0600.w		; 20 00 06
	cmp ($A6.b,S),Y		; D3 A6
	sbc ($EB.b),Y		; F1 EB
	beq -44.b		; F0 D4
	sed		; F8
	lda [$3C.b]		; A7 3C
	jsr ($DA5C.w,X)		; FC 5C DA
	.db $42, $3E		; 42 3E
	rol $4868.w,X		; 3E 68 48
	cpy $C64C.w		; CC 4C C6
	asl $E3.b		; 06 E3
	and $74.b,S		; 23 74
	bvc 124.b		; 50 7C
	jsr $3C7E.w		; 20 7E 3C
	rol $0000.w,X		; 3E 00 00
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
	brk $E0.b		; 00 E0
	inx		; E8
	bpl  24.b		; 10 18
	bne -44.b		; D0 D4
	rol A		; 2A
	plp		; 28
	stx $94.b,Y		; 96 94
	sta $94B58E.l		; 8F 8E B5 94
	lda $C094.w,X		; BD 94 C0
	jsr ($FE00.w,X)		; FC 00 FE
	rti		; 40

	inc $FC20.w,X		; FE 20 FC
	pei ($78.b)		; D4 78
	inc $FE70.w		; EE 70 FE
	ror A		; 6A
	inc $0E6A.w,X		; FE 6A 0E
	rts		; 60

	asl $0F20.w		; 0E 20 0F
	and ($0F.b,X)		; 21 0F
	and ($06.b,X)		; 21 06
	and ($16.b,X)		; 21 16
	and ($16.b),Y		; 31 16
	and ($06.b),Y		; 31 06
	and ($3F.b),Y		; 31 3F
	jsr $001F.w		; 20 1F 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1F.b		; 00 1F
	ora ($0E.b,X)		; 01 0E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  -2.b		; 10 FE
	sbc $40FD8D.l		; EF 8D FD 40
	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	bvs   0.b		; 70 00
	bvs   8.b		; 70 08
	sei		; 78
	sbc ($01.b,X)		; E1 01
	eor ($50.b)		; 52 50
	sta $008F10.l,X		; 9F 10 8F 00
	sta $008F00.l		; 8F 00 8F 00
	cmp $50D750.l,X		; DF 50 D7 50
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc #$2D06.w		; 69 06 2D
	cop $35.b		; 02 35
	cop $14.b		; 02 14
	ora $12.b,S		; 03 12
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	and $D338C8.l,X		; 3F C8 38 D3
	bmi -41.b		; 30 D7
	bmi -41.b		; 30 D7
	bmi  87.b		; 30 57
	bcs -41.b		; B0 D7
	bmi  71.b		; 30 47
	bmi  25.b		; 30 19
	clc		; 18
	ora [$10.b],Y		; 17 10
	ora $000F00.l		; 0F 00 0F 00
	ora $008F00.l		; 0F 00 8F 00
	ora $101F00.l		; 0F 00 1F 10
	ror $B01F.w		; 6E 1F B0
	jmp $44BB.w		; 4C BB 44
	lda ($4D.b,S),Y		; B3 4D
	ldx $4A.b,Y		; B6 4A
	ldy $58.b		; A4 58
	lda [$58.b]		; A7 58
	ldy #$1E5F.w		; A0 5F 1E
	and ($4C.b,X)		; 21 4C
	and ($44.b,S),Y		; 33 44
	sec		; 38
	eor $4B30.w		; 4D 30 4B
	and ($5B.b),Y		; 31 5B
	and $58.b,S		; 23 58
	jsr $205F.w		; 20 5F 20
	sbc $00FF.w,Y		; F9 FF 00
	brk $FC.b		; 00 FC
	trb $FC.b		; 14 FC
	ldy $7C.b,X		; B4 7C
	bit $2CFD.w		; 2C FD 2C
	sbc $64.b,X		; F5 64
	sbc $54.b,X		; F5 54
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	trb $03.b		; 14 03
	lda [$03.b],Y		; B7 03
	lda $032F83.l		; AF 83 2F 03
	adc $0B5F0B.l		; 6F 0B 5F 0B
	bcc  88.b		; 90 58
	rts		; 60

	tay		; A8
	sbc $FF2D.w		; ED 2D FF
	and [$D7.b],Y		; 37 D7
	eor [$5E.b]		; 47 5E
	eor $384E4C.l		; 4F 4C 4E 38
	sec		; 38
	rts		; 60

	rti		; 40

	bcc   1.b		; 90 01
	trb $3D83.w		; 1C 83 3D
	phb		; 8B
	adc $377A3B.l,X		; 7F 3B 7A 37
	sei		; 78
	and [$38.b],Y		; 37 38
	asl $20.b		; 06 20
	rti		; 40

	cpy #$C0E0.w		; C0 E0 C0
	cpy #$C080.w		; C0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F.b,S		; 03 0F
	ora $1D.b		; 05 1D
	ora #$1039.w		; 09 39 10
	adc ($22.b),Y		; 71 22
	sbc $44.b,S		; E3 44
	cmp [$08.b]		; C7 08
	stx $9C90.w		; 8E 90 9C
	tsb $04.b		; 04 04
	asl A		; 0A
	php		; 08
	asl $10.b,X		; 16 10
	and $405C21.l		; 2F 21 5C 40
	dec A		; 3A
	cop $F4.b		; 02 F4
	sty $68.b		; 84 68
	php		; 08
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($12.b),Y		; 31 12
	adc ($28.b,S),Y		; 73 28
	adc $38.b,S		; 63 38
	.db $62, $1C, $C6		; 62 1C C6
	clc		; 18
	dec $78.b		; C6 78
	cmp [$70.b]		; C7 70
	cmp [$1E.b]		; C7 1E
	bpl  44.b		; 10 2C
	jsr $021E.w		; 20 1E 02
	trb $7800.w		; 1C 00 78
	rti		; 40

	jmp ($3844.w,X)		; 7C 44 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	cmp $308F31.l		; CF 31 8F 30
	stx $8E60.w		; 8E 60 8E
	adc ($8F.b,X)		; 61 8F
	.db $62, $8F, $72		; 62 8F 72
	sta $319F72.l,X		; 9F 72 9F 31
	ora ($78.b,X)		; 01 78
	php		; 08
	adc ($00.b),Y		; 71 00
	adc ($02.b,S),Y		; 73 02
	adc ($02.b)		; 72 02
	adc ($01.b),Y		; 71 01
	rts		; 60

	brk $64.b		; 00 64
	tsb $00.b		; 04 00
	clc		; 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $46.b		; 00 46
	and $3844.w,Y		; 39 44 38
	lsr $3A.b		; 46 3A
	cmp $8E33.w		; CD 33 8E
	adc ($1E.b),Y		; 71 1E
	sbc $9CF171.l		; EF 71 F1 9C
	bra  57.b		; 80 39
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $EF.b		; 00 EF
	ora ($FF.b,X)		; 01 FF
	asl $7FFF.w		; 0E FF 7F
	lda $ECD2.w		; AD D2 EC
	cop $D8.b		; 02 D8
	ror $7C.b		; 66 7C
	asl $A0.b		; 06 A0
	stz $CC90.w		; 9C 90 CC
	rti		; 40

	sei		; 78
	ldy $D89C.w,X		; BC 9C D8
	bcc -104.b		; 90 98
	bit $BC.b		; 24 BC
	rti		; 40

	sed		; F8
	brk $78.b		; 00 78
	clc		; 18
	bvs  64.b		; 70 40
	bra   0.b		; 80 00
	jsr ($0260.w,X)		; FC 60 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	ora $08.b,S		; 03 08
	ora $08.b		; 05 08
	tsb $11.b		; 04 11
	phd		; 0B
	jsr $2618.w		; 20 18 26
	trb $0001.w		; 1C 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$18.b]		; 07 18
	ora [$13.b]		; 07 13
	brk $3D.b		; 00 3D
	cmp $39E2E2.l,X		; DF E2 E2 39
	ora ($ED.b,X)		; 01 ED
	sbc ($76.b,X)		; E1 76
	bmi -115.b		; 30 8D
	ldy $C3DF.w		; AC DF C3
	ora $02DE40.l,X		; 1F 40 DE 02
	sbc $FEFF1C.l,X		; FF 1C FF FE
	adc $EF1FDE.l,X		; 7F DE 1F EF
	sta $F003F3.l		; 8F F3 03 F0
	brk $EC.b		; 00 EC
	jsr $8098.w		; 20 98 80
	beq 120.b		; F0 78
	sec		; 38
	cpx $FAE4.w		; EC E4 FA
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	cpx $6E.b		; E4 6E
	.db $62, $FE, $00		; 62 FE 00
	cpx #$80.b		; E0 80
	brk $00.b		; 00 00
	sed		; F8
	cpy #$3C.b		; C0 3C
	clc		; 18
	ldx $FC1C.w,Y		; BE 1C FC
	tad		; 5B
	beq -109.b		; F0 93
	brk $0D.b		; 00 0D
	ora $073800.l		; 0F 00 38 07
	pha		; 48
	and [$48.b],Y		; 37 48
	and [$73.b],Y		; 37 73
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs   0.b		; 70 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	bit $02C0.w,X		; 3C C0 02
	jsr ($946B.w,X)		; FC 6B 94
	adc [$A8.b],Y		; 77 A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora $02.b		; 05 02
	asl $09.b,X		; 16 09
	and $14.b,S		; 23 14
	mvp $8C,$2A		; 44 2A 8C
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	cop $0F.b		; 02 0F
	ora ($0F.b,X)		; 01 0F
	cop $0F.b		; 02 0F
	clc		; 18
	ora [$38.b]		; 07 38
	ora $70.b,S		; 03 70
	ora ($C3.b,X)		; 01 C3
	eor $73.b,S		; 43 73
	cop $DA.b		; 02 DA
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	tda		; 7B
	lda $9D.b		; A5 9D
	tsa		; 3B
	ora [$67.b]		; 07 67
	cli		; 58
	rtl		; 6B

	pei ($7E.b)		; D4 7E
	bit $FDFF.w,X		; 3C FF FD
	sbc $C43E3C.l,X		; FF 3C 3E C4
	sta $D807C2.l,X		; 9F C2 07 D8
	brk $DE.b		; 00 DE
	tsb $D8.b		; 04 D8
	phb		; 8B
	lsr $40A0.w		; 4E A0 40
	ply		; 7A
	lda ($5C.b)		; B2 5C
	sty $8475.w		; 8C 75 84
	adc $94.b,X		; 75 94
	adc #$EB88.w		; 69 88 EB
	plp		; 28
	rti		; 40

	lda $B79F40.l,X		; BF 40 9F B7
	ora $AF.b		; 05 AF
	and $8F.b,S		; 23 8F
	phd		; 0B
	sta $179F0B.l,X		; 9F 0B 9F 17
	and $A7A617.l,X		; 3F 17 A6 A7
	inc A		; 1A
	dec A		; 3A
	sta $85.b		; 85 85
	sta ($92.b)		; 92 92
	clv		; B8
	bcc -66.b		; 90 BE
	sta ($B6.b)		; 92 B6
	sta ($B5.b)		; 92 B5
	sta ($06.b),Y		; 91 06
	sbc $C4FF0A.l,X		; FF 0A FF C4
	adc $FD6FFA.l,X		; 7F FA 6F FD
	adc $FF6DFF.l		; 6F FF 6D FF
	adc $6EFF.w		; 6D FF 6E
	lda $ECD2.w		; AD D2 EC
	cop $D8.b		; 02 D8
	ror $7C.b		; 66 7C
	asl $A0.b		; 06 A0
	stz $CC90.w		; 9C 90 CC
	rti		; 40

	sei		; 78
	dec $D84E.w		; CE 4E D8
	bcc -104.b		; 90 98
	bit $BC.b		; 24 BC
	rti		; 40

	sed		; F8
	brk $78.b		; 00 78
	clc		; 18
	bvs  64.b		; 70 40
	bra   0.b		; 80 00
	inc $00B1.w,X		; FE B1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $1E.b,X		; 16 1E
	bpl  22.b		; 10 16
	inc A		; 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	trb $3F.b		; 14 3F
	bpl  63.b		; 10 3F
	ora ($3F.b)		; 12 3F
	lda ($47.b),Y		; B1 47
	adc #$B993.w		; 69 93 B9
	cmp ($80.b,X)		; C1 80
	cpy #$8000.w		; C0 00 80
	trb $3401.w		; 1C 01 34
	ora ($0A.b,S),Y		; 13 0A
	stx $2243.w		; 8E 43 22
	ora ($A0.b),Y		; 11 A0
	ora ($C0.b,X)		; 01 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora $3D89.w,Y		; 19 89 3D
	pea $7070.w		; F4 70 70
	bcs  48.b		; B0 30
	jsr $E020.w		; 20 20 E0
	cpx #$7C00.w		; E0 00 7C
	sec		; 38
	inc $8784.w,X		; FE 84 87
	cop $03.b		; 02 03
	beq -72.b		; F0 B8
	cpx #$E0D8.w		; E0 D8 E0
	bne -32.b		; D0 E0
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	mvp $02,$7A		; 44 7A 02
	jsr ($7800.w,X)		; FC 00 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$3E80.w		; E0 80 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pld		; 2B
	trb $63.b		; 14 63
	trb $3946.w		; 1C 46 39
	mvp $46,$38		; 44 38 46
	dec A		; 3A
	eor $8E33.w		; 4D 33 8E
	adc ($BE.b),Y		; 71 BE
	adc $0A14.w,X		; 7D 14 0A
	trb $3900.w		; 1C 00 39
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $7D.b		; 00 7D
	ora ($0F.b,X)		; 01 0F
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
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $01.b		; 05 01
	tsb $02.b		; 04 02
	tsb $03.b		; 04 03
	ora #$0106.w		; 09 06 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora ($09.b,X)		; 01 09
	asl $0B.b		; 06 0B
	tsb $13.b		; 04 13
	tsb $0817.w		; 0C 17 08
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	asl $2A01.w,X		; 1E 01 2A
	ora $06.b,X		; 15 06
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$01.b]		; 07 01
	asl $0A15.w		; 0E 15 0A
	rol A		; 2A
	ora $2A.b,X		; 15 2A
	ora $22.b,X		; 15 22
	ora $1D22.w,X		; 1D 22 1D
	plp		; 28
	ora [$28.b],Y		; 17 28
	ora [$28.b],Y		; 17 28
	ora [$34.b],Y		; 17 34
	ora $15.b,S		; 03 15
	asl A		; 0A
	ora $0A.b,X		; 15 0A
	ora $1D02.w,X		; 1D 02 1D
	cop $17.b		; 02 17
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $03.b		; 00 03
	brk $34.b		; 00 34
	ora $14.b,S		; 03 14
	ora $14.b,S		; 03 14
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $E0.b		; 00 E0
	sbc $030003.l,X		; FF 03 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $D6.b		; 00 D6
	cld		; D8
	inc $FE30.w		; EE 30 FE
	beq -50.b		; F0 CE
	cpx #$E6EE.w		; E0 EE E6
	cpx #$6FF0.w		; E0 F0 6F
	ror $2E8B.w		; 6E 8B 2E
	cpx #$E001.w		; E0 01 E0
	cmp ($F0.b,X)		; C1 F0
	ora ($80.b,X)		; 01 80
	sbc ($C6.b),Y		; F1 C6
	sbc ($40.b),Y		; F1 40
	sbc $0AFF0A.l,X		; FF 0A FF 0A
	sbc $BDDC63.l,X		; FF 63 DC BD
	.db $62, $CF, $31		; 62 CF 31
	adc $CF7F83.l,X		; 7F 83 7F CF
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	sta $C01C9F.l,X		; 9F 9F 1C C0
	jsl $8D30E0.l		; 22 E0 30 8D
	ora ($B3.b,X)		; 01 B3
	ora [$CF.b]		; 07 CF
	and $FF3FFF.l,X		; 3F FF 3F FF
	stx $EBFF.w		; 8E FF EB
	jsr $00CB.w		; 20 CB 00
	cmp ($00.b,S),Y		; D3 00
	cmp [$00.b],Y		; D7 00
	sbc [$00.b],Y		; F7 00
	sbc $0EF100.l,X		; FF 00 F1 0E
	sbc ($0F.b,S),Y		; F3 0F
	and [$17.b],Y		; 37 17
	and [$37.b],Y		; 37 37
	and $2F2F2F.l		; 2F 2F 2F 2F
	ora $00000F.l		; 0F 0F 00 00
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	lda $88BE89.l		; AF 89 BE 88
	lda $88BB88.l,X		; BF 88 BB 88
	tyx		; BB
	dey		; 88
	lda $7CFF87.l,X		; BF 87 FF 7C
	sbc ($FC.b,S),Y		; F3 FC
	sbc $77FF76.l,X		; FF 76 FF 77
	sbc $77FF77.l,X		; FF 77 FF 77
	sbc $78FF77.l,X		; FF 77 FF 78
	jmp ($0800.w,X)		; 7C 00 08
	php		; 08
	plx		; FA
	cmp $E5.b,S		; C3 E5
	sta $B7.b		; 85 B7
	tyx		; BB
	jmp.w [$F462]		; DC 62 F4
	ora #$10EC.w		; 09 EC 10
	mvp $BA,$38		; 44 38 BA
	lsr $7E.b		; 46 7E
	and $7BFD.w,X		; 3D FD 7B
	sed		; F8
	eor $60.b,S		; 43 60
	tas		; 1B
	sta ($BB.b,X)		; 81 BB
	sta ($88.b,S),Y		; 93 88
	tyx		; BB
	bra  65.b		; 80 41
	brk $0E.b		; 00 0E
	php		; 08
	asl $040A.w		; 0E 0A 04
	tsb $8C08.w		; 0C 08 8C
	clc		; 18
	stz $9818.w		; 9C 18 98
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	php		; 08
	sta $009F08.l,X		; 9F 08 9F 00
	stz $1E00.w,X		; 9E 00 1E
	php		; 08
	rol $FC98.w,X		; 3E 98 FC
	cli		; 58
	bit $3CF0.w,X		; 3C F0 3C
	sei		; 78
	sei		; 78
	cld		; D8
	tya		; 98
	bcs -112.b		; B0 90
	bne  80.b		; D0 50
	sbc ($33.b,S),Y		; F3 33
	ror $37.b,X		; 76 37
	sei		; 78
	and $7FBFB1.l,X		; 3F B1 BF 7F
	bra  -9.b		; 80 F7
	rts		; 60

	sbc $A0FF60.l,X		; FF 60 FF A0
	jsr ($E8C0.w,X)		; FC C0 E8
	cpy #$C5E5.w		; C0 E5 C5
	inx		; E8
	pha		; 48
	cop $03.b		; 02 03
	and ($33.b)		; 32 33
	mvp $AC,$67		; 44 67 AC
	inc $CE08.w		; EE 08 CE
	brk $8C.b		; 00 8C
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	jsr ($CC00.w,X)		; FC 00 CC
	brk $BA.b		; 00 BA
	jsl $740010.l		; 22 10 00 74
	mvp $88,$F8		; 44 F8 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl 123.b		; 10 7B
	sta [$79.b]		; 87 79
	sta [$79.b]		; 87 79
	sta [$7D.b]		; 87 7D
	sta $74.b,S		; 83 74
	sta $66.b,S		; 83 66
	sta ($62.b,X)		; 81 62
	sta ($00.b,X)		; 81 00
	sbc $820080.l,X		; FF 80 00 82
	cop $82.b		; 02 82
	cop $80.b		; 02 80
	brk $81.b		; 00 81
	ora ($80.b,X)		; 01 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tsb $0462.w		; 0C 62 04
	bvs   6.b		; 70 06
	bvs   6.b		; 70 06
	bit $B806.w,X		; 3C 06 B8
	.db $82, $78, $C3		; 82 78 C3
	lsr $F0C3.w,X		; 5E C3 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $F8.b		; 04 F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	.db $82, $3C, $00		; 82 3C 00
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	bpl  52.b		; 10 34
	rts		; 60

	ror $5C.b,X		; 76 5C
	lsr $5F56.w,X		; 5E 56 5F
	php		; 08
	brk $0C.b		; 00 0C
	tsb $18.b		; 04 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	brk $7C.b		; 00 7C
	trb $70.b		; 14 70
	jsr $2878.w		; 20 78 28
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
	cmp ($FF.b,X)		; C1 FF
	.db $42, $76		; 42 76
	.db $82, $EE, $80		; 82 EE 80
	tsb $0C04.w		; 0C 04 0C
	ora $0D.b		; 05 0D
	cop $1B.b		; 02 1B
	php		; 08
	tas		; 1B
	sbc ($32.b)		; F2 32
	sbc ($A0.b,X)		; E1 A0
	sta $04.b		; 85 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	tsb $0608.w		; 0C 08 06
	cop $20.b		; 02 20
	bmi   0.b		; 30 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $073800.l		; 0F 00 38 07
	pha		; 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs   0.b		; 70 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	bit $02C0.w,X		; 3C C0 02
	jsr ($946B.w,X)		; FC 6B 94
	adc [$A8.b],Y		; 77 A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	trb $3C3E.w		; 1C 3E 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $070B00.l,X		; 3F 00 0B 07
	trb $170C.w		; 1C 0C 17
	bpl  93.b		; 10 5D
	jmp $2C6B2F.l		; 5C 2F 6B 2C
	pld		; 2B
	sta [$30.b]		; 87 30
	mvp $07,$43		; 44 43 07
	brk $0F.b		; 00 0F
	ora $1F.b,S		; 03 1F
	adc $2BF30F.l		; 6F 0F F3 2B
	jsr ($7883.w,X)		; FC 83 78
	bra 123.b		; 80 7B
	bra  59.b		; 80 3B
	cpx $DE.b		; E4 DE
	dec A		; 3A
	tsa		; 3B
	bit $AF24.w,X		; 3C 24 AF
	bit $B8FE.w		; 2C FE B8
	ldx $B7.b,Y		; B6 B7
	tda		; 7B
	cpx $03FC.w		; EC FC 03
	wai		; CB
	asl A		; 0A
	cpx $C0.b		; E4 C0
	sbc $C3F7DB.l,X		; FF DB F7 C3
	sbc $48FF47.l		; EF 47 FF 48
	cpx $1003.w		; EC 03 10
	cmp [$00.b],Y		; D7 00
	cpx #$E020.w		; E0 20 E0
	bne  16.b		; D0 10
	tay		; A8
	pld		; 2B
	rtl		; 6B

	rtl		; 6B

	tay		; A8
	plp		; 28
	plb		; AB
	pld		; 2B
	ldy #$8023.w		; A0 23 80
	bra  32.b		; 80 20
	brk $F0.b		; 00 F0
	inx		; E8
	cpx #$C8DC.w		; E0 DC C8
	ldy $7C2B.w,X		; BC 2B 7C
	jsr $007C.w		; 20 7C 00
	jmp ($0007.w,X)		; 7C 07 00
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $0B.b		; 04 0B
	tsb $0F.b		; 04 0F
	brk $17.b		; 00 17
	php		; 08
	ora $0A.b,X		; 15 0A
	ora $0002.w,X		; 1D 02 00
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora [$08.b]		; 07 08
	ora [$0A.b]		; 07 0A
	ora $02.b		; 05 02
	ora $4D6C.w		; 0D 6C 4D
	stz $BC0C.w,X		; 9E 0C BC
	rti		; 40

	plx		; FA
	and ($DC.b)		; 32 DC
	tsb $44B5.w		; 0C B5 44
	lda $54.b,X		; B5 54
	lda #$0C48.w		; A9 48 0C
	sbc ($0C.b,S),Y		; F3 0C
	sbc ($40.b,X)		; E1 40
	sta $37.b,S		; 83 37
	sta $2F.b		; 85 2F
	lda $4F.b,S		; A3 4F
	phb		; 8B
	eor $975F8B.l,X		; 5F 8B 5F 97
	bit $5413.w		; 2C 13 54
	and $64.b,S		; 23 64
	ora $42.b,S		; 03 42
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $13.b		; 00 13
	brk $23.b		; 00 23
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	cmp $79877B.l		; CF 7B 87 79
	sta [$79.b]		; 87 79
	sta [$FD.b]		; 87 FD
	ora $FC.b,S		; 03 FC
	ora $F6.b,S		; 03 F6
	ora ($E6.b,X)		; 01 E6
	ora ($C4.b,X)		; 01 C4
	tsb $80.b		; 04 80
	brk $82.b		; 00 82
	cop $82.b		; 02 82
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  28.b		; 80 1C
	ora ($34.b,X)		; 01 34
	ora ($0A.b,S),Y		; 13 0A
	stx $7878.w		; 8E 78 78
	cld		; D8
	tya		; 98
	bcs -112.b		; B0 90
	bne  80.b		; D0 50
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora $3D89.w,Y		; 19 89 3D
	pea $807F.w		; F4 7F 80
	sbc [$60.b],Y		; F7 60
	sbc $A0FF60.l,X		; FF 60 FF A0
	brk $7C.b		; 00 7C
	sec		; 38
	inc $8784.w,X		; FE 84 87
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	and ($33.b)		; 32 33
	mvp $AC,$67		; 44 67 AC
	inc $0000.w		; EE 00 00
	mvp $7A,$44		; 44 44 7A
	cop $FC.b		; 02 FC
	brk $FC.b		; 00 FC
	brk $CC.b		; 00 CC
	brk $BA.b		; 00 BA
	jsl $7E0010.l		; 22 10 00 7E
	sta ($5D.b,X)		; 81 5D
	ldx #$E01F.w		; A2 1F E0
	and $CE.b,X		; 35 CE
	and [$C0.b]		; 27 C0
	rol $D3.b,X		; 36 D3
	rtl		; 6B

	tya		; 98
	adc $9C.b		; 65 9C
	sta ($7A.b,X)		; 81 7A
	ldx #$E054.w		; A2 54 E0
	brk $CE.b		; 00 CE
	tsb $01DC.w		; 0C DC 01
	cmp $8702.w		; CD 02 87
	brk $83.b		; 00 83
	brk $AA.b		; 00 AA
	trb $1A.b		; 14 1A
	bit $1C.b		; 24 1C
	ldy #$9068.w		; A0 68 90
	pla		; 68
	bpl -64.b		; 10 C0
	bmi -96.b		; 30 A0
	bvs -128.b		; 70 80
	beq  84.b		; F0 54
	brk $E4.b		; 00 E4
	jsr $00C0.w		; 20 C0 00
	cpy #$C080.w		; C0 80 C0
	jsr $00E0.w		; 20 E0 00
	cpy #$4040.w		; C0 40 40
	rti		; 40

	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $FE.b		; 02 FE
	sbc $0406FE.l,X		; FF FE 06 04
	sbc $05FD.w,X		; FD FD 05
	sbc $0707.w,X		; FD 07 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	sbc $020703.l,X		; FF 03 07 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	tsx		; BA
	ldy $BFFF.w,X		; BC FF BF
	sbc $7F4FBF.l,X		; FF BF 4F 7F
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	beq  15.b		; F0 0F
	cpx #$EF5F.w		; E0 5F EF
	eor $C05FFF.l,X		; 5F FF 5F C0
	lda $80BFC0.l,X		; BF C0 BF 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	sbc $01FEFE.l,X		; FF FE FE 01
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E6FFC1.l,X		; FF C1 FF E6
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	beq  28.b		; F0 1C
	clc		; 18
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	cpy #$00FC.w		; C0 FC 00
	sbc $00BFC0.l,X		; FF C0 BF 00
	cpx #$0000.w		; E0 00 00
	eor [$47.b]		; 47 47
	jmp ($1E7D.w,X)		; 7C 7D 1E
	asl $0808.w,X		; 1E 08 08
	rol $07.b,X		; 36 07
	and [$17.b]		; 27 17
	eor $4B2F.w		; 4D 2F 4B
	rol $387E.w		; 2E 7E 38
	pla		; 68
	asl $3F0C.w,X		; 1E 0C 3F
	brk $1F.b		; 00 1F
	asl $0F.b		; 06 0F
	ora ($0F.b)		; 12 0F
	bit $1F.b		; 24 1F
	plp		; 28
	ora $65CA25.l,X		; 1F 25 CA 65
	asl A		; 0A
	sbc $066900.l		; EF 00 69 06
	lda $414F80.l		; AF 80 4F 41
	and [$0F.b]		; 27 0F
	adc $47.b,S		; 63 47
	brk $1B.b		; 00 1B
	cop $19.b		; 02 19
	brk $18.b		; 00 18
	asl $91.b		; 06 91
	bra -42.b		; 80 D6
	brk $F1.b		; 00 F1
	ora ($DF.b,X)		; 01 DF
	eor ($9F.b,X)		; 41 9F
	jmp ($6A83.w,X)		; 7C 83 6A
	sta $B7.b		; 85 B7
	pha		; 48
	inc $29.b,X		; F6 29
	sbc $FF72.w		; ED 72 FF
	sed		; F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	sta ($11.b)		; 92 11
	sta $12.b,X		; 95 12
	pha		; 48
	brk $08.b		; 00 08
	lda $22.b		; A5 22
	stz $F8.b,X		; 74 F8
	sed		; F8
	sed		; F8
	inc $FCF0.w,X		; FE F0 FC
	bra  64.b		; 80 40
	cpy #$8040.w		; C0 40 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sei		; 78
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1906.w,Y		; 19 06 19
	asl $1D.b		; 06 1D
	cop $25.b		; 02 25
	inc A		; 1A
	bit $1B.b		; 24 1B
	bit $1B.b		; 24 1B
	bit $1B.b		; 24 1B
	bit $0613.w		; 2C 13 06
	ora #$0906.w		; 09 06 09
	cop $09.b		; 02 09
	inc A		; 1A
	ora ($1B.b,X)		; 01 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $EB.b		; 00 EB
	plp		; 28
	rtl		; 6B

	ldy #$804B.w		; A0 4B 80
	eor ($80.b,S),Y		; 53 80
	eor [$80.b],Y		; 57 80
	and [$C0.b],Y		; 37 C0
	and $CE31C0.l,X		; 3F C0 31 CE
	and $17B797.l,X		; 3F 97 B7 17
	lda [$37.b],Y		; B7 37
	lda $2FAF2F.l		; AF 2F AF 2F
	cmp $00C00F.l		; CF 0F C0 00
	dec $06.b		; C6 06
	cpx #$3CFF.w		; E0 FF 3C
	and $C0E0EF.l,X		; 3F EF E0 C0
	sbc $E0C180.l,X		; FF 80 C1 E0
	cpx #$10D0.w		; E0 D0 10
	beq -16.b		; F0 F0
	cpx #$E300.w		; E0 00 E3
	cmp $DF.b,S		; C3 DF
	brk $81.b		; 00 81
	ora ($00.b,X)		; 01 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpx #$00F0.w		; E0 F0 00
	brk $FF.b		; 00 FF
	.db $62, $E3, $FF		; 62 E3 FF
	brk $BF.b		; 00 BF
	bra  11.b		; 80 0B
	sed		; F8
	ora ($1F.b,X)		; 01 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $FF81.w,X		; 9D 81 FF
	brk $7F.b		; 00 7F
	brk $17.b		; 00 17
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	and ($76.b,S),Y		; 33 76
	and [$78.b],Y		; 37 78
	and $C1BFB1.l,X		; 3F B1 BF C1
	sbc $827642.l,X		; FF 42 76 82
	inc $0C00.w		; EE 00 0C
	jsr ($E8C0.w,X)		; FC C0 E8
	cpy #$C5E5.w		; C0 E5 C5
	inx		; E8
	pha		; 48
	sbc ($32.b)		; F2 32
	sbc ($A0.b,X)		; E1 A0
	sta $04.b		; 85 04
	ora [$04.b]		; 07 04
	php		; 08
	dec $8C00.w		; CE 00 8C
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	jsr $0030.w		; 20 30 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -64.b		; 80 C0
	stz $44.b,X		; 74 44
	sed		; F8
	dey		; 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $073800.l		; 0F 00 38 07
	pha		; 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and [$08.b],Y		; 37 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bit $02C0.w,X		; 3C C0 02
	jsr ($946B.w,X)		; FC 6B 94
	adc [$A8.b],Y		; 77 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FC00.w		; C0 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $9F.b		; 86 9F
	sta $1AE766.l,X		; 9F 66 E7 1A
	dec A		; 3A
	sta $85.b		; 85 85
	sta ($92.b)		; 92 92
	clv		; B8
	bcc -66.b		; 90 BE
	sta ($B6.b)		; 92 B6
	sta ($0F.b)		; 92 0F
	sbc $0AFF06.l,X		; FF 06 FF 0A
	sbc $FA7FC4.l,X		; FF C4 7F FA
	adc $FF6FFD.l		; 6F FD 6F FF
	adc $6DFF.w		; 6D FF 6D
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
	sbc ($FC.b)		; F2 FC
	asl A		; 0A
	tsb $0462.w		; 0C 62 04
	bvs   6.b		; 70 06
	bvs   6.b		; 70 06
	bit $B806.w,X		; 3C 06 B8
	.db $82, $78, $C3		; 82 78 C3
	php		; 08
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $F8.b		; 04 F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	.db $82, $5E, $C3		; 82 5E C3
	trb $BCC1.w		; 1C C1 BC
	sbc ($CC.b,X)		; E1 CC
	adc ($DC.b,X)		; 61 DC
	ora ($72.b),Y		; 11 72
	ora $28.b,S		; 03 28
	inc $3C00.w		; EE 00 3C
	bit $7E00.w,X		; 3C 00 7E
	rti		; 40

	lsr $BE40.w,X		; 5E 40 BE
	jsr $00EE.w		; 20 EE 00
	jsr ($1400.w,X)		; FC 00 14
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $20.b		; 00 20
	pla		; 68
	cpy #$B8EC.w		; C0 EC B8
	ldy $BEAC.w,X		; BC AC BE
	dec $7FDF.w,X		; DE DF 7F
	eor $674069.l		; 4F 69 40 67
	eor $10.b,S		; 43 10
	brk $F8.b		; 00 F8
	plp		; 28
	cpx #$F040.w		; E0 40 F0
	bvc  -8.b		; 50 F8
	jsr $004F.w		; 20 4F 00
	eor [$07.b]		; 47 07
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $10.b		; 00 10
	and ($14.b,S),Y		; 33 14
	rol $08.b,X		; 36 08
	jmp ($6C20.w)		; 6C 20 6C
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	brk $D0.b		; 00 D0
	rti		; 40

	bne  14.b		; D0 0E
	cop $08.b		; 02 08
	brk $30.b		; 00 30
	jsr $0818.w		; 20 18 08
	jsr $3000.w		; 20 00 30
	bpl  96.b		; 10 60
	rti		; 40

	jsr $0700.w		; 20 00 07
	ora $0902.w		; 0D 02 09
	asl $0B.b		; 06 0B
	tsb $341A.w		; 0C 1A 34
	rol $50.b,X		; 36 50
	mvn $FC,$F8		; 54 F8 FC
	cpx #$0228.w		; E0 28 02
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	jsr $00E0.w		; 20 E0 00
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
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
	asl A		; 0A
	ora $0E.b		; 05 0E
	ora ($17.b,X)		; 01 17
	php		; 08
	ora $102F00.l,X		; 1F 00 2F 10
	and $192610.l		; 2F 10 26 19
	rti		; 40

	and $010205.l,X		; 3F 05 02 01
	asl $08.b		; 06 08
	ora [$00.b]		; 07 00
	ora $100F10.l		; 0F 10 0F 10
	ora $3F0619.l		; 0F 19 06 3F
	brk $1F.b		; 00 1F
	cpx #$C03F.w		; E0 3F C0
	sbc $12ED00.l,X		; FF 00 ED 12
	wai		; CB
	bit $85.b,X		; 34 85
	ply		; 7A
	phd		; 0B
	pea $EC13.w		; F4 13 EC
	cpx #$C01F.w		; E0 1F C0
	and $12FE00.l,X		; 3F 00 FE 12
	cpx $C834.w		; EC 34 C8
	ply		; 7A
	bra -12.b		; 80 F4
	brk $EC.b		; 00 EC
	brk $EF.b		; 00 EF
	and $EF33F7.l		; 2F F7 33 EF
	and $CE1ED6.l		; 2F D6 1E CE
	asl $2FCE.w,X		; 1E CE 2F
	sbc [$0F.b]		; E7 0F
	lda [$A7.b]		; A7 A7
	rol $3E11.w,X		; 3E 11 3E
	ora $103F.w		; 0D 3F 10
	bpl  47.b		; 10 2F
	asl $3F.b		; 06 3F
	asl $3F.b		; 06 3F
	cop $1F.b		; 02 1F
	sbc ($5F.b,S),Y		; F3 5F
	stz $B0.b,X		; 74 B0
	.db $82, $CC, $96		; 82 CC 96
	dey		; 88
	trb $0080.w		; 1C 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	sed		; F8
	sty $08F0.w		; 8C F0 08
	cpy $00.b		; C4 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	ldy $FA40.w,X		; BC 40 FA
	brk $7C.b		; 00 7C
	brk $1E.b		; 00 1E
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
	brk $1C.b		; 00 1C
	cmp ($1C.b,X)		; C1 1C
	cmp ($2E.b,X)		; C1 2E
	adc ($0E.b,X)		; 61 0E
	adc ($17.b,X)		; 61 17
	and ($07.b),Y		; 31 07
	and ($0E.b),Y		; 31 0E
	clc		; 18
	ora [$18.b]		; 07 18
	ror $7E40.w,X		; 7E 40 7E
	rti		; 40

	ora $213F01.l,X		; 1F 01 3F 21
	asl $1E00.w		; 0E 00 1E
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	php		; 08
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	clc		; 18
	ora [$22.b]		; 07 22
	ora $0C33.w,X		; 1D 33 0C
	lsr $7C21.w,X		; 5E 21 7C
	ora $B1.b,S		; 03 B1
	lsr $0000.w		; 4E 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	trb $0C03.w		; 1C 03 0C
	ora ($21.b,S),Y		; 13 21
	asl $3C03.w,X		; 1E 03 3C
	lsr $F030.w		; 4E 30 F0
	brk $0F.b		; 00 0F
	beq -104.b		; F0 98
	adc [$76.b]		; 67 76
	bit #$56A9.w		; 89 A9 56
	eor $BC.b,S		; 43 BC
	sbc $A67502.l,X		; FF 02 75 A6
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	adc [$98.b]		; 67 98
	ora ($DE.b,X)		; 01 DE
	lsr $88.b,X		; 56 88
	ldy $0000.w,X		; BC 00 00
	brk $00.b		; 00 00
	plp		; 28
	ldx $59.b		; A6 59
	ldx $59.b		; A6 59
	ror $19.b		; 66 19
	lsr $09.b,X		; 56 09
	asl $09.b,X		; 16 09
	ora ($0C.b,S),Y		; 13 0C
	phd		; 0B
	tsb $09.b		; 04 09
	asl $59.b		; 06 59
	brk $59.b		; 00 59
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $7B.b		; 00 7B
	sta ($7F.b,X)		; 81 7F
	sta ($7D.b,X)		; 81 7D
	sta ($7D.b,X)		; 81 7D
	bra 124.b		; 80 7C
	bra  60.b		; 80 3C
	cpy #$C03E.w		; C0 3E C0
	stz $8760.w,X		; 9E 60 87
	asl $81.b		; 06 81
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $77.b		; 00 77
	ora ($57.b),Y		; 11 57
	ora ($57.b),Y		; 11 57
	ora ($F7.b),Y		; 11 F7
	adc ($1F.b),Y		; 71 1F
	inc $7F1F.w,X		; FE 1F 7F
	clc		; 18
	sei		; 78
	asl $70.b,X		; 16 70
	sbc $EEFFEE.l,X		; FF EE FF EE
	sbc $0E7FEE.l,X		; FF EE 7F 0E
	ror $2060.w,X		; 7E 60 20
	jsr $2027.w		; 20 27 20
	and $206820.l		; 2F 20 68 20
	sei		; 78
	bmi 112.b		; 30 70
	rti		; 40

	cpy #$00B0.w		; C0 B0 00
	beq   0.b		; F0 00
	sed		; F8
	bra  -8.b		; 80 F8
	bcc  -8.b		; 90 F8
	beq -48.b		; F0 D0
	beq -64.b		; F0 C0
	cpy #$A080.w		; C0 80 A0
	jsr $A0A0.w		; 20 A0 A0
	bcs -80.b		; B0 B0
	bmi  48.b		; 30 30
	jsr $1720.w		; 20 20 17
	php		; 08
	asl $0300.w		; 0E 00 03
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
	brk $10.b		; 00 10
	tya		; 98
	brk $98.b		; 00 98
	brk $90.b		; 00 90
	jsr $00B0.w		; 20 B0 00
	bcs   0.b		; B0 00
	ldy #$A080.w		; A0 80 A0
	bra -96.b		; 80 A0
	rts		; 60

	brk $70.b		; 00 70
	bpl  96.b		; 10 60
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	ldy #$80C0.w		; A0 C0 80
	rti		; 40

	brk $40.b		; 00 40
	brk $60.b		; 00 60
	pla		; 68
	beq  -8.b		; F0 F8
	cpx #$A0F0.w		; E0 F0 A0
	bcs -48.b		; B0 D0
	bcc -16.b		; 90 F0
	bcc  80.b		; 90 50
	bvc  32.b		; 50 20
	jsr $0070.w		; 20 70 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	rti		; 40

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	bvs  32.b		; 70 20
	jsr $0300.w		; 20 00 03
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
	brk $40.b		; 00 40
	and $803F40.l,X		; 3F 40 3F 80
	adc $817E81.l,X		; 7F 81 7E 81
	ror $7C83.w,X		; 7E 83 7C
	.db $82, $7D, $A2		; 82 7D A2
	eor $003F.w,X		; 5D 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	ror $7E00.w,X		; 7E 00 7E
	brk $7C.b		; 00 7C
	brk $7D.b		; 00 7D
	brk $5D.b		; 00 5D
	brk $27.b		; 00 27
	cmp $BA47.w,Y		; D9 47 BA
	dec $9E34.w		; CE 34 9E
	jmp ($E81D.w)		; 6C 1D E8
	and $39D8.w,X		; 3D D8 39
	cmp ($3B.b),Y		; D1 3B
	cmp ($D9.b,X)		; C1 D9
	brk $BA.b		; 00 BA
	brk $35.b		; 00 35
	ora ($6D.b,X)		; 01 6D
	ora ($EB.b,X)		; 01 EB
	ora $DB.b,S		; 03 DB
	ora $D7.b,S		; 03 D7
	asl $C7.b		; 06 C7
	asl $23.b		; 06 23
	and $59.b,S		; 23 59
	eor #$48D8.w		; 49 D8 48
	tyx		; BB
	bit #$89AF.w		; 89 AF 89
	lda $113789.l		; AF 89 37 11
	adc [$11.b],Y		; 77 11
	sbc $FDDF.w,Y		; F9 DF FD
	lda [$FE.b],Y		; B7 FE
	lda [$FF.b],Y		; B7 FF
	ror $FF.b,X		; 76 FF
	ror $FF.b,X		; 76 FF
	ror $FF.b,X		; 76 FF
	inc $EEFF.w		; EE FF EE
	cpy #$B8C0.w		; C0 C0 B8
	clv		; B8
	sed		; F8
	sed		; F8
	bmi  48.b		; 30 30
	rti		; 40

	rti		; 40

	rts		; 60

	rti		; 40

	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	bra  -8.b		; 80 F8
	bcs  -4.b		; B0 FC
	sed		; F8
	jsr ($F800.w,X)		; FC 00 F8
	cpy #$C0B0.w		; C0 B0 C0
	bra -32.b		; 80 E0
	ldy #$A0E0.w		; A0 E0 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	cop $08.b		; 02 08
	ora $1D.b		; 05 1D
	trb $71.b		; 14 71
	rol $58E3.w		; 2E E3 58
	cmp $B4.b,S		; C3 B4
	sta [$68.b]		; 87 68
	ora $0007.w		; 0D 07 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	ora $405C01.l		; 0F 01 5C 40
	ldx $7882.w,Y		; BE 82 78
	brk $F0.b		; 00 F0
	brk $87.b		; 00 87
	sei		; 78
	sta $04FB60.l,X		; 9F 60 FB 04
	and [$C8.b],Y		; 37 C8
	and [$D8.b]		; 27 D8
	lsr $48B0.w		; 4E B0 48
	bcs -109.b		; B0 93
	adc [$78.b]		; 67 78
	brk $60.b		; 00 60
	brk $04.b		; 00 04
	brk $C8.b		; 00 C8
	brk $D8.b		; 00 D8
	brk $B1.b		; 00 B1
	ora ($B0.b,X)		; 01 B0
	ora [$61.b]		; 07 61
	ora $BE223C.l		; 0F 3C 22 BE
	sta $D8.b,S		; 83 D8
	.db $42, $D8		; 42 D8
	lsr $C410.w		; 4E 10 C4
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	cpx $28.b		; E4 28
	stz $00.b,X		; 74 00
	bit $3400.w,X		; 3C 00 34
	tsb $F8.b		; 04 F8
	cpy #$E0F0.w		; C0 F0 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	sed		; F8
	bmi  -8.b		; 30 F8
	jsr $28EC.w		; 20 EC 28
	cpx $E620.w		; EC 20 E6
	bit $E6.b		; 24 E6
	ldy #$80A0.w		; A0 A0 80
	bra  16.b		; 80 10
	bpl  64.b		; 10 40
	rti		; 40

	cli		; 58
	pha		; 48
	bvc  64.b		; 50 40
	jmp $405844.l		; 5C 44 58 40
	bmi -13.b		; 30 F3
	ora ($F3.b)		; 12 F3
	ora ($F3.b)		; 12 F3
	bpl -13.b		; 10 F3
	bit $66.b		; 24 66
	brk $C6.b		; 00 C6
	pha		; 48
	cpy $8C80.w		; CC 80 8C
	stx $AC82.w		; 8E 82 AC
	ldy #$A0AC.w		; A0 AC A0
	rol $1822.w		; 2E 22 18
	brk $7C.b		; 00 7C
	mvp $80,$B0		; 44 B0 80
	sei		; 78
	php		; 08
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	asl $0418.w		; 0E 18 04
	ora ($1A.b),Y		; 11 1A
	and ($0C.b,S),Y		; 33 0C
	rol $01.b		; 26 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($0C.b,X)		; 01 0C
	brk $18.b		; 00 18
	brk $E0.b		; 00 E0
	phd		; 0B
	cmp ($13.b,X)		; C1 13
	sta ($23.b,X)		; 81 23
	bra -62.b		; 80 C2
	brk $86.b		; 00 86
	brk $86.b		; 00 86
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	sbc ($01.b),Y		; F1 01
	cpx #$C000.w		; E0 00 C0
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	clc		; 18
	brk $18.b		; 00 18
	jsr $0030.w		; 20 30 00
	bmi  64.b		; 30 40
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	ora $500F30.l		; 0F 30 0F 50
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	bpl  47.b		; 10 2F
	bpl  64.b		; 10 40
	and $007F80.l,X		; 3F 80 7F 00
	sbc $01FF00.l,X		; FF 00 FF 01
	inc $FD02.w,X		; FE 02 FD
	ora $22DEF1.l		; 0F F1 DE 22
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FC01.w,X		; FE 01 FC
	cop $F1.b		; 02 F1
	tsb $D923.w		; 0C 23 D9
	bpl -28.b		; 10 E4
	and $D3.b,S		; 23 D3
	eor $B5.b,X		; 55 B5
	clv		; B8
	.db $62, $52, $C5		; 62 52 C5
	lda $8B.b		; A5 8B
	cmp [$FF.b]		; C7 FF
	sbc $0FE037.l		; EF 37 E0 0F
	cmp ($2F.b,X)		; C1 2F
	dey		; 88
	eor $1C.b,S		; 43 1C
	sta ($38.b,X)		; 81 38
	ora $70.b,S		; 03 70
	ora [$C3.b]		; 07 C3
	ora $C0DFE3.l		; 0F E3 DF C0
	cpy #$4040.w		; C0 40 40
	brk $80.b		; 00 80
	bmi   0.b		; 30 00
	sec		; 38
	bra -104.b		; 80 98
	ldy #$A090.w		; A0 90 A0
	ldy #$4080.w		; A0 80 40
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	jsr $A0D0.w		; 20 D0 A0
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$A000.w		; C0 00 A0
	rti		; 40

	rts		; 60

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	ora $001F60.l		; 0F 60 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $C300.w,X		; 3C 00 C3
	bit $FB04.w,X		; 3C 04 FB
	txy		; 9B
	stz $92.b		; 64 92
	adc $0000.w		; 6D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $FB00.w,X		; 3C 00 FB
	tsb $60.b		; 04 60
	sta $03F20D.l,X		; 9F 0D F2 03
	ora $06.b		; 05 06
	ora $0D04.w		; 0D 04 0D
	cop $0B.b		; 02 0B
	bmi  58.b		; 30 3A
	pha		; 48
	lsr A		; 4A
	stz $76.b,X		; 74 76
	sei		; 78
	asl $02.b,X		; 16 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $34.b		; 00 34
	brk $74.b		; 00 74
	bmi 120.b		; 30 78
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $C8.b		; 00 C8
	tsb $0CE0.w		; 0C E0 0C
	cpx #$E00C.w		; E0 0C E0
	tsb $1CF0.w		; 0C F0 1C
	beq  28.b		; F0 1C
	beq  28.b		; F0 1C
	cpy #$F01C.w		; C0 1C F0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	ora $411FE0.l		; 0F E0 1F 41
	ldx $FE01.w,Y		; BE 01 FE
	cop $FD.b		; 02 FD
	cop $FD.b		; 02 FD
	ora $FA.b		; 05 FA
	ora $0FF2.w		; 0D F2 0F
	beq  31.b		; F0 1F
	cpx #$40BE.w		; E0 BE 40
	inc $FD00.w,X		; FE 00 FD
	brk $FD.b		; 00 FD
	brk $FA.b		; 00 FA
	brk $F2.b		; 00 F2
	brk $28.b		; 00 28
	iny		; C8
	bit $D0.b,X		; 34 D0
	jmp ($4CA8.w)		; 6C A8 4C
	sty $48EA.w		; 8C EA 48
	inc $B748.w		; EE 48 B7
	sta ($FF.b)		; 92 FF
	sta ($C0.b)		; 92 C0
	trb $08D0.w		; 1C D0 08
	clv		; B8
	bpl -68.b		; 10 BC
	bmi 124.b		; 30 7C
	bit $7C.b,X		; 34 7C
	bit $FE.b,X		; 34 FE
	jmp ($6CFE.w)		; 6C FE 6C
	tsb $03.b		; 04 03
	php		; 08
	ora [$10.b]		; 07 10
	ora $200F10.l		; 0F 10 0F 20
	ora $441F20.l,X		; 1F 20 1F 44
	tsa		; 3B
	pha		; 48
	and [$03.b],Y		; 37 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $71.b		; 00 71
	stx $00FF.w		; 8E FF 00
	inc $FC01.w,X		; FE 01 FC
	ora $F0.b,S		; 03 F0
	ora $00FF00.l		; 0F 00 FF 00
	sbc $8EFF00.l,X		; FF 00 FF 8E
	adc ($00.b),Y		; 71 00
	sbc $03FE01.l,X		; FF 01 FE 03
	jsr ($F00F.w,X)		; FC 0F F0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	tsb $181B.w		; 0C 1B 18
	and [$28.b],Y		; 37 28
	adc [$50.b]		; 67 50
	cmp $E0CFF0.l		; CF F0 CF E0
	eor $C01F20.l,X		; 5F 20 1F C0
	lda $070003.l,X		; BF 03 00 07
	brk $17.b		; 00 17
	brk $2F.b		; 00 2F
	brk $CF.b		; 00 CF
	brk $DF.b		; 00 DF
	bra -33.b		; 80 DF
	cpy #$00BF.w		; C0 BF 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	.db $82, $40, $E2		; 82 40 E2
	stz $F6.b,X		; 74 F6
	bvs -14.b		; 70 F2
	stz $F2.b,X		; 74 F2
	stz $A2.b,X		; 74 A2
	jmp ($0894.w)		; 6C 94 08
	tya		; 98
	jsr $7C00.w		; 20 00 7C
	tsb $78.b		; 04 78
	jsr $347C.w		; 20 7C 34
	sei		; 78
	bit $78.b		; 24 78
	tsb $0870.w		; 0C 70 08
	rts		; 60

	jsr $8040.w		; 20 40 80
	ldy #$A080.w		; A0 80 A0
	bra -96.b		; 80 A0
	bra -96.b		; 80 A0
	bra -96.b		; 80 A0
	cpy #$40E0.w		; C0 E0 40
	cpx #$E040.w		; E0 40 E0
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bcs -32.b		; B0 E0
	beq 112.b		; F0 70
	sei		; 78
	sed		; F8
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	ora $00000F.l,X		; 1F 0F 00 00
	cpx #$8020.w		; E0 20 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $19.b		; 04 19
	asl $08.b,X		; 16 08
	ora [$10.b],Y		; 17 10
	eor $020001.l		; 4F 01 00 02
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	bpl   6.b		; 10 06
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	jsr $33CC.w		; 20 CC 33
	txs		; 9A
	adc $3F.b		; 65 3F
.ACCU 16
.INDEX 16
	rep #$B5		; C2 B5
	eor #$D925.w		; 49 25 D9
	and $D9.b		; 25 D9
	tsb $F9.b		; 04 F9
	tsb $F8.b		; 04 F8
	and ($C0.b,S),Y		; 33 C0
	adc $80.b		; 65 80
	cpy #$4900.w		; C0 00 49
	ora $D9.b,S		; 03 D9
	ora $D8.b,S		; 03 D8
	ora $F8.b,S		; 03 F8
	ora $F8.b,S		; 03 F8
	ora $38.b,S		; 03 38
	bit $70.b,X		; 34 70
	stz $70.b,X		; 74 70
	stz $58.b,X		; 74 58
	jmp $784868.l		; 5C 68 48 78
	pha		; 48
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	sec		; 38
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	jsr $3078.w		; 20 78 30
	sei		; 78
	bmi  56.b		; 30 38
	bpl  16.b		; 10 10
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $05.b		; 06 05
	tsb $0001.w		; 0C 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cpy #$E01C.w		; C0 1C E0
	bit $3CE0.w,X		; 3C E0 3C
	ldy #$C03C.w		; A0 3C C0
	jmp ($7C40.w,X)		; 7C 40 7C
	brk $7C.b		; 00 7C
	bra  -4.b		; 80 FC
	inx		; E8
	php		; 08
	iny		; C8
	php		; 08
	iny		; C8
	php		; 08
	iny		; C8
	php		; 08
	tay		; A8
	plp		; 28
	tya		; 98
	clc		; 18
	cld		; D8
	cli		; 58
	cli		; 58
	cli		; 58
	ora $33E6.w,Y		; 19 E6 33
	cpy $39C7.w		; CC C7 39
	asl A		; 0A
	sbc ($33.b)		; F2 33
.ACCU 16
.INDEX 16
	rep #$7B		; C2 7B
	bra -98.b		; 80 9E
	ora ($01.b,X)		; 01 01
	ora [$E6.b]		; 07 E6
	brk $CC.b		; 00 CC
	brk $39.b		; 00 39
	brk $F7.b		; 00 F7
	ora $CE.b		; 05 CE
	tsb $0484.w		; 0C 84 04
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	lsr $EA12.w,X		; 5E 12 EA
	jsl $7B22BA.l		; 22 BA 22 7B
	lsr A		; 4A
	inc $DE.b		; E6 DE
	bpl  -4.b		; 10 FC
	cld		; D8
	jmp.w [$0C08]		; DC 08 0C
	sbc $DDFFED.l,X		; FF ED FF DD
	sbc $84CEDD.l,X		; FF DD CE 84
	dec $8818.w,X		; DE 18 88
	dey		; 88
	jsr $F000.w		; 20 00 F0
	brk $50.b		; 00 50
	and $906F90.l		; 2F 90 6F 90
	adc $A05FA0.l		; 6F A0 5F A0
	eor $605FA0.l,X		; 5F A0 5F 60
	ora $2F1D62.l,X		; 1F 62 1D 2F
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08FB04.l,X		; FF 04 FB 08
	sbc [$10.b],Y		; F7 10
	sbc $26DE21.l		; EF 21 DE 26
	cld		; D8
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FB00.l,X		; FF 00 FB 00
	sbc [$00.b],Y		; F7 00
	sbc $00DE00.l		; EF 00 DE 00
	cld		; D8
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	tsb $12.b		; 04 12
	ora $1926.w		; 0D 26 19
	mvp $8C,$3B		; 44 3B 8C
	adc ($03.b,S),Y		; 73 03
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora ($04.b,X)		; 01 04
	ora $0D.b,S		; 03 0D
	cop $19.b		; 02 19
	asl $3B.b		; 06 3B
	tsb $73.b		; 04 73
	tsb $7F80.w		; 0C 80 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	ora $007FF0.l		; 0F F0 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	jsr ($F803.w,X)		; FC 03 F8
	ora [$F0.b]		; 07 F0
	ora $09FF00.l		; 0F 00 FF 09
	inc $49.b,X		; F6 49
	ldx $D9.b,Y		; B6 D9
	rol $D1.b		; 26 D1
	rol $0CF2.w		; 2E F2 0C
	.db $62, $9C, $23		; 62 9C 23
	cmp $00FF.w,X		; DD FF 00
	inc $08.b,X		; F6 08
	ldx $48.b,Y		; B6 48
	rol $D8.b		; 26 D8
	rol $0CD0.w		; 2E D0 0C
	sbc ($9C.b),Y		; F1 9C
	adc ($DC.b,X)		; 61 DC
	and ($88.b,X)		; 21 88
	bmi -104.b		; 30 98
	ldy #$0030.w		; A0 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  64.b		; 30 40
	jsr $00D0.w		; 20 D0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   5.b		; 80 05
	tsb $07.b		; 04 07
	ora [$05.b]		; 07 05
	tsb $87.b		; 04 87
	ora [$41.b]		; 07 41
	sta $22.b		; 85 22
	iny		; C8
	ldx $50.b		; A6 50
	sta $0761.w		; 8D 61 07
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	brk $82.b		; 00 82
	brk $C7.b		; 00 C7
	brk $4F.b		; 00 4F
	brk $5E.b		; 00 5E
	brk $A0.b		; 00 A0
	jsr $A0A0.w		; 20 A0 A0
	cpx #$6060.w		; E0 60 60
	jsr $E0C0.w		; 20 C0 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	cpx #$E0C0.w		; E0 C0 E0
	rti		; 40

	cpx #$E080.w		; E0 80 E0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec A		; 3A
	and $58.b,S		; 23 58
	lsr $5C50.w		; 4E 50 5C
	brk $58.b		; 00 58
	bra -112.b		; 80 90
	brk $C0.b		; 00 C0
	bpl   0.b		; 10 00
	bpl -96.b		; 10 A0
	trb $54C0.w		; 1C C0 54
	cpx $08.b		; E4 08
	inx		; E8
	bpl -16.b		; 10 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
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
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs 120.b		; 70 78
	sei		; 78
	sec		; 38
	sei		; 78
	sei		; 78
	jmp ($1C0C.w,X)		; 7C 0C 1C
	tsb $000E.w		; 0C 0E 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	sed		; F8
	sec		; 38
	jsr ($FC38.w,X)		; FC 38 FC
	rts		; 60

	inc $7E00.w,X		; FE 00 7E
	tsb $1F.b		; 04 1F
	bmi 112.b		; 30 70
	bmi  56.b		; 30 38
	sec		; 38
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	php		; 08
	trb $3C3C.w		; 1C 3C 3C
	jsr $30F8.w		; 20 F8 30
	jmp ($7C10.w,X)		; 7C 10 7C
	clc		; 18
	jmp ($3E18.w,X)		; 7C 18 3E
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	bit $1E02.w,X		; 3C 02 1E
	and ($08.b,S),Y		; 33 08
	and $0C.b,S		; 23 0C
	ror $30.b		; 66 30
	stz $18.b		; 64 18
	jmp $C820.w		; 4C 20 C8
	bvs -40.b		; 70 D8
	jsr $0C90.w		; 20 90 0C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	jsr $0018.w		; 20 18 00
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	jsr $6000.w		; 20 00 60
	brk $10.b		; 00 10
	and ($00.b)		; 32 00
	jsl $042604.l		; 22 04 26 04
	rol $04.b		; 26 04
	rol $00.b		; 26 00
	rol $10.b		; 26 10
	rol $10.b,X		; 36 10
	bit $0C.b,X		; 34 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $0C.b		; 04 0C
	tsb $08.b		; 04 08
	brk $22.b		; 00 22
	ora $1D22.w,X		; 1D 22 1D
	ora ($0D.b)		; 12 0D
	ora $08.b,X		; 15 08
	ora $0400.w		; 0D 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $0D.b		; 00 0D
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	bcs  80.b		; B0 50
	ldy #$8060.w		; A0 60 80
	rts		; 60

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $1C07.w		; 0C 07 1C
	asl A		; 0A
	clc		; 18
	ora [$31.b]		; 07 31
	trb $0A31.w		; 1C 31 0A
	adc $38.b,S		; 63 38
	adc $14.b,S		; 63 14
	dec $07.b		; C6 07
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$00.b]		; 07 00
	asl $0F10.w,X		; 1E 10 0F
	ora ($3C.b,X)		; 01 3C
	jsr $021E.w		; 20 1E 02
	sei		; 78
	rti		; 40

	iny		; C8
	ror $7E08.w,X		; 7E 08 7E
	tya		; 98
	jsr ($FC18.w,X)		; FC 18 FC
	php		; 08
	cpx $EC20.w		; EC 20 EC
	rti		; 40

	cpy $C840.w		; CC 40 C8
	sty $14.b,X		; 94 14
	pei ($54.b)		; D4 54
	jsr $2020.w		; 20 20 20
	jsr $2030.w		; 20 30 20
	cli		; 58
	pha		; 48
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	stx $02.b		; 86 02
	sta $03.b,S		; 83 03
	sta ($03.b,X)		; 81 03
	sta ($81.b,X)		; 81 81
	cpy #$D0D1.w		; C0 D1 D0
	jmp $DB4785.l		; 5C 85 47 DB
	tas		; 1B
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	sta ($43.b,X)		; 81 43
	cpy #$0063.w		; C0 63 00
	adc ($19.b,X)		; 61 19
	rts		; 60

	ora $60.b		; 05 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$E0E0.w		; E0 E0 E0
	rts		; 60

	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra -32.b		; 80 E0
	cpy #$C0F0.w		; C0 F0 C0
	bvs -64.b		; 70 C0
	clv		; B8
	phd		; 0B
	tsb $0A.b		; 04 0A
	ora $18.b		; 05 18
	ora [$11.b]		; 07 11
	asl $0E11.w		; 0E 11 0E
	and ($0E.b),Y		; 31 0E
	and ($0C.b,S),Y		; 33 0C
	adc $1C.b,S		; 63 1C
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $F5.b		; 00 F5
	php		; 08
	inx		; E8
	ora ($F8.b),Y		; 11 F8
	ora $AB.b		; 05 AB
	stz $3B.b,X		; 74 3B
	brk $B6.b		; 00 B6
	sta $C15F.w,Y		; 99 5F C1
	tay		; A8
	adc [$0A.b]		; 67 0A
	bne  23.b		; D0 17
	lda ($06.b,X)		; A1 06
	brk $76.b		; 00 76
	stz $E6.b		; 64 E6
	ora #$106F.w		; 09 6F 10
	rol $1E00.w,X		; 3E 00 1E
	asl $4E.b		; 06 4E
	and ($4E.b),Y		; 31 4E
	and ($2E.b),Y		; 31 2E
	ora ($2E.b),Y		; 11 2E
	ora ($1C.b),Y		; 11 1C
	ora $1D.b,S		; 03 1D
	ora $0D.b,S		; 03 0D
	ora $0C.b,S		; 03 0C
	cop $30.b		; 02 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	sta $BA83B2.l		; 8F B2 83 BA
	sta $78.b,S		; 83 78
	ora $75.b,S		; 03 75
	asl $F1.b		; 06 F1
	asl $EB.b		; 06 EB
	tsb $0CE3.w		; 0C E3 0C
	sbc ($81.b),Y		; F1 81
	adc $7C01.w,X		; 7D 01 7C
	brk $FE.b		; 00 FE
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	php		; 08
	sed		; F8
	bpl -16.b		; 10 F0
	bcc 112.b		; 90 70
	cpy #$C830.w		; C0 30 C8
	sec		; 38
	iny		; C8
	clc		; 18
	cpy #$9418.w		; C0 18 94
	tsb $3037.w		; 0C 37 30
	and $202F20.l		; 2F 20 2F 20
	ora $101710.l,X		; 1F 10 17 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $2030.w		; 20 30 20
	bmi  64.b		; 30 40
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$C000.w		; C0 00 C0
	brk $DB.b		; 00 DB
	cld		; D8
	stp		; DB
	cld		; D8
	lda ($B0.b,S),Y		; B3 B0
	ora #$9708.w		; 09 08 97
	sty $85.b,X		; 94 85
	sty $B5.b		; 84 B5
	sta $B2.b,X		; 95 B2
	sta ($98.b)		; 92 98
	jsr ($FC98.w,X)		; FC 98 FC
	bpl  -4.b		; 10 FC
	brk $FE.b		; 00 FE
	pei ($78.b)		; D4 78
	inc $FF7A.w		; EE 7A FF
	ror A		; 6A
	sbc $00E06D.l,X		; FF 6D E0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
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
	brk $AB.b		; 00 AB
	adc $B7.b,S		; 63 B7
	adc [$AB.b]		; 67 AB
	adc $B250B0.l		; 6F B0 50 B2
	jmp $4CB3.w		; 4C B3 4C
	lda ($4C.b,S),Y		; B3 4C
	lda [$58.b]		; A7 58
	ror $7F1D.w,X		; 7E 1D 7F
	tas		; 1B
	sei		; 78
	ora [$50.b],Y		; 17 50
	and $4C314D.l		; 2F 4D 31 4C
	bmi  76.b		; 30 4C
	bmi  88.b		; 30 58
	jsr $E1D1.w		; 20 D1 E1
	sbc $FFFBFF.l,X		; FF FF FB FF
	brk $00.b		; 00 00
	adc ($32.b)		; 72 32
	sbc $64.b		; E5 64
	lda $84.b		; A5 84
	lda $84.b,X		; B5 84
	ora ($FF.b,X)		; 01 FF
	sbc ($FF.b),Y		; F1 FF
	ora ($FF.b,S),Y		; 13 FF
	brk $FF.b		; 00 FF
	lda $1B7F8D.l,X		; BF 8D 7F 1B
	cmp $5BDF5B.l,X		; DF 5B DF 5B
	rti		; 40

	cld		; D8
	brk $D8.b		; 00 D8
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	cpy #$B8EC.w		; C0 EC B8
	ldy $BEAC.w,X		; BC AC BE
	dec $30DF.w,X		; DE DF 30
	bpl 112.b		; 10 70
	bvc  32.b		; 50 20
	brk $20.b		; 00 20
	brk $F8.b		; 00 F8
	plp		; 28
	cpx #$F040.w		; E0 40 F0
	bvc  -8.b		; 50 F8
	jsr $A050.w		; 20 50 A0
	bne  32.b		; D0 20
	cpx #$5400.w		; E0 00 54
	sty $16.b,X		; 94 16
	stx $0A.b,Y		; 96 0A
	txa		; 8A
	tsb $8E8A.w		; 0C 8A 8E
	asl $00A0.w		; 0E A0 00
	jsr $0000.w		; 20 00 00
	trb $3E14.w		; 1C 14 3E
	cop $3F.b		; 02 3F
	php		; 08
	and $041F08.l,X		; 3F 08 1F 04
	ora $000000.l,X		; 1F 00 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $08.b,S		; 03 08
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($10.b,X)		; 01 10
	asl $0F11.w		; 0E 11 0F
	jsr $311E.w		; 20 1E 31
	tsb $0C37.w		; 0C 37 0C
	eor ($28.b)		; 52 28
	pla		; 68
	ora $1F7F.w,Y		; 19 7F 1F
	asl $0C01.w		; 0E 01 0C
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	bpl   3.b		; 10 03
	bpl  39.b		; 10 27
	bpl   6.b		; 10 06
	jsr $201F.w		; 20 1F 20
	sta $3D.b		; 85 3D
	sta $0F.b,S		; 83 0F
	sta ($03.b,X)		; 81 03
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $0B.b		; 00 0B
	pha		; 48
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0B0.w		; E0 B0 F0
	bvc -88.b		; 50 A8
	tay		; A8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F058.w		; E0 58 F0
	tay		; A8
	sed		; F8
	bvc -16.b		; 50 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	sei		; 78
	sta [$79.b]		; 87 79
	asl $1AF6.w		; 0E F6 1A
	sed		; F8
	and $7C3DA0.l		; 2F A0 3D 7C
	ora ($17.b,S),Y		; 13 17
	adc [$E0.b]		; 67 E0
	sei		; 78
	brk $79.b		; 00 79
	brk $F7.b		; 00 F7
	ora ($FF.b,X)		; 01 FF
	ora [$BF.b]		; 07 BF
	eor $03E33F.l,X		; 5F 3F E3 03
	jsr ($FB20.w,X)		; FC 20 FB
	ldy $73.b		; A4 73
	cmp ($DE.b),Y		; D1 DE
	sta [$86.b],Y		; 97 86
	adc #$6A69.w		; 69 69 6A
	pla		; 68
	lda $DB39.w,X		; BD 39 DB
	txs		; 9A
	sbc $505C6C.l,X		; FF 6C 5C 50
	ldy #$FE00.w		; A0 00 FE
	sei		; 78
	cmp $87DF86.l,X		; DF 86 DF 87
	sbc $65FEC6.l		; EF C6 FE 65
	jmp ($0483.w)		; 6C 83 04
	cop $01.b		; 02 01
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $0C07.w		; 0C 07 0C
	ora $08.b,S		; 03 08
	brk $18.b		; 00 18
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $18D308.l		; 0F 08 D3 18
	cmp $18.b,S		; C3 18
	ldx $30.b		; A6 30
	bra  48.b		; 80 30
	cpy #$0060.w		; C0 60 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra  50.b		; 80 32
	asl $0660.w		; 0E 60 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	bcc -104.b		; 90 98
	brk $8C.b		; 00 8C
	php		; 08
	sty $CC48.w		; 8C 48 CC
	pha		; 48
	cpy $10F0.w		; CC F0 10
	beq  16.b		; F0 10
	cpx #$6000.w		; E0 00 60
	brk $F8.b		; 00 F8
	dey		; 88
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	ldx $92.b,Y		; B6 92
	ldx $92.b,Y		; B6 92
	lda [$93.b],Y		; B7 93
	lda $BF88.w		; AD 88 BF
	dey		; 88
	tyx		; BB
	dey		; 88
	lda $FFFB8C.l,X		; BF 8C FB FF
	sbc $6DFF6D.l,X		; FF 6D FF 6D
	sbc $76FE6C.l,X		; FF 6C FE 76
	inc $FE76.w,X		; FE 76 FE
	ror $FC.b,X		; 76 FC
	bvs  -4.b		; 70 FC
	tsb $C0.b		; 04 C0
	bra  64.b		; 80 40
	brk $60.b		; 00 60
	rti		; 40

	ldy #$C080.w		; A0 80 C0
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	lda [$59.b]		; A7 59
	lda [$59.b]		; A7 59
	lda [$59.b]		; A7 59
	lda $708F50.l		; AF 50 8F 70
	sta $304F70.l		; 8F 70 4F 30
	eor $205930.l		; 4F 30 59 20
	eor $5920.w,Y		; 59 20 59
	jsr $2050.w		; 20 50 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sbc [$A4.b],Y		; F7 A4
	eor [$04.b],Y		; 57 04
	xce		; FB
	pha		; 48
	tyx		; BB
	php		; 08
	xce		; FB
	pha		; 48
	tsa		; 3B
	sed		; F8
	and $FF7CFF.l,X		; 3F FF 7C FF
	lda $BBBF1B.l,X		; BF 1B BF BB
	adc $777F37.l,X		; 7F 37 7F 77
	adc $477F37.l,X		; 7F 37 7F 47
	eor $020240.l		; 4F 40 02 02
	bit $33.b		; 24 33
	ora $0A.b		; 05 0A
	dec $0D69.w,X		; DE 69 0D
	phy		; 5A
	stx $47D9.w		; 8E D9 47
	bra -25.b		; 80 E7
	php		; 08
	brk $08.b		; 00 08
	brk $FB.b		; 00 FB
	cpy #$813B.w		; C0 3B 81
	inc A		; 1A
	.db $82, $38, $01		; 82 38 01
	sec		; 38
	brk $3B.b		; 00 3B
	brk $1B.b		; 00 1B
	brk $FF.b		; 00 FF
	jsr ($7C03.w,X)		; FC 03 7C
	sta $29.b,S		; 83 29
	dec $FF.b		; C6 FF
	brk $38.b		; 00 38
	cmp [$FF.b],Y		; D7 FF
	sec		; 38
	xce		; FB
	jmp ($383F.w,X)		; 7C 3F 38
	bpl -41.b		; 10 D7
	sta ($11.b)		; 92 11
	dec $11.b,X		; D6 11
	brk $00.b		; 00 00
	cmp [$10.b]		; C7 10
	bpl -69.b		; 10 BB
	sec		; 38
	adc $FC38.w,X		; 7D 38 FC
	brk $31.b		; 00 31
	ora ($33.b)		; 12 33
	php		; 08
	.db $62, $3C, $E6		; 62 3C E6
	bvc -58.b		; 50 C6
	sec		; 38
	sty $8CE0.w		; 8C E0 8C
	bvs  24.b		; 70 18
	ora $000C11.l,X		; 1F 11 0C 00
	bit $5820.w,X		; 3C 20 58
	rti		; 40

	bit $F004.w,X		; 3C 04 F0
	bra 120.b		; 80 78
	php		; 08
	cpx #$0000.w		; E0 00 00
	bit $6C48.w		; 2C 48 6C
	pla		; 68
	jmp ($3474.w)		; 6C 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $700818.l,X		; 1F 18 08 70
	jsr $0070.w		; 20 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	inc $A53E.w,X		; FE 3E A5
	ora ($9F.b,X)		; 01 9F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	and ($0C.b)		; 32 0C
	rol $10.b		; 26 10
	bit $38.b		; 24 38
	jmp ($4800.w)		; 6C 00 48
	bmi  88.b		; 30 58
	rts		; 60

	bne  32.b		; D0 20
	bcs  12.b		; B0 0C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and [$08.b],Y		; 37 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $77.b,X		; 94 77
	tay		; A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FC00.w		; C0 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $07.b		; 86 07
	and ($1C.b),Y		; 31 1C
	and ($0E.b),Y		; 31 0E
	and $18.b,S		; 23 18
	adc $3C.b,S		; 63 3C
	ror $18.b		; 66 18
	lsr $30.b		; 46 30
	mvp $CC,$38		; 44 38 CC
	asl $0F10.w,X		; 1E 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	jsl $3C0018.l		; 22 18 00 3C
	tsb $38.b		; 04 38
	brk $70.b		; 00 70
	rti		; 40

	asl $77.b,X		; 16 77
	asl $67.b		; 06 67
	jsl $632263.l		; 22 63 22 63
	brk $43.b		; 00 43
	brk $43.b		; 00 43
	brk $42.b		; 00 42
	brk $42.b		; 00 42
	plp		; 28
	jsr $2038.w		; 20 38 20
	trb $1C00.w		; 1C 00 1C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $20.b		; 00 20
	.db $62, $20, $62		; 62 20 62
	bit $66.b		; 24 66
	tsb $66.b		; 04 66
	tsb $66.b		; 04 66
	tsb $26.b		; 04 26
	tsb $26.b		; 04 26
	bpl  54.b		; 10 36
	trb $1C00.w		; 1C 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	clc		; 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	tsb $05.b		; 04 05
	cop $07.b		; 02 07
	brk $0B.b		; 00 0B
	tsb $0F.b		; 04 0F
	brk $17.b		; 00 17
	php		; 08
	asl $2E01.w,X		; 1E 01 2E
	ora ($2E.b),Y		; 11 2E
	ora ($02.b),Y		; 11 02
	ora ($00.b,X)		; 01 00
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora [$08.b]		; 07 08
	ora [$01.b]		; 07 01
	asl $0E11.w		; 0E 11 0E
	ora ($0E.b),Y		; 11 0E
	sta $57BF7F.l		; 8F 7F BF 57
	sbc $8F6A0F.l,X		; FF 0F 6A 8F
	jmp $B87A80.l		; 5C 80 7A B8
	sei		; 78
	sta $F8.b,S		; 83 F8
	bvs 109.b		; 70 6D
	sta $5F.b,S		; 83 5F
	phb		; 8B
	inc A		; 1A
	sta [$98.b],Y		; 97 98
	ora [$A0.b],Y		; 17 A0
	and $B8.b,S		; 23 B8
	ora [$80.b]		; 07 80
	ora [$74.b]		; 07 74
	ora [$DE.b]		; 07 DE
	cmp ($90.b,X)		; C1 90
	cmp $7FAC33.l		; CF 33 AC 7F
	adc $FF.b,S		; 63 FF
	sbc $BE7F7F.l,X		; FF 7F 7F BE
	ldx $DDDC.w,Y		; BE DC DD
	sta ($E0.b,X)		; 81 E0
	ora $E02CE0.l		; 0F E0 2C E0
	and $E3.b,S		; 23 E3
	and $FF3EFF.l,X		; 3F FF 3E FF
	trb $18FF.w		; 1C FF 18
	sbc $E4A058.l,X		; FF 58 A0 E4
	cli		; 58
	ldy $88.b,X		; B4 88
	ldy $7080.w,X		; BC 80 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $A0.b		; 00 A0
	brk $18.b		; 00 18
	rti		; 40

	dey		; 88
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$08.b]		; 07 08
	ora [$1F.b]		; 07 1F
	ora $4D082B.l		; 0F 2B 08 4D
	trb $0001.w		; 1C 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $170F00.l		; 0F 00 0F 17
	ora [$3B.b]		; 07 3B
	sta [$68.b],Y		; 97 68
	rol $63C3.w,X		; 3E C3 63
	bcc -17.b		; 90 EF
	ora $18E3.w,Y		; 19 E3 18
	sbc ($EC.b,X)		; E1 EC
	bcs  62.b		; B0 3E
	dec $13.b,X		; D6 13
	pla		; 68
	bra -61.b		; 80 C3
	cop $8E.b		; 02 8E
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	php		; 08
	sbc ($00.b,S),Y		; F3 00
	sbc $FEC8.w,Y		; F9 C8 FE
	cpx $0202.w		; EC 02 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	asl A		; 0A
	adc $3C.b,S		; 63 3C
	adc [$10.b]		; 67 10
	dec $68.b		; C6 68
	cpy $9870.w		; CC 70 98
	cpy #$A098.w		; C0 98 A0
	bmi -64.b		; 30 C0
	rts		; 60

	bit $1A20.w,X		; 3C 20 1A
	cop $7C.b		; 02 7C
	mvp $00,$30		; 44 30 00
	cpx #$7080.w		; E0 80 70
	bpl -64.b		; 10 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($02.b),Y		; 11 02
	and ($00.b,S),Y		; 33 00
	and ($14.b,S),Y		; 33 14
	rol $00.b,X		; 36 00
	rol $08.b		; 26 08
	bit $6C00.w		; 2C 00 6C
	jsr $0F68.w		; 20 68 0F
	ora ($1C.b,X)		; 01 1C
	bpl  30.b		; 10 1E
	ora ($08.b)		; 12 08
	brk $1C.b		; 00 1C
	tsb $10.b		; 04 10
	brk $38.b		; 00 38
	plp		; 28
	bpl   0.b		; 10 00
	lda ($5E.b,X)		; A1 5E
	lda $5C.b,S		; A3 5C
	lda $5C.b,S		; A3 5C
	sbc ($0C.b,S),Y		; F3 0C
	adc ($0C.b,S),Y		; 73 0C
	eor ($0C.b,S),Y		; 53 0C
	eor ($0C.b,S),Y		; 53 0C
	asl A		; 0A
	ora $5E.b		; 05 5E
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $D5.b		; 00 D5
	bit $CD.b,X		; 34 CD
	bit $3ECF.w,X		; 3C CF 3E
	sta $A77F.w,X		; 9D 7F A7
	adc [$1D.b]		; 67 1D
	cmp ($5D.b,X)		; C1 5D
	cmp ($3C.b,X)		; C1 3C
	sta ($1F.b,X)		; 81 1F
	phd		; 0B
	ora $111713.l,X		; 1F 13 17 11
	and $22.b,S		; 23 22
	clc		; 18
	brk $7E.b		; 00 7E
	rti		; 40

	rol $FF00.w,X		; 3E 00 FF
	sta ($DF.b,X)		; 81 DF
	mvp $44,$DD		; 44 DD 44
	phx		; DA
	.db $42, $DF		; 42 DF
	cmp $7F.b,S		; C3 7F
	sbc $72CF33.l,X		; FF 33 CF 72
	stx $8771.w		; 8E 71 87
	sbc $BBFFBB.l,X		; FF BB FF BB
	sbc $3CFFBD.l,X		; FF BD FF 3C
	inc $8480.w,X		; FE 80 84
	sty $05.b		; 84 05
	tsb $02.b		; 04 02
	cop $B0.b		; 02 B0
	jsr $00B0.w		; 20 B0 00
	cpx #$E030.w		; E0 30 E0
	sed		; F8
	bcc -104.b		; 90 98
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0600.w		; 0C 00 06
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$8080.w		; C0 80 80
	bcc  16.b		; 90 10
	rts		; 60

	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($0204.w,X)		; FC 04 02
	asl $1C04.w		; 0E 04 1C
	php		; 08
	sec		; 38
	ora ($31.b),Y		; 11 31
	cop $63.b		; 02 63
	jsr $2463.w		; 20 63 24
	ror $00.b		; 66 00
	lsr $05.b		; 46 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	asl $3D00.w		; 0E 00 3D
	and ($1E.b,X)		; 21 1E
	cop $18.b		; 02 18
	brk $3C.b		; 00 3C
	tsb $5D.b		; 04 5D
	jsl $54225D.l		; 22 5D 22 54
	pld		; 2B
	ldy $5B.b		; A4 5B
	ldy $5B.b		; A4 5B
	sta $7A.b		; 85 7A
	sta ($7E.b,X)		; 81 7E
	sta ($7E.b,X)		; 81 7E
	jsl $1C221C.l		; 22 1C 22 1C
	pld		; 2B
	trb $5B.b		; 14 5B
	bit $5B.b		; 24 5B
	bit $7A.b		; 24 7A
	tsb $7E.b		; 04 7E
	brk $7E.b		; 00 7E
	brk $95.b		; 00 95
	sta $B5.b		; 85 B5
	ora $E9.b,X		; 15 E9
	ora #$29E9.w		; 09 E9 29
	dex		; CA
	asl A		; 0A
	cmp ($52.b)		; D2 52
	cmp ($52.b)		; D2 52
	sbc ($12.b)		; F2 12
	sbc $4A5F6A.l		; EF 6A 5F 4A
	ora $163F16.l,X		; 1F 16 3F 16
	and $2D7F35.l,X		; 3F 35 7F 2D
	adc $0D1F2D.l,X		; 7F 2D 1F 0D
	rol A		; 2A
	rol A		; 2A
	eor $55.b,X		; 55 55
	eor #$D149.w		; 49 49 D1
	eor ($DD.b,X)		; 41 DD
	eor #$48DE.w		; 49 DE 48
	phx		; DA
	pha		; 48
	cmp [$44.b],Y		; D7 44
	jsr $D5FF.w		; 20 FF D5
	ldx $BEEB.w,Y		; BE EB BE
	sbc [$BE.b],Y		; F7 BE
	sbc $B7FFB6.l,X		; FF B6 FF B7
	sbc $BBFFB7.l,X		; FF B7 FF BB
	rts		; 60

	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	brk $70.b		; 00 70
	rti		; 40

	bmi  32.b		; 30 20
	bcc -128.b		; 90 80
	tya		; 98
	bcc  88.b		; 90 58
	bvc   0.b		; 50 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$60E0.w		; C0 E0 60
	beq  96.b		; F0 60
	beq -96.b		; F0 A0
	sta [$27.b]		; 87 27
	clv		; B8
	and $CD09.w,Y		; 39 09 CD
	cop $E0.b		; 02 E0
	bcs 101.b		; B0 65
	tas		; 1B
	wai		; CB
	and [$C7.b],Y		; 37 C7
	ror $03CF.w		; 6E CF 03
	jmp ($7F18.w,X)		; 7C 18 7F
	bra  63.b		; 80 3F
	bcs  45.b		; B0 2D
	clc		; 18
	sta $B0.b,S		; 83 B0
	ora [$B2.b]		; 07 B2
	ora $6A1F26.l		; 0F 26 1F 6A
	asl A		; 0A
	txy		; 9B
	txa		; 8A
	adc $F0F666.l		; 6F 66 F6 F0
	sbc [$F0.b],Y		; F7 F0
	and [$90.b],Y		; 37 90
	and $68.b		; 25 68
	ora $F1FF00.l,X		; 1F 00 FF F1
	sta $F90F71.l,X		; 9F 71 0F F9
	adc $FD.b		; 65 FD
	.db $62, $FA, $02		; 62 FA 02
	plx		; FA
	asl A		; 0A
	sbc ($00.b)		; F2 00
	cpx #$0603.w		; E0 03 06
	ora $0C.b,S		; 03 0C
	asl $0C.b		; 06 0C
	ora $09.b		; 05 09
	asl $081B.w		; 0E 1B 08
	ora ($1C.b,S),Y		; 13 1C
	rol $10.b,X		; 36 10
	rol $01.b		; 26 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	cop $08.b		; 02 08
	brk $1C.b		; 00 1C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	cop $0B.b		; 02 0B
	tsb $16.b		; 04 16
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora #$5506.w		; 09 06 55
	bit $0833.w		; 2C 33 08
	and $18.b,S		; 23 18
	ora $100718.l		; 0F 18 07 10
	asl $30.b		; 06 30
	ora $210E31.l,X		; 1F 31 0E 21
	and $00.b,S		; 23 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $101F00.l		; 0F 00 1F 10
	asl $1F00.w		; 0E 00 1F
	ora ($D7.b,X)		; 01 D7
	clc		; 18
	lda [$38.b]		; A7 38
	stx $5C30.w		; 8E 30 5C
	rts		; 60

	stz $38E0.w		; 9C E0 38
	cpy #$C018.w		; C0 18 C0
	php		; 08
	bra -32.b		; 80 E0
	brk $D0.b		; 00 D0
	bpl -32.b		; 10 E0
	jsr $0080.w		; 20 80 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	sec		; 38
	tsb $1C.b		; 04 1C
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0030.w		; 20 30 00
	clc		; 18
	bpl  24.b		; 10 18
	bpl  28.b		; 10 1C
	php		; 08
	tsb $8C88.w		; 0C 88 8C
	rti		; 40

	dec $04.b		; C6 04
	dec $C0.b		; C6 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $E8.b		; 00 E8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	ldy $7884.w,X		; BC 84 78
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	trb $3A61.w		; 1C 61 3A
	adc $54.b,S		; 63 54
	dec $88.b		; C6 88
	sty $1850.w		; 8C 50 18
	bra  24.b		; 80 18
	ldy #$4030.w		; A0 30 40
	rts		; 60

	rol $1C20.w,X		; 3E 20 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	adc $02.b,S		; 63 02
	and $12.b,S		; 23 12
	and ($10.b,S),Y		; 33 10
	adc ($24.b,S),Y		; 73 24
	inc $40.b		; E6 40
	dec $88.b		; C6 88
	sty $1C10.w		; 8C 10 1C
	asl $1C02.w,X		; 1E 02 1C
	brk $0C.b		; 00 0C
	brk $2E.b		; 00 2E
	jsl $BC4058.l		; 22 58 40 BC
	sty $70.b		; 84 70
	brk $E8.b		; 00 E8
	php		; 08
	asl $0B.b		; 06 0B
	php		; 08
	inc A		; 1A
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	bit $36.b		; 24 36
	bit $36.b,X		; 34 36
	dec A		; 3A
	inc A		; 1A
	and $00040F.l		; 2F 0F 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $0C.b		; 00 0C
	tsb $38.b		; 04 38
	bpl  56.b		; 10 38
	brk $16.b		; 00 16
	brk $1F.b		; 00 1F
	bpl -101.b		; 10 9B
	mvp $48,$96		; 44 96 48
	sty $08.b,X		; 94 08
	rti		; 40

	tya		; 98
	bra 104.b		; 80 68
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	jsr $64E3.w		; 20 E3 64
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bcc -16.b		; 90 F0
	brk $F0.b		; 00 F0
	rts		; 60

	cpx #$40E0.w		; E0 E0 40
	bvc  32.b		; 50 20
	bit $6A6A.w,X		; 3C 6A 6A
	pha		; 48
	pla		; 68
	adc $4B.b,S		; 63 4B
	ldy #$20C7.w		; A0 C7 20
	cpy #$40A0.w		; C0 A0 40
	jsr $20C0.w		; 20 C0 20
	cpy #$BCC9.w		; C0 C9 BC
	cmp $BC.b,S		; C3 BC
	cpy #$C0BC.w		; C0 BC C0
	clc		; 18
	cpy #$4000.w		; C0 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	inc $3D25.w,X		; FE 25 3D
	ora $FDFF0D.l		; 0F 0D FF FD
	ora $FD.b		; 05 FD
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	cmp $02F71A.l,X		; DF 1A F7 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	sbc $7FFF7F.l,X		; FF 7F FF 7F
	eor $C07E.w,X		; 5D 7E C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	lda $DFBFCF.l,X		; BF CF BF DF
	lda $C0BFC0.l,X		; BF C0 BF C0
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $FE.b,S		; 03 FE
	sbc $00FFF7.l,X		; FF F7 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	sbc $E3FFE4.l,X		; FF E4 FF E3
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  48.b		; 80 30
	cpx #$E0C0.w		; E0 C0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	jsr $80F8.w		; 20 F8 80
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	asl $3100.w		; 0E 00 31
	asl $3FC0.w		; 0E C0 3F
	ora ($ED.b)		; 12 ED
	plp		; 28
	cmp [$3F.b],Y		; D7 3F
	cpy #$13EC.w		; C0 EC 13
	sta $6A.b,X		; 95 6A
	brk $00.b		; 00 00
	asl $3F00.w		; 0E 00 3F
	brk $ED.b		; 00 ED
	ora ($C5.b)		; 12 C5
	dec A		; 3A
	cpy #$133B.w		; C0 3B 13
	inx		; E8
	ror A		; 6A
	bcc   0.b		; 90 00
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
	cpy #$F806.w		; C0 06 F8
	dex		; CA
	bit $F9.b,X		; 34 F9
	lsr $E5.b		; 46 E5
	phy		; 5A
	cmp $00E2.w,X		; DD E2 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $34.b		; 00 34
	dey		; 88
	asl $18.b		; 06 18
	ora ($08.b)		; 12 08
	jsl $160428.l		; 22 28 04 16
	brk $16.b		; 00 16
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	rts		; 60

	ror $5C.b,X		; 76 5C
	lsr $5F56.w,X		; 5E 56 5F
	adc $00086F.l		; 6F 6F 08 00
	tsb $1804.w		; 0C 04 18
	bpl   8.b		; 10 08
	brk $7C.b		; 00 7C
	trb $70.b		; 14 70
	jsr $2878.w		; 20 78 28
	jmp ($0010.w,X)		; 7C 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $31.b		; 00 31
	asl $3FC0.w		; 0E C0 3F
	ora ($ED.b)		; 12 ED
	plp		; 28
	cmp [$BF.b],Y		; D7 BF
	rti		; 40

	cpx $0013.w		; EC 13 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $3F.b		; 00 3F
	brk $ED.b		; 00 ED
	ora ($C5.b)		; 12 C5
	dec A		; 3A
	rti		; 40

	tyx		; BB
	ora ($E8.b,S),Y		; 13 E8
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $0F.b		; 04 0F
	brk $17.b		; 00 17
	php		; 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	php		; 08
	ora [$66.b]		; 07 66
	stz $3BC3.w		; 9C C3 3B
	cmp $01ED24.l,X		; DF 24 ED 01
	tax		; AA
	eor $A4.b,S		; 43 A4
	rti		; 40

	bit $3CDC.w,X		; 3C DC 3C
	cmp ($93.b,X)		; C1 93
	rts		; 60

	and [$C0.b],Y		; 37 C0
	and [$C3.b]		; 27 C3
	ora [$D6.b],Y		; 17 D6
	lsr $95.b,X		; 56 95
	cli		; 58
	txy		; 9B
	jmp.w [$C003]		; DC 03 C0
	ora $4F.b,S		; 03 4F
	bcs -128.b		; B0 80
	bra  -1.b		; 80 FF
	sbc $E8FFFF.l,X		; FF FF FF E8
	beq   7.b		; F0 07
	ora [$3F.b]		; 07 3F
	adc $009F1F.l,X		; 7F 1F 9F 00
	bmi -128.b		; 30 80
	adc $7C7F9F.l,X		; 7F 9F 7F 7C
	sbc $03FF00.l,X		; FF 00 FF 03
	sbc $0EFF1F.l,X		; FF 1F FF 0E
	sbc $3337B7.l,X		; FF B7 37 33
	adc [$F0.b],Y		; 77 F0
	beq   4.b		; F0 04
	dey		; 88
	cli		; 58
	rti		; 40

	clv		; B8
	bra -72.b		; 80 B8
	bra  56.b		; 80 38
	brk $23.b		; 00 23
	adc $C0FF21.l,X		; 7F 21 FF C0
	sbc $00F800.l,X		; FF 00 F8 00
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	dec $13.b,X		; D6 13
	ror A		; 6A
	asl A		; 0A
	stp		; DB
	dex		; CA
	sbc $08FE36.l,X		; FF 36 FE 08
	sta $AD61.w,X		; 9D 61 AD
	eor ($C1.b),Y		; 51 C1
	and $ECFE.w,Y		; 39 FE EC
	sbc $31FFF1.l,X		; FF F1 FF 31
	and $750C49.l,X		; 3F 49 0C 75
	brk $7B.b		; 00 7B
	ora ($63.b),Y		; 11 63
	and $1047.w,Y		; 39 47 10
	sbc [$6F.b],Y		; F7 6F
	adc $4F6060.l		; 6F 60 60 4F
	adc $001804.l		; 6F 04 18 00
	ora ($39.b,X)		; 01 39
	and $007F7E.l,X		; 3F 7E 7F 00
	sec		; 38
	cpx #$CFB0.w		; E0 B0 CF
	bcs -64.b		; B0 C0
	bcs -128.b		; B0 80
	sbc $00.b,S		; E3 00
	sbc $78FF30.l,X		; FF 30 FF 78
	sbc $DAFC3C.l,X		; FF 3C FC DA
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
	adc ($9D.b),Y		; 71 9D
	lda $7F7F.w,X		; BD 7F 7F
	beq  -8.b		; F0 F8
	cpy #$00E0.w		; C0 E0 00
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	bit $0EFF.w,X		; 3C FF 0E
	ora $FC3B72.l		; 0F 72 3B FC
	cpx #$80FE.w		; E0 FE 80
	sed		; F8
	brk $E0.b		; 00 E0
	jmp $265822.l		; 5C 22 58 26
	and ($06.b,S),Y		; 33 06
	and $06.b,S		; 23 06
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	and ($00.b,X)		; 21 00
	and $02.b,S		; 23 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	sbc ($06.b),Y		; F1 06
	sbc #$E30C.w		; E9 0C E3
	tsb $18D2.w		; 0C D2 18
	cpy #$A018.w		; C0 18 A0
	bmi -128.b		; 30 80
	bmi  64.b		; 30 40
	rts		; 60

	jsr ($F004.w,X)		; FC 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	bra  96.b		; 80 60
	bcc 112.b		; 90 70
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	php		; 08
	clc		; 18
	tsb $1C.b		; 04 1C
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	and $202F20.l,X		; 3F 20 2F 20
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$0000.w		; C0 00 00
	bit $6C48.w		; 2C 48 6C
	pla		; 68
	jmp ($3474.w)		; 6C 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $700818.l,X		; 1F 18 08 70
	jsr $0070.w		; 20 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	brk $18.b		; 00 18
	ora #$0419.w		; 09 19 04
	and ($1E.b),Y		; 31 1E
	adc ($28.b,S),Y		; 73 28
	adc $1C.b,S		; 63 1C
	dec $70.b		; C6 70
	dec $38.b		; C6 38
	sty $080F.w		; 8C 0F 08
	asl $00.b		; 06 00
	asl $2C10.w,X		; 1E 10 2C
	jsr $021E.w		; 20 1E 02
	sei		; 78
	rti		; 40

	bit $7004.w,X		; 3C 04 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
	cpy #$F806.w		; C0 06 F8
	dex		; CA
	bit $F9.b,X		; 34 F9
	lsr $E5.b		; 46 E5
	phy		; 5A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $34.b		; 00 34
	dey		; 88
	asl $18.b		; 06 18
	ora ($08.b)		; 12 08
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0A.b		; 04 0A
	ora $08.b		; 05 08
	ora [$11.b]		; 07 11
	asl $0E11.w		; 0E 11 0E
	and $10571F.l,X		; 3F 1F 57 10
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	asl $0E00.w		; 0E 00 0E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	and $AF2AD5.l		; 2F D5 2A AF
	bvc 125.b		; 50 7D
	stx $C7.b		; 86 C7
	jsr $33DE.w		; 20 DE 33
	cmp [$30.b]		; C7 30
.ACCU 8
.INDEX 8
	sep #$F9		; E2 F9
	adc ($7D.b,X)		; 61 7D
	rol A		; 2A
	bne  80.b		; D0 50
	bra -122.b		; 80 86
	tsb $1C.b		; 04 1C
	ora ($0D.b,X)		; 01 0D
	cop $3F.b		; 02 3F
	bmi -41.b		; 30 D7
	ora ($F2.b),Y		; 11 F2
	bcc  23.b		; 90 17
	php		; 08
	rol $2E11.w		; 2E 11 2E
	ora ($2A.b),Y		; 11 2A
	ora $52.b,X		; 15 52
	and $2D52.w		; 2D 52 2D
	.db $42, $3D		; 42 3D
	rti		; 40

	and $110708.l,X		; 3F 08 07 11
	asl $0E11.w		; 0E 11 0E
	ora $0A.b,X		; 15 0A
	and $2D12.w		; 2D 12 2D
	ora ($3D.b)		; 12 3D
	cop $3F.b		; 02 3F
	brk $7C.b		; 00 7C
	clv		; B8
	dex		; CA
	.db $42, $DA		; 42 DA
	asl A		; 0A
	stz $84.b,X		; 74 84
	stz $94.b,X		; 74 94
	adc $85.b		; 65 85
	sbc #$29.b		; E9 29
	sbc #$29.b		; E9 29
	tsx		; BA
	ora $77.b,S		; 03 77
	and $2F.b,X		; 35 2F
	and $8F.b		; 25 8F
	phd		; 0B
	sta $1A9F0B.l,X		; 9F 0B 9F 1A
	and $163F16.l,X		; 3F 16 3F 16
	ror $956E.w		; 6E 6E 95
	sta $AA.b,X		; 95 AA
	tax		; AA
	lda $A5.b		; A5 A5
	sbc #$A1.b		; E9 A1
	adc $246E25.l		; 6F 25 6E 24
	adc $0C24.w		; 6D 24 0C
	sbc $EA7F90.l,X		; FF 90 7F EA
	eor $FB5EF5.l,X		; 5F F5 5E FB
	lsr $DAFF.w,X		; 5E FF DA
	sbc $DBFFDB.l,X		; FF DB FF DB
	cli		; 58
	bra  48.b		; 80 30
	brk $70.b		; 00 70
	rts		; 60

	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	tay		; A8
	jsr $80E8.w		; 20 E8 80
	pei ($80.b)		; D4 80
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpx #$80.b		; E0 80
	cpx #$A0.b		; E0 A0
	cpx #$A0.b		; E0 A0
	beq -48.b		; F0 D0
	bne  80.b		; D0 50
	inx		; E8
	pla		; 68
	cmp $36E2.w,X		; DD E2 36
	dey		; 88
	bit $2890.w		; 2C 90 28
	bpl -128.b		; 10 80
	bmi   0.b		; 30 00
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	cpy #$22.b		; C0 22
	plp		; 28
	iny		; C8
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	jsr $00E0.w		; 20 E0 00
	cpx #$C0.b		; E0 C0
	cpy #$C0.b		; C0 C0
	bra -80.b		; 80 B0
	tsb $0619.w		; 0C 19 06
	ora ($08.b,S),Y		; 13 08
	ora ($1C.b)		; 12 1C
	rol $00.b,X		; 36 00
	bit $18.b		; 24 18
	bit $6830.w		; 2C 30 68
	bpl  88.b		; 10 58
	asl $00.b		; 06 00
	tsb $0C00.w		; 0C 00 0C
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	adc $1C.b,S		; 63 1C
	dec $70.b		; C6 70
	dec $38.b		; C6 38
	sty $8C00.w		; 8C 00 8C
	bcc -104.b		; 90 98
	rti		; 40

	bpl -32.b		; 10 E0
	bmi  30.b		; 30 1E
	cop $78.b		; 02 78
	rti		; 40

	bit $7004.w,X		; 3C 04 70
	brk $F8.b		; 00 F8
	dey		; 88
	rts		; 60

	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
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
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	cop $0B.b		; 02 0B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $4D.b,S		; 03 4D
	trb $2787.w		; 1C 87 27
	clv		; B8
	and $CD09.w,Y		; 39 09 CD
	ora $E3.b,S		; 03 E3
	lda ($67.b,S),Y		; B3 67
	tas		; 1B
	cmp $07CF31.l		; CF 31 CF 07
	tsa		; 3B
	ora $7C.b,S		; 03 7C
	clc		; 18
	adc $B13F80.l,X		; 7F 80 3F B1
	and $B08319.l		; 2F 19 83 B0
	ora $B8.b,S		; 03 B8
	phd		; 0B
	rti		; 40

	and $512F50.l,X		; 3F 50 2F 51
	rol $2E51.w		; 2E 51 2E
	adc $3906.w,Y		; 79 06 39
	asl $29.b		; 06 29
	asl $29.b		; 06 29
	asl $3F.b		; 06 3F
	brk $2F.b		; 00 2F
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $F9.b		; 00 F9
	ora #$EA.b		; 09 EA
	inc A		; 1A
	inc $1E.b		; E6 1E
	sbc [$1F.b]		; E7 1F
	sbc $31C11F.l		; EF 1F C1 31
	dec $30.b,X		; D6 30
	cmp [$30.b],Y		; D7 30
	ora $050F06.l		; 0F 06 0F 05
	ora $080B09.l		; 0F 09 0B 08
	brk $00.b		; 00 00
	asl $0F10.w,X		; 1E 10 0F
	brk $0F.b		; 00 0F
	brk $6B.b		; 00 6B
	jsl $EE22EF.l		; 22 EF 22 EE
	jsl $EF21ED.l		; 22 ED 21 EF
	sbc ($FF.b,X)		; E1 FF
	sbc $527F43.l,X		; FF 43 7F 52
	ror $DDFF.w		; 6E FF DD
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $1EFFDE.l,X		; FF DE FF 1E
	and $24A400.l,X		; 3F 00 A4 24
	sta $04.b		; 85 04
	ldy $C880.w		; AC 80 C8
	brk $F8.b		; 00 F8
	brk $60.b		; 00 60
	clc		; 18
	cpx #$F8.b		; E0 F8
	bne -36.b		; D0 DC
	brk $0C.b		; 00 0C
	php		; 08
	tsb $70F0.w		; 0C F0 70
	bcs -80.b		; B0 B0
	cpy #$C0.b		; C0 C0
	bne -48.b		; D0 D0
	bne  16.b		; D0 10
	plp		; 28
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	ora [$31.b]		; 07 31
	trb $0E31.w		; 1C 31 0E
	and $18.b,S		; 23 18
	adc $3C.b,S		; 63 3C
	ror $18.b		; 66 18
	lsr $30.b		; 46 30
	mvp $CC,$38		; 44 38 CC
	asl $0F10.w,X		; 1E 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	jsl $3C0018.l		; 22 18 00 3C
	tsb $38.b		; 04 38
	brk $70.b		; 00 70
	rti		; 40

	bit $E6.b		; 24 E6
	brk $63.b		; 00 63
	cop $23.b		; 02 23
	ora ($33.b)		; 12 33
	ora ($33.b)		; 12 33
	asl $77.b,X		; 16 77
	asl $67.b		; 06 67
	jsl $405863.l		; 22 63 58 40
	rol $1C22.w,X		; 3E 22 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $28.b		; 00 28
	jsr $2038.w		; 20 38 20
	trb $2200.w		; 1C 00 22
	adc $00.b,S		; 63 00
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	.db $42, $00		; 42 00
	.db $42, $20		; 42 20
	.db $62, $20, $62		; 62 20 62
	bit $66.b		; 24 66
	trb $3E00.w		; 1C 00 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	ror $04.b		; 66 04
	ror $04.b		; 66 04
	rol $04.b		; 26 04
	rol $10.b		; 26 10
	rol $10.b,X		; 36 10
	rol $00.b,X		; 36 00
	rol $04.b,X		; 36 04
	asl $38.b,X		; 16 38
	jsr $2038.w		; 20 38 20
	clc		; 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	tsb $1C.b		; 04 1C
	trb $08.b		; 14 08
	brk $04.b		; 00 04
	asl $30.b,X		; 16 30
	tsa		; 3B
	rol $2B2F.w		; 2E 2F 2B
	and $1F3737.l		; 2F 37 37 1F
	ora ($1A.b,S),Y		; 13 1A
	bpl  25.b		; 10 19
	bpl   8.b		; 10 08
	brk $3E.b		; 00 3E
	asl A		; 0A
	sec		; 38
	bpl  60.b		; 10 3C
	trb $3E.b		; 14 3E
	php		; 08
	ora ($00.b,S),Y		; 13 00
	ora ($01.b),Y		; 11 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpx #$E0.b		; E0 E0
	bvc  16.b		; 50 10
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq -32.b		; F0 E0
	beq   0.b		; F0 00
	eor $300738.l		; 4F 38 07 30
	ora [$30.b]		; 07 30
	sta $309E30.l,X		; 9F 30 9E 30
	asl $0F30.w,X		; 1E 30 0F
	and ($0D.b,X)		; 21 0D
	and ($27.b,X)		; 21 27
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $11.b		; 00 11
	jmp ($6C11.w)		; 6C 11 6C
	tyx		; BB
	dec $BB.b		; C6 BB
	dec $BA.b		; C6 BA
	dec $38.b		; C6 38
	dec $79.b		; C6 79
	sta $71.b,S		; 83 71
	sta $C7.b,S		; 83 C7
	mvp $44,$C7		; 44 C7 44
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sta $82.b,S		; 83 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cop $06.b		; 02 06
	ora $09.b,S		; 03 09
	tsb $10.b		; 04 10
	ora #$21.b		; 09 21
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	tsb $1903.w		; 0C 03 19
	ora [$BD.b]		; 07 BD
	sta ($E6.b,X)		; 81 E6
	cpx #$7D.b		; E0 7D
	jmp ($A3BF.w,X)		; 7C BF A3
	sta ($8C.b,S),Y		; 93 8C
	ora $4A.b,X		; 15 4A
	trb $FB03.w		; 1C 03 FB
	ldy $FF.b		; A4 FF
	ror $9F7F.w,X		; 7E 7F 9F
	eor $EC83E3.l,X		; 5F E3 83 EC
	brk $EF.b		; 00 EF
	cop $EC.b		; 02 EC
	ora $EC.b,S		; 03 EC
	sty $E8.b		; 84 E8
	lda [$B0.b],Y		; B7 B0
	ldy $F7A0.w		; AC A0 F7
	sbc [$FE.b]		; E7 FE
	clc		; 18
	sbc #$16.b		; E9 16
	sbc $0A.b,X		; F5 0A
	lda [$18.b]		; A7 18
	xce		; FB
	tsb $5F.b		; 04 5F
	ora $BF1FFF.l		; 0F FF 1F BF
	clc		; 18
	clv		; B8
	lda [$50.b]		; A7 50
	lsr $4648.w		; 4E 48 46
	cli		; 58
	lsr $04.b		; 46 04
	cop $A0.b		; 02 A0
	jsr $C0C0.w		; 20 C0 C0
	bvc  80.b		; 50 50
	brk $00.b		; 00 00
	bvs -12.b		; 70 F4
	bvs  -6.b		; 70 FA
	sec		; 38
	ply		; 7A
	ora ($7B.b)		; 12 7B
	cpx #$C0.b		; E0 C0
	cpy #$30.b		; C0 30
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	jsr $30F8.w		; 20 F8 30
	jsr ($FC30.w,X)		; FC 30 FC
	brk $FC.b		; 00 FC
	ora $2D02.w,X		; 1D 02 2D
	ora ($2D.b)		; 12 2D
	ora ($3D.b)		; 12 3D
	cop $3D.b		; 02 3D
	cop $39.b		; 02 39
	asl $3B.b		; 06 3B
	tsb $3B.b		; 04 3B
	ora $02.b		; 05 02
	tsb $0C12.w		; 0C 12 0C
	ora ($0C.b)		; 12 0C
	cop $1C.b		; 02 1C
	cop $1C.b		; 02 1C
	asl $18.b		; 06 18
	tsb $18.b		; 04 18
	ora $18.b		; 05 18
	ldy $94.b,X		; B4 94
	adc #$29.b		; 69 29
	xba		; EB
	and #$D5.b		; 29 D5
	eor ($D6.b),Y		; 51 D6
	eor ($AE.b)		; 52 AE
	ldx #$AB.b		; A2 AB
	ldx #$3D.b		; A2 3D
	bit $DC.b		; 24 DC
	phk		; 4B
	lda $163F96.l,X		; BF 96 3F 16
	adc $2D7F2E.l,X		; 7F 2E 7F 2D
	sbc $5DFF5D.l,X		; FF 5D FF 5D
	sbc $A5A5DB.l,X		; FF DB A5 A5
	eor ($52.b)		; 52 52
	inc A		; 1A
	ora ($F5.b)		; 12 F5
	eor ($ED.b),Y		; 51 ED
	eor #$EE.b		; 49 EE
	pha		; 48
	plx		; FA
	pha		; 48
	eor [$44.b],Y		; 57 44
	lda [$FA.b]		; A7 FA
	eor $EDBFED.l,X		; 5F ED BF ED
	sbc $B6FFAE.l,X		; FF AE FF B6
	sbc $B7FFB7.l,X		; FF B7 FF B7
	sbc $00A0BB.l,X		; FF BB A0 00
	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	ldy #$A0.b		; A0 A0
	ldy #$A0.b		; A0 A0
	bcc -112.b		; 90 90
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	beq  96.b		; F0 60
	ora $2200.w,X		; 1D 00 22
	ora $2B54.w,X		; 1D 54 2B
	adc $0DF200.l,X		; 7F 00 F2 0D
	lda $748A51.l		; AF 51 8A 74
	ldy $0040.w,X		; BC 40 00
	brk $1D.b		; 00 1D
	brk $2B.b		; 00 2B
	trb $00.b		; 14 00
	rol $7509.w,X		; 3E 09 75
	bvc  36.b		; 50 24
	adc $00.b,X		; 75 00
	eor $00.b,S		; 43 00
	cpx #$00.b		; E0 00
	clc		; 18
	cpx #$24.b		; E0 24
	cld		; D8
	adc ($8C.b)		; 72 8C
	sta $F572.w		; 8D 72 F5
	asl A		; 0A
	lda ($6C.b,S),Y		; B3 6C
	tda		; 7B
	tsb $00.b		; 04 00
	brk $E0.b		; 00 E0
	brk $D8.b		; 00 D8
	jsr $7884.w		; 20 84 78
	jsl $500A5C.l		; 22 5C 0A 50
	jmp $8400.w		; 4C 00 84
	brk $08.b		; 00 08
	inc A		; 1A
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	bpl  52.b		; 10 34
	bpl  52.b		; 10 34
	tsb $3C2C.w		; 0C 2C 3C
	stz $E4.b,X		; 74 E4
	cpx $04.b		; E4 04
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	tsb $08.b		; 04 08
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	php		; 08
	jsr ($0018.w,X)		; FC 18 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   3.b		; 80 03
	brk $03.b		; 00 03
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
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	clv		; B8
	stz $D49C.w		; 9C 9C D4
	tsb $AE.b		; 04 AE
	jsl $001E1E.l		; 22 1E 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	jsr ($3C60.w,X)		; FC 60 3C
	sec		; 38
	rol $1E1C.w,X		; 3E 1C 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	adc ($1A.b,X)		; 61 1A
	adc $38.b,S		; 63 38
	adc $3C.b,S		; 63 3C
	ror $00.b		; 66 00
	lsr $00.b		; 46 00
	mvp $C4,$10		; 44 10 C4
	bvs -60.b		; 70 C4
	and $203C21.l,X		; 3F 21 3C 20
	asl $1802.w,X		; 1E 02 18
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	rti		; 40

	sec		; 38
	brk $30.b		; 00 30
	sta $18.b,S		; 83 18
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $73.b		; 00 73
	eor ($E3.b,S),Y		; 53 E3
	plb		; AB
	cmp ($9B.b,S),Y		; D3 9B
	tya		; 98
	stz $9891.w		; 9C 91 98
	adc $62.b		; 65 62
	ora $0A.b,X		; 15 0A
	ora $7102.w,X		; 1D 02 71
	and $D05FE1.l		; 2F E1 5F D0
	adc $C07FC0.l,X		; 7F C0 7F C0
	ror $1C62.w,X		; 7E 62 1C
	asl A		; 0A
	tsb $02.b		; 04 02
	tsb $A3DC.w		; 0C DC A3
	sta ($8C.b,S),Y		; 93 8C
	lda $273B81.l,X		; BF 81 3B 27
	phd		; 0B
	ora [$E1.b]		; 07 E1
	adc ($E2.b,X)		; 61 E2
	asl $C3E1.w		; 0E E1 C3
	ora $E0.b,S		; 03 E0
	sty $00E2.w		; 8C E2 00
	cmp #$61.b		; C9 61
	cmp [$E1.b]		; C7 E1
	sbc $001F60.l,X		; FF 60 1F 00
	ora $EF1FC0.l,X		; 1F C0 1F EF
	bvc  -1.b		; 50 FF
	cpx #$FF.b		; E0 FF
	beq  -5.b		; F0 FB
	jsr ($FCFA.w,X)		; FC FA FC
	beq -16.b		; F0 F0
	inx		; E8
	inc $5850.w		; EE 50 58
	bpl  64.b		; 10 40
	rti		; 40

	sbc $F0F3E0.l		; EF E0 F3 F0
	jsr ($FFF0.w,X)		; FC F0 FF
	cpx #$FF.b		; E0 FF
	rti		; 40

	sbc $94FF00.l,X		; FF 00 FF 94
	ora #$C5.b		; 09 C5
	ora $0ECE.w,X		; 1D CE 0E
	cmp [$0F.b]		; C7 0F
	and [$07.b]		; 27 07
	lda $87.b,S		; A3 87
	cmp ($03.b,X)		; C1 03
	ldy #$80.b		; A0 80
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	tsb $1F.b		; 04 1F
	asl $1F.b		; 06 1F
	cmp $CF.b,S		; C3 CF
	cmp $4F.b,S		; C3 4F
	brk $07.b		; 00 07
	cpy #$43.b		; C0 43
	pld		; 2B
	ora $29.b,X		; 15 29
	asl $28.b,X		; 16 28
	ora [$14.b],Y		; 17 14
	phd		; 0B
	trb $0B.b		; 14 0B
	asl $09.b,X		; 16 09
	asl $09.b,X		; 16 09
	ora $08.b,X		; 15 08
	ora $08.b,X		; 15 08
	asl $08.b,X		; 16 08
	ora [$08.b],Y		; 17 08
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $5D.b		; 00 5D
	mvp $C4,$D7		; 44 D7 C4
	xce		; FB
	pha		; 48
	xce		; FB
	pla		; 68
	txy		; 9B
	sei		; 78
	ora $FF1FFF.l		; 0F FF 1F FF
	and ($E1.b,X)		; 21 E1
	sbc $3BFFBB.l,X		; FF BB FF 3B
	adc $177F37.l,X		; 7F 37 7F 17
	and $30B727.l,X		; 3F 27 B7 30
	ldy #$20.b		; A0 20
	stz $5700.w,X		; 9E 00 57
	mvp $44,$5D		; 44 5D 44
	tad		; 5B
	.db $42, $5B		; 42 5B
	.db $42, $5B		; 42 5B
	eor $FE.b,S		; 43 FE
	sbc $50BF5F.l,X		; FF 5F BF 50
	bcs  -1.b		; B0 FF
	tyx		; BB
	sbc $BDFFBB.l,X		; FF BB FF BD
	sbc $BCFFBD.l,X		; FF BD FF BC
	sbc $0001.w,X		; FD 01 00
	brk $0F.b		; 00 0F
	brk $50.b		; 00 50
	bvc  96.b		; 50 60
	rts		; 60

	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	beq -96.b		; F0 A0
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	sec		; 38
	dec $7D.b		; C6 7D
	bcc  43.b		; 90 2B
	jmp.w [$699C]		; DC 9C 69
	txy		; 9B
	stz $99.b		; 64 99
	adc [$E6.b],Y		; 77 E6
	inc $36.b		; E6 36
	asl $D7.b		; 06 D7
	cop $83.b		; 02 83
	tsb $CF.b		; 04 CF
	php		; 08
	adc [$81.b]		; 67 81
	adc [$84.b]		; 67 84
	adc ($82.b)		; 72 82
	sbc $FF18.w,X		; FD 18 FF
	sbc $C43A.w,Y		; F9 3A C4
	jmp ($AC10.w,X)		; 7C 10 AC
	bvs 116.b		; 70 74
	plp		; 28
	ldy $48.b,X		; B4 48
	and ($FC.b)		; 32 FC
	dec $D9CE.w		; CE CE D9
	cmp ($D4.b,X)		; C1 D4
	bra -128.b		; 80 80
	rti		; 40

	cpx #$20.b		; E0 20
	iny		; C8
	brk $C8.b		; 00 C8
	rti		; 40

	ldy $7E80.w,X		; BC 80 7E
	bmi  -1.b		; 30 FF
	rol $30E0.w,X		; 3E E0 30
	cpy #$18.b		; C0 18
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	rts		; 60

	php		; 08
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs  12.b		; 70 0C
	bcs -116.b		; B0 8C
	sec		; 38
	sty $CC78.w		; 8C 78 CC
	brk $C4.b		; 00 C4
	brk $44.b		; 00 44
	bpl  70.b		; 10 46
	trb $F846.w		; 1C 46 F8
	php		; 08
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	sei		; 78
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	stz $18.b		; 64 18
	ror $0C.b		; 66 0C
	rol $18.b		; 26 18
	and ($04.b)		; 32 04
	and ($04.b)		; 32 04
	ora ($0C.b)		; 12 0C
	inc A		; 1A
	tsb $1B.b		; 04 1B
	clc		; 18
	brk $3C.b		; 00 3C
	bit $18.b		; 24 18
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	trb $1826.w		; 1C 26 18
	ror $30.b		; 66 30
	stz $18.b		; 64 18
	jmp $4C10.w		; 4C 10 4C
	jsr $3048.w		; 20 48 30
	cli		; 58
	jsr $18D8.w		; 20 D8 18
	brk $3C.b		; 00 3C
	bit $18.b		; 24 18
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	bmi   0.b		; 30 00
	jsr $7000.w		; 20 00 70
	bvc 112.b		; 50 70
	cpy $70.b		; C4 70
	dec $1C.b		; C6 1C
	dec $18.b		; C6 18
	.db $42, $3C		; 42 3C
	.db $62, $0C, $63		; 62 0C 63
	asl $0433.w,X		; 1E 33 04
	and ($38.b),Y		; 31 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $3E.b		; 00 3E
	jsl $1E000C.l		; 22 0C 00 1E
	bpl  16.b		; 10 10
	cli		; 58
	jsr $0068.w		; 20 68 00
	pla		; 68
	clc		; 18
	bit $2400.w,X		; 3C 00 24
	bmi  52.b		; 30 34
	bit $272E.w,X		; 3C 2E 27
	and [$20.b]		; 27 20
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	jsr $0000.w		; 20 00 00
	clc		; 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	bpl  63.b		; 10 3F
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $073800.l		; 0F 00 38 07
	pha		; 48
	and [$4A.b],Y		; 37 4A
	and $F7.b,X		; 35 F7
	php		; 08
	lsr A		; 4A
	lda $84.b,X		; B5 84
	tda		; 7B
	phd		; 0B
	pea $0000.w		; F4 00 00
	ora [$00.b]		; 07 00
	and [$08.b],Y		; 37 08
	and $1A.b		; 25 1A
	php		; 08
	adc $B5.b,X		; 75 B5
	pha		; 48
	tda		; 7B
	bra -12.b		; 80 F4
	brk $1C.b		; 00 1C
	ora $2D.b,S		; 03 2D
	ora ($35.b)		; 12 35
	asl A		; 0A
	and ($0E.b),Y		; 31 0E
	eor $3D.b,S		; 43 3D
	eor $3D.b,S		; 43 3D
	eor ($3E.b,X)		; 41 3E
	eor ($3E.b,X)		; 41 3E
	ora $0C.b,S		; 03 0C
	ora ($0C.b)		; 12 0C
	asl A		; 0A
	trb $0E.b		; 14 0E
	bpl  61.b		; 10 3D
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $F8.b		; 00 F8
	cop $F9.b		; 02 F9
	sbc $B9.b,S		; E3 B9
	lda ($33.b,S),Y		; B3 33
	and ($24.b,S),Y		; 33 24
	bit $4375.w		; 2C 75 43
	sed		; F8
	and #$36.b		; 29 36
	asl $00.b,X		; 16 00
	ora [$E0.b]		; 07 E0
	ora [$F1.b]		; 07 F1
	eor [$F1.b]		; 47 F1
	cmp $C1DFE0.l		; CF E0 DF C1
	sta $DE0728.l		; 8F 28 07 DE
	cmp #$BF.b		; C9 BF
	rti		; 40

	cmp $C6FDB0.l		; CF B0 FD C6
	sbc $FCEE.w,X		; FD EE FC
	jsr ($3C3C.w,X)		; FC 3C 3C
	cld		; D8
	phx		; DA
	pla		; 68
	ror A		; 6A
	rti		; 40

	brk $30.b		; 00 30
	bit #$80.b		; 89 80
	dec $C4.b,X		; D6 C4
	inc $FE7C.w		; EE 7C FE
	clc		; 18
	inc $FF48.w,X		; FE 48 FF
	jsr $40FF.w		; 20 FF 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DD.b		; 00 DD
	mvp $42,$DB		; 44 DB 42
	eor $C3DE43.l,X		; 5F 43 DE C3
	lda $3E26FF.l,X		; BF FF 26 3E
	pei ($1C.b)		; D4 1C
	pea $FF1C.w		; F4 1C FF
	tyx		; BB
	sbc $BCFFBD.l,X		; FF BD FF BC
	sbc $407E3D.l,X		; FF 3D 7E 40
	cmp ($10.b),Y		; D1 10
	sbc $00.b,S		; E3 00
	sbc $00.b,S		; E3 00
	bvs  64.b		; 70 40
	cpx #$40.b		; E0 40
	cpy #$20.b		; C0 20
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	brk $30.b		; 00 30
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	tsb $C6.b		; 04 C6
	bit $E6.b		; 24 E6
	bit $66.b		; 24 66
	tsb $66.b		; 04 66
	brk $66.b		; 00 66
	jsr $2066.w		; 20 66 20
	cpx $00.b		; E4 00
	cpy $78.b		; C4 78
	rti		; 40

	cli		; 58
	rti		; 40

	clc		; 18
	brk $38.b		; 00 38
	jsr $243C.w		; 20 3C 24
	trb $5804.w		; 1C 04 58
	rti		; 40

	sei		; 78
	rti		; 40

	brk $00.b		; 00 00
	jsr $C020.w		; 20 20 C0
	cpy #$FC.b		; C0 FC
	jsr ($F0E0.w,X)		; FC E0 F0
	cpy #$D0.b		; C0 D0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	beq -128.b		; F0 80
	jsr ($FEF8.w,X)		; FC F8 FE
	cpy #$FE.b		; C0 FE
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	cpy #$00.b		; C0 00
	bmi -64.b		; 30 C0
	tsb $26F0.w		; 0C F0 26
	cld		; D8
	asl $E8.b,X		; 16 E8
	and ($DE.b),Y		; 31 DE
	lda #$46.b		; A9 46
	tax		; AA
	mvp $00,$00		; 44 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	cld		; D8
	jsr $00E8.w		; 20 E8 00
	dec $5600.w		; CE 00 56
	brk $54.b		; 00 54
	brk $D2.b		; 00 D2
	tsb $1814.w		; 0C 14 18
	bne  72.b		; D0 48
	beq  24.b		; F0 18
	jsr $4050.w		; 20 50 40
	jsr $F010.w		; 20 10 F0
	bcs  32.b		; B0 20
	bit $E000.w		; 2C 00 E0
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	cpy #$10.b		; C0 10
	brk $30.b		; 00 30
	rts		; 60

	cli		; 58
	tsb $1E31.w		; 0C 31 1E
	and ($08.b,S),Y		; 33 08
	and $0C.b,S		; 23 0C
	rol $10.b		; 26 10
	rol $18.b		; 26 18
	jmp ($6C30.w)		; 6C 30 6C
	brk $48.b		; 00 48
	ora $000C11.l,X		; 1F 11 0C 00
	asl $1802.w,X		; 1E 02 18
	brk $1C.b		; 00 1C
	tsb $30.b		; 04 30
	jsr $0818.w		; 20 18 08
	bmi   0.b		; 30 00
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	brk $24.b		; 00 24
	php		; 08
	bit $6C48.w		; 2C 48 6C
	pla		; 68
	jmp ($0008.w)		; 6C 08 00
	tsb $1804.w		; 0C 04 18
	bpl   8.b		; 10 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $70.b		; 00 70
	jsr $0070.w		; 20 70 00
	stz $34.b,X		; 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	brk $3E.b		; 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $81.b,X		; D5 81
	cmp $000080.l		; CF 80 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $00800E.l		; 8F 0E 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$11.b]		; 07 11
	asl $1D23.w		; 0E 23 1D
	rol $1A.b		; 26 1A
	eor $3D.b		; 45 3D
	txa		; 8A
	adc ($03.b,S),Y		; 73 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	brk $1A.b		; 00 1A
	ora ($3C.b,X)		; 01 3C
	ora $70.b,S		; 03 70
	ora [$11.b]		; 07 11
	sbc $C230.w		; ED 30 C2
	tda		; 7B
	txa		; 8A
	sbc ($0C.b),Y		; F1 0C
	and ($2E.b,S),Y		; 33 2E
	php		; 08
	ora [$A4.b]		; 07 A4
	lda $46.b,S		; A3 46
	eor $08EA.w,Y		; 59 EA 08
	cmp $8400.w		; CD 00 84
	brk $07.b		; 00 07
	tsb $E1.b		; 04 E1
	cpy #$15.b		; C0 15
	sbc $8A.b,X		; F5 8A
	plx		; FA
	ora ($E1.b,X)		; 01 E1
	.db $42, $3C		; 42 3C
	sta $7D.b,S		; 83 7D
	sta ($6C.b,S),Y		; 93 6C
	sta ($6E.b),Y		; 91 6E
	sta ($6E.b),Y		; 91 6E
	lda ($4E.b),Y		; B1 4E
	lda ($4E.b),Y		; B1 4E
	lda ($4E.b),Y		; B1 4E
	and $7D01.w,X		; 3D 01 7D
	brk $6C.b		; 00 6C
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $4E.b		; 00 4E
	brk $4E.b		; 00 4E
	brk $4E.b		; 00 4E
	brk $75.b		; 00 75
	eor $E9.b,X		; 55 E9
	lda #$E9.b		; A9 E9
	lda #$D1.b		; A9 D1
	eor ($92.b),Y		; 51 92
	sta ($B2.b)		; 92 B2
	lda ($E2.b)		; B2 E2
.ACCU 16
	rep #$E3		; C2 E3
	cop $DF.b		; 02 DF
	txa		; 8A
	lda $16BF16.l,X		; BF 16 BF 16
	adc $6DFF2E.l,X		; 7F 2E FF 6D
	sbc $1DDF4D.l,X		; FF 4D DF 1D
	ora $94941D.l,X		; 1F 1D 94 94
	pld		; 2B
	rol A		; 2A
	adc $22.b,S		; 63 22
	adc $FB29.w,Y		; 79 29 FB
	and #$24B6.w		; 29 B6 24
	lda $24.b,X		; B5 24
	cmp $9044.w,X		; DD 44 90
	ror $DCEA.w,X		; 7E EA DC
	inc $DC.b,X		; F6 DC
	sbc $D6FFD6.l,X		; FF D6 FF D6
	sbc $DBFFDB.l,X		; FF DB FF DB
	sbc $0000BB.l,X		; FF BB 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	bra -96.b		; 80 A0
	bra -48.b		; 80 D0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	cpx $0C.b		; E4 0C
	cpx $0C.b		; E4 0C
	sep #$0E		; E2 0E
	sep #$0E		; E2 0E
	sep #$0E		; E2 0E
	cpx #$0E.b		; E0 0E
	sbc ($0F.b,X)		; E1 0F
	adc ($0B.b,X)		; 61 0B
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	sbc $04.b,X		; F5 04
	sbc $04.b,X		; F5 04
	sbc ($00.b),Y		; F1 00
	sbc ($02.b,S),Y		; F3 02
	sbc ($02.b)		; F2 02
	beq   0.b		; F0 00
	brk $30.b		; 00 30
	jsr $2030.w		; 20 30 20
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cmp ($0E.b),Y		; D1 0E
	eor ($0E.b),Y		; 51 0E
	ora $0906.w,Y		; 19 06 09
	asl $0D.b		; 06 0D
	cop $05.b		; 02 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E5.b		; 00 E5
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	cop $F3.b		; 02 F3
	ora $740FF7.l		; 0F F7 0F 74
	tsb $0C75.w		; 0C 75 0C
	and ($0C.b),Y		; 31 0C
	tas		; 1B
	tas		; 1B
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	sta ($0C.b),Y		; 91 0C
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	clc		; 18
	clc		; 18
	and $FEFC7F.l,X		; 3F 7F FC FE
	cld		; D8
	plx		; FA
	tsb $30.b		; 04 30
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bpl 127.b		; 10 7F
	and $FF98FF.l,X		; 3F FF 98 FF
	bra  -1.b		; 80 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cmp $C7.b,S		; C3 C7
	lda $7FFCBF.l,X		; BF BF FC 7F
	sed		; F8
	jmp ($6240.w,X)		; 7C 40 62
	inx		; E8
	dey		; 88
	bvs 112.b		; 70 70
	brk $87.b		; 00 87
	cmp ($3F.b,X)		; C1 3F
	cmp $BFDC7F.l,X		; DF 7F DC BF
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	tya		; 98
	asl $70.b,X		; 16 70
	brk $08.b		; 00 08
	ora [$11.b]		; 07 11
	asl $0619.w		; 0E 19 06
	and #$3B16.w		; 29 16 3B
	tsb $53.b		; 04 53
	bit $0C73.w		; 2C 73 0C
	lda [$48.b],Y		; B7 48
	ora [$00.b]		; 07 00
	asl $0600.w		; 0E 00 06
	php		; 08
	asl $08.b,X		; 16 08
	tsb $18.b		; 04 18
	bit $0C10.w		; 2C 10 0C
	bmi  72.b		; 30 48
	bmi -118.b		; 30 8A
	rol A		; 2A
	bit #$A228.w		; 89 28 A2
	asl A		; 0A
	bra  19.b		; 80 13
	lda $9D3E.w,X		; BD 3E 9D
	rol $1CCF.w,X		; 3E CF 1C
	rep #$0D		; C2 0D
	ora ($7C.b,X)		; 01 7C
	ora $7C.b,S		; 03 7C
	ora ($7C.b,X)		; 01 7C
	brk $7C.b		; 00 7C
	clc		; 18
	ror $7E08.w,X		; 7E 08 7E
	brk $3D.b		; 00 3D
	ora ($3C.b,X)		; 01 3C
	phb		; 8B
	sbc ($D3.b,S),Y		; F3 D3
	ora $4E02FA.l,X		; 1F FA 02 4E
	rep #$0E		; C2 0E
	inc $7F83.w,X		; FE 83 7F
	bit #$D776.w		; 89 76 D7
	plp		; 28
	lsr $45.b		; 46 45
	xba		; EB
	php		; 08
	sbc $81BF01.l,X		; FF 01 BF 81
	ora ($11.b,S),Y		; 13 11
	adc $80.b,S		; 63 80
	ror $80.b,X		; 76 80
	plp		; 28
	dec $0C.b		; C6 0C
	adc ($3A.b,X)		; 61 3A
	adc $1C.b,S		; 63 1C
	cmp [$78.b]		; C7 78
	dec $38.b		; C6 38
	sty $8C60.w		; 8C 60 8C
	beq -104.b		; F0 98
	rti		; 40

	clc		; 18
	rol $1C20.w,X		; 3E 20 1C
	brk $7A.b		; 00 7A
	.db $42, $3C		; 42 3C
	tsb $70.b		; 04 70
	brk $F8.b		; 00 F8
	dey		; 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
	and ($00.b,S),Y		; 33 00
	and ($00.b,S),Y		; 33 00
	ora ($08.b)		; 12 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	asl $1E12.w,X		; 1E 12 1E
	ora ($0C.b)		; 12 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $12.b		; 00 12
	adc ($12.b,S),Y		; 73 12
	adc ($20.b,S),Y		; 73 20
	adc $20.b,S		; 63 20
	adc $20.b,S		; 63 20
	.db $62, $24, $66		; 62 24 66
	bit $66.b		; 24 66
	bit $66.b		; 24 66
	bit $2C20.w		; 2C 20 2C
	jsr $021E.w		; 20 1E 02
	asl $1C02.w,X		; 1E 02 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	and ($0C.b,X)		; 21 0C
	and ($1C.b,X)		; 21 1C
	and ($1C.b),Y		; 31 1C
	and ($1A.b),Y		; 31 1A
	and ($2C.b,S),Y		; 33 2C
	adc $70C604.l		; 6F 04 C6 70
	dec $1E.b		; C6 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $12.b		; 00 12
	cop $78.b		; 02 78
	rti		; 40

	bit $2004.w,X		; 3C 04 20
	pla		; 68
	jsr $C068.w		; 20 68 C0
	inx		; E8
	bcs -68.b		; B0 BC
	ldy #$B4.b		; A0 B4
	dec $7FDE.w,X		; DE DE 7F
	eor $10406A.l		; 4F 6A 40 10
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	jsr $48E8.w		; 20 E8 48
	sed		; F8
	bvc -14.b		; 50 F2
	jsr $004F.w		; 20 4F 00
	eor [$07.b]		; 47 07
	ora $0A.b,X		; 15 0A
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0D.b,S),Y		; 13 0D
	and $1D.b,S		; 23 1D
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	asl A		; 0A
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $18.b		; 00 18
	bpl  26.b		; 10 1A
	ora ($7C.b),Y		; 11 7C
	stz $FA.b,X		; 74 FA
	rol A		; 2A
	and ($12.b)		; 32 12
	pea $E5D4.w		; F4 D4 E5
	lda $E9.b		; A5 E9
	and ($F0.b,X)		; 21 F0
	sbc [$F0.b]		; E7 F0
	sbc [$F4.b]		; E7 F4
	sta $2F.b,S		; 83 2F
	ora $DF.b		; 05 DF
	cmp $0BDF.w		; CD DF 0B
	lda $16371A.l,X		; BF 1A 37 16
	ror $9C7E.w,X		; 7E 7E 9C
	sta $6564.w,X		; 9D 64 65
	txs		; 9A
	txs		; 9A
	lda $A5.b		; A5 A5
	sbc ($A1.b,X)		; E1 A1
	adc $6D24.w		; 6D 24 6D
	bit $3C.b		; 24 3C
	sbc $20FF0C.l,X		; FF 0C FF 20
	sbc $E57F98.l,X		; FF 98 7F E5
	lsr $5EFB.w,X		; 5E FB 5E
	sbc $DBFFDB.l,X		; FF DB FF DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	ldy #$80.b		; A0 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$40.b		; C0 40
	stz $917F.w,X		; 9E 7F 91
	adc ($97.b),Y		; 71 97
	adc ($8E.b),Y		; 71 8E
	rts		; 60

	stx $8E60.w		; 8E 60 8E
	rts		; 60

	sta $210E61.l		; 8F 61 0E 21
	and ($21.b,X)		; 21 21
	rol $2E20.w		; 2E 20 2E
	jsr $203F.w		; 20 3F 20
	and $203F20.l,X		; 3F 20 3F 20
	rol $1F20.w,X		; 3E 20 1F
	ora ($00.b,X)		; 01 00
	inc $FE18.w,X		; FE 18 FE
	clc		; 18
	jsr ($FC38.w,X)		; FC 38 FC
	plp		; 28
	cpx $EC28.w		; EC 28 EC
	pha		; 48
	cpy $CC48.w		; CC 48 CC
	ldy $A4BC.w,X		; BC BC A4
	ldy $A0.b		; A4 A0
	ldy #$40.b		; A0 40
	rti		; 40

	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	ora $073800.l		; 0F 00 38 07
	pha		; 48
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
	cpx #$00.b		; E0 00
	bit $02C0.w,X		; 3C C0 02
	jsr ($946B.w,X)		; FC 6B 94
	adc [$A8.b],Y		; 77 A8
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
	bpl  30.b		; 10 1E
	cop $CB.b		; 02 CB
	sbc ($86.b,X)		; E1 86
	sta ($47.b)		; 92 47
	rts		; 60

	rep #$CD		; C2 CD
	ora ($84.b,S),Y		; 13 84
	phy		; 5A
	eor $28.b		; 45 28
	sbc $0F.b,S		; E3 0F
	sbc $F687.w		; ED 87 F6
	ora $F9.b,S		; 03 F9
	rti		; 40

	sed		; F8
	ora ($E4.b),Y		; 11 E4
	sec		; 38
	cmp $39.b,S		; C3 39
	.db $82, $5D, $40		; 82 5D 40
	bvs  16.b		; 70 10
	stz $94.b,X		; 74 94
	pei ($94.b)		; D4 94
	pea $F2A5.w		; F4 A5 F2
	asl $6D.b		; 06 6D
	sta $E4.b		; 85 E4
	tsb $8E4B.w		; 0C 4B 8E
	bcc -122.b		; 90 86
	ldy $AE.b,X		; B4 AE
	ldy $2E.b,X		; B4 2E
	ldy $0E.b		; A4 0E
	cop $0F.b		; 02 0F
	ldy $3F.b		; A4 3F
	bit $3F.b		; 24 3F
	ldy #$3F.b		; A0 3F
	brk $31.b		; 00 31
	trb $31.b		; 14 31
	asl $2C63.w		; 0E 63 2C
	adc $38.b,S		; 63 38
	.db $62, $18, $C2		; 62 18 C2
	trb $58C6.w		; 1C C6 58
	dec $1E.b		; C6 1E
	bpl  14.b		; 10 0E
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	trb $7C00.w		; 1C 00 7C
	rti		; 40

	sei		; 78
	rti		; 40

	bit $0004.w,X		; 3C 04 00
	.db $62, $24, $66		; 62 24 66
	bit $66.b		; 24 66
	tsb $46.b		; 04 46
	tsb $46.b		; 04 46
	tsb $46.b		; 04 46
	tsb $46.b		; 04 46
	tsb $46.b		; 04 46
	bit $1820.w,X		; 3C 20 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $04.b		; 00 04
	lsr $24.b		; 46 24
	ror $04.b		; 66 04
	ror $04.b		; 66 04
	rol $10.b		; 26 10
	and ($10.b)		; 32 10
	and ($00.b)		; 32 00
	and ($00.b)		; 32 00
	and ($38.b)		; 32 38
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl   0.b		; 10 00
	ora ($08.b)		; 12 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	bmi  58.b		; 30 3A
	bit $0C2F.w		; 2C 2F 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $3C.b		; 00 3C
	php		; 08
	dec A		; 3A
	ora ($2A.b)		; 12 2A
	and $1F2725.l		; 2F 25 27 1F
	ora ($1A.b,S),Y		; 13 1A
	bpl  25.b		; 10 19
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	trb $3E.b		; 14 3E
	inc A		; 1A
	ora ($00.b,S),Y		; 13 00
	ora ($01.b),Y		; 11 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C0.b		; C0 C0
	ldy #$20.b		; A0 20
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$C0.b		; E0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	and #$2916.w		; 29 16 29
	asl $29.b,X		; 16 29
	asl $1C.b,X		; 16 1C
	ora $1C.b,S		; 03 1C
	ora $1E.b,S		; 03 1E
	ora ($1E.b,X)		; 01 1E
	brk $1E.b		; 00 1E
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $D9.b		; 00 D9
	eor ($DA.b),Y		; 51 DA
	lsr A		; 4A
	sbc ($62.b)		; F2 62
	sbc ($12.b)		; F2 12
.ACCU 8
	sep #$22		; E2 22
	inc $F21E.w,X		; FE 1E F2
	asl $0FF3.w		; 0E F3 0F
	adc [$26.b],Y		; 77 26
	adc $0D6F25.l		; 6F 25 6F 0D
	ora $1D3F0D.l,X		; 1F 0D 3F 1D
	ora $050701.l,X		; 1F 01 07 05
	ora $04.b		; 05 04
	adc $EB24.w		; 6D 24 EB
	jsl $EE22EE.l		; 22 EE 22 EE
	jsl $EE22EE.l		; 22 EE 22 EE
	jsl $FF222E.l		; 22 2E 22 FF
	sbc $FFDBFF.l,X		; FF FF DB FF
	cmp $DDFF.w,X		; DD FF DD
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $A0B000.l,X		; FF 00 B0 A0
	bvs  96.b		; 70 60
	bne  64.b		; D0 40
	bne  64.b		; D0 40
	cpx #$40.b		; E0 40
	cpy #$40.b		; C0 40
	cpy #$80.b		; C0 80
	brk $C0.b		; 00 C0
	cpx #$40.b		; E0 40
	cpx #$80.b		; E0 80
	cpx #$A0.b		; E0 A0
	cpx #$A0.b		; E0 A0
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	tsb $0C21.w		; 0C 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0E.b,X)		; 21 0E
	and $0C.b,S		; 23 0C
	and $18.b,S		; 23 18
	and $1C.b,S		; 23 1C
	adc [$20.b]		; 67 20
	adc [$1F.b]		; 67 1F
	ora ($1E.b,X)		; 01 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $38.b		; 00 38
	jsr $041C.w		; 20 1C 04
	pha		; 48
	cpy $8C08.w		; CC 08 8C
	bra -116.b		; 80 8C
	bra -116.b		; 80 8C
	bra -120.b		; 80 88
	brk $88.b		; 00 88
	rti		; 40

	iny		; C8
	rti		; 40

	iny		; C8
	bmi   0.b		; 30 00
	beq -128.b		; F0 80
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	sta $E71A70.l		; 8F 70 1A E7
	ora ($E0.b,S),Y		; 13 E0
	tas		; 1B
	sbc #$35.b		; E9 35
	cpy $C63A.w		; CC 3A C6
	plx		; FA
	ora $7067E6.l,X		; 1F E6 67 70
	brk $E7.b		; 00 E7
	asl $EE.b		; 06 EE
	brk $E6.b		; 00 E6
	ora ($C3.b,X)		; 01 C3
	brk $C1.b		; 00 C1
	brk $1D.b		; 00 1D
	ora $7D.b		; 05 7D
	ora $508F.w,Y		; 19 8F 50
	ldx $48.b,Y		; B6 48
	ldy $08.b,X		; B4 08
	rts		; 60

	tya		; 98
	bne  56.b		; D0 38
	cpy #$78.b		; C0 78
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	rts		; 60

	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bcc -16.b		; 90 F0
	brk $E0.b		; 00 E0
	jsr $20A0.w		; 20 A0 20
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	ora ($F3.b,S),Y		; 13 F3
	sta $1DA57D.l		; 8F 7D A5 1D
	sta $1ADA3A.l		; 8F 3A DA 1A
	cmp $8FE71C.l		; CF 1C E7 8F
	sbc [$CF.b]		; E7 CF
	and $5217A0.l		; 2F A0 17 52
	ora $750F4A.l		; 0F 4A 0F 75
	ora $380435.l		; 0F 35 04 38
	bra  31.b		; 80 1F
	cmp $1F.b,S		; C3 1F
	asl $FE06.w		; 0E 06 FE
	inc $FEFC.w,X		; FE FC FE
	inx		; E8
	beq -128.b		; F0 80
	cpy #$B0.b		; C0 B0
	bcs -16.b		; B0 F0
	beq -16.b		; F0 F0
	beq   2.b		; F0 02
	sbc $F8FF34.l,X		; FF 34 FF F8
	ror $7E80.w,X		; 7E 80 7E
	bra 120.b		; 80 78
	bra 120.b		; 80 78
	rts		; 60

	sed		; F8
	cpx #$F8.b		; E0 F8
	cmp [$08.b],Y		; D7 08
	eor ($0C.b,S),Y		; 53 0C
	phk		; 4B
	tsb $2B.b		; 04 2B
	tsb $05.b		; 04 05
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	jmp ($6C30.w)		; 6C 30 6C
	bmi 104.b		; 30 68
	bpl  72.b		; 10 48
	brk $48.b		; 00 48
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	bcc -40.b		; 90 D8
	bmi  32.b		; 30 20
	clc		; 18
	php		; 08
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $3000.w		; 20 00 30
	bpl -32.b		; 10 E0
	rti		; 40

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
	trb $0E31.w		; 1C 31 0E
	and $0C.b,S		; 23 0C
	and $08.b,S		; 23 08
	jsl $18261C.l		; 22 1C 26 18
	rol $18.b		; 26 18
	bit $10.b		; 24 10
	stz $0E.b		; 64 0E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $38.b		; 00 38
	jsr $0001.w		; 20 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	asl $0D00.w		; 0E 00 0D
	ora ($0C.b,X)		; 01 0C
	ora ($1C.b,X)		; 01 1C
	brk $1E.b		; 00 1E
	tsb $1E.b		; 04 1E
	tsb $2B.b		; 04 2B
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	ora ($14.b,X)		; 01 14
	tsb $3B.b		; 04 3B
	cop $37.b		; 02 37
	php		; 08
	and [$08.b],Y		; 37 08
	eor [$28.b],Y		; 57 28
	eor [$28.b],Y		; 57 28
	adc $176F00.l,X		; 7F 00 6F 17
	pla		; 68
	bpl   6.b		; 10 06
	trb $08.b		; 14 08
	bpl   8.b		; 10 08
	bpl  40.b		; 10 28
	bpl  40.b		; 10 28
	bpl   0.b		; 10 00
	bmi  23.b		; 30 17
	jsr $2717.w		; 20 17 27
	brk $C0.b		; 00 C0
	rti		; 40

	bvs -112.b		; 70 90
	dey		; 88
	clv		; B8
	beq  -4.b		; F0 FC
	sed		; F8
	jmp ($00F8.w,X)		; 7C F8 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	ldy #$F0.b		; A0 F0
	sei		; 78
	sed		; F8
	bmi  -8.b		; 30 F8
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $3EC100.l,X		; 7F 00 C1 3E
	rti		; 40

	lda $9BBC43.l,X		; BF 43 BC 9B
	adc $00.b		; 65 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $BF.b		; 00 BF
	rti		; 40

	bit $00C2.w,X		; 3C C2 00
	cpx $0000.w		; EC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $1F.b		; 00 1F
	cpx #$58.b		; E0 58
	lda [$BA.b]		; A7 BA
	eor $00.b		; 45 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $A7.b		; 00 A7
	bvc  69.b		; 50 45
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $C8.b		; 00 C8
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $383B.w		; 0E 3B 38
	stz $44.b,X		; 74 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and $387F00.l,X		; 3F 00 7F 38
	ora ($0B.b,S),Y		; 13 0B
	jsl $1B5B06.l		; 22 06 5B 1B
	ora $356D.w		; 0D 6D 35
	sta $E4.b		; 85 E4
	ora $B0.b		; 05 B0
	bit $C1.b,X		; 34 C1
	sbc ($0B.b,S),Y		; F3 0B
	tsb $03.b		; 04 03
	ora $3E0B.w,X		; 1D 0B 3E
	ora $1F.b		; 05 1F
	stz $0F.b,X		; 74 0F
	beq  15.b		; F0 0F
	cpy #$0F.b		; C0 0F
	brk $0F.b		; 00 0F
	cmp ($F9.b)		; D2 F9
	and #$2E.b		; 29 2E
	adc [$11.b],Y		; 77 11
	tsx		; BA
	txs		; 9A
	lsr $354E.w,X		; 5E 4E 35
	bvs 127.b		; 70 7F
	txa		; 8A
	sbc $28EE84.l,X		; FF 84 EE 28
	beq -64.b		; F0 C0
	sbc $F7EC.w,X		; FD EC F7
	adc ($7B.b,X)		; 61 7B
	lda ($3A.b),Y		; B1 3A
	dex		; CA
	asl A		; 0A
	bra   4.b		; 80 04
	bcs -72.b		; B0 B8
	adc $D4.b,S		; 63 D4
	and ($CA.b)		; 32 CA
	ora ($BC.b,X)		; 01 BC
	rts		; 60

	cmp $2A.b,X		; D5 2A
	rol $88.b,X		; 36 88
	inx		; E8
	trb $FF.b		; 14 FF
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc [$00.b],Y		; 77 00
	rtl		; 6B

	brk $7A.b		; 00 7A
	brk $FB.b		; 00 FB
	brk $17.b		; 00 17
	brk $91.b		; 00 91
	and ($1D.b,X)		; 21 1D
	bit $19.b		; 24 19
	mvp $49,$3A		; 44 3A 49
	rol $4A.b,X		; 36 4A
	bit $8A.b,X		; 34 8A
	stz $89.b,X		; 74 89
	ror $91.b,X		; 76 91
	ror $031C.w		; 6E 1C 03
	clc		; 18
	ora $3A.b,S		; 03 3A
	ora ($36.b,X)		; 01 36
	brk $35.b		; 00 35
	ora ($75.b,X)		; 01 75
	ora ($76.b,X)		; 01 76
	brk $6E.b		; 00 6E
	brk $CC.b		; 00 CC
	cpx $F1F2.w		; EC F2 F1
	cpx $5AA4.w		; EC A4 5A
	lsr A		; 4A
	dec A		; 3A
	inc A		; 1A
	sbc $B4.b,X		; F5 B4
	sbc $B4.b,X		; F5 B4
	sbc $8C64.w		; ED 64 8C
	sbc ($70.b,S),Y		; F3 70
	sbc $0FF384.l,X		; FF 84 F3 0F
	sbc $9F.b		; E5 9F
	cmp $BF.b		; C5 BF
	phd		; 0B
	lda $1B7F0B.l,X		; BF 0B 7F 1B
	jmp ($9C7E.w,X)		; 7C 7E 9C
	stz $6466.w		; 9C 66 64
	txs		; 9A
	txs		; 9A
	cmp $8C.b		; C5 8C
	cmp ($94.b),Y		; D1 94
	lda ($92.b,S),Y		; B3 92
	plb		; AB
	bit #$7C.b		; 89 7C
	sbc $20FF08.l,X		; FF 08 FF 20
	sbc $E07F98.l,X		; FF 98 7F E0
	ror $6EF0.w,X		; 7E F0 6E
	plx		; FA
	jmp ($74FD.w)		; 6C FD 74
	pea $0273.w		; F4 73 02
	ora [$F8.b]		; 07 F8
	sed		; F8
	phk		; 4B
	xce		; FB
	and ($67.b)		; 32 67
	ora #$03.b		; 09 03
	sty $9A20.w		; 8C 20 9A
	rti		; 40

	jsr $007B.w		; 20 7B 00
	sbc $0BFF70.l,X		; FF 70 FF 0B
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	adc [$78.b],Y		; 77 78
	rtl		; 6B

	sbc $16.b,X		; F5 16
	and ($16.b),Y		; 31 16
	and ($34.b),Y		; 31 34
	adc $737C.w,Y		; 79 7C 73
	sei		; 78
	eor ($58.b,S),Y		; 53 58
	phy		; 5A
	eor $127E.w,Y		; 59 7E 12
	clc		; 18
	ora ($1C.b,X)		; 01 1C
	tsb $28.b		; 04 28
	brk $60.b		; 00 60
	ora ($60.b,X)		; 01 60
	ora $70.b,S		; 03 70
	and $78.b,S		; 23 78
	jsl $73F831.l		; 22 31 F8 73
	sed		; F8
	adc $F8.b,S		; 63 F8
	and $B0.b,S		; 23 B0
	and ($B2.b,X)		; 21 B2
	and ($B2.b,X)		; 21 B2
	ora ($B2.b,X)		; 01 B2
	ora ($A2.b,X)		; 01 A2
	rti		; 40

	eor [$00.b]		; 47 00
	ora [$10.b]		; 07 10
	ora [$40.b],Y		; 17 40
	ora $400F40.l		; 0F 40 0F 40
	ora $C02F60.l		; 0F 60 2F C0
	sta $02022D.l,X		; 9F 2D 02 02
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
	brk $C1.b		; 00 C1
	and $013F40.l,X		; 3F 40 3F 01
	and $0B3C04.l,X		; 3F 04 3C 0B
	sec		; 38
	ora [$30.b],Y		; 17 30
	asl $3D60.w		; 0E 60 3D
	adc ($1A.b,X)		; 61 1A
	inc A		; 1A
	ora $121D.w,X		; 1D 1D 12
	ora ($0B.b)		; 12 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $203F00.l		; 0F 00 3F 20
	asl $0500.w,X		; 1E 00 05
	cop $05.b		; 02 05
	cop $0C.b		; 02 0C
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$09.b]		; 07 09
	asl $11.b		; 06 11
	asl $0102.w		; 0E 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $FA00.w		; 0E 00 FA
	tsb $74.b		; 04 74
	dey		; 88
	jmp ($D582.w,X)		; 7C 82 D5
	dec A		; 3A
	sta $DB00.w,X		; 9D 00 DB
	mvp $60,$AF		; 44 AF 60
	pei ($33.b)		; D4 33
	ora $E8.b		; 05 E8
	phb		; 8B
	bvc -125.b		; 50 83
	brk $3B.b		; 00 3B
	and ($73.b)		; 32 73
	tsb $3F.b		; 04 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	ora $AD.b,S		; 03 AD
	eor ($6D.b)		; 52 6D
	sta ($77.b)		; 92 77
	dey		; 88
	lda $58.b,S		; A3 58
	lda $2C48.w,X		; BD 48 2C
	cld		; D8
	sta $7CFC.w,Y		; 99 FC 7C
	sbc $0152.w,Y		; F9 52 01
	sta ($80.b)		; 92 80
	brk $0C.b		; 00 0C
	bpl  12.b		; 10 0C
	brk $9A.b		; 00 9A
	bra  63.b		; 80 3F
	bit $1B.b		; 24 1B
	brk $7F.b		; 00 7F
	cpy $10.b		; C4 10
	mvp $54,$A0		; 44 A0 54
	tay		; A8
	ldy $08.b,X		; B4 08
	clv		; B8
	brk $50.b		; 00 50
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$10.b		; C0 10
	tay		; A8
	ldy #$18.b		; A0 18
	tay		; A8
	brk $08.b		; 00 08
	rti		; 40

	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	rti		; 40

	ldy #$7B.b		; A0 7B
	tda		; 7B
	asl $1D3F.w,X		; 1E 3F 1D
	bit $3E1C.w,X		; 3C 1C 3E
	asl $071E.w		; 0E 1E 07
	ora $210717.l		; 0F 17 07 21
	tas		; 1B
	ror $0604.w,X		; 7E 04 06
	sei		; 78
	brk $7E.b		; 00 7E
	tsb $0E7F.w		; 0C 7F 0E
	and $031F06.l,X		; 3F 06 1F 03
	ora $330718.l		; 0F 18 07 33
	cmp [$F3.b]		; C7 F3
	ora [$FB.b]		; 07 FB
	ora $F9.b,S		; 03 F9
	ora $7D.b,S		; 03 7D
	bra 124.b		; 80 7C
	and $0504.w,Y		; 39 04 05
	jmp.w [$019D]		; DC 9D 01
	ora $010F01.l		; 0F 01 0F 01
	ora [$00.b]		; 07 00
	ora [$80.b]		; 07 80
	ora $38.b,S		; 03 38
	sta $3C.b,S		; 83 3C
	xce		; FB
	trb $CFE3.w		; 1C E3 CF
	bcs -49.b		; B0 CF
	bcs -11.b		; B0 F5
	dey		; 88
	nop		; EA
	cmp $76.b,X		; D5 76
	bit #$E9.b		; 89 E9
	asl $FF.b,X		; 16 FF
	dec $FE.b		; C6 FE
	inc $BA02.w		; EE 02 BA
	ora ($A2.b)		; 12 A2
	txa		; 8A
	lda ($15.b)		; B2 15
	cpy #$09.b		; C0 09
	bra  16.b		; 80 10
	ldx $00.b		; A6 00
	cmp [$44.b],Y		; D7 44
	sbc $7B807E.l		; EF 7E 80 7B
	sty $FA.b,X		; 94 FA
	ora $AE.b,X		; 15 AE
	eor ($57.b),Y		; 51 57
	tay		; A8
	sbc ($0C.b,S),Y		; F3 0C
	cmp $30FF30.l		; CF 30 FF 30
	brk $A5.b		; 00 A5
	bra  20.b		; 80 14
	tsb $91.b		; 04 91
	rti		; 40

	ora $A8.b,X		; 15 A8
	ora ($0C.b,X)		; 01 0C
	bra   0.b		; 80 00
	bit $00.b,X		; 34 00
	tyx		; BB
	sta ($6E.b),Y		; 91 6E
	sta ($6E.b),Y		; 91 6E
	sta ($6E.b),Y		; 91 6E
	sta ($6E.b),Y		; 91 6E
	sta ($6E.b),Y		; 91 6E
	tya		; 98
	adc [$58.b]		; 67 58
	and [$58.b]		; 27 58
	and [$6E.b]		; 27 6E
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $67.b		; 00 67
	brk $27.b		; 00 27
	brk $27.b		; 00 27
	brk $ED.b		; 00 ED
	stz $DB.b		; 64 DB
	iny		; C8
	stp		; DB
	iny		; C8
	stp		; DB
	pha		; 48
	cmp $E908.w,Y		; D9 08 E9
	php		; 08
	jsr ($FF00.w,X)		; FC 00 FF
	brk $7F.b		; 00 7F
	tas		; 1B
	sbc $37FF37.l,X		; FF 37 FF 37
	adc $373F37.l,X		; 7F 37 3F 37
	ora $030317.l,X		; 1F 17 03 03
	brk $00.b		; 00 00
	lda $84.b,X		; B5 84
	phy		; 5A
	rti		; 40

	cmp $DC40.w,X		; DD 40 DC
	rti		; 40

	lda $3FB02E.l		; AF 2E B0 3F
	rol $E03F.w		; 2E 3F E0
	sbc ($FE.b,X)		; E1 FE
	ply		; 7A
	sbc $FEBD.w,X		; FD BD FE
	ldx $BFFF.w,Y		; BE FF BF
	inc $FED0.w,X		; FE D0 FE
	dec $D0F0.w		; CE F0 D0
	cmp $A0DC01.l,X		; DF 01 DC A0
	sbc $68D710.l		; EF 10 D7 68
	sbc $7AE570.l		; EF 70 E5 7A
	adc $F082.w,X		; 7D 82 F0
	brk $70.b		; 00 70
	bra -128.b		; 80 80
	pld		; 2B
	brk $34.b		; 00 34
	brk $69.b		; 00 69
	brk $72.b		; 00 72
	brk $7B.b		; 00 7B
	brk $F3.b		; 00 F3
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	ror A		; 6A
	eor #$72.b		; 49 72
	eor ($53.b),Y		; 51 53
	eor ($65.b,S),Y		; 53 65
	adc $05.b		; 65 05
	ora $0D.b		; 05 0D
	ora #$0F.b		; 09 0F
	phd		; 0B
	asl A		; 0A
	brk $78.b		; 00 78
	and ($70.b)		; 32 70
	jsl $672073.l		; 22 73 20 67
	cop $07.b		; 02 07
	cop $0B.b		; 02 0B
	cop $0B.b		; 02 0B
	brk $01.b		; 00 01
	ora ($14.b,X)		; 01 14
	ldx #$D4.b		; A2 D4
	sep #$86		; E2 86
	beq  30.b		; F0 1E
	rti		; 40

	plp		; 28
	mvn $D4,$A9		; 54 A9 D4
	and $BDD0.w		; 2D D0 BD
	cpy #$C0.b		; C0 C0
	sta $401F00.l,X		; 9F 00 1F 40
	eor $803F80.l,X		; 5F 80 3F 80
	and $803F00.l,X		; 3F 00 3F 80
	sta $001F80.l,X		; 9F 80 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $03.b		; 02 03
	asl $1E.b		; 06 1E
	trb $2928.w		; 1C 28 29
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tas		; 1B
	brk $3F.b		; 00 3F
	ora ($7A.b),Y		; 11 7A
	cmp $30.b,S		; C3 30
	sta [$70.b]		; 87 70
	ora $801FC1.l,X		; 1F C1 1F 80
	and $1A7E19.l,X		; 3F 19 7E 1A
	jsr ($FC31.w,X)		; FC 31 FC
	bit $7C00.w,X		; 3C 00 7C
	tsb $E2.b		; 04 E2
	cop $E4.b		; 02 E4
	ora $EC.b		; 05 EC
	and $43C0.w		; 2D C0 43
	ldy #$A3.b		; A0 A3
	php		; 08
	phd		; 0B
	inc $0F.b		; E6 0F
	adc [$0F.b]		; 67 0F
	adc ($1F.b,S),Y		; 73 1F
	lda $3F.b,S		; A3 3F
	sta $3E.b		; 85 3E
	eor $BA7E.w,X		; 5D 7E BA
	jsr ($F974.w,X)		; FC 74 F9
	beq   7.b		; F0 07
	beq   7.b		; F0 07
	cpx #$07.b		; E0 07
	bne  23.b		; D0 17
	cpx #$2F.b		; E0 2F
	bra  31.b		; 80 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	bcc  32.b		; 90 20
	bpl -96.b		; 10 A0
	php		; 08
	bcs -120.b		; B0 88
	bmi -128.b		; 30 80
	bmi  32.b		; 30 20
	rti		; 40

	jsr $40C0.w		; 20 C0 40
	bra   0.b		; 80 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rts		; 60

	cpx #$00.b		; E0 00
	ldy #$00.b		; A0 00
	cpx #$00.b		; E0 00
	ldy #$40.b		; A0 40
	ldy #$00.b		; A0 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$A0.b		; C0 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$58.b		; C0 58
	jmp.w [$249C]		; DC 9C 24
	jsr $8010.w		; 20 10 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	jsr ($FE40.w,X)		; FC 40 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jmp $4C33.w		; 4C 33 4C
	and ($2E.b,S),Y		; 33 2E
	ora ($2E.b),Y		; 11 2E
	ora ($15.b),Y		; 11 15
	php		; 08
	trb $08.b		; 14 08
	php		; 08
	tsb $04.b		; 04 04
	brk $33.b		; 00 33
	brk $33.b		; 00 33
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($7F.b,X)		; 01 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra -65.b		; 80 BF
	rti		; 40

	sbc $047B00.l,X		; FF 00 7B 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $5D.b		; 00 5D
	cmp ($5E.b,X)		; C1 5E
	cpy #$3E.b		; C0 3E
	cpx #$0F.b		; E0 0F
	cpx #$17.b		; E0 17
	beq  11.b		; F0 0B
	sed		; F8
	sta $7C.b		; 85 7C
	.db $82, $7E, $BE		; 82 7E BE
	bra  63.b		; 80 3F
	brk $5F.b		; 00 5F
	rti		; 40

	and $404F20.l,X		; 3F 20 4F 40
	sta [$10.b],Y		; 97 10
	pld		; 2B
	plp		; 28
	and $34.b,X		; 35 34
	php		; 08
	beq  43.b		; F0 2B
	beq -75.b		; F0 B5
	sed		; F8
	mvn $9A,$79		; 54 79 9A
	bit $3EAC.w,X		; 3C AC 3E
	cmp $D61E.w		; CD 1E D6
	ora $807F00.l,X		; 1F 00 7F 80
	lda $803F00.l,X		; BF 00 3F 80
	ora $C01FC0.l,X		; 1F C0 1F C0
	ora $E00FE0.l		; 0F E0 0F E0
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	rti		; 40

	jsr $0040.w		; 20 40 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	lda #$0C.b		; A9 0C
	ora $04.b,X		; 15 04
	trb $1204.w		; 1C 04 12
	cop $0E.b		; 02 0E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  12.b		; 10 0C
	php		; 08
	tsb $0E08.w		; 0C 08 0E
	tsb $0002.w		; 0C 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra  88.b		; 80 58
	bra -72.b		; 80 B8
	rti		; 40

	cpx $9840.w		; EC 40 98
	stz $7E.b		; 64 7E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $EE00.w,X		; FE 00 EE
	brk $6E.b		; 00 6E
	brk $66.b		; 00 66
	brk $76.b		; 00 76
	brk $17.b		; 00 17
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
	inx		; E8
	sbc ($D1.b,S),Y		; F3 D1
	inc $A2.b		; E6 A2
	cpy $94.b		; C4 94
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FE00.l,X		; FF 00 FE 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
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
	brk $07.b		; 00 07
	brk $1B.b		; 00 1B
	tsb $26.b		; 04 26
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	ora $0006.w,Y		; 19 06 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3E.b		; 00 3E
	ora ($CF.b,X)		; 01 CF
	bmi 120.b		; 30 78
	sta [$C3.b]		; 87 C3
	bit $E01F.w,X		; 3C 1F E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bmi  15.b		; 30 0F
	sta [$78.b]		; 87 78
	bit $E0C0.w,X		; 3C C0 E0
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $F8.b		; 00 F8
	ora [$00.b]		; 07 00
	sbc $1F3CC3.l,X		; FF C3 3C 1F
	cpx #$FF.b		; E0 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $3C.b		; 00 3C
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $F0.b		; 00 F0
	ora $E3C23D.l		; 0F 3D C2 E3
	trb $09F6.w		; 1C F6 09
	inc $09.b,X		; F6 09
	xce		; FB
	tsb $EF.b		; 04 EF
	ora $0000.w,Y		; 19 00 00
	ora $01C200.l		; 0F 00 C2 01
	trb $0903.w		; 1C 03 09
	tsb $09.b		; 04 09
	tsb $04.b		; 04 04
	brk $10.b		; 00 10
	ora ($7E.b),Y		; 11 7E
	sta ($7E.b,X)		; 81 7E
	sta [$7B.b]		; 87 7B
	phb		; 8B
	tda		; 7B
	phb		; 8B
	lsr $5B8C.w,X		; 5E 8C 5B
	sta $2A.b,S		; 83 2A
	cmp ($A0.b,X)		; C1 A0
	eor ($80.b,X)		; 41 80
	brk $87.b		; 00 87
	ora ($8E.b,X)		; 01 8E
	tsb $8F.b		; 04 8F
	tsb $8F.b		; 04 8F
	ora $83.b,S		; 03 83
	tsb $C0.b		; 04 C0
	ora [$40.b]		; 07 40
	ora $17.b,S		; 03 17
	xce		; FB
	sbc [$F8.b],Y		; F7 F8
.ACCU 8
.INDEX 8
	sep #$F9		; E2 F9
	ora $F3.b		; 05 F3
	ldy #$C7.b		; A0 C7
	and ($80.b,X)		; 21 80
	ldy $9183.w,X		; BC 83 91
	cmp [$2B.b]		; C7 2B
	plp		; 28
	php		; 08
	php		; 08
	bpl  23.b		; 10 17
	cpy #$CF.b		; C0 CF
	bra  15.b		; 80 0F
	brk $CF.b		; 00 CF
	brk $C7.b		; 00 C7
	brk $EF.b		; 00 EF
	sep #$4B		; E2 4B
	bra 100.b		; 80 64
	adc $F2.b,S		; 63 F2
	pea $F9FA.w		; F4 FA F9
	sbc $3A3DFE.l,X		; FF FE 3D 3A
	cmp $F5C0.w		; CD C0 F5
	rti		; 40

	and $21FF00.l,X		; 3F 00 FF 21
	jsr ($FA73.w,X)		; FC 73 FA
	sec		; 38
	jsr ($FE18.w,X)		; FC 18 FE
	brk $FE.b		; 00 FE
	sta ($FE.b,X)		; 81 FE
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	jmp $A22A1C.l		; 5C 1C 2A A2
	rol $E7.b,X		; 36 E7
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	jsr ($FE00.w,X)		; FC 00 FE
	sta $5B7C.w,X		; 9D 7C 5B
	sbc [$15.b],Y		; F7 15
	sbc #$A9.b		; E9 A9
	cmp $9649.w		; CD 49 96
	sta ($2B.b)		; 92 2B
	jsl $4F445D.l		; 22 5D 44 4F
	eor $FB.b,S		; 43 FB
	and [$1F.b],Y		; 37 1F
	asl A		; 0A
	lda $367F16.l,X		; BF 16 7F 36
	sbc $DDFF6D.l,X		; FF 6D FF DD
	sbc $B0F3BB.l,X		; FF BB F3 B0
	bit $04.b,X		; 34 04
	lda [$20.b]		; A7 20
	plb		; AB
	and ($AD.b,X)		; 21 AD
	jsr $26A7.w		; 20 A7 26
	lda $F0F73F.l,X		; BF 3F F7 F0
	cmp $8787C0.l,X		; DF C0 87 87
	sed		; F8
	cld		; D8
	sbc $FEDC.w,X		; FD DC FE
	dec $D8FE.w,X		; DE FE D8
	sed		; F8
	cpy #$EF.b		; C0 EF
	brk $3F.b		; 00 3F
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	beq  -4.b		; F0 FC
	inc $FF3F.w,X		; FE 3F FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpy #$FE.b		; C0 FE
	sei		; 78
	sbc $00FF0E.l,X		; FF 0E FF 00
	sbc $000300.l,X		; FF 00 03 00
	ora $1D18.w		; 0D 18 1D
	bit $2C25.w		; 2C 25 2C
	ora $36.b		; 05 36
	ora [$2C.b]		; 07 2C
	ora [$0C.b]		; 07 0C
	ora [$0B.b]		; 07 0B
	phd		; 0B
	asl $04.b		; 06 04
	asl $3E04.w,X		; 1E 04 3E
	clc		; 18
	asl $0C18.w,X		; 1E 18 0C
	php		; 08
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	ora $C08004.l		; 0F 04 80 C0
	cpx #$F0.b		; E0 F0
	trb $0E7C.w		; 1C 7C 0E
	asl $0E06.w,X		; 1E 06 0E
	tsb $04.b		; 04 04
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	beq -64.b		; F0 C0
	jsr ($FE0C.w,X)		; FC 0C FE
	tsb $7F.b		; 04 7F
	asl $1F.b		; 06 1F
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	plp		; 28
	php		; 08
	bit $04.b		; 24 04
	trb $0004.w		; 1C 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  28.b		; 10 1C
	clc		; 18
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	adc ($18.b)		; 72 18
	and ($18.b)		; 32 18
	and ($08.b)		; 32 08
	and ($00.b)		; 32 00
	and ($00.b)		; 32 00
	ora ($08.b)		; 12 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	bit $0C20.w		; 2C 20 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	cpy #$08.b		; C0 08
	beq  52.b		; F0 34
	iny		; C8
	sty $9670.w		; 8C 70 96
	pla		; 68
	lda #$56.b		; A9 56
	lda $0036.w,Y		; B9 36 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $C8.b		; 00 C8
	bmi  32.b		; 30 20
	cld		; D8
	pla		; 68
	sty $56.b		; 84 56
	bpl   6.b		; 10 06
	rti		; 40

	pha		; 48
	and [$43.b],Y		; 37 43
	bit $7887.w,X		; 3C 87 78
	sta $E11E70.l		; 8F 70 1E E1
	ora $C23DE0.l,X		; 1F E0 3D C2
	and $37C2.w,X		; 3D C2 37
	php		; 08
	bit $7800.w,X		; 3C 00 78
	brk $70.b		; 00 70
	brk $E1.b		; 00 E1
	brk $E0.b		; 00 E0
	ora ($C2.b,X)		; 01 C2
	ora ($C2.b,X)		; 01 C2
	ora ($F8.b,X)		; 01 F8
	ora [$E3.b]		; 07 E3
	trb $708F.w		; 1C 8F 70
	eor $40BFA0.l,X		; 5F A0 BF 40
	lda $807F40.l,X		; BF 40 7F 80
	adc $000780.l,X		; 7F 80 07 00
	trb $7000.w		; 1C 00 70
	brk $A0.b		; 00 A0
	rti		; 40

	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FC.b,S		; 03 FC
	trb $70F1.w		; 1C F1 70
	sbc [$00.b],Y		; F7 00
	cpy $8034.w		; CC 34 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora $7F.b,S		; 03 7F
	ora $070E0E.l		; 0F 0E 0E 07
	ora $F1.b,S		; 03 F1
	ora ($E3.b,S),Y		; 13 E3
	clc		; 18
	sbc ($08.b,S),Y		; F3 08
	sbc $30F4.w,Y		; F9 F4 30
	asl $F8.b		; 06 F8
	brk $F6.b		; 00 F6
	rol $E8.b,X		; 36 E8
	jmp ($030F.w)		; 6C 0F 03
	ora $000718.l,X		; 1F 18 07 00
	sbc ($00.b,S),Y		; F3 00
	sbc $C0F8.w,Y		; F9 F8 C0
	cmp [$34.b]		; C7 34
	ora $F01F60.l		; 0F 60 1F F0
	brk $38.b		; 00 38
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	ora ($05.b,X)		; 01 05
	ora ($05.b,X)		; 01 05
	ora ($05.b,X)		; 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $6B.b		; 02 6B
	cmp [$79.b]		; C7 79
	brk $BD.b		; 00 BD
	and $DC.b,S		; 23 DC
	bpl -49.b		; 10 CF
	phd		; 0B
	cmp $AD19.w,X		; DD 19 AD
	ora #$9E.b		; 09 9E
	asl $00.b,X		; 16 00
	sbc [$00.b],Y		; F7 00
	sta [$60.b],Y		; 97 60
	eor [$70.b]		; 47 70
	adc $7B.b,S		; 63 7B
	bvs 123.b		; 70 7B
	.db $62, $7B, $72		; 62 7B 72
	adc [$61.b],Y		; 77 61
	sbc ($F8.b,S),Y		; F3 F8
	sbc ($74.b,S),Y		; F3 74
	sbc [$A0.b]		; E7 A0
	sbc $40.b,S		; E3 40
	cpx #$20.b		; E0 20
	cpy #$90.b		; C0 90
	rts		; 60

	rts		; 60

	mvn $E0,$50		; 54 50 E0
	sbc $FA64.w,X		; FD 64 FA
	bra -13.b		; 80 F3
	rti		; 40

	beq   0.b		; F0 00
	bvs -128.b		; 70 80
	sec		; 38
	cpx #$98.b		; E0 98
	sed		; F8
	tay		; A8
	cmp [$57.b],Y		; D7 57
	cmp $37B15F.l,X		; DF 5F B1 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $277B2B.l,X		; 7F 2B 7B 27
	bmi  15.b		; 30 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	ora $010300.l,X		; 1F 00 03 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	inc $FE00.w,X		; FE 00 FE
	sbc ($3E.b,X)		; E1 3E
	cmp $A07E.w,X		; DD 7E A0
	ror $E280.w,X		; 7E 80 E2
	sta ($E3.b,X)		; 81 E3
	cpy #$C3.b		; C0 C3
	ora $010C.w		; 0D 0C 01
	brk $3D.b		; 00 3D
	trb $2061.w		; 1C 61 20
	eor ($40.b,X)		; 41 40
	cmp ($40.b,X)		; C1 40
	cpy #$40.b		; C0 40
	cmp ($01.b,X)		; C1 01
	tsx		; BA
	tsb $DC.b		; 04 DC
	brk $E0.b		; 00 E0
	bpl   0.b		; 10 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	bra -64.b		; 80 C0
	jsr $00C0.w		; 20 C0 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bit $C3.b,X		; 34 C3
	ldy $43.b		; A4 43
	ldy $43.b		; A4 43
	stz $03.b		; 64 03
	ror $01.b		; 66 01
	and ($01.b)		; 32 01
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,X)		; 01 00
	cmp $00.b,S		; C3 00
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	and $153D08.l		; 2F 08 3D 15
	and $0F01.w,Y		; 39 01 0F
	cop $03.b		; 02 03
	ora ($06.b,X)		; 01 06
	cop $07.b		; 02 07
	ora $03.b,S		; 03 03
	brk $18.b		; 00 18
	bpl  23.b		; 10 17
	cop $07.b		; 02 07
	asl $02.b		; 06 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	trb $1CB0.w		; 1C B0 1C
	bmi  28.b		; 30 1C
	bit $2A2C.w		; 2C 2C 2A
	jsl $0E1A1E.l		; 22 1E 1A 0E
	asl $0000.w		; 0E 00 00
	bmi  32.b		; 30 20
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	bit $3E10.w,X		; 3C 10 3E
	trb $041E.w		; 1C 1E 04
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpx $5FE4.w		; EC E4 5F
	eor ($B1.b),Y		; 51 B1
	bpl 112.b		; 10 70
	ldx $0C3E.w		; AE 3E 0C
	ora $000000.l,X		; 1F 00 00 00
	brk $E0.b		; 00 E0
	brk $58.b		; 00 58
	clc		; 18
	ldx $CFA0.w		; AE A0 CF
	rti		; 40

	cmp ($00.b,X)		; C1 00
	sbc $03.b,S		; E3 03
	rti		; 40

	ora $C01FC1.l,X		; 1F C1 1F C0
	ora $C01FC0.l,X		; 1F C0 1F C0
	bpl -64.b		; 10 C0
	bpl  64.b		; 10 40
	bpl  64.b		; 10 40
	bpl -20.b		; 10 EC
	tsb $02E2.w		; 0C E2 02
	sbc $00E00F.l		; EF 0F E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	rti		; 40

	bvs   0.b		; 70 00
	clc		; 18
	bcc -104.b		; 90 98
	rts		; 60

	sed		; F8
	cpy #$F0.b		; C0 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$20.b		; A0 20
	beq  16.b		; F0 10
	rts		; 60

	brk $90.b		; 00 90
	bcc  32.b		; 90 20
	jsr $0000.w		; 20 00 00
	ora [$03.b]		; 07 03
	ora $06.b		; 05 06
	asl $07.b		; 06 07
	ora [$06.b]		; 07 06
	asl $06.b		; 06 06
	tsb $0406.w		; 0C 06 04
	tsb $0C0C.w		; 0C 0C 0C
	ora $0C.b,S		; 03 0C
	brk $0F.b		; 00 0F
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	tsb $0F.b		; 04 0F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	bra -127.b		; 80 81
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bra   3.b		; 80 03
	brk $83.b		; 00 83
	brk $80.b		; 00 80
	ora $80.b,S		; 03 80
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	sbc $03FDFF.l,X		; FF FF FD 03
	and ($FC.b,S),Y		; 33 FC
	inc $F978.w,X		; FE 78 F9
	bcs 115.b		; B0 73
	rti		; 40

	cmp $005600.l,X		; DF 00 56 00
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	and ($79.b),Y		; 31 79
	sta [$37.b]		; 87 37
	cmp $AFAF8F.l		; CF 8F AF AF
	lda $E6E2AF.l		; AF AF E2 E6
	cmp ($E3.b,X)		; C1 E3
	bra  65.b		; 80 41
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cmp ($F8.b,X)		; C1 F8
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $38C700.l,X		; 3F 00 C7 38
	and $0CF3C0.l,X		; 3F C0 F3 0C
	ldx $C141.w,Y		; BE 41 C1
	rol $E01F.w,X		; 3E 1F E0
	ror $0081.w,X		; 7E 81 00
	brk $38.b		; 00 38
	ora [$C0.b]		; 07 C0
	and $41030C.l,X		; 3F 0C 03 41
	rol $C03E.w,X		; 3E 3E C0
	cpx #$00.b		; E0 00
	sta ($00.b,X)		; 81 00
	beq   0.b		; F0 00
	cmp $FF0030.l		; CF 30 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	inc $FF01.w,X		; FE 01 FF
	brk $E0.b		; 00 E0
	ora $300000.l,X		; 1F 00 00 30
	cpy #$FF.b		; C0 FF
	brk $00.b		; 00 00
	sbc $0100FF.l,X		; FF FF 00 01
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	cpx #$01.b		; E0 01
	brk $06.b		; 00 06
	ora ($FD.b,X)		; 01 FD
	cop $00.b		; 02 00
	sbc $000FF0.l,X		; FF F0 0F 00
	sbc $3F00FF.l,X		; FF FF 00 3F
	cpy #$00.b		; C0 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $DD.b		; 00 DD
	jsl $FF0DF2.l		; 22 F2 0D FF
	brk $06.b		; 00 06
	sbc $E31C.w,Y		; F9 1C E3
	adc $E186.w,Y		; 79 86 E1
	asl $7887.w,X		; 1E 87 78
	jsl $100D1D.l		; 22 1D 0D 10
	brk $00.b		; 00 00
	sbc $E300.w,Y		; F9 00 E3
	brk $86.b		; 00 86
	brk $1E.b		; 00 1E
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	ror $07E4.w,X		; 7E E4 07
	sbc $007F00.l,X		; FF 00 7F 00
	bra -128.b		; 80 80
	ora ($FF.b,X)		; 01 FF
	brk $07.b		; 00 07
	bra -128.b		; 80 80
	bcc  16.b		; 90 10
	plx		; FA
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $06.b		; 00 06
	asl $00.b		; 06 00
	brk $1E.b		; 00 1E
	and ($1E.b,X)		; 21 1E
	and $0C1E.w		; 2D 1E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $0C0C.w,X		; 1E 0C 0C
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	brk $BC.b		; 00 BC
	brk $FE.b		; 00 FE
	bra  -3.b		; 80 FD
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	bvs -116.b		; 70 8C
	tsb $0202.w		; 0C 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	clc		; 18
	clc		; 18
	sei		; 78
	inx		; E8
	cli		; 58
	cld		; D8
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $B8.b		; 00 B8
	bcc 120.b		; 90 78
	jsr $0070.w		; 20 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $1203.w		; 0C 03 12
	ora $0B34.w		; 0D 34 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $0B02.w		; 0D 02 0B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -100.b		; 80 9C
	rts		; 60

	txs		; 9A
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	stz $C03C.w		; 9C 3C C0
	sei		; 78
	bra 112.b		; 80 70
	bra  96.b		; 80 60
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$40.b		; E0 40
	sei		; 78
	bne  30.b		; D0 1E
	mvn $9D,$47		; 54 47 9D
	cmp ($2F.b,X)		; C1 2F
	cpx #$17.b		; E0 17
	bvs   4.b		; 70 04
	bit $0000.w,X		; 3C 00 00
	ldy #$20.b		; A0 20
	inx		; E8
	php		; 08
	tsx		; BA
	cop $7E.b		; 02 7E
	rti		; 40

	eor $202F40.l,X		; 5F 40 2F 20
	phd		; 0B
	php		; 08
	tsb $141C.w		; 0C 1C 14
	bit $643C.w,X		; 3C 3C 64
	stz $44.b		; 64 44
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tsb $003E.w		; 0C 3E 00
	ror $FE04.w,X		; 7E 04 FE
	rti		; 40

	inc $E440.w,X		; FE 40 E4
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $000800.l		; 0F 00 08 00
	ora [$00.b],Y		; 17 00
	adc $50DA08.l		; 6F 08 DA 50
	lda $A1.b,X		; B5 A1
	and $0301.w		; 2D 01 03
	ora $00.b,S		; 03 00
	brk $07.b		; 00 07
	ora [$0B.b]		; 07 0B
	phd		; 0B
	clc		; 18
	bpl 119.b		; 10 77
	and [$EF.b]		; 27 EF
	lsr $DEDF.w		; 4E DF DE
	sbc $7550.w,Y		; F9 50 75
	jsr $21FB.w		; 20 FB 21
	sbc $BD60.w,X		; FD 60 BD
	ldy #$DE.b		; A0 DE
	bcc  83.b		; 90 53
	ora ($DB.b)		; 12 DB
	ora ($56.b)		; 12 56
	asl $AA.b		; 06 AA
	txa		; 8A
	lda $6E8C.w		; AD 8C 6E
	asl $4EEE.w		; 0E EE 4E
	sbc ($61.b),Y		; F1 61
	sbc $EDFFED.l,X		; FF ED FF ED
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rts		; 60

	rti		; 40

	bcs -96.b		; B0 A0
	tya		; 98
	bcc  72.b		; 90 48
	mvp $00,$80		; 44 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	beq  96.b		; F0 60
	beq -80.b		; F0 B0
	sbc ($0E.b),Y		; F1 0E
	dec $9131.w		; CE 31 91
	ror $F807.w		; 6E 07 F8
	ora $C03FF0.l		; 0F F0 3F C0
	adc $00FC80.l,X		; 7F 80 FC 00
	asl $3101.w		; 0E 01 31
	asl $106E.w		; 0E 6E 10
	sed		; F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	bvs 127.b		; 70 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F5.b		; 00 F5
	ora [$2A.b]		; 07 2A
	pld		; 2B
	asl $17.b,X		; 16 17
	bvs -128.b		; 70 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3F0A.w		; 0E 0A 3F
	ora $1E.b,X		; 15 1E
	plp		; 28
	cpy $FF33.w		; CC 33 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cop $16.b		; 02 16
	asl $01.b,X		; 16 01
	sbc [$03.b],Y		; F7 03
	sta [$33.b]		; 87 33
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($E7.b,X)		; 01 E7
	ora #$81.b		; 09 81
	stx $0F01.w		; 8E 01 0F
	rol $FFC0.w,X		; 3E C0 FF
	brk $F9.b		; 00 F9
	ora ($DB.b,X)		; 01 DB
	cop $F5.b		; 02 F5
	tsb $6F.b		; 04 6F
	cop $CF.b		; 02 CF
	cmp #$FF.b		; C9 FF
	sbc $0000C1.l,X		; FF C1 00 00
	brk $07.b		; 00 07
	asl $3E.b		; 06 3E
	bit $FAFE.w,X		; 3C FE FA
	inc $F4.b,X		; F6 F4
	sed		; F8
	and ($BF.b),Y		; 31 BF
	cmp ($2F.b,X)		; C1 2F
	php		; 08
	trb $1F08.w		; 1C 08 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	ora ($0B.b,S),Y		; 13 0B
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sei		; 78
	bne  30.b		; D0 1E
	pea $7D07.w		; F4 07 7D
	ora ($47.b,X)		; 01 47
	cpy #$02.b		; C0 02
	inc $0700.w,X		; FE 00 07
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	inx		; E8
	php		; 08
	plx		; FA
	cop $FE.b		; 02 FE
	brk $BF.b		; 00 BF
	bra   5.b		; 80 05
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$40.b		; E0 40
	sei		; 78
	cmp ($1F.b,S),Y		; D3 1F
	trb $0BFC.w		; 1C FC 0B
	ply		; 7A
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$20.b		; A0 20
	xba		; EB
	php		; 08
	adc $040E63.l		; 6F 63 0E 04
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	ora $2306.w,Y		; 19 06 23
	trb $314E.w		; 1C 4E 31
	eor $A822.w,X		; 5D 22 A8
	eor [$D0.b]		; 47 D0
	ora $010000.l		; 0F 00 00 01
	brk $06.b		; 00 06
	brk $1C.b		; 00 1C
	brk $31.b		; 00 31
	brk $22.b		; 00 22
	ora ($47.b,X)		; 01 47
	brk $0F.b		; 00 0F
	brk $A1.b		; 00 A1
	asl $1EA1.w,X		; 1E A1 1E
	adc $1C.b,S		; 63 1C
	.db $42, $3D		; 42 3D
	lsr $39.b		; 46 39
	lsr $39.b		; 46 39
	mvp $4C,$3B		; 44 3B 4C
	and ($1E.b,S),Y		; 33 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $3D.b		; 00 3D
	brk $39.b		; 00 39
	brk $39.b		; 00 39
	brk $3B.b		; 00 3B
	brk $33.b		; 00 33
	brk $2D.b		; 00 2D
	ora ($2D.b)		; 12 2D
	ora ($1D.b)		; 12 1D
	cop $1B.b		; 02 1B
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $12.b		; 00 12
	brk $12.b		; 00 12
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5D.b		; 00 5D
	mvp $04,$B7		; 44 B7 04
	rtl		; 6B

	php		; 08
	dec $3CC8.w,X		; DE C8 3C
	jmp ($760F.w)		; 6C 0F 76
	trb $1663.w		; 1C 63 16
	adc ($FF.b,X)		; 61 FF
	tyx		; BB
	adc $F7FF7B.l,X		; 7F 7B FF F7
	sbc $032F27.l		; EF 27 2F 03
	rol $20.b		; 26 20
	and ($21.b,X)		; 21 21
	and #$29.b		; 29 29
	ply		; 7A
	eor #$7E.b		; 49 7E
	lsr A		; 4A
	jmp ($B548.w)		; 6C 48 B5
	trb $7EE2.w		; 1C E2 7E
	cmp ($7F.b,X)		; C1 7F
	brk $C3.b		; 00 C3
	brk $80.b		; 00 80
	sbc $F9B5.w,X		; FD B5 F9
	bcs  -5.b		; B0 FB
	bcs 123.b		; B0 7B
	pla		; 68
	adc $421C.w,X		; 7D 1C 42
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $D4.b		; 00 D4
	plp		; 28
	ldy $58.b		; A4 58
	sty $68.b,X		; 94 68
	cli		; 58
	ldy #$F0.b		; A0 F0
	rti		; 40

	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	php		; 08
	beq  88.b		; F0 58
	ldy #$68.b		; A0 68
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra -64.b		; 80 C0
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	ldy #$30.b		; A0 30
	pla		; 68
	jmp ($5240.w)		; 6C 40 52
	mvn $16,$51		; 54 51 16
	bvc   0.b		; 50 00
	jsr $3020.w		; 20 20 30
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	jsr $5CF0.w		; 20 F0 5C
	beq  14.b		; F0 0E
	cpx #$0F.b		; E0 0F
	cpx #$06.b		; E0 06
	ora $010601.l		; 0F 01 06 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	ora $F1.b		; 05 F1
	asl $83BC.w		; 0E BC 83
	asl $2F21.w		; 0E 21 2F
	plp		; 28
	sta [$10.b]		; 87 10
	adc [$64.b]		; 67 64
	xce		; FB
	sed		; F8
	xce		; FB
	jsr ($000E.w,X)		; FC 0E 00
	sta $40.b,S		; 83 40
	sta ($F0.b,X)		; 81 F0
	bra  -8.b		; 80 F8
	brk $78.b		; 00 78
	jsr $70F8.w		; 20 F8 70
	jsr ($FC70.w,X)		; FC 70 FC
	lda $20DF40.l,X		; BF 40 DF 20
	adc $6892.w		; 6D 92 68
	sta [$B8.b],Y		; 97 B8
	eor [$FA.b]		; 47 FA
	ora $F9.b		; 05 F9
	asl $F1.b		; 06 F1
	asl $3F40.w		; 0E 40 3F
	jsr $921F.w		; 20 1F 92
	ora $0897.w		; 0D 97 08
	eor [$08.b]		; 47 08
	ora $08.b		; 05 08
	asl $08.b		; 06 08
	asl $8800.w		; 0E 00 88
	bvs  68.b		; 70 44
	clv		; B8
	ldy $58.b		; A4 58
	ldy $48.b,X		; B4 48
	eor ($AC.b)		; 52 AC
	phy		; 5A
	ldy $5A.b		; A4 5A
	ldy $0D.b		; A4 0D
	sbc ($70.b)		; F2 70
	brk $B8.b		; 00 B8
	brk $58.b		; 00 58
	bra  72.b		; 80 48
	bra -84.b		; 80 AC
	rti		; 40

	ldy $40.b		; A4 40
	ldy $40.b		; A4 40
	sbc ($00.b)		; F2 00
	ora $2B0B.w		; 0D 0B 2B
	pld		; 2B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	php		; 08
	and $007F0B.l,X		; 3F 0B 7F 00
	pld		; 2B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	sbc $F0.b,S		; E3 F0
	stz $7FC3.w		; 9C C3 7F
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	jmp ($F537.w,X)		; 7C 37 F5
	tsa		; 3B
	brk $C0.b		; 00 C0
	jsr ($E003.w,X)		; FC 03 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	eor #$40.b		; 49 40
	jsr ($3F00.w,X)		; FC 00 3F
	cpy #$F6.b		; C0 F6
	ora ($EE.b,X)		; 01 EE
	ora #$CC.b		; 09 CC
	ora $88.b,S		; 03 88
	ora [$71.b]		; 07 71
	ror $98E7.w		; 6E E7 98
	cmp $00C020.l,X		; DF 20 C0 00
	ora ($08.b,X)		; 01 08
	ora #$18.b		; 09 18
	adc $70.b,S		; 63 70
	sbc [$F0.b]		; E7 F0
	inc $9880.w		; EE 80 98
	brk $20.b		; 00 20
	brk $0C.b		; 00 0C
	sbc ($1C.b,S),Y		; F3 1C
	sbc $39.b,S		; E3 39
	dec $3B.b		; C6 3B
	cpy $77.b		; C4 77
	dey		; 88
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $00F305.l,X		; FF 05 F3 00
	sbc $00.b,S		; E3 00
	dec $00.b		; C6 00
	cpy $00.b		; C4 00
	dey		; 88
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -48.b		; 80 D0
	jsr $10E8.w		; 20 E8 10
	pea $CA08.w		; F4 08 CA
	bit $00.b,X		; 34 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	cpy #$10.b		; C0 10
	cpx #$08.b		; E0 08
	beq  52.b		; F0 34
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	sec		; 38
	ora [$46.b]		; 07 46
	and $0000.w,Y		; 39 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	and $0006.w,Y		; 39 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	cpx #$14.b		; E0 14
	inx		; E8
	pld		; 2B
	pei ($00.b)		; D4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	bpl -60.b		; 10 C4
	sec		; 38
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	rol $1AF8.w		; 2E F8 1A
	sec		; 38
	asl A		; 0A
	clc		; 18
	asl A		; 0A
	clc		; 18
	asl $1E08.w		; 0E 08 1E
	trb $1C.b		; 14 1C
	bpl   0.b		; 10 00
	brk $18.b		; 00 18
	bpl  12.b		; 10 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $1C.b		; 04 1C
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	adc $0A.b,X		; 75 0A
	mvp $91,$3B		; 44 3B 91
	ror $6897.w		; 6E 97 68
	lsr A		; 4A
	and $39.b,X		; 35 39
	ora $02.b		; 05 02
	asl $00.b		; 06 00
	asl $08.b		; 06 08
	ora [$3B.b]		; 07 3B
	tsb $6E.b		; 04 6E
	brk $68.b		; 00 68
	brk $31.b		; 00 31
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $E4.b		; 02 E4
	tas		; 1B
	sta [$68.b],Y		; 97 68
	and ($CC.b,S),Y		; 33 CC
	rol $BFC1.w,X		; 3E C1 BF
	rti		; 40

	jmp.w [$EE23]		; DC 23 EE
	ora ($7F.b),Y		; 11 7F
	bra   3.b		; 80 03
	jsr ($D628.w,X)		; FC 28 D6
	cpy $C100.w		; CC 00 C1
	brk $40.b		; 00 40
	brk $23.b		; 00 23
	brk $11.b		; 00 11
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	bra  28.b		; 80 1C
	cpx #$DB.b		; E0 DB
	bit $07.b		; 24 07
	sed		; F8
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	and ($DE.b,X)		; 21 DE
	sta ($6C.b,S),Y		; 93 6C
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	bit $18.b		; 24 18
	sed		; F8
	ora [$FC.b]		; 07 FC
	ora $FE.b,S		; 03 FE
	ora ($DE.b,X)		; 01 DE
	and ($6C.b,X)		; 21 6C
	ora ($0C.b,S),Y		; 13 0C
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	asl $DE.b		; 06 DE
	cmp $020502.l,X		; DF 02 05 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	cmp $72FF0C.l,X		; DF 0C FF 72
	sbc $7186.w,Y		; F9 86 71
	asl $9C09.w		; 0E 09 9C
	tad		; 5B
	and $E9C2.w		; 2D C2 E9
	asl $F3.b		; 06 F3
	tsb $1867.w		; 0C 67 18
	ora ($FC.b,X)		; 01 FC
	ora ($F8.b,X)		; 01 F8
	ora ($F8.b,X)		; 01 F8
	phk		; 4B
	sec		; 38
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	asl $C0.b		; 06 C0
	tsb $1840.w		; 0C 40 18
	bra -16.b		; 80 F0
	ora $F00FF0.l		; 0F F0 0F F0
	ora $E01FE0.l		; 0F E0 1F E0
	ora $E11EE1.l,X		; 1F E1 1E E1
	asl $3CC3.w,X		; 1E C3 3C
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	ora $001E00.l,X		; 1F 00 1E 00
	asl $3C00.w,X		; 1E 00 3C
	brk $8D.b		; 00 8D
	adc ($8D.b)		; 72 8D
	adc ($8B.b)		; 72 8B
	bvs -117.b		; 70 8B
	bvs -118.b		; 70 8A
	bvs -102.b		; 70 9A
	rts		; 60

	tya		; 98
	rts		; 60

	bpl -32.b		; 10 E0
	adc ($00.b)		; 72 00
	adc ($00.b)		; 72 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $05.b		; 00 05
	trb $3007.w		; 1C 07 30
	ora $602C70.l,X		; 1F 70 2C 60
	bpl 113.b		; 10 71
	ora [$3F.b]		; 07 3F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	phd		; 0B
	php		; 08
	ora $202F10.l,X		; 1F 10 2F 20
	ora $212F00.l,X		; 1F 00 2F 21
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	xce		; FB
	ora $FF.b,S		; 03 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sbc $70FFC0.l,X		; FF C0 FF 70
	sbc $FDFF00.l,X		; FF 00 FF FD
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8C.b		; 00 8C
	sty $3030.w		; 8C 30 30
	sta $00008F.l		; 8F 8F 00 00
	sbc $30FC08.l,X		; FF 08 FC 30
	cmp $80.b,S		; C3 80
	jmp ($F140.w)		; 6C 40 F1
	sbc ($0F.b,X)		; E1 0F
	sbc ($1B.b,S),Y		; F3 1B
	inx		; E8
	ora $FC.b		; 05 FC
	php		; 08
	brk $33.b		; 00 33
	ora $3F.b,S		; 03 3F
	and $0F1F9F.l,X		; 3F 9F 1F 0F
	asl $7073.w		; 0E 73 70
	sty $3E84.w		; 8C 84 3E
	dec A		; 3A
	sbc $24372D.l,X		; FF 2D 37 24
	adc [$54.b],Y		; 77 54
	inc $D4.b,X		; F6 D4
	jsr ($C080.w,X)		; FC 80 C0
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	and $EC00.w		; 2D 00 EC
	iny		; C8
	jmp.w [$DC88]		; DC 88 DC
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	asl $407E.w		; 0E 7E 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $98.b		; 00 98
	rts		; 60

	cpy $38.b		; C4 38
	cop $FC.b		; 02 FC
	sta ($7E.b,X)		; 81 7E
	adc ($9E.b,X)		; 61 9E
	sec		; 38
	cmp [$00.b]		; C7 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra  56.b		; 80 38
	cpy #$00FC.w		; C0 FC 00
	ror $9E00.w,X		; 7E 00 9E
	brk $C7.b		; 00 C7
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
	brk $07.b		; 00 07
	brk $3C.b		; 00 3C
	ora $00.b,S		; 03 00
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
	brk $F0.b		; 00 F0
	brk $1F.b		; 00 1F
	cpx #$0000.w		; E0 00 00
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
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $07.b		; 00 07
	bpl  12.b		; 10 0C
	inc A		; 1A
	bvs 123.b		; 70 7B
	sep #$84		; E2 84
	sec		; 38
	ora $E6.b,S		; 03 E6
	brk $9B.b		; 00 9B
	ldy #$4847.w		; A0 47 48
	ora $020700.l		; 0F 00 07 02
	adc [$03.b],Y		; 77 03
	xce		; FB
	sei		; 78
	jsr ($1FFC.w,X)		; FC FC 1F
	ora $40E484.l,X		; 1F 84 E4 40
	xce		; FB
	cpx #$1F00.w		; E0 00 1F
	cpx #$FF00.w		; E0 00 FF
	lda $E01F40.l,X		; BF 40 1F E0
	cmp ($3E.b,X)		; C1 3E
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	cpx #$FF00.w		; E0 00 FF
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	ora $E000FF.l,X		; 1F FF 00 E0
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($F2.b,X)		; 01 F2
	sbc ($7A.b)		; F2 7A
	plx		; FA
	trb $0E3C.w		; 1C 3C 0E
	asl $262E.w		; 0E 2E 26
	cmp $C7.b,S		; C3 C7
	eor ($07.b)		; 52 07
	sty $739E.w		; 8C 9E 73
	sbc $FD3B.w,Y		; F9 3B FD
	tsb $04FF.w		; 0C FF 04
	and $E31F22.l,X		; 3F 22 1F E3
	and $CCFFC2.l,X		; 3F C2 FF CC
	adc $3E7F7F.l,X		; 7F 7F 7F 3E
	ror $3D9D.w,X		; 7E 9D 3D
	tsa		; 3B
	txs		; 9A
	ora [$55.b]		; 07 55
	ror $7F2A.w		; 6E 2A 7F
	lsr $FD.b,X		; 56 FD
	rts		; 60

	cop $FF.b		; 02 FF
	trb $19FF.w		; 1C FF 19
	sbc $05FE0A.l,X		; FF 0A FE 05
	jsr ($B90B.w,X)		; FC 0B B9
	eor [$91.b],Y		; 57 91
	adc $03.b,S		; 63 03
	sec		; 38
	rti		; 40

	ldy $D0.b,X		; B4 D0
	phy		; 5A
	dey		; 88
	dex		; CA
	rti		; 40

	bit $AA20.w		; 2C 20 AA
	ldy #$90D5.w		; A0 D5 90
	cmp [$90.b],Y		; D7 90
	brk $C0.b		; 00 C0
	clc		; 18
	iny		; C8
	bit $74A4.w		; 2C A4 74
	bit $F8.b,X		; 34 F8
	cld		; D8
	jsr ($FE5C.w,X)		; FC 5C FE
	ror $6EFE.w		; 6E FE 6E
	bit $9C03.w,X		; 3C 03 9C
	ora $9C.b,S		; 03 9C
	ora $0C.b,S		; 03 0C
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$11.b]		; 07 11
	asl $0003.w		; 0E 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $3200.w		; 0E 00 32
	cpy $C42A.w		; CC 2A C4
	rol A		; 2A
	cpy $4C.b		; C4 4C
	bra  76.b		; 80 4C
	bra -120.b		; 80 88
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $CC.b		; 00 CC
	brk $C4.b		; 00 C4
	brk $C4.b		; 00 C4
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	trb $38B2.w		; 1C B2 38
	jsl $F8CA38.l		; 22 38 CA F8
	asl A		; 0A
	sed		; F8
	dec A		; 3A
	clc		; 18
	ora ($00.b)		; 12 00
	trb $E800.w		; 1C 00 E8
	php		; 08
	cpy $04.b		; C4 04
	pei ($14.b)		; D4 14
	bit $24.b		; 24 24
	trb $14.b		; 14 14
	trb $0C04.w		; 1C 04 0C
	tsb $0000.w		; 0C 00 00
	ora ($0C.b)		; 12 0C
	bit $F010.w		; 2C 10 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	sbc $8E.b,S		; E3 8E
	adc ($CF.b),Y		; 71 CF
	bmi -59.b		; 30 C5
	sec		; 38
	stz $98.b		; 64 98
	.db $62, $9C, $32		; 62 9C 32
	cpy $CC32.w		; CC 32 CC
	sbc $00.b,S		; E3 00
	adc ($00.b),Y		; 71 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $98.b		; 00 98
	brk $9C.b		; 00 9C
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	and $EA29D6.l,X		; 3F D6 29 EA
	ora $BA.b,X		; 15 BA
	eor #$0079.w		; 49 79 00
	ror $19.b		; 66 19
	and $180F10.l		; 2F 10 0F 18
	and $522900.l,X		; 3F 00 29 52
	trb $65.b		; 14 65
	eor $00.b		; 45 00
	asl $00.b		; 06 00
	phd		; 0B
	ora ($02.b,X)		; 01 02
	php		; 08
	phd		; 0B
	tsb $EE11.w		; 0C 11 EE
	bvc -81.b		; 50 AF
	cpy $7333.w		; CC 33 73
	sty $CF30.w		; 8C 30 CF
	sbc $EF06.w,Y		; F9 06 EF
	bmi  -1.b		; 30 FF
	sec		; 38
	inc $A710.w		; EE 10 A7
	cli		; 58
	ora $BC.b,S		; 03 BC
	sty $CF53.w		; 8C 53 CF
	jsr $0006.w		; 20 06 00
	bpl  48.b		; 10 30
	jsr $02A0.w		; 20 A0 02
	php		; 08
	tsb $10.b		; 04 10
	ora #$3E21.w		; 09 21 3E
	and $6E4656.l,X		; 3F 56 46 6E
	lsr $5C74.w		; 4E 74 5C
	lsr $075E.w		; 4E 5E 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	brk $7E.b		; 00 7E
	sec		; 38
	ror $7030.w,X		; 7E 30 70
	rol $3F66.w		; 2E 66 3F
	ldy $ADAB.w		; AC AB AD
	tax		; AA
	asl $1CA9.w		; 0E A9 1C
	tas		; 1B
	and $031C1C.l		; 2F 1C 1C 03
	cop $0D.b		; 02 0D
	and $2026.w		; 2D 26 20
	tda		; 7B
	brk $7B.b		; 00 7B
	php		; 08
	tda		; 7B
	phd		; 0B
	sed		; F8
	brk $7C.b		; 00 7C
	ora $38.b,S		; 03 38
	ora ($1C.b,X)		; 01 1C
	jsr $FF1E.w		; 20 1E FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E8.b		; 00 E8
	ora [$FE.b],Y		; 17 FE
	ora ($7F.b,X)		; 01 7F
	brk $8F.b		; 00 8F
	brk $40.b		; 00 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b],Y		; 17 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $807F00.l,X		; FF 00 7F 80
	ora $30CFE0.l,X		; 1F E0 CF 30
	sbc [$08.b],Y		; F7 08
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$3000.w		; E0 00 30
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $277808.l,X		; 1F 08 78 27
	cpx #$C05F.w		; E0 5F C0
	adc $03FB00.l,X		; 7F 00 FB 03
	tya		; 98
	ora $04FC00.l,X		; 1F 00 FC 04
	tsb $17.b		; 04 17
	bpl  95.b		; 10 5F
	rti		; 40

	lda $00FF80.l,X		; BF 80 FF 00
	jsr ($E400.w,X)		; FC 00 E4
	tsb $C0.b		; 04 C0
	cpy #$E061.w		; C0 61 E0
	sbc $A1.b,S		; E3 A1
	adc [$45.b]		; 67 45
	lda $726F2A.l,X		; BF 2A 6F 72
	ora [$F8.b]		; 07 F8
	brk $C1.b		; 00 C1
	brk $01.b		; 00 01
	cpx #$3D9E.w		; E0 9E 3D
	trb $189D.w		; 1C 9D 18
	dex		; CA
	brk $92.b		; 00 92
	bpl -64.b		; 10 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	xce		; FB
	cld		; D8
	dec $BF80.w,X		; DE 80 BF
	and ($CD.b),Y		; 31 CD
	adc $C6C7.w,X		; 7D C7 C6
	tyx		; BB
	sta $7D.b,S		; 83 7D
	ora ($78.b,X)		; 01 78
	ora ($DF.b,X)		; 01 DF
	ora [$BF.b]		; 07 BF
	and $7F4E7F.l,X		; 3F 7F 4E 7F
	and ($BA.b)		; 32 BA
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	ora ($F3.b,X)		; 01 F3
	bcc -86.b		; 90 AA
	bra  60.b		; 80 3C
	brk $D8.b		; 00 D8
	brk $30.b		; 00 30
	cpy #$E080.w		; C0 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	inc $F46E.w,X		; FE 6E F4
	stz $F0.b,X		; 74 F0
	beq  48.b		; F0 30
	bmi -64.b		; 30 C0
	cpy #$4040.w		; C0 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	cop $06.b		; 02 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor [$58.b]		; 47 58
	sta $605F20.l,X		; 9F 20 5F 60
	ora $C235E0.l		; 0F E0 35 C2
	sbc $06F940.l		; EF 40 F9 06
	lda $7042.w,X		; BD 42 70
	bne -32.b		; D0 E0
	jsr $0080.w		; 20 80 00
	bcc -112.b		; 90 90
	phy		; 5A
	cli		; 58
	bpl  22.b		; 10 16
	brk $0E.b		; 00 0E
	bvc -106.b		; 50 96
	lda $846B40.l,X		; BF 40 6B 84
	ldx $5140.w,Y		; BE 40 51
	ldx $50AF.w		; AE AF 50
	ror $98.b,X		; 76 98
	inc $1A.b,X		; F6 1A
	sbc [$31.b],Y		; F7 31
	bvc -110.b		; 50 92
	sty $12.b,X		; 94 12
	rti		; 40

	bra -82.b		; 80 AE
	brk $40.b		; 00 40
	asl $81.b,X		; 16 81
	eor $D913.w,Y		; 59 13 D9
	ora ($38.b),Y		; 11 38
	ldy $1A7C.w,X		; BC 7C 1A
	rol $06.b,X		; 36 06
	cop $04.b		; 02 04
	tsb $80.b		; 04 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $1C.b		; 00 1C
	inc $FF02.w,X		; FE 02 FF
	cop $3F.b		; 02 3F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0700.w,X		; 1E 00 07
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $F3E063.l,X		; FF 63 E0 F3
	brk $E6.b		; 00 E6
	ora [$30.b]		; 07 30
	and $00FC00.l,X		; 3F 00 FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	bra  -1.b		; 80 FF
	brk $F9.b		; 00 F9
	ora ($CC.b,X)		; 01 CC
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F7F03.l		; 0F 03 7F 7F
	inc $B0.b,X		; F6 B0
	cpx #$6060.w		; E0 60 60
	adc $00F0E0.l,X		; 7F E0 F0 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $7C.b		; 00 7C
	brk $EF.b		; 00 EF
	rti		; 40

	cmp $90D080.l,X		; DF 80 D0 90
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	inc $003F.w,X		; FE 3F 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E11E00.l,X		; FF 00 1E E1
	sbc $867900.l,X		; FF 00 79 86
	asl $F9.b		; 06 F9
	sbc ($1E.b,X)		; E1 1E
	sed		; F8
	ora [$FE.b]		; 07 FE
	ora ($00.b,X)		; 01 00
	brk $E1.b		; 00 E1
	asl $7F00.w,X		; 1E 00 7F
	stx $01.b		; 86 01
	sbc $1E00.w,Y		; F9 00 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $CF.b		; 00 CF
	bmi -29.b		; 30 E3
	trb $0EF1.w		; 1C F1 0E
	sed		; F8
	ora [$F8.b]		; 07 F8
	ora [$FC.b]		; 07 FC
	ora $FC.b,S		; 03 FC
	ora $7C.b,S		; 03 7C
	ora $30.b,S		; 03 30
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	brk $3F.b		; 00 3F
	brk $16.b		; 00 16
	ora [$7C.b]		; 07 7C
	tsb $1F5F.w		; 0C 5F 1F
	sei		; 78
	eor $B0B8E0.l,X		; 5F E0 B8 B0
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	php		; 08
	ora $203800.l		; 0F 00 38 20
	bvs  32.b		; 70 20
	cpx #$F040.w		; E0 40 F0
	rti		; 40

	dec $CC00.w		; CE 00 CC
	brk $0C.b		; 00 0C
	beq -64.b		; F0 C0
	sbc $170179.l,X		; FF 79 01 17
	beq   2.b		; F0 02
	rol $0700.w,X		; 3E 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	inc $2F00.w,X		; FE 00 2F
	jsr $0405.w		; 20 05 04
	ora ($01.b,X)		; 01 01
	bit $0EE0.w		; 2C E0 0E
	rts		; 60

	ora [$70.b],Y		; 17 70
	ora [$F0.b]		; 07 F0
	phb		; 8B
	sed		; F8
	lda [$3C.b],Y		; B7 3C
	sbc $B90C.w		; ED 0C B9
	bra  95.b		; 80 5F
	rti		; 40

	and $202F20.l,X		; 3F 20 2F 20
	ora $606710.l,X		; 1F 10 67 60
	wai		; CB
	php		; 08
	sbc ($00.b,S),Y		; F3 00
	adc $FEB800.l,X		; 7F 00 B8 FE
	dey		; 88
	inc $6604.w		; EE 04 66
	brk $62.b		; 00 62
	rti		; 40

	adc $C0.b,S		; 63 C0
	adc $C2.b,S		; 63 C2
	adc $42.b,S		; 63 42
	adc $04.b,S		; 63 04
	tsb $34.b		; 04 34
	bit $B8.b		; 24 B8
	jsr $40DC.w		; 20 DC 40
	stz $9E02.w,X		; 9E 02 9E
	cop $9C.b		; 02 9C
	brk $9C.b		; 00 9C
	brk $12.b		; 00 12
	ora $0A15.w		; 0D 15 0A
	bit $1B.b		; 24 1B
	bit $2C13.w		; 2C 13 2C
	ora ($58.b,S),Y		; 13 58
	and [$58.b]		; 27 58
	and [$68.b]		; 27 68
	ora [$0D.b]		; 07 0D
	brk $0A.b		; 00 0A
	ora ($1B.b,X)		; 01 1B
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $27.b		; 00 27
	brk $27.b		; 00 27
	brk $07.b		; 00 07
	brk $BB.b		; 00 BB
	eor $3D.b,S		; 43 3D
	cmp ($7E.b,X)		; C1 7E
	bra 125.b		; 80 7D
	bra 127.b		; 80 7F
	sta ($FF.b,X)		; 81 FF
	ora $FE.b,S		; 03 FE
	asl $FC.b		; 06 FC
	tsb $41.b		; 04 41
	sta [$C0.b]		; 87 C0
	ora $80.b,S		; 03 80
	ora ($80.b,X)		; 01 80
	cop $81.b		; 02 81
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $CF.b,S		; 03 CF
	jmp.w [$EBCC]		; DC CC EB
	sbc [$E0.b]		; E7 E0
	plp		; 28
	bvs -98.b		; 70 9E
	ldx $0E1E.w		; AE 1E 0E
	eor $A04D.w		; 4D 4D A0
	bra -128.b		; 80 80
	jsr ($F883.w,X)		; FC 83 F8
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	stx $7F.b		; 86 7F
	cpy $E1FF.w		; CC FF E1
	lda $FE7FE0.l,X		; BF E0 7F FE
	brk $76.b		; 00 76
	dey		; 88
	cmp $C722.w		; CD 22 C7
	cpy #$C0C3.w		; C0 C3 C0
	cpy #$0CC0.w		; C0 C0 0C
	jsr $4C4F.w		; 20 4F 4C
	brk $04.b		; 00 04
	dey		; 88
	rti		; 40

	cop $34.b		; 02 34
	brk $E2.b		; 00 E2
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	trb $00F0.w		; 1C F0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($08.b,X)		; 01 08
	ora [$11.b]		; 07 11
	asl $1827.w		; 0E 27 18
	rti		; 40

	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	ora ($18.b,X)		; 01 18
	ora [$3F.b]		; 07 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $0E.b		; 00 0E
	beq 127.b		; F0 7F
	bra -87.b		; 80 A9
	lsr $EA.b,X		; 56 EA
	ora $5F.b,X		; 15 5F
	ldy #$0100.w		; A0 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bra 126.b		; 80 7E
	bpl -17.b		; 10 EF
	trb $EB.b		; 14 EB
	ldy #$004B.w		; A0 4B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	bit $1018.w		; 2C 18 10
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	tsb $7E.b		; 04 7E
	brk $3F.b		; 00 3F
	ora $1F.b,S		; 03 1F
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $1702.w		; 0D 02 17
	php		; 08
	rol $5411.w		; 2E 11 54
	pld		; 2B
	lda $5A.b		; A5 5A
	sta $0066.w,Y		; 99 66 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($08.b,X)		; 01 08
	ora [$11.b]		; 07 11
	asl $142B.w		; 0E 2B 14
	phy		; 5A
	bit $66.b		; 24 66
	php		; 08
	ldx $4C.b,Y		; B6 4C
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	ldy $5659.w		; AC 59 56
	lda ($C8.b,S),Y		; B3 C8
	jsl $8E7CFA.l		; 22 FA 7C 8E
	sty $F9F8.w		; 8C F8 F9
	.db $42, $31		; 42 31
	and [$C0.b],Y		; 37 C0
	lsr $80.b		; 46 80
	sty $1C00.w		; 8C 00 1C
	ora ($78.b,X)		; 01 78
	ora ($FC.b,X)		; 01 FC
	adc ($F8.b),Y		; 71 F8
	ora $15C949.l		; 0F 49 C9 15
	sta $BD.b		; 85 BD
	eor ($3F.b,X)		; 41 3F
	sbc ($73.b,X)		; E1 73
	cpx $CC73.w		; EC 73 CC
	adc $1A52.w		; 6D 52 1A
	sty $0F.b		; 84 0F
	inc $07.b,X		; F6 07
	ply		; 7A
	ora $E2.b,S		; 03 E2
	ora ($EC.b,X)		; 01 EC
	jsr $04EE.w		; 20 EE 04
	cld		; D8
	ora ($CC.b)		; 12 CC
	ora $E1.b		; 05 E1
	eor ($79.b,X)		; 41 79
	ldy $5D84.w		; AC 84 5D
	sta $B2.b,X		; 95 B2
	phb		; 8B
	sed		; F8
	ora $C8.b,S		; 03 C8
	bmi -48.b		; 30 D0
	jsr $40B0.w		; 20 B0 40
	ldy #$51A6.w		; A0 A6 51
	lsr $B4.b,X		; 56 B4
	ldx $C1.b		; A6 C1
	eor $3400.w		; 4D 00 34
	ldy #$A094.w		; A0 94 A0
	bra  64.b		; 80 40
	jsr $0D0D.w		; 20 0D 0D
	.db $62, $7E, $80		; 62 7E 80
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$02.b],Y		; F7 02
	sta ($10.b)		; 92 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($05.b,X)		; 01 05
	ora ($05.b,X)		; 01 05
	ora ($0B.b,X)		; 01 0B
	ora $0E.b,S		; 03 0E
	ora $0E.b,S		; 03 0E
	asl $0E.b		; 06 0E
	asl $0C.b		; 06 0C
	tsb $0000.w		; 0C 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $2C00.w		; 0C 00 2C
	cpx #$F989.w		; E0 89 F9
	bra -33.b		; 80 DF
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $101640.l,X		; 5F 40 16 10
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($F3.b)		; 92 F3
	ora ($F3.b)		; 12 F3
	tsb $00FF.w		; 0C FF 00
	inc $3C00.w,X		; FE 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $AC40.w		; 4C 40 AC
	ldy #$3232.w		; A0 32 32
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora [$49.b]		; 07 49
	asl $49.b		; 06 49
	asl $09.b		; 06 09
	cop $0D.b		; 02 0D
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	ora $DC.b,S		; 03 DC
	ora $DE.b,S		; 03 DE
	ora ($06.b,X)		; 01 06
	asl $05.b		; 06 05
	ora $03.b		; 05 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	bit $AD.b		; 24 AD
	bit $DD.b		; 24 DD
	mvp $44,$5D		; 44 5D 44
	lda $A59C.w,X		; BD 9C A5
	stz $3CFD.w		; 9C FD 3C
	eor [$C7.b]		; 47 C7
	inc $FFDB.w,X		; FE DB FF
	stp		; DB
	sbc $BBFFBB.l,X		; FF BB FF BB
	sbc $5BDF63.l,X		; FF 63 DF 5B
	ora [$03.b]		; 07 03
	tyx		; BB
	bra -89.b		; 80 A7
	ldx #$2023.w		; A2 23 20
	bcs -128.b		; B0 80
	lda $405A80.l		; AF 80 5A 40
	cpy $44.b		; C4 44
	clv		; B8
	sec		; 38
	beq  -8.b		; F0 F8
	tsx		; BA
	cld		; D8
	jmp ($EFDC.w,X)		; 7C DC EF
	adc $FC70F0.l		; 6F F0 70 FC
	ldy $B8FC.w,X		; BC FC B8
	sed		; F8
	cpy #$00E0.w		; C0 E0 00
	bra 127.b		; 80 7F
	sta [$78.b]		; 87 78
	ora $F9.b		; 05 F9
	pea $9C08.w		; F4 08 9C
	sta ($CD.b)		; 92 CD
	wai		; CB
	stz $E3.b		; 64 E3
	adc $57.b,X		; 75 57
	adc $007800.l,X		; 7F 00 78 00
	plx		; FA
	brk $0B.b		; 00 0B
	brk $F1.b		; 00 F1
	rts		; 60

	sed		; F8
	bcs 122.b		; B0 7A
	phx		; DA
	asl $BFCA.w,X		; 1E CA BF
	rti		; 40

	sbc $BE06.w,X		; FD 06 BE
	cmp $D4A3.w		; CD A3 D4
	pei ($22.b)		; D4 22
	bvs   4.b		; 70 04
	bra -72.b		; 80 B8
	brk $DB.b		; 00 DB
	rti		; 40

	ora #$0202.w		; 09 02 02
	eor ($80.b,X)		; 41 80
	cpy $F8B0.w		; CC B0 F8
	tsb $F8.b		; 04 F8
	brk $70.b		; 00 70
	bmi  32.b		; 30 20
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	brk $10.b		; 00 10
	ora $22.b,S		; 03 22
	asl $D1.b,X		; 16 D1
	pld		; 2B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0F.b		; 00 0F
	bpl  15.b		; 10 0F
	and ($17.b,X)		; 21 17
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra  60.b		; 80 3C
	bit $040C.w,X		; 3C 0C 04
	rol $646C.w		; 2E 6C 64
	lsr $0684.w		; 4E 84 06
	.db $42, $86		; 42 86
	lsr $86.b		; 46 86
	brk $FC.b		; 00 FC
	clc		; 18
	inc $7E04.w,X		; FE 04 7E
	tsb $FF.b		; 04 FF
	rti		; 40

	sbc $806F00.l,X		; FF 00 6F 80
	ora $A60F82.l		; 0F 82 0F A6
	lsr $A6.b		; 46 A6
	lsr $C6.b		; 46 C6
	asl $0E8E.w		; 0E 8E 0E
	asl $361E.w,X		; 1E 1E 36
	rol $2F.b,X		; 36 2F
	xba		; EB
	eor $46D5.w,X		; 5D D5 46
	sta $068F46.l		; 8F 46 8F 06
	ora $1C1F04.l,X		; 1F 04 1F 1C
	ora [$3C.b]		; 07 3C
	phd		; 0B
	and $8ABF14.l,X		; 3F 14 BF 8A
	sbc $F304.w,Y		; F9 04 F3
	php		; 08
	inc $10.b		; E6 10
	sbc $BE79.w,Y		; F9 79 BE
	sta [$BD.b]		; 87 BD
	ldx $FAF8.w,Y		; BE F8 FA
	and $037D.w,Y		; 39 7D 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	sei		; 78
	jsr ($F140.w,X)		; FC 40 F1
	and $FE31.w,X		; 3D 31 FE
	cmp $6A.b		; C5 6A
	ora $D79878.l		; 0F 78 98 D7
	sec		; 38
	lda [$AB.b],Y		; B7 AB
	bit $94.b,X		; 34 94
	pld		; 2B
	tsa		; 3B
	tsb $DC.b		; 04 DC
	lda $A2.b,S		; A3 A2
	and $5BC0.w,Y		; 39 C0 5B
	tsb $33.b		; 04 33
	ora $72.b,X		; 15 72
	tsb $73.b		; 04 73
	phd		; 0B
	rts		; 60

	sty $E8.b		; 84 E8
	sta $6C.b,S		; 83 6C
	jmp ($BE81.w)		; 6C 81 BE
	eor ($AA.b),Y		; 51 AA
	bvc -67.b		; 50 BD
	rti		; 40

	adc [$88.b],Y		; 77 88
	adc [$88.b],Y		; 77 88
	tyx		; BB
	ora $E5.b		; 05 E5
	tas		; 1B
	sta ($11.b,S),Y		; 93 11
	rti		; 40

	bra  80.b		; 80 50
	sty $40.b,X		; 94 40
	cop $A8.b		; 02 A8
	and $A8.b		; 25 A8
	bit $40.b		; 24 40
	eor $0B11.w,X		; 5D 11 0B
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$8080.w		; C0 80 80
	bra   0.b		; 80 00
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	bra   8.b		; 80 08
	ora [$11.b]		; 07 11
	asl $1C23.w		; 0E 23 1C
	and [$18.b]		; 27 18
	lsr $4C31.w		; 4E 31 4C
	and ($9C.b,S),Y		; 33 9C
	adc $B8.b,S		; 63 B8
	eor [$07.b]		; 47 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	brk $33.b		; 00 33
	brk $63.b		; 00 63
	brk $47.b		; 00 47
	brk $F3.b		; 00 F3
	tsb $30CF.w		; 0C CF 30
	sta $C03F60.l,X		; 9F 60 3F C0
	adc $807F80.l,X		; 7F 80 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	tsb $3000.w		; 0C 00 30
	brk $60.b		; 00 60
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
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($78.b,X)		; 01 78
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $19.b		; 00 19
	asl $20.b		; 06 20
	ora $64649B.l,X		; 1F 9B 64 64
	txy		; 9B
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $1F6000.l,X		; 1F 00 60 1F
	tya		; 98
	adc [$FF.b]		; 67 FF
	brk $B8.b		; 00 B8
	eor #$7016.w		; 49 16 70
	ora $F09FA0.l		; 0F A0 9F F0
	eor [$70.b]		; 47 70
	pld		; 2B
	sec		; 38
	cmp [$9C.b]		; C7 9C
	and $9C.b,X		; 35 9C
	ora [$01.b]		; 07 01
	and $001F20.l		; 2F 20 1F 00
	ora $008F00.l		; 0F 00 8F 00
	cmp [$00.b]		; C7 00
	rtl		; 6B

	php		; 08
	adc $00.b,S		; 63 00
	sbc [$54.b],Y		; F7 54
	ror $8CB4.w,X		; 7E B4 8C
	sbc ($18.b)		; F2 18
	ror $72D0.w,X		; 7E D0 72
	bcc  51.b		; 90 33
	cpy #$E233.w		; C0 33 E2
	and ($5C.b,S),Y		; 33 5C
	php		; 08
	ldy $80.b,X		; B4 80
	bpl  16.b		; 10 10
	cpy $44.b		; C4 44
	sty $CE00.w		; 8C 00 CE
	cop $EE.b		; 02 EE
	jsl $B400CC.l		; 22 CC 00 B4
	eor $B4.b,S		; 43 B4
	eor $56.b,S		; 43 56
	and ($52.b,X)		; 21 52
	and ($29.b,X)		; 21 29
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $43.b		; 00 43
	brk $43.b		; 00 43
	brk $21.b		; 00 21
	brk $21.b		; 00 21
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $16.b		; 06 16
	cop $34.b		; 02 34
	plp		; 28
	cpy $CC.b		; C4 CC
	brk $00.b		; 00 00
	sei		; 78
	pha		; 48
	bvs  48.b		; 70 30
	bmi   0.b		; 30 00
	cop $0F.b		; 02 0F
	brk $2F.b		; 00 2F
	jsr $C0EE.w		; 20 EE C0
	inc $FC00.w,X		; FE 00 FC
	brk $FC.b		; 00 FC
	bpl  56.b		; 10 38
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	sta $81.b,S		; 83 81
	cmp ($C0.b,X)		; C1 C0
	sbc ($E0.b,X)		; E1 E0
	adc ($F2.b,S),Y		; 73 F2
	trb $003C.w		; 1C 3C 00
	brk $07.b		; 00 07
	tsb $01.b		; 04 01
	sta ($00.b,X)		; 81 00
	cmp ($80.b,X)		; C1 80
	cpx #$F2C0.w		; E0 C0 F2
	cop $FE.b		; 02 FE
	tsb $00FF.w		; 0C FF 00
	and $540F00.l,X		; 3F 00 0F 54
	trb $BA.b		; 14 BA
	tax		; AA
	lsr $EBD6.w,X		; 5E D6 EB
	eor $233F77.l		; 4F 77 3F 23
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $FC.b		; 00 FC
	php		; 08
	ror $7C14.w,X		; 7E 14 7C
	pld		; 2B
	phy		; 5A
	ora [$33.b],Y		; 17 33
	ora $001F01.l		; 0F 01 1F 00
	ora [$00.b]		; 07 00
	ora ($F6.b,X)		; 01 F6
	tsb $F6.b		; 04 F6
	tsb $ED.b		; 04 ED
	ora ($79.b,X)		; 01 79
	bit #$8B7B.w		; 89 7B 8B
	tsa		; 3B
	rep #$CF		; C2 CF
	bmi  63.b		; 30 3F
	cop $0D.b		; 02 0D
	ora #$090D.w		; 09 0D 09
	ora ($12.b,S),Y		; 13 12
	sta $048F06.l		; 8F 06 8F 04
	cmp [$05.b]		; C7 05
	and ($01.b),Y		; 31 01
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	sed		; F8
	sei		; 78
	cld		; D8
	pha		; 48
	sed		; F8
	pla		; 68
	sei		; 78
	clc		; 18
	cli		; 58
	php		; 08
	bne -96.b		; D0 A0
	bpl  48.b		; 10 30
	brk $78.b		; 00 78
	bvs 124.b		; 70 7C
	pha		; 48
	jmp ($7C08.w,X)		; 7C 08 7C
	php		; 08
	bit $BC00.w,X		; 3C 00 BC
	bra -72.b		; 80 B8
	brk $F8.b		; 00 F8
	cli		; 58
	bit $1EA4.w,X		; 3C A4 1E
	cmp $8F8BCF.l		; CF CF 8B 8F
	and $25.b,X		; 35 25
	pla		; 68
	rti		; 40

	stp		; DB
	txa		; 8A
	ldx $24.b,Y		; B6 24
	tsb $FB.b		; 04 FB
	php		; 08
	adc [$C6.b],Y		; 77 C6
	and $E07FE9.l,X		; 3F E9 7F E0
	cmp $AF97D0.l		; CF D0 97 AF
	and $6F.b		; 25 6F
	phk		; 4B
	and $BFBE70.l		; 2F 70 BE BF
	and $5E5F3F.l,X		; 3F 3F 5F 5E
	jmp $286A5C.l		; 5C 5C 6A 28
	bmi  52.b		; 30 34
	jmp.w [$2098]		; DC 98 20
	beq  56.b		; F0 38
	sbc $5CFF1E.l,X		; FF 1E FF 5C
	sbc $A0FF08.l,X		; FF 08 FF A0
	sbc $C8FE90.l,X		; FF 90 FE C8
	ror $20D8.w,X		; 7E D8 20
	sbc ($03.b),Y		; F1 03
	rts		; 60

	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	eor [$00.b]		; 47 00
	rts		; 60

	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bpl  96.b		; 10 60
	php		; 08
	clv		; B8
	sty $C75D.w		; 8C 5D C7
	rol A		; 2A
	.db $62, $17, $35		; 62 17 35
	phd		; 0B
	inc A		; 1A
	ora $E009.w,X		; 1D 09 E0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $39.b		; 00 39
	brk $1F.b		; 00 1F
	ora ($0F.b,X)		; 01 0F
	cop $0F.b		; 02 0F
	ora $0B.b		; 05 0B
	cop $B9.b		; 02 B9
	lsr $B9.b		; 46 B9
	lsr $B1.b		; 46 B1
	lsr $0CD3.w		; 4E D3 0C
	cmp ($0C.b,S),Y		; D3 0C
	eor ($0C.b,S),Y		; 53 0C
	eor ($0C.b,S),Y		; 53 0C
	ora ($0C.b,S),Y		; 13 0C
	lsr $00.b		; 46 00
	lsr $00.b		; 46 00
	lsr $0C00.w		; 4E 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FE.b,X)		; 01 FE
	brk $DE.b		; 00 DE
	jsr $20DF.w		; 20 DF 20
	cmp $000030.l		; CF 30 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	and ($01.b,X)		; 21 01
	jsr $3000.w		; 20 00 30
	brk $C0.b		; 00 C0
	and $1F1FE0.l,X		; 3F E0 1F 1F
	bpl  91.b		; 10 5B
	iny		; C8
	adc $AB60.w		; 6D 60 AB
	lda ($8E.b,X)		; A1 8E
	ldy $1E.b		; A4 1E
	rti		; 40

	and $001F00.l,X		; 3F 00 1F 00
	bpl -32.b		; 10 E0
	tsb $46E4.w		; 0C E4 46
	inc $87.b,X		; F6 87
	inc $07.b,X		; F6 07
	sbc ($01.b,S),Y		; F3 01
	sbc ($01.b,X)		; E1 01
	inc $817E.w,X		; FE 7E 81
	cmp $2CE630.l,X		; DF 30 E6 2C
	php		; 08
.ACCU 8
	sep #$AF		; E2 AF
	rts		; 60

	sta $338C00.l		; 8F 00 8C 33
	inc $8100.w,X		; FE 00 81
	brk $20.b		; 00 20
	jsr $0714.w		; 20 14 07
	trb $1D03.w		; 1C 03 1D
	brk $7F.b		; 00 7F
	rti		; 40

	eor $CE6353.l,X		; 5F 53 63 CE
	tsa		; 3B
	ror $6609.w		; 6E 09 66
	ora ($32.b),Y		; 11 32
	asl A		; 0A
	inc A		; 1A
	stz $6C.b,X		; 74 6C
	sbc $ECF7.w,Y		; F9 F7 EC
	tsa		; 3B
	and $04.b,X		; 35 04
	ora ($00.b),Y		; 11 00
	tsa		; 3B
	jsl $05000D.l		; 22 0D 00 05
	brk $63.b		; 00 63
	brk $F2.b		; 00 F2
	cop $30.b		; 02 30
	bpl -32.b		; 10 E0
	and ($C0.b),Y		; 31 C0
	ora ($E0.b),Y		; 11 E0
	ora ($EA.b),Y		; 11 EA
	tas		; 1B
	iny		; C8
	tas		; 1B
	tsb $3E.b		; 04 3E
	cpy #$20FC.w		; C0 FC 20
	cld		; D8
	dec $EE00.w		; CE 00 EE
	brk $EE.b		; 00 EE
	brk $E4.b		; 00 E4
	brk $E6.b		; 00 E6
	cop $E8.b		; 02 E8
	plp		; 28
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bit $D903.w,X		; 3C 03 D9
	rol $72.b		; 26 72
	sty $01FF.w		; 8C FF 01
	adc $FA83.w,X		; 7D 83 FA
	asl $F1.b		; 06 F1
	ora #$00.b		; 09 00
	brk $03.b		; 00 03
	brk $26.b		; 00 26
	clc		; 18
	sty $0171.w		; 8C 71 01
	sbc $0180.w,X		; FD 80 01
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	inc $F6CA.w		; EE CA F6
	sta ($D6.b)		; 92 D6
	sta ($DE.b)		; 92 DE
	ora ($AE.b)		; 12 AE
	jsl $2539BD.l		; 22 BD 39 25
	ora $597D.w,X		; 1D 7D 59
	inc $FF35.w,X		; FE 35 FF
	adc $6DFF.w		; 6D FF 6D
	sbc $DDFFED.l,X		; FF ED FF DD
	sbc $DADFC6.l,X		; FF C6 DF DA
	cmp $82.b,S		; C3 82
	bcc -128.b		; 90 80
	plp		; 28
	jsr $90B6.w		; 20 B6 90
	stp		; DB
	dex		; CA
	cmp $20EF46.l,X		; DF 46 EF 20
	adc $20.b		; 65 20
	and ($10.b)		; 32 10
	jsr $70E0.w		; 20 E0 70
	bne  -8.b		; D0 F8
	pla		; 68
	inc $FE34.w,X		; FE 34 FE
	clv		; B8
	inc $FEDE.w,X		; FE DE FE
	dec $ECFC.w,X		; DE FC EC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$B000.w		; E0 00 B0
	rti		; 40

	php		; 08
	beq -76.b		; F0 B4
	pha		; 48
	dec $0030.w		; CE 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $F0.b		; 00 F0
	brk $48.b		; 00 48
	bcs  16.b		; B0 10
	cpx $AE51.w		; EC 51 AE
	eor $AA.b,X		; 55 AA
	and $EBD2.w		; 2D D2 EB
	bit $FA.b,X		; 34 FA
	stz $34.b		; 64 34
	php		; 08
	clv		; B8
	brk $C0.b		; 00 C0
	brk $AA.b		; 00 AA
	mvp $44,$AA		; 44 AA 44
	cmp ($14.b)		; D2 14
	trb $10.b		; 14 10
	tsb $00.b		; 04 00
	iny		; C8
	brk $80.b		; 00 80
	rti		; 40

	bra   0.b		; 80 00
	and $EFFE3E.l,X		; 3F 3E FE EF
	sbc $2419.w,Y		; F9 19 24
	bit $7A.b,X		; 34 7A
	ror $BBB1.w,X		; 7E B1 BB
	bcc -111.b		; 90 91
	bne -112.b		; D0 90
	rol $F800.w,X		; 3E 00 F8
	bpl  22.b		; 10 16
	brk $3B.b		; 00 3B
	bpl  97.b		; 10 61
	brk $E0.b		; 00 E0
	rti		; 40

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	cpx #$A0A0.w		; E0 A0 A0
	ldy #$C0C0.w		; A0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	cpx #$E040.w		; E0 40 E0
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $50.b		; 00 50
	adc $607CE0.l,X		; 7F E0 7C 60
	bvs  96.b		; 70 60
	rti		; 40

	cpx #$4040.w		; E0 40 40
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $6C.b		; 00 6C
	bit $1050.w		; 2C 50 10
	cpx #$C080.w		; E0 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($08.b,X)		; 01 08
	ora [$10.b]		; 07 10
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	ora ($77.b,X)		; 01 77
	php		; 08
	stz $0763.w		; 9C 63 07
	sed		; F8
	and $00FFC0.l,X		; 3F C0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	php		; 08
	ora [$63.b]		; 07 63
	trb $00F8.w		; 1C F8 00
	cpy #$0000.w		; C0 00 00
	brk $C0.b		; 00 C0
	brk $F1.b		; 00 F1
	cpy #$303E.w		; C0 3E 30
	and $1B1F38.l,X		; 3F 38 1F 1B
	eor $67674F.l		; 4F 4F 67 67
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	jsr $38F0.w		; 20 F0 38
	sed		; F8
	inc A		; 1A
	xce		; FB
	eor $FF67FF.l		; 4F FF 67 FF
	ora ($FF.b,X)		; 01 FF
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	cpy #$E0F0.w		; C0 F0 E0
	cpx #$00C0.w		; E0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$E0C0.w		; C0 C0 E0
	bra -64.b		; 80 C0
	phd		; 0B
	tsb $0A.b		; 04 0A
	ora $0C.b		; 05 0C
	ora $0D.b,S		; 03 0D
	cop $05.b		; 02 05
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $14.b		; 00 14
	xba		; EB
	sbc $62D508.l,X		; FF 08 D5 62
	sbc $00.b,S		; E3 00
	rol $D5.b,X		; 36 D5
	xba		; EB
	cmp $7F.b,X		; D5 7F
	bra -43.b		; 80 D5
	eor $AA49.w,X		; 5D 49 AA
	brk $A2.b		; 00 A2
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $49.b		; 00 49
	bra  93.b		; 80 5D
	adc $7F.b,S		; 63 7F
	brk $2A.b		; 00 2A
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
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
	ora $00.b,S		; 03 00
	ora $0F1F03.l		; 0F 03 1F 0F
	bit $F81C.w,X		; 3C 1C F8
	sec		; 38
	xce		; FB
	tda		; 7B
	sbc ($61.b,X)		; E1 61
	inx		; E8
	plp		; 28
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$0F.b]		; 07 0F
	tsb $181F.w		; 0C 1F 18
	and $617F3B.l,X		; 3F 3B 7F 61
	adc $943F28.l,X		; 7F 28 3F 94
	pla		; 68
	sty $E8.b,X		; 94 E8
	jmp ($EC70.w,X)		; 7C 70 EC
	php		; 08
	ldy $DE38.w,X		; BC 38 DE
	cpy $BE.b		; C4 BE
	sec		; 38
	dec $6800.w		; CE 00 68
	bpl -24.b		; 10 E8
	bpl -16.b		; 10 F0
	bra  -8.b		; 80 F8
	beq -16.b		; F0 F0
	iny		; C8
	cpy #$103C.w		; C0 3C 10
	jmp ($3800.w,X)		; 7C 00 38
	beq   0.b		; F0 00
	bvc -96.b		; 50 A0
	bpl -32.b		; 10 E0
	bne  32.b		; D0 20
	pha		; 48
	bcs -24.b		; B0 E8
	bcc  72.b		; 90 48
	bcs -104.b		; B0 98
	rts		; 60

	brk $E0.b		; 00 E0
	ldy #$E040.w		; A0 40 E0
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	bra  16.b		; 80 10
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	bpl   0.b		; 10 00
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
	ora $0E1F07.l		; 0F 07 1F 0E
	asl $3C0C.w,X		; 1E 0C 3C
	bpl 112.b		; 10 70
	jsr $0060.w		; 20 60 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	tsb $0E.b		; 04 0E
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $008080.l,X		; FF 80 80 00
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
	sta $95.b,X		; 95 95
	sta ($81.b,X)		; 81 81
	phd		; 0B
	phd		; 0B
	eor [$46.b]		; 47 46
	sta $1F1F8F.l		; 8F 8F 1F 1F
	sbc $00FFFE.l,X		; FF FE FF 00
	sta $FF.b,X		; 95 FF
	sta ($FF.b,X)		; 81 FF
	phd		; 0B
	sbc $8FFE46.l,X		; FF 46 FE 8F
	sbc $FCFF1E.l,X		; FF 1E FF FC
	inc $0000.w,X		; FE 00 00
	cpx #$D800.w		; E0 00 D8
	bra -60.b		; 80 C4
	bra -64.b		; 80 C0
	brk $B0.b		; 00 B0
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $07.b,S		; 03 07
	ora ($0B.b,X)		; 01 0B
	cop $0C.b		; 02 0C
	tsb $0F.b		; 04 0F
	phd		; 0B
	ora [$04.b]		; 07 04
	tsb $13.b		; 04 13
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	ora ($0F.b,X)		; 01 0F
	ora $1E.b,S		; 03 1E
	brk $1C.b		; 00 1C
	phd		; 0B
	brk $C1.b		; 00 C1
	rol $C9.b,X		; 36 C9
	inc $3CB6.w,X		; FE B6 3C
	tax		; AA
	jsl $7A2CAD.l		; 22 AD 2C 7A
	sec		; 38
	lda [$B7.b],Y		; B7 B7
	sei		; 78
	cmp $D4363E.l,X		; DF 3E 36 D4
	trb $E1.b		; 14 E1
	cmp ($FF.b,X)		; C1 FF
	cmp $C3F7.w,X		; DD F7 C3
	sbc $48FFC7.l		; EF C7 FF 48
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
	cpx $64.b		; E4 64
	sbc $7079.w,Y		; F9 79 70
	bmi 112.b		; 30 70
	bmi 118.b		; 30 76
	rol $30.b,X		; 36 30
	bpl  62.b		; 10 3E
	asl $1F3F.w,X		; 1E 3F 1F
	stz $7F.b		; 64 7F
	and $307F.w,Y		; 39 7F 30
	and $163F30.l,X		; 3F 30 3F 16
	and $1E1F10.l,X		; 3F 10 1F 1E
	ora $C01F1F.l,X		; 1F 1F 1F C0
	brk $F1.b		; 00 F1
	cpy #$F0FE.w		; C0 FE F0
	adc $3B3F78.l,X		; 7F 78 3F 3B
	ora [$07.b]		; 07 07
	txy		; 9B
	txy		; 9B
	ora #$09.b		; 09 09
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpx #$78F0.w		; E0 F0 78
	sed		; F8
	dec A		; 3A
	xce		; FB
	ora [$FF.b]		; 07 FF
	txy		; 9B
	sbc $80FF09.l,X		; FF 09 FF 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$E0F0.w		; C0 F0 E0
	cpx #$00C0.w		; E0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$E0C0.w		; C0 C0 E0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	brk $84.b		; 00 84
	tda		; 7B
	.db $42, $BD		; 42 BD
	sbc $000010.l		; EF 10 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	brk $BD.b		; 00 BD
	.db $42, $10		; 42 10
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $81.b		; 00 81
	brk $42.b		; 00 42
	bra -96.b		; 80 A0
	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$00F0.w		; C0 F0 00
	bvc -96.b		; 50 A0
	bpl -32.b		; 10 E0
	bne  32.b		; D0 20
	pha		; 48
	bcs -24.b		; B0 E8
	bcc  72.b		; 90 48
	bcs -104.b		; B0 98
	rts		; 60

	brk $E0.b		; 00 E0
	ldy #$E040.w		; A0 40 E0
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	bra  16.b		; 80 10
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	bpl   2.b		; 10 02
	ora ($04.b,X)		; 01 04
	ora $07.b,S		; 03 07
	ora ($0B.b,X)		; 01 0B
	cop $0C.b		; 02 0C
	tsb $0F.b		; 04 0F
	phd		; 0B
	ora [$04.b]		; 07 04
	tsb $13.b		; 04 13
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	ora ($0F.b,X)		; 01 0F
	ora $1E.b,S		; 03 1E
	brk $1C.b		; 00 1C
	phd		; 0B
	brk $C1.b		; 00 C1
	rol $C9.b,X		; 36 C9
	inc $3CB6.w,X		; FE B6 3C
	tax		; AA
	jsl $7A2CAD.l		; 22 AD 2C 7A
	sec		; 38
	lda [$B7.b],Y		; B7 B7
	sei		; 78
	cmp $D4363E.l,X		; DF 3E 36 D4
	trb $E1.b		; 14 E1
	cmp ($FF.b,X)		; C1 FF
	cmp $C3F7.w,X		; DD F7 C3
	sbc $48FFC7.l		; EF C7 FF 48
	cmp $689400.l,X		; DF 00 94 68
	sty $E8.b,X		; 94 E8
	jmp ($EC70.w,X)		; 7C 70 EC
	php		; 08
	ldy $DE38.w,X		; BC 38 DE
	cpy $BE.b		; C4 BE
	sec		; 38
	dec $6800.w		; CE 00 68
	bpl -24.b		; 10 E8
	bpl -16.b		; 10 F0
	bra  -8.b		; 80 F8
	beq -16.b		; F0 F0
	iny		; C8
	cpy #$103C.w		; C0 3C 10
	jmp ($3800.w,X)		; 7C 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
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
	ora $00.b,S		; 03 00
	ora $0F1F03.l		; 0F 03 1F 0F
	bit $FD1C.w,X		; 3C 1C FD
	and $70F0.w,X		; 3D F0 70
	sed		; F8
	sei		; 78
.ACCU 8
	sep #$22		; E2 22
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$0F.b]		; 07 0F
	tsb $1D1F.w		; 0C 1F 1D
	and $787F30.l,X		; 3F 30 7F 78
	adc $E83F22.l,X		; 7F 22 3F E8
	pla		; 68
	cpx $616C.w		; EC 6C 61
	and ($74.b,X)		; 21 74
	bit $70.b,X		; 34 70
	bmi  58.b		; 30 3A
	inc A		; 1A
	and $1F3F1F.l,X		; 3F 1F 3F 1F
	pla		; 68
	adc $217F2C.l,X		; 7F 2C 7F 21
	and $103F34.l,X		; 3F 34 3F 10
	and $1F1F1A.l,X		; 3F 1A 1F 1F
	ora $3F1F1F.l,X		; 1F 1F 1F 3F
	asl $387E.w,X		; 1E 7E 38
	sei		; 78
	bmi -16.b		; 30 F0
	rti		; 40

	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	asl $3810.w,X		; 1E 10 38
	brk $30.b		; 00 30
	brk $40.b		; 00 40
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
	ora #$09.b		; 09 09
	adc ($61.b,X)		; 61 61
	ora $CECF0F.l		; 0F 0F CF CE
	and $FFFF2F.l		; 2F 2F FF FF
	sbc $00FFFE.l,X		; FF FE FF 00
	ora #$FF.b		; 09 FF
	adc ($FF.b,X)		; 61 FF
	ora $FECEFF.l		; 0F FF CE FE
	and $FFFEFF.l		; 2F FF FE FF
	jsr ($00FE.w,X)		; FC FE 00
	brk $E0.b		; 00 E0
	brk $D8.b		; 00 D8
	bra -60.b		; 80 C4
	bra -64.b		; 80 C0
	brk $B0.b		; 00 B0
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	tsb $0A.b		; 04 0A
	ora $0C.b		; 05 0C
	ora $0D.b,S		; 03 0D
	cop $05.b		; 02 05
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $14.b		; 00 14
	xba		; EB
	sbc $62D508.l,X		; FF 08 D5 62
	sbc $00.b,S		; E3 00
	rol $D5.b,X		; 36 D5
	xba		; EB
	cmp $7F.b,X		; D5 7F
	bra -43.b		; 80 D5
	eor $AA49.w,X		; 5D 49 AA
	brk $A2.b		; 00 A2
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $49.b		; 00 49
	bra  93.b		; 80 5D
	adc $7F.b,S		; 63 7F
	brk $2A.b		; 00 2A
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $2A06.w,Y		; 19 06 2A
	ora $3B.b,X		; 15 3B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $15.b		; 00 15
	asl A		; 0A
	tsb $1B.b		; 04 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	tsb $12F0.w		; 0C F0 12
	cpx $8A75.w		; EC 75 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx $8210.w		; EC 10 82
	jmp ($0C06.w,X)		; 7C 06 0C
	ora $0A19.w		; 0D 19 0A
	and ($7C.b,S),Y		; 33 7C
	adc $D8A7BE.l,X		; 7F BE A7 D8
	cmp $FEEC.w,X		; DD EC FE
	ora $00033F.l,X		; 1F 3F 03 00
	asl $00.b		; 06 00
	ora $7A11.w,X		; 1D 11 7A
	cop $FF.b		; 02 FF
	cli		; 58
	sbc $E826.w,Y		; F9 26 E8
	ora $8E7F0E.l,X		; 1F 0E 7F 8E
	sta ($19.b),Y		; 91 19
	inc $1A.b,X		; F6 1A
	lda $9F.b,X		; B5 9F
	bmi -36.b		; 30 DC
	ora ($CF.b,S),Y		; 13 CF
	bpl -20.b		; 10 EC
	ora $63.b,S		; 03 63
	tsb $7601.w		; 0C 01 76
	bra -73.b		; 80 B7
	ora ($76.b),Y		; 11 76
	bpl 119.b		; 10 77
	ora $34.b,S		; 03 34
	brk $30.b		; 00 30
	ora $18.b,S		; 03 18
	brk $9D.b		; 00 9D
	sbc [$58.b],Y		; F7 58
	adc ($8E.b),Y		; 71 8E
	sbc $5706.w,Y		; F9 06 57
	dey		; 88
	lda $867950.l		; AF 50 79 86
	sbc $FF32.w		; ED 32 FF
	bvs  88.b		; 70 58
	asl $A8.b		; 06 A8
	rol $24.b		; 26 24
	jsl $5026A8.l		; 22 A8 26 50
	brk $86.b		; 00 86
	plp		; 28
	cop $B4.b		; 02 B4
	jsr $2078.w		; 20 78 20
	bmi  16.b		; 30 10
	tya		; 98
	tsb $0ACC.w		; 0C CC 0A
	ror A		; 6A
	ora [$35.b],Y		; 17 35
	txy		; 9B
	tas		; 1B
	sta [$0D.b]		; 87 0D
	txy		; 9B
	ora $E000C0.l,X		; 1F C0 00 E0
	bra 116.b		; 80 74
	rti		; 40

	rol $1F24.w,X		; 3E 24 1F
	asl A		; 0A
	ora $1A0704.l,X		; 1F 04 07 1A
	ora $3C.b,S		; 03 3C
	ora $0A.b,X		; 15 0A
	ora $0A.b,X		; 15 0A
	ora [$0F.b],Y		; 17 0F
	tas		; 1B
	php		; 08
	and ($02.b)		; 32 02
	and $1E0D.w		; 2D 0D 1E
	ora ($06.b)		; 12 06
	stz $0A.b		; 64 0A
	tsb $0A.b		; 04 0A
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	ora [$03.b]		; 07 03
	ora $1E05.w		; 0D 05 1E
	brk $3F.b		; 00 3F
	jsr $E53F.w		; 20 3F E5
	rol $FFD9.w		; 2E D9 FF
	jsl $3EAE3E.l		; 22 3E AE 3E
	cmp $1A5B12.l,X		; DF 12 5B 1A
	lda $76F68E.l		; AF 8E F6 76
	ora ($02.b)		; 12 02
	cmp $04.b		; C5 04
	sbc $C1.b,S		; E3 C1
	sbc ($D1.b,S),Y		; F3 D1
	sbc $E1F7ED.l,X		; FF ED F7 E1
	xce		; FB
	adc ($7F.b),Y		; 71 7F
	ora #$A0.b		; 09 A0
	rti		; 40

	ldy #$60C0.w		; A0 C0 60
	rti		; 40

	ldy #$B020.w		; A0 20 B0
	jsr $5850.w		; 20 50 58
	bvc  36.b		; 50 24
	ldy $CE.b		; A4 CE
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bne -32.b		; D0 E0
	cld		; D8
	cpy #$80BC.w		; C0 BC 80
	clv		; B8
	cpy #$0010.w		; C0 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	and $77.b,S		; 23 77
	php		; 08
	adc $5712.w		; 6D 12 57
	and #$9D.b		; 29 9D
	pla		; 68
	sta ($68.b,S),Y		; 93 68
	cmp ($29.b)		; D2 29
	jmp.w [$2125]		; DC 25 21
	inc A		; 1A
	php		; 08
	and ($12.b)		; 32 12
	bit $20.b		; 24 20
	brk $62.b		; 00 62
	brk $6F.b		; 00 6F
	php		; 08
	rol $40.b		; 26 40
	jsl $669940.l		; 22 40 99 66
	adc $AD82.w,X		; 7D 82 AD
	cmp ($7B.b)		; D2 7B
	mvn $08,$D6		; 54 D6 08
	inc $08.b		; E6 08
	rol $C8.b		; 26 C8
	asl A		; 0A
	pei ($42.b)		; D4 42
	bit $AC82.w		; 2C 82 AC
	eor ($54.b)		; 52 54
	sty $00.b		; 84 00
	tay		; A8
	php		; 08
	beq   0.b		; F0 00
	bvs  64.b		; 70 40
	pea $07D0.w		; F4 D0 07
	ora $0C0303.l		; 0F 03 03 0C
	brk $15.b		; 00 15
	asl A		; 0A
	inc A		; 1A
	tsb $19.b		; 04 19
	ora $11.b		; 05 11
	ora $1924.w		; 0D 24 19
	ora $3F.b,S		; 03 3F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	asl A		; 0A
	tsb $04.b		; 04 04
	ora #$04.b		; 09 04
	phd		; 0B
	ora $1803.w		; 0D 03 18
	ora $B7.b,S		; 03 B7
	stx $93.b		; 86 93
	cmp [$E3.b]		; C7 E3
	cmp $44.b,S		; C3 44
	jmp ($6377.w)		; 6C 77 63
	adc $F858.w,Y		; 79 58 F8
	cld		; D8
	lda $00A9.w		; AD A9 00
	dec $EF83.w		; CE 83 EF
	ora ($FF.b,X)		; 01 FF
	rti		; 40

	sbc $58EF43.l,X		; FF 43 EF 58
	cmp [$1E.b]		; C7 1E
	cmp [$BF.b]		; C7 BF
	dec $F3.b,X		; D6 F3
	sed		; F8
	sbc ($F8.b,S),Y		; F3 F8
	sbc ($F8.b)		; F2 F8
	sbc ($F4.b)		; F2 F4
	and $D2DB28.l		; 2F 28 DB D2
	ror $76.b		; 66 76
	and $702C.w		; 2D 2C 70
	jsr ($FCF0.w,X)		; FC F0 FC
	beq  -3.b		; F0 FD
	rts		; 60

	sbc $FD20.w,X		; FD 20 FD
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	rol $F9.b		; 26 F9
	stx $B8F2.w		; 8E F2 B8
	bit $7870.w,X		; 3C 70 78
	rts		; 60

	beq -64.b		; F0 C0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$40C0.w		; C0 C0 40
	cpy #$6060.w		; C0 60 60
	bpl 126.b		; 10 7E
	bmi  -4.b		; 30 FC
	rti		; 40

	sed		; F8
	brk $F0.b		; 00 F0
	cpy #$40E0.w		; C0 E0 40
	cpx #$E040.w		; E0 40 E0
	jsr $00F0.w		; 20 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $30.b		; 00 30
	ora $5C142B.l		; 0F 2B 14 5C
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $14.b		; 00 14
	phd		; 0B
	and ($1E.b,X)		; 21 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	tsb $7AF0.w		; 0C F0 7A
	sty $95.b		; 84 95
	ror A		; 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sty $78.b		; 84 78
	.db $42, $2C		; 42 2C
	ora $0A19.w		; 0D 19 0A
	and ($7C.b,S),Y		; 33 7C
	adc $D8A3B0.l,X		; 7F B0 A3 D8
	cmp $FEEC.w,X		; DD EC FE
	lsr $0F3F.w,X		; 5E 3F 0F
	ora $1D0006.l		; 0F 06 00 1D
	ora ($7E.b),Y		; 11 7E
	cop $F9.b		; 02 F9
	jmp $E826F9.l		; 5C F9 26 E8
	ora $063F0C.l,X		; 1F 0C 3F 06
	and $1AD619.l,X		; 3F 19 D6 1A
	lda $9F.b,X		; B5 9F
	bmi -100.b		; 30 9C
	and ($CF.b,S),Y		; 33 CF
	bpl -36.b		; 10 DC
	ora $63.b,S		; 03 63
	tsb $8E25.w		; 0C 25 8E
	bra -73.b		; 80 B7
	ora ($76.b),Y		; 11 76
	bpl 119.b		; 10 77
	ora $74.b,S		; 03 74
	brk $30.b		; 00 30
	ora $38.b,S		; 03 38
	brk $9D.b		; 00 9D
	brk $DE.b		; 00 DE
	adc ($8E.b),Y		; 71 8E
	sbc $5706.w,Y		; F9 06 57
	dey		; 88
	lda $A65950.l		; AF 50 59 A6
	sbc $FF32.w		; ED 32 FF
	bvs -13.b		; 70 F3
	sed		; F8
	tay		; A8
	rol $24.b		; 26 24
	jsl $5026A8.l		; 22 A8 26 50
	brk $86.b		; 00 86
	plp		; 28
	cop $B4.b		; 02 B4
	jsr $7078.w		; 20 78 70
	jsr ($9810.w,X)		; FC 10 98
	tsb $0ACC.w		; 0C CC 0A
	ror A		; 6A
	ora [$35.b],Y		; 17 35
	tas		; 1B
	tas		; 1B
	sta [$0D.b],Y		; 97 0D
	sta $3CB81B.l,X		; 9F 1B B8 3C
	cpx #$7480.w		; E0 80 74
	rti		; 40

	rol $1F24.w,X		; 3E 24 1F
	asl A		; 0A
	ora $3A0704.l,X		; 1F 04 07 3A
	ora $3C.b,S		; 03 3C
	bpl 126.b		; 10 7E
	ora $0A.b,X		; 15 0A
	ora [$0F.b],Y		; 17 0F
	tas		; 1B
	php		; 08
	asl $06.b,X		; 16 06
	and $1E0D.w		; 2D 0D 1E
	ora ($06.b)		; 12 06
	stz $68.b		; 64 68
	cmp #$040A.w		; C9 0A 04
	ora $070F00.l		; 0F 00 0F 07
	ora [$09.b]		; 07 09
	ora $1E.b		; 05 1E
	brk $3F.b		; 00 3F
	jsr $303F.w		; 20 3F 30
	ora [$E5.b]		; 07 E5
	rol $BED9.w		; 2E D9 BE
	.db $62, $5C, $A6		; 62 5C A6
	cop $5B.b		; 02 5B
	inc A		; 1A
	sbc $36F6CE.l		; EF CE F6 36
	cmp $02123D.l		; CF 3D 12 02
	sty $04.b		; 84 04
	cmp ($81.b,X)		; C1 81
	cmp $E1F7DD.l,X		; DF DD F7 E1
	xce		; FB
	and ($3F.b),Y		; 31 3F
	ora #$403D.w		; 09 3D 40
	ldy #$E040.w		; A0 40 E0
	cpy #$2020.w		; C0 20 20
	bcs  32.b		; B0 20
	beq  80.b		; F0 50
	pla		; 68
	mvp $EE,$94		; 44 94 EE
	adc ($83.b)		; 72 83
	rti		; 40

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bne -32.b		; D0 E0
	cld		; D8
	cpy #$C098.w		; C0 98 C0
	tya		; 98
	cpx #$8C00.w		; E0 00 8C
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
	eor $0A7520.l,X		; 5F 20 75 0A
	rtl		; 6B

	ora $85.b,X		; 15 85
	sei		; 78
	sta ($68.b,S),Y		; 93 68
	sta ($69.b)		; 92 69
	cmp ($29.b)		; D2 29
	jmp.w [$2025]		; DC 25 20
	inc A		; 1A
	asl A		; 0A
	bmi  20.b		; 30 14
	jsr $087A.w		; 20 7A 08
	adc $086E08.l		; 6F 08 6E 08
	rol $40.b		; 26 40
	jsl $867940.l		; 22 40 79 86
	sbc $79D2.w		; ED D2 79
	lsr $51.b		; 46 51
	asl $0AE5.w		; 0E E5 0A
	rol $C8.b		; 26 C8
	rol $C8.b		; 26 C8
	asl A		; 0A
	pei ($82.b)		; D4 82
	ldy $1412.w		; AC 12 14
	stx $00.b		; 86 00
	ldx $FA08.w		; AE 08 FA
	php		; 08
	bvs  64.b		; 70 40
	beq -64.b		; F0 C0
	pea $07D0.w		; F4 D0 07
	ora [$09.b]		; 07 09
	ora $0C.b,S		; 03 0C
	brk $15.b		; 00 15
	asl A		; 0A
	inc A		; 1A
	tsb $19.b		; 04 19
	ora $11.b		; 05 11
	ora $1924.w		; 0D 24 19
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	asl A		; 0A
	tsb $04.b		; 04 04
	ora #$0B04.w		; 09 04 0B
	ora $1803.w		; 0D 03 18
	ora $B7.b,S		; 03 B7
	sta [$D3.b]		; 87 D3
	cmp [$E3.b]		; C7 E3
	cmp $44.b,S		; C3 44
	jmp ($6377.w)		; 6C 77 63
	adc $F858.w,Y		; 79 58 F8
	cld		; D8
	lda $00A9.w		; AD A9 00
	cmp $41EF83.l		; CF 83 EF 41
	sbc $43FF40.l,X		; FF 40 FF 43
	sbc $1EC758.l		; EF 58 C7 1E
	cmp [$BF.b]		; C7 BF
	dec $F3.b,X		; D6 F3
	sed		; F8
	sbc ($F8.b,S),Y		; F3 F8
	sbc ($F8.b)		; F2 F8
	sbc ($F4.b)		; F2 F4
	and $D2DB28.l		; 2F 28 DB D2
	ror $76.b		; 66 76
	and $F02C.w		; 2D 2C F0
	jsr ($FCF0.w,X)		; FC F0 FC
	beq  -3.b		; F0 FD
	rts		; 60

	sbc $FD20.w,X		; FD 20 FD
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	rol $F9.b		; 26 F9
	stx $30F2.w		; 8E F2 30
	sei		; 78
	bvs 112.b		; 70 70
	bvs -32.b		; 70 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpy #$C0C0.w		; C0 C0 C0
	rti		; 40

	cpy #$6060.w		; C0 60 60
	bmi  -4.b		; 30 FC
	jsr $40F8.w		; 20 F8 40
	sed		; F8
	brk $F0.b		; 00 F0
	cpy #$40E0.w		; C0 E0 40
	cpx #$E040.w		; E0 40 E0
	jsr $00F0.w		; 20 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $18.b		; 00 18
	ora [$2D.b]		; 07 2D
	ora ($3B.b)		; 12 3B
	tsb $55.b		; 04 55
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	bpl  15.b		; 10 0F
	tsb $1A.b		; 04 1A
	rol A		; 2A
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	cpx #$4CB2.w		; E0 B2 4C
	adc $9A.b		; 65 9A
	lda [$C8.b],Y		; B7 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$4C00.w		; E0 00 4C
	bmi -110.b		; 30 92
	ldy $4648.w		; AC 48 46
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	brk $04.b		; 00 04
	asl $0C.b		; 06 0C
	ora $0019.w		; 0D 19 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $03.b,S		; 03 03
	brk $06.b		; 00 06
	brk $FA.b		; 00 FA
	sbc $D40F68.l,X		; FF 68 0F D4
	cpy #$A3AB.w		; C0 AB A3
	cmp $DE59.w,X		; DD 59 DE
	stx $19.b		; 86 19
	and [$32.b]		; 27 32
	lda $01F9.w		; AD F9 01
	jsr ($FBF4.w,X)		; FC F4 FB
	tsa		; 3B
	ldx $1FDC.w,Y		; BE DC 1F
	inc $07.b		; E6 07
	sbc ($07.b,X)		; E1 07
	inx		; E8
	ora ($6E.b,X)		; 01 6E
	bit $04F8.w,X		; 3C F8 04
	cpy $D6.b		; C4 D6
	mvp $4A,$7E		; 44 7E 4A
	sbc $D2C8.w		; ED C8 D2
	cmp $B0EE.w,X		; DD EE B0
.INDEX 8
	sep #$1D		; E2 1D
	clv		; B8
	bra 124.b		; 80 7C
	ply		; 7A
	jsr ($F8BB.w,X)		; FC BB F8
	and ($78.b,S),Y		; 33 78
	and ($FC.b,S),Y		; 33 FC
	jsr $0CB1.w		; 20 B1 0C
	eor ($4D.b),Y		; 51 4D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	ora [$07.b],Y		; 17 07
	tas		; 1B
	ora $19.b,S		; 03 19
	ora $2A.b		; 05 2A
	trb $34.b		; 14 34
	php		; 08
	and ($0A.b)		; 32 0A
	and $1B.b,S		; 23 1B
	eor #$0233.w		; 49 33 02
	ora $040F01.l		; 0F 01 0F 04
	phd		; 0B
	trb $09.b		; 14 09
	php		; 08
	ora ($08.b,S),Y		; 13 08
	ora [$1A.b],Y		; 17 1A
	ora [$31.b]		; 07 31
	ora [$6F.b]		; 07 6F
	ora $C78FA7.l		; 0F A7 8F C7
	sta [$89.b]		; 87 89
	cmp $C6EE.w,Y		; D9 EE C6
	sbc ($B1.b,S),Y		; F3 B1
	beq -80.b		; F0 B0
	phy		; 5A
	eor ($07.b)		; 52 07
	sta $83DF07.l,X		; 9F 07 DF 83
	sbc $86FF80.l,X		; FF 80 FF 86
	cmp $3C8FB1.l,X		; DF B1 8F 3C
	sta $E6AD7F.l		; 8F 7F AD E6
	beq -26.b		; F0 E6
	beq -28.b		; F0 E4
	sbc ($E5.b),Y		; F1 E5
	sbc #$515F.w		; E9 5F 51
	lda [$A5.b],Y		; B7 A5
	cpy $5AED.w		; CC ED 5A
	cli		; 58
	cpx #$F9.b		; E0 F9
	cpx #$F9.b		; E0 F9
	cpx #$FB.b		; E0 FB
	cpy #$FB.b		; C0 FB
	eor ($FB.b,X)		; 41 FB
	sty $FB.b		; 84 FB
	jmp $1CF3.w		; 4C F3 1C
	sbc $E0.b		; E5 E0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$40.b		; C0 40
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ora ($6B.b,X)		; 01 6B
	trb $55.b		; 14 55
	plp		; 28
	sta ($68.b,S),Y		; 93 68
	bcc 107.b		; 90 6B
	cld		; D8
	and $DC.b,S		; 23 DC
	and [$DA.b]		; 27 DA
	and [$00.b]		; 27 00
	bmi  21.b		; 30 15
	bit $2A.b		; 24 2A
	php		; 08
	adc $006408.l		; 6F 08 64 00
	and $41.b		; 25 41
	and ($41.b,X)		; 21 41
	and ($41.b,X)		; 21 41
	and #$EB16.w		; 29 16 EB
	tsb $D7.b		; 04 D7
	php		; 08
	sbc [$08.b]		; E7 08
	ora [$E8.b]		; 07 E8
	asl $E8.b		; 06 E8
	inc A		; 1A
	pea $F42A.w		; F4 2A F4
	dec $10.b,X		; D6 10
	pei ($00.b)		; D4 00
	tay		; A8
	php		; 08
	sed		; F8
	php		; 08
	bvs  96.b		; 70 60
	beq -32.b		; F0 E0
	cpx $E0.b		; E4 E0
	cpy $C0.b		; C4 C0
	inc A		; 1A
	and ($7C.b,S),Y		; 33 7C
	adc $DBA6BD.l,X		; 7F BD A6 DB
	cld		; D8
	sbc #$3CFC.w		; E9 FC 3C
	rol $1E1E.w,X		; 3E 1E 1E
	asl $0D0F.w		; 0E 0F 0D
	ora ($7A.b,X)		; 01 7A
	cop $FC.b		; 02 FC
	cli		; 58
	sed		; F8
	bit $E8.b		; 24 E8
	asl $7F18.w,X		; 1E 18 7F
	tsb $063F.w		; 0C 3F 06
	ora $3E6A35.l,X		; 1F 35 6A 3E
	adc ($39.b,X)		; 61 39
	ror $9E.b		; 66 9E
	and ($B9.b,X)		; 21 B9
	asl $A7.b		; 06 A7
	clc		; 18
	wai		; CB
	ora $1F4F.w,X		; 1D 4F 1F
	jsl $EE21EC.l		; 22 EC 21 EE
	asl $E8.b		; 06 E8
	ora ($60.b,X)		; 01 60
	asl $71.b		; 06 71
	brk $7A.b		; 00 7A
	brk $3D.b		; 00 3D
	ora ($BF.b,X)		; 01 BF
	sbc ($0D.b)		; F2 0D
	ldx $5E10.w		; AE 10 5E
	ldy #$B2.b		; A0 B2
	jmp $64DA.w		; 4C DA 64
	inc $E7E0.w,X		; FE E0 E7
	beq -25.b		; F0 E7
	beq  72.b		; F0 48
	mvp $4C,$50		; 44 50 4C
	ldy #$00.b		; A0 00
	tsb $0450.w		; 0C 50 04
	pla		; 68
	rti		; 40

	beq -32.b		; F0 E0
	sed		; F8
	cpx #$F8.b		; E0 F8
	ldy #$B0.b		; A0 B0
	sei		; 78
	sed		; F8
	jmp $6C6C54.l		; 5C 54 6C 6C
	trb $3C34.w		; 1C 34 3C
	bit $7830.w,X		; 3C 30 78
	rts		; 60

	bvs  64.b		; 70 40
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	plp		; 28
	jmp ($1C10.w,X)		; 7C 10 1C
	pla		; 68
	tsb $20F0.w		; 0C F0 20
	jsr ($F820.w,X)		; FC 20 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $073800.l		; 0F 00 38 07
	bvc  47.b		; 50 2F
	ldy #$5F.b		; A0 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $205F00.l		; 2F 00 5F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	adc $0780.w,Y		; 79 80 07
	sed		; F8
	ora ($FE.b,X)		; 01 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $0C.b		; 00 0C
	clc		; 18
	asl $33.b,X		; 16 33
	asl A		; 0A
	and $75.b,S		; 23 75
	ror $BF.b,X		; 76 BF
	sty $6467.w		; 8C 67 64
	eor $60.b,S		; 43 60
	ora $065C.w,X		; 1D 5C 06
	ora ($0C.b,X)		; 01 0C
	brk $1C.b		; 00 1C
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	bvs 124.b		; 70 7C
	tya		; 98
	brk $FC.b		; 00 FC
	trb $66FE.w		; 1C FE 66
	eor $526D.w,Y		; 59 6D 52
	stz $4B.b,X		; 74 4B
	and ($4F.b),Y		; 31 4F
	phx		; DA
	rol $E0.b		; 26 E0
	asl $02FC.w,X		; 1E FC 02
	sta $4163.w,X		; 9D 63 41
	dec $DC42.w,X		; DE 42 DC
	brk $DC.b		; 00 DC
	asl A		; 0A
	cmp ($01.b)		; D2 01
	jsr $421B.w		; 20 1B 42
	ora ($58.b,X)		; 01 58
	rts		; 60

	tsb $F9.b		; 04 F9
	asl $F5.b		; 06 F5
	asl A		; 0A
	pld		; 2B
	pei ($D3.b)		; D4 D3
	cpx $30CF.w		; EC CF 30
	sbc ($3E.b,X)		; E1 3E
	eor [$18.b],Y		; 57 18
	adc $0C.b,S		; 63 0C
	rti		; 40

	lsr $4648.w,X		; 5E 48 46
	bpl  14.b		; 10 0E
	tsb $E002.w		; 0C 02 E0
	jsr $10D6.w		; 20 D6 10
	cpx #$02.b		; E0 02
	sed		; F8
	php		; 08
	cmp $19EF3F.l		; CF 3F EF 19
	sbc ($11.b),Y		; F1 11
	lda $4EAC5F.l,X		; BF 5F AC 4E
	ldx $2C4E.w		; AE 4E 2C
	dec $9C4C.w		; CE 4C 9C
	ora [$10.b],Y		; 17 10
	ora $0E1F06.l		; 0F 06 1F 0E
	eor $1F4400.l,X		; 5F 00 44 1F
	jmp $CC1F.w		; 4C 1F CC
	ora $033E88.l,X		; 1F 88 3E 03
	ora ($07.b,X)		; 01 07
	ora [$02.b]		; 07 02
	cop $05.b		; 02 05
	ora [$02.b]		; 07 02
	ora $08.b,S		; 03 08
	ora $1604.w		; 0D 04 16
	ora ($32.b)		; 12 32
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $05.b,S		; 03 05
	ora ($0E.b,X)		; 01 0E
	cop $0F.b		; 02 0F
	brk $1F.b		; 00 1F
	tsb $0F.b		; 04 0F
	php		; 08
	ora [$EB.b]		; 07 EB
	dec $1D.b,X		; D6 1D
	ora [$EE.b]		; 07 EE
	ora $9E0475.l		; 0F 75 04 9E
	stx $6A.b		; 86 6A
	.db $62, $FF, $1B		; 62 FF 1B
	sbc $00D186.l,X		; FF 86 D1 00
	cpx #$E0.b		; E0 E0
	sed		; F8
	beq  -1.b		; F0 FF
	xce		; FB
	sbc $7F78.w,X		; FD 78 7F
	stz $C41E.w		; 9C 1E C4
	asl $B0.b		; 06 B0
	inc $0E.b		; E6 0E
.ACCU 16
.INDEX 16
	rep #$3A		; C2 3A
	dec $1697.w		; CE 97 16
	inc $AD.b		; E6 AD
	sta $92D2.w		; 8D D2 92
	sed		; F8
	lda $40FF.w,Y		; B9 FF 40
	ldx $40.b,Y		; B6 40
	inc $35.b,X		; F6 35
	jmp ($1E0B.w)		; 6C 0B 1E
	tas		; 1B
	sbc $F077.w,Y		; F9 77 F0
	adc $405EE0.l		; 6F E0 5E 40
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $067A.w		; 0E 7A 06
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	cop $06.b		; 02 06
	brk $03.b		; 00 03
	phd		; 0B
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora $D10FE1.l		; 0F E1 0F D1
	trb $1CC0.w		; 1C C0 1C
	ldy #$C038.w		; A0 38 C0
	sei		; 78
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	plx		; FA
	asl A		; 0A
	sbc $E008.w,Y		; F9 08 E0
	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $A0.b		; 00 A0
	jsr $40C0.w		; 20 C0 40
	brk $00.b		; 00 00
	rep #$8B		; C2 8B
	lsr $0F.b		; 46 0F
	sta [$0E.b]		; 87 0E
	ora [$1E.b],Y		; 17 1E
	ora $2A1C.w,X		; 1D 1C 2A
	jsr $003E.w		; 20 3E 00
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	asl $3C02.w,X		; 1E 02 3C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	adc [$18.b]		; 67 18
	inc $1C01.w,X		; FE 01 1C
	ora $39.b,S		; 03 39
	asl $72.b		; 06 72
	ora $13EC.w		; 0D EC 13
	sta ($7E.b,X)		; 81 7E
	asl $18E0.w,X		; 1E E0 18
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0D.b,X)		; 01 0D
	cop $13.b		; 02 13
	tsb $007E.w		; 0C 7E 00
	cpx #$3A00.w		; E0 00 3A
	cmp ($2D.b)		; D2 2D
	cpy $BB.b		; C4 BB
	adc $65BF76.l,X		; 7F 76 BF 65
	sta $18E0.w,X		; 9D E0 18
	plb		; AB
	clc		; 18
	rtl		; 6B

	clc		; 18
	cmp $1BDF0D.l,X		; DF 0D DF 1B
	adc $09B984.l,X		; 7F 84 B9 09
	txa		; 8A
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	lda ($0E.b)		; B2 0E
	bcs  14.b		; B0 0E
	and $C017.w		; 2D 17 C0
	sbc $4EF7C8.l,X		; FF C8 F7 4E
	adc $42.b,X		; 75 42
	sei		; 78
	.db $42, $78		; 42 78
	cmp ($D8.b,X)		; C1 D8
	cmp $DA.b,S		; C3 DA
	cpy #$E5C8.w		; C0 C8 E5
	and $20.b		; 25 20
	jsr $20A4.w		; 20 A4 20
	ldy $24.b		; A4 24
	sty $14.b,X		; 94 14
	bcs  79.b		; B0 4F
	ora $DAF2.w		; 0D F2 DA
	and $33.b		; 25 33
	cpy $7E81.w		; CC 81 7E
	sta $7A.b		; 85 7A
	cmp $34CF31.l		; CF 31 CF 34
	eor $1DE230.l		; 4F 30 E2 1D
	and $1A.b		; 25 1A
	cpy $7E32.w		; CC 32 7E
	brk $7A.b		; 00 7A
	brk $31.b		; 00 31
	ora ($31.b,X)		; 01 31
	brk $9A.b		; 00 9A
	stz $76.b		; 64 76
	dey		; 88
	tsx		; BA
	mvp $50,$AE		; 44 AE 50
	phy		; 5A
	ldy $D4.b,X		; B4 D4
	sec		; 38
	inx		; E8
	bit $78.b		; 24 78
	sty $9864.w		; 8C 64 98
	brk $EC.b		; 00 EC
	rti		; 40

	ldy $9450.w		; AC 50 94
	ldy $20.b		; A4 20
	plp		; 28
	brk $10.b		; 00 10
	pha		; 48
	bmi -128.b		; 30 80
	and ($3C.b),Y		; 31 3C
	dec A		; 3A
	dec A		; 3A
	bmi  48.b		; 30 30
	ora $081700.l		; 0F 00 17 08
	rol $4C11.w		; 2E 11 4C
	and ($9C.b,S),Y		; 33 9C
	adc $20.b,S		; 63 20
	ror $7F30.w,X		; 7E 30 7F
	brk $7F.b		; 00 7F
	brk $30.b		; 00 30
	php		; 08
	brk $11.b		; 00 11
	brk $33.b		; 00 33
	brk $63.b		; 00 63
	brk $F0.b		; 00 F0
	ora $08.b,S		; 03 08
	sbc [$F0.b]		; E7 F0
	ora ($F7.b,X)		; 01 F7
	ora $F3.b		; 05 F3
	ora ($E7.b),Y		; 11 E7
	and $DD.b,S		; 23 DD
	eor #$09A9.w		; 49 A9 09
	ora ($0D.b,X)		; 01 0D
	cpx #$001E.w		; E0 1E 00
	inc $4805.w		; EE 05 48
	ora $3B0C.w,X		; 1D 0C 3B
	clc		; 18
	tda		; 7B
	and ($7F.b)		; 32 7F
	ror $2A.b,X		; 76 2A
	ora $8780.w		; 0D 80 87
	brk $87.b		; 00 87
	tsb $87.b		; 04 87
	mvp $00,$C6		; 44 C6 00
	cmp $A0.b,S		; C3 A0
	adc $82.b,S		; 63 82
	adc $F1.b,S		; 63 F1
	brk $7D.b		; 00 7D
	tsb $FD.b		; 04 FD
	sty $78.b		; 84 78
	brk $38.b		; 00 38
	ora ($7E.b,X)		; 01 7E
	.db $42, $1E		; 42 1E
	cop $3C.b		; 02 3C
	jsr $9C58.w		; 20 58 9C
	cli		; 58
	tya		; 98
	bne  24.b		; D0 18
	bpl  48.b		; 10 30
	beq -16.b		; F0 F0
	bmi  48.b		; 30 30
	bpl -80.b		; 10 B0
	bpl -48.b		; 10 D0
	dey		; 88
	rol $3C80.w,X		; 3E 80 3C
	brk $3C.b		; 00 3C
	brk $F8.b		; 00 F8
	bvs  -8.b		; 70 F8
	bpl  -8.b		; 10 F8
	bpl 120.b		; 10 78
	bcc -72.b		; 90 B8
	eor ($7A.b)		; 52 7A
	bpl  60.b		; 10 3C
	asl A		; 0A
	rol $3E02.w,X		; 3E 02 3E
	ldy #$20B8.w		; A0 B8 20
	bcs  64.b		; B0 40
	bne   0.b		; D0 00
	cld		; D8
	bra   7.b		; 80 07
	iny		; C8
	asl A		; 0A
.ACCU 8
	sep #$20		; E2 20
	nop		; EA
	plp		; 28
	rti		; 40

	brk $C0.b		; 00 C0
	bra  32.b		; 80 20
	brk $70.b		; 00 70
	bvc   1.b		; 50 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($1F.b,X)		; 01 1F
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
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	ldy #$3020.w		; A0 20 30
	bvc -40.b		; 50 D8
	plp		; 28
	cpx $0000.w		; EC 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra -96.b		; 80 A0
	bra  80.b		; 80 50
	rti		; 40

	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	phd		; 0B
	sei		; 78
	and $0000E0.l,X		; 3F E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$00.b]		; 07 00
	eor $000040.l,X		; 5F 40 00 00
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	phd		; 0B
	sei		; 78
	and $C1CDE0.l		; 2F E0 CD C1
	dey		; 88
	ora $007CC0.l		; 0F C0 7C 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $17.b		; 04 17
	bpl  95.b		; 10 5F
	rti		; 40

	rol $F400.w,X		; 3E 00 F4
	tsb $A0.b		; 04 A0
	jsr $1C23.w		; 20 23 1C
	eor ($3E.b,X)		; 41 3E
	eor $3C.b,S		; 43 3C
	jmp $9030.w		; 4C 30 90
	rts		; 60

	ldy #$A040.w		; A0 40 A0
	rti		; 40

	cpy #$1C00.w		; C0 00 1C
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	sbc ($86.b,X)		; E1 86
	adc $3DC2.w,Y		; 79 C2 3D
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	rts		; 60

	ora $701F60.l,X		; 1F 60 1F 70
	ora $E10F70.l		; 0F 70 0F E1
	asl $0679.w,X		; 1E 79 06
	and $3D02.w,X		; 3D 02 3D
	cop $1F.b		; 02 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $21.b		; 00 21
	dec $EE11.w,X		; DE 11 EE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	rti		; 40

	lda $309F60.l,X		; BF 60 9F 30
	cmp $DEC738.l		; CF 38 C7 DE
	jsr $10EE.w		; 20 EE 10
	inc $FE00.w,X		; FE 00 FE
	brk $BF.b		; 00 BF
	brk $9F.b		; 00 9F
	brk $CF.b		; 00 CF
	brk $C7.b		; 00 C7
	brk $E7.b		; 00 E7
	phy		; 5A
	ora $0B.b,X		; 15 0B
	stx $D323.w		; 8E 23 D3
	ora ($D6.b,S),Y		; 13 D6
	ora ($DB.b)		; 12 DB
	ora $05DF.w,Y		; 19 DF 05
	xce		; FB
	ora [$18.b]		; 07 18
	rti		; 40

	php		; 08
	cpx #$7000.w		; E0 00 70
	asl $1F2C.w,X		; 1E 2C 1F
	and $360F.w		; 2D 0F 36
	ora [$22.b]		; 07 22
	ora [$18.b]		; 07 18
	lda $46.b,X		; B5 46
	sbc $0C.b,S		; E3 0C
	sbc $9D.b,S		; E3 9D
	lsr $DA.b		; 46 DA
	sty $F5.b		; 84 F5
	bit $5828.w		; 2C 28 58
	eor $F8.b,X		; 55 F8
	stz $99.b		; 64 99
	eor ($DB.b,X)		; 41 DB
	pld		; 2B
	tda		; 7B
	inc A		; 1A
	rol $15.b,X		; 36 15
	tsb $F80B.w		; 0C 0B F8
	cmp ($F4.b,S),Y		; D3 F4
	and $64.b,S		; 23 64
	tas		; 1B
	rti		; 40

	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $C0.b		; 00 C0
	cpy #$809C.w		; C0 9C 80
	lsr $C06D.w,X		; 5E 6D C0
	ldy #$6080.w		; A0 80 60
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	tsb $0180.w		; 0C 80 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $0B.b,S		; 03 0B
	tsb $3F.b		; 04 3F
	brk $F6.b		; 00 F6
	ora ($08.b,X)		; 01 08
	ora [$30.b]		; 07 30
	ora $010000.l		; 0F 00 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $80.b		; 00 80
	adc $F0FE01.l,X		; 7F 01 FE F0
	ora $077F80.l		; 0F 80 7F 07
	sed		; F8
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	adc $01FE00.l,X		; 7F 00 FE 01
	ora $007F00.l		; 0F 00 7F 00
	sed		; F8
	ora [$FC.b]		; 07 FC
	ora $FC.b,S		; 03 FC
	ora $F8.b,S		; 03 F8
	ora [$70.b]		; 07 70
	bra -56.b		; 80 C8
	bmi 116.b		; 30 74
	dey		; 88
	dec A		; 3A
	cpy $FD.b		; C4 FD
	cop $E0.b		; 02 E0
	ora $050CF3.l,X		; 1F F3 0C 05
	plx		; FA
	bra   0.b		; 80 00
	bmi -64.b		; 30 C0
	dey		; 88
	bvs -60.b		; 70 C4
	sec		; 38
	cop $FC.b		; 02 FC
	ora $F00CE0.l,X		; 1F E0 0C F0
	plx		; FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $87.b		; 00 87
	sei		; 78
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $FF.b		; 00 FF
	brk $1C.b		; 00 1C
	ora $0E.b,S		; 03 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
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
	brk $F8.b		; 00 F8
	ora [$7F.b]		; 07 7F
	bra  63.b		; 80 3F
	cpy #$609F.w		; C0 9F 60
	sbc $1C.b,S		; E3 1C
	and $010E00.l,X		; 3F 00 0E 01
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	jsl $CB40E5.l		; 22 E5 40 CB
	brk $FE.b		; 00 FE
	brk $0E.b		; 00 0E
	pea $FE77.w		; F4 77 FE
	ora $B68F.w		; 0D 8F B6
	sta [$2F.b]		; 87 2F
	ora $1B5B.w		; 0D 5B 1B
	and [$37.b],Y		; 37 37
	ora [$07.b]		; 07 07
	adc [$73.b],Y		; 77 73
	asl $F308.w		; 0E 08 F3
	.db $82, $79, $01		; 82 79 01
	tad		; 5B
	cli		; 58
	adc [$47.b]		; 67 47
	lda $87.b,S		; A3 87
	lda [$87.b]		; A7 87
	sbc [$87.b]		; E7 87
	inc $07.b		; E6 07
	inc $77.b,X		; F6 77
	asl $86.b		; 06 86
	sbc $B8F7A7.l,X		; FF A7 F7 B8
	sbc ($7F.b,S),Y		; F3 7F
	sbc ($7F.b,S),Y		; F3 7F
	sbc ($7F.b)		; F2 7F
	adc ($7F.b)		; 72 7F
	adc ($0F.b)		; 72 0F
	asl $0F.b		; 06 0F
	ldx $F980.w,Y		; BE 80 F9
	ora ($F4.b,X)		; 01 F4
	ora [$C8.b]		; 07 C8
	asl $3CA0.w		; 0E A0 3C
	rti		; 40

	bvs   0.b		; 70 00
	cpx #$8000.w		; E0 00 80
	adc $00FE00.l,X		; 7F 00 FE 00
	plx		; FA
	cop $F4.b		; 02 F4
	tsb $D0.b		; 04 D0
	bpl -96.b		; 10 A0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
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
	brk $78.b		; 00 78
	ora [$68.b]		; 07 68
	ora [$6C.b],Y		; 17 6C
	ora ($66.b,S),Y		; 13 66
	ora $0837.w,Y		; 19 37 08
	and ($0C.b,S),Y		; 33 0C
	and $1806.w,Y		; 39 06 18
	ora [$07.b]		; 07 07
	brk $17.b		; 00 17
	brk $13.b		; 00 13
	brk $19.b		; 00 19
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $3C.b		; 00 3C
	cmp $1F.b,S		; C3 1F
	cpx #$E010.w		; E0 10 E0
	ora [$F7.b]		; 07 F7
	ora [$F4.b]		; 07 F4
	sty $76.b		; 84 76
	cpy #$E338.w		; C0 38 E3
	trb $00C3.w		; 1C C3 00
	cpx #$E000.w		; E0 00 E0
	ora $F40FF3.l		; 0F F3 0F F4
	ora $380F70.l		; 0F 70 0F 38
	ora [$1C.b]		; 07 1C
	brk $51.b		; 00 51
	stx $201F.w		; 8E 1F 20
	ply		; 7A
	cpx $ED.b		; E4 ED
	sbc ($8E.b),Y		; F1 8E
	sty $FD.b		; 84 FD
	bit #$157D.w		; 89 7D 15
	plx		; FA
	and ($8E.b)		; 32 8E
	jsr $E000.w		; 20 00 E0
	tsb $E9.b		; 04 E9
	bra -13.b		; 80 F3
	sty $F1.b		; 84 F1
	phd		; 0B
	.db $82, $17, $82		; 82 17 82
	and [$05.b],Y		; 37 05
	cpy $B432.w		; CC 32 B4
	lsr A		; 4A
	tad		; 5B
	inc $01.b		; E6 01
	mvn $A4,$89		; 54 89 A4
	eor $B8BB57.l,X		; 5F 57 BB B8
	cmp $80B1DF.l,X		; DF DF B1 80
	ora #$0144.w		; 09 44 01
	cpx #$F803.w		; E0 03 F8
	phb		; 8B
	sed		; F8
	ora $47BFE8.l,X		; 1F E8 BF 47
	sbc $339C20.l,X		; FF 20 9C 33
	dec $BD66.w		; CE 66 BD
	mvp $4C,$1D		; 44 1D 4C
	and $B868.w,Y		; 39 68 B8
	iny		; C8
	adc #$EC59.w		; 69 59 EC
	cmp $9101D1.l,X		; DF D1 01 91
	bpl -77.b		; 10 B3
	bmi -93.b		; 30 A3
	jsr $00A7.w		; 20 A7 00
	lda [$20.b]		; A7 20
	dec $90.b,X		; D6 90
	cmp ($12.b)		; D2 12
	cpy #$063F.w		; C0 3F 06
	sbc $C639.w,Y		; F9 39 C6
	beq  15.b		; F0 0F
	cpy #$013F.w		; C0 3F 01
	inc $FF00.w,X		; FE 00 FF
	ora $003FF0.l		; 0F F0 3F 00
	sbc $C600.w,Y		; F9 00 C6
	ora ($0F.b,X)		; 01 0F
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	brk $F0.b		; 00 F0
	ora $3E807F.l		; 0F 7F 80 3E
	cmp ($FC.b,X)		; C1 FC
	ora $78.b,S		; 03 78
	sta [$1C.b]		; 87 1C
	sbc $0E.b,S		; E3 0E
	sbc ($82.b),Y		; F1 82
	adc $7689.w,X		; 7D 89 76
	bra 127.b		; 80 7F
	cmp ($3E.b,X)		; C1 3E
	ora $FC.b,S		; 03 FC
	sta [$78.b]		; 87 78
	sbc $1C.b,S		; E3 1C
	sbc ($0E.b),Y		; F1 0E
	adc $7682.w,X		; 7D 82 76
	bit #$F50A.w		; 89 0A F5
	tas		; 1B
	cpx $10.b		; E4 10
	sbc $D3E21D.l		; EF 1D E2 D3
	bit $8778.w		; 2C 78 87
	sei		; 78
	sta [$3C.b]		; 87 3C
	cmp $F5.b,S		; C3 F5
	cop $E4.b		; 02 E4
	ora $EE.b,S		; 03 EE
	ora ($E2.b,X)		; 01 E2
	ora ($2C.b,X)		; 01 2C
	ora $87.b,S		; 03 87
	brk $87.b		; 00 87
	brk $C3.b		; 00 C3
	brk $00.b		; 00 00
	sbc $D7F609.l,X		; FF 09 F6 D7
	plp		; 28
	plb		; AB
	mvn $C5,$3A		; 54 3A C5
	ora $EB.b,X		; 15 EB
	eor $FEA3.w,X		; 5D A3 FE
	ora ($FF.b)		; 12 FF
	brk $F6.b		; 00 F6
	ora #$DE20.w		; 09 20 DE
	mvn $C5,$AA		; 54 AA C5
	and #$02EA.w		; 29 EA 02
	ldx #$1100.w		; A2 00 11
	trb $60.b		; 14 60
	lsr $DCE0.w,X		; 5E E0 DC
	rts		; 60

	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	stz $10D0.w		; 9C D0 10
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	phd		; 0B
	tda		; 7B
	lsr $C6.b		; 46 C6
	and [$3F.b]		; 27 3F
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsa		; 3B
	ora ($C7.b,X)		; 01 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $5EF80A.l,X		; 1F 0A F8 5E
	cmp $E8.b,S		; C3 E8
	asl $38A0.w		; 0E A0 38
	rti		; 40

	bvs   0.b		; 70 00
	cpx #$0000.w		; E0 00 00
	cop $02.b		; 02 02
	ora [$10.b],Y		; 17 10
	ldy $F080.w,X		; BC 80 F0
	brk $D0.b		; 00 D0
	bpl -96.b		; 10 A0
	jsr $8080.w		; 20 80 80
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
	and ($38.b),Y		; 31 38
	sbc $E8.b,S		; E3 E8
	adc $18.b,S		; 63 18
	eor $58.b,S		; 43 58
	stx $A698.w		; 8E 98 A6
	bcc -16.b		; 90 F0
	bit #$0700.w		; 89 00 07
	and [$00.b],Y		; 37 00
	sbc [$10.b],Y		; F7 10
	ora $286F08.l		; 0F 08 6F 28
	sbc [$60.b]		; E7 60
	sbc $018760.l		; EF 60 87 01
	brk $00.b		; 00 00
	bne  24.b		; D0 18
	cpy #$A018.w		; C0 18 A0
	bmi  64.b		; 30 40
	bvs -64.b		; 70 C0
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $A0.b		; 00 A0
	jsr $0000.w		; 20 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	jsr $2030.w		; 20 30 20
	bvs 112.b		; 70 70
	bvs 120.b		; 70 78
	sei		; 78
	rol $006E.w		; 2E 6E 00
	brk $30.b		; 00 30
	sei		; 78
	jsr $2078.w		; 20 78 20
	sei		; 78
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	php		; 08
	inc $FF26.w,X		; FE 26 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	and $00.b,S		; 23 00
	bit $1003.w,X		; 3C 03 10
	ora $01000F.l		; 0F 0F 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $28.b		; 00 28
	plp		; 28
	pha		; 48
	pha		; 48
	beq -48.b		; F0 D0
	bne -48.b		; D0 D0
	cpx #$40E0.w		; E0 E0 40
	rti		; 40

	bvs 112.b		; 70 70
	bra -128.b		; 80 80
	sec		; 38
	bpl 120.b		; 10 78
	bmi -16.b		; 30 F0
	jsr $2070.w		; 20 70 20
	cpx #$C000.w		; E0 00 C0
	bra -16.b		; 80 F0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	cpx #$40A0.w		; E0 A0 40
	rts		; 60

	bra -96.b		; 80 A0
	rti		; 40

	cpx #$A000.w		; E0 00 A0
	rti		; 40

	bvs -80.b		; 70 B0
	dey		; 88
	pha		; 48
	cpx #$4000.w		; E0 00 40
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $40.b		; 00 40
	rti		; 40

	brk $B0.b		; 00 B0
	brk $38.b		; 00 38
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $C3.b		; 00 C3
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $F200.w,X		; 3C 00 F2
	ora $7985.w		; 0D 85 79
	tsb $1DF0.w		; 0C F0 1D
	sbc $7C.b,S		; E3 7C
	sta $FE.b,S		; 83 FE
	and $BC4545.l,X		; 3F 45 45 BC
	ldx $0C.b		; A6 0C
	brk $7A.b		; 00 7A
	brk $F3.b		; 00 F3
	brk $E0.b		; 00 E0
	brk $83.b		; 00 83
	ora $3D.b,S		; 03 3D
	ora ($7E.b,X)		; 01 7E
	tsx		; BA
	and $6CDBDB.l,X		; 3F DB DB 6C
	beq   4.b		; F0 04
	cpx $7036.w		; EC 36 70
	tsb $E0.b		; 04 E0
	stz $C860.w		; 9C 60 C8
	brk $F0.b		; 00 F0
	inx		; E8
	inx		; E8
	rts		; 60

	rti		; 40

	iny		; C8
	bpl -40.b		; 10 D8
	jsr $00F8.w		; 20 F8 00
	sei		; 78
	clc		; 18
	bmi   0.b		; 30 00
	bra -116.b		; 80 8C
	cpx #$001E.w		; E0 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	ora $06.b,S		; 03 06
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($6A.b,X)		; 01 6A
	ora ($A1.b)		; 12 A1
	eor $39C9.w,X		; 5D C9 39
	jmp $94A2.w		; 4C A2 94
	eor [$29.b]		; 47 29
	sty $D9D2.w		; 8C D2 D9
	sbc $1031.w,Y		; F9 31 10
	and [$55.b]		; 27 55
	and [$24.b]		; 27 24
	eor $9E.b,S		; 43 9E
	eor $38.b,S		; 43 38
	bra 112.b		; 80 70
	ora $E0.b,S		; 03 E0
	ora [$F0.b]		; 07 F0
	cmp [$51.b]		; C7 51
	rol $2659.w		; 2E 59 26
	phk		; 4B
	bit $93.b,X		; 34 93
	jmp ($6C93.w)		; 6C 93 6C
	sta [$69.b],Y		; 97 69
	sta [$6B.b],Y		; 97 6B
	lda [$4B.b],Y		; B7 4B
	rol $2610.w		; 2E 10 26
	bpl  52.b		; 10 34
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $69.b		; 00 69
	brk $6B.b		; 00 6B
	brk $4B.b		; 00 4B
	brk $38.b		; 00 38
	plp		; 28
	adc ($52.b)		; 72 52
	sbc ($A2.b,S),Y		; F3 A2
	sbc $44.b		; E5 44
	sbc $C4.b		; E5 C4
	cmp [$84.b]		; C7 84
	txa		; 8A
	php		; 08
	tax		; AA
	php		; 08
	cpx $DFC7.w		; EC C7 DF
	sta $0DAF.w		; 8D AF 0D
	eor $1BDF1B.l,X		; 5F 1B DF 1B
	lda $777F3B.l,X		; BF 3B 7F 77
	adc $E0DF77.l,X		; 7F 77 DF E0
	ora $1306.w,Y		; 19 06 13
	bit $C1C2.w		; 2C C2 C1
	ldy $96AC.w,X		; BC AC 96
	ldx $8E0F.w		; AE 0F 8E
	asl $2F.b		; 06 2F
	brk $E8.b		; 00 E8
	asl $E0.b		; 06 E0
	tsb $80E0.w		; 0C E0 80
	sbc $FF0C.w,X		; FD 0C FF
	asl $FF.b		; 06 FF
	asl $00FF.w		; 0E FF 00
	sbc $8C26C4.l,X		; FF C4 26 8C
	ror $A8.b		; 66 A8
	stz $90.b		; 64 90
	mvp $EC,$E8		; 44 E8 EC
	bcs -104.b		; B0 98
	inx		; E8
	iny		; C8
	iny		; C8
	iny		; C8
	clc		; 18
	brk $58.b		; 00 58
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	rts		; 60

	sei		; 78
	bcs 120.b		; B0 78
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $1C.b		; 00 1C
	ora $60.b,S		; 03 60
	ora $2B03FC.l,X		; 1F FC 03 2B
	pei ($4F.b)		; D4 4F
	bcs -113.b		; B0 8F
	bvs -113.b		; 70 8F
	bvs   0.b		; 70 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	bit $3EC0.w,X		; 3C C0 3E
	bcs  78.b		; B0 4E
	bvs  13.b		; 70 0D
	bvs   8.b		; 70 08
	cpy #$3800.w		; C0 00 38
	cpy #$F804.w		; C0 04 F8
	sbc ($0C.b)		; F2 0C
	sta $DD62.w,X		; 9D 62 DD
	jsl $FAD03E.l		; 22 3E D0 FA
	trb $00.b		; 14 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	beq  34.b		; F0 22
	pei ($22.b)		; D4 22
	cpy $C0.b		; C4 C0
	tsb $04.b		; 04 04
	brk $40.b		; 00 40
	dec $04.b		; C6 04
	dec $2C.b		; C6 2C
	ror $6E28.w		; 6E 28 6E
	php		; 08
	dec $C604.w		; CE 04 C6
	mvp $44,$C6		; 44 C6 44
	dec $3C.b		; C6 3C
	tsb $78.b		; 04 78
	rti		; 40

	bpl   0.b		; 10 00
	trb $04.b		; 14 04
	stz $44.b,X		; 74 44
	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $02.b		; 00 02
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0803.w		; 0C 03 08
	asl $0518.w		; 0E 18 05
	ora ($0E.b),Y		; 11 0E
	ora ($18.b,S),Y		; 13 18
	and ($01.b)		; 32 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $D0.b		; 00 D0
	clc		; 18
	ldy #$C030.w		; A0 30 C0
	rts		; 60

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	dec $44.b		; C6 44
	dec $44.b		; C6 44
	dec $04.b		; C6 04
	dec $24.b		; C6 24
	ror $24.b		; 66 24
	ror $00.b		; 66 00
	.db $62, $00, $22		; 62 00 22
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	clc		; 18
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	jsr $001C.w		; 20 1C 00
	tsb $1026.w		; 0C 26 10
	bit $38.b		; 24 38
	jmp ($4800.w)		; 6C 00 48
	bpl  88.b		; 10 58
	brk $D0.b		; 00 D0
	rti		; 40

	bne  64.b		; D0 40
	bne  24.b		; D0 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	rti		; 40

	jsr $2000.w		; 20 00 20
	brk $5B.b		; 00 5B
	eor ($5E.b,S),Y		; 53 5E
	phk		; 4B
	ora $1B45.w,X		; 1D 45 1B
	sta $1D.b		; 85 1D
	jsl $F3EC73.l		; 22 73 EC F3
	cpx $E6F9.w		; EC F9 E6
	lsr $0FEC.w,X		; 5E EC 0F
	sbc $07.b		; E5 07
	sbc ($05.b)		; F2 05
	beq   2.b		; F0 02
	cpx $EE00.w		; EC 00 EE
	stz $E8.b		; 64 E8
	dec $E8.b		; C6 E8
	cli		; 58
	jmp $4C58.w		; 4C 58 4C
	bne -54.b		; D0 CA
	bvs -30.b		; 70 E2
	cpx #$C042.w		; E0 42 C0
	and ($E0.b)		; 32 E0
	ora ($54.b)		; 12 54
	rol $E8.b,X		; 36 E8
	rol $2EE0.w		; 2E E0 2E
	rts		; 60

	bit $8CE0.w		; 2C E0 8C
	mvp $AC,$18		; 44 18 AC
	bra -116.b		; 80 8C
	bra -120.b		; 80 88
	bra  10.b		; 80 0A
	asl $0B.b		; 06 0B
	ora [$1C.b]		; 07 1C
	ora ($14.b,X)		; 01 14
	asl A		; 0A
	bit $2813.w		; 2C 13 28
	ora [$28.b],Y		; 17 28
	ora [$51.b],Y		; 17 51
	rol $0107.w		; 2E 07 01
	ora [$00.b]		; 07 00
	brk $07.b		; 00 07
	asl A		; 0A
	ora $13.b		; 05 13
	tsb $0817.w		; 0C 17 08
	ora [$08.b],Y		; 17 08
	rol $7010.w		; 2E 10 70
	adc ($F8.b)		; 72 F8
	xce		; FB
	jsr ($3EFC.w,X)		; FC FC 3E
	ror $8F06.w,X		; 7E 06 8F
	cpy #$8201.w		; C0 01 82
	asl $F9.b		; 06 F9
	phd		; 0B
	cpx #$F09F.w		; E0 9F F0
	adc $0CFF38.l,X		; 7F 38 FF 0C
	sbc $307F80.l,X		; FF 80 7F 30
	and $087F70.l,X		; 3F 70 7F 08
	ora [$B7.b]		; 07 B7
	lsr A		; 4A
	lda [$48.b],Y		; B7 48
	lda ($4C.b,S),Y		; B3 4C
	lda ($4C.b,S),Y		; B3 4C
	adc ($0C.b,S),Y		; 73 0C
	ply		; 7A
	ora $6A.b		; 05 6A
	ora $2A.b		; 05 2A
	ora $4A.b		; 05 4A
	brk $48.b		; 00 48
	brk $4C.b		; 00 4C
	brk $4C.b		; 00 4C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $AE.b		; 00 AE
	dey		; 88
	cmp [$91.b],Y		; D7 91
	cmp $F1FF91.l,X		; DF 91 FF F1
	and $FF7DFF.l,X		; 3F FF 7D FF
	mvp $3A,$C7		; 44 C7 3A
	sta $FF.b,S		; 83 FF
	adc [$FF.b],Y		; 77 FF
	ror $6EFF.w		; 6E FF 6E
	sbc $C0DF0E.l,X		; FF 0E DF C0
	sta $82.b,S		; 83 82
	tsx		; BA
	.db $82, $FC, $80		; 82 FC 80
	rti		; 40

	cpy #$3614.w		; C0 14 36
	eor #$434C.w		; 49 4C 43
	.db $42, $6A		; 42 6A
	lsr A		; 4A
	tax		; AA
	txa		; 8A
	sbc $ED89.w		; ED 89 ED
	bit #$FF00.w		; 89 00 FF
	bpl  -1.b		; 10 FF
	iny		; C8
	ldx $BCF2.w,Y		; BE F2 BC
	sbc $75FFB5.l,X		; FF B5 FF 75
	sbc $76FF76.l,X		; FF 76 FF 76
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	rti		; 40

	bmi -64.b		; 30 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	bne -48.b		; D0 D0
	cld		; D8
	cpx #$98E8.w		; E0 E8 98
	ldy $BCF8.w,X		; BC F8 BC
	inc $D78E.w		; EE 8E D7
	sta ($0F.b,X)		; 81 0F
	ora [$A0.b]		; 07 A0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	rts		; 60

	bcs   0.b		; B0 00
	stz $8F10.w,X		; 9E 10 8F
	asl $0007.w		; 0E 07 00
	jsr $0064.w		; 20 64 00
	stz $00.b		; 64 00
	bit $00.b		; 24 00
	bit $00.b		; 24 00
	bit $10.b		; 24 10
	bit $10.b,X		; 34 10
	bit $00.b,X		; 34 00
	bit $18.b,X		; 34 18
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	clc		; 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	bpl  96.b		; 10 60
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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	tsb $0C.b		; 04 0C
	phd		; 0B
	clc		; 18
	asl $30.b,X		; 16 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $84F000.l		; 0F 00 F0 84
	sed		; F8
	sty $88E0.w		; 8C E0 88
	bvs  24.b		; 70 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	sei		; 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra  77.b		; 80 4D
	ora $4D.b,S		; 03 4D
	ora $05.b,S		; 03 05
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $75.b		; 02 75
	asl $71.b		; 06 71
	asl $F1.b		; 06 F1
	tsb $FB.b		; 04 FB
	tsb $0CFA.w		; 0C FA 0C
	cpx #$F00C.w		; E0 0C F0
	clc		; 18
	cpx #$F818.w		; E0 18 F8
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -124.b		; 10 84
	trb $0C84.w		; 1C 84 0C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	php		; 08
	tsb $8680.w		; 0C 80 86
	mvp $20,$C6		; 44 C6 20
	sbc $02.b,S		; E3 02
	adc $F0.b,S		; 63 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra  94.b		; 80 5E
	.db $42, $3C		; 42 3C
	jsr $0102.w		; 20 02 01
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	php		; 08
	ora [$10.b]		; 07 10
	asl $1528.w		; 0E 28 15
	bvc  40.b		; 50 28
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1401.w		; 0E 01 14
	phd		; 0B
	plp		; 28
	ora [$ED.b],Y		; 17 ED
	bit #$086E.w		; 89 6E 08
	ror $EF08.w		; 6E 08 EF
	php		; 08
	sbc $F8F80F.l		; EF 0F F8 F8
	cpy $C43C.w		; CC 3C C4
	trb $76FF.w		; 1C FF 76
	sbc $F7FFF7.l,X		; FF F7 FF F7
	sbc $F0FFF7.l,X		; FF F7 FF F0
	sbc $101300.l,X		; FF 00 13 10
	phd		; 0B
	php		; 08
	rts		; 60

	rti		; 40

	bcs -128.b		; B0 80
	beq -128.b		; F0 80
	cpy #$C0A0.w		; C0 A0 C0
	beq  32.b		; F0 20
	bmi   0.b		; 30 00
	clc		; 18
	bpl  24.b		; 10 18
	cpy #$C080.w		; C0 80 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ldy #$C020.w		; A0 20 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $51.b		; 00 51
	rol $2C52.w		; 2E 52 2C
	adc $1D.b,S		; 63 1D
	rtl		; 6B

	trb $AF.b		; 14 AF
	eor ($8F.b),Y		; 51 8F
	adc ($9F.b,S),Y		; 73 9F
	ror $9F.b		; 66 9F
	ror $2E.b		; 66 2E
	bpl  45.b		; 10 2D
	ora ($1D.b),Y		; 11 1D
	jsr $2014.w		; 20 14 20
	eor ($20.b),Y		; 51 20
	adc ($00.b,S),Y		; 73 00
	ror $00.b		; 66 00
	ror $00.b		; 66 00
	sbc $E4EB.w,Y		; F9 EB E4
	ldy $E5.b		; A4 E5
	eor $CB.b		; 45 CB
	bit #$89CB.w		; 89 CB 89
	sta $111509.l		; 8F 09 15 11
	eor $11.b,X		; 55 11
	inx		; E8
	ora [$BC.b]		; 07 BC
	tas		; 1B
	eor $36BF1A.l,X		; 5F 1A BF 36
	lda $767F36.l,X		; BF 36 7F 76
	sbc $EEFFEE.l,X		; FF EE FF EE
	lda #$53AC.w		; A9 AC 53
	cld		; D8
	and [$20.b]		; 27 20
	ora $2A6B0C.l		; 0F 0C 6B 2A
	adc $ED24.w		; 6D 24 ED
	and $DA.b		; 25 DA
	ora ($80.b)		; 12 80
	inc $FC40.w,X		; FE 40 FC
	jsr $CCF8.w		; 20 F8 CC
	beq  -2.b		; F0 FE
	pei ($FE.b)		; D4 FE
	phx		; DA
	sbc $EDFFDA.l,X		; FF DA FF ED
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0080.w		; C0 80 00
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $1C.b		; 00 1C
	ora $60.b,S		; 03 60
	ora $2B03FC.l,X		; 1F FC 03 2B
	pei ($4F.b)		; D4 4F
	bcs -113.b		; B0 8F
	bvs -113.b		; 70 8F
	bvs   0.b		; 70 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	bit $3EC0.w,X		; 3C C0 3E
	bcs  78.b		; B0 4E
	bvs  13.b		; 70 0D
	bvs   8.b		; 70 08
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	rol $473C.w,X		; 3E 3C 47
	eor [$7C.b]		; 47 7C
	adc $1E1E.w,X		; 7D 1E 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $387E00.l,X		; 3F 00 7E 38
	pla		; 68
	asl $3F0C.w,X		; 1E 0C 3F
	eor $2B5C.w,X		; 5D 5C 2B
	rtl		; 6B

	plp		; 28
	pld		; 2B
	sta $34.b,S		; 83 34
	eor $44.b,S		; 43 44
	and [$CC.b]		; 27 CC
	ror $0D.b		; 66 0D
	inc $0D.b		; E6 0D
	ora $FC2BF3.l		; 0F F3 2B FC
	sta $7C.b,S		; 83 7C
	bra 124.b		; 80 7C
	bra  61.b		; 80 3D
	brk $1D.b		; 00 1D
	ora $1C.b		; 05 1C
	ora $1C.b		; 05 1C
	lda [$24.b]		; A7 24
	ror $BF28.w		; 6E 28 BF
	lda $F978FF.l,X		; BF FF 78 F9
	asl $3C.b		; 06 3C
	cmp $3E.b,S		; C3 3E
	cmp ($94.b,X)		; C1 94
	.db $62, $FF, $C3		; 62 FF C3
	sbc $40EFC7.l,X		; FF C7 EF 40
	sei		; 78
	brk $06.b		; 00 06
	cmp ($0A.b,X)		; C1 0A
	sbc #$8A48.w		; E9 48 8A
	adc #$A088.w		; 69 88 A0
	jsr $7858.w		; 20 58 78
	sty $B40C.w		; 8C 0C B4
	stz $40.b,X		; 74 40
	cpy $30.b		; C4 30
	tya		; 98
	rti		; 40

	bpl -96.b		; 10 A0
	bmi -32.b		; 30 E0
	cld		; D8
	iny		; C8
	ldy $7E04.w,X		; BC 04 7E
	brk $0E.b		; 00 0E
	bmi  14.b		; 30 0E
	rts		; 60

	tsb $E0.b		; 04 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	clc		; 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	php		; 08
	tsb $8680.w		; 0C 80 86
	mvp $20,$C6		; 44 C6 20
	sbc $02.b,S		; E3 02
	adc $F0.b,S		; 63 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra  94.b		; 80 5E
	.db $42, $3C		; 42 3C
	jsr $0C01.w		; 20 01 0C
	tsb $111C.w		; 0C 1C 11
	and ($2C.b),Y		; 31 2C
	adc ($58.b,X)		; 61 58
	cmp $B4.b,S		; C3 B4
	stx $68.b		; 86 68
	tsb $18F0.w		; 0C F0 18
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	asl $1E00.w		; 0E 00 1E
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	adc $02.b,S		; 63 02
	adc $16.b,S		; 63 16
	and [$14.b],Y		; 37 14
	and [$04.b],Y		; 37 04
	adc [$02.b]		; 67 02
	adc $22.b,S		; 63 22
	adc $22.b,S		; 63 22
	adc $1E.b,S		; 63 1E
	cop $3C.b		; 02 3C
	jsr $0008.w		; 20 08 00
	asl A		; 0A
	cop $3A.b		; 02 3A
	jsl $1C203C.l		; 22 3C 20 1C
	brk $1C.b		; 00 1C
	brk $22.b		; 00 22
	adc $22.b,S		; 63 22
	adc $22.b,S		; 63 22
	adc $02.b,S		; 63 02
	adc $12.b,S		; 63 12
	and ($12.b,S),Y		; 33 12
	and ($00.b,S),Y		; 33 00
	and ($00.b),Y		; 31 00
	ora ($1C.b),Y		; 11 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $000C.w		; 20 0C 00
	tsb $1E00.w		; 0C 00 1E
	bpl  14.b		; 10 0E
	brk $06.b		; 00 06
	ora ($08.b,S),Y		; 13 08
	ora ($1C.b)		; 12 1C
	rol $00.b,X		; 36 00
	bit $08.b		; 24 08
	bit $6800.w		; 2C 00 68
	jsr $2068.w		; 20 68 20
	pla		; 68
	tsb $0C00.w		; 0C 00 0C
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	jsr $0010.w		; 20 10 00
	bpl   0.b		; 10 00
	php		; 08
	ora $1900.w,Y		; 19 00 19
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	brk $0D.b		; 00 0D
	asl $00.b		; 06 00
	asl $0608.w		; 0E 08 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	tsb $9F.b		; 04 9F
	adc $9F.b		; 65 9F
	adc ($9F.b,X)		; 61 9F
	adc ($9F.b,X)		; 61 9F
	adc ($5E.b,X)		; 61 5E
	and ($54.b,X)		; 21 54
	and $54.b,S		; 23 54
	and $24.b,S		; 23 24
	ora $65.b,S		; 03 65
	brk $61.b		; 00 61
	brk $61.b		; 00 61
	brk $61.b		; 00 61
	brk $21.b		; 00 21
	ora ($21.b,X)		; 01 21
	ora ($21.b,X)		; 01 21
	ora ($01.b,X)		; 01 01
	ora ($5E.b,X)		; 01 5E
	ora ($AE.b)		; 12 AE
	jsl $FF22BE.l		; 22 BE 22 FF
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	inc $FFFB.w,X		; FE FB FF
	bit #$8E.b		; 89 8E
	adc $06.b,X		; 75 06
	sbc $DDFFED.l,X		; FF ED FF DD
	sbc $1DFFDD.l,X		; FF DD FF 1D
	lda $040781.l,X		; BF 81 07 04
	stz $04.b,X		; 74 04
	sed		; F8
	brk $DA.b		; 00 DA
	ora ($DD.b)		; 12 DD
	ora ($DD.b),Y		; 11 DD
	ora ($DF.b),Y		; 11 DF
	ora ($DF.b),Y		; 11 DF
	ora $98F0F0.l,X		; 1F F0 F0 98
	sei		; 78
	iny		; C8
	sec		; 38
	sbc $EEFFED.l,X		; FF ED FF EE
	sbc $EEFFEE.l,X		; FF EE FF EE
	sbc $00FFE0.l,X		; FF E0 FF 00
	and [$20.b]		; 27 20
	ora [$10.b],Y		; 17 10
	cpy #$80.b		; C0 80
	rts		; 60

	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	rti		; 40

	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $8030.w		; 20 30 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	phd		; 0B
	tsb $0E.b		; 04 0E
	ora ($18.b,X)		; 01 18
	ora [$10.b]		; 07 10
	ora $230E31.l		; 0F 31 0E 23
	ora $3E46.w,X		; 1D 46 3E
	phk		; 4B
	php		; 08
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	ora $3F00.w,X		; 1D 00 3F
	ora ($0F.b,X)		; 01 0F
	and [$CB.b],Y		; 37 CB
	and $17.b,X		; 35 17
	cpx $33.b		; E4 33
	cpy #$75.b		; C0 75
	sty $0EF3.w		; 8C F3 0E
	sbc $1AFF.w,X		; FD FF 1A
	tas		; 1B
	sta $013113.l,X		; 9F 13 31 01
	xba		; EB
	brk $CF.b		; 00 CF
	brk $83.b		; 00 83
	brk $0D.b		; 00 0D
	tsb $00F0.w		; 0C F0 00
	pea $FFE0.w		; F4 E0 FF
	cpx $0808.w		; EC 08 08
	and [$07.b],Y		; 37 07
	rol $16.b		; 26 16
	eor $492D.w		; 4D 2D 49
	and $0574.w		; 2D 74 05
	lda ($59.b,X)		; A1 59
	cpy #$3C.b		; C0 3C
	brk $1F.b		; 00 1F
	asl $0F.b		; 06 0F
	ora ($0F.b)		; 12 0F
	and $1F.b		; 25 1F
	and #$1F.b		; 29 1F
	brk $3F.b		; 00 3F
	eor $3C27.w,Y		; 59 27 3C
	eor $67.b,S		; 43 67
	tsb $20.b		; 04 20
	dey		; 88
	ora ($03.b,X)		; 01 03
	cmp $FFEFEF.l,X		; DF EF EF FF
	sed		; F8
	inc $C181.w		; EE 81 C1
	ora #$19.b		; 09 19
	brk $9C.b		; 00 9C
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	sta [$FF.b]		; 87 FF
	dec $40FF.w		; CE FF 40
	sbc $01FF81.l,X		; FF 81 FF 01
	sbc $7C5EBB.l,X		; FF BB 5E 7C
	stz $DF.b,X		; 74 DF
	wai		; CB
	plx		; FA
	xba		; EB
	cmp [$F6.b],Y		; D7 F6
	tas		; 1B
	clc		; 18
	sbc [$F0.b]		; E7 F0
	dec $C0.b		; C6 C0
	eor $7F00.w,Y		; 59 00 7F
	dey		; 88
	ror $BEB4.w,X		; 7E B4 BE
	pei ($1E.b)		; D4 1E
	inx		; E8
	clc		; 18
	cpx $C0.b		; E4 C0
	sed		; F8
	bra  -8.b		; 80 F8
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
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
	clc		; 18
	ora $1717.w,X		; 1D 17 17
	ora $17.b,X		; 15 17
	tas		; 1B
	tas		; 1B
	ora $080D09.l		; 0F 09 0D 08
	tsb $0008.w		; 0C 08 00
	brk $1F.b		; 00 1F
	ora $1C.b		; 05 1C
	php		; 08
	asl $1F0A.w,X		; 1E 0A 1F
	tsb $09.b		; 04 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $25.b		; 00 25
	ora $21.b,S		; 03 21
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $C0.b		; 02 C0
	brk $38.b		; 00 38
	cpy #$04.b		; C0 04
	sed		; F8
	sbc ($0C.b)		; F2 0C
	sta $DD62.w,X		; 9D 62 DD
	jsl $FAD03E.l		; 22 3E D0 FA
	trb $00.b		; 14 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	beq  34.b		; F0 22
	pei ($22.b)		; D4 22
	cpy $C0.b		; C4 C0
	tsb $04.b		; 04 04
	brk $6C.b		; 00 6C
	bcs -64.b		; B0 C0
	bpl -80.b		; 10 B0
	cld		; D8
	cpy #$10.b		; C0 10
	bra 112.b		; 80 70
	bra  32.b		; 80 20
	bpl -16.b		; 10 F0
	pla		; 68
	php		; 08
	bra   0.b		; 80 00
	jsr $6040.w		; 20 40 60
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	rts		; 60

	cpy #$00.b		; C0 00
	bpl   0.b		; 10 00
	sed		; F8
	beq -64.b		; F0 C0
	bne -48.b		; D0 D0
	cld		; D8
	cpx #$E8.b		; E0 E8
	tya		; 98
	ldy $BCF8.w,X		; BC F8 BC
	inc $D78E.w		; EE 8E D7
	sta ($0F.b,X)		; 81 0F
	ora [$A0.b]		; 07 A0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	rts		; 60

	bcs   0.b		; B0 00
	stz $8F10.w,X		; 9E 10 8F
	asl $0007.w		; 0E 07 00
	adc $06.b,X		; 75 06
	adc ($06.b),Y		; 71 06
	sbc ($04.b),Y		; F1 04
	sbc $F90C.w,Y		; F9 0C F9
	tsb $0CE0.w		; 0C E0 0C
	beq  24.b		; F0 18
	cpx #$18.b		; E0 18
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy $1C.b		; C4 1C
	sty $0C.b		; 84 0C
	.db $82, $0E, $01		; 82 0E 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3E61.w,X		; 3C 61 3E
	adc $38.b,S		; 63 38
	.db $62, $1C, $C6		; 62 1C C6
	iny		; C8
	cpy $1810.w		; CC 10 18
	cpy #$10.b		; C0 10
	bra  48.b		; 80 30
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $78.b		; 00 78
	rti		; 40

	bmi   0.b		; 30 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	phd		; 0B
	clc		; 18
	asl $10.b		; 06 10
	ora $210C31.l,X		; 1F 31 0C 21
	sec		; 38
	adc $14.b,S		; 63 14
	lsr $38.b		; 46 38
	jmp $C860.w		; 4C 60 C8
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	asl $1E00.w,X		; 1E 00 1E
	cop $38.b		; 02 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $05.b		; 00 05
	cop $07.b		; 02 07
	brk $0C.b		; 00 0C
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	ora $541C23.l		; 0F 23 1C 54
	plp		; 28
	tax		; AA
	bvc   2.b		; 50 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1C.b		; 00 1C
	brk $28.b		; 00 28
	ora ($50.b,S),Y		; 13 50
	and [$E5.b]		; 27 E5
	inc A		; 1A
	phd		; 0B
	sbc ($19.b)		; F2 19
	cpx #$3A.b		; E0 3A
	dec $F9.b		; C6 F9
	ora [$FC.b]		; 07 FC
	adc $C90B0A.l,X		; 7F 0A 0B C9
	cmp $0018.w		; CD 18 00
	sbc $00.b,X		; F5 00
	sbc [$00.b]		; E7 00
	cmp ($00.b,X)		; C1 00
	tsb $04.b		; 04 04
	ply		; 7A
	cop $3D.b		; 02 3D
	sbc $8F.b,X		; F5 8F
	inc $B6.b,X		; F6 B6
	cld		; D8
	cpx #$08.b		; E0 08
	cld		; D8
	jmp ($18D0.w)		; 6C D0 18
	bra  56.b		; 80 38
	bra -80.b		; 80 B0
	brk $EF.b		; 00 EF
	sbc $80C0EF.l		; EF EF C0 80
	bcc  32.b		; 90 20
	bcs  64.b		; B0 40
	cpx #$00.b		; E0 00
	beq  48.b		; F0 30
	rts		; 60

	jsr $1000.w		; 20 00 10
	cpy #$30.b		; C0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	rol A		; 2A
	nop		; EA
	sbc $0000EB.l,X		; FF EB 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $00.b,X		; 36 00
	rol $3E15.w,X		; 3E 15 3E
	ora $12.b,X		; 15 12
	ora $0A15.w		; 0D 15 0A
	and $1A.b		; 25 1A
	rol A		; 2A
	ora $49.b,X		; 15 49
	rol $5B.b,X		; 36 5B
	bit $51.b		; 24 51
	rol $6C93.w		; 2E 93 6C
	ora $0A02.w		; 0D 02 0A
	ora $1A.b		; 05 1A
	ora ($15.b,X)		; 01 15
	cop $36.b		; 02 36
	brk $24.b		; 00 24
	brk $2E.b		; 00 2E
	brk $6C.b		; 00 6C
	brk $9C.b		; 00 9C
	adc ($3C.b,X)		; 61 3C
	cmp ($79.b,X)		; C1 79
	sta $89.b,S		; 83 89
	ora $15.b,S		; 03 15
	ora ($61.b,S),Y		; 13 61
	adc ($EA.b,X)		; 61 EA
	lsr $F1.b		; 46 F1
	ora ($60.b,S),Y		; 13 60
	sta $C0.b,S		; 83 C0
	ora $80.b,S		; 03 80
	ora [$70.b]		; 07 70
	adc [$F1.b],Y		; 77 F1
	sbc $409FE0.l		; EF E0 9F 40
	ora $6E0F10.l,X		; 1F 10 0F 6E
	adc ($17.b),Y		; 71 17
	dey		; 88
	cmp ($EE.b),Y		; D1 EE
	sbc $F9FEF0.l,X		; FF F0 FE F9
	jsr ($3CFE.w,X)		; FC FE 3C
	bit $C8CA.w,X		; 3C CA C8
	ora ($F6.b,X)		; 01 F6
	php		; 08
	cpx #$4E.b		; E0 4E
	sbc ($C0.b,X)		; E1 C0
	inc $F0.b,X		; F6 F0
	sbc $FFF0.w,Y		; F9 F0 FF
	clc		; 18
	sbc $FCFF40.l,X		; FF 40 FF FC
	brk $58.b		; 00 58
	ldy #$E8.b		; A0 E8
	bpl 120.b		; 10 78
	bra 112.b		; 80 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ldy #$00.b		; A0 00
	bpl  32.b		; 10 20
	brk $B0.b		; 00 B0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	tsb $3C0C.w		; 0C 0C 3C
	bit $0000.w,X		; 3C 00 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	tsb $0E.b		; 04 0E
	tsb $183E.w		; 0C 3E 18
	inc $0001.w,X		; FE 01 00
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora $0B02.w		; 0D 02 0B
	tsb $17.b		; 04 17
	php		; 08
	and [$08.b],Y		; 37 08
	rol $0011.w		; 2E 11 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$11.b]		; 07 11
	asl $F8F8.w		; 0E F8 F8
	bmi 120.b		; 30 78
	tsb $800C.w		; 0C 0C 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr ($FC00.w,X)		; FC 00 FC
	tsb $FE.b		; 04 FE
	brk $CE.b		; 00 CE
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $20,$C6		; 44 C6 20
	adc $10.b,S		; 63 10
	adc ($10.b,S),Y		; 73 10
	adc ($20.b,S),Y		; 73 20
	.db $62, $00, $42		; 62 00 42
	tsb $C6.b		; 04 C6
	tsb $C6.b		; 04 C6
	sec		; 38
	brk $1E.b		; 00 1E
	cop $2E.b		; 02 2E
	jsl $1C222E.l		; 22 2E 22 1C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	rti		; 40

	dec $40.b		; C6 40
	dec $40.b		; C6 40
	cpy $48.b		; C4 48
	cpy $CC08.w		; CC 08 CC
	brk $CC.b		; 00 CC
	brk $4C.b		; 00 4C
	brk $48.b		; 00 48
	bit $3C04.w,X		; 3C 04 3C
	tsb $38.b		; 04 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	rti		; 40

	sei		; 78
	pha		; 48
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	sbc ($FB.b,S),Y		; F3 FB
	inc $E6.b		; E6 E6
	ora $FFFF1F.l,X		; 1F 1F FF FF
	cpx #$F3.b		; E0 F3
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	asl $71FF.w		; 0E FF 71
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc ($00.b,S),Y		; F3 00
	cpy #$50.b		; C0 50
	cli		; 58
	rts		; 60

	pla		; 68
	tya		; 98
	ldy $BCF8.w,X		; BC F8 BC
	inc $D79E.w,X		; FE 9E D7
	sta ($0F.b,X)		; 81 0F
	ora [$00.b]		; 07 00
	brk $E0.b		; 00 E0
	bra -48.b		; 80 D0
	bra -32.b		; 80 E0
	rts		; 60

	bcs   0.b		; B0 00
	stz $8F00.w,X		; 9E 00 8F
	asl $0007.w		; 0E 07 00
	brk $00.b		; 00 00
	lsr A		; 4A
	bcs -40.b		; B0 D8
	rol A		; 2A
	cld		; D8
	rol A		; 2A
	lda ($57.b)		; B2 57
	lda ($57.b,S),Y		; B3 57
	and ($D7.b,S),Y		; 33 D7
	and ($C7.b,S),Y		; 33 C7
	and ($C3.b,S),Y		; 33 C3
	bcs  71.b		; B0 47
	plp		; 28
	cmp [$28.b]		; C7 28
	cmp [$50.b]		; C7 50
	sta $D18F50.l		; 8F 50 8F D1
	ora $C10FC1.l		; 0F C1 0F C1
	ora $A2BFB0.l		; 0F B0 BF A2
	lda $2F.b,S		; A3 2F
	ldy #$09.b		; A0 09
	plp		; 28
	bra -33.b		; 80 DF
	inc $D9.b		; E6 D9
	sbc [$D8.b]		; E7 D8
	sbc ($CC.b)		; F2 CC
	jsr $2DF0.w		; 20 F0 2D
	sbc ($0F.b),Y		; F1 0F
	beq   7.b		; F0 07
	beq   1.b		; F0 01
	sbc ($80.b,X)		; E1 80
	jmp.w [$D1C9]		; DC C9 D1
	sta $A0D1.w		; 8D D1 A0
	bra  15.b		; 80 0F
	sbc $FA1F97.l,X		; FF 97 1F FA
	asl A		; 0A
	sta $FA1F8A.l,X		; 9F 8A 1F FA
	dex		; CA
	dec A		; 3A
	lda [$47.b],Y		; B7 47
	cmp $000050.l		; CF 50 00 00
	sbc [$00.b]		; E7 00
	sbc $057F05.l,X		; FF 05 7F 05
	and $050F25.l		; 2F 25 0F 05
	eor [$20.b]		; 47 20
	and $EAEA2B.l,X		; 3F 2B EA EA
	bra -127.b		; 80 81
	sbc $FFFFFF.l,X		; FF FF FF FF
	sed		; F8
	jsr ($8080.w,X)		; FC 80 80
	brk $00.b		; 00 00
	sbc $153E15.l,X		; FF 15 3E 15
	bra 127.b		; 80 7F
	sta $7FFE7F.l,X		; 9F 7F FE 7F
	bra 127.b		; 80 7F
	bra 124.b		; 80 7C
	brk $00.b		; 00 00
	lda ($4D.b,S),Y		; B3 4D
	ldx $48.b,Y		; B6 48
	cmp [$08.b],Y		; D7 08
	cmp [$09.b],Y		; D7 09
	sta [$0B.b],Y		; 97 0B
	sta $041F06.l,X		; 9F 06 1F 04
	asl $4D00.w,X		; 1E 00 4D
	brk $49.b		; 00 49
	ora ($08.b,X)		; 01 08
	brk $09.b		; 00 09
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	ora ($6C.b,X)		; 01 6C
	bit $64F4.w		; 2C F4 64
	inc $C4.b		; E6 C4
	dex		; CA
	dey		; 88
	txa		; 8A
	php		; 08
	asl $5608.w		; 0E 08 56
	bpl  87.b		; 10 57
	ora ($BC.b),Y		; 11 BC
	sta ($6F.b,S),Y		; 93 6F
	phd		; 0B
	cmp $37BF1B.l,X		; DF 1B BF 37
	adc $F7FF77.l,X		; 7F 77 FF F7
	sbc $EEFFEF.l,X		; FF EF FF EE
	adc ($74.b),Y		; 71 74
	phb		; 8B
	phb		; 8B
	sta $95.b,X		; 95 95
	cmp ($92.b)		; D2 92
	cmp $91.b,X		; D5 91
	sbc [$91.b],Y		; F7 91
	inc $6B88.w		; EE 88 6B
	php		; 08
	bmi  -2.b		; 30 FE
	phb		; 8B
	jmp ($6AFF.w,X)		; 7C FF 6A
	sbc $6EFF6D.l,X		; FF 6D FF 6E
	sbc $77FF6E.l,X		; FF 6E FF 77
	sbc $0000F7.l,X		; FF F7 00 00
	cpy #$00.b		; C0 00
	beq -128.b		; F0 80
	beq -32.b		; F0 E0
	bmi  48.b		; 30 30
	pha		; 48
	php		; 08
	clv		; B8
	stz $6E68.w		; 9C 68 6E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	beq -64.b		; F0 C0
	sed		; F8
	beq  -8.b		; F0 F8
	rts		; 60

	pea $1284.w		; F4 84 12
	and ($04.b,S),Y		; 33 04
	ror $28.b		; 66 28
	jmp ($D810.w)		; 6C 10 D8
	rts		; 60

	sed		; F8
	brk $B0.b		; 00 B0
	ldy #$B0.b		; A0 B0
	jsr $0CB0.w		; 20 B0 0C
	brk $38.b		; 00 38
	jsr $0010.w		; 20 10 00
	rts		; 60

	rti		; 40

	bpl  16.b		; 10 10
	cpx #$A0.b		; E0 A0
	rti		; 40

	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	asl $0A.b		; 06 0A
	ora $16.b		; 05 16
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($05.b,X)		; 01 05
	brk $09.b		; 00 09
	brk $0F.b		; 00 0F
	brk $70.b		; 00 70
	ora $F37F80.l		; 0F 80 7F F3
	tsb $51AE.w		; 0C AE 51
	and $C33CC0.l,X		; 3F C0 3C C3
	and $0000C0.l,X		; 3F C0 00 00
	ora $007F00.l		; 0F 00 7F 00
	tsb $00F3.w		; 0C F3 00
	xce		; FB
	cpy #$3B.b		; C0 3B
	cmp $34.b,S		; C3 34
	cpy #$20.b		; C0 20
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bpl -32.b		; 10 E0
	iny		; C8
	bmi 116.b		; 30 74
	dey		; 88
	stz $88.b,X		; 74 88
	sed		; F8
	rti		; 40

	inx		; E8
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	cpy #$88.b		; C0 88
	bvc -120.b		; 50 88
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $0C07.w		; 0C 07 0C
	asl A		; 0A
	sec		; 38
	ora ($F1.b),Y		; 11 F1
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	rol $7020.w		; 2E 20 70
	asl $F8.b		; 06 F8
	tsb $0CE0.w		; 0C E0 0C
	cpy #$18.b		; C0 18
	ldy #$30.b		; A0 30
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$FC.b		; C0 FC
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ora ($07.b,X)		; 01 07
	ora $0C.b		; 05 0C
	phd		; 0B
	clc		; 18
	asl $30.b,X		; 16 30
	ora $3861.w		; 0D 61 38
	adc $50.b,S		; 63 50
	dec $28.b		; C6 28
	sty $0202.w		; 8C 02 02
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $203E00.l		; 0F 00 3E 20
	asl $3C02.w,X		; 1E 02 3C
	tsb $70.b		; 04 70
	brk $08.b		; 00 08
	asl $38A0.w		; 0E A0 38
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	bpl  28.b		; 10 1C
	php		; 08
	asl $C744.w		; 0E 44 C7
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	pea $3A04.w		; F4 04 3A
	cop $00.b		; 02 00
	pha		; 48
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	jsr $2068.w		; 20 68 20
	pla		; 68
	brk $68.b		; 00 68
	cpy #$EC.b		; C0 EC
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bmi  32.b		; 30 20
	sed		; F8
	plp		; 28
	clv		; B8
	ldy $BEAC.w,X		; BC AC BE
	dec $7FDF.w,X		; DE DF 7F
	eor $674069.l		; 4F 69 40 67
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	beq  80.b		; F0 50
	sed		; F8
	jsr $004F.w		; 20 4F 00
	eor [$07.b]		; 47 07
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b,X		; 16 00
	asl $00.b,X		; 16 00
	ora [$00.b]		; 07 00
	ora $03.b		; 05 03
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	cmp [$11.b],Y		; D7 11
	lda $F1FF31.l,X		; BF 31 FF F1
	lda $1F19BF.l,X		; BF BF 19 1F
	bne  28.b		; D0 1C
	cmp ($18.b),Y		; D1 18
	cpx #$38.b		; E0 38
	sbc $CEFFEE.l,X		; FF EE FF CE
	sbc $005F0E.l,X		; FF 0E 5F 00
	sbc $04.b		; E5 04
	inx		; E8
	php		; 08
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	rtl		; 6B

	php		; 08
	xba		; EB
	php		; 08
	xba		; EB
	ora #$EE.b		; 09 EE
	ora $C0F1F0.l		; 0F F0 F1 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
	inc $FF.b,X		; F6 FF
	sbc ($F0.b),Y		; F1 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	adc [$C1.b]		; 67 C1
	cmp ($C0.b,X)		; C1 C0
	cpy #$60.b		; C0 60
	cpx #$18.b		; E0 18
	sed		; F8
	asl $7E.b		; 06 7E
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	phx		; DA
	.db $82, $BE, $00		; 82 BE 00
	and $809F00.l,X		; 3F 00 9F 80
	adc [$60.b]		; 67 60
	ora #$08.b		; 09 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $3B3A0F.l		; 0F 0F 3A 3B
	mvn $F0,$56		; 54 56 F0
	sty $B8.b,X		; 94 B8
	trb $7870.w		; 1C 70 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	jsr $0098.w		; 20 98 00
	bpl   0.b		; 10 00
	rts		; 60

	brk $A2.b		; 00 A2
	ldx $FC84.w,Y		; BE 84 FC
	ora #$D9.b		; 09 D9
	cop $33.b		; 02 33
	ora ($33.b)		; 12 33
	bpl  51.b		; 10 33
	tsb $26.b		; 04 26
	brk $66.b		; 00 66
	eor ($00.b,X)		; 41 00
	phk		; 4B
	pha		; 48
	asl $00.b		; 06 00
	ora $0C11.w,X		; 1D 11 0C
	brk $0E.b		; 00 0E
	cop $18.b		; 02 18
	brk $3C.b		; 00 3C
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $1C.b		; 00 1C
	ora $60.b,S		; 03 60
	ora $2B03FC.l,X		; 1F FC 03 2B
	pei ($4F.b)		; D4 4F
	bcs -113.b		; B0 8F
	bvs -113.b		; 70 8F
	bvs   0.b		; 70 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	bit $3EC0.w,X		; 3C C0 3E
	bcs  78.b		; B0 4E
	bvs  13.b		; 70 0D
	bvs   8.b		; 70 08
	sbc #$09.b		; E9 09
	cmp $35.b		; C5 35
	bit $E5.b		; 24 E5
	bcs -118.b		; B0 8A
	rts		; 60

	tsb $B3A5.w		; 0C A5 B3
	stp		; DB
	sbc [$77.b]		; E7 77
	eor [$01.b]		; 47 01
	sta $101F14.l,X		; 9F 14 1F 10
	ora $F00F78.l		; 0F 78 0F F0
	ora $C0.b,S		; 03 C0
	ora $C30FC1.l		; 0F C1 0F C3
	sta $794D6D.l		; 8F 6D 4D 79
	and $1777.w		; 2D 77 17
	adc $7717.w		; 6D 17 77
	bit #$CF.b		; 89 CF
	bcs -49.b		; B0 CF
	bcs -27.b		; B0 E5
	tya		; 98
	tda		; 7B
	bcs  63.b		; B0 3F
	sty $1D.b,X		; 94 1D
	iny		; C8
	ora [$C2.b],Y		; 17 C2
	ora #$B0.b		; 09 B0
	cop $BA.b		; 02 BA
	sta ($A2.b)		; 92 A2
	inc A		; 1A
	ldx #$B4.b		; A2 B4
	sty $95.b,X		; 94 95
	cmp $E4.b,X		; D5 E4
	cpx $E2.b		; E4 E2
.ACCU 8
	sep #$66		; E2 66
.INDEX 8
	sep #$16		; E2 16
	ora ($D5.b)		; 12 D5
	eor ($97.b),Y		; 51 97
	sta ($1C.b,X)		; 81 1C
	wai		; CB
	ora $FB0FEA.l,X		; 1F EA 0F FB
	cmp $FD6FFD.l		; CF FD 6F FD
	ora $2E7FED.l,X		; 1F ED 7F 2E
	sbc $C0886E.l		; EF 6E 88 C0
	clc		; 18
	bpl -36.b		; 10 DC
	iny		; C8
	jmp $20AB40.l		; 5C 40 AB 20
	cmp [$10.b],Y		; D7 10
	jmp ($7B00.w)		; 6C 00 7B
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	cpx #$E8.b		; E0 E8
	jsr $B0F0.w		; 20 F0 B0
	jsr ($FFDC.w,X)		; FC DC FF
	sbc $FCF3F3.l		; EF F3 F3 FC
	jsr ($81B9.w,X)		; FC B9 81
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $FFC300.l,X		; 7F 00 C3 FF
	ora $FC.b		; 05 FC
	lda [$F0.b],Y		; B7 F0
	lsr $7EC0.w,X		; 5E C0 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $34.b		; 00 34
	bit $0B.b,X		; 34 0B
	php		; 08
	ora $003F00.l		; 0F 00 3F 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	ldy #$30.b		; A0 30
	ldy #$30.b		; A0 30
	jsr $8030.w		; 20 30 80
	bmi  64.b		; 30 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	and #$16.b		; 29 16
	and $1A.b		; 25 1A
	trb $0B.b		; 14 0B
	trb $0B.b		; 14 0B
	tsb $0603.w		; 0C 03 06
	ora ($05.b,X)		; 01 05
	brk $01.b		; 00 01
	brk $16.b		; 00 16
	brk $1A.b		; 00 1A
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $01.b		; 00 01
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
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	trb $0C28.w		; 1C 28 0C
	rol $1D0E.w		; 2E 0E 1D
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	bpl  30.b		; 10 1E
	bpl  15.b		; 10 0F
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	ora $0D05.w		; 0D 05 0D
	tsb $1B.b		; 04 1B
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	ora [$03.b]		; 07 03
	ora $041704.l		; 0F 04 17 04
	and [$13.b]		; 27 13
	and ($07.b)		; 32 07
	and [$07.b],Y		; 37 07
	eor [$27.b],Y		; 57 27
	eor ($27.b,S),Y		; 53 27
	adc ($0B.b,S),Y		; 73 0B
	adc ($0B.b,S),Y		; 73 0B
	ora [$0B.b]		; 07 0B
	ora ($0C.b,S),Y		; 13 0C
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	and $1F.b,S		; 23 1F
	and $1F.b,S		; 23 1F
	phd		; 0B
	and [$09.b],Y		; 37 09
	and [$A1.b],Y		; 37 A1
	tad		; 5B
	lda $59.b		; A5 59
	ldy $59.b		; A4 59
	ldx $58.b		; A6 58
	.db $82, $7C, $42		; 82 7C 42
	bit $3C43.w,X		; 3C 43 3C
	eor #$36.b		; 49 36
	cli		; 58
	and [$58.b]		; 27 58
	and $58.b,S		; 23 58
	and $58.b,S		; 23 58
	and ($7C.b,X)		; 21 7C
	ora ($3C.b,X)		; 01 3C
	ora ($3C.b,X)		; 01 3C
	brk $36.b		; 00 36
	brk $78.b		; 00 78
	sei		; 78
	cli		; 58
	cli		; 58
	bvs  80.b		; 70 50
	bvc  80.b		; 50 50
	bvc  80.b		; 50 50
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	brk $78.b		; 00 78
	jsr $2070.w		; 20 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	jmp ($6C20.w)		; 6C 20 6C
	bpl  88.b		; 10 58
	brk $D8.b		; 00 D8
	brk $D0.b		; 00 D0
	rts		; 60

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	cpx #$10.b		; E0 10
	brk $18.b		; 00 18
	php		; 08
	jsr $7000.w		; 20 00 70
	bvc  96.b		; 50 60
	rti		; 40

	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $0B.b		; 00 0B
	tsb $0E.b		; 04 0E
	ora ($18.b,X)		; 01 18
	ora [$10.b]		; 07 10
	ora $430E31.l		; 0F 31 0E 43
	sec		; 38
	lda ($55.b,X)		; A1 55
	.db $42, $A2		; 42 A2
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $100E00.l		; 0F 00 0E 10
	sec		; 38
	tsb $51.b		; 04 51
	rol $5FA0.w		; 2E A0 5F
	wai		; CB
	and $17.b,X		; 35 17
	cpx $33.b		; E4 33
	cpy #$75.b		; C0 75
	sty $0EF3.w		; 8C F3 0E
	sbc $14FF.w,Y		; F9 FF 14
	ora [$F3.b],Y		; 17 F3
	txy		; 9B
	and ($01.b),Y		; 31 01
	xba		; EB
	brk $CF.b		; 00 CF
	brk $83.b		; 00 83
	brk $09.b		; 00 09
	php		; 08
	pea $FA04.w		; F4 04 FA
	nop		; EA
	sbc $ABD36C.l,X		; FF 6C D3 AB
	bvc  44.b		; 50 2C
	bit $4F.b		; 24 4F
	and [$4F.b]		; 27 4F
	eor [$0F.b]		; 47 0F
	ora $03.b,S		; 03 03
	stz $4C.b		; 64 4C
	adc ($93.b,S),Y		; 73 93
	ldy #$0F.b		; A0 0F
	jsr $408F.w		; 20 8F 40
	sta $239F42.l,X		; 9F 42 9F 23
	lda $40FF61.l,X		; BF 61 FF 40
	sta $778F13.l,X		; 9F 13 8F 77
	dey		; 88
	tsx		; BA
	eor $8F.b		; 45 8F
	bvs  -5.b		; 70 FB
	sty $F3.b		; 84 F3
	iny		; C8
	sbc ($F3.b,X)		; E1 F3
	cpy #$E1.b		; C0 E1
	jsr $0800.w		; 20 00 08
	bcs  69.b		; B0 45
	brk $70.b		; 00 70
	ora #$00.b		; 09 00
	lda $80.b,X		; B5 80
	cpy $F8C0.w		; CC C0 F8
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	stx $80.b,Y		; 96 80
	sbc [$60.b],Y		; F7 60
	sbc $FF09.w,Y		; F9 09 FF
	ora [$7C.b]		; 07 7C
	sta $7E.b,S		; 83 7E
	sta ($36.b,X)		; 81 36
	cpy #$94.b		; C0 94
	rts		; 60

	sbc $0F6F6F.l		; EF 6F 6F 0F
	ora $000706.l		; 0F 06 07 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $BE.b		; 00 BE
	sta [$56.b]		; 87 56
	lsr $FC.b		; 46 FC
	jsr ($FE9E.w,X)		; FC 9E FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	and $E121FF.l,X		; 3F FF 21 E1
	sbc $B8FD79.l,X		; FF 79 FD B8
	xce		; FB
	brk $E1.b		; 00 E1
	rts		; 60

	asl $F00E.w		; 0E 0E F0
	beq  64.b		; F0 40
	rti		; 40

	lsr $BA40.w,X		; 5E 40 BA
	sta $74.b,S		; 83 74
	ora [$D0.b]		; 07 D0
	trb $38A0.w		; 1C A0 38
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	cpy #$E0.b		; C0 E0
	rti		; 40

	rts		; 60

	jmp ($F800.w,X)		; 7C 00 F8
	brk $E8.b		; 00 E8
	php		; 08
	cpy #$00.b		; C0 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	cpy #$E0.b		; C0 E0
	sbc [$FF.b],Y		; F7 FF
	asl $010F.w		; 0E 0F 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$80.b		; E0 80
	sbc $06FF62.l,X		; FF 62 FF 06
	sbc $000F00.l,X		; FF 00 0F 00
	ora $00.b,S		; 03 00
	ora ($C0.b,X)		; 01 C0
	brk $38.b		; 00 38
	cpy #$04.b		; C0 04
	sed		; F8
	sbc ($0C.b)		; F2 0C
	sta $DD62.w,X		; 9D 62 DD
	jsl $FAD03E.l		; 22 3E D0 FA
	trb $00.b		; 14 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	beq  34.b		; F0 22
	pei ($22.b)		; D4 22
	cpy $C0.b		; C4 C0
	tsb $04.b		; 04 04
	brk $6C.b		; 00 6C
	bcs -64.b		; B0 C0
	bpl -80.b		; 10 B0
	cld		; D8
	cpy #$10.b		; C0 10
	brk $70.b		; 00 70
	cpy #$60.b		; C0 60
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	jsr $6040.w		; 20 40 60
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	bra -96.b		; 80 A0
	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	jsr $4080.w		; 20 80 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	cpx #$00.b		; E0 00
	cpy #$20.b		; C0 20
	rti		; 40

	ldy #$C0.b		; A0 C0
	jsr $70C0.w		; 20 C0 70
	sec		; 38
	sec		; 38
	clv		; B8
	tay		; A8
	pla		; 68
	dec $C000.w		; CE 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	jsr $D820.w		; 20 20 D8
	brk $78.b		; 00 78
	asl $78.b,X		; 16 78
	and [$57.b],Y		; 37 57
	eor $013F37.l,X		; 5F 37 3F 01
	ora $00.b,S		; 03 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	trb $FF38.w		; 1C 38 FF
	ror $2F.b,X		; 76 2F
	and ($0F.b,S),Y		; 33 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy $C4.b		; C4 C4
	ldy #$40.b		; A0 40
	rts		; 60

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
	brk $12.b		; 00 12
	adc ($05.b,S),Y		; 73 05
	and $051E02.l,X		; 3F 02 1E 05
	tsb $180A.w		; 0C 0A 18
	ora $31.b,X		; 15 31
	bit $5167.w		; 2C 67 51
	cmp $18202C.l,X		; DF 2C 20 18
	clc		; 18
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1A00.w		; 0E 00 1A
	cop $28.b		; 02 28
	php		; 08
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bit $3C18.w,X		; 3C 18 3C
	bpl  52.b		; 10 34
	rts		; 60

	stz $60.b,X		; 74 60
	stz $58.b,X		; 74 58
	jmp $601C58.l		; 5C 58 1C 60
	tsb $1010.w		; 0C 10 10
	brk $00.b		; 00 00
	php		; 08
	brk $78.b		; 00 78
	bpl 120.b		; 10 78
	bpl 112.b		; 10 70
	jsr $2030.w		; 20 30 20
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora #$06.b		; 09 06
	asl A		; 0A
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	brk $B9.b		; 00 B9
	lsr $63.b		; 46 63
	stz $7C83.w		; 9C 83 7C
	lsr $B9.b		; 46 B9
	sty $0873.w		; 8C 73 08
	sbc [$00.b],Y		; F7 00
	sbc $46FF00.l,X		; FF 00 FF 46
	and $639C.w,Y		; 39 9C 63
	jmp ($B983.w,X)		; 7C 83 B9
	asl $73.b		; 06 73
	tsb $08F7.w		; 0C F7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	ldy #$C0.b		; A0 C0
	brk $03.b		; 00 03
	ora $7607.w,X		; 1D 07 76
	asl $C5.b,X		; 16 C5
	mvp $F0,$FD		; 44 FD F0
	sbc $3E08.w,X		; FD 08 3E
	asl $FE00.w		; 0E 00 FE
	brk $E0.b		; 00 E0
	asl $02.b		; 06 02
	ora $7F08.w,X		; 1D 08 7F
	sec		; 38
	sbc ($00.b,S),Y		; F3 00
	xce		; FB
	beq  -7.b		; F0 F9
	beq   0.b		; F0 00
	ror $FF38.w,X		; 7E 38 FF
	clv		; B8
	sta $FE.b,S		; 83 FE
	ora $F2.b,S		; 03 F2
	ora $D0.b,S		; 03 D0
	ora ($48.b,S),Y		; 13 48
	.db $62, $3C, $E6		; 62 3C E6
	brk $00.b		; 00 00
	mvp $7E,$44		; 44 44 7E
	cop $FC.b		; 02 FC
	brk $FC.b		; 00 FC
	brk $EE.b		; 00 EE
	cop $BC.b		; 02 BC
	jsr $0018.w		; 20 18 00
	sbc $05FD05.l,X		; FF 05 FD 05
	and $C738C3.l,X		; 3F C3 38 C7
	jsr $20DF.w		; 20 DF 20
	cmp $03FE01.l,X		; DF 01 FE 03
	jsr ($FA07.w,X)		; FC 07 FA
	ora [$FA.b]		; 07 FA
	cmp $3C.b,S		; C3 3C
	cmp [$38.b]		; C7 38
	cmp $20DF20.l,X		; DF 20 DF 20
	inc $FC00.w,X		; FE 00 FC
	brk $FF.b		; 00 FF
	adc $807E7C.l,X		; 7F 7C 7E 80
	bra  93.b		; 80 5D
	lda $4F.b,S		; A3 4F
	bcs  -1.b		; B0 FF
	ora [$9A.b]		; 07 9A
	ror A		; 6A
	plx		; FA
	asl A		; 0A
	sbc $BFC0BF.l,X		; FF BF C0 BF
	bra 127.b		; 80 7F
	ldy #$17.b		; A0 17
	bcs   0.b		; B0 00
	ora [$00.b]		; 07 00
	adc $650F05.l		; 6F 05 0F 65
	ora ($0E.b),Y		; 11 0E
	and $2F06.w,Y		; 39 06 2F
	bpl 126.b		; 10 7E
	ora ($58.b,X)		; 01 58
	and [$C3.b]		; 27 C3
	bit $30CF.w,X		; 3C CF 30
	sbc $0E02.w,X		; FD 02 0E
	ora ($06.b,X)		; 01 06
	ora #$10.b		; 09 10
	ora $271E01.l		; 0F 01 1E 27
	clc		; 18
	bit $3000.w,X		; 3C 00 30
	brk $02.b		; 00 02
	brk $3B.b		; 00 3B
	cpy $D5.b		; C4 D5
	rol A		; 2A
	and $DD.b,S		; 23 DD
	adc $59B481.l,X		; 7F 81 B4 59
	lsr $1B41.w,X		; 5E 41 1B
	ora $41DC.w		; 0D DC 41
	brk $EF.b		; 00 EF
	rol A		; 2A
	cpy $DC.b		; C4 DC
	brk $80.b		; 00 80
	brk $1A.b		; 00 1A
	bpl -78.b		; 10 B2
	tsb $F6.b		; 04 F6
	php		; 08
	rol $E300.w,X		; 3E 00 E3
	tsb $C0.b		; 04 C0
	ora [$81.b]		; 07 81
	ora [$83.b]		; 07 83
	ora [$02.b]		; 07 02
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $0C00.w		; 0C 00 0C
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	cmp [$80.b]		; C7 80
	adc $F98798.l,X		; 7F 98 87 F9
	beq  -4.b		; F0 FC
	bmi  60.b		; 30 3C
	bmi  56.b		; 30 38
	jsr $2038.w		; 20 38 20
	bmi -69.b		; 30 BB
	tsa		; 3B
	txy		; 9B
	sta $79.b,S		; 83 79
	sei		; 78
	php		; 08
	php		; 08
	iny		; C8
	php		; 08
	cpy #$00.b		; C0 00
	bne  16.b		; D0 10
	cpy #$00.b		; C0 00
	jmp $73F14D.l		; 5C 4D F1 73
	rep #$C6		; C2 C6
	ora $0D.b		; 05 0D
	ora ($1B.b)		; 12 1B
	bit $583E.w,X		; 3C 3E 58
	jmp $FC9CF8.l		; 5C F8 9C FC
	bcs -16.b		; B0 F0
	bra -63.b		; 80 C1
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	jsr $0090.w		; 20 90 00
	ldy #$B0.b		; A0 B0
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	jsr $2050.w		; 20 50 20
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
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
	brk $B0.b		; 00 B0
	clc		; 18
	bvs 120.b		; 70 78
	sei		; 78
	sei		; 78
	cli		; 58
	cli		; 58
	bvs  80.b		; 70 50
	bvc  80.b		; 50 50
	bvc  80.b		; 50 50
	jsr $1020.w		; 20 20 10
	brk $60.b		; 00 60
	brk $68.b		; 00 68
	brk $78.b		; 00 78
	jsr $2070.w		; 20 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	jsr $0600.w		; 20 00 06
	ora $040F04.l		; 0F 04 0F 04
	asl $1E0C.w,X		; 1E 0C 1E
	php		; 08
	asl $3C28.w,X		; 1E 28 3C
	pla		; 68
	jmp ($5C58.w,X)		; 7C 58 5C
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	bmi  16.b		; 30 10
	bvs  16.b		; 70 10
	bvs  32.b		; 70 20
	cld		; D8
	stz $9CF8.w		; 9C F8 9C
	sed		; F8
	stz $1C38.w		; 9C 38 1C
	plp		; 28
	asl $0E2E.w		; 0E 2E 0E
	ora $0F01.w,X		; 1D 01 0F
	brk $B0.b		; 00 B0
	jsr $0090.w		; 20 90 00
	bcc   0.b		; 90 00
	bpl   0.b		; 10 00
	trb $1E14.w		; 1C 14 1E
	bpl  15.b		; 10 0F
	asl $0000.w		; 0E 00 00
	asl $09.b,X		; 16 09
	asl $1401.w,X		; 1E 01 14
	ora $34.b,S		; 03 34
	ora $25.b,S		; 03 25
	cop $25.b		; 02 25
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $FF7F80.l,X		; 7F 80 7F FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $CE.b		; 00 CE
	cmp $D93FB8.l		; CF B8 3F D9
	ora [$F2.b]		; 07 F2
	asl $1CF5.w,X		; 1E F5 1C
	adc ($18.b)		; 72 18
	lda $B1.b		; A5 B1
	plx		; FA
	sbc ($F8.b,S),Y		; F3 F8
	bmi  -3.b		; 30 FD
	cmp $E2.b		; C5 E2
.ACCU 8
.INDEX 8
	sep #$F5		; E2 F5
	cpx $F3.b		; E4 F3
	cpx #$FF.b		; E0 FF
	inx		; E8
	inc $EC40.w		; EE 40 EC
	brk $58.b		; 00 58
	cpy $8CA0.w		; CC A0 8C
	bvc  24.b		; 50 18
	ldy #$30.b		; A0 30
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bcs -128.b		; B0 80
	sei		; 78
	php		; 08
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$F8.b]		; 07 F8
	ora $E01FF0.l		; 0F F0 1F E0
	ora $C03FE0.l,X		; 1F E0 3F C0
	and $807FC0.l,X		; 3F C0 7F 80
	adc $00F880.l,X		; 7F 80 F8 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	plx		; FA
	inc A		; 1A
	tsx		; BA
	phy		; 5A
	sbc #$29.b		; E9 29
	sbc #$21.b		; E9 21
	sbc #$21.b		; E9 21
	cmp #$41.b		; C9 41
	cmp #$41.b		; C9 41
	inx		; E8
	jsr $C51F.w		; 20 1F C5
	eor $163F85.l,X		; 5F 85 3F 16
	and [$16.b],Y		; 37 16
	and [$16.b],Y		; 37 16
	adc [$36.b],Y		; 77 36
	adc [$36.b],Y		; 77 36
	and [$17.b],Y		; 37 17
	tas		; 1B
	cpx $13.b		; E4 13
	cpx $C837.w		; EC 37 C8
	adc $93.b,S		; 63 93
	eor $AC.b		; 45 AC
	.db $82, $42, $0C		; 82 42 0C
	jmp.w [$C604]		; DC 04 C6
	cpx $00.b		; E4 00
	cpx $C800.w		; EC 00 C8
	brk $93.b		; 00 93
	tsb $1FA5.w		; 0C A5 1F
	rti		; 40

	and $C03FC4.l,X		; 3F C4 3F C0
	and $8067B0.l,X		; 3F B0 67 80
	ror $FC10.w		; 6E 10 FC
	cpy #$F8.b		; C0 F8
	rts		; 60

	rti		; 40

	ldy #$20.b		; A0 20
	bne -112.b		; D0 90
	sed		; F8
	rti		; 40

	lsr $3C46.w,X		; 5E 46 3C
	bit $C8C8.w		; 2C C8 C8
	ldy #$20.b		; A0 20
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq  96.b		; F0 60
	rti		; 40

	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	cop $0C.b		; 02 0C
	and $7736.w,X		; 3D 36 77
	mvp $08,$C6		; 44 C6 08
	sty $8C80.w		; 8C 80 8C
	bpl  24.b		; 10 18
	jsr $0030.w		; 20 30 00
	bmi  18.b		; 30 12
	bpl   8.b		; 10 08
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	bra 120.b		; 80 78
	php		; 08
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	brk $C3.b		; 00 C3
	mvp $44,$C7		; 44 C7 44
	dec $40.b		; C6 40
	dec $40.b		; C6 40
	dec $48.b		; C6 48
	cpy $EC60.w		; CC 60 EC
	rts		; 60

	inx		; E8
	ror $3A42.w,X		; 7E 42 3A
	cop $38.b		; 02 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $18.b		; 00 18
	php		; 08
	bcc -128.b		; 90 80
	ora ($33.b)		; 12 33
	bpl  51.b		; 10 33
	tsb $66.b		; 04 66
	jsr $2866.w		; 20 66 28
	jmp ($4C00.w)		; 6C 00 4C
	bpl  88.b		; 10 58
	brk $D8.b		; 00 D8
	tsb $0E00.w		; 0C 00 0E
	cop $38.b		; 02 38
	jsr $041C.w		; 20 1C 04
	bpl   0.b		; 10 00
	sec		; 38
	php		; 08
	jsr $7000.w		; 20 00 70
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1C.b		; 00 1C
	ora $31.b,S		; 03 31
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $0001.w		; 0E 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $0E.b		; 00 0E
	beq  49.b		; F0 31
	dec $0000.w		; CE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	dec $3430.w		; CE 30 34
	ora $14.b,S		; 03 14
	ora $14.b,S		; 03 14
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	asl $13.b		; 06 13
	tsb $1827.w		; 0C 27 18
	eor $225D30.l		; 4F 30 5D 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	tsb $1803.w		; 0C 03 18
	ora [$30.b]		; 07 30
	ora $981D22.l		; 0F 22 1D 98
	adc [$70.b]		; 67 70
	sta $E00FF0.l		; 8F F0 0F E0
	ora $903FC0.l,X		; 1F C0 3F 90
	adc $F74FB3.l		; 6F B3 4F F7
	asl A		; 0A
	adc [$18.b]		; 67 18
	sta $F00F70.l		; 8F 70 0F F0
	ora $C03FE0.l,X		; 1F E0 3F C0
	ror $4F90.w		; 6E 90 4F
	bcs  11.b		; B0 0B
	sbc $1C.b,X		; F5 1C
	pea $E308.w		; F4 08 E3
	ora ($C7.b),Y		; 11 C7
	tda		; 7B
	cmp $438B27.l		; CF 27 8B 43
	ora [$E0.b],Y		; 17 E0
	cpx #$FF.b		; E0 FF
	lda $DC03C8.l,X		; BF C8 03 DC
	ora ($B9.b,X)		; 01 B9
	ora $31.b,S		; 03 31
	ora $71.b,S		; 03 71
	ora [$E0.b]		; 07 E0
	ora $F81FE0.l		; 0F E0 1F F8
	eor $D3C03E.l,X		; 5F 3E C0 D3
	cpx $ECF3.w		; EC F3 EC
	sbc $DAE2.w,X		; FD E2 DA
	cpx $8E.b		; E4 8E
	bra  60.b		; 80 3C
	bvs  -1.b		; 70 FF
	sbc [$00.b],Y		; F7 00
	cpx $EE00.w		; EC 00 EE
	cpy $E8.b		; C4 E8
.ACCU 16
	rep #$EC		; C2 EC
	cpy $E8.b		; C4 E8
	brk $F0.b		; 00 F0
	bpl -13.b		; 10 F3
	adc [$F7.b],Y		; 77 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3C0C.w		; 0C 0C 3C
	bit $FCEC.w		; 2C EC FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	tsb $2C3E.w		; 0C 3E 2C
	inc $FE00.w,X		; FE 00 FE
	sbc $361DF7.l,X		; FF F7 1D 36
	trb $C400.w		; 1C 00 C4
	cpx #$F7.b		; E0 F7
	sec		; 38
	lda $9494BF.l,X		; BF BF 94 94
	cmp [$53.b],Y		; D7 53
	ror $F7.b		; 66 F7
	brk $F7.b		; 00 F7
	brk $E3.b		; 00 E3
	cpy #$F8.b		; C0 F8
	jsr $FF3C.w		; 20 3C FF
	rti		; 40

	sbc $ACFF6B.l,X		; FF 6B FF AC
	phx		; DA
	pha		; 48
	stp		; DB
	pha		; 48
	lda $6A24.w		; AD 24 6A
	jsl $57226E.l		; 22 6E 22 57
	ora ($76.b),Y		; 11 76
	bpl  -9.b		; 10 F7
	bcc  -1.b		; 90 FF
	lda [$FF.b],Y		; B7 FF
	lda [$FF.b],Y		; B7 FF
	stp		; DB
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $EFFFEE.l,X		; FF EE FF EF
	sbc $80606F.l,X		; FF 6F 60 80
	bvc -96.b		; 50 A0
	bcs  64.b		; B0 40
	ldy #$40.b		; A0 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	ldy #$40.b		; A0 40
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $0A.b		; 02 0A
	ora $16.b		; 05 16
	ora #$132C.w		; 09 2C 13
	cld		; D8
	and [$00.b]		; 27 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $09.b		; 02 09
	asl $13.b		; 06 13
	tsb $1827.w		; 0C 27 18
	sta $7C.b,S		; 83 7C
	sta [$78.b]		; 87 78
	sta [$78.b]		; 87 78
	sta [$78.b]		; 87 78
	sta $708F70.l		; 8F 70 8F 70
	dex		; CA
	bmi -54.b		; 30 CA
	bmi 124.b		; 30 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	brk $E0.b		; 00 E0
	ora $21DF20.l,X		; 1F 20 DF 21
	dec $32CD.w,X		; DE CD 32
	sbc $BA02.w,X		; FD 02 BA
	mvp $C1,$3E		; 44 3E C1
	brk $00.b		; 00 00
	ora $20DF00.l,X		; 1F 00 DF 20
	stz $0061.w,X		; 9E 61 00
	inc $02.b,X		; F6 02
	pea $A845.w		; F4 45 A8
	cmp ($00.b,X)		; C1 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	ora $53ACF0.l		; 0F F0 AC 53
	jmp.w [$55A3]		; DC A3 55
	rol A		; 2A
	and $4A.b,X		; 35 4A
	and $0042.w,X		; 3D 42 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $53.b		; 00 53
	plp		; 28
	and $18.b,S		; 23 18
	tax		; AA
	ora ($C8.b,X)		; 01 C8
	.db $42, $82		; 42 82
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $0F.b		; 00 0F
	beq -84.b		; F0 AC
	eor ($DC.b,S),Y		; 53 DC
	and $54.b,S		; 23 54
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	eor ($28.b,S),Y		; 53 28
	and $98.b,S		; 23 98
	rol A		; 2A
	sta ($0D.b,X)		; 81 0D
	cop $1A.b		; 02 1A
	ora $1E.b		; 05 1E
	ora ($26.b,X)		; 01 26
	ora $112E.w,Y		; 19 2E 11
	plp		; 28
	ora [$48.b],Y		; 17 48
	and [$58.b],Y		; 37 58
	and [$02.b]		; 27 02
	ora $05.b		; 05 05
	asl A		; 0A
	ora ($0A.b,X)		; 01 0A
	ora $1102.w,Y		; 19 02 11
	cop $17.b		; 02 17
	brk $37.b		; 00 37
	brk $27.b		; 00 27
	brk $7E.b		; 00 7E
	ldx #$7F.b		; A2 7F
	lda $639F4F.l,X		; BF 4F 9F 63
	sta [$F8.b]		; 87 F8
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora $FE.b,S		; 03 FE
	asl $1DBE.w		; 0E BE 1D
	ldy $8303.w,X		; BC 03 83
	and $001F80.l,X		; 3F 80 1F 00
	ora [$01.b]		; 07 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora ($FF.b,X)		; 01 FF
	beq 107.b		; F0 6B
	stz $9F.b		; 64 9F
	tya		; 98
	sbc ($F9.b),Y		; F1 F9
	adc $F5.b,X		; 75 F5
	trb $021C.w		; 1C 1C 02
	jsl $309C8D.l		; 22 8D 9C 30
	beq 100.b		; F0 64
	sbc ($90.b,S),Y		; F3 90
	sed		; F8
	bcc  -1.b		; 90 FF
	and ($FF.b),Y		; 31 FF
	trb $80FF.w		; 1C FF 80
	sbc $2E7EC0.l,X		; FF C0 7E 2E
	cmp ($FC.b),Y		; D1 FC
	ora $7F.b,S		; 03 7F
	bcs -125.b		; B0 83
	tsb $8B.b		; 04 8B
	cli		; 58
	sbc $B149.w,Y		; F9 49 B1
	and $04C4.w,Y		; 39 C4 04
	cmp ($06.b),Y		; D1 06
	ora $08.b,S		; 03 08
	bmi -80.b		; 30 B0
	tsb $7B.b		; 04 7B
	php		; 08
	jmp ($5F40.w,X)		; 7C 40 5F
	and ($7F.b),Y		; 31 7F
	tsb $3F.b		; 04 3F
	lsr $F4A0.w,X		; 5E A0 F4
	ora #$D128.w		; 09 28 D1
	jsr ($7F03.w,X)		; FC 03 7F
	bcs -128.b		; B0 80
	tsb $8B.b		; 04 8B
	cli		; 58
	sed		; F8
	eor #$2B80.w		; 49 80 2B
	ora #$D102.w		; 09 02 D1
	asl $03.b		; 06 03
	php		; 08
	brk $B0.b		; 00 B0
	tsb $7B.b		; 04 7B
	php		; 08
	jmp ($5F40.w,X)		; 7C 40 5F
	jmp $28D4A0.l		; 5C A0 D4 28
	stz $80.b,X		; 74 80
	pea $2808.w		; F4 08 28
	bne -12.b		; D0 F4
	brk $CC.b		; 00 CC
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	plp		; 28
	php		; 08
	jsr $2880.w		; 20 80 28
	php		; 08
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	php		; 08
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	ldx $01.b,Y		; B6 01
	cmp [$00.b]		; C7 00
	rts		; 60

	bra  48.b		; 80 30
	cpy #$19.b		; C0 19
	cpx #$89.b		; E0 89
	bvs -60.b		; 70 C4
	sec		; 38
	rts		; 60

	trb $CB00.w		; 1C 00 CB
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sei		; 78
	bra  -8.b		; 80 F8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	and [$08.b],Y		; 37 08
	ora [$08.b],Y		; 17 08
	ora ($0C.b,S),Y		; 13 0C
	phd		; 0B
	tsb $05.b		; 04 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $38.b		; 00 38
	sec		; 38
	php		; 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $AF.b		; 00 AF
	rts		; 60

	sta [$70.b],Y		; 97 70
	wai		; CB
	sec		; 38
	adc $1C.b		; 65 1C
	dec A		; 3A
	asl $9C.b		; 06 9C
	ora $C0.b,S		; 03 C0
	ora $1FFE06.l		; 0F 06 FE 1F
	brk $2F.b		; 00 2F
	jsr $1017.w		; 20 17 10
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora #$D208.w		; 09 08 D2
	asl $0EE8.w,X		; 1E E8 0E
	sbc $07.b,X		; F5 07
	plx		; FA
	ora $7C.b,S		; 03 7C
	ora ($9F.b,X)		; 01 9F
	sta ($0E.b,X)		; 81 0E
	cpx #$76.b		; E0 76
	bvs -27.b		; 70 E5
	tsb $F3.b		; 04 F3
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	rts		; 60

	sta $704F00.l		; 8F 00 4F 70
	and [$38.b]		; 27 38
	ora ($1D.b)		; 12 1D
	txa		; 8A
	sta $C645.w		; 8D 45 C6
	jsr $12E2.w		; 20 E2 12
	sbc ($0A.b,S),Y		; F3 0A
	xce		; FB
	ldy #$2F.b		; A0 2F
	bne  23.b		; D0 17
	inx		; E8
	phd		; 0B
	bvs   3.b		; 70 03
	clv		; B8
	sta ($5C.b,X)		; 81 5C
	eor ($0C.b,X)		; 41 0C
	brk $74.b		; 00 74
	bvs   4.b		; 70 04
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora $1C.b,S		; 03 1C
	ora $38.b,S		; 03 38
	ora [$35.b]		; 07 35
	asl A		; 0A
	ror $D50C.w,X		; 7E 0C D5
	asl $03.b,X		; 16 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	tsb $09.b		; 04 09
	ora $3E00.w,X		; 1D 00 3E
	ror A		; 6A
	sta $804E.w,X		; 9D 4E 80
	adc $D7A6.w		; 6D A6 D7
	bmi -21.b		; 30 EB
	ora $1DE8.w,Y		; 19 E8 1D
	ldy $37.b,X		; B4 37
	eor $9D0E.w,Y		; 59 0E 9D
	ora $02B9.w,Y		; 19 B9 02
	txy		; 9B
	tsb $0F.b		; 04 0F
	brk $06.b		; 00 06
	brk $17.b		; 00 17
	ora $E8.b,X		; 15 E8
	cpy #$E0.b		; C0 E0
	cpx #$DA.b		; E0 DA
	and $DE.b		; 25 DE
	and ($9B.b,X)		; 21 9B
	jmp ($F94E.w)		; 6C 4E F9
	and $57DF.w		; 2D DF 57
	sta $FD06EB.l		; 8F EB 06 FD
	cop $84.b		; 02 84
	ora #$4081.w		; 09 81 40
	cpy $8019.w		; CC 19 80
	txy		; 9B
	.db $82, $BD, $00		; 82 BD 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $398877.l,X		; 1F 77 88 39
	.db $82, $D3, $84		; 82 D3 84
	dec $8A81.w,X		; DE 81 8A
	cpy $08D5.w		; CC D5 08
	bcc  15.b		; 90 0F
	pha		; 48
	ora [$08.b]		; 07 08
	rep #$02		; C2 02
	cpy $04.b		; C4 04
	lda #$E001.w		; A9 01 E0
	mvp $00,$B9		; 44 B9 00
	xce		; FB
	cop $FD.b		; 02 FD
	brk $BF.b		; 00 BF
	cli		; 58
	and [$58.b]		; 27 58
	and [$68.b]		; 27 68
	ora [$68.b]		; 07 68
	ora [$28.b]		; 07 28
	ora [$28.b]		; 07 28
	ora [$2C.b]		; 07 2C
	ora $04.b,S		; 03 04
	ora $27.b,S		; 03 27
	brk $27.b		; 00 27
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $FC.b		; 00 FC
	bit $43C3.w,X		; 3C C3 43
	cmp $DF4C.w		; CD 4C DF
	eor ($FE.b,S),Y		; 53 FE
	ora ($EB.b,X)		; 01 EB
	ora [$E4.b],Y		; 17 E4
	trb $1CE5.w		; 1C E5 1C
	and $3C7F03.l,X		; 3F 03 7F 3C
	adc $207333.l,X		; 7F 33 73 20
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	sbc ($A4.b,X)		; E1 A4
	sbc ($20.b,X)		; E1 20
	ldx $AF22.w		; AE 22 AF
	ldy $6F.b		; A4 6F
	sbc $68FFBC.l		; EF BC FF 68
	adc $E00794.l		; 6F 94 07 E0
	lsr $DFFB.w,X		; 5E FB DF
	sbc $58FCDD.l,X		; FF DD FC 58
	sbc $7B96.w,X		; FD 96 7B
	eor [$B3.b]		; 47 B3
	ora $F9.b,S		; 03 F9
	ora ($F6.b,X)		; 01 F6
	sbc ($CD.b)		; F2 CD
	iny		; C8
	sbc $017B70.l,X		; FF 70 7B 01
	lda [$00.b],Y		; B7 00
	sta $F8E700.l,X		; 9F 00 E7 F8
	sbc ($FC.b,S),Y		; F3 FC
	sed		; F8
	phd		; 0B
	sed		; F8
	and ($F0.b)		; 32 F0
	bra  -4.b		; 80 FC
	sbc $7878.w,X		; FD 78 78
	rts		; 60

	rts		; 60

	bvs  17.b		; 70 11
	php		; 08
	phd		; 0B
	lda ($39.b),Y		; B1 39
	cpy $04.b		; C4 04
	pea $CD0A.w		; F4 0A CD
	bmi  -1.b		; 30 FF
	bra 122.b		; 80 7A
	sbc $78B7.w,X		; FD B7 78
	sta $7F3060.l,X		; 9F 60 30 7F
	brk $3F.b		; 00 3F
	brk $FB.b		; 00 FB
	brk $FA.b		; 00 FA
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	cld		; D8
	php		; 08
	cpx #$48.b		; E0 48
	clv		; B8
	bmi -64.b		; 30 C0
	brk $0C.b		; 00 0C
	brk $34.b		; 00 34
	brk $0E.b		; 00 0E
	bra -122.b		; 80 86
	sei		; 78
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	ora ($0C.b)		; 12 0C
	ply		; 7A
	tsb $76.b		; 04 76
	php		; 08
	adc $F210.w		; 6D 10 F2
	brk $04.b		; 00 04
	php		; 08
	bvs -128.b		; 70 80
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sec		; 38
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	jmp.w [$CACF]		; DC CF CA
	asl $1053.w		; 0E 53 10
	stz $27.b		; 64 27
	tay		; A8
	rol $38B0.w		; 2E B0 38
	cpx #$B0.b		; E0 B0
	cpx #$A0.b		; E0 A0
	jsr ($3D30.w,X)		; FC 30 3D
	bit $3F.b,X		; 34 3F
	jsr $023A.w		; 20 3A 02
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	adc [$E0.b]		; 67 E0
	adc $00FF00.l,X		; 7F 00 FF 00
	brk $FF.b		; 00 FF
	eor [$2B.b],Y		; 57 2B
	adc $19.b		; 65 19
	lda $B551.w		; AD 51 B5
	eor ($9F.b,X)		; 41 9F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sec		; 38
	ora $3A.b,S		; 03 3A
	ora $7A.b,S		; 03 7A
	ora $7A.b,S		; 03 7A
	cmp $FA01.w		; CD 01 FA
	ora $8C.b,S		; 03 8C
	ora $DFFF00.l		; 0F 00 FF DF
	sbc $6FC080.l,X		; FF 80 C0 6F
	bra  93.b		; 80 5D
	.db $82, $FE, $00		; 82 FE 00
	sbc $F201.w,X		; FD 01 F2
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $003F00.l,X		; 1F 00 3F 00
	tsa		; 3B
	brk $3B.b		; 00 3B
	bit $F7.b,X		; 34 F7
	plp		; 28
	sbc $0BFE01.l		; EF 01 FE 0B
	jsr ($F08E.w,X)		; FC 8E F0
	brk $00.b		; 00 00
	cpy #$1F.b		; C0 1F
	bra   0.b		; 80 00
	lsr A		; 4A
	.db $42, $54		; 42 54
	eor $F0.b		; 45 F0
	sbc ($00.b,S),Y		; F3 00
	ora $00FF00.l		; 0F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $E202E4.l,X		; FF E4 02 E2
	brk $C8.b		; 00 C8
	brk $F1.b		; 00 F1
	brk $DB.b		; 00 DB
	jsr $00FB.w		; 20 FB 00
	adc ($80.b,S),Y		; 73 80
	lsr $0091.w		; 4E 91 00
	ora $001F00.l,X		; 1F 00 1F 00
	lda $00AE00.l,X		; BF 00 AE 00
	adc $B500.w		; 6D 00 B5
	brk $8E.b		; 00 8E
	sta ($24.b),Y		; 91 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0E.b,X)		; 01 0E
	ora ($15.b,X)		; 01 15
	asl A		; 0A
	rol A		; 2A
	ora $5A.b,X		; 15 5A
	and $B7.b		; 25 B7
	phk		; 4B
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	asl A		; 0A
	tsb $14.b		; 04 14
	php		; 08
	and $19.b		; 25 19
	phk		; 4B
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	beq -124.b		; F0 84
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $50.b		; 00 50
	plp		; 28
	mvp $D4,$20		; 44 20 D4
	plp		; 28
	ldy $08.b,X		; B4 08
	clv		; B8
	brk $50.b		; 00 50
	bra  16.b		; 80 10
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $20.b		; 00 20
	tya		; 98
	plp		; 28
	bra   8.b		; 80 08
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ldy #$00.b		; A0 00
	cpx #$40.b		; E0 40
	ldy #$00.b		; A0 00
	cpx #$00.b		; E0 00
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
	brk $48.b		; 00 48
	txa		; 8A
	jsr $A3E4.w		; 20 E4 A3
	jmp $8B65.w		; 4C 65 8B
	eor ($9F.b,S),Y		; 53 9F
	eor $332D17.l		; 4F 17 2D 33
	cmp [$FC.b]		; C7 FC
	dey		; 88
	and $380F90.l,X		; 3F 90 0F 38
	phd		; 0B
	bvs   7.b		; 70 07
	adc ($07.b,X)		; 61 07
	sbc ($1F.b),Y		; F1 1F
	cpy #$0F.b		; C0 0F
	cpx #$2F.b		; E0 2F
	ldx $84.b,Y		; B6 84
	dec $FDC4.w		; CE C4 FD
	tsb $EA.b		; 04 EA
	ora ($97.b),Y		; 11 97
	pla		; 68
	lda $18E550.l		; AF 50 E5 18
	cmp $69ED30.l		; CF 30 ED 69
	sbc ($31.b),Y		; F1 31
	asl $0A.b		; 06 0A
	ora $64.b,X		; 15 64
	asl A		; 0A
	adc ($12.b)		; 72 12
	.db $62, $1A, $62		; 62 1A 62
	bmi -128.b		; 30 80
	pea $D988.w		; F4 88 D9
	ldy #$B6.b		; A0 B6
	adc #$31CE.w		; 69 CE 31
	adc $6A82.w,X		; 7D 82 6A
	sta $D7.b,X		; 95 D7
	rol A		; 2A
	adc $3F8092.l		; 6F 92 80 3F
	bra  46.b		; 80 2E
	brk $6D.b		; 00 6D
	brk $B5.b		; 00 B5
	brk $8E.b		; 00 8E
	sta ($24.b),Y		; 91 24
	php		; 08
	lda ($90.b)		; B2 90
	jsl $C0A0A0.l		; 22 A0 A0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$41.b]		; E7 41
	sbc $45.b		; E5 45
	ldx $46.b		; A6 46
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $F2.b,S		; 03 F2
	ora [$E2.b]		; 07 E2
	asl $E0.b		; 06 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $02.b,X		; D5 02
	cmp $02.b		; C5 02
	ora [$42.b]		; 07 42
	ora $42.b		; 05 42
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $F3.b		; 00 F3
	brk $E7.b		; 00 E7
	brk $E6.b		; 00 E6
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	brk $83.b		; 00 83
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
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
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $57.b,X		; B5 57
	lda $0FEF4F.l		; AF 4F EF 0F
	dec A		; 3A
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	ora $5C.b,S		; 03 5C
	phd		; 0B
	tad		; 5B
	ora [$1A.b],Y		; 17 1A
	ora [$38.b],Y		; 17 38
	ora [$00.b]		; 07 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  -8.b		; F0 F8
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	tsb $7C.b		; 04 7C
	rol $E0E0.w		; 2E E0 E0
	jsr ($F880.w,X)		; FC 80 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	phd		; 0B
	php		; 08
	eor $091640.l,X		; 5F 40 16 09
	trb $0B.b		; 14 0B
	trb $2803.w		; 1C 03 28
	trb $2A.b		; 14 2A
	ora ($33.b,S),Y		; 13 33
	asl A		; 0A
	eor ($24.b),Y		; 51 24
	bvc  40.b		; 50 28
	ora #$0B06.w		; 09 06 0B
	tsb $03.b		; 04 03
	tsb $0B14.w		; 0C 14 0B
	ora ($0F.b)		; 12 0F
	php		; 08
	ora [$20.b],Y		; 17 20
	ora $991728.l,X		; 1F 28 17 99
	bit $38BB.w,X		; 3C BB 38
	and [$70.b],Y		; 37 70
	sbc ($F0.b,S),Y		; F3 F0
	sta $83FC.w,X		; 9D FC 83
	cpy #$1F.b		; C0 1F
	jsr $C03F.w		; 20 3F C0
	clc		; 18
	inc $FC00.w,X		; FE 00 FC
	jsr $70F8.w		; 20 F8 70
	jsr ($FE8C.w,X)		; FC 8C FE
	bra  -4.b		; 80 FC
	jsr $C0C0.w		; 20 C0 C0
	brk $E6.b		; 00 E6
	ora #$07FB.w		; 09 FB 07
	sbc [$07.b],Y		; F7 07
	sbc [$07.b],Y		; F7 07
	sbc [$07.b],Y		; F7 07
	cmp ($07.b,S),Y		; D3 07
	cmp ($16.b)		; D2 16
	pei ($11.b)		; D4 11
	brk $1F.b		; 00 1F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	jsl $2F302F.l		; 22 2F 30 2F
	bmi  43.b		; 30 2B
	cmp $F6E2.w,X		; DD E2 F6
	sed		; F8
	beq  -8.b		; F0 F8
	beq -16.b		; F0 F0
	cpx #$F0.b		; E0 F0
	bra -128.b		; 80 80
	bvs 112.b		; 70 70
	dey		; 88
	dey		; 88
	cop $F4.b		; 02 F4
	cpx #$F8.b		; E0 F8
	beq  -4.b		; F0 FC
	beq  -8.b		; F0 F8
	cpy #$F8.b		; C0 F8
	brk $F8.b		; 00 F8
	bmi  -4.b		; 30 FC
	brk $FC.b		; 00 FC
	and [$C8.b],Y		; 37 C8
	and [$C8.b],Y		; 37 C8
	tas		; 1B
	cpx $1D.b		; E4 1D
	sep #$8D		; E2 8D
	adc ($CD.b)		; 72 CD
	and ($6F.b)		; 32 6F
	bpl  37.b		; 10 25
	clc		; 18
	iny		; C8
	brk $C8.b		; 00 C8
	brk $E4.b		; 00 E4
	brk $E2.b		; 00 E2
	brk $72.b		; 00 72
	brk $32.b		; 00 32
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $CA.b		; 00 CA
	brk $DA.b		; 00 DA
	php		; 08
	phx		; DA
	php		; 08
	and ($00.b,S),Y		; 33 00
	ora ($00.b,S),Y		; 13 00
	ora $070003.l		; 0F 03 00 07
	brk $07.b		; 00 07
	and [$37.b],Y		; 37 37
	and $272F27.l		; 2F 27 2F 27
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
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
	ora $00.b,S		; 03 00
	tsb $3303.w		; 0C 03 33
	tsb $314E.w		; 0C 4E 31
	jsr ($0003.w,X)		; FC 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	ora $31.b,S		; 03 31
	asl $7C02.w		; 0E 02 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $1F6000.l,X		; 1F 00 60 1F
	bcs  79.b		; B0 4F
	rts		; 60

	sta $C32DD2.l,X		; 9F D2 2D C3
	bit $D42B.w,X		; 3C 2B D4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $304F00.l,X		; 1F 00 4F 30
	sta $F20D60.l,X		; 9F 60 0D F2
	bit $D9.b		; 24 D9
	pei ($29.b)		; D4 29
	rol $19.b		; 26 19
	rol $19.b		; 26 19
	ora ($0C.b,S),Y		; 13 0C
	phd		; 0B
	tsb $05.b		; 04 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B9.b		; 00 B9
	dey		; 88
	ldy $04.b,X		; B4 04
	tyx		; BB
	ora $5C.b,S		; 03 5C
	ora $C01E38.l		; 0F 38 1E C0
	inc $FE38.w,X		; FE 38 FE
	cpy $C6.b		; C4 C6
	sbc $7B7F77.l,X		; FF 77 7F 7B
	adc $B0BC7C.l,X		; 7F 7C BC B0
	jmp.w [$FCC4]		; DC C4 FC
	bit $C4C4.w,X		; 3C C4 C4
	sec		; 38
	brk $F8.b		; 00 F8
	ror $FCA0.w,X		; 7E A0 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $84.b		; C4 84
	bne  80.b		; D0 50
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $86.b,X		; 94 86
	ldy $86.b,X		; B4 86
	bcs -122.b		; B0 86
	beq -122.b		; F0 86
	beq -122.b		; F0 86
	sei		; 78
	tsb $0C78.w		; 0C 78 0C
	sei		; 78
	tsb $0078.w		; 0C 78 00
	sei		; 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $7C.b		; 04 7C
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $C9.b		; 00 C9
	ora [$FC.b]		; 07 FC
	tsb $1C35.w		; 0C 35 1C
	tas		; 1B
	clc		; 18
	sbc $38AFC8.l,X		; FF C8 AF 38
	sbc ($31.b),Y		; F1 31
	jmp.w [$327F]		; DC 7F 32
	and ($FB.b)		; 32 FB
	beq  -5.b		; F0 FB
	inx		; E8
	sbc [$E0.b],Y		; F7 E0
	cmp [$00.b]		; C7 00
	sbc [$D0.b],Y		; F7 D0
	inc $E2C0.w		; EE C0 E2
	ldx #$3D.b		; A2 3D
	ora ($FA.b,X)		; 01 FA
	ora $E8.b,S		; 03 E8
	ora $A01CD0.l		; 0F D0 1C A0
	bmi  64.b		; 30 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	inc $FD00.w,X		; FE 00 FD
	ora ($F4.b,X)		; 01 F4
	tsb $E0.b		; 04 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	and $403F40.l,X		; 3F 40 3F 40
	and $403F40.l,X		; 3F 40 3F 40
	and $443B44.l,X		; 3F 44 3B 44
	tsa		; 3B
	bit $1B.b		; 24 1B
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003B00.l,X		; 3F 00 3B 00
	tsa		; 3B
	brk $1B.b		; 00 1B
	brk $3D.b		; 00 3D
.ACCU 16
.INDEX 16
	rep #$7B		; C2 7B
	sty $7B.b		; 84 7B
	sty $77.b		; 84 77
	dey		; 88
	adc [$98.b]		; 67 98
	adc [$98.b]		; 67 98
	adc [$98.b]		; 67 98
	and [$D8.b]		; 27 D8
	rep #$00		; C2 00
	sty $00.b		; 84 00
	sty $00.b		; 84 00
	dey		; 88
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $D8.b		; 00 D8
	brk $C8.b		; 00 C8
	lsr A		; 4A
	iny		; C8
	pha		; 48
	cmp $FD51.w,Y		; D9 51 FD
	eor $DB.b		; 45 DB
	ora ($FB.b),Y		; 11 FB
	sbc #$416B.w		; E9 6B 41
	rtl		; 6B

	and ($78.b,X)		; 21 78
	and [$79.b],Y		; 37 79
	and [$73.b],Y		; 37 73
	rol $47.b		; 26 47
	cop $37.b		; 02 37
	rol $EF.b		; 26 EF
	asl $D7.b		; 06 D7
	stx $B7.b,Y		; 96 B7
	stx $41.b,Y		; 96 41
	mvp $48,$58		; 44 58 48
	bit $24.b,X		; 34 24
	rtl		; 6B

	and $6E.b,S		; 23 6E
	jsr $1057.w		; 20 57 10
	adc [$10.b],Y		; 77 10
	rtl		; 6B

	php		; 08
	bvs -66.b		; 70 BE
	xce		; FB
	lda [$FF.b],Y		; B7 FF
	stp		; DB
	sbc $DFFFDC.l,X		; FF DC FF DF
	sbc $EFFFEF.l,X		; FF EF FF EF
	sbc $0814F7.l,X		; FF F7 14 08
	clc		; 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
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
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $0B.b		; 02 0B
	tsb $17.b		; 04 17
	php		; 08
	and $122D10.l		; 2F 10 2D 12
	phy		; 5A
	bit $52.b		; 24 52
	bit $0001.w		; 2C 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	php		; 08
	ora [$10.b]		; 07 10
	ora $240D12.l		; 0F 12 0D 24
	tas		; 1B
	bit $FC13.w		; 2C 13 FC
	asl $24FD.w,X		; 1E FD 24
	dec $52.b,X		; D6 52
	tyx		; BB
	pld		; 2B
	lsr $77.b,X		; 56 77
	adc $F0677C.l,X		; 7F 7C 67 F0
	sbc $E01DE0.l		; EF E0 1D E0
	and $AC7FD8.l,X		; 3F D8 7F AC
	rol $1ED4.w,X		; 3E D4 1E
	inx		; E8
	jmp ($60F0.w)		; 6C F0 60
	sed		; F8
	rti		; 40

	beq   8.b		; F0 08
	ora [$31.b]		; 07 31
	asl $31CE.w		; 0E CE 31
	ora $40B0F0.l		; 0F F0 B0 40
	pha		; 48
	txs		; 9A
	ora $CD.b		; 05 CD
	sta $95.b,X		; 95 95
	ora [$00.b]		; 07 00
	asl $3100.w		; 0E 00 31
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	sta $003F80.l		; 8F 80 3F 00
	and $670F65.l,X		; 3F 65 0F 67
	tya		; 98
	asl $2FE3.w,X		; 1E E3 2F
	iny		; C8
	sbc $30C701.l		; EF 01 C7 30
	eor $5D6479.l		; 4F 79 64 5D
	bvc  79.b		; 50 4F
	tya		; 98
	rts		; 60

	sbc $02.b,S		; E3 02
	dec $00.b,X		; D6 00
	asl $0F01.w,X		; 1E 01 0F
	brk $66.b		; 00 66
	ldy #$9153.w		; A0 53 91
	rts		; 60

	ldy #$0000.w		; A0 00 00
	brk $3F.b		; 00 3F
	bpl -16.b		; 10 F0
	sbc $007F80.l,X		; FF 80 7F 00
	ldx $7080.w,Y		; BE 80 70
	sbc $00FC00.l,X		; FF 00 FC 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	jsr $007F.w		; 20 7F 00
	sbc $007F00.l,X		; FF 00 7F 00
	sty $008C.w		; 8C 8C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	bpl  31.b		; 10 1F
	sbc $00F000.l,X		; FF 00 F0 00
	bvs 127.b		; 70 7F
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sty $000C.w		; 8C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc $EC06C6.l,X		; FF C6 06 EC
	jsr ($FC0F.w,X)		; FC 0F FC
	ora [$06.b]		; 07 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc $131F01.l,X		; FF 01 1F 13
	tsb $0600.w		; 0C 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$B8F8.w		; C0 F8 B8
	ror $FF06.w,X		; 7E 06 FF
	ora ($3F.b,X)		; 01 3F
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $B8.b		; 00 B8
	brk $C6.b		; 00 C6
	cpy #$0001.w		; C0 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0823.w		; 0C 23 08
	jsl $1C2218.l		; 22 18 22 1C
	rol $18.b		; 26 18
	rol $10.b		; 26 10
	bit $10.b		; 24 10
	bit $18.b		; 24 18
	bit $021E.w		; 2C 1E 02
	trb $1C00.w		; 1C 00 1C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	sec		; 38
	jmp $6C7C6C.l		; 5C 6C 7C 6C
	mvp $C0,$F4		; 44 F4 C0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	bmi 124.b		; 30 7C
	pha		; 48
	inc $FE48.w,X		; FE 48 FE
	brk $FE.b		; 00 FE
	bra -12.b		; 80 F4
	tsb $0B.b		; 04 0B
	tsb $0A.b		; 04 0A
	bpl  26.b		; 10 1A
	bit $3E.b,X		; 34 3E
	sec		; 38
	rol $7470.w,X		; 3E 70 74
	bvs  84.b		; 70 54
	bmi  20.b		; 30 14
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	trb $00.b		; 14 00
	sec		; 38
	php		; 08
	bit $04.b,X		; 34 04
	jmp ($5804.w,X)		; 7C 04 58
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	trb $38.b		; 14 38
	trb $1C38.w		; 1C 38 1C
	bit $260C.w		; 2C 0C 26
	asl $1D.b		; 06 1D
	ora ($0F.b,X)		; 01 0F
	ora $00.b,S		; 03 00
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	bpl  30.b		; 10 1E
	clc		; 18
	ora $00030E.l		; 0F 0E 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3800.w		; C0 00 38
	cpy #$F804.w		; C0 04 F8
	phy		; 5A
	ldy $1A.b		; A4 1A
	cpx $39.b		; E4 39
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $A4.b		; 00 A4
	pha		; 48
	stz $88.b		; 64 88
	dec $08.b		; C6 08
	sbc $F622.w,X		; FD 22 F6
	plp		; 28
	tya		; 98
	brk $60.b		; 00 60
	bcs -128.b		; B0 80
	jsr $C000.w		; 20 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	php		; 08
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $E5.b		; 00 E5
	ora $90.b		; 05 90
	ora $C0.b,X		; 15 C0
	beq  47.b		; F0 2F
	cmp $3F3F5F.l,X		; DF 5F 3F 3F
	adc $3F7F3F.l,X		; 7F 3F 7F 3F
	bvs -16.b		; 70 F0
	ora $000FE0.l		; 0F E0 0F 00
	ora $0F3F01.l		; 0F 01 3F 0F
	sbc $10FF1F.l,X		; FF 1F FF 10
	sbc $28FF00.l,X		; FF 00 FF 28
	rts		; 60

	bit $D470.w,X		; 3C 70 D4
	inx		; E8
	plx		; FA
	cpx $FB.b		; E4 FB
	cpx $FA.b		; E4 FA
	cmp $D2.b		; C5 D2
	lda $A8D7.w		; AD D7 A8
	bmi -48.b		; 30 D0
	bmi -64.b		; 30 C0
	php		; 08
	cpx #$E8C4.w		; E0 C4 E8
	cpy $E8.b		; C4 E8
	sta $C8.b		; 85 C8
	lda $2880.w		; AD 80 28
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	sbc ($73.b),Y		; F1 73
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ora $70.b,S		; 03 70
	ora $083310.l		; 0F 10 33 08
	adc $2C.b,S		; 63 2C
	ror $18.b		; 66 18
	dec $18.b		; C6 18
	dec $70.b		; C6 70
	cpy $78.b		; C4 78
	cpy $8C30.w		; CC 30 8C
	asl $3E02.w		; 0E 02 3E
	jsl $7C0018.l		; 22 18 00 7C
	mvp $44,$7C		; 44 7C 44
	sec		; 38
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	php		; 08
	clc		; 18
	eor $18.b,S		; 43 18
	eor $18.b,S		; 43 18
	.db $42, $1C		; 42 1C
	lsr $1C.b		; 46 1C
	lsr $38.b		; 46 38
	ror $20.b		; 66 20
	ror $00.b		; 66 00
	cpy $3E.b		; C4 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $78.b		; 04 78
	rti		; 40

	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	clc		; 18
	ora [$20.b]		; 07 20
	ora $5E334C.l,X		; 1F 4C 33 5E
	and ($BD.b,X)		; 21 BD
	.db $42, $93		; 42 93
	jmp ($0000.w)		; 6C 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $0C3300.l,X		; 1F 00 33 0C
	and ($1E.b,X)		; 21 1E
	rti		; 40

	and $00334C.l,X		; 3F 4C 33 00
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	cpx #$F806.w		; E0 06 F8
	sta ($6C.b)		; 92 6C
	phx		; DA
	bit $C9.b		; 24 C9
	rol $E1.b,X		; 36 E1
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	cpx #$F800.w		; E0 00 F8
	brk $6C.b		; 00 6C
	bcc  36.b		; 90 24
	cld		; D8
	rol $C8.b,X		; 36 C8
	asl $01E0.w,X		; 1E E0 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $71.b		; 02 71
	ror $D8FB.w,X		; 7E FB D8
	sbc $A3A0.w		; ED A0 A3
	ldx #$0000.w		; A2 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($02.b)		; 72 02
	inc $20.b,X		; F6 20
	inc $FC40.w,X		; FE 40 FC
	rti		; 40

	and $42BDC0.l,X		; 3F C0 BD 42
	bcs  79.b		; B0 4F
	bcc 111.b		; 90 6F
	bcc 111.b		; 90 6F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	cpy #$4200.w		; C0 00 42
	brk $4F.b		; 00 4F
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $6F.b		; 00 6F
	sta ($26.b),Y		; 91 26
	cmp $6C93.w,Y		; D9 93 6C
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bcc   1.b		; 90 01
	cld		; D8
	ora ($6C.b,X)		; 01 6C
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $40.b		; 00 40
	cli		; 58
	pha		; 48
	lsr $831B.w		; 4E 1B 83
	and $1763.w		; 2D 63 17
	ror $85.b,X		; 76 85
	ora $0686.w,X		; 1D 86 06
	sta $03.b,S		; 83 03
	rti		; 40

	cpx #$E010.w		; E0 10 E0
	and $5FC0.w,X		; 3D C0 5F
	rep #$0B		; C2 0B
	sta ($07.b,X)		; 81 07
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($08.b,X)		; 01 08
	ora [$10.b]		; 07 10
	ora $000E11.l		; 0F 11 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $09.b		; 00 09
	asl $10.b		; 06 10
	ora $801F60.l		; 0F 60 1F 80
	adc $1DF807.l,X		; 7F 07 F8 1D
.ACCU 8
.INDEX 8
	sep #$70		; E2 70
	sta $063FC0.l		; 8F C0 3F 06
	ora ($0F.b,X)		; 01 0F
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $F8.b		; 00 F8
	ora ($E2.b,X)		; 01 E2
	ora ($8F.b,X)		; 01 8F
	brk $3F.b		; 00 3F
	brk $77.b		; 00 77
	dey		; 88
	adc $01FE80.l,X		; 7F 80 FE 01
	jsr ($F803.w,X)		; FC 03 F8
	ora [$E0.b]		; 07 E0
	ora $017F80.l,X		; 1F 80 7F 01
	inc $7788.w,X		; FE 88 77
	bra 127.b		; 80 7F
	ora ($FE.b,X)		; 01 FE
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	ora $807FE0.l,X		; 1F E0 7F 80
	inc $E200.w,X		; FE 00 E2
	ora $3DC2.w,X		; 1D C2 3D
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	.db $82, $7D, $04		; 82 7D 04
	xce		; FB
	ora $FA.b		; 05 FA
	ora $FA.b		; 05 FA
	ora $FA.b		; 05 FA
	ora $3DE0.w,X		; 1D E0 3D
	cpy #$C03D.w		; C0 3D C0
	adc $FB80.w,X		; 7D 80 FB
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A8.b		; 00 A8
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	plp		; 28
	jsr ($863C.w,X)		; FC 3C 86
	bmi -122.b		; 30 86
	plp		; 28
	sty $8C08.w		; 8C 08 8C
	pha		; 48
	cpy $C600.w		; CC 00 C6
	bpl -58.b		; 10 C6
	trb $46.b		; 14 46
	sei		; 78
	brk $7C.b		; 00 7C
	tsb $70.b		; 04 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $7C.b		; 00 7C
	mvp $44,$7C		; 44 7C 44
	sec		; 38
	brk $14.b		; 00 14
	eor [$18.b]		; 47 18
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	eor $18.b,S		; 43 18
	eor $38.b,S		; 43 38
	adc $3A.b,S		; 63 3A
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	adc [$1C.b]		; 67 1C
	ror $18.b		; 66 18
	ror $10.b		; 66 10
	rol $10.b		; 26 10
	bit $10.b		; 24 10
	bit $10.b		; 24 10
	bit $10.b		; 24 10
	bit $1A.b		; 24 1A
	cop $38.b		; 02 38
	jsr $243C.w		; 20 3C 24
	trb $1804.w		; 1C 04 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	bit $18.b		; 24 18
	bit $2C08.w		; 2C 08 2C
	php		; 08
	bit $2E06.w		; 2C 06 2E
	asl $192A.w		; 0E 2A 19
	and $391F.w,Y		; 39 1F 39
	clc		; 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $1E.b		; 00 1E
	php		; 08
	asl $0F04.w,X		; 1E 04 0F
	asl $0B.b		; 06 0B
	cop $2F.b		; 02 2F
	ora $1337.w,Y		; 19 37 13
	rol $00.b		; 26 00
	rol $3E04.w		; 2E 04 3E
	tsb $187C.w		; 0C 7C 18
	sei		; 78
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	ora ($1B.b)		; 12 1B
	php		; 08
	clc		; 18
	clc		; 18
	trb $10.b		; 14 10
	tsb $1800.w		; 0C 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A2.b		; 00 A2
	eor $5FA0.w,X		; 5D A0 5F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bcc 111.b		; 90 6F
	bvc  47.b		; 50 2F
	cli		; 58
	and [$5F.b]		; 27 5F
	jsr $225D.w		; 20 5D 22
	eor $007F20.l,X		; 5F 20 7F 00
	adc $006F00.l,X		; 7F 00 6F 00
	and $002700.l		; 2F 00 27 00
	jsr $6500.w		; 20 00 65
	txs		; 9A
	rol $D8.b		; 26 D8
	asl A		; 0A
	pea $F00A.w		; F4 0A F0
	jmp $6EB0.w		; 4C B0 6E
	bcc 103.b		; 90 67
	tya		; 98
	sbc [$08.b],Y		; F7 08
	txs		; 9A
	rts		; 60

	cld		; D8
	jsr $04F4.w		; 20 F4 04
	pea $B000.w		; F4 00 B0
	brk $90.b		; 00 90
	ora ($98.b,X)		; 01 98
	ora ($08.b,X)		; 01 08
	brk $D9.b		; 00 D9
	dec $7873.w,X		; DE 73 78
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	asl $1A01.w		; 0E 01 1A
	ora ($65.b,X)		; 01 65
	cop $F0.b		; 02 F0
	jsr $0070.w		; 20 70 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	rti		; 40

	lda $40BF40.l,X		; BF 40 BF 40
	lda $60BF40.l,X		; BF 40 BF 60
	sta $E01FE0.l,X		; 9F E0 1F E0
	ora $BF1EE1.l,X		; 1F E1 1E BF
	rti		; 40

	lda $40BF40.l,X		; BF 40 BF 40
	lda $609F40.l,X		; BF 40 9F 60
	ora $E01FE0.l,X		; 1F E0 1F E0
	asl $04E1.w,X		; 1E E1 04
	xce		; FB
	asl $F9.b		; 06 F9
	asl $F9.b		; 06 F9
	asl $7EF1.w		; 0E F1 7E
	sta ($FA.b,X)		; 81 FA
	ora $F2.b		; 05 F2
	ora $1FE0.w		; 0D E0 1F
	xce		; FB
	tsb $F9.b		; 04 F9
	asl $F9.b		; 06 F9
	asl $F1.b		; 06 F1
	asl $7E81.w		; 0E 81 7E
	ora $FA.b		; 05 FA
	ora $1FF2.w		; 0D F2 1F
	cpx #$8040.w		; E0 40 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra 112.b		; 80 70
	bra -128.b		; 80 80
	ora ($80.b,X)		; 01 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $23.b		; 00 23
	trb $1827.w		; 1C 27 18
	rol $5C11.w		; 2E 11 5C
	and $68.b,S		; 23 68
	ora [$48.b]		; 07 48
	ora [$10.b]		; 07 10
	ora $1C0F10.l		; 0F 10 0F 1C
	brk $18.b		; 00 18
	brk $11.b		; 00 11
	brk $23.b		; 00 23
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $80.b		; 00 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $07FE01.l,X		; FF 01 FE 07
	sed		; F8
	ora $007FE0.l,X		; 1F E0 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $E0.b		; 00 E0
	brk $01.b		; 00 01
	inc $FD02.w,X		; FE 02 FD
	asl $F9.b		; 06 F9
	trb $78E3.w		; 1C E3 78
	sta [$F8.b]		; 87 F8
	ora [$F0.b]		; 07 F0
	ora $FE0F30.l		; 0F 30 0F FE
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	brk $E3.b		; 00 E3
	brk $87.b		; 00 87
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	sbc $0A.b,X		; F5 0A
	pea $F20E.w		; F4 0E F2
	ora $EC10E0.l,X		; 1F E0 10 EC
	bmi -56.b		; 30 C8
	jsr $40D8.w		; 20 D8 40
	clv		; B8
	sbc $00.b,X		; F5 00
	sbc $01.b,X		; F5 01
	sbc ($01.b,S),Y		; F3 01
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	bpl -80.b		; 10 B0
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$60E0.w		; C0 E0 60
	cpx #$E0A0.w		; E0 A0 E0
	rti		; 40

	cpy #$E0E0.w		; C0 E0 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	cpy #$80B0.w		; C0 B0 80
	bvs   0.b		; 70 00
	beq  96.b		; F0 60
	beq 112.b		; F0 70
	bvs  48.b		; 70 30
	bvs  48.b		; 70 30
	bmi  16.b		; 30 10
	sec		; 38
	bpl  24.b		; 10 18
	php		; 08
	clc		; 18
	php		; 08
	php		; 08
	rti		; 40

	sed		; F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	bpl 120.b		; 10 78
	bpl 124.b		; 10 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	sei		; 78
	bcc 104.b		; 90 68
	ldy #$40C8.w		; A0 C8 40
	pea $AA20.w		; F4 20 AA
	brk $56.b		; 00 56
	tsb $6C.b		; 04 6C
	brk $7C.b		; 00 7C
	php		; 08
	bcc   0.b		; 90 00
	bcs  16.b		; B0 10
	bvs  48.b		; 70 30
	plp		; 28
	php		; 08
	jmp $E8EC5C.l		; 5C 5C EC E8
	beq -16.b		; F0 F0
	sed		; F8
	beq   8.b		; F0 08
	tsb $0C0C.w		; 0C 0C 0C
	trb $0616.w		; 1C 16 06
	asl $04.b		; 06 04
	tsb $08.b		; 04 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	trb $3F.b		; 14 3F
	tsb $1F.b		; 04 1F
	tsb $0E.b		; 04 0E
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	tay		; A8
	dey		; 88
	bcs  48.b		; B0 30
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bvs 112.b		; 70 70
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	php		; 08
	ora [$08.b]		; 07 08
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	cpy #$807C.w		; C0 7C 80
	sei		; 78
	bra -39.b		; 80 D9
	brk $93.b		; 00 93
	brk $90.b		; 00 90
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
	brk $20.b		; 00 20
	ora $863E41.l,X		; 1F 41 3E 86
	adc $E719.w,Y		; 79 19 E7
	inc $1E.b		; E6 1E
	ora $0B1C.w		; 0D 1C 0B
	clc		; 18
	ora $001F18.l		; 0F 18 1F 00
	rol $7900.w,X		; 3E 00 79
	ora ($E6.b,X)		; 01 E6
	asl $09.b		; 06 09
	php		; 08
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bra 112.b		; 80 70
	jsr $E0F0.w		; 20 F0 E0
	beq   0.b		; F0 00
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	rts		; 60

	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $1C3F1F.l,X		; 1F 1F 3F 1C
	and $16.b,X		; 35 16
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $173F0C.l,X		; 1F 0C 3F 17
	adc $007F14.l,X		; 7F 14 7F 00
	and $879E6E.l,X		; 3F 6E 9E 87
	eor [$2D.b]		; 47 2D
	ora $FA7EBD.l,X		; 1F BD 7E FA
	jsr ($E091.w,X)		; FC 91 E0
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	sta [$59.b]		; 87 59
	eor [$38.b]		; 47 38
	ora $FE.b		; 05 FE
	trb $30FF.w		; 1C FF 30
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($00.b,S),Y		; F3 00
	sta $F1.b,S		; 83 F1
	ora $D8D8.w,Y		; 19 D8 D8
	rol A		; 2A
	sec		; 38
	jmp.w [$79F8]		; DC F8 79
	jsr ($FDFD.w,X)		; FC FD FD
	sbc ($F0.b,S),Y		; F3 F0
	cmp #$F1CC.w		; C9 CC F1
	cpx $2CF0.w		; EC F0 2C
	inx		; E8
	jmp.w [$3EC8]		; DC C8 3E
	clc		; 18
	inc $FE79.w,X		; FE 79 FE
	cpx #$80FC.w		; E0 FC 80
	inc $4070.w,X		; FE 70 40
	tay		; A8
	bcc   8.b		; 90 08
	trb $0EC4.w		; 1C C4 0E
	sbc $C7.b,S		; E3 C7
	lda ($83.b,X)		; A1 83
	jsr $6000.w		; 20 00 60
	rti		; 40

	cpy #$80B8.w		; C0 B8 80
	jmp ($3E00.w,X)		; 7C 00 3E
	tsb $1F.b		; 04 1F
	cmp ($0F.b,X)		; C1 0F
	cpy #$C047.w		; C0 47 C0
	cmp $C0.b,S		; C3 C0
	bra -64.b		; 80 C0
	and $301F60.l,X		; 3F 60 1F 30
	ora $9C0738.l		; 0F 38 07 9C
	sta $5E.b,S		; 83 5E
	eor ($1E.b,X)		; 41 1E
	ora ($1F.b,X)		; 01 1F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	bra -125.b		; 80 83
	cpy #$E041.w		; C0 41 E0
	ora ($60.b,X)		; 01 60
	brk $00.b		; 00 00
	sty $78.b		; 84 78
	stz $98.b		; 64 98
	rol $C8.b,X		; 36 C8
	ora ($EC.b)		; 12 EC
	inc A		; 1A
	cpx $0A.b		; E4 0A
	pea $F40A.w		; F4 0A F4
	asl A		; 0A
	pea $0078.w		; F4 78 00
	tya		; 98
	brk $C8.b		; 00 C8
	brk $EC.b		; 00 EC
	brk $E4.b		; 00 E4
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($18.b,X)		; 01 18
	ora [$27.b]		; 07 27
	clc		; 18
	eor $2D5230.l		; 4F 30 52 2D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	clc		; 18
	ora [$30.b]		; 07 30
	ora $001A25.l		; 0F 25 1A 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	beq   4.b		; F0 04
	sed		; F8
	asl $F8.b		; 06 F8
	sta $7A.b		; 85 7A
	tyx		; BB
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	tsb $78.b		; 04 78
	stx $40.b		; 86 40
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -40.b		; 80 D8
	jsr $08F6.w		; 20 F6 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $08C0.w		; 20 C0 08
	beq   0.b		; F0 00
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
	cpy #$F806.w		; C0 06 F8
	ora ($FE.b,X)		; 01 FE
	asl $07F1.w		; 0E F1 07
	sed		; F8
	ora $FC.b,S		; 03 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $FE.b		; 00 FE
	brk $F1.b		; 00 F1
	asl $07F8.w		; 0E F8 07
	jsr ($0003.w,X)		; FC 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $9C.b		; 00 9C
	rts		; 60

	adc ($8C.b,S),Y		; 73 8C
	cpy #$E03F.w		; C0 3F E0
	ora $188F70.l,X		; 1F 70 8F 18
	sbc [$C0.b]		; E7 C0
	and $600FF0.l,X		; 3F F0 0F 60
	bra -116.b		; 80 8C
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $8F.b		; 00 8F
	brk $E7.b		; 00 E7
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $20.b		; 00 20
	bne  32.b		; D0 20
	cli		; 58
	jsr $1058.w		; 20 58 10
	cli		; 58
	brk $48.b		; 00 48
	jsr $006C.w		; 20 6C 00
	jmp ($680C.w)		; 6C 0C 68
	rts		; 60

	rti		; 40

	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	jsr $3000.w		; 20 00 30
	brk $18.b		; 00 18
	php		; 08
	sec		; 38
	plp		; 28
	bpl   0.b		; 10 00
	asl $0E68.w		; 0E 68 0E
	jmp ($6C0E.w)		; 6C 0E 6C
	ror $547C.w,X		; 7E 7C 54
	mvn $44,$4C		; 54 4C 44
	sei		; 78
	pha		; 48
	bmi  48.b		; 30 30
	bpl   0.b		; 10 00
	bit $20.b,X		; 34 20
	bit $20.b,X		; 34 20
	jmp ($7C00.w)		; 6C 00 7C
	plp		; 28
	jmp ($7838.w,X)		; 7C 38 78
	bmi  48.b		; 30 30
	brk $1A.b		; 00 1A
	tsb $1C.b		; 04 1C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $60.b		; 00 60
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
	bpl   1.b		; 10 01
	and ($0E.b),Y		; 31 0E
	and $1E1F00.l,X		; 3F 00 1F 1E
	brk $12.b		; 00 12
	bpl  20.b		; 10 14
	bpl  24.b		; 10 18
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	bpl  17.b		; 10 11
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $0818.w		; 0C 18 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora [$1F.b]		; 07 1F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	rol $4400.w,X		; 3E 00 44
	ora $5E.b		; 05 5E
	inc A		; 1A
	ror $EBA2.w,X		; 7E A2 EB
	cop $BB.b		; 02 BB
	cop $B7.b		; 02 B7
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	ora $3C.b,S		; 03 3C
	tsa		; 3B
	dec A		; 3A
	and ($27.b,X)		; 21 27
	ora $1F.b		; 05 1F
	ora $7D7F.w,X		; 1D 7F 7D
	adc $B0B37B.l,X		; 7F 7B B3 B0
	eor $45.b		; 45 45
	sta ($92.b)		; 92 92
	eor ($52.b)		; 52 52
	adc $6F49.w		; 6D 49 6F
	eor #$486A.w		; 49 6A 48
	tda		; 7B
	pha		; 48
	jsr $4FFC.w		; 20 FC 4F
	plx		; FA
	lda $AD7FED.l,X		; BF ED 7F AD
	sbc $B6FFB6.l,X		; FF B6 FF B6
	sbc $B7FFB7.l,X		; FF B7 FF B7
	beq -128.b		; F0 80
	beq  96.b		; F0 60
	beq -96.b		; F0 A0
	cpx #$70C0.w		; E0 C0 70
	rts		; 60

	bmi  32.b		; 30 20
	ldy #$C000.w		; A0 00 C0
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$4040.w		; C0 40 40
	bra   0.b		; 80 00
	ora $001F00.l,X		; 1F 00 1F 00
	tas		; 1B
	brk $3B.b		; 00 3B
	brk $33.b		; 00 33
	brk $63.b		; 00 63
	brk $83.b		; 00 83
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	beq -116.b		; F0 8C
	bvs -116.b		; 70 8C
	bvs -120.b		; 70 88
	bvs -104.b		; 70 98
	rts		; 60

	bcc  96.b		; 90 60
	bcc  96.b		; 90 60
	ldy #$F040.w		; A0 40 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $89.b		; 00 89
	ror $95.b,X		; 76 95
	ror A		; 6A
	lsr $2B.b,X		; 56 2B
	dec A		; 3A
	brk $09.b		; 00 09
	tsb $03.b		; 04 03
	tsb $0401.w		; 0C 01 04
	cop $06.b		; 02 06
	ror $08.b,X		; 76 08
	ror A		; 6A
	cop $29.b		; 02 29
	ora ($01.b,X)		; 01 01
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $19.b		; 00 19
	inc $68.b		; E6 68
	sta [$EB.b],Y		; 97 EB
	trb $DD.b		; 14 DD
	asl A		; 0A
	ror $41.b,X		; 76 41
	sbc [$48.b],Y		; F7 48
	lda [$18.b]		; A7 18
	ora $D5.b		; 05 D5
	inc $19.b		; E6 19
	sta [$20.b],Y		; 97 20
	trb $00.b		; 14 00
	cop $60.b		; 02 60
	bit #$D860.w		; 89 60 D8
	pha		; 48
	beq  16.b		; F0 10
	sbc [$CA.b]		; E7 CA
	brk $7D.b		; 00 7D
	cop $3A.b		; 02 3A
	ora $05.b		; 05 05
	ora ($05.b,X)		; 01 05
	.db $62, $00, $50		; 62 00 50
	and $74.b		; 25 74
	ora [$76.b]		; 07 76
	ora [$38.b]		; 07 38
	tsa		; 3B
	cop $07.b		; 02 07
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	and ($0F.b,X)		; 21 0F
	brk $2E.b		; 00 2E
	cop $2F.b		; 02 2F
	eor $737348.l		; 4F 48 73 73
	lda $413E0C.l,X		; BF 0C 3E 41
	mvn $A8,$79		; 54 79 A8
	and $1D54.w,X		; 3D 54 1D
	ror $78FC.w,X		; 7E FC 78
	bcs 127.b		; B0 7F
	sty $C00C.w		; 8C 0C C0
	brk $B0.b		; 00 B0
	sta ($1F.b,X)		; 81 1F
	cmp ($0F.b,X)		; C1 0F
	cpx #$7C06.w		; E0 06 7C
	ora $C0.b,S		; 03 C0
	and $8D0FF0.l,X		; 3F F0 0F 8D
	adc ($30.b)		; 72 30
	cmp $BAF3DC.l		; CF DC F3 BA
	sbc #$D45D.w		; E9 5D D4
	clv		; B8
	tay		; A8
	and $000F00.l,X		; 3F 00 0F 00
	adc ($01.b)		; 72 01
	sta $203380.l		; 8F 80 33 20
	adc $FC50.w,Y		; 79 50 FC
	tay		; A8
	sed		; F8
	mvn $C0,$3F		; 54 3F C0
	and $07F8C0.l,X		; 3F C0 F8 07
	beq  15.b		; F0 0F
	sec		; 38
	cmp [$0C.b]		; C7 0C
	sbc ($82.b,S),Y		; F3 82
	adc $3FC0.w,X		; 7D C0 3F
	cpy #$C03F.w		; C0 3F C0
	and $0FF807.l,X		; 3F 07 F8 0F
	beq -57.b		; F0 C7
	sec		; 38
	sbc ($0C.b,S),Y		; F3 0C
	adc $3F02.w,X		; 7D 02 3F
	brk $A0.b		; 00 A0
	rti		; 40

	bne  32.b		; D0 20
	pla		; 68
	bcc  20.b		; 90 14
	inx		; E8
	tsb $02F0.w		; 0C F0 02
	jsr ($FC02.w,X)		; FC 02 FC
	ora ($FE.b,X)		; 01 FE
	rti		; 40

	bra  32.b		; 80 20
	cpy #$6090.w		; C0 90 60
	inx		; E8
	bpl -16.b		; 10 F0
	php		; 08
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $06.b		; 00 06
	asl $3808.w,X		; 1E 08 38
	jsr $4060.w		; 20 60 40
	cpy #$8303.w		; C0 03 83
	tsb $708F.w		; 0C 8F 70
	inc $F800.w,X		; FE 00 F8
	ora ($00.b,X)		; 01 00
	ora [$10.b],Y		; 17 10
	ora $003F00.l,X		; 1F 00 3F 00
	jmp ($F200.w,X)		; 7C 00 F2
	.db $82, $88, $88		; 82 88 88
	brk $00.b		; 00 00
	eor $6B61.w,X		; 5D 61 6B
	adc ($67.b),Y		; 71 67
	sei		; 78
	cmp ($FE.b,X)		; C1 FE
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $14952E.l		; AF 2E 95 14
	tya		; 98
	clc		; 18
	bmi  48.b		; 30 30
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DD.b		; 00 DD
	ora ($ED.b),Y		; 11 ED
	and ($6F.b,X)		; 21 6F
	and [$FA.b]		; 27 FA
	adc $6DF313.l,X		; 7F 13 F3 6D
	sbc ($5C.b,X)		; E1 5C
	cmp ($5C.b,X)		; C1 5C
	cmp ($FF.b,X)		; C1 FF
	inc $DEFF.w		; EE FF DE
	sbc $057DD8.l,X		; FF D8 7D 05
	jmp ($1E60.w)		; 6C 60 1E
	brk $3F.b		; 00 3F
	ora ($3F.b,X)		; 01 3F
	ora ($70.b,X)		; 01 70
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$00C0.w		; C0 C0 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	cmp $3A.b,S		; C3 3A
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $3C.b,S		; 83 3C
	stx $38.b		; 86 38
	stx $30.b		; 86 30
	stx $30.b		; 86 30
	sty $3C.b		; 84 3C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	cop $7E.b		; 02 7E
	cop $78.b		; 02 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	brk $30.b		; 00 30
	sty $38.b		; 84 38
	sty $8C38.w		; 8C 38 8C
	sei		; 78
	cpy $CC48.w		; CC 48 CC
	pha		; 48
	cpy $EE28.w		; CC 28 EE
	bit $66.b,X		; 34 66
	sei		; 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $54.b		; 00 54
	mvp $00,$18		; 44 18 00
	sec		; 38
	adc $3C.b,S		; 63 3C
	adc $0E.b,S		; 63 0E
	adc $0C.b,S		; 63 0C
	and ($0C.b,X)		; 21 0C
	and ($1E.b,X)		; 21 1E
	and ($16.b),Y		; 31 16
	and ($06.b),Y		; 31 06
	and ($1E.b),Y		; 31 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $001E.w		; 20 1E 00
	asl $0E00.w,X		; 1E 00 0E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl   6.b		; 10 06
	ora ($0E.b),Y		; 11 0E
	ora $1906.w,Y		; 19 06 19
	asl $09.b		; 06 09
	cop $09.b		; 02 09
	asl $0D.b		; 06 0D
	cop $0D.b		; 02 0D
	cop $05.b		; 02 05
	asl $0600.w		; 0E 00 06
	brk $0E.b		; 00 0E
	php		; 08
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl $04.b		; 06 04
	ora $01.b,S		; 03 01
	ora ($0E.b),Y		; 11 0E
	ora ($0D.b,S),Y		; 13 0D
	rol $1A.b		; 26 1A
	and $18.b		; 25 18
	eor [$38.b]		; 47 38
	adc $1A.b		; 65 1A
	stz $1B.b		; 64 1B
	lda [$48.b],Y		; B7 48
	asl $0D00.w		; 0E 00 0D
	brk $1B.b		; 00 1B
	ora ($1B.b,X)		; 01 1B
	ora $38.b,S		; 03 38
	brk $18.b		; 00 18
	and $19.b,S		; 23 19
	jsl $C63348.l		; 22 48 33 C6
	plx		; FA
	eor $44.b,X		; 55 44
	stp		; DB
	cli		; 58
	sbc [$74.b],Y		; F7 74
	xce		; FB
	trb $E9.b		; 14 E9
	asl $F5.b,X		; 16 F5
	asl A		; 0A
	lda $01C310.l		; AF 10 C3 01
	sbc $87EFBB.l,X		; FF BB EF 87
	jmp.w [$1488]		; DC 88 14
	cop $50.b		; 02 50
	lsr $4648.w		; 4E 48 46
	bvc  78.b		; 50 4E
	dey		; 88
	beq  72.b		; F0 48
	bvs -88.b		; 70 A8
	bmi -64.b		; 30 C0
	brk $90.b		; 00 90
	bvc  36.b		; 50 24
	ldy $AB88.w		; AC 88 AB
	sta ($95.b),Y		; 91 95
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	beq -64.b		; F0 C0
	brk $38.b		; 00 38
	bpl  -4.b		; 10 FC
	brk $FE.b		; 00 FE
	asl A		; 0A
	inc $FC06.w,X		; FE 06 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $013E00.l		; 0F 00 3E 01
	adc [$98.b]		; 67 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0E.b,X)		; 01 0E
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	clc		; 18
	ora [$24.b]		; 07 24
	tas		; 1B
	lsr $B131.w		; 4E 31 B1
	lsr $50AF.w		; 4E AF 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tas		; 1B
	tsb $21.b		; 04 21
	asl $3A44.w,X		; 1E 44 3A
	bvc  10.b		; 50 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	brk $44.b		; 00 44
	clv		; B8
	rol A		; 2A
	pei ($FE.b)		; D4 FE
	brk $4F.b		; 00 4F
	bcs -11.b		; B0 F5
	txa		; 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	brk $D4.b		; 00 D4
	plp		; 28
	brk $7C.b		; 00 7C
	bcc -82.b		; 90 AE
	asl A		; 0A
	bit $04.b		; 24 04
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	ora [$3F.b]		; 07 3F
	and $594C7A.l,X		; 3F 7A 4C 59
	cli		; 58
	.db $42, $40		; 42 40
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	ora ($3F.b,X)		; 01 3F
	bit $407F.w,X		; 3C 7F 40
	sbc $01FE40.l,X		; FF 40 FE 01
	sbc $4101.w,Y		; F9 01 41
	cmp [$EF.b]		; C7 EF
	cmp $C6A6E7.l		; CF E7 A6 C6
	eor $85.b		; 45 85
	tax		; AA
	rol A		; 2A
	and $25.b		; 25 25
	eor #$5549.w		; 49 49 55
	eor ($07.b),Y		; 51 07
	sbc $86FF87.l,X		; FF 87 FF 86
	cmp $62BF20.l,X		; DF 20 BF 62
	eor $FBDEF1.l,X		; 5F F1 DE FB
	ldx $FF.b,Y		; B6 FF
	ldx $E8C8.w		; AE C8 E8
	stx $6786.w		; 8E 86 67
	adc ($8D.b),Y		; 71 8D
	cpy $3C.b		; C4 3C
	bit $D6.b,X		; 34 D6
	cmp ($57.b)		; D2 57
	mvn $48,$CB		; 54 CB 48
	sta $F107F7.l		; 8F F7 07 F1
	eor ($F8.b,X)		; 41 F8
	stx $F2.b		; 86 F2
	and [$C3.b],Y		; 37 C3
	xce		; FB
	and #$A8FC.w		; 29 FC A8
	jsr ($83B4.w,X)		; FC B4 83
	tda		; 7B
	cmp $39.b,S		; C3 39
	cmp ($3D.b,X)		; C1 3D
	beq  13.b		; F0 0D
	inc $FE00.w,X		; FE 00 FE
	brk $DF.b		; 00 DF
	jsr $1FE0.w		; 20 E0 1F
	adc $3907.w,Y		; 79 07 39
	ora [$3C.b]		; 07 3C
	ora $0C.b,S		; 03 0C
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($20.b,X)		; 01 20
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	brk $42.b		; 00 42
	asl $1C44.w,X		; 1E 44 1C
	adc $1C.b		; 65 1C
	adc $1C.b		; 65 1C
	adc $18.b,S		; 63 18
	sbc $98.b,S		; E3 98
	sbc $98.b,S		; E3 98
	adc $98.b,S		; 63 98
	sbc $14.b,X		; F5 14
	sbc ($10.b,S),Y		; F3 10
	sbc ($10.b,S),Y		; F3 10
	sbc ($10.b,S),Y		; F3 10
	sbc [$10.b],Y		; F7 10
	adc [$00.b]		; 67 00
	adc [$00.b]		; 67 00
	sbc [$80.b]		; E7 80
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	jsr $2068.w		; 20 68 20
	pla		; 68
	jsr $306C.w		; 20 6C 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bpl 124.b		; 10 7C
	jmp $74747C.l		; 5C 7C 74 74
	stz $44.b		; 64 44
	jmp $003840.l		; 5C 40 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	jmp ($7C20.w)		; 6C 20 7C
	php		; 08
	jmp ($7838.w,X)		; 7C 38 78
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0F.b]		; 07 0F
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	php		; 08
	asl $3C00.w,X		; 1E 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	ora #$0A09.w		; 09 09 0A
	asl A		; 0A
	tsb $04.b		; 04 04
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $BD.b		; 00 BD
	.db $42, $DF		; 42 DF
	jsr $23DC.w		; 20 DC 23
	sta $5AA770.l		; 8F 70 A7 5A
	ldx $5A.b		; A6 5A
	eor ($2A.b)		; 52 2A
	eor ($24.b)		; 52 24
	.db $42, $31		; 42 31
	jsr $2350.w		; 20 50 23
	bvc 112.b		; 50 70
	ora ($5A.b,X)		; 01 5A
	brk $5A.b		; 00 5A
	ora ($2A.b,X)		; 01 2A
	ora $20.b		; 05 20
	ora $CFAC53.l		; 0F 53 AC CF
	and ($B1.b),Y		; 31 B1
	lsr $22DD.w		; 4E DD 22
	ror $F4C1.w,X		; 7E C1 F4
	sed		; F8
	inc $7EFF.w,X		; FE FF 7E
	inc $02AC.w,X		; FE AC 02
	bmi   1.b		; 30 01
	asl $0250.w		; 0E 50 02
	jmp ($F100.w)		; 6C 00 F1
	rts		; 60

	sbc $7CFF7C.l,X		; FF 7C FF 7C
	sbc $859487.l,X		; FF 87 94 85
	pei ($C0.b)		; D4 C0
	inc $CF90.w		; EE 90 CF
	and $7F87.w,Y		; 39 87 7F
	brk $6F.b		; 00 6F
	rts		; 60

	wai		; CB
	cpy $83.b		; C4 83
	sed		; F8
	sta $F8.b,S		; 83 F8
	phb		; 8B
	sbc ($0D.b)		; F2 0D
	sbc ($07.b,X)		; E1 07
	iny		; C8
	brk $86.b		; 00 86
	bvs -105.b		; 70 97
	pea $1933.w		; F4 33 19
	ror $67.b		; 66 67
	sei		; 78
	cmp $EBD6.w,Y		; D9 D6 EB
	ldy $5D7A.w		; AC 7A 5D
	bcs -89.b		; B0 A7
	beq  91.b		; F0 5B
	tya		; 98
	tsa		; 3B
	ldx $01.b		; A6 01
	clv		; B8
	ora [$76.b]		; 07 76
	and #$53FC.w		; 29 FC 53
	sbc $E7A2.w,X		; FD A2 E7
	cli		; 58
	eor $3C.b,S		; 43 3C
	ora ($FC.b,S),Y		; 13 FC
	cmp $DE36.w		; CD 36 DE
	jsr $235C.w		; 20 5C 23
	rol $3508.w,X		; 3E 08 35
	asl $142E.w		; 0E 2E 14
	and $1A.b		; 25 1A
	mvp $32,$3B		; 44 3B 32
	brk $21.b		; 00 21
	brk $2B.b		; 00 2B
	ora ($01.b,X)		; 01 01
	cop $07.b		; 02 07
	tsb $13.b		; 04 13
	brk $1B.b		; 00 1B
	cop $39.b		; 02 39
	ora ($51.b,X)		; 01 51
	rol $023D.w		; 2E 3D 02
	trb $BE63.w		; 1C 63 BE
	ora #$3BD4.w		; 09 D4 3B
	and $D996.w,Y		; 39 96 D9
	rol $19.b		; 26 19
	ror $00AE.w		; 6E AE 00
	rep #$00		; C2 00
	xba		; EB
	rti		; 40

	cmp ($20.b,X)		; C1 20
	sbc ($10.b,S),Y		; F3 10
	inc $81.b		; E6 81
	inc $21.b		; E6 21
	dec $0241.w		; CE 41 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AD.b		; 00 AD
	lda ($2E.b,X)		; A1 2E
	jsl $8B725B.l		; 22 5B 72 8B
	plx		; FA
	ora [$FF.b]		; 07 FF
	rts		; 60

	sbc $91FF70.l,X		; FF 70 FF 91
	sta $FF5EFF.l,X		; 9F FF 5E FF
	cmp $8DDF.w,X		; DD DF 8D
	lda $707725.l		; AF 25 77 70
	sta $8B99.w,Y		; 99 99 8B
	phb		; 8B
	ror A		; 6A
	asl A		; 0A
	stp		; DB
	lsr A		; 4A
	lda $24.b,X		; B5 24
	sbc $AB65.w		; ED 65 AB
	sbc $2B.b,S		; E3 2B
.INDEX 8
	sep #$13		; E2 13
	sbc ($DF.b)		; F2 DF
	cpx $FEE1.w		; EC E1 FE
	inc $FEB4.w,X		; FE B4 FE
	phx		; DA
	sbc $1CBF9A.l,X		; FF 9A BF 1C
	inc $FEDC.w,X		; FE DC FE
	cpx $202C.w		; EC 2C 20
	inc A		; 1A
	clc		; 18
	sed		; F8
	asl $FE.b		; 06 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	sta ($81.b,X)		; 81 81
	ror $0106.w,X		; 7E 06 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	ror $0000.w,X		; 7E 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $0E1F06.l		; 0F 06 1F 0E
	and $1C7F1E.l,X		; 3F 1E 7F 1C
	adc $010000.l,X		; 7F 00 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $09.b		; 04 09
	ora #$1111.w		; 09 11 11
	and ($21.b,X)		; 21 21
	jsl $986322.l		; 22 22 63 98
	sta $98.b,S		; 83 98
	and $38.b,S		; 23 38
	sta $A8.b,S		; 83 A8
	eor $E8.b,S		; 43 E8
	cop $C8.b		; 02 C8
	brk $88.b		; 00 88
	ora $0D.b		; 05 0D
	sbc [$80.b]		; E7 80
	adc [$00.b]		; 67 00
	cmp [$00.b]		; C7 00
	eor [$00.b]		; 47 00
	sta [$80.b]		; 87 80
	sta [$80.b]		; 87 80
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $FA30.w		; CC 30 FA
	tsb $CF.b		; 04 CF
	bmi  16.b		; 30 10
	cpx #$20.b		; E0 20
	cpy #$20.b		; C0 20
	cpy #$60.b		; C0 60
	bra  64.b		; 80 40
	bra  48.b		; 80 30
	cpy #$04.b		; C0 04
	sed		; F8
	bmi -64.b		; 30 C0
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bvc -40.b		; 50 D8
	rts		; 60

	cpy $CC68.w		; CC 68 CC
	sec		; 38
	sty $8430.w		; 8C 30 84
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	jsr $3800.w		; 20 00 38
	php		; 08
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $84.b		; 00 84
	cld		; D8
	cpy $CCD0.w		; CC D0 CC
	bne -40.b		; D0 D8
	cpy #$CA.b		; C0 CA
	cpx #$6A.b		; E0 6A
	cpx #$66.b		; E0 66
	rts		; 60

	ror $9860.w		; 6E 60 98
	cpx #$90.b		; E0 90
	cpx #$D0.b		; E0 D0
	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	beq  64.b		; F0 40
	beq  96.b		; F0 60
	beq  32.b		; F0 20
	beq -92.b		; F0 A4
	bcs  84.b		; B0 54
	bmi  80.b		; 30 50
	bvc  96.b		; 50 60
	jsr $4040.w		; 20 40 40
	ldy #$00.b		; A0 00
	rti		; 40

	bra -128.b		; 80 80
	brk $A0.b		; 00 A0
	sed		; F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy $3030.w		; CC 30 30
	cpy #$08.b		; C0 08
	beq  -4.b		; F0 FC
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	inc $FC38.w,X		; FE 38 FC
	bvs  -4.b		; 70 FC
	rts		; 60

	sed		; F8
	rti		; 40

	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$44.b		; C0 44
	mvp $40,$40		; 44 40 40
	php		; 08
	php		; 08
	bcc -112.b		; 90 90
	ldy #$A0.b		; A0 A0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	php		; 08
	ora $110F0F.l		; 0F 0F 0F 11
	bpl  18.b		; 10 12
	bpl  22.b		; 10 16
	tsb $0C.b		; 04 0C
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $0A.b,S		; 03 0A
	cop $0F.b		; 02 0F
	brk $1E.b		; 00 1E
	asl $0C1C.w		; 0E 1C 0C
	tsb $0008.w		; 0C 08 00
	brk $30.b		; 00 30
	sty $78.b		; 84 78
	cpy $CC78.w		; CC 78 CC
	bvs -52.b		; 70 CC
	bmi -52.b		; 30 CC
	bmi -56.b		; 30 C8
	bmi  72.b		; 30 48
	bpl  72.b		; 10 48
	sei		; 78
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	sei		; 78
	pha		; 48
	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	adc ($7E.b,X)		; 61 7E
	jsr $EE3F.w		; 20 3F EE
	and ($E1.b),Y		; 31 E1
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	bmi -128.b		; 30 80
	jsr $2080.w		; 20 80 20
	stx $10.b,Y		; 96 10
	cmp [$10.b],Y		; D7 10
	cmp ($00.b,X)		; C1 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	eor [$47.b]		; 47 47
	ror $7E.b,X		; 76 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($C7.b,X)		; 01 C7
	rti		; 40

	sbc $3EFF30.l,X		; FF 30 FF 3E
	rol $7C79.w,X		; 3E 79 7C
	sbc ($F9.b)		; F2 F9
	sbc $F2.b		; E5 F2
	wai		; CB
	cpy $B3.b		; C4 B3
	sty $5C23.w		; 8C 23 5C
	adc [$98.b]		; 67 98
	clc		; 18
	adc $61FE30.l,X		; 7F 30 FE 61
	jsr ($F8C2.w,X)		; FC C2 F8
	sty $F0.b		; 84 F0
	tsb $5CC0.w		; 0C C0 5C
	bra -104.b		; 80 98
	brk $D5.b		; 00 D5
	cpx $C873.w		; EC 73 C8
	and $2077C8.l,X		; 3F C8 77 20
	xba		; EB
	rts		; 60

	sta $BCBE08.l		; 8F 08 BE BC
	iny		; C8
	cpy $0003.w		; CC 03 00
	sta $000788.l		; 8F 88 07 00
	and $107700.l		; 2F 00 77 10
	tda		; 7B
	bvs  -1.b		; 70 FF
	rti		; 40

	sbc $308034.l,X		; FF 34 80 30
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	inc $FE00.w,X		; FE 00 FE
	clc		; 18
	inc $E70C.w		; EE 0C E7
	lsr $B3.b		; 46 B3
	cop $BB.b		; 02 BB
	cop $AB.b		; 02 AB
	brk $D3.b		; 00 D3
	brk $00.b		; 00 00
	ora ($18.b,X)		; 01 18
	ora ($1C.b,X)		; 01 1C
	ora ($5E.b),Y		; 11 5E
	clc		; 18
	lsr $5E5C.w,X		; 5E 5C 5E
	jmp $2C5C5C.l		; 5C 5C 5C 2C
	bit $FDFC.w		; 2C FC FD
	jmp ($78FD.w,X)		; 7C FD 78
	sty $7C.b		; 84 7C
	sei		; 78
	ply		; 7A
	sty $AF.b		; 84 AF
	plp		; 28
	plb		; AB
	tay		; A8
	lda #$78A8.w		; A9 A8 78
	inc $FE18.w,X		; FE 18 FE
	brk $FE.b		; 00 FE
	bmi  -1.b		; 30 FF
	brk $87.b		; 00 87
	sei		; 78
	eor ($FE.b),Y		; 51 FE
	lsr $FF.b,X		; 56 FF
	eor [$00.b],Y		; 57 00
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
	brk $08.b		; 00 08
	ora [$08.b]		; 07 08
	ora [$11.b]		; 07 11
	asl $1C22.w		; 0E 22 1C
	eor $265831.l		; 4F 31 58 26
	lda ($4D.b),Y		; B1 4D
	ror $90.b		; 66 90
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $1C00.w		; 0E 00 1C
	ora ($30.b,X)		; 01 30
	ora ($22.b,X)		; 01 22
	ora $46.b,S		; 03 46
	tsb $8F.b		; 04 8F
	brk $7A.b		; 00 7A
	.db $82, $F9, $07		; 82 F9 07
	php		; 08
	ora $B66764.l		; 0F 64 67 B6
	lda ($D2.b,S),Y		; B3 D2
	cmp ($4D.b),Y		; D1 4D
	rti		; 40

	asl $59.b,X		; 16 59
	sta $00.b		; 85 00
	cop $02.b		; 02 02
	ora $4EF5.w,X		; 1D F5 4E
	plx		; FA
	ldx $FC.b		; A6 FC
	lsr $FE.b		; 46 FE
	cop $FA.b		; 02 FA
	ora ($FC.b,X)		; 01 FC
	cpx #$08.b		; E0 08
	bra  56.b		; 80 38
	brk $70.b		; 00 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	beq  48.b		; F0 30
	cpx #$60.b		; E0 60
	rti		; 40

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
	ora $0F7000.l,X		; 1F 00 70 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sec		; 38
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$F0.b		; E0 F0
	beq  48.b		; F0 30
	bvs -64.b		; 70 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80.b		; E0 80
	sed		; F8
	beq  -8.b		; F0 F8
	bmi  -8.b		; 30 F8
	cpy #$F0.b		; C0 F0
	brk $E0.b		; 00 E0
	bpl  54.b		; 10 36
	brk $24.b		; 00 24
	php		; 08
	bit $2C08.w		; 2C 08 2C
	brk $2C.b		; 00 2C
	brk $68.b		; 00 68
	jsr $E068.w		; 20 68 E0
	inx		; E8
	tsb $1804.w		; 0C 04 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	bne   0.b		; D0 00
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
	cop $C3.b		; 02 C3
	cop $C3.b		; 02 C3
	jsr $0061.w		; 20 61 00
	adc ($00.b,X)		; 61 00
	and ($10.b,X)		; 21 10
	and ($10.b),Y		; 31 10
	and ($0A.b),Y		; 31 0A
	tsa		; 3B
	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	asl $3E00.w,X		; 1E 00 3E
	jsr $001E.w		; 20 1E 00
	asl $0E00.w		; 0E 00 0E
	brk $14.b		; 00 14
	bpl  28.b		; 10 1C
	ora $0102.w,X		; 1D 02 01
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora #$017E.w		; 09 7E 01
	trb $0002.w		; 1C 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$38.b]		; C7 38
	cmp [$38.b]		; C7 38
	sta $708E70.l		; 8F 70 8E 70
	ora $F00FF0.l		; 0F F0 0F F0
	ora $F00FF0.l		; 0F F0 0F F0
	sec		; 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $71.b		; 00 71
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F9.b		; 00 F9
	ora $0FFE.w		; 0D FE 0F
	asl $F40F.w		; 0E 0F F4
	sbc $E07EE0.l,X		; FF E0 7E E0
	jmp ($78C0.w,X)		; 7C C0 78
	bra -32.b		; 80 E0
	inc $F9F4.w,X		; FE F4 F9
	sbc ($F8.b),Y		; F1 F8
	beq  -6.b		; F0 FA
	asl A		; 0A
	jsr ($F89C.w,X)		; FC 9C F8
	tya		; 98
	beq -80.b		; F0 B0
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rts		; 60

	beq 124.b		; F0 7C
	inc $3F1F.w,X		; FE 1F 3F
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $7E.b		; 00 7E
	sec		; 38
	sbc $01FF0C.l,X		; FF 0C FF 01
	and $000700.l,X		; 3F 00 07 00
	ora ($00.b,X)		; 01 00
	ora ($D7.b,X)		; 01 D7
	cop $FB.b		; 02 FB
	eor ($73.b)		; 52 73
	.db $62, $73, $62		; 62 73 62
	ror $F340.w,X		; 7E 40 F3
	brk $E3.b		; 00 E3
	brk $E7.b		; 00 E7
	brk $2A.b		; 00 2A
	plp		; 28
	lsr $04.b,X		; 56 04
	inc $EE8C.w		; EE 8C EE
	sty $81C1.w		; 8C C1 81
	ora $1D0D.w		; 0D 0D 1D
	ora $1B1B.w,X		; 1D 1B 1B
	sbc $ECA4.w		; ED A4 EC
	ldy $DE.b		; A4 DE
	sta ($D7.b)		; 92 D7
	sta ($F7.b),Y		; 91 F7
	bcc -21.b		; 90 EB
	dey		; 88
	inx		; E8
	dey		; 88
	sbc [$87.b],Y		; F7 87
	sbc $5BFF5B.l,X		; FF 5B FF 5B
	sbc $6EFF6D.l,X		; FF 6D FF 6E
	sbc $77FF6F.l,X		; FF 6F FF 77
	sbc $78FF77.l,X		; FF 77 FF 78
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $02.b,S		; 03 02
	ora $1F07.w		; 0D 07 1F
	ora $7E1E3F.l		; 0F 3F 1E 7E
	rol $0000.w,X		; 3E 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $0D.b,S		; 03 0D
	ora ($1E.b,X)		; 01 1E
	ora $3E.b		; 05 3E
	asl $1C7F.w		; 0E 7F 1C
	sbc $DA618D.l,X		; FF 8D 61 DA
	cmp $68.b,S		; C3 68
	and $D99EB9.l		; 2F B9 9E D9
	eor $79.b,S		; 43 79
	and $F9.b,S		; 23 F9
	cmp $FD.b,S		; C3 FD
	ora ($1E.b,X)		; 01 1E
	brk $FC.b		; 00 FC
	brk $F4.b		; 00 F4
	cmp $F8.b		; C5 F8
	adc $F0.b,S		; 63 F0
	lda [$E1.b],Y		; B7 E1
	cmp [$C0.b]		; C7 C0
	ora [$00.b]		; 07 00
	ora $3B.b,S		; 03 3B
	ldy $FC7F.w,X		; BC 7F FC
	xce		; FB
	jsr ($78BF.w,X)		; FC BF 78
	adc $F1EE80.l,X		; 7F 80 EE F1
	sbc $FBFA.w,X		; FD FA FB
	jsr ($7D10.w,X)		; FC 10 7D
	sec		; 38
	sbc $FD38.w,X		; FD 38 FD
	brk $F9.b		; 00 F9
	brk $F5.b		; 00 F5
	cmp ($F4.b,X)		; C1 F4
	sbc ($F8.b)		; F2 F8
	beq  -4.b		; F0 FC
	ldy #$40.b		; A0 40
	cpx #$00.b		; E0 00
	rts		; 60

	sta ($41.b,X)		; 81 41
	sta $A0.b,S		; 83 A0
	lsr $A3.b		; 46 A3
	lsr $41.b		; 46 41
	sty $DC87.w		; 8C 87 DC
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $43.b		; 00 43
	cop $41.b		; 02 41
	brk $07.b		; 00 07
	tsb $0B.b		; 04 0B
	php		; 08
	cpy $3B.b		; C4 3B
	ora ($EC.b,S),Y		; 13 EC
	sta $F262.w,X		; 9D 62 F2
	ora $18E7.w		; 0D E7 18
	phb		; 8B
	adc $35.b,X		; 75 35
	cpy $71.b		; C4 71
	bra  59.b		; 80 3B
	tsb $E0.b		; 04 E0
	asl $9C62.w,X		; 1E 62 9C
	ora $18F0.w		; 0D F0 18
	cpx #$71.b		; E0 71
	sta ($CB.b,X)		; 81 CB
	brk $8F.b		; 00 8F
	brk $C4.b		; 00 C4
	sec		; 38
	ldx $48.b,Y		; B6 48
	eor $AA.b,X		; 55 AA
	tsa		; 3B
	pei ($FA.b)		; D4 FA
	trb $5E.b		; 14 5E
	bcc -20.b		; 90 EC
	bpl -80.b		; 10 B0
	cld		; D8
	sec		; 38
	cpy #$08.b		; C0 08
	pea $44AA.w		; F4 AA 44
	cpy $00.b		; C4 00
	tsb $00.b		; 04 00
	ldy #$00.b		; A0 00
	bmi  80.b		; 30 50
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $8F.b		; 00 8F
	bvs -113.b		; 70 8F
	bvs  71.b		; 70 47
	sec		; 38
	eor [$38.b]		; 47 38
	and [$18.b]		; 27 18
	ora ($0C.b,S),Y		; 13 0C
	ora $0302.w		; 0D 02 03
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	brk $C7.b		; 00 C7
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $9C.b		; 00 9C
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B2.b		; 00 B2
	sta ($8D.b,X)		; 81 8D
	.db $82, $F8, $0F		; 82 F8 0F
	ora ($7F.b,X)		; 01 7F
	cop $3E.b		; 02 3E
	tsb $3C.b		; 04 3C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	jsr ($F07C.w,X)		; FC 7C F0
	bvs  15.b		; 70 0F
	ora [$3E.b]		; 07 3E
	rol $1C1D.w,X		; 3E 1D 1C
	tas		; 1B
	clc		; 18
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	rts		; 60

	bra -128.b		; 80 80
	rts		; 60

	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	bvc -60.b		; 50 C4
	ldy #$88.b		; A0 88
	bvs  24.b		; 70 18
	cpy #$10.b		; C0 10
	bra  32.b		; 80 20
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	sec		; 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	and ($12.b),Y		; 31 12
	and ($00.b,S),Y		; 33 00
	and $00.b,S		; 23 00
	jsl $006604.l		; 22 04 66 00
	ror $20.b		; 66 20
	stz $28.b		; 64 28
	jmp ($000E.w)		; 6C 0E 00
	tsb $1E00.w		; 0C 00 1E
	cop $1C.b		; 02 1C
	brk $38.b		; 00 38
	jsr $243C.w		; 20 3C 24
	clc		; 18
	brk $10.b		; 00 10
	brk $0A.b		; 00 0A
	tsa		; 3B
	clc		; 18
	tsa		; 3B
	bpl 115.b		; 10 73
	bit $66.b		; 24 66
	brk $C6.b		; 00 C6
	rti		; 40

	cpy $08.b		; C4 08
	sty $8C00.w		; 8C 00 8C
	trb $10.b		; 14 10
	asl $02.b		; 06 02
	rol $1822.w		; 2E 22 18
	brk $7C.b		; 00 7C
	mvp $00,$38		; 44 38 00
	beq -128.b		; F0 80
	sed		; F8
	dey		; 88
	bmi  50.b		; 30 32
	cli		; 58
	phy		; 5A
	sei		; 78
	ply		; 7A
	bvs  90.b		; 70 5A
	jmp ($5C1E.w,X)		; 7C 1E 5C
	asl $0E18.w		; 0E 18 0E
	asl $06.b,X		; 16 06
	bit $7400.w,X		; 3C 00 74
	jsr $0074.w		; 20 74 00
	jmp $001808.l		; 5C 08 18 00
	php		; 08
	brk $0C.b		; 00 0C
	tsb $0E.b		; 04 0E
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	phd		; 0B
	clc		; 18
	asl $30.b,X		; 16 30
	ora $0061.w		; 0D 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3E.b		; 00 3E
	jsr $E322.w		; 20 22 E3
	cli		; 58
	dec $9CD0.w,X		; DE D0 9C
	rti		; 40

	clc		; 18
	ldy #$30.b		; A0 30
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	jmp $042440.l		; 5C 40 24 04
	pla		; 68
	php		; 08
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	asl $001C.w,X		; 1E 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $1C.b		; 00 1C
	brk $2E.b		; 00 2E
	plp		; 28
	bit $3C78.w,X		; 3C 78 3C
	bcs 120.b		; B0 78
	rts		; 60

	beq -64.b		; F0 C0
	jsr ($E0F8.w,X)		; FC F8 E0
	cpy #$C0.b		; C0 C0
	brk $38.b		; 00 38
	bpl  24.b		; 10 18
	brk $50.b		; 00 50
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $08.b		; 02 08
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $03.b		; 02 03
	ora [$07.b]		; 07 07
	asl $1A09.w		; 0E 09 1A
	trb $36.b		; 14 36
	jsr $5864.w		; 20 64 58
	cpy $0000.w		; CC 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	php		; 08
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $1E.b		; 00 1E
	asl A		; 0A
	ora $0705.w		; 0D 05 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $07.b		; 04 07
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	bvs -121.b		; 70 87
	bvs  71.b		; 70 47
	bmi  87.b		; 30 57
	bmi  31.b		; 30 1F
	bmi  30.b		; 30 1E
	bmi  14.b		; 30 0E
	jsr $210F.w		; 20 0F 21
	eor $105F10.l,X		; 5F 10 5F 10
	ora $000F10.l,X		; 1F 10 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001E00.l,X		; 1F 00 1E 00
	clc		; 18
	adc [$18.b]		; 67 18
	adc [$98.b]		; 67 98
	sbc [$98.b]		; E7 98
	sbc [$38.b]		; E7 38
	cmp [$39.b]		; C7 39
	dec $3B.b		; C6 3B
	cpy $2E.b		; C4 2E
	cpy #$C5.b		; C0 C5
	eor ($C6.b,X)		; 41 C6
	rti		; 40

	asl $00.b		; 06 00
	asl $00.b		; 06 00
	sta [$80.b]		; 87 80
	stx $80.b		; 86 80
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	cop $09.b		; 02 09
	ora $1A.b		; 05 1A
	asl $14.b		; 06 14
	tsb $0C16.w		; 0C 16 0C
	ora ($09.b,S),Y		; 13 09
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	txs		; 9A
	.db $82, $E7, $E3		; 82 E7 E3
	tda		; 7B
	eor $0CF5.w,Y		; 59 F5 0C
	wai		; CB
	ldy $57.b,X		; B4 57
	plp		; 28
	ply		; 7A
	sty $47.b		; 84 47
	clv		; B8
	sbc $9CFE7C.l,X		; FF 7C FE 9C
	ora $B20EC6.l,X		; 1F C6 0E B2
	ora $B9.b		; 05 B9
	ora #$05B1.w		; 09 B1 05
	and $0038.w,Y		; 39 38 00
	beq -64.b		; F0 C0
	sbc #$BA8B.w		; E9 8B BA
	and ($79.b)		; 32 79
	eor ($A0.b,X)		; 41 A0
	phy		; 5A
	pei ($28.b)		; D4 28
	lda ($43.b,X)		; A1 43
	jmp.w [$7C1C]		; DC 1C 7C
	and $F277F8.l,X		; 3F F8 77 F2
	cmp [$C1.b]		; C7 C1
	sta $213F40.l,X		; 9F 40 3F 21
	inc A		; 1A
	rti		; 40

	bit $3F0C.w,X		; 3C 0C 3F
	rti		; 40

	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	bra  16.b		; 80 10
	rts		; 60

	bcc -32.b		; 90 E0
	php		; 08
	bvs  72.b		; 70 48
	bvs   4.b		; 70 04
	sec		; 38
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr $2080.w		; 20 80 20
	brk $B0.b		; 00 B0
	brk $90.b		; 00 90
	brk $D8.b		; 00 D8
	brk $2C.b		; 00 2C
	bpl  44.b		; 10 2C
	ora ($2C.b,S),Y		; 13 2C
	ora ($28.b,S),Y		; 13 28
	ora [$29.b],Y		; 17 29
	asl $29.b,X		; 16 29
	asl $2B.b,X		; 16 2B
	ora $23.b,X		; 15 23
	ora $0F10.w,X		; 1D 10 0F
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	ora [$08.b],Y		; 17 08
	asl $08.b,X		; 16 08
	asl $08.b,X		; 16 08
	ora $08.b,X		; 15 08
	ora $0400.w,X		; 1D 00 04
	asl $B371.w		; 0E 71 B3
	inx		; E8
	rtl		; 6B

	dec $D64B.w		; CE 4B D6
	cmp ($96.b,S),Y		; D3 96
	sta ($16.b,S),Y		; 93 16
	ora ($2B.b)		; 12 2B
	jsl $B0FC01.l		; 22 01 FC B0
	tsb $157D.w		; 0C 7D 15
	ror $FE34.w,X		; 7E 34 FE
	bit $6CFE.w		; 2C FE 6C
	sbc $DDFFED.l,X		; FF ED FF DD
	sbc $06.b,X		; F5 06
	pea $FA0F.w		; F4 0F FA
	ora $E10F6A.l		; 0F 6A 0F E1
	sta [$71.b]		; 87 71
	sta [$31.b]		; 87 31
	sta [$75.b]		; 87 75
	cmp [$F8.b]		; C7 F8
	brk $FA.b		; 00 FA
	asl A		; 0A
	beq   0.b		; F0 00
	sbc ($01.b),Y		; F1 01
	ply		; 7A
	cop $FC.b		; 02 FC
	sty $7C.b		; 84 7C
	tsb $38.b		; 04 38
	brk $8D.b		; 00 8D
	adc ($8D.b)		; 72 8D
	adc ($C5.b)		; 72 C5
	tsx		; BA
	adc $DA.b		; 65 DA
	and $9A.b		; 25 9A
	and $AA.b,X		; 35 AA
	and $AA.b,X		; 35 AA
	ora ($CE.b),Y		; 11 CE
	adc ($0C.b)		; 72 0C
	adc ($0C.b)		; 72 0C
	tsx		; BA
	tsb $5A.b		; 04 5A
	tsb $5A.b		; 04 5A
	mvp $44,$6A		; 44 6A 44
	ror A		; 6A
	mvp $A0,$AE		; 44 AE A0
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	rti		; 40

	jsr $D0C0.w		; 20 C0 D0
	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $07.b		; 00 07
	brk $18.b		; 00 18
	ora [$24.b]		; 07 24
	tas		; 1B
	lsr $B131.w		; 4E 31 B1
	lsr $50AF.w		; 4E AF 50
	cmp $DE36.w		; CD 36 DE
	jsr $0000.w		; 20 00 00
	ora [$00.b]		; 07 00
	tas		; 1B
	tsb $21.b		; 04 21
	asl $3A44.w,X		; 1E 44 3A
	bvc  10.b		; 50 0A
	and ($00.b)		; 32 00
	and ($00.b,X)		; 21 00
	clv		; B8
	brk $44.b		; 00 44
	clv		; B8
	rol A		; 2A
	pei ($FE.b)		; D4 FE
	brk $4F.b		; 00 4F
	bcs -11.b		; B0 F5
	txa		; 8A
	eor ($2E.b),Y		; 51 2E
	and $0002.w,X		; 3D 02 00
	brk $B8.b		; 00 B8
	brk $D4.b		; 00 D4
	plp		; 28
	brk $7C.b		; 00 7C
	bcc -82.b		; 90 AE
	asl A		; 0A
	bit $AE.b		; 24 AE
	brk $C2.b		; 00 C2
	brk $D9.b		; 00 D9
	rol $59.b		; 26 59
	rol $DA.b		; 26 DA
	ldy $14.b		; A4 14
	tay		; A8
	php		; 08
	bcs  32.b		; B0 20
	bcs  96.b		; B0 60
	beq  64.b		; F0 40
	beq -58.b		; F0 C6
	brk $C6.b		; 00 C6
	brk $44.b		; 00 44
	brk $C8.b		; 00 C8
	bra  96.b		; 80 60
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	jsr $B020.w		; 20 20 B0
	beq -48.b		; F0 D0
	bne 112.b		; D0 70
	bmi -32.b		; 30 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rti		; 40

	beq  32.b		; F0 20
	beq -64.b		; F0 C0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $5F11.w		; 6E 11 5F
	bit $5A.b		; 24 5A
	and [$5F.b]		; 27 5F
	jsl $BE215E.l		; 22 5E 21 BE
	eor [$B9.b]		; 47 B9
	eor $61AD.w,Y		; 59 AD 61
	ora $00.b,X		; 15 00
	jsr $2301.w		; 20 01 23
	cop $21.b		; 02 21
	brk $21.b		; 00 21
	ora ($46.b,X)		; 01 46
	brk $5F.b		; 00 5F
	asl $7F.b		; 06 7F
	asl $210C.w,X		; 1E 0C 21
	ora ($33.b)		; 12 33
	tsb $013F.w		; 0C 3F 01
	asl $0E00.w,X		; 1E 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000C01.l,X		; 1F 01 0C 00
	ora ($12.b)		; 12 12
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	cpy #$E0.b		; C0 E0
	cpy #$21.b		; C0 21
	ora ($C1.b,X)		; 01 C1
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	cpy #$01.b		; C0 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	ora ($3A.b),Y		; 11 3A
	tsa		; 3B
	mvn $5E,$47		; 54 47 5E
	eor $3F7C78.l,X		; 5F 78 7C 3F
	and $3F1D.w,X		; 3D 1D 3F
	ora $03.b,S		; 03 03
	asl $3C00.w		; 0E 00 3C
	brk $7D.b		; 00 7D
	sec		; 38
	adc $1F7820.l,X		; 7F 20 78 1F
	clc		; 18
	adc $017F01.l,X		; 7F 01 7F 01
	and $668679.l,X		; 3F 79 86 66
	sta $03FF.w,Y		; 99 FF 03
	ora $1F0FC7.l,X		; 1F C7 0F 1F
	dec $CF.b		; C6 CF
	cpy $C7.b		; C4 C7
	bit #$869B.w		; 89 9B 86
	brk $98.b		; 00 98
	ora $01.b		; 05 01
	tas		; 1B
	cmp $27.b,S		; C3 27
	ora [$FF.b]		; 07 FF
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	sta ($FD.b,X)		; 81 FD
	bra  -4.b		; 80 FC
	stz $DD5F.w,X		; 9E 5F DD
	sta $F0C3E1.l,X		; 9F E1 C3 F0
	sbc $FA02.w,Y		; F9 02 FA
	ora ($98.b,S),Y		; 13 98
	rts		; 60

	tsb $0EF8.w		; 0C F8 0E
	jmp $BF193F.l		; 5C 3F 19 BF
	cpy #$E0DF.w		; C0 DF E0
	sbc $E00D02.l,X		; FF 02 0D E0
	sty $FB.b		; 84 FB
	phd		; 0B
	sbc $05.b,X		; F5 05
	trb $28.b		; 14 28
	sty $A8.b,X		; 94 A8
	.db $82, $DC, $9A		; 82 DC 9A
	pei ($5A.b)		; D4 5A
	mvn $94,$9A		; 54 9A 94
	sbc $8D72.w		; ED 72 8D
	adc ($48.b)		; 72 48
	bcc   8.b		; 90 08
	bne -116.b		; D0 8C
	cpx #$E814.w		; E0 14 E8
	stz $A8.b,X		; 74 A8
	pea $7268.w		; F4 68 72
	tsb $0C72.w		; 0C 72 0C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $09.b		; 04 09
	asl $0C.b		; 06 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $2D.b		; 00 2D
	bit $AD.b		; 24 AD
	sty $EC.b		; 84 EC
	cpy $3D.b		; C4 3D
	cmp $FF3F.w,X		; DD 3F FF
	lsr $52CF.w		; 4E CF 52
	cmp $7A.b,S		; C3 7A
	cmp $FF.b,S		; C3 FF
	stp		; DB
	cmp $1BDF5B.l,X		; DF 5B DF 1B
	eor $404642.l,X		; 5F 42 46 40
	and ($01.b),Y		; 31 01
	and $3C01.w,X		; 3D 01 3C
	brk $1D.b		; 00 1D
	cmp [$98.b]		; C7 98
	cmp $A8.b,S		; C3 A8
	sbc $0C.b,S		; E3 0C
	sbc $5C.b,S		; E3 5C
	lda ($46.b,S),Y		; B3 46
	lda ($46.b,S),Y		; B3 46
	lda ($4C.b,S),Y		; B3 4C
	lda $4078.w,Y		; B9 78 40
	lda $9D01.w,X		; BD 01 9D
	ora ($3E.b,X)		; 01 3E
	jsl $1C020E.l		; 22 0E 02 1C
	bpl  44.b		; 10 2C
	brk $26.b		; 00 26
	brk $92.b		; 00 92
	cpy $CCB2.w		; CC B2 CC
	ldx #$A2DC.w		; A2 DC A2
	jmp.w [$D824]		; DC 24 D8
	stz $98.b		; 64 98
	cpy $38.b		; C4 38
	cpy $38.b		; C4 38
	bit $0C20.w		; 2C 20 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $98.b		; 00 98
	bra  24.b		; 80 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $0E.b		; 00 0E
	lda ($5F.b),Y		; B1 5F
	tsb $EA.b		; 04 EA
	ora $4B1C.w,X		; 1D 1C 4B
	cpx $0C13.w		; EC 13 0C
	lda [$B3.b],Y		; B7 B3
	sbc ($56.b,S),Y		; F3 56
	bpl -11.b		; 10 F5
	ldy #$10E0.w		; A0 E0 10
	sbc $F308.w,Y		; F9 08 F3
	rti		; 40

	sbc ($10.b,S),Y		; F3 10
	sbc [$A0.b]		; E7 A0
	ora $EFFF0C.l,X		; 1F 0C FF EF
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bcc -112.b		; 90 90
	dey		; 88
	dey		; 88
	pha		; 48
	pha		; 48
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bit $24.b		; 24 24
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bcc   0.b		; 90 00
	tya		; 98
	bpl -56.b		; 10 C8
	bra  72.b		; 80 48
	php		; 08
	pha		; 48
	php		; 08
	jmp ($0048.w)		; 6C 48 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bit $04.b		; 24 04
	pea $FAA0.w		; F4 A0 FA
	cpx $FD0B.w		; EC 0B FD
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $20.b		; 04 20
	jsr $4044.w		; 20 44 40
	inc $02.b,X		; F6 02
	inc $0000.w,X		; FE 00 00
	ora ($00.b)		; 12 00
	sta ($00.b)		; 92 00
	sta ($00.b)		; 92 00
	txy		; 9B
	bra -37.b		; 80 DB
	sta ($DB.b)		; 92 DB
	cop $6F.b		; 02 6F
	cpy #$006D.w		; C0 6D 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $92.b		; 02 92
	sta ($12.b)		; 92 12
	ora ($00.b)		; 12 00
	brk $D9.b		; 00 D9
	eor #$29BB.w		; 49 BB 29
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	ora ($10.b)		; 12 10
	ora ($10.b)		; 12 10
	ora ($10.b)		; 12 10
	brk $00.b		; 00 00
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

	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
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
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	jsr $1000.w		; 20 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	lda $83A701.l		; AF 01 A7 83
	lda [$87.b]		; A7 87
	ora [$FB.b]		; 07 FB
	sbc $07FC04.l,X		; FF 04 FC 07
	ora [$00.b]		; 07 00
	brk $51.b		; 00 51
	ora ($FE.b,X)		; 01 FE
	ldx $7D.b		; A6 7D
	bit $F9.b		; 24 F9
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$80C0.w		; C0 C0 80
	cpy #$8080.w		; C0 80 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E08.w		; 0C 08 0E
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	tsb $06.b		; 04 06
	php		; 08
	asl $0C00.w		; 0E 00 0C
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl A		; 0A
	cop $0C.b		; 02 0C
	brk $0E.b		; 00 0E
	cop $08.b		; 02 08
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
	ora $00030A.l		; 0F 0A 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $0D.b		; 04 0D
	ora ($08.b,X)		; 01 08
	brk $09.b		; 00 09
	php		; 08
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $4D.b		; 00 4D
	brk $45.b		; 00 45
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $34.b		; 00 34
	ora ($12.b)		; 12 12
	ora ($01.b,X)		; 01 01
	ora #$0909.w		; 09 09 09
	ora #$0505.w		; 09 05 05
	tsb $04.b		; 04 04
	bit $24.b		; 24 24
	bit $24.b		; 24 24
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  36.b		; 80 24
	tsb $24.b		; 04 24
	bit $24.b		; 24 24
	bit $24.b		; 24 24
	bit $A0.b		; 24 A0
	ldy #$A0A0.w		; A0 A0 A0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	and $E06700.l,X		; 3F 00 67 E0
	tsb $00FC.w		; 0C FC 00
	and $000100.l,X		; 3F 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	bra  51.b		; 80 33
	bmi   1.b		; 30 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B9.b		; 00 B9
	and $05F3.w		; 2D F3 05
	inc $7700.w,X		; FE 00 77
	beq   0.b		; F0 00
	sbc $000100.l,X		; FF 00 01 00
	brk $00.b		; 00 00
	brk $D2.b		; 00 D2
	brk $FE.b		; 00 FE
	tsb $FF.b		; 04 FF
	brk $8F.b		; 00 8F
	bra   1.b		; 80 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	phy		; 5A
	ora ($5A.b)		; 12 5A
	ora ($5B.b,S),Y		; 13 5B
	ora ($5D.b),Y		; 11 5D
	ora #$094D.w		; 09 4D 09
	eor $6F4B.w		; 4D 4B 6F
	lsr A		; 4A
	sbc $0A0002.l		; EF 02 00 0A
	php		; 08
	phd		; 0B
	php		; 08
	phk		; 4B
	lsr A		; 4A
	eor ($42.b,S),Y		; 53 42
	eor ($42.b,S),Y		; 53 42
	ora ($00.b,S),Y		; 13 00
	ora ($00.b)		; 12 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	brk $0F.b		; 00 0F
	ora $83303C.l		; 0F 3C 30 83
	sta $1F.b,S		; 83 1F
	ora $003838.l,X		; 1F 38 38 00
	ora $03.b,S		; 03 03
	ora $0F0000.l		; 0F 00 00 0F
	brk $3F.b		; 00 3F
	ora $9F7CFF.l		; 0F FF 7C 9F
	bra  56.b		; 80 38
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $20.b		; 04 20
	brk $98.b		; 00 98
	dey		; 88
	pea $FEC4.w		; F4 C4 FE
	inc $FEF8.w,X		; FE F8 FE
	sta ($F3.b)		; 92 F3
	cmp ($F3.b)		; D2 F3
	ora $3D.b,X		; 15 3D
	brk $00.b		; 00 00
	dey		; 88
	brk $CC.b		; 00 CC
	php		; 08
	stz $0400.w,X		; 9E 00 04
	tsb $AC.b		; 04 AC
	jsr $212D.w		; 20 2D 21
	asl A		; 0A
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
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	cpy #$9078.w		; C0 78 90
	stz $8F68.w		; 9C 68 8F
	phy		; 5A
	cmp $26.b,S		; C3 26
	rts		; 60

	ora $3C0D38.l		; 0F 38 0D 3C
	rti		; 40

	rti		; 40

	ldy #$6820.w		; A0 20 68
	php		; 08
	stz $04.b,X		; 74 04
	lda $1F81.w,X		; BD 81 1F
	brk $17.b		; 00 17
	bpl  19.b		; 10 13
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$6040.w		; C0 40 60
	bra  48.b		; 80 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$0120.w		; E0 20 01
	and [$01.b],Y		; 37 01
	eor $000100.l		; 4F 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	ora ($02.b)		; 12 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	bcs -68.b		; B0 BC
	pha		; 48
	dec $E63C.w		; CE 3C E6
	bit $1660.w		; 2C 60 16
	bmi  10.b		; 30 0A
	clc		; 18
	tsb $1C.b		; 04 1C
	cpx #$4800.w		; E0 00 48
	php		; 08
	ldy $84.b,X		; B4 84
	phy		; 5A
	.db $42, $1E		; 42 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $0A.b		; 00 0A
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
	brk $00.b		; 00 00
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
	brk $21.b		; 00 21
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($FE.b,S),Y		; 33 FE
	ora $8F.b,S		; 03 8F
	asl $3F.b		; 06 3F
	brk $60.b		; 00 60
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	sty $84.b		; 84 84
	clc		; 18
	clc		; 18
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	ora ($24.b)		; 12 24
	bit $60.b		; 24 60
	adc ($40.b,X)		; 61 40
	eor ($80.b,X)		; 41 80
	.db $82, $80, $82		; 82 80 82
	tsb $04.b		; 04 04
	ora #$1209.w		; 09 09 12
	brk $24.b		; 00 24
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	rti		; 40

	brk $88.b		; 00 88
	brk $11.b		; 00 11
	brk $22.b		; 00 22
	brk $44.b		; 00 44
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	rti		; 40

	rti		; 40

	php		; 08
	php		; 08
	ora ($11.b),Y		; 11 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($0FFC.w,X)		; FC FC 0F
	ora $000000.l		; 0F 00 00 00
	brk $01.b		; 00 01
	adc ($00.b),Y		; 71 00
	asl $0700.w		; 0E 00 07
	brk $01.b		; 00 01
	jsr ($0F00.w,X)		; FC 00 0F
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$1818.w		; C0 18 18
	lsr $F546.w,X		; 5E 46 F5
	sbc ($1E.b),Y		; F1 1E
	asl $CF0D.w,X		; 1E 0D CF
	sbc ($FF.b,S),Y		; F3 FF
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	cpx #$387E.w		; E0 7E 38
	sbc $011F0E.l,X		; FF 0E 1F 01
	sta $080982.l		; 8F 82 09 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	ora $07.b,S		; 03 07
	brk $63.b		; 00 63
	ora ($1B.b,X)		; 01 1B
	ora $010C.w		; 0D 0C 01
	jmp ($0000.w)		; 6C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	bpl  16.b		; 10 10
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	rti		; 40

.ACCU 16
	rep #$2C		; C2 2C
	ror $50.b		; 66 50
	dec $68.b		; C6 68
	tsb $0C68.w		; 0C 68 0C
	bne  28.b		; D0 1C
	bcc  24.b		; 90 18
	ldy #$BC38.w		; A0 38 BC
	bra  24.b		; 80 18
	brk $3C.b		; 00 3C
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	cpx #$D000.w		; E0 00 D0
	bpl -64.b		; 10 C0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	ora $000000.l		; 0F 00 00 00
	sec		; 38
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0101FF.l,X		; FF FF 01 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sbc $000100.l,X		; FF 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cpx #$FE60.w		; E0 60 FE
	asl $0000.w		; 0E 00 00
	jsr $0620.w		; 20 20 06
	asl $00.b		; 06 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$E080.w		; A0 80 E0
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0300.w		; 0C 00 03
	brk $01.b		; 00 01
	brk $1C.b		; 00 1C
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	ora $1D.b		; 05 1D
	sta ($FD.b,X)		; 81 FD
	dec A		; 3A
	xce		; FB
	cop $33.b		; 02 33
	sty $F6.b,X		; 94 F6
	rti		; 40

	cpy $28.b		; C4 28
	cpx $111F.w		; EC 1F 11
	asl A		; 0A
	php		; 08
	asl $04.b		; 06 04
	mvp $1C,$40		; 44 40 1C
	bpl  40.b		; 10 28
	jsr $80B8.w		; 20 B8 80
	bvc  64.b		; 50 40
	tas		; 1B
	sec		; 38
	ora ($18.b,X)		; 01 18
	phd		; 0B
	tsa		; 3B
	ora ($33.b)		; 12 33
	clc		; 18
	adc $38.b,S		; 63 38
	.db $62, $00, $00		; 62 00 00
	brk $00.b		; 00 00
	and [$20.b]		; 27 20
	ora $101408.l		; 0F 08 14 10
	tsb $3E00.w		; 0C 00 3E
	jsl $00001C.l		; 22 1C 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bvs  64.b		; 70 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
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
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bcs -30.b		; B0 E2
	pea $7CE3.w		; F4 E3 7C
	sbc $60.b,X		; F5 60
	inx		; E8
	tay		; A8
	cpx $F6B0.w		; EC B0 F6
	jsr $00F2.w		; 20 F2 00
	bit #$40E0.w		; 89 E0 40
	ldy #$3500.w		; A0 00 35
	ora ($B0.b,X)		; 01 B0
	bcc 120.b		; 90 78
	bvc  52.b		; 50 34
	tsb $A2.b		; 04 A2
	.db $82, $01, $01		; 82 01 01
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	cop $1B.b		; 02 1B
	ora ($19.b,X)		; 01 19
	ora #$044D.w		; 09 4D 04
	bit $2E04.w		; 2C 04 2E
	jsr $023B.w		; 20 3B 02
	cop $02.b		; 02 02
	cop $11.b		; 02 11
	ora ($08.b),Y		; 11 08
	php		; 08
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	jsr $0620.w		; 20 20 06
	cop $1C.b		; 02 1C
	trb $34.b		; 14 34
	bit $1A.b		; 24 1A
	sta ($12.b)		; 92 12
	sta ($1D.b)		; 92 1D
	cmp $DF9B.w,X		; DD 9B DF
	sta [$FE.b],Y		; 97 FE
	eor [$76.b]		; 47 76
	trb $3C08.w		; 1C 08 3C
	clc		; 18
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $829F.w		; 0C 9F 82
	ora $485A04.l,X		; 1F 04 5A 48
	tax		; AA
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	ora ($70.b,S),Y		; 13 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	and $003120.l		; 2F 20 31 00
	jmp ($600C.w,X)		; 7C 0C 60
	ora $201810.l		; 0F 10 18 20
	bmi   0.b		; 30 00
	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	adc $007300.l,X		; 7F 00 73 00
	sei		; 78
	php		; 08
	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	rep #$C2		; C2 C2
	lda ($A1.b,X)		; A1 A1
	bcs -112.b		; B0 90
	bvc  84.b		; 50 54
	sei		; 78
	adc ($00.b)		; 72 00
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $C2.b		; 00 C2
	brk $E1.b		; 00 E1
	rti		; 40

	beq  96.b		; F0 60
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	jsr $2000.w		; 20 00 20
	jsr $1010.w		; 20 10 10
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $26.b		; 00 26
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	bra -128.b		; 80 80
	cpy #$20C0.w		; C0 C0 20
	jsr $2020.w		; 20 20 20
	bcc -112.b		; 90 90
	rti		; 40

	rti		; 40

	pla		; 68
	pla		; 68
	plp		; 28
	plp		; 28
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	rti		; 40

	jsr $B000.w		; 20 00 B0
	jsr $3070.w		; 20 70 30
	sei		; 78
	bpl  56.b		; 10 38
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1400.w		; 20 00 14
	brk $12.b		; 00 12
	brk $1A.b		; 00 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	clc		; 18
	txy		; 9B
	asl A		; 0A
	lda $5FE08A.l		; AF 8A E0 5F
	rti		; 40

	sbc $03F200.l,X		; FF 00 F2 03
	rts		; 60

	adc $02F800.l,X		; 7F 00 F8 02
	cop $91.b		; 02 91
	sta ($1F.b,X)		; 81 1F
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	ora ($98.b,X)		; 01 98
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
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
	brk $08.b		; 00 08
	tda		; 7B
	bmi 118.b		; 30 76
	pha		; 48
	jmp $1810.w		; 4C 10 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	rti		; 40

	rts		; 60

	brk $40.b		; 00 40
	asl $12.b,X		; 16 12
	jmp $3044.w		; 4C 44 30
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $AB.b		; 02 AB
	ora $ED.b,X		; 15 ED
	rol $7460.w,X		; 3E 60 74
	ora [$D0.b]		; 07 D0
	asl $7840.w,X		; 1E 40 78
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora $9A09.w,X		; 1D 09 9A
	dey		; 88
	cmp $02FA40.l,X		; DF 40 FA 02
	inx		; E8
	php		; 08
	ldy #$0020.w		; A0 20 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	bit $3F27.w		; 2C 27 3F
	bra -16.b		; 80 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$03.b],Y		; D7 03
	cmp [$10.b],Y		; D7 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($106E.w)		; 6C 6E 10
	ora $2A.b,X		; 15 2A
	rol A		; 2A
	adc $25.b		; 65 25
	adc ($21.b,X)		; 61 21
	adc $25EF25.l		; 6F 25 EF 25
	lda $FD6A25.l		; AF 25 6A FD
	bcc  -1.b		; 90 FF
	inx		; E8
	cmp $FBDEF5.l,X		; DF F5 DE FB
	dec $DAFF.w,X		; DE FF DA
	sbc $DAFFDA.l,X		; FF DA FF DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  92.b		; 80 5C
	and $74.b,S		; 23 74
	phd		; 0B
	ldy $5B.b		; A4 5B
	ldy $5B.b		; A4 5B
	ldy #$905F.w		; A0 5F 90
	adc $906F90.l		; 6F 90 6F 90
	adc $0B1C23.l		; 6F 23 1C 0B
	bit $5B.b,X		; 34 5B
	bit $5B.b		; 24 5B
	bit $5F.b		; 24 5F
	jsr $006F.w		; 20 6F 00
	adc $006F00.l		; 6F 00 6F 00
	ror $DDB6.w,X		; 7E B6 DD
	eor $9D.b		; 45 9D
	ora #$19FD.w		; 09 FD 19
	sbc $F915.w,X		; FD 15 F9
	and ($FA.b),Y		; 31 FA
	rol A		; 2A
	plx		; FA
	rol A		; 2A
	ldx $01.b,Y		; B6 01
	adc [$22.b]		; 67 22
	rtl		; 6B

	.db $62, $1B, $02		; 62 1B 02
	ora [$02.b],Y		; 17 02
	and [$06.b],Y		; 37 06
	and $052F05.l		; 2F 05 2F 05
	sbc $48B707.l,X		; FF 07 B7 48
	ror A		; 6A
	sta $94.b,X		; 95 94
	rtl		; 6B

	wai		; CB
	bit $3E.b,X		; 34 3E
	cmp $8A71.w		; CD 71 8A
	dec $69.b,X		; D6 69
	cop $07.b		; 02 07
	pha		; 48
	bmi -123.b		; 30 85
	ply		; 7A
	rol A		; 2A
	cmp ($34.b),Y		; D1 34
	cmp $C1.b		; C5 C1
	brk $8E.b		; 00 8E
	brk $6C.b		; 00 6C
	lsr A		; 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$4000.w		; C0 00 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bpl  56.b		; 10 38
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	tsb $0C1C.w		; 0C 1C 0C
	asl $7810.w		; 0E 10 78
	bpl 124.b		; 10 7C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	clc		; 18
	rol $3E08.w,X		; 3E 08 3E
	tsb $0C3E.w		; 0C 3E 0C
	ora $0E0E0E.l,X		; 1F 0E 0E 0E
	asl $1F1F.w		; 0E 1F 1F
	and $3F21.w		; 2D 21 3F
	and $3F212D.l,X		; 3F 2D 21 3F
	ora $0C192C.l,X		; 1F 2C 19 0C
	ora $1F1F06.l,X		; 1F 06 1F 1F
	brk $3F.b		; 00 3F
	asl $003F.w,X		; 1E 3F 00
	and $001F1E.l,X		; 3F 1E 1F 00
	asl $00.b		; 06 00
	bit $11.b		; 24 11
	mvp $46,$31		; 44 31 46
	and ($4C.b,S),Y		; 33 4C
	and ($58.b,S),Y		; 33 58
	and ($89.b,S),Y		; 33 89
	.db $62, $8C, $66		; 62 8C 66
	sta ($40.b,X)		; 81 40
	asl $2E00.w		; 0E 00 2E
	brk $2C.b		; 00 2C
	brk $1E.b		; 00 1E
	ora ($0C.b)		; 12 0C
	brk $5C.b		; 00 5C
	brk $59.b		; 00 59
	ora ($41.b,X)		; 01 41
	and $163104.l,X		; 3F 04 31 16
	and ($1C.b,S),Y		; 33 1C
	and ($18.b,S),Y		; 33 18
	and ($0C.b)		; 32 0C
	rol $08.b		; 26 08
	rol $10.b		; 26 10
	bit $10.b		; 24 10
	bit $1E.b		; 24 1E
	bpl  12.b		; 10 0C
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	jmp ($6C20.w)		; 6C 20 6C
	jsr $1068.w		; 20 68 10
	cli		; 58
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	bcc -40.b		; 90 D8
	bne -40.b		; D0 D8
	bmi  32.b		; 30 20
	clc		; 18
	php		; 08
	bpl   0.b		; 10 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$D000.w		; E0 00 D0
	cli		; 58
	bcs  56.b		; B0 38
	sed		; F8
	sec		; 38
	jmp.w [$3C1C]		; DC 1C 3C
	bit $26.b		; 24 26
	jsl $001E1E.l		; 22 1E 1E 00
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	rti		; 40

	plp		; 28
	brk $3C.b		; 00 3C
	jsr $183C.w		; 20 3C 18
	rol $1E1C.w,X		; 3E 1C 1E
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	adc ($3C.b,X)		; 61 3C
	adc ($1C.b,X)		; 61 1C
	eor ($1A.b,X)		; 41 1A
	eor $38.b,S		; 43 38
	cmp $7C.b,S		; C3 7C
	dec $30.b		; C6 30
	stx $08.b		; 86 08
	sty $001E.w		; 8C 1E 00
	ora $003E01.l,X		; 1F 01 3E 00
	bit $7E00.w,X		; 3C 00 7E
	.db $42, $38		; 42 38
	brk $7C.b		; 00 7C
	tsb $70.b		; 04 70
	brk $22.b		; 00 22
	sbc $20.b,S		; E3 20
	sbc $00.b,S		; E3 00
	.db $42, $00		; 42 00
	.db $42, $04		; 42 04
	lsr $04.b		; 46 04
	lsr $00.b		; 46 00
	lsr $08.b		; 46 08
	jmp $001C.w		; 4C 1C 00
	asl $3C02.w,X		; 1E 02 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $30.b		; 04 30
	brk $05.b		; 00 05
	cop $06.b		; 02 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
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
	brk $8C.b		; 00 8C
	rts		; 60

	ldx $BE60.w		; AE 60 BE
	rts		; 60

	asl $1F40.w,X		; 1E 40 1F
	eor ($3F.b,X)		; 41 3F
	eor ($3C.b,X)		; 41 3C
	cmp ($3C.b,X)		; C1 3C
	cmp ($3F.b,X)		; C1 3F
	jsr $001F.w		; 20 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	rol $3E00.w,X		; 3E 00 3E
	brk $7F.b		; 00 7F
	eor ($7E.b,X)		; 41 7E
	rti		; 40

	cmp $44DF45.l,X		; DF 45 DF 44
	cmp $445744.l,X		; DF 44 57 44
	tyx		; BB
	dey		; 88
	tyx		; BB
	dey		; 88
	lda $7FF00E.l,X		; BF 0E F0 7F
	sbc $BAFEBA.l,X		; FF BA FE BA
	inc $FEBA.w,X		; FE BA FE
	tsx		; BA
	inc $FE76.w,X		; FE 76 FE
	ror $7E.b,X		; 76 7E
	bvs 126.b		; 70 7E
	asl $4060.w		; 0E 60 40
	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	cpx #$C0C0.w		; E0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	adc [$D9.b]		; 67 D9
	rol $59.b		; 26 59
	rol $59.b		; 26 59
	rol $59.b		; 26 59
	rol $2D.b		; 26 2D
	cop $2D.b		; 02 2D
	cop $0D.b		; 02 0D
	cop $67.b		; 02 67
	brk $26.b		; 00 26
	brk $26.b		; 00 26
	brk $26.b		; 00 26
	brk $26.b		; 00 26
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $F2.b		; 00 F2
	ora ($F5.b)		; 12 F5
	trb $E5.b		; 14 E5
	brk $D5.b		; 00 D5
	jsr $30C9.w		; 20 C9 30
	cmp $DF3C.w,X		; DD 3C DF
	and $1F6283.l,X		; 3F 83 62 1F
	ora $0B1F.w		; 0D 1F 0B
	tas		; 1B
	tas		; 1B
	phd		; 0B
	phd		; 0B
	ora [$17.b],Y		; 17 17
	ora $000303.l		; 0F 03 03 00
	bit $F420.w,X		; 3C 20 F4
	ora $6E.b,S		; 03 6E
	and ($70.b,S),Y		; 33 70
	asl $70.b		; 06 70
	stx $EE20.w		; 8E 20 EE
	cmp ($7F.b,X)		; C1 7F
	sbc ($38.b),Y		; F1 38
	cmp [$08.b]		; C7 08
	lsr $DC10.w		; 4E 10 DC
	jsr $04FD.w		; 20 FD 04
	sbc $DD8C.w,X		; FD 8C DD
	cpy $3030.w		; CC 30 30
	stx $86.b		; 86 86
	bit $34.b,X		; 34 34
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $9AFF.w		; 8C FF 9A
	xce		; FB
	.db $82, $E3, $22		; 82 E3 22
	sbc $20.b,S		; E3 20
	sbc $00.b,S		; E3 00
	rep #$40		; C2 40
	rep #$44		; C2 44
	dec $52.b		; C6 52
	eor ($24.b)		; 52 24
	jsr $203C.w		; 20 3C 20
	stz $5E80.w		; 9C 80 5E
	.db $42, $7C		; 42 7C
	rti		; 40

	bit $3800.w,X		; 3C 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $0E02.w		; 0C 02 0E
	php		; 08
	asl $2E3A.w		; 0E 3A 2E
	bit $1C3C.w		; 2C 3C 1C
	trb $0C08.w		; 1C 08 0C
	brk $1C.b		; 00 1C
	php		; 08
	asl $1F02.w,X		; 1E 02 1F
	brk $7F.b		; 00 7F
	jsl $7F207F.l		; 22 7F 20 7F
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	bvc  80.b		; 50 50
	sei		; 78
	cli		; 58
	bvc 112.b		; 50 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $D8.b		; 00 D8
	brk $FC.b		; 00 FC
	clc		; 18
	jsr ($F850.w,X)		; FC 50 F8
	bvs  -8.b		; 70 F8
	jsr $00F8.w		; 20 F8 00
	sei		; 78
	brk $78.b		; 00 78
	trb $0B.b		; 14 0B
	trb $0B.b		; 14 0B
	bit $2C13.w		; 2C 13 2C
	ora ($5D.b,S),Y		; 13 5D
	jsl $5D225D.l		; 22 5D 22 5D
	jsl $0B47B8.l		; 22 B8 47 0B
	tsb $0B.b		; 04 0B
	tsb $13.b		; 04 13
	tsb $0C13.w		; 0C 13 0C
	jsl $1C221C.l		; 22 1C 22 1C
	jsl $38471C.l		; 22 1C 47 38
	eor $80419E.l		; 4F 9E 41 80
	adc $8F.b,S		; 63 8F
	sbc $07.b,S		; E3 07
	ora [$03.b]		; 07 03
	ora ($13.b),Y		; 11 13
	inx		; E8
	stz $E3.b		; 64 E3
	ora $80.b,S		; 03 80
	rol $3F80.w,X		; 3E 80 3F
	sta ($1F.b,X)		; 81 1F
	ora ($1F.b,X)		; 01 1F
	sbc ($FF.b),Y		; F1 FF
	beq -17.b		; F0 EF
	rts		; 60

	ora $FD1F00.l,X		; 1F 00 1F FD
	asl A		; 0A
	tda		; 7B
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	jsr ($383C.w,X)		; FC 3C 38
	brk $7E.b		; 00 7E
	sec		; 38
	inc $FEF8.w,X		; FE F8 FE
	sed		; F8
	inc $FEF8.w,X		; FE F8 FE
	sed		; F8
	inc $FE78.w,X		; FE 78 FE
	bmi  -2.b		; 30 FE
	php		; 08
	clc		; 18
	trb $0808.w		; 1C 08 08
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0E0C.w		; 0C 0C 0E
	tsb $0E0C.w		; 0C 0C 0E
	asl $000E.w		; 0E 0E 00
	bit $3E08.w,X		; 3C 08 3E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	tsb $0C1E.w		; 0C 1E 0C
	ora $041F0C.l,X		; 1F 0C 1F 04
	ora $020D05.l,X		; 1F 05 0D 02
	clc		; 18
	ora $311439.l		; 0F 39 14 31
	asl $0863.w		; 0E 63 08
	adc $3C.b,S		; 63 3C
	ror $38.b		; 66 38
	inc $02.b		; E6 02
	brk $0F.b		; 00 0F
	php		; 08
	asl $10.b,X		; 16 10
	ora $203C01.l		; 0F 01 3C 20
	rol $1822.w,X		; 3E 22 18
	brk $5C.b		; 00 5C
	mvp $E7,$81		; 44 81 E7
	ora $C7.b,S		; 03 C7
	cop $8E.b		; 02 8E
	tsb $9C.b		; 04 9C
	brk $18.b		; 00 18
	ora #$0919.w		; 09 19 09
	and $3100.w,Y		; 39 00 31
	.db $42, $42		; 42 42
	bra -128.b		; 80 80
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora $000608.l		; 0F 08 06 00
	asl $10.b,X		; 16 10
	ora $600011.l,X		; 1F 11 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $08.b		; 06 08
	tsb $08.b		; 04 08
	ora $10.b		; 05 10
	tsb $0E10.w		; 0C 10 0E
	plp		; 28
	asl $28.b,X		; 16 28
	asl $59.b,X		; 16 59
	rol $06.b		; 26 06
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora $0E.b,S		; 03 0E
	ora ($16.b,X)		; 01 16
	ora #$0916.w		; 09 16 09
	rol $18.b		; 26 18
	ror $0FE0.w		; 6E E0 0F
	brk $C9.b		; 00 C9
	inc $1A.b		; E6 1A
	ora $FE.b,X		; 15 FE
	adc $F87F.w,Y		; 79 7F F8
	sei		; 78
	sbc [$7F.b],Y		; F7 7F
	bvs  33.b		; 70 21
	sbc ($00.b),Y		; F1 00
	inc $00.b,X		; F6 00
	sbc [$11.b],Y		; F7 11
	inc $31.b,X		; F6 31
	plx		; FA
	sec		; 38
	sed		; F8
	and [$F0.b],Y		; 37 F0
	bmi -10.b		; 30 F6
	inc $FA40.w,X		; FE 40 FA
	tsb $FA.b		; 04 FA
	tsb $56.b		; 04 56
	dey		; 88
	inc $5100.w,X		; FE 00 51
	ldx $50EF.w		; AE EF 50
	sbc [$28.b],Y		; F7 28
	brk $0C.b		; 00 0C
	jsr $24AC.w		; 20 AC 24
	jsr $24A8.w		; 20 A8 24
	brk $00.b		; 00 00
	stx $0020.w		; 8E 20 00
	adc ($00.b)		; 72 00
	sed		; F8
	rti		; 40

	dec $40.b		; C6 40
	cpy $40.b		; C4 40
	cpy $40.b		; C4 40
	cpy $08.b		; C4 08
	cpy $CC08.w		; CC 08 CC
	brk $4C.b		; 00 4C
	brk $4C.b		; 00 4C
	bit $3804.w,X		; 3C 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	rti		; 40

	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	brk $48.b		; 00 48
	jsr $2068.w		; 20 68 20
	pla		; 68
	jsr $2068.w		; 20 68 20
	pla		; 68
	cpy #$A0E8.w		; C0 E8 A0
	tay		; A8
	clv		; B8
	ldy $0030.w,X		; BC 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	beq  32.b		; F0 20
	beq  64.b		; F0 40
	cpx #$E840.w		; E0 40 E8
	jsr ($5E7C.w,X)		; FC 7C 5E
	ror $6F4F.w,X		; 7E 4F 6F
	eor [$09.b]		; 47 09
	brk $07.b		; 00 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bpl  80.b		; 10 50
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $07.b		; 00 07
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $55.b		; 00 55
	rol A		; 2A
	lda $4A.b,X		; B5 4A
	lda $4A.b,X		; B5 4A
	lda $5C.b,S		; A3 5C
	plb		; AB
	mvn $54,$AB		; 54 AB 54
	plb		; AB
	mvn $6D,$93		; 54 93 6D
	rol A		; 2A
	trb $4A.b		; 14 4A
	bit $4A.b,X		; 34 4A
	bit $5C.b,X		; 34 5C
	jsr $2054.w		; 20 54 20
	mvn $54,$20		; 54 20 54
	jsr $006D.w		; 20 6D 00
	cld		; D8
	cmp #$0434.w		; C9 34 04
	adc $25.b,X		; 75 25
	sbc [$45.b]		; E7 45
	xba		; EB
	eor #$C9EB.w		; 49 EB C9
	cmp $D589.w		; CD 89 D5
	sta ($E8.b),Y		; 91 E8
	and [$CE.b]		; 27 CE
	wai		; CB
	lda $1A5F8A.l		; AF 8A 5F 1A
	eor $16DF16.l,X		; 5F 16 DF 16
	lda $2EBF36.l,X		; BF 36 BF 2E
	tax		; AA
	tay		; A8
	lsr $54.b,X		; 56 54
	and $0A2C.w		; 2D 2C 0A
	asl A		; 0A
	adc $6D25.w		; 6D 25 6D
	bit $EC.b		; 24 EC
	bit $AC.b		; 24 AC
	bit $80.b		; 24 80
	jsr ($F854.w,X)		; FC 54 F8
	ldx $DFF2.w		; AE F2 DF
	sbc $FF.b,X		; F5 FF
	phx		; DA
	inc $FFDA.w,X		; FE DA FF
	stp		; DB
	sbc $0000DB.l,X		; FF DB 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $E0.b		; 00 E0
	cpy #$60F0.w		; C0 F0 60
	beq  96.b		; F0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$6000.w		; C0 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	trb $1E0C.w		; 1C 0C 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bpl  -8.b		; 10 F8
	cmp $5C5C.w		; CD 5C 5C
	stz $5C98.w		; 9C 98 5C
	stz $B8B8.w		; 9C B8 B8
	sec		; 38
	clv		; B8
	sec		; 38
	sed		; F8
	sed		; F8
	ldy #$08BB.w		; A0 BB 08
	rol $7E88.w,X		; 3E 88 7E
	cli		; 58
	rol $FE18.w,X		; 3E 18 FE
	tya		; 98
	jmp ($7C90.w,X)		; 7C 90 7C
	bvc  60.b		; 50 3C
	cpx #$385C.w		; E0 5C 38
	bmi  16.b		; 30 10
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1818.w		; 1C 18 18
	trb $3C3C.w		; 1C 3C 3C
	rol $10EE.w,X		; 3E EE 10
	jmp ($7C10.w,X)		; 7C 10 7C
	bpl 124.b		; 10 7C
	clc		; 18
	bit $3E18.w,X		; 3C 18 3E
	php		; 08
	rol $0E30.w,X		; 3E 30 0E
	rol $0010.w,X		; 3E 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $87.b,S		; 03 87
	sei		; 78
	bit #$9577.w		; 89 77 95
	pla		; 68
	ora [$E8.b],Y		; 17 E8
	and $38C4.w,Y		; 39 C4 38
	dec $1A.b		; C6 1A
	ora [$60.b]		; 07 60
	sta $710078.l,X		; 9F 78 00 71
	ora ($67.b,X)		; 01 67
	brk $E7.b		; 00 E7
	brk $C3.b		; 00 C3
	brk $C7.b		; 00 C7
	asl $04.b		; 06 04
	cpx $00.b		; E4 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	sec		; 38
	sty $CC78.w		; 8C 78 CC
	sei		; 78
	cpy $CC78.w		; CC 78 CC
	bra -116.b		; 80 8C
	brk $08.b		; 00 08
	bne  24.b		; D0 18
	cpx #$7030.w		; E0 30 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $B0.b		; 00 B0
	bra 120.b		; 80 78
	php		; 08
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $10.b		; 00 10
	clc		; 18
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0E08.w		; 0C 08 0E
	sty $86.b		; 84 86
	rti		; 40

	cmp $22.b,S		; C3 22
	sbc $10.b,S		; E3 10
	adc ($E0.b),Y		; 71 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	pea $7804.w		; F4 04 78
	brk $BE.b		; 00 BE
	.db $82, $5C, $40		; 82 5C 40
	and $031C21.l		; 2F 21 1C 03
	plp		; 28
	ora [$58.b],Y		; 17 58
	and [$51.b]		; 27 51
	rol $4EB1.w		; 2E B1 4E
	lda ($4C.b)		; B2 4C
	tyx		; BB
	eor $BB.b		; 45 BB
	mvp $0C,$03		; 44 03 0C
	ora [$08.b],Y		; 17 08
	and [$18.b]		; 27 18
	rol $4E10.w		; 2E 10 4E
	bmi  77.b		; 30 4D
	and ($45.b),Y		; 31 45
	sec		; 38
	mvp $9F,$38		; 44 38 9F
	trb $9B4C.w		; 1C 4C 9B
	eor [$80.b]		; 47 80
	cmp $DFCF1C.l		; CF 1C CF DF
	eor [$47.b]		; 47 47
	ora $C609.w,Y		; 19 09 C6
	asl $7C0C.w,X		; 1E 0C 7C
	sta $38.b,S		; 83 38
	bra  59.b		; 80 3B
	brk $3C.b		; 00 3C
	cmp [$3F.b]		; C7 3F
	cmp $BF.b,S		; C3 BF
	cpy #$02FF.w		; C0 FF 02
	and $7F24DB.l,X		; 3F DB 24 7F
	bra  -1.b		; 80 FF
	bpl -13.b		; 10 F3
	bvs -16.b		; 70 F0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -64.b		; F0 C0
	cpx #$0024.w		; E0 24 00
	bra 106.b		; 80 6A
	brk $9A.b		; 00 9A
	rts		; 60

	sei		; 78
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	cpx #$40F8.w		; E0 F8 40
	sed		; F8
	sta ($6D.b,S),Y		; 93 6D
	sta ($6E.b),Y		; 91 6E
	cmp $5826.w,Y		; D9 26 58
	and [$58.b]		; 27 58
	and [$5C.b]		; 27 5C
	and $54.b,S		; 23 54
	and $32.b,S		; 23 32
	ora ($6D.b,X)		; 01 6D
	brk $6E.b		; 00 6E
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $27.b		; 00 27
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	brk $01.b		; 00 01
	brk $96.b		; 00 96
	ora ($9E.b)		; 12 9E
	cop $FF.b		; 02 FF
	cop $DF.b		; 02 DF
	bit $3CCF.w		; 2C CF 3C
	cmp $B9493F.l		; CF 3F 49 B9
	ror $7F98.w		; 6E 98 7F
	adc $6D6F.w		; 6D 6F 6D
	ora $030F0D.l		; 0F 0D 0F 03
	ora [$13.b],Y		; 17 13
	ora ($10.b,S),Y		; 13 10
	stx $10.b,Y		; 96 10
	sta [$00.b]		; 87 00
	tax		; AA
	jsl $AE22AA.l		; 22 AA 22 AE
	jsl $DF42DE.l		; 22 DE 42 DF
	eor $FE.b,S		; 43 FE
	inc $FCC4.w,X		; FE C4 FC
	mvp $FF,$7C		; 44 7C FF
	cmp $DDFF.w,X		; DD FF DD
	sbc $BDFFDD.l,X		; FF DD FF BD
	sbc $00FDBC.l,X		; FF BC FD 00
	phd		; 0B
	php		; 08
	phb		; 8B
	php		; 08
	cpx #$4040.w		; E0 40 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	rts		; 60

	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	clc		; 18
	rti		; 40

	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $F0.b		; 00 F0
	bpl  14.b		; 10 0E
	asl $0EE6.w		; 0E E6 0E
	inc $06.b,X		; F6 06
	dec $36.b		; C6 36
	mvp $6C,$AE		; 44 AE 6C
	sty $0CED.w		; 8C ED 0C
	cmp $060C.w,X		; DD 0C 06
	ora $021F06.l,X		; 1F 06 1F 02
	sbc $A0FF00.l,X		; FF 00 FF A0
	eor $085E80.l,X		; 5F 80 5E 08
	lsr $3E08.w,X		; 5E 08 3E
	beq -80.b		; F0 B0
	bcs -16.b		; B0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$6060.w		; E0 60 60
	rts		; 60

	bvs  48.b		; 70 30
	bvs  48.b		; 70 30
	bmi -112.b		; 30 90
	sed		; F8
	bcc  -8.b		; 90 F8
	ldy #$60F0.w		; A0 F0 60
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	sed		; F8
	bpl  -8.b		; 10 F8
	bmi 120.b		; 30 78
	lda $BA9B.w,Y		; B9 9B BA
	ldx $D8DF.w		; AE DF D8
	ply		; 7A
	sbc ($F4.b,S),Y		; F3 F4
	phd		; 0B
	pea $AC08.w		; F4 08 AC
	bpl  -4.b		; 10 FC
	brk $FA.b		; 00 FA
	ror $FD.b		; 66 FD
	mvn $20,$7F		; 54 7F 20
	adc $01.b,X		; 75 01
	rti		; 40

	cli		; 58
	pha		; 48
	rti		; 40

	bvc  72.b		; 50 48
	brk $08.b		; 00 08
	ldx $D2A2.w		; AE A2 D2
	ora ($4E.b)		; 12 4E
	ror $E000.w,X		; 7E 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $FE1C.w,X		; 7E 1C FE
	tsb $20AE.w		; 0C AE 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b		; 05 01
	asl A		; 0A
	cop $08.b		; 02 08
	cop $18.b		; 02 18
	brk $28.b		; 00 28
	bpl  40.b		; 10 28
	ora ($48.b),Y		; 11 48
	and ($AD.b),Y		; 31 AD
	mvn $03,$01		; 54 01 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	trb $07.b		; 14 07
	trb $07.b		; 14 07
	bit $07.b,X		; 34 07
	mvn $46,$23		; 54 23 46
	lsr $C0DF.w,X		; 5E DF C0
	ldy #$18A0.w		; A0 A0 18
	lda $F53C03.l,X		; BF 03 3C F5
	nop		; EA
	jsr ($F9E3.w,X)		; FC E3 F9
	inc $19.b		; E6 19
	sed		; F8
	sta $C01FE0.l,X		; 9F E0 1F C0
	bit $E4.b		; 24 E4
	brk $C3.b		; 00 C3
	jsl $EC63EC.l		; 22 EC 63 EC
	ror $E8.b		; 66 E8
	ora ($0C.b,X)		; 01 0C
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	ora $180E18.l		; 0F 18 0E 18
	ora $11.b		; 05 11
	asl $0813.w		; 0E 13 08
	and ($07.b,S),Y		; 33 07
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0C00.w		; 0E 00 0C
	brk $1E.b		; 00 1E
	ora ($80.b)		; 12 80
	bmi   0.b		; 30 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $04E3.w		; 20 E3 04
	dec $40.b		; C6 40
	dec $48.b		; C6 48
	cpy $8C00.w		; CC 00 8C
	bpl -104.b		; 10 98
	brk $98.b		; 00 98
	brk $90.b		; 00 90
	lsr $7842.w,X		; 5E 42 78
	rti		; 40

	bit $3004.w,X		; 3C 04 30
	brk $78.b		; 00 78
	php		; 08
	rts		; 60

	brk $70.b		; 00 70
	bpl  96.b		; 10 60
	brk $64.b		; 00 64
	inc $00.b		; E6 00
	.db $62, $10, $73		; 62 10 73
	asl A		; 0A
	tsa		; 3B
	clc		; 18
	and $6302.w,Y		; 39 02 63
	jsr $04E3.w		; 20 E3 04
	dec $18.b		; C6 18
	brk $3C.b		; 00 3C
	jsr $222E.w		; 20 2E 22
	trb $10.b		; 14 10
	asl $00.b		; 06 00
	bit $5E20.w,X		; 3C 20 5E
	.db $42, $78		; 42 78
	rti		; 40

	asl $041B.w		; 0E 1B 04
	ora ($00.b,S),Y		; 13 00
	ora ($04.b)		; 12 04
	asl $10.b,X		; 16 10
	bit $08.b,X		; 34 08
	bit $2C00.w		; 2C 00 2C
	jsr $0468.w		; 20 68 04
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bpl   0.b		; 10 00
	brk $58.b		; 00 58
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
	and ($01.b)		; 32 01
	and $00.b,S		; 23 00
	and ($00.b,X)		; 21 00
	eor ($00.b,X)		; 41 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
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
	adc $984B98.l		; 6F 98 4B 98
	eor $98.b,S		; 43 98
	cmp $18.b,S		; C3 18
	sta [$0C.b]		; 87 0C
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	sta [$00.b]		; 87 00
	sta [$00.b]		; 87 00
	sta $080F08.l		; 8F 08 0F 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	clc		; 18
	ora [$23.b]		; 07 23
	trb $122D.w		; 1C 2D 12
	eor $2D5230.l		; 4F 30 52 2D
	adc $1A.b		; 65 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	trb $1003.w		; 1C 03 10
	ora $2D0F30.l		; 0F 30 0F 2D
	ora ($1A.b)		; 12 1A
	jsr $2E82.w		; 20 82 2E
	.db $82, $2E, $80		; 82 2E 80
	rol $81.b		; 26 81
	and $80.b,S		; 23 80
	and $80.b,S		; 23 80
	and ($80.b,X)		; 21 80
	jsr $2080.w		; 20 80 20
	cmp $04.b		; C5 04
	cmp $04.b		; C5 04
	cmp $02.b,S		; C3 02
	cpy #$C100.w		; C0 00 C1
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
	rol $10.b,X		; 36 10
	rol $10.b,X		; 36 10
	bit $08.b,X		; 34 08
	bit $2C00.w		; 2C 00 2C
	brk $28.b		; 00 28
	brk $68.b		; 00 68
	jsr $1868.w		; 20 68 18
	bpl  12.b		; 10 0C
	tsb $08.b		; 04 08
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bpl   0.b		; 10 00
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	cpy #$B8EC.w		; C0 EC B8
	ldy $BEAC.w,X		; BC AC BE
	dec $7FDF.w,X		; DE DF 7F
	eor $674069.l		; 4F 69 40 67
	eor $00.b,S		; 43 00
	brk $F8.b		; 00 F8
	plp		; 28
	cpx #$F040.w		; E0 40 F0
	bvc  -8.b		; 50 F8
	jsr $004F.w		; 20 4F 00
	eor [$07.b]		; 47 07
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

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
	brk $08.b		; 00 08
	ora [$11.b]		; 07 11
	asl $0D13.w		; 0E 13 0D
	jsl $23421D.l		; 22 1D 42 23
	eor $9D1D.w		; 4D 1D 9D
	bvc  12.b		; 50 0C
	dec $0007.w		; CE 07 00
	asl $0C00.w		; 0E 00 0C
	ora ($1C.b,X)		; 01 1C
	ora ($22.b,X)		; 01 22
	ora $403F09.l,X		; 1F 09 3F 40
	rol $3FCC.w,X		; 3E CC 3F
	ora $FA.b,X		; 15 FA
	sta $DB00.w,X		; 9D 00 DB
	cpy $E1AE.w		; CC AE E1
	dec $F3.b,X		; D6 F3
	beq -37.b		; F0 DB
	sed		; F8
	cmp [$F7.b]		; C7 F7
	cpx #$32BB.w		; E0 BB 32
	adc ($04.b,S),Y		; 73 04
	lda [$88.b],Y		; B7 88
	sta $C18D81.l,X		; 9F 81 8D C1
	dec $80CA.w		; CE CA 80
	cpy #$E008.w		; C0 08 E0
	ldy #$A240.w		; A0 40 A2
	.db $42, $06		; 42 06
	dec $8C.b		; C6 8C
	cpy $8C0C.w		; CC 0C 8C
	tsb $188C.w		; 0C 8C 18
	clc		; 18
	bpl  48.b		; 10 30
	brk $02.b		; 00 02
	cop $87.b		; 02 87
	sty $0F.b		; 84 0F
	tsb $1E.b		; 04 1E
	tsb $081E.w		; 0C 1E 08
	asl $3C00.w,X		; 1E 00 3C
	brk $78.b		; 00 78
	adc $8EF918.l,X		; 7F 18 F9 8E
	ldy $F09F.w,X		; BC 9F F0
	adc ($A2.b,S),Y		; 73 A2
	adc $21.b,S		; 63 21
	sbc ($00.b,X)		; E1 00
	cpx #$7010.w		; E0 10 70
	sed		; F8
	cpx #$74FC.w		; E0 FC 74
	sbc ($62.b)		; F2 62
	ror $5D02.w		; 6E 02 5D
	eor ($5E.b,X)		; 41 5E
	rti		; 40

	adc $202F60.l,X		; 7F 60 2F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$7C40.w		; C0 40 7C
	dey		; 88
	jmp ($7F80.w,X)		; 7C 80 7F
	sta $7E.b,S		; 83 7E
	sta ($7E.b,X)		; 81 7E
	sta ($3E.b,X)		; 81 3E
	cmp ($3E.b,X)		; C1 3E
	cmp ($3E.b,X)		; C1 3E
	cpy #$038B.w		; C0 8B 03
	sta $03.b,S		; 83 03
	sta $00.b,S		; 83 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $BB.b		; 00 BB
	bit #$88BA.w		; 89 BA 88
	tyx		; BB
	bra  -3.b		; 80 FD
	beq 127.b		; F0 7F
	sbc $3A8734.l,X		; FF 34 87 3A
	sta $5E.b,S		; 83 5E
	cmp $FF.b,S		; C3 FF
	ror $FF.b,X		; 76 FF
	adc [$F7.b],Y		; 77 F7
	adc [$F3.b],Y		; 77 F3
	ora $87.b,S		; 03 87
	bra  -6.b		; 80 FA
	.db $82, $FC, $80		; 82 FC 80
	bit $7E00.w,X		; 3C 00 7E
	sta $F110FB.l,X		; 9F FB 10 F1
	sei		; 78
	cpx #$F0F0.w		; E0 F0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpy #$E0E0.w		; C0 E0 E0
	cpy #$409F.w		; C0 9F 40
	brk $9D.b		; 00 9D
	jsr $E07C.w		; 20 7C E0
	sed		; F8
	cpy #$C0F8.w		; C0 F8 C0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	sed		; F8
	iny		; C8
	pha		; 48
	bvs -80.b		; 70 B0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bmi -80.b		; 30 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bit $6C48.w		; 2C 48 6C
	pla		; 68
	jmp ($3474.w)		; 6C 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $700010.l,X		; 1F 10 00 70
	jsr $0070.w		; 20 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $08.b,S		; 03 08
	brk $08.b		; 00 08
	php		; 08
	sec		; 38
	ora $5A71.w,X		; 1D 71 5A
	cmp $B4.b,S		; C3 B4
	stx $E8.b		; 86 E8
	tsb $18D0.w		; 0C D0 18
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	rol $3C20.w		; 2E 20 3C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $63.b		; 02 63
	jsr $44E3.w		; 20 E3 44
	dec $40.b		; C6 40
	cpy $80.b		; C4 80
	sty $1800.w		; 8C 00 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	bit $5E20.w,X		; 3C 20 5E
	.db $42, $38		; 42 38
	brk $B8.b		; 00 B8
	bra 120.b		; 80 78
	php		; 08
	beq  16.b		; F0 10
	cpy #$8000.w		; C0 00 80
	brk $07.b		; 00 07
	tsb $180A.w		; 0C 0A 18
	ora $11.b		; 05 11
	inc A		; 1A
	and ($04.b,S),Y		; 33 04
	rol $28.b		; 26 28
	jmp ($5810.w)		; 6C 10 58
	rti		; 40

	cld		; D8
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0C00.w		; 0E 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	bpl   2.b		; 10 02
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	ora [$0A.b]		; 07 0A
	ora $17.b		; 05 17
	php		; 08
	and $2912.w		; 2D 12 29
	asl $58.b,X		; 16 58
	and [$01.b]		; 27 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	cop $08.b		; 02 08
	asl $12.b		; 06 12
	tsb $0816.w		; 0C 16 08
	and [$18.b]		; 27 18
	rti		; 40

	tya		; 98
	ldx #$AB00.w		; A2 00 AB
	clc		; 18
	lda $0C.b,X		; B5 0C
	ror A		; 6A
	lsr $5F6D.w,X		; 5E 6D 5F
	inc $C70F.w,X		; FE 0F C7
	asl $3F80.w		; 0E 80 3F
	eor [$58.b]		; 47 58
	eor [$40.b]		; 47 40
	eor $50.b,S		; 43 50
	cmp ($98.b,X)		; C1 98
	cpy $9C.b		; C4 9C
	asl $1E.b		; 06 1E
	brk $3E.b		; 00 3E
	adc $F83FF0.l,X		; 7F F0 3F F8
	asl $8D7C.w,X		; 1E 7C 8D
	and $1BDB.w,X		; 3D DB 1B
	and $E76E37.l,X		; 3F 37 6E E7
	jsl $F222E2.l		; 22 E2 22 F2
	bpl 120.b		; 10 78
	dey		; 88
	and $1FC4.w,X		; 3D C4 1F
	sbc $DF07.w,Y		; F9 07 DF
	phd		; 0B
	bit $BE1B.w,X		; 3C 1B BE
	ora $7020.w,X		; 1D 20 70
	rts		; 60

	rts		; 60

	cpy #$C0E0.w		; C0 E0 C0
	iny		; C8
	bcc -40.b		; 90 D8
	bpl -72.b		; 10 B8
	sei		; 78
	pla		; 68
	pla		; 68
	iny		; C8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	rti		; 40

	beq -112.b		; F0 90
	cpx #$E080.w		; E0 80 E0
	bmi -32.b		; 30 E0
	sec		; 38
	bne 120.b		; D0 78
	bcs   8.b		; B0 08
	sec		; 38
	tsb $1C.b		; 04 1C
	cop $8E.b		; 02 8E
	brk $87.b		; 00 87
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bvs  32.b		; 70 20
	bmi  16.b		; 30 10
	clc		; 18
	dey		; 88
	sty $C440.w		; 8C 40 C4
	jsr $14E6.w		; 20 E6 14
	ror $30.b,X		; 76 30
	adc ($A0.b)		; 72 A0
	jsr $00C0.w		; 20 C0 00
	cpx #$7000.w		; E0 00 70
	brk $B8.b		; 00 B8
	bra  92.b		; 80 5C
	mvp $20,$28		; 44 28 20
	tsb $9E00.w		; 0C 00 9E
	rts		; 60

	stz $4C60.w		; 9C 60 4C
	bmi  44.b		; 30 2C
	bpl  20.b		; 10 14
	php		; 08
	tsb $0600.w		; 0C 00 06
	brk $03.b		; 00 03
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	cmp ($1E.b,X)		; C1 1E
	cmp ($3E.b,X)		; C1 3E
	adc ($2E.b,X)		; 61 2E
	adc ($0F.b,X)		; 61 0F
	adc ($1F.b,X)		; 61 1F
	and ($16.b),Y		; 31 16
	bmi   6.b		; 30 06
	bmi  62.b		; 30 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ora $011F01.l,X		; 1F 01 1F 01
	rol $0E20.w,X		; 3E 20 0E
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  64.b		; 10 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
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
	eor $B326.w,Y		; 59 26 B3
	jmp $4CB2.w		; 4C B2 4C
	.db $62, $9C, $62		; 62 9C 62
	stz $9D63.w		; 9C 63 9D
	cmp [$38.b]		; C7 38
	cmp [$3B.b]		; C7 3B
	rol $18.b		; 26 18
	jmp $4D30.w		; 4C 30 4D
	and ($9D.b),Y		; 31 9D
	adc ($9D.b,X)		; 61 9D
	adc ($9D.b,X)		; 61 9D
	rts		; 60

	sec		; 38
	cpy #$C03B.w		; C0 3B C0
	cmp ($01.b)		; D2 01
	cmp [$1C.b]		; C7 1C
	ora $1F0F1E.l		; 0F 1E 0F 1F
	eor [$4F.b]		; 47 4F
	lda $93.b,S		; A3 93
	sta $E61D.w		; 8D 1D E6
	stx $01.b		; 86 01
	bit $3D00.w,X		; 3C 00 3D
	cpy $FE.b		; C4 FE
	cmp [$FF.b]		; C7 FF
	cmp $BF.b,S		; C3 BF
	sta ($7F.b,X)		; 81 7F
	ora $7F.b		; 05 7F
	.db $82, $1F, $67		; 82 1F 67
	ldx #$8247.w		; A2 47 82
	adc $8C7E86.l,X		; 7F 86 7E 8C
	ror $7E8C.w,X		; 7E 8C 7E
	sty $9C7E.w		; 8C 7E 9C
	jmp ($BA98.w,X)		; 7C 98 BA
	clc		; 18
	tsx		; BA
	sec		; 38
	stx $00.b		; 86 00
	sta $8D01.w		; 8D 01 8D
	ora ($8D.b,X)		; 01 8D
	ora ($9D.b,X)		; 01 9D
	ora ($9B.b,X)		; 01 9B
	ora $4A.b,S		; 03 4A
	lsr A		; 4A
	eor $55.b,X		; 55 55
	adc ($52.b)		; 72 52
	bvs  80.b		; 70 50
	ror $52.b,X		; 76 52
	ror $52.b,X		; 76 52
	adc $7F49.w		; 6D 49 7F
	eor #$BFC8.w		; 49 C8 BF
	pea $FAAF.w		; F4 AF FA
	lda $FFAFFD.l		; AF FD AF FF
	lda $ADFF.w		; AD FF AD
	sbc $B6FFB6.l,X		; FF B6 FF B6
	jsr $7080.w		; 20 80 70
	rts		; 60

	ldy $A6B0.w,X		; BC B0 A6
	sty $B3.b		; 84 B3
	.db $82, $DF, $40		; 82 DF 40
	phx		; DA
	rti		; 40

	adc $C00020.l		; 6F 20 00 C0
	rts		; 60

	bra -16.b		; 80 F0
	rti		; 40

	jmp.w [$EE58]		; DC 58 EE
	jmp ($B0F0.w)		; 6C F0 B0
	jsr ($FEBC.w,X)		; FC BC FE
	dec $040B.w,X		; DE 0B 04
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $16.b		; 04 16
	ora #$0916.w		; 09 16 09
	trb $0B.b		; 14 0B
	trb $2C03.w		; 1C 03 2C
	ora ($04.b,S),Y		; 13 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $09.b,S		; 03 09
	asl $09.b		; 06 09
	asl $0B.b		; 06 0B
	tsb $03.b		; 04 03
	tsb $0C13.w		; 0C 13 0C
	plp		; 28
	ora [$28.b],Y		; 17 28
	ora [$28.b],Y		; 17 28
	ora [$2C.b],Y		; 17 2C
	ora ($24.b,S),Y		; 13 24
	tas		; 1B
	bit $1B.b		; 24 1B
	bit $1B.b		; 24 1B
	rol $19.b		; 26 19
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora ($08.b,S),Y		; 13 08
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	brk $36.b		; 00 36
	ora #$0936.w		; 09 36 09
	asl $09.b,X		; 16 09
	tas		; 1B
	brk $09.b		; 00 09
	brk $0D.b		; 00 0D
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx $BCB8.w		; EC B8 BC
	ldy $DEBE.w		; AC BE DE
	cmp $694F7F.l,X		; DF 7F 4F 69
	rti		; 40

	adc [$43.b]		; 67 43
	brk $00.b		; 00 00
	sed		; F8
	plp		; 28
	cpx #$F040.w		; E0 40 F0
	bvc  -8.b		; 50 F8
	jsr $004F.w		; 20 4F 00
	eor [$07.b]		; 47 07
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

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
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	ldx $0F51.w		; AE 51 0F
	beq   0.b		; F0 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bit $02C0.w,X		; 3C C0 02
	jsr ($946B.w,X)		; FC 6B 94
	adc [$A8.b],Y		; 77 A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $10.b		; 00 10
	and ($04.b,S),Y		; 33 04
	rol $08.b		; 26 08
	jmp ($6C20.w)		; 6C 20 6C
	brk $48.b		; 00 48
	bpl  88.b		; 10 58
	brk $D0.b		; 00 D0
	rti		; 40

	bne  14.b		; D0 0E
	cop $18.b		; 02 18
	brk $30.b		; 00 30
	jsr $0818.w		; 20 18 08
	bmi   0.b		; 30 00
	jsr $6000.w		; 20 00 60
	rti		; 40

	jsr $2E00.w		; 20 00 2E
	and $3E1838.l		; 2F 38 18 3E
	brk $46.b		; 00 46
	dec A		; 3A
	eor $354D33.l		; 4F 33 4D 35
	phy		; 5A
	jsl $382A5B.l		; 22 5B 2A 38
	ora [$18.b],Y		; 17 18
	ora [$00.b]		; 07 00
	ora ($3A.b,X)		; 01 3A
	ora ($33.b,X)		; 01 33
	brk $37.b		; 00 37
	cop $27.b		; 02 27
	ora $2F.b		; 05 2F
	ora $47.b		; 05 47
	sta $2C3300.l		; 8F 00 33 2C
	plp		; 28
	cli		; 58
	jmp.w [$7030]		; DC 30 70
	lda $A4.b		; A5 A4
	sta $84.b		; 85 84
	nop		; EA
	ldx #$FF00.w		; A2 00 FF
	brk $FF.b		; 00 FF
	jsr $10FF.w		; 20 FF 10
	sbc $8FFF23.l,X		; FF 23 FF 8F
	tda		; 7B
	cmp $5DFF7B.l,X		; DF 7B FF 5D
	tad		; 5B
	pei ($F9.b)		; D4 F9
	rol $79.b		; 26 79
	asl $FC.b		; 06 FC
	stp		; DB
	ldy $BCAB.w,X		; BC AB BC
	plb		; AB
	jmp $51DE53.l		; 5C 53 DE 51
	stz $A3.b,X		; 74 A3
	rol $81.b		; 26 81
	asl $81.b		; 06 81
	stp		; DB
	brk $EB.b		; 00 EB
	rti		; 40

	xba		; EB
	rti		; 40

	sbc ($A0.b,S),Y		; F3 A0
	sbc ($A0.b),Y		; F1 A0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	cpy #$C020.w		; C0 20 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $57.b		; 00 57
	and $6A2850.l		; 2F 50 28 6A
	clc		; 18
	and $182F18.l		; 2F 18 2F 18
	ora $100718.l		; 0F 18 07 10
	ora [$10.b]		; 07 10
	and #$2F08.w		; 29 08 2F
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	sbc $E3.b,S		; E3 E3
	sbc $6C54FF.l,X		; FF FF 54 6C
	eor $6C.b,X		; 55 6C
	ora $6C.b,X		; 15 6C
	ora $6C.b,X		; 15 6C
	lda $CC.b,X		; B5 CC
	lda $CC.b		; A5 CC
	sbc $003C1C.l,X		; FF 1C 3C 00
	lda $20.b,S		; A3 20
	sta $00.b,S		; 83 00
	cmp $40.b,S		; C3 40
	cmp $40.b,S		; C3 40
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $62.b		; 00 62
	bpl 114.b		; 10 72
	bmi 114.b		; 30 72
	jsr $3862.w		; 20 62 38
	adc $18.b,S		; 63 18
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	eor $3C.b,S		; 43 3C
	jsr $202C.w		; 20 2C 20
	tsb $1C00.w		; 0C 00 1C
	brk $1E.b		; 00 1E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	eor $38.b,S		; 43 38
	eor $3C.b,S		; 43 3C
	lsr $3C.b		; 46 3C
	lsr $38.b		; 46 38
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	mvp $4C,$38		; 44 38 4C
	rol $3E02.w,X		; 3E 02 3E
	cop $38.b		; 02 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	jmp $4C10.w		; 4C 10 4C
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	jsr $2068.w		; 20 68 20
	pla		; 68
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	inc $2EF1.w		; EE F1 2E
	and ($AC.b),Y		; 31 AC
	and ($AD.b,S),Y		; 33 AD
	and ($AA.b)		; 32 AA
	bit $A4.b,X		; 34 A4
	sec		; 38
	dey		; 88
	bmi -128.b		; 30 80
	bmi -47.b		; 30 D1
	bpl -47.b		; 10 D1
	bpl -61.b		; 10 C3
	brk $C2.b		; 00 C2
	brk $C4.b		; 00 C4
	brk $C8.b		; 00 C8
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$8000.w		; C0 00 80
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
	brk $80.b		; 00 80
	jsr $2080.w		; 20 80 20
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $1E.b		; 00 1E
	and ($1F.b,X)		; 21 1F
	jsr $6609.w		; 20 09 66
	and #$7468.w		; 29 68 74
	ror $B3.b,X		; 76 B3
	sta [$F8.b],Y		; 97 F8
	lda ($A2.b,X)		; A1 A2
	ldy $0611.w,X		; BC 11 06
	bpl   7.b		; 10 07
	rol $21.b,X		; 36 21
	bpl   6.b		; 10 06
	stz $0F.b		; 64 0F
	sbc ($6F.b),Y		; F1 6F
	cpx #$E05F.w		; E0 5F E0
	eor $FE19E7.l,X		; 5F E7 19 FE
	brk $B9.b		; 00 B9
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
	cpy #$C420.w		; C0 20 C4
	pla		; 68
	tsb $68.b		; 04 68
	tsb $E8.b		; 04 E8
	tsb $EA.b		; 04 EA
	cpy $E8.b		; C4 E8
	ldx $02.b		; A6 02
	and ($02.b,S),Y		; 33 02
	and ($16.b,S),Y		; 33 16
	and [$00.b],Y		; 37 00
	adc $08.b,S		; 63 08
	adc $2A.b,S		; 63 2A
	adc $2A.b,S		; 63 2A
	adc $2E.b,S		; 63 2E
	adc $1C.b,S		; 63 1C
	bpl  28.b		; 10 1C
	bpl   8.b		; 10 08
	brk $3E.b		; 00 3E
	jsl $1C223E.l		; 22 3E 22 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $B5.b		; 00 B5
	mvp $54,$B6		; 44 B6 54
	lda [$55.b],Y		; B7 55
	xba		; EB
	and ($E9.b,X)		; 21 E9
	and ($BD.b,X)		; 21 BD
	eor ($BD.b),Y		; 51 BD
	eor ($5F.b,X)		; 41 5F
	and $4F.b,S		; 23 4F
	phd		; 0B
	eor $0A5F0B.l,X		; 5F 0B 5F 0A
	and [$16.b],Y		; 37 16
	and [$16.b],Y		; 37 16
	eor [$06.b],Y		; 57 06
	eor [$06.b]		; 47 06
	and $00.b,S		; 23 00
	nop		; EA
	ldx #$A2EA.w		; A2 EA A2
	ror $6D22.w		; 6E 22 6D
	and ($ED.b,X)		; 21 ED
	and ($ED.b,X)		; 21 ED
	and ($EF.b,X)		; 21 EF
	and ($EF.b,X)		; 21 EF
	and ($FF.b,X)		; 21 FF
	eor $5DFF.w,X		; 5D FF 5D
	sbc $DEFFDD.l,X		; FF DD FF DE
	sbc $DEFFDE.l,X		; FF DE FF DE
	sbc $DEFFDE.l,X		; FF DE FF DE
	dec $AF49.w		; CE 49 AF
	plp		; 28
	lda $24E728.l		; AF 28 E7 24
	eor [$14.b],Y		; 57 14
	eor [$10.b],Y		; 57 10
	eor $112E00.l,X		; 5F 00 2E 11
	sbc $F8B0.w,Y		; F9 B0 F8
	bne  -8.b		; D0 F8
	bne  -4.b		; D0 FC
	cld		; D8
	jsr ($F8E8.w,X)		; FC E8 F8
	inx		; E8
	cpx #$D1E0.w		; E0 E0 D1
	bne  32.b		; D0 20
	cpy #$C020.w		; C0 20 C0
	jsr $20C0.w		; 20 C0 20
	cpy #$C020.w		; C0 20 C0
	jsr $40C0.w		; 20 C0 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $0F.b		; 00 0F
	bpl  15.b		; 10 0F
	bmi  14.b		; 30 0E
	bmi  31.b		; 30 1F
	and ($1C.b),Y		; 31 1C
	and ($0C.b),Y		; 31 0C
	and ($0E.b,X)		; 21 0E
	and $08.b,S		; 23 08
	and $0F.b,S		; 23 0F
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  14.b		; 10 0E
	brk $0F.b		; 00 0F
	ora ($1E.b,X)		; 01 1E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $05.b		; 02 05
	cpy $CC05.w		; CC 05 CC
	ora $8C.b		; 05 8C
	ora $8C.b		; 05 8C
	ora [$8C.b]		; 07 8C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	brk $0C.b		; 00 0C
	sta $80.b,S		; 83 80
	sta $80.b,S		; 83 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	rol $2C63.w		; 2E 63 2C
	adc $2C.b,S		; 63 2C
	adc $08.b,S		; 63 08
	.db $62, $08, $62		; 62 08 62
	tsb $0C26.w		; 0C 26 0C
	rol $08.b		; 26 08
	rol $1C.b		; 26 1C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $203C.w		; 20 3C 20
	clc		; 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $08.b		; 04 08
	rol $08.b		; 26 08
	bit $00.b		; 24 00
	bit $00.b		; 24 00
	bit $00.b		; 24 00
	bit $10.b		; 24 10
	bit $10.b,X		; 34 10
	bit $10.b,X		; 34 10
	bit $1C.b,X		; 34 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	ora $04.b		; 05 04
	ora $0B01.w		; 0D 01 0B
	ora [$16.b]		; 07 16
	tas		; 1B
	clc		; 18
	adc $60.b,X		; 75 60
	lda #$F088.w		; A9 88 F0
	beq   2.b		; F0 02
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	ora ($1C.b,X)		; 01 1C
	tsb $78.b		; 04 78
	clc		; 18
	sed		; F8
	bvs -16.b		; 70 F0
	brk $40.b		; 00 40
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$4040.w		; C0 40 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cld		; D8
	bne -40.b		; D0 D8
	inx		; E8
	jmp ($14D4.w)		; 6C D4 14
	ror A		; 6A
	rol A		; 2A
	eor $11.b,X		; 55 11
	ora $00000F.l		; 0F 0F 00 00
	beq  80.b		; F0 50
	cpx #$7000.w		; E0 00 70
	brk $3C.b		; 00 3C
	jsr $143E.w		; 20 3E 14
	ora $000F0E.l,X		; 1F 0E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rep #$00		; C2 00
	brk $08.b		; 00 08
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
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $3A.b		; 00 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $51.b		; 00 51
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $65.b		; 00 65
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 0FFFFE. Skipping.
	.db $57		; Opcode 57 overrunning bank boundry at 0FFFFF. Skipping.
.ENDS
