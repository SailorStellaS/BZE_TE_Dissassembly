.BANK 25 SLOT 0
.ORG $0000

.SECTION "Bank25" FORCE

	beq  28.b		; F0 1C
	sed		; F8
	asl $077C.w		; 0E 7C 07
	ldx $5F83.w,Y		; BE 83 5F
	cmp ($37.b,X)		; C1 37
	beq  11.b		; F0 0B
	sei		; 78
	ora $1C.b		; 05 1C
	inx		; E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	cop $7D.b		; 02 7D
	ora ($BE.b,X)		; 01 BE
	bra  79.b		; 80 4F
	rti		; 40

	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	ldx $6C.b,Y		; B6 6C
	ldx $6A64.w		; AE 64 6A
	bit $46.b		; 24 46
	jsr $2046.w		; 20 46 20
	jsl $002200.l		; 22 00 22 00
	jsl $006C00.l		; 22 00 6C 00
	stz $00.b		; 64 00
	bit $00.b		; 24 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	jsr $380F.w		; 20 0F 38
	ora [$30.b],Y		; 17 30
	ora $603F60.l		; 0F 60 3F 60
	asl $1F40.w,X		; 1E 40 1F
	eor ($3C.b,X)		; 41 3C
	cmp ($14.b,X)		; C1 14
	trb $17.b		; 14 17
	ora [$2F.b],Y		; 17 2F
	jsr $203F.w		; 20 3F 20
	ora $003F00.l,X		; 1F 00 3F 00
	ror $7F40.w,X		; 7E 40 7F
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $0B.b		; 02 0B
	sec		; 38
	adc $3F5F00.l,X		; 7F 00 5F 3F
	lda $00FF40.l,X		; BF 40 FF 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $17.b		; 00 17
	bpl   0.b		; 10 00
	brk $1F.b		; 00 1F
	sbc $00C000.l,X		; FF 00 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	cmp $30EC74.l		; CF 74 EC 30
	pla		; 68
	tsa		; 3B
	adc [$07.b],Y		; 77 07
	and $1C.b,S		; 23 1C
	inc A		; 1A
	rol $BE3C.w,X		; 3E 3C BE
	jmp ($FF47.w,X)		; 7C 47 FF
	rts		; 60

	jsr ($F820.w,X)		; FC 20 F8
	and ($FF.b),Y		; 31 FF
	ora ($7F.b,X)		; 01 7F
	clc		; 18
	ror $FE1C.w,X		; 7E 1C FE
	tsb $00FE.w		; 0C FE 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6B.b		; 00 6B
	and ($56.b,S),Y		; 33 56
	and $56.b,S		; 23 56
	and $56.b,S		; 23 56
	and [$0C.b]		; 27 0C
	and [$2C.b]		; 27 2C
	ora [$2C.b]		; 07 2C
	ora [$2C.b]		; 07 2C
	ora [$33.b]		; 07 33
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	brk $27.b		; 00 27
	brk $27.b		; 00 27
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $35.b		; 00 35
	xce		; FB
	and $FB.b		; 25 FB
	rtl		; 6B

	sbc [$6A.b],Y		; F7 6A
	sbc [$4A.b],Y		; F7 4A
	sbc [$4A.b],Y		; F7 4A
	sbc [$4A.b],Y		; F7 4A
	sbc [$4B.b],Y		; F7 4B
	inc $FB.b,X		; F6 FB
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($0C.b,X)		; 01 0C
	ora [$19.b]		; 07 19
	asl $1D33.w		; 0E 33 1D
	and [$3B.b]		; 27 3B
	ror $0037.w		; 6E 37 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $66.b		; 00 66
	ora $679F.w,Y		; 19 9F 67
	jmp ($F09F.w,X)		; 7C 9F F0
	adc $82FFC0.l,X		; 7F C0 FF 82
	sbc $FB07.w,X		; FD 07 FB
	tsb $19F7.w		; 0C F7 19
	brk $67.b		; 00 67
	brk $9F.b		; 00 9F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $2A.b		; 00 2A
	cmp $DF28.w,X		; DD 28 DF
	jmp ($649B.w)		; 6C 9B 64
	txy		; 9B
	mvp $55,$BB		; 44 BB 55
	tax		; AA
	.db $42, $BD		; 42 BD
	rti		; 40

	lda $DD01DD.l,X		; BF DD 01 DD
	ora ($98.b,X)		; 01 98
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $88.b		; 00 88
	brk $89.b		; 00 89
	ora ($81.b,X)		; 01 81
	ora ($A8.b,X)		; 01 A8
	adc [$C0.b],Y		; 77 C0
	and $38CF50.l		; 2F 50 CF 38
	sbc [$DD.b]		; E7 DD
	and ($EA.b)		; 32 EA
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	bvs   0.b		; 70 00
	bmi -63.b		; 30 C1
	sbc ($A1.b,X)		; E1 A1
	sbc ($02.b,X)		; E1 02
	and ($00.b)		; 32 00
	bpl  48.b		; 10 30
	bmi -120.b		; 30 88
	dey		; 88
	cmp $FC.b,S		; C3 FC
	asl $F9.b		; 06 F9
	tas		; 1B
	sbc [$6D.b]		; E7 6D
	stz $7DB2.w,X		; 9E B2 7D
	cpy $FB.b		; C4 FB
	asl A		; 0A
	sbc [$14.b],Y		; F7 14
	sbc $F900FC.l		; EF FC 00 F9
	brk $E7.b		; 00 E7
	brk $9E.b		; 00 9E
	brk $7D.b		; 00 7D
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	brk $30.b		; 00 30
	sbc $41EED1.l,X		; FF D1 EE 41
	ldx $FE01.w,Y		; BE 01 FE
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	rol $5CF1.w		; 2E F1 5C
	sbc $FF.b,S		; E3 FF
	brk $EE.b		; 00 EE
	brk $BE.b		; 00 BE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E1.b		; 00 E1
	ora ($02.b,X)		; 01 02
	asl $0701.w		; 0E 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpy #$30.b		; C0 30
	rts		; 60

	bpl -32.b		; 10 E0
	bcc  32.b		; 90 20
	tya		; 98
	bcs -120.b		; B0 88
	bvs   8.b		; 70 08
	sei		; 78
	php		; 08
	sei		; 78
	clc		; 18
	cpx #$20.b		; E0 20
	cpx #$00.b		; E0 00
	bvs  16.b		; 70 10
	beq -112.b		; F0 90
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	inx		; E8
	php		; 08
	cld		; D8
	clc		; 18
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	ora $1C.b		; 05 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ror $38C3.w,X		; 7E C3 38
	sta $3C.b,S		; 83 3C
	stx $70.b		; 86 70
	stx $78.b		; 86 78
	sty $0C60.w		; 8C 60 0C
	bne  24.b		; D0 18
	ldy #$38.b		; A0 38
	bit $7E00.w,X		; 3C 00 7E
	cop $F8.b		; 02 F8
	bra  -4.b		; 80 FC
	sty $F0.b		; 84 F0
	bra  -8.b		; 80 F8
	php		; 08
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	ror $FC00.w,X		; 7E 00 FC
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
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
	lsr $A0F0.w		; 4E F0 A0
	cpy #$03.b		; C0 03
	cop $03.b		; 02 03
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	inc $FE00.w,X		; FE 00 FE
	cop $87.b		; 02 87
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	rts		; 60

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$40.b		; C0 40
	cpx #$2C.b		; E0 2C
	ora [$2D.b]		; 07 2D
	asl $0D.b		; 06 0D
	asl $0D.b		; 06 0D
	asl $02.b		; 06 02
	ora [$06.b]		; 07 06
	ora $05.b,S		; 03 05
	ora $01.b,S		; 03 01
	ora $07.b,S		; 03 07
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $49.b		; 00 49
	inc $41.b,X		; F6 41
	inc $FE41.w,X		; FE 41 FE
	eor ($EE.b),Y		; 51 EE
	cli		; 58
	sbc [$AC.b]		; E7 AC
	adc ($AE.b,S),Y		; 73 AE
	adc ($69.b),Y		; 71 69
	bcs -10.b		; B0 F6
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $E7.b		; 00 E7
	brk $73.b		; 00 73
	brk $71.b		; 00 71
	brk $B0.b		; 00 B0
	brk $5C.b		; 00 5C
	adc [$78.b]		; 67 78
	eor $F04FB8.l		; 4F B8 4F F0
	ora $B31EB1.l,X		; 1F B1 1E B3
	trb $39A7.w		; 1C A7 39
	rtl		; 6B

	and ($67.b),Y		; 31 67
	brk $4F.b		; 00 4F
	brk $4F.b		; 00 4F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $39.b		; 00 39
	brk $31.b		; 00 31
	brk $18.b		; 00 18
	sbc $61DF30.l		; EF 30 DF 61
	lda $C57EC3.l,X		; BF C3 7E C5
	inc $FD8A.w,X		; FE 8A FD
	txy		; 9B
	sbc $FB15.w,X		; FD 15 FB
	sbc $00DF00.l		; EF 00 DF 00
	lda $007E00.l,X		; BF 00 7E 00
	inc $FD00.w,X		; FE 00 FD
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $60.b		; 00 60
	sta $FB0EF1.l,X		; 9F F1 0E FB
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $81.b		; 00 81
	ora ($22.b,X)		; 01 22
	jsl $222424.l		; 22 24 24 22
	jsl $112222.l		; 22 22 22 11
	ora ($91.b),Y		; 11 91
	ora ($10.b),Y		; 11 10
	bpl  -4.b		; 10 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora $FF.b,S		; 03 FF
	ora ($EF.b,X)		; 01 EF
	brk $44.b		; 00 44
	mvp $23,$23		; 44 23 23
	jsr $1120.w		; 20 20 11
	ora ($12.b),Y		; 11 12
	ora ($1D.b)		; 12 1D
	ora $101E.w,X		; 1D 1E 10
	lda $DF68A0.l,X		; BF A0 68 DF
	cmp ($BF.b),Y		; D1 BF
	ldx $7B.b		; A6 7B
	lsr $CCF7.w		; 4E F7 CC
	sbc [$9D.b],Y		; F7 9D
	inc $EE99.w		; EE 99 EE
	pld		; 2B
	jmp.w [$00DF]		; DC DF 00
	lda $007B00.l,X		; BF 00 7B 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	inc $EE00.w		; EE 00 EE
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	.db $82, $6E, $93		; 82 6E 93
	cpy $AE2B.w		; CC 2B AE
	adc $6FAC.w		; 6D AC 6F
	lda ($7C.b),Y		; B1 7C
	ldx $71.b,Y		; B6 71
	cmp $02.b,S		; C3 02
	sta ($00.b,X)		; 81 00
	sta ($11.b,X)		; 81 11
	ora ($39.b,X)		; 01 39
	tsb $7C.b		; 04 7C
	tsb $10FE.w		; 0C FE 10
	inc $F830.w,X		; FE 30 F8
	bcc  96.b		; 90 60
	cmp ($21.b),Y		; D1 21
	cmp $33.b,S		; C3 33
	eor [$17.b]		; 47 17
	lda [$9F.b]		; A7 9F
	ror $CF.b		; 66 CF
	bpl -50.b		; 10 CE
	sta ($44.b)		; 92 44
	cpy #$C041.w		; C0 41 C0
	ora $E1.b,S		; 03 E1
	and [$E3.b]		; 27 E3
	ora $B41776.l		; 0F 76 17 B4
	sta [$78.b]		; 87 78
	phk		; 4B
	sec		; 38
	ora ($E0.b,X)		; 01 E0
	beq -64.b		; F0 C0
	cpx #$E0C0.w		; E0 C0 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	sbc $F1C0.w,Y		; F9 C0 F1
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	eor ($FE.b,X)		; 41 FE
	cpy $FF.b		; C4 FF
	and $10FF.w,Y		; 39 FF 10
	sbc $02FD02.l,X		; FF 02 FD 02
	lda $8E9A29.l,X		; BF 29 9A 8E
	pld		; 2B
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	brk $DE.b		; 00 DE
	asl $4070.w		; 0E 70 40
	jsr $60C0.w		; 20 C0 60
	cpy #$E0F0.w		; C0 F0 E0
	clv		; B8
	cpx #$D038.w		; E0 38 D0
	ldy $4C50.w,X		; BC 50 4C
	clc		; 18
	asl $C098.w		; 0E 98 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	php		; 08
	bne  24.b		; D0 18
	bvc  28.b		; 50 1C
	php		; 08
	bit $3E08.w,X		; 3C 08 3E
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E040.w		; C0 40 E0
	ldy #$88C8.w		; A0 C8 88
	sei		; 78
	cld		; D8
	jmp ($30DC.w)		; 6C DC 30
	cpx #$6636.w		; E0 36 66
	brk $80.b		; 00 80
	rti		; 40

	cpy #$E020.w		; C0 20 E0
	dey		; 88
	iny		; C8
	cli		; 58
	sed		; F8
	jmp $20FC.w		; 4C FC 20
	beq  38.b		; F0 26
	inc $0F.b,X		; F6 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	plp		; 28
	plp		; 28
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

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
	tsb $0618.w		; 0C 18 06
	trb $0C06.w		; 1C 06 0C
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	brk $04.b		; 00 04
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	php		; 08
	bit $3E04.w,X		; 3C 04 3E
	tsb $1E.b		; 04 1E
	cop $1F.b		; 02 1F
	cop $0E.b		; 02 0E
	brk $0F.b		; 00 0F
	ora ($03.b,X)		; 01 03
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cpy #$0838.w		; C0 38 08
	and [$05.b]		; 27 05
	asl $1A06.w,X		; 1E 06 1A
	asl $1008.w		; 0E 08 10
	brk $1C.b		; 00 1C
	asl $26.b		; 06 26
	bmi  17.b		; 30 11
	php		; 08
	rol $3F00.w,X		; 3E 00 3F
	tsb $3E.b		; 04 3E
	ora $1B.b,S		; 03 1B
	ora [$3F.b]		; 07 3F
	ora $5B.b,S		; 03 5B
	ora $3F.b,S		; 03 3F
	brk $72.b		; 00 72
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bne   0.b		; D0 00
	pla		; 68
	sec		; 38
	pha		; 48
	pha		; 48
	stx $068E.w		; 8E 8E 06
	asl $46.b		; 06 46
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	php		; 08
	sei		; 78
	bra -40.b		; 80 D8
	asl $9E.b		; 06 9E
	cop $0E.b		; 02 0E
	cpy #$E5CE.w		; C0 CE E5
	trb $7EC2.w		; 1C C2 7E
	eor ($6F.b,X)		; 41 6F
	brk $67.b		; 00 67
	bra -61.b		; 80 C3
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	pld		; 2B
	plp		; 28
	lda $A4.b		; A5 A4
	.db $82, $02, $C1		; 82 02 C1
	eor ($00.b,X)		; 41 00
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
	brk $09.b		; 00 09
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3A.b		; 00 3A
	ora $E3.b		; 05 E3
	ora $00FE19.l,X		; 1F 19 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $1F.b		; 00 1F
	brk $FE.b		; 00 FE
	brk $0A.b		; 00 0A
	ora [$18.b]		; 07 18
	ora [$31.b]		; 07 31
	ora $8207F8.l		; 0F F8 07 82
	adc $FE01.w,X		; 7D 01 FE
	bvs -113.b		; 70 8F
	cpy #$073F.w		; C0 3F 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $7D.b		; 00 7D
	brk $FE.b		; 00 FE
	brk $8F.b		; 00 8F
	brk $3F.b		; 00 3F
	brk $4B.b		; 00 4B
	ldy $5F.b		; A4 5F
	bcs -113.b		; B0 8F
	bmi -97.b		; 30 9F
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	ldy $8A.b		; A4 8A
	.db $82, $15, $15		; 82 15 15
	ora #$1209.w		; 09 09 12
	ora ($04.b)		; 12 04
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	sbc ($FF.b),Y		; F1 FF
	adc $F47EFD.l,X		; 7F FD 7E F4
	sei		; 78
	bne -32.b		; D0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	adc $7F787F.l,X		; 7F 7F 78 7F
	brk $7E.b		; 00 7E
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $C14E60.l		; CF 60 4E C1
	tsb $84C6.w		; 0C C6 84
	.db $62, $C0, $3C		; 62 C0 3C
	cpx #$E000.w		; E0 00 E0
	brk $B0.b		; 00 B0
	cpy #$003F.w		; C0 3F 00
	ldx $B800.w,Y		; BE 00 B8
	brk $3C.b		; 00 3C
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	cop $0A.b		; 02 0A
	asl A		; 0A
	cop $1D.b		; 02 1D
	ora $0B1F.w		; 0D 1F 0B
	ora $1C320B.l,X		; 1F 0B 32 1C
	stz $39.b,X		; 74 39
	brk $1E.b		; 00 1E
	cop $1F.b		; 02 1F
	cop $0F.b		; 02 0F
	ora $0B1F.w		; 0D 1F 0B
	ora $103F01.l,X		; 1F 01 3F 10
	adc $00FF30.l,X		; 7F 30 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	cop $13.b		; 02 13
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $1A00.w		; 0C 00 1A
	rol $18.b,X		; 36 18
	bmi   0.b		; 30 00
	php		; 08
	clc		; 18
	clc		; 18
	cop $04.b		; 02 04
	asl $0C.b		; 06 0C
	adc $06.b,S		; 63 06
	sta $7C.b,S		; 83 7C
	ora ($FE.b)		; 12 FE
	bpl 120.b		; 10 78
	brk $78.b		; 00 78
	clc		; 18
	clc		; 18
	brk $3E.b		; 00 3E
	tsb $0E.b		; 04 0E
	cop $1F.b		; 02 1F
	jmp ($FE01.w,X)		; 7C 01 FE
	brk $BE.b		; 00 BE
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	bra  96.b		; 80 60
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	jsr $1030.w		; 20 30 10
	bmi  24.b		; 30 18
	bit $800C.w,X		; 3C 0C 80
	cpy #$C000.w		; C0 00 C0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	brk $60.b		; 00 60
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	php		; 08
	ror $1110.w,X		; 7E 10 11
	and ($00.b,X)		; 21 00
	bpl   0.b		; 10 00
	ora ($05.b),Y		; 11 05
	tsb $0704.w		; 0C 04 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,S),Y		; 33 00
	and ($00.b,X)		; 21 00
	adc ($01.b),Y		; 71 01
	and $04.b,X		; 35 04
	bit $0700.w		; 2C 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($66.b)		; 72 66
	jmp $A8AC.w		; 4C AC A8
	dey		; 88
	jsr $3060.w		; 20 60 30
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	tsb $EC.b		; 04 EC
	php		; 08
	tay		; A8
	jsr $2060.w		; 20 60 20
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  88.b		; 80 58
	clc		; 18
	sed		; F8
	tya		; 98
	inc $C6.b		; E6 C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	php		; 08
	cld		; D8
	dey		; 88
	sed		; F8
	dec $E6.b		; C6 E6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jmp ($7E00.w,X)		; 7C 00 7E
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $6C3F66.l		; 2F 66 3F 6C
	and $106F58.l		; 2F 58 6F 10
	and $003F00.l,X		; 3F 00 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	asl $06.b,X		; 16 06
	tsb $0C.b		; 04 0C
	cop $1A.b		; 02 1A
	cop $32.b		; 02 32
	cop $62.b		; 02 62
	cop $42.b		; 02 42
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpx #$20.b		; E0 20
	jsr $7060.w		; 20 60 70
	bvs   0.b		; 70 00
	brk $08.b		; 00 08
	sec		; 38
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	jsr $10F0.w		; 20 F0 10
	beq   0.b		; F0 00
	sei		; 78
	php		; 08
	bit $3800.w,X		; 3C 00 38
	inc $FE00.w,X		; FE 00 FE
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $40.b		; 02 40
	bvs -128.b		; 70 80
	rts		; 60

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	ora $04.b,S		; 03 04
	sta [$8C.b]		; 87 8C
	asl $8C.b		; 06 8C
	asl $88.b		; 06 88
	asl $0CD8.w		; 0E D8 0C
	jsr ($940D.w,X)		; FC 0D 94
	ora $02.b		; 05 02
	ora [$84.b]		; 07 84
	ora [$04.b]		; 07 04
	ora $080F04.l		; 0F 04 0F 08
	ora $081F08.l		; 0F 08 1F 08
	ora $007F04.l,X		; 1F 04 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $1807.w		; 0C 07 18
	bit $5E17.w		; 2C 17 5E
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $17.b		; 00 17
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra  14.b		; 80 0E
	beq -56.b		; F0 C8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	inc $0100.w,X		; FE 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0E.b,S		; 03 0E
	ora [$1C.b]		; 07 1C
	ora $383F1C.l		; 0F 1C 3F 38
	ora $000000.l,X		; 1F 00 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $C7.b		; 00 C7
	sed		; F8
	sty $99F3.w		; 8C F3 99
	sbc [$23.b]		; E7 23
	dec $CC23.w		; CE 23 CC
	and ($DF.b),Y		; 31 DF
	dec A		; 3A
	cmp $3D.b,X		; D5 3D
	phx		; DA
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E2.b		; 00 E2
	asl A		; 0A
	cmp $14.b		; C5 14
	cmp [$14.b]		; C7 14
	dec $16.b		; C6 16
	cmp ($19.b,X)		; C1 19
	cpy #$1C.b		; C0 1C
	pea $F602.w		; F4 02 F6
	ora #$7F.b		; 09 7F
	sty $3A.b		; 84 3A
	eor [$9C.b]		; 47 9C
	jsl $E610CF.l		; 22 CF 10 E6
	bit #$73.b		; 89 73
	cpy $0B.b		; C4 0B
	asl A		; 0A
	ora #$09.b		; 09 09
	bra -128.b		; 80 80
	cmp $45.b		; C5 45
	sbc $22.b,S		; E3 22
	sbc ($10.b),Y		; F1 10
	sei		; 78
	php		; 08
	ldy $D384.w,X		; BC 84 D3
	jmp $071C62.l		; 5C 62 1C 07
	clv		; B8
	bcc 104.b		; 90 68
	bvs -128.b		; 70 80
	sei		; 78
	bra -32.b		; 80 E0
	ora ($E1.b,X)		; 01 E1
	ora $A4.b,S		; 03 A4
	bit $E4.b		; 24 E4
	ora $E0.b		; 05 E0
	lda ($00.b,X)		; A1 00
	ora $80.b,S		; 03 80
	sta $80.b,S		; 83 80
	sta ($00.b,X)		; 81 00
	ora $01.b,S		; 03 01
	ora $641F36.l		; 0F 36 1F 64
	and $653F64.l,X		; 3F 64 3F 65
	rol $3E61.w,X		; 3E 61 3E
	adc $3C.b,S		; 63 3C
	adc $3C.b,S		; 63 3C
	eor [$38.b]		; 47 38
	ora $003F00.l,X		; 1F 00 3F 00
	and $003E00.l,X		; 3F 00 3E 00
	rol $3D00.w,X		; 3E 00 3D
	ora ($3D.b,X)		; 01 3D
	ora ($39.b,X)		; 01 39
	ora ($88.b,X)		; 01 88
	bvs 127.b		; 70 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora [$A8.b]		; 07 A8
	plp		; 28
	eor ($51.b),Y		; 51 51
	sta ($92.b)		; 92 92
	ldx #$A2.b		; A2 A2
	bit $24.b		; 24 24
	bit $24.b		; 24 24
	pha		; 48
	pha		; 48
	bpl -40.b		; 10 D8
	sta $34.b,X		; 95 34
	xba		; EB
	php		; 08
	sbc [$00.b],Y		; F7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $FF.b		; 00 FF
	trb $7E.b		; 14 7E
	php		; 08
	trb $4840.w		; 1C 40 48
	eor ($52.b)		; 52 52
	eor ($51.b),Y		; 51 51
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	xce		; FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($FA.b,X)		; 01 FA
	ora $F4.b,S		; 03 F4
	ora [$F8.b]		; 07 F8
	ora $171017.l		; 0F 17 10 17
	bpl  -9.b		; 10 F7
	beq  23.b		; F0 17
	bpl  22.b		; 10 16
	bpl  45.b		; 10 2D
	and ($AA.b,X)		; 21 AA
	ldx #$44.b		; A2 44
	mvp $04,$04		; 44 04 04
	php		; 08
	php		; 08
	php		; 08
	tsb $0808.w		; 0C 08 08
	bmi  16.b		; 30 10
	bmi  24.b		; 30 18
	beq -96.b		; F0 A0
	rts		; 60

	bmi   0.b		; 30 00
	ora $001C00.l		; 0F 00 1C 00
	asl $1E00.w,X		; 1E 00 1E
	bpl  56.b		; 10 38
	bpl  60.b		; 10 3C
	bra  -4.b		; 80 FC
	jsr $0178.w		; 20 78 01
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $07.b		; 00 07
	asl $05.b		; 06 05
	asl $05.b		; 06 05
	tsb $00.b		; 04 00
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b		; 05 00
	ora ($60.b,X)		; 01 60
	bmi -32.b		; 30 E0
	bvs -64.b		; 70 C0
	rts		; 60

	cpy #$60.b		; C0 60
	cpy #$E0.b		; C0 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	jsr $6078.w		; 20 78 60
	sed		; F8
	rti		; 40

	beq  64.b		; F0 40
	beq -64.b		; F0 C0
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpx #$0C.b		; E0 0C
	asl $18.b		; 06 18
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $1830.w		; 0C 30 18
	bmi  24.b		; 30 18
	rts		; 60

	bmi  96.b		; 30 60
	bmi   4.b		; 30 04
	ora $081E08.l		; 0F 08 1E 08
	asl $1E08.w,X		; 1E 08 1E
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	jsr $2078.w		; 20 78 20
	sei		; 78
	adc $77.b		; 65 77
	sbc [$F7.b]		; E7 F7
	sbc [$F7.b],Y		; F7 F7
	adc ($F6.b)		; 72 F6
	beq 112.b		; F0 70
	bmi 114.b		; 30 72
	beq -70.b		; F0 BA
	tya		; 98
	tsx		; BA
	ora $FF.b		; 05 FF
	adc [$FF.b]		; 67 FF
	.db $62, $FF, $60		; 62 FF 60
	sbc $30FF30.l,X		; FF 30 FF 30
	sbc $98FF90.l,X		; FF 90 FF 98
	sbc $808080.l,X		; FF 80 80 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B5.b		; 00 B5
	eor $21DE31.l,X		; 5F 31 DE 21
	dec $946B.w,X		; DE 6B 94
	lda $51.b		; A5 51
	bit $33D4.w		; 2C D4 33
	cmp $5F06F3.l		; CF F3 06 5F
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $94.b		; 00 94
	brk $5B.b		; 00 5B
	ora ($DB.b,X)		; 01 DB
	brk $E4.b		; 00 E4
	bit $C9.b		; 24 C9
	iny		; C8
	cpy $FF.b		; C4 FF
	stx $EF.b,Y		; 96 EF
	and ($CF.b)		; 32 CF
	jmp $3649A7.l		; 5C A7 49 36
	sta $9AC430.l		; 8F 30 C4 9A
	sbc ($1E.b),Y		; F1 1E
	sbc $00EF00.l,X		; FF 00 EF 00
	cmp $000700.l		; CF 00 07 00
	ldx $A0.b		; A6 A0
	rts		; 60

	rts		; 60

	adc $02.b,S		; 63 02
	inc $06.b		; E6 06
	and ($7F.b)		; 32 7F
	stz $3F.b		; 64 3F
	adc $4AFE.w		; 6D FE 4A
	sbc $FD92.w,X		; FD 92 FD
	and $FA.b		; 25 FA
	adc #$F6.b		; 69 F6
	bvc -17.b		; 50 EF
	adc $003F00.l,X		; 7F 00 3F 00
	inc $FC00.w,X		; FE 00 FC
	brk $FC.b		; 00 FC
	brk $FA.b		; 00 FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	ror $6F8D.w,X		; 7E 8D 6F
	bra -12.b		; 80 F4
	ora $7E.b,S		; 03 7E
	sta ($1F.b),Y		; 91 1F
	dec $DF0F.w,X		; DE 0F DF
	cmp [$0F.b],Y		; D7 0F
	sta $27.b,S		; 83 27
	bra  30.b		; 80 1E
	bra  60.b		; 80 3C
	cop $3A.b		; 02 3A
	sta ($BD.b,X)		; 81 BD
	tsb $3E.b		; 04 3E
	asl $3F.b		; 06 3F
	ora $3F.b,S		; 03 3F
	ora ($7F.b,X)		; 01 7F
	lda $5E62.w,Y		; B9 62 5E
	lda ($2F.b),Y		; B1 2F
	jmp.w [$EE13]		; DC 13 EE
	ora $50A7E0.l,X		; 1F E0 A7 50
	cmp $C08FE8.l		; CF E8 8F C0
	asl $0F02.w,X		; 1E 02 0F
	ora ($03.b,X)		; 01 03
	brk $04.b		; 00 04
	tsb $80.b		; 04 80
	bra   1.b		; 80 01
	ora $F101.w,Y		; 19 01 F1
	tsb $E3FC.w		; 0C FC E3
	ora [$E7.b]		; 07 E7
	ora [$EE.b]		; 07 EE
	ora $E00EEC.l		; 0F EC 0E E0
	tsb $00CA.w		; 0C CA 00
	stx $BF08.w		; 8E 08 BF
	sta ($03.b,X)		; 81 03
	ora $4C1F06.l,X		; 1F 06 1F 4C
	eor $C05F48.l,X		; 5F 48 5F C0
	cmp $0EBD82.l,X		; DF 82 BD 0E
	adc $037D.w,Y		; 79 7D 03
	ror $19.b		; 66 19
	ror $19.b		; 66 19
	rol $19.b		; 26 19
	and ($09.b)		; 32 09
	ora ($09.b)		; 12 09
	ora $0D00.w,Y		; 19 00 0D
	brk $04.b		; 00 04
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra  71.b		; 80 47
	bcs  38.b		; B0 26
	sta ($92.b),Y		; 91 92
	ora ($48.b,X)		; 01 48
	pha		; 48
	pha		; 48
	pha		; 48
	php		; 08
	php		; 08
	bcs  48.b		; B0 30
	sta [$07.b]		; 87 07
	bcs   0.b		; B0 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sei		; 78
	bra  63.b		; 80 3F
	cpx #$88.b		; E0 88
	dey		; 88
	bra -128.b		; 80 80
	sty $84.b		; 84 84
	sta $85.b		; 85 85
	stx $86.b		; 86 86
	sei		; 78
	sei		; 78
	ora [$00.b]		; 07 00
	eor $0EF040.l,X		; 5F 40 F0 0E
	cpx #$1F.b		; E0 1F
	cmp [$3B.b]		; C7 3B
	sta ($65.b)		; 92 65
	tsb $24FA.w		; 0C FA 24
	cpx $2E.b		; E4 2E
.ACCU 8
	sep #$EA		; E2 EA
	cpx #$4A.b		; E0 4A
	eor #$5F.b		; 49 5F
	rti		; 40

	bcs -113.b		; B0 8F
	adc ($1E.b,X)		; 61 1E
	cmp $3D.b,S		; C3 3D
	adc $3F.b,S		; 63 3F
	eor ($33.b,X)		; 41 33
	sta ($F1.b,X)		; 81 F1
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	brk $07.b		; 00 07
	php		; 08
	ora [$18.b]		; 07 18
	ora $203F10.l		; 0F 10 3F 20
	adc $00FF40.l,X		; 7F 40 FF 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $BC.b		; 00 BC
	stz $9E0E.w		; 9C 0E 9E
	jmp $801E.w		; 4C 1E 80
	cpy $4800.w		; CC 00 48
	brk $10.b		; 00 10
	brk $90.b		; 00 90
	brk $30.b		; 00 30
	tsb $0EFF.w		; 0C FF 0E
	sbc $80FF00.l,X		; FF 00 FF 80
	inc $FC00.w,X		; FE 00 FC
	jsr $20C0.w		; 20 C0 20
	cpy #$60.b		; C0 60
	ldy #$0E.b		; A0 0E
	asl $08.b		; 06 08
	tsb $1C.b		; 04 1C
	asl $18.b		; 06 18
	tsb $0C18.w		; 0C 18 0C
	sec		; 38
	tsb $1830.w		; 0C 30 18
	bmi  24.b		; 30 18
	asl $0F.b		; 06 0F
	brk $0E.b		; 00 0E
	tsb $1F.b		; 04 1F
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	rol $3C10.w,X		; 3E 10 3C
	bpl  60.b		; 10 3C
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $0606.w		; 0C 06 06
	asl $00.b		; 06 00
	brk $04.b		; 00 04
	php		; 08
	tsb $0808.w		; 0C 08 08
	tsb $0000.w		; 0C 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	tsb $07.b		; 04 07
	brk $06.b		; 00 06
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	php		; 08
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cmp $A30C.w,Y		; D9 0C A3
	and ($77.b,X)		; 21 77
	tad		; 5B
	sta $E2.b,S		; 83 E2
	ora [$EC.b],Y		; 17 EC
	and $A0B7A0.l,X		; 3F A0 B7 A0
	sbc [$C0.b],Y		; F7 C0
	inx		; E8
	asl $1DC1.w,X		; 1E C1 1D
	sta ($3B.b,S),Y		; 93 3B
	.db $42, $5E		; 42 5E
	sta ($BD.b,X)		; 81 BD
	ora ($71.b,X)		; 01 71
	cop $7A.b		; 02 7A
	.db $42, $FA		; 42 FA
	ror $0E40.w,X		; 7E 40 0E
	brk $E6.b		; 00 E6
	bra -66.b		; 80 BE
	cpx #$B4.b		; E0 B4
	cpy #$08.b		; C0 08
	bvs  64.b		; 70 40
	pha		; 48
	sed		; F8
	bcc  66.b		; 90 42
	sbc ($04.b)		; F2 04
	pea $FC04.w		; F4 04 FC
	sty $E4.b		; 84 E4
	sty $BC.b		; 84 BC
	dey		; 88
	stz $FC80.w		; 9C 80 FC
	bra -100.b		; 80 9C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	trb $3F00.w		; 1C 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	and [$27.b]		; 27 27
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	eor #$00.b		; 49 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	and $E00FE0.l		; 2F E0 0F E0
	ora $300770.l,X		; 1F 70 07 30
	xba		; EB
	clc		; 18
	sbc $0C.b,X		; F5 0C
	sbc ($0C.b),Y		; F1 0C
	plx		; FA
	asl $5F.b		; 06 5F
	rti		; 40

	and $202F20.l,X		; 3F 20 2F 20
	ora $000710.l,X		; 1F 10 07 00
	phb		; 8B
	dey		; 88
	adc [$64.b]		; 67 64
	ora ($08.b,X)		; 01 08
	cpy $C5.b		; C4 C5
	cpx $45.b		; E4 45
	phx		; DA
	sbc $CB.b,X		; F5 CB
	adc ($D6.b,X)		; 61 D6
	bit $EC.b,X		; 34 EC
	and [$C2.b],Y		; 37 C2
	bpl -32.b		; 10 E0
	clc		; 18
	stx $E6.b		; 86 E6
	stx $67.b		; 86 67
	cpy #$FF.b		; C0 FF
	cpy #$4B.b		; C0 4B
	pea $C436.w		; F4 36 C4
	ora $F012F0.l		; 0F F0 12 F0
	bpl  56.b		; 10 38
	php		; 08
	sei		; 78
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	brk $00.b		; 00 00
	cpy $8C00.w		; CC 00 8C
	bpl -100.b		; 10 9C
	bpl -100.b		; 10 9C
	bra -112.b		; 80 90
	bmi 112.b		; 30 70
	bpl  48.b		; 10 30
	bmi  48.b		; 30 30
	tsb $1806.w		; 0C 06 18
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $1830.w		; 0C 30 18
	bmi  24.b		; 30 18
	jsr $6038.w		; 20 38 60
	bmi   4.b		; 30 04
	ora $081E08.l		; 0F 08 1E 08
	asl $1E08.w,X		; 1E 08 1E
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	jsr $203C.w		; 20 3C 20
	sei		; 78
	sed		; F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $1F.b		; 00 1F
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
	brk $C5.b		; 00 C5
	bit $3ED2.w,X		; 3C D2 3E
	sbc $7C1F.w,Y		; F9 1F 7C
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	sec		; 38
	ora $34.b		; 05 34
	inc A		; 1A
	inc A		; 1A
	ora ($0D.b,X)		; 01 0D
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $60.b,S		; C3 60
	sta $20.b,S		; 83 20
	eor $20.b,S		; 43 20
	sta $A0.b,S		; 83 A0
	cmp $00.b,S		; C3 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
	cop $06.b		; 02 06
	ora [$0C.b]		; 07 0C
	ora [$18.b]		; 07 18
	asl $31.b		; 06 31
	tsb $1863.w		; 0C 63 18
	cmp [$02.b]		; C7 02
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	php		; 08
	ora $223E11.l,X		; 1F 11 3E 22
	jmp ($FE44.w,X)		; 7C 44 FE
	ora ($7E.b,X)		; 01 7E
	bra  63.b		; 80 3F
	eor ($FE.b,X)		; 41 FE
	eor ($A7.b,X)		; 41 A7
	clc		; 18
	adc ($DE.b,X)		; 61 DE
	and ($DE.b,X)		; 21 DE
	and ($DE.b,X)		; 21 DE
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cld		; D8
	clc		; 18
	asl $06.b		; 06 06
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	sty $F3.b		; 84 F3
	ora ($2B.b,S),Y		; 13 2B
	cli		; 58
	ora $7F.b		; 05 7F
	jsr $A09F.w		; 20 9F A0
	ror $BCC1.w,X		; 7E C1 BC
	eor $65.b,S		; 43 65
	inc A		; 1A
	jmp ($CC10.w,X)		; 7C 10 CC
	php		; 08
	sbc $01.b,S		; E3 01
	cmp ($01.b,X)		; C1 01
	eor ($01.b,X)		; 41 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	sta ($90.b)		; 92 90
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  32.b		; 80 20
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	inc $3FFE.w,X		; FE FE 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FE.b		; 00 FE
	cpy #$FF.b		; C0 FF
	rol $00FF.w,X		; 3E FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cpx #$00.b		; E0 00
	xce		; FB
	and $5C3C.w,X		; 3D 3C 5C
	and $1D5C.w,X		; 3D 5C 1D
	dec $003E.w		; CE 3E 00
	ror $03.b,X		; 76 03
	cmp [$07.b]		; C7 07
	adc [$66.b]		; 67 66
	adc [$18.b]		; 67 18
	ror $3F09.w,X		; 7E 09 3F
	tsb $2E3E.w		; 0C 3E 2E
	ora $438F70.l,X		; 1F 70 8F 43
	lda $66FF07.l,X		; BF 07 FF 66
	sbc $7EC339.l,X		; FF 39 C3 7E
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	bra -33.b		; 80 DF
	cpy #$00.b		; C0 00
	cpx #$B0.b		; E0 B0
	lda [$4C.b],Y		; B7 4C
	eor $8B8B.w		; 4D 8B 8B
	ora ($12.b)		; 12 12
	ora ($92.b)		; 12 92
	sta ($D2.b)		; 92 D2
.ACCU 16
	rep #$E2		; C2 E2
	brk $FF.b		; 00 FF
	sec		; 38
	ora $381F38.l,X		; 1F 38 1F 38
	ora $190F18.l,X		; 1F 18 0F 19
	asl $060D.w		; 0E 0D 06
	tsb $0006.w		; 0C 06 00
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $17.b		; 00 17
	beq -121.b		; F0 87
	bvs -81.b		; 70 AF
	cli		; 58
	lda $58A758.l		; AF 58 A7 58
	lda $48.b,S		; A3 48
	cmp [$0C.b]		; C7 0C
	eor $0C.b,S		; 43 0C
	cmp $105F00.l		; CF 00 5F 10
	eor [$10.b],Y		; 57 10
	eor [$00.b]		; 47 00
	eor $084F08.l		; 4F 08 4F 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	tyx		; BB
	clv		; B8
	cmp ($D4.b,S),Y		; D3 D4
	lda $10DF28.l		; AF 28 DF 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and ($FE.b)		; 32 FE
	eor ($FD.b),Y		; 51 FD
	bit $7C.b		; 24 7C
	tya		; 98
	clv		; B8
	adc ($72.b)		; 72 72
	adc #$4869.w		; 69 69 48
	pha		; 48
	mvp $F5,$44		; 44 44 F5
	plb		; AB
	ora $AB.b,X		; 15 AB
	cmp ($6D.b,S),Y		; D3 6D
	cmp ($2D.b)		; D2 2D
	sbc ($0D.b)		; F2 0D
	sbc $F106.w,Y		; F9 06 F1
	asl $06E1.w		; 0E E1 06
	phk		; 4B
	brk $EB.b		; 00 EB
	ldy #$8D.b		; A0 8D
	bra  77.b		; 80 4D
	rti		; 40

	and $1620.w		; 2D 20 16
	bpl -82.b		; 10 AE
	ldy #$66.b		; A0 66
	sei		; 78
	dec $7F.b		; C6 7F
	stx $39.b		; 86 39
	sta $3C.b,S		; 83 3C
	cmp $3C.b,S		; C3 3C
	sbc ($3E.b,X)		; E1 3E
	sbc ($3E.b,X)		; E1 3E
	cmp ($0E.b),Y		; D1 0E
	iny		; C8
	ora [$9F.b],Y		; 17 9F
	ora [$D8.b]		; 07 D8
	brk $FC.b		; 00 FC
	jsr $20FC.w		; 20 FC 20
	dec $DE00.w,X		; DE 00 DE
	brk $EE.b		; 00 EE
	brk $E7.b		; 00 E7
	brk $FF.b		; 00 FF
	cpx $E03F.w		; EC 3F E0
	sta [$70.b],Y		; 97 70
	sbc $1C.b		; E5 1C
	and ($CE.b)		; 32 CE
	ora $04F3.w		; 0D F3 04
	sbc $7884.w,Y		; F9 84 78
	adc $E0FF6C.l,X		; 7F 6C FF E0
	and $080B20.l		; 2F 20 0B 08
	cmp ($00.b,X)		; C1 00
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	tsb $0B.b		; 04 0B
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	ora $02.b		; 05 02
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $000000.l		; 0F 00 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	trb $08.b		; 14 08
	php		; 08
	bra   6.b		; 80 06
	phd		; 0B
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $8F.b		; 00 8F
	brk $EB.b		; 00 EB
	and ($8C.b,S),Y		; 33 8C
	stz $19.b		; 64 19
	tsb $96B1.w		; 0C B1 96
	pla		; 68
	ldx #$5C.b		; A2 5C
	sbc ($1E.b,X)		; E1 1E
	sbc ($1E.b,X)		; E1 1E
	adc $88F800.l,X		; 7F 00 F8 88
	beq  19.b		; F0 13
	cpx #$A3.b		; E0 A3
	pha		; 48
	eor #$9190.w		; 49 90 91
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $80.b		; 00 80
.ACCU 8
.INDEX 8
	sep #$7C		; E2 7C
	sbc ($EC.b)		; F2 EC
	sbc $43D2.w		; ED D2 43
	lda $1DE3.w,X		; BD E3 1D
	and [$6B.b],Y		; 37 6B
	and $5F1F77.l,X		; 3F 77 1F 5F
	and ($61.b,X)		; 21 61
	and ($E1.b,X)		; 21 E1
	bvc -48.b		; 50 D0
	jsr $00A1.w		; 20 A1 00
	cmp ($02.b,X)		; C1 02
	sbc $16.b,S		; E3 16
	sbc [$0C.b],Y		; F7 0C
	sbc $893A45.l,X		; FF 45 3A 89
	ror $C9.b,X		; 76 C9
	rol $B1.b,X		; 36 B1
	lsr $6E91.w		; 4E 91 6E
	lda #$5E.b		; A9 5E
	tsb $A3.b		; 04 A3
	adc $22.b,X		; 75 22
	ldx #$A0.b		; A2 A0
	.db $42, $40		; 42 40
	cop $00.b		; 02 00
	.db $42, $40		; 42 40
	asl A		; 0A
	php		; 08
	ora ($10.b)		; 12 10
	tsa		; 3B
	cpx #$1A.b		; E0 1A
	bra  32.b		; 80 20
	cpy #$50.b		; C0 50
	cpx #$50.b		; E0 50
	cpx #$28.b		; E0 28
	beq  40.b		; F0 28
	beq  20.b		; F0 14
	sed		; F8
	trb $F8.b		; 14 F8
	sty $C0F8.w		; 8C F8 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7F.b		; 00 7F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	adc $000300.l,X		; 7F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	sbc [$E7.b],Y		; F7 E7
	ora $02000F.l		; 0F 0F 00 02
	asl $0E.b		; 06 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  -1.b		; D0 FF
	ora [$EF.b]		; 07 EF
	brk $0F.b		; 00 0F
	cop $06.b		; 02 06
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora ($80.b,S),Y		; 13 80
	jmp ($7DC2.w,X)		; 7C C2 7D
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
	rts		; 60

	and $693E69.l,X		; 3F 69 3E 69
	rol $6F10.w,X		; 3E 10 6F
	jmp ($7D03.w,X)		; 7C 03 7D
	brk $7D.b		; 00 7D
	brk $7D.b		; 00 7D
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $20.b		; 00 20
	lda $3F1F7F.l,X		; BF 7F 1F 3F
	cpy #$C03F.w		; C0 3F C0
	and $F013C0.l,X		; 3F C0 13 F0
	ora [$F0.b],Y		; 17 F0
	ora [$F0.b],Y		; 17 F0
	jsr $1FFF.w		; 20 FF 1F
	sbc $C21FC0.l,X		; FF C0 1F C2
	cop $F2.b		; 02 F2
	and ($CF.b)		; 32 CF
	ora $CF.b,S		; 03 CF
	brk $CF.b		; 00 CF
	brk $04.b		; 00 04
	cop $04.b		; 02 04
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	tsb $03.b		; 04 03
	asl $01.b		; 06 01
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $1C05.w		; 0C 05 1C
	phd		; 0B
	sec		; 38
	ora [$70.b],Y		; 17 70
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $002700.l		; 0F 00 27 00
	tsb $D8.b		; 04 D8
	cld		; D8
	stp		; DB
	xce		; FB
	ora $FF.b,S		; 03 FF
	brk $F2.b		; 00 F2
	ora $6E96.w		; 0D 96 6E
	cmp $DC0477.l		; CF 77 04 DC
	tsb $FF.b		; 04 FF
	cld		; D8
	sbc $2CFF23.l,X		; FF 23 FF 2C
	and $C1FFF8.l		; 2F F8 FF C1
	lsr $96.b		; 46 96
	asl $FA.b		; 06 FA
	ora $1D3C.w,Y		; 19 3C 1D
	ora ($C0.b,X)		; 01 C0
	cpy #$FEFE.w		; C0 FE FE
	and $F4C13F.l,X		; 3F 3F C1 F4
	phk		; 4B
	ror $596D.w,X		; 7E 6D 59
	jmp $00DE0D.l		; 5C 0D DE 00
	inc $FFC0.w,X		; FE C0 FF
	rol $01FF.w,X		; 3E FF 01
	sbc $D36E92.l,X		; FF 92 6E D3
	adc $17C8.w		; 6D C8 17
	cpx $13.b		; E4 13
	cpx $13.b		; E4 13
	cmp ($12.b,X)		; C1 12
	sbc ($32.b,X)		; E1 32
	cpy #$C222.w		; C0 22 C2
	rts		; 60

	rep #$40		; C2 40
	sbc [$00.b]		; E7 00
	sbc $00.b,S		; E3 00
	sbc $00.b,S		; E3 00
	sep #$00		; E2 00
	rep #$00		; C2 00
.ACCU 8
	sep #$20		; E2 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	php		; 08
	bvs  72.b		; 70 48
	bmi  80.b		; 30 50
	jsr $2010.w		; 20 10 20
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	tsb $0305.w		; 0C 05 03
	asl A		; 0A
	php		; 08
	tsb $04.b		; 04 04
	asl A		; 0A
	tsb $0707.w		; 0C 07 07
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	tsb $011D.w		; 0C 1D 01
	ora [$08.b]		; 07 08
	asl A		; 0A
	brk $04.b		; 00 04
	php		; 08
	ora $070704.l		; 0F 04 07 07
	ora [$00.b]		; 07 00
	brk $13.b		; 00 13
	adc ($84.b),Y		; 71 84
	cmp [$23.b]		; C7 23
	and $17.b,S		; 23 17
	ora ($0A.b)		; 12 0A
	asl $92.b		; 06 92
	sty $C8.b,X		; 94 C8
	beq   0.b		; F0 00
	brk $9C.b		; 00 9C
	cmp $1AFDBC.l,X		; DF BC FD 1A
	tsa		; 3B
	brk $17.b		; 00 17
	brk $9E.b		; 00 9E
	brk $FE.b		; 00 FE
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $6700.w,X		; 3C 00 67
	clc		; 18
	lsr $1831.w		; 4E 31 18
	adc $009F7D.l		; 6F 7D 9F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	brk $6F.b		; 00 6F
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $19.b		; 00 19
	cpx #$FC93.w		; E0 93 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FC00.w		; E0 00 FC
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	adc $1FAF00.l,X		; 7F 00 AF 1F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	adc $808080.l,X		; 7F 80 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	rts		; 60

	cpy #$C000.w		; C0 00 C0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

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
	rti		; 40

	rts		; 60

	rtl		; 6B

	jmp ($0F0E.w)		; 6C 0E 0F
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $EE.b		; 00 EE
	rti		; 40

	sbc $007F0C.l,X		; FF 0C 7F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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

	cmp $007F20.l,X		; DF 20 7F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $02.b		; 00 02
	.db $62, $02, $C2		; 62 02 C2
	cop $82.b		; 02 82
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	inc $FE00.w,X		; FE 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	sed		; F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $19.b		; 00 19
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
	brk $6B.b		; 00 6B
	lda $C2BDE3.l,X		; BF E3 BD C2
	lda $A9D6.w,X		; BD D6 A9
	lsr A		; 4A
	ldx #$A859.w		; A2 59 A8
	lda [$5F.b]		; A7 5F
	ora [$EC.b]		; 07 EC
	lda $00BD00.l,X		; BF 00 BD 00
	lda $A800.w,X		; BD 00 A8
	brk $B7.b		; 00 B7
	ora $B6.b,S		; 03 B6
	brk $88.b		; 00 88
	dey		; 88
	adc ($50.b,S),Y		; 73 50
	bit #$FE.b		; 89 FE
	bit $65DF.w		; 2C DF 65
	stz $4EB9.w,X		; 9E B9 4E
	sta ($6C.b)		; 92 6C
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
	brk $28.b		; 00 28
	beq -48.b		; F0 D0
	clv		; B8
	bne -72.b		; D0 B8
	cpx $EC98.w		; EC 98 EC
	tya		; 98
	cld		; D8
	sty $8448.w		; 8C 48 84
	pha		; 48
	sty $F0.b		; 84 F0
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $8C.b		; 00 8C
	brk $84.b		; 00 84
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	tsb $84.b		; 04 84
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $6C.b		; 00 6C
	jmp ($BB70.w)		; 6C 70 BB
	lda $3E3D.w,X		; BD 3D 3E
	lda $000004.l,X		; BF 04 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FF0C.w)		; 6C 0C FF
	brk $FF.b		; 00 FF
	and $30FF.w,X		; 3D FF 30
	adc $80DC04.l,X		; 7F 04 DC 80
	rts		; 60

	cpy #$E020.w		; C0 20 E0
	bpl -16.b		; 10 F0
	php		; 08
	sed		; F8
	sty $5C.b		; 84 5C
	dec $3C.b		; C6 3C
	sbc $80.b,S		; E3 80
	ldx $5CC0.w,Y		; BE C0 5C
	cpx #$F020.w		; E0 20 F0
	bpl  -8.b		; 10 F8
	php		; 08
	jmp ($BA04.w,X)		; 7C 04 BA
	.db $82, $5E, $42		; 82 5E 42
	asl $1E73.w,X		; 1E 73 1E
	adc ($1F.b,S),Y		; 73 1F
	adc ($2F.b),Y		; 71 2F
	adc $2F.b,S		; 63 2F
	ror $1F.b		; 66 1F
	cpy $D83F.w		; CC 3F D8
	eor $202CB0.l,X		; 5F B0 2C 20
	bit $2D20.w		; 2C 20 2D
	and ($1B.b,X)		; 21 1B
	ora $16.b,S		; 03 16
	asl $6C.b		; 06 6C
	jmp $5848.w		; 4C 48 58
	cop $32.b		; 02 32
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	jmp ($5971.w,X)		; 7C 71 59
	adc $0001.w,X		; 7D 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	rts		; 60

	sbc $00FF01.l,X		; FF 01 FF 00
	sta $0000.w,Y		; 99 00 00
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $80.b		; 00 80
	sty $F8.b		; 84 F8
	jsr ($7F7F.w,X)		; FC 7F 7F
	ora $AF.b,S		; 03 AF
	cpx $6060.w		; EC 60 60
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	bra  -1.b		; 80 FF
	sei		; 78
	sbc $AC7F03.l,X		; FF 03 7F AC
	sbc $006060.l		; EF 60 60 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	asl $3D0A.w,X		; 1E 0A 3D
	ora [$78.b]		; 07 78
	and $0000C0.l,X		; 3F C0 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $3D00.w,X		; 1E 00 3D
	brk $7B.b		; 00 7B
	ora $FC.b,S		; 03 FC
	bit $0100.w,X		; 3C 00 01
	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	ora $001900.l		; 0F 00 19 00
	bpl   6.b		; 10 06
	asl $0F.b		; 06 0F
	ora $00000F.l		; 0F 0F 00 00
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	ora #$09.b		; 09 09
	bpl  22.b		; 10 16
	brk $0F.b		; 00 0F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $0806.w		; 0E 06 08
	cop $04.b		; 02 04
	tsb $01.b		; 04 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $0E.b		; 06 0E
	brk $0A.b		; 00 0A
	tsb $04.b		; 04 04
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $30.b		; 00 30
	plp		; 28
	bpl  16.b		; 10 10
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $1E.b		; 00 1E
	trb $3EC2.w		; 1C C2 3E
	adc $1E.b,S		; 63 1E
	adc $1F.b,S		; 63 1F
	.db $62, $3F, $61		; 62 3F 61
	and $E63F63.l,X		; 3F 63 3F E6
	and $427EEC.l,X		; 3F EC 7E 42
	trb $3C00.w		; 1C 00 3C
	jsr $203C.w		; 20 3C 20
	trb $5A01.w		; 1C 01 5A
	eor $56.b,S		; 43 56
	lsr $45.b		; 46 45
	eor $0000.w		; 4D 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	and $0F5700.l,X		; 3F 00 57 0F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	and $804040.l,X		; 3F 40 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $67.b		; 00 67
	clc		; 18
	lsr $0031.w		; 4E 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
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
	ora ($07.b,X)		; 01 07
	brk $0E.b		; 00 0E
	brk $17.b		; 00 17
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b]		; 07 06
	ora $010300.l		; 0F 00 03 01
	asl $07.b		; 06 07
	trb $7017.w		; 1C 17 70
	eor $B4C1.w,X		; 5D C1 B4
	ora [$D3.b]		; 07 D3
	trb $11EE.w		; 1C EE 11
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	phd		; 0B
	php		; 08
	and $80BE20.l		; 2F 20 BE 80
	ply		; 7A
	cop $A8.b		; 02 A8
	dey		; 88
	rti		; 40

	rti		; 40

	adc [$DF.b]		; 67 DF
	lda [$0C.b]		; A7 0C
	lda ($0C.b),Y		; B1 0C
	inx		; E8
	lsr $BC.b		; 46 BC
	eor ($CF.b,S),Y		; 53 CF
	bpl 127.b		; 10 7F
	bra -109.b		; 80 93
	tsb $8888.w		; 0C 88 88
	eor ($10.b,S),Y		; 53 10
	adc [$04.b]		; 67 04
	and ($02.b,S),Y		; 33 02
	jsr $2100.w		; 20 00 21
	ora ($81.b,X)		; 01 81
	sta ($68.b,X)		; 81 68
	pla		; 68
	dey		; 88
	bmi -32.b		; 30 E0
	bmi  32.b		; 30 20
	beq   0.b		; F0 00
	cpx #$4020.w		; E0 20 40
	jsr $20C0.w		; 20 C0 20
	cpy #$C020.w		; C0 20 C0
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $40C0.w		; 20 C0 40
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $06.b		; 00 06
	ora $07.b,S		; 03 07
	brk $04.b		; 00 04
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	cmp ($D3.b,S),Y		; D3 D3
	cmp ($C4.b,S),Y		; D3 C4
	ora $06.b		; 05 06
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	adc $D3FF03.l		; 6F 03 FF D3
	sbc $00D704.l,X		; FF 04 D7 00
	ora [$5F.b]		; 07 5F
	jsr $003F.w		; 20 3F 00
	ora $C0CF00.l,X		; 1F 00 CF C0
	sbc [$E0.b]		; E7 E0
	ora ($E0.b,X)		; 01 E0
	brk $DE.b		; 00 DE
	asl $131F.w,X		; 1E 1F 13
	sta ($02.b,S),Y		; 93 02
	rep #$04		; C2 04
	cpx $C4.b		; E4 C4
	pea $FCE4.w		; F4 E4 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	asl $CBFF.w,X		; 1E FF CB
	jsr $35D6.w		; 20 D6 35
	dec $FE31.w		; CE 31 FE
	ora ($FF.b,X)		; 01 FF
	brk $F9.b		; 00 F9
	brk $F7.b		; 00 F7
	ora [$7F.b]		; 07 7F
	ora $5C.b,S		; 03 5C
	rti		; 40

	eor #$40.b		; 49 40
	eor ($50.b),Y		; 51 50
	and $182C.w		; 2D 2C 18
	clc		; 18
	bmi  54.b		; 30 36
	and $2F.b,S		; 23 2F
	ora ($8F.b,X)		; 01 8F
	pha		; 48
	beq -88.b		; F0 A8
	bvs -96.b		; 70 A0
	bvs  48.b		; 70 30
	cpx #$E030.w		; E0 30 E0
	ldy #$E060.w		; A0 60 E0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  22.b		; 80 16
	phd		; 0B
	dec A		; 3A
	clc		; 18
	phd		; 0B
	ora [$14.b]		; 07 14
	bpl   8.b		; 10 08
	php		; 08
	trb $18.b		; 14 18
	ora $0F0F0F.l		; 0F 0F 0F 0F
	brk $1F.b		; 00 1F
	ora $033B.w,Y		; 19 3B 03
	ora $001410.l		; 0F 10 14 00
	php		; 08
	bpl  31.b		; 10 1F
	php		; 08
	ora $160F0E.l		; 0F 0E 0F 16
	clc		; 18
	and [$E2.b]		; 27 E2
	ora #$8E.b		; 09 8E
	lsr $46.b		; 46 46
	rol $1424.w		; 2E 24 14
	tsb $2824.w		; 0C 24 28
	bcc -32.b		; 90 E0
	brk $D6.b		; 00 D6
	sec		; 38
	lda $34FB78.l,X		; BF 78 FB 34
	adc [$00.b],Y		; 77 00
	and $003D00.l		; 2F 00 3D 00
	jsr ($F080.w,X)		; FC 80 F0
	adc $10AF98.l		; 6F 98 AF 10
	lda $00BF00.l,X		; BF 00 BF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($19.b,X)		; 01 19
	cop $72.b		; 02 72
	cop $62.b		; 02 62
	cop $42.b		; 02 42
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
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
	ora $001F00.l		; 0F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	ror $FC00.w,X		; 7E 00 FC
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	beq   0.b		; F0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	adc $EB9F7D.l		; 6F 7D 9F EB
	lda $C23DE3.l,X		; BF E3 3D C2
	and $29D6.w,X		; 3D D6 29
	tax		; AA
	.db $42, $39		; 42 39
	iny		; C8
	adc $009F00.l		; 6F 00 9F 00
	lda $003D00.l,X		; BF 00 3D 00
	adc $2840.w,X		; 7D 40 28
	brk $17.b		; 00 17
	ora $56.b,S		; 03 56
	rti		; 40

	ora $93E0.w,Y		; 19 E0 93
	jsr ($FE89.w,X)		; FC 89 FE
	bit $65DF.w		; 2C DF 65
	stz $4EB9.w,X		; 9E B9 4E
	sta ($6C.b)		; 92 6C
	trb $E060.w		; 1C 60 E0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $0E.b		; 00 0E
	brk $4C.b		; 00 4C
	rti		; 40

	cpy #$1FC0.w		; C0 C0 1F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $170F17.l		; 0F 17 0F 17
	ora $0B070F.l		; 0F 0F 07 0B
	ora [$0E.b]		; 07 0E
	ora $07.b,S		; 03 07
	ora $071F07.l		; 0F 07 1F 07
	ora $030F07.l,X		; 1F 07 0F 03
	ora $020F03.l		; 0F 03 0F 02
	ora [$02.b]		; 07 02
	ora [$73.b]		; 07 73
	tsb $1C61.w		; 0C 61 1C
	.db $62, $1C, $6E		; 62 1C 6E
	bpl 114.b		; 10 72
	tsb $3847.w		; 0C 47 38
	eor $205F30.l		; 4F 30 5F 20
	tsb $108C.w		; 0C 8C 10
	sta ($00.b,S),Y		; 93 00
	sta ($00.b,X)		; 81 00
	sta ($08.b,X)		; 81 08
	bit #$30.b		; 89 30
	bcs   4.b		; B0 04
	sty $08.b		; 84 08
	bit #$23.b		; 89 23
	trb $3A45.w		; 1C 45 3A
	sbc $1A.b		; E5 1A
	cmp $C926.w,X		; DD 26 C9
	and ($55.b)		; 32 55
	ldx #$22CD.w		; A2 CD 22
	cmp $D022.w		; CD 22 D0
	bne -96.b		; D0 A0
	ldy #$0202.w		; A0 02 02
	jsl $020622.l		; 22 22 06 02
	asl $1C82.w		; 0E 82 1C
	brk $5C.b		; 00 5C
	rti		; 40

	bvc -32.b		; 50 E0
	bvc -32.b		; 50 E0
	jsr $A0F0.w		; 20 F0 A0
	bvs -104.b		; 70 98
	bvs  88.b		; 70 58
	bcs -104.b		; B0 98
	beq  72.b		; F0 48
	beq -32.b		; F0 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	cmp ($1F.b,X)		; C1 1F
	cpx #$E01F.w		; E0 1F E0
	ora $E81BE0.l,X		; 1F E0 1B E8
	tas		; 1B
	inx		; E8
	ora ($E8.b,S),Y		; 13 E8
	ora [$EC.b],Y		; 17 EC
	cmp ($3F.b,X)		; C1 3F
	cpx #$F801.w		; E0 01 F8
	clc		; 18
	inx		; E8
	php		; 08
	sbc [$03.b]		; E7 03
	sbc [$00.b]		; E7 00
	sbc $08EB08.l		; EF 08 EB 08
	ora $81.b,S		; 03 81
	sta ($FC.b,X)		; 81 FC
	jsr ($7E7E.w,X)		; FC 7E 7E
	sta $EB.b,S		; 83 EB
	sty $F9.b,X		; 94 F9
	dec $DBFC.w,X		; DE FC DB
	sbc $FF00C1.l,X		; FF C1 00 FF
	bra  -1.b		; 80 FF
	jmp ($02FF.w,X)		; 7C FF 02
	sbc $A4D920.l,X		; FF 20 D9 A4
	jmp.w [$DAFE]		; DC FE DA
	ror $E040.w,X		; 7E 40 E0
	cpy #$0000.w		; C0 00 00
	dec $D6.b		; C6 D6
	iny		; C8
	cmp $1EDE.w		; CD DE 1E
	sta $0E821F.l,X		; 9F 1F 82 0E
	brk $80.b		; 00 80
	cpy #$00C0.w		; C0 C0 00
	inc $FF06.w,X		; FE 06 FF
	cpy #$1EFF.w		; C0 FF 1E
	sbc $003F18.l,X		; FF 18 3F 00
	ora $070E00.l,X		; 1F 00 0E 07
	jsr ($FC81.w,X)		; FC 81 FC
	phb		; 8B
	inc $88.b,X		; F6 88
	inc $55.b,X		; F6 55
	sbc $D2.b,S		; E3 D2
	adc ($10.b,X)		; 61 10
	adc ($41.b,X)		; 61 41
	jsr $00F3.w		; 20 F3 00
	sbc [$04.b],Y		; F7 04
	sbc ($00.b),Y		; F1 00
	sbc ($02.b,S),Y		; F3 02
	cpx #$6100.w		; E0 00 61
	ora ($60.b,X)		; 01 60
	brk $20.b		; 00 20
	brk $E6.b		; 00 E6
	ora #$F5.b		; 09 F5
	asl A		; 0A
	pea $FA0B.w		; F4 0B FA
	ora $05F2.w		; 0D F2 05
	ply		; 7A
	ora $FE.b		; 05 FE
	sta $3A.b		; 85 3A
	sta ($F0.b,X)		; 81 F0
	brk $F2.b		; 00 F2
	brk $FB.b		; 00 FB
	php		; 08
	sbc ($00.b),Y		; F1 00
	sbc $FD00.w,Y		; F9 00 FD
	tsb $79.b		; 04 79
	brk $FD.b		; 00 FD
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr ($7F7C.w,X)		; FC 7C 7F
	sbc $000707.l,X		; FF 07 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	bra  -1.b		; 80 FF
	jmp ($07FF.w,X)		; 7C FF 07
	sbc $FF0700.l,X		; FF 00 07 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003E00.l,X		; 1F 00 3E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001900.l,X		; 1F 00 19 00
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
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
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
	rts		; 60

	brk $60.b		; 00 60
	brk $F8.b		; 00 F8
	sbc $B2.b,S		; E3 B2
	plx		; FA
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F9.b		; 00 F9
	cpy #$02FF.w		; C0 FF 02
	sbc $003300.l,X		; FF 00 33 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $0B.b,S		; 03 0B
	asl $17.b		; 06 17
	php		; 08
	and $007F00.l,X		; 3F 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora #$01.b		; 09 01
	asl $06.b		; 06 06
	bmi  48.b		; 30 30
	and $00DF00.l,X		; 3F 00 DF 00
	cmp $E0BF00.l,X		; DF 00 BF E0
	adc ($EC.b,S),Y		; 73 EC
	bvc -17.b		; 50 EF
	bcs -49.b		; B0 CF
	bvc -113.b		; 50 8F
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	rti		; 40

	sty $038C.w		; 8C 8C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	jsr $2EB1.w		; 20 B1 2E
	lda $C646.w,Y		; B9 46 C6
	and $1E21.w,Y		; 39 21 1E
	lda ($6E.b),Y		; B1 6E
	tas		; 1B
	adc $5F.b,X		; 75 5F
	tsa		; 3B
	lda $60001F.l,X		; BF 1F 00 60
	brk $C0.b		; 00 C0
	plp		; 28
	tay		; A8
	bpl -48.b		; 10 D0
	brk $E0.b		; 00 E0
	brk $F1.b		; 00 F1
	cop $FB.b		; 02 FB
	asl $FF.b		; 06 FF
	ldx $F46E.w,Y		; BE 6E F4
	and $FB.b,X		; 35 FB
	asl A		; 0A
	sbc $00FF04.l,X		; FF 04 FF 00
	sbc $004F00.l,X		; FF 00 4F 00
	php		; 08
	bcs   6.b		; B0 06
	sbc $78FFD4.l,X		; FF D4 FF 78
	ror $4E4E.w,X		; 7E 4E 4E
	eor #$49.b		; 49 49
	bit #$89.b		; 89 89
	ora ($B1.b,X)		; 01 B1
	brk $F7.b		; 00 F7
	bcs -73.b		; B0 B7
	sbc [$07.b],Y		; F7 07
	sbc $0BF400.l,X		; FF 00 F4 0B
	sbc $0EFE0C.l,X		; FF 0C FE 0E
	cmp $F41F.w		; CD 1F F4
	tas		; 1B
	bcs  -1.b		; B0 FF
	ora [$BF.b]		; 07 BF
	dey		; 88
	sta $838F80.l		; 8F 80 8F 83
	sta $FE7CFD.l		; 8F FD 7C FE
	asl $01E1.w,X		; 1E E1 01
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	rti		; 40

	jsr $0020.w		; 20 20 00
	jsr $2000.w		; 20 00 20
	ora ($20.b,X)		; 01 20
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C05.w		; 0E 05 1C
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	php		; 08
	adc $3DC2.w,X		; 7D C2 3D
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
.INDEX 16
	rep #$59		; C2 59
	cpy #$84B1.w		; C0 B1 84
	adc ($04.b),Y		; 71 04
	sbc ($08.b,X)		; E1 08
	cmp ($18.b,X)		; C1 18
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	jmp ($BC40.w,X)		; 7C 40 BC
	bra 124.b		; 80 7C
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	php		; 08
	beq  16.b		; F0 10
	eor $E02FC0.l,X		; 5F C0 2F E0
	sta [$70.b],Y		; 97 70
	eor #$12B8.w		; 49 B8 12
	inc $F709.w		; EE 09 F7
	tsb $FB.b		; 04 FB
	asl $F9.b		; 06 F9
	lda $405F80.l,X		; BF 80 5F 40
	and $109720.l		; 2F 20 97 10
	sbc $04.b		; E5 04
	sbc ($02.b)		; F2 02
	sbc $F801.w,Y		; F9 01 F8
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$F020.w		; E0 20 F0
	bpl -16.b		; 10 F0
	php		; 08
	sei		; 78
	tsb $B8.b		; 04 B8
	sty $5C.b		; 84 5C
	rep #$00		; C2 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	brk $7C.b		; 00 7C
	tsb $BC.b		; 04 BC
	bra  38.b		; 80 26
	cld		; D8
	bit $D8.b		; 24 D8
	pha		; 48
	bcc  72.b		; 90 48
	bcc  16.b		; 90 10
	bra -112.b		; 80 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	bmi -32.b		; 30 E0
	cpy #$40E0.w		; C0 E0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $C020.w		; 20 20 C0
	cpy #$4000.w		; C0 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ldy #$CFEF.w		; A0 EF CF
	ora $04001F.l,X		; 1F 1F 00 04
	tsb $1D1D.w		; 0C 1D 1D
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F7.b		; 00 F7
	ldy #$0FFF.w		; A0 FF 0F
	cmp $041F00.l,X		; DF 00 1F 04
	tsb $1D1D.w		; 0C 1D 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	beq  -8.b		; F0 F8
	inc $06FE.w,X		; FE FE 06
	lsr $C0D8.w,X		; 5E D8 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	beq  -1.b		; F0 FF
	asl $FF.b		; 06 FF
	cli		; 58
	dec $C0C0.w,X		; DE C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	dec $D8.b,X		; D6 D8
	trb $001E.w		; 1C 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$DC00.w		; C0 00 DC
	bra  -2.b		; 80 FE
	clc		; 18
	sbc $001D00.l,X		; FF 00 1D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora $1B16.w		; 0D 16 1B
	tsb $1827.w		; 0C 27 18
	and $001F10.l		; 2F 10 1F 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $161400.l		; 0F 00 14 16
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	jmp ($7C00.w,X)		; 7C 00 7C
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
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
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
	cpx #$F0C0.w		; E0 C0 F0
	cpy #$F0BA.w		; C0 BA F0
	brk $0A.b		; 00 0A
	and $21.b		; 25 21
	adc ($78.b),Y		; 71 78
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	cpy #$00FF.w		; C0 FF 00
	sbc $216F00.l,X		; FF 00 6F 21
	adc $01FF60.l,X		; 7F 60 FF 01
	brk $07.b		; 00 07
	ora ($0A.b,X)		; 01 0A
	ora [$F2.b]		; 07 F2
	sbc $3B.b,X		; F5 3B
	sei		; 78
	cop $39.b		; 02 39
	and [$E0.b]		; 27 E0
	sta ($A0.b,X)		; 81 A0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$F0.b]		; 07 F0
	adc $F8.b,X		; 75 F8
	plp		; 28
	jsr ($FC01.w,X)		; FC 01 FC
	and ($F9.b,X)		; 21 F9
	bra  -2.b		; 80 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	asl $5831.w		; 0E 31 58
	and $6B1F7D.l		; 2F 7D 1F 6B
	and $003DE3.l,X		; 3F E3 3D 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	cpx #$FC92.w		; E0 92 FC
	bit #$2CFE.w		; 89 FE 2C
	cmp $000000.l,X		; DF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $0E.b		; 00 0E
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	trb $302A.w		; 1C 2A 30
	stz $36.b,X		; 74 36
	clc		; 18
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	asl $0200.w		; 0E 00 02
	tsb $3C.b		; 04 3C
	jsr $303E.w		; 20 3E 30
	adc [$06.b],Y		; 77 06
	ora $000000.l,X		; 1F 00 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	jsr $0810.w		; 20 10 08
	brk $00.b		; 00 00
	jsr $00B8.w		; 20 B8 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F8F8.w		; E0 F8 F8
	rol $0FFD.w,X		; 3E FD 0F
	sta $F3E3.w,X		; 9D E3 F3
	beq  -8.b		; F0 F8
	rts		; 60

	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	cpx #$38FE.w		; E0 FE 38
	sbc $01FF0C.l,X		; FF 0C FF 01
	lda $F0B380.l,X		; BF 80 B3 F0
	stz $00.b,X		; 74 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	ldy #$3820.w		; A0 20 38
	bvs  62.b		; 70 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	jsr $30FF.w		; 20 FF 30
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $FC.b		; 00 FC
	ora $FA.b,S		; 03 FA
	ora [$FF.b]		; 07 FF
	ora $0720C7.l		; 0F C7 20 07
	cpx #$E007.w		; E0 07 E0
	dey		; 88
	dey		; 88
	sty $84.b		; 84 84
	bra -128.b		; 80 80
	sta ($81.b,X)		; 81 81
	cpy #$3FC0.w		; C0 C0 3F
	jsr $20BF.w		; 20 BF 20
	sbc $00C020.l,X		; FF 20 C0 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$DC20.w		; E0 20 DC
	ora $E0.b,S		; 03 E0
	ora $A90FF0.l,X		; 1F F0 0F A9
	lsr $07.b		; 46 07
	sbc #$EF17.w		; E9 17 EF
	ora [$EF.b],Y		; 17 EF
	pld		; 2B
	cmp [$00.b]		; C7 00
	jsr $1010.w		; 20 10 10
	php		; 08
	php		; 08
	mvp $A1,$54		; 44 54 A1
	lda $0F03.w,Y		; B9 03 0F
	ora $0F.b,S		; 03 0F
	ora ($17.b,X)		; 01 17
	inc $CF07.w,X		; FE 07 CF
	and ($E7.b),Y		; 31 E7
	cli		; 58
	jmp.w [$DDFF]		; DC FF DD
	sbc $F9DB.w,Y		; F9 DB F9
	cmp $C79BE7.l		; CF E7 9B C7
	asl $3F.b		; 06 3F
	ora ($0F.b,X)		; 01 0F
	rti		; 40

	eor $DEFFD0.l		; 4F D0 FF DE
	sbc $F9DF.w,Y		; F9 DF F9
	sta $F3.b,S		; 83 F3
	sta ($E1.b,X)		; 81 E1
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
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
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
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
	cpy #$E000.w		; C0 00 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	bvs  71.b		; 70 47
	rts		; 60

	asl $3F01.w		; 0E 01 3F
	brk $06.b		; 00 06
	ora $0D.b,S		; 03 0D
	asl $1B.b		; 06 1B
	ora $1B36.w		; 0D 36 1B
	eor ($FD.b,X)		; 41 FD
	cop $FA.b		; 02 FA
	tsb $74.b		; 04 74
	php		; 08
	php		; 08
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $1B00.w		; 0D 00 1B
	brk $A0.b		; 00 A0
	jmp ($2F5C.w)		; 6C 5C 2F
	and $18E783.l,X		; 3F 83 E7 18
	inc $AF41.w,X		; FE 41 AF
	cmp ($4D.b)		; D2 4D
	lda ($AF.b,S),Y		; B3 AF
	adc ($20.b),Y		; 71 20
	lda $F31FCC.l,X		; BF CC 1F F3
	sta $410300.l		; 8F 00 03 41
	ora ($D0.b,X)		; 01 D0
	cop $B1.b		; 02 B1
	ora $70.b,S		; 03 70
	ora ($42.b,X)		; 01 42
	lda $A956.w,X		; BD 56 A9
	lsr A		; 4A
	ldx #$28D9.w		; A2 D9 28
	adc [$9F.b]		; 67 9F
	sbc [$0C.b]		; E7 0C
	sbc $E404.w,Y		; F9 04 E4
	inc A		; 1A
	lda $A800.w,X		; BD 00 A8
	brk $B7.b		; 00 B7
	ora $36.b,S		; 03 36
	brk $88.b		; 00 88
	php		; 08
	ora ($10.b,S),Y		; 13 10
	sta [$84.b]		; 87 84
	phk		; 4B
	lsr A		; 4A
	adc $9E.b		; 65 9E
	lda $924E.w,Y		; B9 4E 92
	jmp ($601C.w)		; 6C 1C 60
	dey		; 88
	bmi -32.b		; 30 E0
	bmi -96.b		; 30 A0
	bcs -64.b		; B0 C0
	jsr $009E.w		; 20 9E 00
	asl $4C00.w		; 0E 00 4C
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	cpy #$2400.w		; C0 00 24
	and $6060.w		; 2D 60 60
	bpl  96.b		; 10 60
	rts		; 60

	rts		; 60

	sec		; 38
	sec		; 38
	ora [$17.b],Y		; 17 17
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rol $2F.b		; 26 2F
	rti		; 40

	rts		; 60

	brk $70.b		; 00 70
	rti		; 40

	jmp ($3F20.w,X)		; 7C 20 3F
	ora ($17.b)		; 12 17
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sty $0490.w		; 8C 90 04
	clc		; 18
	bit $38.b,X		; 34 38
	txy		; 9B
	txy		; 9B
	tyx		; BB
	eor ($22.b,S),Y		; 53 22
	eor $00.b,S		; 43 00
	rti		; 40

	brk $00.b		; 00 00
	cpx #$E0EE.w		; E0 EE E0
	inc $FFF0.w		; EE F0 FF
	brk $9F.b		; 00 9F
	ora $FF.b,S		; 03 FF
	brk $EB.b		; 00 EB
	brk $41.b		; 00 41
	brk $01.b		; 00 01
	beq   0.b		; F0 00
	sbc $1FDF0F.l		; EF 0F DF 1F
	cmp [$0F.b],Y		; D7 0F
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	and $4F5F40.l		; 2F 40 5F 4F
	adc $003F03.l,X		; 7F 03 3F 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	tsb $E108.w		; 0C 08 E1
	xba		; EB
	sbc $00FFFD.l,X		; FF FD FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	and $E1FF00.l,X		; 3F 00 FF E1
	sbc $00FFF8.l,X		; FF F8 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	beq  79.b		; F0 4F
	clv		; B8
	adc [$9C.b]		; 67 9C
	adc $8E.b,S		; 63 8E
	lda ($07.b,X)		; A1 07
	ldy #$8003.w		; A0 03 80
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	bmi -105.b		; 30 97
	bpl -117.b		; 10 8B
	php		; 08
	sta $04.b		; 85 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C030.w		; E0 30 C0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$F80C.w		; E0 0C F8
	tsb $86F0.w		; 0C F0 86
	jmp ($38C6.w,X)		; 7C C6 38
	cmp $C0.b,S		; C3 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra 126.b		; 80 7E
	.db $42, $F5		; 42 F5
	phd		; 0B
	plx		; FA
	ora $FF.b		; 05 FF
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $20.b		; 00 20
	pld		; 2B
	bvc  85.b		; 50 55
	dey		; 88
	txa		; 8A
	ora ($11.b),Y		; 11 11
	bit $24.b		; 24 24
	mvp $44,$44		; 44 44 44
	mvp $88,$88		; 44 88 88
	sta $BCC3.w,X		; 9D C3 BC
	cmp $5E.b,S		; C3 5E
	lda ($FF.b,X)		; A1 FF
	rti		; 40

	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	pha		; 48
	pha		; 48
	tay		; A8
	tay		; A8
	bit $24.b		; 24 24
	sta ($92.b)		; 92 92
	sta ($91.b),Y		; 91 91
	ora $1B06.w		; 0D 06 1B
	ora $0D3B.w		; 0D 3B 0D
	rol $1B.b,X		; 36 1B
	ror $1B.b,X		; 76 1B
	adc [$3A.b]		; 67 3A
	adc $6D36.w		; 6D 36 6D
	rol $06.b,X		; 36 06
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $3A.b		; 00 3A
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $AB.b		; 00 AB
	jmp.w [$B956]		; DC 56 B9
	mvn $A9,$BB		; 54 BB A9
	ror $AB.b,X		; 76 AB
	stz $4E.b,X		; 74 4E
	sbc ($4E.b),Y		; F1 4E
	sbc ($5D.b),Y		; F1 5D
.INDEX 8
	sep #$DC		; E2 DC
	brk $B9.b		; 00 B9
	brk $BB.b		; 00 BB
	brk $76.b		; 00 76
	brk $74.b		; 00 74
	brk $F1.b		; 00 F1
	ora ($F1.b,X)		; 01 F1
	ora ($E2.b,X)		; 01 E2
	cop $5F.b		; 02 5F
	cpx #$5F.b		; E0 5F
	cpx #$35.b		; E0 35
	nop		; EA
	ldy $6B.b,X		; B4 6B
	sty $7B.b,X		; 94 7B
	adc $8B.b,X		; 75 8B
	bit $FDC2.w,X		; 3C C2 FD
	cop $E1.b		; 02 E1
	ora ($E1.b,X)		; 01 E1
	ora ($E8.b,X)		; 01 E8
	brk $68.b		; 00 68
	brk $79.b		; 00 79
	ora ($8A.b,X)		; 01 8A
	cop $C3.b		; 02 C3
	cop $03.b		; 02 03
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	cpy #$2F.b		; C0 2F
	bmi -23.b		; 30 E9
	asl $07F4.w		; 0E F4 07
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	pha		; 48
	pha		; 48
	bne  16.b		; D0 10
	pea $F904.w		; F4 04 F9
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	beq -64.b		; F0 C0
	cpy $0E3C.w		; CC 3C 0E
	asl $0003.w		; 0E 03 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	beq -32.b		; F0 E0
	sed		; F8
	cpx #$FE.b		; E0 FE
	cpy #$FF.b		; C0 FF
	tsb $02FF.w		; 0C FF 02
	ora $000000.l,X		; 1F 00 00 00
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
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	beq   7.b		; F0 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	asl $0E.b		; 06 0E
	asl $0C0C.w		; 0E 0C 0C
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $010100.l,X		; 3F 00 01 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	tsb $080C.w		; 0C 0C 08
	php		; 08
	bpl  16.b		; 10 10
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	tsb $1C07.w		; 0C 07 1C
	and $1E6F00.l,X		; 3F 00 6F 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	asl $3E.b		; 06 3E
	xce		; FB
	tsb $08E3.w		; 0C E3 08
	sbc ($08.b,X)		; E1 08
	sbc ($18.b),Y		; F1 18
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	bra  32.b		; 80 20
	brk $60.b		; 00 60
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	sed		; F8
	cpx $24.b		; E4 24
	lda $019D.w		; AD 9D 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq -128.b		; F0 80
	jsr ($FE20.w,X)		; FC 20 FE
	dey		; 88
	sbc $001F01.l,X		; FF 01 1F 00
	ora [$00.b]		; 07 00
	ora ($F8.b,X)		; 01 F8
	asl $F8.b,X		; 16 F8
	trb $F8.b		; 14 F8
	bpl -24.b		; 10 E8
	bpl -16.b		; 10 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $14.b		; 00 14
	trb $10.b		; 14 10
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	ora $0639.w		; 0D 39 06
	asl $C8.b		; 06 C8
	cmp ($F0.b,X)		; C1 F0
	sbc ($3C.b),Y		; F1 3C
	bit $1DCE.w,X		; 3C CE 1D
	sbc ($9F.b,X)		; E1 9F
	rts		; 60

	and $14AD.w		; 2D AD 14
	pei ($01.b)		; D4 01
	beq -62.b		; F0 C2
	jsr ($FE30.w,X)		; FC 30 FE
	tsb $813F.w		; 0C 3F 81
	sta $000500.l,X		; 9F 00 05 00
	rts		; 60

	brk $C0.b		; 00 C0
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	cpy #$30.b		; C0 30
	php		; 08
	bmi  40.b		; 30 28
	cpy #$80.b		; C0 80
	bcs -64.b		; B0 C0
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bra  -4.b		; 80 FC
	ora $06.b,S		; 03 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $CD36.w		; ED 36 CD
	ror $D9.b,X		; 76 D9
	ror $6ED9.w		; 6E D9 6E
	cmp $D96E.w,Y		; D9 6E D9
	ror $2E59.w		; 6E 59 2E
	eor #$363E.w		; 49 3E 36
	brk $76.b		; 00 76
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $2E.b		; 00 2E
	brk $3E.b		; 00 3E
	brk $98.b		; 00 98
	sbc [$98.b]		; E7 98
	sbc [$99.b]		; E7 99
	inc $9F.b		; E6 9F
	cpx #$9F.b		; E0 9F
	cpx #$9F.b		; E0 9F
	cpx #$9F.b		; E0 9F
	cpx #$9F.b		; E0 9F
	cpx #$E5.b		; E0 E5
	ora $E1.b		; 05 E1
	ora ($E0.b,X)		; 01 E0
	brk $E1.b		; 00 E1
	ora ($E4.b,X)		; 01 E4
	tsb $E8.b		; 04 E8
	php		; 08
	inx		; E8
	php		; 08
	cpx $04.b		; E4 04
	sbc $7502.w,X		; FD 02 75
	cop $19.b		; 02 19
	cop $0D.b		; 02 0D
	cop $05.b		; 02 05
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $F4.b		; 00 F4
	ora [$F4.b]		; 07 F4
	ora [$F0.b]		; 07 F0
	ora [$F0.b]		; 07 F0
	ora [$FC.b]		; 07 FC
	phd		; 0B
	jsr ($E40B.w,X)		; FC 0B E4
	phd		; 0B
	sbc $0A.b		; E5 0A
	xce		; FB
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	tsb $FB.b		; 04 FB
	brk $F3.b		; 00 F3
	brk $F3.b		; 00 F3
	brk $FB.b		; 00 FB
	php		; 08
	plx		; FA
	php		; 08
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	beq  60.b		; F0 3C
	bit $CFCF.w,X		; 3C CF CF
	sbc $77.b,S		; E3 77
	jmp ($7D7D.w,X)		; 7C 7D 7D
	ora #$0009.w		; 09 09 00
	brk $80.b		; 00 80
	jsr ($FF30.w,X)		; FC 30 FF
	tsb $C3FF.w		; 0C FF C3
	sbc $5D7F44.l,X		; FF 44 7F 5D
	adc $0909.w,X		; 7D 09 09
	brk $00.b		; 00 00
	cpy #$10.b		; C0 10
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	stz $00.b,X		; 74 00
	inc $8C.b		; E6 8C
	rol $1A94.w,X		; 3E 94 1A
	sty $E85E.w		; 8C 5E E8
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	tsb $84E0.w		; 0C E0 84
	pla		; 68
	tsb $2820.w		; 0C 20 28
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	ora ($0E.b),Y		; 11 0E
	clc		; 18
	ora [$0C.b]		; 07 0C
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	cpy #$08.b		; C0 08
	tsb $0818.w		; 0C 18 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	jsr ($BC00.w,X)		; FC 00 BC
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003F00.l,X		; 1F 00 3F 00
	ror $7C00.w,X		; 7E 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	bpl  32.b		; 10 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora #$0A07.w		; 09 07 0A
	tsb $0D1D.w		; 0C 1D 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	php		; 08
	ora $001D0C.l		; 0F 0C 1D 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	bra   8.b		; 80 08
	bra  12.b		; 80 0C
	php		; 08
	sty $02.b		; 84 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra -72.b		; 80 B8
	brk $8C.b		; 00 8C
	brk $0F.b		; 00 0F
	brk $87.b		; 00 87
	brk $EF.b		; 00 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0.b		; E0 C0
	beq -64.b		; F0 C0
	tsx		; BA
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	sed		; F8
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	asl A		; 0A
	ora [$F2.b]		; 07 F2
	sbc $3B.b,X		; F5 3B
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$F0.b]		; 07 F0
	adc $F8.b,X		; 75 F8
	plp		; 28
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	asl $5831.w		; 0E 31 58
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	rts		; 60

	bvs -16.b		; 70 F0
	beq  -8.b		; F0 F8
	cpx #$E6.b		; E0 E6
	asl $0007.w,X		; 1E 07 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpx #$60.b		; E0 60
	sed		; F8
	bvs  -4.b		; 70 FC
	beq  -1.b		; F0 FF
	rts		; 60

	sbc $00FF06.l,X		; FF 06 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpx #$05.b		; E0 05
	ora $0B.b,S		; 03 0B
	asl $16.b		; 06 16
	ora $1B2D.w		; 0D 2D 1B
	and $5A1B.w		; 2D 1B 5A
	and [$5A.b],Y		; 37 5A
	and [$B5.b],Y		; 37 B5
	ror $0003.w		; 6E 03 00
	asl $00.b		; 06 00
	ora $1B00.w		; 0D 00 1B
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $6E.b		; 00 6E
	brk $AA.b		; 00 AA
	adc [$55.b],Y		; 77 55
	inc $DDAA.w		; EE AA DD
	mvn $A8,$BB		; 54 BB A8
	adc [$A8.b],Y		; 77 A8
	adc [$D0.b],Y		; 77 D0
	adc $77EE51.l		; 6F 51 EE 77
	brk $EE.b		; 00 EE
	brk $DD.b		; 00 DD
	brk $BB.b		; 00 BB
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $6F.b		; 00 6F
	brk $EE.b		; 00 EE
	brk $F3.b		; 00 F3
	bit $3ED1.w		; 2C D1 3E
	cmp $EE16.w,Y		; D9 16 EE
	ora ($F0.b,X)		; 01 F0
	ora $D407F8.l		; 0F F8 07 D4
	and $83.b,S		; 23 83
	stz $00.b,X		; 74 00
	and $18.b,S		; 23 18
	and $3000.w,Y		; 39 00 30
	brk $10.b		; 00 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	jsl $5C502A.l		; 22 2A 50 5C
	cpy #$E3.b		; C0 E3
	cmp ($1C.b)		; D2 1C
	sed		; F8
	phd		; 0B
	adc $986783.l,X		; 7F 83 67 98
	adc ($AC.b,S),Y		; 73 AC
	inc $EE7F.w		; EE 7F EE
	jsr ($FCC0.w,X)		; FC C0 FC
	bpl  -1.b		; 10 FF
	php		; 08
	eor $001F03.l,X		; 5F 03 1F 00
	ora [$20.b]		; 07 20
	and [$68.b]		; 27 68
	adc $80FCEF.l,X		; 7F EF FC 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	jmp ($9F7C.w,X)		; 7C 7C 9F
	inc $0087.w,X		; FE 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq -64.b		; F0 C0
	jsr ($FF70.w,X)		; FC 70 FF
	trb $06FF.w		; 1C FF 06
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq -75.b		; F0 B5
	tad		; 5B
	sta $7B.b,X		; 95 7B
	sty $7B.b		; 84 7B
	.db $42, $3D		; 42 3D
	.db $62, $1D, $31		; 62 1D 31
	asl $0718.w		; 0E 18 07
	tsb $5B03.w		; 0C 03 5B
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $3D.b		; 00 3D
	brk $1D.b		; 00 1D
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $5F.b		; 00 5F
	ldy #$2F.b		; A0 2F
	bne -81.b		; D0 AF
	bne -73.b		; D0 B7
	iny		; C8
	txy		; 9B
	cpx $4B.b		; E4 4B
	pea $79C6.w		; F4 C6 79
	.db $62, $BD, $A8		; 62 BD A8
	php		; 08
	cld		; D8
	php		; 08
	pei ($04.b)		; D4 04
	cmp #$E501.w		; C9 01 E5
	ora ($F4.b,X)		; 01 F4
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	phd		; 0B
	clc		; 18
	clc		; 18
	tsb $18.b		; 04 18
	clc		; 18
	clc		; 18
	asl $050E.w		; 0E 0E 05
	ora $00.b		; 05 00
	brk $01.b		; 00 01
	ora [$09.b]		; 07 09
	phd		; 0B
	bpl  24.b		; 10 18
	brk $1C.b		; 00 1C
	bpl  31.b		; 10 1F
	php		; 08
	ora $000504.l		; 0F 04 05 00
	brk $08.b		; 00 08
	ror $6423.w		; 6E 23 64
	ora ($06.b,X)		; 01 06
	ora $260E.w		; 0D 0E 26
	rol $2E.b		; 26 2E
	trb $C8.b		; 14 C8
	bne  64.b		; D0 40
	bpl -128.b		; 10 80
	cmp $38FBB8.l		; CF B8 FB 38
	tsa		; 3B
	bit $003F.w,X		; 3C 3F 00
	and [$00.b]		; 27 00
	sbc $00FA80.l,X		; FF 80 FA 00
	bvc   0.b		; 50 00
	asl A		; 0A
	and $21.b		; 25 21
	adc ($78.b),Y		; 71 78
	adc $70.b,S		; 63 70
	eor [$60.b]		; 47 60
	asl $1F01.w		; 0E 01 1F
	brk $2D.b		; 00 2D
	tas		; 1B
	brk $6F.b		; 00 6F
	and ($7F.b,X)		; 21 7F
	rts		; 60

	sbc $02FD41.l,X		; FF 41 FD 02
	plx		; FA
	tsb $74.b		; 04 74
	brk $00.b		; 00 00
	tas		; 1B
	brk $02.b		; 00 02
	and $E027.w,Y		; 39 27 E0
	sta ($A0.b,X)		; 81 A0
	ldy #$6C.b		; A0 6C
	jmp $833F2F.l		; 5C 2F 3F 83
	sbc [$18.b]		; E7 18
	lsr $01A1.w,X		; 5E A1 01
	jsr ($F921.w,X)		; FC 21 F9
	bra  -2.b		; 80 FE
	jsr $CCBF.w		; 20 BF CC
	ora $008FF3.l,X		; 1F F3 8F 00
	ora $A1.b,S		; 03 A1
	ora ($7D.b,X)		; 01 7D
	ora $E33F6B.l,X		; 1F 6B 3F E3
	and $BD42.w,X		; 3D 42 BD
	lsr $A9.b,X		; 56 A9
	lsr A		; 4A
	ldx #$D9.b		; A2 D9
	plp		; 28
	adc [$9F.b]		; 67 9F
	ora $003F00.l,X		; 1F 00 3F 00
	and $BD00.w,X		; 3D 00 BD
	brk $A8.b		; 00 A8
	brk $B7.b		; 00 B7
	ora $36.b,S		; 03 36
	brk $88.b		; 00 88
	php		; 08
	sta ($FC.b)		; 92 FC
	bit #$2CFE.w		; 89 FE 2C
	cmp $B99E65.l,X		; DF 65 9E B9
	lsr $6C92.w		; 4E 92 6C
	trb $8860.w		; 1C 60 88
	bmi  -4.b		; 30 FC
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $0E.b		; 00 0E
	brk $4C.b		; 00 4C
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$40.b		; C0 40
	sed		; F8
	sei		; 78
	asl $E71E.w,X		; 1E 1E E7
	sbc [$F1.b]		; E7 F1
	tsa		; 3B
	rol $3E3E.w,X		; 3E 3E 3E
	tsb $04.b		; 04 04
	rti		; 40

	sed		; F8
	rti		; 40

	inc $FF18.w,X		; FE 18 FF
	asl $FF.b		; 06 FF
	sbc ($FF.b,X)		; E1 FF
	jsl $3E2E3F.l		; 22 3F 2E 3E
	tsb $04.b		; 04 04
	lda $6E.b,X		; B5 6E
	lda $6E.b,X		; B5 6E
	cmp $6E.b,X		; D5 6E
	phx		; DA
	adc $6DDA.w		; 6D DA 6D
	phx		; DA
	adc $6DDA.w		; 6D DA 6D
	phx		; DA
	adc $006E.w		; 6D 6E 00
	ror $6E00.w		; 6E 00 6E
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $53.b		; 00 53
	cpx $D8A7.w		; EC A7 D8
	ldx $ACD1.w		; AE D1 AC
	cmp ($AC.b,S),Y		; D3 AC
	cmp ($AC.b,S),Y		; D3 AC
	cmp ($AF.b,S),Y		; D3 AF
	bne -81.b		; D0 AF
	bne -20.b		; D0 EC
	brk $D8.b		; 00 D8
	brk $D1.b		; 00 D1
	ora ($D2.b,X)		; 01 D2
	cop $D0.b		; 02 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $D2.b		; 00 D2
	cop $0B.b		; 02 0B
	sbc [$0B.b],Y		; F7 0B
	sbc [$95.b],Y		; F7 95
	adc $7A.b,S		; 63 7A
	sta $7D.b		; 85 7D
	.db $82, $FF, $01		; 82 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sta ($87.b,X)		; 81 87
	sta ($87.b,X)		; 81 87
	brk $0B.b		; 00 0B
	bcc -107.b		; 90 95
	tay		; A8
	tax		; AA
	mvp $88,$45		; 44 45 88
	dey		; 88
	ora ($12.b)		; 12 12
	sbc $E7FC.w		; ED FC E7
	sbc ($CD.b,S),Y		; F3 CD
	sbc $CE.b,S		; E3 CE
	sbc ($5E.b,X)		; E1 5E
	sbc ($AF.b,X)		; E1 AF
	bvc  -1.b		; 50 FF
	ldy #$FF.b		; A0 FF
	rti		; 40

	sbc $F9C1FC.l		; EF FC C1 F9
	cpy #$F0.b		; C0 F0
	rti		; 40

	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	bvc -92.b		; 50 A4
	ldy $54.b		; A4 54
	mvn $F1,$CE		; 54 CE F1
	sbc $FCF8.w,Y		; F9 F8 FC
	bcs  -8.b		; B0 F8
	bra 119.b		; 80 77
	sta [$6F.b]		; 87 6F
	sta $B007EB.l		; 8F EB 07 B0
	brk $80.b		; 00 80
	cmp $F8D9C0.l,X		; DF C0 D9 F8
	tsx		; BA
	bpl  23.b		; 10 17
	jsr $272F.w		; 20 2F 27
	and $001F01.l,X		; 3F 01 1F 00
	ora $90D0C0.l		; 0F C0 D0 90
	trb $1F38.w		; 1C 38 1F
	asl $8406.w,X		; 1E 06 84
	beq -11.b		; F0 F5
	sbc $00FFFE.l,X		; FF FE FF 00
	brk $C0.b		; 00 C0
	jsr ($FF10.w,X)		; FC 10 FF
	clc		; 18
	and $009F06.l,X		; 3F 06 9F 00
	sbc $FCFFF0.l,X		; FF F0 FF FC
	sbc $06FF00.l,X		; FF 00 FF 06
	ora ($03.b,X)		; 01 03
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
	brk $76.b		; 00 76
	sta $0DF2.w,Y		; 99 F2 0D
	inc $3801.w,X		; FE 01 38
	ora ($0C.b,X)		; 01 0C
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($98.b,X)		; 01 98
	brk $0D.b		; 00 0D
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$44.b		; C0 44
	mvp $44,$44		; 44 44 44
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	ora $F8.b,S		; 03 F8
	brk $24.b		; 00 24
	bit $A4.b		; 24 A4
	ldy $92.b		; A4 92
	sta ($91.b)		; 92 91
	sta ($88.b),Y		; 91 88
	dey		; 88
	sta $85.b		; 85 85
	bra -128.b		; 80 80
	cmp [$C0.b]		; C7 C0
	cpx #$30.b		; E0 30
	ldy #$B0.b		; A0 B0
	cpy #$20.b		; C0 20
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	cpy #$30.b		; C0 30
	cpy #$00.b		; C0 00
	rti		; 40

	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	ora $100F10.l		; 0F 10 0F 10
	ora $100F10.l		; 0F 10 0F 10
	ora $300F10.l		; 0F 10 0F 30
	asl $1F30.w,X		; 1E 30 1F
	and ($0F.b),Y		; 31 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $2E.b		; 00 2E
	jsr $7C42.w		; 20 42 7C
	rti		; 40

	jmp ($5824.w,X)		; 7C 24 58
	bit $58.b		; 24 58
	dey		; 88
	bne  80.b		; D0 50
	bra  16.b		; 80 10
	bra   0.b		; 80 00
	bra -100.b		; 80 9C
	brk $BC.b		; 00 BC
	brk $D8.b		; 00 D8
	rti		; 40

	tya		; 98
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	tsb $0600.w		; 0C 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	pla		; 68
	tsb $8630.w		; 0C 30 86
	trb $3AC6.w		; 1C C6 3A
	.db $62, $1D, $60		; 62 1D 60
	asl $F061.w,X		; 1E 61 F0
	bpl -24.b		; 10 E8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7884.w,X)		; FC 84 78
	rti		; 40

	jmp $203E40.l		; 5C 40 3E 20
	bit $0021.w,X		; 3C 21 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	ora [$1F.b]		; 07 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $1E0000.l		; 0F 00 00 1E
	asl $3838.w,X		; 1E 38 38
	jmp $8238C3.l		; 5C C3 38 82
	jmp ($F006.w,X)		; 7C 06 F0
	asl $E0.b		; 06 E0
	cpy $58E0.w		; CC E0 58
	cpx #$50.b		; E0 50
	ldy #$40.b		; A0 40
	rol $FE02.w,X		; 3E 02 FE
	.db $82, $F8, $00		; 82 F8 00
	trb $D804.w		; 1C 04 D8
	iny		; C8
	bvc  80.b		; 50 50
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	ply		; 7A
	sty $987E.w		; 8C 7E 98
	ror $BEB0.w,X		; 7E B0 BE
	rts		; 60

	rol $7E40.w,X		; 3E 40 7E
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $60.b		; 00 60
	tsb $1850.w		; 0C 50 18
	bpl  48.b		; 10 30
	tsb $64.b		; 04 64
	tsb $C4.b		; 04 C4
	tsb $84.b		; 04 84
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	adc $007F00.l,X		; 7F 00 7F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $000F00.l,X		; 1F 00 0F 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ldy #$C0.b		; A0 C0
	cpx #$7C.b		; E0 7C
	sbc ($92.b)		; F2 92
	dec $CE.b,X		; D6 CE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	rti		; 40

	inc $FF90.w,X		; FE 90 FF
	cpy $FF.b		; C4 FF
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$C0.b		; A0 C0
	bvs  96.b		; 70 60
	tsb $06.b		; 04 06
	tsb $0C04.w		; 0C 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80.b		; E0 80
	cpx #$40.b		; E0 40
	inc $DE00.w,X		; FE 00 DE
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	beq -111.b		; F0 91
	stz $0F68.w,X		; 9E 68 0F
	beq   7.b		; F0 07
	pea $F407.w		; F4 07 F4
	ora [$F4.b]		; 07 F4
	ora [$F4.b]		; 07 F4
	ora [$A0.b]		; 07 A0
	ldy #$68.b		; A0 68
	php		; 08
	sbc $04.b,X		; F5 04
	sbc $F904.w,X		; FD 04 F9
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $F3.b		; 00 F3
	brk $C7.b		; 00 C7
	bmi  79.b		; 30 4F
	clv		; B8
	adc $98.b,S		; 63 98
	and ($CC.b),Y		; 31 CC
	bmi -58.b		; 30 C6
	jsr $20C3.w		; 20 C3 20
	cmp ($0F.b,X)		; C1 0F
	brk $1F.b		; 00 1F
	bpl -105.b		; 10 97
	bpl -113.b		; 10 8F
	php		; 08
	cmp [$04.b]		; C7 04
	cmp $02.b,S		; C3 02
	cmp ($01.b,X)		; C1 01
	cpy #$00.b		; C0 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $003E00.l,X		; 1F 00 3E 00
	rol $0100.w,X		; 3E 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sed		; F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($7C00.w,X)		; FC 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	sbc [$0C.b]		; E7 0C
	sbc $E404.w,Y		; F9 04 E4
	inc A		; 1A
	adc ($0D.b)		; 72 0D
	and $0606.w,Y		; 39 06 06
	iny		; C8
	cmp ($F0.b,X)		; C1 F0
	sbc ($3C.b),Y		; F1 3C
	ora ($10.b,S),Y		; 13 10
	sta [$84.b]		; 87 84
	phk		; 4B
	lsr A		; 4A
	and $14AD.w		; 2D AD 14
	pei ($01.b)		; D4 01
	beq -62.b		; F0 C2
	jsr ($FE30.w,X)		; FC 30 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	bvs -96.b		; 70 A0
	bmi -48.b		; 30 D0
	clc		; 18
	inx		; E8
	php		; 08
	beq   4.b		; F0 04
	jsr ($7806.w,X)		; FC 06 78
	cop $3E.b		; 02 3E
	sta $A0.b,S		; 83 A0
	jsr $10D0.w		; 20 D0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	cop $FC.b		; 02 FC
	bra  15.b		; 80 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $06.b		; 00 06
	asl $0C.b		; 06 0C
	tsb $0808.w		; 0C 08 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	jsr ($F800.w,X)		; FC 00 F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5B.b		; 00 5B
	ldy $69.b		; A4 69
	stx $78.b,Y		; 96 78
	sta [$7A.b]		; 87 7A
	sta [$F9.b]		; 87 F9
	tsb $D9.b		; 04 D9
	tsb $49.b		; 04 49
	tsb $29.b		; 04 29
	tsb $A2.b		; 04 A2
	cop $94.b		; 02 94
	tsb $86.b		; 04 86
	asl $85.b		; 06 85
	ora $07.b		; 05 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$84.b		; C0 84
	tda		; 7B
	bne  31.b		; D0 1F
	bne  31.b		; D0 1F
	beq  31.b		; F0 1F
	.db $42, $42		; 42 42
	.db $42, $42		; 42 42
	and $23.b,S		; 23 23
	bra -128.b		; 80 80
	sbc ($70.b,S),Y		; F3 70
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	sed		; F8
	ora #$10F6.w		; 09 F6 10
	sbc $F01F20.l		; EF 20 1F F0
	ora $BC47F8.l		; 0F F8 47 BC
	eor $8E.b,S		; 43 8E
	sta ($07.b,X)		; 81 07
	ora [$01.b]		; 07 01
	ora $001F00.l		; 0F 00 1F 00
	adc $30B760.l		; 6F 60 B7 30
	phb		; 8B
	php		; 08
	sta $04.b		; 85 04
	cop $02.b		; 02 02
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  32.b		; 80 20
	cpx #$10.b		; E0 10
	beq   8.b		; F0 08
	sed		; F8
	tsb $F8.b		; 04 F8
	cop $FC.b		; 02 FC
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	clc		; 18
	asl $5831.w		; 0E 31 58
	and $6B1F7D.l		; 2F 7D 1F 6B
	and $423DE3.l,X		; 3F E3 3D 42
	lda $A956.w,X		; BD 56 A9
	clc		; 18
	brk $31.b		; 00 31
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3D.b		; 00 3D
	brk $BD.b		; 00 BD
	brk $A8.b		; 00 A8
	brk $0A.b		; 00 0A
	brk $1D.b		; 00 1D
	tsb $00.b		; 04 00
	tsb $48.b		; 04 48
	sec		; 38
	mvn $E8,$60		; 54 60 E8
	jmp ($0330.w)		; 6C 30 03
	eor #$005B.w		; 49 5B 00
	phd		; 0B
	tsb $1D.b		; 04 1D
	brk $04.b		; 00 04
	php		; 08
	sei		; 78
	rti		; 40

	jmp ($EF60.w,X)		; 7C 60 EF
	tsb $4D3E.w		; 0C 3E 4D
	eor $800000.l,X		; 5F 00 00 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	rti		; 40

	jsr $0010.w		; 20 10 00
	brk $40.b		; 00 40
	bvs  24.b		; 70 18
	jsr $8000.w		; 20 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	cpy #$DC.b		; C0 DC
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	cpx #$60.b		; E0 60
	inx		; E8
	iny		; C8
	asl $0F1C.w		; 0E 1C 0F
	ora $F8C203.l		; 0F 03 C2 F8
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	rts		; 60

	inc $FF08.w,X		; FE 08 FF
	tsb $031F.w		; 0C 1F 03
	cmp $00FF00.l		; CF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldy #$30.b		; A0 30
	bmi  56.b		; 30 38
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $30F0.w		; 20 F0 30
	jsr ($FE38.w,X)		; FC 38 FE
	ora ($00.b,X)		; 01 00
	asl $03.b		; 06 03
	ora $1B06.w		; 0D 06 1B
	ora $1D2B.w		; 0D 2B 1D
	asl $3B.b,X		; 16 3B
	lsr $3B.b,X		; 56 3B
	adc $0036.w		; 6D 36 00
	cop $03.b		; 02 03
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $36.b		; 00 36
	brk $71.b		; 00 71
	tsb $00FF.w		; 0C FF 00
	clv		; B8
	cmp $619F70.l		; CF 70 9F 61
	ldx $3CE3.w,Y		; BE E3 3C
	dec $79.b		; C6 79
	mvp $27,$FB		; 44 FB 27
	ldy $00.b		; A4 00
	brk $CF.b		; 00 CF
	brk $9F.b		; 00 9F
	brk $BE.b		; 00 BE
	brk $3C.b		; 00 3C
	brk $79.b		; 00 79
	brk $FB.b		; 00 FB
	brk $F8.b		; 00 F8
	asl $C73E.w,X		; 1E 3E C7
	adc [$89.b],Y		; 77 89
	sbc $A816.w,Y		; F9 16 A8
	eor $17CB2C.l,X		; 5F 2C CB 17
	cpx #$18.b		; E0 18
	sbc [$98.b]		; E7 98
	adc $891F06.l,X		; 7F 06 1F 89
	ora $4C1100.l		; 0F 00 11 4C
	trb $18C0.w		; 1C C0 18
	cpx #$08.b		; E0 08
	cpx $04.b		; E4 04
	and [$40.b],Y		; 37 40
	ora $E18E80.l		; 0F 80 8E E1
	cpx #$71.b		; E0 71
	sbc #$FC0E.w		; E9 0E FC
	ora $3F.b		; 05 3F
	cmp ($33.b,X)		; C1 33
	cpy $820A.w		; CC 0A 82
	trb $E4.b		; 14 E4
	sta ($F1.b,X)		; 81 F1
	rts		; 60

	inc $FF08.w,X		; FE 08 FF
	tsb $2F.b		; 04 2F
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora $0F3700.l,X		; 1F 00 37 0F
	adc $000001.l,X		; 7F 01 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $1F.b,S		; 03 1F
	ora ($01.b,X)		; 01 01
	bit $3C63.w,X		; 3C 63 3C
.INDEX 8
	sep #$5C		; E2 5C
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	.db $82, $70, $04		; 82 70 04
	cpx #$C00C.w		; E0 0C C0
	clc		; 18
	ldy #$1ED0.w		; A0 D0 1E
	cop $5E.b		; 02 5E
	.db $42, $BC		; 42 BC
	bra 124.b		; 80 7C
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	php		; 08
	bmi  16.b		; 30 10
	brk $C0.b		; 00 C0
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	sbc ($1D.b)		; F2 1D
	sbc ($1C.b,S),Y		; F3 1C
	sbc $18.b,X		; F5 18
	pea $F418.w		; F4 18 F4
	clc		; 18
	beq  24.b		; F0 18
	cpx #$E018.w		; E0 18 E0
	clc		; 18
	sbc $00.b		; E5 00
	cpx $00.b		; E4 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl -128.b		; 10 80
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
	brk $7E.b		; 00 7E
	cmp ($2F.b,X)		; C1 2F
	cpx #$3007.w		; E0 07 30
	ora [$1C.b]		; 07 1C
	ora $0E.b,S		; 03 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	lda $001F81.l,X		; BF 81 1F 00
	ora $080B10.l,X		; 1F 10 0B 08
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	ora [$F2.b]		; 07 F2
	sbc $3B.b,X		; F5 3B
	sei		; 78
	cop $39.b		; 02 39
	and [$E0.b]		; 27 E0
	sta ($A0.b,X)		; 81 A0
	ldy #$5C6C.w		; A0 6C 5C
	and $75F007.l		; 2F 07 F0 75
	sed		; F8
	plp		; 28
	jsr ($FC01.w,X)		; FC 01 FC
	and ($F9.b,X)		; 21 F9
	bra  -2.b		; 80 FE
	jsr $CCBF.w		; 20 BF CC
	ora $D9A24A.l,X		; 1F 4A A2 D9
	plp		; 28
	adc [$9F.b]		; 67 9F
	sbc [$0C.b]		; E7 0C
	sbc $E404.w,Y		; F9 04 E4
	inc A		; 1A
	adc ($0D.b)		; 72 0D
	and $B706.w,Y		; 39 06 B7
	ora $36.b,S		; 03 36
	brk $88.b		; 00 88
	php		; 08
	ora ($10.b,S),Y		; 13 10
	sta [$84.b]		; 87 84
	phk		; 4B
	lsr A		; 4A
	and $14AD.w		; 2D AD 14
	pei ($C0.b)		; D4 C0
	cpy #$C020.w		; C0 20 C0
	cmp ($C1.b,X)		; C1 C1
	adc ($70.b),Y		; 71 70
	rol $022E.w		; 2E 2E 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	cmp ($01.b,X)		; C1 01
	sbc ($80.b,X)		; E1 80
	sbc $7F40.w,Y		; F9 40 7F
	bit $2F.b		; 24 2F
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bmi 104.b		; 30 68
	bvs  55.b		; 70 37
	rol $77.b,X		; 36 77
	ldx $45.b		; A6 45
	sta [$00.b]		; 87 00
	bra   1.b		; 80 01
	ora ($03.b,X)		; 01 03
	ora $C0.b,S		; 03 C0
	jmp.w [$FFE0]		; DC E0 FF
	brk $3F.b		; 00 3F
	asl $FF.b		; 06 FF
	brk $D7.b		; 00 D7
	brk $83.b		; 00 83
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	plx		; FA
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sbc $00FFFE.l,X		; FF FE FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	jsr ($F370.w,X)		; FC 70 F3
	ora $000303.l		; 0F 03 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sbc $03FF30.l,X		; FF 30 FF 03
	sbc $000700.l,X		; FF 00 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AD.b		; 00 AD
	ror $AD.b,X		; 76 AD
	ror $D5.b,X		; 76 D5
	ror $6DDA.w		; 6E DA 6D
	phx		; DA
	adc $6DDA.w		; 6D DA 6D
	phx		; DA
	adc $6D9A.w		; 6D 9A 6D
	ror $00.b,X		; 76 00
	ror $00.b,X		; 76 00
	ror $6D00.w		; 6E 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $4C.b		; 00 4C
	sbc ($88.b,S),Y		; F3 88
	sbc [$88.b],Y		; F7 88
	sbc [$98.b],Y		; F7 98
	sbc [$91.b]		; E7 91
	inc $EC93.w		; EE 93 EC
	sta ($ED.b)		; 92 ED
	sta ($ED.b)		; 92 ED
	sbc ($00.b,S),Y		; F3 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b]		; E7 00
	inc $EC00.w		; EE 00 EC
	brk $ED.b		; 00 ED
	ora ($EC.b,X)		; 01 EC
	brk $3C.b		; 00 3C
	cmp $6A.b,S		; C3 6A
	sta ($C1.b),Y		; 91 C1
	dec A		; 3A
	sta $7B.b		; 85 7B
	sta $7B.b		; 85 7B
	lsr A		; 4A
	lda ($3D.b),Y		; B1 3D
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	cmp ($C2.b,X)		; C1 C2
	cop $91.b		; 02 91
	ora $28.b,X		; 15 28
	rol DMAP4.w		; 2E 40 43
	rti		; 40

	eor $80.b,S		; 43 80
	sta $48.b		; 85 48
	lsr A		; 4A
	mvn $39,$55		; 54 55 39
	dec $77.b,X		; D6 77
	lda $F67EF7.l,X		; BF F7 7E F6
	inc $F9F3.w,X		; FE F3 F9
	inc $F1.b		; E6 F1
	adc [$F0.b]		; 67 F0
	lda $131070.l		; AF 70 10 13
	bit $3F.b,X		; 34 3F
	adc [$7E.b],Y		; 77 7E
	sbc [$FE.b],Y		; F7 FE
	cpx #$60FC.w		; E0 FC 60
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	bvs  -1.b		; 70 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $7C.b		; 00 7C
	jmp ($F0F0.w,X)		; 7C F0 F0
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
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
	cpx #$1C00.w		; E0 00 1C
	cpx #$FC92.w		; E0 92 FC
	bit #$2CFE.w		; 89 FE 2C
	cmp $B99E65.l,X		; DF 65 9E B9
	lsr $0000.w		; 4E 00 00
	brk $00.b		; 00 00
	cpx #$FC00.w		; E0 00 FC
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $0E.b		; 00 0E
	brk $92.b		; 00 92
	jmp ($601C.w)		; 6C 1C 60
	dey		; 88
	bmi -32.b		; 30 E0
	bmi -96.b		; 30 A0
	bcs -64.b		; B0 C0
	jsr $6000.w		; 20 00 60
	brk $C0.b		; 00 C0
	jmp $C040.w		; 4C 40 C0
	cpy #$00C0.w		; C0 C0 00
	cpy #$4000.w		; C0 00 40
	rti		; 40

	cpy #$C000.w		; C0 00 C0
	rti		; 40

	brk $00.b		; 00 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3B.b		; 00 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $0202.w		; 1C 02 02
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
	jsr $00A0.w		; 20 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F020.w		; C0 20 F0
	ldy #$A0E0.w		; A0 E0 A0
	jmp ($0F3C.w,X)		; 7C 3C 0F
	ora $F8F373.l		; 0F 73 F3 F8
	ora $1F1F.w,X		; 1D 1F 1F
	ora $A00202.l,X		; 1F 02 02 A0
	jsr ($FF20.w,X)		; FC 20 FF
	tsb $037F.w		; 0C 7F 03
	adc $11FFF0.l,X		; 7F F0 FF 11
	ora $021F17.l,X		; 1F 17 1F 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cpy #$E0D0.w		; C0 D0 E0
	beq  62.b		; F0 3E
	adc $6B49.w,Y		; 79 49 6B
	adc [$00.b]		; 67 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	cpy #$20FC.w		; C0 FC 20
	sbc $627F48.l,X		; FF 48 7F 62
	adc $000700.l,X		; 7F 00 07 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	cpy #$6080.w		; C0 80 60
	cpy #$C030.w		; C0 30 C0
	bpl -56.b		; 10 C8
	bpl  88.b		; 10 58
	bra  -8.b		; 80 F8
	clc		; 18
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	jsr $00E0.w		; 20 E0 00
	cpx #$E000.w		; E0 00 E0
	dey		; 88
	cpy #$0018.w		; C0 18 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bvc  96.b		; 50 60
	sec		; 38
	bmi   2.b		; 30 02
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq  64.b		; F0 40
	beq  32.b		; F0 20
	sbc $006F00.l,X		; FF 00 6F 00
	ora [$00.b]		; 07 00
	asl $F0.b		; 06 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0C0.w		; E0 C0 F0
	cpy #$F0BA.w		; C0 BA F0
	brk $0A.b		; 00 0A
	and $21.b		; 25 21
	adc ($78.b),Y		; 71 78
	adc $70.b,S		; 63 70
	eor [$60.b]		; 47 60
	brk $F8.b		; 00 F8
	cpy #$00FF.w		; C0 FF 00
	sbc $216F00.l,X		; FF 00 6F 21
	adc $41FF60.l,X		; 7F 60 FF 41
	sbc $FA02.w,X		; FD 02 FA
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$78E0.w		; E0 E0 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	rts		; 60

	inc $3EF8.w,X		; FE F8 3E
	rol $7FCF.w,X		; 3E CF 7F
	eor $E7.b,S		; 43 E7
	sei		; 78
	jsr ($FEFC.w,X)		; FC FC FE
	cld		; D8
	jmp ($3BC0.w,X)		; 7C C0 3B
	cmp $38.b,S		; C3 38
	sbc $83FF0E.l,X		; FF 0E FF 83
	adc $E06FC0.l,X		; 7F C0 6F E0
	cpx $5D7C.w		; EC 7C 5D
	php		; 08
	phd		; 0B
	bpl  23.b		; 10 17
	phy		; 5A
	and $2D5A.w		; 2D 5A 2D
	phy		; 5A
	and $0D3A.w		; 2D 3A 0D
	and ($0E.b),Y		; 31 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b),Y		; 11 0E
	php		; 08
	ora [$2D.b]		; 07 2D
	brk $2D.b		; 00 2D
	brk $2D.b		; 00 2D
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $92.b		; 00 92
	sbc $EC93.w		; ED 93 EC
	sta [$E8.b],Y		; 97 E8
	sta [$E8.b],Y		; 97 E8
	eor $F44BF0.l		; 4F F0 4B F4
	phk		; 4B
	pea $7AA5.w		; F4 A5 7A
	cpx $EC00.w		; EC 00 EC
	brk $E9.b		; 00 E9
	ora ($EA.b,X)		; 01 EA
	cop $F2.b		; 02 F2
	cop $F5.b		; 02 F5
	ora ($F4.b,X)		; 01 F4
	brk $7A.b		; 00 7A
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $22.b		; 00 22
	jsl $094444.l		; 22 44 44 09
	ora #$1111.w		; 09 11 11
	ora ($11.b),Y		; 11 11
	jsl $424222.l		; 22 22 42 42
	.db $42, $42		; 42 42
	cmp [$A8.b],Y		; D7 A8
	sbc $20FF50.l,X		; FF 50 FF 20
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $A80000.l,X		; FF 00 00 A8
	eor ($52.b)		; 52 52
	rol A		; 2A
	rol A		; 2A
	ora #$2409.w		; 09 09 24
	bit $24.b		; 24 24
	bit $22.b		; 24 22
	jsl $B72121.l		; 22 21 21 B7
	eor [$F5.b]		; 47 F5
	ora $F8.b,S		; 03 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $70C0.w		; 20 C0 70
	ora ($1F.b,S),Y		; 13 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	jsr $3F20.w		; 20 20 3F
	ror $3F.b		; 66 3F
	jmp ($583F.w)		; 6C 3F 58
	adc $003F10.l,X		; 7F 10 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $061400.l,X		; 3F 00 14 06
	tsb $080C.w		; 0C 0C 08
	clc		; 18
	cop $32.b		; 02 32
	cop $62.b		; 02 62
	cop $42.b		; 02 42
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	txa		; 8A
	adc [$4D.b],Y		; 77 4D
	and ($2C.b,S),Y		; 33 2C
	ora ($1A.b,S),Y		; 13 1A
	ora ($09.b,X)		; 01 09
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	brk $33.b		; 00 33
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$06.b]		; 07 06
	asl $0C.b		; 06 0C
	tsb $1818.w		; 0C 18 18
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $003E00.l,X		; 1F 00 3E 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FC00.w,X)		; 7C 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	php		; 08
	bpl   4.b		; 10 04
	php		; 08
	tsb $2040.w		; 0C 40 20
	jmp $26A868.l		; 5C 68 A8 26
	adc ($53.b,X)		; 61 53
	brk $01.b		; 00 01
	php		; 08
	tas		; 1B
	brk $14.b		; 00 14
	php		; 08
	tsb $6800.w		; 0C 00 68
	rti		; 40

	adc $4DAF20.l,X		; 7F 20 AF 4D
	adc $000000.l,X		; 7F 00 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	rti		; 40

	jsr $0030.w		; 20 30 00
	jsr $7048.w		; 20 48 70
	tya		; 98
	tay		; A8
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	brk $78.b		; 00 78
	cpy #$00DA.w		; C0 DA 00
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
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	bra -16.b		; 80 F0
	ror $0F7C.w,X		; 7E 7C 0F
	ora $000303.l,X		; 1F 03 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	bvs  -1.b		; 70 FF
	tsb $037F.w		; 0C 7F 03
	ora $000300.l,X		; 1F 00 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora [$00.b]		; 07 00
	brk $18.b		; 00 18
	tya		; 98
	sty $068C.w		; 8C 8C 06
	rol $12.b		; 26 12
	eor ($09.b)		; 52 09
	cmp #$C4C3.w		; C9 C3 C4
	ldx $85.b		; A6 85
	brk $98.b		; 00 98
	clc		; 18
	jsr ($FE8C.w,X)		; FC 8C FE
	asl $FF.b		; 06 FF
	ora ($FF.b)		; 12 FF
	ora #$80FF.w		; 09 FF 80
	sbc [$00.b],Y		; F7 00
	cmp [$00.b]		; C7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -32.b		; F0 E0
	jmp ($1FFC.w,X)		; 7C FC 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	bra  -4.b		; 80 FC
	rts		; 60

	sbc $00FF1C.l,X		; FF 1C FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$5DEE.w		; E0 EE 5D
	lsr $5EFD.w		; 4E FD 5E
	lda $BDDE.w,X		; BD DE BD
	pei ($BF.b)		; D4 BF
	cmp $BE.b,X		; D5 BE
	cmp $BE.b,X		; D5 BE
	eor $BE.b,X		; 55 BE
	eor $FD00.w,X		; 5D 00 FD
	brk $BD.b		; 00 BD
	brk $BD.b		; 00 BD
	brk $BF.b		; 00 BF
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $7A.b		; 00 7A
	sta ($8A.b,X)		; 81 8A
	adc ($85.b),Y		; 71 85
	ply		; 7A
	sty $DC73.w		; 8C 73 DC
	and ($BE.b,X)		; 21 BE
	.db $42, $3F		; 42 3F
	cmp ($7F.b,X)		; C1 7F
	bra -127.b		; 80 81
	ora $71.b		; 05 71
	adc $08.b,X		; 75 08
	asl A		; 0A
	brk $03.b		; 00 03
	php		; 08
	phd		; 0B
	bvc  83.b		; 50 53
	ldy $A5.b		; A4 A5
	eor #$1649.w		; 49 49 16
	sbc #$DD2A.w		; E9 2A DD
	and $7CBDDC.l,X		; 3F DC BD 7C
	adc $FC3FBC.l,X		; 7F BC 3F FC
	ora $B4CF78.l,X		; 1F 78 CF B4
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	tya		; 98
	stz $7E78.w,X		; 9E 78 7E
	sec		; 38
	ldy $FC18.w,X		; BC 18 FC
	ora #$84FB.w		; 09 FB 84
	ldy $E8.b,X		; B4 E8
	trb $9E6C.w		; 1C 6C 9E
	jsr $50DF.w		; 20 DF 50
	jsr ($FC58.w,X)		; FC 58 FC
	cli		; 58
	jsr ($EE18.w,X)		; FC 18 EE
	ldy $1C6E.w,X		; BC 6E 1C
	brk $1E.b		; 00 1E
	brk $5F.b		; 00 5F
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	bra  19.b		; 80 13
	tsb $07.b		; 04 07
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	rti		; 40

	lda $5ED160.l,X		; BF 60 D1 5E
	plp		; 28
	sta $F48770.l		; 8F 70 87 F4
	sta [$74.b]		; 87 74
	ora [$F4.b]		; 07 F4
	ora [$22.b]		; 07 22
	jsl $2D5E5E.l		; 22 5E 5E 2D
	ora $0676.w		; 0D 76 06
	inc $7A86.w,X		; FE 86 7A
	cop $FA.b		; 02 FA
	cop $FA.b		; 02 FA
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7C.b		; 00 7C
	sty $03.b		; 84 03
	sed		; F8
	ora $F8.b,S		; 03 F8
	ora $F8.b,S		; 03 F8
	ora [$FC.b]		; 07 FC
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	sta [$97.b],Y		; 97 97
	tda		; 7B
	sei		; 78
	adc $08EF08.l		; 6F 08 EF 08
	sbc [$00.b]		; E7 00
	sbc $00.b,S		; E3 00
	inx		; E8
	bpl -88.b		; 10 A8
	bvc  48.b		; 50 30
	cpy #$C0B0.w		; C0 B0 C0
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	ldy #$E030.w		; A0 30 E0
	bmi  80.b		; 30 50
	rti		; 40

	bcc -128.b		; 90 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $C0.b		; 00 C0
	brk $5C.b		; 00 5C
	jmp $C1C1.w		; 4C C1 C1
	and ($41.b,X)		; 21 41
	bvs 112.b		; 70 70
	adc $117D.w,X		; 7D 7D 11
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $4D.b		; 00 4D
	eor $C180.w,X		; 5D 80 C1
	brk $71.b		; 00 71
	rti		; 40

	adc $107F70.l,X		; 7F 70 7F 10
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bmi  59.b		; 30 3B
	bmi  27.b		; 30 1B
	inc A		; 1A
	sbc $27.b		; E5 27
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	dec $FFF0.w,X		; DE F0 FF
	cop $1F.b		; 02 1F
	ora ($EF.b,X)		; 01 EF
	brk $E9.b		; 00 E9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1D1E0E.l		; 0F 0E 1E 1D
	rol $7C39.w,X		; 3E 39 7C
	adc ($38.b,S),Y		; 73 38
	inc $01.b		; E6 01
	inc $7E01.w,X		; FE 01 7E
	sta ($06.b,X)		; 81 06
	ora $183F0C.l,X		; 1F 0C 3F 18
	ror $7E30.w,X		; 7E 30 7E
	jsr $41BC.w		; 20 BC 41
	cli		; 58
	and ($20.b,X)		; 21 20
	ora $4618.w,Y		; 19 18 46
	rol $9D.b,X		; 36 9D
	.db $62, $B0, $5F		; 62 B0 5F
	tda		; 7B
	lda $46FF57.l,X		; BF 57 FF 46
	xce		; FB
	tsb $FB.b		; 04 FB
	and $30D2.w		; 2D D2 30
	stx $62.b		; 86 62
	brk $5F.b		; 00 5F
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $D0.b		; 00 D0
	brk $3E.b		; 00 3E
	cmp $E6.b,S		; C3 E6
	pla		; 68
	sec		; 38
	cpy #$F824.w		; C0 24 F8
	ora ($FC.b)		; 12 FC
	cli		; 58
	ldx $3CCA.w,Y		; BE CA 3C
	adc ($9C.b)		; 72 9C
	cop $FF.b		; 02 FF
	brk $6E.b		; 00 6E
	cpy #$F800.w		; C0 00 F8
	brk $FC.b		; 00 FC
	brk $BE.b		; 00 BE
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $C0.b		; 00 C0
	cpy #$DBC3.w		; C0 C3 DB
	cmp $1D1D.w,X		; DD 1D 1D
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($80.b,X)		; 01 80
	sbc $1CFFC3.l		; EF C3 FF 1C
	cmp $001F00.l,X		; DF 00 1F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $55.b,S		; 03 55
	ldx $B61D.w,Y		; BE 1D B6
	clc		; 18
	lda [$39.b],Y		; B7 39
	stx $28.b,Y		; 96 28
	sta [$29.b],Y		; 97 29
	asl $0B.b,X		; 16 0B
	trb $11.b		; 14 11
	asl $BE.b		; 06 BE
	brk $B6.b		; 00 B6
	brk $B7.b		; 00 B7
	brk $96.b		; 00 96
	brk $97.b		; 00 97
	brk $16.b		; 00 16
	brk $15.b		; 00 15
	ora ($06.b,X)		; 01 06
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $92.b		; 00 92
	sta ($24.b)		; 92 24
	bit $44.b		; 24 44
	mvp $88,$88		; 44 88 88
	ora #$1109.w		; 09 09 11
	ora ($91.b),Y		; 11 91
	sta ($62.b),Y		; 91 62
	.db $62, $FF, $48		; 62 FF 48
	sbc $00FF30.l,X		; FF 30 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $484800.l,X		; FF 00 48 48
	adc ($71.b),Y		; 71 71
	sta $85.b		; 85 85
	sta ($92.b)		; 92 92
	ora ($12.b)		; 12 12
	ora ($12.b)		; 12 12
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ldy $DD66.w,X		; BC 66 DD
	rol $DD.b,X		; 36 DD
	and ($ED.b)		; 32 ED
	inc A		; 1A
	inc $FE18.w		; EE 18 FE
	php		; 08
	pea $F408.w		; F4 08 F4
	php		; 08
	ror $00.b		; 66 00
	ror $40.b,X		; 76 40
	and ($00.b)		; 32 00
	tsx		; BA
	ldy #$8098.w		; A0 98 80
	cli		; 58
	bvc  88.b		; 50 58
	bvc 104.b		; 50 68
	rts		; 60

	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	beq   7.b		; F0 07
	inx		; E8
	ora $D00FE0.l		; 0F E0 0F D0
	ora $A41BC4.l,X		; 1F C4 1B A4
	and ($80.b,S),Y		; 33 80
	and ($C0.b,S),Y		; 33 C0
	adc $FD.b,S		; 63 FD
	tsb $F5.b		; 04 F5
	tsb $FB.b		; 04 FB
	php		; 08
	sbc $00.b,S		; E3 00
	sbc ($10.b,S),Y		; F3 10
	cmp $00.b,S		; C3 00
	sbc $20.b,S		; E3 20
	sta $00.b,S		; 83 00
	ora ($FC.b,X)		; 01 FC
	ora $FE.b,S		; 03 FE
	pha		; 48
	ldx $49.b,Y		; B6 49
	lda [$50.b],Y		; B7 50
	lda $50.b,S		; A3 50
	lda $B0.b,S		; A3 B0
	ora ($90.b,X)		; 01 90
	ora ($F7.b,X)		; 01 F7
	tsb $F1.b		; 04 F1
	brk $B3.b		; 00 B3
	cop $B0.b		; 02 B0
	brk $A1.b		; 00 A1
	ora ($A0.b,X)		; 01 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$E008.w		; E0 08 E0
	php		; 08
	sei		; 78
	php		; 08
	sed		; F8
	sty $8430.w		; 8C 30 84
	bvs -60.b		; 70 C4
	beq  16.b		; F0 10
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sed		; F8
	bra  60.b		; 80 3C
	tsb $01.b		; 04 01
	ora $03.b,S		; 03 03
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora [$0D.b]		; 07 0D
	asl $14.b		; 06 14
	ora $2B1E09.l		; 0F 09 1E 2B
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $001E00.l		; 0F 00 1E 00
	trb $F800.w		; 1C 00 F8
	ora [$DC.b]		; 07 DC
	adc $AD.b,S		; 63 AD
	and ($CD.b)		; 32 CD
	sta ($7F.b)		; 92 7F
	bcc  39.b		; 90 27
	dey		; 88
	adc [$C8.b],Y		; 77 C8
	tsa		; 3B
	cpy $0007.w		; CC 07 00
	lda $20.b,S		; A3 20
	rep #$00		; C2 00
	adc ($10.b)		; 72 10
	cpx #$7280.w		; E0 80 72
	cop $B9.b		; 02 B9
	ora #$40F0.w		; 09 F0 40
	pla		; 68
	and $D0.b,S		; 23 D0
	eor $3C.b,S		; 43 3C
	sbc $613F.w,Y		; F9 3F 61
	cmp $A625.w		; CD 25 A6
	eor ($90.b),Y		; 51 90
	rtl		; 6B

	clv		; B8
	ror $B6.b,X		; 76 B6
	and ($AE.b)		; 32 AE
	asl A		; 0A
	lsr $40.b		; 46 40
	stz $3A80.w,X		; 9E 80 3A
	jsl $4E101E.l		; 22 1E 10 4E
	lsr A		; 4A
	rti		; 40

	rti		; 40

	bcc 104.b		; 90 68
	cpx #$4000.w		; E0 00 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl $0068.w,X		; 1E 68 00
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
	trb $0E31.w		; 1C 31 0E
	and $3C.b,S		; 23 3C
	adc $18.b,S		; 63 18
	.db $42, $7C		; 42 7C
	dec $3C.b		; C6 3C
	stx $70.b		; 86 70
	stx $F8.b		; 86 F8
	jmp $010F.w		; 4C 0F 01
	bit $1E20.w,X		; 3C 20 1E
	cop $7E.b		; 02 7E
	.db $42, $38		; 42 38
	brk $F8.b		; 00 F8
	bra -100.b		; 80 9C
	sty $40.b		; 84 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -80.b		; 80 B0
	bmi  62.b		; 30 3E
	ror $0F0F.w,X		; 7E 0F 0F
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $D8.b		; 00 D8
	bra  -2.b		; 80 FE
	bmi  -1.b		; 30 FF
	asl $017F.w		; 0E 7F 01
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F383.w		; C0 83 F3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F3.b		; 00 F3
	sta $FF.b,S		; 83 FF
	jsr ($7C00.w,X)		; FC 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	iny		; C8
	bpl  26.b		; 10 1A
	asl $06.b,X		; 16 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C8.b		; 00 C8
	brk $FA.b		; 00 FA
	bpl -65.b		; 10 BF
	asl $1F.b		; 06 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$ECEC.w		; E0 EC EC
	sbc $C7E7CF.l		; EF CF E7 C7
	cpy #$C080.w		; C0 80 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$E0FC.w		; C0 FC E0
	sbc $47FFCC.l,X		; FF CC FF 47
	sbc $80E780.l,X		; FF 80 E7 80
	cpy #$0F06.w		; C0 06 0F
	ora $1E0E0E.l		; 0F 0E 0E 1E
	trb $3E3E.w		; 1C 3E 3E
	bit $7C38.w,X		; 3C 38 7C
	ldy $78.b,X		; B4 78
	iny		; C8
	bmi   6.b		; 30 06
	ora $0C1F06.l		; 0F 06 1F 0C
	and $1C3E0C.l,X		; 3F 0C 3E 1C
	ror $7E38.w,X		; 7E 38 7E
	bmi 124.b		; 30 7C
	rti		; 40

	jmp ($00F0.w,X)		; 7C F0 00
	sed		; F8
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	clv		; B8
	bvc  80.b		; 50 50
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -96.b		; 80 A0
	cpy #$E4F4.w		; C0 F4 E4
	tsb $0C0E.w		; 0C 0E 0C
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E480.w		; E0 80 E4
	cpy #$0CFE.w		; C0 FE 0C
	cmp $000E00.l,X		; DF 00 0E 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	bcs  48.b		; B0 30
	jmp ($1F7C.w,X)		; 7C 7C 1F
	and $E4E363.l,X		; 3F 63 E3 E4
	asl $041E.w,X		; 1E 1E 04
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	jsr ($7F30.w,X)		; FC 30 7F
	trb $237F.w		; 1C 7F 23
	adc $1EE7E0.l,X		; 7F E0 E7 1E
	asl $0404.w,X		; 1E 04 04
	brk $00.b		; 00 00
	asl $39.b		; 06 39
	eor $0A33.w,X		; 5D 33 0A
	adc [$35.b],Y		; 77 35
	ror $5DAE.w		; 6E AE 5D
	nop		; EA
	eor $FD1B.w,X		; 5D 1B FD
	cmp $39BB.w,X		; DD BB 39
	brk $33.b		; 00 33
	brk $77.b		; 00 77
	brk $6E.b		; 00 6E
	brk $5D.b		; 00 5D
	brk $5D.b		; 00 5D
	brk $FD.b		; 00 FD
	brk $BB.b		; 00 BB
	brk $13.b		; 00 13
	cpy $7F.b		; C4 7F
	ldy $DE.b		; A4 DE
	and $DC.b		; 25 DC
	and $58.b,S		; 23 58
	sta [$C8.b],Y		; 97 C8
	sta [$24.b],Y		; 97 24
	wai		; CB
	and $CC.b,S		; 23 CC
	ldy $9804.w,X		; BC 04 98
	brk $3D.b		; 00 3D
	and $1A.b		; 25 1A
	cop $80.b		; 02 80
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	clc		; 18
	cpy #$A31C.w		; C0 1C A3
	stz $DF.b		; 64 DF
	jsr $817E.w		; 20 7E 81
	jmp ($4883.w,X)		; 7C 83 48
	sta [$48.b]		; 87 48
	sta [$78.b]		; 87 78
	sta [$BA.b]		; 87 BA
	eor $5C.b		; 45 5C
	mvp $20,$38		; 44 38 20
	sta ($81.b),Y		; 91 81
	cop $02.b		; 02 02
	bit $34.b,X		; 34 34
	bit $34.b,X		; 34 34
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	sta [$70.b],Y		; 97 70
	lsr $BAC1.w,X		; 5E C1 BA
	eor $68.b,S		; 43 68
	stx $B040.w		; 8E 40 B0
	rts		; 60

	bra  64.b		; 80 40
	bcs -64.b		; B0 C0
	bmi  46.b		; 30 2E
	jsr $003E.w		; 20 3E 00
	and $3401.w,X		; 3D 01 34
	tsb $20.b		; 04 20
	jsr $0000.w		; 20 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	sed		; F8
	cpx $F8.b		; E4 F8
	bit $E8.b		; 24 E8
	bmi -24.b		; 30 E8
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpx #$2000.w		; E0 00 20
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$E490.w		; E0 90 E4
	stz $F4.b,X		; 74 F4
	asl $92.b,X		; 16 92
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	jsr $14FF.w		; 20 FF 14
	sbc $009780.l,X		; FF 80 97 00
	ora $04.b		; 05 04
	dey		; 88
	tsb $0800.w		; 0C 00 08
	brk $08.b		; 00 08
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
	brk $40.b		; 00 40
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $F0.b		; 00 F0
	bpl 112.b		; 10 70
	clc		; 18
	cpx #$7088.w		; E0 88 70
	dey		; 88
	bmi -120.b		; 30 88
	sei		; 78
	cpy $78.b		; C4 78
	cpy $3C.b		; C4 3C
	cpy #$00E0.w		; C0 E0 00
	cpx #$7000.w		; E0 00 70
	brk $F0.b		; 00 F0
	bra 120.b		; 80 78
	php		; 08
	bit $3C04.w,X		; 3C 04 3C
	tsb $78.b		; 04 78
	rti		; 40

	bit $3CC4.w,X		; 3C C4 3C
	cpy $D82C.w		; CC 2C D8
	ror $7E90.w		; 6E 90 7E
	bra -66.b		; 80 BE
	brk $BE.b		; 00 BE
	brk $FE.b		; 00 FE
	brk $74.b		; 00 74
	mvp $4C,$6C		; 44 6C 4C
	pha		; 48
	cli		; 58
	tsb $34.b		; 04 34
	tsb $24.b		; 04 24
	tsb $44.b		; 04 44
	tsb $44.b		; 04 44
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $A0A0.w		; 20 A0 A0
	cpx $1FCC.w		; EC CC 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	jsr $A0EC.w		; 20 EC A0
	sbc $FEDF0C.l,X		; FF 0C DF FE
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
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
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  96.b		; 80 60
	rts		; 60

	bmi  48.b		; 30 30
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	rts		; 60

	rts		; 60

	cpx #$0000.w		; E0 00 00
	cop $02.b		; 02 02
	ora ($12.b)		; 12 12
	rol A		; 2A
	rol A		; 2A
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $02.b		; 00 02
	brk $17.b		; 00 17
	cop $3F.b		; 02 3F
	rol A		; 2A
	adc $001000.l,X		; 7F 00 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001000.l		; 0F 00 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $007F00.l		; 0F 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $BFBF2F.l		; 0F 2F BF BF
	cpx #$0CC4.w		; E0 C4 0C
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $2FBF00.l		; 0F 00 BF 2F
	sbc $04FFA0.l,X		; FF A0 FF 04
	cpy $0E0E.w		; CC 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	asl $1E.b,X		; 16 1E
	inc $E0FE.w,X		; FE FE E0
	sed		; F8
	clc		; 18
	rti		; 40

	cpy #$E0E0.w		; C0 E0 E0
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $FF.b		; 00 FF
	asl $FF.b,X		; 16 FF
	cpx #$18FE.w		; E0 FE 18
	sed		; F8
	rti		; 40

	cpy #$E0E0.w		; C0 E0 E0
	ora $1B3D2D.l,X		; 1F 2D 3D 1B
	and $1B1B.w,X		; 3D 1B 1B
	and [$1B.b],Y		; 37 1B
	adc [$0F.b],Y		; 77 0F
	adc [$06.b],Y		; 77 06
	adc $2D3E47.l,X		; 7F 47 3E 2D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	brk $D5.b		; 00 D5
	inc $D8E7.w		; EE E7 D8
	lda #$C8D6.w		; A9 D6 C8
	lda [$58.b],Y		; B7 58
	lda [$95.b],Y		; B7 95
	ror A		; 6A
	lda $5C.b,S		; A3 5C
	adc [$D8.b]		; 67 D8
	inc $D800.w		; EE 00 D8
	brk $D6.b		; 00 D6
	asl $B1.b		; 06 B1
	ora ($B0.b,X)		; 01 B0
	brk $68.b		; 00 68
	php		; 08
	eor ($11.b),Y		; 51 11
	rep #$02		; C2 02
	lda ($6E.b),Y		; B1 6E
	cmp ($2E.b),Y		; D1 2E
	xba		; EB
	ora $5B.b,X		; 15 5B
	sta $EF.b		; 85 EF
	ora $EB.b,S		; 03 EB
	ora [$FD.b],Y		; 17 FD
	phd		; 0B
	inc $0805.w,X		; FE 05 08
	inx		; E8
	php		; 08
	pla		; 68
	ora $35.b		; 05 35
	sta $B5.b		; 85 B5
	ora ($3B.b,X)		; 01 3B
	cmp ($D7.b,X)		; C1 D7
	cpx #$34EB.w		; E0 EB 34
	and $88.b,X		; 35 88
	bvs -120.b		; 70 88
	beq -24.b		; F0 E8
	bcc -24.b		; 90 E8
	pei ($F4.b)		; D4 F4
	tya		; 98
	cpx $FA9A.w		; EC 9A FA
	sta $0CFB.w		; 8D FB 0C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	trb $C0.b		; 14 C0
	clc		; 18
	cpy #$C01A.w		; C0 1A C0
	ora $0CA0.w		; 0D A0 0C
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $BFBF9F.l,X		; 1F 9F BF BF
	ldy #$00A0.w		; A0 A0 00
	brk $07.b		; 00 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $BF.b		; 00 BF
	ora $FFA0FF.l,X		; 1F FF A0 FF
	brk $A0.b		; 00 A0
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $E0FFFF.l,X		; 1F FF FF E0
	cpx #$0000.w		; E0 00 00
	brk $E0.b		; 00 E0
	brk $E1.b		; 00 E1
	inc $1F00.w,X		; FE 00 1F
	brk $FF.b		; 00 FF
	ora $FFE0FF.l,X		; 1F FF E0 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $000000.l,X		; FF 00 00 00
	ora $101000.l		; 0F 00 10 10
	jsr $3008.w		; 20 08 30
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$00.b]		; 07 00
	ora $001010.l		; 0F 10 10 00
	plp		; 28
	bpl  48.b		; 10 30
	brk $0F.b		; 00 0F
	adc $00FFFF.l,X		; 7F FF FF 00
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	cpy #$48A0.w		; C0 A0 48
	bvc  29.b		; 50 1D
	plp		; 28
	eor $78.b		; 45 78
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	brk $7A.b		; 00 7A
	brk $7F.b		; 00 7F
	brk $4F.b		; 00 4F
	ora [$18.b]		; 07 18
	ora ($02.b,X)		; 01 02
	sbc $1F.b,S		; E3 1F
	dec $1801.w		; CE 01 18
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	jsr ($0003.w,X)		; FC 03 00
	ora $000300.l,X		; 1F 00 03 00
	sbc $00CF00.l,X		; FF 00 CF 00
	clc		; 18
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$F0C0.w		; C0 C0 F0
	bmi   7.b		; 30 07
	phd		; 0B
	and ($F2.b),Y		; 31 F2
	sbc $1F.b,S		; E3 1F
	asl $0001.w		; 0E 01 00
	brk $00.b		; 00 00
	sbc $00C000.l,X		; FF 00 C0 00
	beq   0.b		; F0 00
	ora $00F300.l		; 0F 00 F3 00
	sbc $000F00.l,X		; FF 00 0F 00
	brk $00.b		; 00 00
	sbc $E7D8B7.l,X		; FF B7 D8 E7
	jmp.w [$EB5A]		; DC 5A EB
	lda $71.b		; A5 71
	dec $7E30.w		; CE 30 7E
	bpl  14.b		; 10 0E
	jsr $201E.w		; 20 1E 20
	dec $06.b,X		; D6 06
	stp		; DB
	phd		; 0B
	sbc $01.b		; E5 01
	ror $3F00.w		; 6E 00 3F
	bpl  15.b		; 10 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$F30C.w		; C0 0C F3
	sty $9CF3.w		; 8C F3 9C
	sbc $9C.b,S		; E3 9C
	sbc $21.b,S		; E3 21
	and ($21.b,X)		; 21 21
	and ($E1.b,X)		; 21 E1
	sbc ($FF.b,X)		; E1 FF
	sbc $41C1C1.l,X		; FF C1 C1 41
	eor ($40.b,X)		; 41 40
	rti		; 40

	rti		; 40

	rti		; 40

	ora $EF0F1E.l,X		; 1F 1E 0F EF
	sbc ($E7.b,S),Y		; F3 E7
	sbc $03.b,S		; E3 03
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	asl $07FF.w,X		; 1E FF 07
	sbc $01FFE3.l,X		; FF E3 FF 01
	sbc [$01.b]		; E7 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $0F.b,S		; 03 0F
	adc $A4A02F.l		; 6F 2F A0 A4
	dey		; 88
	cmp [$86.b]		; C7 86
	stx $C6.b		; 86 C6
	stx $C6.b		; 86 C6
	bra -64.b		; 80 C0
	cpy #$0FC0.w		; C0 C0 0F
	sbc $80EF20.l,X		; FF 20 EF 80
	sbc $86C780.l		; EF 80 C7 86
	cmp [$86.b]		; C7 86
	dec $80.b		; C6 80
	cpy #$C080.w		; C0 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora [$F8.b]		; 07 F8
	beq  -9.b		; F0 F7
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $C0E0.w,X		; 1E E0 C0
	cmp $013E3E.l,X		; DF 3E 3E 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $DF00.w,X		; FE 00 DF
	brk $3E.b		; 00 3E
	brk $01.b		; 00 01
	eor $BE.b		; 45 BE
	mvp $52,$BF		; 44 BF 52
	lda $9D63.w		; AD 63 9D
	adc [$99.b]		; 67 99
	ror $19.b		; 66 19
	rol $59.b		; 26 59
	and [$48.b]		; 27 48
	ldx $BF00.w,Y		; BE 00 BF
	brk $AD.b		; 00 AD
	brk $9D.b		; 00 9D
	brk $99.b		; 00 99
	brk $19.b		; 00 19
	brk $59.b		; 00 59
	brk $48.b		; 00 48
	brk $5F.b		; 00 5F
	cpx #$E0DF.w		; E0 DF E0
	sbc $C0BFC0.l,X		; FF C0 BF C0
	lda $E09FC0.l,X		; BF C0 9F E0
	cmp $E8DFF0.l,X		; DF F0 DF E8
	cpx $04.b		; E4 04
	inx		; E8
	php		; 08
	cmp ($11.b),Y		; D1 11
.ACCU 8
	sep #$22		; E2 22
	cpx $24.b		; E4 24
	sed		; F8
	clc		; 18
	sed		; F8
	php		; 08
	cpx $FF04.w		; EC 04 FF
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $5A.b		; 00 5A
	phy		; 5A
	sta $95.b,X		; 95 95
	bit $24.b		; 24 24
	and $25.b		; 25 25
	eor #$49.b		; 49 49
	eor #$49.b		; 49 49
	bit #$89.b		; 89 89
	sta ($91.b),Y		; 91 91
	sbc [$4C.b],Y		; F7 4C
	sbc $FF86.w,X		; FD 86 FF
	cop $FD.b		; 02 FD
	cop $FC.b		; 02 FC
	ora $FE.b,S		; 03 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($1C.b,X)		; 01 1C
	bvc -106.b		; 50 96
	bcc  82.b		; 90 52
	bvc  74.b		; 50 4A
	pha		; 48
	phk		; 4B
	pha		; 48
	and #$28.b		; 29 28
	and $24.b		; 25 24
	and $34.b,X		; 35 34
	cpx #$38D8.w		; E0 D8 38
	and [$0D.b],Y		; 37 0D
	asl $0303.w		; 0E 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $001F.w,X		; 1E 1F 00
	brk $00.b		; 00 00
	cpy #$9860.w		; C0 60 98
	cld		; D8
	sbc [$3B.b]		; E7 3B
	bit $0706.w,X		; 3C 06 07
	ora ($01.b,X)		; 01 01
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	tsb $2417.w		; 0C 17 24
	bpl  59.b		; 10 3B
	and [$12.b],Y		; 37 12
	brk $0C.b		; 00 0C
	tsb $0402.w		; 0C 02 04
	ora $03030F.l		; 0F 0F 03 03
	brk $1F.b		; 00 1F
	ora $37.b,S		; 03 37
	and ($3F.b,S),Y		; 33 3F
	brk $12.b		; 00 12
	php		; 08
	tsb $0700.w		; 0C 00 07
	tsb $030F.w		; 0C 0F 03
	ora $4E.b,S		; 03 4E
	dec $8406.w		; CE 06 84
	jmp $1244.w		; 4C 44 12
	trb $08.b		; 14 08
	tsb $10.b		; 04 10
	bpl -24.b		; 10 E8
	beq -128.b		; F0 80
	bra 124.b		; 80 7C
	adc $30F770.l,X		; 7F 70 F7 30
	adc $1600.w,X		; 7D 00 16
	brk $1C.b		; 00 1C
	brk $F8.b		; 00 F8
	jsr $80F8.w		; 20 F8 80
	bra   0.b		; 80 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	ora $E5.b		; 05 E5
	ora $F1.b,X		; 15 F1
	beq -128.b		; F0 80
	cpy #$FF00.w		; C0 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $FF.b		; 00 FF
	ora $FF.b		; 05 FF
	cpy #$00F1.w		; C0 F1 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $AFAF0F.l		; 0F 0F AF AF
	ldy #$0080.w		; A0 80 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $BF.b		; 00 BF
	ora $EFA0FF.l		; 0F FF A0 EF
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	asl $1D20.w,X		; 1E 20 1D
	and ($3C.b,X)		; 21 3C
	adc ($3A.b,X)		; 61 3A
	adc $18.b,S		; 63 18
	eor $34.b,S		; 43 34
	eor [$71.b]		; 47 71
	dec $39.b		; C6 39
	sty $203F.w		; 8C 3F 20
	rol $1F20.w,X		; 3E 20 1F
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	cop $79.b		; 02 79
	rti		; 40

	bit $F004.w,X		; 3C 04 F0
	bra  46.b		; 80 2E
	cmp ($2E.b),Y		; D1 2E
	cmp ($47.b),Y		; D1 47
	clv		; B8
	eor [$B8.b]		; 47 B8
	cmp $3C.b,S		; C3 3C
	sbc $1C.b,S		; E3 1C
	sbc ($0C.b,S),Y		; F3 0C
	lsr $88.b,X		; 56 88
	bcc -128.b		; 90 80
	bcc -128.b		; 90 80
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $88.b		; 00 88
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4021.w		; 20 21 40
	eor ($81.b,X)		; 41 81
	sta ($01.b,X)		; 81 01
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $1900.w		; 0C 00 19
	brk $31.b		; 00 31
	brk $61.b		; 00 61
	brk $C1.b		; 00 C1
	brk $83.b		; 00 83
	brk $03.b		; 00 03
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0F0.w		; E0 F0 E0
	beq -48.b		; F0 D0
	cpx #$E0C0.w		; E0 C0 E0
	rts		; 60

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	beq   3.b		; F0 03
	ora ($02.b,X)		; 01 02
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	trb $13.b		; 14 13
	bit $582D.w		; 2C 2D 58
	eor $0002BA.l,X		; 5F BA 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b],Y		; 17 00
	and $005B00.l		; 2F 00 5B 00
	lda $6D00.w,Y		; B9 00 6D
	sta ($3A.b)		; 92 3A
	iny		; C8
	ldy $D0.b,X		; B4 D0
	and $582F5E.l		; 2F 5E 2F 58
	sbc ($49.b,S),Y		; F3 49
	lda $9404.w,Y		; B9 04 94
	rol A		; 2A
	bcc -128.b		; 90 80
	sta $0B8C.w		; 8D 8C 0B
	cop $D1.b		; 02 D1
	bvc -57.b		; 50 C7
	rti		; 40

	stx $C708.w		; 8E 08 C7
	tsb $CB.b		; 04 CB
	asl A		; 0A
	brk $C0.b		; 00 C0
	cpy #$9830.w		; C0 30 98
	inc $67.b		; E6 67
	sei		; 78
	clc		; 18
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3038.w		; C0 38 30
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $36.b		; 00 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $7E0080.l,X		; 7F 80 00 7E
	sed		; F8
	sbc $0707.w,Y		; F9 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	brk $F9.b		; 00 F9
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	asl $18.b,X		; 16 18
	stz $C0DE.w		; 9C DE C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $DF.b		; 00 DF
	clc		; 18
	sbc $00FC80.l,X		; FF 80 FC 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $1C00.w		; 0E 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	adc $007E00.l,X		; 7F 00 7E 00
	ror $FC00.w,X		; 7E 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$0FC0.w		; C0 C0 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	ora ($0D.b),Y		; 11 0D
	bvc   5.b		; 50 05
	pha		; 48
	tsb $08.b		; 04 08
	cop $04.b		; 02 04
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	bvc   0.b		; 50 00
	pha		; 48
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
	bra   1.b		; 80 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $C0.b		; 00 C0
	cpx #$E814.w		; E0 14 E8
	inc $F801.w,X		; FE 01 F8
	ora $FB0FFD.l		; 0F FD 0F FB
	ora $B2DD23.l		; 0F 23 DD B2
	cmp $F0C0.w		; CD C0 F0
	php		; 08
	cpx #$0001.w		; E0 01 00
	cmp $000FC0.l		; CF C0 0F 00
	ora $809D00.l		; 0F 00 9D 80
	ora $B800.w		; 0D 00 B8
	ror $7FF9.w,X		; 7E F9 7F
	plx		; FA
	sbc $FDEA.w,X		; FD EA FD
	stp		; DB
	jsr ($BCFB.w,X)		; FC FB BC
	sbc $7A.b,X		; F5 7A
	adc $7FF6.w,Y		; 79 F6 7F
	cop $7C.b		; 02 7C
	brk $FD.b		; 00 FD
	ora ($FD.b,X)		; 01 FD
	ora ($FC.b,X)		; 01 FC
	brk $BC.b		; 00 BC
	brk $7A.b		; 00 7A
	brk $F6.b		; 00 F6
	brk $D8.b		; 00 D8
	and [$DC.b]		; 27 DC
	and $7F.b,S		; 23 7F
	and ($B3.b,X)		; 21 B3
	ldy $FE61.w		; AC 61 FE
	sbc ($5E.b,X)		; E1 5E
	sbc $5C.b,S		; E3 5C
	ldy $C463.w,X		; BC 63 C4
	tsb $C3.b		; 04 C3
	ora $E0.b,S		; 03 E0
	jsr $2C6C.w		; 20 6C 2C
	ldx #$00A2.w		; A2 A2 00
	cpy #$C000.w		; C0 00 C0
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	cop $F4.b		; 02 F4
	phd		; 0B
	inc $19.b		; E6 19
	stx $98.b,Y		; 96 98
	ror A		; 6A
	tsb $0472.w		; 0C 72 04
	stz $06.b,X		; 74 06
	jsr ($2A86.w,X)		; FC 86 2A
	plp		; 28
	and ($30.b,S),Y		; 33 30
	sbc ($E0.b,X)		; E1 E0
	pla		; 68
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	.db $82, $7E, $C3		; 82 7E C3
	trb $3CC1.w		; 1C C1 3C
	sbc ($8F.b,X)		; E1 8F
	adc ($9F.b,X)		; 61 9F
	adc ($06.b),Y		; 71 06
	bmi  14.b		; 30 0E
	sec		; 38
	inc $3C82.w,X		; FE 82 3C
	brk $7E.b		; 00 7E
	rti		; 40

	ora $203E01.l,X		; 1F 01 3E 20
	asl $1F00.w		; 0E 00 1F
	bpl   7.b		; 10 07
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	clc		; 18
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $0300.w,Y		; 79 00 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $000700.l,X		; 1F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $0300.w,Y		; 79 00 03
	bra -128.b		; 80 80
	cpx #$F860.w		; E0 60 F8
	clc		; 18
	ror $0F86.w,X		; 7E 86 0F
	and ($03.b),Y		; 31 03
	tsb $C6.b		; 04 C6
	rol $039C.w,X		; 3E 9C 03
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $FE.b		; 00 FE
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7F003F.l,X		; 3F 3F 00 7F
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	brk $FF.b		; 00 FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $123F0E.l,X		; 1F 0E 3F 12
	rol $7E03.w,X		; 3E 03 7E
	ora ($7F.b,X)		; 01 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $0C.b		; 00 0C
	asl $3200.w,X		; 1E 00 32
	brk $03.b		; 00 03
	bmi  49.b		; 30 31
	jsr $6021.w		; 20 21 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $03.b		; 04 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $09.b,S		; 03 09
	asl $1816.w		; 0E 16 18
	bit $5030.w		; 2C 30 50
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $70.b		; 00 70
	ora $C0B830.l		; 0F 30 B8 C0
	rti		; 40

	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00F800.l,X		; 3F 00 F8 00
	cpy #$E000.w		; C0 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1CC4.w,X		; 3C C4 1C
	dec $38.b		; C6 38
	.db $62, $1C, $62		; 62 1C 62
	tsb $1E62.w		; 0C 62 1E
	and ($1E.b),Y		; 31 1E
	and ($0F.b),Y		; 31 0F
	bmi 120.b		; 30 78
	rti		; 40

	sec		; 38
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	ora $010F01.l		; 0F 01 0F 01
	asl $1F10.w,X		; 1E 10 1F
	and ($0F.b),Y		; 31 0F
	and ($1C.b,X)		; 21 1C
	adc ($3E.b,X)		; 61 3E
	eor ($7E.b,S),Y		; 53 7E
	and $49FE.w,Y		; 39 FE 49
	plx		; FA
	tsb $04FA.w		; 0C FA 04
	asl $3E00.w		; 0E 00 3E
	jsr $2127.w		; 20 27 21
	bpl  16.b		; 10 10
	bmi 120.b		; 30 78
	brk $C8.b		; 00 C8
	brk $0C.b		; 00 0C
	cpy #$1EC4.w		; C0 C4 1E
	.db $62, $1E, $66		; 62 1E 66
	asl $6C.b,X		; 16 6C
	and [$48.b],Y		; 37 48
	and $005F40.l,X		; 3F 40 5F 00
	eor $007F00.l,X		; 5F 00 7F 00
	dec A		; 3A
	jsl $242636.l		; 22 36 26 24
	bit $1A02.w		; 2C 02 1A
	cop $12.b		; 02 12
	cop $22.b		; 02 22
	cop $22.b		; 02 22
	cop $02.b		; 02 02
	and $003E00.l,X		; 3F 00 3E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	inc $7F00.w,X		; FE 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($28.b,X)		; 01 28
	bmi  80.b		; 30 50
	rts		; 60

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1D.b,X)		; 01 1D
	ora $00FF.w,X		; 1D FF 00
	sec		; 38
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	brk $FF.b		; 00 FF
	ora $14FF.w,X		; 1D FF 14
	clc		; 18
	trb $18.b		; 14 18
	clc		; 18
	trb $1C1A.w		; 1C 1A 1C
	inc A		; 1A
	trb $1C1A.w		; 1C 1A 1C
	trb $1C1E.w		; 1C 1E 1C
	asl $3C10.w,X		; 1E 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  62.b		; 10 3E
	clc		; 18
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	rol $3F08.w,X		; 3E 08 3F
	tsb $201E.w		; 0C 1E 20
	asl $FC.b		; 06 FC
	brk $1E.b		; 00 1E
	cpx #$FC92.w		; E0 92 FC
	bit #$FE.b		; 89 FE
	bit $65DF.w		; 2C DF 65
	stz $3F08.w,X		; 9E 08 3F
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	cpx #$FC01.w		; E0 01 FC
	ora ($FE.b,X)		; 01 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	ora $07.b		; 05 07
	ora $07.b,S		; 03 07
	phd		; 0B
	phd		; 0B
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	brk $38.b		; 00 38
	adc $1C.b,S		; 63 1C
	lsr $78.b		; 46 78
	dec $30.b		; C6 30
	sty $F8.b		; 84 F8
	sty $0C78.w		; 8C 78 0C
	cpx #$F00C.w		; E0 0C F0
	tya		; 98
	asl $7802.w,X		; 1E 02 78
	rti		; 40

	bit $FC04.w,X		; 3C 04 FC
	sty $70.b		; 84 70
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	php		; 08
	bra -128.b		; 80 80
	ora [$30.b]		; 07 30
	cop $30.b		; 02 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	cpx #$00C0.w		; E0 C0 00
	sec		; 38
	sec		; 38
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$E060.w		; E0 60 E0
	rts		; 60

	bne  96.b		; D0 60
	cpx #$00FD.w		; E0 FD 00
	sed		; F8
	bmi  -8.b		; 30 F8
	beq  -8.b		; F0 F8
	rts		; 60

	sed		; F8
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq 114.b		; F0 72
	stz $DA24.w		; 9C 24 DA
	sec		; 38
	dec $14.b		; C6 14
	ror $66D4.w		; 6E D4 66
	jmp $9C76.w		; 4C 76 9C
	ror $30.b		; 66 30
	cpy $1C.b		; C4 1C
	brk $9A.b		; 00 9A
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	bra -118.b		; 80 8A
	brk $88.b		; 00 88
	bra  -8.b		; 80 F8
	tsb $8C78.w		; 0C 78 8C
	jsr ($72C0.w,X)		; FC C0 72
	tsb $1CE2.w		; 0C E2 1C
	jsl $0C321C.l		; 22 1C 32 0C
	cpy $0030.w		; CC 30 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $8C.b		; 00 8C
	tsb $1010.w		; 0C 10 10
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0000.w		; C0 00 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora $03.b		; 05 03
	ora [$0B.b]		; 07 0B
	ora $160F07.l		; 0F 07 0F 16
	asl $0D.b,X		; 16 0D
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $07.b		; 00 07
	brk $16.b		; 00 16
	brk $0D.b		; 00 0D
	brk $71.b		; 00 71
	inc $FAF4.w,X		; FE F4 FA
	sbc $FB.b,X		; F5 FB
	pei ($FB.b)		; D4 FB
	ldx $F9.b,Y		; B6 F9
	sbc [$78.b],Y		; F7 78
	xba		; EB
	pea $ECF3.w		; F4 F3 EC
	sbc $F900.w,X		; FD 00 F9
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	ora ($F8.b,X)		; 01 F8
	brk $78.b		; 00 78
	ora ($F4.b,X)		; 01 F4
	ora ($EC.b,X)		; 01 EC
	brk $F1.b		; 00 F1
	lsr $47B8.w		; 4E B8 47
	and $D8A643.l,X		; 3F 43 A6 D8
	adc $DC.b,S		; 63 DC
.INDEX 8
	sep #$DC		; E2 DC
	inc $D8.b		; E6 D8
	adc $88C6.w,Y		; 79 C6 88
	php		; 08
	cmp [$47.b]		; C7 47
	bra   0.b		; 80 00
	ora $4418.w,Y		; 19 18 44
	mvp $C1,$41		; 44 41 C1
	eor ($C1.b,X)		; 41 C1
	brk $C0.b		; 00 C0
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	sed		; F8
	bra -28.b		; 80 E4
	clc		; 18
	cpy $38.b		; C4 38
	mvp $64,$38		; 44 38 64
	clc		; 18
	tya		; 98
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	jsr $8020.w		; 20 20 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $15.b		; 00 15
	xce		; FB
	ora ($FF.b,S),Y		; 13 FF
	phk		; 4B
	lda [$8E.b],Y		; B7 8E
	adc [$9E.b],Y		; 77 9E
	adc [$9A.b]		; 67 9A
	adc [$9B.b]		; 67 9B
	adc [$9F.b]		; 67 9F
	and $FB.b,S		; 23 FB
	brk $FF.b		; 00 FF
	brk $B7.b		; 00 B7
	brk $77.b		; 00 77
	brk $67.b		; 00 67
	brk $67.b		; 00 67
	brk $67.b		; 00 67
	brk $23.b		; 00 23
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	cpy #$7F.b		; C0 7F
	ldy #$91.b		; A0 91
	ora ($A2.b),Y		; 11 A2
	jsl $884444.l		; 22 44 44 88
	dey		; 88
	sta ($91.b),Y		; 91 91
	sbc ($61.b,X)		; E1 61
.ACCU 8
	sep #$22		; E2 22
	lda ($12.b)		; B2 12
	sbc $06FF09.l,X		; FF 09 FF 06
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	pla		; 68
	adc #$56.b		; 69 56
	lsr $91.b,X		; 56 91
	sta ($95.b),Y		; 91 95
	sta $25.b,X		; 95 25
	and $24.b		; 25 24
	bit $24.b		; 24 24
	bit $44.b		; 24 44
	mvp $30,$DE		; 44 DE 30
	sbc [$18.b],Y		; F7 18
	jsr ($F408.w,X)		; FC 08 F4
	php		; 08
	beq  14.b		; F0 0E
	plx		; FA
	tsb $FA.b		; 04 FA
	tsb $FA.b		; 04 FA
	tsb $70.b		; 04 70
	rti		; 40

	cli		; 58
	rti		; 40

	pha		; 48
	rti		; 40

	plp		; 28
	jsr $202E.w		; 20 2E 20
	ldy $A0.b		; A4 A0
	sty $90.b,X		; 94 90
	pei ($D0.b)		; D4 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0700FF.l		; 0F FF 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($03FC.w,X)		; FC FC 03
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($1F00.w,X)		; FC 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq -128.b		; F0 80
	rts		; 60

	cpx #$0B.b		; E0 0B
	pla		; 68
	ora $1B.b,S		; 03 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	rts		; 60

	sed		; F8
	php		; 08
	sbc $FFDF03.l,X		; FF 03 DF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $10.b		; 00 10
	tsb $0C.b		; 04 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -96.b		; 80 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	php		; 08
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $0C00.w		; 0C 00 0C
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $07.b,S		; 03 07
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1B3D2D.l,X		; 1F 2D 3D 1B
	and $1B1B.w,X		; 3D 1B 1B
	and [$1B.b],Y		; 37 1B
	adc [$0F.b],Y		; 77 0F
	adc [$06.b],Y		; 77 06
	adc $2D3E47.l,X		; 7F 47 3E 2D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	brk $D5.b		; 00 D5
	inc $D8E7.w		; EE E7 D8
	lda #$D6.b		; A9 D6
	iny		; C8
	lda [$58.b],Y		; B7 58
	lda [$95.b],Y		; B7 95
	ror A		; 6A
	lda $5C.b,S		; A3 5C
	adc [$D8.b]		; 67 D8
	inc $D800.w		; EE 00 D8
	brk $D6.b		; 00 D6
	asl $B1.b		; 06 B1
	ora ($B0.b,X)		; 01 B0
	brk $68.b		; 00 68
	php		; 08
	eor ($11.b),Y		; 51 11
	rep #$02		; C2 02
	lda ($6E.b),Y		; B1 6E
	cmp ($2E.b),Y		; D1 2E
	xba		; EB
	ora $5B.b,X		; 15 5B
	sta $EF.b		; 85 EF
	ora $EB.b,S		; 03 EB
	ora [$FD.b],Y		; 17 FD
	phd		; 0B
	inc $0805.w,X		; FE 05 08
	inx		; E8
	php		; 08
	pla		; 68
	ora $35.b		; 05 35
	sta $B5.b		; 85 B5
	ora ($3B.b,X)		; 01 3B
	cmp ($D7.b,X)		; C1 D7
	cpx #$EB.b		; E0 EB
	bit $35.b,X		; 34 35
	dey		; 88
	bvs -120.b		; 70 88
	beq -24.b		; F0 E8
	bcc -24.b		; 90 E8
	pei ($F4.b)		; D4 F4
	tya		; 98
	cpx $FA9A.w		; EC 9A FA
	sta $0CFB.w		; 8D FB 0C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	trb $C0.b		; 14 C0
	clc		; 18
	cpy #$1A.b		; C0 1A
	cpy #$0D.b		; C0 0D
	ldy #$0C.b		; A0 0C
	bra -99.b		; 80 9D
	and $1B.b,S		; 23 1B
	lda ($0A.b,X)		; A1 0A
	sta ($09.b),Y		; 91 09
	bpl   5.b		; 10 05
	php		; 08
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	and $00.b,S		; 23 00
	lda ($00.b,X)		; A1 00
	sta ($00.b),Y		; 91 00
	bpl   0.b		; 10 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	bcs -49.b		; B0 CF
	clv		; B8
	lda $D6.b,X		; B5 D6
	lsr A		; 4A
	sbc $9C.b,S		; E3 9C
	adc ($FD.b,X)		; 61 FD
	and ($1D.b,X)		; 21 1D
	eor ($3D.b,X)		; 41 3D
	eor ($AC.b,X)		; 41 AC
	tsb $16B6.w		; 0C B6 16
	wai		; CB
	ora $DD.b,S		; 03 DD
	ora ($7F.b,X)		; 01 7F
	and ($1E.b,X)		; 21 1E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	sta ($18.b,X)		; 81 18
	inc $18.b		; E6 18
	inc $38.b		; E6 38
	dec $39.b		; C6 39
	cmp [$42.b]		; C7 42
	.db $42, $42		; 42 42
	.db $42, $C3		; 42 C3
	cmp $FE.b,S		; C3 FE
	inc $8283.w,X		; FE 83 82
	sta $82.b,S		; 83 82
	sta ($80.b,X)		; 81 80
	bra -128.b		; 80 80
	plx		; FA
	tsb $E8.b		; 04 E8
	asl $CC.b,X		; 16 CC
	and ($2C.b)		; 32 2C
	bmi -44.b		; 30 D4
	clc		; 18
	cpx $08.b		; E4 08
	inx		; E8
	tsb $0CF8.w		; 0C F8 0C
	mvn $66,$50		; 54 50 66
	rts		; 60

	rep #$C0		; C2 C0
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $001FFF.l,X		; FF FF 1F 00
	cpx #$1F.b		; E0 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $0840.w		; 20 40 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora [$00.b],Y		; 17 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bvs   0.b		; 70 00
	trb $0000.w		; 1C 00 00
	rti		; 40

	cpy #$3D.b		; C0 3D
	sta $06021E.l,X		; 9F 1E 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpx $FF04.w		; EC 04 FF
	cop $9F.b		; 02 9F
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	cpy #$3E.b		; C0 3E
	beq  14.b		; F0 0E
	ror $0E00.w,X		; 7E 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	cpy #$F8.b		; C0 F8
	bmi  -2.b		; 30 FE
	asl $00FE.w		; 0E FE 00
	adc $000D00.l,X		; 7F 00 0D 00
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
	cpx #$20.b		; E0 20
	rts		; 60

	asl $36.b,X		; 16 36
	dec $C51E.w		; CE 1E C5
	cmp $F6DD.w		; CD DD F6
	asl $36.b		; 06 36
	cop $06.b		; 02 06
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	asl $76.b		; 06 76
	brk $FE.b		; 00 FE
	cpy #$DD.b		; C0 DD
	mvn $02,$FF		; 54 FF 02
	sbc $103F00.l,X		; FF 00 3F 10
	php		; 08
	bpl   8.b		; 10 08
	cpx #$D0.b		; E0 D0
	sbc #$D9.b		; E9 D9
	cmp $D81ECE.l		; CF CE 1E D8
	cpy #$A0.b		; C0 A0
	bvc -104.b		; 50 98
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	cpy #$F0.b		; C0 F0
	iny		; C8
	sbc $CF08.w,Y		; F9 08 CF
	brk $DE.b		; 00 DE
	bra  -8.b		; 80 F8
	bpl  -4.b		; 10 FC
	ora $0E.b		; 05 0E
	asl $38.b,X		; 16 38
	sei		; 78
	cpx #$E0.b		; E0 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003E00.l		; 0F 00 3E 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00E0E0.l,X		; FF E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	php		; 08
	tsb $3022.w		; 0C 22 30
	tsb $00C0.w		; 0C C0 00
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003E00.l		; 0F 00 3E 00
	jsr ($06C4.w,X)		; FC C4 06
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	tsb $CF.b		; 04 CF
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $F1.b		; 00 F1
	brk $C1.b		; 00 C1
	brk $83.b		; 00 83
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	and ($3E.b)		; 32 3E
	and ($7A.b)		; 32 7A
	rts		; 60

	adc ($60.b,X)		; 61 60
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$D0.b		; C0 D0
	cpy #$90.b		; C0 90
	cpy #$12.b		; C0 12
	inc $FF32.w,X		; FE 32 FF
	jsr $40FF.w		; 20 FF 40
	sbc ($00.b),Y		; F1 00
	cpx #$80.b		; E0 80
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	brk $F0.b		; 00 F0
	bra 126.b		; 80 7E
	beq  15.b		; F0 0F
	jmp ($1F03.w,X)		; 7C 03 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	bvs  -2.b		; 70 FE
	tsb $03FF.w		; 0C FF 03
	adc $001F00.l,X		; 7F 00 1F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $0000FF.l,X		; 1F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00FF00.l,X		; 1F 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bit $2418.w,X		; 3C 18 24
	bit $3E01.w,X		; 3C 01 3E
	eor ($3F.b,X)		; 41 3F
	eor ($EF.b,X)		; 41 EF
	eor #$D3.b		; 49 D3
	adc $BA.b		; 65 BA
	adc $08.b		; 65 08
	and $116700.l,X		; 3F 00 67 11
	eor ($61.b)		; 52 61
	jsr $0041.w		; 20 41 00
	eor ($00.b),Y		; 51 00
	adc $5920.w,Y		; 79 20 59
	brk $3C.b		; 00 3C
	clc		; 18
	jmp $08F618.l		; 5C 18 F6 08
	asl $92E0.w,X		; 1E E0 92
	jsr ($FE89.w,X)		; FC 89 FE
	bit $65DF.w		; 2C DF 65
	stz $3C18.w,X		; 9E 18 3C
	bpl  60.b		; 10 3C
	brk $0C.b		; 00 0C
	cpx #$00.b		; E0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	xce		; FB
	cli		; 58
	cpx $60.b		; E4 60
	bcc -128.b		; 90 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	sbc ($06.b),Y		; F1 06
	sbc #$0E.b		; E9 0E
	sep #$0D		; E2 0D
	cmp ($1D.b)		; D2 1D
	dec $19.b		; C6 19
	lda [$38.b]		; A7 38
	sta $64CA30.l		; 8F 30 CA 64
	jsr ($F404.w,X)		; FC 04 F4
	tsb $F9.b		; 04 F9
	php		; 08
	sbc ($00.b,X)		; E1 00
	sbc ($10.b),Y		; F1 10
	iny		; C8
	brk $E0.b		; 00 E0
	jsr $0084.w		; 20 84 00
	adc ($8C.b),Y		; 71 8C
	adc ($8E.b,S),Y		; 73 8E
	sec		; 38
	dec $39.b		; C6 39
	cmp [$1C.b]		; C7 1C
	sbc $1C.b,S		; E3 1C
	sbc $98.b,S		; E3 98
	adc ($B0.b,X)		; 61 B0
	eor ($87.b,X)		; 41 87
	tsb $81.b		; 04 81
	brk $C3.b		; 00 C3
	cop $C0.b		; 02 C0
	brk $E1.b		; 00 E1
	ora ($E0.b,X)		; 01 E0
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	sei		; 78
	php		; 08
	sed		; F8
	sty $8430.w		; 8C 30 84
	bvs -60.b		; 70 C4
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sed		; F8
	bra  60.b		; 80 3C
	tsb $3C.b		; 04 3C
	cpy $1C.b		; C4 1C
	dec $38.b		; C6 38
	.db $62, $1C, $62		; 62 1C 62
	tsb $1E62.w		; 0C 62 1E
	and ($1E.b),Y		; 31 1E
	and ($0F.b),Y		; 31 0F
	bmi 120.b		; 30 78
	rti		; 40

	sec		; 38
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	ora $010F01.l		; 0F 01 0F 01
	asl $1F10.w,X		; 1E 10 1F
	and ($0F.b),Y		; 31 0F
	and ($1C.b,X)		; 21 1C
	adc ($3E.b,X)		; 61 3E
	eor ($7E.b,S),Y		; 53 7E
	and $49FE.w,Y		; 39 FE 49
	plx		; FA
	tsb $04FA.w		; 0C FA 04
	asl $3E00.w		; 0E 00 3E
	jsr $2127.w		; 20 27 21
	bpl  16.b		; 10 10
	bmi 120.b		; 30 78
	brk $C8.b		; 00 C8
	brk $0C.b		; 00 0C
	cpy #$C4.b		; C0 C4
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	bmi   0.b		; 30 00
	cpy #$00.b		; C0 00
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
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	asl $010F.w		; 0E 0F 01
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora $060F03.l		; 0F 03 0F 06
	ora $061F06.l		; 0F 06 1F 06
	ora $9A90C0.l,X		; 1F C0 90 9A
	bcc -111.b		; 90 91
	txs		; 9A
	sta $1C99.w,Y		; 99 99 1C
	tya		; 98
	tya		; 98
	trb $1C1E.w		; 1C 1E 1C
	asl $801C.w		; 0E 1C 80
	sed		; F8
	bra  -6.b		; 80 FA
	bpl  -5.b		; 10 FB
	bpl -67.b		; 10 BD
	clc		; 18
	ldy $BE18.w,X		; BC 18 BE
	php		; 08
	stz $9E0C.w,X		; 9E 0C 9E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bpl -126.b		; 10 82
	tsb $C0.b		; 04 C0
	sta ($20.b,X)		; 81 20
	rti		; 40

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $87.b		; 00 87
	brk $C1.b		; 00 C1
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	and $15.b		; 25 15
	sec		; 38
	jsr $C4C4.w		; 20 C4 C4
	cpx $64.b		; E4 64
	sta ($61.b,X)		; 81 61
	cpy $00AE.w		; CC AE 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	lda $00BF00.l,X		; BF 00 BF 00
	cpy $78.b		; C4 78
	jsr ($DD1D.w,X)		; FC 1D DD
	ora $00DF.w,X		; 1D DF 00
	brk $40.b		; 00 40
	rti		; 40

	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	jsr $1810.w		; 20 10 18
	clc		; 18
	bne -112.b		; D0 90
	bmi  80.b		; 30 50
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bvs -16.b		; 70 F0
	bpl -16.b		; 10 F0
	brk $70.b		; 00 70
	php		; 08
	clc		; 18
	bcc -48.b		; 90 D0
	bcc -16.b		; 90 F0
	phy		; 5A
	sta $B9.b		; 85 B9
	mvp $C4,$B2		; 44 B2 C4
	xce		; FB
	cmp $718CB7.l		; CF B7 8C 71
	sty $8A64.w		; 8C 64 8A
	ror $99.b,X		; 76 99
	clv		; B8
	brk $3A.b		; 00 3A
	cop $F9.b		; 02 F9
	eor ($B0.b,X)		; 41 B0
	brk $FB.b		; 00 FB
	php		; 08
	adc [$04.b],Y		; 77 04
	adc ($02.b,S),Y		; 73 02
	adc ($01.b,X)		; 61 01
	lda $124E.w,Y		; B9 4E 12
	jmp ($601E.w)		; 6C 1E 60
	txa		; 8A
	bit $E8.b,X		; 34 E8
	and ($A4.b)		; 32 A4
	tsx		; BA
	cpy $1832.w		; CC 32 18
	.db $62, $0E, $00		; 62 0E 00
	cpy $C040.w		; CC 40 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpy $00.b		; C4 00
	mvp $C4,$40		; 44 40 C4
	brk $C4.b		; 00 C4
	rti		; 40

	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $123F0E.l,X		; 1F 0E 3F 12
	rol $7E03.w,X		; 3E 03 7E
	ora ($7F.b,X)		; 01 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $0C.b		; 00 0C
	asl $3200.w,X		; 1E 00 32
	brk $03.b		; 00 03
	bmi  49.b		; 30 31
	jsr $6021.w		; 20 21 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	and $003F00.l,X		; 3F 00 3F 00
	adc $007E00.l,X		; 7F 00 7E 00
	ror $FC00.w,X		; 7E 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	ora $001F00.l		; 0F 00 1F 00
	ora $003E00.l,X		; 1F 00 3E 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	phd		; 0B
	bit $702E.w,X		; 3C 2E 70
	cld		; D8
	cpx #$60.b		; E0 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	ror $F800.w,X		; 7E 00 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $000F.w		; 0C 0F 00
	tsb $0003.w		; 0C 03 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $34.b		; 00 34
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	ora $00007F.l		; 0F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $01FEFE.l,X		; FF FE FE 01
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sei		; 78
	cpy #$3E.b		; C0 3E
	sei		; 78
	ora $0F013E.l		; 0F 3E 01 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	sed		; F8
	sec		; 38
	inc $FF0E.w,X		; FE 0E FF
	ora ($7F.b,X)		; 01 7F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $07.b		; 04 07
	bmi  60.b		; 30 3C
	cmp $F0.b,S		; C3 F0
	tsb $30C0.w		; 0C C0 30
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	and $00FF00.l,X		; 3F 00 FF 00
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
	ror $7F00.w,X		; 7E 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $13.b		; 00 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc 115.b		; 90 73
	ora ($20.b,X)		; 01 20
	jsr $3060.w		; 20 60 30
	ora ($08.b),Y		; 11 08
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b],Y		; F7 00
	and [$00.b],Y		; 37 00
	cpx #$00.b		; E0 00
	adc ($00.b),Y		; 71 00
	and $1E00.w,Y		; 39 00 1E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	tay		; A8
	jsr $B0D0.w		; 20 D0 B0
	bpl  32.b		; 10 20
	bra -128.b		; 80 80
	rti		; 40

	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tay		; A8
	bpl -16.b		; 10 F0
	brk $B0.b		; 00 B0
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003E00.l,X		; 3F 00 3E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	sei		; 78
	brk $5E.b		; 00 5E
	bne  79.b		; D0 4F
	jmp $00130F.l		; 5C 0F 13 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	bvc  -2.b		; 50 FE
	php		; 08
	sbc $003F03.l,X		; FF 03 3F 00
	ora $000300.l,X		; 1F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq -114.b		; F0 8E
	lsr $8CF8.w		; 4E F8 8C
	jmp ($19F0.w,X)		; 7C F0 19
	jmp ($1B02.w,X)		; 7C 02 1B
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	asl $88CE.w		; 0E CE 88
	jsr ($FC70.w,X)		; FC 70 FC
	clc		; 18
	sbc $7F02.w,X		; FD 02 7F
	cop $1B.b		; 02 1B
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $0B.b		; 05 0B
	php		; 08
	ora [$16.b],Y		; 17 16
	and $5D2E.w		; 2D 2E 5D
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $17.b		; 00 17
	brk $2D.b		; 00 2D
	brk $5D.b		; 00 5D
	brk $3C.b		; 00 3C
	cpy $3C.b		; C4 3C
	cpy $D82C.w		; CC 2C D8
	ror $7E90.w		; 6E 90 7E
	bra -66.b		; 80 BE
	brk $BE.b		; 00 BE
	brk $FE.b		; 00 FE
	brk $74.b		; 00 74
	mvp $4C,$6C		; 44 6C 4C
	pha		; 48
	cli		; 58
	tsb $34.b		; 04 34
	tsb $24.b		; 04 24
	tsb $44.b		; 04 44
	tsb $44.b		; 04 44
	tsb $04.b		; 04 04
	inc $7F00.w,X		; FE 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
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
	brk $38.b		; 00 38
	adc $1C.b,S		; 63 1C
	lsr $78.b		; 46 78
	dec $30.b		; C6 30
	sty $F8.b		; 84 F8
	sty $0C78.w		; 8C 78 0C
	cpx #$0C.b		; E0 0C
	beq -104.b		; F0 98
	asl $7802.w,X		; 1E 02 78
	rti		; 40

	bit $FC04.w,X		; 3C 04 FC
	sty $70.b		; 84 70
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	php		; 08
	bra -128.b		; 80 80
	ora [$30.b]		; 07 30
	cop $30.b		; 02 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	tsb $07.b		; 04 07
	tsb $0803.w		; 0C 03 08
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $0DE208.l		; 0F 08 E2 0D
	cmp ($1D.b)		; D2 1D
	cpy $1B.b		; C4 1B
	ldy $3B.b		; A4 3B
	sty $4C33.w		; 8C 33 4C
	adc $0D.b,S		; 63 0D
	.db $62, $87, $C0		; 62 87 C0
	sbc $E908.w,Y		; F9 08 E9
	php		; 08
	sbc ($10.b,S),Y		; F3 10
	cmp $00.b,S		; C3 00
	sbc $20.b,S		; E3 20
	sta $00.b,S		; 83 00
	rep #$40		; C2 40
	brk $00.b		; 00 00
	adc $98.b,S		; 63 98
	adc [$9C.b]		; 67 9C
	adc ($8C.b),Y		; 71 8C
	adc ($8E.b,S),Y		; 73 8E
	sed		; F8
	asl $F1.b		; 06 F1
	ora [$60.b]		; 07 60
	ora $60.b,S		; 03 60
	ora $8F.b,S		; 03 8F
	php		; 08
	sta $00.b,S		; 83 00
	sta [$04.b]		; 87 04
	sta ($00.b,X)		; 81 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bcc  32.b		; 90 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	beq  16.b		; F0 10
	beq  24.b		; F0 18
	rts		; 60

	php		; 08
	cpx #$88.b		; E0 88
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sei		; 78
	php		; 08
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	dec $E18E.w		; CE 8E E1
	cmp ($B4.b,X)		; C1 B4
	ldy $05.b,X		; B4 05
	and $09.b,X		; 35 09
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	asl $86.b		; 06 86
	.db $82, $EE, $C0		; 82 EE C0
	sbc $FF34.w,X		; FD 34 FF
	ora $FF.b		; 05 FF
	ora #$7F.b		; 09 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	cli		; 58
	cli		; 58
	rti		; 40

	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	cpy #$18.b		; C0 18
	tya		; 98
	tya		; 98
	cld		; D8
	rti		; 40

	sed		; F8
	rti		; 40

	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	beq 112.b		; F0 70
	bvs -12.b		; 70 F4
	bvs -12.b		; 70 F4
	cpx $E4.b		; E4 E4
	cpx $E4.b		; E4 E4
	cpx $E4.b		; E4 E4
	cpx $CCEC.w		; EC EC CC
	cpx $FC20.w		; EC 20 FC
	jsr $60FC.w		; 20 FC 60
	inc $FE60.w,X		; FE 60 FE
	cpx $FE.b		; E4 FE
	cpy $FE.b		; C4 FE
	cpy $88FE.w		; CC FE 88
	inc $0B07.w,X		; FE 07 0B
	ora $0F.b,S		; 03 0F
	phd		; 0B
	ora [$0B.b]		; 07 0B
	ora [$09.b]		; 07 09
	ora [$09.b]		; 07 09
	ora [$0B.b]		; 07 0B
	ora $0A.b		; 05 0A
	ora $0B.b		; 05 0B
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $B7.b		; 00 B7
	cld		; D8
	sta $F09FF0.l,X		; 9F F0 9F F0
	cmp $B8D7B0.l,X		; DF B0 D7 B8
	stp		; DB
	ldy $F7.b,X		; B4 F7
	tya		; 98
	sbc $9A.b,X		; F5 9A
	dec $F806.w,X		; DE 06 F8
	php		; 08
	sed		; F8
	php		; 08
	lda $05.b,X		; B5 05
	ldx $B606.w,Y		; BE 06 B6
	cop $9A.b		; 02 9A
	cop $9B.b		; 02 9B
	ora ($00.b,X)		; 01 00
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
	brk $01.b		; 00 01
	brk $14.b		; 00 14
	ora $242F14.l		; 0F 14 2F 24
	ora $485D2A.l,X		; 1F 2A 5D 48
	and $B0BB54.l,X		; 3F 54 BB B0
	adc $0F77AA.l,X		; 7F AA 77 0F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $5D.b		; 00 5D
	brk $3F.b		; 00 3F
	brk $BB.b		; 00 BB
	brk $7F.b		; 00 7F
	brk $77.b		; 00 77
	brk $EC.b		; 00 EC
	cmp $D326.w,Y		; D9 26 D3
	jmp.w [$C933]		; DC 33 C9
	jsl $9827FD.l		; 22 FD 27 98
	eor [$B0.b]		; 47 B0
	eor [$FF.b]		; 47 FF
	eor $DC01C7.l		; 4F C7 01 DC
	bpl  14.b		; 10 0E
	cop $3D.b		; 02 3D
	jsr $0018.w		; 20 18 00
	and $7805.w,X		; 3D 05 78
	rti		; 40

	bmi   0.b		; 30 00
	tay		; A8
	phx		; DA
	inc $53.b		; E6 53
	cpy $5E61.w		; CC 61 5E
	adc ($AE.b),Y		; 71 AE
	cmp ($46.b),Y		; D1 46
	lda ($F4.b),Y		; B1 F4
	ora #$F2.b		; 09 F2
	phd		; 0B
	asl $02.b		; 06 02
	stz $BE10.w		; 9C 10 BE
	brk $AE.b		; 00 AE
	brk $1E.b		; 00 1E
	bpl  46.b		; 10 2E
	brk $0E.b		; 00 0E
	php		; 08
	tsb $00.b		; 04 00
	bit $3DDB.w,X		; 3C DB 3D
	dex		; CA
	sbc $C73B05.l,X		; FF 05 3B C7
	ora $1BE3.w,X		; 1D E3 1B
	sbc ($F9.b,X)		; E1 F9
	tsb $FE.b		; 04 FE
	cop $C8.b		; 02 C8
	clc		; 18
	cpy #$18.b		; C0 18
	ora ($0D.b,X)		; 01 0D
	cmp ($CF.b,X)		; C1 CF
	jsr $0027.w		; 20 27 00
	ora $946F68.l		; 0F 68 6F 94
	sta [$A3.b],Y		; 97 A3
	eor $EB77.w,X		; 5D 77 EB
	sbc $F7E3F3.l		; EF F3 E3 F7
	cmp $F7.b,S		; C3 F7
	cmp [$F7.b]		; C7 F7
	cmp [$E3.b]		; C7 E3
	sbc $400151.l		; EF 51 01 40
	ora $E0.b,S		; 03 E0
	cmp $F0.b,S		; C3 F0
	cmp [$F8.b]		; C7 F8
	cmp [$F8.b]		; C7 F8
	cmp [$F8.b]		; C7 F8
	eor [$FC.b]		; 47 FC
	phd		; 0B
	plx		; FA
	asl $0718.w		; 0E 18 07
	ora ($1E.b),Y		; 11 1E
	and ($0C.b),Y		; 31 0C
	and ($3E.b,X)		; 21 3E
	adc $1E.b,S		; 63 1E
	eor $38.b,S		; 43 38
	cmp $7C.b,S		; C3 7C
	ldx $07.b		; A6 07
	brk $1E.b		; 00 1E
	bpl  15.b		; 10 0F
	ora ($3F.b,X)		; 01 3F
	and ($1C.b,X)		; 21 1C
	brk $7C.b		; 00 7C
	rti		; 40

	lsr $2042.w		; 4E 42 20
	jsr $C006.w		; 20 06 C0
	asl $80.b		; 06 80
	tsb $80.b		; 04 80
	tsb $00.b		; 04 00
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
	rti		; 40

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
	brk $78.b		; 00 78
	dey		; 88
	sec		; 38
	sty $C470.w		; 8C 70 C4
	sec		; 38
	cpy $18.b		; C4 18
	cpy $3C.b		; C4 3C
	.db $62, $3C, $62		; 62 3C 62
	asl $F060.w,X		; 1E 60 F0
	bra 112.b		; 80 70
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	bit $1E04.w,X		; 3C 04 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $0202.w		; 20 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $3FDE.w,X		; DE DE 3F
	and $3D3E3F.l,X		; 3F 3F 3E 3D
	bit $3838.w,X		; 3C 38 38
	bvc  56.b		; 50 38
	rti		; 40

	sec		; 38
	jsr $0C70.w		; 20 70 0C
	sbc $1CFF1E.l,X		; FF 1E FF 1C
	sbc $007F18.l,X		; FF 18 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	jmp ($FC00.w,X)		; 7C 00 FC
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	adc $E63980.l,X		; 7F 80 39 E6
	ror $ED.b,X		; 76 ED
	sbc ($C9.b)		; F2 C9
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	sep #$00		; E2 00
	cmp $ECC809.l		; CF 09 C8 EC
	bcs  64.b		; B0 40
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $50.b		; 00 50
	ldx $8E74.w		; AE 74 8E
	php		; 08
	inc $4E00.w,X		; FE 00 4E
	brk $02.b		; 00 02
	stx $86.b		; 86 86
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	php		; 08
	asl A		; 0A
	ora $05.b		; 05 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	bit #$DE.b		; 89 DE
	sta $8F51.w		; 8D 51 8F
	pha		; 48
	stx $CD.b		; 86 CD
	cop $C7.b		; 02 C7
	cop $41.b		; 02 41
	tsb $43.b		; 04 43
	tsb $88.b		; 04 88
	brk $8D.b		; 00 8D
	ora ($8C.b,X)		; 01 8C
	brk $85.b		; 00 85
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora $03.b		; 05 03
	ora $01.b		; 05 01
	ora [$05.b]		; 07 05
	phd		; 0B
	ora [$0B.b]		; 07 0B
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $6A.b		; 00 6A
	sbc [$66.b],Y		; F7 66
	sbc $CDFFEE.l,X		; FF EE FF CD
	inc $FEC9.w,X		; FE C9 FE
	stp		; DB
	jsr ($DBB4.w,X)		; FC B4 DB
	lda $F7D6.w,Y		; B9 D6 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $DA.b		; 00 DA
	cop $D5.b		; 02 D5
	ora $34.b		; 05 34
	dey		; 88
	adc $8C.b,S		; 63 8C
	lda $E816.w,Y		; B9 16 E8
	eor [$90.b],Y		; 57 90
	eor $5868B7.l		; 4F B7 68 58
	lda [$78.b],Y		; B7 78
	sta [$FB.b],Y		; 97 FB
	php		; 08
	pea $6204.w		; F4 04 62
	cop $31.b		; 02 31
	ora ($60.b),Y		; 11 60
	rti		; 40

	brk $00.b		; 00 00
	sta [$37.b],Y		; 97 37
	bcc  48.b		; 90 30
	sei		; 78
	asl $FC.b		; 06 FC
	cop $F2.b		; 02 F2
	tsb $0DF2.w		; 0C F2 0D
	sta ($0C.b,S),Y		; 93 0C
	sta $6606.w,Y		; 99 06 66
	sta $9D63.w,Y		; 99 63 9D
	stx $06.b		; 86 06
	cpy #$00.b		; C0 00
	php		; 08
	php		; 08
	ora #$08.b		; 09 08
	rts		; 60

	rts		; 60

	.db $62, $60, $09		; 62 60 09
	php		; 08
	ora $04.b		; 05 04
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	rol $27.b		; 26 27
	eor #$49.b		; 49 49
	bit #$89.b		; 89 89
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	jsl $222222.l		; 22 22 22 22
	.db $42, $42		; 42 42
	adc $C0FF21.l,X		; 7F 21 FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	tas		; 1B
	plx		; FA
	adc $F5.b,X		; 75 F5
	cmp $D5.b,X		; D5 D5
	eor ($52.b)		; 52 52
	lsr A		; 4A
	lsr A		; 4A
	eor #$49.b		; 49 49
	eor #$49.b		; 49 49
	eor $45.b		; 45 45
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$80.b		; E0 80
	beq -64.b		; F0 C0
	bit $0EF0.w,X		; 3C F0 0E
	sec		; 38
	ora [$1E.b]		; 07 1E
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	bmi  -4.b		; 30 FC
	php		; 08
	inc $7F06.w,X		; FE 06 7F
	ora ($1F.b,X)		; 01 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$80.b		; E0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cmp ($F0.b),Y		; D1 F0
	sbc [$32.b],Y		; F7 32
	adc $0E0C.w		; 6D 0C 0E
	asl $18.b		; 06 18
	tsb $0000.w		; 0C 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F9.b		; 00 F9
	bmi  -1.b		; 30 FF
	brk $FD.b		; 00 FD
	ora [$7F.b]		; 07 7F
	ora $3B.b,S		; 03 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -80.b		; 10 B0
	inc $077E.w,X		; FE 7E 07
	ora [$03.b]		; 07 03
	ora ($42.b,X)		; 01 42
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	beq  22.b		; F0 16
	inc $5F01.w,X		; FE 01 5F
	sta ($87.b,X)		; 81 87
	bra -61.b		; 80 C3
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	ora $030100.l,X		; 1F 00 01 03
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	tsb $080C.w		; 0C 0C 08
	php		; 08
	php		; 08
	php		; 08
	beq -56.b		; F0 C8
	beq  72.b		; F0 48
	bne  96.b		; D0 60
	bne  32.b		; D0 20
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3CC4.w,X		; 3C C4 3C
	cpy $D82C.w		; CC 2C D8
	ror $7E90.w		; 6E 90 7E
	bra -66.b		; 80 BE
	brk $BE.b		; 00 BE
	brk $FE.b		; 00 FE
	brk $74.b		; 00 74
	mvp $4C,$6C		; 44 6C 4C
	pha		; 48
	cli		; 58
	tsb $34.b		; 04 34
	tsb $24.b		; 04 24
	tsb $44.b		; 04 44
	tsb $44.b		; 04 44
	tsb $04.b		; 04 04
	inc $7F00.w,X		; FE 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$60.b		; C0 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	ora $001F00.l,X		; 1F 00 1F 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
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
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $0A.b		; 05 0A
	ora #$06.b		; 09 06
	php		; 08
	ora [$07.b],Y		; 17 07
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0A.b		; 00 0A
	brk $06.b		; 00 06
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	rti		; 40

	trb $0E50.w		; 1C 50 0E
	sec		; 38
	ora $14.b		; 05 14
	brk $05.b		; 00 05
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	beq  16.b		; F0 10
	jsr ($FE08.w,X)		; FC 08 FE
	tsb $7F.b		; 04 7F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	trb $0200.w		; 1C 00 02
	asl $0000.w		; 0E 00 00
	tsb $08.b		; 04 08
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $1F.b,S		; 03 1F
	brk $1E.b		; 00 1E
	brk $16.b		; 00 16
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	asl $52.b,X		; 16 52
	sta $C9.b		; 85 C9
	tsb $3F30.w		; 0C 30 3F
	asl $02.b,X		; 16 02
	tsb $10.b		; 04 10
	bmi  16.b		; 30 10
	brk $F0.b		; 00 F0
	jsr $D690.w		; 20 90 D6
	lda ($BD.b),Y		; B1 BD
	brk $FC.b		; 00 FC
	asl $7F.b		; 06 7F
	brk $16.b		; 00 16
	bpl  48.b		; 10 30
	brk $10.b		; 00 10
	jsr $1FF0.w		; 20 F0 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $18.b		; 00 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	jsr $2020.w		; 20 20 20
	jsr $6060.w		; 20 60 60
	rti		; 40

	rti		; 40

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
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$A0.b		; A0 A0
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	inx		; E8
	inx		; E8
	pea $F4F8.w		; F4 F8 F4
	sty $CCF2.w		; 8C F2 CC
	sbc ($E6.b)		; F2 E6
	sed		; F8
	inc $F9.b,X		; F6 F9
	sbc [$F8.b],Y		; F7 F8
	inx		; E8
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $F2.b		; 00 F2
	brk $F2.b		; 00 F2
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	brk $F8.b		; 00 F8
	brk $DB.b		; 00 DB
	jsr ($FCDB.w,X)		; FC DB FC
	wai		; CB
	jsr ($7CCB.w,X)		; FC CB 7C
	cmp ($7E.b,X)		; C1 7E
	sbc ($5E.b,X)		; E1 5E
	cpx #$5F.b		; E0 5F
.INDEX 8
	sep #$5C		; E2 5C
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	bra  -2.b		; 80 FE
	bra -34.b		; 80 DE
	bra  95.b		; 80 5F
	brk $5C.b		; 00 5C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  95.b		; 80 5F
	rts		; 60

	lda $3C.b,S		; A3 3C
	cmp ($1E.b,X)		; C1 1E
	cmp ($1E.b),Y		; D1 1E
	cmp ($1D.b)		; D2 1D
	cmp ($1D.b)		; D2 1D
	cpy $C4.b		; C4 C4
	stz $64.b		; 64 64
	ldy $DB3C.w,X		; BC 3C DB
	tas		; 1B
	sed		; F8
	clc		; 18
	inx		; E8
	php		; 08
	sbc #$08.b		; E9 08
	sbc #$08.b		; E9 08
	inc $FC01.w,X		; FE 01 FC
	ora $F8.b,S		; 03 F8
	ora [$F2.b]		; 07 F2
	ora ($8D.b,S),Y		; 13 8D
	adc ($8E.b,X)		; 61 8E
	rts		; 60

	stx $9F60.w		; 8E 60 9F
	bvs  70.b		; 70 46
	lsr $44.b		; 46 44
	mvp $5E,$5E		; 44 5E 5E
	sbc $3EE1.w		; ED E1 3E
	jsr $203F.w		; 20 3F 20
	ora $000F00.l,X		; 1F 00 0F 00
.INDEX 8
	sep #$5C		; E2 5C
	cpx $1A.b		; E4 1A
	cpx $FC10.w		; EC 10 FC
	brk $78.b		; 00 78
	bra 112.b		; 80 70
	dey		; 88
	bcs -64.b		; B0 C0
	bcs -64.b		; B0 C0
	jmp $001A00.l		; 5C 00 1A 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	cpy #$38.b		; C0 38
	bvs  12.b		; 70 0C
	sec		; 38
	ora [$1E.b]		; 07 1E
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	bmi  -4.b		; 30 FC
	php		; 08
	inc $7F06.w,X		; FE 06 7F
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	sec		; 38
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$C0.b		; E0 C0
	beq  48.b		; F0 30
	jsr ($380C.w,X)		; FC 0C 38
	ora [$1E.b]		; 07 1E
	brk $06.b		; 00 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	inc $7F06.w,X		; FE 06 7F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	ora [$03.b]		; 07 03
	ora $000F04.l		; 0F 04 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	ora ($01.b,X)		; 01 01
	ora $07.b,S		; 03 07
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	tsb $080C.w		; 0C 0C 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	cpx #$30.b		; E0 30
	cpx #$90.b		; E0 90
	cpx #$90.b		; E0 90
	ldy #$C0.b		; A0 C0
	ldy #$40.b		; A0 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $C0.b		; C4 C0
	dey		; 88
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	jsr $4000.w		; 20 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy $80.b		; C4 80
	iny		; C8
	brk $90.b		; 00 90
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	tsb $02.b		; 04 02
	tsb $0E.b		; 04 0E
	clc		; 18
	clc		; 18
	brk $40.b		; 00 40
	rts		; 60

	rts		; 60

	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	php		; 08
	ror $FC00.w,X		; 7E 00 FC
	brk $E0.b		; 00 E0
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	jsr $4020.w		; 20 20 40
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	tsb $090C.w		; 0C 0C 09
	ora #$12.b		; 09 12
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	asl $04.b		; 06 04
	tsb $0D08.w		; 0C 08 0D
	cop $1B.b		; 02 1B
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	tsb $0B.b		; 04 0B
	ora #$06.b		; 09 06
	phd		; 0B
	trb $17.b		; 14 17
	php		; 08
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $06.b		; 00 06
	brk $14.b		; 00 14
	brk $08.b		; 00 08
	brk $87.b		; 00 87
	sei		; 78
	sta [$FA.b]		; 87 FA
	ora $E81EF4.l		; 0F F4 1E E8
	adc $F991.w,X		; 7D 91 F9
	jsl $1F0CF3.l		; 22 F3 0C 1F
	cpy #$78.b		; C0 78
	brk $F9.b		; 00 F9
	brk $F3.b		; 00 F3
	brk $E7.b		; 00 E7
	brk $8E.b		; 00 8E
	brk $1E.b		; 00 1E
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	cpx #$01.b		; E0 01
	asl $03.b		; 06 03
	tsb $0B16.w		; 0C 16 0B
	and $0F3A07.l,X		; 3F 07 3A 0F
	sei		; 78
	ora $F50F70.l		; 0F 70 0F F5
	asl A		; 0A
	asl $00.b		; 06 00
	tsb $0B00.w		; 0C 00 0B
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	rti		; 40

	ora [$F8.b]		; 07 F8
	stz $FF.b		; 64 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	wai		; CB
	adc [$99.b],Y		; 77 99
	adc [$AE.b]		; 67 AE
	eor ($00.b,S),Y		; 53 00
	brk $40.b		; 00 40
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $77.b		; 00 77
	brk $67.b		; 00 67
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	jsr $30AF.w		; 20 AF 30
	eor $B662.w,X		; 5D 62 B6
	cmp #$EE.b		; C9 EE
	ora $3DDE.w,X		; 1D DE 3D
	ldx $BC7D.w,Y		; BE 7D BC
	tda		; 7B
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	.db $82, $02, $01		; 82 02 01
	ora #$04.b		; 09 04
	trb $3C0C.w		; 1C 0C 3C
	trb $187C.w		; 1C 7C 18
	sei		; 78
	and $98C1.w,Y		; 39 C1 98
	rts		; 60

	jmp.w [$FE00]		; DC 00 FE
	jsr $827C.w		; 20 7C 82
	plp		; 28
	cpy $28.b		; C4 28
	cmp ($31.b,X)		; C1 31
	cmp $00.b,S		; C3 00
	ora $40.b,S		; 03 40
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $82.b		; 00 82
	sta $54.b,S		; 83 54
	lsr $10.b,X		; 56 10
	ora [$01.b],Y		; 17 01
	ora $0B0305.l		; 0F 05 03 0B
	asl $17.b		; 06 17
	tsb $182E.w		; 0C 2E 18
	cli		; 58
	bvc -32.b		; 50 E0
	cpx #$61.b		; E0 61
	cmp ($9B.b,X)		; C1 9B
	lda $01.b,S		; A3 01
	ora $041F02.l		; 0F 02 1F 04
	and $107E08.l,X		; 3F 08 7E 10
	sed		; F8
	rts		; 60

	sbc ($41.b,X)		; E1 41
	sbc $83.b,S		; E3 83
	sta [$C0.b]		; 87 C0
	trb $1884.w		; 1C 84 18
	bpl  24.b		; 10 18
	sec		; 38
	bmi  96.b		; 30 60
	bvs -16.b		; 70 F0
	cpx #$C0.b		; E0 C0
	cpx #$A0.b		; E0 A0
	cpy #$00.b		; C0 00
	dec $9C00.w,X		; DE 00 9C
	bpl  60.b		; 10 3C
	bmi 120.b		; 30 78
	rts		; 60

	sed		; F8
	cpy #$F0.b		; C0 F0
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	and [$1B.b],Y		; 37 1B
	rol $1B.b,X		; 36 1B
	rol $0C13.w,X		; 3E 13 0C
	ora ($1A.b,S),Y		; 13 1A
	ora ($1B.b,X)		; 01 1B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	bne  79.b		; D0 4F
	bcs -34.b		; B0 DE
	jsr $01FC.w		; 20 FC 01
	sed		; F8
	ora $F3.b,S		; 03 F3
	ora [$87.b]		; 07 87
	asl $1C0F.w		; 0E 0F 1C
	pei ($14.b)		; D4 14
	lda #$29.b		; A9 29
	bpl  17.b		; 10 11
	jsr $4023.w		; 20 23 40
	eor [$83.b]		; 47 83
	sta $0CBF86.l		; 8F 86 BF 0C
	ror $003F.w,X		; 7E 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	ror $7E00.w,X		; 7E 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
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
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0E.b]		; 07 0E
	ora $391D1D.l		; 0F 1D 1D 39
	dec A		; 3A
	ror $76.b		; 66 76
	dec $00.b		; C6 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $0D1F06.l		; 0F 06 1F 0D
	and $227D19.l,X		; 3F 19 7D 22
	inc $F646.w,X		; FE 46 F6
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bra -96.b		; 80 A0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	eor ($A1.b,X)		; 41 A1
	brk $E0.b		; 00 E0
	eor ($A1.b,X)		; 41 A1
	.db $42, $A2		; 42 A2
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$01.b		; A0 01
	cpx #$01.b		; E0 01
	ldy #$03.b		; A0 03
	ldy #$07.b		; A0 07
	bit $24.b		; 24 24
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $36.b		; 04 36
	php		; 08
	bit $5810.w		; 2C 10 58
	jsr $40B0.w		; 20 B0 40
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	ora $16.b		; 05 16
	plp		; 28
	asl $29.b,X		; 16 29
	asl $38.b		; 06 38
	and ($1C.b,S),Y		; 33 1C
	and ($1E.b),Y		; 31 1E
	and ($1F.b)		; 32 1F
	bit $1F.b,X		; 34 1F
	ora $281E.w		; 0D 1E 28
	ora ($28.b,X)		; 01 28
	ora ($38.b,X)		; 01 38
	ora ($1C.b,X)		; 01 1C
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $E7.b		; 00 E7
	beq  -7.b		; F0 F9
	jsr ($FF7E.w,X)		; FC 7E FF
	eor $07EB3F.l,X		; 5F 3F EB 07
	and ($CC.b)		; 32 CC
	eor ($EE.b),Y		; 51 EE
	phb		; 8B
	pea $F840.w		; F4 40 F8
	beq  -2.b		; F0 FE
	bit $0FFF.w,X		; 3C FF 0F
	sbc $C81F00.l,X		; FF 00 1F C8
	ora #$E8.b		; 09 E8
	php		; 08
	sbc ($01.b),Y		; F1 01
	sbc ($28.b)		; F2 28
	ror $EA.b,X		; 76 EA
	cmp #$F7.b		; C9 F7
	eor $BEB3.w,Y		; 59 B3 BE
	eor ($7D.b,X)		; 41 7D
	.db $82, $FE, $03		; 82 FE 03
	sbc $002D01.l,X		; FF 01 2D 00
	sbc $F200.w		; ED 00 F2
	cop $B4.b		; 02 B4
	tsb $41.b		; 04 41
	ora ($98.b,X)		; 01 98
	clc		; 18
	sbc ($E1.b,X)		; E1 E1
	brk $00.b		; 00 00
	ldy $9B.b		; A4 9B
	lsr $18.b		; 46 18
	sep #$CC		; E2 CC
	plx		; FA
	tsb $2C6A.w		; 0C 6A 2C
	bit $88.b,X		; 34 88
	bra  88.b		; 80 58
	cli		; 58
	ldy #$D3.b		; A0 D3
	bne -80.b		; D0 B0
	bmi  48.b		; 30 30
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	bpl -16.b		; 10 F0
	bra 112.b		; 80 70
	bvc -128.b		; 50 80
	sta ($9F.b,X)		; 81 9F
	sec		; 38
	jmp.w [$443B]		; DC 3B 44
	tas		; 1B
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $D57DBD.l,X		; FF BD 7D D5
	ora $F4.b,X		; 15 F4
	trb $08.b		; 14 08
	sei		; 78
	asl A		; 0A
	dec A		; 3A
	cop $BA.b		; 02 BA
	jsr ($7EFF.w,X)		; FC FF 7E
	sbc $15FF3D.l,X		; FF 3D FF 15
	and $E3BF90.l,X		; 3F 90 BF E3
	asl $DC07.w		; 0E 07 DC
	asl $1FB9.w		; 0E B9 1F
	bvs 115.b		; 70 73
	adc $555F63.l		; 6F 63 5F 55
	pld		; 2B
	cmp $1F027D.l,X		; DF 7D 02 1F
	tsb $3F.b		; 04 3F
	php		; 08
	adc $61FE10.l,X		; 7F 10 FE 61
	sbc $0BFB47.l,X		; FF 47 FB 0B
	sbc ($0D.b),Y		; F1 0D
	sed		; F8
	xce		; FB
	ora $BA.b,S		; 03 BA
	ora $CF.b,S		; 03 CF
	cpy #$DE.b		; C0 DE
	beq -49.b		; F0 CF
	bmi -32.b		; 30 E0
	bra -80.b		; 80 B0
	rts		; 60

	cli		; 58
	bcs 106.b		; B0 6A
	sta $388F68.l		; 8F 68 8F 38
	wai		; CB
	stz $E5.b		; 64 E5
	bpl  16.b		; 10 10
	bra -128.b		; 80 80
	rts		; 60

	brk $B0.b		; 00 B0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $0D.b		; 02 0D
	brk $18.b		; 00 18
	tsb $1878.w		; 0C 78 18
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3C.b		; 00 3C
	brk $FC.b		; 00 FC
	ora $202F28.l		; 0F 28 2F 20
	eor $97F4C8.l		; 4F C8 F4 97
	lsr A		; 4A
	and $1C.b,S		; 23 1C
	and ($3D.b,X)		; 21 3D
	and ($1D.b,X)		; 21 1D
	eor ($08.b,X)		; 41 08
	jsr ($F820.w,X)		; FC 20 F8
	eor [$F7.b]		; 47 F7
	phb		; 8B
	sbc $1D.b,S		; E3 1D
	eor ($3F.b,X)		; 41 3F
	and ($1E.b,X)		; 21 1E
	brk $3E.b		; 00 3E
	brk $AB.b		; 00 AB
	jsr $511F.w		; 20 1F 51
	and $C07FE6.l,X		; 3F E6 7F C0
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	bra  -1.b		; 80 FF
	ora ($FF.b),Y		; 11 FF
	and [$FF.b]		; 27 FF
	eor [$F7.b]		; 47 F7
	sty $E4.b		; 84 E4
	mvp $44,$C4		; 44 C4 44
	mvp $44,$44		; 44 44 44
	inc $FABD.w,X		; FE BD FA
	ora [$FB.b],Y		; 17 FB
	asl $FC.b		; 06 FC
	ora $FD.b,S		; 03 FD
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora ($3D.b,X)		; 01 3D
	clv		; B8
	sta [$90.b],Y		; 97 90
	lsr $50.b,X		; 56 50
	phk		; 4B
	pha		; 48
	plb		; AB
	tay		; A8
	lda $A4.b		; A5 A4
	sta $94.b,X		; 95 94
	eor $54.b,X		; 55 54
	and $608EE1.l,X		; 3F E1 8E 60
	sta $30C770.l,X		; 9F 70 C7 30
	sta $188338.l		; 8F 38 83 18
	sta [$1C.b]		; 87 1C
	ora ($0C.b,X)		; 01 0C
	asl $3F00.w,X		; 1E 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	bit $80.b		; 24 80
	jsr $8080.w		; 20 80 80
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	cpy #$40.b		; C0 40
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $02.b		; 00 02
	asl $02.b,X		; 16 02
	and ($02.b)		; 32 02
	adc ($01.b,X)		; 61 01
	ora ($01.b,X)		; 01 01
	cpy #$63.b		; C0 63
	inx		; E8
	and [$09.b]		; 27 09
	ora #$00.b		; 09 00
	asl $3F00.w		; 0E 00 3F
	brk $73.b		; 00 73
	brk $61.b		; 00 61
	ora ($03.b,X)		; 01 03
	rti		; 40

	cpx $20.b		; E4 20
	sbc $660F07.l		; EF 07 0F 66
	asl $76.b		; 06 76
	inc $58.b		; E6 58
	clv		; B8
	sec		; 38
	sec		; 38
	php		; 08
	php		; 08
	tsb $08.b		; 04 08
	sei		; 78
	stz $10.b		; 64 10
	bpl   6.b		; 10 06
	adc $10FE04.l,X		; 7F 04 FE 10
	jmp ($F8E0.w,X)		; 7C E0 F8
	cpx #$E8.b		; E0 E8
	cpx #$EC.b		; E0 EC
	brk $7C.b		; 00 7C
	brk $18.b		; 00 18
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora $0B.b		; 05 0B
	asl $0F.b,X		; 16 0F
	and #$1E.b		; 29 1E
	eor ($3E.b),Y		; 51 3E
	lda $7C.b,S		; A3 7C
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $C0.b		; 00 C0
	bit $80.b		; 24 80
	pha		; 48
	brk $10.b		; 00 10
	jsr $4008.w		; 20 08 40
	bpl   0.b		; 10 00
	jsr $4041.w		; 20 41 40
	.db $82, $81, $20		; 82 81 20
	asl $0C40.w		; 0E 40 0C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E1.b		; 00 E1
	brk $C3.b		; 00 C3
	brk $87.b		; 00 87
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	ora [$05.b]		; 07 05
	ora $2F0F07.l		; 0F 07 0F 2F
	lda $CE6D6E.l		; AF 6E 6D CE
	nop		; EA
	sty $0F00.w		; 8C 00 0F
	brk $0F.b		; 00 0F
	ora $1F.b		; 05 1F
	ora [$3F.b]		; 07 3F
	ora $FF2C7F.l		; 0F 7F 2C FF
	pha		; 48
	sbc $64FF80.l,X		; FF 80 FF 64
	sty $D0.b		; 84 D0
	bmi  48.b		; 30 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	cpx $10.b		; E4 10
	beq  48.b		; F0 30
	bcs   0.b		; B0 00
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
	and $003E.w		; 2D 3E 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000900.l,X		; 1F 00 09 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	jsr ($7C00.w,X)		; FC 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	clc		; 18
	beq -40.b		; F0 D8
	bcs 108.b		; B0 6C
	cld		; D8
	jmp ($B6D8.w)		; 6C D8 B6
	jmp ($6CB6.w)		; 6C B6 6C
	tas		; 1B
	pea $B6DB.w		; F4 DB B6
	beq   0.b		; F0 00
	bcs   0.b		; B0 00
	cld		; D8
	brk $D8.b		; 00 D8
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $F4.b		; 00 F4
	brk $B6.b		; 00 B6
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  31.b		; 80 1F
	sbc ($08.b,X)		; E1 08
	inc $08.b,X		; F6 08
	inc $08.b,X		; F6 08
	inc $84.b,X		; F6 84
	sty $84.b		; 84 84
	sty $84.b		; 84 84
	sty $65.b		; 84 65
	adc $9E.b		; 65 9E
	stz $8293.w,X		; 9E 93 82
	lda ($82.b,S),Y		; B3 82
	lda ($80.b),Y		; B1 80
	sbc $F903.w,X		; FD 03 F9
	ora [$ED.b]		; 07 ED
	ora ($CD.b,S),Y		; 13 CD
	and ($2E.b,S),Y		; 33 2E
	and ($D6.b),Y		; 31 D6
	ora $08E7.w,Y		; 19 E7 08
	xba		; EB
	tsb $585B.w		; 0C 5B 58
	eor [$50.b],Y		; 57 50
	adc $60.b,S		; 63 60
	cmp $C0.b,S		; C3 C0
	cmp ($10.b),Y		; D1 10
	sbc ($00.b,X)		; E1 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	ora $0E.b,S		; 03 0E
	ora ($06.b,X)		; 01 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	cpx #$20.b		; E0 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	rts		; 60

	bpl -16.b		; 10 F0
	dey		; 88
	beq -120.b		; F0 88
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	asl $32.b		; 06 32
	rol $10.b,X		; 36 10
	bpl  16.b		; 10 10
	asl $07.b		; 06 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $36.b		; 02 36
	bpl  54.b		; 10 36
	bpl  16.b		; 10 10
	tsb $07.b		; 04 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl  16.b		; 10 10
	jsr $F020.w		; 20 20 F0
	bvs -64.b		; 70 C0
	cpy #$00.b		; C0 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	sec		; 38
	bpl 112.b		; 10 70
	brk $E0.b		; 00 E0
	bmi -16.b		; 30 F0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cmp $B2DFB2.l,X		; DF B2 DF B2
	eor $D7A2.w,X		; 5D A2 D7
	jsr $2093.w		; 20 93 20
	lda ($00.b)		; B2 00
	lda ($00.b)		; B2 00
	jsr $B200.w		; 20 00 B2
	brk $B2.b		; 00 B2
	brk $A2.b		; 00 A2
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
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
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  31.b		; 80 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	jsr $2020.w		; 20 20 20
	jsr $601E.w		; 20 1E 60
	asl $1E62.w,X		; 1E 62 1E
	ror $16.b		; 66 16
	jmp ($4837.w)		; 6C 37 48
	and $005F40.l,X		; 3F 40 5F 00
	eor $203C00.l,X		; 5F 00 3C 20
	dec A		; 3A
	jsl $242636.l		; 22 36 26 24
	bit $1A02.w		; 2C 02 1A
	cop $12.b		; 02 12
	cop $22.b		; 02 22
	cop $22.b		; 02 22
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	rti		; 40

	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   2.b		; 80 02
	cop $06.b		; 02 06
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $06.b		; 02 06
	asl $0C.b		; 06 0C
	tsb $0808.w		; 0C 08 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	cop $07.b		; 02 07
	tsb $0E.b		; 04 0E
	php		; 08
	tsb $1810.w		; 0C 10 18
	lda $308F30.l		; AF 30 8F 30
	eor [$70.b]		; 47 70
	ora $60.b,S		; 03 60
	sta ($E0.b,X)		; 81 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$E0.b		; C0 E0
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora $180E18.l		; 0F 18 0E 18
	asl $10.b		; 06 10
	ora $1C11.w		; 0D 11 1C
	and ($07.b),Y		; 31 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $101E00.l		; 0F 00 1E 10
	ora $230E01.l		; 0F 01 0E 23
	sec		; 38
	adc $1C.b,S		; 63 1C
	lsr $78.b		; 46 78
	dec $30.b		; C6 30
	sty $F8.b		; 84 F8
	sty $0C78.w		; 8C 78 0C
	cpx #$0C.b		; E0 0C
	bit $1E20.w,X		; 3C 20 1E
	cop $78.b		; 02 78
	rti		; 40

	bit $FC04.w,X		; 3C 04 FC
	sty $70.b		; 84 70
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	php		; 08
	rts		; 60

	tsb $80BE.w		; 0C BE 80
	ror $7FBC.w,X		; 7E BC 7F
	ldy #$7F.b		; A0 7F
	jsr $007F.w		; 20 7F 00
	and $001F00.l,X		; 3F 00 1F 00
	sed		; F8
	php		; 08
	rti		; 40

	brk $B0.b		; 00 B0
	lda $032120.l,X		; BF 20 21 03
	and $01.b,S		; 23 01
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$60.b		; C0 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $1D.b		; 00 1D
	tsb $00.b		; 04 00
	tsb $48.b		; 04 48
	sec		; 38
	mvn $E8,$60		; 54 60 E8
	jmp ($0000.w)		; 6C 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	tsb $1D.b		; 04 1D
	brk $04.b		; 00 04
	php		; 08
	sei		; 78
	rti		; 40

	jmp ($EF60.w,X)		; 7C 60 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	rti		; 40

	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$78.b		; E0 78
	sed		; F8
	rol $CF3E.w,X		; 3E 3E CF
	adc $E867C3.l,X		; 7F C3 67 E8
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	rts		; 60

	inc $FF38.w,X		; FE 38 FF
	asl $03FF.w		; 0E FF 03
	adc $00EFC0.l,X		; 7F C0 EF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	cpx #$60.b		; E0 60
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	rts		; 60

	inc $0000.w,X		; FE 00 00
	clv		; B8
	rti		; 40

	ora [$F8.b]		; 07 F8
	stz $FF.b		; 64 FF
	sbc $FF.b,S		; E3 FF
	cmp #$77.b		; C9 77
	sta $AE67.w,Y		; 99 67 AE
	eor ($00.b,S),Y		; 53 00
	brk $40.b		; 00 40
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $77.b		; 00 77
	brk $67.b		; 00 67
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	ldy #$80.b		; A0 80
	cpx #$40.b		; E0 40
	ldy #$40.b		; A0 40
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $B6.b		; 00 B6
	tad		; 5B
	ldx $5B.b,Y		; B6 5B
	ldx $5B.b,Y		; B6 5B
	ldx $5B.b		; A6 5B
	ldx #$19.b		; A2 19
	tax		; AA
	ora ($2A.b),Y		; 11 2A
	ora ($3A.b),Y		; 11 3A
	ora ($5B.b,X)		; 01 5B
	brk $5B.b		; 00 5B
	brk $5B.b		; 00 5B
	brk $5B.b		; 00 5B
	brk $19.b		; 00 19
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	cpy #$3F.b		; C0 3F
	cpy #$3F.b		; C0 3F
	cpy #$3F.b		; C0 3F
	cpy #$3F.b		; C0 3F
	cpy #$3F.b		; C0 3F
	cpy #$BF.b		; C0 BF
	rti		; 40

	sta $39F960.l,X		; 9F 60 F9 39
.ACCU 8
	sep #$22		; E2 22
	cpx $24.b		; E4 24
	inx		; E8
	plp		; 28
	cmp $D119.w,Y		; D9 19 D1
	ora ($52.b),Y		; 11 52
	ora ($6C.b)		; 12 6C
	tsb $05FE.w		; 0C FE 05
	sbc $01FF02.l,X		; FF 02 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $959000.l,X		; FF 00 90 95
	jsl $454522.l		; 22 22 45 45
	dey		; 88
	dey		; 88
	ora #$09.b		; 09 09
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	and ($21.b,X)		; 21 21
	lda $85F845.l,X		; BF 45 F8 85
	xce		; FB
	asl $FD.b		; 06 FD
	cop $FD.b		; 02 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $12.b		; 00 12
	bvc -81.b		; 50 AF
	lda $1010.w		; AD 10 10
	txs		; 9A
	txs		; 9A
	pha		; 48
	pha		; 48
	mvp $24,$44		; 44 44 24
	bit $22.b		; 24 22
	jsl $0C0F0E.l		; 22 0E 0F 0C
	asl $0C08.w		; 0E 08 0C
	ora ($00.b,X)		; 01 00
	ora $0B0600.l		; 0F 00 06 0B
	ora $1B16.w		; 0D 16 1B
	and $1F0C.w		; 2D 0C 1F
	php		; 08
	ora $001F00.l,X		; 1F 00 1F 00
	asl $0000.w		; 0E 00 00
	phd		; 0B
	brk $16.b		; 00 16
	brk $2D.b		; 00 2D
	brk $28.b		; 00 28
	asl $056C.w		; 0E 6C 05
	sbc $03.b		; E5 03
	cmp ($3E.b,X)		; C1 3E
	sta $76CD70.l		; 8F 70 CD 76
	sta $33EE.w,Y		; 99 EE 33
	jmp.w [$FE09]		; DC 09 FE
	bit $AF.b,X		; 34 AF
	tad		; 5B
	eor [$B8.b]		; 47 B8
	clv		; B8
	brk $00.b		; 00 00
	ror $00.b,X		; 76 00
	inc $DC00.w		; EE 00 DC
	brk $3D.b		; 00 3D
	.db $62, $06, $09		; 62 06 09
	ora $60.b,S		; 03 60
	sbc ($78.b,X)		; E1 78
	sei		; 78
	asl $473E.w,X		; 1E 3E 47
	ora $1EA101.l,X		; 1F 01 A1 1E
	jsr $09A0.w		; 20 A0 09
	sbc $FC00.w,Y		; F9 00 FC
	rts		; 60

	inc $FF18.w,X		; FE 18 FF
	asl $DF.b		; 06 DF
	ora ($E7.b,X)		; 01 E7
	bpl  81.b		; 10 51
	clv		; B8
	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	asl $1CE2.w		; 0E E2 1C
	.db $42, $3C		; 42 3C
	ora $9A.b		; 05 9A
	sta $E0E2.w		; 8D E2 E0
	adc ($50.b),Y		; 71 50
	bpl -96.b		; 10 A0
	jsr $0888.w		; 20 88 08
	bpl  16.b		; 10 10
	jsr $00A0.w		; 20 A0 00
	cpx #$82.b		; E0 82
	sbc ($60.b)		; F2 60
	inc $000F.w,X		; FE 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
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
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	bmi   3.b		; 30 03
	eor #$5B.b		; 49 5B
	cpy #$C0.b		; C0 C0
	jsr $C1C0.w		; 20 C0 C1
	cmp ($71.b,X)		; C1 71
	bvs  46.b		; 70 2E
	rol $0002.w		; 2E 02 00
	tsb $4D3E.w		; 0C 3E 4D
	eor $01C181.l,X		; 5F 81 C1 01
	sbc ($80.b,X)		; E1 80
	sbc $7F40.w,Y		; F9 40 7F
	bit $2F.b		; 24 2F
	brk $02.b		; 00 02
	rti		; 40

	bvs  24.b		; 70 18
	jsr $3008.w		; 20 08 30
	ror A		; 6A
	bvs  55.b		; 70 37
	bmi 119.b		; 30 77
	ldx $45.b		; A6 45
	sta [$06.b]		; 87 06
	stx $00.b		; 86 00
	sei		; 78
	cpy #$D8.b		; C0 D8
	cpy #$DE.b		; C0 DE
	cpx #$FF.b		; E0 FF
	brk $3F.b		; 00 3F
	asl $FF.b		; 06 FF
	brk $D7.b		; 00 D7
	asl $8F.b		; 06 8F
	cpx $F8EC.w		; EC EC F8
	cli		; 58
	cpx #$00.b		; E0 00
	cld		; D8
	trb $3FBE.w		; 1C BE 3F
	sta [$3F.b]		; 87 3F
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpx #$EC.b		; E0 EC
	sei		; 78
	sei		; 78
	rti		; 40

	jmp $9EBF80.l		; 5C 80 BF 9E
	sbc $007F00.l,X		; FF 00 7F 00
	and $C80000.l,X		; 3F 00 00 C8
	asl $0515.w		; 0E 15 05
	asl A		; 0A
	cop $06.b		; 02 06
	asl $9F.b		; 06 9F
	sbc $07F7FF.l,X		; FF FF F7 07
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	sbc $021F05.l,X		; FF 05 1F 02
	ora $1F9F02.l		; 0F 02 9F 1F
	sbc $00FF07.l,X		; FF 07 FF 00
	sbc $A40F00.l,X		; FF 00 0F A4
	txy		; 9B
	eor [$18.b]		; 47 18
	sbc $CC.b,S		; E3 CC
	plx		; FA
	tsb $2C6A.w		; 0C 6A 2C
	bit $88.b,X		; 34 88
	bra  88.b		; 80 58
	pha		; 48
	bcs -45.b		; B0 D3
	bne -80.b		; D0 B0
	bmi  48.b		; 30 30
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	bpl -16.b		; 10 F0
	bra 112.b		; 80 70
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	jsr $4080.w		; 20 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	ora ($1A.b,X)		; 01 1A
	ora ($0A.b,X)		; 01 0A
	ora ($0B.b,X)		; 01 0B
	brk $0B.b		; 00 0B
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	rts		; 60

	eor $245B20.l,X		; 5F 20 5B 24
	tsa		; 3B
	ora [$34.b]		; 07 34
	tsb $0C15.w		; 0C 15 0C
	ora ($08.b,S),Y		; 13 08
	ora $08.b,S		; 03 08
	stz $04.b		; 64 04
	bit $04.b		; 24 04
	and $03.b,S		; 23 03
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00FF08.l		; 0F 08 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0BF00.l,X		; FF 00 BF C0
	eor $33AC60.l,X		; 5F 60 AC 33
	bra  63.b		; 80 3F
	and ($21.b,X)		; 21 21
	eor ($41.b,X)		; 41 41
	eor ($41.b,X)		; 41 41
	rep #$C2		; C2 C2
	jsl $1F9F22.l		; 22 22 9F 1F
	cmp ($01.b,X)		; C1 01
	sbc $FF21.w		; ED 21 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	tsb $E8.b		; 04 E8
	bit $44D0.w		; 2C D0 44
	bcs -124.b		; B0 84
	jmp ($3206.w,X)		; 7C 06 32
	and ($14.b)		; 32 14
	trb $1C.b		; 14 1C
	trb $3838.w		; 1C 38 38
	bne -64.b		; D0 C0
	clv		; B8
	bra 124.b		; 80 7C
	tsb $F8.b		; 04 F8
	brk $36.b		; 00 36
	tas		; 1B
	rol $6D57.w,X		; 3E 57 6D
	rol $7D.b,X		; 36 7D
	ldx $CC7B.w		; AE 7B CC
	xce		; FB
	eor $5DFB.w		; 4D FB 5D
	lda [$59.b],Y		; B7 59
	tas		; 1B
	brk $57.b		; 00 57
	brk $36.b		; 00 36
	brk $AE.b		; 00 AE
	brk $CC.b		; 00 CC
	brk $4D.b		; 00 4D
	brk $5D.b		; 00 5D
	brk $59.b		; 00 59
	brk $62.b		; 00 62
	lda $7BE4.w,X		; BD E4 7B
	cpy $7B.b		; C4 7B
	iny		; C8
	sbc [$CE.b],Y		; F7 CE
	sbc ($D9.b),Y		; F1 D9
	inc $41.b		; E6 41
	inc $E817.w,X		; FE 17 E8
	lda $7A01.w,X		; BD 01 7A
	cop $7A.b		; 02 7A
	cop $F4.b		; 02 F4
	tsb $F0.b		; 04 F0
	brk $E6.b		; 00 E6
	asl $F9.b		; 06 F9
	ora $06E6.w,Y		; 19 E6 06
	and ($9E.b,X)		; 21 9E
	eor ($8D.b,S),Y		; 53 8D
	ora $DF2FD3.l		; 0F D3 2F DF
	adc $0FD79F.l		; 6F 9F D7 0F
	xba		; EB
	ora [$F5.b],Y		; 17 F5
	phd		; 0B
	bcc -48.b		; 90 D0
	ora #$29.b		; 09 29
	ora $33.b,S		; 03 33
	ora [$1F.b]		; 07 1F
	ora [$1F.b]		; 07 1F
	ora $2F.b,S		; 03 2F
	cmp ($D7.b,X)		; C1 D7
	rti		; 40

	phk		; 4B
	inx		; E8
	ora $9FD5AC.l		; 0F AC D5 9F
	cmp ($93.b,X)		; C1 93
	iny		; C8
	sta $37CA.w,X		; 9D CA 37
	sta $768E37.l		; 8F 37 8E 76
	stx $FE08.w		; 8E 08 FE
	sty $EF.b		; 84 EF
	sta $ED.b,S		; 83 ED
	sty $04EB.w		; 8C EB 04
	sbc $0C.b,S		; E3 0C
	cmp $17C607.l		; CF 07 C6 17
	stx $00.b,Y		; 96 00
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
	brk $3C.b		; 00 3C
	cmp ($7C.b,X)		; C1 7C
	cmp ($7E.b,X)		; C1 7E
	cmp $38.b,S		; C3 38
	sta $3D.b,S		; 83 3D
	stx $FD.b		; 86 FD
	stx $F8.b		; 86 F8
	stx $70.b		; 86 70
	tsb $7F.b		; 04 7F
	eor ($3F.b,X)		; 41 3F
	ora ($3C.b,X)		; 01 3C
	brk $FE.b		; 00 FE
	.db $82, $FA, $82		; 82 FA 82
	sei		; 78
	brk $7C.b		; 00 7C
	tsb $FC.b		; 04 FC
	tsb $03.b		; 04 03
	sed		; F8
	ora ($E8.b,S),Y		; 13 E8
	ora [$EC.b]		; 07 EC
	lda ($44.b,X)		; A1 44
	sta $46.b,S		; 83 46
	rti		; 40

	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora ($6F.b,X)		; 01 6F
	php		; 08
	sbc [$00.b]		; E7 00
	sbc $00.b,S		; E3 00
	eor [$04.b]		; 47 04
	eor ($00.b,X)		; 41 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	beq   8.b		; F0 08
	beq  12.b		; F0 0C
	sei		; 78
	tsb $00E0.w		; 0C E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	rol $7C00.w,X		; 3E 00 7C
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $04.b		; 06 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $1818.w		; 0C 18 18
	bpl  16.b		; 10 10
	jsr $F020.w		; 20 20 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	ldy #$A0.b		; A0 A0
	ldy #$B8.b		; A0 B8
	bne -34.b		; D0 DE
	stz $0F8F.w		; 9C 8F 0F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$80.b		; E0 80
	sed		; F8
	ldy #$FE.b		; A0 FE
	bne  -1.b		; D0 FF
	sty $03FF.w		; 8C FF 03
	cmp $000300.l		; CF 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldy #$A0.b		; A0 A0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$20.b		; C0 20
	beq -96.b		; F0 A0
	inc $0601.w,X		; FE 01 06
	ora $0C.b,S		; 03 0C
	asl $2B.b,X		; 16 2B
	ora $2F1A27.l,X		; 1F 27 1A 2F
	sec		; 38
	eor $754F30.l		; 4F 30 4F 75
	txa		; 8A
	asl $00.b		; 06 00
	tsb $2B00.w		; 0C 00 2B
	brk $27.b		; 00 27
	brk $2F.b		; 00 2F
	brk $4F.b		; 00 4F
	brk $4F.b		; 00 4F
	brk $8A.b		; 00 8A
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $01.b		; 05 01
	ora ($1E.b,X)		; 01 1E
	asl $4F87.w,X		; 1E 87 4F
	cpy #$9F.b		; C0 9F
	ora [$D6.b]		; 07 D6
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora ($BE.b,X)		; 01 BE
	asl $05FF.w		; 0E FF 05
	sbc $05FF00.l,X		; FF 00 FF 05
	inc $28F2.w,X		; FE F2 28
	lsr $EA.b,X		; 56 EA
	sta $59E7.w,Y		; 99 E7 59
	lda $FE.b,S		; A3 FE
	ora ($F9.b,X)		; 01 F9
	asl $FC.b		; 06 FC
	ora $3E.b,S		; 03 3E
	eor ($2D.b,X)		; 41 2D
	brk $ED.b		; 00 ED
	brk $E2.b		; 00 E2
	cop $A4.b		; 02 A4
	tsb $21.b		; 04 21
	and ($12.b,X)		; 21 12
	ora ($0B.b)		; 12 0B
	phd		; 0B
	cmp $45.b		; C5 45
	sed		; F8
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bvc  96.b		; 50 60
	sec		; 38
	bmi   2.b		; 30 02
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq  64.b		; F0 40
	beq  32.b		; F0 20
	sbc $006F00.l,X		; FF 00 6F 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	asl $1C05.w		; 0E 05 1C
	tsa		; 3B
	brk $77.b		; 00 77
	brk $9F.b		; 00 9F
	ror $0101.w,X		; 7E 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	brk $38.b		; 00 38
	asl $7E.b		; 06 7E
	sei		; 78
	tsb $0CE0.w		; 0C E0 0C
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	ldy #$30.b		; A0 30
	rti		; 40

	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
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
	bcs -122.b		; B0 86
	sei		; 78
	dec $18.b		; C6 18
	cmp $2C.b,S		; C3 2C
	adc ($17.b,X)		; 61 17
	bmi  15.b		; 30 0F
	and [$0F.b],Y		; 37 0F
	trb $0F.b		; 14 0F
	tsb $78.b		; 04 78
	brk $BC.b		; 00 BC
	sty $7E.b		; 84 7E
	.db $42, $1F		; 42 1F
	ora ($08.b,X)		; 01 08
	brk $16.b		; 00 16
	ora [$04.b],Y		; 17 04
	tsb $00.b		; 04 00
	tsb $A0.b		; 04 A0
	bit $0F3C.w,X		; 3C 3C 0F
	ora $707313.l		; 0F 13 73 70
	ora ($13.b),Y		; 11 13
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0CBF.w		; 20 BF 0C
	and $701F03.l,X		; 3F 03 1F 70
	adc ($11.b,S),Y		; 73 11
	ora ($07.b,S),Y		; 13 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D0.b		; C0 D0
	cpx #$F0.b		; E0 F0
	bit $4979.w,X		; 3C 79 49
	rtl		; 6B

	adc $00.b,S		; 63 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	sed		; F8
	cpy #$FC.b		; C0 FC
	jsr $48FD.w		; 20 FD 48
	adc $006B62.l,X		; 7F 62 6B 00
	ora $03.b,S		; 03 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0E.b]		; 07 0E
	asl $0C0C.w		; 0E 0C 0C
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	inc $FA05.w,X		; FE 05 FA
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $80.b		; 04 80
	sty $00.b		; 84 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $040C.w		; 0C 0C 04
	tsb $06.b		; 04 06
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
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
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora [$0A.b]		; 07 0A
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	php		; 08
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	bra   8.b		; 80 08
	bra  12.b		; 80 0C
	php		; 08
	sty $02.b		; 84 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra -72.b		; 80 B8
	brk $8C.b		; 00 8C
	brk $0F.b		; 00 0F
	brk $87.b		; 00 87
	ora $02.b,S		; 03 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora [$1C.b]		; 07 1C
	asl A		; 0A
	sec		; 38
	adc $7E9F01.l,X		; 7F 01 9F 7E
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	brk $00.b		; 00 00
	asl $7E.b		; 06 7E
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	rti		; 40

	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  96.b		; 10 60
	tsa		; 3B
	cpy $60.b		; C4 60
	lda $AE7FF6.l,X		; BF F6 7F AE
	sbc $09F78C.l,X		; FF 8C F7 09
	inc $00.b,X		; F6 00
	brk $60.b		; 00 60
	brk $C4.b		; 00 C4
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	bra  76.b		; 80 4C
	beq  52.b		; F0 34
	plx		; FA
	tya		; 98
	ror $7A94.w,X		; 7E 94 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	plx		; FA
	brk $7E.b		; 00 7E
	brk $7A.b		; 00 7A
	brk $30.b		; 00 30
	jsr $C000.w		; 20 00 C0
	bra -80.b		; 80 B0
	beq  60.b		; F0 3C
	jsr ($3F8F.w,X)		; FC 8F 3F
	cmp [$E7.b]		; C7 E7
	sbc $C8DF.w,Y		; F9 DF C8
	brk $C0.b		; 00 C0
	jsr $80D0.w		; 20 D0 80
	jsr ($BF70.w,X)		; FC 70 BF
	tsb $877F.w		; 0C 7F 87
	sbc $F0FF81.l,X		; FF 81 FF F0
	cmp $000000.l		; CF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -20.b		; F0 EC
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$F4.b		; C0 F4
	rts		; 60

	jsr ($00FF.w,X)		; FC FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0CF700.l,X		; FF 00 F7 0C
	ora [$FC.b]		; 07 FC
	ora ($12.b)		; 12 12
	ora ($13.b,S),Y		; 13 13
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	and $23.b,S		; 23 23
	and $F8FB2E.l		; 2F 2E FB F8
	xba		; EB
	php		; 08
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	jsr $6090.w		; 20 90 60
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	ora $59EE.w,Y		; 19 EE 59
	ldx $AE59.w		; AE 59 AE
	eor $BDA6.w,X		; 5D A6 BD
	asl $B7.b		; 06 B7
	cop $17.b		; 02 17
	.db $82, $12, $05		; 82 12 05
	inc $AE00.w		; EE 00 AE
	brk $AE.b		; 00 AE
	brk $A6.b		; 00 A6
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $82.b		; 00 82
	brk $04.b		; 00 04
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$3F.b		; C0 3F
	cpx #$47.b		; E0 47
	cpy #$3D.b		; C0 3D
	stx $F8.b		; 86 F8
	sta $C2.b,S		; 83 C2
	rep #$C2		; C2 C2
	rep #$44		; C2 44
	mvp $34,$34		; 44 34 34
	jmp $86BE5C.l		; 5C 5C BE 86
	xce		; FB
	sta $7E.b,S		; 83 7E
	cop $8A.b		; 02 8A
	sbc ($02.b),Y		; F1 02
	sbc $F805.w,Y		; F9 05 F8
	brk $FD.b		; 00 FD
	cop $FD.b		; 02 FD
	inc $19.b		; E6 19
	sta $1E60.w,X		; 9D 60 1E
	sbc ($F1.b,X)		; E1 F1
	ora $F9.b		; 05 F9
	ora $22E0.w,X		; 1D E0 22
	cpx #$23.b		; E0 23
	cpy #$41.b		; C0 41
	brk $01.b		; 00 01
	rts		; 60

	.db $62, $9C, $9D		; 62 9C 9D
	bit $1DCE.w,X		; 3C CE 1D
	sbc ($3F.b,X)		; E1 3F
	cld		; D8
	sbc $F93C.w,Y		; F9 3C F9
	jsr ($FCF9.w,X)		; FC F9 FC
	adc ($F8.b,S),Y		; 73 F8
	lda ($78.b,S),Y		; B3 78
	tsb $013F.w		; 0C 3F 01
	ora $389D98.l,X		; 1F 98 9D 38
	and $70FE78.l,X		; 3F 78 FE 70
	inc $FC30.w,X		; FE 30 FC
	bpl 124.b		; 10 7C
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $1010.w		; 20 10 10
	ora $060D.w,X		; 1D 0D 06
	brk $09.b		; 00 09
	phd		; 0B
	clc		; 18
	clc		; 18
	tsb $18.b		; 04 18
	clc		; 18
	clc		; 18
	asl $050E.w		; 0E 0E 05
	ora $0C.b		; 05 0C
	ora $0701.w,X		; 1D 01 07
	ora #$0B.b		; 09 0B
	bpl  24.b		; 10 18
	brk $1C.b		; 00 1C
	bpl  31.b		; 10 1F
	php		; 08
	ora $000504.l		; 0F 04 05 00
	bra   8.b		; 80 08
	ror $6423.w		; 6E 23 64
	ora ($06.b,X)		; 01 06
	ora $260E.w		; 0D 0E 26
	rol $2E.b		; 26 2E
	trb $C8.b		; 14 C8
	bne   0.b		; D0 00
	sbc $B8CF80.l		; EF 80 CF B8
	xce		; FB
	sec		; 38
	tsa		; 3B
	bit $003F.w,X		; 3C 3F 00
	and [$00.b]		; 27 00
	sbc $5FFA80.l,X		; FF 80 FA 5F
	.db $82, $FF, $02		; 82 FF 02
	sbc $FE02.w,X		; FD 02 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $02.b		; 00 02
	sep #$00		; E2 00
	.db $82, $00, $02		; 82 00 02
	bra -126.b		; 80 82
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
	phy		; 5A
	lda $2A.b		; A5 2A
	bit #$64.b		; 89 64
	lda ($9E.b,X)		; A1 9E
	jmp ($309F.w,X)		; 7C 9F 30
	inc $12.b		; E6 12
	sta ($68.b,S),Y		; 93 68
	iny		; C8
	and $A0.b,X		; 35 A0
	brk $DD.b		; 00 DD
	ora $03DB.w		; 0D DB 03
	and $20.b,S		; 23 20
	eor $111D40.l		; 4F 40 1D 11
	and $B5B728.l		; 2F 28 B7 B5
	cpx $3A.b		; E4 3A
	jmp $78B2.w		; 4C B2 78
	sty $30.b		; 84 30
	cpy #$A0.b		; C0 A0
	cpy #$A0.b		; C0 A0
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra  58.b		; 80 3A
	brk $32.b		; 00 32
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	sbc $3DDF.w		; ED DF 3D
	cmp $10EE3B.l,X		; DF 3B EE 10
	sbc $FC11.w		; ED 11 FC
	ora ($EE.b,X)		; 01 EE
	bpl  -8.b		; 10 F8
	brk $D8.b		; 00 D8
	cmp $3D3C.w		; CD 3C 3D
	phd		; 0B
	phd		; 0B
	trb $15.b		; 14 15
	sty $87.b		; 84 87
	bra -125.b		; 80 83
	bvc  65.b		; 50 41
	rti		; 40

	rti		; 40

	cpx $991D.w		; EC 1D 99
	sta ($02.b,X)		; 81 02
	brk $C1.b		; 00 C1
	cpx #$F4.b		; E0 F4
	sbc $00FF3F.l,X		; FF 3F FF 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	sbc $009F01.l,X		; FF 01 9F 00
	sbc $00.b,S		; E3 00
	sbc $FFF0.w,X		; FD F0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora [$FC.b]		; 07 FC
	ora [$EC.b],Y		; 17 EC
	ora ($EC.b),Y		; 11 EC
	and $CE.b,S		; 23 CE
	eor ($86.b,X)		; 41 86
	bra   6.b		; 80 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	xba		; EB
	php		; 08
	xba		; EB
	php		; 08
	sbc [$04.b]		; E7 04
	cmp $04.b		; C5 04
	sta $02.b,S		; 83 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	beq  16.b		; F0 10
	cpx #$08.b		; E0 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	sed		; F8
	php		; 08
	bvs   4.b		; 70 04
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $02.b		; 00 02
	ora ($02.b),Y		; 11 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $F8.b		; 02 F8
	sta $78.b,S		; 83 78
	ora $FC.b,S		; 03 FC
	ora [$FC.b]		; 07 FC
	ora [$FA.b]		; 07 FA
	ora $F2.b		; 05 F2
	ora $F9.b		; 05 F9
	tsb $0CE0.w		; 0C E0 0C
	ror $FD02.w,X		; 7E 02 FD
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $FD.b		; 00 FD
	tsb $FD.b		; 04 FD
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	stz $64.b		; 64 64
	sta $2299.w,Y		; 99 99 22
	jsl $884444.l		; 22 44 44 88
	dey		; 88
	bcc -112.b		; 90 90
	ora ($11.b),Y		; 11 11
	and ($21.b,X)		; 21 21
	lsr $B9.b,X		; 56 B9
	nop		; EA
	eor $FF.b,X		; 55 FF
	plp		; 28
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $B80100.l,X		; FF 00 01 B8
	ora ($54.b,X)		; 01 54
	rol A		; 2A
	rol A		; 2A
	eor ($51.b),Y		; 51 51
	bit #$89.b		; 89 89
	sty $94.b,X		; 94 94
	trb $14.b		; 14 14
	ora ($12.b)		; 12 12
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora ($07.b,X)		; 01 07
	ora $03.b		; 05 03
	tsb $03.b		; 04 03
	asl $0B.b		; 06 0B
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $4B.b		; 00 4B
	sbc $FFD9.w,X		; FD D9 FF
	sta [$FB.b],Y		; 97 FB
	ldx $FB.b,Y		; B6 FB
	jsl $FF24FF.l		; 22 FF 24 FF
	adc $4CF6.w		; 6D F6 4C
	sbc [$FD.b],Y		; F7 FD
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F6.b		; 00 F6
	brk $F7.b		; 00 F7
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E3.b		; 00 E3
	ora $F0.b,S		; 03 F0
	cmp #$B8.b		; C9 B8
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sbc [$01.b],Y		; F7 01
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $0F0807.l,X		; FF 07 08 0F
	ora ($15.b)		; 12 15
	rol $5E29.w		; 2E 29 5E
	and $C0DF00.l,X		; 3F 00 DF C0
	sbc $E00FE0.l		; EF E0 0F E0
	php		; 08
	brk $12.b		; 00 12
	brk $2E.b		; 00 2E
	brk $5E.b		; 00 5E
	brk $00.b		; 00 00
	cpy #$C2.b		; C0 C2
.ACCU 8
	sep #$A1		; E2 A1
	sbc ($00.b),Y		; F1 00
	beq 124.b		; F0 7C
.INDEX 16
	rep #$1C		; C2 1C
	cmp $2E.b,S		; C3 2E
	adc $1C.b,S		; 63 1C
	and ($07.b),Y		; 31 07
	bmi  15.b		; 30 0F
	tas		; 1B
	ora [$1B.b]		; 07 1B
	ora [$0A.b]		; 07 0A
	rol $7E02.w,X		; 3E 02 7E
	.db $42, $1C		; 42 1C
	brk $2F.b		; 00 2F
	and ($1C.b,X)		; 21 1C
	bpl   2.b		; 10 02
	ora $0B.b,S		; 03 0B
	phd		; 0B
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$4000.w		; C0 00 40
	bra -96.b		; 80 A0
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	stz $1C.b,X		; 74 1C
	trb $07.b		; 14 07
	ora [$01.b]		; 07 01
	ora ($02.b,X)		; 01 02
	asl $020E.w		; 0E 0E 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	adc $011704.l,X		; 7F 04 17 01
	ora [$00.b]		; 07 00
	ora $0E.b,S		; 03 0E
	asl $0202.w		; 0E 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$7A78.w		; E0 78 7A
	trb $673E.w		; 1C 3E 67
	sbc $0C0DE9.l		; EF E9 0D 0C
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bra  -4.b		; 80 FC
	rts		; 60

	sbc $247F18.l,X		; FF 18 7F 24
	adc $0CEFE9.l,X		; 7F E9 EF 0C
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $6820.w		; 20 20 68
	pla		; 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	rti		; 40

	ror $0C0A.w,X		; 7E 0A 0C
	ora [$06.b]		; 07 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ror $1F04.w,X		; 7E 04 1F
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	cpy #$C040.w		; C0 40 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $180C.w		; 0C 0C 18
	clc		; 18
	sed		; F8
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol A		; 2A
	tax		; AA
	sta $D5.b,X		; 95 D5
	and $35.b,X		; 35 35
	inc $FCFE.w,X		; FE FE FC
	ldy $4038.w,X		; BC 38 40
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	plp		; 28
	inc $FF94.w,X		; FE 94 FF
	ora $FF.b,X		; 15 FF
	inc $3CFF.w,X		; FE FF 3C
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	tsb $03.b		; 04 03
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	bpl   1.b		; 10 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	eor ($01.b),Y		; 51 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	phd		; 0B
	asl $0B.b		; 06 0B
	asl $0B.b		; 06 0B
	asl $0B.b		; 06 0B
	ora $0A.b		; 05 0A
	ora $0A.b		; 05 0A
	ora $0A.b		; 05 0A
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $C5.b		; 00 C5
	ror $7CC3.w,X		; 7E C3 7C
	cmp [$78.b]		; C7 78
	cmp $7C.b,S		; C3 7C
	cmp ($6C.b,S),Y		; D3 6C
	cmp ($6C.b,S),Y		; D3 6C
	cmp ($6C.b,S),Y		; D3 6C
	sta ($6C.b,S),Y		; 93 6C
	ror $7F00.w,X		; 7E 00 7F
	ora $7A.b,S		; 03 7A
	cop $7E.b		; 02 7E
	cop $6E.b		; 02 6E
	cop $6D.b		; 02 6D
	ora ($6D.b,X)		; 01 6D
	ora ($6D.b,X)		; 01 6D
	ora ($C0.b,X)		; 01 C0
	phx		; DA
	cmp $E1.b		; C5 E1
	sta $1FC2.w		; 8D C2 1F
	sta $38.b,S		; 83 38
	ora [$F0.b]		; 07 F0
	ora $267E83.l		; 0F 83 7E 26
	sbc $FFC0.w,X		; FD C0 FF
	sta ($FF.b,X)		; 81 FF
	tsb $F5.b		; 04 F5
	php		; 08
	inx		; E8
	ora [$D7.b],Y		; 17 D7
	ora ($00.b,X)		; 01 00
	ror $FD00.w,X		; 7E 00 FD
	brk $CB.b		; 00 CB
	cpy $CE23.w		; CC 23 CE
	sta ($A0.b,X)		; 81 A0
	ldy #$3C6C.w		; A0 6C 3C
	cmp $7303FF.l		; CF FF 03 73
	cpx $D1.b		; E4 D1
	cpx #$E090.w		; E0 90 E0
	rol A		; 2A
	phx		; DA
	bra  -2.b		; 80 FE
	rts		; 60

	sbc $031F0C.l,X		; FF 0C 1F 03
	ora $E02FE0.l		; 0F E0 2F E0
	asl $0A07.w		; 0E 07 0A
	ora $02.b		; 05 02
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cpx $1B.b		; E4 1B
	stp		; DB
	jsr $9067.w		; 20 67 90
	and [$40.b],Y		; 37 40
	asl $0421.w,X		; 1E 21 04
	cmp $C2.b,S		; C3 C2
	sbc ($F1.b),Y		; F1 F1
	bit $5050.w,X		; 3C 50 50
	ora $01.b		; 05 01
	txs		; 9A
	sta ($48.b)		; 92 48
	cpy #$E121.w		; C0 21 E1
	asl A		; 0A
	plx		; FA
	cpy #$30FC.w		; C0 FC 30
	inc $0080.w,X		; FE 80 00
	bra   0.b		; 80 00
	cpy #$2000.w		; C0 00 20
	cpy #$C020.w		; C0 20 C0
	jsr $50C0.w		; 20 C0 50
	ldy #$20D0.w		; A0 D0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0720.w		; 20 20 07
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $04.b		; 06 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $F820.w		; 20 20 F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	and $007E00.l,X		; 3F 00 7E 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	cpy #$E080.w		; C0 80 E0
	cpx $74.b		; E4 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	stz $FE.b		; 64 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	ror $FE00.w,X		; 7E 00 FE
	adc $C57E.w,X		; 7D 7E C5
	inc $FA04.w,X		; FE 04 FA
	tsb $FC.b		; 04 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $01.b		; 00 01
	brk $1D.b		; 00 1D
	adc $C404.w,X		; 7D 04 C4
	brk $04.b		; 00 04
	cpy #$80C4.w		; C0 C4 80
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $0C01.w		; 0C 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cmp ($1E.b,X)		; C1 1E
	iny		; C8
	ora [$E0.b],Y		; 17 E0
	and $C13FE0.l,X		; 3F E0 3F C1
	rol $2E91.w,X		; 3E 91 2E
	bcc  46.b		; 90 2E
	cmp ($6C.b)		; D2 6C
	inc $10.b,X		; F6 10
	sbc [$10.b],Y		; F7 10
	cmp $00CF00.l		; CF 00 CF 00
	inc $EE20.w		; EE 20 EE
	jsr $00CE.w		; 20 CE 00
	sty $8F00.w		; 8C 00 8F
	rts		; 60

	cmp [$30.b]		; C7 30
	sbc $18.b,S		; E3 18
	eor $2C.b,X		; 55 2C
	ora ($2E.b)		; 12 2E
	ora ($27.b),Y		; 11 27
	jsr $0003.w		; 20 03 00
	ora ($3F.b,X)		; 01 3F
	jsr $101F.w		; 20 1F 10
	ora $002308.l		; 0F 08 23 00
	and $04.b		; 25 04
	jsl $010102.l		; 22 02 01 01
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	cpy #$C020.w		; C0 20 C0
	bpl -32.b		; 10 E0
	bpl -16.b		; 10 F0
	clc		; 18
	rts		; 60

	php		; 08
	sed		; F8
	sty $40C0.w		; 8C C0 40
	cpy #$E000.w		; C0 00 E0
	jsr $00E0.w		; 20 E0 00
	beq  16.b		; F0 10
	cpx #$F800.w		; E0 00 F8
	php		; 08
	bvs   0.b		; 70 00
	dec $7E20.w,X		; DE 20 7E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	stz $04.b		; 64 04
	cpy $06.b		; C4 06
	stx $02.b		; 86 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F0C0.w		; C0 C0 F0
	beq 124.b		; F0 7C
	xce		; FB
	ora $00C73B.l,X		; 1F 3B C7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	cpy #$70FC.w		; C0 FC 70
	sbc $FF18.w,X		; FD 18 FF
	sta $FF.b,S		; 83 FF
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
	brk $F0.b		; 00 F0
	sec		; 38
	bit $3831.w,X		; 3C 31 38
	and $30.b,S		; 23 30
	ora [$00.b]		; 07 00
	asl $0901.w,X		; 1E 01 09
	ora [$0B.b],Y		; 17 0B
	ora [$16.b],Y		; 17 16
	and $207F30.l		; 2F 30 7F 20
	ror $7D01.w,X		; 7E 01 7D
	cop $7A.b		; 02 7A
	brk $20.b		; 00 20
	ora [$00.b],Y		; 17 00
	ora [$00.b],Y		; 17 00
	and $28E000.l		; 2F 00 E0 28
	sed		; F8
	tas		; 1B
	sta [$7B.b]		; 87 7B
	phd		; 0B
	sed		; F8
	asl $DAFC.w		; 0E FC DA
	cpx $FC2A.w		; EC 2A FC
	bvs -34.b		; 70 DE
	jsr $887F.w		; 20 7F 88
	lda $083733.l		; AF 33 37 08
	ora $EC0D78.l		; 0F 78 0D EC
	ora #$FC.b		; 09 FC
	ora ($DE.b,X)		; 01 DE
	ora ($7B.b,X)		; 01 7B
	mvp $12,$0C		; 44 0C 12
	asl $C8.b		; 06 C8
	cmp $F0.b,S		; C3 F0
	beq  60.b		; F0 3C
	jmp ($3F8F.w,X)		; 7C 8F 3F
	sta $47.b,S		; 83 47
	sec		; 38
	rti		; 40

	cpy #$F213.w		; C0 13 F2
	ora #$F8.b		; 09 F8
	cpy #$30FC.w		; C0 FC 30
	sbc $03BF0C.l,X		; FF 0C BF 03
	cmp $78A720.l		; CF 20 A7 78
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	trb $38C4.w		; 1C C4 38
	sty $78.b		; 84 78
	jmp $0830.w		; 4C 30 08
	sty $48.b		; 84 48
	bvs -96.b		; 70 A0
	jsr $4040.w		; 20 40 40
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	rti		; 40

	pea $F70C.w		; F4 0C F7
	pha		; 48
	sbc $49FE49.l,X		; FF 49 FE 49
	inc $FE49.w,X		; FE 49 FE
	ora #$FE.b		; 09 FE
	ora #$7E.b		; 09 7E
	eor ($36.b,X)		; 41 36
	sbc [$00.b],Y		; F7 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $36.b		; 00 36
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra -65.b		; 80 BF
	cpy #$C0BF.w		; C0 BF C0
	sta $7373E0.l,X		; 9F E0 73 73
	mvp $C8,$44		; 44 44 C8
	pha		; 48
	cmp ($51.b),Y		; D1 51
	sbc ($72.b)		; F2 72
.ACCU 8
	sep #$22		; E2 22
	cpx $24.b		; E4 24
	sed		; F8
	clc		; 18
	ora $001F00.l,X		; 1F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	adc $007E00.l,X		; 7F 00 7E 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	beq   0.b		; F0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $0803.w		; 0C 03 08
	ora $18.b,S		; 03 18
	ora [$30.b]		; 07 30
	asl $3C60.w		; 0E 60 3C
	sbc ($F8.b,X)		; E1 F8
	ora $F8.b,S		; 03 F8
	inc $03.b,X		; F6 03
	brk $0F.b		; 00 0F
	php		; 08
	ora $101F08.l		; 0F 08 1F 10
	and $415F20.l,X		; 3F 20 5F 41
	asl $02.b		; 06 02
	stz $F4.b,X		; 74 F4
	cpy #$044C.w		; C0 4C 04
	pha		; 48
	bra -56.b		; 80 C8
	php		; 08
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	brk $C8.b		; 00 C8
	rti		; 40

	php		; 08
	brk $80.b		; 00 80
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
	brk $30.b		; 00 30
	sty $7C.b		; 84 7C
	dec $38.b		; C6 38
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $42, $3E		; 42 3E
	pha		; 48
	and $6F3E56.l,X		; 3F 56 3E 6F
	and $84FC59.l,X		; 3F 59 FC 84
	sec		; 38
	brk $7E.b		; 00 7E
	.db $42, $7E		; 42 7E
	.db $42, $30		; 42 30
	brk $22.b		; 00 22
	asl $06.b		; 06 06
	ora $3F1900.l		; 0F 00 19 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$4040.w		; C0 40 40
	inc $E0.b		; E6 E0
	cpx #$E0C0.w		; E0 C0 E0
	brk $D8.b		; 00 D8
	trb $3FBF.w		; 1C BF 3F
	sta [$3F.b]		; 87 3F
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	adc [$C0.b]		; 67 C0
	cpy #$5C40.w		; C0 40 5C
	bra -65.b		; 80 BF
	stz $00FF.w,X		; 9E FF 00
	adc $003F00.l,X		; 7F 00 3F 00
	brk $40.b		; 00 40
	bvs -27.b		; 70 E5
	adc $7A.b,X		; 75 7A
	inc A		; 1A
	asl $06.b		; 06 06
	ora $F7FFFF.l,X		; 1F FF FF F7
	ora [$08.b]		; 07 08
	brk $00.b		; 00 00
	rti		; 40

	jsr ($FF65.w,X)		; FC 65 FF
	ora ($7F.b)		; 12 7F
	cop $9F.b		; 02 9F
	ora $FF07FF.l,X		; 1F FF 07 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	trb $092F.w		; 1C 2F 09
	and $335F3B.l,X		; 3F 3B 5F 33
	eor $667F16.l,X		; 5F 16 7F 66
	and $6C3F64.l,X		; 3F 64 3F 6C
	lda [$2F.b],Y		; B7 2F
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $B7.b		; 00 B7
	brk $90.b		; 00 90
	sbc $60BFE0.l,X		; FF E0 BF 60
	lda $1CBF60.l,X		; BF 60 BF 1C
	sbc $33.b,S		; E3 33
	cpy $7C83.w		; CC 83 7C
	lda $03FF50.l		; AF 50 FF 03
	ldy $BC04.w,X		; BC 04 BC
	tsb $B8.b		; 04 B8
	php		; 08
	cpx #$CC00.w		; E0 00 CC
	tsb $3373.w		; 0C 73 33
	jmp $430C.w		; 4C 0C 43
	bit $1BA7.w,X		; 3C A7 1B
	ora $BF5FA7.l,X		; 1F A7 5F BF
	cmp $1FAE3F.l,X		; DF 3F AE 1F
	dec $2F.b,X		; D6 2F
	nop		; EA
	ora [$20.b],Y		; 17 20
	lda ($13.b,X)		; A1 13
	eor ($07.b,S),Y		; 53 07
	adc [$0F.b]		; 67 0F
	and $063F0E.l,X		; 3F 0E 3F 06
	eor $80AF82.l,X		; 5F 82 AF 80
	sta [$E0.b],Y		; 97 E0
	bit $8F7C.w		; 2C 7C 8F
	and $912F83.l,X		; 3F 83 2F 91
	and $7FBE.w,Y		; 39 BE 7F
	dec A		; 3A
	adc ($3B.b,S),Y		; 73 3B
	cmp [$2F.b],Y		; D7 2F
	jsr $0C7F.w		; 20 7F 0C
	sbc $01DF03.l		; EF 03 DF 01
	cmp $34FF20.l,X		; DF 20 FF 34
	lda ($3E.b,S),Y		; B3 3E
	tyx		; BB
	and [$07.b]		; 27 07
	eor ($36.b,X)		; 41 36
	and ($16.b,X)		; 21 16
	and $12.b		; 25 12
	ora $02.b,X		; 15 02
	ora ($00.b,S),Y		; 13 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	rol $00.b,X		; 36 00
	asl $00.b,X		; 16 00
	ora ($00.b)		; 12 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $F04FF0.l		; 8F F0 4F F0
	cmp [$78.b]		; C7 78
	and [$7E.b]		; 27 7E
	stz $3C.b		; 64 3C
	phk		; 4B
	sec		; 38
	phd		; 0B
	sec		; 38
	and [$10.b]		; 27 10
	inx		; E8
	php		; 08
	inx		; E8
	php		; 08
	ror $690E.w		; 6E 0E 69
	ora #$082B.w		; 09 2B 08
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	ora $0AFD10.l,X		; 1F 10 FD 0A
	sbc $02FF05.l,X		; FF 05 FF 02
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $2A2000.l,X		; FF 00 20 2A
	eor $45.b		; 45 45
	txa		; 8A
	txa		; 8A
	ora ($11.b),Y		; 11 11
	ora ($12.b)		; 12 12
	jsl $222222.l		; 22 22 22 22
	.db $42, $42		; 42 42
	phk		; 4B
	ldx $E5.b,Y		; B6 E5
	inc A		; 1A
	sbc ($0C.b,S),Y		; F3 0C
	xce		; FB
	tsb $FB.b		; 04 FB
	tsb $FE.b		; 04 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $37.b		; 00 37
	stx $5A.b		; 86 5A
	.db $42, $2C		; 42 2C
	jsr $3034.w		; 20 34 30
	sty $90.b,X		; 94 90
	dey		; 88
	dey		; 88
	pha		; 48
	pha		; 48
	mvp $00,$44		; 44 44 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora [$0A.b]		; 07 0A
	tsb $0D1D.w		; 0C 1D 0D
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	php		; 08
	ora $011D0C.l		; 0F 0C 1D 01
	ora [$00.b]		; 07 00
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	bra   8.b		; 80 08
	bra  12.b		; 80 0C
	php		; 08
	sty $02.b		; 84 02
	brk $80.b		; 00 80
	php		; 08
	ror $0000.w		; 6E 00 00
	brk $70.b		; 00 70
	bra -72.b		; 80 B8
	brk $8C.b		; 00 8C
	brk $0F.b		; 00 0F
	brk $87.b		; 00 87
	brk $EF.b		; 00 EF
	bra -49.b		; 80 CF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	php		; 08
	bmi  29.b		; 30 1D
	.db $62, $B0, $5F		; 62 B0 5F
	xce		; FB
	and $C67FD7.l,X		; 3F D7 7F C6
	tda		; 7B
	sty $7B.b		; 84 7B
	lda $3052.w		; AD 52 30
	brk $62.b		; 00 62
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $50.b		; 00 50
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	rol $7E00.w,X		; 3E 00 7E
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $6020.w		; 20 20 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$A0A0.w		; A0 A0 A0
	ldy #$D0C0.w		; A0 C0 D0
	ldy #$39B8.w		; A0 B8 39
	ora $071D.w,X		; 1D 1D 07
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	ldy #$C0F0.w		; A0 F0 C0
	jsr ($FEA0.w,X)		; FC A0 FE
	ora $05FF.w,Y		; 19 FF 05
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	beq -96.b		; F0 A0
	bit $0F3C.w,X		; 3C 3C 0F
	ora $707313.l		; 0F 13 73 70
	ora ($13.b),Y		; 11 13
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0CBF.w		; 20 BF 0C
	and $701F03.l,X		; 3F 03 1F 70
	adc ($11.b,S),Y		; 73 11
	ora ($07.b,S),Y		; 13 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0D0.w		; C0 D0 E0
	beq  60.b		; F0 3C
	adc $6B49.w,Y		; 79 49 6B
	adc $00.b,S		; 63 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F800.w		; E0 00 F8
	cpy #$20FC.w		; C0 FC 20
	sbc $7F48.w,X		; FD 48 7F
	.db $62, $6B, $00		; 62 6B 00
	ora $80.b,S		; 03 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	asl $020E.w		; 0E 0E 02
	cop $01.b		; 02 01
	ora ($1F.b,X)		; 01 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $F1.b		; 00 F1
	cmp ($B8.b,X)		; C1 B8
	sbc ($10.b)		; F2 10
	inc A		; 1A
	adc $79.b,X		; 75 79
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $FB.b		; 00 FB
	cpy #$00FF.w		; C0 FF 00
	sbc $617F10.l,X		; FF 10 7F 61
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	eor ($55.b,X)		; 41 55
	rtl		; 6B

	mvp $42,$7B		; 44 7B 42
	.db $42, $82		; 42 82
	.db $82, $82, $82		; 82 82 82
	sty $84.b		; 84 84
	cmp $45.b		; C5 45
	lda $00883F.l,X		; BF 3F 88 00
	sta $FC01.w,Y		; 99 01 FC
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	tsb $3CD0.w		; 0C D0 3C
	bra  70.b		; 80 46
	clv		; B8
	.db $82, $7C, $03		; 82 7C 03
	jmp ($6401.w,X)		; 7C 01 64
	stz $28.b		; 64 28
	plp		; 28
	bmi  48.b		; 30 30
	pla		; 68
	pla		; 68
	jsr ($7CC4.w,X)		; FC C4 7C
	brk $FE.b		; 00 FE
	cop $FE.b		; 02 FE
	brk $09.b		; 00 09
	phd		; 0B
	clc		; 18
	clc		; 18
	tsb $18.b		; 04 18
	clc		; 18
	clc		; 18
	asl $050E.w		; 0E 0E 05
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	phd		; 0B
	bpl  24.b		; 10 18
	brk $1C.b		; 00 1C
	bpl  31.b		; 10 1F
	php		; 08
	ora $000504.l		; 0F 04 05 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	stz $01.b		; 64 01
	asl $0D.b		; 06 0D
	asl $2626.w		; 0E 26 26
	rol $C814.w		; 2E 14 C8
	bne  64.b		; D0 40
	bpl   0.b		; 10 00
	brk $B8.b		; 00 B8
	xce		; FB
	sec		; 38
	tsa		; 3B
	bit $003F.w,X		; 3C 3F 00
	and [$00.b]		; 27 00
	sbc $00FA80.l,X		; FF 80 FA 00
	bvc   0.b		; 50 00
	brk $07.b		; 00 07
	ora #$170A.w		; 09 0A 17
	asl $2F.b,X		; 16 2F
	asl A		; 0A
	ora $E0EF.w,X		; 1D EF E0
	adc [$F0.b],Y		; 77 F0
	ora $F4.b,S		; 03 F4
	adc $000962.l		; 6F 62 09 00
	ora [$00.b],Y		; 17 00
	and $E01D00.l		; 2F 00 1D E0
	sbc $F3.b,S		; E3 F3
	bvc  -8.b		; 50 F8
	brk $F8.b		; 00 F8
	jmp $95F0.w		; 4C F0 95
	mvp $50,$B2		; 44 B2 50
	cmp $18CF3E.l		; CF 3E CF 18
	sbc ($09.b,S),Y		; F3 09
	cmp #$E434.w		; C9 34 E4
	inc A		; 1A
	sbc ($0D.b)		; F2 0D
	ror $6D06.w		; 6E 06 6D
	ora ($11.b,X)		; 01 11
	bpl  39.b		; 10 27
	jsr $080E.w		; 20 0E 08
	sta [$94.b],Y		; 97 94
	tad		; 5B
	phy		; 5A
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bvc  96.b		; 50 60
	sec		; 38
	bmi   2.b		; 30 02
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq  64.b		; F0 40
	beq  32.b		; F0 20
	sbc $006F00.l,X		; FF 00 6F 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	brk $00.b		; 00 00
	cpy #$3C00.w		; C0 00 3C
	cpy #$F826.w		; C0 26 F8
	inc A		; 1A
	sbc $BF4C.w,X		; FD 4C BF
	dex		; CA
	and $9D72.w,X		; 3D 72 9D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $FD.b		; 00 FD
	brk $BF.b		; 00 BF
	brk $3D.b		; 00 3D
	brk $1D.b		; 00 1D
	brk $26.b		; 00 26
	cmp $C23C.w,Y		; D9 3C C2
	clc		; 18
	rts		; 60

	bne  96.b		; D0 60
	bvc  96.b		; 50 60
	ldy #$0040.w		; A0 40 00
	cpy #$8040.w		; C0 40 80
	sta $8280.w,Y		; 99 80 82
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F8E0.w		; E0 E0 F8
	inc $3E.b,X		; F6 3E
	ror $8E.b,X		; 76 8E
	cpy $E1C0.w		; CC C0 E1
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$F880.w		; E0 80 F8
	cpx #$30FA.w		; E0 FA 30
	inc $FF06.w,X		; FE 06 FF
	brk $CF.b		; 00 CF
	bra -127.b		; 80 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	dex		; CA
	nop		; EA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	dex		; CA
	sbc $713C38.l,X		; FF 38 3C 71
	sei		; 78
	adc $70.b,S		; 63 70
	eor [$60.b]		; 47 60
	asl $3F01.w		; 0E 01 3F
	brk $1F.b		; 00 1F
	ora ($07.b,X)		; 01 07
	phd		; 0B
	bmi 127.b		; 30 7F
	rts		; 60

	inc $FD41.w,X		; FE 41 FD
	cop $FA.b		; 02 FA
	ora $75.b		; 05 75
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $30.b		; 00 30
	rol $7E.b,X		; 36 7E
	sta [$6F.b]		; 87 6F
	bit #$FC43.w		; 89 43 FC
	asl $FAE0.w,X		; 1E E0 FA
	trb $DE.b		; 14 DE
	cpx $FC8E.w		; EC 8E FC
	jsr $76FF.w		; 20 FF 76
	ora $B00771.l		; 0F 71 07 B0
	lda ($80.b),Y		; B1 80
	sta ($14.b,X)		; 81 14
	ora ($EC.b),Y		; 11 EC
	ora ($FC.b,X)		; 01 FC
	ora ($3C.b,X)		; 01 3C
	ora $1B.b,S		; 03 1B
	sty $84.b		; 84 84
.ACCU 8
	sep #$E0		; E2 E0
	sei		; 78
	sei		; 78
	stz $C73E.w,X		; 9E 3E C7
	lsr $37B0.w		; 4E B0 37
	php		; 08
	asl A		; 0A
	dex		; CA
	brk $E0.b		; 00 E0
	sta $FA.b,S		; 83 FA
	adc ($FE.b,X)		; 61 FE
	clc		; 18
	sbc $00DF06.l,X		; FF 06 DF 00
	sta $90C200.l		; 8F 00 C2 90
	rts		; 60

	bvs   0.b		; 70 00
	sed		; F8
	brk $E0.b		; 00 E0
	trb $38C4.w		; 1C C4 38
	tsb $18.b		; 04 18
	bra -12.b		; 80 F4
	cpy #$0058.w		; C0 58 00
	brk $A0.b		; 00 A0
	jsr $4040.w		; 20 40 40
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	cpx #$E880.w		; E0 80 E8
	rti		; 40

	inc $5F37.w,X		; FE 37 5F
	and [$5F.b]		; 27 5F
	rol $5F.b		; 26 5F
	rol $4F.b,X		; 36 4F
	bit $4F.b,X		; 34 4F
	bit $0F.b,X		; 34 0F
	and $0E.b,X		; 35 0E
	and $0E.b,X		; 35 0E
	eor $005F00.l,X		; 5F 00 5F 00
	eor $004F00.l,X		; 5F 00 4F 00
	eor $000F00.l		; 4F 00 0F 00
	asl $0E00.w		; 0E 00 0E
	brk $AF.b		; 00 AF
	bne  -1.b		; D0 FF
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	bra -65.b		; 80 BF
	cpy #$C0BF.w		; C0 BF C0
	lda $0CCCC0.l,X		; BF C0 CC 0C
	sbc ($73.b,S),Y		; F3 73
	cpy $44.b		; C4 44
	iny		; C8
	pha		; 48
	cmp ($51.b),Y		; D1 51
	sbc ($32.b)		; F2 32
.ACCU 8
	sep #$22		; E2 22
	cpx $24.b		; E4 24
	nop		; EA
	ora [$FD.b],Y		; 17 FD
	asl A		; 0A
	sbc $02FF05.l,X		; FF 05 FF 02
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	bra -105.b		; 80 97
	jsr $452A.w		; 20 2A 45
	eor $8A.b		; 45 8A
	txa		; 8A
	ora ($11.b),Y		; 11 11
	ora ($12.b)		; 12 12
	jsl $222222.l		; 22 22 22 22
	cmp ($3C.b,X)		; C1 3C
	eor #$B6.b		; 49 B6
	sbc $1C.b,S		; E3 1C
	sbc [$08.b],Y		; F7 08
	xce		; FB
	tsb $FF.b		; 04 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $36.b		; 00 36
	tsb $32.b		; 04 32
	.db $82, $58, $40		; 82 58 40
	plp		; 28
	jsr $3034.w		; 20 34 30
	bcc -112.b		; 90 90
	dey		; 88
	dey		; 88
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -96.b		; 80 A0
	rti		; 40

	bvs -14.b		; 70 F2
	dec A		; 3A
	dec A		; 3A
	asl $0000.w		; 0E 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$F880.w		; E0 80 F8
	rti		; 40

	jsr ($FF32.w,X)		; FC 32 FF
	asl A		; 0A
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
	cpx #$0005.w		; E0 05 00
	asl $0002.w		; 0E 02 00
	cop $24.b		; 02 24
	trb $302A.w		; 1C 2A 30
	stz $36.b,X		; 74 36
	clc		; 18
	ora ($24.b,X)		; 01 24
	and $0500.w		; 2D 00 05
	cop $0E.b		; 02 0E
	brk $02.b		; 00 02
	tsb $3C.b		; 04 3C
	jsr $303E.w		; 20 3E 30
	adc [$06.b],Y		; 77 06
	ora $002F26.l,X		; 1F 26 2F 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	jsr $0810.w		; 20 10 08
	brk $00.b		; 00 00
	jsr $8CB8.w		; 20 B8 8C
	bcc   0.b		; 90 00
	cpy #$E000.w		; C0 00 E0
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	cpx #$00EC.w		; E0 EC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	tsb $03.b		; 04 03
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	rts		; 60

	tsa		; 3B
	cpy $60.b		; C4 60
	lda $AE7FF6.l,X		; BF F6 7F AE
	sbc $09F78C.l,X		; FF 8C F7 09
	inc $00.b,X		; F6 00
	brk $60.b		; 00 60
	brk $C4.b		; 00 C4
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $E0.b		; 00 E0
	brk $D8.b		; 00 D8
	trb $3FBF.w		; 1C BF 3F
	sta [$3F.b]		; 87 3F
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	lsr $BF80.w,X		; 5E 80 BF
	stz $00FF.w,X		; 9E FF 00
	adc $003F00.l,X		; 7F 00 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	and $2D.b,X		; 35 2D
	adc $FF1F.w		; 6D 1F FF
	sbc $100EEF.l,X		; FF EF 0E 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $FF.b,X		; 35 FF
	ora $FF.b		; 05 FF
	ora $FF0FFF.l,X		; 1F FF 0F FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	ora [$0E.b]		; 07 0E
	ora [$0C.b],Y		; 17 0C
	ora [$19.b],Y		; 17 19
	ora $1B2F19.l		; 0F 19 2F 1B
	and $331F33.l		; 2F 33 1F 33
	eor $170007.l,X		; 5F 07 00 17
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	dec $FF5C.w,X		; DE 5C FF
	bcc  -1.b		; 90 FF
	bpl  -1.b		; 10 FF
	rts		; 60

	lda $F3A35C.l,X		; BF 5C A3 F3
	sty $FC83.w		; 8C 83 FC
	dec $FF00.w,X		; DE 00 FF
	ora $FC.b,S		; 03 FC
	tsb $FC.b		; 04 FC
	tsb $B8.b		; 04 B8
	php		; 08
	ldy #$8C00.w		; A0 00 8C
	tsb $33F3.w		; 0C F3 33
	eor $3C.b,S		; 43 3C
	eor $3D.b,S		; 43 3D
	lda [$1B.b]		; A7 1B
	ora $BF5FA7.l,X		; 1F A7 5F BF
	cmp $1FAE3F.l,X		; DF 3F AE 1F
	dec $2F.b,X		; D6 2F
	jsr $21A0.w		; 20 A0 21
	lda ($13.b,X)		; A1 13
	eor ($07.b,S),Y		; 53 07
	adc [$0F.b]		; 67 0F
	and $063F0E.l,X		; 3F 0E 3F 06
	eor $D8AF82.l,X		; 5F 82 AF D8
	rol $47BE.w,X		; 3E BE 47
	eor $FC73A3.l,X		; 5F A3 73 FC
	adc [$F4.b]		; 67 F4
	ror $6FFF.w		; 6E FF 6F
	ora $182D57.l,X		; 1F 57 2D 18
	cmp $033F06.l,X		; DF 06 3F 03
	lda $78FF40.l,X		; BF 40 FF 78
	sbc [$65.b],Y		; F7 65
	sbc [$0E.b]		; E7 0E
	stx $8527.w		; 8E 27 85
	and $0E.b,X		; 35 0E
	ora $2A.b,X		; 15 2A
	trb $0B.b		; 14 0B
	clc		; 18
	ora $0A.b,S		; 03 0A
	ora ($08.b),Y		; 11 08
	ora ($00.b,X)		; 01 00
	ora #$01.b		; 09 01
	brk $0E.b		; 00 0E
	brk $2A.b		; 00 2A
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	cpx #$70CF.w		; E0 CF 70
	cmp $78A770.l		; CF 70 A7 78
	lda ($7E.b,X)		; A1 7E
	sbc ($2F.b,S),Y		; F3 2F
	bne  44.b		; D0 2C
	sta $2C.b,X		; 95 2C
	sed		; F8
	clc		; 18
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	ror $06.b,X		; 76 06
	adc ($03.b,S),Y		; 73 03
	bit $04.b		; 24 04
	and [$04.b]		; 27 04
	pld		; 2B
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	ror $A441.w,X		; 7E 41 A4
	tsa		; 3B
	.db $42, $42		; 42 42
	.db $42, $42		; 42 42
	.db $82, $82, $82		; 82 82 82
	.db $82, $84, $84		; 82 84 84
	eor $45.b		; 45 45
	lda $01C93F.l,X		; BF 3F C9 01
	inc $FC00.w,X		; FE 00 FC
	brk $FC.b		; 00 FC
	brk $F4.b		; 00 F4
	php		; 08
	pea $C838.w		; F4 38 C8
	jmp $86B0.w		; 4C B0 86
	jmp ($4406.w,X)		; 7C 06 44
	mvp $64,$64		; 44 64 64
	plp		; 28
	plp		; 28
	bmi  48.b		; 30 30
	pha		; 48
	pha		; 48
	bcs -128.b		; B0 80
	jmp ($F804.w,X)		; 7C 04 F8
	brk $0A.b		; 00 0A
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	phd		; 0B
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	bit $0E3D.w,X		; 3C 3D 0E
	ora $747733.l,X		; 1F 33 77 74
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	cpy #$30FE.w		; C0 FE 30
	sbc $123F0C.l,X		; FF 0C 3F 12
	and $067774.l,X		; 3F 74 77 06
	asl $00.b		; 06 00
	brk $60.b		; 00 60
	rts		; 60

	bpl  96.b		; 10 60
	rts		; 60

	rts		; 60

	sec		; 38
	sec		; 38
	ora [$17.b],Y		; 17 17
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	brk $70.b		; 00 70
	rti		; 40

	jmp ($3F20.w,X)		; 7C 20 3F
	ora ($17.b)		; 12 17
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	bit $38.b,X		; 34 38
	txy		; 9B
	tya		; 98
	tyx		; BB
	eor ($22.b,S),Y		; 53 22
	eor $00.b,S		; 43 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0EE.w		; E0 EE F0
	sbc $039F00.l,X		; FF 00 9F 03
	sbc $00EB00.l,X		; FF 00 EB 00
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$08.b]		; 07 08
	ora $2E1512.l		; 0F 12 15 2E
	and $555E.w		; 2D 5E 55
	dec A		; 3A
	lda $C0DF80.l,X		; BF 80 DF C0
	ora [$C0.b]		; 07 C0
	php		; 08
	brk $12.b		; 00 12
	brk $2E.b		; 00 2E
	brk $5E.b		; 00 5E
	brk $3A.b		; 00 3A
	bra -126.b		; 80 82
	rep #$41		; C2 41
	sbc ($00.b,X)		; E1 00
	sed		; F8
	phy		; 5A
	lda $2A.b		; A5 2A
	bit #$64.b		; 89 64
	lda ($9E.b,X)		; A1 9E
	jmp ($309F.w,X)		; 7C 9F 30
	inc $12.b		; E6 12
	sta ($68.b,S),Y		; 93 68
	iny		; C8
	and $A0.b,X		; 35 A0
	brk $DD.b		; 00 DD
	ora $03DB.w		; 0D DB 03
	and $20.b,S		; 23 20
	eor $111D40.l		; 4F 40 1D 11
	and $B5B728.l		; 2F 28 B7 B5
	and #$07.b		; 29 07
	plp		; 28
	asl $08.b		; 06 08
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $02.b		; 04 02
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $EC.b		; 00 EC
	phd		; 0B
	cpx #$E00F.w		; E0 0F E0
	ora $F11FF0.l		; 0F F0 1F F1
	asl $1EE0.w,X		; 1E E0 1E
.INDEX 16
	rep #$1C		; C2 1C
	cpx #$F33C.w		; E0 3C F3
	brk $FF.b		; 00 FF
	php		; 08
	sbc $00E708.l,X		; FF 08 E7 00
	inc $00.b		; E6 00
	inc $EC10.w,X		; FE 10 EC
	brk $CC.b		; 00 CC
	brk $9E.b		; 00 9E
	rti		; 40

	lda $608F60.l,X		; BF 60 8F 60
	ora $300730.l,X		; 1F 30 07 30
	ora $0C0718.l		; 0F 18 07 0C
	ora $0E.b,S		; 03 0E
	adc $001F40.l,X		; 7F 40 1F 00
	and $000F20.l,X		; 3F 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	cpy #$8060.w		; C0 60 80
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	clc		; 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	and $003F00.l,X		; 3F 00 3F 00
	ora $001B00.l,X		; 1F 00 1B 00
	ora #$00.b		; 09 00
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
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$2707.w		; C0 07 27
	and ($23.b),Y		; 31 23
	cpx #$00FB.w		; E0 FB 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F800.w		; E0 00 F8
	brk $FF.b		; 00 FF
	ora $BF.b,S		; 03 BF
	and ($FF.b,X)		; 21 FF
	cpy #$00FF.w		; C0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	bmi  96.b		; 30 60
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bcc -112.b		; 90 90
	ldy $34.b,X		; B4 34
	ora $06.b		; 05 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	bra  -8.b		; 80 F8
	jsr $04BF.w		; 20 BF 04
	and $000F02.l,X		; 3F 02 0F 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	bra  76.b		; 80 4C
	beq  52.b		; F0 34
	plx		; FA
	tya		; 98
	ror $7A94.w,X		; 7E 94 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	plx		; FA
	brk $7E.b		; 00 7E
	brk $7A.b		; 00 7A
	brk $E4.b		; 00 E4
	dec A		; 3A
	jmp $78B2.w		; 4C B2 78
	sty $30.b		; 84 30
	cpy #$C0A0.w		; C0 A0 C0
	ldy #$40C0.w		; A0 C0 40
	bra   0.b		; 80 00
	bra  58.b		; 80 3A
	brk $32.b		; 00 32
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	ora $001F00.l,X		; 1F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	adc $007E00.l,X		; 7F 00 7E 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	beq   0.b		; F0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora ($07.b,X)		; 01 07
	ora [$06.b]		; 07 06
	asl $0C.b		; 06 0C
	tsb $0401.w		; 0C 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($0C.b,X)		; 01 0C
	ora $1C.b		; 05 1C
	phd		; 0B
	sec		; 38
	asl $70.b,X		; 16 70
	and $040761.l		; 2F 61 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $405E20.l		; 2F 20 5E 40
	cpy #$C43C.w		; C0 3C C4
	sec		; 38
	sty $38.b		; 84 38
	bne  72.b		; D0 48
	php		; 08
	rti		; 40

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	jsr ($D820.w,X)		; FC 20 D8
	brk $D8.b		; 00 D8
	brk $88.b		; 00 88
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	beq  24.b		; F0 18
	pla		; 68
	tsb $84F0.w		; 0C F0 84
	bit $1C84.w,X		; 3C 84 1C
	tya		; 98
	jmp ($1EF4.w)		; 6C F4 1E
	cpx $D83E.w		; EC 3E D8
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	jmp ($F804.w,X)		; 7C 04 F8
	bra  96.b		; 80 60
	brk $10.b		; 00 10
	trb $68.b		; 14 68
	jmp ($1818.w)		; 6C 18 18
	jsr ($7E01.w,X)		; FC 01 7E
	xce		; FB
	jsr ($FC0A.w,X)		; FC 0A FC
	asl A		; 0A
	pea $F808.w		; F4 08 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $03.b		; 00 03
	ora ($38.b,X)		; 01 38
	sed		; F8
	asl A		; 0A
	txa		; 8A
	brk $08.b		; 00 08
	bra -120.b		; 80 88
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $BEB0.w,X		; 7E B0 BE
	rts		; 60

	rol $7E40.w,X		; 3E 40 7E
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $10.b		; 00 10
	bmi   4.b		; 30 04
	stz $04.b		; 64 04
	cpy $04.b		; C4 04
	sty $04.b		; 84 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $3F.b		; 02 3F
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	inc $FE00.w,X		; FE 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora [$01.b]		; 07 01
	asl $0D03.w		; 0E 03 0D
	ora [$0A.b]		; 07 0A
	ora $001F04.l		; 0F 04 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $05.b		; 05 05
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $0A.b		; 02 0A
	tsb $04.b		; 04 04
	tsb $000C.w		; 0C 0C 00
	cpx #$A0C0.w		; E0 C0 A0
	cpx #$E0C0.w		; E0 C0 E0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $62, $FD, $6A		; 62 FD 6A
	sbc $6B.b,X		; F5 6B
	pea $F42B.w		; F4 2B F4
	and $F42BF0.l		; 2F F0 2B F4
	and #$76.b		; 29 76
	bit $FD73.w		; 2C 73 FD
	brk $F5.b		; 00 F5
	brk $F5.b		; 00 F5
	ora ($F6.b,X)		; 01 F6
	cop $F4.b		; 02 F4
	tsb $F6.b		; 04 F6
	cop $77.b		; 02 77
	ora ($73.b,X)		; 01 73
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $D2.b		; 00 D2
	eor ($94.b)		; 52 94
	sty $24.b,X		; 94 24
	bit $28.b		; 24 28
	plp		; 28
	eor #$49.b		; 49 49
	eor #$49.b		; 49 49
	sta ($81.b,X)		; 81 81
	sta ($91.b),Y		; 91 91
	sbc $00FF18.l,X		; FF 18 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	stp		; DB
	stp		; DB
	lda $A5.b		; A5 A5
	tya		; 98
	tya		; 98
	sta ($92.b)		; 92 92
	ora ($12.b)		; 12 12
	ora ($12.b)		; 12 12
	ora ($12.b)		; 12 12
	ora ($11.b),Y		; 11 11
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	plx		; FA
	ora $FA.b		; 05 FA
	ora $00.b		; 05 00
	brk $46.b		; 00 46
	lsr $A2.b		; 46 A2
	ldx #$9090.w		; A2 90 90
	pha		; 48
	pha		; 48
	eor ($40.b,X)		; 41 40
	and $20.b		; 25 20
	and $20.b		; 25 20
	ora [$F0.b],Y		; 17 F0
	eor [$B0.b],Y		; 57 B0
	eor [$B0.b]		; 47 B0
	eor [$B0.b]		; 47 B0
	lda $18AF18.l		; AF 18 AF 18
	and ($08.b,S),Y		; 33 08
	adc ($08.b,S),Y		; 73 08
	cmp $008F00.l		; CF 00 8F 00
	lda $10BF10.l,X		; BF 10 BF 10
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	sta $608E61.l		; 8F 61 8E 60
	stx $8E60.w		; 8E 60 8E
	rts		; 60

	stx $8E60.w		; 8E 60 8E
	rts		; 60

	sta $618D61.l		; 8F 61 8D 61
	dec $DF40.w,X		; DE 40 DF
	rti		; 40

	cmp $40DF40.l,X		; DF 40 DF 40
	cmp $40DF40.l,X		; DF 40 DF 40
	dec $DE40.w,X		; DE 40 DE
	rti		; 40

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
	ora $00.b,S		; 03 00
	ora ($06.b,X)		; 01 06
	ora $0C.b,S		; 03 0C
	asl $0B.b,X		; 16 0B
	ora $0F3A27.l,X		; 1F 27 3A 0F
	cli		; 58
	and $006FB0.l		; 2F B0 6F 00
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $0B.b		; 00 0B
	brk $27.b		; 00 27
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $6F.b		; 00 6F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $B8.b		; 00 B8
	rti		; 40

	ora [$F8.b]		; 07 F8
	stz $FF.b		; 64 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	wai		; CB
	adc [$99.b],Y		; 77 99
	adc [$00.b]		; 67 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $77.b		; 00 77
	brk $67.b		; 00 67
	brk $FC.b		; 00 FC
	.db $82, $BC, $C2		; 82 BC C2
	jmp ($E683.w,X)		; 7C 83 E6
	tas		; 1B
	mvp $47,$B9		; 44 B9 47
	lda $18E6.w,Y		; B9 E6 18
	phd		; 0B
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	php		; 08
	ora ($12.b,S),Y		; 13 12
	clc		; 18
	clc		; 18
	lda $A1.b,S		; A3 A1
	.db $82, $80, $03		; 82 80 03
	brk $07.b		; 00 07
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	cli		; 58
	trb $0F3F.w		; 1C 3F 0F
	and $001E07.l,X		; 3F 07 1E 00
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$18.b		; A0 18
	sbc $07FF0C.l,X		; FF 0C FF 07
	adc $003F00.l,X		; 7F 00 3F 00
	ora $493B54.l,X		; 1F 54 3B 49
	lda [$90.b],Y		; B7 90
	jmp ($18E6.w)		; 6C E6 18
	ora $01.b		; 05 01
	brk $F9.b		; 00 F9
	sed		; F8
	inc $06FE.w,X		; FE FE 06
	and $B201.w,Y		; 39 01 B2
	cop $67.b		; 02 67
	tsb $0F.b		; 04 0F
	php		; 08
	asl $F8.b		; 06 F8
	ora ($FF.b,X)		; 01 FF
	sed		; F8
	sbc $1FFF06.l,X		; FF 06 FF 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
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
	cpy #$00.b		; C0 00
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
	brk $00.b		; 00 00
	rol $79.b		; 26 79
	asl $79.b		; 06 79
	asl $39.b		; 06 39
	cop $3D.b		; 02 3D
	rol $11.b		; 26 11
	bit $13.b		; 24 13
	trb $03.b		; 14 03
	ora ($01.b)		; 12 01
	adc $7900.w,Y		; 79 00 79
	brk $39.b		; 00 39
	brk $3D.b		; 00 3D
	brk $11.b		; 00 11
	brk $13.b		; 00 13
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$BF.b		; C0 BF
	rti		; 40

	sta $7E8370.l		; 8F 70 83 7E
	cmp ($3C.b,X)		; C1 3C
	cmp ($3C.b,X)		; C1 3C
	cmp $3C.b		; C5 3C
	cmp ($52.b)		; D2 52
	cmp ($12.b)		; D2 12
	eor ($12.b)		; 52 12
	adc $04740F.l,X		; 7F 0F 74 04
	and [$04.b],Y		; 37 04
	and [$04.b],Y		; 37 04
	and ($00.b,S),Y		; 33 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($A203.w,X)		; FC 03 A2
	rol $1CC5.w,X		; 3E C5 1C
	cmp $18.b,S		; C3 18
	ora ($01.b,X)		; 01 01
	and ($21.b,X)		; 21 21
	and ($21.b,X)		; 21 21
	rol $26.b		; 26 26
	cmp ($C1.b,X)		; C1 C1
	cmp $14.b,X		; D5 14
	sbc ($10.b,S),Y		; F3 10
	sbc [$10.b],Y		; F7 10
	nop		; EA
	ora $E0.b,X		; 15 E0
	ora $225DA2.l,X		; 1F A2 5D 22
	cmp $4D32.w,X		; DD 32 4D
	lda ($4C.b,S),Y		; B3 4C
	lda $48.b,X		; B5 48
	cmp $68.b,X		; D5 68
	ora $00.b,X		; 15 00
	sta $001D80.l,X		; 9F 80 1D 00
	sta $8D80.w,X		; 9D 80 8D
	brk $CC.b		; 00 CC
	rti		; 40

	iny		; C8
	rti		; 40

	dey		; 88
	brk $73.b		; 00 73
	php		; 08
	adc ($08.b,S),Y		; 73 08
	sbc ($08.b,S),Y		; F3 08
	sbc ($08.b,S),Y		; F3 08
	sbc ($08.b,S),Y		; F3 08
	sbc [$08.b]		; E7 08
	dec $0D18.w		; CE 18 0D
	ora $0007.w,X		; 1D 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	stx $1063.w		; 8E 63 10
	adc ($0C.b,S),Y		; 73 0C
	ror $7E00.w,X		; 7E 00 7E
	brk $5C.b		; 00 5C
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	sta $8E01.w,X		; 9D 01 8E
	cop $92.b		; 02 92
	ora ($9C.b)		; 12 9C
	trb $0080.w		; 1C 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	inx		; E8
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
	cmp $6A.b,X		; D5 6A
	lda ($C8.b)		; B2 C8
	dec $AA.b,X		; D6 AA
	and $E9F7.w,Y		; 39 F7 E9
	adc ($CE.b,S),Y		; 73 CE
	sbc ($FD.b),Y		; F1 FD
	cop $FD.b		; 02 FD
	ora $6A.b,S		; 03 6A
	brk $CD.b		; 00 CD
	brk $AD.b		; 00 AD
	brk $F2.b		; 00 F2
	cop $74.b		; 02 74
	tsb $F1.b		; 04 F1
	ora ($00.b,X)		; 01 00
	brk $60.b		; 00 60
	rts		; 60

	ldx $A453.w		; AE 53 A4
	txy		; 9B
	eor [$18.b]		; 47 18
	sbc $CC.b,S		; E3 CC
	plx		; FA
	tsb $2C6A.w		; 0C 6A 2C
	bit $88.b,X		; 34 88
	sty $78.b		; 84 78
	ora $00.b,S		; 03 00
	cmp ($D0.b,S),Y		; D3 D0
	bcs  48.b		; B0 30
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	bne  16.b		; D0 10
	sed		; F8
	dey		; 88
	bmi  48.b		; 30 30
	tsb $F4.b		; 04 F4
	sbc ($FB.b,S),Y		; F3 FB
	xce		; FB
	ora $7DC8B6.l		; 0F B6 C8 7D
	sbc $60.b,S		; E3 60
	adc $FF453A.l,X		; 7F 3A 45 FF
	bra   0.b		; 80 00
	xce		; FB
	beq  -1.b		; F0 FF
	phd		; 0B
	sbc $00E609.l,X		; FF 09 E6 00
	cpx #$7D.b		; E0 7D
	sbc ($04.b,X)		; E1 04
	cpy #$20.b		; C0 20
	ldy #$80.b		; A0 80
	bra   0.b		; 80 00
	rti		; 40

	brk $7E.b		; 00 7E
	inc $FF7F.w,X		; FE 7F FF
	ora ($53.b,X)		; 01 53
	bit $A01C.w		; 2C 1C A0
	sec		; 38
	cmp [$00.b]		; C7 00
	rti		; 40

	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	ror $81FF.w,X		; 7E FF 81
	adc $C023EC.l,X		; 7F EC 23 C0
	sta $00.b,S		; 83 00
	ora [$01.b]		; 07 01
	brk $01.b		; 00 01
	php		; 08
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $001F.w		; 0C 1F 00
	ora $0E0708.l		; 0F 08 07 0E
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $F6.b		; 00 F6
	ora #$B7.b		; 09 B7
	php		; 08
	adc $FA06.w,Y		; 79 06 FA
	ora $FC.b		; 05 FC
	ora $CE.b,S		; 03 CE
	and ($CB.b),Y		; 31 CB
	bit $CF.b,X		; 34 CF
	bmi  17.b		; 30 11
	dec $08.b,X		; D6 08
	cpy #$06.b		; C0 06
	bra   5.b		; 80 05
	ora ($02.b,X)		; 01 02
	cop $30.b		; 02 30
	brk $36.b		; 00 36
	cop $35.b		; 02 35
	ora $4B.b		; 05 4B
	tsb $0D.b		; 04 0D
	rti		; 40

	ora $0900.w		; 0D 00 09
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	bra  64.b		; 80 40
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
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl -128.b		; 10 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	sty $EBC8.w		; 8C C8 EB
	phd		; 0B
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx $00.b		; E4 00
	sbc $FF08.w,X		; FD 08 FF
	ora $CF.b,S		; 03 CF
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	jsr ($027F.w,X)		; FC 7F 02
	jsr ($E018.w,X)		; FC 18 E0
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra 124.b		; 80 7C
	adc $00FF00.l,X		; 7F 00 FF 00
	inc $7000.w,X		; FE 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
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
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora $05.b		; 05 05
	phd		; 0B
	asl A		; 0A
	ora [$15.b],Y		; 17 15
	rol $0F3C.w		; 2E 3C 0F
	pld		; 2B
	jmp $000000.l		; 5C 00 00 00
	brk $05.b		; 00 05
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $2E.b		; 00 2E
	brk $0F.b		; 00 0F
	brk $5C.b		; 00 5C
	brk $FF.b		; 00 FF
	sta ($FE.b,X)		; 81 FE
	sbc ($4F.b,X)		; E1 4F
	beq  67.b		; F0 43
	jsr ($FE41.w,X)		; FC 41 FE
	ora ($3E.b,X)		; 01 3E
	ora ($E0.b,X)		; 01 E0
	cpy #$DE.b		; C0 DE
	bpl -112.b		; 10 90
	php		; 08
	pla		; 68
	pea $CCF4.w		; F4 F4 CC
	cpy $4242.w		; CC 42 42
	brk $C0.b		; 00 C0
	brk $DE.b		; 00 DE
	cpy #$FF.b		; C0 FF
	dec $9F1F.w,X		; DE 1F 9F
	and ($51.b,X)		; 21 51
	ldx $BE7F.w		; AE 7F BE
	adc [$BF.b],Y		; 77 BF
	sbc [$37.b],Y		; F7 37
	xce		; FB
	phd		; 0B
	jsr ($1E04.w,X)		; FC 04 1E
	sbc $807F01.l,X		; FF 01 7F 80
	lda $323F00.l,X		; BF 00 3F 32
	and $E97F73.l,X		; 3F 73 7F E9
	sbc $007774.l		; EF 74 77 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	beq -28.b		; F0 E4
	tsb $1E16.w		; 0C 16 1E
	asl $88EE.w,X		; 1E EE 88
	beq  64.b		; F0 40
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	sbc $04FFF0.l,X		; FF F0 FF 04
	sbc $0EFF16.l,X		; FF 16 FF 0E
	sbc $00FE80.l,X		; FF 80 FE 00
	beq -128.b		; F0 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	ldy #$00.b		; A0 00
	cpx #$40.b		; E0 40
	ldy #$40.b		; A0 40
	ldy #$C0.b		; A0 C0
	jsr $4080.w		; 20 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	cpx #$00.b		; E0 00
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ldy $7F3C.w,X		; BC 3C 7F
	adc $301303.l,X		; 7F 03 13 30
	adc $77.b,X		; 75 77
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	bra  -1.b		; 80 FF
	bit $03FF.w,X		; 3C FF 03
	sbc $753310.l,X		; FF 10 33 75
	adc [$03.b],Y		; 77 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpy #$E2.b		; C0 E2
	xce		; FB
	xce		; FB
	tas		; 1B
	sei		; 78
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FB.b		; 00 FB
	cpy #$FF.b		; C0 FF
	inc A		; 1A
	sbc $007B60.l,X		; FF 60 7B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	rts		; 60

	adc ($7B.b)		; 72 7B
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $FB.b		; 00 FB
	rts		; 60

	sbc $007702.l,X		; FF 02 77 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	cop $05.b		; 02 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $98.b		; 00 98
	bra  12.b		; 80 0C
	txa		; 8A
	tsb $04.b		; 04 04
	rti		; 40

	ora $85.b,S		; 03 85
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	jsr $7800.w		; 20 00 78
	bra -97.b		; 80 9F
	brk $8F.b		; 00 8F
	brk $06.b		; 00 06
	brk $C7.b		; 00 C7
	brk $F5.b		; 00 F5
	and ($48.b,S),Y		; 33 48
	and ($48.b,S),Y		; 33 48
	and [$4C.b],Y		; 37 4C
	and ($4C.b,X)		; 21 4C
	ora ($64.b,X)		; 01 64
	ora $46.b,S		; 03 46
	ora ($06.b,X)		; 01 06
	brk $02.b		; 00 02
	eor $004708.l		; 4F 08 47 00
	eor $00.b,S		; 43 00
	eor [$04.b]		; 47 04
	adc $00.b,S		; 63 00
	eor ($00.b,X)		; 41 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	cmp ($10.b,X)		; C1 10
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	beq  16.b		; F0 10
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	beq   8.b		; F0 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bmi  29.b		; 30 1D
	.db $62, $B0, $5F		; 62 B0 5F
	xce		; FB
	and $C67FD7.l,X		; 3F D7 7F C6
	tda		; 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	.db $62, $00, $5F		; 62 00 5F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $3C.b		; 00 3C
	cpy #$26.b		; C0 26
	sed		; F8
	ora ($FD.b)		; 12 FD
	cli		; 58
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $FD.b		; 00 FD
	brk $BF.b		; 00 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   2.b		; 80 02
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $06.b		; 02 06
	ora #$17.b		; 09 17
	and $A4BF5E.l		; 2F 5E BF A4
	adc $00FE49.l,X		; 7F 49 FE 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $09.b		; 00 09
	brk $2F.b		; 00 2F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $2B.b		; 00 2B
	eor [$2F.b],Y		; 57 2F
	eor [$4F.b],Y		; 57 4F
	ora [$4E.b],Y		; 17 4E
	ora [$4E.b],Y		; 17 4E
	ora [$0C.b],Y		; 17 0C
	eor [$0C.b],Y		; 57 0C
	ora [$0D.b],Y		; 17 0D
	asl $57.b		; 06 57
	brk $57.b		; 00 57
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $57.b		; 00 57
	brk $17.b		; 00 17
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
.ACCU 16
.INDEX 16
	rep #$B1		; C2 B1
	dec $DE25.w		; CE 25 DE
	and $6DDE.w		; 2D DE 6D
	stz $9E69.w,X		; 9E 69 9E
	rtl		; 6B

	stz $9966.w		; 9C 66 99
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $DE00.w		; CE 00 DE
	brk $DE.b		; 00 DE
	brk $9E.b		; 00 9E
	brk $9E.b		; 00 9E
	brk $9C.b		; 00 9C
	brk $99.b		; 00 99
	ora ($70.b,X)		; 01 70
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	pha		; 48
	plp		; 28
	pei ($3C.b)		; D4 3C
	cmp $06.b,S		; C3 06
	ora $E000.w,Y		; 19 00 E0
	ldy #$10A0.w		; A0 A0 10
	bpl   0.b		; 10 00
	brk $48.b		; 00 48
	rti		; 40

	sty $80.b,X		; 94 80
	ora $00.b,S		; 03 00
	ora $00E0.w,Y		; 19 E0 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($FE.b,X)		; E1 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E1.b		; 00 E1
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	sed		; F8
	tad		; 5B
	jmp.w [$18C7]		; DC C7 18
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	beq -16.b		; F0 F0
	sbc $FF0FFF.l,X		; FF FF 0F FF
	brk $50.b		; 00 50
	bvc -96.b		; 50 A0
	bra -16.b		; 80 F0
	bpl   1.b		; 10 01
	sbc $00.b,X		; F5 00
	sbc $0FFFF0.l,X		; FF F0 FF 0F
	sbc $F40F00.l,X		; FF 00 0F F4
	phd		; 0B
	sbc ($0C.b,S),Y		; F3 0C
	sbc $7906.w,Y		; F9 06 79
	stx $3B.b		; 86 3B
	mvp $91,$02		; 44 02 91
	.db $82, $EC, $EC		; 82 EC EC
	adc $0101.w		; 6D 01 01
	php		; 08
	php		; 08
	asl $06.b		; 06 06
	stx $86.b		; 86 86
	rti		; 40

	cpy #$FD11.w		; C0 11 FD
	bra  -3.b		; 80 FD
	jmp ($FFFF.w)		; 6C FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $90.b		; 00 90
	bcc -95.b		; 90 A1
	lda ($24.b,X)		; A1 24
	bit $04.b		; 24 04
	tsb $44.b		; 04 44
	mvp $44,$44		; 44 44 44
	tsb $04.b		; 04 04
	dey		; 88
	dey		; 88
	sbc $00FF60.l,X		; FF 60 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	eor ($61.b,X)		; 41 61
	php		; 08
	php		; 08
	ldx $A6.b		; A6 A6
	sta ($91.b),Y		; 91 91
	pha		; 48
	pha		; 48
	mvp $02,$44		; 44 44 02
	cop $21.b		; 02 21
	and ($0E.b,X)		; 21 0E
	asl $02.b		; 06 02
	ora ($05.b,X)		; 01 05
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	asl $03.b		; 06 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $06.b		; 00 06
	asl $0300.w		; 0E 00 03
	tsb $05.b		; 04 05
	brk $02.b		; 00 02
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	bit #$C238.w		; 89 38 C2
	sbc $11.b,S		; E3 11
	ora ($0B.b),Y		; 11 0B
	ora #$0305.w		; 09 05 03
	cmp #$E4CA.w		; C9 CA E4
	sed		; F8
	brk $00.b		; 00 00
	lsr $DEEF.w		; 4E EF DE
	inc $1D0D.w,X		; FE 0D 1D
	brk $0B.b		; 00 0B
	brk $CF.b		; 00 CF
	brk $FF.b		; 00 FF
	ldy #$00FC.w		; A0 FC 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $043D.w		; 0E 3D 04
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	beq   8.b		; F0 08
	sei		; 78
	php		; 08
	sed		; F8
	dey		; 88
	sei		; 78
	dey		; 88
	cpx #$6088.w		; E0 88 60
	php		; 08
	cpy #$8018.w		; C0 18 80
	bmi  -8.b		; 30 F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	sei		; 78
	php		; 08
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$8420.w		; E0 20 84
	tda		; 7B
	lda $9552.w		; AD 52 95
	mvp $50,$B2		; 44 B2 50
	cmp $18CF3E.l		; CF 3E CF 18
	sbc ($09.b,S),Y		; F3 09
	sbc #$7B14.w		; E9 14 7B
	brk $50.b		; 00 50
	brk $6E.b		; 00 6E
	asl $6D.b		; 06 6D
	ora ($11.b,X)		; 01 11
	bpl -89.b		; 10 A7
	ldy #$080E.w		; A0 0E 08
	ora [$04.b]		; 07 04
	dex		; CA
	and $9D72.w,X		; 3D 72 9D
	rol $D9.b		; 26 D9
	bit $18C2.w,X		; 3C C2 18
	rts		; 60

	bne  96.b		; D0 60
	bvc  96.b		; 50 60
	ldy #$3D40.w		; A0 40 3D
	brk $1D.b		; 00 1D
	brk $99.b		; 00 99
	bra -126.b		; 80 82
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	phx		; DA
	sta $5B.b		; 85 5B
	sta $B3.b,S		; 83 B3
	lda [$A1.b],Y		; B7 A1
	and [$08.b],Y		; 37 08
	and ($1C.b,S),Y		; 33 1C
	and ($34.b,X)		; 21 34
	lsr A		; 4A
	rol $5B.b		; 26 5B
	ora $F8.b		; 05 F8
	ora $FF.b,S		; 03 FF
	and ($FF.b),Y		; 31 FF
	brk $FF.b		; 00 FF
	bmi  71.b		; 30 47
	jsr $4A03.w		; 20 03 4A
	ora ($5B.b,X)		; 01 5B
	brk $13.b		; 00 13
	jsr ($318E.w,X)		; FC 8E 31
	sbc ($85.b,X)		; E1 85
	cpy #$F4F4.w		; C0 F4 F4
	sbc $33.b,X		; F5 33
	ora #$003F.w		; 09 3F 00
	rol $81.b,X		; 36 81
	jsr ($3000.w,X)		; FC 00 30
	rti		; 40

	bra -102.b		; 80 9A
	cpy #$34FF.w		; C0 FF 34
	sbc $02FF03.l,X		; FF 03 FF 02
	xce		; FB
	sta ($78.b,X)		; 81 78
	ora $0D06.w		; 0D 06 0D
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6E.b		; 00 6E
	sta ($65.b),Y		; 91 65
	txs		; 9A
	lda [$48.b],Y		; B7 48
	lda [$48.b],Y		; B7 48
	eor [$A8.b],Y		; 57 A8
	eor [$A8.b],Y		; 57 A8
	and $502F50.l		; 2F 50 2F 50
	bcc   0.b		; 90 00
	txs		; 9A
	brk $49.b		; 00 49
	ora ($49.b,X)		; 01 49
	ora ($AA.b,X)		; 01 AA
	cop $AA.b		; 02 AA
	cop $52.b		; 02 52
	cop $51.b		; 02 51
	ora ($E0.b,X)		; 01 E0
	sbc $1F1FFF.l,X		; FF FF 1F 1F
	cpx #$A47A.w		; E0 7A A4
	inc $FE36.w,X		; FE 36 FE
	rol $F7.b,X		; 36 F7
	ora [$FF.b],Y		; 17 FF
	ora $1FFFE0.l		; 0F E0 FF 1F
	sbc $00FF00.l,X		; FF 00 FF 00
	rol $20.b,X		; 36 20
	rol $36.b,X		; 36 36
	and [$57.b],Y		; 37 57
	eor $484F4F.l,X		; 5F 4F 4F 48
	brk $30.b		; 00 30
	ldy $B0.b,X		; B4 B0
	inc $6C.b,X		; F6 6C
	ora $02.b		; 05 02
	ora $03.b,S		; 03 03
	ora $F1.b		; 05 F1
	inc $F008.w,X		; FE 08 F0
	brk $B4.b		; 00 B4
	brk $FF.b		; 00 FF
	bcs  -1.b		; B0 FF
	tsb $6F.b		; 04 6F
	cop $07.b		; 02 07
	ora ($FF.b,X)		; 01 FF
	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	sbc [$00.b],Y		; F7 00
	inc $41.b,X		; F6 41
	txa		; 8A
	adc ($0B.b),Y		; 71 0B
	beq  18.b		; F0 12
	sbc ($D8.b,X)		; E1 D8
	and ($3C.b,X)		; 21 3C
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	sta ($00.b,X)		; 81 00
	tsb $0D41.w		; 0C 41 0D
	adc ($75.b),Y		; 71 75
	bra -122.b		; 80 86
	brk $0F.b		; 00 0F
	bpl  23.b		; 10 17
	tay		; A8
	plb		; AB
	pha		; 48
	eor #$11ED.w		; 49 ED 11
	ora $1DF2.w		; 0D F2 1D
	nop		; EA
	and $3BF7DB.l,X		; 3F DB F7 3B
	sbc [$F3.b]		; E7 F3
	eor [$68.b]		; 47 68
	sta $6F0190.l		; 8F 90 01 6F
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	bcc -101.b		; 90 9B
	and $3B.b,S		; 23 3B
	eor $FB.b,S		; 43 FB
	brk $F8.b		; 00 F8
	stx $F6.b		; 86 F6
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $A05F20.l,X		; DF 20 5F A0
	rti		; 40

	lda $23BF41.l,X		; BF 41 BF 23
	dec $FC07.w,X		; DE 07 FC
	dey		; 88
	dey		; 88
	pla		; 68
	pla		; 68
	clc		; 18
	clc		; 18
	sta $00801F.l,X		; 9F 1F 80 00
	stx $CD0E.w		; 8E 0E CD
	tsb $08EB.w		; 0C EB 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $17E901.l,X		; FF 01 E9 17
	tsb $0EF3.w		; 0C F3 0E
	and ($E7.b),Y		; 31 E7
	bmi -29.b		; 30 E3
	bmi  32.b		; 30 20
	jsr $2121.w		; 20 21 21
	rol $E23E.w,X		; 3E 3E E2
	sep #$01		; E2 01
	ora ($E4.b,X)		; 01 E4
	bit $C2.b		; 24 C2
	cop $C1.b		; 02 C1
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($7F.b,X)		; 01 7F
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra -97.b		; 80 9F
	cmp $C1CFCF.l		; CF CF CF C1
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	cmp $FFC1FF.l		; CF FF C1 FF
	brk $C1.b		; 00 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	inx		; E8
	xce		; FB
	sbc ($07.b,S),Y		; F3 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	inx		; E8
	sbc $00F703.l,X		; FF 03 F7 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $0D00.w		; 0C 00 0D
	and ($63.b)		; 32 63
	stz $79BF.w		; 9C BF 79
	xba		; EB
	sbc [$96.b],Y		; F7 96
	sbc $1FFC0B.l		; EF 0B FC 1F
	cpx #$708F.w		; E0 8F 70
	and ($00.b)		; 32 00
	stz $7900.w		; 9C 00 79
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	brk $FD.b		; 00 FD
	ora ($EF.b,X)		; 01 EF
	ora $F00000.l		; 0F 00 00 F0
	ora $F800F0.l		; 0F F0 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	bmi -128.b		; 30 80
	sta $106F60.l		; 8F 60 6F 10
	bpl -112.b		; 10 90
	bcc  80.b		; 90 50
	bvc  32.b		; 50 20
	jsr $6060.w		; 20 60 60
	rti		; 40

	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$28.b],Y		; 17 28
	asl $09.b		; 06 09
	cop $0D.b		; 02 0D
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	brk $19.b		; 00 19
	brk $0D.b		; 00 0D
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	cli		; 58
	inx		; E8
	sty $04F4.w		; 8C F4 04
	jmp ($BA06.w,X)		; 7C 06 BA
	.db $82, $5C, $C1		; 82 5C C1
	and $788EE1.l		; 2F E1 8E 78
	ldy #$7080.w		; A0 80 70
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	bra  94.b		; 80 5E
	rti		; 40

	ora [$10.b],Y		; 17 10
	cmp [$3C.b]		; C7 3C
	sbc $1E.b,S		; E3 1E
	adc $2006.w,Y		; 79 06 20
	trb $0810.w		; 1C 10 08
	php		; 08
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	brk $8B.b		; 00 8B
	dey		; 88
	eor $44.b		; 45 44
	and $22.b,S		; 23 22
	ora $080F1C.l,X		; 1F 1C 0F 08
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora [$07.b]		; 07 07
	ora $0C0C0F.l		; 0F 0F 0C 0C
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $B820.w		; 20 20 B8
	eor $78.b,S		; 43 78
	inc $FC.b,X		; F6 FC
	bpl -24.b		; 10 E8
	bpl -16.b		; 10 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $06.b		; 00 06
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	pea $1010.w		; F4 10 10
	bra -112.b		; 80 90
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $40.b		; 00 40
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ldy $7F3C.w,X		; BC 3C 7F
	adc $301303.l,X		; 7F 03 13 30
	adc $77.b,X		; 75 77
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	bra  -1.b		; 80 FF
	bit $037F.w,X		; 3C 7F 03
	adc $753310.l,X		; 7F 10 33 75
	adc [$03.b],Y		; 77 03
	ora $00.b,S		; 03 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	cpx #$C000.w		; E0 00 C0
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
	brk $20.b		; 00 20
	cpy #$FBE2.w		; C0 E2 FB
	xce		; FB
	tas		; 1B
	sei		; 78
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FB.b		; 00 FB
	cpy #$1AFF.w		; C0 FF 1A
	sbc $007B60.l,X		; FF 60 7B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	rts		; 60

	adc ($7B.b)		; 72 7B
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $FB.b		; 00 FB
	rts		; 60

	sbc $007702.l,X		; FF 02 77 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $16.b,X		; 16 16
	inc $E0F7.w,X		; FE F7 E0
	beq   0.b		; F0 00
	bcc  32.b		; 90 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $FF.b		; 00 FF
	asl $FE.b,X		; 16 FE
	cpx #$00F7.w		; E0 F7 00
	beq   0.b		; F0 00
	bcs   0.b		; B0 00
	ora ($00.b,X)		; 01 00
	clc		; 18
	ora [$F7.b],Y		; 17 F7
	sbc $0EEFEF.l		; EF EF EF 0E
	asl $040C.w		; 0E 0C 04
	clc		; 18
	pha		; 48
	bmi   0.b		; 30 00
	ora $17FF00.l,X		; 1F 00 FF 17
	sbc $00FFEE.l,X		; FF EE FF 00
	sbc $001F00.l,X		; FF 00 1F 00
	rol $FC00.w,X		; 3E 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bmi  29.b		; 30 1D
	.db $62, $B0, $5F		; 62 B0 5F
	xce		; FB
	and $007FD7.l,X		; 3F D7 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $62.b		; 00 62
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $3C.b		; 00 3C
	cpy #$F826.w		; C0 26 F8
	ora ($FD.b)		; 12 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $06.b,S		; 03 06
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora $130F.w		; 0D 0F 13
	tas		; 1B
	rol $6C.b		; 26 6C
	cmp $A9BBDD.l,X		; DF DD BB A9
	ror $00.b,X		; 76 00
	brk $02.b		; 00 02
	brk $0D.b		; 00 0D
	brk $13.b		; 00 13
	brk $26.b		; 00 26
	brk $DF.b		; 00 DF
	brk $BB.b		; 00 BB
	brk $76.b		; 00 76
	brk $C9.b		; 00 C9
	bit $C4.b,X		; 34 C4
	rol A		; 2A
	sep #$05		; E2 05
	sbc $FF02.w,Y		; F9 02 FF
	brk $3F.b		; 00 3F
	cpy #$E11E.w		; C0 1E E1
	asl A		; 0A
	sbc ($B7.b),Y		; F1 B7
	ldy $3B.b,X		; B4 3B
	rol A		; 2A
	trb $0E04.w		; 1C 04 0E
	cop $04.b		; 02 04
	brk $C4.b		; 00 C4
	cpy #$2121.w		; C0 21 21
	trb $14.b		; 14 14
	ldy #$0040.w		; A0 40 00
	cpy #$8040.w		; C0 40 80
	cpx #$F000.w		; E0 00 F0
	brk $10.b		; 00 10
	cpx #$D830.w		; E0 30 D8
	jsr $80C8.w		; 20 C8 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$0008.w		; E0 08 00
	bpl   0.b		; 10 00
	xce		; FB
	adc $BB75.w,X		; 7D 75 BB
	inc $FF55.w		; EE 55 FF
	plp		; 28
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and ($7C.b),Y		; 31 7C
	ora ($BA.b,X)		; 01 BA
	ora ($54.b,X)		; 01 54
	rol A		; 2A
	rol A		; 2A
	eor ($51.b),Y		; 51 51
	bit #$9489.w		; 89 89 94
	sty $14.b,X		; 94 14
	trb $0F.b		; 14 0F
	inc $649B.w,X		; FE 9B 64
	stp		; DB
	jsr $20D9.w		; 20 D9 20
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	tsb $0060.w		; 0C 60 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	wai		; CB
	sec		; 38
	adc $98.b,S		; 63 98
	and ($CC.b),Y		; 31 CC
	sei		; 78
	stx $78.b		; 86 78
	sta $30.b,S		; 83 30
	cmp ($A0.b,X)		; C1 A0
	eor ($A0.b,X)		; 41 A0
	brk $07.b		; 00 07
	brk $8F.b		; 00 8F
	php		; 08
	cmp [$04.b]		; C7 04
	sta $02.b,S		; 83 02
	sta ($01.b,X)		; 81 01
	cpy #$4000.w		; C0 00 40
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	clc		; 18
	cpx #$F008.w		; E0 08 F0
	tsb $04F0.w		; 0C F0 04
	sei		; 78
	tsb $B8.b		; 04 B8
	.db $82, $5C, $C2		; 82 5C C2
	rol $F0E3.w,X		; 3E E3 F0
	bpl -16.b		; 10 F0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $7C.b		; 04 7C
	brk $BE.b		; 00 BE
	.db $82, $5C, $40		; 82 5C 40
	and $05.b,S		; 23 05
	ora $25.b,S		; 03 25
	cop $04.b		; 02 04
	asl $00.b		; 06 00
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	and $00.b		; 25 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phy		; 5A
	cmp $3A.b,S		; C3 3A
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $3C.b,S		; 83 3C
	sta [$7C.b]		; 87 7C
	sta [$78.b]		; 87 78
	sta [$F2.b]		; 87 F2
	sta $3C.b		; 85 3C
	brk $FC.b		; 00 FC
	bra  -2.b		; 80 FE
	.db $82, $FF, $82		; 82 FF 82
	sbc $F980.w,Y		; F9 80 F9
	bra  -3.b		; 80 FD
	sty $7D.b		; 84 7D
	tsb $F0.b		; 04 F0
	ora $76049B.l		; 0F 9B 04 76
	adc ($F9.b),Y		; 71 F9
	plx		; FA
	bit $0FFC.w,X		; 3C FC 0F
	and $998F67.l,X		; 3F 67 8F 99
	sbc $1C.b,S		; E3 1C
	trb $6000.w		; 1C 00 60
	adc ($F8.b,X)		; 61 F8
	adc ($FC.b)		; 72 FC
	clc		; 18
	sbc $83FF07.l,X		; FF 07 FF 83
	ora $E307E0.l,X		; 1F E0 07 E3
	asl $33.b,X		; 16 33
	dec $3B.b,X		; D6 3B
	dex		; CA
	plx		; FA
	ora ($38.b,X)		; 01 38
	.db $42, $D0		; 42 D0
	cmp ($F1.b,X)		; C1 F1
	sbc $10CEDF.l		; EF DF CE 10
	asl $0ED0.w		; 0E D0 0E
	iny		; C8
	asl $01.b		; 06 01
	ora $40.b		; 05 40
	sta [$C0.b]		; 87 C0
	sbc $4EEF01.l		; EF 01 EF 4E
	sbc $B5B0B1.l		; EF B1 B0 B5
	lda ($E7.b,S),Y		; B3 E7
	cmp $FF3FDF.l		; CF DF 3F FF
	rol $3CFE.w,X		; 3E FE 3C
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	lda ($B0.b,S),Y		; B3 B0
	lda $0EDFC3.l,X		; BF C3 DF 0E
	and $983F1C.l,X		; 3F 1C 3F 98
	lda $409E80.l,X		; BF 80 9E 40
	pha		; 48
	bvs -32.b		; 70 E0
	cpx #$C0C0.w		; E0 C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $7B.b		; C6 7B
	tsb $FB.b		; 04 FB
	and $15D2.w		; 2D D2 15
	cpy $B2.b		; C4 B2
	bvc  79.b		; 50 4F
	ldx $D88F.w,Y		; BE 8F D8
	lda ($49.b,S),Y		; B3 49
	tda		; 7B
	brk $FB.b		; 00 FB
	brk $D0.b		; 00 D0
	brk $EE.b		; 00 EE
	asl $6D.b		; 06 6D
	ora ($91.b,X)		; 01 91
	bpl -89.b		; 10 A7
	jsr $888E.w		; 20 8E 88
	cli		; 58
	lda $723DCA.l,X		; BF CA 3D 72
	sta $D926.w,X		; 9D 26 D9
	bit $18C2.w,X		; 3C C2 18
	rts		; 60

	bne  96.b		; D0 60
	bvc  96.b		; 50 60
	lda $003D00.l,X		; BF 00 3D 00
	ora $9900.w,X		; 1D 00 99
	bra -126.b		; 80 82
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra  29.b		; 80 1D
	inc $F9F6.w,X		; FE F6 F9
	ora $DAF3.w		; 0D F3 DA
	and [$B6.b]		; 27 B6
	cmp #$966A.w		; C9 6A 96
	wai		; CB
	sec		; 38
	sbc $FE11.w		; ED 11 FE
	brk $F9.b		; 00 F9
	brk $F3.b		; 00 F3
	brk $27.b		; 00 27
	brk $C8.b		; 00 C8
	brk $91.b		; 00 91
	brk $07.b		; 00 07
	brk $7E.b		; 00 7E
	bvs  95.b		; 70 5F
	cpx #$C0BF.w		; E0 BF C0
	eor [$B8.b]		; 47 B8
	plb		; AB
	stz $B4.b		; 64 B4
	sta [$E9.b]		; 87 E9
	asl $3DA2.w		; 0E A2 3D
	ora ($EC.b,S),Y		; 13 EC
	sbc $03.b,S		; E3 03
	cpy $900C.w		; CC 0C 90
	bpl  24.b		; 10 18
	brk $78.b		; 00 78
	brk $F4.b		; 00 F4
	tsb $D1.b		; 04 D1
	ora ($80.b),Y		; 11 80
	bra  10.b		; 80 0A
	sbc ($1F.b),Y		; F1 1F
	cpx #$1AE4.w		; E0 E4 1A
	cop $E1.b		; 02 E1
	brk $1E.b		; 00 1E
	ora $E0FFFE.l,X		; 1F FE FF E0
	sbc $041C.w,Y		; F9 1C 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $FF00.w,X		; 1D 00 FF
	asl $E0FE.w,X		; 1E FE E0
	inc $FE10.w,X		; FE 10 FE
	sec		; 38
	iny		; C8
	jsr $41C1.w		; 20 C1 41
	ora $DFBE1F.l,X		; 1F 1F BE DF
	cpy #$37C8.w		; C0 C8 37
	xba		; EB
	ora $DDBD.w,Y		; 19 BD DD
	bpl   1.b		; 10 01
	brk $1F.b		; 00 1F
	ora ($BF.b,X)		; 01 BF
	asl $C0FF.w,X		; 1E FF C0
	sbc $06DF00.l,X		; FF 00 DF 06
	ora $19CB.w,Y		; 19 CB 19
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	jsr ($F502.w,X)		; FC 02 F5
	tsb $1212.w		; 0C 12 12
	ora ($12.b)		; 12 12
	ora ($13.b,S),Y		; 13 13
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	and $23.b,S		; 23 23
	and $F8FB2E.l		; 2F 2E FB F8
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	rti		; 40

	bra -16.b		; 80 F0
	brk $30.b		; 00 30
	cpy #$4010.w		; C0 10 40
	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	bvc  64.b		; 50 40
	cpx #$E020.w		; E0 20 E0
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
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
	brk $0C.b		; 00 0C
	adc ($1F.b,X)		; 61 1F
	and ($06.b),Y		; 31 06
	bmi  15.b		; 30 0F
	clc		; 18
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora [$09.b]		; 07 09
	ora [$0A.b]		; 07 0A
	and $000E21.l,X		; 3F 21 0E 00
	ora $000710.l,X		; 1F 10 07 00
	ora $080F08.l		; 0F 08 0F 08
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	ora [$1C.b]		; 07 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	sbc ($85.b)		; F2 85
	plx		; FA
	sta $8EF9.w		; 8D F9 8E
	adc $08.b		; 65 08
	bvs  28.b		; 70 1C
	cpx #$C81C.w		; E0 1C C8
	bpl -128.b		; 10 80
	bmi 121.b		; 30 79
	brk $71.b		; 00 71
	brk $72.b		; 00 72
	brk $F8.b		; 00 F8
	php		; 08
	cpx $00.b		; E4 00
	pea $E010.w		; F4 10 E0
	brk $E0.b		; 00 E0
	jsr $2802.w		; 20 02 28
	xba		; EB
	asl A		; 0A
	cmp $9807F0.l		; CF F0 07 98
	cmp [$F8.b]		; C7 F8
	cmp $FC.b,S		; C3 FC
	eor [$F8.b],Y		; 57 F8
	adc [$D8.b],Y		; 77 D8
	jsr $0ADD.w		; 20 DD 0A
	sbc $1AEB13.l,X		; FF 13 EB 1A
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	cop $FE.b		; 02 FE
	cop $FB.b		; 02 FB
	ora $D9.b,S		; 03 D9
	ora ($3F.b,X)		; 01 3F
	bpl -65.b		; 10 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $10.b		; 00 10
	cmp $997424.l,X		; DF 24 74 99
	sta $2222.w,Y		; 99 22 22
	mvp $88,$44		; 44 44 88
	dey		; 88
	bcc -112.b		; 90 90
	ora ($11.b),Y		; 11 11
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($1F.b,X)		; 01 1F
	ora $E0BF7E.l,X		; 1F 7E BF E0
	adc ($13.b),Y		; 71 13
	ora [$37.b],Y		; 17 37
	bvs 112.b		; 70 70
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	ora ($7F.b,X)		; 01 7F
	asl $A0FF.w,X		; 1E FF A0
	sbc $177311.l,X		; FF 11 73 17
	and [$70.b],Y		; 37 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	cpy #$00.b		; C0 00
	cpx #$C0.b		; E0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	rti		; 40

	cpy #$0F.b		; C0 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $00F8.w		; 20 F8 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
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
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
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
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $30.b		; 00 30
	bmi  16.b		; 30 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  24.b		; 10 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003E00.l,X		; 1F 00 3E 00
	ror $7C00.w,X		; 7E 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $6020.w		; 20 20 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	trb $06.b		; 14 06
	ldx $D6.b		; A6 D6
	inc $E0.b		; E6 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	brk $FF.b		; 00 FF
	tsb $FE.b		; 04 FE
	cpy #$E6.b		; C0 E6
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $2000.w,X		; 1D 00 20
	brk $60.b		; 00 60
	bmi  64.b		; 30 40
	brk $29.b		; 00 29
	and ($10.b,X)		; 21 10
	eor $000000.l,X		; 5F 00 00 00
	ora $1F00.w,X		; 1D 00 1F
	brk $20.b		; 00 20
	jsr $0070.w		; 20 70 00
	rti		; 40

	and ($3F.b,X)		; 21 3F
	brk $5F.b		; 00 5F
	pha		; 48
	jsr $6E76.w		; 20 76 6E
	cli		; 58
	brk $20.b		; 00 20
	jsr $0804.w		; 20 04 08
	ora $07071F.l,X		; 1F 1F 07 07
	brk $00.b		; 00 00
	asl $6E.b		; 06 6E
	ror $7E.b		; 66 7E
	brk $58.b		; 00 58
	jsr $0020.w		; 20 20 00
	ora $071F18.l		; 0F 18 1F 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $FFFE1F.l,X		; 1F 1F FE FF
	cpx #$60.b		; E0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $FF00.w,X		; 1D 00 FF
	asl $E0FF.w,X		; 1E FF E0
	sbc $00E000.l,X		; FF 00 E0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	asl $56.b,X		; 16 56
	ldx $F0.b,Y		; B6 F0
	cpx #$E0.b		; E0 E0
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $FF.b		; 00 FF
	trb $FE.b		; 14 FE
	ldy #$F6.b		; A0 F6
	brk $E0.b		; 00 E0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	ora $01030C.l,X		; 1F 0C 03 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $0A.b,S		; 03 0A
	ora [$15.b]		; 07 15
	asl $0000.w		; 0E 00 00
	ora $000300.l,X		; 1F 00 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1B00.w		; 0E 00 1B
	tsb $1837.w		; 0C 37 18
	and [$18.b],Y		; 37 18
	ror $6E30.w		; 6E 30 6E
	bmi  95.b		; 30 5F
	rts		; 60

	lsr $3C61.w,X		; 5E 61 3C
	sta $0C.b,S		; 83 0C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	ora ($30.b,X)		; 01 30
	ora ($60.b,X)		; 01 60
	brk $61.b		; 00 61
	bra   3.b		; 80 03
	cpy #$B9.b		; C0 B9
	.db $82, $1B, $70		; 82 1B 70
	plb		; AB
	cmp ($19.b),Y		; D1 19
	and $080D.w,Y		; 39 0D 08
	bit #$8C.b		; 89 8C
	eor $2D46.w,X		; 5D 46 2D
	asl $02.b,X		; 16 02
	cmp $00.b,X		; D5 00
	sbc $D0BF01.l,X		; FF 01 BF D0
	cmp $64EEE0.l,X		; DF E0 EE 64
	nop		; EA
	asl $58.b		; 06 58
	asl $70.b		; 06 70
	and $D426.w		; 2D 26 D4
	sbc $040F00.l		; EF 00 0F 04
	cop $02.b		; 02 02
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	beq  79.b		; F0 4F
	beq  15.b		; F0 0F
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $75.b		; 00 75
	phx		; DA
	sbc $4DBA49.l,X		; FF 49 BA 4D
	and $6DD6.w		; 2D D6 6D
	stx $69.b,Y		; 96 69
	stx $65.b		; 86 65
	asl A		; 0A
	rol $49.b		; 26 49
	stp		; DB
	ora ($49.b,X)		; 01 49
	brk $4D.b		; 00 4D
	brk $D6.b		; 00 D6
	brk $96.b		; 00 96
	brk $86.b		; 00 86
	brk $0A.b		; 00 0A
	brk $49.b		; 00 49
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra  63.b		; 80 3F
	cpy #$3F.b		; C0 3F
	beq  35.b		; F0 23
	cpx #$5B.b		; E0 5B
.ACCU 16
	rep #$21		; C2 21
	and ($C2.b,X)		; 21 C2
	rep #$42		; C2 42
	.db $42, $44		; 42 44
	mvp $74,$74		; 44 74 74
	jmp $5E4C.w		; 4C 4C 5E
	.db $42, $3D		; 42 3D
	ora ($FC.b,X)		; 01 FC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $18.b		; 00 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $040C.w		; 0C 0C 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $07.b		; 02 07
	ora [$7C.b]		; 07 7C
	dec $B27E.w,X		; DE 7E B2
	dec $7E20.w,X		; DE 20 7E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $0C.b		; 00 0C
	asl $3200.w,X		; 1E 00 32
	tsb $64.b		; 04 64
	tsb $C4.b		; 04 C4
	asl $86.b		; 06 86
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora [$00.b]		; 07 00
	ora $0C1707.l		; 0F 07 17 0C
	and $007F00.l,X		; 3F 00 7F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	ora ($07.b,X)		; 01 07
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	tsb $380C.w		; 0C 0C 38
	sec		; 38
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	cpx #$0C.b		; E0 0C
	cpx #$D8.b		; E0 D8
	cpx #$50.b		; E0 50
	cpx #$40.b		; E0 40
	ldy #$40.b		; A0 40
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	bne -48.b		; D0 D0
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -18.b		; 80 EE
	bpl -127.b		; 10 81
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($E1.b,X)		; 01 E1
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F.b,S		; 03 7F
	bra  15.b		; 80 0F
	bvs   0.b		; 70 00
	ora $631F31.l,X		; 1F 31 1F 63
	and $DB76CD.l,X		; 3F CD 76 DB
	cpx $0003.w		; EC 03 00
	bra   0.b		; 80 00
	bvs   0.b		; 70 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $007600.l,X		; 3F 00 76 00
	cpx $2700.w		; EC 00 27
	asl $1E27.w,X		; 1E 27 1E
	and $1E.b,S		; 23 1E
	pld		; 2B
	asl $2B.b,X		; 16 2B
	asl $31.b,X		; 16 31
	asl $35.b		; 06 35
	cop $11.b		; 02 11
	cop $1E.b		; 02 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $51.b		; 00 51
	ldx $BC63.w,Y		; BE 63 BC
	adc $BC.b,S		; 63 BC
	adc [$B8.b]		; 67 B8
	adc [$B8.b]		; 67 B8
	adc [$B8.b]		; 67 B8
	adc [$B8.b]		; 67 B8
	adc $00BE90.l		; 6F 90 BE 00
	ldy $BC00.w,X		; BC 00 BC
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	phd		; 0B
	asl $0B.b,X		; 16 0B
	sec		; 38
	ora [$25.b]		; 07 25
	lsr $3EC8.w,X		; 5E C8 3E
	sta $7A.b,X		; 95 7A
	rol $01F1.w		; 2E F1 01
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $5E.b		; 00 5E
	brk $3F.b		; 00 3F
	brk $7B.b		; 00 7B
	brk $F0.b		; 00 F0
	brk $7E.b		; 00 7E
	cmp $9A.b,S		; C3 9A
	phk		; 4B
	eor $21A2.w		; 4D A2 21
	stx $93.b,Y		; 96 93
	jmp $20CF.w		; 4C CF 20
	inc $01.b		; E6 01
	jmp ($3C93.w,X)		; 7C 93 3C
	brk $74.b		; 00 74
	mvp $20,$3C		; 44 3C 20
	jmp.w [$6094]		; DC 94 60
	rti		; 40

	bmi  32.b		; 30 20
	ora $8201.w,Y		; 19 01 82
	.db $82, $86, $0C		; 82 86 0C
	stx $0C.b		; 86 0C
	asl $4CDC.w		; 0E DC 4C
	cli		; 58
	cpy $8C18.w		; CC 18 8C
	tyx		; BB
	stz $9B30.w,X		; 9E 30 9B
	bmi   4.b		; 30 04
	asl $1E04.w,X		; 1E 04 1E
	tsb $883E.w		; 0C 3E 88
	bit $3CC8.w,X		; 3C C8 3C
	asl A		; 0A
	ror $7817.w,X		; 7E 17 78
	ora [$78.b],Y		; 17 78
	mvp $C9,$FF		; 44 FF C9
	inc $FE99.w,X		; FE 99 FE
	tsx		; BA
	sbc $FD32.w,X		; FD 32 FD
	stz $FA.b,X		; 74 FA
	adc $FA.b		; 65 FA
	adc $FC.b,S		; 63 FC
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FC00.w,X		; FE 00 FC
	brk $FD.b		; 00 FD
	ora ($F9.b,X)		; 01 F9
	brk $F9.b		; 00 F9
	brk $F8.b		; 00 F8
	brk $BA.b		; 00 BA
	eor $8B24.w		; 4D 24 8B
	stz $9B.b		; 64 9B
	ror A		; 6A
	and ($D3.b),Y		; 31 D3
	bit $D4.b		; 24 D4
	rtl		; 6B

	ldx $CD.b		; A6 CD
	lda [$4E.b],Y		; B7 4E
	stz $44.b,X		; 74 44
	ply		; 7A
	asl A		; 0A
	beq -112.b		; F0 90
	cpy #$04.b		; C0 04
	cpx #$2C.b		; E0 2C
	sta $0B.b,S		; 83 0B
	eor ($5D.b,X)		; 41 5D
	.db $42, $5E		; 42 5E
	bit $6F.b,X		; 34 6F
	ply		; 7A
	cmp $7D.b,S		; C3 7D
	cmp ($7E.b,X)		; C1 7E
	cpy #$FF.b		; C0 FF
	bra -41.b		; 80 D7
	bcs  75.b		; B0 4B
	clc		; 18
	.db $82, $86, $22		; 82 86 22
	sbc ($4D.b)		; F2 4D
	sbc ($5E.b),Y		; F1 5E
	cpx #$5F.b		; E0 5F
	cpx #$9F.b		; E0 9F
	cpx #$AF.b		; E0 AF
	cpx #$07.b		; E0 07
	cpy #$81.b		; C0 81
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	bvs -96.b		; 70 A0
	sec		; 38
	bne  28.b		; D0 1C
	inx		; E8
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	pea $0004.w		; F4 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $0C.b		; 06 0C
	tsb $0808.w		; 0C 08 08
	bpl 112.b		; 10 70
	sbc $7DBE01.l,X		; FF 01 BE 7D
	ror $FEC5.w,X		; 7E C5 FE
	tsb $FA.b		; 04 FA
	tsb $F4.b		; 04 F4
	php		; 08
	beq   0.b		; F0 00
	and $000020.l		; 2F 20 00 00
	ora $04FD.w,X		; 1D FD 04
	cpy $00.b		; C4 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	cmp $B8FF.w,Y		; D9 FF B8
	sbc $26DD32.l,X		; FF 32 DD 26
	cmp $946B.w,Y		; D9 6B 94
	lda #$9126.w		; A9 26 91
	stx $78.b		; 86 78
	sbc ($FF.b,S),Y		; F3 FF
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $D9.b		; 00 D9
	brk $80.b		; 00 80
	brk $74.b		; 00 74
	bit $6C.b,X		; 34 6C
	tsb $808C.w		; 0C 8C 80
	and ($C1.b),Y		; 31 C1
	sta ($EA.b)		; 92 EA
	cpy #$F8.b		; C0 F8
	bvc -21.b		; 50 EB
	sta ($E6.b,S),Y		; 93 E6
	and ($C6.b,S),Y		; 33 C6
	sbc $16.b,S		; E3 16
	cmp [$0C.b]		; C7 0C
	cmp ($03.b,X)		; C1 03
	nop		; EA
	ora [$F8.b]		; 07 F8
	ora $E8.b,S		; 03 E8
	ora [$E2.b]		; 07 E2
	ora $120FC2.l		; 0F C2 0F 12
	ora $021F04.l		; 0F 04 1F 02
	ora ($05.b,X)		; 01 05
	ora $01.b,S		; 03 01
	ora [$0B.b]		; 07 0B
	ora [$0A.b]		; 07 0A
	ora [$16.b]		; 07 16
	ora $170F16.l		; 0F 16 0F 17
	asl $0001.w		; 0E 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	asl $9600.w		; 0E 00 96
	sbc $F38C.w,Y		; F9 8C F3
	ora $53E7.w,Y		; 19 E7 53
	lda $ED9F67.l		; AF 67 9F ED
	ora $D03FC9.l,X		; 1F C9 3F D0
	and $F300F9.l,X		; 3F F9 00 F3
	brk $E7.b		; 00 E7
	brk $AF.b		; 00 AF
	brk $9F.b		; 00 9F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $11.b		; 00 11
	cop $12.b		; 02 12
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
	brk $6F.b		; 00 6F
	bcc -18.b		; 90 EE
	ora ($EE.b),Y		; 11 EE
	ora ($6E.b),Y		; 11 6E
	ora ($2F.b),Y		; 11 2F
	ora ($27.b),Y		; 11 27
	ora $1927.w,Y		; 19 27 19
	asl $09.b,X		; 16 09
	bcc   0.b		; 90 00
	ora ($00.b),Y		; 11 00
	ora ($00.b),Y		; 11 00
	ora ($00.b),Y		; 11 00
	ora ($00.b),Y		; 11 00
	ora $1900.w,Y		; 19 00 19
	brk $09.b		; 00 09
	brk $1C.b		; 00 1C
	sbc $E7.b,S		; E3 E7
	ora $713FDE.l,X		; 1F DE 3F 71
	sbc $4CFFC7.l,X		; FF C7 FF 4C
	lda $227F91.l,X		; BF 91 7F 22
	sbc $1F00E3.l,X		; FF E3 00 1F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $C2.b		; 00 C2
	jsr ($FE9D.w,X)		; FC 9D FE
	adc [$F8.b],Y		; 77 F8
	cmp $C03FE0.l,X		; DF E0 3F C0
	adc $A85780.l,X		; 7F 80 57 A8
	sta ($45.b)		; 92 45
	sbc $FE01.w,X		; FD 01 FE
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $B8.b		; 00 B8
	plp		; 28
	and $3905.w,X		; 3D 05 39
	dec $15.b		; C6 15
.INDEX 8
	sep #$14		; E2 14
	sbc $FC.b,S		; E3 FC
	cop $1B.b		; 02 1B
	cpx $1C.b		; E4 1C
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	cmp ($6C.b),Y		; D1 6C
	lda ($40.b),Y		; B1 40
	rti		; 40

	plp		; 28
	plp		; 28
	php		; 08
	php		; 08
	brk $01.b		; 00 01
	cpy #$C0.b		; C0 C0
	brk $09.b		; 00 09
	brk $1B.b		; 00 1B
	jsr $193B.w		; 20 3B 19
	adc [$30.b],Y		; 77 30
	and ($00.b,X)		; 21 00
	brk $F0.b		; 00 F0
	cpx #$60.b		; E0 60
	rti		; 40

	brk $C0.b		; 00 C0
	rts		; 60

	cpy #$F0.b		; C0 F0
	bcc  18.b		; 90 12
	plx		; FA
	jsr $0070.w		; 20 70 00
	cpx #$20.b		; E0 20
	beq  64.b		; F0 40
	cpx #$00.b		; E0 00
	cpy #$40.b		; C0 40
	cpx #$80.b		; E0 80
	beq  79.b		; F0 4F
	beq  95.b		; F0 5F
	cpx #$5E.b		; E0 5E
	cpx #$3C.b		; E0 3C
	cmp ($3C.b,X)		; C1 3C
	cmp ($3E.b,X)		; C1 3E
	cpy #$7F.b		; C0 7F
	bra 127.b		; 80 7F
	bra -15.b		; 80 F1
	ora ($E2.b,X)		; 01 E2
	cop $E0.b		; 02 E0
	ora ($C0.b,X)		; 01 C0
	ora $C0.b,S		; 03 C0
	ora $DE.b,S		; 03 DE
	ora $C023A3.l,X		; 1F A3 23 C0
	rti		; 40

	cmp $0EDF0E.l,X		; DF 0E DF 0E
	sbc $EFF7CF.l		; EF CF F7 EF
	xce		; FB
	sbc [$7F.b],Y		; F7 7F
	sbc $3E1F.w,Y		; F9 1F 3E
	cmp [$0F.b]		; C7 0F
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	asl $3E.b		; 06 3E
	sta $DF.b,S		; 83 DF
	cmp ($FF.b,S),Y		; D3 FF
	adc #$36FF.w		; 69 FF 36
	sbc $C0FF0D.l,X		; FF 0D FF C0
	sbc $000100.l,X		; FF 00 01 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	stx $2A.b		; 86 2A
	adc $05.b,S		; 63 05
	jsr $200E.w		; 20 0E 20
	asl $0F2A.w,X		; 1E 2A 0F
	rol $1F.b		; 26 1F
	bit $182F.w		; 2C 2F 18
	ply		; 7A
	cop $1C.b		; 02 1C
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	ora ($12.b,X)		; 01 12
	ora $16.b,S		; 03 16
	asl $04.b		; 06 04
	tsb $1A02.w		; 0C 02 1A
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  96.b		; 30 60
	rts		; 60

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1C.b		; 00 1C
	bit $3804.w,X		; 3C 04 38
	tsb $0C0C.w		; 0C 0C 0C
	rts		; 60

	brk $D8.b		; 00 D8
	bvs  92.b		; 70 5C
	ldy $D016.w,X		; BC 16 D0
	sty $83.b		; 84 83
	brk $3E.b		; 00 3E
	php		; 08
	bit $7C08.w,X		; 3C 08 7C
	brk $7E.b		; 00 7E
	brk $F8.b		; 00 F8
	bpl -36.b		; 10 DC
	bmi  54.b		; 30 36
	bvs  -9.b		; 70 F7
	and $13.b		; 25 13
	rol $11.b		; 26 11
	ora ($01.b)		; 12 01
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,S),Y		; 13 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,S),Y		; 13 00
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $EC.b,S		; 83 EC
	sty $E3.b,X		; 94 E3
	lda $C01CE1.l,X		; BF E1 1C C0
	lda $7941.w,X		; BD 41 79
	cmp ($3A.b,X)		; C1 3A
	sta $71.b,S		; 83 71
	.db $82, $DB, $0B		; 82 DB 0B
	jsr ($9E20.w,X)		; FC 20 9E
	brk $BF.b		; 00 BF
	brk $7E.b		; 00 7E
	rti		; 40

	rol $7D00.w,X		; 3E 00 7D
	ora ($FE.b,X)		; 01 FE
	.db $82, $7F, $80		; 82 7F 80
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $807F00.l,X		; FF 00 7F 80
	eor $D0AFA0.l,X		; 5F A0 AF D0
	lda $0383D8.l		; AF D8 83 03
	ldy $702C.w		; AC 2C 70
	bvs  64.b		; 70 40
	rti		; 40

	ldy #$B120.w		; A0 20 B1
	ora ($CA.b),Y		; 11 CA
	asl A		; 0A
	dec $06.b		; C6 06
	sed		; F8
	ora $FE.b,S		; 03 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $98.b		; 00 98
	sta $251312.l,X		; 9F 12 13 25
	and $45.b		; 25 45
	eor $89.b		; 45 89
	bit #$0909.w		; 89 09 09
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	inc $FC.b,X		; F6 FC
	ror $74.b		; 66 74
	brk $60.b		; 00 60
	sty $CC18.w		; 8C 18 CC
	clc		; 18
	dec $9F18.w		; CE 18 9F
	bmi -98.b		; 30 9E
	and ($E4.b),Y		; 31 E4
	inc $FE44.w,X		; FE 44 FE
	brk $FC.b		; 00 FC
	php		; 08
	jmp ($3C08.w,X)		; 7C 08 3C
	asl A		; 0A
	rol $7B13.w,X		; 3E 13 7B
	asl $7E.b,X		; 16 7E
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora [$06.b]		; 07 06
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	php		; 08
	tsb $04.b		; 04 04
	tsb $0C0C.w		; 0C 0C 0C
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	cop $07.b		; 02 07
	brk $06.b		; 00 06
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	tsb $3E.b		; 04 3E
	brk $00.b		; 00 00
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	bpl  48.b		; 10 30
	clc		; 18
	bmi 112.b		; 30 70
	jsr $6838.w		; 20 38 68
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	php		; 08
	jmp ($3800.w,X)		; 7C 00 38
	bpl 112.b		; 10 70
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	plp		; 28
	sed		; F8
	sec		; 38
	pla		; 68
	rts		; 60

	cpy #$5878.w		; C0 78 58
	tay		; A8
	tya		; 98
	pha		; 48
	pha		; 48
	cpy #$F0C0.w		; C0 C0 F0
	bne -64.b		; D0 C0
	cpx #$F828.w		; E0 28 F8
	rti		; 40

	cpx #$F858.w		; E0 58 F8
	dey		; 88
	sed		; F8
	pha		; 48
	inx		; E8
	cpy #$D0E0.w		; C0 E0 D0
	beq -64.b		; F0 C0
	beq -16.b		; F0 F0
	cpx #$7060.w		; E0 60 70
	bmi 112.b		; 30 70
	sei		; 78
	bmi  48.b		; 30 30
	sec		; 38
	bit $3838.w,X		; 3C 38 38
	bit $3C3C.w,X		; 3C 3C 3C
	rti		; 40

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sei		; 78
	bpl 120.b		; 10 78
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	clc		; 18
	jmp ($7C18.w,X)		; 7C 18 7C
	bit $383C.w,X		; 3C 3C 38
	bit $383C.w,X		; 3C 3C 38
	cli		; 58
	clv		; B8
	cpy $00.b		; C4 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $18.b		; 00 18
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jmp ($3C18.w,X)		; 7C 18 3C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bmi  48.b		; 30 30
	adc $007F10.l		; 6F 10 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $02.b		; 00 02
	and ($02.b)		; 32 02
	jsl $020202.l		; 22 02 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $FE.b		; 04 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	asl $020E.w		; 0E 0E 02
	cop $3F.b		; 02 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $19.b		; 00 19
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
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	tsb $16.b		; 04 16
	asl $19.b,X		; 16 19
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	clc		; 18
	brk $30.b		; 00 30
	brk $11.b		; 00 11
	brk $05.b		; 00 05
	asl $17.b,X		; 16 17
	brk $19.b		; 00 19
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	eor #$1248.w		; 49 48 12
	adc ($01.b,S),Y		; 73 01
	sta ($22.b,X)		; 81 22
	ldx #$A3E3.w		; A2 E3 A3
	adc $03.b,S		; 63 03
	stx $9E.b,Y		; 96 9E
	cpx $70AC.w		; EC AC 70
	adc $41B300.l,X		; 7F 00 B3 41
	cmp [$60.b]		; C7 60
	inc $21.b		; E6 21
	sbc [$01.b]		; E7 01
	adc [$82.b]		; 67 82
	stz $ECAC.w,X		; 9E AC EC
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	tsb $1C.b		; 04 1C
	php		; 08
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$10.b],Y		; 17 10
	sbc $86.b,X		; F5 86
	rts		; 60

	asl $EA.b		; 06 EA
	tsb $18D4.w		; 0C D4 18
	cpx $38.b		; E4 38
	sty $30.b		; 84 30
	tsb $30.b		; 04 30
	rti		; 40

	rts		; 60

	sei		; 78
	brk $FE.b		; 00 FE
	tsb $F0.b		; 04 F0
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	cpx #$E020.w		; E0 20 E0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $003E00.l,X		; 1F 00 3E 00
	jmp ($F800.w,X)		; 7C 00 F8
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $6020.w		; 20 20 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cpx $D871.w		; EC 71 D8
	sbc ($D1.b,X)		; E1 D1
	sbc $F1.b,S		; E3 F1
	cmp $A1.b,S		; C3 A1
	cmp $A3.b,S		; C3 A3
	stx $E3.b		; 86 E3
	asl $79.b		; 06 79
	sed		; F8
	rti		; 40

	tda		; 7B
	cpy #$C1F3.w		; C0 F3 C1
	sbc [$81.b]		; E7 81
	sbc [$81.b]		; E7 81
	cmp [$82.b]		; C7 82
	cmp $708F82.l		; CF 82 8F 70
	sbc $C8B8D8.l,X		; FF D8 B8 C8
	dey		; 88
	cpx #$B820.w		; E0 20 B8
	sei		; 78
	tya		; 98
	cli		; 58
	brk $80.b		; 00 80
	cpx #$7060.w		; E0 60 70
	beq -120.b		; F0 88
	sed		; F8
	dey		; 88
	iny		; C8
	brk $E0.b		; 00 E0
	clc		; 18
	sed		; F8
	clc		; 18
	cld		; D8
	brk $80.b		; 00 80
	jsr $30E0.w		; 20 E0 30
	beq  -1.b		; F0 FF
	brk $FE.b		; 00 FE
	brk $7C.b		; 00 7C
	.db $82, $06, $F8		; 82 06 F8
	tsb $0CF1.w		; 0C F1 0C
	sbc ($08.b),Y		; F1 08
	beq  41.b		; F0 29
	cmp $42.b,S		; C3 42
	.db $42, $C2		; 42 C2
	cmp $7C.b,S		; C3 7C
	adc $81B8.w,X		; 7D B8 81
	bvs   3.b		; 70 03
	bvs   3.b		; 70 03
	beq   1.b		; F0 01
	cmp ($07.b,X)		; C1 07
	dey		; 88
	rti		; 40

	cmp ($03.b,X)		; C1 03
	eor $07.b,S		; 43 07
	brk $00.b		; 00 00
	ora $06.b,S		; 03 06
	brk $00.b		; 00 00
	php		; 08
	tsb $0C.b		; 04 0C
	tsb $40.b		; 04 40
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	asl $0702.w		; 0E 02 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	ror $7C00.w,X		; 7E 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  32.b		; 30 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	adc $007E00.l,X		; 7F 00 7E 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $0000.w		; 20 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $180C.w		; 0C 0C 18
	clc		; 18
	sbc $02FF06.l,X		; FF 06 FF 02
	sbc $FC02.w,X		; FD 02 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $06.b		; 00 06
	asl $E0.b		; 06 E0
	sep #$C0		; E2 C0
	rep #$80		; C2 80
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $0E.b		; 00 0E
	bmi  29.b		; 30 1D
	.db $62, $B0, $5F		; 62 B0 5F
	xce		; FB
	and $C67FD7.l,X		; 3F D7 7F C6
	tda		; 7B
	sty $7B.b		; 84 7B
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	.db $62, $00, $5F		; 62 00 5F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $3C.b		; 00 3C
	cpy #$F826.w		; C0 26 F8
	ora ($FD.b)		; 12 FD
	cli		; 58
	lda $003DCA.l,X		; BF CA 3D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $FD.b		; 00 FD
	brk $BF.b		; 00 BF
	brk $3D.b		; 00 3D
	brk $F3.b		; 00 F3
	brk $71.b		; 00 71
	dey		; 88
	adc $3B86.w,X		; 7D 86 3B
	cpy $0B.b		; C4 0B
	pea $E112.w		; F4 12 E1
	ora ($E1.b)		; 12 E1
	cpx $0C13.w		; EC 13 0C
	brk $06.b		; 00 06
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	bmi  48.b		; 30 30
	ora $0C0D.w		; 0D 0D 0C
	tsb $0000.w		; 0C 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra  80.b		; 80 50
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1C00.w		; 20 00 1C
	cmp $8E.b,S		; C3 8E
	eor ($CE.b,X)		; 41 CE
	ora ($C4.b,X)		; 01 C4
	ora ($44.b,X)		; 01 44
	ora ($20.b,X)		; 01 20
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $C1.b		; 00 C1
	ora ($41.b,X)		; 01 41
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	php		; 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	cli		; 58
	plp		; 28
	bit $7C58.w,X		; 3C 58 7C
	bcs  -4.b		; B0 FC
	rts		; 60

	jmp ($F0C0.w,X)		; 7C C0 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	plp		; 28
	bne  88.b		; D0 58
	bcs -80.b		; B0 B0
	jsr $0860.w		; 20 60 08
	iny		; C8
	ror $9F61.w		; 6E 61 9F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	beq   5.b		; F0 05
	adc $84.b		; 65 84
	sty $92.b		; 84 92
	sta ($92.b)		; 92 92
	sta ($11.b)		; 92 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($FF.b),Y		; 11 FF
	cmp $F0DEFD.l,X		; DF FD DE F0
	trb $03F0.w		; 1C F0 03
	sta $7F.b,S		; 83 7F
	cmp ($3F.b),Y		; D1 3F
	inx		; E8
	ora $1EE4.w,X		; 1D E4 1E
	cmp $DFDCDF.l		; CF DF DC DF
	brk $1F.b		; 00 1F
	ora $0C.b,S		; 03 0C
	adc $003F00.l,X		; 7F 00 3F 00
	eor $5E40.w,X		; 5D 40 5E
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $103000.l		; 0F 00 30 10
	jsr $1008.w		; 20 08 10
	bpl   4.b		; 10 04
	jsr $2F58.w		; 20 58 2F
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	bpl  48.b		; 10 30
	brk $28.b		; 00 28
	bpl  16.b		; 10 10
	brk $2F.b		; 00 2F
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40A0.w		; C0 A0 40
	rti		; 40

	brk $20.b		; 00 20
	pha		; 48
	bvs -99.b		; 70 9D
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $68.b		; 00 68
	brk $5A.b		; 00 5A
	cpx #$00FF.w		; E0 FF 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $3F.b,S		; 03 3F
	brk $79.b		; 00 79
	ora [$C4.b]		; 07 C4
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sec		; 38
	sta ($7D.b)		; 92 7D
	bit $FB.b,X		; 34 FB
	pla		; 68
	sbc [$49.b],Y		; F7 49
	inc $0D.b,X		; F6 0D
	sbc ($33.b)		; F2 33
	jsr ($0774.w,X)		; FC 74 07
	plx		; FA
	ora $7D.b,S		; 03 7D
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $E2.b		; 00 E2
	brk $4C.b		; 00 4C
	jmp $03FA.w		; 4C FA 03
	jsr ($FA01.w,X)		; FC 01 FA
	plx		; FA
	tay		; A8
	cpx $A887.w		; EC 87 A8
	eor [$50.b]		; 47 50
	rol $2401.w,X		; 3E 01 24
	tas		; 1B
	and $1A.b		; 25 1A
	and $FF7A10.l		; 2F 10 7A FF
	bit $00FB.w		; 2C FB 00
	sed		; F8
	brk $78.b		; 00 78
	ora ($01.b,X)		; 01 01
	inc A		; 1A
	cop $18.b		; 02 18
	brk $11.b		; 00 11
	ora ($00.b,X)		; 01 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $38.b		; 00 38
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
	sta ($FE.b,X)		; 81 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $209790.l,X		; FF 90 97 20
	and $48.b,S		; 23 48
	eor #$9292.w		; 49 92 92
	ora ($12.b)		; 12 12
	and $007F00.l,X		; 3F 00 7F 00
	adc $00FE00.l,X		; 7F 00 FE 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $6020.w		; 20 20 60
	rts		; 60

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AD.b		; 00 AD
	eor ($95.b)		; 52 95
	mvp $50,$B2		; 44 B2 50
	eor $18CFBE.l		; 4F BE CF 18
	sbc ($09.b,S),Y		; F3 09
	sbc #$EC14.w		; E9 14 EC
	tas		; 1B
	bvc   0.b		; 50 00
	ror $6D06.w		; 6E 06 6D
	ora ($91.b,X)		; 01 91
	bpl  39.b		; 10 27
	jsr $080E.w		; 20 0E 08
	ora [$04.b]		; 07 04
	ora ($01.b,X)		; 01 01
	adc ($9D.b)		; 72 9D
	rol $D8.b		; 26 D8
	bit $10C0.w,X		; 3C C0 10
	rts		; 60

	cpy #$4060.w		; C0 60 40
	rts		; 60

	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	ora $9800.w,X		; 1D 00 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	bra -128.b		; 80 80
	inc A		; 1A
	sbc $09.b		; E5 09
	brk $00.b		; 00 00
	inc $F6.b,X		; F6 F6
	inc $F6.b,X		; F6 F6
	php		; 08
	sbc $F3.b,X		; F5 F3
	adc $F66B.w		; 6D 6B F6
	sta ($00.b),Y		; 91 00
	brk $00.b		; 00 00
	inc $00.b,X		; F6 00
	sbc $00FFF6.l,X		; FF F6 FF 00
	sbc $40F8E0.l,X		; FF E0 F8 40
	sed		; F8
	.db $82, $9A, $D0		; 82 9A D0
	jsr $7098.w		; 20 98 70
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	lsr $B9.b		; 46 B9
	sbc $0020CF.l,X		; FF CF 20 00
	bmi   0.b		; 30 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	cop $CF.b		; 02 CF
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	jmp ($FC80.w,X)		; 7C 80 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $08.b		; 00 08
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $02FD00.l,X		; FF 00 FD 02
	sbc ($0C.b,S),Y		; F3 0C
	and $DC.b		; 25 DC
	and ($CE.b)		; 32 CE
	lda $00C7.w,Y		; B9 C7 00
	brk $09.b		; 00 09
	ora #$0B0B.w		; 09 0B 0B
	ora $F70C.w		; 0D 0C F7
	pea $080B.w		; F4 0B 08
	sta $84.b		; 85 84
	cop $02.b		; 02 02
	inc $0F.b,X		; F6 0F
	and ($CF.b)		; 32 CF
	tas		; 1B
	sbc [$8D.b]		; E7 8D
	and ($C5.b,S),Y		; 33 C5
	tas		; 1B
	xba		; EB
	ora $06F5.w		; 0D F5 06
	ply		; 7A
	ora $CF.b,S		; 03 CF
	cpy #$808F.w		; C0 8F 80
	cmp [$C0.b]		; C7 C0
	sbc $20.b,S		; E3 20
	sbc ($10.b,S),Y		; F3 10
	sbc ($00.b),Y		; F1 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $68.b		; 00 68
	adc ($56.b,X)		; 61 56
	asl $2028.w		; 0E 28 20
	bpl  16.b		; 10 10
	plp		; 28
	bmi  31.b		; 30 1F
	ora $000E0E.l,X		; 1F 0E 0E 00
	brk $66.b		; 00 66
	adc $205E06.l		; 6F 06 5E 20
	plp		; 28
	brk $10.b		; 00 10
	jsr $103F.w		; 20 3F 10
	ora $000E0E.l,X		; 1F 0E 0E 00
	brk $05.b		; 00 05
	clc		; 18
	sta $4D9D.w,X		; 9D 9D 4D
	eor #$0838.w		; 49 38 08
	pha		; 48
	bvc -96.b		; 50 A0
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sbc $00FF79.l		; EF 79 FF 00
	eor $007A00.l		; 4F 00 7A 00
	sed		; F8
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($30.b)		; B2 30
	ply		; 7A
	and $7AF9.w,Y		; 39 F9 7A
	ror $F1.b,X		; 76 F1
	jmp ($ECF3.w,X)		; 7C F3 EC
	sbc $40.b,S		; E3 40
	sbc $F0.b,X		; F5 F0
	sbc ($31.b,S),Y		; F3 31
	jmp ($FC38.w,X)		; 7C 38 FC
	bvs  -4.b		; 70 FC
	adc ($F8.b,X)		; 61 F8
	adc $F0.b,S		; 63 F0
	eor $F0.b,S		; 43 F0
	ora $FA.b		; 05 FA
	adc ($FE.b),Y		; 71 FE
	cmp ($1F.b),Y		; D1 1F
	ora $0EE7F6.l		; 0F F6 E7 0E
	rol $22C5.w		; 2E C5 22
	cmp $35.b,X		; D5 35
.ACCU 16
	rep #$62		; C2 62
	sta $0000.w,Y		; 99 00 00
	inx		; E8
	ora #$EEE2.w		; 09 E2 EE
	asl $1E.b		; 06 1E
	cpy #$D01C.w		; C0 1C D0
	tsb $0EC0.w		; 0C C0 0E
	sta ($15.b),Y		; 91 15
	brk $FF.b		; 00 FF
	and $102F10.l		; 2F 10 2F 10
	and $102F10.l		; 2F 10 2F 10
	ora [$18.b]		; 07 18
	ora [$08.b],Y		; 17 08
	ora [$0C.b],Y		; 17 0C
	ora $0E.b,X		; 15 0E
	ora ($02.b)		; 12 02
	bpl   0.b		; 10 00
	trb $04.b		; 14 04
	trb $04.b		; 14 04
	tas		; 1B
	ora $09.b,S		; 03 09
	ora ($0D.b,X)		; 01 0D
	ora ($0E.b,X)		; 01 0E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $24.b		; 00 24
	bit $44.b		; 24 44
	mvp $48,$48		; 44 48 48
	bit #$9189.w		; 89 89 91
	sta ($11.b),Y		; 91 11
	ora ($21.b),Y		; 11 21
	and ($A1.b,X)		; 21 A1
	lda ($0D.b,X)		; A1 0D
	asl $0C.b		; 06 0C
	ora [$06.b]		; 07 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	rts		; 60

	bit $E7.b		; 24 E7
	rol A		; 2A
	sbc $2D.b,S		; E3 2D
	sbc ($AE.b,X)		; E1 AE
	rts		; 60

	and $600F60.l		; 2F 60 0F 60
	adc ($71.b),Y		; 71 71
	and $9B39.w,Y		; 39 39 9B
	ora $9D.b,S		; 03 9D
	ora ($9E.b,X)		; 01 9E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $001F.w		; 20 1F 00
	ora $003E00.l,X		; 1F 00 3E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	trb $14.b		; 14 14
	lsr $54.b,X		; 56 54
	jsr ($FBF9.w,X)		; FC F9 FB
	adc ($C1.b),Y		; 71 C1
	rts		; 60

	cpy #$0080.w		; C0 80 00
	brk $04.b		; 00 04
	asl $FE14.w,X		; 1E 14 FE
	mvn $F8,$FF		; 54 FF F8
	sbc $00FF71.l,X		; FF 71 FF 00
	sbc $E000.w,Y		; F9 00 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	bra -96.b		; 80 A0
	cpy #$E0C0.w		; C0 C0 E0
	bvc -32.b		; 50 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	rts		; 60

	bmi  32.b		; 30 20
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	bcc   0.b		; 90 00
	bcc   0.b		; 90 00
	cpy #$C010.w		; C0 10 C0
	bpl  96.b		; 10 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $AC.b		; 00 AC
	cmp ($AF.b,S),Y		; D3 AF
	bne -121.b		; D0 87
	sed		; F8
	ora [$F8.b]		; 07 F8
	ora [$F8.b]		; 07 F8
	eor [$B8.b]		; 47 B8
	eor $BC.b,S		; 43 BC
	eor ($BC.b,S),Y		; 53 BC
	ora ($01.b),Y		; 11 01
	bpl   0.b		; 10 00
	sec		; 38
	brk $B8.b		; 00 B8
	bra -72.b		; 80 B8
	bra -72.b		; 80 B8
	bra -68.b		; 80 BC
	bra -68.b		; 80 BC
	bra -67.b		; 80 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$60AF.w		; C0 AF 60
	cmp [$30.b]		; C7 30
	adc ($8C.b,S),Y		; 73 8C
	adc $7C86.w,Y		; 79 86 7C
	sta $3C.b,S		; 83 3C
	cmp $7E.b,S		; C3 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	bpl -121.b		; 10 87
	tsb $83.b		; 04 83
	cop $83.b		; 02 83
	ora $C1.b,S		; 03 C1
	ora ($40.b,X)		; 01 40
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	bra  48.b		; 80 30
	cpy #$C030.w		; C0 30 C0
	clc		; 18
	inx		; E8
	brk $60.b		; 00 60
	tsb $0000.w		; 0C 00 00
	bra -128.b		; 80 80
	cpx #$D040.w		; E0 40 D0
	brk $E0.b		; 00 E0
	jsr $10F8.w		; 20 F8 10
	beq   0.b		; F0 00
	pea $7300.w		; F4 00 73
	stz $9E39.w		; 9C 39 9E
	and #$149E.w		; 29 9E 14
	asl $0608.w		; 0E 08 06
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	trb $1E00.w		; 1C 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	ora $2506.w,Y		; 19 06 25
	asl $3E49.w,X		; 1E 49 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $3E00.w,X		; 1E 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldy #$EFA0.w		; A0 A0 EF
	cmp $001F1F.l		; CF 1F 1F 00
	tsb $0C.b		; 04 0C
	ora $001D.w,X		; 1D 1D 00
	brk $00.b		; 00 00
	ldy #$EF20.w		; A0 20 EF
	ldy #$0FFF.w		; A0 FF 0F
	cmp $041F00.l,X		; DF 00 1F 04
	tsb $1D1D.w		; 0C 1D 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	inc $FE.b,X		; F6 FE
	inc $00FE.w,X		; FE FE 00
	cli		; 58
	cld		; D8
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	inc $FF.b,X		; F6 FF
	brk $FE.b		; 00 FE
	cli		; 58
	cld		; D8
	cpy #$01C0.w		; C0 C0 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	bmi  31.b		; 30 1F
	bmi  31.b		; 30 1F
	bmi  15.b		; 30 0F
	bmi  15.b		; 30 0F
	bpl  15.b		; 10 0F
	bpl  14.b		; 10 0E
	bpl  15.b		; 10 0F
	ora ($2F.b),Y		; 11 2F
	jsr $000F.w		; 20 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000E00.l		; 0F 00 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $D8.b,Y		; 96 D8
	jmp.w [$00DE]		; DC DE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$FF00]		; DC 00 FF
	tya		; 98
	sbc $00DC00.l,X		; FF 00 DC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $00.b		; 00 00
	ror $7E00.w,X		; 7E 00 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $80.b		; 02 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	ora [$0E.b]		; 07 0E
	ora ($0C.b),Y		; 11 0C
	and ($1E.b),Y		; 31 1E
	adc ($28.b,S),Y		; 73 28
	sbc $E4.b,S		; E3 E4
	asl $F8.b		; 06 F8
	dec $F8.b		; C6 F8
	bit $F8.b,X		; 34 F8
	trb $1F.b		; 14 1F
	ora ($1F.b),Y		; 11 1F
	ora ($2C.b),Y		; 11 2C
	jsr $425E.w		; 20 5E 42
	clc		; 18
	brk $04.b		; 00 04
	cpy $30.b		; C4 30
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	asl $FEFE.w,X		; 1E FE FE
	asl $0080.w,X		; 1E 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $9EFF00.l,X		; FF 00 FF 9E
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $01.b		; 00 01
	asl $02.b		; 06 02
	ora $02.b		; 05 02
	ora $0A05.w		; 0D 05 0A
	phd		; 0B
	tsb $1E.b		; 04 1E
	brk $1D.b		; 00 1D
	ora ($33.b,X)		; 01 33
	tsb $0006.w		; 0C 06 00
	tsb $00.b		; 04 00
	ora $0901.w		; 0D 01 09
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	php		; 08
	bpl  28.b		; 10 1C
	tda		; 7B
	cpy $8EF9.w		; CC F9 8E
	beq  31.b		; F0 1F
	inc $3F.b		; E6 3F
	lsr $8E7D.w		; 4E 7D 8E
	cmp $8B5C.w,X		; DD 5C 8B
	ldy $4B.b		; A4 4B
	bmi   0.b		; 30 00
	bvs   2.b		; 70 02
	inx		; E8
	phd		; 0B
	cmp ($17.b),Y		; D1 17
	sty $0C.b		; 84 0C
	jmp $807C.w		; 4C 7C 80
	clv		; B8
	rti		; 40

	clc		; 18
	eor $3C.b,S		; 43 3C
	adc [$38.b]		; 67 38
	adc [$38.b]		; 67 38
	adc $007F20.l,X		; 7F 20 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $003C00.l,X		; 3F 00 3C 00
	and $3A01.w,Y		; 39 01 3A
	cop $24.b		; 02 24
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	ora #$0709.w		; 09 09 07
	ora [$FD.b]		; 07 FD
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $91.b		; 00 91
	sta ($24.b,S),Y		; 93 24
	and $24.b		; 25 24
	bit $49.b		; 24 49
	eor #$8989.w		; 49 89 89
	sta ($91.b),Y		; 91 91
	ora ($12.b)		; 12 12
	jsl $37D822.l		; 22 22 D8 37
	sbc [$00.b]		; E7 00
	sbc $10.b,S		; E3 10
	sbc ($04.b,S),Y		; F3 04
	adc [$88.b],Y		; 77 88
	asl $E9.b,X		; 16 E9
	bit $C3.b		; 24 C3
	bit $C3.b		; 24 C3
	ora $03.b,S		; 03 03
	clc		; 18
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	bra  97.b		; 80 61
	adc ($1A.b,X)		; 61 1A
	inc A		; 1A
	clc		; 18
	clc		; 18
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	jsr $30C0.w		; 20 C0 30
	cpy #$0010.w		; C0 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $1030.w		; 20 30 10
	cpx $DE23.w		; EC 23 DE
	cmp ($3E.b,X)		; C1 3E
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	bit $C1.b,X		; 34 C1
	cpx #$CA0B.w		; E0 0B CA
	php		; 08
	php		; 08
	bit $24.b		; 24 24
	and $25.b		; 25 25
	jsl $222222.l		; 22 22 22 22
	adc $C13F81.l,X		; 7F 81 3F C1
	ora $A759E1.l,X		; 1F E1 59 A7
	ldx $BB51.w		; AE 51 BB
	mvp $02,$FD		; 44 FD 02
	jsr ($8003.w,X)		; FC 03 80
	ora ($C1.b,X)		; 01 C1
	ora ($E1.b,X)		; 01 E1
	ora ($A7.b,X)		; 01 A7
	brk $51.b		; 00 51
	brk $44.b		; 00 44
	brk $02.b		; 00 02
	brk $83.b		; 00 83
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $61.b		; 00 61
	and ($40.b,X)		; 21 40
	bpl  32.b		; 10 20
	jsr $4008.w		; 20 08 40
	lda ($5F.b),Y		; B1 5F
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	jsr $0061.w		; 20 61 00
	bvc  32.b		; 50 20
	jsr $5E00.w		; 20 00 5E
	ora ($FD.b,X)		; 01 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bcc -32.b		; 90 E0
	sec		; 38
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	brk $B0.b		; 00 B0
	cpy #$00FF.w		; C0 FF 00
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	tsb $1807.w		; 0C 07 18
	bit $3E17.w		; 2C 17 3E
	ora $F11F75.l		; 0F 75 1F F1
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	tsb $1800.w		; 0C 00 18
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	bra  15.b		; 80 0F
	beq -55.b		; F0 C9
	inc $FFC4.w,X		; FE C4 FF
	stx $EF.b,Y		; 96 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	inc $FF00.w,X		; FE 00 FF
	brk $EF.b		; 00 EF
	brk $73.b		; 00 73
	clv		; B8
	and ($58.b,S),Y		; 33 58
	ora [$3C.b]		; 07 3C
	ora [$1C.b]		; 07 1C
	ora [$0C.b]		; 07 0C
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	lda $085F08.l,X		; BF 08 5F 08
	and ($00.b,S),Y		; 33 00
	ora ($00.b,S),Y		; 13 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ldx $39.b		; A6 39
	sbc $3C.b,S		; E3 3C
	sbc ($3E.b,X)		; E1 3E
	cpx $3F.b		; E4 3F
	dec $3F.b		; C6 3F
	cmp [$3F.b]		; C7 3F
	cmp $3DCF3F.l		; CF 3F CF 3D
	iny		; C8
	brk $CC.b		; 00 CC
	brk $CE.b		; 00 CE
	brk $CF.b		; 00 CF
	brk $EF.b		; 00 EF
	jsr $20EF.w		; 20 EF 20
	sbc $20FD20.l,X		; FF 20 FD 20
	lsr $2FC0.w,X		; 5E C0 2F
	cpx #$30D7.w		; E0 D7 30
	xba		; EB
	clc		; 18
	adc ($8C.b),Y		; 71 8C
	bit $9EC3.w,X		; 3C C3 9E
	sbc ($8F.b,X)		; E1 8F
	beq -65.b		; F0 BF
	bra  95.b		; 80 5F
	rti		; 40

	ora $000700.l		; 0F 00 07 00
	sta [$04.b]		; 87 04
	cmp ($01.b,X)		; C1 01
	cpx #$F000.w		; E0 00 F0
	brk $B8.b		; 00 B8
	sbc ($58.b),Y		; F1 58
	adc ($88.b),Y		; 71 88
	bmi -56.b		; 30 C8
	bpl -32.b		; 10 E0
	php		; 08
	beq  12.b		; F0 0C
	bvs -124.b		; 70 84
	sec		; 38
	cpy #$0031.w		; C0 31 00
	sta ($00.b),Y		; 91 00
	cpx #$F020.w		; E0 20 F0
	bpl -16.b		; 10 F0
	brk $F8.b		; 00 F8
	php		; 08
	jsr ($FC84.w,X)		; FC 84 FC
	cpy #$1F2F.w		; C0 2F 1F
	and $9F2F1F.l,X		; 3F 1F 2F 9F
	lda [$AF.b]		; A7 AF
	ldy #$2F30.w		; A0 30 2F
	bpl  72.b		; 10 48
	and $063E51.l,X		; 3F 51 3E 06
	eor $0FDF0F.l,X		; 5F 0F DF 0F
	cmp $00FFA3.l,X		; DF A3 FF 00
	sbc $3F4010.l,X		; FF 10 40 3F
	brk $3E.b		; 00 3E
	brk $2B.b		; 00 2B
	tsb $C0.b		; 04 C0
	cpy #$FFFF.w		; C0 FF FF
	sbc $1F1EFF.l,X		; FF FF 1E 1F
	tsb $F1EE.w		; 0C EE F1
	ora $FA.b		; 05 FA
	cop $00.b		; 02 00
	jmp.w [$FF80]		; DC 80 FF
	sbc $FF.b,S		; E3 FF
	cmp $FF0EFF.l		; CF FF 0E FF
	tsb $FF.b		; 04 FF
	and ($2F.b,X)		; 21 2F
	rti		; 40

	eor [$3F.b]		; 47 3F
	bpl  63.b		; 10 3F
	bpl  59.b		; 10 3B
	trb $1F.b		; 14 1F
	php		; 08
	ora $0E0A.w,X		; 1D 0A 0E
	ora $070E.w		; 0D 0E 07
	ora $07.b,S		; 03 07
	ora ($02.b)		; 12 02
	ora ($02.b)		; 12 02
	ora $01.b,X		; 15 01
	php		; 08
	brk $0A.b		; 00 0A
	brk $0D.b		; 00 0D
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	rti		; 40

	eor #$54CE.w		; 49 CE 54
	cmp [$1A.b]		; C7 1A
	cmp $22.b,S		; C3 22
	jsl $424242.l		; 22 42 42 42
	.db $42, $E2		; 42 E2
.ACCU 8
.INDEX 8
	sep #$72		; E2 72
	adc ($B7.b)		; 72 B7
	ora [$BA.b]		; 07 BA
	cop $FD.b		; 02 FD
	eor ($D8.b,X)		; 41 D8
	and [$35.b]		; 27 35
	dex		; CA
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	sbc $00FF7F.l,X		; FF 7F FF 00
	sbc $DCE2.w		; ED E2 DC
	cmp ($00.b,S),Y		; D3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7FFF00.l,X		; FF 00 FF 7F
	sbc $C2FF00.l,X		; FF 00 FF C2
	beq -125.b		; F0 83
	beq -16.b		; F0 F0
	clc		; 18
	rts		; 60

	dey		; 88
	bpl   0.b		; 10 00
	brk $EE.b		; 00 EE
	cpx $EDED.w		; EC ED ED
	ora ($FF.b),Y		; 11 FF
	brk $FE.b		; 00 FE
	ora ($60.b,X)		; 01 60
	brk $F8.b		; 00 F8
	dey		; 88
	bpl -20.b		; 10 EC
	brk $FD.b		; 00 FD
	cpx $01FF.w		; EC FF 01
	sbc $000100.l		; EF 00 01 00
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FB.b,X)		; 01 FB
	tsb $E7.b		; 04 E7
	clc		; 18
	phk		; 4B
	clv		; B8
	adc $9C.b		; 65 9C
	jsl $010122.l		; 22 22 01 01
	ora ($13.b,S),Y		; 13 13
	ora [$17.b],Y		; 17 17
	tas		; 1B
	clc		; 18
	sbc $1017E8.l		; EF E8 17 10
	phd		; 0B
	php		; 08
	sbc $08FF11.l,X		; FF 11 FF 08
	adc $C63F8C.l,X		; 7F 8C 3F C6
	ora $338F66.l,X		; 1F 66 8F 33
	cmp [$1B.b],Y		; D7 1B
	xba		; EB
	ora $888091.l		; 0F 91 80 88
	bra  12.b		; 80 0C
	brk $86.b		; 00 86
	bra -58.b		; 80 C6
	rti		; 40

	sbc $20.b,S		; E3 20
	sbc $00.b,S		; E3 00
	sbc ($00.b,S),Y		; F3 00
	bne -62.b		; D0 C2
	lda $501D.w		; AD 1D 50
	rti		; 40

	jsr $5020.w		; 20 20 50
	rts		; 60

	and $1C1C3F.l,X		; 3F 3F 1C 1C
	brk $00.b		; 00 00
	cmp $0CDF.w		; CD DF 0C
	lda $5040.w,X		; BD 40 50
	brk $20.b		; 00 20
	rti		; 40

	adc $1C3F21.l,X		; 7F 21 3F 1C
	trb $0000.w		; 1C 00 00
	php		; 08
	and [$3F.b],Y		; 37 3F
	and $70909F.l,X		; 3F 9F 90 70
	bpl -112.b		; 10 90
	ldy #$40.b		; A0 40
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cmp $00FFF7.l,X		; DF F7 FF 00
	sta $00F000.l,X		; 9F 00 F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	dec $D46B.w,X		; DE 6B D4
	lda $D1.b		; A5 D1
	bit $33D4.w		; 2C D4 33
	cmp $7C8673.l		; CF 73 86 7C
	.db $82, $FA, $05		; 82 FA 05
	dec $D400.w,X		; DE 00 D4
	brk $DB.b		; 00 DB
	ora ($DB.b,X)		; 01 DB
	brk $C4.b		; 00 C4
	tsb $89.b		; 04 89
	php		; 08
	sta $02.b,S		; 83 02
	ora ($01.b,X)		; 01 01
	and ($CF.b)		; 32 CF
	jmp $3649A7.l		; 5C A7 49 36
	sta $98C430.l		; 8F 30 C4 98
	beq  24.b		; F0 18
	bne  88.b		; D0 58
	rts		; 60

	bpl -49.b		; 10 CF
	brk $07.b		; 00 07
	brk $A6.b		; 00 A6
	ldy #$60.b		; A0 60
	rts		; 60

	rts		; 60

	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	jsr $10F0.w		; 20 F0 10
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	ora $310718.l		; 0F 18 07 31
	trb $71.b		; 14 71
	sbc ($03.b)		; F2 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	asl $2F10.w,X		; 1E 10 2F
	and ($0C.b,X)		; 21 0C
	brk $DD.b		; 00 DD
	rol $269F.w		; 2E 9F 26
	dec $8743.w		; CE 43 87
	eor ($83.b,X)		; 41 83
	cpy #$01.b		; C0 01
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra -18.b		; 80 EE
	jsr $00C6.w		; 20 C6 00
	sta $00.b,S		; 83 00
	cmp ($40.b,X)		; C1 40
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($FE.b,X)		; C1 FE
	sbc $20DF40.l,X		; FF 40 DF 20
	xce		; FB
	brk $59.b		; 00 59
	bra -116.b		; 80 8C
	rti		; 40

	inc $00.b		; E6 00
	adc ($00.b,X)		; 61 00
	inc $4000.w,X		; FE 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
.INDEX 16
	rep #$1C		; C2 1C
	dec $38.b		; C6 38
	sty $38.b		; 84 38
	sty $2C.b		; 84 2C
	sty $1E.b,X		; 94 1E
	ldy $D83E.w		; AC 3E D8
	ror $7CB0.w,X		; 7E B0 7C
	rti		; 40

	sei		; 78
	rti		; 40

	jsr ($F884.w,X)		; FC 84 F8
	bra 112.b		; 80 70
	trb $68.b		; 14 68
	bit $5858.w		; 2C 58 58
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $070E.w		; 0E 0E 07
	and ($14.b),Y		; 31 14
	adc ($F2.b),Y		; 71 F2
	ora $7C.b,S		; 03 7C
	sbc $FC.b,S		; E3 FC
	inc A		; 1A
	jsr ($F40A.w,X)		; FC 0A F4
	php		; 08
	beq   0.b		; F0 00
	asl $2F10.w,X		; 1E 10 2F
	and ($0C.b,X)		; 21 0C
	brk $02.b		; 00 02
.INDEX 8
	sep #$18		; E2 18
	clc		; 18
	bra -120.b		; 80 88
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	cmp $3F3F9F.l,X		; DF 9F 3F 3F
	brk $08.b		; 00 08
	ora $3B3B.w,Y		; 19 3B 3B
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cmp $1FFF40.l,X		; DF 40 FF 1F
	lda $083F00.l,X		; BF 00 3F 08
	ora $3B3B.w,Y		; 19 3B 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($ED.b),Y		; 11 ED
	sbc $FCFD.w,X		; FD FD FC
	brk $B0.b		; 00 B0
	bcs -128.b		; B0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FF00.w,X		; FD 00 FF
	sbc $00FF.w		; ED FF 00
	sbc $B0B0.w,X		; FD B0 B0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $B9B1.w		; 2D B1 B9
	lda $0001.w,X		; BD 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B9.b		; 00 B9
	brk $FF.b		; 00 FF
	and ($FF.b),Y		; 31 FF
	brk $B9.b		; 00 B9
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $00FC00.l,X		; 7F 00 FC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	ora $003E00.l,X		; 1F 00 3E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $BE.b		; 00 BE
	brk $9F.b		; 00 9F
	brk $0F.b		; 00 0F
	brk $40.b		; 00 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $0B.b		; 05 0B
	asl A		; 0A
	ora [$1E.b],Y		; 17 1E
	and [$1D.b]		; 27 1D
	ror $4F32.w		; 6E 32 4F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $17.b		; 00 17
	brk $27.b		; 00 27
	brk $6C.b		; 00 6C
	brk $44.b		; 00 44
	tsb $7E.b		; 04 7E
	brk $7F.b		; 00 7F
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
	cop $02.b		; 02 02
	cop $9C.b		; 02 9C
	sed		; F8
	txy		; 9B
	txy		; 9B
	sed		; F8
	tya		; 98
	sed		; F8
	sty $7C.b		; 84 7C
	cpx #$1C.b		; E0 1C
	sbc ($AE.b)		; F2 AE
	cli		; 58
	inc $1D.b		; E6 1D
	brk $FF.b		; 00 FF
	txy		; 9B
	xce		; FB
	tya		; 98
	tya		; 98
	sty $00.b		; 84 00
	cpx #$00.b		; E0 00
	sbc ($00.b)		; F2 00
	cli		; 58
	brk $1D.b		; 00 1D
	brk $70.b		; 00 70
	sta [$B0.b]		; 87 B0
	cmp $F0.b,S		; C3 F0
	cmp #$D0.b		; C9 D0
	adc #$F8.b		; 69 F8
	rts		; 60

	tay		; A8
	bvs -24.b		; 70 E8
	bmi -24.b		; 30 E8
	ldy #$87.b		; A0 87
	brk $C3.b		; 00 C3
	brk $C9.b		; 00 C9
	brk $69.b		; 00 69
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $A0.b		; 00 A0
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	trb $1818.w		; 1C 18 18
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	inc $FAFF.w,X		; FE FF FA
	ora ($8C.b,X)		; 01 8C
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FEFF00.l,X		; FF 00 FF FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $100020.l,X		; FF 20 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	rts		; 60

	rol $7E40.w,X		; 3E 40 7E
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $04.b		; 00 04
	stz $04.b		; 64 04
	cpy $04.b		; C4 04
	sty $04.b		; 84 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	jsr $0820.w		; 20 20 08
	php		; 08
	plp		; 28
	plp		; 28
	ldy $FBAB.w		; AC AB FB
	sbc ($F3.b,S),Y		; F3 F3
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ldy $FF28.w,X		; BC 28 FF
	tay		; A8
	sbc $60FFF3.l,X		; FF F3 FF 60
	xce		; FB
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $1107.w		; 0C 07 11
	bpl  55.b		; 10 37
	and ($48.b),Y		; 31 48
	adc $62.b		; 65 62
	.db $42, $62		; 42 62
	adc $00.b,S		; 63 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	ora $201110.l		; 0F 10 11 20
	and [$42.b],Y		; 37 42
	adc $426303.l		; 6F 03 63 42
	adc ($00.b,S),Y		; 73 00
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	jsr $0008.w		; 20 08 00
	sty $00.b		; 84 00
	php		; 08
	dey		; 88
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rts		; 60

	bpl  24.b		; 10 18
	brk $2C.b		; 00 2C
	brk $8C.b		; 00 8C
	brk $86.b		; 00 86
	brk $CC.b		; 00 CC
	brk $4C.b		; 00 4C
	ora [$1B.b]		; 07 1B
	phd		; 0B
	asl $13.b,X		; 16 13
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $09.b		; 00 09
	phd		; 0B
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jmp $4400.w		; 4C 00 44
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
	brk $1A.b		; 00 1A
	adc $3A.b,S		; 63 3A
	adc $3A.b,S		; 63 3A
	adc $1A.b,S		; 63 1A
	cmp $7A.b,S		; C3 7A
	cmp $7A.b,S		; C3 7A
	cmp $38.b,S		; C3 38
	.db $82, $7C, $86		; 82 7C 86
	and $1D21.w,X		; 3D 21 1D
	ora ($5D.b,X)		; 01 5D
	eor ($7D.b,X)		; 41 7D
	eor ($3D.b,X)		; 41 3D
	ora ($3C.b,X)		; 01 3C
	brk $7E.b		; 00 7E
	cop $F8.b		; 02 F8
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rts		; 60

	php		; 08
	clc		; 18
	trb $0E3C.w		; 1C 3C 0E
	ldx $D696.w		; AE 96 D6
	sta $34.b,X		; 95 34
	ora ($C3.b,X)		; 01 C3
	brk $C0.b		; 00 C0
	rti		; 40

	jsr ($7E08.w,X)		; FC 08 7E
	tsb $06FE.w		; 0C FE 06
	sbc $00FF02.l,X		; FF 02 FF 00
	inc $3CC3.w,X		; FE C3 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $E000.w		; 20 00 E0
	brk $30.b		; 00 30
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora ($13.b,X)		; 01 13
	ora [$37.b]		; 07 37
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $010F03.l		; 0F 03 0F 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $C2.b		; 00 C2
	ora $F3FFFF.l		; 0F FF FF F3
	jsr ($E7D0.w,X)		; FC D0 E7
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	inc $E0FF.w,X		; FE FF E0
	sbc $9EF887.l,X		; FF 87 F8 9E
	phk		; 4B
	jmp $63A0.w		; 4C A0 63
	eor $3DBB.w,X		; 5D BB 3D
	sbc $593A.w,X		; FD 3A 59
	.db $82, $35, $CA		; 82 35 CA
	and $4772CE.l,X		; 3F CE 72 47
	bit $8D23.w,X		; 3C 23 8D
	ora $301F51.l		; 0F 51 1F 30
	and $4083A0.l,X		; 3F A0 83 40
	eor $08.b,S		; 43 08
	ora $000000.l		; 0F 00 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$C0.b		; C0 C0
	rts		; 60

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	rti		; 40

	beq -30.b		; F0 E2
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	adc $F1FE.w,Y		; 79 FE F1
	inc $FEE5.w,X		; FE E5 FE
	cmp #$FE.b		; C9 FE
	sbc $FC00.w,Y		; F9 00 FC
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $DE.b		; 00 DE
	jsr $10EF.w		; 20 EF 10
	sbc [$90.b],Y		; F7 90
	and [$90.b],Y		; 37 90
	ora $5C82.w		; 0D 82 5C
	wai		; CB
	ldy $3C7B.w,X		; BC 7B 3C
	tda		; 7B
	cmp ($00.b,X)		; C1 00
	cpx #$00.b		; E0 00
	rts		; 60

	php		; 08
	cpx #$88.b		; E0 88
.INDEX 8
	sep #$9A		; E2 9A
	ora #$39.b		; 09 39
	clc		; 18
	sed		; F8
	brk $F8.b		; 00 F8
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora #$07.b		; 09 07
	cop $0F.b		; 02 0F
	ora $0E.b,X		; 15 0E
	ora $1C.b,S		; 03 1C
	and [$18.b]		; 27 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	trb $1800.w		; 1C 00 18
	brk $3F.b		; 00 3F
	sbc $E0FF7C.l,X		; FF 7C FF E0
	sbc $10FF80.l,X		; FF 80 FF 10
	sbc $CF9F63.l		; EF 63 9F CF
	and $FFFF1F.l,X		; 3F 1F FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $9F.b		; 00 9F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	rts		; 60

	jsr $1A20.w		; 20 20 1A
	inc A		; 1A
	tsb $10.b		; 04 10
	ora #$06.b		; 09 06
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($71.b,X)		; 41 71
	ora ($39.b,X)		; 01 39
	ora ($1F.b),Y		; 11 1F
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	cpx $3000.w		; EC 00 30
	jsr $D810.w		; 20 10 D8
	beq -16.b		; F0 F0
	cpy #$E0.b		; C0 E0
	rti		; 40

	clc		; 18
	brk $78.b		; 00 78
	rts		; 60

	cpy #$FE.b		; C0 FE
	cpy #$DC.b		; C0 DC
	cpy #$F0.b		; C0 F0
	cpy #$F8.b		; C0 F8
	rti		; 40

	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	jsr $1F78.w		; 20 78 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	ora [$1C.b]		; 07 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	phd		; 0B
	php		; 08
	bvs -124.b		; 70 84
	sei		; 78
	sty $88F0.w		; 8C F0 88
	cpx #$88.b		; E0 88
	bvs  24.b		; 70 18
	rti		; 40

	bpl -32.b		; 10 E0
	bmi -128.b		; 30 80
	jsr $84FC.w		; 20 FC 84
	beq -128.b		; F0 80
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bcs -37.b		; B0 DB
	sec		; 38
	cmp $CD38.w		; CD 38 CD
	adc $AC8C.w,Y		; 79 8C AC
	rol $9C.b		; 26 9C
	stx $78.b		; 86 78
	beq 126.b		; F0 7E
	cmp $D3.b,S		; C3 D3
	bit $3EC9.w,X		; 3C C9 3E
	cmp #$1E.b		; C9 1E
	dey		; 88
	asl $3F74.w,X		; 1E 74 3F
	stz $0F.b		; 64 0F
	bra -113.b		; 80 8F
	dec A		; 3A
	ora [$90.b]		; 07 90
	inx		; E8
	cpy #$F8.b		; C0 F8
	bvc -24.b		; 50 E8
	bcc -24.b		; 90 E8
	bmi -64.b		; 30 C0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra 127.b		; 80 7F
	ora $79067F.l		; 0F 7F 06 79
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	sta ($3E.b,X)		; 81 3E
	cmp ($0B.b,X)		; C1 0B
	sed		; F8
	ora $FC.b		; 05 FC
	rol $2F.b		; 26 2F
	jsr $1027.w		; 20 27 10
	asl $20.b,X		; 16 20
	jsr $1C9D.w		; 20 9D 1C
	rep #$00		; C2 00
	sbc [$00.b]		; E7 00
	sbc ($00.b,S),Y		; F3 00
	rti		; 40

	sta $CE5F26.l,X		; 9F 26 5F CE
	and $387E9D.l,X		; 3F 9D 7E 38
	inc $FEE1.w,X		; FE E1 FE
	cop $FD.b		; 02 FD
	.db $82, $7C, $1F		; 82 7C 1F
	cpx #$5F.b		; E0 5F
	bra  63.b		; 80 3F
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7C.b		; 00 7C
	brk $BD.b		; 00 BD
	ora ($5E.b,X)		; 01 5E
	stx $0D92.w		; 8E 92 0D
	lda [$0B.b],Y		; B7 0B
	dec $C4B2.w		; CE B2 C4
	clv		; B8
	inx		; E8
	sty $38.b,X		; 94 38
	sty $A8.b		; 84 A8
	trb $2C.b		; 14 2C
	rol $6160.w		; 2E 60 61
	.db $42, $43		; 42 43
	ora ($92.b)		; 12 92
	php		; 08
	dey		; 88
	tsb $84.b		; 04 84
	tsb $1CC4.w		; 0C C4 1C
	pei ($C0.b)		; D4 C0
	rts		; 60

	cpy #$60.b		; C0 60
	cpx #$30.b		; E0 30
	rti		; 40

	jsr $1838.w		; 20 38 18
	sec		; 38
	clc		; 18
	jsr $1800.w		; 20 00 18
	tsb $F040.w		; 0C 40 F0
	rti		; 40

	sed		; F8
	jsr $00F8.w		; 20 F8 00
	bvs  16.b		; 70 10
	bit $3810.w,X		; 3C 10 38
	brk $3C.b		; 00 3C
	php		; 08
	asl $FE91.w,X		; 1E 91 FE
	lda ($7E.b,X)		; A1 7E
	adc ($FE.b,X)		; 61 FE
	cmp $FC.b,S		; C3 FC
	cmp $FA.b		; C5 FA
	dey		; 88
	sbc [$90.b],Y		; F7 90
	sbc $FEEE11.l		; EF 11 EE FE
	brk $7E.b		; 00 7E
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FA.b		; 00 FA
	cop $F5.b		; 02 F5
	ora $E8.b		; 05 E8
	php		; 08
	cpx #$00.b		; E0 00
	jmp $3333.w		; 4C 33 33
	tsb $2F90.w		; 0C 90 2F
	sta ($2E.b),Y		; 91 2E
	lda #$16.b		; A9 16
	lda $1F8F19.l		; AF 19 8F 1F
	lda $F0000F.l		; AF 0F 00 F0
	tsb $03CC.w		; 0C CC 03
	adc $00.b,S		; 63 00
	rts		; 60

	brk $70.b		; 00 70
	ora ($79.b,X)		; 01 79
	asl $7F.b		; 06 7F
	stx $FF.b		; 86 FF
	pld		; 2B
	bpl  38.b		; 10 26
	ora ($24.b),Y		; 11 24
	ora $2C.b,S		; 03 2C
	ora $09.b,S		; 03 09
	ora [$19.b]		; 07 19
	ora [$11.b]		; 07 11
	asl $0D12.w		; 0E 12 0D
	bpl   0.b		; 10 00
	ora ($00.b),Y		; 11 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0D00.w		; 0E 00 0D
	brk $3F.b		; 00 3F
	sbc $EFFF77.l,X		; FF 77 FF EF
	inc $FDDE.w,X		; FE DE FD
	plx		; FA
	lda $7BBD.w,X		; BD BD 7B
	adc $FB.b,X		; 75 FB
	xce		; FB
	sbc [$FF.b],Y		; F7 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $BD.b		; 00 BD
	brk $7B.b		; 00 7B
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $02.b		; 00 02
	ora $1B24.w,X		; 1D 24 1B
	and $1B.b		; 25 1B
	and #$17.b		; 29 17
	and #$17.b		; 29 17
	and $3D07.w,Y		; 39 07 3D
	ora $35.b,S		; 03 35
	ora $1D.b,S		; 03 1D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $EB.b		; 00 EB
	sbc [$F6.b],Y		; F7 F6
	sbc $E6EFD6.l		; EF D6 EF E6
	cmp $ADDEA5.l,X		; DF A5 DE AD
	dec $9EED.w,X		; DE ED 9E
	xba		; EB
	stz $00F7.w		; 9C F7 00
	sbc $00EF00.l		; EF 00 EF 00
	cmp $00DE00.l,X		; DF 00 DE 00
	dec $9E00.w,X		; DE 00 9E
	brk $9C.b		; 00 9C
	brk $2B.b		; 00 2B
	pei ($67.b)		; D4 67
	tya		; 98
	cmp $609F30.l		; CF 30 9F 60
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp ($01.b),Y		; D1 01
	sta ($12.b)		; 92 12
	bit $24.b		; 24 24
	pha		; 48
	pha		; 48
	ora ($11.b),Y		; 11 11
	and ($21.b,X)		; 21 21
	.db $42, $42		; 42 42
	mvp $C7,$44		; 44 44 C7
	ora [$EA.b],Y		; 17 EA
	asl A		; 0A
	sbc $05.b,X		; F5 05
	plx		; FA
	cop $FD.b		; 02 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	and $543F22.l,X		; 3F 22 3F 54
	eor $249792.l,X		; 5F 92 97 24
	rol $24.b		; 26 24
	bit $44.b		; 24 44
	mvp $44,$44		; 44 44 44
	bvc  52.b		; 50 34
	stx $B8.b,Y		; 96 B8
	eor $21DC30.l		; 4F 30 DC 21
	sbc $F903.w,Y		; F9 03 F9
	ora $FC.b,S		; 03 FC
	ora ($F6.b,X)		; 01 F6
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	cpy #$10.b		; C0 10
	bcc  64.b		; 90 40
	eor $40.b,S		; 43 40
	eor [$A0.b]		; 47 A0
	lda [$90.b]		; A7 90
	sta ($90.b,S),Y		; 93 90
	sta ($18.b),Y		; 91 18
	tsb $0C18.w		; 0C 18 0C
	tsb $0C06.w		; 0C 06 0C
	asl $8C.b		; 06 8C
	sta [$C6.b]		; 87 C6
	cmp $E6.b,S		; C3 E6
	sbc $77.b,S		; E3 77
	sbc ($08.b,S),Y		; F3 08
	asl $1E08.w,X		; 1E 08 1E
	tsb $0F.b		; 04 0F
	tsb $8F.b		; 04 8F
	sty $CF.b		; 84 CF
.ACCU 16
	rep #$E7		; C2 E7
	.db $62, $F7, $33		; 62 F7 33
	sbc $F806F4.l,X		; FF F4 06 F8
	cop $FE.b		; 02 FE
	sta $7C.b,S		; 83 7C
	cmp ($3F.b,X)		; C1 3F
	sbc ($16.b,X)		; E1 16
	bvs  11.b		; 70 0B
	sec		; 38
	ora $1C.b		; 05 1C
	sed		; F8
	brk $FE.b		; 00 FE
	cop $7C.b		; 02 7C
	brk $BF.b		; 00 BF
	sta ($5E.b,X)		; 81 5E
	rti		; 40

	and $000720.l		; 2F 20 07 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	ldy #$20.b		; A0 20
	tsb $0008.w		; 0C 08 00
	php		; 08
	cop $02.b		; 02 02
	tsb $0C06.w		; 0C 06 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0C00.w		; 1C 00 0C
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	tsb $01.b		; 04 01
	ora #$0F03.w		; 09 03 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $06.b		; 00 06
	asl $08.b		; 06 08
	php		; 08
	bpl  16.b		; 10 10
	ply		; 7A
	cmp $FC.b,S		; C3 FC
	asl $F8.b		; 06 F8
	inc $F8.b,X		; F6 F8
	trb $F8.b		; 14 F8
	trb $F8.b		; 14 F8
	bpl -24.b		; 10 E8
	bpl -32.b		; 10 E0
	brk $BC.b		; 00 BC
	bra   0.b		; 80 00
	brk $74.b		; 00 74
	pea $1010.w		; F4 10 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bmi  96.b		; 30 60
	clc		; 18
	bpl  24.b		; 10 18
	bpl   0.b		; 10 00
	bpl   8.b		; 10 08
	tsb $0010.w		; 0C 10 00
	tsb $0C06.w		; 0C 06 0C
	asl $20.b		; 06 20
	jmp ($3C00.w,X)		; 7C 00 3C
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	php		; 08
	asl $1C00.w		; 0E 00 1C
	tsb $0F.b		; 04 0F
	tsb $0E.b		; 04 0E
	and $001F00.l,X		; 3F 00 1F 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
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
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	ora ($38.b,X)		; 01 38
	ora [$60.b]		; 07 60
	ora $007F8F.l,X		; 1F 8F 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$34.b		; E0 34
	ora $12.b,S		; 03 12
	ora ($12.b,X)		; 01 12
	ora ($12.b,X)		; 01 12
	ora ($11.b,X)		; 01 11
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EB.b		; 00 EB
	stz $9CEB.w		; 9C EB 9C
	sbc $986798.l		; EF 98 67 98
	ror $88.b,X		; 76 88
	lsr $88.b,X		; 56 88
	pei ($08.b)		; D4 08
	cpy $9C00.w		; CC 00 9C
	brk $9C.b		; 00 9C
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	brk $0F.b		; 00 0F
	bpl   7.b		; 10 07
	clc		; 18
	phd		; 0B
	trb $3302.w		; 1C 02 33
	ora ($33.b)		; 12 33
	asl A		; 0A
	and $28.b,S		; 23 28
	plp		; 28
	bpl  16.b		; 10 10
	ora #$0D09.w		; 09 09 0D
	ora $1717.w		; 0D 17 17
	ora $0D11.w,X		; 1D 11 0D
	ora ($3D.b,X)		; 01 3D
	and ($FF.b,X)		; 21 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cmp ($01.b,X)		; C1 01
	cpx $8484.w		; EC 84 84
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	dey		; 88
	dey		; 88
	cmp #$BEC9.w		; C9 C9 BE
	ldx $8487.w,Y		; BE 87 84
	xce		; FB
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bpl -64.b		; 10 C0
	bmi -96.b		; 30 A0
	sec		; 38
	bne  28.b		; D0 1C
	inx		; E8
	tsb $8888.w		; 0C 88 88
	php		; 08
	php		; 08
	bvc  80.b		; 50 50
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	bne -112.b		; D0 90
	inx		; E8
	php		; 08
	pea $3A04.w		; F4 04 3A
	sei		; 78
	sta $213D.w,X		; 9D 3D 21
	ora $0009.w		; 0D 09 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	sbc $017F0D.l,X		; FF 0D 7F 01
	ora $000700.l,X		; 1F 00 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bmi  64.b		; 30 40
	clc		; 18
	bmi -104.b		; 30 98
	rts		; 60

	php		; 08
	sei		; 78
	brk $F8.b		; 00 F8
	bra -12.b		; 80 F4
	dey		; 88
	bvs -104.b		; 70 98
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$80.b		; E0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	rts		; 60

	brk $60.b		; 00 60
	php		; 08
	bne -100.b		; D0 9C
	rts		; 60

	rts		; 60

	rts		; 60

	cpx #$30.b		; E0 30
	bmi -112.b		; 30 90
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	brk $60.b		; 00 60
	rts		; 60

	bra  80.b		; 80 50
	rts		; 60

	beq  32.b		; F0 20
	beq  16.b		; F0 10
	sed		; F8
	bra  -8.b		; 80 F8
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	rts		; 60

	rts		; 60

	brk $F8.b		; 00 F8
	ora $C6.b,S		; 03 C6
	ora ($C7.b,X)		; 01 C7
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $84.b		; 85 84
	.db $82, $82, $01		; 82 82 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bmi  96.b		; 30 60
	bcs -16.b		; B0 F0
	tya		; 98
	bmi  24.b		; 30 18
	bcs -40.b		; B0 D8
	sed		; F8
	cpx $4C58.w		; EC 58 4C
	bit $2028.w,X		; 3C 28 20
	sei		; 78
	jsr $90F8.w		; 20 F8 90
	jsr ($3C10.w,X)		; FC 10 3C
	bcc  -4.b		; 90 FC
	inx		; E8
	inc $5E48.w,X		; FE 48 5E
	plp		; 28
	and $1F000F.l,X		; 3F 0F 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  88.b		; 70 58
	bmi  24.b		; 30 18
	jsr $0C00.w		; 20 00 0C
	tsb $0C08.w		; 0C 08 0C
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	tsb $06.b		; 04 06
	bvc 124.b		; 50 7C
	bpl  60.b		; 10 3C
	brk $3E.b		; 00 3E
	php		; 08
	asl $1E00.w,X		; 1E 00 1E
	brk $17.b		; 00 17
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	jsr ($7C00.w,X)		; FC 00 7C
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $003E00.l,X		; 1F 00 3E 00
	ror $7C00.w,X		; 7E 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $6020.w		; 20 20 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	rol $3E00.w,X		; 3E 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $2C.b		; 00 2C
	bit $373F.w		; 2C 3F 37
	adc $2270.w,Y		; 79 70 22
	and ($42.b,X)		; 21 42
	.db $42, $02		; 42 02
	.db $42, $C0		; 42 C0
	eor $00.b,S		; 43 00
	brk $2C.b		; 00 2C
	bit $3F21.w		; 2C 21 3F
	rti		; 40

	adc $3300.w,Y		; 79 00 33
	eor $73.b,S		; 43 73
	ora $63.b,S		; 03 63
	brk $E3.b		; 00 E3
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	rti		; 40

	ldy #$C0.b		; A0 C0
	rti		; 40

	jsr $909C.w		; 20 9C 90
	pha		; 48
	tya		; 98
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	rts		; 60

	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	bpl -36.b		; 10 DC
	php		; 08
	cld		; D8
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$F0.b		; E0 F0
	jsr ($78FC.w,X)		; FC FC 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0.b		; E0 C0
	sbc $00FFFC.l,X		; FF FC FF 00
	sbc $1E1818.l,X		; FF 18 18 1E
	bpl  28.b		; 10 1C
	bpl  16.b		; 10 10
	jsr $2010.w		; 20 10 20
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bpl 112.b		; 10 70
	php		; 08
	asl $3F10.w,X		; 1E 10 3F
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	rti		; 40

	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($0B.b,X)		; 01 0B
	ora [$14.b]		; 07 14
	ora $001E29.l		; 0F 29 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $01.b		; 00 01
	brk $1C.b		; 00 1C
	ora $63.b,S		; 03 63
	ora $F07FBF.l,X		; 1F BF 7F F0
	sbc $70FF80.l,X		; FF 80 FF 70
	sta $007C83.l		; 8F 83 7C 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8F.b		; 00 8F
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $7F.b		; 00 7F
	ora $FF.b,S		; 03 FF
	ora ($FE.b,X)		; 01 FE
	ora ($3F.b,X)		; 01 3F
	cpy #$1F.b		; C0 1F
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$18.b]		; 07 18
	tas		; 1B
	adc $65.b		; 65 65
	ora ($13.b)		; 12 13
	php		; 08
	php		; 08
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $F8.b		; E4 F8
	sbc $FF3FFF.l,X		; FF FF 3F FF
	cmp $00E03F.l		; CF 3F E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	jsr ($0FFF.w,X)		; FC FF 0F
	sbc $00FF01.l,X		; FF 01 FF 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	and $007F07.l,X		; 3F 07 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E1.b		; 00 E1
	brk $0F.b		; 00 0F
	beq -32.b		; F0 E0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $5E.b		; 00 5E
	and ($56.b,X)		; 21 56
	and ($65.b,X)		; 21 65
	ora $6D.b,S		; 03 6D
	ora $4A.b,S		; 03 4A
	ora [$4A.b]		; 07 4A
	ora [$44.b]		; 07 44
	ora $210E05.l		; 0F 05 0E 21
	brk $21.b		; 00 21
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $4E.b		; 00 4E
	sbc $26FE99.l,X		; FF 99 FE 26
	sbc $E758.w,Y		; F9 58 E7
	jsr $40DF.w		; 20 DF 40
	lda $627B9C.l,X		; BF 9C 7B 62
	sbc $00FF.w,X		; FD FF 00
	inc $F900.w,X		; FE 00 F9
	brk $E7.b		; 00 E7
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	ora ($7A.b,X)		; 01 7A
	cop $FC.b		; 02 FC
	brk $8A.b		; 00 8A
	stz $0A.b,X		; 74 0A
	pea $C53B.w		; F4 3B C5
	sbc [$09.b],Y		; F7 09
	ora $E9.b,X		; 15 E9
	rol $DA.b		; 26 DA
	ror $9B.b		; 66 9B
	tyx		; BB
	cop $44.b		; 02 44
	mvp $80,$80		; 44 80 80
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	.db $82, $82, $80		; 82 82 80
	sta $00.b,S		; 83 00
	ora $E0.b,S		; 03 E0
	sbc ($3C.b)		; F2 3C
	tsb $2C18.w		; 0C 18 2C
	bcs -36.b		; B0 DC
	bcs  88.b		; B0 58
	rts		; 60

	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	rts		; 60

	cpy #$F7.b		; C0 F7
	tsb $083E.w		; 0C 3E 08
	rol $FE10.w,X		; 3E 10 FE
	bpl  -4.b		; 10 FC
	jsr $207C.w		; 20 7C 20
	sed		; F8
	rti		; 40

	beq  15.b		; F0 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $06.b		; 00 06
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
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
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
	brk $30.b		; 00 30
	ora ($20.b),Y		; 11 20
	rti		; 40

	adc #$3829.w		; 69 29 38
	and $4E1F34.l,X		; 3F 34 1F 4E
	rti		; 40

	rts		; 60

	rts		; 60

	sei		; 78
	rti		; 40

	asl $0E7E.w		; 0E 7E 0E
	ror $6F0E.w		; 6E 0E 6F
	php		; 08
	and $7F00.w,Y		; 39 00 7F
	brk $7F.b		; 00 7F
	jsr $4079.w		; 20 79 40
	jsr ($0008.w,X)		; FC 08 00
	php		; 08
	brk $30.b		; 00 30
	jsr $A0E0.w		; 20 E0 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $0C.b		; 00 0C
	brk $B8.b		; 00 B8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0C04.w		; 09 04 0C
	ora $01.b		; 05 01
	ora ($23.b,X)		; 01 23
	and $18070C.l		; 2F 0C 07 18
	asl $0C18.w		; 0E 18 0C
	bmi  24.b		; 30 18
	brk $3F.b		; 00 3F
	tsb $1F.b		; 04 1F
	ora ($0F.b,X)		; 01 0F
	and ($2F.b,X)		; 21 2F
	tsb $0F.b		; 04 0F
	php		; 08
	ora $101E08.l,X		; 1F 08 1E 10
	rol $F070.w,X		; 3E 70 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -16.b		; 70 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $19.b,X		; 36 19
	eor $5B33.w		; 4D 33 5B
	and [$B6.b]		; 27 B6
	eor $D90FF4.l		; 4F F4 0F D9
	asl $1C8B.w		; 0E 8B 1C
	sta [$18.b]		; 87 18
	ora $3300.w,Y		; 19 00 33
	brk $27.b		; 00 27
	brk $4F.b		; 00 4F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $6C.b		; 00 6C
	sbc ($9B.b,S),Y		; F3 9B
	sbc [$37.b]		; E7 37
	cmp $D89F6E.l		; CF 6E 9F D8
	and $C07FA0.l,X		; 3F A0 7F C0
	adc $F37F83.l,X		; 7F 83 7F F3
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	brk $9F.b		; 00 9F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $C9.b		; 00 C9
	lda [$43.b],Y		; B7 43
	ora $813FC4.l,X		; 1F C4 3F 81
	rol $6BD5.w,X		; 3E D5 6B
	sta $77.b,S		; 83 77
	ora ($74.b,X)		; 01 74
	ora $677C.w		; 0D 7C 67
	jsr $00EF.w		; 20 EF 00
	sbc $00DE20.l		; EF 20 DE 00
	plb		; AB
	ora ($FC.b,X)		; 01 FC
	rti		; 40

	lda $00F300.l,X		; BF 00 F3 00
	dec $2AFC.w,X		; DE FC 2A
	jmp.w [$987C]		; DC 7C 98
	bvc -24.b		; 50 E8
	jsr $C040.w		; 20 40 C0
	rts		; 60

	cpx #$10.b		; E0 10
	cpy #$20.b		; C0 20
	jsr ($DC00.w,X)		; FC 00 DC
	brk $98.b		; 00 98
	brk $28.b		; 00 28
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	ora [$03.b]		; 07 03
	jsr ($FFFC.w,X)		; FC FC FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	asl $C0F1.w		; 0E F1 C0
	and $07FF3F.l,X		; 3F 3F FF 07
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F1.b		; 00 F1
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $70.b		; 00 70
	sbc $70F30D.l,X		; FF 0D F3 70
	stx $FE01.w		; 8E 01 FE
	sbc $E41902.l,X		; FF 02 19 E4
	tas		; 1B
	cpx $37.b		; E4 37
	cpy $FF.b		; C4 FF
	ora ($F2.b,X)		; 01 F2
	brk $8D.b		; 00 8D
	brk $FF.b		; 00 FF
	cop $01.b		; 02 01
	brk $E3.b		; 00 E3
	brk $E7.b		; 00 E7
	tsb $C3.b		; 04 C3
	php		; 08
	ora $0B0E.w,Y		; 19 0E 0B
	ora $1937.w,X		; 1D 37 19
	ror $DE33.w		; 6E 33 DE
	adc $CD.b,S		; 63 CD
	cop $0A.b		; 02 0A
	tsb $08.b		; 04 08
	tsb $0E.b		; 04 0E
	brk $1D.b		; 00 1D
	brk $19.b		; 00 19
	brk $33.b		; 00 33
	brk $63.b		; 00 63
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $C9.b		; 00 C9
	inc $99.b,X		; F6 99
	inc $2B.b		; E6 2B
	cpy $45.b		; C4 45
	dey		; 88
	tya		; 98
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	brk $E7.b		; 00 E7
	ora ($C5.b,X)		; 01 C5
	ora ($89.b,X)		; 01 89
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	ora ($81.b,X)		; 01 81
	ora ($8C.b,X)		; 01 8C
	tsb $35F5.w		; 0C F5 35
	cmp $03.b,S		; C3 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	bra -113.b		; 80 8F
	tsb $7F.b		; 04 7F
	eor $7F.b		; 45 7F
	.db $42, $7F		; 42 7F
	cpy #$E0.b		; C0 E0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F0.b		; C0 F0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	phd		; 0B
	pea $28D6.w		; F4 D6 28
	ora ($EC.b)		; 12 EC
	ora ($EE.b),Y		; 11 EE
	cpx #$1F.b		; E0 1F
	and [$D8.b]		; 27 D8
	and $807FD0.l		; 2F D0 7F 80
	pea $2800.w		; F4 00 28
	ora #$05E4.w		; 09 E4 05
	sep #$02		; E2 02
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	ora [$07.b]		; 07 07
	jmp $0F075C.l		; 5C 5C 07 0F
	adc $7AB106.l,X		; 7F 06 B1 7A
	tsa		; 3B
	jmp ($1D9E.w,X)		; 7C 9E 1D
	lda $36D76E.l		; AF 6E D7 36
	cpx $14.b		; E4 14
	asl $FF.b		; 06 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	bpl  -4.b		; 10 FC
	ora $0C7D.w,Y		; 19 7D 0C
	ror $BE84.w,X		; 7E 84 BE
	rti		; 40

	eor $000602.l,X		; 5F 02 06 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	clc		; 18
	cpx #$08.b		; E0 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	rts		; 60

	php		; 08
	clc		; 18
	plp		; 28
	ldy $7CD8.w,X		; BC D8 7C
	bcs -16.b		; B0 F0
	bpl -16.b		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	plp		; 28
	bvc  88.b		; 50 58
	bcs -80.b		; B0 B0
	ora $301F20.l		; 0F 20 1F 30
	ora $301F30.l,X		; 1F 30 1F 30
	ora $100F30.l		; 0F 30 0F 10
	ora $100710.l		; 0F 10 07 10
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $101F10.l,X		; 1F 10 1F 10
	brk $66.b		; 00 66
	ora $63.b		; 05 63
	tsb $43.b		; 04 43
	rol $2866.w		; 2E 66 28
	stz $38.b,X		; 74 38
	jmp ($4C18.w)		; 6C 18 4C
	bmi  88.b		; 30 58
	cmp $42.b,S		; C3 42
	cpy #$44.b		; C0 44
	cpy #$46.b		; C0 46
	inc $6F.b		; E6 6F
	cpx #$7F.b		; E0 7F
	inx		; E8
	ror $5EC8.w,X		; 7E C8 5E
	bcc  62.b		; 90 3E
	sbc $00FE00.l,X		; FF 00 FE 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
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
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	asl $0000.w		; 0E 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
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
	brk $E0.b		; 00 E0
	sbc $F0FF80.l,X		; FF 80 FF F0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FDFE01.l,X		; FF 01 FE FD
	inc $FEC1.w,X		; FE C1 FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FE00.w,X		; FE 00 FE
	brk $63.b		; 00 63
	dey		; 88
	sbc [$08.b]		; E7 08
	dec $D008.w		; CE 08 D0
	ora ($9D.b,X)		; 01 9D
	ora $B3.b,S		; 03 B3
	ora $A71FA7.l		; 0F A7 1F A7
	ora $0F1087.l,X		; 1F 87 10 0F
	clc		; 18
	asl $31.b		; 06 31
	php		; 08
	and [$00.b],Y		; 37 00
	adc $037F01.l,X		; 7F 01 7F 03
	adc $A57F03.l,X		; 7F 03 7F A5
	stz $1C00.w		; 9C 00 1C
	rti		; 40

	sta $D0D0A0.l,X		; 9F A0 D0 D0
	cpx #$F0.b		; E0 F0
	cpx #$E9.b		; E0 E9
	bne -57.b		; D0 C7
	clv		; B8
	tas		; 1B
	cli		; 58
	ora $E000EC.l		; 0F EC 00 E0
	brk $E0.b		; 00 E0
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	bne -48.b		; D0 D0
	tay		; A8
	tay		; A8
	bra -32.b		; 80 E0
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	adc [$61.b]		; 67 61
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	adc ($67.b,X)		; 61 67
	bvs  24.b		; 70 18
	rts		; 60

	bmi -32.b		; 30 E0
	bvs -64.b		; 70 C0
	rts		; 60

	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bpl 124.b		; 10 7C
	jsr $6078.w		; 20 78 60
	sed		; F8
	rti		; 40

	beq -128.b		; F0 80
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	ldy #$00.b		; A0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
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
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $81.b		; 00 81
	sta ($0E.b,X)		; 81 0E
	asl $F0F0.w		; 0E F0 F0
	ora ($01.b,X)		; 01 01
	stx $86.b		; 86 86
	sed		; F8
	sed		; F8
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sed		; F8
	php		; 08
	sed		; F8
	tsb $FC.b		; 04 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A0.b		; 00 A0
	ldx $7670.w		; AE 70 76
	dey		; 88
	txa		; 8A
	trb $14.b		; 14 14
	rol $26.b		; 26 26
	rol A		; 2A
	rol A		; 2A
	lsr A		; 4A
	lsr A		; 4A
	bit #$0089.w		; 89 89 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	rts		; 60

	jmp ($7CC0.w,X)		; 7C C0 7C
	bra  -4.b		; 80 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $20.b		; 00 20
	rts		; 60

	php		; 08
	iny		; C8
	php		; 08
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora $180F18.l		; 0F 18 0F 18
	ora [$18.b]		; 07 18
	asl $38.b		; 06 38
	ora [$71.b]		; 07 71
	tsb $0FE1.w		; 0C E1 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $101E08.l		; 0F 08 1E 10
	adc $583061.l,X		; 7F 61 30 58
	jsr $2070.w		; 20 70 20
	bvs -128.b		; 70 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra -112.b		; 80 90
	bit $38A0.w,X		; 3C A0 38
	ldy #$38.b		; A0 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	brk $05.b		; 00 05
	ora $0F.b,S		; 03 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $0E.b		; 00 0E
	asl $1C1C.w		; 0E 1C 1C
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	pea $F806.w		; F4 06 F8
	dec $6CF0.w		; CE F0 6C
	beq  40.b		; F0 28
	cld		; D8
	jsr $00C0.w		; 20 C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	sec		; 38
	ora ($04.b,X)		; 01 04
	cmp $68.b		; C5 68
	pla		; 68
	brk $26.b		; 00 26
	brk $2C.b		; 00 2C
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
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
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000000.l,X		; 1F 00 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	adc $003F00.l,X		; 7F 00 3F 00
	ora $380720.l,X		; 1F 20 07 38
	ora $133E.w,Y		; 19 3E 13
	and ($05.b,S),Y		; 33 05
	and ($0E.b,X)		; 21 0E
	jsr $4141.w		; 20 41 41
	rol $26.b		; 26 26
	clc		; 18
	clc		; 18
	trb $071C.w		; 1C 1C 07
	ora [$0C.b]		; 07 0C
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($F8.b,X)		; 01 F8
	sta [$80.b]		; 87 80
	jsr ($EC80.w,X)		; FC 80 EC
	ora #$0909.w		; 09 09 09
	ora #$1111.w		; 09 11 11
	ora ($11.b),Y		; 11 11
	ldx $A6.b		; A6 A6
	adc $4F79.w,Y		; 79 79 4F
	jmp $4447.w		; 4C 47 44
	inc $07.b		; E6 07
	pea $F806.w		; F4 06 F8
	brk $E0.b		; 00 E0
	bpl   0.b		; 10 00
	beq -32.b		; F0 E0
	sed		; F8
	bpl  28.b		; 10 1C
	inx		; E8
	asl $3F24.w		; 0E 24 3F
	bmi  63.b		; 30 3F
	plp		; 28
	rol $D8C0.w		; 2E C0 D8
	brk $08.b		; 00 08
	bpl  16.b		; 10 10
	inx		; E8
	php		; 08
	pea $7404.w		; F4 04 74
	ora [$3A.b]		; 07 3A
	ora $5D.b,S		; 03 5D
	cmp ($2E.b,X)		; C1 2E
	cpx #$17.b		; E0 17
	bvs  11.b		; 70 0B
	sec		; 38
	ora $0C.b		; 05 0C
	ora $06.b,S		; 03 06
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($BE.b,X)		; 01 BE
	bra  95.b		; 80 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	bra  32.b		; 80 20
	cpy #$30.b		; C0 30
	cpy #$10.b		; C0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$00.b		; E0 00
	cop $01.b		; 02 01
	ora [$03.b]		; 07 03
	asl $0F.b		; 06 0F
	ora $8A1E.w		; 0D 1E 8A
	jmp ($B854.w,X)		; 7C 54 B8
	and #$9370.w		; 29 70 93
	rts		; 60

	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $E01E20.l		; 0F 20 1E E0
	bit $38C0.w,X		; 3C C0 38
	bra 112.b		; 80 70
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	sbc $63F18E.l,X		; FF 8E F1 63
	sta $791F2E.l,X		; 9F 2E 1F 79
	asl $3CE3.w,X		; 1E E3 3C
	cmp [$79.b]		; C7 79
	sta $00FFF3.l		; 8F F3 FF 00
	sbc ($00.b),Y		; F1 00
	sta $001F00.l,X		; 9F 00 1F 00
	asl $3C00.w,X		; 1E 00 3C
	brk $79.b		; 00 79
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	sbc $CCFF7F.l,X		; FF 7F FF CC
	sbc ($37.b,S),Y		; F3 37
	cmp $603FD8.l		; CF D8 3F 60
	sbc $08FF84.l,X		; FF 84 FF 08
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $F3.b		; 00 F3
	brk $CF.b		; 00 CF
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	sbc $E0FFFC.l,X		; FF FC FF E0
	sbc $10FF00.l,X		; FF 00 FF 10
	sbc $42DE21.l		; EF 21 DE 42
	lda $7986.w,X		; BD 86 79
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00DE00.l		; EF 00 DE 00
	lda $7900.w,X		; BD 00 79
	brk $8B.b		; 00 8B
	pea $F10E.w		; F4 0E F1
	tsb $19F2.w		; 0C F2 19
	cpx $98.b		; E4 98
	rts		; 60

	asl $2CE7.w,X		; 1E E7 2C
	cmp $17.b,S		; C3 17
	cpy $04F4.w		; CC F4 04
	beq   0.b		; F0 00
	sbc ($00.b),Y		; F1 00
	sbc $00.b,S		; E3 00
	adc [$00.b]		; 67 00
	sbc ($01.b,X)		; E1 01
	cpy #$18.b		; C0 18
	cpy #$3C.b		; C0 3C
	sta [$70.b]		; 87 70
	adc $00FF80.l,X		; 7F 80 FF 00
	cpx $07.b		; E4 07
	cpy #$FC.b		; C0 FC
	jsr $40C0.w		; 20 C0 40
	bra -64.b		; 80 C0
	bra  63.b		; 80 3F
	bmi  -1.b		; 30 FF
	bra  -1.b		; 80 FF
	brk $FB.b		; 00 FB
	ora $20.b,S		; 03 20
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	phd		; 0B
	ora [$15.b]		; 07 15
	asl $0E19.w		; 0E 19 0E
	and ($0D.b)		; 32 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	asl $0E00.w		; 0E 00 0E
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	brk $46.b		; 00 46
	lda $7FB9.w,Y		; B9 B9 7F
	lsr $98FF.w		; 4E FF 98
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B9.b		; 00 B9
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	cpy #$78.b		; C0 78
	stx $7E.b		; 86 7E
	inc $6F.b,X		; F6 6F
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	asl $80.b		; 06 80
	ora [$F6.b]		; 07 F6
	ora [$F0.b]		; 07 F0
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $DC1E.w,X		; 1E 1E DC
	jmp.w [$C0C0]		; DC C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $1CBF02.l,X		; 1F 02 BF 1C
	sbc $00FCC0.l,X		; FF C0 FC 00
	cpy #$00.b		; C0 00
	brk $30.b		; 00 30
	ora $311F30.l,X		; 1F 30 1F 31
	asl $1E31.w,X		; 1E 31 1E
	ora ($1E.b),Y		; 11 1E
	ora ($1E.b),Y		; 11 1E
	ora ($0E.b),Y		; 11 0E
	ora $1F0E.w,Y		; 19 0E 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $CC.b		; 00 CC
	sbc $8DFE8D.l,X		; FF 8D FE 8D
	inc $FE89.w,X		; FE 89 FE
	sta $99EE.w,Y		; 99 EE 99
	inc $EE99.w		; EE 99 EE
	sta $FFEE.w,Y		; 99 EE FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $EB.b		; 00 EB
	adc [$CE.b],Y		; 77 CE
	sbc [$DC.b],Y		; F7 DC
	sbc [$9D.b]		; E7 9D
	inc $EE99.w		; EE 99 EE
	tsx		; BA
	cmp $99FE.w		; CD FE 99
	inc $99.b,X		; F6 99
	adc [$00.b],Y		; 77 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b]		; E7 00
	inc $EE00.w		; EE 00 EE
	brk $CC.b		; 00 CC
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $22.b		; 00 22
	dec $BC40.w,X		; DE 40 BC
	sta $7C.b,S		; 83 7C
	cmp [$38.b]		; C7 38
	and $E01FC0.l,X		; 3F C0 1F E0
	ora $F00FE0.l,X		; 1F E0 0F F0
	dex		; CA
	ora $040784.l		; 0F 84 07 04
	tsb $01.b		; 04 01
	ora ($42.b,X)		; 01 42
	.db $42, $22		; 42 22
	jsl $102121.l		; 22 21 21 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	asl $00.b		; 06 00
	brk $09.b		; 00 09
	ora [$1C.b]		; 07 1C
	asl A		; 0A
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $16.b		; 00 16
	brk $0D.b		; 00 0D
	ora ($3D.b,X)		; 01 3D
	brk $00.b		; 00 00
	jmp ($8408.w)		; 6C 08 84
	brk $08.b		; 00 08
	clc		; 18
	php		; 08
	asl A		; 0A
	ora $02.b,X		; 15 02
	phd		; 0B
	tsa		; 3B
	sta $00C0.w		; 8D C0 00
	rti		; 40

	php		; 08
	cpx $8400.w		; EC 00 84
	php		; 08
	clc		; 18
	php		; 08
	asl A		; 0A
	brk $3F.b		; 00 3F
	ora $7B.b,S		; 03 7B
	bcs -67.b		; B0 BD
	sta $61.b,S		; 83 61
	ldx $43.b		; A6 43
	stx $43.b		; 86 43
	dec $8C07.w		; CE 07 8C
	ora [$8C.b]		; 07 8C
	ora [$9C.b]		; 07 9C
	ora $610F98.l		; 0F 98 0F 61
	brk $43.b		; 00 43
	brk $43.b		; 00 43
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	sbc [$1C.b]		; E7 1C
	sbc $38DF38.l		; EF 38 DF 38
	cmp $73BF71.l,X		; DF 71 BF 73
	lda $66BF63.l,X		; BF 63 BF 66
	sbc $EF00E7.l,X		; FF E7 00 EF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $11.b		; 00 11
	inc $FD22.w,X		; FE 22 FD
	eor $9AF3.w		; 4D F3 9A
	sbc [$94.b]		; E7 94
	sbc $3BCE39.l		; EF 39 CE 3B
	jmp.w [$BD72]		; DC 72 BD
	inc $FD00.w,X		; FE 00 FD
	brk $F3.b		; 00 F3
	brk $E7.b		; 00 E7
	brk $EF.b		; 00 EF
	brk $CE.b		; 00 CE
	brk $DC.b		; 00 DC
	brk $BD.b		; 00 BD
	brk $0C.b		; 00 0C
	sbc ($98.b,S),Y		; F3 98
	sbc [$30.b]		; E7 30
	cmp $D29E69.l		; CF 69 9E D2
	bit $79A5.w,X		; 3C A5 79
	eor #$92F1.w		; 49 F1 92
	inx		; E8
	sbc ($00.b,S),Y		; F3 00
	sbc [$00.b]		; E7 00
	cmp $009E00.l		; CF 00 9E 00
	bit $7801.w,X		; 3C 01 78
	ora $F0.b,S		; 03 F0
	ora [$E8.b]		; 07 E8
	ora $5F9F6F.l		; 0F 6F 9F 5F
	ldx $7DBA.w,Y		; BE BA 7D
	jmp $FC33.w		; 4C 33 FC
	cmp $E4.b,S		; C3 E4
	stp		; DB
	cmp $BC.b,S		; C3 BC
	.db $62, $1C, $87		; 62 1C 87
	and $007E8C.l,X		; 3F 8C 7E 00
	jmp ($F800.w,X)		; 7C 00 F8
	brk $E0.b		; 00 E0
	pha		; 48
	iny		; C8
	sty $84.b		; 84 84
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	lda $F10E.w,Y		; B9 0E F1
	tsa		; 3B
	cpy $C1.b		; C4 C1
	inc $FF70.w,X		; FE 70 FF
	tsb $06FF.w		; 0C FF 06
	sbc $B9FF00.l,X		; FF 00 FF B9
	brk $F1.b		; 00 F1
	brk $C4.b		; 00 C4
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $22.b		; 00 22
	sbc $2AFD06.l,X		; FF 06 FD 2A
	dec $87.b,X		; D6 87
	ror $A843.w		; 6E 43 A8
	eor $B0.b,S		; 43 B0
	ora $F1.b,S		; 03 F1
	ora ($E0.b),Y		; 11 E0
	sbc $00FC00.l,X		; FF 00 FC 00
	cmp [$03.b],Y		; D7 03
	sei		; 78
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	bpl  -2.b		; 10 FE
	bpl -17.b		; 10 EF
	brk $AA.b		; 00 AA
	adc $A3.b,X		; 75 A3
	stp		; DB
	adc ($A3.b,S),Y		; 73 A3
	sta $D8D9.w,Y		; 99 D9 D8
	sec		; 38
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bvs   7.b		; 70 07
	bvc  11.b		; 50 0B
	sta $A3.b,S		; 83 A3
	ora $D819.w,Y		; 19 19 D8
	clc		; 18
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -127.b		; 80 81
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $3F03.w		; 0D 03 3F
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	sta ($80.b,X)		; 81 80
	sta $00.b,S		; 83 00
	ora [$01.b]		; 07 01
	ora $080301.l		; 0F 01 03 08
	ora #$0F18.w		; 09 18 0F
	php		; 08
	ora $0D070C.l		; 0F 0C 07 0D
	asl $05.b		; 06 05
	cop $06.b		; 02 06
	ora $02.b,S		; 03 02
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $19.b		; 00 19
	inc $6E99.w		; EE 99 6E
	sta $D56E.w,Y		; 99 6E D5
	rol $2ED5.w		; 2E D5 2E
	ldy $AA16.w		; AC 16 AA
	asl $96.b,X		; 16 96
	asl A		; 0A
	inc $6E00.w		; EE 00 6E
	brk $6E.b		; 00 6E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $0A.b		; 00 0A
	brk $77.b		; 00 77
	tya		; 98
	adc $906F90.l,X		; 7F 90 6F 90
	and $D02FD0.l		; 2F D0 2F D0
	lda $007F40.l,X		; BF 40 7F 00
	ora $049C00.l,X		; 1F 00 9C 04
	sty $04.b,X		; 94 04
	sty $04.b,X		; 94 04
	cld		; D8
	php		; 08
	cld		; D8
	php		; 08
	pha		; 48
	php		; 08
	bmi  48.b		; 30 30
	ora [$07.b]		; 07 07
	ora $00FFF0.l		; 0F F0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FC01.w,X		; FE 01 FC
	ora $04.b,S		; 03 04
	tsb $04.b		; 04 04
	tsb $42.b		; 04 42
	.db $42, $42		; 42 42
	.db $42, $43		; 42 43
	eor $42.b,S		; 43 42
	.db $42, $5C		; 42 5C
	jmp $D0C0C0.l		; 5C C0 C0 D0
	tsb $0ECE.w		; 0C CE 0E
	cpx $A764.w		; EC 64 A7
	cpx $02.b		; E4 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	xce		; FB
	ora [$FF.b]		; 07 FF
	rts		; 60

	jsr ($F700.w,X)		; FC 00 F7
	brk $93.b		; 00 93
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $4259.w,X		; 1D 59 42
	.db $42, $81		; 42 81
	sta $03.b,S		; 83 03
	ora $5E.b,S		; 03 5E
	lsr $6CAC.w,X		; 5E AC 6C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $80DD.w,Y		; 99 DD 80
	rep #$01		; C2 01
	sta $01.b,S		; 83 01
	lda $2CFE02.l,X		; BF 02 FE 2C
	cpx $0000.w		; EC 00 00
	brk $00.b		; 00 00
	lda ($60.b,X)		; A1 60
	cpx #$20.b		; E0 20
	bvs  16.b		; 70 10
	sec		; 38
	ora #$018E.w		; 09 8E 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	rts		; 60

	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($FD.b,X)		; 01 FD
	ora ($29.b,X)		; 01 29
	sbc ($59.b,X)		; E1 59
	cmp ($39.b,X)		; C1 39
	sta ($3A.b,X)		; 81 3A
	sta $FA.b,S		; 83 FA
	sta $F8.b,S		; 83 F8
	sta $7C.b,S		; 83 7C
	asl $02.b		; 06 02
	brk $5E.b		; 00 5E
	rti		; 40

	rol $FE00.w,X		; 3E 00 FE
	bra  -3.b		; 80 FD
	sta ($7C.b,X)		; 81 7C
	brk $7E.b		; 00 7E
	cop $F8.b		; 02 F8
	brk $09.b		; 00 09
	sbc $F016.w,Y		; F9 16 F0
	ora [$F0.b],Y		; 17 F0
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora $3C.b		; 05 3C
	cop $1E.b		; 02 1E
	ora ($0F.b,X)		; 01 0F
	stx $90.b,Y		; 96 90
	lda $A0AFA0.l		; AF A0 AF A0
	and $101720.l		; 2F 20 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	cpx #$10.b		; E0 10
	beq  24.b		; F0 18
	bvs   8.b		; 70 08
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	brk $07.b		; 00 07
	ora $072900.l		; 0F 00 29 07
	xce		; FB
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $E00701.l,X		; 1F 01 07 E0
	cpx #$80.b		; E0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	sbc $98.b,S		; E3 98
	.db $82, $BC, $66		; 82 BC 66
	iny		; C8
	ldy $D8E0.w,X		; BC E0 D8
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr ($7EE0.w,X)		; FC E0 7E
	cop $58.b		; 02 58
	rti		; 40

	bcc -112.b		; 90 90
	cpy #$C0.b		; C0 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($7C00.w,X)		; FC 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	tas		; 1B
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bmi -89.b		; 30 A7
	sec		; 38
	cmp [$18.b],Y		; D7 18
	ora [$F8.b]		; 07 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.ACCU 8
	sep #$22		; E2 22
	cmp ($12.b)		; D2 12
	nop		; EA
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
	tsb $0C.b		; 04 0C
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	brk $0E.b		; 00 0E
	rts		; 60

	beq 112.b		; F0 70
	cpx #$F0.b		; E0 F0
	cpx #$C0.b		; E0 C0
	cpx #$E0.b		; E0 E0
	cpy #$80.b		; C0 80
	rti		; 40

	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	rts		; 60

	sed		; F8
	rti		; 40

	sed		; F8
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
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
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $9020.w		; 20 20 90
	bcc  -4.b		; 90 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $30C0.w		; 20 C0 30
	jsr $50F8.w		; 20 F8 50
	jmp.w [$8888]		; DC 88 88
	bvc  80.b		; 50 50
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	jsr $5020.w		; 20 20 50
	bvc -88.b		; 50 A8
	dey		; 88
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($1C.b,X)		; 01 1C
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	pea $F006.w		; F4 06 F0
	tsb $F8.b		; 04 F8
	tsb $08E0.w		; 0C E0 08
	beq  24.b		; F0 18
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	bra  32.b		; 80 20
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	brk $07.b		; 00 07
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	clv		; B8
	sty $C678.w		; 8C 78 C6
	trb $3EC6.w		; 1C C6 3E
	cpx $0E.b		; E4 0E
	.db $62, $1E, $76		; 62 1E 76
	asl $2E6C.w,X		; 1E 6C 2E
	cli		; 58
	bvs   0.b		; 70 00
	ldy $7884.w,X		; BC 84 78
	rti		; 40

	cli		; 58
	rti		; 40

	sec		; 38
	jsl $242624.l		; 22 24 26 24
	bit $1800.w		; 2C 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sta ($9D.b,X)		; 81 9D
	adc $F5.b,X		; 75 F5
	ror $F0.b,X		; 76 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $9D.b		; 00 9D
	ora ($FF.b,X)		; 01 FF
	adc $FF.b,X		; 75 FF
	bvs  -2.b		; 70 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($2B.b,X)		; 01 2B
	plp		; 28
	pla		; 68
	pla		; 68
	rts		; 60

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b],Y		; 17 00
	adc $60FD28.l,X		; 7F 28 FD 60
	inx		; E8
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	bvs -16.b		; 70 F0
	bmi -32.b		; 30 E0
	brk $70.b		; 00 70
	bmi  96.b		; 30 60
	bmi  96.b		; 30 60
	bmi  96.b		; 30 60
	bvs -32.b		; 70 E0
	bvs -32.b		; 70 E0
	bvs  -8.b		; 70 F8
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	jsr $40F8.w		; 20 F8 40
	sed		; F8
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $7001.w		; 0E 01 70
	ora $387F87.l		; 0F 87 7F 38
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $39.b		; 00 39
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $01.b		; 00 01
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
	brk $03.b		; 00 03
	brk $38.b		; 00 38
	ora [$CF.b]		; 07 CF
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $00FFFC.l,X		; FF FC FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $DC.b		; 06 DC
	jsr $00FE.w		; 20 FE 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	rts		; 60

	tsb $44.b		; 04 44
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	inc $0300.w,X		; FE 00 03
	ora $06.b,S		; 03 06
	asl $0C.b		; 06 0C
	tsb $0808.w		; 0C 08 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	sbc $00FC00.l,X		; FF 00 FC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
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
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $FC.b		; 04 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($14.b,X)		; 01 14
	ora $611F30.l		; 0F 30 1F 61
	and $9E7FC3.l,X		; 3F C3 7F 9E
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $E7.b		; 00 E7
	brk $1F.b		; 00 1F
	ora ($FF.b,X)		; 01 FF
	and $04FC83.l,X		; 3F 83 FC 04
	sed		; F8
	wai		; CB
	sbc ($97.b,S),Y		; F3 97
	sbc [$2E.b]		; E7 2E
	cmp $019E5C.l		; CF 5C 9E 01
	brk $3F.b		; 00 3F
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora $F3.b,S		; 03 F3
	ora [$E6.b]		; 07 E6
	ora $981FCC.l		; 0F CC 1F 98
	and $333F58.l,X		; 3F 58 3F 33
	jmp ($70AD.w,X)		; 7C AD 70
	plx		; FA
	adc ($D2.b,X)		; 61 D2
	adc ($E5.b,X)		; 61 E5
	eor $81.b,S		; 43 81
	eor [$C9.b]		; 47 C9
	ora [$3F.b]		; 07 3F
	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $61.b		; 00 61
	brk $61.b		; 00 61
	brk $43.b		; 00 43
	brk $47.b		; 00 47
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	sbc $79A6.w,X		; FD A6 79
	mvp $C9,$FB		; 44 FB C9
	sbc [$CB.b],Y		; F7 CB
	sbc [$93.b],Y		; F7 93
	inc $E897.w		; EE 97 E8
	sta [$E8.b],Y		; 97 E8
	sbc $7900.w,X		; FD 00 79
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $EE.b		; 00 EE
	brk $EF.b		; 00 EF
	ora [$EC.b]		; 07 EC
	tsb $98.b		; 04 98
	cpx #$C7.b		; E0 C7
	sed		; F8
	beq  63.b		; F0 3F
	ror $BB0F.w,X		; 7E 0F BB
	sta [$30.b]		; 87 30
	sta $F7037A.l		; 8F 7A 03 F7
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	bra   7.b		; 80 07
	cpy #$2D.b		; C0 2D
	cpx $A12D.w		; EC 2D A1
	and $000020.l		; 2F 20 00 00
	brk $00.b		; 00 00
	jsr ($0003.w,X)		; FC 03 00
	sbc $FEFFC3.l,X		; FF C3 FF FE
	sbc $98FF0C.l,X		; FF 0C FF 98
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $47.b		; 00 47
	rti		; 40

	cmp $629D30.l		; CF 30 9D 62
	bmi -33.b		; 30 DF
	xce		; FB
	and $C67FD7.l,X		; 3F D7 7F C6
	tda		; 7B
	sty $7B.b		; 84 7B
	lda $3052.w		; AD 52 30
	brk $62.b		; 00 62
	brk $DF.b		; 00 DF
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $50.b		; 00 50
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	cpy #$26.b		; C0 26
	sed		; F8
	ora ($FC.b)		; 12 FC
	cli		; 58
	ldx $3CCA.w,Y		; BE CA 3C
	adc ($9C.b)		; 72 9C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $BE.b		; 00 BE
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	beq 123.b		; F0 7B
	pea $ECF3.w		; F4 F3 EC
	adc $9C.b,S		; 63 9C
	sta ($6C.b,S),Y		; 93 6C
	dex		; CA
	bmi  -2.b		; 30 FE
	brk $FF.b		; 00 FF
	ora ($F0.b,X)		; 01 F0
	asl $F4.b		; 06 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bcc  16.b		; 90 10
	rti		; 40

	eor ($00.b,X)		; 41 00
	ora [$C8.b]		; 07 C8
	wai		; CB
	bit $DE3D.w,X		; 3C 3D DE
	ora $1101FF.l,X		; 1F FF 01 11
	inc $FA37.w		; EE 37 FA
	lda $3FFB73.l,X		; BF 73 FB 3F
	tda		; 7B
	cmp $7B74.w,X		; DD 74 7B
	asl $01FF.w,X		; 1E FF 01
	ora $80BF80.l,X		; 1F 80 BF 80
	lda ($32.b,S),Y		; B3 32
	and ($3B.b,S),Y		; 33 3B
	lda $70DD11.l,X		; BF 11 DD 70
	sed		; F8
	brk $F0.b		; 00 F0
	sbc ($FB.b,S),Y		; F3 FB
	xce		; FB
	ora $6850A6.l		; 0F A6 50 68
	inc $FC.b,X		; F6 FC
	ror A		; 6A
	jsr ($5E13.w,X)		; FC 13 5E
	lda ($00.b),Y		; B1 00
	xce		; FB
	beq  -1.b		; F0 FF
	phd		; 0B
	sbc $006600.l,X		; FF 00 66 00
	rts		; 60

	stz $60.b		; 64 60
	asl $2E02.w		; 0E 02 2E
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	brk $7E.b		; 00 7E
	jsr ($7B7C.w,X)		; FC 7C 7B
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	ora $001C1E.l		; 0F 1E 1C 00
	rti		; 40

	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	jmp ($03FF.w,X)		; 7C FF 03
	adc $000F02.l,X		; 7F 02 0F 00
	ora $003F18.l,X		; 1F 18 3F 00
	brk $06.b		; 00 06
	brk $39.b		; 00 39
	clc		; 18
	jsr $1008.w		; 20 08 10
	bpl   4.b		; 10 04
	jsr $2C58.w		; 20 58 2C
	inx		; E8
	adc $00.b,S		; 63 00
	cop $00.b		; 02 00
	ora [$18.b]		; 07 18
	and $2800.w,Y		; 39 00 28
	bpl  16.b		; 10 10
	brk $2C.b		; 00 2C
	brk $7F.b		; 00 7F
	stz $EE.b		; 64 EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$A0.b		; C0 A0
	rti		; 40

	rti		; 40

	brk $30.b		; 00 30
	cli		; 58
	rts		; 60

	sta $0088.w,X		; 9D 88 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	rts		; 60

	brk $78.b		; 00 78
	brk $5A.b		; 00 5A
	cpx #$FF.b		; E0 FF
	lda #$77.b		; A9 77
	ldy $7B.b,X		; B4 7B
	mvn $5A,$3B		; 54 3B 5A
	and $1F2C.w,X		; 3D 2C 1F
	bit $1F.b		; 24 1F
	ora ($0F.b)		; 12 0F
	ora $7706.w,Y		; 19 06 77
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	brk $3D.b		; 00 3D
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	cpx #$BB.b		; E0 BB
	cpy $39.b		; C4 39
	dec $70.b		; C6 70
	sta $C28F63.l		; 8F 63 8F C2
	asl $0C45.w		; 0E 45 0C
	ora [$0C.b]		; 07 0C
	cpx $04.b		; E4 04
	rep #$02		; C2 02
	cmp $03.b,S		; C3 03
	sta [$07.b]		; 87 07
	sty $04.b		; 84 04
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	ldy $4F.b,X		; B4 4F
	tya		; 98
	ora $E2.b,S		; 03 E2
	sty $EBC8.w		; 8C C8 EB
	dec A		; 3A
	ora $36.b,S		; 03 36
	tsb $1E2E.w		; 0C 2E 1E
	jmp $804F3F.l		; 5C 3F 4F 80
	ora $E4.b,S		; 03 E4
	brk $FD.b		; 00 FD
	php		; 08
	sbc $0CCF02.l,X		; FF 02 CF 0C
	ora $1E.b,S		; 03 1E
	ora ($3F.b,X)		; 01 3F
	brk $99.b		; 00 99
	sec		; 38
	jsr $F3F3.w		; 20 F3 F3
	sbc ($F0.b,S),Y		; F3 F0
	sed		; F8
	cpx #$EB.b		; E0 EB
	lda ($B3.b,S),Y		; B3 B3
	eor ($58.b,S),Y		; 53 58
	ora $0086.w		; 0D 86 00
	ror $7C83.w,X		; 7E 83 7C
	adc $FC.b,S		; 63 FC
	cpx #$FF.b		; E0 FF
	cpx #$FF.b		; E0 FF
	lda $FF.b,S		; A3 FF
	bvc  -1.b		; 50 FF
	stx $70.b		; 86 70
	bit #$07.b		; 89 07
	sta ($0F.b,X)		; 81 0F
	sta ($0F.b),Y		; 91 0F
	ora ($0F.b),Y		; 11 0F
	bpl  15.b		; 10 0F
	asl $0D.b,X		; 16 0D
	asl $0D.b,X		; 16 0D
	ora $0E.b,X		; 15 0E
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $0D00.w		; 0D 00 0D
	brk $0E.b		; 00 0E
	brk $87.b		; 00 87
	sed		; F8
	sta $FC.b,S		; 83 FC
	sta $FC.b,S		; 83 FC
	sta [$F8.b]		; 87 F8
	sta $FC.b,S		; 83 FC
	cmp [$FC.b]		; C7 FC
	eor $FE.b		; 45 FE
	eor ($FE.b,X)		; 41 FE
	jsr ($FE04.w,X)		; FC 04 FE
	cop $FF.b		; 02 FF
	ora $FC.b,S		; 03 FC
	tsb $FE.b		; 04 FE
	cop $FD.b		; 02 FD
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora ($E5.b,X)		; 01 E5
	trb $E31D.w		; 1C 1D E3
	ror $FE81.w,X		; 7E 81 FE
	ora $0205.w		; 0D 05 02
	ora ($F8.b,X)		; 01 F8
	sed		; F8
	inc $06FE.w,X		; FE FE 06
	phk		; 4B
	pha		; 48
	sep #$02		; E2 02
	sta ($01.b,X)		; 81 01
	tsb $0200.w		; 0C 00 02
	sed		; F8
	brk $FE.b		; 00 FE
	sed		; F8
	sbc $ECFF06.l,X		; FF 06 FF EC
	and ($57.b,S),Y		; 33 57
	clc		; 18
	sbc [$88.b]		; E7 88
	eor $10FFC0.l,X		; 5F C0 FF 10
	and ($2C.b,S),Y		; 33 2C
	and ($C0.b,X)		; 21 C0
	cpy #$DE.b		; C0 DE
	cmp $00.b,S		; C3 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	ldy #$80.b		; A0 80
	bpl  16.b		; 10 10
	bit $00EC.w		; 2C EC 00
	dec $FFC0.w,X		; DE C0 FF
	sta $44.b,X		; 95 44
	lda ($50.b)		; B2 50
	cmp $58CF3E.l		; CF 3E CF 58
	cmp $89.b,S		; C3 89
	adc $9C44.w,Y		; 79 44 9C
	ora $08.b,S		; 03 08
	brk $6E.b		; 00 6E
	asl $6D.b		; 06 6D
	ora ($11.b,X)		; 01 11
	bpl  39.b		; 10 27
	jsr $083E.w		; 20 3E 08
	sta [$04.b]		; 87 04
	sbc ($01.b,X)		; E1 01
	brk $F0.b		; 00 F0
	bit $D8.b		; 24 D8
	sec		; 38
	cpy #$10.b		; C0 10
	rts		; 60

	cpy #$60.b		; C0 60
	rti		; 40

	rts		; 60

	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tya		; 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora ($0E.b,X)		; 01 0E
	asl $C1C1.w		; 0E C1 C1
	asl $06.b		; 06 06
	clc		; 18
	clc		; 18
	jsr $8120.w		; 20 20 81
	sta ($02.b,X)		; 81 02
	cop $B2.b		; 02 B2
	lda $D057.w,Y		; B9 57 D0
	ldx $DF70.w		; AE 70 DF
	jsr $00FF.w		; 20 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FCA000.l,X		; FF 00 A0 FC
	rti		; 40

	sed		; F8
	jsl $290972.l		; 22 72 09 29
	jmp $96965C.l		; 5C 5C 96 96
	and ($32.b)		; 32 32
	and #$29.b		; 29 29
	lsr $B1.b		; 46 B1
	sta $0638.w		; 8D 38 06
	trb $1905.w		; 1C 05 19
	phb		; 8B
	ora $CF.b,S		; 03 CF
	ora $C4.b,S		; 03 C4
	brk $C0.b		; 00 C0
	brk $1F.b		; 00 1F
	ora ($16.b),Y		; 11 16
	bpl   8.b		; 10 08
	ora #$09.b		; 09 09
	phd		; 0B
	sta $87.b,S		; 83 87
	.db $42, $43		; 42 43
	rti		; 40

	eor $40.b,S		; 43 40
	rti		; 40

	bit $78B8.w,X		; 3C B8 78
	bvs -16.b		; 70 F0
	cpx #$C0.b		; E0 C0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	ror $FC60.w,X		; 7E 60 FC
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bit $511E.w		; 2C 1E 51
	eor ($20.b,X)		; 41 20
	jsr $6050.w		; 20 50 60
	bit $3E3C.w,X		; 3C 3C 3E
	and $000000.l,X		; 3F 00 00 00
	brk $0D.b		; 00 0D
	and $005140.l,X		; 3F 40 51 00
	jsr $7C40.w		; 20 40 7C
	jsr $3A3F.w		; 20 3F 3A
	and $000000.l,X		; 3F 00 00 00
	brk $25.b		; 00 25
	sec		; 38
	tas		; 1B
	tas		; 1B
	tsx		; BA
	sta ($53.b,S),Y		; 93 53
	and ($90.b)		; 32 90
	ldx #$42.b		; A2 42
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sbc $00DFD3.l		; EF D3 DF 00
	lda $02F402.l,X		; BF 02 F4 02
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	asl $14.b		; 06 14
	cop $04.b		; 02 04
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora [$18.b]		; 07 18
	ora $100718.l		; 0F 18 07 10
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	ora $080F08.l		; 0F 08 0F 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $700710.l,X		; 1F 10 07 70
	ora $38.b,S		; 03 38
	ora ($1C.b,X)		; 01 1C
	brk $0E.b		; 00 0E
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $080F10.l,X		; 1F 10 0F 08
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$10.b		; C0 10
	cpx #$18.b		; E0 18
	cpx #$08.b		; E0 08
	sed		; F8
	tsb $0670.w		; 0C 70 06
	bit $1A86.w,X		; 3C 86 1A
	cmp $1C.b,S		; C3 1C
	adc ($E0.b,X)		; 61 E0
	brk $F0.b		; 00 F0
	bpl  -8.b		; 10 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($FA04.w,X)		; FC 04 FA
	.db $82, $7C, $40		; 82 7C 40
	rol $0020.w,X		; 3E 20 00
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
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0C.b]		; 07 0C
	tsb $1818.w		; 0C 18 18
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($0002.w,X)		; 7C 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $0C.b		; 00 0C
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bcc -112.b		; 90 90
	inx		; E8
	nop		; EA
	inc $F7.b,X		; F6 F7
	ora $000080.l		; 0F 80 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	beq -112.b		; F0 90
	sbc $06FFA8.l,X		; FF A8 FF 06
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$60.b		; C0 60
	rts		; 60

	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $F8.b		; 00 F8
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	jsr $7007.w		; 20 07 70
	lsr A		; 4A
	lsr A		; 4A
	lsr $46.b		; 46 46
	lsr $2F4A.w		; 4E 4A 2F
	and #$3F.b		; 29 3F
	bmi  63.b		; 30 3F
	jsr $E0FF.w		; 20 FF E0
	ora $000010.l,X		; 1F 10 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$10.b		; C0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	ora $003F00.l,X		; 1F 00 3F 00
	and $007E00.l,X		; 3F 00 7E 00
	ror $FC00.w,X		; 7E 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $08.b		; 00 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -68.b		; 80 BC
	bit $7F7F.w,X		; 3C 7F 7F
	ora $13.b,S		; 03 13
	bmi 117.b		; 30 75
	adc [$03.b],Y		; 77 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	jmp.w [$FF80]		; DC 80 FF
	bit $037F.w,X		; 3C 7F 03
	adc $753310.l,X		; 7F 10 33 75
	adc [$03.b],Y		; 77 03
	ora $00.b,S		; 03 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra -97.b		; 80 9F
	cpx #$47.b		; E0 47
	sei		; 78
	ldy #$38.b		; A0 38
	jsl $424222.l		; 22 22 42 42
	cop $02.b		; 02 02
	sty $84.b		; 84 84
	cpx $E4.b		; E4 E4
	jmp $37B75C.l		; 5C 5C B7 37
	bne  16.b		; D0 10
	cpx #$38.b		; E0 38
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bne  16.b		; D0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	brk $28.b		; 00 28
	bpl  54.b		; 10 36
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	and ($1E.b),Y		; 31 1E
	adc ($3C.b,X)		; 61 3C
	cmp $FE.b,S		; C3 FE
	brk $9C.b		; 00 9C
	jmp ($FC38.w,X)		; 7C 38 FC
	jsr ($F800.w,X)		; FC 00 F8
	brk $1E.b		; 00 1E
	bpl  62.b		; 10 3E
	jsr $427E.w		; 20 7E 42
	brk $00.b		; 00 00
	trb $38FE.w		; 1C FE 38
	jsr ($0000.w,X)		; FC 00 00
	bpl  16.b		; 10 10
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $007E00.l,X		; 3F 00 7E 00
	jsr ($0100.w,X)		; FC 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $04.b		; 06 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	inc $FC00.w,X		; FE 00 FC
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
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
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $E2C0.w		; 20 C0 E2
	xce		; FB
	xce		; FB
	tas		; 1B
	sei		; 78
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FB.b		; 00 FB
	cpy #$FF.b		; C0 FF
	inc A		; 1A
	sbc $007B60.l,X		; FF 60 7B 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $F0.b		; 02 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $6060.w		; 20 60 60
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	cop $1E.b		; 02 1E
	tsb $3C.b		; 04 3C
	ora #$78.b		; 09 78
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora ($00.b,X)		; 01 00
	bmi -124.b		; 30 84
	sed		; F8
	sty $88E0.w		; 8C E0 88
	bvs  24.b		; 70 18
	rti		; 40

	bpl -128.b		; 10 80
	bmi   0.b		; 30 00
	rts		; 60

	brk $C0.b		; 00 C0
	jsr ($7084.w,X)		; FC 84 70
	brk $78.b		; 00 78
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	ldy $FC7B.w,X		; BC 7B FC
	asl A		; 0A
	pea $F808.w		; F4 08 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $3A.b		; 00 3A
	plx		; FA
	inx		; E8
	inx		; E8
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
	cli		; 58
	rts		; 60

	adc ($7B.b)		; 72 7B
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $FB.b		; 00 FB
	rts		; 60

	sbc $007702.l,X		; FF 02 77 00
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	asl $08.b		; 06 08
	brk $05.b		; 00 05
	tsb $02.b		; 04 02
	phd		; 0B
	ora #$04.b		; 09 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	tsb $0E.b		; 04 0E
	brk $08.b		; 00 08
	tsb $07.b		; 04 07
	brk $0B.b		; 00 0B
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	ldy #$10.b		; A0 10
	ora ($10.b)		; 12 10
	ora $0E.b,S		; 03 0E
	ora $1A.b,X		; 15 1A
	and $27.b,S		; 23 27
	ora ($E1.b,X)		; 01 E1
	ora ($11.b),Y		; 11 11
	brk $B0.b		; 00 B0
	brk $F8.b		; 00 F8
	brk $1A.b		; 00 1A
	brk $1F.b		; 00 1F
	brk $17.b		; 00 17
	dec A		; 3A
	xce		; FB
	trb $CCFD.w		; 1C FD CC
	cmp $0000.w,X		; DD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C.b,S		; 03 0C
	ora [$18.b]		; 07 18
	bit $7E17.w		; 2C 17 7E
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	bra  13.b		; 80 0D
	beq -55.b		; F0 C9
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	inc $D000.w,X		; FE 00 D0
	and $EC37C8.l		; 2F C8 37 EC
	clc		; 18
	stz $1A68.w		; 9C 68 1A
	inx		; E8
	phd		; 0B
	beq -117.b		; F0 8B
	bvs  84.b		; 70 54
	lda $01.b,S		; A3 01
	ora ($10.b,X)		; 01 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2024.w		; 20 24 20
	trb $10.b		; 14 10
	tsb $00.b		; 04 00
	phd		; 0B
	phd		; 0B
	rts		; 60

	bpl  64.b		; 10 40
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	bpl  32.b		; 10 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $DF03.w,X		; 3C 03 DF
	and $FFE0DF.l,X		; 3F DF E0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $FE.b		; 02 FE
	ora ($F9.b,X)		; 01 F9
	inc $807F.w,X		; FE 7F 80
	cmp ($3E.b,X)		; C1 3E
	bit $00E7.w		; 2C E7 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $FE.b		; 00 FE
	brk $80.b		; 00 80
	brk $1C.b		; 00 1C
	trb $425A.w		; 1C 5A 42
	adc $1C.b,S		; 63 1C
	sbc ($1E.b,X)		; E1 1E
	lda ($5E.b,X)		; A1 5E
	txy		; 9B
	stz $8F.b		; 64 8F
	bvs -124.b		; 70 84
	sei		; 78
	brk $03.b		; 00 03
	cmp $FF.b,S		; C3 FF
	bpl -112.b		; 10 90
	bpl  16.b		; 10 10
	eor ($41.b,X)		; 41 41
	adc ($61.b,X)		; 61 61
	eor ($52.b)		; 52 52
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	cmp $FF.b,S		; C3 FF
	tya		; 98
	and [$98.b],Y		; 37 98
	and [$1D.b],Y		; 37 1D
	ply		; 7A
	trb $48BC.w		; 1C BC 48
	wai		; CB
	ora $77.b,S		; 03 77
	tas		; 1B
	cld		; D8
	sbc $04C2.w,X		; FD C2 04
	stz $04.b,X		; 74 04
	stz $00.b,X		; 74 00
	sed		; F8
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	clc		; 18
	sbc $18FBE0.l,X		; FF E0 FB 18
	ora ($10.b),Y		; 11 10
	ora $23.b,S		; 03 23
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $02.b,S		; 03 02
	ora [$0A.b]		; 07 0A
	ora [$04.b]		; 07 04
	ora $030011.l		; 0F 11 00 03
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $87.b		; 00 87
	sbc [$A6.b],Y		; F7 A6
	sbc [$46.b],Y		; F7 46
	sbc [$86.b],Y		; F7 86
	sbc [$0E.b],Y		; F7 0E
	sbc [$6F.b],Y		; F7 6F
	stx $CA.b,Y		; 96 CA
	and [$CF.b],Y		; 37 CF
	and [$F6.b],Y		; 37 F6
	ora $F60FF6.l		; 0F F6 0F F6
	ora $F20FF6.l		; 0F F6 0F F2
	ora [$92.b]		; 07 92
	ora [$30.b]		; 07 30
	ora [$37.b]		; 07 37
	ora [$CE.b]		; 07 CE
	jsr $C01F.w		; 20 1F C0
	adc $BC45E0.l		; 6F E0 45 BC
	bpl -17.b		; 10 EF
	tsb $39F3.w		; 0C F3 39
	cmp [$FF.b]		; C7 FF
	brk $FF.b		; 00 FF
	cpx #$FF.b		; E0 FF
	cpy #$9F.b		; C0 9F
	bra  59.b		; 80 3B
	sec		; 38
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	rti		; 40

	bvs -48.b		; 70 D0
	clc		; 18
	inx		; E8
	tsb $8634.w		; 0C 34 86
	rol A		; 2A
.ACCU 8
.INDEX 8
	sep #$78		; E2 78
	brk $F8.b		; 00 F8
	.db $82, $40, $40		; 82 40 40
	ldy #$20.b		; A0 20
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	bra -36.b		; 80 DC
	cpy #$FE.b		; C0 FE
	brk $7C.b		; 00 7C
	brk $61.b		; 00 61
	asl $1F64.w,X		; 1E 64 1F
	adc $1F.b,S		; 63 1F
	and [$1B.b],Y		; 37 1B
	and ($19.b,S),Y		; 33 19
	inc A		; 1A
	ora #$0D.b		; 09 0D
	tsb $04.b		; 04 04
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  49.b		; 80 31
	dec $EF90.w		; CE 90 EF
	dey		; 88
	sbc [$C8.b],Y		; F7 C8
	sbc [$C4.b],Y		; F7 C4
	stp		; DB
	cpy $4B.b		; C4 4B
	bvs 112.b		; 70 70
	sta $00C00F.l		; 8F 0F C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cld		; D8
	brk $48.b		; 00 48
	brk $0E.b		; 00 0E
	ora $000B.w		; 0D 0B 00
	tsb $04.b		; 04 04
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $000F.w		; 0C 0F 00
	phd		; 0B
	tsb $04.b		; 04 04
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	wai		; CB
	iny		; C8
	tsb $02.b		; 04 02
	tsb $04.b		; 04 04
	txs		; 9A
	trb $E0E0.w		; 1C E0 E0
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$CB.b		; C0 CB
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	php		; 08
	inc $E000.w,X		; FE 00 E0
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $1E.b,X		; F5 1E
	lda ($5E.b,X)		; A1 5E
	xba		; EB
	trb $65.b		; 14 65
	sta ($EC.b),Y		; 91 EC
	mvn $E6,$13		; 54 13 E6
	xce		; FB
	tsb $E4.b		; 04 E4
	inc A		; 1A
	asl $5E00.w,X		; 1E 00 5E
	brk $14.b		; 00 14
	brk $9B.b		; 00 9B
	ora ($5B.b,X)		; 01 5B
	brk $ED.b		; 00 ED
	tsb $0407.w		; 0C 07 04
	ora $02.b,S		; 03 02
	sty $FF.b		; 84 FF
	asl $EF.b,X		; 16 EF
	adc ($8F.b)		; 72 8F
	jmp $368927.l		; 5C 27 89 36
	dec $F030.w		; CE 30 F0
	clc		; 18
	bne  88.b		; D0 58
	sbc $00EF00.l,X		; FF 00 EF 00
	ora $808700.l		; 0F 00 87 80
	ror $60.b		; 66 60
	cpx #$20.b		; E0 20
	cpx #$00.b		; E0 00
	ldy #$20.b		; A0 20
	bit $C3.b		; 24 C3
	sbc #$04.b		; E9 04
	cpy #$C2.b		; C0 C2
	cop $3F.b		; 02 3F
	rol $FEFC.w,X		; 3E FC FE
	cpy #$FB.b		; C0 FB
	tsb $1F.b		; 04 1F
	inc $18.b,X		; F6 18
	clc		; 18
	bpl  18.b		; 10 12
	bra  -1.b		; 80 FF
	cop $FF.b		; 02 FF
	bit $C0FE.w,X		; 3C FE C0
	inc $F600.w,X		; FE 00 F6
	brk $F6.b		; 00 F6
	bra   3.b		; 80 03
	ora $1F.b,S		; 03 1F
	cmp $C0DCDC.l,X		; DF DC DC C0
	cpx #$00.b		; E0 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora [$0F.b]		; 07 0F
	brk $1F.b		; 00 1F
	ora $FF.b,S		; 03 FF
	trb $C0FF.w		; 1C FF C0
	jmp.w [$E100]		; DC 00 E1
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	asl $3F.b		; 06 3F
.INDEX 8
	sep #$1E		; E2 1E
	sbc [$00.b],Y		; F7 00
	sbc ($0F.b),Y		; F1 0F
	sei		; 78
	ora [$3F.b]		; 07 3F
	bra  40.b		; 80 28
	sta [$54.b],Y		; 97 54
	plb		; AB
	cmp ($2D.b)		; D2 2D
	ora $04.b		; 05 04
	cmp $2E2EC0.l		; CF C0 2E 2E
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	ora [$C0.b],Y		; 17 C0
	pld		; 2B
	dey		; 88
	and $FE8C.w		; 2D 8C FE
	ora $FC.b,S		; 03 FC
	ora $51.b		; 05 51
	tas		; 1B
	ora $C7.b,S		; 03 C7
	sta $5D9E5E.l,X		; 9F 5E 9E 5D
	sta $07D858.l,X		; 9F 58 D8 07
	sbc $F801.w,X		; FD 01 F8
	ora $E8.b,S		; 03 E8
	ora $023F01.l		; 0F 01 3F 02
	rol $3C00.w,X		; 3E 00 3C
	brk $38.b		; 00 38
	ora [$27.b]		; 07 27
	lda $407FFC.l,X		; BF FC 7F 40
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $C03F80.l,X		; 7F 80 3F C0
	ldy $40FF.w,X		; BC FF 40
	jsr ($E909.w,X)		; FC 09 E9
	ora ($91.b),Y		; 11 91
	ora ($11.b),Y		; 11 11
	and ($21.b,X)		; 21 21
	lda ($21.b,X)		; A1 21
	sbc $FD39.w,Y		; F9 39 FD
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($20.b,X)		; 01 20
	sbc $A1.b,S		; E3 A1
	lda $21.b,S		; A3 21
	and ($10.b,X)		; 21 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   9.b		; 10 09
	ora #$0B.b		; 09 0B
	phd		; 0B
	tsb $0F.b		; 04 0F
	tsb $0E.b		; 04 0E
	jsr $7D05.w		; 20 05 7D
	ora ($79.b,X)		; 01 79
	rol $3220.w,X		; 3E 20 32
	stx $00.b		; 86 00
	cop $00.b		; 02 00
	ora $010E00.l		; 0F 00 0E 01
	tsb $BB.b		; 04 BB
	ora ($FF.b,X)		; 01 FF
	jsl $FC02FD.l		; 22 FD 02 FC
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	sta $55.b		; 85 55
	ora $AD.b		; 05 AD
	plp		; 28
	adc $4F5165.l		; 6F 65 51 4F
	beq -50.b		; F0 CE
	adc ($CE.b),Y		; 71 CE
	adc ($AE.b),Y		; 71 AE
	adc ($55.b),Y		; 71 55
	and $287F80.l		; 2F 80 7F 28
	sbc $F0EB50.l,X		; FF 50 EB F0
	brk $71.b		; 00 71
	brk $71.b		; 00 71
	brk $71.b		; 00 71
	brk $BF.b		; 00 BF
	and $FE417F.l,X		; 3F 7F 41 FE
	ora ($FF.b,X)		; 01 FF
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	tsb $3CD8.w		; 0C D8 3C
	plp		; 28
	inx		; E8
	ora $C1017F.l		; 0F 7F 01 C1
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	php		; 08
	php		; 08
	jsr $5020.w		; 20 20 50
	rti		; 40

	beq 116.b		; F0 74
	bra 120.b		; 80 78
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $60.b		; 00 60
	rts		; 60

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
	cmp $4A.b		; C5 4A
	eor $0C.b,S		; 43 0C
	eor [$08.b]		; 47 08
	ora $001F00.l		; 0F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	sbc $004800.l,X		; FF 00 48 00
	tsb $0800.w		; 0C 00 08
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ror $FC00.w,X		; 7E 00 FC
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	inc $FC01.w,X		; FE 01 FC
	ora $F9.b,S		; 03 F9
	ora [$F2.b]		; 07 F2
	asl $CF.b		; 06 CF
	brk $97.b		; 00 97
	ora $2F.b,S		; 03 2F
	ora [$1F.b]		; 07 1F
	brk $80.b		; 00 80
	bra   1.b		; 80 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $001F03.l		; 0F 03 1F 00
	jsr $78B7.w		; 20 B7 78
	cmp $F834E0.l,X		; DF E0 34 F8
	xce		; FB
	cmp $43.b,S		; C3 43
	lda [$87.b],Y		; B7 87
	adc [$27.b],Y		; 77 27
	sbc [$47.b],Y		; F7 47
	sbc [$78.b],Y		; F7 78
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	ora $C2.b,S		; 03 C2
	ora [$B2.b]		; 07 B2
	ora $F60F72.l		; 0F 72 0F F6
	ora $7F0FF6.l		; 0F F6 0F 7F
	rol $FF.b,X		; 36 FF
	sec		; 38
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc ($00.b,S),Y		; F3 00
	sbc ($10.b,X)		; E1 10
	jsr $50B8.w		; 20 B8 50
	trb $B616.w		; 1C 16 B6
	and $853D.w,X		; 3D 3D 85
	sta $C9.b		; 85 C9
	cmp #$70.b		; C9 70
	bvs -128.b		; 70 80
	bra -48.b		; 80 D0
	bcc -24.b		; 90 E8
	php		; 08
	sta $7CBE3E.l,X		; 9F 3E BE 7C
	ldy $8878.w,X		; BC 78 88
	bvs -48.b		; 70 D0
	jsr $00F0.w		; 20 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $387F.w		; 1C 7F 38
	adc $007E30.l,X		; 7F 30 7E 00
	jmp ($B880.w,X)		; 7C 80 B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl A		; 0A
	rol $3E.b,X		; 36 3E
	jsr ($C0FC.w,X)		; FC FC C0
	cpx $200C.w		; EC 0C 20
	rts		; 60

	cpx #$E0.b		; E0 E0
	brk $02.b		; 00 02
	brk $3F.b		; 00 3F
	cop $FF.b		; 02 FF
	bit $FE.b,X		; 34 FE
	cpy #$FC.b		; C0 FC
	tsb $20EC.w		; 0C EC 20
	rts		; 60

	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	and $2F.b,S		; 23 2F
	ora [$FC.b],Y		; 17 FC
	inc $E2C2.w		; EE C2 E2
	asl $0E.b		; 06 0E
	asl $0000.w		; 0E 00 00
	brk $03.b		; 00 03
	brk $2F.b		; 00 2F
	and $BF.b,S		; 23 BF
	trb $FF.b		; 14 FF
.ACCU 16
	rep #$EE		; C2 EE
	cop $E6.b		; 02 E6
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $43.b,S		; 03 43
	eor $5B.b,S		; 43 5B
	cld		; D8
	dey		; 88
	sty $1C90.w		; 8C 90 1C
	bvs  56.b		; 70 38
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $7F.b		; 00 7F
	eor $FF.b,S		; 43 FF
	cli		; 58
	sbc $10FE88.l,X		; FF 88 FE 10
	inc $FC30.w,X		; FE 30 FC
	rts		; 60

	tya		; 98
	ldy #$D0.b		; A0 D0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	bra  -8.b		; 80 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	trb $1A.b		; 14 1A
	stz $C0DC.w		; 9C DC C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $18FF00.l,X		; 1F 00 FF 18
	jsr ($DC80.w,X)		; FC 80 DC
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001E00.l		; 0F 00 1E 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $7E.b		; 04 7E
	brk $5E.b		; 00 5E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	and $003E00.l,X		; 3F 00 3E 00
	rol $3C00.w,X		; 3E 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $6C03.w,X		; 1D 03 6C
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $0A.b,S		; 03 0A
	ora [$11.b]		; 07 11
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	tsb $190C.w		; 0C 0C 19
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	tsb $1900.w		; 0C 00 19
	brk $40.b		; 00 40
	iny		; C8
	bcs -112.b		; B0 90
	rti		; 40

	bpl -32.b		; 10 E0
	jsr $00E0.w		; 20 E0 00
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	bcs -128.b		; B0 80
	rts		; 60

	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $53.b		; 00 53
	sei		; 78
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc $00FF00.l,X		; 7F 00 FF 00
	brk $FF.b		; 00 FF
	rts		; 60

	beq   0.b		; F0 00
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	sei		; 78
	sei		; 78
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $033F00.l		; 0F 00 3F 03
	inc $FE07.w,X		; FE 07 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bmi  48.b		; 30 30
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   7.b		; 80 07
	sta [$3F.b]		; 87 3F
	eor $E15C58.l,X		; 5F 58 5C E1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $BF.b		; 00 BF
	ora [$BF.b]		; 07 BF
	cli		; 58
	sbc $00FD40.l,X		; FF 40 FD 00
	brk $02.b		; 00 02
	ora $03.b,S		; 03 03
	tas		; 1B
	sec		; 38
	cld		; D8
	jsr ($F0E0.w,X)		; FC E0 F0
	bpl -96.b		; 10 A0
	ldy #$C7.b		; A0 C7
	cpy #$00.b		; C0 00
	ora $00.b,S		; 03 00
	ora $18FF02.l,X		; 1F 02 FF 18
	sbc $10FCE0.l,X		; FF E0 FC 10
	beq -96.b		; F0 A0
	ldy #$C0.b		; A0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $0F.b		; 00 0F
	beq -99.b		; F0 9D
	.db $62, $B0, $5F		; 62 B0 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	.db $62, $00, $5F		; 62 00 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $18.b		; 00 18
	ora [$00.b]		; 07 00
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
	brk $80.b		; 00 80
	adc $00FF00.l,X		; 7F 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $0B.b,S		; 03 0B
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $13.b,S		; 03 13
	ora $3E3F4E.l		; 0F 4E 3F 3E
	sbc $D3EC.w,Y		; F9 EC D3
	cld		; D8
	and [$B1.b]		; 27 B1
	eor $030000.l		; 4F 00 00 03
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $F9.b		; 00 F9
	brk $D3.b		; 00 D3
	brk $27.b		; 00 27
	brk $4F.b		; 00 4F
	brk $13.b		; 00 13
	asl $13.b		; 06 13
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	cop $01.b		; 02 01
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $6D.b		; 00 6D
	sbc [$6D.b],Y		; F7 6D
	sbc [$59.b],Y		; F7 59
	sbc $58EF58.l		; EF 58 EF 58
	sbc $B84EF8.l		; EF F8 4E B8
	eor $4BB9.w		; 4D B9 4B
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	sbc $00EF00.l		; EF 00 EF 00
	sbc $014E00.l		; EF 00 4E 01
	jmp $4903.w		; 4C 03 49
	ora [$60.b]		; 07 60
	lda $807FC0.l,X		; BF C0 7F 80
	sbc $31FF00.l,X		; FF 00 FF 31
	sbc $C1FE60.l,X		; FF 60 FE C1
	inc $FE83.w,X		; FE 83 FE
	lda $007E00.l,X		; BF 00 7E 00
	inc $FF00.w,X		; FE 00 FF
	ora ($FC.b,X)		; 01 FC
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	cop $F9.b		; 02 F9
	brk $3F.b		; 00 3F
	cpy $7B.b		; C4 7B
	sty $9DF2.w		; 8C F2 9D
	cpx $3B.b		; E4 3B
	sty $33.b		; 84 33
	iny		; C8
	adc [$2E.b]		; 67 2E
	eor ($B1.b,X)		; 41 B1
	dec $4078.w		; CE 78 40
	pea $6984.w		; F4 84 69
	ora #$11D1.w		; 09 D1 11
	cpx #$28.b		; E0 28
	bra  16.b		; 80 10
	cpy #$50.b		; C0 50
	php		; 08
	php		; 08
	dec $31.b		; C6 31
	nop		; EA
	sec		; 38
	cmp $1C.b		; C5 1C
	beq  16.b		; F0 10
	pla		; 68
	bra 124.b		; 80 7C
	bra -36.b		; 80 DC
	brk $92.b		; 00 92
	tsb $000E.w		; 0C 0E 00
	ora [$01.b]		; 07 01
	and $00.b,S		; 23 00
	jsr $B000.w		; 20 00 B0
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	jsr $6C6C.w		; 20 6C 6C
	rti		; 40

	cpx #$80.b		; E0 80
	rti		; 40

	brk $80.b		; 00 80
	ora $00.b,S		; 03 00
	ora $0F1F03.l		; 0F 03 1F 0F
	ora $01000E.l		; 0F 0E 00 01
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $1F0E1F.l		; 0F 1F 0E 1F
	brk $3F.b		; 00 3F
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A5.b		; 00 A5
	ora $1C1F.w		; 0D 1F 1C
	ora $D02F00.l,X		; 1F 00 2F D0
	sta $744FE8.l,X		; 9F E8 4F 74
	sta [$FA.b]		; 87 FA
	ora [$F8.b]		; 07 F8
	ora $AD.b		; 05 AD
	trb $031C.w		; 1C 1C 03
	ora ($00.b,S),Y		; 13 00
	clc		; 18
	rti		; 40

	jmp $26A4.w		; 4C A4 26
	rts		; 60

	adc $C0.b,S		; 63 C0
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $87.b		; 00 87
	sta [$78.b]		; 87 78
	sei		; 78
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	and $047BD6.l,X		; 3F D6 7B 04
	xce		; FB
	and $95D2.w		; 2D D2 95
	mvp $D0,$32		; 44 32 D0
	sta $30D7D8.l,X		; 9F D8 D7 30
	and $007B00.l,X		; 3F 00 7B 00
	xce		; FB
	brk $D0.b		; 00 D0
	brk $6E.b		; 00 6E
	asl $ED.b		; 06 ED
	ora ($E7.b,X)		; 01 E7
	jsr $000F.w		; 20 0F 00
	rol $F8.b		; 26 F8
	ora ($FC.b)		; 12 FC
	cli		; 58
	ldx $3CCA.w,Y		; BE CA 3C
	adc ($9C.b)		; 72 9C
	bit $D8.b		; 24 D8
	sec		; 38
	cpy #$60C0.w		; C0 C0 60
	sed		; F8
	brk $FC.b		; 00 FC
	brk $BE.b		; 00 BE
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $98.b		; 00 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $E7.b		; 00 E7
	ora $FFFF7F.l,X		; 1F 7F FF FF
	sbc $21FF18.l,X		; FF 18 FF 21
	inc $FB47.w,X		; FE 47 FB
	stz $38EF.w,X		; 9E EF 38
	cmp $FF001F.l,X		; DF 1F 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FB.b		; 00 FB
	brk $EF.b		; 00 EF
	brk $DF.b		; 00 DF
	brk $FD.b		; 00 FD
	inc $F8E7.w,X		; FE E7 F8
	ror $0181.w,X		; 7E 81 01
	inc $7FFC.w,X		; FE FC 7F
	sbc $18E7C3.l,X		; FF C3 E7 18
	tas		; 1B
	beq  -2.b		; F0 FE
	brk $F8.b		; 00 F8
	brk $81.b		; 00 81
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $C3.b		; 00 C3
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	jsr $0811.w		; 20 11 08
	jsl $020501.l		; 22 01 05 02
	ora $04.b,S		; 03 04
	ora $0B0501.l		; 0F 01 05 0B
	tas		; 1B
	ora [$0B.b]		; 07 0B
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $16.b		; 00 16
	brk $72.b		; 00 72
	sta $C93FE4.l,X		; 9F E4 3F C9
	ror $BDDB.w,X		; 7E DB BD
	sta ($FD.b,S),Y		; 93 FD
	ldx $7B.b,Y		; B6 7B
	rol $FB.b		; 26 FB
	bit $9FF7.w		; 2C F7 9F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $BD.b		; 00 BD
	brk $FD.b		; 00 FD
	brk $7B.b		; 00 7B
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	php		; 08
	asl A		; 0A
	ror A		; 6A
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	brk $4F.b		; 00 4F
	asl A		; 0A
	adc $A757A3.l,X		; 7F A3 57 A7
	eor $793C82.l		; 4F 82 3C 79
	xce		; FB
	sbc $E0AFFE.l,X		; FF FE AF E0
	lda $BFA2.w		; AD A2 BF
	brk $53.b		; 00 53
	ora $001F46.l		; 0F 46 1F 00
	adc $E6FF71.l,X		; 7F 71 FF E6
	sbc $A2FEA0.l,X		; FF A0 FE A2
	sed		; F8
	brk $C0.b		; 00 C0
	asl A		; 0A
	inc $1D.b,X		; F6 1D
	sbc $3E.b,S		; E3 3E
	cmp ($7F.b,X)		; C1 7F
	bra 111.b		; 80 6F
	rts		; 60

	sbc [$F0.b],Y		; F7 F0
	inc $E0E0.w,X		; FE E0 E0
	cmp ($F5.b,X)		; C1 F5
	tsb $E2.b		; 04 E2
	cop $D8.b		; 02 D8
	clc		; 18
	sty $04.b		; 84 04
	cop $F2.b		; 02 F2
	adc ($F9.b,X)		; 61 F9
.ACCU 16
.INDEX 16
	rep #$F3		; C2 F3
	bra  -1.b		; 80 FF
	rts		; 60

	sta $C78659.l,X		; 9F 59 86 C7
	ora ($C6.b,X)		; 01 C6
	rol $11D3.w		; 2E D3 11
	cmp ($05.b,X)		; C1 05
	ora $3E.b		; 05 3E
	rol $90F8.w,X		; 3E F8 90
	bcc   0.b		; 90 00
	jsr $3900.w		; 20 00 39
	cop $3F.b		; 02 3F
	bra -67.b		; 80 BD
	eor ($7F.b,X)		; 41 7F
	tsb $FF.b		; 04 FF
	sec		; 38
	sbc $C01CA2.l,X		; FF A2 1C C0
	and $4780.w,Y		; 39 80 47
	sta [$3F.b]		; 87 3F
	lda $81BBB8.l,X		; BF B8 BB 81
	sbc $FE06.w,Y		; F9 06 FE
	ora ($40.b,X)		; 01 40
	eor ($00.b,X)		; 41 00
	ora [$00.b]		; 07 00
	and $387F07.l,X		; 3F 07 7F 38
	sbc $04F886.l,X		; FF 86 F8 04
	cpy $01.b		; C4 01
	ora ($05.b,X)		; 01 05
	and $F83F.w,X		; 3D 3F F8
	sbc $1EEFE6.l,X		; FF E6 EF 1E
	bit $321F.w,X		; 3C 1F 32
	stz $30D0.w,X		; 9E D0 30
	sta $0581.w,X		; 9D 81 05
	sbc $E4FF38.l,X		; FF 38 FF E4
	sbc $0BFF0C.l,X		; FF 0C FF 0B
	and $2F3C0D.l,X		; 3F 0D 3C 2F
	jsr $007E.w		; 20 7E 00
	cmp ($8F.b),Y		; D1 8F
	sta [$36.b]		; 87 36
	rol $B1.b,X		; 36 B1
	lda $FF82.w,X		; BD 82 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	brk $01.b		; 00 01
	sbc $30FF06.l		; EF 06 FF 30
	sbc $10F380.l,X		; FF 80 F3 10
	cmp ($03.b,S),Y		; D3 03
	ora $A3.b,S		; 03 A3
	lda $62.b,S		; A3 62
	.db $62, $FF, $C0		; 62 FF C0
	sbc [$0C.b],Y		; F7 0C
	and $31FFF6.l,X		; 3F F6 FF 31
	sbc $04F932.l,X		; FF 32 F9 04
	beq  12.b		; F0 0C
	beq   0.b		; F0 00
	cpy #$02FC.w		; C0 FC 02
	inc $F707.w		; EE 07 F7
	ora ($32.b)		; 12 32
	and $34.b,X		; 35 34
	phd		; 0B
	php		; 08
	ora [$14.b],Y		; 17 14
	ora $000010.l,X		; 1F 10 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tsb $04.b		; 04 04
	php		; 08
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	tsb $00.b		; 04 00
	asl A		; 0A
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	adc ($50.b)		; 72 50
	ora $0E.b,S		; 03 0E
	ora $1A.b,X		; 15 1A
	ora ($13.b,S),Y		; 13 13
	sta ($73.b,S),Y		; 93 73
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $F8.b		; 00 F8
	brk $7A.b		; 00 7A
	brk $1F.b		; 00 1F
	brk $17.b		; 00 17
	ora $DF1E7F.l,X		; 1F 7F 1E DF
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ldy $FC87.w,X		; BC 87 FC
	stx $70.b		; 86 70
	asl $78.b		; 06 78
	asl $0CF8.w		; 0E F8 0C
	cpx #$F00C.w		; E0 0C F0
	clc		; 18
	bne  24.b		; D0 18
	sei		; 78
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	asl $07.b		; 06 07
	ora ($0B.b,X)		; 01 0B
	ora [$13.b]		; 07 13
	tsb $1F.b		; 04 1F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	tsb $0000.w		; 0C 00 00
	php		; 08
	php		; 08
	sec		; 38
	inc $FC78.w,X		; FE 78 FC
	beq   8.b		; F0 08
	beq -24.b		; F0 E8
	beq  32.b		; F0 20
	bne  32.b		; D0 20
	cpx #$C000.w		; E0 00 C0
	brk $C4.b		; 00 C4
	cpy $80.b		; C4 80
	bra   8.b		; 80 08
	php		; 08
	cpy #$00E0.w		; C0 E0 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	cmp #$FF38.w		; C9 38 FF
	rti		; 40

	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $F601.w,X		; FD 01 F6
	ora [$10.b]		; 07 10
	ora $57FCC0.l,X		; 1F C0 FC 57
	bvc -65.b		; 50 BF
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F9.b		; 00 F9
	ora ($EC.b,X)		; 01 EC
	tsb $3030.w		; 0C 30 30
	plx		; FA
	ora $EC.b,S		; 03 EC
	ora $603FB0.l		; 0F B0 3F 60
	jmp ($F080.w,X)		; 7C 80 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F301.w,X		; FD 01 F3
	ora $CC.b,S		; 03 CC
	tsb $1090.w		; 0C 90 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$F8.b]		; 07 F8
	trb $00E0.w		; 1C E0 00
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
	brk $3B.b		; 00 3B
	tsb $3B.b		; 04 3B
	tsb $32.b		; 04 32
	ora #$1122.w		; 09 22 11
	and $00.b,S		; 23 00
	and ($00.b,X)		; 21 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora #$1100.w		; 09 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bra   0.b		; 80 00
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
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $6080.w		; 20 80 60
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
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
	tsb $06.b		; 04 06
	ora ($02.b)		; 12 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	cop $7F.b		; 02 7F
	ora $001F00.l		; 0F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $04.b		; 00 04
	tsb $0E.b		; 04 0E
	asl $0808.w		; 0E 08 08
	clc		; 18
	clc		; 18
	trb $14.b		; 14 14
	brk $00.b		; 00 00
	jsr $4020.w		; 20 20 40
	rti		; 40

	adc $807F80.l,X		; 7F 80 7F 80
	jsr ($A043.w,X)		; FC 43 A0
	adc $22BF51.l		; 6F 51 BF 22
	stx $0E82.w		; 8E 82 0E
	ora ($4C.b,X)		; 01 4C
	lda ($32.b)		; B2 32
	tyx		; BB
	tsa		; 3B
	jmp $610C.w		; 4C 0C 61
	ora ($B2.b,X)		; 01 B2
	cop $81.b		; 02 81
	brk $05.b		; 00 05
	tsb $47.b		; 04 47
	tsb $FE.b		; 04 FE
	ora $783CE2.l		; 0F E2 3C 78
	sbc $10FCF0.l,X		; FF F0 FC 10
	trb $1CD0.w		; 1C D0 1C
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	adc ($71.b),Y		; 71 71
	brk $E7.b		; 00 E7
	bpl 124.b		; 10 7C
	php		; 08
	php		; 08
	inx		; E8
	php		; 08
	inx		; E8
	php		; 08
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	ora $05.b,S		; 03 05
	ora #$0504.w		; 09 04 05
	tsb $04.b		; 04 04
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $0504.w		; 0D 04 05
	brk $04.b		; 00 04
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($A0.b,X)		; 01 A0
	stz $65.b		; 64 65
	cop $81.b		; 02 81
	sta $04.b		; 85 04
	tsb $06.b		; 04 06
	sei		; 78
	clv		; B8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	jmp $E5E0FD.l		; 5C FD E0 E5
	brk $87.b		; 00 87
	brk $8F.b		; 00 8F
	tsb $3E.b		; 04 3E
	brk $F8.b		; 00 F8
	bcs -16.b		; B0 F0
	brk $00.b		; 00 00
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora $1C.b,S		; 03 1C
	cop $3C.b		; 02 3C
	ora $7D.b		; 05 7D
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $181A0C.l		; 0F 0C 1A 18
	cpx #$E038.w		; E0 38 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	bra  96.b		; 80 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	bne  16.b		; D0 10
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  63.b		; 80 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  48.b		; 30 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

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
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	jsr $6020.w		; 20 20 60
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $01.b		; 00 01
	adc $7C01.w		; 6D 01 7C
	asl $30B0.w		; 0E B0 30
	ldy #$80B0.w		; A0 B0 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	tas		; 1B
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	bmi  -4.b		; 30 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $35.b		; 05 35
	and ($B0.b),Y		; 31 B0
	clv		; B8
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	and [$05.b]		; 27 05
	lda $80FD30.l,X		; BF 30 FD 80
	sed		; F8
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora $021D32.l		; 0F 32 1D 02
	ora $1D02.w,X		; 1D 02 1D
	cop $1C.b		; 02 1C
	cop $3E.b		; 02 3E
	brk $3F.b		; 00 3F
	ora ($3F.b,X)		; 01 3F
	ora ($31.b,X)		; 01 31
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $09.b		; 00 09
	php		; 08
	ora #$0808.w		; 09 08 08
	php		; 08
	tsb $04.b		; 04 04
	sbc ($0C.b,S),Y		; F3 0C
	xce		; FB
	tsb $04F3.w		; 0C F3 04
	xce		; FB
	tsb $F9.b		; 04 F9
	asl $F9.b		; 06 F9
	asl $F9.b		; 06 F9
	asl $F8.b		; 06 F8
	ora [$F8.b]		; 07 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $FB.b		; 00 FB
	brk $6D.b		; 00 6D
	lda [$B6.b],Y		; B7 B6
	eor $6B3FD2.l,X		; 5F D2 3F 6B
	ora $1B1D2B.l,X		; 1F 2B 1D 1B
	ora $0D13.w		; 0D 13 0D
	bit #$B705.w		; 89 05 B7
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	sed		; F8
	txa		; 8A
	cpx $55.b		; E4 55
.ACCU 8
.INDEX 8
	sep #$75		; E2 75
.ACCU 8
.INDEX 8
	sep #$3B		; E2 3B
	cpx #$6A.b		; E0 6A
	bcs 106.b		; B0 6A
	bcs  72.b		; B0 48
	bcs  -8.b		; B0 F8
	brk $E4.b		; 00 E4
	brk $E2.b		; 00 E2
	brk $E2.b		; 00 E2
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $40.b		; 00 40
	bra -24.b		; 80 E8
	bpl -122.b		; 10 86
	sed		; F8
	cmp $B9FE.w,Y		; D9 FE B9
	sbc $22DF30.l,X		; FF 30 DF 22
	cmp $916E.w,X		; DD 6E 91
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $DD.b		; 00 DD
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $30.b		; 00 30
	cpy #$90.b		; C0 90
	cpx #$C0.b		; E0 C0
	beq  80.b		; F0 50
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $BC.b		; 00 BC
	cpy #$7E.b		; C0 7E
	bra  -3.b		; 80 FD
	cop $DC.b		; 02 DC
	and $8B.b,S		; 23 8B
	adc [$0B.b],Y		; 77 0B
	pea $7489.w		; F4 89 74
	pha		; 48
	ldx $00.b,Y		; B6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	jsl $875050.l		; 22 50 50 87
	sty $07.b		; 84 07
	tsb $03.b		; 04 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$20.b		; C0 20
	cpx #$10.b		; E0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bit $3E6E.w,X		; 3C 6E 3E
	adc [$3F.b],Y		; 77 3F
	tda		; 7B
	tsa		; 3B
	adc $7C39.w,Y		; 79 39 7C
	sec		; 38
	jmp ($7C39.w,X)		; 7C 39 7C
	and $2C7C.w,Y		; 39 7C 2C
	adc $237F26.l,X		; 7F 26 7F 23
	adc $307F21.l,X		; 7F 21 7F 30
	adc $107E30.l,X		; 7F 30 7E 10
	ror $7E10.w,X		; 7E 10 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	.db $82, $C1, $C5		; 82 C1 C5
	sbc $E2.b,S		; E3 E2
	adc ($F5.b,S),Y		; 73 F5
	sec		; 38
	sbc ($14.b),Y		; F1 14
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	sta ($F0.b,X)		; 81 F0
	cmp $F8.b,S		; C3 F8
	adc $FC.b,S		; 63 FC
	bmi 122.b		; 30 7A
	bvc  62.b		; 50 3E
	sta [$38.b]		; 87 38
	sta [$38.b]		; 87 38
	sta [$38.b]		; 87 38
	sta [$38.b]		; 87 38
	ora $301F30.l,X		; 1F 30 1F 30
	ora $381730.l,X		; 1F 30 17 38
	and $3901.w,Y		; 39 01 39
	ora ($3A.b,X)		; 01 3A
	cop $3A.b		; 02 3A
	cop $34.b		; 02 34
	tsb $34.b		; 04 34
	tsb $32.b		; 04 32
	cop $39.b		; 02 39
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $2A.b		; 00 2A
	rol A		; 2A
	eor #$49.b		; 49 49
	eor #$49.b		; 49 49
	eor #$49.b		; 49 49
	bit #$89.b		; 89 89
	sta ($91.b),Y		; 91 91
	sta ($91.b),Y		; 91 91
	sta ($91.b),Y		; 91 91
	sbc $40FFA0.l,X		; FF A0 FF 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	tay		; A8
	inx		; E8
	lsr $46.b		; 46 46
	lda ($B1.b),Y		; B1 B1
	cli		; 58
	cli		; 58
	lsr $46.b		; 46 46
	and ($21.b,X)		; 21 21
	jsr $1120.w		; 20 20 11
	ora ($C5.b),Y		; 11 C5
	adc ($E0.b),Y		; 71 E0
	and ($FD.b)		; 32 FD
	ora $CE0ECE.l,X		; 1F CE 0E CE
	and $806787.l		; 2F 87 67 80
	rts		; 60

	ora ($F0.b,S),Y		; 13 F0
	eor ($FB.b,X)		; 41 FB
	jsr $DD7F.w		; 20 7F DD
	sbc $4E3F0C.l,X		; FF 0C 3F 4E
	eor $B8AFB6.l,X		; 5F B6 AF B8
	lda [$2E.b]		; A7 2E
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	trb $183D.w		; 1C 3D 18
	and [$22.b]		; 27 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	bpl  28.b		; 10 1C
	clc		; 18
	and $002720.l,X		; 3F 20 27 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  32.b		; 80 20
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq   0.b		; F0 00
	clv		; B8
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $8E.b		; 00 8E
	rol $3E01.w,X		; 3E 01 3E
	ora ($7E.b,X)		; 01 7E
	ora ($7A.b,X)		; 01 7A
	ora ($73.b,X)		; 01 73
	brk $61.b		; 00 61
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $01.b		; 05 01
	ora ($10.b,X)		; 01 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   5.b		; F0 05
	sed		; F8
	php		; 08
	bvs   8.b		; 70 08
	rts		; 60

	php		; 08
	beq -104.b		; F0 98
	brk $90.b		; 00 90
	bvs -32.b		; 70 E0
	bra  96.b		; 80 60
	sbc $F000.w,Y		; F9 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	rts		; 60

	brk $F0.b		; 00 F0
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	sta ($45.b,X)		; 81 45
	bra   5.b		; 80 05
	rti		; 40

	ora $20.b		; 05 20
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	rti		; 40

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A8.b		; 00 A8
	bpl -88.b		; 10 A8
	bpl  32.b		; 10 20
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AB.b		; 00 AB
	bit $91.b		; 24 91
	stx $FB.b		; 86 FB
	cpy $F1.b		; C4 F1
	stx $25.b		; 86 25
	stx $9F.b		; 86 9F
	mvp $B0,$5E		; 44 5E B0
	trb $70E0.w		; 1C E0 70
	bmi 108.b		; 30 6C
	tsb $0038.w		; 0C 38 00
	sei		; 78
	brk $F8.b		; 00 F8
	tya		; 98
	sei		; 78
	rti		; 40

	plp		; 28
	jsr $0000.w		; 20 00 00
	bcc -32.b		; 90 E0
	bmi -64.b		; 30 C0
	cpy #$20.b		; C0 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	eor $98AF90.l		; 4F 90 AF 98
	sta [$0C.b]		; 87 0C
	adc $C7.b,S		; 63 C7
	bvs -29.b		; 70 E3
	sec		; 38
	adc ($1C.b),Y		; 71 1C
	sed		; F8
	asl $810D.w		; 0E 0D 81
	asl $07C0.w		; 0E C0 07
	cpx #$03.b		; E0 03
	beq  64.b		; F0 40
	sed		; F8
	jsr $10FC.w		; 20 FC 10
	inc $7F48.w,X		; FE 48 7F
	jmp ($3E00.w,X)		; 7C 00 3E
	bra  62.b		; 80 3E
	cpy #$7D.b		; C0 7D
	sty $DE2E.w		; 8C 2E DE
	stz $DC5E.w,X		; 9E 5E DC
	asl $1EDC.w,X		; 1E DC 1E
	beq   0.b		; F0 00
	cpx $508C.w		; EC 8C 50
	bvc -96.b		; 50 A0
	rol $1FCC.w		; 2E CC 1F
	jmp $083F.w		; 4C 3F 08
	and $073F18.l,X		; 3F 18 3F 07
	bmi  14.b		; 30 0E
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora [$00.b]		; 07 00
	sec		; 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	sbc $0CFE.w,X		; FD FE 0C
	pea $7DC1.w		; F4 C1 7D
	sta ($ED.b,S),Y		; 93 ED
	and $9F7ECC.l,X		; 3F CC 7E 9F
	adc $EDBE.w,Y		; 79 BE ED
	tsa		; 3B
	tsb $040E.w		; 0C 0E 04
	ora $ED037D.l		; 0F 7D 03 ED
	ora $C8.b,S		; 03 C8
	ora [$98.b]		; 07 98
	ora $3A18BE.l		; 0F BE 18 3A
	ora #$07.b		; 09 07
	clc		; 18
	phd		; 0B
	trb $1C0B.w		; 1C 0B 1C
	ora [$0C.b]		; 07 0C
	ora $0E.b		; 05 0E
	ora $06.b,S		; 03 06
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	clc		; 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8F.b		; 00 8F
	bvs -105.b		; 70 97
	sei		; 78
	tay		; A8
	adc $9D439A.l		; 6F 9A 43 9D
	eor ($BE.b,X)		; 41 BE
	rts		; 60

	sta ($91.b),Y		; 91 91
	beq -16.b		; F0 F0
	clc		; 18
	clc		; 18
	and $07172F.l		; 2F 2F 17 07
	and $3E01.w,X		; 3D 01 3E
	brk $1F.b		; 00 1F
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $47.b		; 00 47
	clv		; B8
	eor ($BF.b)		; 52 BF
	eor $7DAF.w,Y		; 59 AF 7D
	stx $1A.b		; 86 1A
	inc A		; 1A
	sty $988C.w		; 8C 8C 98
	tya		; 98
	cpx #$E0.b		; E0 E0
	sec		; 38
	brk $3F.b		; 00 3F
	brk $AF.b		; 00 AF
	bra -122.b		; 80 86
	bra   9.b		; 80 09
	sed		; F8
	cpy $3C.b		; C4 3C
	sbc ($0F.b),Y		; F1 0F
	jsr ($FF03.w,X)		; FC 03 FF
	brk $7F.b		; 00 7F
	bra  15.b		; 80 0F
	beq -96.b		; F0 A0
	sbc $0B7077.l,X		; FF 77 70 0B
	php		; 08
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	stz $F31C.w		; 9C 1C F3
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	ora $676E.w		; 0D 6E 67
	rts		; 60

	rti		; 40

	adc ($61.b,X)		; 61 61
	adc ($71.b),Y		; 71 71
	sec		; 38
	sec		; 38
	ora $06.b,S		; 03 06
	cop $01.b		; 02 01
	cop $0F.b		; 02 0F
	lsr $6F.b		; 46 6F
	rti		; 40

	rts		; 60

	brk $71.b		; 00 71
	rts		; 60

	adc $3F20.w,Y		; 79 20 3F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	clc		; 18
	trb $A020.w		; 1C 20 A0
	brk $18.b		; 00 18
	trb $2408.w		; 1C 08 24
	sec		; 38
	sec		; 38
	bmi 115.b		; 30 73
	cpx #$47.b		; E0 47
	sty $00.b		; 84 00
	jmp.w [$3800]		; DC 00 38
	cpx #$EE.b		; E0 EE
	cpx #$FC.b		; E0 FC
	cpx #$FE.b		; E0 FE
	bpl  62.b		; 10 3E
	brk $FF.b		; 00 FF
	tsb $DF.b		; 04 DF
	brk $01.b		; 00 01
	tsb $03.b		; 04 03
	ora $0F02.w		; 0D 02 0F
	ora ($16.b,X)		; 01 16
	phd		; 0B
	ora ($0F.b)		; 12 0F
	plp		; 28
	ora $011E29.l,X		; 1F 29 1E 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $58.b		; 00 58
	rol $7ABD.w,X		; 3E BD 7A
	mvn $B4,$FB		; 54 FB B4
	cmp $B06F.w,Y		; D9 6F B0
	cpy $9E73.w		; CC 73 9E
	adc $BF.b,S		; 63 BF
	eor ($3F.b,X)		; 41 3F
	brk $7B.b		; 00 7B
	brk $F9.b		; 00 F9
	ora ($DA.b,X)		; 01 DA
	cop $B0.b		; 02 B0
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $42.b		; 00 42
	brk $FE.b		; 00 FE
	brk $3D.b		; 00 3D
	ora ($0E.b,X)		; 01 0E
	sta ($85.b,S),Y		; 93 85
	dex		; CA
	cmp [$60.b]		; C7 60
	sbc ($30.b,X)		; E1 30
	adc ($98.b),Y		; 71 98
	sed		; F8
	sty $0003.w		; 8C 03 00
	cop $C0.b		; 02 C0
	ora ($E1.b,X)		; 01 E1
	.db $82, $F2, $40		; 82 F2 40
	sed		; F8
	jsl $FE10FE.l		; 22 FE 10 FE
	php		; 08
	sbc $0D0607.l,X		; FF 07 06 0D
	asl $0F.b		; 06 0F
	tsb $0F.b		; 04 0F
	tsb $0A.b		; 04 0A
	tsb $0C.b		; 04 0C
	brk $05.b		; 00 05
	php		; 08
	brk $09.b		; 00 09
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	php		; 08
	brk $09.b		; 00 09
	brk $D3.b		; 00 D3
	adc $E36FD3.l		; 6F D3 6F E3
	jmp $CF48B7.l		; 5C B7 48 CF
	bmi -121.b		; 30 87
	sei		; 78
	ora $609FF0.l		; 0F F0 9F 60
	adc $03630F.l		; 6F 0F 63 03
	eor ($11.b),Y		; 51 11
	eor ($01.b,X)		; 41 01
	and ($33.b,S),Y		; 33 33
	phk		; 4B
	phk		; 4B
	sta $85.b		; 85 85
	asl A		; 0A
	asl A		; 0A
	stz $3DE6.w		; 9C E6 3D
	sbc $FF.b,S		; E3 FF
	adc $3CDF.w,X		; 7D DF 3C
	inc $AE1F.w,X		; FE 1F AE
	eor $FE2EDE.l,X		; 5F DE 2E FE
	ora $04.b,X		; 15 04
	sta $4DBF80.l,X		; 9F 80 BF 4D
	adc $0E3F0C.l,X		; 7F 0C 3F 0E
	adc $847F0C.l,X		; 7F 0C 7F 84
	lda $00DFC0.l,X		; BF C0 DF 00
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rts		; 60

	bmi  32.b		; 30 20
	tsb $14.b		; 04 14
	php		; 08
	asl $041C.w		; 0E 1C 04
	php		; 08
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	lsr $0E08.w,X		; 5E 08 0E
	brk $1E.b		; 00 1E
	brk $08.b		; 00 08
	sbc $6101.w,Y		; F9 01 61
	ora ($20.b),Y		; 11 20
	bpl  32.b		; 10 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bpl   3.b		; 10 03
	bpl   3.b		; 10 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	jsr $705C.w		; 20 5C 70
	asl $0008.w		; 0E 08 00
	ora $02.b		; 05 02
	ora $02.b,S		; 03 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr ($FC10.w,X)		; FC 10 FC
	brk $3E.b		; 00 3E
	brk $17.b		; 00 17
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tya		; 98
	cpy #$84.b		; C0 84
	cld		; D8
	cop $3C.b		; 02 3C
	bra -66.b		; 80 BE
	ora ($72.b,X)		; 01 72
	ora ($38.b,X)		; 01 38
	eor ($5C.b,X)		; 41 5C
	bra -60.b		; 80 C4
	brk $E0.b		; 00 E0
	clc		; 18
	cpx #$3C.b		; E0 3C
	cpy #$BE.b		; C0 BE
	cpy #$32.b		; C0 32
	cpy #$38.b		; C0 38
	cpy #$5C.b		; C0 5C
	cpy #$84.b		; C0 84
	sed		; F8
	ldy #$70.b		; A0 70
	beq  56.b		; F0 38
	sei		; 78
	jmp.w [$CEDC]		; DC DC CE
	asl $FFF7.w		; 0E F7 FF
	tsa		; 3B
	sbc $02FF01.l,X		; FF 01 FF 02
	jsr $B0FC.w		; 20 FC B0
	ror $FF58.w,X		; 7E 58 FF
	cpx $26DF.w		; EC DF 26
	and $003F3B.l,X		; 3F 3B 3F 00
	ora $C2.b,S		; 03 C2
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$C0.b		; C0 C0
	cpy #$90.b		; C0 90
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	inx		; E8
	brk $FC.b		; 00 FC
	bmi  48.b		; 30 30
	jmp ($3C7C.w,X)		; 7C 7C 3C
	bit $AC0C.w,X		; 3C 0C AC
	dey		; 88
	cpy $2880.w		; CC 80 28
	jsr $3820.w		; 20 20 38
	bit $3030.w,X		; 3C 30 30
	bit $1C7C.w,X		; 3C 7C 1C
	jsr ($FC08.w,X)		; FC 08 FC
	bra  -4.b		; 80 FC
	brk $FC.b		; 00 FC
	jsr $387C.w		; 20 7C 38
	rol $1E79.w,X		; 3E 79 1E
	bit $03.b,X		; 34 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	brk $1F.b		; 00 1F
	cop $0A.b		; 02 0A
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sta [$07.b]		; 87 07
	and ($C3.b),Y		; 31 C3
	sec		; 38
	cmp $78.b		; C5 78
	stx $E7.b		; 86 E7
	ora $73.b,S		; 03 73
	sta ($FC.b,X)		; 81 FC
	tsb $FD.b		; 04 FD
	ora ($03.b,X)		; 01 03
	sbc $240F00.l,X		; FF 00 0F 24
	and $21A9A0.l		; 2F A0 A9 21
	and $481F10.l,X		; 3F 10 1F 48
	eor $C45350.l		; 4F 50 53 C4
	sbc $01.b,S		; E3 01
	cli		; 58
	sec		; 38
	asl $677E.w,X		; 1E 7E 67
	sbc $F0FFF9.l,X		; FF F9 FF F0
	inc $E1.b,X		; F6 E1
	lsr $41.b		; 46 41
	bra  -8.b		; 80 F8
	brk $FE.b		; 00 FE
	clc		; 18
	sbc $F1FF66.l,X		; FF 66 FF F1
	sbc $41FBE0.l,X		; FF E0 FB 41
	sed		; F8
	ora [$FE.b]		; 07 FE
	lsr A		; 4A
	clv		; B8
	sbc $1C.b		; E5 1C
	tda		; 7B
	asl $3E.b		; 06 3E
	bra -123.b		; 80 85
.ACCU 16
	rep #$A5		; C2 A5
	sec		; 38
	beq  22.b		; F0 16
	inc $2707.w,X		; FE 07 27
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	bra   1.b		; 80 01
	cpy #$80.b		; C0 80
	sed		; F8
	jsr $10FA.w		; 20 FA 10
	lda $313706.l,X		; BF 06 37 31
	jsr ($1E78.w,X)		; FC 78 1E
	pea $F30E.w		; F4 0E F3
	asl $3DE3.w		; 0E E3 3D
	tyx		; BB
	adc $3E5D.w,X		; 7D 5D 3E
	ora $007C9E.l		; 0F 9E 7C 00
	stz $EE00.w,X		; 9E 00 EE
	rts		; 60

	stx $0580.w		; 8E 80 05
	sec		; 38
	and ($7C.b),Y		; 31 7C
	tsb $06FE.w		; 0C FE 06
	inc $4080.w,X		; FE 80 40
	cpy #$20.b		; C0 20
	rts		; 60

	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	bmi  15.b		; 30 0F
	rol $1808.w,X		; 3E 08 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	dey		; 88
	dey		; 88
	sei		; 78
	sei		; 78
	asl $111E.w,X		; 1E 1E 11
	ora ($07.b),Y		; 11 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	sbc $01FE01.l,X		; FF 01 FE 01
	sbc $08F700.l,X		; FF 00 F7 08
	sta ($EE.b),Y		; 91 EE
	lsr $7F.b		; 46 7F
	lda ($3F.b,X)		; A1 3F
	dec $19.b,X		; D6 19
	lsr $46.b		; 46 46
	eor $304D.w		; 4D 4D 30
	bmi -18.b		; 30 EE
	inc $4F.b		; E6 4F
	eor ($AF.b,X)		; 41 AF
	jsr $10D7.w		; 20 D7 10
	sbc ($00.b,X)		; E1 00
	tda		; 7B
	ldy $DDBA.w,X		; BC BA DD
	tad		; 5B
	adc $3DA3.w		; 6D A3 3D
	cmp ($1D.b,S),Y		; D3 1D
	adc ($1D.b,S),Y		; 73 1D
	lda $6D8B.w		; AD 8B 6D
	wai		; CB
	bit $1D00.w,X		; 3C 00 1D
	brk $8D.b		; 00 8D
	brk $CD.b		; 00 CD
	brk $E5.b		; 00 E5
	brk $E5.b		; 00 E5
	brk $73.b		; 00 73
	brk $33.b		; 00 33
	brk $FF.b		; 00 FF
	ora $A3.b,S		; 03 A3
	rti		; 40

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rti		; 40

	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	rti		; 40

	ora $0F.b,S		; 03 0F
	rti		; 40

	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $0E.b		; 00 0E
	cop $00.b		; 02 00
	cop $24.b		; 02 24
	trb $302A.w		; 1C 2A 30
	stz $36.b,X		; 74 36
	clc		; 18
	ora ($24.b,X)		; 01 24
	and $6060.w		; 2D 60 60
	cop $0E.b		; 02 0E
	brk $02.b		; 00 02
	tsb $3C.b		; 04 3C
	jsr $303E.w		; 20 3E 30
	adc [$06.b],Y		; 77 06
	ora $402F26.l,X		; 1F 26 2F 40
	rts		; 60

	cpy #$00.b		; C0 00
	jsr $3000.w		; 20 00 30
	jsr $0810.w		; 20 10 08
	brk $00.b		; 00 00
	jsr $8CB8.w		; 20 B8 8C
	bcc   4.b		; 90 04
	clc		; 18
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	cpx #$EC.b		; E0 EC
	cpx #$EE.b		; E0 EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$2C.b],Y		; 17 2C
	pld		; 2B
	jmp $69BA55.l		; 5C 55 BA 69
	ldx $A5.b,Y		; B6 A5
	ror $E05F.w,X		; 7E 5F E0
	inc $7E01.w,X		; FE 01 7E
	sta ($2C.b,X)		; 81 2C
	brk $5C.b		; 00 5C
	brk $BA.b		; 00 BA
	brk $B6.b		; 00 B6
	brk $7E.b		; 00 7E
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	rti		; 40

	jsr $0820.w		; 20 20 08
	sbc [$5B.b],Y		; F7 5B
	ldy $2A.b		; A4 2A
	bit #$A164.w		; 89 64 A1
	rol $3CF1.w,X		; 3E F1 3C
	adc ($49.b,X)		; 61 49
	lda ($21.b,X)		; A1 21
	sta ($F7.b),Y		; 91 F7
	brk $A0.b		; 00 A0
	brk $DC.b		; 00 DC
	tsb $03DB.w		; 0C DB 03
	lsr $9E40.w		; 4E 40 9E
	bra  62.b		; 80 3E
	rol $5E.b		; 26 5E
	asl $B0.b,X		; 16 B0
	jmp ($7894.w,X)		; 7C 94 78
	cpx $38.b		; E4 38
	pha		; 48
	bcs -16.b		; B0 F0
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bcc -48.b		; 90 D0
	plp		; 28
	jmp ($7800.w,X)		; 7C 00 78
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	brk $09.b		; 00 09
	asl $05.b		; 06 05
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $D4.b		; 00 D4
	cmp $57.b,X		; D5 57
	eor [$52.b],Y		; 57 52
	eor ($92.b)		; 52 92
	sta ($91.b)		; 92 91
	sta ($89.b),Y		; 91 89
	bit #$8888.w		; 89 88 88
	dey		; 88
	dey		; 88
	lda $405FA0.l		; AF A0 5F 40
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda #$40F9.w		; A9 F9 40
	cpx #$BC.b		; E0 BC
	jsr ($4747.w,X)		; FC 47 47
	jsr $1020.w		; 20 20 10
	bpl -119.b		; 10 89
	bit #$8585.w		; 89 85 85
	sbc $00FF01.l,X		; FF 01 FF 00
	jmp.w [$EE23]		; DC 23 EE
	adc ($F7.b),Y		; 71 F7
	cli		; 58
	sbc #$F54E.w		; E9 4E F5
	asl $FA.b		; 06 FA
	ora $E1.b,S		; 03 E1
	sbc $432320.l		; EF 20 23 43
	rti		; 40

	sta ($80.b,X)		; 81 80
	ldy #$80.b		; A0 80
	lda ($80.b)		; B2 80
	sed		; F8
	bra  -4.b		; 80 FC
	brk $87.b		; 00 87
	sbc [$E1.b]		; E7 E1
	sbc $3FF9.w,Y		; F9 F9 3F
	adc $DD8F.w,X		; 7D 8F DD
	sbc $E2.b,S		; E3 E2
	jmp ($BAF4.w,X)		; 7C F4 BA
	sbc $835A.w,X		; FD 5A 83
	sbc $38FFE1.l,X		; FF E1 FF 38
	sbc $C17F8C.l,X		; FF 8C 7F C1
	and $BA037C.l,X		; 3F 7C 03 BA
	ora ($5A.b,X)		; 01 5A
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$40.b		; E0 40
	rts		; 60

	brk $E0.b		; 00 E0
	bra -120.b		; 80 88
	ldy $F0EC.w		; AC EC F0
	jmp ($3E7A.w,X)		; 7C 7A 3E
	and $400040.l,X		; 3F 40 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$88.b		; C0 88
	jsr ($FEE0.w,X)		; FC E0 FE
	sei		; 78
	sbc $03FF3A.l,X		; FF 3A FF 03
	asl $00.b		; 06 00
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	php		; 08
	xce		; FB
	tsb $0473.w		; 0C 73 04
	sbc $3986.w,X		; FD 86 39
	.db $82, $5C, $C3		; 82 5C C3
	rol $2CE3.w,X		; 3E E3 2C
	sbc ($F8.b,X)		; E1 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $FC.b		; 00 FC
	bra  62.b		; 80 3E
	cop $5C.b		; 02 5C
	rti		; 40

	asl $0600.w,X		; 1E 00 06
	cmp #$758A.w		; C9 8A 75
	stx $6D.b,Y		; 96 6D
	stx $6D.b,Y		; 96 6D
	ldy $EC76.w		; AC 76 EC
	rol $F4.b,X		; 36 F4
	inc A		; 1A
	stz $1A.b,X		; 74 1A
	adc ($40.b),Y		; 71 40
	ora $00.b		; 05 00
	adc $6D00.w		; 6D 00 6D
	brk $76.b		; 00 76
	brk $36.b		; 00 36
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	rts		; 60

	rts		; 60

	rts		; 60

	sec		; 38
	sec		; 38
	ora [$17.b],Y		; 17 17
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	rti		; 40

	jmp ($3F20.w,X)		; 7C 20 3F
	ora ($17.b)		; 12 17
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $38.b,X		; 35 38
	txy		; 9B
	tya		; 98
	tyx		; BB
	eor ($26.b,S),Y		; 53 26
	eor $2F.b,S		; 43 2F
	rti		; 40

	ora [$0F.b],Y		; 17 0F
	ora $071F0F.l,X		; 1F 0F 1F 07
	beq  -1.b		; F0 FF
	brk $9F.b		; 00 9F
	ora $FF.b,S		; 03 FF
	brk $EB.b		; 00 EB
	brk $41.b		; 00 41
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	ora $07.b,S		; 03 07
	sta $0C.b		; 85 0C
	stx $10.b		; 86 10
	cmp $E221.w		; CD 21 E2
	wai		; CB
	cmp ($28.b,X)		; C1 28
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	sbc $8003FF.l,X		; FF FF 03 80
	ora $C01EE0.l		; 0F E0 1E C0
	tsb $F8.b		; 04 F8
	brk $FE.b		; 00 FE
	cpy #$FF.b		; C0 FF
	sed		; F8
	sbc $3FFFFE.l,X		; FF FE FF 3F
	rti		; 40

	lda $C03FC0.l,X		; BF C0 3F C0
	adc [$88.b],Y		; 77 88
	cmp $0C.b,S		; C3 0C
	ora ($76.b),Y		; 11 76
	sec		; 38
	xce		; FB
	sbc $90FC.w,X		; FD FC 90
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	asl A		; 0A
	asl A		; 0A
	tsb $34.b		; 04 34
	cop $FA.b		; 02 FA
	ora $38FD.w,Y		; 19 FD 38
	inc $CC57.w,X		; FE 57 CC
	adc $FC.b,S		; 63 FC
	sbc $60DF70.l,X		; FF 70 DF 60
	sbc $1CE300.l,X		; FF 00 E3 1C
	cmp ($3C.b,X)		; C1 3C
	.db $42, $3E		; 42 3E
	rol A		; 2A
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tas		; 1B
	clc		; 18
	and $20.b,S		; 23 20
	sta ($80.b,X)		; 81 80
	stz $8E7A.w		; 9C 7A 8E
	adc $FE27.w,X		; 7D 27 FE
	and ($FF.b,S),Y		; 33 FF
	ora $947F.w,Y		; 19 7F 94
	adc $CD3F8A.l,X		; 7F 8A 3F CD
	and $7D007A.l,X		; 3F 7A 00 7D
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $6F.b		; 00 6F
	beq -73.b		; F0 B7
	sei		; 78
	adc ($9E.b),Y		; 71 9E
	tay		; A8
	ora $0B0FD0.l,X		; 1F D0 0F 0B
	bit $04.b		; 24 04
	cop $02.b		; 02 02
	tsb $F8.b		; 04 F8
	php		; 08
	jmp ($9E04.w,X)		; 7C 04 9E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $24.b		; 00 24
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $1E.b		; 00 1E
	adc ($1E.b),Y		; 71 1E
	adc ($07.b),Y		; 71 07
	and ($06.b),Y		; 31 06
	bmi  14.b		; 30 0E
	clc		; 18
	asl $0518.w		; 0E 18 05
	php		; 08
	ora $08.b,S		; 03 08
	and $010F21.l		; 2F 21 0F 01
	asl $1F10.w,X		; 1E 10 1F
	bpl   7.b		; 10 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	tsb $0309.w		; 0C 09 03
	bra   1.b		; 80 01
	.db $82, $01, $80		; 82 01 80
	brk $C1.b		; 00 C1
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	cpy #$A0.b		; C0 A0
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	sta ($80.b,X)		; 81 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ply		; 7A
	tsb $462C.w		; 0C 2C 46
	asl $20.b		; 06 20
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $4600.w		; 0C 00 46
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$C0.b		; E0 C0
	sed		; F8
	beq  60.b		; F0 3C
	bit $0E0E.w,X		; 3C 0E 0E
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	sed		; F8
	cpy #$FE.b		; C0 FE
	bmi  -1.b		; 30 FF
	tsb $023F.w		; 0C 3F 02
	ora $7C0200.l		; 0F 00 02 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ror $7EFC.w,X		; 7E FC 7E
	lda ($BF.b)		; B2 BF
	rts		; 60

	lda $40BF60.l,X		; BF 60 BF 40
	and $007F40.l,X		; 3F 40 7F 00
	adc $3C1C00.l,X		; 7F 00 1C 3C
	bpl  50.b		; 10 32
	brk $61.b		; 00 61
	brk $E1.b		; 00 E1
	bpl -48.b		; 10 D0
	bpl  80.b		; 10 50
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$A0.b		; A0 A0
	bne  96.b		; D0 60
	bne  48.b		; D0 30
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $C8.b		; 00 C8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rol $017D.w		; 2E 7D 01
	ldx $2F80.w,Y		; BE 80 2F
	cpx #$CB.b		; E0 CB
	sec		; 38
	sbc ($0E.b)		; F2 0E
	adc $BC87.w,Y		; 79 87 BC
	cmp $DF.b,S		; C3 DF
	cpx #$FE.b		; E0 FE
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	sta $84.b		; 85 84
	rep #$42		; C2 42
	sbc ($21.b,X)		; E1 21
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora $041B00.l		; 0F 00 1B 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  96.b		; 10 60
	dec A		; 3A
	cpy $61.b		; C4 61
	ldx $7FF6.w,Y		; BE F6 7F
	ldx $8CFF.w		; AE FF 8C
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $C4.b		; 00 C4
	brk $BE.b		; 00 BE
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	bra  76.b		; 80 4C
	beq  36.b		; F0 24
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$C0.b		; A0 C0
	bvs  96.b		; 70 60
	tsb $06.b		; 04 06
	tsb $0C04.w		; 0C 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80.b		; E0 80
	cpx #$40.b		; E0 40
	inc $DE00.w,X		; FE 00 DE
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	sei		; 78
	sei		; 78
	asl $271E.w,X		; 1E 1E 27
	sbc [$E1.b]		; E7 E1
	and $26.b,S		; 23 26
	asl $400E.w		; 0E 0E 40
	cpx #$40.b		; E0 40
	jsr ($7F40.w,X)		; FC 40 7F
	clc		; 18
	adc $E13F06.l,X		; 7F 06 3F E1
	sbc [$22.b]		; E7 22
	and [$0E.b]		; 27 0E
	asl $0000.w		; 0E 00 00
	brk $80.b		; 00 80
	ldy #$C0.b		; A0 C0
	cpx #$78.b		; E0 78
	sbc ($92.b)		; F2 92
	dec $C6.b,X		; D6 C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	rti		; 40

	plx		; FA
	bcc  -1.b		; 90 FF
	cpy $D7.b		; C4 D7
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	sty $6FFF.w		; 8C FF 6F
	sbc ($1F.b,S),Y		; F3 1F
	sed		; F8
	ora [$FE.b]		; 07 FE
	adc $9F.b,S		; 63 9F
	lda ($CF.b),Y		; B1 CF
	sed		; F8
	sta [$FE.b]		; 87 FE
	bra  -1.b		; 80 FF
	brk $F3.b		; 00 F3
	brk $78.b		; 00 78
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	cpy #$8F.b		; C0 8F
	cpx #$87.b		; E0 87
	bra   4.b		; 80 04
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	bmi 112.b		; 30 70
	clc		; 18
	stz $C688.w		; 9C 88 C6
	iny		; C8
	jsl $0000E4.l		; 22 E4 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $88.b		; 00 88
	brk $C8.b		; 00 C8
	brk $E4.b		; 00 E4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	cop $07.b		; 02 07
	ora ($0E.b,X)		; 01 0E
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -18.b		; 80 EE
	bpl -127.b		; 10 81
	inc $FFD9.w,X		; FE D9 FF
	clv		; B8
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	beq  80.b		; F0 50
	cpx #$90.b		; E0 90
	cpx #$30.b		; E0 30
	cpy #$E1.b		; C0 E1
	brk $C1.b		; 00 C1
	ora ($E7.b,X)		; 01 E7
	ora $E1.b,S		; 03 E1
	asl $F0.b		; 06 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora [$01.b]		; 07 01
	phd		; 0B
	brk $1F.b		; 00 1F
	ora [$0C.b]		; 07 0C
	asl $1D18.w		; 0E 18 1D
	and ($3F.b),Y		; 31 3F
	adc [$7F.b]		; 67 7F
	cmp $FE1E7F.l		; CF 7F 1E FE
	bit $38FC.w,X		; 3C FC 38
	tsb $3F.b		; 04 3F
	php		; 08
	adc $27FF11.l,X		; 7F 11 FF 27
	sbc $1CFF4E.l,X		; FF 4E FF 1C
	sbc $30BF38.l,X		; FF 38 BF 30
	ldx $EC77.w,Y		; BE 77 EC
	ora [$D0.b]		; 07 D0
	cmp $E4FBF0.l,X		; DF F0 FB E4
	cmp [$C8.b],Y		; D7 C8
	eor [$58.b]		; 47 58
	ora $340F30.l		; 0F 30 0F 34
	tsb $6E.b		; 04 6E
	brk $FE.b		; 00 FE
	cmp ($F9.b),Y		; D1 F9
	sbc ($F9.b,X)		; E1 F9
.ACCU 16
.INDEX 16
	rep #$F2		; C2 F2
	.db $42, $E2		; 42 E2
	jsr $20E0.w		; 20 E0 20
	cpx $F8.b		; E4 F8
	adc [$3C.b]		; 67 3C
	lda ($BE.b,S),Y		; B3 BE
	ora ($9F.b,X)		; 01 9F
	brk $CF.b		; 00 CF
	ora ($D3.b,X)		; 01 D3
	and ($C7.b),Y		; 31 C7
	and $1DC3.w,X		; 3D C3 1D
	ora $FC60.w,Y		; 19 60 FC
	bcs  -2.b		; B0 FE
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	sta ($ED.b,X)		; 81 ED
	lda ($F8.b,X)		; A1 F8
	lda $0DEC.w,Y		; B9 EC 0D
	ora [$10.b]		; 07 10
	rol $7C07.w,X		; 3E 07 7C
	ora $FF.b,S		; 03 FF
	ora $FF3FFF.l,X		; 1F FF 3F FF
	adc $437C80.l,X		; 7F 80 7C 43
	ora $01000F.l		; 0F 0F 00 01
	ora ($00.b,X)		; 01 00
	brk $0C.b		; 00 0C
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $0F7F00.l,X		; 7F 00 7F 0F
	bmi -126.b		; 30 82
	sbc $F903.w,X		; FD 03 F9
	phd		; 0B
	sbc [$E7.b],Y		; F7 E7
	sbc $0DDFAF.l,X		; FF AF DF 0D
	sta ($E1.b,X)		; 81 E1
	eor ($E2.b),Y		; 51 E2
	lsr $41.b		; 46 41
	eor ($00.b,X)		; 41 00
	ora [$01.b]		; 07 01
	ora $87FF03.l,X		; 1F 03 FF 87
	sbc $41FF01.l,X		; FF 01 FF 41
	ora $001F42.l		; 0F 42 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3C.b		; 04 3C
	ora $0120.w		; 0D 20 01
	cmp ($01.b,X)		; C1 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	brk $E2.b		; 00 E2
	brk $C1.b		; 00 C1
	ora ($07.b,X)		; 01 07
	cop $01.b		; 02 01
	asl $1C02.w,X		; 1E 02 1C
	tsb $E4.b		; 04 E4
	lsr $D0.b		; 46 D0
	bvs  56.b		; 70 38
	beq  24.b		; F0 18
	clc		; 18
	trb $0000.w		; 1C 00 00
	ora $043F00.l		; 0F 00 3F 04
	lda $00FE00.l,X		; BF 00 FE 00
	jsr ($3C20.w,X)		; FC 20 3C
	cpy #$E0D8.w		; C0 D8 E0
	jsr ($403F.w,X)		; FC 3F 40
	lda $403F40.l,X		; BF 40 3F 40
	ora $611660.l,X		; 1F 60 16 61
	ora [$20.b],Y		; 17 20
	ora $30.b,S		; 03 30
	phd		; 0B
	bpl  81.b		; 10 51
	ora ($49.b),Y		; 11 49
	ora #$0545.w		; 09 45 05
	adc $03.b,S		; 63 03
	adc ($00.b,X)		; 61 00
	jsr $3000.w		; 20 00 30
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $71.b		; 00 71
	ora $0B3C05.l		; 0F 05 3C 0B
	clc		; 18
	ora $18.b,S		; 03 18
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	sta $83.b,S		; 83 83
	adc ($72.b)		; 72 72
	tas		; 1B
	clc		; 18
	ora [$00.b]		; 07 00
	ora $1CF308.l		; 0F 08 F3 1C
	sbc $6E9130.l,X		; FF 30 91 6E
	sty $FF.b		; 84 FF
	lsr $7F.b		; 46 7F
	cmp $3DA373.l		; CF 73 A3 3D
	sbc $3E.b		; E5 3E
	plp		; 28
	sec		; 38
	bvc 112.b		; 50 70
	stx $4F80.w		; 8E 80 4F
	rti		; 40

	lda $20A320.l		; AF 20 A3 20
	cmp $D610.w,X		; DD 10 D6
	bpl -79.b		; 10 B1
	adc $CD3DDA.l,X		; 7F DA 3D CD
	rol $1FE6.w,X		; 3E E6 1F
	adc ($8F.b,S),Y		; 73 8F
	and $BCC7.w,Y		; 39 C7 BC
	cmp $DB.b,S		; C3 DB
	cpx #$007F.w		; E0 7F 00
	and $3E00.w,X		; 3D 00 3E
	brk $1F.b		; 00 1F
	brk $8F.b		; 00 8F
	brk $C7.b		; 00 C7
	brk $C3.b		; 00 C3
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	cpy #$60BF.w		; C0 BF 60
	eor [$B8.b],Y		; 57 B8
	lda $02DE.w		; AD DE 02
	.db $82, $01, $81		; 82 01 81
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	brk $B8.b		; 00 B8
	brk $DE.b		; 00 DE
	brk $11.b		; 00 11
	and ($80.b)		; 32 80
	ora $0CC0.w,Y		; 19 C0 0C
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $32.b		; 00 32
	brk $19.b		; 00 19
	brk $8C.b		; 00 8C
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	asl $0B.b		; 06 0B
	tsb $0B.b		; 04 0B
	ora $0E.b		; 05 0E
	tsb $0D16.w		; 0C 16 0D
	asl $1D0E.w,X		; 1E 0E 1D
	asl A		; 0A
	bit $3E19.w,X		; 3C 19 3E
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0E.b		; 00 0E
	brk $17.b		; 00 17
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	brk $3D.b		; 00 3D
	ora ($3E.b,X)		; 01 3E
	brk $32.b		; 00 32
	cmp $D926.w,X		; DD 26 D9
	rtl		; 6B

	sty $A9.b,X		; 94 A9
	rol $91.b		; 26 91
	stx $78.b		; 86 78
	sbc ($7E.b,S),Y		; F3 7E
	cmp $9A.b,S		; C3 9A
	phk		; 4B
	cmp $D900.w,X		; DD 00 D9
	brk $80.b		; 00 80
	brk $74.b		; 00 74
	bit $6C.b,X		; 34 6C
	tsb $808C.w		; 0C 8C 80
	bit $7400.w,X		; 3C 00 74
	mvp $0C,$C7		; 44 C7 0C
	sta $301F18.l		; 8F 18 1F 30
	tsa		; 3B
	adc [$7B.b]		; 67 7B
	cmp [$EC.b]		; C7 EC
	sta $C43FCE.l,X		; 9F CE 3F C4
	and $083E04.l,X		; 3F 04 3E 08
	ror $FE10.w,X		; 7E 10 FE
	jsr $45FF.w		; 20 FF 45
	sbc $07FC83.l,X		; FF 83 FC 07
	inc $C407.w		; EE 07 C4
	iny		; C8
	bmi  -8.b		; 30 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$F0C0.w		; C0 C0 F0
	bmi  -4.b		; 30 FC
	bra -68.b		; 80 BC
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $FC.b		; 00 FC
	brk $3B.b		; 00 3B
	sty $68B7.w		; 8C B7 68
	sbc [$14.b],Y		; F7 14
	sbc $00FF08.l,X		; FF 08 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $CD0100.l,X		; FF 00 01 CD
	ldx #$94EA.w		; A2 EA 94
	stz $ACAC.w		; 9C AC AC
	bit $24.b		; 24 24
	ora ($12.b)		; 12 12
	ora ($12.b)		; 12 12
	ora ($11.b),Y		; 11 11
	cmp ($1D.b)		; D2 1D
	cmp ($1C.b,S),Y		; D3 1C
	xba		; EB
	tsb $0DEA.w		; 0C EA 0D
	nop		; EA
	ora $1DD2.w		; 0D D2 1D
	sbc $3D.b,S		; E3 3D
	cmp [$39.b]		; C7 39
	cpx $05.b		; E4 05
	inx		; E8
	ora #$80F0.w		; 09 F0 80
	sbc ($80.b),Y		; F1 80
	sbc ($80.b),Y		; F1 80
	adc #$5908.w		; 69 08 59
	cli		; 58
	adc ($70.b),Y		; 71 70
	asl $1B.b		; 06 1B
	asl $0E13.w		; 0E 13 0E
	ora ($14.b,S),Y		; 13 14
	cop $14.b		; 02 14
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora [$87.b],Y		; 17 87
	jmp $18AF.w		; 4C AF 18
	sta $203F20.l		; 8F 20 3F 20
	adc $80FFC0.l		; 6F C0 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	mvp $09,$3F		; 44 3F 09
	eor $247E02.l,X		; 5F 02 7E 24
	cpx $49.b		; E4 49
	cmp $F191.w,Y		; D9 91 F1
	jsl $424262.l		; 22 62 42 42
	dey		; 88
	and $E8.b,S		; 23 E8
	bit $0B.b		; 24 0B
	pld		; 2B
	cop $36.b		; 02 36
	rol $10.b,X		; 36 10
	asl $06.b,X		; 16 06
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $AD.b		; 00 AD
	jsl $2F07FE.l		; 22 FE 07 2F
	cop $36.b		; 02 36
	bpl  54.b		; 10 36
	tsb $16.b		; 04 16
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	bcc -120.b		; 90 88
	bpl   0.b		; 10 00
	clc		; 18
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $6060.w		; 20 60 60
	cpx #$40E0.w		; E0 E0 40
	rti		; 40

	rti		; 40

	cld		; D8
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	bpl  48.b		; 10 30
	brk $60.b		; 00 60
	jsr $60E0.w		; 20 E0 60
	cpx #$4040.w		; E0 40 40
	ora ($08.b,X)		; 01 08
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
	brk $87.b		; 00 87
	tsb $0CC1.w		; 0C C1 0C
	ora $46.b,S		; 03 46
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	eor ($00.b,X)		; 41 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $1F.b,S		; C3 1F
	inc $19.b,X		; F6 19
	sbc $0C.b,S		; E3 0C
	sbc [$08.b],Y		; F7 08
	xce		; FB
	tsb $0570.w		; 0C 70 05
	beq -124.b		; F0 84
	sec		; 38
	sty $F7.b		; 84 F7
	bpl -23.b		; 10 E9
	php		; 08
	jsr ($F808.w,X)		; FC 08 F8
	php		; 08
	beq   0.b		; F0 00
	sbc $7800.w,Y		; F9 00 78
	brk $F8.b		; 00 F8
	bra -20.b		; 80 EC
	bvs  27.b		; 70 1B
	jsr ($609F.w,X)		; FC 9F 60
	rts		; 60

	clc		; 18
	clc		; 18
	tsb $84.b		; 04 84
	cop $42.b		; 02 42
	sta ($01.b,X)		; 81 01
	brk $70.b		; 00 70
	brk $FC.b		; 00 FC
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	cpx #$F8E7.w		; E0 E7 F8
	sbc $4E78.w,X		; FD 78 4E
	ldy $CE33.w,X		; BC 33 CE
	bne -31.b		; D0 E1
	inx		; E8
	beq 116.b		; F0 74
	sed		; F8
	cpx #$F800.w		; E0 00 F8
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	brk $CE.b		; 00 CE
	brk $E1.b		; 00 E1
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $9F.b		; 00 9F
	brk $87.b		; 00 87
	brk $83.b		; 00 83
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($7E.b),Y		; 11 7E
	and $7C.b,S		; 23 7C
	eor $80FFF0.l		; 4F F0 FF 80
	ora [$F8.b]		; 07 F8
	phy		; 5A
	cmp $64.b		; C5 64
	phd		; 0B
	cpy $1B.b		; C4 1B
	ror $7C00.w,X		; 7E 00 7C
	brk $F0.b		; 00 F0
	brk $8C.b		; 00 8C
	tsb $3AFA.w		; 0C FA 3A
	and $FA05.w,X		; 3D 05 FA
	asl A		; 0A
	sbc ($12.b)		; F2 12
	cmp $A322.w		; CD 22 A3
	jmp $FA20DF.l		; 5C DF 20 FA
	clc		; 18
	pea $3C00.w		; F4 00 3C
	cmp ($15.b),Y		; D1 15
	sbc ($61.b),Y		; F1 61
	cpx $3E.b		; E4 3E
	jsl $000C0C.l		; 22 0C 0C 00
	brk $04.b		; 00 04
	ora ($0C.b,X)		; 01 0C
	ora $D4.b,S		; 03 D4
	cmp ($01.b,S),Y		; D3 01
	tas		; 1B
	rti		; 40

	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	tsb $0C.b		; 04 0C
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $1F.b		; 02 1F
	brk $3F.b		; 00 3F
	php		; 08
	ror $2000.w,X		; 7E 00 20
	bmi  32.b		; 30 20
	ldy #$0000.w		; A0 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	jsr $00F8.w		; 20 F8 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora [$0C.b]		; 07 0C
	asl $0018.w		; 0E 18 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $041F02.l		; 0F 02 1F 04
	and $001E08.l,X		; 3F 08 1E 00
	jsr $2070.w		; 20 70 20
	bvs -64.b		; 70 C0
	beq -112.b		; F0 90
	cpx #$8020.w		; E0 20 80
	brk $40.b		; 00 40
	cpy #$C0C0.w		; C0 C0 C0
	brk $FC.b		; 00 FC
	jsr $00F8.w		; 20 F8 00
	beq -112.b		; F0 90
	beq  32.b		; F0 20
	cpx #$8000.w		; E0 00 80
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	ora $0D.b		; 05 0D
	ora $1D19.w		; 0D 19 1D
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $051F03.l		; 0F 03 1F 05
	and $117F09.l,X		; 3F 09 7F 11
	sbc $B6251D.l,X		; FF 1D 25 B6
	stx $CC4C.w		; 8E 4C CC
	inx		; E8
	inx		; E8
	rts		; 60

	cpx #$C0C0.w		; E0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra   5.b		; 80 05
	sbc $FE86.w,X		; FD 86 FE
	jmp $C8EC.w		; 4C EC C8
	sed		; F8
	rti		; 40

	beq -64.b		; F0 C0
	beq -128.b		; F0 80
	cpx #$E000.w		; E0 00 E0
	jmp $E03F.w		; 4C 3F E0
	ora $FD56A9.l,X		; 1F A9 56 FD
	rol A		; 2A
	sbc $00FE14.l,X		; FF 14 FE 00
	inc $FE00.w,X		; FE 00 FE
	brk $02.b		; 00 02
	.db $42, $0C		; 42 0C
	jmp $4000.w		; 4C 00 40
	php		; 08
	rol A		; 2A
	bpl  20.b		; 10 14
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
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

	rti		; 40

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	sec		; 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	.db $62, $1C, $63		; 62 1C 63
	trb $0E63.w		; 1C 63 0E
	adc $06.b,S		; 63 06
	adc $80.b,S		; 63 80
	adc $84.b,S		; 63 84
	adc [$5C.b]		; 67 5C
	rti		; 40

	asl $3E02.w,X		; 1E 02 3E
	jsl $3C223E.l		; 22 3E 22 3C
	jsr $203C.w		; 20 3C 20
	asl $1A02.w,X		; 1E 02 1A
	cop $DD.b		; 02 DD
	rol $031C.w,X		; 3E 1C 03
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0300.w,X		; 3E 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
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
	brk $70.b		; 00 70
	rts		; 60

	cpy #$E0.b		; C0 E0
	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bmi -64.b		; 30 C0
	bcc -32.b		; 90 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora $0C.b		; 05 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
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
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	asl $08.b		; 06 08
	brk $0A.b		; 00 0A
	cop $01.b		; 02 01
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	tsb $04.b		; 04 04
	asl $0800.w		; 0E 00 08
	cop $0B.b		; 02 0B
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	ldy #$10.b		; A0 10
	adc $6C.b,S		; 63 6C
	ora [$0A.b]		; 07 0A
	ora ($1B.b),Y		; 11 1B
	ora ($13.b,S),Y		; 13 13
	bra  96.b		; 80 60
	ora #$88.b		; 09 88
	brk $28.b		; 00 28
	brk $F5.b		; 00 F5
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	ora $15.b		; 05 15
	asl $1E7F.w,X		; 1E 7F 1E
	dec $ED64.w,X		; DE 64 ED
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $02.b		; 05 02
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $8110.w		; EE 10 81
	inc $FFD9.w,X		; FE D9 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	inc $FF00.w,X		; FE 00 FF
	brk $90.b		; 00 90
	inx		; E8
	cpy #$F8.b		; C0 F8
	bvc -24.b		; 50 E8
	bcc -24.b		; 90 E8
	bmi -56.b		; 30 C8
	cpx #$10.b		; E0 10
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	inx		; E8
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $C8.b		; 00 C8
	brk $10.b		; 00 10
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $020001.l		; 0F 01 00 02
	ora ($01.b,X)		; 01 01
	ora $05.b,S		; 03 05
	ora $04.b,S		; 03 04
	ora $F1.b,S		; 03 F1
	ora $3F38CB.l		; 0F CB 38 3F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $82.b		; 00 82
	.db $82, $17, $10		; 82 17 10
	ora $FEC9C0.l,X		; 1F C0 C9 FE
	sta [$F8.b],Y		; 97 F8
	sta $F00FE0.l,X		; 9F E0 0F F0
	and [$F8.b],Y		; 37 F8
	ror A		; 6A
	ora $09EA.w		; 0D EA 09
	lda [$3E.b]		; A7 3E
	inc $F800.w,X		; FE 00 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$F1.b		; C0 F1
	ora ($F1.b,X)		; 01 F1
	ora $D4.b		; 05 D4
	asl $0C.b,X		; 16 0C
	brk $F9.b		; 00 F9
	tsb $7E.b		; 04 7E
	ora $7367.w,Y		; 19 67 73
	lda [$A3.b]		; A7 A3
	sta ($03.b,X)		; 81 03
	sta $81.b,S		; 83 81
	.db $82, $01, $00		; 82 01 00
	and [$00.b],Y		; 37 00
	sbc $63F801.l,X		; FF 01 F8 63
	sed		; F8
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora ($80.b,X)		; 01 80
	ora ($80.b,X)		; 01 80
	sta $1C.b,S		; 83 1C
	eor [$38.b]		; 47 38
	and $E01FD0.l		; 2F D0 1F E0
	sta $C03FE0.l,X		; 9F E0 3F C0
	and $C0BFC0.l,X		; 3F C0 BF C0
	brk $E0.b		; 00 E0
	ora ($01.b,X)		; 01 01
	rep #$02		; C2 02
	cpx $04.b		; E4 04
	cpx $04.b		; E4 04
	iny		; C8
	php		; 08
	cmp #$09.b		; C9 09
	cmp ($11.b),Y		; D1 11
	ror $0F.b,X		; 76 0F
	dec $3F27.w,X		; DE 27 3F
	cmp [$3E.b]		; C7 3E
	cmp ($FC.b,X)		; C1 FC
	ora $7F.b,S		; 03 7F
	.db $82, $7F, $82		; 82 7F 82
	adc $EE0080.l,X		; 7F 80 00 EE
	asl $16.b,X		; 16 16
	and [$27.b]		; 27 27
	tsb $04.b		; 04 04
	ora $651D.w,X		; 1D 1D 65
	cpx $05.b		; E4 05
	sty $03.b		; 84 03
	.db $82, $F8, $67		; 82 F8 67
	.db $62, $DE, $8B		; 62 DE 8B
	sei		; 78
	rol $BDE0.w		; 2E E0 BD
	sta ($FA.b,X)		; 81 FA
	ora $F4.b,S		; 03 F4
	ora [$E9.b]		; 07 E9
	asl $6161.w		; 0E 61 61
	eor $44.b		; 45 44
	ora [$10.b],Y		; 17 10
	eor $007E40.l,X		; 5F 40 7E 00
	sbc $FA01.w,X		; FD 01 FA
	cop $F4.b		; 02 F4
	tsb $FC.b		; 04 FC
	ora $FB.b,S		; 03 FB
	ora [$F0.b]		; 07 F0
	ora $C11FEF.l		; 0F EF 1F C1
	and $63A35C.l,X		; 3F 5C A3 63
	stz $DF2E.w		; 9C 2E DF
	ora [$14.b],Y		; 17 14
	ora $303F18.l,X		; 1F 18 3F 30
	adc $80BF60.l,X		; 7F 60 BF 80
	and $00.b,S		; 23 00
	trb $9F00.w		; 1C 00 9F
	bra  25.b		; 80 19
	sbc [$C6.b]		; E7 C6
	sbc $FC3B.w,Y		; F9 3B FC
	rol $DF.b		; 26 DF
	cmp ($EF.b),Y		; D1 EF
	bvs  -1.b		; 70 FF
	ora $CCFE.w,Y		; 19 FE CC
	and $F900E7.l,X		; 3F E7 00 F9
	brk $FC.b		; 00 FC
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	ora $3F.b,S		; 03 3F
	cop $DF.b		; 02 DF
.ACCU 16
	rep #$27		; C2 27
.ACCU 8
	sep #$65		; E2 65
	txy		; 9B
	inc $09.b,X		; F6 09
	sbc $0200.w,X		; FD 00 02
	brk $FA.b		; 00 FA
	ora $FA.b,S		; 03 FA
	cop $3A.b		; 02 3A
	cop $98.b		; 02 98
	.db $82, $18, $1B		; 82 18 1B
	php		; 08
	phd		; 0B
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	bra -128.b		; 80 80
	cpx #$00.b		; E0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra  96.b		; 80 60
	rts		; 60

	clc		; 18
	clc		; 18
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora [$06.b]		; 07 06
	tsb $00.b		; 04 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $07.b		; 06 07
	brk $04.b		; 00 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$64.b]		; E7 64
	.db $42, $C2		; 42 C2
	eor ($02.b,X)		; 41 02
	stx $B88E.w		; 8E 8E B8
	sed		; F8
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	sbc [$40.b]		; E7 40
	cmp $00.b,S		; C3 00
	eor $88BE02.l		; 4F 02 BE 88
	sed		; F8
	cli		; 58
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E03.w		; 0E 03 0E
	ora $1C.b,S		; 03 1C
	ora $1D.b,S		; 03 1D
	asl A		; 0A
	bit $511A.w		; 2C 1A 51
	rol $7DA2.w,X		; 3E A2 7D
	dec $7C.b		; C6 7C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl A		; 0A
	brk $1B.b		; 00 1B
	brk $3F.b		; 00 3F
	brk $7C.b		; 00 7C
	brk $7D.b		; 00 7D
	ora ($B8.b,X)		; 01 B8
	sbc $26DD32.l,X		; FF 32 DD 26
	cmp $946B.w,Y		; D9 6B 94
	lda #$26.b		; A9 26
	sta ($86.b),Y		; 91 86
	sei		; 78
	sbc ($7E.b,S),Y		; F3 7E
	cmp $FF.b,S		; C3 FF
	brk $DD.b		; 00 DD
	brk $D9.b		; 00 D9
	brk $80.b		; 00 80
	brk $74.b		; 00 74
	bit $6C.b,X		; 34 6C
	tsb $808C.w		; 0C 8C 80
	bit $8000.w,X		; 3C 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	ora $C3.b,S		; 03 C3
	ora $1E1E0F.l		; 0F 0F 1E 1E
	cmp $626D.w,Y		; D9 6D 62
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora $3F.b,S		; 03 3F
	asl $18FF.w		; 0E FF 18
	sbc $06EE60.l,X		; FF 60 EE 06
	asl $06.b		; 06 06
	bit $F939.w,X		; 3C 39 F9
	xce		; FB
	sbc [$F6.b]		; E7 F6
	stx $1CFC.w		; 8E FC 1C
	ply		; 7A
	cld		; D8
	sbc $3F02E0.l,X		; FF E0 02 3F
	tsb $FF.b		; 04 FF
	and $E2FB.w,Y		; 39 FB E2
	sbc $00FF84.l,X		; FF 84 FF 00
	inc $DC18.w,X		; FE 18 DC
	rts		; 60

	cpx #$54.b		; E0 54
	sta $CFA0.w		; 8D A0 CF
	bne -29.b		; D0 E3
	cpx $7FF0.w		; EC F0 7F
	sbc $033F0F.l,X		; FF 0F 3F 03
	ora $0D.b,S		; 03 0D
	ora ($0B.b,X)		; 01 0B
	sbc #$03.b		; E9 03
	beq -125.b		; F0 83
	jsr ($FFC0.w,X)		; FC C0 FF
	adc [$FF.b]		; 67 FF
	ora $1F037F.l		; 0F 7F 03 1F
	brk $03.b		; 00 03
	ora ($E3.b,S),Y		; 13 E3
	phd		; 0B
	sbc ($3C.b),Y		; F1 3C
	cpy #$20.b		; C0 20
	ora $EFE1.w,Y		; 19 E1 EF
	sbc [$D6.b],Y		; F7 D6
	adc ($C4.b,S),Y		; 73 C4
	ora ($C6.b,X)		; 01 C6
	.db $62, $0F, $F1		; 62 0F F1
	ora [$C0.b]		; 07 C0
	ora $00.b,S		; 03 00
	cmp [$E1.b]		; C7 E1
	sbc $40FFD6.l,X		; FF D6 FF 40
	plx		; FA
	brk $F8.b		; 00 F8
	ora ($80.b,X)		; 01 80
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
	lda $C07FC0.l,X		; BF C0 7F C0
	eor $60BFE0.l,X		; 5F E0 BF 60
	lda $721D70.l		; AF 70 1D 72
	eor $5C32.w,X		; 5D 32 5C
	and ($D2.b,S),Y		; 33 D2
	ora ($CA.b)		; 12 CA
	asl A		; 0A
	inc $06.b		; E6 06
	adc $03.b,S		; 63 03
	bvs   0.b		; 70 00
	adc ($00.b)		; 72 00
	and ($00.b)		; 32 00
	and ($00.b,S),Y		; 33 00
	sbc $807E00.l,X		; FF 00 7E 80
	sbc $01FE01.l,X		; FF 01 FE 01
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($03.b,X)		; 01 03
	.db $82, $0F, $8E		; 82 0F 8E
	sbc ($F2.b)		; F2 F2
	ora $03.b,S		; 03 03
	.db $82, $82, $42		; 82 82 42
	.db $42, $22		; 42 22
	jsl $932223.l		; 22 23 22 93
	trb $7867.w		; 1C 67 78
	dey		; 88
	sbc [$30.b],Y		; F7 30
	cmp $BF3FDE.l		; CF DE 3F BF
	adc $66FF38.l,X		; 7F 38 FF 66
	sta $9008E8.l,X		; 9F E8 08 90
	bpl  71.b		; 10 47
	rti		; 40

	ora $003F00.l		; 0F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sta $CFB300.l,X		; 9F 00 B3 CF
	asl $D361.w,X		; 1E 61 D3
	jmp ($30A8.w)		; 6C A8 30
	cmp $10FF10.l		; CF 10 FF 10
	cpx $09.b		; E4 09
	pea $0F08.w		; F4 08 0F
	brk $C1.b		; 00 C1
	rti		; 40

	ldy $C020.w		; AC 20 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F1.b		; 00 F1
	brk $F8.b		; 00 F8
	php		; 08
	ldx $CF.b,Y		; B6 CF
	sbc $C6F3.w		; ED F3 C6
	and $047B.w,Y		; 39 7B 04
	ora $008300.l		; 0F 00 83 00
	rti		; 40

	bra  32.b		; 80 20
	rti		; 40

	cmp $00F300.l		; CF 00 F3 00
	and $0400.w,Y		; 39 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	bra  60.b		; 80 3C
	cpy #$9E.b		; C0 9E
	cpx #$C2.b		; E0 C2
	sbc ($29.b),Y		; F1 29
	beq -108.b		; F0 94
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sbc ($00.b),Y		; F1 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
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
	brk $4E.b		; 00 4E
	sed		; F8
	and $32DFF4.l		; 2F F4 DF 32
	lda $6CC9.w,X		; BD C9 6C
	beq  26.b		; F0 1A
	jsr ($1EE5.w,X)		; FC E5 1E
	ply		; 7A
	sta [$F8.b]		; 87 F8
	brk $F4.b		; 00 F4
	brk $32.b		; 00 32
	brk $C9.b		; 00 C9
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $1E.b		; 00 1E
	brk $87.b		; 00 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $20.b		; 00 20
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
	brk $40.b		; 00 40
	rts		; 60

	bmi  48.b		; 30 30
	bmi -128.b		; 30 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	jsr $00F0.w		; 20 F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $9A.b		; 00 9A
	phk		; 4B
	cmp $A322.w		; CD 22 A3
	jmp $F720DF.l		; 5C DF 20 F7
	bpl  63.b		; 10 3F
	iny		; C8
	trb $00E0.w		; 1C E0 00
	sbc ($74.b)		; F2 74
	mvp $22,$3E		; 44 3E 22
	jmp $204C.w		; 4C 4C 20
	jsr $000C.w		; 20 0C 00
	cpy $C0.b		; C4 C0
	brk $03.b		; 00 03
	bra -113.b		; 80 8F
	sta $4F.b,S		; 83 4F
	ora [$3E.b]		; 07 3E
	ora $E27DF8.l,X		; 1F F8 7D E2
	sbc [$9B.b]		; E7 9B
	wai		; CB
	and [$3F.b],Y		; 37 3F
	ora [$4F.b]		; 07 4F
	and [$03.b]		; 27 03
	and $18FF06.l,X		; 3F 06 FF 18
	inc $FA60.w,X		; FE 60 FA
	bra -29.b		; 80 E3
	ora ($87.b,X)		; 01 87
	ora $C7.b,S		; 03 C7
	asl $F7.b		; 06 F7
	lda $1AEF17.l		; AF 17 EF 1A
	sbc $02FF05.l,X		; FF 05 FF 02
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	stx $FF.b		; 86 FF
	.db $62, $7F, $58		; 62 7F 58
	eor $945757.l,X		; 5F 57 57 94
	sty $92.b,X		; 94 92
	sta ($12.b)		; 92 12
	ora ($12.b)		; 12 12
	ora ($FF.b)		; 12 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  52.b		; 80 34
	cmp [$3A.b]		; C7 3A
	cmp $9D.b,S		; C3 9D
	eor ($11.b,X)		; 41 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($91.b),Y		; 11 91
	sta ($7F.b),Y		; 91 7F
	adc $7D427A.l,X		; 7F 7A 42 7D
	eor ($7E.b,X)		; 41 7E
	rti		; 40

	rol A		; 2A
	ora ($29.b),Y		; 11 29
	bpl   8.b		; 10 08
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $11.b		; 00 11
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	rts		; 60

	cmp $30DF20.l		; CF 20 DF 30
	sbc [$10.b]		; E7 10
	xba		; EB
	clc		; 18
	adc [$0C.b],Y		; 77 0C
	adc ($0C.b),Y		; 71 0C
	ply		; 7A
	asl $1F.b		; 06 1F
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	adc $3C03.w,X		; 7D 03 3C
	ora $3E.b,S		; 03 3E
	ora ($3F.b,X)		; 01 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	ora ($11.b)		; 12 11
	ora ($18.b),Y		; 11 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sei		; 78
	tsb $84B0.w		; 0C B0 84
	cli		; 58
	cpy #$3C.b		; C0 3C
	cpx #$8C.b		; E0 8C
	rts		; 60

	cpy #$20.b		; C0 20
	cpx #$1C.b		; E0 1C
	bvs   8.b		; 70 08
	beq   0.b		; F0 00
	jmp ($BC04.w,X)		; 7C 04 BC
	bra  92.b		; 80 5C
	rti		; 40

	bit $1C20.w,X		; 3C 20 1C
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7B.b,S		; 03 7B
	tda		; 7B
	sbc $38FC.w,X		; FD FC 38
	bit $B8B0.w,X		; 3C B0 B8
	rts		; 60

	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	adc $B8FF7B.l,X		; 7F 7B FF B8
	sbc $A0FE30.l,X		; FF 30 FE A0
	jsr ($F800.w,X)		; FC 00 F8
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	cpy $82B0.w		; CC B0 82
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $3D3C0F.l,X		; 1F 0F 3C 3D
	sbc ($F4.b),Y		; F1 F4
	cpy $0000.w		; CC 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	cop $7F.b		; 02 7F
	tsb $31FF.w		; 0C FF 31
	sbc $FCC4.w,X		; FD C4 FC
	dec $280E.w		; CE 0E 28
	pla		; 68
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $28CE.w		; 0E CE 28
	pla		; 68
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $C1.b		; 26 C1
	bpl -32.b		; 10 E0
	cpy $3F30.w		; CC 30 3F
	brk $83.b		; 00 83
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $C1.b		; 00 C1
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
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
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$30.b		; C0 30
	bmi  12.b		; 30 0C
	tsb $0202.w		; 0C 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $0B.b		; 02 0B
	php		; 08
	bit $F03C.w,X		; 3C 3C F0
	beq -64.b		; F0 C0
	cpy #$00.b		; C0 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	cop $17.b		; 02 17
	cop $7F.b		; 02 7F
	php		; 08
	jsr ($FC30.w,X)		; FC 30 FC
	cpy #$F0.b		; C0 F0
	brk $C0.b		; 00 C0
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0D00.w		; 0E 00 0D
	ora ($0B.b,X)		; 01 0B
	ora $09.b,S		; 03 09
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	ora $08.b		; 05 08
	phd		; 0B
	phd		; 0B
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	brk $05.b		; 00 05
	asl $07.b		; 06 07
	ora [$24.b],Y		; 17 24
	bit $10.b,X		; 34 10
	bcc -64.b		; 90 C0
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	ora [$00.b]		; 07 00
	ora $043F02.l		; 0F 02 3F 04
	sbc $C0F810.l,X		; FF 10 F8 C0
	bne   0.b		; D0 00
	cpy #$80.b		; C0 80
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$20.b		; C0 20
	jsr $1818.w		; 20 18 18
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FE.b		; 00 FE
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bmi  48.b		; 30 30
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	ora $05.b		; 05 05
	ror $B0BA.w,X		; 7E BA B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	ora $7F.b		; 05 7F
	tsb $FF.b		; 04 FF
	bcs  -6.b		; B0 FA
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $0D.b,S		; 03 0D
	ora $F17F7E.l		; 0F 7E 7F F1
	plx		; FA
	txa		; 8A
	cpy $581C.w		; CC 1C 58
	cld		; D8
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora ($7F.b,X)		; 01 7F
	asl $71FF.w		; 0E FF 71
	sbc $0CFA8A.l,X		; FF 8A FA 0C
	jmp.w [$D858]		; DC 58 D8
	adc [$10.b]		; 67 10
	adc $087318.l		; 6F 18 73 08
	adc ($0C.b,S),Y		; 73 0C
	adc $7C04.w,Y		; 79 04 7C
	cop $7C.b		; 02 7C
	ora $3E.b,S		; 03 3E
	ora ($1F.b,X)		; 01 1F
	bpl   7.b		; 10 07
	brk $4F.b		; 00 4F
	pha		; 48
	eor [$44.b]		; 47 44
	eor ($50.b,S),Y		; 53 50
	phk		; 4B
	lsr A		; 4A
	and $25.b		; 25 25
	jsl $30E022.l		; 22 22 E0 30
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpx #$0C.b		; E0 0C
	sed		; F8
	tsb $0C78.w		; 0C 78 0C
	bmi -122.b		; 30 86
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	pea $FC04.w		; F4 04 FC
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $01.b,S		; 03 01
	asl $051B.w		; 0E 1B 05
	tas		; 1B
	ora [$3D.b]		; 07 3D
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	jsr $FC03.w		; 20 03 FC
	lda ($FF.b)		; B2 FF
	adc ($FF.b),Y		; 71 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $FC00.w		; 20 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3E.b		; 00 3E
	cmp ($9F.b,X)		; C1 9F
	cpx #$DF.b		; E0 DF
	rti		; 40

	cmp $D38C40.l		; CF 40 8C D3
	php		; 08
	cmp [$28.b],Y		; D7 28
	sta [$2C.b],Y		; 97 2C
	txy		; 9B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	bra  48.b		; 80 30
	eor $73.b,S		; 43 73
	tsb $34.b		; 04 34
	bra 112.b		; 80 70
	bra 120.b		; 80 78
	ply		; 7A
	cmp $B7.b		; C5 B7
	pla		; 68
	cmp $02FD30.l,X		; DF 30 FD 02
	sei		; 78
	sta [$28.b]		; 87 28
	cmp [$28.b]		; C7 28
	cmp [$30.b]		; C7 30
	cmp $85BD.w,Y		; D9 BD 85
	cli		; 58
	pha		; 48
	jsr $0220.w		; 20 20 02
	cop $84.b		; 02 84
	sty $54.b		; 84 54
	mvn $10,$10		; 54 10 10
	bpl  30.b		; 10 1E
	cmp $20DF10.l		; CF 10 DF 20
	adc $807F80.l,X		; 7F 80 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	asl A		; 0A
	rol A		; 2A
	ora ($12.b)		; 12 12
	sty $14.b,X		; 94 14
	lda $25.b		; A5 25
	and #$29.b		; 29 29
	eor #$49.b		; 49 49
	adc ($72.b)		; 72 72
	ora ($12.b)		; 12 12
	sbc $2EFF5C.l,X		; FF 5C FF 2E
	sbc $08FF14.l,X		; FF 14 FF 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	tsb $82FE.w		; 0C FE 82
	ldx $BCB4.w,Y		; BE B4 BC
	and #$29.b		; 29 29
	bit $24.b		; 24 24
	rol $26.b		; 26 26
	jsl $232322.l		; 22 22 23 23
	sta $0081.w,X		; 9D 81 00
	sbc $F638DC.l,X		; FF DC 38 F6
	tsb $C23F.w		; 0C 3F C2
	cmp $70EDE1.l,X		; DF E1 ED 70
	ror $18.b,X		; 76 18
	ror $0000.w,X		; 7E 00 00
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	brk $C2.b		; 00 C2
	brk $E1.b		; 00 E1
	brk $70.b		; 00 70
	brk $18.b		; 00 18
	brk $89.b		; 00 89
	inc $FF.b,X		; F6 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	ror $00.b,X		; 76 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	ora $FC.b,S		; 03 FC
	ora $FE.b,S		; 03 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	ora ($FC.b,X)		; 01 FC
	ora $04.b,S		; 03 04
	tsb $C5.b		; 04 C5
	cmp $33.b		; C5 33
	and ($0F.b)		; 32 0F
	asl $8283.w		; 0E 83 82
	eor $42.b,S		; 43 42
	jsl $1F1F22.l		; 22 22 1F 1F
	clc		; 18
	sbc [$06.b]		; E7 06
	sbc $3F38.w,Y		; F9 38 3F
	cmp [$07.b]		; C7 07
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $C05F00.l,X		; 7F 00 5F C0
	ora [$00.b]		; 07 00
	cmp ($C0.b,X)		; C1 C0
	dec $06.b		; C6 06
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	jsr $10C0.w		; 20 C0 10
	rts		; 60

	php		; 08
	bcs   8.b		; B0 08
	bra  67.b		; 80 43
	ora $1F.b,S		; 03 1F
	ora $8080FC.l,X		; 1F FC 80 80
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sei		; 78
	phd		; 0B
	rts		; 60

	eor $1CFF03.l,X		; 5F 03 FF 1C
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	ora $1B.b,S		; 03 1B
	tas		; 1B
	tas		; 1B
	cli		; 58
	jmp $81E0E0.l		; 5C E0 E0 81
	cmp $0F.b,S		; C3 0F
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $17.b		; 00 17
	ora $DF.b,S		; 03 DF
	clc		; 18
	sbc $80FD40.l,X		; FF 40 FD 80
	sbc [$03.b]		; E7 03
	sbc $80C1D1.l,X		; FF D1 C1 80
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	sbc ($80.b),Y		; F1 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	brk $19.b		; 00 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	dec $00.b		; C6 00
	inc $98.b		; E6 98
	ror $7C00.w,X		; 7E 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($3C44.w,X)		; 7C 44 3C
	bit $04.b		; 24 04
	tsb $18.b		; 04 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $47B827.l		; 5C 27 B8 47
	ply		; 7A
	lda $61.b,X		; B5 61
	jsr ($7DCB.w,X)		; FC CB 7D
	stz $9CFB.w		; 9C FB 9C
	sbc ($7E.b),Y		; F1 7E
	sta ($27.b,X)		; 81 27
	brk $47.b		; 00 47
	brk $B5.b		; 00 B5
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $F9.b		; 00 F9
	ora ($F2.b,X)		; 01 F2
	cop $80.b		; 02 80
	brk $65.b		; 00 65
	tyx		; BB
	jmp $D7B3.w		; 4C B3 D7
	and #$52.b		; 29 52
	eor $0C23.w		; 4D 23 0C
	sbc ($E6.b),Y		; F1 E6
	sbc $7586.w,X		; FD 86 75
	stx $BB.b,Y		; 96 BB
	brk $B3.b		; 00 B3
	brk $01.b		; 00 01
	brk $E9.b		; 00 E9
	pla		; 68
	cld		; D8
	clc		; 18
	clc		; 18
	brk $78.b		; 00 78
	brk $E8.b		; 00 E8
	dey		; 88
	rol $5ED9.w		; 2E D9 5E
	sta $A840.w		; 8D 40 A8
	bra  71.b		; 80 47
	sta [$1F.b]		; 87 1F
	ora $A1BEBC.l,X		; 1F BC BE A1
	adc $38C010.l		; 6F 10 C0 38
	sty $3C.b		; 84 3C
	ldy #$3F.b		; A0 3F
	rti		; 40

	adc $1C7F07.l,X		; 7F 07 7F 1C
	sbc $00FFA0.l,X		; FF A0 FF 00
	lda ($20.b,X)		; A1 20
	cmp $03.b,S		; C3 03
	tas		; 1B
	tas		; 1B
	sed		; F8
	jsr ($E0E3.w,X)		; FC E3 E0
	tas		; 1B
	txs		; 9A
	adc $7E3D.w,X		; 7D 3D 7E
	sbc $00BE.w,X		; FD BE 00
	ora $18FF03.l,X		; 1F 03 FF 18
	sbc $00FCE0.l,X		; FF E0 FC 00
	jsr ($FC18.w,X)		; FC 18 FC
	bit $1CFE.w,X		; 3C FE 1C
	sbc $3F007F.l,X		; FF 7F 00 3F
	brk $BF.b		; 00 BF
	brk $1F.b		; 00 1F
	brk $0D.b		; 00 0D
	cop $06.b		; 02 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $12.b		; 00 12
	ora ($0E.b)		; 12 0E
	asl $0202.w		; 0E 02 02
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $602E41.l		; 8F 41 2E 60
	eor $305F20.l		; 4F 20 5F 30
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	sbc ($F1.b),Y		; F1 F1
	rol $1F0E.w,X		; 3E 0E 1F
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	inc A		; 1A
	tsb $028D.w		; 0C 8D 02
	cmp $00.b,S		; C3 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $FC.b		; 00 FC
	ora $F8.b,S		; 03 F8
	ora [$F1.b]		; 07 F1
	ora $0119E6.l		; 0F E6 19 01
	inc $FF87.w,X		; FE 87 FF
	eor $308060.l,X		; 5F 60 80 30
	tsb $0F0C.w		; 0C 0C 0F
	php		; 08
	sta $E0F990.l,X		; 9F 90 F9 E0
	ldx $5F80.w,Y		; BE 80 5F
	rti		; 40

	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	ora ($FF.b,X)		; 01 FF
	asl $E7E1.w,X		; 1E E1 E7
	sed		; F8
	jmp ($EFFF.w,X)		; 7C FF EF
	ora $E7E19F.l,X		; 1F 9F E1 E7
	sed		; F8
	sed		; F8
	asl $0606.w,X		; 1E 06 06
	sbc ($00.b,X)		; E1 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $E1.b		; 00 E1
	brk $F8.b		; 00 F8
	brk $1E.b		; 00 1E
	brk $7E.b		; 00 7E
	rts		; 60

	adc $1F.b,S		; 63 1F
	ora ($AF.b,S),Y		; 13 AF
	adc $3FF1BF.l,X		; 7F BF F1 3F
	inc $FF11.w,X		; FE 11 FF
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	sbc $09FF00.l,X		; FF 00 FF 09
	adc ($0F.b,S),Y		; 73 0F
	and ($3F.b,S),Y		; 33 3F
	bmi  -7.b		; 30 F9
	sed		; F8
	tsb $04.b		; 04 04
	sed		; F8
	sed		; F8
	adc [$CF.b],Y		; 77 CF
	tda		; 7B
	sbc $BC.b,S		; E3 BC
	rti		; 40

	bpl -32.b		; 10 E0
	cpy #$FC.b		; C0 FC
	brk $FF.b		; 00 FF
	stx $E37F.w		; 8E 7F E3
	ora $E0CF03.l,X		; 1F 03 CF E0
	adc [$70.b]		; 67 70
	and ($E0.b,S),Y		; 33 E0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($1F.b,X)		; 01 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	ora $1212.w		; 0D 12 12
	and $223D.w,X		; 3D 3D 22
	jsl $0D070E.l		; 22 0E 07 0D
	asl $1D.b		; 06 1D
	asl A		; 0A
	trb $8E0B.w		; 1C 0B 8E
	bra 127.b		; 80 7F
	cpy #$3F.b		; C0 3F
	cpx #$98.b		; E0 98
	sei		; 78
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl A		; 0A
	brk $08.b		; 00 08
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	bra  95.b		; 80 5F
	rti		; 40

	and [$20.b]		; 27 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ora ($77.b,X)		; 01 77
	ora $40.b		; 05 40
	rti		; 40

	sta ($21.b,X)		; 81 21
	sta ($01.b,X)		; 81 01
	ora #$07.b		; 09 07
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $3F.b		; 00 3F
	brk $77.b		; 00 77
	rti		; 40

	eor ($00.b,X)		; 41 00
	lda ($01.b,X)		; A1 01
	sta [$01.b]		; 87 01
	ora $070B.w,X		; 1D 0B 07
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	and [$00.b]		; 27 00
	rol $E0.b,X		; 36 E0
	phy		; 5A
	ldx #$3A.b		; A2 3A
	dec A		; 3A
	sec		; 38
	bmi   1.b		; 30 01
	ora $000700.l		; 0F 00 07 00
	sta $00.b,S		; 83 00
	lda $02FF00.l		; AF 00 FF 02
	adc $E0FFF0.l,X		; 7F F0 FF E0
	jsr ($F080.w,X)		; FC 80 F0
	ldy #$D0.b		; A0 D0
	jsr $60D0.w		; 20 D0 60
	bcc -64.b		; 90 C0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq   0.b		; F0 00
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	bcc   0.b		; 90 00
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
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $0B1C00.l,X		; 1F 00 1C 0B
	tda		; 7B
	adc $F0F1.w,X		; 7D F1 F0
	sta [$83.b]		; 87 83
	tsb $3C18.w		; 0C 18 3C
	pea $E0F8.w		; F4 F8 E0
	beq   0.b		; F0 00
	adc $71FF0B.l,X		; 7F 0B FF 71
	sbc $00FF80.l,X		; FF 80 FF 00
	lda $E0FF10.l,X		; BF 10 FF E0
	jsr ($F8C0.w,X)		; FC C0 F8
	cpy #$E0.b		; C0 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	ldy #$C0.b		; A0 C0
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bne -32.b		; D0 E0
	bit $77F0.w		; 2C F0 77
	dey		; 88
	bra  -1.b		; 80 FF
	ora $00.b,S		; 03 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00E000.l,X		; FF 00 E0 00
	beq   0.b		; F0 00
	php		; 08
	brk $78.b		; 00 78
	sei		; 78
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc [$03.b],Y		; F7 03
	sbc $0CDF06.l		; EF 06 DF 0C
	sta $00000C.l,X		; 9F 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $F87F.w,X		; 7E 7F F8
	ora $F6.b,S		; 03 F6
	asl $EC.b		; 06 EC
	tsb $0CE0.w		; 0C E0 0C
	asl $0707.w,X		; 1E 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra 127.b		; 80 7F
	adc $000101.l,X		; 7F 01 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $07.b		; 05 07
	rol $36.b		; 26 36
	bmi -80.b		; 30 B0
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	asl $FF.b		; 06 FF
	jsr $80F6.w		; 20 F6 80
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	beq   0.b		; F0 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$7C.b		; C0 7C
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1C3F1C.l,X		; 3F 1C 3F 1C
	asl $1C3C.w,X		; 1E 3C 1C
	rol $1E3E.w,X		; 3E 3E 1E
	rol $1F1E.w		; 2E 1E 1F
	ora $190F17.l		; 0F 17 0F 19
	ora $3E18.w,X		; 1D 18 3E
	clc		; 18
	and $0C3F0C.l,X		; 3F 0C 3F 0C
	and $063F0E.l,X		; 3F 0E 3F 06
	ora $981F03.l,X		; 1F 03 1F 98
	adc [$1B.b]		; 67 1B
	and $367F37.l,X		; 3F 37 7F 36
	adc $6D7F24.l,X		; 7F 24 7F 6D
	rol $6D.b,X		; 36 6D
	rol $4D.b,X		; 36 4D
	rol $00.b,X		; 36 00
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	bra  54.b		; 80 36
	bra  48.b		; 80 30
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
	brk $18.b		; 00 18
	php		; 08
	pha		; 48
	bvc  32.b		; 50 20
	bpl  80.b		; 10 50
	rti		; 40

	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D8.b		; C0 D8
	brk $58.b		; 00 58
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$0C.b		; E0 0C
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
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
	rti		; 40

	rts		; 60

	bmi  48.b		; 30 30
	bmi -128.b		; 30 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	jsr $00F8.w		; 20 F8 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  32.b		; 80 20
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $D0.b		; 00 D0
	brk $C9.b		; 00 C9
	jsl $468698.l		; 22 98 86 46
	inc $F3.b		; E6 F3
	sed		; F8
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sta $F0.b,S		; 83 F0
	ora $012EC0.l		; 0F C0 2E 01
	jsl $E70084.l		; 22 84 00 E7
	lsr $FF.b		; 46 FF
	cpx #$FF.b		; E0 FF
	cpx #$FD.b		; E0 FD
	bra  -4.b		; 80 FC
	brk $F0.b		; 00 F0
	ora ($C0.b,X)		; 01 C0
	ror $01.b		; 66 01
	ror $01.b		; 66 01
	jsl $001301.l		; 22 01 13 00
	ora ($00.b,X)		; 01 00
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
	ora $00.b,S		; 03 00
	ora ($06.b,X)		; 01 06
	ora $0C.b,S		; 03 0C
	asl $0B.b,X		; 16 0B
	and $0F7A07.l,X		; 3F 07 7A 0F
	clv		; B8
	eor $000000.l		; 4F 00 00 00
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $4F.b		; 00 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $B8.b		; 00 B8
	rti		; 40

	ora [$F8.b]		; 07 F8
	stz $FF.b		; 64 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	wai		; CB
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $77.b		; 00 77
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
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
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra -65.b		; 80 BF
	cpy #$BF.b		; C0 BF
	cpy #$9B.b		; C0 9B
	cpx $C8.b		; E4 C8
	adc [$C8.b],Y		; 77 C8
	adc [$CC.b],Y		; 77 CC
	and ($44.b,S),Y		; 33 44
	mvp $28,$A8		; 44 A8 28
	cmp $CD19.w,Y		; D9 19 CD
	ora $03E3.w		; 0D E3 03
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	ora $081C.w,X		; 1D 1C 08
	asl $1EDE.w,X		; 1E DE 1E
	cmp $1D15DF.l,X		; DF DF 15 1D
	bpl  21.b		; 10 15
	php		; 08
	asl A		; 0A
	ora [$00.b]		; 07 00
	php		; 08
	rol $FF00.w,X		; 3E 00 FF
	asl $0FFF.w		; 0E FF 0F
	sbc $00FF05.l,X		; FF 05 FF 00
	ora $000F00.l,X		; 1F 00 0F 00
	brk $86.b		; 00 86
	sei		; 78
	tsb $00B3.w		; 0C B3 00
	rts		; 60

	rti		; 40

	eor $FF9F1F.l,X		; 5F 1F 9F FF
	brk $E7.b		; 00 E7
	and $31EF.w,Y		; 39 EF 31
	sei		; 78
	ora ($B2.b,X)		; 01 B2
	.db $42, $20		; 42 20
	cmp $9FFF40.l,X		; DF 40 FF 9F
	adc $331F00.l,X		; 7F 00 1F 33
	and ($27.b,S),Y		; 33 27
	and [$7D.b]		; 27 7D
	sta $9E.b,S		; 83 9E
	cpx #$4E.b		; E0 4E
	adc ($2F.b),Y		; 71 2F
	beq -25.b		; F0 E7
	cld		; D8
	sbc ($DE.b,X)		; E1 DE
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	.db $42, $BC		; 42 BC
	bra -128.b		; 80 80
	eor ($60.b,X)		; 41 60
	bra  48.b		; 80 30
	bpl  48.b		; 10 30
	pha		; 48
	iny		; C8
	dec $C6.b		; C6 C6
	ora ($81.b,X)		; 01 81
	ora ($81.b,X)		; 01 81
	bra 120.b		; 80 78
	sei		; 78
	brk $38.b		; 00 38
	brk $B8.b		; 00 B8
	cpy #$8078.w		; C0 78 80
	jmp ($4C90.w)		; 6C 90 4C
	bmi  76.b		; 30 4C
	bmi  48.b		; 30 30
	bmi -128.b		; 30 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl -96.b		; 10 A0
	ldy #$8080.w		; A0 80 80
	dec $ED12.w,X		; DE 12 ED
	tsb $00F3.w		; 0C F3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $B39000.l,X		; FF 00 90 B3
	cpy $A0DE.w		; CC DE A0
	ldy $3131.w		; AC 31 31
	rol A		; 2A
	rol A		; 2A
	jmp $4A4C.w		; 4C 4C 4A
	lsr A		; 4A
	bit #$DF89.w		; 89 89 DF
	and $1BFF.w,Y		; 39 FF 1B
	sbc $03FE1B.l,X		; FF 1B FE 03
	inc $F200.w,X		; FE 00 F2
	ora $F4.b,S		; 03 F4
	ora [$F8.b]		; 07 F8
	ora $395940.l		; 0F 40 59 39
	tsa		; 3B
	xce		; FB
	xce		; FB
	jsr $9823.w		; 20 23 98
	sta ($5D.b),Y		; 91 5D
	eor ($3A.b),Y		; 51 3A
	and ($15.b)		; 32 15
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	tsb $08.b		; 04 08
	cop $04.b		; 02 04
	tsb $01.b		; 04 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	tsb $0C.b		; 04 0C
	brk $0A.b		; 00 0A
	tsb $04.b		; 04 04
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3000.w		; C0 00 30
	plp		; 28
	bpl  16.b		; 10 10
	brk $08.b		; 00 08
	ora ($1C.b)		; 12 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	brk $D6.b		; 00 D6
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$8080.w		; C0 80 80
	and $3F3F7F.l,X		; 3F 7F 3F 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$FF80.w		; C0 80 FF
	brk $FF.b		; 00 FF
	and $3F00FF.l,X		; 3F FF 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $F4.b		; 04 F4
	pea $F9FD.w		; F4 FD F9
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	pea $FD04.w		; F4 04 FD
	pea $01FF.w		; F4 FF 01
	xce		; FB
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	sbc $00FFFF.l,X		; FF FF FF 00
	phb		; 8B
	txy		; 9B
	clv		; B8
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	inc $00FF.w,X		; FE FF 00
	sbc $B89B8B.l,X		; FF 8B 9B B8
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($DB.b)		; 12 DB
	stp		; DB
	stp		; DB
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	brk $FF.b		; 00 FF
	cmp ($FF.b,S),Y		; D3 FF
	brk $DB.b		; 00 DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -49.b		; 30 CF
	lda $CA.b,X		; B5 CA
	and ($C8.b)		; 32 C8
	lsr $AA.b,X		; 56 AA
	bit #$1977.w		; 89 77 19
	sbc $3E.b,S		; E3 3E
	cmp ($BD.b,X)		; C1 BD
	.db $42, $CF		; 42 CF
	brk $CA.b		; 00 CA
	brk $CD.b		; 00 CD
	brk $AD.b		; 00 AD
	brk $72.b		; 00 72
	cop $E4.b		; 02 E4
	tsb $C1.b		; 04 C1
	ora ($40.b,X)		; 01 40
	brk $99.b		; 00 99
	adc [$AE.b]		; 67 AE
	eor ($A4.b,S),Y		; 53 A4
	txy		; 9B
	eor [$18.b]		; 47 18
	sep #$CC		; E2 CC
	sed		; F8
	tsb $2C68.w		; 0C 68 2C
	bmi -120.b		; 30 88
	adc [$00.b]		; 67 00
	ora $00.b,S		; 03 00
	cmp ($D0.b,S),Y		; D3 D0
	bcs  48.b		; B0 30
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	bne  16.b		; D0 10
	sed		; F8
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
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
	jmp ($6E23.w,X)		; 7C 23 6E
	and ($62.b,X)		; 21 62
	and ($21.b,X)		; 21 21
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$1F1F.w		; C0 1F 1F
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	sta $40BF60.l,X		; 9F 60 BF 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jmp $194C.w		; 4C 4C 19
	ora $3232.w,Y		; 19 32 32
	adc $65.b		; 65 65
	eor #$D249.w		; 49 49 D2
	cmp ($E2.b)		; D2 E2
.ACCU 8
	sep #$64		; E2 64
	stz $BD.b		; 64 BD
	.db $42, $43		; 42 43
	bit $0001.w,X		; 3C 01 00
	brk $FE.b		; 00 FE
	inc $FEFE.w,X		; FE FE FE
	ora ($5E.b,X)		; 01 5E
	lsr $2DAD.w,X		; 5E AD 2D
	brk $C0.b		; 00 C0
	jsr $00A0.w		; 20 A0 00
	inc $FF00.w,X		; FE 00 FF
	inc $00FF.w,X		; FE FF 00
	sbc $08FF5C.l,X		; FF 5C FF 08
	adc $5A748A.l,X		; 7F 8A 74 5A
	ldy $33.b		; A4 33
	asl $C000.w		; 0E 00 C0
	cpy #$DFDF.w		; C0 DF DF
	ora $A860BF.l,X		; 1F BF 60 A8
	adc [$04.b],Y		; 77 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	cpy #$FF00.w		; C0 00 FF
	cpy #$1FFF.w		; C0 FF 1F
	sbc $001F00.l,X		; FF 00 1F 00
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	sbc $E100.w,Y		; F9 00 E1
	bit #$89.b		; 89 89
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	sbc #$E9.b		; E9 E9
	inc A		; 1A
	inc A		; 1A
	inc $E0E0.w,X		; FE E0 E0
	ora $EE19E6.l,X		; 1F E6 19 EE
	ora ($FF.b),Y		; 11 FF
	brk $F7.b		; 00 F7
	php		; 08
	inc $18.b		; E6 18
	dec $38.b		; C6 38
	stz $3B60.w,X		; 9E 60 3B
	sec		; 38
	lda ($B0.b),Y		; B1 B0
	sbc ($E0.b,X)		; E1 E0
	cpy #$88C0.w		; C0 C0 88
	bra  24.b		; 80 18
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	brk $16.b		; 00 16
	phd		; 0B
	inc A		; 1A
	clc		; 18
	ora $03.b,X		; 15 03
	asl A		; 0A
	php		; 08
	tsb $04.b		; 04 04
	asl A		; 0A
	tsb $0707.w		; 0C 07 07
	ora $03.b,S		; 03 03
	brk $1F.b		; 00 1F
	ora $011B.w,Y		; 19 1B 01
	ora [$08.b],Y		; 17 08
	asl A		; 0A
	brk $04.b		; 00 04
	php		; 08
	ora $030704.l		; 0F 04 07 03
	ora $27.b,S		; 03 27
	sep #$01		; E2 01
	lsr $A7.b		; 46 A7
	lda [$13.b]		; A7 13
	ora ($0E.b)		; 12 0E
	cop $12.b		; 02 12
	trb $E8.b		; 14 E8
	pea $8080.w		; F4 80 80
	sec		; 38
	lda $9EFBB8.l,X		; BF B8 FB 9E
	lda $001300.l,X		; BF 00 13 00
	asl $FE00.w,X		; 1E 00 FE
	jsr $80FC.w		; 20 FC 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	clc		; 18
	tya		; 98
	cld		; D8
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	brk $FC.b		; 00 FC
	bpl  -4.b		; 10 FC
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	ora #$07.b		; 09 07
	ora ($0F.b)		; 12 0F
	rol $1F.b		; 26 1F
	and $491E.w		; 2D 1E 49
	rol $7E81.w,X		; 3E 81 7E
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $7C.b		; 00 7C
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $18.b		; 00 18
	brk $16.b		; 00 16
	asl $0F.b		; 06 0F
	ora [$1F.b]		; 07 1F
	ora $0F1E0E.l		; 0F 0E 1E 0F
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	ora [$1F.b]		; 07 1F
	asl $0C1F.w		; 0E 1F 0C
	and $E63E0C.l,X		; 3F 0C 3E E6
	ora $9FE02E.l,X		; 1F 2E E0 9F
	rti		; 40

	phy		; 5A
	ora $41.b,S		; 03 41
	rol $413C.w,X		; 3E 3C 41
	cmp $38.b		; C5 38
	sty $7A.b		; 84 7A
	ora #$09.b		; 09 09
	ora $003F00.l,X		; 1F 00 3F 00
	and $1C81.w,X		; 3D 81 1C
	sta $8300.w,X		; 9D 00 83
	sec		; 38
	ora $7A.b,S		; 03 7A
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $0A.b		; 02 0A
	nop		; EA
	sbc $0EFFFF.l,X		; FF FF FF 0E
	cld		; D8
	bit $0000.w		; 2C 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	cop $FF.b		; 02 FF
	asl A		; 0A
	sbc $0EFFFF.l,X		; FF FF FF 0E
	sbc $F9FF00.l,X		; FF 00 FF F9
	sbc ($F3.b)		; F2 F3
	sbc $A6.b,X		; F5 A6
	wai		; CB
	ora $6C1F86.l,X		; 1F 86 1F 6C
	and $807FD8.l		; 2F D8 7F 80
	rol $4280.w,X		; 3E 80 42
	inc $FDF4.w,X		; FE F4 FD
	txa		; 8A
	xce		; FB
	asl $E6.b		; 06 E6
	tsb $8C.b		; 04 8C
	cop $1A.b		; 02 1A
	.db $82, $22, $84		; 82 22 84
	mvp $80,$7E		; 44 7E 80
	ror $FE80.w,X		; 7E 80 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FA.b		; 00 FA
	brk $F8.b		; 00 F8
	cop $84.b		; 02 84
	tsb $84.b		; 04 84
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	ora ($10.b)		; 12 10
	lsr $5FC1.w,X		; 5E C1 5F
	cmp ($1F.b,X)		; C1 1F
	cpy #$E03F.w		; C0 3F E0
	sta $30DF60.l,X		; 9F 60 DF 30
	sbc $18E318.l		; EF 18 E3 18
	lda $80BE81.l,X		; BF 81 BE 80
	adc $405F40.l,X		; 7F 40 5F 40
	and $000F20.l,X		; 3F 20 0F 00
	ora [$10.b],Y		; 17 10
	cmp $E01AC8.l		; CF C8 1A E0
	inc A		; 1A
	cpx #$E01A.w		; E0 1A E0
	tsx		; BA
	cpy #$4039.w		; C0 39 40
	lda ($40.b),Y		; B1 40
	cmp ($60.b),Y		; D1 60
	sta ($20.b),Y		; 91 20
	rts		; 60

	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$F800.w		; C0 00 F8
	cop $F8.b		; 02 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $12.b		; 00 12
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	ldy #$E000.w		; A0 00 E0
	rti		; 40

	ldy #$A040.w		; A0 40 A0
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $61.b		; 00 61
	asl $7F7F.w,X		; 1E 7F 7F
	lsr $0060.w,X		; 5E 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc $7EFF00.l,X		; FF 00 FF 7E
	sbc $00FF00.l,X		; FF 00 FF 00
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
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
	brk $1F.b		; 00 1F
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
	brk $EB.b		; 00 EB
	clc		; 18
	cmp $3C.b		; C5 3C
	cmp ($3E.b)		; D2 3E
	sbc $7C1F.w,Y		; F9 1F 7C
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	jsr $380B.w		; 20 0B 38
	ora $34.b		; 05 34
	inc A		; 1A
	inc A		; 1A
	ora ($0D.b,X)		; 01 0D
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $40.b,S		; A3 40
	cmp $60.b,S		; C3 60
	sta $20.b,S		; 83 20
	eor $20.b,S		; 43 20
	sta $A0.b,S		; 83 A0
	cmp $00.b,S		; C3 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$6060.w		; C0 60 60
	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
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
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	pha		; 48
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00.b		; 25 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $62, $00, $00		; 62 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	php		; 08
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
	eor ($00.b,S),Y		; 53 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b		; 86 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	.db $80		; Opcode 80 overrunning bank boundry at 19FFFE. Skipping.
	.db $AD		; Opcode AD overrunning bank boundry at 19FFFF. Skipping.
.ENDS
