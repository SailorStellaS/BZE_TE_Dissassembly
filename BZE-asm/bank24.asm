.BANK 24 SLOT 0
.ORG $0000

.SECTION "Bank24" FORCE

	brk $00.b		; 00 00
	sec		; 38
	asl $04.b		; 06 04
	phd		; 0B
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	tsb $0B.b		; 04 0B
	and $7D06.w,X		; 3D 06 7D
	stz $0000.w,X		; 9E 00 00
	asl $00.b		; 06 00
	phd		; 0B
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	brk $9E.b		; 00 9E
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sec		; 38
	sei		; 78
	sty $44.b		; 84 44
	clv		; B8
	xce		; FB
	stz $7F8E.w		; 9C 8E 7F
	ora [$EF.b],Y		; 17 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $84.b		; 00 84
	brk $B8.b		; 00 B8
	brk $9C.b		; 00 9C
	brk $7F.b		; 00 7F
	brk $EF.b		; 00 EF
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $1E.b		; 00 1E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora $FF.b,S		; 03 FF
	ora [$EF.b]		; 07 EF
	ora $E89F6C.l,X		; 1F 6C 9F E8
	tya		; 98
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora $1F.b,S		; 03 1F
	ora [$9F.b]		; 07 9F
	php		; 08
	lda $0FBF00.l,X		; BF 00 BF 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $6F.b		; 00 6F
	brk $4D.b		; 00 4D
	brk $D9.b		; 00 D9
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($09.b,X)		; 01 09
	ora #$06.b		; 09 06
	asl $20.b		; 06 20
	bmi   4.b		; 30 04
	rol $48.b,X		; 36 48
	ror $00FF.w		; 6E FF 00
	sbc $00BF00.l,X		; FF 00 BF 00
	lda $009D00.l,X		; BF 00 9D 00
	sta $8C00.w,X		; 9D 00 8C
	brk $FE.b		; 00 FE
	brk $8C.b		; 00 8C
	sty $B2B2.w		; 8C B2 B2
	tsb $44.b		; 04 44
	php		; 08
	pha		; 48
	bra -30.b		; 80 E2
	sty $84EE.w		; 8C EE 84
	sbc [$82.b],Y		; F7 82
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $1A110D.l		; 0F 0D 11 1A
	and $34.b,S		; 23 34
	eor [$E8.b]		; 47 E8
	ora $601FF0.l		; 0F F0 1F 60
	inc A		; 1A
	sbc ($82.b),Y		; F1 82
	cop $02.b		; 02 02
	asl $1D00.w		; 0E 00 1D
	ora ($3B.b,X)		; 01 3B
	ora $36.b,S		; 03 36
	asl $09.b		; 06 09
	ora #$91.b		; 09 91
	bpl   3.b		; 10 03
	cop $EB.b		; 02 EB
	jmp.w [$6CE3]		; DC E3 6C
	inc $EC70.w,X		; FE 70 EC
	bmi  -8.b		; 30 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	dec $7E40.w,X		; DE 40 7E
	jsr $8074.w		; 20 74 80
	clv		; B8
	rti		; 40

	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	jsr $60C0.w		; 20 C0 60
	bne  32.b		; D0 20
	cpy #$C0.b		; C0 C0
	jsr $A040.w		; 20 40 A0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bne   0.b		; D0 00
	cpy #$00.b		; C0 00
	jsr $A000.w		; 20 00 A0
	brk $A0.b		; 00 A0
	cpy #$E0.b		; C0 E0
	cpy #$A0.b		; C0 A0
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	clc		; 18
	dec $C71C.w		; CE 1C C7
	asl $0733.w		; 0E 33 07
	ora #$03.b		; 09 03
	ora [$03.b]		; 07 03
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	clc		; 18
	tsb $3C.b		; 04 3C
	cop $3E.b		; 02 3E
	ora ($0F.b,X)		; 01 0F
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	bvs -32.b		; 70 E0
	sec		; 38
	bvs -100.b		; 70 9C
	sec		; 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpx #$10.b		; E0 10
	beq  24.b		; F0 18
	sei		; 78
	clc		; 18
	sec		; 38
	sec		; 38
	sec		; 38
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

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $E0.b		; 00 E0
	ora $E318E6.l,X		; 1F E6 18 E3
	cld		; D8
	cmp ($EC.b),Y		; D1 EC
	inx		; E8
	inc $F4.b,X		; F6 F4
	xce		; FB
	rol $1BF9.w,X		; 3E F9 1B
	bit $C000.w,X		; 3C 00 C0
	ora [$C0.b]		; 07 C0
	ora [$C0.b]		; 07 C0
	sta [$E4.b]		; 87 E4
	cmp $F2.b,S		; C3 F2
	sbc ($F9.b,X)		; E1 F9
	jsr $00FC.w		; 20 FC 00
	inc $2070.w,X		; FE 70 20
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
	lsr $2EBF.w,X		; 5E BF 2E
	eor $2F0F3E.l,X		; 5F 3E 0F 2F
	eor $DF3F5F.l,X		; 5F 5F 3F DF
	rol $BC5F.w,X		; 3E 5F BC
	eor $00BF30.l		; 4F 30 BF 00
	eor $000F00.l,X		; 5F 00 0F 00
	eor $003F00.l,X		; 5F 00 3F 00
	rol $BC00.w,X		; 3E 00 BC
	brk $30.b		; 00 30
	brk $09.b		; 00 09
	sbc [$19.b],Y		; F7 19
	sbc $FEFFFC.l,X		; FF FC FF FE
	lda $3DFB.w,X		; BD FB 3D
	sbc [$1B.b]		; E7 1B
	sbc $0EF100.l,X		; FF 00 F1 0E
	sbc [$00.b],Y		; F7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $3D00.w,X		; BD 00 3D
	brk $1B.b		; 00 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	ora $6F.b		; 05 6F
	bpl  89.b		; 10 59
	and ($34.b,X)		; 21 34
	eor [$10.b]		; 47 10
	lsr $3800.w,X		; 5E 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	asl $1E00.w		; 0E 00 1E
	brk $3A.b		; 00 3A
	cop $28.b		; 02 28
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$17.b]		; E7 17
	sbc [$8F.b]		; E7 8F
	lda [$4F.b],Y		; B7 4F
	adc [$8E.b],Y		; 77 8E
	tda		; 7B
	tsb $7F.b		; 04 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	and $039F83.l,X		; 3F 83 9F 03
	eor $011E00.l,X		; 5F 00 1E 01
	ora $0202.w		; 0D 02 02
	stz $64.b		; 64 64
	bpl  16.b		; 10 10
	sbc $3F00.w,Y		; F9 00 3F
	brk $0C.b		; 00 0C
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $0000.w		; 0E 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$78.b]		; 87 78
	ora $FE.b,S		; 03 FE
	ora [$FC.b]		; 07 FC
	lda [$3C.b]		; A7 3C
	eor ($9C.b),Y		; 51 9C
	rol A		; 2A
	lsr $2715.w		; 4E 15 27
	brk $1B.b		; 00 1B
	ora ($01.b,X)		; 01 01
	trb $CB1C.w		; 1C 1C CB
	iny		; C8
	cmp ($10.b,S),Y		; D3 10
	rtl		; 6B

	php		; 08
	and $04.b,X		; 35 04
	clc		; 18
	brk $06.b		; 00 06
	cop $7F.b		; 02 7F
	ora ($16.b,X)		; 01 16
	ora #$27.b		; 09 27
	clc		; 18
	lsr $38.b		; 46 38
	stx $BC70.w		; 8E 70 BC
	bvs -72.b		; 70 B8
	rts		; 60

	clv		; B8
	rts		; 60

	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	adc ($84.b,X)		; 61 84
	sta $04.b,S		; 83 04
	cop $0C.b		; 02 0C
	ora $011E03.l		; 0F 03 1E 01
	asl $3200.w,X		; 1E 00 32
	tsb $78.b		; 04 78
	tsb $8083.w		; 0C 83 80
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	tsb $F8.b		; 04 F8
	tsb $EC.b		; 04 EC
	bpl -20.b		; 10 EC
	bpl 102.b		; 10 66
	clc		; 18
	ror $38.b,X		; 76 38
	tsa		; 3B
	trb $001F.w		; 1C 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $90.b		; 00 90
	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	sei		; 78
	bcs  56.b		; B0 38
	bne  24.b		; D0 18
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	rti		; 40

	bvs   0.b		; 70 00
	brk $10.b		; 00 10
	bpl -64.b		; 10 C0
	brk $E8.b		; 00 E8
	php		; 08
	beq  28.b		; F0 1C
	inx		; E8
	tsb $0C78.w		; 0C 78 0C
	bcs -122.b		; B0 86
	jmp $E62CC6.l		; 5C C6 2C E6
	ora ($F3.b)		; 12 F3
	dec A		; 3A
	cmp $E8.b,S		; C3 E8
	php		; 08
	beq   0.b		; F0 00
	pea $7C04.w		; F4 04 7C
	tsb $B8.b		; 04 B8
	bra  90.b		; 80 5A
	.db $42, $2C		; 42 2C
	jsr $407C.w		; 20 7C 40
	sei		; 78
	sta $F4.b,S		; 83 F4
	asl $E8.b		; 06 E8
	tsb $18D0.w		; 0C D0 18
	ldy #$30.b		; A0 30
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	inc $F882.w,X		; FE 82 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
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
	ora $02.b,S		; 03 02
	asl $1C04.w		; 0E 04 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl $3E.b		; 06 3E
	adc [$E0.b]		; 67 E0
	sbc $7F4000.l,X		; FF 00 40 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$08.b		; 09 08
	sta $00FF80.l,X		; 9F 80 FF 00
	lda ($21.b,X)		; A1 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3F31.w		; 0E 31 3F
	lsr $BF5E.w		; 4E 5E BF
	lda $FF7F7F.l,X		; BF 7F 7F FF
	xce		; FB
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	and ($00.b),Y		; 31 00
	lsr $BF00.w		; 4E 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $04.b		; 04 04
	sta $98.b,S		; 83 98
	eor [$F3.b]		; 47 F3
	ora $FFFF1F.l		; 0F 1F FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $04.b		; 00 04
	brk $83.b		; 00 83
	brk $47.b		; 00 47
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr $40A0.w		; 20 A0 40
	bvc -32.b		; 50 E0
	inx		; E8
	beq  -8.b		; F0 F8
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	jsr $4000.w		; 20 00 40
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	plp		; 28
	adc #$70.b		; 69 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	plp		; 28
	jmp ($7C60.w,X)		; 7C 60 7C
	ora $1C63F0.l		; 0F F0 63 1C
	adc ($00.b),Y		; 71 00
	adc $7E00.w,Y		; 79 00 7E
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $9F.b		; 00 9F
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	sec		; 38
	and $3D3C.w,Y		; 39 3C 3D
	trb $0A1D.w		; 1C 1D 0A
	asl A		; 0A
	bcc  48.b		; 90 30
	ldx $3E3F.w,Y		; BE 3F 3E
	adc $7B7E7D.l,X		; 7F 7D 7E 7B
	jsr ($F8F0.w,X)		; FC F0 F8
	sbc $F7.b,S		; E3 F7
	sta [$6F.b]		; 87 6F
	brk $7F.b		; 00 7F
	trb $3C7F.w		; 1C 7F 3C
	sbc $70FF38.l,X		; FF 38 FF 70
	sbc $00FF60.l,X		; FF 60 FF 00
	sbc $307F03.l,X		; FF 03 7F 30
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $BC.b		; 00 BC
	brk $B8.b		; 00 B8
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	bra -96.b		; 80 A0
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$07.b		; C0 07
	brk $0C.b		; 00 0C
	brk $1F.b		; 00 1F
	jsr $F876.w		; 20 76 F8
	rtl		; 6B

	tsb $06F5.w		; 0C F5 06
	xce		; FB
	cop $72.b		; 02 72
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $8A.b		; 00 8A
	phb		; 8B
	sbc $05.b,X		; F5 05
	plx		; FA
	cop $FC.b		; 02 FC
	brk $8D.b		; 00 8D
	sta ($3F.b,X)		; 81 3F
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $E7.b		; 00 E7
	brk $2A.b		; 00 2A
	nop		; EA
	bit #$89.b		; 89 89
	php		; 08
	pla		; 68
	tsb $F4.b		; 04 F4
	trb $F4.b		; 14 F4
	beq -16.b		; F0 F0
.ACCU 8
	sep #$EE		; E2 EE
	tsb $1C.b		; 04 1C
	asl $08.b		; 06 08
	asl $1D10.w		; 0E 10 1D
	and ($3A.b,X)		; 21 3A
	eor $64.b,S		; 43 64
	sta [$50.b]		; 87 50
	sta $3A8744.l,X		; 9F 44 87 3A
	eor $07.b,S		; 43 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	ora ($7A.b,X)		; 01 7A
	cop $68.b		; 02 68
	php		; 08
	ply		; 7A
	cop $3D.b		; 02 3D
	ora ($DC.b,X)		; 01 DC
	sta $F0.b,S		; 83 F0
	stx $1EE0.w		; 8E E0 1E
	cpy #$3C.b		; C0 3C
	cpy #$30.b		; C0 30
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	jsr $0C00.w		; 20 00 0C
	tsb $1C1C.w		; 0C 1C 1C
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $D8.b		; 00 D8
	brk $B8.b		; 00 B8
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -112.b		; 80 90
	bcc  16.b		; 90 10
	bmi  48.b		; 30 30
	bvs  64.b		; 70 40
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	clc		; 18
	ply		; 7A
	trb $061D.w		; 1C 1D 06
	ora [$02.b]		; 07 02
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  24.b		; 10 18
	php		; 08
	trb $0E04.w		; 1C 04 0E
	cop $03.b		; 02 03
	phd		; 0B
	clc		; 18
	ora $1C.b		; 05 1C
	cop $0E.b		; 02 0E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	ora $FE03FA.l		; 0F FA 03 FE
	brk $C6.b		; 00 C6
	cmp [$00.b]		; C7 00
	sbc $000001.l,X		; FF 01 00 00
	brk $00.b		; 00 00
	ora ($F4.b,X)		; 01 F4
	tsb $FD.b		; 04 FD
	ora ($FF.b,X)		; 01 FF
	brk $39.b		; 00 39
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	phd		; 0B
	asl $09.b		; 06 09
	ora $100F00.l		; 0F 00 0F 10
	asl A		; 0A
	ora $07.b		; 05 07
	php		; 08
	ora $04.b,S		; 03 04
	brk $01.b		; 00 01
	phd		; 0B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $FA.b		; 00 FA
	sbc $FF86.w,X		; FD 86 FF
	sbc $07FF07.l,X		; FF 07 FF 07
	wai		; CB
	cmp [$53.b],Y		; D7 53
	cmp $B44F92.l,X		; DF 92 4F B4
	rtl		; 6B

	sbc $FF00.w,X		; FD 00 FF
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	bmi  31.b		; 30 1F
	bmi  47.b		; 30 2F
	brk $0B.b		; 00 0B
	brk $BF.b		; 00 BF
	adc $9FBFD0.l,X		; 7F D0 BF 9F
	cpx #$BF.b		; E0 BF
	dec $3E.b,X		; D6 3E
	sbc $AB5D.w		; ED 5D AB
	lsr $8A.b,X		; 56 8A
	cpx $7F03.w		; EC 03 7F
	brk $BF.b		; 00 BF
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	asl $CD.b,X		; 16 CD
	and $2A82.w		; 2D 82 2A
	sta ($28.b,X)		; 81 28
	brk $10.b		; 00 10
	pea $68F8.w		; F4 F8 68
	pea $0FF0.w		; F4 F0 0F
	rol $BCE0.w		; 2E E0 BC
	sta ($68.b,X)		; 81 68
	ora $707840.l		; 0F 40 78 70
	bra  -8.b		; 80 F8
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	rti		; 40

	adc $04F401.l,X		; 7F 01 F4 04
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	eor $7C1F74.l		; 4F 74 1F 7C
	phk		; 4B
	asl $0B.b		; 06 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	sbc $FC18.w,X		; FD 18 FC
	brk $3E.b		; 00 3E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $006F00.l,X		; FF 00 6F 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	sta [$87.b]		; 87 87
	sbc [$F7.b],Y		; F7 F7
	xba		; EB
	xba		; EB
	jmp $4E4E5C.l		; 5C 5C 4E 4E
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $3FDF1F.l		; CF 1F DF 3F
	sbc $1CFF1E.l,X		; FF 1E FF 1C
	cmp $009F08.l,X		; DF 08 9F 00
	and $00FF00.l,X		; 3F 00 FF 00
	ora [$7F.b]		; 07 7F
	ora $3E0C3F.l		; 0F 3F 0C 3E
	ora #$1D.b		; 09 1D
	cop $0A.b		; 02 0A
	cop $0A.b		; 02 0A
	tsb $04.b		; 04 04
	tsb $E00C.w		; 0C 0C E0
	cpy #$C0.b		; C0 C0
	cpy #$D0.b		; C0 D0
	brk $A0.b		; 00 A0
	brk $D8.b		; 00 D8
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bvs -128.b		; 70 80
	bcs -128.b		; B0 80
	tya		; 98
	rti		; 40

	pha		; 48
	rti		; 40

	pha		; 48
	asl $00FF.w,X		; 1E FF 00
	sbc $0FF18E.l,X		; FF 8E F1 0F
	beq 120.b		; F0 78
	sta [$F1.b]		; 87 F1
	cop $FF.b		; 02 FF
	brk $B9.b		; 00 B9
	jsl $006161.l		; 22 61 61 00
	brk $40.b		; 00 40
	rti		; 40

	beq -16.b		; F0 F0
	ora [$07.b]		; 07 07
	asl $0002.w		; 0E 02 00
	brk $C6.b		; 00 C6
	cop $CE.b		; 02 CE
	brk $7D.b		; 00 7D
	bra  63.b		; 80 3F
	cpy #$FF.b		; C0 FF
	brk $FE.b		; 00 FE
	brk $D9.b		; 00 D9
	jsr $6090.w		; 20 90 60
	brk $E0.b		; 00 E0
	pha		; 48
	adc $3331.w,Y		; 79 31 33
	ora $00000F.l		; 0F 0F 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E21.w,X		; 1D 21 0E
	bpl   7.b		; 10 07
	php		; 08
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F00.w,X		; 1E 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80.b		; E0 80
	cpx #$40.b		; E0 40
	bvs -96.b		; 70 A0
	bmi -32.b		; 30 E0
	sec		; 38
	bne  24.b		; D0 18
	bvs -100.b		; 70 9C
	plp		; 28
	lsr $8080.w		; 4E 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	pla		; 68
	php		; 08
	bit $04.b,X		; 34 04
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	sty $84.b		; 84 84
	sty $048C.w		; 8C 8C 04
	tsb $04.b		; 04 04
	tsb $1C.b		; 04 1C
	stz $A020.w		; 9C 20 A0
	bne  96.b		; D0 60
	sei		; 78
	jsr $1024.w		; 20 24 10
	rol $2F1C.w,X		; 3E 1C 2F
	asl $17.b,X		; 16 17
	cop $07.b		; 02 07
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	cpx #$20.b		; E0 20
	bmi   0.b		; 30 00
	clc		; 18
	tsb $061C.w		; 0C 1C 06
	asl $0602.w,X		; 1E 02 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	bmi -64.b		; 30 C0
	sec		; 38
	cpy $18.b		; C4 18
	ror $08.b		; 66 08
	adc [$00.b]		; 67 00
	and [$00.b],Y		; 37 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	jsr $3020.w		; 20 20 30
	bmi  56.b		; 30 38
	clc		; 18
	clc		; 18
	php		; 08
	clc		; 18
	brk $08.b		; 00 08
	brk $3F.b		; 00 3F
	brk $39.b		; 00 39
	tsb $19.b		; 04 19
	tsb $10.b		; 04 10
	tsb $0C10.w		; 0C 10 0C
	bvs  12.b		; 70 0C
	bvs   8.b		; 70 08
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $24.b		; 00 24
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $1C.b		; 04 1C
	ora [$30.b]		; 07 30
	asl $1D60.w		; 0E 60 1D
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0B.b		; 02 0B
	php		; 08
	ora $203F10.l,X		; 1F 10 3F 20
	ror $0140.w,X		; 7E 40 01
	brk $01.b		; 00 01
	asl $F030.w,X		; 1E 30 F0
	tsa		; 3B
	ora $E4.b,S		; 03 E4
	ora [$90.b]		; 07 90
	asl $7840.w,X		; 1E 40 78
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	eor $00FC40.l		; 4F 40 FC 00
	plx		; FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	cpx $3C00.w		; EC 00 3C
	rti		; 40

	ora $7F1E70.l		; 0F 70 1E 7F
	and ($73.b)		; 32 73
	rol A		; 2A
	adc $1A.b,S		; 63 1A
	eor $1A.b,S		; 43 1A
	eor $24.b,S		; 43 24
	and [$04.b],Y		; 37 04
	ora [$30.b]		; 07 30
	bmi  33.b		; 30 21
	and ($0D.b,X)		; 21 0D
	ora ($1D.b,X)		; 01 1D
	ora ($3D.b,X)		; 01 3D
	ora ($3D.b,X)		; 01 3D
	ora ($B0.b,X)		; 01 B0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $BF40.w,Y		; B9 40 BF
	rts		; 60

	cmp $00FF30.l,X		; DF 30 FF 00
	adc $03FE00.l,X		; 7F 00 FE 03
	jmp ($3F03.w,X)		; 7C 03 3F
	brk $07.b		; 00 07
	rti		; 40

	ora $60.b,S		; 03 60
	ora ($B0.b,X)		; 01 B0
	trb $3C1C.w		; 1C 1C 3C
	bit $7B78.w,X		; 3C 78 7B
	sec		; 38
	tsa		; 3B
	tsb $FD0C.w		; 0C 0C FD
	rol $06FD.w,X		; 3E FD 06
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sec		; 38
	and $7D0700.l,X		; 3F 00 07 7D
	adc $FDFD.w,X		; 7D FD FD
	sed		; F8
	plx		; FA
	bvs 118.b		; 70 76
	pha		; 48
	lsr A		; 4A
	ldy $00BD.w,X		; BC BD 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $2719.w		; 0C 19 27
	and $00005F.l		; 2F 5F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $2700.w		; 0C 00 27
	brk $5F.b		; 00 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bmi  48.b		; 30 30
	iny		; C8
	inx		; E8
	pea $FAF4.w		; F4 F4 FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bmi   0.b		; 30 00
	iny		; C8
	brk $F4.b		; 00 F4
	brk $FA.b		; 00 FA
	brk $38.b		; 00 38
	.db $62, $3C, $66		; 62 3C 66
	trb $1846.w		; 1C 46 18
	lsr $78.b		; 46 78
	dec $70.b		; C6 70
	cpy $30.b		; C4 30
	sty $30.b		; 84 30
	sty $1E.b		; 84 1E
	cop $18.b		; 02 18
	brk $78.b		; 00 78
	rti		; 40

	jmp ($3C44.w,X)		; 7C 44 3C
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $1E.b		; 00 1E
	php		; 08
	asl $3E08.w,X		; 1E 08 3E
	php		; 08
	ror $FC08.w,X		; 7E 08 FC
	php		; 08
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $DFFC3C.l,X		; FF 3C FC DF
	rti		; 40

	cmp $20E000.l		; CF 00 E0 20
	inc $003F.w,X		; FE 3F 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3FC0C3.l		; 0F C3 C0 3F
	brk $3F.b		; 00 3F
	brk $9F.b		; 00 9F
	bra -127.b		; 80 81
	sta ($80.b,X)		; 81 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  -4.b		; 10 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	ora ($7F.b,X)		; 01 7F
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $6E.b		; 00 6E
	brk $E7.b		; 00 E7
	brk $28.b		; 00 28
	plp		; 28
	mvp $00,$44		; 44 44 00
	bra   0.b		; 80 00
	bra  42.b		; 80 2A
	ldx $B735.w		; AE 35 B7
	rol A		; 2A
	tyx		; BB
	and $3D.b		; 25 3D
	jmp ($BC00.w,X)		; 7C 00 BC
	rti		; 40

	ror $88.b,X		; 76 88
	sbc $9A.b,X		; F5 9A
	inc $18.b,X		; F6 18
	pea $F418.w		; F4 18 F4
	clc		; 18
	pea $0018.w		; F4 18 00
	brk $40.b		; 00 40
	rti		; 40

	dey		; 88
	dey		; 88
	asl A		; 0A
	asl A		; 0A
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	clv		; B8
	bvs  92.b		; 70 5C
	sec		; 38
	ror $2718.w		; 6E 18 27
	clc		; 18
	and $003F10.l		; 2F 10 3F 00
	ora $0001.w,X		; 1D 01 00
	ora $10.b,S		; 03 10
	bvs   8.b		; 70 08
	sei		; 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora [$0F.b],Y		; 17 0F
	trb $0F.b		; 14 0F
	ora [$38.b]		; 07 38
	eor $05FEC4.l,X		; 5F C4 FE 05
	sta $031A.w,X		; 9D 1A 03
	jsr ($C000.w,X)		; FC 00 C0
	ora $000F00.l		; 0F 00 0F 00
	php		; 08
	brk $B4.b		; 00 B4
	sty $F0.b		; 84 F0
	ora $E0.b		; 05 E0
	cop $E0.b		; 02 E0
	sbc ($00.b,X)		; E1 00
	brk $3A.b		; 00 3A
	sta $70.b,S		; 83 70
	ora [$E0.b]		; 07 E0
	asl $3C80.w		; 0E 80 3C
	bra -16.b		; 80 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FC81.w,X		; FD 81 FC
	tsb $F8.b		; 04 F8
	php		; 08
	beq  48.b		; F0 30
	rti		; 40

	rti		; 40

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
	inc A		; 1A
	eor $1A.b,S		; 43 1A
	eor $3A.b,S		; 43 3A
	eor $38.b,S		; 43 38
	eor $38.b,S		; 43 38
	cmp $7C.b,S		; C3 7C
	dec $7C.b		; C6 7C
	dec $70.b		; C6 70
	dec $3D.b		; C6 3D
	ora ($3D.b,X)		; 01 3D
	ora ($7C.b,X)		; 01 7C
	rti		; 40

	ror $7E42.w,X		; 7E 42 7E
	.db $42, $38		; 42 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $00.b		; 04 00
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
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	ora ($05.b,X)		; 01 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0E.b		; 02 0E
	asl $0100.w		; 0E 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FD02.w,X		; FD 02 FD
	stx $FD.b		; 86 FD
	dec $FEFD.w		; CE FD FE
	jsr ($7CFE.w,X)		; FC FE 7C
	inc $7DBC.w,X		; FE BC 7D
	ply		; 7A
	inc A		; 1A
	sec		; 38
	tsa		; 3B
	bmi -73.b		; 30 B7
	brk $CF.b		; 00 CF
	sed		; F8
	sbc $38FF78.l,X		; FF 78 FF 38
	sbc $007F18.l,X		; FF 18 7F 00
	and $7F3F5F.l,X		; 3F 5F 3F 7F
	lda $B4B877.l,X		; BF 77 B8 B4
	tda		; 7B
	pea $F97B.w		; F4 7B F9
	ror $78FF.w,X		; 7E FF 78
	bcs 126.b		; B0 7E
	and $00BF00.l,X		; 3F 00 BF 00
	clv		; B8
	brk $78.b		; 00 78
	brk $79.b		; 00 79
	ora ($7C.b,X)		; 01 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	ora $7B.b,S		; 03 7B
	ldy $3FC6.w,X		; BC C6 3F
	adc $F70B8F.l,X		; 7F 8F 0B F7
	ora $FB.b		; 05 FB
	sbc $C7F3.w		; ED F3 C7
	ora ($DD.b,S),Y		; 13 DD
	ora ($BC.b,S),Y		; 13 BC
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $E7.b		; 00 E7
	cpx #$E3.b		; E0 E3
	cpx #$03.b		; E0 03
	brk $63.b		; 00 63
	clc		; 18
	adc ($10.b,S),Y		; 73 10
	ora $00.b,S		; 03 00
	tas		; 1B
	tsb $6F.b		; 04 6F
	ora $30DC.w,Y		; 19 DC 30
	sbc $00FF00.l		; EF 00 FF 00
	bvs -128.b		; 70 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	bpl  16.b		; 10 10
	and $20.b,S		; 23 20
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $78.b		; 00 78
	brk $58.b		; 00 58
	jsr $2070.w		; 20 70 20
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	sbc [$FD.b]		; E7 FD
	ora ($C2.b,X)		; 01 C2
	ora $40.b,S		; 03 40
	adc $00C000.l,X		; 7F 00 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DA.b		; 00 DA
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	brk $FD.b		; 00 FD
	ora ($B8.b,X)		; 01 B8
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $00.b		; E4 00
	adc $3E8C.w,Y		; 79 8C 3E
	cmp [$3F.b]		; C7 3F
	cmp [$3F.b]		; C7 3F
	cmp [$F0.b]		; C7 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $0E.b		; 00 0E
	sty $87.b		; 84 87
	sta [$87.b]		; 87 87
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $F4.b		; 00 F4
	beq -78.b		; F0 B2
	sed		; F8
	rol A		; 2A
	sed		; F8
	ldx #$4438.w		; A2 38 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	bcs  -4.b		; B0 FC
	php		; 08
	jsr ($7C00.w,X)		; FC 00 7C
	brk $38.b		; 00 38
	tsb $08CE.w		; 0C CE 08
	dec $DC18.w		; CE 18 DC
	bpl -36.b		; 10 DC
	bmi  -4.b		; 30 FC
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	brk $F0.b		; 00 F0
	bvs  64.b		; 70 40
	stz $44.b,X		; 74 44
	stz $44.b		; 64 44
	pla		; 68
	pha		; 48
	pha		; 48
	pha		; 48
	bvc  80.b		; 50 50
	bvc  80.b		; 50 50
	rts		; 60

	rts		; 60

	brk $03.b		; 00 03
	ora ($7F.b,X)		; 01 7F
	adc $7FF8.w,Y		; 79 F8 7F
	brk $FE.b		; 00 FE
	brk $E4.b		; 00 E4
	ora [$C0.b]		; 07 C0
	jsr ($E000.w,X)		; FC 00 E0
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	sta [$80.b]		; 87 80
	sbc $00FF00.l,X		; FF 00 FF 00
	plx		; FA
	cop $30.b		; 02 30
	bmi -128.b		; 30 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$C020.w		; A0 20 C0
	ldy #$40C0.w		; A0 C0 40
	ldy #$8040.w		; A0 40 80
	jsr $80C0.w		; 20 C0 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $57.b		; 00 57
	ldx $9E72.w,Y		; BE 72 9E
	cmp $FA3F.w,Y		; D9 3F FA
	sbc $FEF9.w,X		; FD F9 FE
	sbc [$F8.b],Y		; F7 F8
	sta $00FFE0.l,X		; 9F E0 FF 00
	tsx		; BA
	cop $99.b		; 02 99
	brk $3C.b		; 00 3C
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	tas		; 1B
	sbc [$18.b]		; E7 18
	eor [$18.b]		; 47 18
	sta $00F790.l		; 8F 90 F7 00
	sbc $C1CFF0.l,X		; FF F0 CF C1
	ora $987B03.l,X		; 1F 03 7B 98
	sed		; F8
	clc		; 18
	beq  48.b		; F0 30
	rts		; 60

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	ora ($E3.b,X)		; 01 E3
	ora $20.b,S		; 03 20
	cpy #$D738.w		; C0 38 D7
	sbc ($28.b,S),Y		; F3 28
	sbc ($68.b,S),Y		; F3 68
	sbc ($6E.b)		; F2 6E
	tay		; A8
	eor [$5C.b],Y		; 57 5C
	ldy #$C0B8.w		; A0 B8 C0
	cpy #$C000.w		; C0 00 C0
	bpl   7.b		; 10 07
	jsr $6047.w		; 20 47 60
	eor $64.b		; 45 64
	brk $50.b		; 00 50
	brk $A8.b		; 00 A8
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $3C.b		; 00 3C
	clc		; 18
	jmp ($7C30.w,X)		; 7C 30 7C
	jmp ($247E.w)		; 6C 7E 24
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	jsr $4030.w		; 20 30 40
	jmp ($2404.w)		; 6C 04 24
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora [$09.b],Y		; 17 09
	asl $1706.w		; 0E 06 17
	brk $37.b		; 00 37
	brk $6D.b		; 00 6D
	brk $ED.b		; 00 ED
	brk $CD.b		; 00 CD
	brk $5B.b		; 00 5B
	brk $01.b		; 00 01
	ora $020700.l		; 0F 00 07 02
	asl A		; 0A
	ora ($1A.b)		; 12 1A
	tsb $16.b		; 04 16
	bit $36.b		; 24 36
	mvp $09,$76		; 44 76 09
	and $007C.w		; 2D 7C 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $EE.b		; 00 EE
	brk $AF.b		; 00 AF
	brk $A7.b		; 00 A7
	brk $A7.b		; 00 A7
	brk $A6.b		; 00 A6
	brk $14.b		; 00 14
	sta [$54.b],Y		; 97 54
	eor [$5A.b],Y		; 57 5A
	tad		; 5B
	lsr A		; 4A
	tad		; 5B
	sta $84DD.w		; 8D DD 84
	jmp.w [$DE86]		; DC 86 DE
	sty $DC.b		; 84 DC
	beq  15.b		; F0 0F
	cpx #$C01E.w		; E0 1E C0
	bmi -128.b		; 30 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AE.b		; 00 AE
	ldx $8080.w		; AE 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	trb $1446.w		; 1C 46 14
	lsr $10.b		; 46 10
	cpy $70.b		; C4 70
	cpy $70.b		; C4 70
	cpy $30.b		; C4 30
	sty $28.b		; 84 28
	sty $8C28.w		; 8C 28 8C
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	jmp ($3C44.w,X)		; 7C 44 3C
	tsb $3C.b		; 04 3C
	tsb $78.b		; 04 78
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	bra  14.b		; 80 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	clc		; 18
	and $0C371C.l		; 2F 1C 37 0C
	ora ($0F.b,S),Y		; 13 0F
	sec		; 38
	brk $FD.b		; 00 FD
	ora $7E.b,S		; 03 7E
	ora ($78.b,X)		; 01 78
	brk $03.b		; 00 03
	tas		; 1B
	ora [$1F.b]		; 07 1F
	brk $1C.b		; 00 1C
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	bmi  55.b		; 30 37
	sec		; 38
	tsa		; 3B
	bpl  23.b		; 10 17
	sbc $00FE00.l,X		; FF 00 FE 00
	jsr ($7A00.w,X)		; FC 00 7A
	brk $FA.b		; 00 FA
	cpy #$F8F3.w		; C0 F3 F8
	xce		; FB
	sed		; F8
	tyx		; BB
	sei		; 78
	phx		; DA
	phx		; DA
	cld		; D8
	cld		; D8
	sec		; 38
	sec		; 38
	bmi -76.b		; 30 B4
	cpy #$F0C4.w		; C0 C4 F0
	jsr ($FE72.w,X)		; FC 72 FE
	brk $FE.b		; 00 FE
	ora $00.b,S		; 03 00
	ora [$00.b],Y		; 17 00
	and $3F03.w,X		; 3D 03 3F
	ora ($37.b,X)		; 01 37
	php		; 08
	jsr $221F.w		; 20 1F 22
	clc		; 18
	and ($0E.b)		; 32 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	ora ($13.b,S),Y		; 13 13
	ora [$00.b]		; 07 00
	ora $04.b		; 05 04
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$C0C0.w		; E0 C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -48.b		; F0 D0
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	cpx #$0B00.w		; E0 00 0B
	clc		; 18
	ora $1C.b		; 05 1C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cpy #$8060.w		; C0 60 80
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	clc		; 18
	rti		; 40

	php		; 08
	inx		; E8
	sty $8460.w		; 8C 60 84
	inx		; E8
	sty $20A0.w		; 8C A0 20
	cpx #$D020.w		; E0 20 D0
	bpl -16.b		; 10 F0
	bpl  -8.b		; 10 F8
	php		; 08
	bvs   0.b		; 70 00
	sed		; F8
	bra 112.b		; 80 70
	brk $9E.b		; 00 9E
	ora ($CE.b,X)		; 01 CE
	ora ($66.b,X)		; 01 66
	ora ($34.b,X)		; 01 34
	brk $9C.b		; 00 9C
	brk $C8.b		; 00 C8
	brk $F0.b		; 00 F0
	php		; 08
	cpx #$991C.w		; E0 1C 99
	sbc $3D0D.w,Y		; F9 0D 3D
	mvp $20,$DC		; 44 DC 20
	inx		; E8
	bcc -16.b		; 90 F0
	rti		; 40

	bvs  32.b		; 70 20
	jsr $9090.w		; 20 90 90
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	asl $0D.b		; 06 0D
	asl $1D.b		; 06 1D
	asl $001F.w		; 0E 1F 00
	rol $3E00.w,X		; 3E 00 3E
	brk $0C.b		; 00 0C
	jsl $040200.l		; 22 00 02 04
	ora [$04.b]		; 07 04
	ora [$0C.b]		; 07 0C
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $EF00.w		; 1C 00 EF
	ora $931FEF.l,X		; 1F EF 1F 93
	ora $2F0F17.l		; 0F 17 0F 2F
	ora $5F1F2F.l,X		; 1F 2F 1F 5F
	and $1F3F5F.l,X		; 3F 5F 3F 1F
	rti		; 40

	ora $000F00.l,X		; 1F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $F9C700.l,X		; 3F 00 C7 F9
	sbc $F8DE.w,X		; FD DE F8
	cop $1B.b		; 02 1B
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	cmp $5C.b,S		; C3 5C
	cmp $A8.b,S		; C3 A8
	sbc $D1.b,S		; E3 D1
	lda ($E1.b)		; B2 E1
	brk $C0.b		; 00 C0
	brk $0C.b		; 00 0C
	ora $0E.b,S		; 03 0E
	.db $62, $4F, $53		; 62 4F 53
	and $069E03.l,X		; 3F 03 9E 06
	sty $5600.w		; 8C 00 56
	lda $01FE.w		; AD FE 01
	sbc $F702.w,X		; FD 02 F7
	php		; 08
	sbc $E11F.w,X		; FD 1F E1
	ora $F800FF.l,X		; 1F FF 00 F8
	brk $AD.b		; 00 AD
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	tsb $1F18.w		; 0C 18 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,S),Y		; 93 00
	cmp $CC00.w,Y		; D9 00 CC
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $78.b		; 00 78
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($82.b,X)		; 01 82
	inc $6F49.w		; EE 49 6F
	mvp $6B,$77		; 44 77 6B
	tda		; 7B
	plp		; 28
	sec		; 38
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sta $44.b,S		; 83 44
	adc $AB83.w,X		; 7D 83 AB
	eor [$DF.b],Y		; 57 DF
	lda $9E1FFF.l,X		; BF FF 1F 9E
	adc $000000.l,X		; 7F 00 00 00
	brk $44.b		; 00 44
	brk $83.b		; 00 83
	brk $57.b		; 00 57
	brk $BF.b		; 00 BF
	bra  31.b		; 80 1F
	bra 127.b		; 80 7F
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	.db $42, $F2		; 42 F2
	ora $99.b		; 05 99
	sbc [$FD.b]		; E7 FD
	sbc ($F5.b,S),Y		; F3 F5
	xce		; FB
	sta $FD.b,S		; 83 FD
	adc ($8D.b,S),Y		; 73 8D
	ora ($00.b,X)		; 01 00
	.db $42, $00		; 42 00
	ora $00.b		; 05 00
	sbc [$00.b]		; E7 00
	sbc ($00.b,S),Y		; F3 00
	xce		; FB
	brk $FD.b		; 00 FD
	brk $8D.b		; 00 8D
	brk $3E.b		; 00 3E
	ora ($7F.b,X)		; 01 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora $38.b,S		; 03 38
	and $7C7C.w,Y		; 39 7C 7C
	dec A		; 3A
	dec A		; 3A
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	ora ($02.b,X)		; 01 02
	adc $00FFFE.l,X		; 7F FE FF 00
	sbc $EC00.w,Y		; F9 00 EC
	brk $AE.b		; 00 AE
	brk $A7.b		; 00 A7
	brk $B3.b		; 00 B3
	brk $00.b		; 00 00
	inc $FE1C.w,X		; FE 1C FE
	brk $00.b		; 00 00
	dey		; 88
	stx $9784.w		; 8E 84 97
	.db $82, $D3, $81		; 82 D3 81
	cmp $DC90.w,Y		; D9 90 DC
	clc		; 18
	ora [$07.b]		; 07 07
	sei		; 78
	and $81BFE0.l		; 2F E0 BF 81
	adc $0FFC03.l,X		; 7F 03 FC 0F
	cpx #$C0FF.w		; E0 FF C0
	jsr ($0101.w,X)		; FC 01 01
	ora $405F08.l		; 0F 08 5F 40
	ror $FC00.w,X		; 7E 00 FC
	brk $F3.b		; 00 F3
	ora $1C.b,S		; 03 1C
	trb $3030.w		; 1C 30 30
	beq  56.b		; F0 38
	cpx #$C078.w		; E0 78 C0
	beq -128.b		; F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$9000.w		; C0 00 90
	bpl  32.b		; 10 20
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora $0E.b,S		; 03 0E
	ora $0C.b		; 05 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	asl $0118.w		; 0E 18 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	brk $05.b		; 00 05
	tsb $03.b		; 04 03
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	bvs  28.b		; 70 1C
	cpy #$E018.w		; C0 18 E0
	sec		; 38
	bra  48.b		; 80 30
	cpy #$0060.w		; C0 60 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	inx		; E8
	php		; 08
	sed		; F8
	clc		; 18
	bne  16.b		; D0 10
	cpx #$A020.w		; E0 20 A0
	jsr $40C0.w		; 20 C0 40
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	beq  30.b		; F0 1E
	sei		; 78
	stx $077C.w		; 8E 7C 07
	rol $3D03.w,X		; 3E 03 3D
	sta ($5E.b,X)		; 81 5E
	cpy #$602F.w		; C0 2F 60
	ora [$30.b],Y		; 17 30
	plp		; 28
	php		; 08
	pea $FA84.w		; F4 84 FA
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	bra  63.b		; 80 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$1840.w		; C0 40 18
	lsr $14.b		; 46 14
	eor [$2E.b]		; 47 2E
	rts		; 60

	ora [$30.b],Y		; 17 30
	cop $1E.b		; 02 1E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3A04.w,X		; 3C 04 3A
	cop $1F.b		; 02 1F
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	ora $8F831C.l,X		; 1F 1C 83 8F
	pea $3DA7.w		; F4 A7 3D
	cmp [$1A.b],Y		; D7 1A
	and $07EA.w		; 2D EA 07
	sec		; 38
	ora $04.b,S		; 03 04
	ora $000300.l,X		; 1F 00 03 00
	rti		; 40

	mvp $15,$D5		; 44 D5 15
	inx		; E8
	asl A		; 0A
	bvc  66.b		; 50 42
	php		; 08
	asl A		; 0A
	brk $01.b		; 00 01
	adc $0EFE82.l,X		; 7F 82 FE 0E
	sbc $FF00.w,Y		; F9 00 FF
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	ldy #$20FF.w		; A0 FF 20
	lda $008060.l,X		; BF 60 80 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	ora $A3.b,S		; 03 A3
	ora $6F0FAF.l		; 0F AF 0F 6F
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	rts		; 60

	stz $FE60.w		; 9C 60 FE
	brk $FE.b		; 00 FE
	brk $30.b		; 00 30
	bmi  56.b		; 30 38
	sec		; 38
	sei		; 78
	sei		; 78
	bpl  16.b		; 10 10
	brk $60.b		; 00 60
	php		; 08
	pla		; 68
	stz $BC9C.w		; 9C 9C BC
	ldy $4080.w,X		; BC 80 40
	cpx #$BC08.w		; E0 08 BC
	cpy #$C8F4.w		; C0 F4 C8
	ldy #$D0C0.w		; A0 C0 D0
	cpx #$E8F0.w		; E0 F0 E8
	inx		; E8
	beq  64.b		; F0 40
	brk $08.b		; 00 08
	brk $C0.b		; 00 C0
	brk $C8.b		; 00 C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	brk $7C.b		; 00 7C
	brk $E6.b		; 00 E6
	ora ($9E.b,X)		; 01 9E
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sec		; 38
	sta $E0F9.w,Y		; 99 F9 E0
	cpx #$1E1E.w		; E0 1E 1E
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	tsb $04.b		; 04 04
	asl $0823.w		; 0E 23 08
	adc $0C.b,S		; 63 0C
	ror $20.b		; 66 20
	ror $28.b		; 66 28
	jmp ($6C20.w)		; 6C 20 6C
	bmi 120.b		; 30 78
	jsr $1DF8.w		; 20 F8 1D
	ora ($3E.b,X)		; 01 3E
	jsl $1C223A.l		; 22 3A 22 1C
	tsb $14.b		; 04 14
	tsb $58.b		; 04 58
	pha		; 48
	pha		; 48
	pha		; 48
	bvc  80.b		; 50 50
	bmi   0.b		; 30 00
	jsr ($FA30.w,X)		; FC 30 FA
	jmp ($E0DC.w,X)		; 7C DC E0
	cpx #$F080.w		; E0 80 F0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7030.w		; 20 30 70
	jmp ($E080.w,X)		; 7C 80 E0
	brk $80.b		; 00 80
	cpy #$00E0.w		; C0 E0 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bit $1C20.w,X		; 3C 20 1C
	pla		; 68
	bpl 120.b		; 10 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	brk $14.b		; 00 14
	trb $18.b		; 14 18
	clc		; 18
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $071F07.l		; 0F 07 1F 07
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	brk $0C.b		; 00 0C
	ora $0F02.w		; 0D 02 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	bpl 124.b		; 10 7C
	jsr $0C70.w		; 20 70 0C
	rts		; 60

	trb $0202.w		; 1C 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	bit $3CD8.w,X		; 3C D8 3C
	cpy #$B824.w		; C0 24 B8
	mvp $44,$B8		; 44 B8 44
	sed		; F8
	tsb $7C.b		; 04 7C
	brk $3C.b		; 00 3C
	brk $10.b		; 00 10
	bpl  32.b		; 10 20
	jsr $2038.w		; 20 38 20
	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $BF03.w,Y		; BE 03 BF
	ora $E6.b,S		; 03 E6
	brk $97.b		; 00 97
	bvs  11.b		; 70 0B
	sed		; F8
	ora $7C.b		; 05 7C
	cop $3E.b		; 02 3E
	ora ($1F.b,X)		; 01 1F
	sec		; 38
	sei		; 78
	jsr $1F60.w		; 20 60 1F
	brk $6F.b		; 00 6F
	rts		; 60

	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	ldy #$D030.w		; A0 30 D0
	clc		; 18
	inx		; E8
	tsb $0674.w		; 0C 74 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7B20.w		; 20 20 7B
	brk $F7.b		; 00 F7
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	adc $E7.b,S		; 63 E7
	eor [$4F.b]		; 47 4F
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	ora ($32.b)		; 12 32
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	php		; 08
	sei		; 78
	plp		; 28
	cli		; 58
	tsb $04.b		; 04 04
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	cop $32.b		; 02 32
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora [$08.b]		; 07 08
	asl $08.b		; 06 08
	tsb $08.b		; 04 08
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	sta $9D17.w,Y		; 99 17 9D
	ora [$98.b],Y		; 17 98
	ora [$9D.b],Y		; 17 9D
	ora ($1C.b)		; 12 1C
	inc A		; 1A
	rol $2E38.w		; 2E 38 2E
	bit $3DAF.w,X		; 3C AF 3D
	bpl  -1.b		; 10 FF
	trb $FF.b		; 14 FF
	bpl  -1.b		; 10 FF
	bpl  -1.b		; 10 FF
	clc		; 18
	sbc $24FF28.l,X		; FF 28 FF 24
	sbc $9FFF25.l,X		; FF 25 FF 9F
	sbc [$7F.b],Y		; F7 7F
	lda $FFBF7F.l,X		; BF 7F BF FF
	adc $FF7FFF.l,X		; 7F FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $28FF94.l,X		; FF 94 FF 28
	sbc $40FF28.l,X		; FF 28 FF 40
	sbc $C1FF41.l,X		; FF 41 FF C1
	sbc $86FF83.l,X		; FF 83 FF 86
	sbc $FFBF9F.l,X		; FF 9F BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $45BF83.l,X		; FF 83 BF 45
	sbc $F2FFC9.l,X		; FF C9 FF F2
	sbc $C7FEE4.l,X		; FF E4 FE C7
	sbc $10FF8D.l,X		; FF 8D FF 10
	sbc $F7A7BB.l,X		; FF BB A7 F7
	sta $FF0FFF.l		; 8F FF 0F FF
	and $FDFFFF.l,X		; 3F FF FF FD
	jsr ($F8FB.w,X)		; FC FB F8
	inc $F0.b,X		; F6 F0
	cmp $85.b		; C5 85
	lsr A		; 4A
	phb		; 8B
	sty $300F.w		; 8C 0F 30
	and $06FFC3.l,X		; 3F C3 FF 06
	jsr ($F80C.w,X)		; FC 0C F8
	clc		; 18
	beq  -2.b		; F0 FE
	sed		; F8
	sbc $F4F1.w,Y		; F9 F1 F4
	cmp [$D0.b]		; C7 D0
	stz $70C0.w		; 9C C0 70
	cpx $04.b		; E4 04
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sta $F03EF8.l,X		; 9F F8 3E F0
	ply		; 7A
.ACCU 16
	rep #$E8		; C2 E8
	dey		; 88
	jsr $0420.w		; 20 20 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	php		; 08
	ora $040F08.l,X		; 1F 08 0F 04
	ora [$00.b]		; 07 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $001C00.l,X		; 1F 00 1C 00
	brk $08.b		; 00 08
	ora $0B.b,S		; 03 0B
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	trb $0E1C.w		; 1C 1C 0E
	asl $0000.w		; 0E 00 00
	brk $03.b		; 00 03
	pei ($02.b)		; D4 02
	xce		; FB
	ora [$F7.b]		; 07 F7
	ora $FF1FEF.l		; 0F EF 1F FF
	ora $CE0FFF.l,X		; 1F FF 0F CE
	and [$FE.b],Y		; 37 FE
	clc		; 18
	brk $0F.b		; 00 0F
	cpy #$81CF.w		; C0 CF 81
	sta $07BF83.l,X		; 9F 83 BF 07
	ora $066F0F.l,X		; 1F 0F 6F 06
	and [$08.b],Y		; 37 08
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	tsa		; 3B
	php		; 08
	adc $93EA10.l,X		; 7F 10 EA 93
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$40.b]		; 07 40
	and $B13DA0.l		; 2F A0 3D B1
	bit $201F.w		; 2C 1F 20
	ora $0F0C13.l,X		; 1F 13 0C 0F
	sta ($00.b,S),Y		; 93 00
	sbc $F03F80.l,X		; FF 80 3F F0
	ora [$BE.b]		; 07 BE
	sta ($1F.b,X)		; 81 1F
	brk $1F.b		; 00 1F
	brk $0C.b		; 00 0C
	brk $13.b		; 00 13
	brk $9F.b		; 00 9F
	bra -29.b		; 80 E3
	jsr $04FC.w		; 20 FC 04
	adc $0F0001.l,X		; 7F 01 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora $3F.b,S		; 03 3F
	ora $FE7FFF.l		; 0F FF 7F FE
	sbc $0101FC.l,X		; FF FC 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F7D1F.l,X		; 1F 1F 7D 7F
	sta ($9E.b,S),Y		; 93 9E
	adc [$7C.b]		; 67 7C
	tsx		; BA
	sta $5C.b,S		; 83 5C
	cmp ($37.b,X)		; C1 37
	sbc ($EB.b),Y		; F1 EB
	sed		; F8
	dec $79C4.w		; CE C4 79
	and ($E4.b,X)		; 21 E4
	ora [$90.b]		; 07 90
	stz $007C.w		; 9C 7C 00
	ldx $3E80.w,Y		; BE 80 3E
	bmi  -9.b		; 30 F7
	beq  -1.b		; F0 FF
	cpy $FE.b		; C4 FE
	jsr $02FA.w		; 20 FA 02
	inx		; E8
	dey		; 88
	bra -128.b		; 80 80
	.db $82, $82, $80		; 82 82 80
	bra -96.b		; 80 A0
	ldy #$8383.w		; A0 83 83
	.db $82, $82, $8F		; 82 82 8F
	stx $9C8F.w		; 8E 8F 9C
	bra -128.b		; 80 80
	bra -126.b		; 80 82
	bra -128.b		; 80 80
	ldy #$82A0.w		; A0 A0 82
	sta $80.b,S		; 83 80
	.db $82, $88, $8E		; 82 88 8E
	bra -100.b		; 80 9C
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	jsl $080822.l		; 22 22 08 08
	bpl  16.b		; 10 10
	jsl $63E022.l		; 22 22 E0 63
	cmp $80E7.w,Y		; D9 E7 80
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	jsl $100808.l		; 22 08 08 10
	bpl  34.b		; 10 22
	jsl $E66141.l		; 22 41 61 E6
	inc $28.b		; E6 28
	cli		; 58
	pla		; 68
	tya		; 98
	stz $BC.b		; 64 BC
	stz $8C.b,X		; 74 8C
	ldy $1C.b,X		; B4 1C
	lda ($0E.b)		; B2 0E
	tsx		; BA
	asl $99.b		; 06 99
	ora [$00.b],Y		; 17 00
	sei		; 78
	brk $F8.b		; 00 F8
	jsr $00FC.w		; 20 FC 00
	jsr ($FC10.w,X)		; FC 10 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	bpl  -1.b		; 10 FF
	tsb $04.b		; 04 04
	sty $84.b		; 84 84
	tsb $0D0C.w		; 0C 0C 0D
	ora $1D15.w		; 0D 15 1D
	sta $9D.b,X		; 95 9D
	and $774B37.l,X		; 3F 37 4B 77
	brk $04.b		; 00 04
	bra -124.b		; 80 84
	brk $0C.b		; 00 0C
	ora #$010D.w		; 09 0D 01
	ora $9D81.w,X		; 1D 81 9D
	ora ($3F.b)		; 12 3F
	cop $7F.b		; 02 7F
	tsb $0832.w		; 0C 32 08
	bvs  12.b		; 70 0C
	bpl   2.b		; 10 02
	bpl  12.b		; 10 0C
	brk $25.b		; 00 25
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	and $007F00.l,X		; 3F 00 7F 00
	ora $001B00.l,X		; 1F 00 1B 00
	ora $023F01.l		; 0F 01 3F 02
	adc $A30000.l,X		; 7F 00 00 A3
	and $437F43.l,X		; 3F 43 7F 43
	adc $837F43.l,X		; 7F 43 7F 83
	sbc $01FF81.l,X		; FF 81 FF 01
	sbc $237F01.l,X		; FF 01 7F 23
	sbc $42FF42.l,X		; FF 42 FF 42
	sbc $80FF40.l,X		; FF 40 FF 80
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $FF7F00.l,X		; FF 00 7F FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $7BFF79.l,X		; FF 79 FF 7B
	sbc $62FF73.l,X		; FF 73 FF 62
	sbc $18FF20.l,X		; FF 20 FF 18
	sbc $1CFF32.l,X		; FF 32 FF 1C
	sbc $20FF10.l,X		; FF 10 FF 20
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $CFFFE7.l,X		; FF E7 FF CF
	sbc $2FFF1F.l,X		; FF 1F FF 2F
	sbc $20C040.l		; EF 40 C0 20
	sbc $00FF40.l,X		; FF 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $EEC000.l		; EF 00 C0 EE
	cpx #$C0FC.w		; E0 FC C0
	cpx $D8D8.w		; EC D8 D8
	bcs -24.b		; B0 E8
	bra 120.b		; 80 78
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	cpx #$C000.w		; E0 00 C0
	bpl -48.b		; 10 D0
	jsr $10A0.w		; 20 A0 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $33.b		; 00 33
	brk $4F.b		; 00 4F
	brk $7C.b		; 00 7C
	brk $F3.b		; 00 F3
	brk $8F.b		; 00 8F
	brk $FE.b		; 00 FE
	brk $7D.b		; 00 7D
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	ora $303C0C.l		; 0F 0C 3C 30
	and ($43.b,S),Y		; 33 43
	eor $3C7E0E.l		; 4F 0E 7E 3C
	and $1B19.w,X		; 3D 19 1B
	ora $07.b,S		; 03 07
	lda $077F0E.l,X		; BF 0E 7F 07
	cmp $00BF00.l,X		; DF 00 BF 00
	ply		; 7A
	brk $EB.b		; 00 EB
	brk $DB.b		; 00 DB
	brk $FB.b		; 00 FB
	brk $26.b		; 00 26
	ror $C743.w		; 6E 43 C7
	bra -96.b		; 80 A0
	jsr $6060.w		; 20 60 60
	sbc $C2.b		; E5 C2
	dec $93.b,X		; D6 93
	lda [$33.b],Y		; B7 33
	and [$F0.b],Y		; 37 F0
	sta $B0C0F8.l		; 8F F8 C0 B0
	cpy #$00C0.w		; C0 C0 00
	brk $03.b		; 00 03
	ora $3807.w,Y		; 19 07 38
	tsb $3C.b		; 04 3C
	brk $A8.b		; 00 A8
	tay		; A8
	bcs -16.b		; B0 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$14.b],Y		; 17 14
	phd		; 0B
	php		; 08
	asl $F0.b,X		; 16 F0
	ora $3D.b		; 05 3D
	bpl  47.b		; 10 2F
	clc		; 18
	sbc ($57.b,X)		; E1 57
	cpy #$0315.w		; C0 15 03
	and $23.b,X		; 35 23
	txy		; 9B
	sbc [$2F.b]		; E7 2F
	jsr $080A.w		; 20 0A 08
	brk $00.b		; 00 00
	jsr $A027.w		; 20 27 A0
	dey		; 88
	cpx #$C00F.w		; E0 0F C0
	ora $FF4F40.l		; 0F 40 4F FF
	sbc $7BFF3F.l,X		; FF 3F FF 7B
	sbc $DF5FBC.l,X		; FF BC 5F DF
	inc $F66D.w		; EE 6D F6
	sta $DE2760.l,X		; 9F 60 27 DE
	sbc $01FE00.l,X		; FF 00 FE 01
	sbc $005F00.l,X		; FF 00 5F 00
	inc $F700.w		; EE 00 F7
	brk $61.b		; 00 61
	brk $01.b		; 00 01
	rti		; 40

	inc $D9FD.w,X		; FE FD D9
	inc $90FF.w,X		; FE FF 90
	sta $7242.w,X		; 9D 42 72
	jmp.w [$28F0]		; DC F0 28
	beq  24.b		; F0 18
	bne  16.b		; D0 10
	adc $FE80.w,X		; 7D 80 FE
	brk $90.b		; 00 90
	brk $02.b		; 00 02
	rts		; 60

	mvp $D0,$40		; 44 40 D0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	rti		; 40

	bvs   0.b		; 70 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	ora $3A132F.l		; 0F 2F 13 3A
	ora $0F1F.w,X		; 1D 1F 0F
	ora ($0F.b,S),Y		; 13 0F
	inc A		; 1A
	ora $24.b		; 05 24
	tas		; 1B
	pld		; 2B
	ora $12010E.l,X		; 1F 0E 01 12
	ora ($1D.b,X)		; 01 1D
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	brk $1B.b		; 00 1B
	brk $1F.b		; 00 1F
	brk $E0.b		; 00 E0
	bcc -40.b		; 90 D8
	cpx $F4.b		; E4 F4
	sbc $FCFF.w,Y		; F9 FF FC
	sbc $FF7FFF.l,X		; FF FF 7F FF
	lda $FFFFFF.l,X		; BF FF FF FF
	bcc   0.b		; 90 00
	stz $80.b		; 64 80
	lda $F440.w,Y		; B9 40 F4
	php		; 08
	xce		; FB
	tsb $FC.b		; 04 FC
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ldy #$08F0.w		; A0 F0 08
	inx		; E8
	pea $FAF4.w		; F4 F4 FA
	plx		; FA
	jsr ($FEFF.w,X)		; FC FF FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0800.w		; A0 00 08
	brk $34.b		; 00 34
	cpy #$807A.w		; C0 7A 80
	jmp ($3E80.w,X)		; 7C 80 3E
	cpy #$0000.w		; C0 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	jsr $1010.w		; 20 10 10
	jsr $2010.w		; 20 10 20
	bmi 104.b		; 30 68
	sec		; 38
	stz $00.b,X		; 74 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $68.b		; 00 68
	brk $74.b		; 00 74
	brk $FA.b		; 00 FA
	sed		; F8
	ply		; 7A
	sei		; 78
	sbc ($F8.b,S),Y		; F3 F8
	sta [$B0.b]		; 87 B0
	sta $803FC0.l,X		; 9F C0 3F 80
	inc $FC00.w,X		; FE 00 FC
	brk $78.b		; 00 78
	jsr ($FC78.w,X)		; FC 78 FC
	bra  -4.b		; 80 FC
	.db $82, $FA, $86		; 82 FA 86
	inc $0C.b		; E6 0C
	cpy $0808.w		; CC 08 08
	rti		; 40

	rti		; 40

	pla		; 68
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	cpy #$4000.w		; C0 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	and ($3F.b)		; 32 3F
	ora [$1E.b],Y		; 17 1E
	cop $0C.b		; 02 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	php		; 08
	and $327F1D.l,X		; 3F 1D 7F 32
	adc $007E14.l,X		; 7F 14 7E 00
	trb $0000.w		; 1C 00 00
	jsr $0420.w		; 20 20 04
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0420.w		; 20 20 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $07.b,S		; 03 07
	ora $FFFF1F.l		; 0F 1F FF FF
	sbc $4EFE.w,X		; FD FE 4E
	beq -16.b		; F0 F0
	cpy #$0100.w		; C0 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora [$FF.b]		; 07 FF
	asl $B0FF.w,X		; 1E FF B0
	inc $F040.w,X		; FE 40 F0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($EF.b,S),Y		; 33 EF
	and ($EF.b),Y		; 31 EF
	cli		; 58
	cpy #$A0B8.w		; C0 B8 A0
	sed		; F8
	cpy #$A0C8.w		; C0 C8 A0
	cpx $FCF0.w		; EC F0 FC
	beq  32.b		; F0 20
	rts		; 60

	jsr $4060.w		; 20 60 40
	cpx #$E0A0.w		; E0 A0 E0
	cpy #$00C0.w		; C0 C0 00
	bcs -32.b		; B0 E0
	beq -16.b		; F0 F0
	beq -32.b		; F0 E0
	bmi -64.b		; 30 C0
	cpx #$C000.w		; E0 00 C0
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
	brk $3E.b		; 00 3E
	rol $7E7E.w,X		; 3E 7E 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec A		; 3A
	rol $7E50.w,X		; 3E 50 7E
	cpy $84FF.w		; CC FF 84
	sbc $84FF84.l,X		; FF 84 FF 84
	sbc $C6FFC4.l,X		; FF C4 FF C6
	sbc $008080.l,X		; FF 80 80 00
	brk $A0.b		; 00 A0
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$8C18.w		; E0 18 8C
	sbc ($00.b)		; F2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $72.b		; 00 72
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	jsr $0C0A.w		; 20 0A 0C
	asl $0004.w		; 0E 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E6FFFF.l,X		; FF FF FF E6
	sbc $C4FFC4.l,X		; FF C4 FF C4
	sbc $CCFFCC.l,X		; FF CC FF CC
	sbc $CCFFCC.l,X		; FF CC FF CC
	sbc $C4FFC8.l,X		; FF C8 FF C4
	cpx $C0.b		; E4 C0
	cpx #$E1E1.w		; E0 E1 E1
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$EAEA.w		; E0 EA EA
	cpx #$E0E0.w		; E0 E0 E0
	beq   4.b		; F0 04
	cpx $00.b		; E4 00
	cpx #$E100.w		; E0 00 E1
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$EA02.w		; E0 02 EA
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	dec A		; 3A
	sbc $90FF56.l,X		; FF 56 FF 90
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $04FFA2.l,X		; FF A2 FF 04
	sbc $12FF00.l,X		; FF 00 FF 12
	sbc $E0FF46.l,X		; FF 46 FF E0
	beq -16.b		; F0 F0
	cpx #$E4F4.w		; E0 F4 E4
	beq -32.b		; F0 E0
	bne -32.b		; D0 E0
	cmp ($E2.b)		; D2 E2
	cpx #$E8C0.w		; E0 C0 E8
	iny		; C8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cop $F2.b		; 02 F2
	brk $E0.b		; 00 E0
	dey		; 88
	inx		; E8
	ldx $FEC5.w,Y		; BE C5 FE
	ora $FA.b,S		; 03 FA
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	inc $38.b		; E6 38
	jsr ($1800.w,X)		; FC 00 18
	brk $00.b		; 00 00
	and ($21.b,X)		; 21 21
	phx		; DA
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	tsb $18.b		; 04 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	and ($07.b,X)		; 21 07
	ora [$0F.b]		; 07 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	and $213333.l,X		; 3F 33 33 21
	and ($07.b,X)		; 21 07
	ora [$0F.b]		; 07 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $1F1F0F.l,X		; 1F 0F 1F 1F
	and $013313.l,X		; 3F 13 33 01
	and ($81.b,X)		; 21 81
	ora ($8A.b,X)		; 01 8A
	txa		; 8A
	cop $02.b		; 02 02
	asl A		; 0A
	asl A		; 0A
	rol $26.b		; 26 26
	asl $06.b		; 06 06
	eor $0F0F4F.l		; 4F 4F 0F 0F
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	txa		; 8A
	cop $02.b		; 02 02
	asl A		; 0A
	asl A		; 0A
	rol $26.b		; 26 26
	asl $06.b		; 06 06
	eor $0F0F4F.l		; 4F 4F 0F 0F
	ora [$07.b]		; 07 07
	and [$27.b]		; 27 27
	and [$27.b]		; 27 27
	eor $5F6F7F.l,X		; 5F 7F 6F 5F
	lda $BF7FDF.l,X		; BF DF 7F BF
	sbc $0703FF.l,X		; FF FF 03 07
	ora $27.b		; 05 27
	ora $27.b		; 05 27
	ora #$0B7F.w		; 09 7F 0B
	adc $22FF12.l,X		; 7F 12 FF 22
	sbc $10FFC2.l,X		; FF C2 FF 10
	sbc $07010E.l		; EF 0E 01 07
	brk $1F.b		; 00 1F
	jsr $1827.w		; 20 27 18
	and $3E06.w,Y		; 39 06 3E
	ora ($FF.b,X)		; 01 FF
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	tsb $0606.w		; 0C 06 06
	clc		; 18
	sec		; 38
	ora [$1F.b]		; 07 1F
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	adc $FF3EFF.l,X		; 7F FF 3E FF
	ora $E2FE.w,Y		; 19 FE E2
	ora $03FC.w,X		; 1D FC 03
	jsr ($5C02.w,X)		; FC 02 5C
	bra  -4.b		; 80 FC
	brk $F7.b		; 00 F7
	php		; 08
	sbc $00FE00.l,X		; FF 00 FE 00
	trb $8000.w		; 1C 00 80
	bra -64.b		; 80 C0
	cpy #$E000.w		; C0 00 E0
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $FF.b		; C6 FF
	inc $FF.b		; E6 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	ldx #$A2.b		; A2 A2
	dey		; 88
	iny		; C8
	bra -64.b		; 80 C0
	cpy $C4.b		; C4 C4
	cmp ($D1.b),Y		; D1 D1
	cpy #$C0.b		; C0 C0
	bpl -112.b		; 10 90
	brk $80.b		; 00 80
	cop $A2.b		; 02 A2
	php		; 08
	iny		; C8
	brk $C0.b		; 00 C0
	brk $C4.b		; 00 C4
	bpl -47.b		; 10 D1
	brk $C0.b		; 00 C0
	xce		; FB
	jsr ($FFFC.w,X)		; FC FC FF
	inc $FFFF.w,X		; FE FF FF
	sbc $BEBEFD.l,X		; FF FD BE BE
	cmp ($D2.b,X)		; C1 D2
	xba		; EB
	dec $FCFA.w		; CE FA FC
	brk $7F.b		; 00 7F
	bra  31.b		; 80 1F
	cpx #$FF.b		; E0 FF
	brk $BE.b		; 00 BE
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	tsb $08E8.w		; 0C E8 08
	ora $05.b		; 05 05
	sta ($41.b,X)		; 81 41
	eor $83.b,S		; 43 83
	lda $C3.b,S		; A3 C3
	cmp $23.b,S		; C3 23
	sta $43.b,S		; 83 43
	and [$27.b]		; 27 27
	ora [$07.b]		; 07 07
	ora $05.b		; 05 05
	eor ($01.b,X)		; 41 01
	sta $03.b,S		; 83 03
	cmp $03.b,S		; C3 03
	and $03.b,S		; 23 03
	eor $03.b,S		; 43 03
	and $27.b,S		; 23 27
	ora [$07.b]		; 07 07
	ora $0F3310.l		; 0F 10 33 0F
	tas		; 1B
	ora [$1F.b]		; 07 1F
	ora [$0F.b]		; 07 0F
	sbc [$AF.b],Y		; F7 AF
	and [$57.b],Y		; 37 57
	adc $10EF9F.l		; 6F 9F EF 10
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	ora $06.b,S		; 03 06
	ora ($17.b,X)		; 01 17
	brk $D7.b		; 00 D7
	bpl -81.b		; 10 AF
	jsr $606F.w		; 20 6F 60
	phb		; 8B
	ora [$5B.b]		; 07 5B
	lda [$A7.b]		; A7 A7
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $ABFFE7.l,X		; FF E7 FF AB
	cmp [$3B.b],Y		; D7 3B
	sbc $A40106.l,X		; FF 06 01 A4
	ora $DF.b,S		; 03 DF
	brk $3E.b		; 00 3E
	cmp ($7F.b,X)		; C1 7F
	bra  -1.b		; 80 FF
	brk $D7.b		; 00 D7
	brk $CF.b		; 00 CF
	bmi  -1.b		; 30 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E8FFFF.l,X		; FF FF FF E8
	sbc $E8FFE8.l,X		; FF E8 FF E8
	sbc $E1FFE0.l,X		; FF E0 FF E1
	sbc $E8FFE0.l,X		; FF E0 FF E8
	sbc $E0FFC0.l,X		; FF C0 FF E0
	beq -32.b		; F0 E0
	beq -16.b		; F0 F0
	beq -12.b		; F0 F4
	pea $F0F0.w		; F4 F0 F0
	beq -16.b		; F0 F0
	cpx #$F0.b		; E0 F0
	cpx #$F0.b		; E0 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	sbc [$FF.b]		; E7 FF
	sbc $FFFFFF.l		; EF FF FF FF
	xce		; FB
	sbc $F3FFFB.l,X		; FF FB FF F3
	sbc $E2FFE2.l,X		; FF E2 FF E2
	sbc $81FFC4.l,X		; FF C4 FF 81
	sbc $80FFA0.l,X		; FF A0 FF 80
	sbc $40FF00.l,X		; FF 00 FF 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $A1C0A0.l,X		; FF A0 C0 A1
	sbc ($C0.b,X)		; E1 C0
	bra  64.b		; 80 40
	bra  80.b		; 80 50
	bcc -128.b		; 90 80
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	jsr $E000.w		; 20 00 E0
	and ($E1.b,X)		; 21 E1
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bpl -48.b		; 10 D0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	jsr $00A0.w		; 20 A0 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	sta ($11.b),Y		; 91 11
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	ora ($11.b),Y		; 11 11
	ora ($01.b,X)		; 01 01
	lda ($A1.b,X)		; A1 A1
	and #$29.b		; 29 29
	ora ($01.b,X)		; 01 01
	sta $85.b		; 85 85
	sta ($91.b),Y		; 91 91
	sta ($81.b,X)		; 81 81
	and $23.b,S		; 23 23
	ora $03.b,S		; 03 03
	ora ($A1.b,X)		; 01 A1
	ora ($29.b,X)		; 01 29
	ora ($01.b,X)		; 01 01
	ora ($85.b,X)		; 01 85
	ora ($91.b),Y		; 11 91
	ora ($81.b,X)		; 01 81
	and $23.b,S		; 23 23
	ora $03.b,S		; 03 03
	lda $3F3FBF.l,X		; BF BF 3F 3F
	sbc $FFFBFF.l,X		; FF FF FB FF
	adc [$FB.b],Y		; 77 FB
	sbc $F3EFF3.l,X		; FF F3 EF F3
	cmp $BFBFE3.l,X		; DF E3 BF BF
	ora $FF3B3F.l,X		; 1F 3F 3B FF
	sbc ($FF.b,S),Y		; F3 FF
	adc ($FF.b,S),Y		; 73 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	cpy #$FEFF.w		; C0 FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFDF.l,X		; FF DF FF DF
	sbc $9FFF9F.l,X		; FF 9F FF 9F
	sbc $C6FF0F.l,X		; FF 0F FF C6
	sbc $84FF85.l,X		; FF 85 FF 84
	sbc $19FF0C.l,X		; FF 0C FF 19
	sbc $00FF1A.l,X		; FF 1A FF 00
	sbc $E7FF04.l,X		; FF 04 FF E7
	asl $1CEF.w,X		; 1E EF 1C
	sbc $28F618.l		; EF 18 F6 28
	sbc $30E630.l,X		; FF 30 E6 30
	cmp $9861.w		; CD 61 98
	cmp $00.b,S		; C3 00
	rol $BD80.w,X		; 3E 80 BD
	bra -70.b		; 80 BA
	sta ($B8.b,X)		; 81 B8
	lda ($B0.b,S),Y		; B3 B0
	lda [$B8.b]		; A7 B8
	lsr $9E70.w		; 4E 70 9E
.ACCU 8
.INDEX 8
	sep #$BE		; E2 BE
	rti		; 40

	ror $FEA0.w,X		; 7E A0 FE
	bvc  -2.b		; 50 FE
	ldy $3F.b,X		; B4 3F
	mvn $CC,$BB		; 54 BB CC
	adc $008F90.l		; 6F 90 8F 00
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	bpl  80.b		; 10 50
	bmi  52.b		; 30 34
	cpy #$54.b		; C0 54
	rti		; 40

	jmp $B880.w		; 4C 80 B8
	brk $70.b		; 00 70
	and ($86.b),Y		; 31 86
	adc ($1C.b),Y		; 71 1C
	adc ($98.b),Y		; 71 98
	rti		; 40

	tya		; 98
	brk $98.b		; 00 98
	cpy $FB30.w		; CC 30 FB
	ora ($7B.b,X)		; 01 7B
	bra  60.b		; 80 3C
	cpy $68.b		; C4 68
	dey		; 88
	cpx #$80.b		; E0 80
	beq -112.b		; F0 90
	beq -112.b		; F0 90
	bmi  48.b		; 30 30
	cpy #$C5.b		; C0 C5
	adc ($F6.b)		; 72 F6
	sbc $20F000.l,X		; FF 00 F0 20
	cpx #$00.b		; E0 00
	asl A		; 0A
	asl A		; 0A
	eor $43.b,S		; 43 43
	.db $82, $82, $92		; 82 82 92
	sta ($C5.b)		; 92 C5
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $0A.b		; 00 0A
	ora ($43.b,X)		; 01 43
	brk $82.b		; 00 82
	bpl -110.b		; 10 92
	brk $47.b		; 00 47
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora ($10.b),Y		; 11 10
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $B7.b		; 00 B7
	brk $6F.b		; 00 6F
	ora ($DD.b,X)		; 01 DD
	ora ($3B.b,X)		; 01 3B
	ora ($78.b,X)		; 01 78
	adc $FBFB.w,Y		; 79 FB FB
	adc ($71.b),Y		; 71 71
	cop $06.b		; 02 06
	bit $6C.b		; 24 6C
	eor #$D9.b		; 49 D9
	ora $333B.w,Y		; 19 3B 33
	adc [$01.b],Y		; 77 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $0C.b,S		; 03 0C
	brk $0F.b		; 00 0F
	asl $0E.b		; 06 0E
	ora [$08.b]		; 07 08
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora $06.b,S		; 03 06
	asl $06.b		; 06 06
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $78.b		; 00 78
	sta [$BC.b]		; 87 BC
	cpy #$90.b		; C0 90
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $03.b		; 00 03
	brk $10.b		; 00 10
	bcc -120.b		; 90 88
	iny		; C8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	bit $24.b		; 24 24
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	php		; 08
	asl $0E08.w		; 0E 08 0E
	lsr A		; 4A
	lsr $0000.w		; 4E 00 00
	brk $04.b		; 00 04
	brk $24.b		; 00 24
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	.db $42, $4E		; 42 4E
	cop $02.b		; 02 02
	jsr $8020.w		; 20 20 80
	bra   4.b		; 80 04
	tsb $11.b		; 04 11
	ora ($82.b),Y		; 11 82
	sta $06.b,S		; 83 06
	ora [$48.b]		; 07 48
	eor $000202.l		; 4F 02 02 00
	jsr $8080.w		; 20 80 80
	tsb $04.b		; 04 04
	bpl  17.b		; 10 11
	bra -125.b		; 80 83
	cop $07.b		; 02 07
	pha		; 48
	eor $5F3B2B.l		; 4F 2B 3B 5F
	adc $9FFFCF.l,X		; 7F CF FF 9F
	sbc $7FFF3F.l,X		; FF 3F FF 7F
	sbc $DFFF6F.l,X		; FF 6F FF DF
	sbc $143B02.l,X		; FF 02 3B 14
	adc $12FF48.l,X		; 7F 48 FF 12
	sbc $41FF25.l,X		; FF 25 FF 41
	sbc $82FF43.l,X		; FF 43 FF 82
	sbc $FEFEFE.l,X		; FF FE FE FE
	inc $FDFC.w,X		; FE FC FD
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $4EFFFF.l,X		; FF FF FF 4E
	sbc $F4FF5E.l,X		; FF 5E FF F4
	inc $FEC2.w,X		; FE C2 FE
	sta [$FF.b]		; 87 FF
	tsb $20FF.w		; 0C FF 20
	sbc $05FF00.l,X		; FF 00 FF 05
	sbc $FF43.w,X		; FD 43 FF
	ora $FF7FFF.l		; 0F FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	asl A		; 0A
	ora #$47.b		; 09 47
	eor [$0F.b]		; 47 0F
	ora $F07F7C.l		; 0F 7C 7F F0
	sbc $08FF79.l,X		; FF 79 FF 08
	sbc $F7FFF8.l,X		; FF F8 FF F7
	sed		; F8
	sbc $E5DEF0.l		; EF F0 DE E5
	lda $C37DC1.l,X		; BF C1 7D C3
	xce		; FB
	ora [$F6.b],Y		; 17 F6
	ora $E09F6C.l		; 0F 6C 9F E0
	sbc $84FFC0.l,X		; FF C0 FF 84
	sbc $40FF00.l,X		; FF 00 FF 40
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $6FFF00.l,X		; FF 00 FF 6F
	sbc $97FFC7.l,X		; FF C7 FF 97
	sbc $3FEF87.l		; EF 87 EF 3F
	cmp $67DF2F.l		; CF 2F DF 67
	sta $040FF6.l,X		; 9F F6 0F 04
	sbc $84FF04.l,X		; FF 04 FF 84
	sbc $04FF04.l,X		; FF 04 FF 04
	sbc $00FF0C.l,X		; FF 0C FF 00
	sbc $D8FF00.l,X		; FF 00 FF D8
	inc $FCD0.w,X		; FE D0 FC
	bne  -8.b		; D0 F8
	sta ($F8.b,X)		; 81 F8
	bra -15.b		; 80 F1
	tsb $E5.b		; 04 E5
	ora ($A0.b,X)		; 01 A0
	brk $A0.b		; 00 A0
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	brk $F1.b		; 00 F1
	tsb $E5.b		; 04 E5
	brk $A1.b		; 00 A1
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	eor ($41.b,X)		; 41 41
	rti		; 40

	rti		; 40

	cop $02.b		; 02 02
	rti		; 40

	rti		; 40

	mvp $A0,$44		; 44 44 A0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	rti		; 40

	brk $02.b		; 00 02
	brk $40.b		; 00 40
	brk $44.b		; 00 44
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	ora $02.b,S		; 03 02
	tsb $060E.w		; 0C 0E 06
	tsb $48.b		; 04 48
	jmp $1814.w		; 4C 14 18
	rts		; 60

	bvs   1.b		; 70 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $08.b,S		; 03 08
	ora $400700.l		; 0F 00 07 40
	eor $001F00.l		; 4F 00 1F 00
	adc $BB0101.l,X		; 7F 01 01 BB
	cpy #$DB.b		; C0 DB
	cpx #$CE.b		; E0 CE
	cmp ($DE.b),Y		; D1 DE
	cmp ($EB.b)		; D2 EB
	sbc $FCE5.w,Y		; F9 E5 FC
	sbc $EF.b,S		; E3 EF
	cpx #$EF.b		; E0 EF
	cop $C6.b		; 02 C6
	brk $E4.b		; 00 E4
	ora ($F1.b,X)		; 01 F1
	eor ($F0.b,X)		; 41 F0
	cmp [$F1.b],Y		; D7 F1
	wai		; CB
	inx		; E8
	.db $82, $F2, $A1		; 82 F2 A1
	sbc ($47.b),Y		; F1 47
	cmp [$2B.b]		; C7 2B
	sbc $F916.w		; ED 16 F9
	lda $1887F4.l		; AF F4 87 18
	xba		; EB
	lsr $93F3.w		; 4E F3 93
	tyx		; BB
	sta $02.b,S		; 83 02
	cmp [$00.b]		; C7 00
	adc $64BF80.l		; 6F 80 BF 64
	adc $F217F0.l		; 6F F0 17 F2
	eor $FD.b,S		; 43 FD
	sta ($7F.b),Y		; 91 7F
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $08.b		; 02 08
	php		; 08
	brk $00.b		; 00 00
	and $25.b		; 25 25
	rti		; 40

	rti		; 40

	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $25.b		; 04 25
	brk $40.b		; 00 40
	brk $C1.b		; 00 C1
	tda		; 7B
	ora ($37.b,X)		; 01 37
	ora $37.b,S		; 03 37
	and $AF.b,S		; 23 AF
	lda [$37.b]		; A7 37
	and $EF4F4F.l,X		; 3F 4F 4F EF
	sbc $33DF5F.l		; EF 5F DF 33
	and [$07.b],Y		; 37 07
	ora $072F07.l		; 0F 07 2F 07
	lda [$16.b]		; A7 16
	and [$0C.b],Y		; 37 0C
	eor $10EF28.l		; 4F 28 EF 10
	cmp $000000.l,X		; DF 00 00 00
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
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $0D.b		; 06 0D
	ora $2D2D.w		; 0D 2D 2D
	rtl		; 6B

	rtl		; 6B

	sbc [$E7.b]		; E7 E7
	ora [$17.b],Y		; 17 17
	and ($32.b)		; 32 32
	asl $1B.b,X		; 16 1B
	ora [$1B.b],Y		; 17 1B
	tas		; 1B
	ora ($2B.b,S),Y		; 13 2B
	and ($22.b,S),Y		; 33 22
	and ($32.b,S),Y		; 33 32
	and $56.b,S		; 23 56
	adc [$46.b]		; 67 46
	adc [$02.b]		; 67 02
	ora $031F03.l,X		; 1F 03 1F 03
	ora $023F02.l,X		; 1F 02 3F 02
	and $043F02.l,X		; 3F 02 3F 04
	adc $337F04.l,X		; 7F 04 7F 33
	and $F37F.w,X		; 3D 7F F3
	and $9FFFC7.l,X		; 3F C7 FF 9F
	inc $7CFF.w,X		; FE FF 7C
	sbc $38FF3C.l,X		; FF 3C FF 38
	adc $323F01.l,X		; 7F 01 3F 32
	sbc $98FF04.l,X		; FF 04 FF 98
	sbc $00FF60.l,X		; FF 60 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $9FFFDF.l,X		; FF DF FF 9F
	sbc $3FFFBF.l,X		; FF BF FF 3F
	sbc $64FF79.l,X		; FF 79 FF 64
	xce		; FB
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	sty $F8.b		; 84 F8
	ora ($FF.b,X)		; 01 FF
	asl $FF.b		; 06 FF
	php		; 08
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $83FF7F.l,X		; FF 7F FF 83
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $00FF06.l,X		; FF 06 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFE.l,X		; FF FE FF FD
	inc $FCFA.w,X		; FE FA FC
	sta ($FF.b,X)		; 81 FF
	brk $FF.b		; 00 FF
	php		; 08
	sbc $12FF00.l,X		; FF 00 FF 12
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $99FF00.l,X		; FF 00 FF 99
	inc $FCF3.w,X		; FE F3 FC
	sbc [$F8.b]		; E7 F8
	sta $906FF0.l		; 8F F0 6F 90
	cmp $003F20.l,X		; DF 20 3F 00
	adc $FF0000.l,X		; 7F 00 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	pea $E80E.w		; F4 0E E8
	asl $0CF0.w,X		; 1E F0 0C
	sbc ($09.b),Y		; F1 09
	cpx #$E010.w		; E0 10 E0
	bpl -60.b		; 10 C4
	and ($99.b,X)		; 21 99
	.db $42, $00		; 42 00
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	ora ($F9.b,X)		; 01 F9
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E7.b		; 00 E7
	brk $DF.b		; 00 DF
	tsb $0800.w		; 0C 00 08
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	jsr $0022.w		; 20 22 00
	bra  66.b		; 80 42
	eor ($00.b,X)		; 41 00
	ora [$00.b],Y		; 17 00
	tsb $0800.w		; 0C 00 08
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	jsr $0022.w		; 20 22 00
	bra  64.b		; 80 40
	eor $00.b,S		; 43 00
	ora [$90.b],Y		; 17 90
	ora $3D30.w,X		; 1D 30 3D
	bmi  57.b		; 30 39
	jsr $6039.w		; 20 39 60
	adc $7140.w,Y		; 79 40 71
	cpy #$00F1.w		; C0 F1 00
	sbc ($10.b,X)		; E1 10
	sbc $20FF20.l,X		; FF 20 FF 20
	sbc $40FF20.l,X		; FF 20 FF 40
	sbc $80FF40.l,X		; FF 40 FF 80
	sbc $E4E100.l,X		; FF 00 E1 E4
	inc $FE64.w,X		; FE 64 FE
	pha		; 48
	jsr ($FC48.w,X)		; FC 48 FC
	rti		; 40

	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F3.b		; 00 F3
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $F3.b		; 00 F3
	ora $E3.b		; 05 E3
	eor #$2B87.w		; 49 87 2B
	ora $373FD3.l,X		; 1F D3 3F 37
	ora $3F3F4F.l		; 0F 4F 3F 3F
	sbc $00FF00.l,X		; FF 00 FF 00
	xce		; FB
	brk $F7.b		; 00 F7
	bpl -41.b		; 10 D7
	jsr $00AF.w		; 20 AF 00
	cmp $003F00.l,X		; DF 00 3F 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F0FFFC.l,X		; FF FC FF F0
	sbc $09FCC2.l,X		; FF C2 FC 09
	beq 120.b		; F0 78
	sty $00.b		; 84 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $D2FC00.l,X		; FF 00 FC D2
	cpx #$C3AC.w		; E0 AC C3
	sec		; 38
	cmp [$13.b]		; C7 13
	cpx $2F.b		; E4 2F
	bpl -117.b		; 10 8B
	stz $94.b		; 64 94
	phd		; 0B
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	jsr ($FA02.w,X)		; FC 02 FA
	tsb $F6.b		; 04 F6
	php		; 08
	cpx $FA10.w		; EC 10 FA
	ora ($E4.b,X)		; 01 E4
	ora ($23.b,S),Y		; 13 23
	pei ($50.b)		; D4 50
	jsr $FE00.w		; 20 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $70.b		; 00 70
	dey		; 88
	bpl  24.b		; 10 18
	and ($10.b,X)		; 21 10
	rts		; 60

	asl $0FE1.w,X		; 1E E1 0F
	beq  24.b		; F0 18
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3703.w		; 1C 03 37
	tsb $087E.w		; 0C 7E 08
	inc $0E.b,X		; F6 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $20.b,S		; 23 20
	and [$20.b]		; 27 20
	and ($20.b,X)		; 21 20
	rts		; 60

	cpy #$C020.w		; C0 20 C0
	jsr $40C0.w		; 20 C0 40
	bra -112.b		; 80 90
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bpl -112.b		; 10 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $20.b		; 00 20
	brk $0F.b		; 00 0F
	tsb $7873.w		; 0C 73 78
	sty $80.b		; 84 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0F00.w		; 20 00 0F
	brk $7F.b		; 00 7F
	brk $FC.b		; 00 FC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $400C.w		; 0C 0C 40
	rti		; 40

	php		; 08
	php		; 08
	cop $02.b		; 02 02
	rti		; 40

	rti		; 40

	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $4040.w		; 0C 40 40
	php		; 08
	php		; 08
	cop $02.b		; 02 02
	brk $40.b		; 00 40
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	bmi  63.b		; 30 3F
	.db $42, $6B		; 42 6B
	txa		; 8A
	ldx #$0C31.w		; A2 31 0C
	phd		; 0B
	ora [$4F.b],Y		; 17 4F
	and #$2B1F.w		; 29 1F 2B
	ora $3F00.w,X		; 1D 00 3F
	brk $7F.b		; 00 7F
	cop $EB.b		; 02 EB
	brk $B3.b		; 00 B3
	php		; 08
	ora $085F04.l		; 0F 04 5F 08
	and $FA3F00.l,X		; 3F 00 3F FA
	mvp $18,$0E		; 44 0E 18
	eor $CEEE31.l		; 4F 31 EE CE
	ldx $FEFE.w,Y		; BE FE FE
	inc $CC8D.w,X		; FE 8D CC
	inc A		; 1A
	sta $FF40.w,Y		; 99 40 FF
	brk $07.b		; 00 07
	ora $14F3.w,X		; 1D F3 14
	sbc $8CFF1E.l		; EF 1E FF 8C
	sbc $00FF08.l,X		; FF 08 FF 00
	sbc $1B0F3B.l,X		; FF 3B 0F 1B
	ora $170917.l		; 0F 17 09 17
	php		; 08
	ora #$0900.w		; 09 00 09
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	ora $001F01.l,X		; 1F 01 1F 00
	ora $001D00.l,X		; 1F 00 1D 00
	ora #$0900.w		; 09 00 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	rti		; 40

	bra  96.b		; 80 60
	bra -80.b		; 80 B0
	cpy #$E0D0.w		; C0 D0 E0
	jsr ($E7E0.w,X)		; FC E0 E7
	sed		; F8
	sbc $BD7E.w,X		; FD 7E BD
	adc $00C000.l,X		; 7F 00 C0 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	beq  32.b		; F0 20
	jsr ($FF20.w,X)		; FC 20 FF
	bpl  -1.b		; 10 FF
	php		; 08
	sbc $5F4F37.l,X		; FF 37 4F 5F
	lda $2F1F2F.l,X		; BF 2F 1F 2F
	ora $CF1F6F.l,X		; 1F 6F 1F CF
	and $FF3FFF.l,X		; 3F FF 3F FF
	sbc $077F07.l,X		; FF 07 7F 07
	sbc $0F3F0F.l,X		; FF 0F 3F 0F
	and $0F7F0F.l,X		; 3F 0F 7F 0F
	sbc $1EFF0E.l,X		; FF 0E FF 1E
	sbc $9EFCBE.l,X		; FF BE FC 9E
	jsr ($FE9D.w,X)		; FC 9D FE
	cmp $FEDFFE.l,X		; DF FE DF FE
	sbc $FFFE.w,X		; FD FE FF
	inc $FFFF.w,X		; FE FF FF
	clc		; 18
	inc $FE8C.w,X		; FE 8C FE
	sty $8CFF.w		; 8C FF 8C
	sbc $DCFFDC.l,X		; FF DC FF DC
	sbc $B6FFDE.l,X		; FF DE FF B6
	sbc $441011.l,X		; FF 11 10 44
	mvp $00,$00		; 44 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	bpl  17.b		; 10 11
	mvp $00,$44		; 44 44 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	sta ($00.b,X)		; 81 00
	ora $00.b		; 05 00
	brk $70.b		; 00 70
	rti		; 40

	rts		; 60

	rti		; 40

	wai		; CB
	phb		; 8B
	cmp $9FDE9F.l,X		; DF 9F DE 9F
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FCF8.w,X		; FE F8 FC
	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	phd		; 0B
	xba		; EB
	trb $98FF.w		; 1C FF 98
	sbc $D0FEF0.l,X		; FF F0 FE D0
	inc $FC40.w,X		; FE 40 FC
	ora $771B3F.l		; 0F 3F 1B 77
	adc [$DF.b]		; 67 DF
	plx		; FA
	ldy $FCFA.w,X		; BC FA FC
	cpx $F8.b		; E4 F8
	inc $7466.w,X		; FE 66 74
	stz $11.b,X		; 74 11
	ora [$22.b],Y		; 17 22
	and $681F26.l		; 2F 26 1F 68
	and $E0FFF0.l,X		; 3F F0 FF E0
	sbc $70FF46.l,X		; FF 46 FF 70
	sbc [$F7.b],Y		; F7 F7
	cmp [$AF.b]		; C7 AF
	cmp [$6F.b],Y		; D7 6F
	sta $A63F4F.l,X		; 9F 4F 3F A6
	adc $B8FE1C.l,X		; 7F 1C FE B8
	jmp ($33FF.w,X)		; 7C FF 33
	stx $F7.b		; 86 F7
	sty $EF.b		; 84 EF
	ora $FF.b		; 05 FF
	brk $FF.b		; 00 FF
	jsr $00FF.w		; 20 FF 00
	inc $FC10.w,X		; FE 10 FC
	jsr $00FF.w		; 20 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $320D.w		; 1C 0D 32
	dec A		; 3A
	eor $7F3F.w,X		; 5D 3F 7F
	and $7F1F7F.l,X		; 3F 7F 1F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3200.w		; 1C 00 32
	brk $4D.b		; 00 4D
	bpl  95.b		; 10 5F
	jsr $205F.w		; 20 5F 20
	adc $3F7F00.l,X		; 7F 00 7F 3F
	and $7FFFFF.l,X		; 3F FF FF 7F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	inc $DEDF.w,X		; FE DF DE
	lda $2FFE3D.l,X		; BF 3D FE 2F
	bpl -61.b		; 10 C3
	bit $334C.w,X		; 3C 4C 33
	and $00FF40.l,X		; 3F 40 FF 00
	dec $AE00.w,X		; DE 00 AE
	bpl -34.b		; 10 DE
	jsr $C7EF.w		; 20 EF C7
	tyx		; BB
	cmp [$BB.b]		; C7 BB
	cmp $2F.b		; C5 2F
	iny		; C8
	and [$88.b]		; 27 88
	sbc [$1A.b],Y		; F7 1A
	eor $98.b,S		; 43 98
	sbc ($F9.b),Y		; F1 F9
	cmp ($2F.b,S),Y		; D3 2F
	sta ($2F.b,S),Y		; 93 2F
	bcc  47.b		; 90 2F
	bvc 103.b		; 50 67
	cli		; 58
	and $F0AF4A.l		; 2F 4A AF F0
	sta [$90.b],Y		; 97 90
	cmp [$FF.b],Y		; D7 FF
	sta $DBDBFB.l,X		; 9F FB DB DB
	xce		; FB
	xba		; EB
	xba		; EB
	lda $63.b,S		; A3 63
	lda $63.b,S		; A3 63
	cmp $C3.b,S		; C3 C3
	cmp [$C7.b]		; C7 C7
	txy		; 9B
	sbc $DAFF99.l,X		; FF 99 FF DA
	sbc $01FF03.l,X		; FF 03 FF 01
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $FFFF01.l,X		; FF 01 FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFB.l,X		; FF FB FF EF
	sbc $1FFF4D.l,X		; FF 4D FF 1F
	sbc $FEFF3E.l,X		; FF 3E FF FE
	sbc $FBFFF6.l,X		; FF F6 FF FB
	sbc $E0FFDB.l,X		; FF DB FF E0
	bne -32.b		; D0 E0
	bne -16.b		; D0 F0
	inx		; E8
	beq -24.b		; F0 E8
	pla		; 68
	cpx $70.b		; E4 70
	pea $F0B0.w		; F4 B0 F0
	cld		; D8
	sed		; F8
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	cpy #$C0F8.w		; C0 F8 C0
	sed		; F8
	rts		; 60

	cpx $F460.w		; EC 60 F4
	bmi -16.b		; 30 F0
	bpl  -8.b		; 10 F8
	inc $3B.b,X		; F6 3B
	stz $77.b		; 64 77
	plp		; 28
	dec $1689.w		; CE 89 16
	ora $0C.b,S		; 03 0C
	and $2C1E10.l		; 2F 10 1E 2C
	asl $2028.w,X		; 1E 28 20
	sbc $02FF60.l,X		; FF 60 FF 02
	sbc $00F704.l,X		; FF 04 F7 00
	inc $B808.w		; EE 08 B8
	php		; 08
	bit $2C04.w		; 2C 04 2C
	and $23.b		; 25 23
	lsr A		; 4A
	asl $C0.b		; 06 C0
	trb $3890.w		; 1C 90 38
	jsr $6070.w		; 20 70 60
	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cop $FE.b		; 02 FE
	brk $9C.b		; 00 9C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	rti		; 40

	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora $5F2F23.l,X		; 1F 23 2F 5F
	eor $00003F.l,X		; 5F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	and $00.b,S		; 23 00
	eor $083700.l,X		; 5F 00 37 08
	ror $5F3F.w,X		; 7E 3F 5F
	and $2F1F3F.l,X		; 3F 3F 1F 2F
	ora $371FEF.l,X		; 1F EF 1F 37
	wai		; CB
	sbc [$CB.b],Y		; F7 CB
	sbc [$CF.b],Y		; F7 CF
	tsb $067F.w		; 0C 7F 06
	adc $033F07.l,X		; 7F 07 3F 03
	and $C13F00.l,X		; 3F 00 3F C1
	and $C33FC3.l,X		; 3F C3 3F C3
	and $3FFFDF.l,X		; 3F DF FF 3F
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFBFDF.l,X		; FF DF BF FF
	sta $3FFF1D.l,X		; 9F 1D FF 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $9FFF3F.l,X		; FF 3F FF 9F
	sbc $9FFF9F.l,X		; FF 9F FF 9F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FBFFD7.l,X		; FF D7 FF FB
	sbc $FEFFDD.l,X		; FF DD FF FE
	sbc $F6FFFE.l,X		; FF FE FF F6
	sbc $C7FFED.l,X		; FF ED FF C7
	sbc $080602.l,X		; FF 02 06 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   4.b		; 10 04
	tsb $00.b		; 04 00
	ora $13.b,S		; 03 13
	ora $0600.w,X		; 1D 00 06
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	rts		; 60

	rts		; 60

	cop $02.b		; 02 02
	brk $00.b		; 00 00
	dey		; 88
	bit #$3D22.w		; 89 22 3D
	asl $E3.b,X		; 16 E3
	ldy $0E22.w		; AC 22 0E
	tsb $00.b		; 04 00
	rts		; 60

	cop $02.b		; 02 02
	brk $00.b		; 00 00
	dey		; 88
	dey		; 88
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	jsr $00FF.w		; 20 FF 00
	sbc $18E444.l,X		; FF 44 E4 18
	iny		; C8
	lda $26A7.w		; AD A7 26
	asl $7CF8.w,X		; 1E F8 7C
	bvs -16.b		; 70 F0
	cpx $E4.b		; E4 E4
	dey		; 88
	cmp #$C700.w		; C9 00 C7
	php		; 08
	cmp $00FF20.l,X		; DF 20 FF 00
	inc $FC40.w,X		; FE 40 FC
	brk $F0.b		; 00 F0
	jsr $80E4.w		; 20 E4 80
	cmp #$647C.w		; C9 7C 64
	iny		; C8
	inx		; E8
	bra -128.b		; 80 80
	ora ($02.b,S),Y		; 13 02
	and [$01.b]		; 27 01
	clc		; 18
	cli		; 58
	bmi -96.b		; 30 A0
	cpy #$00C0.w		; C0 C0 00
	jsr ($E800.w,X)		; FC 00 E8
	brk $80.b		; 00 80
	brk $13.b		; 00 13
	brk $27.b		; 00 27
	brk $58.b		; 00 58
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	and $0F171F.l		; 2F 1F 17 0F
	and $879F37.l		; 2F 37 9F 87
	sbc $3FDF1F.l,X		; FF 1F DF 3F
	and [$EF.b],Y		; 37 EF
	phb		; 8B
	ora [$1F.b],Y		; 17 1F
	brk $0F.b		; 00 0F
	tsb $37.b		; 04 37
	jsr $8487.w		; 20 87 84
	ora $003F10.l,X		; 1F 10 3F 00
	cmp $000720.l		; CF 20 07 00
	xce		; FB
	adc $BD5B.w,X		; 7D 5B BD
	lda $F8E7DD.l		; AF DD E7 F8
	sbc $E5DFF0.l,X		; FF F0 DF E5
	ldx $7FD1.w,Y		; BE D1 7F
	txa		; 8A
	eor $BC21.w,X		; 5D 21 BC
	ora ($DC.b,X)		; 01 DC
	ora $F8.b		; 05 F8
	ora ($E0.b,X)		; 01 E0
	bpl -32.b		; 10 E0
	ora $D0.b		; 05 D0
	ora ($82.b),Y		; 11 82
	phd		; 0B
	sbc #$FA71.w		; E9 71 FA
	.db $82, $E4, $FC		; 82 E4 FC
	dec $FFFA.w		; CE FA FF
	tsb $FEFF.w		; 0C FF FE
	xce		; FB
	jsr ($F977.w,X)		; FC 77 F9
	brk $07.b		; 00 07
	bra -121.b		; 80 87
	rti		; 40

	sbc $08FF02.l,X		; FF 02 FF 08
	inc $FFF9.w,X		; FE F9 FF
	sbc $20FF.w,Y		; F9 FF 20
	sbc $A5A5.w,X		; FD A5 A5
	ora $700D.w		; 0D 0D 70
	bvs  34.b		; 70 22
	jsl $820000.l		; 22 00 00 82
	brk $CA.b		; 00 CA
	dey		; 88
	sep #$00		; E2 00
	jsr $00FF.w		; 20 FF 00
	sbc $02FF60.l,X		; FF 60 FF 02
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $C0BF08.l,X		; 7F 08 BF C0
	cmp $FFFFFD.l,X		; DF FD FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	adc $CCFFD9.l,X		; 7F D9 FF CC
	sbc $46FFCC.l,X		; FF CC FF 46
	sbc $53FF56.l,X		; FF 56 FF 53
	sbc $31FF33.l,X		; FF 33 FF 31
	sbc $ECF8D8.l,X		; FF D8 F8 EC
	jsr ($F4E4.w,X)		; FC E4 F4
	cpx $F4.b		; E4 F4
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	tya		; 98
	sed		; F8
	dey		; 88
	jsr ($F484.w,X)		; FC 84 F4
	mvp $60,$F4		; 44 F4 60
	beq  96.b		; F0 60
	beq  32.b		; F0 20
	beq -96.b		; F0 A0
	beq 127.b		; F0 7F
	adc $FE7FFF.l,X		; 7F FF 7F FE
	sbc $FCFFFC.l,X		; FF FC FF FC
	inc $FFFE.w,X		; FE FE FF
	inc $FEFF.w,X		; FE FF FE
	sbc $46FF61.l,X		; FF 61 FF 46
	sbc $4CFF4C.l,X		; FF 4C FF 4C
	sbc $8CFE48.l,X		; FF 48 FE 8C
	sbc $34FF98.l,X		; FF 98 FF 34
	sbc $60F8F8.l,X		; FF F8 F8 60
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	bvs   0.b		; 70 00
	bvs 100.b		; 70 64
	bit $E0.b,X		; 34 E0
	bmi -96.b		; 30 A0
	bvs -24.b		; 70 E8
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	tsb $74.b		; 04 74
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	sbc $FFFFE8.l,X		; FF E8 FF FF
	sbc $F8FFFC.l,X		; FF FC FF F8
	xce		; FB
	jsr ($FCFB.w,X)		; FC FB FC
	xce		; FB
	sty $08FF.w		; 8C FF 08
	brk $FC.b		; 00 FC
	asl $F8FF.w,X		; 1E FF F8
	sbc $F1FDF1.l,X		; FF F1 FD F1
	sbc $FDF1.w,X		; FD F1 FD
	brk $8C.b		; 00 8C
	rts		; 60

	adc $13FF.w		; 6D FF 13
	phb		; 8B
	sta $E3.b		; 85 E3
	tad		; 5B
	inc $26.b		; E6 26
	ldx $A6.b		; A6 A6
	lda $5F2D.w		; AD 2D 5F
	eor $031797.l,X		; 5F 97 17 03
	ora $02FF01.l,X		; 1F 01 FF 02
	xce		; FB
	bit $E6.b		; 24 E6
	sty $A6.b		; 84 A6
	php		; 08
	and $DF0E.w		; 2D 0E DF
	ora ($97.b),Y		; 11 97
	asl $3DA9.w,X		; 1E A9 3D
	lsr $8F69.w		; 4E 69 8F
	cmp ($1C.b),Y		; D1 1C
	lda $34.b,X		; B5 34
	eor ($61.b,X)		; 41 61
	sta [$D7.b],Y		; 97 D7
	eor $0091CF.l		; 4F CF 91 00
	dec A		; 3A
	asl A		; 0A
	stz $05.b,X		; 74 05
	inx		; E8
	php		; 08
	bne  20.b		; D0 14
	bra   1.b		; 80 01
	ora $17.b,S		; 03 17
	eor [$4F.b]		; 47 4F
	sbc $01FEA0.l,X		; FF A0 FE 01
	sbc $3FFF1B.l,X		; FF 1B FF 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCFB.w,X		; FD FB FC
	stp		; DB
	bra -95.b		; 80 A1
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	and $FF7F3F.l,X		; 3F 3F 7F FF
	sbc $C8FF.w,X		; FD FF C8
	sbc $0BFB98.l,X		; FF 98 FB 0B
	phd		; 0B
	trb $14.b		; 14 14
	and ($21.b,X)		; 21 21
	adc $63.b,S		; 63 63
	eor [$47.b]		; 47 47
	asl $1C0E.w		; 0E 0E 1C
	trb $1D1D.w		; 1C 1D 1D
	brk $0B.b		; 00 0B
	brk $14.b		; 00 14
	jsr $4321.w		; 20 21 43
	adc $06.b,S		; 63 06
	eor [$0C.b]		; 47 0C
	asl $1C08.w		; 0E 08 1C
	ora $181D.w,Y		; 19 1D 18
	ora $1010.w,Y		; 19 10 10
	rep #$C2		; C2 C2
	bra -127.b		; 80 81
	eor ($42.b,X)		; 41 42
	ora $12.b,X		; 15 12
	jmp $8E42.w		; 4C 42 8E
	sta ($11.b,X)		; 81 11
	clc		; 18
	brk $10.b		; 00 10
	cpy #$80C2.w		; C0 C2 80
	bra  65.b		; 80 41
	rti		; 40

	ora ($10.b,X)		; 01 10
	ora $44.b		; 05 44
	tsb $84.b		; 04 84
	sta [$7F.b]		; 87 7F
	ora $85.b		; 05 85
	trb $381C.w		; 1C 1C 38
	sec		; 38
	adc ($61.b),Y		; 71 61
	adc ($40.b,X)		; 61 40
	.db $82, $C0, $8E		; 82 C0 8E
	cpy $01.b		; C4 01
	sbc $188505.l,X		; FF 05 85 18
	trb $3820.w		; 1C 20 38
	brk $71.b		; 00 71
	brk $61.b		; 00 61
	brk $C2.b		; 00 C2
	brk $CE.b		; 00 CE
	sbc [$FC.b],Y		; F7 FC
	sbc $26F9.w,Y		; F9 F9 26
	jsr $C0F5.w		; 20 F5 C0
	eor ($02.b,X)		; 41 02
	pld		; 2B
	cop $D5.b		; 02 D5
	ora $46.b,S		; 03 46
	ora $A1.b,S		; 03 A1
	sbc $F900.w,X		; FD 00 F9
	brk $25.b		; 00 25
	ora ($F3.b,X)		; 01 F3
	brk $43.b		; 00 43
	brk $2B.b		; 00 2B
	brk $D7.b		; 00 D7
	brk $47.b		; 00 47
	sbc $EF86.w		; ED 86 EF
	cop $8F.b		; 02 8F
	adc ($7D.b)		; 72 7D
	stx $D3.b		; 86 D3
	and $807B.w,Y		; 39 7B 80
	sbc $7B8C00.l,X		; FF 00 8C 7B
	pha		; 48
	dec $DFCB.w,X		; DE CB DF
	ora $7F.b,S		; 03 7F
	ora ($FF.b,X)		; 01 FF
	cop $FF.b		; 02 FF
	ora ($F7.b,S),Y		; 13 F7
	brk $C0.b		; 00 C0
	bmi  56.b		; 30 38
	sbc $20FA05.l,X		; FF 05 FA 20
	inc $BB44.w,X		; FE 44 BB
	brk $FB.b		; 00 FB
	ora $F7.b,S		; 03 F7
	trb $0EFB.w		; 1C FB 0E
	adc $3F09F5.l,X		; 7F F5 09 3F
	jsr $443E.w		; 20 3E 44
	jmp ($7612.w,X)		; 7C 12 76
	and ($77.b,S),Y		; 33 77
	asl $9E.b,X		; 16 9E
	cop $0E.b		; 02 0E
	cpy $C5.b		; C4 C5
	.db $62, $71, $67		; 62 71 67
	adc [$FF.b],Y		; 77 FF
	sbc $637E7F.l,X		; FF 7F 7E 63
	adc ($CE.b,X)		; 61 CE
	dex		; CA
	jmp $2A3942.l		; 5C 42 39 2A
	rti		; 40

	adc ($41.b,S),Y		; 73 41
	adc [$6E.b],Y		; 77 6E
	sbc $607F38.l,X		; FF 38 7F 60
	adc $C8.b,S		; 63 C8
	cmp $205F00.l		; CF 00 5F 20
	tsa		; 3B
	sbc $FFEFFF.l,X		; FF FF EF FF
	lda [$CF.b],Y		; B7 CF
	sta $272F07.l		; 8F 07 2F 27
	ora [$0F.b]		; 07 0F
	stx $1E8F.w		; 8E 8F 1E
	ora $C7FF7F.l		; 0F 7F FF C7
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $06FF22.l,X		; FF 22 FF 06
	sbc $0CFF86.l,X		; FF 86 FF 0C
	sbc $3C0038.l,X		; FF 38 00 3C
	brk $68.b		; 00 68
	bmi -24.b		; 30 E8
	bvs -24.b		; 70 E8
	beq -28.b		; F0 E4
	sei		; 78
	stz $38.b,X		; 74 38
	bit $78.b,X		; 34 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	jsr $20FC.w		; 20 FC 20
	jmp ($7C20.w,X)		; 7C 20 7C
	bit $78.b,X		; 34 78
	adc ($FC.b)		; 72 FC
	plx		; FA
	jsr ($7C7A.w,X)		; FC 7A 7C
	adc $DD3E.w,X		; 7D 3E DD
	ror $DEFF.w,X		; 7E FF DE
	adc $7C30BE.l		; 6F BE 30 7C
	bmi  -2.b		; 30 FE
	bmi  -2.b		; 30 FE
	clc		; 18
	ror $7F18.w,X		; 7E 18 7F
	clc		; 18
	sbc $0CFF1C.l,X		; FF 1C FF 0C
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FFFFBF.l,X		; FF BF FF FF
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	sbc $8CFFE4.l,X		; FF E4 FF 8C
	sbc $1FFF0C.l,X		; FF 0C FF 1F
	sbc $1FFF1F.l,X		; FF 1F FF 1F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $E4F060.l,X		; FF 60 F0 E4
	pea $F0E0.w		; F4 E0 F0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E0C0.w		; E0 C0 E0
	dex		; CA
	nop		; EA
	bra -64.b		; 80 C0
	brk $F0.b		; 00 F0
	mvp $C0,$F4		; 44 F4 C0
	beq -128.b		; F0 80
	cpx #$E040.w		; E0 40 E0
	bra -32.b		; 80 E0
	.db $82, $EA, $00		; 82 EA 00
	cpy #$08F6.w		; C0 F6 08
	pea $FF48.w		; F4 48 FF
	cop $FE.b		; 02 FE
	bra  -8.b		; 80 F8
	brk $ED.b		; 00 ED
	ora $EB.b		; 05 EB
	ora $DE.b,S		; 03 DE
	bpl -32.b		; 10 E0
	sbc $EFE0.w		; ED E0 EF
.ACCU 8
	sep #$EB		; E2 EB
	bra -86.b		; 80 AA
	cpy #$80E0.w		; C0 E0 80
	cmp $88.b,X		; D5 88
	txy		; 9B
	dey		; 88
	tsx		; BA
	lda [$A7.b]		; A7 A7
	sbc [$07.b],Y		; F7 07
	sta $7F7F1F.l,X		; 9F 1F 7F 7F
	jsr ($CCFF.w,X)		; FC FF CC
	dec $8C8C.w		; CE 8C 8C
	and ($3C.b)		; 32 3C
	lda ($E7.b,X)		; A1 E7
	ora $FF.b,S		; 03 FF
	ora [$9F.b]		; 07 9F
	bit $487F.w,X		; 3C 7F 48
	sbc $08CF8C.l,X		; FF 8C CF 08
	sta $9F3F30.l		; 8F 30 3F 9F
	ora $0F47AF.l		; 0F AF 47 0F
	sta [$9F.b]		; 87 9F
	asl $3C3F.w		; 0E 3F 3C
	adc $F8FF7C.l,X		; 7F 7C FF F8
	sbc $05F3.w,X		; FD F3 05
	ora $027F02.l,X		; 1F 02 7F 02
	sbc $1CFE04.l,X		; FF 04 FE 1C
	inc $FF30.w,X		; FE 30 FF
	rts		; 60

	sbc $FFFFE0.l,X		; FF E0 FF FF
	clv		; B8
	sbc $60FF70.l,X		; FF 70 FF 60
	sbc $44FF40.l,X		; FF 40 FF 44
	sbc $80F780.l,X		; FF 80 F7 80
	sbc $00.b,X		; F5 00
	bmi  -6.b		; 30 FA
	eor #$F9.b		; 49 F9
	adc ($73.b,S),Y		; 73 73
	ldy $1FEC.w		; AC EC 1F
	eor $61A323.l,X		; 5F 23 A3 61
	sbc #$E0.b		; E9 E0
	nop		; EA
	tsa		; 3B
	tsa		; 3B
	and $3439.w,Y		; 39 39 34
	bit $70.b,X		; 34 70
	bvs  63.b		; 70 3F
	and $1F.b,S		; 23 1F
	bpl  11.b		; 10 0B
	tsb $0F0E.w		; 0C 0E 0F
	ora ($3B.b)		; 12 3B
	bmi  57.b		; 30 39
	bit $34.b		; 24 34
	jsr $0070.w		; 20 70 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $0F0F0C.l		; 0F 0C 0F 0F
	php		; 08
	ora [$08.b],Y		; 17 08
	sec		; 38
	plp		; 28
	sta $8E7FAE.l,X		; 9F AE 7F 8E
	sbc $43FC00.l,X		; FF 00 FC 43
	sbc ($0F.b,S),Y		; F3 0F
	asl A		; 0A
	asl A		; 0A
	brk $08.b		; 00 08
	jsr $062F.w		; 20 2F 06
	ldx $EF06.w		; AE 06 EF
	brk $F1.b		; 00 F1
	rti		; 40

	sbc $D0FF00.l,X		; FF 00 FF D0
	beq  32.b		; F0 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bmi   0.b		; 30 00
	asl A		; 0A
	asl A		; 0A
	asl $06.b		; 06 06
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	php		; 08
	asl A		; 0A
	asl $06.b		; 06 06
	txa		; 8A
	asl $08.b		; 06 08
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	bra   1.b		; 80 01
	brk $02.b		; 00 02
	brk $3C.b		; 00 3C
	jsr $8E00.w		; 20 00 8E
	brk $0C.b		; 00 0C
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	and ($7F.b,X)		; 21 7F
	ora ($3F.b,X)		; 01 3F
	eor [$3F.b]		; 47 3F
	cmp $5C4D1F.l		; CF 1F 4D 5C
	tas		; 1B
	ora $3C3F.w,X		; 1D 3F 3C
	and ($31.b),Y		; 31 31
	ora ($32.b)		; 12 32
	ora ($13.b,S),Y		; 13 13
	asl $57.b,X		; 16 57
	trb $0BFF.w		; 1C FF 0B
	cpx $FD13.w		; EC 13 FD
	ora ($38.b,S),Y		; 13 38
	sta $797798.l,X		; 9F 98 77 79
	jsr ($E2FC.w,X)		; FC FC E2
	dec A		; 3A
	dec $5E.b		; C6 5E
	cmp ($19.b,X)		; C1 19
	sbc #$79.b		; E9 79
	cpx #$E838.w		; E0 38 E8
	dey		; 88
	sta ($71.b,X)		; 81 71
	clc		; 18
	jsr ($32F0.w,X)		; FC F0 32
	pea $F056.w		; F4 56 F0
	ora ($C9.b),Y		; 11 C9
	eor #$C0.b		; 49 C0
	brk $6B.b		; 00 6B
	ror $0703.w		; 6E 03 07
	lda $5F5FAF.l		; AF AF 5F 5F
	ldy $7CBE.w,X		; BC BE 7C
	sei		; 78
	stz $70.b,X		; 74 70
	adc $0860.w,Y		; 79 60 08
	adc $270701.l		; 6F 01 07 27
	lda $185F1E.l		; AF 1E 5F 18
	lda $607F30.l,X		; BF 30 7F 60
	adc [$40.b],Y		; 77 40
	adc $DC1E4C.l,X		; 7F 4C 1E DC
	stz $9CD8.w,X		; 9E D8 9C
	sec		; 38
	jmp.w [$F951]		; DC 51 F9
	adc ($FA.b)		; 72 FA
	cpx #$C8F0.w		; E0 F0 C8
	inx		; E8
	tsb $88FE.w		; 0C FE 88
	inc $FC08.w,X		; FE 08 FC
	bpl  -4.b		; 10 FC
	ora ($F9.b),Y		; 11 F9
	rti		; 40

	plx		; FA
	rti		; 40

	beq -128.b		; F0 80
	inx		; E8
	ora ($00.b,X)		; 01 00
	brk $05.b		; 00 05
	ora ($12.b,S),Y		; 13 12
	sty $86.b		; 84 86
	sty $3908.w		; 8C 08 39
	and #$68.b		; 29 68
	brk $82.b		; 00 82
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $12.b		; 05 12
	ora ($00.b,S),Y		; 13 00
	sta [$00.b]		; 87 00
	sta $003D29.l		; 8F 29 3D 00
	pla		; 68
	cop $82.b		; 02 82
	asl $04.b		; 06 04
	php		; 08
	brk $01.b		; 00 01
	brk $28.b		; 00 28
	plp		; 28
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	brk $13.b		; 00 13
	php		; 08
	plp		; 28
	jsr $0060.w		; 20 60 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $003E11.l,X		; 1F 11 3E 00
	adc $023E41.l,X		; 7F 41 3E 02
	bit $3804.w,X		; 3C 04 38
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $0C.b		; 00 0C
	ora $1808.w,X		; 1D 08 18
	eor ($51.b),Y		; 51 51
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E020.w		; C0 20 E0
	brk $C0.b		; 00 C0
	cpy #$C0A0.w		; C0 A0 C0
	ldy #$8000.w		; A0 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$E000.w		; C0 00 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	ora ($10.b),Y		; 11 10
	and ($22.b,X)		; 21 22
	ora ($02.b,X)		; 01 02
	tsb $05.b		; 04 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsl $000220.l		; 22 20 02 00
	ora ($04.b,X)		; 01 04
	ora #$0A.b		; 09 0A
	ora ($12.b),Y		; 11 12
	brk $03.b		; 00 03
	jsr $002A.w		; 20 2A 00
	php		; 08
	ora ($01.b,X)		; 01 01
	.db $42, $02		; 42 02
	cpy #$0880.w		; C0 80 08
	phd		; 0B
	bpl  19.b		; 10 13
	brk $03.b		; 00 03
	jsr $002A.w		; 20 2A 00
	php		; 08
	brk $01.b		; 00 01
	brk $42.b		; 00 42
	brk $C0.b		; 00 C0
	dey		; 88
	iny		; C8
	.db $82, $C2, $90		; 82 C2 90
	bne   0.b		; D0 00
	bra  32.b		; 80 20
	ldy #$A020.w		; A0 20 A0
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	dey		; 88
	iny		; C8
	brk $C2.b		; 00 C2
	brk $D0.b		; 00 D0
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	jsr $00A0.w		; 20 A0 00
	brk $40.b		; 00 40
	rti		; 40

	adc $78.b,S		; 63 78
	sbc $FA.b,S		; E3 FA
	cmp $F8DFF9.l		; CF F9 DF F8
	asl $2E1C.w		; 0E 1C 2E
	sec		; 38
	ora $594E19.l		; 0F 19 4E 59
	and [$78.b]		; 27 78
	eor $E187FA.l		; 4F FA 87 E1
	ora [$F0.b],Y		; 17 F0
	ora [$04.b]		; 07 04
	and [$20.b]		; 27 20
	asl $00.b		; 06 00
	eor [$41.b]		; 47 41
	stx $3C.b		; 86 3C
	.db $82, $38, $43		; 82 38 43
	sei		; 78
	ora ($78.b)		; 12 78
	sty $13E0.w		; 8C E0 13
	cmp ($2B.b,X)		; C1 2B
	cmp $8B.b		; C5 8B
	sta [$E0.b],Y		; 97 E0
	rol $E0.b		; 26 E0
	jsl $C01390.l		; 22 90 13 C0
	eor ($30.b,S),Y		; 53 30
	and $619FA0.l		; 2F A0 9F 61
	eor $639F62.l,X		; 5F 62 9F 63
	adc ($E7.b,X)		; 61 E7
	adc $6F.b,S		; 63 6F
	adc $FE7F7F.l		; 6F 7F 7F FE
	sbc $FCFEFC.l,X		; FF FC FE FC
	inc $FDF8.w,X		; FE F8 FD
	adc ($7F.b,X)		; 61 7F
	jsl $FF24FF.l		; 22 FF 24 FF
	jsr $40FF.w		; 20 FF 40
	sbc $10FEC8.l,X		; FF C8 FE 10
	inc $FD00.w,X		; FE 00 FD
	cmp ($E1.b,X)		; C1 E1
	bra -32.b		; 80 E0
	bcc -16.b		; 90 F0
	trb $2CBC.w		; 1C BC 2C
	trb $4838.w		; 1C 38 48
	bmi  80.b		; 30 50
	cpx #$01E0.w		; E0 E0 01
	sbc ($00.b,X)		; E1 00
	cpx #$F010.w		; E0 10 F0
	bpl -68.b		; 10 BC
	php		; 08
	bit $7808.w,X		; 3C 08 78
	bpl 112.b		; 10 70
	jsr $F1E0.w		; 20 E0 F1
	sbc $F5E3.w,Y		; F9 E3 F5
	cmp $EB.b		; C5 EB
	.db $82, $86, $16		; 82 86 16
	ora ($8E.b,S),Y		; 13 8E
	phb		; 8B
	bit $2E.b		; 24 2E
	brk $18.b		; 00 18
	eor ($F9.b,X)		; 41 F9
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	cop $86.b		; 02 86
	brk $17.b		; 00 17
	dey		; 88
	sta $002E00.l		; 8F 00 2E 00
	clc		; 18
	php		; 08
	brk $14.b		; 00 14
	php		; 08
	clc		; 18
	tsb $3B.b		; 04 3B
	tsb $7D.b		; 04 7D
	rol $FE.b		; 26 FE
	adc [$9F.b],Y		; 77 9F
	and [$4D.b],Y		; 37 4D
	ora [$00.b]		; 07 00
	php		; 08
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	jsr $303F.w		; 20 3F 30
	adc $017F02.l,X		; 7F 02 7F 01
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $84.b		; 00 84
	tsb $D8.b		; 04 D8
	clc		; 18
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8400.w		; C0 00 84
	brk $D8.b		; 00 D8
	brk $E0.b		; 00 E0
	and $173F07.l,X		; 3F 07 3F 17
	and [$07.b]		; 27 07
	ora $1F1B0F.l		; 0F 0F 1B 1F
	tas		; 1B
	ora [$07.b],Y		; 17 07
	ora $1B.b,S		; 03 1B
	ora [$07.b]		; 07 07
	and $073F07.l,X		; 3F 07 3F 07
	and [$07.b]		; 27 07
	ora $031F03.l		; 0F 03 1F 03
	ora $030703.l,X		; 1F 03 07 03
	ora $408040.l,X		; 1F 40 80 40
	bra -96.b		; 80 A0
	cpy #$C0E0.w		; C0 E0 C0
	cld		; D8
	cpx #$F8C4.w		; E0 C4 F8
	plx		; FA
	jsr ($FEDD.w,X)		; FC DD FE
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra  -8.b		; 80 F8
	cpy #$D0FC.w		; C0 FC D0
	inc $FF98.w,X		; FE 98 FF
	brk $01.b		; 00 01
	tsb $05.b		; 04 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bpl  17.b		; 10 11
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $11.b		; 00 11
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cmp ($21.b,X)		; C1 21
	cpy $24.b		; C4 24
	bcc  84.b		; 90 54
	cop $82.b		; 02 82
	jsr $04A0.w		; 20 A0 04
	tsb $03.b		; 04 03
	and $03.b,S		; 23 03
	ora $00.b,S		; 03 00
	sbc ($00.b,X)		; E1 00
	cpx $10.b		; E4 10
	pei ($02.b)		; D4 02
	.db $82, $20, $A0		; 82 20 A0
	tsb $04.b		; 04 04
	brk $23.b		; 00 23
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $D1FFFF.l,X		; FF FF FF D1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc $FFC0FF.l,X		; FF FF C0 FF
	brk $00.b		; 00 00
	.db $42, $42		; 42 42
	php		; 08
	php		; 08
	rti		; 40

	rti		; 40

	ora $05.b		; 05 05
	inc $FFFF.w,X		; FE FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	php		; 08
	rti		; 40

	rti		; 40

	brk $05.b		; 00 05
	jmp ($E2FF.w,X)		; 7C FF E2
	sbc $04FFFE.l,X		; FF FE FF 04
	tsb $1F.b		; 04 1F
	ora $FF7F7F.l,X		; 1F 7F 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFF3F.l,X		; FF 3F FF BF
	sbc $030400.l,X		; FF 00 04 03
	ora $7F7F1F.l,X		; 1F 1F 7F 7F
	sbc $BFFFCF.l,X		; FF CF FF BF
	sbc $07FF3F.l,X		; FF 3F FF 07
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFF0F.l,X		; FF 0F FF FE
	sbc $77FF31.l,X		; FF 31 FF 77
	sbc $FFFF27.l,X		; FF 27 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF2F2.l,X		; FF F2 F2 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF2F0.l,X		; FF F0 F2 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCFFFD.l,X		; FF FD FF FC
	sbc $FCFFFE.l,X		; FF FE FF FC
	sbc $840000.l,X		; FF 00 00 84
	sty $F0.b		; 84 F0
	beq  -4.b		; F0 FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $84.b		; 00 84
	cpy #$FCF0.w		; C0 F0 FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFE3FF.l,X		; FF FF E3 FF
	sed		; F8
	sbc $108080.l,X		; FF 80 80 10
	bpl   3.b		; 10 03
	ora $20.b,S		; 03 20
	jsr $0000.w		; 20 00 00
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $80FCFA.l,X		; FF FA FC 80
	bra  16.b		; 80 10
	bpl   3.b		; 10 03
	ora $00.b,S		; 03 00
	jsr $0000.w		; 20 00 00
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $00FEE0.l,X		; FF E0 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	pha		; 48
	pha		; 48
	tsb $840C.w		; 0C 0C 84
	sty $62.b		; 84 62
	.db $62, $00, $00		; 62 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	pha		; 48
	pha		; 48
	tsb $840C.w		; 0C 0C 84
	sty $60.b		; 84 60
	.db $62, $0E, $00		; 62 0E 00
	ora $18390E.l,X		; 1F 0E 39 18
	and [$16.b]		; 27 16
	and ($DA.b,X)		; 21 DA
	sbc ($E0.b,S),Y		; F3 E0
	ora $041F61.l,X		; 1F 61 1F 04
	brk $00.b		; 00 00
	asl $180E.w		; 0E 0E 18
	asl $1E06.w,X		; 1E 06 1E
	brk $DE.b		; 00 DE
	brk $FD.b		; 00 FD
	brk $6D.b		; 00 6D
	brk $0E.b		; 00 0E
	lsr $49.b		; 46 49
	eor $040308.l,X		; 5F 08 03 04
	adc $0606.w,X		; 7D 06 06
	sbc $03E3.w,Y		; F9 E3 03
	cmp $80.b,S		; C3 80
	sbc $4009FF.l,X		; FF FF 09 40
	brk $58.b		; 00 58
	tsb $00.b		; 04 00
	cop $7C.b		; 02 7C
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $05.b		; 06 05
	ora $040F04.l		; 0F 04 0F 04
	ora $061F06.l		; 0F 06 1F 06
	and $011E02.l,X		; 3F 02 1E 01
	ora $0003.w		; 0D 03 00
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	asl $04.b		; 06 04
	ora [$0A.b]		; 07 0A
	ora $0C1A18.l		; 0F 18 1A 0C
	ora $0705.w		; 0D 05 07
	adc $7FBFFF.l,X		; 7F FF BF 7F
	ror $FFBF.w,X		; 7E BF FF
	adc [$A4.b]		; 67 A4
	phk		; 4B
	plx		; FA
	lda $51BE.w		; AD BE 51
	lda $00FFE0.l,X		; BF E0 FF 00
	adc $00BF00.l,X		; 7F 00 BF 00
	adc [$00.b]		; 67 00
	eor $18.b,S		; 43 18
	ora #$88.b		; 09 88
	and $801E80.l		; 2F 80 1E 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	jmp ($FCFF.w,X)		; 7C FF FC
	xce		; FB
	ora $1FE7F7.l,X		; 1F F7 E7 1F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FB00.l,X		; FF 00 FB 00
	sbc [$00.b],Y		; F7 00
	ora $000000.l,X		; 1F 00 00 00
	php		; 08
	php		; 08
	jsl $000022.l		; 22 22 00 00
	brk $01.b		; 00 01
	eor ($53.b)		; 52 53
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cop $22.b		; 02 22
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bvc  83.b		; 50 53
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	sta ($93.b,S),Y		; 93 93
	brk $20.b		; 00 20
	jsr $0060.w		; 20 60 00
	rti		; 40

	php		; 08
	dey		; 88
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	sta $93.b,S		; 83 93
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	php		; 08
	dey		; 88
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	adc $03073F.l,X		; 7F 3F 07 03
	eor $040447.l,X		; 5F 47 04 04
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	and $07027F.l,X		; 3F 7F 02 07
	eor [$5F.b]		; 47 5F
	tsb $04.b		; 04 04
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sbc $87FFFF.l,X		; FF FF FF 87
	sbc $0F0EFF.l,X		; FF FF 0E 0F
	sta ($80.b,X)		; 81 80
	ora ($00.b,X)		; 01 00
	cop $03.b		; 02 03
	bcc -112.b		; 90 90
	sta $FF01FF.l,X		; 9F FF 01 FF
	sbc ($FF.b),Y		; F1 FF
	cop $0F.b		; 02 0F
	bra -127.b		; 80 81
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $90.b		; 00 90
	sbc $9F.b,S		; E3 9F
	beq 111.b		; F0 6F
	xce		; FB
	sbc $C2FFFF.l,X		; FF FF FF C2
	sbc $7B9E61.l,X		; FF 61 9E 7B
	sta $17.b		; 85 17
	phd		; 0B
	bra  -1.b		; 80 FF
	rti		; 40

	sbc $FFFFE0.l,X		; FF E0 FF FF
	sbc $02FE03.l,X		; FF 03 FE 02
	jsr ($F805.w,X)		; FC 05 F8
	phd		; 0B
	bpl  -1.b		; 10 FF
	sbc $9DFF73.l,X		; FF 73 FF 9D
	sbc $65.b,S		; E3 65
	stz $7FEF.w,X		; 9E EF 7F
	cmp $FFFFFF.l,X		; DF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	ora $81E3F3.l,X		; 1F F3 E3 81
	stz $7800.w,X		; 9E 00 78
	ora [$F0.b]		; 07 F0
	ora $DF18E7.l		; 0F E7 18 DF
	jsr $FEFD.w		; 20 FD FE
	sbc $D7F3.w		; ED F3 D7
	sbc $FF3FDF.l		; EF DF 3F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	jsr ($E0F3.w,X)		; FC F3 E0
	cpx $3BC3.w		; EC C3 3B
	tsb $77.b		; 04 77
	dey		; 88
	and $20DFC0.l,X		; 3F C0 DF 20
	sbc $3FDF00.l,X		; FF 00 DF 3F
	sbc $FFEFDF.l		; EF DF EF FF
	sbc $E3DDEF.l,X		; FF EF DD E3
	inc $99.b		; E6 99
	sbc $BF4E7E.l,X		; FF 7E 4E BF
	jsr $DC1F.w		; 20 1F DC
	ora $E38F7F.l		; 0F 7F 8F E3
	ora $9901E3.l		; 0F E3 01 99
	brk $7E.b		; 00 7E
	brk $BF.b		; 00 BF
	brk $F0.b		; 00 F0
	beq  -1.b		; F0 FF
	inc $FF.b,X		; F6 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $10FF3F.l,X		; FF 3F FF 10
	beq 116.b		; F0 74
	sbc $FFFF1F.l,X		; FF 1F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1FFF7F.l,X		; FF 7F FF 1F
	sbc $469898.l,X		; FF 98 98 46
	lsr $10.b		; 46 10
	bpl -31.b		; 10 E1
	sbc ($FC.b,X)		; E1 FC
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FEFC.w,X)		; FC FC FE
	inc $9898.w,X		; FE 98 98
	lsr $46.b		; 46 46
	bpl  16.b		; 10 10
	cmp ($E1.b,X)		; C1 E1
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	jsr ($F0FC.w,X)		; FC FC F0
	inc $667F.w,X		; FE 7F 66
	ora $070F07.l		; 0F 07 0F 07
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $6F.b		; 04 6F
	asl $07.b		; 06 07
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc $87607F.l,X		; FF 7F 60 87
	cmp $BC.b		; C5 BC
	wai		; CB
	sec		; 38
	sta $7F807F.l,X		; 9F 7F 80 7F
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	adc $0B8000.l,X		; 7F 00 80 0B
	dey		; 88
	ora [$10.b],Y		; 17 10
	jsr $0120.w		; 20 20 01
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8B.b		; 00 8B
	ora [$FD.b]		; 07 FD
	inc $7875.w,X		; FE 75 78
	bit $30.b,X		; 34 30
	bra   0.b		; 80 00
	rts		; 60

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	adc $30FF7C.l,X		; 7F 7C FF 30
	inc $F800.w,X		; FE 00 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F31EE1.l		; EF E1 1E F3
	cpy $E17F.w		; CC 7F E1
	rol $1E11.w,X		; 3E 11 1E
	cop $FD.b		; 02 FD
	ora $FD.b,S		; 03 FD
	asl $01.b		; 06 01
	asl $0CD0.w,X		; 1E D0 0C
	brk $A0.b		; 00 A0
	jsr $10D0.w		; 20 D0 10
	inx		; E8
	php		; 08
	jsr ($00FD.w,X)		; FC FD 00
	ora $00.b,S		; 03 00
	cop $5F.b		; 02 5F
	lda $FFBF5F.l,X		; BF 5F BF FF
	ora ($FF.b,X)		; 01 FF
	brk $EF.b		; 00 EF
	bvs -121.b		; 70 87
	sed		; F8
	and $7E8E.w,Y		; 39 8E 7E
	ora $3F.b,S		; 03 3F
	brk $3F.b		; 00 3F
	brk $19.b		; 00 19
	clc		; 18
	asl $06.b		; 06 06
	eor [$F7.b]		; 47 F7
	sta ($81.b,X)		; 81 81
	stz $04.b,X		; 74 04
	sbc $E201.w,X		; FD 01 E2
	sed		; F8
	ora $9AF1.w		; 0D F1 9A
	adc $F4.b,S		; 63 F4
	ora [$E8.b]		; 07 E8
	ora $FB0FF2.l		; 0F F2 0F FB
	tsb $FF.b		; 04 FF
	bra  23.b		; 80 17
	bpl 110.b		; 10 6E
	rts		; 60

	ora $3AC1.w,X		; 1D C1 3A
	cop $14.b		; 02 14
	ora $48.b		; 05 48
	phk		; 4B
	jsr $9126.w		; 20 26 91
	sta $B0.b,X		; 95 B0
	cpy #$C020.w		; C0 20 C0
	bvc -112.b		; 50 90
	bne  16.b		; D0 10
	cpy #$EF00.w		; C0 00 EF
	ora $FD03FB.l		; 0F FB 03 FD
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	bcc   0.b		; 90 00
	bra   3.b		; 80 03
	cmp $C90300.l		; CF 00 03 C9
	cmp #$E6.b		; C9 E6
	sbc $F6F0FF.l,X		; FF FF F0 F6
	sbc $FCFB.w,Y		; F9 FB FC
	and $FF1CFD.l,X		; 3F FD 1C FF
	cmp $F1EEFE.l,X		; DF FE EE F1
	sbc $E01000.l,X		; FF 00 10 E0
	cmp #$32.b		; C9 32
	pea $FC0B.w		; F4 0B FC
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	brk $F1.b		; 00 F1
	brk $3F.b		; 00 3F
	sbc $FF3FFF.l,X		; FF FF 3F FF
	ora $FF07FF.l		; 0F FF 07 FF
	ora [$FF.b]		; 07 FF
	sta $7D.b,S		; 83 7D
	sbc $BE.b,S		; E3 BE
	adc ($2F.b),Y		; 71 2F
	sbc $03FF35.l,X		; FF 35 FF 03
	sbc $07FF07.l,X		; FF 07 FF 07
	sbc $C0FF03.l,X		; FF 03 FF C0
	adc $2F3F60.l,X		; 7F 60 3F 2F
	rol $0F0F.w		; 2E 0F 0F
	ora $8F8F0F.l		; 0F 0F 8F 8F
	and [$27.b]		; 27 27
	ora $05.b		; 05 05
	sty $E08C.w		; 8C 8C E0
	cpx #$2F0E.w		; E0 0E 2F
	ora $0F0E0F.l		; 0F 0F 0E 0F
	sta [$8F.b]		; 87 8F
	and [$27.b]		; 27 27
	tsb $05.b		; 04 05
	tsb $008C.w		; 0C 8C 00
	cpx #$5E8F.w		; E0 8F 5E
	cmp $82FF36.l		; CF 36 FF 82
	sbc $C3FFC7.l,X		; FF C7 FF C3
	adc $627F60.l,X		; 7F 60 7F 62
	sta $DF0290.l		; 8F 90 02 DF
	cop $FF.b		; 02 FF
	.db $82, $FF, $81		; 82 FF 81
	sbc $40FF40.l,X		; FF 40 FF 40
	adc $007F42.l,X		; 7F 42 7F 00
	sta $DFFF7F.l,X		; 9F 7F FF DF
	and $EF3FDF.l,X		; 3F DF 3F EF
	sta $EF9FEF.l,X		; 9F EF 9F EF
	eor $F76FF7.l,X		; 5F F7 6F F7
	and $10FF10.l		; 2F 10 FF 10
	sbc $08FF0A.l,X		; FF 0A FF 08
	sbc $04FF08.l,X		; FF 08 FF 04
	sbc $26FF24.l,X		; FF 24 FF 26
	sbc $000704.l,X		; FF 04 07 00
	brk $84.b		; 00 84
	sty $80.b		; 84 80
	bcs -127.b		; B0 81
	sta ($C0.b,X)		; 81 C0
	cpy #$C8C0.w		; C0 C0 C8
	cpy #$00C0.w		; C0 C0 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	bcs   0.b		; B0 00
	sta ($80.b,X)		; 81 80
	cpy #$C800.w		; C0 00 C8
	brk $C0.b		; 00 C0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $904242.l,X		; FF 42 42 90
	bcc -64.b		; 90 C0
	cpy #$E2E2.w		; C0 E2 E2
	inx		; E8
	inx		; E8
	cpx #$E1E0.w		; E0 E0 E1
	sbc ($F0.b,X)		; E1 F0
	beq   2.b		; F0 02
	.db $42, $00		; 42 00
	bcc -128.b		; 90 80
	cpy #$E2C0.w		; C0 C0 E2
	inx		; E8
	inx		; E8
	bra -32.b		; 80 E0
	cmp ($E1.b,X)		; C1 E1
	cpx #$20F0.w		; E0 F0 20
	jsr $8282.w		; 20 82 82
	jsr $8920.w		; 20 20 89
	bit #$00.b		; 89 00
	brk $30.b		; 00 30
	bmi  24.b		; 30 18
	sec		; 38
	trb $2064.w		; 1C 64 20
	jsr $8202.w		; 20 02 82
	brk $20.b		; 00 20
	sta ($89.b,X)		; 81 89
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	ror $7E9E.w		; 6E 9E 7E
	dec $4F3F.w		; CE 3F 4F
	rol $164E.w,X		; 3E 4E 16
	rol $3E06.w		; 2E 06 3E
	sty $BE.b		; 84 BE
	lsr $5E.b		; 46 5E
	tsb $4CFE.w		; 0C FE 4C
	inc $7F05.w,X		; FE 05 7F
	tsb $7E.b		; 04 7E
	tsb $3E.b		; 04 3E
	tsb $3E.b		; 04 3E
	tsb $BE.b		; 04 BE
	lsr $5E.b		; 46 5E
	adc [$00.b]		; 67 00
	sta $007C00.l,X		; 9F 00 7C 00
	and $1700.w,Y		; 39 00 17
	jsr $300F.w		; 20 0F 30
	cop $3C.b		; 02 3C
	ora #$3E.b		; 09 3E
	asl $1E.b		; 06 1E
	trb $387C.w		; 1C 7C 38
	tsa		; 3B
	ora ($17.b),Y		; 11 17
	ora [$0F.b]		; 07 0F
	cop $02.b		; 02 02
	php		; 08
	ora #$14.b		; 09 14
	trb $FF.b		; 14 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $BD.b		; 00 BD
	brk $7B.b		; 00 7B
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $7E.b		; 00 7E
	ror $FDFD.w,X		; 7E FD FD
	ora $8119.w,Y		; 19 19 81
	lda $39.b,S		; A3 39
	tda		; 7B
	adc ($F7.b,S),Y		; 73 F7
	sbc ($F7.b,S),Y		; F3 F7
	and ($37.b,S),Y		; 33 37
	rol $1E00.w,X		; 3E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $23.b		; 02 23
	and $03.b,S		; 23 03
	ora $C2.b,S		; 03 C2
	rep #$44		; C2 44
	mvp $C0,$C0		; 44 C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0023.w		; 20 23 00
	ora $00.b,S		; 03 00
	rep #$00		; C2 00
	mvp $C0,$00		; 44 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	adc $107F88.l,X		; 7F 88 7F 10
	sbc $001F00.l,X		; FF 00 1F 00
	ora $003700.l,X		; 1F 00 37 00
	adc $009F00.l		; 6F 00 9F 00
	phd		; 0B
	wai		; CB
	ora [$97.b]		; 07 97
	ora $07070F.l		; 0F 0F 07 07
	ora $03.b,S		; 03 03
	ora ($09.b,X)		; 01 09
	php		; 08
	clc		; 18
	ora ($73.b,S),Y		; 13 73
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EC.b		; 00 EC
	cpx $ECEC.w		; EC EC EC
	cpx $D4EC.w		; EC EC D4
	pei ($90.b)		; D4 90
	bcc  68.b		; 90 44
	mvp $E6,$E6		; 44 E6 E6
	inc $E6.b		; E6 E6
	beq -17.b		; F0 EF
	rts		; 60

	sbc $FFFF01.l,X		; FF 01 FF FF
	and $F803F3.l,X		; 3F F3 03 F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	bra -26.b		; 80 E6
	ora #$F0.b		; 09 F0
	ora $001FE0.l		; 0F E0 1F 00
	and $E00300.l,X		; 3F 00 03 E0
	cpx #$4040.w		; E0 40 40
	bmi  48.b		; 30 30
	rol $FFF9.w,X		; 3E F9 FF
	inc $FFFF.w,X		; FE FF FF
	ora $FFFFFF.l,X		; 1F FF FF FF
	inc $7EFE.w,X		; FE FE 7E
	adc $1C1F.w,X		; 7D 1F 1C
	sei		; 78
	lda $0EFF78.l,X		; BF 78 FF 0E
	sbc $4FFF07.l,X		; FF 07 FF 4F
	sbc $3CFE7E.l,X		; FF 7E FE 3C
	adc $F01F0C.l,X		; 7F 0C 1F F0
	beq -16.b		; F0 F0
	beq  97.b		; F0 61
	adc ($03.b,X)		; 61 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	beq -48.b		; F0 D0
	beq   1.b		; F0 01
	adc ($03.b,X)		; 61 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $3333.w		; 0C 33 33
	ora ($11.b),Y		; 11 11
	bvc  80.b		; 50 50
	bit $34.b,X		; 34 34
	bpl  16.b		; 10 10
	jsl $404022.l		; 22 22 40 40
	brk $0F.b		; 00 0F
	bpl  51.b		; 10 33
	bpl  17.b		; 10 11
	bpl  80.b		; 10 50
	jsr $1034.w		; 20 34 10
	bpl  34.b		; 10 22
	jsl $F74040.l		; 22 40 40 F7
	ora $7B0FFF.l		; 0F FF 0F 7B
	sta [$BB.b]		; 87 BB
	sbc [$5D.b]		; E7 5D
	adc $9D.b,S		; 63 9D
	lda $2D.b,S		; A3 2D
	tsa		; 3B
	stx $0791.w		; 8E 91 07
	sbc $01FF0B.l,X		; FF 0B FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $08BF00.l,X		; 7F 00 BF 08
	and $C49F80.l,X		; 3F 80 9F C4
	cpy $C0.b		; C4 C0
	cpy #$E8C8.w		; C0 C8 E8
	cpy #$DAE4.w		; C0 E4 DA
	plx		; FA
	cpy #$E0E0.w		; C0 E0 E0
	cpx $E4.b		; E4 E4
	cpx $00.b		; E4 00
	cpy $40.b		; C4 40
	cpy #$E800.w		; C0 00 E8
	bra -28.b		; 80 E4
	bcc  -6.b		; 90 FA
	bra -32.b		; 80 E0
	bra -28.b		; 80 E4
	ldy $E4.b		; A4 E4
	sta $3FC37F.l,X		; 9F 7F C3 3F
	tda		; 7B
	sta [$FB.b]		; 87 FB
	sta $7CDFF9.l		; 8F F9 DF 7C
	adc $0E3E1F.l,X		; 7F 1F 3E 0E
	sta $03FF0F.l,X		; 9F 0F FF 03
	sbc $8BFF01.l,X		; FF 01 FF 8B
	sbc $64FFD9.l,X		; FF D9 FF 64
	adc $023F02.l,X		; 7F 02 3F 02
	sta $FEFCFC.l,X		; 9F FC FC FE
	inc $FFFF.w,X		; FE FF FF
	sbc $F9F8FF.l,X		; FF FF F8 F9
	jmp ($7EFC.w,X)		; 7C FC 7E
	inc $FE7E.w,X		; FE 7E FE
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $C1FF.w,X		; FE FF C1
	sbc $40F9C0.l,X		; FF C0 F9 40
	jsr ($FE50.w,X)		; FC 50 FE
	pla		; 68
	inc $463E.w,X		; FE 3E 46
	asl $1A62.w,X		; 1E 62 1A
	rol $0C.b		; 26 0C
	bit $0C.b,X		; 34 0C
	trb $0A.b		; 14 0A
	asl $0C.b,X		; 16 0C
	ora ($0C.b)		; 12 0C
	ora ($00.b)		; 12 00
	ror $7E00.w,X		; 7E 00 7E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	bit $7E.b		; 24 7E
	bit $6C.b		; 24 6C
	bit $EC.b		; 24 EC
	mvp $84,$CC		; 44 CC 84
	cpy $8808.w		; CC 08 88
	ora #$89.b		; 09 89
	plp		; 28
	plp		; 28
	bit $7E.b		; 24 7E
	jsr $206C.w		; 20 6C 20
	cpx $CC44.w		; EC 44 CC
	bra -52.b		; 80 CC
	php		; 08
	dey		; 88
	ora ($89.b,X)		; 01 89
	jsr $1428.w		; 20 28 14
	and [$04.b],Y		; 37 04
	and [$14.b]		; 27 14
	and [$14.b]		; 27 14
	and [$14.b]		; 27 14
	and [$14.b]		; 27 14
	and [$08.b]		; 27 08
	and $0B2704.l,X		; 3F 04 27 0B
	ora $1B.b,S		; 03 1B
	ora $1B.b,S		; 03 1B
	ora $1B.b,S		; 03 1B
	ora $1A.b,S		; 03 1A
	cop $1A.b		; 02 1A
	cop $16.b		; 02 16
	asl $18.b,X		; 16 18
	brk $3F.b		; 00 3F
	cpy #$FE00.w		; C0 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	jsr $20FC.w		; 20 FC 20
	jsr ($FC60.w,X)		; FC 60 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	tya		; 98
	tya		; 98
	brk $00.b		; 00 00
	and ($21.b,X)		; 21 21
	sta ($81.b,X)		; 81 81
	dey		; 88
	dey		; 88
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -104.b		; 80 98
	brk $00.b		; 00 00
	jsr $8021.w		; 20 21 80
	sta ($88.b,X)		; 81 88
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $200C.w		; 0C 0C 20
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00A0.w		; A0 A0 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F0F0.w		; E0 F0 F0
	sec		; 38
	sec		; 38
	ora $100F.w		; 0D 0F 10
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	bpl -128.b		; 10 80
	cpy #$E040.w		; C0 40 E0
	jsr $00F0.w		; 20 F0 00
	sec		; 38
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	phd		; 0B
	phd		; 0B
	ora $00000F.l		; 0F 0F 00 00
	ora ($11.b),Y		; 11 11
	ora ($01.b,X)		; 01 01
	mvp $00,$44		; 44 44 00
	brk $00.b		; 00 00
	rti		; 40

	php		; 08
	phd		; 0B
	phd		; 0B
	ora $110000.l		; 0F 00 00 11
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	jsr $0820.w		; 20 20 08
	php		; 08
	eor $43.b,S		; 43 43
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	ora $43.b,S		; 03 43
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	sty $94.b,X		; 94 94
	inx		; E8
	inx		; E8
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	bpl -108.b		; 10 94
	cpx #$C0E8.w		; E0 E8 C0
	cmp ($F0.b,X)		; C1 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	rts		; 60

	rts		; 60

	bmi 112.b		; 30 70
	bmi 112.b		; 30 70
	bcs -80.b		; B0 B0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	trb $14.b		; 14 14
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $14.b		; 00 14
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	jsr $3048.w		; 20 48 30
	cli		; 58
	bpl  88.b		; 10 58
	bmi 120.b		; 30 78
	bvs  24.b		; 70 18
	bvs   8.b		; 70 08
	clc		; 18
	rts		; 60

	php		; 08
	bvc 112.b		; 50 70
	rti		; 40

	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	bvs  16.b		; 70 10
	sei		; 78
	rts		; 60

	clc		; 18
	bvs   8.b		; 70 08
	sei		; 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  24.b		; 10 18
	clc		; 18
	php		; 08
	php		; 08
	inc A		; 1A
	and $3A.b,S		; 23 3A
	adc $3E.b,S		; 63 3E
	adc [$3E.b]		; 67 3E
	adc ($19.b,X)		; 61 19
	ror $1F.b		; 66 1F
	jsr $201F.w		; 20 1F 20
	ora $203C20.l,X		; 1F 20 3C 20
	trb $1800.w		; 1C 00 18
	brk $14.b		; 00 14
	tsb $3E2E.w		; 0C 2E 3E
	bmi  48.b		; 30 30
	bpl  20.b		; 10 14
	brk $0C.b		; 00 0C
	rts		; 60

	jsr ($F860.w,X)		; FC 60 F8
	rts		; 60

	sed		; F8
	rti		; 40

	sed		; F8
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	cpx #$9090.w		; E0 90 90
	bcc -112.b		; 90 90
	bcc -112.b		; 90 90
	ldy #$A0A0.w		; A0 A0 A0
	ldy #$A0A0.w		; A0 A0 A0
	ldy #$C0A0.w		; A0 A0 C0
	cpy #$07F8.w		; C0 F8 07
	sei		; 78
	sta [$70.b]		; 87 70
	sta $F08E70.l		; 8F 70 8E F0
	asl $06F8.w		; 0E F8 06
	jsr ($F806.w,X)		; FC 06 F8
	cop $06.b		; 02 06
	ror $46.b		; 66 46
	ror $42.b		; 66 42
	.db $42, $42		; 42 42
	.db $42, $00		; 42 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $78.b		; 00 78
	cop $3C.b		; 02 3C
	.db $42, $1C		; 42 1C
	.db $62, $0C, $62		; 62 0C 62
	php		; 08
	.db $62, $04, $66		; 62 04 66
	brk $26.b		; 00 26
	bpl  36.b		; 10 24
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	bit $3C20.w,X		; 3C 20 3C
	jsr $2038.w		; 20 38 20
	bit $3824.w,X		; 3C 24 38
	jsr $0000.w		; 20 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $0E0E0F.l		; 0F 0F 0E 0E
	and $005C39.l,X		; 3F 39 5C 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cop $0F.b		; 02 0F
	tsb $0E.b		; 04 0E
	php		; 08
	and $005C00.l,X		; 3F 00 5C 00
	bra  48.b		; 80 30
	bmi   0.b		; 30 00
	brk $20.b		; 00 20
	jsr $0404.w		; 20 04 04
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	jsr $0404.w		; 20 04 04
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$18.b]		; 07 18
	ora $100718.l		; 0F 18 07 10
	asl $1F30.w		; 0E 30 1F
	and ($03.b),Y		; 31 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $101F00.l		; 0F 00 1F 10
	asl $C000.w		; 0E 00 C0
	ora $31E0.w,Y		; 19 E0 31
	bra  49.b		; 80 31
	cpy #$0061.w		; C0 61 00
	adc $81.b,S		; 63 81
	cmp $00.b,S		; C3 00
	rep #$01		; C2 01
	.db $82, $F0, $10		; 82 F0 10
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cmp ($41.b,X)		; C1 41
	brk $00.b		; 00 00
	sta ($80.b,X)		; 81 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	asl A		; 0A
	asl $15.b		; 06 15
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	tas		; 1B
	tsb $07.b		; 04 07
	cop $0B.b		; 02 0B
	ora $21.b		; 05 21
	asl $63AE.w,X		; 1E AE 63
	lda ($83.b)		; B2 83
	cpx $650F.w		; EC 0F 65
	ply		; 7A
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	asl $5D0E.w		; 0E 0E 5D
	eor ($7D.b,X)		; 41 7D
	ora ($F2.b,X)		; 01 F2
	cop $90.b		; 02 90
	bpl -17.b		; 10 EF
	sta $AF.b,S		; 83 AF
	eor ($D7.b,X)		; 41 D7
	jsr $807B.w		; 20 7B 80
	inc $3F01.w,X		; FE 01 3F
	cpy #$209F.w		; C0 9F 20
	ora ($60.b),Y		; 11 60
	tay		; A8
	clv		; B8
	php		; 08
	cli		; 58
	tsb $2C.b		; 04 2C
	php		; 08
	ldy $6405.w		; AC 05 64
	brk $00.b		; 00 00
	asl $016E.w		; 0E 6E 01
	sbc $CBE38C.l		; EF 8C E3 CB
	jsr ($E17E.w,X)		; FC 7E E1
	ror $FFC1.w,X		; 7E C1 FF
	rti		; 40

	sta $DD62.w,X		; 9D 62 DD
	jsl $3D00F2.l		; 22 F2 00 3D
	jsr $1010.w		; 20 10 10
	sty $980D.w		; 8C 0D 98
	ora $1818.w,Y		; 19 18 18
	jsr $0C22.w		; 20 22 0C
	asl $1C10.w		; 0E 10 1C
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $1703.w		; 0D 03 17
	ora $3F0F3F.l		; 0F 3F 0F 3F
	ora $003FFF.l,X		; 1F FF 3F 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	php		; 08
	inc $F9.b,X		; F6 F9
	sbc $C6FE.w,Y		; F9 FE C6
	sbc $87FFE6.l,X		; FF E6 FF 87
	sbc $00FFF3.l,X		; FF F3 FF 00
	brk $08.b		; 00 08
	brk $F9.b		; 00 F9
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	cpy #$C0EF.w		; C0 EF C0
	cmp $C096E0.l		; CF E0 96 C0
	and $1D00.w,X		; 3D 00 1D
	brk $1B.b		; 00 1B
	brk $0B.b		; 00 0B
	bmi -128.b		; 30 80
	cpx #$F0C0.w		; E0 C0 F0
	cmp ($F1.b,X)		; C1 F1
	cop $E3.b		; 02 E3
	tsb $C6.b		; 04 C6
	tsb $010E.w		; 0C 0E 01
	ora $11.b		; 05 11
	ora $87.b,X		; 15 87
	and [$E2.b]		; 27 E2
	asl A		; 0A
	bne   5.b		; D0 05
	sta $9F02.w,Y		; 99 02 9F
	brk $9D.b		; 00 9D
	brk $1E.b		; 00 1E
	brk $33.b		; 00 33
	brk $00.b		; 00 00
	adc $401F02.l,X		; 7F 02 1F 40
	adc $886600.l		; 6F 00 66 88
	inx		; E8
	dey		; 88
	nop		; EA
	asl A		; 0A
	xba		; EB
	ora ($DD.b),Y		; 11 DD
	eor [$0F.b]		; 47 0F
	eor $07.b,S		; 43 07
	cpx #$F801.w		; E0 01 F8
	brk $74.b		; 00 74
	brk $BA.b		; 00 BA
	brk $DD.b		; 00 DD
	brk $6F.b		; 00 6F
	brk $03.b		; 00 03
	sta $008F01.l,X		; 9F 01 8F 00
	ora [$60.b]		; 07 60
	adc ($30.b,X)		; 61 30
	clv		; B8
	tya		; 98
	jmp.w [$6E4C]		; DC 4C 6E
	rol $B6.b		; 26 B6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0E.b		; 02 0E
	ora $1C.b		; 05 1C
	phd		; 0B
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	sed		; F8
	.db $82, $78, $06		; 82 78 06
	beq   4.b		; F0 04
	sed		; F8
	tsb $0CF0.w		; 0C F0 0C
	cpx #$F008.w		; E0 08 F0
	clc		; 18
	cpx #$7C10.w		; E0 10 7C
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl   7.b		; 10 07
	brk $1F.b		; 00 1F
	ora [$3F.b]		; 07 3F
	ora $101F3F.l,X		; 1F 3F 1F 10
	ora $3C0F10.l		; 0F 10 0F 3C
	ora $001F28.l,X		; 1F 28 1F 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $E0.b		; 00 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl  96.b		; 10 60
	bpl -32.b		; 10 E0
	tya		; 98
	bmi -104.b		; 30 98
	rts		; 60

	cpy $CC18.w		; CC 18 CC
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bpl -32.b		; 10 E0
	bra  56.b		; 80 38
	php		; 08
	bvs  64.b		; 70 40
	tsb $1821.w		; 0C 21 18
	adc $38.b,S		; 63 38
	inc $70.b		; E6 70
	cpy $60.b		; C4 60
	tsb $18C0.w		; 0C C0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	ora $223E01.l,X		; 1F 01 3E 22
	jmp $80B844.l		; 5C 44 B8 80
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	ora ($82.b,X)		; 01 82
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F00.w,X		; 1E 00 1F
	brk $1F.b		; 00 1F
	brk $0B.b		; 00 0B
	trb $1E1C.w		; 1C 1C 1E
	asl $1C1C.w,X		; 1E 1C 1C
	trb $1C1D.w		; 1C 1D 1C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bit $3F0C.w,X		; 3C 0C 3F
	tsb $1C3F.w		; 0C 3F 1C
	rol $3E18.w,X		; 3E 18 3E
	lsr $80.b		; 46 80
	stx $00.b		; 86 00
	sty $01.b		; 84 01
	sty $01.b		; 84 01
	rol A		; 2A
	brk $79.b		; 00 79
	asl $FA.b		; 06 FA
	ora $F9.b,S		; 03 F9
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$3F.b]		; 07 3F
	rts		; 60

	adc $F0FFE0.l,X		; 7F E0 FF F0
	sbc $C07FE0.l,X		; FF E0 7F C0
	and $00FF40.l,X		; 3F 40 FF 00
	stx $F9.b		; 86 F9
	ora $E222EF.l		; 0F EF 22 E2
	bvs -16.b		; 70 F0
	lsr $E6.b		; 46 E6
	asl $1CDE.w,X		; 1E DE 1C
	jmp.w [$0000]		; DC 00 00
	brk $F9.b		; 00 F9
	inc $BC00.w,X		; FE 00 BC
	cpy #$C038.w		; C0 38 C0
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	sed		; F8
	trb $101C.w		; 1C 1C 10
	bne   0.b		; D0 00
	cpy #$3838.w		; C0 38 38
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	brk $18.b		; 00 18
	bmi  -4.b		; 30 FC
	ora ($FF.b,S),Y		; 13 FF
	tsb $FF.b		; 04 FF
	bra  -1.b		; 80 FF
	cmp $E312F0.l		; CF F0 12 E3
	bpl -29.b		; 10 E3
	sec		; 38
	sbc $FA.b,S		; E3 FA
	sta [$FF.b]		; 87 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $E1.b		; 00 E1
	ora ($E1.b,X)		; 01 E1
	ora ($E1.b,X)		; 01 E1
	ora ($80.b,X)		; 01 80
	brk $E7.b		; 00 E7
	xce		; FB
	dey		; 88
	sbc [$18.b],Y		; F7 18
	sbc $9E1CEB.l		; EF EB 1C 9E
	mvp $C4,$7F		; 44 7F C4
	jsr ($3487.w,X)		; FC 87 34
	sta [$FB.b]		; 87 FB
	brk $F3.b		; 00 F3
	ora $E7.b,S		; 03 E7
	ora [$14.b]		; 07 14
	trb $08.b		; 14 08
	adc ($48.b,X)		; 61 48
	eor ($7A.b)		; 52 7A
	cop $F9.b		; 02 F9
	dey		; 88
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
	asl $38.b,X		; 16 38
	asl $3F38.w,X		; 1E 38 3F
	jmp ($633B.w,X)		; 7C 3B 63
	trb $7FC0.w		; 1C C0 7F
	cmp ($3C.b,X)		; C1 3C
	sta ($7E.b,X)		; 81 7E
	sta $0A.b,S		; 83 0A
	phd		; 0B
	jsl $000023.l		; 22 23 00 00
	trb $7F00.w		; 1C 00 7F
	rti		; 40

	rol $7F00.w,X		; 3E 00 7F
	ora ($FC.b,X)		; 01 FC
	bra  51.b		; 80 33
	brk $33.b		; 00 33
	brk $31.b		; 00 31
	brk $F1.b		; 00 F1
	brk $1E.b		; 00 1E
	sta ($03.b,X)		; 81 03
	sta $0F9C0F.l,X		; 9F 0F 9C 0F
	bmi  17.b		; 30 11
	cmp $DD11.w,X		; DD 11 DD
	bpl -34.b		; 10 DE
	bpl  30.b		; 10 1E
	ora ($01.b,X)		; 01 01
	tsb $030C.w		; 0C 0C 03
	brk $1F.b		; 00 1F
	bpl 118.b		; 10 76
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	brk $C0.b		; 00 C0
	bmi -64.b		; 30 C0
	beq -128.b		; F0 80
	jsr $60C0.w		; 20 C0 60
	bra  96.b		; 80 60
	bmi -72.b		; 30 B8
	bvc -48.b		; 50 D0
	bra -64.b		; 80 C0
	jsr $2020.w		; 20 20 20
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bne -96.b		; D0 A0
	bne -64.b		; D0 C0
	ldy #$80C0.w		; A0 C0 80
	bra   0.b		; 80 00
	rts		; 60

	bra  16.b		; 80 10
	cpx #$E010.w		; E0 10 E0
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	ldy #$8000.w		; A0 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $08.b		; 00 08
	bit $3410.w		; 2C 10 34
	jsr $3C14.w		; 20 14 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	jsr $3408.w		; 20 08 34
	tsb $1020.w		; 0C 20 10
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	trb $10.b		; 14 10
	brk $80.b		; 00 80
	cpy #$E050.w		; C0 50 E0
	jmp ($54EC.w,X)		; 7C EC 54
	jmp ($1C2C.w)		; 6C 2C 1C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	brk $FC.b		; 00 FC
	jmp ($04FE.w)		; 6C FE 04
	inc $5E0C.w,X		; FE 0C 5E
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	asl $1C.b		; 06 1C
	php		; 08
	ora $3300.w,Y		; 19 00 33
	clc		; 18
	rol $00.b,X		; 36 00
	stz $03.b		; 64 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$01.b]		; 07 01
	asl $0C12.w,X		; 1E 12 0C
	tsb $38.b		; 04 38
	jsr $18C0.w		; 20 C0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	ora $000F00.l		; 0F 00 0F 00
	ora ($0C.b,S),Y		; 13 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $300C.w		; 0C 0C 30
	jmp ($D800.w,X)		; 7C 00 D8
	brk $B0.b		; 00 B0
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bvs  80.b		; 70 50
	cpx #$C0A0.w		; E0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1E0C.w,X		; 1E 0C 1E
	jsr $241A.w		; 20 1A 24
	sei		; 78
	tsb $7C.b		; 04 7C
	brk $74.b		; 00 74
	clc		; 18
	stz $18.b,X		; 74 18
	jmp ($0000.w,X)		; 7C 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $68.b		; 00 68
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bvs -128.b		; 70 80
	sed		; F8
	brk $E8.b		; 00 E8
	bpl  84.b		; 10 54
	sec		; 38
	jmp ($7F20.w,X)		; 7C 20 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  40.b		; 10 28
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	beq  16.b		; F0 10
	cpx #$40A0.w		; E0 A0 40
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpy $CC18.w		; CC 18 CC
	bmi 102.b		; 30 66
	tsb $1866.w		; 0C 66 18
	and ($04.b)		; 32 04
	and ($0C.b)		; 32 0C
	inc A		; 1A
	tsb $1B.b		; 04 1B
	sec		; 38
	php		; 08
	bvs  64.b		; 70 40
	trb $3804.w		; 1C 04 38
	jsr $000C.w		; 20 0C 00
	trb $0410.w		; 1C 10 04
	brk $0E.b		; 00 0E
	asl A		; 0A
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
	phd		; 0B
	clc		; 18
	ora $180F18.l		; 0F 18 0F 18
	ora $300638.l		; 0F 38 06 30
	ora [$31.b]		; 07 31
	asl $31.b		; 06 31
	trb $07F1.w		; 1C F1 07
	brk $07.b		; 00 07
	brk $17.b		; 00 17
	bpl  23.b		; 10 17
	bpl  31.b		; 10 1F
	bpl  30.b		; 10 1E
	bpl  31.b		; 10 1F
	ora ($6E.b),Y		; 11 6E
	rts		; 60

	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $1B.b		; 04 1B
	tsb $1C39.w		; 0C 39 1C
	adc $F33C.w,Y		; 79 3C F3
	sei		; 78
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($05.b,X)		; 01 05
	php		; 08
	tsb $1E18.w		; 0C 18 1E
	bpl  62.b		; 10 3E
	jsr $D07C.w		; 20 7C D0
	rol $47BC.w,X		; 3E BC 47
	inc $D503.w		; EE 03 D5
	ora ($E5.b)		; 12 E5
	rol $0FE0.w,X		; 3E E0 0F
	cpy #$0007.w		; C0 07 00
	ora $88.b,S		; 03 88
	dey		; 88
	dec A		; 3A
	cop $7D.b		; 02 7D
	brk $6E.b		; 00 6E
	brk $8A.b		; 00 8A
	dey		; 88
	eor [$44.b]		; 47 44
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	tsa		; 3B
	brk $77.b		; 00 77
	brk $E6.b		; 00 E6
	brk $4E.b		; 00 4E
	brk $2E.b		; 00 2E
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $19.b		; 00 19
	ora $3B33.w,X		; 1D 33 3B
	.db $62, $7B, $06		; 62 7B 06
	and [$06.b],Y		; 37 06
	ora [$0C.b],Y		; 17 0C
	ora $0C0E0C.l		; 0F 0C 0E 0C
	asl $025F.w		; 0E 5F 02
	stp		; DB
	ora ($DB.b,X)		; 01 DB
	brk $D9.b		; 00 D9
	brk $D9.b		; 00 D9
	brk $CD.b		; 00 CD
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $08.b		; 00 08
	plb		; AB
	eor #$6D.b		; 49 6D
	pha		; 48
	jmp ($6E48.w)		; 6C 48 6E
	pha		; 48
	ror $7644.w		; 6E 44 76
	cpy $F7.b		; C4 F7
	cpy $F7.b		; C4 F7
	sbc $FFA2.w,X		; FD A2 FF
	rti		; 40

	inc $AD81.w,X		; FE 81 AD
	cop $B3.b		; 02 B3
	asl $B7.b		; 06 B7
	tsb $08BE.w		; 0C BE 08
	sbc $2A01.w,X		; FD 01 2A
	inx		; E8
	jmp $A4CC.w		; 4C CC A4
	ldy $01.b		; A4 01
	bvc -111.b		; 50 91
	cld		; D8
	sta ($D0.b,S),Y		; 93 D0
	ora [$40.b]		; 07 40
	cop $00.b		; 02 00
	jmp ($78C2.w,X)		; 7C C2 78
	.db $82, $E0, $04		; 82 E0 04
	cpy #$8018.w		; C0 18 80
	bmi   0.b		; 30 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	rol $7C02.w,X		; 3E 02 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	jsr $40C0.w		; 20 C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($0F.b,X)		; C1 0F
	bra   3.b		; 80 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	cop $82.b		; 02 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	bvs   6.b		; 70 06
	sei		; 78
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	sty $78.b		; 84 78
	tsb $08F0.w		; 0C F0 08
	beq  24.b		; F0 18
	cpx #$FC10.w		; E0 10 FC
	tsb $BC.b		; 04 BC
	bra 124.b		; 80 7C
	rti		; 40

	sei		; 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	ldy #$0080.w		; A0 80 00
	cpy #$8780.w		; C0 80 87
	cpy #$D7EF.w		; C0 EF D7
	cpy #$19FF.w		; C0 FF 19
	inc $EF.b		; E6 EF
	ora $0000A0.l,X		; 1F A0 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $D7.b		; 00 D7
	brk $7F.b		; 00 7F
	bra -26.b		; 80 E6
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$00E0.w		; A0 E0 00
	bcc -32.b		; 90 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora [$03.b]		; 07 03
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$0B.b]		; 07 0B
	asl $00.b		; 06 00
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
	brk $60.b		; 00 60
	clc		; 18
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
	ora ($02.b,X)		; 01 02
	ora $0C07.w,Y		; 19 07 0C
	tsa		; 3B
	and $365E.w,X		; 3D 5E 36
	eor $010000.l		; 4F 00 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $3B.b		; 00 3B
	brk $5E.b		; 00 5E
	brk $4F.b		; 00 4F
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	asl $380B.w,X		; 1E 0B 38
	ora [$70.b],Y		; 17 70
	eor $83BAC0.l,X		; 5F C0 BA 83
	pla		; 68
	ora $013CA0.l		; 0F A0 3C 01
	ora ($05.b,X)		; 01 05
	tsb $17.b		; 04 17
	bpl  47.b		; 10 2F
	jsr $003F.w		; 20 3F 00
	adc $F401.w,X		; 7D 01 F4
	tsb $D0.b		; 04 D0
	bpl -98.b		; 10 9E
	sta ($E8.b,S),Y		; 93 E8
	cop $F4.b		; 02 F4
	asl $D8.b		; 06 D8
	trb $7840.w		; 1C 40 78
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FE00.w)		; 6C 00 FE
	cop $F8.b		; 02 F8
	brk $E4.b		; 00 E4
	tsb $A0.b		; 04 A0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($D0F0.w)		; 6C F0 D0
	cpx #$C0E0.w		; E0 E0 C0
	cpx #$A0C0.w		; E0 C0 A0
	cpy #$40A0.w		; C0 A0 40
	cpy #$8100.w		; C0 00 81
	bra  64.b		; 80 40
	beq -64.b		; F0 C0
	cpx #$C0C0.w		; E0 C0 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $F0.b		; 00 F0
	brk $F9.b		; 00 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bcc -112.b		; 90 90
	ora $0F00.w		; 0D 00 0F
	brk $01.b		; 00 01
	ora [$02.b]		; 07 02
	asl $0C05.w		; 0E 05 0C
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $080F08.l		; 0F 08 0F 08
	cmp $00CD00.l		; CF 00 CD 00
	ply		; 7A
	asl $E1.b		; 06 E1
	ora $C11BC0.l,X		; 1F C0 1B C1
	bpl -29.b		; 10 E3
	and ($8D.b),Y		; 31 8D
	and ($C4.b,S),Y		; 33 C4
	pea $7043.w		; F4 43 70
	sta ($00.b,X)		; 81 00
	sbc ($12.b)		; F2 12
	beq  16.b		; F0 10
	cpx #$C100.w		; E0 00 C1
	ora ($E1.b,X)		; 01 E1
	and $FE.b,S		; 23 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	bpl  -2.b		; 10 FE
	sec		; 38
	sbc [$78.b],Y		; F7 78
	sbc $E8D9F0.l		; EF F0 D9 E8
.INDEX 8
	sep #$9E		; E2 9E
	cld		; D8
	clc		; 18
	sty $24.b		; 84 24
	bcc  48.b		; 90 30
	and ($78.b),Y		; 31 78
	adc $F8.b,S		; 63 F8
	cmp [$F0.b]		; C7 F0
	sta [$E0.b]		; 87 E0
	ora $00CC.w		; 0D CC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	rts		; 60

	ldy #$30.b		; A0 30
	bne  24.b		; D0 18
	cpx #$0C.b		; E0 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	ora [$18.b]		; 07 18
	ora $330419.l		; 0F 19 04 33
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	asl $00.b		; 06 00
	ora $E001.w		; 0D 01 E0
	bmi -64.b		; 30 C0
	jsr $60C0.w		; 20 C0 60
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($FFFF.w,X)		; FC FF FF
	jmp ($08FF.w,X)		; 7C FF 08
	sbc $78FF90.l,X		; FF 90 FF 78
	sbc $00FF20.l,X		; FF 20 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jmp ($3000.w,X)		; 7C 00 30
	cpy #$C8.b		; C0 C8
	beq -124.b		; F0 84
	plx		; FA
	dec $ADFD.w		; CE FD AD
	dec $9EE1.w,X		; DE E1 9E
	xba		; EB
	sty $9F.b,X		; 94 9F
	adc $C0.b		; 65 C0
	brk $F0.b		; 00 F0
	brk $FA.b		; 00 FA
	brk $FD.b		; 00 FD
	brk $DE.b		; 00 DE
	brk $9E.b		; 00 9E
	brk $94.b		; 00 94
	brk $05.b		; 00 05
	brk $3B.b		; 00 3B
	eor $BFBF5F.l,X		; 5F 5F BF BF
	adc $DFFF6F.l,X		; 7F 6F FF DF
	sbc [$F7.b]		; E7 F7
	sta $0E6F92.l		; 8F 92 6F 0E
	lda $5F.b,S		; A3 5F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $E7.b		; 00 E7
	brk $8F.b		; 00 8F
	brk $6F.b		; 00 6F
	brk $F1.b		; 00 F1
	cop $5F.b		; 02 5F
	rep #$0F		; C2 0F
	sbc ($9F.b)		; F2 9F
	.db $62, $BF, $50		; 62 BF 50
	sbc $64FF30.l,X		; FF 30 FF 64
	tda		; 7B
	inc $FF.b		; E6 FF
	.db $42, $B2		; 42 B2
	.db $82, $62, $62		; 82 62 62
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bit $6E68.w		; 2C 68 6E
	inx		; E8
	lsr $6E4C.w		; 4E 4C 6E
	lda $74BB.w,Y		; B9 BB 74
	cpx $FB12.w		; EC 12 FB
	asl $F7.b		; 06 F7
	trb $1CD1.w		; 1C D1 1C
	inx		; E8
	lsr $4FD0.w		; 4E D0 4F
	lda $7400.w,Y		; B9 00 74
	brk $10.b		; 00 10
	ora $02.b,S		; 03 02
	cop $0B.b		; 02 0B
	php		; 08
	and [$04.b]		; 27 04
	and ($02.b,S),Y		; 33 02
	and ($01.b),Y		; 31 01
	ora [$FE.b]		; 07 FE
	lsr A		; 4A
	sty $D4.b,X		; 94 D4
	brk $F4.b		; 00 F4
	php		; 08
	cpx #$18.b		; E0 18
	bra  24.b		; 80 18
	ldy #$10.b		; A0 10
	cpy #$A0.b		; C0 A0
	ror $F470.w,X		; 7E 70 F4
	bcc  96.b		; 90 60
	php		; 08
	rts		; 60

	bcc -16.b		; 90 F0
	bpl -16.b		; 10 F0
	bvs -32.b		; 70 E0
	rti		; 40

	rti		; 40

	brk $DE.b		; 00 DE
	adc $FF5E3F.l		; 6F 3F 5E FF
	ldx $8E7F.w		; AE 7F 8E
	rol $1CDC.w,X		; 3E DC 1C
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $8C.b		; 00 8C
	ora $2E5FDE.l		; 0F DE 5F 2E
	ror $8E8E.w		; 6E 8E 8E
	stz $009C.w		; 9C 9C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $77.b		; 00 77
	brk $04.b		; 00 04
	tsb $03.b		; 04 03
	ora $0C.b,S		; 03 0C
	tsb $7070.w		; 0C 70 70
	jsr $2720.w		; 20 20 27
	and [$1C.b]		; 27 1C
	trb $3A32.w		; 1C 32 3A
	sbc [$00.b],Y		; F7 00
	sbc $01FE00.l,X		; FF 00 FE 01
	sbc $0CF700.l,X		; FF 00 F7 0C
	sbc $2FDF1F.l		; EF 1F DF 2F
	adc $222217.l,X		; 7F 17 22 22
	ora ($12.b)		; 12 12
	sta [$86.b]		; 87 86
	eor $4B.b,S		; 43 4B
	brk $1C.b		; 00 1C
	ora $3F.b,S		; 03 3F
	ora [$3F.b]		; 07 3F
	ora $9F.b,S		; 03 9F
	sbc $0B.b,X		; F5 0B
	jsr ($FF03.w,X)		; FC 03 FF
	tsb $CD76.w		; 0C 76 CD
	sbc $E0FF00.l,X		; FF 00 FF E0
	sbc $09FE98.l		; EF 98 FE 09
	plx		; FA
	sbc ($F0.b)		; F2 F0
	beq  44.b		; F0 2C
	bit $CD.b		; 24 CD
	brk $03.b		; 00 03
	ora $C5.b,S		; 03 C5
	sbc $98.b		; E5 98
	cpy #$0C.b		; C0 0C
	sty $B0.b		; 84 B0
	cmp [$F8.b]		; C7 F8
	brk $FC.b		; 00 FC
	bcc  -4.b		; 90 FC
	php		; 08
	inc $FA10.w,X		; FE 10 FA
	tsb $F07E.w		; 0C 7E F0
	pea $0088.w		; F4 88 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	clc		; 18
	bra -120.b		; 80 88
	bra -80.b		; 80 B0
	php		; 08
	tsb $0000.w		; 0C 00 00
	sei		; 78
	php		; 08
	ora $103E08.l,X		; 1F 08 3E 10
	dec A		; 3A
	brk $1E.b		; 00 1E
	tsb $EC.b		; 04 EC
	php		; 08
	jsr ($F800.w,X)		; FC 00 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	tsb $7C.b		; 04 7C
	php		; 08
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	stz $30C0.w,X		; 9E C0 30
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	php		; 08
	cpx #$20.b		; E0 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0D.b		; 14 0D
	bit $3E06.w,X		; 3C 06 3E
	brk $6E.b		; 00 6E
	bpl  92.b		; 10 5C
	bmi  -4.b		; 30 FC
	bmi -40.b		; 30 D8
	rti		; 40

	sed		; F8
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $F4.b		; 00 F4
	php		; 08
	sed		; F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	cop $6F.b		; 02 6F
	brk $27.b		; 00 27
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
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
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	sec		; 38
	sbc $817F01.l,X		; FF 01 7F 81
	and $003F80.l,X		; 3F 80 3F 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $1E0D.w		; 0C 0D 1E
	asl $1F1F.w,X		; 1E 1F 1F
	asl $050E.w		; 0E 0E 05
	ora $01.b		; 05 01
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	brk $EF.b		; 00 EF
	bpl -13.b		; 10 F3
	trb $1CFB.w		; 1C FB 1C
	xce		; FB
	ora $7C7C.w,X		; 1D 7C 7C
	and ($B2.b)		; 32 B2
	ora $70108F.l		; 0F 8F 10 70
	ora $7F.b,S		; 03 7F
	sta ($BF.b,X)		; 81 BF
	cmp ($DE.b)		; D2 DE
	bcc -99.b		; 90 9D
	phd		; 0B
	ora [$0E.b]		; 07 0E
	ora [$0F.b]		; 07 0F
	ora [$09.b]		; 07 09
	ora [$17.b]		; 07 17
	and $3F1F2F.l		; 2F 2F 1F 3F
	ora $057F1F.l,X		; 1F 1F 7F 05
	cop $03.b		; 02 03
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	bpl 103.b		; 10 67
	clc		; 18
	sbc $FF7EFF.l,X		; FF FF 7E FF
	adc $FFF9F8.l,X		; 7F F8 F9 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF1FFF.l,X		; FF FF 1F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	ora [$F3.b]		; 07 F3
	tsb $00FF.w		; 0C FF 00
	sbc $DCFA00.l,X		; FF 00 FA DC
	adc $FFBE.w,X		; 7D BE FF
	ror $FEFF.w,X		; 7E FF FE
	cpx #$FF.b		; E0 FF
	sbc $FFC6.w,Y		; F9 C6 FF
	sty $7A.b,X		; 94 7A
	sty $DC.b,X		; 94 DC
	brk $BE.b		; 00 BE
	brk $7E.b		; 00 7E
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $C3.b		; 00 C3
	ora ($93.b)		; 12 93
	bpl -109.b		; 10 93
	bvc   0.b		; 50 00
	trb $3E1C.w		; 1C 1C 3E
	and $806742.l,X		; 3F 42 67 80
	cmp $1C.b,S		; C3 1C
	.db $82, $3C, $07		; 82 3C 07
	rts		; 60

	ora $C0.b,S		; 03 C0
	brk $00.b		; 00 00
	jsr $3C20.w		; 20 20 3C
	brk $7E.b		; 00 7E
	brk $FE.b		; 00 FE
	trb $21E0.w		; 1C E0 21
	rep #$42		; C2 42
	bra -128.b		; 80 80
	clc		; 18
	and ($18.b,S),Y		; 33 18
	and ($0D.b,S),Y		; 33 0D
	and [$08.b]		; 27 08
	rol $09.b		; 26 09
	rol $0B.b		; 26 0B
	rol $01.b		; 26 01
	bit $1B.b		; 24 1B
	bit $020E.w,X		; 3C 0E 02
	ora $1801.w		; 0D 01 18
	brk $1D.b		; 00 1D
	tsb $1B.b		; 04 1B
	cop $19.b		; 02 19
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	brk $74.b		; 00 74
	asl $F0.b		; 06 F0
	asl $E8.b		; 06 E8
	tsb $0CE0.w		; 0C E0 0C
	bne  24.b		; D0 18
	cpy #$18.b		; C0 18
	ldy #$30.b		; A0 30
	bcc  32.b		; 90 20
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	ldy $4E00.w,X		; BC 00 4E
	brk $B7.b		; 00 B7
	brk $B9.b		; 00 B9
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $EE.b		; 00 EE
	brk $6E.b		; 00 6E
	brk $30.b		; 00 30
	bvs   8.b		; 70 08
	clv		; B8
	asl $4E.b		; 06 4E
	bmi 118.b		; 30 76
	tya		; 98
	clv		; B8
	stz $CCBC.w		; 9C BC CC
	jmp.w [$D848]		; DC 48 D8
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	ora ($0D.b,X)		; 01 0D
	brk $0C.b		; 00 0C
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	asl $04.b		; 06 04
	ora [$04.b]		; 07 04
	lda [$00.b],Y		; B7 00
	lda [$00.b],Y		; B7 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	inc $0901.w,X		; FE 01 09
	sbc $F016.w,Y		; F9 16 F0
	rol $26E0.w		; 2E E0 26
	ror $6E26.w		; 6E 26 6E
	ror $EE.b		; 66 EE
	ror $EE.b		; 66 EE
	ora ($01.b,X)		; 01 01
	stx $90.b,Y		; 96 90
	lda $809FA0.l		; AF A0 9F 80
	stz $00.b,X		; 74 00
	sei		; 78
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	jsr $E000.w		; 20 00 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	rts		; 60

	inx		; E8
	rts		; 60

	cpx #$40.b		; E0 40
	cpy #$00.b		; C0 00
	brk $C0.b		; 00 C0
	cpy #$40.b		; C0 40
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq  32.b		; F0 20
	sed		; F8
	bvs 124.b		; 70 7C
	sei		; 78
	adc $07131C.l,X		; 7F 1C 13 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $20.b		; 00 20
	jsr $7070.w		; 20 70 70
	sed		; F8
	clc		; 18
	bit $0F03.w,X		; 3C 03 0F
	ora ($06.b,X)		; 01 06
	tsb $0D.b		; 04 0D
	ora $09.b,S		; 03 09
	asl $8C19.w		; 0E 19 8C
	ora ($F8.b),Y		; 11 F8
	ora ($74.b,S),Y		; 13 74
	stx $F8.b		; 86 F8
	asl $0404.w		; 0E 04 04
	cop $00.b		; 02 00
	asl $0708.w		; 0E 08 07
	ora ($1E.b,X)		; 01 1E
	bpl  14.b		; 10 0E
	.db $82, $08, $C0		; 82 08 C0
	tsb $44.b		; 04 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $1C10.w		; 0E 10 1C
	jsl $101028.l		; 22 28 10 10
	plp		; 28
	bpl  40.b		; 10 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1000.w		; 0E 00 10
	brk $22.b		; 00 22
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $07.b		; 00 07
	php		; 08
	tas		; 1B
	ora [$1F.b]		; 07 1F
	and $1F3F0F.l		; 2F 0F 3F 1F
	and $05170B.l		; 2F 0B 17 05
	ora $0B.b,S		; 03 0B
	ora [$08.b]		; 07 08
	brk $05.b		; 00 05
	cop $2B.b		; 02 2B
	tsb $3F.b		; 04 3F
	brk $2F.b		; 00 2F
	brk $15.b		; 00 15
	cop $02.b		; 02 02
	ora ($05.b,X)		; 01 05
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $0B.b		; 00 0B
	brk $16.b		; 00 16
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	asl $04.b		; 06 04
	ora $0504.w		; 0D 04 05
	sbc $56BF3B.l,X		; FF 3B BF 56
	ldx $FE6C.w,Y		; BE 6C FE
	sec		; 38
	ply		; 7A
	bpl 122.b		; 10 7A
	brk $DA.b		; 00 DA
	brk $DB.b		; 00 DB
	brk $30.b		; 00 30
	tsa		; 3B
	ora ($D6.b)		; 12 D6
	tsb $6D.b		; 04 6D
	plp		; 28
	and $D550.w,Y		; 39 50 D5
	rti		; 40

	cmp $90.b		; C5 90
	lda $92.b,X		; B5 92
	ldx $3F.b,Y		; B6 3F
	adc $733F7C.l,X		; 7F 7C 3F 73
	bit $FB34.w,X		; 3C 34 FB
	adc $BF55FB.l,X		; 7F FB 55 BF
	ror $19.b		; 66 19
	ora [$08.b]		; 07 08
	phk		; 4B
	bit $1F.b,X		; 34 1F
	jsr $003C.w		; 20 3C 00
	sed		; F8
	ora ($F9.b,X)		; 01 F9
	ora ($BC.b,X)		; 01 BC
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	sbc [$F6.b]		; E7 F6
	adc $08E3.w,Y		; 79 E3 08
	adc $0EF108.l		; 6F 08 F1 0E
	adc ($0E.b),Y		; 71 0E
	lda $8C.b,S		; A3 8C
	eor [$C8.b]		; 47 C8
	sta [$00.b]		; 87 00
	ora ($00.b,X)		; 01 00
	bmi  12.b		; 30 0C
	sec		; 38
	txa		; 8A
	rol $FC4E.w,X		; 3E 4E FC
	tsb $1878.w		; 0C 78 18
	bmi   0.b		; 30 00
	cpx $F45B.w		; EC 5B F4
	pld		; 2B
	jsr ($FC12.w,X)		; FC 12 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $49.b		; 00 49
	eor $6C20.w,Y		; 59 20 6C
	bpl  52.b		; 10 34
	brk $18.b		; 00 18
	jsr $7028.w		; 20 28 70
	bvs  -8.b		; 70 F8
	sed		; F8
	sed		; F8
	sed		; F8
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
	ora $3C.b,S		; 03 3C
	ora [$1C.b]		; 07 1C
	ora $18.b,S		; 03 18
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$14.b],Y		; 17 14
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	bvc  96.b		; 50 60
	bmi  64.b		; 30 40
	clc		; 18
	rts		; 60

	clv		; B8
	cpy #$B8.b		; C0 B8
	cpy #$B8.b		; C0 B8
	cpy #$98.b		; C0 98
	cpy #$18.b		; C0 18
	rti		; 40

	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$58.b		; A0 58
	jmp.w [$FCE0]		; DC E0 FC
	plx		; FA
	jsr ($F4FA.w,X)		; FC FA F4
	sed		; F8
	sed		; F8
	beq  -7.b		; F0 F9
	inc $F6.b,X		; F6 F6
	sbc $0058.w,Y		; F9 58 00
	cpx #$00.b		; E0 00
	plx		; FA
	brk $FA.b		; 00 FA
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F6.b		; 00 F6
	brk $F9.b		; 00 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  56.b		; 10 38
	tsb $7C.b		; 04 7C
	inc A		; 1A
	phy		; 5A
	ldy $7897.w,X		; BC 97 78
	cli		; 58
	beq -72.b		; F0 B8
	beq   0.b		; F0 00
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $1A.b		; 00 1A
	brk $BC.b		; 00 BC
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	cpy #$7C.b		; C0 7C
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	cpx #$60.b		; E0 60
	rts		; 60

	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	jsr $00E0.w		; 20 E0 00
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$FC.b		; C0 FC
	cpx #$9E.b		; E0 9E
	bit $0E2F.w,X		; 3C 2F 0E
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	clc		; 18
	jmp ($1E0C.w,X)		; 7C 0C 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1C61.w		; 1C 61 1C
	adc ($1E.b,X)		; 61 1E
	adc $1E.b,S		; 63 1E
	adc $38.b,S		; 63 38
	adc $38.b,S		; 63 38
	.db $62, $3C, $66		; 62 3C 66
	trb $3E46.w		; 1C 46 3E
	jsr $203E.w		; 20 3E 20
	bit $3C20.w,X		; 3C 20 3C
	jsr $021E.w		; 20 1E 02
	asl $1802.w,X		; 1E 02 18
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	lsr $30.b		; 46 30
	mvp $4C,$38		; 44 38 4C
	sec		; 38
	jmp $4C20.w		; 4C 20 4C
	jsr $3048.w		; 20 48 30
	cli		; 58
	bmi  88.b		; 30 58
	bit $3C04.w,X		; 3C 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	php		; 08
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	cli		; 58
	rts		; 60

	clc		; 18
	sei		; 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	rti		; 40

	bpl 104.b		; 10 68
	clc		; 18
	rti		; 40

	sec		; 38
	rti		; 40

	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	jsr $0000.w		; 20 00 00
	brk $7C.b		; 00 7C
	brk $74.b		; 00 74
	php		; 08
	rol A		; 2A
	trb $1432.w		; 1C 32 14
	rol $3E00.w		; 2E 00 3E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	trb $14.b		; 14 14
	tsb $1004.w		; 0C 04 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	cop $7F.b		; 02 7F
	jsl $DF70EE.l		; 22 EE 70 DF
	adc ($B7.b,X)		; 61 B7
	cli		; 58
	sbc $007E00.l,X		; FF 00 7E 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	and ($30.b,X)		; 21 30
	adc ($78.b,X)		; 61 78
	rti		; 40

	pla		; 68
	bpl  88.b		; 10 58
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora $0C0710.l		; 0F 10 07 0C
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora $051D.w,X		; 1D 1D 05
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $05.b		; 04 05
	tsb $01.b		; 04 01
	brk $03.b		; 00 03
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $58.b		; 00 58
	stz $20.b		; 64 20
	bit $1CD0.w,X		; 3C D0 1C
	cpx #$0C.b		; E0 0C
	ldx $B6.b,Y		; B6 B6
	lda ($B2.b)		; B2 B2
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	ldy #$20.b		; A0 20
	cld		; D8
	clc		; 18
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sec		; 38
	sty $78.b		; 84 78
	cpy $70.b		; C4 70
	cpy $38.b		; C4 38
	sty $8830.w		; 8C 30 88
	cpx #$88.b		; E0 88
	beq -104.b		; F0 98
	rts		; 60

	bpl  -8.b		; 10 F8
	bra -72.b		; 80 B8
	bra -72.b		; 80 B8
	bra -16.b		; 80 F0
	bra  -8.b		; 80 F8
	dey		; 88
	bvs   0.b		; 70 00
	rts		; 60

	brk $F0.b		; 00 F0
	bpl 112.b		; 10 70
	ora #$003E.w		; 09 3E 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	ora $000309.l		; 0F 09 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
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
	rol $0F.b,X		; 36 0F
	dec A		; 3A
	ora [$6C.b]		; 07 6C
	ora ($6E.b,S),Y		; 13 6E
	ora ($63.b),Y		; 11 63
	trb $1C67.w		; 1C 67 1C
	adc ($1A.b,X)		; 61 1A
	adc $1A.b,S		; 63 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C0A.w		; 0E 0A 0C
	php		; 08
	tsb $1862.w		; 0C 62 18
	.db $62, $3C, $E6		; 62 3C E6
	bit $38E4.w,X		; 3C E4 38
	cpx $B8.b		; E4 B8
	stz $B0.b		; 64 B0
	stz $D8.b		; 64 D8
	bit $223E.w		; 2C 3E 22
	bit $1820.w,X		; 3C 20 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  12.b		; F0 0C
	sed		; F8
	tsb $0CF8.w		; 0C F8 0C
	bvs   4.b		; 70 04
	bvs   4.b		; 70 04
	sed		; F8
	sty $F8.b		; 84 F8
	sty $38.b		; 84 38
	sty $F8.b		; 84 F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jsr ($FC04.w,X)		; FC 04 FC
	tsb $7C.b		; 04 7C
	tsb $7C.b		; 04 7C
	tsb $F8.b		; 04 F8
	bra   1.b		; 80 01
	ora $010E02.l		; 0F 02 0E 01
	tsb $0C01.w		; 0C 01 0C
	ora [$1C.b]		; 07 1C
	ora [$1C.b]		; 07 1C
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $080F08.l		; 0F 08 0F 08
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	cpy #$20.b		; C0 20
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	ora $1713.w		; 0D 13 17
	ora $3F0F1F.l		; 0F 1F 0F 3F
	ora $00192E.l		; 0F 2E 19 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $13.b		; 00 13
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $19.b		; 00 19
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	clc		; 18
	stz $FA.b		; 64 FA
	xce		; FB
	jsr ($FFFE.w,X)		; FC FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00C0FF.l,X		; FF FF C0 00
	clc		; 18
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	cop $B8.b		; 02 B8
	eor [$C6.b]		; 47 C6
	and $10EF.w,Y		; 39 EF 10
	ora $01.b,S		; 03 01
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	ora $100718.l		; 0F 18 07 10
	ora $010030.l,X		; 1F 30 00 01
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	jsr ($D792.w,X)		; FC 92 D7
	inc A		; 1A
	cmp ($1E.b,S),Y		; D3 1E
	cmp ($1E.b,S),Y		; D3 1E
	cmp $1E.b,S		; C3 1E
	sbc $3E.b,S		; E3 3E
	.db $82, $3E, $40		; 82 3E 40
	ply		; 7A
	ora $C2.b,S		; 03 C2
	and #$E908.w		; 29 08 E9
	php		; 08
	sbc #$F908.w		; E9 08 F9
	clc		; 18
	cmp $14.b,X		; D5 14
	sbc #$9328.w		; E9 28 93
	ora ($6A.b)		; 12 6A
	ora $0835.w,X		; 1D 35 08
	and $227D00.l,X		; 3F 00 7D 22
	inc $FE71.w,X		; FE 71 FE
	adc ($CF.b),Y		; 71 CF
	bvs 126.b		; 70 7E
	ora ($3D.b,X)		; 01 3D
	jsr $1218.w		; 20 18 12
	clc		; 18
	inc A		; 1A
	brk $23.b		; 00 23
	jsr $6075.w		; 20 75 60
	adc $00.b,X		; 75 00
	sei		; 78
	brk $0D.b		; 00 0D
	sbc $C47B84.l,X		; FF 84 7B C4
	stp		; DB
	bit $0CFB.w		; 2C FB 0C
	sbc $F59C.w,Y		; F9 9C F5
	jsr ($F8EA.w,X)		; FC EA F8
	jsr ($E341.w,X)		; FC 41 E3
	rts		; 60

	sbc [$24.b]		; E7 24
	sbc $C8.b,S		; E3 C8
	adc $68.b,S		; 63 68
	sta $98.b,S		; 83 98
	sbc $F0.b,S		; E3 F0
	adc [$E0.b]		; 67 E0
	eor $41.b,S		; 43 41
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	sbc [$1C.b]		; E7 1C
	sbc $14.b,S		; E3 14
	sbc $807F08.l,X		; FF 08 7F 80
	sbc $FB32.w,X		; FD 32 FB
	bit $CB.b,X		; 34 CB
	bit $FF.b,X		; 34 FF
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $C0.b		; 00 C0
	cpy #$C3.b		; C0 C3
	eor $B7.b,S		; 43 B7
	sta $B7.b,X		; 95 B7
	sta $37.b,S		; 83 37
	ora $C0.b,S		; 03 C0
	cpy #$F9.b		; C0 F9
	asl $FD.b		; 06 FD
	inc A		; 1A
	inc $F434.w,X		; FE 34 F4
	ror A		; 6A
	cpx #$56.b		; E0 56
	clv		; B8
	eor ($EC.b)		; 52 EC
	cop $EC.b		; 02 EC
	cop $06.b		; 02 06
	brk $1A.b		; 00 1A
	clc		; 18
	jsr $4834.w		; 20 34 48
	pla		; 68
	trb $0C54.w		; 1C 54 0C
	rti		; 40

	trb $1E40.w		; 1C 40 1E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	bra -24.b		; 80 E8
	tsb $0CF8.w		; 0C F8 0C
	beq   4.b		; F0 04
	beq   4.b		; F0 04
	beq   4.b		; F0 04
	sed		; F8
	tsb $0CF8.w		; 0C F8 0C
	inx		; E8
	tsb $00F0.w		; 0C F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	tsb $1CF0.w		; 0C F0 1C
	beq  24.b		; F0 18
	rts		; 60

	clc		; 18
	bra -112.b		; 80 90
	cpx #$F0.b		; E0 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	sed		; F8
	php		; 08
	inx		; E8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	bvs  16.b		; 70 10
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	cpx #$F0.b		; E0 F0
	beq -24.b		; F0 E8
	beq -24.b		; F0 E8
	cpx #$D0.b		; E0 D0
	sed		; F8
	stz $2C.b		; 64 2C
	sbc ($F2.b)		; F2 F2
	tsb $00E0.w		; 0C E0 00
	bcs  64.b		; B0 40
	tay		; A8
	rti		; 40

	inx		; E8
	brk $D0.b		; 00 D0
	brk $64.b		; 00 64
	brk $F2.b		; 00 F2
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	ldy #$C0.b		; A0 C0
	sec		; 38
	cpy #$6C.b		; C0 6C
	bra  55.b		; 80 37
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	ldy #$48.b		; A0 48
	cli		; 58
	bit $6C.b		; 24 6C
	lda [$00.b],Y		; B7 00
	stp		; DB
	brk $DA.b		; 00 DA
	brk $EE.b		; 00 EE
	brk $74.b		; 00 74
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	beq  64.b		; F0 40
	bvs  38.b		; 70 26
	ror $B692.w		; 6E 92 B6
	bcc -76.b		; 90 B4
	iny		; C8
	cld		; D8
	rts		; 60

	inx		; E8
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $2A.b,X		; 15 2A
	tas		; 1B
	asl $1A.b		; 06 1A
	asl $1B.b		; 06 1B
	asl $07.b		; 06 07
	asl $0C07.w,X		; 1E 07 0C
	ora $04.b,S		; 03 04
	ora [$02.b]		; 07 02
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $11.b		; 00 11
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $7B.b		; 00 7B
	sbc $573FF7.l,X		; FF F7 3F 57
	lda $EADFB7.l,X		; BF B7 DF EA
	eor $5FFE.w,X		; 5D FE 5F
	tya		; 98
	adc $FF7E81.l,X		; 7F 81 7E FF
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	bra -97.b		; 80 9F
	cpy #$9D.b		; C0 9D
	brk $9F.b		; 00 9F
	brk $BF.b		; 00 BF
	brk $BE.b		; 00 BE
	brk $0E.b		; 00 0E
	jsr $613D.w		; 20 3D 61
	inc A		; 1A
	eor $34.b,S		; 43 34
	adc [$18.b]		; 67 18
	and $001C00.l,X		; 3F 00 1C 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	jsr $001E.w		; 20 1E 00
	and $1A01.w,X		; 3D 01 1A
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sbc ($01.b)		; F2 01
	sbc $01.b,S		; E3 01
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $23.b		; 00 23
	jsl $804040.l		; 22 40 40 80
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora ($3F.b,X)		; 01 3F
	ora $3F.b,S		; 03 3F
	ora [$1E.b]		; 07 1E
	ora $000F1E.l		; 0F 1E 0F 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $0C.b		; 02 0C
	ora $1B19.w		; 0D 19 1B
	asl $17.b,X		; 16 17
	asl $040F.w		; 0E 0F 04
	ora $FF81FE.l		; 0F FE 81 FF
	bvs  -9.b		; 70 F7
	sed		; F8
	inc $DEF0.w		; EE F0 DE
	cpx #$7F.b		; E0 7F
	bra  -2.b		; 80 FE
	cop $FD.b		; 02 FD
	tsb $00.b		; 04 00
	bra   1.b		; 80 01
	adc ($61.b),Y		; 71 61
	sbc $FBC2.w,Y		; F9 C2 FB
	sty $F5.b		; 84 F5
	tsb $09CC.w		; 0C CC 09
	dey		; 88
	and $20.b,S		; 23 20
	ora $04.b,S		; 03 04
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	jsr ($F800.w,X)		; FC 00 F8
	tsb $10.b		; 04 10
	trb $1890.w		; 1C 90 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	adc [$0F.b],Y		; 77 0F
	and [$0F.b],Y		; 37 0F
	and [$0F.b],Y		; 37 0F
	bpl  12.b		; 10 0C
	ora ($03.b),Y		; 11 03
	tas		; 1B
	ora [$0B.b]		; 07 0B
	ora [$0D.b]		; 07 0D
	ora $03.b,S		; 03 03
	ora $031F03.l		; 0F 03 1F 03
	ora $001F00.l,X		; 1F 00 1F 00
	ora $010F01.l		; 0F 01 0F 01
	ora [$00.b]		; 07 00
	ora [$F9.b]		; 07 F9
	sty $EC.b		; 84 EC
	sbc ($D6.b)		; F2 D6
	sbc ($3E.b,X)		; E1 3E
	ora $FCFE.w,X		; 1D FE FC
	jsr ($F4F8.w,X)		; FC F8 F4
	sed		; F8
	jsr ($07F0.w,X)		; FC F0 07
	sty $C3.b		; 84 C3
	sbc ($C1.b)		; F2 C1
	sbc $FC00.w,Y		; F9 00 FC
	clc		; 18
	jsr ($FCF0.w,X)		; FC F0 FC
	beq  -8.b		; F0 F8
	cpx #$F8.b		; E0 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	cop $05.b		; 02 05
	ora $0A.b		; 05 0A
	phd		; 0B
	ora [$1F.b],Y		; 17 1F
	ora [$1D.b]		; 07 1D
	ror $00.b		; 66 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $0A.b		; 00 0A
	brk $17.b		; 00 17
	brk $07.b		; 00 07
	brk $66.b		; 00 66
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $C5.b		; 06 C5
	pld		; 2B
	ora ($EF.b,S),Y		; 13 EF
	lda [$5F.b]		; A7 5F
	sta $FFFFFF.l,X		; 9F FF FF FF
	sbc $00007F.l,X		; FF 7F 00 00
	asl $00.b		; 06 00
	pld		; 2B
	brk $EF.b		; 00 EF
	brk $5F.b		; 00 5F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	ldy #$D0.b		; A0 D0
	cld		; D8
	sbc [$ED.b]		; E7 ED
	inc $FFF6.w,X		; FE F6 FF
	xce		; FB
	sbc $00F3FC.l,X		; FF FC F3 00
	brk $40.b		; 00 40
	brk $D0.b		; 00 D0
	brk $E7.b		; 00 E7
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	ora $050C04.l		; 0F 04 0C 05
	trb $180B.w		; 1C 0B 18
	phd		; 0B
	sec		; 38
	asl $30.b,X		; 16 30
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$10.b],Y		; 17 10
	ora $908000.l		; 0F 00 80 90
	rts		; 60

	beq -64.b		; F0 C0
	beq   0.b		; F0 00
	jsr $6040.w		; 20 40 60
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bvs  16.b		; 70 10
	bra -128.b		; 80 80
	jsr $E020.w		; 20 20 E0
	jsr $0080.w		; 20 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rol $1863.w		; 2E 63 18
	eor $1C.b,S		; 43 1C
	dec $78.b		; C6 78
	dec $30.b		; C6 30
	sty $38.b		; 84 38
	sty $8C70.w		; 8C 70 8C
	rts		; 60

	dey		; 88
	trb $3E00.w		; 1C 00 3E
	cop $78.b		; 02 78
	rti		; 40

	bit $7804.w,X		; 3C 04 78
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	dey		; 88
	beq -128.b		; F0 80
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $000F00.l,X		; 3F 00 0F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03030F.l		; 0F 0F 03 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	and [$C0.b],Y		; 37 C0
	ora $21DF20.l,X		; 1F 20 DF 21
	sta $8000E0.l,X		; 9F E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $C080.w		; 8C 80 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	jmp ($FC00.w,X)		; 7C 00 FC
	bpl  -1.b		; 10 FF
	jsr $00FE.w		; 20 FE 00
	jmp ($F040.w,X)		; 7C 40 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	bcc 127.b		; 90 7F
	bra  -1.b		; 80 FF
	ora ($FF.b,X)		; 01 FF
	cop $FE.b		; 02 FE
	ora $FA.b		; 05 FA
	ora $FE.b		; 05 FE
	ora ($FF.b,X)		; 01 FF
	clc		; 18
	sta [$07.b],Y		; 97 07
	stx $7D0E.w		; 8E 0E 7D
	adc $FAFA.w,X		; 7D FA FA
	sbc ($F5.b),Y		; F1 F5
	sbc ($E5.b,X)		; E1 E5
	cpy #$D4.b		; C0 D4
	bra -72.b		; 80 B8
	sta [$78.b]		; 87 78
	cmp ($24.b,S),Y		; D3 24
	ply		; 7A
	brk $30.b		; 00 30
	sty $00.b		; 84 00
	cpy $3800.w		; CC 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	pha		; 48
	jmp.w [$FC04]		; DC 04 FC
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora $180E18.l		; 0F 18 0E 18
	asl $0D18.w		; 0E 18 0D
	ora $390C.w,Y		; 19 0C 39
	ora $080F08.l		; 0F 08 0F 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $10.b,X		; 16 10
	ora [$11.b],Y		; 17 11
	cpy #$60.b		; C0 60
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b		; 05 03
	asl $01.b		; 06 01
	asl $3F01.w,X		; 1E 01 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $1C.b,S		; 03 1C
	trb $1E1E.w		; 1C 1E 1E
	asl $000E.w		; 0E 0E 00
	brk $0C.b		; 00 0C
	tsb $F0EC.w		; 0C EC F0
	inc $FE80.w,X		; FE 80 FE
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	sed		; F8
	brk $84.b		; 00 84
	sec		; 38
	dec A		; 3A
	sei		; 78
	sei		; 78
	tya		; 98
	txy		; 9B
	ora $03.b,S		; 03 03
	rts		; 60

	rts		; 60

	beq  -9.b		; F0 F7
	adc $9F.b,S		; 63 9F
	sta [$6F.b],Y		; 97 6F
	eor $59AE3F.l,X		; 5F 3F AE 59
	eor $2662.w,X		; 5D 62 26
	ora $001F.w,Y		; 19 1F 00
	cop $01.b		; 02 01
	sta $006F00.l,X		; 9F 00 6F 00
	and $005900.l,X		; 3F 00 59 00
	.db $62, $00, $19		; 62 00 19
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	sbc $FFDFBF.l,X		; FF BF DF FF
	cmp $E1FFCE.l,X		; DF CE FF E1
	sbc $FBE77A.l,X		; FF 7A E7 FB
	jmp ($78F7.w,X)		; 7C F7 78
	sbc $00DF00.l,X		; FF 00 DF 00
	cmp $00FF00.l,X		; DF 00 FF 00
	sbc $00E700.l,X		; FF 00 E7 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $FE.b		; 00 FE
	cmp $AC.b		; C5 AC
	sbc [$DD.b],Y		; F7 DD
	inc $BE.b		; E6 BE
	sbc ($BF.b,X)		; E1 BF
.ACCU 8
.INDEX 8
	sep #$F9		; E2 F9
	rol $BD.b		; 26 BD
	.db $62, $18, $F4		; 62 18 F4
	cmp ($00.b,X)		; C1 00
	sbc ($30.b,X)		; E1 30
	cpy #$20.b		; C0 20
	dec $DC00.w,X		; DE 00 DC
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	jsr $7038.w		; 20 38 70
	sei		; 78
	sei		; 78
	clv		; B8
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $30F8.w		; 20 F8 30
	jsr ($FC78.w,X)		; FC 78 FC
	sec		; 38
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	jsr $F000.w		; 20 00 F0
	ora $150EF2.l		; 0F F2 0E 15
	tsb $08FB.w		; 0C FB 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	ora $0B0C.w		; 0D 0C 0B
	inx		; E8
	sbc [$E0.b]		; E7 E0
	ora $002F00.l,X		; 1F 00 2F 00
	eor $00BD00.l,X		; 5F 00 BD 00
	tad		; 5B
	brk $37.b		; 00 37
	brk $3B.b		; 00 3B
	brk $17.b		; 00 17
	php		; 08
	asl $020E.w		; 0E 0E 02
	ora ($18.b)		; 12 18
	sec		; 38
	and $137B.w,Y		; 39 7B 13
	and [$07.b],Y		; 37 07
	ora $030703.l		; 0F 03 07 03
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $B7.b		; 00 B7
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $BD.b		; 00 BD
	brk $BE.b		; 00 BE
	brk $73.b		; 00 73
	adc ($04.b,S),Y		; 73 04
	tsb $A7.b		; 04 A7
	lda $236F27.l		; AF 27 6F 23
	adc [$33.b]		; 67 33
	adc [$38.b],Y		; 77 38
	ply		; 7A
	sec		; 38
	sei		; 78
	xba		; EB
	clc		; 18
	sed		; F8
	clc		; 18
	sbc $3FC01F.l,X		; FF 1F C0 3F
	cpy #$38.b		; C0 38
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$D0.b],Y		; D7 D0
	cmp [$C0.b]		; C7 C0
	brk $00.b		; 00 00
	stz $809C.w		; 9C 9C 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $FFC0C0.l,X		; 3F C0 C0 FF
	brk $FC.b		; 00 FC
	brk $30.b		; 00 30
	and $00FC00.l,X		; 3F 00 FC 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $3F.b,S		; 03 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $CE.b		; 00 CE
	asl $C0C0.w		; 0E C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $03C300.l,X		; FF 00 C3 03
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	ora [$FF.b]		; 07 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $03F300.l,X		; FF 00 F3 03
	rts		; 60

	adc $00FC00.l,X		; 7F 00 FC 00
	bra  24.b		; 80 18
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	stz $C01C.w		; 9C 1C C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $1C.b		; 00 1C
	ror $38.b		; 66 38
	ror $38.b		; 66 38
	stz $10.b		; 64 10
	mvp $44,$10		; 44 10 44
	clc		; 18
	pha		; 48
	bpl  72.b		; 10 48
	rts		; 60

	clc		; 18
	sec		; 38
	jsr $041C.w		; 20 1C 04
	clc		; 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	bpl  16.b		; 10 10
	beq   8.b		; F0 08
	sed		; F8
	brk $98.b		; 00 98
	rti		; 40

	bcc  72.b		; 90 48
	beq   8.b		; F0 08
	sed		; F8
	brk $F8.b		; 00 F8
	brk $EC.b		; 00 EC
	bpl  96.b		; 10 60
	rts		; 60

	bpl  16.b		; 10 10
	rts		; 60

	rti		; 40

	bvs  64.b		; 70 40
	bmi  32.b		; 30 20
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	cpx $CC10.w		; EC 10 CC
	bmi -50.b		; 30 CE
	bmi  70.b		; 30 46
	sec		; 38
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $043C.w,X		; 3C 3C 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bmi -64.b		; 30 C0
	brk $A0.b		; 00 A0
	cpy #$10.b		; C0 10
	cpx #$48.b		; E0 48
	bmi  96.b		; 30 60
	clc		; 18
	bmi -116.b		; 30 8C
	sta $8046.w,Y		; 99 46 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	bra -32.b		; 80 E0
	jsr $11F0.w		; 20 F0 11
	sed		; F8
	bit #$7C.b		; 89 7C
	mvp $30,$70		; 44 70 30
	bpl  48.b		; 10 30
	bmi  48.b		; 30 30
	bvs  48.b		; 70 30
	bmi 112.b		; 30 70
	beq 112.b		; F0 70
	beq  16.b		; F0 10
	beq   0.b		; F0 00
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	bpl 120.b		; 10 78
	bpl  -8.b		; 10 F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
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
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bit $24.b		; 24 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $24.b		; 04 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $10.b		; 00 10
	ora ($12.b)		; 12 12
	lsr $46.b		; 46 46
	tsb $04.b		; 04 04
	bra -112.b		; 80 90
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	cop $12.b		; 02 12
	rti		; 40

	lsr $00.b		; 46 00
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
	cop $02.b		; 02 02
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
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	rti		; 40

	rti		; 40

	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $080C.w		; 0C 0C 08
	tsb $0404.w		; 0C 04 04
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	rti		; 40

	rts		; 60

	jsr $0120.w		; 20 20 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rts		; 60

	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
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
	asl $06.b		; 06 06
	tsb $06.b		; 04 06
	stx $E6.b		; 86 E6
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	tsb $14.b		; 04 14
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	sty $E6.b		; 84 E6
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	tsb $14.b		; 04 14
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	ora #$09.b		; 09 09
	tsb $04.b		; 04 04
	rti		; 40

	rti		; 40

	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	rti		; 40

	pha		; 48
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	ora #$09.b		; 09 09
	tsb $04.b		; 04 04
	brk $40.b		; 00 40
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
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ror $FF7E.w,X		; 7E 7E FF
	sbc $EFFEEE.l,X		; FF EE FE EF
	sbc $67FFEF.l,X		; FF EF FF 67
	adc $001F03.l,X		; 7F 03 1F 00
	ora $02.b,S		; 03 02
	ror $FF02.w,X		; 7E 02 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	rti		; 40

	jmp ($FE82.w,X)		; 7C 82 FE
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	ror $00FE.w,X		; 7E FE 00
	jmp ($FE00.w,X)		; 7C 00 FE
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	php		; 08
	asl $FEF0.w		; 0E F0 FE
	ora ($03.b,X)		; 01 03
	rti		; 40

	rti		; 40

	jsr $1860.w		; 20 60 18
	sei		; 78
	ora [$3F.b]		; 07 3F
	bmi  48.b		; 30 30
	brk $0E.b		; 00 0E
	brk $FE.b		; 00 FE
	brk $03.b		; 00 03
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $78.b		; 00 78
	brk $3F.b		; 00 3F
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $F0F0.w		; 20 F0 F0
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $F0.b		; 00 F0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora #$09.b		; 09 09
	ora ($1B.b)		; 12 1B
	and $362D36.l		; 2F 36 2D 36
	adc $7C7E7C.l		; 6F 7C 7E 7C
	ror $017C.w,X		; 7E 7C 01
	ora ($01.b,X)		; 01 01
	ora #$02.b		; 09 02
	tas		; 1B
	cop $3F.b		; 02 3F
	tsb $3F.b		; 04 3F
	bit $7F.b		; 24 7F
	bit $7E.b		; 24 7E
	tsb $7E.b		; 04 7E
	rti		; 40

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	asl $08.b		; 06 08
	tsb $3C30.w		; 0C 30 3C
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	tsb $01.b		; 04 01
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	rti		; 40

	jsr $8049.w		; 20 49 80
	bpl -128.b		; 10 80
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	adc ($00.b,X)		; 61 00
	cmp #$00.b		; C9 00
	sta ($00.b),Y		; 91 00
	sbc ($00.b,X)		; E1 00
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	brk $C0.b		; 00 C0
	cpy #$F0.b		; C0 F0
	bvs  -2.b		; 70 FE
	ldx $DFF7.w,Y		; BE F7 DF
	beq -31.b		; F0 E1
	inc $AC76.w,X		; FE 76 AC
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	cpy #$60.b		; C0 60
	bvs -68.b		; 70 BC
	ldx $DFC3.w,Y		; BE C3 DF
	rts		; 60

	sbc ($30.b,X)		; E1 30
	inc $00.b,X		; F6 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$01.b		; E0 01
	and ($04.b,X)		; 21 04
	cpx $0000.w		; EC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpx #$00.b		; E0 00
	and ($00.b,X)		; 21 00
	cpx $3F00.w		; EC 00 3F
	brk $1F.b		; 00 1F
	ora ($1F.b,X)		; 01 1F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	ora $0E.b,S		; 03 0E
	ora $0E.b,S		; 03 0E
	ora ($0C.b,X)		; 01 0C
	ora $0919.w,Y		; 19 19 09
	ora #$08.b		; 09 08
	php		; 08
	phd		; 0B
	asl A		; 0A
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	plb		; AB
	sty $0C6A.w		; 8C 6A 0C
	rts		; 60

	tsb $0CE0.w		; 0C E0 0C
	cpx #$0C.b		; E0 0C
	beq  28.b		; F0 1C
	beq  28.b		; F0 1C
	cpy #$1C.b		; C0 1C
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	ora ($08.b,X)		; 01 08
	tsb $10.b		; 04 10
	ora ($00.b,X)		; 01 00
	rol $00.b		; 26 00
	tsb $0C00.w		; 0C 00 0C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $0900.w		; 0C 00 09
	brk $14.b		; 00 14
	brk $01.b		; 00 01
	brk $26.b		; 00 26
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	and ($48.b,X)		; 21 48
	cmp $8820.w,Y		; D9 20 88
	ora ($D0.b),Y		; 11 D0
	ora ($00.b,X)		; 01 00
	jsl $202DC0.l		; 22 C0 2D 20
	iny		; C8
	bra  98.b		; 80 62
	brk $69.b		; 00 69
	brk $FB.b		; 00 FB
	brk $9B.b		; 00 9B
	brk $F7.b		; 00 F7
	brk $66.b		; 00 66
	brk $FD.b		; 00 FD
	brk $F8.b		; 00 F8
	brk $E2.b		; 00 E2
	lsr $20.b,X		; 56 20
	asl A		; 0A
	brk $09.b		; 00 09
	brk $24.b		; 00 24
	bpl   5.b		; 10 05
	bpl  20.b		; 10 14
	brk $08.b		; 00 08
	bpl   6.b		; 10 06
	php		; 08
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	rol $1F1F.w,X		; 3E 1F 1F
	and $BF3F1F.l,X		; 3F 1F 3F BF
	and $8F0F37.l		; 2F 37 0F 8F
	ora $67.b,S		; 03 67
	ora [$07.b]		; 07 07
	ora [$08.b]		; 07 08
	sbc $04FF08.l,X		; FF 08 FF 04
	sbc $02FF04.l,X		; FF 04 FF 02
	sbc $02FF02.l,X		; FF 02 FF 02
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	rol $5F47.w,X		; 3E 47 5F
	lda $FF7FBF.l,X		; BF BF 7F FF
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $47.b		; 00 47
	brk $BF.b		; 00 BF
	brk $6F.b		; 00 6F
	bpl  95.b		; 10 5F
	jsr $C631.w		; 20 31 C6
	sec		; 38
	stz $18.b		; 64 18
	.db $62, $CD, $22		; 62 CD 22
	tsb $DCE2.w		; 0C E2 DC
	inc $90.b		; E6 90
	cpx $90.b		; E4 90
	cpy $78.b		; C4 78
	eor $1C.b,S		; 43 1C
	tsb $3C.b		; 04 3C
	jsr $011C.w		; 20 1C 01
	jmp.w [$D800]		; DC 00 D8
	brk $BC.b		; 00 BC
	bit $B8.b		; 24 B8
	brk $80.b		; 00 80
	cpx #$40.b		; E0 40
	beq -48.b		; F0 D0
	sed		; F8
	jsr ($7EFE.w,X)		; FC FE 7E
	sbc $29FFBF.l,X		; FF BF FF 29
	and [$3A.b],Y		; 37 3A
	ora ($00.b),Y		; 11 00
	cpx #$00.b		; E0 00
	beq -64.b		; F0 C0
	sed		; F8
	bvs  -2.b		; 70 FE
	bit $03FF.w		; 2C FF 03
	sbc $003F00.l,X		; FF 00 3F 00
	and $008000.l,X		; 3F 00 80 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra -64.b		; 80 C0
	cpy #$E8.b		; C0 E8
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra -64.b		; 80 C0
	rti		; 40

	inx		; E8
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	ora $10.b		; 05 10
	ora $104E10.l		; 0F 10 4E 10
	rol $08.b		; 26 08
	and $04.b,S		; 23 04
	eor $06.b,S		; 43 06
	cmp $062108.l		; CF 08 21 06
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	brk $2F.b		; 00 2F
	brk $27.b		; 00 27
	brk $47.b		; 00 47
	brk $CF.b		; 00 CF
	brk $E7.b		; 00 E7
	ora $02.b		; 05 02
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $08.b,S		; 03 08
	ora $10.b,S		; 03 10
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $42.b		; 05 42
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $4F.b		; 00 4F
	cmp $00.b,S		; C3 00
	sta $40.b,S		; 83 40
	asl $40.b		; 06 40
	ora ($80.b,X)		; 01 80
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	brk $C3.b		; 00 C3
	brk $C7.b		; 00 C7
	brk $83.b		; 00 83
	brk $83.b		; 00 83
	brk $07.b		; 00 07
	brk $14.b		; 00 14
	brk $04.b		; 00 04
	sbc $017F03.l,X		; FF 03 7F 01
	adc $7C02.w,X		; 7D 02 7C
	ora $3C.b,S		; 03 3C
	ora #$0E.b		; 09 0E
	ora $1806.w,Y		; 19 06 18
	ora [$0C.b]		; 07 0C
	tsb $184F.w		; 0C 4F 18
	ora $2120.w,Y		; 19 20 21
	asl $03.b		; 06 03
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	ora $000308.l		; 0F 08 03 00
	brk $12.b		; 00 12
	cpy #$C8.b		; C0 C8
	sbc ($77.b,X)		; E1 77
	ror $3F.b,X		; 76 3F
	tyx		; BB
	and $2B974F.l		; 2F 4F 97 2B
	cmp ($10.b,X)		; C1 10
	bit #$00.b		; 89 00
	ora ($80.b)		; 12 80
	iny		; C8
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $7F.b		; 00 7F
	bra -97.b		; 80 9F
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$1C.b]		; 07 1C
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	cpy #$1C.b		; C0 1C
	ldy #$3C.b		; A0 3C
	dey		; 88
	bit $7440.w,X		; 3C 40 74
	php		; 08
	stz $90.b		; 64 90
	cpx $08.b		; E4 08
	cpy $D810.w		; CC 10 D8
	beq  16.b		; F0 10
	iny		; C8
	php		; 08
	cpx #$20.b		; E0 20
	tya		; 98
	bpl -40.b		; 10 D8
	rti		; 40

	sec		; 38
	jsr $80B0.w		; 20 B0 80
	tay		; A8
	dey		; 88
	bpl   6.b		; 10 06
	asl $50.b		; 06 50
	mvp $08,$00		; 44 00 08
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $7E00.w,X		; 1E 00 7E
	brk $4C.b		; 00 4C
	brk $98.b		; 00 98
	brk $70.b		; 00 70
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $1E.b		; 00 1E
	brk $14.b		; 00 14
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $1E.b		; 00 1E
	brk $14.b		; 00 14
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	asl A		; 0A
	tsb $C1.b		; 04 C1
	tsb $50.b		; 04 50
	tsb $09.b		; 04 09
	asl $00.b		; 06 00
	cop $02.b		; 02 02
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	ora $000F00.l		; 0F 00 0F 00
	cmp $007F00.l		; CF 00 7F 00
	and $002700.l,X		; 3F 00 27 00
	ora [$00.b]		; 07 00
	eor [$0E.b]		; 47 0E
	ora [$54.b]		; 07 54
	ora $9B0FA5.l		; 0F A5 0F 9B
	ora $3F1F0D.l		; 0F 0D 1F 3F
	ora $3C53.w,X		; 1D 53 3C
	adc ($FF.b),Y		; 71 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $BCBFFC.l,X		; FF FC BF BC
	adc $F7FD7A.l,X		; 7F 7A FD F7
	plx		; FA
	sta [$78.b]		; 87 78
	sta $7E66.w,Y		; 99 66 7E
	bra  -2.b		; 80 FE
	brk $BD.b		; 00 BD
	ora ($5D.b,X)		; 01 5D
	and ($BD.b,X)		; 21 BD
	eor ($BA.b,X)		; 41 BA
	.db $42, $28		; 42 28
	cpy $8820.w		; CC 20 88
	bvc -104.b		; 50 98
	rti		; 40

	clc		; 18
	ldy #$30.b		; A0 30
	bra  48.b		; 80 30
	cpy #$70.b		; C0 70
	bne -32.b		; D0 E0
	bvs  64.b		; 70 40
	sei		; 78
	php		; 08
	inx		; E8
	dey		; 88
	beq  16.b		; F0 10
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $004700.l,X		; 1F 00 47 00
	ora $000300.l		; 0F 00 03 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	beq -32.b		; F0 E0
	inx		; E8
	cli		; 58
	jsr ($FE9C.w,X)		; FC 9C FE
	trb $663E.w		; 1C 3E 66
	ora $0B1F3E.l,X		; 1F 3E 1F 0B
	ora $20F0E0.l,X		; 1F E0 F0 20
	inx		; E8
	bvc  -4.b		; 50 FC
	bcc  -2.b		; 90 FE
	tsb $06FE.w		; 0C FE 06
	adc $013F02.l,X		; 7F 02 3F 01
	sta $020001.l,X		; 9F 01 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($50.b,X)		; 01 50
	ora ($50.b,X)		; 01 50
	ora ($90.b,X)		; 01 90
	brk $B0.b		; 00 B0
	brk $4C.b		; 00 4C
	jsr $0023.w		; 20 23 00
	ldy #$80.b		; A0 80
	bne  32.b		; D0 20
	brk $D1.b		; 00 D1
	brk $D1.b		; 00 D1
	brk $90.b		; 00 90
	brk $B0.b		; 00 B0
	brk $7C.b		; 00 7C
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp $18BF.w,X		; DD BF 18
	and $393F1C.l,X		; 3F 1C 3F 39
	ora $BE3F18.l,X		; 1F 18 3F BE
	ora $DF1F0E.l,X		; 1F 0E 1F DF
	ora $10FF18.l		; 0F 18 FF 10
	sbc $18FF10.l,X		; FF 10 FF 18
	sbc $08FF08.l,X		; FF 08 FF 08
	sbc $07FF0E.l,X		; FF 0E FF 07
	sbc $51D121.l,X		; FF 21 D1 51
	sta ($50.b,X)		; 81 50
	sta ($6A.b,X)		; 81 6A
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$28.b		; C0 28
	cpy #$01.b		; C0 01
	sbc [$00.b],Y		; F7 00
	cmp ($00.b,S),Y		; D3 00
	cmp ($00.b,S),Y		; D3 00
	nop		; EA
	brk $8C.b		; 00 8C
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	asl $3F.b,X		; 16 3F
	asl $2F1F.w		; 0E 1F 2F
	ora $031F07.l,X		; 1F 07 1F 03
	ora [$01.b]		; 07 01
	asl $06.b		; 06 06
	ora [$07.b]		; 07 07
	ora $02.b,S		; 03 02
	and $061F04.l,X		; 3F 04 1F 06
	adc $031F07.l,X		; 7F 07 1F 03
	ora [$00.b],Y		; 17 00
	ora $000700.l		; 0F 00 07 00
	ora [$06.b]		; 07 06
	eor $6E6F46.l		; 4F 46 6F 6E
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $6FBFDF.l,X		; FF DF BF 6F
	sta $040FFF.l,X		; 9F FF 0F 04
	eor $246F04.l		; 4F 04 6F 24
	adc $1FFFE8.l,X		; 7F E8 FF 1F
	sbc $04FF8F.l,X		; FF 8F FF 04
	sbc $00FF06.l,X		; FF 06 FF 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	ora ($09.b),Y		; 11 09
	asl $04.b,X		; 16 04
	php		; 08
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	asl $00.b,X		; 16 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $BA.b		; 00 BA
	adc $BE7D.w,X		; 7D 7D BE
	sbc $7FFF3F.l,X		; FF 3F FF 7F
	inc $BDFF.w,X		; FE FF BD
	ror $BC5B.w,X		; 7E 5B BC
	sbc ($4C.b,S),Y		; F3 4C
	adc $BE00.w,X		; 7D 00 BE
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	brk $3C.b		; 00 3C
	brk $8C.b		; 00 8C
	brk $DF.b		; 00 DF
	cpx $EF5F.w		; EC 5F EF
	rol $7FC7.w,X		; 3E C7 7F
	bra  -1.b		; 80 FF
	ora $FB0FF7.l		; 0F F7 0F FB
	ora [$FF.b]		; 07 FF
	ora $EC.b,S		; 03 EC
	tsb $0FE6.w		; 0C E6 0F
	cpy #$0F.b		; C0 0F
	bra   7.b		; 80 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	cpy #$00.b		; C0 00
	jsr $70C0.w		; 20 C0 70
	bra  -8.b		; 80 F8
	rts		; 60

	jsr ($DEE0.w,X)		; FC E0 DE
	cpx #$BF.b		; E0 BF
	cpy #$FF.b		; C0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	beq -56.b		; F0 C8
	sed		; F8
	sty $0EFC.w		; 8C FC 0E
	inc $E000.w		; EE 00 E0
	ldy $C040.w,X		; BC 40 C0
	rti		; 40

	sed		; F8
	bvs -16.b		; 70 F0
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $78.b		; 00 78
	bmi 112.b		; 30 70
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $FF0E.w		; 0E 0E FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $AE.b		; 00 AE
	brk $6E.b		; 00 6E
	brk $CF.b		; 00 CF
	cmp $609F9F.l		; CF 9F 9F 60
	rts		; 60

	dec $1CDE.w,X		; DE DE 1C
	trb $4C0C.w		; 1C 0C 4C
	tsb $55.b		; 04 55
	rti		; 40

	cmp ($A0.b),Y		; D1 A0
	rti		; 40

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	ora ($01.b,X)		; 01 01
	sec		; 38
	tas		; 1B
	stz $75.b		; 64 75
	tyx		; BB
	adc $FF7FFF.l,X		; 7F FF 7F FF
	rol $5FFF.w,X		; 3E FF 5F
	rol $0001.w,X		; 3E 01 00
	sec		; 38
	brk $64.b		; 00 64
	brk $9B.b		; 00 9B
	jsr $40BF.w		; 20 BF 40
	lda $00FF40.l,X		; BF 40 FF 00
	rol $8000.w,X		; 3E 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	beq -24.b		; F0 E8
	sed		; F8
	beq  -4.b		; F0 FC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpy #$F8.b		; C0 F8
	rts		; 60

	jsr ($4F87.w,X)		; FC 87 4F
	and $07.b,X		; 35 07
	stx $23.b,Y		; 96 23
	jmp ($0F03.w)		; 6C 03 0F
	ora #$04.b		; 09 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	sbc $003F01.l,X		; FF 01 3F 00
	lda $006F00.l,X		; BF 00 6F 00
	ora $000400.l		; 0F 00 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	rts		; 60

	clc		; 18
	sec		; 38
	tsb $04.b		; 04 04
	brk $42.b		; 00 42
	tsb $2C.b		; 04 2C
	asl $AF.b		; 06 AF
	ora $A7.b,S		; 03 A7
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	php		; 08
	sec		; 38
	tsb $04.b		; 04 04
	brk $42.b		; 00 42
	tsb $2C.b		; 04 2C
	cop $AF.b		; 02 AF
	cop $A7.b		; 02 A7
	cmp [$0F.b]		; C7 0F
	cmp [$0F.b]		; C7 0F
	eor $1F4D8F.l,X		; 5F 8F 4D 1F
	tya		; 98
	ora $7A3E39.l,X		; 1F 39 3E 7A
	bit $7D3A.w,X		; 3C 3A 7D
	ora [$FF.b]		; 07 FF
	ora [$FF.b]		; 07 FF
	ora $7F08FF.l		; 0F FF 08 7F
	php		; 08
	sbc $30FF10.l,X		; FF 10 FF 30
	inc $FF30.w,X		; FE 30 FF
	trb $A0E0.w		; 1C E0 A0
	cpy #$A0.b		; C0 A0
	cpy #$A0.b		; C0 A0
	cpy #$A0.b		; C0 A0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	ora $01.b,S		; 03 01
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	ora #$10.b		; 09 10
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $19.b		; 00 19
	eor $CFAF8F.l,X		; 5F 8F AF CF
	sta $CFAFCF.l,X		; 9F CF AF CF
	ora $9F4F9F.l		; 0F 9F 4F 9F
	and $1F3D1F.l,X		; 3F 1F 3D 1F
	ora [$FF.b]		; 07 FF
	ora $FF0EFF.l		; 0F FF 0E FF
	tsb $0CFF.w		; 0C FF 0C
	sbc $0FFF0A.l,X		; FF 0A FF 0F
	sbc $01FF0C.l,X		; FF 0C FF 01
	cop $03.b		; 02 03
	tsb $06.b		; 04 06
	php		; 08
	ora $2A11.w		; 0D 11 2A
	ora ($64.b,S),Y		; 13 64
	asl $70.b,X		; 16 70
	tsb $007C.w		; 0C 7C 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0C00.w		; 0E 00 0C
	brk $28.b		; 00 28
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	lda $704F30.l		; AF 30 4F 70
	sta $800FE0.l		; 8F E0 0F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$0F.b],Y		; F7 0F
	sbc $3FDF1F.l		; EF 1F DF 3F
	lda $3FDF7F.l,X		; BF 7F DF 3F
	adc $18A71C.l		; 6F 1C A7 18
	sbc $1F0000.l,X		; FF 00 00 1F
	ora [$3F.b]		; 07 3F
	ora $FF1F7F.l		; 0F 7F 1F FF
	ora $3C007F.l		; 0F 7F 00 3C
	ora $1B.b,S		; 03 1B
	sta [$97.b]		; 87 97
	jmp ($B080.w,X)		; 7C 80 B0
	cpy #$FE.b		; C0 FE
	cpy #$DE.b		; C0 DE
	cpx #$DC.b		; E0 DC
	cpx #$D8.b		; E0 D8
	rts		; 60

	beq  64.b		; F0 40
	bcs  64.b		; B0 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sty $8CEC.w		; 8C EC 8C
	cpx $E888.w		; EC 88 E8
	brk $60.b		; 00 60
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
	ora $001600.l		; 0F 00 16 00
	rol $1D00.w		; 2E 00 1D
	brk $0D.b		; 00 0D
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	ora $06.b,S		; 03 06
	asl $00.b		; 06 00
	ora #$0C.b		; 09 0C
	ora $0B09.w,X		; 1D 09 0B
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ror $EE00.w		; 6E 00 EE
	brk $DD.b		; 00 DD
	brk $DD.b		; 00 DD
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $63.b		; 00 63
	sta $48FC04.l,X		; 9F 04 FC 48
	cmp $D9C8.w,Y		; D9 C8 D9
	sta $99BB.w,Y		; 99 BB 99
	tyx		; BB
	tya		; 98
	clv		; B8
	brk $00.b		; 00 00
	sty $84.b		; 84 84
	phb		; 8B
	dey		; 88
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	cld		; D8
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	bra -72.b		; 80 B8
	cpy #$80.b		; C0 80
	ldy #$80.b		; A0 80
	ldy #$90.b		; A0 90
	bcs -112.b		; B0 90
	bcs  16.b		; B0 10
	bmi  16.b		; 30 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	cli		; 58
	bmi -64.b		; 30 C0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	asl $1D01.w		; 0E 01 1D
	ora $38.b,S		; 03 38
	asl $7F.b		; 06 7F
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $07.b		; 02 07
	asl $00.b		; 06 00
	brk $3A.b		; 00 3A
	adc $34.b,S		; 63 34
	dec $28.b		; C6 28
	sty $9850.w		; 8C 50 98
	jsr $4030.w		; 20 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	trb $7800.w		; 1C 00 78
	rti		; 40

	bvs   0.b		; 70 00
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C1700.l,X		; 1F 00 17 0C
	rol A		; 2A
	clc		; 18
	bit $00.b,X		; 34 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	trb $10.b		; 14 10
	php		; 08
	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	cop $04.b		; 02 04
	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
	bmi   0.b		; 30 00
	asl $00.b		; 06 00
	sta ($00.b)		; 92 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $33.b		; 00 33
	brk $0F.b		; 00 0F
	brk $BE.b		; 00 BE
	bra   0.b		; 80 00
	rti		; 40

	.db $82, $00, $84		; 82 00 84
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $C2.b		; 00 C2
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	asl $4D3E.w,X		; 1E 3E 4D
	phd		; 0B
	ldy $7D12.w,X		; BC 12 7D
	sta ($60.b),Y		; 91 60
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	rts		; 60

	bra   0.b		; 80 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F1.b		; 00 F1
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$C0.b		; C0 C0
	cpy #$C8.b		; C0 C8
	cpx #$FC.b		; E0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C8.b		; C0 C8
	ldy #$FC.b		; A0 FC
	sed		; F8
	sed		; F8
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FEFE.w,X)		; FC FE FE
	lsr $0EFE.w,X		; 5E FE 0E
	inc $EF97.w,X		; FE 97 EF
	lda [$C3.b],Y		; B7 C3
	sei		; 78
	sed		; F8
	tya		; 98
	jsr ($FC6C.w,X)		; FC 6C FC
	bit $FE.b		; 24 FE
	asl $FE.b		; 06 FE
	cop $FE.b		; 02 FE
	ora $FF.b		; 05 FF
	ora ($FF.b,X)		; 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl   0.b		; 10 00
	.db $62, $00, $00		; 62 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	bpl   0.b		; 10 00
	.db $62, $00, $00		; 62 00 00
	bcs  66.b		; B0 42
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	brk $62.b		; 00 62
	brk $02.b		; 00 02
	brk $84.b		; 00 84
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	asl $3D00.w,X		; 1E 00 3D
	trb $3E7F.w		; 1C 7F 3E
	eor M7C.w		; 4D 1D 21
	ora $0F.b,S		; 03 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	asl $3F1E.w,X		; 1E 1E 3F
	ora ($3F.b,X)		; 01 3F
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	cpx #$C1.b		; E0 C1
	cpy #$E1.b		; C0 E1
	cmp ($E2.b),Y		; D1 E2
	eor ($E4.b,S),Y		; 53 E4
	eor ($F2.b,X)		; 41 F2
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E1.b		; 00 E1
	brk $E1.b		; 00 E1
	brk $F3.b		; 00 F3
	brk $F7.b		; 00 F7
	brk $F3.b		; 00 F3
	eor ($E4.b)		; 52 E4
	sep #$C4		; E2 C4
	sty $E0.b,X		; 94 E0
	cpx $C0.b		; E4 C0
	tay		; A8
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	inc $00.b,X		; F6 00
	inc $00.b		; E6 00
	pea $E400.w		; F4 00 E4
	brk $E8.b		; 00 E8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	ora ($07.b,X)		; 01 07
	ora [$0C.b]		; 07 0C
	ora $301F18.l		; 0F 18 1F 30
	asl $3D60.w,X		; 1E 60 3D
	adc ($5A.b,X)		; 61 5A
	cmp $34.b,S		; C3 34
	stx $02.b		; 86 02
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	jsr $405E.w		; 20 5E 40
	bit $F800.w,X		; 3C 00 F8
	bra -28.b		; 80 E4
	ora $A01EC0.l,X		; 1F C0 1E A0
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $EA.b		; 00 EA
	asl A		; 0A
	inx		; E8
	php		; 08
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	and $02.b,S		; 23 02
	cop $02.b		; 02 02
	bit $30.b		; 24 30
	ora #$08.b		; 09 08
	ora $11.b,S		; 03 11
	and [$09.b]		; 27 09
	asl $0011.w		; 0E 11 00
	ora ($00.b),Y		; 11 00
	and $02.b,S		; 23 02
	cop $00.b		; 02 00
	bit $08.b,X		; 34 08
	php		; 08
	brk $11.b		; 00 11
	brk $29.b		; 00 29
	ora ($15.b,X)		; 01 15
	sta ($0C.b,S),Y		; 93 0C
	asl $0D18.w		; 0E 18 0D
	and ($4A.b),Y		; 31 4A
	adc $D5.b,S		; 63 D5
	ldx $AA.b		; A6 AA
	inc $DE17.w		; EE 17 DE
	and $F1.b,S		; 23 F1
	ora #$9E.b		; 09 9E
	ora [$00.b]		; 07 00
	asl $1C10.w,X		; 1E 10 1C
	.db $42, $38		; 42 38
	lda ($C0.b,X)		; A1 C0
	sbc ($A0.b,S),Y		; F3 A0
	cmp [$81.b]		; C7 81
	cmp $280000.l		; CF 00 00 28
	bpl  48.b		; 10 30
	brk $74.b		; 00 74
	php		; 08
	xce		; FB
	jmp $EEFD.w		; 4C FD EE
	rol $986D.w,X		; 3E 6D 98
	ora $000000.l		; 0F 00 00 00
	sec		; 38
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	rti		; 40

	adc $04FF60.l,X		; 7F 60 FF 04
	sbc $007F00.l,X		; FF 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	jsr $0808.w		; 20 08 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	sbc $0F5E0E.l,X		; FF 0E 5E 0F
	eor $1F170F.l		; 4F 0F 17 1F
	and [$3F.b],Y		; 37 3F
	and [$0F.b],Y		; 37 0F
	sta [$8F.b]		; 87 8F
	sbc [$CF.b],Y		; F7 CF
	asl $0EFF.w		; 0E FF 0E
	eor $064F0F.l,X		; 5F 0F 4F 06
	ora $073F07.l,X		; 1F 07 3F 07
	and $468F07.l,X		; 3F 07 8F 46
	sbc $C00080.l,X		; FF 80 00 C0
	brk $40.b		; 00 40
	bra -48.b		; 80 D0
	bra -80.b		; 80 B0
	cpy #$80.b		; C0 80
	beq -10.b		; F0 F6
	sed		; F8
	tsx		; BA
	jsr ($8000.w,X)		; FC 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	bcs  -2.b		; B0 FE
	bmi  -2.b		; 30 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $EBFF.w		; EE FF EB
	sbc $F4FFD9.l,X		; FF D9 FF F4
	sbc $F6FFFC.l,X		; FF FC FF F6
	sbc $C7FFED.l,X		; FF ED FF C7
	sbc $808080.l,X		; FF 80 80 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpy #$C0.b		; C0 C0
	jsr $E080.w		; 20 80 E0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$6E.b		; E0 6E
	and $3F1F7F.l,X		; 3F 7F 1F 3F
	and $EF3F1F.l,X		; 3F 1F 3F EF
	ora $EFEB17.l,X		; 1F 17 EB EF
	sbc ($E3.b,S),Y		; F3 E3
	cmp $0A7F0C.l,X		; DF 0C 7F 0A
	adc $053F12.l,X		; 7F 12 3F 05
	and $E11F00.l,X		; 3F 00 1F E1
	ora $D107EA.l,X		; 1F EA 07 D1
	and $3FFFDF.l,X		; 3F DF FF 3F
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFBFFF.l,X		; FF FF BF FF
	cmp $3EFF1D.l,X		; DF 1D FF 3E
	sbc $3DFF3F.l,X		; FF 3F FF 3D
	sbc $1BFF39.l,X		; FF 39 FF 1B
	sbc $C3FFB3.l,X		; FF B3 FF C3
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	adc $CCFF9D.l,X		; 7F 9D FF CC
	sbc $5DFFCF.l,X		; FF CF FF 5D
	sbc $58FF5F.l,X		; FF 5F FF 58
	sbc $30FF7A.l,X		; FF 7A FF 30
	sbc $ECF8D8.l,X		; FF D8 F8 EC
	jsr ($F4E4.w,X)		; FC E4 F4
	pea $E0F4.w		; F4 F4 E0
	cpx #$F0.b		; E0 F0
	beq -16.b		; F0 F0
	beq -32.b		; F0 E0
	cpx #$98.b		; E0 98
	sed		; F8
	dey		; 88
	jsr ($F480.w,X)		; FC 80 F4
	tsb $F4.b		; 04 F4
	jsr $60E0.w		; 20 E0 60
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	cpx #$FF.b		; E0 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FCFEFC.l,X		; FF FC FE FC
	inc $3EFF.w,X		; FE FF 3E
	sbc $ECFF7E.l,X		; FF 7E FF EC
	sbc $ECFFE6.l,X		; FF E6 FF EC
	sbc $98FFDC.l,X		; FF DC FF 98
	sbc $88A181.l,X		; FF 81 A1 88
	tay		; A8
	cpy #$A0.b		; C0 A0
	rti		; 40

	jsr $2444.w		; 20 44 24
	rti		; 40

	jsr $2141.w		; 20 41 21
	rti		; 40

	jsr $A181.w		; 20 81 A1
	php		; 08
	tay		; A8
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E4.b		; 00 E4
	brk $E0.b		; 00 E0
	brk $E1.b		; 00 E1
	brk $E0.b		; 00 E0
	inc $FEFE.w,X		; FE FE FE
	ldx $FEFE.w,Y		; BE FE FE
	plx		; FA
	inc $FF.b,X		; F6 FF
	tsb $FCFF.w		; 0C FF FC
	xce		; FB
	inc $F877.w,X		; FE 77 F8
	sec		; 38
	lda $FEBFBC.l,X		; BF BC BF FE
	sbc $08FF32.l,X		; FF 32 FF 08
	inc $FFF9.w,X		; FE F9 FF
	sbc ($FF.b,S),Y		; F3 FF
	adc ($FD.b,X)		; 61 FD
	sta $8D.b		; 85 8D
	ora $0D.b		; 05 0D
	ora ($99.b),Y		; 11 99
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	sty $64.b		; 84 64
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tsb $7F.b		; 04 7F
	bra -77.b		; 80 B3
	cpy #$C1.b		; C0 C1
	and [$28.b],Y		; 37 28
	lda [$A4.b]		; A7 A4
	plp		; 28
	lsr $16A9.w		; 4E A9 16
	phd		; 0B
	tsb $3F.b		; 04 3F
	brk $1E.b		; 00 1E
	plp		; 28
	asl $2028.w,X		; 1E 28 20
	bit $BCA0.w		; 2C A0 BC
	cop $7F.b		; 02 7F
	brk $B7.b		; 00 B7
	brk $26.b		; 00 26
	php		; 08
	plp		; 28
	tsb $042C.w		; 0C 2C 04
	bit $2284.w		; 2C 84 22
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bcc  19.b		; 90 13
	brk $33.b		; 00 33
	brk $06.b		; 00 06
	rti		; 40

	mvp $08,$00		; 44 00 08
	brk $5E.b		; 00 5E
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	bpl  19.b		; 10 13
	brk $33.b		; 00 33
	brk $06.b		; 00 06
	brk $44.b		; 00 44
	brk $08.b		; 00 08
	and $0F1B0F.l,X		; 3F 0F 1B 0F
	ora [$1B.b]		; 07 1B
	ora [$08.b],Y		; 17 08
	ora $2B00.w		; 0D 00 2B
	jsr $0009.w		; 20 09 00
	sty $0180.w		; 8C 80 01
	ora $001F01.l,X		; 1F 01 1F 00
	ora $001D00.l,X		; 1F 00 1D 00
	ora $2B00.w		; 0D 00 2B
	brk $08.b		; 00 08
	brk $8C.b		; 00 8C
	.db $42, $82		; 42 82
	rts		; 60

	bra -108.b		; 80 94
	cpx $D1.b		; E4 D1
	sbc ($7C.b,X)		; E1 7C
	cpx #$E6.b		; E0 E6
	jsr ($7EBD.w,X)		; FC BD 7E
	bit $00FF.w,X		; 3C FF 00
	.db $82, $00, $C0		; 82 00 C0
	bra -28.b		; 80 E4
	eor ($F1.b,X)		; 41 F1
	jsr $00FC.w		; 20 FC 00
	inc $FF10.w,X		; FE 10 FF
	clc		; 18
	sbc $5F4F37.l,X		; FF 37 4F 5F
	lda $2F1F2F.l,X		; BF 2F 1F 2F
	ora $CF1F6F.l,X		; 1F 6F 1F CF
	and $FF3FFF.l,X		; 3F FF 3F FF
	sbc $077F07.l,X		; FF 07 7F 07
	sbc $0F3F0F.l,X		; FF 0F 3F 0F
	and $0E7F0F.l,X		; 3F 0F 7F 0E
	sbc $3FFF0F.l,X		; FF 0F FF 3F
	sbc $9EFCBE.l,X		; FF BE FC 9E
	jsr ($FC8F.w,X)		; FC 8F FC
	cmp $FEDFFE.l,X		; DF FE DF FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FE10FF.l,X		; FF FF 10 FE
	sty $8CFE.w		; 8C FE 8C
	sbc $9CFF8C.l,X		; FF 8C FF 9C
	sbc $D6FFDE.l,X		; FF DE FF D6
	sbc $EFFFFE.l,X		; FF FE FF EF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $7FFF7C.l,X		; 7F 7C FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFB.l,X		; FF FB FF AF
	sbc $1FFF0D.l,X		; FF 0D FF 1F
	sbc $3EFF3C.l,X		; FF 3C FF 3E
	sbc $3BFF3E.l,X		; FF 3E FF 3B
	sbc $C0FF9B.l,X		; FF 9B FF C0
	beq -32.b		; F0 E0
	cpy #$F0.b		; C0 F0
	inx		; E8
	beq -24.b		; F0 E8
	pla		; 68
	cpx $60.b		; E4 60
	cpx $90.b		; E4 90
	beq -40.b		; F0 D8
	sed		; F8
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	cpy #$F8.b		; C0 F8
	cpx #$F8.b		; E0 F8
	rts		; 60

	cpx $E460.w		; EC 60 E4
	bpl -16.b		; 10 F0
	bpl  -8.b		; 10 F8
	sbc [$EF.b]		; E7 EF
	lda $DFBBCF.l,X		; BF CF BB DF
	and $8BA7FB.l,X		; 3F FB A7 8B
	adc [$9F.b],Y		; 77 9F
	eor $FFFF9F.l		; 4F 9F FF FF
	sta ($6F.b,S),Y		; 93 6F
	ora $BF1ABF.l		; 0F BF 1A BF
	adc ($77.b,S),Y		; 73 77
	phx		; DA
	lda $FEAFCF.l		; AF CF AF FE
	sta $F7DF98.l,X		; 9F 98 DF F7
	cmp $CBFBE3.l,X		; DF E3 FB CB
	xce		; FB
	sta $E3.b,S		; 83 E3
	lda $63.b,S		; A3 63
	bra  67.b		; 80 43
	cmp ($C1.b,X)		; C1 C1
	cmp [$CF.b]		; C7 CF
	cmp $FF.b,S		; C3 FF
	sta ($FF.b,X)		; 81 FF
	dey		; 88
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7FFF01.l,X		; FF 01 FF 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FF7F7F.l,X		; FF 7F 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $31FFFF.l,X		; FF FF FF 31
	sbc $E3FF71.l,X		; FF 71 FF E3
	sbc $FFFF73.l,X		; FF 73 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F8FFFF.l,X		; FF FF FF F8
	sed		; F8
	cpx #$F0.b		; E0 F0
	sbc ($E1.b,X)		; E1 E1
	cpx #$F0.b		; E0 F0
	cpx #$F0.b		; E0 F0
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	inx		; E8
	sed		; F8
	cpx #$F0.b		; E0 F0
	cmp ($E1.b,X)		; C1 E1
	cpy #$F0.b		; C0 F0
	cpx #$F0.b		; E0 F0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	inc $FCFC.w,X		; FE FC FC
	sed		; F8
	sed		; F8
	sed		; F8
	clv		; B8
	clv		; B8
	and $3838.w,Y		; 39 38 38
	adc $7170.w,Y		; 79 70 71
	bvs 114.b		; 70 72
	tya		; 98
	sbc $38FF18.l,X		; FF 18 FF 38
	sbc $38BF38.l,X		; FF 38 BF 38
	and $707F38.l,X		; 3F 38 7F 70
	adc $987E70.l,X		; 7F 70 7E 98
	cli		; 58
	bra  64.b		; 80 40
	bpl -80.b		; 10 B0
	brk $80.b		; 00 80
	jsr $00A0.w		; 20 A0 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	cld		; D8
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	sbc $F4EF60.l,X		; FF 60 EF F4
	inc $F8.b,X		; F6 F8
	sbc $FDFBF8.l,X		; FF F8 FB FD
	xce		; FB
	jsr ($8CFF.w,X)		; FC FF 8C
	inc $0008.w,X		; FE 08 00
	jsr ($FC04.w,X)		; FC 04 FC
	cpx #$F8.b		; E0 F8
	sbc ($FD.b),Y		; F1 FD
	sbc ($FD.b),Y		; F1 FD
	sbc ($FD.b),Y		; F1 FD
	tsb $8C.b		; 04 8C
	rts		; 60

	jmp ($0CEC.w)		; 6C EC 0C
	sta ($12.b)		; 92 12
	and $23.b,S		; 23 23
	inc $26.b		; E6 26
	sbc [$37.b],Y		; F7 37
	sta $4D0D.w		; 8D 0D 4D
	eor $0F8F.w		; 4D 8F 0F
	tsb $120D.w		; 0C 0D 12
	eor ($20.b,S),Y		; 53 20
	lda [$A4.b]		; A7 A4
	lda [$90.b]		; A7 90
	lda [$08.b],Y		; B7 08
	ora $CD48.w		; 0D 48 CD
	php		; 08
	cmp $000000.l		; CF 00 00 00
	brk $00.b		; 00 00
	trb $320D.w		; 1C 0D 32
	dec A		; 3A
	eor $7F3F.w,X		; 5D 3F 7F
	and $7F1F7F.l,X		; 3F 7F 1F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3200.w		; 1C 00 32
	brk $4D.b		; 00 4D
	bpl  95.b		; 10 5F
	jsr $205F.w		; 20 5F 20
	adc $BF7F00.l,X		; 7F 00 7F BF
	lda $7FFF7F.l,X		; BF 7F FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $DEDF.w,X		; FE DF DE
	lda $AFFE3D.l,X		; BF 3D FE AF
	bpl  67.b		; 10 43
	bit $334C.w,X		; 3C 4C 33
	lda $00FF44.l,X		; BF 44 FF 00
	dec $AE00.w,X		; DE 00 AE
	trb $DE.b		; 14 DE
	jsr $38FE.w		; 20 FE 38
	pea $FD7A.w		; F4 7A FD
	cpx #$FE.b		; E0 FE
	cpy $F8.b		; C4 F8
	ldy #$EC.b		; A0 EC
	tsb $03CB.w		; 0C CB 03
	dec $D090.w,X		; DE 90 D0
	jsr ($FEE0.w,X)		; FC E0 FE
	cpy #$E9.b		; C0 E9
	sty $CE.b		; 84 CE
	rts		; 60

	cpx #$88.b		; E0 88
	jmp.w [$BB88]		; DC 88 BB
	dey		; 88
	tsx		; BA
	ora [$07.b]		; 07 07
	ora [$07.b],Y		; 17 07
	sta $07070F.l		; 8F 0F 07 07
	ora $8F8F0F.l		; 0F 0F 8F 8F
	eor $FFFF5F.l,X		; 5F 5F FF FF
	ora ($07.b,X)		; 01 07
	ora $1F.b,S		; 03 1F
	ora $8F.b,S		; 03 8F
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	sta [$8F.b]		; 87 8F
	eor $FFFF5F.l		; 4F 5F FF FF
	sbc $F0FD.w,Y		; F9 FD F0
	sbc $D0.b,X		; F5 D0
	sbc ($80.b)		; F2 80
	bne   2.b		; D0 02
	cmp $0C.b,S		; C3 0C
	pha		; 48
	bit $F0.b,X		; 34 F0
	tas		; 1B
	phb		; 8B
	eor ($FD.b,X)		; 41 FD
	cpy #$FD.b		; C0 FD
	bra  -6.b		; 80 FA
	bra  -8.b		; 80 F8
	cop $F3.b		; 02 F3
	brk $FC.b		; 00 FC
	brk $F4.b		; 00 F4
	brk $FF.b		; 00 FF
	bvs 114.b		; 70 72
	sei		; 78
	ply		; 7A
	sbc ($FD.b),Y		; F1 FD
	sed		; F8
	jsr ($F8C0.w,X)		; FC C0 F8
	sbc ($FA.b)		; F2 FA
	cpx #$F0.b		; E0 F0
	iny		; C8
	inx		; E8
	bvs 126.b		; 70 7E
	sei		; 78
	ror $FD61.w,X		; 7E 61 FD
	beq  -4.b		; F0 FC
	cpy #$F8.b		; C0 F8
	cpy #$FA.b		; C0 FA
	cpy #$F0.b		; C0 F0
	bra -24.b		; 80 E8
	sec		; 38
	cld		; D8
	sec		; 38
	cld		; D8
	adc ($92.b)		; 72 92
	cpx #$60.b		; E0 60
	cpx #$60.b		; E0 60
	bra -32.b		; 80 E0
	ldy #$60.b		; A0 60
	ldx $18A2.w,Y		; BE A2 18
	sed		; F8
	php		; 08
	sed		; F8
	ora ($F2.b)		; 12 F2
	brk $E0.b		; 00 E0
	rts		; 60

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$A0.b		; E0 A0
	inc $FCFC.w,X		; FE FC FC
	and $303D.w,X		; 3D 3D 30
	bmi  96.b		; 30 60
	rts		; 60

	brk $00.b		; 00 00
	dey		; 88
	php		; 08
	bpl  16.b		; 10 10
	bra -128.b		; 80 80
	bpl  -4.b		; 10 FC
	sec		; 38
	and $3000.w,X		; 3D 00 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	php		; 08
	dey		; 88
	bpl  16.b		; 10 10
	brk $80.b		; 00 80
	sbc $E6F5F9.l,X		; FF F9 F5 E6
	sbc #$EE.b		; E9 EE
	cmp ($DD.b),Y		; D1 DD
	sbc $F2.b,S		; E3 F2
	cmp $F0FFEC.l		; CF EC FF F0
	sbc $F1F1E3.l,X		; FF E3 F1 F1
	plx		; FA
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	cpx $E8.b		; E4 E8
	cmp #$C0.b		; C9 C0
	cmp $C0.b,S		; C3 C0
	cmp $C0FFE0.l		; CF E0 FF C0
	sbc $FE807F.l,X		; FF 7F 80 FE
	ora ($FD.b),Y		; 11 FD
	ora $FB.b,S		; 03 FB
	eor [$F7.b]		; 47 F7
	ora $FD07FB.l		; 0F FB 07 FD
	ora $FC.b,S		; 03 FC
	sta $80.b,S		; 83 80
	ora ($10.b,X)		; 01 10
	ora ($00.b,S),Y		; 13 00
	ora [$41.b]		; 07 41
	eor $011F03.l		; 4F 03 1F 01
	sbc $00F700.l		; EF 00 F7 00
	xba		; EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora ($13.b,S),Y		; 13 13
	sta [$87.b]		; 87 87
	asl $06.b		; 06 06
	jmp $134C.w		; 4C 4C 13
	ora ($87.b,S),Y		; 13 87
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	bra  19.b		; 80 13
	ora ($02.b,S),Y		; 13 02
	sta [$04.b]		; 87 04
	asl $44.b		; 06 44
	jmp $1310.w		; 4C 10 13
	sta ($87.b,X)		; 81 87
	ora ($10.b,S),Y		; 13 10
	and ($30.b),Y		; 31 30
	and [$35.b],Y		; 37 35
	adc $FB78.w,X		; 7D 78 FB
	sed		; F8
	sbc ($E0.b,X)		; E1 E0
	cmp ($C0.b,X)		; C1 C0
	bpl   1.b		; 10 01
	ora ($11.b),Y		; 11 11
	bpl  48.b		; 10 30
	and $35.b		; 25 35
	ora $717B.w,Y		; 19 7B 71
	sbc $E0E0.w,Y		; F9 E0 E0
	bra -32.b		; 80 E0
	brk $11.b		; 00 11
	sbc $ED00.w		; ED 00 ED
	bra -35.b		; 80 DD
	brk $DB.b		; 00 DB
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $FF.b		; 00 FF
	ora ($8D.b,X)		; 01 8D
	adc ($C8.b,S),Y		; 73 C8
	phx		; DA
	cmp #$DB.b		; C9 DB
	ora $933B.w,Y		; 19 3B 93
	lda [$33.b],Y		; B7 33
	adc [$33.b],Y		; 77 33
	adc [$00.b],Y		; 77 00
	ora ($30.b,X)		; 01 30
	and ($43.b),Y		; 31 43
	eor $36.b,S		; 43 36
	rol $8C.b,X		; 36 8C
	sty $1818.w		; 8C 18 18
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	bpl  24.b		; 10 18
	brk $43.b		; 00 43
	bit $36.b		; 24 36
	php		; 08
	sty $1818.w		; 8C 18 18
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	jsr $8820.w		; 20 20 88
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$09.b		; 09 09
	sec		; 38
	bit $0000.w,X		; 3C 00 00
	ora ($01.b,X)		; 01 01
	jsr $0820.w		; 20 20 08
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($09.b,X)		; 01 09
	brk $3C.b		; 00 3C
	and $0F1F1F.l		; 2F 1F 1F 0F
	ora $1F9F1F.l		; 0F 1F 9F 1F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	and $7FFBFF.l,X		; 3F FF FB 7F
	ora $0F0406.l,X		; 1F 06 04 0F
	ora [$0F.b],Y		; 17 0F
	asl $3D1F.w		; 0E 1F 3D
	ror $FCCB.w,X		; 7E CB FC
	cmp $783738.l,X		; DF 38 37 78
	xce		; FB
	adc $FFDB.w,X		; 7D DB FF
	xba		; EB
	cmp $EFF8F7.l,X		; DF F7 F8 EF
	beq -33.b		; F0 DF
	sbc ($BE.b,X)		; E1 BE
	cmp ($7F.b),Y		; D1 7F
	bra  93.b		; 80 5D
	and ($FD.b,X)		; 21 FD
	cmp $1C.b,S		; C3 1C
	cmp $F8.b,S		; C3 F8
	ora ($F0.b),Y		; 11 F0
	brk $E0.b		; 00 E0
	cmp ($D0.b,X)		; C1 D0
	ora ($80.b),Y		; 11 80
	ora ($DF.b,X)		; 01 DF
	mvp $00,$DA		; 44 DA 00
	plx		; FA
	jsr $E1FB.w		; 20 FB E1
	xce		; FB
	eor $F3.b,S		; 43 F3
	sta $8FFA.w,Y		; 99 FA 8F
	inc $58F7.w,X		; FE F7 58
	adc $203E00.l,X		; 7F 00 3E 20
	bit $F793.w,X		; 3C 93 F7
	and ($77.b,S),Y		; 33 77
	sta ($9F.b,S),Y		; 93 9F
	.db $82, $8F, $46		; 82 8F 46
	cmp [$E7.b]		; C7 E7
	sbc [$E7.b],Y		; F7 E7
	sbc [$C3.b],Y		; F7 C3
	sbc ($C3.b,S),Y		; F3 C3
	sbc $07.b,S		; E3 07
	adc [$0E.b]		; 67 0E
	dec $8E1E.w		; CE 1E 8E
	bit $C73D.w,X		; 3C 3D C7
	sbc [$C3.b],Y		; F7 C3
	sbc [$C2.b],Y		; F7 C2
	sbc $02FF82.l,X		; FF 82 FF 02
	adc $08FE04.l,X		; 7F 04 FE 08
	inc $FD10.w,X		; FE 10 FD
	and ($F9.b),Y		; 31 F9
	and [$3F.b],Y		; 37 3F
	dec A		; 3A
	and $1F7EFC.l,X		; 3F FC 7E 1F
	asl $EEEC.w,X		; 1E EC EE
	plp		; 28
	and $214F4C.l		; 2F 4C 4F 21
	sbc $FF23.w,Y		; F9 23 FF
	inc A		; 1A
	sbc $08FE04.l,X		; FF 04 FE 08
	sbc $00EE28.l,X		; FF 28 EE 00
	adc $88CF00.l		; 6F 00 CF 88
	dey		; 88
	cmp ($D1.b),Y		; D1 D1
	lda $E3.b,S		; A3 E3
	sty $54.b,X		; 94 54
	dex		; CA
	asl A		; 0A
	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	bra -128.b		; 80 80
	brk $88.b		; 00 88
	sta ($D1.b),Y		; 91 D1
	.db $82, $E3, $10		; 82 E3 10
	pei ($00.b)		; D4 00
	dex		; CA
	brk $00.b		; 00 00
	bpl  17.b		; 10 11
	bra -128.b		; 80 80
	cli		; 58
	rts		; 60

	php		; 08
	plp		; 28
	ora ($00.b,X)		; 01 00
	bcc -128.b		; 90 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	brk $F8.b		; 00 F8
	brk $68.b		; 00 68
	brk $41.b		; 00 41
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($E0CC.w,X)		; FC CC E0
	cpx #$80.b		; E0 80
	bra   1.b		; 80 01
	ora ($41.b,X)		; 01 41
	rti		; 40

	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	ora ($10.b),Y		; 11 10
	bra  -4.b		; 80 FC
	rti		; 40

	cpx #$00.b		; E0 00
	bra   1.b		; 80 01
	ora ($40.b,X)		; 01 40
	rti		; 40

	bpl  16.b		; 10 10
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	sbc $107FC8.l,X		; FF C8 7F 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F01.l,X		; FF 01 7F 00
	sbc [$40.b],Y		; F7 40
	sbc [$82.b],Y		; F7 82
	cli		; 58
	phx		; DA
	and $7339.w,Y		; 39 39 73
	adc ($EC.b,S),Y		; 73 EC
	cpx $1B1A.w		; EC 1A 1B
	and $23.b,S		; 23 23
	adc ($69.b,X)		; 61 69
	cpx #$EA.b		; E0 EA
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	pha		; 48
	pha		; 48
	ora ($01.b,X)		; 01 01
	jsr $0420.w		; 20 20 04
	tsb $80.b		; 04 80
	bra   0.b		; 80 00
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	php		; 08
	pha		; 48
	ora ($01.b,X)		; 01 01
	jsr $0020.w		; 20 20 00
	tsb $00.b		; 04 00
	bra  14.b		; 80 0E
	asl $1D1D.w		; 0E 1D 1D
	inc A		; 1A
	inc A		; 1A
	sta $85.b		; 85 85
	rol $182F.w		; 2E 2F 18
	clc		; 18
	and $31.b,X		; 35 31
	and ($31.b),Y		; 31 31
	asl A		; 0A
	asl $1D19.w		; 0E 19 1D
	inc A		; 1A
	inc A		; 1A
	tsb $85.b		; 04 85
	tsb $182F.w		; 0C 2F 18
	clc		; 18
	bmi  53.b		; 30 35
	bmi  49.b		; 30 31
	bvs   4.b		; 70 04
	rti		; 40

	and ($80.b),Y		; 31 80
	eor ($05.b,X)		; 41 05
	sta $40.b		; 85 40
	rti		; 40

	dey		; 88
	dey		; 88
	tya		; 98
	tya		; 98
	bit $34.b,X		; 34 34
	brk $74.b		; 00 74
	brk $71.b		; 00 71
	brk $C1.b		; 00 C1
	ora $85.b		; 05 85
	brk $40.b		; 00 40
	php		; 08
	dey		; 88
	bpl -104.b		; 10 98
	trb $34.b		; 14 34
	ora $7F.b,S		; 03 7F
	ora $7F.b		; 05 7F
	ora #$3F.b		; 09 3F
	ora $3F.b,S		; 03 3F
	ora $3C211F.l		; 0F 1F 21 3C
	eor [$5C.b]		; 47 5C
	ora [$1C.b]		; 07 1C
	bmi  51.b		; 30 33
	and ($36.b)		; 32 36
	ora ($1B.b,S),Y		; 13 1B
	bpl  17.b		; 10 11
	trb $271F.w		; 1C 1F 27
	bit $43.b		; 24 43
	rti		; 40

	ora $00.b,S		; 03 00
	brk $09.b		; 00 09
	ora ($05.b,X)		; 01 05
	and $23.b,S		; 23 23
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($12.b)		; 12 12
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	cop $23.b		; 02 23
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	bpl  18.b		; 10 12
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	cop $01.b		; 02 01
	and ($37.b,X)		; 21 37
	ora ($E7.b),Y		; 11 E7
	ldy $22.b		; A4 22
	tsb $0004.w		; 0C 04 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	brk $02.b		; 00 02
	brk $34.b		; 00 34
	ora $F3.b,S		; 03 F3
	jsr $02E7.w		; 20 E7 02
	cmp $0404.w,X		; DD 04 04
	brk $00.b		; 00 00
	asl A		; 0A
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	stz $3E98.w,X		; 9E 98 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $84.b		; 00 84
	stz $1808.w		; 9C 08 18
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $3C.b		; 00 3C
	brk $E0.b		; 00 E0
	bmi -24.b		; 30 E8
	bvs -56.b		; 70 C8
	beq -28.b		; F0 E4
	sec		; 38
	pea $3438.w		; F4 38 34
	sei		; 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $F0.b		; 00 F0
	rts		; 60

	sed		; F8
	rti		; 40

	sed		; F8
	jsr $20FC.w		; 20 FC 20
	jsr ($7C00.w,X)		; FC 00 7C
	bit $78.b,X		; 34 78
	and ($FC.b)		; 32 FC
	plx		; FA
	jsr ($7C7A.w,X)		; FC 7A 7C
	jsr ($DD3E.w,X)		; FC 3E DD
	ror $FEFF.w,X		; 7E FF FE
	adc $7C30BE.l		; 6F BE 30 7C
	bmi  -2.b		; 30 FE
	bpl  -2.b		; 10 FE
	clc		; 18
	ror $FE18.w,X		; 7E 18 FE
	clc		; 18
	sbc $0CFF3E.l,X		; FF 3E FF 0C
	sbc $000000.l,X		; FF 00 00 00
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
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	php		; 08
	ora #$01.b		; 09 01
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	brk $21.b		; 00 21
	php		; 08
	php		; 08
	ora ($09.b,X)		; 01 09
	jsr $0020.w		; 20 20 00
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $03.b		; 00 03
	tsb $1F.b		; 04 1F
	and $2F.b,S		; 23 2F
	eor $003F5F.l,X		; 5F 5F 3F 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	jsr $0004.w		; 20 04 00
	and $00.b,S		; 23 00
	eor $0A3700.l,X		; 5F 00 37 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	asl $06.b		; 06 06
	php		; 08
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	php		; 08
	ora ($11.b),Y		; 11 11
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b		; 05 03
	and $030F23.l		; 2F 23 0F 03
	brk $11.b		; 00 11
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	and $27.b		; 25 27
	ora $07.b		; 05 07
	eor $0F1743.l		; 4F 43 17 0F
	ora $0E1F0F.l,X		; 1F 0F 1F 0E
	lsr $4E4E.w,X		; 5E 4E 4E
	rti		; 40

	ora ($01.b,X)		; 01 01
	pha		; 48
	pha		; 48
	eor $43.b,S		; 43 43
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	asl $0E.b		; 06 0E
	asl $4E.b		; 06 4E
	brk $40.b		; 00 40
	ora ($01.b,X)		; 01 01
	pha		; 48
	pha		; 48
	ldx $7FB9.w,Y		; BE B9 7F
	adc $7FFF.w,Y		; 79 FF 7F
	sbc $7B.b,S		; E3 7B
	sbc [$7F.b],Y		; F7 7F
	sbc $7FFF3F.l,X		; FF 3F FF 7F
	sbc $A9C87F.l,X		; FF 7F C8 A9
	cmp $DF79.w,Y		; D9 79 DF
	adc $F773F3.l,X		; 7F F3 73 F7
	adc [$DF.b],Y		; 77 DF
	and $BA7FBD.l,X		; 3F BD 7F BA
	adc $231903.l,X		; 7F 03 19 23
	sec		; 38
	ora $180F18.l		; 0F 18 0F 18
	asl $4E1A.w		; 0E 1A 4E
	cli		; 58
	ora $190E19.l		; 0F 19 0E 19
	ora $282F09.l		; 0F 09 2F 28
	ora [$00.b]		; 07 00
	ora $020708.l		; 0F 08 07 02
	eor [$40.b]		; 47 40
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	inc $9F7F.w,X		; FE 7F 9F
	and $187E4E.l,X		; 3F 4E 7E 18
	sei		; 78
	stz $1EFC.w		; 9C FC 1E
	jsr ($EC0C.w,X)		; FC 0C EC
	sty $96FC.w		; 8C FC 96
	adc $943FE4.l,X		; 7F E4 3F 94
	ora $245FC0.l,X		; 1F C0 5F 24
	and $08BF9C.l,X		; 3F 9C BF 08
	jmp ($FC08.w,X)		; 7C 08 FC
	and $771A3B.l		; 2F 3B 1A 77
	stz $CF.b,X		; 74 CF
	plx		; FA
	sbc $FCFA.w,X		; FD FA FC
	cpx $FFC8.w		; EC C8 FF
	and [$BD.b]		; 27 BD
	and $3335.w,X		; 3D 35 33
	jsl $0F342F.l		; 22 2F 34 0F
	pla		; 68
	adc $F0FFF0.l,X		; 7F F0 FF F0
	cmp [$C6.b]		; C7 C6
	and $501DCD.l,X		; 3F CD 1D 50
	bvs -92.b		; 70 A4
	cpx $04.b		; E4 04
	brk $F2.b		; 00 F2
	bit $F561.w		; 2C 61 F5
	ldy #$A4.b		; A0 A4
	brk $C0.b		; 00 C0
	cop $02.b		; 02 02
	bra  48.b		; 80 30
	bit $24.b		; 24 24
	brk $AD.b		; 00 AD
	jsr $00FE.w		; 20 FE 00
	sbc $00.b,X		; F5 00
	ldy $00.b		; A4 00
	cpy #$02.b		; C0 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	.db $42, $01		; 42 01
	eor $03.b		; 45 03
	adc $6605.w,Y		; 79 05 66
	rol $185F.w,X		; 3E 5F 18
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $43.b		; 00 43
	brk $47.b		; 00 47
	cop $7F.b		; 02 7F
	ora ($7F.b,X)		; 01 7F
	jsr $7078.w		; 20 78 70
	brk $AF.b		; 00 AF
	bvs  88.b		; 70 58
	cmp $9F818F.l,X		; DF 8F 81 9F
	brk $FD.b		; 00 FD
	ora $F7.b,S		; 03 F7
	ora $001FEF.l		; 0F EF 1F 00
	bvs   0.b		; 70 00
	sbc $70FF20.l,X		; FF 20 FF 70
	sbc ($60.b),Y		; F1 60
	rts		; 60

	ora [$07.b]		; 07 07
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	plx		; FA
	ora $FD.b,S		; 03 FD
	ora ($F8.b,X)		; 01 F8
	brk $F9.b		; 00 F9
	brk $EB.b		; 00 EB
	cop $E5.b		; 02 E5
	asl $F9.b		; 06 F9
	asl A		; 0A
	nop		; EA
	tsb $0704.w		; 0C 04 07
	cop $03.b		; 02 03
	ora [$07.b]		; 07 07
	asl $07.b		; 06 07
	trb $17.b		; 14 17
	clc		; 18
	ora $100F04.l,X		; 1F 04 0F 10
	asl $00C0.w,X		; 1E C0 00
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	sty $EE.b		; 84 EE
	sbc $6B.b,S		; E3 6B
	asl $2E.b		; 06 2E
	eor ($D7.b,X)		; 41 D7
	sbc ($55.b),Y		; F1 55
	cmp ($A5.b,S),Y		; D3 A5
	adc $35.b,S		; 63 35
	ora ($74.b,S),Y		; 13 74
	pea $F313.w		; F4 13 F3
	stx $F6.b,Y		; 96 F6
	sta ($F1.b),Y		; 91 F1
	phd		; 0B
	xce		; FB
	pld		; 2B
	xce		; FB
	tas		; 1B
	xce		; FB
	phd		; 0B
	tsa		; 3B
	phx		; DA
	pla		; 68
	ldx #$34.b		; A2 34
	sty $D408.w		; 8C 08 D4
	clc		; 18
	pla		; 68
	bcs -48.b		; B0 D0
	ldy #$D0.b		; A0 D0
	ldy #$F8.b		; A0 F8
	ldy #$04.b		; A0 04
	ror $7E48.w,X		; 7E 48 7E
	bvs 124.b		; 70 7C
	jsr $803C.w		; 20 3C 80
	clv		; B8
	bra -80.b		; 80 B0
	bra -80.b		; 80 B0
	bra -72.b		; 80 B8
	sbc ($14.b,S),Y		; F3 14
	inc $07.b		; E6 07
	adc ($81.b,X)		; 61 81
	beq -128.b		; F0 80
	lda $C6.b,X		; B5 C6
	plx		; FA
	cpy $E65D.w		; CC 5D E6
	inc $0867.w,X		; FE 67 08
	ora $9E9F98.l,X		; 1F 98 9F 9E
	sta $C8CFCF.l,X		; 9F CF CF C8
	cmp $E0EEE0.l		; CF E0 EE E0
	sbc [$E0.b]		; E7 E0
	sbc [$00.b]		; E7 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -96.b		; 80 A0
	rti		; 40

	bvs  32.b		; 70 20
	bpl  24.b		; 10 18
	bra  24.b		; 80 18
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $18.b		; 00 18
	brk $98.b		; 00 98
	lda $103F10.l		; AF 10 3F 10
	and $305110.l,X		; 3F 10 51 30
	ldy #$60.b		; A0 60
	cpy #$40.b		; C0 40
	cli		; 58
	sec		; 38
	stz $1C.b		; 64 1C
	brk $B0.b		; 00 B0
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	asl $1F7E.w		; 0E 7E 1F
	sbc $07FF3F.l,X		; FF 3F FF 07
	adc $FF7F03.l,X		; 7F 03 7F FF
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	brk $9F.b		; 00 9F
	ror $AF.b		; 66 AF
	adc ($FF.b),Y		; 71 FF
	bmi  -1.b		; 30 FF
	and [$FF.b],Y		; 37 FF
	bmi   0.b		; 30 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $6E.b		; 00 6E
	ror $7171.w		; 6E 71 71
	bmi  48.b		; 30 30
	and [$37.b],Y		; 37 37
	bmi  48.b		; 30 30
	sbc [$8C.b],Y		; F7 8C
	rtl		; 6B

	ldx $FD.b,Y		; B6 FD
	ora $FA.b,S		; 03 FA
	eor $DF.b		; 45 DF
	clv		; B8
	sbc $C07F00.l,X		; FF 00 7F C0
	lda $8C8C40.l,X		; BF 40 8C 8C
	ldx $B6.b,Y		; B6 B6
	ora $03.b,S		; 03 03
	eor $45.b		; 45 45
	clv		; B8
	clv		; B8
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	lda [$39.b]		; A7 39
	sbc ($20.b,X)		; E1 20
	rep #$04		; C2 04
	dex		; CA
	sty $9854.w		; 8C 54 98
	cld		; D8
	bpl -120.b		; 10 88
	bpl  40.b		; 10 28
	bmi  64.b		; 30 40
	adc $383F1E.l,X		; 7F 1E 3F 38
	rol $BEB0.w,X		; 3E B0 BE
	ldy #$BC.b		; A0 BC
	jsr $6038.w		; 20 38 60
	sei		; 78
	cpy #$F8.b		; C0 F8
	phd		; 0B
	ora [$04.b]		; 07 04
	brk $04.b		; 00 04
	cop $03.b		; 02 03
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($8D.b,X)		; 01 8D
	cop $93.b		; 02 93
	asl $0F00.w		; 0E 00 0F
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $8E.b		; 00 8E
	brk $9E.b		; 00 9E
	lda $003F80.l,X		; BF 80 3F 00
	and $067900.l,X		; 3F 00 79 06
	sbc $1DEF8F.l,X		; FF 8F EF 1D
	sbc [$18.b],Y		; F7 18
	sbc $C04010.l,X		; FF 10 40 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	stx $86.b		; 86 86
	ora $1F1F8F.l		; 0F 8F 1F 1F
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	plp		; 28
	bpl -44.b		; 10 D4
	sec		; 38
	rtl		; 6B

	cpx $87F4.w		; EC F4 87
	xce		; FB
	brk $BF.b		; 00 BF
	cpy #$EF.b		; C0 EF
	beq  -9.b		; F0 F7
	sed		; F8
	brk $38.b		; 00 38
	brk $FC.b		; 00 FC
	bpl  -1.b		; 10 FF
	php		; 08
	sta $E00404.l		; 8F 04 04 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	sed		; F8
	sed		; F8
	ora $02.b		; 05 02
	inc A		; 1A
	tsb $EC.b		; 04 EC
	clc		; 18
	stz $E8.b		; 64 E8
	dey		; 88
	bpl -120.b		; 10 88
	bpl -42.b		; 10 D6
	clc		; 18
	sbc $06.b		; E5 06
	brk $07.b		; 00 07
	brk $1E.b		; 00 1E
	brk $FC.b		; 00 FC
	bpl  -4.b		; 10 FC
	rts		; 60

	sei		; 78
	rts		; 60

	sei		; 78
	jsr $183E.w		; 20 3E 18
	ora $AF408F.l,X		; 1F 8F 40 AF
	rts		; 60

	adc $803FC0.l,X		; 7F C0 3F 80
	sbc $909F80.l,X		; FF 80 9F 90
	pld		; 2B
	sec		; 38
	eor $F030B8.l		; 4F B8 30 F0
	bpl -16.b		; 10 F0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$00.b		; C0 00
	bra  96.b		; 80 60
	beq -60.b		; F0 C4
	jsr ($F800.w,X)		; FC 00 F8
	sbc $13FF11.l,X		; FF 11 FF 13
	sbc $0FFF11.l,X		; FF 11 FF 0F
	sbc $F703.w,X		; FD 03 F7
	php		; 08
	sbc $03FF04.l,X		; FF 04 FF 03
	ora ($11.b),Y		; 11 11
	ora ($13.b,S),Y		; 13 13
	ora ($11.b),Y		; 11 11
	ora $0B0B1F.l,X		; 1F 1F 0B 0B
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora $1C.b,X		; 15 1C
	bit #$14.b		; 89 14
	lda [$21.b],Y		; B7 21
	lda ($20.b),Y		; B1 20
	bne  96.b		; D0 60
	lda #$30.b		; A9 30
	sta $FC10.w,Y		; 99 10 FC
	sbc $62FFE2.l,X		; FF E2 FF 62
	adc $407740.l,X		; 7F 40 77 40
	adc ($00.b),Y		; 71 00
	bvs  64.b		; 70 40
	adc $7960.w,Y		; 79 60 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$25.b		; C0 25
	ora ($16.b,S),Y		; 13 16
	ora ($17.b,X)		; 01 17
	tsb $13.b		; 04 13
	ora [$18.b]		; 07 18
	ora $000807.l		; 0F 07 08 00
	php		; 08
	php		; 08
	brk $0B.b		; 00 0B
	tsa		; 3B
	ora #$19.b		; 09 19
	php		; 08
	trb $1F08.w		; 1C 08 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	inx		; E8
	bcs  88.b		; B0 58
	bcc -52.b		; 90 CC
	php		; 08
	bit $08.b,X		; 34 08
	stx $80.b		; 86 80
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	clv		; B8
	ldy #$B8.b		; A0 B8
	bmi  60.b		; 30 3C
	cpy #$FC.b		; C0 FC
	rti		; 40

	dec $00.b		; C6 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	tyx		; BB
	adc $E9.b,S		; 63 E9
	and ($DC.b),Y		; 31 DC
	bmi 116.b		; 30 74
	clc		; 18
	jmp ($BF18.w)		; 6C 18 BF
	bit #$77.b		; 89 77
	cpy $C65D.w		; CC 5D C6
	stz $77.b,X		; 74 77
	ror $77.b,X		; 76 77
	tsa		; 3B
	tsa		; 3B
	tyx		; BB
	tyx		; BB
	txy		; 9B
	txy		; 9B
	jmp $CC0CDD.l		; 5C DD 0C CC
	rol $90EE.w		; 2E EE 90
	php		; 08
	mvn $D4,$88		; 54 88 D4
	dey		; 88
	.db $62, $4C, $C2		; 62 4C C2
	sty $42.b		; 84 42
	sty $C6.b		; 84 C6
	sty $2A.b		; 84 2A
	rti		; 40

	brk $98.b		; 00 98
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	bra -18.b		; 80 EE
	brk $C6.b		; 00 C6
	brk $C6.b		; 00 C6
	brk $C6.b		; 00 C6
	sty $EE.b		; 84 EE
	inc A		; 1A
	asl $04.b		; 06 04
	cop $05.b		; 02 05
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($0A.b,X)		; 01 0A
	ora ($01.b,X)		; 01 01
	ora $000701.l,X		; 1F 01 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	sbc $35FF30.l,X		; FF 30 FF 35
	sbc $37EE33.l		; EF 33 EE 37
	sbc $7B8E.w,X		; FD 8E 7B
	trb $106F.w		; 1C 6F 10
	and $303000.l,X		; 3F 00 30 30
	and $35.b,X		; 35 35
	and ($33.b,S),Y		; 33 33
	and [$37.b],Y		; 37 37
	asl $9C8E.w		; 0E 8E 9C
	stz $9090.w		; 9C 90 90
	cpy #$C0.b		; C0 C0
	sbc $C07F00.l,X		; FF 00 7F C0
	lda $0CF340.l,X		; BF 40 F3 0C
	adc $F6FF9E.l,X		; 7F 9E FF F6
	sbc $FFE3.w,X		; FD E3 FF
	sbc ($00.b,X)		; E1 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	cpy #$0C.b		; C0 0C
	tsb $9E9E.w		; 0C 9E 9E
	inc $E3FE.w,X		; FE FE E3
	sbc $E1.b,S		; E3 E1
	sbc ($30.b,X)		; E1 30
	jsr $20B0.w		; 20 B0 20
	bit #$10.b		; 89 10
	dec $19.b,X		; D6 19
	xba		; EB
	asl $06F5.w		; 0E F5 06
	plx		; FA
	ora $F9.b,S		; 03 F9
	ora ($C0.b,X)		; 01 C0
	beq  64.b		; F0 40
	bvs  96.b		; 70 60
	adc $3F20.w,Y		; 79 20 3F
	bpl  31.b		; 10 1F
	php		; 08
	ora $060704.l		; 0F 04 07 06
	ora [$AB.b]		; 07 AB
	clc		; 18
	cmp ($30.b,S),Y		; D3 30
	adc #$18.b		; 69 18
	inc A		; 1A
	asl $05.b		; 06 05
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ldy $FC0C.w,X		; BC 0C FC
	asl $7E.b		; 06 7E
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	sbc $19EE10.l,X		; FF 10 EE 19
	sbc [$0F.b],Y		; F7 0F
	sbc $0E7700.l,X		; FF 00 77 0E
	rol $0F.b,X		; 36 0F
	lda $C67F86.l,X		; BF 86 7F C6
	bpl  16.b		; 10 10
	ora $1F19.w,Y		; 19 19 1F
	ora $8E0000.l,X		; 1F 00 00 8E
	stx $CFCF.w		; 8E CF CF
	eor $C606CF.l		; 4F CF 06 C6
	sbc $F3EEE1.l,X		; FF E1 EE F3
	sbc $5FFE.w,X		; FD FE 5F
	cpx #$FD.b		; E0 FD
	asl $1EED.w		; 0E ED 1E
	sbc $0CFF0C.l,X		; FF 0C FF 0C
	sbc ($E1.b,X)		; E1 E1
	sbc ($F3.b,S),Y		; F3 F3
	sbc $E0E0FF.l,X		; FF FF E0 E0
	asl $1E0E.w		; 0E 0E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	tsb $F90C.w		; 0C 0C F9
	cop $F2.b		; 02 F2
	brk $E6.b		; 00 E6
	tsb $EA.b		; 04 EA
	tsb $18D4.w		; 0C D4 18
	sty $1608.w		; 8C 08 16
	bit $426D.w		; 2C 6D 42
	tsb $07.b		; 04 07
	tsb $180E.w		; 0C 0E 18
	asl $1E10.w,X		; 1E 10 1E
	jsr $703C.w		; 20 3C 70
	jmp ($FEC0.w,X)		; 7C C0 FE
	bra -17.b		; 80 EF
	ora $03.b		; 05 03
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $063F06.l,X		; 3F 06 3F 06
	and $86BF06.l,X		; 3F 06 BF 86
	ora $46DF86.l,X		; 1F 86 DF 46
	ldx $7A67.w,Y		; BE 67 7A
	and [$C6.b]		; 27 C6
	dec $C6.b		; C6 C6
	dec $C6.b		; C6 C6
	dec $46.b		; C6 46
	dec $66.b		; C6 66
	inc $27.b		; E6 27
	sbc [$07.b]		; E7 07
	sbc [$07.b]		; E7 07
	adc [$FB.b]		; 67 FB
	trb $18FF.w		; 1C FF 18
	inc $FE18.w,X		; FE 18 FE
	clc		; 18
	inc $FC18.w,X		; FE 18 FC
	clc		; 18
	pea $FC18.w		; F4 18 FC
	brk $1C.b		; 00 1C
	trb $1C1C.w		; 1C 1C 1C
	ora $1919.w,Y		; 19 19 19
	ora $1919.w,Y		; 19 19 19
	tas		; 1B
	tas		; 1B
	tas		; 1B
	tas		; 1B
	ora $03.b,S		; 03 03
	jsr $5040.w		; 20 40 50
	rts		; 60

	pla		; 68
	bvs  20.b		; 70 14
	clc		; 18
	asl A		; 0A
	tsb $665C.w		; 0C 5C 66
	bit $42.b		; 24 42
	rep #$80		; C2 80
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	bra  -8.b		; 80 F8
	cpx #$FC.b		; E0 FC
	beq  -2.b		; F0 FE
	bra  -2.b		; 80 FE
	bra -26.b		; 80 E6
	brk $C2.b		; 00 C2
	brk $00.b		; 00 00
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	trb $0003.w		; 1C 03 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $0D43CD.l,X		; 1F CD 43 0D
	ora $9E.b,S		; 03 9E
	sta ($5F.b,X)		; 81 5F
	cpy #$BF.b		; C0 BF
	stx $75.b		; 86 75
	asl $0C7F.w		; 0E 7F 0C
	xba		; EB
	trb $F333.w		; 1C 33 F3
	sbc ($F3.b,S),Y		; F3 F3
	adc $E3.b,S		; 63 E3
	jsr $46E0.w		; 20 E0 46
	dec $8E.b		; C6 8E
	stx $9E9E.w		; 8E 9E 9E
	trb $EB1C.w		; 1C 1C EB
	stx $8866.w		; 8E 66 88
	cpy $9800.w		; CC 00 98
	bpl -16.b		; 10 F0
	rti		; 40

	cpy #$80.b		; C0 80
	ldy #$C0.b		; A0 C0
	bvc  96.b		; 50 60
	bne -33.b		; D0 DF
	bcc -98.b		; 90 9E
	bcs -68.b		; B0 BC
	rts		; 60

	sei		; 78
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	lda ($70.b),Y		; B1 70
	cpx $1C.b		; E4 1C
	inc A		; 1A
	asl $05.b		; 06 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	inc $FF03.w,X		; FE 03 FF
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $03.b		; 05 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	rol $A1.b		; 26 A1
	cmp [$41.b]		; C7 41
	sta $6E43.w		; 8D 43 6E
	and $6B.b,S		; 23 6B
	rol $9D.b		; 26 9D
	lsr $57.b		; 46 57
	cpy $083E.w		; CC 3E 08
	eor $3BF9.w,Y		; 59 F9 3B
	xce		; FB
	and ($F3.b,S),Y		; 33 F3
	ora [$77.b],Y		; 17 77
	ora [$77.b],Y		; 17 77
	rol $E6.b		; 26 E6
	rol $CDEE.w		; 2E EE CD
	cmp $0000.w		; CD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	bra -80.b		; 80 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	brk $95.b		; 00 95
	rtl		; 6B

	inc $BF73.w,X		; FE 73 BF
	adc ($D7.b)		; 72 D7
	dec A		; 3A
	adc $00C2.w,X		; 7D C2 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $6B.b		; 00 6B
	rtl		; 6B

	adc ($73.b,S),Y		; 73 73
	adc ($73.b,S),Y		; 73 73
	dec A		; 3A
	dec A		; 3A
	rep #$C2		; C2 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	phy		; 5A
	eor [$0F.b]		; 47 0F
	eor $ED.b,S		; 43 ED
	lda $4F.b,S		; A3 4F
	lda ($B6.b,X)		; A1 B6
	ora ($2B.b),Y		; 11 2B
	clc		; 18
	cmp ($08.b,S),Y		; D3 08
	adc $8C.b,X		; 75 8C
	lda [$E7.b]		; A7 E7
	lda [$F7.b],Y		; B7 F7
	ora ($F3.b,S),Y		; 13 F3
	ora ($F3.b,S),Y		; 13 F3
	ora #$B9.b		; 09 B9
	ora $3D.b		; 05 3D
	tsb $DC.b		; 04 DC
	cop $FE.b		; 02 FE
	sbc $0CFF0C.l,X		; FF 0C FF 0C
	sbc $0CFF0C.l,X		; FF 0C FF 0C
	sbc $0CFF0C.l,X		; FF 0C FF 0C
	sbc $1CEB1C.l		; EF 1C EB 1C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $1C1C.w		; 0C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $4063.w		; 1C 63 40
	and ($40.b,X)		; 21 40
	jsr $C040.w		; 20 40 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	sbc $80.b,S		; E3 80
	sbc ($80.b,X)		; E1 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $1F.b,S		; 03 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000000.l,X		; 1F 00 00 00
	brk $5B.b		; 00 5B
	and [$BF.b]		; 27 BF
	adc $5F.b,S		; 63 5F
	cmp $9F.b,S		; C3 9F
	sta $0F.b,S		; 83 0F
	ora $8F.b,S		; 03 8F
	eor $6D.b,S		; 43 6D
	and $AF.b,S		; 23 AF
	rts		; 60

	ora [$67.b]		; 07 67
	ora [$E7.b]		; 07 E7
	and $E3.b,S		; 23 E3
	adc $E3.b,S		; 63 E3
	sbc ($F3.b,S),Y		; F3 F3
	and ($F3.b,S),Y		; 33 F3
	ora ($73.b,S),Y		; 13 73
	bpl -16.b		; 10 F0
	cmp $DFB9.w,X		; DD B9 DF
	tyx		; BB
	adc [$99.b]		; 67 99
	sbc $18EF00.l,X		; FF 00 EF 18
	plb		; AB
	trb $0C37.w		; 1C 37 0C
	ora $BA06.w,X		; 1D 06 BA
	tyx		; BB
	clv		; B8
	tyx		; BB
	clv		; B8
	lda $0000.w,Y		; B9 00 00
	clc		; 18
	clc		; 18
	jmp $CECE5C.l		; 5C 5C CE CE
	sbc $8042EF.l		; EF EF 42 80
	bra   2.b		; 80 02
	eor $82.b		; 45 82
	cmp $84.b,S		; C3 84
	inc $9444.w		; EE 44 94
	plp		; 28
	cpx $D438.w		; EC 38 D4
	bpl   0.b		; 10 00
	rep #$00		; C2 00
	.db $82, $00, $C7		; 82 00 C7
	brk $C7.b		; 00 C7
	brk $6E.b		; 00 6E
	rti		; 40

	jmp ($3C00.w,X)		; 7C 00 3C
	plp		; 28
	bit $3C4C.w,X		; 3C 4C 3C
	lda ($4E.b)		; B2 4E
	eor $4D84.w		; 4D 84 4D
	sty $11.b		; 84 11
	dey		; 88
	tad		; 5B
	dey		; 88
	plb		; AB
	cld		; D8
	cmp ($F0.b,S),Y		; D3 F0
	ora $7F.b,S		; 03 7F
	ora ($FF.b,X)		; 01 FF
	cop $CE.b		; 02 CE
	cop $CE.b		; 02 CE
	asl $9E.b		; 06 9E
	tsb $DC.b		; 04 DC
	tsb $FC.b		; 04 FC
	ora $FFFD.w		; 0D FD FF
	clc		; 18
	inc $18.b,X		; F6 18
	dec $ED30.w,X		; DE 30 ED
	and ($BC.b),Y		; 31 BC
	adc ($DB.b,X)		; 61 DB
	.db $62, $72, $C3		; 62 72 C3
	lda $1CC9.w,Y		; B9 C9 1C
	trb $3939.w		; 1C 39 39
	and $7239.w,Y		; 39 39 72
	adc ($72.b,S),Y		; 73 72
	adc ($E4.b,S),Y		; 73 E4
	sbc [$EC.b]		; E7 EC
	sbc $38CFC6.l		; EF C6 CF 38
	rti		; 40

	cpy #$80.b		; C0 80
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -96.b		; 80 A0
	rti		; 40

	bra  -8.b		; 80 F8
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	php		; 08
	asl $13.b		; 06 13
	ora #$13.b		; 09 13
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $001B00.l		; 0F 00 1B 00
	ora ($7E.b,S),Y		; 13 7E
	brk $DC.b		; 00 DC
	bcs -11.b		; B0 F5
	ora $23DA.w,Y		; 19 DA 23
	tyx		; BB
	.db $62, $A8, $70		; 62 A8 70
	tsx		; BA
	adc ($BB.b,S),Y		; 73 BB
	adc ($81.b)		; 72 81
	sta ($3B.b,X)		; 81 3B
	tyx		; BB
	inc A		; 1A
	tas		; 1B
	stz $67.b		; 64 67
	stz $67.b		; 64 67
	adc [$77.b],Y		; 77 77
	stz $77.b,X		; 74 77
	stz $77.b,X		; 74 77
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	tsb $02.b		; 04 02
	tsb $0102.w		; 0C 02 01
	tsb $0E.b		; 04 0E
	tsb $0C.b		; 04 0C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $000702.l		; 0F 02 07 00
	asl $0C00.w		; 0E 00 0C
	brk $18.b		; 00 18
	lda #$72.b		; A9 72
	sta $F666.w,X		; 9D 66 F6
	tsb $C6.b		; 04 C6
	cpy $A2.b		; C4 A2
	stz $7C.b		; 64 7C
	php		; 08
	asl A		; 0A
	tsb $06.b		; 04 06
	brk $74.b		; 00 74
	adc [$60.b],Y		; 77 60
	adc [$08.b]		; 67 08
	asl $FE38.w		; 0E 38 FE
	clc		; 18
	inc $7C00.w,X		; FE 00 7C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	rts		; 60

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $20.b		; 00 20
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
	ora $01.b,S		; 03 01
	ora $03.b		; 05 03
	ora $001800.l		; 0F 00 18 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	eor $6303.w		; 4D 03 63
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $CC.b		; 00 CC
	sec		; 38
	sta ($FC.b)		; 92 FC
	cmp $FC.b,S		; C3 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $9F.b		; 00 9F
	and ($06.b),Y		; 31 06
	bmi  15.b		; 30 0F
	clc		; 18
	cop $19.b		; 02 19
	ora $1C.b		; 05 1C
	ora ($0C.b,X)		; 01 0C
	cop $0D.b		; 02 0D
	cop $05.b		; 02 05
	asl $1F00.w		; 0E 00 1F
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	ora #$02.b		; 09 02
	brk $06.b		; 00 06
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cpy #$00.b		; C0 00
	cpy #$40.b		; C0 40
	ldy #$A0.b		; A0 A0
	rti		; 40

	beq  96.b		; F0 60
	beq -48.b		; F0 D0
	sed		; F8
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	beq  16.b		; F0 10
	bcc  16.b		; 90 10
	bpl  31.b		; 10 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $0800.w		; 0E 00 08
	php		; 08
	bpl   4.b		; 10 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	php		; 08
	brk $14.b		; 00 14
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpx $A0.b		; E4 A0
	asl $1C.b		; 06 1C
	pld		; 2B
	bit $27.b,X		; 34 27
	and [$00.b]		; 27 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $F000.w		; 20 00 F0
	brk $F5.b		; 00 F5
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	rol $02FF.w,X		; 3E FF 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora $0A.b,S		; 03 0A
	ora [$0E.b]		; 07 0E
	ora [$14.b]		; 07 14
	ora $260C1B.l		; 0F 1B 0C 26
	ora $0001.w,Y		; 19 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $030F00.l		; 0F 00 0F 03
	clc		; 18
	brk $4A.b		; 00 4A
	sta ($64.b)		; 92 64
	cmp [$88.b]		; C7 88
	adc $30BF40.l		; 6F 40 BF 30
	cmp $F80CF3.l		; CF F3 0C F8
	tsb $FE.b		; 04 FE
	brk $ED.b		; 00 ED
	lda ($3A.b,X)		; A1 3A
	ora ($34.b)		; 12 34
	bit $81.b		; 24 81
	ora ($E3.b,X)		; 01 E3
	and $E8.b,S		; 23 E8
	inx		; E8
	sta [$84.b]		; 87 84
	ora ($00.b,X)		; 01 00
	tda		; 7B
	tsb $FB.b		; 04 FB
	tsb $FF.b		; 04 FF
	brk $F3.b		; 00 F3
	clc		; 18
	xce		; FB
	bit $3E5D.w,X		; 3C 5D 3E
	asl $071F.w		; 0E 1F 07
	ora $582424.l		; 0F 24 24 58
	cli		; 58
	ldy #$A0.b		; A0 A0
	rti		; 40

	jmp $0C7C58.l		; 5C 58 7C 0C
	rol $3F06.w,X		; 3E 06 3F
	ora $1F.b,S		; 03 1F
	sbc $E71B.w		; ED 1B E7
	ora $6F97.w		; 0D 97 6F
	ora ($E7.b,S),Y		; 13 E7
	ora ($E7.b,S),Y		; 13 E7
	tya		; 98
	adc ($C6.b,X)		; 61 C6
	and [$78.b]		; 27 78
	clv		; B8
	brk $19.b		; 00 19
	ora ($1D.b,X)		; 01 1D
	eor $4F.b,S		; 43 4F
	sta $8F.b,S		; 83 8F
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	cop $1F.b		; 02 1F
	clc		; 18
	lda $E1BF47.l,X		; BF 47 BF E1
	ora $FC0FF0.l,X		; 1F F0 0F FC
	ora $F9.b,S		; 03 F9
	ora [$7C.b]		; 07 7C
	sta $7E.b,S		; 83 7E
	sta ($FF.b,X)		; 81 FF
	brk $BF.b		; 00 BF
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $67.b		; 00 67
	rts		; 60

	tsa		; 3B
	sec		; 38
	sta $84.b		; 85 84
	.db $82, $02, $1E		; 82 02 1E
	sbc $06FEF9.l,X		; FF F9 FE 06
	sed		; F8
	adc $FFFFFE.l,X		; 7F FE FF FF
	sec		; 38
	sbc $03FF0E.l,X		; FF 0E FF 03
	sbc $FE00FF.l,X		; FF FF 00 FE
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E9.b		; 00 E9
	beq  -5.b		; F0 FB
	cpx #$F2.b		; E0 F2
	sbc $F1E2.w,Y		; F9 E2 F1
	cpx $F0.b		; E4 F0
	brk $E3.b		; 00 E3
	ora $1F.b,S		; 03 1F
	ora $E6C0FC.l,X		; 1F FC C0 E6
	cpx #$EC.b		; E0 EC
	sbc ($FC.b,X)		; E1 FC
	cmp ($FC.b,X)		; C1 FC
	cpy #$FB.b		; C0 FB
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	trb $27FF.w		; 1C FF 27
	sta $E04C84.l		; 8F 84 4C E0
	ora $23.b,S		; 03 23
	ora $6C6C0F.l,X		; 1F 0F 6C 6C
	adc $7A.b,S		; 63 7A
	ora $FF.b		; 05 FF
	ora [$E2.b]		; 07 E2
	sta $005F64.l,X		; 9F 64 5F 00
	ora $0CDF03.l,X		; 1F 03 DF 0C
	sbc $09FF60.l,X		; FF 60 FF 09
	inc $AE29.w		; EE 29 AE
	jmp $77D837.l		; 5C 37 D8 77
	sbc $6D3278.l		; EF 78 32 6D
	cli		; 58
	and [$67.b]		; 27 67
	tas		; 1B
	and $0D1606.l,X		; 3F 06 16 0D
	and [$00.b],Y		; 37 00
	adc [$00.b],Y		; 77 00
	sei		; 78
	brk $6D.b		; 00 6D
	ora ($26.b,X)		; 01 26
	asl $18.b		; 06 18
	php		; 08
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $2D.b		; 00 2D
	inc $FF06.w,X		; FE 06 FF
	brk $FF.b		; 00 FF
	bne  47.b		; D0 2F
	inx		; E8
	ora [$EB.b],Y		; 17 EB
	ora $F2.b		; 05 F2
	ora $9572.w,X		; 1D 72 95
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $6F.b		; 00 6F
	brk $FD.b		; 00 FD
	brk $E5.b		; 00 E5
	brk $6D.b		; 00 6D
	php		; 08
	tsb $01.b		; 04 01
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
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
	inc $FF00.w,X		; FE 00 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	phd		; 0B
	ora ($08.b)		; 12 08
	asl A		; 0A
	ora #$09.b		; 09 09
	brk $06.b		; 00 06
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $081B01.l		; 0F 01 1B 08
	phd		; 0B
	brk $09.b		; 00 09
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	and [$E6.b]		; 27 E6
	ora $41.b,S		; 03 41
	cmp #$CA.b		; C9 CA
	tsb $02.b		; 04 02
	asl A		; 0A
	php		; 08
	php		; 08
	tsb $70F0.w		; 0C F0 70
	cpx #$E0.b		; E0 E0
	bit $B8BF.w,X		; 3C BF B8
	xce		; FB
	cpy #$CB.b		; C0 CB
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	php		; 08
	jmp ($F000.w,X)		; 7C 00 F0
	rts		; 60

	cpx #$2C.b		; E0 2C
	ora ($0B.b,S),Y		; 13 0B
	rol $12.b,X		; 36 12
	bit $2957.w		; 2C 57 29
	jmp ($6E19.w)		; 6C 19 6E
	ora ($59.b,S),Y		; 13 59
	and ($75.b)		; 32 75
	asl $11.b		; 06 11
	ora ($31.b,X)		; 01 31
	brk $27.b		; 00 27
	tsb $2E.b		; 04 2E
	php		; 08
	ora [$01.b]		; 07 01
	trb $0E10.w		; 1C 10 0E
	cop $08.b		; 02 08
	brk $CF.b		; 00 CF
	bcs -63.b		; B0 C1
	ldx $BE41.w,Y		; BE 41 BE
	adc ($9E.b,X)		; 61 9E
	ldx $19.b		; A6 19
	clv		; B8
	and [$D0.b]		; 27 D0
	and $3016D9.l,X		; 3F D9 16 30
	bmi  14.b		; 30 0E
	asl $8686.w		; 0E 86 86
	php		; 08
	php		; 08
	brk $40.b		; 00 40
	tsb $64.b		; 04 64
	php		; 08
	sec		; 38
	tsb $34.b		; 04 34
	ora $07.b,S		; 03 07
	brk $02.b		; 00 02
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	phx		; DA
	cop $F9.b		; 02 F9
	trb $6061.w		; 1C 61 60
	rti		; 40

	rts		; 60

	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	cop $03.b		; 02 03
	brk $37.b		; 00 37
	cop $FF.b		; 02 FF
	brk $FD.b		; 00 FD
	adc ($F9.b,X)		; 61 F9
	brk $E0.b		; 00 E0
	jmp ($FD7D.w,X)		; 7C 7D FD
	sbc $585B.w,X		; FD 5B 58
	lda [$A0.b]		; A7 A0
	ora $007FC0.l,X		; 1F C0 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	bit $7DFF.w,X		; 3C FF 7D
	sbc $02FF50.l,X		; FF 50 FF 02
	inc $E202.w,X		; FE 02 E2
	mvp $84,$C4		; 44 C4 84
	sty $84.b		; 84 84
	sty $F3.b		; 84 F3
	tsb $1E21.w		; 0C 21 1E
	and ($1E.b,X)		; 21 1E
	sbc ($0D.b,S),Y		; F3 0D
	eor $9C63B0.l		; 4F B0 63 9C
	cpx $58.b		; E4 58
	cpx $F9.b		; E4 F9
	tsb $C20C.w		; 0C 0C C2
	rep #$C0		; C2 C0
	cpy #$00.b		; C0 00
	brk $11.b		; 00 11
	bpl  13.b		; 10 0D
	tsb WRIO.w		; 0C 01 42
	ora ($E3.b,X)		; 01 E3
	cpy #$3F.b		; C0 3F
	sed		; F8
	sbc [$BE.b],Y		; F7 BE
	adc $BE47.w,X		; 7D 47 BE
	lda ($DF.b,X)		; A1 DF
	bne 111.b		; D0 6F
	sbc $176030.l		; EF 30 60 17
	and $00F700.l,X		; 3F 00 F7 00
	adc $3E00.w,X		; 7D 00 3E
	brk $1F.b		; 00 1F
	brk $8F.b		; 00 8F
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ora $FFE0FF.l		; 0F FF E0 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E1.b		; 00 E1
	sbc $F181.w,X		; FD 81 F1
	php		; 08
	dey		; 88
	pha		; 48
	pha		; 48
	mvp $44,$44		; 44 44 44
	mvp $22,$22		; 44 22 22
	and ($21.b,X)		; 21 21
	sbc $03FF07.l,X		; FF 07 FF 03
	inc $FF01.w,X		; FE 01 FF
	brk $FD.b		; 00 FD
	cop $F9.b		; 02 F9
	asl $DB.b		; 06 DB
	rol $8B.b		; 26 8B
	ror $2F.b,X		; 76 2F
	rol $1A1B.w		; 2E 1B 1A
	sta $8898.w,Y		; 99 98 88
	dey		; 88
	lsr A		; 4A
	pha		; 48
	rol $30.b,X		; 36 30
	lsr $40.b		; 46 40
	dec $C0.b		; C6 C0
	bra  11.b		; 80 0B
	phd		; 0B
	tda		; 7B
	adc $FEF1.w,X		; 7D F1 FE
	bra -18.b		; 80 EE
	clc		; 18
	ror $72FC.w		; 6E FC 72
	cpx $6CE2.w		; EC E2 6C
	brk $7F.b		; 00 7F
	php		; 08
	sbc $80FF71.l,X		; FF 71 FF 80
	sbc $D800.w,Y		; F9 00 D8
	trb $ACEC.w		; 1C EC AC
	rts		; 60

	jmp ($E060.w)		; 6C 60 E0
	cpx #$C0.b		; E0 C0
	cpy #$80.b		; C0 80
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	beq -64.b		; F0 C0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9D.b		; 00 9D
	inc $4F.b		; E6 4F
	ror $A2.b,X		; 76 A2
	and $E31BD7.l,X		; 3F D7 1B E3
	ora $0CF9.w		; 0D F9 0C
	beq   6.b		; F0 06
	jsr ($4606.w,X)		; FC 06 46
	rti		; 40

	ldx $20.b		; A6 20
	cmp [$10.b],Y		; D7 10
	sbc $00.b,S		; E3 00
	sbc $F008.w,Y		; F9 08 F0
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $70.b		; 00 70
	jsl $941038.l		; 22 38 10 94
	php		; 08
	dey		; 88
	tsb $C1.b		; 04 C1
	.db $82, $E0, $C0		; 82 E0 C0
	bcc  96.b		; 90 60
	sec		; 38
	brk $22.b		; 00 22
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $82.b		; 00 82
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	bvs  35.b		; 70 23
	rts		; 60

	ora $C13CC3.l,X		; 1F C3 3C C1
	jmp ($3EC1.w,X)		; 7C C1 3E
	sta $88.b,S		; 83 88
	dey		; 88
	sei		; 78
	sei		; 78
	bit $1F2C.w		; 2C 2C 1F
	ora $7C.b,S		; 03 7C
	rti		; 40

	adc $013F41.l,X		; 7F 41 3F 01
	sbc $FF81.w,X		; FD 81 FF
	ora ($FE.b,X)		; 01 FE
	cop $FD.b		; 02 FD
	tsb $E7.b		; 04 E7
	trb $DC27.w		; 1C 27 DC
	adc ($8C.b,S),Y		; 73 8C
	and ($CE.b,S),Y		; 33 CE
	lda $2247.w,Y		; B9 47 22
	jsl $1B3435.l		; 22 35 34 1B
	clc		; 18
	wai		; CB
	iny		; C8
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	eor $04.b		; 45 04
	.db $42, $02		; 42 02
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	asl $08.b		; 06 08
	ora $0A1F14.l		; 0F 14 1F 0A
	and $011F11.l,X		; 3F 11 1F 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	asl A		; 0A
	asl A		; 0A
	brk $11.b		; 00 11
	brk $21.b		; 00 21
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	bra  32.b		; 80 20
	rti		; 40

	rts		; 60

	bra -32.b		; 80 E0
	bra  96.b		; 80 60
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	cpx #$8C.b		; E0 8C
	beq 103.b		; F0 67
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $21.b		; 00 21
	ora [$2B.b]		; 07 2B
	asl $06.b		; 06 06
	tsb $0804.w		; 0C 04 08
	php		; 08
	bpl  16.b		; 10 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sta ($02.b,X)		; 81 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	and $007F00.l,X		; 3F 00 7F 00
	ror $7E00.w,X		; 7E 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	cpx #$18.b		; E0 18
	beq 108.b		; F0 6C
	tya		; 98
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	tya		; 98
	brk $BE.b		; 00 BE
	cpy $5F.b		; C4 5F
	cpx #$29.b		; E0 29
	beq  20.b		; F0 14
	sed		; F8
	tay		; A8
	jmp $FE8CF6.l		; 5C F6 8C FE
	brk $00.b		; 00 00
	cmp ($C4.b,X)		; C1 C4
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $5C.b		; 00 5C
	brk $8C.b		; 00 8C
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc $618E60.l,X		; FF 60 8E 61
	stx $E1.b		; 86 E1
	.db $82, $A1, $C2		; 82 A1 C2
	bcs -63.b		; B0 C1
	bne  97.b		; D0 61
	bne  97.b		; D0 61
	pla		; 68
	and ($8E.b),Y		; 31 8E
	brk $86.b		; 00 86
	brk $82.b		; 00 82
	brk $C2.b		; 00 C2
	brk $C1.b		; 00 C1
	brk $61.b		; 00 61
	brk $61.b		; 00 61
	brk $31.b		; 00 31
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
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
	brk $F8.b		; 00 F8
	sta $7E.b,S		; 83 7E
	cmp $3C.b,S		; C3 3C
	sbc ($9E.b,X)		; E1 9E
	bvs -113.b		; 70 8F
	sei		; 78
	lda $58.b,S		; A3 58
	lda [$6C.b],Y		; B7 6C
	lda ($6C.b),Y		; B1 6C
	ror $BC02.w,X		; 7E 02 BC
	bra  95.b		; 80 5F
	eor ($2F.b,X)		; 41 2F
	jsr $1057.w		; 20 57 10
	eor $006308.l		; 4F 08 63 00
	adc [$04.b]		; 67 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	cpy #$60.b		; C0 60
	bra  48.b		; 80 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	sed		; F8
	sta $78.b,S		; 83 78
	cop $74.b		; 02 74
	asl $F0.b		; 06 F0
	tsb $E8.b		; 04 E8
	tsb $08E0.w		; 0C E0 08
	bne  24.b		; D0 18
	cpy #$10.b		; C0 10
	ror $FE02.w,X		; 7E 02 FE
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	bit $6AC3.w,X		; 3C C3 6A
	sta $4B.b		; 85 4B
	sty $0A.b		; 84 0A
	cpy $02.b		; C4 02
	mvp $24,$42		; 44 42 24
	jsr $1404.w		; 20 04 14
	brk $C1.b		; 00 C1
	ora ($84.b,X)		; 01 84
	brk $84.b		; 00 84
	brk $C4.b		; 00 C4
	brk $44.b		; 00 44
	brk $24.b		; 00 24
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
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

	brk $20.b		; 00 20
	ora $C1.b,S		; 03 C1
	cmp $4E1E0F.l		; CF 0F 1E 4E
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cmp $0EFF41.l		; CF 41 FF 0E
	sbc $00FE00.l,X		; FF 00 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	asl $06.b		; 06 06
	rol $70.b,X		; 36 70
	bcs  -8.b		; B0 F8
	cpy #$E0.b		; C0 E0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	tsb $FE.b		; 04 FE
	bmi  -1.b		; 30 FF
	cpy #$F8.b		; C0 F8
	jsr $40E0.w		; 20 E0 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora $B1BF7E.l		; 0F 7E BF B1
	lda $4BC3.w,Y		; B9 C3 4B
	tas		; 1B
	sec		; 38
	sec		; 38
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora ($7F.b,X)		; 01 7F
	asl $B17F.w		; 0E 7F B1
	sbc $0BFB81.l,X		; FF 81 FB 0B
	tad		; 5B
	sec		; 38
	sec		; 38
	ror $7C00.w,X		; 7E 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0626.w		; 0C 26 06
	ldx $F0.b		; A6 F0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	tsb $FF.b		; 04 FF
	brk $FE.b		; 00 FE
	cpy #$E0.b		; C0 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $F07E7E.l		; 0F 7E 7E F0
	beq -64.b		; F0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	asl $70FF.w		; 0E FF 70
	inc $F0C0.w,X		; FE C0 F0
	brk $C0.b		; 00 C0
	ora $001F00.l		; 0F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	txs		; 9A
	cmp $3E.b		; C5 3E
	sta ($3F.b,X)		; 81 3F
	bra  63.b		; 80 3F
	bra  63.b		; 80 3F
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $85.b		; 00 85
	cpx #$01.b		; E0 01
	cpy #$20.b		; C0 20
	cpx #$10.b		; E0 10
	bne   8.b		; D0 08
	iny		; C8
	bit $A4.b		; 24 A4
	jsl $911122.l		; 22 22 11 91
	cmp $58E0.w,Y		; D9 E0 58
	cpx #$68.b		; E0 68
	beq -88.b		; F0 A8
	bvs 116.b		; 70 74
	sec		; 38
	bit $18.b,X		; 34 18
	tya		; 98
	tsb $048E.w		; 0C 8E 04
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	ora ($0E.b),Y		; 11 0E
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	ora $04.b		; 05 04
	ora $02.b		; 05 02
	cop $00.b		; 02 00
	ora $03.b,S		; 03 03
	ora $05.b,S		; 03 05
	ora $09.b		; 05 09
	ora #$12.b		; 09 12
	ora ($C3.b)		; 12 C3
	cpx $0B.b		; E4 0B
	cmp $3D3B.w		; CD 3B 3D
	sbc $DD7339.l,X		; FF 39 73 DD
	jsr ($FE25.w,X)		; FC 25 FE
	inc A		; 1A
	inc $000B.w,X		; FE 0B 00
	sbc $39FF09.l,X		; FF 09 FF 39
	sbc $013F31.l,X		; FF 31 3F 01
	cmp $5A2724.l,X		; DF 24 27 5A
	eor $1A4F42.l,X		; 5F 42 4F 1A
	and ($17.b,S),Y		; 33 17
	bmi  15.b		; 30 0F
	rol $0F.b,X		; 36 0F
	and [$1F.b],Y		; 37 1F
	bit $081F.w		; 2C 1F 08
	ora [$08.b],Y		; 17 08
	ora $010D00.l,X		; 1F 00 0D 01
	php		; 08
	brk $14.b		; 00 14
	ora [$16.b],Y		; 17 16
	ora [$04.b],Y		; 17 04
	tsb $0800.w		; 0C 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	ldy #$00.b		; A0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	sbc $B10C.w,Y		; F9 0C B1
	tas		; 1B
	adc ($5B.b),Y		; 71 5B
	bmi  90.b		; 30 5A
	beq -70.b		; F0 BA
	brk $C6.b		; 00 C6
	and ($B3.b,X)		; 21 B3
	ora ($83.b,X)		; 01 83
	dey		; 88
	rol $3CD0.w,X		; 3E D0 3C
	sta ($3E.b)		; 92 3E
	cmp ($7E.b,S),Y		; D3 7E
	and ($7E.b,S),Y		; 33 7E
	sta $B2.b,S		; 83 B2
	ldy #$F8.b		; A0 F8
	brk $30.b		; 00 30
	beq  -8.b		; F0 F8
	bvs  28.b		; 70 1C
	cpx #$0C.b		; E0 0C
	inx		; E8
	tsb $0CF8.w		; 0C F8 0C
	sed		; F8
	tsb $0EF8.w		; 0C F8 0E
	sed		; F8
	asl $0808.w		; 0E 08 08
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	pea $F404.w		; F4 04 F4
	tsb $F4.b		; 04 F4
	tsb $A1.b		; 04 A1
	and ($80.b),Y		; 31 80
	bmi  66.b		; 30 42
	cpx #$8F.b		; E0 8F
	adc [$C9.b]		; 67 C9
	ora ($30.b),Y		; 11 30
	adc ($48.b,X)		; 61 48
	pha		; 48
	mvp $C0,$44		; 44 44 C0
	ora ($E0.b,X)		; 01 E0
	and [$A0.b]		; 27 A0
	lda $40.b,S		; A3 40
	eor $067901.l		; 4F 01 79 06
	inc $47.b,X		; F6 47
	sbc $E0E703.l,X		; FF 03 E7 E0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$80.b		; C0 80
	rti		; 40

	brk $C0.b		; 00 C0
	ldy #$B0.b		; A0 B0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$00.b]		; 87 00
	tda		; 7B
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $07.b		; 00 07
	ora [$05.b]		; 07 05
	asl $3D.b		; 06 3D
	tsb $F0.b		; 04 F0
	jsr $0303.w		; 20 03 03
	cop $03.b		; 02 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	tsb $07.b		; 04 07
	tsb $05.b		; 04 05
	jsr $E000.w		; 20 00 E0
	bmi -64.b		; 30 C0
	rts		; 60

	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	jsr $40F8.w		; 20 F8 40
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpx #$80.b		; E0 80
	cpy #$F1.b		; C0 F1
	stx $79.b		; 86 79
	cop $E1.b		; 02 E1
	inc A		; 1A
	plb		; AB
	mvp $68,$86		; 44 86 68
	sbc $7F00.w,X		; FD 00 7F
	brk $FF.b		; 00 FF
	brk $3C.b		; 00 3C
	tsb $BC.b		; 04 BC
	brk $E4.b		; 00 E4
	brk $7C.b		; 00 7C
	mvn $00,$11		; 54 11 00
	eor $40.b,S		; 43 40
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	sed		; F8
	ora $FA.b		; 05 FA
	tsb $7F.b		; 04 7F
	bra 113.b		; 80 71
	stx $CBB4.w		; 8E B4 CB
	jsl $5EE15D.l		; 22 5D E1 5E
	sed		; F8
	ora [$07.b]		; 07 07
	ora $07.b		; 05 07
	tsb $03.b		; 04 03
	brk $8B.b		; 00 8B
	txa		; 8A
	ora ($01.b,X)		; 01 01
	bne  80.b		; D0 50
	bcc  16.b		; 90 10
	brk $00.b		; 00 00
	adc $00FF00.l,X		; 7F 00 FF 00
	inc $FE01.w,X		; FE 01 FE
	ora ($F9.b,X)		; 01 F9
	brk $F0.b		; 00 F0
	php		; 08
	cpx #$18.b		; E0 18
	bra 120.b		; 80 78
	ora ($91.b),Y		; 11 91
	asl A		; 0A
	asl A		; 0A
	eor $494C.w		; 4D 4C 49
	pha		; 48
	bvc  80.b		; 50 50
	rts		; 60

	rts		; 60

	bne -48.b		; D0 D0
	bvs 112.b		; 70 70
	cpy $02.b		; C4 02
	.db $42, $81		; 42 81
	adc ($80.b,X)		; 61 80
	bmi -64.b		; 30 C0
	tya		; 98
	rts		; 60

	eor [$38.b]		; 47 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	trb $1212.w		; 1C 12 12
	bit $24.b		; 24 24
	tsb $04.b		; 04 04
	plp		; 28
	plp		; 28
	ora ($11.b),Y		; 11 11
	ora $030D.w		; 0D 0D 03
	ora $00.b,S		; 03 00
	brk $FC.b		; 00 FC
	ora ($FD.b,X)		; 01 FD
	asl $FC.b		; 06 FC
	asl $FC.b		; 06 FC
	asl $FC.b		; 06 FC
	asl $F9.b		; 06 F9
	tsb $0CF9.w		; 0C F9 0C
	sbc $400C.w,Y		; F9 0C 40
	eor $44.b,S		; 43 44
	lsr $8F84.w		; 4E 84 8F
	sty $8F.b		; 84 8F
	tsb $0F.b		; 04 0F
	php		; 08
	asl $9E88.w,X		; 1E 88 9E
	adc #$7F.b		; 69 7F
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	rts		; 60

	lda ($40.b,S),Y		; B3 40
	adc ($00.b,X)		; 61 00
	ora ($C0.b,X)		; 01 C0
	rts		; 60

	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra  33.b		; 80 21
	adc $7040.w,Y		; 79 40 70
	brk $60.b		; 00 60
	rti		; 40

	beq   0.b		; F0 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bvs   6.b		; 70 06
	beq -122.b		; F0 86
	stz $86.b,X		; 74 86
	bit $7C86.w,X		; 3C 86 7C
	cmp [$18.b]		; C7 18
	eor $38.b,S		; 43 38
	adc $0A.b,S		; 63 0A
	adc $FC.b,S		; 63 FC
	tsb $7C.b		; 04 7C
	tsb $F8.b		; 04 F8
	bra 122.b		; 80 7A
	cop $3A.b		; 02 3A
	cop $7E.b		; 02 7E
	.db $42, $1E		; 42 1E
	cop $3D.b		; 02 3D
	and ($81.b,X)		; 21 81
	sta $88.b,S		; 83 88
	txa		; 8A
	iny		; C8
	txa		; 8A
	sta $CA.b,X		; 95 CA
	txs		; 9A
	.db $82, $A9, $2D		; 82 A9 2D
	stz $000A.w		; 9C 0A 00
	brk $01.b		; 00 01
	cmp $0C.b,S		; C3 0C
	cmp $80CF0C.l		; CF 0C CF 80
	cmp $299B80.l,X		; DF 80 9B 29
	and $1E08.w		; 2D 08 1E
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl  64.b		; 10 40
	rts		; 60

	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $58.b		; 00 58
	rti		; 40

	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	beq  15.b		; F0 0F
	cld		; D8
	and $339F66.l,X		; 3F 66 9F 33
	cmp $D89F60.l		; CF 60 9F D8
	and [$16.b]		; 27 16
	sbc $EC03.w,Y		; F9 03 EC
	ora $003F00.l		; 0F 00 3F 00
	sta $00CF00.l,X		; 9F 00 CF 00
	sta $202700.l,X		; 9F 00 27 20
	cmp ($C0.b,X)		; C1 C0
	clv		; B8
	tay		; A8
	ldx $01C1.w,Y		; BE C1 01
	sbc $FDFF0E.l,X		; FF 0E FF FD
	inc $FFF0.w,X		; FE F0 FF
	ora $00FFF0.l		; 0F F0 FF 00
	sbc $C106.w,Y		; F9 06 C1
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	tsb $F0F0.w		; 0C F0 F0
	lsr $46.b		; 46 46
	eor $E0.b,S		; 43 E0
	lda $3DC3C1.l,X		; BF C1 C3 3D
	and $FDE3FD.l,X		; 3F FD E3 FD
	stx $7B.b		; 86 7B
	asl $FB.b		; 06 FB
	tsb $F0.b		; 04 F0
	cpx #$03.b		; E0 03
	cmp ($03.b,X)		; C1 03
	and $FD03.w,X		; 3D 03 FD
	ora $FD.b,S		; 03 FD
	ora $7A.b,S		; 03 7A
	ora [$FA.b]		; 07 FA
	ora [$F0.b]		; 07 F0
	ora $00C040.l		; 0F 40 C0 00
	bra  16.b		; 80 10
	bra  44.b		; 80 2C
	bcs  31.b		; B0 1F
	ldy $7F03.w,X		; BC 03 7F
	brk $7F.b		; 00 7F
	ora [$78.b]		; 07 78
	rti		; 40

	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	cpy #$30.b		; C0 30
	cpy #$3C.b		; C0 3C
	cpy #$7F.b		; C0 7F
	bra 127.b		; 80 7F
	bra 120.b		; 80 78
	bra  -1.b		; 80 FF
	brk $E7.b		; 00 E7
	clc		; 18
	and ($8D.b)		; 32 8D
	tsa		; 3B
	cpx $14.b		; E4 14
	adc ($0B.b,S),Y		; 73 0B
	sec		; 38
	ora [$1C.b]		; 07 1C
	ora $0C.b,S		; 03 0C
	bra -128.b		; 80 80
	sei		; 78
	clc		; 18
	adc $5C0D.w,X		; 7D 0D 5C
	mvp $23,$2F		; 44 2F 23
	asl $10.b,X		; 16 10
	ora #$09.b		; 09 09
	ora $05.b		; 05 05
	sbc $02.b		; E5 02
	and [$C0.b]		; 27 C0
	asl $03E1.w,X		; 1E E1 03
	sbc $DFEF17.l,X		; FF 17 EF DF
	and $FC7EFE.l,X		; 3F FE 7E FC
	jmp ($1818.w,X)		; 7C 18 18
	cld		; D8
	cld		; D8
	jsr $4121.w		; 20 21 41
	eor [$02.b]		; 47 02
	ora $383F0C.l		; 0F 0C 3F 38
	adc $187F30.l,X		; 7F 30 7F 18
	sbc $0FCF27.l		; EF 27 CF 0F
	eor $C50783.l,X		; 5F 83 07 C5
	ora $028733.l		; 0F 33 87 02
	cmp $D9.b,S		; C3 D9
	inc A		; 1A
	inx		; E8
	ora $CF9FC7.l		; 0F C7 9F CF
	adc $E53FC3.l,X		; 7F C3 3F E5
	ora $608FE2.l,X		; 1F E2 8F 60
	eor $183F18.l,X		; 5F 18 3F 18
	rts		; 60

	ror $C180.w,X		; 7E 80 C1
	ldx $BFDE.w,Y		; BE DE BF
	eor $3FD1BF.l		; 4F BF D1 3F
	sei		; 78
	and $6030CF.l,X		; 3F CF 30 60
	bra   0.b		; 80 00
	bra  62.b		; 80 3E
	bra  63.b		; 80 3F
	bra  63.b		; 80 3F
	bra  63.b		; 80 3F
	bra  63.b		; 80 3F
	bra  48.b		; 80 30
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
	brk $01.b		; 00 01
	clc		; 18
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	ora [$30.b],Y		; 17 30
	ora $602E20.l		; 0F 20 2E 60
	asl $1D40.w,X		; 1E 40 1D
	eor ($0F.b,X)		; 41 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	and $001F20.l,X		; 3F 20 1F 00
	and $407E00.l,X		; 3F 00 7E 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ror $38C3.w,X		; 7E C3 38
	sta $7C.b,S		; 83 7C
	sta [$F8.b]		; 87 F8
	stx $0C60.w		; 8E 60 0C
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	cpy #$11.b		; C0 11
	and $7E01.w,X		; 3D 01 7E
	cop $FA.b		; 02 FA
	.db $82, $74, $04		; 82 74 04
	sed		; F8
	php		; 08
	cpx #$01.b		; E0 01
	beq  17.b		; F0 11
	cpx #$01.b		; E0 01
	brk $02.b		; 00 02
	asl $01.b		; 06 01
	ora $0C.b,S		; 03 0C
	ora [$06.b]		; 07 06
	phd		; 0B
	ora $1F.b,S		; 03 1F
	ora $1E.b,S		; 03 1E
	ora ($1F.b,X)		; 01 1F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	tsb $0E02.w		; 0C 02 0E
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	php		; 08
	ora #$08.b		; 09 08
	php		; 08
	ora $013F01.l,X		; 1F 01 3F 01
	and $003F01.l,X		; 3F 01 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	ora #$09.b		; 09 09
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr ($7C00.w,X)		; FC 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $007F00.l,X		; 1F 00 7F 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $300C.w		; 0C 0C 30
	bmi   0.b		; 30 00
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $B0.b		; 00 B0
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq -64.b		; F0 C0
	sed		; F8
	bmi  12.b		; 30 0C
	sec		; 38
	cop $0C.b		; 02 0C
	bra   2.b		; 80 02
	rts		; 60

	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	brk $81.b		; 00 81
	brk $90.b		; 00 90
	cpx #$E8.b		; E0 E8
	beq  20.b		; F0 14
	sed		; F8
	asl A		; 0A
	jsr ($1EE5.w,X)		; FC E5 1E
	dec A		; 3A
	ora [$47.b]		; 07 47
	sta ($A1.b,X)		; 81 A1
	rti		; 40

	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $1E.b		; 00 1E
	brk $07.b		; 00 07
	brk $81.b		; 00 81
	brk $40.b		; 00 40
	brk $D0.b		; 00 D0
	ldy #$C8.b		; A0 C8
	beq  40.b		; F0 28
	beq  16.b		; F0 10
	sed		; F8
	jmp $2838.w		; 4C 38 28
	trb $0C16.w		; 1C 16 0C
	tsb $A006.w		; 0C 06 A0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	asl $06.b		; 06 06
	cop $00.b		; 02 00
	cop $82.b		; 02 82
	brk $02.b		; 00 02
	bra -128.b		; 80 80
	rti		; 40

	rts		; 60

	brk $10.b		; 00 10
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	bit $F9.b,X		; 34 F9
	sei		; 78
	sbc $C5FC.w,X		; FD FC C5
	cpy $91.b		; C4 91
	tya		; 98
	.db $62, $31, $E6		; 62 31 E6
	and ($E6.b),Y		; 31 E6
	and ($34.b),Y		; 31 34
	bit $7E78.w,X		; 3C 78 7E
	jmp ($00FE.w,X)		; 7C FE 00
	inc $FE10.w,X		; FE 10 FE
	and ($FC.b,X)		; 21 FC
	and ($F8.b,X)		; 21 F8
	and ($F8.b,X)		; 21 F8
	cmp $38C720.l,X		; DF 20 C7 38
	lsr $5FA1.w,X		; 5E A1 5F
	ldy $FF07.w,X		; BC 07 FF
	jsr $20FF.w		; 20 FF 20
	sbc $20F02F.l,X		; FF 2F F0 20
	brk $38.b		; 00 38
	brk $A1.b		; 00 A1
	brk $BC.b		; 00 BC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	brk $0D.b		; 00 0D
	cop $0C.b		; 02 0C
	ora $13.b,S		; 03 13
	ora $2C1F26.l		; 0F 26 1F 2C
	ora $030000.l,X		; 1F 00 00 03
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
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
	brk $20.b		; 00 20
	ora $5D3F4E.l,X		; 1F 4E 3F 5D
	rol $3D4A.w,X		; 3E 4A 3D
	bvc  63.b		; 50 3F
	sbc ($3E.b),Y		; F1 3E
	txs		; 9A
	jmp ($003C.w,X)		; 7C 3C 00
	ora $003F00.l,X		; 1F 00 3F 00
	rol $3C00.w,X		; 3E 00 3C
	brk $3F.b		; 00 3F
	ora $3E.b,S		; 03 3E
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	bmi  24.b		; 30 18
	cpx #$B0.b		; E0 B0
	beq -96.b		; F0 A0
	rts		; 60

	bmi   0.b		; 30 00
	tsb $3C00.w		; 0C 00 3C
	bpl  60.b		; 10 3C
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	ldy #$F8.b		; A0 F8
	bra  -8.b		; 80 F8
	jsr $0078.w		; 20 78 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $10.b		; 00 10
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
	brk $18.b		; 00 18
	tsb $0C1C.w		; 0C 1C 0C
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	clc		; 18
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	clc		; 18
	brk $06.b		; 00 06
	brk $1C.b		; 00 1C
	php		; 08
	asl $0E00.w,X		; 1E 00 0E
	brk $0C.b		; 00 0C
	brk $3C.b		; 00 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
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
	brk $00.b		; 00 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $007E00.l,X		; 7F 00 7E 00
	inc $FC00.w,X		; FE 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	inc $7F00.w,X		; FE 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $06.b		; 04 06
	asl $02.b		; 06 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora [$83.b]		; 07 83
	ora [$E3.b]		; 07 E3
	sta [$CB.b]		; 87 CB
	inx		; E8
	ora $1B.b,S		; 03 1B
	tsa		; 3B
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	ora $EF.b,S		; 03 EF
	ora $FF.b,S		; 03 FF
	php		; 08
	sbc $30FF03.l,X		; FF 03 FF 30
	adc $0A0F17.l,X		; 7F 17 0F 0A
	and $C4BF50.l,X		; 3F 50 BF C4
	sbc $F0DCC3.l,X		; FF C3 DC F0
	bmi  64.b		; 30 40
	ora $0F1FFF.l,X		; 1F FF 1F 0F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	bra  -1.b		; 80 FF
	cpy #$DC.b		; C0 DC
	cpx #$30.b		; E0 30
	sbc $1FFF00.l,X		; FF 00 FF 1F
	sbc $0EFF00.l,X		; FF 00 FF 0E
	sbc ($99.b,S),Y		; F3 99
	adc $EF53B5.l,X		; 7F B5 53 EF
	brk $C8.b		; 00 C8
	and [$00.b]		; 27 00
	tsb $01.b		; 04 01
	sed		; F8
	sbc $20E100.l		; EF 00 E1 20
	.db $62, $22, $4C		; 62 22 4C
	brk $1F.b		; 00 1F
	brk $19.b		; 00 19
	ora ($03.b,X)		; 01 03
	plx		; FA
	brk $FE.b		; 00 FE
	and $1CEFF6.l		; 2F F6 EF 1C
	inc $1C90.w		; EE 90 1C
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	inc $00.b,X		; F6 00
	trb $1000.w		; 1C 00 10
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$38.b		; C0 38
	ora $701F28.l		; 0F 28 1F 70
	ora $741D72.l,X		; 1F 72 1D 74
	tas		; 1B
	cmp $3A.b		; C5 3A
	cmp $3A.b		; C5 3A
	cmp $3C.b,S		; C3 3C
	ora $001F00.l		; 0F 00 1F 00
	ora $011D01.l,X		; 1F 01 1D 01
	inc A		; 1A
	cop $39.b		; 02 39
	ora ($39.b,X)		; 01 39
	ora ($3E.b,X)		; 01 3E
	cop $89.b		; 02 89
	adc ($BB.b,S),Y		; 73 BB
	eor ($60.b,X)		; 41 60
	stx $71.b,Y		; 96 71
	sta $FC.b,S		; 83 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $40.b		; 00 40
	eor [$40.b]		; 47 40
	eor [$80.b]		; 47 80
	sta $944F40.l		; 8F 40 4F 94
	sta [$27.b],Y		; 97 27
	and [$49.b]		; 27 49
	eor #$91.b		; 49 91
	sta ($BC.b),Y		; 91 BC
	tad		; 5B
	jsr ($FDBB.w,X)		; FC BB FD
	inc $7E7D.w,X		; FE 7D 7E
	lda $D3B8.w,Y		; B9 B8 D3
	mvn $28,$E7		; 54 E7 28
	sbc $5A5A10.l,X		; FF 10 5A 5A
	clv		; B8
	clv		; B8
	jmp ($38FE.w,X)		; 7C FE 38
	inc $FE38.w,X		; FE 38 FE
	cmp ($FD.b),Y		; D1 FD
	rts		; 60

	sei		; 78
	jmp ($AD7C.w,X)		; 7C 7C AD
	adc $D6.b,S		; 63 D6
	and ($EB.b,S),Y		; 33 EB
	ora $0DF4.w,Y		; 19 F4 0D
	sbc #$16.b		; E9 16
	sbc $0A.b,X		; F5 0A
	sbc ($0C.b,S),Y		; F3 0C
	sbc ($0E.b),Y		; F1 0E
	ora $0C01.w,X		; 1D 01 0C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	jsr $D0DC.w		; 20 DC D0
	asl $3C10.w,X		; 1E 10 3C
	ora $1A.b,S		; 03 1A
	ora ($1A.b,X)		; 01 1A
	ora ($08.b,X)		; 01 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
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
	brk $17.b		; 00 17
	sed		; F8
	and ($E2.b,X)		; 21 E2
	bit $1CE1.w,X		; 3C E1 1C
	cmp ($1C.b,X)		; C1 1C
	cmp ($7C.b,X)		; C1 7C
	cmp ($7E.b,X)		; C1 7E
	cmp $38.b,S		; C3 38
	sta $2F.b,S		; 83 2F
	and $5F435F.l		; 2F 5F 43 5F
	eor ($7F.b,X)		; 41 7F
	eor ($7F.b,X)		; 41 7F
	eor ($BE.b,X)		; 41 BE
	bra -68.b		; 80 BC
	bra  -1.b		; 80 FF
	.db $82, $FF, $00		; 82 FF 00
	sbc $FC0500.l,X		; FF 00 05 FC
	cop $FE.b		; 02 FE
	ora ($FF.b,X)		; 01 FF
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	cpy #$3F.b		; C0 3F
	asl $EB0E.w		; 0E 0E EB
	inx		; E8
	adc ($00.b,S),Y		; 73 00
	adc $7C00.w,Y		; 79 00 7C
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $A7.b		; 00 A7
	sec		; 38
	cmp ($1C.b,S),Y		; D3 1C
	xba		; EB
	tsb $06F5.w		; 0C F5 06
	sei		; 78
	ora $BE.b,S		; 03 BE
	sta $5D.b,S		; 83 5D
	cmp ($2E.b,X)		; C1 2E
	cpx #$D0.b		; E0 D0
	bpl -24.b		; 10 E8
	php		; 08
	pea $F804.w		; F4 04 F8
	brk $FE.b		; 00 FE
	cop $7D.b		; 02 7D
	ora ($3E.b,X)		; 01 3E
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -13.b		; F0 F3
	xce		; FB
	xce		; FB
	ora $604026.l		; 0F 26 40 60
	rts		; 60

	rts		; 60

	rts		; 60

	ora ($03.b,X)		; 01 03
	brk $F0.b		; 00 F0
	brk $FB.b		; 00 FB
	beq  -1.b		; F0 FF
	phd		; 0B
	sbc $006600.l,X		; FF 00 66 00
	rts		; 60

	rts		; 60

	rts		; 60

	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	pha		; 48
	trb $55.b		; 14 55
	ldy $233E.w,X		; BC 3E 23
	adc $C0B8.w,X		; 7D B8 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	inc $FF14.w,X		; FE 14 FF
	bit $00FF.w,X		; 3C FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	beq 127.b		; F0 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	stz $79.b,X		; 74 79
	sbc $E0D8F0.l		; EF F0 D8 E0
	clv		; B8
	cmp [$50.b]		; C7 50
	sta $FA03BD.l		; 8F BD 03 FA
	ora [$14.b]		; 07 14
	ora $C3FE60.l		; 0F 60 FE C3
	sed		; F8
	sta [$F0.b]		; 87 F0
	ora [$E7.b]		; 07 E7
	tsb $03EC.w		; 0C EC 03
	cpy #$07.b		; C0 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	cpx #$CE.b		; E0 CE
	ora ($0C.b),Y		; 11 0C
	and ($2C.b,S),Y		; 33 2C
	cmp $E4.b,S		; C3 E4
	phd		; 0B
	adc $94.b,S		; 63 94
	adc ($85.b)		; 72 85
	sta $0062.w,Y		; 99 62 00
	ora $F011F1.l,X		; 1F F1 11 F0
	bmi   1.b		; 30 01
	ora ($00.b),Y		; 11 00
	clc		; 18
	bcc  12.b		; 90 0C
	sta ($0D.b,X)		; 81 0D
	rts		; 60

	ror $F8.b		; 66 F8
	inc $06FE.w,X		; FE FE 06
	ora $E112E0.l,X		; 1F E0 12 E1
	adc ($81.b)		; 72 81
	stx $0D71.w		; 8E 71 0D
	sbc ($1D.b)		; F2 1D
	nop		; EA
	sed		; F8
	sbc $60FF06.l,X		; FF 06 FF 60
	ror $0D.b		; 66 0D
	ora $0C0C.w		; 0D 0C 0C
	rti		; 40

	rti		; 40

	.db $82, $82, $8A		; 82 82 8A
	txa		; 8A
	brk $C0.b		; 00 C0
	cpy #$DE.b		; C0 DE
	dec $7F1F.w,X		; DE 1F 7F
	sta ($11.b,X)		; 81 11
	inc $FA33.w		; EE 33 FA
	tsa		; 3B
	sbc $0037FF.l,X		; FF FF 37 00
	dec $FFC0.w,X		; DE C0 FF
	asl $81FF.w,X		; 1E FF 81
	sta $007F40.l,X		; 9F 40 7F 00
	and ($32.b,S),Y		; 33 32
	and ($3B.b,S),Y		; 33 3B
	and ($CB.b,S),Y		; 33 CB
	bit $CB.b,X		; 34 CB
	bit $DB.b,X		; 34 DB
	bit $DF.b		; 24 DF
	jsr $20DF.w		; 20 DF 20
	tad		; 5B
	bit $79.b		; 24 79
	asl $38.b		; 06 38
	ora [$36.b]		; 07 36
	cop $35.b		; 02 35
	ora ($25.b,X)		; 01 25
	ora ($22.b,X)		; 01 22
	cop $22.b		; 02 22
	cop $25.b		; 02 25
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$92.b		; C0 92
	sta ($12.b)		; 92 12
	ora ($22.b)		; 12 22
	jsl $442424.l		; 22 24 24 44
	mvp $44,$44		; 44 44 44
	rep #$C2		; C2 C2
	and ($32.b)		; 32 32
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	eor ($53.b,S),Y		; 53 53
	pha		; 48
	pha		; 48
	mvp $44,$44		; 44 44 44
	mvp $22,$22		; 44 22 22
	and ($21.b,X)		; 21 21
	jsr $1320.w		; 20 20 13
	ora ($F2.b,S),Y		; 13 F2
	ora $0EF3.w		; 0D F3 0E
	sbc ($0F.b),Y		; F1 0F
	sbc $E40F.w,Y		; F9 0F E4
	ora $921DE6.l,X		; 1F E6 1D 92
	adc $75CA.w		; 6D CA 75
	ora $DE10.w,X		; 1D 10 DE
	bne  63.b		; D0 3F
	bmi  47.b		; 30 2F
	jsr $607F.w		; 20 7F 60
	sbc $CDE0.w,X		; FD E0 CD
	cpy #$A5.b		; C0 A5
	ldy #$00.b		; A0 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $3C.b		; 02 3C
	sta [$38.b]		; 87 38
	sta [$F0.b]		; 87 F0
	stx $F8.b		; 86 F8
	sty $0870.w		; 8C 70 08
	rts		; 60

	php		; 08
	bvs  24.b		; 70 18
	cpx #$10.b		; E0 10
	sbc $FD80.w,Y		; F9 80 FD
	sty $7A.b		; 84 7A
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	.db $42, $BF		; 42 BF
	.db $62, $1F, $22		; 62 1F 22
	eor $152E13.l,X		; 5F 13 2E 15
	rol $0C17.w		; 2E 17 0C
	asl $1C.b		; 06 1C
	asl A		; 0A
	trb $BF.b		; 14 BF
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $14.b		; 00 14
	brk $97.b		; 00 97
	bvs -53.b		; 70 CB
	sec		; 38
	cmp $3C.b		; C5 3C
	cmp ($2E.b)		; D2 2E
	eor ($2F.b),Y		; 51 2F
	bmi  79.b		; 30 4F
	rts		; 60

	ora ($40.b,S),Y		; 13 40
	and ($4F.b,X)		; 21 4F
	brk $27.b		; 00 27
	brk $33.b		; 00 33
	brk $2D.b		; 00 2D
	tsb $2A.b		; 04 2A
	cop $49.b		; 02 49
	ora ($10.b,X)		; 01 10
	brk $20.b		; 00 20
	brk $03.b		; 00 03
	ora [$06.b]		; 07 06
	sta $BA3EDD.l,X		; 9F DD 3E BA
	jmp ($78B4.w,X)		; 7C B4 78
	sed		; F8
	brk $F8.b		; 00 F8
	brk $9C.b		; 00 9C
	bvs   2.b		; 70 02
	ora [$04.b]		; 07 04
	ora $303F18.l,X		; 1F 18 3F 30
	adc $007E20.l,X		; 7F 20 7E 00
	bit $0000.w,X		; 3C 00 00
	bvs   0.b		; 70 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
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
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	and $2018.w,Y		; 39 18 20
	php		; 08
	bpl  16.b		; 10 10
	tsb $20.b		; 04 20
	cli		; 58
	bit $0000.w		; 2C 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	clc		; 18
	and $2800.w,Y		; 39 00 28
	bpl  16.b		; 10 10
	brk $2C.b		; 00 2C
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$A0.b		; C0 A0
	rti		; 40

	rti		; 40

	brk $30.b		; 00 30
	cli		; 58
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $78.b		; 00 78
	brk $5A.b		; 00 5A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	asl $2C63.w		; 0E 63 2C
	sbc $6C.b,S		; E3 6C
	inc $F8.b		; E6 F8
	asl $70.b		; 06 70
	cpx $24F8.w		; EC F8 24
	sed		; F8
	bpl -16.b		; 10 F0
	bpl  60.b		; 10 3C
	jsr $425E.w		; 20 5E 42
	tya		; 98
	bra  12.b		; 80 0C
	tsb $28.b		; 04 28
	inx		; E8
	jsr $0020.w		; 20 20 00
	bpl   0.b		; 10 00
	clc		; 18
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	bne  24.b		; D0 18
	rts		; 60

	php		; 08
	sed		; F8
	sty $84F8.w		; 8C F8 84
	jmp ($8080.w,X)		; 7C 80 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	sei		; 78
	brk $F8.b		; 00 F8
	bra  30.b		; 80 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -2.b		; F0 FE
	inc $1F1F.w,X		; FE 1F 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sbc $1EFFF0.l,X		; FF F0 FF 1E
	sbc $011F00.l,X		; FF 00 1F 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	sec		; 38
	inc $1C.b		; E6 1C
	sbc [$8C.b],Y		; F7 8C
	xce		; FB
	stx $BB.b		; 86 BB
	dec $BB.b		; C6 BB
	dec $29.b		; C6 29
	dec $05.b		; C6 05
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	brk $1C.b		; 00 1C
	brk $8C.b		; 00 8C
	brk $86.b		; 00 86
	brk $C6.b		; 00 C6
	brk $C6.b		; 00 C6
	brk $C6.b		; 00 C6
	brk $E2.b		; 00 E2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	sbc $2707FF.l,X		; FF FF 07 27
	rts		; 60

	nop		; EA
	inc $0606.w		; EE 06 06
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $FF.b		; 00 FF
	sei		; 78
	sbc $20FF07.l,X		; FF 07 FF 20
	adc [$EA.b]		; 67 EA
	inc $0606.w		; EE 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -60.b		; 80 C4
	inc $F6.b,X		; F6 F6
	rol $F0.b,X		; 36 F0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	inc $80.b,X		; F6 80
	inc $FF34.w,X		; FE 34 FF
	cpy #$F7.b		; C0 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $1303.w		; 0C 03 13
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	cop $0E.b		; 02 0E
	ora [$2F.b],Y		; 17 2F
	trb $3F42.w		; 1C 42 3F
	stz $657F.w		; 9C 7F 65
	inc $FF0E.w,X		; FE 0E FF
	bra  -1.b		; 80 FF
	cop $00.b		; 02 00
	ora [$00.b],Y		; 17 00
	trb $3F00.w		; 1C 00 3F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $0C.b		; 00 0C
	beq  69.b		; F0 45
	sed		; F8
	and $0000FC.l,X		; 3F FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	cpy #$E4.b		; C0 E4
	inc $06.b,X		; F6 06
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	inc $C0.b,X		; F6 C0
	sbc $00EF04.l,X		; FF 04 EF 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
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
	brk $E8.b		; 00 E8
	adc $2C.b,S		; 63 2C
	asl $4151.w,X		; 1E 51 41
	jsr $5020.w		; 20 20 50
	rts		; 60

	bit $3E3C.w,X		; 3C 3C 3E
	and $640000.l,X		; 3F 00 00 64
	inc $3F0D.w		; EE 0D 3F
	rti		; 40

	eor ($00.b),Y		; 51 00
	jsr $7C40.w		; 20 40 7C
	jsr $3A3F.w		; 20 3F 3A
	and $9D0000.l,X		; 3F 00 00 9D
	dey		; 88
	and $38.b		; 25 38
	tas		; 1B
	tas		; 1B
	tsx		; BA
	sta ($50.b,S),Y		; 93 50
	bmi -112.b		; 30 90
	ldy #$40.b		; A0 40
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	sbc $D3EFE0.l,X		; FF E0 EF D3
	cmp $00BF00.l,X		; DF 00 BF 00
	pea $F000.w		; F4 00 F0
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	ora $001F00.l		; 0F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	cpx #$10.b		; E0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sta ($01.b,X)		; 81 01
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sed		; F8
	brk $FC.b		; 00 FC
	bit $18BC.w		; 2C BC 18
	jmp ($9E30.w,X)		; 7C 30 9E
	rts		; 60

	inc $7E00.w,X		; FE 00 7E
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $C8.b		; 00 C8
	tsb $18D8.w		; 0C D8 18
	bra  48.b		; 80 30
	tsb $64.b		; 04 64
	tsb $C4.b		; 04 C4
	tsb $84.b		; 04 84
	cop $02.b		; 02 02
	jmp ($7E00.w,X)		; 7C 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	rol $7E00.w,X		; 3E 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	inx		; E8
	xce		; FB
	sbc ($07.b,S),Y		; F3 07
	ora [$00.b]		; 07 00
	ora ($03.b,X)		; 01 03
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	inx		; E8
	sbc $00F703.l,X		; FF 03 F7 00
	ora [$01.b]		; 07 01
	ora $07.b,S		; 03 07
	ora [$04.b]		; 07 04
.INDEX 8
	sep #$92		; E2 92
	rts		; 60

	sta ($60.b)		; 92 60
	cmp ($20.b)		; D2 20
	cmp ($20.b)		; D2 20
	.db $62, $80, $20		; 62 80 20
	cpy #$80.b		; C0 80
	cpy #$E2.b		; C0 E2
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  12.b		; 10 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($0F.b)		; 12 0F
	bmi  24.b		; 30 18
	ora [$04.b]		; 07 04
	bmi  42.b		; 30 2A
	ldy $04AD.w,X		; BC AD 04
	eor $00.b		; 45 00
	ora $00.b,S		; 03 00
	cop $02.b		; 02 02
	ora $003A10.l,X		; 1F 10 3A 00
	ora [$24.b]		; 07 24
	and $04BE8E.l,X		; 3F 8E BE 04
	eor $40.b		; 45 40
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	clc		; 18
	brk $00.b		; 00 00
	cpy #$F0.b		; C0 F0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $9C.b		; 00 9C
	brk $BC.b		; 00 BC
	bra -44.b		; 80 D4
	lda $001F00.l,X		; BF 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	cop $62.b		; 02 62
	cop $E2.b		; 02 E2
	cop $42.b		; 02 42
	ora ($41.b,X)		; 01 41
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	clv		; B8
	tsb $069C.w		; 0C 9C 06
	stx $0703.w		; 8E 03 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -125.b		; 80 83
	cmp $08.b,S		; C3 08
	and $021F04.l,X		; 3F 04 1F 02
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	brk $80.b		; 00 80
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	rts		; 60

	cpx #$30.b		; E0 30
	bvs -104.b		; 70 98
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	jsr $10FC.w		; 20 FC 10
	inc $0007.w,X		; FE 07 00
	sta $048800.l		; 8F 00 88 04
	stx $07.b		; 86 07
	sbc [$A7.b]		; E7 A7
	and [$57.b],Y		; 37 57
	ora $03071F.l		; 0F 1F 07 03
	ora [$87.b]		; 07 87
	brk $80.b		; 00 80
	brk $C7.b		; 00 C7
	cop $EF.b		; 02 EF
	and [$EF.b]		; 27 EF
	ora [$FF.b],Y		; 17 FF
	phd		; 0B
	sbc $803F03.l,X		; FF 03 3F 80
	brk $C7.b		; 00 C7
	sec		; 38
	sbc ($1E.b,X)		; E1 1E
	ror A		; 6A
	ora $E6.b,S		; 03 E6
	bpl  99.b		; 10 63
	tya		; 98
	sed		; F8
	stx $BE.b		; 86 BE
	sta ($00.b,X)		; 81 00
	brk $80.b		; 00 80
	bra  88.b		; 80 58
	cli		; 58
	eor $5FC1.w,X		; 5D C1 5F
	bne  15.b		; D0 0F
	dey		; 88
	sta $82.b,S		; 83 82
	bra -64.b		; 80 C0
	ror $C100.w,X		; 7E 00 C1
	rol $7F9C.w,X		; 3E 9C 7F
	adc $E79B9F.l		; 6F 9F 9B E7
	stx $C731.w		; 8E 31 C7
	ora $8867.w,Y		; 19 67 88
	brk $00.b		; 00 00
	rol $7F00.w,X		; 3E 00 7F
	brk $1F.b		; 00 1F
	brk $47.b		; 00 47
	rti		; 40

	sbc ($20.b,X)		; E1 20
	sbc ($10.b),Y		; F1 10
	plx		; FA
	txa		; 8A
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	bra -97.b		; 80 9F
	cpx #$FA.b		; E0 FA
	sbc $E21D.w,X		; FD 1D E2
	phd		; 0B
	jsr ($FDF2.w,X)		; FC F2 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	sbc $E200.w,X		; FD 00 E2
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	asl $10.b		; 06 10
	ora $211F20.l		; 0F 20 1F 21
	asl $3649.w,X		; 1E 49 36
	sta [$78.b]		; 87 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	pha		; 48
	pha		; 48
	sei		; 78
	tsb $26FC.w		; 0C FC 26
	inc $DF13.w,X		; FE 13 DF
	ora $1CFF.w,Y		; 19 FF 1C
	lda $1FAF1F.l,X		; BF 1F AF 1F
	cmp $BF081F.l		; CF 1F 08 BF
	tsb $3F.b		; 04 3F
	ora ($1F.b)		; 12 1F
	ora $0C3F.w,Y		; 19 3F 0C
	and $0F7F0F.l,X		; 3F 0F 7F 0F
	adc $1F7F07.l,X		; 7F 07 7F 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	cop $06.b		; 02 06
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $78.b		; 00 78
	ora $111111.l		; 0F 11 11 11
	ora ($20.b),Y		; 11 20
	jsr $A0A0.w		; 20 A0 A0
	and ($21.b,X)		; 21 21
	jmp.w [$F01C]		; DC 1C F0
	brk $F5.b		; 00 F5
	tsb $25.b		; 04 25
	jmp.w [$6E92]		; DC 92 6E
	eor #$B7.b		; 49 B7
	stz $9B.b		; 64 9B
	and ($8D.b)		; 32 8D
	sta ($0E.b),Y		; 91 0E
	ora $0906.w,Y		; 19 06 09
	asl $CB.b		; 06 CB
	php		; 08
	adc $04.b		; 65 04
	lda ($02.b)		; B2 02
	sta $8C01.w,Y		; 99 01 8C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $D0.b		; 00 D0
	clc		; 18
	inx		; E8
	tsb $0670.w		; 0C 70 06
	ldy $5A86.w,X		; BC 86 5A
	cmp $2C.b,S		; C3 2C
	sbc ($17.b,X)		; E1 17
	adc ($0A.b),Y		; 71 0A
	sec		; 38
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7A04.w,X)		; FC 04 7A
	cop $BC.b		; 02 BC
	bra  95.b		; 80 5F
	eor ($2E.b,X)		; 41 2E
	jsr $1017.w		; 20 17 10
	eor ($41.b,X)		; 41 41
	cpx #$E0.b		; E0 E0
	bvs 112.b		; 70 70
	ora $01040C.l		; 0F 0C 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $61.b		; 00 61
	cmp ($F1.b,X)		; C1 F1
	rts		; 60

	ply		; 7A
	php		; 08
	ora $000700.l		; 0F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	jsr $3818.w		; 20 18 38
	plp		; 28
	bmi -10.b		; 30 F6
	bvs -26.b		; 70 E6
	rti		; 40

	stx $04.b		; 86 04
	ora $02.b,S		; 03 02
	brk $01.b		; 00 01
	cpy #$DC.b		; C0 DC
	cpy #$D8.b		; C0 D8
	ldy #$BE.b		; A0 BE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	tsb $BF.b		; 04 BF
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
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
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $40.b		; 00 40
	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora ($41.b,X)		; 01 41
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	ldy #$00.b		; A0 00
	bvs  32.b		; 70 20
	beq  96.b		; F0 60
	sed		; F8
	cpy #$F8.b		; C0 F8
	bra -63.b		; 80 C1
	eor ($80.b,X)		; 41 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	ldy #$20.b		; A0 20
	rts		; 60

	rts		; 60

	bvc -48.b		; 50 D0
	bpl -112.b		; 10 90
	sed		; F8
	cpy $869C.w		; CC 9C 86
	ror $3773.w		; 6E 73 37
	and ($07.b),Y		; 31 07
	tsb $03.b		; 04 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	sbc $629F84.l,X		; FF 84 9F 62
	adc $043730.l,X		; 7F 30 37 04
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora $010505.l		; 0F 05 05 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $09.b		; 00 09
	ora $010F05.l,X		; 1F 05 0F 01
	ora [$03.b]		; 07 03
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($BF.b,X)		; 01 BF
	bra -66.b		; 80 BE
	cpy #$9D.b		; C0 9D
	cpy #$DA.b		; C0 DA
	cmp ($C9.b,X)		; C1 C9
	cmp $C7.b,S		; C3 C7
	sbc $E3.b,S		; E3 E3
	beq  48.b		; F0 30
	ora $C080.w,Y		; 19 80 C0
	bra -63.b		; 80 C1
	bra -29.b		; 80 E3
	cpy #$E7.b		; C0 E7
	cpy #$F7.b		; C0 F7
	cmp ($FF.b,X)		; C1 FF
	rts		; 60

	jsr ($FE10.w,X)		; FC 10 FE
	and [$C8.b]		; 27 C8
	phb		; 8B
	stz $7F.b,X		; 74 7F
	dey		; 88
	xce		; FB
	sed		; F8
	cmp [$F8.b],Y		; D7 F8
	cmp [$30.b],Y		; D7 30
	ora $F00FF0.l		; 0F F0 0F F0
	adc ($41.b),Y		; 71 41
	brk $04.b		; 00 04
	brk $8C.b		; 00 8C
	bvs  -4.b		; 70 FC
	cpx #$F8.b		; E0 F8
	ora ($19.b,X)		; 01 19
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sbc [$78.b]		; E7 78
	cmp $F432.w		; CD 32 F4
	ora $8F13F4.l		; 0F F4 13 8F
	rts		; 60

	sta $E00360.l		; 8F 60 03 E0
	cop $F1.b		; 02 F1
	sei		; 78
	brk $B2.b		; 00 B2
	.db $82, $C9, $C9		; 82 C9 C9
	stx $9E82.w		; 8E 82 9E
	bra  94.b		; 80 5E
	rti		; 40

	eor $D5DF4C.l,X		; 5F 4C DF D5
	sta $7C.b,S		; 83 7C
	eor $3C.b,S		; 43 3C
	eor $205730.l		; 4F 30 57 20
	and $000F00.l		; 2F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	ora #$09.b		; 09 09
	cmp [$2F.b]		; C7 2F
	sbc [$17.b],Y		; F7 17
	plx		; FA
	phd		; 0B
	jsr ($FF04.w,X)		; FC 04 FF
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	and $481F12.l,X		; 3F 12 1F 48
	eor $4B4744.l		; 4F 44 47 4B
	phk		; 4B
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	ora ($11.b),Y		; 11 11
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	bvs   7.b		; 70 07
	jmp ($FC07.w,X)		; 7C 07 FC
	sta [$B8.b]		; 87 B8
	sta $38.b,S		; 83 38
	sta $3C.b,S		; 83 3C
	sta $7D.b,S		; 83 7D
.INDEX 16
	rep #$1D		; C2 1D
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	tsb $F9.b		; 04 F9
	brk $79.b		; 00 79
	brk $7D.b		; 00 7D
	brk $FF.b		; 00 FF
	.db $82, $FF, $82		; 82 FF 82
	rol $7E02.w,X		; 3E 02 7E
	.db $42, $09		; 42 09
	asl $09.b		; 06 09
	asl $0A.b		; 06 0A
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	trb $0C03.w		; 1C 03 0C
	ora ($04.b,X)		; 01 04
	ora ($06.b,X)		; 01 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F8.b		; 06 F8
	ora [$78.b]		; 07 78
	adc $817200.l,X		; 7F 00 72 81
	bit $D843.w,X		; 3C 43 D8
	adc [$C1.b]		; 67 C1
	cop $F0.b		; 02 F0
	sta $1819.w,Y		; 99 19 18
	phd		; 0B
	dey		; 88
	brk $80.b		; 00 80
	ora $008D.w		; 0D 8D 00
	cpy #$E040.w		; C0 40 E0
	brk $FC.b		; 00 FC
	sta ($9E.b),Y		; 91 9E
	jsr $705F.w		; 20 5F 70
	ora $FE03FC.l		; 0F FC 03 FE
	ora ($77.b,X)		; 01 77
	sta $5F.b,S		; 83 5F
	lda [$97.b]		; A7 97
	adc $CCEF0E.l		; 6F 0E EF CC
	jmp $008F.w		; 4C 8F 00
	ora $00.b,S		; 03 00
	brk $07.b		; 00 07
	bra -113.b		; 80 8F
	and ($0F.b,X)		; 21 0F
	.db $62, $0F, $E6		; 62 0F E6
	ora $7C00FC.l,X		; 1F FC 00 7C
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	rol $7C00.w,X		; 3E 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	bmi  32.b		; 30 20
	php		; 08
	bpl   4.b		; 10 04
	tsb $0C.b		; 04 0C
	asl $0C.b		; 06 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  64.b		; F0 40
	sed		; F8
	jsr $00FC.w		; 20 FC 00
	ror $1F00.w,X		; 7E 00 1F
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $001F00.l		; 0F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $03FE.w		; 20 FE 03
	jmp ($FCFB.w,X)		; 7C FB FC
	asl A		; 0A
	jsr ($F008.w,X)		; FC 08 F0
	php		; 08
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	plx		; FA
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $38.b		; 00 38
	beq  28.b		; F0 1C
	sed		; F8
	cpx $18.b		; E4 18
	jmp ($FAF0.w)		; 6C F0 FA
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $12.b		; 00 12
	jsr ($7E89.w,X)		; FC 89 7E
	eor $40BE.w,X		; 5D BE 40
	lda $13DFA6.l,X		; BF A6 DF 13
	adc $AA7789.l		; 6F 89 77 AA
	eor $7E00FC.l,X		; 5F FC 00 7E
	brk $BE.b		; 00 BE
	bra -65.b		; 80 BF
	bra  31.b		; 80 1F
	brk $CF.b		; 00 CF
	rti		; 40

	sbc [$70.b],Y		; F7 70
	ora $0FF600.l,X		; 1F 00 F6 0F
	sbc $805800.l,X		; FF 00 58 80
	pha		; 48
	bra  72.b		; 80 48
	bra -96.b		; 80 A0
	rti		; 40

	rts		; 60

	rti		; 40

	bvc  96.b		; 50 60
	ora $000000.l		; 0F 00 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra  96.b		; 80 60
	bra  40.b		; 80 28
	beq  40.b		; F0 28
	beq  16.b		; F0 10
	sed		; F8
	sty $78.b,X		; 94 78
	sty $78.b,X		; 94 78
	mvn $04,$38		; 54 38 04
	sec		; 38
	plp		; 28
	bpl -16.b		; 10 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FD.b,X)		; 01 FD
	ora ($FE.b,X)		; 01 FE
	brk $F7.b		; 00 F7
	brk $D7.b		; 00 D7
	bmi  75.b		; 30 4B
	clv		; B8
	ora ($12.b)		; 12 12
	ora ($12.b)		; 12 12
	sta $8A8D.w		; 8D 8D 8A
	dey		; 88
	lda [$B0.b],Y		; B7 B0
	ora $000F00.l		; 0F 00 0F 00
	sta [$10.b],Y		; 97 10
	bmi -60.b		; 30 C4
	ldy $EE46.w		; AC 46 EE
	ora $67.b,S		; 03 67
	sta ($B3.b,X)		; 81 B3
	cpy #$6011.w		; C0 11 60
	cpy #$A070.w		; C0 70 A0
	sec		; 38
	cpy #$443F.w		; C0 3F 44
	ora $810F02.l		; 0F 02 0F 81
	sta [$00.b]		; 87 00
	ora $C0.b,S		; 03 C0
	eor ($A0.b,X)		; 41 A0
	jsr $10D0.w		; 20 D0 10
	clv		; B8
	sty $C67C.w		; 8C 7C C6
	inc $F7D3.w		; EE D3 F7
	bit #$18FF.w		; 89 FF 18
	sbc $FF3A.w,X		; FD 3A FF
	asl $FE.b,X		; 16 FE
	ora [$08.b]		; 07 08
	sbc $82FF04.l,X		; FF 04 FF 82
	cmp $409F91.l,X		; DF 91 9F 40
	eor $307B70.l,X		; 5F 70 7B 30
	and [$25.b],Y		; 37 25
	rol $3E.b		; 26 3E
	dec $1F4C.w		; CE 4C 1F
	cli		; 58
	and $7B38.w,X		; 3D 38 7B
	sed		; F8
	inc $FEF0.w,X		; FE F0 FE
	adc ($72.b),Y		; 71 72
	ora #$CC88.w		; 09 88 CC
	ora $19BE09.l,X		; 1F 09 BE 19
	inc $FC3B.w,X		; FE 3B FC
	ror $F8.b,X		; 76 F8
	ror $F8.b,X		; 76 F8
	jsl $7A80FC.l		; 22 FC 80 7A
	php		; 08
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	cpx #$F030.w		; E0 30 F0
	clc		; 18
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rti		; 40

	sed		; F8
	jsr $10FC.w		; 20 FC 10
	ror $421E.w,X		; 7E 1E 42
	rol $0E62.w,X		; 3E 62 0E
	adc $0C.b,S		; 63 0C
	and ($1E.b,X)		; 21 1E
	and ($1E.b),Y		; 31 1E
	and ($0E.b),Y		; 31 0E
	adc ($3E.b,X)		; 61 3E
	sbc $7C.b,S		; E3 7C
	rti		; 40

	trb $3C00.w		; 1C 00 3C
	jsr $203E.w		; 20 3E 20
	asl $0E00.w		; 0E 00 0E
	brk $3E.b		; 00 3E
	jsr $405C.w		; 20 5C 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$0080.w		; C0 80 00
	jsr $1030.w		; 20 30 10
	clc		; 18
	php		; 08
	tsb $0406.w		; 0C 06 04
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $F8.b		; 00 F8
	jsr $007C.w		; 20 7C 00
	ror $3F08.w,X		; 7E 08 3F
	tsb $1F.b		; 04 1F
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	ora $110F10.l		; 0F 10 0F 11
	ora $030001.l		; 0F 01 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	sed		; F8
	and $E639F0.l		; 2F F0 39 E6
	jsl $FD47FF.l		; 22 FF 47 FD
	eor $F19EF9.l		; 4F F9 9E F1
	bit $FAE3.w,X		; 3C E3 FA
	cop $FC.b		; 02 FC
	tsb $00E0.w		; 0C E0 00
	pea $FA04.w		; F4 04 FA
	php		; 08
	inc $10.b,X		; F6 10
	sbc $029E21.l		; EF 21 9E 02
	sbc ($1E.b,X)		; E1 1E
	sbc $0C.b,X		; F5 0C
	xce		; FB
	tsb $CC.b		; 04 CC
	bmi   4.b		; 30 04
	sed		; F8
	sta $7C.b,S		; 83 7C
	sta $F172.w		; 8D 72 F1
	asl $1010.w		; 0E 10 10
	asl A		; 0A
	php		; 08
	brk $00.b		; 00 00
	and ($33.b,S),Y		; 33 33
	eor $43.b,S		; 43 43
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	pea $FD18.w		; F4 18 FD
	asl $07FB.w		; 0E FB 07
	lda $609F40.l,X		; BF 40 9F 60
	ora $24DEE8.l,X		; 1F E8 DE 24
	jsr $58D9.w		; 20 D9 58
	rti		; 40

	rol $1720.w		; 2E 20 17
	bpl  72.b		; 10 48
	pha		; 48
	jsr $0020.w		; 20 20 00
	brk $08.b		; 00 08
	ora ($48.b,X)		; 01 48
	eor $000000.l		; 4F 00 00 00
	bra -112.b		; 80 90
	cpx #$0080.w		; E0 80 00
	ora $03.b,S		; 03 03
	sta $1E.b,S		; 83 1E
	ora $7F7C.w,X		; 1D 7C 7F
	sbc ($00.b,S),Y		; F3 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	ora $1C7F02.l,X		; 1F 02 7F 1C
	sbc $FF71.w,X		; FD 71 FF
	ora $03.b,S		; 03 03
	ora $1B.b,S		; 03 1B
	tas		; 1B
	tda		; 7B
	bvs 103.b		; 70 67
	sei		; 78
	asl $3C3C.w		; 0E 3C 3C
	beq  -8.b		; F0 F8
	cpx #$01F0.w		; E0 F0 01
	ora $187F01.l,X		; 1F 01 7F 18
	sbc $00FF60.l,X		; FF 60 FF 00
	sbc $603E18.l,X		; FF 18 3E 60
	jsr ($F8C0.w,X)		; FC C0 F8
	brk $0F.b		; 00 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bpl  12.b		; 10 0C
	ora $C13700.l		; 0F 00 37 C1
	ror $A7.b,X		; 76 A7
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	tsb $0083.w		; 0C 83 00
	eor $06FF00.l,X		; 5F 00 FF 06
	sbc $40BE7C.l,X		; FF 7C BE 40
	ldx $51.b,Y		; B6 51
	sta $46.b		; 85 46
	stx $1056.w		; 8E 56 10
	sta ($40.b,S),Y		; 93 40
	sta $043B80.l		; 8F 80 3B 04
	tya		; 98
	and $813F80.l,X		; 3F 80 3F 81
	and $103E86.l,X		; 3F 86 3E 10
	ror $F101.w,X		; 7E 01 F1
	cop $82.b		; 02 82
	asl $82.b		; 06 82
	beq  -4.b		; F0 FC
	adc ($7B.b,X)		; 61 7B
	asl $30.b		; 06 30
	ora $00FF00.l		; 0F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF7000.l,X		; FF 00 70 FF
	adc ($FF.b,X)		; 61 FF
	brk $F9.b		; 00 F9
	cop $F2.b		; 02 F2
	ora ($12.b)		; 12 12
	jsl $242422.l		; 22 22 24 24
	stz $64.b		; 64 64
	and ($78.b,S),Y		; 33 78
	lda $B0.b,S		; A3 B0
	rtl		; 6B

	pla		; 68
	sta [$10.b],Y		; 97 10
	sbc $00FF00.l		; EF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr $80FC.w		; 20 FC 80
	jsr ($FD69.w,X)		; FC 69 FD
	bpl 120.b		; 10 78
	bra -112.b		; 80 90
	ldy $A4.b		; A4 A4
	ldx #$91A2.w		; A2 A2 91
	sta ($FB.b),Y		; 91 FB
	php		; 08
	sbc [$10.b],Y		; F7 10
	sbc $10FF10.l,X		; FF 10 FF 10
	jsr ($F200.w,X)		; FC 00 F2
	ora $F4.b,S		; 03 F4
	ora [$F9.b]		; 07 F9
	asl $5057.w		; 0E 57 50
	and $E0EF20.l		; 2F 20 EF E0
	and $909F20.l		; 2F 20 9F 90
	eor $3A51.w,X		; 5D 51 3A
	and ($14.b)		; 32 14
	trb $C1.b		; 14 C1
	ora ($E3.b)		; 12 E3
	and $3B86.w,X		; 3D 86 3B
	ora $CC3F76.l		; 0F 76 3F CC
	and $00FFD8.l		; 2F D8 FF 00
	ldx $FE00.w,Y		; BE 00 FE
	ora ($CC.b)		; 12 CC
	ora $3BFA.w		; 0D FA 3B
	dec $56.b,X		; D6 56
	sty $8C.b		; 84 8C
	cop $1A.b		; 02 1A
	cop $22.b		; 02 22
	tsb $44.b		; 04 44
	tsb $0CF8.w		; 0C F8 0C
	sed		; F8
	jmp $E880A8.l		; 5C A8 80 E8
	ora #$8160.w		; 09 60 81
	rts		; 60

	cmp ($60.b,X)		; C1 60
	sta ($20.b,X)		; 81 20
	sei		; 78
	brk $78.b		; 00 78
	brk $A8.b		; 00 A8
	bra  40.b		; 80 28
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$F800.w		; C0 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	pei ($8B.b)		; D4 8B
	txa		; 8A
	eor $26.b		; 45 26
	ora ($03.b,X)		; 01 03
	brk $C1.b		; 00 C1
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $88.b		; 00 88
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$1F1F.w		; C0 1F 1F
	brk $00.b		; 00 00
	lsr $5FC1.w,X		; 5E C1 5F
	cmp ($1F.b,X)		; C1 1F
	cpy #$E03F.w		; C0 3F E0
	sta $30DF60.l,X		; 9F 60 DF 30
	sbc $18E318.l		; EF 18 E3 18
	lda $80BE81.l,X		; BF 81 BE 80
	adc $405F40.l,X		; 7F 40 5F 40
	and $000F20.l,X		; 3F 20 0F 00
	ora [$10.b],Y		; 17 10
	cmp $1F33C8.l		; CF C8 33 1F
	rol $1F.b,X		; 36 1F
	dec A		; 3A
	ora $481F28.l,X		; 1F 28 1F 48
	and $413F48.l,X		; 3F 48 3F 41
	rol $3F40.w,X		; 3E 40 3F
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	ora ($3D.b,X)		; 01 3D
	dec $7A.b		; C6 7A
	cmp $9964.w		; CD 64 99
	cpx $DE30.w		; EC 30 DE
	rts		; 60

	sta $FF7D00.l		; 8F 00 7D FF
	xce		; FB
	xce		; FB
	sed		; F8
	rti		; 40

	bmi   1.b		; 30 01
	beq -109.b		; F0 93
	cpy #$A003.w		; C0 03 A0
	and ($00.b,X)		; 21 00
	bvs  56.b		; 70 38
	sbc $82FF71.l,X		; FF 71 FF 82
	sbc $BBC5.w,X		; FD C5 BB
	nop		; EA
	dec $F978.w,X		; DE 78 F9
	and ($67.b,X)		; 21 67
	ora $1F.b,S		; 03 1F
	sta $E3CDDC.l		; 8F DC CD E3
	bcs -79.b		; B0 B1
	bra -125.b		; 80 83
	pha		; 48
	cmp $01FF30.l		; CF 30 FF 01
	sbc $8CFF03.l,X		; FF 03 FF 8C
	sbc $81FFC1.l,X		; FF C1 FF 81
	adc [$87.b]		; 67 87
	ora $366C0F.l		; 0F 0F 6C 36
	and ($B3.b),Y		; 31 B3
	sta $B30FB3.l		; 8F B3 0F B3
	cmp $2180BF.l		; CF BF 80 21
	and $0C7F07.l,X		; 3F 07 7F 0C
	sbc $88FF30.l,X		; FF 30 FF 88
	sbc [$0F.b],Y		; F7 0F
	cmp $8F.b,S		; C3 8F
	cmp $18.b,S		; C3 18
	cld		; D8
	sbc $1FFFC7.l,X		; FF C7 FF 1F
	rol $F0EF.w		; 2E EF F0
	ror $FE.b,X		; 76 FE
	and ($71.b),Y		; 31 71
	lda $9FBCC7.l		; AF C7 BC 9F
	bvs -57.b		; 70 C7
	sbc $0CFF00.l,X		; FF 00 FF 0C
	sbc $F07FB0.l,X		; FF B0 7F F0
	bmi -30.b		; 30 E2
	ldx #$888B.w		; A2 8B 88
	and $E0C020.l		; 2F 20 C0 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	rts		; 60

	beq -16.b		; F0 F0
	clc		; 18
	cpx #$E008.w		; E0 08 E0
	php		; 08
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $1A.b		; 00 1A
	tsx		; BA
	sec		; 38
	and ($0B.b),Y		; 31 0B
	ora #$819B.w		; 09 9B 81
	adc ($48.b),Y		; 71 48
	jsr $1020.w		; 20 20 10
	jsr $E0E0.w		; 20 E0 E0
	bvc  94.b		; 50 5E
	sbc ($FE.b,X)		; E1 FE
	sbc ($E8.b,X)		; E1 E8
	eor ($D8.b,X)		; 41 D8
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	jsr $7BE0.w		; 20 E0 7B
	sty $7B.b		; 84 7B
	sty $2B.b		; 84 2B
	cpy $29.b		; C4 29
	dec $87.b		; C6 87
.INDEX 8
	sep #$D6		; E2 D6
	adc $43.b,S		; 63 43
	and ($1B.b),Y		; 31 1B
	ora ($87.b,X)		; 01 87
	ora $84.b,S		; 03 84
	brk $C4.b		; 00 C4
	brk $C6.b		; 00 C6
	brk $E2.b		; 00 E2
	brk $63.b		; 00 63
	brk $31.b		; 00 31
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	tsb $F8.b		; 04 F8
	ora [$E8.b]		; 07 E8
	ora [$64.b],Y		; 17 64
	txy		; 9B
	mvp $A8,$44		; 44 44 A8
	tay		; A8
	sta $4D99.w,Y		; 99 99 4D
	eor $6363.w		; 4D 63 63
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tya		; 98
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	sbc $E100.w,Y		; F9 00 E1
	sta ($91.b),Y		; 91 91
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	sbc #$1AE9.w		; E9 E9 1A
	inc A		; 1A
	inc $E3E0.w,X		; FE E0 E3
	trb $18E7.w		; 1C E7 18
	sbc $F910.w		; ED 10 F9
	brk $F1.b		; 00 F1
	brk $E9.b		; 00 E9
	bpl -39.b		; 10 D9
	bmi -108.b		; 30 94
	sei		; 78
	sec		; 38
	sec		; 38
	bcs -80.b		; B0 B0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	sei		; 78
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	cmp ($30.b,X)		; C1 30
	sbc ($30.b,X)		; E1 30
	eor ($10.b,X)		; 41 10
	lda ($90.b,X)		; A1 90
	eor ($D0.b,X)		; 41 D0
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $A0.b		; 00 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $BF.b		; 00 BF
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $007F00.l,X		; FF 00 7F 00
	ora $000100.l		; 0F 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0C.b,X		; F5 0C
.INDEX 8
	sep #$1E		; E2 1E
	sbc #$FC1F.w		; E9 1F FC
	ora $07073E.l		; 0F 3E 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bpl   5.b		; 10 05
	trb $1A02.w		; 1C 02 1A
	ora $000D.w		; 0D 0D 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($0D.b,X)		; 01 0D
	ora $3B.b,S		; 03 3B
	ora [$34.b]		; 07 34
	cmp $03EFD9.l		; CF D9 EF 03
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	cmp $00EF00.l		; CF 00 EF 00
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $13.b		; 06 13
	ora $53.b,S		; 03 53
	pla		; 68
	bvs 112.b		; 70 70
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $7F.b		; 02 7F
	brk $FF.b		; 00 FF
	jsr $40F0.w		; 20 F0 40
	beq   1.b		; F0 01
	cop $03.b		; 02 03
	ora $3D3C0F.l,X		; 1F 0F 3C 3D
	sbc ($F4.b),Y		; F1 F4
	cpy $0ECE.w		; CC CE 0E
	plp		; 28
	pla		; 68
	rts		; 60

	rts		; 60

	brk $1F.b		; 00 1F
	cop $7F.b		; 02 7F
	tsb $31FF.w		; 0C FF 31
	sbc $FCC4.w,X		; FD C4 FC
	asl $28CE.w		; 0E CE 28
	pla		; 68
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	phd		; 0B
	phd		; 0B
	phd		; 0B
	bit $F120.w		; 2C 20 F1
	sbc ($C1.b),Y		; F1 C1
	cpy #$00.b		; C0 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $17.b		; 00 17
	phd		; 0B
	eor $20FF08.l,X		; 5F 08 FF 20
	sbc ($C1.b),Y		; F1 C1
	sbc ($00.b),Y		; F1 00
	cpy #$00.b		; C0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora ($36.b,X)		; 01 36
	asl $40.b		; 06 40
	brk $C1.b		; 00 C1
	adc ($81.b,X)		; 61 81
	ora ($A8.b,X)		; 01 A8
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	adc $003700.l,X		; 7F 00 37 00
	eor ($40.b,X)		; 41 40
	sbc ($01.b,X)		; E1 01
	sta [$21.b]		; 87 21
	lda $5810.w,X		; BD 10 58
	asl $7466.w		; 0E 66 74
	jmp ($0044.w)		; 6C 44 00
	clc		; 18
	clc		; 18
	phd		; 0B
	ora $000707.l		; 0F 07 07 00
	brk $06.b		; 00 06
	lsr $6E06.w,X		; 5E 06 6E
	stz $7C.b		; 64 7C
	brk $44.b		; 00 44
	bpl  27.b		; 10 1B
	php		; 08
	ora $000705.l		; 0F 05 07 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
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
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  79.b		; 30 4F
	eor $080808.l		; 4F 08 08 08
	php		; 08
	adc $007C00.l,X		; 7F 00 7C 00
	jmp ($3E00.w,X)		; 7C 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	asl $02.b		; 06 02
	and ($38.b)		; 32 38
	cli		; 58
	sei		; 78
	cpx #$F0.b		; E0 F0
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	and $18FF02.l,X		; 3F 02 FF 18
	plx		; FA
	rti		; 40

	sed		; F8
	bcc -16.b		; 90 F0
	brk $00.b		; 00 00
	bpl  27.b		; 10 1B
	tda		; 7B
	tda		; 7B
	tsa		; 3B
	sec		; 38
	sei		; 78
	sei		; 78
	bvs 120.b		; 70 78
	rts		; 60

	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	ora $0B7F00.l,X		; 1F 00 7F 0B
	sbc $38FF18.l,X		; FF 18 FF 38
	jsr ($FC30.w,X)		; FC 30 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	rts		; 60

	bpl -118.b		; 10 8A
	beq -122.b		; F0 86
	sed		; F8
	adc ($FC.b)		; 72 FC
	cmp $3BEE.w,X		; DD EE 3B
	dec $3EE3.w,X		; DE E3 3E
	cpy #$00.b		; C0 00
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $EE.b		; 00 EE
	brk $DE.b		; 00 DE
	brk $3E.b		; 00 3E
	brk $6C.b		; 00 6C
	sta ($9A.b)		; 92 9A
	stz $E4.b		; 64 E4
	clc		; 18
	cpy $0830.w		; CC 30 08
	beq  24.b		; F0 18
	jsr $50A8.w		; 20 A8 50
	pei ($28.b)		; D4 28
	.db $82, $80, $44		; 82 80 44
	rti		; 40

	iny		; C8
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	jsr $E0E0.w		; 20 E0 E0
	bne  64.b		; D0 40
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
	brk $07.b		; 00 07
	ora $0E.b,S		; 03 0E
	ora [$1E.b]		; 07 1E
	ora $300F18.l		; 0F 18 0F 30
	ora $401F30.l,X		; 1F 30 1F 40
	and $037F80.l,X		; 3F 80 7F 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $03.b		; 00 03
	jsr ($F718.w,X)		; FC 18 F7
	and $C42FD6.l,X		; 3F D6 2F C4
	adc [$9C.b]		; 67 9C
	adc ($8E.b,S),Y		; 73 8E
	adc $E487.w,Y		; 79 87 E4
	tas		; 1B
	jsr ($E700.w,X)		; FC 00 E7
	ora [$C1.b]		; 07 C1
	brk $D3.b		; 00 D3
	bpl -117.b		; 10 8B
	php		; 08
	sta $04.b		; 85 04
	.db $82, $02, $48		; 82 02 48
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	trb $100C.w		; 1C 0C 10
	tsb $08.b		; 04 08
	php		; 08
	cop $10.b		; 02 10
	bit $0016.w		; 2C 16 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $0C.b,S		; 03 0C
	trb $1400.w		; 1C 00 14
	php		; 08
	php		; 08
	brk $16.b		; 00 16
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rts		; 60

	bvc  32.b		; 50 20
	jsr $1800.w		; 20 00 18
	bit $0030.w		; 2C 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $AD.b		; 00 AD
	sbc $40BF40.l,X		; FF 40 BF 40
	adc $003F00.l,X		; 7F 00 3F 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $000F00.l,X		; 1F 00 0F 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
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
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bne  -9.b		; D0 F7
	sbc [$0F.b]		; E7 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	brk $E0.b		; 00 E0
	brk $FB.b		; 00 FB
	bne  -1.b		; D0 FF
	ora [$EF.b]		; 07 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sty $F8.b		; 84 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	bra  -1.b		; 80 FF
	sta $00CB00.l		; 8F 00 CB 00
	cmp [$80.b]		; C7 80
	adc [$C0.b]		; 67 C0
	adc $C0.b,S		; 63 C0
	and ($E0.b),Y		; 31 E0
	bcs  96.b		; B0 60
	bvc -96.b		; 50 A0
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora [$00.b]		; 07 00
	cpy $9B03.w		; CC 03 9B
	adc [$CD.b]		; 67 CD
	sbc $FADFA4.l,X		; FF A4 DF FA
	sta $01.b		; 85 01
	inc $B6.b,X		; F6 B6
	eor #$0000.w		; 49 00 00
	ora $00.b,S		; 03 00
	adc [$00.b]		; 67 00
	sbc $00DF00.l,X		; FF 00 DF 00
	sta $00.b		; 85 00
	ldy $4C30.w,X		; BC 30 4C
	pha		; 48
	jsr $3000.w		; 20 00 30
	cpy #$98.b		; C0 98
	cpx #$D8.b		; E0 D8
	beq 120.b		; F0 78
	beq  56.b		; F0 38
	beq  48.b		; F0 30
	cpx #$B0.b		; E0 B0
	rti		; 40

	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($1D.b,X)		; 01 1D
	asl $39.b		; 06 39
	asl $1D72.w		; 0E 72 1D
	sbc $1C.b,S		; E3 1C
	cmp [$28.b],Y		; D7 28
	eor $88F7D0.l		; 4F D0 F7 88
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	asl $1D00.w		; 0E 00 1D
	brk $1D.b		; 00 1D
	ora ($0E.b,X)		; 01 0E
	asl $20.b		; 06 20
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	brk $1F.b		; 00 1F
	cpx #$FE.b		; E0 FE
	sbc $C0FF00.l,X		; FF 00 FF C0
	jsr ($FDF2.w,X)		; FC F2 FD
	ora $E2FE.w		; 0D FE E2
	ora $E00000.l,X		; 1F 00 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	adc $00C000.l,X		; 7F 00 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	sty $3B.b		; 84 3B
	cpy #$1F.b		; C0 1F
	cpx #$12.b		; E0 12
	sbc ($12.b,X)		; E1 12
	sbc ($2E.b,X)		; E1 2E
	cmp ($05.b),Y		; D1 05
	rol A		; 2A
	brk $DC.b		; 00 DC
	sty $4484.w		; 8C 84 44
	rti		; 40

	jsr $0D20.w		; 20 20 0D
	ora $0C0C.w		; 0D 0C 0C
	brk $00.b		; 00 00
	cop $D2.b		; 02 D2
	brk $FB.b		; 00 FB
	cpx $F71F.w		; EC 1F F7
	ora $28BF53.l		; 0F 53 BF 28
	cmp $59CF37.l,X		; DF 37 CF 59
	lda [$4E.b]		; A7 4E
	lda ($67.b),Y		; B1 67
	clc		; 18
	sta $404F80.l,X		; 9F 80 4F 40
	lda $405F80.l,X		; BF 80 5F 40
	ora $000700.l		; 0F 00 07 00
	and ($20.b,X)		; 21 20
	bvs -112.b		; 70 90
	bit $31.b,X		; 34 31
	asl $0F.b,X		; 16 0F
	plp		; 28
	jsr $1010.w		; 20 10 10
	plp		; 28
	bmi  30.b		; 30 1E
	asl $1F1F.w,X		; 1E 1F 1F
	brk $00.b		; 00 00
	and ($37.b)		; 32 37
	asl $1F.b		; 06 1F
	jsr $0028.w		; 20 28 00
	bpl  32.b		; 10 20
	rol $1F10.w,X		; 3E 10 1F
	ora $001F.w,X		; 1D 1F 00
	brk $4E.b		; 00 4E
	cpy $12.b		; C4 12
	trb $8D8D.w		; 1C 8D 8D
	eor $2849.w,X		; 5D 49 28
	clc		; 18
	pha		; 48
	bvc  32.b		; 50 20
	cpy #$00.b		; C0 00
	brk $70.b		; 00 70
	adc $69F7F0.l,X		; 7F F0 F7 69
	sbc $005F00.l		; EF 00 5F 00
	ply		; 7A
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	ora $060200.l		; 0F 00 02 06
	stx $800E.w		; 8E 0E 80
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	ora $0E0602.l		; 0F 02 06 0E
	asl $8000.w		; 0E 00 80
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr $2020.w		; 20 20 20
	jsr $7FFC.w		; 20 FC 7F
	adc $ECAF03.l,X		; 7F 03 AF EC
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sbc $AC7F03.l,X		; FF 03 7F AC
	sbc $006060.l		; EF 60 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ldy #$F0.b		; A0 F0
	bra -48.b		; 80 D0
	bra -48.b		; 80 D0
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $99.b		; 00 99
	rti		; 40

	ora $6029C0.l,X		; 1F C0 29 60
	jmp $8760.w		; 4C 60 87
	adc ($86.b),Y		; 71 86
	adc $E31EC1.l,X		; 7F C1 1E E3
	tsb $003F.w		; 0C 3F 00
	lda $9F00.w,Y		; B9 00 9F
	asl $BF.b		; 06 BF
	jsl $08303E.l		; 22 3E 30 08
	php		; 08
	jsr $1800.w		; 20 00 18
	php		; 08
	rts		; 60

	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $A0.b		; 00 A0
	rti		; 40

	sed		; F8
	jsr $38D6.w		; 20 D6 38
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $B8.b		; 00 B8
	bra   9.b		; 80 09
	ora [$01.b]		; 07 01
	trb $380B.w		; 1C 0B 38
	cop $CB.b		; 02 CB
	brk $68.b		; 00 68
	pla		; 68
	rtl		; 6B

	adc $83.b,S		; 63 83
	tsa		; 3B
	jmp ($0000.w,X)		; 7C 00 00
	ora [$04.b]		; 07 04
	ora [$90.b],Y		; 17 90
	ora #$00BD.w		; 09 BD 00
	sbc $03FF68.l,X		; FF 68 FF 03
	sbc $E2FF10.l,X		; FF 10 FF E2
	and $7BC4.w,X		; 3D C4 7B
	ldx $BF.b,Y		; B6 BF
	ply		; 7A
	adc $28FAE9.l,X		; 7F E9 FA 28
	bcs -80.b		; B0 B0
	sta $CF.b,S		; 83 CF
	ora $8211D1.l		; 0F D1 11 82
	cop $36.b		; 02 36
	ror $FE7A.w,X		; 7E 7A FE
	inx		; E8
	inc $FF20.w,X		; FE 20 FF
	bra  -1.b		; 80 FF
	ora $07F9FF.l		; 0F FF F9 07
	asl $01.b,X		; 16 01
	rts		; 60

	pla		; 68
	rts		; 60

	inc $7C84.w		; EE 84 7C
	sbc $23FF.w,Y		; F9 FF 23
	sbc $070700.l,X		; FF 00 07 07
	brk $01.b		; 00 01
	pla		; 68
	brk $FF.b		; 00 FF
	rts		; 60

	sbc $E0FF00.l,X		; FF 00 FF E0
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $308060.l,X		; FF 60 80 30
	iny		; C8
	php		; 08
	ora [$20.b]		; 07 20
	and ($D0.b,X)		; 21 D0
	dec $56.b,X		; D6 56
	eor [$FF.b],Y		; 57 FF
	sbc ($E3.b,S),Y		; F3 E3
	cpx #$80.b		; E0 80
	brk $C8.b		; 00 C8
	brk $07.b		; 00 07
	cpx #$21.b		; E0 21
	inc $FF50.w,X		; FE 50 FF
	lsr $FF.b		; 46 FF
	sbc $FF.b,S		; E3 FF
	brk $FF.b		; 00 FF
	cld		; D8
	stp		; DB
	xce		; FB
	ora $FF.b,S		; 03 FF
	bit $FD7A.w,X		; 3C 7A FD
	adc $67BE1E.l,X		; 7F 1E BE 67
	sbc $06FF1F.l,X		; FF 1F FF 06
	cld		; D8
	sbc $1CDF03.l,X		; FF 03 DF 1C
	and $18FF18.l,X		; 3F 18 FF 18
	sbc $DFFF06.l,X		; FF 06 FF DF
	cmp $01A7A7.l,X		; DF A7 A7 01
	cpy #$C0.b		; C0 C0
	inc $3FFE.w,X		; FE FE 3F
	and $4BF7C1.l,X		; 3F C1 F7 4B
	sbc $FC6F.w,X		; FD 6F FC
	jmp ($23FC.w)		; 6C FC 23
	brk $FE.b		; 00 FE
	cpy #$FF.b		; C0 FF
	rol $01FF.w,X		; 3E FF 01
	sbc $C06F01.l,X		; FF 01 6F C0
	sbc $A77F7C.l		; EF 7C 7F A7
	lda [$C3.b]		; A7 C3
	clc		; 18
	inc $3301.w,X		; FE 01 33
	tsb $0E31.w		; 0C 31 0E
	and ($0E.b),Y		; 31 0E
	bpl  15.b		; 10 0F
	ora $180E.w,Y		; 19 0E 18
	ora $013C00.l		; 0F 00 3C 01
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	bpl -60.b		; 10 C4
	and $B846.w,Y		; 39 46 B8
	ror $CF80.w,X		; 7E 80 CF
	bmi  31.b		; 30 1F
	cpx #$3F.b		; E0 3F
	cpy #$00.b		; C0 00
	ora $201010.l,X		; 1F 10 10 20
	and $80.b,S		; 23 80
	ora ($80.b,X)		; 01 80
	ora ($27.b,X)		; 01 27
	and [$CA.b]		; 27 CA
	dex		; CA
	ora ($12.b)		; 12 12
	ldy #$5F.b		; A0 5F
	tya		; 98
	sbc [$5E.b]		; E7 5E
	adc $EF.b,S		; 63 EF
	and ($CF.b),Y		; 31 CF
	bpl  -9.b		; 10 F7
	clc		; 18
	cpx #$0C.b		; E0 0C
	sei		; 78
	asl $C0DF.w		; 0E DF C0
	eor [$40.b]		; 47 40
	lda $20.b,S		; A3 20
	cmp ($00.b,X)		; C1 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	ora [$FA.b]		; 07 FA
	ora $0CE7.w,Y		; 19 E7 0C
	sbc ($16.b,S),Y		; F3 16
	sbc $DCAB.w,Y		; F9 AB DC
	eor $EE.b,X		; 55 EE
	tax		; AA
	adc [$57.b],Y		; 77 57
	tsa		; 3B
	plx		; FA
	brk $E7.b		; 00 E7
	brk $F3.b		; 00 F3
	brk $F9.b		; 00 F9
	brk $DC.b		; 00 DC
	brk $EE.b		; 00 EE
	brk $77.b		; 00 77
	brk $3B.b		; 00 3B
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $40.b		; 00 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	asl $0C63.w		; 0E 63 0C
	adc ($16.b,X)		; 61 16
	adc ($0B.b),Y		; 71 0B
	and $300F.w,Y		; 39 0F 30
	asl $1F2F.w,X		; 1E 2F 1F
	and $3C081F.l		; 2F 1F 08 3C
	jsr $203E.w		; 20 3E 20
	and $101621.l		; 2F 21 16 10
	bpl  16.b		; 10 10
	tsb $0E0F.w		; 0C 0F 0E
	ora $F80808.l		; 0F 08 08 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C00.w		; 0D 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $84.b		; 00 84
	brk $44.b		; 00 44
	brk $24.b		; 00 24
	bra -28.b		; 80 E4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $30.b		; 00 30
	bmi  24.b		; 30 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	rtl		; 6B

	jmp ($0F0E.w)		; 6C 0E 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $EE.b		; 00 EE
	rti		; 40

	sbc $007F0C.l,X		; FF 0C 7F 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $F0.b		; 00 F0
	rti		; 40

	beq   0.b		; F0 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora $0003.w		; 0D 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A4.b		; 00 A4
	ldy $92.b		; A4 92
	sta ($91.b)		; 92 91
	sta ($88.b),Y		; 91 88
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	sty $84.b		; 84 84
	sty $84.b		; 84 84
	sbc $FF03.w,X		; FD 03 FF
	ora $FE.b,S		; 03 FE
	cop $FC.b		; 02 FC
	brk $FF.b		; 00 FF
	ora [$F8.b]		; 07 F8
	ora [$F0.b]		; 07 F0
	ora $6640BF.l		; 0F BF 40 66
	ror $1C.b		; 66 1C
	trb $0405.w		; 1C 05 04
	sta [$84.b]		; 87 84
	pha		; 48
	pha		; 48
	and $50502F.l		; 2F 2F 50 50
	bra -128.b		; 80 80
	ora $190E.w,Y		; 19 0E 19
	asl $061D.w		; 0E 1D 06
	ora $0C06.w		; 0D 06 0C
	ora [$06.b]		; 07 06
	ora $06.b,S		; 03 06
	ora $03.b,S		; 03 03
	ora ($0E.b,X)		; 01 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$24.b		; C0 24
	bit $44.b		; 24 44
	mvp $88,$88		; 44 88 88
	dey		; 88
	dey		; 88
	bvc  80.b		; 50 50
	bmi  48.b		; 30 30
	bcc  16.b		; 90 10
	cpy $B00C.w		; CC 0C B0
	stx $5C.b		; 86 5C
	dec $38.b		; C6 38
	sbc $0E.b,S		; E3 0E
	adc $1C.b,S		; 63 1C
	and ($07.b),Y		; 31 07
	and ($06.b),Y		; 31 06
	bmi  15.b		; 30 0F
	clc		; 18
	jmp ($B804.w,X)		; 7C 04 B8
	bra  94.b		; 80 5E
	.db $42, $3C		; 42 3C
	jsr $212F.w		; 20 2F 21
	asl $1F10.w,X		; 1E 10 1F
	bpl  23.b		; 10 17
	bpl  47.b		; 10 2F
	ora $1D0B.w,Y		; 19 0B 1D
	ora [$0C.b],Y		; 17 0C
	ora $0F06.w		; 0D 06 0F
	cop $07.b		; 02 07
	.db $82, $07, $82		; 82 07 82
	ora $82.b		; 05 82
	ora $1D00.w,Y		; 19 00 1D
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $82.b		; 00 82
	bra -64.b		; 80 C0
	cpy #$3F.b		; C0 3F
	brk $7F.b		; 00 7F
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	sbc $72F00F.l,X		; FF 0F F0 72
	sty $7C87.w		; 8C 87 7C
	bit $FF03.w,X		; 3C 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	clc		; 18
	bra -128.b		; 80 80
	tsb $7C00.w		; 0C 00 7C
	brk $00.b		; 00 00
	tsb $06F1.w		; 0C F1 06
	xce		; FB
	ora ($7F.b,X)		; 01 7F
	adc ($0F.b),Y		; 71 0F
	xce		; FB
	cmp $3A.b		; C5 3A
	pld		; 2B
	trb $19.b		; 14 19
	tsb $18.b		; 04 18
	inx		; E8
	jsr ($FD04.w,X)		; FC 04 FD
	ora ($8D.b,X)		; 01 8D
	ora ($31.b,X)		; 01 31
	and ($18.b,S),Y		; 33 18
	inc A		; 1A
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
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
	eor $D0AEA0.l,X		; 5F A0 AE D0
	inc $48.b,X		; F6 48
	ror A		; 6A
	bit $25.b		; 24 25
	cop $13.b		; 02 13
	brk $09.b		; 00 09
	brk $04.b		; 00 04
	brk $A3.b		; 00 A3
	ora $D0.b,S		; 03 D0
	brk $48.b		; 00 48
	brk $24.b		; 00 24
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora [$10.b]		; 07 10
	bvs   3.b		; 70 03
	bmi  11.b		; 30 0B
	sec		; 38
	ora $1C.b		; 05 1C
	.db $82, $0E, $81		; 82 0E 81
	ora [$87.b]		; 07 87
	sta [$F8.b]		; 87 F8
	sed		; F8
	and $101F20.l		; 2F 20 1F 10
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	rti		; 40

	ora $20.b,S		; 03 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $7C.b		; 00 7C
	adc ($59.b),Y		; 71 59
	adc $0003.w,X		; 7D 03 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	rts		; 60

	sbc $00FF01.l,X		; FF 01 FF 00
	sta $0100.w,Y		; 99 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $07.b		; 04 07
	ora $7F.b		; 05 7F
	ply		; 7A
	inc $00.b,X		; F6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl A		; 0A
	ora $7D.b		; 05 7D
	asl $FE.b		; 06 FE
	adc ($F8.b),Y		; 71 F8
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$3A.b]		; 07 3A
	ora [$82.b]		; 07 82
	sbc [$03.b]		; E7 03
	inc $FE01.w,X		; FE 01 FE
	ora ($FF.b,X)		; 01 FF
	ror $0300.w,X		; 7E 00 03
	cop $0E.b		; 02 0E
	ora $43.b,S		; 03 43
	ply		; 7A
	cop $FA.b		; 02 FA
	ora $FC.b,S		; 03 FC
	ora ($FC.b,X)		; 01 FC
	ora ($80.b,X)		; 01 80
	brk $1F.b		; 00 1F
	bmi  15.b		; 30 0F
	rts		; 60

	rol $2E60.w		; 2E 60 2E
	rts		; 60

	sta $419D41.l,X		; 9F 41 9D 41
	trb $0AC1.w		; 1C C1 0A
	cmp $2F.b,S		; C3 2F
	jsr $203F.w		; 20 3F 20
	ora $405F00.l,X		; 1F 00 5F 40
	inc $7EC0.w,X		; FE C0 7E
	rti		; 40

	adc $417D41.l,X		; 7F 41 7D 41
	brk $63.b		; 00 63
	sta ($E7.b,X)		; 81 E7
	.db $82, $EE, $05		; 82 EE 05
	jsr ($F80B.w,X)		; FC 0B F8
	ora [$F0.b],Y		; 17 F0
	ora [$F0.b],Y		; 17 F0
	rol $C1E0.w		; 2E E0 C1
	eor ($42.b,X)		; 41 42
	.db $42, $05		; 42 05
	tsb $8B.b		; 04 8B
	dey		; 88
	sta [$90.b],Y		; 97 90
	and $202F20.l		; 2F 20 2F 20
	eor $000040.l,X		; 5F 40 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $007F00.l		; 0F 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($71.b,X)		; 01 71
	asl $86.b		; 06 86
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $407F00.l		; 0F 00 7F 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $63.b,S		; 03 63
	tsb $304C.w		; 0C 4C 30
	bmi -64.b		; 30 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $091E06.l		; 0F 06 1E 09
	sec		; 38
	ora ($70.b,S),Y		; 13 70
	and $C65CE0.l		; 2F E0 5C C6
	clv		; B8
	sta $040000.l		; 8F 00 00 04
	tsb $09.b		; 04 09
	php		; 08
	ora [$10.b],Y		; 17 10
	and $405F20.l		; 2F 20 5F 40
	tyx		; BB
	.db $82, $71, $01		; 82 71 01
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bpl  96.b		; 10 60
	cli		; 58
	pla		; 68
	ldy $FE28.w,X		; BC 28 FE
	plp		; 28
	adc $183F38.l,X		; 7F 38 3F 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	tay		; A8
	plp		; 28
	iny		; C8
	php		; 08
	iny		; C8
	php		; 08
	dex		; CA
	inc A		; 1A
	cmp #$2519.w		; C9 19 25
	ora $15.b,S		; 03 15
	ora $1A.b,S		; 03 1A
	ora ($0E.b,X)		; 01 0E
	ora ($07.b,X)		; 01 07
	brk $02.b		; 00 02
	brk $26.b		; 00 26
	brk $37.b		; 00 37
	cpx #$03.b		; E0 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	lda $4CFF00.l		; AF 00 FF 4C
	bcs  38.b		; B0 26
	cld		; D8
	bcc -17.b		; 90 EF
	eor ($FA.b,X)		; 41 FA
	php		; 08
	inc $46.b		; E6 46
	asl $D7.b,X		; 16 D7
	bpl -36.b		; 10 DC
	sbc $B0.b,S		; E3 B0
	brk $D8.b		; 00 D8
	brk $EF.b		; 00 EF
	brk $FA.b		; 00 FA
	tsb $E0.b		; 04 E0
	ora [$06.b],Y		; 17 06
	lda $03FF10.l,X		; BF 10 FF 03
	inx		; E8
	inc $19.b		; E6 19
	sbc #$D096.w		; E9 96 D0
	and $B12FD0.l		; 2F D0 2F B1
	lsr $F12E.w		; 4E 2E F1
	ror $5FFF.w		; 6E FF 5F
	sed		; F8
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cmp ($01.b,X)		; C1 01
	cpy #$00.b		; C0 00
	cpy #$40.b		; C0 40
	bra -79.b		; 80 B1
	iny		; C8
	sbc $3F7858.l,X		; FF 58 78 3F
	cpy #$BF.b		; C0 BF
	rti		; 40

	and $807FC0.l,X		; 3F C0 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $007F80.l,X		; 7F 80 7F 00
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	iny		; C8
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	and ($A1.b,X)		; 21 A1
	.db $42, $C2		; 42 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	ora $607EFC.l,X		; 1F FC 7E 60
	adc $1F.b,S		; 63 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora $FF.b,S		; 03 FF
	trb $60FF.w		; 1C FF 60
	inc $FF00.w,X		; FE 00 FF
	brk $03.b		; 00 03
	tas		; 1B
	tas		; 1B
	tas		; 1B
	cli		; 58
	jmp $80E0E0.l		; 5C E0 E0 80
	cpy #$00.b		; C0 00
	rti		; 40

	cpy #$60.b		; C0 60
	rts		; 60

	brk $17.b		; 00 17
	ora $DF.b,S		; 03 DF
	clc		; 18
	sbc $80FC40.l,X		; FF 40 FC 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$60.b		; C0 60
	rts		; 60

	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$9F.b]		; 07 9F
	ora $A0BCBC.l,X		; 1F BC BC A0
	rts		; 60

	brk $81.b		; 00 81
	bvs   2.b		; 70 02
	sbc ($00.b),Y		; F1 00
	ora [$00.b]		; 07 00
	and $1C7F87.l,X		; 3F 87 7F 1C
	sbc $00FCA0.l,X		; FF A0 FC 00
	ldy #$70.b		; A0 70
	brk $F1.b		; 00 F1
	brk $3C.b		; 00 3C
	ror $FF9F.w,X		; 7E 9F FF
	sta ($3F.b,X)		; 81 3F
	stx $01.b		; 86 01
	ora $970800.l,X		; 1F 00 08 97
	sta $F9.b		; 85 F9
	brk $FC.b		; 00 FC
	bit $9CFF.w,X		; 3C FF 9C
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $900100.l,X		; BF 00 01 90
	brk $FA.b		; 00 FA
	brk $FF.b		; 00 FF
	brk $F1.b		; 00 F1
	sty $83.b		; 84 83
	tsb $0C07.w		; 0C 07 0C
	ora $08.b,S		; 03 08
	ora $100718.l		; 0F 18 07 10
	ora [$30.b]		; 07 30
	ora $F08330.l,X		; 1F 30 83 F0
	ora [$84.b]		; 07 84
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	ora $101F00.l		; 0F 00 1F 10
	ora $3EC100.l		; 0F 00 C1 3E
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	brk $61.b		; 00 61
	beq  48.b		; F0 30
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bit $E7.b		; 24 E7
	iny		; C8
	and $FC0FF0.l,X		; 3F F0 0F FC
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1A.b		; 00 1A
	cop $C6.b		; 02 C6
	dec $74.b		; C6 74
	stz $4C.b,X		; 74 4C
	jmp $4646.w		; 4C 46 46
	sta $83.b,S		; 83 83
	sta $83.b,S		; 83 83
	.db $82, $82, $2D		; 82 82 2D
	sbc ($2A.b,X)		; E1 2A
	sbc $24.b,S		; E3 24
	sbc [$38.b]		; E7 38
	sbc $03FE31.l,X		; FF 31 FE 03
	jsr ($30CF.w,X)		; FC CF 30
	sbc $405E00.l,X		; FF 00 5E 40
	eor $DA41.w,X		; 5D 41 DA
	rep #$C4		; C2 C4
	cpy $C8.b		; C4 C8
	iny		; C8
	bvs 112.b		; 70 70
	cmp ($C1.b,X)		; C1 C1
	tda		; 7B
	tda		; 7B
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr ($F000.w,X)		; FC 00 F0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	ora $C00CE0.l		; 0F E0 0C C0
	clc		; 18
	ldy #$30.b		; A0 30
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$F8.b		; C0 F8
	php		; 08
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	and $D82F98.l		; 2F 98 2F D8
	and $000F00.l,X		; 3F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cpy #$98.b		; C0 98
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	lda $3A.b,S		; A3 3A
	tsa		; 3B
	sec		; 38
	bmi  24.b		; 30 18
	php		; 08
	pha		; 48
	bvc  32.b		; 50 20
	bpl  80.b		; 10 50
	rti		; 40

	.db $42, $64		; 42 64
	ora $7F.b,S		; 03 7F
	beq  -1.b		; F0 FF
	cpx #$FC.b		; E0 FC
	cpy #$D8.b		; C0 D8
	brk $58.b		; 00 58
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	mvp $38,$E0		; 44 E0 38
	ora [$40.b]		; 07 40
	and $203F47.l,X		; 3F 47 3F 20
	ora $760F40.l,X		; 1F 40 0F 76
	and ($1F.b,X)		; 21 1F
	bmi  40.b		; 30 28
	ora $3FC007.l,X		; 1F 07 C0 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $21.b		; 00 21
	brk $30.b		; 00 30
	brk $1F.b		; 00 1F
	brk $5C.b		; 00 5C
	xce		; FB
	sed		; F8
	eor [$78.b],Y		; 57 78
	lda [$69.b],Y		; B7 69
	ldx $9E.b,Y		; B6 9E
	and ($A0.b,X)		; 21 A0
	ora [$0F.b]		; 07 0F
	brk $E0.b		; 00 E0
	brk $53.b		; 00 53
	tda		; 7B
	bpl -16.b		; 10 F0
	jsr $00F0.w		; 20 F0 00
	beq   1.b		; F0 01
	sbc $FF07.w,Y		; F9 07 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	sbc $807F00.l,X		; FF 00 7F 80
	lda $E01F40.l,X		; BF 40 1F E0
	ora $F00BF0.l		; 0F F0 0B F0
	bpl -32.b		; 10 E0
	cpx #$00.b		; E0 00
	jmp ($307C.w,X)		; 7C 7C 30
	bmi  95.b		; 30 5F
	eor $83CCCC.l,X		; 5F CC CC 83
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	and $33.b,S		; 23 33
	and ($90.b,S),Y		; 33 90
	bcc -64.b		; 90 C0
	cpx #$70.b		; E0 70
	sed		; F8
	ldy $DE7E.w,X		; BC 7E DE
	ldx $DCEC.w,Y		; BE EC DC
	ora ($B3.b,X)		; 01 B3
	ora $F3.b,S		; 03 F3
	bpl -16.b		; 10 F0
	rti		; 40

	beq  48.b		; F0 30
	jsr ($FF1C.w,X)		; FC 1C FF
	asl $047F.w		; 0E 7F 04
	and $000000.l,X		; 3F 00 00 00
	brk $6C.b		; 00 6C
	brk $4E.b		; 00 4E
	and ($43.b),Y		; 31 43
	bit $3F40.w,X		; 3C 40 3F
	cmp ($3E.b,X)		; C1 3E
	sbc $1C.b,S		; E3 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	tsb $030C.w		; 0C 0C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sbc $FD23.w,X		; FD 23 FD
	cmp $FD.b,S		; C3 FD
	ora ($FE.b,X)		; 01 FE
	and [$DD.b]		; 27 DD
	eor #$18BE.w		; 49 BE 18
	sbc $FDFF70.l,X		; FF 70 FF FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $DD.b		; 00 DD
	brk $BE.b		; 00 BE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	inc $FD80.w,X		; FE 80 FD
	cpx $BEF2.w		; EC F2 BE
	cpy #$DF.b		; C0 DF
	rts		; 60

	sbc $78C790.l		; EF 90 C7 78
	pla		; 68
	sta [$FD.b],Y		; 97 FD
	brk $FA.b		; 00 FA
	brk $F1.b		; 00 F1
	ora ($C1.b,X)		; 01 C1
	ora ($60.b,X)		; 01 60
	brk $90.b		; 00 90
	brk $78.b		; 00 78
	brk $97.b		; 00 97
	brk $13.b		; 00 13
	ora $7E07C8.l		; 0F C8 07 7E
	sbc ($07.b,X)		; E1 07
	sbc $A03FC0.l,X		; FF C0 3F A0
	adc $2D3F50.l,X		; 7F 50 3F 2D
	asl $000F.w,X		; 1E 0F 00
	ora [$00.b]		; 07 00
	sbc ($00.b,X)		; E1 00
	sbc $003F00.l,X		; FF 00 3F 00
	adc $003F00.l,X		; 7F 00 3F 00
	asl $F000.w,X		; 1E 00 F0
	sbc $78FF34.l,X		; FF 34 FF 78
	sbc $01FFE1.l,X		; FF E1 FF 01
	sbc $06FF02.l,X		; FF 02 FF 06
	sbc $FF7F9C.l,X		; FF 9C 7F FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $17.b		; 00 17
	sbc $30DF2C.l		; EF 2C DF 30
	cmp $42BF60.l,X		; DF 60 BF 42
	lda $26EF12.l,X		; BF 12 EF 26
	cmp $EFBE45.l,X		; DF 45 BE EF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $EF.b		; 00 EF
	brk $DF.b		; 00 DF
	brk $BE.b		; 00 BE
	brk $BA.b		; 00 BA
	eor $B8.b,S		; 43 B8
	eor $90.b,S		; 43 90
	adc [$C0.b]		; 67 C0
	and $523EE1.l,X		; 3F E1 3E 52
	stz $0CFC.w		; 9C FC 0C
	lda $013D40.l,X		; BF 40 3D 01
	rol $3C02.w,X		; 3E 02 3C
	bit $18.b		; 24 18
	ora $2300.w,Y		; 19 00 23
	bra  55.b		; 80 37
	brk $0F.b		; 00 0F
	rti		; 40

	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	bmi  48.b		; 30 30
	cmp ($C1.b,X)		; C1 C1
	asl $06.b		; 06 06
	sec		; 38
	sec		; 38
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	sbc $00FC00.l,X		; FF 00 FC 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	trb $28.b		; 14 28
	plp		; 28
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jmp ($F800.w,X)		; 7C 00 F8
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $6060.w		; 20 60 60
	cpx #$E0.b		; E0 E0
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
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
	brk $30.b		; 00 30
	phy		; 5A
	stx $46.b,Y		; 96 46
	bvc  72.b		; 50 48
	pha		; 48
	brk $30.b		; 00 30
	bmi  23.b		; 30 17
	tas		; 1B
	ora $00000F.l		; 0F 0F 00 00
	ora $7F.b		; 05 7F
	asl $40DE.w		; 0E DE 40
	cli		; 58
	brk $48.b		; 00 48
	jsr $1033.w		; 20 33 10
	ora $000F0B.l,X		; 1F 0B 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
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
	brk $03.b		; 00 03
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	clc		; 18
	clc		; 18
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $C020.w		; 20 20 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	brk $1E.b		; 00 1E
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
	brk $13.b		; 00 13
	ora $03030C.l		; 0F 0C 03 03
	brk $FC.b		; 00 FC
	ora $26.b,S		; 03 26
	ora $060719.l,X		; 1F 19 07 06
	ora ($01.b,X)		; 01 01
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sbc $86FEE1.l,X		; FF E1 FE 86
	adc $8779.w,Y		; 79 79 87
	brk $FF.b		; 00 FF
	inc $F9.b		; E6 F9
	ora $E0E0.w,Y		; 19 E0 E0
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $79.b		; 00 79
	brk $87.b		; 00 87
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $8B.b		; 00 8B
	jmp ($F916.w,X)		; 7C 16 F9
	adc $32F3.w		; 6D F3 32
	cmp $783ECD.l		; CF CD 3E 78
	inc $F804.w,X		; FE 04 F8
	beq   0.b		; F0 00
	jmp ($F900.w,X)		; 7C 00 F9
	brk $F3.b		; 00 F3
	brk $CF.b		; 00 CF
	brk $3E.b		; 00 3E
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	bra 124.b		; 80 7C
	bra -16.b		; 80 F0
	brk $60.b		; 00 60
	brk $40.b		; 00 40
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
	ora $03.b,S		; 03 03
	ora $7E7E0F.l,X		; 1F 0F 7E 7E
	beq -16.b		; F0 F0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $0E7F03.l,X		; 1F 03 7F 0E
	sbc $80FE70.l,X		; FF 70 FE 80
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora ($77.b,X)		; 01 77
	ora $40.b		; 05 40
	rti		; 40

	sta ($21.b,X)		; 81 21
	sta ($01.b,X)		; 81 01
	ora #$0007.w		; 09 07 00
	brk $00.b		; 00 00
	ora #$3F00.w		; 09 00 3F
	brk $77.b		; 00 77
	rti		; 40

	eor ($00.b,X)		; 41 00
	lda ($01.b,X)		; A1 01
	sta [$01.b]		; 87 01
	ora $0000.w,X		; 1D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	ora ($3D.b)		; 12 3D
	adc $007C.w,Y		; 79 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	bpl  61.b		; 10 3D
	sei		; 78
	inc $0000.w,X		; FE 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$E0.b],Y		; 17 E0
	sbc $00CF00.l		; EF 00 CF 00
	and $0000C0.l,X		; 3F C0 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	phk		; 4B
	phk		; 4B
	eor ($68.b,S),Y		; 53 68
	rol $21.b		; 26 21
	ora $3BF3.w		; 0D F3 3B
	lsr $77.b		; 46 77
	ldy $78EF.w,X		; BC EF 78
	cmp $61BC71.l,X		; DF 71 BC 61
	bra  28.b		; 80 1C
	cmp ($19.b,X)		; C1 19
	cop $02.b		; 02 02
	sta $84.b		; 85 84
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	asl $1F00.w		; 0E 00 1F
	ora ($83.b,X)		; 01 83
	stx $05.b		; 86 05
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bra   3.b		; 80 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $14.b		; 00 14
	php		; 08
	bit $08.b,X		; 34 08
	and ($0C.b)		; 32 0C
	and ($0C.b)		; 32 0C
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b),Y		; 11 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $3A.b		; 00 3A
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $12.b		; 00 12
	brk $12.b		; 00 12
	brk $12.b		; 00 12
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
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
	trb $3E00.w		; 1C 00 3E
	ora $3FC2.w		; 0D C2 3F
	brk $F3.b		; 00 F3
	brk $EF.b		; 00 EF
	tsb $1CC1.w		; 0C C1 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $7E1C.w		; 1C 1C 7E
	.db $42, $FE		; 42 FE
	brk $FE.b		; 00 FE
	brk $F2.b		; 00 F2
	brk $FE.b		; 00 FE
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	beq -128.b		; F0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	ldy #$A0.b		; A0 A0
	jsr ($F700.w,X)		; FC 00 F7
	ora [$C9.b]		; 07 C9
	ora $803F20.l		; 0F 20 3F 80
	sbc ($00.b,S),Y		; F3 00
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $F6.b		; 00 F6
	asl $D1.b		; 06 D1
	ora ($40.b),Y		; 11 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $40FF40.l,X		; FF 40 FF 40
	sbc $40FF40.l,X		; FF 40 FF 40
	sbc $A07F60.l,X		; FF 60 7F A0
	eor $0827B0.l		; 4F B0 27 08
	cli		; 58
	cli		; 58
	lsr $46.b		; 46 46
	eor ($41.b,X)		; 41 41
	rti		; 40

	rti		; 40

	jsr $0060.w		; 20 60 00
	jsr $3000.w		; 20 00 30
	brk $18.b		; 00 18
	sbc $01FE00.l,X		; FF 00 FE 01
	inc $FD01.w,X		; FE 01 FD
	ora $FE.b,S		; 03 FE
	cop $FE.b		; 02 FE
	cop $FE.b		; 02 FE
	cop $FF.b		; 02 FF
	ora $3C.b,S		; 03 3C
	bit $C4C4.w,X		; 3C C4 C4
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	sta ($80.b,X)		; 81 80
	adc ($70.b),Y		; 71 70
	ora $040C.w		; 0D 0C 04
	tsb $04.b		; 04 04
	jsr ($F013.w,X)		; FC 13 F0
	eor $003FC0.l		; 4F C0 3F 00
	jsr ($F200.w,X)		; FC 00 F2
	ora $08.b,S		; 03 08
	ora $1BFEE0.l		; 0F E0 FE 1B
	clc		; 18
	adc $80BF60.l		; 6F 60 BF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F601.w,X		; FD 01 F6
	asl $18.b		; 06 18
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $000300.l,X		; 7F 00 03 00
	.db $62, $62, $18		; 62 62 18
	clc		; 18
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$38.b		; C0 38
	sec		; 38
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $CE.b		; 00 CE
	brk $30.b		; 00 30
	cmp $47DB24.l		; CF 24 DB 47
	clv		; B8
	mvp $FB,$BB		; 44 BB FB
	ora [$F7.b]		; 07 F7
	sbc $300000.l,X		; FF 00 00 30
	bmi -125.b		; 30 83
	sta $10.b,S		; 83 10
	bpl  32.b		; 10 20
	jsr $2320.w		; 20 20 23
	brk $07.b		; 00 07
	sbc ($FF.b,S),Y		; F3 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	eor $80.b,S		; 43 80
	sta [$00.b]		; 87 00
	ora [$88.b]		; 07 88
	sta $F4.b,S		; 83 F4
	xba		; EB
	cpx $0000.w		; EC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	asl $0E.b		; 06 0E
	tsb $FC.b		; 04 FC
	ora $FF.b,S		; 03 FF
	asl A		; 0A
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	iny		; C8
	bit $3E.b,X		; 34 3E
	sbc $7DF2.w,Y		; F9 F2 7D
	dec $E171.w,X		; DE 71 E1
	asl $AD56.w,X		; 1E 56 AD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b,X		; 34 00
	sbc $7D00.w,Y		; F9 00 7D
	brk $71.b		; 00 71
	brk $10.b		; 00 10
	brk $8B.b		; 00 8B
	ora #$0000.w		; 09 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $DA.b		; 25 DA
	cmp $3B.b		; C5 3B
	cpy $3B.b		; C4 3B
	cmp ($3D.b)		; D2 3D
	eor ($BE.b),Y		; 51 BE
	plp		; 28
	cmp $8AEF14.l,X		; DF 14 EF 8A
	sbc [$D9.b],Y		; F7 D9
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	ora ($3C.b,X)		; 01 3C
	brk $BE.b		; 00 BE
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $F7.b		; 00 F7
	brk $80.b		; 00 80
	and $E31DC2.l,X		; 3F C2 1D E3
	sta $188731.l		; 8F 31 87 18
	cmp $8C.b,S		; C3 8C
	rts		; 60

	lsr $B0.b		; 46 B0
	and ($D8.b,X)		; 21 D8
	cld		; D8
	tas		; 1B
	inx		; E8
	phd		; 0B
	adc ($03.b,S),Y		; 73 03
	sed		; F8
	sta ($7C.b,X)		; 81 7C
	rti		; 40

	and $109F20.l,X		; 3F 20 9F 10
	dec $0008.w		; CE 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $63.b		; 00 63
	bra -61.b		; 80 C3
	asl $FF.b		; 06 FF
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	ora [$0B.b]		; 07 0B
	tsb $1E.b		; 04 1E
	ora ($7F.b,X)		; 01 7F
	brk $CF.b		; 00 CF
	rol $7FB1.w,X		; 3E B1 7F
	lsr $FF.b		; 46 FF
	sbc $07CE.w,X		; FD CE 07
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $CE.b		; 00 CE
	brk $81.b		; 00 81
	rol $7E01.w,X		; 3E 01 7E
	ora ($E6.b,X)		; 01 E6
	ora ($C2.b,X)		; 01 C2
	brk $80.b		; 00 80
	brk $1F.b		; 00 1F
	and [$E0.b]		; 27 E0
	and $22E200.l,X		; 3F 00 E2 22
	rep #$42		; C2 42
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $DF1E.w,X		; 1E 1E DF
	cpy #$FF.b		; C0 FF
	brk $F8.b		; 00 F8
	bra  -4.b		; 80 FC
	bra  -2.b		; 80 FE
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$FF.b		; C0 FF
	rts		; 60

	bcc -112.b		; 90 90
	dey		; 88
	dey		; 88
	tsb $84.b		; 04 84
	cop $82.b		; 02 82
	ora ($81.b,X)		; 01 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	inc $FAFE.w,X		; FE FE FA
	sbc $000A0A.l,X		; FF 0A 0A 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $F0.b		; 00 F0
	inc $FF0A.w,X		; FE 0A FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	and $DFDF3F.l,X		; 3F 3F DF DF
	ora ($01.b,X)		; 01 01
	cpx $F71C.w		; EC 1C F7
	sta $60EFD4.l		; 8F D4 EF 60
	sty $00.b		; 84 00
	brk $3E.b		; 00 3E
	sbc $00FFC1.l,X		; FF C1 FF 00
	sbc $001F00.l,X		; FF 00 1F 00
	sta $00EF04.l		; 8F 04 EF 00
	sty $00.b		; 84 00
	brk $C0.b		; 00 C0
	sed		; F8
	cmp [$FF.b],Y		; D7 FF
	cmp [$FF.b],Y		; D7 FF
	brk $00.b		; 00 00
	cpx #$F8.b		; E0 F8
	bcc  -8.b		; 90 F8
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	jsr $D7E0.w		; 20 E0 D7
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $90F800.l,X		; FF 00 F8 90
	sed		; F8
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $03.b,S		; 03 03
	sei		; 78
	jsr ($FF4B.w,X)		; FC 4B FF
	brk $4B.b		; 00 4B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($03FF.w,X)		; FC FF 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF48.l,X		; FF 48 FF 00
	phk		; 4B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $FFEE80.l		; 8F 80 EE FF
	inc $00EF.w		; EE EF 00
	brk $C0.b		; 00 C0
	beq  64.b		; F0 40
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	inc $00FF.w		; EE FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	beq  64.b		; F0 40
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	sbc [$FF.b],Y		; F7 FF
	adc [$F7.b]		; 67 F7
	and [$D7.b]		; 27 D7
	inc $FFFE.w,X		; FE FE FF
	sbc $40FF1F.l,X		; FF 1F FF 40
	sta ($E0.b,X)		; 81 E0
	brk $F3.b		; 00 F3
	sbc $00FF63.l,X		; FF 63 FF 00
	sbc $1FFFE0.l,X		; FF E0 FF 1F
	sbc $80FF00.l,X		; FF 00 FF 80
	lda $975F40.l,X		; BF 40 5F 97
	tya		; 98
	lda $604FB0.l		; AF B0 4F 60
	ora $FFFF40.l,X		; 1F 40 FF FF
	inc $05FE.w,X		; FE FE 05
	sbc $0303.w,X		; FD 03 03
	bcc  -8.b		; 90 F8
	lda $F040FF.l		; AF FF 40 F0
	bpl -16.b		; 10 F0
	sed		; F8
	sbc $01FF06.l,X		; FF 06 FF 01
	sbc $68FF02.l,X		; FF 02 FF 68
	lda ($BE.b),Y		; B1 BE
	cpx #$BF.b		; E0 BF
	cpx #$2F.b		; E0 2F
	cpy #$7E.b		; C0 7E
	ldx $1EE6.w,Y		; BE E6 1E
	cpx #$1F.b		; E0 1F
	inc $9601.w,X		; FE 01 96
	bpl -49.b		; 10 CF
	brk $CF.b		; 00 CF
	brk $DF.b		; 00 DF
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($80.b,X)		; 01 80
	cpy #$C3.b		; C0 C3
	rts		; 60

	cpy $5063.w		; CC 63 50
	adc $BF403F.l		; 6F 3F 40 BF
	cpy #$1F.b		; C0 1F
	sbc ($04.b,X)		; E1 04
	xce		; FB
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sta $03.b,S		; 83 03
	sty $800C.w		; 8C 0C 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($F0.b,X)		; 01 F0
	sbc ($C5.b,S),Y		; F3 C5
	tda		; 7B
	.db $62, $BD, $E9		; 62 BD E9
	stz $CF36.w,X		; 9E 36 CF
	eor $A7E7.w,Y		; 59 E7 A7
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $7B.b		; 00 7B
	brk $BD.b		; 00 BD
	brk $9E.b		; 00 9E
	brk $CF.b		; 00 CF
	brk $E7.b		; 00 E7
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	cpx $F4EB.w		; EC EB F4
	and $FA05F8.l,X		; 3F F8 05 FA
	cpy #$FF.b		; C0 FF
	ora $00E3E0.l,X		; 1F E0 E3 00
	brk $00.b		; 00 00
	sbc $05.b		; E5 05
	sbc ($01.b),Y		; F1 01
	sed		; F8
	brk $FA.b		; 00 FA
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	ror $3EC9.w,X		; 7E C9 3E
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5D.b		; 00 5D
	inc $36EF.w		; EE EF 36
	inc $6707.w,X		; FE 07 67
	tas		; 1B
	ora ($3F.b,X)		; 01 3F
	eor $3E.b		; 45 3E
	stx $1C7F.w		; 8E 7F 1C
	sbc $3600EE.l,X		; FF EE 00 36
	brk $07.b		; 00 07
	brk $1B.b		; 00 1B
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	cpx #$B5.b		; E0 B5
	inc $B4B4.w,X		; FE B4 B4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	ora ($E1.b,X)		; 01 E1
	ldy $FE.b,X		; B4 FE
	tsb $FE.b		; 04 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	ora $1C.b		; 05 1C
	phd		; 0B
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	cmp $3FBF1F.l,X		; DF 1F BF 3F
	sbc $7EF87F.l,X		; FF 7F F8 7E
	cmp $00.b,S		; C3 00
	inc $E001.w,X		; FE 01 E0
	ora $8000FF.l,X		; 1F FF 00 80
	lda $3E7F3F.l,X		; BF 3F 7F 3E
	adc $007F00.l,X		; 7F 00 7F 00
	bit $0001.w,X		; 3C 01 00
	ora $000000.l,X		; 1F 00 00 00
	sbc [$FF.b],Y		; F7 FF
	sbc $FFC1FF.l		; EF FF C1 FF
	ror $CC01.w,X		; 7E 01 CC
	bmi  24.b		; 30 18
	cpx #$F0.b		; E0 F0
	brk $80.b		; 00 80
	brk $06.b		; 00 06
	sbc $00FFCF.l,X		; FF CF FF 00
	sbc $308100.l,X		; FF 00 81 30
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1E.b		; 00 1E
	brk $4E.b		; 00 4E
	bit $7C9A.w,X		; 3C 9A 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7C00.w,X		; 3C 00 7C
	brk $8D.b		; 00 8D
	ror $3F46.w,X		; 7E 46 3F
	and ($1F.b,X)		; 21 1F
	clc		; 18
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($1E.b,X)		; 01 1E
	ora ($7E.b,X)		; 01 7E
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $18.b		; 04 18
	clc		; 18
	.db $62, $62, $82		; 62 62 82
	.db $82, $02, $02		; 82 02 02
	ora [$70.b],Y		; 17 70
	and $C05EE0.l		; 2F E0 5E C0
	ldy $7881.w,X		; BC 81 78
	ora $F0.b,S		; 03 F0
	ora [$C0.b]		; 07 C0
	ora $2F7F41.l,X		; 1F 41 7F 2F
	jsr $405F.w		; 20 5F 40
	lda $017F80.l,X		; BF 80 7F 01
	inc $FC02.w,X		; FE 02 FC
	tsb $F8.b		; 04 F8
	clc		; 18
	ldx $36.b,Y		; B6 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	sty $84.b		; 84 84
	clv		; B8
	cmp [$7F.b]		; C7 7F
	sbc $7EFF00.l,X		; FF 00 FF 7E
	ora ($01.b,X)		; 01 01
	brk $0C.b		; 00 0C
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sbc $0EFE01.l,X		; FF 01 FE 0E
	sbc ($F8.b),Y		; F1 F8
	ora [$C3.b]		; 07 C3
	and $03FF3C.l,X		; 3F 3C FF 03
	jsr ($00FC.w,X)		; FC FC 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc ($00.b),Y		; F1 00
	ora [$00.b]		; 07 00
	and $00FF00.l,X		; 3F 00 FF 00
	jsr ($0000.w,X)		; FC 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra -24.b		; 80 E8
	bpl  -4.b		; 10 FC
	bpl  -1.b		; 10 FF
	bpl -65.b		; 10 BF
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	bpl -48.b		; 10 D0
	bpl -46.b		; 10 D2
	ora ($51.b)		; 12 51
	ora ($00.b),Y		; 11 00
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
	ora $03.b,S		; 03 03
	ora $0F1807.l		; 0F 07 18 0F
	bmi  62.b		; 30 3E
	rts		; 60

	and $7A81.w,X		; 3D 81 7A
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $0F.b		; 04 0F
	php		; 08
	ora $001F10.l,X		; 1F 10 1F 00
	ror $FD00.w,X		; 7E 00 FD
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	bvc -72.b		; 50 B8
	bpl  -4.b		; 10 FC
	bpl  -2.b		; 10 FE
	bpl 127.b		; 10 7F
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bvc -64.b		; 50 C0
	bpl -40.b		; 10 D8
	clc		; 18
	pei ($14.b)		; D4 14
.INDEX 16
	rep #$12		; C2 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	clc		; 18
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $14.b		; 00 14
	ora $2B1F2D.l		; 0F 2D 1F 2B
	trb $3857.w		; 1C 57 38
	ldx $1471.w		; AE 71 14
	xba		; EB
	and $DB.b		; 25 DB
	plp		; 28
	inc $0F.b,X		; F6 0F
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E9.b		; 00 E9
	ora ($D8.b,X)		; 01 D8
	brk $F3.b		; 00 F3
	cop $9E.b		; 02 9E
	sbc ($BF.b,X)		; E1 BF
	rti		; 40

	sta $F84F60.l,X		; 9F 60 4F F8
	sta [$94.b]		; 87 94
	adc ($1A.b,S),Y		; 73 1A
	pei ($1B.b)		; D4 1B
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	sbc ($01.b,X)		; E1 01
	bvc  16.b		; 50 10
	brk $60.b		; 00 60
	jsr $7038.w		; 20 38 70
	trb $06E0.w		; 1C E0 06
	sbc $03.b,S		; E3 03
	cmp ($15.b),Y		; D1 15
	tay		; A8
	bcc  48.b		; 90 30
	cpy #$E0.b		; C0 E0
	cpy #$DE.b		; C0 DE
	rti		; 40

	sbc $BC06.w,Y		; F9 06 BC
	eor $1A.b,S		; 43 1A
	sbc ($0B.b,X)		; E1 0B
	beq 112.b		; F0 70
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $32.b		; 00 32
	cop $49.b		; 02 49
	eor ($A4.b,X)		; 41 A4
	ldy $14.b		; A4 14
	trb $38.b		; 14 38
	ora $6D3F70.l,X		; 1F 70 3F 6D
	and ($DD.b,S),Y		; 33 DD
	adc $AA.b,S		; 63 AA
	eor [$CA.b]		; 47 CA
	ora [$84.b]		; 07 84
	ora $1F0F84.l		; 0F 84 0F 1F
	brk $3F.b		; 00 3F
	brk $33.b		; 00 33
	brk $63.b		; 00 63
	brk $47.b		; 00 47
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra 125.b		; 80 7D
	stz $3CBD.w		; 9C BD 3C
	lda $BD3C.w,X		; BD 3C BD
	bit $3CBD.w,X		; 3C BD 3C
	cmp $823C.w,X		; DD 3C 82
	cop $9C.b		; 02 9C
	trb $3EBC.w		; 1C BC 3E
	trb $1C7E.w		; 1C 7E 1C
	ror $7E1C.w,X		; 7E 1C 7E
	trb $1C7E.w		; 1C 7E 1C
	rol $718A.w,X		; 3E 8A 71
	cmp $38.b		; C5 38
	plx		; FA
	tsb $86.b		; 04 86
	adc $FC03.w,Y		; 79 03 FC
	ora $20E6.w,Y		; 19 E6 20
	cmp $10BE41.l,X		; DF 41 BE 10
	ora [$08.b],Y		; 17 08
	phd		; 0B
	tsb $07.b		; 04 07
	clc		; 18
	ora $0404.w,Y		; 19 04 04
	cop $02.b		; 02 02
	ora $201D.w,X		; 1D 1D 20
	jsr $F8FF.w		; 20 FF F8
	ror $BFFD.w,X		; 7E FD BF
	adc $334E.w,Y		; 79 4E 33
	stz $737E.w		; 9C 7E 73
	php		; 08
	sta $00FF00.l		; 8F 00 FF 00
	beq  -2.b		; F0 FE
	sei		; 78
	sbc $02FF38.l,X		; FF 38 FF 02
	sbc $00FF04.l,X		; FF 04 FF 00
	jsr ($7303.w,X)		; FC 03 73
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	asl $01.b		; 06 01
	phd		; 0B
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	clc		; 18
	bmi  76.b		; 30 4C
	eor ($BE.b,X)		; 41 BE
	ldy $7B.b,X		; B4 7B
	wai		; CB
	adc [$B7.b],Y		; 77 B7
	cmp $005FA9.l		; CF A9 5F 00
	brk $18.b		; 00 18
	brk $4C.b		; 00 4C
	brk $BE.b		; 00 BE
	brk $7B.b		; 00 7B
	brk $77.b		; 00 77
	brk $CF.b		; 00 CF
	brk $5F.b		; 00 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq -12.b		; F0 F4
	inc $3434.w,X		; FE 34 34
	jsr $00C0.w		; 20 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq  52.b		; F0 34
	inc $FE04.w,X		; FE 04 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $0001.w		; 0E 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $BF.b		; 00 BF
	bcc  47.b		; 90 2F
	bcc  63.b		; 90 3F
	cpy #$FF.b		; C0 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $40.b		; 00 40
	bpl -64.b		; 10 C0
	bcc  64.b		; 90 40
	bvc   0.b		; 50 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  12.b		; 10 0C
	tsb $0202.w		; 0C 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	pea $E807.w		; F4 07 E8
	asl $1CD0.w		; 0E D0 1C
	ldy #$38.b		; A0 38
	rti		; 40

	sei		; 78
	bra -15.b		; 80 F1
	ora ($FF.b,X)		; 01 FF
	ora #$F8.b		; 09 F8
	plx		; FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	.db $82, $82, $17		; 82 82 17
	bpl  47.b		; 10 2F
	bcc 127.b		; 90 7F
	bra  95.b		; 80 5F
	brk $38.b		; 00 38
	ora [$02.b]		; 07 02
	asl $F81B.w,X		; 1E 1B F8
	sta $01FD80.l,X		; 9F 80 FD 01
	cmp ($91.b,X)		; C1 91
	ora ($11.b,X)		; 01 11
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	and [$20.b]		; 27 20
	adc $00FE00.l,X		; 7F 00 FE 00
	sbc $010E00.l,X		; FF 00 0E 01
	ora $0F7E03.l,X		; 1F 03 7E 0F
	plx		; FA
	and $F3EE.w,X		; 3D EE F3
	trb $3807.w		; 1C 07 38
	ora $010000.l		; 0F 00 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $3D.b		; 00 3D
	brk $F3.b		; 00 F3
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $4B.b		; 00 4B
	inc $93.b,X		; F6 93
	cpx $EC17.w		; EC 17 EC
	rol $D8.b		; 26 D8
	rol $24D9.w		; 2E D9 24
	cmp ($7D.b,S),Y		; D3 7D
	.db $82, $7F, $80		; 82 7F 80
	sbc ($00.b),Y		; F1 00
	sbc [$04.b]		; E7 04
	sbc $00.b,S		; E3 00
	cmp $01C708.l		; CF 08 C7 01
	dec $8012.w,X		; DE 12 80
	brk $BC.b		; 00 BC
	bit $3683.w,X		; 3C 83 36
	cmp [$6E.b]		; C7 6E
	and $9F6F5F.l		; 2F 5F 6F 9F
	eor $0DC69F.l		; 4F 9F C6 0D
	sbc $0BF503.l		; EF 03 F5 0B
	cpx #$2E.b		; E0 2E
	.db $82, $1E, $87		; 82 1E 87
	ora $029F87.l,X		; 1F 87 9F 02
	and $033F00.l,X		; 3F 00 3F 03
	ora $0F0F01.l,X		; 1F 01 0F 0F
	beq  10.b		; F0 0A
	sbc $99.b,X		; F5 99
	ror $B1.b		; 66 B1
	lsr $0EF1.w		; 4E F1 0E
	cmp $EFE6.w,Y		; D9 E6 EF
	beq  -1.b		; F0 FF
	beq   0.b		; F0 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	dey		; 88
	tsb $F4.b		; 04 F4
	cpy #$F8.b		; C0 F8
	sbc ($FF.b,X)		; E1 FF
	sty $0F.b		; 84 0F
	ora $190E.w		; 0D 0E 19
	asl $0E19.w		; 0E 19 0E
	tas		; 1B
	tsb $1C1B.w		; 0C 1B 1C
	ora ($1C.b),Y		; 11 1C
	bpl  28.b		; 10 1C
	ora $000E00.l		; 0F 00 0E 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $DD.b		; 00 DD
	bit $1CFD.w,X		; 3C FD 1C
	eor $7D9C.w		; 4D 9C 7D
	sty $8CFF.w		; 8C FF 8C
	ldx $CE.b		; A6 CE
	lda $67D3C6.l,X		; BF C6 D3 67
	tsb $0C3E.w		; 0C 3E 0C
	rol $3E8C.w,X		; 3E 8C 3E
	sty $841E.w		; 8C 1E 84
	asl $1FC4.w,X		; 1E C4 1F
	cpy #$0F.b		; C0 0F
	rts		; 60

	ora $077C83.l		; 0F 83 7C 07
	sed		; F8
	ora $E01FF0.l		; 0F F0 1F E0
	sta $00FF60.l,X		; 9F 60 FF 00
	sbc $003D00.l,X		; FF 00 3D 00
	rti		; 40

	rti		; 40

	sta ($81.b,X)		; 81 81
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora #$09.b		; 09 09
	ora #$09.b		; 09 09
	tsb $04.b		; 04 04
	brk $C0.b		; 00 C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	bit $24.b		; 24 24
	jsl $212122.l		; 22 22 21 21
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	sty $84.b		; 84 84
	eor $43.b,S		; 43 43
	asl $1C05.w,X		; 1E 05 1C
	ora $15.b,S		; 03 15
	asl A		; 0A
	and [$08.b],Y		; 37 08
	and [$18.b],Y		; 37 18
	eor ($3C.b,S),Y		; 53 3C
	eor $3E.b,X		; 55 3E
	ldx $7F.b,Y		; B6 7F
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	asl A		; 0A
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	brk $11.b		; 00 11
	inc $F807.w,X		; FE 07 F8
	asl $E9.b,X		; 16 E9
	and ($FE.b,X)		; 21 FE
	adc $B057B0.l		; 6F B0 57 B0
	dec $31.b,X		; D6 31
	nop		; EA
	clc		; 18
	inc $F800.w,X		; FE 00 F8
	brk $E9.b		; 00 E9
	ora #$EE.b		; 09 EE
	asl $10BF.w		; 0E BF 10
	sta $000E00.l		; 8F 00 0E 00
	ora [$11.b],Y		; 17 11
	ora $03.b,S		; 03 03
	trb $001C.w		; 1C 1C 00
	brk $18.b		; 00 18
	clc		; 18
	tsb $1C.b		; 04 1C
	ora [$0F.b],Y		; 17 0F
	brk $0F.b		; 00 0F
	ora [$00.b]		; 07 00
	cop $03.b		; 02 03
	trb $0E1F.w		; 1C 1F 0E
	asl $1C1C.w		; 0E 1C 1C
	tsb $1C.b		; 04 1C
	ora [$1F.b]		; 07 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	beq -16.b		; F0 F0
	adc ($72.b)		; 72 72
	ora ($03.b,X)		; 01 03
	ora ($13.b),Y		; 11 13
	xce		; FB
	sbc $F0E0.w,X		; FD E0 F0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpx #$F0.b		; E0 F0
	bit $1CFE.w		; 2C FE 1C
	adc $391F1D.l,X		; 7F 1D 1F 39
	sbc $00FFC0.l,X		; FF C0 FF 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -1.b		; F0 FF
	sbc $003F3F.l,X		; FF 3F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq  63.b		; F0 3F
	sbc $00FF00.l,X		; FF 00 FF 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	eor $007FC0.l		; 4F C0 7F 00
	sbc $01F900.l,X		; FF 00 F9 01
	asl $07.b		; 06 07
	bmi  63.b		; 30 3F
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	lda $00FF80.l,X		; BF 80 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $CC01.w,Y		; F9 01 CC
	tsb $E0E0.w		; 0C E0 E0
	brk $00.b		; 00 00
	sed		; F8
	ora $D8.b,S		; 03 D8
	ora $807F60.l,X		; 1F 60 7F 80
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $E4.b,S		; 03 E4
	tsb $90.b		; 04 90
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -16.b		; 70 F0
	eor $1F1F7F.l,X		; 5F 7F 1F 1F
	brk $01.b		; 00 01
	ora ($1F.b,S),Y		; 13 1F
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	beq  95.b		; F0 5F
	sbc $00FF00.l,X		; FF 00 FF 00
	and $181F00.l,X		; 3F 00 1F 18
	clc		; 18
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
	rti		; 40

	bra  64.b		; 80 40
	sta ($40.b,X)		; 81 40
	stx $03.b		; 86 03
	sty $009F.w		; 8C 9F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $8000.w,X		; FE 00 80
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $07.b		; 04 07
	brk $67.b		; 00 67
	rts		; 60

	phb		; 8B
	dey		; 88
	ora ($10.b,S),Y		; 13 10
	sbc $7E01.w,X		; FD 01 7E
	ora $3C.b,S		; 03 3C
	sta $7D.b,S		; 83 7D
	ora $FC.b,S		; 03 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	ora ($62.b,X)		; 01 62
	rts		; 60

	ora ($81.b,X)		; 01 81
	brk $C0.b		; 00 C0
	cop $82.b		; 02 82
	adc $60.b,S		; 63 60
	ora $8518.w,Y		; 19 18 85
	sty $60.b		; 84 60
	rts		; 60

	inc $FE01.w,X		; FE 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $19.b		; 00 19
	ora $0404.w,Y		; 19 04 04
	brk $00.b		; 00 00
	sty $84.b		; 84 84
	pha		; 48
	pha		; 48
	bpl  16.b		; 10 10
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	bpl  24.b		; 10 18
	tda		; 7B
	cmp [$3B.b],Y		; D7 3B
	cmp $40003C.l		; CF 3C 00 40
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $53.b		; 00 53
	cmp [$08.b]		; C7 08
	cmp $00DF00.l		; CF 00 DF 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D7.b		; 00 D7
	adc $E6.b,S		; 63 E6
	lda ($F8.b)		; B2 F8
	cld		; D8
	rtl		; 6B

	adc $038710.l,X		; 7F 10 87 03
	ora [$0E.b]		; 07 0E
	ora $620000.l		; 0F 00 00 62
	ora $588FB2.l		; 0F B2 8F 58
	cmp $00EF18.l		; CF 18 EF 00
	sbc $0E0700.l		; EF 00 07 0E
	ora $860000.l		; 0F 00 00 86
	brk $E1.b		; 00 E1
	bra  80.b		; 80 50
	bvc -126.b		; 50 82
	sta [$3A.b]		; 87 3A
	plx		; FA
	cpy #$F8.b		; C0 F8
	sec		; 38
	inc $7C6C.w,X		; FE 6C 7C
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	cop $FF.b		; 02 FF
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	jmp ($FE7C.w)		; 6C 7C FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -1.b		; F0 FF
	sbc $383F3F.l,X		; FF 3F 3F 38
	cpy #$00.b		; C0 00
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq  63.b		; F0 3F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq -11.b		; F0 F5
	sbc $203535.l,X		; FF 35 35 20
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq  53.b		; F0 35
	sbc $00FF04.l,X		; FF 04 FF 00
	sbc $3E007C.l,X		; FF 7C 00 3E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $17.b		; 00 17
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $000F00.l,X		; 7F 00 0F 00
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	trb $031C.w		; 1C 1C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	xce		; FB
	sbc $81FB3B.l,X		; FF 3B FB 81
	beq -80.b		; F0 B0
	jsr ($D8D8.w,X)		; FC D8 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F0.b		; C0 F0
	tsa		; 3B
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $D8FC00.l,X		; FF 00 FC D8
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	tsb $E4F0.w		; 0C F0 E4
	sed		; F8
	tsx		; BA
	jmp $000000.l		; 5C 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $5C.b		; 00 5C
	brk $76.b		; 00 76
	ldy $7CE6.w,X		; BC E6 7C
	cld		; D8
	bit $34.b		; 24 34
	iny		; C8
	iny		; C8
	bmi -104.b		; 30 98
	rts		; 60

	bpl -32.b		; 10 E0
	jsr $BC40.w		; 20 40 BC
	brk $7C.b		; 00 7C
	brk $04.b		; 00 04
	brk $88.b		; 00 88
	bra -112.b		; 80 90
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpx #$80.b		; E0 80
	plp		; 28
	cpx #$2E.b		; E0 2E
	sec		; 38
	and [$2E.b]		; 27 2E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	jsr $28E8.w		; 20 E8 28
	inc $7F26.w,X		; FE 26 7F
	ora ($1F.b,X)		; 01 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	.db $82, $01, $E5		; 82 01 E5
	.db $82, $7A, $E4		; 82 7A E4
	asl $0FF8.w,X		; 1E F8 0F
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	adc ($F9.b,X)		; 61 F9
	ora $0EFF.w,Y		; 19 FF 0E
	sbc $CBE25D.l,X		; FF 5D E2 CB
	adc $85.b,X		; 75 85
	plx		; FA
	sbc $3C.b,S		; E3 3C
	sed		; F8
	ora $3F3F4C.l,X		; 1F 4C 3F 3F
	ora [$3D.b]		; 07 3D
	ora $E1.b,S		; 03 E1
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $CF.b		; 00 CF
	bpl  79.b		; 10 4F
	bvs  24.b		; 70 18
	sbc [$B0.b]		; E7 B0
	eor $4F8F16.l		; 4F 16 8F 4F
	lda $ECFF01.l,X		; BF 01 FF EC
	sbc ($E3.b,S),Y		; F3 E3
	ora $A0.b,S		; 03 A0
	jsr $C0C7.w		; 20 C7 C0
	and $00EF00.l		; 2F 00 EF 00
	lda $00FF00.l,X		; BF 00 FF 00
	sbc ($00.b,S),Y		; F3 00
	clc		; 18
	bmi  80.b		; 30 50
	rts		; 60

	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	stx $80.b		; 86 80
	ora $001F00.l		; 0F 00 1F 00
	and $780000.l,X		; 3F 00 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	asl $C6.b		; 06 C6
	ora #$89.b		; 09 89
	ora ($93.b,S),Y		; 13 93
	bit $002C.w		; 2C 2C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	bit $F017.w,X		; 3C 17 F0
	lda $60BF60.l		; AF 60 BF 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	phd		; 0B
	php		; 08
	and $809F20.l		; 2F 20 9F 80
	sta $000080.l,X		; 9F 80 00 00
	brk $1C.b		; 00 1C
	bpl -14.b		; 10 F2
	ldy $FE81.w,X		; BC 81 FE
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	tsb $E9.b		; 04 E9
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	bit $7E20.w		; 2C 20 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	rti		; 40

	cpx #$30.b		; E0 30
	sed		; F8
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  48.b		; 80 30
	ldy #$20.b		; A0 20
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	rts		; 60

	rts		; 60

	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	mvp $22,$44		; 44 44 22
	jsl $091313.l		; 22 13 13 09
	bit #$DC.b		; 89 DC
	and $DF61A1.l,X		; 3F A1 61 DF
	rti		; 40

	cmp $C05F40.l,X		; DF 40 5F C0
	eor $F81BC0.l,X		; 5F C0 1B F8
	cmp $3F.b,S		; C3 3F
	.db $42, $42		; 42 42
	asl $BF00.w,X		; 1E 00 BF
	bra -65.b		; 80 BF
	bra  63.b		; 80 3F
	brk $3F.b		; 00 3F
	brk $67.b		; 00 67
	rts		; 60

	tsb $C40C.w		; 0C 0C C4
	sec		; 38
	and ($CC.b,S),Y		; 33 CC
	pha		; 48
	bvs -48.b		; 70 D0
	trb $07F4.w		; 1C F4 07
	plx		; FA
	ora $FE.b,S		; 03 FE
	brk $7F.b		; 00 7F
	brk $38.b		; 00 38
	brk $8C.b		; 00 8C
	bra -96.b		; 80 A0
	jsr $08E8.w		; 20 E8 08
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$2C.b		; E0 2C
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $40.b		; 00 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	sec		; 38
	sec		; 38
	tsb $020C.w		; 0C 0C 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	ora ($0B.b,S),Y		; 13 0B
	stz $28.b,X		; 74 28
	stz $64.b		; 64 64
	bcs 112.b		; B0 70
	bra  96.b		; 80 60
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora ($5F.b,X)		; 01 5F
	brk $FF.b		; 00 FF
	brk $E4.b		; 00 E4
	bit $1CFC.w,X		; 3C FC 1C
	jmp.w [$00FF]		; DC FF 00
	sbc $000F00.l,X		; FF 00 0F 00
	lda $A0.b,S		; A3 A0
	adc ($70.b),Y		; 71 70
	ora $2018.w,Y		; 19 18 20
	clc		; 18
	clc		; 18
	clc		; 18
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $10A0.w		; 20 A0 10
	beq   8.b		; F0 08
	sed		; F8
	brk $38.b		; 00 38
	php		; 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	and ($C4.b),Y		; 31 C4
	tda		; 7B
	lda $FA.b,X		; B5 FA
	iny		; C8
	sbc [$6D.b],Y		; F7 6D
	sbc ($00.b)		; F2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $F9.b		; 00 F9
	brk $F1.b		; 00 F1
	ora ($F3.b,X)		; 01 F3
	cop $01.b		; 02 01
	ora $300310.l		; 0F 10 03 30
	tsb $FC03.w		; 0C 03 FC
	sbc ($1C.b,S),Y		; F3 1C
	and [$C8.b]		; 27 C8
	sbc [$08.b]		; E7 08
	sbc [$08.b]		; E7 08
	ora ($3F.b,X)		; 01 3F
	brk $0F.b		; 00 0F
	tsb $07.b		; 04 07
	stz $64.b		; 64 64
	cpx $04.b		; E4 04
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	pea $1804.w		; F4 04 18
	ora $0F061D.l		; 0F 1D 06 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	ora $1F03FD.l		; 0F FD 03 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $70.b		; 00 70
	bvs -61.b		; 70 C3
	cmp $9C.b,S		; C3 9C
	stz $6060.w		; 9C 60 60
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	ora [$07.b]		; 07 07
	bra -128.b		; 80 80
	cmp $30DE20.l,X		; DF 20 DE 30
	dec $E83F.w		; CE 3F E8
	ora $EF1CE0.l,X		; 1F E0 1C EF
	bpl  -4.b		; 10 FC
	ora $C7.b,S		; 03 C7
	sec		; 38
	adc $C0CF60.l,X		; 7F 60 CF C0
	eor ($51.b),Y		; 51 51
	bit $24.b		; 24 24
	jsr $2020.w		; 20 20 20
	jsr $2023.w		; 20 23 20
	cpy #$C0.b		; C0 C0
	ldy #$3E.b		; A0 3E
	sta ($F7.b,X)		; 81 F7
	brk $C3.b		; 00 C3
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -112.b		; 80 90
	rts		; 60

	cmp ($12.b,S),Y		; D3 12
	rti		; 40

	rti		; 40

	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $FC.b		; 00 FC
	jsr $207C.w		; 20 7C 20
	inc $7FA0.w,X		; FE A0 7F
	ldy #$5F.b		; A0 5F
	ldy #$7F.b		; A0 7F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $A8.b		; 00 A8
	plp		; 28
	tay		; A8
	plp		; 28
	bit $24.b		; 24 24
	.db $82, $A2, $02		; 82 A2 02
	jsl $002101.l		; 22 01 21 00
	jsr $0000.w		; 20 00 00
	lda $80BC00.l,X		; BF 00 BC 80
	bit $0F70.w,X		; 3C 70 0F
	bit $4F83.w,X		; 3C 83 4F
	bvs   3.b		; 70 03
	cmp $FCF1.w		; CD F1 FC
	sbc $84A202.l,X		; FF 02 A2 84
	jsr ($FC30.w,X)		; FC 30 FC
	tsb $437F.w		; 0C 7F 43
	and $008F00.l,X		; 3F 00 8F 00
	sbc $FCFFF8.l,X		; FF F8 FF FC
	ora $FF.b,S		; 03 FF
	brk $86.b		; 00 86
	clc		; 18
	brk $7F.b		; 00 7F
	sty $0F.b		; 84 0F
	adc [$70.b],Y		; 77 70
	plx		; FA
	sed		; F8
	sbc $00F8.w,Y		; F9 F8 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	pea $F810.w		; F4 10 F8
	sec		; 38
	jsr ($FD78.w,X)		; FC 78 FD
	adc $3CC5E0.l		; 6F E0 C5 3C
	brk $0F.b		; 00 0F
	cpy #$01.b		; C0 01
	sec		; 38
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	bra  11.b		; 80 0B
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF07.w		; EE 07 FF
	tsb $BF.b		; 04 BF
	sty $2F.b		; 84 2F
	cpx $0F.b		; E4 0F
	stz $0B.b,X		; 74 0B
	trb $0D.b		; 14 0D
	cop $03.b		; 02 03
	brk $F4.b		; 00 F4
	ora [$F4.b]		; 07 F4
	tsb $75.b		; 04 75
	ora $54.b		; 05 54
	mvp $14,$10		; 44 10 14
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora $00CF00.l,X		; 1F 00 CF 00
	sbc $00F700.l		; EF 00 F7 00
	xce		; FB
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $BF.b		; 00 BF
	brk $9F.b		; 00 9F
	brk $0F.b		; 00 0F
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	cpy $26.b		; C4 26
	bpl 118.b		; 10 76
	brk $01.b		; 00 01
	and ($40.b,X)		; 21 40
	bmi  16.b		; 30 10
	bpl   1.b		; 10 01
	ora $0201.w		; 0D 01 02
	brk $1D.b		; 00 1D
	cmp $00F301.l,X		; DF 01 F3 00
	sbc [$00.b],Y		; F7 00
	sbc ($00.b,X)		; E1 00
	beq   0.b		; F0 00
	and ($01.b),Y		; 31 01
	ora $0E00.w,X		; 1D 00 0E
	bcc -48.b		; 90 D0
	rts		; 60

	brk $B8.b		; 00 B8
	bcs  80.b		; B0 50
	bmi -112.b		; 30 90
	cpx #$00.b		; E0 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $90.b		; 00 90
	bne -128.b		; D0 80
	cpx #$30.b		; E0 30
	clv		; B8
	bpl -16.b		; 10 F0
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sbc ($00.b,X)		; E1 00
	eor $0EF1B0.l		; 4F B0 F1 0E
	sec		; 38
	ora [$47.b]		; 07 47
	sec		; 38
	sta $7B.b		; 85 7B
	phb		; 8B
	adc [$D7.b],Y		; 77 D7
	lda $000000.l		; AF 00 00 00
	brk $08.b		; 00 08
	php		; 08
	dec $C6.b		; C6 C6
	bra -128.b		; 80 80
	ora ($03.b,X)		; 01 03
	ora ($97.b,S),Y		; 13 97
	ldy #$EF.b		; A0 EF
	jsr ($9700.w,X)		; FC 00 97
	bpl 107.b		; 10 6B
	pla		; 68
	sbc $74.b,X		; F5 74
	xba		; EB
	sbc ($D7.b)		; F2 D7
	cpx $AB.b		; E4 AB
	iny		; C8
	cmp [$D0.b],Y		; D7 D0
	bcc -110.b		; 90 92
	ora [$7F.b]		; 07 7F
	.db $62, $FE, $65		; 62 FE 65
	adc $86FFC3.l,X		; 7F C3 FF 86
	inc $FF0B.w,X		; FE 0B FF
	pei ($FC.b)		; D4 FC
	ldy $D663.w		; AC 63 D6
	and ($6B.b),Y		; 31 6B
	tya		; 98
	and $CC.b,X		; 35 CC
	pld		; 2B
	inc $95.b,X		; F6 95
	plx		; FA
	phk		; 4B
	jsr ($3FE4.w,X)		; FC E4 3F
	sta $0E80.w,X		; 9D 80 0E
	brk $87.b		; 00 87
	brk $C3.b		; 00 C3
	ora ($F1.b,X)		; 01 F1
	ora ($F8.b,X)		; 01 F8
	brk $FC.b		; 00 FC
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	sbc ($78.b,S),Y		; F3 78
	sty $FC.b		; 84 FC
	ora $F9.b,S		; 03 F9
	brk $ED.b		; 00 ED
	asl $1FFF.w		; 0E FF 1F
	sbc $0FF71F.l		; EF 1F F7 0F
	beq  11.b		; F0 0B
	cpx $63.b		; E4 63
	txy		; 9B
	tya		; 98
	jsr $4026.w		; 20 26 40
	eor $475F47.l,X		; 5F 47 5F 47
	eor $001F01.l,X		; 5F 01 1F 00
	brk $60.b		; 00 60
	rts		; 60

	bvc  48.b		; 50 30
	asl $16.b,X		; 16 16
	tsb $04.b		; 04 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $10F8.w		; 20 F8 10
	ror $7E02.w,X		; 7E 02 7E
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	inc $C0FF.w,X		; FE FF C0
	sed		; F8
	brk $0F.b		; 00 0F
	beq  15.b		; F0 0F
	ora ($FE.b,X)		; 01 FE
	asl $02E0.w,X		; 1E E0 02
	sbc $FCF8FF.l,X		; FF FF F8 FC
	sbc $0FFF00.l,X		; FF 00 FF 0F
	beq  15.b		; F0 0F
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $7D.b		; 00 7D
	sbc $1D1C.w,X		; FD 1C 1D
	cop $E0.b		; 02 E0
	pla		; 68
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $3D.b		; 00 3D
	sbc $E0FF00.l,X		; FF 00 FF E0
	ora $0180.w,X		; 1D 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$80.b		; A0 80
	brk $50.b		; 00 50
	ora $0F4F.w,X		; 1D 4F 0F
	ora $07.b,S		; 03 07
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$00.b		; E0 00
	pea $7F00.w		; F4 00 7F
	ora $0F.b,S		; 03 0F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1820.w		; 20 20 18
	clc		; 18
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $6C0F.w		; 0E 0F 6C
	asl $0CF0.w,X		; 1E F0 0C
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	tsb $081F.w		; 0C 1F 08
	ora $002E20.l,X		; 1F 20 2E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bvs 112.b		; 70 70
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bvs 112.b		; 70 70
	brk $C0.b		; 00 C0
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	asl $3C1E.w,X		; 1E 1E 3C
	bit $0702.w,X		; 3C 02 07
	brk $0F.b		; 00 0F
	php		; 08
	asl $1C08.w,X		; 1E 08 1C
	brk $3C.b		; 00 3C
	bpl  62.b		; 10 3E
	trb $103F.w		; 1C 3F 10
	adc $F730B0.l,X		; 7F B0 30 F7
	sta [$7C.b],Y		; 97 7C
	inc $5E.b		; E6 5E
	sec		; 38
	ora [$1E.b]		; 07 1E
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bmi -80.b		; 30 B0
	sta [$F7.b],Y		; 97 F7
	bit $FE.b		; 24 FE
	clc		; 18
	inc $FF06.w,X		; FE 06 FF
	ora ($3F.b,X)		; 01 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	sta $3787.w,Y		; 99 87 37
	clv		; B8
	lda [$3E.b],Y		; B7 3E
	cmp $0F.b,S		; C3 0F
	beq   3.b		; F0 03
	jsr ($F700.w,X)		; FC 00 F7
	php		; 08
	phx		; DA
	eor $80.b		; 45 80
	sbc $06FF30.l,X		; FF 30 FF 06
	and $002F03.l,X		; 3F 03 2F 00
	ora $300300.l		; 0F 00 03 30
	brk $39.b		; 00 39
	brk $BF.b		; 00 BF
	clv		; B8
	and $13FFB3.l,X		; 3F B3 FF 13
	sbc [$9F.b]		; E7 9F
	sbc $3FE2.w,X		; FD E2 3F
	beq  13.b		; F0 0D
	bit $CD01.w,X		; 3C 01 CD
	rol $13FE.w,X		; 3E FE 13
	sbc ($03.b,S),Y		; F3 03
	sbc ($81.b,S),Y		; F3 81
	sbc $30FEE0.l,X		; FF E0 FE 30
	inc $FD0C.w,X		; FE 0C FD
	cmp ($3F.b,X)		; C1 3F
	sbc ($DF.b)		; F2 DF
	sbc ($6F.b),Y		; F1 6F
	sbc ($1E.b),Y		; F1 1E
	sei		; 78
	ora $0A0F14.l		; 0F 14 0F 0A
	ora [$05.b]		; 07 05
	ora $03.b,S		; 03 03
	ora ($DF.b,X)		; 01 DF
	brk $6F.b		; 00 6F
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $39.b		; 00 39
	cmp [$0C.b]		; C7 0C
	beq -125.b		; F0 83
	jsr ($7FE0.w,X)		; FC E0 7F
	sei		; 78
	lda $4FCF3E.l,X		; BF 3E CF 4F
	lda ($23.b),Y		; B1 23
	jmp.w [$0FC0]		; DC C0 0F
	beq   3.b		; F0 03
	jsr ($7F00.w,X)		; FC 00 7F
	brk $BF.b		; 00 BF
	brk $CF.b		; 00 CF
	brk $B1.b		; 00 B1
	brk $DC.b		; 00 DC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$18.b		; E0 18
	clc		; 18
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C03000.l,X		; FF 00 30 C0
	cpy #$3F.b		; C0 3F
	and $F0C8C0.l,X		; 3F C0 C8 F0
	sbc $3F3E.w,Y		; F9 3E 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $3F.b		; 00 3F
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $C0.b		; 00 C0
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
	brk $ED.b		; 00 ED
	rol $6E.b,X		; 36 6E
	and ($7F.b,S),Y		; 33 7F
	ora ($39.b),Y		; 11 39
	bpl  48.b		; 10 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $36.b		; 00 36
	brk $33.b		; 00 33
	brk $11.b		; 00 11
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	brk $93.b		; 00 93
	adc ($63.b,X)		; 61 63
	cmp ($FE.b,X)		; C1 FE
	.db $82, $03, $00		; 82 03 00
	sbc [$20.b]		; E7 20
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	brk $F3.b		; 00 F3
	brk $E3.b		; 00 E3
	ora ($FF.b,X)		; 01 FF
	jsr ($18FC.w,X)		; FC FC 18
	sed		; F8
	cpx #$00.b		; E0 00
	ldy $8620.w,X		; BC 20 86
	mvp $02,$1B		; 44 1B 02
	and $EC00.w,X		; 3D 00 EC
	brk $EC.b		; 00 EC
	brk $FD.b		; 00 FD
	ora ($00.b,X)		; 01 00
	cpx #$40.b		; E0 40
	jsr ($FE38.w,X)		; FC 38 FE
	cpx $E7.b		; E4 E7
	rep #$C3		; C2 C3
	ora ($13.b,S),Y		; 13 13
	ora ($13.b,S),Y		; 13 13
	cop $03.b		; 02 03
	bit $4800.w,X		; 3C 00 48
	bmi 112.b		; 30 70
	jsr $00A0.w		; 20 A0 00
	rts		; 60

	rti		; 40

	rti		; 40

	brk $C0.b		; 00 C0
	bra -111.b		; 80 91
	brk $00.b		; 00 00
	bit $7800.w,X		; 3C 00 78
	brk $70.b		; 00 70
	rti		; 40

	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	sta ($77.b),Y		; 91 77
	and ($3C.b,X)		; 21 3C
	trb $2B.b		; 14 2B
	inc A		; 1A
	ora [$08.b],Y		; 17 08
	asl A		; 0A
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	cop $00.b		; 02 00
	adc [$03.b],Y		; 77 03
	and $003F04.l,X		; 3F 04 3F 00
	ora $010B01.l,X		; 1F 01 0B 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$1F.b]		; 07 1F
	asl $1F.b		; 06 1F
	brk $BF.b		; 00 BF
	bra -75.b		; 80 B5
	stx $0E7D.w		; 8E 7D 0E
	ror $FA0C.w,X		; 7E 0C FA
	tsb $18EE.w		; 0C EE 18
	inc $E6.b		; E6 E6
	cpx #$E0.b		; E0 E0
	rti		; 40

	cpy #$4E.b		; C0 4E
	dec $8E8E.w		; CE 8E 8E
	sta $1D8D.w		; 8D 8D 1D
	ora $1D1D.w,X		; 1D 1D 1D
	tsx		; BA
	rti		; 40

	ply		; 7A
	cpx #$F9.b		; E0 F9
	rts		; 60

	sbc $AC01.w,X		; FD 01 AC
	bvs -66.b		; 70 BE
	bvs 126.b		; 70 7E
	bmi  95.b		; 30 5F
	bmi -60.b		; 30 C4
	dec $E4.b		; C6 E4
	inc $66.b		; E6 66
	adc [$02.b]		; 67 02
	ora $73.b,S		; 03 73
	adc ($71.b,S),Y		; 73 71
	adc ($B1.b),Y		; 71 B1
	lda ($B8.b),Y		; B1 B8
	clv		; B8
	inc A		; 1A
	php		; 08
	asl $0604.w		; 0E 04 06
	brk $82.b		; 00 82
	brk $80.b		; 00 80
	brk $C8.b		; 00 C8
	bra  88.b		; 80 58
	brk $78.b		; 00 78
	bpl   4.b		; 10 04
	asl $0E00.w,X		; 1E 00 0E
	brk $06.b		; 00 06
	brk $82.b		; 00 82
	brk $80.b		; 00 80
	brk $C8.b		; 00 C8
	bra -40.b		; 80 D8
	bra  -8.b		; 80 F8
	sta $9A0B.w		; 8D 0B 9A
	ora ($B1.b),Y		; 11 B1
	jsr $0090.w		; 20 90 00
	stz $4A10.w		; 9C 10 4A
	sty $82C1.w		; 8C C1 82
	sbc $02.b,S		; E3 02
	bvs 127.b		; 70 7F
	rts		; 60

	tda		; 7B
	rti		; 40

	adc ($60.b),Y		; 71 60
	bvs  96.b		; 70 60
	jmp ($BEB0.w,X)		; 7C B0 BE
	ldy $1CBF.w,X		; BC BF 1C
	ora $C00080.l,X		; 1F 80 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	and $3510.w,X		; 3D 10 35
	bpl  37.b		; 10 25
	bpl  21.b		; 10 15
	tsb $12.b		; 04 12
	ora ($93.b,X)		; 01 93
	ora ($F7.b,X)		; 01 F7
	bcc 100.b		; 90 64
	eor $02.b,S		; 43 02
	rol $3E0A.w,X		; 3E 0A 3E
	asl A		; 0A
	rol $1E0A.w,X		; 3E 0A 1E
	ora $0D1D.w		; 0D 1D 0D
	sta $F808.w,X		; 9D 08 F8
	txy		; 9B
	xce		; FB
	cmp ($61.b),Y		; D1 61
	adc [$C4.b]		; 67 C4
	cpx $C0.b		; E4 C0
	ldy $C0.b		; A4 C0
	cpy $80.b		; C4 80
	mvp $D6,$80		; 44 80 D6
	bpl -110.b		; 10 92
	tsb $EE.b		; 04 EE
	sbc $D8DFD8.l		; EF D8 DF D8
	jmp.w [$DCD8]		; DC D8 DC
	clv		; B8
	ldy $BCB8.w,X		; BC B8 BC
	plp		; 28
	rol $7E68.w,X		; 3E 68 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3800.w		; 20 00 38
	brk $3C.b		; 00 3C
	bpl  52.b		; 10 34
	clc		; 18
	ora [$04.b],Y		; 17 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	php		; 08
	ora $0C0008.l,X		; 1F 08 00 0C
	brk $0E.b		; 00 0E
	tsb $0B.b		; 04 0B
	asl $04.b		; 06 04
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	cop $8D.b		; 02 8D
	tsb $00.b		; 04 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	cop $8E.b		; 02 8E
	lsr $6F00.w		; 4E 00 6F
	jsr $0027.w		; 20 27 00
	sta [$00.b],Y		; 97 00
	sbc [$90.b],Y		; F7 90
	eor $000F40.l		; 4F 40 0F 00
	cmp $713100.l,X		; DF 00 31 71
	bpl 112.b		; 10 70
	clc		; 18
	sec		; 38
	php		; 08
	tya		; 98
	php		; 08
	sed		; F8
	bcs -16.b		; B0 F0
	beq -16.b		; F0 F0
	jsr $FF20.w		; 20 20 FF
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	rol $7FBE.w,X		; 3E BE 7F
	adc $88FFFF.l,X		; 7F FF FF 88
	sbc $88FFAA.l,X		; FF AA FF 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $8888FF.l,X		; FF FF 88 88
	tax		; AA
	tax		; AA
	stz $3D9C.w		; 9C 9C 3D
	rti		; 40

	ora [$45.b]		; 07 45
	and #$19.b		; 29 19
	ora $2004.w,X		; 1D 04 20
	bpl -16.b		; 10 F0
	bpl  15.b		; 10 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	adc $7F38.w,X		; 7D 38 7F
	asl $3F.b		; 06 3F
	cop $1F.b		; 02 1F
	ora $FF0F3F.l		; 0F 3F 0F FF
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	sta [$80.b]		; 87 80
	ror $00.b		; 66 00
	sbc [$00.b]		; E7 00
	sbc $00.b,S		; E3 00
	sbc ($20.b,X)		; E1 20
	ora ($00.b,X)		; 01 00
	ora $9908.w,Y		; 19 08 99
	brk $78.b		; 00 78
	sed		; F8
	sta $18F9.w,Y		; 99 F9 18
	sed		; F8
	trb $1EFC.w		; 1C FC 1E
	inc $FEFE.w,X		; FE FE FE
	inc $FE.b		; E6 FE
	ror $7E.b		; 66 7E
	trb $2E00.w		; 1C 00 2E
	rts		; 60

	asl $60.b		; 06 60
	stx $FE00.w		; 8E 00 FE
	brk $FC.b		; 00 FC
	brk $C0.b		; 00 C0
	brk $9D.b		; 00 9D
	ora ($E3.b,X)		; 01 E3
	sbc $91.b,S		; E3 91
	sbc ($99.b),Y		; F1 99
	sbc $7171.w,Y		; F9 71 71
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	and $7F623F.l,X		; 3F 3F 62 7F
	xba		; EB
	brk $75.b		; 00 75
	adc ($B7.b)		; 72 B7
.INDEX 16
	rep #$56		; C2 56
	sty $9C.b		; 84 9C
	php		; 08
	tya		; 98
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	xce		; FB
	dey		; 88
	sbc $08FF08.l,X		; FF 08 FF 08
	dec $9C00.w,X		; DE 00 9C
	brk $98.b		; 00 98
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	tsb $0804.w		; 0C 04 08
	brk $35.b		; 00 35
	tsb $DD.b		; 04 DD
	sec		; 38
	and $0500.w,X		; 3D 00 05
	brk $35.b		; 00 35
	brk $2D.b		; 00 2D
	bpl   3.b		; 10 03
	ora $0A0F07.l		; 0F 07 0F 0A
	rol $FE02.w,X		; 3E 02 FE
	cop $3E.b		; 02 3E
	cop $06.b		; 02 06
	cop $36.b		; 02 36
	cop $3E.b		; 02 3E
	jsr ($F418.w,X)		; FC 18 F4
	clc		; 18
	jmp.w [$F930]		; DC 30 F9
	and ($EB.b),Y		; 31 EB
	and ($B9.b)		; 32 B9
	.db $62, $F3, $60		; 62 F3 60
	beq  96.b		; F0 60
	tas		; 1B
	tas		; 1B
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	rol $37.b,X		; 36 37
	stz $77.b,X		; 74 77
	stz $77.b,X		; 74 77
	jmp ($6F6F.w)		; 6C 6F 6F
	adc $3F1877.l		; 6F 77 18 3F
	clc		; 18
	and $8CBB18.l		; 2F 18 BB 8C
	sta $0CD70C.l,X		; 9F 0C D7 0C
	eor $0F86.w,X		; 5D 86 0F
	asl $B8.b		; 06 B8
	clv		; B8
	cld		; D8
	cld		; D8
	jmp.w [$5CDC]		; DC DC 5C
	jmp.w [$EC6C]		; DC 6C EC
	rol $2EEE.w		; 2E EE 2E
	inc $F6F6.w		; EE F6 F6
	cli		; 58
	bvc  16.b		; 50 10
	brk $10.b		; 00 10
	brk $B0.b		; 00 B0
	jsr $20B0.w		; 20 B0 20
	ldy #$BE00.w		; A0 00 BE
	jsr $0687.w		; 20 87 06
	ldy #$E0F8.w		; A0 F8 E0
	beq -32.b		; F0 E0
	beq  64.b		; F0 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	ror $7F78.w,X		; 7E 78 7F
	rol $C4.b		; 26 C4
	sbc $E6.b,X		; F5 E6
	adc ($A1.b),Y		; 71 A1
	sed		; F8
	bvc  -1.b		; 50 FF
	pld		; 2B
	lda $FC50.w,X		; BD 50 FC
	eor #$78.b		; 49 78
	ora ($D8.b),Y		; 11 D8
	dec $EFE8.w,X		; DE E8 EF
	ldx $57AF.w		; AE AF 57
	eor [$28.b],Y		; 57 28
	pld		; 2B
	eor ($53.b)		; 52 53
	lsr A		; 4A
	phk		; 4B
	stx $97.b,Y		; 96 97
	jsr $3000.w		; 20 00 30
	brk $D0.b		; 00 D0
	jsr $2070.w		; 20 70 20
	bmi  32.b		; 30 20
	beq  96.b		; F0 60
	beq  32.b		; F0 20
	ldy #$0000.w		; A0 00 00
	jsr $3000.w		; 20 00 30
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	cpy #$00F0.w		; C0 F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	ldy #$272F.w		; A0 2F 27
	asl $1F05.w		; 0E 05 1F
	asl A		; 0A
	and $8ABD14.l,X		; 3F 14 BD 8A
	and $889E92.l,X		; 3F 92 9E 88
	php		; 08
	brk $D7.b		; 00 D7
	sbc [$F5.b],Y		; F7 F5
	sbc $EA.b,X		; F5 EA
	nop		; EA
	pei ($D4.b)		; D4 D4
	lsr A		; 4A
	dex		; CA
	eor ($D2.b)		; 52 D2
	adc #$E9.b		; 69 E9
	sbc [$F7.b],Y		; F7 F7
	ldx $04.b,Y		; B6 04
	ldx $A404.w		; AE 04 A4
	brk $65.b		; 00 65
	rti		; 40

	adc ($00.b),Y		; 71 00
	plp		; 28
	bmi  24.b		; 30 18
	bpl -24.b		; 10 E8
	ldy #$7E48.w		; A0 48 7E
	rti		; 40

	ror $6440.w		; 6E 40 64
	bra -27.b		; 80 E5
	bra -15.b		; 80 F1
	cpy #$E0F8.w		; C0 F8 E0
	sed		; F8
	bpl  -8.b		; 10 F8
	ora ($01.b),Y		; 11 01
	inc A		; 1A
	php		; 08
	ora $FD04.w		; 0D 04 FD
	brk $5E.b		; 00 5E
	dec A		; 3A
	and [$05.b],Y		; 37 05
	php		; 08
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	ora $021D05.l,X		; 1F 05 1D 02
	asl $FE02.w		; 0E 02 FE
	ora ($7F.b,X)		; 01 7F
	php		; 08
	and $000F07.l,X		; 3F 07 0F 00
	ora [$7B.b]		; 07 7B
	bra  55.b		; 80 37
	bmi  15.b		; 30 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $03.b		; 00 03
	brk $C1.b		; 00 C1
	rti		; 40

	tsb $FC.b		; 04 FC
	iny		; C8
	sed		; F8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr ($3EFC.w,X)		; FC FC 3E
	inc $00FF.w,X		; FE FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy $BB33.w		; CC 33 BB
	adc [$BB.b],Y		; 77 BB
	ror $00.b,X		; 76 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	and ($77.b,S),Y		; 33 77
	adc [$76.b],Y		; 77 76
	ror $7F.b,X		; 76 7F
	sbc $FF41BE.l,X		; FF BE 41 FF
	brk $FF.b		; 00 FF
	jsl $FF1CFF.l		; 22 FF 1C FF
	brk $D7.b		; 00 D7
	inx		; E8
	sbc $FFFF3F.l,X		; FF 3F FF FF
	eor ($41.b,X)		; 41 41
	brk $00.b		; 00 00
	jsl $3E3E22.l		; 22 22 3E 3E
	bra -128.b		; 80 80
	sbc #$E9.b		; E9 E9
	and $40663F.l,X		; 3F 3F 66 40
	asl $CE00.w		; 0E 00 CE
	brk $EE.b		; 00 EE
	brk $7E.b		; 00 7E
	bra  -4.b		; 80 FC
	bra  -4.b		; 80 FC
	bra  -4.b		; 80 FC
	bra -103.b		; 80 99
	sbc $F1F1.w,Y		; F9 F1 F1
	and ($31.b),Y		; 31 31
	sta ($91.b),Y		; 91 91
	sta ($81.b,X)		; 81 81
	sta $83.b,S		; 83 83
	sta $83.b,S		; 83 83
	sta $83.b,S		; 83 83
	jmp ($1808.w)		; 6C 08 18
	brk $60.b		; 00 60
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $4F.b		; 00 4F
	brk $F6.b		; 00 F6
	sty $080C.w		; 8C 0C 08
	bcc  -4.b		; 90 FC
	cpx #$80F8.w		; E0 F8 80
	cpx #$C080.w		; E0 80 C0
	bra -64.b		; 80 C0
	bra -49.b		; 80 CF
	brk $FE.b		; 00 FE
	beq  -4.b		; F0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora $1805.w		; 0D 05 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	ora [$1F.b]		; 07 1F
	rts		; 60

	brk $4E.b		; 00 4E
	jsr $004F.w		; 20 4F 00
	cmp $009F40.l,X		; DF 40 9F 00
	sta $003F80.l,X		; 9F 80 3F 00
	and $7F1F00.l,X		; 3F 00 1F 7F
	ora ($71.b),Y		; 11 71
	bmi 112.b		; 30 70
	jsr $60E0.w		; 20 E0 60
	cpx #$E060.w		; E0 60 E0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$32FF.w		; C0 FF 32
	sbc $32DF33.l,X		; FF 33 DF 32
	sbc $1BF512.l,X		; FF 12 F5 1B
	sbc $09FE19.l		; EF 19 FE 09
	xce		; FB
	tsb $7272.w		; 0C 72 72
	and ($33.b,S),Y		; 33 33
	and ($32.b)		; 32 32
	dec A		; 3A
	dec A		; 3A
	tas		; 1B
	tas		; 1B
	ora $1D19.w,Y		; 19 19 1D
	ora $0C0C.w,X		; 1D 0C 0C
	sbc $19F7F8.l,X		; FF F8 F7 19
	sbc $F3FF1B.l,X		; FF 1B FF F3
	sbc $FD23.w,X		; FD 23 FD
	rol A		; 2A
	sbc [$D8.b],Y		; F7 D8
	sbc $F8F830.l,X		; FF 30 F8 F8
	sta $1B99.w,Y		; 99 99 1B
	tas		; 1B
	sbc ($F3.b,S),Y		; F3 F3
	lda $A3.b,S		; A3 A3
	rol A		; 2A
	rol A		; 2A
	cld		; D8
	cld		; D8
	sec		; 38
	sec		; 38
	sbc $B706.w,X		; FD 06 B7
	cpy $0CFF.w		; CC FF 0C
	lda $CCFBCC.l,X		; BF CC FB CC
	sbc $18EF48.l,X		; FF 48 EF 18
	sbc $0E0E18.l,X		; FF 18 0E 0E
	dec $0CCE.w		; CE CE 0C
	tsb $CCCC.w		; 0C CC CC
	cpy $5CCC.w		; CC CC 5C
	jmp $181818.l		; 5C 18 18 18
	clc		; 18
	trb $3010.w		; 1C 10 30
	jsr $0060.w		; 20 60 00
	adc $040640.l,X		; 7F 40 06 04
	stz $CC10.w		; 9C 10 CC
	php		; 08
	inc $04.b		; E6 04
	cpx #$C0FC.w		; E0 FC C0
	beq -128.b		; F0 80
	cpx #$FF80.w		; E0 80 FF
	sed		; F8
	inc $7C60.w,X		; FE 60 7C
	bmi  60.b		; 30 3C
	clc		; 18
	asl $0002.w,X		; 1E 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora [$02.b]		; 07 02
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $AE00.w		; 8C 00 AE
	jsl $E5486E.l		; 22 6E 48 E5
	bra -95.b		; 80 A1
	brk $23.b		; 00 23
	brk $27.b		; 00 27
	brk $6F.b		; 00 6F
	jsr $7F73.w		; 20 73 7F
	eor ($7F.b),Y		; 51 7F
	sta ($FF.b),Y		; 91 FF
	inc A		; 1A
	inc $BE1E.w,X		; FE 1E BE
	trb $183C.w		; 1C 3C 18
	sec		; 38
	bpl 112.b		; 10 70
	sbc $34CF04.l,X		; FF 04 CF 34
	sbc [$3B.b],Y		; F7 3B
	inc $DF39.w,X		; FE 39 DF
	sec		; 38
	sbc $18FF18.l,X		; FF 18 FF 18
	sbc $040418.l,X		; FF 18 04 04
	rol $36.b,X		; 36 36
	tsa		; 3B
	tsa		; 3B
	and $3839.w,Y		; 39 39 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sbc $78FF60.l,X		; FF 60 FF 78
	sbc $AFFB.w,X		; FD FB AF
	stp		; DB
	sbc $07FA03.l,X		; FF 03 FA 07
	sbc $06FF06.l,X		; FF 06 FF 06
	rts		; 60

	rts		; 60

	sei		; 78
	sei		; 78
	xce		; FB
	xce		; FB
	stp		; DB
	stp		; DB
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	sbc $00FF00.l,X		; FF 00 FF 00
	adc [$80.b],Y		; 77 80
	adc [$80.b],Y		; 77 80
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	dey		; 88
	dey		; 88
	dey		; 88
	sty $0C8C.w		; 8C 8C 0C
	tsb $0707.w		; 0C 07 07
	ora [$07.b]		; 07 07
	ldx $24.b,Y		; B6 24
	sty $00.b		; 84 00
	dey		; 88
	brk $C4.b		; 00 C4
	brk $F3.b		; 00 F3
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	ror $7C78.w,X		; 7E 78 7C
	bvs 120.b		; 70 78
	sec		; 38
	bit $0F0C.w,X		; 3C 0C 0F
	ora $03.b,S		; 03 03
	bra -128.b		; 80 80
	sbc $0020FF.l,X		; FF FF 20 00
	sbc $010120.l,X		; FF 20 01 01
	sbc [$04.b],Y		; F7 04
	trb $18.b		; 14 18
	sei		; 78
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	jsr $FF00.w		; 20 00 FF
	inc $08FF.w,X		; FE FF 08
	ora $80FCE0.l		; 0F E0 FC 80
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FE80.w,X)		; 7C 80 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $B9.b		; 00 B9
	dec $FF.b		; C6 FF
	asl $83.b		; 06 83
	sta $01.b,S		; 83 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	dec $06.b		; C6 06
	asl $38.b		; 06 38
	jsr $181F.w		; 20 1F 18
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($F100.w,X)		; FC 00 F1
	ora ($87.b,X)		; 01 87
	tsb $C0.b		; 04 C0
	sed		; F8
	cpx #$7FFF.w		; E0 FF 7F
	adc $000000.l,X		; 7F 00 00 00
	brk $03.b		; 00 03
	ora $0E.b,S		; 03 0E
	ora $377F78.l		; 0F 78 7F 37
	ora ($5B.b,S),Y		; 13 5B
	and ($63.b,X)		; 21 63
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	and $007B00.l,X		; 3F 00 7B 00
	adc $01.b,S		; 63 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $3F.b,S		; 03 3F
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	brk $73.b		; 00 73
	brk $71.b		; 00 71
	brk $E1.b		; 00 E1
	brk $C9.b		; 00 C9
	brk $CD.b		; 00 CD
	tsb $C0.b		; 04 C0
	cpy #$8080.w		; C0 80 80
	sty $84.b		; 84 84
	sty $8E8C.w		; 8C 8C 8E
	stx $1E1E.w		; 8E 1E 1E
	rol $3E.b,X		; 36 3E
	and ($3E.b)		; 32 3E
	sbc [$0E.b],Y		; F7 0E
	xce		; FB
	tsb $FF.b		; 04 FF
	brk $FD.b		; 00 FD
	ora $FD.b,S		; 03 FD
	ora $F7.b,S		; 03 F7
	php		; 08
	sbc $0CFF0F.l,X		; FF 0F FF 0C
	asl $0C0E.w		; 0E 0E 0C
	tsb $0101.w		; 0C 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	php		; 08
	php		; 08
	ora $0C0C0F.l		; 0F 0F 0C 0C
	lda $60DF70.l		; AF 70 DF 60
	sbc $CEB7C0.l,X		; FF C0 B7 CE
	adc $2FD683.l,X		; 7F 83 D6 2F
	sbc $6EF1EE.l,X		; FF EE F1 6E
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	cpx #$CEE0.w		; E0 E0 CE
	dec $8383.w		; CE 83 83
	and $EEEE2F.l		; 2F 2F EE EE
	inc $FFEE.w		; EE EE FF
	clc		; 18
	sbc [$18.b],Y		; F7 18
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $70EF30.l,X		; FF 30 EF 70
	eor $C03FE0.l,X		; 5F E0 3F C0
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$00F2.w		; C0 F2 00
	ora $0600.w,Y		; 19 00 06
	brk $20.b		; 00 20
	brk $33.b		; 00 33
	brk $3A.b		; 00 3A
	brk $3A.b		; 00 3A
	brk $BA.b		; 00 BA
	php		; 08
	tsb $E60E.w		; 0C 0E E6
	sbc [$F9.b]		; E7 F9
	sbc $FFDF.w,Y		; F9 DF FF
	cpy $C4FF.w		; CC FF C4
	inc $FEC4.w,X		; FE C4 FE
	mvp $00,$7E		; 44 7E 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $06.b		; 00 06
	cop $0C.b		; 02 0C
	tsb $0A.b		; 04 0A
	ora $1F.b,S		; 03 1F
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	tsb $0F.b		; 04 0F
	brk $1F.b		; 00 1F
	cmp $80BF40.l,X		; DF 40 BF 80
	sei		; 78
	brk $E0.b		; 00 E0
	brk $8F.b		; 00 8F
	php		; 08
	and [$10.b],Y		; 37 10
	cmp ($05.b,S),Y		; D3 05
	inc A		; 1A
	php		; 08
	jsr $40E0.w		; 20 E0 40
	cpy #$8787.w		; C0 87 87
	ora $7F701F.l,X		; 1F 1F 70 7F
	iny		; C8
	sbc $05DF08.l,X		; FF 08 DF 05
	ora $7F18FF.l,X		; 1F FF 18 7F
	clc		; 18
	adc $1C6B18.l,X		; 7F 18 6B 1C
	rtl		; 6B

	trb $0C7F.w		; 1C 7F 0C
	adc $0C7F0C.l,X		; 7F 0C 7F 0C
	clc		; 18
	clc		; 18
	tya		; 98
	tya		; 98
	stz $9C9C.w		; 9C 9C 9C
	stz $9C9C.w		; 9C 9C 9C
	stz $8C9C.w		; 9C 9C 8C
	sty $8C8C.w		; 8C 8C 8C
	sbc $FF06.w,X		; FD 06 FF
	tsb $F7.b		; 04 F7
	tsb $0CFF.w		; 0C FF 0C
	xce		; FB
	tsb $08FF.w		; 0C FF 08
	sbc $08F708.l,X		; FF 08 F7 08
	asl $06.b		; 06 06
	asl $0C0E.w		; 0E 0E 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0808.w		; 0C 08 08
	php		; 08
	php		; 08
	sbc $F900.w,Y		; F9 00 F9
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	ora ($FD.b,X)		; 01 FD
	ora ($FC.b,X)		; 01 FC
	brk $9C.b		; 00 9C
	brk $9E.b		; 00 9E
	brk $06.b		; 00 06
	ora [$06.b]		; 07 06
	ora [$02.b]		; 07 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $63.b,S		; 03 63
	adc $61.b,S		; 63 61
	adc ($F7.b,X)		; 61 F7
	brk $38.b		; 00 38
	bpl  49.b		; 10 31
	brk $A3.b		; 00 A3
	brk $83.b		; 00 83
	brk $85.b		; 00 85
	cop $87.b		; 02 87
	cop $6E.b		; 02 6E
	tsb $08.b		; 04 08
	sbc $003800.l,X		; FF 00 38 00
	and ($00.b),Y		; 31 00
	lda $00.b,S		; A3 00
	sta $00.b,S		; 83 00
	sta [$00.b]		; 87 00
	sta [$80.b]		; 87 80
	inc $0000.w		; EE 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	rti		; 40

	eor $216908.l		; 4F 08 69 21
	bit $00.b		; 24 00
	and [$10.b],Y		; 37 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	bmi 127.b		; 30 7F
	asl $77.b,X		; 16 77
	tas		; 1B
	tsa		; 3B
	php		; 08
	sec		; 38
	sbc $062B26.l		; EF 26 2B 06
	rol $03.b		; 26 03
	and [$03.b]		; 27 03
	and $03.b		; 25 03
	and ($11.b,S),Y		; 33 11
	rol A		; 2A
	ora $1033.w,Y		; 19 33 10
	asl $F6.b,X		; 16 F6
	ora [$37.b],Y		; 17 37
	tas		; 1B
	tsa		; 3B
	tas		; 1B
	tsa		; 3B
	tas		; 1B
	tsa		; 3B
	ora $053D.w		; 0D 3D 05
	and $3C0C.w,X		; 3D 0C 3C
	and ($00.b,X)		; 21 00
	adc ($20.b,X)		; 61 20
	cmp $ED40.w,Y		; D9 40 ED
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	cop $7E.b		; 02 7E
	brk $1E.b		; 00 1E
	rol $7E1E.w,X		; 3E 1E 7E
	rol $FE.b		; 26 FE
	cop $EE.b		; 02 EE
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	ora ($7F.b,X)		; 01 7F
	sta $02.b,S		; 83 02
	lsr $6800.w		; 4E 00 68
	jsr $2068.w		; 20 68 20
	bit $18.b,X		; 34 18
	inc A		; 1A
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	sbc $107E30.l,X		; FF 30 7E 10
	sei		; 78
	bpl 120.b		; 10 78
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	ldx $1C18.w		; AE 18 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $1C00.w,Y		; BE 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	clc		; 18
	ora $000707.l,X		; 1F 07 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$3F.b]		; 07 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,S),Y		; 13 02
	cop $00.b		; 02 00
	sep #$00		; E2 00
	rol $14.b,X		; 36 14
	ora ($04.b)		; 12 04
	trb $00.b		; 14 00
	trb $0C08.w		; 1C 08 0C
	brk $EC.b		; 00 EC
	sbc $1CFEFC.l		; EF FC FE 1C
	inc $3E08.w,X		; FE 08 3E
	php		; 08
	asl $1C08.w,X		; 1E 08 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	ora $01.b		; 05 01
	ora $1B04.w		; 0D 04 1B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	and $0100.w,X		; 3D 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0100.w,X		; 3D 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $F600.w		; 1C 00 F6
	trb $86.b		; 14 86
	sty $1E.b		; 84 1E
	trb $7E.b		; 14 7E
	jmp $88DC.w		; 4C DC 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	php		; 08
	inc $FE78.w,X		; FE 78 FE
	cpx #$80FE.w		; E0 FE 80
	inc $DC00.w,X		; FE 00 DC
	stz $1C08.w		; 9C 08 1C
	php		; 08
	plp		; 28
	bpl  40.b		; 10 28
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $1C00.w		; 9C 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $08.b		; 00 08
	brk $13.b		; 00 13
	php		; 08
	ora $091F08.l,X		; 1F 08 1F 09
	asl A		; 0A
	brk $02.b		; 00 02
	brk $86.b		; 00 86
	cop $07.b		; 02 07
	ora $040F07.l		; 0F 07 0F 04
	ora $001F00.l,X		; 1F 00 1F 00
	ora $010B01.l,X		; 1F 01 0B 01
	ora $01.b,S		; 03 01
	sta [$7F.b]		; 87 7F
	tsb $0C3F.w		; 0C 3F 0C
	lda $0CBF8C.l,X		; BF 8C BF 0C
	and $047B1C.l		; 2F 1C 7B 04
	eor $385F30.l		; 4F 30 5F 38
	sty $CC8C.w		; 8C 8C CC
	cpy $CC4C.w		; CC 4C CC
	jmp $DCDCDC.l		; 5C DC DC DC
	sty $B08C.w		; 8C 8C B0
	bcs -72.b		; B0 B8
	clv		; B8
	sbc $40BF00.l,X		; FF 00 BF 40
	sbc $60DD40.l,X		; FF 40 DD 60
	sed		; F8
	rts		; 60

	sei		; 78
	cpy #$C477.w		; C0 77 C4
	ldy $4048.w,X		; BC 48 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

.ACCU 8
	sep #$E2		; E2 E2
	sbc [$E7.b]		; E7 E7
	sbc [$E7.b]		; E7 E7
	iny		; C8
	cmp $8E4C40.l		; CF 40 4C 8E
	brk $CF.b		; 00 CF
	brk $D7.b		; 00 D7
	bpl -40.b		; 10 D8
	clc		; 18
	sbc $006F07.l		; EF 07 6F 00
	tay		; A8
	bra -56.b		; 80 C8
	rti		; 40

	adc ($71.b),Y		; 71 71
	bmi  48.b		; 30 30
	plp		; 28
	sec		; 38
	and [$3F.b]		; 27 3F
	bpl  31.b		; 10 1F
	bcc -97.b		; 90 9F
	bvc -40.b		; 50 D8
	bmi  -8.b		; 30 F8
	rol $8A24.w,X		; 3E 24 8A
	php		; 08
	sep #$00		; E2 00
	tsb $4808.w		; 0C 08 48
	bcs -16.b		; B0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	inc $7E74.w,X		; FE 74 7E
	trb $F01E.w		; 1C 1E F0
	jsr ($F800.w,X)		; FC 00 F8
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
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($16.b,X)		; 01 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	stx $5B8E.w		; 8E 8E 5B
	cmp $000000.l,X		; DF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $9C.b		; 00 9C
	php		; 08
	dec $8E.b,X		; D6 8E
	adc ($DF.b),Y		; 71 DF
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($E1.b,X)		; E1 E1
	lda ($F3.b)		; B2 F3
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	sbc ($1E.b,X)		; E1 1E
	sbc ($0C.b,S),Y		; F3 0C
	eor ($7B.b,X)		; 41 7B
	adc ($4F.b,S),Y		; 73 4F
	clv		; B8
	cmp [$61.b]		; C7 61
	bra   1.b		; 80 01
	brk $71.b		; 00 71
	bvs -40.b		; 70 D8
	sbc $F998.w,Y		; F9 98 F9
	adc $7F80.w,X		; 7D 80 7F
	bra  -1.b		; 80 FF
	brk $E1.b		; 00 E1
	asl $FE01.w,X		; 1E 01 FE
	adc ($8E.b),Y		; 71 8E
	sbc $F906.w,Y		; F9 06 F9
	asl $00.b		; 06 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $38.b		; 00 38
	sec		; 38
	sty $14FC.w		; 8C FC 14
	jsr ($0EF6.w,X)		; FC F6 0E
	stz $0004.w		; 9C 04 00
	bcs -128.b		; B0 80
	sei		; 78
	brk $F8.b		; 00 F8
	sec		; 38
	cmp [$FC.b]		; C7 FC
	ora $FC.b,S		; 03 FC
	ora $FE.b,S		; 03 FE
	ora ($FC.b,X)		; 01 FC
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
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	ldy #$50C0.w		; A0 C0 50
	bcc -120.b		; 90 88
	clc		; 18
	bpl -24.b		; 10 E8
	plp		; 28
	and [$27.b],Y		; 37 27
	and $02FFC7.l,X		; 3F C7 FF 02
	sbc $F018E0.l,X		; FF E0 18 F0
	php		; 08
	sed		; F8
	asl $18.b		; 06 18
	asl $28.b		; 06 28
	cpy #$C037.w		; C0 37 C0
	sbc [$00.b],Y		; F7 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -128.b		; 30 80
	sei		; 78
	ldy #$F759.w		; A0 59 F7
	sbc $20FF70.l,X		; FF 70 FF 20
	sbc $D09093.l,X		; FF 93 90 D0
	bmi -80.b		; 30 B0
	bvs  35.b		; 70 23
	sbc $67.b,S		; E3 67
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $13.b		; 00 13
	jmp ($0FF0.w)		; 6C F0 0F
	beq  15.b		; F0 0F
	sbc $1C.b,S		; E3 1C
	sbc [$18.b]		; E7 18
	inc $E0.b		; E6 E0
	tax		; AA
	xba		; EB
	ldx $F7.b,Y		; B6 F7
	ora $98F2.w		; 0D F2 98
	sbc [$42.b]		; E7 42
	eor $B3.b		; 45 B3
	sbc ($B0.b,S),Y		; F3 B0
	beq  31.b		; F0 1F
	brk $14.b		; 00 14
	brk $08.b		; 00 08
	brk $0D.b		; 00 0D
	brk $98.b		; 00 98
	brk $43.b		; 00 43
	clv		; B8
	sbc ($0C.b,S),Y		; F3 0C
	beq  15.b		; F0 0F
	rti		; 40

	cpy #$70C0.w		; C0 C0 70
	cpy #$4A10.w		; C0 10 4A
	jsr $A01C.w		; 20 1C A0
	ora $FC.b,S		; 03 FC
	and $4CC7.w,Y		; 39 C7 4C
	txy		; 9B
	cpy #$F03B.w		; C0 3B F0
	ora $4A2FD0.l		; 0F D0 2F 4A
	sta $1C.b,X		; 95 1C
	eor $03.b,S		; 43 03
	brk $39.b		; 00 39
	brk $CF.b		; 00 CF
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	bpl -96.b		; 10 A0
	ora ($9C.b)		; 12 9C
	sep #$41		; E2 41
	ldx $8000.w,Y		; BE 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	iny		; C8
	jsr $4DA0.w		; 20 A0 4D
	stz $C101.w		; 9C 01 C1
	brk $17.b		; 00 17
	ora ($09.b,S),Y		; 13 09
	ora #$11.b		; 09 11
	ora $0F0B.w,X		; 1D 0B 0F
	ora $05.b,S		; 03 05
	ora ($07.b,X)		; 01 07
	ora $0509.w		; 0D 09 05
	ora #$1C.b		; 09 1C
	jsr $700E.w		; 20 0E 70
	asl $0CE0.w,X		; 1E E0 0C
	bmi   6.b		; 30 06
	sei		; 78
	asl $18.b		; 06 18
	asl $0E00.w		; 0E 00 0E
	bpl -21.b		; 10 EB
	inx		; E8
	adc $45FC.w,X		; 7D FC 45
	jsr ($FE02.w,X)		; FC 02 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	sta ($FD.b),Y		; 91 FD
	sta [$E7.b]		; 87 E7
	ora [$00.b],Y		; 17 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b),Y		; 11 02
	ora [$18.b]		; 07 18
	rol $37.b,X		; 36 37
	ora ($DB.b)		; 12 DB
	brk $CF.b		; 00 CF
	.db $42, $24		; 42 24
	bpl -14.b		; 10 F2
	phd		; 0B
	dec A		; 3A
	brk $19.b		; 00 19
	ora $1D.b		; 05 1D
	sec		; 38
	cpy #$20DC.w		; C0 DC 20
	cpy $E730.w		; CC 30 E7
	clc		; 18
	and ($0C.b,S),Y		; 33 0C
	tas		; 1B
	tsb $09.b		; 04 09
	asl $0D.b		; 06 0D
	cop $11.b		; 02 11
	inc $7E01.w,X		; FE 01 7E
	bit $7B.b		; 24 7B
	dec A		; 3A
	sbc $E724.w,X		; FD 24 E7
	jsr $20E3.w		; 20 E3 20
	sbc $20.b,S		; E3 20
	sbc $DD.b,S		; E3 DD
	brk $E1.b		; 00 E1
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $66.b		; 00 66
	clc		; 18
	.db $62, $1C, $62		; 62 1C 62
	trb $1C62.w		; 1C 62 1C
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora $282E0C.l		; 0F 0C 2E 28
	tsb $3D08.w		; 0C 08 3D
	and $3139.w,Y		; 39 39 31
	bvc 127.b		; 50 7F
	ora $3C.b,S		; 03 3C
	ora $3C.b,S		; 03 3C
	ora $102F10.l		; 0F 10 2F 10
	ora $403E30.l		; 0F 30 3E 40
	rol $78C0.w,X		; 3E C0 78
	bra -75.b		; 80 B5
	tda		; 7B
	sta ($79.b)		; 92 79
	and #$10.b		; 29 10
	pha		; 48
	pha		; 48
	sta $09FF.w		; 8D FF 09
	sbc $38FF00.l,X		; FF 00 FF 38
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $B7.b		; 00 B7
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $38.b		; 00 38
	brk $BF.b		; 00 BF
	inc $BE55.w,X		; FE 55 BE
	eor $BC.b,S		; 43 BC
	inc $18.b		; E6 18
	ldy $3F00.w,X		; BC 00 3F
	ora [$86.b]		; 07 86
	stx $4E.b		; 86 4E
	dec $00FF.w		; CE FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $79.b		; 00 79
	brk $31.b		; 00 31
	brk $19.b		; 00 19
	sbc $BC5C.w,Y		; F9 5C BC
	inc $441E.w		; EE 1E 44
	tsb $061E.w		; 0C 1E 06
	rol $3A26.w,X		; 3E 26 3A
	rol $E6.b		; 26 E6
.ACCU 8
.INDEX 8
	sep #$F9		; E2 F9
	asl $FC.b		; 06 FC
	ora $FE.b,S		; 03 FE
	ora ($FC.b,X)		; 01 FC
	ora $FE.b,S		; 03 FE
	ora ($DE.b,X)		; 01 DE
	ora ($DE.b,X)		; 01 DE
	ora ($1E.b,X)		; 01 1E
	ora ($3D.b,X)		; 01 3D
	ora $9FAE.w		; 0D AE 9F
	pha		; 48
	and $E50375.l,X		; 3F 75 03 E5
	sbc $8D.b,S		; E3 8D
	sta $8A.b,S		; 83 8A
	inc $02.b,X		; F6 02
	stx $02FD.w		; 8E FD 02
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $001F00.l,X		; FF 00 1F 00
	adc $007E00.l,X		; 7F 00 7E 00
	stx $C070.w		; 8E 70 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	xce		; FB
	ora $C4FB.w,Y		; 19 FB C4
	cmp [$00.b]		; C7 00
	sbc ($04.b,S),Y		; F3 04
	sbc $005700.l,X		; FF 00 57 00
	xce		; FB
	rti		; 40

	lda $F904F9.l,X		; BF F9 04 F9
	tsb $C6.b		; 04 C6
	sec		; 38
	sbc ($0C.b,S),Y		; F3 0C
	lda $A80100.l,X		; BF 00 01 A8
	lda #$04.b		; A9 04
	eor $00.b		; 45 00
	rts		; 60

	cpx #$32.b		; E0 32
	sbc ($19.b,S),Y		; F3 19
	sbc $66B846.l,X		; FF 46 B8 66
	sta ($76.b)		; 92 76
	sta $70.b,S		; 83 70
	sta [$31.b]		; 87 31
	dec $E0.b		; C6 E0
	ora $FF0CF3.l,X		; 1F F3 0C FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FF.b,X)		; 01 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $CB.b		; 00 CB
	cmp $969B9C.l		; CF 9C 9B 96
	sta $1813.w,Y		; 99 13 18
	sec		; 38
	bmi  26.b		; 30 1A
	and ($1A.b)		; 32 1A
	jsl $CF332B.l		; 22 2B 33 CF
	bmi -97.b		; 30 9F
	rts		; 60

	sta $E01F60.l,X		; 9F 60 1F E0
	and $C03DC0.l,X		; 3F C0 3D C0
	and $3CC0.w,X		; 3D C0 3C
	rti		; 40

	bit $56FC.w,X		; 3C FC 56
	ldx $9E66.w,Y		; BE 66 9E
	ldy $BA14.w		; AC 14 BA
	asl $0D.b		; 06 0D
	ora $25.b,S		; 03 25
	and $66.b,S		; 23 66
	adc ($FC.b,X)		; 61 FC
	ora $FE.b,S		; 03 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FC.b,X)		; 01 FC
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $DF.b		; 00 DF
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	cmp $87FE82.l,X		; DF 82 FE 87
	adc $30FC1C.l,X		; 7F 1C FC 30
	beq 112.b		; F0 70
	beq  64.b		; F0 40
	rti		; 40

	brk $00.b		; 00 00
	cmp $012E20.l		; CF 20 2E 01
	sbc $03FC00.l,X		; FF 00 FC 03
	beq   3.b		; F0 03
	beq   2.b		; F0 02
	rti		; 40

	bra   0.b		; 80 00
	cpx #$60.b		; E0 60
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $0E.b		; 04 0E
	php		; 08
	phd		; 0B
	tsb $0407.w		; 0C 07 04
	asl $19.b,X		; 16 19
	trb $0C1B.w		; 1C 1B 0C
	asl A		; 0A
	tsb $070E.w		; 0C 0E 07
	sec		; 38
	ora $100F10.l		; 0F 10 0F 10
	ora [$38.b]		; 07 38
	asl $1D20.w,X		; 1E 20 1D
	jsr $110C.w		; 20 0C 11
	tsb $9C01.w		; 0C 01 9C
	sbc $A2FFC8.l,X		; FF C8 FF A2
	rol $3C30.w,X		; 3E 30 3C
	bvc -34.b		; 50 DE
	bpl -97.b		; 10 9F
	tsb $0E6F.w		; 0C 6F 0E
	and $0C001F.l		; 2F 1F 00 0C
	brk $CA.b		; 00 CA
	ora ($C0.b,X)		; 01 C0
	ora $22.b,S		; 03 22
	ora ($E1.b,X)		; 01 E1
	brk $50.b		; 00 50
	bra  48.b		; 80 30
	cpy #$02.b		; C0 02
	asl $0907.w		; 0E 07 09
	cop $05.b		; 02 05
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $20E3.w		; 20 E3 20
	lda $00.b,S		; A3 00
	adc $90.b,S		; 63 90
	adc ($F6.b,S),Y		; 73 F6
	and $C6.b,X		; 35 C6
	and $2C.b		; 25 2C
	cmp ($00.b)		; D2 00
	bit $1C62.w,X		; 3C 62 1C
	.db $62, $1C, $A2		; 62 1C A2
	trb $0CB2.w		; 1C B2 0C
	inc $08.b,X		; F6 08
	inc $18.b		; E6 18
	bit $0000.w,X		; 3C 00 00
	brk $A6.b		; 00 A6
	eor $CD08.w,Y		; 59 08 CD
	tya		; 98
	ora $9E18.w,X		; 1D 18 9E
	ora $199F.w,Y		; 19 9F 19
	sta $189F19.l,X		; 9F 19 9F 18
	sta $4E00BE.l,X		; 9F BE 00 4E
	bmi -98.b		; 30 9E
	rts		; 60

	stz $9D61.w		; 9C 61 9D
	rts		; 60

	sta $9D60.w,X		; 9D 60 9D
	rts		; 60

	stz $2960.w		; 9C 60 29
	and [$08.b],Y		; 37 08
	tsb $10.b		; 04 10
	bpl  27.b		; 10 1B
	tas		; 1B
	sta [$9F.b]		; 87 9F
	trb $1B.b		; 14 1B
	ldx $99.b,Y		; B6 99
	eor $3FDC.w,Y		; 59 DC 3F
	cpy #$0C.b		; C0 0C
	sbc ($10.b,S),Y		; F3 10
	sbc $9FE41B.l		; EF 1B E4 9F
	rts		; 60

	ora $007FE0.l,X		; 1F E0 7F 00
	cmp $1B1B20.l,X		; DF 20 1B 1B
	bit $803F.w,X		; 3C 3F 80
	sbc $28E816.l,X		; FF 16 E8 28
	cpy #$C6.b		; C0 C6
	asl $86.b		; 06 86
	asl $7F99.w,X		; 1E 99 7F
	tas		; 1B
	cpx $3F.b		; E4 3F
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	brk $E1.b		; 00 E1
	brk $80.b		; 00 80
	brk $8E.b		; 00 8E
	dec $F830.w		; CE 30 F8
	cpx #$38.b		; E0 38
	jmp ($E81C.w)		; 6C 1C E8
	clc		; 18
.INDEX 8
	sep #$9A		; E2 9A
	ldx $8E8E.w,Y		; BE 8E 8E
	.db $82, $CE, $31		; 82 CE 31
	sed		; F8
	ora [$F8.b]		; 07 F8
	asl $FC.b		; 06 FC
	cop $F8.b		; 02 F8
	asl $7A.b		; 06 7A
	ora $7E.b		; 05 7E
	ora ($7E.b,X)		; 01 7E
	ora ($31.b,X)		; 01 31
	sbc ($65.b,S),Y		; F3 65
	inc $AE.b		; E6 AE
	adc $739D.w		; 6D 9D 73
	eor [$DF.b]		; 47 DF
	ora [$5F.b]		; 07 5F
	sta $F7.b,X		; 95 F7
	plp		; 28
	sbc $E70CF3.l		; EF F3 0C E7
	clc		; 18
	inc $FC10.w		; EE 10 FC
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	ldy #$D4.b		; A0 D4
	php		; 08
	tay		; A8
	bpl  76.b		; 10 4C
	sta $E95FCC.l,X		; 9F CC 5F E9
	adc $C2FFF1.l,X		; 7F F1 FF C2
	inc $FE06.w,X		; FE 06 FE
	tsb $FC.b		; 04 FC
	jsl $00E0D9.l		; 22 D9 E0 00
	ldy #$00.b		; A0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	adc [$00.b]		; 67 00
	bit #$9C.b		; 89 9C
	jsr $0F1C.w		; 20 1C 0F
	bmi  73.b		; 30 49
	bmi -126.b		; 30 82
	tda		; 7B
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	and [$DB.b]		; 27 DB
	tsb $7FF3.w		; 0C F3 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $BC.b		; 00 BC
	brk $CC.b		; 00 CC
	brk $86.b		; 00 86
	inc $FF87.w,X		; FE 87 FF
	stz $09FE.w,X		; 9E FE 09
	inx		; E8
	ora $EF34E0.l,X		; 1F E0 34 EF
	.db $62, $EE, $69		; 62 EE 69
	sbc [$01.b]		; E7 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $17.b		; 00 17
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	ora ($1F.b,X)		; 01 1F
	brk $12.b		; 00 12
	eor $E720.w,X		; 5D 20 E7
	and $67.b		; 25 67
	ldy $0C7F.w,X		; BC 7F 0C
	inc $7A89.w,X		; FE 89 7A
	bra 123.b		; 80 7B
	ora ($FA.b,X)		; 01 FA
	ora ($A0.b)		; 12 A0
	jsr $2518.w		; 20 18 25
	tya		; 98
	ldy $1C00.w,X		; BC 00 1C
	ora ($D9.b,X)		; 01 D9
	tsb $D8.b		; 04 D8
	tsb $D9.b		; 04 D9
	tsb $FC.b		; 04 FC
	tsb $F878.w		; 0C 78 F8
	sbc ($F1.b),Y		; F1 F1
	ora ($F1.b,X)		; 01 F1
	brk $81.b		; 00 81
	adc $82.b,S		; 63 82
	ora $F2.b,S		; 03 F2
	cmp $26.b		; C5 26
	jsr ($7803.w,X)		; FC 03 78
	ora [$F1.b]		; 07 F1
	asl $0E01.w		; 0E 01 0E
	ora ($7E.b,X)		; 01 7E
	adc $1C.b,S		; 63 1C
	ora ($0C.b,S),Y		; 13 0C
	cmp [$18.b]		; C7 18
	jsr $003E.w		; 20 3E 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $99.b		; 04 99
	sta $FB76.w,X		; 9D 76 FB
	txs		; 9A
	adc $6D.b		; 65 6D
	ora $20.b,S		; 03 20
	cmp ($00.b,X)		; C1 00
	sbc $04FB04.l,X		; FF 04 FB 04
	xce		; FB
	sta $FF62.w,X		; 9D 62 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	asl $4040.w		; 0E 40 40
	rti		; 40

	rti		; 40

	cpy #$40C0.w		; C0 C0 40
	cpy #$8181.w		; C0 81 81
	txy		; 9B
	txy		; 9B
	rol $0E3F.w,X		; 3E 3F 0E
	beq  64.b		; F0 40
	lda $C0BF40.l,X		; BF 40 BF C0
	and $813FC0.l,X		; 3F C0 3F 81
	ror $649B.w,X		; 7E 9B 64
	and $0000C0.l,X		; 3F C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $C3.b		; 00 C3
	sta ($66.b,X)		; 81 66
	cmp ($3E.b,X)		; C1 3E
	ora $231E.w,Y		; 19 1E 23
	bit $0E0D.w,X		; 3C 0D 0E
	bpl  31.b		; 10 1F
	rol $38.b,X		; 36 38
	ora $030E.w		; 0D 0E 03
	ora $00.b,S		; 03 00
	brk $1F.b		; 00 1F
	jsr $403F.w		; 20 3F 40
	ora $601F30.l		; 0F 30 1F 60
	and $700FC0.l,X		; 3F C0 0F 70
	ora $1C.b,S		; 03 1C
	brk $07.b		; 00 07
	mvp $C8,$7F		; 44 7F C8
	and $C703BE.l,X		; 3F BE 03 C7
	brk $B4.b		; 00 B4
	bmi   2.b		; 30 02
	inc A		; 1A
	mvn $B1,$9E		; 54 9E B1
	dec $0080.w,X		; DE 80 00
	cpy #$FC00.w		; C0 00 FC
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	brk $E5.b		; 00 E5
	brk $E1.b		; 00 E1
	brk $E1.b		; 00 E1
	brk $18.b		; 00 18
	txy		; 9B
	clc		; 18
	sta $9D12.w,X		; 9D 12 9D
	asl $99.b,X		; 16 99
	lda $3A.b,X		; B5 3A
	lda $7A.b,X		; B5 7A
	phy		; 5A
	ldy $00.b		; A4 00
	adc $9A609D.l,X		; 7F 9D 60 9A
	rts		; 60

	txs		; 9A
	rts		; 60

	stz $BD60.w,X		; 9E 60 BD
	rti		; 40

	sbc $7B00.w,X		; FD 00 7B
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	jmp.w [$302E]		; DC 2E 30
	adc $2B71.w		; 6D 71 2B
	sbc ($56.b,S),Y		; F3 56
	ldy #$7883.w		; A0 83 78
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cmp $C03F20.l,X		; DF 20 3F C0
	ror $FC80.w,X		; 7E 80 FC
	brk $FF.b		; 00 FF
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	adc $02FFF3.l,X		; 7F F3 FF 02
	sbc $588B00.l,X		; FF 00 8B 58
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	brk $D8.b		; 00 D8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D3.b		; 00 D3
	cmp $28CFB1.l		; CF B1 CF 28
	pei ($78.b)		; D4 78
	sty $F0.b		; 84 F0
	tsb $38C0.w		; 0C C0 38
	cpx #$0000.w		; E0 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	cmp $229F93.l,X		; DF 93 9F 22
	and $8A7D44.l,X		; 3F 44 7D 8A
	xce		; FB
	sty $F7.b,X		; 94 F7
	and $E6.b		; 25 E6
	and #$58EE.w		; 29 EE 58
	jsr $609B.w		; 20 9B 60
	and ($C0.b)		; 32 C0
	stz $82.b		; 64 82
	nop		; EA
	tsb $D6.b		; 04 D6
	php		; 08
	lda $18.b		; A5 18
	and $4110.w		; 2D 10 41
	xce		; FB
	.db $62, $FB, $40		; 62 FB 40
	jmp.w [$DF51]		; DC 51 DF
	eor #$48CF.w		; 49 CF 48
	cmp $00CF48.l		; CF 48 CF 00
	sbc $620065.l,X		; FF 65 00 62
	tsb $D4.b		; 04 D4
	and $DB.b,S		; 23 DB
	jsr $30CB.w		; 20 CB 30
	cmp $CD30.w		; CD 30 CD
	bmi -64.b		; 30 C0
	brk $80.b		; 00 80
	sta $A4CF48.l,X		; 9F 48 CF A4
	sbc [$49.b]		; E7 49
	ply		; 7A
	lsr A		; 4A
	adc $BFA0.w,X		; 7D A0 BF
	asl $1FF1.w		; 0E F1 1F
	lda ($90.b,X)		; A1 90
	rts		; 60

	lsr $A630.w		; 4E 30 A6
	clc		; 18
	eor $5B84.w,Y		; 59 84 5B
	bra -93.b		; 80 A3
	rti		; 40

	sta $403F00.l		; 8F 00 3F 40
	eor $C3.b		; 45 C3
	tyx		; BB
	sta [$40.b]		; 87 40
	bit $38F8.w,X		; 3C F8 38
	ldy $C06C.w		; AC 6C C0
	cpy #$8080.w		; C0 80 80
	dey		; 88
	dey		; 88
	and $007F00.l,X		; 3F 00 7F 00
	jsr ($F803.w,X)		; FC 03 F8
	ora [$EC.b]		; 07 EC
	ora ($C0.b)		; 12 C0
	rol $7E80.w,X		; 3E 80 7E
	dey		; 88
	adc [$4D.b],Y		; 77 4D
	rol $0E48.w		; 2E 48 0E
	pha		; 48
	asl $1E10.w		; 0E 10 1E
	bcc -98.b		; 90 9E
	sty $9C.b		; 84 9C
	cop $02.b		; 02 02
	eor $C3.b,S		; 43 C3
	eor $4C90.w		; 4D 90 4C
	lda ($4C.b),Y		; B1 4C
	lda ($1C.b),Y		; B1 1C
	sbc ($9C.b,X)		; E1 9C
	adc ($9C.b,X)		; 61 9C
	adc $02.b,S		; 63 02
	sbc $3CC3.w,X		; FD C3 3C
	ora $E6.b		; 05 E6
	eor $C6.b		; 45 C6
	rtl		; 6B

	jmp ($793F.w)		; 6C 3F 79
	ora ($79.b),Y		; 11 79
	plb		; AB
	cmp ($A2.b,S),Y		; D3 A2
	cmp $86.b,S		; C3 86
	cmp [$A7.b]		; C7 A7
	clc		; 18
	cmp [$38.b]		; C7 38
	adc $807E90.l		; 6F 90 7E 80
	ror $FC80.w,X		; 7E 80 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $2A.b		; 00 2A
	asl $0A.b		; 06 0A
	asl $44.b		; 06 44
	jmp $4D55.w		; 4C 55 4D
	cmp $5ACD.w,X		; DD CD 5A
	wai		; CB
	jmp ($ACCE.w,X)		; 7C CE AC
	sta $FE01FE.l,X		; 9F FE 01 FE
	ora ($BC.b,X)		; 01 BC
	ora $BD.b,S		; 03 BD
	cop $3D.b		; 02 3D
	cop $3B.b		; 02 3B
	tsb $3F.b		; 04 3F
	brk $7F.b		; 00 7F
	brk $29.b		; 00 29
	and $917A47.l,X		; 3F 47 7A 91
	cpy $CC03.w		; CC 03 CC
	rti		; 40

	sta $3BBF71.l		; 8F 71 BF 3B
	and $3FBF98.l,X		; 3F 98 BF 3F
	cpy #$807F.w		; C0 7F 80
	sbc $F702.w,X		; FD 02 F7
	brk $FE.b		; 00 FE
	brk $CF.b		; 00 CF
	brk $C4.b		; 00 C4
	brk $47.b		; 00 47
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	asl $1F16.w		; 0E 16 1F
	ora ($1C.b,S),Y		; 13 1C
	ora #$0C0E.w		; 09 0E 0C
	ora $0D0706.l		; 0F 06 07 0D
	asl $1C03.w		; 0E 03 1C
	ora $E01F70.l		; 0F 70 1F E0
	ora $700F60.l,X		; 1F 60 0F 70
	ora $180730.l		; 0F 30 07 18
	ora $F73710.l		; 0F 10 37 F7
	dec $323F.w		; CE 3F 32
	ora $049A.w		; 0D 9A 04
	rol $E122.w		; 2E 22 E1
	adc ($58.b,S),Y		; 73 58
	tda		; 7B
	jmp $F77F.w		; 4C 7F F7
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00DD00.l,X		; FF 00 DD 00
	sty $8400.w		; 8C 00 84
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	ora $C5A6.w		; 0D A6 C5
	and $0A33.w		; 2D 33 0A
	asl $3C30.w		; 0E 30 3C
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	bra  -5.b		; 80 FB
	brk $3F.b		; 00 3F
	cpy #$310E.w		; C0 0E 31
	bit $1C43.w,X		; 3C 43 1C
	adc $00.b,S		; 63 00
	and $E21C00.l,X		; 3F 00 1C E2
	xce		; FB
	ora ($F9.b,X)		; 01 F9
	ora ($F9.b,X)		; 01 F9
	brk $FD.b		; 00 FD
	rts		; 60

	lda $803ECC.l,X		; BF CC 3E 80
	tsa		; 3B
	brk $3F.b		; 00 3F
	sbc ($04.b,S),Y		; F3 04
	sbc #$E906.w		; E9 06 E9
	asl $DD.b		; 06 DD
	cop $FE.b		; 02 FE
	brk $FC.b		; 00 FC
	ora ($D1.b,X)		; 01 D1
	tsb $F4.b		; 04 F4
	brk $00.b		; 00 00
	bit $1860.w,X		; 3C 60 18
	rts		; 60

	sta $88F0.w,Y		; 99 F0 88
	bcs -52.b		; B0 CC
	bmi   7.b		; 30 07
	cpy $B7.b		; C4 B7
	lsr $39.b		; 46 39
	cpx #$E003.w		; E0 03 E0
	ora [$E0.b]		; 07 E0
	asl $F0.b		; 06 F0
	ora [$F4.b]		; 07 F4
	ora $33.b,S		; 03 33
	iny		; C8
	cmp $08.b		; C5 08
	lsr $80.b		; 46 80
	brk $E7.b		; 00 E7
	rti		; 40

	ora $00.b,S		; 03 00
	eor ($00.b,S),Y		; 53 00
	eor $00.b,S		; 43 00
	sbc [$01.b]		; E7 01
	sbc $0EF907.l,X		; FF 07 F9 0E
	inc $A0.b,X		; F6 A0
	clc		; 18
	rti		; 40

	ldy $AC40.w,X		; BC 40 AC
	eor ($BC.b,X)		; 41 BC
	sbc $18.b		; E5 18
	tyx		; BB
	brk $B7.b		; 00 B7
	brk $0E.b		; 00 0E
	ora ($26.b,X)		; 01 26
	cpy #$C92D.w		; C0 2D C9
	rol A		; 2A
	wai		; CB
	rol $1CDF.w,X		; 3E DF 1C
	eor $595F18.l,X		; 5F 18 5F 59
	eor $7F1F10.l,X		; 5F 10 1F 7F
	brk $F6.b		; 00 F6
	brk $F4.b		; 00 F4
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra  33.b		; 80 21
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80C0.w		; C0 C0 80
	bra -64.b		; 80 C0
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpy #$8020.w		; C0 20 80
	sei		; 78
	cpy #$8038.w		; C0 38 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$6080.w		; C0 80 60
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	cpy #$021F.w		; C0 1F 02
	asl $0D01.w		; 0E 01 0D
	cop $1B.b		; 02 1B
	asl $1C.b		; 06 1C
	trb $29.b		; 14 29
	php		; 08
	jsl $001C00.l		; 22 00 1C 00
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $0B.b		; 02 0B
	tsb $0F.b		; 04 0F
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	bra 120.b		; 80 78
	sta $08.b		; 85 08
	sbc $00.b,X		; F5 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	tsb $78.b		; 04 78
	sei		; 78
	cop $08.b		; 02 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $6040.w		; 20 40 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $60D8.w		; 20 D8 60
	bcc -112.b		; 90 90
	bmi  56.b		; 30 38
	bcc  48.b		; 90 30
	bra  15.b		; 80 0F
	beq -32.b		; F0 E0
	ora $3F403F.l,X		; 1F 3F 40 3F
	sbc $F0C0C0.l,X		; FF C0 C0 F0
	tsb $0078.w		; 0C 78 00
	bvs  15.b		; 70 0F
	ora $00E000.l		; 0F 00 E0 00
	and $00FF80.l,X		; 3F 80 FF 00
	cpy #$003F.w		; C0 3F 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rti		; 40

	.db $82, $48, $70		; 82 48 70
	txa		; 8A
	ora $FA.b		; 05 FA
	cpy #$00C7.w		; C0 C7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra -126.b		; 80 82
	bit $70.b,X		; 34 70
	ora $05.b		; 05 05
	brk $C0.b		; 00 C0
	jsr $E000.w		; 20 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($13.b)		; 12 13
	trb $1A1F.w		; 1C 1F 1A
	trb $1814.w		; 1C 14 18
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	cop $2D.b		; 02 2D
	ora $3C.b,S		; 03 3C
	ora ($2C.b,S),Y		; 13 2C
	ora $201F20.l,X		; 1F 20 1F 20
	ora $000060.l,X		; 1F 60 00 00
	jmp $C34C.w		; 4C 4C C3
	cmp $56EB24.l		; CF 24 EB 56
	lda $10EF.w,Y		; B9 EF 10
	adc $1C10.w		; 6D 10 1C
	tsb $00.b		; 04 00
	sbc $CFB34C.l,X		; FF 4C B3 CF
	bmi -17.b		; 30 EF
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $DA.b		; 00 DA
	xce		; FB
	lsr $037F.w		; 4E 7F 03
	and $0CB7A9.l,X		; 3F A9 B7 0C
	sta ($C6.b,S),Y		; 93 C6
	cmp $58D7.w,Y		; D9 D7 58
	eor ($5C.b)		; 52 5C
	xce		; FB
	tsb $7F.b		; 04 7F
	bra  63.b		; 80 3F
	cpy #$40BF.w		; C0 BF 40
	sta $20DF60.l,X		; 9F 60 DF 20
	cmp $20DF20.l,X		; DF 20 DF 20
	stz $FB.b		; 64 FB
	sty $7B.b		; 84 7B
	wai		; CB
	bmi  -7.b		; 30 F9
	brk $48.b		; 00 48
	bra  64.b		; 80 40
	bra  72.b		; 80 48
	dey		; 88
	sbc $FF0D.w		; ED 0D FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $F2.b		; 00 F2
	brk $07.b		; 00 07
	sbc [$40.b]		; E7 40
	lda [$80.b],Y		; B7 80
	adc $00F930.l,X		; 7F 30 F9 00
	sbc $003EC1.l		; EF C1 3E 00
	adc ($81.b,S),Y		; 73 81
	cpx #$18A7.w		; E0 A7 18
	adc [$08.b],Y		; 77 08
	plx		; FA
	brk $F0.b		; 00 F0
	asl $46.b		; 06 46
	bpl -47.b		; 10 D1
	brk $82.b		; 00 82
	tsb $1E01.w		; 0C 01 1E
	bpl  30.b		; 10 1E
	brk $CE.b		; 00 CE
	bpl  -2.b		; 10 FE
	brk $5E.b		; 00 5E
	brk $EE.b		; 00 EE
	ora ($FE.b,X)		; 01 FE
	ora ($9E.b,X)		; 01 9E
	ora ($0C.b,X)		; 01 0C
	tas		; 1B
	cpx #$31CE.w		; E0 CE 31
	inc $0601.w,X		; FE 01 06
	lda ($A4.b,X)		; A1 A4
	ora ($15.b),Y		; 11 15
	brk $81.b		; 00 81
	rts		; 60

	ora $F0.b,S		; 03 F0
	bra -64.b		; 80 C0
	ora ($01.b,X)		; 01 01
	sta ($81.b,X)		; 81 81
	ora ($01.b,X)		; 01 01
	inx		; E8
	inx		; E8
	cli		; 58
	cld		; D8
	pha		; 48
	sed		; F8
	sty $307C.w		; 8C 7C 30
	ora $813EC1.l		; 0F C1 3E 81
	ror $FE01.w,X		; 7E 01 FE
	inx		; E8
	ora [$D8.b],Y		; 17 D8
	and [$F8.b]		; 27 F8
	ora [$FC.b]		; 07 FC
	ora $AC.b,S		; 03 AC
	sbc ($8B.b)		; F2 8B
	sbc ($9B.b),Y		; F1 9B
	sbc ($92.b,X)		; E1 92
	sbc ($91.b,X)		; E1 91
	cpx #$C1B0.w		; E0 B0 C1
	sbc ($C0.b,X)		; E1 C0
	and $FE2C.w,X		; 3D 2C FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $33.b		; 00 33
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora #$0009.w		; 09 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	phd		; 0B
	ora ($0E.b,X)		; 01 0E
	ora #$0116.w		; 09 16 01
	ora ($1B.b,X)		; 01 1B
	tas		; 1B
	and ($39.b),Y		; 31 39
	and $3D.b		; 25 3D
	adc $774A77.l		; 6F 77 4A 77
	eor ($67.b)		; 52 67
	cmp ($E0.b),Y		; D1 E0
	ora ($3E.b,X)		; 01 3E
	tas		; 1B
	tsb $39.b		; 04 39
	dec $3D.b		; C6 3D
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	brk $09.b		; 00 09
	plp		; 28
	stz $1A1C.w		; 9C 1C 1A
	asl $3B3D.w,X		; 1E 3D 3B
	and $3D1839.l,X		; 3F 39 18 3D
	asl A		; 0A
	bit $2D31.w,X		; 3C 31 2D
	cmp #$9C16.w		; C9 16 9C
	adc $1E.b,S		; 63 1E
	sbc ($3F.b,X)		; E1 3F
	cpy #$C03F.w		; C0 3F C0
	and $403F40.l,X		; 3F 40 3F 40
	rol $EC40.w,X		; 3E 40 EC
	ora $2DACEB.l		; 0F EB AC 2D
	pla		; 68
	ora $58.b,X		; 15 58
	eor $8850.w,X		; 5D 50 88
	sta ($7B.b),Y		; 91 7B
	cpx #$2353.w		; E0 53 23
	sbc $10EF10.l		; EF 10 EF 10
	adc $A05F90.l		; 6F 90 5F A0
	eor $609FA0.l,X		; 5F A0 9F 60
	sbc $00FC00.l,X		; FF 00 FC 00
	rti		; 40

	eor $9916.w,X		; 5D 16 99
	bra  79.b		; 80 4F
	bcc 113.b		; 90 71
	and $DC.b		; 25 DC
	tsx		; BA
	rol $6E.b		; 26 6E
	ror $AA.b		; 66 AA
	sbc [$20.b]		; E7 20
	.db $82, $86, $60		; 82 86 60
	cpy #$F130.w		; C0 30 F1
	asl $02FD.w		; 0E FD 02
	cmp $019800.l,X		; DF 00 98 01
	clc		; 18
	brk $97.b		; 00 97
	sta $30FFF0.l,X		; 9F F0 FF 30
	plx		; FA
	and $EA.b		; 25 EA
	brk $EF.b		; 00 EF
	ora [$E8.b]		; 07 E8
	bit $BB.b,X		; 34 BB
	bit $BB.b		; 24 BB
	sta [$60.b],Y		; 97 60
	beq   0.b		; F0 00
	bvs   5.b		; 70 05
	adc $10.b		; 65 10
	rts		; 60

	bpl 103.b		; 10 67
	bpl  54.b		; 10 36
	rti		; 40

	rol $40.b,X		; 36 40
	iny		; C8
	sed		; F8
	bmi -16.b		; 30 F0
	rts		; 60

	cpx #$8080.w		; E0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora [$F0.b]		; 07 F0
	ora $8019E0.l		; 0F E0 19 80
	bvs   0.b		; 70 00
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	trb $1E1D.w		; 1C 1D 1E
	ora ($1F.b)		; 12 1F
	ora ($1E.b),Y		; 11 1E
	asl $08.b		; 06 08
	phd		; 0B
	ora $0605.w		; 0D 05 06
	ora $1F0E.w		; 0D 0E 1F
	cpx #$E01F.w		; E0 1F E0
	ora $601FE0.l,X		; 1F E0 1F 60
	ora $100E50.l		; 0F 50 0E 10
	ora [$18.b]		; 07 18
	ora $7C7C30.l		; 0F 30 7C 7C
	lda $9F453F.l		; AF 3F 45 9F
	cpx #$101F.w		; E0 1F 10
	ora $C0FF00.l,X		; 1F 00 FF C0
	xce		; FB
	brk $73.b		; 00 73
	sta $00.b,S		; 83 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	tsb $1816.w		; 0C 16 18
	ora $0C0908.l		; 0F 08 09 0C
	.db $82, $80, $03		; 82 80 03
	plx		; FA
	cop $3E.b		; 02 3E
	bpl  -8.b		; 10 F8
	asl $E7.b		; 06 E7
	sta $708F60.l,X		; 9F 60 8F 70
	sta $3C4370.l		; 8F 70 43 3C
	and $C02100.l,X		; 3F 00 21 C0
	cpy #$0707.w		; C0 07 07
	clc		; 18
	phk		; 4B
	ora $5C0705.l		; 0F 05 07 5C
	eor $663F3E.l,X		; 5F 3E 3F 66
	adc $103FB6.l,X		; 7F B6 3F 10
	and $F03F00.l,X		; 3F 00 3F F0
	brk $F8.b		; 00 F8
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	bra -27.b		; 80 E5
	cpy #$40E1.w		; C0 E1 40
	sbc ($40.b,S),Y		; F3 40
	cmp $18DF10.l,X		; DF 10 DF 18
	sbc [$4B.b]		; E7 4B
	stz $81.b,X		; 74 81
	sta $011A01.l,X		; 9F 01 1A 01
	asl $0C13.w,X		; 1E 13 0C
	asl $1620.w		; 0E 20 16
	jsr $0018.w		; 20 18 00
	phk		; 4B
	bra -127.b		; 80 81
	rts		; 60

	brk $4D.b		; 00 4D
	brk $08.b		; 00 08
	tsb $98.b		; 04 98
	ora #$10F1.w		; 09 F1 10
	sbc $CB0A.w		; ED 0A CB
	dec $C03F.w,X		; DE 3F C0
	sbc $07B003.l,X		; FF 03 B0 07
	beq -105.b		; F0 97
	rts		; 60

	inc $DE00.w		; EE 00 DE
	brk $14.b		; 00 14
	jsr $00C0.w		; 20 C0 00
	cpy #$1C00.w		; C0 00 1C
	ldy $8F33.w		; AC 33 8F
	lda $AC83.w,X		; BD 83 AC
	phb		; 8B
	sta $DB9A.w,Y		; 99 9A DB
	cmp $D85A.w,Y		; D9 5A D8
	.db $62, $F0, $FC		; 62 F0 FC
	ora $FF.b,S		; 03 FF
	brk $7F.b		; 00 7F
	brk $77.b		; 00 77
	brk $67.b		; 00 67
	brk $27.b		; 00 27
	brk $26.b		; 00 26
	ora ($0E.b,X)		; 01 0E
	ora ($3C.b,X)		; 01 3C
	bit $1414.w,X		; 3C 14 14
	stx $B586.w		; 8E 86 B5
	lda ($9B.b),Y		; B1 9B
	sta $0C04.w,Y		; 99 04 0C
	asl A		; 0A
	asl $1E1A.w		; 0E 1A 1E
	and ($C0.b,S),Y		; 33 C0
	tas		; 1B
	cpx #$7089.w		; E0 89 70
	ldx $48.b,Y		; B6 48
	txs		; 9A
	stz $0D.b		; 64 0D
	sbc ($0E.b)		; F2 0E
	sbc ($1E.b),Y		; F1 1E
	sbc ($0D.b,X)		; E1 0D
	ora $0703.w		; 0D 03 07
	tsb $07.b		; 04 07
	ora $06.b		; 05 06
	ora $06.b		; 05 06
	cop $03.b		; 02 03
	ora $02.b,S		; 03 02
	ora [$07.b]		; 07 07
	ora $0712.w		; 0D 12 07
	sec		; 38
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora [$18.b]		; 07 18
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	ora [$00.b]		; 07 00
	rts		; 60

	cpy #$E808.w		; C0 08 E8
	ldy $4F48.w		; AC 48 4F
	php		; 08
	asl $771F.w,X		; 1E 1F 77
	adc $231F9B.l,X		; 7F 9B 1F 23
	sta $F700FF.l,X		; 9F FF 00 F7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $E1.b		; 00 E1
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	brk $0A.b		; 00 0A
	ora ($05.b)		; 12 05
	ora #$0402.w		; 09 02 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $201DE0.l,X		; 1F E0 1D 20
	asl $0730.w		; 0E 30 07
	clc		; 18
	ora ($0E.b,X)		; 01 0E
	brk $0D.b		; 00 0D
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sta ($91.b),Y		; 91 91
	ldy $4BEC.w		; AC EC 4B
	adc $B0FFE2.l,X		; 7F E2 FF B0
	and $07C620.l,X		; 3F 20 C6 07
	ora $0101.w,Y		; 19 01 01
	ror $1300.w		; 6E 00 13
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F9.b		; 00 F9
	brk $1F.b		; 00 1F
	cpx #$3E01.w		; E0 01 3E
	bcs  -1.b		; B0 FF
	bcc  -1.b		; 90 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bvs   7.b		; 70 07
	.db $82, $83, $00		; 82 83 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $8C.b		; 00 8C
	bvs  15.b		; 70 0F
	beq  32.b		; F0 20
	and $447C45.l,X		; 3F 45 7C 44
	jmp ($7D15.w,X)		; 7C 15 7D
	ora [$BF.b]		; 07 BF
	ora $FF.b,S		; 03 FF
	asl A		; 0A
	xce		; FB
	sta ($FB.b)		; 92 FB
	rol $C0.b,X		; 36 C0
	adc ($82.b),Y		; 71 82
	bvs -125.b		; 70 83
	adc ($82.b),Y		; 71 82
	and $40.b,S		; 23 40
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	phd		; 0B
	tsb $01.b		; 04 01
	ora ($08.b,X)		; 01 08
	bit #$C848.w		; 89 48 C8
	plp		; 28
	inx		; E8
	bit $9CFC.w,X		; 3C FC 9C
	jmp ($7C8C.w,X)		; 7C 8C 7C
	dec $003E.w		; CE 3E 00
	inc $7688.w,X		; FE 88 76
	iny		; C8
	and [$E8.b],Y		; 37 E8
	ora [$FC.b],Y		; 17 FC
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora $FE.b,S		; 03 FE
	ora ($ED.b,X)		; 01 ED
	inc $FE79.w		; EE 79 FE
	jsl $F886FC.l		; 22 FC 86 F8
	eor [$41.b]		; 47 41
	and ($21.b,X)		; 21 21
	and $2D39.w,Y		; 39 39 2D
	and $100F.w		; 2D 0F 10
	adc $00BF00.l,X		; 7F 00 BF 00
	sta $807E00.l,X		; 9F 00 7E 80
	rol $26C0.w,X		; 3E C0 26
	cpy #$C032.w		; C0 32 C0
	bne -13.b		; D0 F3
	brk $F1.b		; 00 F1
	ora ($30.b)		; 12 30
	bcc  50.b		; 90 32
	bit $E0.b,X		; 34 E0
	sec		; 38
	sta $3E.b		; 85 3E
	sta ($FE.b),Y		; 91 FE
	cmp ($D0.b,X)		; C1 D0
	tsb $0E30.w		; 0C 30 0E
	and ($CD.b)		; 32 CD
	lda ($4D.b)		; B2 4D
	stz $0B.b,X		; 74 0B
	sec		; 38
	.db $42, $BE		; 42 BE
	rti		; 40

	inc $4200.w,X		; FE 00 42
	sbc ($5C.b)		; F2 5C
	jsr ($F818.w,X)		; FC 18 F8
	ora #$C1FD.w		; 09 FD C1
	sbc $7909.w,Y		; F9 09 79
	ora ($31.b,X)		; 01 31
	cop $13.b		; 02 13
	asl $0001.w		; 0E 01 00
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	stx $01.b		; 86 01
	dec $EC03.w		; CE 03 EC
	tad		; 5B
	cpx $29.b		; E4 29
	cpy $CD.b		; C4 CD
	brk $1C.b		; 00 1C
	ora ($B3.b),Y		; 11 B3
	clv		; B8
	adc ($78.b,S),Y		; 73 78
	cpx #$CFF8.w		; E0 F8 CF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $47.b		; 00 47
	brk $87.b		; 00 87
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	adc $F938.w,Y		; 79 38 F9
	plp		; 28
	sbc $F969.w,Y		; F9 69 F9
	jmp ($0EFD.w)		; 6C FD 0E
	sbc $E63FCE.l,X		; FF CE 3F E6
	asl $06F8.w,X		; 1E F8 06
	sed		; F8
	asl $F8.b		; 06 F8
	asl $F8.b		; 06 F8
	asl $FC.b		; 06 FC
	cop $FE.b		; 02 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($1C.b,X)		; 01 1C
	trb $1F17.w		; 1C 17 1F
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($3E.b,X)		; 01 3E
	trb $1F63.w		; 1C 63 1F
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	cld		; D8
	jmp.w [$DA54]		; DC 54 DA
	phb		; 8B
	sbc ($D3.b),Y		; F1 D3
	ldx #$86E7.w		; A2 E7 86
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	bcc 104.b		; 90 68
	jmp.w [$DE23]		; DC 23 DE
	and ($FF.b,X)		; 21 FF
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $8E.b,S		; 03 8E
	sta $EDCE49.l		; 8F 49 CE ED
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $8FDC03.l		; 0F 03 DC 8F
	bvs -49.b		; 70 CF
	bmi  -1.b		; 30 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	cpy #$E020.w		; C0 20 E0
	bcc 112.b		; 90 70
	bcs 112.b		; B0 70
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	ldy #$30C0.w		; A0 C0 30
	cpy #$E030.w		; C0 30 E0
	clc		; 18
	beq  14.b		; F0 0E
	beq  12.b		; F0 0C
	sty $FE.b,X		; 94 FE
	sty $FC.b		; 84 FC
	cpy $221C.w		; CC 1C 22
	dec $7EF0.w,X		; DE F0 7E
	sta ($07.b,X)		; 81 07
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	cpx $03.b		; E4 03
	inc $01.b		; E6 01
	.db $82, $01, $83		; 82 01 83
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $62.b		; 00 62
	adc $107F72.l,X		; 7F 72 7F 10
	and $233916.l,X		; 3F 16 39 23
	trb $1D04.w		; 1C 04 1D
	cmp $FD.b		; C5 FD
	cmp $7D.b		; C5 7D
	adc $807F80.l,X		; 7F 80 7F 80
	and $C03FC0.l,X		; 3F C0 3F C0
	and $C23DC0.l,X		; 3F C0 3D C2
	cmp $DD02.w,X		; DD 02 DD
	cop $D3.b		; 02 D3
	lda ($8F.b)		; B2 8F
	asl $AE3C.w,X		; 1E 3C AE
	stz $AA.b		; 64 AA
	cmp $16.b,X		; D5 16
	dec $2E0F.w		; CE 0F 2E
	cmp $F3C725.l		; CF 25 C7 F3
	tsb $00FF.w		; 0C FF 00
	cmp $00DF00.l,X		; DF 00 DF 00
	xba		; EB
	brk $F1.b		; 00 F1
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $55.b		; 00 55
	sbc $12.b,S		; E3 12
	sbc [$A0.b]		; E7 A0
	eor [$CB.b]		; 47 CB
	tsb $4A.b		; 04 4A
	tsb $B7.b		; 04 B7
	and #$6179.w		; 29 79 61
	sbc $E3.b,S		; E3 E3
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00DE00.l,X		; FF 00 DE 00
	stz $1C00.w,X		; 9E 00 1C
	brk $6A.b		; 00 6A
	inc $FEE2.w		; EE E2 FE
	sty $7AF2.w		; 8C F2 7A
	asl $EE.b		; 06 EE
	.db $82, $57, $11		; 82 57 11
	trb $13.b		; 14 13
	sbc $E0.b,S		; E3 E0
	inc $FE11.w		; EE 11 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($7E.b,X)		; 01 7E
	ora ($EF.b,X)		; 01 EF
	brk $EF.b		; 00 EF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -128.b		; 70 80
	dey		; 88
	beq  -8.b		; F0 F8
	jsr $D030.w		; 20 30 D0
	iny		; C8
	jsr $00E4.w		; 20 E4 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bvs -16.b		; 70 F0
	brk $20.b		; 00 20
	cpy #$20D0.w		; C0 D0 20
	cpx #$7218.w		; E0 18 72
	asl $42.b		; 06 42
	asl $2C.b		; 06 2C
	tsb $2E.b		; 04 2E
	rol $F626.w		; 2E 26 F6
	cmp [$F7.b],Y		; D7 F7
	dec $F7.b,X		; D6 F7
	asl $E7.b		; 06 E7
	inc $FE01.w,X		; FE 01 FE
	ora ($FC.b,X)		; 01 FC
	ora $DE.b,S		; 03 DE
	ora ($D6.b,X)		; 01 D6
	ora #$0817.w		; 09 17 08
	ora [$08.b],Y		; 17 08
	and [$18.b]		; 27 18
	ldx $8AAF.w		; AE AF 8A
	sta [$DC.b],Y		; 97 DC
	cmp [$A0.b]		; C7 A0
	xce		; FB
	rti		; 40

	adc $50.b,S		; 63 50
	sei		; 78
	tsb $3C.b		; 04 3C
	bit $B8.b,X		; 34 B8
	bcs  64.b		; B0 40
	tya		; 98
	rts		; 60

	cld		; D8
	jsr $00FC.w		; 20 FC 00
	rts		; 60

	stz $8778.w		; 9C 78 87
	bit $BCC3.w,X		; 3C C3 BC
	eor $64.b,S		; 43 64
	mvp $0C,$CC		; 44 CC 0C
	txa		; 8A
	asl $1F13.w		; 0E 13 1F
	bit $3B.b,X		; 34 3B
	bit $3B.b		; 24 3B
	sbc $CDF2.w		; ED F2 CD
	sbc ($64.b)		; F2 64
	txy		; 9B
	cpy $8E33.w		; CC 33 8E
	adc ($1F.b),Y		; 71 1F
	cpx #$C03F.w		; E0 3F C0
	and $00FFC0.l,X		; 3F C0 FF 00
	sbc $838200.l,X		; FF 00 82 83
	mvp $01,$47		; 44 47 01
	lsr $21.b		; 46 21
.ACCU 8
	sep #$23		; E2 23
	sbc $A3.b,S		; E3 A3
	adc $A0.b,S		; 63 A0
	adc ($90.b,X)		; 61 90
	eor ($83.b),Y		; 51 83
	jmp ($B847.w,X)		; 7C 47 B8
	eor [$B8.b]		; 47 B8
	sbc $1C.b,S		; E3 1C
.INDEX 8
	sep #$1C		; E2 1C
.INDEX 8
	sep #$1C		; E2 1C
	cpx #$1E.b		; E0 1E
	bne  46.b		; D0 2E
	cli		; 58
	inc $C080.w,X		; FE 80 C0
	brk $E0.b		; 00 E0
	bpl -48.b		; 10 D0
	ora ($91.b),Y		; 11 91
	asl A		; 0A
	tas		; 1B
	rol $2C3F.w		; 2E 3F 2C
	and $300104.l,X		; 3F 04 01 30
	ora $101F20.l		; 0F 20 1F 10
	and $1B6E11.l		; 2F 11 6E 1B
	cpx $3F.b		; E4 3F
	cpy #$3F.b		; C0 3F
	cpy #$20.b		; C0 20
	sec		; 38
	brk $00.b		; 00 00
	mvp $CC,$44		; 44 44 CC
	cpy $9C1C.w		; CC 1C 9C
	jsr $CCB8.w		; 20 B8 CC
	jmp ($5CB8.w,X)		; 7C B8 5C
	and $00C6.w,Y		; 39 C6 00
	sbc $CCBB44.l,X		; FF 44 BB CC
	and ($9C.b,S),Y		; 33 9C
	adc $B8.b,S		; 63 B8
	eor [$FC.b]		; 47 FC
	ora $FC.b,S		; 03 FC
	ora $33.b,S		; 03 33
	and $103F30.l,X		; 3F 30 3F 10
	ora $D81F10.l,X		; 1F 10 1F D8
	cmp $28CF48.l,X		; DF 48 CF 28
	inc $FE38.w		; EE 38 FE
	and $C03FC0.l,X		; 3F C0 3F C0
	ora $E01EE0.l,X		; 1F E0 1E E0
	jmp.w [$CE20]		; DC 20 CE
	bmi -20.b		; 30 EC
	ora ($FA.b),Y		; 11 FA
	ora ($6F.b,X)		; 01 6F
	sta $483FC4.l		; 8F C4 3F 48
	cmp $31CF49.l		; CF 49 CF 31
	sbc $82FF00.l,X		; FF 00 FF 82
	inc $7E46.w,X		; FE 46 7E
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	pha		; 48
	bmi -51.b		; 30 CD
	bmi  -3.b		; 30 FD
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	ora ($7E.b,X)		; 01 7E
	sta ($BD.b,X)		; 81 BD
	jmp $25BCFD.l		; 5C FD BC 25
	pea $F0C1.w		; F4 C1 F0
	inc $F6.b		; E6 F6
	lda $FF1BFF.l,X		; BF FF 1B FF
	bvc  -2.b		; 50 FE
	sbc $00.b,S		; E3 00
	eor $00.b,S		; 43 00
	phd		; 0B
	brk $CF.b		; 00 CF
	brk $E9.b		; 00 E9
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $61.b		; 00 61
	brk $60.b		; 00 60
	cpx #$28.b		; E0 28
	cld		; D8
	beq  16.b		; F0 10
	mvn $D8,$0C		; 54 0C D8
	iny		; C8
	lda $719D.w		; AD 9D 71
	ora ($45.b),Y		; 11 45
	and $E0.b		; 25 E0
	trb $06F8.w		; 1C F8 06
	beq  14.b		; F0 0E
	jsr ($3803.w,X)		; FC 03 38
	ora [$7D.b]		; 07 7D
	cop $F1.b		; 02 F1
	asl $1AE5.w		; 0E E5 1A
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $5D.b		; 85 5D
	bit $5C.b		; 24 5C
	and $31CD.w,X		; 3D CD 31
	eor #$0B.b		; 49 0B
	bit $00.b,X		; 34 00
	ora $000000.l		; 0F 00 00 00
	brk $BD.b		; 00 BD
	cop $AC.b		; 02 AC
	ora $3D.b,S		; 03 3D
	cop $39.b		; 02 39
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D2.b		; 00 D2
	lda $A8.b,S		; A3 A8
	cmp ($F6.b),Y		; D1 F6
	wai		; CB
	sta ($61.b,X)		; 81 61
	clc		; 18
	tay		; A8
	ora [$07.b],Y		; 17 07
	ora $000707.l,X		; 1F 07 07 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $37.b		; 00 37
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $07.b		; 00 07
	brk $56.b		; 00 56
	sbc [$72.b],Y		; F7 72
	sbc $00FF20.l,X		; FF 20 FF 00
	inc $0020.w,X		; FE 20 00
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	inc $E100.w,X		; FE 00 E1
	brk $80.b		; 00 80
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
	mvn $1C,$32		; 54 32 1C
	dex		; CA
	tsb $0025.w		; 0C 25 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $3C08.w		; F4 08 3C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi -16.b		; 30 F0
	beq -80.b		; F0 B0
	beq -80.b		; F0 B0
	beq  32.b		; F0 20
	cpx #$60.b		; E0 60
	ldy #$E0.b		; A0 E0
	jsr $30F0.w		; 20 F0 30
	bmi -56.b		; 30 C8
	beq  14.b		; F0 0E
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	cpx #$18.b		; E0 18
	cpx #$18.b		; E0 18
	cpx #$1C.b		; E0 1C
	beq  14.b		; F0 0E
	cop $11.b		; 02 11
	ora ($30.b,X)		; 01 30
	clc		; 18
	ror $3C.b,X		; 76 3C
	adc $34.b,S		; 63 34
	cmp $25.b,S		; C3 25
	txa		; 8A
	lsr $CE.b		; 46 CE
	cli		; 58
	cmp [$EF.b]		; C7 EF
	brk $CF.b		; 00 CF
	brk $89.b		; 00 89
	brk $9C.b		; 00 9C
	brk $3C.b		; 00 3C
	brk $7D.b		; 00 7D
	brk $38.b		; 00 38
	ora ($3F.b,X)		; 01 3F
	brk $3F.b		; 00 3F
	sta $40.b,S		; 83 40
	cmp [$6E.b]		; C7 6E
	sbc $F314.w,Y		; F9 14 F3
	and #$E7.b		; 29 E7
	eor ($CE.b)		; 52 CE
	ldx $8E.b,Y		; B6 8E
	ldy $7F9C.w		; AC 9C 7F
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	ora ($7E.b,X)		; 01 7E
	ora ($7C.b,X)		; 01 7C
	cop $0C.b		; 02 0C
	bit $7838.w,X		; 3C 38 78
	bvs 112.b		; 70 70
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	jsr ($F802.w,X)		; FC 02 F8
	tsb $70.b		; 04 70
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sei		; 78
	bmi -56.b		; 30 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1F3C.w,X		; 3C 3C 1F
	ora $000000.l,X		; 1F 00 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	trb $0F00.w		; 1C 00 0F
	brk $3F.b		; 00 3F
	bit $1F03.w,X		; 3C 03 1F
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	sbc ($F3.b,S),Y		; F3 F3
	and $4D79.w,Y		; 39 79 4D
	adc $0000.w,X		; 7D 00 00
	brk $80.b		; 00 80
	brk $C1.b		; 00 C1
	bra 120.b		; 80 78
	cpy #$3F.b		; C0 3F
	sbc ($0C.b,S),Y		; F3 0C
	adc $7D86.w,Y		; 79 86 7D
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	ldy #$E0.b		; A0 E0
	jsr $60E0.w		; 20 E0 60
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	bcs  64.b		; B0 40
	clv		; B8
	cpx #$10.b		; E0 10
	cpx #$18.b		; E0 18
	cpx #$10.b		; E0 10
	rol $2330.w		; 2E 30 23
	bit $1C13.w,X		; 3C 13 1C
	trb $061F.w		; 1C 1F 06
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$3F.b		; C0 3F
	cpy #$1F.b		; C0 1F
	jsr $201F.w		; 20 1F 20
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cpx #$14.b		; E0 14
	jsr $00D4.w		; 20 D4 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -32.b		; 10 E0
	cpx #$08.b		; E0 08
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	rts		; 60

	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	brk $40.b		; 00 40
	bmi -128.b		; 30 80
	ldy #$00.b		; A0 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr $20C0.w		; 20 C0 20
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	rts		; 60

	bpl   0.b		; 10 00
	beq  26.b		; F0 1A
	trb $1C1B.w		; 1C 1B 1C
	brk $07.b		; 00 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $201F60.l,X		; 1F 60 1F 20
	ora [$38.b]		; 07 38
	ora $1C.b,S		; 03 1C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($9F.b,S),Y		; 93 9F
	plb		; AB
	lda [$6B.b],Y		; B7 6B
	sbc [$7B.b],Y		; F7 7B
	sbc [$B1.b]		; E7 B1
	adc [$91.b]		; 67 91
	adc [$B4.b]		; 67 B4
	eor $64.b,S		; 43 64
	ora ($9F.b,S),Y		; 13 9F
	rts		; 60

	lda $00FF40.l,X		; BF 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l		; EF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	eor [$17.b]		; 47 17
	sec		; 38
	clv		; B8
	cmp [$C0.b]		; C7 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	cop $BF.b		; 02 BF
	brk $FF.b		; 00 FF
	dec $FE.b		; C6 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $B030.w		; 20 30 B0
	bmi  16.b		; 30 10
	bra   3.b		; 80 03
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $F8.b		; 00 F8
	jsr $00F0.w		; 20 F0 00
	bne   0.b		; D0 00
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $08.b,S		; 03 08
	ora [$09.b]		; 07 09
	asl $13.b		; 06 13
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora $3100.w		; 0D 00 31
	asl $3D62.w,X		; 1E 62 3D
	cpy $997B.w		; CC 7B 99
	sbc [$3A.b],Y		; F7 3A
	sbc [$F6.b]		; E7 F6
	eor $CC9FEC.l		; 4F EC 9F CC
	and $3D001E.l,X		; 3F 1E 00 3D
	brk $7B.b		; 00 7B
	brk $F7.b		; 00 F7
	brk $E7.b		; 00 E7
	brk $4F.b		; 00 4F
	brk $9F.b		; 00 9F
	brk $3F.b		; 00 3F
	brk $5C.b		; 00 5C
	and ($8C.b,S),Y		; 33 8C
	adc ($A8.b,S),Y		; 73 A8
	adc [$A8.b],Y		; 77 A8
	adc [$A8.b],Y		; 77 A8
	adc [$AA.b],Y		; 77 AA
	adc [$AA.b],Y		; 77 AA
	adc [$6A.b],Y		; 77 6A
	and [$33.b],Y		; 37 33
	brk $73.b		; 00 73
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $37.b		; 00 37
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $AE.b		; 00 AE
	adc ($74.b),Y		; 71 74
	adc ($74.b,S),Y		; 73 74
	adc ($70.b,S),Y		; 73 70
	tda		; 7B
	bmi 123.b		; 30 7B
	sec		; 38
	xce		; FB
	stz $74.b,X		; 74 74
	php		; 08
	php		; 08
	ora $74.b		; 05 74
	and $F8.b,S		; 23 F8
	and ($F8.b,S),Y		; 33 F8
	and ($FC.b,S),Y		; 33 FC
	and ($FC.b,S),Y		; 33 FC
	sta ($7C.b,S),Y		; 93 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $4205.w,X		; 3E 05 42
	cop $80.b		; 02 80
	bra -127.b		; 80 81
	ora ($52.b,X)		; 01 52
	.db $42, $20		; 42 20
	ldy $0000.w,X		; BC 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $43.b		; 00 43
	bra -127.b		; 80 81
	brk $85.b		; 00 85
	eor $7F.b,S		; 43 7F
	ora $BB.b,S		; 03 BB
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	eor [$80.b]		; 47 80
	adc [$A1.b],Y		; 77 A1
	asl $E6.b,X		; 16 E6
	adc ($72.b)		; 72 72
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $53.b		; 00 53
	brk $DF.b		; 00 DF
	brk $7F.b		; 00 7F
	asl $3F.b		; 06 3F
	cpx #$FE.b		; E0 FE
	cpy #$D4.b		; C0 D4
	ldx $BCA1.w,Y		; BE A1 BC
	cmp $70.b,S		; C3 70
	sta $80FE01.l		; 8F 01 FE 80
	sbc $9CFF60.l,X		; FF 60 FF 9C
	adc $A10F33.l,X		; 7F 33 0F A1
	inc $A0C3.w,X		; FE C3 A0
	ora $00FE80.l		; 0F 80 FE 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $000F00.l,X		; 7F 00 0F 00
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	stx $E070.w		; 8E 70 E0
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	cpy #$06.b		; C0 06
	sed		; F8
	cmp ($FE.b,X)		; C1 FE
	sbc $00FE00.l,X		; FF 00 FE 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $47.b		; 00 47
	sed		; F8
	sta $C03FE0.l,X		; 9F E0 3F C0
	adc $BC4380.l,X		; 7F 80 43 BC
	sta $3E62.w		; 8D 62 3E
	cpy #$7A.b		; C0 7A
	sty $FE.b		; 84 FE
	asl $F8.b		; 06 F8
	clc		; 18
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	tya		; 98
	clc		; 18
	bit $7E20.w,X		; 3C 20 7E
	eor ($FE.b,X)		; 41 FE
	sta $07.b		; 85 07
	inx		; E8
	adc [$F8.b]		; 67 F8
	ldy $6B.b		; A4 6B
	cpx $0B.b		; E4 0B
	sed		; F8
	ora [$F8.b]		; 07 F8
	ora [$1F.b]		; 07 1F
	cpx #$3A.b		; E0 3A
	sbc $E8F8.w,X		; FD F8 E8
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	clc		; 18
	jsr ($20D0.w,X)		; FC D0 20
	rol $D0.b		; 26 D0
	and #$D6.b		; 29 D6
	lsr A		; 4A
	ldy $54.b,X		; B4 54
	tay		; A8
	bvs -128.b		; 70 80
	iny		; C8
	bmi   5.b		; 30 05
	sed		; F8
	jsr $D020.w		; 20 20 D0
	bne  66.b		; D0 42
	.db $42, $84		; 42 84
	sty $80.b		; 84 80
	bra   0.b		; 80 00
	brk $30.b		; 00 30
	bmi   8.b		; 30 08
	php		; 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	ora $18.b,S		; 03 18
	ora [$30.b]		; 07 30
	asl $1E60.w		; 0E 60 1E
	cpy #$00.b		; C0 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $203F10.l,X		; 1F 10 3F 20
	adc $3FC040.l,X		; 7F 40 C0 3F
	cmp $3C.b,S		; C3 3C
	sty $7B.b		; 84 7B
	stx $79.b		; 86 79
	.db $82, $7D, $81		; 82 7D 81
	ror $7E81.w,X		; 7E 81 7E
	sta ($7E.b,X)		; 81 7E
	and $003C00.l,X		; 3F 00 3C 00
	adc $7801.w,Y		; 79 01 78
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $9F.b		; 00 9F
	adc $1F08F1.l		; 6F F1 08 1F
	cpx #$1F.b		; E0 1F
	cpx #$3F.b		; E0 3F
	cpy #$5F.b		; C0 5F
	ldy #$9F.b		; A0 9F
	rts		; 60

	ora $0F60E0.l,X		; 1F E0 60 0F
	ora ($0F.b,X)		; 01 0F
	cmp [$C7.b]		; C7 C7
	sec		; 38
	sec		; 38
	trb $14.b		; 14 14
	and ($32.b)		; 32 32
	eor ($51.b),Y		; 51 51
	tya		; 98
	tya		; 98
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000F00.l,X		; FF 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C1.b,X)		; 01 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0B.b,X		; 16 0B
	tas		; 1B
	asl $1D.b		; 06 1D
	asl $17.b		; 06 17
	tsb $1C2B.w		; 0C 2B 1C
	rol $1619.w		; 2E 19 16
	and $3B54.w,Y		; 39 54 3B
	phd		; 0B
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $19.b		; 00 19
	brk $39.b		; 00 39
	brk $3B.b		; 00 3B
	brk $98.b		; 00 98
	adc $307F98.l,X		; 7F 98 7F 30
	inc $FC31.w,X		; FE 31 FC
	and $F8.b,S		; 23 F8
	eor [$B0.b]		; 47 B0
	pea $F90B.w		; F4 0B F9
	asl $7F.b		; 06 7F
	brk $7F.b		; 00 7F
	ora ($FF.b,X)		; 01 FF
	cop $FF.b		; 02 FF
	tsb $EF.b		; 04 EF
	php		; 08
	sta $737710.l,X		; 9F 10 77 73
	asl $5E0E.w		; 0E 0E 5E
	and ($5E.b,S),Y		; 33 5E
	and ($37.b,S),Y		; 33 37
	tas		; 1B
	and [$1B.b]		; 27 1B
	ora [$09.b],Y		; 17 09
	ora $010601.l		; 0F 01 06 01
	cop $01.b		; 02 01
	and ($00.b,S),Y		; 33 00
	and ($00.b,S),Y		; 33 00
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $38.b		; 00 38
	lda $18BF18.l,X		; BF 18 BF 18
	sbc $1CDF18.l,X		; FF 18 DF 1C
	cmp $80FF8C.l,X		; DF 8C FF 80
	sbc $93EFC6.l		; EF C6 EF 93
	jmp ($7C9B.w,X)		; 7C 9B 7C
	stp		; DB
	bit $3CCB.w,X		; 3C CB 3C
	wai		; CB
	bit $1CE3.w,X		; 3C E3 1C
	sbc $1C.b,S		; E3 1C
	sbc ($1E.b,X)		; E1 1E
	adc ($81.b),Y		; 71 81
	cpy $B0DC.w		; CC DC B0
	brk $50.b		; 00 50
	bvc  11.b		; 50 0B
	ora ($3E.b,S),Y		; 13 3E
	rol $1616.w,X		; 3E 16 16
	brk $00.b		; 00 00
	tsb $CCFD.w		; 0C FD CC
	jmp.w [$B000]		; DC 00 B0
	rti		; 40

	eor ($00.b,S),Y		; 53 00
	ora $163E30.l,X		; 1F 30 3E 16
	asl $00.b,X		; 16 00
	brk $30.b		; 00 30
	bpl -48.b		; 10 D0
	ldy #$40.b		; A0 40
	bvc  32.b		; 50 20
	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -80.b		; 80 B0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
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
	bvs  14.b		; 70 0E
	cpx #$1D.b		; E0 1D
	cmp ($3B.b,X)		; C1 3B
	bcs  64.b		; B0 40
	adc $00FF80.l,X		; 7F 80 FF 00
	inc $19.b		; E6 19
	sbc ($1E.b,X)		; E1 1E
	jsr ($F80D.w,X)		; FC 0D F8
	tas		; 1B
	cpx #$27.b		; E0 27
	cpy #$4F.b		; C0 4F
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $1E00.w,Y		; 19 00 1E
	brk $7B.b		; 00 7B
	jsr ($FBFA.w,X)		; FC FA FB
	sbc ($FF.b,S),Y		; F3 FF
	ora [$77.b]		; 07 77
	sta $1FCF0F.l		; 8F 0F CF 1F
	rol $CF.b		; 26 CF
	ora ($E1.b),Y		; 11 E1
	sec		; 38
	inc $FF78.w,X		; FE 78 FF
	brk $FF.b		; 00 FF
	ora [$FF.b]		; 07 FF
	ora $3F077F.l		; 0F 7F 07 3F
.INDEX 16
	rep #$1F		; C2 1F
	sbc ($0F.b,X)		; E1 0F
	sta $7C.b,S		; 83 7C
	cmp [$38.b]		; C7 38
	adc $C0BF90.l		; 6F 90 BF C0
	cmp $809FE0.l,X		; DF E0 9F 80
	eor $80BF40.l,X		; 5F 40 BF 80
	ora $05.b		; 05 05
	cop $82.b		; 02 82
	tsb $84.b		; 04 84
	php		; 08
	iny		; C8
	stz $92FC.w		; 9C FC 92
	sbc ($55.b)		; F2 55
	sbc $A9.b,X		; F5 A9
	sbc #$5D.b		; E9 5D
	cmp ($3C.b,X)		; C1 3C
	sta ($BE.b,X)		; 81 BE
	sta $B8.b,S		; 83 B8
	sta $35.b,S		; 83 35
	stx $28.b		; 86 28
	stx $5CD8.w		; 8E D8 5C
	bcs 124.b		; B0 7C
	ldx $FF80.w,Y		; BE 80 FF
	sta ($7C.b,X)		; 81 7C
	brk $7E.b		; 00 7E
	cop $F8.b		; 02 F8
	bra -12.b		; 80 F4
	sty $20.b		; 84 20
	brk $48.b		; 00 48
	pha		; 48
	jsl $FE21FD.l		; 22 FD 21 FE
	bvs -65.b		; 70 BF
	cli		; 58
	lda $20DC20.l,X		; BF 20 DC 20
	cmp $03.b,S		; C3 03
	sta $FDFC1F.l,X		; 9F 1F FC FD
	ora ($FE.b,X)		; 01 FE
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $DC.b		; 00 DC
	ora $C0.b,S		; 03 C0
	ora $1C7F83.l,X		; 1F 83 7F 1C
	sbc $1FE01F.l,X		; FF 1F E0 1F
	cpx #$20D8.w		; E0 D8 20
	brk $8B.b		; 00 8B
	ora $7B.b,S		; 03 7B
	tda		; 7B
	jsr ($C4FB.w,X)		; FC FB C4
	cpy #$143F.w		; C0 3F 14
	trb $10.b		; 14 10
	bpl  16.b		; 10 10
	ora [$80.b],Y		; 17 80
	adc $7CFF03.l,X		; 7F 03 FF 7C
	xce		; FB
	cmp [$FB.b]		; C7 FB
	and $007FC0.l,X		; 3F C0 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $50.b		; 00 50
	bne -32.b		; D0 E0
	cpx #$0000.w		; E0 00 00
	cpx #$1FE0.w		; E0 E0 1F
	ora $000000.l,X		; 1F 00 00 00
	brk $80.b		; 00 80
	sta [$E0.b]		; 87 E0
	sec		; 38
	cpy #$C030.w		; C0 30 C0
	bmi -32.b		; 30 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	ora ($89.b,X)		; 01 89
	phd		; 0B
	tas		; 1B
	phy		; 5A
	bcc -112.b		; 90 90
	ldy #$40A0.w		; A0 A0 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$00C1.w		; C0 C1 00
	ora $01.b,S		; 03 01
	eor $BFFF0A.l,X		; 5F 0A FF BF
	clc		; 18
	adc $80FF50.l		; 6F 50 FF 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $807F80.l,X		; 7F 80 7F 80
	sbc $18D800.l,X		; FF 00 D8 18
	bra  16.b		; 80 10
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $80.b		; 00 80
	bvs -128.b		; 70 80
	jmp $306F20.l		; 5C 20 6F 30
	sbc $58BF10.l,X		; FF 10 BF 58
	sbc [$08.b],Y		; F7 08
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra  32.b		; 80 20
	ldy $133C.w		; AC 3C 13
	ora ($18.b,S),Y		; 13 18
	clc		; 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	ora $02.b		; 05 02
	ora $0E02.w		; 0D 02 0E
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $67.b		; 00 67
	clc		; 18
	dec $9831.w		; CE 31 98
	adc $6B9F7D.l		; 6F 7D 9F 6B
	lda $00BDE3.l,X		; BF E3 BD 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	brk $6F.b		; 00 6F
	brk $9F.b		; 00 9F
	brk $BF.b		; 00 BF
	brk $BD.b		; 00 BD
	brk $70.b		; 00 70
	bcs -128.b		; B0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bcs  48.b		; B0 30
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
	bvs   0.b		; 70 00
	iny		; C8
	sec		; 38
	sty $0874.w		; 8C 74 08
	inc $DE14.w,X		; FE 14 DE
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  64.b		; 70 40
	beq -128.b		; F0 80
	sed		; F8
	php		; 08
	cpx #$E804.w		; E0 04 E8
	tsb $007E.w		; 0C 7E 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000600.l		; 0F 00 06 00
	cop $00.b		; 02 00
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	and $FBF83F.l,X		; 3F 3F F8 FB
	cpy #$00C1.w		; C0 C1 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$FF.b]		; 07 FF
	sec		; 38
	sbc $00F8C0.l,X		; FF C0 F8 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($01.b),Y		; F1 01
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $01.b		; 00 01
	sbc ($20.b),Y		; F1 20
	ldy #$2020.w		; A0 20 20
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3030.w		; C0 30 30
	tsb $020C.w		; 0C 0C 02
	ora $F0.b,S		; 03 F0
	brk $81.b		; 00 81
	asl $7F0F.w		; 0E 0F 7F
	adc $C1F9F8.l,X		; 7F F8 F9 C1
	cpy $0C.b		; C4 0C
	cli		; 58
	cld		; D8
	cpy #$00C0.w		; C0 C0 00
	ora $0E7F00.l		; 0F 00 7F 0E
	sbc $C1FF78.l,X		; FF 78 FF C1
	sbc $CC04.w,Y		; F9 04 CC
	cli		; 58
	cld		; D8
	cpy #$00C0.w		; C0 C0 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bmi  48.b		; 30 30
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	sbc $CFCF07.l		; EF 07 CF CF
	ora [$D0.b],Y		; 17 D0
	ora [$B8.b],Y		; 17 B8
	cpy #$0779.w		; C0 79 07
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	sbc [$1F.b]		; E7 1F
	cmp [$3F.b]		; C7 3F
	ora [$3F.b]		; 07 3F
	bpl  -1.b		; 10 FF
	brk $D7.b		; 00 D7
	ora [$80.b]		; 07 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy #$0307.w		; C0 07 03
	and $7FFC1F.l,X		; 3F 1F FC 7F
	rts		; 60

	sbc $1E.b,S		; E3 1E
	lda $33FF43.l,X		; BF 43 FF 33
	rol $00F2.w,X		; 3E F2 00
	and $1CFF03.l,X		; 3F 03 FF 1C
	sbc $00FE60.l,X		; FF 60 FE 00
	ror $7B1B.w,X		; 7E 1B 7B
	sta ($B3.b,S),Y		; 93 B3
	sbc ($32.b)		; F2 32
	phy		; 5A
	beq -32.b		; F0 E0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	cpy #$E0E0.w		; C0 E0 E0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  -6.b		; 50 FA
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr $40E0.w		; 20 E0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000F00.l,X		; 1F 00 0F 00
	php		; 08
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $CF00BB.l,X		; 3F BB 00 CF
	brk $C1.b		; 00 C1
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ora ($05.b,X)		; 01 05
	ora [$15.b],Y		; 17 15
	inc $E0FC.w,X		; FE FC E0
	brk $04.b		; 00 04
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -125.b		; 80 83
	rti		; 40

	eor [$05.b]		; 47 05
	sbc $E0FF14.l,X		; FF 14 FF E0
	jsr ($020F.w,X)		; FC 0F 02
	ora $0D06.w		; 0D 06 0D
	asl $18.b		; 06 18
	ora $601F30.l		; 0F 30 1F 60
	and $897FC0.l,X		; 3F C0 7F 89
	sbc [$02.b],Y		; F7 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $F7.b		; 00 F7
	brk $42.b		; 00 42
	lda $29D6.w,X		; BD D6 29
	wai		; CB
	jsr $28D8.w		; 20 D8 28
	sbc [$1F.b]		; E7 1F
	adc [$8C.b]		; 67 8C
	and #$D4.b		; 29 D4
	clc		; 18
	inc $BD.b		; E6 BD
	brk $28.b		; 00 28
	brk $34.b		; 00 34
	brk $37.b		; 00 37
	brk $08.b		; 00 08
	php		; 08
	sta ($10.b,S),Y		; 93 10
	cmp [$04.b]		; C7 04
	sbc $02.b,S		; E3 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr ($1E00.w,X)		; FC 00 1E
	cpx #$FC93.w		; E0 93 FC
	bit #$FE.b		; 89 FE
	bit $00DF.w		; 2C DF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	brk $65.b		; 00 65
	stz $CE39.w,X		; 9E 39 CE
	ora ($EC.b)		; 12 EC
	stz $8860.w		; 9C 60 88
	bmi -30.b		; 30 E2
	bmi  37.b		; 30 25
	sbc ($59.b)		; F2 59
	ldx $9E.b		; A6 9E
	brk $0E.b		; 00 0E
	brk $4C.b		; 00 4C
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $62.b		; 00 62
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   6.b		; 80 06
	inc $FF.b,X		; F6 FF
	sbc $BF3FCF.l		; EF CF 3F BF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	inc $FF06.w,X		; FE 06 FF
	sbc [$FF.b]		; E7 FF
	ora $FF87FF.l		; 0F FF 87 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldy #$BDBC.w		; A0 BC BD
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FE00.w		; E0 00 FE
	ldy #$BDFF.w		; A0 FF BD
	sbc $070007.l,X		; FF 07 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -2.b		; 80 FE
	ora ($BE.b,X)		; 01 BE
	eor ($8E.b,X)		; 41 8E
	adc ($8C.b),Y		; 71 8C
	adc ($1D.b,S),Y		; 73 1D
	sbc ($1C.b)		; F2 1C
	sbc ($5E.b)		; F2 5E
	beq  95.b		; F0 5F
	beq   0.b		; F0 00
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora ($F0.b,X)		; 01 F0
	ora ($F0.b,X)		; 01 F0
	brk $0C.b		; 00 0C
	sty $9E.b		; 84 9E
	sty $98FE.w		; 8C FE 98
	ldy $BC70.w,X		; BC 70 BC
	rti		; 40

	jsr ($F800.w,X)		; FC 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	stx $68.b		; 86 68
	tsb $1818.w		; 0C 18 18
	bpl 112.b		; 10 70
	php		; 08
	iny		; C8
	php		; 08
	dey		; 88
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $C3.b		; 00 C3
	bra -68.b		; 80 BC
	ldy $FF3F.w,X		; BC 3F FF
	cmp $A3.b,S		; C3 A3
	jmp.w [$E4FE]		; DC FE E4
	adc $E6FF66.l,X		; 7F 66 FF E6
	ora ($BD.b,X)		; 01 BD
	bra  -1.b		; 80 FF
	bit $C3FF.w,X		; 3C FF C3
	sbc $10FF80.l,X		; FF 80 FF 10
	sbc [$6C.b],Y		; F7 6C
	inc $E7E7.w		; EE E7 E7
	lsr $B8.b		; 46 B8
	ora $1C.b,S		; 03 1C
	ora ($E8.b,X)		; 01 E8
	inc $F6.b		; E6 F6
	inc $1E.b,X		; F6 1E
	adc $FEDD80.l,X		; 7F 80 DD FE
	sbc $80B8DF.l		; EF DF B8 80
	trb $08E0.w		; 1C E0 08
	inc $E0.b,X		; F6 E0
	sbc $00FF16.l,X		; FF 16 FF 00
	cmp $FF08.w		; CD 08 FF
	cmp [$FF.b]		; C7 FF
	tsb $03.b		; 04 03
	ora $03.b		; 05 03
	asl A		; 0A
	ora [$04.b]		; 07 04
	ora $180F14.l		; 0F 14 0F 18
	ora $301F08.l		; 0F 08 1F 30
	ora $030003.l,X		; 1F 03 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3D.b		; 00 3D
	lda $9C5D.w,X		; BD 5D 9C
	ora ($E0.b,X)		; 01 E0
	ora ($EE.b),Y		; 11 EE
	and $DC.b,S		; 23 DC
	eor [$B8.b]		; 47 B8
	adc $807F90.l		; 6F 90 7F 80
	lda $8C7F.w,X		; BD 7F 8C
	and $E81EE0.l,X		; 3F E0 1E E8
	php		; 08
	bne  16.b		; D0 10
	lda ($21.b,X)		; A1 21
	.db $82, $02, $84		; 82 02 84
	tsb $54.b		; 04 54
	and ($30.b)		; 32 30
	ora ($22.b)		; 12 22
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	ora ($32.b,X)		; 01 32
	brk $12.b		; 00 12
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $1F.b,S		; 03 1F
	adc ($5F.b,X)		; 61 5F
	and ($4F.b,X)		; 21 4F
	and ($0E.b,X)		; 21 0E
	jsr $102E.w		; 20 2E 10
	rol $EE10.w		; 2E 10 EE
	bpl -18.b		; 10 EE
	bpl  62.b		; 10 3E
	jsr $203E.w		; 20 3E 20
	asl $1F00.w,X		; 1E 00 1F
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	ora [$12.b]		; 07 12
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	clc		; 18
	asl $5831.w		; 0E 31 58
	and $2B5FBD.l		; 2F BD 5F 2B
	sbc $42FDA3.l,X		; FF A3 FD 42
	lda $C936.w,X		; BD 36 C9
	clc		; 18
	brk $31.b		; 00 31
	brk $2F.b		; 00 2F
	brk $5F.b		; 00 5F
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $BD.b		; 00 BD
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $39.b		; 00 39
	clc		; 18
	jsr $1008.w		; 20 08 10
	bpl   4.b		; 10 04
	jsr $2C58.w		; 20 58 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	clc		; 18
	and $2800.w,Y		; 39 00 28
	bpl  16.b		; 10 10
	brk $2C.b		; 00 2C
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40A0.w		; C0 A0 40
	rti		; 40

	brk $30.b		; 00 30
	cli		; 58
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $78.b		; 00 78
	brk $5A.b		; 00 5A
	cmp $8000FF.l,X		; DF FF 00 80
	brk $F0.b		; 00 F0
	rts		; 60

	jmp ($06F4.w,X)		; 7C F4 06
	jsr ($F006.w,X)		; FC 06 F0
.ACCU 16
	rep #$26		; C2 26
	cpy #$FFC3.w		; C0 C3 FF
	brk $7F.b		; 00 7F
	cpy #$98C0.w		; C0 C0 98
	clc		; 18
	sed		; F8
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	rti		; 40

	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
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
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $43.b		; 00 43
	beq -45.b		; F0 D3
	cpx #$C0A3.w		; E0 A3 C0
	lda $80.b,S		; A3 80
	sta [$80.b]		; 87 80
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	adc $00FF02.l,X		; 7F 02 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FF00.w,X		; FE 00 FF
	ora ($FC.b,X)		; 01 FC
	ora $F8.b,S		; 03 F8
	ora [$52.b]		; 07 52
	cmp ($49.b)		; D2 49
	eor #$4545.w		; 49 45 45
	eor $42.b,S		; 43 42
	and $22.b,S		; 23 22
	jsl $171722.l		; 22 22 17 17
	clc		; 18
	clc		; 18
	phb		; 8B
	adc [$10.b]		; 67 10
	ora $FF0179.l,X		; 1F 79 01 FF
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	cpy #$FF7F.w		; C0 7F FF
	brk $FF.b		; 00 FF
	sta ($9F.b,X)		; 81 9F
	cpx $FE0C.w		; EC 0C FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	bmi  31.b		; 30 1F
	jsr $211F.w		; 20 1F 21
	asl $1E21.w,X		; 1E 21 1E
	jsr $121E.w		; 20 1E 12
	tsb $0C12.w		; 0C 12 0C
	bpl  12.b		; 10 0C
	ora $001F00.l,X		; 1F 00 1F 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	rti		; 40

	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	ora $1119.w,Y		; 19 19 11
	ora ($12.b),Y		; 11 12
	ora ($0A.b)		; 12 0A
	asl A		; 0A
	asl $06.b		; 06 06
	eor $03.b,S		; 43 03
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $C0.b		; 00 C0
	brk $0E.b		; 00 0E
	asl $3030.w		; 0E 30 30
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$91.b]		; 67 91
	inc $5F.b		; E6 5F
	pea $F92F.w		; F4 2F F9
	asl $F9.b,X		; 16 F9
	brk $83.b		; 00 83
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	bra   9.b		; 80 09
	eor #$2222.w		; 49 22 22
	bpl  16.b		; 10 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $1F.b		; 26 1F
	cmp $FF3C3F.l		; CF 3F 3C FF
	cpy #$07FF.w		; C0 FF 07
	sed		; F8
	and $E4.b,S		; 23 E4
	lda $FF82.w,Y		; B9 82 FF
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $58.b		; 00 58
	rti		; 40

	jmp ($FC00.w,X)		; 7C 00 FC
	brk $CA.b		; 00 CA
.INDEX 8
	sep #$19		; E2 19
	inx		; E8
	and [$DF.b]		; 27 DF
	and [$CC.b]		; 27 CC
	sbc #$FC04.w		; E9 04 FC
	asl A		; 0A
	inc $E301.w		; EE 01 E3
	brk $F7.b		; 00 F7
	ora $F6.b,S		; 03 F6
	brk $C8.b		; 00 C8
	php		; 08
	cmp ($10.b,S),Y		; D3 10
	ora [$14.b],Y		; 17 14
	ora $02.b,S		; 03 02
	ora ($01.b),Y		; 11 01
	trb $E800.w		; 1C 00 E8
	adc $2C.b,S		; 63 2C
	asl $4151.w,X		; 1E 51 41
	jsr $5020.w		; 20 20 50
	rts		; 60

	bit $3E3C.w,X		; 3C 3C 3E
	and $640000.l,X		; 3F 00 00 64
	inc $3F0D.w		; EE 0D 3F
	rti		; 40

	eor ($00.b),Y		; 51 00
	jsr $7C40.w		; 20 40 7C
	jsr $3A3F.w		; 20 3F 3A
	and $9D0000.l,X		; 3F 00 00 9D
	dey		; 88
	and $38.b		; 25 38
	tas		; 1B
	tas		; 1B
	tsx		; BA
	sta ($50.b,S),Y		; 93 50
	bmi -112.b		; 30 90
	ldy #$40.b		; A0 40
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	sbc $D3EFE0.l,X		; FF E0 EF D3
	cmp $00BF00.l,X		; DF 00 BF 00
	pea $F000.w		; F4 00 F0
	brk $C0.b		; 00 C0
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
	brk $F0.b		; 00 F0
	sbc $0DFD.w,X		; FD FD 0D
	sbc $1BE302.l,X		; FF 02 E3 1B
	sbc $FA05.w		; ED 05 FA
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	brk $F0.b		; 00 F0
	sbc $02FF0D.l,X		; FF 0D FF 02
	ora $A0DFC1.l		; 0F C1 DF A0
	lda $4D2722.l,X		; BF 22 27 4D
	eor $FF4B4A.l		; 4F 4A 4B FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $89.b		; 00 89
	bit #$9191.w		; 89 91 91
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	jsl $222222.l		; 22 22 22 22
	.db $42, $42		; 42 42
	.db $42, $42		; 42 42
	php		; 08
	tsb $08.b		; 04 08
	tsb $0C.b		; 04 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	bvs -128.b		; 70 80
	adc $A47F80.l,X		; 7F 80 7F A4
	adc $2D7EA5.l,X		; 7F A5 7E 2D
	ror $6A.b,X		; 76 6A
	rol $62.b,X		; 36 62
	rol $71.b,X		; 36 71
	ora ($7E.b,X)		; 01 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $76.b		; 00 76
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  30.b		; 80 1E
	sbc ($34.b,X)		; E1 34
	cmp [$3A.b]		; C7 3A
	cmp $3C.b,S		; C3 3C
	cmp ($9C.b,X)		; C1 9C
	eor ($9F.b,X)		; 41 9F
	eor ($C2.b,X)		; 41 C2
.ACCU 16
	rep #$63		; C2 63
	adc $FE.b,S		; 63 FE
	inc $C2FA.w,X		; FE FA C2
	adc $7F41.w,X		; 7D 41 7F
	eor ($7F.b,X)		; 41 7F
	eor ($3E.b,X)		; 41 3E
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	ora $F20FF0.l		; 0F F0 0F F2
	ora $0DF2.w		; 0D F2 0D
	sbc ($1C.b,X)		; E1 1C
	adc $6D98.w		; 6D 98 6D
	tya		; 98
	bpl  16.b		; 10 10
	sbc $000FE0.l		; EF E0 0F 00
	ora $0D00.w		; 0D 00 0D
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $4D.b		; 00 4D
	clv		; B8
	eor #$51B8.w		; 49 B8 51
	clv		; B8
	cli		; 58
	lda ($5A.b),Y		; B1 5A
	lda ($53.b),Y		; B1 53
	lda ($61.b),Y		; B1 61
	lda ($72.b,S),Y		; B3 72
	ldx $38.b		; A6 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $31.b		; 00 31
	brk $31.b		; 00 31
	brk $31.b		; 00 31
	brk $33.b		; 00 33
	brk $26.b		; 00 26
	brk $40.b		; 00 40
	cpx $E8.b		; E4 E8
	rti		; 40

	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $00.b		; 64 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	sbc $2707FF.l,X		; FF FF 07 27
	rts		; 60

	nop		; EA
	inc $0606.w		; EE 06 06
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $FF.b		; 00 FF
	sei		; 78
	sbc $20FF07.l,X		; FF 07 FF 20
	adc [$EA.b]		; 67 EA
	inc $0606.w		; EE 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -60.b		; 80 C4
	inc $F6.b,X		; F6 F6
	rol $F0.b,X		; 36 F0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	inc $80.b,X		; F6 80
	inc $FF34.w,X		; FE 34 FF
	cpy #$F7.b		; C0 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -64.b		; B0 C0
	cpx $F6.b		; E4 F6
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F6.b		; 00 F6
	cpy #$FF.b		; C0 FF
	tsb $EF.b		; 04 EF
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	asl $03.b		; 06 03
	tsb $1007.w		; 0C 07 10
	ora $000EF2.l		; 0F F2 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0D.b		; 00 0D
	ora ($05.b,X)		; 01 05
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	trb $92E0.w		; 1C E0 92
	jsr ($FE89.w,X)		; FC 89 FE
	bit $65DF.w		; 2C DF 65
	stz $4EB9.w,X		; 9E B9 4E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $0E.b		; 00 0E
	brk $92.b		; 00 92
	jmp ($601C.w)		; 6C 1C 60
	dey		; 88
	bmi -32.b		; 30 E0
	bmi -96.b		; 30 A0
	bcs -64.b		; B0 C0
	bmi   0.b		; 30 00
	rts		; 60

	jsr $4CC0.w		; 20 C0 4C
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	adc $C703.w,X		; 7D 03 C7
	brk $AA.b		; 00 AA
	bmi  52.b		; 30 34
	and $1C19.w,Y		; 39 19 1C
	ora ($5C.b,X)		; 01 5C
	phy		; 5A
	jmp $021E1E.l		; 5C 1E 1E 02
	cop $01.b		; 02 01
	sec		; 38
	ora ($7C.b,X)		; 01 7C
	and ($FF.b,X)		; 21 FF
	bpl  -2.b		; 10 FE
	brk $FE.b		; 00 FE
	cli		; 58
	sbc $717F1E.l,X		; FF 1E 7F 71
	asl $80.b		; 06 80
	rol $CD30.w,X		; 3E 30 CD
	bvs -125.b		; 70 83
	sbc $02.b,X		; F5 02
	sbc $030400.l,X		; FF 00 04 03
	brk $F9.b		; 00 F9
	jsr ($E604.w,X)		; FC 04 E6
	and [$8C.b]		; 27 8C
	sta $000F00.l		; 8F 00 0F 00
	asl $0400.w		; 0E 00 04
	ora $FB.b,S		; 03 FB
	brk $FE.b		; 00 FE
	ora $7887F0.l		; 0F F0 87 78
	sta [$78.b]		; 87 78
	ora $39F0.w		; 0D F0 39
	cpy #$CA.b		; C0 CA
	and ($0F.b),Y		; 31 0F
	beq  10.b		; F0 0A
	and $E3.b,X		; 35 E3
	cpx #$42.b		; E0 42
	rti		; 40

	rti		; 40

	rti		; 40

	.db $82, $82, $86		; 82 82 86
	stx $04.b		; 86 04
	tsb $C0.b		; 04 C0
	cpy #$01.b		; C0 01
	cmp $F8.b		; C5 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	php		; 08
	trb $E8.b		; 14 E8
	trb $E8.b		; 14 E8
	bit $C8.b,X		; 34 C8
	rol $D8.b		; 26 D8
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $E8.b		; 00 E8
	cpx #$0008.w		; E0 08 00
	php		; 08
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	sty $EBC8.w		; 8C C8 EB
	phd		; 0B
	ora $03.b,S		; 03 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	cpx $00.b		; E4 00
	sbc $FF08.w,X		; FD 08 FF
	ora $CF.b,S		; 03 CF
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	and $003E00.l,X		; 3F 00 3E 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $1C.b		; 00 1C
	trb $1010.w		; 1C 10 10
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	asl $5831.w		; 0E 31 58
	and $001F7D.l		; 2F 7D 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	cpx #$FC92.w		; E0 92 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FC00.w		; E0 00 FC
	brk $6D.b		; 00 6D
	ror $7FC8.w,X		; 7E C8 7F
	cmp #$CB7E.w		; C9 7E CB
	jmp ($7CC3.w,X)		; 7C C3 7C
	cmp [$78.b]		; C7 78
	cmp [$78.b]		; C7 78
	sta $007E70.l		; 8F 70 7E 00
	adc $007E00.l,X		; 7F 00 7E 00
	adc $7D01.w,X		; 7D 01 7D
	ora ($7A.b,X)		; 01 7A
	cop $7A.b		; 02 7A
	cop $72.b		; 02 72
	cop $10.b		; 02 10
	sbc ($FF.b,X)		; E1 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora $A55050.l		; 0F 50 50 A5
	lda $49.b		; A5 49
	eor #$5252.w		; 49 52 52
	.db $62, $62, $64		; 62 62 64
	stz $C4.b		; 64 C4
	cpy $04.b		; C4 04
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  79.b		; 30 4F
	eor $080808.l		; 4F 08 08 08
	php		; 08
	brk $00.b		; 00 00
	sta ($01.b)		; 92 01
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$1F1F.w		; C0 1F 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($B0.b,X)		; 21 B0
	pld		; 2B
	pla		; 68
	cmp [$10.b],Y		; D7 10
	sbc $00FF00.l		; EF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FE0000.l,X		; FF 00 00 FE
	and #$11FD.w		; 29 FD 11
	and $1202.w,Y		; 39 02 12
	jmp $4A4C.w		; 4C 4C 4A
	lsr A		; 4A
	bit #$8989.w		; 89 89 89
	bit #$10F7.w		; 89 F7 10
	sbc $10FF10.l,X		; FF 10 FF 10
	jsr ($F200.w,X)		; FC 00 F2
	ora $F4.b,S		; 03 F4
	ora [$F9.b]		; 07 F9
	asl $1CE3.w		; 0E E3 1C
	and $E0EF20.l		; 2F 20 EF E0
	and $909F20.l		; 2F 20 9F 90
	eor $3A51.w,X		; 5D 51 3A
	and ($14.b)		; 32 14
	trb $38.b		; 14 38
	sec		; 38
	eor $C01FC1.l,X		; 5F C1 1F C0
	and $601FE0.l,X		; 3F E0 1F 60
	cmp $18EF30.l,X		; DF 30 EF 18
	sbc $18.b,S		; E3 18
	sbc $0C.b,X		; F5 0C
	ldx $7F80.w,Y		; BE 80 7F
	rti		; 40

	eor $203F40.l,X		; 5F 40 3F 20
	ora $101700.l		; 0F 00 17 10
	cmp $1003C8.l		; CF C8 03 10
	tsb $82.b		; 04 82
	cop $80.b		; 02 80
	.db $82, $C0, $03		; 82 C0 03
	rti		; 40

	sta ($40.b,X)		; 81 40
	cmp ($60.b,X)		; C1 60
	sta ($20.b,X)		; 81 20
	cmp ($20.b,X)		; C1 20
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $03.b		; 00 03
	tsb $1803.w		; 0C 03 18
	brk $20.b		; 00 20
	asl $5F0F.w		; 0E 0F 5F
	eor $2F435F.l		; 4F 5F 43 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $07.b		; 00 07
	brk $5F.b		; 00 5F
	ora $FF4FFF.l		; 0F FF 4F FF
	brk $7F.b		; 00 7F
	cli		; 58
	and [$0D.b]		; 27 0D
	jsr ($C04F.w,X)		; FC 4F C0
	rol $12E0.w		; 2E E0 12
	adc ($C0.b,S),Y		; 73 C0
	sbc $FBFFFB.l,X		; FF FB FF FB
	sbc $330121.l,X		; FF 21 01 33
	bmi -65.b		; 30 BF
	bra  95.b		; 80 5F
	rti		; 40

	bit $00A0.w		; 2C A0 00
	sbc $01FFFB.l,X		; FF FB FF 01
	sbc $9FA0BF.l,X		; FF BF A0 9F
	jsr $403F.w		; 20 3F 40
	adc $180780.l,X		; 7F 80 07 18
	sbc ($E8.b,X)		; E1 E8
	cpy #$96F6.w		; C0 F6 96
	inc $40.b,X		; F6 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	sed		; F8
	cpy #$80F6.w		; C0 F6 80
	inc $FF16.w,X		; FE 16 FF
	txs		; 9A
	phk		; 4B
	jmp $20A2.w		; 4C A2 20
	dec $12.b,X		; D6 12
	cpx $609E.w		; EC 9E 60
	lda $000040.l,X		; BF 40 00 00
	brk $FF.b		; 00 FF
	stz $44.b,X		; 74 44
	bit $1C20.w,X		; 3C 20 1C
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	phx		; DA
	phx		; DA
	xce		; FB
	stp		; DB
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phx		; DA
	brk $FF.b		; 00 FF
	phx		; DA
	sbc $00DB01.l,X		; FF 01 DB 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $1C.b		; 00 1C
	trb $CF1E.w		; 1C 1E CF
	sbc $0000CF.l,X		; FF CF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	trb $0EFF.w		; 1C FF 0E
	sbc $EBFFCF.l,X		; FF CF FF EB
	and $C2BD63.l,X		; 3F 63 BD C2
	and $A956.w,X		; 3D 56 A9
	lsr A		; 4A
	ldx #$A8D9.w		; A2 D9 A8
	lda [$5F.b]		; A7 5F
	sbc [$0C.b]		; E7 0C
	and $00BD00.l,X		; 3F 00 BD 00
	and $A800.w,X		; 3D 00 A8
	brk $B7.b		; 00 B7
	ora $B6.b,S		; 03 B6
	brk $48.b		; 00 48
	php		; 08
	ora ($10.b,S),Y		; 13 10
	bit #$2CFE.w		; 89 FE 2C
	cmp $B99E65.l,X		; DF 65 9E B9
	lsr $6C92.w		; 4E 92 6C
	trb $8860.w		; 1C 60 88
	bmi -32.b		; 30 E0
	bmi  -2.b		; 30 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $0E.b		; 00 0E
	brk $4C.b		; 00 4C
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	brk $C0.b		; 00 C0
	brk $CD.b		; 00 CD
	and ($CD.b)		; 32 CD
	and ($4D.b)		; 32 4D
	and ($64.b)		; 32 64
	ora ($24.b,S),Y		; 13 24
	ora ($32.b,S),Y		; 13 32
	ora ($1A.b,X)		; 01 1A
	ora ($09.b,X)		; 01 09
	brk $32.b		; 00 32
	brk $32.b		; 00 32
	brk $32.b		; 00 32
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	tsb $F8.b		; 04 F8
	ora [$88.b]		; 07 88
	adc [$4C.b]		; 67 4C
	and $24.b,S		; 23 24
	ora $A8.b,S		; 03 A8
	tay		; A8
	sta $0D99.w,Y		; 99 99 0D
	ora $6363.w		; 0D 63 63
	brk $00.b		; 00 00
	rts		; 60

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0F.b		; 00 0F
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
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	sbc $E100.w,Y		; F9 00 E1
	lsr $88C1.w,X		; 5E C1 88
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	sbc #$1AE9.w		; E9 E9 1A
	inc A		; 1A
	inc $BFE0.w,X		; FE E0 BF
	sta ($E7.b,X)		; 81 E7
	clc		; 18
	sbc $F912.w		; ED 12 F9
	asl $F1.b		; 06 F1
	asl $0EF1.w		; 0E F1 0E
	cmp $9C06.w,Y		; D9 06 9C
	cop $14.b		; 02 14
	.db $82, $B0, $B0		; 82 B0 B0
.ACCU 8
	sep #$E0		; E2 E0
	dec $C0.b		; C6 C0
	stx $0E80.w		; 8E 80 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $E2.b		; 00 E2
	asl $1FE9.w,X		; 1E E9 1F
	jsr ($3E0F.w,X)		; FC 0F 3E
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	trb $1A02.w		; 1C 02 1A
	ora $000D.w		; 0D 0D 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E1.b		; 00 E1
	bmi  65.b		; 30 41
	bpl -95.b		; 10 A1
	bcc  65.b		; 90 41
	bne -31.b		; D0 E1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $2F.b		; 00 2F
	bpl  41.b		; 10 29
	ora $643F52.l,X		; 1F 52 3F 64
	and $CA7EED.l,X		; 3F ED 7E CA
	adc $3F00.w,X		; 7D 00 3F
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $007E00.l,X		; 3F 00 7E 00
	adc $0101.w,X		; 7D 01 01
	ora ($F6.b,X)		; 01 F6
	ora $F6.b,S		; 03 F6
	cop $4F.b		; 02 4F
	lda ($43.b,S),Y		; B3 43
	tyx		; BB
	lda ($5B.b,X)		; A1 5B
	dec A		; 3A
	cmp ($10.b,X)		; C1 10
	cpx $00.b		; E4 00
	sbc $000F00.l,X		; FF 00 0F 00
	ora $801790.l		; 0F 90 17 80
	ora [$40.b]		; 07 40
	eor [$80.b]		; 47 80
	sta [$00.b]		; 87 00
	ora $13C01E.l		; 0F 1E C0 13
	sty $1FE0.w		; 8C E0 1F
	cmp ($BE.b,X)		; C1 BE
.INDEX 8
	sep #$DD		; E2 DD
	pea $F9EA.w		; F4 EA F9
	sbc $F871.w,X		; FD 71 F8
	brk $F7.b		; 00 F7
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	jsr $90A0.w		; 20 A0 90
	cmp ($C0.b),Y		; D1 C0
	sbc $60.b,S		; E3 60
	inc $FE20.w,X		; FE 20 FE
	sbc $00FFFF.l,X		; FF FF FF 00
	mvp $FD,$BB		; 44 BB FD
	cmp $DDEFFD.l		; CF FD EF DD
	sbc $F73CC7.l		; EF C7 3C F7
	bpl  -1.b		; 10 FF
	sbc $02FF00.l,X		; FF 00 FF 02
	sbc $CD00.w,X		; FD 00 CD
	cmp $CECD.w		; CD CD CE
	dec $080B.w		; CE 0B 08
	lda $3CC1A0.l		; AF A0 C1 3C
	tya		; 98
	inc $C6FC.w,X		; FE FC C6
	sed		; F8
	cop $F8.b		; 02 F8
	cop $80.b		; 02 80
	rol $C6.b		; 26 C6
	ply		; 7A
	tsb $0076.w		; 0C 76 00
	sta ($20.b,X)		; 81 20
	ldy #$B8.b		; A0 B8
	sta ($FC.b,X)		; 81 FC
	ora ($FC.b,X)		; 01 FC
	ora ($FC.b,X)		; 01 FC
	and $98.b		; 25 98
	tas		; 1B
	pea $FD77.w		; F4 77 FD
	bit $3878.w,X		; 3C 78 38
	bvs 112.b		; 70 70
	ldy #$40.b		; A0 40
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $38FF.w		; 1C FF 38
	jmp ($F830.w,X)		; 7C 30 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	ora $02.b		; 05 02
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	tsb $040A.w		; 0C 0A 04
	sty $00.b		; 84 00
	cop $44.b		; 02 44
	ora [$89.b]		; 07 89
	sed		; F8
	bra  17.b		; 80 11
	brk $70.b		; 00 70
	brk $FE.b		; 00 FE
	brk $0E.b		; 00 0E
	brk $87.b		; 00 87
	brk $06.b		; 00 06
	brk $F5.b		; 00 F5
	asl $6EEF.w		; 0E EF 6E
	inc $00FE.w,X		; FE FE 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $BF.b		; 00 BF
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  16.b		; 30 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
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
	bra   0.b		; 80 00
	cld		; D8
	bra  95.b		; 80 5F
	bra -34.b		; 80 DE
	cmp $8098D0.l,X		; DF D0 98 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$00.b		; A0 00
	inc $FF00.w,X		; FE 00 FF
	tya		; 98
	sbc $00FE00.l,X		; FF 00 FE 00
	ldy #$00.b		; A0 00
	bra   1.b		; 80 01
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	ora $15.b,S		; 03 15
	asl $1C7B.w		; 0E 7B 1C
	lda [$78.b],Y		; B7 78
	adc $8EF1C0.l,X		; 7F C0 F1 8E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $1C00.w		; 0E 00 1C
	brk $78.b		; 00 78
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	plx		; FA
	plx		; FA
	inc $01FC.w,X		; FE FC 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	cop $FE.b		; 02 FE
	plx		; FA
	sbc $00FD00.l,X		; FF 00 FD 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $45.b		; 00 45
	cmp $DCDC.w		; CD DC DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	eor $CD.b		; 45 CD
	jmp.w [$00DC]		; DC DC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $89.b		; 00 89
	adc $EDED.w		; 6D ED ED
	cpx #$00.b		; E0 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $ED.b		; 00 ED
	brk $FF.b		; 00 FF
	adc #$FF.b		; 69 FF
	brk $ED.b		; 00 ED
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	sty $ECCC.w		; 8C CC EC
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $FE00.w		; CC 00 FE
	dey		; 88
	inc $CC00.w,X		; FE 00 CC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3D.b,S		; E3 3D
	stx $3B.b		; 86 3B
	ora $EC1F76.l		; 0F 76 1F EC
	and $00FED8.l		; 2F D8 FE 00
	ldx $FE00.w,Y		; BE 00 FE
	brk $CC.b		; 00 CC
	ora $3BFA.w		; 0D FA 3B
	dec $56.b,X		; D6 56
	sty $8C.b		; 84 8C
	cop $1A.b		; 02 1A
	cop $22.b		; 02 22
	tsb $44.b		; 04 44
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc #$E9.b		; 69 E9
	sty $04.b		; 84 04
	ora $00.b,S		; 03 00
	sty $05.b		; 84 05
	plx		; FA
	sbc $E0E0.w,X		; FD E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$EF.b]		; 67 EF
	brk $84.b		; 00 84
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	php		; 08
	sbc $00E0E0.l,X		; FF E0 E0 00
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
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	xce		; FB
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
	sbc $00FFFF.l,X		; FF FF FF 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
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
	cop $00.b		; 02 00
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
	brk $10.b		; 00 10
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0000.w		; 20 00 00
	jsr $0000.w		; 20 00 00
	ora ($04.b,X)		; 01 04
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
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
	jsr $0000.w		; 20 00 00
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
	brk $20.b		; 00 20
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
	bra   0.b		; 80 00
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cop $00.b		; 02 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl L800000.l		; 22 00 00 80
	brk $08.b		; 00 08
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
	brk $10.b		; 00 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	rti		; 40

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
	bpl   8.b		; 10 08
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
	cop $00.b		; 02 00
	bvc   0.b		; 50 00
	ora ($00.b,X)		; 01 00
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
	bra   0.b		; 80 00
	brk $20.b		; 00 20
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
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $0000.w		; 20 00 00
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
	brk $04.b		; 00 04
	.db $00		; Opcode 00 overrunning bank boundry at 18FFFE. Skipping.
	.db $04		; Opcode 04 overrunning bank boundry at 18FFFF. Skipping.
.ENDS
