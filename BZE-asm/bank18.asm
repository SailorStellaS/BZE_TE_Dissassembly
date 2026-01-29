.BANK 18 SLOT 0
.ORG $0000

.SECTION "Bank18" FORCE

	ora $060D07.l		; 0F 07 0D 06
	ora $0D06.w		; 0D 06 0D
	asl $15.b		; 06 15
	asl $0E17.w		; 0E 17 0E
	ora $0E1F0E.l,X		; 1F 0E 1F 0E
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	tsb $0E.b		; 04 0E
	phb		; 8B
	ora [$1F.b]		; 07 1F
	ora #$3F.b		; 09 3F
	ora ($1F.b),Y		; 11 1F
	plp		; 28
	and #$60.b		; 29 60
	eor $833CC0.l,X		; 5F C0 3C 83
	ror $0700.w		; 6E 00 07
	brk $0B.b		; 00 0B
	asl A		; 0A
	ora $12.b,S		; 03 12
	ora ($09.b,X)		; 01 09
	asl $06.b,X		; 16 06
	bmi   7.b		; 30 07
	adc ($07.b,S),Y		; 73 07
	sbc ($07.b),Y		; F1 07
	sbc $0CBF07.l		; EF 07 BF 0C
	sbc $BE2A.w,X		; FD 2A BE
	bpl -13.b		; 10 F3
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $18.b,S		; E3 18
	eor $80B7A0.l		; 4F A0 B7 80
	adc $044E03.l		; 6F 03 4E 04
	bvc   1.b		; 50 01
	tsb $400E.w		; 0C 0E 40
	lsr $5E5C.w,X		; 5E 5C 5E
	bcs -66.b		; B0 BE
	cpx #$7000.w		; E0 00 70
	ldy #$50D8.w		; A0 D8 50
	clv		; B8
	ldy #$4470.w		; A0 70 44
	jmp.w [$E886]		; DC 86 E8
	ldx #$B154.w		; A2 54 B1
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	bvc 112.b		; 50 70
	jsr $18E0.w		; 20 E0 18
	cpy #$8038.w		; C0 38 80
	trb $2E80.w		; 1C 80 2E
	ldy #$8000.w		; A0 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpx #$F000.w		; E0 00 F0
	jsr $C0F0.w		; 20 F0 C0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpy #$05E0.w		; C0 E0 05
	ora ($06.b,X)		; 01 06
	cop $0F.b		; 02 0F
	ora ($15.b,X)		; 01 15
	asl A		; 0A
	ora [$08.b],Y		; 17 08
	and $265F12.l		; 2F 12 5F 26
	lda $030044.l,X		; BF 44 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	asl A		; 0A
	brk $0A.b		; 00 0A
	cop $16.b		; 02 16
	tsb $36.b		; 04 36
	bpl 110.b		; 10 6E
	rol A		; 2A
	sbc $FCFDFD.l,X		; FF FD FD FC
	adc ($73.b,S),Y		; 73 73
	lda $50DFAC.l		; AF AC DF 50
	adc $CEF5A0.l,X		; 7F A0 F5 CE
	cmp [$FC.b],Y		; D7 FC
	sbc $70FD.w,X		; FD FD 70
	inc $FF20.w,X		; FE 20 FF
	sty $51FC.w		; 8C FC 51
	adc ($A5.b),Y		; 71 A5
	and $DE.b		; 25 DE
	bpl  -2.b		; 10 FE
	cop $E7.b		; 02 E7
	cmp $DF.b,S		; C3 DF
	ora [$EF.b]		; 07 EF
	adc [$FE.b],Y		; 77 FE
	and [$BB.b],Y		; 37 BB
	stz $5C.b		; 64 5C
	ldy #$20D0.w		; A0 D0 20
	inx		; E8
	bpl   1.b		; 10 01
	cmp $03.b,S		; C3 03
	and [$66.b]		; 27 66
	adc [$00.b],Y		; 77 00
	and [$60.b],Y		; 37 60
	bit $A0.b		; 24 A0
	brk $A0.b		; 00 A0
	bra -48.b		; 80 D0
	cpy #$E0D0.w		; C0 D0 E0
	ldy #$40C0.w		; A0 C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$C000.w		; E0 00 C0
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
	bit $7A00.w,X		; 3C 00 7A
	tsb $FD.b		; 04 FD
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	sec		; 38
	brk $1F.b		; 00 1F
	brk $2C.b		; 00 2C
	ora ($23.b,S),Y		; 13 23
	ora $8C3F59.l,X		; 1F 59 3F 8C
	tda		; 7B
	stx $79.b		; 86 79
	plb		; AB
	lsr $B8.b,X		; 56 B8
	mvp $00,$00		; 44 00 00
	ora ($01.b,X)		; 01 01
	trb $14.b		; 14 14
	rol $26.b		; 26 26
	and ($31.b),Y		; 31 31
	cli		; 58
	cli		; 58
	mvn $07,$54		; 54 54 07
	tsb $FA.b		; 04 FA
	trb $1A.b		; 14 1A
	cpx $E9.b		; E4 E9
	inc $B5.b,X		; F6 B5
	plx		; FA
	sta $FA.b,X		; 95 FA
	cmp $BC.b,S		; C3 BC
	adc $9C.b,S		; 63 9C
	cmp ($2D.b)		; D2 2D
	trb $04.b		; 14 04
	cpy $C4.b		; C4 C4
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	plp		; 28
	plp		; 28
	clc		; 18
	clc		; 18
	dey		; 88
	dey		; 88
	and ($21.b,X)		; 21 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	sec		; 38
	dec $58.b,X		; D6 58
	inc $F654.w,X		; FE 54 F6
	jmp $78FC.w		; 4C FC 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	bvc 120.b		; 50 78
	rti		; 40

	mvn $4C,$40		; 54 40 4C
	bvc 120.b		; 50 78
	iny		; C8
	and $42.b,X		; 35 42
	and $17351F.l,X		; 3F 1F 35 17
	bmi  21.b		; 30 15
	and [$02.b],Y		; 37 02
	clc		; 18
	cop $0F.b		; 02 0F
	adc $202200.l,X		; 7F 00 22 20
	php		; 08
	ora $12.b,X		; 15 12
	ora $0F.b,X		; 15 0F
	brk $0A.b		; 00 0A
	cop $0F.b		; 02 0F
	php		; 08
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	ldy $6B.b,X		; B4 6B
	clc		; 18
	sbc [$C9.b]		; E7 C9
	ror $49.b		; 66 49
	ror $11.b		; 66 11
	ror $DE21.w		; 6E 21 DE
	eor ($BE.b,X)		; 41 BE
	adc ($8C.b)		; 72 8C
	ora $03.b,S		; 03 03
	sty $44.b		; 84 44
	lsr $46.b,X		; 56 46
	stx $06.b,Y		; 96 06
	dec $46.b		; C6 46
	stx $86.b		; 86 86
	tsb $04.b		; 04 04
	sty $04.b		; 84 04
	ora $1E2F0E.l,X		; 1F 0E 2F 1E
	and $0F361E.l		; 2F 1E 36 0F
	and #$16.b		; 29 16
	asl $0F09.w,X		; 1E 09 0F
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $1E04.w		; 0E 04 1E
	tsb $1E.b		; 04 1E
	brk $0F.b		; 00 0F
	bpl   6.b		; 10 06
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $2E10.w,Y		; D9 10 2E
	bcs  72.b		; B0 48
	sbc ($87.b),Y		; F1 87
	rts		; 60

	sta $41.b,S		; 83 41
	sta ($01.b,X)		; 81 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	inc $06.b		; E6 06
	cmp ($11.b),Y		; D1 11
	lda [$27.b]		; A7 27
	rti		; 40

	.db $42, $00		; 42 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $B1.b,S		; 03 B1
	rti		; 40

	sbc $001140.l		; EF 40 11 00
	inc $FEF0.w,X		; FE F0 FE
	xce		; FB
	inc $FEFF.w,X		; FE FF FE
	sbc $0EFEFF.l,X		; FF FF FE 0E
	lsr $5010.w		; 4E 10 50
	asl $60EE.w		; 0E EE 60
	sbc $F0.b,X		; F5 F0
	xce		; FB
	jsr ($FCFF.w,X)		; FC FF FC
	sbc $4AFEFC.l,X		; FF FC FE 4A
	sec		; 38
	lda [$DC.b]		; A7 DC
	eor $8E.b,S		; 43 8E
	sta ($07.b,X)		; 81 07
	sbc ($02.b,X)		; E1 02
	.db $82, $21, $82		; 82 21 82
	and ($C3.b,X)		; 21 C3
	and ($17.b,X)		; 21 17
	bcc  11.b		; 90 0B
	iny		; C8
	ora $84.b		; 05 84
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	rti		; 40

	eor ($40.b,X)		; 41 40
	eor ($00.b,X)		; 41 00
	ora ($1F.b,X)		; 01 1F
	brk $2C.b		; 00 2C
	ora ($23.b,S),Y		; 13 23
	ora $8C3F59.l,X		; 1F 59 3F 8C
	tda		; 7B
	stx $79.b		; 86 79
	plb		; AB
	lsr $B8.b,X		; 56 B8
	mvp $00,$00		; 44 00 00
	ora ($01.b,X)		; 01 01
	trb $14.b		; 14 14
	rol $26.b		; 26 26
	and ($31.b),Y		; 31 31
	cli		; 58
	cli		; 58
	mvn $07,$54		; 54 54 07
	tsb $FA.b		; 04 FA
	trb $1A.b		; 14 1A
	cpx $E9.b		; E4 E9
	inc $B5.b,X		; F6 B5
	plx		; FA
	sta $FA.b,X		; 95 FA
	cmp $BC.b,S		; C3 BC
	adc $9C.b,S		; 63 9C
	cmp ($2D.b)		; D2 2D
	trb $04.b		; 14 04
	cpy $C4.b		; C4 C4
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	plp		; 28
	plp		; 28
	clc		; 18
	clc		; 18
	dey		; 88
	dey		; 88
	and ($21.b,X)		; 21 21
	cmp $89.b,S		; C3 89
	lda $E4D9.w		; AD D9 E4
	cmp ($F2.b),Y		; D1 F2
	xba		; EB
	sei		; 78
	sbc [$7C.b],Y		; F7 7C
	xce		; FB
	tsx		; BA
	jmp ($7CBA.w,X)		; 7C BA 7C
	asl $80.b		; 06 80
	stx $C0.b		; 86 C0
	ora $E14DC1.l		; 0F C1 4D E1
	rol $F2.b		; 26 F2
	and ($F8.b)		; 32 F8
	trb $78.b		; 14 78
	brk $7C.b		; 00 7C
	txy		; 9B
	tsb $EE.b		; 04 EE
	tsb $81.b		; 04 81
	bpl 127.b		; 10 7F
	sta $1F1F3F.l		; 8F 3F 1F 1F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $116460.l,X		; 1F 60 64 11
	ora $70.b,X		; 15 70
	ror $2F06.w,X		; 7E 06 2F
	ora $3F0F1F.l		; 0F 1F 0F 3F
	ora $3F0F3F.l		; 0F 3F 0F 3F
	trb $03.b		; 14 03
	plx		; FA
	ora $0814.w		; 0D 14 08
	inx		; E8
	brk $EE.b		; 00 EE
	bcs -24.b		; B0 E8
	sbc ($E8.b)		; F2 E8
	sbc ($FC.b)		; F2 FC
.ACCU 8
	sep #$E1		; E2 E1
	sbc #$00.b		; E9 00
	tsb $E8E0.w		; 0C E0 E8
	brk $50.b		; 00 50
	brk $B0.b		; 00 B0
	cpy $F4.b		; C4 F4
	cpy $F4.b		; C4 F4
	cpy #$A0E0.w		; C0 E0 A0
	dey		; 88
	bvs -60.b		; 70 C4
	sec		; 38
.INDEX 8
	sep #$1E		; E2 1E
	bvs  31.b		; 70 1F
	jsl $2F1C2F.l		; 22 2F 1C 2F
	asl $1E3F.w,X		; 1E 3F 1E
	bvs   0.b		; 70 00
	clv		; B8
	bra  92.b		; 80 5C
	rti		; 40

	plp		; 28
	jsr $0002.w		; 20 02 00
	brk $1C.b		; 00 1C
	tsb $0C1E.w		; 0C 1E 0C
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	sec		; 38
	sbc $FF48.w,X		; FD 48 FF
	bit #$FD.b		; 89 FD
	rti		; 40

	eor $02FF00.l		; 4F 00 FF 02
	sbc [$18.b]		; E7 18
	adc ($05.b)		; 72 05
	and $5B04.w,X		; 3D 04 5B
	bvc  26.b		; 50 1A
	bcc  10.b		; 90 0A
	pha		; 48
	bcs  48.b		; B0 30
	.db $82, $3A, $9A		; 82 3A 9A
	dec A		; 3A
	sta $7F3D.w		; 8D 3D 7F
	sec		; 38
	xce		; FB
	adc $EE.b		; 65 EE
	eor ($F5.b)		; 52 F5
	sta $9B.b		; 85 9B
	cop $FE.b		; 02 FE
	tsb $1F.b		; 04 1F
	cmp $7A.b		; C5 7A
	ora $B8.b		; 05 B8
	brk $7C.b		; 00 7C
	ora $2372.w,Y		; 19 72 23
	sta ($0F.b,X)		; 81 0F
	rts		; 60

	ror $01.b,X		; 76 01
	pea $F4E0.w		; F4 E0 F4
	sta ($F5.b,X)		; 81 F5
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	rti		; 40

	bpl -96.b		; 10 A0
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	lda ($80.b,X)		; A1 80
	ldy #$81.b		; A0 81
	ldy #$81.b		; A0 81
	adc ($83.b,X)		; 61 83
	cpx #$42.b		; E0 42
	sbc $C6.b,S		; E3 C6
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora ($40.b,X)		; 01 40
	sta ($C0.b,X)		; 81 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7A00.w,X		; 3C 00 7A
	tsb $FD.b		; 04 FD
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	sec		; 38
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	ora ($1E.b,X)		; 01 1E
	asl $0E1E.w		; 0E 1E 0E
	inc A		; 1A
	asl A		; 0A
	ora $1F0A.w,Y		; 19 0A 1F
	ora $0000.w		; 0D 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl $0E0F.w		; 0E 0F 0E
	ora $000F08.l		; 0F 08 0F 00
	asl $0D00.w		; 0E 00 0D
	phd		; 0B
	ora [$07.b]		; 07 07
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	ora [$00.b]		; 07 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	ora ($2D.b)		; 12 2D
	ora ($01.b,S),Y		; 13 01
	asl $0B.b,X		; 16 0B
	clc		; 18
	asl A		; 0A
	tas		; 1B
	ora ($0C.b,X)		; 01 0C
	ora ($07.b,X)		; 01 07
	and $121F00.l,X		; 3F 00 1F 12
	ora ($12.b)		; 12 12
	ora $0704.w		; 0D 04 07
	brk $05.b		; 00 05
	ora ($07.b,X)		; 01 07
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($5A.b,X)		; 01 5A
	lda $0C.b,X		; B5 0C
	sbc ($E4.b,S),Y		; F3 E4
	lda ($A4.b,S),Y		; B3 A4
	and ($88.b,S),Y		; 33 88
	lda [$10.b],Y		; B7 10
	adc $B9DF20.l		; 6F 20 DF B9
	lsr $01.b		; 46 01
	ora ($42.b,X)		; 01 42
	ldx #$2B.b		; A2 2B
	lda $CB.b,S		; A3 CB
	ora $63.b,S		; 03 63
	and $C3.b,S		; 23 C3
	eor $82.b,S		; 43 82
	.db $82, $C2, $82		; 82 C2 82
	mvp $38,$38		; 44 38 38
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $0B.b		; 02 0B
	tsb $00.b		; 04 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	eor $2F6F1F.l,X		; 5F 1F 6F 2F
	sbc [$17.b],Y		; F7 17
	phy		; 5A
	tax		; AA
	adc $F795.w		; 6D 95 F7
	rol A		; 2A
	sbc $4FFD6C.l,X		; FF 6C FD 4F
	ora $3F073F.l		; 0F 3F 07 3F
	cop $1F.b		; 02 1F
	tay		; A8
	ora $6A27B5.l		; 0F B5 27 6A
	.db $42, $6D		; 42 6D
	ora ($EF.b,X)		; 01 EF
	ldy #$FE.b		; A0 FE
	jmp.w [$C0DD]		; DC DD C0
	rol $FF37.w,X		; 3E 37 FF
	cmp $FB.b,S		; C3 FB
	asl $F5.b		; 06 F5
	asl A		; 0A
	eor $7EE2.w,X		; 5D E2 7E
	cmp ($D0.b,X)		; C1 D0
	jmp.w [$E200]		; DC 00 E2
	asl $F7.b		; 06 F7
	cpy #$C3.b		; C0 C3
	asl $12.b,X		; 16 12
	phy		; 5A
	bvc -22.b		; 50 EA
	php		; 08
	sbc $7D2C.w		; ED 2C 7D
	rol $7CFA.w,X		; 3E FA 7C
	pea $E878.w		; F4 78 E8
	bvs -80.b		; 70 B0
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	clc		; 18
	rol $7C30.w,X		; 3E 30 7C
	rts		; 60

	sei		; 78
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora $180F18.l		; 0F 18 0F 18
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	asl $10.b		; 06 10
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $635D00.l		; 0F 00 5D 63
	eor ($74.b,X)		; 41 74
	eor ($74.b,X)		; 41 74
	eor ($64.b,X)		; 41 64
	ora ($64.b,X)		; 01 64
	sta $E6.b,S		; 83 E6
	sta ($E6.b,X)		; 81 E6
	sta ($C2.b,X)		; 81 C2
	ldx #$22.b		; A2 22
	lda $20.b,S		; A3 20
	lda $20.b,S		; A3 20
	sta $00.b,S		; 83 00
	cmp $40.b,S		; C3 40
	eor ($40.b,X)		; 41 40
	eor $42.b,S		; 43 42
	ora ($00.b,X)		; 01 00
	bpl  24.b		; 10 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	tsb $67.b		; 04 67
	trb $1C7E.w		; 1C 7E 1C
	ror $7E0C.w,X		; 7E 0C 7E
	trb $147E.w		; 1C 7E 14
	ror $24.b,X		; 76 24
	ror $30.b		; 66 30
	ror $3A.b		; 66 3A
	jsl $202020.l		; 22 20 20 20
	jsr $3030.w		; 20 30 30
	jsr $2820.w		; 20 20 28
	jsr $0018.w		; 20 18 00
	trb $1004.w		; 1C 04 10
	lsr $30.b		; 46 30
	lsr $38.b		; 46 38
	jmp $CC38.w		; 4C 38 CC
	bmi -52.b		; 30 CC
	rts		; 60

	cpy $8820.w		; CC 20 88
	bmi -104.b		; 30 98
	bit $3C04.w,X		; 3C 04 3C
	tsb $30.b		; 04 30
	brk $70.b		; 00 70
	rti		; 40

	sei		; 78
	pha		; 48
	sec		; 38
	php		; 08
	bvs   0.b		; 70 00
	rts		; 60

	brk $F8.b		; 00 F8
	jsr $70B8.w		; 20 B8 70
	stz $18.b,X		; 74 18
	jmp ($5E10.w,X)		; 7C 10 5E
	plp		; 28
	rol $2F0C.w,X		; 3E 0C 2F
	asl $1F.b,X		; 16 1F
	brk $70.b		; 00 70
	bvc 112.b		; 50 70
	brk $38.b		; 00 38
	jsr $2838.w		; 20 38 28
	bit $1C14.w,X		; 3C 14 1C
	bpl  30.b		; 10 1E
	php		; 08
	brk $00.b		; 00 00
	inc A		; 1A
	eor $38.b,S		; 43 38
	eor $38.b,S		; 43 38
	eor $74.b,S		; 43 74
	dec $74.b		; C6 74
	dec $30.b		; C6 30
	stx $78.b		; 86 78
	sty $8C68.w		; 8C 68 8C
	bit $3E00.w,X		; 3C 00 3E
	cop $3E.b		; 02 3E
	cop $38.b		; 02 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	tsb $70.b		; 04 70
	brk $70.b		; 00 70
	brk $48.b		; 00 48
	cpy $C610.w		; CC 10 C6
	trb $38C6.w		; 1C C6 38
	.db $62, $0C, $63		; 62 0C 63
	asl $0433.w,X		; 1E 33 04
	and ($0E.b),Y		; 31 0E
	ora $80B0.w,Y		; 19 B0 80
	jmp ($7844.w,X)		; 7C 44 78
	rti		; 40

	trb $3E00.w		; 1C 00 3E
	jsl $1E000C.l		; 22 0C 00 1E
	bpl   6.b		; 10 06
	brk $1F.b		; 00 1F
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	tsb $3D.b		; 04 3D
	asl $083E.w		; 0E 3E 08
	ror $FE10.w,X		; 7E 10 FE
	bmi -16.b		; 30 F0
	brk $0E.b		; 00 0E
	php		; 08
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	asl $1C10.w,X		; 1E 10 1C
	trb $38.b		; 14 38
	plp		; 28
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	bpl -60.b		; 10 C4
	sec		; 38
	stz $28.b		; 64 28
	ror $0C.b		; 66 0C
	ror $18.b		; 66 18
	and ($0B.b)		; 32 0B
	sec		; 38
	ora $0E1F00.l,X		; 1F 00 1F 0E
	sei		; 78
	rti		; 40

	clc		; 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	jsr $000C.w		; 20 0C 00
	trb $10.b		; 14 10
	cop $02.b		; 02 02
	ora $130601.l		; 0F 01 06 13
	php		; 08
	tas		; 1B
	and $0C3E10.l,X		; 3F 10 3E 0C
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	dec A		; 3A
	tsb $083C.w		; 0C 3C 08
	tsb $0600.w		; 0C 00 06
	cop $10.b		; 02 10
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	bpl  24.b		; 10 18
	bpl 124.b		; 10 7C
	stx $7C.b		; 86 7C
	stx $3C.b		; 86 3C
	stx $7C.b		; 86 7C
	dec $38.b		; C6 38
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	eor $18.b,S		; 43 18
	eor $22.b,S		; 43 22
	adc $78.b,S		; 63 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	rti		; 40

	rol $3E02.w,X		; 3E 02 3E
	cop $1C.b		; 02 1C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	sec		; 38
	lsr $3E38.w,X		; 5E 38 3E
	php		; 08
	rol $1F1C.w		; 2E 1C 1F
	tsb $041F.w		; 0C 1F 04
	ora [$0E.b],Y		; 17 0E
	php		; 08
	php		; 08
	bit $3C04.w,X		; 3C 04 3C
	tsb $1C.b		; 04 1C
	trb $1C.b		; 14 1C
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	asl A		; 0A
	asl $3C00.w		; 0E 00 3C
	inc $FE04.w,X		; FE 04 FE
	tsb $7E.b		; 04 7E
	tsb $0E7F.w		; 0C 7F 0E
	adc $093D0C.l,X		; 7F 0C 3D 09
	and $1802.w,Y		; 39 02 18
	rti		; 40

	rti		; 40

	sei		; 78
	sei		; 78
	sec		; 38
	sec		; 38
	and ($32.b)		; 32 32
	bmi  48.b		; 30 30
	ora ($10.b)		; 12 10
	asl $10.b,X		; 16 10
	ora $010308.l		; 0F 08 03 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	jsr $0F00.w		; 20 00 0F
	ora $030000.l,X		; 1F 00 00 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $7CFF07.l,X		; 1F 07 FF 7C
	plb		; AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D6.l		; 2F D6 33 DF
	rti		; 40

	lda $4BBE41.l,X		; BF 41 BE 4B
	and $56.b,X		; 35 56
	plb		; AB
	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   9.b		; 30 09
	brk $0C.b		; 00 0C
	tsb $9A9A.w		; 0C 9A 9A
	bmi  48.b		; 30 30
	jsr $21A0.w		; 20 A0 21
	lda ($BE.b,X)		; A1 BE
	bcc  -3.b		; 90 FD
	ora $7C.b		; 05 7C
	tsb $3C.b		; 04 3C
	cmp $7D.b		; C5 7D
	asl $9C.b		; 06 9C
	ora [$7E.b]		; 07 7E
	sta $86.b,S		; 83 86
	ora $50.b,S		; 03 50
	ora ($00.b,X)		; 01 00
	ora [$84.b]		; 07 84
	sbc [$C4.b],Y		; F7 C4
	sbc [$84.b],Y		; F7 84
	inc $60.b,X		; F6 60
	ror $80.b,X		; 76 80
	.db $82, $78, $7A		; 82 78 7A
	bcs -96.b		; B0 A0
	bvs  64.b		; 70 40
	cpy #$C0B0.w		; C0 B0 C0
	bvc -48.b		; 50 D0
	tya		; 98
	bcs -104.b		; B0 98
	bmi -104.b		; 30 98
	jsr $8088.w		; 20 88 80
	cpx #$C040.w		; E0 40 C0
	ldy #$20A0.w		; A0 A0 20
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $53.b		; 00 53
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $50AFE8.l,X		; 1F E8 AF 50
	tda		; 7B
	brk $37.b		; 00 37
	cop $3F.b		; 02 3F
	brk $53.b		; 00 53
	brk $1D.b		; 00 1D
	cop $13.b		; 02 13
	ora ($2A.b,X)		; 01 2A
	rol A		; 2A
	cop $12.b		; 02 12
	tsb $0C.b		; 04 0C
	asl A		; 0A
	asl A		; 0A
	cop $0A.b		; 02 0A
	tsb $020C.w		; 0C 0C 02
	cop $0C.b		; 02 0C
	ora $8874.w		; 0D 74 88
	cpx $38.b		; E4 38
	.db $82, $FC, $31		; 82 FC 31
	dec $9669.w		; CE 69 96
	tyx		; BB
	mvn $F8,$96		; 54 96 F8
	ldx $78.b		; A6 78
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $10.b		; 84 10
	bpl  64.b		; 10 40
	rti		; 40

	pha		; 48
	pha		; 48
	bpl  16.b		; 10 10
	tsb $58.b		; 04 58
	bne  24.b		; D0 18
	cpx #$1008.w		; E0 08 10
	sei		; 78
	ldy #$10B0.w		; A0 B0 10
	cpx #$00FC.w		; E0 FC 00
	pei ($A4.b)		; D4 A4
	ldy #$E000.w		; A0 00 E0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	bmi  48.b		; 30 30
	cpx #$004E.w		; E0 4E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	adc $DE9EF9.l,X		; 7F F9 9E DE
	and ($F0.b,X)		; 21 F0
	sta $2643D8.l,X		; 9F D8 43 26
	sbc ($19.b,X)		; E1 19
	sei		; 78
	ora [$3E.b]		; 07 3E
	sec		; 38
	adc $611E80.l,X		; 7F 80 1E 61
	eor ($83.b,X)		; 41 83
	ora $3C.b,S		; 03 3C
	brk $5F.b		; 00 5F
	eor ($26.b,X)		; 41 26
	jsr $0808.w		; 20 08 08
	rtl		; 6B

	sty $E8.b,X		; 94 E8
	bpl 113.b		; 10 71
	sty $8E72.w		; 8C 72 8E
	sbc $0F.b		; E5 0F
	lda ($4F.b)		; B2 4F
	xce		; FB
	pei ($FD.b)		; D4 FD
	sty $0A.b,X		; 94 0A
	bra  15.b		; 80 0F
	brk $07.b		; 00 07
	tsb $05.b		; 04 05
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	eor $17.b		; 45 17
	cmp $B2.b,S		; C3 B2
	ldy #$0306.w		; A0 06 03
	php		; 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	brk $BF.b		; 00 BF
	adc $009FFC.l,X		; 7F FC 9F 00
	brk $06.b		; 00 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	sbc $807F1E.l,X		; FF 1E 7F 80
	ora $EF57F8.l,X		; 1F F8 57 EF
	asl $5F.b,X		; 16 5F
	lda $BF66.w		; AD 66 BF
	bra 127.b		; 80 7F
	sta $7C.b,S		; 83 7C
	sta [$6B.b],Y		; 97 6B
	lda $7656.w		; AD 56 76
	asl $69.b		; 06 69
	rts		; 60

	ora ($00.b)		; 12 00
	ora $3419.w,Y		; 19 19 34
	bit $60.b,X		; 34 60
	rts		; 60

	rti		; 40

	rti		; 40

	.db $42, $42		; 42 42
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sep #$00		; E2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($A700.w,X)		; 7C 00 A7
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  80.b		; 50 50
	inx		; E8
	bpl -56.b		; 10 C8
	bvs   4.b		; 70 04
	sed		; F8
	.db $62, $9C, $D2		; 62 9C D2
	bit $A876.w		; 2C 76 A8
	bit $4CF0.w		; 2C F0 4C
	beq   0.b		; F0 00
	brk $A0.b		; 00 A0
	jsr $8888.w		; 20 88 88
	php		; 08
	php		; 08
	jsr $8020.w		; 20 20 80
	bra -112.b		; 80 90
	bcc  32.b		; 90 20
	jsr $B008.w		; 20 08 B0
	ldy #$C030.w		; A0 30 C0
	bpl  32.b		; 10 20
	beq  64.b		; F0 40
	rts		; 60

	jsr $F8C0.w		; 20 C0 F8
	brk $A8.b		; 00 A8
	pha		; 48
	rti		; 40

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpy #$0080.w		; C0 80 00
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	cpy #$269C.w		; C0 9C 26
	ora $1827.w,Y		; 19 27 18
	tas		; 1B
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $12.b		; 00 12
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	ora ($10.b),Y		; 11 10
	bpl   0.b		; 10 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($F7.b,X)		; 01 F7
	ora ($7F.b)		; 12 7F
	brk $6F.b		; 00 6F
	brk $E7.b		; 00 E7
	cli		; 58
	sbc $007300.l		; EF 00 73 00
	lda $207050.l		; AF 50 70 20
	lsr A		; 4A
	rti		; 40

	rti		; 40

	cpy #$9E90.w		; C0 90 9E
	cli		; 58
	lsr $5E50.w,X		; 5E 50 5E
	sty $508E.w		; 8C 8E 50
	bvc -113.b		; 50 8F
	lda $AE14D6.l		; AF D6 14 AE
	tay		; A8
	tya		; 98
	stx $98.b,Y		; 96 98
	tax		; AA
	tsx		; BA
	cmp ($96.b,S),Y		; D3 96
	sbc ($C6.b,S),Y		; F3 C6
	adc ($C4.b,S),Y		; 73 C4
	adc ($10.b),Y		; 71 10
	bit $F808.w,X		; 3C 08 F8
	sty $F4.b,X		; 94 F4
	sty $E0.b		; 84 E0
	sty $0CC0.w		; 8C C0 0C
	cpy #$501C.w		; C0 1C 50
	asl $0050.w,X		; 1E 50 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D3.b		; 00 D3
	bit $9BE4.w		; 2C E4 9B
	iny		; C8
	eor $24C358.l		; 4F 58 C3 24
	sbc ($13.b,X)		; E1 13
	adc ($05.b)		; 72 05
	trb $152B.w		; 1C 2B 15
	rts		; 60

	jmp $1090.w		; 4C 90 10
	and ($02.b)		; 32 02
	ldy $5F80.w,X		; BC 80 5F
	eor ($0C.b,X)		; 41 0C
	brk $0A.b		; 00 0A
	php		; 08
	ora $15.b,X		; 15 15
	dec $28.b,X		; D6 28
	eor ($A0.b),Y		; 51 A0
	sbc $18.b,S		; E3 18
	cpx $1C.b		; E4 1C
	wai		; CB
	ora $F79F64.l,X		; 1F 64 9F F7
	tay		; A8
	xce		; FB
	and #$0015.w		; 29 15 00
	ora $080F00.l,X		; 1F 00 0F 08
	phd		; 0B
	php		; 08
	tsb $04.b		; 04 04
	asl A		; 0A
	txa		; 8A
	rol $6586.w		; 2E 86 65
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	php		; 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $37.b		; 00 37
	cpy #$57F8.w		; C0 F8 57
	sbc $000016.l		; EF 16 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ror $06.b,X		; 76 06
	adc #$2060.w		; 69 60 20
	ora $211E21.l,X		; 1F 21 1E 21
	asl $1F20.w,X		; 1E 20 1F
	ora ($0E.b),Y		; 11 0E
	ora #$0906.w		; 09 06 09
	asl $11.b		; 06 11
	asl $0808.w		; 0E 08 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	xba		; EB
	clc		; 18
	sbc $1C.b		; E5 1C
	cmp $17.b,S		; C3 17
	jsr ($FF07.w,X)		; FC 07 FF
	cpx #$43EF.w		; E0 EF 43
	sbc $04EF4A.l,X		; FF 4A EF 04
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	tsb $0804.w		; 0C 04 08
	php		; 08
	cpx $DB04.w		; EC 04 DB
	bra -45.b		; 80 D3
	sta ($54.b,X)		; 81 54
	rti		; 40

	cmp $10.b,S		; C3 10
	jsr $40F0.w		; 20 F0 40
	rts		; 60

	sec		; 38
	cpy #$50EE.w		; C0 EE 50
	stp		; DB
	rol A		; 2A
	adc [$95.b],Y		; 77 95
	sbc $00E028.l		; EF 28 E0 00
	cpy #$80C0.w		; C0 C0 80
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	jsr $CEE8.w		; 20 E8 CE
	sty $1C.b,X		; 94 1C
	phd		; 0B
	sec		; 38
	jsr $F0F0.w		; 20 F0 F0
	bvs -80.b		; 70 B0
	sei		; 78
	sei		; 78
	sec		; 38
	sei		; 78
	bit $3C5C.w,X		; 3C 5C 3C
	bit $2EDE.w,X		; 3C DE 2E
	asl $F800.w,X		; 1E 00 F8
	brk $78.b		; 00 78
	bpl 124.b		; 10 7C
	bpl  60.b		; 10 3C
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	tsb $CC1F.w		; 0C 1F CC
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $E8.b		; 00 E8
	bpl -56.b		; 10 C8
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $F804.w		; 20 04 F8
	.db $62, $9C, $D2		; 62 9C D2
	bit $A876.w		; 2C 76 A8
	sbc $BD71.w		; ED 71 BD
	adc ($9A.b,X)		; 61 9A
	jsl $88B323.l		; 22 23 B3 88
	dey		; 88
	php		; 08
	php		; 08
	jsr $8020.w		; 20 20 80
	sta ($10.b,X)		; 81 10
	ora ($01.b,S),Y		; 13 01
	ora $62.b,S		; 03 62
	and [$C0.b]		; 27 C0
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$E0C0.w		; E0 C0 E0
	jsr $E020.w		; 20 20 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$80F0.w		; C0 F0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   1.b		; F0 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$3E.b]		; 07 3E
	and $3A3E3D.l,X		; 3F 3D 3E 3A
	bit $70FE.w,X		; 3C FE 70
	beq   0.b		; F0 00
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	cop $3F.b		; 02 3F
	bit $7F.b,X		; 34 7F
	sec		; 38
	ror $7C10.w,X		; 7E 10 7C
	jsr $0070.w		; 20 70 00
	brk $D7.b		; 00 D7
	sbc [$B7.b]		; E7 B7
	cmp [$63.b]		; C7 63
	sta [$83.b]		; 87 83
	ora [$03.b]		; 07 03
	ora $0D.b,S		; 03 0D
	ora $16.b		; 05 16
	asl A		; 0A
	ora [$09.b],Y		; 17 09
	sta $EF.b,S		; 83 EF
	ora $CF.b,S		; 03 CF
	ora ($8F.b,X)		; 01 8F
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	php		; 08
	ora $09.b,S		; 03 09
	ora ($FB.b,X)		; 01 FB
	jmp.w [$FCFD]		; DC FD FC
	sbc $FCFC.w,X		; FD FC FC
	inc $F8F9.w,X		; FE F9 F8
	sbc $F6.b,X		; F5 F6
	inc $5FE9.w		; EE E9 5F
	bvc -128.b		; 50 80
	cmp $FFF8.w,X		; DD F8 FF
	sed		; F8
	sbc $F0FFF8.l,X		; FF F8 FF F0
	inc $FEE0.w,X		; FE E0 FE
	eor ($F8.b,X)		; 41 F8
	ora ($F2.b)		; 12 F2
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$3000.w		; C0 00 30
	brk $B0.b		; 00 B0
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$6040.w		; C0 40 60
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$50.b]		; 07 50
	ora $401F68.l		; 0F 68 1F 40
	and $040F30.l,X		; 3F 30 0F 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $0E.b		; 02 0E
	asl $1616.w		; 0E 16 16
	dec A		; 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	eor $BF66AF.l,X		; 5F AF 66 BF
	bra 127.b		; 80 7F
	sta $7C.b,S		; 83 7C
	sta $6A.b,X		; 95 6A
	ldx $5554.w		; AE 54 55
	lda #$A153.w		; A9 53 A1
	bpl   0.b		; 10 00
	ora $3419.w,Y		; 19 19 34
	bit $60.b,X		; 34 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	eor ($14.b,X)		; 41 14
	ora $1F.b,S		; 03 1F
	ora ($12.b,X)		; 01 12
	tsb $040B.w		; 0C 0B 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0300.w		; 0E 00 03
	brk $06.b		; 00 06
	tsb $0D.b		; 04 0D
	asl $0101.w		; 0E 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $04.b		; 00 04
	ora ($0D.b,X)		; 01 0D
	brk $1E.b		; 00 1E
	jmp ($FF00.w,X)		; 7C 00 FF
	bpl  56.b		; 10 38
	dec $93.b		; C6 93
	plp		; 28
	jmp ($BB00.w,X)		; 7C 00 BB
	bpl   4.b		; 10 04
	rti		; 40

	cmp $83833C.l,X		; DF 3C 83 83
	bpl -41.b		; 10 D7
	cmp [$D7.b],Y		; D7 D7
	jmp ($83EF.w)		; 6C EF 83
	sta $44.b,S		; 83 44
	mvn $FB,$C3		; 54 C3 FB
	brk $BD.b		; 00 BD
	cpy $FF28.w		; CC 28 FF
	ora [$E9.b],Y		; 17 E9
	ora [$F8.b],Y		; 17 F8
	and [$68.b]		; 27 68
	bmi -24.b		; 30 E8
	bmi 112.b		; 30 70
	jsr $009C.w		; 20 9C 00
	ora $B8.b,S		; 03 B8
	brk $90.b		; 00 90
	asl $96.b		; 06 96
	brk $A0.b		; 00 A0
	bra -80.b		; 80 B0
	brk $30.b		; 00 30
	bra -96.b		; 80 A0
	brk $60.b		; 00 60
	sbc $0E.b,X		; F5 0E
	and $CCFF00.l,X		; 3F 00 FF CC
	rol $1CC0.w,X		; 3E C0 1C
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D00E.w		; C0 0E D0
	bpl  14.b		; 10 0E
	cop $D0.b		; 02 D0
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $37.b		; 00 37
	cpy #$57F8.w		; C0 F8 57
	sbc $000016.l		; EF 16 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ror $06.b,X		; 76 06
	adc #$0460.w		; 69 60 04
	sed		; F8
	.db $62, $9C, $D2		; 62 9C D2
	bit $A876.w		; 2C 76 A8
	sbc $BD71.w		; ED 71 BD
	adc ($9A.b,X)		; 61 9A
	jsl $88B323.l		; 22 23 B3 88
	dey		; 88
	php		; 08
	php		; 08
	jsr $8020.w		; 20 20 80
	sta ($10.b,X)		; 81 10
	ora ($01.b,S),Y		; 13 01
	ora $62.b,S		; 03 62
	and [$C0.b]		; 27 C0
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$E0C0.w		; E0 C0 E0
	jsr $E020.w		; 20 20 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$80F0.w		; C0 F0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -52.b		; F0 CC
	plp		; 28
	sbc $17E917.l,X		; FF 17 E9 17
	sed		; F8
	and [$68.b]		; 27 68
	bmi -24.b		; 30 E8
	bmi 112.b		; 30 70
	jsr $009C.w		; 20 9C 00
	ora $B8.b,S		; 03 B8
	brk $90.b		; 00 90
	asl $96.b		; 06 96
	brk $A0.b		; 00 A0
	bra -80.b		; 80 B0
	brk $30.b		; 00 30
	bra -96.b		; 80 A0
	brk $60.b		; 00 60
	sbc $0E.b,X		; F5 0E
	and $CCFF00.l,X		; 3F 00 FF CC
	rol $1CC0.w,X		; 3E C0 1C
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D00E.w		; C0 0E D0
	bpl  14.b		; 10 0E
	cop $D0.b		; 02 D0
	bne   0.b		; D0 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	ora $211E21.l,X		; 1F 21 1E 21
	asl $1F20.w,X		; 1E 20 1F
	ora ($0E.b),Y		; 11 0E
	ora #$0906.w		; 09 06 09
	asl $11.b		; 06 11
	lsr $0808.w		; 4E 08 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	php		; 08
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	inx		; E8
	bpl -56.b		; 10 C8
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $18EB.w		; 20 EB 18
	sbc $1C.b		; E5 1C
	cmp $17.b,S		; C3 17
	jsr ($FF07.w,X)		; FC 07 FF
	cpx #$43EF.w		; E0 EF 43
	sbc $04EF4A.l,X		; FF 4A EF 04
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	tsb $0804.w		; 0C 04 08
	php		; 08
	cpx $DB04.w		; EC 04 DB
	bra -45.b		; 80 D3
	sta ($54.b,X)		; 81 54
	rti		; 40

	jmp ($FF00.w,X)		; 7C 00 FF
	bpl  56.b		; 10 38
	dec $93.b		; C6 93
	plp		; 28
	jmp ($BB00.w,X)		; 7C 00 BB
	bpl   4.b		; 10 04
	rti		; 40

	cmp $83833C.l,X		; DF 3C 83 83
	bpl -41.b		; 10 D7
	cmp [$D7.b],Y		; D7 D7
	jmp ($83EF.w)		; 6C EF 83
	sta $44.b,S		; 83 44
	mvn $FB,$C3		; 54 C3 FB
	brk $BD.b		; 00 BD
	ora $3F1F3F.l,X		; 1F 3F 1F 3F
	ora $FF3FBF.l,X		; 1F BF 3F FF
	ora $7F3F7F.l,X		; 1F 7F 3F 7F
	ora $1F0F3F.l,X		; 1F 3F 0F 1F
	tsb $3F.b		; 04 3F
	tsb $0F3F.w		; 0C 3F 0F
	lda $03FF0B.l,X		; BF 0B FF 03
	adc $037F01.l,X		; 7F 01 7F 03
	and $DE1F00.l,X		; 3F 00 1F DE
	sbc $FFFEFD.l,X		; FF FD FE FF
	jsr ($FEF8.w,X)		; FC F8 FE
	beq  -4.b		; F0 FC
	cpx #$E0FC.w		; E0 FC E0
	bne -128.b		; D0 80
	cpx #$FF4C.w		; E0 4C FF
	cli		; 58
	inc $FC38.w,X		; FE 38 FC
	beq  -2.b		; F0 FE
	cpx #$C0FC.w		; E0 FC C0
	jsr ($D080.w,X)		; FC 80 D0
	brk $E0.b		; 00 E0
	lda $3FBF3E.l,X		; BF 3E BF 3F
	ora $3F1F3F.l,X		; 1F 3F 1F 3F
	ora $2F6F1F.l,X		; 1F 1F 6F 2F
	lda [$57.b],Y		; B7 57
	tsx		; BA
	lsr A		; 4A
	trb $1F7E.w		; 1C 7E 1F
	adc $0F7F0F.l,X		; 7F 0F 7F 0F
	adc $077F0F.l,X		; 7F 0F 7F 07
	and $481F42.l,X		; 3F 42 1F 48
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$50.b]		; 07 50
	ora $401F68.l		; 0F 68 1F 40
	and $040F30.l,X		; 3F 30 0F 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $0E.b		; 02 0E
	asl $1616.w		; 0E 16 16
	dec A		; 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	eor $BF66AF.l,X		; 5F AF 66 BF
	bra 127.b		; 80 7F
	sta $7C.b,S		; 83 7C
	sta $6A.b,X		; 95 6A
	ldx $5554.w		; AE 54 55
	lda #$A153.w		; A9 53 A1
	bpl   0.b		; 10 00
	ora $3419.w,Y		; 19 19 34
	bit $60.b,X		; 34 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	eor ($14.b,X)		; 41 14
	ora $1F.b,S		; 03 1F
	ora ($C3.b,X)		; 01 C3
	bpl  32.b		; 10 20
	beq  64.b		; F0 40
	rts		; 60

	sec		; 38
	cpy #$50EE.w		; C0 EE 50
	stp		; DB
	rol A		; 2A
	adc [$95.b],Y		; 77 95
	sbc $00E028.l		; EF 28 E0 00
	cpy #$80C0.w		; C0 C0 80
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	jsr $CEE8.w		; 20 E8 CE
	sty $1C.b,X		; 94 1C
	phd		; 0B
	sec		; 38
	jsr $F0F0.w		; 20 F0 F0
	bvs -80.b		; 70 B0
	sei		; 78
	sei		; 78
	sec		; 38
	sei		; 78
	bit $3C5C.w,X		; 3C 5C 3C
	bit $2EDE.w,X		; 3C DE 2E
	asl $F800.w,X		; 1E 00 F8
	brk $78.b		; 00 78
	bpl 124.b		; 10 7C
	bpl  60.b		; 10 3C
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	tsb $CC1F.w		; 0C 1F CC
	ora $E8E4D8.l,X		; 1F D8 E4 E8
	cpx $E8.b		; E4 E8
	cpx $E0.b		; E4 E0
	pea $C0CE.w		; F4 CE C0
	lda #$75B0.w		; A9 B0 75
	pha		; 48
	xce		; FB
	sty $00.b		; 84 00
	inx		; E8
	cpy #$C0F8.w		; C0 F8 C0
	sed		; F8
	cpy #$80F8.w		; C0 F8 80
	beq   6.b		; F0 06
	inc $0A.b,X		; F6 0A
	cmp $94.b,S		; C3 94
	sta ($00.b),Y		; 91 00
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
	php		; 08
	brk $0A.b		; 00 0A
	asl A		; 0A
	ora $101E00.l,X		; 1F 00 1E 10
	and $0C3F0D.l,X		; 3F 0D 3F 0C
	and $007F3E.l,X		; 3F 3E 7F 00
	php		; 08
	brk $0A.b		; 00 0A
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	php		; 08
	adc $0B4C12.l,X		; 7F 12 4C 0B
	stz $47.b		; 64 47
	cpx #$6007.w		; E0 07 60
	rol $2360.w		; 2E 60 23
	beq  86.b		; F0 56
	stz $7D.b,X		; 74 7D
	inc $4101.w,X		; FE 01 41
	brk $61.b		; 00 61
	brk $E1.b		; 00 E1
	brk $61.b		; 00 61
	ora ($61.b,X)		; 01 61
	brk $F4.b		; 00 F4
	ora ($7D.b,X)		; 01 7D
	brk $FE.b		; 00 FE
	ora $0C.b		; 05 0C
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpy #$C010.w		; C0 10 C0
	bpl -32.b		; 10 E0
	clc		; 18
	beq  24.b		; F0 18
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	bvs   8.b		; 70 08
	clv		; B8
	sty $00E0.w		; 8C E0 00
	cpx #$F000.w		; E0 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $6F.b		; 00 6F
	sbc $7FFFBF.l,X		; FF BF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $04FFFF.l,X		; FF FF FF 04
	sbc $15FF2B.l,X		; FF 2B FF 15
	sbc $5FFF2A.l,X		; FF 2A FF 5F
	sbc $15FF2B.l,X		; FF 2B FF 15
	sbc $FFFF2A.l,X		; FF 2A FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFF5F.l,X		; FF 5F FF FF
	sbc $D3FFA0.l,X		; FF A0 FF D3
	sbc $F9FFFF.l,X		; FF FF FF F9
	sbc $EEFFA3.l,X		; FF A3 FF EE
	beq  -9.b		; F0 F7
	sed		; F8
	xce		; FB
	jsr ($FCFB.w,X)		; FC FB FC
	sbc $F8FE.w,Y		; F9 FE F8
	sbc $FCFB.w,X		; FD FB FC
	sbc $C5FE.w,Y		; F9 FE C5
	pea $FAE2.w		; F4 E2 FA
	beq  -4.b		; F0 FC
	bpl  -2.b		; 10 FE
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	eor $FF.b,S		; 43 FF
	rti		; 40

	jsr ($FE42.w,X)		; FC 42 FE
	inx		; E8
	bcc -24.b		; 90 E8
	bcc  -8.b		; 90 F8
	brk $C8.b		; 00 C8
	bra -40.b		; 80 D8
	jsr $20D8.w		; 20 D8 20
	tya		; 98
	rti		; 40

	bvs -128.b		; 70 80
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	bcs -80.b		; B0 B0
	ldy #$B0.b		; A0 B0
	jsr $6030.w		; 20 30 60
	bvs -128.b		; 70 80
	bra   2.b		; 80 02
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($8B.b,X)		; 01 8B
	beq 124.b		; F0 7C
	plb		; AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $4ABE41.l,X		; BF 41 BE 4A
	lda $40.b,X		; B5 40
	rti		; 40

	tyx		; BB
	sta $34.b,S		; 83 34
	bmi   8.b		; 30 08
	brk $0C.b		; 00 0C
	tsb $9A9A.w		; 0C 9A 9A
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	asl $01.b		; 06 01
	ora $027D00.l		; 0F 00 7D 02
	adc ($0D.b)		; 72 0D
	adc $073F01.l,X		; 7F 01 3F 07
	and $003F02.l,X		; 3F 02 3F 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	asl $1D0C.w		; 0E 0C 1D
	bpl   3.b		; 10 03
	cop $0F.b		; 02 0F
	php		; 08
	ora [$05.b]		; 07 05
	cop $02.b		; 02 02
	ldx $4B52.w		; AE 52 4B
	lda $B7.b,X		; B5 B7
	pla		; 68
	inc $DE51.w		; EE 51 DE
	lda #$BA.b		; A9 BA
	eor $F73AF7.l,X		; 5F F7 3A F7
	ply		; 7A
	cmp ($83.b)		; D2 83
	lda $01.b,X		; B5 01
	jmp ($FB04.w)		; 6C 04 FB
	tax		; AA
	xce		; FB
	eor ($FF.b)		; 52 FF
	ldy #$7E.b		; A0 7E
	mvp $84,$FE		; 44 FE 84
	sta $80.b,S		; 83 80
	rts		; 60

	rti		; 40

	cpx #$80.b		; E0 80
	ldy #$40.b		; A0 40
	beq   0.b		; F0 00
	sed		; F8
	brk $DC.b		; 00 DC
	bmi  -2.b		; 30 FE
	dey		; 88
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	rti		; 40

	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	clv		; B8
	dey		; 88
	jmp.w [$7854]		; DC 54 78
	sed		; F8
	jsr ($3C3C.w,X)		; FC 3C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jsr ($3E18.w,X)		; FC 18 3E
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $285C28.l		; 5C 28 5C 28
	jmp $285C28.l		; 5C 28 5C 28
	lsr $7F28.w,X		; 5E 28 7F
	tsb $6F.b		; 04 6F
	cop $07.b		; 02 07
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  44.b		; 10 2C
	tsb $0E.b		; 04 0E
	asl A		; 0A
	ora [$05.b]		; 07 05
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
	brk $37.b		; 00 37
	beq  11.b		; F0 0B
	sei		; 78
	ora [$1E.b]		; 07 1E
	brk $0E.b		; 00 0E
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	eor $101740.l		; 4F 40 17 10
	ora #$08.b		; 09 08
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	ora [$1C.b]		; 07 1C
	ora [$30.b],Y		; 17 30
	bit $7A60.w,X		; 3C 60 7A
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $0B.b		; 00 0B
	php		; 08
	ora $001F00.l		; 0F 00 1F 00
	and $3001.w,X		; 3D 01 30
	sty $30.b		; 84 30
	sty $B8.b		; 84 B8
	sty $1C10.w		; 8C 10 1C
	ldy #$38.b		; A0 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$F8.b		; C0 F8
	bra  -8.b		; 80 F8
	bra 112.b		; 80 70
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	adc $FFAFFF.l,X		; 7F FF AF FF
	ora $BF.b,X		; 15 BF
	cop $0F.b		; 02 0F
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $FF.b		; 05 FF
	cop $FF.b		; 02 FF
	brk $BF.b		; 00 BF
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFB8FF.l,X		; FF FF B8 FF
	ora [$FF.b]		; 07 FF
	xce		; FB
	ora $20.b,S		; 03 20
	jmp $78235F.l		; 5C 5F 23 78
	sbc $2AFFBF.l,X		; FF BF FF 2A
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $C00700.l,X		; FF 00 07 C0
	cmp $F383A1.l,X		; DF A1 83 F3
	sed		; F8
	sbc [$F2.b]		; E7 F2
	dec $3EE6.w,X		; DE E6 3E
	sbc $FDFF.w,X		; FD FF FD
	sbc $FBFDFB.l,X		; FF FB FD FB
	adc ($70.b,S),Y		; 73 70
	trb $FC.b		; 14 FC
	inx		; E8
	plx		; FA
	bra -25.b		; 80 E7
	sec		; 38
	sbc $FDF8.w,X		; FD F8 FD
	sbc ($FB.b),Y		; F1 FB
	bvs  -5.b		; 70 FB
	jsr $20F8.w		; 20 F8 20
	brk $20.b		; 00 20
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	rti		; 40

	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	inc $7EFE.w		; EE FE 7E
	inc $C0C0.w,X		; FE C0 C0
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	inc $FFCE.w,X		; FE CE FF
	rol $28FF.w		; 2E FF 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$3F.b]		; 07 3F
	bra -127.b		; 80 81
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $0707FF.l,X		; FF FF 07 07
	phd		; 0B
	phd		; 0B
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	inc $FF50.w,X		; FE 50 FF
	ldy $57FF.w		; AC FF 57
	tax		; AA
	rol A		; 2A
	pei ($29.b)		; D4 29
	bne  85.b		; D0 55
	sty $1EEA.w		; 8C EA 1E
	and $C7.b,X		; 35 C7
	jsr ($7F63.w,X)		; FC 63 7F
	bcc  32.b		; 90 20
	jsr $010A.w		; 20 0A 01
	ora $000300.l		; 0F 00 03 00
	ora $04.b		; 05 04
	phx		; DA
	ora ($6E.b)		; 12 6E
	asl $A636.w		; 0E 36 A6
	ora $011E00.l,X		; 1F 00 1E 01
	asl $01.b		; 06 01
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
	sbc $867F26.l,X		; FF 26 7F 86
	adc $D15EE6.l,X		; 7F E6 5E D1
	eor $C6.b,X		; 55 C6
	phy		; 5A
	cmp $1C.b,S		; C3 1C
	cmp ($2F.b,X)		; C1 2F
	sbc ($6E.b,X)		; E1 6E
	pha		; 48
	stx $8E88.w		; 8E 88 8E
	dey		; 88
	lda ($80.b,X)		; A1 80
	tsx		; BA
	.db $82, $BD, $81		; 82 BD 81
	adc $405E41.l,X		; 7F 41 5E 40
	sbc $49F594.l		; EF 94 F5 49
	plx		; FA
	rts		; 60

	sbc [$40.b],Y		; F7 40
	sbc [$30.b],Y		; F7 30
	tas		; 1B
	sed		; F8
	ora $BC.b		; 05 BC
	cop $9E.b		; 02 9E
	jmp.w [$EA48]		; DC 48 EA
	ldy #$F7.b		; A0 F7
	bcc -49.b		; 90 CF
	bra  15.b		; 80 0F
	brk $27.b		; 00 27
	jsr $181B.w		; 20 1B 18
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	ldy #$30.b		; A0 30
	bne  24.b		; D0 18
	inx		; E8
	tsb $06F4.w		; 0C F4 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $00.b		; 00 00
	rts		; 60

	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	rti		; 40

	rts		; 60

	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	pld		; 2B
	adc $021F05.l,X		; 7F 05 1F 02
	asl $00.b		; 06 00
	ora $02.b,S		; 03 02
	adc [$05.b],Y		; 77 05
	ora $000300.l		; 0F 00 03 00
	brk $00.b		; 00 00
	adc $001F01.l,X		; 7F 01 1F 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	adc [$00.b],Y		; 77 00
	ora $000300.l		; 0F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3FFFED.l,X		; FF ED FF 3F
	sbc $00FF5F.l,X		; FF 5F FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0AFF00.l,X		; FF 00 FF 0A
	sbc $38FF05.l,X		; FF 05 FF 38
	adc $1C.b,S		; 63 1C
	eor [$1C.b]		; 47 1C
	lsr $34.b		; 46 34
	dec $70.b		; C6 70
	dec $78.b		; C6 78
	cpy $8C38.w		; CC 38 8C
	jsr $1E8C.w		; 20 8C 1E
	cop $3A.b		; 02 3A
	cop $38.b		; 02 38
	brk $78.b		; 00 78
	rti		; 40

	bit $3004.w,X		; 3C 04 30
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	asl $00.b		; 06 00
	ora $071E02.l		; 0F 02 1E 07
	and $1A7D0C.l,X		; 3F 0C 7D 1A
	plx		; FA
	bit $00.b,X		; 34 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	tsb $0F.b		; 04 0F
	php		; 08
	ora $243E13.l,X		; 1F 13 3E 24
	jmp ($F448.w,X)		; 7C 48 F4
	sta [$D0.b]		; 87 D0
	asl $38A0.w,X		; 1E A0 38
	rti		; 40

	bvs -64.b		; 70 C0
	jsr $8040.w		; 20 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ply		; 7A
	cop $E8.b		; 02 E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $11.b		; 04 11
	and $3F00.w,X		; 3D 00 3F
	bpl  63.b		; 10 3F
	tsb $083E.w		; 0C 3E 08
	rol $3A08.w,X		; 3E 08 3A
	tsb $0C3A.w		; 0C 3A 0C
	asl $0600.w		; 0E 00 06
	brk $18.b		; 00 18
	php		; 08
	asl $1C12.w,X		; 1E 12 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	bpl  28.b		; 10 1C
	bpl -56.b		; 10 C8
	brk $34.b		; 00 34
	iny		; C8
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
	bcc -48.b		; 90 D0
	tya		; 98
	cpx #$08.b		; E0 08
	bcc 120.b		; 90 78
	ldy #$B0.b		; A0 B0
	brk $E0.b		; 00 E0
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	bmi -112.b		; 30 90
	cpx #$C0.b		; E0 C0
	beq   0.b		; F0 00
	cpx #$60.b		; E0 60
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	ora $1F.b		; 05 1F
	cop $07.b		; 02 07
	ora ($1F.b,X)		; 01 1F
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	adc $FE1A.w,X		; 7D 1A FE
	php		; 08
	ror $2E18.w		; 6E 18 2E
	clc		; 18
	rol $2E18.w		; 2E 18 2E
	trb $11.b		; 14 11
	asl $000F.w		; 0E 0F 00
	rol $6C24.w,X		; 3E 24 6C
	stz $1C.b		; 64 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	php		; 08
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $09.b		; 00 09
	ora [$10.b]		; 07 10
	ora $C31F20.l		; 0F 20 1F C3
	bit $F807.w,X		; 3C 07 F8
	ora $0000F0.l		; 0F F0 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora #$09.b		; 09 09
	bpl  16.b		; 10 10
	jsr $C020.w		; 20 20 C0
	cpy #$00.b		; C0 00
	brk $4B.b		; 00 4B
	bmi -106.b		; 30 96
	tda		; 7B
	sty $40FF.w		; 8C FF 40
	sbc $83FE01.l,X		; FF 01 FE 83
	jmp ($30CF.w,X)		; 7C CF 30
	adc ($8E.b),Y		; 71 8E
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	bvc  80.b		; 50 50
	tsx		; BA
	tsx		; BA
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	cpy #$6F.b		; C0 6F
	bra -16.b		; 80 F0
	lda $DF36CF.l		; AF CF 36 DF
	and $007FA7.l		; 2F A7 7F 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $EE.b		; 00 EE
	asl $D0D9.w		; 0E D9 D0
	bmi  32.b		; 30 20
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	inx		; E8
	bpl -60.b		; 10 C4
	sei		; 78
	sty $F8.b		; 84 F8
	and ($CC.b)		; 32 CC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	pha		; 48
	pha		; 48
	dey		; 88
	dey		; 88
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	sec		; 38
	ror $F620.w		; 6E 20 F6
	ora [$FE.b],Y		; 17 FE
	and ($FE.b,X)		; 21 FE
	brk $DD.b		; 00 DD
	brk $A3.b		; 00 A3
	tsb $9D.b		; 04 9D
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $49.b		; 00 49
	eor ($20.b,X)		; 41 20
	brk $40.b		; 00 40
	jmp $3E22.w		; 4C 22 3E
	jmp $E362DC.l		; 5C DC 62 E3
	adc $A9EF23.l		; 6F 23 EF A9
	eor $86439D.l		; 4F 9D 43 86
	sed		; F8
	adc $FEFE.w,Y		; 79 FE FE
	sbc $439F03.l,X		; FF 03 9F 43
	sta [$34.b]		; 87 34
	ora $3A.b,S		; 03 3A
	sta ($BC.b,X)		; 81 BC
	brk $3E.b		; 00 3E
	jsr $787F.w		; 20 7F 78
	sbc $630302.l,X		; FF 02 03 63
	tda		; 7B
	sbc $C2FEF9.l,X		; FF F9 FE C2
	plx		; FA
	inc A		; 1A
	plx		; FA
	ply		; 7A
	sbc $7EFA.w,Y		; F9 FA 7E
	adc $BE39.w,X		; 7D 39 BE
	dec $D8.b		; C6 D8
	jsr ($E205.w,X)		; FC 05 E2
	and $8A.b,S		; 23 8A
	sta $787F18.l,X		; 9F 18 7F 78
	inc $FD70.w,X		; FE 70 FD
	brk $FE.b		; 00 FE
	ora ($F9.b,X)		; 01 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $3EFE.w,X		; FE FE 3E
	inc $028E.w,X		; FE 8E 02
	lsr $3636.w		; 4E 36 36
	php		; 08
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	inc $FFFE.w,X		; FE FE FF
	asl $00FF.w,X		; 1E FF 00
	adc ($00.b,S),Y		; 73 00
	and [$00.b],Y		; 37 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	php		; 08
	ora [$90.b]		; 07 90
	ora $3C1C63.l		; 0F 63 1C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$08.b]		; 07 08
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
	bvs   0.b		; 70 00
	ldy #$40.b		; A0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$5F.b		; E0 5F
	bcs -48.b		; B0 D0
	sbc $80C0A0.l,X		; FF A0 C0 80
	rts		; 60

	lda $E03C43.l,X		; BF 43 3C E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	sta $809FC0.l		; 8F C0 9F 80
	and $9F1F80.l,X		; 3F 80 1F 9F
	jsr $00A0.w		; 20 A0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cpy #$3B.b		; C0 3B
	rol $0EDB.w		; 2E DB 0E
	and $EA1520.l,X		; 3F 20 15 EA
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	trb $15.b		; 14 15
	dec $EE00.w		; CE 00 EE
	brk $CA.b		; 00 CA
	asl A		; 0A
	nop		; EA
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr ($FFFF.w,X)		; FC FF FF
	inc $67FF.w,X		; FE FF 67
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF00.w,X)		; FC 00 FF
	adc $FF70FF.l,X		; 7F FF 70 FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $8786.w,Y		; 79 86 87
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $C7.b		; 00 C7
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $040107.l,X		; FF 07 01 04
	sbc $12FE01.l,X		; FF 01 FE 12
	sbc $D22D.w		; ED 2D D2
	ldy $4D.b,X		; B4 4D
	sbc ($08.b,S),Y		; F3 08
	sbc $FF00.w,Y		; F9 00 FF
	brk $72.b		; 00 72
	adc ($64.b)		; 72 64
	stz $41.b		; 64 41
	eor ($42.b,X)		; 41 42
	.db $42, $12		; 42 12
	brk $1F.b		; 00 1F
	php		; 08
	cmp [$C0.b]		; C7 C0
	sed		; F8
	sed		; F8
	adc ($8C.b)		; 72 8C
	tsx		; BA
	mvn $30,$CC		; 54 CC 30
	jmp $E830.w		; 4C 30 E8
	bcs -128.b		; B0 80
	bcc -32.b		; 90 E0
	bmi -128.b		; 30 80
	rts		; 60

	tsb $04.b		; 04 04
	rti		; 40

	rti		; 40

	bpl  16.b		; 10 10
	jsr $00A0.w		; 20 A0 00
	bra -80.b		; 80 B0
	bne -64.b		; D0 C0
	brk $40.b		; 00 40
	rti		; 40

	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	adc $4F02.w,X		; 7D 02 4F
	bmi 125.b		; 30 7D
	cop $72.b		; 02 72
	ora $304F.w		; 0D 4F 30
	and $0000F1.l,X		; 3F F1 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	and $1C1E0F.l,X		; 3F 0F 1E 1C
	ora $0300.w		; 0D 00 03
	ora $07.b,S		; 03 07
	asl $C3.b		; 06 C3
	tsb $02FC.w		; 0C FC 02
	lda $F540.w,X		; BD 40 F5
	php		; 08
	adc $56EDB4.l		; 6F B4 ED 56
	sbc $DEDE.w		; ED DE DE
	sbc $FC3C.w		; ED 3C FC
	ora $03.b,S		; 03 03
	cmp ($93.b)		; D2 93
	dec A		; 3A
	and ($FC.b,S),Y		; 33 FC
	pha		; 48
	sbc $21FFA9.l,X		; FF A9 FF 21
	sbc $079F12.l,X		; FF 12 9F 07
	ror $F90F.w,X		; 7E 0F F9
	asl $2046.w,X		; 1E 46 20
	jsr ($FE00.w,X)		; FC 00 FE
	ora ($FF.b,X)		; 01 FF
	sta ($FD.b,X)		; 81 FD
	cpy #$66.b		; C0 66
	adc [$88.b],Y		; 77 88
	sta $80DE00.l		; 8F 00 DE 80
	clv		; B8
	rti		; 40

	rti		; 40

	stz $E09C.w		; 9C 9C E0
	rts		; 60

	xce		; FB
	sec		; 38
	ldy $47C2.w,X		; BC C2 47
	bra -68.b		; 80 BC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	jsr ($0FCC.w,X)		; FC CC 0F
	ora $C3.b,S		; 03 C3
	sec		; 38
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	beq   0.b		; F0 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $97.b		; 00 97
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $97.b		; 00 97
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	brk $7B.b		; 00 7B
	brk $AF.b		; 00 AF
	brk $15.b		; 00 15
	brk $2A.b		; 00 2A
	brk $15.b		; 00 15
	brk $7F.b		; 00 7F
	cop $DF.b		; 02 DF
	brk $BF.b		; 00 BF
	brk $7B.b		; 00 7B
	brk $AF.b		; 00 AF
	brk $15.b		; 00 15
	brk $2A.b		; 00 2A
	brk $15.b		; 00 15
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	ora $FF.b,X		; 15 FF
	brk $7F.b		; 00 7F
	brk $AF.b		; 00 AF
	brk $57.b		; 00 57
	ora #$FF.b		; 09 FF
	lsr $FF.b,X		; 56 FF
	ora #$FF.b		; 09 FF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $AF.b		; 00 AF
	brk $57.b		; 00 57
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	eor [$FF.b],Y		; 57 FF
	tax		; AA
	sbc $0AFF01.l,X		; FF 01 FF 0A
	adc $BFFF55.l,X		; 7F 55 FF BF
	sbc $00FF55.l,X		; FF 55 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $AAFF55.l,X		; FF 55 FF AA
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $00FF55.l,X		; FF 55 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FF55FF.l		; AF FF 55 FF
	sbc $FF55FF.l,X		; FF FF 55 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	sta $FF.b,X		; 95 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp ($3F.b,X)		; C1 3F
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FF5FFF.l,X		; FF FF 5F FF
	trb $001C.w		; 1C 1C 00
	sbc $AFFF50.l,X		; FF 50 FF AF
	sbc $00FF05.l,X		; FF 05 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $2EE31C.l,X		; FF 1C E3 2E
	cmp $C0.b,X		; D5 C0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $81FFFF.l,X		; FF FF FF 81
	sta ($10.b,X)		; 81 10
	bne   0.b		; D0 00
	sbc $5FFFE8.l,X		; FF E8 FF 5F
	sbc $15FFAA.l,X		; FF AA FF 15
	sbc $80FF02.l,X		; FF 02 FF 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $AAFF55.l,X		; FF 55 FF AA
	sbc $000000.l,X		; FF 00 00 00
	bra -128.b		; 80 80
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	cpy #$FF.b		; C0 FF
	inc $55FF.w,X		; FE FF 55
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$F8.b		; C0 F8
	bmi  -4.b		; 30 FC
	cld		; D8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$FF.b		; E0 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	adc $FFAAFF.l,X		; 7F FF AA FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $FF.b,X		; 55 FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AAFF54.l,X		; FF 54 FF AA
	sbc $00FF55.l,X		; FF 55 FF 00
	bit #$00.b		; 89 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bit #$00.b		; 89 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cmp $000500.l,X		; DF 00 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	eor $00.b		; 45 00
	cmp $000500.l,X		; DF 00 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	eor $00.b		; 45 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	sbc $005500.l,X		; FF 00 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	sbc $005500.l,X		; FF 00 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	eor $00.b,X		; 55 00
	tax		; AA
	brk $5F.b		; 00 5F
	ora $FF.b		; 05 FF
	brk $7F.b		; 00 7F
	brk $AA.b		; 00 AA
	brk $55.b		; 00 55
	brk $AF.b		; 00 AF
	brk $55.b		; 00 55
	brk $AA.b		; 00 AA
	brk $5F.b		; 00 5F
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $AA.b		; 00 AA
	brk $55.b		; 00 55
	brk $AF.b		; 00 AF
	brk $7D.b		; 00 7D
	brk $B7.b		; 00 B7
	rol A		; 2A
	sbc $2AFF55.l,X		; FF 55 FF 2A
	sbc $00B600.l,X		; FF 00 B6 00
	eor $00F702.l,X		; 5F 02 F7 00
	adc $B700.w,X		; 7D 00 B7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $B6.b		; 00 B6
	brk $5F.b		; 00 5F
	brk $F7.b		; 00 F7
	rol A		; 2A
	sbc $BFFF55.l,X		; FF 55 FF BF
	sbc $BFFFD7.l,X		; FF D7 FF BF
	sbc $15FF2A.l,X		; FF 2A FF 15
	sbc $00FFAA.l,X		; FF AA FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $AAFF00.l,X		; FF 00 FF AA
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $55FFAB.l,X		; FF AB FF 55
	sbc $00FFAA.l,X		; FF AA FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF02.l,X		; FF 02 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $AAFF00.l,X		; FF 00 FF AA
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $57FFFF.l,X		; FF FF FF 57
	sbc $00FFAA.l,X		; FF AA FF 00
	sbc $05FF00.l,X		; FF 00 FF 05
	sbc $05FFAA.l,X		; FF AA FF 05
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $BFFF00.l,X		; FF 00 FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFBF.l,X		; FF BF FF 00
	sbc $55FF02.l,X		; FF 02 FF 55
	sbc $56FFAB.l,X		; FF AB FF 56
	sbc $00FF05.l,X		; FF 05 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $05FFFF.l,X		; FF FF FF 05
	sbc $7FFFAA.l,X		; FF AA FF 7F
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $AAFF55.l,X		; FF 55 FF AA
	sbc $FFFF01.l,X		; FF 01 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $55FFFF.l,X		; FF FF FF 55
	sbc $FFFFAB.l,X		; FF AB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AAFF55.l,X		; FF 55 FF AA
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCFFFF.l,X		; FF FF FF FC
	sbc $FFFC00.l,X		; FF 00 FC FF
	sbc $56FFA0.l,X		; FF A0 FF 56
	sbc $7EFFA9.l,X		; FF A9 FF 7E
	sbc $C0FFFE.l,X		; FF FE FF C0
	sbc $FCFC00.l,X		; FF 00 FC FC
	inc $FEFC.w,X		; FE FC FE
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($F8F0.w,X)		; FC F0 F8
	cpy #$F0.b		; C0 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cld		; D8
	inc $FE58.w,X		; FE 58 FE
	cld		; D8
	inc $FC30.w,X		; FE 30 FC
	rti		; 40

	sed		; F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($FB.b,X)		; 01 FB
	brk $5F.b		; 00 5F
	brk $25.b		; 00 25
	brk $0A.b		; 00 0A
	brk $25.b		; 00 25
	brk $0A.b		; 00 0A
	brk $5F.b		; 00 5F
	brk $B7.b		; 00 B7
	brk $FB.b		; 00 FB
	brk $5F.b		; 00 5F
	brk $25.b		; 00 25
	brk $0A.b		; 00 0A
	brk $25.b		; 00 25
	brk $0A.b		; 00 0A
	brk $5F.b		; 00 5F
	brk $B7.b		; 00 B7
	eor $FF.b,X		; 55 FF
	cop $FB.b		; 02 FB
	brk $5F.b		; 00 5F
	brk $AB.b		; 00 AB
	brk $57.b		; 00 57
	brk $BF.b		; 00 BF
	and $FF.b		; 25 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $5F.b		; 00 5F
	brk $AB.b		; 00 AB
	brk $57.b		; 00 57
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	eor $FFAAFF.l,X		; 5F FF AA FF
	ora $FF.b,X		; 15 FF
	brk $7F.b		; 00 7F
	ora $FF.b		; 05 FF
	plb		; AB
	sbc $00FF57.l,X		; FF 57 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $AAFFFF.l,X		; FF FF FF AA
	sbc $AAFF55.l,X		; FF 55 FF AA
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $AAFFFF.l,X		; FF FF FF AA
	sbc $AFFF55.l,X		; FF 55 FF AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $01FFFE.l,X		; FF FE FF 01
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	sta ($FF.b)		; 92 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	sbc $FFAFFF.l,X		; FF FF AF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $FF.b		; 00 FF
	lda $0001.w,Y		; B9 01 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $56FF01.l,X		; FF 01 FF 56
	sbc $00FFA8.l,X		; FF A8 FF 00
	sbc $FF007E.l,X		; FF 7E 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFC0.l,X		; FF C0 FF 00
	cpy #$80.b		; C0 80
	beq   2.b		; F0 02
	sbc $ABFF15.l,X		; FF 15 FF AB
	sbc $E8FF5F.l,X		; FF 5F FF E8
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy #$00.b		; C0 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E0FFFF.l,X		; FF FF FF E0
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	sbc $FFFF57.l,X		; FF 57 FF FF
	sbc $00FFFC.l,X		; FF FC FF 00
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFE0.l,X		; FF E0 FF 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	sbc $F0FFFF.l,X		; FF FF FF F0
	sbc $00FF00.l,X		; FF 00 FF 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $14.b		; 00 14
	php		; 08
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
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	php		; 08
	ora [$90.b]		; 07 90
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$08.b]		; 07 08
	php		; 08
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora #$07.b		; 09 07
	bpl  15.b		; 10 0F
	jsr $C31F.w		; 20 1F C3
	bit $F807.w,X		; 3C 07 F8
	ora $0000F0.l		; 0F F0 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora #$09.b		; 09 09
	bpl  16.b		; 10 10
	jsr $C020.w		; 20 20 C0
	cpy #$00.b		; C0 00
	brk $4B.b		; 00 4B
	bmi -106.b		; 30 96
	tda		; 7B
	sty $40FF.w		; 8C FF 40
	sbc $83FE01.l,X		; FF 01 FE 83
	jmp ($30CF.w,X)		; 7C CF 30
	adc ($8E.b),Y		; 71 8E
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	bvc  80.b		; 50 50
	tsx		; BA
	tsx		; BA
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	cpy #$6F.b		; C0 6F
	bra -16.b		; 80 F0
	lda $DF36CF.l		; AF CF 36 DF
	and $007FA7.l		; 2F A7 7F 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $EE.b		; 00 EE
	asl $D0D9.w		; 0E D9 D0
	bmi  32.b		; 30 20
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	inx		; E8
	bpl -60.b		; 10 C4
	sei		; 78
	sty $F8.b		; 84 F8
	and ($CC.b)		; 32 CC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	pha		; 48
	pha		; 48
	dey		; 88
	dey		; 88
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
	phd		; 0B
	tsb $0B.b		; 04 0B
	ora $1F.b		; 05 1F
	cop $1F.b		; 02 1F
	cop $3F.b		; 02 3F
	tsb $3F.b		; 04 3F
	tsb $3F.b		; 04 3F
	brk $1D.b		; 00 1D
	ora $05.b,S		; 03 05
	ora ($05.b,X)		; 01 05
	brk $0A.b		; 00 0A
	php		; 08
	asl A		; 0A
	php		; 08
	asl $12.b,X		; 16 12
	ora $11.b,X		; 15 11
	ora $030D.w		; 0D 0D 03
	brk $ED.b		; 00 ED
	rol A		; 2A
	xce		; FB
	trb $57.b		; 14 57
	nop		; EA
	cmp [$7A.b],Y		; D7 7A
	cmp [$FA.b],Y		; D7 FA
	cmp [$BA.b],Y		; D7 BA
	lda [$DA.b],Y		; B7 DA
	tyx		; BB
	sbc [$2A.b],Y		; F7 2A
	sec		; 38
	lsr $52.b,X		; 56 52
	inc $FE04.w		; EE 04 FE
	sty $FE.b		; 84 FE
	tsb $FF.b		; 04 FF
	eor $FF.b		; 45 FF
	and $FF.b		; 25 FF
	php		; 08
	bmi  -4.b		; 30 FC
	plp		; 28
	cpx $E620.w		; EC 20 E6
	bit $66.b		; 24 66
	clc		; 18
	adc ($1E.b,S),Y		; 73 1E
	adc ($14.b,S),Y		; 73 14
	and ($07.b),Y		; 31 07
	and ($C8.b),Y		; 31 C8
	iny		; C8
	bvc  64.b		; 50 40
	jmp $001844.l		; 5C 44 18 00
	rol $2C22.w		; 2E 22 2C
	jsr $000E.w		; 20 0E 00
	asl $1D10.w,X		; 1E 10 1D
	and ($0D.b),Y		; 31 0D
	and ($0A.b,X)		; 21 0A
	and $3A.b,S		; 23 3A
	adc $18.b,S		; 63 18
	eor $14.b,S		; 43 14
	eor [$34.b]		; 47 34
	lsr $70.b		; 46 70
	dec $0E.b		; C6 0E
	brk $1E.b		; 00 1E
	brk $1D.b		; 00 1D
	ora ($1D.b,X)		; 01 1D
	ora ($3E.b,X)		; 01 3E
	cop $3A.b		; 02 3A
	cop $38.b		; 02 38
	brk $3C.b		; 00 3C
	tsb $00.b		; 04 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
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
	brk $2E.b		; 00 2E
	sbc ($2E.b,X)		; E1 2E
	adc ($0E.b,X)		; 61 0E
	adc ($1F.b,X)		; 61 1F
	adc ($16.b),Y		; 71 16
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	sec		; 38
	phd		; 0B
	clc		; 18
	lsr $1E40.w,X		; 5E 40 1E
	brk $3F.b		; 00 3F
	and ($2E.b,X)		; 21 2E
	jsr $000F.w		; 20 0F 00
	ora $101710.l,X		; 1F 10 17 10
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	dec $68.b		; C6 68
	cpx $FC38.w		; EC 38 FC
	clc		; 18
	jsr ($F410.w,X)		; FC 10 F4
	bmi -12.b		; 30 F4
	sec		; 38
	ror $2C.b,X		; 76 2C
	ror $3C.b		; 66 3C
	tsb $10.b		; 04 10
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	rts		; 60

	pla		; 68
	rts		; 60

	pha		; 48
	rti		; 40

	tsb $1804.w		; 0C 04 18
	brk $2C.b		; 00 2C
	ror $28.b		; 66 28
	.db $62, $28, $62		; 62 28 62
	tsb $0C62.w		; 0C 62 0C
	.db $62, $0C, $22		; 62 0C 22
	tsb $1422.w		; 0C 22 14
	and ($18.b)		; 32 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	trb $1C00.w		; 1C 00 1C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	and ($07.b)		; 32 07
	bmi  63.b		; 30 3F
	brk $2F.b		; 00 2F
	asl $1F.b,X		; 16 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1C.b		; 04 1C
	bpl  28.b		; 10 1C
	bpl   2.b		; 10 02
	cop $1E.b		; 02 1E
	php		; 08
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	ora $051E04.l,X		; 1F 04 1E 05
	asl $3C05.w,X		; 1E 05 3C
	ora $7D083F.l		; 0F 3F 08 7D
	bpl  -8.b		; 10 F8
	bmi -16.b		; 30 F0
	brk $0E.b		; 00 0E
	asl A		; 0A
	ora $0A0F0A.l		; 0F 0A 0F 0A
	ora $141C10.l,X		; 1F 10 1C 14
	sec		; 38
	plp		; 28
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $28C6.w		; 1C C6 28
	.db $62, $0C, $62		; 62 0C 62
	trb $33.b		; 14 33
	asl $33.b		; 06 33
	tsb $0519.w		; 0C 19 05
	trb $000F.w		; 1C 0F 00
	sei		; 78
	rti		; 40

	trb $3C00.w		; 1C 00 3C
	jsr $020E.w		; 20 0E 02
	trb $0610.w		; 1C 10 06
	brk $0A.b		; 00 0A
	php		; 08
	ora ($01.b,X)		; 01 01
	sed		; F8
	jsr $70B8.w		; 20 B8 70
	stz $18.b,X		; 74 18
	jmp ($5E10.w,X)		; 7C 10 5E
	plp		; 28
	rol $2F0C.w,X		; 3E 0C 2F
	asl $1F.b,X		; 16 1F
	brk $70.b		; 00 70
	bvc 112.b		; 50 70
	brk $38.b		; 00 38
	jsr $2838.w		; 20 38 28
	bit $1C14.w,X		; 3C 14 1C
	bpl  30.b		; 10 1E
	php		; 08
	brk $00.b		; 00 00
	iny		; C8
	bcs -76.b		; B0 B4
	iny		; C8
	nop		; EA
	sty $FA.b,X		; 94 FA
	cpy $F4.b		; C4 F4
	pla		; 68
	jmp ($74E0.w,X)		; 7C E0 74
	sed		; F8
	sei		; 78
	ldy #$B0.b		; A0 B0
	brk $D8.b		; 00 D8
	bpl -36.b		; 10 DC
	pha		; 48
	cpx $E828.w		; EC 28 E8
	bra -16.b		; 80 F0
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	bvc -80.b		; 50 B0
	pla		; 68
	cpx #$18.b		; E0 18
	bcs 120.b		; B0 78
	bra -120.b		; 80 88
	beq   8.b		; F0 08
	beq  12.b		; F0 0C
	sei		; 78
	tsb $0470.w		; 0C 70 04
	cpx #$80.b		; E0 80
	bcc -112.b		; 90 90
	rti		; 40

	rti		; 40

	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $0F.b		; 00 0F
	trb $1808.w		; 1C 08 18
	asl $0C30.w,X		; 1E 30 0C
	jsr $210D.w		; 20 0D 21
	and $1A61.w,X		; 3D 61 1A
	eor $1A.b,S		; 43 1A
	eor $00.b,S		; 43 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	ora ($3D.b,X)		; 01 3D
	ora ($BB.b,X)		; 01 BB
	sbc [$FB.b],Y		; F7 FB
	and $9F83FF.l,X		; 3F FF 83 9F
	cpx #$01.b		; E0 01
	cmp [$01.b]		; C7 01
	cmp [$01.b]		; C7 01
	sta $00.b,S		; 83 00
	sta $FF.b,S		; 83 FF
	php		; 08
	adc $181B40.l,X		; 7F 40 1B 18
	rti		; 40

	rti		; 40

	.db $82, $82, $82		; 82 82 82
	.db $82, $00, $00		; 82 00 00
	ora ($01.b,X)		; 01 01
	tsb $C6.b		; 04 C6
	bit $047E.w,X		; 3C 7E 04
	adc $067F06.l,X		; 7F 06 7F 06
	and $041D05.l,X		; 3F 05 1D 04
	trb $0C04.w		; 1C 04 0C
	sei		; 78
	rti		; 40

	brk $00.b		; 00 00
	dec A		; 3A
	dec A		; 3A
	clc		; 18
	clc		; 18
	ora $0A19.w,Y		; 19 19 0A
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	rts		; 60

	iny		; C8
	bit $7CE0.w		; 2C E0 7C
	brk $7E.b		; 00 7E
	sec		; 38
	ror $3E08.w,X		; 7E 08 3E
	tsb $1E2D.w		; 0C 2D 1E
	ora $003004.l,X		; 1F 04 30 00
	bvc  64.b		; 50 40
	php		; 08
	php		; 08
	bit $1C04.w,X		; 3C 04 1C
	trb $1C.b		; 14 1C
	bpl  30.b		; 10 1E
	brk $0E.b		; 00 0E
	asl A		; 0A
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($0C.b,X)		; 01 0C
	phd		; 0B
	sec		; 38
	rol $C1E0.w		; 2E E0 C1
	ora ($DE.b,X)		; 01 DE
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $FE.b		; 00 FE
	brk $E1.b		; 00 E1
	ora ($15.b,X)		; 01 15
	adc ($5E.b),Y		; 71 5E
	cpy #$7C.b		; C0 7C
	brk $F3.b		; 00 F3
	ora $8C.b,S		; 03 8C
	ora $807F70.l		; 0F 70 7F 80
	jsr ($F000.w,X)		; FC 00 F0
	asl $3F00.w		; 0E 00 3F
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F3.b		; 00 F3
	ora $8C.b,S		; 03 8C
	tsb $7070.w		; 0C 70 70
	bra -128.b		; 80 80
	xce		; FB
	adc $7F.b,X		; 75 7F
	sta ($9F.b),Y		; 91 9F
	sbc ($87.b,X)		; E1 87
	sbc $F003.w,Y		; F9 03 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	adc $8A9B0A.l,X		; 7F 0A 9B 8A
	adc $62.b,S		; 63 62
	adc ($72.b,S),Y		; 73 72
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C1FECC.l,X		; FF CC FE C1
	sbc $F0E3.w,X		; FD E3 F0
	sta $0103FC.l		; 8F FC 03 01
	ora $EF3849.l,X		; 1F 49 38 EF
	brk $DE.b		; 00 DE
	ora ($ED.b)		; 12 ED
	and $12F2.w		; 2D F2 12
	cmp $00004F.l		; CF 4F 00 00
	cop $02.b		; 02 02
	ora [$10.b],Y		; 17 10
	eor $007F40.l,X		; 5F 40 7F 00
	ora $C0C000.l,X		; 1F 00 C0 C0
	ora $FF00FF.l		; 0F FF 00 FF
	bra -128.b		; 80 80
	sbc $9801.w,Y		; F9 01 98
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $3F.b		; 00 3F
	brk $F0.b		; 00 F0
	beq   0.b		; F0 00
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $E7.b		; 00 E7
	ora [$D0.b]		; 07 D0
	trb $06F0.w		; 1C F0 06
	jsr ($8C06.w,X)		; FC 06 8C
	stx $28.b		; 86 28
	inc $1E10.w		; EE 10 1E
	bra  -4.b		; 80 FC
	brk $F0.b		; 00 F0
	cpx #$00.b		; E0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $78.b		; 00 78
	brk $54.b		; 00 54
	mvp $0C,$EC		; 44 EC 0C
	bvs 112.b		; 70 70
	bra -128.b		; 80 80
	ora $03FF00.l		; 0F 00 FF 03
	sbc $03FC1C.l,X		; FF 1C FC 03
	lda [$48.b],Y		; B7 48
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tsb $637F.w		; 0C 7F 63
	ora $80C80C.l		; 0F 0C C8 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	phd		; 0B
	sei		; 78
	eor $00FEC0.l		; 4F C0 FE 00
	cmp $03.b,S		; C3 03
	bvs 127.b		; 70 7F
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $00FF00.l,X		; 3F 00 FF 00
	jsr ($8F00.w,X)		; FC 00 8F
	ora $00C0C0.l		; 0F C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1A.b,S		; 03 1A
	asl $FF.b		; 06 FF
	php		; 08
	jsr ($FE78.w,X)		; FC 78 FE
	sta $84.b,S		; 83 84
	tda		; 7B
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1B.b		; 00 1B
	bpl  -5.b		; 10 FB
	bra  -7.b		; 80 F9
	adc $80F8.w,Y		; 79 F8 80
	brk $00.b		; 00 00
	inc A		; 1A
	tsb $14.b		; 04 14
	php		; 08
	trb $08.b		; 14 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	adc $00FC80.l,X		; 7F 80 FC 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	tsb $6060.w		; 0C 60 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	ora $EF02.w,X		; 1D 02 EF
	ora ($FF.b,S),Y		; 13 FF
	bit $01FE.w,X		; 3C FE 01
	adc $E606.w,Y		; 79 06 E6
	clc		; 18
	iny		; C8
	bmi -112.b		; 30 90
	rts		; 60

	ora $01.b,S		; 03 01
	ora $C3FF0C.l,X		; 1F 0C FF C3
	ora $181E1E.l,X		; 1F 1E 1E 18
	sec		; 38
	jsr $4070.w		; 20 70 40
	cpx #$80.b		; E0 80
	sbc ($61.b),Y		; F1 61
	jsr ($908F.w,X)		; FC 8F 90
	adc $809060.l		; 6F 60 90 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	bra -29.b		; 80 E3
	adc $E0.b,S		; 63 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sbc $00F800.l,X		; FF 00 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
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
	and $1700.w,Y		; 39 00 17
	ora [$0F.b]		; 07 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $000F07.l		; 0F 07 0F 00
	asl $02.b,X		; 16 02
	ora $071F07.l		; 0F 07 1F 07
	ora $071F07.l,X		; 1F 07 1F 07
	ora $061F07.l,X		; 1F 07 1F 06
	ora $C51BE1.l,X		; 1F E1 1B C5
	ora $F4.b,S		; 03 F4
	xce		; FB
	pea $F4FB.w		; F4 FB F4
	sbc ($F5.b),Y		; F1 F5
	beq -11.b		; F0 F5
	beq -123.b		; F0 85
	txa		; 8A
	brk $DC.b		; 00 DC
	brk $38.b		; 00 38
	ora ($F9.b,X)		; 01 F9
	cmp ($F9.b,X)		; C1 F9
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	.db $82, $FA, $02		; 82 FA 02
	plx		; FA
	ora ($47.b),Y		; 11 47
	ora $1947.w,Y		; 19 47 19
	eor [$1D.b]		; 47 1D
	eor [$19.b]		; 47 19
	eor $38.b,S		; 43 38
	adc $3C.b,S		; 63 3C
	adc $3C.b,S		; 63 3C
	adc $3A.b,S		; 63 3A
	cop $3A.b		; 02 3A
	cop $3C.b		; 02 3C
	tsb $38.b		; 04 38
	brk $3C.b		; 00 3C
	brk $1D.b		; 00 1D
	ora ($1D.b,X)		; 01 1D
	ora ($1D.b,X)		; 01 1D
	ora ($60.b,X)		; 01 60
	tsb $0C60.w		; 0C 60 0C
	pla		; 68
	tsb $0C68.w		; 0C 68 0C
	pla		; 68
	tsb $0C68.w		; 0C 68 0C
	pla		; 68
	tsb $0C68.w		; 0C 68 0C
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	dec A		; 3A
	trb $3A.b		; 14 3A
	trb $3E.b		; 14 3E
	bpl 118.b		; 10 76
	clc		; 18
	ror $7620.w,X		; 7E 20 76
	jsr $00F0.w		; 20 F0 00
	cpx #$1C00.w		; E0 00 1C
	php		; 08
	trb $1808.w		; 1C 08 18
	php		; 08
	sec		; 38
	jsr $1030.w		; 20 30 10
	jsr $6000.w		; 20 00 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	bne  96.b		; D0 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -56.b		; 70 C8
	bvs -56.b		; 70 C8
	bvc -52.b		; 50 CC
	bpl -52.b		; 10 CC
	clc		; 18
	cpy $6430.w		; CC 30 64
	bmi 100.b		; 30 64
	asl $60.b		; 06 60
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	sec		; 38
	php		; 08
	sei		; 78
	pha		; 48
	bvs  64.b		; 70 40
	clc		; 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $2080.w		; 20 80 20
	rti		; 40

	jsr $3060.w		; 20 60 30
	bvs   0.b		; 70 00
	inx		; E8
	bpl  -8.b		; 10 F8
	rti		; 40

	inx		; E8
	bpl  56.b		; 10 38
	cpy #$00C0.w		; C0 C0 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	jsr $80C0.w		; 20 C0 80
	bmi  32.b		; 30 20
	cpy #$F000.w		; C0 00 F0
	sei		; 78
	sed		; F8
	sei		; 78
	clv		; B8
	sei		; 78
	sed		; F8
	sec		; 38
	cld		; D8
	sec		; 38
	sei		; 78
	tya		; 98
	pla		; 68
	stz $DC2C.w		; 9C 2C DC
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bpl 124.b		; 10 7C
	bpl -68.b		; 10 BC
	brk $3C.b		; 00 3C
	bra  28.b		; 80 1C
	bra  30.b		; 80 1E
	cpy #$EE1E.w		; C0 1E EE
	ora $6E.b,X		; 15 6E
	ora $7E.b,X		; 15 7E
	ora $5E.b		; 05 5E
	and $3F.b		; 25 3F
	tsb $201F.w		; 0C 1F 20
	ora $330230.l		; 0F 30 02 33
	and [$22.b],Y		; 37 22
	and [$22.b],Y		; 37 22
	and $0A2F2A.l		; 2F 2A 2F 0A
	asl $0E02.w		; 0E 02 0E
	asl $1010.w		; 0E 10 10
	trb $ED10.w		; 1C 10 ED
	phx		; DA
	inc $F6F5.w		; EE F5 F6
	sbc $60FF.w		; ED FF 60
	inc $F461.w,X		; FE 61 F4
	ora $58C340.l		; 0F 40 C3 58
	cmp $FE.b,S		; C3 FE
	bit $FF.b		; 24 FF
	asl A		; 0A
	sbc $96F612.l,X		; FF 12 F6 96
	beq -112.b		; F0 90
	asl A		; 0A
	asl A		; 0A
	ldx $BE82.w,Y		; BE 82 BE
	.db $82, $3C, $CC		; 82 3C CC
	dec $9F0E.w,X		; DE 0E 9F
	ora $0F0D15.l		; 0F 15 0D 0F
	tsb $0F.b		; 04 0F
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	asl $0F04.w		; 0E 04 0F
	ora [$0F.b]		; 07 0F
	brk $0F.b		; 00 0F
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C1704.l		; 0F 04 17 0C
	ora $0C1F04.l,X		; 1F 04 1F 0C
	and $103F08.l,X		; 3F 08 3F 10
	xce		; FB
	brk $F0.b		; 00 F0
	brk $06.b		; 00 06
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	asl A		; 0A
	tsb $1C00.w		; 0C 00 1C
	trb $18.b		; 14 18
	php		; 08
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	jmp ($7C80.w,X)		; 7C 80 7C
	bmi 124.b		; 30 7C
	bpl  92.b		; 10 5C
	bmi  60.b		; 30 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  58.b		; 10 3A
	trb $08.b		; 14 08
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	trb $1808.w		; 1C 08 18
	sbc $18FF18.l,X		; FF 18 FF 18
	sbc $7710.w,X		; FD 10 77
	tsb $67.b		; 04 67
	bit $2866.w		; 2C 66 28
	.db $62, $38, $62		; 62 38 62
	adc ($61.b,X)		; 61 61
	adc ($61.b,X)		; 61 61
	rts		; 60

	rts		; 60

	bit $3824.w		; 2C 24 38
	jsr $0018.w		; 20 18 00
	trb $1C00.w		; 1C 00 1C
	brk $50.b		; 00 50
	cld		; D8
	rti		; 40

	cpy $CC58.w		; CC 58 CC
	bvc -60.b		; 50 C4
	cli		; 58
	dec $3C.b		; C6 3C
	inc $28.b		; E6 28
.ACCU 8
	sep #$2C		; E2 2C
	.db $62, $A0, $80		; 62 A0 80
	clv		; B8
	dey		; 88
	bcs -128.b		; B0 80
	clv		; B8
	bra -68.b		; 80 BC
	sty $58.b		; 84 58
	rti		; 40

	jmp $001C40.l		; 5C 40 1C 00
	asl $06.b		; 06 06
	ora $05.b,X		; 15 05
	tsa		; 3B
	asl A		; 0A
	and $215E04.l,X		; 3F 04 5E 21
	ldx $BE45.w,Y		; BE 45 BE
	eor $BE.b		; 45 BE
	eor $04.b		; 45 04
	ora $020F01.l,X		; 1F 01 0F 02
	asl $1410.w		; 0E 10 14
	pld		; 2B
	asl A		; 0A
	eor [$12.b],Y		; 57 12
	eor [$12.b],Y		; 57 12
	eor [$12.b],Y		; 57 12
	adc $8AF470.l		; 6F 70 F4 8A
	xba		; EB
	trb $F9.b		; 14 F9
	asl $F4.b		; 06 F4
	phb		; 8B
	phx		; DA
	lda $EA.b		; A5 EA
	cmp $ED.b,X		; D5 ED
	phx		; DA
	rti		; 40

	beq -117.b		; F0 8B
	sta $34.b,S		; 83 34
	and ($D6.b,X)		; 21 D6
	bne -37.b		; D0 DB
	bvc  -3.b		; 50 FD
	cli		; 58
	sbc $FE28.w,X		; FD 28 FE
	bit $2C.b		; 24 2C
	adc $0C.b,S		; 63 0C
	adc $0C.b,S		; 63 0C
	adc $0C.b,S		; 63 0C
	adc $0C.b,S		; 63 0C
	adc $1E.b,S		; 63 1E
	and ($12.b,S),Y		; 33 12
	and ($1E.b,S),Y		; 33 1E
	and $3D011D.l,X		; 3F 1D 01 3D
	and ($3E.b,X)		; 21 3E
	jsl $3E223E.l		; 22 3E 22 3E
	jsl $0C000C.l		; 22 0C 00 0C
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	tsb $F0.b		; 04 F0
	sty $F0.b		; 84 F0
	sty $B0.b		; 84 B0
	sty $B0.b		; 84 B0
	sty $30.b		; 84 30
	sty $00.b		; 84 00
	sty $60.b		; 84 60
	inc $F8.b		; E6 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	bra  28.b		; 80 1C
	tsb $38.b		; 04 38
	.db $62, $38, $62		; 62 38 62
	sec		; 38
	.db $62, $3C, $66		; 62 3C 66
	bpl  70.b		; 10 46
	bpl  70.b		; 10 46
	bpl  68.b		; 10 44
	clc		; 18
	jmp $001C.w		; 4C 1C 00
	trb $1C00.w		; 1C 00 1C
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	jmp $007C.w		; 4C 7C 00
	jmp ($7C30.w,X)		; 7C 30 7C
	bpl 124.b		; 10 7C
	bpl 112.b		; 10 70
	trb $1C70.w		; 1C 70 1C
	sei		; 78
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	bit $3C20.w,X		; 3C 20 3C
	jsr $2030.w		; 20 30 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $040F.w		; 0C 0F 04
	ora $000A05.l		; 0F 05 0A 00
	ora ($0A.b)		; 12 0A
	rtl		; 6B

	txs		; 9A
	lda ($60.b,X)		; A1 60
	eor ($30.b),Y		; 51 30
	adc $0038.w,Y		; 79 38 00
	ora $050F00.l		; 0F 00 0F 05
	ora $041F05.l		; 0F 05 1F 04
	inc $FE1E.w,X		; FE 1E FE
	asl $067E.w		; 0E 7E 06
	ror $1C2C.w,X		; 7E 2C 1C
	inc A		; 1A
	asl $05.b		; 06 05
	ora $0B.b,S		; 03 0B
	ora [$14.b]		; 07 14
	tsb $182B.w		; 0C 2B 18
	trb $0C.b		; 14 0C
	ora #$00.b		; 09 00
	ora $3F.b,S		; 03 3F
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora $1F.b,S		; 03 1F
	tsb $3C.b		; 04 3C
	ora $1F.b,S		; 03 1F
	asl $0E.b		; 06 0E
	sbc $007F00.l,X		; FF 00 7F 00
	lda $003F80.l,X		; BF 80 3F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $07FB00.l,X		; 7F 00 FB 07
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	ora [$07.b]		; 07 07
	ldx $5EC4.w		; AE C4 5E
	stz $29.b		; 64 29
	dec A		; 3A
	sbc ($01.b,X)		; E1 01
	jsr ($FE00.w,X)		; FC 00 FE
	bit $DF.b,X		; 34 DF
	jsr $1FEE.w		; 20 EE 1F
	brk $EE.b		; 00 EE
	bra  -2.b		; 80 FE
	cpy $FF.b		; C4 FF
	asl $031F.w,X		; 1E 1F 03
	ora $35.b,S		; 03 35
	and $20.b,X		; 35 20
	jsr $1F1F.w		; 20 1F 1F
	bpl   0.b		; 10 00
	clc		; 18
	brk $F4.b		; 00 F4
	clc		; 18
	ldy $9268.w		; AC 68 92
	sta $3F.b		; 85 3F
	asl $FE.b		; 06 FE
	tsb $F2.b		; 04 F2
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $FC.b		; 00 FC
	bpl  -4.b		; 10 FC
	pla		; 68
	sbc $00C7C0.l		; EF C0 C7 00
	asl $0C.b		; 06 0C
	asl $1FFF.w		; 0E FF 1F
	sbc $30FC00.l,X		; FF 00 FC 30
	jmp.w [$EF30]		; DC 30 EF
	bpl  -1.b		; 10 FF
	brk $7F.b		; 00 7F
	sbc ($FF.b,S),Y		; F3 FF
	sty $1F1F.w		; 8C 1F 1F
	brk $00.b		; 00 00
	and ($33.b,S),Y		; 33 33
	and ($33.b,S),Y		; 33 33
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sbc $9E9EFF.l,X		; FF FF 9E 9E
	ldy $6020.w,X		; BC 20 60
	rti		; 40

	beq -128.b		; F0 80
	jmp $3470.w		; 4C 70 34
	sec		; 38
	dex		; CA
	ora $8675.w		; 0D 75 86
	lda $40C2.w,Y		; B9 C2 40
	jmp ($E080.w,X)		; 7C 80 E0
	brk $F0.b		; 00 F0
	bra  -4.b		; 80 FC
	cpy #$30FC.w		; C0 FC 30
	and $E4CFC8.l,X		; 3F C8 CF E4
	sbc [$33.b]		; E7 33
	ora ($75.b),Y		; 11 75
	and ($56.b,S),Y		; 33 56
	.db $62, $E5, $43		; 62 E5 43
	lda [$42.b]		; A7 42
	plb		; AB
	mvp $4C,$B7		; 44 B7 4C
	lsr A		; 4A
	and $3300.w,Y		; 39 00 33
	brk $77.b		; 00 77
	ora ($77.b,X)		; 01 77
	brk $E7.b		; 00 E7
	brk $E6.b		; 00 E6
	brk $EC.b		; 00 EC
	ora ($FD.b,X)		; 01 FD
	ora $7D.b		; 05 7D
	adc $187F00.l,X		; 7F 00 7F 18
	sbc $01FF19.l,X		; FF 19 FF 01
	lda $F36D70.l,X		; BF 70 6D F3
	cmp $D3FFEB.l,X		; DF EB FF D3
	bra -128.b		; 80 80
	tya		; 98
	tya		; 98
	ora $0119.w,Y		; 19 19 01
	ora ($70.b,X)		; 01 70
	bvs -13.b		; 70 F3
	sbc ($E3.b,S),Y		; F3 E3
	xba		; EB
	cmp [$D7.b]		; C7 D7
	cmp $F73E.w,X		; DD 3E F7
	sed		; F8
	adc $06E583.l,X		; 7F 83 E5 06
	sbc $E0D1F0.l		; EF F0 D1 E0
	lda #$70.b		; A9 70
	eor [$38.b],Y		; 57 38
	rol $FC3E.w,X		; 3E 3E FC
	jsr ($C3C0.w,X)		; FC C0 C3
	clc		; 18
	ora $00FF00.l,X		; 1F 00 FF 00
	sbc ($00.b),Y		; F1 00
	sbc $7F00.w,Y		; F9 00 7F
	sta $80FF03.l,X		; 9F 03 FF 80
	adc $007F00.l,X		; 7F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $8EB580.l,X		; FF 80 B5 8E
	adc $63.b,S		; 63 63
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	lsr $00CE.w		; 4E CE 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $0E.b		; 02 0E
	tsb $0E.b		; 04 0E
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0E00.w		; 0E 00 0E
	lda $1CBB18.l,X		; BF 18 BB 1C
	plb		; AB
	stz $0C1F.w		; 9C 1F 0C
	cmp $574E.w,X		; DD 4E 57
	asl $267F.w		; 0E 7F 26
	rol A		; 2A
	ora [$5C.b]		; 07 5C
	jmp.w [$DC5C]		; DC 5C DC
	jmp $EEEEDC.l		; 5C DC EE EE
	rol $2EEE.w		; 2E EE 2E
	ror $6F0F.w		; 6E 0F 6F
	ora [$37.b],Y		; 17 37
	xce		; FB
	ora [$FB.b]		; 07 FB
	ora [$FF.b]		; 07 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $A8.b,S		; 03 A8
	bmi -116.b		; 30 8C
	php		; 08
	dey		; 88
	bpl -16.b		; 10 F0
	jsr $20F1.w		; 20 F1 20
	cmp ($21.b)		; D2 21
	sbc ($03.b,X)		; E1 03
	inc $03.b		; E6 03
	rti		; 40

	sei		; 78
	bvs 124.b		; 70 7C
	rts		; 60

	sei		; 78
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $33.b		; 00 33
	brk $23.b		; 00 23
	brk $27.b		; 00 27
	ora $02.b		; 05 02
	eor [$03.b]		; 47 03
	eor $03.b		; 45 03
	ora $41.b,S		; 03 41
	jsl $412340.l		; 22 40 23 41
	eor $23.b,X		; 55 23
	inc A		; 1A
	rol $00.b,X		; 36 00
	ora [$00.b]		; 07 00
	eor [$00.b]		; 47 00
	eor [$00.b]		; 47 00
	eor $01.b,S		; 43 01
	adc $00.b,S		; 63 00
	adc $00.b,S		; 63 00
	adc [$01.b],Y		; 77 01
	and $FF60A3.l,X		; 3F A3 60 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $1C.b		; 00 1C
	jsr ($8000.w,X)		; FC 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$0000.w		; E0 00 00
	asl $0E.b,X		; 16 0E
	and $0303.w,X		; 3D 03 03
	ora ($01.b,X)		; 01 01
	brk $8F.b		; 00 8F
	brk $73.b		; 00 73
	sta $BBFECE.l		; 8F CE FE BB
	bit $1F01.w,X		; 3C 01 1F
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	rti		; 40

	jmp ($077F.w,X)		; 7C 7F 07
	eor $0D1745.l,X		; 5F 45 17 0D
	txy		; 9B
	sta $893F.w		; 8D 3F 89
	adc $08FD19.l		; 6F 19 FD 08
	lda $878762.l,X		; BF 62 87 87
	lda $E5.b		; A5 E5
	sbc $6DED.w		; ED ED 6D
	sbc $CD4D.w		; ED 4D CD
	sta $1A99.w,Y		; 99 99 1A
	inc A		; 1A
	cpx #$BFE2.w		; E0 E2 BF
	adc $FFC67F.l,X		; 7F 7F C6 FF
	dec $FF.b		; C6 FF
	cmp $FF66FF.l		; CF FF 66 FF
	and $FF4ABF.l,X		; 3F BF 4A FF
	rol A		; 2A
	adc $E6E67F.l,X		; 7F 7F E6 E6
	dec $C6.b		; C6 C6
	cmp $E6E6CF.l		; CF CF E6 E6
	sbc $4A4AFF.l,X		; FF FF 4A 4A
	rol A		; 2A
	rol A		; 2A
	inc $B180.w,X		; FE 80 B1
	.db $42, $FE		; 42 FE
	eor [$FF.b]		; 47 FF
	mvp $C4,$A8		; 44 A8 C4
	cpy $5488.w		; CC 88 54
	tya		; 98
	cpy $98.b		; C4 98
	cpy #$CCC2.w		; C0 C2 CC
	cmp $404740.l		; CF 40 47 40
	eor [$D0.b]		; 47 D0
	pei ($B0.b)		; D4 B0
	ldy $BCA0.w,X		; BC A0 BC
	ldy #$F0BC.w		; A0 BC F0
	adc $CCB0.w,X		; 7D B0 CC
	sei		; 78
	ldx $63DC.w,Y		; BE DC 63
	ldy $DFC3.w,X		; BC C3 DF
	lda $FDE2BD.l,X		; BF BD E2 FD
	dec $F2.b		; C6 F2
	beq -61.b		; F0 C3
	cpy #$B8B9.w		; C0 B9 B8
	rts		; 60

	rts		; 60

	rep #$C2		; C2 C2
	lda $E3E3BF.l,X		; BF BF E3 E3
	dec $C6.b		; C6 C6
	asl A		; 0A
	bvs  26.b		; 70 1A
	bvs  58.b		; 70 3A
	bne 125.b		; D0 7D
	dec $FB.b,X		; D6 FB
	eor [$FC.b],Y		; 57 FC
	eor $D9.b,X		; 55 D9
	bcs -39.b		; B0 D9
	lda ($94.b)		; B2 94
	asl $94.b,X		; 16 94
	asl $14.b,X		; 16 14
	asl $50.b,X		; 16 50
	eor [$D0.b],Y		; 57 D0
	cmp [$72.b],Y		; D7 72
	adc [$B6.b],Y		; 77 B6
	lda [$B4.b],Y		; B7 B4
	lda [$27.b],Y		; B7 27
	ora ($25.b),Y		; 11 25
	ora ($17.b,S),Y		; 13 17
	ora $17.b,S		; 03 17
	ora $3E.b,S		; 03 3E
	ora ($3B.b,S),Y		; 13 3B
	asl $2F.b,X		; 16 2F
	asl $2D.b		; 06 2D
	asl $0B.b		; 06 0B
	tsa		; 3B
	phd		; 0B
	tsa		; 3B
	phd		; 0B
	tas		; 1B
	phd		; 0B
	tas		; 1B
	ora [$37.b]		; 07 37
	ora [$37.b]		; 07 37
	asl $36.b,X		; 16 36
	asl $36.b,X		; 16 36
	tyx		; BB
	cmp [$FB.b],Y		; D7 FB
	lda [$7E.b],Y		; B7 7E
	lda [$FE.b]		; A7 FE
	adc [$FF.b]		; 67 FF
	ror $FF.b		; 66 FF
	ror $FD.b		; 66 FD
	inc $FD.b		; E6 FD
	inc $C7.b		; E6 C7
	cmp [$87.b],Y		; D7 87
	lda [$87.b],Y		; B7 87
	lda [$07.b]		; A7 07
	adc [$07.b]		; 67 07
	adc [$06.b]		; 67 06
	ror $06.b		; 66 06
	inc $06.b		; E6 06
	inc $3A.b		; E6 3A
	asl $0C17.w		; 0E 17 0C
	phd		; 0B
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	and $041C00.l,X		; 3F 00 1C 04
	tsb $0400.w		; 0C 00 04
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sbc $18FF1F.l		; EF 1F FF 18
	sbc $10FF10.l,X		; FF 10 FF 10
	sbc $1FEF19.l,X		; FF 19 EF 1F
	sbc [$0E.b],Y		; F7 0E
	lda $1F1F80.l,X		; BF 80 1F 1F
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	ora $1F19.w,Y		; 19 19 1F
	ora $400E0E.l,X		; 1F 0E 0E 40
	cpy #$0C0C.w		; C0 0C 0C
	tsb $160C.w		; 0C 0C 16
	tsb $040E.w		; 0C 0E 04
	phd		; 0B
	asl $04.b		; 06 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	and $133D03.l		; 2F 03 3D 13
	and [$11.b],Y		; 37 11
	eor [$21.b]		; 47 21
	rol $11.b,X		; 36 11
	lda [$10.b],Y		; B7 10
	ora [$90.b]		; 07 90
	phd		; 0B
	tya		; 98
	ora [$37.b],Y		; 17 37
	ora $33.b,S		; 03 33
	phd		; 0B
	tsa		; 3B
	ora $0979.w,Y		; 19 79 09
	and $B909.w,Y		; 39 09 B9
	php		; 08
	tya		; 98
	tsb $9C.b		; 04 9C
	sbc $03FF03.l,X		; FF 03 FF 03
	adc $87FB83.l,X		; 7F 83 FB 87
	plx		; FA
	sta [$BE.b]		; 87 BE
	cmp [$FF.b]		; C7 FF
	dec $FF.b		; C6 FF
	dec $03.b		; C6 03
	ora $83.b,S		; 03 83
	sta $87.b,S		; 83 87
	sta [$87.b]		; 87 87
	sta [$C7.b]		; 87 C7
	cmp [$C7.b]		; C7 C7
	cmp [$C7.b]		; C7 C7
	cmp [$C6.b]		; C7 C6
	dec $EB.b		; C6 EB
	cop $D6.b		; 02 D6
	bit $EA.b		; 24 EA
	bit $10DC.w		; 2C DC 10
	beq  32.b		; F0 20
	bne  32.b		; D0 20
	ldy #$A000.w		; A0 00 A0
	brk $04.b		; 00 04
	and $103E08.l		; 2F 08 3E 10
	rol $3C20.w,X		; 3E 20 3C
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	sbc $C27FF3.l,X		; FF F3 7F C2
	sbc $7F02.w,X		; FD 02 7F
	cpy #$40BD.w		; C0 BD 40
	sbc $7E00.w,X		; FD 00 7E
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora ($F3.b,X)		; 01 F3
	sbc ($C3.b,S),Y		; F3 C3
	cmp $42.b,S		; C3 42
	.db $42, $C0		; 42 C0
	cpy #$C2C2.w		; C0 C2 C2
	.db $42, $42		; 42 42
	cmp ($C3.b,X)		; C1 C3
	brk $01.b		; 00 01
	inx		; E8
	bpl  -4.b		; 10 FC
	bmi -28.b		; 30 E4
	iny		; C8
	jmp ($F3C8.w)		; 6C C8 F3
	tsb $BE.b		; 04 BE
	adc [$DD.b]		; 67 DD
	and ($2F.b),Y		; 31 2F
	trb $3800.w		; 1C 00 38
	brk $3C.b		; 00 3C
	bne -36.b		; D0 DC
	bne -36.b		; D0 DC
	php		; 08
	ora $326760.l		; 0F 60 67 32
	and ($DC.b,S),Y		; 33 DC
	jmp.w [$0204]		; DC 04 02
	tsb $02.b		; 04 02
	ora [$02.b]		; 07 02
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ror $2B05.w,X		; 7E 05 2B
	ora $0B1D.w,Y		; 19 1D 0B
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora ($7D.b,X)		; 01 7D
	ora $3D.b		; 05 3D
	ora $1B.b,S		; 03 1B
	sbc $F14C.w,Y		; F9 4C F1
	jmp $AD45ED.l		; 5C ED 45 AD
	eor $EA.b		; 45 EA
	asl $D4.b		; 06 D4
	.db $82, $D3, $81		; 82 D3 81
	eor $83.b,X		; 55 83
	.db $62, $6E, $42		; 62 6E 42
	lsr $DFD2.w,X		; 5E D2 DF
	cmp ($DF.b)		; D2 DF
	ora ($1F.b),Y		; 11 1F
	lda ($B7.b,X)		; A1 B7
	ldy #$A0B3.w		; A0 B3 A0
	lda [$F4.b],Y		; B7 F4
	rti		; 40

	sbc [$44.b],Y		; F7 44
	sbc ($43.b,S),Y		; F3 43
	sbc ($41.b),Y		; F1 41
	sbc [$44.b],Y		; F7 44
	sbc ($44.b)		; F2 44
	ldy $40.b,X		; B4 40
	pea $6800.w		; F4 00 68
	jmp ($4F48.w)		; 6C 48 4F
	jmp $4E4F.w		; 4C 4F 4E
	eor $484F48.l		; 4F 48 4F 48
	lsr $4C48.w		; 4E 48 4C
	pha		; 48
	jmp $1028.w		; 4C 28 10
	inx		; E8
	bmi -48.b		; 30 D0
	cpx #$C020.w		; E0 20 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $C0.b,X		; 74 C0
	pea $FC00.w		; F4 00 FC
	dey		; 88
	cpx #$E888.w		; E0 88 E8
	brk $D8.b		; 00 D8
	bpl -44.b		; 10 D4
	clc		; 18
	cpy #$C81C.w		; C0 1C C8
	cpy $0C08.w		; CC 08 0C
	bra -116.b		; 80 8C
	bcc -104.b		; 90 98
	bpl  24.b		; 10 18
	ldy #$A0B8.w		; A0 B8 A0
	ldy $3C20.w,X		; BC 20 3C
	tax		; AA
	bit $9A.b,X		; 34 9A
	rol $A5.b		; 26 A5
	cop $E1.b		; 02 E1
	eor $E3.b,S		; 43 E3
	eor ($C1.b,X)		; 41 C1
	sta ($C1.b,X)		; 81 C1
	sta ($C3.b,X)		; 81 C3
	sta ($40.b,X)		; 81 40
	ror $7E40.w,X		; 7E 40 7E
	rti		; 40

	adc [$00.b]		; 67 00
	adc $00.b,S		; 63 00
	adc $00.b,S		; 63 00
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	sec		; 38
	and $43A764.l,X		; 3F 64 A7 43
	and $C0.b,S		; 23 C0
	adc ($C0.b,X)		; 61 C0
	ror $00C8.w		; 6E C8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($7F00.w,X)		; 7C 00 7F
	brk $E7.b		; 00 E7
	brk $E3.b		; 00 E3
	brk $E1.b		; 00 E1
	brk $EE.b		; 00 EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$2080.w		; C0 80 20
	cpy #$40A1.w		; C0 A1 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E1.b		; 00 E1
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $9DEF30.l,X		; 7F 30 EF 9D
	ldx $DF81.w,Y		; BE 81 DF
	bmi 116.b		; 30 74
	tsb $010E.w		; 0C 0E 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bcs -80.b		; B0 B0
	ora $419D.w,X		; 1D 9D 41
	cmp ($00.b,X)		; C1 00
	beq   3.b		; F0 03
	adc $000F00.l,X		; 7F 00 0F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	cpy #$2000.w		; C0 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$2000.w		; C0 00 20
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6000.w		; 20 00 60
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6000.w		; 20 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rtl		; 6B

	stz $FEFD.w		; 9C FD FE
	sbc $E2FF62.l,X		; FF 62 FF E2
	sbc $1EFFF2.l,X		; FF F2 FF 1E
	sbc $03FE0C.l,X		; FF 0C FE 03
	stz $FE9C.w		; 9C 9C FE
	inc $6262.w,X		; FE 62 62
.ACCU 8
	sep #$E2		; E2 E2
	sbc ($F2.b)		; F2 F2
	asl $0C1E.w,X		; 1E 1E 0C
	tsb $0303.w		; 0C 03 03
	txy		; 9B
	dec $C5.b		; C6 C5
	adc $DB.b,S		; 63 DB
	jsr $20DC.w		; 20 DC 20
	cmp ($20.b,S),Y		; D3 20
	cmp ($20.b),Y		; D1 20
	cmp ($21.b,S),Y		; D3 21
	cmp ($60.b),Y		; D1 60
	rol $E6.b		; 26 E6
	tas		; 1B
	tda		; 7B
	tsb $3C.b		; 04 3C
	ora $3F.b,S		; 03 3F
	brk $33.b		; 00 33
	brk $31.b		; 00 31
	brk $33.b		; 00 33
	brk $71.b		; 00 71
	ora [$03.b],Y		; 17 03
	rol $13.b,X		; 36 13
	tsa		; 3B
	asl $2B.b,X		; 16 2B
	tsb $2F.b		; 04 2F
	brk $6E.b		; 00 6E
	jsr $7191.w		; 20 91 71
	tda		; 7B
	asl A		; 0A
	phd		; 0B
	tas		; 1B
	phd		; 0B
	tsa		; 3B
	ora [$37.b]		; 07 37
	asl $36.b,X		; 16 36
	trb $34.b		; 14 34
	ora ($71.b),Y		; 11 71
	asl $04FF.w		; 0E FF 04
	adc $F922F7.l,X		; 7F F7 22 F9
	bit $EF.b		; 24 EF
	mvp $08,$DB		; 44 DB 08
	cmp $C784.w		; CD 84 C7
	sta $E5.b,S		; 83 E5
	cmp $7B.b,S		; C3 7B
	cpx #$B680.w		; E0 80 B6
	cop $3E.b		; 02 3E
	brk $6C.b		; 00 6C
	tsb $5C.b		; 04 5C
	cop $CE.b		; 02 CE
	brk $C7.b		; 00 C7
	brk $E7.b		; 00 E7
	brk $FB.b		; 00 FB
	jsr ($BC08.w,X)		; FC 08 BC
	pha		; 48
	pea $FAC8.w		; F4 C8 FA
	cpx $FF.b		; E4 FF
	stz $7E.b		; 64 7E
	and ($BD.b,S),Y		; 33 BD
	sta ($EE.b),Y		; 91 EE
	cld		; D8
	brk $0C.b		; 00 0C
	cpy #$E0CC.w		; C0 CC E0
	cpx $E6E0.w		; EC E0 E6
	bvs 119.b		; 70 77
	bcs -77.b		; B0 B3
	phy		; 5A
	stp		; DB
	ora $00DD.w,X		; 1D DD 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $8C.b		; 00 8C
	brk $84.b		; 00 84
	php		; 08
	bit $0048.w,X		; 3C 48 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $8C.b		; 00 8C
	brk $8C.b		; 00 8C
	bra  -4.b		; 80 FC
	dex		; CA
	bit $14F2.w,X		; 3C F2 14
	ldx $44.b,Y		; B6 44
	plx		; FA
	jsr $8AFD.w		; 20 FD 8A
	lda $FE6A.w,X		; BD 6A FE
	sty $AC.b		; 84 AC
	pla		; 68
	brk $3E.b		; 00 3E
	php		; 08
	asl $4E48.w,X		; 1E 48 4E
	bit $26.b		; 24 26
	clc		; 18
	txy		; 9B
	sei		; 78
	tda		; 7B
	brk $86.b		; 00 86
	bpl  -4.b		; 10 FC
	pha		; 48
	jsr $204C.w		; 20 4C 20
	cli		; 58
	bmi -88.b		; 30 A8
	bvs  48.b		; 70 30
	cpx #$C060.w		; E0 60 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl 120.b		; 10 78
	bpl 124.b		; 10 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	brk $1C.b		; 00 1C
	brk $0B.b		; 00 0B
	tsb $0E.b		; 04 0E
	asl $05.b		; 06 05
	brk $0A.b		; 00 0A
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	cop $06.b		; 02 06
	ora $0D.b		; 05 0D
	ora $0A06.w		; 0D 06 0A
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000E00.l		; 0F 00 0E 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D5.b		; 00 D5
	sec		; 38
	and ($0F.b,S),Y		; 33 0F
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor [$CC.b],Y		; 57 CC
	sta $6FEC80.l		; 8F 80 EC 6F
	adc [$28.b]		; 67 28
	clv		; B8
	rti		; 40

	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	cpx $F070.w		; EC 70 F0
	bpl  -1.b		; 10 FF
	bpl 127.b		; 10 7F
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$E0C0.w		; A0 C0 E0
	cpy #$C0E0.w		; C0 E0 C0
	bcc  96.b		; 90 60
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $2F.b		; 00 2F
	ora ($3F.b,X)		; 01 3F
	ora $7F193F.l		; 0F 3F 19 7F
	bit $007F.w		; 2C 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($3F.b,X)		; 01 3F
	bpl  63.b		; 10 3F
	jsr $003B.w		; 20 3B 00
	and $0000.w,X		; 3D 00 00
	rts		; 60

	brk $93.b		; 00 93
	brk $FC.b		; 00 FC
	bmi  -2.b		; 30 FE
	jsr ($64FF.w,X)		; FC FF 64
	sbc $8AFF12.l,X		; FF 12 FF 8A
	sbc $6C0000.l,X		; FF 00 00 6C
	jmp ($0303.w)		; 6C 03 03
	sbc $FE05.w,X		; FD 05 FE
	cop $FF.b		; 02 FF
	ora ($7F.b,X)		; 01 7F
	php		; 08
	sta $010004.l,X		; 9F 04 00 01
	brk $00.b		; 00 00
	tsb $06.b		; 04 06
	php		; 08
	php		; 08
	asl $07.b		; 06 07
	php		; 08
	php		; 08
	cop $03.b		; 02 03
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $081F04.l,X		; 1F 04 1F 08
	ora $070905.l,X		; 1F 05 09 07
	ora ($00.b,X)		; 01 00
	sta [$84.b]		; 87 84
	adc ($40.b,S),Y		; 73 40
	tsa		; 3B
	cpx #$FA1F.w		; E0 1F FA
	ora $8F.b		; 05 8F
	brk $07.b		; 00 07
	.db $82, $07, $82		; 82 07 82
	jmp ($ED64.w,X)		; 7C 64 ED
	bra 117.b		; 80 75
	cpy #$1919.w		; C0 19 19
	ora $65.b		; 05 65
	brk $78.b		; 00 78
	cop $78.b		; 02 78
	cop $78.b		; 02 78
	sec		; 38
	lda [$08.b],Y		; B7 08
	cmp $74DB1C.l,X		; DF 1C DB 74
	sta $9C0DFA.l		; 8F FA 0D 9C
	ora [$1E.b]		; 07 1E
	ora $17.b,S		; 03 17
	ora ($3E.b,X)		; 01 3E
	lsr A		; 4A
	stx $9F22.w		; 8E 22 9F
	lda $07.b,X		; B5 07
	ora ($03.b,X)		; 01 03
	sbc $09.b,S		; E3 09
	sbc ($0C.b,X)		; E1 0C
	cpx #$E00E.w		; E0 0E E0
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl $87.b		; 06 87
	asl $1C8E.w		; 0E 8E 1C
	dec $BC38.w,X		; DE 38 BC
	bvs  -8.b		; 70 F8
	rts		; 60

	beq   1.b		; F0 01
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $181F0C.l		; 0F 0C 1F 18
	rol $7E30.w,X		; 3E 30 7E
	jsr $007C.w		; 20 7C 00
	sei		; 78
	asl $1730.w,X		; 1E 30 17
	bmi   7.b		; 30 07
	bmi  11.b		; 30 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	ora $000F00.l		; 0F 00 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	tya		; 98
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $62, $1C, $62		; 62 1C 62
	asl $CE62.w,X		; 1E 62 CE
	.db $62, $9C, $30		; 62 9C 30
	sty $8E30.w		; 8C 30 8E
	and ($3C.b),Y		; 31 3C
	brk $9C.b		; 00 9C
	brk $BE.b		; 00 BE
	jsl $9C40DC.l		; 22 DC 40 9C
	brk $CE.b		; 00 CE
	brk $DE.b		; 00 DE
	bpl -17.b		; 10 EF
	and ($07.b,X)		; 21 07
	bmi  30.b		; 30 1E
	bmi  15.b		; 30 0F
	and ($0C.b,X)		; 21 0C
	and ($3E.b,X)		; 21 3E
	adc $38.b,S		; 63 38
	.db $62, $1C, $46		; 62 1C 46
	bpl  68.b		; 10 44
	ora $000F10.l,X		; 1F 10 0F 00
	asl $3F00.w,X		; 1E 00 3F
	and ($1C.b,X)		; 21 1C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	brk $3C.b		; 00 3C
	tsb $AC.b		; 04 AC
	sbc $38E634.l		; EF 34 E6 38
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	.db $62, $3C, $62		; 62 3C 62
	trb $1C62.w		; 1C 62 1C
	jsl $12221C.l		; 22 1C 22 12
	cop $9A.b		; 02 9A
	.db $82, $1E, $02		; 82 1E 02
	asl $1E02.w,X		; 1E 02 1E
	cop $3E.b		; 02 3E
	jsl $3C203C.l		; 22 3C 20 3C
	jsr $F747.w		; 20 47 F7
	rts		; 60

	jmp.w [$7E01]		; DC 01 7E
	ora ($7E.b,X)		; 01 7E
	ora ($7E.b),Y		; 11 7E
	and ($7E.b,X)		; 21 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	rts		; 60

	ora $292370.l		; 0F 70 23 29
	ora ($11.b,X)		; 01 11
	ora ($33.b,X)		; 01 33
	ora ($2B.b,X)		; 01 2B
	ora ($0B.b,X)		; 01 0B
	brk $1B.b		; 00 1B
	brk $30.b		; 00 30
	cmp $0A.b,S		; C3 0A
	and $DE21.w,X		; 3D 21 DE
	bit $DB.b		; 24 DB
	bit $DB.b		; 24 DB
	ora ($ED.b)		; 12 ED
	sta ($6D.b)		; 92 6D
	sta ($6E.b),Y		; 91 6E
	brk $FC.b		; 00 FC
	cop $CA.b		; 02 CA
	adc $21.b,S		; 63 21
	adc $6D24.w		; 6D 24 6D
	bit $76.b		; 24 76
	ora ($F6.b)		; 12 F6
	sta ($B7.b)		; 92 B7
	sta ($00.b),Y		; 91 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	ldy #$A0.b		; A0 A0
	bcs -80.b		; B0 B0
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	cpy #$B0.b		; C0 B0
	cpy #$B8.b		; C0 B8
	cpx #$DC.b		; E0 DC
	beq -18.b		; F0 EE
	sed		; F8
	sbc [$00.b],Y		; F7 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$A0.b		; E0 A0
	cpx #$40.b		; E0 40
	beq  80.b		; F0 50
	sed		; F8
	plp		; 28
	jsr ($FE14.w,X)		; FC 14 FE
	asl A		; 0A
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	cop $1F.b		; 02 1F
	php		; 08
	rol $3214.w,X		; 3E 14 32
	php		; 08
	stz $08.b		; 64 08
	stz $03.b		; 64 03
	cop $04.b		; 02 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $10.b		; 00 10
	bpl  12.b		; 10 0C
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	clc		; 18
	stz $00.b,X		; 74 00
	stz $10.b,X		; 74 10
	jmp ($3C18.w,X)		; 7C 18 3C
	tsb $001E.w		; 0C 1E 00
	asl $0600.w		; 0E 00 06
	brk $00.b		; 00 00
	plp		; 28
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	adc $073C04.l,X		; 7F 04 3C 07
	sec		; 38
	ora $1C.b,S		; 03 1C
	ora $0E.b,S		; 03 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	plp		; 28
	brk $23.b		; 00 23
	brk $13.b		; 00 13
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $73.b		; 00 73
	sta $F7367B.l		; 8F 7B 36 F7
	trb $06F5.w		; 1C F5 06
	sbc $690E.w,Y		; F9 0E 69
	asl $1B50.w		; 0E 50 1B
	jsr $0F37.w		; 20 37 0F
	tsb $87.b		; 04 87
	ora $67.b		; 05 67
	ora $FF.b,S		; 03 FF
	ora ($F3.b,X)		; 01 F3
	ora $F3.b,S		; 03 F3
	sta $ED.b,S		; 83 ED
	sty $1ADA.w		; 8C DA 1A
	asl $0C.b		; 06 0C
	asl $04.b		; 06 04
	ora ($04.b,X)		; 01 04
	brk $04.b		; 00 04
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	and $03C2.w,X		; 3D C2 03
	cpy #$85.b		; C0 85
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	cmp [$03.b]		; C7 03
	cmp $3C.b,S		; C3 3C
	lda $7F7F7F.l,X		; BF 7F 7F 7F
	adc $80B082.l,X		; 7F 82 B0 80
	lda $3A00.w,X		; BD 00 3A
	bra -121.b		; 80 87
	eor $3F.b,S		; 43 3F
	bra 127.b		; 80 7F
	and $FF7CFF.l,X		; 3F FF 7C FF
	sbc $19.b,S		; E3 19
	ldy #$201F.w		; A0 1F 20
	ora ($EE.b),Y		; 11 EE
	asl $9EDE.w		; 0E DE 9E
	ldy $F83D.w,X		; BC 3D F8
	xce		; FB
	ora ($E7.b),Y		; 11 E7
	asl $1448.w		; 0E 48 14
	cpy $11.b		; C4 11
	cmp $181F0C.l		; CF 0C 1F 18
	sbc $D1FE30.l,X		; FF 30 FE D1
	jsr ($F803.w,X)		; FC 03 F8
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	rts		; 60

	cld		; D8
	beq -20.b		; F0 EC
	beq 108.b		; F0 6C
	brk $30.b		; 00 30
	cpy #$D040.w		; C0 40 D0
	bpl -80.b		; 10 B0
	bcs 112.b		; B0 70
	bpl  -8.b		; 10 F8
	plp		; 28
	sed		; F8
	clc		; 18
	sed		; F8
	bcc   3.b		; 90 03
	asl $03.b		; 06 03
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E03.w		; 0E 03 0E
	ora $1C.b		; 05 1C
	phd		; 0B
	clc		; 18
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	dec $CC31.w		; CE 31 CC
	and ($EE.b),Y		; 31 EE
	and ($EE.b,S),Y		; 33 EE
	and ($CC.b,S),Y		; 33 CC
	and ($98.b,S),Y		; 33 98
	and ($D8.b,S),Y		; 33 D8
	adc ($24.b,S),Y		; 73 24
	adc [$EE.b]		; 67 EE
	jsr $20EE.w		; 20 EE 20
	cpy $CC00.w		; CC 00 CC
	brk $EE.b		; 00 EE
	jsl $8E02CE.l		; 22 CE 02 8E
	cop $DA.b		; 02 DA
	.db $42, $38		; 42 38
	cpy $C820.w		; CC 20 C8
	jsr $00D8.w		; 20 D8 00
	bne  32.b		; D0 20
	beq   0.b		; F0 00
	cpx #$E040.w		; E0 40 E0
	brk $C0.b		; 00 C0
	bvs  64.b		; 70 40
	sei		; 78
	pha		; 48
	bvs  80.b		; 70 50
	rts		; 60

	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $0C.b		; 00 0C
	jsl $1C321C.l		; 22 1C 32 1C
	and ($04.b)		; 32 04
	ora ($0C.b)		; 12 0C
	inc A		; 1A
	brk $1A.b		; 00 1A
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	trb $0C00.w		; 1C 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl  20.b		; 10 14
	bpl  12.b		; 10 0C
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $001700.l,X		; 1F 00 17 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	bit #$8876.w		; 89 76 88
	adc [$88.b],Y		; 77 88
	adc [$88.b],Y		; 77 88
	adc [$01.b],Y		; 77 01
	sbc $687E10.l,X		; FF 10 7E 68
	asl $0670.w		; 0E 70 06
	tyx		; BB
	bit #$88BB.w		; 89 BB 88
	tyx		; BB
	dey		; 88
	clv		; B8
	dey		; 88
	jsl $0A8B02.l		; 22 02 8B 0A
	sbc ($02.b,S),Y		; F3 02
	sbc $0004.w,X		; FD 04 00
	cpx #$6080.w		; E0 80 60
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpy #$C040.w		; C0 40 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	tsb $1D.b		; 04 1D
	tsb $1D.b		; 04 1D
	cop $1E.b		; 02 1E
	ora #$0C17.w		; 09 17 0C
	ora $06.b,S		; 03 06
	ora #$000C.w		; 09 0C 00
	brk $00.b		; 00 00
	asl A		; 0A
	php		; 08
	asl A		; 0A
	php		; 08
	ora $04.b		; 05 04
	php		; 08
	php		; 08
	asl $070C.w		; 0E 0C 07
	asl $17.b		; 06 17
	sbc $47EF17.l,X		; FF 17 EF 47
	tyx		; BB
	and [$DB.b]		; 27 DB
	sta ($6F.b,S),Y		; 93 6F
	eor $BE.b,S		; 43 BE
	.db $42, $BD		; 42 BD
	jsr $3FDF.w		; 20 DF 3F
	brk $BF.b		; 00 BF
	bpl  95.b		; 10 5F
	jmp $2C6F.w		; 4C 6F 2C
	lda [$90.b],Y		; B7 90
	cmp [$45.b],Y		; D7 45
	cmp [$46.b],Y		; D7 46
	adc $FF0025.l		; 6F 25 00 FF
	bra 126.b		; 80 7E
	bra 124.b		; 80 7C
	brk $FC.b		; 00 FC
	bra  -8.b		; 80 F8
	brk $38.b		; 00 38
	bra  48.b		; 80 30
	cpx #$7630.w		; E0 30 76
	asl $B4.b		; 06 B4
	sty $8C.b		; 84 8C
	sty $08.b		; 84 08
	php		; 08
	pha		; 48
	pha		; 48
	cpy #$E000.w		; C0 00 E0
	jsr $00C0.w		; 20 C0 00
	brk $00.b		; 00 00
	tsb $24.b		; 04 24
	rol $26.b		; 26 26
	rol $3C3E.w,X		; 3E 3E 3C
	bit $3830.w,X		; 3C 30 38
	rts		; 60

	bvs -64.b		; 70 C0
	cpx #$2400.w		; E0 00 24
	tsb $26.b		; 04 26
	cop $7F.b		; 02 7F
	jsr $287F.w		; 20 7F 28
	ror $7C30.w,X		; 7E 30 7C
	brk $F8.b		; 00 F8
	bra -16.b		; 80 F0
	bra -96.b		; 80 A0
	rti		; 40

	bne  32.b		; D0 20
	inx		; E8
	bcc 116.b		; 90 74
	cpy #$0E3E.w		; C0 3E 0E
	sbc ($00.b,S),Y		; F3 00
	ora $400000.l,X		; 1F 00 00 40
	brk $A0.b		; 00 A0
	bra  16.b		; 80 10
	brk $C8.b		; 00 C8
	bra -32.b		; 80 E0
	cpy #$0C1E.w		; C0 1E 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $19.b		; 00 19
	brk $3F.b		; 00 3F
	ora ($4E.b,X)		; 01 4E
	ora $CD.b,S		; 03 CD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0506.w		; 0E 06 05
	ora ($33.b,X)		; 01 33
	and ($77.b),Y		; 31 77
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	rts		; 60

	brk $90.b		; 00 90
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	bit $FFDB.w,X		; 3C DB FF
	adc $00FFFF.l,X		; 7F FF FF 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bra -128.b		; 80 80
	sei		; 78
	pha		; 48
	sbc $80FFA4.l,X		; FF A4 FF 80
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $FFE1.w,X		; 1E E1 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	lsr $80FF.w,X		; 5E FF 80
	sbc $0FFF00.l,X		; FF 00 FF 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F8BE.w		; C0 BE F8
	sbc [$00.b],Y		; F7 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	cli		; 58
	inc $F008.w,X		; FE 08 F0
	bpl   3.b		; 10 03
	jsr ($7D02.w,X)		; FC 02 7D
	ora ($3B.b,X)		; 01 3B
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	asl $06.b		; 06 06
	adc ($50.b,S),Y		; 73 50
	and $0021.w,Y		; 39 21 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	ora $8D0F81.l		; 0F 81 0F 8D
	ora [$88.b],Y		; 17 88
	sbc ($00.b,S),Y		; F3 00
	xce		; FB
	rts		; 60

	sbc $01FF18.l,X		; FF 18 FF 01
	rol $806F.w,X		; 3E 6F 80
	sbc [$64.b],Y		; F7 64
	xba		; EB
	rts		; 60

	ora $7500.w		; 0D 00 75
	ora ($F9.b),Y		; 11 F9
	ora #$437F.w		; 09 7F 43
	brk $C0.b		; 00 C0
	brk $9F.b		; 00 9F
	bvc -77.b		; 50 B3
	stz $93.b,X		; 74 93
	ply		; 7A
	bit #$844D.w		; 89 4D 84
	mvp $C4,$80		; 44 80 C4
	ora ($85.b,X)		; 01 85
	sta $CF.b,S		; 83 CF
	cmp [$03.b]		; C7 03
	and $06110D.l,X		; 3F 0D 11 06
	jsr $7003.w		; 20 03 70
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	sta ($7B.b,X)		; 81 7B
	cmp $37.b		; C5 37
	bmi  -1.b		; 30 FF
	sec		; 38
	xce		; FB
	dec A		; 3A
	xce		; FB
	tas		; 1B
	tyx		; BB
	phd		; 0B
	tas		; 1B
	stp		; DB
	stp		; DB
	stp		; DB
	cmp $D8DB.w,Y		; D9 DB D8
	ldy #$B278.w		; A0 78 B2
	jsr ($FC9B.w,X)		; FC 9B FC
	ora $7C.b,S		; 03 7C
	ora $FC.b,S		; 03 FC
	cmp ($FC.b,S),Y		; D3 FC
	cmp ($FE.b,S),Y		; D3 FE
	cmp ($FF.b,S),Y		; D3 FF
	brk $00.b		; 00 00
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
	ora ($01.b,X)		; 01 01
	asl $0E10.w		; 0E 10 0E
	bpl   6.b		; 10 06
	bpl   7.b		; 10 07
	and ($16.b),Y		; 31 16
	adc ($2C.b),Y		; 71 2C
	sbc ($5C.b,X)		; E1 5C
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	stx $1F.b		; 86 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	bpl  47.b		; 10 2F
	and ($5E.b,X)		; 21 5E
	rti		; 40

	ldx $7882.w,Y		; BE 82 78
	brk $04.b		; 00 04
	ora $181F08.l,X		; 1F 08 1F 18
	and $023D12.l,X		; 3F 12 3D 02
	and $1D02.w,X		; 3D 02 1D
	cop $1D.b		; 02 1D
	cop $1D.b		; 02 1D
	asl $00.b		; 06 00
	php		; 08
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	cop $1A.b		; 02 1A
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $0E.b		; 02 0E
	cop $01.b		; 02 01
	dec $14.b		; C6 14
	xba		; EB
	eor ($AD.b)		; 52 AD
	eor ($AE.b),Y		; 51 AE
	pha		; 48
	lda [$48.b],Y		; B7 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	bit $DB.b		; 24 DB
	ora ($39.b,X)		; 01 39
	sta $14.b,X		; 95 14
	dec $52.b,X		; D6 52
	cmp [$51.b],Y		; D7 51
	stp		; DB
	pha		; 48
	stp		; DB
	pha		; 48
	cmp $ED44.w,X		; DD 44 ED
	bit $00.b		; 24 00
	bra   0.b		; 80 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rts		; 60

	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	cop $09.b		; 02 09
	php		; 08
	asl A		; 0A
	php		; 08
	asl $3E04.w,X		; 1E 04 3E
	bpl 124.b		; 10 7C
	bpl 116.b		; 10 74
	php		; 08
	cpx #$0107.w		; E0 07 01
	asl $0608.w		; 0E 08 06
	cop $0C.b		; 02 0C
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $58.b		; 00 58
	rti		; 40

	clc		; 18
	inx		; E8
	clc		; 18
	inx		; E8
	clc		; 18
	sed		; F8
	plp		; 28
	sed		; F8
	bmi 120.b		; 30 78
	clc		; 18
	jmp ($3C08.w,X)		; 7C 08 3C
	brk $00.b		; 00 00
	bvc  64.b		; 50 40
	bvc   0.b		; 50 00
	rti		; 40

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$7B.b]		; 07 7B
	ora $170F37.l		; 0F 37 0F 17
	ora $3D0E1F.l		; 0F 1F 0E 3D
	tsb $0F3F.w		; 0C 3F 0F
	rol $1D06.w,X		; 3E 06 1D
	and $080F04.l		; 2F 04 0F 08
	ora $000F08.l		; 0F 08 0F 00
	ora $031F02.l,X		; 1F 02 1F 03
	ora $121E01.l,X		; 1F 01 1E 12
	sta $B7CB7B.l,X		; 9F 7B CB B7
	cmp $FF.b,S		; C3 FF
	bra 127.b		; 80 7F
	clc		; 18
	sbc $79D322.l		; EF 22 D3 79
	cmp ($BC.b,X)		; C1 BC
	ora ($DF.b,X)		; 01 DF
	sty $EF.b		; 84 EF
	pha		; 48
	xba		; EB
	brk $D1.b		; 00 D1
	sta ($E4.b),Y		; 91 E4
	stz $1C.b		; 64 1C
	bpl  30.b		; 10 1E
	brk $DE.b		; 00 DE
	brk $FF.b		; 00 FF
	adc $83CF3F.l,X		; 7F 3F CF 83
	jsr ($E71F.w,X)		; FC 1F E7
	ora [$F8.b]		; 07 F8
	ora $E100F3.l		; 0F F3 00 E1
	rol $FE.b		; 26 FE
	sbc $B0FF80.l,X		; FF 80 FF B0
	sbc $98FF63.l,X		; FF 63 FF 98
	and $6C7F37.l,X		; 3F 37 7F 6C
	ora ($1F.b,X)		; 01 1F
	.db $62, $0F, $C0		; 62 0F C0
	rol $CFF0.w,X		; 3E F0 CF
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $30CFCF.l,X		; FF CF CF 30
	ora $F704F0.l		; 0F F0 04 F7
	sed		; F8
	iny		; C8
	sbc $03FF33.l,X		; FF 33 FF 03
	sbc $30FF00.l,X		; FF 00 FF 30
	sbc $8FFFCF.l,X		; FF CF FF 8F
	beq -50.b		; F0 CE
	ora $05.b		; 05 05
	ora $07.b,S		; 03 07
	cop $06.b		; 02 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -32.b		; 10 E0
	trb $7720.w		; 1C 20 77
	clc		; 18
	bmi  14.b		; 30 0E
	cli		; 58
	cmp [$00.b]		; C7 00
	sbc $043F00.l		; EF 00 3F 04
	ora $409F00.l,X		; 1F 00 9F 40
	sta $E0.b,S		; 83 E0
	brk $FC.b		; 00 FC
	ora $81B8.w		; 0D B8 81
	bit $21.b,X		; 34 21
	trb $11.b		; 14 11
	asl $00.b		; 06 00
	lda $5C4F.w,X		; BD 4F 5C
	bit $7AF8.w,X		; 3C F8 7A
	beq  -2.b		; F0 FE
	sbc ($F5.b,X)		; E1 F5
	sbc ($EB.b,X)		; E1 EB
.ACCU 8
	sep #$E6		; E2 E6
	cpy $4D1D.w		; CC 1D 4D
	ora $30BF18.l		; 0F 18 BF 30
	adc $E0FF60.l,X		; 7F 60 FF E0
	sbc $C2FFE1.l,X		; FF E1 FF C2
	sbc $D9FE04.l,X		; FF 04 FE D9
	dec $BFB0.w,X		; DE B0 BF
	jsr $0077.w		; 20 77 00
	adc $001F00.l		; 6F 00 1F 00
	adc $40FD00.l,X		; 7F 00 FD 40
	clv		; B8
	eor [$F9.b],Y		; 57 F9
	and [$F8.b]		; 27 F8
	ora [$FC.b]		; 07 FC
	ora $E707FE.l		; 0F FE 07 E7
	ora ($81.b,X)		; 01 81
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora $04.b,S		; 03 04
	asl $0C.b		; 06 0C
	ora [$09.b]		; 07 09
	asl $0009.w		; 0E 09 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $0E.b		; 00 0E
	php		; 08
	asl $00.b		; 06 00
	bvs   4.b		; 70 04
	cpx #$C008.w		; E0 08 C0
	bpl -96.b		; 10 A0
	jsr $6040.w		; 20 40 60
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
	brk $04.b		; 00 04
	tas		; 1B
	tsb $0B.b		; 04 0B
	tsb $0B.b		; 04 0B
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $0504.w		; 0D 04 05
	tsb $05.b		; 04 05
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	cmp $DD22.w,X		; DD 22 DD
	jsl $FF00DD.l		; 22 DD 00 FF
	ora ($9F.b),Y		; 11 9F
	plp		; 28
	stx $8634.w		; 8E 34 86
	sec		; 38
	.db $82, $EE, $22		; 82 EE 22
	inc $EE22.w		; EE 22 EE
	jsl $680383.l		; 22 83 03 68
	php		; 08
	sbc $84.b,X		; F5 84
	sbc $FD80.w,Y		; F9 80 FD
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bvs -64.b		; 70 C0
	bit $EEF0.w,X		; 3C F0 EE
	sed		; F8
	inc $FC.b,X		; F6 FC
	tsa		; 3B
	ror $008D.w,X		; 7E 8D 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ldy #$C8F8.w		; A0 F8 C8
	jsr ($FE14.w,X)		; FC 14 FE
	asl A		; 0A
	inc $7FC4.w,X		; FE C4 7F
	adc ($F0.b,S),Y		; 73 F0
	trb $CC38.w		; 1C 38 CC
	tsb $04B6.w		; 0C B6 04
	dex		; CA
	bra -58.b		; 80 C6
	bra -30.b		; 80 E2
	cpy #$E0F0.w		; C0 F0 E0
	sed		; F8
	sed		; F8
	cpx #$343C.w		; E0 3C 34
	tsb $8408.w		; 0C 08 84
	tsb $80.b		; 04 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ror $0CF0.w,X		; 7E F0 0C
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	jsr ($F080.w,X)		; FC 80 F0
	beq -128.b		; F0 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	jmp $6C28.w		; 4C 28 6C
	brk $34.b		; 00 34
	brk $3C.b		; 00 3C
	tsb $3E.b		; 04 3E
	brk $3E.b		; 00 3E
	brk $1A.b		; 00 1A
	tsb $1D.b		; 04 1D
	bvs  64.b		; 70 40
	bpl   0.b		; 10 00
	php		; 08
	brk $10.b		; 00 10
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	bpl  12.b		; 10 0C
	php		; 08
	asl A		; 0A
	php		; 08
	cop $1E.b		; 02 1E
	ora ($1F.b,X)		; 01 1F
	tsb $1B.b		; 04 1B
	asl $09.b		; 06 09
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	php		; 08
	brk $0E.b		; 00 0E
	tsb $07.b		; 04 07
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	clv		; B8
	bcs  78.b		; B0 4E
	jmp $24B2.w		; 4C B2 24
	phx		; DA
	bcc 110.b		; 90 6E
	pha		; 48
	ldy $28.b,X		; B4 28
	pei ($20.b)		; D4 20
	cld		; D8
	rti		; 40

	rti		; 40

	bcs -80.b		; B0 B0
	jmp.w [$6C4C]		; DC 4C 6C
	bit $B4.b		; 24 B4
	bcc -40.b		; 90 D8
	pha		; 48
	inx		; E8
	plp		; 28
	cpx #$0020.w		; E0 20 00
	sed		; F8
	bmi  -8.b		; 30 F8
	bvc -40.b		; 50 D8
	bcs -104.b		; B0 98
	bvs  24.b		; 70 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	bne  16.b		; D0 10
	brk $00.b		; 00 00
	ldy #$6080.w		; A0 80 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $3D.b		; 00 3D
	sta $5F.b,S		; 83 5F
	cmp $5E.b,S		; C3 5E
	cmp $1C.b,S		; C3 1C
	cmp ($3C.b,X)		; C1 3C
	adc ($0C.b,X)		; 61 0C
	adc ($0E.b,X)		; 61 0E
	and ($1F.b,X)		; 21 1F
	and ($FC.b),Y		; 31 FC
	bra  60.b		; 80 3C
	brk $3D.b		; 00 3D
	ora ($7F.b,X)		; 01 7F
	eor ($1E.b,X)		; 41 1E
	brk $3E.b		; 00 3E
	jsr $011F.w		; 20 1F 01
	asl $E000.w		; 0E 00 E0
	php		; 08
	cpx #$E008.w		; E0 08 E0
	php		; 08
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	sed		; F8
	sty $8CF8.w		; 8C F8 8C
	sec		; 38
	sty $08F8.w		; 8C F8 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	sec		; 38
	sty $CC78.w		; 8C 78 CC
	bvc -58.b		; 50 C6
	trb $C6.b		; 14 C6
	bit $66.b,X		; 34 66
	jsl $391863.l		; 22 63 18 39
	trb $F039.w		; 1C 39 F0
	bra  52.b		; 80 34
	tsb $3C.b		; 04 3C
	tsb $78.b		; 04 78
	rti		; 40

	inc A		; 1A
	cop $1C.b		; 02 1C
	brk $26.b		; 00 26
	jsr $0107.w		; 20 07 01
	clc		; 18
	dec $1C.b		; C6 1C
	lsr $18.b		; 46 18
	.db $42, $2C		; 42 2C
	.db $62, $0E, $23		; 62 0E 23
	trb $31.b		; 14 31
	asl $11.b		; 06 11
	asl A		; 0A
	ora $447C.w,Y		; 19 7C 44
	sei		; 78
	rti		; 40

	rol $1E02.w,X		; 3E 02 1E
	cop $3C.b		; 02 3C
	jsr $000E.w		; 20 0E 00
	ora $010711.l,X		; 1F 11 07 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $260009.l		; 0F 09 00 26
	brk $C3.b		; 00 C3
	brk $47.b		; 00 47
	ora ($1E.b,X)		; 01 1E
	ora $EF1FF7.l		; 0F F7 1F EF
	ora $3CEF.w,X		; 1D EF 3C
	cmp $3E181C.l,X		; DF 1C 18 3E
	bit $B8B8.w,X		; 3C B8 B8
	sbc [$E1.b]		; E7 E1
	ora $507F08.l,X		; 1F 08 7F 50
	adc $A0FE10.l,X		; 7F 10 FE A0
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	sbc ($FE.b,X)		; E1 FE
	dey		; 88
	sta $3E83B8.l		; 8F B8 83 3E
	sta $7C.b,S		; 83 7C
	cmp ($1E.b,X)		; C1 1E
	eor ($DD.b,X)		; 41 DD
	ora ($1D.b),Y		; 11 1D
	ora ($01.b),Y		; 11 01
	ora ($74.b,X)		; 01 74
	tsb $7E.b		; 04 7E
	cop $FC.b		; 02 FC
	bra  62.b		; 80 3E
	brk $7F.b		; 00 7F
	eor ($10.b,X)		; 41 10
	inc $FF04.w		; EE 04 FF
	asl $2FF3.w,X		; 1E F3 2F
	sbc ($2F.b,X)		; E1 2F
	cpx #$7017.w		; E0 17 70
	phd		; 0B
	sec		; 38
	ora $1C.b		; 05 1C
	pei ($14.b)		; D4 14
	dex		; CA
	asl A		; 0A
	cmp $1E01.w		; CD 01 1E
	brk $5F.b		; 00 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	phd		; 0B
	php		; 08
	adc ($AD.b,S),Y		; 73 AD
	and $F9.b,S		; 23 F9
	and ($7B.b,X)		; 21 7B
	and ($52.b,X)		; 21 52
	brk $33.b		; 00 33
	brk $31.b		; 00 31
	brk $31.b		; 00 31
	brk $10.b		; 00 10
	tda		; 7B
	phy		; 5A
	adc ($02.b,S),Y		; 73 02
	adc ($50.b,S),Y		; 73 50
	and ($33.b,S),Y		; 33 33
	and ($00.b,X)		; 21 00
	and ($21.b,X)		; 21 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $7D, $84		; 82 7D 84
	tda		; 7B
	dey		; 88
	adc [$90.b],Y		; 77 90
	sbc $69AFD0.l		; EF D0 AF 69
	dec $69.b,X		; D6 69
	dec $61.b,X		; D6 61
	ldx $82E3.w,Y		; BE E3 82
	sbc [$84.b]		; E7 84
	dec $9E88.w		; CE 88 9E
	bpl -34.b		; 10 DE
	bvc -19.b		; 50 ED
	and #$ED.b		; 29 ED
	lda #$71.b		; A9 71
	eor ($01.b,X)		; 41 01
	asl $03.b		; 06 03
	ora $0B07.w		; 0D 07 0B
	ora [$1F.b]		; 07 1F
	asl $0C17.w		; 0E 17 0C
	and $1F2C1B.l,X		; 3F 1B 2C 1F
	and $0103.w,Y		; 39 03 01
	ora [$02.b]		; 07 02
	ora $000F0C.l		; 0F 0C 0F 00
	ora $011F18.l,X		; 1F 18 1F 01
	and $063F33.l,X		; 3F 33 3F 06
	jsr ($F0FB.w,X)		; FC FB F0
	sbc $00BFC0.l		; EF C0 BF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	jsr ($3EC0.w,X)		; FC C0 3E
	dec $BC.b		; C6 BC
	sbc $16FE05.l,X		; FF 05 FE 16
	jsr ($E15C.w,X)		; FC 5C E1
	adc ($FB.b,X)		; 61 FB
	plx		; FA
	sbc [$14.b],Y		; F7 14
	sbc #$C8.b		; E9 C8
	inc $43.b		; E6 43
	adc $106E.w		; 6D 6E 10
	sbc $20.b,X		; F5 20
	txy		; 9B
	eor $1C.b,S		; 43 1C
	sta [$30.b]		; 87 30
	php		; 08
	pla		; 68
	bpl -48.b		; 10 D0
	and $FD61B0.l,X		; 3F B0 61 FD
	brk $1E.b		; 00 1E
	cpx #$F08E.w		; E0 8E F0
	trb $E0.b		; 14 E0
	pld		; 2B
	cpy #$805F.w		; C0 5F 80
	lda $00F000.l,X		; BF 00 F0 00
	sbc $7A85.w,Y		; F9 85 7A
	eor $9EB6.w,Y		; 59 B6 9E
	rti		; 40

	inc $6400.w,X		; FE 00 64
	brk $68.b		; 00 68
	rti		; 40

	beq   0.b		; F0 00
	dec $40.b		; C6 40
	cld		; D8
	tya		; 98
	.db $42, $40		; 42 40
	jsr $6000.w		; 20 00 60
	sty $F800.w		; 8C 00 F8
	rts		; 60

	bcs -64.b		; B0 C0
	cpy #$2FDE.w		; C0 DE 2F
	asl $24F5.w		; 0E F5 24
	xce		; FB
	beq -18.b		; F0 EE
	cpx #$C00C.w		; E0 0C C0
	bpl  64.b		; 10 40
	bpl   0.b		; 10 00
	jsr $D0FE.w		; 20 FE D0
	dec $0E4A.w,X		; DE 4A 0E
	tsb $0C.b		; 04 0C
	brk $58.b		; 00 58
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sec		; 38
	brk $2C.b		; 00 2C
	brk $26.b		; 00 26
	brk $C3.b		; 00 C3
	brk $47.b		; 00 47
	ora ($1E.b,X)		; 01 1E
	ora $0000F7.l		; 0F F7 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  28.b		; 10 1C
	clc		; 18
	rol $B83C.w,X		; 3E 3C B8
	clv		; B8
	sbc [$E1.b]		; E7 E1
	ora $400008.l,X		; 1F 08 00 40
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $D0.b		; 00 D0
	bra 104.b		; 80 68
	cpy #$043E.w		; C0 3E 04
	sbc $80001F.l,X		; FF 1F 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $D0.b		; 00 D0
	bra -32.b		; 80 E0
	cpy #$001E.w		; C0 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$4060.w		; C0 60 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	ora [$0C.b]		; 07 0C
	asl A		; 0A
	php		; 08
	tsb $3819.w		; 0C 19 38
	and ($20.b)		; 32 20
	stz $10.b,X		; 74 10
	sei		; 78
	bpl  -8.b		; 10 F8
	brk $B0.b		; 00 B0
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	bit $2800.w		; 2C 00 28
	brk $10.b		; 00 10
	brk $50.b		; 00 50
	rti		; 40

	rts		; 60

	jsr $4000.w		; 20 00 40
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
	brk $00.b		; 00 00
	asl $1E77.w		; 0E 77 1E
	sbc $7FDF3F.l		; EF 3F DF 7F
	lda $F0FFFC.l,X		; BF FC FF F0
	sbc $C6F0E3.l,X		; FF E3 F0 C6
	lda [$3E.b]		; A7 3E
	plp		; 28
	ror $FF50.w,X		; 7E 50 FF
	ldy #$40FF.w		; A0 FF 40
	sbc $0CFC01.l,X		; FF 01 FC 0C
	sbc ($1F.b,S),Y		; F3 1F
	inc $7E.b		; E6 7E
	sed		; F8
	and $80EEF1.l,X		; 3F F1 EE 80
	sbc $17E007.l,X		; FF 07 E0 17
	sbc ($07.b),Y		; F1 07
	beq  14.b		; F0 0E
	sed		; F8
	sty $7C.b		; 84 7C
	inc $FDC4.w,X		; FE C4 FD
	ora ($E7.b),Y		; 11 E7
	and ($D8.b,X)		; 21 D8
	rti		; 40

	asl $CF00.w		; 0E 00 CF
	rti		; 40

	sbc [$21.b]		; E7 21
	sbc $81.b,S		; E3 81
	and $200E61.l,X		; 3F 61 0E 20
	asl $0F30.w,X		; 1E 30 0F
	bpl   7.b		; 10 07
	bpl   7.b		; 10 07
	bpl   7.b		; 10 07
	bmi   8.b		; 30 08
	sei		; 78
	asl $3F00.w,X		; 1E 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000F10.l,X		; 1F 10 0F 00
	ora $101F00.l		; 0F 00 1F 10
	and [$30.b],Y		; 37 30
	cop $8E.b		; 02 8E
	ora ($87.b,X)		; 01 87
	brk $81.b		; 00 81
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bra -128.b		; 80 80
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
	and ($5E.b,X)		; 21 5E
	brk $73.b		; 00 73
	brk $63.b		; 00 63
	brk $21.b		; 00 21
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($31.b),Y		; 71 31
	rts		; 60

	rti		; 40

	and ($21.b,X)		; 21 21
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$1B.b],Y		; 37 1B
	and [$7F.b],Y		; 37 7F
	and $7C3F76.l,X		; 3F 76 3F 7C
	ror $7C39.w,X		; 7E 39 7C
	and ($79.b,S),Y		; 33 79
	ldx $71.b		; A6 71
	lda $3F243F.l		; AF 3F 24 3F
	brk $7F.b		; 00 7F
	eor #$7F.b		; 49 7F
	ora $7F.b,S		; 03 7F
	eor [$7F.b]		; 47 7F
	lsr $5D7D.w		; 4E 7D 5D
	tda		; 7B
	cli		; 58
	cmp #$BD.b		; C9 BD
	wai		; CB
	and ($A1.b,S),Y		; 33 A1
	tda		; 7B
	bmi  -7.b		; 30 F9
	bvc -68.b		; 50 BC
	cpy $3F.b		; C4 3F
	cmp $D9BE.w		; CD BE D9
	ldx $43ED.w,Y		; BE ED 43
	cmp #$CF.b		; C9 CF
	tay		; A8
	sta [$B0.b]		; 87 B0
	sta [$D0.b]		; 87 D0
	eor $E4.b,S		; 43 E4
	cpy #$61ED.w		; C0 ED 61
	cmp $9E41.w,Y		; D9 41 9E
	bcc -47.b		; 90 D1
	cpy #$E7EF.w		; C0 EF E7
	beq -16.b		; F0 F0
	and $3F1FFF.l,X		; 3F FF 1F 3F
	asl $E7.b		; 06 E7
	brk $F3.b		; 00 F3
	brk $F7.b		; 00 F7
	bra -18.b		; 80 EE
	cmp ($F7.b,X)		; C1 F7
	rts		; 60

	sbc $0EFF3F.l,X		; FF 3F FF 0E
	sbc $803F84.l,X		; FF 84 3F 80
	ora $A000F0.l,X		; 1F F0 00 A0
	bra  -6.b		; 80 FA
	ldy $BFBF.w,X		; BC BF BF
	and $86073D.l,X		; 3F 3D 07 86
	cop $80.b		; 02 80
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $D8.b		; 00 D8
	bcs -65.b		; B0 BF
	rol $00FF.w,X		; 3E FF 00
	sbc $00FF02.l,X		; FF 02 FF 00
	inc $00.b		; E6 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $3B07.w		; 0E 07 3B
	ora $DF3F6F.l,X		; 1F 6F 3F DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $303F14.l,X		; 1F 14 3F 30
	adc $180020.l,X		; 7F 20 00 18
	brk $2C.b		; 00 2C
	brk $C6.b		; 00 C6
	bra 114.b		; 80 72
	beq -20.b		; F0 EC
	sed		; F8
	inc $FC.b,X		; F6 FC
	tda		; 7B
	inc $005D.w,X		; FE 5D 00
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	sec		; 38
	cpx $F88C.w		; EC 8C F8
	bpl  -4.b		; 10 FC
	php		; 08
	inc $FE84.w,X		; FE 84 FE
	ldx #$BC44.w		; A2 44 BC
	rti		; 40

	lda $8A7689.l,X		; BF 89 76 8A
	adc $92.b,X		; 75 92
	adc $ED12.w		; 6D 12 ED
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	mvp $60,$4F		; 44 4F 60
	mvp $89,$E9		; 44 E9 89
	xba		; EB
	txa		; 8A
	stp		; DB
	sta ($DB.b)		; 92 DB
	ora ($DD.b)		; 12 DD
	ora ($DD.b),Y		; 11 DD
	ora ($40.b),Y		; 11 40
	bcs  32.b		; B0 20
	cld		; D8
	bvc -84.b		; 50 AC
	pha		; 48
	ldx $44.b,Y		; B6 44
	tsx		; BA
	jsr $20DE.w		; 20 DE 20
	dec $EC10.w,X		; DE 10 EC
	rti		; 40

	rti		; 40

	bmi  32.b		; 30 20
	cli		; 58
	bvc 108.b		; 50 6C
	pha		; 48
	stz $44.b,X		; 74 44
	clv		; B8
	jsr $20BC.w		; 20 BC 20
	cld		; D8
	bpl   0.b		; 10 00
	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	cpx #$F030.w		; E0 30 F0
	bpl -16.b		; 10 F0
	php		; 08
	sei		; 78
	tsb $86B0.w		; 0C B0 86
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($3C04.w,X)		; 7C 04 3C
	inc $18.b		; E6 18
	.db $42, $18		; 42 18
	.db $42, $18		; 42 18
	.db $42, $18		; 42 18
	.db $42, $3A		; 42 3A
	.db $62, $3E, $62		; 62 3E 62
	asl $1A62.w		; 0E 62 1A
	cop $7E.b		; 02 7E
	.db $42, $7E		; 42 7E
	.db $42, $7E		; 42 7E
	.db $42, $7E		; 42 7E
	.db $42, $5C		; 42 5C
	rti		; 40

	trb $3C00.w		; 1C 00 3C
	jsr $721E.w		; 20 1E 72
	asl $0632.w,X		; 1E 32 06
	and ($06.b)		; 32 06
	and ($0C.b)		; 32 0C
	clc		; 18
	tsb $0418.w		; 0C 18 04
	clc		; 18
	tsb $18.b		; 04 18
	bit $0C20.w		; 2C 20 0C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  22.b		; 10 16
	bpl   6.b		; 10 06
	brk $0E.b		; 00 0E
	php		; 08
	asl $00.b		; 06 00
	php		; 08
	ora $000F06.l,X		; 1F 06 0F 00
	ora $000900.l		; 0F 00 09 00
	php		; 08
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	php		; 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C05.w		; 0E 05 1C
	phd		; 0B
	clc		; 18
	ora [$31.b],Y		; 17 31
	asl $0023.w		; 0E 23 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	asl $3C00.w		; 0E 00 3C
	jsr $FF5C.w		; 20 5C FF
	bra -122.b		; 80 86
	pla		; 68
	tsb $18D0.w		; 0C D0 18
	cpy #$8060.w		; C0 60 80
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	ldx #$7CA2.w		; A2 A2 7C
	tsb $F0.b		; 04 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $1C.b,X		; 16 1C
	rol $10.b,X		; 36 10
	rol $08.b,X		; 36 08
	bit $5C20.w,X		; 3C 20 5C
	plp		; 28
	jmp $707810.l		; 5C 10 78 70
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $0C.b		; 00 0C
	tsb $10.b		; 04 10
	bpl  32.b		; 10 20
	jsr $2038.w		; 20 38 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	brk $44.b		; 00 44
	brk $22.b		; 00 22
	brk $3A.b		; 00 3A
	bpl  45.b		; 10 2D
	clc		; 18
	and [$00.b]		; 27 00
	and $300003.l,X		; 3F 03 00 30
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	brk $1A.b		; 00 1A
	bpl  28.b		; 10 1C
	clc		; 18
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	sbc $7B077F.l,X		; FF 7F 07 7B
	eor ($DE.b),Y		; 51 DE
	mvn $A4,$D7		; 54 D7 A4
	lda [$2C.b]		; A7 2C
	plb		; AB
	ora $BC5B.w,X		; 1D 5B BC
	ora ($FF.b)		; 12 FF
	bra  63.b		; 80 3F
	cpx $57.b		; E4 57
	adc ($57.b),Y		; 71 57
	tda		; 7B
	asl $FA.b		; 06 FA
	tsb $1CF4.w		; 0C F4 1C
	cpx $1F.b		; E4 1F
	dec $B2CF.w		; CE CF B2
	sta $EF1F67.l,X		; 9F 67 1F EF
	ora $DB47F7.l		; 0F F7 47 DB
	lda $8F.b,S		; A3 8F
	rtl		; 6B

	ora $EB.b		; 05 EB
	ora [$FF.b]		; 07 FF
	eor $98FF.w		; 4D FF 98
	sbc $889F50.l,X		; FF 50 9F 88
	and $007704.l		; 2F 04 77 00
	sbc ($02.b,S),Y		; F3 02
	sbc ($00.b,S),Y		; F3 00
	ora $DF3877.l		; 0F 77 38 DF
	cpx #$8C7F.w		; E0 7F 8C
	sbc ($1C.b,S),Y		; F3 1C
	sbc $78DF38.l		; EF 38 DF 78
	lda $3F73FB.l,X		; BF FB 73 3F
	plp		; 28
	sbc $F7A1.w,X		; FD A1 F7
	sty $DE.b		; 84 DE
	trb $B0BD.w		; 1C BD B0
	tda		; 7B
	rts		; 60

	sed		; F8
	cpy #$8FF9.w		; C0 F9 8F
	sbc ($1E.b,X)		; E1 1E
	brk $FC.b		; 00 FC
	ora $FD.b		; 05 FD
	and $40BFE0.l		; 2F E0 BF 40
	bvc -15.b		; 50 F1
	and ($FE.b,X)		; 21 FE
	sta $FC.b,S		; 83 FC
	sbc $03F0ED.l,X		; FF ED F0 03
	txa		; 8A
	php		; 08
	eor $80BF40.l,X		; 5F 40 BF 80
	dec $6400.w		; CE 00 64
	ora $A0.b		; 05 A0
	bra -80.b		; 80 B0
	inc $7E80.w,X		; FE 80 7E
	cop $FC.b		; 02 FC
	tsb $FA.b		; 04 FA
	ora #$F6.b		; 09 F6
	ora ($EE.b),Y		; 11 EE
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	clv		; B8
	ora ($D6.b,X)		; 01 D6
	cmp ($EE.b,X)		; C1 EE
	adc $DC.b,S		; 63 DC
	cmp $3B.b		; C5 3B
	ora #$77.b		; 09 77
	ora ($6E.b),Y		; 11 6E
	brk $1E.b		; 00 1E
	cop $F7.b		; 02 F7
	sbc [$F6.b],Y		; F7 F6
	sbc [$F4.b],Y		; F7 F4
	sbc [$E0.b],Y		; F7 E0
	sbc $2A1708.l		; EF 08 17 2A
	cmp $29.b,X		; D5 29
	dec $24.b,X		; D6 24
	stp		; DB
	inc $FF.b		; E6 FF
	cpx $FE.b		; E4 FE
	cpx #$81FE.w		; E0 FE 81
	pea $E809.w		; F4 09 E8
	ror A		; 6A
	rol A		; 2A
	rtl		; 6B

	and #$ED.b		; 29 ED
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	and $0700.w,X		; 3D 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01010A.l		; 0F 0A 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0D.b,S		; 03 0D
	ora $1F.b,S		; 03 1F
	ora $FC3F7F.l		; 0F 7F 3F FC
	jsr ($E1F3.w,X)		; FC F3 E1
	asl $FD03.w,X		; 1E 03 FD
	ora [$1B.b]		; 07 1B
	ora [$06.b]		; 07 06
	ora $203F08.l		; 0F 08 3F 20
	sbc $0EFE83.l,X		; FF 83 FE 0E
	xce		; FB
	xce		; FB
	sbc [$E6.b]		; E7 E6
	ora $C67C0C.l		; 0F 0C 7C C6
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	.db $62, $0C, $61		; 62 0C 61
	asl $0631.w,X		; 1E 31 06
	bmi   3.b		; 30 03
	bmi  11.b		; 30 0B
	clc		; 18
	sec		; 38
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $3E.b		; 00 3E
	jsr $212F.w		; 20 2F 21
	ora $101F10.l,X		; 1F 10 1F 10
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	rti		; 40

	bpl  32.b		; 10 20
	dey		; 88
	clc		; 18
	jsr ($FC00.w,X)		; FC 00 FC
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	bra  24.b		; 80 18
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bpl  96.b		; 10 60
	bpl  32.b		; 10 20
	dey		; 88
	bpl -52.b		; 10 CC
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $19.b		; 00 19
	ora $0D.b		; 05 0D
	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bra 112.b		; 80 70
	rti		; 40

	tsb $00.b		; 04 00
	clc		; 18
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	pha		; 48
	sec		; 38
	rts		; 60

	plp		; 28
	stz $1C.b		; 64 1C
	adc ($00.b)		; 72 00
	rol $3F0C.w,X		; 3E 0C 3F
	tsb $3F.b		; 04 3F
	brk $1F.b		; 00 1F
	sei		; 78
	pha		; 48
	cli		; 58
	rti		; 40

	trb $2E04.w		; 1C 04 2E
	jsl $1E0000.l		; 22 00 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $D8.b		; 00 D8
	bra 100.b		; 80 64
	cpy #$C0A4.w		; C0 A4 C0
	clv		; B8
	cpx #$E0D0.w		; E0 D0 E0
	bne -128.b		; D0 80
	bra   0.b		; 80 00
	brk $A0.b		; 00 A0
	jsr $98D8.w		; 20 D8 98
	cld		; D8
	cli		; 58
	cpx #$E040.w		; E0 40 E0
	jsr $20F0.w		; 20 F0 20
	cpx #$F0F8.w		; E0 F8 F0
	pla		; 68
	beq 104.b		; F0 68
	bcs -56.b		; B0 C8
	jsr $40D0.w		; 20 D0 40
	bcs   0.b		; B0 00
	cpx #$C000.w		; E0 00 C0
	beq   0.b		; F0 00
	beq -112.b		; F0 90
	beq -112.b		; F0 90
	bcs  48.b		; B0 30
	bcs -96.b		; B0 A0
	rts		; 60

	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $30.b		; 00 30
	dec $18.b		; C6 18
	lsr $1C.b		; 46 1C
	lsr $3C.b		; 46 3C
	ror $3A.b		; 66 3A
	.db $62, $1A, $62		; 62 1A 62
	asl $1C63.w,X		; 1E 63 1C
	and ($7C.b,X)		; 21 7C
	mvp $04,$3C		; 44 3C 04
	sec		; 38
	brk $1A.b		; 00 1A
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	rol $4020.w,X		; 3E 20 40
	bvs -96.b		; 70 A0
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	inx		; E8
	tsb $0470.w		; 0C 70 04
	bit $1886.w,X		; 3C 86 18
.ACCU 16
	rep #$A0		; C2 A0
	jsr $10D0.w		; 20 D0 10
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $7E.b		; 00 7E
	.db $42, $F9		; 42 F9
	rol $F1.b,X		; 36 F1
	rol $1A60.w		; 2E 60 1A
	bmi  11.b		; 30 0B
	clc		; 18
	and [$B9.b],Y		; 37 B9
	ror $FC.b,X		; 76 FC
	brk $A0.b		; 00 A0
	cpy #$0A3F.w		; C0 3F 0A
	and $1590.w,Y		; 39 90 15
	bne  13.b		; D0 0D
	sbc #$C030.w		; E9 30 C0
	adc [$05.b],Y		; 77 05
	brk $0E.b		; 00 0E
	brk $DC.b		; 00 DC
	inx		; E8
	ora $2C0726.l,X		; 1F 26 07 2C
	ora $00F7C8.l,X		; 1F C8 F7 00
	cpy #$0100.w		; C0 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F900.w		; E0 00 F9
	cmp ($E3.b,X)		; C1 E3
	cmp $15.b,S		; C3 15
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	xba		; EB
	sbc ($DB.b,X)		; E1 DB
	cmp ($BF.b,X)		; C1 BF
	sta ($7D.b,X)		; 81 7D
	sec		; 38
	sbc $7EF0.w,X		; FD F0 7E
	inx		; E8
	inc $FED8.w,X		; FE D8 FE
	sbc $F917.w,Y		; F9 17 F9
	and $F85BF9.l		; 2F F9 5B F8
	lda $F8.b,S		; A3 F8
	sta $F4.b,S		; 83 F4
	sta ($EC.b,X)		; 81 EC
	ora ($DC.b,X)		; 01 DC
	ora ($8F.b,X)		; 01 8F
	dec $DC9F.w,X		; DE 9F DC
	stz $9CD8.w,X		; 9E D8 9C
	bne -97.b		; D0 9F
	cpy #$C09F.w		; C0 9F C0
	dey		; 88
	cpy #$E16F.w		; C0 6F E1
	sty $98EE.w		; 8C EE 98
	sbc $FB90.w,X		; FD 90 FB
	bra  -9.b		; 80 F7
	bra -32.b		; 80 E0
	bra -25.b		; 80 E7
	brk $F7.b		; 00 F7
	adc ($F1.b,X)		; 61 F1
	brk $FF.b		; 00 FF
	tsb $7B.b		; 04 7B
	tsb $3B.b		; 04 3B
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora $0F.b,S		; 03 0F
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	bit $1D00.w,X		; 3C 00 1D
	tsb $0D.b		; 04 0D
	tsb $00.b		; 04 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $05.b		; 04 05
	tsb $01.b		; 04 01
	brk $24.b		; 00 24
	stp		; DB
	.db $62, $9D, $42		; 62 9D 42
	lda $BF40.w,X		; BD 40 BF
	rti		; 40

	lda $10FE80.l,X		; BF 80 FE 10
	ora $ED0DE0.l,X		; 1F E0 0D ED
	bit $FE.b		; 24 FE
	.db $62, $DE, $42		; 62 DE 42
	dec $5840.w,X		; DE 40 58
	rti		; 40

	ora $02.b,S		; 03 02
	sbc #$F809.w		; E9 09 F8
	php		; 08
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
	ora $FE1F37.l		; 0F 37 1F FE
	ror $00B9.w,X		; 7E B9 00
	adc $001F00.l,X		; 7F 00 1F 00
	ora [$00.b]		; 07 00
	ora $1F0100.l		; 0F 00 01 1F
	clc		; 18
	and $C6FF21.l,X		; 3F 21 FF C6
	ora $070701.l,X		; 1F 01 07 07
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	php		; 08
	rol $3A10.w,X		; 3E 10 3A
	brk $1A.b		; 00 1A
	cop $19.b		; 02 19
	cop $09.b		; 02 09
	ora [$0C.b]		; 07 0C
	ora $0C.b		; 05 0C
	ora $0E.b,S		; 03 0E
	php		; 08
	brk $14.b		; 00 14
	brk $0C.b		; 00 0C
	php		; 08
	asl $0F08.w		; 0E 08 0F
	ora #$080B.w		; 09 0B 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora $3DC1.w,X		; 1D C1 3D
	sbc ($0F.b,X)		; E1 0F
	adc ($1F.b,X)		; 61 1F
	adc ($1F.b),Y		; 71 1F
	and ($07.b),Y		; 31 07
	and ($0E.b),Y		; 31 0E
	clc		; 18
	asl $7E18.w		; 0E 18 7E
	rti		; 40

	lsr $3E40.w,X		; 5E 40 3E
	jsr $202E.w		; 20 2E 20
	asl $1E00.w		; 0E 00 1E
	bpl   7.b		; 10 07
	brk $07.b		; 00 07
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	bcs  32.b		; B0 20
	cld		; D8
	bra 120.b		; 80 78
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	cpx #$7040.w		; E0 40 70
	jsr $80B0.w		; 20 B0 80
	rti		; 40

	clv		; B8
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bpl -36.b		; 10 DC
	inx		; E8
	tsb $06F0.w		; 0C F0 06
	jmp ($3A07.w,X)		; 7C 07 3A
	sta $D0.b,S		; 83 D0
	rti		; 40

	cpy #$9000.w		; C0 00 90
	bpl  40.b		; 10 28
	php		; 08
	pea $FC04.w		; F4 04 FC
	tsb $FA.b		; 04 FA
	cop $FD.b		; 02 FD
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	ora [$0F.b]		; 07 0F
	adc [$06.b],Y		; 77 06
	ora $0700.w,Y		; 19 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	and $0E0F28.l,X		; 3F 28 0F 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $98.b,S		; 03 98
	ora ($8C.b,X)		; 01 8C
	brk $86.b		; 00 86
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora $040708.l		; 0F 08 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bmi -124.b		; 30 84
	clc		; 18
	sty $58.b		; 84 58
.ACCU 16
	rep #$2C		; C2 2C
	sbc $1C.b,S		; E3 1C
	adc ($06.b),Y		; 71 06
	bmi   3.b		; 30 03
	clc		; 18
	ora ($0C.b,X)		; 01 0C
	sed		; F8
	bra  -4.b		; 80 FC
	sty $3C.b		; 84 3C
	brk $5E.b		; 00 5E
	.db $42, $2F		; 42 2F
	and ($1F.b,X)		; 21 1F
	bpl  15.b		; 10 0F
	php		; 08
	ora [$04.b]		; 07 04
	sec		; 38
	.db $42, $3A		; 42 3A
	.db $42, $1E		; 42 1E
	.db $42, $1E		; 42 1E
	eor $3C.b,S		; 43 3C
	and ($0C.b,X)		; 21 0C
	and ($1D.b,X)		; 21 1D
	and ($06.b),Y		; 31 06
	bmi  62.b		; 30 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1F.b		; 00 1F
	ora ($3F.b,X)		; 01 3F
	and ($0E.b,X)		; 21 0E
	brk $1F.b		; 00 1F
	bpl  40.b		; 10 28
	pla		; 68
	trb $047C.w		; 1C 7C 04
	bmi   2.b		; 30 02
	sec		; 38
	ora ($3C.b,X)		; 01 3C
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	bpl   0.b		; 10 00
	jsr $1E20.w		; 20 20 1E
	bpl  47.b		; 10 2F
	php		; 08
	ora [$04.b],Y		; 17 04
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora [$7B.b]		; 07 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $000014.l,X		; 1F 14 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	asl $FFE1.w,X		; 1E E1 FF
	adc $00FFFF.l,X		; 7F FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	lsr $80FF.w,X		; 5E FF 80
	sbc $000000.l,X		; FF 00 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $E3.b		; 00 E3
	cpy #$FEBF.w		; C0 BF FE
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	sbc ($53.b,S),Y		; F3 53
	sbc $000002.l,X		; FF 02 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $5C.b		; 00 5C
	brk $22.b		; 00 22
	brk $41.b		; 00 41
	brk $F9.b		; 00 F9
	clc		; 18
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -36.b		; 80 DC
	jmp.w [$BEBE]		; DC BE BE
	asl $06.b		; 06 06
	sed		; F8
	clc		; 18
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $62, $0C, $62		; 62 0C 62
	trb $0432.w		; 1C 32 04
	and ($0E.b)		; 32 0E
	tas		; 1B
	cop $1B.b		; 02 1B
	brk $0B.b		; 00 0B
	jmp ($1C40.w,X)		; 7C 40 1C
	brk $3E.b		; 00 3E
	jsl $1E020E.l		; 22 0E 02 1E
	ora ($04.b)		; 12 04
	brk $0C.b		; 00 0C
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $11.b		; 00 11
	ora ($2E.b,X)		; 01 2E
	ora [$3B.b]		; 07 3B
	ora $BD0E77.l		; 0F 77 0E BD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $170E.w		; 0E 0E 17
	ora $0F.b,X		; 15 0F
	tsb $080F.w		; 0C 0F 08
	lsr $0052.w,X		; 5E 52 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7080.w		; E0 80 70
	cpx #$80D8.w		; E0 D8 80
	sei		; 78
	rti		; 40

	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0A0.w		; E0 A0 F0
	bmi -48.b		; 30 D0
	bra  96.b		; 80 60
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  32.b		; 80 20
	and $3530.w		; 2D 30 35
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpx #$D310.w		; E0 10 D3
	jsr $18CF.w		; 20 CF 18
	clc		; 18
	tsb $261C.w		; 0C 1C 26
	rol $1C02.w,X		; 3E 02 1C
	jmp ($B000.w)		; 6C 00 B0
	rts		; 60

	rts		; 60

	beq -32.b		; F0 E0
	beq  24.b		; F0 18
	trb $3E0C.w		; 1C 0C 3E
	rol $7E.b		; 26 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	jsr $C0F0.w		; 20 F0 C0
	beq  12.b		; F0 0C
	sbc ($60.b,S),Y		; F3 60
	cmp $E46FF0.l,X		; DF F0 6F E4
	stp		; DB
	iny		; C8
	sbc [$DA.b]		; E7 DA
	lda $BBC183.l,X		; BF 83 C1 BB
	ldy $AEFE.w,X		; BC FE AE
	jsr ($F934.w,X)		; FC 34 F9
	tya		; 98
	sbc ($30.b,S),Y		; F3 30
	sbc ($34.b,X)		; E1 34
	iny		; C8
	ror $7F80.w,X		; 7E 80 7F
	tya		; 98
	jmp ($1430.w,X)		; 7C 30 14
	bpl -114.b		; 10 8E
	cli		; 58
	cmp [$28.b]		; C7 28
	sbc [$10.b]		; E7 10
	sbc [$09.b],Y		; F7 09
	inc $FC02.w,X		; FE 02 FC
	sbc $00E804.l,X		; FF 04 E8 00
	bvs  96.b		; 70 60
	tsa		; 3B
	brk $9B.b		; 00 9B
	brk $CA.b		; 00 CA
	brk $E0.b		; 00 E0
	ora ($30.b,X)		; 01 30
	ora $04.b,S		; 03 04
	cmp $AE.b,S		; C3 AE
	tya		; 98
	and $19.b		; 25 19
	ora ($6B.b)		; 12 6B
	cpy $3F.b		; C4 3F
	jsr $105E.w		; 20 5E 10
	cpx $7880.w		; EC 80 78
	rti		; 40

	clv		; B8
	and [$E0.b]		; 27 E0
	rol $E0.b		; 26 E0
	bit $90.b,X		; 34 90
	bvc -64.b		; 50 C0
	rts		; 60

	ldy #$1070.w		; A0 70 10
	bcs -128.b		; B0 80
	cpy #$BC40.w		; C0 40 BC
	cpy $70.b		; C4 70
	cpy $38.b		; C4 38
	sty $8C78.w		; 8C 78 8C
	sei		; 78
	sty $8CF8.w		; 8C F8 8C
	inx		; E8
	sty $8860.w		; 8C 60 88
	sei		; 78
	rti		; 40

	bit $F004.w,X		; 3C 04 F0
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	dey		; 88
	ora [$DB.b],Y		; 17 DB
	and $EF1FF7.l		; 2F F7 1F EF
	asl $8EEF.w,X		; 1E EF 8E
	ror $7C8E.w,X		; 7E 8E 7C
	sty $7B.b		; 84 7B
	brk $F3.b		; 00 F3
	lda ($83.b,X)		; A1 83
	sta $87.b,S		; 83 87
	stx $0F.b		; 86 0F
	ldx $AC0F.w		; AE 0F AC
	sta $D29FA8.l,X		; 9F A8 9F D2
	cpy $4CE1.w		; CC E1 4C
	xce		; FB
	sbc ($CF.b,S),Y		; F3 CF
	sta $2E3F9F.l		; 8F 9F 3F 2E
	asl $2915.w,X		; 1E 15 29
	asl $50D6.w,X		; 1E D6 50
	lda $AB54.w		; AD 54 AB
	sta $FF.b,S		; 83 FF
	asl $FF.b		; 06 FF
	asl $FF.b		; 06 FF
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	lsr $3F.b		; 46 3F
	bne  82.b		; D0 52
	pei ($54.b)		; D4 54
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$0B.b]		; 07 0B
	ora [$1F.b]		; 07 1F
	ora $1F0F17.l		; 0F 17 0F 1F
	ora $3F1E2E.l,X		; 1F 2E 1E 3F
	trb $3C3F.w		; 1C 3F 3C
	ora $0F0C0F.l,X		; 1F 0F 0C 0F
	brk $1F.b		; 00 1F
	clc		; 18
	ora $111F00.l,X		; 1F 00 1F 11
	and $013F20.l,X		; 3F 20 3F 01
	and $7F3821.l,X		; 3F 21 38 7F
	sec		; 38
	adc $3B7E39.l,X		; 7F 39 7E 3B
	adc $3F7B.w,X		; 7D 7B 3F
	adc $773F3B.l,X		; 7F 3B 3F 77
	and [$5F.b],Y		; 37 5F
	and $023F03.l,X		; 3F 03 3F 02
	adc $067F45.l,X		; 7F 45 7F 06
	adc $447F40.l,X		; 7F 40 7F 44
	adc $607F08.l,X		; 7F 08 7F 60
	ora [$7F.b],Y		; 17 7F
	ora [$2E.b],Y		; 17 2E
	asl $3F.b		; 06 3F
	asl $1F.b		; 06 1F
	asl $13.b		; 06 13
	cop $15.b		; 02 15
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	and $393F00.l,X		; 3F 00 3F 39
	ora $101708.l,X		; 1F 08 17 10
	ora [$05.b]		; 07 05
	asl $02.b		; 06 02
	asl $04.b		; 06 04
	cop $02.b		; 02 02
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
	tsb $1C3B.w		; 0C 3B 1C
	pld		; 2B
	rol $3E5D.w,X		; 3E 5D 3E
	eor $1E5F3E.l,X		; 5F 3E 5F 1E
	sbc $EF1C.w,X		; FD 1C EF
	asl $FDF9.w		; 0E F9 FD
	sbc $FE.b		; E5 FE
	pei ($BF.b)		; D4 BF
	lda $BF.b,S		; A3 BF
	ldy #$E0FF.w		; A0 FF E0
	adc $707E43.l,X		; 7F 43 7E 70
	adc $689067.l,X		; 7F 67 90 68
	beq   6.b		; F0 06
	jmp ($7E83.w,X)		; 7C 83 7E
	sta $70.b,S		; 83 70
	sta ($60.b,X)		; 81 60
	brk $60.b		; 00 60
	cop $20.b		; 02 20
	.db $82, $80, $00		; 82 80 00
	inx		; E8
	brk $7E.b		; 00 7E
	cop $5C.b		; 02 5C
	brk $3E.b		; 00 3E
	tsb $1CBE.w		; 0C BE 1C
	inc $7C1E.w,X		; FE 1E 7C
	clc		; 18
	and [$0F.b],Y		; 37 0F
	cmp $2FC707.l,X		; DF 07 C7 2F
	mvp $62,$3B		; 44 3B 62
	ora $3E81.w,X		; 1D 81 3E
	adc $9C.b		; 65 9C
	xba		; EB
	tya		; 98
	and ($CF.b,S),Y		; 33 CF
	and [$0F.b],Y		; 37 0F
	rol $1827.w,X		; 3E 27 18
	sta [$0C.b],Y		; 97 0C
	tax		; AA
	ora [$46.b]		; 07 46
	phd		; 0B
	dey		; 88
	ora [$80.b]		; 07 80
	cpy #$80E0.w		; C0 E0 80
	cld		; D8
	clc		; 18
	ldy $8674.w,X		; BC 74 86
	sed		; F8
	cop $F8.b		; 02 F8
	cop $98.b		; 02 98
	jsl $80661C.l		; 22 1C 66 80
	cpx #$E000.w		; E0 00 E0
	jsr $78E0.w		; 20 E0 78
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	jsr $60F8.w		; 20 F8 60
	sta [$F8.b]		; 87 F8
	txy		; 9B
	ldy $64B6.w,X		; BC B6 64
	ora $39C6.w,X		; 1D C6 39
	dec $39.b		; C6 39
	dec $33.b		; C6 33
	cpy $2B.b		; C4 2B
	cmp $4580.w		; CD 80 45
	ldy #$D861.w		; A0 61 D8
	cmp ($F8.b,X)		; C1 F8
	.db $42, $FC		; 42 FC
	dec $FC.b		; C6 FC
	cmp [$F8.b]		; C7 F8
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	cmp ($F6.b,X)		; C1 F6
	tsb $0C34.w		; 0C 34 0C
	tad		; 5B
	tsb $26.b		; 04 26
	clc		; 18
	stp		; DB
	bit $7EBB.w,X		; 3C BB 7E
	tda		; 7B
	sbc $0CFBFF.l,X		; FF FF FB 0C
	sbc $0C.b,S		; E3 0C
	sbc $04.b,S		; E3 04
	cpx #$D900.w		; E0 00 D9
	clc		; 18
	bit $7E3A.w,X		; 3C 3A 7E
	tsa		; 3B
	sbc $30FFB3.l,X		; FF B3 FF 30
	iny		; C8
	brk $F8.b		; 00 F8
	bpl  -4.b		; 10 FC
	plp		; 28
	inc $58.b		; E6 58
	cmp $DD.b,S		; C3 DD
	cmp ($DE.b,X)		; C1 DE
	cpy #$E02F.w		; C0 2F E0
	beq  48.b		; F0 30
	rts		; 60

	brk $48.b		; 00 48
	php		; 08
	trb $3E04.w		; 1C 04 3E
	cop $3E.b		; 02 3E
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	rti		; 40

	bvs -104.b		; 70 98
	bvs -104.b		; 70 98
	jsr $0098.w		; 20 98 00
	bne   0.b		; D0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	bvs -24.b		; 70 E8
	dey		; 88
	rts		; 60

	brk $70.b		; 00 70
	bpl  48.b		; 10 30
	bpl  64.b		; 10 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $04.b		; 00 04
	xce		; FB
	tsb $FB.b		; 04 FB
	ora #$09F6.w		; 09 F6 09
	inc $00.b,X		; F6 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $CD7D02.l,X		; FF 02 7D CD
	mvp $C4,$DF		; 44 DF C4
	tyx		; BB
	bit #$C9DB.w		; 89 DB C9
	cpx $E0.b		; E4 E0
	stz $30.b,X		; 74 30
	adc ($30.b)		; 72 30
	rol $12.b,X		; 36 12
	sta ($6D.b)		; 92 6D
	sta ($6D.b)		; 92 6D
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	bpl -17.b		; 10 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ldx $92.b,Y		; B6 92
	ldx $92.b,Y		; B6 92
	adc [$11.b],Y		; 77 11
	adc [$11.b],Y		; 77 11
	adc [$11.b],Y		; 77 11
	asl $10.b,X		; 16 10
	eor ($01.b,X)		; 41 01
	jmp $7B041C.l		; 5C 1C 04 7B
	ora $3B.b		; 05 3B
	ora ($1F.b,X)		; 01 1F
	ora ($0F.b,X)		; 01 0F
	cop $0D.b		; 02 0D
	ora $0C.b,S		; 03 0C
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	bit $24.b,X		; 34 24
	trb $14.b		; 14 14
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	tsb $06FF.w		; 0C FF 06
	ror $8701.w,X		; 7E 01 87
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$00E0.w		; C0 E0 00
	cpx #$0323.w		; E0 23 03
	bit #$0208.w		; 89 08 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	sed		; F8
	sbc $3E.b,S		; E3 3E
	adc $2F0F.w,Y		; 79 0F 2F
	cpx #$1C05.w		; E0 05 1C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$90.b],Y		; 97 90
	cmp $04.b		; C5 04
	sbc ($02.b)		; F2 02
	eor $080B40.l,X		; 5F 40 0B 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	sei		; 78
	sty $DC3E.w		; 8C 3E DC
	tsa		; 3B
	cpy #$803F.w		; C0 3F 80
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	brk $DC.b		; 00 DC
	brk $DE.b		; 00 DE
	tsb $C0.b		; 04 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	rts		; 60

	brk $92.b		; 00 92
	brk $0C.b		; 00 0C
	asl $39.b		; 06 39
	ora $BC7FE0.l,X		; 1F E0 7F BC
	sbc $000072.l		; EF 72 00 00
	ora ($01.b,X)		; 01 01
	adc ($61.b,X)		; 61 61
	sbc ($F3.b,S),Y		; F3 F3
	cmp $1F3FD7.l,X		; DF D7 3F 1F
	sbc $8DFFC3.l,X		; FF C3 FF 8D
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $90.b		; 00 90
	brk $C8.b		; 00 C8
	bra 127.b		; 80 7F
	sbc [$9F.b]		; E7 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	rts		; 60

	bcs -80.b		; B0 B0
	sta $82.b,S		; 83 82
	sbc $807C78.l,X		; FF 78 7C 80
	bcs  80.b		; B0 50
	phd		; 0B
	tya		; 98
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora [$08.b]		; 07 08
	asl $06.b		; 06 06
	ora $0F0D.w		; 0D 0D 0F
	ora $8F.b,S		; 03 8F
	sta [$07.b]		; 87 07
	brk $07.b		; 00 07
	ora [$01.b]		; 07 01
	brk $07.b		; 00 07
	ora [$04.b]		; 07 04
	ora $230F09.l		; 0F 09 0F 23
	jmp ($64AB.w)		; 6C AB 64
	phd		; 0B
	pea $EB15.w		; F4 15 EB
	rol $DAD1.w		; 2E D1 DA
	jsr $C030.w		; 20 30 C0
	clv		; B8
	bra -44.b		; 80 D4
	eor $98.b		; 45 98
	ora ($B8.b,X)		; 01 B8
	bcs 115.b		; B0 73
	bpl -31.b		; 10 E1
	bit $C0.b		; 24 C0
	cmp $003F00.l,X		; DF 00 3F 00
	cmp [$00.b]		; C7 00
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	asl $FD1E.w,X		; 1E 1E FD
	jsr ($F97B.w,X)		; FC 7B F9
	inc $FF.b,X		; F6 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	ora #$437F.w		; 09 7F 43
	inc $FF86.w,X		; FE 86 FF
	ora $00FF.w		; 0D FF 00
	sbc $7C0000.l,X		; FF 00 00 7C
	bra -16.b		; 80 F0
	brk $C7.b		; 00 C7
	ora [$BB.b]		; 07 BB
	and $FFFFDF.l,X		; 3F DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	cpx #$8320.w		; E0 20 83
	cop $1F.b		; 02 1F
	trb $FF.b		; 14 FF
	ldy #$00FF.w		; A0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($0D.b,X)		; 01 0D
	lda $C301.w,X		; BD 01 C3
	sta $E7.b,S		; 83 E7
	ora [$FE.b]		; 07 FE
	ora $3C1E9E.l		; 0F 9E 1E 3C
	rol $7C78.w,X		; 3E 78 7C
	ora ($E3.b),Y		; 11 E3
	ora ($43.b,X)		; 01 43
	sta ($3F.b,X)		; 81 3F
	brk $1F.b		; 00 1F
	tsb $0F.b		; 04 0F
	tsb $187F.w		; 0C 7F 18
	sbc $C0FF30.l,X		; FF 30 FF C0
	cmp $3287C0.l,X		; DF C0 87 32
	ldy $7F7F.w,X		; BC 7F 7F
	and $00007F.l,X		; 3F 7F 00 00
	bvs -113.b		; 70 8F
	bra 127.b		; 80 7F
	stz $80FC.w		; 9C FC 80
	sed		; F8
	brk $FF.b		; 00 FF
	and $FF1FFF.l,X		; 3F FF 1F FF
	brk $FF.b		; 00 FF
	ror $E076.w,X		; 7E 76 E0
	bra -24.b		; 80 E8
	ora $86017D.l		; 0F 7D 01 86
	sed		; F8
	beq   3.b		; F0 03
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	beq  23.b		; F0 17
	beq  -9.b		; F0 F7
	ora [$FE.b]		; 07 FE
	brk $67.b		; 00 67
	rts		; 60

	jsr ($FE00.w,X)		; FC 00 FE
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $EF.b		; 00 EF
	cpx #$8000.w		; E0 00 80
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	cpy #$6018.w		; C0 18 60
	sty $8630.w		; 8C 30 86
	tya		; 98
	cmp $4C.b,S		; C3 4C
	adc ($00.b,X)		; 61 00
	brk $C0.b		; 00 C0
	cpy #$20E0.w		; C0 E0 20
	beq  16.b		; F0 10
	sei		; 78
	php		; 08
	jmp ($3E04.w,X)		; 7C 04 3E
	cop $9F.b		; 02 9F
	ora ($0E.b,X)		; 01 0E
	ora $030F07.l,X		; 1F 07 0F 03
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	sbc [$04.b],Y		; F7 04
	xce		; FB
	mvp $22,$FB		; 44 FB 22
	adc $2E01.w,X		; 7D 01 2E
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	txy		; 9B
	php		; 08
	cmp $056D06.l		; CF 06 6D 05
	rol $02.b		; 26 02
	ora [$01.b]		; 07 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $7B.b		; 84 7B
	eor ($BF.b,X)		; 41 BF
	and $DF.b,S		; 23 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $DA85.w,X		; BD 85 DA
	.db $42, $E4		; 42 E4
	bit $EF.b		; 24 EF
	sta $0080C0.l		; 8F C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	phd		; 0B
	brk $17.b		; 00 17
	ora ($42.b,X)		; 01 42
	ora ($27.b,X)		; 01 27
	ora $1D.b,S		; 03 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora #$3D09.w		; 09 09 3D
	and $1A1B.w,X		; 3D 1B 1A
	ora $02.b,S		; 03 02
	brk $F0.b		; 00 F0
	bvs -114.b		; 70 8E
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $F0FFFF.l,X		; FF FF FF F0
	sbc $80DFE0.l		; EF E0 DF 80
	ror $0000.w,X		; 7E 00 00
	jsr ($FF74.w,X)		; FC 74 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora [$FC.b],Y		; 17 FC
	bit $80E0.w		; 2C E0 80
	ora $0F.b,S		; 03 0F
	ora [$1B.b]		; 07 1B
	ora $0E37.w		; 0D 37 0E
	ora $06.b,X		; 15 06
	ora $010E03.l,X		; 1F 03 0E 01
	ora $070700.l		; 0F 00 07 07
	tsb $0F.b		; 04 0F
	tsb $080F.w		; 0C 0F 08
	ora $000E0B.l		; 0F 0B 0E 00
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	dec $FCED.w,X		; DE ED FC
	stp		; DB
	sed		; F8
	sbc [$F2.b],Y		; F7 F2
	sbc $F9C7.w		; ED C7 F9
	cmp $EEF1.w,X		; DD F1 EE
	bvc  31.b		; 50 1F
	cpx #$13FF.w		; E0 FF 13
	inc $FD24.w,X		; FE 24 FD
	ora #$11F9.w		; 09 F9 11
	cpx #$CA00.w		; E0 00 CA
	brk $EB.b		; 00 EB
	ldy #$C0DF.w		; A0 DF C0
	sbc [$7F.b],Y		; F7 7F
	adc [$DF.b],Y		; 77 DF
	adc $B847CF.l,X		; 7F CF 47 B8
	brk $FF.b		; 00 FF
	ora [$F9.b]		; 07 F9
	sta ($FE.b,X)		; 81 FE
	jsl $88FF7E.l		; 22 7E FF 88
	sbc $B0FFA8.l,X		; FF A8 FF B0
	adc $707067.l,X		; 7F 67 70 70
	dey		; 88
	sta ($1C.b,X)		; 81 1C
	asl $CC.b		; 06 CC
	eor [$03.b]		; 47 03
	phd		; 0B
	asl $06.b		; 06 06
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	ora ($06.b,X)		; 01 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1F1378.l		; 2F 78 13 1F
	pea $BD07.w		; F4 07 BD
	.db $82, $11, $72		; 82 11 72
	tsb $1F.b		; 04 1F
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	rti		; 40

	iny		; C8
	inx		; E8
	phd		; 0B
	plx		; FA
	cop $7D.b		; 02 7D
	ora ($2D.b,X)		; 01 2D
	and ($01.b,X)		; 21 01
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $FF.b		; 00 FF
	sbc $FCFFFF.l,X		; FF FF FF FC
	and ($3F.b,S),Y		; 33 3F
	dec $ED9E.w,X		; DE 9E ED
	bra 126.b		; 80 7E
	rts		; 60

	ora $0D31.w,X		; 1D 31 0D
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $217FCD.l,X		; FF CD 7F 21
	and $011E92.l,X		; 3F 92 1E 01
	jsr $1183.w		; 20 83 11
	cmp $FF.b,S		; C3 FF
	inc $FFFF.w,X		; FE FF FF
	ora $FB07EF.l,X		; 1F EF 07 FB
	ora ($FE.b,X)		; 01 FE
	brk $1F.b		; 00 1F
	cpx #$40EF.w		; E0 EF 40
	sta $FF01FF.l,X		; 9F FF 01 FF
	brk $FF.b		; 00 FF
	bne  -1.b		; D0 FF
	stz $E7.b,X		; 74 E7
	and $1B.b		; 25 1B
	xce		; FB
	sta $1CFD.w		; 8D FD 1C
	jsr ($79F0.w,X)		; FC F0 79
	rts		; 60

	sbc ($00.b)		; F2 00
	lda $00.b		; A5 00
	sbc $00.b,S		; E3 00
	sbc $12FB04.l,X		; FF 04 FB 12
	sbc $EE11.w		; ED 11 EE
	rts		; 60

	sbc $007F40.l,X		; FF 40 7F 00
	ror $1D81.w,X		; 7E 81 1D
	cmp [$04.b]		; C7 04
	ora $1614.w,X		; 1D 14 16
	ora ($97.b)		; 12 97
	ora ($3F.b),Y		; 11 3F
	rti		; 40

	rts		; 60

	sta $38FF00.l,X		; 9F 00 FF 38
	cmp [$07.b]		; C7 07
	sed		; F8
	rti		; 40

	lda $08CF30.l,X		; BF 30 CF 08
	sbc [$3F.b],Y		; F7 3F
	lda $8F607F.l,X		; BF 7F 60 8F
	tsb $B8F8.w		; 0C F8 B8
	adc $50DF47.l,X		; 7F 47 DF 50
	inc $36.b,X		; F6 36
	sei		; 78
	php		; 08
	phd		; 0B
	sed		; F8
	ora $08.b,S		; 03 08
	ora ($0C.b,X)		; 01 0C
	cop $06.b		; 02 06
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $30.b		; A6 30
	cmp $18.b,S		; C3 18
	sbc ($1E.b,S),Y		; F3 1E
	sbc ($0F.b,X)		; E1 0F
	sei		; 78
	ora $7C84F0.l		; 0F F0 84 7C
	dec $38.b		; C6 38
.INDEX 8
	sep #$DF		; E2 DF
	bpl -17.b		; 10 EF
	php		; 08
	sbc $04.b		; E5 04
	plx		; FA
	asl A		; 0A
	sbc ($01.b),Y		; F1 01
	jmp ($B804.w,X)		; 7C 04 B8
	bra  92.b		; 80 5C
	rti		; 40

	beq -17.b		; F0 EF
	jsr ($CEFB.w,X)		; FC FB CE
	sbc $7FE7.w,X		; FD E7 7F
	adc ($BF.b,S),Y		; 73 BF
	and $04DF.w,Y		; 39 DF 04
	sbc [$08.b]		; E7 08
	wai		; CB
	jsr ($FF14.w,X)		; FC 14 FF
	ora $FF.b		; 05 FF
	jsl $FF90FF.l		; 22 FF 90 FF
	pha		; 48
	sbc $DAE7A4.l,X		; FF A4 E7 DA
	ora $3E.b,S		; 03 3E
	and $5BA5.w		; 2D A5 5B
	eor ($F1.b,S),Y		; 53 F1
	sbc $81.b		; E5 81
	dec $3F00.w		; CE 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	and $7E.b		; 25 7E
	eor $FE.b,S		; 43 FE
	sta ($FA.b,X)		; 81 FA
	ora [$F5.b]		; 07 F5
	ora $0F0FDE.l,X		; 1F DE 0F 0F
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bit $3FFF.w,X		; 3C FF 3F
	beq   0.b		; F0 00
	inc $FF3F.w,X		; FE 3F FF
	adc $C07FE0.l,X		; 7F E0 7F C0
	sbc $000080.l,X		; FF 80 00 00
	eor $43.b,S		; 43 43
	eor $060740.l		; 4F 40 07 06
	rti		; 40

	rti		; 40

	sta $80BF80.l,X		; 9F 80 BF 80
	adc $030300.l,X		; 7F 00 03 03
	jsr ($00FF.w,X)		; FC FF 00
	sbc $00F000.l,X		; FF 00 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $03.b		; 00 03
	ora $F0.b,S		; 03 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $20.b		; 00 20
	brk $D0.b		; 00 D0
	cpy #$F8.b		; C0 F8
	php		; 08
	jsr ($7E04.w,X)		; FC 04 7E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	jsr $C000.w		; 20 00 C0
	brk $78.b		; 00 78
	rti		; 40

	bit $0030.w,X		; 3C 30 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$60.b		; E0 60
	bcs  48.b		; B0 30
	cld		; D8
	clc		; 18
	pla		; 68
	php		; 08
	trb $04.b		; 14 04
	dey		; 88
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	bvs  32.b		; 70 20
	clc		; 18
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	brk $C4.b		; 00 C4
	brk $E2.b		; 00 E2
	bra -14.b		; 80 F2
	cpy #$F8.b		; C0 F8
	cpx #$FC.b		; E0 FC
	bpl  -4.b		; 10 FC
	php		; 08
	inc $80.b,X		; F6 80
	dec $8080.w		; CE 80 80
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	clv		; B8
	brk $CC.b		; 00 CC
	tsb $00C4.w		; 0C C4 00
	cpy #$C7.b		; C0 C7
	cpy #$E3.b		; C0 E3
	cpx #$71.b		; E0 71
	bvs -71.b		; 70 B9
	sec		; 38
	cpy $00.b		; C4 00
	sbc $008000.l,X		; FF 00 80 00
	beq -62.b		; F0 C2
	cop $E2.b		; 02 E2
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	rti		; 40

	jsr ($00B8.w,X)		; FC B8 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  16.b		; 80 10
	pha		; 48
	plp		; 28
	stz $18.b		; 64 18
	bit $00.b,X		; 34 00
	rol $1E08.w,X		; 3E 08 1E
	tsb $1F.b		; 04 1F
	cop $0F.b		; 02 0F
	brk $07.b		; 00 07
	bmi   0.b		; 30 00
	clc		; 18
	brk $08.b		; 00 08
	brk $14.b		; 00 14
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rts		; 60

	bra  48.b		; 80 30
	cpy #$18.b		; C0 18
	jsr $008C.w		; 20 8C 00
	inc $3F04.w,X		; FE 04 3F
	cop $0C.b		; 02 0C
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	beq -128.b		; F0 80
	tsb $04.b		; 04 04
	trb $0B10.w		; 1C 10 0B
	php		; 08
	tsb $0E63.w		; 0C 63 0E
	tsa		; 3B
	brk $19.b		; 00 19
	ora $0D.b		; 05 0D
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	rol $1422.w,X		; 3E 22 14
	bpl  15.b		; 10 0F
	ora #$0002.w		; 09 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($0C.b,X)		; 01 0C
	brk $07.b		; 00 07
	ora ($87.b,X)		; 01 87
	brk $87.b		; 00 87
	brk $C3.b		; 00 C3
	brk $C2.b		; 00 C2
	brk $C0.b		; 00 C0
	rti		; 40

	ldy #$03.b		; A0 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $83.b		; 00 83
	.db $82, $80, $80		; 82 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1B7E06.l		; 0F 06 7E 1B
	sed		; F8
	eor $83F0C0.l,X		; 5F C0 F0 83
	sbc [$0C.b]		; E7 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $6718.w,Y		; 19 18 67
	rts		; 60

	lda $017D80.l,X		; BF 80 7D 01
	sbc ($00.b,S),Y		; F3 00
	brk $03.b		; 00 03
	ora $7F.b,S		; 03 7F
	adc [$E0.b]		; 67 E0
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc ($03.b)		; F2 03
	brk $FF.b		; 00 FF
	rti		; 40

	bvs   0.b		; 70 00
	brk $1C.b		; 00 1C
	trb $809F.w		; 1C 9F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $8001.w,X		; FD 01 80
	bra -96.b		; 80 A0
	jsr $2601.w		; 20 01 26
	ora ($47.b,X)		; 01 47
	ora ($8F.b,X)		; 01 8F
	ora ($4E.b,X)		; 01 4E
	ora ($3E.b,X)		; 01 3E
	tsb $1B.b		; 04 1B
	tsb $0E17.w		; 0C 17 0E
	ora $1B1B.w,X		; 1D 1B 1B
	tsa		; 3B
	sec		; 38
	adc [$74.b],Y		; 77 74
	and [$35.b],Y		; 37 35
	ora $060F0B.l		; 0F 0B 0F 06
	ora $030F09.l		; 0F 09 0F 03
	brk $FD.b		; 00 FD
	tya		; 98
	cpx #$BF.b		; E0 BF
	cld		; D8
	wai		; CB
	tay		; A8
	lda $E08CA0.l		; AF A0 8C E0
	sta $70.b,X		; 95 70
	sta $C278.w		; 8D 78 C2
	brk $E7.b		; 00 E7
	rti		; 40

	phb		; 8B
	tsb $0CDB.w		; 0C DB 0C
	cmp $23BF00.l,X		; DF 00 BF 23
	cmp $D2D7C2.l		; CF C2 D7 D2
	ora [$7B.b],Y		; 17 7B
	tas		; 1B
	adc [$1B.b],Y		; 77 1B
	and $3E0D.w		; 2D 0D 3E
	tsb $0617.w		; 0C 17 06
	ora $030B07.l,X		; 1F 07 0B 03
	ora $043F.w		; 0D 3F 04
	and $323F28.l,X		; 3F 28 3F 32
	ora $1A1F01.l,X		; 1F 01 1F 1A
	ora $0C0F01.l		; 0F 01 0F 0C
	ora [$02.b]		; 07 02
	cpy #$BF.b		; C0 BF
	cpx #$DF.b		; E0 DF
	jsr ($FFF3.w,X)		; FC F3 FF
	jsr ($67F8.w,X)		; FC F8 67
	adc $CF3FB8.l,X		; 7F B8 3F CF
	sta $59F8F7.l		; 8F F7 F8 59
	inc $FF26.w,X		; FE 26 FF
	tsb $03FF.w		; 0C FF 03
	sbc $47FF99.l,X		; FF 99 FF 47
	sbc $68FFB0.l,X		; FF B0 FF 68
	bcs -40.b		; B0 D8
	cpy #$B0.b		; C0 B0
	cpy #$60.b		; C0 60
	eor ($41.b,X)		; 41 41
	eor $63.b,S		; 43 63
	sta [$E7.b]		; 87 E7
	sta [$EF.b]		; 87 EF
	brk $DB.b		; 00 DB
	bmi  32.b		; 30 20
	jsr $4000.w		; 20 00 40
	cmp ($40.b,X)		; C1 40
	cmp $81.b,S		; C3 81
	ora [$43.b]		; 07 43
	eor $181F06.l		; 4F 06 1F 18
	and [$38.b],Y		; 37 38
	sec		; 38
	sei		; 78
	bvs -32.b		; 70 E0
	beq -64.b		; F0 C0
	cpx #$E0.b		; E0 E0
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	ora $18.b,S		; 03 18
	ror $F830.w,X		; 7E 30 F8
	rts		; 60

	beq -64.b		; F0 C0
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra  -1.b		; 80 FF
	cmp $07.b,S		; C3 07
	sbc $16FF1F.l,X		; FF 1F FF 16
	dec $F401.w		; CE 01 F4
	brk $F8.b		; 00 F8
	cmp $3F.b,S		; C3 3F
	sbc $DF.b,S		; E3 DF
	sta $E3.b,S		; 83 E3
	ora $1FE71F.l,X		; 1F 1F E7 1F
	cpy #$7F.b		; C0 7F
	beq  -1.b		; F0 FF
	inx		; E8
	and [$F7.b]		; 27 F7
	bne  -5.b		; D0 FB
	plp		; 28
	bne -33.b		; D0 DF
	ldy #$BF.b		; A0 BF
	rti		; 40

	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $807F00.l,X		; FF 00 7F 80
	sbc $D6FF00.l,X		; FF 00 FF D6
	inc $AF.b,X		; F6 AF
	sbc $1FC040.l		; EF 40 C0 1F
	tya		; 98
	ora [$07.b]		; 07 07
	sei		; 78
	cpx #$9F.b		; E0 9F
	clc		; 18
	adc [$46.b]		; 67 46
	brk $C0.b		; 00 C0
	bra 112.b		; 80 70
	bcs 124.b		; B0 7C
	plp		; 28
	xce		; FB
	inc A		; 1A
	stz $0C.b,X		; 74 0C
	and $001F00.l,X		; 3F 00 1F 00
	ora $0000.w,X		; 1D 00 00
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	tsb $00.b		; 04 00
	tas		; 1B
	php		; 08
	trb $0900.w		; 1C 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $0139FF.l		; 0F FF 39 01
	pea $D007.w		; F4 07 D0
	asl $7840.w,X		; 1E 40 78
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bvs 112.b		; 70 70
	inc $FA00.w,X		; FE 00 FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	cop $1D.b		; 02 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	and $7B30.w,Y		; 39 30 7B
	and ($F6.b,X)		; 21 F6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	and ($7D.b),Y		; 31 7D
	and $7A.b,S		; 23 7A
	eor ($E4.b,S),Y		; 53 E4
	adc [$48.b]		; 67 48
	sta $910DC0.l		; 8F C0 0D 91
	jsl $BF4853.l		; 22 53 48 BF
	and ($DE.b,X)		; 21 DE
	eor $BC.b,S		; 43 BC
	sta [$FC.b]		; 87 FC
	ora $F08FF8.l		; 0F F8 8F F0
	asl $2CE0.w		; 0E E0 2C
	ldy #$45.b		; A0 45
	eor $AB.b		; 45 AB
	rol A		; 2A
	adc [$44.b]		; 67 44
	cmp $309F18.l		; CF 18 9F 30
	rol $7C60.w,X		; 3E 60 7C
	cmp ($F8.b,X)		; C1 F8
	sta $F0.b,S		; 83 F0
	asl $E8.b		; 06 E8
	tsb $18D0.w		; 0C D0 18
	sbc [$00.b]		; E7 00
	cmp $009F00.l		; CF 00 9F 00
	and $027E01.l,X		; 3F 01 7E 02
	jsr ($F004.w,X)		; FC 04 F0
	brk $E8.b		; 00 E8
	php		; 08
	bne  28.b		; D0 1C
	pea $5D07.w		; F4 07 5D
	eor ($2F.b,X)		; 41 2F
	cpx #$17.b		; E0 17
	bvs   5.b		; 70 05
	bit $0700.w,X		; 3C 00 07
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	plx		; FA
	cop $BE.b		; 02 BE
	brk $5F.b		; 00 5F
	rti		; 40

	and $080B20.l		; 2F 20 0B 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	tsb $0C3F.w		; 0C 3F 0C
	and $1C2B1C.l,X		; 3F 1C 2B 1C
	tda		; 7B
	rol $3E5D.w,X		; 3E 5D 3E
	adc $763F.w,X		; 7D 3F 76
	and [$5F.b],Y		; 37 5F
	ora $031F11.l,X		; 1F 11 1F 03
	and $063E37.l,X		; 3F 37 3E 06
	and $437F22.l,X		; 3F 22 7F 43
	adc $607F49.l,X		; 7F 49 7F 60
	jsr $69C3.w		; 20 C3 69
	plb		; AB
	pld		; 2B
	tay		; A8
	tay		; A8
	rol A		; 2A
	bcs  53.b		; B0 35
	.db $42, $98		; 42 98
	ora $83C0.w		; 0D C0 83
	adc ($80.b,X)		; 61 80
	trb $BE8A.w		; 1C 8A BE
	pld		; 2B
	jmp ($7E23.w,X)		; 7C 23 7E
	ora ($7F.b,X)		; 01 7F
	bra  63.b		; 80 3F
	cpy #$BF.b		; C0 BF
	cpx #$DF.b		; E0 DF
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FF.b		; C0 FF
	sed		; F8
	adc [$7E.b],Y		; 77 7E
	lda $DF3F.w,X		; BD 3F DF
	ora $3D03F7.l		; 0F F7 03 3D
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	sbc $89FF1C.l,X		; FF 1C FF 89
	sbc $A0FF42.l,X		; FF 42 FF A0
	and $0A0F28.l,X		; 3F 28 0F 0A
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rti		; 40

	jmp.w [$0F70]		; DC 70 0F
	cmp ($1E.b),Y		; D1 1E
	lsr $78.b		; 46 78
	tsa		; 3B
	cpy #$F9.b		; C0 F9
	brk $F9.b		; 00 F9
	cpx #$FB.b		; E0 FB
	cpx #$AC.b		; E0 AC
	phb		; 8B
	pea $E804.w		; F4 04 E8
	php		; 08
	ldx #$23.b		; A2 23
	bra -116.b		; 80 8C
	brk $0E.b		; 00 0E
	rti		; 40

	inc $ECC0.w		; EE C0 EC
	brk $0F.b		; 00 0F
	tsb $1B.b		; 04 1B
	php		; 08
	ldx $11.b,Y		; B6 11
	sbc $7B02.w		; ED 02 7B
	sty $06.b		; 84 06
	beq -127.b		; F0 81
	sed		; F8
	cmp $0F0303.l,X		; DF 03 03 0F
	tsb $191E.w		; 0C 1E 19
	and $7A33.w,X		; 3D 33 7A
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F881.w,X		; FE 81 F8
	brk $FF.b		; 00 FF
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	beq -49.b		; F0 CF
	sbc $B778FE.l,X		; FF FE 78 B7
	brk $FE.b		; 00 FE
	bra   0.b		; 80 00
	inc $E0.b		; E6 E0
	sed		; F8
	sei		; 78
	inc $FF86.w,X		; FE 86 FF
	bmi  -1.b		; 30 FF
	ora ($FE.b,X)		; 01 FE
	pha		; 48
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $70FFE0.l,X		; FF E0 FF 70
	sbc $00FF00.l,X		; FF 00 FF 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $39.b		; 00 39
	and ($5E.b,X)		; 21 5E
	bpl -17.b		; 10 EF
	tsb $0373.w		; 0C 73 03
	sed		; F8
	php		; 08
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $78.b,S		; 83 78
	ora $F8.b,S		; 03 F8
	ora $F8.b,S		; 03 F8
	cop $F8.b		; 02 F8
	ora ($F9.b,X)		; 01 F9
	cop $F3.b		; 02 F3
	tsb $F7.b		; 04 F7
	php		; 08
	inc $C8CF.w,X		; FE CF C8
	sta [$80.b]		; 87 80
	adc [$10.b],Y		; 77 10
	sbc [$10.b],Y		; F7 10
	inc $10.b,X		; F6 10
	sbc $0AE1.w		; ED E1 0A
	cop $E4.b		; 02 E4
	tsb $A0.b		; 04 A0
	sec		; 38
	ldy #$30.b		; A0 30
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bpl -48.b		; 10 D0
	bpl -96.b		; 10 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	dey		; 88
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$18.b		; C0 18
	inx		; E8
	tsb $83B8.w		; 0C B8 83
	ora ($F5.b)		; 12 F5
	cop $1D.b		; 02 1D
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	beq  16.b		; F0 10
	beq   0.b		; F0 00
	jmp ($2B00.w,X)		; 7C 00 2B
	jsl $000202.l		; 22 02 02 00
	ora $00.b		; 05 00
	ora #$3300.w		; 09 00 33
	jsr $0DF3.w		; 20 F3 0D
	inc $FF00.w,X		; FE 00 FF
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	ora $2D00.w		; 0D 00 2D
	brk $A1.b		; 00 A1
	sta ($C0.b,X)		; 81 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	jsr $4080.w		; 20 80 40
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $64.b		; 00 64
	brk $23.b		; 00 23
	brk $21.b		; 00 21
	brk $13.b		; 00 13
	ora ($1E.b,X)		; 01 1E
	ora ($37.b,X)		; 01 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	trb $1E1C.w		; 1C 1C 1E
	asl $0D0D.w,X		; 1E 0D 0D
	ora $03.b,S		; 03 03
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $90.b		; 00 90
	brk $7D.b		; 00 7D
	sec		; 38
	cmp [$FF.b],Y		; D7 FF
	adc $99FFCC.l,X		; 7F CC FF 99
	sbc $000000.l,X		; FF 00 00 00
	brk $60.b		; 00 60
	rts		; 60

	sta ($80.b,X)		; 81 80
	inc $FFAA.w,X		; FE AA FF
	bra -18.b		; 80 EE
	brk $DC.b		; 00 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	rts		; 60

	ldy #$70.b		; A0 70
	rts		; 60

	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra  96.b		; 80 60
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3E1C.w		; 1C 1C 3E
	asl $3838.w,X		; 1E 38 38
	bit $783C.w,X		; 3C 3C 78
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3E.b		; 00 3E
	trb $183F.w		; 1C 3F 18
	ror $7E18.w,X		; 7E 18 7E
	bmi 124.b		; 30 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	trb $610C.w		; 1C 0C 61
	rol $E380.w,X		; 3E 80 E3
	brk $D5.b		; 00 D5
	trb $3EA2.w		; 1C A2 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $14.b		; 14 14
	rol $FF20.w,X		; 3E 20 FF
	bra  -1.b		; 80 FF
	brk $EB.b		; 00 EB
	php		; 08
	cmp $14.b,X		; D5 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cpy #$60.b		; C0 60
	cpx #$30.b		; E0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	sta $C0.b,S		; 83 C0
	ora [$41.b]		; 07 41
	ora $0816B0.l		; 0F B0 16 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sta ($00.b,X)		; 81 00
	cpy #$C0.b		; C0 C0
	cpx #$83.b		; E0 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	asl $5900.w,X		; 1E 00 59
	bra -66.b		; 80 BE
	cpy #$FE.b		; C0 FE
	ora [$67.b]		; 07 67
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80.b		; E0 80
	rol $01C0.w		; 2E C0 01
	tsb $07.b		; 04 07
	ora $BB.b,S		; 03 BB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	.db $82, $05, $60		; 82 05 60
	ora $00BE61.l,X		; 1F 61 BE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	.db $82, $09, $E9		; 82 09 E9
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $7E.b		; 00 7E
	sta $78.b,S		; 83 78
	ora $F8.b,S		; 03 F8
	ora ($EC.b),Y		; 11 EC
	.db $42, $BE		; 42 BE
	ora ($FF.b,X)		; 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	sbc [$B0.b],Y		; F7 B0
	sbc [$60.b]		; E7 60
	txy		; 9B
	bcc 121.b		; 90 79
	rti		; 40

	plx		; FA
	inc A		; 1A
	sbc $FFFBFF.l,X		; FF FF FB FF
	cmp ($E3.b),Y		; D1 E3
	bra  61.b		; 80 3D
	brk $FE.b		; 00 FE
	jsr ($C0FF.w,X)		; FC FF C0
	sbc $7BFFFF.l,X		; FF FF FF 7B
	sbc $80FFF1.l,X		; FF F1 FF 80
	sbc $7CC300.l,X		; FF 00 C3 7C
	adc $FE.b		; 65 FE
	cop $FF.b		; 02 FF
	ora $FF.b,S		; 03 FF
	brk $80.b		; 00 80
	clv		; B8
	cpy #$DF.b		; C0 DF
	sbc $EF.b,S		; E3 EF
	cmp ($EF.b,X)		; C1 EF
	bra -33.b		; 80 DF
	brk $3F.b		; 00 3F
	ora $FEFFF0.l		; 0F F0 FF FE
	bra -57.b		; 80 C7
	cpy #$E0.b		; C0 E0
	cmp $F0.b,S		; C3 F0
	bit #$0CF0.w		; 89 F0 0C
	cpx #$1E.b		; E0 1E
	cpy #$1F.b		; C0 1F
	ora $0801FF.l,X		; 1F FF 01 08
	sbc [$C6.b],Y		; F7 C6
	and $1EE1.w,Y		; 39 E1 1E
	cpy #$BF.b		; C0 BF
	ldy $7FFF.w,X		; BC FF 7F
	inc $E3FC.w,X		; FE FC E3
	cmp $3C.b,S		; C3 3C
	sec		; 38
	plp		; 28
	dec $EFD6.w,X		; DE D6 EF
	sbc #$40C3.w		; E9 C3 40
	ldy $7F00.w,X		; BC 00 7F
	ora ($FF.b,X)		; 01 FF
	trb $C3FF.w		; 1C FF C3
	ora ($FF.b,X)		; 01 FF
	ora $6F9FF7.l		; 0F F7 9F 6F
	and $F3C2.w,X		; 3D C2 F3
	ora $778F.w		; 0D 8F 77
	adc $FDFE9F.l,X		; 7F 9F FE FD
	sbc $181FCE.l,X		; FF CE 1F 18
	lda $7D7FB0.l,X		; BF B0 7F 7D
	sbc $88FFF2.l,X		; FF F2 FF 88
	sbc $02FF60.l,X		; FF 60 FF 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	brk $1F.b		; 00 1F
	tsb $0B.b		; 04 0B
	ora $0E.b		; 05 0E
	ora [$1D.b]		; 07 1D
	ora $000017.l		; 0F 17 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0709.w		; 0D 09 07
	asl $0F.b		; 06 0F
	ora #$020F.w		; 09 0F 02
	ora $000018.l,X		; 1F 18 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	rts		; 60

	stz $7CF0.w		; 9C F0 7C
	cpy #$FE.b		; C0 FE
	beq -17.b		; F0 EF
	sta $EB.b,S		; 83 EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$A0.b		; E0 A0
	sed		; F8
	pla		; 68
	sed		; F8
	bra -52.b		; 80 CC
	php		; 08
	cpy #$00.b		; C0 00
	pei ($00.b)		; D4 00
	ora [$70.b],Y		; 17 70
	tsb $1C.b		; 04 1C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	and $080B20.l		; 2F 20 0B 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -17.b		; F0 EF
	cpy #$BC.b		; C0 BC
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F014.w,X)		; FC 14 F0
	bvc -128.b		; 50 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ply		; 7A
	bpl  47.b		; 10 2F
	ora $1B0737.l		; 0F 37 07 1B
	ora $1D.b,S		; 03 1D
	ora ($0E.b,X)		; 01 0E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	plp		; 28
	and [$33.b]		; 27 33
	and ($1F.b)		; 32 1F
	php		; 08
	ora $0A0F14.l,X		; 1F 14 0F 0A
	ora [$05.b]		; 07 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	jsr $0038.w		; 20 38 00
	beq   0.b		; F0 00
	sed		; F8
	cpx #$FE.b		; E0 FE
	sed		; F8
	sbc $C0E000.l,X		; FF 00 E0 C0
	sec		; 38
	sbc $10D0FF.l,X		; FF FF D0 10
	bra -128.b		; 80 80
	bvs 112.b		; 70 70
	jsr ($FF1C.w,X)		; FC 1C FF
	ora [$C0.b]		; 07 C0
	cpy #$E0.b		; C0 E0
	cpx #$FF.b		; E0 FF
	brk $41.b		; 00 41
	adc $00E380.l,X		; 7F 80 E3 00
	cmp ($10.b,X)		; C1 10
	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	ora $E8.b,S		; 03 E8
	ora $4122A2.l		; 0F A2 22 41
	eor ($00.b,X)		; 41 00
	brk $6F.b		; 00 6F
	rts		; 60

	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($F400.w,X)		; FC 00 F4
	tsb $70.b		; 04 70
	clc		; 18
	bcc -116.b		; 90 8C
	plp		; 28
	inc $84.b		; E6 84
	sbc ($A2.b,S),Y		; F3 A2
	and $0FE8.w,X		; 3D E8 0F
	ply		; 7A
	ora $5E.b,S		; 03 5E
	cpy #$E0.b		; C0 E0
	brk $78.b		; 00 78
	php		; 08
	jmp $020E44.l		; 5C 44 0E 02
	cmp ($11.b,S),Y		; D3 11
	pea $FD04.w		; F4 04 FD
	ora ($BF.b,X)		; 01 BF
	bra  44.b		; 80 2C
	bpl  24.b		; 10 18
	cpx #$FF.b		; E0 FF
	bra  81.b		; 80 51
	lsr $0B.b,X		; 56 0B
	plp		; 28
	ora $34.b		; 05 34
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	cpy #$07.b		; C0 07
	brk $0F.b		; 00 0F
	bra   0.b		; 80 00
	bvc  -1.b		; 50 FF
	cpy #$1F.b		; C0 1F
	cpx #$2F.b		; E0 2F
	cpx #$6F.b		; E0 6F
	brk $FF.b		; 00 FF
	cmp [$03.b]		; C7 03
	lda [$03.b],Y		; B7 03
	inc $BE37.w,X		; FE 37 BE
	ror $7E9C.w,X		; 7E 9C 7E
	adc ($1D.b,X)		; 61 1D
	trb $0101.w		; 1C 01 01
	.db $62, $03, $7B		; 62 03 7B
	ora $4B.b,S		; 03 4B
	rol $B7.b,X		; 36 B7
	bit $00FF.w,X		; 3C FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $D69F00.l,X		; FF 00 9F D6
	cmp ($B0.b),Y		; D1 B0
	lda $C0416E.l		; AF 6E 41 C0
	sta $82B788.l,X		; 9F 88 B7 82
	adc $7F00.w,X		; 7D 00 7F
	bpl 111.b		; 10 6F
	sta [$FE.b],Y		; 97 FE
	jsr $4FF0.w		; 20 F0 4F
	inc $E787.w,X		; FE 87 E7
	ora $1EC9.w,Y		; 19 C9 1E
	sta ($4F.b)		; 92 4F
	cpy $D373.w		; CC 73 D3
	brk $FF.b		; 00 FF
	adc ($8E.b)		; 72 8E
	ora $FC.b		; 05 FC
	ora $F8.b,S		; 03 F8
	ora $FC.b		; 05 FC
	cop $FE.b		; 02 FE
	bra 127.b		; 80 7F
	jsr $C0DF.w		; 20 DF C0
	cpy #$75.b		; C0 75
	stz $F3.b,X		; 74 F3
	brk $F7.b		; 00 F7
	brk $F3.b		; 00 F3
	cpx #$79.b		; E0 79
	sei		; 78
	txy		; 9B
	txy		; 9B
	cpx #$20.b		; E0 20
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $F30F9F.l,X		; 7F 9F 0F F3
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $2C3F60.l,X		; FF 60 3F 2C
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($E03B.w,X)		; FC 3B E0
	cmp $FFF1FE.l,X		; DF FE F1 FF
	inc $8F70.w,X		; FE 70 8F
	php		; 08
	adc [$00.b],Y		; 77 00
	rol $1000.w,X		; 3E 00 10
	sbc $26FEC5.l,X		; FF C5 FE 26
	sbc $01FF0E.l,X		; FF 0E FF 01
	jsr ($3A74.w,X)		; FC 74 3A
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora $9F00F3.l		; 0F F3 00 9F
	brk $C3.b		; 00 C3
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0C0F2C.l,X		; 3F 2C 0F 0C
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -49.b		; F0 CF
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($E034.w,X)		; FC 34 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1E17.w		; 0E 17 1E
	ora $1F2F1E.l		; 0F 1E 2F 1F
	rol $3F0F.w		; 2E 0F 3F
	ora $5B0737.l		; 0F 37 07 5B
	ora $9C.b,S		; 03 9C
	ora $101F08.l,X		; 1F 08 1F 10
	ora $111F10.l,X		; 1F 10 1F 11
	ora $181F00.l,X		; 1F 00 1F 18
	and $6B6F24.l		; 2F 24 6F 6B
	ldy $C0.b,X		; B4 C0
	bit $2F90.w,X		; 3C 90 2F
	cpy #$26.b		; C0 26
	lda ($30.b,X)		; A1 30
	rep #$88		; C2 88
	adc $C0BFC0.l		; 6F C0 BF C0
	inc $038F.w,X		; FE 8F 03
	eor $009F03.l		; 4F 03 9F 00
	eor $83BF01.l,X		; 5F 01 BF 83
	pei ($C4.b)		; D4 C4
	sbc ($60.b,X)		; E1 60
	sep #$01		; E2 01
	ora ($1F.b,X)		; 01 1F
	ora ($97.b,X)		; 01 97
	brk $53.b		; 00 53
	brk $39.b		; 00 39
	brk $08.b		; 00 08
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	sbc [$E4.b]		; E7 E4
	rtl		; 6B

	ror A		; 6A
	and $062D.w		; 2D 2D 06
	asl $07.b		; 06 07
	ora [$02.b]		; 07 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $E0.b		; 00 E0
	eor $FAA0.w,X		; 5D A0 FA
	cpy #$FC.b		; C0 FC
	pla		; 68
	sbc [$12.b],Y		; F7 12
	sbc $E315.w,Y		; F9 15 E3
	ora $77.b,S		; 03 77
	asl $77.b		; 06 77
	pea $F1B2.w		; F4 B2 F1
	mvn $30,$F3		; 54 F3 30
	cpx $5888.w		; EC 88 58
	eor [$11.b]		; 47 11
	ora $300F13.l,X		; 1F 13 0F 30
	and $800000.l		; 2F 00 00 80
	jsr ($3F92.w,X)		; FC 92 3F
	ora $FC.b		; 05 FC
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $E7.b		; 00 E7
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bvc  64.b		; 50 40
	cmp $05.b,X		; D5 05
	plb		; AB
	tay		; A8
	bra   0.b		; 80 00
	sbc [$87.b]		; E7 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	mvp $08,$7F		; 44 7F 08
	inc $CC30.w,X		; FE 30 CC
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8E.b		; 00 8E
	brk $3C.b		; 00 3C
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rts		; 60

	rti		; 40

	bcs   0.b		; B0 00
	sed		; F8
	rti		; 40

	jmp ($0EC8.w,X)		; 7C C8 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	rts		; 60

	jsr $8080.w		; 20 80 80
	ldy #$20.b		; A0 20
	pea $FD04.w		; F4 04 FD
	ora ($9F.b,X)		; 01 9F
	bra   0.b		; 80 00
	adc $000F00.l,X		; 7F 00 0F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	tsb $01.b		; 04 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $1B07.w		; 0D 07 1B
	ora $6D1E36.l		; 0F 36 1E 6D
	bit $38DB.w,X		; 3C DB 38
	sbc [$00.b],Y		; F7 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	tsb $191F.w		; 0C 1F 19
	and $657F32.l,X		; 3F 32 7F 65
	inc $648A.w,X		; FE 8A 64
	sbc $E8.b		; E5 E8
	dex		; CA
	cpy $9D.b		; C4 9D
	dey		; 88
	ror $F615.w,X		; 7E 15 F6
	and $12E6.w		; 2D E6 12
	cpy $7A.b		; C4 7A
	cpy $9EE4.w		; CC E4 9E
	inx		; E8
	and $D067C4.l,X		; 3F C4 67 D0
	sta ($E8.b,S),Y		; 93 E8
	adc ($98.b,X)		; 61 98
	bra 124.b		; 80 7C
	eor $30.b		; 45 30
	ora ($18.b,X)		; 01 18
	sbc $FD1A.w,X		; FD 1A FD
	inc A		; 1A
	sbc $FD1C.w,X		; FD 1C FD
	ora $1C7E.w,X		; 1D 7E 1C
	ror $2E1E.w,X		; 7E 1E 2E
	asl $DC3F.w		; 0E 3F DC
	eor [$BC.b]		; 47 BC
	lda [$3C.b]		; A7 3C
	and [$3C.b]		; 27 3C
	ora $3E.b,S		; 03 3E
	ora $3E.b,S		; 03 3E
	ora $3E.b,S		; 03 3E
	and ($1F.b),Y		; 31 1F
	brk $E5.b		; 00 E5
	nop		; EA
	sbc $E9E2.w		; ED E2 E9
	inc $F1.b		; E6 F1
	inc $EDF2.w		; EE F2 ED
	sbc ($ED.b)		; F2 ED
	pea $64EB.w		; F4 EB 64
	xce		; FB
	sbc $EFF5.w		; ED F5 EF
	sbc $F9EB.w,X		; FD EB F9
	sbc [$F5.b]		; E7 F5
	inc $EEFA.w		; EE FA EE
	sbc ($6D.b)		; F2 6D
	sbc $65.b,X		; F5 65
	pea $0040.w		; F4 40 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	dec A		; 3A
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora $E03FF9.l,X		; 1F F9 3F E0
	adc ($F3.b,S),Y		; 73 F3
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	rts		; 60

	cmp $808CC0.l,X		; DF C0 8C 80
	sbc $F1CE00.l,X		; FF 00 CE F1
	ora ($A8.b)		; 12 A8
	ror $6BB8.w		; 6E B8 6B
	ldy $2F.b		; A4 2F
	cpx #$16.b		; E0 16
	beq  11.b		; F0 0B
	cld		; D8
	cpy $2C.b		; C4 2C
	bne   0.b		; D0 00
	cmp ($0C.b,X)		; C1 0C
	cmp #$D98A.w		; C9 8A D9
	sty $9F.b		; 84 9F
	bra  15.b		; 80 0F
	ora ($A7.b,X)		; 01 A7
	jsr $D0D3.w		; 20 D3 D0
	stp		; DB
	bit $9F6E.w,X		; 3C 6E 9F
	jsr $12D1.w		; 20 D1 12
	adc #$3982.w		; 69 82 39
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	and ($0F.b)		; 32 0F
	ora $C0C000.l		; 0F 00 C0 C0
	cpx #$6E60.w		; E0 60 6E
	jsr $9036.w		; 20 36 90
	asl $C0.b,X		; 16 C0
	asl A		; 0A
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	phd		; 0B
	asl $19.b		; 06 19
	asl $EF.b		; 06 EF
	brk $0E.b		; 00 0E
	tsb $1E.b		; 04 1E
	asl $1EFF.w		; 0E FF 1E
	adc $BC3D7E.l,X		; 7F 7E 3D BC
	asl $F0.b		; 06 F0
	asl $E0.b		; 06 E0
	brk $10.b		; 00 10
	brk $F5.b		; 00 F5
	tsb $0CEF.w		; 0C EF 0C
	asl $FE08.w,X		; 1E 08 FE
	bpl  -2.b		; 10 FE
	inc A		; 1A
	stp		; DB
	bit $E7.b		; 24 E7
	ora $46FE.w,Y		; 19 FE 46
	lda $BE41.w,Y		; B9 41 BE
	mvp $53,$BB		; 44 BB 53
	ldy $AF50.w		; AC 50 AF
	bpl 126.b		; 10 7E
	jsr $113C.w		; 20 3C 11
	ora $5657.w,Y		; 19 57 56
	cmp $54DCD5.l,X		; DF D5 DC 54
	cmp [$53.b],Y		; D7 53
	sbc [$74.b],Y		; F7 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$5060.w		; C0 60 50
	clc		; 18
	pha		; 48
	cmp $000000.l		; CF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	bra  72.b		; 80 48
	lda [$88.b],Y		; B7 88
	adc [$84.b],Y		; 77 84
	tda		; 7B
	.db $82, $7D, $82		; 82 7D 82
	adc $FE00.w,X		; 7D 00 FE
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	sbc $ABBB6E.l,X		; FF 6E BB AB
	lda $BEA5.w,X		; BD A5 BE
	.db $82, $BE, $82		; 82 BE 82
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	sbc [$00.b],Y		; F7 00
	and $000300.l,X		; 3F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	jsr $0007.w		; 20 07 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	brk $13.b		; 00 13
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	tsb $020C.w		; 0C 0C 02
	cop $00.b		; 02 00
	brk $60.b		; 00 60
	bra  16.b		; 80 10
	cpx $80.b		; E4 80
	jsr ($FCF0.w,X)		; FC F0 FC
	tya		; 98
	inc $FE34.w,X		; FE 34 FE
	bit $DE.b		; 24 DE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F800.w		; F4 00 F8
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	brk $14.b		; 00 14
	rti		; 40

	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	php		; 08
	ora $103F08.l,X		; 1F 08 3F 10
	and $207F10.l,X		; 3F 10 7F 20
	sbc ($06.b,S),Y		; F3 06
	tsb $07.b		; 04 07
	ora ($0F.b,X)		; 01 0F
	ora #$030F.w		; 09 0F 03
	ora $041C13.l,X		; 1F 13 1C 04
	tsa		; 3B
	rol A		; 2A
	adc ($4C.b),Y		; 71 4C
	bvs  -1.b		; 70 FF
	beq -17.b		; F0 EF
	cpx #$E0FF.w		; E0 FF E0
	cmp $C9FFC0.l,X		; DF C0 FF C9
	ldx $BFC8.w,Y		; BE C8 BF
	tya		; 98
	ror $05FD.w,X		; 7E FD 05
	xce		; FB
	tas		; 1B
	inc $06.b,X		; F6 06
	inc $36.b,X		; F6 36
	inc $ED0E.w		; EE 0E ED
	adc $DD.b		; 65 DD
	mvn $85,$DC		; 54 DC 85
	and $8C.b,S		; 23 8C
	adc [$98.b],Y		; 77 98
.INDEX 16
	rep #$9C		; C2 9C
	sta ($9C.b,X)		; 81 9C
	brk $FC.b		; 00 FC
	sta ($7C.b,X)		; 81 7C
	ora ($FC.b,X)		; 01 FC
	cop $DD.b		; 02 DD
	sei		; 78
	php		; 08
	cpx #$7080.w		; E0 80 70
	ora ($60.b),Y		; 11 60
	cop $60.b		; 02 60
	adc $80.b,S		; 63 80
	sta $E0.b,S		; 83 E0
	ora $06.b,S		; 03 06
	sep #$0E		; E2 0E
	and [$06.b],Y		; 37 06
	tas		; 1B
	cop $1D.b		; 02 1D
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $040E18.l,X		; 1F 18 0E 04
	asl $060A.w		; 0E 0A 06
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	tda		; 7B
	bmi 119.b		; 30 77
	bvs  55.b		; 70 37
	bmi  59.b		; 30 3B
	sec		; 38
	sec		; 38
	bit $1E3C.w,X		; 3C 3C 1E
	bit $001C.w,X		; 3C 1C 00
	and [$F6.b]		; 27 F6
	and $F0.b,S		; 23 F0
	and $F8.b,S		; 23 F8
	brk $78.b		; 00 78
	sec		; 38
	jmp ($7C1C.w,X)		; 7C 1C 7C
	trb $007E.w		; 1C 7E 00
	rol $9C67.w,X		; 3E 67 9C
	sta $E00E78.l		; 8F 78 0E E0
	ora $02C1.w,X		; 1D C1 02
	cmp $B8.b,S		; C3 B8
	adc $407F80.l,X		; 7F 80 7F 40
	ldx $6073.w,Y		; BE 73 60
	sbc [$A0.b]		; E7 A0
	cmp $80BE40.l,X		; DF 40 BE 80
	and $8601.w,X		; 3D 01 86
	stx $9D.b		; 86 9D
	sta $52D3.w,X		; 9D D3 52
	sbc $784700.l,X		; FF 00 47 78
	sta $C13FE0.l,X		; 9F E0 3F C1
	ror $FC83.w,X		; 7E 83 FC
	asl $F8.b		; 06 F8
	tsb $18F0.w		; 0C F0 18
	sbc $38BF00.l,X		; FF 00 BF 38
	adc $80BE60.l,X		; 7F 60 BE 80
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	tsb $1CE0.w		; 0C E0 1C
	rti		; 40

	sec		; 38
	cpy #$0070.w		; C0 70 00
	cpx #$6000.w		; E0 00 60
	rti		; 40

	ldy #$A040.w		; A0 40 A0
	sty $20.b		; 84 20
	dey		; 88
	rti		; 40

	bcc   0.b		; 90 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$8020.w		; C0 20 80
	rti		; 40

	bra  64.b		; 80 40
	rti		; 40

	bra  32.b		; 80 20
	bra -96.b		; 80 A0
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	cpy #$80C0.w		; C0 C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $C9.b		; 00 C9
	brk $3F.b		; 00 3F
	tsb $3F7F.w		; 0C 7F 3F
	sbc $48FF26.l,X		; FF 26 FF 48
	sbc $00FF51.l,X		; FF 51 FF 00
	brk $06.b		; 00 06
	asl $C0.b		; 06 C0
	cpy #$809F.w		; C0 9F 80
	and $007F00.l,X		; 3F 00 7F 00
	inc $D900.w		; EE 00 D9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$3080.w		; E0 80 30
	rti		; 40

	tya		; 98
	ldy #$00CC.w		; A0 CC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $1070.w		; 20 70 10
	sec		; 38
	php		; 08
	bcs -58.b		; B0 C6
	asl $2F43.w,X		; 1E 43 2F
	sbc ($17.b,X)		; E1 17
	beq   5.b		; F0 05
	ldy $0F01.w,X		; BC 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bit $FC04.w,X		; 3C 04 FC
	rti		; 40

	dec $2FC0.w,X		; DE C0 2F
	jsr $080B.w		; 20 0B 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bvs -114.b		; 70 8E
	stx $8F.b,Y		; 96 8F
	and ($FF.b)		; 32 FF
	brk $7F.b		; 00 7F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	ror $00.b,X		; 76 00
	lsr $40.b		; 46 40
	asl $0000.w		; 0E 00 00
	brk $0C.b		; 00 0C
	ora ($1C.b),Y		; 11 1C
	and $18.b,S		; 23 18
	jsl $303628.l		; 22 28 36 30
	jmp ($7C30.w,X)		; 7C 30 7C
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	asl $1E00.w		; 0E 00 1E
	cop $1E.b		; 02 1E
	cop $2C.b		; 02 2C
	tsb $34.b		; 04 34
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	cmp $03FE01.l,X		; DF 01 FE 03
	inc $01.b,X		; F6 01
	cpy $0D00.w		; CC 00 0D
	brk $1F.b		; 00 1F
	tsb $3E.b		; 04 3E
	jsr $E05C.w		; 20 5C E0
	ldy #$C2C3.w		; A0 C3 C2
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	asl $0C06.w		; 0E 06 0C
	brk $30.b		; 00 30
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $09.b		; 00 09
	brk $86.b		; 00 86
	ora ($CF.b,X)		; 01 CF
	tsb $987D.w		; 0C 7D 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $3E.b		; 00 3E
	brk $FD.b		; 00 FD
	tsb $9870.w		; 0C 70 98
	lda $00.b,S		; A3 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $80.b		; 02 80
	ora ($E2.b,X)		; 01 E2
	cop $FD.b		; 02 FD
	lda $1D1D.w,X		; BD 1D 1D
	and $000D.w,X		; 3D 0D 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	asl $02.b		; 06 02
	ora $1DFF01.l,X		; 1F 01 FF 1D
	sbc $43EF0D.l,X		; FF 0D EF 43
	ldy $7887.w,X		; BC 87 78
	brk $FF.b		; 00 FF
	rti		; 40

	lda $0F7F80.l,X		; BF 80 7F 0F
	beq  48.b		; F0 30
	cmp $7BFF00.l		; CF 00 FF 7B
	eor $E7.b,S		; 43 E7
	sta [$9F.b]		; 87 9F
	brk $7F.b		; 00 7F
	lsr $B0F0.w		; 4E F0 B0
	ora $B0FF0F.l		; 0F 0F FF B0
	adc $40804E.l,X		; 7F 4E 80 40
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	asl $17FF.w,X		; 1E FF 17
	beq -128.b		; F0 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$1E1E.w		; C0 1E 1E
	cmp ($01.b,X)		; C1 01
	cmp $A90800.l		; CF 00 08 A9
	jsl $E40B88.l		; 22 88 0B E4
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	beq  15.b		; F0 0F
	sei		; 78
	lda [$3C.b],Y		; B7 3C
	stp		; DB
	sta [$79.b]		; 87 79
	sta [$78.b]		; 87 78
	ora [$1C.b]		; 07 1C
	sbc ($F2.b,S),Y		; F3 F2
	sbc $FC09.w,Y		; F9 09 FC
	pea $4AFE.w		; F4 FE 4A
	sbc $8F09A5.l,X		; FF A5 09 8F
	trb $00FF.w		; 1C FF 00
	adc $3080.w,X		; 7D 80 30
	cpy #$401C.w		; C0 1C 40
	sta $17FF07.l,X		; 9F 07 FF 17
	sbc $9D700B.l		; EF 0B 70 9D
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$F020.w		; E0 20 F0
	bpl -24.b		; 10 E8
	sta $57.b,S		; 83 57
	eor [$17.b]		; 47 17
	ora [$80.b],Y		; 17 80
	sbc $00EEC0.l,X		; FF C0 EE 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	cpy #$E800.w		; C0 00 E8
	sbc ($FF.b),Y		; F1 FF
	sbc $C02EEE.l,X		; FF EE 2E C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($80.b),Y		; F1 80
	sbc $00FFFC.l,X		; FF FC FF 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bra -104.b		; 80 98
	bcc -16.b		; 90 F0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $88.b		; 00 88
	brk $98.b		; 00 98
	cpx #$00F0.w		; E0 F0 00
	cpx #$3CA0.w		; E0 A0 3C
	plx		; FA
	ora $FF.b,S		; 03 FF
	brk $9F.b		; 00 9F
	bra   0.b		; 80 00
	adc $000300.l,X		; 7F 00 03 00
	brk $80.b		; 00 80
	bra -48.b		; 80 D0
	bpl  -3.b		; 10 FD
	ora ($FF.b,X)		; 01 FF
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	inc $3FA0.w,X		; FE A0 3F
	plx		; FA
	ora $00FF7A.l,X		; 1F 7A FF 00
	sbc $007000.l,X		; FF 00 70 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $DA.b		; 00 DA
	clc		; 18
	sep #$00		; E2 00
	.db $82, $80, $00		; 82 80 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	sed		; F8
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	ora $1F.b,S		; 03 1F
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora [$10.b],Y		; 17 10
	sbc $E4.b		; E5 E4
	sei		; 78
	sei		; 78
	ora $0C0C1F.l,X		; 1F 1F 0C 0C
	ora [$06.b]		; 07 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $3F.b		; 00 3F
	clc		; 18
	ror $21.b,X		; 76 21
	jmp ($EF34.w,X)		; 7C 34 EF
	bit $3CFF.w,X		; 3C FF 3C
	sbc $07AC7F.l,X		; FF 7F AC 07
	xce		; FB
	ora $3D11.w,Y		; 19 11 3D
	plp		; 28
	adc ($50.b,S),Y		; 73 50
	jmp ($3F10.w,X)		; 7C 10 3F
	ora ($7E.b,X)		; 01 7E
	cop $FF.b		; 02 FF
	cmp ($9F.b,S),Y		; D3 9F
	sty $03.b,X		; 94 03
	and $3E01.w,X		; 3D 01 3E
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $05170A.l		; 0F 0A 17 05
	tas		; 1B
	asl A		; 0A
	ora $180D.w,X		; 1D 0D 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $770FEF.l,X		; 1F EF 0F 77
	ora [$3B.b]		; 07 3B
	ora $1D.b,S		; 03 1D
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $283F50.l,X		; 7F 50 3F 28
	ora $0A0F14.l,X		; 1F 14 0F 0A
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $B9F776.l		; EF 76 F7 B9
	sbc $FFFA.w,X		; FD FA FF
	jsr ($3FFF.w,X)		; FC FF 3F
	and $3807CF.l,X		; 3F CF 07 38
	brk $00.b		; 00 00
	sbc $46FF89.l,X		; FF 89 FF 46
	sbc $03FF05.l,X		; FF 05 FF 03
	sbc $B0FFC0.l,X		; FF C0 FF B0
	ora $000017.l,X		; 1F 17 00 00
	brk $FF.b		; 00 FF
	sta $7C.b,S		; 83 7C
	inc $0011.w		; EE 11 00
	beq  -4.b		; F0 FC
	ora $F0.b,S		; 03 F0
	cpx $E000.w		; EC 00 E0
	brk $00.b		; 00 00
	sbc ($33.b,S),Y		; F3 33
	sbc $EEFF83.l,X		; FF 83 FF EE
	beq 112.b		; F0 70
	sbc $1CFCFF.l,X		; FF FF FC 1C
	cpx #$00E0.w		; E0 E0 00
	brk $18.b		; 00 18
	cpx #$C038.w		; E0 38 C0
	bit $2CC0.w,X		; 3C C0 2C
	bne  47.b		; D0 2F
	cld		; D8
	and $D5.b,S		; 23 D5
	ora #$15E9.w		; 09 E9 15
	pei ($00.b)		; D4 00
	ora [$20.b]		; 07 20
	and $60A7A0.l		; 2F A0 A7 60
	and [$60.b]		; 27 60
	rol A		; 2A
	sbc ($2D.b,X)		; E1 2D
	iny		; C8
	ora $BD3F90.l,X		; 1F 90 3F BD
	ora $0D7C.w		; 0D 7C 0D
	adc $F52C.w,Y		; 79 2C F5
	pla		; 68
	plx		; FA
	cpx #$E1D4.w		; E0 D4 E1
	bcs -61.b		; B0 C3
	adc $07.b,S		; 63 07
	tsb $08EF.w		; 0C EF 08
	cmp $60BF20.l		; CF 20 BF 60
	adc $80FFC0.l,X		; 7F C0 FF 80
	inc $FC03.w,X		; FE 03 FC
	ora [$F8.b]		; 07 F8
	brk $7F.b		; 00 7F
	rol $0041.w,X		; 3E 41 00
	adc $046F10.l,X		; 7F 10 6F 04
	xce		; FB
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($81.b,X)		; 01 81
	adc $801FFF.l,X		; 7F FF 1F 80
	adc ($92.b,S),Y		; 73 92
	bit $0F24.w,X		; 3C 24 0F
	ora #$B6B7.w		; 09 B7 B6
	jmp.w [$075C]		; DC 5C 07
	beq   3.b		; F0 03
	beq -55.b		; F0 C9
	sec		; 38
	cop $FE.b		; 02 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	rti		; 40

	lda $EFFF00.l,X		; BF 00 FF EF
	cpx #$000F.w		; E0 0F 00
	sbc [$E0.b]		; E7 E0
	sbc $E20C.w		; ED 0C E2
	.db $82, $20, $20		; 82 20 20
	cmp $C0C04F.l		; CF 4F C0 C0
	asl $8FFD.w,X		; 1E FD 8F
	ror $B7CF.w,X		; 7E CF B7
	sbc [$EF.b],Y		; F7 EF
	xce		; FB
	sbc [$FD.b],Y		; F7 FD
	tda		; 7B
	ror $3FBD.w,X		; 7E BD 3F
	dec $42FF.w,X		; DE FF 42
	sbc $58FFA1.l,X		; FF A1 FF 58
	sbc $08FF10.l,X		; FF 10 FF 08
	sbc $42FF84.l,X		; FF 84 FF 42
	sbc $EF17A1.l,X		; FF A1 17 EF
	brk $F0.b		; 00 F0
	bra 127.b		; 80 7F
	cpy #$E0BF.w		; C0 BF E0
	cmp $F8EFF0.l,X		; DF F0 EF F8
	lda [$FE.b],Y		; B7 FE
	cmp $9797.w,X		; DD 97 97
	cpy #$E04F.w		; C0 4F E0
	ldy #$57F7.w		; A0 F7 57
	xce		; FB
	pld		; 2B
	sbc $FE15.w,X		; FD 15 FE
	lsr A		; 4A
	sbc $FFFF22.l,X		; FF 22 FF FF
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	bmi -49.b		; 30 CF
	ora $FFF9F0.l		; 0F F0 F9 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	adc $AFBF33.l,X		; 7F 33 BF AF
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$8000.w		; E0 00 80
	brk $FC.b		; 00 FC
	cpy #$00E0.w		; C0 E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jmp ($8100.w,X)		; 7C 00 81
	ldy $3CFF.w,X		; BC FF 3C
	sta [$60.b]		; 87 60
	sbc $08FF1C.l,X		; FF 1C FF 08
	ror $3E00.w,X		; 7E 00 3E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	adc $0200.w,Y		; 79 00 02
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpx #$E080.w		; E0 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	jsr $4080.w		; 20 80 40
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	rts		; 60

	sei		; 78
	cld		; D8
	asl $07F4.w,X		; 1E F4 07
	inc $5F00.w,X		; FE 00 5F
	cpy #$F017.w		; C0 17 F0
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bcc  16.b		; 90 10
	cpx $04.b		; E4 04
	plx		; FA
	cop $FF.b		; 02 FF
	brk $BF.b		; 00 BF
	bra  47.b		; 80 2F
	jsr $FE82.w		; 20 82 FE
	cpy #$6031.w		; C0 31 60
	clc		; 18
	bmi -116.b		; 30 8C
	sec		; 38
	inc $02.b		; E6 02
	adc $011E00.l,X		; 7F 00 1E 01
	ora $E04445.l		; 0F 45 44 E0
	jsr $10F0.w		; 20 F0 10
	sed		; F8
	dey		; 88
	cli		; 58
	rti		; 40

	asl $10.b,X		; 16 10
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $06.b		; 06 06
	tsb $040C.w		; 0C 0C 04
	tas		; 1B
	phd		; 0B
	and $0E.b,X		; 35 0E
	and ($04.b),Y		; 31 04
	and $FB04.w,Y		; 39 04 FB
	brk $0F.b		; 00 0F
	cpx #$D00F.w		; E0 0F D0
	tas		; 1B
	ora $0A05.w		; 0D 05 0A
	php		; 08
	asl $3608.w,X		; 1E 08 36
	jsr $0207.w		; 20 07 02
	xce		; FB
	ror A		; 6A
	sbc $EC08.w,Y		; F9 08 EC
	tsb $3B20.w		; 0C 20 3B
	rti		; 40

	xce		; FB
	brk $FF.b		; 00 FF
	bmi -49.b		; 30 CF
	cpx #$8EFF.w		; E0 FF 8E
	sbc ($FF.b),Y		; F1 FF
	inc $1FFF.w,X		; FE FF 1F
	cmp $371D.w,X		; DD 1D 37
	and [$07.b],Y		; 37 07
	asl $FF.b		; 06 FF
	lda $FF11FF.l,X		; BF FF 11 FF
	ror $01FF.w		; 6E FF 01
	sbc $E71FE0.l,X		; FF E0 1F E7
	ora ($FE.b,X)		; 01 FE
	brk $1F.b		; 00 1F
	brk $23.b		; 00 23
	brk $D1.b		; 00 D1
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $191F98.l,X		; FF 98 1F 19
	sbc $E2.b,S		; E3 E2
	cmp $8EDD.w,X		; DD DD 8E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	rti		; 40

	lda $0F7887.l,X		; BF 87 78 0F
	beq   0.b		; F0 00
	sbc $007F80.l,X		; FF 80 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	rti		; 40

	sbc [$87.b],Y		; F7 87
	cmp $003F0F.l		; CF 0F 3F 00
	sbc $00009C.l,X		; FF 9C 00 00
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $0F.b		; 06 0F
	tsb $1F.b		; 04 1F
	bpl  63.b		; 10 3F
	bpl -50.b		; 10 CE
	bmi -116.b		; 30 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	bit $04.b,X		; 34 04
	bvs   0.b		; 70 00
	bmi -40.b		; 30 D8
	ldy #$80F8.w		; A0 F8 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$8000.w		; A0 00 80
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$7840.w		; E0 40 78
	bne  30.b		; D0 1E
	inc $07.b,X		; F6 07
	sbc $FF01.w,X		; FD 01 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -96.b		; 80 A0
	jsr $08E8.w		; 20 E8 08
	sbc $FE01.w,Y		; F9 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $C4.b		; 00 C4
	brk $CE.b		; 00 CE
	tsb $BA.b		; 04 BA
	pha		; 48
	lda ($58.b)		; B2 58
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $C4.b		; 00 C4
	brk $CE.b		; 00 CE
	tsb $FE.b		; 04 FE
	tsb $FE.b		; 04 FE
	sta $40FF00.l,X		; 9F 00 FF 40
	xce		; FB
	eor $C8.b,S		; 43 C8
	rti		; 40

	adc $20.b,S		; 63 20
	and ($10.b,S),Y		; 33 10
	and ($10.b,S),Y		; 33 10
	and ($10.b,S),Y		; 33 10
	rts		; 60

	sbc $04FF00.l,X		; FF 00 FF 04
	sbc $1CFF37.l,X		; FF 37 FF 1C
	jmp ($3C0C.w,X)		; 7C 0C 3C
	tsb $0C3C.w		; 0C 3C 0C
	bit $20F0.w,X		; 3C F0 20
	iny		; C8
	brk $CE.b		; 00 CE
	php		; 08
	ora $02.b,S		; 03 02
	sty $DC00.w		; 8C 00 DC
	brk $FF.b		; 00 FF
	brk $B7.b		; 00 B7
	sei		; 78
	brk $F0.b		; 00 F0
	bmi  -8.b		; 30 F8
	bmi  -2.b		; 30 FE
	jsr ($73FF.w,X)		; FC FF 73
	adc ($23.b,S),Y		; 73 23
	and $00.b,S		; 23 00
	brk $FC.b		; 00 FC
	jsr ($2078.w,X)		; FC 78 20
	sec		; 38
	bpl  52.b		; 10 34
	brk $EC.b		; 00 EC
	plp		; 28
	tsb $08.b		; 04 08
	tya		; 98
	bpl -56.b		; 10 C8
	brk $E4.b		; 00 E4
	brk $00.b		; 00 00
	sei		; 78
	brk $38.b		; 00 38
	php		; 08
	bit $FC10.w,X		; 3C 10 FC
	beq  -4.b		; F0 FC
	rts		; 60

	sei		; 78
	bmi  56.b		; 30 38
	clc		; 18
	trb $0001.w		; 1C 01 00
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $0D04.w		; 0E 04 0D
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $0F02.w		; 0E 02 0F
	cpy #$5800.w		; C0 00 58
	bra -36.b		; 80 DC
	cpy #$40FC.w		; C0 FC 40
	jsr ($9844.w,X)		; FC 44 98
	pha		; 48
	rti		; 40

	brk $41.b		; 00 41
	brk $3F.b		; 00 3F
	sbc $23FF27.l,X		; FF 27 FF 23
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $3FFF27.l,X		; FF 27 FF 3F
	adc $1E7E3E.l,X		; 7F 3E 7E 1E
	ora ($3F.b,X)		; 01 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	ora $F5.b,S		; 03 F5
	asl A		; 0A
	sbc ($E1.b,X)		; E1 E1
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl A		; 0A
	asl A		; 0A
	sbc [$98.b],Y		; F7 98
	sbc $00FF60.l,X		; FF 60 FF 00
	sbc $00FF20.l,X		; FF 20 FF 00
	sbc $1EFDF0.l		; EF F0 FD 1E
	sbc ($0D.b)		; F2 0D
	tya		; 98
	tya		; 98
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	ora $00001F.l,X		; 1F 1F 00 00
	and $1D22.w,X		; 3D 22 1D
	cop $8F.b		; 02 8F
	ora ($87.b,X)		; 01 87
	brk $80.b		; 00 80
	brk $C7.b		; 00 C7
	tsb $CC.b		; 04 CC
	php		; 08
	inx		; E8
	brk $C0.b		; 00 C0
	sbc $70FFE0.l,X		; FF E0 FF 70
	adc $7F7F78.l,X		; 7F 78 7F 7F
	adc $303F38.l,X		; 7F 38 3F 30
	bit $1810.w,X		; 3C 10 18
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	brk $F8.b		; 00 F8
	cpy #$38F4.w		; C0 F4 38
	sec		; 38
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	brk $07.b		; 00 07
	ora [$00.b],Y		; 17 00
	asl $3A04.w,X		; 1E 04 3A
	tsb $3854.w		; 0C 54 38
	cli		; 58
	jsr $0060.w		; 20 60 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	php		; 08
	ora $001E00.l,X		; 1F 00 1E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	tas		; 1B
	clc		; 18
	sbc ($09.b)		; F2 09
	asl A		; 0A
	ora ($3B.b,X)		; 01 3B
	php		; 08
	eor ($31.b)		; 52 31
	adc [$20.b]		; 67 20
	lda $236D01.l		; AF 01 6D 23
	sbc $FD.b		; E5 FD
	ora $FD.b		; 05 FD
	ora $0D.b		; 05 0D
	tsb $3C.b		; 04 3C
	ora $187D.w		; 0D 7D 18
	sei		; 78
	eor ($F1.b),Y		; 51 F1
	sta ($F3.b,S),Y		; 93 F3
	sbc $83.b,X		; F5 83
	sbc $83.b		; E5 83
	sbc [$80.b]		; E7 80
	sbc $EC03.w		; ED 03 EC
	sta $DF.b,S		; 83 DF
	brk $DD.b		; 00 DD
	cop $9F.b		; 02 9F
	asl $8B.b		; 06 8B
	phb		; 8B
	txy		; 9B
	txy		; 9B
	tya		; 98
	tya		; 98
	ora ($13.b,S),Y		; 13 13
	sta ($93.b,S),Y		; 93 93
	jsr $2620.w		; 20 20 26
	rol $66.b		; 26 66
	ror $C6.b		; 66 C6
	tsb $C6.b		; 04 C6
	tsb $D3.b		; 04 D3
	bpl -87.b		; 10 A9
	sec		; 38
	stz $A724.w		; 9C 24 A7
	ora $25.b,S		; 03 25
	cop $32.b		; 02 32
	jsr $3E38.w		; 20 38 3E
	sec		; 38
	rol $3F2C.w,X		; 3E 2C 3F
	lsr $7F.b		; 46 7F
	eor $7F.b,S		; 43 7F
	rti		; 40

	adc [$C0.b]		; 67 C0
	sbc [$C0.b]		; E7 C0
	sbc ($80.b)		; F2 80
	brk $E0.b		; 00 E0
	bra  80.b		; 80 50
	cpx #$00E0.w		; E0 E0 00
	sep #$00		; E2 00
	sta ($C2.b),Y		; 91 C2
	ora $02.b,X		; 15 02
	sta $800002.l,X		; 9F 02 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E2.b		; 00 E2
	jsr $E0F3.w		; 20 F3 E0
	sbc [$60.b],Y		; F7 60
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	adc $7C30.w		; 6D 30 7C
	jsr $0022.w		; 20 22 00
	ora #$0800.w		; 09 00 08
	brk $1C.b		; 00 1C
	php		; 08
	ora $061608.l,X		; 1F 08 16 06
	cop $7F.b		; 02 7F
	ora $7F.b,S		; 03 7F
	ora ($23.b,X)		; 01 23
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	ora #$C61F.w		; 09 1F C6
	and ($6D.b,X)		; 21 6D
	adc $1F.b,S		; 63 1F
	ora $8F.b,S		; 03 8F
	.db $82, $C7, $02		; 82 C7 02
	adc [$22.b]		; 67 22
	lda [$71.b],Y		; B7 71
	ora $F91900.l		; 0F 00 19 F9
	sta ($F3.b,S),Y		; 93 F3
	sbc $E3.b,S		; E3 E3
	adc ($F2.b)		; 72 F2
	dec A		; 3A
	plx		; FA
	inc A		; 1A
	ply		; 7A
	phd		; 0B
	xce		; FB
	beq -16.b		; F0 F0
	sbc $FEFE.w,X		; FD FE FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FF.b,X		; B5 FF
	lda $FF.b,X		; B5 FF
	and ($FF.b),Y		; 31 FF
	inc $84FF.w,X		; FE FF 84
	inc $FFFE.w,X		; FE FE FF
	sbc $B5FFFF.l,X		; FF FF FF B5
	lda $B5.b,X		; B5 B5
	lda $31.b,X		; B5 31
	and ($FF.b),Y		; 31 FF
	sbc $E48484.l,X		; FF 84 84 E4
	brk $E3.b		; 00 E3
	brk $C1.b		; 00 C1
	ora ($C8.b,X)		; 01 C8
	php		; 08
	stx $8B0E.w		; 8E 0E 8B
	tsb $088F.w		; 0C 8F 08
	ldx $1831.w		; AE 31 18
	trb $1F1C.w		; 1C 1C 1F
	rol $373F.w,X		; 3E 3F 37
	and $707F71.l,X		; 3F 71 7F 70
	adc $407F70.l,X		; 7F 70 7F 40
	adc $140C19.l,X		; 7F 19 0C 14
	ora #$011D.w		; 09 1D 01
	trb $00.b		; 14 00
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $1F.b		; 02 1F
	cop $1F.b		; 02 1F
	cop $1F.b		; 02 1F
	ora $17.b,S		; 03 17
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cmp $40.b,S		; C3 40
	sta [$00.b]		; 87 00
	sta $001F00.l		; 8F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	bit $78FC.w,X		; 3C FC 78
	sed		; F8
	bvs -16.b		; 70 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$C0C0.w		; E0 C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	xce		; FB
	ora $0DFF.w		; 0D FF 0D
	sbc $0DFF0D.l,X		; FF 0D FF 0D
	sbc $0DFE0D.l,X		; FF 0D FE 0D
	sbc [$0C.b],Y		; F7 0C
	xce		; FB
	tsb $0D.b		; 04 0D
	ora $0D0D.w		; 0D 0D 0D
	ora $0D0D.w		; 0D 0D 0D
	ora $0D0D.w		; 0D 0D 0D
	ora $0C0D.w		; 0D 0D 0C
	tsb $0404.w		; 0C 04 04
	cpx #$E072.w		; E0 72 E0
	sta ($E0.b)		; 92 E0
	ora $39F0.w,Y		; 19 F0 39
	sed		; F8
	cmp [$FF.b]		; C7 FF
	stz $E17F.w,X		; 9E 7F E1
	sbc $606D00.l,X		; FF 00 6D 60
	cmp $06C0.w		; CD C0 06
	brk $36.b		; 00 36
	bmi -31.b		; 30 E1
	sbc ($9E.b,X)		; E1 9E
	stz $EDED.w,X		; 9E ED ED
	brk $00.b		; 00 00
	adc [$80.b]		; 67 80
	rts		; 60

	bra 103.b		; 80 67
	sta [$73.b]		; 87 73
	.db $82, $D1, $A0		; 82 D1 A0
	sbc $FCA0.w,Y		; F9 A0 FC
	jsr $20FC.w		; 20 FC 20
	clc		; 18
	ora $585F5F.l,X		; 1F 5F 5F 58
	eor $EEEFEC.l,X		; 5F EC EF EE
	sbc $23A7A6.l		; EF A6 A7 23
	and $23.b,S		; 23 23
	and $CA.b,S		; 23 CA
	tsb $3A.b		; 04 3A
	tsb $889C.w		; 0C 9C 88
	cpy $3808.w		; CC 08 38
	bpl  16.b		; 10 10
	php		; 08
	bra   0.b		; 80 00
	bvs   0.b		; 70 00
	brk $CE.b		; 00 CE
	cpy #$60FE.w		; C0 FE 60
	jsr ($FC30.w,X)		; FC 30 FC
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora $03.b		; 05 03
	ora $113701.l,X		; 1F 01 37 11
	adc [$20.b]		; 67 20
	adc [$24.b],Y		; 77 24
	plb		; AB
	rti		; 40

	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	php		; 08
	and $087F18.l,X		; 3F 18 7F 08
	adc $DFEF04.l,X		; 7F 04 EF DF
	cop $DB.b		; 02 DB
	asl $DF.b		; 06 DF
	mvp $0C,$17		; 44 17 0C
	and $083E0C.l,X		; 3F 0C 3E 08
	ldx $BC88.w,Y		; BE 88 BC
	dey		; 88
	and $E3.b,S		; 23 E3
	rol $E6.b		; 26 E6
	rol $E6.b		; 26 E6
	cpx $CCEC.w		; EC EC CC
	cpy $CDCD.w		; CC CD CD
	eor #$5BC9.w		; 49 C9 5B
	stp		; DB
	ldx $BE04.w,Y		; BE 04 BE
	tsb $3E.b		; 04 3E
	tsb $3E.b		; 04 3E
	tsb $36.b		; 04 36
	tsb $0C3E.w		; 0C 3E 0C
	dec A		; 3A
	tsb $88BE.w		; 0C BE 88
	eor $45.b		; 45 45
	eor $45.b		; 45 45
	cmp $C5.b		; C5 C5
	cmp $CDCD.w		; CD CD CD
	cmp $CDCD.w		; CD CD CD
	cmp $4DCD.w		; CD CD 4D
	cmp $2032.w		; CD 32 20
	bcc -128.b		; 90 80
	bcc -128.b		; 90 80
	cli		; 58
	bvc 104.b		; 50 68
	rts		; 60

	jsr ($9488.w,X)		; FC 88 94
	php		; 08
	sty $C000.w		; 8C 00 C0
	sbc ($60.b)		; F2 60
	beq  96.b		; F0 60
	beq -96.b		; F0 A0
	sed		; F8
	bcc  -8.b		; 90 F8
	brk $FC.b		; 00 FC
	brk $9C.b		; 00 9C
	brk $8C.b		; 00 8C
	.db $82, $00, $C6		; 82 00 C6
	brk $E7.b		; 00 E7
	cpy $C3.b		; C4 C3
	ora $80.b,S		; 03 80
	brk $01.b		; 00 01
	ora ($86.b,X)		; 01 86
	ora [$9F.b]		; 07 9F
	bpl 124.b		; 10 7C
	ror $3E38.w,X		; 7E 38 3E
	cld		; D8
	cmp $7F3F3C.l,X		; DF 3C 3F 7F
	adc $78FFFE.l,X		; 7F FE FF 78
	adc $287F60.l,X		; 7F 60 7F 28
	bpl  40.b		; 10 28
	bpl  56.b		; 10 38
	bpl -40.b		; 10 D8
	bpl  48.b		; 10 30
	jsr $E0D0.w		; 20 D0 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	jsr $C0F8.w		; 20 F8 C0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	sei		; 78
	bra  -8.b		; 80 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E3.b		; 00 E3
	cop $CF.b		; 02 CF
	brk $97.b		; 00 97
	clc		; 18
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $1F1C1F.l,X		; 1F 1F 1C 1F
	bmi  63.b		; 30 3F
	rts		; 60

	adc $64080C.l,X		; 7F 0C 08 64
	rts		; 60

	ply		; 7A
	tsb $044E.w		; 0C 4E 04
	lsr $00.b		; 46 00
	jsr $4000.w		; 20 00 40
	brk $7E.b		; 00 7E
	brk $F0.b		; 00 F0
	jsr ($FC98.w,X)		; FC 98 FC
	bra  -2.b		; 80 FE
	bra -50.b		; 80 CE
	bra -58.b		; 80 C6
	cpy #$80E0.w		; C0 E0 80
	cpy #$FE80.w		; C0 80 FE
	adc $C13FC2.l,X		; 7F C2 3F C1
	sbc $61BF00.l,X		; FF 00 BF 61
	stz $FF61.w,X		; 9E 61 FF
	brk $FD.b		; 00 FD
	dec $FE.b		; C6 FE
	tda		; 7B
	cmp $C3.b,S		; C3 C3
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	adc ($61.b,X)		; 61 61
	adc ($61.b,X)		; 61 61
	brk $00.b		; 00 00
	dec $7FCE.w		; CE CE 7F
	adc $E003E3.l,X		; 7F E3 03 E0
	brk $F3.b		; 00 F3
	brk $F1.b		; 00 F1
	bra -16.b		; 80 F0
	brk $F9.b		; 00 F9
	eor ($58.b,X)		; 41 58
	cpx #$60F9.w		; E0 F9 60
	trb $1F1F.w		; 1C 1F 1F
	ora $8E0F0C.l,X		; 1F 0C 0F 8E
	sta $460F0F.l		; 8F 0F 0F 46
	eor [$E7.b]		; 47 E7
	sbc [$66.b]		; E7 66
	ror $FF.b		; 66 FF
	sec		; 38
	cmp $18FF38.l,X		; DF 38 FF 18
	sbc $18FF18.l,X		; FF 18 FF 18
	sbc $18FF18.l,X		; FF 18 FF 18
	sbc $383818.l,X		; FF 18 38 38
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
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $03FE03.l,X		; FF 03 FE 03
	xce		; FB
	asl $FF.b		; 06 FF
	asl $FF.b		; 06 FF
	asl $FD.b		; 06 FD
	asl $03.b		; 06 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$06.b]		; 07 06
	asl $06.b		; 06 06
	asl $0E.b		; 06 0E
	asl $00FF.w		; 0E FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FF01.w,X		; FE 01 FF
	ora ($FD.b,X)		; 01 FD
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	cpy #$C0FF.w		; C0 FF C0
	sbc $80FF00.l,X		; FF 00 FF 80
	jsr ($7F83.w,X)		; FC 83 7F
	sta [$F5.b]		; 87 F5
	asl $0000.w		; 0E 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0000.w		; C0 00 00
	cpy #$C3C0.w		; C0 C0 C3
	cmp $87.b,S		; C3 87
	sta [$0E.b]		; 87 0E
	asl $6090.w		; 0E 90 60
	adc $207020.l,X		; 7F 20 70 20
	sei		; 78
	sec		; 38
	eor $3333.w		; 4D 33 33
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	adc $077F0F.l,X		; 7F 0F 7F 07
	adc $007F00.l,X		; 7F 00 7F 00
	and ($00.b,S),Y		; 33 00
	ora $00.b,S		; 03 00
	ora ($EF.b,X)		; 01 EF
	jsr $808F.w		; 20 8F 80
	ora $001F00.l,X		; 1F 00 1F 00
	ora $80BF00.l,X		; 1F 00 BF 80
	and $003F00.l,X		; 3F 00 3F 00
	bpl -16.b		; 10 F0
	bvs -16.b		; 70 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0FC0.w		; C0 C0 0F
	tsb $09.b		; 04 09
	asl $05.b		; 06 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $1F.b		; 04 1F
	ora #$1033.w		; 09 33 10
	and ($00.b,X)		; 21 00
	and ($00.b,X)		; 21 00
	adc #$4328.w		; 69 28 43
	php		; 08
	jmp $125E04.l		; 5C 04 5E 12
	ora ($19.b,X)		; 01 19
	tsb $1E3C.w		; 0C 3C 1E
	rol $3E1E.w,X		; 3E 1E 3E
	asl $7E.b,X		; 16 7E
	bit $7C.b,X		; 34 7C
	and $7F.b,S		; 23 7F
	and ($7F.b,X)		; 21 7F
	trb $08.b		; 14 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	trb $1800.w		; 1C 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	lda ($01.b)		; B2 01
	lda ($01.b,S),Y		; B3 01
	sta $11.b,S		; 83 11
	cmp ($51.b,S),Y		; D3 51
	.db $42, $01		; 42 01
	and [$00.b]		; 27 00
	eor $22.b		; 45 22
	adc [$22.b]		; 67 22
	eor $4DFD.w		; 4D FD 4D
	sbc $FD6D.w,X		; FD 6D FD
	and $3DFD.w		; 2D FD 3D
	adc $3818.w,X		; 7D 18 38
	inc A		; 1A
	ply		; 7A
	inc A		; 1A
	ply		; 7A
	wai		; CB
	dey		; 88
	sta $9108.w,Y		; 99 08 91
	php		; 08
	lda $9520.w,Y		; B9 20 95
	bit $2D.b		; 24 2D
	tsb $0831.w		; 0C 31 08
	and ($00.b,S),Y		; 33 00
	ldy $BC.b,X		; B4 BC
	ror $7E.b		; 66 7E
	ror $7E.b		; 66 7E
	lsr $7E.b		; 46 7E
	lsr A		; 4A
	ror $FED2.w,X		; 7E D2 FE
	dec $FE.b		; C6 FE
	cpy $C8FC.w		; CC FC C8
	bra -56.b		; 80 C8
	bra -56.b		; 80 C8
	bra -52.b		; 80 CC
	dey		; 88
	dec $84.b		; C6 84
	.db $42, $80		; 42 80
	cmp ($00.b,X)		; C1 00
	rti		; 40

	bra -80.b		; 80 B0
	clv		; B8
	bcs -72.b		; B0 B8
	bcs -72.b		; B0 B8
	bcs -68.b		; B0 BC
	clv		; B8
	ldx $BEBC.w,Y		; BE BC BE
	rol $BF3F.w,X		; 3E 3F BF
	lda $07080F.l,X		; BF 0F 08 07
	brk $00.b		; 00 00
	brk $CD.b		; 00 CD
	dec $80FE.w		; CE FE 80
	cpy #$4280.w		; C0 80 42
	brk $45.b		; 00 45
	cop $F0.b		; 02 F0
	sbc $FFFFF8.l,X		; FF F8 FF FF
	sbc $00FF30.l,X		; FF 30 FF 00
	inc $C000.w,X		; FE 00 C0
	bra -62.b		; 80 C2
	bra -57.b		; 80 C7
	ply		; 7A
	bit $043A.w,X		; 3C 3A 04
	pei ($08.b)		; D4 08
	trb $08.b		; 14 08
	clc		; 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	inc $FEC0.w,X		; FE C0 FE
	brk $DC.b		; 00 DC
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $30FF31.l,X		; FF 31 FF 30
	lda [$78.b],Y		; B7 78
	sbc $FFFF79.l,X		; FF 79 FF FF
	tyx		; BB
	dec $FF.b		; C6 FF
	brk $FD.b		; 00 FD
	ora $31.b,S		; 03 31
	and ($31.b),Y		; 31 31
	and ($79.b),Y		; 31 79
	adc $F9F9.w,Y		; 79 F9 F9
	sbc $E7E7FF.l,X		; FF FF E7 E7
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	adc $B9D7B0.l		; 6F B0 D7 B9
	sbc $8BFD98.l		; EF 98 FD 8B
	sbc $02FF00.l,X		; FF 00 FF 02
	sbc $807F01.l,X		; FF 01 7F 80
	bcs -80.b		; B0 B0
	lda $98B9.w,Y		; B9 B9 98
	tya		; 98
	phb		; 8B
	phb		; 8B
	bra -128.b		; 80 80
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	adc $187F18.l,X		; 7F 18 7F 18
	adc $186F18.l		; 6F 18 6F 18
	adc $083F08.l,X		; 7F 08 3F 08
	and $88BF08.l,X		; 3F 08 BF 88
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	pha		; 48
	iny		; C8
	inc $0C.b,X		; F6 0C
	ror $7E0C.w,X		; 7E 0C 7E
	tsb $0C7A.w		; 0C 7A 0C
	ror $7C18.w		; 6E 18 7C
	clc		; 18
	stz $18.b,X		; 74 18
	jmp ($0D10.w,X)		; 7C 10 0D
	ora $8D8D.w		; 0D 8D 8D
	sta $9D8D.w		; 8D 8D 9D
	sta $9D9D.w,X		; 9D 9D 9D
	txy		; 9B
	txy		; 9B
	txy		; 9B
	txy		; 9B
	tyx		; BB
	tyx		; BB
	plx		; FA
	ora [$F7.b]		; 07 F7
	asl $0CFF.w		; 0E FF 0C
	sbc $30DF98.l		; EF 98 DF 30
	adc $18FF80.l,X		; 7F 80 FF 18
	sbc $070780.l,X		; FF 80 07 07
	asl $0C0E.w		; 0E 0E 0C
	tsb $9898.w		; 0C 98 98
	bmi  48.b		; 30 30
	cpx #$58E0.w		; E0 E0 58
	cli		; 58
	bra -128.b		; 80 80
	xce		; FB
	tsb $18EF.w		; 0C EF 18
	sbc $1CEF18.l,X		; FF 18 EF 1C
	sbc [$0F.b],Y		; F7 0F
	sbc $DF03.w,X		; FD 03 DF
	bmi  -9.b		; 30 F7
	sec		; 38
	tsb $180C.w		; 0C 0C 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $0F1C.w		; 1C 1C 0F
	ora $380707.l		; 0F 07 07 38
	sec		; 38
	sec		; 38
	sec		; 38
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	ora $0005.w		; 0D 05 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $77007F.l		; 0F 7F 00 77
	brk $4F.b		; 00 4F
	ora ($4F.b,X)		; 01 4F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($07.b,X)		; 01 07
	cop $F7.b		; 02 F7
	bpl -128.b		; 10 80
	bra -120.b		; 80 88
	dey		; 88
	lda ($B1.b),Y		; B1 B1
	bcs -80.b		; B0 B0
	beq -16.b		; F0 F0
	sbc ($F1.b),Y		; F1 F1
	plx		; FA
	plx		; FA
	php		; 08
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	and $08EC00.l		; 2F 00 EC 08
	bit $F8.b,X		; 34 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	and $00FC10.l,X		; 3F 10 FC 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	rol $1C.b		; 26 1C
	ora $040F04.l,X		; 1F 04 0F 04
	phd		; 0B
	brk $11.b		; 00 11
	brk $0D.b		; 00 0D
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $1F00.w,X		; 3E 00 1F
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	asl $021F.w		; 0E 1F 02
	ora $000300.l		; 0F 00 03 00
	brk $CF.b		; 00 CF
	cop $0B.b		; 02 0B
	asl $8F.b		; 06 8F
	asl $CF.b		; 06 CF
	lsr $AB.b		; 46 AB
	ror $CD.b		; 66 CD
	cop $87.b		; 02 87
	bra -26.b		; 80 E6
	brk $36.b		; 00 36
	inc $F6.b,X		; F6 F6
	inc $76.b,X		; F6 76
	inc $36.b,X		; F6 36
	inc $16.b,X		; F6 16
	inc $32.b,X		; F6 32
	sbc ($78.b)		; F2 78
	sed		; F8
	ora $77F9.w,Y		; 19 F9 77
	eor ($67.b),Y		; 51 67
	adc ($03.b,X)		; 61 03
	brk $61.b		; 00 61
	jsr $0071.w		; 20 71 00
	bvs   0.b		; 70 00
	ror $06.b,X		; 76 06
	adc $F98918.l		; 6F 18 89 F9
	sta $FCF9.w,Y		; 99 F9 FC
	jsr ($FE9E.w,X)		; FC 9E FE
	stx $8FFE.w		; 8E FE 8F
	sbc $80FF89.l,X		; FF 89 FF 80
	sbc $CF80DF.l,X		; FF DF 80 CF
	bra -49.b		; 80 CF
	bra -25.b		; 80 E7
	rti		; 40

	sbc [$41.b]		; E7 41
	cmp ($20.b)		; D2 20
	bvs   0.b		; 70 00
	bit $04.b,X		; 34 04
	ldy #$B0BF.w		; A0 BF B0
	lda $D8BFB0.l,X		; BF B0 BF D8
	cmp $2D5F58.l,X		; DF 58 5F 2D
	and $CB8F8F.l		; 2F 8F 8F CB
	cmp $000000.l		; CF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $14.b		; 00 14
	php		; 08
	asl A		; 0A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	plp		; 28
	bpl  20.b		; 10 14
	php		; 08
	ora $1A08.w,X		; 1D 08 1A
	ora $0C14.w		; 0D 14 0C
	ora $000004.l		; 0F 04 00 00
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1F.b		; 00 1F
	ora $1F.b,S		; 03 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	stx $2380.w		; 8E 80 23
	cop $7F.b		; 02 7F
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 112.b		; F0 70
	inc $FFDC.w,X		; FE DC FF
	bra  -1.b		; 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	eor ($80.b,X)		; 41 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C1.b		; 00 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $3CF200.l,X		; 3F 00 F2 3C
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $E0FE00.l,X		; 3F 00 FE E0
	sed		; F8
	inx		; E8
	bvs -72.b		; 70 B8
	bpl 120.b		; 10 78
	bpl  80.b		; 10 50
	brk $50.b		; 00 50
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	rti		; 40

	sed		; F8
	bra  -8.b		; 80 F8
	bra -48.b		; 80 D0
	bra -48.b		; 80 D0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	sty $D400.w		; 8C 00 D4
	dey		; 88
	bit $9C08.w,X		; 3C 08 9C
	php		; 08
	iny		; C8
	cpy #$80F0.w		; C0 F0 80
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $8C.b		; 00 8C
	brk $DC.b		; 00 DC
	cpy #$60FC.w		; C0 FC 60
	jsr ($F830.w,X)		; FC 30 F8
	brk $F0.b		; 00 F0
	sbc $20FF20.l,X		; FF 20 FF 20
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $003F00.l,X		; BF 00 3F 00
	and [$00.b],Y		; 37 00
	ora ($00.b,S),Y		; 13 00
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$C8C0.w		; C0 C0 C8
	iny		; C8
	cpx $80EC.w		; EC EC 80
	brk $5C.b		; 00 5C
	trb $BE.b		; 14 BE
	jsl $BF00BF.l		; 22 BF 00 BF
	brk $BF.b		; 00 BF
	ora ($7E.b,X)		; 01 7E
	cop $0C.b		; 02 0C
	php		; 08
	adc $7F23FF.l,X		; 7F FF 23 7F
	eor ($FF.b,X)		; 41 FF
	rti		; 40

	sbc $40FF40.l,X		; FF 40 FF 40
	sbc $F3FF81.l,X		; FF 81 FF F3
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	clc		; 18
	stz $28.b		; 64 28
	mvn $94,$08		; 54 08 94
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bpl 124.b		; 10 7C
	jsr $607C.w		; 20 7C 60
	jsr ($042A.w,X)		; FC 2A 04
	ldx $00.b		; A6 00
	cpx #$6040.w		; E0 40 60
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	bne  64.b		; D0 40
	cpy #$40EE.w		; C0 EE 40
	inc $00.b		; E6 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	jsr $30F0.w		; 20 F0 30
	bpl  41.b		; 10 29
	ora $1233.w,Y		; 19 33 12
	lsr $00.b		; 46 00
	cld		; D8
	rti		; 40

	tay		; A8
	rts		; 60

	jmp ($1E18.w)		; 6C 18 1E
	brk $0F.b		; 00 0F
	and $0C3F06.l,X		; 3F 06 3F 0C
	and $207E38.l,X		; 3F 38 7E 20
	sed		; F8
	bpl  -8.b		; 10 F8
	brk $7C.b		; 00 7C
	brk $1E.b		; 00 1E
	and $9110.w,Y		; 39 10 91
	brk $61.b		; 00 61
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sbc $F160.w,Y		; F9 60 F1
	brk $61.b		; 00 61
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1B0A.w		; 0E 0A 1B
	bpl  48.b		; 10 30
	jsr $0070.w		; 20 70 00
	plp		; 28
	bmi -12.b		; 30 F4
	clc		; 18
	trb $08.b		; 14 08
	ora $FFF100.l		; 0F 00 F1 FF
	cpx #$C0FB.w		; E0 FB C0
	beq -128.b		; F0 80
	beq -64.b		; F0 C0
	sed		; F8
	brk $FC.b		; 00 FC
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $7CB6EA.l		; 22 EA B6 7C
	lda ($79.b,X)		; A1 79
	cmp $31.b,S		; C3 31
	eor $9FBB.w,X		; 5D BB 9F
	adc $791E.w,X		; 7D 1E 79
	and $167C.w		; 2D 7C 16
	ora ($82.b,X)		; 01 82
	ora ($87.b,X)		; 01 87
	brk $CF.b		; 00 CF
	brk $47.b		; 00 47
	brk $83.b		; 00 83
	brk $07.b		; 00 07
	bra   3.b		; 80 03
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	bpl  32.b		; 10 20
	bmi  88.b		; 30 58
	pla		; 68
	tya		; 98
	inx		; E8
	sei		; 78
	dey		; 88
	iny		; C8
	clc		; 18
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	bpl 104.b		; 10 68
	bmi -56.b		; 30 C8
	sei		; 78
	bra  -8.b		; 80 F8
	tsb $F8.b		; 04 F8
	asl $F8.b		; 06 F8
	tsb $F0.b		; 04 F0
	php		; 08
	cpy #$8E12.w		; C0 12 8E
	and ($94.b,X)		; 21 94
	eor ($2D.b,X)		; 41 2D
	cmp ($09.b)		; D2 09
	cpx $8A.b		; E4 8A
	cpx $08.b		; E4 08
	pei ($C0.b)		; D4 C0
	trb $01EE.w		; 1C EE 01
	dec $BE00.w,X		; DE 00 BE
	brk $AD.b		; 00 AD
	brk $9B.b		; 00 9B
	brk $DA.b		; 00 DA
	ora ($E8.b,X)		; 01 E8
	ora $E0.b,S		; 03 E0
	ora $29.b,S		; 03 29
	.db $42, $C7		; 42 C7
	sec		; 38
	pld		; 2B
	pei ($28.b)		; D4 28
	eor [$92.b],Y		; 57 92
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	.db $82, $7B, $84		; 82 7B 84
	cmp [$00.b]		; C7 00
	pld		; 2B
	brk $B8.b		; 00 B8
	brk $D7.b		; 00 D7
	brk $28.b		; 00 28
	cmp [$10.b]		; C7 10
	sbc $006D10.l		; EF 10 6D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	clc		; 18
	asl $1E.b		; 06 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	bpl  40.b		; 10 28
	clc		; 18
	rol $1E.b		; 26 1E
	and ($19.b,X)		; 21 19
	rol $11.b		; 26 11
	jsl $2E2818.l		; 22 18 28 2E
	asl $0E28.w		; 0E 28 0E
	pla		; 68
	lsr $CEE0.w		; 4E E0 CE
	bvc  90.b		; 50 5A
	and $003F40.l,X		; 3F 40 3F 00
	and [$40.b],Y		; 37 40
	bmi  65.b		; 30 41
	bmi -63.b		; 30 C1
	bvs -127.b		; 70 81
	pea $6201.w		; F4 01 62
	sta $03.b		; 85 03
	tsb $B8B4.w		; 0C B4 B8
	dec A		; 3A
	sbc ($5F.b)		; F2 5F
	ldx $FE.b,Y		; B6 FE
	asl $5CD4.w		; 0E D4 5C
	bvs 120.b		; 70 78
	clv		; B8
	sec		; 38
	ora $40BFF0.l		; 0F F0 BF 40
	sbc $F900.w,X		; FD 00 F9
	brk $F2.b		; 00 F2
	ora ($AC.b,X)		; 01 AC
	ora $88.b,S		; 03 88
	ora [$C8.b]		; 07 C8
	ora [$18.b]		; 07 18
	sed		; F8
	cpx $1C.b		; E4 1C
	tsb $0C.b		; 04 0C
	asl $6E.b,X		; 16 6E
	trb $7C.b		; 14 7C
	rti		; 40

	sed		; F8
	rti		; 40

	sed		; F8
	plp		; 28
	sed		; F8
	sed		; F8
	ora [$FC.b]		; 07 FC
	cop $0C.b		; 02 0C
	sbc ($5E.b)		; F2 5E
	bra  76.b		; 80 4C
	bra 104.b		; 80 68
	brk $28.b		; 00 28
	brk $A0.b		; 00 A0
	brk $98.b		; 00 98
	bit $34.b		; 24 34
	.db $82, $DB, $81		; 82 DB 81
	pea $7DF5.w		; F4 F5 7D
	jmp ($3F21.w,X)		; 7C 21 3F
	dey		; 88
	sta $FCA3A0.l		; 8F A0 A3 FC
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $CB.b		; 00 CB
	brk $03.b		; 00 03
	bra  32.b		; 80 20
	cpy #$7088.w		; C0 88 70
	ldy #$085C.w		; A0 5C 08
	cpy $0D09.w		; CC 09 0D
	ora $0D.b		; 05 0D
	cmp $C9.b		; C5 C9
	eor $FED1.w,X		; 5D D1 FE
	sta [$84.b],Y		; 97 84
	sta [$12.b]		; 87 12
	ora $48.b,X		; 15 48
	and ($01.b,S),Y		; 33 01
	sbc ($05.b)		; F2 05
	sbc ($C5.b)		; F2 C5
	and ($DD.b)		; 32 DD
	jsl $47007F.l		; 22 7F 00 47
	sec		; 38
	ora [$E8.b],Y		; 17 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	asl $07.b		; 06 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $060E.w		; 0C 0E 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0B04.w,X		; 1D 04 0B
	asl $CA01.w		; 0E 01 CA
	inc $BE32.w,X		; FE 32 BE
	cop $BE.b		; 02 BE
	asl A		; 0A
	ldx $04.b,Y		; B6 04
	ldy $AC14.w,X		; BC 14 AC
	sty $AC.b,X		; 94 AC
	ldy #$02E0.w		; A0 E0 02
	brk $4A.b		; 00 4A
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	brk $70.b		; 00 70
	brk $74.b		; 00 74
	brk $74.b		; 00 74
	brk $A0.b		; 00 A0
	asl $0E06.w,X		; 1E 06 0E
	clc		; 18
	ora $12191C.l,X		; 1F 1C 19 12
	inc A		; 1A
	ora $1F1517.l,X		; 1F 17 15 1F
	ora $0F.b		; 05 0F
	cop $07.b		; 02 07
	asl $1F31.w		; 0E 31 1F
	jsr $001F.w		; 20 1F 00
	ora $18E0.w,X		; 1D E0 18
	rts		; 60

	clc		; 18
	jsr $1008.w		; 20 08 10
	tsb $18.b		; 04 18
	sta $85.b		; 85 85
	cmp $C4.b		; C5 C4
	adc [$F6.b],Y		; 77 F6
	and ($75.b,S),Y		; 33 75
	and $2F69.w		; 2D 69 2F
	xba		; EB
	ror A		; 6A
	plb		; AB
	lsr A		; 4A
	lda $85.b,S		; A3 85
	ply		; 7A
	cmp $3A.b		; C5 3A
	sbc [$08.b],Y		; F7 08
	inc $08.b,X		; F6 08
	inc $6C10.w		; EE 10 6C
	bpl 108.b		; 10 6C
	bpl 108.b		; 10 6C
	bpl  10.b		; 10 0A
	sei		; 78
	bvc -72.b		; 50 B8
	pld		; 2B
	sbc $44A7C0.l		; EF C0 A7 44
	lda [$4A.b]		; A7 4A
	phb		; 8B
	cmp $8F05CF.l		; CF CF 05 8F
	ora [$80.b]		; 07 80
	eor [$00.b],Y		; 57 00
	php		; 08
	bpl  96.b		; 10 60
	clc		; 18
	stz $18.b		; 64 18
	lsr A		; 4A
	bit $CF.b,X		; 34 CF
	bmi  15.b		; 30 0F
	bvs  48.b		; 70 30
	bpl -96.b		; 10 A0
	bra -96.b		; 80 A0
	bra -104.b		; 80 98
	dey		; 88
	mvn $14,$D4		; 54 D4 14
	stz $C0.b,X		; 74 C0
	cpy #$F0D0.w		; C0 D0 F0
	beq   0.b		; F0 00
	rts		; 60

	bpl  96.b		; 10 60
	bpl 120.b		; 10 78
	tsb $34.b		; 04 34
	asl A		; 0A
	trb $88.b		; 14 88
	cpy #$F03C.w		; C0 3C F0
	tsb $0C00.w		; 0C 00 0C
	tsb $0A.b		; 04 0A
	php		; 08
	stz $070A.w,X		; 9E 0A 07
	cmp $CF.b,S		; C3 CF
.ACCU 8
	sep #$E3		; E2 E3
	cmp $A3.b,S		; C3 A3
	eor $F0B9.w,Y		; 59 B9 F0
	ora $F4.b,S		; 03 F4
	ora ($09.b,X)		; 01 09
	rts		; 60

	php		; 08
	beq -58.b		; F0 C6
	bmi -29.b		; 30 E3
	trb $1CE3.w		; 1C E3 1C
	sbc $1006.w,Y		; F9 06 10
	brk $38.b		; 00 38
	brk $EE.b		; 00 EE
	bpl 108.b		; 10 6C
	ora ($29.b),Y		; 11 29
	sta ($10.b,S),Y		; 93 10
	sbc $485F30.l		; EF 30 5F 48
	ldy $EF10.w		; AC 10 EF
	sec		; 38
	cmp [$EF.b]		; C7 EF
	brk $EE.b		; 00 EE
	brk $6C.b		; 00 6C
	brk $96.b		; 00 96
	brk $B4.b		; 00 B4
	brk $68.b		; 00 68
	ora ($11.b,S),Y		; 13 11
	ora $09090C.l,X		; 1F 0C 09 09
	ora $0507.w		; 0D 07 05
	ora $07.b		; 05 07
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora $300F20.l,X		; 1F 20 0F 30
	asl $0610.w		; 0E 10 06
	clc		; 18
	asl $08.b		; 06 08
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	ora ($06.b,X)		; 01 06
	sta ($81.b,X)		; 81 81
	bne  49.b		; D0 31
	tas		; 1B
	phd		; 0B
	inx		; E8
	cpx #$F139.w		; E0 39 F1
	ora ($F3.b,S),Y		; 13 F3
	cop $E3.b		; 02 E3
	tsb $E7.b		; 04 E7
	sta ($7E.b,X)		; 81 7E
	sbc ($0E.b),Y		; F1 0E
	xce		; FB
	tsb $18.b		; 04 18
	ora [$09.b]		; 07 09
	asl $03.b		; 06 03
	tsb $1C03.w		; 0C 03 1C
	ora [$18.b]		; 07 18
	dec A		; 3A
	tsx		; BA
	tsx		; BA
	rol A		; 2A
	plb		; AB
	tyx		; BB
	sbc ($F3.b),Y		; F1 F3
	ora $E7.b		; 05 E7
	phd		; 0B
	cmp $1D58.w		; CD 58 1D
	ora $18.b		; 05 18
	dex		; CA
	ora $DA.b		; 05 DA
	ora $5B.b		; 05 5B
	tsb $13.b		; 04 13
	tsb $1807.w		; 0C 07 18
	ora $20DF30.l		; 0F 30 DF 20
	ora $F820E0.l,X		; 1F E0 20 F8
	bmi  -8.b		; 30 F8
	bvc 120.b		; 50 78
	brk $08.b		; 00 08
	ldy #$E0A0.w		; A0 A0 E0
	cpx #$8080.w		; E0 80 80
	brk $80.b		; 00 80
	bcs   0.b		; B0 00
	bcc   0.b		; 90 00
	bvc -128.b		; 50 80
	brk $F0.b		; 00 F0
	ldy #$E05C.w		; A0 5C E0
	asl $7880.w,X		; 1E 80 78
	bra  96.b		; 80 60
	pha		; 48
	inx		; E8
	cld		; D8
	sei		; 78
	bmi  88.b		; 30 58
	tsb $8D54.w		; 0C 54 8D
	sta [$A9.b],Y		; 97 A9
	ldy $ED.b		; A4 ED
	sbc ($C6.b,X)		; E1 C6
	beq -24.b		; F0 E8
	ora [$F8.b],Y		; 17 F8
	ora [$F8.b]		; 07 F8
	ora [$FC.b]		; 07 FC
	ora $7F.b,S		; 03 7F
	brk $5F.b		; 00 5F
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	php		; 08
	lsr A		; 4A
	eor ($6F.b)		; 52 6F
	adc [$74.b],Y		; 77 74
	adc [$5C.b]		; 67 5C
	adc [$8F.b]		; 67 8F
	sbc [$C0.b],Y		; F7 C0
	php		; 08
	rti		; 40

	cpy $0F.b		; C4 0F
	beq  93.b		; F0 5D
	ldy #$8078.w		; A0 78 80
	sei		; 78
	bra 120.b		; 80 78
	bra  -8.b		; 80 F8
	brk $F7.b		; 00 F7
	brk $38.b		; 00 38
	ora $20.b,S		; 03 20
	jsr $F050.w		; 20 50 F0
	brk $73.b		; 00 73
	cpy #$E7FE.w		; C0 FE E7
	sbc $09E71B.l,X		; FF 1B E7 09
	lda [$24.b],Y		; B7 24
	phd		; 0B
	jsr $7010.w		; 20 10 70
	php		; 08
	bra   8.b		; 80 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	clc		; 18
	brk $B8.b		; 00 B8
	rti		; 40

	bit $00D0.w		; 2C D0 00
	brk $40.b		; 00 40
	rti		; 40

	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	bra -96.b		; 80 A0
	rti		; 40

	rts		; 60

	bcc -16.b		; 90 F0
	tsb $00FC.w		; 0C FC 00
	rts		; 60

	rti		; 40

	ldy #$1000.w		; A0 00 10
	cpy #$4010.w		; C0 10 40
	bpl -128.b		; 10 80
	bpl  16.b		; 10 10
	php		; 08
	tsb $0703.w		; 0C 03 07
	asl $02.b		; 06 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	lda $6016CA.l		; AF CA 16 60
	brk $18.b		; 00 18
	bpl  -8.b		; 10 F8
	bvs  88.b		; 70 58
	jsr ($F880.w,X)		; FC 80 F8
	bra  -4.b		; 80 FC
	lda $20DE50.l		; AF 50 DE 20
	sed		; F8
	tsb $E8.b		; 04 E8
	tsb $88.b		; 04 88
	tsb $84.b		; 04 84
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $02.b		; 00 02
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $07.b		; 04 07
	ora [$02.b]		; 07 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $04.b,S		; 03 04
	brk $01.b		; 00 01
	asl $1F00.w,X		; 1E 00 1F
	tsb $0B.b		; 04 0B
	ora [$08.b]		; 07 08
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	asl A		; 0A
	sep #$02		; E2 02
	nop		; EA
	tsb $60.b		; 04 60
	asl $02.b		; 06 02
	bcc -112.b		; 90 90
	ldy #$C8F0.w		; A0 F0 C8
	sec		; 38
	lda #$19.b		; A9 19
	bit $2C11.w		; 2C 11 2C
	ora ($26.b),Y		; 11 26
	sta $F906.w,Y		; 99 06 F9
	bcc 111.b		; 90 6F
	beq  15.b		; F0 0F
	sed		; F8
	ora [$F9.b]		; 07 F9
	asl $B8.b		; 06 B8
	jmp ($3BD4.w,X)		; 7C D4 3B
	sty $B6.b		; 84 B6
	sta [$87.b],Y		; 97 87
	bvs -31.b		; 70 E1
	brk $E0.b		; 00 E0
	tsb $C4.b		; 04 C4
	bit $FCAC.w		; 2C AC FC
	ora $FF.b,S		; 03 FF
	brk $7E.b		; 00 7E
	ora ($7F.b,X)		; 01 7F
	brk $10.b		; 00 10
	asl $1E01.w		; 0E 01 1E
	tsb $3B.b		; 04 3B
	bit $1653.w		; 2C 53 16
	asl $3C24.w,X		; 1E 24 3C
	jsr $52E0.w		; 20 E0 52
	dex		; CA
	bcs -120.b		; B0 88
	tsb $24.b		; 04 24
	tay		; A8
	tay		; A8
	cpx #$16E0.w		; E0 E0 16
	sbc ($2C.b,X)		; E1 2C
.INDEX 16
	rep #$98		; C2 98
	asl $3A.b		; 06 3A
	tsb $78.b		; 04 78
	tsb $E4.b		; 04 E4
	clc		; 18
	tay		; A8
	bvc -32.b		; 50 E0
	brk $E4.b		; 00 E4
	jsr ($FF87.w,X)		; FC 87 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	sta ($FD.b,X)		; 81 FD
	adc ($19.b,X)		; 61 19
	cop $0B.b		; 02 0B
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	adc ($86.b,X)		; 61 86
	ora $F4.b,S		; 03 F4
	rol $E6.b		; 26 E6
	jmp $1CCF.w		; 4C CF 1C
	ora ($D5.b),Y		; 11 D5
	cpx $EE.b		; E4 EE
	stx $5F61.w		; 8E 61 5F
	bmi  59.b		; 30 3B
	cpx #$06E1.w		; E0 E1 06
	ora $300F.w,Y		; 19 0F 30
	ora $00FBE0.l,X		; 1F E0 FB 00
	sbc ($00.b),Y		; F1 00
	rts		; 60

	bra  48.b		; 80 30
	cpy $E0.b		; C4 E0
	asl $6051.w,X		; 1E 51 60
	tay		; A8
	cmp #$D9.b		; C9 D9
	sta $B92B.w,Y		; 99 2B B9
	wai		; CB
	adc $7246.w,Y		; 79 46 72
	stx $04F6.w		; 8E F6 04
	jsr ($807F.w,X)		; FC 7F 80
	sbc [$00.b],Y		; F7 00
	sbc [$00.b]		; E7 00
	cmp [$00.b]		; C7 00
	sta [$00.b]		; 87 00
	stx $0E01.w		; 8E 01 0E
	ora ($0C.b,X)		; 01 0C
	ora $40.b,S		; 03 40
	cpy #$E0E0.w		; C0 E0 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E030.w		; C0 30 E0
	clc		; 18
	bra  96.b		; 80 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$E000.w		; A0 00 E0
	jsr $60F0.w		; 20 F0 60
	jmp.w [$7E00]		; DC 00 7E
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	brk $22.b		; 00 22
	eor $3D02.w,X		; 5D 02 3D
	bpl  46.b		; 10 2E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	tsb $0416.w		; 0C 16 04
	asl $0400.w		; 0E 00 04
	dec A		; 3A
	brk $1A.b		; 00 1A
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b		; 05 01
	asl $03.b		; 06 03
	tsb $00.b		; 04 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $20.b		; 02 20
	rol $7B50.w		; 2E 50 7B
	ldy $DF.b		; A4 DF
	adc ($9C.b,X)		; 61 9C
	.db $82, $11, $00		; 82 11 00
	tsb $00.b		; 04 00
	tsb $01.b		; 04 01
	stz $21.b		; 64 21
	bvc 116.b		; 50 74
	bra -16.b		; 80 F0
	brk $F3.b		; 00 F3
	brk $EF.b		; 00 EF
	brk $04.b		; 00 04
	tas		; 1B
	tsb $1B.b		; 04 1B
	php		; 08
	asl $10.b,X		; 16 10
	rol $3E18.w,X		; 3E 18 3E
	bpl  62.b		; 10 3E
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	tsb $0C00.w		; 0C 00 0C
	brk $08.b		; 00 08
	brk $14.b		; 00 14
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($10.b,X)		; 01 10
	ora ($19.b),Y		; 11 19
	ora $1F19.w,Y		; 19 19 1F
	asl A		; 0A
	ora $2C33.w,X		; 1D 33 2C
	ora ($40.b,X)		; 01 40
	ora ($60.b,X)		; 01 60
	ora ($7A.b,X)		; 01 7A
	ora ($2E.b),Y		; 11 2E
	ora $1F26.w,Y		; 19 26 1F
	jsr $601F.w		; 20 1F 60
	and $1B1740.l,X		; 3F 40 17 1B
	ora ($1B.b,S),Y		; 13 1B
	ora ($1B.b)		; 12 1B
	ora #$09.b		; 09 09
	ora $06040D.l		; 0F 0D 04 06
	ora [$06.b]		; 07 06
	ora $03.b,S		; 03 03
	trb $1C00.w		; 1C 00 1C
	jsr $201C.w		; 20 1C 20
	asl $0E70.w		; 0E 70 0E
	beq   7.b		; F0 07
	cli		; 58
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	tax		; AA
	rtl		; 6B

	stx $6DF7.w		; 8E F7 6D
	sta $7F.b		; 85 7F
	cmp [$1E.b],Y		; D7 1E
	sbc ($8D.b)		; F2 8D
	sbc $C1FD87.l,X		; FF 87 FD C1
	sbc $7810EC.l,X		; FF EC 10 78
	brk $7C.b		; 00 7C
	cop $2F.b		; 02 2F
	brk $0E.b		; 00 0E
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	pea $F60A.w		; F4 0A F6
	tsb $FA.b		; 04 FA
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	lda ($DE.b,X)		; A1 DE
	php		; 08
	and [$04.b],Y		; 37 04
	phd		; 0B
	ora ($07.b,X)		; 01 07
	php		; 08
	brk $1A.b		; 00 1A
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $BF.b		; 00 BF
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora [$07.b]		; 07 07
	clc		; 18
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	bit $342E.w		; 2C 2E 34
	dec A		; 3A
	inc $8CF0.w		; EE F0 8C
	sbc $C0.b		; E5 C0
	sta $D8.b		; 85 D8
	trb $9E12.w		; 1C 12 9E
	ldy $BE.b		; A4 BE
	rol $3ED1.w		; 2E D1 3E
	cmp ($FE.b,X)		; C1 FE
	ora ($FB.b,X)		; 01 FB
	brk $FB.b		; 00 FB
	brk $E3.b		; 00 E3
	brk $E1.b		; 00 E1
	brk $41.b		; 00 41
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	bra  64.b		; 80 40
	cop $E5.b		; 02 E5
	php		; 08
	cmp $1815.w		; CD 15 18
	adc #$6C70.w		; 69 70 6C
	bcc -69.b		; 90 BB
	cmp ($F1.b,X)		; C1 F1
	cmp ($5D.b,X)		; C1 5D
	adc ($07.b,X)		; 61 07
	clc		; 18
	ora $E01F30.l		; 0F 30 1F E0
	adc $00FF80.l,X		; 7F 80 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $7E.b		; 00 7E
	bra  87.b		; 80 57
	adc ($61.b,X)		; 61 61
	adc ($2B.b),Y		; 71 2B
	and ($10.b,S),Y		; 33 10
	and $1B.b,S		; 23 1B
	and $35.b,S		; 23 35
	and $0002.w,Y		; 39 02 00
	trb $14.b		; 14 14
	ror $7E80.w,X		; 7E 80 7E
	bra  60.b		; 80 3C
	cpy #$403C.w		; C0 3C 40
	bit $3E40.w,X		; 3C 40 3E
	rti		; 40

	cop $3D.b		; 02 3D
	trb $2B.b		; 14 2B
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($26.b,X)		; 01 26
	brk $3F.b		; 00 3F
	ldy #$4ED2.w		; A0 D2 4E
	lda ($14.b,X)		; A1 14
	cmp ($2D.b,X)		; C1 2D
	cmp ($89.b)		; D2 89
	stz $8A.b		; 64 8A
	bit $C8.b		; 24 C8
	sty $C0.b,X		; 94 C0
	stz $01EE.w		; 9C EE 01
	dec $BE00.w,X		; DE 00 BE
	brk $AD.b		; 00 AD
	brk $9B.b		; 00 9B
	brk $DA.b		; 00 DA
	ora ($E8.b,X)		; 01 E8
	ora $E0.b,S		; 03 E0
	ora $29.b,S		; 03 29
	.db $42, $C7		; 42 C7
	sec		; 38
	pld		; 2B
	pei ($28.b)		; D4 28
	eor [$92.b],Y		; 57 92
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	.db $82, $7B, $84		; 82 7B 84
	cmp [$00.b]		; C7 00
	pld		; 2B
	brk $B8.b		; 00 B8
	brk $D7.b		; 00 D7
	brk $28.b		; 00 28
	cmp [$10.b]		; C7 10
	sbc $246D10.l		; EF 10 6D 24
	sbc $A37BB4.l		; EF B4 7B A3
	adc $34C4.w,Y		; 79 C4 34
	cli		; 58
	clv		; B8
	bit #$0479.w		; 89 79 04
	adc $177827.l,X		; 7F 27 78 17
	brk $87.b		; 00 87
	brk $87.b		; 00 87
	brk $C8.b		; 00 C8
	ora $44.b,S		; 03 44
	ora $81.b,S		; 03 81
	asl $07.b		; 06 07
	bra   7.b		; 80 07
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora [$01.b]		; 07 01
	asl $03.b		; 06 03
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $49.b		; 00 49
	mvp $60,$60		; 44 60 60
	lsr $027E.w		; 4E 7E 02
	inc $FE00.w,X		; FE 00 FE
	sbc ($FD.b,X)		; E1 FD
	cop $0B.b		; 02 0B
	asl A		; 0A
	php		; 08
	adc $807F00.l,X		; 7F 00 7F 80
	adc ($80.b,X)		; 61 80
	cpy #$F001.w		; C0 01 F0
	ora ($FD.b,X)		; 01 FD
	cop $0B.b		; 02 0B
	bit $0B.b,X		; 34 0B
	trb $D6.b		; 14 D6
	cpx $E448.w		; EC 48 E4
	lda $51.b,X		; B5 51
	tda		; 7B
	tas		; 1B
	tya		; 98
	stz $F8E0.w,X		; 9E E0 F8
	ora [$C7.b]		; 07 C7
	asl $1F.b,X		; 16 1F
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $E400.w		; EE 00 E4
	brk $60.b		; 00 60
	ora ($00.b,X)		; 01 00
	ora [$07.b]		; 07 07
	sec		; 38
	ora $4EC0E0.l,X		; 1F E0 C0 4E
	pea $ECCC.w		; F4 CC EC
	jmp.w [$4868]		; DC 68 48
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	inc $7C01.w,X		; FE 01 7C
	cop $7C.b		; 02 7C
	brk $68.b		; 00 68
	stx $08.b,Y		; 96 08
	pea $6C80.w		; F4 80 6C
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	ora $021F.w,X		; 1D 1F 02
	ora $246F60.l		; 0F 60 6F 24
	adc $D0.b		; 65 D0
	lda ($30.b,S),Y		; B3 30
	sta [$C0.b],Y		; 97 C0
	eor [$F8.b],Y		; 57 F8
	xba		; EB
	ldy #$8040.w		; A0 40 80
	bvs  96.b		; 70 60
	bcc  96.b		; 90 60
	txs		; 9A
	beq  12.b		; F0 0C
	beq   8.b		; F0 08
	bcs   8.b		; B0 08
	clc		; 18
	tsb $AA.b		; 04 AA
	iny		; C8
	mvp $53,$C4		; 44 C4 53
	sbc ($4C.b,S),Y		; F3 4C
	sbc $0ACE11.l,X		; FF 11 CE 0A
	cpy $25.b		; C4 25
	lda ($04.b,X)		; A1 04
	ldy $26.b		; A4 26
	ora ($20.b),Y		; 11 20
	tas		; 1B
	ora ($0C.b,S),Y		; 13 0C
	ora $201F00.l,X		; 1F 00 1F 20
	ora $403E20.l,X		; 1F 20 3E 40
	sec		; 38
	eor $02.b,S		; 43 02
	ora $08.b,S		; 03 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	tsb $07.b		; 04 07
	asl $07.b		; 06 07
	cop $03.b		; 02 03
	brk $0C.b		; 00 0C
	ora #$0406.w		; 09 06 04
	ora $02.b,S		; 03 02
	ora $03.b		; 05 03
	tsb $3807.w		; 0C 07 38
	ora [$38.b]		; 07 38
	ora $2C.b,S		; 03 2C
	stx $FE.b		; 86 FE
	dey		; 88
	sed		; F8
	.db $82, $F2, $16		; 82 F2 16
	ror $94.b,X		; 76 94
	ldx $84.b,Y		; B6 84
	stx $5A.b		; 86 5A
	jmp.w [$7CB2]		; DC B2 7C
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $0D.b		; 02 0D
	asl $89.b		; 06 89
	stx $49.b		; 86 49
	stx $79.b		; 86 79
	dec $FE21.w,X		; DE 21 FE
	ora ($3E.b,X)		; 01 3E
	eor $601E69.l,X		; 5F 69 1E 60
	ldx $3921.w,Y		; BE 21 39
	cop $73.b		; 02 73
	asl $64.b		; 06 64
	phd		; 0B
	adc $5B6C.w,X		; 7D 6C 5B
	rts		; 60

	bra  97.b		; 80 61
	bra -64.b		; 80 C0
	ora ($C1.b,X)		; 01 C1
	asl $83.b		; 06 83
	tsb $0897.w		; 0C 97 08
	stz $BC00.w,X		; 9E 00 BC
	brk $90.b		; 00 90
	clc		; 18
	jsr $1038.w		; 20 38 10
	pla		; 68
	bmi -48.b		; 30 D0
	bra  32.b		; 80 20
	ldy #$40A0.w		; A0 A0 40
	cpy #$E2E2.w		; C0 E2 E2
	tya		; 98
	adc [$38.b]		; 67 38
	cmp [$78.b]		; C7 78
	stx $F0.b		; 86 F0
	asl $18E0.w		; 0E E0 18
	rts		; 60

	bpl  64.b		; 10 40
	jsl $011C62.l		; 22 62 1C 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora [$1D.b]		; 07 1D
	asl $1E19.w,X		; 1E 19 1E
	ora $0C.b,S		; 03 0C
	rol $20.b		; 26 20
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora $04.b,S		; 03 04
	ora [$48.b]		; 07 48
	ora $601F60.l,X		; 1F 60 1F 60
	ora $182730.l		; 0F 30 27 18
	tyx		; BB
	jmp.w [$C82D]		; DC 2D C8
	pld		; 2B
	wai		; CB
	ldx $AC4F.w		; AE 4F AC
	jmp $0E6E.w		; 4C 6E 0E
	and $990D.w		; 2D 0D 99
	sta $00E7.w,Y		; 99 E7 00
	sbc [$00.b],Y		; F7 00
	pea $F000.w		; F4 00 F0
	brk $F0.b		; 00 F0
	ora $F0.b,S		; 03 F0
	ora ($F1.b,X)		; 01 F1
	cop $61.b		; 02 61
	asl $01.b		; 06 01
	ora ($19.b,X)		; 01 19
	ora $021D13.l,X		; 1F 13 1D 02
	ora $0904.w		; 0D 04 09
	ora $08.b		; 05 08
	asl $161A.w,X		; 1E 1A 16
	inc A		; 1A
	ora ($3E.b,X)		; 01 3E
	ora $001F20.l,X		; 1F 20 1F 00
	ora $100F10.l		; 0F 10 0F 10
	ora $E01D30.l		; 0F 30 1D E0
	ora $20E0.w,X		; 1D E0 20
	tsb $2A34.w		; 0C 34 2A
	plp		; 28
	rol $1F1A.w,X		; 3E 1A 1F
	and ($3F.b,S),Y		; 33 3F
	adc $7F.b,S		; 63 7F
	cpy #$98F6.w		; C0 F6 98
	inx		; E8
	bmi -61.b		; 30 C3
	bit $C1.b,X		; 34 C1
	and #$18C0.w		; 29 C0 18
	cpx #$C036.w		; E0 36 C0
	adc [$80.b],Y		; 77 80
	sbc ($09.b)		; F2 09
	sed		; F8
	ora [$10.b]		; 07 10
	brk $38.b		; 00 38
	brk $EE.b		; 00 EE
	bpl 108.b		; 10 6C
	ora ($29.b),Y		; 11 29
	sta ($D4.b,S),Y		; 93 D4
	sta $9B471A.l,X		; 9F 1A 47 9B
	sta $38EF10.l		; 8F 10 EF 38
	cmp [$EF.b]		; C7 EF
	brk $EE.b		; 00 EE
	brk $6C.b		; 00 6C
	brk $D8.b		; 00 D8
	jsr $A018.w		; 20 18 A0
	bcc  96.b		; 90 60
	php		; 08
	bvs  70.b		; 70 46
	ldx $FF21.w,Y		; BE 21 FF
	sta ($8F.b,X)		; 81 8F
	bne -57.b		; D0 C7
	jsr $14E7.w		; 20 E7 14
	sbc ($85.b),Y		; F1 85
	sbc ($0F.b),Y		; F1 0F
	bra  81.b		; 80 51
	brk $18.b		; 00 18
	brk $68.b		; 00 68
	bpl  52.b		; 10 34
	php		; 08
	trb $08.b		; 14 08
	tsb $0D02.w		; 0C 02 0D
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
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $0C04.w		; 0C 04 0C
	tas		; 1B
	ora [$24.b],Y		; 17 24
	and ($51.b,S),Y		; 33 51
	rts		; 60

	and $25.b		; 25 25
	asl $07.b		; 06 07
	ora $03.b,S		; 03 03
	tsb $0C13.w		; 0C 13 0C
	ora ($1F.b,S),Y		; 13 1F
	jsr $403F.w		; 20 3F 40
	adc $C03A80.l,X		; 7F 80 3A C0
	php		; 08
	beq  12.b		; F0 0C
	bmi -67.b		; 30 BD
	lda [$65.b],Y		; B7 65
	sbc ($93.b,S),Y		; F3 93
	adc [$6A.b]		; 67 6A
	asl $8CAC.w		; 0E AC 8C
	cli		; 58
	bne  96.b		; D0 60
	beq   8.b		; F0 08
	dey		; 88
	lda $00FF40.l,X		; BF 40 FF 00
	sbc $01F600.l,X		; FF 00 F6 01
	stz $00.b,X		; 74 00
	plp		; 28
	tsb $00.b		; 04 00
	php		; 08
	php		; 08
	stz $80.b,X		; 74 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $9A28.w		; 20 28 9A
	sta ($08.b)		; 92 08
	sta $81.b,S		; 83 81
	.db $42, $73		; 42 73
	bmi -94.b		; 30 A2
	stz $9BB9.w		; 9C B9 9B
	tsb $FE.b		; 04 FE
	clc		; 18
	cmp [$8A.b]		; C7 8A
	adc $8B.b		; 65 8B
	stz $C3.b,X		; 74 C3
	bit $0CF3.w,X		; 3C F3 0C
	adc $006400.l,X		; 7F 00 64 00
	ora ($00.b,X)		; 01 00
	sei		; 78
	jmp ($1111.w,X)		; 7C 11 11
	ora ($01.b,X)		; 01 01
	ora ($91.b),Y		; 11 91
	dey		; 88
	ora $2EB6.w,Y		; 19 B6 2E
	and $5627.w,Y		; 39 27 56
	adc [$40.b],Y		; 77 40
	sta $01.b,S		; 83 01
	inc $FE01.w		; EE 01 FE
	sta ($6E.b),Y		; 91 6E
	sta $BF66.w,Y		; 99 66 BF
	rti		; 40

	ldx $6840.w,Y		; BE 40 68
	bra   3.b		; 80 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $01.b		; 04 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($C4.b,X)		; 01 C4
	sec		; 38
	tyx		; BB
	ora $B3.b,S		; 03 B3
	and ($CC.b,S),Y		; 33 CC
	adc $A07E85.l,X		; 7F 85 7E A0
	inc $FEE2.w,X		; FE E2 FE
	jsl $01FE7E.l		; 22 7E FE 01
	sbc $CD00.w,X		; FD 00 CD
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	adc $017D02.l,X		; 7F 02 7D 01
	asl $DF50.w,X		; 1E 50 DF
	php		; 08
	sta [$82.b],Y		; 97 82
	sta $8281.w		; 8D 81 82
	bra -127.b		; 80 81
	bit $2680.w,X		; 3C 80 26
	bra  15.b		; 80 0F
	cpx #$20CF.w		; E0 CF 20
	sta $408360.l		; 8F 60 83 40
	sta ($60.b,X)		; 81 60
	bra  64.b		; 80 40
	cpy $BC.b		; C4 BC
	tsb $189C.w		; 0C 9C 18
	dey		; 88
	ldy #$4058.w		; A0 58 40
	bcs   0.b		; B0 00
	cpx #$F020.w		; E0 20 F0
	rts		; 60

	jmp.w [$007C]		; DC 7C 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $B8.b		; 00 B8
	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	brk $01.b		; 00 01
	ora ($10.b,X)		; 01 10
	bpl  12.b		; 10 0C
	tsb $0C04.w		; 0C 04 0C
	cop $0E.b		; 02 0E
	ora $03.b		; 05 03
	asl $0709.w		; 0E 09 07
	tsb $02.b		; 04 02
	trb $0F10.w		; 1C 10 0F
	tsb $0C03.w		; 0C 03 0C
	ora $0E.b,S		; 03 0E
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $F0.b		; 00 F0
	sbc ($02.b),Y		; F1 02
	ora $83.b,S		; 03 83
	.db $82, $C5, $C6		; 82 C5 C6
	stz $F6.b,X		; 74 F6
	ror A		; 6A
	jsr ($6CB2.w,X)		; FC B2 6C
	trb $68.b		; 14 68
	ora ($0E.b,X)		; 01 0E
	ora $FC.b,S		; 03 FC
	sta $7C.b,S		; 83 7C
	cmp [$38.b]		; C7 38
	sbc [$08.b],Y		; F7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7C3800.l,X		; FF 00 38 7C
	dec $B3B6.w		; CE B6 B3
	sta [$F5.b]		; 87 F5
	sbc ($76.b,S),Y		; F3 76
	sbc ($2B.b),Y		; F1 2B
	sei		; 78
	php		; 08
	sec		; 38
	sta [$9F.b]		; 87 9F
	jsr ($7E03.w,X)		; FC 03 7E
	ora ($7F.b,X)		; 01 7F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	bra   7.b		; 80 07
	cpy #$6080.w		; C0 80 60
	asl $0607.w		; 0E 07 06
	ora $46272C.l		; 0F 2C 27 46
	adc [$AC.b]		; 67 AC
	cmp $50DF18.l		; CF 18 DF 50
	sta [$20.b],Y		; 97 20
	and [$F8.b]		; 27 F8
	brk $58.b		; 00 58
	ldy #$D028.w		; A0 28 D0
	rts		; 60

	tya		; 98
	cpx #$F010.w		; E0 10 F0
	brk $E0.b		; 00 E0
	php		; 08
	cpy #$6218.w		; C0 18 62
	inc $C725.w		; EE 25 C7
	and ($F7.b,X)		; 21 F7
	jsr $60F3.w		; 20 F3 60
	sbc ($62.b,S),Y		; F3 62
	cmp [$72.b]		; C7 72
	cmp [$C1.b]		; C7 C1
	cmp [$0A.b]		; C7 0A
	ora ($25.b),Y		; 11 25
	clc		; 18
	trb $08.b		; 14 08
	ora ($0C.b)		; 12 0C
	ora ($0C.b)		; 12 0C
	and ($08.b,S),Y		; 33 08
	and ($08.b),Y		; 31 08
	and $18.b		; 25 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $24.b		; 00 24
	brk $1F.b		; 00 1F
	ora $1F.b,S		; 03 1F
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	ora ($12.b)		; 12 12
	phd		; 0B
	asl $283E.w,X		; 1E 3E 28
	xba		; EB
	sbc ($00.b,X)		; E1 00
	jsr $2000.w		; 20 00 20
	ora ($62.b,X)		; 01 62
	brk $7B.b		; 00 7B
	ora ($2D.b)		; 12 2D
	ora $C03F20.l,X		; 1F 20 3F C0
	inc $8000.w,X		; FE 00 80
	bra   0.b		; 80 00
	bra  16.b		; 80 10
	bpl  48.b		; 10 30
	bmi  80.b		; 30 50
	bvs -16.b		; 70 F0
	bne -88.b		; D0 A8
	cli		; 58
	jmp $30400C.l		; 5C 0C 40 30
	bra 112.b		; 80 70
	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	bvs -120.b		; 70 88
	beq   8.b		; F0 08
	sed		; F8
	tsb $FC.b		; 04 FC
	cop $88.b		; 02 88
	sei		; 78
	sed		; F8
	clc		; 18
	bvc  48.b		; 50 30
	beq -80.b		; F0 B0
	rts		; 60

	ldy #$4080.w		; A0 80 40
	cpy #$40C0.w		; C0 C0 40
	cpy #$06F8.w		; C0 F8 06
	sed		; F8
	tsb $F0.b		; 04 F0
	tsb $0870.w		; 0C 70 08
	rts		; 60

	clc		; 18
	cpy #$C030.w		; C0 30 C0
	bmi  64.b		; 30 40
	bmi 100.b		; 30 64
	tda		; 7B
	bit $3B.b		; 24 3B
	plp		; 28
	rol $10.b,X		; 36 10
	rol $3E18.w,X		; 3E 18 3E
	bpl  62.b		; 10 3E
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	stz $80.b		; 64 80
	bit $2800.w		; 2C 00 28
	brk $14.b		; 00 14
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $5D22.w,X		; 7E 22 5D
	cop $3D.b		; 02 3D
	bpl  46.b		; 10 2E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	tsb $0416.w		; 0C 16 04
	asl $0018.w		; 0E 18 00
	dec A		; 3A
	brk $1A.b		; 00 1A
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $03.b,S		; 03 03
	cop $04.b		; 02 04
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	cop $03.b		; 02 03
	tsb $03.b		; 04 03
	cpx $7807.w		; EC 07 78
	brk $18.b		; 00 18
	php		; 08
	trb $1300.w		; 1C 00 13
	asl $77.b		; 06 77
	ora [$5F.b]		; 07 5F
	ldy #$08FF.w		; A0 FF 08
	sbc $11.b		; E5 11
	dey		; 88
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	tsb $0800.w		; 0C 00 08
	brk $20.b		; 00 20
	bra -128.b		; 80 80
	brk $9D.b		; 00 9D
	cop $79.b		; 02 79
	asl $00.b		; 06 00
	brk $20.b		; 00 20
	jsr $FF40.w		; 20 40 FF
	brk $F1.b		; 00 F1
	bit $DAFD.w,X		; 3C FD DA
	tsa		; 3B
	jmp $20BF.w		; 4C BF 20
	eor $203000.l,X		; 5F 00 30 20
	jmp $0E0060.l		; 5C 60 00 0E
	brk $02.b		; 00 02
	brk $C4.b		; 00 C4
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 124.b		; 80 7C
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E7.b		; 00 E7
	bra 126.b		; 80 7E
	jmp ($0002.w,X)		; 7C 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($8E.b,X)		; 01 8E
	sta $408180.l		; 8F 80 81 40
	cpy #$E666.w		; C0 66 E6
	jsr ($AB7E.w,X)		; FC 7E AB
	adc $29D5.w,X		; 7D D5 29
	adc $00.b		; 65 00
	dey		; 88
	bvs -128.b		; 70 80
	ror $3FC0.w,X		; 7E C0 3F
	inc $19.b		; E6 19
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $10.b		; 00 10
	cmp [$10.b],Y		; D7 10
	ora [$20.b],Y		; 17 20
	and ($68.b,S),Y		; 33 68
	adc $F8C8.w,Y		; 79 C8 F8
	asl $FE.b		; 06 FE
	cpy #$DBBC.w		; C0 BC DB
	cmp $10.b,S		; C3 10
	plp		; 28
	bpl -24.b		; 10 E8
	bmi -52.b		; 30 CC
	sei		; 78
	stx $F8.b		; 86 F8
	ora [$FE.b]		; 07 FE
	ora ($7C.b,X)		; 01 7C
	ora $3B.b,S		; 03 3B
	tsb $C1.b		; 04 C1
	cmp $C9.b,S		; C3 C9
	wai		; CB
	dex		; CA
	wai		; CB
	lsr $CF.b		; 46 CF
	asl $1F.b,X		; 16 1F
	rol $EA36.w,X		; 3E 36 EA
	inc $72.b,X		; F6 72
	inc $21.b		; E6 21
	trb $1428.w		; 1C 28 14
	asl A		; 0A
	bit $0E.b,X		; 34 0E
	bmi  30.b		; 30 1E
	cpx #$C03F.w		; E0 3F C0
	sbc $00FF00.l,X		; FF 00 FF 00
	php		; 08
	iny		; C8
	clv		; B8
	sed		; F8
	bra -16.b		; 80 F0
	bcc -16.b		; 90 F0
	bra -32.b		; 80 E0
	ldy #$60E0.w		; A0 E0 60
	ldy #$30D0.w		; A0 D0 30
	dey		; 88
	bit $B8.b		; 24 B8
	tsb $B0.b		; 04 B0
	tsb $08B0.w		; 0C B0 08
	ldy #$A010.w		; A0 10 A0
	brk $60.b		; 00 60
	bpl -16.b		; 10 F0
	php		; 08
	eor $63.b,S		; 43 63
	ror $364F.w,X		; 7E 4F 36
	and [$04.b]		; 27 04
	ora [$14.b],Y		; 17 14
	ora [$2A.b],Y		; 17 2A
	and ($76.b,S),Y		; 33 76
	tda		; 7B
	php		; 08
	ora $807C.w		; 0D 7C 80
	bvs -128.b		; 70 80
	sec		; 38
	rti		; 40

	clc		; 18
	jsr $6018.w		; 20 18 60
	bit $7C40.w,X		; 3C 40 7C
	bra  14.b		; 80 0E
	bvs 116.b		; 70 74
	bit $A4B8.w		; 2C B8 A4
	ldy $24F4.w,X		; BC F4 24
	cpx $3C.b		; E4 3C
	pea $8808.w		; F4 08 88
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jmp.w [$5C02]		; DC 02 5C
	cop $0C.b		; 02 0C
	ora $1C.b,S		; 03 1C
	cop $0C.b		; 02 0C
	cop $78.b		; 02 78
	tsb $F0.b		; 04 F0
	php		; 08
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bne -16.b		; D0 F0
	bcs 112.b		; B0 70
	ldy $807C.w,X		; BC 7C 80
	rti		; 40

	bra   0.b		; 80 00
	brk $CF.b		; 00 CF
	brk $FE.b		; 00 FE
	clc		; 18
	cpx $F0.b		; E4 F0
	tsb $08F0.w		; 0C F0 08
	jsr ($0002.w,X)		; FC 02 00
	and $000F00.l		; 2F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $0C.b,S		; 03 0C
	php		; 08
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora $E00FF0.l		; 0F F0 0F E0
	ora $E00FE0.l		; 0F E0 0F E0
	phd		; 0B
	beq  27.b		; F0 1B
	beq  26.b		; F0 1A
	beq  26.b		; F0 1A
	sbc ($01.b),Y		; F1 01
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	sta [$F0.b]		; 87 F0
	sta [$F0.b]		; 87 F0
	sta [$7C.b]		; 87 7C
	stx $7C.b		; 86 7C
	stx $7C.b		; 86 7C
	stx $3C.b		; 86 3C
	stx $7C.b		; 86 7C
	dec $7D.b		; C6 7D
	ora $7C.b		; 05 7C
	tsb $7C.b		; 04 7C
	tsb $F8.b		; 04 F8
	bra  -8.b		; 80 F8
	bra 120.b		; 80 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	pea $6000.w		; F4 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $08.b		; 00 08
	brk $11.b		; 00 11
	brk $09.b		; 00 09
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	asl $060E.w		; 0E 0E 06
	asl $00.b		; 06 00
	brk $13.b		; 00 13
	adc $287F24.l,X		; 7F 24 7F 28
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $34DC37.l,X		; FF 37 DC 34
	bne  23.b		; D0 17
	beq -65.b		; F0 BF
	bra -73.b		; 80 B7
	bra 108.b		; 80 6C
	brk $69.b		; 00 69
	brk $40.b		; 00 40
	brk $64.b		; 00 64
	eor $EF.b		; 45 EF
	cpy #$C0CF.w		; C0 CF C0
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	cop $04.b		; 02 04
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $03.b		; 02 03
	dec $DCDD.w,X		; DE DD DC
	cmp $DBFC.w,X		; DD FC DB
	cld		; D8
	xce		; FB
	clv		; B8
	lda [$B0.b],Y		; B7 B0
	sbc [$60.b],Y		; F7 60
	adc [$E0.b],Y		; 77 E0
	sbc $D83EDC.l,X		; FF DC 3E D8
	rol $3CD9.w,X		; 3E D9 3C
	cmp ($3C.b),Y		; D1 3C
	sta $78.b,X		; 95 78
	sta $78.b		; 85 78
	jsr $6CF8.w		; 20 F8 6C
	pea $DB24.w		; F4 24 DB
	mvp $44,$BB		; 44 BB 44
	tyx		; BB
	mvp $84,$BB		; 44 BB 84
	tda		; 7B
	sty $7B.b		; 84 7B
	tsb $FB.b		; 04 FB
	tsb $FB.b		; 04 FB
	sbc $DD24.w		; ED 24 DD
	mvp $44,$DD		; 44 DD 44
	cmp $BD44.w,X		; DD 44 BD
	sty $BD.b		; 84 BD
	sty $BD.b		; 84 BD
	tsb $0C.b		; 04 0C
	tsb $8B.b		; 04 8B
	adc ($49.b,S),Y		; 73 49
	lda [$43.b],Y		; B7 43
	lda $BD41.w,X		; BD 41 BD
	eor ($BD.b,X)		; 41 BD
	eor $BF.b,S		; 43 BF
	eor [$BF.b]		; 47 BF
	ora $F7.b,S		; 03 F7
	lda $D98F.w,Y		; B9 8F D9
	phk		; 4B
	cmp $D943.w,Y		; D9 43 D9
	eor $D9.b,S		; 43 D9
	eor $D1.b,S		; 43 D1
	eor $C3.b,S		; 43 C3
	eor [$03.b]		; 47 03
	ora $000200.l		; 0F 00 02 00
	ora [$00.b]		; 07 00
	ora [$02.b]		; 07 02
	ora $02.b		; 05 02
	ora $040B06.l		; 0F 06 0B 04
	ora $021F05.l		; 0F 05 1F 02
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	brk $06.b		; 00 06
	asl $07.b		; 06 07
	ora ($07.b,X)		; 01 07
	ora $0D.b		; 05 0D
	ora #$000C.w		; 09 0C 00
	sbc ($80.b,S),Y		; F3 80
	eor $814E01.l,X		; 5F 01 4E 81
	tyx		; BB
	bra -93.b		; 80 A3
	ora ($8F.b,X)		; 01 8F
	ora $9F.b,S		; 03 9F
	ora $801F8F.l		; 0F 8F 1F 80
	ldy $BC01.w,X		; BC 01 BC
	sta ($B8.b,X)		; 81 B8
	brk $44.b		; 00 44
	bra  93.b		; 80 5D
	cmp ($33.b,X)		; C1 33
	cmp $2F.b,S		; C3 2F
	cmp [$3F.b]		; C7 3F
	stz $F402.w,X		; 9E 02 F4
	ora ($E7.b,X)		; 01 E7
	ora $B8.b,S		; 03 B8
	tsb $89.b		; 04 89
	tsb $E1.b		; 04 E1
	sty $F3.b		; 84 F3
	inc $E0.b		; E6 E0
	inc $02.b,X		; F6 02
	tda		; 7B
	ora ($7B.b,X)		; 01 7B
	brk $38.b		; 00 38
	ora [$44.b]		; 07 44
	ora [$74.b]		; 07 74
	ora $98.b,S		; 03 98
	sta ($E8.b,X)		; 81 E8
	cmp ($F8.b,X)		; C1 F8
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	bcs -128.b		; B0 80
	beq -96.b		; F0 A0
	bne   0.b		; D0 00
	sei		; 78
	rti		; 40

	sei		; 78
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	rti		; 40

	brk $E0.b		; 00 E0
	cpx #$0020.w		; E0 20 00
	jsr $D020.w		; 20 20 D0
	bvc -112.b		; 50 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc ($00.b)		; F2 00
	sta $0F8F03.l		; 8F 03 8F 0F
	sta $000000.l,X		; 9F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($70.b,X)		; 01 70
	bvs 119.b		; 70 77
	bvs 111.b		; 70 6F
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	bra  -3.b		; 80 FD
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$FD00.w		; C0 00 FD
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $E0.b		; 00 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	bmi -16.b		; 30 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $463C.w		; 20 3C 46
	clc		; 18
	.db $42, $3A		; 42 3A
	adc $1A.b,S		; 63 1A
	and $1C.b,S		; 23 1C
	and ($0D.b,X)		; 21 0D
	and ($1E.b,X)		; 21 1E
	bpl  14.b		; 10 0E
	bpl 120.b		; 10 78
	rti		; 40

	rol $1C02.w,X		; 3E 02 1C
	brk $3C.b		; 00 3C
	jsr $011F.w		; 20 1F 01
	asl $0F00.w,X		; 1E 00 0F
	brk $1F.b		; 00 1F
	bpl   0.b		; 10 00
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
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	asl $0801.w		; 0E 01 08
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora $FC07F9.l		; 0F F9 07 FC
	cop $F6.b		; 02 F6
	brk $F1.b		; 00 F1
	brk $F1.b		; 00 F1
	asl A		; 0A
	sbc ($84.b),Y		; F1 84
	tda		; 7B
	tsb $3B.b		; 04 3B
	inc $60.b		; E6 60
	xba		; EB
	plp		; 28
	cmp $2E1C.w,X		; DD 1C 2E
	asl $EE.b		; 06 EE
	brk $FF.b		; 00 FF
	sta ($75.b),Y		; 91 75
	rti		; 40

	and $E0.b,X		; 35 E0
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -17.b		; F0 EF
	sbc #$7867.w		; E9 67 78
	asl $98.b		; 06 98
	rol $D9.b		; 26 D9
	rol $49.b		; 26 49
	ldx $09.b,Y		; B6 09
	inc $01.b,X		; F6 01
	ror $F5ED.w,X		; 7E ED F5
	jmp ($1DFC.w)		; 6C FC 1D
	jsr ($DC9D.w,X)		; FC 9D DC
	cmp $DDDC.w,X		; DD DC DD
	cpy $4859.w		; CC 59 48
	ora $0010.w,Y		; 19 10 00
	sbc $EB1E10.l,X		; FF 10 1E EB
	asl $0EEB.w		; 0E EB 0E
	xba		; EB
	asl $0EE1.w		; 0E E1 0E
	cpx #$F00E.w		; E0 0E F0
	asl $E1E1.w,X		; 1E E1 E1
	xba		; EB
	asl A		; 0A
	sbc ($00.b),Y		; F1 00
	sbc ($00.b),Y		; F1 00
	sbc ($00.b),Y		; F1 00
	xce		; FB
	asl A		; 0A
	xce		; FB
	asl A		; 0A
	sbc $02.b,S		; E3 02
	asl $F3.b		; 06 F3
	and ($3A.b,X)		; 21 3A
	cmp ($1C.b)		; D2 1C
	beq  31.b		; F0 1F
	cpx #$E00F.w		; E0 0F E0
	ora $E00FE0.l		; 0F E0 0F E0
	ora $D0EFE2.l		; 0F E2 EF D0
	ora [$E4.b],Y		; 17 E4
	ora [$E7.b]		; 07 E7
	ora [$F7.b]		; 07 F7
	ora [$F3.b]		; 07 F3
	ora $F3.b,S		; 03 F3
	ora $FA.b,S		; 03 FA
	asl A		; 0A
	tsb $0C16.w		; 0C 16 0C
	ora $183C0B.l,X		; 1F 0B 3C 18
	plp		; 28
	ora $7B.b,X		; 15 7B
	ora ($7F.b,S),Y		; 13 7F
	and [$57.b],Y		; 37 57
	and [$F7.b],Y		; 37 F7
	ora $1C08.w		; 0D 08 1C
	bpl  27.b		; 10 1B
	ora $18.b,S		; 03 18
	ora [$30.b],Y		; 17 30
	and [$31.b]		; 27 31
	ora [$73.b]		; 07 73
	adc $C70F77.l		; 6F 77 0F C7
	adc $17EF07.l		; 6F 07 EF 17
	xba		; EB
	sta [$7D.b]		; 87 7D
	ora [$7A.b]		; 07 7A
	phb		; 8B
	lda $89.b,X		; B5 89
	ldx $88.b,Y		; B6 88
	sbc [$87.b],Y		; F7 87
	ora $815F43.l,X		; 1F 43 5F 81
	ora $428FC4.l,X		; 1F C4 8F 42
	sta [$19.b]		; 87 19
	wai		; CB
	clc		; 18
	cmp #$883A.w		; C9 3A 88
	cpx #$D1F7.w		; E0 F7 D1
	sbc [$F1.b],Y		; F7 F1
	lda $C976C9.l		; AF C9 76 C9
	lda [$A1.b],Y		; B7 A1
	eor $259B64.l,X		; 5F 64 9B 25
	phx		; DA
	bra  -8.b		; 80 F8
	sta ($F8.b),Y		; 91 F8
	and ($F0.b,X)		; 21 F0
	pha		; 48
	sbc #$C988.w		; E9 88 C9
	plp		; 28
	lda ($6C.b,X)		; A1 6C
	adc $6C.b		; 65 6C
	and $90.b		; 25 90
	inx		; E8
	bcc 108.b		; 90 6C
	iny		; C8
	trb $E8.b		; 14 E8
	dec $C8.b		; C6 C8
	inc $EAEC.w		; EE EC EA
	cpx $EEEF.w		; EC EF EE
	sbc $1818.w		; ED 18 18
	sed		; F8
	bcs  24.b		; B0 18
	sed		; F8
	tsb $CCFC.w		; 0C FC CC
	beq -50.b		; F0 CE
	inc $CE.b,X		; F6 CE
	beq -50.b		; F0 CE
	sbc ($78.b)		; F2 78
	inc $FF4C.w,X		; FE 4C FF
	txs		; 9A
	sbc $C0FF02.l,X		; FF 02 FF C0
	inc $0E70.w,X		; FE 70 0E
	bra  28.b		; 80 1C
	cpx #$FC38.w		; E0 38 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $BA.b		; 00 BA
	brk $02.b		; 00 02
	brk $C4.b		; 00 C4
	jsr $00E8.w		; 20 E8 00
	cpy #$4000.w		; C0 00 40
	sec		; 38
	bra  56.b		; 80 38
	brk $F8.b		; 00 F8
	bra 124.b		; 80 7C
	brk $F4.b		; 00 F4
	php		; 08
	inc $CA30.w		; EE 30 CA
	trb $85.b		; 14 85
	cpx #$D0A0.w		; E0 A0 D0
	brk $B0.b		; 00 B0
	ldy #$0000.w		; A0 00 00
	beq  24.b		; F0 18
	inx		; E8
	bit $4CC0.w,X		; 3C C0 4C
	sty $EE.b		; 84 EE
	clv		; B8
	ldy $B8.b,X		; B4 B8
	ldy $BEB8.w,X		; BC B8 BE
	ldy $BCBA.w,X		; BC BA BC
	tsx		; BA
	ldy $BCAF.w,X		; BC AF BC
	lda $B8A7BC.l		; AF BC A7 B8
	iny		; C8
	ldy $BCC4.w,X		; BC C4 BC
	cpy #$C4BC.w		; C0 BC C4
	ldy $BEC4.w,X		; BC C4 BE
	cmp ($BE.b)		; D2 BE
	cmp ($3E.b)		; D2 3E
	cld		; D8
	ldx $2D.b,Y		; B6 2D
	stz $6F.b,X		; 74 6F
	stz $FB.b		; 64 FB
	stz $FB.b		; 64 FB
	rts		; 60

	dec $FE40.w,X		; DE 40 FE
	rti		; 40

	ldx $EC00.w,Y		; BE 00 EC
	rol $7ED2.w,X		; 3E D2 7E
	tya		; 98
	inc $06.b,X		; F6 06
	inc $16.b,X		; F6 16
	inc $32.b,X		; F6 32
	pea $E414.w		; F4 14 E4
	stz $E0.b		; 64 E0
	jsr $4338.w		; 20 38 43
	clc		; 18
	eor $3C.b,S		; 43 3C
	and $0C.b,S		; 23 0C
	and ($0C.b,X)		; 21 0C
	and ($1C.b,X)		; 21 1C
	and ($0C.b),Y		; 31 0C
	ora ($04.b),Y		; 11 04
	ora ($3E.b),Y		; 11 3E
	cop $3E.b		; 02 3E
	cop $1E.b		; 02 1E
	cop $3E.b		; 02 3E
	jsr $001E.w		; 20 1E 00
	asl $1E00.w		; 0E 00 1E
	bpl  14.b		; 10 0E
	brk $1C.b		; 00 1C
	.db $42, $38		; 42 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	dec $38.b		; C6 38
	cpy $30.b		; C4 30
	cpy $78.b		; C4 78
	cpy $C870.w		; CC 70 C8
	rts		; 60

	iny		; C8
	rol $7C02.w,X		; 3E 02 7C
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($7844.w,X)		; 7C 44 78
	rti		; 40

	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bpl  68.b		; 10 44
	bmi 100.b		; 30 64
	bpl 100.b		; 10 64
	brk $3E.b		; 00 3E
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	tsb $003E.w		; 0C 3E 00
	and ($38.b)		; 32 38
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $0000.w		; 20 00 00
	trb $0000.w		; 1C 00 00
	brk $10.b		; 00 10
	bpl  28.b		; 10 1C
	bpl   8.b		; 10 08
	ror $18.b		; 66 18
	rol $1C.b		; 26 1C
	rol $00.b		; 26 00
	and $1C3F18.l,X		; 3F 18 3F 1C
	and $003F00.l,X		; 3F 00 3F 00
	ora $1C2038.l,X		; 1F 38 20 1C
	tsb $18.b		; 04 18
	brk $02.b		; 00 02
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	asl $0000.w,X		; 1E 00 00
	asl $001B.w		; 0E 1B 00
	tas		; 1B
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	php		; 08
	asl $1E00.w,X		; 1E 00 1E
	php		; 08
	asl $2610.w		; 0E 10 26
	tsb $00.b		; 04 00
	asl $080A.w		; 0E 0A 08
	php		; 08
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
	brk $14.b		; 00 14
	tsb $1C.b		; 04 1C
	tsb $08.b		; 04 08
	ora ($18.b,S),Y		; 13 18
	and ($08.b,S),Y		; 33 08
	rol $04.b		; 26 04
	ply		; 7A
	sec		; 38
	ror $F678.w,X		; 7E 78 F6
	php		; 08
	inc $00.b,X		; F6 00
	jsr ($121E.w,X)		; FC 1E 12
	tsb $1800.w		; 0C 00 18
	brk $04.b		; 00 04
	tsb $3C.b		; 04 3C
	brk $7C.b		; 00 7C
	php		; 08
	jmp ($0008.w,X)		; 7C 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	brk $03.b		; 00 03
	brk $E4.b		; 00 E4
	brk $1F.b		; 00 1F
	asl $3F.b		; 06 3F
	ora $7F137F.l		; 0F 7F 13 7F
	bit $FF.b		; 24 FF
	pla		; 68
	sbc $030000.l,X		; FF 00 00 03
	ora $E0.b,S		; 03 E0
	cpx #$C0CF.w		; E0 CF C0
	sta $80BF80.l,X		; 9F 80 BF 80
	adc [$00.b],Y		; 77 00
	jmp ($8A00.w)		; 6C 00 8A
	adc ($5E.b,S),Y		; 73 5E
	ldy #$C01F.w		; A0 1F C0
	adc [$E0.b]		; 67 E0
	ora $02F8.w,Y		; 19 F8 02
	ror $0700.w,X		; 7E 00 07
	brk $03.b		; 00 03
	sta $DF81.w		; 8D 81 DF
	rti		; 40

	lda $001F00.l,X		; BF 00 1F 00
	sbc [$E0.b]		; E7 E0
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	ldy #$E030.w		; A0 30 E0
	php		; 08
	beq   4.b		; F0 04
	sei		; 78
	tsb $D8.b		; 04 D8
	cpy $28A0.w		; CC A0 28
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	brk $D8.b		; 00 D8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	ora $1D.b,S		; 03 1D
	ora $B87F6F.l,X		; 1F 6F 7F B8
	cmp $7D.b,S		; C3 7D
	ora $DE3FF7.l		; 0F F7 3F DE
	jmp ($F0BB.w,X)		; 7C BB F0
	adc $3F0A0F.l		; 6F 0F 0A 3F
	bmi 127.b		; 30 7F
	eor [$FF.b]		; 47 FF
	lda ($DF.b)		; B2 DF
	iny		; C8
	adc $45FF21.l,X		; 7F 21 FF 45
	sbc $370097.l,X		; FF 97 00 37
	ora ($27.b,X)		; 01 27
	ora $2F.b,S		; 03 2F
	ora [$2B.b]		; 07 2B
	ora [$0E.b]		; 07 0E
	asl $0E17.w		; 0E 17 0E
	ora $1F0C.w,X		; 1D 0C 1F
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $010F0C.l		; 0F 0C 0F 01
	ora $020E08.l		; 0F 08 0E 02
	asl $E000.w		; 0E 00 E0
	cmp $CCBBC4.l,X		; DF C4 BB CC
	and ($1C.b,S),Y		; 33 1C
	xba		; EB
	bit $38D3.w,X		; 3C D3 38
	sbc [$78.b],Y		; F7 78
	lda [$70.b]		; A7 70
	sbc $FF28FE.l		; EF FE 28 FF
	mvn $CC,$DF		; 54 DF CC
	lda $6C7F14.l,X		; BF 14 7F 6C
	adc $DAFF08.l,X		; 7F 08 FF DA
	sbc $0215.w,X		; FD 15 02
	sbc $FD02.w,X		; FD 02 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cop $EE.b		; 02 EE
	cop $C6.b		; 02 C6
	cop $C6.b		; 02 C6
	ora ($C7.b,X)		; 01 C7
	inc $02.b		; E6 02
	inc $82.b		; E6 82
	beq -112.b		; F0 90
	sbc [$A7.b]		; E7 A7
	eor $04.b		; 45 04
	eor ($00.b,X)		; 41 00
	eor ($40.b,X)		; 41 40
	cop $02.b		; 02 02
	pha		; 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	mvp $04,$BB		; 44 BB 04
	xce		; FB
	rti		; 40

	adc $D03CA0.l,X		; 7F A0 3C D0
	trb $0CE8.w		; 1C E8 0C
	stp		; DB
	pha		; 48
	cmp $DD44.w,X		; DD 44 DD
	mvp $04,$0C		; 44 0C 04
	lda ($31.b),Y		; B1 31
	cld		; D8
	clc		; 18
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	inc $FCFD.w,X		; FE FD FC
	asl A		; 0A
	sed		; F8
	adc [$F1.b],Y		; 77 F1
	inc $BCC3.w		; EE C3 BC
	asl $F8.b		; 06 F8
	tsb $F1.b		; 04 F1
	brk $FA.b		; 00 FA
	sbc $F7FE02.l,X		; FF 02 FE F7
	sbc $F98D.w,X		; FD 8D F9
	clc		; 18
	sbc ($50.b,S),Y		; F3 50
	sbc [$60.b]		; E7 60
	cmp $8B8ED1.l,X		; DF D1 8E 8B
	brk $1E.b		; 00 1E
	rts		; 60

	sbc $8337B0.l		; EF B0 37 83
	bpl   7.b		; 10 07
	bvc   4.b		; 50 04
	ldy #$783C.w		; A0 3C 78
	bit $1DF8.w,X		; 3C F8 1D
	beq 110.b		; F0 6E
	sed		; F8
	sta [$7C.b]		; 87 7C
	cpy #$C03C.w		; C0 3C C0
	tda		; 7B
	bra  -5.b		; 80 FB
	clc		; 18
	xce		; FB
	clc		; 18
	xce		; FB
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E2.b		; 00 E2
	cpy #$78FE.w		; C0 FE 78
	inc $FF4C.w,X		; FE 4C FF
	txs		; 9A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $12.b		; 00 12
	sbc $700668.l		; EF 68 06 70
	asl $1CA0.w		; 0E A0 1C
	cpx #$0038.w		; E0 38 00
	bvs -128.b		; 70 80
	jsr $4000.w		; 20 00 40
	asl A		; 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$00C0.w		; A0 C0 00
	bra   0.b		; 80 00
	rti		; 40

	bcc   0.b		; 90 00
	bne   0.b		; D0 00
	cpx #$F800.w		; E0 00 F8
	brk $7C.b		; 00 7C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	bpl  80.b		; 10 50
	brk $60.b		; 00 60
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $301C.w,Y		; 19 1C 30
	clc		; 18
	jsl $307424.l		; 22 24 74 30
	jmp ($7C20.w,X)		; 7C 20 7C
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	asl $00.b		; 06 00
	asl $1C00.w		; 0E 00 1C
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora [$03.b]		; 07 03
	ora $770F.w,X		; 1D 0F 77
	adc $F3FCBC.l,X		; 7F BC FC F3
	beq -17.b		; F0 EF
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	ora $283F0A.l		; 0F 0A 3F 28
	sbc $0CFE43.l,X		; FF 43 FE 0C
	xce		; FB
	ora ($67.b)		; 12 67
	sed		; F8
	eor #$37D4.w		; 49 D4 37
	jmp.w [$D235]		; DC 35 D2
	sta [$70.b],Y		; 97 70
	phd		; 0B
	sed		; F8
	ora $EC.b		; 05 EC
	cop $F6.b		; 02 F6
	pla		; 68
	brk $60.b		; 00 60
	asl $64.b		; 06 64
	ora $2C.b		; 05 2C
	cop $8F.b		; 02 8F
	bra -57.b		; 80 C7
	brk $1B.b		; 00 1B
	clc		; 18
	cmp $011C.w,X		; DD 1C 01
	ora $02.b,S		; 03 02
	asl $01.b		; 06 01
	tsb $05.b		; 04 05
	tsb $0803.w		; 0C 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bne  56.b		; D0 38
	cpy #$E010.w		; C0 10 E0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	cpx #$F020.w		; E0 20 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $03.b		; 06 03
	ora $0B07.w		; 0D 07 0B
	ora [$1E.b]		; 07 1E
	ora $1F081F.l		; 0F 1F 08 1F
	brk $3F.b		; 00 3F
	brk $3B.b		; 00 3B
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $010F0C.l		; 0F 0C 0F 01
	ora $021E10.l,X		; 1F 10 1E 02
	clc		; 18
	php		; 08
	ora ($11.b),Y		; 11 11
	cpx $FCD3.w		; EC D3 FC
	phb		; 8B
	jsr ($F433.w,X)		; FC 33 F4
	nop		; EA
	cpx $1CD2.w		; EC D2 1C
	xba		; EB
	sec		; 38
	cmp [$70.b],Y		; D7 70
	sbc $FE2DFF.l		; EF FF 2D FE
	stz $FE.b,X		; 74 FE
	cpy $15FE.w		; CC FE 15
	inc $7E2D.w,X		; FE 2D 7E
	mvn $AA,$FE		; 54 FE AA
	inc $0C14.w,X		; FE 14 0C
	ora [$04.b],Y		; 17 04
	ora $010B04.l,X		; 1F 04 0B 01
	asl $0C01.w		; 0E 01 0C
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	ora $0D09.w		; 0D 09 0D
	brk $0D.b		; 00 0D
	tsb $0105.w		; 0C 05 01
	ora $05.b		; 05 05
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	beq 109.b		; F0 6D
	cpx #$E0D9.w		; E0 D9 E0
	cld		; D8
	cpx #$C0D0.w		; E0 D0 C0
	beq -64.b		; F0 C0
	cpx #$60C0.w		; E0 C0 60
	rti		; 40

	cpx #$99F9.w		; E0 F9 99
	beq  32.b		; F0 20
	beq  48.b		; F0 30
	cpx #$E020.w		; E0 20 E0
	brk $E0.b		; 00 E0
	jsr $80C0.w		; 20 C0 80
	cpy #$0100.w		; C0 00 01
	sta $01.b,S		; 83 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($F8.b,X)		; 01 F8
	tsb $04F0.w		; 0C F0 04
	bvs   4.b		; 70 04
	sei		; 78
	tsb $F8.b		; 04 F8
	sty $F8.b		; 84 F8
	sty $F8.b		; 84 F8
	sty $78.b		; 84 78
	sty $F0.b		; 84 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra  96.b		; 80 60
	inc $8F80.w,X		; FE 80 8F
	bvs 119.b		; 70 77
	bvs  -9.b		; 70 F7
	bvs  -9.b		; 70 F7
	bvs  -1.b		; 70 FF
	bvs 126.b		; 70 7E
	bvs 125.b		; 70 7D
	stz $05.b,X		; 74 05
	dey		; 88
	bvs  16.b		; 70 10
	sed		; F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bmi  -7.b		; 30 F9
	bpl  -6.b		; 10 FA
	and $007F70.l,X		; 3F 70 7F 00
	trb $3D70.w		; 1C 70 3D
	sei		; 78
	and $3F0F7D.l,X		; 3F 7D 0F 3F
	ora $E7.b,S		; 03 E7
	tas		; 1B
	xce		; FB
	brk $F4.b		; 00 F4
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	bpl  -6.b		; 10 FA
	clc		; 18
	sbc $FF04.w,X		; FD 04 FF
	cop $FF.b		; 02 FF
	ora $1F.b,S		; 03 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	cpy #$E010.w		; C0 10 E0
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $E0.b		; 00 E0
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	and ($18.b)		; 32 18
	and ($0C.b)		; 32 0C
	bit $0C.b,X		; 34 0C
	bit $08.b,X		; 34 08
	bit $00.b,X		; 34 00
	bit $3C20.w,X		; 3C 20 3C
	bmi 108.b		; 30 6C
	asl $0C02.w		; 0E 02 0C
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	bpl  12.b		; 10 0C
	tsb $14.b		; 04 14
	tsb $08.b		; 04 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C04.w		; 0E 04 1C
	cop $3B.b		; 02 3B
	clc		; 18
	adc $00FE20.l,X		; 7F 20 FE 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $03.b		; 04 03
	brk $15.b		; 00 15
	ora ($1E.b),Y		; 11 1E
	asl $08.b		; 06 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $770F.w,X		; 1D 0F 77
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $283F0A.l		; 0F 0A 3F 28
	ora #$2D7A.w		; 09 7A 2D
.INDEX 8
	sep #$5F		; E2 5F
	cpy #$BE.b		; C0 BE
	bra 116.b		; 80 74
	ora [$A0.b]		; 07 A0
	rol $E080.w,X		; 3E 80 E0
	brk $80.b		; 00 80
	ora [$12.b],Y		; 17 12
	eor $80BF42.l,X		; 5F 42 BF 80
	adc $03FB00.l,X		; 7F 00 FB 03
	cld		; D8
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $00BC.w		; 20 BC 00
	jsr ($6498.w,X)		; FC 98 64
	jsr ($6400.w,X)		; FC 00 64
	jsr $2044.w		; 20 44 20
	cpx #$60.b		; E0 60
	cpy #$00.b		; C0 00
	pha		; 48
	brk $A8.b		; 00 A8
	jsr $2020.w		; 20 20 20
	brk $98.b		; 00 98
	jsr $2098.w		; 20 98 20
	tya		; 98
	cpx $00.b		; E4 00
	cli		; 58
	brk $90.b		; 00 90
	brk $D0.b		; 00 D0
	bra -16.b		; 80 F0
	sta ($A1.b,X)		; 81 A1
	tyx		; BB
	adc $017F.w,Y		; 79 7F 01
	adc $005800.l,X		; 7F 00 58 00
	ldy #$00.b		; A0 00
	rts		; 60

	brk $A1.b		; 00 A1
	brk $83.b		; 00 83
	ora ($FF.b,X)		; 01 FF
	and $00FF.w,Y		; 39 FF 00
	sbc $10FB38.l,X		; FF 38 FB 10
	ldy $DF03.w,X		; BC 03 DF
	and [$EF.b]		; 27 EF
	ora [$F7.b]		; 07 F7
	brk $F8.b		; 00 F8
	cop $FD.b		; 02 FD
	cop $FD.b		; 02 FD
	ora ($7C.b,X)		; 01 7C
	brk $7F.b		; 00 7F
	sta $3F.b,S		; 83 3F
	lda [$1F.b]		; A7 1F
	ldx $0F.b		; A6 0F
	bne   7.b		; D0 07
	dec $02.b,X		; D6 02
	dec $02.b,X		; D6 02
	and $DD.b		; 25 DD
	rol A		; 2A
	dec $29.b,X		; D6 29
	eor [$2A.b],Y		; 57 2A
	eor $4A.b,X		; 55 4A
	and $4B.b,X		; 35 4B
	bit $49.b,X		; 34 49
	ldx $49.b,Y		; B6 49
	ldx $A5.b,Y		; B6 A5
	and [$6A.b]		; 27 6A
	pld		; 2B
	adc #$6AA9.w		; 69 A9 6A
	tax		; AA
	phy		; 5A
	dex		; CA
	tad		; 5B
	wai		; CB
	stp		; DB
	eor #$49DB.w		; 49 DB 49
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	rts		; 60

	bcc  16.b		; 90 10
	inx		; E8
	php		; 08
	pea $7E80.w		; F4 80 7E
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$60.b		; E0 60
	bvs  16.b		; 70 10
	sei		; 78
	php		; 08
	bcs -128.b		; B0 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C22.w		; 0C 22 0C
	adc ($04.b)		; 72 04
	ply		; 7A
	tsb $79.b		; 04 79
	brk $3D.b		; 00 3D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	trb $2C00.w		; 1C 00 2C
	brk $36.b		; 00 36
	cop $36.b		; 02 36
	brk $0B.b		; 00 0B
	ora ($05.b,X)		; 01 05
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $59.b		; 00 59
	brk $47.b		; 00 47
	ora ($4F.b,X)		; 01 4F
	ora [$5F.b]		; 07 5F
	tsb $DF.b		; 04 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3820.w		; 20 20 38
	sec		; 38
	and ($30.b,S),Y		; 33 30
	and [$20.b]		; 27 20
	and $000020.l		; 2F 20 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	beq  -1.b		; F0 FF
	dec $00FF.w,X		; DE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $E0.b		; 00 E0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	bit $03.b		; 24 03
	cpx $41.b		; E4 41
	pea $9EA0.w		; F4 A0 9E
	rts		; 60

	ora $7A0774.l		; 0F 74 07 7A
	ora $BC.b,S		; 03 BC
	sta ($C7.b,X)		; 81 C7
	cpy $83.b		; C4 83
	brk $23.b		; 00 23
	jsr $1071.w		; 20 71 10
	plx		; FA
	php		; 08
	sbc $FC00.w,Y		; F9 00 FC
	brk $7E.b		; 00 7E
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	ldy #$01.b		; A0 01
	rts		; 60

	asl $25.b		; 06 25
	trb $384B.w		; 1C 4B 38
	stx $70.b,Y		; 96 70
	ldy $0061.w		; AC 61 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	rti		; 40

	ora $82.b,S		; 03 82
	phd		; 0B
	iny		; C8
	ora [$90.b],Y		; 17 90
	and $011F20.l		; 2F 20 1F 01
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	beq -48.b		; F0 D0
	clc		; 18
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	rts		; 60

	dey		; 88
	bvs -104.b		; 70 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	cop $FD.b		; 02 FD
	.db $82, $7D, $C4		; 82 7D C4
	tsa		; 3B
	cpy $3B.b		; C4 3B
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	iny		; C8
	lda [$76.b],Y		; B7 76
	cop $AE.b		; 02 AE
	.db $82, $CD, $C4		; 82 CD C4
	cmp $C1C4.w		; CD C4 C1
	rti		; 40

	cpy #$40.b		; C0 40
	cmp #$D940.w		; C9 40 D9
	pha		; 48
	pha		; 48
	lda [$48.b],Y		; B7 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	mvp $45,$BB		; 44 BB 45
	tyx		; BB
	eor $BF.b,S		; 43 BF
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	stp		; DB
	pha		; 48
	cmp $DD48.w,Y		; D9 48 DD
	mvp $44,$DC		; 44 DC 44
	jmp.w [$5844]		; DC 44 58
	rti		; 40

	tsb $04.b		; 04 04
	adc ($71.b),Y		; 71 71
	and ($E6.b),Y		; 31 E6
	jsl $F9128D.l		; 22 8D 12 F9
	ora ($F0.b,X)		; 01 F0
	jsr $70F0.w		; 20 F0 70
	sbc $7C39.w,Y		; F9 39 7C
	trb $9CBE.w		; 1C BE 9C
	sta $78.b		; 85 78
	phd		; 0B
	bra -121.b		; 80 87
	cpx #$2F.b		; E0 2F
	bra  63.b		; 80 3F
	bmi 127.b		; 30 7F
	clc		; 18
	sbc $E17F0C.l,X		; FF 0C 7F E1
	cmp ($E1.b,X)		; C1 E1
	cmp ($C6.b,X)		; C1 C6
	sta ($7A.b,X)		; 81 7A
	bra -121.b		; 80 87
	cop $CF.b		; 02 CF
	stx $6D.b		; 86 6D
	dec $6EBF.w		; CE BF 6E
	eor ($DE.b,X)		; 41 DE
	eor ($DE.b,X)		; 41 DE
	ora ($B8.b,X)		; 01 B8
	brk $85.b		; 00 85
	brk $7A.b		; 00 7A
	tsb $B6.b		; 04 B6
	tsb $0CDE.w		; 0C DE 0C
	inc $0100.w		; EE 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $1F.b,S		; 03 1F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $000008.l		; 0F 08 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($07.b,X)		; 01 07
	ora $0D.b,S		; 03 0D
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora [$06.b]		; 07 06
	ora $370E08.l		; 0F 08 0E 37
	trb $786E.w		; 1C 6E 78
	ldy $7BF1.w,X		; BC F1 7B
	beq -32.b		; F0 E0
.INDEX 8
	sep #$DC		; E2 DC
	cpy $98B9.w		; CC B9 98
	adc ($1F.b,S),Y		; 73 1F
	ora #$133E.w		; 09 3E 13
	jmp ($F947.w,X)		; 7C 47 F9
	sta $F71FF0.l		; 8F F0 1F F7
	bit $E7.b,X		; 34 E7
	adc ($CE.b,X)		; 61 CE
.INDEX 16
	rep #$11		; C2 11
	xba		; EB
	brk $7D.b		; 00 7D
	dey		; 88
	ldy $44.b,X		; B4 44
	phy		; 5A
	bra -81.b		; 80 AF
	clc		; 18
	eor [$3F.b]		; 47 3F
	bra -29.b		; 80 E3
	rti		; 40

	ror $56.b,X		; 76 56
	adc [$C7.b],Y		; 77 C7
	tsa		; 3B
	sbc #$F45D.w		; E9 5D F4
	stx $03F8.w		; 8E F8 03
	cpx #$4C00.w		; E0 00 4C
	brk $DE.b		; 00 DE
	rts		; 60

	php		; 08
	bra -112.b		; 80 90
	bpl  32.b		; 10 20
	bcc  96.b		; 90 60
	bpl  96.b		; 10 60
	bpl -32.b		; 10 E0
	beq   0.b		; F0 00
	bcc   0.b		; 90 00
	beq   0.b		; F0 00
	rts		; 60

	brk $C0.b		; 00 C0
	cpy #$20A0.w		; C0 A0 20
	ldy #$2000.w		; A0 00 20
	brk $00.b		; 00 00
	rts		; 60

	brk $E0.b		; 00 E0
	ora [$1A.b]		; 07 1A
	asl $0E17.w		; 0E 17 0E
	and $1E2D1E.l,X		; 3F 1E 2D 1E
	and $5B3C.w,X		; 3D 3C 5B
	bit $385B.w,X		; 3C 5B 38
	eor $1F050F.l,X		; 5F 0F 05 1F
	ora $001E.w,Y		; 19 1E 00
	rol $3E32.w,X		; 3E 32 3E
	cop $3E.b		; 02 3E
	bit $3F.b		; 24 3F
	and $3F.b		; 25 3F
	and $09.b,S		; 23 09
	adc $193F0A.l,X		; 7F 0A 3F 19
	rol $B502.w,X		; 3E 02 B5
	ora $8DF7.w		; 0D F7 8D
	pea $7C85.w		; F4 85 7C
	cop $FE.b		; 02 FE
	sta $DB80.w,X		; 9D 80 DB
	cpy #$C0DA.w		; C0 DA C0
	cli		; 58
	eor ($99.b,X)		; 41 99
	sta ($DB.b),Y		; 91 DB
	bvc -61.b		; 50 C3
	cpy #$A0B1.w		; C0 B1 A0
	ora ($FF.b,S),Y		; 13 FF
	rol $FF.b		; 26 FF
	cpy $3B.b		; C4 3B
	phy		; 5A
	ora ($DC.b,X)		; 01 DC
	ora $68.b,S		; 03 68
	sta [$F8.b]		; 87 F8
	asl $1CC0.w		; 0E C0 1C
	stp		; DB
	brk $37.b		; 00 37
	brk $02.b		; 00 02
	php		; 08
	bmi -124.b		; 30 84
	and ($48.b),Y		; 31 48
	and ($80.b)		; 32 80
	beq   0.b		; F0 00
	sed		; F8
	plp		; 28
	and $F88EE1.l		; 2F E1 8E F8
	sbc [$3C.b]		; E7 3C
	lda $701680.l,X		; BF 80 16 70
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $1740.w,X		; 5E 40 17
	bpl -53.b		; 10 CB
	php		; 08
	adc $202F00.l,X		; 7F 00 2F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	jsr $20F0.w		; 20 F0 20
	cld		; D8
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsx		; BA
	adc $95.b,S		; 63 95
	adc [$48.b]		; 67 48
	ldx $FE13.w		; AE 13 FE
	sta ($7C.b,X)		; 81 7C
	eor [$B4.b]		; 47 B4
	ora [$E4.b]		; 07 E4
	ora $E4.b,S		; 03 E4
	sta $9881.w,X		; 9D 81 98
	bra -45.b		; 80 D3
	.db $42, $41		; 42 41
	brk $87.b		; 00 87
	sty $C3.b		; 84 C3
	rti		; 40

	cmp $00.b,S		; C3 00
	ora [$04.b]		; 07 04
	beq  16.b		; F0 10
	cpy #$E010.w		; C0 10 E0
	bmi -32.b		; 30 E0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	cpy #$0060.w		; C0 60 00
	rti		; 40

	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	cpy #$9040.w		; C0 40 90
	adc $04ED14.l		; 6F 14 ED 04
	inc $BE04.w,X		; FE 04 BE
	php		; 08
	rol $0E.b,X		; 36 0E
	and ($07.b,S),Y		; 33 07
	tas		; 1B
	brk $0F.b		; 00 0F
	bcs -112.b		; B0 90
	lda ($10.b)		; B2 10
	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	asl $0F1C.w,X		; 1E 1C 0F
	tsb $0000.w		; 0C 00 00
	bmi  -1.b		; 30 FF
	tas		; 1B
	sed		; F8
	ora $1C.b		; 05 1C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	stx $270E.w		; 8E 0E 27
	jsr $080B.w		; 20 0B 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $C35F.w		; 8E 5F C3
	lda ($D9.b,S),Y		; B3 D9
	lda $FCB0.w,X		; BD B0 FC
	rts		; 60

	inc $FE81.w,X		; FE 81 FE
	cmp ($FE.b,X)		; C1 FE
	sta ($FE.b,X)		; 81 FE
	stx $BF.b		; 86 BF
	cpy #$DC4F.w		; C0 4F DC
	eor $B8.b,S		; 43 B8
	ora $74.b,S		; 03 74
	ora ($AD.b,X)		; 01 AD
	ora ($DB.b,X)		; 01 DB
	ora ($B7.b,X)		; 01 B7
	ora ($1E.b,X)		; 01 1E
	asl $ECCC.w,X		; 1E CC EC
	cpx $CBFD.w		; EC FD CB
	inx		; E8
	tsb $65.b		; 04 65
	php		; 08
	phk		; 4B
	.db $42, $B5		; 42 B5
	eor ($AE.b),Y		; 51 AE
	tsb $08FF.w		; 0C FF 08
	sbc $41FEE8.l,X		; FF E8 FE 41
	sbc $09FE01.l,X		; FF 01 FE 09
	jsr ($4A42.w,X)		; FC 42 4A
	eor ($51.b,S),Y		; 53 51
	sec		; 38
	eor $195E39.l,X		; 5F 39 5E 19
	ror $3B1D.w,X		; 7E 1D 3B
	ora $0F2B.w,X		; 1D 2B 0F
	and $150F.w,X		; 3D 0F 15
	ora $3F17.w		; 0D 17 3F
	jsl $3F233F.l		; 22 3F 23 3F
	ora ($3F.b,X)		; 01 3F
	bit $1F.b		; 24 1F
	trb $1F.b		; 14 1F
	cop $1F.b		; 02 1F
	inc A		; 1A
	ora $1B0508.l		; 0F 08 05 1B
	ora ($1E.b,X)		; 01 1E
	ora ($1E.b,X)		; 01 1E
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $0B0F04.l		; 0F 04 0F 0B
	phd		; 0B
	phd		; 0B
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	bra  -4.b		; 80 FC
	beq  -4.b		; F0 FC
	tya		; 98
	inc $FE34.w,X		; FE 34 FE
	bit $DE.b		; 24 DE
	bne  12.b		; D0 0C
	cpx #$001C.w		; E0 1C 00
	brk $F4.b		; 00 F4
	brk $F8.b		; 00 F8
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	brk $14.b		; 00 14
	rti		; 40

	sty $20.b		; 84 20
	dey		; 88
	rti		; 40

	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	ora [$0E.b]		; 07 0E
	asl $1D.b		; 06 1D
	tsb $1F.b		; 04 1F
	tsb $081F.w		; 0C 1F 08
	ora $0F0007.l,X		; 1F 07 00 0F
	php		; 08
	ora $010F08.l		; 0F 08 0F 01
	ora $010F02.l		; 0F 02 0F 01
	asl $0C02.w		; 0E 02 0C
	brk $E0.b		; 00 E0
	cmp $C0DFE1.l,X		; DF E1 DF C0
	adc $4CFB44.l,X		; 7F 44 FB 4C
	sbc ($4C.b,S),Y		; F3 4C
	sbc [$DD.b],Y		; F7 DD
	inc $EFDC.w		; EE DC EF
	inc $FD2C.w,X		; FE 2C FD
	sec		; 38
	sbc $FE90.w,X		; FD 90 FE
	bit $FE.b		; 24 FE
	ldy $087E.w		; AC 7E 08
	sbc $FE11.w,X		; FD 11 FE
	bpl  64.b		; 10 40
	jsr ($ED92.w,X)		; FC 92 ED
	jsl $FB04DD.l		; 22 DD 04 FB
	mvp $88,$BB		; 44 BB 88
	adc [$09.b],Y		; 77 09
	inc $11.b,X		; F6 11
	inc $0364.w		; EE 64 03
	stp		; DB
	ora ($BB.b)		; 12 BB
	jsl $7604B7.l		; 22 B7 04 76
	mvp $88,$EE		; 44 EE 88
	sbc $DD09.w		; ED 09 DD
	ora ($FC.b),Y		; 11 FC
	cpx $3C.b		; E4 3C
	and $40894A.l,X		; 3F 4A 89 40
	lda [$95.b],Y		; B7 95
	ror A		; 6A
	sty $6B.b,X		; 94 6B
	trb $EB.b		; 14 EB
	ora ($ED.b)		; 12 ED
	stz $FE.b		; 64 FE
	trb $4AFC.w		; 1C FC 4A
	ror $4842.w,X		; 7E 42 48
	cmp $95.b,X		; D5 95
	cmp $94.b,X		; D5 94
	dec $14.b,X		; D6 14
	phx		; DA
	ora ($00.b)		; 12 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $1300.w		; 0D 00 13
	brk $27.b		; 00 27
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $190C.w		; 0D 0C 19
	clc		; 18
	ora $00.b		; 05 00
	brk $F2.b		; 00 F2
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $4DFF7F.l,X		; FF 7F FF 4D
	sbc $A2FF91.l,X		; FF 91 FF A2
	sbc $0CE39C.l,X		; FF 9C E3 0C
	tsb $8080.w		; 0C 80 80
	rol $7F00.w,X		; 3E 00 7F
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $B3.b		; 00 B3
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	tsb $1A07.w		; 0C 07 1A
	ora $5E3F2E.l,X		; 1F 2E 3F 5E
	adc $7DFEBC.l,X		; 7F BC FE 7D
	inc $FCF9.w,X		; FE F9 FC
	xce		; FB
	ora [$03.b]		; 07 03
	ora $111F05.l		; 0F 05 1F 11
	and $437F21.l,X		; 3F 21 7F 43
	sbc $06FF82.l,X		; FF 82 FF 06
	sbc $676005.l,X		; FF 05 60 67
	cli		; 58
	eor [$1C.b]		; 47 1C
	eor $5E.b,S		; 43 5E
	ora ($0E.b),Y		; 11 0E
	sta $BC47.w,Y		; 99 47 BC
	eor ($BE.b,S),Y		; 53 BE
	eor ($B7.b),Y		; 51 B7
	jsl $E41DF8.l		; 22 F8 1D E4
	asl $0FE2.w,X		; 1E E2 0F
	sbc ($17.b,X)		; E1 17
	adc ($0B.b),Y		; 71 0B
	pla		; 68
	ora $74.b		; 05 74
	cop $7A.b		; 02 7A
	brk $38.b		; 00 38
	rts		; 60

	stz $DE22.w		; 9C 22 DE
	ora ($F9.b,X)		; 01 F9
	ora $9838E7.l		; 0F E7 38 98
	adc [$B7.b],Y		; 77 B7
	adc ($F7.b,S),Y		; 73 F7
	cpy #$6000.w		; C0 00 60
	brk $A8.b		; 00 A8
	ora $51.b,S		; 03 51
	ora [$27.b]		; 07 27
	ora $B37F18.l,X		; 1F 18 7F B3
	sbc $0BFFB3.l,X		; FF B3 FF 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	asl $1738.w		; 0E 38 17
	and ($1C.b),Y		; 31 1C
	adc ($2E.b),Y		; 71 2E
	adc $07.b,S		; 63 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$10.b],Y		; 17 10
	asl $2F00.w		; 0E 00 2F
	and ($1C.b,X)		; 21 1C
	brk $A8.b		; 00 A8
.INDEX 8
	sep #$90		; E2 90
	sbc ($10.b)		; F2 10
	sbc ($08.b)		; F2 08
	sbc $08.b,S		; E3 08
	sbc $2C.b,S		; E3 2C
	sbc $2C.b,S		; E3 2C
	adc $2C.b,S		; 63 2C
	.db $62, $1C, $00		; 62 1C 00
	bit $AE20.w		; 2C 20 AE
	ldx #$BE.b		; A2 BE
	ldx #$3E.b		; A2 3E
	jsl $1E021E.l		; 22 1E 02 1E
	cop $1E.b		; 02 1E
	cop $40.b		; 02 40
	bcs   0.b		; B0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	cpx #$C0.b		; E0 C0
	rts		; 60

	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	rti		; 40

	beq -16.b		; F0 F0
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
	jsr $F000.w		; 20 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	bmi  -4.b		; 30 FC
	pla		; 68
	jsr ($BC48.w,X)		; FC 48 BC
	brk $00.b		; 00 00
	jsr $6000.w		; 20 00 60
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra -96.b		; 80 A0
	clc		; 18
	cpy #$38.b		; C0 38
	bra 112.b		; 80 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora #$0709.w		; 09 09 07
	ora $104008.l		; 0F 08 40 10
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	ora #$1F09.w		; 09 09 1F
	ora $1F.b,S		; 03 1F
	php		; 08
	ora $011F01.l,X		; 1F 01 1F 01
	phd		; 0B
	ora ($0B.b,X)		; 01 0B
	ora ($0B.b,X)		; 01 0B
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	tsb $0904.w		; 0C 04 09
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	php		; 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFDD.w,X		; FE DD FF
	dec $DEFF.w,X		; DE FF DE
	sbc $EFF3FF.l,X		; FF FF F3 EF
	sbc $F9F7.w,Y		; F9 F7 F9
	sbc [$FC.b],Y		; F7 FC
	tda		; 7B
	sbc $21FF22.l,X		; FF 22 FF 21
	sbc $00FF21.l,X		; FF 21 FF 00
	sbc $0AFF14.l,X		; FF 14 FF 0A
	sbc $85FF0A.l,X		; FF 0A FF 85
	ora ($EE.b),Y		; 11 EE
	jsl $FF00DD.l		; 22 DD 00 FF
	brk $FC.b		; 00 FC
	.db $82, $7E, $82		; 82 7E 82
	inc $FE82.w,X		; FE 82 FE
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
	ora $BB11.w,X		; 1D 11 BB
	ldx #$40D8.w		; A2 D8 40
	sbc $60.b,S		; E3 60
	sbc $A4.b		; E5 A4
	sbc $14.b,X		; F5 14
	sbc ($10.b),Y		; F1 10
	sbc $0258.w,Y		; F9 58 02
	sbc $DD22.w,X		; FD 22 DD
	jsl $DF20DD.l		; 22 DD 20 DF
	cop $3E.b		; 02 3E
	lda $3E.b,S		; A3 3E
	cmp ($1E.b,S),Y		; D3 1E
	sbc $0E.b,S		; E3 0E
	stp		; DB
	cop $BB.b		; 02 BB
	jsl $3822BB.l		; 22 BB 22 38
	jsr $04C5.w		; 20 C5 04
	cmp $14.b,X		; D5 14
	sbc $04.b		; E5 04
	sbc $0408.w,Y		; F9 08 04
	phd		; 0B
	tsb $1B.b		; 04 1B
	tsb $0C1B.w		; 0C 1B 0C
	tsa		; 3B
	clc		; 18
	and $387B1C.l,X		; 3F 1C 7B 38
	eor ($37.b,S),Y		; 53 37
	cmp [$05.b]		; C7 05
	tsb $0F.b		; 04 0F
	ora $0E.b		; 05 0E
	tsb $1E.b		; 04 1E
	asl $1E.b		; 06 1E
	cop $3C.b		; 02 3C
	tsb $3B.b		; 04 3B
	bit $3F76.w		; 2C 76 3F
	and $50.b		; 25 50
	cmp $D670.w,X		; DD 70 D6
	pha		; 48
	eor $E12CC0.l,X		; 5F C0 2C E1
	asl $B0.b,X		; 16 B0
	pha		; 48
	cmp $4780.w,Y		; D9 80 47
	sta $18.b,S		; 83 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	lda $021F80.l,X		; BF 80 1F 02
	eor $202640.l		; 4F 40 26 20
	sec		; 38
	tya		; 98
	ora [$0B.b]		; 07 0B
	ora [$1F.b]		; 07 1F
	ora $2F1F37.l		; 0F 37 1F 2F
	ora $5F3F7F.l,X		; 1F 7F 3F 5F
	and $BD7EFE.l,X		; 3F FE 7E BD
	ora [$04.b]		; 07 04
	ora $081F00.l		; 0F 00 1F 08
	and $003F30.l,X		; 3F 30 3F 00
	adc $017F60.l,X		; 7F 60 7F 01
	sbc $F3FCC2.l,X		; FF C2 FC F3
	sed		; F8
	sbc [$F0.b],Y		; F7 F0
	sbc $C0DFE0.l		; EF E0 DF C0
	lda $007E80.l,X		; BF 80 7E 00
	inc $FE00.w,X		; FE 00 FE
	sbc $0AFE0F.l,X		; FF 0F FE 0A
	jsr ($F814.w,X)		; FC 14 F8
	plp		; 28
	beq  80.b		; F0 50
	inc $DCA1.w		; EE A1 DC
	eor ($D8.b,X)		; 41 D8
	cmp ($00.b,X)		; C1 00
	lda #$A800.w		; A9 00 A8
	bpl -80.b		; 10 B0
	eor $3BB9.w,Y		; 59 B9 3B
	tda		; 7B
	adc $4FBF3F.l,X		; 7F 3F BF 4F
	and $7E0073.l,X		; 3F 73 00 7E
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	ora #$0B7F.w		; 09 7F 0B
	sbc $07FF0F.l,X		; FF 0F FF 07
	sbc $73FF10.l,X		; FF 10 FF 73
	lda [$31.b],Y		; B7 31
	cmp $80.b,S		; C3 80
	cpx #$8080.w		; E0 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sta ($7F.b,X)		; 81 7F
	rti		; 40

	and $809380.l,X		; 3F 80 93 80
	cpx #$E080.w		; E0 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sec		; 38
.INDEX 8
	sep #$1C		; E2 1C
	dec $70.b		; C6 70
	cpy $38.b		; C4 38
	sty $8820.w		; 8C 20 88
	beq -104.b		; F0 98
	cpy #$98.b		; C0 98
	cpx #$B0.b		; E0 B0
	lsr $7842.w,X		; 5E 42 78
	rti		; 40

	bit $7004.w,X		; 3C 04 70
	brk $F8.b		; 00 F8
	dey		; 88
	rts		; 60

	brk $70.b		; 00 70
	bpl  64.b		; 10 40
	brk $0C.b		; 00 0C
	.db $62, $0C, $22		; 62 0C 22
	tsb $0C22.w		; 0C 22 0C
	jsl $1C321C.l		; 22 1C 32 1C
	and ($14.b)		; 32 14
	ora ($04.b)		; 12 04
	ora ($3E.b)		; 12 3E
	jsl $3C203C.l		; 22 3C 20 3C
	jsr $001C.w		; 20 1C 00
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $F200.w		; 0C 00 F2
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $00FF7F.l,X		; FF 7F FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $8080.w		; 0C 80 80
	rol $7F00.w,X		; 3E 00 7F
	brk $18.b		; 00 18
	rol $18.b,X		; 36 18
	bit $10.b,X		; 34 10
	bit $28.b,X		; 34 28
	bit $7C20.w,X		; 3C 20 7C
	bpl 120.b		; 10 78
	bpl  -8.b		; 10 F8
	brk $B0.b		; 00 B0
	tsb $0804.w		; 0C 04 08
	brk $08.b		; 00 08
	brk $30.b		; 00 30
	bpl  56.b		; 10 38
	clc		; 18
	bpl   0.b		; 10 00
	bvc  64.b		; 50 40
	rts		; 60

	jsr $2424.w		; 20 24 24
	trb $3C3C.w		; 1C 3C 3C
	bit $3838.w,X		; 3C 38 38
	pla		; 68
	bvs -48.b		; 70 D0
	cpx #$A0.b		; E0 A0
	cpy #$10.b		; C0 10
	clc		; 18
	bit $7E.b		; 24 7E
	tsb $187E.w		; 0C 7E 18
	jmp ($7C10.w,X)		; 7C 10 7C
	rti		; 40

	jsr ($F880.w,X)		; FC 80 F8
	bra -16.b		; 80 F0
	jsr $88C0.w		; 20 C0 88
	cpy $E2C0.w		; CC C0 E2
	sed		; F8
	sbc $FEFC.w,X		; FD FC FE
	bit $003E.w,X		; 3C 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	cpx #$C0.b		; E0 C0
	jsr ($FEE0.w,X)		; FC E0 FE
	cli		; 58
	sbc $00FF08.l,X		; FF 08 FF 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	ora $170F1F.l		; 0F 1F 0F 17
	ora [$1F.b]		; 07 1F
	ora [$0E.b]		; 07 0E
	ora [$0E.b]		; 07 0E
	asl $0D.b		; 06 0D
	tsb $0B.b		; 04 0B
	brk $0F.b		; 00 0F
	ora $080F00.l,X		; 1F 00 0F 08
	ora $010F00.l		; 0F 00 0F 01
	ora [$01.b]		; 07 01
	ora [$02.b]		; 07 02
	ora [$05.b]		; 07 05
	asl $02.b		; 06 02
	tya		; 98
	adc [$98.b],Y		; 77 98
	adc $08FF08.l,X		; 7F 08 FF 08
	sbc $009F00.l,X		; FF 00 9F 00
	sty $0800.w		; 8C 00 08
	brk $00.b		; 00 00
	sbc $A3FFAB.l,X		; FF AB FF A3
	lda $26BF22.l,X		; BF 22 BF 26
	sty $0884.w		; 8C 84 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $3EE1.w,X		; 3D E1 3E
	cpx #$2E.b		; E0 2E
	cpx #$1F.b		; E0 1F
	beq  23.b		; F0 17
	beq  15.b		; F0 0F
	sed		; F8
	ora $180358.l		; 0F 58 03 18
	lsr $1F40.w,X		; 5E 40 1F
	brk $9F.b		; 00 9F
	bra -17.b		; 80 EF
	rts		; 60

	cmp $505740.l		; CF 40 57 50
	ora [$00.b]		; 07 00
	ora $C67C08.l		; 0F 08 7C C6
	sec		; 38
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
.INDEX 16
	rep #$98		; C2 98
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	.db $62, $9E, $63		; 62 9E 63
	stx $9C63.w		; 8E 63 9C
	adc ($38.b),Y		; 71 38
	brk $7C.b		; 00 7C
	rti		; 40

	ldy $3E80.w,X		; BC 80 3E
	cop $9E.b		; 02 9E
	cop $BC.b		; 02 BC
	jsr $40DC.w		; 20 DC 40
	dec $0040.w		; CE 40 00
	asl $0C00.w		; 0E 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
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
	tsb $1C16.w		; 0C 16 1C
	rol $10.b,X		; 36 10
	rol $08.b,X		; 36 08
	bit $5C20.w,X		; 3C 20 5C
	plp		; 28
	jmp $707810.l		; 5C 10 78 70
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $0C.b		; 00 0C
	tsb $10.b		; 04 10
	bpl  32.b		; 10 20
	jsr $2038.w		; 20 38 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $11.b		; 00 11
	brk $1D.b		; 00 1D
	php		; 08
	asl $0C.b,X		; 16 0C
	ora ($00.b,S),Y		; 13 00
	ora $000001.l,X		; 1F 01 00 00
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $02.b		; 00 02
	brk $0D.b		; 00 0D
	php		; 08
	asl $010C.w		; 0E 0C 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	tsb $1F.b		; 04 1F
	tsb $080B.w		; 0C 0B 08
	ora $000F06.l		; 0F 06 0F 00
	ora $160900.l		; 0F 00 09 16
	ora ($06.b)		; 12 06
	cop $0A.b		; 02 0A
	asl A		; 0A
	asl $02.b		; 06 02
	php		; 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	ora $0D.b,S		; 03 0D
	ora $0F.b,S		; 03 0F
	ora [$1A.b]		; 07 1A
	asl $0E15.w		; 0E 15 0E
	and $2F1C.w,X		; 3D 1C 2F
	trb $1C2B.w		; 1C 2B 1C
	tsa		; 3B
	ora [$06.b]		; 07 06
	ora $050F08.l		; 0F 08 0F 05
	ora $031F1A.l,X		; 1F 1A 1F 03
	and $363F31.l,X		; 3F 31 3F 36
	and $BEC006.l,X		; 3F 06 C0 BE
	bra 126.b		; 80 7E
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	stx $7F.b		; 86 7F
	sty $FE7F.w		; 8C 7F FE
	eor $FEBFFE.l,X		; 5F FE BF FE
	adc $FDCEFE.l		; 6F FE CE FD
	stz $38FB.w		; 9C FB 38
	sbc [$B0.b],Y		; F7 B0
	inc $1FA0.w		; EE A0 1F
	rol $16.b		; 26 16
	and $073E07.l		; 2F 07 3E 07
	tas		; 1B
	ora $1F.b,S		; 03 1F
	ora $17.b,S		; 03 17
	ora $05.b,S		; 03 05
	ora ($03.b,X)		; 01 03
	and $303F19.l,X		; 3F 19 3F 30
	ora $0C1F01.l,X		; 1F 01 1F 0C
	ora [$10.b],Y		; 17 10
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	cpy #$C0FF.w		; C0 FF C0
	sbc $01FE41.l,X		; FF 41 FE 01
	inc $7F80.w,X		; FE 80 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	.db $82, $7D, $DD		; 82 7D DD
	brk $EB.b		; 00 EB
	jsr $A1E3.w		; 20 E3 A1
	sbc $61.b,S		; E3 61
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E2.w		; E0 E2 E0
	dec $C2.b		; C6 C2
	brk $00.b		; 00 00
	sei		; 78
	beq 120.b		; F0 78
	beq -65.b		; F0 BF
	rts		; 60

	ror $3900.w,X		; 7E 00 39
	rts		; 60

	tsa		; 3B
	sbc ($7F.b),Y		; F1 7F
	tyx		; BB
	brk $FF.b		; 00 FF
	bmi  -9.b		; 30 F7
	bmi  -9.b		; 30 F7
	brk $E8.b		; 00 E8
	brk $EF.b		; 00 EF
	brk $EE.b		; 00 EE
	ora ($75.b,X)		; 01 75
	tas		; 1B
	tda		; 7B
	bit $20.b		; 24 20
	plp		; 28
	jsr $0068.w		; 20 68 00
	bcs   1.b		; B0 01
	sta ($07.b),Y		; 91 07
	.db $82, $1E, $A5		; 82 1E A5
	trb $98EB.w		; 1C EB 98
	jsr $20D8.w		; 20 D8 20
	bne   0.b		; D0 00
	bcc   0.b		; 90 00
	rti		; 40

	cop $62.b		; 02 62
	ora $64.b		; 05 64
	phd		; 0B
	pha		; 48
	ora [$80.b]		; 07 80
	sta ($6D.b)		; 92 6D
	sta ($6D.b)		; 92 6D
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	bpl -17.b		; 10 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ldx $92.b,Y		; B6 92
	ldx $92.b,Y		; B6 92
	adc [$11.b],Y		; 77 11
	adc [$11.b],Y		; 77 11
	adc [$11.b],Y		; 77 11
	asl $10.b,X		; 16 10
	eor ($01.b,X)		; 41 01
	jmp $C9301C.l		; 5C 1C 30 C9
	brk $F9.b		; 00 F9
	bpl  -3.b		; 10 FD
	plp		; 28
	sbc [$58.b]		; E7 58
	cmp $DD.b,S		; C3 DD
	cmp ($DE.b,X)		; C1 DE
	cpy #$E02F.w		; C0 2F E0
	sbc ($31.b),Y		; F1 31
	rts		; 60

	brk $48.b		; 00 48
	php		; 08
	trb $3E04.w		; 1C 04 3E
	cop $3E.b		; 02 3E
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	rti		; 40

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0A.b		; 00 0A
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	brk $44.b		; 00 44
	brk $FE.b		; 00 FE
	clc		; 18
	sbc $4FFF7F.l,X		; FF 7F FF 4F
	sbc $00FF99.l,X		; FF 99 FF 00
	brk $10.b		; 00 10
	bpl  56.b		; 10 38
	sec		; 38
	brk $00.b		; 00 00
	ror $FF02.w,X		; 7E 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	jsr $0000.w		; 20 00 00
	brk $18.b		; 00 18
	clc		; 18
	jmp ($8634.w,X)		; 7C 34 86
	sei		; 78
	cop $C8.b		; 02 C8
	cop $98.b		; 02 98
	jsl $00661C.l		; 22 1C 66 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $80F8.w		; 20 F8 80
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	jsr $60F8.w		; 20 F8 60
	ldy $70C4.w,X		; BC C4 70
	cpy $38.b		; C4 38
	sty $8CF8.w		; 8C F8 8C
	rts		; 60

	php		; 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpy #$7810.w		; C0 10 78
	rti		; 40

	bit $F004.w,X		; 3C 04 F0
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi  64.b		; 30 40
	bmi   0.b		; 30 00
	ldy #$E000.w		; A0 00 E0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	bne  16.b		; D0 10
	cpy #$E000.w		; C0 00 E0
	jsr $2060.w		; 20 60 20
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bvs -120.b		; 70 88
	bit $36C8.w,X		; 3C C8 36
	cpy #$803E.w		; C0 3E 80
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	iny		; C8
	brk $CC.b		; 00 CC
	php		; 08
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  56.b		; 80 38
	clv		; B8
	pla		; 68
	pla		; 68
	bvs 112.b		; 70 70
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	jmp ($FC68.w,X)		; 7C 68 FC
	bvs  -8.b		; 70 F8
	cpy #$80F0.w		; C0 F0 80
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	cpx #$30F8.w		; E0 F8 30
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	bpl  -8.b		; 10 F8
	php		; 08
	clv		; B8
	ora ($19.b,X)		; 01 19
	ror $5C3B.w,X		; 7E 3B 5C
	tsa		; 3B
	eor $5D3B.w,X		; 5D 3B 5D
	tsa		; 3B
	eor $5F3B.w,X		; 5D 3B 5F
	and $731F53.l,X		; 3F 53 1F 73
	and $233F01.l,X		; 3F 01 3F 23
	adc $627F62.l,X		; 7F 62 7F 62
	adc $607F62.l,X		; 7F 62 7F 60
	and $0C3F2C.l,X		; 3F 2C 3F 0C
	bra  -1.b		; 80 FF
	.db $82, $FF, $86		; 82 FF 86
	sbc $98FF8C.l,X		; FF 8C FF 98
	sbc $C0FF80.l,X		; FF 80 FF C0
	lda $E5BFC0.l,X		; BF C0 BF E5
	jsr $38FB.w		; 20 FB 38
	sbc [$30.b],Y		; F7 30
	inc $DD20.w		; EE 20 DD
	brk $EB.b		; 00 EB
	brk $F6.b		; 00 F6
	rti		; 40

	sbc $0140.w		; ED 40 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	xce		; FB
	ora $FB.b		; 05 FB
	ora ($DF.b,X)		; 01 DF
	ora ($0F.b,X)		; 01 0F
	cop $0D.b		; 02 0D
	ora $0C.b,S		; 03 0C
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	cpy $8C44.w		; CC 44 8C
	sty $04.b		; 84 04
	tsb $04.b		; 04 04
	tsb $06.b		; 04 06
	asl $07.b		; 06 07
	ora [$03.b]		; 07 03
	ora $00.b,S		; 03 00
	brk $5F.b		; 00 5F
	lda $3F8F3F.l,X		; BF 3F 8F 3F
	cmp [$9F.b],Y		; D7 9F
	ror A		; 6A
	ora $BA42F5.l		; 0F F5 42 BA
	bvc -83.b		; 50 AD
	mvn $0F,$AB		; 54 AB 0F
	adc $027F06.l,X		; 7F 06 7F 02
	and $449F80.l,X		; 3F 80 9F 44
	ora $D04742.l		; 0F 42 47 D0
	eor ($D4.b)		; 52 D4
	mvn $98,$AE		; 54 AE 98
	and $19.b		; 25 19
	sta ($6B.b)		; 92 6B
	cpy $3F.b		; C4 3F
	jsr $115F.w		; 20 5F 11
	sbc $7981.w		; ED 81 79
	rti		; 40

	lda $E027.w,Y		; B9 27 E0
	rol $E0.b		; 26 E0
	bit $90.b,X		; 34 90
	bvc -64.b		; 50 C0
	adc ($A1.b,X)		; 61 A1
	bvs  16.b		; 70 10
	bcs -128.b		; B0 80
	cmp ($41.b,X)		; C1 41
	tsb $06FF.w		; 0C FF 06
	ror $8701.w,X		; 7E 01 87
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$00E0.w		; C0 E0 00
	cpx #$0323.w		; E0 23 03
	bit #$0208.w		; 89 08 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	sed		; F8
	sbc $3E.b,S		; E3 3E
	adc $2F0F.w,Y		; 79 0F 2F
	cpx #$1C05.w		; E0 05 1C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$90.b],Y		; 97 90
	cmp $04.b		; C5 04
	sbc ($02.b)		; F2 02
	eor $080B40.l,X		; 5F 40 0B 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($13.b,X)		; 01 13
	ora ($23.b,X)		; 01 23
	brk $13.b		; 00 13
	brk $09.b		; 00 09
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	asl $0B.b		; 06 0B
	ora $0D16.w		; 0D 16 0D
	tsb $1C1D.w		; 0C 1D 1C
	ora $070C.w		; 0D 0C 07
	ora [$02.b]		; 07 02
	cop $03.b		; 02 03
	ora $07.b,S		; 03 07
	ora $0E.b		; 05 0E
	asl A		; 0A
	bcs  -4.b		; B0 FC
	lda $FB.b,S		; A3 FB
	ldy $F4.b		; A4 F4
	iny		; C8
	inx		; E8
	.db $42, $F3		; 42 F3
	jmp $A4A0.w		; 4C A0 A4
	adc $50.b,S		; 63 50
	lda ($F8.b,S),Y		; B3 F8
	eor $F3.b,S		; 43 F3
	eor [$E4.b]		; 47 E4
	eor $421FE8.l		; 4F E8 1F 42
	ora $1F839C.l		; 0F 9C 83 1F
	ora $2F.b,S		; 03 2F
	and $69.b,S		; 23 69
	sbc $7B0B.w,X		; FD 0B 7B
	ora $7B.b,S		; 03 7B
	sta [$B6.b]		; 87 B6
	lsr $9CEE.w		; 4E EE 9C
	jmp $78383C.l		; 5C 3C 38 78
	bvs 121.b		; 70 79
	ora $2B.b,S		; 03 2B
	sta [$0B.b]		; 87 0B
	sta [$16.b]		; 87 16
	cmp $18FF2C.l		; CF 2C FF 18
	inc $FC30.w,X		; FE 30 FC
	rts		; 60

	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora $0E.b,S		; 03 0E
	ora [$1D.b]		; 07 1D
	ora $000036.l		; 0F 36 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$01.b]		; 07 01
	ora $091F02.l		; 0F 02 1F 09
	bit $5B.b,X		; 34 5B
	pla		; 68
	lda ($F4.b),Y		; B1 F4
	mvp $8B,$E8		; 44 E8 8B
	sbc #$CA48.w		; E9 48 CA
	tax		; AA
	sta $006D.w		; 8D 6D 00
	sbc [$39.b],Y		; F7 39
	plp		; 28
	adc ($56.b),Y		; 71 56
	cpx #$E0AF.w		; E0 AF E0
	jmp ($BCEB.w,X)		; 7C EB BC
	sbc #$E05C.w		; E9 5C E0
	ldx $6EE0.w,Y		; BE E0 6E
	eor $00BD.w,Y		; 59 BD 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	cpx #$B107.w		; E0 07 B1
	rol $F8C7.w,X		; 3E C7 F8
	asl $25E1.w,X		; 1E E1 25
	and [$94.b]		; 27 94
	ora ($0E.b),Y		; 11 0E
	brk $77.b		; 00 77
	bvs  -6.b		; 70 FA
	brk $CC.b		; 00 CC
	tsb $2020.w		; 0C 20 20
	ora ($00.b,X)		; 01 00
	cpx #$C0C0.w		; E0 C0 C0
	bra  24.b		; 80 18
	clc		; 18
	clc		; 18
	tsx		; BA
	bvc  22.b		; 50 16
	ldy #$B05E.w		; A0 5E B0
	jmp $00E0.w		; 4C E0 00
	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	clc		; 18
	jsr ($7C18.w,X)		; FC 18 7C
	tsb $B8.b		; 04 B8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	.db $82, $00, $8D		; 82 00 8D
	brk $D1.b		; 00 D1
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	stx $800E.w		; 8E 0E 80
	bra -64.b		; 80 C0
	sbc $01FF82.l,X		; FF 82 FF 01
	sbc $A07F40.l,X		; FF 40 7F A0
	lda $D85F50.l,X		; BF 50 5F D8
	cmp $E4C388.l		; CF 88 C3 E4
	tsb $99.b		; 04 99
	ora ($7A.b),Y		; 11 7A
	.db $42, $1D		; 42 1D
	cmp ($8C.b,X)		; C1 8C
	cpx #$F145.w		; E0 45 F1
	.db $82, $F8, $00		; 82 F8 00
	jsr ($CAEF.w,X)		; FC EF CA
	pea $7A87.w		; F4 87 7A
	ora ($64.b,X)		; 01 64
	ora $38.b,S		; 03 38
	stx $22.b		; 86 22
	inc $FC04.w		; EE 04 FC
	trb $D2E0.w		; 1C E0 D2
.ACCU 16
.INDEX 16
	rep #$7A		; C2 7A
	cop $FE.b		; 02 FE
	brk $FE.b		; 00 FE
	inc A		; 1A
	jsr ($1885.w,X)		; FC 85 18
	phd		; 0B
	cpy #$40C6.w		; C0 C6 40
	lsr $0000.w,X		; 5E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	ora ($39.b,X)		; 01 39
	cop $7A.b		; 02 7A
	and ($D5.b,X)		; 21 D5
	adc ($AE.b)		; 72 AE
	sbc $6D.b,X		; F5 6D
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $180D.w		; 0E 0D 18
	tas		; 1B
	bmi  39.b		; 30 27
	adc ($6B.b),Y		; 71 6B
	pea $F2D5.w		; F4 D5 F2
	bcc   0.b		; 90 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	ora $03.b		; 05 03
	asl $04.b		; 06 04
	phd		; 0B
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora [$05.b]		; 07 05
	trb $38FF.w		; 1C FF 38
	cmp $FEAF70.l,X		; DF 70 AF FE
	adc $F7FC.w,Y		; 79 FC F7
	cpx $0C97.w		; EC 97 0C
	sbc $BFEE1D.l,X		; FF 1D EE BF
	and ($7E.b,X)		; 21 7E
	.db $62, $FC, $D4		; 62 FC D4
	inc $FD86.w,X		; FE 86 FD
	php		; 08
	sbc $BE78.w,X		; FD 78 BE
	ldy #$D1FF.w		; A0 FF D1
	tsb $10F3.w		; 0C F3 10
	sbc $04.b,S		; E3 04
	sbc $DF1E.w		; ED 1E DF
	asl $0FDE.w		; 0E DE 0F
	inc $EF06.w		; EE 06 EF
	ora [$FF.b]		; 07 FF
	trb $310C.w		; 1C 0C 31
	trb $1EA1.w		; 1C A1 1E
	sta $8E3E.w		; 8D 3E 8E
	and $461F46.l,X		; 3F 46 1F 46
	ora $CC0F52.l,X		; 1F 52 0F CC
	eor $EB22.w,Y		; 59 22 EB
	trb $F7.b		; 14 F7
	php		; 08
	sbc $24DF20.l,X		; FF 20 DF 24
	stp		; DB
	bit $DB.b		; 24 DB
	rol $59.b		; 26 59
	brk $FF.b		; 00 FF
	jsr $553E.w		; 20 3E 55
	trb $084B.w		; 1C 4B 08
	adc $20.b,S		; 63 20
	sbc $ED24.w		; ED 24 ED
	bit $6E.b		; 24 6E
	ldx $81.b		; A6 81
	cpx $FEC3.w		; EC C3 FE
	cpx #$011E.w		; E0 1E 01
	cmp $01.b,S		; C3 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $C7.b		; 00 C7
	mvp $30,$F1		; 44 F1 30
	sbc $E2.b,S		; E3 E2
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  48.b		; 80 30
	ldy #$C038.w		; A0 38 C0
	clc		; 18
	beq  28.b		; F0 1C
	beq  28.b		; F0 1C
	beq  22.b		; F0 16
	ldy $5886.w,X		; BC 86 58
	cmp $E0.b,S		; C3 E0
	jsr $10D0.w		; 20 D0 10
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	cpx $EC0C.w		; EC 0C EC
	tsb $7A.b		; 04 7A
	cop $BE.b		; 02 BE
	.db $82, $18, $26		; 82 18 26
	bit $2C26.w,X		; 3C 26 2C
	jsl $00220C.l		; 22 0C 22 00
	and $0C2B1C.l,X		; 3F 1C 2B 0C
	and $1C1E00.l,X		; 3F 00 1E 1C
	tsb $18.b		; 04 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $02.b		; 00 02
	brk $1E.b		; 00 1E
	trb $0E.b		; 14 0E
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tas		; 1B
	php		; 08
	tas		; 1B
	trb $1E.b		; 14 1E
	trb $083E.w		; 1C 3E 08
	lsr $4C30.w,X		; 5E 30 4C
	bmi  76.b		; 30 4C
	sei		; 78
	jmp $0004.w		; 4C 04 00
	asl $02.b		; 06 02
	bpl   0.b		; 10 00
	trb $2800.w		; 1C 00 28
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra 120.b		; 80 78
	cpx #$F0DC.w		; E0 DC F0
	jsr ($F4D8.w,X)		; FC D8 F4
	bvc -68.b		; 50 BC
	ldy #$0058.w		; A0 58 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	ldy #$28F8.w		; A0 F8 28
	sed		; F8
	brk $F8.b		; 00 F8
	plp		; 28
	clc		; 18
	bra  16.b		; 80 10
	bvc   0.b		; 50 00
	ora $0500.w		; 0D 00 05
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $09.b		; 00 09
	brk $1B.b		; 00 1B
	brk $67.b		; 00 67
	brk $87.b		; 00 87
	ora ($5E.b,X)		; 01 5E
	ora #$1037.w		; 09 37 10
	and $065F2C.l		; 2F 2C 5F 06
	asl $04.b		; 06 04
	tsb $19.b		; 04 19
	ora $7879.w,Y		; 19 79 78
	and $21.b		; 25 21
	ora $101908.l		; 0F 08 19 10
	bit $0020.w,X		; 3C 20 00
	sbc $7FD93E.l,X		; FF 3E D9 7F
	lda $EE6FFF.l,X		; BF FF 6F EE
	cmp $FFFFCC.l,X		; DF CC FF FF
	sbc $2F.b,S		; E3 2F
	stp		; DB
	ror $FF42.w,X		; 7E 42 FF
	ldx $FF.b		; A6 FF
	rti		; 40

	sbc $21FF90.l,X		; FF 90 FF 21
	sbc $00E011.l,X		; FF 11 E0 00
	iny		; C8
	clc		; 18
	ora [$00.b]		; 07 00
	eor $01.b,S		; 43 01
	sty $03.b		; 84 03
	lda $039F00.l,X		; BF 00 9F 03
	sta $4EBF07.l		; 8F 07 BF 4E
	stz $00BC.w,X		; 9E BC 00
	inc $BE01.w,X		; FE 01 BE
	ora $78.b,S		; 03 78
	brk $78.b		; 00 78
	ora $FB.b,S		; 03 FB
	asl $F7.b		; 06 F7
	tsb $08CF.w		; 0C CF 08
	sbc $E402F0.l,X		; FF F0 02 E4
	.db $82, $8C, $06		; 82 8C 06
	jmp.w [$BC00]		; DC 00 BC
	bpl -20.b		; 10 EC
	jsr $440C.w		; 20 0C 44
	tsb $00EE.w		; 0C EE 00
	jmp ($3880.w,X)		; 7C 80 38
	brk $70.b		; 00 70
	tsb $0C20.w		; 0C 20 0C
	rti		; 40

	trb $3800.w		; 1C 00 38
	bra  48.b		; 80 30
	jsr $1D03.w		; 20 03 1D
	ora [$3B.b]		; 07 3B
	ora ($7F.b,X)		; 01 7F
	brk $8F.b		; 00 8F
	ora ($1E.b,X)		; 01 1E
	ora [$7B.b]		; 07 7B
	ora $FF3EEE.l,X		; 1F EE 3E FF
	ora $141F0A.l		; 0F 0A 1F 14
	and ($20.b,X)		; 21 20
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $517F14.l,X		; 1F 14 7F 51
	sbc $F9E380.l,X		; FF 80 E3 F9
	inc $E4D9.w		; EE D9 E4
	ora ($5C.b),Y		; 11 5C
	lda ($C8.b)		; B2 C8
	jsl $306498.l		; 22 98 64 30
	sbc $21.b		; E5 21
	jsr ($18FE.w,X)		; FC FE 18
	sbc [$21.b]		; E7 21
	inc $CEE0.w		; EE E0 CE
	eor $DC.b,S		; 43 DC
	cmp ($9C.b,X)		; C1 9C
	sta [$98.b]		; 87 98
	ora $80.b,S		; 03 80
	sta $00.b,S		; 83 00
	ora $000E00.l		; 0F 00 0E 00
	tsb $0900.w		; 0C 00 09
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $79DA.w,X		; 3D DA 79
	ldx $7EF9.w,Y		; BE F9 7E
	sbc $FBFF.w,Y		; F9 FF FB
	sbc $F3.b,X		; F5 F3
	adc $FF61.w		; 6D 61 FF
	adc ($BF.b,X)		; 61 BF
	sbc $41FDA7.l,X		; FF A7 FD 41
	sbc $FB85.w,X		; FD 85 FB
	cop $FB.b		; 02 FB
	asl A		; 0A
	sbc $08FB96.l,X		; FF 96 FB 08
	sbc ($D0.b,S),Y		; F3 D0
	ora $F7.b,S		; 03 F7
	sta $7F.b,S		; 83 7F
	cmp ($BB.b,X)		; C1 BB
	sbc ($DF.b,X)		; E1 DF
	beq -19.b		; F0 ED
	sbc ($EC.b),Y		; F1 EC
	sbc $F9F5.w,Y		; F9 F5 F9
	sbc $53.b,X		; F5 53
	ora $E18799.l		; 0F 99 87 E1
	eor [$F0.b]		; 47 F0
	and $F8.b,S		; 23 F8
	ora ($F8.b,S),Y		; 13 F8
	ora ($F9.b,S),Y		; 13 F9
	phd		; 0B
	sbc $360B.w,Y		; F9 0B 36
	eor #$4CB3.w		; 49 B3 4C
	and ($8D.b)		; 32 8D
	bra -33.b		; 80 DF
	cmp $C8.b,S		; C3 C8
	sbc $E8.b,S		; E3 E8
	cmp ($F4.b,S),Y		; D3 F4
	cmp ($D4.b),Y		; D1 D4
	ror $77B6.w,X		; 7E B6 77
	lda ($36.b,S),Y		; B3 36
	sbc ($00.b)		; F2 00
	cpx #$F88F.w		; E0 8F F8
	sbc [$F0.b]		; E7 F0
	cmp [$FC.b],Y		; D7 FC
	cmp [$FC.b],Y		; D7 FC
	rol $3CE1.w		; 2E E1 3C
	sbc ($46.b),Y		; F1 46
	cmp ($90.b,S),Y		; D3 90
	txy		; 9B
	stz $06.b		; 64 06
	sed		; F8
	asl $0CE0.w		; 0E E0 0C
	bne  24.b		; D0 18
	stz $4E80.w,X		; 9E 80 4E
	rti		; 40

	ldy $6E90.w,X		; BC 90 6E
	asl A		; 0A
	sed		; F8
	brk $F4.b		; 00 F4
	tsb $F8.b		; 04 F8
	php		; 08
	cpx #$0000.w		; E0 00 00
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
	inc $7F80.w,X		; FE 80 7F
	brk $FF.b		; 00 FF
	tsb $FD.b		; 04 FD
	stx $8C4E.w		; 8E 4E 8C
	lsr $1ECC.w,X		; 5E CC 1E
	jmp $20BC.w		; 4C BC 20
	jsr $809C.w		; 20 9C 80
	ora ($00.b)		; 12 00
	rti		; 40

	asl $BF8C.w		; 0E 8C BF
	sty $CCBF.w		; 8C BF CC
	inc $5EC8.w,X		; FE C8 5E
	jmp $5CBC.w		; 4C BC 5C
	ldy $EC08.w		; AC 08 EC
	iny		; C8
	bit $2CF8.w		; 2C F8 2C
	cld		; D8
	trb $1CFC.w		; 1C FC 1C
	cpx $C83E.w		; EC 3E C8
	lsr $5C48.w,X		; 5E 48 5C
	plp		; 28
	bit $3CE8.w,X		; 3C E8 3C
	cpy #$C81C.w		; C0 1C C8
	rol $3ED8.w,X		; 3E D8 3E
	cpx STAT77.w		; EC 3E 21
	cmp [$01.b],Y		; D7 01
	adc [$01.b],Y		; 77 01
	.db $62, $00, $23		; 62 00 23
	brk $21.b		; 00 21
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $22.b,S		; 63 22
	adc $42.b,S		; 63 42
	and ($21.b,X)		; 21 21
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F8D5.w,Y		; F9 D5 F8
	dec $FED9.w,X		; DE D9 FE
	cld		; D8
	inc $7FCD.w		; EE CD 7F
	eor $04B7.w		; 4D B7 04
	xce		; FB
	brk $EF.b		; 00 EF
	sbc $FA2B.w,Y		; F9 2B FA
	and $FB.b,S		; 23 FB
	cop $FF.b		; 02 FF
	and ($DC.b)		; 32 DC
	bra -20.b		; 80 EC
	pla		; 68
	sbc $4DA5.w		; ED A5 4D
	eor #$4643.w		; 49 43 46
	lda ($1B.b),Y		; B1 1B
	cpx #$E00B.w		; E0 0B E0
	ora #$09E0.w		; 09 E0 09
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	beq  14.b		; F0 0E
	adc ($D8.b,X)		; 61 D8
	ldx #$F142.w		; A2 42 F1
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	tsb $DE.b		; 04 DE
	asl $04FC.w		; 0E FC 04
	stz $04.b,X		; 74 04
	jsr ($3882.w,X)		; FC 82 38
	.db $82, $7C, $C6		; 82 7C C6
	clc		; 18
	cmp $3A.b,S		; C3 3A
	adc $C4.b,S		; 63 C4
	rol $0EF4.w,X		; 3E F4 0E
	beq  12.b		; F0 0C
	sei		; 78
	tsb $F8.b		; 04 F8
	sty $38.b		; 84 38
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $1E.b		; 00 1E
	eor $38.b,S		; 43 38
	eor $34.b,S		; 43 34
	lsr $78.b		; 46 78
	jmp $CC60.w		; 4C 60 CC
	bmi -104.b		; 30 98
	brk $98.b		; 00 98
	ldy #$3DB0.w		; A0 B0 3D
	ora ($3E.b,X)		; 01 3E
	cop $78.b		; 02 78
	rti		; 40

	bit $04.b,X		; 34 04
	sec		; 38
	php		; 08
	rts		; 60

	brk $F0.b		; 00 F0
	bcc  64.b		; 90 40
	brk $10.b		; 00 10
	sed		; F8
	bmi 120.b		; 30 78
	jsr $0878.w		; 20 78 08
	jmp ($4400.w,X)		; 7C 00 44
	tsb $26.b		; 04 26
	tsb $002E.w		; 0C 2E 00
	and $304050.l		; 2F 50 40 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $12.b		; 00 12
	brk $0F.b		; 00 0F
	sec		; 38
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora [$10.b],Y		; 17 10
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	cpy #$8060.w		; C0 60 80
	jsr $2080.w		; 20 80 20
	cpy #$4020.w		; C0 20 40
	bmi   0.b		; 30 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $08.b		; 00 08
	jmp $5C18.w		; 4C 18 5C
	brk $5E.b		; 00 5E
	clc		; 18
	ror $7E18.w,X		; 7E 18 7E
	php		; 08
	ror $3C00.w,X		; 7E 00 3C
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	jsr $2400.w		; 20 00 24
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	adc $66ED76.l,X		; 7F 76 ED 66
	lda $DD26.w,X		; BD 26 DD
	cop $7D.b		; 02 7D
	cop $75.b		; 02 75
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	inc $FE80.w,X		; FE 80 FE
	inc A		; 1A
	sbc [$C3.b],Y		; F7 C3
	adc [$33.b],Y		; 77 33
	adc $43.b,S		; 63 43
	and $23.b,S		; 23 23
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sei		; 78
	.db $82, $38, $82		; 82 38 82
	sei		; 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	cmp $3C.b,S		; C3 3C
	cmp $5D.b,S		; C3 5D
	cmp $79.b,S		; C3 79
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	bra  -4.b		; 80 FC
	bra  60.b		; 80 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($3D40.w,X)		; 7C 40 3D
	brk $9D.b		; 00 9D
	sta ($1D.b,X)		; 81 1D
	cmp ($3F.b,X)		; C1 3F
	rts		; 60

	asl $1F60.w		; 0E 60 1F
	and ($06.b),Y		; 31 06
	bmi  14.b		; 30 0E
	clc		; 18
	ora $98.b,S		; 03 98
	sta [$CC.b]		; 87 CC
	jmp ($1E43.w,X)		; 7C 43 1E
	ora ($3E.b,X)		; 01 3E
	and ($0E.b,X)		; 21 0E
	brk $1F.b		; 00 1F
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	php		; 08
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	rti		; 40

	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	ldy #$20.b		; A0 20
	asl $0D17.w		; 0E 17 0D
	asl $3F03.w,X		; 1E 03 3F
	ora [$3F.b]		; 07 3F
	ora $3E0F37.l		; 0F 37 0F 3E
	tsb $187F.w		; 0C 7F 18
	adc $1F191F.l,X		; 7F 1F 19 1F
	ora $1F.b,S		; 03 1F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $011F18.l,X		; 1F 18 1F 01
	and $003C21.l,X		; 3F 21 3C 00
	bvs -65.b		; 70 BF
	beq -17.b		; F0 EF
	cpx #$DF.b		; E0 DF
	iny		; C8
	lda $1E7F9C.l,X		; BF 9C 7F 1E
	sbc $FF3A.w,X		; FD 3A FF
	adc ($FE.b,S),Y		; 73 FE
	jsr ($FC40.w,X)		; FC 40 FC
	trb $FA.b		; 14 FA
	plp		; 28
	plx		; FA
	rti		; 40

	jsr ($FEA0.w,X)		; FC A0 FE
	.db $42, $7E		; 42 7E
	brk $FF.b		; 00 FF
	ora $80.b		; 05 80
	ora $787720.l		; 0F 20 77 78
	adc [$30.b],Y		; 77 30
	tda		; 7B
	sec		; 38
	lda $1CFF18.l,X		; BF 18 FF 1C
	cmp $FD0E.w,X		; DD 0E FD
	.db $82, $F0, $06		; 82 F0 06
	sed		; F8
	bit $F8.b		; 24 F8
	and ($FC.b),Y		; 31 FC
	sta ($7C.b),Y		; 91 7C
	sta $893C.w,Y		; 99 3C 89
	rol $1E2D.w,X		; 3E 2D 1E
	pha		; 48
	tad		; 5B
	lda ($36.b),Y		; B1 36
	eor #$86.b		; 49 86
	eor #$B6.b		; 49 B6
	pha		; 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	cpy $3B.b		; C4 3B
	cpy $3B.b		; C4 3B
	lsr A		; 4A
	jsr ($F9B3.w,X)		; FC B3 F9
	wai		; CB
	adc $49DB.w,Y		; 79 DB 49
	stp		; DB
	pha		; 48
	cmp $DD44.w,X		; DD 44 DD
	cpy $DD.b		; C4 DD
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	trb $3F07.w		; 1C 07 3F
	ora $00007E.l		; 0F 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $101F0B.l		; 0F 0B 1F 10
	and $3F0221.l,X		; 3F 21 02 3F
	brk $7F.b		; 00 7F
	ora $F5.b		; 05 F5
	asl A		; 0A
	nop		; EA
	sta $75.b		; 85 75
	tas		; 1B
	xce		; FB
	stz $9867.w,X		; 9E 67 98
	cpy $1E.b		; C4 1E
	clc		; 18
	and $6031.w,Y		; 39 31 60
	and $851FC2.l		; 2F C2 1F 85
	sta $B88782.l		; 8F 82 87 B8
	lda $BC.b,S		; A3 BC
	ora [$0B.b]		; 07 0B
	sbc $01FC05.l,X		; FF 05 FC 01
	jsr ($FE80.w,X)		; FC 80 FE
	rti		; 40

	adc $203F60.l,X		; 7F 60 3F 20
	ora $63001F.l		; 0F 1F 00 63
	eor $EB.b,S		; 43 EB
	php		; 08
	adc [$04.b],Y		; 77 04
	and ($82.b,S),Y		; 33 82
	trb $C4.b		; 14 C4
	phd		; 0B
	sbc $01.b,S		; E3 01
	sbc ($00.b),Y		; F1 00
	sbc $28BC.w,Y		; F9 BC 28
	inx		; E8
	tsb $90.b		; 04 90
	tsb $1880.w		; 0C 80 18
	dey		; 88
	clv		; B8
	bpl -16.b		; 10 F0
	bvs -128.b		; 70 80
	cpy #$08.b		; C0 08
	pha		; 48
	php		; 08
	sed		; F8
	brk $F8.b		; 00 F8
	pla		; 68
	beq 116.b		; F0 74
	rts		; 60

	bit $1800.w		; 2C 00 18
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	bit $0E63.w,X		; 3C 63 0E
	and $1C.b,S		; 23 1C
	and ($04.b),Y		; 31 04
	ora ($0E.b),Y		; 11 0E
	ora $0902.w,Y		; 19 02 09
	ora ($0F.b,X)		; 01 0F
	ora $07.b,S		; 03 07
	asl $3C02.w,X		; 1E 02 3C
	jsr $000E.w		; 20 0E 00
	asl $0610.w,X		; 1E 10 06
	brk $0E.b		; 00 0E
	php		; 08
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	asl A		; 0A
	ora $041F0E.l		; 0F 0E 1F 04
	and $182618.l		; 2F 18 26 18
	rol $3C.b		; 26 3C
	rol $2C.b		; 26 2C
	jsl $08220C.l		; 22 0C 22 08
	brk $0E.b		; 00 0E
	brk $14.b		; 00 14
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $58.b		; 00 58
	mvp $44,$18		; 44 18 44
	brk $7E.b		; 00 7E
	sec		; 38
	lsr $18.b,X		; 56 18
	ror $3C00.w,X		; 7E 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $04.b		; 00 04
	brk $3C.b		; 00 3C
	plp		; 28
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $1300.w		; 0E 00 13
	brk $11.b		; 00 11
	brk $27.b		; 00 27
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $0E0C.w		; 0E 0C 0E
	asl $1919.w		; 0E 19 19
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora [$04.b]		; 07 04
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sty $20A7.w		; 8C A7 20
	and [$C8.b],Y		; 37 C8
	ora $1CF0.w		; 0D F0 1C
	cpy #$18.b		; C0 18
	ldy #$30.b		; A0 30
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	adc $DD20.w,Y		; 79 20 DD
	ora $F0.b,X		; 15 F0
	brk $E8.b		; 00 E8
	php		; 08
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	cmp ($6C.b,X)		; C1 6C
	adc $BE.b,S		; 63 BE
	ora $E6.b,S		; 03 E6
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cmp [$84.b]		; C7 84
	sbc $44.b		; E5 44
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  48.b		; 80 30
	cpx #$38.b		; E0 38
	cpx #$38.b		; E0 38
	cpx #$2C.b		; E0 2C
	sei		; 78
	tsb $86B0.w		; 0C B0 86
	jmp ($18C6.w,X)		; 7C C6 18
.ACCU 16
	rep #$E0		; C2 E0
	jsr $10D0.w		; 20 D0 10
	cld		; D8
	clc		; 18
	cld		; D8
	php		; 08
	pea $7C04.w		; F4 04 7C
	tsb $B8.b		; 04 B8
	bra 126.b		; 80 7E
	.db $42, $10		; 42 10
	adc $017F00.l,X		; 7F 00 7F 01
	adc [$03.b],Y		; 77 03
	adc $01.b		; 65 01
	and [$01.b]		; 27 01
	rol $00.b		; 26 00
	ora $00.b,S		; 03 00
	ora $39.b,S		; 03 39
	ora ($31.b,X)		; 01 31
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	jsl $032023.l		; 22 23 20 03
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	ora ($E3.b,X)		; 01 E3
	sbc $C7DFE3.l,X		; FF E3 DF C7
	xce		; FB
	cmp [$BB.b]		; C7 BB
	sta $D78FF7.l		; 8F F7 8F D7
	sta $DF0757.l		; 8F 57 07 DF
	xce		; FB
	php		; 08
	sbc [$30.b],Y		; F7 30
	sbc $64EF0C.l		; EF 0C EF 64
	cmp $48CF08.l		; CF 08 CF 48
	sta $008F88.l		; 8F 88 8F 00
	stx $866F.w		; 8E 6F 86
	inc $B7C2.w,X		; FE C2 B7
	cmp $FD.b,S		; C3 FD
	sbc $DF.b,S		; E3 DF
	sbc $DB.b,S		; E3 DB
.ACCU 8
.INDEX 8
	sep #$BA		; E2 BA
	sbc $BC.b		; E5 BC
	lda $9E.b		; A5 9E
	rep #$0F		; C2 0F
	cpx #$6F.b		; E0 6F
	sbc ($17.b),Y		; F1 17
	sbc ($37.b,S),Y		; F3 37
	sbc ($27.b,S),Y		; F3 27
	beq  71.b		; F0 47
	sbc ($42.b),Y		; F1 42
	cpy $3B.b		; C4 3B
	cmp ($3E.b,X)		; C1 3E
	ora [$70.b]		; 07 70
	cmp [$F0.b]		; C7 F0
	sbc [$F8.b]		; E7 F8
	lda $B8.b,S		; A3 B8
	sta [$9C.b]		; 87 9C
	adc $36.b,S		; 63 36
	jmp.w [$D9C4]		; DC C4 D9
	cpy #$0F.b		; C0 0F
	bra -17.b		; 80 EF
	cpx #$CF.b		; E0 CF
	inx		; E8
	ora $A043E8.l		; 0F E8 43 A0
	eor $84.b		; 45 84
	and $03FF.w,Y		; 39 FF 03
	sbc $1E7807.l,X		; FF 07 78 1E
	sbc [$7E.b]		; E7 7E
	sta $F3FC.w,X		; 9D FC F3
	sed		; F8
	cmp [$70.b]		; C7 70
	sta $7780FB.l		; 8F FB 80 77
	bvc  31.b		; 50 1F
	ora [$7F.b],Y		; 17 7F
	eor $62FE.w,Y		; 59 FE 62
	inc $FC0E.w,X		; FE 0E FC
	bit $70F9.w,X		; 3C F9 70
	lda ($44.b),Y		; B1 44
	dec A		; 3A
	cpy $8822.w		; CC 22 88
	eor ($98.b)		; 52 98
	.db $62, $30, $04		; 62 30 04
	sbc ($00.b),Y		; F1 00
	sbc ($81.b)		; F2 81
	adc $82B8.w,X		; 7D B8 82
	beq -63.b		; F0 C1
	sei		; 78
	ora $87E0.w		; 0D E0 87
	bne  31.b		; D0 1F
	jsr $E02F.w		; 20 2F E0
	and $0F83E4.l		; 2F E4 83 0F
	asl $12.b		; 06 12
	tsb $00FF.w		; 0C FF 00
	ror $3F0C.w,X		; 7E 0C 3F
	trb $39F8.w		; 1C F8 39
	bvs  -9.b		; 70 F7
	plp		; 28
	rtl		; 6B

	asl $F8.b		; 06 F8
	tsb $00E1.w		; 0C E1 00
	cpx #$0C.b		; E0 0C
	sbc $DC18.w		; ED 18 DC
	bmi  62.b		; 30 3E
	adc ($FC.b,X)		; 61 FC
	ora ($FC.b,X)		; 01 FC
	tya		; 98
	php		; 08
	jsr $7000.w		; 20 00 70
	jsr $40B0.w		; 20 B0 40
	bvs -60.b		; 70 C4
	plp		; 28
	sty $DC50.w		; 8C 50 DC
	jsr $00FC.w		; 20 FC 00
	cpx #$18.b		; E0 18
	cpy #$18.b		; C0 18
	bra 120.b		; 80 78
	rti		; 40

	sec		; 38
	brk $70.b		; 00 70
	brk $28.b		; 00 28
	php		; 08
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $34.b		; 00 34
	brk $44.b		; 00 44
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	sed		; F8
	php		; 08
	inc A		; 1A
	and $3C.b,S		; 23 3C
	rol $30.b		; 26 30
	ror $18.b		; 66 18
	jmp $4C00.w		; 4C 00 4C
	bvc -40.b		; 50 D8
	rti		; 40

	cld		; D8
	ldy #$F0.b		; A0 F0
	bit $1A20.w,X		; 3C 20 1A
	cop $1C.b		; 02 1C
	tsb $30.b		; 04 30
	brk $78.b		; 00 78
	pha		; 48
	jsr $3000.w		; 20 00 30
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	tas		; 1B
	brk $67.b		; 00 67
	brk $87.b		; 00 87
	ora ($5E.b,X)		; 01 5E
	ora #$3F.b		; 09 3F
	bpl  47.b		; 10 2F
	bit $185F.w		; 2C 5F 18
	sbc $190404.l,X		; FF 04 04 19
	ora $7879.w,Y		; 19 79 78
	and $25.b		; 25 25
	ora $1900.w		; 0D 00 19
	bpl  62.b		; 10 3E
	jsr $207C.w		; 20 7C 20
	rol $7FD9.w,X		; 3E D9 7F
	lda $EE6FFF.l,X		; BF FF 6F EE
	cmp $D9FFCC.l,X		; DF CC FF D9
	xce		; FB
	and $DB2FE3.l,X		; 3F E3 2F DB
	sbc $40FFA6.l,X		; FF A6 FF 40
	sbc $21FF90.l,X		; FF 90 FF 21
	sbc $04D811.l,X		; FF 11 D8 04
	cpx #$00.b		; E0 00
	dey		; 88
	tya		; 98
	rti		; 40

	ldx $FF00.w,Y		; BE 00 FF
	tsb $ED.b		; 04 ED
	stx $8C6E.w		; 8E 6E 8C
	lsr $1CDC.w,X		; 5E DC 1C
	jmp $FC18BC.l		; 5C BC 18 FC
	cpy $4240.w		; CC 40 42
	brk $40.b		; 00 40
	asl $9F8C.w,X		; 1E 8C 9F
	sty $CCBF.w		; 8C BF CC
	inc $7ED8.w,X		; FE D8 7E
	tya		; 98
	bit $D858.w,X		; 3C 58 D8
	cld		; D8
	cld		; D8
	bne  80.b		; D0 50
	bcc  48.b		; 90 30
	sed		; F8
	sec		; 38
	cld		; D8
	sei		; 78
	clv		; B8
	clc		; 18
	sed		; F8
	php		; 08
	clc		; 18
	bit $3C10.w,X		; 3C 10 3C
	bra  56.b		; 80 38
	bcc 120.b		; 90 78
	bcs 120.b		; B0 78
	cld		; D8
	sei		; 78
	dey		; 88
	jmp ($1CE8.w,X)		; 7C E8 1C
	jsr $1098.w		; 20 98 10
	sed		; F8
	bmi 120.b		; 30 78
	jsr $0878.w		; 20 78 08
	jmp ($4400.w,X)		; 7C 00 44
	tsb $26.b		; 04 26
	tsb $E02E.w		; 0C 2E E0
	bra  80.b		; 80 50
	rti		; 40

	bmi   0.b		; 30 00
	jsr $0000.w		; 20 00 00
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $1B07.w		; 0E 07 1B
	ora $000037.l		; 0F 37 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $181F0C.l		; 0F 0C 1F 18
	brk $E0.b		; 00 E0
	bra 120.b		; 80 78
	cpx #$DC.b		; E0 DC
	beq  -4.b		; F0 FC
	cld		; D8
	pea $FC10.w		; F4 10 FC
	rti		; 40

	clv		; B8
	ldy #$40.b		; A0 40
	bra -128.b		; 80 80
	cpx #$A0.b		; E0 A0
	sed		; F8
	plp		; 28
	sed		; F8
	brk $F8.b		; 00 F8
	plp		; 28
	sei		; 78
	rti		; 40

	bpl -112.b		; 10 90
	brk $40.b		; 00 40
	brk $39.b		; 00 39
	brk $11.b		; 00 11
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	jmp $185E00.l		; 5C 00 5E 18
	ror $7E18.w,X		; 7E 18 7E
	php		; 08
	ror $3C00.w,X		; 7E 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2400.w		; 20 00 24
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	eor $0E5B26.l,X		; 5F 26 5B 0E
	adc [$0E.b],Y		; 77 0E
	adc $1E6F1E.l,X		; 7F 1E 6F 1E
	and $3E3F1E.l,X		; 3F 1E 3F 3E
	eor $6F787F.l,X		; 5F 7F 78 6F
	stz $5F.b		; 64 5F
	cli		; 58
	eor $313F41.l,X		; 5F 41 3F 31
	and $003F21.l,X		; 3F 21 3F 00
	and $FE3C20.l,X		; 3F 20 3C FE
	clc		; 18
	jsr ($F108.w,X)		; FC 08 F1
	ora $FE.b,S		; 03 FE
	lsr $44FD.w		; 4E FD 44
	xce		; FB
	cpx #$FF.b		; E0 FF
	cpx #$FF.b		; E0 FF
	stz $80BF.w		; 9C BF 80
	sta $E3CEC0.l,X		; 9F C0 CE E3
	lda ($EE.b,X)		; A1 EE
	cop $F5.b		; 02 F5
	trb $FB.b		; 14 FB
	asl A		; 0A
	sbc [$04.b],Y		; F7 04
	and $077F1F.l,X		; 3F 1F 7F 07
	ora $FE07F9.l,X		; 1F F9 07 FE
	ora ($FF.b,X)		; 01 FF
	bpl -17.b		; 10 EF
	ora ($ED.b)		; 12 ED
	cop $FD.b		; 02 FD
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	php		; 08
	ora $D10F42.l,X		; 1F 42 0F D1
	eor $F4.b,S		; 43 F4
	bvc -74.b		; 50 B6
	sta ($F6.b)		; 92 F6
	sta ($E0.b)		; 92 E0
	cpy #$E0.b		; C0 E0
	cpy #$C0.b		; C0 C0
	ldy #$C0.b		; A0 C0
	rts		; 60

	ldy #$D0.b		; A0 D0
	jsr $10D0.w		; 20 D0 10
	inx		; E8
	bpl -24.b		; 10 E8
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	ldy #$A0.b		; A0 A0
	rts		; 60

	jsr $50F0.w		; 20 F0 50
	bcs  16.b		; B0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	ora $183F.w		; 0D 3F 18
	ror $FD31.w,X		; 7E 31 FD
	rts		; 60

	inc $7DE4.w,X		; FE E4 7D
	cmp $F9.b,S		; C3 F9
	ora [$00.b]		; 07 00
	asl $1C00.w		; 0E 00 1C
	ora ($38.b,X)		; 01 38
	ora $78.b,S		; 03 78
	phd		; 0B
	sbc ($13.b)		; F2 13
	sbc $81.b,S		; E3 81
	inc $0108.w		; EE 08 01
	sbc ($00.b,S),Y		; F3 00
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	bra  -2.b		; 80 FE
	rti		; 40

	adc $7E87B8.l,X		; 7F B8 87 7E
	eor ($21.b,X)		; 41 21
	bra -98.b		; 80 9E
	stx $7F.b,Y		; 96 7F
	phd		; 0B
	sbc $E47DC4.l,X		; FF C4 7D E4
	asl $86D2.w,X		; 1E D2 86
	dec $00.b		; C6 00
	dec $DE80.w,X		; DE 80 DE
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	dey		; 88
	sei		; 78
	sty $7C.b		; 84 7C
	tsb $7C.b		; 04 7C
	tsb $FE.b		; 04 FE
	jmp ($C886.w,X)		; 7C 86 C8
	sta $C0.b		; 85 C0
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	plp		; 28
	bcs  52.b		; B0 34
	ldy $14.b,X		; B4 14
	ldy $94.b,X		; B4 94
	cop $36.b		; 02 36
	.db $82, $34, $00		; 82 34 00
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
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	sbc $1F1F06.l,X		; FF 06 1F 1F
	and $247F13.l,X		; 3F 13 7F 24
	sbc $000000.l,X		; FF 00 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $EF.b		; 00 EF
	cpx #$DF.b		; E0 DF
	cpy #$BF.b		; C0 BF
	bra 119.b		; 80 77
	brk $C0.b		; 00 C0
	iny		; C8
	brk $08.b		; 00 08
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	phd		; 0B
	sta [$3F.b]		; 87 3F
	sta $BAFEFD.l,X		; 9F FD FE BA
	jsr ($F008.w,X)		; FC 08 F0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra -121.b		; 80 87
	brk $7F.b		; 00 7F
	stz $F87F.w,X		; 9E 7F F8
	adc $403E80.l,X		; 7F 80 3E 40
	clc		; 18
	asl $061F.w		; 0E 1F 06
	ora $000F02.l,X		; 1F 02 0F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $1E.b		; 00 1E
	bpl  14.b		; 10 0E
	brk $0E.b		; 00 0E
	php		; 08
	asl $04.b		; 06 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	sbc $38FF28.l,X		; FF 28 FF 38
	sbc $08FF18.l,X		; FF 18 FF 08
	adc $003F00.l,X		; 7F 00 3F 00
	ora $EE0F00.l,X		; 1F 00 0F EE
	stx $6C.b		; 86 6C
	tsb $7C.b		; 04 7C
	mvp $04,$3C		; 44 3C 04
	bit $1C24.w,X		; 3C 24 1C
	trb $0C.b		; 14 0C
	php		; 08
	asl $04.b		; 06 04
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	beq -32.b		; F0 E0
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$60.b		; E0 60
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rts		; 60

	cpx #$F0.b		; E0 F0
	bcs  -8.b		; B0 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jmp ($02FF.w,X)		; 7C FF 02
	sta $3E.b,S		; 83 3E
	sta $3C.b,S		; 83 3C
	sta ($3C.b,X)		; 81 3C
	sta ($3C.b,X)		; 81 3C
	sta ($3C.b,X)		; 81 3C
	sta ($7C.b,X)		; 81 7C
	cmp ($82.b,X)		; C1 82
	.db $82, $FC, $80		; 82 FC 80
	jsr ($FE80.w,X)		; FC 80 FE
	bra  -2.b		; 80 FE
	bra  -2.b		; 80 FE
	bra  -2.b		; 80 FE
	bra  62.b		; 80 3E
	brk $3E.b		; 00 3E
	eor $3F7F3F.l,X		; 5F 3F 7F 3F
	adc $3F7F3F.l,X		; 7F 3F 7F 3F
	and $1E3F1E.l,X		; 3F 1E 3F 1E
	and $3F3F0E.l,X		; 3F 0E 3F 3F
	jsr $003F.w		; 20 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $001E21.l,X		; 3F 21 1E 00
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	cpy $FB.b		; C4 FB
	cpx $FB.b		; E4 FB
	cpx #$E0FF.w		; E0 FF E0
	sbc $68FFE0.l,X		; FF E0 FF 68
	sbc $DF0BEF.l,X		; FF EF 0B DF
	ora ($DE.b,S),Y		; 13 DE
	asl $EF.b		; 06 EF
	asl $E5.b		; 06 E5
	brk $E1.b		; 00 E1
	brk $E4.b		; 00 E4
	tsb $EE.b		; 04 EE
	asl $22.b		; 06 22
	cmp $DD22.w,X		; DD 22 DD
	jsl $BD42DD.l		; 22 DD 42 BD
	lsr $B9.b		; 46 B9
	lsr $B9.b		; 46 B9
	lsr $B9.b		; 46 B9
	brk $FF.b		; 00 FF
	ror $EE32.w,X		; 7E 32 EE
	jsl $EF23EF.l		; 22 EF 23 EF
	adc $FF.b,S		; 63 FF
	adc [$DE.b]		; 67 DE
	lsr $5E.b		; 46 5E
	lsr $80.b		; 46 80
	bra  72.b		; 80 48
	ldy $48.b,X		; B4 48
	ldy $44.b,X		; B4 44
	tsx		; BA
	stz $9A.b		; 64 9A
	jsr $20DC.w		; 20 DC 20
	cld		; D8
	bpl  -8.b		; 10 F8
	brk $C8.b		; 00 C8
	sed		; F8
	pla		; 68
	cld		; D8
	pha		; 48
	jmp.w [$FC54]		; DC 54 FC
	stz $E0.b,X		; 74 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$3000.w		; C0 00 30
	brk $03.b		; 00 03
	ora $1B07.w		; 0D 07 1B
	asl $1C37.w		; 0E 37 1C
	and $317F18.l		; 2F 18 7F 31
	lsr $5D23.w,X		; 5E 23 5D
	lsr $BB.b		; 46 BB
	ora [$06.b]		; 07 06
	ora $191F0C.l		; 0F 0C 1F 19
	and $043D32.l,X		; 3F 32 3D 04
	tda		; 7B
	adc #$3277.w		; 69 77 32
	adc $F98F4C.l		; 6F 4C 8F F9
	asl $F3.b		; 06 F3
	ora $0AF6.w,X		; 1D F6 0A
	sbc $F31D.w		; ED 1D F3
	eor ($AF.b,S),Y		; 53 AF
	tda		; 7B
	lda $E6FF7B.l,X		; BF 7B FF E6
	jsr $50DC.w		; 20 DC 50
	dex		; CA
	eor $B4.b,S		; 43 B4
	and [$A1.b]		; 27 A1
	lda $43DFC3.l		; AF C3 DF 43
	adc $207F38.l,X		; 7F 38 7F 20
	bra  39.b		; 80 27
	bra  -1.b		; 80 FF
	rts		; 60

	sbc $C0F1A0.l,X		; FF A0 F1 C0
	sbc ($E1.b,S),Y		; F3 E1
	lda $BF3FF3.l,X		; BF F3 3F BF
	brk $5F.b		; 00 5F
	brk $58.b		; 00 58
	rts		; 60

.ACCU 8
	sep #$A0		; E2 A0
	inc $EEC0.w		; EE C0 EE
	lda ($ED.b,X)		; A1 ED
	and ($F3.b,S),Y		; 33 F3
	ora $818EFF.l		; 0F FF 8E 81
	inc $FB80.w,X		; FE 80 FB
	brk $FD.b		; 00 FD
	tsb $52.b		; 04 52
	sta [$E0.b]		; 87 E0
	sta $A0.b,S		; 83 A0
	cmp $80.b,S		; C3 80
	cmp ($87.b,X)		; C1 87
	adc ($87.b),Y		; 71 87
	brk $07.b		; 00 07
	jsr $2003.w		; 20 03 20
	brk $A0.b		; 00 A0
	.db $82, $C2, $80		; 82 C2 80
	cpy #$C080.w		; C0 80 C0
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $11.b		; 00 11
	brk $0D.b		; 00 0D
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	cop $0F.b		; 02 0F
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $020E.w		; 0E 0E 02
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $28.b		; 00 28
	sbc $09F867.l,X		; FF 67 F8 09
	pei ($37.b)		; D4 37
	jmp.w [$D235]		; DC 35 D2
	sta [$70.b],Y		; 97 70
	phd		; 0B
	sed		; F8
	ora $EC.b		; 05 EC
	jmp ($6800.w)		; 6C 00 68
	brk $60.b		; 00 60
	asl $E4.b		; 06 E4
	eor $EC.b		; 45 EC
	.db $42, $CF		; 42 CF
	cpy #$40C7.w		; C0 C7 40
	txy		; 9B
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E2.b		; 00 E2
	cpy #$78FE.w		; C0 FE 78
	inc $FF4C.w,X		; FE 4C FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	plx		; FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $9A.b		; 00 9A
	sbc $68EF12.l,X		; FF 12 EF 68
	asl $70.b		; 06 70
	asl $1CA0.w		; 0E A0 1C
	cpx #$0038.w		; E0 38 00
	bvs -128.b		; 70 80
	jsr $00DE.w		; 20 DE 00
	asl A		; 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$00C0.w		; A0 C0 00
	ora $780FF8.l		; 0F F8 0F 78
	ora [$38.b]		; 07 38
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	eor [$40.b]		; 47 40
	and [$20.b]		; 27 20
	ora $080F08.l		; 0F 08 0F 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $239E08.l		; 0F 08 9E 23
	stz $FC23.w		; 9C 23 FC
	adc $FC.b,S		; 63 FC
	.db $62, $BC, $62		; 62 BC 62
	ldy $BC62.w,X		; BC 62 BC
	.db $62, $28, $62		; 62 28 62
	jsr ($FE20.w,X)		; FC 20 FE
	jsl $9E029E.l		; 22 9E 02 9E
	cop $DE.b		; 02 DE
	.db $42, $DC		; 42 DC
	rti		; 40

	stz $9C00.w		; 9C 00 9C
	brk $7C.b		; 00 7C
	sbc $3E8302.l,X		; FF 02 83 3E
	sta $3C.b,S		; 83 3C
	sta ($3C.b,X)		; 81 3C
	sta ($3C.b,X)		; 81 3C
	sta ($3C.b,X)		; 81 3C
	sta ($7C.b,X)		; 81 7C
	cmp ($82.b,X)		; C1 82
	.db $82, $FC, $80		; 82 FC 80
	jsr ($FE80.w,X)		; FC 80 FE
	bra  -2.b		; 80 FE
	bra  -2.b		; 80 FE
	bra  -2.b		; 80 FE
	bra  62.b		; 80 3E
	brk $C0.b		; 00 C0
	iny		; C8
	brk $08.b		; 00 08
	cpx #$E008.w		; E0 08 E0
	php		; 08
	cpx #$F008.w		; E0 08 F0
	clc		; 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $0F1F07.l		; 0F 07 1F 0F
	asl $3B1C.w,X		; 1E 1C 3B
	bpl  63.b		; 10 3F
	jsr $001B.w		; 20 1B 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $051F11.l,X		; 1F 11 1F 05
	bit $3104.w,X		; 3C 04 31
	jsr $FB3C.w		; 20 3C FB
	adc $ECF3.w,X		; 7D F3 EC
	inc $DC.b,X		; F6 DC
	sbc $3AFD1A.l		; EF 1A FD 3A
	cmp $BD78.w,X		; DD 78 BD
	sed		; F8
	stz $7E.b,X		; 74 7E
	eor $FC.b		; 45 FC
	ora $09FC.w		; 0D FC 09
	jsr ($F831.w,X)		; FC 31 F8
	eor $78.b,S		; 43 78
	and $F8.b,S		; 23 F8
	eor $FC.b,S		; 43 FC
	sta $F8FAF0.l		; 8F F0 FA F8
	sbc $7E1C.w,X		; FD 1C 7E
	inc $B78F.w		; EE 8F B7
	sta [$5B.b]		; 87 5B
	cmp [$29.b]		; C7 29
	sbc $14.b,S		; E3 14
	adc ($F1.b),Y		; 71 F1
	sbc $FE78.w,X		; FD 78 FE
	tsb $66FF.w		; 0C FF 66
	ora $B90F73.l,X		; 1F 73 0F B9
	sta [$18.b]		; 87 18
	ora [$0C.b]		; 07 0C
	sta $07.b,S		; 83 07
	and [$DB.b]		; 27 DB
	and [$41.b]		; 27 41
	txy		; 9B
	tsb $5D.b		; 04 5D
	ora $BE.b,S		; 03 BE
	bra -34.b		; 80 DE
	cpy #$C8EB.w		; C0 EB C8
	sbc ($C3.b),Y		; F1 C3
	cmp $701FC1.l,X		; DF C1 1F 70
	ora $189B38.l,X		; 1F 38 9B 18
	cmp #$98.b		; C9 98
	sbc #$C1.b		; E9 C1
	jsr ($EC40.w,X)		; FC 40 EC
	and $077F1F.l,X		; 3F 1F 7F 07
	ora $FE07F9.l,X		; 1F F9 07 FE
	ora ($FF.b,X)		; 01 FF
	bpl -17.b		; 10 EF
	ora ($ED.b)		; 12 ED
	cop $FD.b		; 02 FD
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	php		; 08
	ora $D10F42.l,X		; 1F 42 0F D1
	eor $F4.b,S		; 43 F4
	bvc -74.b		; 50 B6
	sta ($F6.b)		; 92 F6
	sta ($E0.b)		; 92 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpy #$C0A0.w		; C0 A0 C0
	rts		; 60

	ldy #$20D0.w		; A0 D0 20
	bne  16.b		; D0 10
	inx		; E8
	bpl -24.b		; 10 E8
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	ldy #$60A0.w		; A0 A0 60
	jsr $50F0.w		; 20 F0 50
	bcs  16.b		; B0 10
	asl $0E0F.w,X		; 1E 0F 0E
	ora $04150E.l,X		; 1F 0E 15 04
	ora $041F04.l,X		; 1F 04 1F 04
	phd		; 0B
	ora ($0E.b,X)		; 01 0E
	ora ($06.b,X)		; 01 06
	ora $011F10.l,X		; 1F 10 1F 01
	ora $010F1B.l,X		; 1F 1B 0F 01
	ora $04050B.l		; 0F 0B 05 04
	ora $01.b		; 05 01
	ora $05.b		; 05 05
	jmp ($E8FF.w)		; 6C FF E8
	sbc $E7FFF2.l,X		; FF F2 FF E7
	inc $FDEE.w,X		; FE EE FD
	cpx $FB.b		; E4 FB
	cpx #$C0FF.w		; E0 FF C0
	sbc $EC80EE.l,X		; FF EE 80 EC
	brk $F2.b		; 00 F2
	brk $E7.b		; 00 E7
	ora ($EE.b,X)		; 01 EE
	cop $F5.b		; 02 F5
	trb $F3.b		; 14 F3
	ora ($E7.b)		; 12 E7
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	cpx $00.b		; E4 00
	ora $1F3F06.l,X		; 1F 06 3F 1F
	adc $247F13.l,X		; 7F 13 7F 24
	sbc $00FF68.l,X		; FF 68 FF 00
	brk $03.b		; 00 03
	ora $E0.b,S		; 03 E0
	cpx #$C0CF.w		; E0 CF C0
	sta $80BF80.l,X		; 9F 80 BF 80
	adc [$00.b],Y		; 77 00
	jmp ($0E00.w)		; 6C 00 0E
	eor $170C.w,X		; 5D 0C 17
	tsb $0F.b		; 04 0F
	tsb $0B.b		; 04 0B
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	asl $0E02.w		; 0E 02 0E
	php		; 08
	asl $0C02.w		; 0E 02 0C
	tsb $0004.w		; 0C 04 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	cpy #$E0F0.w		; C0 F0 E0
	rts		; 60

	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	cpx #$8000.w		; E0 00 80
	bra -64.b		; 80 C0
	cpy #$60E0.w		; C0 E0 60
	beq  32.b		; F0 20
	cpx #$C010.w		; E0 10 C0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E200.w		; C0 00 E2
	cpy #$78FE.w		; C0 FE 78
	inc $FF4C.w,X		; FE 4C FF
	txs		; 9A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $12.b		; 00 12
	sbc $700768.l		; EF 68 07 70
	asl $1EA0.w		; 0E A0 1E
	cpx #$003C.w		; E0 3C 00
	jmp ($388C.w,X)		; 7C 8C 38
	asl $0A6C.w,X		; 1E 6C 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$0CC8.w		; A0 C8 0C
	sty $7C1E.w		; 8C 1E 7C
	cmp ($7C.b,X)		; C1 7C
	cmp ($3F.b,X)		; C1 3F
	eor $3F.b,S		; 43 3F
	eor $3D.b,S		; 43 3D
	eor $3D.b,S		; 43 3D
	eor $1D.b,S		; 43 1D
	eor $19.b,S		; 43 19
	eor $3F.b,S		; 43 3F
	ora ($3F.b,X)		; 01 3F
	ora ($7C.b,X)		; 01 7C
	rti		; 40

	jmp ($7E40.w,X)		; 7C 40 7E
	.db $42, $3E		; 42 3E
	cop $3C.b		; 02 3C
	brk $7C.b		; 00 7C
	rti		; 40

	beq  24.b		; F0 18
	cpx #$E018.w		; E0 18 E0
	clc		; 18
	cpx #$E010.w		; E0 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl  64.b		; 10 40
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $01.b		; 00 01
	ror $01.b,X		; 76 01
	adc $074D03.l		; 6F 03 4D 07
	tad		; 5B
	ora [$5F.b]		; 07 5F
	ora $1F0F17.l		; 0F 17 0F 1F
	ora $23230E.l,X		; 1F 0E 23 23
	ora [$04.b]		; 07 04
	ora [$02.b]		; 07 02
	ora $000F0C.l		; 0F 0C 0F 00
	ora $001F18.l,X		; 1F 18 1F 00
	ora $F5F811.l,X		; 1F 11 F8 F5
	beq -17.b		; F0 EF
	sbc ($DE.b,X)		; E1 DE
	cpx #$C0DF.w		; E0 DF C0
	lda $267F84.l,X		; BF 84 7F 26
	sbc $FCFF6E.l,X		; FF 6E FF FC
	ora $FE15FC.l		; 0F FC 15 FE
	and $FE.b,S		; 23 FE
	plp		; 28
	plx		; FA
	cli		; 58
	pea $F6B0.w		; F4 B0 F6
	bvc -17.b		; 50 EF
	bra   4.b		; 80 04
	asl $E7F8.w,X		; 1E F8 E7
	sei		; 78
	sbc ($FF.b),Y		; F1 FF
	bvs 120.b		; 70 78
	brk $79.b		; 00 79
	bmi  31.b		; 30 1F
	and $1F3F.w,Y		; 39 3F 1F
	php		; 08
	sbc #$60.b		; E9 60
	inx		; E8
	bvs -10.b		; 70 F6
	bmi  -9.b		; 30 F7
	brk $F7.b		; 00 F7
	bpl -10.b		; 10 F6
	ora $07F9.w,Y		; 19 F9 07
	sbc $04F800.l,X		; FF 00 F8 04
	beq   8.b		; F0 08
	cpx #$0078.w		; E0 78 00
	tay		; A8
	rti		; 40

	beq -64.b		; F0 C0
	bne -32.b		; D0 E0
	cpy #$10E0.w		; C0 E0 10
	cpy $E0.b		; C4 E0
	php		; 08
	brk $10.b		; 00 10
	brk $90.b		; 00 90
	brk $50.b		; 00 50
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E0C0.w		; E0 C0 E0
	jsl $DD22DD.l		; 22 DD 22 DD
	jsl $BD42DD.l		; 22 DD 42 BD
	lsr $B9.b		; 46 B9
	lsr $B9.b		; 46 B9
	lsr $B9.b		; 46 B9
	brk $FF.b		; 00 FF
	ror $EE32.w,X		; 7E 32 EE
	jsl $EF23EF.l		; 22 EF 23 EF
	adc $FF.b,S		; 63 FF
	adc [$DE.b]		; 67 DE
	lsr $5E.b		; 46 5E
	lsr $80.b		; 46 80
	bra  72.b		; 80 48
	ldy $48.b,X		; B4 48
	ldy $44.b,X		; B4 44
	tsx		; BA
	stz $9A.b		; 64 9A
	jsr $20DC.w		; 20 DC 20
	cld		; D8
	bpl  -8.b		; 10 F8
	brk $C8.b		; 00 C8
	sed		; F8
	pla		; 68
	cld		; D8
	pha		; 48
	jmp.w [$FC54]		; DC 54 FC
	stz $E0.b,X		; 74 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$3000.w		; C0 00 30
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	sbc $FDC2.w,X		; FD C2 FD
	cpy $7B.b		; C4 7B
	mvp $40,$FB		; 44 FB 40
	cmp $0C9F48.l,X		; DF 48 9F 0C
	eor $EF5D0E.l,X		; 5F 0E 5D EF
	pld		; 2B
	cmp $86DE13.l,X		; DF 13 DE 86
	cmp $80C506.l		; CF 06 C5 80
	eor #$40.b		; 49 40
	jmp $4E00.w		; 4C 00 4E
	.db $42, $00		; 42 00
	ora ($00.b,S),Y		; 13 00
	ora $000700.l		; 0F 00 07 00
	ora [$02.b]		; 07 02
	ora $0C1D06.l		; 0F 06 1D 0C
	and $0DFF18.l,X		; 3F 18 FF 0D
	ora $0203.w		; 0D 03 02
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $101E0A.l		; 0F 0A 1E 10
	jmp ($6741.w,X)		; 7C 41 67
	sed		; F8
	ora #$F4.b		; 09 F4
	and [$DC.b],Y		; 37 DC
	and $D2.b,X		; 35 D2
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora $CC.b		; 05 CC
.ACCU 16
	rep #$E2		; C2 E2
	pla		; 68
	brk $60.b		; 00 60
	asl $64.b		; 06 64
	ora $6C.b		; 05 6C
	.db $42, $2F		; 42 2F
	jsr $6067.w		; 20 67 60
	ora ($F0.b,S),Y		; 13 F0
	cmp $00FC.w		; CD FC 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $1D03.w		; 0E 03 1D
	ora [$3B.b]		; 07 3B
	ora $7F0037.l		; 0F 37 00 7F
	ora ($66.b,X)		; 01 66
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	ora $223308.l,X		; 1F 08 33 22
	ora [$05.b]		; 07 05
	ora $3C.b,S		; 03 3C
	adc $FFBE.w,Y		; 79 BE FF
	inc $FFFE.w,X		; FE FE FF
	inc $FDFD.w,X		; FE FD FD
	plx		; FA
	xce		; FB
	adc $F7.b,X		; 75 F7
	sbc $FF0B0F.l,X		; FF 0F 0B FF
	eor $FF.b		; 45 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	stx $08FF.w		; 8E FF 08
	cmp ($33.b),Y		; D1 33
	txs		; 9A
	ror $EC11.w		; 6E 11 EC
	trb $EE.b		; 14 EE
	asl $EF.b,X		; 16 EF
	txy		; 9B
	adc [$DE.b],Y		; 77 DE
	lda #$DFE4.w		; A9 E4 DF
	bne -36.b		; D0 DC
	sbc ($B8.b,X)		; E1 B8
	sbc $78.b,S		; E3 78
	sbc ($FC.b,X)		; E1 FC
	cpx $FE.b		; E4 FE
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	cpx #$7F.b		; E0 7F
	cpx #$2F.b		; E0 2F
	stz $1C.b,X		; 74 1C
	cpx #$39.b		; E0 39
	dec $71.b		; C6 71
	sty $FD.b		; 84 FD
	cop $FF.b		; 02 FF
	cpx #$1F.b		; E0 1F
	sbc $8704.w,Y		; F9 04 87
	cop $E3.b		; 02 E3
	brk $C6.b		; 00 C6
	asl $8E.b		; 06 8E
	brk $12.b		; 00 12
	brk $3C.b		; 00 3C
	bit $1A.b		; 24 1A
	inc A		; 1A
	brk $7A.b		; 00 7A
	cop $78.b		; 02 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	phd		; 0B
	asl A		; 0A
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $92.b		; 00 92
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $7FFF7E.l,X		; FF 7E FF 7F
	sbc $008303.l,X		; FF 03 83 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $8080.w		; 0C 80 80
	adc $80FF41.l,X		; 7F 41 FF 80
	sbc $7C8300.l,X		; FF 00 83 7C
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	and ($DE.b,X)		; 21 DE
	and $DC.b,S		; 23 DC
	and $DC.b,S		; 23 DC
	and $DC.b,S		; 23 DC
	brk $FF.b		; 00 FF
	lda $91F799.l,X		; BF 99 F7 91
	adc [$11.b],Y		; 77 11
	sbc [$31.b],Y		; F7 31
	sbc $23EF33.l,X		; FF 33 EF 23
	and $404023.l		; 2F 23 40 40
	bit $DA.b		; 24 DA
	bit $DA.b		; 24 DA
	jsl $CD32DD.l		; 22 DD 32 CD
	bpl -18.b		; 10 EE
	bpl -20.b		; 10 EC
	php		; 08
	jsr ($E400.w,X)		; FC 00 E4
	jmp ($6C34.w,X)		; 7C 34 6C
	bit $EE.b		; 24 EE
	tax		; AA
	inc $F0BA.w,X		; FE BA F0
	bcc 112.b		; 90 70
	bpl  96.b		; 10 60
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $1B07.w		; 0E 07 1B
	brk $3F.b		; 00 3F
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $01010C.l		; 0F 0C 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $BF7FE7.l,X		; 1F E7 7F BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $EE1FBF.l,X		; 7F BF 1F EE
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	adc $40FF58.l,X		; 7F 58 FF 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $517F40.l,X		; FF 40 7F 51
	cli		; 58
	ldy $B850.w		; AC 50 B8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cpx #$00.b		; E0 00
	jsr $1000.w		; 20 00 10
	rti		; 40

	brk $40.b		; 00 40
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	bpl  -8.b		; 10 F8
	php		; 08
	cpy #$3C.b		; C0 3C
	bra -66.b		; 80 BE
	lsr $79.b		; 46 79
	dey		; 88
	sbc [$40.b],Y		; F7 40
	lda $8E7F80.l,X		; BF 80 7F 8E
	sbc $1C.b,S		; E3 1C
	dec $38.b		; C6 38
	cpy $7080.w		; CC 80 70
	asl $18E6.w		; 0E E6 18
	iny		; C8
	asl $80.b		; 06 80
	brk $00.b		; 00 00
	trb $B800.w		; 1C 00 B8
	bra  48.b		; 80 30
	brk $47.b		; 00 47
	plb		; AB
	ora [$EB.b]		; 07 EB
	ora [$CB.b]		; 07 CB
	ora [$4B.b]		; 07 4B
	ora $47.b,S		; 03 47
	ora $45.b,S		; 03 45
	ora ($07.b,X)		; 01 07
	ora ($02.b,X)		; 01 02
	adc $0C4F6C.l		; 6F 6C 4F 0C
	eor [$44.b]		; 47 44
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$06.b]		; 07 06
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	sbc ($FF.b,X)		; E1 FF
	sbc $DB.b		; E5 DB
	dec $FB.b		; C6 FB
	cpy $FB.b		; C4 FB
	cmp ($FF.b,X)		; C1 FF
.ACCU 16
	rep #$ED		; C2 ED
	cpy #$EF.b		; C0 EF
	cpy #$EF.b		; C0 EF
	sbc $FD08.w,X		; FD 08 FD
	bit $14F6.w		; 2C F6 14
	pea $E514.w		; F4 14 E5
	jsr $22E6.w		; 20 E6 22
	inc $24.b		; E6 24
	cpy $04.b		; C4 04
	sta [$E3.b]		; 87 E3
	ora $FF43E0.l		; 0F E0 43 FF
	cpx #$DF.b		; E0 DF
	cpy #$BF.b		; C0 BF
	.db $82, $7D, $02		; 82 7D 02
	sbc $FF00.w,X		; FD 00 FF
	cpy #$1F.b		; C0 1F
	bra  31.b		; 80 1F
	eor ($03.b,X)		; 41 03
	inx		; E8
	and ($DA.b,X)		; 21 DA
	pha		; 48
	ldx $768A.w,Y		; BE 8A 76
	eor ($FE.b)		; 52 FE
	sta ($03.b)		; 92 03
	sta $0B07.w		; 8D 07 0B
	ora [$1F.b]		; 07 1F
	asl $0C15.w		; 0E 15 0C
	tsa		; 3B
	clc		; 18
	and $103718.l		; 2F 18 37 10
	and $0F0207.l,X		; 3F 07 02 0F
	tsb $000F.w		; 0C 0F 00
	ora $051F1A.l,X		; 1F 1A 1F 05
	ora $0F1F13.l,X		; 1F 13 1F 0F
	tas		; 1B
	cop $FF.b		; 02 FF
	cmp $3FBFDF.l,X		; DF DF BF 3F
	cmp $7FFF3F.l,X		; DF 3F FF 7F
	ldx $FD7E.w,Y		; BE 7E FD
	jsr ($FC7F.w,X)		; FC 7F FC
	xce		; FB
	sbc $60FF20.l,X		; FF 20 FF 60
	sbc $80FF60.l,X		; FF 60 FF 80
	sbc $02FFC1.l,X		; FF C1 FF 02
	sbc $05FF81.l,X		; FF 81 FF 05
	sbc [$CF.b]		; E7 CF
	sbc [$DF.b],Y		; F7 DF
	xce		; FB
	cmp [$F7.b],Y		; D7 F7
	tad		; 5B
	eor ($F8.b,S),Y		; 53 F8
	and $F9.b,S		; 23 F9
	bmi  -7.b		; 30 F9
	adc ($F8.b),Y		; 71 F8
	cpx #$3F.b		; E0 3F
	sbc ($2F.b,S),Y		; F3 2F
	sbc ($2F.b,S),Y		; F3 2F
	sbc ($A7.b),Y		; F1 A7
	bne   7.b		; D0 07
	ldy #$07.b		; A0 07
	bcs   7.b		; B0 07
	sei		; 78
	ora [$82.b]		; 07 82
	cop $9F.b		; 02 9F
	cop $FF.b		; 02 FF
	bra  -1.b		; 80 FF
	bra -59.b		; 80 C5
	cop $CF.b		; 02 CF
	stx $FE.b		; 86 FE
	cmp $02FFFE.l		; CF FE FF 02
	adc $6002.w,X		; 7D 02 60
	bra -128.b		; 80 80
	bra -72.b		; 80 B8
	brk $BA.b		; 00 BA
	stx $B7.b		; 86 B7
	dec $3ECF.w		; CE CF 3E
	sbc $007F00.l,X		; FF 00 7F 00
	inc $CDF1.w,X		; FE F1 CD
	sbc ($EB.b,S),Y		; F3 EB
	sbc [$C7.b]		; E7 C7
	dec $B89F.w,X		; DE 9F B8
	and $3BB1.w,X		; 3D B1 3B
	tas		; 1B
	bpl  -6.b		; 10 FA
	ora ($FD.b,X)		; 01 FD
	and ($FB.b,S),Y		; 33 FB
	ora [$E6.b],Y		; 17 E6
	and $B07FD8.l,X		; 3F D8 7F B0
	inc $FCB0.w,X		; FE B0 FC
	ora ($7F.b,X)		; 01 7F
	cpy $90F3.w		; CC F3 90
	sbc $30FF80.l		; EF 80 FF 30
	sbc $B8C65D.l,X		; FF 5D C6 B8
	sta $1876.w		; 8D 76 18
	ora ($E0.b,X)		; 01 E0
	asl $30CC.w,X		; 1E CC 30
	bcc  14.b		; 90 0E
	bra   0.b		; 80 00
	bra  57.b		; 80 39
	brk $73.b		; 00 73
	cop $E7.b		; 02 E7
	brk $3E.b		; 00 3E
	sbc $1FC101.l,X		; FF 01 C1 1F
	cmp ($1E.b,X)		; C1 1E
	cpy #$1E.b		; C0 1E
	cpy #$1E.b		; C0 1E
	cpy #$1E.b		; C0 1E
	cpy #$3E.b		; C0 3E
	rts		; 60

	cmp ($C1.b,X)		; C1 C1
	ror $7E40.w,X		; 7E 40 7E
	rti		; 40

	adc $407F40.l,X		; 7F 40 7F 40
	adc $407F40.l,X		; 7F 40 7F 40
	ora $E46000.l,X		; 1F 00 60 E4
	brk $84.b		; 00 84
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	sei		; 78
	sty $8C78.w		; 8C 78 8C
	sei		; 78
	sty $0018.w		; 8C 18 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $FC.b		; 00 FC
	sed		; F8
	jsr ($F8F8.w,X)		; FC F8 F8
	bit $F8.b,X		; 34 F8
	cpy $FA34.w		; CC 34 FA
	tsb $FA.b		; 04 FA
	.db $42, $BD		; 42 BD
	.db $42, $BD		; 42 BD
	bvs  -4.b		; 70 FC
	bpl  -4.b		; 10 FC
	bpl  -4.b		; 10 FC
	rti		; 40

	sed		; F8
	bit $74.b,X		; 34 74
	sty $DE04.w		; 8C 04 DE
	lsr A		; 4A
	dec $42.b,X		; D6 42
	ora $0F.b,S		; 03 0F
	ora $05.b,S		; 03 05
	ora ($07.b,X)		; 01 07
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	ora [$06.b]		; 07 06
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($9E.b,X)		; 01 9E
	ora ($1E.b,X)		; 01 1E
	cop $1D.b		; 02 1D
	cop $0D.b		; 02 0D
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	ora [$05.b]		; 07 05
	ora $030F09.l		; 0F 09 0F 03
	ora [$03.b]		; 07 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $E000.w		; 20 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	rts		; 60

	rol $1F60.w,X		; 3E 60 1F
	and ($1F.b,X)		; 21 1F
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	and ($0E.b,X)		; 21 0E
	and ($0C.b,X)		; 21 0C
	and ($1F.b,X)		; 21 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	and $011F21.l,X		; 3F 21 1F 01
	asl $3E00.w,X		; 1E 00 3E
	jsr $8C78.w		; 20 78 8C
	bvs -116.b		; 70 8C
	beq -116.b		; F0 8C
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	ldy #$88.b		; A0 88
	beq -128.b		; F0 80
	sed		; F8
	dey		; 88
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	cpx #$DF.b		; E0 DF
	inc $CF.b		; E6 CF
	cmp [$AF.b]		; C7 AF
	cmp $D7A367.l		; CF 67 A3 D7
	and [$D3.b]		; 27 D3
	ora ($EB.b),Y		; 11 EB
	ora ($E9.b,S),Y		; 13 E9
	sta ($E0.b,X)		; 81 E0
	stx $F6.b		; 86 F6
	stx $FF.b		; 86 FF
	ora $CF.b,S		; 03 CF
	lda $AF.b,S		; A3 AF
	adc ($27.b,X)		; 61 27
	sbc ($57.b),Y		; F1 57
	bcs  19.b		; B0 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $C9.b		; 00 C9
	brk $3F.b		; 00 3F
	tsb $3F7F.w		; 0C 7F 3F
	sbc $48FF26.l,X		; FF 26 FF 48
	sbc $00FF51.l,X		; FF 51 FF 00
	brk $06.b		; 00 06
	asl $C0.b		; 06 C0
	cpy #$9F.b		; C0 9F
	bra  63.b		; 80 3F
	brk $7F.b		; 00 7F
	brk $EE.b		; 00 EE
	brk $D9.b		; 00 D9
	brk $00.b		; 00 00
	sbc ($01.b,S),Y		; F3 01
	jsr ($7F81.w,X)		; FC 81 7F
	cpy #$BF.b		; C0 BF
	sed		; F8
	cmp [$FE.b]		; C7 FE
	eor ($E1.b,X)		; 41 E1
	bra -96.b		; 80 A0
	cpy #$3C.b		; C0 3C
	tsb $84FF.w		; 0C FF 84
	jmp ($1F40.w,X)		; 7C 40 1F
	sta ($86.b),Y		; 91 86
	dec $40.b		; C6 40
	dec $DE80.w,X		; DE 80 DE
	brk $1F.b		; 00 1F
	brk $60.b		; 00 60
	bra -16.b		; 80 F0
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	sei		; 78
	tsb $C8.b		; 04 C8
	sty $88.b		; 84 88
	sty $80.b		; 84 80
	bra  32.b		; 80 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $B0.b		; 00 B0
	bcc   0.b		; 90 00
	bcs -128.b		; B0 80
	bmi -128.b		; 30 80
	bvs -22.b		; 70 EA
	sbc [$E7.b],Y		; F7 E7
	sbc $CEEFDF.l		; EF DF EF CE
	lda $7C5E9F.l,X		; BF 9F 5E 7C
	dec $FDDE.w,X		; DE DE FD
	ldy $F0F9.w,X		; BC F9 F0
	ora $E61FE6.l,X		; 1F E6 1F E6
	and $CC7FEE.l,X		; 3F EE 7F CC
	lda $D93FCC.l,X		; BF CC 3F D9
	and $7F3ED9.l,X		; 3F D9 3E 7F
	sta $1FE77F.l,X		; 9F 7F E7 1F
	sbc $FE07.w,Y		; F9 07 FE
	ora ($FF.b,X)		; 01 FF
	bpl -17.b		; 10 EF
	ora ($ED.b)		; 12 ED
	cop $FD.b		; 02 FD
	sta $7F.b,S		; 83 7F
	jsr $08FF.w		; 20 FF 08
	ora $D10F42.l,X		; 1F 42 0F D1
	eor $F4.b,S		; 43 F4
	bvc -74.b		; 50 B6
	sta ($F6.b)		; 92 F6
	sta ($3E.b)		; 92 3E
	sbc $1FC101.l,X		; FF 01 C1 1F
	cmp ($1E.b,X)		; C1 1E
	cpy #$1E.b		; C0 1E
	cpy #$1E.b		; C0 1E
	cpy #$1E.b		; C0 1E
	cpy #$3E.b		; C0 3E
	rts		; 60

	cmp ($C1.b,X)		; C1 C1
	ror $7E40.w,X		; 7E 40 7E
	rti		; 40

	adc $407F40.l,X		; 7F 40 7F 40
	adc $407F40.l,X		; 7F 40 7F 40
	ora $E46000.l,X		; 1F 00 60 E4
	brk $84.b		; 00 84
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	sei		; 78
	sty $8C78.w		; 8C 78 8C
	sei		; 78
	sty $0018.w		; 8C 18 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy $80.b		; C4 80
	jsr ($FCF0.w,X)		; FC F0 FC
	tya		; 98
	inc $FE34.w,X		; FE 34 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F800.w		; F4 00 F8
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	brk $24.b		; 00 24
	dec $0CD0.w,X		; DE D0 0C
	cpx #$1C.b		; E0 1C
	rti		; 40

	sec		; 38
	cpy #$70.b		; C0 70
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	trb $40.b		; 14 40
	sty $20.b		; 84 20
	dey		; 88
	rti		; 40

	bcc   0.b		; 90 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $0D.b,S		; 03 0D
	cop $0D.b		; 02 0D
	asl $19.b		; 06 19
	asl $19.b		; 06 19
	ora $0F16.w		; 0D 16 0F
	and $2F1D.w,X		; 3D 1D 2F
	trb $077E.w		; 1C 7E 07
	asl $07.b		; 06 07
	ora $0E.b,S		; 03 0E
	ora $1C070C.l		; 0F 0C 07 1C
	tas		; 1B
	ora $1C03.w,X		; 1D 03 1C
	bpl  61.b		; 10 3D
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $1F.b,S		; 03 1F
	ora $0000F7.l		; 0F F7 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $283F08.l		; 0F 08 3F 28
	ora $3B7E.w,X		; 1D 7E 3B
	dec $FE3B.w,X		; DE 3B FE
	adc ($FC.b),Y		; 71 FC
	sbc $FC.b,S		; E3 FC
	cmp ($FC.b,S),Y		; D3 FC
	bcs  -1.b		; B0 FF
	bvs  -9.b		; 70 F7
	and $607D02.l,X		; 3F 02 7D 60
	sbc $FB80.w,Y		; F9 80 FB
	brk $FF.b		; 00 FF
	tsb $0CFF.w		; 0C FF 0C
	sed		; F8
	php		; 08
	sbc [$08.b],Y		; F7 08
	bit $01DF.w,X		; 3C DF 01
	ora $0F1F03.l		; 0F 03 1F 0F
	sbc [$3F.b],Y		; F7 3F
	cmp $FEFEFF.l,X		; DF FF FE FE
	sbc $FF01.w,X		; FD 01 FF
	sbc $0407A1.l,X		; FF A1 07 04
	ora $283F08.l		; 0F 08 3F 28
	sbc $01FFA0.l,X		; FF A0 FF 01
	sbc $02FF02.l,X		; FF 02 FF 02
	eor #$48B4.w		; 49 B4 48
	ldy $44.b,X		; B4 44
	tsx		; BA
	stz $9A.b		; 64 9A
	jsr $20DC.w		; 20 DC 20
	cld		; D8
	bpl  -8.b		; 10 F8
	brk $C8.b		; 00 C8
	sed		; F8
	rtl		; 6B

	cld		; D8
	eor #$54DC.w		; 49 DC 54
	jsr ($E074.w,X)		; FC 74 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$00.b		; C0 00
	bmi   0.b		; 30 00
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	bit $24.b		; 24 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	rts		; 60

	sed		; F8
	sei		; 78
	jsr ($7E24.w,X)		; FC 24 7E
	brk $26.b		; 00 26
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$04.b]		; 07 04
	dec $12F1.w		; CE F1 12
	tay		; A8
	ror $6BB8.w		; 6E B8 6B
	ldy $2F.b		; A4 2F
	cpx #$96.b		; E0 96
	beq -117.b		; F0 8B
	cld		; D8
	sty $EC.b		; 84 EC
	bne   0.b		; D0 00
	cmp ($0C.b,X)		; C1 0C
	cmp #$D98A.w		; C9 8A D9
	sty $DF.b		; 84 DF
	rti		; 40

	cmp $30B741.l		; CF 41 B7 30
	txy		; 9B
	clc		; 18
	and [$40.b]		; 27 40
	sbc $60FF60.l,X		; FF 60 FF 60
	lda ($40.b),Y		; B1 40
	lda ($61.b,S),Y		; B3 61
	and $BFDF73.l,X		; 3F 73 DF BF
	adc $58C09F.l,X		; 7F 9F C0 58
	ldy #$20.b		; A0 20
	ldy #$2E.b		; A0 2E
	cpy #$6E.b		; C0 6E
	ldy #$2D.b		; A0 2D
	sta ($33.b,S),Y		; 93 33
	ora $7F077F.l,X		; 1F 7F 07 7F
	sed		; F8
	sty $F8.b		; 84 F8
	tsb $F8.b		; 04 F8
	tsb $5C.b		; 04 5C
	stx $F8.b		; 86 F8
	.db $82, $F2, $C2		; 82 F2 C2
	bne -18.b		; D0 EE
	cpy #$FE.b		; C0 FE
	bra   0.b		; 80 00
	tsb $04.b		; 04 04
	tsb $24.b		; 04 24
	php		; 08
	ldy #$0E.b		; A0 0E
	rep #$CC		; C2 CC
	cpx #$CE.b		; E0 CE
	inc $E0CE.w		; EE CE E0
	sec		; 38
	xce		; FB
	bmi -65.b		; 30 BF
	adc $F176.w,Y		; 79 76 F1
	sbc $B0FFE1.l,X		; FF E1 FF B0
	sbc $002320.l		; EF 20 23 00
	ora ($D3.b,X)		; 01 D3
	ror $FEB7.w,X		; 7E B7 FE
	and [$FD.b]		; 27 FD
	adc [$F4.b]		; 67 F4
	sbc [$F0.b]		; E7 F0
	jsr $01F0.w		; 20 F0 01
	sbc ($01.b),Y		; F1 01
	and ($22.b,X)		; 21 22
	cmp $DD22.w,X		; DD 22 DD
	jsl $BD42DD.l		; 22 DD 42 BD
	lsr $B9.b		; 46 B9
	lsr $B9.b		; 46 B9
	lsr $B9.b		; 46 B9
	brk $FF.b		; 00 FF
	ror $EE32.w,X		; 7E 32 EE
	jsl $EF23EF.l		; 22 EF 23 EF
	adc $FF.b,S		; 63 FF
	adc [$DE.b]		; 67 DE
	lsr $5E.b		; 46 5E
	lsr $80.b		; 46 80
	bra  62.b		; 80 3E
	rts		; 60

	rol $1F60.w,X		; 3E 60 1F
	and ($1F.b,X)		; 21 1F
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	and ($0E.b,X)		; 21 0E
	and ($0C.b,X)		; 21 0C
	and ($1F.b,X)		; 21 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	and $011F21.l,X		; 3F 21 1F 01
	asl $3E00.w,X		; 1E 00 3E
	jsr $8C78.w		; 20 78 8C
	bvs -116.b		; 70 8C
	beq -116.b		; F0 8C
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	ldy #$88.b		; A0 88
	beq -128.b		; F0 80
	sed		; F8
	dey		; 88
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	ora $FF.b,S		; 03 FF
	asl $1F.b		; 06 1F
	trb $00EB.w		; 1C EB 00
	rol $0D01.w,X		; 3E 01 0D
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $557F08.l		; 0F 08 7F 55
	asl $0013.w,X		; 1E 13 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01FB07.l		; 0F 07 FB 01
	asl $0700.w,X		; 1E 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $050714.l,X		; 1F 14 07 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	brk $03.b		; 00 03
	brk $E4.b		; 00 E4
	brk $1F.b		; 00 1F
	ora [$1F.b]		; 07 1F
	ora $7F133F.l,X		; 1F 3F 13 7F
	bit $7F.b		; 24 7F
	plp		; 28
	sbc $030000.l,X		; FF 00 00 03
	ora $E0.b,S		; 03 E0
	cpx #$EF.b		; E0 EF
	cpx #$DF.b		; E0 DF
	cpy #$BF.b		; C0 BF
	bra -73.b		; 80 B7
	bra 108.b		; 80 6C
	brk $18.b		; 00 18
	jsr $F884.w		; 20 84 F8
	ldx #$1C.b		; A2 1C
	cop $DC.b		; 02 DC
	asl $F8.b		; 06 F8
	inc $F200.w,X		; FE 00 F2
	brk $42.b		; 00 42
	rti		; 40

	cpy #$C0.b		; C0 C0
	pla		; 68
	rts		; 60

	jmp ($AC04.w)		; 6C 04 AC
	sty $58D8.w		; 8C D8 58
	brk $0C.b		; 00 0C
	brk $BC.b		; 00 BC
	rti		; 40

	ldy $0000.w,X		; BC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	trb $1E1C.w		; 1C 1C 1E
	asl $1E1C.w,X		; 1E 1C 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	clc		; 18
	rol $3E0C.w,X		; 3E 0C 3E
	trb $3E.b		; 14 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $0D.b,S		; 03 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$06.b]		; 07 06
	ora [$0A.b]		; 07 0A
	asl $1E17.w		; 0E 17 1E
	adc $DB3D.w		; 6D 3D DB
	sei		; 78
	lda [$F1.b],Y		; B7 F1
	adc $E3FEE1.l		; 6F E1 FE E3
	dec $0D0F.w,X		; DE 0F 0D
	ora $123E19.l,X		; 1F 19 3E 12
	adc $4AFE27.l,X		; 7F 27 FE 4A
	jsr ($FB94.w,X)		; FC 94 FB
	asl A		; 0A
	sbc $7E38.w,Y		; F9 38 7E
	lda $2FBF6E.l		; AF 6E BF 2F
	dec $F60F.w,X		; DE 0F F6
	ora $DE07F6.l		; 0F F6 07 DE
	ora [$9E.b]		; 07 9E
	ora [$0E.b]		; 07 0E
	sbc $407FD0.l,X		; FF D0 7F 40
	adc $597F21.l,X		; 7F 21 7F 59
	eor $010F59.l,X		; 5F 59 0F 01
	ora $090F09.l		; 0F 09 0F 09
	mvp $0C,$BB		; 44 BB 0C
	sbc ($08.b,S),Y		; F3 08
	sbc [$00.b],Y		; F7 00
	sbc $0BFF08.l,X		; FF 08 FF 0B
	sed		; F8
	phd		; 0B
	sed		; F8
	phd		; 0B
	sed		; F8
	ror $44.b		; 66 44
	rol $8E0C.w		; 2E 0C 8E
	php		; 08
	dec $40.b		; C6 40
	cpy #$40.b		; C0 40
	sbc [$60.b]		; E7 60
	sbc [$60.b]		; E7 60
	lda [$A0.b]		; A7 A0
	sta $7A.b		; 85 7A
	sty $7B.b		; 84 7B
	sty $7B.b		; 84 7B
	sty $7B.b		; 84 7B
	brk $FC.b		; 00 FC
	sta ($38.b,X)		; 81 38
	sta $2C.b		; 85 2C
	sta ($2C.b,X)		; 81 2C
	sbc [$85.b],Y		; F7 85
	inc $84.b,X		; F6 84
	inc $84.b,X		; F6 84
	pea $0384.w		; F4 84 03
	brk $EF.b		; 00 EF
	plp		; 28
	sbc $20.b,S		; E3 20
	sbc [$24.b]		; E7 24
	brk $F0.b		; 00 F0
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	bvs -96.b		; 70 A0
	bmi -64.b		; 30 C0
	clc		; 18
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	trb $0C36.w		; 1C 36 0C
	rol $00.b		; 26 00
	ror $08.b		; 66 08
	jmp ($5C20.w,X)		; 7C 20 5C
	plp		; 28
	jmp $707810.l		; 5C 10 78 70
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bit $10.b		; 24 10
	bpl  32.b		; 10 20
	jsr $2038.w		; 20 38 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	rti		; 40

	iny		; C8
	php		; 08
	cpx $B644.w		; EC 44 B6
	rts		; 60

	sta $0FFF02.l,X		; 9F 02 FF 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $68.b		; 00 68
	rti		; 40

	bvs  96.b		; 70 60
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $1C.b		; 05 1C
	ora #$113C.w		; 09 3C 11
	and $09.b,X		; 35 09
	adc ($3C.b,X)		; 61 3C
	adc ($0F.b,X)		; 61 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	ora [$14.b],Y		; 17 14
	asl $3E04.w		; 0E 04 3E
	jsr $415F.w		; 20 5F 41
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F2.b		; 00 F2
	cpx #$FE.b		; E0 FE
	sei		; 78
	inc $FF4C.w,X		; FE 4C FF
	txs		; 9A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $12.b		; 00 12
	sbc $700668.l		; EF 68 06 70
	asl $1CA0.w		; 0E A0 1C
	cpx #$38.b		; E0 38
	brk $70.b		; 00 70
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	asl A		; 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$C0.b		; A0 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$06.b]		; 07 06
	ora #$170C.w		; 09 0C 17
	trb $032B.w		; 1C 2B 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	ora #$363E.w		; 09 3E 36
	ora [$F8.b]		; 07 F8
	ora #$37D4.w		; 09 D4 37
	jmp.w [$D235]		; DC 35 D2
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora $EC.b		; 05 EC
	.db $62, $96, $68		; 62 96 68
	brk $60.b		; 00 60
	asl $64.b		; 06 64
	eor $6C.b		; 45 6C
	.db $42, $EF		; 42 EF
	cpx #$C7.b		; E0 C7
	cpy #$1B.b		; C0 1B
	clc		; 18
	ora $B21C.w,X		; 1D 1C B2
	rti		; 40

	dey		; 88
	stx $B1.b		; 86 B1
	sta $A3839B.l		; 8F 9B 83 A3
	phd		; 0B
	ora ($0B.b,S),Y		; 13 0B
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	rti		; 40

	tsb $F100.w		; 0C 00 F1
	tsb $C3.b		; 04 C3
	phd		; 0B
	sbc $00D70B.l,X		; FF 0B D7 00
	sta [$00.b]		; 87 00
	sta $00.b,S		; 83 00
	brk $02.b		; 00 02
	trb $F874.w		; 1C 74 F8
	inx		; E8
	beq -48.b		; F0 D0
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $FC20.w,X		; 7E 20 FC
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $0F.b,S		; 03 0F
	ora [$1B.b]		; 07 1B
	ora $3E0F17.l		; 0F 17 0F 3E
	asl $1E2F.w,X		; 1E 2F 1E
	and $5F3C.w,X		; 3D 3C 5F
	bit $0F7B.w,X		; 3C 7B 0F
	php		; 08
	ora $181F04.l		; 0F 04 1F 18
	ora $303F01.l,X		; 1F 01 3F 30
	and $213F03.l,X		; 3F 03 3F 21
	adc $BCC247.l,X		; 7F 47 C2 BC
	sta ($7D.b,X)		; 81 7D
	sta ($7C.b,X)		; 81 7C
	ora $F3.b,S		; 03 F3
	ora [$F7.b]		; 07 F7
	ora $F7.b,S		; 03 F7
	ora $F2.b		; 05 F2
	bpl  -1.b		; 10 FF
	sbc [$54.b],Y		; F7 54
.ACCU 8
	sep #$A0		; E2 A0
	iny		; C8
	sta $D3.b,S		; 83 D3
	eor $D0CFD3.l		; 4F D3 CF D0
	cmp $D0CFC0.l		; CF C0 CF D0
	rti		; 40

	asl $0D.b		; 06 0D
	asl $0D.b		; 06 0D
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$05.b]		; 07 05
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	sed		; F8
	ora $F8.b,S		; 03 F8
	ora $78.b,S		; 03 78
	ora [$2C.b]		; 07 2C
	ora [$2C.b]		; 07 2C
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	lda [$A0.b]		; A7 A0
	and $282F28.l		; 2F 28 2F 28
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ldx #$26.b		; A2 26
	lda ($27.b,X)		; A1 27
	ldy #$23.b		; A0 23
	ldy #$21.b		; A0 21
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cmp ($00.b,X)		; C1 00
	rep #$02		; C2 02
	cmp ($01.b,X)		; C1 01
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	beq  24.b		; F0 18
	rts		; 60

	tsb $8CF8.w		; 0C F8 8C
	bmi -122.b		; 30 86
	jmp ($38C6.w,X)		; 7C C6 38
	cmp $18.b,S		; C3 18
	eor $38.b,S		; 43 38
	adc $E0.b,S		; 63 E0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	jsr ($3884.w,X)		; FC 84 38
	brk $7E.b		; 00 7E
	.db $42, $7E		; 42 7E
	.db $42, $1E		; 42 1E
	cop $78.b		; 02 78
	cpy $7C.b		; C4 7C
	dec $78.b		; C6 78
.INDEX 16
	rep #$18		; C2 18
	.db $42, $3C		; 42 3C
	.db $62, $0C, $62		; 62 0C 62
	asl $0433.w,X		; 1E 33 04
	and ($3C.b),Y		; 31 3C
	tsb $38.b		; 04 38
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	trb $3E00.w		; 1C 00 3E
	jsl $1E000C.l		; 22 0C 00 1E
	bpl  12.b		; 10 0C
	ora $1306.w,Y		; 19 06 13
	brk $12.b		; 00 12
	tsb $36.b		; 04 36
	jsr $307C.w		; 20 7C 30
	jmp ($F800.w,X)		; 7C 00 F8
	bmi -40.b		; 30 D8
	ora [$01.b]		; 07 01
	tsb $1E00.w		; 0C 00 1E
	ora ($18.b)		; 12 18
	bpl  32.b		; 10 20
	brk $38.b		; 00 38
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	rti		; 40

	bvs -56.b		; 70 C8
	bpl -56.b		; 10 C8
	bmi 104.b		; 30 68
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	trb $36.b		; 14 36
	ora ($32.b)		; 12 32
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	sec		; 38
	jsr $0000.w		; 20 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
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
	jmp ($18C6.w,X)		; 7C C6 18
	.db $42, $38		; 42 38
	.db $62, $3A, $6A		; 62 3A 6A
	asl $0E6F.w,X		; 1E 6F 0E
	adc [$0C.b]		; 67 0C
	adc ($0C.b,X)		; 61 0C
	and ($38.b,X)		; 21 38
	brk $7E.b		; 00 7E
	.db $42, $5E		; 42 5E
	.db $42, $14		; 42 14
	brk $30.b		; 00 30
	jsr $2038.w		; 20 38 20
	rol $3E20.w,X		; 3E 20 3E
	jsr $CD33.w		; 20 33 CD
	ora ($BE.b,X)		; 01 BE
	cpx #$C0FF.w		; E0 FF C0
	cmp $9F614E.l,X		; DF 4E 61 9F
	jsr $0091.w		; 20 91 00
	bvc  96.b		; 50 60
	sty $3E84.w		; 8C 84 3E
	adc ($CF.b)		; 72 CF
	sbc #$87.b		; E9 87
	pea $F101.w		; F4 01 F1
	bra 110.b		; 80 6E
	cpy #$802F.w		; C0 2F 80
	and $7FE0B3.l		; 2F B3 E0 7F
	lda ($8F.b,S),Y		; B3 8F
	adc ($FF.b,S),Y		; 73 FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	cpx #$3EDF.w		; E0 DF 3E
	sbc $003F.w		; ED 3F 00
	bit $7301.w		; 2C 01 73
	ora $FF.b,S		; 03 FF
	sbc [$FF.b],Y		; F7 FF
	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	tsb $0DFF.w		; 0C FF 0D
	sbc $797F38.l,X		; FF 38 7F 79
	ldx $79.b,Y		; B6 79
	ldx $7B.b,Y		; B6 7B
	lda $3B.b,X		; B5 3B
	sbc $3B.b,X		; F5 3B
	adc [$3F.b],Y		; 77 3F
	eor ($1F.b,S),Y		; 53 1F
	adc ($7F.b,S),Y		; 73 7F
	cop $7F.b		; 02 7F
	eor $7F4D7F.l		; 4F 7F 4D 7F
	lsr $0A7F.w		; 4E 7F 0A
	adc $2C3F48.l,X		; 7F 48 3F 2C
	and $FF200C.l,X		; 3F 0C 20 FF
	brk $FF.b		; 00 FF
	inc A		; 1A
	sbc $7DB2.w,X		; FD B2 7D
	sty $7B.b		; 84 7B
	sty $7B.b		; 84 7B
	dey		; 88
	adc [$89.b],Y		; 77 89
	inc $B1.b,X		; F6 B1
	brk $C5.b		; 00 C5
	rti		; 40

	stp		; DB
	.db $42, $BB		; 42 BB
	.db $82, $B6, $84		; 82 B6 84
	dec $C4.b,X		; D6 C4
	cpx $EDE8.w		; EC E8 ED
	and #$32.b		; 29 32
	cmp $40FF0C.l,X		; DF 0C FF 40
	lda $92BD42.l,X		; BF 42 BD 92
	adc $6D92.w		; 6D 92 6D
	sta ($6D.b)		; 92 6D
	ora ($ED.b)		; 12 ED
	ora ($3E.b)		; 12 3E
	jmp $6A0C.w		; 4C 0C 6A
	rti		; 40

	ror A		; 6A
	.db $42, $DA		; 42 DA
	sta ($DA.b)		; 92 DA
	sta ($DB.b)		; 92 DB
	sta ($DB.b)		; 92 DB
	ora ($00.b)		; 12 00
	cpy #$E000.w		; C0 00 E0
	bra 112.b		; 80 70
	bra 112.b		; 80 70
	bra 120.b		; 80 78
	bra 124.b		; 80 7C
	rti		; 40

	ldx $BE40.w,Y		; BE 40 BE
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$A080.w		; A0 80 A0
	bra -48.b		; 80 D0
	bra -40.b		; 80 D8
	bra 108.b		; 80 6C
	rti		; 40

	jmp ($0040.w)		; 6C 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $5E.b		; 02 5E
	cmp $38.b,S		; C3 38
	.db $82, $F4, $86		; 82 F4 86
	pla		; 68
	tsb $1CD0.w		; 0C D0 1C
	cpx #$8038.w		; E0 38 80
	bmi -64.b		; 30 C0
	rts		; 60

	bit $FE00.w,X		; 3C 00 FE
	.db $82, $78, $00		; 82 78 00
	beq   0.b		; F0 00
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	cpx #$8020.w		; E0 20 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $C9.b		; 00 C9
	brk $3F.b		; 00 3F
	tsb $3F7F.w		; 0C 7F 3F
	sbc $48FF26.l,X		; FF 26 FF 48
	sbc $000000.l,X		; FF 00 00 00
	brk $06.b		; 00 06
	asl $C0.b		; 06 C0
	cpy #$809F.w		; C0 9F 80
	and $007F00.l,X		; 3F 00 7F 00
	inc $3F00.w		; EE 00 3F
	eor ($1F.b,S),Y		; 53 1F
	adc ($1F.b,S),Y		; 73 1F
	rol $16.b		; 26 16
	and $073E07.l		; 2F 07 3E 07
	tas		; 1B
	ora $1F.b,S		; 03 1F
	ora $17.b,S		; 03 17
	and $0C3F2C.l,X		; 3F 2C 3F 0C
	and $303F19.l,X		; 3F 19 3F 30
	ora $0C1F01.l,X		; 1F 01 1F 0C
	ora [$10.b],Y		; 17 10
	ora [$04.b]		; 07 04
	cpy $BB.b		; C4 BB
	cpy #$E0BF.w		; C0 BF E0
	cmp $F0DFE0.l,X		; DF E0 DF F0
	adc $B8AF70.l		; 6F 70 AF B8
	eor [$98.b],Y		; 57 98
	adc [$F7.b]		; 67 F7
	mvp $40,$F2		; 44 F2 40
	sed		; F8
	plp		; 28
	jsr ($FE24.w,X)		; FC 24 FE
	stx $FE.b,Y		; 96 FE
	eor ($FF.b)		; 52 FF
	plb		; AB
	sbc $B748D9.l,X		; FF D9 48 B7
	dey		; 88
	adc [$88.b],Y		; 77 88
	adc [$88.b],Y		; 77 88
	adc [$08.b],Y		; 77 08
	sbc [$20.b],Y		; F7 20
	sbc $2FE12E.l		; EF 2E E1 2F
	sbc ($7E.b,X)		; E1 7E
	pha		; 48
	sbc $88EF88.l		; EF 88 EF 88
	sbc $080F88.l		; EF 88 0F 08
	bvc  64.b		; 50 40
	eor $405E41.l,X		; 5F 41 5E 40
	sta ($6D.b)		; 92 6D
	bcc 111.b		; 90 6F
	pha		; 48
	ldx $48.b,Y		; B6 48
	ldx $40.b,Y		; B6 40
	lda $3EB14C.l,X		; BF 4C B1 3E
	cpx #$E00F.w		; E0 0F E0
	phx		; DA
	sta ($DC.b)		; 92 DC
	bcc 108.b		; 90 6C
	pha		; 48
	pla		; 68
	pha		; 48
	ror $46.b		; 66 46
	eor $001F41.l		; 4F 41 1F 00
	and $642020.l,X		; 3F 20 20 64
	bra -104.b		; 80 98
	rti		; 40

	inc $CE10.w,X		; FE 10 CE
	brk $EE.b		; 00 EE
	asl $FEF0.w		; 0E F0 FE
	brk $F2.b		; 00 F2
	brk $D8.b		; 00 D8
	cpy #$6060.w		; C0 60 60
	bit $30.b,X		; 34 30
	ldx $02.b,Y		; B6 02
	dec $02.b,X		; D6 02
	cpx #$0000.w		; E0 00 00
	tsb $DC00.w		; 0C 00 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl $0F0E.w		; 0E 0E 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F0C.w		; 0E 0C 1F
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	asl $09.b		; 06 09
	asl $3C35.w		; 0E 35 3C
	stp		; DB
	sei		; 78
	lda [$F0.b],Y		; B7 F0
	adc $010000.l		; 6F 00 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $1F.b		; 06 1F
	phd		; 0B
	ror $FE64.w,X		; 7E 64 FE
	dex		; CA
	sbc $0095.w,X		; FD 95 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy $80.b		; C4 80
	jsr ($FCF0.w,X)		; FC F0 FC
	tya		; 98
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F800.w		; F4 00 F8
	brk $DC.b		; 00 DC
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$8040.w		; C0 40 80
	jsr $30E0.w		; 20 E0 30
	cpy #$F010.w		; C0 10 F0
	clc		; 18
	rts		; 60

	php		; 08
	clv		; B8
	sty $C450.w		; 8C 50 C4
	sec		; 38
	cpx #$20E0.w		; E0 E0 20
	cpy #$F000.w		; C0 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	ldy $5C84.w,X		; BC 84 5C
	rti		; 40

	ora $080718.l		; 0F 18 07 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	ora [$3C.b]		; 07 3C
	ora [$7C.b],Y		; 17 7C
	pld		; 2B
	inx		; E8
	lsr $C1.b		; 46 C1
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $181B08.l		; 0F 08 1B 18
	pld		; 2B
	plp		; 28
	eor [$40.b],Y		; 57 40
	ldx $0080.w,Y		; BE 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	rep #$08		; C2 08
	.db $42, $08		; 42 08
	lsr A		; 4A
	trb $144E.w		; 1C 4E 14
	lsr $18.b		; 46 18
	.db $42, $1C		; 42 1C
	.db $42, $3E		; 42 3E
	adc $7C.b,S		; 63 7C
	rti		; 40

	jmp ($3440.w,X)		; 7C 40 34
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $1C.b		; 02 1C
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	ora #$00.b		; 09 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora [$03.b]		; 07 03
	tsb $0906.w		; 0C 06 09
	tsb $0E13.w		; 0C 13 0E
	asl $0606.w		; 0E 06 06
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	ora [$06.b]		; 07 06
	ora $FF511D.l,X		; 1F 1D 51 FF
	lsr $12F1.w		; 4E F1 12
	tay		; A8
	ror $6BB8.w		; 6E B8 6B
	ldy $2F.b		; A4 2F
	cpx #$F016.w		; E0 16 F0
	phb		; 8B
	cli		; 58
	cmp $D000.w,Y		; D9 00 D0
	brk $C1.b		; 00 C1
	tsb $8AC9.w		; 0C C9 8A
	cmp $DF84.w,Y		; D9 84 DF
	cpy #$818F.w		; C0 8F 81
	and [$30.b],Y		; 37 30
	ora $05.b,S		; 03 05
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	adc [$80.b],Y		; 77 80
	adc $00FF00.l,X		; 7F 00 FF 00
	inc $C400.w		; EE 00 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $D1DFE9.l,X		; FF E9 DF D1
	dec $844A.w		; CE 4A 84
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	cpx #$E02E.w		; E0 2E E0
	rol $0F60.w		; 2E 60 0F
	jsr $301F.w		; 20 1F 30
	ora $100F30.l		; 0F 30 0F 10
	ora [$10.b]		; 07 10
	ora $001F00.l,X		; 1F 00 1F 00
	ora $203F00.l,X		; 1F 00 3F 20
	ora $101F00.l		; 0F 00 1F 10
	ora $000F10.l,X		; 1F 10 0F 00
	ora [$B0.b]		; 07 B0
	ora $98.b,S		; 03 98
	ora ($8C.b,X)		; 01 8C
	brk $86.b		; 00 86
	ora ($83.b,X)		; 01 83
	bra -125.b		; 80 83
	bra -127.b		; 80 81
	brk $00.b		; 00 00
	ora $080F10.l,X		; 1F 10 0F 08
	ora [$04.b]		; 07 04
	sta $82.b,S		; 83 82
	.db $82, $82, $01		; 82 82 01
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $22.b		; 00 22
	jsr $20DE.w		; 20 DE 20
	cpy $C3.b		; C4 C3
	cld		; D8
	cmp [$CD.b]		; C7 CD
	cmp ($D1.b,X)		; C1 D1
	sta $09.b		; 85 09
	ora $80.b		; 05 80
	stx $20.b		; 86 20
	jmp.w [$0020]		; DC 20 00
	bra  -8.b		; 80 F8
	.db $82, $E1, $85		; 82 E1 85
	sbc $00EB05.l,X		; FF 05 EB 00
	cmp $00.b,S		; C3 00
	cmp ($0E.b,X)		; C1 0E
	ora $3A0E01.l		; 0F 01 0E 3A
	jmp ($F8F4.w,X)		; 7C F4 F8
	inx		; E8
	beq -64.b		; F0 C0
	cpx #$80C0.w		; E0 C0 80
	brk $00.b		; 00 00
	asl A		; 0A
	ora $103F00.l,X		; 1F 00 3F 10
	inc $FC60.w,X		; FE 60 FC
	cpy #$80F8.w		; C0 F8 80
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	ora ($06.b,X)		; 01 06
	ora $0D.b,S		; 03 0D
	ora [$1B.b]		; 07 1B
	ora [$1E.b]		; 07 1E
	asl $0C35.w		; 0E 35 0C
	tsa		; 3B
	trb $186B.w		; 1C 6B 18
	adc $070303.l,X		; 7F 03 03 07
	asl $0F.b		; 06 0F
	tsb $111F.w		; 0C 1F 11
	ora $253F1A.l,X		; 1F 1A 3F 25
	and $427F37.l,X		; 3F 37 7F 42
	sbc ($DE.b,X)		; E1 DE
	cmp $BC.b,S		; C3 BC
	bra 126.b		; 80 7E
	tsb $FA.b		; 04 FA
	ora #$F5.b		; 09 F5
	phd		; 0B
	sbc ($01.b,S),Y		; F3 01
	xce		; FB
	cop $F9.b		; 02 F9
	sbc $FB2C.w,X		; FD 2C FB
	cli		; 58
	sbc ($B2.b,S),Y		; F3 B2
	pea $ED75.w		; F4 75 ED
	wai		; CB
	sbc #$8F.b		; E9 8F
	inx		; E8
	and [$C0.b]		; 27 C0
	eor [$01.b]		; 47 01
	ora $00.b,S		; 03 00
	cop $02.b		; 02 02
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0803.w		; 0C 03 08
	asl $0408.w		; 0E 08 04
	ora ($00.b),Y		; 11 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	asl $3800.w		; 0E 00 38
	tsb $70.b		; 04 70
	php		; 08
	cpx #$C000.w		; E0 00 C0
	bpl -128.b		; 10 80
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	lsr $1C.b		; 46 1C
	lsr $18.b		; 46 18
	.db $42, $18		; 42 18
	.db $42, $3C		; 42 3C
	.db $62, $0C, $22		; 62 0C 22
	tsb $1422.w		; 0C 22 14
	and ($38.b)		; 32 38
	brk $78.b		; 00 78
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	asl $0002.w		; 0E 02 00
	ora ($04.b)		; 12 04
	rol $00.b,X		; 36 00
	bit $3C00.w,X		; 3C 00 3C
	jsr $307C.w		; 20 7C 30
	jmp ($F800.w,X)		; 7C 00 F8
	bpl -40.b		; 10 D8
	trb $1810.w		; 1C 10 18
	bpl  24.b		; 10 18
	clc		; 18
	brk $00.b		; 00 00
	jsr $3800.w		; 20 00 38
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	bit $FE.b,X		; 34 FE
	bit $DE.b		; 24 DE
	bne  12.b		; D0 0C
	cpx #$401C.w		; E0 1C 40
	sec		; 38
	cpy #$0070.w		; C0 70 00
	cpx #$4000.w		; E0 00 40
	ldy $1400.w,X		; BC 00 14
	rti		; 40

	sty $20.b		; 84 20
	dey		; 88
	rti		; 40

	bcc   0.b		; 90 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $0C.b		; 00 0C
	rol $1C.b,X		; 36 1C
	rol $10.b,X		; 36 10
	rol $08.b,X		; 36 08
	ror $5C20.w,X		; 7E 20 5C
	plp		; 28
	jmp $707810.l		; 5C 10 78 70
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $0C.b		; 00 0C
	tsb $10.b		; 04 10
	bpl  32.b		; 10 20
	jsr $2038.w		; 20 38 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	eor ($AD.b)		; 52 AD
	lda ($5E.b,X)		; A1 5E
	rti		; 40

	lda $E07FF0.l,X		; BF F0 7F E0
	sbc $4F3027.l		; EF 27 30 4F
	bcc -56.b		; 90 C8
	brk $E1.b		; 00 E1
	cmp ($CE.b,X)		; C1 CE
	dey		; 88
	sta $746710.l,X		; 9F 10 67 74
	cmp $FA.b,S		; C3 FA
	brk $F8.b		; 00 F8
	cpy #$E0B7.w		; C0 B7 E0
	ora [$88.b],Y		; 17 88
	bmi  25.b		; 30 19
	bvs  63.b		; 70 3F
	cmp $39C7.w,Y		; D9 C7 39
	sbc $FFFBFF.l,X		; FF FF FB FF
	sed		; F8
	beq  39.b		; F0 27
	cmp [$E0.b]		; C7 E0
	and [$C0.b],Y		; 37 C0
	lsr $80.b,X		; 56 80
	lda $FF01.w,Y		; B9 01 FF
	xce		; FB
	sbc $00FFF8.l,X		; FF F8 FF 00
	sbc $39FF03.l,X		; FF 03 FF 39
	lsr $39.b,X		; 56 39
	ror $33.b,X		; 76 33
	sbc $B977.w,X		; FD 77 B9
	adc [$BB.b],Y		; 77 BB
	adc [$BB.b],Y		; 77 BB
	adc [$BB.b],Y		; 77 BB
	adc [$BF.b],Y		; 77 BF
	adc $0D7F6D.l,X		; 7F 6D 7F 0D
	adc $467F02.l,X		; 7F 02 7F 46
	sbc $C4FFC4.l,X		; FF C4 FF C4
	sbc $C0FFC4.l,X		; FF C4 FF C0
	bpl  -4.b		; 10 FC
	brk $FF.b		; 00 FF
	trb $39FF.w		; 1C FF 39
	inc $FD12.w,X		; FE 12 FD
	cop $FD.b		; 02 FD
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$D8.b],Y		; F7 D8
	eor $E0.b,S		; 43 E0
	rts		; 60

	jmp.w [$BD40]		; DC 40 BD
	ora ($DB.b,X)		; 01 DB
	.db $42, $EB		; 42 EB
	jsl $EE24E7.l		; 22 E7 24 EE
	php		; 08
	ora [$0F.b],Y		; 17 0F
	tsa		; 3B
	inc $1F.b,X		; F6 1F
	sbc $DF26.w,Y		; F9 26 DF
	and #$D6.b		; 29 D6
	eor #$B6.b		; 49 B6
	eor #$B6.b		; 49 B6
	bit #$76.b		; 89 76
	ora $FF.b,S		; 03 FF
	bpl 127.b		; 10 7F
	bit #$1F.b		; 89 1F
	ldx $26.b		; A6 26
	lda #$29.b		; A9 29
	adc $6D49.w		; 6D 49 6D
	eor #$ED.b		; 49 ED
	bit #$80.b		; 89 80
	brk $80.b		; 00 80
	cpx #$E000.w		; E0 00 E0
	rti		; 40

	bcs  80.b		; B0 50
	tay		; A8
	pha		; 48
	ldy $48.b,X		; B4 48
	ldx $24.b,Y		; B6 24
	stp		; DB
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bvc  80.b		; 50 50
	pla		; 68
	pha		; 48
	jmp ($B648.w)		; 6C 48 B6
	bit $18.b		; 24 18
	pha		; 48
	plp		; 28
	pla		; 68
	php		; 08
	jmp ($7C00.w)		; 6C 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	trb $36.b		; 14 36
	ora ($32.b)		; 12 32
	bvs  64.b		; 70 40
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bmi  48.b		; 30 30
	clc		; 18
	bpl   0.b		; 10 00
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	ora $1D01.w,Y		; 19 01 1D
	php		; 08
	asl $0C.b,X		; 16 0C
	ora ($00.b,S),Y		; 13 00
	ora $000001.l,X		; 1F 01 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $0D.b		; 00 0D
	php		; 08
	asl $010C.w		; 0E 0C 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E000.w		; C0 00 E0
	rti		; 40

	beq -16.b		; F0 F0
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $70.b		; 02 70
	brk $F0.b		; 00 F0
	sty $78.b		; 84 78
	sty $38.b		; 84 38
	sty $78.b		; 84 78
	cpy $78.b		; C4 78
	cpy $B0.b		; C4 B0
	cpy $F8.b		; C4 F8
	jmp $00F8.w		; 4C F8 00
	sei		; 78
	brk $F8.b		; 00 F8
	bra 124.b		; 80 7C
	tsb $3C.b		; 04 3C
	tsb $BC.b		; 04 BC
	sty $78.b		; 84 78
	rti		; 40

	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $92.b		; 00 92
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $4DFF7F.l,X		; FF 7F FF 4D
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $8080.w		; 0C 80 80
	rol $7F00.w,X		; 3E 00 7F
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	php		; 08
	bra -112.b		; 80 90
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	rti		; 40

	sec		; 38
	brk $B8.b		; 00 B8
	sec		; 38
	cpy #$00F8.w		; C0 F8 00
	beq   0.b		; F0 00
	rts		; 60

	brk $80.b		; 00 80
	bra -48.b		; 80 D0
	cpy #$08D8.w		; C0 D8 08
	cli		; 58
	php		; 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	bmi 124.b		; 30 7C
	ora $05.b,S		; 03 05
	ora [$0B.b]		; 07 0B
	ora [$1E.b]		; 07 1E
	ora $291D1C.l		; 0F 1C 1D 29
	tas		; 1B
	adc ($30.b,S),Y		; 73 30
	cpx $ED70.w		; EC 70 ED
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $121E09.l		; 0F 09 1E 12
	ora $3B17.w,X		; 1D 17 3B
	ora $F75378.l		; 0F 78 53 F7
	sta $F1.b,X		; 95 F1
	phb		; 8B
	tay		; A8
	eor $86.b,X		; 55 86
	ply		; 7A
	ora ($FF.b,X)		; 01 FF
	cpy #$80FF.w		; C0 FF 80
	lda $3FC19E.l,X		; BF 9E C1 3F
	rti		; 40

	inc $876E.w		; EE 6E 87
	sta [$39.b]		; 87 39
	ora ($7C.b,X)		; 01 7C
	rts		; 60

	stz $0FD0.w,X		; 9E D0 0F
	inx		; E8
	ora ($E0.b,X)		; 01 E0
	brk $DC.b		; 00 DC
	pha		; 48
	ldx $40.b,Y		; B6 40
	ldx $DC20.w,Y		; BE 20 DC
	jsr $08DC.w		; 20 DC 08
	inc $E300.w,X		; FE 00 E3
	trb $5EC1.w		; 1C C1 5E
	cpy #$486C.w		; C0 6C 48
	stz $40.b,X		; 74 40
	clv		; B8
	jsr $20B0.w		; 20 B0 20
	cpy $04.b		; C4 04
	dec $BF02.w,X		; DE 02 BF
	ora ($3F.b,X)		; 01 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc $6CFFEC.l,X		; FF EC FF 6C
	adc $FF7FEE.l,X		; 7F EE 7F FF
	adc $F73BB7.l,X		; 7F B7 3B F7
	tsa		; 3B
	adc $3D.b,X		; 75 3D
	tad		; 5B
	sbc $93FF13.l,X		; FF 13 FF 93
	sbc $80FF11.l,X		; FF 11 FF 80
	adc $087F48.l,X		; 7F 48 7F 08
	adc $243F4A.l,X		; 7F 4A 3F 24
	bpl -17.b		; 10 EF
	and ($DE.b,X)		; 21 DE
	sta ($7E.b,X)		; 81 7E
	.db $82, $7D, $C2		; 82 7D C2
	and $BFC0.w,X		; 3D C0 BF
	cpx #$F09F.w		; E0 9F F0
	sta $BD10DE.l		; 8F DE 10 BD
	and ($DD.b,X)		; 21 DD
	sta ($EB.b,X)		; 81 EB
	.db $82, $F3, $D2		; 82 F3 D2
	sed		; F8
	pha		; 48
	jsr ($FC64.w,X)		; FC 64 FC
	stz $1C.b,X		; 74 1C
	eor $3C.b,S		; 43 3C
	.db $62, $3C, $22		; 62 3C 22
	tsb $0C22.w		; 0C 22 0C
	jsl $1C321C.l		; 22 1C 32 1C
	and ($04.b)		; 32 04
	ora ($3E.b)		; 12 3E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $3E.b		; 02 3E
	jsl $0C203C.l		; 22 3C 20 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl  14.b		; 10 0E
	tas		; 1B
	tsb $1C13.w		; 0C 13 1C
	rol $00.b,X		; 36 00
	ror $20.b,X		; 76 20
	lsr $5C28.w,X		; 5E 28 5C
	bpl 120.b		; 10 78
	bvs   0.b		; 70 00
	tsb $00.b		; 04 00
	asl $0802.w		; 0E 02 08
	brk $1C.b		; 00 1C
	trb $20.b		; 14 20
	jsr $2038.w		; 20 38 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	cpx #$00F8.w		; E0 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	jsr ($FC68.w,X)		; FC 68 FC
	pha		; 48
	ldy $18A0.w,X		; BC A0 18
	cpy #$8038.w		; C0 38 80
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	clv		; B8
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	bra   1.b		; 80 01
	tsb $1803.w		; 0C 03 18
	ora [$30.b]		; 07 30
	ora $610F30.l,X		; 1F 30 0F 61
	rol $1C63.w,X		; 3E 63 1C
	dec $78.b		; C6 78
	cpy $0407.w		; CC 07 04
	ora $101F08.l		; 0F 08 1F 10
	ora $203E00.l		; 0F 00 3E 20
	trb $7800.w		; 1C 00 78
	rti		; 40

	bmi   0.b		; 30 00
	beq  24.b		; F0 18
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,S),Y		; 13 00
	and [$01.b]		; 27 01
	ora [$00.b],Y		; 17 00
	ora $000700.l		; 0F 00 07 00
	ora $0E1F00.l		; 0F 00 1F 0E
	and $0C0D.w,X		; 3D 0D 0C
	ora $0918.w,Y		; 19 18 09
	php		; 08
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	ora $021F08.l		; 0F 08 1F 02
	sta ($FF.b),Y		; 91 FF
	ldx #$9CFF.w		; A2 FF 9C
	sbc $25.b,S		; E3 25
	bvc -35.b		; 50 DD
	bvs -42.b		; 70 D6
	pha		; 48
	eor $E12CC0.l,X		; 5F C0 2C E1
	cmp $B300.w,X		; DD 00 B3
	brk $A0.b		; 00 A0
	brk $83.b		; 00 83
	clc		; 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	lda $829F80.l,X		; BF 80 9F 82
	inx		; E8
	brk $88.b		; 00 88
	bra 120.b		; 80 78
	bra  16.b		; 80 10
	ora $1F63.w		; 0D 63 1F
	and [$07.b],Y		; 37 07
	eor [$17.b]		; 47 17
	and [$16.b]		; 27 16
	brk $70.b		; 00 70
	bra 112.b		; 80 70
	bra   0.b		; 80 00
	brk $E3.b		; 00 E3
	ora #$87.b		; 09 87
	ora [$FF.b],Y		; 17 FF
	asl $AF.b,X		; 16 AF
	brk $0F.b		; 00 0F
	bit $383C.w,X		; 3C 3C 38
	bit $3804.w,X		; 3C 04 38
	inx		; E8
	beq -48.b		; F0 D0
	cpx #$C0A0.w		; E0 A0 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	clc		; 18
	jmp ($7C28.w,X)		; 7C 28 7C
	brk $FC.b		; 00 FC
	rti		; 40

	sed		; F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sbc $F8.b,S		; E3 F8
	inc $D8.b		; E6 D8
	cpy $B1.b		; C4 B1
	bra 123.b		; 80 7B
	ora ($E8.b,S),Y		; 13 E8
	ora [$F7.b]		; 07 F7
	ora $EF07EF.l		; 0F EF 07 EF
	sbc [$00.b],Y		; F7 00
	sbc $41EF28.l		; EF 28 EF 41
	inc $A2.b		; E6 A2
	cld		; D8
	ora [$D7.b],Y		; 17 D7
	eor $809F87.l		; 4F 87 9F 80
	sta $208023.l,X		; 9F 23 80 20
	cpy #$C067.w		; C0 67 C0
	sbc $E71F67.l,X		; FF 67 1F E7
	sbc $FEEFFF.l,X		; FF FF EF FE
	cpx #$80C1.w		; E0 C1 80
	cmp $00DF80.l,X		; DF 80 DF 00
	cli		; 58
	cop $E7.b		; 02 E7
	asl $FF.b		; 06 FF
	inc $E0FF.w		; EE FF E0
	sbc $2FFF00.l,X		; FF 00 FF 2F
	cpx #$7017.w		; E0 17 70
	phd		; 0B
	sec		; 38
	cop $1E.b		; 02 1E
	ora ($8F.b,X)		; 01 8F
	brk $83.b		; 00 83
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	eor $202F40.l,X		; 5F 40 2F 20
	ora [$10.b],Y		; 17 10
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$E018.w		; C0 18 E0
	tsb $0670.w		; 0C 70 06
	ldy $2886.w,X		; BC 86 28
	sbc $0E.b,S		; E3 0E
	adc $C0.b,S		; 63 C0
	rti		; 40

	cpx #$F020.w		; E0 20 F0
	bpl  -8.b		; 10 F8
	php		; 08
	jsr ($7A04.w,X)		; FC 04 7A
	cop $5E.b		; 02 5E
	.db $42, $3C		; 42 3C
	jsr $7B1D.w		; 20 1D 7B
	ora $193B.w,X		; 1D 3B 19
	and [$13.b],Y		; 37 13
	and $001F02.l		; 2F 02 1F 00
	ora [$00.b],Y		; 17 00
	ora ($00.b)		; 12 00
	brk $3F.b		; 00 3F
	tsb $3F.b		; 04 3F
	rol $1F.b		; 26 1F
	asl A		; 0A
	ora $051714.l,X		; 1F 14 17 05
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -113.b		; F0 8F
	bcs -49.b		; B0 CF
	bcs  79.b		; B0 4F
	jsr $00DA.w		; 20 DA 00
	clv		; B8
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	inc $FE76.w,X		; FE 76 FE
	rol $FA.b,X		; 36 FA
	sbc ($B8.b)		; F2 B8
	tay		; A8
	bmi  16.b		; 30 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	and ($16.b),Y		; 31 16
	and ($0A.b),Y		; 31 0A
	and ($3C.b,X)		; 21 3C
	adc $3C.b		; 65 3C
	adc $1A.b		; 65 1A
	eor $1E.b,S		; 43 1E
	eor $1E.b,S		; 43 1E
	eor $1E.b,S		; 43 1E
	bpl  14.b		; 10 0E
	brk $3E.b		; 00 3E
	jsr $001A.w		; 20 1A 00
	inc A		; 1A
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $03.b		; 05 03
	ora $0E1A07.l		; 0F 07 1A 0E
	and ($0C.b),Y		; 31 0C
	tsa		; 3B
	trb $006B.w		; 1C 6B 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	ora $1E1F.w		; 0D 1F 1E
	and $153F24.l,X		; 3F 24 3F 15
	sec		; 38
	eor $70F738.l,X		; 5F 38 F7 70
	lda $F0FF70.l,X		; BF 70 FF F0
	adc $E6FDE2.l		; 6F E2 FD E6
	sbc $F4EF.w,Y		; F9 EF F4
	adc $0A7E63.l,X		; 7F 63 7E 0A
	sbc $04FFC7.l,X		; FF C7 FF 04
	sbc $0AFF98.l,X		; FF 98 FF 0A
	sbc $0BFF06.l,X		; FF 06 FF 0B
	pha		; 48
	sbc [$E0.b]		; E7 E0
	beq   0.b		; F0 00
	sbc $18FF08.l,X		; FF 08 FF 18
	sbc $64FD32.l,X		; FF 32 FD 64
	xce		; FB
	php		; 08
	sbc [$40.b],Y		; F7 40
	ora $600FE0.l,X		; 1F E0 0F 60
	ora ($8C.b,X)		; 01 8C
	bra -35.b		; 80 DD
	cpy #$82BB.w		; C0 BB 82
	adc [$04.b],Y		; 77 04
	ldx $BE08.w		; AE 08 BE
	and $7FBE5F.l,X		; 3F 5F BE 7F
	cmp $F33E.w		; CD 3E F3
	trb $40FF.w		; 1C FF 40
	lda $8AB54A.l,X		; BF 4A B5 8A
	adc $0C.b,X		; 75 0C
	sbc $01FF0C.l,X		; FF 0C FF 01
	sbc $0C7E12.l,X		; FF 12 7E 0C
	trb $4060.w		; 1C 60 40
	ror A		; 6A
	lsr A		; 4A
	nop		; EA
	txa		; 8A
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$9050.w		; A0 50 90
	pla		; 68
	bcc 108.b		; 90 6C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$D0A0.w		; A0 A0 D0
	bcc -40.b		; 90 D8
	bcc -110.b		; 90 92
	adc $ED12.w		; 6D 12 ED
	ora ($ED.b)		; 12 ED
	and ($DE.b,X)		; 21 DE
	and ($DE.b,X)		; 21 DE
	and ($DE.b,X)		; 21 DE
	ora ($FE.b,X)		; 01 FE
	rti		; 40

	cmp $DB92DB.l		; CF DB 92 DB
	ora ($DB.b)		; 12 DB
	ora ($BD.b)		; 12 BD
	and ($BD.b,X)		; 21 BD
	and ($3D.b,X)		; 21 3D
	and ($0D.b,X)		; 21 0D
	ora ($B0.b,X)		; 01 B0
	bra  88.b		; 80 58
	cmp $5E.b,S		; C3 5E
	cmp $1C.b,S		; C3 1C
	cmp ($1F.b,X)		; C1 1F
	cmp ($3E.b,X)		; C1 3E
	rts		; 60

	asl $0F60.w,X		; 1E 60 0F
	jsr $301F.w		; 20 1F 30
	ldx $BC82.w,Y		; BE 82 BC
	bra 127.b		; 80 7F
	eor ($7E.b,X)		; 41 7E
	rti		; 40

	ora $203F00.l,X		; 1F 00 3F 20
	ora $000F00.l,X		; 1F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	tsb $3866.w		; 0C 66 38
	jmp ($D810.w)		; 6C 10 D8
	brk $D0.b		; 00 D0
	bra -16.b		; 80 F0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	rti		; 40

	rts		; 60

	sec		; 38
	jsr $0010.w		; 20 10 00
	rts		; 60

	rti		; 40

	jsr $8000.w		; 20 00 80
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $30.b		; 00 30
	pla		; 68
	brk $68.b		; 00 68
	bpl 120.b		; 10 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	jsr $287C.w		; 20 7C 28
	jmp ($6424.w)		; 6C 24 64
	bvc  64.b		; 50 40
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	jsr $1820.w		; 20 20 18
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	and ($02.b)		; 32 02
	tsa		; 3B
	ora ($2D.b),Y		; 11 2D
	clc		; 18
	and [$00.b]		; 27 00
	and $000003.l,X		; 3F 03 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $1A.b		; 00 1A
	bpl  28.b		; 10 1C
	clc		; 18
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	ora $070F07.l		; 0F 07 0F 07
	ora $070F07.l		; 0F 07 0F 07
	phd		; 0B
	ora $0F.b,S		; 03 0F
	ora $07.b,S		; 03 07
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	tas		; 1B
	inc $A95A.w		; EE 5A A9
	phb		; 8B
	sei		; 78
	ora $EC.b,X		; 15 EC
	dec A		; 3A
	dec $4D.b		; C6 4D
	tyx		; BB
	brk $F8.b		; 00 F8
	cop $FF.b		; 02 FF
	sbc ($A2.b)		; F2 A2
	inc $61.b,X		; F6 61
	sbc [$E0.b]		; E7 E0
	cmp $C0.b,S		; C3 C0
	sta $84.b		; 85 84
	jsl $0B6F22.l		; 22 22 6F 0B
	adc $45.b,X		; 75 45
	clv		; B8
	ora [$D0.b]		; 07 D0
	asl $1CF0.w		; 0E F0 1C
	bra  56.b		; 80 38
	cpy #$0010.w		; C0 10 00
	jsr $C020.w		; 20 20 C0
	bpl -32.b		; 10 E0
	.db $62, $90, $64		; 62 90 64
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bvc -32.b		; 50 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $03.b		; 05 03
	ora $070B07.l		; 0F 07 0B 07
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	tsb $000F.w		; 0C 0F 00
	and $E77FE0.l,X		; 3F E0 7F E7
	cpx #$E67F.w		; E0 7F E6
	jmp.w [$D8E6]		; DC E6 D8
	cmp [$B9.b]		; C7 B9
	dec $8CB9.w		; CE B9 8C
	adc $5770.w,Y		; 79 70 57
	inc $97.b,X		; F6 97
	sbc ($82.b)		; F2 82
	sbc ($30.b,S),Y		; F3 30
	sbc [$30.b],Y		; F7 30
	inc $E758.w,X		; FE 58 E7
	adc ($E6.b,X)		; 61 E6
	ldy #$BF78.w		; A0 78 BF
	ply		; 7A
	lda $BF7A.w,X		; BD 7A BF
	ror $7EBB.w,X		; 7E BB 7E
	lda $3FFE3F.l,X		; BF 3F FE 3F
	ror $5E3F.w,X		; 7E 3F 5E
	adc $427F40.l,X		; 7F 40 7F 42
	adc $447F40.l,X		; 7F 40 7F 44
	adc $017F40.l,X		; 7F 40 7F 01
	adc $617F41.l,X		; 7F 41 7F 61
	tsb $FB.b		; 04 FB
	ora #$F6.b		; 09 F6
	ora #$F6.b		; 09 F6
	ora ($ED.b)		; 12 ED
	ora ($ED.b)		; 12 ED
	cop $FD.b		; 02 FD
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	sbc $DBE4.w		; ED E4 DB
	cmp #$DB.b		; C9 DB
	cmp #$B6.b		; C9 B6
	sta ($96.b)		; 92 96
	sta ($CE.b)		; 92 CE
	.db $42, $CD		; 42 CD
	rti		; 40

	sbc ($A0.b,X)		; E1 A0
	and ($80.b,S),Y		; 33 80
	asl $03.b		; 06 03
	sbc $FFFF87.l,X		; FF 87 FF FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	brk $20.b		; 00 20
	sta ($6A.b)		; 92 6A
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	asl $87.b		; 06 87
	cmp $FFF7FF.l		; CF FF F7 FF
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	lda ($97.b)		; B2 97
	bmi  24.b		; 30 18
	ldy #$7008.w		; A0 08 70
	tay		; A8
	bra -72.b		; 80 B8
	bra -128.b		; 80 80
	bpl  24.b		; 10 18
	trb $0F7E.w		; 1C 7E 0F
	cmp $10C000.l,X		; DF 00 C0 10
	rti		; 40

	bpl -128.b		; 10 80
	bra -64.b		; 80 C0
	bra  -8.b		; 80 F8
	brk $FE.b		; 00 FE
	tsb $06BF.w		; 0C BF 06
	and $0FF007.l,X		; 3F 07 F0 0F
	clv		; B8
	ora [$98.b]		; 07 98
	ora $98.b,S		; 03 98
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	sta $101790.l,X		; 9F 90 17 10
	ora $080F08.l		; 0F 08 0F 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $60.b		; 00 60
	cpy #$8060.w		; C0 60 80
	jsr $20C0.w		; 20 C0 20
	cpx #$C030.w		; E0 30 C0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -64.b		; 10 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$E020.w		; E0 20 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpx #$E03F.w		; E0 3F E0
	asl $1FC0.w,X		; 1E C0 1F
	cmp ($3E.b,X)		; C1 3E
	cmp ($3C.b,X)		; C1 3C
	cmp ($7E.b,X)		; C1 7E
	cmp $78.b,S		; C3 78
.INDEX 16
	rep #$1F		; C2 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	eor ($7E.b,X)		; 41 7E
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $48.b		; 00 48
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
	bpl  80.b		; 10 50
	cli		; 58
	sed		; F8
	tya		; 98
	sed		; F8
	bmi  -8.b		; 30 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  -8.b		; 10 F8
	bvc  -4.b		; 50 FC
	bpl  -4.b		; 10 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	jmp ($7CC6.w,X)		; 7C C6 7C
	dec $38.b		; C6 38
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	.db $62, $3C, $62		; 62 3C 62
	tsb $1C63.w		; 0C 63 1C
	adc ($38.b,S),Y		; 73 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($1E40.w,X)		; 7C 40 1E
	cop $1E.b		; 02 1E
	cop $3E.b		; 02 3E
	jsl $80222E.l		; 22 2E 22 80
	inc $7E81.w,X		; FE 81 7E
	bvs -113.b		; 70 8F
	jmp ($4F83.w,X)		; 7C 83 4F
	bra  65.b		; 80 41
	sta ($4F.b,X)		; 81 4F
	sta ($3F.b,X)		; 81 3F
	cpy #$A23B.w		; C0 3B A2
	ora $0ED0.w,X		; 1D D0 0E
	iny		; C8
	cop $32.b		; 02 32
	bra -68.b		; 80 BC
	ora ($3E.b,X)		; 01 3E
	ora ($B0.b,X)		; 01 B0
	brk $CE.b		; 00 CE
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	bcc  96.b		; 90 60
	bvs -128.b		; 70 80
	bcc   0.b		; 90 00
	bpl   0.b		; 10 00
	bne   0.b		; D0 00
	beq   0.b		; F0 00
	bcs  16.b		; B0 10
	bcs  16.b		; B0 10
	ldy #$0020.w		; A0 20 00
	jsr $6000.w		; 20 00 60
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	ora $3E0F17.l		; 0F 17 0F 3E
	ora $3F1E2E.l,X		; 1F 2E 1E 3F
	rol $3E5D.w,X		; 3E 5D 3E
	adc $7F3C.w,X		; 7D 3C 7F
	bit $1F7B.w,X		; 3C 7B 1F
	clc		; 18
	ora $313F01.l,X		; 1F 01 3F 31
	and $223F00.l,X		; 3F 00 3F 22
	and $407F02.l,X		; 3F 02 7F 40
	adc $738604.l,X		; 7F 04 86 73
	brk $FC.b		; 00 FC
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	ora [$FF.b]		; 07 FF
	brk $EF.b		; 00 EF
	brk $E0.b		; 00 E0
	tsb $FB.b		; 04 FB
	cpx $E0A0.w		; EC A0 E0
	adc $C8.b,S		; 63 C8
	eor [$D7.b]		; 47 D7
	eor $C04FD7.l		; 4F D7 4F C0
	eor $E57FE0.l,X		; 5F E0 7F E5
	stz $1F.b		; 64 1F
	adc $0F6F1F.l,X		; 7F 1F 6F 0F
	and [$0F.b],Y		; 37 0F
	and ($01.b,S),Y		; 33 01
	ora $001F01.l,X		; 1F 01 1F 00
	phd		; 0B
	brk $01.b		; 00 01
	and $103F00.l,X		; 3F 00 3F 10
	and $0C1F28.l,X		; 3F 28 1F 0C
	tas		; 1B
	bpl  11.b		; 10 0B
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	bra 127.b		; 80 7F
	cpy #$C33F.w		; C0 3F C3
	lda $C7BCC5.l,X		; BF C5 BC C7
	ldy $F883.w,X		; BC 83 F8
	sta $F8.b,S		; 83 F8
	ora [$F8.b]		; 07 F8
	pea $F7B4.w		; F4 B4 F7
	cmp [$F4.b],Y		; D7 F4
	mvn $50,$F3		; 54 F3 50
	sbc ($50.b,S),Y		; F3 50
	sbc $28EF28.l		; EF 28 EF 28
	cmp $689548.l		; CF 48 95 68
	ora $EA.b,X		; 15 EA
	bit $CB.b,X		; 34 CB
	bit $DB.b		; 24 DB
	jsl $9D62DD.l		; 22 DD 62 9D
	.db $42, $BD		; 42 BD
	.db $42, $BD		; 42 BD
	lda $97.b,X		; B5 97
	adc $15.b,X		; 75 15
	adc $34.b,X		; 75 34
	sbc $EE24.w		; ED 24 EE
	jsl $DE62EE.l		; 22 EE 62 DE
	.db $42, $DE		; 42 DE
	.db $42, $0B		; 42 0B
	cmp [$01.b]		; C7 01
	beq -128.b		; F0 80
	bvs -128.b		; 70 80
	bvs  64.b		; 70 40
	clv		; B8
	rti		; 40

	clv		; B8
	jsr $20D8.w		; 20 D8 20
	cld		; D8
	ora $3F.b,S		; 03 3F
	brk $0F.b		; 00 0F
	bra -127.b		; 80 81
	ldy #$D080.w		; A0 80 D0
	rti		; 40

	bne  64.b		; D0 40
	cpx #$E020.w		; E0 20 E0
	jsr $0301.w		; 20 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7018.w		; E0 18 70
	clc		; 18
	bvs  24.b		; 70 18
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	bvs   8.b		; 70 08
	bvs  12.b		; 70 0C
	bvs  12.b		; 70 0C
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	bit $3086.w,X		; 3C 86 30
	stx $F8.b		; 86 F8
	sty $0C70.w		; 8C 70 0C
	cpx #$F008.w		; E0 08 F0
	clc		; 18
	cpy #$E018.w		; C0 18 E0
	bmi 120.b		; 30 78
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	ora ($01.b,S),Y		; 13 01
	and [$01.b],Y		; 37 01
	eor [$02.b],Y		; 57 02
	sta $065F02.l		; 8F 02 5F 06
	and $0E1D00.l,X		; 3F 00 1D 0E
	asl $0C0C.w		; 0E 0C 0C
	ora #$2B08.w		; 09 08 2B
	plp		; 28
	adc [$70.b],Y		; 77 70
	rol $20.b		; 26 20
	asl $00.b		; 06 00
	asl $0008.w		; 0E 08 00
	jsr ($FE60.w,X)		; FC 60 FE
	jsr ($37FF.w,X)		; FC FF 37
	sbc $89FF44.l,X		; FF 44 FF 89
	sbc $968E71.l,X		; FF 71 8E 96
	rti		; 40

	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $76.b		; 00 76
	brk $CD.b		; 00 CD
	brk $80.b		; 00 80
	cop $0C.b		; 02 0C
	adc ($06.b,X)		; 61 06
	ora ($04.b,S),Y		; 13 04
	ora ($10.b)		; 12 10
	and ($14.b)		; 32 14
	rol $00.b,X		; 36 00
	bit $00.b		; 24 00
	jmp ($7C18.w,X)		; 7C 18 7C
	brk $7C.b		; 00 7C
	tsb $1E00.w		; 0C 00 1E
	ora ($0C.b)		; 12 0C
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	tsb $20.b		; 04 20
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	ror $0C.b		; 66 0C
	ror $18.b		; 66 18
	and ($08.b)		; 32 08
	and ($00.b)		; 32 00
	and ($00.b)		; 32 00
	rol $1E00.w,X		; 3E 00 1E
	brk $1E.b		; 00 1E
	clc		; 18
	brk $38.b		; 00 38
	jsr $202C.w		; 20 2C 20
	trb $0C10.w		; 1C 10 0C
	brk $10.b		; 00 10
	bpl  12.b		; 10 0C
	tsb $0000.w		; 0C 00 00
	php		; 08
	cpx $48.b		; E4 48
	cpx $78.b		; E4 78
	cpx $20.b		; E4 20
	cpx $18.b		; E4 18
	jsr ($7E00.w,X)		; FC 00 7E
	bit $007E.w,X		; 3C 7E 00
	rol $0058.w,X		; 3E 58 00
	cli		; 58
	brk $58.b		; 00 58
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $001908.l,X		; 1F 08 19 00
	trb $1E00.w		; 1C 00 1E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	phd		; 0B
	php		; 08
	ora $0F0C.w		; 0D 0C 0F
	ora $000909.l		; 0F 09 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	php		; 08
	and $00771B.l,X		; 3F 1B 77 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	phd		; 0B
	asl $3E14.w,X		; 1E 14 3E
	pld		; 2B
	.db $42, $BD		; 42 BD
	cop $FD.b		; 02 FD
	cpx #$E0FF.w		; E0 FF E0
	and $C21FC1.l,X		; 3F C1 1F C2
	asl $3CE1.w,X		; 1E E1 3C
	cmp ($3C.b,X)		; C1 3C
	dec $1E42.w,X		; DE 42 1E
	cop $00.b		; 02 00
	brk $D1.b		; 00 D1
	ora ($F2.b),Y		; 11 F2
	ora ($F5.b)		; 12 F5
	trb $C7.b		; 14 C7
	tsb $E7.b		; 04 E7
	bit $07.b		; 24 07
	tsb $0803.w		; 0C 03 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	asl $18.b		; 06 18
	ora $110619.l		; 0F 19 06 11
	tsb $11.b		; 04 11
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	asl $00.b		; 06 00
	ora $000E01.l		; 0F 01 0E 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$A0F0.w		; C0 F0 A0
	beq  32.b		; F0 20
	beq -128.b		; F0 80
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$C000.w		; A0 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	cpy #$A070.w		; C0 70 A0
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$4040.w		; C0 40 40
	ldy #$A020.w		; A0 20 A0
	jsr $00C0.w		; 20 C0 00
	bne  16.b		; D0 10
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	asl $0419.w		; 0E 19 04
	and ($00.b,S),Y		; 33 00
	ror $7C18.w,X		; 7E 18 7C
	brk $7C.b		; 00 7C
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $000608.l		; 0F 08 06 00
	trb $2010.w		; 1C 10 20
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	and $107A88.l,X		; 3F 88 7A 10
	sbc ($28.b)		; F2 28
.INDEX 8
	sep #$5C		; E2 5C
	dec $3C.b		; C6 3C
	sty $38.b		; 84 38
	sty $30.b		; 84 30
	sty $CA.b		; 84 CA
	asl A		; 0A
	stx $12.b,Y		; 96 12
	bit $5C20.w		; 2C 20 5C
	rti		; 40

	sec		; 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc ($00.b)		; F2 00
	sta $000000.l		; 8F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($70.b,X)		; 01 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	php		; 08
	bvs -104.b		; 70 98
	rts		; 60

	sed		; F8
	brk $90.b		; 00 90
	php		; 08
	bpl   8.b		; 10 08
	bne   8.b		; D0 08
	beq   8.b		; F0 08
	bmi   8.b		; 30 08
	bcs  16.b		; B0 10
	ldy #$20.b		; A0 20
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	clc		; 18
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $0F.b		; 06 0F
	sty $1F.b		; 84 1F
	sty $62.b		; 84 62
	bcc 105.b		; 90 69
	ora ($ED.b)		; 12 ED
	ora ($ED.b)		; 12 ED
	jsl $DE21DD.l		; 22 DD 21 DE
	and ($DE.b,X)		; 21 DE
	bra  -1.b		; 80 FF
	ldy #$9F.b		; A0 9F
	bcs -106.b		; B0 96
	ror $12.b,X		; 76 12
	ror $12.b,X		; 76 12
	inc $EF22.w		; EE 22 EF
	and ($EF.b,X)		; 21 EF
	and ($00.b,X)		; 21 00
	rti		; 40

	rti		; 40

	ldy #$40.b		; A0 40
	ldy #$20.b		; A0 20
	bne  32.b		; D0 20
	bne  32.b		; D0 20
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bra  64.b		; 80 40
	rti		; 40

	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	rts		; 60

	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	bit $3EDB.w,X		; 3C DB 3E
	cmp $D93E.w,Y		; D9 3E D9
	asl $1F7B.w,X		; 1E 7B 1F
	ply		; 7A
	ora $2F1F7E.l,X		; 1F 7E 1F 2F
	ora $247F3F.l		; 0F 3F 7F 24
	adc $267F26.l,X		; 7F 26 7F 26
	adc $053F44.l,X		; 7F 44 3F 05
	and $101F21.l,X		; 3F 21 1F 10
	ora $FB0400.l,X		; 1F 00 04 FB
	php		; 08
	sbc [$18.b],Y		; F7 18
	sbc [$11.b]		; E7 11
	inc $EE11.w		; EE 11 EE
	cop $FD.b		; 02 FD
	.db $82, $7D, $80		; 82 7D 80
	adc $DBC4DD.l,X		; 7F DD C4 DB
	iny		; C8
	tyx		; BB
	tya		; 98
	lda [$11.b],Y		; B7 11
	cmp [$51.b],Y		; D7 51
	dec $42.b		; C6 42
	inc $A2.b		; E6 A2
	beq -112.b		; F0 90
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0D.b,S		; 03 0D
	ora $1F.b,S		; 03 1F
	ora [$1B.b]		; 07 1B
	ora $3F0F37.l		; 0F 37 0F 3F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora $040F08.l		; 0F 08 0F 04
	ora $001F18.l,X		; 1F 18 1F 00
	adc [$EF.b],Y		; 77 EF
	cpx #$FF.b		; E0 FF
	sbc ($D9.b,X)		; E1 D9
	cmp $F9.b,S		; C3 F9
	dec $86B9.w		; CE B9 86
	sbc ($9F.b),Y		; F1 9F
	adc ($0D.b)		; 72 0D
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	sta [$F6.b],Y		; 97 F6
	asl $F6.b		; 06 F6
	bmi -18.b		; 30 EE
	php		; 08
	sbc [$61.b]		; E7 61
	dec $CC10.w,X		; DE 10 CC
	cmp ($DE.b,X)		; C1 DE
	eor $03.b,S		; 43 03
	inc $FE00.w,X		; FE 00 FE
	ora ($DB.b,X)		; 01 DB
	brk $93.b		; 00 93
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($40.b,X)		; C1 40
	sta $82.b,S		; 83 82
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $0A.b		; E4 0A
	cpx #$0A.b		; E0 0A
	cpx #$0A.b		; E0 0A
	stz $0E.b,X		; 74 0E
	sed		; F8
	stx $8630.w		; 8E 30 86
	cli		; 58
	dec $38.b		; C6 38
	inc $F4.b		; E6 F4
	brk $F4.b		; 00 F4
	brk $FC.b		; 00 FC
	php		; 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	sed		; F8
	bra  60.b		; 80 3C
	tsb $5C.b		; 04 5C
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
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
	php		; 08
	cpx $48.b		; E4 48
	cpx $78.b		; E4 78
	cpx $20.b		; E4 20
	cpx $18.b		; E4 18
	jsr ($7E00.w,X)		; FC 00 7E
	bit $007E.w,X		; 3C 7E 00
	rol $0058.w,X		; 3E 58 00
	cli		; 58
	brk $58.b		; 00 58
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	cpy $58.b		; C4 58
	cpy $CC18.w		; CC 18 CC
	jsr $20E8.w		; 20 E8 20
	inx		; E8
	bmi  -8.b		; 30 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	sec		; 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	rti		; 40

	cli		; 58
	pha		; 48
	cli		; 58
	pha		; 48
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsr $0300.w		; 20 00 03
	sta $09BF0F.l,X		; 9F 0F BF 09
	lda $147F12.l,X		; BF 12 7F 14
	sbc $04FC33.l,X		; FF 33 FC 04
	nop		; EA
	tas		; 1B
	inc $6067.w		; EE 67 60
	eor $405F40.l		; 4F 40 5F 40
	tyx		; BB
	bra  54.b		; 80 36
	brk $34.b		; 00 34
	brk $70.b		; 00 70
	eor $F2.b,S		; 43 F2
	ldx #$00.b		; A2 00
	sbc ($E0.b),Y		; F1 E0
	sbc $26FFBC.l,X		; FF BC FF 26
	sbc $89FF4D.l,X		; FF 4D FF 89
	adc [$B4.b],Y		; 77 B4
	ora $B8.b,S		; 03 B8
	ora [$C0.b]		; 07 C0
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $B7.b		; 00 B7
	brk $6F.b		; 00 6F
	brk $05.b		; 00 05
	bpl  97.b		; 10 61
	php		; 08
	.db $62, $90, $B0		; 62 90 B0
	tsb $2458.w		; 0C 58 24
	bra 108.b		; 80 6C
	ora #$F7.b		; 09 F7
	ora $BB.b,S		; 03 BB
	asl $BF.b		; 06 BF
	ora ($DE.b,X)		; 01 DE
	brk $C8.b		; 00 C8
	clc		; 18
	pha		; 48
	bit $30A4.w,X		; 3C A4 30
	and $29.b,S		; 23 29
	pld		; 2B
	ora ($07.b,S),Y		; 13 07
	bpl   7.b		; 10 07
	brk $87.b		; 00 87
	brk $86.b		; 00 86
	asl $07.b		; 06 07
	phd		; 0B
	ora $E86FC2.l		; 0F C2 6F E8
	inc $90.b,X		; F6 90
	cpx #$40.b		; E0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $023F0A.l		; 0F 0A 3F 02
	sbc $00FFC0.l,X		; FF C0 FF 00
	inc $E000.w,X		; FE 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	bra -97.b		; 80 9F
	sbc #$8F.b		; E9 8F
	pea $F886.w		; F4 86 F8
	.db $82, $F8, $82		; 82 F8 82
	dec A		; 3A
	.db $82, $3E, $83		; 82 3E 83
	ora $006001.l		; 0F 01 60 00
	stz $04.b,X		; 74 04
	adc $7F00.w,Y		; 79 00 7F
	cop $7F.b		; 02 7F
	cop $FD.b		; 02 FD
	bra  -4.b		; 80 FC
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora $1F0737.l		; 0F 37 07 1F
	ora [$1B.b]		; 07 1B
	ora $0F.b,S		; 03 0F
	ora $0D.b,S		; 03 0D
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($02.b,X)		; 01 02
	ora $000F18.l,X		; 1F 18 0F 00
	ora $00070C.l		; 0F 0C 07 00
	ora [$06.b]		; 07 06
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	bra  -1.b		; 80 FF
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sed		; F8
	pha		; 48
	sbc $FD41.w,Y		; F9 41 FD
	eor $FD.b		; 45 FD
	eor $FC.b		; 45 FC
	bit $FC.b		; 24 FC
	cpx $DC.b		; E4 DC
	mvp $88,$98		; 44 98 88
	ora $7E1F2E.l,X		; 1F 2E 1F 7E
	ora $5D3E7E.l,X		; 1F 7E 3E 5D
	rol $3E5D.w,X		; 3E 5D 3E
	cmp $DB3C.w,X		; DD 3C DB
	bit $3FDB.w,X		; 3C DB 3F
	and ($3F.b),Y		; 31 3F
	ora ($3F.b,X)		; 01 3F
	ora ($7F.b,X)		; 01 7F
	.db $62, $7F, $62		; 62 7F 62
	adc $247F22.l,X		; 7F 22 7F 24
	adc $FE0524.l,X		; 7F 24 05 FE
	ora $26E0.w,Y		; 19 E0 26
	dec $0F.b,X		; D6 0F
	sbc $0BEF07.l		; EF 07 EF 0B
	sbc [$02.b]		; E7 02
	sbc ($04.b),Y		; F1 04
	sed		; F8
	bra   1.b		; 80 01
	tya		; 98
	sta $A7AFB0.l,X		; 9F B0 AF A7
	sta $C19FA7.l,X		; 9F A7 9F C1
	cmp $ECEFE0.l,X		; DF E0 EF EC
	sbc [$00.b]		; E7 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C05.w		; 0E 05 1C
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	ora $000030.l,X		; 1F 30 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	cli		; 58
	dec $B0.b		; C6 B0
	stx $78.b		; 86 78
	tsb $0CE0.w		; 0C E0 0C
	cpy #$1C.b		; C0 1C
	bra  56.b		; 80 38
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	ldy $7C84.w,X		; BC 84 7C
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $90.b		; 00 90
	bpl  48.b		; 10 30
	bmi   0.b		; 30 00
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
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	ora $081F04.l		; 0F 04 1F 08
	and $377F1B.l,X		; 3F 1B 7F 37
	sed		; F8
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $061E03.l		; 0F 03 1E 06
	dec A		; 3A
	ora $78.b,S		; 03 78
	ora $8BA95A.l		; 0F 5A A9 8B
	sei		; 78
	ora $EC.b,X		; 15 EC
	dec A		; 3A
	dec $4D.b		; C6 4D
	tyx		; BB
	brk $F8.b		; 00 F8
	cop $FF.b		; 02 FF
	bra  -2.b		; 80 FE
	inc $61.b,X		; F6 61
	sbc [$E0.b]		; E7 E0
	cmp $C0.b,S		; C3 C0
	sta $84.b		; 85 84
	jsl $0B6F22.l		; 22 22 6F 0B
	adc $45.b,X		; 75 45
	tsa		; 3B
	ldx #$D0.b		; A2 D0
	asl $1CF0.w		; 0E F0 1C
	bra  56.b		; 80 38
	cpy #$10.b		; C0 10
	brk $20.b		; 00 20
	jsr $10C0.w		; 20 C0 10
	cpx #$88.b		; E0 88
	bvs 100.b		; 70 64
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bvc -32.b		; 50 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bra -80.b		; 80 B0
	bpl -127.b		; 10 81
	ror $8F70.w,X		; 7E 70 8F
	ror $4F81.w,X		; 7E 81 4F
	bra -63.b		; 80 C1
	ora ($CF.b,X)		; 01 CF
	ora ($FF.b,X)		; 01 FF
	cpy #$B3.b		; C0 B3
	bra  29.b		; 80 1D
	bne  14.b		; D0 0E
	iny		; C8
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	ora ($BE.b,X)		; 01 BE
	ora ($B0.b,X)		; 01 B0
	cpy #$CE.b		; C0 CE
	bra  -4.b		; 80 FC
	sta [$80.b]		; 87 80
	sbc $C67F82.l,X		; FF 82 7F C6
	rol $9E2E.w		; 2E 2E 9E
	stz $C0C0.w,X		; 9E C0 C0
	sbc $3F5EFF.l,X		; FF FF 5E 3F
	brk $F8.b		; 00 F8
	brk $82.b		; 00 82
	tsb $C7.b		; 04 C7
	asl $9CFF.w		; 0E FF 9C
	sbc $0EFFC0.l,X		; FF C0 FF 0E
	sbc $00FF0C.l,X		; FF 0C FF 00
	ora $000E00.l,X		; 1F 00 0E 00
	tsb $0800.w		; 0C 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0804.w		; 0C 04 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	mvn $08,$C8		; 54 C8 08
	cpx $04.b		; E4 04
	inc $00.b,X		; F6 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000030.l		; EF 30 00 00
	brk $30.b		; 00 30
	brk $58.b		; 00 58
	rti		; 40

	pla		; 68
	rts		; 60

	sei		; 78
	sei		; 78
	eor $00004F.l		; 4F 4F 00 00
	tas		; 1B
	inc $A95A.w		; EE 5A A9
	phb		; 8B
	sei		; 78
	ora $EC.b,X		; 15 EC
	dec A		; 3A
	dec $4D.b		; C6 4D
	tyx		; BB
	brk $F8.b		; 00 F8
	cop $FF.b		; 02 FF
	sbc ($A2.b)		; F2 A2
	inc $61.b,X		; F6 61
	sbc [$E0.b]		; E7 E0
	cmp $C0.b,S		; C3 C0
	sta $84.b		; 85 84
	jsl $0B6F22.l		; 22 22 6F 0B
	adc $45.b,X		; 75 45
	clv		; B8
	ora [$D0.b]		; 07 D0
	asl $1CF0.w		; 0E F0 1C
	bra  56.b		; 80 38
	cpy #$10.b		; C0 10
	brk $20.b		; 00 20
	jsr $10C0.w		; 20 C0 10
	cpx #$62.b		; E0 62
	bcc 100.b		; 90 64
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bvc -32.b		; 50 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $03.b		; 05 03
	ora $070B07.l		; 0F 07 0B 07
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	tsb $000F.w		; 0C 0F 00
	and $E77FE0.l,X		; 3F E0 7F E7
	cpx #$59.b		; E0 59
	dec $F3.b		; C6 F3
	cmp $E69DA2.l		; CF A2 9D E6
	tsx		; BA
	eor $3C.b		; 45 3C
	cmp #$70.b		; C9 70
	eor [$F6.b],Y		; 57 F6
	sta [$EE.b],Y		; 97 EE
	tay		; A8
	cmp $FC11.w,X		; DD 11 FC
	rts		; 60

	tsx		; BA
	jsl $70C5FC.l		; 22 FC C5 70
	eor $78.b,S		; 43 78
	lda $7ABD7A.l,X		; BF 7A BD 7A
	lda $7EBB7E.l,X		; BF 7E BB 7E
	lda $3FFE3F.l,X		; BF 3F FE 3F
	ror $5E3F.w,X		; 7E 3F 5E
	adc $427F40.l,X		; 7F 40 7F 42
	adc $447F40.l,X		; 7F 40 7F 44
	adc $017F40.l,X		; 7F 40 7F 01
	adc $617F41.l,X		; 7F 41 7F 61
	ora #$E7.b		; 09 E7
	ora [$F3.b]		; 07 F3
	ora #$F5.b		; 09 F5
	clc		; 18
	inc $11.b		; E6 11
	inc $EE11.w		; EE 11 EE
	ora ($FE.b,X)		; 01 FE
	sta ($7E.b,X)		; 81 7E
	cpy #$DF.b		; C0 DF
	cmp ($CF.b),Y		; D1 CF
	lda $BA8B.w,Y		; B9 8B BA
	sta $91B7.w,Y		; 99 B7 91
	cmp [$51.b],Y		; D7 51
	cmp [$41.b]		; C7 41
	sbc $A1.b,S		; E3 A1
	lda ($80.b,S),Y		; B3 80
	sta [$80.b]		; 87 80
	sbc $C77F02.l,X		; FF 02 7F C7
	eor [$67.b]		; 47 67
	inc A		; 1A
	txs		; 9A
	ora $E5.b		; 05 E5
	ora ($2A.b)		; 12 2A
	bra  -4.b		; 80 FC
	brk $F8.b		; 00 F8
	brk $82.b		; 00 82
	asl $C7.b		; 06 C7
	asl $FF.b		; 06 FF
	php		; 08
	adc $321F85.l,X		; 7F 85 1F 32
	cmp [$20.b],Y		; D7 20
	ora $A0.b,S		; 03 A0
	ora ($60.b,S),Y		; 13 60
	asl $0DC2.w,X		; 1E C2 0D
	.db $42, $84		; 42 84
	bra -126.b		; 80 82
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	trb $1FC0.w		; 1C C0 1F
	eor ($0E.b)		; 52 0E
	sta $0706.w		; 8D 06 07
	cop $83.b		; 02 83
	bra -127.b		; 80 81
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $92.b		; 00 92
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $030C.w		; 0C 0C 03
	php		; 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	asl A		; 0A
	clc		; 18
	bpl  48.b		; 10 30
	and $5A61.w		; 2D 61 5A
	cmp $07.b,S		; C3 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	and $4301.w,X		; 3D 01 43
	sei		; 78
	cmp [$6C.b]		; C7 6C
	cmp $64.b,S		; C3 64
	ora ($44.b,X)		; 01 44
	sta $C6.b,S		; 83 C6
	ora $86.b,S		; 03 86
	ora $86.b,S		; 03 86
	cop $06.b		; 02 06
	sta $008308.l		; 8F 08 83 00
	sta $00.b,S		; 83 00
	cmp $40.b,S		; C3 40
	ora ($00.b,X)		; 01 00
	sta ($80.b,X)		; 81 80
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpy #$30.b		; C0 30
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	clc		; 18
	jmp ($641A.w,X)		; 7C 1A 64
	tsb $72.b		; 04 72
	asl $39.b		; 06 39
	asl A		; 0A
	bit $3F0C.w,X		; 3C 0C 3F
	ora [$3F.b]		; 07 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	clc		; 18
	brk $0C.b		; 00 0C
	brk $16.b		; 00 16
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	ora $0A1F04.l		; 0F 04 1F 0A
	and $731F.w,X		; 3D 1F 73
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $141C0B.l		; 0F 0B 1C 14
	dec A		; 3A
	pld		; 2B
	ora #$F6.b		; 09 F6
	brk $FF.b		; 00 FF
	beq  -2.b		; F0 FE
	php		; 08
	asl $063C.w		; 0E 3C 06
	clv		; B8
	.db $82, $BE, $83		; 82 BE 83
	bit $7B81.w,X		; 3C 81 7B
	ora #$02.b		; 09 02
	brk $08.b		; 00 08
	php		; 08
	pea $F804.w		; F4 04 F8
	brk $7E.b		; 00 7E
	cop $7C.b		; 02 7C
	brk $FE.b		; 00 FE
	bra -128.b		; 80 80
	inc $7E81.w,X		; FE 81 7E
	bvs -113.b		; 70 8F
	ror $4F81.w,X		; 7E 81 4F
	brk $C1.b		; 00 C1
	sta ($CF.b,X)		; 81 CF
	sta ($FF.b,X)		; 81 FF
	cpy #$3B.b		; C0 3B
	ldx #$1D.b		; A2 1D
	bne  14.b		; D0 0E
	iny		; C8
	brk $30.b		; 00 30
	brk $BC.b		; 00 BC
	ora ($BE.b,X)		; 01 BE
	sta ($B0.b,X)		; 81 B0
	cpy #$CE.b		; C0 CE
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	bcc  96.b		; 90 60
	beq   8.b		; F0 08
	bcc   8.b		; 90 08
	clc		; 18
	tsb $04D0.w		; 0C D0 04
	pea $B006.w		; F4 06 B0
	bpl -80.b		; 10 B0
	bpl -96.b		; 10 A0
	jsr $2000.w		; 20 00 20
	php		; 08
	pla		; 68
	brk $E0.b		; 00 E0
	tsb $0824.w		; 0C 24 08
	cpy #$0F.b		; C0 0F
	asl $0F.b,X		; 16 0F
	rol $2F1E.w,X		; 3E 1E 2F
	asl $3E3D.w,X		; 1E 3D 3E
	eor $7D3E.w,X		; 5D 3E 7D
	bit $3C7B.w,X		; 3C 7B 3C
	tda		; 7B
	ora $011F19.l,X		; 1F 19 1F 01
	rol $3E30.w,X		; 3E 30 3E
	cop $3E.b		; 02 3E
	jsl $7F023E.l		; 22 3E 02 7F
	mvp $04,$7F		; 44 7F 04
	tsb $F9.b		; 04 F9
	brk $FD.b		; 00 FD
	brk $CE.b		; 00 CE
	bmi -74.b		; 30 B6
	sei		; 78
	tda		; 7B
	sei		; 78
	tsa		; 3B
	bit $1E9C.w,X		; 3C 9C 1E
	dec $0300.w		; CE 00 03
	bvs   3.b		; 70 03
	iny		; C8
	and ($80.b),Y		; 31 80
	adc $FC32.w,Y		; 79 32 FC
	dec A		; 3A
	jsr ($7F1C.w,X)		; FC 1C 7F
	stx $1F3F.w		; 8E 3F 1F
	adc $0F6F1F.l,X		; 7F 1F 6F 0F
	and [$0F.b],Y		; 37 0F
	and ($01.b,S),Y		; 33 01
	ora $001F01.l,X		; 1F 01 1F 00
	phd		; 0B
	brk $01.b		; 00 01
	and $103F00.l,X		; 3F 00 3F 10
	and $0C1F28.l,X		; 3F 28 1F 0C
	tas		; 1B
	bpl  11.b		; 10 0B
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	bra 127.b		; 80 7F
	cpy #$3F.b		; C0 3F
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	beq -80.b		; F0 B0
	sbc ($D1.b),Y		; F1 D1
	sbc ($51.b),Y		; F1 51
	sbc ($51.b),Y		; F1 51
	sbc ($51.b),Y		; F1 51
	sbc ($21.b,X)		; E1 21
	cpx $24.b		; E4 24
	dec $46.b		; C6 46
	cmp $CA.b,X		; D5 CA
	cpy $EB.b		; C4 EB
.ACCU 16
	rep #$ED		; C2 ED
	.db $82, $ED, $12		; 82 ED 12
	eor $AE11.w		; 4D 11 AE
	ora #$09F6.w		; 09 F6 09
	inc $D5.b,X		; F6 D5
	sbc $C5.b,X		; F5 C5
	pea $F2C6.w		; F4 C6 F2
	stx $F2.b		; 86 F2
	asl $F2.b,X		; 16 F2
	and [$51.b],Y		; 37 51
	tda		; 7B
	ora #$097B.w		; 09 7B 09
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	rti		; 40

	ldy #$40.b		; A0 40
	ldy #$20.b		; A0 20
	bne  32.b		; D0 20
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$40.b		; C0 40
	rts		; 60

	jsr $2060.w		; 20 60 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0D.b		; 00 0D
	brk $15.b		; 00 15
	brk $23.b		; 00 23
	brk $17.b		; 00 17
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	asl A		; 0A
	asl A		; 0A
	ora $091C.w,X		; 1D 1C 09
	php		; 08
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $4DFF7F.l,X		; FF 7F FF 4D
	sbc $A2FF91.l,X		; FF 91 FF A2
	sbc $25E39C.l,X		; FF 9C E3 25
	bvc -128.b		; 50 80
	bra  62.b		; 80 3E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $B3.b		; 00 B3
	brk $A0.b		; 00 A0
	brk $83.b		; 00 83
	clc		; 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $07.b		; 05 07
	bit $09.b,X		; 34 09
	ror $FAFD.w,X		; 7E FD FA
	jsr ($F0E8.w,X)		; FC E8 F0
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	ora ($07.b,X)		; 01 07
	tsb $0F.b		; 04 0F
	brk $FF.b		; 00 FF
	sec		; 38
	sbc $40FFF0.l,X		; FF F0 FF 40
	jsr ($0000.w,X)		; FC 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	bmi  -4.b		; 30 FC
	pla		; 68
	jsr ($BC48.w,X)		; FC 48 BC
	ldy #$18.b		; A0 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra   8.b		; 80 08
	rti		; 40

	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FE.b,S		; 03 FE
	ora $FE.b,S		; 03 FE
	brk $FE.b		; 00 FE
	ora ($FF.b),Y		; 11 FF
	sec		; 38
	sbc $066F2C.l,X		; FF 2C 6F 06
	eor [$12.b]		; 47 12
	eor $35.b,S		; 43 35
	bit $39.b,X		; 34 39
	sec		; 38
	tsa		; 3B
	dec A		; 3A
	bit $052C.w		; 2C 2C 05
	ora $12.b		; 05 12
	cop $38.b		; 02 38
	brk $3C.b		; 00 3C
	brk $E0.b		; 00 E0
	php		; 08
	sed		; F8
	tsb $04F0.w		; 0C F0 04
	sed		; F8
	tsb $7C.b		; 04 7C
	asl $F8.b		; 06 F8
	.db $82, $3C, $82		; 82 3C 82
	ror $F8C3.w,X		; 7E C3 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	.db $82, $3C, $00		; 82 3C 00
	ora ($04.b,X)		; 01 04
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	asl $10.b		; 06 10
	ora [$11.b]		; 07 11
	tsb $31.b		; 04 31
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $101E00.l		; 0F 00 1E 10
	ora $38E011.l,X		; 1F 11 E0 38
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $33.b		; 06 33
	tsb $33.b		; 04 33
	php		; 08
	dec A		; 3A
	tsb $7E.b		; 04 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	bpl 124.b		; 10 7C
	trb $1E10.w		; 1C 10 1E
	ora ($14.b)		; 12 14
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bpl -12.b		; 10 F4
	bpl -12.b		; 10 F4
	tsb $F0.b		; 04 F0
	tsb $FA.b		; 04 FA
	cop $F9.b		; 02 F9
	ora ($FC.b,X)		; 01 FC
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	plp		; 28
	jsr $6068.w		; 20 68 60
	jmp ($7460.w)		; 6C 60 74
	bvs  94.b		; 70 5E
	cli		; 58
	phd		; 0B
	php		; 08
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	trb $1CC2.w		; 1C C2 1C
	.db $42, $3C		; 42 3C
	.db $62, $1C, $62		; 62 1C 62
	trb $1E63.w		; 1C 63 1E
	adc $0E.b,S		; 63 0E
	and $0E.b,S		; 23 0E
	and $7C.b,S		; 23 7C
	rti		; 40

	jmp ($1E40.w,X)		; 7C 40 1E
	cop $3E.b		; 02 3E
	jsl $3C223E.l		; 22 3E 22 3C
	jsr $001C.w		; 20 1C 00
	trb $7800.w		; 1C 00 78
	cpy $4410.w		; CC 10 44
	bpl  68.b		; 10 44
	jsr $1064.w		; 20 64 10
	stz $08.b,X		; 74 08
	rol $3E00.w,X		; 3E 00 3E
	tsb $303E.w		; 0C 3E 30
	brk $78.b		; 00 78
	rti		; 40

	bit $1C04.w,X		; 3C 04 1C
	tsb $2C.b		; 04 2C
	bit $04.b		; 24 04
	tsb $10.b		; 04 10
	brk $1C.b		; 00 1C
	brk $5A.b		; 00 5A
	lda #$788B.w		; A9 8B 78
	ora $EC.b,X		; 15 EC
	dec A		; 3A
	dec $4D.b		; C6 4D
	tyx		; BB
	brk $F8.b		; 00 F8
	cop $FF.b		; 02 FF
	bra  -2.b		; 80 FE
	inc $61.b,X		; F6 61
	sbc [$E0.b]		; E7 E0
	cmp $C0.b,S		; C3 C0
	sta $84.b		; 85 84
	jsl $0B6F22.l		; 22 22 6F 0B
	adc $45.b,X		; 75 45
	tsa		; 3B
	ldx #$D0.b		; A2 D0
	asl $1CF0.w		; 0E F0 1C
	bra  56.b		; 80 38
	cpy #$10.b		; C0 10
	brk $20.b		; 00 20
	jsr $10C0.w		; 20 C0 10
	cpx #$88.b		; E0 88
	bvs 100.b		; 70 64
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bvc -32.b		; 50 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bra -80.b		; 80 B0
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $1F03.w		; 0D 03 1F
	ora [$1B.b]		; 07 1B
	ora $3F0F37.l		; 0F 37 0F 3F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora $040F08.l		; 0F 08 0F 04
	ora $001F18.l,X		; 1F 18 1F 00
	adc [$EF.b],Y		; 77 EF
	cpx #$FF.b		; E0 FF
	sbc ($D9.b,X)		; E1 D9
	cmp $F9.b,S		; C3 F9
	dec $86B9.w		; CE B9 86
	sbc ($9F.b),Y		; F1 9F
	adc ($0D.b)		; 72 0D
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	sta [$F6.b],Y		; 97 F6
	asl $F6.b		; 06 F6
	bmi -18.b		; 30 EE
	php		; 08
	sbc [$61.b]		; E7 61
	dec $CC10.w,X		; DE 10 CC
	cmp ($DE.b,X)		; C1 DE
	eor $3C.b,S		; 43 3C
	stp		; DB
	rol $3ED9.w,X		; 3E D9 3E
	cmp $7B1E.w,Y		; D9 1E 7B
	ora $7E1F7A.l,X		; 1F 7A 1F 7E
	ora $3F0F2F.l,X		; 1F 2F 0F 3F
	adc $267F24.l,X		; 7F 24 7F 26
	adc $447F26.l,X		; 7F 26 7F 44
	and $213F05.l,X		; 3F 05 3F 21
	ora $001F10.l,X		; 1F 10 1F 00
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc [$11.b],Y		; F7 11
	inc $EE11.w		; EE 11 EE
	ora ($ED.b)		; 12 ED
	.db $82, $7D, $80		; 82 7D 80
	adc $DBC4CD.l,X		; 7F CD C4 DB
	iny		; C8
	txy		; 9B
	dey		; 88
	lda [$11.b],Y		; B7 11
	lda [$11.b],Y		; B7 11
	dec $52.b,X		; D6 52
	inc $A2.b		; E6 A2
	beq -80.b		; F0 B0
	sta [$80.b]		; 87 80
	sbc $C67F82.l,X		; FF 82 7F C6
	rol $9E2E.w		; 2E 2E 9E
	stz $C0C0.w,X		; 9E C0 C0
	sbc $3F5EFF.l,X		; FF FF 5E 3F
	brk $F8.b		; 00 F8
	brk $82.b		; 00 82
	tsb $C7.b		; 04 C7
	asl $9CFF.w		; 0E FF 9C
	sbc $0EFFC0.l,X		; FF C0 FF 0E
	sbc $B0FF0C.l,X		; FF 0C FF B0
	tsb $2458.w		; 0C 58 24
	bra 108.b		; 80 6C
	ora #$F7.b		; 09 F7
	ora $BB.b,S		; 03 BB
	asl $BF.b		; 06 BF
	ora ($DE.b,X)		; 01 DE
	brk $C8.b		; 00 C8
	clc		; 18
	pha		; 48
	bit $30A4.w,X		; 3C A4 30
	and $29.b,S		; 23 29
	pld		; 2B
	ora ($07.b,S),Y		; 13 07
	bpl   7.b		; 10 07
	brk $87.b		; 00 87
	brk $86.b		; 00 86
	ora $F01FE0.l		; 0F E0 1F F0
	ora [$F0.b],Y		; 17 F0
	ora [$B0.b]		; 07 B0
	ora [$30.b]		; 07 30
	ora $180F18.l		; 0F 18 0F 18
	ora [$18.b]		; 07 18
	lda $A0AFA0.l,X		; BF A0 AF A0
	ora $101F00.l		; 0F 00 1F 10
	ora $101710.l,X		; 1F 10 17 10
	ora [$00.b]		; 07 00
	ora $E63408.l		; 0F 08 34 E6
	bit $38E6.w,X		; 3C E6 38
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	sbc $3E.b,S		; E3 3E
	sbc $3E.b,S		; E3 3E
	sbc $1C.b,S		; E3 1C
	sbc ($58.b,X)		; E1 58
	rti		; 40

	cli		; 58
	rti		; 40

	jmp $425E40.l		; 5C 40 5E 42
	lsr $1C42.w,X		; 5E 42 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	pha		; 48
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	brk $1F.b		; 00 1F
	cpy #$1F.b		; C0 1F
	cpx $1F.b		; E4 1F
	inc $1F.b		; E6 1F
	sbc $1D.b		; E5 1D
	sbc $1D.b		; E5 1D
	inc $1C.b		; E6 1C
	ora $00E001.l		; 0F 01 E0 00
	inc $EB0E.w		; EE 0E EB
	phd		; 0B
	sbc #$09.b		; E9 09
	nop		; EA
	php		; 08
	nop		; EA
	php		; 08
	xba		; EB
	php		; 08
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	asl $3C61.w		; 0E 61 3C
	adc ($1E.b,X)		; 61 1E
	eor $38.b,S		; 43 38
	cmp $3C.b,S		; C3 3C
	cmp [$78.b]		; C7 78
	cmp [$30.b]		; C7 30
	stx $38.b		; 86 38
	stx STAT78.w		; 8E 3F 21
	asl $7C00.w,X		; 1E 00 7C
	rti		; 40

	ror $7842.w,X		; 7E 42 78
	rti		; 40

	bit $7804.w,X		; 3C 04 78
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($7E.b,X)		; 81 7E
	bvs -113.b		; 70 8F
	ror $4F81.w,X		; 7E 81 4F
	bra -63.b		; 80 C1
	ora ($CF.b,X)		; 01 CF
	ora ($FF.b,X)		; 01 FF
	cpy #$B3.b		; C0 B3
	bra  29.b		; 80 1D
	bne  14.b		; D0 0E
	iny		; C8
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	ora ($BE.b,X)		; 01 BE
	ora ($B0.b,X)		; 01 B0
	cpy #$CE.b		; C0 CE
	bra  -4.b		; 80 FC
	php		; 08
	bvs -104.b		; 70 98
	rts		; 60

	sed		; F8
	brk $90.b		; 00 90
	php		; 08
	bpl   8.b		; 10 08
	bne   8.b		; D0 08
	beq   8.b		; F0 08
	bmi   8.b		; 30 08
	bcs  16.b		; B0 10
	ldy #$20.b		; A0 20
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	clc		; 18
	iny		; C8
	ora $7E1F2E.l,X		; 1F 2E 1F 7E
	ora $5D3E7E.l,X		; 1F 7E 3E 5D
	rol $3E5D.w,X		; 3E 5D 3E
	cmp $DB3C.w,X		; DD 3C DB
	bit $3FDB.w,X		; 3C DB 3F
	and ($3F.b),Y		; 31 3F
	ora ($3F.b,X)		; 01 3F
	ora ($7F.b,X)		; 01 7F
	.db $62, $7F, $62		; 62 7F 62
	adc $247F22.l,X		; 7F 22 7F 24
	adc $FE0524.l,X		; 7F 24 05 FE
	ora $26E0.w,Y		; 19 E0 26
	dec $0F.b,X		; D6 0F
	sbc $0BEF07.l		; EF 07 EF 0B
	sbc [$02.b]		; E7 02
	sbc ($00.b),Y		; F1 00
	jsr ($0180.w,X)		; FC 80 01
	tya		; 98
	sta $A7AFB0.l,X		; 9F B0 AF A7
	sta $C19FA7.l,X		; 9F A7 9F C1
	cmp $C8CFC0.l,X		; DF C0 CF C8
	cmp $0F.b,S		; C3 0F
	and [$07.b],Y		; 37 07
	ora $031B07.l,X		; 1F 07 1B 03
	ora $010D03.l		; 0F 03 0D 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	cop $1F.b		; 02 1F
	clc		; 18
	ora $0C0F00.l		; 0F 00 0F 0C
	ora [$00.b]		; 07 00
	ora [$06.b]		; 07 06
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	cpy #$BD.b		; C0 BD
	cpy $BC.b		; C4 BC
	cmp $BC.b		; C5 BC
	cmp $BC.b		; C5 BC
	sta $FC.b		; 85 FC
	sta $7C.b		; 85 7C
	ora $FC.b		; 05 FC
	ora ($FC.b,X)		; 01 FC
	inc $54.b,X		; F6 54
	sbc ($50.b,S),Y		; F3 50
	sbc ($50.b,S),Y		; F3 50
	sbc ($50.b,S),Y		; F3 50
	sbc ($30.b,S),Y		; F3 30
	sbc ($F0.b,S),Y		; F3 F0
	cmp ($50.b,S),Y		; D3 50
	sta [$94.b],Y		; 97 94
	sty $1F.b		; 84 1F
	sty $62.b		; 84 62
	bcc 105.b		; 90 69
	ora ($ED.b)		; 12 ED
	ora ($ED.b)		; 12 ED
	jsl $DE21DD.l		; 22 DD 21 DE
	and ($DE.b,X)		; 21 DE
	bra  -1.b		; 80 FF
	ldy #$9F.b		; A0 9F
	bcs -106.b		; B0 96
	ror $12.b,X		; 76 12
	ror $12.b,X		; 76 12
	inc $EF22.w		; EE 22 EF
	and ($EF.b,X)		; 21 EF
	and ($00.b,X)		; 21 00
	rti		; 40

	rti		; 40

	ldy #$40.b		; A0 40
	ldy #$20.b		; A0 20
	bne  32.b		; D0 20
	bne  32.b		; D0 20
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra  64.b		; 80 40
	rti		; 40

	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	rti		; 40

	brk $00.b		; 00 00
	brk $07.b		; 00 07
	clc		; 18
	ora $300618.l		; 0F 18 06 30
	ora $610C31.l,X		; 1F 31 0C 61
	rol $1863.w,X		; 3E 63 18
	cmp $7C.b,S		; C3 7C
	dec $0F.b		; C6 0F
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $202E10.l,X		; 1F 10 2E 20
	and $405C21.l,X		; 3F 21 5C 40
	ror $B942.w,X		; 7E 42 B9
	bra  28.b		; 80 1C
	sbc ($1C.b,X)		; E1 1C
	sbc ($1A.b,X)		; E1 1A
	sbc $30.b,S		; E3 30
	sep #$48		; E2 48
	dec $9C90.w		; CE 90 9C
	jsr $8038.w		; 20 38 80
	beq  62.b		; F0 3E
	jsr $203E.w		; 20 3E 20
	bit $5E20.w,X		; 3C 20 5E
	.db $42, $B4		; 42 B4
	sty $68.b		; 84 68
	php		; 08
	bne  16.b		; D0 10
	rti		; 40

	rti		; 40

	brk $13.b		; 00 13
	ora ($37.b,X)		; 01 37
	ora ($57.b,X)		; 01 57
	cop $8F.b		; 02 8F
	cop $5F.b		; 02 5F
	asl $3F.b		; 06 3F
	brk $1D.b		; 00 1D
	ora $3D.b,S		; 03 3D
	tsb $090C.w		; 0C 0C 09
	php		; 08
	pld		; 2B
	plp		; 28
	adc [$70.b],Y		; 77 70
	rol $20.b		; 26 20
	asl $00.b		; 06 00
	asl $1E08.w		; 0E 08 1E
	trb $60.b		; 14 60
	inc $FFFC.w,X		; FE FC FF
	and [$FF.b],Y		; 37 FF
	mvp $89,$FF		; 44 FF 89
	sbc $968E71.l,X		; FF 71 8E 96
	rti		; 40

	adc [$C0.b],Y		; 77 C0
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $76.b		; 00 76
	brk $CD.b		; 00 CD
	brk $80.b		; 00 80
	cop $0C.b		; 02 0C
	adc ($4C.b,X)		; 61 4C
	eor ($30.b)		; 52 30
	stx $8E30.w		; 8E 30 8E
	bmi -114.b		; 30 8E
	jsr $708F.w		; 20 8F 70
	cmp $20DF20.l,X		; DF 20 DF 20
	sed		; F8
	brk $F8.b		; 00 F8
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	jsr $7000.w		; 20 00 70
	bvc  16.b		; 50 10
	bpl  64.b		; 10 40
	brk $30.b		; 00 30
	sed		; F8
	rti		; 40

	sed		; F8
	sec		; 38
	cpx $1C.b		; E4 1C
	sbc ($2E.b)		; F2 2E
	sbc $FF10.w,Y		; F9 10 FF
	tsb $00FF.w		; 0C FF 00
	ora $000030.l		; 0F 30 00 00
	brk $18.b		; 00 18
	brk $4C.b		; 00 4C
	brk $66.b		; 00 66
	brk $70.b		; 00 70
	brk $0F.b		; 00 0F
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
	ora $000E00.l,X		; 1F 00 0E 00
	tsb $0800.w		; 0C 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0804.w		; 0C 04 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	phd		; 0B
	ora $E86FC2.l		; 0F C2 6F E8
	inc $90.b,X		; F6 90
	cpx #$40.b		; E0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $023F0A.l		; 0F 0A 3F 02
	sbc $00FFC0.l,X		; FF C0 FF 00
	inc $E000.w,X		; FE 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bmi  56.b		; 30 38
	cli		; 58
	sei		; 78
	bpl 120.b		; 10 78
	rti		; 40

	bcs -128.b		; B0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	sei		; 78
	bmi 124.b		; 30 7C
	bvc  -4.b		; 50 FC
	bpl  -4.b		; 10 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	ldy #$F0.b		; A0 F0
	jsr $80F0.w		; 20 F0 80
	rts		; 60

	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	ldy #$00.b		; A0 00
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	ora $081F04.l		; 0F 04 1F 08
	and $377F1B.l,X		; 3F 1B 7F 37
	sed		; F8
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $061E03.l		; 0F 03 1E 06
	dec A		; 3A
	ora $78.b,S		; 03 78
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	ora $00.b,S		; 03 00
	cpx $00.b		; E4 00
	ora $1F3F06.l,X		; 1F 06 3F 1F
	adc $007F13.l,X		; 7F 13 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $E0.b,S		; 03 E0
	cpx #$CF.b		; E0 CF
	cpy #$9F.b		; C0 9F
	bra -65.b		; 80 BF
	bra   3.b		; 80 03
	ora $070F00.l		; 0F 00 0F 07
	asl $0D.b,X		; 16 0D
	and $623A.w		; 2D 3A 62
	rol $86.b,X		; 36 86
	pla		; 68
	asl $1CD2.w		; 0E D2 1C
	ora [$00.b]		; 07 00
	php		; 08
	php		; 08
	asl $0E.b		; 06 0E
	ora $1A1F.w		; 0D 1F 1A
	ora [$78.b]		; 07 78
	ora $F4.b,S		; 03 F4
	ora [$E8.b]		; 07 E8
	phd		; 0B
	ora $EC.b		; 05 EC
	.db $42, $B6		; 42 B6
	sta $7C.b		; 85 7C
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	sbc ($9D.b,X)		; E1 9D
	ora ($AF.b),Y		; 11 AF
	lda $6447.w,Y		; B9 47 64
	eor $9B.b,S		; 43 9B
	clc		; 18
	adc $F26C.w		; 6D 6C F2
	bcc 120.b		; 90 78
	pha		; 48
	dec A		; 3A
	ldy #$D41C.w		; A0 1C D4
	tsb $D8.b		; 04 D8
	brk $DC.b		; 00 DC
	jmp ($70EF.w)		; 6C EF 70
	ror $38.b,X		; 76 38
	adc $BC3C.w,Y		; 79 3C BC
	sec		; 38
	lda $DB10.w,X		; BD 10 DB
	rts		; 60

	sbc [$40.b]		; E7 40
	sbc $06F02E.l,X		; FF 2E F0 06
	sbc $FF38.w,Y		; F9 38 FF
	clv		; B8
	adc $807E90.l,X		; 7F 90 7E 80
	bit $1C64.w,X		; 3C 64 1C
	stz $04.b,X		; 74 04
	and $1FFFFF.l,X		; 3F FF FF 1F
	ora $1A7FE7.l,X		; 1F E7 7F 1A
	and $FB07C4.l,X		; 3F C4 07 FB
	ora $FD.b,S		; 03 FD
	and ($DE.b,X)		; 21 DE
	ora $FF0EFF.l,X		; 1F FF 0E FF
	cop $FF.b		; 02 FF
	php		; 08
	sbc $A23F04.l,X		; FF 04 3F A2
	lda [$B4.b]		; A7 B4
	sta [$B6.b],Y		; 97 B6
	and $F0.b,S		; 23 F0
	adc $78FF70.l		; 6F 70 FF 78
	ldx $38.b,Y		; B6 38
	inc $7E38.w,X		; FE 38 7E
	sec		; 38
	jmp ($7438.w,X)		; 7C 38 74
	bmi 108.b		; 30 6C
	sbc $FC99.w,Y		; F9 99 FC
	tsb $FC.b		; 04 FC
	cpy $047C.w		; CC 7C 04
	jmp ($3C40.w,X)		; 7C 40 3C
	brk $3C.b		; 00 3C
	tsb $1038.w		; 0C 38 10
	ora [$E0.b]		; 07 E0
	ora [$F0.b],Y		; 17 F0
	ora $F803F8.l		; 0F F8 03 F8
	ora $7C.b		; 05 7C
	cop $7E.b		; 02 7E
	ora ($3F.b,X)		; 01 3F
	brk $3F.b		; 00 3F
	eor $202F40.l,X		; 5F 40 2F 20
	ora [$10.b],Y		; 17 10
	ora $000308.l		; 0F 08 03 00
	ora $14.b,X		; 15 14
	inc A		; 1A
	inc A		; 1A
	ora $001D.w,X		; 1D 1D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora $0A1F02.l		; 0F 02 1F 0A
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $38.b		; 00 38
	cmp $70.b,S		; C3 70
	sta [$E0.b]		; 87 E0
	ora $881EC4.l		; 0F C4 1E 88
	rol $7410.w,X		; 3E 10 74
	plp		; 28
	cpx $C840.w		; EC 40 C8
	jmp ($7840.w,X)		; 7C 40 78
	brk $F2.b		; 00 F2
	cop $E2.b		; 02 E2
	cop $C4.b		; 02 C4
	tsb $8C.b		; 04 8C
	tsb $10.b		; 04 10
	brk $38.b		; 00 38
	php		; 08
	asl $0615.w		; 0E 15 06
	ora $0F04.w,X		; 1D 04 0F
	tsb $0B.b		; 04 0B
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	ora $030F0B.l		; 0F 0B 0F 03
	asl $0608.w		; 0E 08 06
	asl $04.b		; 06 04
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	bne -128.b		; D0 80
	cpy #$C080.w		; C0 80 C0
	rti		; 40

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $20.b		; 00 20
	bvs   0.b		; 70 00
	bmi  16.b		; 30 10
	sec		; 38
	php		; 08
	bit $3E04.w,X		; 3C 04 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	bit $0C00.w		; 2C 00 0C
	brk $14.b		; 00 14
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $031C08.l		; 0F 08 1C 03
	tas		; 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $0803.w		; 0C 03 08
	ora [$07.b]		; 07 07
	ora [$07.b],Y		; 17 07
	ora [$03.b],Y		; 17 03
	ora [$01.b]		; 07 01
	phd		; 0B
	brk $1D.b		; 00 1D
	tsb $1A.b		; 04 1A
	asl $0F35.w		; 0E 35 0F
	bit $0F03.w,X		; 3C 03 0F
	ora $0F.b,S		; 03 0F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	tsb $0E0B.w		; 0C 0B 0E
	ora $1F.b		; 05 1F
	inc A		; 1A
	ora $2C1F03.l,X		; 1F 03 1F 2C
	ora $5E3F7C.l,X		; 1F 7C 3F 5E
	and $7E3F7E.l,X		; 3F 7E 3F 7E
	adc $F77FB6.l,X		; 7F B6 7F F7
	adc [$FB.b],Y		; 77 FB
	and $033F33.l,X		; 3F 33 3F 03
	and $417F21.l,X		; 3F 21 7F 41
	adc $497F01.l,X		; 7F 01 7F 49
	adc $047F08.l,X		; 7F 08 7F 04
	brk $04.b		; 00 04
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	bit $FF.b		; 24 FF
	pla		; 68
	sbc $09F867.l,X		; FF 67 F8 09
	pei ($B7.b)		; D4 B7
	jmp $9752B5.l		; 5C B5 52 97
	bvs -117.b		; 70 8B
	sei		; 78
	adc [$00.b],Y		; 77 00
	jmp ($6800.w)		; 6C 00 68
	brk $60.b		; 00 60
	asl $E4.b		; 06 E4
	cmp $EC.b		; C5 EC
.ACCU 16
	rep #$EF		; C2 EF
	ldy #$90D7.w		; A0 D7 90
	rti		; 40

	sbc $791C.w,Y		; F9 1C 79
	trb $BCBB.w		; 1C BB BC
	txs		; 9A
	ldy $FCFB.w,X		; BC FB FC
	stp		; DB
	cld		; D8
	cmp $20EFD4.l,X		; DF D4 EF 20
	and [$1C.b]		; 27 1C
	sta [$3E.b]		; 87 3E
	cmp $3E.b		; C5 3E
	sbc $BF.b		; E5 BF
	cpy $BF.b		; C4 BF
	cpx $DB.b		; E4 DB
	cpx #$F055.w		; E0 55 F0
	sbc $C0.b,S		; E3 C0
	beq -32.b		; F0 E0
	sbc ($E0.b),Y		; F1 E0
	adc $4038C0.l,X		; 7F C0 38 40
	and ($00.b),Y		; 31 00
	adc ($61.b,S),Y		; 73 61
	adc $DF4073.l,X		; 7F 73 40 DF
	rts		; 60

	sbc $00EE60.l		; EF 60 EE 00
	cpy #$DF00.w		; C0 00 DF
	brk $DE.b		; 00 DE
	brk $ED.b		; 00 ED
	ora ($F3.b),Y		; 11 F3
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	sta ($FE.b,X)		; 81 FE
	cmp ($BE.b,X)		; C1 BE
	cpx #$AADF.w		; E0 DF AA
	php		; 08
	tax		; AA
	php		; 08
	dec $54.b,X		; D6 54
	cmp [$D5.b],Y		; D7 D5
	cmp $2DEF8D.l		; CF 8D EF 2D
	sbc [$45.b]		; E7 45
	sbc ($22.b,S),Y		; F3 22
	jsr $A0DF.w		; 20 DF A0
	eor $986F90.l,X		; 5F 90 6F 98
	adc [$CC.b]		; 67 CC
	and ($44.b,S),Y		; 33 44
	tyx		; BB
	adc ($9D.b,X)		; 61 9D
	asl $F0.b		; 06 F0
	tsx		; BA
	plp		; 28
	xce		; FB
	inx		; E8
	cmp $DED4.w,X		; DD D4 DE
	txs		; 9A
	sbc $D4F4ED.l		; EF ED F4 D4
	sbc ($E0.b)		; F2 E0
	adc $7C2020.l		; 6F 20 20 7C
	rts		; 60

	clc		; 18
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	sec		; 38
	php		; 08
	bvs 112.b		; 70 70
	rts		; 60

	jsr $0040.w		; 20 40 00
	rti		; 40

	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $030E00.l		; 0F 00 0E 03
	asl $0C07.w		; 0E 07 0C
	ora [$0C.b]		; 07 0C
	ora [$18.b]		; 07 18
	asl $0E0E.w		; 0E 0E 0E
	asl $0D0D.w		; 0E 0D 0D
	ora $02.b,S		; 03 02
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	ora $F70808.l		; 0F 08 08 F7
	clc		; 18
	sbc [$58.b],Y		; F7 58
	sbc $E950.w		; ED 50 E9
	bvc -23.b		; 50 E9
	bvc  -5.b		; 50 FB
	rti		; 40

	sbc ($60.b,S),Y		; F3 60
	sbc ($68.b,S),Y		; F3 68
	brk $68.b		; 00 68
	brk $50.b		; 00 50
	brk $58.b		; 00 58
	php		; 08
	bvc   0.b		; 50 00
	eor ($01.b,X)		; 41 01
	eor ($11.b),Y		; 51 11
	rts		; 60

	brk $30.b		; 00 30
	tya		; 98
	cpx #$4090.w		; E0 90 40
	bpl -32.b		; 10 E0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	cpx #$7080.w		; E0 80 70
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	iny		; C8
	php		; 08
	jsr ($FCC0.w,X)		; FC C0 FC
	sei		; 78
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $4C.b		; 00 4C
	sbc $12FF9A.l,X		; FF 9A FF 12
	sbc $700668.l		; EF 68 06 70
	asl $1CA0.w		; 0E A0 1C
	cpx #$0038.w		; E0 38 00
	bvs 110.b		; 70 6E
	brk $DE.b		; 00 DE
	brk $0A.b		; 00 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$2080.w		; A0 80 20
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	rti		; 40

	ldy #$E000.w		; A0 00 E0
	brk $F0.b		; 00 F0
	sec		; 38
	cpy #$00C0.w		; C0 C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bvs  72.b		; 70 48
	bra -120.b		; 80 88
	bra -56.b		; 80 C8
	bra  -8.b		; 80 F8
	brk $B0.b		; 00 B0
	brk $50.b		; 00 50
	bra -96.b		; 80 A0
	cpy #$80C0.w		; C0 C0 80
	brk $70.b		; 00 70
	bra 112.b		; 80 70
	bra  48.b		; 80 30
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	jsr $3C20.w		; 20 20 3C
	bit $BEBE.w,X		; 3C BE BE
	sta ($3E.b)		; 92 3E
	tsb $0018.w		; 0C 18 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	tsb $12FF.w		; 0C FF 12
	sbc $00BE00.l,X		; FF 00 BE 00
	trb $C000.w		; 1C 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	rti		; 40

	rts		; 60

	jsr $0000.w		; 20 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	cpx #$C030.w		; E0 30 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$7808.w		; E0 08 78
	tsb $84B0.w		; 0C B0 84
	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($5C04.w,X)		; 7C 04 5C
	dec $28.b		; C6 28
	ldx #$0278.w		; A2 78 02
	pea $E806.w		; F4 06 E8
	tsb $18C0.w		; 0C C0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	clv		; B8
	bra -34.b		; 80 DE
	.db $82, $FE, $02		; 82 FE 02
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	sbc ($20.b,S),Y		; F3 20
	adc ($00.b,S),Y		; 73 00
	adc ($00.b,S),Y		; 73 00
	and [$00.b],Y		; 37 00
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$61.b]		; 07 61
	brk $21.b		; 00 21
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $73.b		; 00 73
	lda $39753B.l,X		; BF 3B 75 39
	adc [$39.b],Y		; 77 39
	lsr $7B1C.w,X		; 5E 1C 7B
	trb $0C2F.w		; 1C 2F 0C
	and $7F3D0E.l,X		; 3F 0E 3D 7F
	rti		; 40

	adc $4C7F0E.l,X		; 7F 0E 7F 4C
	and $053D23.l,X		; 3F 23 3D 05
	rol $1E32.w,X		; 3E 32 1E
	brk $1F.b		; 00 1F
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1100.w,X		; 1E 00 11
	brk $13.b		; 00 13
	ora ($37.b,X)		; 01 37
	ora ($57.b,X)		; 01 57
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C0E.w		; 0E 0E 0C
	tsb $0809.w		; 0C 09 08
	pld		; 2B
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $48.b		; 00 48
	brk $FC.b		; 00 FC
	rts		; 60

	sbc $37FFFC.l,X		; FF FC FF 37
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $001F04.l		; 0F 04 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $3F7F0F.l,X		; 1F 0F 7F 3F
	sbc $FFFF7C.l,X		; FF 7C FF FF
	sbc $3F738F.l,X		; FF 8F 73 3F
	cmp $0F0303.l		; CF 03 03 0F
	php		; 08
	and $80FF20.l,X		; 3F 20 FF 80
	sbc $00FF03.l,X		; FF 03 FF 00
	sbc $B0FFAC.l,X		; FF AC FF B0
	jmp ($F0FF.w,X)		; 7C FF F0
	sbc $00FEC0.l,X		; FF C0 FE 00
	jsr ($FB01.w,X)		; FC 01 FB
	cpy #$E7F8.w		; C0 F8 E7
	jsr ($F8E7.w,X)		; FC E7 F8
	sbc $0CFE03.l,X		; FF 03 FE 0C
	jsr ($F831.w,X)		; FC 31 F8
	cmp $F9.b,S		; C3 F9
	ora [$F8.b]		; 07 F8
	ora [$F3.b]		; 07 F3
	brk $F7.b		; 00 F7
	bpl   0.b		; 10 00
	sbc $3EC0.w,X		; FD C0 3E
	bmi -49.b		; 30 CF
	sec		; 38
	adc [$9C.b]		; 67 9C
	lda ($02.b,S),Y		; B3 02
	cmp $17.b,X		; D5 17
	pha		; 48
	ora $8B8B88.l,X		; 1F 88 8B 8B
	ora $1E1D.w,X		; 1D 1D 1E
	cmp ($2F.b)		; D2 2F
	sbc #$F407.w		; E9 07 F4
	ora $FA.b,S		; 03 FA
	brk $F8.b		; 00 F8
	bra  -5.b		; 80 FB
	sec		; 38
	eor $78FF38.l,X		; 5F 38 FF 78
	lda $70BE70.l,X		; BF 70 BE 70
	ldy $7C30.w,X		; BC 30 7C
	bmi 120.b		; 30 78
	bmi  88.b		; 30 58
	adc $007E61.l,X		; 7F 61 7E 00
	ror $7C42.w,X		; 7E 42 7C
	rti		; 40

	jmp ($7844.w,X)		; 7C 44 78
	brk $78.b		; 00 78
	pha		; 48
	bmi  32.b		; 30 20
	clc		; 18
	sbc [$1C.b],Y		; F7 1C
	tyx		; BB
	tsb $0E1B.w		; 0C 1B 0E
	ora $0D06.w,X		; 1D 06 0D
	tsb $0F.b		; 04 0F
	tsb $0A.b		; 04 0A
	brk $0C.b		; 00 0C
	ora $051F0B.l,X		; 1F 0B 1F 05
	ora $030F15.l,X		; 1F 15 0F 03
	asl $060A.w		; 0E 0A 06
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	sbc $02FD02.l,X		; FF 02 FD 02
	sbc $BE00.w,X		; FD 00 BE
	cop $2E.b		; 02 2E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	asl $0E00.w,X		; 1E 00 0E
	cop $06.b		; 02 06
	cop $01.b		; 02 01
	brk $05.b		; 00 05
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $12.b		; 00 12
	sbc $11FC13.l,X		; FF 13 FC 11
	inc $1FE0.w		; EE E0 1F
	jsr ($7E01.w,X)		; FC 01 7E
	brk $5F.b		; 00 5F
	cpy #$F017.w		; C0 17 F0
	inc $00.b,X		; F6 00
	sbc [$03.b],Y		; F7 03
	ora [$11.b],Y		; 17 11
	cpx #$FF00.w		; E0 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $BF.b		; 00 BF
	bra 111.b		; 80 6F
	rts		; 60

	ora [$F7.b]		; 07 F7
	jsr $78F0.w		; 20 F0 78
	sbc [$31.b],Y		; F7 31
	sbc $02FF01.l		; EF 01 FF 02
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $200F97.l,X		; FF 97 0F 20
	ora $BB0C7D.l		; 0F 7D 0C BB
	tya		; 98
	sta [$80.b],Y		; 97 80
	stx $9D80.w		; 8E 80 9D
	bra -55.b		; 80 C9
	cpy #$CFDF.w		; C0 DF CF
	asl $810E.w,X		; 1E 0E 81
	adc ($29.b,X)		; 61 29
	cmp $29.b,X		; D5 29
	cmp $49.b,X		; D5 49
	inc $FE49.w,X		; FE 49 FE
	bit #$0EFE.w		; 89 FE 0E
	sbc $81FF04.l,X		; FF 04 FF 81
	sta $682B68.l,X		; 9F 68 2B 68
	pld		; 2B
	stp		; DB
	ora ($DB.b,X)		; 01 DB
	ora ($BB.b,X)		; 01 BB
	ora ($5A.b,X)		; 01 5A
	lsr A		; 4A
	txs		; 9A
	tsx		; BA
	.db $82, $B2, $0C		; 82 B2 0C
	tsb $2040.w		; 0C 40 20
	jsr $10F0.w		; 20 F0 10
	sed		; F8
	dey		; 88
	pea $EF4A.w		; F4 4A EF
	txa		; 8A
	sbc $00FF02.l,X		; FF 02 FF 00
	inc $C040.w,X		; FE 40 C0
	rts		; 60

	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	php		; 08
	asl $2B.b,X		; 16 2B
	bpl  58.b		; 10 3A
	trb $3E.b		; 14 3E
	clc		; 18
	rol $2E1C.w,X		; 3E 1C 2E
	tsb $0436.w		; 0C 36 04
	inc A		; 1A
	brk $0E.b		; 00 0E
	trb $10.b		; 14 10
	trb $00.b		; 14 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	php		; 08
	tsb $0004.w		; 0C 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and $00FF07.l,X		; 3F 07 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $7F.b		; 04 7F
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C8.b		; 00 C8
	php		; 08
	jsr ($FCC0.w,X)		; FC C0 FC
	sei		; 78
	inc $FF4C.w,X		; FE 4C FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $02.b		; 00 02
	sta $069F06.l		; 8F 06 9F 06
	eor $033D00.l,X		; 5F 00 3D 03
	adc $FD23.w,X		; 7D 23 FD
	sbc ($FF.b,X)		; E1 FF
	bra  -1.b		; 80 FF
	adc [$70.b],Y		; 77 70
	ror $2E68.w		; 6E 68 2E
	plp		; 28
	asl $10.b,X		; 16 10
	rol $04.b,X		; 36 04
	plx		; FA
	bra  -6.b		; 80 FA
	ora ($F0.b)		; 12 F0
	bvs  68.b		; 70 44
	sbc $71FF89.l,X		; FF 89 FF 71
	stx $4096.w		; 8E 96 40
	adc [$C0.b],Y		; 77 C0
	phy		; 5A
	and ($7E.b,X)		; 21 7E
	ora $B0.b,S		; 03 B0
	sta [$76.b]		; 87 76
	brk $CD.b		; 00 CD
	brk $80.b		; 00 80
	cop $0C.b		; 02 0C
	adc ($4C.b,X)		; 61 4C
	eor ($CC.b)		; 52 CC
	jsr $00FC.w		; 20 FC 00
	ror $000A.w,X		; 7E 0A 00
	and $037300.l,X		; 3F 00 73 03
	sta [$07.b]		; 87 07
	ora $1E1F0F.l		; 0F 0F 1F 1E
	and $313F18.l,X		; 3F 18 3F 31
	ror $0E1E.w,X		; 7E 1E 0E
	and ($20.b,X)		; 21 20
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $011F00.l		; 0F 00 1F 01
	and $3B01.w,X		; 3D 01 3B
	ora $7F.b,S		; 03 7F
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $9CFFFE.l,X		; FF FE FF 9C
	sbc $F0BF78.l,X		; FF 78 BF F0
	adc $FFFFE0.l,X		; 7F E0 FF FF
	rti		; 40

	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $42FF01.l,X		; FF 01 FF 42
	sbc $88FFC4.l,X		; FF C4 FF 88
	sbc $F8C610.l,X		; FF 10 C6 F8
	sty $08F1.w		; 8C F1 08
	sbc $18.b,S		; E3 18
	inc $00.b		; E6 00
	beq  13.b		; F0 0D
	inc $DF1F.w		; EE 1F DF
	ora $28EFDF.l,X		; 1F DF EF 28
	sbc $C2DE71.l,X		; FF 71 DE C2
	jsr ($8065.w,X)		; FC 65 80
	ora $5F1FA0.l		; 0F A0 1F 5F
	and $1C3F5E.l,X		; 3F 5E 3F 1C
	clv		; B8
	bit $3CFC.w,X		; 3C FC 3C
	sei		; 78
	and $18077C.l,X		; 3F 7C 07 18
	php		; 08
	tsb $FC.b		; 04 FC
	xce		; FB
	lda $7B08FC.l,X		; BF FC 08 7B
	trb $187F.w		; 1C 7F 18
	xce		; FB
	tsb $FC.b		; 04 FC
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	cld		; D8
	sbc $10FE3C.l,X		; FF 3C FE 10
	sei		; 78
	bpl  32.b		; 10 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi  48.b		; 30 30
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
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
	brk $3F.b		; 00 3F
	ora ($3F.b,X)		; 01 3F
	phd		; 0B
	jmp ($770B.w,X)		; 7C 0B 77
	bit $0057.w		; 2C 57 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	plp		; 28
	and $03.b,S		; 23 03
	pld		; 2B
	brk $28.b		; 00 28
	jsr $3C07.w		; 20 07 3C
	cop $0E.b		; 02 0E
	brk $3F.b		; 00 3F
	ora [$F0.b],Y		; 17 F0
	and $807F00.l,X		; 3F 00 7F 80
	asl $FE.b		; 06 FE
	and ($ED.b)		; 32 ED
	tas		; 1B
	clc		; 18
	ora $04.b		; 05 04
	ora $202F0F.l		; 0F 0F 2F 20
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $3678.w,Y		; 79 78 36
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	bra  32.b		; 80 20
	cpy #$C020.w		; C0 20 C0
	jsr $E0C0.w		; 20 C0 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txs		; 9A
	sbc $68EF12.l,X		; FF 12 EF 68
	asl $70.b		; 06 70
	asl $1CA0.w		; 0E A0 1C
	cpx #$0038.w		; E0 38 00
	bvs -128.b		; 70 80
	jsr $00DE.w		; 20 DE 00
	asl A		; 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$00C0.w		; A0 C0 00
	tsb $08FB.w		; 0C FB 08
	tas		; 1B
	tsb $0E1E.w		; 0C 1E 0E
	asl $06.b,X		; 16 06
	inc A		; 1A
	cop $0C.b		; 02 0C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	ora $0C00.w		; 0D 00 0C
	brk $08.b		; 00 08
	brk $0E.b		; 00 0E
	php		; 08
	asl $0604.w		; 0E 04 06
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $013E01.l,X		; 1F 01 3E 01
	and $037D03.l,X		; 3F 03 7D 03
	adc $07DB07.l,X		; 7F 07 DB 07
	sta $1D170F.l,X		; 9F 0F 17 1D
	ora ($1B.b,X)		; 01 1B
	ora $33.b,S		; 03 33
	brk $27.b		; 00 27
	asl $47.b		; 06 47
	brk $0F.b		; 00 0F
	tsb $000F.w		; 0C 0F 00
	ora $7FF008.l		; 0F 08 F0 7F
	cpx #$E0FF.w		; E0 FF E0
	sbc $82FFC0.l,X		; FF C0 FF 82
	sbc $FD82.w,X		; FD 82 FD
	asl $F9.b		; 06 F9
	asl $FD.b		; 06 FD
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $02FF01.l,X		; FF 01 FF 02
	sbc $0EFF06.l,X		; FF 06 FF 0E
	sbc [$16.b],Y		; F7 16
	sbc [$22.b]		; E7 22
	bcs -124.b		; B0 84
	rti		; 40

	iny		; C8
	bcs -128.b		; B0 80
	bvc -24.b		; 50 E8
	jsr $20BC.w		; 20 BC 20
	jsr ($F826.w,X)		; FC 26 F8
	cmp $007830.l		; CF 30 78 00
	bcs -128.b		; B0 80
	rti		; 40

	brk $10.b		; 00 10
	bpl  72.b		; 10 48
	brk $88.b		; 00 88
	bra -120.b		; 80 88
	php		; 08
	brk $06.b		; 00 06
	adc $FD00.w,Y		; 79 00 FD
	bpl  56.b		; 10 38
	bpl  -4.b		; 10 FC
	brk $AA.b		; 00 AA
	brk $72.b		; 00 72
	brk $5C.b		; 00 5C
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	dec $EE10.w		; CE 10 EE
	bpl -58.b		; 10 C6
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	brk $8C.b		; 00 8C
	brk $80.b		; 00 80
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	bmi  -4.b		; 30 FC
	bvc -58.b		; 50 C6
	cli		; 58
	cmp $1C.b,S		; C3 1C
	cmp ($0E.b,X)		; C1 0E
	rts		; 60

	sta $00C038.l		; 8F 38 C0 00
	bmi  48.b		; 30 30
	pha		; 48
	pha		; 48
	bit $3E04.w,X		; 3C 04 3E
	cop $BF.b		; 02 BF
	sta ($DF.b,X)		; 81 DF
	rti		; 40

	sbc [$20.b]		; E7 20
	cmp [$1C.b]		; C7 1C
	sbc $0E.b,S		; E3 0E
	sbc ($87.b),Y		; F1 87
	sei		; 78
	cmp $D8.b,S		; C3 D8
	and $F8.b,S		; 23 F8
	ora $38.b,S		; 03 38
	tsb $F800.w		; 0C 00 F8
	sbc ($10.b,S),Y		; F3 10
	sbc $7C08.w,Y		; F9 08 7C
	tsb $BE.b		; 04 BE
	.db $82, $FE, $22		; 82 FE 22
	jsr ($F000.w,X)		; FC 00 F0
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	sbc $00FF86.l,X		; FF 86 FF 00
	sbc $31FF00.l,X		; FF 00 FF 31
	dec $6893.w		; CE 93 68
	wai		; CB
	sec		; 38
	ora $F8.b,S		; 03 F8
	xce		; FB
	plp		; 28
	sbc [$50.b],Y		; F7 50
	dec $1088.w		; CE 88 10
	bpl -67.b		; 10 BD
	ldy $D0D7.w,X		; BC D7 D0
	sbc [$E0.b]		; E7 E0
	sta $FE8088.l		; 8F 88 80 FE
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	dey		; 88
	jsr ($7480.w,X)		; FC 80 74
	cpy $76.b		; C4 76
	iny		; C8
	adc ($C6.b)		; 72 C6
	adc ($C8.b)		; 72 C8
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	php		; 08
	rti		; 40

	rti		; 40

	cpy $8844.w		; CC 44 88
	brk $8C.b		; 00 8C
	brk $AC.b		; 00 AC
	jsr $FF3F.w		; 20 3F FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $00FFBF.l,X		; FF BF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10FF00.l,X		; FF 00 FF 10
	sbc $FFFF40.l,X		; FF 40 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FCFEFC.l,X		; FF FC FE FC
	inc $FEFC.w,X		; FE FC FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	inc $FE00.w,X		; FE 00 FE
	ora $FE.b,S		; 03 FE
	cop $FC.b		; 02 FC
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	asl $03.b		; 06 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $0000.w		; 0E 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$01.b]		; 07 01
	adc $7FFEBF.l,X		; 7F BF FE 7F
	inc $FD7F.w,X		; FE 7F FD
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $F7F9.w,X		; FD F9 F7
	sbc ($EF.b,S),Y		; F3 EF
	sbc $80FF40.l,X		; FF 40 FF 80
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $02FF00.l,X		; FF 00 FF 02
	sbc $10FF08.l,X		; FF 08 FF 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$DFC0.w		; A0 C0 DF
	sbc $7CAFF7.l		; EF F7 AF 7C
	ora $01.b,S		; 03 01
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E780.w		; C0 80 E7
	sta [$FF.b]		; 87 FF
	sta $FF.b,S		; 83 FF
	ora ($FD.b,X)		; 01 FD
	ora [$7D.b]		; 07 7D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cpx #$07CF.w		; E0 CF 07
	sed		; F8
	adc $7FFFBF.l,X		; 7F BF FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sta $F3.b,S		; 83 F3
	and $40FF27.l,X		; 3F 27 FF 40
	sbc $000080.l,X		; FF 80 00 00
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	ora $FFFFEF.l,X		; 1F EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	sbc $00FF90.l,X		; FF 90 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $D2.b		; 00 D2
	brk $CA.b		; 00 CA
	brk $CF.b		; 00 CF
	rti		; 40

	tyx		; BB
	cpx #$F0F1.w		; E0 F1 F0
	sbc ($F0.b),Y		; F1 F0
	sbc $FFF8.w,Y		; F9 F8 FF
	adc $B52D.w		; 6D 2D B5
	lda $F2.b,X		; B5 F2
	bmi -58.b		; 30 C6
	cpy $EF.b		; C4 EF
	asl $0EFF.w		; 0E FF 0E
	inc $06.b,X		; F6 06
	sbc $0001.w,Y		; F9 01 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $7C.b		; 00 7C
	php		; 08
	jsr ($FE1C.w,X)		; FC 1C FE
	jmp $FF30FE.l		; 5C FE 30 FF
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$C0D0.w		; C0 D0 C0
	clv		; B8
	bra 120.b		; 80 78
	brk $7C.b		; 00 7C
	php		; 08
	jmp.w [$3610]		; DC 10 36
	brk $F8.b		; 00 F8
	adc [$E1.b],Y		; 77 E1
	cmp $047F83.l,X		; DF 83 7F 04
	sbc $00FE01.l,X		; FF 01 FE 00
	sbc $000100.l,X		; FF 00 01 00
	ora ($FD.b,X)		; 01 FD
	bit #$2AFB.w		; 89 FB 2A
	sbc [$A4.b]		; E7 A4
	cmp $3D3DDB.l,X		; DF DB 3D 3D
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($13.b,X)		; 01 13
	cop $11.b		; 02 11
	cop $39.b		; 02 39
	asl A		; 0A
	sei		; 78
	inc A		; 1A
	jmp ($7C08.w,X)		; 7C 08 7C
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $0E00.w		; 0D 00 0E
	brk $16.b		; 00 16
	brk $3E.b		; 00 3E
	brk $1A.b		; 00 1A
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	jmp ($3C08.w,X)		; 7C 08 3C
	tsb $3E.b		; 04 3E
	tsb $1F.b		; 04 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	asl A		; 0A
	brk $0A.b		; 00 0A
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bvs   0.b		; 70 00
	bcs   0.b		; B0 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	cpx #$E0C0.w		; E0 C0 E0
	cpy #$C0E0.w		; C0 E0 C0
	bne -64.b		; D0 C0
	ora $98.b,S		; 03 98
	ora $1C.b		; 05 1C
	ora ($1C.b,X)		; 01 1C
	ora $0E.b,S		; 03 0E
	ora ($0E.b,X)		; 01 0E
	brk $0E.b		; 00 0E
	.db $62, $1E, $E5		; 62 1E E5
	trb $080F.w		; 1C 0F 08
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	.db $82, $33, $84		; 82 33 84
	and [$88.b],Y		; 37 88
	rol $3CC0.w,X		; 3E C0 3C
	cpy #$C038.w		; C0 38 C0
	bpl -64.b		; 10 C0
	brk $C0.b		; 00 C0
	brk $EC.b		; 00 EC
	jsr $22EA.w		; 20 EA 22
	cpx $24.b		; E4 24
	inx		; E8
	plp		; 28
	cpx #$E020.w		; E0 20 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	adc $FBFF.w,X		; 7D FF FB
	sbc $EEFFF7.l,X		; FF F7 FF EE
	inc $BCDD.w,X		; FE DD BC
	tda		; 7B
	bvs  -1.b		; 70 FF
	adc ($FF.b,X)		; 61 FF
	sbc $04FF82.l,X		; FF 82 FF 04
	sbc $11FF08.l,X		; FF 08 FF 11
	sbc $85FF22.l,X		; FF 22 FF 85
	sbc $94FD0B.l,X		; FF 0B FD 94
	jsr ($FCBE.w,X)		; FC BE FC
	tsx		; BA
	clv		; B8
	ror $FE38.w,X		; 7E 38 FE
	bvs  -2.b		; 70 FE
	bvs  -1.b		; 70 FF
	cpx #$C0FF.w		; E0 FF C0
	sbc $FC40FC.l,X		; FF FC 40 FC
	mvp $C0,$FC		; 44 FC C0
	jsr ($F844.w,X)		; FC 44 F8
	bra -14.b		; 80 F2
	bra -16.b		; 80 F0
	brk $E6.b		; 00 E6
	brk $07.b		; 00 07
	phd		; 0B
	ora [$1F.b]		; 07 1F
	ora [$1F.b]		; 07 1F
	ora $3D0E16.l		; 0F 16 0E 3D
	asl $3C79.w,X		; 1E 79 3C
	sbc ($F0.b,S),Y		; F3 F0
	adc $0F0407.l		; 6F 07 04 0F
	php		; 08
	ora $191F00.l		; 0F 00 1F 19
	ora $071F02.l,X		; 1F 02 1F 07
	rol $FD0E.w,X		; 3E 0E FD
	sta $E7.b,X		; 95 E7
	dec $B8CF.w,X		; DE CF B8
	txy		; 9B
	adc $37.b,X		; 75 37
	wai		; CB
	and $EF1FD7.l		; 2F D7 1F EF
	and $BB7CDE.l,X		; 3F DE 7C BB
	sbc $57FF21.l,X		; FF 21 FF 57
	sbc $74FFAA.l,X		; FF AA FF 74
	sbc $307FF8.l,X		; FF F8 7F 30
	sbc $C4FE61.l,X		; FF 61 FE C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $05.b,S		; 03 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora ($0E.b,X)		; 01 0E
	brk $07.b		; 00 07
	ora $C73F71.l		; 0F 71 3F C7
	adc $7FFF9F.l,X		; 7F 9F FF 7F
	sbc $FFFCFF.l,X		; FF FF FC FF
	ora $020319.l		; 0F 19 03 02
	ora $387F0E.l,X		; 1F 0E 7F 38
	sbc $80FF60.l,X		; FF 60 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C0FF00.l,X		; FF 00 FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sed		; F8
	sbc $F0FFF1.l,X		; FF F1 FF F0
	inc $FCE5.w,X		; FE E5 FC
	cmp [$DC.b]		; C7 DC
	bra -57.b		; 80 C7
	brk $A0.b		; 00 A0
	rts		; 60

	rts		; 60

	inc $F600.w,X		; FE 00 F6
	cop $F5.b		; 02 F5
	tsb $E3.b		; 04 E3
	brk $C3.b		; 00 C3
	jsr $2080.w		; 20 80 20
	brk $70.b		; 00 70
	rts		; 60

	sed		; F8
	ldy $FF.b,X		; B4 FF
	ror $581F.w		; 6E 1F 58
	eor $809EC0.l		; 4F C0 9E 80
	bvs   0.b		; 70 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	brk $8E.b		; 00 8E
	brk $8A.b		; 00 8A
	rts		; 60

	ldy $8080.w		; AC 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	tas		; 1B
	cop $7D.b		; 02 7D
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $000002.l		; 0F 02 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	php		; 08
	ora [$1E.b]		; 07 1E
	ora ($3B.b,X)		; 01 3B
	ora $76.b		; 05 76
	php		; 08
	adc #$4B16.w		; 69 16 4B
	rol $41.b,X		; 36 41
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $05.b		; 00 05
	tsb $0B.b		; 04 0B
	asl A		; 0A
	ora $2708.w,Y		; 19 08 27
	tsb $5E.b		; 04 5E
	cpy #$81BC.w		; C0 BC 81
	sei		; 78
	ora $F0.b,S		; 03 F0
	asl $E8.b		; 06 E8
	tsb $18F0.w		; 0C F0 18
	cpy #$E018.w		; C0 18 E0
	bmi  63.b		; 30 3F
	brk $7F.b		; 00 7F
	ora ($FE.b,X)		; 01 FE
	cop $FC.b		; 02 FC
	tsb $F0.b		; 04 F0
	brk $E8.b		; 00 E8
	php		; 08
	beq  16.b		; F0 10
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	bra 112.b		; 80 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$A040.w		; C0 40 A0
	jsr $D692.w		; 20 92 D6
	tsb $00AD.w		; 0C AD 00
	sta [$02.b],Y		; 97 02
	ora $0D.b,S		; 03 0D
	and ($06.b),Y		; 31 06
	bpl   3.b		; 10 03
	php		; 08
	ora ($04.b,X)		; 01 04
	cpy #$847F.w		; C0 7F 84
	inc $7E06.w,X		; FE 06 7E
	ora $1EF1.w		; 0D F1 1E
	bcc  15.b		; 90 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $40.b		; 00 40
	lda $03FE01.l,X		; BF 01 FE 03
	ora $3906.w,X		; 1D 06 39
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($53.b,S),Y		; F3 53
	ora [$07.b]		; 07 07
	ora $1E1F0E.l		; 0F 0E 1F 1E
	ror $0066.w,X		; 7E 66 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $16.b		; 00 16
	brk $03.b		; 00 03
	brk $61.b		; 00 61
	brk $D2.b		; 00 D2
	brk $CA.b		; 00 CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	php		; 08
	asl $1E1C.w,X		; 1E 1C 1E
	asl $2D6D.w,X		; 1E 6D 2D
	lda $B5.b,X		; B5 B5
	rti		; 40

	rti		; 40

	rts		; 60

	cpx #$68A8.w		; E0 A8 68
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpx #$F820.w		; E0 20 F8
	php		; 08
	jsr ($FC08.w,X)		; FC 08 FC
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6018.w		; C0 18 60
	trb $9C20.w		; 1C 20 9C
	tsb $F8.b		; 04 F8
	asl A		; 0A
	adc ($0B.b)		; 72 0B
	ora [$05.b]		; 07 05
	ora $01.b,S		; 03 01
	ora ($F0.b,X)		; 01 F0
	bpl -24.b		; 10 E8
	php		; 08
	jmp ($1C06.w)		; 6C 06 1C
	asl $3A.b		; 06 3A
	ora $003F01.l		; 0F 01 3F 00
	ora $3C0700.l,X		; 1F 00 07 3C
	adc ($18.b,X)		; 61 18
	eor $14.b,S		; 43 14
	lsr $48.b		; 46 48
	cpy $F810.w		; CC 10 F8
	brk $F8.b		; 00 F8
	jsr $20F0.w		; 20 F0 20
	bvs  31.b		; 70 1F
	ora ($3E.b,X)		; 01 3E
	cop $78.b		; 02 78
	rti		; 40

	bmi   0.b		; 30 00
	rti		; 40

	brk $F0.b		; 00 F0
	bpl  96.b		; 10 60
	brk $A0.b		; 00 A0
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCFFFF.l,X		; FF FF FF FC
	xce		; FB
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $00FFFE.l,X		; FF FE FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $04FF00.l,X		; FF 00 FF 04
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $EBF701.l,X		; FF 01 F7 EB
	sbc [$FB.b],Y		; F7 FB
	inc $80FF.w,X		; FE FF 80
	adc $00C200.l,X		; 7F 00 C2 00
	sbc ($80.b,S),Y		; F3 80
	adc [$00.b],Y		; 77 00
	sbc $FF1CFF.l,X		; FF FF 1C FF
	tsb $00FE.w		; 0C FE 00
	sta ($80.b,X)		; 81 80
	lda $0CCE3D.l,X		; BF 3D CE 0C
	inx		; E8
	tay		; A8
	cpy $40.b		; C4 40
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $1D.b,S		; 03 1D
	brk $7F.b		; 00 7F
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $00000A.l		; 0F 0A 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	adc $6FF7BF.l,X		; 7F BF F7 6F
	sbc $7B9FDD.l		; EF DD 9F 7B
	and $EF7EF7.l,X		; 3F F7 7E EF
	adc $F99E.w,X		; 7D 9E F9
	rol $C0FF.w,X		; 3E FF C0
	sbc $22FF90.l,X		; FF 90 FF 22
	sbc $487FA4.l,X		; FF A4 7F 48
	sbc $61FF90.l,X		; FF 90 FF 61
	sbc $FFFFC3.l,X		; FF C3 FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $BF7FBF.l,X		; FF BF 7F BF
	inc $FC7F.w,X		; FE 7F FC
	ply		; 7A
	sed		; F8
	sbc $FF.b,X		; F5 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	jsr $40FF.w		; 20 FF 40
	sbc $80FE40.l,X		; FF 40 FE 80
	jsr ($F884.w,X)		; FC 84 F8
	php		; 08
	sbc [$EF.b],Y		; F7 EF
	sbc $AEDFDF.l		; EF DF DF AE
	sta $DB3D7D.l,X		; 9F 7D 3D DB
	tda		; 7B
	lda $77.b,X		; B5 77
	xce		; FB
	sbc [$6B.b],Y		; F7 6B
	sbc $30FF18.l,X		; FF 18 FF 30
	sbc $C2FF71.l,X		; FF 71 FF C2
	adc $4A7F24.l,X		; 7F 24 7F 4A
	sbc $9CFF04.l,X		; FF 04 FF 9C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora ($73.b)		; 12 73
	jmp $81BCC1.l		; 5C C1 BC 81
	sei		; 78
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $212D.w		; 0E 2D 21
	lda $007E81.l,X		; BF 81 7E 00
	inc $0002.w,X		; FE 02 00
	clc		; 18
	clc		; 18
	rol $06.b		; 26 06
	adc $FE01.w,Y		; 79 01 FE
	bvs -113.b		; 70 8F
	tsb $01F3.w		; 0C F3 01
	inc $FF00.w,X		; FE 00 FF
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	rol $0F06.w,X		; 3E 06 0F
	ora ($73.b,X)		; 01 73
	bvs 124.b		; 70 7C
	tsb $E1FF.w		; 0C FF E1
	ora $021C.w,X		; 1D 1C 02
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	sta $83.b,S		; 83 83
	eor $41.b,S		; 43 41
	lda $21.b,S		; A3 21
	cmp ($01.b),Y		; D1 01
	sbc $0F00.w,X		; FD 00 0F
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	sta ($87.b,X)		; 81 87
	cmp ($47.b,X)		; C1 47
	adc ($23.b,X)		; 61 23
	bra   3.b		; 80 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$E0E0.w		; E0 E0 E0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$C0E0.w		; C0 E0 C0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bpl -20.b		; 10 EC
	brk $FF.b		; 00 FF
	php		; 08
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$1030.w		; C0 30 10
	clc		; 18
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	tsb $00FF.w		; 0C FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	tsb $30.b		; 04 30
	bmi   1.b		; 30 01
	ora ($01.b,X)		; 01 01
	asl $1D03.w		; 0E 03 1D
	ora [$1B.b]		; 07 1B
	ora $2F1F37.l		; 0F 37 1F 2F
	asl $3F7F.w,X		; 1E 7F 3F
	lsr $FF3D.w,X		; 5E 3D FF
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	ora $303F08.l,X		; 1F 08 3F 30
	and $617F01.l,X		; 3F 01 7F 61
	adc $ECF302.l,X		; 7F 02 F3 EC
	cmp $EF9FF3.l		; CF F3 9F EF
	and $BF7FDF.l,X		; 3F DF 7F BF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $13FFFF.l,X		; FF FF FF 13
	sbc $50FF2C.l,X		; FF 2C FF 50
	sbc $40FFA0.l,X		; FF A0 FF 40
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FDFF.w,X		; FE FF FD
	sbc $FFFFFB.l,X		; FF FB FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	ora [$7F.b]		; 07 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	tyx		; BB
	sed		; F8
	adc [$F0.b],Y		; 77 F0
	cpx $D8E0.w		; EC E0 D8
	cpy #$C0F0.w		; C0 F0 C0
	ldy #$E080.w		; A0 80 E0
	bra -64.b		; 80 C0
	sbc $88FC44.l,X		; FF 44 FC 88
	sed		; F8
	bpl -16.b		; 10 F0
	jsr $00E0.w		; 20 E0 00
	cpy #$C040.w		; C0 40 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	inc $00.b		; E6 00
	dec $00.b		; C6 00
	rol $00.b		; 26 00
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $3D99.w,X		; 9D 99 3D
	and $1919.w,Y		; 39 19 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0E.b,X)		; 01 0E
	ora [$3B.b]		; 07 3B
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	ora $000014.l,X		; 1F 14 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc $FD.b,S		; E3 FD
	sta [$FB.b]		; 87 FB
	ora $6F1F17.l		; 0F 17 1F 6F
	ror $F89D.w,X		; 7E 9D F8
	sbc [$E0.b],Y		; F7 E0
	trb $7000.w		; 1C 00 70
	sbc $74F706.l,X		; FF 06 F7 74
	ora $303F08.l		; 0F 08 3F 30
	sbc $0AFEE2.l,X		; FF E2 FE 0A
	sed		; F8
	inx		; E8
	brk $00.b		; 00 00
	sbc ($EA.b),Y		; F1 EA
	cmp ($F7.b,X)		; C1 F7
	sta $EF.b,S		; 83 EF
	asl $DF.b		; 06 DF
	brk $BF.b		; 00 BF
	brk $0F.b		; 00 0F
	ora $1C.b,S		; 03 1C
	brk $7F.b		; 00 7F
	sbc ($11.b),Y		; F1 11
	sbc $00.b,S		; E3 00
	cmp [$00.b]		; C7 00
	sta $203E00.l		; 8F 00 3E 20
	ora $02.b,S		; 03 02
	ora $00000B.l		; 0F 0B 00 00
	sbc [$DF.b]		; E7 DF
	cmp $7F8EB7.l		; CF B7 8E 7F
	trb $38FF.w		; 1C FF 38
	inc $E0.b,X		; F6 E0
	sei		; 78
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	sbc $58DF20.l		; EF 20 DF 58
	lda $407EA0.l,X		; BF A0 7E 40
	jsr ($F008.w,X)		; FC 08 F0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	inc $FE3D.w,X		; FE 3D FE
	tsb $07.b		; 04 07
	sed		; F8
	ora $F2.b,S		; 03 F2
	ora $E6.b,S		; 03 E6
	ora [$0C.b]		; 07 0C
	ora $19FF00.l		; 0F 00 FF 19
	ora $C1C1.w,Y		; 19 C1 C1
	sbc $FC01.w,Y		; F9 01 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F2.b		; 00 F2
	cop $F1.b		; 02 F1
	sbc ($E0.b),Y		; F1 E0
	ora $01FF01.l,X		; 1F 01 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0FF907.l,X		; FF 07 F9 0F
	sbc $E237F8.l,X		; FF F8 37 E2
	cpx #$00FB.w		; E0 FB 00
	xce		; FB
	sed		; F8
	brk $00.b		; 00 00
	sbc $20.b,S		; E3 20
	sta $007F86.l,X		; 9F 86 7F 00
	sbc $FD00C8.l,X		; FF C8 00 FD
	bit $1CFE.w,X		; 3C FE 1C
	inc $FF00.w,X		; FE 00 FF
	sbc $FFFF3F.l,X		; FF 3F FF FF
	sbc $1FFFFF.l,X		; FF FF FF 1F
	sec		; 38
	ora $7C.b,S		; 03 7C
	ora ($7C.b,X)		; 01 7C
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	cpy #$00FF.w		; C0 FF 00
	sbc $E0FF00.l,X		; FF 00 FF E0
	sbc ($E9.b,X)		; E1 E9
	cpy $00E8.w		; CC E8 00
	clc		; 18
	tsb $FF.b		; 04 FF
	cpx #$FC9F.w		; E0 9F FC
	sbc ($FF.b,S),Y		; F3 FF
	sbc $C5FFFF.l,X		; FF FF FF C5
	sbc ($4E.b,S),Y		; F3 4E
	sbc ($1E.b),Y		; F1 1E
	sbc #$0101.w		; E9 01 01
	sed		; F8
	rts		; 60

	sbc $00FF0C.l,X		; FF 0C FF 00
	sbc $07F800.l,X		; FF 00 F8 07
	clc		; 18
	sbc $FC0179.l,X		; FF 79 01 FC
	brk $F3.b		; 00 F3
	ora $CC.b,S		; 03 CC
	ora $00F880.l		; 0F 80 F8 00
	bra   0.b		; 80 00
	brk $67.b		; 00 67
	adc [$FE.b]		; 67 FE
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F2.b		; 00 F2
	cop $60.b		; 02 60
	rts		; 60

	brk $00.b		; 00 00
	tsb $FC.b		; 04 FC
	ora $808F80.l,X		; 1F 80 8F 80
	cmp [$C0.b]		; C7 C0
	bra -32.b		; 80 E0
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	clc		; 18
	sbc $007F80.l,X		; FF 80 7F 00
	and $607F00.l,X		; 3F 00 7F 60
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $3D02.w		; 0D 02 3D
	cop $FE.b		; 02 FE
	ora ($78.b,X)		; 01 78
	sta [$E0.b]		; 87 E0
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	cmp $5DF7.w		; CD F7 5D
	sbc $00.b,S		; E3 00
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $D9.b		; 00 D9
	bpl -35.b		; 10 DD
	brk $A0.b		; 00 A0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	cop $1E.b		; 02 1E
	ora $27F8.w,Y		; 19 F8 27
	cpx #$C09F.w		; E0 9F C0
	lda ($E1.b,X)		; A1 E1
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $670C.w		; 0D 0C 67
	rts		; 60

	ora $00BF00.l,X		; 1F 00 BF 00
	stz $0000.w,X		; 9E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	rti		; 40

	brk $C7.b		; 00 C7
	brk $DF.b		; 00 DF
	ora ($FE.b,X)		; 01 FE
	cpy #$CE3F.w		; C0 3F CE
	lda ($00.b),Y		; B1 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	bra   0.b		; 80 00
	sta $111988.l		; 8F 88 19 11
	inc $FFE8.w,X		; FE E8 FF
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $1C18.w		; 0C 18 1C
	bmi  56.b		; 30 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	php		; 08
	rol $3E18.w,X		; 3E 18 3E
	bmi  60.b		; 30 3C
	jsr $2078.w		; 20 78 20
	sei		; 78
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	bpl -20.b		; 10 EC
	php		; 08
	pea $1EE8.w		; F4 E8 1E
	jsr ($FC6A.w,X)		; FC 6A FC
	adc ($C0.b,S),Y		; 73 C0
	sbc $F00000.l,X		; FF 00 00 F0
	bra -104.b		; 80 98
	bpl -24.b		; 10 E8
	dey		; 88
	jsr ($FCE0.w,X)		; FC E0 FC
	sty $FE.b,X		; 94 FE
	sty $00C0.w		; 8C C0 00
	brk $FF.b		; 00 FF
	brk $46.b		; 00 46
	brk $66.b		; 00 66
	brk $F6.b		; 00 F6
	brk $EC.b		; 00 EC
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $DC.b		; 00 DC
	bit $FC00.w,X		; 3C 00 FC
	clv		; B8
	jmp.w [$0C98]		; DC 98 0C
	php		; 08
	bcc  16.b		; 90 10
	clv		; B8
	bmi -72.b		; 30 B8
	bmi  32.b		; 30 20
	jsr $0300.w		; 20 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	tsb $0C.b		; 04 0C
	ora $1E19.w		; 0D 19 1E
	and ($38.b,S),Y		; 33 38
	and $1D.b,S		; 23 1D
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $1D.b		; 00 1D
	ora ($38.b,X)		; 01 38
	brk $0F.b		; 00 0F
	sbc $F90F.w,Y		; F9 0F F9
	sty $1EE1.w		; 8C E1 1E
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $BC, $86		; 82 BC 86
	sei		; 78
	asl $F0.b		; 06 F0
	tsb $96.b		; 04 96
	bcc -106.b		; 90 96
	bcc  62.b		; 90 3E
	jsr $407C.w		; 20 7C 40
	inc $7882.w,X		; FE 82 78
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $01.b		; 00 01
	asl $3F00.w		; 0E 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora [$05.b]		; 07 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b]		; 07 06
	beq -17.b		; F0 EF
	brk $FF.b		; 00 FF
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	ora [$3B.b]		; 07 3B
	ora $CF3FF7.l		; 0F F7 3F CF
	sbc $17FF7F.l,X		; FF 7F FF 17
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	and $B0FF28.l,X		; 3F 28 FF B0
	sbc $FF7F80.l,X		; FF 80 7F FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFB.l,X		; FF FB FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7DFE04.l,X		; FF 04 FE 7D
	sbc $BFFFBE.l,X		; FF BE FF BF
	sbc $DFFFDF.l,X		; FF DF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $82FFFF.l,X		; FF FF FF 82
	sbc $40FF41.l,X		; FF 41 FF 40
	sbc $20FF20.l,X		; FF 20 FF 20
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $EFF200.l,X		; FF 00 F2 EF
	sei		; 78
	sbc [$FC.b],Y		; F7 FC
	tda		; 7B
	inc $FEBD.w,X		; FE BD FE
	cmp $FDFE.w,X		; DD FE FD
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $1AF8.w,X		; FD F8 1A
	jsr ($FE0C.w,X)		; FC 0C FE
	stx $FF.b		; 86 FF
	eor $FF.b,S		; 43 FF
	jsl $FF02FF.l		; 22 FF 02 FF
	brk $FF.b		; 00 FF
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	tsb $330F.w		; 0C 0F 33
	and $0000CF.l,X		; 3F CF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora $307F0C.l,X		; 1F 0C 7F 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($FFF3.w,X)		; FC F3 FF
	inc $FFFF.w,X		; FE FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	tsb $01FF.w		; 0C FF 01
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	cpx #$0098.w		; E0 98 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	rts		; 60

	ora $3A.b		; 05 3A
	bpl  63.b		; 10 3F
	dec A		; 3A
	adc $07463B.l,X		; 7F 3B 46 07
	ror $3D1A.w,X		; 7E 1A 3D
	ora $1D3F.w,X		; 1D 3F 1D
	and $100505.l,X		; 3F 05 05 10
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	and $0107.w,Y		; 39 07 01
	inc A		; 1A
	cop $1D.b		; 02 1D
	brk $1D.b		; 00 1D
	brk $11.b		; 00 11
	inc $6D92.w		; EE 92 6D
	sta ($6D.b)		; 92 6D
	eor ($AD.b)		; 52 AD
	lsr A		; 4A
	ldy $28.b,X		; B4 28
	dec $20.b,X		; D6 20
	jmp.w [$D898]		; DC 98 D8
	cmp $DB11.w,X		; DD 11 DB
	sta ($DB.b)		; 92 DB
	sta ($7A.b)		; 92 7A
	eor ($6A.b)		; 52 6A
	lsr A		; 4A
	plp		; 28
	plp		; 28
	jsr $9020.w		; 20 20 90
	bit $8000.w,X		; 3C 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	asl $09.b		; 06 09
	cop $0D.b		; 02 0D
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
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
	bvs  70.b		; 70 46
	and $218C.w,Y		; 39 8C 21
	sty $9C11.w		; 8C 11 9C
	adc ($FC.b,X)		; 61 FC
	brk $FF.b		; 00 FF
	tsb $FB.b		; 04 FB
	bit $DB.b		; 24 DB
	tsa		; 3B
	cop $73.b		; 02 73
	brk $F7.b		; 00 F7
	sty $E7.b		; 84 E7
	sty $97.b		; 84 97
	sty $60.b,X		; 94 60
	rts		; 60

	ora [$04.b],Y		; 17 04
	lda [$24.b],Y		; B7 24
	sed		; F8
	tsb $08E0.w		; 0C E0 08
	beq  24.b		; F0 18
	cpy #$A018.w		; C0 18 A0
	sec		; 38
	bpl -24.b		; 10 E8
	jsr $20D8.w		; 20 D8 20
	cld		; D8
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $90.b		; 00 90
	bpl -80.b		; 10 B0
	jsr $20B0.w		; 20 B0 20
	ora $FD.b,S		; 03 FD
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000032.l,X		; 3F 32 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FF03FF.l,X		; FF FF 03 FF
	ora [$3F.b]		; 07 3F
	ora $BB7CFF.l,X		; 1F FF 7C BB
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $080F00.l,X		; FF 00 0F 08
	ora $407F10.l,X		; 1F 10 7F 40
	sbc $000045.l,X		; FF 45 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FBFCFF.l,X		; FF FF FC FB
	sbc ($DF.b,X)		; E1 DF
	sta $7F.b,S		; 83 7F
	ora [$CE.b]		; 07 CE
	tsb $0033.w		; 0C 33 00
	inc $0000.w,X		; FE 00 00
	sbc $05FF00.l,X		; FF 00 FF 05
	xce		; FB
	rol A		; 2A
	sbc [$A4.b]		; E7 A4
	ora $2D3F09.l		; 0F 09 3F 2D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E9F6F3.l,X		; FF F3 F6 E9
	sbc ($DF.b,X)		; E1 DF
	cmp $BF.b,S		; C3 BF
	ora [$FF.b]		; 07 FF
	asl $18FD.w		; 0E FD 18
	adc $FF7C10.l,X		; 7F 10 7C FF
	tsb $16FF.w		; 0C FF 16
	sbc [$24.b],Y		; F7 24
	sbc $50DF48.l		; EF 48 DF 50
	ora $223E02.l,X		; 1F 02 3E 22
	sec		; 38
	php		; 08
	sbc $BF7FFF.l,X		; FF FF 7F BF
	sbc $FFFEFF.l,X		; FF FF FE FF
	bra 127.b		; 80 7F
	brk $E1.b		; 00 E1
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sbc $40FF00.l,X		; FF 00 FF 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	tya		; 98
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $FF3CFC.l,X		; FF FC 3C FF
	clc		; 18
	lda $1D00.w,X		; BD 00 1D
	brk $09.b		; 00 09
	brk $F9.b		; 00 F9
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $00BC03.l,X		; FF 03 BC 00
	phy		; 5A
	.db $42, $E2		; 42 E2
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	inc $76.b,X		; F6 76
	asl $00.b		; 06 00
	sbc $000100.l,X		; FF 00 01 00
	ora [$03.b]		; 07 03
	ora $770F.w,X		; 1D 0F 77
	ora $BB7CEF.l,X		; 1F EF 7C BB
	beq -17.b		; F0 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $283F0A.l		; 0F 0A 3F 28
	adc $45FF50.l,X		; 7F 50 FF 45
	sbc $FB0716.l,X		; FF 16 07 FB
	and $FEC6.w,Y		; 39 C6 FE
	adc $FFFF.w,X		; 7D FF FF
	sbc $FF0FFF.l,X		; FF FF 0F FF
	and $FFFFFF.l,X		; 3F FF FF FF
	adc $B9FF74.l,X		; 7F 74 FF B9
	sbc $00FF82.l,X		; FF 82 FF 00
	sbc $60FF00.l,X		; FF 00 FF 60
	sbc $00FF80.l,X		; FF 80 FF 00
	beq -17.b		; F0 EF
	sbc $7CF7.w,Y		; F9 F7 7C
	tyx		; BB
	ldx $DF5D.w,Y		; BE 5D DF
	ldx $D7EF.w		; AE EF D7
	sbc [$EF.b],Y		; F7 EF
	sbc $10F8F3.l,X		; FF F3 F8 10
	sbc $FE08.w,X		; FD 08 FE
	mvp $A2,$FF		; 44 FF A2
	sbc $28FF51.l,X		; FF 51 FF 28
	sbc $0CFF10.l,X		; FF 10 FF 0C
	ora $8923.w,X		; 1D 23 89
	sbc [$C1.b],Y		; F7 C1
	inc $FE61.w,X		; FE 61 FE
	bmi  -1.b		; 30 FF
	ldy $DE5B.w,X		; BC 5B DE
	lda $D6EF.w		; AD EF D6
	ora $C91C.w,X		; 1D 1C C9
	pha		; 48
	sbc ($11.b),Y		; F1 11
	adc $BC09.w,Y		; 79 09 BC
	brk $FE.b		; 00 FE
	ldy $FF.b		; A4 FF
	eor ($FF.b)		; 52 FF
	and #$A0.b		; 29 A0
	cpx #$90.b		; E0 90
	bvc 112.b		; 50 70
	sbc ($78.b),Y		; F1 78
	sbc $F970.w,Y		; F9 70 F9
	eor $E5.b,X		; 55 E5
	jmp ($3C9E.w,X)		; 7C 9E 3C
	inc $3880.w,X		; FE 80 38
	bra -72.b		; 80 B8
	bvs 120.b		; 70 78
	bvs 124.b		; 70 7C
	adc ($FD.b,X)		; 61 FD
	brk $FE.b		; 00 FE
	ora $7E.b		; 05 7E
	lda $0F3C.w,X		; BD 3C 0F
	adc $1BFF37.l,X		; 7F 37 FF 1B
	sbc $68FE0A.l,X		; FF 0A FE 68
	bit $1CE0.w,X		; 3C E0 1C
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	ora $0F.b,S		; 03 0F
	adc [$07.b],Y		; 77 07
	plx		; FA
	ora $F8.b,S		; 03 F8
	sbc $D8.b,S		; E3 D8
	ora ($F8.b)		; 12 F8
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $08.b		; 00 08
	ldy $40.b		; A4 40
	jmp.w [$E060]		; DC 60 E0
	sec		; 38
	clv		; B8
	rti		; 40

	cpy #$28.b		; C0 28
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	bit $18E4.w,X		; 3C E4 18
	sei		; 78
	rti		; 40

	jmp ($7C20.w,X)		; 7C 20 7C
	brk $78.b		; 00 78
	ldy #$B0.b		; A0 B0
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	brk $F8.b		; 00 F8
	brk $F4.b		; 00 F4
	bra 116.b		; 80 74
	cpy #$B4.b		; C0 B4
	iny		; C8
	ldy $BEC0.w,X		; BC C0 BE
	cpy #$BF.b		; C0 BF
	bra 127.b		; 80 7F
	cpx #$E0.b		; E0 E0
	inx		; E8
	rts		; 60

	sed		; F8
	bcs -24.b		; B0 E8
	rts		; 60

	cpx #$40.b		; E0 40
	inx		; E8
	rti		; 40

	inc $40.b,X		; F6 40
	inc $0CA0.w,X		; FE A0 0C
	inc A		; 1A
	ora $190219.l		; 0F 19 02 19
	asl $0D.b		; 06 0D
	ora ($0C.b,X)		; 01 0C
	ora $0E.b,S		; 03 0E
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora $080A09.l		; 0F 09 0A 08
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cpy #$10.b		; C0 10
	bvs  24.b		; 70 18
	rts		; 60

	php		; 08
	sed		; F8
	sty $8470.w		; 8C 70 84
	bit $5884.w,X		; 3C 84 58
.ACCU 16
	rep #$2E		; C2 2E
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	jsr ($F884.w,X)		; FC 84 F8
	bra  60.b		; 80 3C
	brk $1C.b		; 00 1C
	brk $06.b		; 00 06
	trb $1A06.w		; 1C 06 1A
	cop $3C.b		; 02 3C
	brk $3E.b		; 00 3E
	bpl 126.b		; 10 7E
	clc		; 18
	ror $7E18.w,X		; 7E 18 7E
	clc		; 18
	ror $06.b,X		; 76 06
	cop $06.b		; 02 06
	tsb $0E.b		; 04 0E
	cop $0C.b		; 02 0C
	brk $14.b		; 00 14
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	ora ($6E.b)		; 12 6E
	ora ($6A.b)		; 12 6A
	ora ($6E.b)		; 12 6E
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $77.b		; 00 77
	bpl  63.b		; 10 3F
	php		; 08
	and $141018.l,X		; 3F 18 10 14
	bpl  16.b		; 10 10
	bpl  18.b		; 10 12
	cop $12.b		; 02 12
	cop $2A.b		; 02 2A
	cop $06.b		; 02 06
	cop $0A.b		; 02 0A
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $0000.w,X		; 1D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $70000A.l		; 0F 0A 00 70
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
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
	adc $004E00.l,X		; 7F 00 4E 00
	mvp $78,$00		; 44 00 78
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and ($31.b),Y		; 31 31
	tsa		; 3B
	tsa		; 3B
	and [$07.b],Y		; 37 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	cmp $2CE738.l,X		; DF 38 E7 2C
	plx		; FA
	clc		; 18
	sbc [$00.b]		; E7 00
	sbc $00E200.l,X		; FF 00 E2 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	plp		; 28
	ldx $BE18.w,Y		; BE 18 BE
	asl $BE.b		; 06 BE
	asl $22A2.w,X		; 1E A2 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	php		; 08
	trb $08.b		; 14 08
	bit $380C.w,X		; 3C 0C 38
	tsb $0034.w		; 0C 34 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	tsb $0C.b		; 04 0C
	php		; 08
	brk $00.b		; 00 00
	trb $F4.b		; 14 F4
	clv		; B8
	jsr ($D880.w,X)		; FC 80 D8
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	brk $FE.b		; 00 FE
	bcs  -2.b		; B0 FE
	bra  -4.b		; 80 FC
	brk $D8.b		; 00 D8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	php		; 08
	cpx $E400.w		; EC 00 E4
	tsb $08E6.w		; 0C E6 08
	ldx #$1E.b		; A2 1E
	lda ($3C.b,S),Y		; B3 3C
	lda ($27.b),Y		; B1 27
	sta ($10.b),Y		; 91 10
	brk $30.b		; 00 30
	jsr $243C.w		; 20 3C 24
	cli		; 58
	rti		; 40

	lsr $4C02.w,X		; 5E 02 4C
	brk $4F.b		; 00 4F
	ora ($7E.b,X)		; 01 7E
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $103F00.l		; 0F 00 3F 10
	adc $FA28.w,Y		; 79 28 FA
	trb $F6.b		; 14 F6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $36.b		; 00 36
	brk $64.b		; 00 64
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sbc ($80.b,X)		; E1 80
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	ora [$00.b]		; 07 00
	ora $001F03.l		; 0F 03 1F 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $16.b		; 00 16
	bcs  44.b		; B0 2C
	sbc ($5F.b,X)		; E1 5F
	cpy #$D6.b		; C0 D6
	pha		; 48
	cmp $2570.w,X		; DD 70 25
	bvc -100.b		; 50 9C
	sbc $A2.b,S		; E3 A2
	sbc $1F606F.l,X		; FF 6F 60 1F
	cop $BF.b		; 02 BF
	bra -77.b		; 80 B3
	php		; 08
	sta ($14.b,S),Y		; 93 14
	sta $18.b,S		; 83 18
	ldy #$00.b		; A0 00
	lda ($00.b,S),Y		; B3 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra 112.b		; 80 70
	cpy #$38.b		; C0 38
	ldy #$18.b		; A0 18
	pha		; 48
	ldy $FC68.w,X		; BC 68 FC
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	jsr $1000.w		; 20 00 10
	bra   8.b		; 80 08
	rti		; 40

	plp		; 28
	bra 120.b		; 80 78
	brk $60.b		; 00 60
	beq -29.b		; F0 E3
	sbc $07EF47.l		; EF 47 EF 07
	cmp $D009.w,Y		; D9 09 D0
	rts		; 60

	brk $BF.b		; 00 BF
	rti		; 40

	and [$C0.b]		; 27 C0
	rts		; 60

	ora $E31FE0.l		; 0F E0 1F E3
	ora $003941.l,X		; 1F 41 39 00
	rol $00.b,X		; 36 00
	cmp $00CE00.l,X		; DF 00 CE 00
	cld		; D8
	brk $0F.b		; 00 0F
	beq  -1.b		; F0 FF
	beq -13.b		; F0 F3
	sbc ($FA.b)		; F2 FA
	sbc ($C8.b),Y		; F1 C8
	sta $88.b,S		; 83 88
	dec $01.b		; C6 01
	pea $06C2.w		; F4 C2 06
	beq -25.b		; F0 E7
	beq -32.b		; F0 E0
	jsr ($FCE1.w,X)		; FC E1 FC
	cmp $CC.b,S		; C3 CC
	sta $FC.b,S		; 83 FC
	cop $38.b		; 02 38
	cpy #$18.b		; C0 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	ora ($0E.b,X)		; 01 0E
	ora ($1E.b,X)		; 01 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	jsr $F400.w		; 20 00 F4
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $83.b		; 00 83
	jmp ($FF00.w,X)		; 7C 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $4F3E.w,X		; 3E 3E 4F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  16.b		; 80 10
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $00.b		; 02 00
	ora [$01.b]		; 07 01
	asl $1D03.w		; 0E 03 1D
	ora [$3B.b]		; 07 3B
	ora $EE1F77.l		; 0F 77 1F EE
	and $7907DF.l,X		; 3F DF 07 79
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	and $517F28.l,X		; 3F 28 7F 51
	sbc $161FA0.l,X		; FF A0 1F 16
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	ora [$3B.b]		; 07 3B
	ora $DF3FEF.l,X		; 1F EF 3F DF
	ora ($3E.b,X)		; 01 3E
	brk $01.b		; 00 01
	ora [$05.b]		; 07 05
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	ora $507F14.l,X		; 1F 14 7F 50
	sbc $0507A0.l,X		; FF A0 07 05
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $BC.b		; 00 BC
	bra -36.b		; 80 DC
	cpy #$EE.b		; C0 EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	cpx #$FE.b		; E0 FE
	bra -33.b		; 80 DF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	bpl -33.b		; 10 DF
	plp		; 28
	cmp $BAC714.l		; CF 14 C7 BA
	adc $C0.b,S		; 63 C0
	beq  16.b		; F0 10
	cpx #$78.b		; E0 78
	bra -12.b		; 80 F4
	bmi 104.b		; 30 68
	pha		; 48
	stz $44.b,X		; 74 44
	tsx		; BA
	.db $82, $9D, $81		; 82 9D 81
	stx $D862.w		; 8E 62 D8
	bcs -64.b		; B0 C0
	lda ($84.b)		; B2 84
	adc $0A.b,X		; 75 0A
	plx		; FA
	tsb $F6.b		; 04 F6
	brk $F5.b		; 00 F5
	sta ($FA.b,X)		; 81 FA
	ldy $CCA1.w,X		; BC A1 CC
	eor $D8.b,S		; 43 D8
	eor [$E4.b],Y		; 57 E4
	lda $F40FEA.l		; AF EA 0F F4
	sta $FB5FF1.l,X		; 9F F1 5F FB
	and $E0FFC0.l,X		; 3F C0 FF E0
	cmp $F8EFF0.l,X		; DF F0 EF F8
	adc [$78.b],Y		; 77 78
	lda [$38.b],Y		; B7 38
	eor $002F18.l,X		; 5F 18 2F 00
	ora $FF1CFC.l,X		; 1F FC 1C FF
	and $FE17FF.l		; 2F FF 17 FE
	txa		; 8A
	ror $3E4A.w,X		; 7E 4A 3E
	jsl $151119.l		; 22 19 11 15
	trb $20.b		; 14 20
	stz $08.b		; 64 08
	jmp $E920.w		; 4C 20 E9
	ora ($FF.b),Y		; 11 FF
	jsl $FC45FE.l		; 22 FE 45 FC
	phk		; 4B
	sec		; 38
	sta [$70.b],Y		; 97 70
	trb $3004.w		; 1C 04 30
	brk $18.b		; 00 18
	php		; 08
	.db $42, $02		; 42 02
	and $04.b		; 25 04
	phb		; 8B
	dey		; 88
	sbc [$30.b],Y		; F7 30
	cmp $230440.l		; CF 40 04 23
	tsb $18C2.w		; 0C C2 18
	sty $30.b		; 84 30
	php		; 08
	cpx #$10.b		; E0 10
	cpy #$20.b		; C0 20
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	bit $7C20.w,X		; 3C 20 7C
	rti		; 40

	sed		; F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $91.b		; 00 91
	sbc $7FFF4D.l,X		; FF 4D FF 7F
	sbc $00FF18.l,X		; FF 18 FF 00
	adc $009200.l,X		; 7F 00 92 00
	tsb $0000.w		; 0C 00 00
	cmp $FF00.w,X		; DD 00 FF
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	brk $80.b		; 00 80
	bra  44.b		; 80 2C
	bit $1010.w		; 2C 10 10
	brk $00.b		; 00 00
	bmi  -4.b		; 30 FC
	cpx #$F8.b		; E0 F8
	brk $F0.b		; 00 F0
	jsr $00F0.w		; 20 F0 00
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	ora ($87.b,X)		; 01 87
	brk $FF.b		; 00 FF
	brk $B9.b		; 00 B9
	jmp $9873.w		; 4C 73 98
	inc $C03F.w		; EE 3F C0
	sbc $08.b,S		; E3 08
	cmp $3C01.w,Y		; D9 01 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	tda		; 7B
	bvs  -9.b		; 70 F7
	cpx #$E0.b		; E0 E0
	cpy #$DC.b		; C0 DC
	trb $3036.w		; 1C 36 30
	iny		; C8
	sty $C8.b		; 84 C8
	tsb $78.b		; 04 78
	bra  56.b		; 80 38
	cpy #$B0.b		; C0 B0
	rti		; 40

	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra  48.b		; 80 30
	brk $70.b		; 00 70
	bra -72.b		; 80 B8
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cop $3D.b		; 02 3D
	jsl $FB647D.l		; 22 7D 64 FB
	stz $FB.b		; 64 FB
	adc ($FE.b,X)		; 61 FE
	cop $79.b		; 02 79
	brk $F5.b		; 00 F5
	and $F7.b,S		; 23 F7
	asl $02.b,X		; 16 02
	rol $02.b,X		; 36 02
	adc $04.b,X		; 75 04
	adc $04.b,X		; 75 04
	adc ($01.b,S),Y		; 73 01
	and ($06.b)		; 32 06
	bpl  14.b		; 10 0E
	and ($0F.b,X)		; 21 0F
	ora [$FF.b]		; 07 FF
	bit $DC.b		; 24 DC
	eor [$BC.b]		; 47 BC
	sta $7C.b,S		; 83 7C
	tsa		; 3B
	cpy $61.b		; C4 61
	stz $3AC4.w,X		; 9E C4 3A
	ora #$77.b		; 09 77
	inx		; E8
	php		; 08
	sbc $20.b,S		; E3 20
	cmp ($40.b,S),Y		; D3 40
	tyx		; BB
	bra 123.b		; 80 7B
	sec		; 38
	sbc $DD60.w		; ED 60 DD
	cpy $18.b		; C4 18
	dey		; 88
	brk $F8.b		; 00 F8
	bra  -2.b		; 80 FE
	rti		; 40

	adc $D03FA0.l,X		; 7F A0 3F D0
	ora $F40FE8.l,X		; 1F E8 0F F4
	ora [$7A.b]		; 07 7A
	ora $C0.b,S		; 03 C0
	cpy #$60.b		; C0 60
	rts		; 60

	bcs  48.b		; B0 30
	cld		; D8
	clc		; 18
	cpx $F60C.w		; EC 0C F6
	asl $FA.b		; 06 FA
	cop $FD.b		; 02 FD
	ora ($01.b,X)		; 01 01
	tsb $1803.w		; 0C 03 18
	asl $F0.b		; 06 F0
	ora $3EE1.w		; 0D E1 3E
	sbc $78.b,S		; E3 78
	cmp $3C.b,S		; C3 3C
	sta [$F0.b]		; 87 F0
	stx $07.b		; 86 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $203E10.l,X		; 1F 10 3E 20
	jmp $82BE40.l		; 5C 40 BE 82
	sed		; F8
	bra 124.b		; 80 7C
	tsb $01.b		; 04 01
	ora [$01.b],Y		; 17 01
	adc [$00.b]		; 67 00
	and $00.b,S		; 23 00
	ora $00.b,X		; 15 00
	ora $0400.w		; 0D 00 04
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	phd		; 0B
	asl A		; 0A
	tas		; 1B
	inc A		; 1A
	ora $0A1C.w,X		; 1D 1C 0A
	asl A		; 0A
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	jsr $40B0.w		; 20 B0 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rol $F830.w,X		; 3E 30 F8
	cpx #$40.b		; E0 40
	rti		; 40

	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $FF.b		; 00 FF
	sei		; 78
	sta [$FE.b]		; 87 FE
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FF7C.w,X)		; 7C 7C FF
	adc $02FF.w,Y		; 79 FF 02
	sbc $CF3FFF.l,X		; FF FF 3F CF
	ora $390773.l		; 0F 73 07 39
	ora ($FE.b,X)		; 01 FE
	bmi -49.b		; 30 CF
	jsr ($FF73.w,X)		; FC 73 FF
	inc $00FF.w,X		; FE FF 00
	sbc $2C3FB0.l,X		; FF B0 3F 2C
	ora $0D0F16.l,X		; 1F 16 0F 0D
	sbc $8CFF33.l,X		; FF 33 FF 8C
	sbc $FFFF01.l,X		; FF 01 FF FF
	sbc $01FFFF.l,X		; FF FF FF 01
	beq -17.b		; F0 EF
	inc $FFFD.w,X		; FE FD FF
	and $E7EF1F.l,X		; 3F 1F EF E7
	tas		; 1B
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $17FFFE.l,X		; FF FE FF 17
	sbc $C0FF02.l,X		; FF 02 FF C0
	sbc $E4FFD0.l,X		; FF D0 FF E4
	sbc $FEE7.w,Y		; F9 E7 FE
	sbc $FEFF.w,Y		; F9 FF FE
	sbc $EF1FFF.l,X		; FF FF 1F EF
	ora ($0E.b,X)		; 01 0E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sbc $06FF18.l,X		; FF 18 FF 06
	sbc $00FF01.l,X		; FF 01 FF 00
	adc $050750.l,X		; 7F 50 07 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3839.w		; 20 39 38
	ldy $BC30.w,X		; BC 30 BC
	tya		; 98
	bit $9ECC.w,X		; 3C CC 9E
	inc $FFCF.w		; EE CF FF
	sbc [$00.b]		; E7 00
	sec		; 38
	jsr $387C.w		; 20 7C 38
	ror $FEB0.w,X		; 7E B0 FE
	tya		; 98
	inc $7FC8.w,X		; FE C8 7F
	inc $3F.b		; E6 3F
	sbc ($1F.b,S),Y		; F3 1F
	sbc [$F3.b],Y		; F7 F3
	xce		; FB
	adc ($7B.b,S),Y		; 73 7B
	lda ($38.b),Y		; B1 38
	cmp $ACD9.w,X		; DD D9 AC
	inx		; E8
	inc $F4.b,X		; F6 F4
	xce		; FB
	inc $F379.w,X		; FE 79 F3
	ora $F88FF9.l		; 0F F9 8F F8
	cmp $FC63F8.l		; CF F8 63 FC
	eor [$FC.b],Y		; 57 FC
	ora $06FE.w		; 0D FE 06
	sbc $DC3F87.l,X		; FF 87 3F DC
	sta $FFC77E.l		; 8F 7E C7 FF
	sbc $FF.b,S		; E3 FF
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	sbc $FE7FFC.l,X		; FF FC 7F FE
	lda $FFE3FF.l,X		; BF FF E3 FF
	lda ($FF.b,X)		; A1 FF
	bpl  -1.b		; 10 FF
	php		; 08
	sbc $02FF04.l,X		; FF 04 FF 02
	sbc $40FF81.l,X		; FF 81 FF 40
	sbc $FFFFDF.l,X		; FF DF FF FF
	and $3B07DF.l,X		; 3F DF 07 3B
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF20.l,X		; FF 20 FF 00
	sbc $141FA0.l,X		; FF A0 1F 14
	ora [$05.b]		; 07 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $00000A.l		; 0F 0A 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $1C61.w		; 8E 61 1C
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	sty $70.b		; 84 70
	dey		; 88
	cpx #$C010.w		; E0 10 C0
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	ldx $BC20.w,Y		; BE 20 BC
	bra 120.b		; 80 78
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$E02E.w		; C0 2E E0
	ora [$70.b],Y		; 17 70
	phb		; 8B
	cli		; 58
	cop $8E.b		; 02 8E
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ror $3F00.w,X		; 7E 00 3F
	brk $1F.b		; 00 1F
	brk $8F.b		; 00 8F
	brk $87.b		; 00 87
	brk $05.b		; 00 05
	tsb $01.b		; 04 01
	ora ($00.b,X)		; 01 00
	brk $78.b		; 00 78
	tsb $0C60.w		; 0C 60 0C
	bne  24.b		; D0 18
	cpy #$A018.w		; C0 18 A0
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	cpx #$C000.w		; E0 00 C0
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	ora [$50.b]		; 07 50
	adc $EF.b,S		; 63 EF
	cpx #$42D0.w		; E0 D0 42
	lda $02.b,X		; B5 02
	adc $3E01.w,X		; 7D 01 3E
	ora ($7E.b,X)		; 01 7E
	ora ($FE.b,X)		; 01 FE
	brk $3F.b		; 00 3F
	rts		; 60

	ora $732FF0.l,X		; 1F F0 2F 73
	phk		; 4B
	asl $06.b		; 06 06
	ora [$05.b],Y		; 17 05
	and [$05.b],Y		; 37 05
	adc [$05.b],Y		; 77 05
	cpy #$805F.w		; C0 5F 80
	lda $007F00.l,X		; BF 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0FE657.l,X		; FF 57 E6 0F
	cpy $D85F.w		; CC 5F D8
	sbc $30F760.l		; EF 60 F7 30
	xce		; FB
	tya		; 98
	adc $780C.w,X		; 7D 0C 78
	rti		; 40

	brk $F8.b		; 00 F8
	bpl  -2.b		; 10 FE
	jsl $C05EE3.l		; 22 E3 5E C0
	eor $E02FC0.l,X		; 5F C0 2F E0
	ora [$F0.b],Y		; 17 F0
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	eor $3F41.w,X		; 5D 41 3F
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	rti		; 40

	adc $000060.l		; 6F 60 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	ldy #$D030.w		; A0 30 D0
	clc		; 18
	inx		; E8
	asl $C600.w		; 0E 00 C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	inc $06.b,X		; F6 06
	inc $C0C6.w,X		; FE C6 C0
	rts		; 60

	rti		; 40

	rts		; 60

	bra  -1.b		; 80 FF
	ora [$F0.b]		; 07 F0
	eor [$F8.b]		; 47 F8
	sta ($BD.b,X)		; 81 BD
	dec $39.b		; C6 39
	lsr A		; 4A
	bcs -128.b		; B0 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $2F.b		; 00 2F
	brk $B7.b		; 00 B7
	bra  90.b		; 80 5A
	php		; 08
	cld		; D8
	brk $50.b		; 00 50
	trb $01.b		; 14 01
	brk $05.b		; 00 05
	and ($27.b,S),Y		; 33 27
	sbc [$A6.b],Y		; F7 A6
	adc [$13.b],Y		; 77 13
	sei		; 78
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	and ($1F.b,S),Y		; 33 1F
	ldy $1F.b,X		; B4 1F
	clv		; B8
	ora $00C7DC.l		; 0F DC C7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bvs   0.b		; 70 00
	iny		; C8
	brk $8D.b		; 00 8D
	brk $87.b		; 00 87
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	ora $50DF0C.l		; 0F 0C DF 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00C0.w		; C0 C0 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$0020.w		; E0 20 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $00FF00.l,X		; 7F 00 FF 00
	inc $FC00.w,X		; FE 00 FC
	brk $F9.b		; 00 F9
	brk $C0.b		; 00 C0
	stx $86.b		; 86 86
	sbc ($61.b,X)		; E1 61
	sed		; F8
	tya		; 98
	jsr ($F03C.w,X)		; FC 3C F0
	beq -64.b		; F0 C0
	cmp ($00.b,X)		; C1 00
	ora $00.b,S		; 03 00
	ora $0F.b,S		; 03 0F
	cpx #$F006.w		; E0 06 F0
	cop $E8.b		; 02 E8
	ora ($F4.b,X)		; 01 F4
	brk $7F.b		; 00 7F
	ora ($7F.b,X)		; 01 7F
	bra -65.b		; 80 BF
	rti		; 40

	eor $9F001F.l		; 4F 1F 00 9F
	sta ($1F.b),Y		; 91 1F
	ora #$040F.w		; 09 0F 04
	bvs -64.b		; 70 C0
	dec A		; 3A
	ldx #$C80E.w		; A2 0E C8
	eor $F2.b,S		; 43 F2
	brk $1F.b		; 00 1F
	ora $DF3F77.l		; 0F 77 3F DF
	brk $FF.b		; 00 FF
	ora $EF1FF7.l		; 0F F7 1F EF
	and $BF7FDF.l,X		; 3F DF 7F BF
	ora [$04.b]		; 07 04
	and $207F28.l,X		; 3F 28 7F 20
	sbc [$E6.b]		; E7 E6
	ora $507F18.l,X		; 1F 18 7F 50
	sbc $40FFA0.l,X		; FF A0 FF 40
	brk $FC.b		; 00 FC
	sed		; F8
	sbc [$FE.b],Y		; F7 FE
	sbc $FE1F.w,X		; FD 1F FE
	cmp $FBE7B7.l		; CF B7 E7 FB
	xce		; FB
	sbc $FEFD.w,X		; FD FD FE
	beq  48.b		; F0 30
	inc $FF0A.w,X		; FE 0A FF
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	pha		; 48
	sbc $02FF04.l,X		; FF 04 FF 02
	sbc $6EF001.l,X		; FF 01 F0 6E
	sei		; 78
	lda [$BC.b],Y		; B7 BC
	xce		; FB
	dec $FFFD.w,X		; DE FD FF
	inc $FFFF.w,X		; FE FF FF
	sbc $BF7F7F.l,X		; FF 7F 7F BF
	jsr ($FC94.w,X)		; FC 94 FC
	pha		; 48
	inc $FF04.w,X		; FE 04 FF
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$F03F.w		; C0 3F F0
	sta $00C3FC.l		; 8F FC C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	beq -48.b		; F0 D0
	sbc $3CFF73.l,X		; FF 73 FF 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	and $3F33.w,X		; 3D 33 3F
	tsa		; 3B
	ora $00001B.l,X		; 1F 1B 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	plp		; 28
	adc $3B7F31.l,X		; 7F 31 7F 3B
	adc $003F18.l,X		; 7F 18 3F 00
	ora $000F01.l,X		; 1F 01 0F 00
	tas		; 1B
	clc		; 18
	and $FD78.w,X		; 3D 78 FD
	beq  -8.b		; F0 F8
	cpy #$00E0.w		; C0 E0 00
	bra   0.b		; 80 00
	brk $0F.b		; 00 0F
	bpl   3.b		; 10 03
	bit $FE19.w,X		; 3C 19 FE
	adc ($FE.b),Y		; 71 FE
	cpx #$00FE.w		; E0 FE 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$04.b],Y		; 77 04
	and [$04.b],Y		; 37 04
	ora [$04.b],Y		; 17 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $7F.b,S		; 83 7F
	sty $7C.b		; 84 7C
	phb		; 8B
	sei		; 78
	sta [$70.b],Y		; 97 70
	ora [$F0.b],Y		; 17 F0
	tsb $013C.w		; 0C 3C 01
	ora $F40700.l,X		; 1F 00 07 F4
	cpx $AB.b		; E4 AB
	tay		; A8
	sta [$90.b],Y		; 97 90
	lda $202FA0.l		; AF A0 2F 20
	ora ($10.b,S),Y		; 13 10
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	.db $82, $FE, $A0		; 82 FE A0
	and $FC0EE8.l,X		; 3F E8 0E FC
	ora [$FE.b]		; 07 FE
	ora $3F.b,S		; 03 3F
	ora ($5F.b,X)		; 01 5F
	cpy #$0606.w		; C0 06 06
	eor $44.b		; 45 44
	cmp ($13.b,S),Y		; D3 13
	pea $FA04.w		; F4 04 FA
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	brk $BF.b		; 00 BF
	bra -72.b		; 80 B8
	stx $70.b		; 86 70
	php		; 08
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	ror $F806.w,X		; 7E 06 F8
	php		; 08
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	and $B6E0.w,Y		; 39 E0 B6
	rts		; 60

	sbc $30FB00.l,X		; FF 00 FB 30
	jsr ($BE38.w,X)		; FC 38 BE
	asl $1E3F.w,X		; 1E 3F 1E
	sbc $0EA01D.l,X		; FF 1D A0 0E
	jsr $000F.w		; 20 0F 00
	cpy #$B630.w		; C0 30 B6
	sec		; 38
	tsa		; 3B
	asl $1EDF.w,X		; 1E DF 1E
	cmp $001F1D.l,X		; DF 1D 1F 00
	brk $80.b		; 00 80
	tsb $04.b		; 04 04
	asl A		; 0A
	php		; 08
	ora [$10.b],Y		; 17 10
	and $405F20.l		; 2F 20 5F 40
	lda $007F80.l,X		; BF 80 7F 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $1C1C.w		; 0C 1C 1C
	bit $B4.b,X		; 34 B4
	pla		; 68
	pla		; 68
	cld		; D8
	tya		; 98
	cmp $7FB13F.l		; CF 3F B1 7F
	bit $FF.b		; 24 FF
	plp		; 28
	sbc $29F807.l,X		; FF 07 F8 29
	pei ($37.b)		; D4 37
	jmp.w [$E42B]		; DC 2B E4
	sbc $80FFE0.l,X		; FF E0 FF 80
	sbc [$00.b],Y		; F7 00
	cpx $C840.w		; EC 40 C8
	cpy #$86A0.w		; C0 A0 86
	bit $05.b		; 24 05
	ora $E004.w,Y		; 19 04 E0
	sbc $FF78.w,X		; FD 78 FF
	jmp $98FE.w		; 4C FE 98
	sbc $6AEF12.l,X		; FF 12 EF 6A
	eor [$F0.b]		; 47 F0
	lsr $3040.w		; 4E 40 30
	sed		; F8
	php		; 08
	ror $6C00.w,X		; 7E 00 6C
	brk $DE.b		; 00 DE
	brk $0A.b		; 00 0A
	jsr $1082.w		; 20 82 10
	stx $20.b		; 86 20
	bra   0.b		; 80 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	ora $04.b,S		; 03 04
	cop $0C.b		; 02 0C
	asl $18.b		; 06 18
	and $79.b,X		; 35 79
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	rol $00.b,X		; 36 00
	ldx $0BA1.w		; AE A1 0B
	bvc -112.b		; 50 90
	brk $98.b		; 00 98
	rti		; 40

	ora $8350.w		; 0D 50 83
	cpy $C201.w		; CC 01 C2
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	brk $F7.b		; 00 F7
	bra 111.b		; 80 6F
	cpy #$C067.w		; C0 67 C0
	adc ($00.b,S),Y		; 73 00
	bit $8E80.w,X		; 3C 80 8E
	brk $03.b		; 00 03
	ora $FC.b,S		; 03 FC
	brk $7F.b		; 00 7F
	trb $FFE3.w		; 1C E3 FF
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sta $3C0303.l,X		; 9F 03 03 3C
	bit $9DFF.w,X		; 3C FF 9D
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $FFFE60.l,X		; FF 60 FE FF
	sbc $DF3F3F.l,X		; FF 3F 3F DF
	ora $B3CFE7.l,X		; 1F E7 CF B3
	sbc [$D9.b]		; E7 D9
	sbc ($EE.b),Y		; F1 EE
	jsr ($FFF3.w,X)		; FC F3 FF
	brk $FF.b		; 00 FF
	cpy #$207F.w		; C0 7F 20
	sbc $6CFF58.l,X		; FF 58 FF 6C
	sbc $1BFF36.l,X		; FF 36 FF 1B
	sbc $CF3F0D.l,X		; FF 0D 3F CF
	ora $7887E1.l,X		; 1F E1 87 78
	cpy #$E0BF.w		; C0 BF E0
	cmp $F8EFF0.l,X		; DF F0 EF F8
	sbc [$FC.b],Y		; F7 FC
	xce		; FB
	sbc $5EFFB0.l,X		; FF B0 FF 5E
	sbc $58FFA7.l,X		; FF A7 FF 58
	sbc $15FD2E.l,X		; FF 2E FD 15
	inc $FF0A.w,X		; FE 0A FF
	ora $FF.b		; 05 FF
	beq  -1.b		; F0 FF
	jsr ($00FF.w,X)		; FC FF 00
	inc $3C01.w,X		; FE 01 3C
	cmp $00.b,S		; C3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF0FFF.l,X		; FF FF 0F FF
	ora $FF.b,S		; 03 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	bit $81FF.w,X		; 3C FF 81
	adc $18187F.l,X		; 7F 7F 18 18
	rti		; 40

	beq -128.b		; F0 80
	cpx #$C180.w		; E0 80 C1
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $C020.w		; 20 20 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $34.b,X		; 34 34
	bit $2C.b,X		; 34 2C
	bmi  56.b		; 30 38
	dey		; 88
	bvs -32.b		; 70 E0
	cpy #$80C0.w		; C0 C0 80
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bmi 126.b		; 30 7E
	jsr $307E.w		; 20 7E 30
	jmp ($F800.w,X)		; 7C 00 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	cpx #$7038.w		; E0 38 70
	clc		; 18
	bcs -116.b		; B0 8C
	cli		; 58
	cpy $2C.b		; C4 2C
	.db $62, $14, $32		; 62 14 32
	asl A		; 0A
	ora $0D04.w,Y		; 19 04 0D
	cpy #$E000.w		; C0 00 E0
	brk $78.b		; 00 78
	php		; 08
	bit $1C04.w,X		; 3C 04 1C
	brk $0E.b		; 00 0E
	cop $06.b		; 02 06
	brk $02.b		; 00 02
	brk $E0.b		; 00 E0
	tsb $0C38.w		; 0C 38 0C
	cld		; D8
	dec $5C.b		; C6 5C
	cmp [$5C.b]		; C7 5C
	cmp $2E.b,S		; C3 2E
	adc $17.b,S		; 63 17
	and ($0B.b),Y		; 31 0B
	clc		; 18
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bit $B804.w,X		; 3C 04 B8
	bra  62.b		; 80 3E
	cop $1C.b		; 02 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $A0.b		; 00 A0
	bcc  64.b		; 90 40
	cld		; D8
	php		; 08
	jmp ($7C08.w,X)		; 7C 08 7C
	tsb $3A.b		; 04 3A
	cop $19.b		; 02 19
	ora ($0C.b,X)		; 01 0C
	brk $0E.b		; 00 0E
	rts		; 60

	brk $20.b		; 00 20
	brk $08.b		; 00 08
	brk $38.b		; 00 38
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	php		; 08
	ora [$04.b]		; 07 04
	ora [$06.b]		; 07 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $0C.b		; 00 0C
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $0C.b,S		; 03 0C
	ora ($1E.b,X)		; 01 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $010109.l		; 0F 09 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	jsr $0090.w		; 20 90 00
	cld		; D8
	brk $FC.b		; 00 FC
	clc		; 18
	inc $1C.b		; E6 1C
	.db $62, $0C, $32		; 62 0C 32
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	cpx #$E080.w		; E0 80 E0
	cpy #$4048.w		; C0 48 40
	trb $3C18.w		; 1C 18 3C
	trb $0C1C.w		; 1C 1C 0C
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	sed		; F8
	cop $3E.b		; 02 3E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$30.b],Y		; 37 30
	ora $010C.w		; 0D 0C 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	clc		; 18
	cpx #$F00C.w		; E0 0C F0
	stx $38.b		; 86 38
	cmp $3C.b,S		; C3 3C
	adc ($07.b,X)		; 61 07
	adc ($1B.b,X)		; 61 1B
	sec		; 38
	phd		; 0B
	sec		; 38
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	jmp ($7E04.w,X)		; 7C 04 7E
	.db $42, $1F		; 42 1F
	ora ($3E.b,X)		; 01 3E
	jsr $0007.w		; 20 07 00
	ora [$10.b],Y		; 17 10
	cop $01.b		; 02 01
	phd		; 0B
	ora [$2F.b]		; 07 2F
	asl $7CBE.w,X		; 1E BE 7C
	pea $D8F8.w		; F4 F8 D8
	cpx #$0060.w		; E0 60 00
	brk $80.b		; 00 80
	brk $07.b		; 00 07
	cop $1F.b		; 02 1F
	tsb $FF.b		; 04 FF
	clc		; 18
	sbc $80FE60.l,X		; FF 60 FE 80
	jsr ($F000.w,X)		; FC 00 F0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	bra 112.b		; 80 70
	cpy #$E0B8.w		; C0 B8 E0
	jmp.w [$0000]		; DC 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	ldy #$80E0.w		; A0 E0 80
	beq  80.b		; F0 50
	sed		; F8
	plp		; 28
	ora $770FEF.l,X		; 1F EF 0F 77
	ora [$3B.b]		; 07 3B
	ora $1D.b,S		; 03 1D
	ora ($0E.b,X)		; 01 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	adc $283F50.l,X		; 7F 50 3F 28
	ora $0A0F14.l,X		; 1F 14 0F 0A
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	inc $FFF9.w,X		; FE F9 FF
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $8F7F3F.l,X		; FF 3F 7F 8F
	and $06FFC3.l,X		; 3F C3 FF 06
	sbc $01FF03.l,X		; FF 03 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $70FFC0.l,X		; FF C0 FF 70
	sbc $F00FBC.l,X		; FF BC 0F F0
	ora $7C.b,S		; 03 7C
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $233F4F.l,X		; 7F 4F 3F 23
	ora $060718.l,X		; 1F 18 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFFD.w,X		; FE FD FF
	asl $00FF.w,X		; 1E FF 00
	rol $00C1.w,X		; 3E C1 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $FF0700.l,X		; 7F 00 07 FF
	cop $FF.b		; 02 FF
	sbc ($FF.b,X)		; E1 FF
	sbc $FF3EFF.l,X		; FF FF 3E FF
	bra  63.b		; 80 3F
	and $000000.l,X		; 3F 00 00 00
	brk $10.b		; 00 10
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	cpy #$C080.w		; C0 80 C0
	brk $00.b		; 00 00
	lda $EE6EAF.l		; AF AF 6E EE
	brk $C0.b		; 00 C0
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	lda $7F44FF.l		; AF FF 44 7F
	bra -66.b		; 80 BE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$90F0.w		; E0 F0 90
	bne   0.b		; D0 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	ora $1E0F0E.l,X		; 1F 0E 0F 1E
	ora $1F0E1E.l		; 0F 1E 0E 1F
	tsb $0E1F.w		; 0C 1F 0E
	trb $1C08.w		; 1C 08 1C
	asl $0C1C.w		; 0E 1C 0C
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	ora $081F08.l,X		; 1F 08 1F 08
	ora $0F1F00.l,X		; 1F 00 1F 0F
	lsr $5E4F.w,X		; 5E 4F 5E
	eor ($41.b,X)		; 41 41
	sty $03DC.w		; 8C DC 03
	sbc $12F708.l,X		; FF 08 F7 12
	sbc $D926.w		; ED 26 D9
	asl $BE.b		; 06 BE
	lsr $BE.b		; 46 BE
	eor ($BF.b,X)		; 41 BF
	bra  63.b		; 80 3F
	bmi  19.b		; 30 13
	jmp ($DA28.w)		; 6C 28 DA
	eor ($B6.b)		; 52 B6
	ldx $00.b		; A6 00
	ora ($00.b,X)		; 01 00
	ora $001F00.l		; 0F 00 1F 00
	ora $001E00.l,X		; 1F 00 1E 00
	ora $1F06.w,X		; 1D 06 1F
	tsb $3E.b		; 04 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0D02.w		; 0E 02 0D
	tsb $0A.b		; 04 0A
	php		; 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	jmp ($38C6.w,X)		; 7C C6 38
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	.db $42, $1C		; 42 1C
	eor $1C.b,S		; 43 1C
	eor $38.b,S		; 43 38
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	cop $01.b		; 02 01
	asl $3907.w,X		; 1E 07 39
	ora $DF3F77.l		; 0F 77 3F DF
	adc $FB7CBC.l,X		; 7F BC 7C FB
	sed		; F8
	adc [$F7.b],Y		; 77 F7
	sbc $1F0507.l,X		; FF 07 05 1F
	asl $3F.b,X		; 16 3F
	plp		; 28
	adc $C3FF60.l,X		; 7F 60 FF C3
	sbc $88FF04.l,X		; FF 04 FF 88
	sbc $3FFF00.l,X		; FF 00 FF 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7E8100.l,X		; FF 00 81 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $CCCF81.l,X		; FF 81 CF CC
	xce		; FB
	tsa		; 3B
	sbc $FF85.w,X		; FD 85 FF
	asl $CFFF.w,X		; 1E FF CF
	sbc $7BFFF7.l,X		; FF F7 FF 7B
	sbc $9F7F3F.l,X		; FF 3F 7F 9F
	and $E71FCF.l,X		; 3F CF 1F E7
	sbc $30FFE1.l,X		; FF E1 FF 30
	sbc $84FF08.l,X		; FF 08 FF 84
	sbc $60FFC0.l,X		; FF C0 FF 60
	sbc $98FF30.l,X		; FF 30 FF 98
	brk $FF.b		; 00 FF
	bra 112.b		; 80 70
	cpy #$E0B1.w		; C0 B1 E0
	stp		; DB
	beq -24.b		; F0 E8
	sed		; F8
	sbc $FD.b,X		; F5 FD
	xce		; FB
	sbc $40C0FF.l,X		; FF FF C0 40
	sbc $5EFEAF.l		; EF AF FE 5E
	pea $F724.w		; F4 24 F7
	ora [$FA.b],Y		; 17 FA
	asl A		; 0A
	sbc $FF04.w,X		; FD 04 FF
	brk $01.b		; 00 01
	lsr $8D03.w		; 4E 03 8D
	ora [$1B.b]		; 07 1B
	ora $DE77FF.l		; 0F FF 77 DE
	pea $F0DB.w		; F4 DB F0
	sbc $EDF0.w		; ED F0 ED
	lda [$B1.b],Y		; B7 B1
	adc [$72.b],Y		; 77 72
	sbc $101FEC.l		; EF EC 1F 10
	adc $24FD21.l,X		; 7F 21 FD 24
	plx		; FA
	bpl -14.b		; 10 F2
	bpl -128.b		; 10 80
	ror $FAFC.w,X		; 7E FC FA
	inc $CD.b,X		; F6 CD
	stx $7C79.w		; 8E 79 7C
	sta $10.b,S		; 83 10
	cmp $DCC2F4.l		; CF F4 C2 DC
	ldy $F4.b		; A4 F4
	bra  -2.b		; 80 FE
	tsb $FE.b		; 04 FE
	and ($FE.b)		; 32 FE
	stx $8C.b		; 86 8C
	tsb $6008.w		; 0C 08 60
	pha		; 48
	bvc  72.b		; 50 48
	jsr $9860.w		; 20 60 98
	bne  12.b		; D0 0C
	jmp $CA02.w		; 4C 02 CA
	bra -54.b		; 80 CA
	dey		; 88
	dex		; CA
	php		; 08
	dex		; CA
	php		; 08
	ldy $00.b,X		; B4 00
	php		; 08
	bra   0.b		; 80 00
	ldy #$B000.w		; A0 00 B0
	brk $B4.b		; 00 B4
	php		; 08
	ldy $08.b,X		; B4 08
	ldy $08.b,X		; B4 08
	bit $00.b,X		; 34 00
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $2D.b		; 00 2D
	brk $1F.b		; 00 1F
	brk $6F.b		; 00 6F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	bpl  36.b		; 10 24
	jsr $1010.w		; 20 10 10
	rtl		; 6B

	cpx $E734.w		; EC 34 E7
	dec A		; 3A
	sbc $3D.b,S		; E3 3D
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $300730.l,X		; 1F 30 07 30
	ora $041418.l		; 0F 18 14 04
	phy		; 5A
	.db $42, $5D		; 42 5D
	eor ($1E.b,X)		; 41 1E
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	eor $B8.b,S		; 43 B8
	eor $06BC.w		; 4D BC 06
	inc $DF03.w,X		; FE 03 DF
	bra -57.b		; 80 C7
	bra -63.b		; 80 C1
	rti		; 40

	rts		; 60

	cpy #$6760.w		; C0 60 67
	rts		; 60

	eor $40.b,S		; 43 40
	ora $8418.w,Y		; 19 18 84
	sty $01.b		; 84 01
	ora ($40.b,X)		; 01 40
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bpl -24.b		; 10 E8
	stz $8E62.w		; 9C 62 8E
	adc ($93.b),Y		; 71 93
	jmp ($EC13.w)		; 6C 13 EC
	ora ($EE.b),Y		; 11 EE
	bcc 111.b		; 90 6F
	bne  47.b		; D0 2F
	bvs 112.b		; 70 70
	ldy $8EBC.w,X		; BC BC 8E
	stx $D3D7.w		; 8E D7 D3
	stp		; DB
	eor ($DD.b,S),Y		; 53 DD
	eor $5C.b,X		; 55 5C
	mvn $14,$1C		; 54 1C 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	cpx #$C018.w		; E0 18 C0
	jsr $E000.w		; 20 00 E0
	jsr $00B8.w		; 20 B8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$C0C0.w		; E0 C0 C0
	brk $00.b		; 00 00
	cpy #$0C80.w		; C0 80 0C
	asl $1E0E.w,X		; 1E 0E 1E
	asl $021E.w		; 0E 1E 02
	tsb $0000.w		; 0C 00 00
	tsb $0303.w		; 0C 03 03
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	tsx		; BA
	bit #$1376.w		; 89 76 13
	cpx $D827.w		; EC 27 D8
	eor #$8FB6.w		; 49 B6 8F
	bvs -97.b		; 70 9F
	rts		; 60

	sta $757E.w		; 8D 7E 75
	eor $ED.b,X		; 55 ED
	lda #$53DB.w		; A9 DB 53
	lda [$A7.b],Y		; B7 A7
	adc ($41.b),Y		; 71 41
	beq -112.b		; F0 90
	jsr $0220.w		; 20 20 02
	cop $38.b		; 02 38
	bit $7820.w,X		; 3C 20 78
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	adc $1E.b,S		; 63 1E
	adc $0C.b,S		; 63 0C
	and ($1C.b,X)		; 21 1C
	and ($0C.b),Y		; 31 0C
	and ($04.b),Y		; 31 04
	ora ($0C.b),Y		; 11 0C
	ora $0906.w,Y		; 19 06 09
	trb $3C00.w		; 1C 00 3C
	jsr $001E.w		; 20 1E 00
	asl $1E00.w		; 0E 00 1E
	bpl  14.b		; 10 0E
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	sbc $EDFEEE.l,X		; FF EE FE ED
	jsr ($F8FB.w,X)		; FC FB F8
	sbc [$F0.b],Y		; F7 F0
	inc $58E0.w		; EE E0 58
	rti		; 40

	beq  64.b		; F0 40
	bcs  -1.b		; B0 FF
	ora ($FF.b),Y		; 11 FF
	ora ($FF.b)		; 12 FF
	ora $FC.b		; 05 FC
	php		; 08
	sed		; F8
	bpl -16.b		; 10 F0
	ldy #$10F0.w		; A0 F0 10
	rts		; 60

	rts		; 60

	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	brk $3F.b		; 00 3F
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	inc $C03E.w,X		; FE 3E C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FC03F1.l		; 0F F1 03 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	sbc $637FCE.l,X		; FF CE 7F 63
	and $1C1F30.l,X		; 3F 30 1F 1C
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3EFFFF.l,X		; FF FF FF 3E
	sbc $C13E00.l,X		; FF 00 3E C1
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $C1FF00.l,X		; FF 00 FF C1
	sbc $3EFFFF.l,X		; FF FF FF 3E
	sbc $E0FF00.l,X		; FF 00 FF E0
	inc $00FE.w,X		; FE FE 00
	brk $F1.b		; 00 F1
	sta $801FE0.l		; 8F E0 1F 80
	adc $04FF00.l,X		; 7F 00 FF 04
	sbc $0B.b,X		; F5 0B
	dex		; CA
	and $D5.b,X		; 35 D5
	bvc -107.b		; 50 95
	sbc ($72.b)		; F2 72
	sbc $F8E1.w,Y		; F9 E1 F8
	dey		; 88
	sbc ($11.b),Y		; F1 11
	cpx $2E.b		; E4 2E
	iny		; C8
	inc $4F60.w,X		; FE 60 4F
	cpx #$788F.w		; E0 8F 78
	tsb $30.b		; 04 30
	php		; 08
	bvc -56.b		; 50 C8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	sed		; F8
	brk $F8.b		; 00 F8
	php		; 08
	bcs -128.b		; B0 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	bvs -96.b		; 70 A0
	sec		; 38
	bne  28.b		; D0 1C
	pla		; 68
	asl $83B8.w		; 0E B8 83
	jmp $F017C1.l		; 5C C1 17 F0
	ora $7C.b		; 05 7C
	ldy #$D020.w		; A0 20 D0
	bpl -24.b		; 10 E8
	php		; 08
	pea $7E04.w		; F4 04 7E
	cop $BF.b		; 02 BF
	sta ($2F.b,X)		; 81 2F
	jsr $181B.w		; 20 1B 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $F4.b		; 00 F4
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0080.w		; C0 80 00
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $001F06.l		; 0F 06 1F 00
	ora $0C.b,S		; 03 0C
	ora $0E1E.w		; 0D 1E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora ($1C.b,X)		; 01 1C
	brk $1E.b		; 00 1E
	php		; 08
	ora $50CE29.l,X		; 1F 29 CE 50
	stz $3FA0.w		; 9C A0 3F
	eor [$FF.b]		; 47 FF
	ora $DF0FFF.l		; 0F FF 0F DF
	ora $8F07D0.l		; 0F D0 07 8F
	stz $45.b,X		; 74 45
	inx		; E8
	phb		; 8B
	bne  23.b		; D0 17
	and $2F.b,S		; 23 2F
	sta [$1F.b]		; 87 1F
	asl $3F.b		; 06 3F
	bra -65.b		; 80 BF
	brk $7F.b		; 00 7F
	clc		; 18
	bit $08.b		; 24 08
	bit $00.b,X		; 34 00
	bit $3E04.w,X		; 3C 04 3E
	brk $3E.b		; 00 3E
	brk $32.b		; 00 32
	tsb $32.b		; 04 32
	tsb $183A.w		; 0C 3A 18
	brk $18.b		; 00 18
	bpl  16.b		; 10 10
	bpl  28.b		; 10 1C
	bpl   0.b		; 10 00
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	cop $06.b		; 02 06
	cop $00.b		; 02 00
	dec A		; 3A
	asl $3E.b		; 06 3E
	cop $3F.b		; 02 3F
	brk $3F.b		; 00 3F
	cop $17.b		; 02 17
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	asl $02.b,X		; 16 02
	clc		; 18
	brk $19.b		; 00 19
	ora ($15.b,X)		; 01 15
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $C0.b		; 00 C0
	bcs -128.b		; B0 80
	cpx #$6180.w		; E0 80 61
	bra  65.b		; 80 41
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$E040.w		; E0 40 E0
	jsr $C0C0.w		; 20 C0 C0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3FC1.w		; 1C C1 3F
	adc ($0F.b,X)		; 61 0F
	adc ($1E.b,X)		; 61 1E
	bmi   7.b		; 30 07
	bpl  15.b		; 10 0F
	clc		; 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	adc $001E41.l,X		; 7F 41 1E 00
	rol $0F20.w,X		; 3E 20 0F
	brk $1F.b		; 00 1F
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $00.b,S		; 03 00
	ora ($0F.b,X)		; 01 0F
	ora $9C.b		; 05 9C
	phd		; 0B
	sed		; F8
	ora $E7BCF1.l,X		; 1F F1 BC E7
	bcs  -4.b		; B0 FC
	brk $70.b		; 00 70
	cpy #$0660.w		; C0 60 06
	asl $0B.b		; 06 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ldx $1AA0.w		; AE A0 1A
	cop $08.b		; 02 08
	php		; 08
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	clc		; 18
	cpx #$B80C.w		; E0 0C B8
	stx $2C.b		; 86 2C
	inc $F8.b		; E6 F8
	asl $F0.b		; 06 F0
	trb $70C0.w		; 1C C0 70
	brk $C0.b		; 00 C0
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	jmp ($D804.w,X)		; 7C 04 D8
	cpy #$04FC.w		; C0 FC 04
	inx		; E8
	php		; 08
	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	asl $1F00.w		; 0E 00 1F
	brk $3F.b		; 00 3F
	ora $000070.l		; 0F 70 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $101F08.l		; 0F 08 1F 10
	and $7C002F.l,X		; 3F 2F 00 7C
	brk $FF.b		; 00 FF
	clc		; 18
	sbc [$7E.b]		; E7 7E
	sta ($FF.b,X)		; 81 FF
	jsr ($0FFF.w,X)		; FC FF 0F
	ora $03FFE7.l,X		; 1F E7 FF 03
	brk $00.b		; 00 00
	jmp ($FF44.w,X)		; 7C 44 FF
	sta $7EFF.w,Y		; 99 FF 7E
	sbc $F0FF03.l,X		; FF 03 FF F0
	sbc $FCFF18.l,X		; FF 18 FF FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	cpy #$E0B8.w		; C0 B8 E0
	jmp.w [$0000]		; DC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	ldy #$50F0.w		; A0 F0 50
	sed		; F8
	plp		; 28
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora [$1B.b]		; 07 1B
	ora $3F0F37.l		; 0F 37 0F 3F
	ora $7F1E6E.l,X		; 1F 6E 1E 7F
	and $02035D.l,X		; 3F 5D 03 02
	ora [$05.b]		; 07 05
	ora $181F0C.l		; 0F 0C 1F 18
	ora $313F00.l,X		; 1F 00 3F 31
	and $223F00.l,X		; 3F 00 3F 22
	and $5F3F5D.l,X		; 3F 5D 3F 5F
	ora $3D1E7E.l,X		; 1F 7E 1E 3D
	trb $082B.w		; 1C 2B 08
	rol $1608.w,X		; 3E 08 16
	php		; 08
	trb $3F.b		; 14 3F
	jsl $3F203F.l		; 22 3F 20 3F
	ora ($1F.b,X)		; 01 1F
	cop $1E.b		; 02 1E
	trb $1E.b		; 14 1E
	cop $0C.b		; 02 0C
	tsb $0808.w		; 0C 08 08
	eor $89FF.w		; 4D FF 89
	adc [$B4.b],Y		; 77 B4
	ora $B8.b,S		; 03 B8
	ora [$D0.b]		; 07 D0
	asl $1CF0.w		; 0E F0 1C
	bra  56.b		; 80 38
	cpy #$6F10.w		; C0 10 6F
	brk $05.b		; 00 05
	bpl  97.b		; 10 61
	php		; 08
	.db $62, $90, $64		; 62 90 64
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bvc -32.b		; 50 E0
	brk $78.b		; 00 78
	clv		; B8
	rti		; 40

	cpy #$7070.w		; C0 70 70
	jmp ($1878.w,X)		; 7C 78 18
	bit $1C0E.w,X		; 3C 0E 1C
	trb $1C1E.w		; 1C 1E 1C
	asl $7808.w,X		; 1E 08 78
	rti		; 40

	sei		; 78
	rti		; 40

	jsr ($7C30.w,X)		; FC 30 7C
	brk $7E.b		; 00 7E
	php		; 08
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $001F.w		; 0C 1F 00
	php		; 08
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $0D.b,S		; 03 0D
	asl $0B.b		; 06 0B
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora $5F340D.l		; 0F 0D 34 5F
	adc ($BC.b,S),Y		; 73 BC
	stz $CA.b		; 64 CA
	stp		; DB
	ror $E99A.w		; 6E 9A E9
	phb		; 8B
	sed		; F8
	ora $0AF4.w		; 0D F4 0A
	inc $B6.b,X		; F6 B6
	ldy #$4074.w		; A0 74 40
	bvs  35.b		; 70 23
	cmp ($82.b)		; D2 82
	dec $01.b,X		; D6 01
	sta [$00.b]		; 87 00
	ora $00.b,S		; 03 00
	cmp $C4.b		; C5 C4
	jsr $6300.w		; 20 00 63
	cpx #$E063.w		; E0 63 E0
	ror $E0.b		; 66 E0
	ldy $F170.w,X		; BC 70 F1
	brk $73.b		; 00 73
	jsr $315F.w		; 20 5F 31
	brk $DF.b		; 00 DF
	jsr $20FC.w		; 20 FC 20
	sbc $10F920.l,X		; FF 20 F9 10
	sbc [$00.b],Y		; F7 00
	inc $EC00.w		; EE 00 EC
	ora ($F1.b,X)		; 01 F1
	dey		; 88
	bra -24.b		; 80 E8
	bra   8.b		; 80 08
	bra -80.b		; 80 B0
	brk $98.b		; 00 98
	brk $C8.b		; 00 C8
	brk $D0.b		; 00 D0
	bra -32.b		; 80 E0
	cpy #$7480.w		; C0 80 74
	bra  16.b		; 80 10
	bra 112.b		; 80 70
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	bra -96.b		; 80 A0
	bra -64.b		; 80 C0
	dey		; 88
	adc [$88.b],Y		; 77 88
	adc [$09.b],Y		; 77 09
	inc $11.b,X		; F6 11
	inc $EE11.w		; EE 11 EE
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	rti		; 40

	cmp $EE88EE.l,X		; DF EE 88 EE
	dey		; 88
	sbc $DD09.w		; ED 09 DD
	ora ($DD.b),Y		; 11 DD
	ora ($1D.b),Y		; 11 1D
	ora ($9D.b),Y		; 11 9D
	sta ($A0.b),Y		; 91 A0
	bra -96.b		; 80 A0
	lsr $5AA4.w,X		; 5E A4 5A
	brk $FE.b		; 00 FE
	bpl -20.b		; 10 EC
	bpl -20.b		; 10 EC
	bpl -20.b		; 10 EC
	brk $FC.b		; 00 FC
	clc		; 18
	jsr ($A0B4.w,X)		; FC B4 A0
	ldy $A4.b,X		; B4 A4
	cld		; D8
	brk $D8.b		; 00 D8
	bpl -40.b		; 10 D8
	bpl -48.b		; 10 D0
	bpl -56.b		; 10 C8
	php		; 08
	jsr $3B20.w		; 20 20 3B
	tad		; 5B
	tsa		; 3B
	tad		; 5B
	ora $1E7D.w,X		; 1D 7D 1E
	rol $2A1F.w,X		; 3E 1F 2A
	ora $3E0B3A.l		; 0F 3A 0B 3E
	phd		; 0B
	asl $273B.w,X		; 1E 3B 27
	tsa		; 3B
	and [$3D.b]		; 27 3D
	ora $3E.b,S		; 03 3E
	and ($1F.b,X)		; 21 1F
	ora $1F.b,X		; 15 1F
	ora $1F.b		; 05 1F
	ora ($0F.b),Y		; 11 0F
	ora ($88.b,X)		; 01 88
	cmp [$C0.b],Y		; D7 C0
	cmp $01DE01.l,X		; DF 01 DE 01
	rol $FE01.w,X		; 3E 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $8EE8.w		; 0E E8 8E
	cpx #$F115.w		; E0 15 F1
	and $FDF9.w,Y		; 39 F9 FD
	adc $7CFC.w,X		; 7D FC 7C
	jsr ($FC6C.w,X)		; FC 6C FC
	bit $0601.w		; 2C 01 06
	ora ($07.b,X)		; 01 07
	ora $0D.b,S		; 03 0D
	cop $0E.b		; 02 0E
	asl $0A.b		; 06 0A
	asl $1E.b		; 06 1E
	ora $1D0D17.l		; 0F 17 0D 1D
	ora $03.b,S		; 03 03
	ora [$04.b]		; 07 04
	ora [$06.b]		; 07 06
	asl $0E09.w		; 0E 09 0E
	ora $010E.w		; 0D 0E 01
	ora $131D09.l		; 0F 09 1D 13
	phx		; DA
	lda $B4.b,S		; A3 B4
	cmp [$09.b]		; C7 09
	inc $DE20.w		; EE 20 DE
	bpl -18.b		; 10 EE
	cpy #$C0FE.w		; C0 FE C0
	sbc $DDEFC6.l		; EF C6 EF DD
	eor ($BA.b,X)		; 41 BA
	cop $54.b		; 02 54
	ora $E8.b		; 05 E8
	and #$1130.w		; 29 30 11
	bcc -63.b		; 90 C1
	bra -16.b		; 80 F0
	stx $F0.b		; 86 F0
	brk $3C.b		; 00 3C
	brk $C4.b		; 00 C4
	brk $FC.b		; 00 FC
	rts		; 60

	sbc $37FFFC.l,X		; FF FC FF 37
	sbc $89FF44.l,X		; FF 44 FF 89
	sbc $380000.l,X		; FF 00 00 38
	sec		; 38
	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $76.b		; 00 76
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $E000.w		; 20 00 E0
	bra -32.b		; 80 E0
	dec $F6.b		; C6 F6
	lda $0000F7.l		; AF F7 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$C000.w		; A0 00 C0
	brk $E6.b		; 00 E6
	asl $0FE1.w		; 0E E1 0F
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $F8.b		; 00 F8
	clc		; 18
	jsr ($0478.w,X)		; FC 78 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	and ($1E.b),Y		; 31 1E
	and ($0C.b),Y		; 31 0C
	and ($0C.b),Y		; 31 0C
	and ($0E.b),Y		; 31 0E
	and ($1E.b,S),Y		; 33 1E
	and ($18.b,S),Y		; 33 18
	adc ($30.b)		; 72 30
	adc ($0E.b)		; 72 0E
	brk $0F.b		; 00 0F
	ora ($1F.b,X)		; 01 1F
	ora ($1E.b),Y		; 11 1E
	bpl  28.b		; 10 1C
	bpl  44.b		; 10 2C
	jsr $222E.w		; 20 2E 22
	jmp $0040.w		; 4C 40 00
	bmi   0.b		; 30 00
	bvs -128.b		; 70 80
	bvs   0.b		; 70 00
	tda		; 7B
	sta $84FC.w		; 8D FC 84
	pea $C13C.w		; F4 3C C1
	iny		; C8
	ora ($C0.b,X)		; 01 C0
	brk $80.b		; 00 80
	bra -96.b		; 80 A0
	php		; 08
	bcs   4.b		; B0 04
	and ($2E.b,X)		; 21 2E
	ora ($0E.b,X)		; 01 0E
	ora ($37.b,X)		; 01 37
	brk $76.b		; 00 76
	ora $0F1E.w		; 0D 1E 0F
	asl $0F0E.w,X		; 1E 0E 0F
	asl $878F.w		; 0E 8F 87
	adc [$10.b],Y		; 77 10
	sec		; 38
	tsb $00FF.w		; 0C FF 00
	inc $1F0C.w,X		; FE 0C 1F
	tsb $0C1F.w		; 0C 1F 0C
	ora $961F0E.l,X		; 1F 0E 1F 96
	ora $DE07D8.l		; 0F D8 07 DE
	cpy #$000C.w		; C0 0C 00
	tsb $0817.w		; 0C 17 08
	and $312F10.l,X		; 3F 10 2F 31
	eor $609F63.l		; 4F 63 9F 60
	dec $48F6.w,X		; DE F6 48
	sbc $0FD1.w		; ED D1 0F
	asl A		; 0A
	ora $183E04.l,X		; 1F 04 3E 18
	adc $FB31.w,X		; 7D 31 FB
	sbc $F8.b,S		; E3 F8
	and ($F7.b,X)		; 21 F7
	bcs -18.b		; B0 EE
	jsr $E31D.w		; 20 1D E3
	plp		; 28
	bne -127.b		; D0 81
	jmp ($FF81.w,X)		; 7C 81 FF
	rti		; 40

	eor $7FA1AE.l,X		; 5F AE A1 7F
	rti		; 40

	adc ($40.b,X)		; 61 40
	.db $82, $02, $17		; 82 02 17
	ora ($7B.b,S),Y		; 13 7B
	pha		; 48
	trb $0E84.w		; 1C 84 0E
	sep #$00		; E2 00
	beq   0.b		; F0 00
	dec $DF00.w		; CE 00 DF
	and $B31F0F.l,X		; 3F 0F 1F B3
	ora $BE47FD.l,X		; 1F FD 47 BE
	lda $5F.b,S		; A3 5F
	and $DB.b		; 25 DB
	mvp $44,$BB		; 44 BB 44
	tyx		; BB
	ora $FF.b,S		; 03 FF
	ora ($7F.b,X)		; 01 7F
	tsb JOY4H.w		; 0C 1F 42
	eor [$B1.b]		; 47 B1
	lda $B4.b,S		; A3 B4
	and $76.b		; 25 76
	mvp $44,$76		; 44 76 44
	bra -64.b		; 80 C0
	cpx #$C080.w		; E0 80 C0
	bvc -64.b		; 50 C0
	beq -112.b		; F0 90
	inx		; E8
	bpl -24.b		; 10 E8
	tay		; A8
	mvn $54,$A8		; 54 A8 54
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$C090.w		; E0 90 C0
	bpl -112.b		; 10 90
	clc		; 18
	bpl -88.b		; 10 A8
	tay		; A8
	ldy $40A8.w		; AC A8 40
	cmp [$3C.b]		; C7 3C
	sta [$38.b]		; 87 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	.db $82, $38, $82		; 82 38 82
	sec		; 38
	.db $82, $3C, $86		; 82 3C 86
	ldy $FA84.w,X		; BC 84 FA
	.db $82, $FE, $82		; 82 FE 82
	inc $FE82.w,X		; FE 82 FE
	.db $82, $FC, $80		; 82 FC 80
	jmp ($7800.w,X)		; 7C 00 78
	brk $70.b		; 00 70
	dec $B4.b		; C6 B4
	stx $F8.b		; 86 F8
	.db $82, $F8, $82		; 82 F8 82
	rol $7C82.w,X		; 3E 82 7C
	cmp ($1C.b,X)		; C1 1C
	cmp ($3E.b,X)		; C1 3E
	adc ($BC.b,X)		; 61 BC
	sty $78.b		; 84 78
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	cop $FC.b		; 02 FC
	bra  62.b		; 80 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ora $170B01.l,X		; 1F 01 0B 17
	ora ($1F.b,X)		; 01 1F
	ora ($1F.b,X)		; 01 1F
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	phd		; 0B
	cop $09.b		; 02 09
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra 127.b		; 80 7F
	bra 109.b		; 80 6D
	bra -19.b		; 80 ED
	cpy #$60B5.w		; C0 B5 60
	cmp ($20.b),Y		; D1 20
	sed		; F8
	php		; 08
	bit $00.b,X		; 34 00
	brk $FC.b		; 00 FC
	ldy $EC.b		; A4 EC
	ldy $EC.b		; A4 EC
	tsb $F4.b		; 04 F4
	bvc -16.b		; 50 F0
	ldy #$0838.w		; A0 38 08
	trb $001C.w		; 1C 1C 00
	brk $0D.b		; 00 0D
	and $2D1D.w,X		; 3D 1D 2D
	ora $3B1B2F.l,X		; 1F 2F 1B 3B
	tas		; 1B
	tda		; 7B
	inc A		; 1A
	tda		; 7B
	dec A		; 3A
	tad		; 5B
	tsa		; 3B
	tad		; 5B
	ora $1D03.w,X		; 1D 03 1D
	ora ($3E.b,S),Y		; 13 3E
	and ($3A.b,S),Y		; 33 3A
	and [$3A.b]		; 27 3A
	ora [$38.b]		; 07 38
	ora [$38.b]		; 07 38
	and [$3B.b]		; 27 3B
	and [$8C.b]		; 27 8C
	cmp $02FF98.l,X		; DF 98 FF 02
	lda $8CFF06.l,X		; BF 06 FF 8C
	adc $027E19.l,X		; 7F 19 7E 02
	adc $BB04.w,X		; 7D 04 BB
	asl $1DE0.w		; 0E E0 1D
	cpy #$C00B.w		; C0 0B C0
	ora [$80.b]		; 07 80
	asl $1D80.w		; 0E 80 1D
	sta ($0B.b,X)		; 81 0B
	.db $82, $07, $C4		; 82 07 C4
	brk $68.b		; 00 68
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	bpl  52.b		; 10 34
	trb $36.b		; 14 36
	php		; 08
	tas		; 1B
	brk $1D.b		; 00 1D
	clc		; 18
	php		; 08
	jsr $1800.w		; 20 00 18
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	tas		; 1B
	tsb $081E.w		; 0C 1E 08
	rol $3C10.w,X		; 3E 10 3C
	bpl  60.b		; 10 3C
	brk $58.b		; 00 58
	jsr $3048.w		; 20 48 30
	tya		; 98
	tsb $00.b		; 04 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	clc		; 18
	php		; 08
	clc		; 18
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	rol $00.b,X		; 36 00
	tsa		; 3B
	bpl  45.b		; 10 2D
	clc		; 18
	and [$00.b]		; 27 00
	and $000003.l,X		; 3F 03 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $1A.b		; 00 1A
	bpl  28.b		; 10 1C
	clc		; 18
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C31.w,X		; 1D 31 0C
	and ($1A.b,X)		; 21 1A
	and $38.b,S		; 23 38
	jsl $304614.l		; 22 14 46 30
	mvp $4C,$28		; 44 28 4C
	brk $C8.b		; 00 C8
	asl $1F00.w		; 0E 00 1F
	ora ($3C.b,X)		; 01 3C
	jsr $021E.w		; 20 1E 02
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $70.b		; 04 70
	rti		; 40

	sei		; 78
	pha		; 48
	bvs -60.b		; 70 C4
	bmi -60.b		; 30 C4
	sec		; 38
	jmp.w [$4C3C]		; DC 3C 4C
	bit $3844.w,X		; 3C 44 38
	.db $42, $38		; 42 38
	.db $42, $3C		; 42 3C
	.db $42, $38		; 42 38
	brk $78.b		; 00 78
	rti		; 40

	stz $44.b		; 64 44
	bvs  64.b		; 70 40
	sei		; 78
	rti		; 40

	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	bit $0600.w,X		; 3C 00 06
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b)		; 12 0C
	jsl $20220C.l		; 22 0C 22 20
	lsr $5E38.w,X		; 5E 38 5E
	clc		; 18
	ror $3C00.w,X		; 7E 00 3C
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $20.b		; 00 20
	jsr $2038.w		; 20 38 20
	sec		; 38
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sty $78.b		; 84 78
	cpy $3C.b		; C4 3C
	mvp $40,$18		; 44 18 40
	sec		; 38
	.db $62, $0C, $22		; 62 0C 22
	trb $32.b		; 14 32
	tsb $7C3A.w		; 0C 3A 7C
	tsb $3C.b		; 04 3C
	tsb $78.b		; 04 78
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $3C.b		; 00 3C
	jsr $000C.w		; 20 0C 00
	asl $12.b,X		; 16 12
	plp		; 28
	rtl		; 6B

	clc		; 18
	eor $74.b,S		; 43 74
	dec $30.b		; C6 30
	sty $E8.b		; 84 E8
	sty $0860.w		; 8C 60 08
	bne  24.b		; D0 18
	cpy #$1610.w		; C0 10 16
	cop $7E.b		; 02 7E
	.db $42, $38		; 42 38
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora $001100.l,X		; 1F 00 11 00
	ora ($01.b,S),Y		; 13 01
	and [$01.b],Y		; 37 01
	eor [$02.b],Y		; 57 02
	sta $0B06.w		; 8D 06 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C0E.w		; 0E 0E 0C
	tsb $0809.w		; 0C 09 08
	pld		; 2B
	plp		; 28
	adc [$72.b],Y		; 77 72
	inc $F4.b,X		; F6 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	rol $1CC2.w,X		; 3E C2 1C
	rti		; 40

	bit $0E61.w,X		; 3C 61 0E
	and ($1E.b,X)		; 21 1E
	and ($07.b),Y		; 31 07
	and ($06.b),Y		; 31 06
	bpl  14.b		; 10 0E
	clc		; 18
	jmp ($3E40.w,X)		; 7C 40 3E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $010F.w		; 20 0F 01
	asl $0F10.w,X		; 1E 10 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	php		; 08
	brk $10.b		; 00 10
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	ora $06060F.l		; 0F 0F 06 06
	brk $F4.b		; 00 F4
	brk $1F.b		; 00 1F
	asl $3F.b		; 06 3F
	ora $7F137F.l,X		; 1F 7F 13 7F
	bit $DF.b		; 24 DF
	pla		; 68
	lda $0378E7.l,X		; BF E7 78 03
	ora $E0.b,S		; 03 E0
	cpx #$C0CF.w		; E0 CF C0
	sta $80BF80.l,X		; 9F 80 BF 80
	adc [$20.b],Y		; 77 20
	jmp ($E840.w)		; 6C 40 E8
	bra   3.b		; 80 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$07.b]		; 07 07
	phd		; 0B
	ora [$0B.b]		; 07 0B
	ora [$0A.b]		; 07 0A
	asl $0B.b		; 06 0B
	cop $07.b		; 02 07
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	cpx $DCDF.w		; EC DF DC
	plb		; AB
	tya		; 98
	sbc $387F98.l,X		; FF 98 7F 38
	cmp [$38.b],Y		; D7 38
	sbc [$70.b],Y		; F7 70
	lda $FFAF70.l,X		; BF 70 AF FF
	and $FE.b,S		; 23 FE
	lsr $FF.b,X		; 56 FF
	and $FF.b,S		; 23 FF
	cmp $FF.b,S		; C3 FF
	rtl		; 6B

	inc $FF8C.w,X		; FE 8C FF
	cmp $FF.b		; C5 FF
	cmp $6E.b,X		; D5 6E
	sbc $10F7C4.l		; EF C4 F7 10
	sed		; F8
	jsl $FB44FD.l		; 22 FD 44 FB
	dey		; 88
	sbc [$11.b],Y		; F7 11
	inc $DD22.w		; EE 22 DD
	stz $1F.b		; 64 1F
	cpx #$580F.w		; E0 0F 58
	ora [$B3.b]		; 07 B3
	.db $82, $66, $04		; 82 66 04
	dec $1D08.w		; CE 08 1D
	ora ($3B.b),Y		; 11 3B
	jsl $0EBB1F.l		; 22 1F BB 0E
	ora $4ABF44.l,X		; 1F 44 BF 4A
	lda $8A.b,X		; B5 8A
	adc $92.b,X		; 75 92
	adc $ED12.w		; 6D 12 ED
	jsl $FF0ADD.l		; 22 DD 0A FF
	tsb $FE.b		; 04 FE
	rts		; 60

	mvp $4A,$6A		; 44 6A 4A
	xba		; EB
	txa		; 8A
	stp		; DB
	sta ($DB.b)		; 92 DB
	ora ($BB.b)		; 12 BB
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$03.b]		; 07 03
	ora $040F06.l		; 0F 06 0F 04
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $3D.b		; 00 3D
	tda		; 7B
	tad		; 5B
	sbc ($B0.b,S),Y		; F3 B0
	dec $F902.w		; CE 02 F9
	sta [$F1.b]		; 87 F1
	asl $1CE3.w		; 0E E3 1C
	cmp [$08.b]		; C7 08
	sbc $7A053D.l		; EF 3D 05 7A
	ora $FE39F8.l		; 0F F8 39 FE
	clc		; 18
	inc $DD20.w		; EE 20 DD
	eor ($BA.b,X)		; 41 BA
	.db $82, $14, $04		; 82 14 04
	sta ($BE.b,X)		; 81 BE
	rti		; 40

	lsr $AF80.w,X		; 5E 80 AF
	asl $1841.w,X		; 1E 41 18
	bra  48.b		; 80 30
	ldy #$6071.w		; A0 71 60
	and ($60.b),Y		; 31 60
	ora $0DC4.w,X		; 1D C4 0D
	cpx #$F006.w		; E0 06 F0
	brk $E0.b		; 00 E0
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	jsr $20EE.w		; 20 EE 20
	sbc $C23EC2.l		; EF C2 3E C2
	rol $7E02.w,X		; 3E 02 7E
	stz $E462.w,X		; 9E 62 E4
	ora ($44.b,X)		; 01 44
	.db $42, $F4		; 42 F4
	rti		; 40

	sty $40.b		; 84 40
	cld		; D8
	phd		; 0B
	plx		; FA
	phd		; 0B
	lda ($13.b)		; B2 13
	ldy #$0023.w		; A0 23 00
	tyx		; BB
	rti		; 40

	tyx		; BB
	rti		; 40

	asl A		; 0A
	rti		; 40

	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $E9.b		; 00 E9
	brk $3F.b		; 00 3F
	tsb $3F7F.w		; 0C 7F 3F
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $C0.b		; 06 C0
	cpy #$809F.w		; C0 9F 80
	and $610C00.l,X		; 3F 00 0C 61
	dec A		; 3A
	adc $18.b,S		; 63 18
	.db $42, $1C		; 42 1C
	dec $70.b		; C6 70
	cpy $70.b		; C4 70
	cpy $38.b		; C4 38
	sty $8830.w		; 8C 30 88
	rol $1C20.w,X		; 3E 20 1C
	brk $7E.b		; 00 7E
	.db $42, $78		; 42 78
	rti		; 40

	bit $3804.w,X		; 3C 04 38
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	dey		; 88
	asl $0C21.w		; 0E 21 0C
	and ($1E.b,X)		; 21 1E
	and $18.b,S		; 23 18
	.db $62, $3C, $66		; 62 3C 66
	bpl -58.b		; 10 C6
	pla		; 68
	cpx $9CD0.w		; EC D0 9C
	ora $001E01.l,X		; 1F 01 1E 00
	trb $3E00.w		; 1C 00 3E
	jsl $7C021A.l		; 22 1A 02 7C
	mvp $80,$90		; 44 90 80
	pla		; 68
	php		; 08
	brk $16.b		; 00 16
	tsb $12.b		; 04 12
	tsb $12.b		; 04 12
	tsb $0C22.w		; 0C 22 0C
	jsl $20220C.l		; 22 0C 22 20
	lsr $5E38.w,X		; 5E 38 5E
	php		; 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $20.b		; 00 20
	jsr $2038.w		; 20 38 20
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	rti		; 40

	bcs  64.b		; B0 40
	bcs  64.b		; B0 40
	clv		; B8
	jsr $00D8.w		; 20 D8 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra  96.b		; 80 60
	rti		; 40

	rts		; 60

	rti		; 40

	bvs  64.b		; 70 40
	bcs  32.b		; B0 20
	jsr $00DC.w		; 20 DC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $90.b		; 00 90
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	rts		; 60

	tsb $0C78.w		; 0C 78 0C
	clv		; B8
	jsr $0080.w		; 20 80 00
	rts		; 60

	rts		; 60

	beq -112.b		; F0 90
	beq  16.b		; F0 10
	cpx #$F800.w		; E0 00 F8
	php		; 08
	beq   0.b		; F0 00
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	ora $0F.b,S		; 03 0F
	ora [$0B.b]		; 07 0B
	asl $0C17.w		; 0E 17 0C
	and $387F18.l,X		; 3F 18 7F 38
	sbc $00.b,X		; F5 00
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	brk $0F.b		; 00 0F
	tsb $1F.b		; 04 1F
	clc		; 18
	ora $003C01.l,X		; 1F 01 3C 00
	sei		; 78
	lsr A		; 4A
	cmp #$B794.w		; C9 94 B7
	jmp.w [$52B5]		; DC B5 52
	ora [$F0.b],Y		; 17 F0
	asl A		; 0A
	sbc $EC05.w,Y		; F9 05 EC
	cop $E6.b		; 02 E6
	brk $F1.b		; 00 F1
	cpx #$A446.w		; E0 46 A4
	ora $EC.b		; 05 EC
	rep #$CF		; C2 CF
	rti		; 40

	stx $90.b,Y		; 96 90
	tas		; 1B
	clc		; 18
	cmp $EECC.w,X		; DD CC EE
	rol $02.b		; 26 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	plb		; AB
	stz $AB.b,X		; 74 AB
	inc $3D.b		; E6 3D
	inc $3D.b		; E6 3D
	adc [$BA.b]		; 67 BA
	adc [$BA.b]		; 67 BA
	adc $BF.b,S		; 63 BF
	and $FF.b,S		; 23 FF
	sbc $5DFF5D.l,X		; FF 5D FF 5D
	sbc $CAFFCA.l,X		; FF CA FF CA
	sbc $55F74D.l,X		; FF 4D F7 55
	adc [$50.b],Y		; 77 50
	adc [$14.b],Y		; 77 14
	.db $42, $BD		; 42 BD
	tsb $FB.b		; 04 FB
	tsb $FB.b		; 04 FB
	php		; 08
	sbc $01FF0F.l,X		; FF 0F FF 01
	sbc ($80.b),Y		; F1 80
	bvs -122.b		; 70 86
	bvs  -5.b		; 70 FB
.ACCU 16
.INDEX 16
	rep #$B7		; C2 B7
	sty $87.b		; 84 87
	sty $80.b		; 84 80
	bra -64.b		; 80 C0
	rti		; 40

	dec $CF40.w		; CE 40 CF
	bra -33.b		; 80 DF
	bcc  34.b		; 90 22
	cmp $BB44.w,X		; DD 44 BB
	mvp $84,$BB		; 44 BB 84
	tda		; 7B
	brk $FE.b		; 00 FE
	sta ($FF.b,X)		; 81 FF
	sta ($E7.b,X)		; 81 E7
	sta ($E7.b,X)		; 81 E7
	tyx		; BB
	jsl $774477.l		; 22 77 44 77
	mvp $84,$F4		; 44 F4 84
	and ($00.b),Y		; 31 00
	.db $42, $42		; 42 42
	.db $42, $42		; 42 42
	.db $42, $42		; 42 42
	tsb $0D1F.w		; 0C 1F 0D
	and $1C2F1C.l,X		; 3F 1C 2F 1C
	ror $5E3C.w,X		; 7E 3C 5E
	rol $3F7F.w,X		; 3E 7F 3F
	inc $BC7F.w,X		; FE 7F BC
	asl $1D00.w		; 0E 00 1D
	brk $1D.b		; 00 1D
	bpl  60.b		; 10 3C
	ora ($3E.b,X)		; 01 3E
	and $3F.b,S		; 23 3F
	ora ($7F.b,X)		; 01 7F
	ora ($7F.b,X)		; 01 7F
	eor $C0.b,S		; 43 C0
	lda $608F20.l,X		; BF 20 8F 60
	adc [$F0.b],Y		; 77 F0
	xce		; FB
	sed		; F8
	sbc $7F3E.w,X		; FD 3E 7F
	ora $E3039F.l		; 0F 9F 03 E3
	nop		; EA
	pha		; 48
	stx $70.b		; 86 70
	eor $F8.b		; 45 F8
	sbc ($FC.b,X)		; E1 FC
	adc ($FE.b),Y		; 71 FE
	clc		; 18
	sbc $E1FF87.l,X		; FF 87 FF E1
	sbc $5E6033.l,X		; FF 33 60 5E
	bcs  56.b		; B0 38
	bra -119.b		; 80 89
	tya		; 98
	sta $1F8F98.l		; 8F 98 8F 1F
	sbc $F4E3E7.l		; EF E7 E3 F4
	brk $EC.b		; 00 EC
	brk $73.b		; 00 73
	brk $7F.b		; 00 7F
	bra 126.b		; 80 7E
	bra 120.b		; 80 78
	ora [$FF.b]		; 07 FF
	sbc ($FF.b,X)		; E1 FF
	cpy #$5CFF.w		; C0 FF 5C
	brk $4C.b		; 00 4C
	brk $E4.b		; 00 E4
	brk $E8.b		; 00 E8
	rti		; 40

	beq -32.b		; F0 E0
	cpy #$E0C0.w		; C0 C0 E0
	cpy #$A0E0.w		; C0 E0 A0
	brk $B0.b		; 00 B0
	brk $B8.b		; 00 B8
	brk $18.b		; 00 18
	rti		; 40

	bvc -64.b		; 50 C0
	cpx #$E080.w		; E0 80 E0
	bra -32.b		; 80 E0
	jsr $23E0.w		; 20 E0 23
	eor [$23.b],Y		; 57 23
	lsr $02.b,X		; 56 02
	and ($00.b,X)		; 21 00
	and $00.b,S		; 23 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	jsr $2123.w		; 20 23 21
	and $02.b,S		; 23 02
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $70.b		; 86 70
	asl $1EF0.w,X		; 1E F0 1E
	beq  14.b		; F0 0E
	ldy #$211F.w		; A0 1F 21
	asl $3C21.w,X		; 1E 21 3C
	and ($3E.b,X)		; 21 3E
	adc $DF.b,S		; 63 DF
	bcc -113.b		; 90 8F
	brk $8F.b		; 00 8F
	bra  31.b		; 80 1F
	brk $3E.b		; 00 3E
	jsr $213F.w		; 20 3F 21
	ora $001C01.l,X		; 1F 01 1C 00
	sta ($C3.b,X)		; 81 C3
	brk $C3.b		; 00 C3
	brk $C1.b		; 00 C1
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   4.b		; 70 04
	sei		; 78
	tsb $BC.b		; 04 BC
	stx $38.b		; 86 38
	.db $82, $5C, $C2		; 82 5C C2
	asl $2CC2.w,X		; 1E C2 2C
	adc ($0E.b,X)		; 61 0E
	adc ($F8.b,X)		; 61 F8
	brk $FC.b		; 00 FC
	tsb $78.b		; 04 78
	brk $FC.b		; 00 FC
	bra  62.b		; 80 3E
	cop $7C.b		; 02 7C
	rti		; 40

	asl $3E00.w,X		; 1E 00 3E
	jsr $331E.w		; 20 1E 33
	clc		; 18
	and ($0C.b,S),Y		; 33 0C
	rol $00.b		; 26 00
	rol $08.b		; 26 08
	bit $3C10.w		; 2C 10 3C
	jsr $0078.w		; 20 78 00
	sei		; 78
	tsb $0E00.w		; 0C 00 0E
	cop $18.b		; 02 18
	brk $1C.b		; 00 1C
	tsb $30.b		; 04 30
	jsr $0808.w		; 20 08 08
	jsr $3000.w		; 20 00 30
	brk $2C.b		; 00 2C
	.db $62, $0C, $62		; 62 0C 62
	asl $0C33.w,X		; 1E 33 0C
	and ($1C.b),Y		; 31 1C
	and ($0C.b),Y		; 31 0C
	adc ($2E.b,X)		; 61 2E
	adc $18.b,S		; 63 18
	cmp $1E.b,S		; C3 1E
	cop $3E.b		; 02 3E
	jsl $1E000C.l		; 22 0C 00 1E
	bpl  15.b		; 10 0F
	ora ($3F.b,X)		; 01 3F
	and ($1C.b,X)		; 21 1C
	brk $7E.b		; 00 7E
	.db $42, $0D		; 42 0D
	and $331A.w,X		; 3D 1A 33
	rol $1863.w		; 2E 63 18
	eor $1C.b,S		; 43 1C
	lsr $70.b		; 46 70
	dec $38.b		; C6 38
	sty $8C20.w		; 8C 20 8C
	ora ($10.b)		; 12 10
	and $1C21.w		; 2D 21 1C
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	rti		; 40

	bit $7004.w,X		; 3C 04 70
	brk $F8.b		; 00 F8
	dey		; 88
	brk $3E.b		; 00 3E
	clc		; 18
	rol $3210.w,X		; 3E 10 32
	cop $3B.b		; 02 3B
	ora ($2D.b),Y		; 11 2D
	clc		; 18
	and [$00.b]		; 27 00
	and $040003.l,X		; 3F 03 00 04
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $1A.b		; 00 1A
	bpl  28.b		; 10 1C
	clc		; 18
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($10.b),Y		; 11 10
	and $0C2F1C.l		; 2F 1C 2F 0C
	and $001E00.l,X		; 3F 00 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	jmp ($EC2C.w)		; 6C 2C EC
	sty $D85C.w		; 8C 5C D8
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	jsr $24FC.w		; 20 FC 24
	jsr ($FC0C.w,X)		; FC 0C FC
	php		; 08
	jsr ($F800.w,X)		; FC 00 F8
	brk $00.b		; 00 00
	cpy #$81E1.w		; C0 E1 81
	sbc $4A87B2.l,X		; FF B2 87 4A
	eor $00FE01.l		; 4F 01 FE 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra  -7.b		; 80 F9
	sed		; F8
	inc $3685.w,X		; FE 85 36
	sta $0E.b		; 85 0E
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F8.b,X		; 16 F8
	ror $FFFF.w,X		; 7E FF FF
	sbc $08FCF2.l,X		; FF F2 FC 08
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	adc $7EFF38.l,X		; 7F 38 FF 7E
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $6000.w,X		; FE 00 60
	brk $00.b		; 00 00
	tsb $11.b		; 04 11
	tsb $31.b		; 04 31
	asl $32.b		; 06 32
	tsb $32.b		; 04 32
	brk $32.b		; 00 32
	tsb $34.b		; 04 34
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	asl $1E10.w,X		; 1E 10 1E
	bpl  28.b		; 10 1C
	bpl  30.b		; 10 1E
	ora ($1C.b)		; 12 1C
	bpl  24.b		; 10 18
	bpl  20.b		; 10 14
	trb $18.b		; 14 18
	clc		; 18
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $FA.b		; 00 FA
	cpy #$78FE.w		; C0 FE 78
	inc $FF4C.w,X		; FE 4C FF
	txs		; 9A
	sbc $00EF12.l,X		; FF 12 EF 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $0A.b		; 00 0A
	jsr $0668.w		; 20 68 06
	bvs  14.b		; 70 0E
	ldy #$E01C.w		; A0 1C E0
	sec		; 38
	jsr $20C0.w		; 20 C0 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	beq -62.b		; F0 C2
	bpl -60.b		; 10 C4
	jsr $00C8.w		; 20 C8 00
	cpy #$2000.w		; C0 00 20
	brk $E0.b		; 00 E0
	cpy #$00C0.w		; C0 C0 00
	rts		; 60

	plp		; 28
	brk $C0.b		; 00 C0
	cpy #$40E1.w		; C0 E1 40
	sbc ($80.b,X)		; E1 80
	eor $01.b,S		; 43 01
	sta $01.b,S		; 83 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	brk $C0.b		; 00 C0
	brk $41.b		; 00 41
	ora ($81.b,X)		; 01 81
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $70.b		; 02 70
	cpy $78.b		; C4 78
	cpy $CCB8.w		; CC B8 CC
	ldy #$5088.w		; A0 88 50
	clc		; 18
	rti		; 40

	clc		; 18
	cpy #$C010.w		; C0 10 C0
	bmi  60.b		; 30 3C
	tsb $B0.b		; 04 B0
	bra 112.b		; 80 70
	rti		; 40

	sei		; 78
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	jsr $F115.w		; 20 15 F1
	ora $2DE1.w		; 0D E1 2D
	sbc ($2D.b,X)		; E1 2D
	adc ($1D.b,X)		; 61 1D
	eor ($1C.b,X)		; 41 1C
	eor ($1E.b,X)		; 41 1E
	eor $1E.b,S		; 43 1E
	eor $AE.b,S		; 43 AE
	ldy #$A0BE.w		; A0 BE A0
	asl $1E00.w,X		; 1E 00 1E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	ora ($3D.b,X)		; 01 3D
	ora ($3C.b,X)		; 01 3C
	brk $00.b		; 00 00
	cld		; D8
	ora [$D0.b]		; 07 D0
	ora $980798.l		; 0F 98 07 98
	ora $88.b,S		; 03 88
	ora [$8C.b]		; 07 8C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	sta $808F88.l		; 8F 88 8F 80
	sta [$80.b]		; 87 80
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0D.b		; 00 0D
	brk $15.b		; 00 15
	brk $23.b		; 00 23
	brk $13.b		; 00 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	asl A		; 0A
	asl A		; 0A
	ora $0D1C.w,X		; 1D 1C 0D
	tsb $0C00.w		; 0C 00 0C
	brk $D2.b		; 00 D2
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $4DFF7F.l,X		; FF 7F FF 4D
	sbc $A2FF91.l,X		; FF 91 FF A2
	sbc $0C0000.l,X		; FF 00 00 0C
	tsb $8080.w		; 0C 80 80
	rol $7F00.w,X		; 3E 00 7F
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $B3.b		; 00 B3
	brk $1F.b		; 00 1F
	and $3F7F1F.l		; 2F 1F 7F 3F
	eor $7F7E3F.l,X		; 5F 3F 7E 7F
	ldx $BD7E.w,Y		; BE 7E BD
	ror $7CBD.w,X		; 7E BD 7C
	lda $3F303F.l,X		; BF 3F 30 3F
	brk $3F.b		; 00 3F
	jsr $417F.w		; 20 7F 41
	adc $427F41.l,X		; 7F 41 7F 42
	adc $407E43.l,X		; 7F 43 7E 40
	cpx #$C2DE.w		; E0 DE C2
	lda $0D7F86.l,X		; BF 86 7F 0D
	inc $FD0A.w,X		; FE 0A FD
	tsb $FB.b		; 04 FB
	dey		; 88
	adc [$91.b],Y		; 77 91
	ror $39FA.w		; 6E FA 39
	inc $50.b,X		; F6 50
	inc $DDA0.w		; EE A0 DD
	eor ($EB.b,X)		; 41 EB
	jsl $EE24E7.l		; 22 E7 24 EE
	tay		; A8
	cmp $7F91.w,X		; DD 91 7F
	cmp $3BEF7F.l,X		; DF 7F EF 3B
	sbc [$0C.b],Y		; F7 0C
	sbc $48DF23.l,X		; FF 23 DF 48
	lda [$92.b],Y		; B7 92
	adc $ED12.w		; 6D 12 ED
	ora $7F27FF.l		; 0F FF 27 7F
	ora ($3F.b)		; 12 3F
	sty $A30F.w		; 8C 0F A3
	and $68.b,S		; 23 68
	pha		; 48
	phx		; DA
	sta ($DA.b)		; 92 DA
	ora ($00.b)		; 12 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	rti		; 40

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	ldy #$A050.w		; A0 50 A0
	cli		; 58
	bcc 108.b		; 90 6C
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ldy #$B0A0.w		; A0 A0 B0
	ldy #$90D8.w		; A0 D8 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $F040.w		; 20 40 F0
	rts		; 60

	sed		; F8
	bne 120.b		; D0 78
	cpy #$78B8.w		; C0 B8 78
	ora $0E.b		; 05 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $40F0.w		; 20 F0 40
	sed		; F8
	rti		; 40

	sed		; F8
	bmi  -2.b		; 30 FE
	brk $7F.b		; 00 7F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	ora $18.b,S		; 03 18
	ora [$30.b]		; 07 30
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $F24DC0.l		; 0F C0 4D F2
	bra -49.b		; 80 CF
	plp		; 28
	lda $90B730.l		; AF 30 B7 90
	eor $C0.b,X		; 55 C0
	and ($C3.b,S),Y		; 33 C3
	ror $86.b		; 66 86
	cpx $00E2.w		; EC E2 00
	cmp [$74.b]		; C7 74
	lda $FA.b,S		; A3 FA
	ora ($7D.b),Y		; 11 7D
	bra  62.b		; 80 3E
	cpy #$A21F.w		; C0 1F A2
	rol $5D40.w,X		; 3E 40 5D
	cpy #$C08E.w		; C0 8E C0
	eor $10E720.l		; 4F 20 E7 10
	sbc [$08.b],Y		; F7 08
	sbc $FF1EE1.l,X		; FF E1 1E FF
	brk $04.b		; 00 04
	tsb $30.b		; 04 30
	bmi  54.b		; 30 36
	cop $9B.b		; 02 9B
	ora ($CB.b,X)		; 01 CB
	ora ($E3.b,X)		; 01 E3
	sta ($12.b,X)		; 81 12
	brk $00.b		; 00 00
	sbc ($04.b,X)		; E1 04
	xce		; FB
	brk $3E.b		; 00 3E
	tsb $0432.w		; 0C 32 04
	dec A		; 3A
	bpl  44.b		; 10 2C
	sec		; 38
	jmp ($4C28.w)		; 6C 28 4C
	rti		; 40

	cpy $FC00.w		; CC 00 FC
	bpl   0.b		; 10 00
	trb $0C0C.w		; 1C 0C 0C
	tsb $10.b		; 04 10
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $02.b		; 04 02
	tsb $03.b		; 04 03
	ora $00.b		; 05 00
	ora $0F02.w		; 0D 02 0F
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	asl $04.b		; 06 04
	ora [$05.b]		; 07 05
	tsb $04.b		; 04 04
	bra  32.b		; 80 20
	cpy #$0060.w		; C0 60 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$8020.w		; E0 20 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	eor $38.b,S		; 43 38
	.db $42, $38		; 42 38
	.db $42, $3C		; 42 3C
	lsr $34.b		; 46 34
	mvp $C4,$70		; 44 70 C4
	bvs -60.b		; 70 C4
	sei		; 78
	cpy $023E.w		; CC 3E 02
	rol $3C02.w,X		; 3E 02 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	bit $3C04.w,X		; 3C 04 3C
	tsb $B0.b		; 04 B0
	bra   0.b		; 80 00
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	phd		; 0B
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	tsb $1F.b		; 04 1F
	tsb $0C1F.w		; 0C 1F 0C
	and $053F18.l,X		; 3F 18 3F 05
	tsb $01.b		; 04 01
	brk $05.b		; 00 05
	ora ($0E.b,X)		; 01 0E
	brk $0F.b		; 00 0F
	ora ($1F.b,X)		; 01 1F
	ora ($1F.b,X)		; 01 1F
	ora ($3E.b,X)		; 01 3E
	cop $9C.b		; 02 9C
	sbc $25.b,S		; E3 25
	bvc -35.b		; 50 DD
	bvs -42.b		; 70 D6
	pha		; 48
	eor $E12CC0.l,X		; 5F C0 2C E1
	lsr $B0.b,X		; 56 B0
	inx		; E8
	ora $00A0.w,Y		; 19 A0 00
	sta $18.b,S		; 83 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	and $021F00.l,X		; 3F 00 1F 02
	and $101620.l		; 2F 20 16 10
	bit $38FB.w,X		; 3C FB 38
	adc $115738.l,X		; 7F 38 57 11
	adc $133F11.l,X		; 7F 11 3F 13
	and $013F03.l		; 2F 03 3F 01
	ora $7D067E.l,X		; 1F 7E 06 7D
	eor ($3D.b,X)		; 41 3D
	bit $023B.w		; 2C 3B 02
	and ($20.b,S),Y		; 33 20
	ora ($10.b,S),Y		; 13 10
	ora ($00.b,S),Y		; 13 00
	ora ($10.b,S),Y		; 13 10
	ldx #$C4DD.w		; A2 DD C4
	tyx		; BB
	cpy #$C0BF.w		; C0 BF C0
	sbc $C0FFC0.l,X		; FF C0 FF C0
	sbc $C2FFC1.l,X		; FF C1 FF C2
	ldx $22BB.w,Y		; BE BB 22
	cmp [$44.b],Y		; D7 44
	sbc [$40.b]		; E7 40
	xce		; FB
	clc		; 18
	sed		; F8
	clc		; 18
	xce		; FB
	tas		; 1B
	plx		; FA
	inc A		; 1A
	sbc $2258.w,Y		; F9 58 22
	cmp $DD22.w,X		; DD 22 DD
	mvp $44,$BB		; 44 BB 44
	tyx		; BB
	mvp $04,$BB		; 44 BB 04
	xce		; FB
	cpy $7B.b		; C4 7B
	ldy #$BA3F.w		; A0 3F BA
	jsl $7722BB.l		; 22 BB 22 77
	mvp $44,$77		; 44 77 44
	adc [$44.b],Y		; 77 44
	sta [$84.b],Y		; 97 84
	lda [$24.b]		; A7 24
	bne  16.b		; D0 10
	bcc 110.b		; 90 6E
	pha		; 48
	ldx $44.b,Y		; B6 44
	tsx		; BA
	rti		; 40

	ldy $D820.w,X		; BC 20 D8
	jsr $00D8.w		; 20 D8 00
	sed		; F8
	bmi  -4.b		; 30 FC
	jmp.w [$6E90]		; DC 90 6E
	pha		; 48
	stz $44.b		; 64 44
	bvs  64.b		; 70 40
	bcs  32.b		; B0 20
	ldy #$1020.w		; A0 20 10
	bpl -56.b		; 10 C8
	iny		; C8
	ora $87.b,S		; 03 87
	ora $83.b,S		; 03 83
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $DB.b,Y		; 96 DB
	bne -33.b		; D0 DF
	sta ($DE.b,X)		; 81 DE
	sta $3D.b,S		; 83 3D
	ora [$7B.b]		; 07 7B
	ora $EF1F77.l		; 0F 77 1F EF
	and $E115DF.l,X		; 3F DF 15 E1
	sty $E4.b,X		; 94 E4
	ora ($E1.b,S),Y		; 13 E1
	and [$C2.b]		; 27 C2
	ora $283F14.l,X		; 1F 14 3F 28
	adc $207F50.l,X		; 7F 50 7F 20
	rol $C4.b,X		; 36 C4
	inc $04.b,X		; F6 04
	sbc ($86.b,S),Y		; F3 86
	sbc ($8B.b,S),Y		; F3 8B
	sbc ($9B.b,X)		; E1 9B
	cmp #$98BD.w		; C9 BD 98
	sbc $FA91.w,X		; FD 91 FA
	bmi  61.b		; 30 3D
	beq  -3.b		; F0 FD
	sbc ($7E.b)		; F2 7E
	sbc ($77.b),Y		; F1 77
	inx		; E8
	adc [$D8.b]		; 67 D8
	eor $B8.b,S		; 43 B8
	ora $D0.b,S		; 03 D0
	eor [$04.b]		; 47 04
	tsb $3A.b		; 04 3A
	tsb $C5.b		; 04 C5
	brk $8C.b		; 00 8C
	tsb $9E.b		; 04 9E
	tsb $1CBE.w		; 0C BE 1C
	sbc $FE7C3E.l,X		; FF 3E 7C FE
	tsb $FB.b		; 04 FB
	tsb $C1.b		; 04 C1
	brk $3A.b		; 00 3A
	brk $77.b		; 00 77
	brk $6D.b		; 00 6D
	tsb $3C5D.w		; 0C 5D 3C
	rol $FF3C.w,X		; 3E 3C FF
	bit $1887.w,X		; 3C 87 18
	cmp $3E.b,S		; C3 3E
	adc $0C.b,S		; 63 0C
	adc ($1E.b,X)		; 61 1E
	and ($06.b),Y		; 31 06
	and ($0F.b),Y		; 31 0F
	ora $1802.w,Y		; 19 02 18
	ply		; 7A
	cop $7E.b		; 02 7E
	.db $42, $1C		; 42 1C
	brk $3E.b		; 00 3E
	jsr $010F.w		; 20 0F 01
	ora $000611.l,X		; 1F 11 06 00
	ora $106008.l		; 0F 08 60 10
	beq -56.b		; F0 C8
	rti		; 40

	cpy $FC10.w		; CC 10 FC
	bmi  -2.b		; 30 FE
	bmi 126.b		; 30 7E
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	cli		; 58
	rti		; 40

	bit $3C00.w,X		; 3C 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	sty $8C30.w		; 8C 30 8C
	sei		; 78
	cpy $C410.w		; CC 10 C4
	sec		; 38
	ror $08.b		; 66 08
	ror $1C.b		; 66 1C
	rol $04.b,X		; 36 04
	rol $78.b,X		; 36 78
	php		; 08
	sed		; F8
	dey		; 88
	bmi   0.b		; 30 00
	sei		; 78
	rti		; 40

	trb $3C04.w		; 1C 04 3C
	bit $08.b		; 24 08
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -2.b		; 80 FE
	inc $7131.w,X		; FE 31 71
	dec A		; 3A
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	ror $31FF.w,X		; 7E FF 31
	sbc $007F10.l,X		; FF 10 7F 00
	dec A		; 3A
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	cmp $5F04.w,X		; DD 04 5F
	tsb $4F.b		; 04 4F
	brk $4F.b		; 00 4F
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $010F03.l		; 0F 03 0F 01
	ora [$03.b]		; 07 03
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $E8.b		; 00 E8
	brk $F8.b		; 00 F8
	cpx #$30F8.w		; E0 F8 30
	sed		; F8
	pla		; 68
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $48.b		; 00 48
	clv		; B8
	ldy #$C018.w		; A0 18 C0
	sec		; 38
	bra 112.b		; 80 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	plp		; 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($3C10.w,X)		; 7C 10 3C
	brk $3E.b		; 00 3E
	tsb $13.b		; 04 13
	asl $11.b		; 06 11
	ora $0C041C.l		; 0F 1C 04 0C
	ora ($0F.b,X)		; 01 0F
	php		; 08
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	cop $0F.b		; 02 0F
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	jsr $70E0.w		; 20 E0 70
	beq 120.b		; F0 78
	sed		; F8
	trb $073C.w		; 1C 3C 07
	ora $000000.l		; 0F 00 00 00
	brk $C0.b		; 00 C0
	jsr $3080.w		; 20 80 30
	rts		; 60

	sei		; 78
	bmi  -4.b		; 30 FC
	php		; 08
	sbc $0A1F03.l,X		; FF 03 1F 0A
	ora ($10.b,S),Y		; 13 10
	and ($00.b,S),Y		; 33 00
	and $0C2E1C.l,X		; 3F 1C 2E 0C
	rol $3E00.w,X		; 3E 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $02.b		; 00 02
	brk $1E.b		; 00 1E
	bpl  28.b		; 10 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$6000.w		; E0 00 60
	cpy #$C060.w		; C0 60 C0
	bvs -128.b		; 70 80
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	bmi -32.b		; 30 E0
	bmi  64.b		; 30 40
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $A0.b		; 00 A0
	jsr $20E0.w		; 20 E0 20
	cpx #$E020.w		; E0 20 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$C010.w		; C0 10 C0
	clc		; 18
	rts		; 60

	clc		; 18
	cpx #$289C.w		; E0 9C 28
	stz $D670.w,X		; 9E 70 D6
	bit $38C7.w,X		; 3C C7 38
	eor $E0.b,S		; 43 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl 112.b		; 10 70
	bpl -12.b		; 10 F4
	sty $2C.b,X		; 94 2C
	tsb $7A.b		; 04 7A
	.db $42, $3E		; 42 3E
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	cpx #$F810.w		; E0 10 F8
	php		; 08
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	jsr $3060.w		; 20 60 30
	bpl  48.b		; 10 30
	bra  56.b		; 80 38
	bra  76.b		; 80 4C
	jsl $CA3146.l		; 22 46 31 CA
	ora $0F86.w,Y		; 19 86 0F
	bra   7.b		; 80 07
	bra   3.b		; 80 03
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bit $1EA0.w,X		; 3C A0 1E
	bcc   7.b		; 90 07
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	jsr $0200.w		; 20 00 02
	jsr $0020.w		; 20 20 00
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
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $14.b		; 00 14
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
	.db $00		; Opcode 00 overrunning bank boundry at 12FFFF. Skipping.
.ENDS
