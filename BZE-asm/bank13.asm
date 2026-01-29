.BANK 13 SLOT 0
.ORG $0000

.SECTION "Bank13" FORCE

	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora [$06.b]		; 07 06
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	inc $F4FF.w,X		; FE FF F4
	sbc $D3FEF1.l,X		; FF F1 FE D3
	jsr ($FF85.w,X)		; FC 85 FF
	ora $FD.b		; 05 FD
	ora $85EC.w		; 0D EC 85
	jmp ($C1FF.w)		; 6C FF C1
	sbc $0CFE8B.l,X		; FF 8B FE 0C
	jsr ($F829.w,X)		; FC 29 F8
	adc $C9CB.w,Y		; 79 CB C9
	cmp ($C0.b,S),Y		; D3 C0
	tad		; 5B
	rti		; 40

	brk $00.b		; 00 00
	ora [$81.b]		; 07 81
	phd		; 0B
	sbc $2F.b,X		; F5 2F
	bit $6B.b,X		; 34 6B
	stz $C7.b,X		; 74 C7
	clv		; B8
	sbc $80C000.l,X		; FF 00 C0 80
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	bra   5.b		; 80 05
	bne   4.b		; D0 04
	bpl -123.b		; 10 85
	bmi -126.b		; 30 82
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	beq -32.b		; F0 E0
	bne -32.b		; D0 E0
	bmi -64.b		; 30 C0
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	ora $803C04.l		; 0F 04 3C 80
	beq -128.b		; F0 80
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	brk $35.b		; 00 35
	sbc #$D16D.w		; E9 6D D1
	and [$99.b],Y		; 37 99
	and $9B.b,X		; 35 9B
	bit $99.b,X		; 34 99
	bit $98.b,X		; 34 98
	bit $98.b,X		; 34 98
	lsr $40C1.w		; 4E C1 40
	phd		; 0B
	bmi   3.b		; 30 03
	pla		; 68
	ora $68.b,S		; 03 68
	ora $60.b,S		; 03 60
	ora $60.b,S		; 03 60
	ora $60.b,S		; 03 60
	ora ($20.b,X)		; 01 20
	ora ($B7.b),Y		; 11 B7
	cld		; D8
	sbc $FDC1.w,X		; FD C1 FD
	cmp $3FCDDB.l		; CF DB CD 3F
	ldx $5CCB.w		; AE CB 5C
	and $FCE13E.l		; 2F 3E E1 FC
	brk $D8.b		; 00 D8
	bra -29.b		; 80 E3
	sta $00EF.w		; 8D EF 00
	sbc $00EE0C.l		; EF 0C EE 00
	inc $FE0C.w,X		; FE 0C FE
	rti		; 40

	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $FE.b		; 02 FE
	rti		; 40

	cpy #$3F30.w		; C0 30 3F
	cpy $FC.b		; C4 FC
	ora [$F0.b],Y		; 17 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	lda $00C800.l,X		; BF 00 C8 00
	ora $00.b,S		; 03 00
	and $001B00.l		; 2F 00 1B 00
	clc		; 18
	rtl		; 6B

	tas		; 1B
	inx		; E8
	cli		; 58
	pla		; 68
	jmp $0376.w		; 4C 76 03
	jsr ($C8B0.w,X)		; FC B0 C8
	jmp ($0050.w,X)		; 7C 50 00
	ora [$00.b]		; 07 00
	ora $A80F68.l		; 0F 68 0F A8
	ora $2007B0.l		; 0F B0 07 20
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	bpl  15.b		; 10 0F
	brk $34.b		; 00 34
	ora $EC.b,S		; 03 EC
	bpl  39.b		; 10 27
	cpy #$0098.w		; C0 98 00
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bcs   0.b		; B0 00
	plp		; 28
	cpy #$6096.w		; C0 96 60
	adc ($18.b,X)		; 61 18
	clc		; 18
	asl $E2.b		; 06 E2
	ora ($1C.b,X)		; 01 1C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$2000.w		; E0 00 20
	bra -64.b		; 80 C0
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
	brk $0F.b		; 00 0F
	ora $7F3F3F.l		; 0F 3F 3F 7F
	and $00007F.l,X		; 3F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $313F0F.l		; 0F 0F 3F 31
	adc $467F41.l,X		; 7F 41 7F 46
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs  -8.b		; 70 F8
	sed		; F8
	jsr ($FED8.w,X)		; FC D8 FE
	iny		; C8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	sed		; F8
	dey		; 88
	jsr ($FE84.w,X)		; FC 84 FE
	rol $FE.b		; 26 FE
	rol $00.b,X		; 36 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  28.b		; 10 1C
	trb $1E16.w		; 1C 16 1E
	ora [$2E.b]		; 07 2E
	and $7E30.w,Y		; 39 30 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  60.b		; 10 3C
	trb $3F.b		; 14 3F
	asl $3F.b		; 06 3F
	brk $7E.b		; 00 7E
	brk $76.b		; 00 76
	brk $04.b		; 00 04
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	bra 112.b		; 80 70
	cpy #$C060.w		; C0 60 C0
	bvc  96.b		; 50 60
	bcc -128.b		; 90 80
	bvs -128.b		; 70 80
	bvs -72.b		; 70 B8
	tay		; A8
	cli		; 58
	clc		; 18
	bvc  16.b		; 50 10
	brk $00.b		; 00 00
	jsr $6000.w		; 20 00 60
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	brk $10.b		; 00 10
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $630000.l		; 0F 00 00 63
	sta $14CF30.l,X		; 9F 30 CF 14
	adc $BE007F.l		; 6F 7F 00 BE
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	adc #$95FB.w		; 69 FB 95
	sty $80.b		; 84 80
	iny		; C8
	cpy #$606B.w		; C0 6B 60
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	rti		; 40

	rtl		; 6B

	brk $95.b		; 00 95
	eor ($00.b,X)		; 41 00
	ldx $40.b,Y		; B6 40
	sbc $FF50.w		; ED 50 FF
	bvc -66.b		; 50 BE
	ldy #$4061.w		; A0 61 40
	cmp $03CC80.l,X		; DF 80 CC 03
	brk $80.b		; 00 80
	brk $41.b		; 00 41
	brk $56.b		; 00 56
	brk $51.b		; 00 51
	jsr $40E7.w		; 20 E7 40
	dec $A100.w,X		; DE 00 A1
	brk $3F.b		; 00 3F
	bne  48.b		; D0 30
	inc $27.b		; E6 27
	beq  63.b		; F0 3F
	ldx #$651E.w		; A2 1E 65
	trb $18EB.w		; 1C EB 18
	clv		; B8
	cli		; 58
	adc ($93.b,S),Y		; 73 93
	and $001800.l		; 2F 00 18 00
	ora #$0580.w		; 09 80 05
	cpy #$800B.w		; C0 0B 80
	ora [$40.b],Y		; 17 40
	ora [$C0.b]		; 07 C0
	tsb $1FC0.w		; 0C C0 1F
	cmp ($CF.b,S),Y		; D3 CF
	and [$EF.b]		; 27 EF
	ora [$FF.b],Y		; 17 FF
	ora [$70.b]		; 07 70
	asl $38.b		; 06 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	and [$03.b],Y		; 37 03
	and [$02.b],Y		; 37 02
	eor [$00.b],Y		; 57 00
	and $002F00.l		; 2F 00 2F 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	beq  -9.b		; F0 F7
	iny		; C8
	plx		; FA
	stz $08CF.w		; 9C CF 08
	tsb $03.b		; 04 03
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00F0.w		; C0 F0 00
	cpx $DD00.w		; EC 00 DD
	brk $9A.b		; 00 9A
	brk $8B.b		; 00 8B
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ldy $F280.w,X		; BC 80 F2
	ora $D8.b,S		; 03 D8
	ora $C03C20.l,X		; 1F 20 3C C0
	sed		; F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	adc $00FD00.l,X		; 7F 00 FD 00
	cpx $00.b		; E4 00
	cld		; D8
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	bvc 117.b		; 50 75
	bne  51.b		; D0 33
	pei ($30.b)		; D4 30
	eor [$26.b],Y		; 57 26
	ora ($1B.b),Y		; 11 1B
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $90.b		; 00 90
	trb $1E90.w		; 1C 90 1E
	bvc  31.b		; 50 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	trb $DEE3.w		; 1C E3 DE
	ora $2F.b		; 05 2F
	dec $FF.b		; C6 FF
	ora #$75BB.w		; 09 BB 75
	sbc $BD7B70.l		; EF 70 7B BD
	cpy #$0000.w		; C0 00 00
	brk $01.b		; 00 01
	bit $16C0.w		; 2C C0 16
	brk $0B.b		; 00 0B
	brk $F5.b		; 00 F5
	brk $78.b		; 00 78
	brk $BD.b		; 00 BD
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
	and $007000.l		; 2F 00 70 00
	lda [$18.b]		; A7 18
	sei		; 78
	ora [$BF.b]		; 07 BF
	brk $F1.b		; 00 F1
	bra  78.b		; 80 4E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cmp $00FF00.l,X		; DF 00 FF 00
	adc $008F00.l,X		; 7F 00 8F 00
	bvs   0.b		; 70 00
	sta $008100.l		; 8F 00 81 00
	brk $BC.b		; 00 BC
	ora $A01F20.l,X		; 1F 20 1F A0
	jmp $E0D020.l		; 5C 20 D0 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $03.b		; 00 03
	cpy #$C01C.w		; C0 1C C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$A000.w		; C0 00 A0
	brk $98.b		; 00 98
	rti		; 40

	stz $00.b		; 64 00
	wai		; CB
	bpl 104.b		; 10 68
	asl $22.b		; 06 22
	ora ($1F.b,X)		; 01 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $3300.w,Y		; F9 00 33
	tsb $708C.w		; 0C 8C 70
	adc ($80.b,X)		; 61 80
	stx $0000.w		; 8E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F000.w,X		; FE 00 F0
	brk $00.b		; 00 00
	sed		; F8
	brk $34.b		; 00 34
	cpy #$0084.w		; C0 84 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $3F1E1F.l		; 0F 1F 1E 3F
	asl $3D3F.w		; 0E 3F 3D
	adc $7EFF7C.l,X		; 7F 7C FF 7E
	sbc $0F0303.l,X		; FF 03 03 0F
	ora $141F.w		; 0D 1F 14
	and $313F21.l,X		; 3F 21 3F 31
	ror $FF4A.w,X		; 7E 4A FF
	phb		; 8B
	sbc $F0C091.l,X		; FF 91 C0 F0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	bvc  -8.b		; 50 F8
	brk $F8.b		; 00 F8
	bcc  -8.b		; 90 F8
	bmi  72.b		; 30 48
	bit #$F0AC.w		; 89 AC F0
	bmi -16.b		; 30 F0
	bpl  -8.b		; 10 F8
	php		; 08
	sed		; F8
	tay		; A8
	sed		; F8
	sed		; F8
	rts		; 60

	adc ($80.b,X)		; 61 80
	ora ($50.b,X)		; 01 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	rtl		; 6B

	ldx $5CF0.w,Y		; BE F0 5C
	adc $00BF9F.l,X		; 7F 9F BF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	rti		; 40

	cpx $F120.w		; EC 20 F1
	clc		; 18
	sbc $00FF07.l,X		; FF 07 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra  56.b		; 80 38
	jsr $D098.w		; 20 98 D0
	inx		; E8
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpy #$E0F0.w		; C0 F0 E0
	brk $18.b		; 00 18
	brk $F6.b		; 00 F6
	brk $7D.b		; 00 7D
	brk $8F.b		; 00 8F
	brk $61.b		; 00 61
	brk $3C.b		; 00 3C
	bra -69.b		; 80 BB
	rti		; 40

	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $9F.b		; 00 9F
	brk $C3.b		; 00 C3
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $D8.b		; 00 D8
	brk $36.b		; 00 36
	brk $C5.b		; 00 C5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F800.w		; E0 00 F8
	brk $3E.b		; 00 3E
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($FC.b,X)		; 01 FC
	ora $E02EF8.l		; 0F F8 2E E0
	and $7281.w,X		; 3D 81 72
	ora $44.b,S		; 03 44
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $C7.b		; 00 C7
	brk $1F.b		; 00 1F
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FA.b		; 00 FA
	brk $00.b		; 00 00
	beq -112.b		; F0 90
	stz $08E7.w,X		; 9E E7 08
	sta [$0B.b]		; 87 0B
	ror $7A.b		; 66 7A
	asl $FA.b		; 06 FA
	asl $9A.b		; 06 9A
	asl $0A.b		; 06 0A
	brk $00.b		; 00 00
	rts		; 60

	brk $F8.b		; 00 F8
	brk $FA.b		; 00 FA
	ora $9A.b,S		; 03 9A
	ora $8A.b,S		; 03 8A
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $EE.b		; 00 EE
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $017E.w		; 1C 7E 01
	stz $F301.w,X		; 9E 01 F3
	brk $EE.b		; 00 EE
	ora ($F2.b,X)		; 01 F2
	ora $7D82.w		; 0D 82 7D
	asl $6101.w,X		; 1E 01 61
	bra   1.b		; 80 01
	cpy #$7C01.w		; C0 01 7C
	brk $0C.b		; 00 0C
	ora ($F0.b,X)		; 01 F0
	ora ($0C.b,X)		; 01 0C
	ora ($FC.b,X)		; 01 FC
	ora ($FC.b,X)		; 01 FC
	brk $FE.b		; 00 FE
	adc [$10.b]		; 67 10
	tad		; 5B
	bmi  90.b		; 30 5A
	asl $39.b,X		; 16 39
	ora [$20.b],Y		; 17 20
	ora $3E.b,S		; 03 3E
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora [$30.b]		; 07 30
	ora $30.b		; 05 30
	cop $10.b		; 02 10
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $5F6F3E.l,X		; DF 3E 6F 5F
	cmp $0E770F.l,X		; DF 0F 77 0E
	and $700BE0.l		; 2F E0 0B 70
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	tsb $863E.w		; 0C 3E 86
	ora $E00FE2.l,X		; 1F E2 0F E0
	asl $0150.w		; 0E 50 01
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $A0.b,Y		; B6 A0
	lda $DB20.w,X		; BD 20 DB
	jsr $00F4.w		; 20 F4 00
	lsr A		; 4A
	bcs -91.b		; B0 A5
	clc		; 18
	ora $000100.l,X		; 1F 00 01 00
	brk $EF.b		; 00 EF
	brk $63.b		; 00 63
	brk $2C.b		; 00 2C
	brk $8F.b		; 00 8F
	brk $B7.b		; 00 B7
	brk $1B.b		; 00 1B
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($7E.b,X)		; 01 7E
	sta ($0C.b,S),Y		; 93 0C
	ldx $DE41.w,Y		; BE 41 DE
	and ($4C.b,X)		; 21 4C
	bmi 104.b		; 30 68
	bpl  48.b		; 10 30
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $EC.b		; 00 EC
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	cpy #$18E0.w		; C0 E0 18
	sbc [$68.b],Y		; F7 68
	dec $D643.w		; CE 43 D6
	.db $42, $CA		; 42 CA
	bvc -59.b		; 50 C5
	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	rts		; 60

	rti		; 40

	adc ($40.b,S),Y		; 73 40
	tda		; 7B
	brk $7D.b		; 00 7D
	brk $7E.b		; 00 7E
	bit $3BFF.w,X		; 3C FF 3B
	inc $7E3B.w,X		; FE 3B 7E
	and $327F.w,Y		; 39 7F 32
	adc $073A15.l,X		; 7F 15 3A 07
	sec		; 38
	brk $1F.b		; 00 1F
	inc $FCE2.w,X		; FE E2 FC
	cpx $7C.b		; E4 7C
	mvp $44,$7C		; 44 7C 44
	sei		; 78
	pha		; 48
	sec		; 38
	plp		; 28
	sec		; 38
	sec		; 38
	ora $04711F.l,X		; 1F 1F 71 04
	phk		; 4B
	sty $43.b,X		; 94 43
	bit $BB8F.w,X		; 3C 8F BB
	cmp [$DC.b],Y		; D7 DC
	ora $C33FE3.l,X		; 1F E3 3F C3
	adc [$8B.b],Y		; 77 8B
	sed		; F8
	brk $78.b		; 00 78
	ora ($F8.b,X)		; 01 F8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ora $C2.b,S		; 03 C2
	cmp ($82.b,S),Y		; D3 82
	plb		; AB
	sbc $F703.w,X		; FD 03 F7
	sec		; 38
	inc $FF07.w,X		; FE 07 FF
	bpl -69.b		; 10 BB
	cmp [$97.b]		; C7 97
	phb		; 8B
	sbc $FD39F3.l		; EF F3 39 FD
	brk $07.b		; 00 07
	brk $38.b		; 00 38
	brk $C7.b		; 00 C7
	brk $10.b		; 00 10
	brk $C7.b		; 00 C7
	sta $EB.b,S		; 83 EB
	lda ($F3.b,X)		; A1 F3
	bpl  -1.b		; 10 FF
	wai		; CB
	cpx #$00F5.w		; E0 F5 00
	cmp [$44.b]		; C7 44
	xce		; FB
	plx		; FA
	sbc [$F4.b],Y		; F7 F4
	sbc $DEE8.w		; ED E8 DE
	bne -36.b		; D0 DC
	cmp ($80.b),Y		; D1 80
	beq   0.b		; F0 00
	cop $00.b		; 02 00
	jmp ($FE42.w,X)		; 7C 42 FE
	cpx $FC.b		; E4 FC
	iny		; C8
	xce		; FB
	bne  -9.b		; D0 F7
	brk $F3.b		; 00 F3
	jmp $18A220.l		; 5C 20 A2 18
	eor $3604.w,Y		; 59 04 36
	brk $0A.b		; 00 0A
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jmp ($3E00.w,X)		; 7C 00 3E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	and ($00.b,S),Y		; 33 00
	php		; 08
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	cpy #$3044.w		; C0 44 30
	jsr ($0000.w,X)		; FC 00 00
	ora $000700.l		; 0F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F800.w		; E0 00 F8
	brk $00.b		; 00 00
	bcc  78.b		; 90 4E
	pha		; 48
	ora [$36.b]		; 07 36
	ora ($09.b,X)		; 01 09
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $003F00.l,X		; 7F 00 3F 00
	ora $000700.l		; 0F 00 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $BC.b		; 00 BC
	brk $E4.b		; 00 E4
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	stz $FCF0.w,X		; 9E F0 FC
	cpy #$00F8.w		; C0 F8 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $00.b		; 64 00
	php		; 08
	brk $30.b		; 00 30
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	brk $5B.b		; 00 5B
	trb $0245.w		; 1C 45 02
	tsa		; 3B
	bit $3CC3.w,X		; 3C C3 3C
	cmp ($3D.b)		; D2 3D
	clv		; B8
	adc $004513.l		; 6F 13 45 00
	ora $10.b,S		; 03 10
	bit $3A00.w,X		; 3C 00 3A
	bpl 125.b		; 10 7D
	brk $42.b		; 00 42
	bit $1401.w		; 2C 01 14
	ora ($38.b,X)		; 01 38
	ora $B7.b,S		; 03 B7
	ora $09FF.w,Y		; 19 FF 09
	inc $FA65.w,X		; FE 65 FA
	adc $FF.b,X		; 75 FF
	rts		; 60

	adc $601F70.l		; 6F 70 1F 60
	inc $0893.w		; EE 93 08
	cmp ($00.b,X)		; C1 00
	ora $00.b,S		; 03 00
	adc $00.b		; 65 00
	adc $7400.w,X		; 7D 00 74
	brk $F1.b		; 00 F1
	brk $E8.b		; 00 E8
	brk $9B.b		; 00 9B
	cpy #$8080.w		; C0 80 80
	bra -64.b		; 80 C0
	ora $C1.b,S		; 03 C1
	and [$45.b]		; 27 45
	ldy $499A.w		; AC 9A 49
	ror $91.b,X		; 76 91
	lda $0060.w		; AD 60 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	cop $00.b		; 02 00
	ora $80.b,S		; 03 80
	adc [$00.b]		; 67 00
	sta $001E00.l		; 8F 00 1E 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bvc -40.b		; 50 D8
	rts		; 60

	php		; 08
	cpx #$3008.w		; E0 08 30
	phd		; 0B
	xce		; FB
	and [$CC.b],Y		; 37 CC
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	bmi  67.b		; 30 43
	beq   0.b		; F0 00
	ora $0F1F0E.l		; 0F 0E 1F 0F
	ora $1F3F1F.l,X		; 1F 1F 3F 1F
	and $3F3F1F.l,X		; 3F 1F 3F 3F
	adc $0F7F1A.l,X		; 7F 1A 7F 0F
	ora $1F111F.l		; 0F 1F 11 1F
	clc		; 18
	and $263F3C.l,X		; 3F 3C 3F 26
	and $407F24.l,X		; 3F 24 7F 40
	adc $F00065.l,X		; 7F 65 00 F0
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $3EFF.w,X		; FE FF 3E
	sbc $F0FF2A.l,X		; FF 2A FF F0
	beq  -8.b		; F0 F8
	php		; 08
	sed		; F8
	clc		; 18
	jsr ($FE0C.w,X)		; FC 0C FE
	ora ($FF.b)		; 12 FF
	ora ($FF.b,X)		; 01 FF
	cmp ($FF.b,X)		; C1 FF
	cmp $31.b,X		; D5 31
	tsb $15.b		; 04 15
	cop $10.b		; 02 10
	ora ($0E.b,X)		; 01 0E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F00.w		; 0E 00 0F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7000.w		; C0 00 70
	bra   8.b		; 80 08
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rts		; 60

	rti		; 40

	bvs  32.b		; 70 20
	inx		; E8
	ldy #$40D4.w		; A0 D4 40
	dex		; CA
	bvc -105.b		; 50 97
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  32.b		; 80 20
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	cmp ($0C.b),Y		; D1 0C
	pha		; 48
	asl $24.b		; 06 24
	ora $1B.b,S		; 03 1B
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3F00.w,X		; 3E 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $1C		; 42 1C
	ora $1E0D1C.l		; 0F 1C 0D 1E
	ora [$0E.b]		; 07 0E
	asl $07.b		; 06 07
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	brk $3D.b		; 00 3D
	brk $3C.b		; 00 3C
	tsb $3E.b		; 04 3E
	tsb $1E.b		; 04 1E
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	lda $18.b,S		; A3 18
	eor [$00.b]		; 47 00
	sbc $5C8300.l,X		; FF 00 83 5C
	ldx $49.b		; A6 49
	jmp.w [$DF23]		; DC 23 DF
	jsr $9867.w		; 20 67 98
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $FE.b		; 00 FE
	ora ($7C.b,X)		; 01 7C
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	lda [$BC.b]		; A7 BC
	cmp [$FC.b]		; C7 FC
	cmp $FC8BFC.l		; CF FC 8B FC
	ora [$F8.b]		; 07 F8
	tda		; 7B
	bra -51.b		; 80 CD
	brk $3D.b		; 00 3D
	brk $50.b		; 00 50
	ora ($28.b,X)		; 01 28
	ora ($20.b,X)		; 01 20
	ora ($54.b,X)		; 01 54
	ora ($B8.b,X)		; 01 B8
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	and ($00.b,S),Y		; 33 00
	cmp $60.b,S		; C3 60
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $20.b		; 00 20
	bra -48.b		; 80 D0
	brk $08.b		; 00 08
	brk $94.b		; 00 94
	brk $6A.b		; 00 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	ora $1E1D0C.l		; 0F 0C 1D 1E
	adc $52DF6A.l		; 6F 6A DF 52
	adc ($20.b)		; 72 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7E04.w,X		; 3C 04 7E
	php		; 08
	plx		; FA
	brk $72.b		; 00 72
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($46.b),Y		; 11 46
	ora ($45.b)		; 12 45
	pld		; 2B
	jmp ($3847.w)		; 6C 47 38
	cmp $008730.l,X		; DF 30 87 00
	dec $6731.w,X		; DE 31 67
	brk $38.b		; 00 38
	ora $38.b,S		; 03 38
	ora ($10.b,X)		; 01 10
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ply		; 7A
	brk $7A.b		; 00 7A
	brk $39.b		; 00 39
	brk $18.b		; 00 18
	sbc $CC7F36.l,X		; FF 36 7F CC
	sbc $F27DF8.l,X		; FF F8 7D F2
	sed		; F8
	ora [$59.b]		; 07 59
	inc $F3.b		; E6 F3
	sty $08B7.w		; 8C B7 08
	brk $B6.b		; 00 B6
	brk $CC.b		; 00 CC
	bvs  -6.b		; 70 FA
	rti		; 40

	inc $00.b,X		; F6 00
	ora [$00.b]		; 07 00
	sbc $008F00.l		; EF 00 8F 00
	ror $4398.w		; 6E 98 43
	ply		; 7A
	cpy #$8032.w		; C0 32 80
	ldx $84.b,Y		; B6 84
	tax		; AA
	tsb $0CAA.w		; 0C AA 0C
	sta ($1C.b,S),Y		; 93 1C
	lda $BC.b,S		; A3 BC
	jmp ($3C01.w,X)		; 7C 01 3C
	ora ($FC.b,X)		; 01 FC
	ora ($78.b,X)		; 01 78
	ora ($74.b,X)		; 01 74
	ora ($70.b,X)		; 01 70
	ora ($68.b,X)		; 01 68
	ora ($54.b,X)		; 01 54
	ora ($4C.b,X)		; 01 4C
	bit $8F.b		; 24 8F
	adc [$95.b]		; 67 95
	adc $304FB0.l		; 6F B0 4F 30
	cmp $C810.w		; CD 10 C8
	jsr $60D0.w		; 20 D0 60
	bra   3.b		; 80 03
	beq   0.b		; F0 00
	beq  10.b		; F0 0A
	cpx #$E00D.w		; E0 0D E0
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	php		; 08
	adc $262F40.l,X		; 7F 40 2F 26
	eor #$2813.w		; 49 13 28
	bpl  13.b		; 10 0D
	plp		; 28
	ora [$5E.b]		; 07 5E
	ora ($7D.b,X)		; 01 7D
	brk $7F.b		; 00 7F
	adc [$3F.b],Y		; 77 3F
	rol $4058.w		; 2E 58 40
	and $000720.l		; 2F 20 07 00
	ora $18.b,S		; 03 18
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	iny		; C8
	sbc $903E00.l,X		; FF 00 3E 90
	cpx $18C4.w		; EC C4 18
	rol A		; 2A
	pea $E41A.w		; F4 1A E4
	rol $FBC0.w,X		; 3E C0 FB
	dec $3F.b		; C6 3F
	and [$FE.b],Y		; 37 FE
	asl $044C.w,X		; 1E 4C 04
	beq   0.b		; F0 00
	cpy #$C004.w		; C0 04 C0
	tsb $00.b		; 04 00
	bpl   0.b		; 10 00
	asl $F7.b,X		; 16 F7
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	bpl -88.b		; 10 A8
	bpl -72.b		; 10 B8
	brk $54.b		; 00 54
	brk $5C.b		; 00 5C
	brk $52.b		; 00 52
	php		; 08
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3000.w		; C0 00 30
	brk $2C.b		; 00 2C
	cpy #$F00B.w		; C0 0B F0
.INDEX 8
	sep #$1C		; E2 1C
	tsb $03.b		; 04 03
	sed		; F8
	brk $47.b		; 00 47
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cmp $0F7000.l,X		; DF 00 70 0F
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	bra 126.b		; 80 7E
	iny		; C8
	eor $BF00BE.l		; 4F BE 00 BF
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr ($0EE9.w,X)		; FC E9 0E
	xce		; FB
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $0A.b,S		; 03 0A
	asl $04.b		; 06 04
	adc $037B04.l,X		; 7F 04 7B 03
	sed		; F8
	pha		; 48
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tda		; 7B
	bvs 103.b		; 70 67
	rts		; 60

	sbc $B0F5F0.l,X		; FF F0 F5 B0
	eor #$3504.w		; 49 04 35
	tsb $C22D.w		; 0C 2D C2
	eor $72.b,X		; 55 72
	and $B2.b		; 25 B2
	eor ($9C.b,X)		; 41 9C
	inc $18.b		; E6 18
	stp		; DB
	trb $3204.w		; 1C 04 32
	php		; 08
	cop $00.b		; 02 00
	tas		; 1B
	bra  11.b		; 80 0B
	bne  11.b		; D0 0B
	sed		; F8
	ora $F0.b,S		; 03 F0
	ora ($E0.b,X)		; 01 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($C3.b,X)		; 01 C3
	cmp $9F.b,S		; C3 9F
	cmp $000000.l,X		; DF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cmp $01.b,S		; C3 01
	sbc $00FF0F.l,X		; FF 0F FF 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $67.b		; 00 67
	brk $7E.b		; 00 7E
	adc ($9E.b,X)		; 61 9E
	bcc -18.b		; 90 EE
	sbc #$E8EE.w		; E9 EE E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $18.b		; 00 18
	brk $E7.b		; 00 E7
	brk $F1.b		; 00 F1
	dey		; 88
	xce		; FB
	iny		; C8
	sbc $0001.w,Y		; F9 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	asl $1E.b		; 06 1E
	ora $751D2F.l		; 0F 2F 1D 75
	asl $1569.w		; 0E 69 15
	adc $010000.l,X		; 7F 00 00 01
	brk $06.b		; 00 06
	brk $16.b		; 00 16
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $2E.b		; 00 2E
	brk $37.b		; 00 37
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($CC00.w,X)		; FC 00 CC
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -36.b		; 80 DC
	rti		; 40

	cmp ($40.b,S),Y		; D3 40
.INDEX 16
	rep #$5C		; C2 5C
	bne  79.b		; D0 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	rts		; 60

	rti		; 40

	jmp ($7F00.w,X)		; 7C 00 7F
	brk $7F.b		; 00 7F
	stx $F141.w		; 8E 41 F1
	brk $AE.b		; 00 AE
	rti		; 40

	phk		; 4B
	bmi -110.b		; 30 92
	tsb $0364.w		; 0C 64 03
	ora $0600.w,Y		; 19 00 06
	brk $00.b		; 00 00
	adc $000F00.l,X		; 7F 00 0F 00
	sbc ($00.b),Y		; F1 00
	jsr ($7F00.w,X)		; FC 00 7F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sbc $FCFBFF.l,X		; FF FF FB FC
	sbc $1B1C.w		; ED 1C 1B
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc $08FF74.l,X		; FF 74 FF 08
	jsr ($1E04.w,X)		; FC 04 1E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $F0.b		; 00 F0
	brk $98.b		; 00 98
	brk $4C.b		; 00 4C
	bmi   2.b		; 30 02
	cmp ($3F.b,X)		; C1 3F
	brk $01.b		; 00 01
	inc $013E.w,X		; FE 3E 01
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00.b,S		; E3 00
	and ($C0.b)		; 32 C0
	and [$18.b]		; 27 18
	cmp #$B306.w		; C9 06 B3
	brk $BE.b		; 00 BE
	ora ($62.b,X)		; 01 62
	brk $DC.b		; 00 DC
	brk $00.b		; 00 00
	ora $00FD00.l,X		; 1F 00 FD 00
	inc $3E00.w,X		; FE 00 3E
	brk $CC.b		; 00 CC
	brk $70.b		; 00 70
	brk $9C.b		; 00 9C
	brk $20.b		; 00 20
	bmi -128.b		; 30 80
	iny		; C8
	brk $26.b		; 00 26
	bpl -55.b		; 10 C9
	brk $32.b		; 00 32
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $3E.b		; 00 3E
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	adc $0F00.w,Y		; 79 00 0F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $3E.b		; 00 3E
	brk $C2.b		; 00 C2
	brk $7C.b		; 00 7C
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FC00.w		; C0 00 FC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$06C0.w		; C0 C0 06
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	asl $1B.b		; 06 1B
	asl $0A.b		; 06 0A
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	and $00F900.l,X		; 3F 00 F9 00
	asl $00.b		; 06 00
	ora $0800.w,Y		; 19 00 08
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($4D.b,X)		; 01 4D
	inc $FF40.w,X		; FE 40 FF
	.db $42, $FF		; 42 FF
	ora $3F1E7F.l,X		; 1F 7F 1E 3F
	ora $1F033F.l,X		; 1F 3F 03 1F
	brk $07.b		; 00 07
.ACCU 8
	sep #$A0		; E2 A0
	sbc $BDFFB7.l,X		; FF B7 FF BD
	adc $293F64.l,X		; 7F 64 3F 29
	and $1C1F20.l,X		; 3F 20 1F 1C
	ora [$07.b]		; 07 07
	lsr $E8.b		; 46 E8
	ldx $00D1.w		; AE D1 00
	sbc $F8FF3C.l,X		; FF 3C FF F8
	sbc $C0FCE0.l,X		; FF E0 FC C0
	beq   0.b		; F0 00
	cpy #$0010.w		; C0 10 00
	ora ($01.b,X)		; 01 01
	sbc $D3FFFF.l,X		; FF FF FF D3
	sbc $1CFC27.l,X		; FF 27 FC 1C
	beq  48.b		; F0 30
	cpy #$2FC0.w		; C0 C0 2F
	lda $8337B7.l		; AF B7 37 83
	ora ($5D.b,X)		; 01 5D
	sta $6DA0.w,X		; 9D A0 6D
	ror $B2.b		; 66 B2
	ror $F6.b,X		; 76 F6
	adc $F6.b		; 65 F6
	ora [$FF.b]		; 07 FF
	ora ($7F.b,S),Y		; 13 7F
	ora ($7D.b,X)		; 01 7D
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cmp $DAD0.w,Y		; D9 D0 DA
	cmp ($DE.b),Y		; D1 DE
	bne -55.b		; D0 C9
	bne  13.b		; D0 0D
	bne  63.b		; D0 3F
	brk $FB.b		; 00 FB
	brk $5E.b		; 00 5E
	jsr $F6D0.w		; 20 D0 F6
	cpy #$00F7.w		; C0 F7 00
	sbc ($00.b),Y		; F1 00
	inc $00.b,X		; F6 00
	sbc ($00.b,S),Y		; F3 00
	cpy #$3400.w		; C0 00 34
	brk $39.b		; 00 39
	cld		; D8
	jmp ($00EA.w)		; 6C EA 00
	dec $15.b,X		; D6 15
	sbc #$28.b		; E9 28
	stz $14.b,X		; 74 14
	plb		; AB
	ora [$78.b],Y		; 17 78
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ror $5400.w		; 6E 00 54
	bpl -68.b		; 10 BC
	phd		; 0B
	ldy $D803.w,X		; BC 03 D8
	tsb $50.b		; 04 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$38.b]		; 67 38
	bit $0303.w,X		; 3C 03 03
	jsr ($02E4.w,X)		; FC E4 02
	ora $E815.w,X		; 1D 15 E8
	sbc $0A.b,X		; F5 0A
	beq   7.b		; F0 07
	brk $00.b		; 00 00
	dec A		; 3A
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	sed		; F8
	ora $E0.b,S		; 03 E0
	ora [$10.b]		; 07 10
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	brk $A8.b		; 00 A8
	brk $70.b		; 00 70
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	ldy $7F3F.w,X		; BC 3F 7F
	adc $7F807F.l,X		; 7F 7F 80 7F
	sbc $500000.l,X		; FF 00 00 50
	brk $80.b		; 00 80
	brk $1C.b		; 00 1C
	brk $FF.b		; 00 FF
	trb $00FF.w		; 1C FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $000000.l		; 22 00 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	tsb $1C.b		; 04 1C
	php		; 08
	sec		; 38
	bpl 112.b		; 10 70
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2100.w		; 20 00 21
	brk $42.b		; 00 42
	jsr $2073.w		; 20 73 20
	adc ($20.b),Y		; 71 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $62.b		; 00 62
	brk $73.b		; 00 73
	brk $71.b		; 00 71
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq -128.b		; F0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $07.b		; 00 07
	ora $081D04.l		; 0F 04 1D 08
	lda #$40.b		; A9 40
	adc ($20.b)		; 72 20
	bit $3110.w,X		; 3C 10 31
	ora ($1C.b),Y		; 11 1C
	tsb $C6.b		; 04 C6
	brk $00.b		; 00 00
	ora $001D00.l		; 0F 00 1D 00
	sbc #$01.b		; E9 01
	adc ($03.b,S),Y		; 73 03
	and $033F0E.l,X		; 3F 0E 3F 03
	ora $0EC701.l,X		; 1F 01 C7 0E
	cop $05.b		; 02 05
	tsb $01.b		; 04 01
	brk $09.b		; 00 09
	tsb $4D41.w		; 0C 41 4D
	bmi  60.b		; 30 3C
	jsr $903E.w		; 20 3E 90
	asl $FFF1.w,X		; 1E F1 FF
	plx		; FA
	sbc $F2FFFE.l,X		; FF FE FF F2
	sbc $C3FFB2.l,X		; FF B2 FF C3
	sbc $61FFC1.l,X		; FF C1 FF 61
	adc $0E0084.l,X		; 7F 84 00 0E
	tsb $0E.b		; 04 0E
	tsb $F6.b		; 04 F6
	tsb $94.b		; 04 94
	bra  68.b		; 80 44
	rti		; 40

	pea $9A90.w		; F4 90 9A
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	asl $0E00.w		; 0E 00 0E
	php		; 08
	inc $FC68.w,X		; FE 68 FC
	clv		; B8
	jsr ($FC08.w,X)		; FC 08 FC
	tsb $9E.b		; 04 9E
	lsr $DC04.w		; 4E 04 DC
	dey		; 88
	stz $00.b,X		; 74 00
	trb $10.b		; 14 10
	sty $00.b		; 84 00
	ora $00.b		; 05 00
	tsa		; 3B
	and #$ED.b		; 29 ED
	cmp $80.b		; C5 80
	dec $DC00.w		; CE 00 DC
	dey		; 88
	jsr ($FCE8.w,X)		; FC E8 FC
	sei		; 78
	jmp ($FDF8.w,X)		; 7C F8 FD
	cpy $FF.b		; C4 FF
	cop $EF.b		; 02 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cmp $01C701.l		; CF 01 C7 01
	lsr $01.b		; 46 01
	sta $00.b,S		; 83 00
	ora $00.b,S		; 03 00
	adc ($70.b),Y		; 71 70
	sbc $FD18.w,Y		; F9 18 FD
	tsb $31.b		; 04 31
	sbc ($39.b),Y		; F1 39
	sbc $7939.w,Y		; F9 39 79
	adc $FCFD.w,X		; 7D FD FC
	jsr ($FE8E.w,X)		; FC 8E FE
	asl $FE.b		; 06 FE
	cop $FE.b		; 02 FE
	inc $7E08.w,X		; FE 08 7E
	dey		; 88
	inc $BE88.w,X		; FE 88 BE
	iny		; C8
	ror $C8.b,X		; 76 C8
	inc $FF40.w,X		; FE 40 FF
	brk $DF.b		; 00 DF
	jsl $898989.l		; 22 89 89 89
	bit #$C9.b		; 89 C9
	cmp #$C9.b		; C9 C9
	cmp #$C9.b		; C9 C9
	cmp #$49.b		; C9 49
	eor #$00.b		; 49 00
	brk $77.b		; 00 77
	adc [$5F.b],Y		; 77 5F
	and $BF337D.l,X		; 3F 7D 33 BF
	adc ($FF.b,X)		; 61 FF
	adc ($AF.b,X)		; 61 AF
	adc ($DE.b),Y		; 71 DE
	and $7B00FF.l,X		; 3F FF 00 7B
	tsb $BFBF.w		; 0C BF BF
	lda ($B3.b,S),Y		; B3 B3
	adc ($61.b,X)		; 61 61
	adc ($61.b,X)		; 61 61
	adc ($71.b),Y		; 71 71
	adc $00007F.l,X		; 7F 7F 00 00
	sty $F88C.w		; 8C 8C F8
	cpx #$30FC.w		; E0 FC 30
	inc $7F10.w,X		; FE 10 7F
	dey		; 88
	sbc $F07F98.l		; EF 98 7F F0
	inc $EE02.w,X		; FE 02 EE
	inc A		; 1A
	sbc [$F7.b],Y		; F7 F7
	lda ($B3.b,S),Y		; B3 B3
	sta $9899.w,Y		; 99 99 98
	tya		; 98
	tya		; 98
	tya		; 98
	sed		; F8
	sed		; F8
	ora ($03.b,X)		; 01 03
	ora $031B.w,Y		; 19 1B 03
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
	brk $18.b		; 00 18
	brk $D8.b		; 00 D8
	rti		; 40

	sbc $6349.w,Y		; F9 49 63
	cop $2F.b		; 02 2F
	brk $49.b		; 00 49
	brk $A6.b		; 00 A6
	jsr $40F8.w		; 20 F8 40
	sbc [$FF.b]		; E7 FF
	and [$FF.b]		; 27 FF
	asl $FF.b		; 06 FF
	trb $107F.w		; 1C 7F 10
	and $597930.l,X		; 3F 30 79 59
	sbc $13FF07.l,X		; FF 07 FF 13
	brk $1B.b		; 00 1B
	ora ($1F.b,X)		; 01 1F
	php		; 08
	asl $0B04.w		; 0E 04 0B
	brk $10.b		; 00 10
	brk $7E.b		; 00 7E
	bpl -14.b		; 10 F2
	jsr $1300.w		; 20 00 13
	brk $1B.b		; 00 1B
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	tsb $0F.b		; 04 0F
	ora $7F011F.l		; 0F 1F 01 7F
	ora ($F3.b,X)		; 01 F3
	cmp ($00.b),Y		; D1 00
	cmp $8500.w,X		; DD 00 85
	bra -77.b		; 80 B3
	brk $E9.b		; 00 E9
	rti		; 40

	jsr ($DC00.w,X)		; FC 00 DC
	bpl -114.b		; 10 8E
	asl $F120.w		; 0E 20 F1
	jsr $78FD.w		; 20 FD 78
	sbc $FF4C.w,X		; FD 4C FF
	asl $EF.b		; 06 EF
	ora $FF.b,S		; 03 FF
	and $FF.b,S		; 23 FF
	adc ($FF.b),Y		; 71 FF
	cli		; 58
	bpl -25.b		; 10 E7
	brk $DB.b		; 00 DB
	phb		; 8B
	eor ($03.b),Y		; 51 03
	and ($13.b),Y		; 31 13
	jsl $111023.l		; 22 23 10 11
	ora ($01.b,X)		; 01 01
	jsr $1878.w		; 20 78 18
	sbc $8CDF04.l,X		; FF 04 DF 8C
	cmp $DCFFCC.l,X		; DF CC FF DC
	sbc $FEFFEE.l,X		; FF EE FF FE
	sbc $6C50D8.l,X		; FF D8 50 6C
	php		; 08
	inc $24.b		; E6 24
	cmp $E12FC2.l		; CF C2 2F E1
	eor [$C6.b]		; 47 C6
	txa		; 8A
	tay		; A8
	tsb $60.b		; 04 60
	jsr $10F8.w		; 20 F8 10
	jmp ($FE18.w,X)		; 7C 18 FE
	bmi  -1.b		; 30 FF
	bpl  -1.b		; 10 FF
	sec		; 38
	sbc $98FE54.l,X		; FF 54 FE 98
	jsr ($0005.w,X)		; FC 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc ($C0.b)		; F2 C0
	inc $3620.w		; EE 20 36
	trb $10.b		; 14 10
	php		; 08
	ora ($0C.b),Y		; 11 0C
	asl A		; 0A
	brk $3C.b		; 00 3C
	php		; 08
	tsb $0100.w		; 0C 00 01
	sbc ($11.b,S),Y		; F3 11
	sbc $073F09.l,X		; FF 09 3F 07
	ora $041F02.l,X		; 1F 02 1F 04
	asl $3C00.w		; 0E 00 3C
	brk $0C.b		; 00 0C
	cpy #$E00C.w		; C0 0C E0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	cpy #$60BC.w		; C0 BC 60
	pei ($38.b)		; D4 38
	ror $1F0C.w,X		; 7E 0C 1F
	brk $33.b		; 00 33
	and $CF1F1F.l,X		; 3F 1F 1F CF
	cmp $F3E7E7.l		; CF E7 E7 F3
	sbc ($7B.b,S),Y		; F3 7B
	tda		; 7B
	sta $E09D.w,X		; 9D 9D E0
	cpx #$02BF.w		; E0 BF 02
	cmp $003392.l,X		; DF 92 33 00
	eor ($00.b,X)		; 41 00
	jsr ($EE80.w,X)		; FC 80 EE
	dey		; 88
	eor $1850.w,Y		; 59 50 18
	brk $00.b		; 00 00
	lda $C0FF20.l,X		; BF 20 FF C0
	sbc ($80.b,S),Y		; F3 80
	cmp ($00.b,X)		; C1 00
	jsr ($FE10.w,X)		; FC 10 FE
	ldy #$E0F9.w		; A0 F9 E0
	sed		; F8
	cmp [$80.b]		; C7 80
	and [$00.b]		; 27 00
	tas		; 1B
	cop $07.b		; 02 07
	eor ($15.b,X)		; 41 15
	bvs  72.b		; 70 48
	rts		; 60

	ora #$00.b		; 09 00
	tas		; 1B
	ora ($00.b),Y		; 11 00
	cmp [$C0.b]		; C7 C0
	sbc [$E4.b]		; E7 E4
	sbc $88FFB8.l,X		; FF B8 FF 88
	sbc $F890.w,X		; FD 90 F8
	beq  -7.b		; F0 F9
	cpx #$C0FB.w		; E0 FB C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $84.b		; 00 84
	and $8108.w,Y		; 39 08 81
	bra  33.b		; 80 21
	jsr $0073.w		; 20 73 00
	sta ($00.b,S),Y		; 93 00
	inc $01.b		; E6 01
	ora [$01.b]		; 07 01
	sta $C683.w		; 8D 83 C6
	inc $FE7E.w,X		; FE 7E FE
	dec $8CFE.w,X		; DE FE 8C
	jsr ($9D0D.w,X)		; FC 0D 9D
	ora $FBF9.w,Y		; 19 F9 FB
	xce		; FB
	adc ($F3.b,S),Y		; 73 F3
	sbc $72FF77.l,X		; FF 77 FF 72
	cmp $01F620.l,X		; DF 20 F6 01
	sbc ($C0.b,S),Y		; F3 C0
	bcs -64.b		; B0 C0
	ror $86.b		; 66 86
	cpy #$770E.w		; C0 0E 77
	adc [$77.b],Y		; 77 77
	adc [$71.b],Y		; 77 71
	adc ($09.b),Y		; 71 09
	ora #$CC.b		; 09 CC
	cpy $CFCF.w		; CC CF CF
	sta $B19F.w,Y		; 99 9F B1
	lda $3D0C37.l,X		; BF 37 0C 3D
	asl $3F.b		; 06 3F
	asl $1B.b		; 06 1B
	asl $1F.b		; 06 1F
	cop $1E.b		; 02 1E
	ora $1D.b,S		; 03 1D
	ora $4F.b,S		; 03 4F
	eor ($CE.b,X)		; 41 CE
	dec $CECE.w		; CE CE CE
	dec $C6.b		; C6 C6
	inc $E6.b		; E6 E6
	sbc [$E7.b]		; E7 E7
	sbc $E3.b,S		; E3 E3
	sbc $E3.b,S		; E3 E3
	lda ($F3.b,S),Y		; B3 F3
	inc $FE18.w,X		; FE 18 FE
	clc		; 18
	inc $EE18.w		; EE 18 EE
	clc		; 18
	inc $FE08.w,X		; FE 08 FE
	php		; 08
	inc $FE08.w,X		; FE 08 FE
	php		; 08
	ora $1919.w,Y		; 19 19 19
	ora $1919.w,Y		; 19 19 19
	ora $1919.w,Y		; 19 19 19
	ora $0909.w,Y		; 19 09 09
	ora #$09.b		; 09 09
	ora #$09.b		; 09 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $40.b		; E4 40
	cmp $049E06.l		; CF 06 9E 04
	bit $3B18.w,X		; 3C 18 3B
	brk $0E.b		; 00 0E
	cop $3C.b		; 02 3C
	tsb $010D.w		; 0C 0D 01
	ora $E7.b,S		; 03 E7
	brk $CF.b		; 00 CF
	brk $9E.b		; 00 9E
	brk $3C.b		; 00 3C
	brk $3B.b		; 00 3B
	ora ($0F.b,X)		; 01 0F
	ora $3F.b,S		; 03 3F
	cop $0F.b		; 02 0F
	tas		; 1B
	php		; 08
	bit $5310.w,X		; 3C 10 53
	and ($43.b,X)		; 21 43
	ora ($01.b,X)		; 01 01
	brk $1E.b		; 00 1E
	brk $3B.b		; 00 3B
	asl A		; 0A
	ora $0401.w		; 0D 01 04
	ora $003F03.l,X		; 1F 03 3F 00
	adc ($00.b,S),Y		; 73 00
	eor $00.b,S		; 43 00
	ora ($00.b,X)		; 01 00
	asl $3F04.w,X		; 1E 04 3F
	cop $0F.b		; 02 0F
	sta $00.b,S		; 83 00
	and ($30.b),Y		; 31 30
	sbc ($90.b),Y		; F1 90
	ldy #$4000.w		; A0 00 40
	brk $50.b		; 00 50
	clc		; 18
	sty $1C.b		; 84 1C
	sty $9C.b		; 84 9C
	jmp ($CEFC.w,X)		; 7C FC CE
	inc $FE0E.w,X		; FE 0E FE
	ora $7F3FBF.l,X		; 1F BF 3F 7F
	and [$7F.b]		; 27 7F
	adc $FF.b,S		; 63 FF
	adc $FF.b,S		; 63 FF
	pea $D107.w		; F4 07 D1
	lda $F0.b,S		; A3 F0
	ldy #$20F1.w		; A0 F1 20
	beq  32.b		; F0 20
	sbc ($A2.b)		; F2 A2
	beq -94.b		; F0 A2
	beq -93.b		; F0 A3
	php		; 08
	ora $AFAFAC.l		; 0F AC AF AF
	lda $2F2F2E.l		; AF 2E 2F 2F
	and $ADAFAD.l		; 2F AD AF AD
	lda $58AFAC.l		; AF AC AF 58
	bpl 120.b		; 10 78
	bpl -100.b		; 10 9C
	php		; 08
	ora $008000.l		; 0F 00 80 00
	cpy #$6000.w		; C0 00 60
	rti		; 40

	ora [$80.b],Y		; 17 80
	ldy #$80F8.w		; A0 F8 80
	sed		; F8
	brk $9C.b		; 00 9C
	brk $0F.b		; 00 0F
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rts		; 60

	sbc [$06.b],Y		; F7 06
	brk $83.b		; 00 83
	.db $82, $C8, $0C		; 82 C8 0C
	bne  30.b		; D0 1E
	bne  95.b		; D0 5F
	cpy #$C006.w		; C0 06 C0
	brk $D3.b		; 00 D3
	bpl  -8.b		; 10 F8
	inc $FF7C.w,X		; FE 7C FF
	and ($3F.b,S),Y		; 33 3F
	and ($3F.b,X)		; 21 3F
	jsr $397F.w		; 20 7F 39
	and $2C3F3F.l,X		; 3F 3F 3F 2C
	and $300010.l,X		; 3F 10 00 30
	brk $F0.b		; 00 F0
	jsr $6070.w		; 20 70 60
	bit $00.b		; 24 00
	bit $BC00.w		; 2C 00 BC
	php		; 08
	sed		; F8
	bvs   0.b		; 70 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	beq -128.b		; F0 80
	beq -64.b		; F0 C0
	cpx $C0.b		; E4 C0
	cpx $FC40.w		; EC 40 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	cpy #$83C0.w		; C0 C0 83
	brk $67.b		; 00 67
	jsr $60E7.w		; 20 E7 60
	asl $01.b		; 06 01
	ora $8F0B.w		; 0D 0B 8F
	.db $82, $FF, $FF		; 82 FF FF
	and $FC7CFF.l,X		; 3F FF 7C FC
	clc		; 18
	sei		; 78
	ora $FBF9.w,Y		; 19 F9 FB
	xce		; FB
	sbc ($FB.b,S),Y		; F3 FB
	adc ($F2.b)		; 72 F2
	brk $00.b		; 00 00
	and $00FF30.l		; 2F 30 FF 00
	sbc $FC7B00.l,X		; FF 00 7B FC
	sbc $FEFE.w,X		; FD FE FE
	and ($FF.b,S),Y		; 33 FF
	and ($FF.b),Y		; 31 FF
	sbc $00F0C0.l,X		; FF C0 F0 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $FFFF.w,X		; FE FF FF
	and ($33.b,S),Y		; 33 33
	and ($31.b),Y		; 31 31
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	asl A		; 0A
	cop $FB.b		; 02 FB
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	ora $31FF04.l		; 0F 04 FF 31
	brk $4B.b		; 00 4B
	brk $BB.b		; 00 BB
	php		; 08
	sbc $20.b,S		; E3 20
	ora $00.b,S		; 03 00
.ACCU 8
	sep #$21		; E2 21
	lda ($11.b,S),Y		; B3 11
	eor ($01.b,S),Y		; 53 01
	dec $84FE.w		; CE FE 84
	cpy $BC04.w		; CC 04 BC
	trb $FDFC.w		; 1C FC FD
	sbc $FD1D.w,X		; FD 1D FD
	ora $8DBD.w		; 0D BD 8D
	cmp $61D9.w,X		; DD D9 61
	sed		; F8
	rti		; 40

	bvs -64.b		; 70 C0
	lda ($C2.b)		; B2 C2
	sbc $80.b,S		; E3 80
	sbc $80.b,S		; E3 80
	sbc $82.b,S		; E3 82
	adc ($80.b,X)		; 61 80
	ror $67.b		; 66 67
	sbc [$E7.b]		; E7 E7
	cmp $CFCDCF.l		; CF CF CD CF
	jmp.w [$9CDF]		; DC DF 9C
	sta $9E9F9C.l,X		; 9F 9C 9F 9E
	sta $4CC40C.l,X		; 9F 0C C4 4C
	cpy $1C.b		; C4 1C
	tsb $19.b		; 04 19
	brk $DB.b		; 00 DB
	rti		; 40

	lda $41FB08.l,X		; BF 08 FB 41
	sbc ($20.b)		; F2 20
	and ($FF.b,S),Y		; 33 FF
	and ($FF.b,S),Y		; 33 FF
	sbc $FF.b,S		; E3 FF
	inc $FF.b		; E6 FF
	bit $FF.b		; 24 FF
	rti		; 40

	sbc $01FB00.l,X		; FF 00 FB 01
	sbc ($D3.b,S),Y		; F3 D3
	.db $62, $F0, $20		; 62 F0 20
	pla		; 68
	bmi 120.b		; 30 78
	bpl  56.b		; 10 38
	brk $12.b		; 00 12
	cop $64.b		; 02 64
	ror $60.b		; 66 60
	rol $6C.b		; 26 6C
	adc $B76F6F.l		; 6F 6F 6F B7
	lda [$B7.b],Y		; B7 B7
	lda [$C7.b],Y		; B7 C7
	cmp [$ED.b]		; C7 ED
	sbc $99FF99.l		; EF 99 FF 99
	sbc $CE0002.l,X		; FF 02 00 CE
	brk $3C.b		; 00 3C
	php		; 08
	iny		; C8
	cpy #$00F0.w		; C0 F0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	brk $CE.b		; 00 CE
	cpy #$30FC.w		; C0 FC 30
	sed		; F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	asl A		; 0A
	ora $78.b,S		; 03 78
	ora ($F4.b,X)		; 01 F4
	and $3D.b,X		; 35 3D
	ora ($06.b,X)		; 01 06
	cop $03.b		; 02 03
	ora ($79.b,X)		; 01 79
	brk $3F.b		; 00 3F
	clc		; 18
	tsb $0F.b		; 04 0F
	asl $7F.b		; 06 7F
	asl A		; 0A
	sbc $013F02.l,X		; FF 02 3F 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	adc $3F00.w,Y		; 79 00 3F
	rol $2E0C.w,X		; 3E 0C 2E
	clc		; 18
	jmp ($5C18.w,X)		; 7C 18 5C
	bmi 120.b		; 30 78
	bmi  89.b		; 30 59
	and ($33.b,X)		; 21 33
	cop $83.b		; 02 83
	brk $CD.b		; 00 CD
	cmp $DDDD.w		; CD DD DD
	txy		; 9B
	txy		; 9B
	tyx		; BB
	tyx		; BB
	lda [$B7.b],Y		; B7 B7
	ldx $B7.b,Y		; B6 B7
	cpy $7CCF.w		; CC CF 7C
	sbc $010002.l,X		; FF 02 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($01.b,X)		; 01 01
	brk $0E.b		; 00 0E
	brk $3D.b		; 00 3D
	tsb $020E.w		; 0C 0E 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	cop $3F.b		; 02 3F
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	sed		; F8
	php		; 08
	inc $3806.w,X		; FE 06 38
	php		; 08
	sta ($00.b,X)		; 81 00
	lda ($20.b),Y		; B1 20
	sta ($00.b,S),Y		; 93 00
	cld		; D8
	brk $FF.b		; 00 FF
	sbc $01FF07.l,X		; FF 07 FF 01
	sbc $7EFFC7.l,X		; FF C7 FF 7E
	inc $FE4E.w,X		; FE 4E FE
	jmp ($27FC.w)		; 6C FC 27
	sbc $50A3F0.l,X		; FF F0 A3 50
	ldx #$00F0.w		; A2 F0 00
	cpx #$C740.w		; E0 40 C7
	asl $C3.b		; 06 C3
	cop $E0.b		; 02 E0
	brk $B0.b		; 00 B0
	rti		; 40

	ldy $ADAF.w		; AC AF AD
	lda $5F4F4F.l		; AF 4F 4F 5F
	eor $3C3F38.l,X		; 5F 38 3F 3C
	and $6F1F1F.l,X		; 3F 1F 1F 6F
	adc $5C842E.l		; 6F 2E 84 5C
	php		; 08
	jmp.w [$8888]		; DC 88 88
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	jsr $10B8.w		; 20 B8 10
	rol $5000.w,X		; 3E 00 50
	inc $DC80.w,X		; FE 80 DC
	brk $DC.b		; 00 DC
	brk $88.b		; 00 88
	brk $E0.b		; 00 E0
	rti		; 40

	beq  64.b		; F0 40
	sed		; F8
	cpy #$DAFE.w		; C0 FE DA
	clc		; 18
	stp		; DB
	bvc -100.b		; 50 9C
	bpl -97.b		; 10 9F
	bra -97.b		; 80 9F
	bpl -127.b		; 10 81
	sta ($C2.b,X)		; 81 C2
	asl $E8.b		; 06 E8
	ora $243E24.l		; 0F 24 3E 24
	adc $607F63.l,X		; 7F 63 7F 60
	sbc $7E7F60.l,X		; FF 60 7F 7E
	sbc $103F39.l,X		; FF 39 3F 10
	ora $000070.l,X		; 1F 70 00 00
	brk $C0.b		; 00 C0
	brk $0E.b		; 00 0E
	brk $7C.b		; 00 7C
	php		; 08
	cld		; D8
	bvc  48.b		; 50 30
	brk $30.b		; 00 30
	jsr $7000.w		; 20 00 70
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $0E.b		; 00 0E
	brk $7C.b		; 00 7C
	jsr $C0F8.w		; 20 F8 C0
	beq -64.b		; F0 C0
	beq -49.b		; F0 CF
	.db $42, $8F		; 42 8F
	.db $82, $0F, $01		; 82 0F 01
	ora $C4C700.l		; 0F 00 C7 C4
	adc $E0.b,S		; 63 E0
	ora ($C1.b,X)		; 01 C1
	ora [$C4.b]		; 07 C4
	and ($F2.b)		; 32 F2
	adc ($F3.b,S),Y		; 73 F3
	sbc ($F3.b,S),Y		; F3 F3
	beq -16.b		; F0 F0
	sec		; 38
	jsr ($FC1C.w,X)		; FC 1C FC
	rol $38FF.w,X		; 3E FF 38
	jsr ($79B7.w,X)		; FC B7 79
	sbc $FEFF31.l,X		; FF 31 FF FE
	lda [$78.b],Y		; B7 78
	sbc $02FF30.l,X		; FF 30 FF 02
	sbc $11FE00.l,X		; FF 00 FE 11
	adc $3379.w,Y		; 79 79 33
	and ($FF.b,S),Y		; 33 FF
	sbc $307878.l,X		; FF 78 78 30
	bmi   0.b		; 30 00
	cop $10.b		; 02 10
	bpl  17.b		; 10 11
	ora ($37.b),Y		; 11 37
	bpl  25.b		; 10 19
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $1F.b		; 00 1F
	php		; 08
	asl $0806.w		; 0E 06 08
	and $001900.l,X		; 3F 00 19 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $1F.b		; 00 1F
	ora ($0F.b,X)		; 01 0F
	eor [$01.b],Y		; 57 01
	adc [$01.b]		; 67 01
	eor $43.b		; 45 43
	stx $03.b		; 86 03
	eor $40CF02.l		; 4F 02 CF 40
	ora $061B00.l		; 0F 00 1B 06
	bit #$D9.b		; 89 D9
	txy		; 9B
	xce		; FB
	tyx		; BB
	xce		; FB
	tda		; 7B
	xce		; FB
	and ($73.b,S),Y		; 33 73
	and ($F2.b)		; 32 F2
	beq -16.b		; F0 F0
	inc $E6.b		; E6 E6
	cmp ($0D.b,X)		; C1 0D
	cpy #$C80E.w		; C0 0E C8
	asl $0080.w		; 0E 80 00
	sta [$03.b]		; 87 03
	phb		; 8B
	brk $88.b		; 00 88
	brk $8C.b		; 00 8C
	php		; 08
	lda ($BF.b)		; B2 BF
	and ($3F.b),Y		; 31 3F
	and ($3F.b),Y		; 31 3F
	adc $7F787F.l,X		; 7F 7F 78 7F
	bvs 123.b		; 70 7B
	bvs 120.b		; 70 78
	bvs 124.b		; 70 7C
	ldx #$A700.w		; A2 00 A7
	ora ($8F.b,X)		; 01 8F
	asl $4E.b		; 06 4E
	brk $24.b		; 00 24
	brk $F2.b		; 00 F2
	jsr $0030.w		; 20 30 00
	bpl   0.b		; 10 00
	ora ($A3.b,X)		; 01 A3
	brk $A7.b		; 00 A7
	brk $8F.b		; 00 8F
	bra -50.b		; 80 CE
	cpy #$00E4.w		; C0 E4 00
	sbc ($00.b)		; F2 00
	bmi   0.b		; 30 00
	bpl -64.b		; 10 C0
	cop $FC.b		; 02 FC
	mvp $0C,$DE		; 44 DE 0C
	asl $0D08.w,X		; 1E 08 0D
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $3D.b		; 00 3D
	sbc $01FF03.l,X		; FF 03 FF 01
	cmp $001F01.l,X		; DF 01 1F 00
	ora $0800.w		; 0D 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	tya		; 98
	brk $90.b		; 00 90
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	jsr $C0E0.w		; 20 E0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	brk $90.b		; 00 90
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0E0C.w		; 1C 0C 0E
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1E.b		; 00 1E
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $000F01.l,X		; 1F 01 0F 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	ora $000700.l,X		; 1F 00 07 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	trb $83.b		; 14 83
	beq   0.b		; F0 00
	sec		; 38
	and #$38.b		; 29 38
	inc $30.b,X		; F6 30
	bit $1C08.w,X		; 3C 08 1C
	php		; 08
	tsb $E800.w		; 0C 00 E8
	sbc $C7FF0C.l,X		; FF 0C FF C7
	sbc $08FFC6.l,X		; FF C6 FF 08
	inc $3C00.w,X		; FE 00 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	sbc $39FFC6.l,X		; FF C6 FF 39
	sbc $FC03.w,X		; FD 03 FC
	and ($FF.b,S),Y		; 33 FF
	sec		; 38
	lsr $F9B1.w		; 4E B1 F9
	stx $AD.b		; 86 AD
	phx		; DA
	dec $C6.b		; C6 C6
	adc $037D.w,X		; 7D 7D 03
	ora $33.b,S		; 03 33
	and ($38.b,S),Y		; 33 38
	sec		; 38
	lda ($B1.b),Y		; B1 B1
	stx $86.b		; 86 86
	phx		; DA
	phx		; DA
	adc $6ADFC8.l,X		; 7F C8 DF 6A
	lda $F76A.w,X		; BD 6A F7
	phb		; 8B
	jsr ($FF13.w,X)		; FC 13 FF
	brk $FF.b		; 00 FF
	ora $EC.b,S		; 03 EC
	tas		; 1B
	iny		; C8
	iny		; C8
	ror A		; 6A
	ror A		; 6A
	ror A		; 6A
	ror A		; 6A
	phd		; 0B
	phb		; 8B
	and ($33.b,S),Y		; 33 33
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tas		; 1B
	tas		; 1B
	tsb $00.b		; 04 00
	adc $3304.w,X		; 7D 04 33
	bpl  29.b		; 10 1D
	brk $73.b		; 00 73
	ora ($3B.b,X)		; 01 3B
	bpl  30.b		; 10 1E
	php		; 08
	trb $00.b		; 14 00
	ora $07.b,S		; 03 07
	cop $7F.b		; 02 7F
	tsb $003F.w		; 0C 3F 00
	ora $7300.w,X		; 1D 00 73
	brk $3B.b		; 00 3B
	ora ($1F.b,X)		; 01 1F
	phd		; 0B
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$4000.w		; C0 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$4000.w		; C0 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	.db $62, $00, $07		; 62 00 07
	cop $33.b		; 02 33
	brk $38.b		; 00 38
	bpl  29.b		; 10 1D
	php		; 08
	asl $00.b,X		; 16 00
	php		; 08
	brk $0B.b		; 00 0B
	brk $01.b		; 00 01
	adc $00.b,S		; 63 00
	ora [$00.b]		; 07 00
	and ($00.b,S),Y		; 33 00
	sec		; 38
	brk $1D.b		; 00 1D
	ora #$1F.b		; 09 1F
	ora [$0F.b]		; 07 0F
	tsb $0F.b		; 04 0F
	stx $81.b		; 86 81
	ora [$00.b]		; 07 00
	ora [$12.b],Y		; 17 12
	ror $73.b,X		; 76 73
	sbc $23.b		; E5 23
	and [$01.b]		; 27 01
	rol $01.b		; 26 01
	eor [$04.b]		; 47 04
	adc $F8F9.w,Y		; 79 F9 F8
	sed		; F8
	nop		; EA
	plx		; FA
	phb		; 8B
	xce		; FB
	tas		; 1B
	xce		; FB
	ora $1939.w,Y		; 19 39 19
	and $7C38.w,Y		; 39 38 7C
	php		; 08
	brk $0C.b		; 00 0C
	pla		; 68
	rol $F4.b,X		; 36 F4
	adc $527FE2.l,X		; 7F E2 7F 52
	adc ($40.b,S),Y		; 73 40
	lda ($00.b,X)		; A1 00
	cmp ($80.b,X)		; C1 80
	beq  -8.b		; F0 F8
	bcc  -4.b		; 90 FC
	php		; 08
	inc $FF00.w,X		; FE 00 FF
	bra  -1.b		; 80 FF
	bra -13.b		; 80 F3
	rti		; 40

	sbc ($00.b,X)		; E1 00
	cmp ($80.b,X)		; C1 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	rti		; 40

	jsr ($3020.w,X)		; FC 20 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	brk $FC.b		; 00 FC
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	tsb $0C.b		; 04 0C
	ora $0F.b		; 05 0F
	ora $1F.b,X		; 15 1F
	clc		; 18
	ora [$1D.b],Y		; 17 1D
	ora ($1A.b)		; 12 1A
	bpl   8.b		; 10 08
	cop $08.b		; 02 08
	trb $0C.b		; 14 0C
	ora ($0F.b,S),Y		; 13 0F
	bpl  31.b		; 10 1F
	jsr $201F.w		; 20 1F 20
	ora $201F20.l,X		; 1F 20 1F 20
	ora $2F30.w		; 0D 30 2F
	rol $3D27.w,X		; 3E 27 3D
	sta $BC.b,S		; 83 BC
	eor ($EC.b),Y		; 51 EC
	sty $68.b,X		; 94 68
	stz $0B.b		; 64 0B
	mvp $01,$91		; 44 91 01
	lda ($3F.b)		; B2 3F
	rti		; 40

	and $40BF40.l,X		; 3F 40 BF 40
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($6E00.w,X)		; FC 00 6E
	brk $4D.b		; 00 4D
	brk $B2.b		; 00 B2
	rol $64DA.w		; 2E DA 64
	sta $72.b		; 85 72
	sbc [$10.b]		; E7 10
	lda ($00.b)		; B2 00
	cpx #$8440.w		; E0 40 84
	stx $C5.b		; 86 C5
	dec $41BE.w		; CE BE 41
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $79.b		; 00 79
	brk $31.b		; 00 31
	brk $7D.b		; 00 7D
	lda $33.b		; A5 33
	sbc [$BA.b]		; E7 BA
	sbc $D8EF58.l		; EF 58 EF D8
	adc $3C0FE8.l		; 6F E8 0F 3C
	and $7A7E68.l,X		; 3F 68 7E 7A
	brk $38.b		; 00 38
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora ($03.b,X)		; 01 03
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	asl $03.b		; 06 03
	cop $02.b		; 02 02
	ora $05.b,S		; 03 05
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($04.b,X)		; 01 04
	cli		; 58
	asl $08.b		; 06 08
	ora [$00.b]		; 07 00
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora [$08.b]		; 07 08
	ora $1C.b,S		; 03 1C
	ora ($02.b,X)		; 01 02
	pei ($FD.b)		; D4 FD
	mvp $06,$FD		; 44 FD 06
	sbc $80FF04.l,X		; FF 04 FF 80
	adc $CE3F20.l,X		; 7F 20 3F CE
	ora ($A4.b),Y		; 11 A4
	dex		; CA
	and $02.b,X		; 35 02
	tsb $0E02.w		; 0C 02 0E
	brk $1E.b		; 00 1E
	brk $8E.b		; 00 8E
	brk $C0.b		; 00 C0
	brk $EE.b		; 00 EE
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	sta $158C.w,Y		; 99 8C 15
	trb $8C.b		; 14 8C
	asl $9E.b		; 06 9E
	sta $9F.b,S		; 83 9F
	cpx $FB.b		; E4 FB
	ora ($EE.b),Y		; 11 EE
	cop $FD.b		; 02 FD
	php		; 08
	ror $8D.b		; 66 8D
	.db $62, $94, $63		; 62 94 63
	stx $61.b,Y		; 96 61
	sta [$60.b],Y		; 97 60
	inc $00.b,X		; F6 00
	sbc ($00.b),Y		; F1 00
	cop $00.b		; 02 00
	cmp $4AF3.w		; CD F3 4A
	inc $0C.b,X		; F6 0C
	stz $28.b,X		; 74 28
	cld		; D8
	phy		; 5A
	tsx		; BA
	ldx $047E.w,Y		; BE 7E 04
	pea $F000.w		; F4 00 F0
	sbc $004E00.l		; EF 00 4E 00
	tsb $B880.w		; 0C 80 B8
	brk $7A.b		; 00 7A
	brk $FE.b		; 00 FE
	brk $64.b		; 00 64
	php		; 08
	jsr $1A0D.w		; 20 0D 1A
	bpl  36.b		; 10 24
	bit $05.b,X		; 34 05
	and $2F.b		; 25 2F
	eor $491F73.l		; 4F 73 1F 49
	ora $605F02.l,X		; 1F 02 5F 60
	eor $3B201F.l,X		; 5F 1F 20 3B
	brk $3A.b		; 00 3A
	rti		; 40

	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	bra  97.b		; 80 61
	bra  97.b		; 80 61
	brk $40.b		; 00 40
	sec		; 38
	brk $70.b		; 00 70
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bvs -128.b		; 70 80
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	tsb $0C.b		; 04 0C
	cop $0E.b		; 02 0E
	asl $0A.b		; 06 0A
	ora $121B.w,X		; 1D 1B 12
	ora $0801.w,Y		; 19 01 08
	ora $09.b		; 05 09
	ora $09.b,S		; 03 09
	tsb $0E13.w		; 0C 13 0E
	ora ($0E.b),Y		; 11 0E
	ora ($1F.b),Y		; 11 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	bmi  64.b		; 30 40
	bvs -88.b		; 70 A8
	cld		; D8
	ldy $DC.b		; A4 DC
	pei ($8C.b)		; D4 8C
	clv		; B8
	bit $3A36.w		; 2C 36 3A
	dec $EA.b,X		; D6 EA
	bmi -64.b		; 30 C0
	bvs -116.b		; 70 8C
	sed		; F8
	tsb $FC.b		; 04 FC
	ora ($FC.b,X)		; 01 FC
	ora $DC.b,S		; 03 DC
	cop $CE.b		; 02 CE
	brk $1E.b		; 00 1E
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($15.b,X)		; 01 15
	ora $19.b,X		; 15 19
	trb $1C09.w		; 1C 09 1C
	ora ($1C.b,X)		; 01 1C
	ora ($1C.b),Y		; 11 1C
	ora ($02.b,X)		; 01 02
	ora ($26.b,X)		; 01 26
	ora ($36.b,X)		; 01 36
	ora $2A.b,X		; 15 2A
	ora $1D22.w,X		; 1D 22 1D
	jsl $1D221D.l		; 22 1D 22 1D
	jsl $DC7165.l		; 22 65 71 DC
	sbc #$BC.b		; E9 BC
	eor $B25E95.l		; 4F 95 5E B2
	jmp ($3C61.w,X)		; 7C 61 3C
	bvs  61.b		; 70 3D
	lda #$BC.b		; A9 BC
	ror $F680.w,X		; 7E 80 F6
	brk $F0.b		; 00 F0
	brk $E1.b		; 00 E1
	brk $C3.b		; 00 C3
	brk $C3.b		; 00 C3
	brk $C3.b		; 00 C3
	brk $43.b		; 00 43
	brk $83.b		; 00 83
	sbc $7FFD3A.l,X		; FF 3A FD 7F
	sbc $102F0D.l,X		; FF 0D 2F 10
	tsb $20.b		; 04 20
	ora $35C0.w,X		; 1D C0 35
	nop		; EA
	ora $00.b,X		; 15 00
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F6.b		; 00 F6
	brk $EA.b		; 00 EA
	brk $EA.b		; 00 EA
	brk $37.b		; 00 37
	sbc [$07.b]		; E7 07
	sbc $57.b,S		; E3 57
	lda ($9E.b,S),Y		; B3 9E
	xce		; FB
	ldx $88DB.w		; AE DB 88
	tda		; 7B
	dex		; CA
	and $B952.w,Y		; 39 52 B9
	ora $001F00.l,X		; 1F 00 1F 00
	cmp $00C700.l		; CF 00 C7 00
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	eor [$00.b]		; 47 00
	bit $2C23.w		; 2C 23 2C
	and ($10.b,X)		; 21 10
	and ($10.b),Y		; 31 10
	and ($60.b),Y		; 31 60
	eor ($60.b,S),Y		; 53 60
	tad		; 5B
	plp		; 28
	eor ($09.b,S),Y		; 53 09
	bvc  44.b		; 50 2C
	bpl  46.b		; 10 2E
	bvc  54.b		; 50 36
	pha		; 48
	rol $48.b,X		; 36 48
	bvs  12.b		; 70 0C
	sei		; 78
	sty $78.b		; 84 78
	sty $7B.b		; 84 7B
	sty $03.b		; 84 03
	jsr ($FB04.w,X)		; FC 04 FB
	php		; 08
	sbc [$11.b],Y		; F7 11
	inc $DD22.w		; EE 22 DD
	mvp $90,$3A		; 44 3A 90
	jmp ($F000.w)		; 6C 00 F0
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	rol $FC00.w,X		; 3E 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $43.b		; 00 43
	adc $7C62.w		; 6D 62 7C
	cpy $78.b		; C4 78
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,S),Y		; 93 00
	.db $82, $00, $84		; 82 00 84
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A2.b		; 00 A2
	bit $BDE1.w,X		; 3C E1 BD
	cpx #$70FC.w		; E0 FC 70
	jmp ($3A39.w)		; 6C 39 3A
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cmp $00.b,S		; C3 00
	cpy #$C102.w		; C0 02 C1
	cop $71.b		; 02 71
	cop $39.b		; 02 39
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
	ora ($41.b,X)		; 01 41
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	adc ($01.b,X)		; 61 01
	rti		; 40

	eor ($22.b,X)		; 41 22
	sbc #$EF.b		; E9 EF
	rol A		; 2A
	ora $0634.w		; 0D 34 06
	lsr $67.b,X		; 56 67
	cmp ($E0.b)		; D2 E0
	cmp ($E1.b,S),Y		; D3 E1
	sei		; 78
	sbc ($79.b,X)		; E1 79
	sbc ($F3.b),Y		; F1 F3
	brk $33.b		; 00 33
	rti		; 40

	and $7840.w,Y		; 39 40 78
	bra  -2.b		; 80 FE
	ora ($FF.b,X)		; 01 FF
	brk $FD.b		; 00 FD
	cop $FD.b		; 02 FD
	cop $C8.b		; 02 C8
	sbc [$7C.b],Y		; F7 7C
	xce		; FB
	tya		; 98
	ror $1D60.w,X		; 7E 60 1D
	bpl -50.b		; 10 CE
	sec		; 38
	tsb $C8.b		; 04 C8
	dec $26.b		; C6 26
	cpx #$00FA.w		; E0 FA 00
	jsr ($FC00.w,X)		; FC 00 FC
	ora ($FC.b,X)		; 01 FC
	cop $3C.b		; 02 3C
	ora ($3C.b,X)		; 01 3C
	cmp $CE.b,S		; C3 CE
	and ($E6.b),Y		; 31 E6
	ora $3808.w,Y		; 19 08 38
	mvp $66,$5C		; 44 5C 66
	ror $7779.w		; 6E 79 77
	dec A		; 3A
	adc $8C.b,X		; 75 8C
	sbc ($C7.b,X)		; E1 C7
	ldx #$8F4D.w		; A2 4D 8F
	dey		; 88
	eor $4C.b		; 45 4C
	lda $6E.b,S		; A3 6E
	sta ($7F.b),Y		; 91 7F
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	brk $FD.b		; 00 FD
	brk $F0.b		; 00 F0
	brk $12.b		; 00 12
	and $100C.w		; 2D 0C 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,S),Y		; 33 00
	trb $0023.w		; 1C 23 00
	trb $0000.w		; 1C 00 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $01.b		; 05 01
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $E2.b,X		; 16 E2
	rol A		; 2A
	inc $F404.w		; EE 04 F4
	trb $ACF4.w		; 1C F4 AC
	stz $9C.b		; 64 9C
	cpx $B8.b		; E4 B8
	iny		; C8
	bmi  48.b		; 30 30
	asl $1600.w,X		; 1E 00 16
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $9C.b		; 00 9C
	brk $1C.b		; 00 1C
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	tsb $0E02.w		; 0C 02 0E
	cop $0E.b		; 02 0E
	ora [$1B.b],Y		; 17 1B
	eor $5B.b,X		; 55 5B
	eor $5B.b,X		; 55 5B
	rol $79.b,X		; 36 79
	rol $0C71.w,X		; 3E 71 0C
	ora ($0E.b,S),Y		; 13 0E
	eor ($0E.b),Y		; 51 0E
	eor ($1F.b),Y		; 51 1F
	rts		; 60

	eor $A05F20.l,X		; 5F 20 5F A0
	adc $807F80.l,X		; 7F 80 7F 80
	rts		; 60

	sei		; 78
	bra  56.b		; 80 38
	jsr $10B9.w		; 20 B9 10
	tas		; 1B
	plp		; 28
	ora $858FAE.l		; 0F AE 8F 85
	sta [$A0.b]		; 87 A0
	lda [$87.b]		; A7 87
	brk $C7.b		; 00 C7
	brk $C6.b		; 00 C6
	brk $64.b		; 00 64
	bra  48.b		; 80 30
	cpy #$40B0.w		; C0 B0 40
	dey		; 88
	bvs -88.b		; 70 A8
	bvc -102.b		; 50 9A
	adc $45.b		; 65 45
	txs		; 9A
	sbc ($0D.b)		; F2 0D
.INDEX 16
	rep #$1D		; C2 1D
	sbc $867900.l,X		; FF 00 79 86
	sta $0AC6.w,Y		; 99 C6 0A
	sbc [$9A.b],Y		; F7 9A
	brk $65.b		; 00 65
	brk $F2.b		; 00 F2
	brk $E2.b		; 00 E2
	brk $FF.b		; 00 FF
	brk $79.b		; 00 79
	brk $39.b		; 00 39
	brk $08.b		; 00 08
	brk $92.b		; 00 92
	sei		; 78
	cop $DB.b		; 02 DB
	ldy $0B7F.w		; AC 7F 0B
	sbc $817E92.l,X		; FF 92 7E 81
	adc $85FF4F.l,X		; 7F 4F FF 85
	jsr ($0087.w,X)		; FC 87 00
	bit $00.b		; 24 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	inc A		; 1A
	adc ($4A.b),Y		; 71 4A
	adc ($53.b),Y		; 71 53
	rts		; 60

	asl $24.b,X		; 16 24
	ora $25.b,X		; 15 25
	and [$37.b]		; 27 37
	and $171F37.l		; 2F 37 1F 17
	adc $007F80.l,X		; 7F 80 7F 00
	adc $403B00.l,X		; 7F 00 3B 40
	dec A		; 3A
	rti		; 40

	sec		; 38
	rti		; 40

	sec		; 38
	rti		; 40

	clc		; 18
	jsr $AEAF.w		; 20 AF AE
	cmp $EF.b		; C5 EF
	bvc  -1.b		; 50 FF
	bmi -45.b		; 30 D3
	bra  83.b		; 80 53
	pei ($85.b)		; D4 85
	cpx $46ED.w		; EC ED 46
	inc $50AF.w		; EE AF 50
	sbc $10.b		; E5 10
	sbc ($00.b)		; F2 00
	sbc ($0C.b),Y		; F1 0C
	beq  12.b		; F0 0C
	stz $0A.b,X		; 74 0A
	trb $1E02.w		; 1C 02 1E
	ora ($91.b,X)		; 01 91
	lda $AC13C0.l,X		; BF C0 13 AC
	sta ($14.b)		; 92 14
	dex		; CA
	rti		; 40

	inc $40.b,X		; F6 40
	inc $7FD0.w,X		; FE D0 7F
	eor ($BE.b)		; 52 BE
	bra  64.b		; 80 40
	cpy #$AC2C.w		; C0 2C AC
	eor ($14.b,X)		; 41 14
	and ($40.b,X)		; 21 40
	ora #$50.b		; 09 50
	ora ($DC.b,X)		; 01 DC
	brk $5E.b		; 00 5E
	ora ($04.b,X)		; 01 04
	cpx $F722.w		; EC 22 F7
	adc ($FB.b)		; 72 FB
	pla		; 68
	ldx $8630.w		; AE 30 86
	and #$17.b		; 29 17
	lda ($B9.b,X)		; A1 B9
.INDEX 16
	rep #$D3		; C2 D3
	ora $10.b,S		; 03 10
	jsr $7008.w		; 20 08 70
	tsb $68.b		; 04 68
	ora ($30.b),Y		; 11 30
	eor #$29.b		; 49 29
	cpy #$46A1.w		; C0 A1 46
	cmp $2C.b,S		; C3 2C
	brk $00.b		; 00 00
	jsr $1020.w		; 20 20 10
	bmi  24.b		; 30 18
	sec		; 38
	rtl		; 6B

	eor $FDDE83.l,X		; 5F 83 DE FD
	jsr $2029.w		; 20 29 20
	brk $20.b		; 00 20
	jsr $3010.w		; 20 10 30
	jmp $4738.w		; 4C 38 47
	adc $00FF80.l,X		; 7F 80 FF 00
	cmp $00DF00.l,X		; DF 00 DF 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bpl  24.b		; 10 18
	bit $8834.w		; 2C 34 88
	cpx $6A.b		; E4 6A
	stx $DB.b		; 86 DB
	ora $A3.b,X		; 15 A3
	and $00.b,X		; 35 00
	tsb $1408.w		; 0C 08 14
	clc		; 18
	stz $3C.b		; 64 3C
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	cop $FE.b		; 02 FE
	ora ($EF.b,X)		; 01 EF
	brk $CF.b		; 00 CF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ldx #$E8F8.w		; A2 F8 E8
	sei		; 78
	cli		; 58
	jmp.w [$9DDC]		; DC DC 9D
	sta $85DD.w,X		; 9D DD 85
	tad		; 5B
	eor $EC.b,S		; 43 EC
	cpx $65.b		; E4 65
	adc $18.b		; 65 18
	brk $A8.b		; 00 A8
	brk $8C.b		; 00 8C
	jsr $20CD.w		; 20 CD 20
	cmp $5B20.w,X		; DD 20 5B
	ldy $EC.b		; A4 EC
	ora ($65.b,S),Y		; 13 65
	txs		; 9A
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	jmp $3CC4.w		; 4C C4 3C
	pea $F46C.w		; F4 6C F4
	trb $1CF4.w		; 1C F4 1C
	cpx $F818.w		; EC 18 F8
	bit $F4.b,X		; 34 F4
	bit $3CFC.w,X		; 3C FC 3C
	cop $0C.b		; 02 0C
	cop $0C.b		; 02 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $14.b		; 00 14
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	cpy #$4080.w		; C0 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	rti		; 40

	cpy #$E060.w		; C0 60 E0
	bpl -16.b		; 10 F0
	bvs -80.b		; 70 B0
	bne  48.b		; D0 30
	bcc 112.b		; 90 70
	cpy #$8020.w		; C0 20 80
	rti		; 40

	cpy #$E010.w		; C0 10 E0
	bpl -16.b		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora $46.b,S		; 03 46
	eor $00.b		; 45 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $02.b,S		; 03 02
	sta $03.b		; 85 03
	pei ($47.b)		; D4 47
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl -96.b		; 10 A0
	bcs -48.b		; B0 D0
	beq -108.b		; F0 94
	pea $B8D8.w		; F4 D8 B8
	bra  48.b		; 80 30
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	bpl -24.b		; 10 E8
	bcs  72.b		; B0 48
	beq   8.b		; F0 08
	pea $F808.w		; F4 08 F8
	tsb $F0.b		; 04 F0
	php		; 08
	bcc -80.b		; 90 B0
	bvc  48.b		; 50 30
	rts		; 60

	jsr $24E4.w		; 20 E4 24
	tay		; A8
	jmp ($FC34.w)		; 6C 34 FC
	sty $6C.b,X		; 94 6C
	bit $70CC.w,X		; 3C CC 70
	php		; 08
	beq   1.b		; F0 01
	cpx #$E407.w		; E0 07 E4
	phd		; 0B
	cpx $FC12.w		; EC 12 FC
	cop $FC.b		; 02 FC
	cop $FC.b		; 02 FC
	cop $EA.b		; 02 EA
	asl $1AA6.w,X		; 1E A6 1A
	bit $1C00.w,X		; 3C 00 1C
	cpy $1C.b		; C4 1C
	sty $10.b		; 84 10
	bpl  32.b		; 10 20
	jsr $A0A0.w		; 20 A0 A0
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $10.b		; 00 10
	cpx #$C020.w		; E0 20 C0
	ldy #$1640.w		; A0 40 16
	tas		; 1B
	trb $0819.w		; 1C 19 08
	ora $0F0B.w		; 0D 0B 0F
	ora $04.b,S		; 03 04
	ora [$06.b]		; 07 06
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	trb $1E20.w		; 1C 20 1E
	jsr $100E.w		; 20 0E 10
	tsb $0710.w		; 0C 10 07
	php		; 08
	ora [$00.b]		; 07 00
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	sty $18C6.w		; 8C C6 18
	cmp $1A.b,S		; C3 1A
	sbc ($93.b),Y		; F1 93
	beq  50.b		; F0 32
	rol $C2.b,X		; 36 C2
	cmp [$AD.b]		; C7 AD
	sbc $791D.w		; ED 1D 79
	rol $3B01.w,X		; 3E 01 3B
	tsb $1B.b		; 04 1B
	tsb $13.b		; 04 13
	tsb $08F5.w		; 0C F5 08
	cpy $38.b		; C4 38
	inc $7E10.w		; EE 10 7E
	bra  64.b		; 80 40
	ldy $6E0E.w		; AC 0E 6E
	bit #$7485.w		; 89 85 74
	sbc $6F.b		; E5 6F
	rol $C241.w		; 2E 41 C2
	and ($F4.b)		; 32 F4
	and ($F8.b)		; 32 F8
	rti		; 40

	ora ($0E.b,S),Y		; 13 0E
	sta ($8D.b),Y		; 91 8D
	adc ($FD.b)		; 72 FD
	cop $F7.b		; 02 F7
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	cmp $4FBFD6.l		; CF D6 BF 4F
	ldx $FD.b,Y		; B6 FD
	asl $FC.b		; 06 FC
	dec $7D.b,X		; D6 7D
	tda		; 7B
	sbc $F1FEF1.l,X		; FF F1 FE F1
	cmp $00FF30.l		; CF 30 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $008600.l		; 2F 00 86 00
	asl $0E00.w		; 0E 00 0E
	brk $20.b		; 00 20
	ldy #$F050.w		; A0 50 F0
	rti		; 40

	beq  32.b		; F0 20
	bne -88.b		; D0 A8
	cli		; 58
	pha		; 48
	clc		; 18
	php		; 08
	clc		; 18
	clv		; B8
	clv		; B8
	ldy #$F050.w		; A0 50 F0
	brk $F0.b		; 00 F0
	tsb $0CF0.w		; 0C F0 0C
	sed		; F8
	asl $F8.b		; 06 F8
	asl $F8.b		; 06 F8
	tsb $58.b		; 04 58
	tsb $01.b		; 04 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	ora $01.b,S		; 03 01
	ora ($06.b,X)		; 01 06
	asl $02.b		; 06 02
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $03.b		; 04 03
	tsb $01.b		; 04 01
	asl $1906.w		; 0E 06 19
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	ror $6A5A.w		; 6E 5A 6A
	eor ($30.b,S),Y		; 53 30
	eor ($8D.b,X)		; 41 8D
	sbc $4FAB.w		; ED AB 4F
	rti		; 40

	sta $B81FDC.l,X		; 9F DC 1F B8
	cmp $7C807D.l,X		; DF 7D 80 7C
	bra 126.b		; 80 7E
	bra -14.b		; 80 F2
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $3E.b		; 00 3E
	sbc $FF10.w,X		; FD 10 FF
	ora $FF07FF.l,X		; 1F FF 07 FF
	asl $FC.b		; 06 FC
	phd		; 0B
	sbc $FF18.w,X		; FD 18 FF
	php		; 08
	sbc $02.b		; E5 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $40.b		; 00 40
	brk $A9.b		; 00 A9
	ora ($3E.b)		; 12 3E
	beq  30.b		; F0 1E
	cpy #$E43A.w		; C0 3A E4
	adc $94.b,S		; 63 94
	ldy #$145D.w		; A0 5D 14
	xce		; FB
	asl A		; 0A
	sbc $9E05.w,X		; FD 05 9E
	ora $003F00.l		; 0F 00 3F 00
	ora $007F00.l,X		; 1F 00 7F 00
	tax		; AA
	brk $1C.b		; 00 1C
	brk $EE.b		; 00 EE
	brk $17.b		; 00 17
	rts		; 60

	jmp $EC1CEC.l		; 5C EC 1C EC
	stz $FCE4.w		; 9C E4 FC
	jsr ($B030.w,X)		; FC 30 B0
	rol A		; 2A
	rol A		; 2A
	cpx #$3C78.w		; E0 78 3C
	cpy $001C.w		; CC 1C 00
	trb $1C00.w		; 1C 00 1C
	ora $0C.b,S		; 03 0C
	ora $50.b,S		; 03 50
	asl $14EA.w		; 0E EA 14
	sed		; F8
	tsb $7C.b		; 04 7C
	brk $03.b		; 00 03
	asl $21.b		; 06 21
	rol $15.b		; 26 15
	tsa		; 3B
	rol $0230.w		; 2E 30 02
	clc		; 18
	ora $1A11.w,Y		; 19 11 1A
	ora ($1C.b,S),Y		; 13 1C
	ora ($07.b),Y		; 11 07
	rts		; 60

	and [$58.b]		; 27 58
	rol $3F40.w,X		; 3E 40 3F
	brk $1F.b		; 00 1F
	jsr $201E.w		; 20 1E 20
	trb $1E00.w		; 1C 00 1E
	brk $B6.b		; 00 B6
	cmp [$7A.b]		; C7 7A
	.db $82, $41, $0F		; 82 41 0F
	cpy #$A1C7.w		; C0 C7 A1
	inc $22.b		; E6 22
	sbc $FE60.w		; ED 60 FE
	tsb $FB.b		; 04 FB
	sed		; F8
	brk $FD.b		; 00 FD
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	brk $19.b		; 00 19
	brk $13.b		; 00 13
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora $05.b,S		; 03 05
	ora [$04.b]		; 07 04
	ora [$06.b]		; 07 06
	ora $07.b		; 05 07
	tsb $03.b		; 04 03
	tsb $0403.w		; 0C 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ldy $AC.b,X		; B4 AC
	lsr $57E2.w		; 4E E2 57
	lda $5F.b		; A5 5F
	sta $CC8C.w,X		; 9D 8C CC
	sbc $5CED.w		; ED ED 5C
	dec $EF6C.w,X		; DE 6C EF
	ldy $FE43.w,X		; BC 43 FE
	ora ($FB.b,X)		; 01 FB
	brk $E3.b		; 00 E3
	brk $F3.b		; 00 F3
	brk $FA.b		; 00 FA
	brk $D9.b		; 00 D9
	jsr $10E9.w		; 20 E9 10
	brk $FF.b		; 00 FF
	cpy #$9ACF.w		; C0 CF 9A
	plx		; FA
	cmp ($77.b,X)		; C1 77
	phy		; 5A
	lda ($28.b),Y		; B1 28
	eor ($02.b,S),Y		; 53 02
	ldy $9620.w,X		; BC 20 96
	brk $00.b		; 00 00
	and ($00.b),Y		; 31 00
	adc $00.b		; 65 00
	lda $04CA00.l,X		; BF 00 CA 04
	plp		; 28
	sty $22.b		; 84 22
	eor ($A4.b,X)		; 41 A4
	eor #$F338.w		; 49 38 F3
	pld		; 2B
	beq 102.b		; F0 66
	beq -38.b		; F0 DA
	cpx #$F888.w		; E0 88 F8
	eor $ED.b,X		; 55 ED
	rol A		; 2A
	inc $15.b,X		; F6 15
	tda		; 7B
	and $00DF00.l,X		; 3F 00 DF 00
	sta $009F00.l,X		; 9F 00 9F 00
	lda [$00.b]		; A7 00
	adc ($00.b)		; 72 00
	lda $5C00.w,Y		; B9 00 5C
	bra 114.b		; 80 72
	sta $67.b,S		; 83 67
	stx $0A.b		; 86 0A
	asl $4A48.w		; 0E 48 4A
	eor ($D9.b),Y		; 51 D9
	and $F07F.w		; 2D 7F F0
	xce		; FB
	bvs 127.b		; 70 7F
	adc ($0C.b,S),Y		; 73 0C
	adc [$18.b]		; 67 18
	ora $B04FF0.l		; 0F F0 4F B0
	dec $F020.w,X		; DE 20 F0
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	sec		; 38
	bcs -88.b		; B0 A8
	lda ($11.b,X)		; A1 11
	sbc $D5.b,X		; F5 D5
	ldy $DA9D.w,X		; BC 9D DA
	lda $4E1906.l,X		; BF 06 19 4E
	eor ($78.b),Y		; 51 78
	sta [$F8.b]		; 87 F8
	ora [$F1.b]		; 07 F1
	asl $0A35.w		; 0E 35 0A
	adc $7F02.w,X		; 7D 02 7F
	brk $9F.b		; 00 9F
	rts		; 60

	eor $0000A0.l,X		; 5F A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $24.b		; 24 24
	stz $E4.b		; 64 E4
	lda $F5.b,X		; B5 F5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $A6.b		; 00 A6
	bit $D3.b		; 24 D3
	cpx $1B.b		; E4 1B
	sbc $0A.b,X		; F5 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bit $3C.b,X		; 34 3C
	rol $D336.w		; 2E 36 D3
	sbc [$A4.b]		; E7 A4
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	tsb $3408.w		; 0C 08 34
	php		; 08
	ror $3C.b,X		; 76 3C
	eor $3E.b,S		; 43 3E
	cmp ($FF.b,X)		; C1 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	tsb $48.b		; 04 48
	jmp $DA96.w		; 4C 96 DA
	dey		; 88
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	.db $42, $04		; 42 04
	ror A		; 6A
	jmp $DEB3.w		; 4C B3 DE
	and ($FE.b,X)		; 21 FE
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	ora $05.b,S		; 03 05
	asl $1D.b		; 06 1D
	asl $1E18.w,X		; 1E 18 1E
	tsb $270A.w		; 0C 0A 27
	and #$312D.w		; 29 2D 31
	ora $00.b,S		; 03 00
	ora $10.b,S		; 03 10
	ora [$18.b]		; 07 18
	ora $001F00.l,X		; 1F 00 1F 00
	ora $002E00.l		; 0F 00 2E 00
	rol $8900.w,X		; 3E 00 89
	ror $2A.b,X		; 76 2A
	eor $5D.b		; 45 5D
	ora ($6A.b),Y		; 11 6A
	adc ($AB.b,X)		; 61 AB
	sbc #$F314.w		; E9 14 F3
	stz $F3.b,X		; 74 F3
	eor ($D6.b)		; 52 D6
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $009F00.l		; EF 00 9F 00
	ora [$00.b],Y		; 17 00
	ora $000E00.l		; 0F 00 0E 00
	rol $7300.w		; 2E 00 73
	sbc $FD61.w,X		; FD 61 FD
	and ($FF.b,X)		; 21 FF
	tsb $FE.b		; 04 FE
	sta ($F3.b),Y		; 91 F3
	adc ($71.b),Y		; 71 71
	trb $15.b		; 14 15
	stx $07.b		; 86 07
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $08.b		; 05 08
	sta ($0E.b,X)		; 81 0E
	sbc $0A.b,X		; F5 0A
	sbc [$18.b]		; E7 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	cpy #$0420.w		; C0 20 04
	tsb $00.b		; 04 00
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	php		; 08
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0E.b		; 00 0E
	cop $0D.b		; 02 0D
	php		; 08
	sbc [$09.b],Y		; F7 09
	inc $04.b,X		; F6 04
	tda		; 7B
	.db $82, $9D, $20		; 82 9D 20
	and $293734.l		; 2F 34 37 29
	dec A		; 3A
	rol $2F.b,X		; 36 2F
	asl $0D00.w		; 0E 00 0D
	brk $05.b		; 00 05
	bra -125.b		; 80 83
	rts		; 60

	and ($50.b,X)		; 21 50
	bit $48.b,X		; 34 48
	and $3E44.w,Y		; 39 44 3E
	cpy #$0605.w		; C0 05 06
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	ora $07.b,S		; 03 07
	asl $070B.w		; 0E 0B 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bit $04.b		; 24 04
	pld		; 2B
	ora [$38.b]		; 07 38
	ora $F31110.l		; 0F 10 11 F3
	lda #$5159.w		; A9 59 51
	ora #$0810.w		; 09 10 08
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	ror A		; 6A
	ror $FEB2.w		; 6E B2 FE
	sbc ($0C.b),Y		; F1 0C
	sbc $F906.w,Y		; F9 06 F9
	asl $F8.b		; 06 F8
	ora [$92.b]		; 07 92
	adc $F906.w		; 6D 06 F9
	ror $FE91.w		; 6E 91 FE
	ora ($A1.b,X)		; 01 A1
	sta ($D0.b,S),Y		; 93 D0
	sbc $82.b,S		; E3 82
	sbc ($80.b),Y		; F1 80
	sbc ($12.b,S),Y		; F3 12
	beq  28.b		; F0 1C
	jsr ($F800.w,X)		; FC 00 F8
	cmp ($39.b,X)		; C1 39
	lda ($4C.b,X)		; A1 4C
	cmp ($0C.b),Y		; D1 0C
	cmp ($0C.b)		; D2 0C
	cmp ($0C.b)		; D2 0C
	cmp ($0D.b)		; D2 0D
	trb $D803.w		; 1C 03 D8
	ora [$C1.b]		; 07 C1
	asl $58.b		; 06 58
	adc $507F48.l,X		; 7F 48 7F 50
	adc $01FF23.l		; 6F 23 FF 01
	ora $404343.l,X		; 1F 43 43 40
	rti		; 40

	bit $5C6C.w		; 2C 6C 5C
	bra 104.b		; 80 68
	bra 112.b		; 80 70
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	cpx #$BC40.w		; E0 40 BC
	rti		; 40

	lda $34936C.l,X		; BF 6C 93 34
	tsa		; 3B
	rti		; 40

	phx		; DA
	brk $F8.b		; 00 F8
	.db $82, $FA, $83		; 82 FA 83
	lda $303D00.l,X		; BF 00 3D 30
	ora $5D21.w		; 0D 21 5D
	cmp $00.b		; C5 00
	jsr $8005.w		; 20 05 80
	ora [$82.b]		; 07 82
	ora $C7.b		; 05 C7
	brk $41.b		; 00 41
	.db $82, $71, $82		; 82 71 82
	and ($82.b),Y		; 31 82
	pla		; 68
	adc ($2A.b,S),Y		; 73 2A
	adc ($B9.b),Y		; 71 B9
	cpx #$A0D0.w		; E0 D0 A0
	pei ($84.b)		; D4 84
	cpy $84.b		; C4 84
	ldx $46.b		; A6 46
	rtl		; 6B

	sta $7F807F.l		; 8F 7F 80 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $F9.b		; 00 F9
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $12.b,S		; 03 12
	ora $060400.l,X		; 1F 00 04 06
	tsb $03.b		; 04 03
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	jsl $1F3C03.l		; 22 03 3C 1F
	jsr $1807.w		; 20 07 18
	ora [$08.b]		; 07 08
	ora $04.b,S		; 03 04
	bne -75.b		; D0 B5
	php		; 08
	ldx $299D.w,Y		; BE 9D 29
	asl $2B.b,X		; 16 2B
	lda ($2A.b),Y		; B1 2A
	tya		; 98
	and ($48.b)		; 32 48
	cop $04.b		; 02 04
	lsr $F5.b		; 46 F5
	asl A		; 0A
	sbc $00FE00.l,X		; FF 00 FE 00
	jsr ($DD00.w,X)		; FC 00 DD
	brk $CD.b		; 00 CD
	brk $FD.b		; 00 FD
	brk $B9.b		; 00 B9
	brk $C1.b		; 00 C1
	adc $3FFE9D.l,X		; 7F 9D FE 3F
	sbc $081786.l,X		; FF 86 17 08
	cop $90.b		; 02 90
	asl $9A60.w		; 0E 60 9A
	sbc $0A.b,X		; F5 0A
	bra   0.b		; 80 00
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	xce		; FB
	brk $F5.b		; 00 F5
	brk $F5.b		; 00 F5
	brk $1B.b		; 00 1B
	ora ($06.b,X)		; 01 06
	sbc $A5.b		; E5 A5
	pei ($CA.b)		; D4 CA
	sbc ($51.b)		; F2 51
	adc $BE44.w		; 6D 44 BE
	ror $9C.b		; 66 9C
	and $00FFDD.l		; 2F DD FF 00
	tas		; 1B
	brk $EB.b		; 00 EB
	brk $ED.b		; 00 ED
	brk $F6.b		; 00 F6
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $26.b		; 00 26
	brk $34.b		; 00 34
	and ($06.b,X)		; 21 06
	and [$5C.b]		; 27 5C
	eor $207F24.l,X		; 5F 24 7F 20
	adc $5A7F28.l,X		; 7F 28 7F 5A
	lsr $4D6C.w,X		; 5E 6C 4D
	rol $3800.w,X		; 3E 00 38
	rti		; 40

	rts		; 60

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $61.b		; 00 61
	brk $73.b		; 00 73
	brk $0C.b		; 00 0C
	cpy $40.b		; C4 40
	inx		; E8
	trb $18CC.w		; 1C CC 18
	sed		; F8
	jsr $00A0.w		; 20 A0 00
	rti		; 40

	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bit $1800.w,X		; 3C 00 18
	tsb $3C.b		; 04 3C
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $0B.b		; 00 0B
	asl $0A0D.w		; 0E 0D 0A
	tsb $0A.b		; 04 0A
	pld		; 2B
	and ($1C.b,X)		; 21 1C
	ora $14.b,X		; 15 14
	ora $1F17.w,X		; 1D 17 1F
	ora #$0F0B.w		; 09 0B 0F
	bpl  15.b		; 10 0F
	bmi  15.b		; 30 0F
	bmi  46.b		; 30 2E
	bpl  26.b		; 10 1A
	brk $1A.b		; 00 1A
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $40.b		; 00 40
	cpy #$E060.w		; C0 60 E0
	rti		; 40

	cpx #$50B0.w		; E0 B0 50
	bvc  16.b		; 50 10
	pla		; 68
	sed		; F8
	plp		; 28
	inx		; E8
	bit $C0FC.w,X		; 3C FC C0
	bmi -32.b		; 30 E0
	bpl -32.b		; 10 E0
	clc		; 18
	beq   8.b		; F0 08
	beq   0.b		; F0 00
	clc		; 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	ora $0C08.w		; 0D 08 0C
	brk $04.b		; 00 04
	tsb $01.b		; 04 01
	asl $05.b		; 06 05
	tsb $01.b		; 04 01
	asl $10.b,X		; 16 10
	asl A		; 0A
	trb $100E.w		; 1C 0E 10
	ora $180710.l		; 0F 10 07 18
	asl $08.b		; 06 08
	asl $48.b		; 06 48
	asl $70.b		; 06 70
	ora [$28.b],Y		; 17 28
	ora $100120.l,X		; 1F 20 01 10
	brk $91.b		; 00 91
	ora ($92.b,X)		; 01 92
	ora ($96.b,X)		; 01 96
	cmp ($DE.b,X)		; C1 DE
	stz $FF.b,X		; 74 FF
	phd		; 0B
	sbc $EFFF20.l		; EF 20 FF EF
	brk $6E.b		; 00 6E
	brk $6D.b		; 00 6D
	brk $69.b		; 00 69
	brk $21.b		; 00 21
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $35.b		; 00 35
	dex		; CA
	txa		; 8A
	and $E5.b,X		; 35 E5
	inc A		; 1A
	sty $3B.b		; 84 3B
	sbc $0CF300.l,X		; FF 00 F3 0C
	and ($8D.b)		; 32 8D
	ora $EF.b,X		; 15 EF
	and $00.b,X		; 35 00
	dex		; CA
	brk $E5.b		; 00 E5
	brk $C4.b		; 00 C4
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $72.b		; 00 72
	brk $10.b		; 00 10
	brk $38.b		; 00 38
	xce		; FB
	ora ($A3.b,X)		; 01 A3
	rti		; 40

.INDEX 8
	sep #$11		; E2 11
	sbc ($03.b),Y		; F1 03
	sbc [$08.b],Y		; F7 08
	sbc [$9E.b],Y		; F7 9E
	cpx #$95.b		; E0 95
	sbc $1C.b,X		; F5 1C
	brk $44.b		; 00 44
	clc		; 18
	jsr $311D.w		; 20 1D 31
	asl $0837.w		; 0E 37 08
	adc $007F00.l,X		; 7F 00 7F 00
	txs		; 9A
	brk $36.b		; 00 36
	cmp $0B.b,X		; D5 0B
	trb $8896.w		; 1C 96 88
	plp		; 28
	beq  68.b		; F0 44
	jsr ($FEC2.w,X)		; FC C2 FE
	cmp [$FF.b]		; C7 FF
	sta $BF.b,S		; 83 BF
	sbc [$08.b],Y		; F7 08
	sbc $007F00.l,X		; FF 00 7F 00
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	brk $52.b		; 00 52
	ldy $36.b		; A4 36
	stx $25.b		; 86 25
	sta [$8B.b]		; 87 8B
	ora $685FC0.l,X		; 1F C0 5F 68
	adc $C2BDA3.l,X		; 7F A3 BD C2
	sbc $F900FF.l,X		; FF FF 00 F9
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $43.b		; 00 43
	brk $03.b		; 00 03
	brk $B0.b		; 00 B0
	asl $DE.b		; 06 DE
	sta ($3C.b)		; 92 3C
	bit $D8.b,X		; 34 D8
	iny		; C8
	bmi  16.b		; 30 10
	beq  48.b		; F0 30
	bvc -48.b		; 50 D0
	cpx #$70.b		; E0 70
	inc $6E01.w,X		; FE 01 6E
	ora ($CC.b,X)		; 01 CC
	ora $38.b,S		; 03 38
	tsb $F0.b		; 04 F0
	tsb $08F0.w		; 0C F0 08
	bne  44.b		; D0 2C
	beq  12.b		; F0 0C
	brk $8F.b		; 00 8F
	lda $AC.b,S		; A3 AC
	rts		; 60

	sbc $00F880.l,X		; FF 80 F8 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $96.b		; 00 96
	rts		; 60

	lda [$40.b],Y		; B7 40
	sed		; F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	sta ($46.b),Y		; 91 46
	sta $1D92.w,Y		; 99 92 1D
	phd		; 0B
	ora $0E0D.w		; 0D 0D 0E
	ora ($06.b,X)		; 01 06
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	stz $5E60.w,X		; 9E 60 5E
	jsr $609E.w		; 20 9E 60
	asl $0F70.w		; 0E 70 0F
	bpl   7.b		; 10 07
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
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -96.b		; 80 A0
	rts		; 60

	iny		; C8
	sec		; 38
	pei ($8C.b)		; D4 8C
	txa		; 8A
	stx $80.b		; 86 80
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	cpx #$18.b		; E0 18
	sed		; F8
	asl $7C.b		; 06 7C
	brk $7E.b		; 00 7E
	brk $90.b		; 00 90
	stx $8EB0.w		; 8E B0 8E
	pld		; 2B
	ora [$74.b],Y		; 17 74
	tsb $1828.w		; 0C 28 18
	clv		; B8
	tya		; 98
	rti		; 40

	rts		; 60

	cpx #$E0.b		; E0 E0
	ror $7E01.w,X		; 7E 01 7E
	ora ($FF.b,X)		; 01 FF
	brk $FC.b		; 00 FC
	ora $F8.b,S		; 03 F8
	tsb $78.b		; 04 78
	brk $60.b		; 00 60
	bcc -32.b		; 90 E0
	bpl   0.b		; 10 00
	brk $F8.b		; 00 F8
	sed		; F8
	dec $C6.b		; C6 C6
	bpl -16.b		; 10 F0
	bit $E4.b		; 24 E4
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	rti		; 40

	brk $F0.b		; 00 F0
	sed		; F8
	brk $C6.b		; 00 C6
	sec		; 38
	beq  14.b		; F0 0E
	cpx $13.b		; E4 13
	cpy #$30.b		; C0 30
	cpy #$20.b		; C0 20
	cpy #$30.b		; C0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rep #$C2		; C2 C2
	stz $C87E.w		; 9C 7E C8
	rol $0A12.w,X		; 3E 12 0A
	lsr A		; 4A
	dex		; CA
	txs		; 9A
	inc $F6B2.w,X		; FE B2 F6
	brk $87.b		; 00 87
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	inc $FE01.w,X		; FE 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($36.b,X)		; 01 36
	ora ($06.b,X)		; 01 06
	ora ($0E.b,X)		; 01 0E
	brk $1E.b		; 00 1E
	and ($2B.b,X)		; 21 2B
	and [$0C.b],Y		; 37 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	trb $0806.w		; 1C 06 08
	phd		; 0B
	tsb $0F08.w		; 0C 08 0F
	tsb $0B0F.w		; 0C 0F 0B
	phd		; 0B
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	ora $100F00.l,X		; 1F 00 0F 10
	ora $100F10.l		; 0F 10 0F 10
	ora $040B10.l		; 0F 10 0B 04
	ora $02.b		; 05 02
	brk $01.b		; 00 01
	sta $F9.b,S		; 83 F9
	pld		; 2B
	rol $3F81.w,X		; 3E 81 3F
	bvs -121.b		; 70 87
	brk $02.b		; 00 02
	tya		; 98
	sed		; F8
	pea $C3EC.w		; F4 EC C3
	sbc [$03.b],Y		; F7 03
	tsb $CB.b		; 04 CB
	brk $C5.b		; 00 C5
	brk $FA.b		; 00 FA
	brk $00.b		; 00 00
	sbc $07F8.w,X		; FD F8 07
	jsr ($FF03.w,X)		; FC 03 FF
	brk $22.b		; 00 22
	adc $582780.l,X		; 7F 80 27 58
	and $28.b		; 25 28
	sta $80.b,X		; 95 80
	sbc $7F01.w		; ED 01 7F
	.db $82, $8F, $17		; 82 8F 17
	stz $8000.w,X		; 9E 00 80
	bra  88.b		; 80 58
	cli		; 58
	.db $82, $28, $42		; 82 28 42
	bra  18.b		; 80 12
	and ($80.b,X)		; 21 80
	phb		; 8B
	bvs -97.b		; 70 9F
	rts		; 60

	asl $42DE.w		; 0E DE 42
	inc $FEE9.w		; EE E9 FE
	cmp ($5E.b),Y		; D1 5E
	lda ($A4.b,X)		; A1 A4
	lda $A5.b		; A5 A5
	sta ($B7.b)		; 92 B7
	adc [$D8.b],Y		; 77 D8
	ora ($20.b,X)		; 01 20
	eor ($10.b,X)		; 41 10
	sbc #$D100.w		; E9 00 D1
	jsr $5AA1.w		; 20 A1 5A
	lda $5A.b		; A5 5A
	lda [$48.b],Y		; B7 48
	sbc $808000.l,X		; FF 00 80 80
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
	tsb $080B.w		; 0C 0B 08
	ora $010701.l		; 0F 01 07 01
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	cpx $EC54.w		; EC 54 EC
	bit $8CE4.w		; 2C E4 8C
	cpy $9C.b		; C4 9C
	pea $E41C.w		; F4 1C E4
	sec		; 38
	iny		; C8
	brk $30.b		; 00 30
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	brk $E0.b		; 00 E0
	rts		; 60

	jsr $2860.w		; 20 60 28
	pla		; 68
	bmi 112.b		; 30 70
	bne -80.b		; D0 B0
	bcs -112.b		; B0 90
	bcs -48.b		; B0 D0
	php		; 08
	cld		; D8
	cpx #$E018.w		; E0 18 E0
	asl $14E8.w,X		; 1E E8 14
	beq  12.b		; F0 0C
	bvs  12.b		; 70 0C
	bvs   8.b		; 70 08
	bmi   0.b		; 30 00
	sec		; 38
	brk $48.b		; 00 48
	jmp $0707.w		; 4C 07 07
	ora $0B0F.w		; 0D 0F 0B
	ora $080F09.l		; 0F 09 0F 08
	tsb $292D.w		; 0C 2D 29
	stx $A8.b		; 86 A8
	eor $380430.l		; 4F 30 04 38
	asl $0E10.w		; 0E 10 0E
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bcs  46.b		; B0 2E
	bne -81.b		; D0 AF
	bvc  24.b		; 50 18
	sei		; 78
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	.db $82, $C2, $8E		; 82 C2 8E
	lsr $7C14.w		; 4E 14 7C
	bit $1C.b		; 24 1C
	php		; 08
	sec		; 38
	sed		; F8
	brk $80.b		; 00 80
	adc ($40.b),Y		; 71 40
	lda ($C2.b,S),Y		; B3 C2
	and $31CE.w,X		; 3D CE 31
	jsr ($FC03.w,X)		; FC 03 FC
	cop $F8.b		; 02 F8
	asl $58.b		; 06 58
	sei		; 78
	rts		; 60

	jsr $40C0.w		; 20 C0 40
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bit $24.b		; 24 24
	pha		; 48
	jmp ($DCB4.w)		; 6C B4 DC
	sed		; F8
	tsb $E0.b		; 04 E0
	bpl -64.b		; 10 C0
	jsr $6290.w		; 20 90 62
	brk $FE.b		; 00 FE
	bit $DA.b		; 24 DA
	jmp ($FC92.w)		; 6C 92 FC
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	cop $0B.b		; 02 0B
	ora $07.b		; 05 07
	asl $1A0B.w		; 0E 0B 1A
	ora [$12.b]		; 07 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $BF00.w		; 0C 00 BF
	brk $7E.b		; 00 7E
	ora ($EF.b,X)		; 01 EF
	brk $FF.b		; 00 FF
	sta [$7E.b]		; 87 7E
	eor [$BB.b],Y		; 57 BB
	plb		; AB
	tyx		; BB
	plb		; AB
	jmp $6600AA.l		; 5C AA 00 66
	ora ($F8.b,X)		; 01 F8
	brk $30.b		; 00 30
	brk $87.b		; 00 87
	rti		; 40

	cmp [$00.b],Y		; D7 00
	sbc $00EF00.l		; EF 00 EF 00
	plb		; AB
	iny		; C8
	brk $98.b		; 00 98
	jmp ($3C1C.w,X)		; 7C 1C 3C
	trb $0C3C.w		; 1C 3C 0C
	trb $1E0E.w		; 1C 0E 1E
	asl $0E.b		; 06 0E
	ora [$07.b]		; 07 07
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	php		; 08
	ror $7E08.w,X		; 7E 08 7E
	tsb $3E.b		; 04 3E
	tsb $3F.b		; 04 3F
	cop $1F.b		; 02 1F
	cop $0F.b		; 02 0F
	adc ($02.b),Y		; 71 02
	rtl		; 6B

	bit $2D.b,X		; 34 2D
	bmi  46.b		; 30 2E
	bmi  22.b		; 30 16
	clc		; 18
	ora $3610.w		; 0D 10 36
	php		; 08
	and $0E0018.l		; 2F 18 00 0E
	brk $34.b		; 00 34
	brk $7A.b		; 00 7A
	brk $79.b		; 00 79
	brk $39.b		; 00 39
	brk $32.b		; 00 32
	brk $0D.b		; 00 0D
	brk $9D.b		; 00 9D
	brk $00.b		; 00 00
	trb $3A00.w		; 1C 00 3A
	bit $401E.w,X		; 3C 1E 40
	stz $E9.b,X		; 74 E9
	and $62C3.w,Y		; 39 C3 62
	asl $85.b		; 06 85
	tsb $0000.w		; 0C 00 00
	brk $20.b		; 00 20
	brk $7C.b		; 00 7C
	brk $E0.b		; 00 E0
	rts		; 60

	inx		; E8
	brk $C0.b		; 00 C0
	ora ($80.b,X)		; 01 80
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $F133.w		; 20 33 F1
	ora $001ED2.l,X		; 1F D2 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E2.b		; 00 E2
	brk $E5.b		; 00 E5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $1D3F1F.l,X		; 3F 1F 3F 1D
	and $007F34.l,X		; 3F 34 7F 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	asl $111F.w		; 0E 1F 11
	and $383F22.l,X		; 3F 22 3F 38
	and $4B7F32.l,X		; 3F 32 7F 4B
	brk $70.b		; 00 70
	bvs  -4.b		; 70 FC
	jsr ($D6FE.w,X)		; FC FE D6
	sbc $82FF86.l,X		; FF 86 FF 82
	sbc $A49F60.l,X		; FF 60 9F A4
	inc A		; 1A
	bvs 112.b		; 70 70
	jsr ($FE8C.w,X)		; FC 8C FE
	cop $FF.b		; 02 FF
	lda #$79FF.w		; A9 FF 79
	cmp [$45.b],Y		; D7 45
	phd		; 0B
	ora $1A.b,S		; 03 1A
	.db $42, $49		; 42 49
	rol $A4.b		; 26 A4
	ora $91.b,S		; 03 91
	brk $8C.b		; 00 8C
	brk $43.b		; 00 43
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $000300.l		; 0F 00 03 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bcc  64.b		; 90 40
	pla		; 68
	brk $94.b		; 00 94
	jsr $106B.w		; 20 6B 10
	cli		; 58
	ora [$3B.b]		; 07 3B
	brk $2F.b		; 00 2F
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $3F.b		; 00 3F
	brk $1C.b		; 00 1C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bvs   0.b		; 70 00
	eor $609980.l		; 4F 80 99 60
	rol $C000.w,X		; 3E 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	inc $C000.w,X		; FE 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	bra -88.b		; 80 A8
	rti		; 40

	stz $00.b,X		; 74 00
	txs		; 9A
	brk $45.b		; 00 45
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	bmi   0.b		; 30 00
	clv		; B8
	bpl 120.b		; 10 78
	bcc  -4.b		; 90 FC
	php		; 08
	jsr ($5428.w,X)		; FC 28 54
	tay		; A8
	jsr ($7401.w,X)		; FC 01 74
	phd		; 0B
	brk $C0.b		; 00 C0
	brk $50.b		; 00 50
	bra  48.b		; 80 30
	brk $58.b		; 00 58
	brk $A8.b		; 00 A8
	brk $A9.b		; 00 A9
	brk $83.b		; 00 83
	brk $DB.b		; 00 DB
	stz $C8.b,X		; 74 C8
	sbc [$8C.b],Y		; F7 8C
	dec $EC60.w,X		; DE 60 EC
	beq  -8.b		; F0 F8
	beq  -7.b		; F0 F9
	sed		; F8
	tas		; 1B
	tsb $7F.b		; 04 7F
	jsr ($CB00.w,X)		; FC 00 CB
	brk $AC.b		; 00 AC
	brk $70.b		; 00 70
	cpy #$E0F0.w		; C0 F0 E0
	beq   0.b		; F0 00
	jsr ($E400.w,X)		; FC 00 E4
	clc		; 18
	jsr ($00FF.w,X)		; FC FF 00
	adc [$00.b]		; 67 00
	cmp $B302.w,X		; DD 02 B3
	tsb $00DE.w		; 0C DE 00
	cmp ($00.b,X)		; C1 00
	ldx $4041.w,Y		; BE 41 40
	and $000000.l,X		; 3F 00 00 00
	txs		; 9A
	brk $66.b		; 00 66
	brk $7E.b		; 00 7E
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	lda ($0E.b),Y		; B1 0E
	dec $00.b,X		; D6 00
	jsr ($7000.w,X)		; FC 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $EC00.w,X		; DE 00 EC
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	and $1C.b,S		; 23 1C
	and [$15.b]		; 27 15
	lsr $28.b		; 46 28
	jmp $1C60.w		; 4C 60 1C
	cld		; D8
	jsr $009C.w		; 20 9C 00
	jmp.w [$1C20]		; DC 20 1C
	brk $1A.b		; 00 1A
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $70.b		; 00 70
	ldx $FD59.w		; AE 59 FD
	ora $3ADD.w,X		; 1D DD 3A
	phb		; 8B
	ora [$1F.b]		; 07 1F
	and $0C1F0F.l,X		; 3F 0F 1F 0C
	asl $0D00.w,X		; 1E 00 0D
	php		; 08
	eor $3F0C.w,Y		; 59 0C 3F
	clc		; 18
	ror $7F01.w,X		; 7E 01 7F
	ora $7F.b,S		; 03 7F
	asl $3F.b		; 06 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$05.b]		; 07 05
	tsb $02.b		; 04 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $CB8C.w,Y		; 99 8C CB
	cpy $44.b		; C4 44
	rti		; 40

	cpy #$0040.w		; C0 40 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $E4C0.w		; CE C0 E4
	rti		; 40

	cpx #$6000.w		; E0 00 60
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	clc		; 18
	rol $10.b,X		; 36 10
	adc $DC21.w		; 6D 21 DC
	eor ($3A.b,X)		; 41 3A
	sta $B8.b,S		; 83 B8
	sta $B4.b,S		; 83 B4
	sta [$A8.b]		; 87 A8
	sta $0F0007.l		; 8F 07 00 0F
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	brk $FD.b		; 00 FD
	brk $7E.b		; 00 7E
	brk $7A.b		; 00 7A
	brk $75.b		; 00 75
	brk $BA.b		; 00 BA
	ldx $7D.b		; A6 7D
	stp		; DB
	.db $62, $A1, $6E		; 62 A1 6E
	lda ($69.b,X)		; A1 69
	ldy $43.b		; A4 43
	ldy $AC42.w		; AC 42 AC
	and #$45C6.w		; 29 C6 45
	brk $92.b		; 00 92
	clc		; 18
	lda ($3C.b,X)		; A1 3C
	jsr $003C.w		; 20 3C 00
	rol $3E00.w,X		; 3E 00 3E
	bra  63.b		; 80 3F
	bra  31.b		; 80 1F
	and $7F.b,X		; 35 7F
	jsr $287E.w		; 20 7E 28
	ror $04.b,X		; 76 04
	ror $6F16.w,X		; 7E 16 6F
	inc A		; 1A
	adc $0E.b		; 65 0E
	and ($07.b),Y		; 31 07
	clc		; 18
	ror $7F4A.w,X		; 7E 4A 7F
	lsr $5071.w,X		; 5E 71 50
	adc ($70.b),Y		; 71 70
	adc ($60.b,X)		; 61 60
	rts		; 60

	rts		; 60

	bmi  48.b		; 30 30
	clc		; 18
	clc		; 18
	inx		; E8
	lsr $C650.w		; 4E 50 C6
	cpx $0E.b		; E4 0E
	cpx #$601E.w		; E0 1E 60
	trb $9C10.w		; 1C 10 9C
	brk $F8.b		; 00 F8
	stz $10E0.w,X		; 9E E0 10
	rti		; 40

	jmp.w [$F860]		; DC 60 F8
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $34.b		; 00 34
	cop $09.b		; 02 09
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $C1.b		; 00 C1
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	tya		; 98
	sta $60BFB0.l,X		; 9F B0 BF 60
	inc $7C80.w,X		; FE 80 7C
	bra 120.b		; 80 78
	bra 112.b		; 80 70
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	adc $00.b		; 65 00
	lsr A		; 4A
	brk $94.b		; 00 94
	brk $68.b		; 00 68
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	stx $15.b		; 86 15
	cop $0C.b		; 02 0C
	ora $0A.b,S		; 03 0A
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	bvc  96.b		; 50 60
	sei		; 78
	bvc -76.b		; 50 B4
	bne -22.b		; D0 EA
	ldy #$A06D.w		; A0 6D A0
	.db $42, $AC		; 42 AC
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	bpl  64.b		; 10 40
	clc		; 18
	brk $3C.b		; 00 3C
	bra  62.b		; 80 3E
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -124.b		; B0 84
	bcs -124.b		; B0 84
	sec		; 38
	sty $5C.b		; 84 5C
	dec $58.b		; C6 58
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
	rep #$2C		; C2 2C
	.db $62, $0E, $63		; 62 0E 63
	sei		; 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $7F.b		; 00 7F
	brk $0A.b		; 00 0A
	bpl  26.b		; 10 1A
	jsr $601A.w		; 20 1A 60
	phy		; 5A
	rts		; 60

	cpx $3500.w		; EC 00 35
	brk $35.b		; 00 35
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00.b,X		; 35 00
	adc $00.b		; 65 00
	sbc $00.b		; E5 00
	sbc $00.b		; E5 00
	ora ($00.b,S),Y		; 13 00
	phd		; 0B
	brk $0B.b		; 00 0B
	sbc [$6A.b],Y		; F7 6A
	adc $087E14.l,X		; 7F 14 7E 08
	sbc $CD00.w		; ED 00 CD
	jsr $20CF.w		; 20 CF 20
	cmp ($24.b)		; D2 24
	cmp $32.b		; C5 32
	brk $6A.b		; 00 6A
	tsb $94.b		; 04 94
	php		; 08
	lda #$B200.w		; A9 00 B2
	brk $7A.b		; 00 7A
	brk $7D.b		; 00 7D
	brk $7D.b		; 00 7D
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $30.b		; 00 30
	brk $88.b		; 00 88
	brk $58.b		; 00 58
	asl $13B2.w		; 0E B2 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	tsb $00C0.w		; 0C C0 00
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
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora ($0E.b,X)		; 01 0E
	asl $09.b		; 06 09
	ora [$07.b]		; 07 07
	tsb $1903.w		; 0C 03 19
	asl A		; 0A
	ora $1104.w,Y		; 19 04 11
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	asl $0700.w		; 0E 00 07
	brk $0E.b		; 00 0E
	brk $93.b		; 00 93
	ora $A8.b,S		; 03 A8
	ora ($D6.b),Y		; 11 D6
	txa		; 8A
	tsa		; 3B
	eor $47.b		; 45 47
	lda #$2CAB.w		; A9 AB 2C
	inc $5B6D.w		; EE 6D 5B
	cmp $6C00.w,X		; DD 00 6C
	ora ($76.b,X)		; 01 76
	brk $B9.b		; 00 B9
	brk $C4.b		; 00 C4
	brk $B8.b		; 00 B8
	brk $7C.b		; 00 7C
	jsr $407D.w		; 20 7D 40
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F3B3F.l,X		; 1F 3F 3B 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $000044.l,X		; 7F 44 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	beq  -2.b		; F0 FE
	jsr ($F6FE.w,X)		; FC FE F6
	sbc $00FF86.l,X		; FF 86 FF 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	bvs  -2.b		; 70 FE
	rol $C2FE.w		; 2E FE C2
	sbc $79FF09.l,X		; FF 09 FF 79
	ora [$78.b]		; 07 78
	ora $18FAE6.l,X		; 1F E6 FA 18
	ldx $60.b		; A6 60
	tsb $4410.w		; 0C 10 44
	bmi  88.b		; 30 58
	jsr $0068.w		; 20 68 00
	sec		; 38
	brk $24.b		; 00 24
	asl $18.b		; 06 18
	trb $7800.w		; 1C 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora ($01.b)		; 12 01
	rol A		; 2A
	tsb $25.b		; 04 25
	clc		; 18
	rol A		; 2A
	bpl  44.b		; 10 2C
	bpl  44.b		; 10 2C
	brk $2A.b		; 00 2A
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	asl $1C00.w,X		; 1E 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	stz $FD1F.w,X		; 9E 1F FD
	ror $7CFA.w,X		; 7E FA 7C
	jmp ($B0B0.w)		; 6C B0 B0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $387F06.l,X		; 1F 06 7F 38
	ror $7C20.w,X		; 7E 20 7C
	brk $B0.b		; 00 B0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bra  32.b		; 80 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	jsr $50B8.w		; 20 B8 50
	beq  72.b		; F0 48
	cpx #$0044.w		; E0 44 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $50.b		; 00 50
	brk $40.b		; 00 40
	clc		; 18
	rti		; 40

	sed		; F8
	eor ($E7.b)		; 52 E7
	ora ($66.b)		; 12 66
	sbc $EDE3.w		; ED E3 ED
.ACCU 8
	sep #$E5		; E2 E5
.ACCU 8
	sep #$E0		; E2 E0
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	tsb $0C40.w		; 0C 40 0C
	brk $68.b		; 00 68
	sbc ($64.b),Y		; F1 64
	sbc ($60.b),Y		; F1 60
	sbc ($00.b),Y		; F1 00
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($1A.b,X)		; 01 1A
	brk $29.b		; 00 29
	asl $50.b		; 06 50
	ora $5918A7.l		; 0F A7 18 59
	jsr $40A6.w		; 20 A6 40
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	sta ($73.b)		; 92 73
	stz $C07F.w		; 9C 7F C0
	ldx $6C70.w,Y		; BE 70 6C
	dey		; 88
	bpl 112.b		; 10 70
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	brk $62.b		; 00 62
	brk $9C.b		; 00 9C
	bra  64.b		; 80 40
	cpx #$F000.w		; E0 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00.b,X		; 35 00
	and $00.b,X		; 35 00
	tsb $0300.w		; 0C 00 03
	tsb $0F03.w		; 0C 03 0F
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	dec $31.b		; C6 31
	wai		; CB
	bmi -53.b		; 30 CB
	bmi  -5.b		; 30 FB
	brk $7C.b		; 00 7C
	bra  32.b		; 80 20
	sec		; 38
	bvs  24.b		; 70 18
	pla		; 68
	tsb $7F00.w		; 0C 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7C.b		; 00 7C
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	cpx #$F000.w		; E0 00 F0
	brk $CE.b		; 00 CE
	jsr $20EF.w		; 20 EF 20
	lda ($70.b),Y		; B1 70
	tsb $01FC.w		; 0C FC 01
	and $000700.l,X		; 3F 00 07 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	bra  79.b		; 80 4F
	brk $33.b		; 00 33
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$38A0.w		; E0 A0 38
	inx		; E8
	tsb $0634.w		; 0C 34 06
	tya		; 98
	.db $82, $22, $E3		; 82 22 E3
	tsb $007F.w		; 0C 7F 00
	adc $C00000.l,X		; 7F 00 00 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $12.b		; 00 12
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	ora ($61.b,S),Y		; 13 61
	asl $241D.w,X		; 1E 1D 24
	and [$29.b],Y		; 37 29
	adc $7763.w,X		; 7D 63 77
	adc $6F.b,S		; 63 6F
	adc ($59.b,X)		; 61 59
	ror $0C.b		; 66 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ror $00.b		; 66 00
	adc $EB01.w		; 6D 01 EB
	ora ($EB.b,X)		; 01 EB
	brk $F1.b		; 00 F1
	brk $F6.b		; 00 F6
.INDEX 16
	rep #$D8		; C2 D8
	lda $82.b,X		; B5 82
	cmp $8636.w,Y		; D9 36 86
	cmp ($FE.b,X)		; C1 FE
	sbc $F7FFFE.l,X		; FF FE FF F7
	sed		; F8
	jsr ($4000.w,X)		; FC 00 40
	sbc $CA00.w,X		; FD 00 CA
	brk $36.b		; 00 36
	brk $F9.b		; 00 F9
	inc $E0FF.w,X		; FE FF E0
	sbc $00F800.l,X		; FF 00 F8 00
	brk $33.b		; 00 33
	adc $00FF62.l,X		; 7F 62 FF 00
	sbc $69F20A.l,X		; FF 0A F2 69
	stz $4C30.w		; 9C 30 4C
	ora ($2E.b)		; 12 2E
	cpx #$7F1F.w		; E0 1F 7F
	jmp $9DFF.w		; 4C FF 9D
	sbc ($F2.b,S),Y		; F3 F2
	sbc $87E0.w		; ED E0 87
	bra  71.b		; 80 47
	rti		; 40

	and $20.b		; 25 20
	ora $FF0400.l		; 0F 00 04 FF
	rts		; 60

	stz $1CE0.w,X		; 9E E0 1C
	bvs -40.b		; 70 D8
	cpx #$F048.w		; E0 48 F0
	clc		; 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	sbc $0686DB.l,X		; FF DB 86 06
	trb $44.b		; 14 44
	brk $40.b		; 00 40
	cld		; D8
	rts		; 60

	cpx #$E000.w		; E0 00 E0
	brk $60.b		; 00 60
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $0A.b		; 00 0A
	ora ($34.b,X)		; 01 34
	cop $48.b		; 02 48
	tsb $AB.b		; 04 AB
	bpl -108.b		; 10 94
	rts		; 60

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	and $2600.w		; 2D 00 26
	php		; 08
	rol A		; 2A
	brk $5A.b		; 00 5A
	brk $5C.b		; 00 5C
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	cli		; 58
	brk $58.b		; 00 58
	brk $B8.b		; 00 B8
	brk $B4.b		; 00 B4
	brk $B4.b		; 00 B4
	php		; 08
	dex		; CA
	tsb $3B.b		; 04 3B
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $06.b		; 00 06
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
	asl $06.b		; 06 06
	asl $16.b,X		; 16 16
	asl $16.b,X		; 16 16
	jsl $380906.l		; 22 06 09 38
	inc $D8E0.w,X		; FE E0 D8
	cpx #$0600.w		; E0 00 06
	tsb $1F.b		; 04 1F
	asl $3F.b		; 06 3F
	cop $3F.b		; 02 3F
	brk $1F.b		; 00 1F
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	cpy #$00F0.w		; C0 F0 00
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
	ora $00.b,S		; 03 00
	and $1A3C02.l,X		; 3F 02 3C 1A
	and [$0C.b]		; 27 0C
	ora ($04.b,S),Y		; 13 04
	tas		; 1B
	sec		; 38
	ora [$C9.b]		; 07 C9
	ora ($D4.b,X)		; 01 D4
	dey		; 88
	bit $3B3C.w,X		; 3C 3C 3B
	sec		; 38
	and ($20.b,X)		; 21 20
	ora ($10.b),Y		; 11 10
	ora $0318.w,Y		; 19 18 03
	brk $00.b		; 00 00
	rol $80.b,X		; 36 80
	tyx		; BB
	ora [$08.b]		; 07 08
	asl A		; 0A
	ora $1C1B.w		; 0D 1B 1C
	ora $1A1518.l,X		; 1F 18 15 1A
	rol $0D01.w,X		; 3E 01 0D
	brk $0D.b		; 00 0D
	bpl   0.b		; 10 00
	trb $1D00.w		; 1C 00 1D
	brk $3D.b		; 00 3D
	brk $38.b		; 00 38
	brk $3A.b		; 00 3A
	brk $01.b		; 00 01
	brk $12.b		; 00 12
	brk $32.b		; 00 32
	tyx		; BB
	stx $D0.b		; 86 D0
	sec		; 38
	lda $7F7F7F.l,X		; BF 7F 7F 7F
	ldy $FF7F.w,X		; BC 7F FF
	bra  -4.b		; 80 FC
	bmi -65.b		; 30 BF
	php		; 08
	brk $C6.b		; 00 C6
	brk $BF.b		; 00 BF
	ora $FF3C7F.l,X		; 1F 7F 3C FF
	brk $7F.b		; 00 7F
	brk $80.b		; 00 80
	bmi  51.b		; 30 33
	brk $C8.b		; 00 C8
	eor $1C9C.w,X		; 5D 9C 1C
	adc $FDDC.w,X		; 7D DC FD
	cpy $F5F2.w		; CC F2 F5
	tsb $081E.w		; 0C 1E 08
	sbc $1E09.w,Y		; F9 09 1E
	ora $0CBE0C.l		; 0F 0C BE 0C
	sbc $03FEC0.l,X		; FF C0 FE 03
	beq  11.b		; F0 0B
	brk $07.b		; 00 07
	cpx #$0006.w		; E0 06 00
	ora ($E0.b,X)		; 01 E0
	brk $00.b		; 00 00
	dey		; 88
	bvs  20.b		; 70 14
	stz $0F6B.w		; 9C 6B 0F
	txa		; 8A
	ora $306C4B.l		; 0F 4B 6C 30
	jsr ($E01C.w,X)		; FC 1C E0
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	cpx #$F207.w		; E0 07 F2
	ora $F0.b,S		; 03 F0
	ora $B0.b,S		; 03 B0
	brk $88.b		; 00 88
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $3A3F1F.l,X		; 3F 1F 3F 3A
	adc $607F32.l,X		; 7F 32 7F 60
	sbc $0F0707.l,X		; FF 07 07 0F
	php		; 08
	ora $2D3F18.l,X		; 1F 18 3F 2D
	and $457F20.l,X		; 3F 20 7F 45
	adc $9FFF4D.l,X		; 7F 4D FF 9F
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	beq  -2.b		; F0 FE
	jsr ($F6FE.w,X)		; FC FE F6
	sbc $04FF86.l,X		; FF 86 FF 04
	sbc $809E60.l,X		; FF 60 9E 80
	bra -16.b		; 80 F0
	bvs  -2.b		; 70 FE
	rol $C2FE.w		; 2E FE C2
	sbc $79FF09.l,X		; FF 09 FF 79
	sbc $0686DB.l,X		; FF DB 86 06
	brk $00.b		; 00 00
	jmp $585C58.l		; 5C 58 5C 58
	stz $0C98.w		; 9C 98 0C
	cld		; D8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	pha		; 48
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	cmp [$9C.b]		; C7 9C
	ldx $78.b,Y		; B6 78
	ora ($3C.b)		; 12 3C
	asl $80.b		; 06 80
	sty $EC20.w		; 8C 20 EC
	bra  -8.b		; 80 F8
	brk $C0.b		; 00 C0
	cmp $91.b		; C5 91
	rti		; 40

	bpl -10.b		; 10 F6
	clc		; 18
	sed		; F8
	brk $78.b		; 00 78
	brk $D8.b		; 00 D8
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	bra -16.b		; 80 F0
	bra -40.b		; 80 D8
	jsr $A0F8.w		; 20 F8 A0
	bcs 104.b		; B0 68
	bvs   8.b		; 70 08
	bcs 116.b		; B0 74
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	bmi 120.b		; 30 78
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DD.b		; 00 DD
	ora $EE.b,S		; 03 EE
	brk $2F.b		; 00 2F
	cpx #$F017.w		; E0 17 F0
	phd		; 0B
	sei		; 78
	ora $3C.b		; 05 3C
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	cop $E0.b		; 02 E0
	ora $005F00.l,X		; 1F 00 5F 00
	and $001700.l		; 2F 00 17 00
	phd		; 0B
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	bra -127.b		; 80 81
	cpy #$6041.w		; C0 41 60
	bra  32.b		; 80 20
	cpy #$F010.w		; C0 10 F0
	clc		; 18
	rts		; 60

	php		; 08
	bcs -124.b		; B0 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	tsb $03.b		; 04 03
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	cop $08.b		; 02 08
	ora $09.b,S		; 03 09
	bvs  15.b		; 70 0F
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	rtl		; 6B

	eor $9D.b		; 45 9D
	ldx #$54A3.w		; A2 A3 54
	cmp $96.b,X		; D5 96
	adc [$B6.b],Y		; 77 B6
	bit $61EE.w		; 2C EE 61
	cpx $41DA.w		; EC DA 41
	brk $DC.b		; 00 DC
	brk $E2.b		; 00 E2
	brk $5C.b		; 00 5C
	brk $3E.b		; 00 3E
	bcc  62.b		; 90 3E
	jsr $207F.w		; 20 7F 20
	ror $6500.w,X		; 7E 00 65
	ora $20.b,X		; 15 20
	ora $60.b,X		; 15 60
	eor $E960.w,Y		; 59 60 E9
	brk $2B.b		; 00 2B
	brk $2B.b		; 00 2B
	brk $13.b		; 00 13
	brk $1B.b		; 00 1B
	brk $00.b		; 00 00
	ror A		; 6A
	brk $EA.b		; 00 EA
	brk $E6.b		; 00 E6
	brk $16.b		; 00 16
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	ldx $AC00.w		; AE 00 AC
	brk $27.b		; 00 27
	bcc  37.b		; 90 25
	sta ($32.b)		; 92 32
	bit #$53.b		; 89 53
	dey		; 88
	tas		; 1B
	cpy $1F.b		; C4 1F
	cpy #$F300.w		; C0 00 F3
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	sed		; F8
	ora $611EE0.l,X		; 1F E0 1E 61
	trb $10E1.w		; 1C E1 10
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	trb $10C0.w		; 1C C0 10
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $98.b,X		; 74 98
	cpx $60.b		; E4 60
	trb $80.b		; 14 80
	stz $00.b,X		; 74 00
	mvn $54,$20		; 54 20 54
	jsr $0078.w		; 20 78 00
	pla		; 68
	brk $00.b		; 00 00
	clc		; 18
	jsr $0078.w		; 20 78 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora $3EC100.l		; 0F 00 C1 3E
	stx $7C01.w		; 8E 01 7C
	brk $C3.b		; 00 C3
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora [$86.b]		; 07 86
	ora ($06.b,X)		; 01 06
	sbc $F7.b,X		; F5 F7
	asl A		; 0A
	cmp $3801.w		; CD 01 38
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	cop $FE.b		; 02 FE
	ora ($3F.b,X)		; 01 3F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($88.b),Y		; B1 88
	eor $21CC.w,Y		; 59 CC 21
	cpx $19.b		; E4 19
	jsr ($7CB1.w,X)		; FC B1 7C
	cmp ($B8.b,X)		; C1 B8
	ldy #$7050.w		; A0 50 70
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $58.b		; 00 58
	brk $A0.b		; 00 A0
	brk $48.b		; 00 48
	brk $30.b		; 00 30
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	rts		; 60

	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $68.b		; 00 68
	brk $24.b		; 00 24
	clc		; 18
	stp		; DB
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $011F.w		; 0C 1F 01
	ora $081F00.l,X		; 1F 00 1F 08
	ora [$0A.b],Y		; 17 0A
	ora [$0A.b],Y		; 17 0A
	asl $04.b		; 06 04
	ora $1F.b,S		; 03 1F
	ora ($1F.b,X)		; 01 1F
	ora ($1F.b,S),Y		; 13 1F
	asl $1F1F.w,X		; 1E 1F 1F
	trb $14.b		; 14 14
	ora ($10.b),Y		; 11 10
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	nop		; EA
	sbc $FE81.w,X		; FD 81 FE
	tsa		; 3B
	dec $7F.b,X		; D6 7F
	dec $55.b		; C6 55
	rol $B2.b		; 26 B2
	sbc #$B8.b		; E9 B8
	.db $82, $10, $90		; 82 10 90
	sbc $FE15.w,X		; FD 15 FE
	jmp ($C4C4.w,X)		; 7C C4 C4
	bra -128.b		; 80 80
	bra  40.b		; 80 28
	adc $29.b		; 65 29
	jmp ($E000.w,X)		; 7C 00 E0
	asl $1F49.w		; 0E 49 1F
	php		; 08
	ora $09040D.l		; 0F 0D 04 09
	ora $1B.b,S		; 03 1B
	ora [$15.b]		; 07 15
	phd		; 0B
	ora $170B.w,X		; 1D 0B 17
	ora #$02.b		; 09 02
	sec		; 38
	ora ($1C.b,X)		; 01 1C
	brk $1E.b		; 00 1E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	ora ($09.b,X)		; 01 09
	ora ($2B.b,X)		; 01 2B
	bit $7F83.w,X		; 3C 83 7F
	bra -65.b		; 80 BF
	rti		; 40

	jmp.w [$FC3C]		; DC 3C FC
	sbc $FDFD.w,X		; FD FD FD
	jsr ($80FD.w,X)		; FC FD 80
	adc $006B80.l,X		; 7F 80 6B 00
	plp		; 28
	brk $40.b		; 00 40
	brk $3F.b		; 00 3F
	clc		; 18
	sbc $F8FFF8.l,X		; FF F8 FF F8
	sbc $750269.l,X		; FF 69 02 75
	cop $31.b		; 02 31
	asl $12.b		; 06 12
	bit $0E.b		; 24 0E
	bmi  27.b		; 30 1B
	jmp ($6724.w,X)		; 7C 24 67
	jsl $1F0063.l		; 22 63 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	bpl   3.b		; 10 03
	bit $00.b		; 24 00
	inc A		; 1A
	brk $1C.b		; 00 1C
	brk $2D.b		; 00 2D
	rti		; 40

	and $0A40.w		; 2D 40 0A
	stz $8A.b		; 64 8A
	stz $8F.b		; 64 8F
	rts		; 60

	sbc $E903.w,X		; FD 03 E9
	ora $B006.w,Y		; 19 06 B0
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	cop $E0.b		; 02 E0
	asl $00.b,X		; 16 00
	ora $030000.l,X		; 1F 00 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	ora [$08.b]		; 07 08
	ora $081807.l		; 0F 07 18 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	brk $0F.b		; 00 0F
	bne  24.b		; D0 18
	cpy #$2018.w		; C0 18 20
	bmi -64.b		; 30 C0
	beq -64.b		; F0 C0
	cpx #$E000.w		; E0 00 E0
	bra  64.b		; 80 40
	cpy #$E080.w		; C0 80 E0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   7.b		; 80 07
	ora ($0E.b),Y		; 11 0E
	clc		; 18
	asl $18.b		; 06 18
	cop $08.b		; 02 08
	tsb $0C.b		; 04 0C
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	asl $0700.w		; 0E 00 07
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	cpx #$0010.w		; E0 10 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	bra -128.b		; 80 80
	brk $80.b		; 00 80
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $70.b		; 00 70
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	jsr $2000.w		; 20 00 20
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80E0.w		; C0 E0 80
	cpx #$E000.w		; E0 00 E0
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	tsb $1A1C.w		; 0C 1C 1A
	asl $20E0.w,X		; 1E E0 20
	cpx #$E060.w		; E0 60 E0
	cpx #$4040.w		; E0 40 40
	cpy #$00C0.w		; C0 C0 00
	trb $3E00.w		; 1C 00 3E
	clc		; 18
	and $1A1A1E.l,X		; 3F 1E 1A 1A
	clc		; 18
	bit $7C38.w,X		; 3C 38 7C
	bvs -18.b		; 70 EE
	beq  -3.b		; F0 FD
	nop		; EA
	cmp $D0BAE8.l,X		; DF E8 BA D0
	clc		; 18
	and $103C10.l,X		; 3F 10 3C 10
	sed		; F8
	jsr $60F0.w		; 20 F0 60
	pea $EAC0.w		; F4 C0 EA
	bra -22.b		; 80 EA
	brk $D4.b		; 00 D4
	and $207319.l,X		; 3F 19 73 20
	adc $1AF52C.l		; 6F 2C F5 1A
	cpx $DA11.w		; EC 11 DA
	plp		; 28
	cmp $3C.b		; C5 3C
.INDEX 8
	sep #$1E		; E2 1E
	bpl  24.b		; 10 18
	brk $2C.b		; 00 2C
	php		; 08
	and $1910.w,X		; 3D 10 19
	asl $10.b		; 06 10
	ora [$20.b]		; 07 20
	phd		; 0B
	jsr $1005.w		; 20 05 10
	rol $3AEE.w,X		; 3E EE 3A
	phx		; DA
	nop		; EA
	ora [$B6.b],Y		; 17 B6
	adc $5926FA.l		; 6F FA 26 59
	lda ($2B.b,X)		; A1 2B
	eor $EF.b,S		; 43 EF
	pld		; 2B
	jmp $880F.w		; 4C 0F 88
	ora $405700.l,X		; 1F 00 57 40
	ora $208700.l		; 0F 00 87 20
	ora [$81.b]		; 07 81
	ora [$81.b],Y		; 17 81
	tsa		; 3B
	ora $0E09.w,Y		; 19 09 0E
	cop $0B.b		; 02 0B
	ora ($15.b,X)		; 01 15
	brk $15.b		; 00 15
	brk $2A.b		; 00 2A
	brk $32.b		; 00 32
	ora ($5A.b,X)		; 01 5A
	ora ($00.b,X)		; 01 00
	ora $010302.l		; 0F 02 03 01
	ora $00.b		; 05 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	brk $15.b		; 00 15
	brk $0D.b		; 00 0D
	brk $2F.b		; 00 2F
	sbc $7675F8.l,X		; FF F8 75 76
	ldx $D5A8.w		; AE A8 D5
	bvc 122.b		; 50 7A
	jsr $00FA.w		; 20 FA 00
	ldx $48.b,Y		; B6 48
	and $48.b		; 25 48
	sed		; F8
	sed		; F8
	jsr $88FE.w		; 20 FE 88
	sbc $7A50.w,Y		; F9 50 7A
	jsr $00AD.w		; 20 AD 00
	eor $5D00.w,X		; 5D 00 5D
	brk $FE.b		; 00 FE
	inc A		; 1A
	eor $18.b,S		; 43 18
	eor $38.b,S		; 43 38
	eor $38.b,S		; 43 38
	cmp $7C.b,S		; C3 7C
	dec $38.b		; C6 38
	stx $70.b		; 86 70
	stx $70.b		; 86 70
	sty $3C.b		; 84 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $06.b		; 00 06
	bmi   6.b		; 30 06
	bmi   7.b		; 30 07
	bpl  15.b		; 10 0F
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bit $02.b		; 24 02
	rol A		; 2A
	tsb $31.b		; 04 31
	tsb $0855.w		; 0C 55 08
	ror $18.b		; 66 18
	ror A		; 6A
	bpl -84.b		; 10 AC
	bpl -60.b		; 10 C4
	bmi   0.b		; 30 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
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
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	cpx #$08.b		; E0 08
	bpl  68.b		; 10 44
	jsr $304C.w		; 20 4C 30
	tax		; AA
	bpl -90.b		; 10 A6
	clc		; 18
	lsr $08.b,X		; 56 08
	eor ($0C.b),Y		; 51 0C
	cpy #$E0.b		; C0 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$0F.b]		; 07 0F
	ora $1F0F1F.l		; 0F 1F 0F 1F
	ora $00003F.l,X		; 1F 3F 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$06.b]		; 07 06
	ora $171F0A.l		; 0F 0A 1F 17
	ora $203F10.l,X		; 1F 10 3F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0.b		; C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FFFC.w,X)		; FC FC FF
	inc $FF.b,X		; F6 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq  48.b		; F0 30
	sed		; F8
	php		; 08
	jsr ($FFD4.w,X)		; FC D4 FF
	adc $FF.b,S		; 63 FF
	ora #$AC.b		; 09 AC
	bpl  76.b		; 10 4C
	bpl  82.b		; 10 52
	php		; 08
	jsl $002E08.l		; 22 08 2E 00
	ora ($04.b)		; 12 04
	ora $00.b,X		; 15 00
	phd		; 0B
	brk $00.b		; 00 00
	sei		; 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	phd		; 0B
	brk $0A.b		; 00 0A
	brk $05.b		; 00 05
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora ($06.b,X)		; 01 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  16.b		; 80 10
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $1B.b		; 00 1B
	tsb $25.b		; 04 25
	php		; 08
	rol $08.b		; 26 08
	dec A		; 3A
	brk $2C.b		; 00 2C
	bpl  84.b		; 10 54
	brk $58.b		; 00 58
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	asl $1E00.w		; 0E 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	asl $01.b		; 06 01
	php		; 08
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $50.b		; 00 50
	brk $D0.b		; 00 D0
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	stz $87.b,X		; 74 87
	clc		; 18
	stz $08.b		; 64 08
	iny		; C8
	cmp $09.b		; C5 09
	pea $708E.w		; F4 8E 70
	sta [$68.b],Y		; 97 68
	sbc ($E4.b)		; F2 E4
	dey		; 88
	brk $E0.b		; 00 E0
	cop $F0.b		; 02 F0
	ora $30.b,S		; 03 30
	ora [$70.b]		; 07 70
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	pla		; 68
	brk $EC.b		; 00 EC
	sta $EEC75E.l		; 8F 5E C7 EE
	eor ($E4.b),Y		; 51 E4
	eor $AE62.w,X		; 5D 62 AE
	rti		; 40

	jmp.w [$0000]		; DC 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ror $FE00.w,X		; 7E 00 FE
	rti		; 40

	inc $EA00.w		; EE 00 EA
	brk $54.b		; 00 54
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	asl $07.b		; 06 07
	ora [$06.b]		; 07 06
	ora $06.b		; 05 06
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	ora $62071C.l,X		; 1F 1C 07 62
	tyx		; BB
	tda		; 7B
	lda $BF7C.w,X		; BD 7C BF
	adc $0F7F3F.l,X		; 7F 3F 7F 0F
	sta $0C73B2.l		; 8F B2 73 0C
	jmp ($FA00.w,X)		; 7C 00 FA
	brk $7F.b		; 00 7F
	clc		; 18
	ror $7F1C.w,X		; 7E 1C 7F
	asl $02FF.w,X		; 1E FF 02
	sbc $047F00.l,X		; FF 00 7F 04
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	and ($C7.b),Y		; 31 C7
	bmi  -9.b		; 30 F7
	brk $7B.b		; 00 7B
	brk $05.b		; 00 05
	bit $1E02.w,X		; 3C 02 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $78.b		; 00 78
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	ora $CE.b		; 05 CE
	ora [$B8.b]		; 07 B8
	ora [$38.b]		; 07 38
	ora [$D8.b]		; 07 D8
	tsb $78.b		; 04 78
	bra -80.b		; 80 B0
	rti		; 40

	beq   0.b		; F0 00
	cop $C0.b		; 02 C0
	ora ($30.b,X)		; 01 30
	ora [$C0.b]		; 07 C0
	tsb $F0.b		; 04 F0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	sta $39E6.w,X		; 9D E6 39
	cld		; D8
	eor $A0.b		; 45 A0
	eor $5500.w,X		; 5D 00 55
	php		; 08
	eor $08.b,X		; 55 08
	lsr $4E00.w,X		; 5E 00 4E
	brk $40.b		; 00 40
	asl $88.b		; 06 88
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $080F0B.l		; 0F 0B 0F 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	cpy #$F0.b		; C0 F0
	inx		; E8
	inx		; E8
	dec $DE.b,X		; D6 DE
	cmp $DD.b,X		; D5 DD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	beq  60.b		; F0 3C
	inx		; E8
	ora $C1BFD6.l,X		; 1F D6 BF C1
	adc $591434.l,X		; 7F 34 14 59
	php		; 08
	phy		; 5A
	asl A		; 0A
	bne  11.b		; D0 0B
	stx $1E31.w		; 8E 31 1E
	and $1E3F1F.l,X		; 3F 1F 3F 1E
	rol $1E05.w,X		; 3E 05 1E
	ora $2C.b,S		; 03 2C
	ora ($2C.b,X)		; 01 2C
	ora $2C.b,S		; 03 2C
	brk $70.b		; 00 70
	brk $7F.b		; 00 7F
	tsb $7F.b		; 04 7F
	tsb $967F.w		; 0C 7F 96
	bvs 109.b		; 70 6D
	trb $5E62.w		; 1C 62 5E
	adc ($AF.b),Y		; 71 AF
	stp		; DB
	ora [$8C.b],Y		; 17 8C
	phd		; 0B
	ply		; 7A
	ora $07.b		; 05 07
	brk $2F.b		; 00 2F
	brk $13.b		; 00 13
	bra   5.b		; 80 05
	cpy #$22.b		; C0 22
	cpx #$14.b		; E0 14
	beq   3.b		; F0 03
	sei		; 78
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	asl $80.b,X		; 16 80
	sta $C0.b,X		; 95 C0
	ora $40.b,X		; 15 40
	stx $C0.b,Y		; 96 C0
	ora ($C1.b)		; 12 C1
	ora $0380.w,X		; 1D 80 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E00.w		; 0C 00 0E
	bra  14.b		; 80 0E
	brk $0F.b		; 00 0F
	bra  15.b		; 80 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -80.b		; 80 B0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0E.b		; 00 0E
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	tsb $2CBF.w		; 0C BF 2C
	asl $1E2C.w,X		; 1E 2C 1E
	tsx		; BA
	stz $F8D4.w		; 9C D4 F8
	pea $70D0.w		; F4 D0 70
	cpx #$78.b		; E0 78
	beq 120.b		; F0 78
	bvs   0.b		; 70 00
	sta $009F00.l,X		; 9F 00 9F 00
	jmp.w [$F890]		; DC 90 F8
	rti		; 40

	cld		; D8
	rti		; 40

	inx		; E8
	jsr $30F0.w		; 20 F0 30
	beq  -2.b		; F0 FE
	cpy $DC.b		; C4 DC
	plp		; 28
	jmp.w [$8AA8]		; DC A8 8A
	eor ($81.b,X)		; 41 81
	sta [$1A.b]		; 87 1A
	stx $2D.b		; 86 2D
	tsb $CC.b		; 04 CC
	tsb $00.b		; 04 00
	cpy $00.b		; C4 00
	plp		; 28
	brk $A8.b		; 00 A8
	brk $60.b		; 00 60
	cop $C0.b		; 02 C0
	ora $C0.b		; 05 C0
	ora $90.b,S		; 03 90
	ora $30.b,S		; 03 30
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	tsb $E6.b		; 04 E6
	phy		; 5A
	cmp $22.b,S		; C3 22
	ora $D2.b,S		; 03 D2
	tas		; 1B
	bit $473F.w		; 2C 3F 47
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $BC.b		; 00 BC
	brk $FC.b		; 00 FC
	brk $EC.b		; 00 EC
	brk $C2.b		; 00 C2
	brk $98.b		; 00 98
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tsb $05.b		; 04 05
	php		; 08
	ora $18.b		; 05 18
	inc A		; 1A
	bpl  58.b		; 10 3A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $1A00.w		; 0C 00 1A
	brk $3A.b		; 00 3A
	brk $35.b		; 00 35
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	adc $6F0C.w,X		; 7D 0C 6F
	cop $6B.b		; 02 6B
	brk $6B.b		; 00 6B
	brk $49.b		; 00 49
	bit $49.b		; 24 49
	bit $CC.b		; 24 CC
	jsl $0C22D4.l		; 22 D4 22 0C
	stx $B200.w		; 8E 00 B2
	brk $BC.b		; 00 BC
	brk $BE.b		; 00 BE
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	bpl   0.b		; 10 00
	bit $3813.w		; 2C 13 38
	brk $57.b		; 00 57
	jsr $205C.w		; 20 5C 20
	cli		; 58
	brk $48.b		; 00 48
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	ora $003800.l,X		; 1F 00 38 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	cpx #$E0.b		; E0 E0
	ora $3C00CF.l,X		; 1F CF 00 3C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $000300.l,X		; 3F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $B020.w		; 20 20 B0
	bne  24.b		; D0 18
	inx		; E8
	tsb $0674.w		; 0C 74 06
	tsx		; BA
	sta $4D.b,S		; 83 4D
	cmp ($00.b,X)		; C1 00
	rti		; 40

	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	brk $4E.b		; 00 4E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	bra   0.b		; 80 00
	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	ora $3F1E1F.l		; 0F 1F 1E 3F
	ora $003F.w,Y		; 19 3F 00
	and $08350A.l,X		; 3F 0A 35 08
	ora $2E.b,X		; 15 2E
	ora ($78.b,X)		; 01 78
	pld		; 2B
	ora $213F10.l,X		; 1F 10 3F 21
	and $3D3D26.l,X		; 3F 26 3D 3D
	and ($30.b)		; 32 30
	ora ($10.b,S),Y		; 13 10
	ora ($10.b,X)		; 01 10
	and ($2C.b,X)		; 21 2C
	cmp $DBF9C3.l		; CF C3 F9 DB
	sed		; F8
	sbc ($AD.b,X)		; E1 AD
	sbc $FD04.w,X		; FD 04 FD
	cop $FC.b		; 02 FC
	asl A		; 0A
	jmp ($88B5.w,X)		; 7C B5 88
	cmp ($33.b,X)		; C1 33
	cmp ($1F.b,X)		; C1 1F
	cpx #$07.b		; E0 07
	jsr ($FC53.w,X)		; FC 53 FC
	xce		; FB
	cpx $946D.w		; EC 6D 94
	ora ($78.b,X)		; 01 78
	brk $B7.b		; 00 B7
	rts		; 60

	lda $60.b,X		; B5 60
	eor $012E20.l,X		; 5F 20 2E 01
	rol $2A01.w		; 2E 01 2A
	ora ($5A.b,X)		; 01 5A
	ora ($5A.b,X)		; 01 5A
	ora ($00.b,X)		; 01 00
	adc $6B00.w		; 6D 00 6B
	brk $2B.b		; 00 2B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $17.b		; 00 17
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	ror $80.b		; 66 80
	eor ($B8.b)		; 52 B8
	adc $DD80.w,X		; 7D 80 DD
	sec		; 38
	inc $FE38.w,X		; FE 38 FE
	sec		; 38
	sbc $38F338.l,X		; FF 38 F3 38
	brk $98.b		; 00 98
	brk $BC.b		; 00 BC
	brk $82.b		; 00 82
	brk $BA.b		; 00 BA
	bpl -69.b		; 10 BB
	bpl -69.b		; 10 BB
	bpl -69.b		; 10 BB
	bpl -68.b		; 10 BC
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	rep #$05		; C2 05
	sed		; F8
	cmp $3F.b		; C5 3F
	and ($DF.b,X)		; 21 DF
	cmp ($2E.b),Y		; D1 2E
	sbc ($1A.b,X)		; E1 1A
	adc $D7.b		; 65 D7
	adc #$DF.b		; 69 DF
	adc $3903.w		; 6D 03 39
	eor $D8.b,S		; 43 D8
	jsr $C0EC.w		; 20 EC C0
	pea $3401.w		; F4 01 34
	cpy #$04.b		; C0 04
	bra   8.b		; 80 08
	bra  12.b		; 80 0C
	bpl -72.b		; 10 B8
	bcs -80.b		; B0 B0
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	jmp.w [$BEB8]		; DC B8 BE
	jmp.w [$7C10]		; DC 10 7C
	bpl 120.b		; 10 78
	bcc 120.b		; 90 78
	bra 120.b		; 80 78
	bra 120.b		; 80 78
	bra 120.b		; 80 78
	clc		; 18
	sec		; 38
	jmp $001C.w		; 4C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$35.b]		; 07 35
	asl $003F.w		; 0E 3F 00
	tsb $1C1E.w		; 0C 1E 1C
	trb $1C9C.w		; 1C 9C 1C
	tya		; 98
	trb $3818.w		; 1C 18 38
	tya		; 98
	sec		; 38
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $FC18.w,X		; 3E 18 FC
	bpl 124.b		; 10 7C
	sbc $FF1CFF.l		; EF FF 1C FF
	clc		; 18
	adc $869F70.l,X		; 7F 70 9F 86
	sta $0F70.w,Y		; 99 70 0F
	trb $F0F2.w		; 1C F2 F0
	asl $FF.b		; 06 FF
	bpl  -1.b		; 10 FF
	sbc $FD.b,S		; E3 FD
	and $9D.b		; 25 9D
	ora #$79.b		; 09 79
	ora ($FB.b),Y		; 11 FB
	ora $60.b,S		; 03 60
	brk $0C.b		; 00 0C
	brk $E8.b		; 00 E8
	jmp ($6CC8.w)		; 6C C8 6C
	brk $4C.b		; 00 4C
	beq  24.b		; F0 18
	bvc -104.b		; 50 98
	iny		; C8
	bcs -40.b		; B0 D8
	rts		; 60

	bpl   0.b		; 10 00
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	clc		; 18
	cpx #$20.b		; E0 20
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	cpy #$40.b		; C0 40
	cpx #$40.b		; E0 40
	cpx #$C0.b		; E0 C0
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	cpx #$A0.b		; E0 A0
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	ora [$19.b]		; 07 19
	jsr ($0003.w,X)		; FC 03 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	asl $0F.b		; 06 0F
	ora $191F.w		; 0D 1F 19
	ora $18191F.l,X		; 1F 1F 19 18
	ora $03.b,S		; 03 03
	brk $E0.b		; 00 E0
	cpx #$FC.b		; E0 FC
	beq  -2.b		; F0 FE
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $E0FFFE.l,X		; FF FE FF E0
	cpx #$FC.b		; E0 FC
	trb $CEFE.w		; 1C FE CE
	inc $FF42.w,X		; FE 42 FF
	and ($FF.b,X)		; 21 FF
	php		; 08
	sbc $01FF12.l,X		; FF 12 FF 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $037D00.l,X		; 5F 00 7D 03
	and ($0E.b)		; 32 0E
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $34.b		; 00 34
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc ($3B.b,S),Y		; F3 3B
	clv		; B8
	bcs  56.b		; B0 38
	bmi  58.b		; 30 3A
	and ($3B.b)		; 32 3B
	and ($B1.b,S),Y		; 33 B1
	tyx		; BB
	tya		; 98
	tyx		; BB
	trb $10DD.w		; 1C DD 10
	bit $7C13.w,X		; 3C 13 7C
	sta $7C.b,S		; 83 7C
	sta ($7C.b,X)		; 81 7C
	bra 124.b		; 80 7C
	cop $7C.b		; 02 7C
	tas		; 1B
	jmp ($3ECD.w,X)		; 7C CD 3E
	mvp $6C,$06		; 44 06 6C
	lsr $EE4C.w		; 4E 4C EE
	sty $60DE.w		; 8C DE 60
	stx $D9.b		; 86 D9
	tsa		; 3B
	ldy $ED07.w,X		; BC 07 ED
	ora $05.b,S		; 03 05
	sty $DC05.w		; 8C 05 DC
	ora $FC.b		; 05 FC
	ora ($FC.b,X)		; 01 FC
	ora ($DC.b,X)		; 01 DC
	php		; 08
	ldy $4400.w,X		; BC 00 44
	brk $5B.b		; 00 5B
	cmp $C37E.w,X		; DD 7E C3
	adc $61C2.w,X		; 7D C2 61
	phx		; DA
	jmp ($71CF.w,X)		; 7C CF 71
	and ($41.b)		; 32 41
	and ($C0.b,X)		; 21 C0
	and ($80.b,X)		; 21 80
	bra  30.b		; 80 1E
	bra  29.b		; 80 1D
	bra  29.b		; 80 1D
	bra  29.b		; 80 1D
	bra  17.b		; 80 11
	cpy #$09.b		; C0 09
	brk $10.b		; 00 10
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $7F1F3F.l		; 0F 3F 1F 7F
	and [$FF.b],Y		; 37 FF
	ora [$FF.b]		; 07 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $363F08.l		; 0F 08 3F 36
	adc $C9FF6A.l,X		; 7F 6A FF C9
	sbc $0000F8.l,X		; FF F8 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpx #$F0.b		; E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	beq 112.b		; F0 70
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	jsr ($B744.w,X)		; FC 44 B7
	rts		; 60

	lda $60.b,X		; B5 60
	eor $012E20.l,X		; 5F 20 2E 01
	rol $2A01.w		; 2E 01 2A
	ora ($5A.b,X)		; 01 5A
	ora ($5A.b,X)		; 01 5A
	ora ($00.b,X)		; 01 00
	adc $6B00.w		; 6D 00 6B
	brk $2B.b		; 00 2B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $17.b		; 00 17
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	dec $A600.w		; CE 00 A6
	bvs  -3.b		; 70 FD
	brk $B9.b		; 00 B9
	bvs  -6.b		; 70 FA
	bvs  -6.b		; 70 FA
	bvs  -1.b		; 70 FF
	bvs  -1.b		; 70 FF
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	sei		; 78
	brk $02.b		; 00 02
	brk $76.b		; 00 76
	jsr $2077.w		; 20 77 20
	adc [$20.b],Y		; 77 20
	tda		; 7B
	jsr $0778.w		; 20 78 07
	brk $1C.b		; 00 1C
	brk $27.b		; 00 27
	tsb $1B.b		; 04 1B
	inc A		; 1A
	eor $34.b		; 45 34
	eor ($3A.b)		; 52 3A
	sec		; 38
	ror $4C19.w		; 6E 19 4C
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $1D.b		; 04 1D
	asl A		; 0A
	rol $0E00.w,X		; 3E 00 0E
	jsr $1007.w		; 20 07 10
	sta $30.b,S		; 83 30
	.db $82, $04, $00		; 82 04 00
	asl $04.b		; 06 04
	tsb $0E.b		; 04 0E
	php		; 08
	ora $0806.w		; 0D 06 08
	ora $0B03.w,X		; 1D 03 0B
	bpl  30.b		; 10 1E
	bmi   0.b		; 30 00
	php		; 08
	brk $0D.b		; 00 0D
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	brk $34.b		; 00 34
	brk $75.b		; 00 75
	inc A		; 1A
	jmp $CD98.w		; 4C 98 CD
	tya		; 98
	cmp $CC98.w		; CD 98 CC
	tas		; 1B
	eor $86EEA1.l		; 4F A1 EE 86
	sed		; F8
	ldy $70.b		; A4 70
	bmi -127.b		; 30 81
	bmi -125.b		; 30 83
	bmi -125.b		; 30 83
	bmi -125.b		; 30 83
	bmi -125.b		; 30 83
	tya		; 98
	.db $82, $00, $81		; 82 00 81
	brk $7B.b		; 00 7B
	sbc ($DF.b,X)		; E1 DF
	cmp $D63CE0.l,X		; DF E0 3C D6
	and ($15.b,X)		; 21 15
	adc $B481.w		; 6D 81 B4
	tas		; 1B
	and $1C1A.w		; 2D 1A 1C
	brk $06.b		; 00 06
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cmp [$00.b],Y		; D7 00
	dec $9002.w,X		; DE 02 90
	brk $18.b		; 00 18
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	cpy #$20.b		; C0 20
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0E.b,X		; 35 0E
	and $1E0C00.l,X		; 3F 00 0C 1E
	trb $9C1E.w		; 1C 1E 9C
	trb $1C9C.w		; 1C 9C 1C
	cli		; 58
	trb $18D8.w		; 1C D8 18
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	tsb $083F.w		; 0C 3F 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	ldx $3C10.w,Y		; BE 10 3C
	bpl -72.b		; 10 B8
	bcc -72.b		; 90 B8
	bpl  48.b		; 10 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	jmp.w [$BEB8]		; DC B8 BE
	jmp.w [$7C10]		; DC 10 7C
	bpl 124.b		; 10 7C
	bcc 120.b		; 90 78
	bra 120.b		; 80 78
	bra 120.b		; 80 78
	bra 120.b		; 80 78
	clc		; 18
	sec		; 38
	jmp $001C.w		; 4C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $AC5F27.l		; 0F 27 5F AC
	eor $713FE1.l,X		; 5F E1 3F 71
	ora [$F7.b],Y		; 17 F7
	ora $59A8.w,Y		; 19 A8 59
	rtl		; 6B

	tya		; 98
	ora $981F00.l		; 0F 00 1F 98
	and $8E1F93.l,X		; 3F 93 1F 8E
	ora $4009C2.l		; 0F C2 09 40
	ora [$41.b],Y		; 17 41
	ora [$80.b]		; 07 80
	inx		; E8
	jsr ($FEF4.w,X)		; FC F4 FE
	pea $CCFE.w		; F4 FE CC
	inc $FC88.w,X		; FE 88 FC
	php		; 08
	jsr ($9860.w,X)		; FC 60 98
	brk $F0.b		; 00 F0
	jsr ($FE94.w,X)		; FC 94 FE
	asl A		; 0A
	inc $FE0A.w,X		; FE 0A FE
	and ($DC.b)		; 32 DC
	mvn $94,$DC		; 54 DC 94
	tya		; 98
	clc		; 18
	bcs  48.b		; B0 30
	eor $037D00.l,X		; 5F 00 7D 03
	and ($0E.b)		; 32 0E
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $34.b		; 00 34
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	lda $303073.l,X		; BF 73 30 30
	sec		; 38
	bmi  50.b		; 30 32
	dec A		; 3A
	and ($3B.b,S),Y		; 33 3B
	lda $98BB.w,Y		; B9 BB 98
	tyx		; BB
	trb $10DD.w		; 1C DD 10
	sei		; 78
	sta ($7C.b,S),Y		; 93 7C
	sta ($7C.b,S),Y		; 93 7C
	sta ($7C.b,X)		; 81 7C
	bra 124.b		; 80 7C
	cop $7C.b		; 02 7C
	tas		; 1B
	jmp ($3ECD.w,X)		; 7C CD 3E
	ora [$0F.b]		; 07 0F
	ora $7F3F3F.l		; 0F 3F 3F 7F
	bit $287F.w,X		; 3C 7F 28
	adc $207F29.l,X		; 7F 29 7F 20
	ror $790E.w,X		; 7E 0E 79
	ora $363F0A.l		; 0F 0A 3F 36
	adc $437F40.l,X		; 7F 40 7F 43
	adc $547E57.l,X		; 7F 57 7E 54
	adc $70705C.l,X		; 7F 5C 70 70
	clv		; B8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FFDE.w,X		; FE DE FF
	lsr A		; 4A
	sbc $28FF12.l,X		; FF 12 FF 28
	cmp $FE44FC.l,X		; DF FC 44 FE
	asl A		; 0A
	inc $FE32.w,X		; FE 32 FE
	ora ($FF.b)		; 12 FF
	and ($FF.b,X)		; 21 FF
	lda $EF.b,X		; B5 EF
	sbc $0787.w		; ED 87 07
	sta ($3D.b,X)		; 81 3D
	cmp ($7D.b,X)		; C1 7D
	cmp ($7D.b,X)		; C1 7D
	xce		; FB
	ora $7B.b,S		; 03 7B
	cmp ($27.b,S),Y		; D3 27
	cmp [$16.b]		; C7 16
	eor [$2F.b]		; 47 2F
	ror $037C.w		; 6E 7C 03
	and $3D03.w,X		; 3D 03 3D
	ora $01.b,S		; 03 01
	ora [$22.b]		; 07 22
	ora [$72.b]		; 07 72
	ora $040F32.l		; 0F 32 0F 04
	asl $6B65.w,X		; 1E 65 6B
	sbc $E9.b		; E5 E9
	sbc ($DD.b,X)		; E1 DD
	adc $E081.w,X		; 7D 81 E0
	ora $11AC.w		; 0D AC 11
	cpy #$6D.b		; C0 6D
	cpx $68F1.w		; EC F1 68
	sbc ($C8.b,S),Y		; F3 C8
	sbc ($1C.b,S),Y		; F3 1C
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	ora $005300.l,X		; 1F 00 53 00
	adc $00F340.l,X		; 7F 40 F3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	bvs  -1.b		; 70 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	sbc $00008F.l,X		; FF 8F 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$E0.b		; C0 E0
	cpy #$F0.b		; C0 F0
	cpx #$E0.b		; E0 E0
	cpy #$E0.b		; C0 E0
	bvs -64.b		; 70 C0
	bne   0.b		; D0 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bit $06.b,X		; 34 06
	ora $04FD.w,X		; 1D FD 04
	sbc [$40.b]		; E7 40
	sta $3A.b,S		; 83 3A
	sta ($3E.b,X)		; 81 3E
	sta $3C.b,S		; 83 3C
	sta ($3D.b,X)		; 81 3D
	bmi  53.b		; 30 35
	trb $15.b		; 14 15
	ora $00.b,S		; 03 00
	sei		; 78
	rti		; 40

	jmp ($7E00.w,X)		; 7C 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	ora $E8.b,S		; 03 E8
	sta [$34.b],Y		; 97 34
	eor $F100CF.l,X		; 5F CF 00 F1
	brk $E3.b		; 00 E3
	bit $BB47.w		; 2C 47 BB
	jmp $AF97.w		; 4C 97 AF
	and [$07.b]		; 27 07
	eor [$93.b],Y		; 57 93
	eor ($F0.b,S),Y		; 53 F0
	brk $0F.b		; 00 0F
	brk $9C.b		; 00 9C
	brk $B8.b		; 00 B8
	ora $90.b,S		; 03 90
	and [$22.b]		; 27 22
	adc [$0F.b],Y		; 77 0F
	ror $1E2C.w		; 6E 2C 1E
	bit $5B1E.w		; 2C 1E 5B
	ora $003F.w		; 0D 3F 00
	ora $201D21.l,X		; 1F 21 1D 20
	and $2400.w		; 2D 00 24
	asl $1F0C.w,X		; 1E 0C 1F
	php		; 08
	ora $002D00.l,X		; 1F 00 2D 00
	eor ($00.b)		; 52 00
	adc $6200.w		; 6D 00 62
	brk $56.b		; 00 56
	sed		; F8
	sbc $F9F8.w,X		; FD F8 F9
	xce		; FB
	sed		; F8
	inc $F0.b,X		; F6 F0
	xba		; EB
	cpx $505E.w		; EC 5E 50
	lda $A0.b,X		; B5 A0
	sbc $FFE040.l,X		; FF 40 E0 FF
	beq  -1.b		; F0 FF
	beq  -4.b		; F0 FC
	cpx #$F9.b		; E0 F9
	rti		; 40

	jsr ($F000.w,X)		; FC 00 F0
	ldy #$EA.b		; A0 EA
	rti		; 40

	lsr A		; 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $000008.l		; 0F 08 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -2.b		; 80 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	inc $0C7E.w,X		; FE 7E 0C
	ora ($06.b)		; 12 06
	ora #$F9.b		; 09 F9
	asl $E7.b		; 06 E7
	rti		; 40

	cmp $7A.b,S		; C3 7A
	cmp ($7E.b,X)		; C1 7E
	cmp $7C.b,S		; C3 7C
	cmp ($7D.b,X)		; C1 7D
	ora ($10.b),Y		; 11 10
	php		; 08
	php		; 08
	asl $06.b		; 06 06
	sei		; 78
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	ora $32.b,S		; 03 32
	ora ($BC.b,S),Y		; 13 BC
	sta ($17.b,X)		; 81 17
	dey		; 88
	sbc ($00.b),Y		; F1 00
	sbc $2C.b,S		; E3 2C
	cmp [$BB.b]		; C7 BB
	cpy $AF97.w		; CC 97 AF
	and [$F4.b]		; 27 F4
	clc		; 18
	ror $F800.w,X		; 7E 00 F8
	brk $0F.b		; 00 0F
	brk $9C.b		; 00 9C
	brk $38.b		; 00 38
	ora $10.b,S		; 03 10
	and [$22.b]		; 27 22
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$E0.b		; C0 E0
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	beq  15.b		; F0 0F
	ror $1E2C.w		; 6E 2C 1E
	jmp ($5B1E.w)		; 6C 1E 5B
	ora $003D.w		; 0D 3D 00
	ora $201D21.l,X		; 1F 21 1D 20
	and $2400.w		; 2D 00 24
	asl $1F0C.w,X		; 1E 0C 1F
	php		; 08
	ora $002D00.l,X		; 1F 00 2D 00
	eor ($00.b)		; 52 00
	adc $6200.w		; 6D 00 62
	brk $56.b		; 00 56
	sed		; F8
	sbc $F9F8.w,X		; FD F8 F9
	xce		; FB
	sed		; F8
	sbc ($F0.b)		; F2 F0
	xba		; EB
	cpx $505E.w		; EC 5E 50
	lda $A0.b,X		; B5 A0
	sbc $FFE040.l,X		; FF 40 E0 FF
	beq  -1.b		; F0 FF
	beq  -4.b		; F0 FC
	cpx #$FD.b		; E0 FD
	rti		; 40

	jsr ($F000.w,X)		; FC 00 F0
	ldy #$EA.b		; A0 EA
	rti		; 40

	lsr A		; 4A
	cpx #$E0.b		; E0 E0
	cpy #$E0.b		; C0 E0
	bvs -64.b		; 70 C0
	bne   0.b		; D0 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	eor $F8.b		; 45 F8
	phd		; 0B
	pea $181F.w		; F4 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	sbc $F298.w,X		; FD 98 F2
	bcs -22.b		; B0 EA
	cpx #$F8.b		; E0 F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $C0FF02.l,X		; FF 02 FF C0
	and $E83648.l,X		; 3F 48 36 E8
	ldy $FE.b,X		; B4 FE
	rol $FE.b		; 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADFF.w		; 69 FF AD
	and $861607.l,X		; 3F 07 16 86
	trb $84.b		; 14 84
	cmp ($7D.b,X)		; C1 7D
	cmp ($7D.b,X)		; C1 7D
	cmp ($7D.b,X)		; C1 7D
	xce		; FB
	ora $73.b,S		; 03 73
	stp		; DB
	ora [$C7.b],Y		; 17 C7
	asl $47.b		; 06 47
	and $033C6E.l		; 2F 6E 3C 03
	and $3D03.w,X		; 3D 03 3D
	ora $01.b,S		; 03 01
	ora [$22.b]		; 07 22
	ora [$72.b]		; 07 72
	ora $040F32.l		; 0F 32 0F 04
	asl $6B65.w,X		; 1E 65 6B
	sbc $E9.b		; E5 E9
	sbc ($DD.b,X)		; E1 DD
	adc $E081.w,X		; 7D 81 E0
	ora $11AC.w		; 0D AC 11
	cpy #$EC6D.w		; C0 6D EC
	sbc ($68.b),Y		; F1 68
	sbc ($C8.b,S),Y		; F3 C8
	sbc ($1C.b,S),Y		; F3 1C
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	ora $005300.l,X		; 1F 00 53 00
	adc $07F340.l,X		; 7F 40 F3 07
	ora $3F3F0F.l		; 0F 0F 3F 3F
	adc $287F3C.l,X		; 7F 3C 7F 28
	adc $207F29.l,X		; 7F 29 7F 20
	ror $780F.w,X		; 7E 0F 78
	ora $363F0A.l		; 0F 0A 3F 36
	adc $437F40.l,X		; 7F 40 7F 43
	adc $547E57.l,X		; 7F 57 7E 54
	adc $70705C.l,X		; 7F 5C 70 70
	clv		; B8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FFDE.w,X		; FE DE FF
	lsr A		; 4A
	sbc $68FF12.l,X		; FF 12 FF 68
	sta $FE44FC.l,X		; 9F FC 44 FE
	asl A		; 0A
	inc $FE32.w,X		; FE 32 FE
	ora ($FF.b)		; 12 FF
	and ($FF.b,X)		; 21 FF
	lda $EF.b,X		; B5 EF
	sbc $0787.w		; ED 87 07
	sta $AC3E50.l,X		; 9F 50 3E AC
	ora $55CD.w,X		; 1D CD 55
	sbc $D569.w		; ED 69 D5
	adc $D9.b,X		; 75 D9
	tda		; 7B
	cmp ($47.b,S),Y		; D3 47
	cmp [$00.b]		; C7 00
	bvs  32.b		; 70 20
	adc $2F41.w		; 6D 41 2F
	jsr $310F.w		; 20 0F 31
	ora [$20.b]		; 07 20
	ora $21.b,S		; 03 21
	ora [$00.b]		; 07 00
	and $AF401E.l,X		; 3F 1E 40 AF
	eor $16.b		; 45 16
	pea $F512.w		; F4 12 F5
	ora [$F1.b],Y		; 17 F1
	tas		; 1B
	sbc $FC1D.w,Y		; F9 1D FC
	ora $01A0FF.l		; 0F FF A0 01
	eor ($15.b,X)		; 41 15
	bvc  29.b		; 50 1D
	eor ($1C.b,X)		; 41 1C
	bvc  24.b		; 50 18
	rti		; 40

	trb $1E50.w		; 1C 50 1E
	lsr $1F.b		; 46 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bvs  -1.b		; 70 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	sbc $00008F.l,X		; FF 8F 00 00
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
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	cpy #$4060.w		; C0 60 40
	rts		; 60

	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$C0A0.w		; C0 A0 C0
	cpx #$60C0.w		; E0 C0 60
	bra -96.b		; 80 A0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C080.w		; C0 80 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bit $06.b,X		; 34 06
	ora $1801.w,X		; 1D 01 18
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	cop $01.b		; 02 01
	ora $007700.l		; 0F 00 77 00
	bmi  53.b		; 30 35
	trb $15.b		; 14 15
	ora [$10.b],Y		; 17 10
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	inx		; E8
	sta [$30.b],Y		; 97 30
	eor $401FD4.l,X		; 5F D4 1F 40
	dec $FCC0.w,X		; DE C0 FC
	clv		; B8
	rti		; 40

	lda [$40.b],Y		; B7 40
	asl $0741.w,X		; 1E 41 07
	eor [$97.b],Y		; 57 97
	eor ($E3.b,S),Y		; 53 E3
	ora $B6.b,S		; 03 B6
	asl $2C.b		; 06 2C
	tsb $0040.w		; 0C 40 00
	ldy #$A008.w		; A0 08 A0
	ora $BF5E.w		; 0D 5E BF
	jmp.w [$F93E]		; DC 3E F9
	and $19F2.w,X		; 3D F2 19
	jmp ($7B02.w,X)		; 7C 02 7B
	ora ($55.b,X)		; 01 55
	jsr $006D.w		; 20 6D 00
	tsb $183F.w		; 0C 3F 18
	and $003F10.l,X		; 3F 10 3F 00
	eor $2300.w,X		; 5D 00 23
	brk $05.b		; 00 05
	brk $2A.b		; 00 2A
	brk $16.b		; 00 16
	lda [$4F.b]		; A7 4F
	sbc $17.b,S		; E3 17
	sbc ($FB.b),Y		; F1 FB
	sbc [$F0.b],Y		; F7 F0
	sbc [$E8.b]		; E7 E8
	lsr $B550.w,X		; 5E 50 B5
	ldy #$40FF.w		; A0 FF 40
	eor $1F.b,S		; 43 1F
	brk $1F.b		; 00 1F
	cpx #$E0FF.w		; E0 FF E0
	sed		; F8
	rti		; 40

	jsr ($F000.w,X)		; FC 00 F0
	ldy #$40EA.w		; A0 EA 40
	lsr A		; 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($06.b,S),Y		; 13 06
	phd		; 0B
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	php		; 08
	asl $0F7E.w,X		; 1E 7E 0F
	ora $2E6E.w		; 0D 6E 2E
	adc $3E4E09.l		; 6F 09 4E 3E
	cmp ($71.b,X)		; C1 71
	dec $950A.w		; CE 0A 95
	sbc $0F0033.l		; EF 33 00 0F
	jsr $001F.w		; 20 1F 00
	ora $601E20.l,X		; 1F 20 1E 60
	ora ($20.b,X)		; 01 20
	asl $0570.w		; 0E 70 05
	eor ($03.b,X)		; 41 03
	sbc $4E571E.l		; EF 1E 57 4E
	lda $0E535E.l		; AF 5E 53 0E
	sbc $0E1150.l		; EF 50 11 0E
	nop		; EA
	pea $F8F6.w		; F4 F6 F8
	brk $1E.b		; 00 1E
	brk $FE.b		; 00 FE
	brk $5E.b		; 00 5E
	brk $AE.b		; 00 AE
	brk $50.b		; 00 50
	brk $EE.b		; 00 EE
	brk $F4.b		; 00 F4
	cpx #$7CF8.w		; E0 F8 7C
	pha		; 48
	stz $3CAC.w		; 9C AC 3C
	jmp ($4CDC.w)		; 6C DC 4C
	jmp $CE1CCC.l		; 5C CC 1C CE
	trb $3ECE.w		; 1C CE 3E
	ror $CE00.w		; 6E 00 CE
	ldy #$40CE.w		; A0 CE 40
	stx $0E20.w		; 8E 20 0E
	bit $0E.b		; 24 0E
	stz $0F.b		; 64 0F
	stz $0F.b		; 64 0F
	tsb $0F.b		; 04 0F
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
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	and $FF6F7F.l,X		; 3F 7F 6F FF
	jmp ($CDFF.w)		; 6C FF CD
	plx		; FA
	txa		; 8A
	beq  23.b		; F0 17
	sbc #$303F.w		; E9 3F 30
	adc $407F5B.l,X		; 7F 5B 7F 40
	sbc $93FF90.l,X		; FF 90 FF 93
	plx		; FA
	bmi -28.b		; 30 E4
	adc ($D4.b,X)		; 61 D4
	cmp ($F0.b,X)		; C1 F0
	jsr ($FCF8.w,X)		; FC F8 FC
	stz $0CFE.w		; 9C FE 0C
	inc $FE04.w,X		; FE 04 FE
	sbc [$78.b]		; E7 78
	lda $7B.b		; A5 7B
	pei ($6A.b)		; D4 6A
	jsr ($FC4C.w,X)		; FC 4C FC
	sty $FE.b		; 84 FE
	.db $62, $DE, $D2		; 62 DE D2
	inc $185A.w,X		; FE 5A 18
	php		; 08
	ora #$2909.w		; 09 09 29
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $02C300.l,X		; FF 00 C3 02
	ora ($FE.b,X)		; 01 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F0F.l		; 0F 0F 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $00101F.l		; 0F 1F 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
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
	brk $0B.b		; 00 0B
	asl A		; 0A
	ora $0D0F0D.l		; 0F 0D 0F 0D
	ora $0803.w,X		; 1D 03 08
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $1D09.w,X		; 1E 09 1D
	ora ($1D.b,X)		; 01 1D
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $A7CFB7.l		; CF B7 CF A7
	sta $93BBA7.l,X		; 9F A7 BB 93
	adc $BE95.w,Y		; 79 95 BE
	cop $2B.b		; 02 2B
	ora ($2B.b,X)		; 01 2B
	brk $23.b		; 00 23
	sta [$83.b]		; 87 83
	sta [$83.b]		; 87 83
	cmp [$01.b]		; C7 01
	cmp [$00.b],Y		; D7 00
	sta [$00.b],Y		; 97 00
	ora $01.b,S		; 03 01
	ora $00.b,X		; 15 00
	trb $FA.b		; 14 FA
	jsr ($FCFA.w,X)		; FC FA FC
	xce		; FB
	jsr ($E1E3.w,X)		; FC E3 E1
	cmp [$D9.b],Y		; D7 D9
	lda $406BA1.l,X		; BF A1 6B 40
	sbc $80.b,X		; F5 80
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	cpx #$C0FC.w		; E0 FC C0
	sbc $FD80.w,X		; FD 80 FD
	brk $E1.b		; 00 E1
	rti		; 40

	pei ($80.b)		; D4 80
	txs		; 9A
	asl $046E.w,X		; 1E 6E 04
	lsr $36.b,X		; 56 36
	php		; 08
	rol $1C00.w,X		; 3E 00 1C
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$0F24.w		; C0 24 0F
	brk $3F.b		; 00 3F
	brk $88.b		; 00 88
	brk $94.b		; 00 94
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cmp $21.b,S		; C3 21
	rtl		; 6B

	tya		; 98
	ora ($68.b),Y		; 11 68
	ora ($27.b,S),Y		; 13 27
	trb $07.b		; 14 07
	sbc ($02.b),Y		; F1 02
	tsa		; 3B
	asl A		; 0A
	sbc [$0C.b],Y		; F7 0C
	ora $808701.l,X		; 1F 01 87 80
	adc $202C60.l		; 6F 60 2C 20
	php		; 08
	brk $00.b		; 00 00
	tsb $E004.w		; 0C 04 E0
	php		; 08
	brk $24.b		; 00 24
	and ($C4.b)		; 32 C4
	ora ($24.b)		; 12 24
	sbc ($44.b)		; F2 44
	.db $62, $04, $C2		; 62 04 C2
	sbc ($00.b,S),Y		; F3 00
	sta $FD00.w,Y		; 99 00 FD
	php		; 08
	eor ($80.b,X)		; 41 80
	sbc ($00.b,X)		; E1 00
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $08.b		; 00 08
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($CE.b,X)		; 01 CE
	adc ($B6.b,X)		; 61 B6
	inc $50.b,X		; F6 50
	beq  80.b		; F0 50
	cpy #$FE60.w		; C0 60 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $CE.b		; 00 CE
	bmi -122.b		; 30 86
	sec		; 38
	bvc 120.b		; 50 78
	bvc 120.b		; 50 78
	rti		; 40

	bvs   0.b		; 70 00
	cpy #$0070.w		; C0 70 00
	sed		; F8
	bpl -20.b		; 10 EC
	php		; 08
	dey		; 88
	rol A		; 2A
	ldy $61.b,X		; B4 61
	sbc ($A0.b)		; F2 A0
	adc $A4.b,X		; 75 A4
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $50.b		; 00 50
	brk $18.b		; 00 18
	php		; 08
	jmp ($6806.w,X)		; 7C 06 68
	ora [$A8.b]		; 07 A8
	ora $A8.b,S		; 03 A8
	asl $0E.b		; 06 0E
	tsb $0C0E.w		; 0C 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	trb $5C1C.w		; 1C 1C 5C
	bit $5CB8.w,X		; 3C B8 5C
	inx		; E8
	cli		; 58
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $083E.w		; 0C 3E 08
	rol $3E18.w,X		; 3E 18 3E
	php		; 08
	lsr $5C00.w,X		; 5E 00 5C
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $0A05.w		; 0D 05 0A
	ora ($0D.b)		; 12 0D
	and #$4513.w		; 29 13 45
	rol A		; 2A
	sta $1C52.w		; 8D 52 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	cop $07.b		; 02 07
	ora ($03.b),Y		; 11 03
	bit $7401.w,X		; 3C 01 74
	ora ($E8.b,X)		; 01 E8
	ora ($94.b,X)		; 01 94
	ora [$69.b]		; 07 69
	bpl -42.b		; 10 D6
	asl A		; 0A
	tda		; 7B
	mvp $41,$4F		; 44 4F 41
	eor $5A5E.w,X		; 5D 5E 5A
	jmp $00DEDD.l		; 5C DD DE 00
	pla		; 68
	brk $F6.b		; 00 F6
	ora ($38.b,X)		; 01 38
	ora ($CC.b,X)		; 01 CC
	brk $F0.b		; 00 F0
	rti		; 40

	inc $FF40.w,X		; FE 40 FF
	cpy #$1CFE.w		; C0 FE 1C
	brk $13.b		; 00 13
	tsb $0815.w		; 0C 15 08
	asl A		; 0A
	brk $0D.b		; 00 0D
	brk $15.b		; 00 15
	brk $39.b		; 00 39
	brk $2A.b		; 00 2A
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $0A00.w		; 0C 00 0A
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	brk $06.b		; 00 06
	brk $15.b		; 00 15
	adc $0E1ECF.l		; 6F CF 1E 0E
	sbc $15.b,X		; F5 15
	tyx		; BB
	asl A		; 0A
	adc $007D04.l		; 6F 04 7D 00
	ldy $4A.b,X		; B4 4A
	sta ($4A.b),Y		; 91 4A
	asl $04FF.w		; 0E FF 04
	sbc $0A1F10.l		; EF 10 1F 0A
	lsr $D504.w		; 4E 04 D5
	brk $DA.b		; 00 DA
	brk $DB.b		; 00 DB
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	ora $000003.l		; 0F 03 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	sec		; 38
	sty $8CB0.w		; 8C B0 8C
	ldy #$9088.w		; A0 88 90
	tya		; 98
	cpx #$00F8.w		; E0 F8 00
	beq -128.b		; F0 80
	bvs -64.b		; 70 C0
	ldy #$00F0.w		; A0 F0 00
	sei		; 78
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $3F7F3F.l,X		; 3F 3F 7F 3F
	adc $00FF6F.l,X		; 7F 6F FF 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3F101F.l		; 0F 1F 10 3F
	bmi 127.b		; 30 7F
	tad		; 5B
	adc $90FF40.l,X		; 7F 40 FF 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -4.b		; F0 FC
	sed		; F8
	jsr ($FE9C.w,X)		; FC 9C FE
	tsb $00FE.w		; 0C FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -4.b		; F0 FC
	jmp $84FC.w		; 4C FC 84
	inc $DE62.w,X		; FE 62 DE
	cmp ($00.b)		; D2 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $1616.w		; 0E 16 16
	ora ($12.b)		; 12 12
	tsb $060E.w		; 0C 0E 06
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	asl $1F0C.w		; 0E 0C 1F
	asl $3F.b,X		; 16 3F
	brk $3F.b		; 00 3F
	tsb $3F.b		; 04 3F
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	sec		; 38
	sty $58.b		; 84 58
	dec $1C.b		; C6 1C
	dec $24.b		; C6 24
	ror $1C.b		; 66 1C
	adc $073F18.l,X		; 7F 18 3F 07
	sec		; 38
	ora $007817.l		; 0F 17 78 00
	bit $7800.w,X		; 3C 00 78
	brk $18.b		; 00 18
	brk $22.b		; 00 22
	brk $06.b		; 00 06
	brk $18.b		; 00 18
	brk $06.b		; 00 06
	ora [$54.b]		; 07 54
	jsr $30CC.w		; 20 CC 30
	ldy $6A10.w		; AC 10 6A
	bpl  70.b		; 10 46
	clc		; 18
	rol $08.b,X		; 36 08
	and #$1904.w		; 29 04 19
	tsb $00.b		; 04 00
	sed		; F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	eor $F8.b		; 45 F8
	phd		; 0B
	pea $9069.w		; F4 69 90
	and $4C.b,X		; 35 4C
	bpl  44.b		; 10 2C
	and ($0B.b),Y		; 31 0B
	adc $98FD49.l,X		; 7F 49 FD 98
	sbc ($B0.b)		; F2 B0
	nop		; EA
	cpx #$808F.w		; E0 8F 80
	eor $40.b,S		; 43 40
	and [$20.b]		; 27 20
	asl $00.b		; 06 00
	ora ($FF.b)		; 12 FF
	beq  63.b		; F0 3F
	bvc  62.b		; 50 3E
	inx		; E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$EFB0.w		; A0 B0 EF
	lda $070F.w		; AD 0F 07
	asl $86.b		; 06 86
	trb $84.b		; 14 84
	ldy #$F0C0.w		; A0 C0 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $30.b		; 00 30
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	sta ($6E.b)		; 92 6E
	sbc ($07.b),Y		; F1 07
	bcc  99.b		; 90 63
	ldy #$4041.w		; A0 41 40
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   5.b		; 80 05
	rts		; 60

	cop $00.b		; 02 00
	ora ($60.b,X)		; 01 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bcc 104.b		; 90 68
	tay		; A8
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($5000.w)		; 6C 00 50
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($39.b,X)		; A1 39
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	lda [$C0.b]		; A7 C0
	sbc $02.b		; E5 02
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	sbc $7FFC.w,Y		; F9 FC 7F
	sbc $D01FEF.l,X		; FF EF 1F D0
	ora $20.b,S		; 03 20
	ora ($00.b,X)		; 01 00
	cmp ($00.b,X)		; C1 00
	ora ($00.b)		; 12 00
	sbc $3CFE70.l,X		; FF 70 FE 3C
	sbc $D31F03.l,X		; FF 03 1F D3
	jmp.w [$80FE]		; DC FE 80
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	inc $FF1B.w,X		; FE 1B FF
	ora [$6F.b]		; 07 6F
	sbc $B7F7D7.l		; EF D7 F7 B7
	sbc [$C0.b]		; E7 C0
	jsr ($8100.w,X)		; FC 00 81
	brk $BD.b		; 00 BD
	brk $DB.b		; 00 DB
	asl $07.b		; 06 07
	eor $FF87FF.l		; 4F FF 87 FF
	ora [$FF.b]		; 07 FF
	ora ($00.b)		; 12 00
	ora ($00.b)		; 12 00
	ora $0500.w		; 0D 00 05
	php		; 08
	ora $0C.b,S		; 03 0C
	cop $0F.b		; 02 0F
	cop $0E.b		; 02 0E
	ora ($0C.b,X)		; 01 0C
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	cmp ($09.b)		; D2 09
	cmp ($09.b)		; D2 09
	.db $42, $99		; 42 99
	eor $98.b		; 45 98
	cmp $18.b		; C5 18
	sbc $635C00.l,X		; FF 00 5C 63
	sta ($37.b,X)		; 81 37
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1C.b		; 00 1C
	lda ($00.b,X)		; A1 00
	cpx #$0800.w		; E0 00 08
	tsb $11.b		; 04 11
	cop $19.b		; 02 19
	asl $2A.b		; 06 2A
	tsb $32.b		; 04 32
	tsb $0835.w		; 0C 35 08
	eor $18.b		; 45 18
	ror A		; 6A
	bpl   0.b		; 10 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3C.b		; 00 3C
	rts		; 60

	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	cli		; 58
	brk $B8.b		; 00 B8
	brk $30.b		; 00 30
	bra  32.b		; 80 20
	bcc -64.b		; 90 C0
	bmi  96.b		; 30 60
	sed		; F8
	bcc -104.b		; 90 98
	bpl  24.b		; 10 18
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $9000.w		; 20 00 90
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $05.b		; 00 05
	tsb $0C05.w		; 0C 05 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sta ($33.b,X)		; 81 33
	bra  51.b		; 80 33
	bra  35.b		; 80 23
	cpy #$0063.w		; C0 63 00
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	eor ($00.b,X)		; 41 00
	eor ($E0.b,X)		; 41 E0
	brk $E1.b		; 00 E1
	brk $C1.b		; 00 C1
	brk $81.b		; 00 81
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	php		; 08
	rts		; 60

	php		; 08
	bvs   8.b		; 70 08
	bvs  12.b		; 70 0C
	sed		; F8
	sty $84F0.w		; 8C F0 84
	bvs -124.b		; 70 84
	sec		; 38
	sty $F0.b		; 84 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $5C.b		; 00 5C
	brk $34.b		; 00 34
	php		; 08
	rol A		; 2A
	brk $1A.b		; 00 1A
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	sec		; 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora [$01.b]		; 07 01
	ora $02.b		; 05 02
	asl A		; 0A
	ora ($0D.b,X)		; 01 0D
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $19.b		; 00 19
	tsb $25.b		; 04 25
	php		; 08
	jsl $003A08.l		; 22 08 3A 00
	bit $10.b		; 24 10
	mvn $68,$00		; 54 00 68
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	asl $1E00.w		; 0E 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	sec		; 38
	cpy $7C.b		; C4 7C
	clv		; B8
	dec $44.b		; C6 44
	eor #$5510.w		; 49 10 55
	php		; 08
	and $0C.b,S		; 23 0C
	rol A		; 2A
	tsb $19.b		; 04 19
	asl $C0.b		; 06 C0
	brk $30.b		; 00 30
	sec		; 38
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	tay		; A8
	brk $B8.b		; 00 B8
	brk $C4.b		; 00 C4
	bpl -42.b		; 10 D6
	php		; 08
	and ($00.b),Y		; 31 00
	ora $E00000.l		; 0F 00 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	ora $00.b,X		; 15 00
	inc A		; 1A
	tsb $26.b		; 04 26
	php		; 08
	and ($08.b)		; 32 08
	ror $10.b		; 66 10
	dey		; 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $000048.l,X		; 7F 48 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $000000.l,X		; FF 00 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$632E.w		; 69 2E 63
	tsb $1C61.w		; 0C 61 1C
	and ($01.b),Y		; 31 01
	and ($0F.b),Y		; 31 0F
	ora $031F00.l,X		; 1F 00 1F 03
	tsb $0B07.w		; 0C 07 0B
	trb $3E00.w		; 1C 00 3E
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	cpy #$00A0.w		; C0 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	asl $02.b		; 06 02
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $0001.w		; 0C 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	cpy #$C019.w		; C0 19 C0
	ora $31E0.w,Y		; 19 E0 31
	cpy #$8030.w		; C0 30 80
	bmi -128.b		; 30 80
	jsr $2080.w		; 20 80 20
	cpy #$F060.w		; C0 60 F0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($0A.b,X)		; 01 0A
	asl $05.b		; 06 05
	ora $240E.w,Y		; 19 0E 24
	ora $46.b,X		; 15 46
	and #$538E.w		; 29 8E 53
	trb $0000.w		; 1C 00 00
	brk $01.b		; 00 01
	cop $07.b		; 02 07
	ora #$1803.w		; 09 03 18
	ora ($3A.b,X)		; 01 3A
	brk $74.b		; 00 74
	brk $E8.b		; 00 E8
	brk $CA.b		; 00 CA
	ora $74.b,S		; 03 74
	php		; 08
	xba		; EB
	sta $3D.b		; 85 3D
	jsl $2EA0A7.l		; 22 A7 A0 2E
	lda $6E6E6D.l		; AF 6D 6E 6E
	adc $003400.l		; 6F 00 34 00
	xce		; FB
	bra -100.b		; 80 9C
	brk $E6.b		; 00 E6
	brk $F8.b		; 00 F8
	jsr $20FF.w		; 20 FF 20
	sbc $0DFF60.l,X		; FF 60 FF 0D
	cop $09.b		; 02 09
	asl $0A.b		; 06 0A
	tsb $05.b		; 04 05
	brk $06.b		; 00 06
	brk $0A.b		; 00 0A
	brk $1C.b		; 00 1C
	brk $15.b		; 00 15
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	asl A		; 0A
	sbc $67A70F.l,X		; FF 0F A7 67
	plx		; FA
	inc A		; 1A
	eor $BF05.w,X		; 5D 05 BF
	cop $BB.b		; 02 BB
	tsb $CA.b		; 04 CA
	and $48.b		; 25 48
	and $07.b		; 25 07
	ora $087F02.l		; 0F 02 7F 08
	ora $02A705.l,X		; 1F 05 A7 02
	ror A		; 6A
	brk $6D.b		; 00 6D
	brk $7D.b		; 00 7D
	brk $FF.b		; 00 FF
	sty $6C30.w		; 8C 30 6C
	bpl  74.b		; 10 4A
	bpl  50.b		; 10 32
	php		; 08
	rol $08.b		; 26 08
	asl $1100.w,X		; 1E 00 11
	tsb $0D.b		; 04 0D
	brk $00.b		; 00 00
	sei		; 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	ora ($04.b),Y		; 11 04
	asl $2A00.w,X		; 1E 00 2A
	brk $2A.b		; 00 2A
	bpl  70.b		; 10 46
	bpl  88.b		; 10 58
	jsr $0088.w		; 20 88 00
	beq   0.b		; F0 00
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	asl $0E.b		; 06 0E
	asl $8E.b,X		; 16 8E
	rol $F856.w		; 2E 56 F8
	asl $A4.b,X		; 16 A4
	tya		; 98
	ror A		; 6A
	cpy #$C03C.w		; C0 3C C0
	bmi  64.b		; 30 40
	asl $1F.b		; 06 1F
	tsb $0F.b		; 04 0F
	bra  23.b		; 80 17
	cpy #$4017.w		; C0 17 40
	inc A		; 1A
	bra  20.b		; 80 14
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	bra -96.b		; 80 A0
	rti		; 40

	bvs   0.b		; 70 00
	dey		; 88
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	eor $F8.b		; 45 F8
	phd		; 0B
	pea $9069.w		; F4 69 90
	and $4C.b,X		; 35 4C
	bpl  44.b		; 10 2C
	and ($0B.b),Y		; 31 0B
	adc $98FD49.l,X		; 7F 49 FD 98
	sbc ($B0.b)		; F2 B0
	nop		; EA
	cpx #$808F.w		; E0 8F 80
	eor $40.b,S		; 43 40
	and [$20.b]		; 27 20
	asl $00.b		; 06 00
	ora ($FF.b)		; 12 FF
	beq  63.b		; F0 3F
	bvc  62.b		; 50 3E
	inx		; E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$EFB0.w		; A0 B0 EF
	lda $070F.w		; AD 0F 07
	asl $86.b		; 06 86
	trb $84.b		; 14 84
	ldy #$F0C0.w		; A0 C0 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $0C.b		; 00 0C
	tsb $04.b		; 04 04
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	bcc   0.b		; 90 00
	bvs -128.b		; 70 80
	plp		; 28
	cpy #$40A8.w		; C0 A8 40
	tya		; 98
	rts		; 60

	mvn $D4,$20		; 54 20 D4
	jsr $C000.w		; 20 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	tsb $1C.b		; 04 1C
	ora [$1F.b]		; 07 1F
	brk $3F.b		; 00 3F
	bit $7E03.w,X		; 3C 03 7E
	ora $0007.w,X		; 1D 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $08.b		; 00 08
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	trb $6080.w		; 1C 80 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	clv		; B8
	sbc ($40.b),Y		; F1 40
	eor $80.b,S		; 43 80
	clv		; B8
	adc $FE7C.w,Y		; 79 7C FE
	sta $07787F.l,X		; 9F 7F 78 07
	asl $00.b		; 06 00
	bpl -127.b		; 10 81
	brk $40.b		; 00 40
	brk $B8.b		; 00 B8
	brk $7F.b		; 00 7F
	sec		; 38
	sbc $007F0F.l,X		; FF 0F 7F 00
	ora [$00.b]		; 07 00
	ora ($E9.b,X)		; 01 E9
	inc $C07F.w		; EE 7F C0
	sbc ($0E.b),Y		; F1 0E
	lda $FBE775.l		; AF 75 E7 FB
	xba		; EB
	xce		; FB
	eor [$F7.b],Y		; 57 F7
	ora $FE600F.l		; 0F 0F 60 FE
	rti		; 40

	cpy #$8E00.w		; C0 00 8E
	jsr $4375.w		; 20 75 43
	xce		; FB
	cmp $FF.b,S		; C3 FF
	ora [$FF.b]		; 07 FF
	ora $0009FF.l		; 0F FF 09 00
	asl A		; 0A
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $69.b		; 00 69
	tsb $A1.b		; 04 A1
	jmp $EC01.w		; 4C 01 EC
	ora ($CC.b),Y		; 11 CC
	cmp ($0C.b,S),Y		; D3 0C
	adc $213E80.l,X		; 7F 80 3E 21
	bra  27.b		; 80 1B
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7D.b		; 00 7D
	bra  28.b		; 80 1C
	cpy #$F000.w		; C0 00 F0
	brk $43.b		; 00 43
	jsl $CA108A.l		; 22 8A 10 CA
	bmi  84.b		; 30 54
	jsr $6094.w		; 20 94 60
	tay		; A8
	rti		; 40

	plp		; 28
	cpy #$8050.w		; C0 50 80
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	sed		; F8
	brk $7E.b		; 00 7E
	php		; 08
	pea $C605.w		; F4 05 C6
	bcc -39.b		; 90 D9
	bmi 122.b		; 30 7A
	eor ($B9.b)		; 52 B9
	eor ($40.b,S),Y		; 53 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	plp		; 28
	sty $0E.b		; 84 0E
	ora $38.b,S		; 03 38
	ora $34.b,S		; 03 34
	ora ($D4.b,X)		; 01 D4
	cop $54.b		; 02 54
	iny		; C8
	and [$78.b],Y		; 37 78
	ora ($48.b,X)		; 01 48
	bmi 112.b		; 30 70
	ldy #$C0A0.w		; A0 A0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	ora ($30.b,X)		; 01 30
	brk $80.b		; 00 80
	brk $B0.b		; 00 B0
	brk $A0.b		; 00 A0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	ldy #$60C0.w		; A0 C0 60
	brk $A0.b		; 00 A0
	cpy #$00D0.w		; C0 D0 00
	bne   0.b		; D0 00
	tay		; A8
	brk $28.b		; 00 28
	brk $A4.b		; 00 A4
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $D0.b		; 00 D0
	brk $D8.b		; 00 D8
	ldy $00.b,X		; B4 00
	bit $4880.w,X		; 3C 80 48
	bra 112.b		; 80 70
	dey		; 88
	cpy #$3038.w		; C0 38 30
	jsr ($CC48.w,X)		; FC 48 CC
	tya		; 98
	sty $E800.w		; 8C 00 E8
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	bpl   0.b		; 10 00
	pha		; 48
	brk $B0.b		; 00 B0
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	sty $30.b		; 84 30
	sty $38.b		; 84 38
	stx $7C.b		; 86 7C
	dec $7C.b		; C6 7C
	dec $18.b		; C6 18
.INDEX 16
	rep #$18		; C2 18
	cmp $1C.b,S		; C3 1C
	eor $78.b,S		; 43 78
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	trb $2C2C.w		; 1C 2C 2C
	bit $24.b		; 24 24
	clc		; 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	clc		; 18
	rol $7E2C.w,X		; 3E 2C 7E
	brk $7E.b		; 00 7E
	php		; 08
	ror $0C0C.w,X		; 7E 0C 0C
	tsb $080C.w		; 0C 0C 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	trb $1C18.w		; 1C 18 1C
	clc		; 18
	trb $3818.w		; 1C 18 38
	brk $1E.b		; 00 1E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $3E08.w,X		; 1E 08 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	clc		; 18
	jmp ($0835.w,X)		; 7C 35 08
	ror A		; 6A
	bpl  76.b		; 10 4C
	bpl  68.b		; 10 44
	bpl -72.b		; 10 B8
	brk $88.b		; 00 88
	jsr $2090.w		; 20 90 20
	bcs  64.b		; B0 40
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	dey		; 88
	jsr $00A8.w		; 20 A8 00
	mvn $54,$00		; 54 00 54
	php		; 08
	.db $62, $08, $6A		; 62 08 6A
	tsb $17.b		; 04 17
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $00007F.l,X		; 3F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1C1F08.l		; 0F 08 1F 1C
	and $407F25.l,X		; 3F 25 7F 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$FCFE.w		; C0 FE FC
	inc $FEFC.w,X		; FE FC FE
	dec $00FF.w		; CE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3EFE.w		; C0 FE 3E
	inc $FE62.w,X		; FE 62 FE
	.db $82, $FF, $31		; 82 FF 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b		; 05 01
	asl A		; 0A
	asl $0B.b		; 06 0B
	ora $2609.w,X		; 1D 09 26
	ora $46.b,X		; 15 46
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	ora ($01.b,X)		; 01 01
	trb $3A00.w		; 1C 00 3A
	brk $31.b		; 00 31
	phd		; 0B
	dex		; CA
	ora $74.b,S		; 03 74
	php		; 08
	stp		; DB
	ora $BD.b		; 05 BD
	.db $82, $27, $20		; 82 27 20
	ldx $2DAF.w		; AE AF 2D
	ldx $0006.w		; AE 06 00
	brk $34.b		; 00 34
	brk $FB.b		; 00 FB
	brk $3C.b		; 00 3C
	bra -58.b		; 80 C6
	brk $F8.b		; 00 F8
	jsr $20FF.w		; 20 FF 20
	sbc $191F6F.l,X		; FF 6F 1F 19
	ora $0A.b,S		; 03 0A
	tsb $0B.b		; 04 0B
	tsb $05.b		; 04 05
	brk $0A.b		; 00 0A
	brk $12.b		; 00 12
	brk $15.b		; 00 15
	brk $03.b		; 00 03
	ora $000700.l,X		; 1F 00 07 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $0B00.w		; 0D 00 0B
	cmp [$F7.b],Y		; D7 F7
	lda $C777E7.l,X		; BF E7 77 C7
	plx		; FA
	asl A		; 0A
	eor $7705.w,X		; 5D 05 77
	cop $BE.b		; 02 BE
	brk $DA.b		; 00 DA
	and $87.b		; 25 87
	sbc $02F707.l,X		; FF 07 F7 02
	sbc $050F08.l		; EF 08 0F 05
	lda [$02.b]		; A7 02
	tax		; AA
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	lda ($37.b,X)		; A1 37
	sbc ($37.b,X)		; E1 37
	cmp ($33.b,X)		; C1 33
	sta ($33.b,X)		; 81 33
	bra  35.b		; 80 23
	bra  35.b		; 80 23
	cpy #$C061.w		; C0 61 C0
	adc ($C0.b,X)		; 61 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C1.b		; 00 C1
	brk $C1.b		; 00 C1
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	tsb $15.b		; 04 15
	brk $16.b		; 00 16
	php		; 08
	and ($08.b)		; 32 08
	lsr $30.b		; 46 30
	dey		; 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00B0.w		; A0 B0 00
	cpx #$00F8.w		; E0 F8 00
	jmp ($F608.w,X)		; 7C 08 F6
	brk $C6.b		; 00 C6
	sty $D8.b,X		; 94 D8
	and ($7A.b),Y		; 31 7A
	bvc  64.b		; 50 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	plp		; 28
	bra   8.b		; 80 08
	tsb $3C.b		; 04 3C
	cop $34.b		; 02 34
	ora $D4.b,S		; 03 D4
	lda $CA50.w,Y		; B9 50 CA
	rol $79.b,X		; 36 79
	ora [$48.b]		; 07 48
	and ($70.b,S),Y		; 33 70
	lda ($A0.b,X)		; A1 A0
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	ora $54.b,S		; 03 54
	ora $30.b		; 05 30
	cop $80.b		; 02 80
	ora ($B0.b,X)		; 01 B0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$A0C0.w		; C0 C0 A0
	cpy #$0060.w		; C0 60 00
	bcs -64.b		; B0 C0
	iny		; C8
	brk $E4.b		; 00 E4
	brk $D4.b		; 00 D4
	brk $EC.b		; 00 EC
	brk $80.b		; 00 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	brk $98.b		; 00 98
	brk $68.b		; 00 68
	brk $B0.b		; 00 B0
	ldy $00.b,X		; B4 00
	pla		; 68
	bra 120.b		; 80 78
	bra -112.b		; 80 90
	pha		; 48
	cpx #$8018.w		; E0 18 80
	sei		; 78
	bvs  -4.b		; 70 FC
	pha		; 48
	cpy $D800.w		; CC 00 D8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bmi   0.b		; 30 00
	dey		; 88
	brk $B0.b		; 00 B0
	brk $06.b		; 00 06
	ora [$0E.b]		; 07 0E
	stx $5E3E.w		; 8E 3E 5E
	jmp.w [$742E]		; DC 2E 74
	bit $B4C8.w		; 2C C8 B4
	mvn $38,$80		; 54 80 38
	cpy #$0F02.w		; C0 02 0F
	tsb $1F.b		; 04 1F
	sty $801F.w		; 8C 1F 80
	and $002E80.l		; 2F 80 2E 00
	rol $80.b,X		; 36 80
	plp		; 28
	brk $00.b		; 00 00
	plp		; 28
	cpy #$40A8.w		; C0 A8 40
	trb $60.b		; 14 60
	pei ($20.b)		; D4 20
	sty $6A30.w		; 8C 30 6A
	bpl  74.b		; 10 4A
	bpl  38.b		; 10 26
	php		; 08
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	adc [$FF.b],Y		; 77 FF
	jmp ($00FF.w)		; 6C FF 00
	sbc $0BFC01.l,X		; FF 01 FC 0B
	stz $69.b,X		; 74 69
	bpl  53.b		; 10 35
	tsb $0C10.w		; 0C 10 0C
	sbc $93FF88.l,X		; FF 88 FF 93
	sbc $F4F6FE.l,X		; FF FE F6 F4
	ror A		; 6A
	rts		; 60

	ora $000300.l		; 0F 00 03 00
	ora [$00.b]		; 07 00
	cop $FF.b		; 02 FF
	bpl  -1.b		; 10 FF
	beq  62.b		; F0 3E
	bvc  60.b		; 50 3C
	inx		; E8
	bcs -112.b		; B0 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	sbc $AFEFED.l		; EF ED EF AF
	asl $0406.w		; 0E 06 04
	sty $10.b		; 84 10
	bra -96.b		; 80 A0
	cpy #$00F0.w		; C0 F0 00
	cpx #$2900.w		; E0 00 29
	stx $9CD2.w		; 8E D2 9C
	sbc ($98.b,X)		; E1 98
	cmp ($60.b,S),Y		; D3 60
	adc ($81.b)		; 72 81
	lda ($71.b,S),Y		; B3 71
	sei		; 78
	sbc $7EBE.w,Y		; F9 BE 7E
	stz $00.b,X		; 74 00
	pla		; 68
	ora ($10.b,X)		; 01 10
	bra   0.b		; 80 00
	rts		; 60

	brk $89.b		; 00 89
	brk $79.b		; 00 79
	bmi  -1.b		; 30 FF
	trb $6E7F.w		; 1C 7F 6E
	adc $7FEEE9.l		; 6F E9 EE 7F
	cpy #$5EE1.w		; C0 E1 5E
	sbc $733F0D.l,X		; FF 0D 3F 73
	sbc $EF6F1F.l,X		; FF 1F 6F EF
	rts		; 60

	sbc $00FE60.l,X		; FF 60 FE 00
	cpy #$DE00.w		; C0 00 DE
	brk $6D.b		; 00 6D
	ora $F3.b,S		; 03 F3
	ora $FF4F1F.l,X		; 1F 1F 4F FF
	ora $000A00.l		; 0F 00 0A 00
	asl $01.b		; 06 01
	cop $04.b		; 02 04
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cli		; 58
	and $81.b		; 25 81
	jmp ($CC12.w)		; 6C 12 CC
	ora ($CC.b,S),Y		; 13 CC
	sbc $1C.b,S		; E3 1C
	adc $617E80.l,X		; 7F 80 7E 61
	bpl  27.b		; 10 1B
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $5E.b		; 00 5E
	bra  30.b		; 80 1E
	bra   0.b		; 80 00
	cpx #$0100.w		; E0 00 01
	tsb $0C01.w		; 0C 01 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	tsb $1C.b		; 04 1C
	ora [$1F.b]		; 07 1F
	brk $3F.b		; 00 3F
	trb $0723.w		; 1C 23 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $08.b		; 00 08
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	adc ($80.b,X)		; 61 80
	adc ($00.b,X)		; 61 00
	eor ($80.b,X)		; 41 80
	cpy #$C080.w		; C0 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	php		; 08
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	bvs  12.b		; 70 0C
	sei		; 78
	tsb $8CF8.w		; 0C F8 8C
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	sty $30.b		; 84 30
	sty $38.b		; 84 38
	sty $38.b		; 84 38
	sty $40.b		; 84 40
	cpy $38.b		; C4 38
	inc $7E00.w,X		; FE 00 7E
	asl $7871.w		; 0E 71 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $44.b		; 00 44
	brk $3C.b		; 00 3C
	brk $30.b		; 00 30
	brk $E8.b		; 00 E8
	brk $88.b		; 00 88
	jsr $0074.w		; 20 74 00
	mvp $2A,$00		; 44 00 2A
	brk $22.b		; 00 22
	brk $15.b		; 00 15
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $242C.w		; 2C 2C 24
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $7E2C.w,X		; 3C 2C 7E
	brk $7E.b		; 00 7E
	clc		; 18
	trb $0C0C.w		; 1C 0C 0C
	php		; 08
	tsb $1808.w		; 0C 08 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	bmi  56.b		; 30 38
	bvs 112.b		; 70 70
	php		; 08
	ror $1E00.w,X		; 7E 00 1E
	php		; 08
	asl $3C08.w,X		; 1E 08 3C
	php		; 08
	bit $7C10.w,X		; 3C 10 7C
	bpl 124.b		; 10 7C
	jsr $7CF8.w		; 20 F8 7C
	clv		; B8
	stx $44.b		; 86 44
	eor #$5710.w		; 49 10 57
	php		; 08
	jsl $042A0C.l		; 22 0C 2A 04
	ora ($06.b),Y		; 11 06
	ora $3002.w		; 0D 02 30
	sec		; 38
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	tsb $00.b		; 04 00
	asl A		; 0A
	ora ($0A.b,X)		; 01 0A
	ora ($14.b,X)		; 01 14
	ora $15.b,S		; 03 15
	cop $1A.b		; 02 1A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $18E0F8.l		; 0F F8 E0 18
	bpl  80.b		; 10 50
	bra  80.b		; 80 50
	bra -96.b		; 80 A0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	cpx #$F000.w		; E0 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	and #$3504.w		; 29 04 35
	php		; 08
	dec A		; 3A
	brk $44.b		; 00 44
	bpl 116.b		; 10 74
	brk $48.b		; 00 48
	jsr $00A8.w		; 20 A8 00
	bne   0.b		; D0 00
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	tay		; A8
	brk $B8.b		; 00 B8
	brk $CC.b		; 00 CC
	bpl -46.b		; 10 D2
	tsb $0031.w		; 0C 31 00
	ora $E00000.l		; 0F 00 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	and $0707.w,Y		; 39 07 07
	brk $0A.b		; 00 0A
	tsb $13.b		; 04 13
	tsb $000D.w		; 0C 0D 00
	asl $0A00.w		; 0E 00 0A
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsb $0200.w		; 0C 00 02
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	cld		; D8
	inc $04F9.w,X		; FE F9 04
	ldx $5B00.w,Y		; BE 00 5B
	ora ($CF.b,X)		; 01 CF
	bpl -19.b		; 10 ED
	ora ($A4.b)		; 12 A4
	ora ($A4.b)		; 12 A4
	ora ($00.b)		; 12 00
	sbc $001E00.l,X		; FF 00 1E 00
	eor ($01.b,X)		; 41 01
	lda $00.b,X		; B5 00
	ldx $00.b,Y		; B6 00
	ldx $00.b,Y		; B6 00
	adc $007F00.l,X		; 7F 00 7F 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CD.b		; 00 CD
	plx		; FA
	txa		; 8A
	beq  23.b		; F0 17
	sbc #$21D3.w		; E9 D3 21
	rtl		; 6B

	tya		; 98
	and ($58.b,X)		; 21 58
	adc $17.b,S		; 63 17
	sty $07.b,X		; 94 07
	plx		; FA
	bmi -28.b		; 30 E4
	adc ($D4.b,X)		; 61 D4
	cmp ($1F.b,X)		; C1 1F
	ora ($87.b,X)		; 01 87
	bra  79.b		; 80 4F
	rti		; 40

	tsb $0000.w		; 0C 00 00
	pla		; 68
	cpx #$A07E.w		; E0 7E A0
	jmp ($68D0.w,X)		; 7C D0 68
	jsr $C030.w		; 20 30 C0
	bpl  32.b		; 10 20
	beq  64.b		; F0 40
	rts		; 60

	brk $C0.b		; 00 C0
	asl $0C0E.w,X		; 1E 0E 0C
	tsb $0828.w		; 0C 28 08
	rti		; 40

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $1616.w		; 0E 16 16
	ora ($12.b)		; 12 12
	tsb $060E.w		; 0C 0E 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $0E00.w		; 0E 00 0E
	tsb $161F.w		; 0C 1F 16
	and $043F00.l,X		; 3F 00 3F 04
	and $000F04.l,X		; 3F 04 0F 00
	ora $351F04.l		; 0F 04 1F 35
	cpx #$6016.w		; E0 16 60
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	asl A		; 0A
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $03.b		; 02 03
	ora $04.b		; 05 04
	cop $0D.b		; 02 0D
	brk $12.b		; 00 12
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $F08980.l		; 0F 80 89 F0
	sbc $F900.w,Y		; F9 00 F9
	cpy #$E038.w		; C0 38 E0
	bne  48.b		; D0 30
	jsr $00E0.w		; 20 E0 00
	ldy #$7000.w		; A0 00 70
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	cpy #$E000.w		; C0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	php		; 08
	sty $FC78.w		; 8C 78 FC
	rts		; 60

	jsr ($FC00.w,X)		; FC 00 FC
	bmi -50.b		; 30 CE
	jmp ($CEB2.w,X)		; 7C B2 CE
	jmp $02B1.w		; 4C B1 02
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	tya		; 98
	brk $78.b		; 00 78
	brk $4C.b		; 00 4C
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	jmp ($7E00.w,X)		; 7C 00 7E
	txa		; 8A
	bmi -94.b		; 30 A2
	clc		; 18
	ldx #$4518.w		; A2 18 45
	clc		; 18
	eor $08.b,X		; 55 08
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and #$0004.w		; 29 04 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	asl A		; 0A
	and $1C.b,S		; 23 1C
	and [$10.b]		; 27 10
	lsr $7E.b		; 46 7E
	bpl  75.b		; 10 4B
	bit $13AF.w		; 2C AF 13
	cmp [$0F.b],Y		; D7 0F
	adc [$0F.b],Y		; 77 0F
	ora $1A00.w,X		; 1D 00 1A
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bit $5300.w,X		; 3C 00 53
	ora $2F.b,S		; 03 2F
	ora $0F.b,S		; 03 0F
	bcs -128.b		; B0 80
	bvc  96.b		; 50 60
	inx		; E8
	bra -24.b		; 80 E8
	brk $54.b		; 00 54
	brk $0C.b		; 00 0C
	bra  90.b		; 80 5A
	bra -106.b		; 80 96
	rti		; 40

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -112.b		; 80 90
	brk $50.b		; 00 50
	brk $A8.b		; 00 A8
	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	brk $F8.b		; 00 F8
	ldx $8C40.w		; AE 40 8C
	rts		; 60

	pha		; 48
	bit $F0.b		; 24 F0
	tsb $3C48.w		; 0C 48 3C
	clv		; B8
	jmp ($8CA8.w,X)		; 7C A8 8C
	pla		; 68
	tsb $F800.w		; 0C 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	php		; 08
	rti		; 40

	bmi -128.b		; 30 80
	rti		; 40

	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $0E.b		; 00 0E
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $11.b		; 00 11
	tsb $12.b		; 04 12
	tsb $12.b		; 04 12
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cpy $32.b		; C4 32
	tsb $72.b		; 04 72
	cpx $13.b		; E4 13
	stz $83.b,X		; 74 83
	cmp $9C93F0.l		; CF F0 93 9C
	pla		; 68
	ora $000F69.l		; 0F 69 0F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	adc $200F80.l,X		; 7F 80 0F 20
	ora $68.b,S		; 03 68
	brk $F1.b		; 00 F1
	brk $F0.b		; 00 F0
	brk $06.b		; 00 06
	brk $0B.b		; 00 0B
	cop $15.b		; 02 15
	ora $3A06.w		; 0D 06 3A
	ora $2D.b,S		; 03 2D
	inc A		; 1A
	eor $4C2A.w		; 4D 2A 4C
	and ($9D.b),Y		; 31 9D
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora $0F.b		; 05 0F
	ora ($03.b)		; 12 03
	clc		; 18
	ora ($34.b,X)		; 01 34
	ora ($34.b,X)		; 01 34
	ora ($68.b,X)		; 01 68
	ora $E9.b,S		; 03 E9
	bpl -42.b		; 10 D6
	asl A		; 0A
	tda		; 7B
	mvp $41,$4F		; 44 4F 41
	eor $5A5E.w,X		; 5D 5E 5A
	jmp $D3DEDD.l		; 5C DD DE D3
	jmp.w [$F600]		; DC 00 F6
	ora ($38.b,X)		; 01 38
	ora ($CC.b,X)		; 01 CC
	brk $F0.b		; 00 F0
	rti		; 40

	inc $FF40.w,X		; FE 40 FF
	cpy #$C0FE.w		; C0 FE C0
	jsr ($00F0.w,X)		; FC F0 00
	sed		; F8
	bpl -20.b		; 10 EC
	php		; 08
	dey		; 88
	rol A		; 2A
	ldy $61.b,X		; B4 61
	sbc ($A0.b)		; F2 A0
	adc $A4.b,X		; 75 A4
	sta ($6E.b)		; 92 6E
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $18.b		; 00 18
	php		; 08
	jmp ($6806.w,X)		; 7C 06 68
	ora [$A8.b]		; 07 A8
	ora $A8.b,S		; 03 A8
	ora $60.b		; 05 60
	tsb $0C0E.w		; 0C 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	trb $5C1C.w		; 1C 1C 5C
	bit $5CB8.w,X		; 3C B8 5C
	inx		; E8
	cli		; 58
	bcc 104.b		; 90 68
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $083E.w		; 0C 3E 08
	rol $3E18.w,X		; 3E 18 3E
	php		; 08
	lsr $5C00.w,X		; 5E 00 5C
	brk $6C.b		; 00 6C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $00FF12.l,X		; FF 12 FF 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADEF.w		; 69 EF AD
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	nop		; EA
	bpl  74.b		; 10 4A
	bmi -108.b		; 30 94
	rts		; 60

	tay		; A8
	rti		; 40

	bpl -64.b		; 10 C0
	bvc -128.b		; 50 80
	jsr $C080.w		; 20 80 C0
	brk $00.b		; 00 00
	jmp ($FC00.w,X)		; 7C 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	lsr A		; 4A
	bpl  66.b		; 10 42
	clc		; 18
	and ($08.b)		; 32 08
	jsl $082608.l		; 22 08 26 08
	inc A		; 1A
	tsb $15.b		; 04 15
	brk $15.b		; 00 15
	brk $00.b		; 00 00
	bit $3C00.w,X		; 3C 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	eor $1778B0.l,X		; 5F B0 78 17
	lda $5CE303.l,X		; BF 03 E3 5C
	pha		; 48
	cli		; 58
	ora $87.b,S		; 03 87
	inc $FDFF.w,X		; FE FF FD
	sbc $003000.l,X		; FF 00 30 00
	and [$00.b],Y		; 37 00
	tad		; 5B
	brk $5C.b		; 00 5C
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	stx $FF.b		; 86 FF
	jsr ($DEFF.w,X)		; FC FF DE
	brk $52.b		; 00 52
	sty $68D4.w		; 8C D4 68
	inx		; E8
	cpx #$7070.w		; E0 70 70
	bmi -80.b		; 30 B0
	bcs -80.b		; B0 B0
	plp		; 28
	bcs   0.b		; B0 00
	jsr $AC00.w		; 20 00 AC
	brk $68.b		; 00 68
	cpy #$60F0.w		; C0 F0 60
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	brk $F0.b		; 00 F0
	ora $08.b,X		; 15 08
	jsl $003A08.l		; 22 08 3A 00
	mvp $74,$10		; 44 10 74
	brk $98.b		; 00 98
	jsr $00E8.w		; 20 E8 00
	bvs   0.b		; 70 00
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	tay		; A8
	brk $68.b		; 00 68
	bpl 116.b		; 10 74
	brk $5C.b		; 00 5C
	brk $52.b		; 00 52
	php		; 08
	ror A		; 6A
	tsb $11.b		; 04 11
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	phy		; 5A
	cmp $7A.b,S		; C3 7A
	cmp $7C.b,S		; C3 7C
	dec $7C.b		; C6 7C
	dec $78.b		; C6 78
	dec $78.b		; C6 78
	dec $78.b		; C6 78
	dec $58.b		; C6 58
	cpy $3C.b		; C4 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $5A.b		; 00 5A
	cmp $58.b,S		; C3 58
	cmp $58.b,S		; C3 58
	cmp $58.b,S		; C3 58
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$1C		; C2 1C
	dec $1C.b		; C6 1C
	dec $3C.b		; C6 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
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
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	sed		; F8
	phd		; 0B
	pea $9069.w		; F4 69 90
	and $4C.b,X		; 35 4C
	bpl  44.b		; 10 2C
	and ($0B.b),Y		; 31 0B
	dex		; CA
	ora $74.b,S		; 03 74
	php		; 08
	sbc ($B0.b)		; F2 B0
	nop		; EA
	cpx #$808F.w		; E0 8F 80
	eor $40.b,S		; 43 40
	and [$20.b]		; 27 20
	asl $00.b		; 06 00
	brk $34.b		; 00 34
	brk $FB.b		; 00 FB
	bvc  62.b		; 50 3E
	inx		; E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$00F8.w		; E0 F8 00
	asl $86.b		; 06 86
	trb $84.b		; 14 84
	ldy #$F0C0.w		; A0 C0 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	sei		; 78
	cli		; 58
	jmp $042400.l		; 5C 00 24 04
	trb $0C04.w		; 1C 04 0C
	tsb $0C.b		; 04 0C
	tsb $0E0C.w		; 0C 0C 0E
	asl $FC18.w		; 0E 18 FC
	bvc  -2.b		; 50 FE
	brk $FE.b		; 00 FE
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	tsb $1E.b		; 04 1E
	tsb $1F.b		; 04 1F
	ror A		; 6A
	tsb $2A.b		; 04 2A
	mvp $60,$1E		; 44 1E 60
	ora [$78.b],Y		; 17 78
	trb $77.b		; 14 77
	ora $71.b,X		; 15 71
	ora [$71.b],Y		; 17 71
	ora [$71.b],Y		; 17 71
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	jsr $2807.w		; 20 07 28
	brk $2B.b		; 00 2B
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $91.b		; 00 91
	jmp $6489.w		; 4C 89 64
	stz $F861.w,X		; 9E 61 F8
	ora [$E4.b]		; 07 E4
	ora $58F330.l,X		; 1F 30 F3 58
	cmp $58.b,S		; C3 58
	cmp $00.b,S		; C3 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inx		; E8
	cop $E0.b		; 02 E0
	inc A		; 1A
	brk $4E.b		; 00 4E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	and ($12.b),Y		; 31 12
	and ($1E.b,S),Y		; 33 1E
	and $0C3F00.l,X		; 3F 00 3F 0C
	adc ($1E.b,S),Y		; 73 1E
	adc $5233.w		; 6D 33 52
	eor $0E20.w		; 4D 20 0E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $32.b		; 00 32
	brk $24.b		; 00 24
	tsb $1E00.w		; 0C 00 1E
	brk $3E.b		; 00 3E
	sec		; 38
	.db $62, $24, $66		; 62 24 66
	bit $007E.w,X		; 3C 7E 00
	ror $6618.w,X		; 7E 18 66
	bit $665B.w,X		; 3C 5B 66
	and $59.b		; 25 59
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $24.b		; 00 24
	brk $12.b		; 00 12
	clc		; 18
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	ora $00.b,X		; 15 00
	ora $1A00.w,X		; 1D 00 1A
	tsb $1A.b		; 04 1A
	tsb $2A.b		; 04 2A
	brk $32.b		; 00 32
	php		; 08
	.db $42, $00		; 42 00
	jmp ($0000.w,X)		; 7C 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	sbc $0098.w,X		; FD 98 00
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $F0FF12.l,X		; FF 12 FF F0
	and $F88080.l,X		; 3F 80 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADEF.w		; 69 EF AD
	ora $000007.l		; 0F 07 00 00
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
	brk $30.b		; 00 30
	bmi 120.b		; 30 78
	ora $07.b,S		; 03 07
	sec		; 38
	ora ($17.b,X)		; 01 17
	brk $2A.b		; 00 2A
	brk $73.b		; 00 73
	brk $55.b		; 00 55
	brk $25.b		; 00 25
	brk $27.b		; 00 27
	brk $01.b		; 00 01
	adc $000700.l,X		; 7F 00 07 00
	php		; 08
	brk $15.b		; 00 15
	brk $0D.b		; 00 0D
	brk $2B.b		; 00 2B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	phy		; 5A
	xba		; EB
	and [$C4.b],Y		; 37 C4
	cmp $00FA08.l,X		; DF 08 FA 00
	pla		; 68
	sty $22.b,X		; 94 22
	sty $A4.b,X		; 94 A4
	ora ($A5.b)		; 12 A5
	ora ($00.b)		; 12 00
	sbc $08CC04.l		; EF 04 CC 08
	rol A		; 2A
	brk $B5.b		; 00 B5
	brk $B7.b		; 00 B7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	brk $B0.b		; 00 B0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	and ($08.b)		; 32 08
	.db $42, $18		; 42 18
	jmp ($6410.w)		; 6C 10 64
	bpl 100.b		; 10 64
	bpl  88.b		; 10 58
	jsr $2058.w		; 20 58 20
	cli		; 58
	jsr $1C00.w		; 20 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	ora $01.b		; 05 01
	asl A		; 0A
	asl $0B.b		; 06 0B
	ora $3615.w,X		; 1D 15 36
	ora #$1522.w		; 09 22 15
	lsr $28.b		; 46 28
	stx $9C51.w		; 8E 51 9C
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	brk $74.b		; 00 74
	ora ($68.b,X)		; 01 68
	brk $EB.b		; 00 EB
	ora $BD.b		; 05 BD
	ldx #$2027.w		; A2 27 20
	ldx $2DAF.w		; AE AF 2D
	ldx $6F6E.w		; AE 6E 6F
	sbc #$7FEE.w		; E9 EE 7F
	cpy #$1C00.w		; C0 00 1C
	bra -26.b		; 80 E6
	brk $F8.b		; 00 F8
	jsr $20FF.w		; 20 FF 20
	sbc $60FF60.l,X		; FF 60 FF 60
	inc $C000.w,X		; FE 00 C0
	ror $F408.w,X		; 7E 08 F4
	ora $C4.b		; 05 C4
	sty $DB.b,X		; 94 DB
	bmi 120.b		; 30 78
	bvc -71.b		; 50 B9
	eor ($CC.b,S),Y		; 53 CC
	and ($78.b,S),Y		; 33 78
	brk $80.b		; 00 80
	plp		; 28
	bra  14.b		; 80 0E
	ora $3E.b		; 05 3E
	ora $34.b,S		; 03 34
	ora $D4.b,S		; 03 D4
	cop $54.b		; 02 54
	brk $30.b		; 00 30
	brk $80.b		; 00 80
	asl $0E0E.w		; 0E 0E 0E
	stx $CE3E.w		; 8E 3E CE
	bit $FD0E.w,X		; 3C 0E FD
	asl $A5.b,X		; 16 A5
	tya		; 98
	asl A		; 0A
	cpx #$E01C.w		; E0 1C E0
	tsb $1F.b		; 04 1F
	tsb $8C1F.w		; 0C 1F 8C
	ora $C40FC4.l		; 0F C4 0F C4
	asl $40.b,X		; 16 40
	inc A		; 1A
	cpx #$0014.w		; E0 14 00
	brk $1F.b		; 00 1F
	and ($1F.b),Y		; 31 1F
	and ($1F.b),Y		; 31 1F
	and ($1F.b),Y		; 31 1F
	and ($1C.b),Y		; 31 1C
	and ($1C.b),Y		; 31 1C
	and ($1C.b),Y		; 31 1C
	and ($1C.b),Y		; 31 1C
	and ($0E.b),Y		; 31 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $58.b		; 00 58
	cmp $58.b,S		; C3 58
.INDEX 16
	rep #$58		; C2 58
.INDEX 16
	rep #$58		; C2 58
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	.db $62, $3E, $00		; 62 3E 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $55.b		; 00 55
	php		; 08
	ror $18.b		; 66 18
	ldx #$18.b		; A2 18
	tax		; AA
	bpl -60.b		; 10 C4
	bmi -60.b		; 30 C4
	bmi -44.b		; 30 D4
	jsr $20C8.w		; 20 C8 20
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	adc $08.b,X		; 75 08
	eor ($0C.b),Y		; 51 0C
	eor ($0C.b),Y		; 51 0C
	eor ($0C.b),Y		; 51 0C
	and $2904.w,Y		; 39 04 29
	tsb $2B.b		; 04 2B
	tsb $2B.b		; 04 2B
	tsb $00.b		; 04 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	dey		; 88
	jsr $00B8.w		; 20 B8 00
	sei		; 78
	brk $64.b		; 00 64
	bpl 124.b		; 10 7C
	brk $42.b		; 00 42
	tsb $0071.w		; 0C 71 00
	ora $700000.l		; 0F 00 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	jmp ($4C10.w)		; 6C 10 4C
	bpl  68.b		; 10 44
	clc		; 18
	mvp $34,$18		; 44 18 34
	php		; 08
	bit $08.b,X		; 34 08
	bit $08.b,X		; 34 08
	and ($08.b)		; 32 08
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	php		; 08
	and $7C.b,S		; 23 7C
	ora ($4E.b)		; 12 4E
	plp		; 28
	ldx $DF16.w		; AE 16 DF
	ora $370F5F.l		; 0F 5F 0F 37
	ora $1E030C.l		; 0F 0C 03 1E
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sec		; 38
	brk $57.b		; 00 57
	asl $2F.b		; 06 2F
	ora [$2F.b]		; 07 2F
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	jmp ($5F0B.w,X)		; 7C 0B 5F
	and ($77.b,X)		; 21 77
	rol $2F67.w		; 2E 67 2F
	eor [$2F.b]		; 47 2F
	cpy #$C0.b		; C0 C0
	inc $FDFF.w,X		; FE FF FD
	sbc $001B00.l,X		; FF 00 1B 00
	and $2E00.w		; 2D 00 2E
	ora ($3F.b,X)		; 01 3F
	ora ($BF.b,X)		; 01 BF
	brk $FF.b		; 00 FF
	dec $FF.b		; C6 FF
	bit $29FF.w,X		; 3C FF 29
	dec $EA.b		; C6 EA
	ldy $F4.b,X		; B4 F4
	bvs  -8.b		; 70 F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	stz $78.b,X		; 74 78
	jmp ($0060.w)		; 6C 60 00
	dec $00.b,X		; D6 00
	ldy $60.b,X		; B4 60
	sei		; 78
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	rts		; 60

	sed		; F8
	rti		; 40

	beq  36.b		; F0 24
	inc $38.b		; E6 38
	ror $7F00.w,X		; 7E 00 7F
	ora $2F1E70.l		; 0F 70 1E 2F
	bpl  48.b		; 10 30
	ora $02.b,X		; 15 02
	trb $03.b		; 14 03
	cli		; 58
	brk $04.b		; 00 04
	brk $3E.b		; 00 3E
	brk $30.b		; 00 30
	brk $0C.b		; 00 0C
	ora $001F00.l		; 0F 00 1F 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$3E.b		; C0 3E
	brk $DF.b		; 00 DF
	.db $42, $7D		; 42 7D
	sta ($F1.b,X)		; 81 F1
	and $B6.b		; 25 B6
	cpy $945E.w		; CC 5E 94
	ldx $72D4.w		; AE D4 72
	sta $C000.w		; 8D 00 C0
	jsr $200A.w		; 20 0A 20
	sta $01.b,S		; 83 01
	ora $00CD00.l		; 0F 00 CD 00
	sbc $00.b,X		; F5 00
	cmp $00.b,X		; D5 00
	sty $0101.w		; 8C 01 01
	ora ($01.b,X)		; 01 01
	sta $03.b,S		; 83 03
	ora $43.b,S		; 03 43
	phb		; 8B
	and [$57.b]		; 27 57
	phd		; 0B
	lda $528B.w,X		; BD 8B 52
	cmp $0300.w		; CD 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($87.b,X)		; 01 87
	cmp $07.b,S		; C3 07
	sbc ($0B.b,X)		; E1 0B
	rts		; 60

	phd		; 0B
	ldy #$0D.b		; A0 0D
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	ora $09.b,S		; 03 09
	ora $09.b		; 05 09
	asl $13.b		; 06 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $DD00.w		; 0D 00 DD
	cop $7A.b		; 02 7A
	eor ($AF.b,X)		; 41 AF
	tay		; A8
	cmp #$48.b		; C9 48
	rtl		; 6B

	plb		; AB
	phk		; 4B
	plb		; AB
	tad		; 5B
	txy		; 9B
	dec A		; 3A
	tyx		; BB
	brk $3E.b		; 00 3E
	brk $C7.b		; 00 C7
	ldy #$F9.b		; A0 F9
	rti		; 40

	ror $3F08.w,X		; 7E 08 3F
	dey		; 88
	and $183F98.l,X		; 3F 98 3F 18
	adc $03031C.l,X		; 7F 1C 03 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($EC.b,X)		; 01 EC
	sbc $5F02FC.l,X		; FF FC 02 5F
	ora ($AD.b,X)		; 01 AD
	brk $AF.b		; 00 AF
	brk $36.b		; 00 36
	ora #$52.b		; 09 52
	ora #$5A.b		; 09 5A
	ora ($00.b,X)		; 01 00
	sbc $010F00.l,X		; FF 00 0F 01
	lda ($00.b,X)		; A1 00
	phy		; 5A
	brk $5B.b		; 00 5B
	brk $DB.b		; 00 DB
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $1F0F1F.l		; 0F 1F 0F 1F
	tas		; 1B
	and $003F1B.l,X		; 3F 1B 3F 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	tsb $0F.b		; 04 0F
	tsb $161F.w		; 0C 1F 16
	ora $243F10.l,X		; 1F 10 3F 24
	and $000024.l,X		; 3F 24 00 00
	brk $C0.b		; 00 C0
	cpy #$FC.b		; C0 FC
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $C3FFE7.l,X		; FF E7 FF C3
	sbc $00FF09.l,X		; FF 09 FF 00
	brk $C0.b		; 00 C0
	cpy #$FC.b		; C0 FC
	bit $13FF.w,X		; 3C FF 13
	sbc $18FFE1.l,X		; FF E1 FF 18
	sbc [$34.b],Y		; F7 34
	sbc [$D6.b],Y		; F7 D6
	asl $2A00.w,X		; 1E 00 2A
	brk $3A.b		; 00 3A
	brk $32.b		; 00 32
	php		; 08
	mvn $64,$08		; 54 08 64
	bpl -124.b		; 10 84
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	cli		; 58
	rti		; 40

	tay		; A8
	bmi 116.b		; 30 74
	rti		; 40

	pea $AA80.w		; F4 80 AA
	brk $86.b		; 00 86
	rti		; 40

	and $4B40.w		; 2D 40 4B
	jsr $E000.w		; 20 00 E0
	brk $70.b		; 00 70
	rti		; 40

	iny		; C8
	bra -88.b		; 80 A8
	brk $54.b		; 00 54
	brk $78.b		; 00 78
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	eor [$20.b],Y		; 57 20
	lsr $30.b		; 46 30
	bit $92.b		; 24 92
	sei		; 78
	stx $E0.b		; 86 E0
	asl $7E98.w,X		; 1E 98 7E
	bmi -122.b		; 30 86
	bcs -122.b		; B0 86
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	tsb $A0.b		; 04 A0
	trb $6480.w		; 1C 80 64
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	cmp [$7C.b]		; C7 7C
	cmp [$7C.b]		; C7 7C
	dec $7C.b		; C6 7C
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	cpy $38.b		; C4 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $B0.b		; 00 B0
	stx $34.b		; 86 34
	stx $74.b		; 86 74
	dec $5C.b		; C6 5C
	dec $1C.b		; C6 1C
	dec $18.b		; C6 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $98.b		; 00 98
	jsr $1064.w		; 20 64 10
	mvn $2C,$00		; 54 00 2C
	brk $2A.b		; 00 2A
	brk $32.b		; 00 32
	brk $15.b		; 00 15
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	asl A		; 0A
	ora ($0A.b,X)		; 01 0A
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $50.b		; 00 50
	bra  80.b		; 80 50
	bra  40.b		; 80 28
	cpy #$40A8.w		; C0 A8 40
	cli		; 58
	jsr $2094.w		; 20 94 20
	ldy $10.b		; A4 10
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	dec $5200.w,X		; DE 00 52
	sty $68D4.w		; 8C D4 68
	inx		; E8
	cpx #$7070.w		; E0 70 70
	bmi -80.b		; 30 B0
	bcs -80.b		; B0 B0
	plp		; 28
	bcs   0.b		; B0 00
	jsr $AC00.w		; 20 00 AC
	brk $68.b		; 00 68
	cpy #$60F0.w		; C0 F0 60
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	brk $F0.b		; 00 F0
	and $E0.b,X		; 35 E0
	asl $60.b,X		; 16 60
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	asl A		; 0A
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	and $1C.b,S		; 23 1C
	and [$10.b]		; 27 10
	lsr $7C.b		; 46 7C
	ora ($4B.b)		; 12 4B
	bit $13AF.w		; 2C AF 13
	cmp [$0F.b],Y		; D7 0F
	adc [$0F.b],Y		; 77 0F
	ora $1A00.w,X		; 1D 00 1A
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bit $5300.w,X		; 3C 00 53
	ora $2F.b,S		; 03 2F
	ora $0F.b,S		; 03 0F
	eor $17F8B0.l,X		; 5F B0 F8 17
	lda $5CE343.l,X		; BF 43 E3 5C
	pha		; 48
	cli		; 58
	ora $87.b,S		; 03 87
	inc $FDFF.w,X		; FE FF FD
	sbc $003000.l,X		; FF 00 30 00
	and [$00.b],Y		; 37 00
	tad		; 5B
	brk $5C.b		; 00 5C
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	stx $FF.b		; 86 FF
	jsr ($02FF.w,X)		; FC FF 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $7A.b		; 00 7A
	ora ($AA.b,X)		; 01 AA
	ora ($AA.b),Y		; 11 AA
	ora ($7A.b),Y		; 11 7A
	sta ($5F.b,X)		; 81 5F
	cpx #$DC53.w		; E0 53 DC
	mvn $5C,$C7		; 54 C7 5C
	cmp [$00.b]		; C7 00
	lda $007F00.l,X		; BF 00 7F 00
	adc $A01F80.l,X		; 7F 80 1F A0
	ora $AC.b,S		; 03 AC
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $33.b		; 00 33
	ror $7C22.w,X		; 7E 22 7C
	ora $7A.b		; 05 7A
	bit $48.b,X		; 34 48
	inc A		; 1A
	rol $08.b		; 26 08
	asl $18.b,X		; 16 18
	ora $E5.b		; 05 E5
	ora ($7E.b,X)		; 01 7E
	jmp $5879.w		; 4C 79 58
	adc $70.b,X		; 75 70
	eor [$40.b]		; 47 40
	and ($20.b,X)		; 21 20
	ora ($10.b,S),Y		; 13 10
	ora $00.b,S		; 03 00
	brk $1A.b		; 00 1A
	sei		; 78
	sta $F41FA8.l,X		; 9F A8 1F F4
	phy		; 5A
	iny		; C8
	jmp $04F0.w		; 4C F0 04
	pha		; 48
	bit $D8D0.w,X		; 3C D0 D8
	brk $F0.b		; 00 F0
	sta [$03.b]		; 87 03
	ora $43.b,S		; 03 43
	asl A		; 0A
	.db $42, $D0		; 42 D0
	rts		; 60

	sed		; F8
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -125.b		; 80 83
	ora $07.b,S		; 03 07
	ora $2104.w,Y		; 19 04 21
	tsb $0826.w		; 0C 26 08
	and ($08.b)		; 32 08
	and ($08.b)		; 32 08
	jmp $4410.w		; 4C 10 44
	bpl  68.b		; 10 44
	bpl   0.b		; 10 00
	asl $1E00.w		; 0E 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	bit $08.b,X		; 34 08
	and ($08.b)		; 32 08
	rol A		; 2A
	tsb $11.b		; 04 11
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	trb $2C2C.w		; 1C 2C 2C
	bit $24.b		; 24 24
	clc		; 18
	trb $0C0C.w		; 1C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	trb $1C00.w		; 1C 00 1C
	clc		; 18
	rol $7E2C.w,X		; 3E 2C 7E
	brk $7E.b		; 00 7E
	php		; 08
	ror $1E08.w,X		; 7E 08 1E
	brk $1E.b		; 00 1E
	php		; 08
	rol $2045.w,X		; 3E 45 20
	eor $08.b,X		; 55 08
	eor $18.b		; 45 18
	.db $62, $18, $AA		; 62 18 AA
	bpl -124.b		; 10 84
	bmi -60.b		; 30 C4
	bmi -44.b		; 30 D4
	jsr $3E00.w		; 20 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	sec		; 38
	.db $62, $38, $62		; 62 38 62
	bit $66.b		; 24 66
	trb $007E.w		; 1C 7E 00
	inc $E618.w,X		; FE 18 E6
	jmp ($E69A.w,X)		; 7C 9A E6
	stz $1C.b		; 64 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $20.b		; 00 20
	brk $7C.b		; 00 7C
	brk $64.b		; 00 64
	brk $18.b		; 00 18
	clc		; 18
	brk $7C.b		; 00 7C
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	eor $F8.b		; 45 F8
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	sbc $F298.w,X		; FD 98 F2
	bcs -128.b		; B0 80
	sed		; F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $F0FF12.l,X		; FF 12 FF F0
	and $F83E50.l,X		; 3F 50 3E F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADEF.w		; 69 EF AD
	ora $860607.l		; 0F 07 06 86
	lda $27A2.w,X		; BD A2 27
	jsr $AFAE.w		; 20 AE AF
	lda $EE6E.w		; AD 6E EE
	adc $7FEE69.l		; 6F 69 EE 7F
	cpy #$56EF.w		; C0 EF 56
	bra -26.b		; 80 E6
	brk $F8.b		; 00 F8
	jsr $20FF.w		; 20 FF 20
	adc $207F20.l,X		; 7F 20 7F 20
	inc $C000.w,X		; FE 00 C0
	tsb $D6.b		; 04 D6
	inc $04.b,X		; F6 04
	cpy $94.b		; C4 94
	cld		; D8
	and ($7A.b),Y		; 31 7A
	bvc -71.b		; 50 B9
	bvc -54.b		; 50 CA
	rol $79.b,X		; 36 79
	ora [$48.b]		; 07 48
	and ($80.b,S),Y		; 33 80
	tsb $3E04.w		; 0C 04 3E
	cop $34.b		; 02 34
	ora $D4.b,S		; 03 D4
	ora $54.b,S		; 03 54
	ora $30.b		; 05 30
	cop $80.b		; 02 80
	ora ($B0.b,X)		; 01 B0
	eor $B705.w,X		; 5D 05 B7
	cop $BE.b		; 02 BE
	brk $DF.b		; 00 DF
	jsr $2449.w		; 20 49 24
	adc #$EA04.w		; 69 04 EA
	tsb $A8.b		; 04 A8
	lsr $05.b		; 46 05
	lda [$02.b]		; A7 02
	ror A		; 6A
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bne   0.b		; D0 00
	bcs   0.b		; B0 00
	tay		; A8
	brk $B8.b		; 00 B8
	brk $5C.b		; 00 5C
	bra  92.b		; 80 5C
	bra -84.b		; 80 AC
	rti		; 40

	dey		; 88
	rts		; 60

	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$4000.w		; C0 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $55.b		; 00 55
	php		; 08
	adc $18.b		; 65 18
	ror A		; 6A
	bpl -118.b		; 10 8A
	bmi -44.b		; 30 D4
	jsr $20C8.w		; 20 C8 20
	plp		; 28
	rti		; 40

	bpl  64.b		; 10 40
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	asl $1EC3.w,X		; 1E C3 1E
	eor $3C.b,S		; 43 3C
	adc ($2C.b,X)		; 61 2C
	adc ($0E.b,X)		; 61 0E
	adc ($0E.b,X)		; 61 0E
	and ($16.b,X)		; 21 16
	and ($05.b),Y		; 31 05
	and ($7C.b),Y		; 31 7C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $02.b		; 00 02
	asl $03.b		; 06 03
	ora $0E0F00.l		; 0F 00 0F 0E
	ora ($3F.b),Y		; 11 3F
	asl $1121.w		; 0E 21 11
	eor $08.b		; 45 08
	adc $18.b		; 65 18
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	asl $0E.b		; 06 0E
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $01.b		; 05 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $02.b		; 04 02
	phd		; 0B
	ora $01.b		; 05 01
	inc A		; 1A
	tsb $11.b		; 04 11
	asl A		; 0A
	and $14.b,S		; 23 14
	and [$11.b]		; 27 11
	lsr $29.b		; 46 29
	lsr $0300.w		; 4E 00 03
	ora $01.b		; 05 01
	asl $0F00.w		; 0E 00 0F
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	brk $3C.b		; 00 3C
	brk $34.b		; 00 34
	brk $32.b		; 00 32
	sta $C01F.w,X		; 9D 1F C0
	cmp [$5B.b],Y		; D7 5B
	and $2F5FA7.l,X		; 3F A7 5F 2F
	ldx $0F.b,Y		; B6 0F
	adc $040B00.l,X		; 7F 00 0B 04
	pla		; 68
	ora ($60.b,X)		; 01 60
	brk $00.b		; 00 00
	tda		; 7B
	ora [$E7.b]		; 07 E7
	ora [$AF.b]		; 07 AF
	brk $5F.b		; 00 5F
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	asl A		; 0A
	brk $1C.b		; 00 1C
	brk $15.b		; 00 15
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	asl A		; 0A
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	cop $04.b		; 02 04
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	pea $9069.w		; F4 69 90
	and $4C.b,X		; 35 4C
	bpl  44.b		; 10 2C
	and ($0B.b),Y		; 31 0B
	dex		; CA
	ora $74.b,S		; 03 74
	php		; 08
	xba		; EB
	ora $EA.b		; 05 EA
	cpx #$808F.w		; E0 8F 80
	eor $40.b,S		; 43 40
	and [$20.b]		; 27 20
	asl $00.b		; 06 00
	brk $34.b		; 00 34
	brk $FB.b		; 00 FB
	brk $1C.b		; 00 1C
	inx		; E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$00F8.w		; E0 F8 00
	jmp ($1408.w,X)		; 7C 08 14
	sty $A0.b		; 84 A0
	cpy #$00F0.w		; C0 F0 00
	cpx #$4000.w		; E0 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	plp		; 28
	sbc $FE0F.w,Y		; F9 0F FE
	ora $FBFFF8.l,X		; 1F F8 FF FB
	inc $DF.b,X		; F6 DF
	sbc ($EF.b,X)		; E1 EF
	ora $FA6727.l		; 0F 27 67 FA
	inc A		; 1A
	php		; 08
	adc $101F08.l		; 6F 08 1F 10
	sbc $01FEF0.l,X		; FF F0 FE 01
	sbc ($07.b,X)		; E1 07
	ora $18FF02.l,X		; 1F 02 FF 18
	ora $A021D0.l,X		; 1F D0 21 A0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0A0.w		; C0 A0 C0
	rts		; 60

	brk $A0.b		; 00 A0
	cpy #$2000.w		; C0 00 20
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	lda #$E846.w		; A9 46 E8
	ora [$7F.b]		; 07 7F
	bra  32.b		; 80 20
	tsa		; 3B
	cpy #$C01B.w		; C0 1B C0
	tas		; 1B
	cpy #$C019.w		; C0 19 C0
	ora ($00.b),Y		; 11 00
	sbc $807F00.l,X		; FF 00 7F 80
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	php		; 08
	cpx #$1018.w		; E0 18 10
	jsr ($EC68.w,X)		; FC 68 EC
	iny		; C8
	cpy $84B0.w		; CC B0 84
	bmi -124.b		; 30 84
	sec		; 38
	stx $00.b		; 86 00
	cpx #$0010.w		; E0 10 00
	pla		; 68
	brk $90.b		; 00 90
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $0E.b		; 00 0E
	stx $1E6E.w		; 8E 6E 1E
	dec $742E.w,X		; DE 2E 74
	rol $54A8.w		; 2E A8 54
	ldy $7000.w		; AC 00 70
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $841F8C.l,X		; 1F 8C 1F 84
	and $002F80.l		; 2F 80 2F 00
	lsr $00.b,X		; 56 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	jsr $30C4.w		; 20 C4 30
	ldy $6C10.w		; AC 10 6C
	bpl  66.b		; 10 42
	clc		; 18
	and ($08.b)		; 32 08
	rol $08.b		; 26 08
	ora $0004.w,Y		; 19 04 00
	sed		; F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	rol A		; 2A
	brk $2A.b		; 00 2A
	brk $3C.b		; 00 3C
	brk $4C.b		; 00 4C
	bpl 100.b		; 10 64
	bpl -44.b		; 10 D4
	jsr $00A8.w		; 20 A8 00
	beq   0.b		; F0 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	plp		; 28
	sty $CC48.w		; 8C 48 CC
	sec		; 38
	inc $7E00.w,X		; FE 00 7E
	asl $1F71.w		; 0E 71 1F
	rol $1131.w		; 2E 31 11
	ora ($04.b)		; 12 04
	beq   0.b		; F0 00
	bmi   0.b		; 30 00
	mvp $3C,$00		; 44 00 3C
	brk $30.b		; 00 30
	brk $0C.b		; 00 0C
	asl $1F00.w		; 0E 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $001E.w,X		; 1E 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $1616.w		; 0E 16 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $161F.w		; 0C 1F 16
	and $0C1212.l,X		; 3F 12 12 0C
	asl $0E06.w		; 0E 06 0E
	tsb $06.b		; 04 06
	tsb $0C0E.w		; 0C 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	clc		; 18
	trb $3F00.w		; 1C 00 3F
	tsb $3F.b		; 04 3F
	tsb $1F.b		; 04 1F
	brk $0F.b		; 00 0F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	tay		; A8
	brk $68.b		; 00 68
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	brk $3C.b		; 00 3C
	brk $2A.b		; 00 2A
	brk $2A.b		; 00 2A
	tsb $35.b		; 04 35
	cop $00.b		; 02 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	inc A		; 1A
	tsb $19.b		; 04 19
	tsb $25.b		; 04 25
	php		; 08
	jsl $003A08.l		; 22 08 3A 00
	bit $00.b,X		; 34 00
	mvn $58,$00		; 54 00 58
	brk $00.b		; 00 00
	ora $000E00.l		; 0F 00 0E 00
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	rol $3863.w,X		; 3E 63 38
	adc $38.b,S		; 63 38
	adc $38.b,S		; 63 38
	.db $62, $1C, $46		; 62 1C 46
	clc		; 18
	dec $58.b		; C6 58
	dec $58.b		; C6 58
	cpy $1C.b		; C4 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $8C.b		; 00 8C
	dey		; 88
	sta ($24.b)		; 92 24
	tax		; AA
	bpl  69.b		; 10 45
	clc		; 18
	eor $08.b,X		; 55 08
	and ($0C.b,S),Y		; 33 0C
	rol A		; 2A
	tsb $18.b		; 04 18
	asl $00.b		; 06 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	tay		; A8
	bpl -44.b		; 10 D4
	php		; 08
	jsl $001E00.l		; 22 00 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	sbc $0098.w,X		; FD 98 00
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $F0FF02.l,X		; FF 02 FF F0
	and $F88080.l,X		; 3F 80 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADFF.w		; 69 FF AD
	ora $81BC07.l		; 0F 07 BC 81
	lsr $27C0.w,X		; 5E C0 27
	cpx #$780B.w		; E0 0B 78
	sbc $1C.b		; E5 1C
	cld		; D8
	asl $64.b		; 06 64
	phb		; 8B
	sbc ($05.b)		; F2 05
	adc $00BF00.l,X		; 7F 00 BF 00
	eor $001700.l,X		; 5F 00 17 00
	phd		; 0B
	brk $07.b		; 00 07
	cpx #$F801.w		; E0 01 F8
	brk $FC.b		; 00 FC
	dec A		; 3A
	sbc $0C.b,S		; E3 0C
	sbc ($16.b,X)		; E1 16
	bvs -53.b		; 70 CB
	sei		; 78
	cpy $3C.b		; C4 3C
	ora $1F.b,S		; 03 1F
	inx		; E8
	sbc [$0E.b],Y		; F7 0E
	sbc ($5C.b),Y		; F1 5C
	brk $BF.b		; 00 BF
	brk $8F.b		; 00 8F
	brk $97.b		; 00 97
	brk $EB.b		; 00 EB
	brk $E4.b		; 00 E4
	brk $03.b		; 00 03
	brk $E0.b		; 00 E0
	php		; 08
	xba		; EB
	brk $55.b		; 00 55
	brk $7A.b		; 00 7A
	tsb $B7.b		; 04 B7
	php		; 08
	sbc $0FF310.l		; EF 10 F3 0F
	pea $120C.w		; F4 0C 12
	asl $5600.w		; 0E 00 56
	brk $2E.b		; 00 2E
	brk $2D.b		; 00 2D
	brk $5D.b		; 00 5D
	brk $50.b		; 00 50
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ply		; 7A
	bra 117.b		; 80 75
	bra  79.b		; 80 4F
	bcc  23.b		; 90 17
	iny		; C8
	inc $08.b		; E6 08
	sta $A6E6.w,Y		; 99 E6 A6
	and $0DEA.w,Y		; 39 EA 0D
	brk $A4.b		; 00 A4
	brk $AA.b		; 00 AA
	brk $B5.b		; 00 B5
	brk $FA.b		; 00 FA
	brk $1D.b		; 00 1D
	rts		; 60

	asl $D0.b		; 06 D0
	brk $F1.b		; 00 F1
	brk $07.b		; 00 07
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	brk $68.b		; 00 68
	brk $F8.b		; 00 F8
	brk $28.b		; 00 28
	beq  16.b		; F0 10
	tya		; 98
	tay		; A8
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $83.b		; 00 83
	brk $E0.b		; 00 E0
	ora $0100C1.l,X		; 1F C1 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $0D.b		; 02 0D
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	ora [$02.b]		; 07 02
	inc A		; 1A
	ora [$15.b]		; 07 15
	ora #$3522.w		; 09 22 35
	ror $11.b		; 66 11
	lsr $29.b		; 46 29
	cmp $CF41.w		; CD 41 CF
	cmp ($1B.b,S),Y		; D3 1B
	asl A		; 0A
	ora [$08.b]		; 07 08
	ora ($1E.b,X)		; 01 1E
	brk $1A.b		; 00 1A
	brk $3C.b		; 00 3C
	brk $70.b		; 00 70
	ora $38.b,S		; 03 38
	ora $01.b,S		; 03 01
	and [$F7.b]		; 27 F7
	.db $82, $7D, $02		; 82 7D 02
	eor $3CFBB0.l		; 4F B0 FB 3C
	lda $B9.b,X		; B5 B9
	tsx		; BA
	lda $7847.w,X		; BD 47 78
	sbc $B80000.l,X		; FF 00 00 B8
	cop $80.b		; 02 80
	brk $B9.b		; 00 B9
	brk $3C.b		; 00 3C
	brk $FF.b		; 00 FF
	bra  -3.b		; 80 FD
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $20.b		; 00 20
	cpy #$40E0.w		; C0 E0 40
	cpx #$2040.w		; E0 40 20
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $010A02.l		; 0F 02 0A 01
	phd		; 0B
	ora $06.b		; 05 06
	ora ($03.b,X)		; 01 03
	brk $05.b		; 00 05
	cop $09.b		; 02 09
	asl $13.b		; 06 13
	tsb $0600.w		; 0C 00 06
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	iny		; C8
	ora [$E6.b],Y		; 17 E6
.ACCU 8
.INDEX 8
	sep #$F9		; E2 F9
	sbc $FFFF.w,Y		; F9 FF FF
	sta [$7F.b]		; 87 7F
	jmp ($5703.w,X)		; 7C 03 57
	brk $BE.b		; 00 BE
	brk $00.b		; 00 00
	and [$40.b],Y		; 37 40
	xce		; FB
	beq  -1.b		; F0 FF
	ora $7F01FF.l,X		; 1F FF 01 7F
	brk $83.b		; 00 83
	brk $A8.b		; 00 A8
	brk $69.b		; 00 69
	mvn $F4,$A8		; 54 A8 F4
	php		; 08
	jmp.w [$B4E0]		; DC E0 B4
	cpx $9F.b		; E4 9F
	sbc $FCDF23.l		; EF 23 DF FC
	ora $C3.b,S		; 03 C3
	brk $00.b		; 00 00
	tay		; A8
	brk $08.b		; 00 08
	cpy #$E0.b		; C0 E0
	bra -17.b		; 80 EF
	sta [$EF.b]		; 87 EF
	brk $DF.b		; 00 DF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	jsr $A8D8.w		; 20 D8 A8
	sed		; F8
	tya		; 98
	jmp $C8B8.w		; 4C B8 C8
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	jsr $88B8.w		; 20 B8 88
	ldy $9C00.w		; AC 00 9C
	php		; 08
	clv		; B8
	brk $30.b		; 00 30
	eor $F8.b		; 45 F8
	phd		; 0B
	pea $9061.w		; F4 61 90
	and $4C.b,X		; 35 4C
	stz $0C.b,X		; 74 0C
	tya		; 98
	ora $D6.b,S		; 03 D6
	ora $E9.b,S		; 03 E9
	tsb $F2.b		; 04 F2
	bcs -22.b		; B0 EA
	cpx #$8F.b		; E0 8F
	bra  67.b		; 80 43
	rti		; 40

	phd		; 0B
	brk $07.b		; 00 07
	pla		; 68
	brk $EC.b		; 00 EC
	tsb $72.b		; 04 72
	cli		; 58
	rol $E8.b,X		; 36 E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$08.b		; E0 08
	bcc 120.b		; 90 78
	ldy #$B0.b		; A0 B0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	asl $86.b		; 06 86
	trb $84.b		; 14 84
	ldy #$C0.b		; A0 C0
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	brk $D8.b		; 00 D8
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($01.b,X)		; C1 01
	bit $0B00.w,X		; 3C 00 0B
	brk $09.b		; 00 09
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000300.l,X		; 3F 00 03 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $CC.b		; 00 CC
	and ($3F.b,S),Y		; 33 3F
	cpy #$F0.b		; C0 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rts		; 60

	bra  32.b		; 80 20
	rti		; 40

	bvs -64.b		; 70 C0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$C0.b		; E0 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	sbc $177010.l,X		; FF 10 70 17
	bvs  11.b		; 70 0B
	sec		; 38
	ora $3C.b		; 05 3C
	ora $1C.b		; 05 1C
	cop $1E.b		; 02 1E
	ora ($1F.b,X)		; 01 1F
	jsr $2F00.w		; 20 00 2F
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $05.b		; 00 05
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	rts		; 60

	bra  48.b		; 80 30
	cpx #$30.b		; E0 30
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	rts		; 60

	tsb $0080.w		; 0C 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $07.b		; 00 07
	ora $3F3F0F.l		; 0F 0F 3F 3F
	adc $38FF0B.l,X		; 7F 0B FF 38
	sbc $00FF20.l,X		; FF 20 FF 00
	ror $7A05.w,X		; 7E 05 7A
	ora $323F0E.l		; 0F 0E 3F 32
	adc $F4FF40.l,X		; 7F 40 FF F4
	sbc $DFFFC7.l,X		; FF C7 FF DF
	tda		; 7B
	ply		; 7A
	adc $70.b,X		; 75 70
	inc $FEFF.w,X		; FE FF FE
	sbc $81FFE7.l,X		; FF E7 FF 81
	sbc $78FF00.l,X		; FF 00 FF 78
	sta $F41AAC.l,X		; 9F AC 1A F4
	cli		; 58
	sbc $C1FF31.l,X		; FF 31 FF C1
	sbc $76F718.l,X		; FF 18 F7 76
	sbc $0387D7.l,X		; FF D7 87 03
	cop $42.b		; 02 42
	php		; 08
	rti		; 40

	brk $03.b		; 00 03
	ora $041F01.l		; 0F 01 1F 04
	asl $08.b,X		; 16 08
	ora $0F1706.l,X		; 1F 06 17 0F
	ora $070B07.l		; 0F 07 0B 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $09.b		; 00 09
	brk $06.b		; 00 06
	cop $0F.b		; 02 0F
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	lda ($81.b,S),Y		; B3 81
	dex		; CA
	ora $3C23.w		; 0D 23 3C
	bra 112.b		; 80 70
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	stx $80.b		; 86 80
	sta [$80.b]		; 87 80
	jmp ($F401.w,X)		; 7C 01 F4
	ora ($D0.b,X)		; 01 D0
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	lsr $D7.b,X		; 56 D7
	and [$76.b],Y		; 37 76
	sbc [$77.b],Y		; F7 77
	sbc [$7F.b],Y		; F7 7F
	cpx #$6F30.w		; E0 30 6F
	sbc $79BF06.l,X		; FF 06 BF 79
	brk $DF.b		; 00 DF
	bpl  63.b		; 10 3F
	bmi  -1.b		; 30 FF
	bmi  -1.b		; 30 FF
	jsr $00EE.w		; 20 EE 00
	sbc $193600.l		; EF 00 36 19
	adc $00F0.w,Y		; 79 F0 00
	pha		; 48
	bcs 120.b		; B0 78
	bvc -72.b		; 50 B8
	bvc -56.b		; 50 C8
	bmi  -8.b		; 30 F8
	brk $D0.b		; 00 D0
	ldy #$2050.w		; A0 50 20
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	brk $D0.b		; 00 D0
	brk $50.b		; 00 50
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	inc A		; 1A
	tsb $35.b		; 04 35
	php		; 08
	rtl		; 6B

	bpl -45.b		; 10 D3
	jsr $2095.w		; 20 95 20
	lda $00.b		; A5 00
	adc #$6900.w		; 69 00 69
	brk $00.b		; 00 00
	ora $001E00.l		; 0F 00 1E 00
	bit $7C00.w,X		; 3C 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	iny		; C8
	brk $A8.b		; 00 A8
	brk $A8.b		; 00 A8
	brk $28.b		; 00 28
	brk $48.b		; 00 48
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	and $00.b,X		; 35 00
	tas		; 1B
	brk $2F.b		; 00 2F
	brk $2D.b		; 00 2D
	brk $36.b		; 00 36
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl A		; 0A
	brk $06.b		; 00 06
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $408B40.l,X		; 1F 40 8B 40
	ldx $48.b		; A6 48
	plb		; AB
	mvp $66,$99		; 44 99 66
	sta $9F62.w,X		; 9D 62 9F
	rts		; 60

	jsr ($0003.w,X)		; FC 03 00
	plx		; FA
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $EF.b		; 00 EF
	brk $F4.b		; 00 F4
	ora ($00.b,X)		; 01 00
	stz $C000.w		; 9C 00 C0
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $68.b		; 00 68
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $FFFFFF.l,X		; 3F FF FF FF
	rol $E0FF.w		; 2E FF E0
	sbc $0FFE81.l,X		; FF 81 FE 0F
	ora $3F101F.l		; 0F 1F 10 3F
	sec		; 38
	sbc $00FFCB.l,X		; FF CB FF 00
	sbc $1FFFD1.l,X		; FF D1 FF 1F
	inc $007C.w,X		; FE 7C 00
	bra -128.b		; 80 80
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	jsr ($FE9C.w,X)		; FC 9C FE
	tsb $FE.b		; 04 FE
	brk $FE.b		; 00 FE
	cpx #$807E.w		; E0 7E 80
	bra  -4.b		; 80 FC
	jmp ($C4FC.w,X)		; 7C FC C4
	jsr ($FE04.w,X)		; FC 04 FE
	.db $62, $DE, $DA		; 62 DE DA
	inc $1E5E.w,X		; FE 5E 1E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	asl $0F06.w		; 0E 06 0F
	tsa		; 3B
	and $0000E5.l		; 2F E5 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	ora $0001.w,Y		; 19 01 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $0D0C03.l		; 0F 03 0C 0D
	ora $08.b,S		; 03 08
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$F8.b]		; 07 F8
	sty $8630.w		; 8C 30 86
	jmp ($18C6.w,X)		; 7C C6 18
	rep #$4C		; C2 4C
	dec $1EF8.w		; CE F8 1E
	beq -20.b		; F0 EC
	clc		; 18
	bpl 112.b		; 10 70
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $B0.b		; 00 B0
	brk $04.b		; 00 04
	brk $C8.b		; 00 C8
	cpx #$F000.w		; E0 00 F0
	bit $08.b,X		; 34 08
	inc A		; 1A
	asl $0A.b		; 06 0A
	asl $F8.b		; 06 F8
	ora $9F.b		; 05 9F
	ora ($F6.b,X)		; 01 F6
	txa		; 8A
	rtl		; 6B

	eor $7F.b		; 45 7F
	rti		; 40

	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $76.b		; 00 76
	bra -71.b		; 80 B9
	rti		; 40

	jmp.w [$C000]		; DC 00 C0
	iny		; C8
	jmp $04F0.w		; 4C F0 04
	pha		; 48
	sec		; 38
	bvc -40.b		; 50 D8
	brk $F0.b		; 00 F0
	cpy #$E000.w		; C0 00 E0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	rts		; 60

	sed		; F8
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	cmp $C2.b		; C5 C2
	cmp #$67E6.w		; C9 E6 67
	beq -14.b		; F0 F2
	jmp ($76FB.w,X)		; 7C FB 76
	sbc #$D67A.w		; E9 7A D6
	sei		; 78
	jmp ($8030.w)		; 6C 30 80
	sbc $40.b,S		; E3 40
	sbc [$00.b],Y		; F7 00
	plx		; FA
	jsr $307D.w		; 20 7D 30
	ror $7E20.w,X		; 7E 20 7E
	brk $79.b		; 00 79
	brk $33.b		; 00 33
	lda $3FBF7F.l,X		; BF 7F BF 3F
	sta $33F34F.l		; 8F 4F F3 33
	ldy $AE0D.w,X		; BC 0D AE
	cop $FA.b		; 02 FA
	ora ($95.b,X)		; 01 95
	rti		; 40

	ora $7F0E7F.l,X		; 1F 7F 0E 7F
	asl $FF.b		; 06 FF
	bpl  63.b		; 10 3F
	tsb $004F.w		; 0C 4F 00
	eor ($00.b,S),Y		; 53 00
	eor $00.b,X		; 55 00
	ply		; 7A
	ldy #$0080.w		; A0 80 00
	bra  64.b		; 80 40
	brk $38.b		; 00 38
	pha		; 48
	ror $6A.b,X		; 76 6A
	rol $66.b,X		; 36 66
	cmp ($2E.b,S),Y		; D3 2E
	lda ($0C.b)		; B2 0C
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $98.b		; 00 98
	php		; 08
	dec $EB02.w		; CE 02 EB
	brk $EF.b		; 00 EF
	cop $2E.b		; 02 2E
	brk $0C.b		; 00 0C
	eor #$2900.w		; 49 00 29
	brk $29.b		; 00 29
	brk $19.b		; 00 19
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $50.b,S		; 03 50
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	asl A		; 0A
	ora ($0C.b,X)		; 01 0C
	ora $15.b,S		; 03 15
	cop $1A.b		; 02 1A
	tsb $35.b		; 04 35
	php		; 08
	rtl		; 6B

	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	asl $3C00.w,X		; 1E 00 3C
	dex		; CA
	bmi  44.b		; 30 2C
	cpy #$8050.w		; C0 50 80
	ldy #$5010.w		; A0 10 50
	jsr $40A0.w		; 20 A0 40
	ldy #$2000.w		; A0 00 20
	brk $00.b		; 00 00
	jsr ($F000.w,X)		; FC 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $0080.w		; 20 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	stz $5C00.w		; 9C 00 5C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $3C.b		; 00 3C
	brk $12.b		; 00 12
	brk $1A.b		; 00 1A
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	sei		; 78
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	php		; 08
	sec		; 38
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$1C.b]		; 07 1C
	ora $1C.b		; 05 1C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora $0E.b,S		; 03 0E
	ora [$00.b],Y		; 17 00
	ora [$00.b]		; 07 00
	ora $000B00.l		; 0F 00 0B 00
	phd		; 0B
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $F0.b		; 00 F0
	tya		; 98
	brk $68.b		; 00 68
	rti		; 40

	jmp ($74D0.w)		; 6C D0 74
	bcc  52.b		; 90 34
	tya		; 98
	rol $3E8C.w,X		; 3E 8C 3E
	dey		; 88
	dec A		; 3A
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	tya		; 98
	brk $88.b		; 00 88
	brk $C8.b		; 00 C8
	brk $C4.b		; 00 C4
	brk $D0.b		; 00 D0
	brk $D4.b		; 00 D4
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	ora $53.b		; 05 53
	ror A		; 6A
	stp		; DB
	sbc $1E.b		; E5 1E
	sbc ($FE.b,X)		; E1 FE
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$00.b],Y		; 77 00
	inc $E400.w		; EE 00 E4
	ora ($E4.b,X)		; 01 E4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	jsr $773C.w		; 20 3C 77
	tsb $9D.b		; 04 9D
	sta $2E.b,S		; 83 2E
	sbc $1C.b		; E5 1C
	adc $61.b,S		; 63 61
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $78.b		; 00 78
	ora $51.b,S		; 03 51
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora $000000.l,X		; 1F 00 00 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	brk $1D.b		; 00 1D
	brk $32.b		; 00 32
	ora ($4C.b,X)		; 01 4C
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $3300.w,X		; 1D 00 33
	ora [$7A.b],Y		; 17 7A
	nop		; EA
	ora $7C.b,X		; 15 7C
	sta $3D.b,S		; 83 3D
	cmp $FD.b,S		; C3 FD
	ora $B6.b,S		; 03 B6
	eor #$8C73.w		; 49 73 8C
	cld		; D8
	ora $00FA00.l		; 0F 00 FA 00
	and $00.b,X		; 35 00
	cmp $00.b,S		; C3 00
	sbc $00.b,S		; E3 00
	phd		; 0B
	brk $6D.b		; 00 6D
	brk $CE.b		; 00 CE
	brk $AF.b		; 00 AF
	brk $03.b		; 00 03
	ora $3F.b,S		; 03 3F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	and $7F1F7F.l,X		; 3F 7F 1F 7F
	sta $7F9F7F.l,X		; 9F 7F 9F 7F
	ora $03.b,S		; 03 03
	and $2E3F3D.l,X		; 3F 3D 3F 2E
	adc $467F4C.l,X		; 7F 4C 7F 46
	adc $607F65.l,X		; 7F 65 7F 60
	adc $800060.l,X		; 7F 60 00 80
	bra -32.b		; 80 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	jsr ($8080.w,X)		; FC 80 80
	cpx #$F060.w		; E0 60 F0
	bmi  -8.b		; 30 F8
	php		; 08
	sed		; F8
	php		; 08
	jsr ($FCC4.w,X)		; FC C4 FC
	stz $FC.b		; 64 FC
	tsb $C0.b		; 04 C0
	cpx #$E0E0.w		; E0 E0 E0
	cpy #$2020.w		; C0 20 20
	bpl  56.b		; 10 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $77.b		; 00 77
	brk $DF.b		; 00 DF
	brk $D3.b		; 00 D3
	brk $D4.b		; 00 D4
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $3D00.w		; 0E 00 3D
	brk $3D.b		; 00 3D
	brk $3B.b		; 00 3B
	sbc $7EBD00.l,X		; FF 00 BD 7E
	cop $00.b		; 02 00
	sty $60.b,X		; 94 60
	sty $60.b,X		; 94 60
	plp		; 28
	cpy #$C028.w		; C0 28 C0
	bvc -128.b		; 50 80
	brk $40.b		; 00 40
	clc		; 18
	ror $FC00.w,X		; 7E 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	rol $18.b		; 26 18
	.db $62, $08, $5A		; 62 08 5A
	brk $5C.b		; 00 5C
	brk $54.b		; 00 54
	brk $34.b		; 00 34
	brk $2C.b		; 00 2C
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $2C.b		; 00 2C
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	bit $00.b		; 24 00
	bit $1800.w		; 2C 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$7E54.w		; E0 54 7E
	jsr $3F5F.w		; 20 5F 3F
	rol $0F0F.w,X		; 3E 0F 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $5E00.w		; 0C 00 5E
	brk $21.b		; 00 21
	asl $003F.w		; 0E 3F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	tya		; 98
	ldy $3E1E.w,X		; BC 1E 3E
	asl $02FC.w,X		; 1E FC 02
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	bra  24.b		; 80 18
	bpl  30.b		; 10 1E
	php		; 08
	eor $00DF00.l,X		; 5F 00 DF 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($A7.b,X)		; 01 A7
	brk $AB.b		; 00 AB
	brk $B2.b		; 00 B2
	ora ($B4.b,X)		; 01 B4
	ora ($B7.b,X)		; 01 B7
	brk $75.b		; 00 75
	cop $68.b		; 02 68
	cop $0E.b		; 02 0E
	brk $00.b		; 00 00
	eor $5100.w,Y		; 59 00 51
	brk $41.b		; 00 41
	brk $43.b		; 00 43
	brk $43.b		; 00 43
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	phd		; 0B
	ora [$1B.b]		; 07 1B
	ora [$25.b]		; 07 25
	ora $186A.w		; 0D 6A 18
	adc $01.b,X		; 75 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $10.b		; 02 10
	ora [$00.b]		; 07 00
	asl $8C00.w		; 0E 00 8C
	rol $3E08.w,X		; 3E 08 3E
	brk $3C.b		; 00 3C
	mvp $D8,$78		; 44 78 D8
	cpx #$E090.w		; E0 90 E0
	ldy #$00C0.w		; A0 C0 00
	cpy #$00D0.w		; C0 D0 00
	pei ($00.b)		; D4 00
	cld		; D8
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	ora #$1D1B.w		; 09 1B 1D
	tas		; 1B
	and $0000.w,X		; 3D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $09.b		; 00 09
	brk $1B.b		; 00 1B
	brk $3D.b		; 00 3D
	brk $7D.b		; 00 7D
	sta $007E60.l,X		; 9F 60 7E 00
	trb $6F60.w		; 1C 60 6F
	beq 116.b		; F0 74
	sec		; 38
	sbc $EFFFDC.l,X		; FF DC FF EF
	sbc $7F00F7.l,X		; FF F7 00 7F
	brk $1F.b		; 00 1F
	brk $EF.b		; 00 EF
	jsr $10F7.w		; 20 F7 10
	xce		; FB
	php		; 08
	jsr ($FFC4.w,X)		; FC C4 FF
	inc $FF.b		; E6 FF
	adc $1F06.w,Y		; 79 06 1F
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000600.l		; 0F 00 06 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	asl $215E.w		; 0E 5E 21
	ldy $43.b		; A4 43
	and $59C2.w		; 2D C2 59
	stx $DD.b		; 86 DD
	cop $37.b		; 02 37
	iny		; C8
	dec A		; 3A
	jsr ($6E00.w,X)		; FC 00 6E
	brk $E1.b		; 00 E1
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	brk $27.b		; 00 27
	pha		; 48
	ora $44.b,S		; 03 44
	ora ($89.b,X)		; 01 89
	adc [$91.b],Y		; 77 91
	adc $312ED1.l		; 6F D1 2E 31
	asl $013E.w		; 0E 3E 01
	bpl  15.b		; 10 0F
	inx		; E8
	ora $34.b,S		; 03 34
	brk $77.b		; 00 77
	ror $6F.b,X		; 76 6F
	ror $2E2E.w		; 6E 2E 2E
	asl $00CE.w		; 0E CE 00
	cpy #$E003.w		; C0 03 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	inx		; E8
	jsr ($FE0C.w,X)		; FC 0C FE
	jmp ($C89E.w)		; 6C 9E C8
	jmp ($5C28.w,X)		; 7C 28 5C
	brk $C8.b		; 00 C8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr ($FE14.w,X)		; FC 14 FE
	sbc ($9E.b)		; F2 9E
	sta ($1C.b)		; 92 1C
	trb $9C.b		; 14 9C
	trb $08.b		; 14 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$FF.b],Y		; F7 FF
	jsr ($E81B.w,X)		; FC 1B E8
	xba		; EB
	cmp [$E8.b]		; C7 E8
	tya		; 98
	cpy #$8070.w		; C0 70 80
	cpx #$A000.w		; E0 00 A0
	brk $30.b		; 00 30
	sbc $001F10.l,X		; FF 10 1F 00
	sbc $00F800.l,X		; FF 00 F8 00
	beq   0.b		; F0 00
	ldy #$2000.w		; A0 00 20
	brk $40.b		; 00 40
	ldy #$B000.w		; A0 00 B0
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	cpy $00.b		; C4 00
	jmp ($5C80.w,X)		; 7C 80 5C
	clv		; B8
	inc $04.b		; E6 04
	phx		; DA
	sec		; 38
	inc $C404.w,X		; FE 04 C4
	jsl $00669C.l		; 22 9C 66 00
	sec		; 38
	brk $C0.b		; 00 C0
	php		; 08
	clv		; B8
	brk $5C.b		; 00 5C
	php		; 08
	bit $4400.w,X		; 3C 00 44
	sec		; 38
	brk $38.b		; 00 38
	brk $08.b		; 00 08
	.db $62, $18, $32		; 62 18 32
	asl $33.b		; 06 33
	ora $30.b		; 05 30
	phd		; 0B
	clc		; 18
	ora [$1E.b]		; 07 1E
	cop $0C.b		; 02 0C
	tsb $00.b		; 04 00
	bit $0C00.w,X		; 3C 00 0C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	ora $28.b,S		; 03 28
	cpy #$8050.w		; C0 50 80
	ldy #$A000.w		; A0 00 A0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$9F00.w		; E0 00 9F
	brk $0E.b		; 00 0E
	brk $C3.b		; 00 C3
	brk $30.b		; 00 30
	brk $0F.b		; 00 0F
	brk $19.b		; 00 19
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sei		; 78
	ora ($E0.b,X)		; 01 E0
	ora $277888.l,X		; 1F 88 78 27
	cpx #$3839.w		; E0 39 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora [$00.b],Y		; 17 00
	eor $00C700.l,X		; 5F 00 C7 00
	ora $3D.b		; 05 3D
	asl $71.b,X		; 16 71
	pld		; 2B
.INDEX 8
	sep #$55		; E2 55
	dec $01.b		; C6 01
	inc $0605.w,X		; FE 05 06
	xce		; FB
	cop $FB.b		; 02 FB
	cop $0A.b		; 02 0A
	brk $2F.b		; 00 2F
	brk $5C.b		; 00 5C
	brk $BA.b		; 00 BA
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	brk $3C.b		; 00 3C
	brk $EF.b		; 00 EF
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	trb $E0.b		; 14 E0
	bmi -32.b		; 30 E0
	bmi 112.b		; 30 70
	bmi 112.b		; 30 70
	sec		; 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	tad		; 5B
	bit $1CFB.w,X		; 3C FB 1C
	jsr $2078.w		; 20 78 20
	sei		; 78
	jsr $3038.w		; 20 38 30
	bit $3810.w,X		; 3C 10 38
	clc		; 18
	sec		; 38
	clc		; 18
	bit $3C08.w,X		; 3C 08 3C
	dey		; 88
	rti		; 40

	dey		; 88
	eor $88.b,S		; 43 88
	eor $93.b,S		; 43 93
	ora [$20.b]		; 07 20
	ora $631F31.l,X		; 1F 31 1F 63
	and $002F73.l,X		; 3F 73 2F 00
	bmi   1.b		; 30 01
	and ($01.b),Y		; 31 01
	and ($00.b),Y		; 31 00
	rts		; 60

	ora [$C7.b]		; 07 C7
	ora $9C1FCE.l		; 0F CE 1F 9C
	ora $F0008C.l		; 0F 8C 00 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FC78.w,X)		; FC 78 FC
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $F8F0F0.l,X		; FF F0 F0 F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	sty $FE.b		; 84 FE
	inc A		; 1A
	sbc $01FF11.l,X		; FF 11 FF 01
	sbc $000009.l,X		; FF 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx $FA00.w		; EC 00 FA
	brk $C7.b		; 00 C7
	brk $3E.b		; 00 3E
	cpy #$20.b		; C0 20
	cmp $000000.l,X		; DF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bit $3800.w,X		; 3C 00 38
	brk $1F.b		; 00 1F
	bra  31.b		; 80 1F
	jsr ($6700.w,X)		; FC 00 67
	brk $FB.b		; 00 FB
	brk $CF.b		; 00 CF
	and ($36.b),Y		; 31 36
	cmp $36.b,S		; C3 36
	cmp $92.b,S		; C3 92
	ora ($EF.b,X)		; 01 EF
	bpl   0.b		; 10 00
	ora $009800.l,X		; 1F 00 98 00
	cpy $00.b		; C4 00
	xce		; FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $ED.b		; 00 ED
	brk $1D.b		; 00 1D
	sta ($7E.b,X)		; 81 7E
	bvs -128.b		; 70 80
	cmp #$E606.w		; C9 06 E6
	ora $037E.w,Y		; 19 7E 03
	inc $3507.w,X		; FE 07 35
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	brk $BE.b		; 00 BE
	brk $BD.b		; 00 BD
	brk $9B.b		; 00 9B
	brk $17.b		; 00 17
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   8.b		; 30 08
	jmp ($7808.w,X)		; 7C 08 78
	clc		; 18
	sei		; 78
	sec		; 38
	ldy #$70.b		; A0 70
	cpx #$60.b		; E0 60
	ldy #$60.b		; A0 60
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $28.b		; 00 28
	php		; 08
	trb $3C38.w		; 1C 38 3C
	jsr $0078.w		; 20 78 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $D1.b		; 00 D1
	asl $005E.w		; 0E 5E 00
	adc [$00.b],Y		; 77 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00AF00.l		; 2F 00 AF 00
	dey		; 88
	brk $00.b		; 00 00
	and $FA03.w,X		; 3D 03 FA
	ora $1EFF.w,X		; 1D FF 1E
	and ($C6.b,S),Y		; 33 C6
	dec $0000.w		; CE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $00.b,S		; C3 00
	cmp $DE00.w,X		; DD 00 DE
	brk $CE.b		; 00 CE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	bcs  47.b		; B0 2F
	bvs  31.b		; 70 1F
	rts		; 60

	and [$08.b],Y		; 37 08
	bpl  15.b		; 10 0F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	jsr $00F7.w		; 20 F7 00
	sbc [$00.b],Y		; F7 00
	sbc $004F00.l		; EF 00 4F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $F9.b		; 00 F9
	brk $00.b		; 00 00
	ora $0000FF.l,X		; 1F FF 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $67.b		; 00 67
	ora $97.b		; 05 97
	ora $07.b		; 05 07
	sbc $76.b,X		; F5 76
	sta $81.b		; 85 81
	cop $7E.b		; 02 7E
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $7C04.w		; 1C 04 7C
	tsb $FC.b		; 04 FC
	ora ($FC.b,X)		; 01 FC
	brk $FE.b		; 00 FE
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $7E.b		; 46 7E
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $C1.b		; 00 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $3F00.w,Y		; B9 00 3F
	brk $C1.b		; 00 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $FF.b		; 02 FF
	jsr ($FD02.w,X)		; FC 02 FD
	cop $FC.b		; 02 FC
	ora ($1E.b,X)		; 01 1E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $0000.w,X		; FE 00 00
	ora ($FC.b,X)		; 01 FC
	ora ($1C.b,X)		; 01 1C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	cmp ($2C.b,X)		; C1 2C
	bne  47.b		; D0 2F
	cmp $EEDF2F.l,X		; DF 2F DF EE
	ora $2F1EE1.l,X		; 1F E1 1E 2F
	ora ($EF.b,X)		; 01 EF
	tas		; 1B
	brk $C9.b		; 00 C9
	brk $D3.b		; 00 D3
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DE.b		; 00 DE
	brk $D1.b		; 00 D1
	ora ($1B.b,X)		; 01 1B
	ldy $77DB.w		; AC DB 77
	phk		; 4B
	sed		; F8
	mvp $44,$F8		; 44 F8 44
	cpx $4B.b		; E4 4B
	cmp $DCFBC0.l,X		; DF C0 FB DC
	jsr ($00D8.w,X)		; FC D8 00
	stp		; DB
	brk $DB.b		; 00 DB
	rti		; 40

	eor [$40.b]		; 47 40
	eor [$40.b]		; 47 40
	tad		; 5B
	rti		; 40

	cpx #$D0.b		; E0 D0
	jsr ($FB90.w,X)		; FC 90 FB
	cld		; D8
	and [$DC.b]		; 27 DC
	ora $DC.b,S		; 03 DC
	ora $CC.b,S		; 03 CC
	ora $8C.b,S		; 03 8C
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $07.b		; 00 07
	sta [$03.b]		; 87 03
	sta $03.b,S		; 83 03
	sta $03.b,S		; 83 03
	sta $03.b,S		; 83 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $FE.b		; 00 FE
	sbc $7CFE7C.l,X		; FF 7C FE 7C
	inc $FC78.w,X		; FE 78 FC
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	rts		; 60

	beq   0.b		; F0 00
	cpx #$FF.b		; E0 FF
	ora #$8EFE.w		; 09 FE 8E
	inc $FC8A.w,X		; FE 8A FC
	sty $F8.b		; 84 F8
	php		; 08
	sed		; F8
	php		; 08
	beq -112.b		; F0 90
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $70.b		; 00 70
	rts		; 60

	sec		; 38
	bcc -120.b		; 90 88
	bpl  -8.b		; 10 F8
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpx #$80.b		; E0 80
	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	cop $09.b		; 02 09
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	ora ($16.b,X)		; 01 16
	ora ($16.b,X)		; 01 16
	ora ($1C.b,X)		; 01 1C
	ora ($1D.b,X)		; 01 1D
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	bra  80.b		; 80 50
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$B8.b		; E0 B8
	brk $F8.b		; 00 F8
	bmi  80.b		; 30 50
	cpy #$11.b		; C0 11
	jsr $F0C9.w		; 20 C9 F0
	inc $F9.b		; E6 F9
	sbc ($F7.b,X)		; E1 F7
	tay		; A8
	dec $4000.w		; CE 00 40
	jsr $0030.w		; 20 30 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq -64.b		; F0 C0
	sed		; F8
	cpy #$FC.b		; C0 FC
	ora ($FC.b,X)		; 01 FC
	brk $00.b		; 00 00
	adc $07.b,S		; 63 07
	sbc $AF9E5F.l		; EF 5F 9E AF
	tyx		; BB
	mvp $80,$7C		; 44 7C 80
	bvs  64.b		; 70 40
	bra  32.b		; 80 20
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora [$5F.b]		; 07 5F
	brk $EF.b		; 00 EF
	brk $54.b		; 00 54
	bra  32.b		; 80 20
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $1603.w		; 0D 03 16
	ora ($2F.b,X)		; 01 2F
	brk $6A.b		; 00 6A
	ora ($57.b,X)		; 01 57
	php		; 08
	rtl		; 6B

	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $1A.b		; 00 1A
	brk $1D.b		; 00 1D
	brk $2D.b		; 00 2D
	brk $16.b		; 00 16
	sta ($9C.b,X)		; 81 9C
	and $3C.b		; 25 3C
	ora $3C.b		; 05 3C
	dec $FE.b		; C6 FE
	sta ($6C.b,S),Y		; 93 6C
	adc $6182.w,X		; 7D 82 61
	stx $6699.w		; 8E 99 66
	adc [$00.b],Y		; 77 00
	cmp ($00.b,S),Y		; D3 00
	xba		; EB
	brk $29.b		; 00 29
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	sta $00.b,S		; 83 00
	sbc $E0EF00.l,X		; FF 00 EF E0
	clc		; 18
	cpy #$10.b		; C0 10
	ldy #$30.b		; A0 30
	rti		; 40

	bvs -128.b		; 70 80
	rts		; 60

	bvs   0.b		; 70 00
	bcc   0.b		; 90 00
	bcc   0.b		; 90 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	ldy #$00.b		; A0 00
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $60.b		; 00 60
	and $08.b,X		; 35 08
	ora $1B04.w,Y		; 19 04 1B
	trb $16.b		; 14 16
	ora $316E.w,Y		; 19 6E 31
	adc $183700.l,X		; 7F 00 37 18
	and $0E0018.l,X		; 3F 18 00 0E
	brk $06.b		; 00 06
	brk $36.b		; 00 36
	brk $39.b		; 00 39
	brk $39.b		; 00 39
	brk $05.b		; 00 05
	brk $18.b		; 00 18
	brk $1D.b		; 00 1D
	lda ($4C.b,S),Y		; B3 4C
	sta ($6C.b,S),Y		; 93 6C
	stp		; DB
	bit $AA.b		; 24 AA
	cpy $FE.b		; C4 FE
	cpy #$7F.b		; C0 7F
	cpy #$FB.b		; C0 FB
	brk $EE.b		; 00 EE
	bra   0.b		; 80 00
	inc $6E00.w		; EE 00 6E
	brk $AE.b		; 00 AE
	brk $D5.b		; 00 D5
	brk $D5.b		; 00 D5
	brk $D4.b		; 00 D4
	brk $14.b		; 00 14
	brk $90.b		; 00 90
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $0A1F06.l		; 0F 06 1F 0A
	tsa		; 3B
	bpl  51.b		; 10 33
	bit $67.b		; 24 67
	ora #$01CF.w		; 09 CF 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $09.b		; 00 09
	brk $14.b		; 00 14
	brk $0E.b		; 00 0E
	brk $19.b		; 00 19
	brk $74.b		; 00 74
	brk $71.b		; 00 71
	sbc $3F7F3F.l,X		; FF 3F 7F 3F
	adc $1F3F1F.l,X		; 7F 1F 3F 1F
	and $001F0B.l,X		; 3F 0B 1F 00
	ora $FF0300.l		; 0F 00 03 FF
	stx $407F.w		; 8E 7F 40
	adc $3B3F40.l,X		; 7F 40 3F 3B
	and $141F28.l,X		; 3F 28 1F 14
	ora $03030F.l		; 0F 0F 03 03
	sty $FE.b		; 84 FE
	cpy $FE.b		; C4 FE
	inc $FEFF.w,X		; FE FF FE
	sbc $F6FFFE.l,X		; FF FE FF F6
	sbc $00FEC4.l,X		; FF C4 FE 00
	cpy $5ADE.w		; CC DE 5A
	inc $FF3A.w,X		; FE 3A FF
	ora ($FF.b,X)		; 01 FF
	sta ($FF.b,X)		; 81 FF
	adc ($FF.b),Y		; 71 FF
	and #$3AFE.w		; 29 FE 3A
	cpy $3ACC.w		; CC CC 3A
	brk $7A.b		; 00 7A
	brk $4A.b		; 00 4A
	brk $4A.b		; 00 4A
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	brk $EA.b		; 00 EA
	brk $AA.b		; 00 AA
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bit $00.b,X		; 34 00
	bit $00.b,X		; 34 00
	bit $00.b,X		; 34 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	trb $00.b		; 14 00
	mvn $00,$BA		; 54 BA 00
	cmp $10.b		; C5 10
	sta $7520.w,X		; 9D 20 75
	brk $2B.b		; 00 2B
	brk $2B.b		; 00 2B
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	mvn $3A,$00		; 54 00 3A
	brk $7A.b		; 00 7A
	brk $3A.b		; 00 3A
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	brk $3A.b		; 00 3A
	brk $7A.b		; 00 7A
	brk $4A.b		; 00 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bit $00.b,X		; 34 00
	bit $1D.b,X		; 34 1D
	brk $1A.b		; 00 1A
	brk $16.b		; 00 16
	tsb $1E.b		; 04 1E
	ora #$0609.w		; 09 09 06
	ora ($0E.b,X)		; 01 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	bpl -64.b		; 10 C0
	tay		; A8
	rti		; 40

	php		; 08
	brk $F8.b		; 00 F8
	beq  -4.b		; F0 FC
	php		; 08
	jmp ($28F0.w,X)		; 7C F0 28
	cpx $E420.w		; EC 20 E4
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	jsr $00F0.w		; 20 F0 00
	php		; 08
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	cli		; 58
	brk $FD.b		; 00 FD
	rol $FEFB.w,X		; 3E FB FE
	sbc ($FC.b),Y		; F1 FC
	inc $1A.b		; E6 1A
	and [$C5.b],Y		; 37 C5
	cmp [$26.b],Y		; D7 26
	tad		; 5B
	and $3C.b,S		; 23 3C
	tsb $1B.b		; 04 1B
	jsr ($F8F9.w,X)		; FC F9 F8
	ora $F8.b,S		; 03 F8
	ora ($18.b,X)		; 01 18
	brk $EC.b		; 00 EC
	tsb $EE.b		; 04 EE
	cop $F7.b		; 02 F7
	brk $F7.b		; 00 F7
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6B.b		; 00 6B
	ror $5A.b,X		; 76 5A
	ror $3A.b		; 66 3A
	lsr $EE.b		; 46 EE
	cop $CD.b		; 02 CD
	cop $07.b		; 02 07
	ora #$0707.w		; 09 07 07
	ora $00.b,S		; 03 00
	brk $F6.b		; 00 F6
	brk $F7.b		; 00 F7
	brk $E7.b		; 00 E7
	brk $57.b		; 00 57
	brk $16.b		; 00 16
	brk $19.b		; 00 19
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora [$07.b]		; 07 07
	clc		; 18
	ora $3F.b,S		; 03 3F
	brk $5F.b		; 00 5F
	brk $23.b		; 00 23
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	brk $00.b		; 00 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	asl $00.b		; 06 00
	brk $FC.b		; 00 FC
	sbc ($9D.b)		; F2 9D
	plx		; FA
.INDEX 8
	sep #$1C		; E2 1C
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($E0.b,S),Y		; F3 E0
	sbc ($00.b,S),Y		; F3 00
	plx		; FA
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $FD.b		; 04 FD
	sty $F1.b,X		; 94 F1
	asl $1CE3.w		; 0E E3 1C
	cmp $78.b,S		; C3 78
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	.db $82, $78, $06		; 82 78 06
	beq   4.b		; F0 04
	phx		; DA
	brk $4E.b		; 00 4E
	brk $BC.b		; 00 BC
	brk $7E.b		; 00 7E
	brk $BC.b		; 00 BC
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $0E.b		; 00 0E
	cop $FE.b		; 02 FE
	ora ($2C.b,X)		; 01 2C
	ora $7D6718.l,X		; 1F 18 67 7D
	.db $82, $00, $FE		; 82 00 FE
	brk $FE.b		; 00 FE
	cpy $FF.b		; C4 FF
	cop $FB.b		; 02 FB
	brk $00.b		; 00 00
	ora ($00.b,S),Y		; 13 00
	ror $60.b		; 66 60
	.db $82, $80, $FD		; 82 80 FD
	jsr ($FEFF.w,X)		; FC FF FE
	inc $003A.w,X		; FE 3A 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	bra  -4.b		; 80 FC
	rti		; 40

	adc $C73FAC.l,X		; 7F AC 3F C7
	ora $001ED3.l,X		; 1F D3 1E 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $9C.b		; 00 9C
	brk $C3.b		; 00 C3
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	brk $15.b		; 00 15
	cop $2A.b		; 02 2A
	tsb $23.b		; 04 23
	tsb $0C51.w		; 0C 51 0C
	eor $18.b		; 45 18
	lda $19.b,S		; A3 19
	phb		; 8B
	bmi   4.b		; 30 04
	lda ($00.b,S),Y		; B3 00
	ora $001F00.l		; 0F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $7D.b		; 00 7D
	brk $7C.b		; 00 7C
	cop $F8.b		; 02 F8
	ora [$00.b]		; 07 00
	php		; 08
	brk $15.b		; 00 15
	brk $6E.b		; 00 6E
	brk $A2.b		; 00 A2
	clc		; 18
	ldy $00.b,X		; B4 00
	iny		; C8
	jsr $4030.w		; 20 30 40
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	sta $00.b,S		; 83 00
	tsb $1100.w		; 0C 00 11
	brk $16.b		; 00 16
	brk $35.b		; 00 35
	brk $6A.b		; 00 6A
	brk $D4.b		; 00 D4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $000F00.l		; 0F 00 0F 00
	asl $1C00.w		; 0E 00 1C
	brk $38.b		; 00 38
	bvs  56.b		; 70 38
	cli		; 58
	sec		; 38
	cli		; 58
	sec		; 38
	cli		; 58
	bit $1C3C.w,X		; 3C 3C 1C
	rol $2D1C.w,X		; 3E 1C 2D
	inc A		; 1A
	and $00.b,X		; 35 00
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	clc		; 18
	bit $3E18.w,X		; 3C 18 3E
	php		; 08
	asl $1C08.w,X		; 1E 08 1C
	brk $1A.b		; 00 1A
	brk $0E.b		; 00 0E
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $0E03.w		; 0E 03 0E
	ora [$07.b]		; 07 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $3B.b		; 00 3B
	brk $4B.b		; 00 4B
	brk $8A.b		; 00 8A
	ora ($94.b,X)		; 01 94
	ora $95.b,S		; 03 95
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	and [$00.b],Y		; 37 00
	adc [$00.b],Y		; 77 00
	adc $006F00.l		; 6F 00 6F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	sec		; 38
	rts		; 60

	stz $1FEC.w,X		; 9E EC 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	clc		; 18
	cpy #$8012.w		; C0 12 80
	dec A		; 3A
	adc $3F7F3B.l,X		; 7F 3B 7F 3F
	adc $1F3F1F.l,X		; 7F 1F 3F 1F
	and $001F03.l,X		; 3F 03 1F 00
	ora $00.b,S		; 03 00
	brk $7F.b		; 00 7F
	eor $7F.b		; 45 7F
	mvp $50,$7F		; 44 7F 50
	and $213F3C.l,X		; 3F 3C 3F 21
	ora $03031C.l,X		; 1F 1C 03 03
	brk $00.b		; 00 00
	clc		; 18
	sbc $B2FF22.l,X		; FF 22 FF B2
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $08FECC.l,X		; FF CC FE 08
	jsr ($0800.w,X)		; FC 00 08
	sbc [$67.b]		; E7 67
	sbc $4DFFDD.l,X		; FF DD FF 4D
	sbc $C1FF01.l,X		; FF 01 FF C1
	inc $FC32.w,X		; FE 32 FC
	pea $0808.w		; F4 08 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	ora #$0002.w		; 09 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$F0.b]		; 07 F0
	brk $10.b		; 00 10
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	stz $00.b		; 64 00
	pla		; 68
	brk $50.b		; 00 50
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $20C11F.l		; EF 1F C1 20
	sta $3FFF3F.l,X		; 9F 3F FF 3F
	lda $CF3F7F.l,X		; BF 7F 3F CF
	adc $BB4F37.l,X		; 7F 37 4F BB
	asl $9F.b		; 06 9F
	brk $BE.b		; 00 BE
	brk $7F.b		; 00 7F
	ora $7F0F3F.l,X		; 1F 3F 0F 7F
	ora $B702CF.l		; 0F CF 02 B7
	cop $BB.b		; 02 BB
	ldx $C1.b,Y		; B6 C1
	sbc $D0AB00.l,X		; FF 00 AB D0
	ldx $F980.w,Y		; BE 80 F9
	stx $5A.b		; 86 5A
	lda [$EB.b]		; A7 EB
	ora [$79.b],Y		; 17 79
	ora ($00.b),Y		; 11 00
	cpx $1200.w		; EC 00 12
	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	brk $AE.b		; 00 AE
	brk $AF.b		; 00 AF
	ora ($97.b,X)		; 01 97
	brk $97.b		; 00 97
	ror $F8.b,X		; 76 F8
	and $0A3E.w,Y		; 39 3E 0A
	asl $0405.w		; 0E 05 04
	ora $01.b		; 05 01
	ora $050D04.l		; 0F 04 0D 05
	tsb $00.b		; 04 00
	jsr $10F8.w		; 20 F8 10
	inc $3F02.w,X		; FE 02 3F
	tsb $0F.b		; 04 0F
	brk $0B.b		; 00 0B
	brk $05.b		; 00 05
	tsb $07.b		; 04 07
	brk $01.b		; 00 01
	adc #$B40E.w		; 69 0E B4
	sta [$59.b]		; 87 59
	cmp $2A.b,S		; C3 2A
.INDEX 8
	sep #$16		; E2 16
	bvs   4.b		; 70 04
	bit $0F81.w,X		; 3C 81 0F
	rti		; 40

	sta $F4.b,S		; 83 F4
	brk $79.b		; 00 79
	brk $BE.b		; 00 BE
	brk $5D.b		; 00 5D
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra -108.b		; 80 94
	ldx #$D4.b		; A2 D4
	rti		; 40

	iny		; C8
	rti		; 40

	inx		; E8
	bcs 112.b		; B0 70
	rti		; 40

	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	rti		; 40

	bvs   0.b		; 70 00
	bmi -128.b		; 30 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $D1.b		; 00 D1
	brk $66.b		; 00 66
	bra  44.b		; 80 2C
	bra -77.b		; 80 B3
	brk $E6.b		; 00 E6
	brk $4D.b		; 00 4D
	brk $9A.b		; 00 9A
	brk $B6.b		; 00 B6
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cmp ($00.b,X)		; C1 00
	cmp $00.b,S		; C3 00
	cmp $009F00.l		; CF 00 9F 00
	ldx $7C00.w,Y		; BE 00 7C
	brk $78.b		; 00 78
	tay		; A8
	brk $50.b		; 00 50
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	ora ($27.b,X)		; 01 27
	brk $1E.b		; 00 1E
	ora ($06.b,X)		; 01 06
	tsb $0C01.w		; 0C 01 0C
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $05.b		; 00 05
	brk $1E.b		; 00 1E
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	stx $03.b		; 86 03
	ora #$0F86.w		; 09 86 0F
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$43.b		; E0 43
	rts		; 60

	sty $BB33.w		; 8C 33 BB
	and [$00.b]		; 27 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	ora $C0.b,S		; 03 C0
	ora [$9B.b]		; 07 9B
	tsb $DA.b		; 04 DA
	tsb $E7.b		; 04 E7
	php		; 08
	inc $09.b		; E6 09
	inc $08.b		; E6 08
	sbc $7A00.w		; ED 00 7A
	bra  79.b		; 80 4F
	ldy #$00.b		; A0 00
	ror $AD00.w		; 6E 00 AD
	brk $9D.b		; 00 9D
	brk $9B.b		; 00 9B
	brk $9B.b		; 00 9B
	brk $56.b		; 00 56
	brk $85.b		; 00 85
	brk $B0.b		; 00 B0
	lda $08F81F.l		; AF 1F F8 08
	sta ($68.b,S),Y		; 93 68
	cmp ($28.b,S),Y		; D3 28
	sbc #$7C10.w		; E9 10 7C
	tsb $FA.b		; 04 FA
	asl $FC.b		; 06 FC
	ora $10.b,S		; 03 10
	rti		; 40

	ora [$E0.b]		; 07 E0
	ora $E00FE0.l		; 0F E0 0F E0
	ora [$30.b]		; 07 30
	ora $D0.b,S		; 03 D0
	ora $20.b		; 05 20
	ora ($18.b,X)		; 01 18
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	cpx #$00.b		; E0 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	rti		; 40

	bcs  32.b		; B0 20
	cpx #$40.b		; E0 40
	jsr ($B458.w,X)		; FC 58 B4
	jmp ($3E5C.w)		; 6C 5C 3E
	bit $06.b,X		; 34 06
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $58.b		; 00 58
	clc		; 18
	cli		; 58
	tsb $6E.b		; 04 6E
	tsb $3F.b		; 04 3F
	brk $0F.b		; 00 0F
	ora $6A.b		; 05 6A
	bit $05.b		; 24 05
	tsa		; 3B
	ora $0213.w,X		; 1D 13 02
	asl $0F0D.w,X		; 1E 0D 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	cop $00.b		; 02 00
	ora $021D08.l,X		; 1F 08 1D 02
	asl $0D04.w		; 0E 04 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $B7F1.w		; 6E F1 B7
	ror $6FBE.w		; 6E BE 6F
	and $1EE1DC.l		; 2F DC E1 1E
	rol $CA01.w,X		; 3E 01 CA
	and [$F0.b],Y		; 37 F0
	asl $F120.w		; 0E 20 F1
	jsr $006E.w		; 20 6E 00
	adc $00DE00.l		; 6F 00 DE 00
	asl $C001.w,X		; 1E 01 C0
	tsb $F0.b		; 04 F0
	brk $01.b		; 00 01
	dec $7468.w,X		; DE 68 74
	tya		; 98
	sed		; F8
	brk $D8.b		; 00 D8
	bcs 120.b		; B0 78
	bcc -80.b		; 90 B0
	rts		; 60

	bcc  96.b		; 90 60
	rts		; 60

	brk $00.b		; 00 00
	pla		; 68
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	cop $01.b		; 02 01
	tsb $1B.b		; 04 1B
	ora ($3B.b,X)		; 01 3B
	tsb $7E.b		; 04 7E
	cop $7F.b		; 02 7F
	and $FE.b,S		; 23 FE
	bvs  -2.b		; 70 FE
	sec		; 38
	adc $190000.l,X		; 7F 00 00 19
	clc		; 18
	rol $30.b,X		; 36 30
	adc ($70.b,S),Y		; 73 70
	jmp ($FC7C.w,X)		; 7C 7C FC
	jmp.w [$8EFF]		; DC FF 8E
	adc $F80247.l,X		; 7F 47 02 F8
	bra -68.b		; 80 BC
	mvp $B8,$3E		; 44 3E B8
	.db $82, $D4, $86		; 82 D4 86
	iny		; C8
	rol $CC.b		; 26 CC
	and ($C4.b,S),Y		; 33 C4
	xce		; FB
	bvs   4.b		; 70 04
	sei		; 78
	brk $F8.b		; 00 F8
	brk $BC.b		; 00 BC
	cpy #$30.b		; C0 30
	sty $8410.w		; 8C 10 84
	and ($05.b,S),Y		; 33 05
	tsa		; 3B
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0F0F07.l		; 0F 07 0F 0F
	ora $0E1F0E.l,X		; 1F 0E 1F 0E
	ora $000000.l,X		; 1F 00 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	php		; 08
	ora $141F0F.l		; 0F 0F 1F 14
	ora $111F11.l,X		; 1F 11 1F 11
	brk $02.b		; 00 02
	cop $FF.b		; 02 FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cpx $C8FF.w		; EC FF C8
	sbc $02FF86.l,X		; FF 86 FF 02
	cop $FF.b		; 02 FF
	sbc $0CFF.w,X		; FD FF 0C
	sbc $00FF70.l,X		; FF 70 FF 00
	sbc $37FF13.l,X		; FF 13 FF 37
	sbc $0059.w,Y		; F9 59 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $0D.b		; 00 0D
	brk $0C.b		; 00 0C
	brk $1F.b		; 00 1F
	tsb $0213.w		; 0C 13 02
	and $001D.w,X		; 3D 1D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	tsb $0E02.w		; 0C 02 0E
	php		; 08
	ora $FA7885.l,X		; 1F 85 78 FA
	ora $09FA.w,X		; 1D FA 09
	lda $39DA02.l,X		; BF 02 DA 39
	adc ($F4.b,S),Y		; 73 F4
	xce		; FB
	jmp ($3A15.w,X)		; 7C 15 3A
	brk $02.b		; 00 02
	tsb $01.b		; 04 01
	tsb $E1.b		; 04 E1
	brk $C2.b		; 00 C2
	brk $3D.b		; 00 3D
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $FA.b		; 00 FA
	brk $00.b		; 00 00
	rti		; 40

	brk $E0.b		; 00 E0
	jsr $D638.w		; 20 38 D6
	jsr ($D2D7.w,X)		; FC D7 D2
	inx		; E8
	sbc $6C.b,X		; F5 6C
	ora ($EE.b)		; 12 EE
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $38.b		; 00 38
	bpl -48.b		; 10 D0
	cop $D0.b		; 02 D0
	ora $E00BE0.l		; 0F E0 0B E0
	ora $E0.b		; 05 E0
	brk $00.b		; 00 00
	asl $0D06.w		; 0E 06 0D
	ora $1F.b		; 05 1F
	ora $1F.b,S		; 03 1F
	ora $C20D.w		; 0D 0D C2
	ldx $5E2F.w		; AE 2F 5E
	and $060600.l		; 2F 00 06 06
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	phd		; 0B
	brk $0D.b		; 00 0D
	brk $22.b		; 00 22
	sty $847F.w		; 8C 7F 84
	and $3DC2C3.l		; 2F C3 C2 3D
	rol $C07F.w,X		; 3E 7F C0
	dec $F001.w		; CE 01 F0
	brk $65.b		; 00 65
	clc		; 18
	clv		; B8
	ora [$5F.b]		; 07 5F
	brk $02.b		; 00 02
	inc $FE0C.w,X		; FE 0C FE
	brk $C0.b		; 00 C0
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $BE.b		; 00 BE
	brk $DF.b		; 00 DF
	brk $E6.b		; 00 E6
	sbc $2F5000.l,X		; FF 00 50 2F
	lda $4C.b,X		; B5 4C
	rtl		; 6B

	tya		; 98
	pla		; 68
	clc		; 18
	sbc [$1F.b]		; E7 1F
	cpx #$1F.b		; E0 1F
	cpy #$3F.b		; C0 3F
	brk $C0.b		; 00 C0
	ora [$A0.b]		; 07 A0
	phd		; 0B
	rts		; 60

	ora [$C0.b]		; 07 C0
	ora [$C0.b],Y		; 17 C0
	php		; 08
	brk $07.b		; 00 07
	cpy #$20.b		; C0 20
	brk $2E.b		; 00 2E
	clc		; 18
	ora [$0C.b],Y		; 17 0C
	asl A		; 0A
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	brk $0D.b		; 00 0D
	asl $0E.b		; 06 0E
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	ora $0D00.w,X		; 1D 00 0D
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	jsr $C030.w		; 20 30 C0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$80.b		; E0 80
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	jsr $E000.w		; 20 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	bra  96.b		; 80 60
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $F8.b		; 00 F8
	bne  31.b		; D0 1F
	inc $1F00.w,X		; FE 00 1F
	brk $80.b		; 00 80
	bra   3.b		; 80 03
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $80.b		; 00 80
	brk $E8.b		; 00 E8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	ora #$0702.w		; 09 02 07
	ora $C0B080.l,X		; 1F 80 B0 C0
	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	cpx #$08.b		; E0 08
	sec		; 38
	tsb $1800.w		; 0C 00 18
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cmp $07.b,S		; C3 07
	cmp $7F5FCF.l		; CF CF 5F 7F
	sta $3E7E.w,Y		; 99 7E 3E
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $4CFF87.l		; 0F 87 FF 4C
	sbc $007E00.l,X		; FF 00 7E 00
	cpy #$1C.b		; C0 1C
	and $117F38.l,X		; 3F 38 7F 11
	adc $023F01.l,X		; 7F 01 3F 02
	and $061D00.l,X		; 3F 00 1D 06
	ora #$0300.w		; 09 00 03
	and $477F23.l,X		; 3F 23 7F 47
	ror $3E6E.w,X		; 7E 6E 3E
	rol $3839.w,X		; 3E 39 38
	tas		; 1B
	clc		; 18
	php		; 08
	php		; 08
	ora $03.b,S		; 03 03
	.db $62, $FD, $66		; 62 FD 66
	ora $13E4.w,Y		; 19 E4 13
	ror A		; 6A
	cmp $5C.b,S		; C3 5C
	eor ($A3.b,X)		; 41 A3
	stz $DE40.w,X		; 9E 40 DE
	ora ($FC.b,X)		; 01 FC
	sta $9999.w,X		; 9D 99 99
	cop $08.b		; 02 08
	.db $42, $18		; 42 18
	lsr $DE.b		; 46 DE
	rts		; 60

	jmp ($BC00.w,X)		; 7C 00 BC
	ora ($78.b,X)		; 01 78
	cop $39.b		; 02 39
	cop $19.b		; 02 19
	bit $6406.w,X		; 3C 06 64
	and $66.b,X		; 35 66
	bpl -58.b		; 10 C6
	inx		; E8
	tsb $5C30.w		; 0C 30 5C
	bvs -120.b		; 70 88
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	sec		; 38
	ora ($18.b,X)		; 01 18
	brk $7C.b		; 00 7C
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	cpy #$00.b		; C0 00
	ldy #$CE.b		; A0 CE
	cmp ($7A.b)		; D2 7A
	inc $C4.b		; E6 C4
	bmi  39.b		; 30 27
	ora $0C071B.l		; 0F 1B 07 0C
	cop $0E.b		; 02 0E
	ora ($1D.b,X)		; 01 1D
	brk $40.b		; 00 40
	xce		; FB
	brk $E7.b		; 00 E7
	brk $3B.b		; 00 3B
	ora ($1F.b,X)		; 01 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $0A.b		; 00 0A
	inx		; E8
	ora [$98.b],Y		; 17 98
	adc ($70.b),Y		; 71 70
	bra  96.b		; 80 60
	bvs 112.b		; 70 70
	sei		; 78
	sed		; F8
	sed		; F8
	xce		; FB
	plx		; FA
	xce		; FB
	plx		; FA
	ora ($10.b,X)		; 01 10
	brk $70.b		; 00 70
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	rts		; 60

	jsr ($FE70.w,X)		; FC 70 FE
	sei		; 78
	inc $FEE2.w,X		; FE E2 FE
	cmp $7E86.w,Y		; D9 86 7E
	bra  56.b		; 80 38
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00FF00.l		; 0F 00 FF 00
	adc $360000.l,X		; 7F 00 00 36
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $E4.b		; 00 E4
	rol $01.b,X		; 36 01
	rep #$01		; C2 01
	ldy $FC03.w		; AC 03 FC
	ora $5C.b,S		; 03 5C
	ora $2E.b,S		; 03 2E
	ora ($17.b,X)		; 01 17
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	sed		; F8
	ora ($3C.b,X)		; 01 3C
	ora ($50.b,X)		; 01 50
	ora ($20.b,X)		; 01 20
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	eor ($DE.b),Y		; 51 DE
	ldy $87.b,X		; B4 87
	ldy $BE81.w,X		; BC 81 BE
	bra  79.b		; 80 4F
	cpy #$13.b		; C0 13
	beq -124.b		; F0 84
	jmp ($1F01.w,X)		; 7C 01 1F
	tay		; A8
	brk $7A.b		; 00 7A
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $6F.b		; 00 6F
	brk $1B.b		; 00 1B
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $1F.b		; 00 1F
	php		; 08
	and $013D17.l,X		; 3F 17 3D 01
	rol A		; 2A
	ora $2C.b,X		; 15 2C
	ora ($13.b)		; 12 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	cop $17.b		; 02 17
	ora ($03.b,X)		; 01 03
	brk $15.b		; 00 15
	brk $13.b		; 00 13
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	rts		; 60

	bra  48.b		; 80 30
	cpy #$98.b		; C0 98
	rts		; 60

	jmp $10AE20.l		; 5C 20 AE 10
	lsr $08.b,X		; 56 08
	pld		; 2B
	tsb $00.b		; 04 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sei		; 78
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	jsr $9080.w		; 20 80 90
	rti		; 40

	pha		; 48
	jsr $18C4.w		; 20 C4 18
	and ($00.b)		; 32 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sec		; 38
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $7C.b		; 04 7C
	cop $1E.b		; 02 1E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	cpy #$E0.b		; C0 E0
	bcs -64.b		; B0 C0
	sei		; 78
	bcs 100.b		; B0 64
	tay		; A8
	ror A		; 6A
	ldy #$D6.b		; A0 D6
	pha		; 48
	sta ($4C.b),Y		; 91 4C
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	bmi -96.b		; 30 A0
	sec		; 38
	jsr $003C.w		; 20 3C 00
	jmp ($7E00.w,X)		; 7C 00 7E
	ldx $18.b		; A6 18
	sta ($0C.b),Y		; 91 0C
	phy		; 5A
	tsb $2D.b		; 04 2D
	cop $14.b		; 02 14
	ora $0A.b,S		; 03 0A
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	jmp ($7E00.w,X)		; 7C 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ldy $5610.w		; AC 10 56
	php		; 08
	and #$1404.w		; 29 04 14
	cop $16.b		; 02 16
	ora ($0D.b,X)		; 01 0D
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $05.b,X		; 36 05
	and ($05.b)		; 32 05
	lsr A		; 4A
	ora ($4F.b),Y		; 11 4F
	ora ($6F.b)		; 12 6F
	ora ($69.b),Y		; 11 69
	ora ($9A.b),Y		; 11 9A
	jsr $2288.w		; 20 88 22
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	ora ($3C.b,X)		; 01 3C
	brk $3A.b		; 00 3A
	ora ($39.b,X)		; 01 39
	ora ($37.b,X)		; 01 37
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	adc ($06.b),Y		; 71 06
	adc ($05.b)		; 72 05
	cmp $3886.w,Y		; D9 86 38
	lda $99.b,S		; A3 99
	and $D9.b,S		; 23 D9
	.db $62, $C9, $A2		; 62 C9 A2
	iny		; C8
	ldx #$F8.b		; A2 F8
	cop $F8.b		; 02 F8
	ora ($78.b,X)		; 01 78
	cop $DC.b		; 02 DC
	ora ($7C.b,X)		; 01 7C
	ora ($3C.b,X)		; 01 3C
	brk $1C.b		; 00 1C
	bra  60.b		; 80 3C
	sta ($34.b,X)		; 81 34
	cmp $19DF21.l,X		; DF 21 DF 19
	ror $08.b		; 66 08
	and ($15.b,S),Y		; 33 15
	and ($0F.b),Y		; 31 0F
	and ($13.b,X)		; 21 13
	rol $1E00.w,X		; 3E 00 1E
	cmp $C6CECB.l		; CF CB CE C6
	ror $44.b		; 66 44
	tsb $11.b		; 04 11
	asl $19.b		; 06 19
	ora $000D01.l,X		; 1F 01 0D 00
	ora $FE5C00.l		; 0F 00 5C FE
	tsb $CCFE.w		; 0C FE CC
	ror $3FC6.w,X		; 7E C6 3F
	cpy #$3F.b		; C0 3F
	bpl  63.b		; 10 3F
	pha		; 48
	ror $98.b		; 66 98
	cpx $FE.b		; E4 FE
	ldx #$FE.b		; A2 FE
	sbc ($3E.b)		; F2 3E
	and ($3F.b)		; 32 3F
	ora $1F3F.w,Y		; 19 3F 1F
	adc [$87.b]		; 67 87
	ldx $06.b,Y		; B6 06
	mvp $30,$04		; 44 04 30
	brk $30.b		; 00 30
	brk $39.b		; 00 39
	brk $26.b		; 00 26
	bpl  57.b		; 10 39
	brk $17.b		; 00 17
	brk $0A.b		; 00 0A
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora $1F00.w,Y		; 19 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	asl $00.b		; 06 00
	bmi   0.b		; 30 00
	and $2600.w,Y		; 39 00 26
	bpl  56.b		; 10 38
	brk $17.b		; 00 17
	brk $0A.b		; 00 0A
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora $1F00.w,Y		; 19 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	jsr $E000.w		; 20 00 E0
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	jsr $30C0.w		; 20 C0 30
	cpx #$30.b		; E0 30
	rti		; 40

	bpl -32.b		; 10 E0
	tya		; 98
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	tax		; AA
	adc ($EB.b),Y		; 71 EB
	sbc $6FAC.w		; ED AC 6F
	jmp $C1A09D.l		; 5C 9D A0 C1
	sed		; F8
	and $F870.w,X		; 3D 70 F8
	sta $0100.w,Y		; 99 00 01
	pea $FC00.w		; F4 00 FC
	ora #$187C.w		; 09 7C 18
	ldx $DE00.w,Y		; BE 00 DE
	bpl  62.b		; 10 3E
	jsr $00FC.w		; 20 FC 00
	stz $BF.b		; 64 BF
	eor $16FE.w,Y		; 59 FE 16
	rol $DE06.w,X		; 3E 06 DE
	rol $C61E.w		; 2E 1E C6
	adc $00DE0E.l,X		; 7F 0E DE 00
	tay		; A8
	brk $10.b		; 00 10
	eor $1F06.w,Y		; 59 06 1F
	brk $CF.b		; 00 CF
	asl $EF.b		; 06 EF
	brk $EF.b		; 00 EF
	asl $8E.b		; 06 8E
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	dey		; 88
	jsr $0050.w		; 20 50 00
	ldy #$00.b		; A0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	sec		; 38
	rol $18.b		; 26 18
	and $3F00.w,X		; 3D 00 3F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora $08.b,S		; 03 08
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $90.b		; 00 90
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($1F.b,X)		; 01 1F
	ora $7F377F.l,X		; 1F 7F 37 7F
	rol $FF.b		; 26 FF
	jsl $EF1AFF.l		; 22 FF 1A EF
	bpl 111.b		; 10 6F
	ora ($01.b,X)		; 01 01
	ora $637F1E.l,X		; 1F 1E 7F 63
	adc $D9FF48.l,X		; 7F 48 FF D9
	sbc $E5E7DD.l,X		; FF DD E7 E5
	adc [$63.b]		; 67 63
	brk $F0.b		; 00 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $6EFF.w,X		; FE FF 6E
	sbc $86FF2E.l,X		; FF 2E FF 86
	sbc $F8F0F0.l,X		; FF F0 F0 F8
	php		; 08
	jsr ($FE94.w,X)		; FC 94 FE
	adc ($FF.b)		; 72 FF
	ora ($FF.b,X)		; 01 FF
	sta ($FF.b),Y		; 91 FF
	cmp ($7F.b),Y		; D1 7F
	adc $0E00.w,Y		; 79 00 0E
	brk $11.b		; 00 11
	ora $200E21.l		; 0F 21 0E 20
	asl $6074.w,X		; 1E 74 60
	trb $7A.b		; 14 7A
	and $002EB0.l		; 2F B0 2E 00
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $2B.b		; 00 2B
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	jsr $6029.w		; 20 29 60
	bmi -104.b		; 30 98
	beq  24.b		; F0 18
	beq   8.b		; F0 08
	sed		; F8
	cpy #$F8.b		; C0 F8
	cpy #$D0.b		; C0 D0
	cpx #$B0.b		; E0 B0
	cpy #$E0.b		; C0 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $D080.w		; 20 80 D0
	cpy #$D0.b		; C0 D0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	pea $5002.w		; F4 02 50
	asl $EA.b		; 06 EA
	tsb $A9.b		; 04 A9
	tsb $61.b		; 04 61
	tsb $08D3.w		; 0C D3 08
	lsr A		; 4A
	bpl -92.b		; 10 A4
	bpl   0.b		; 10 00
	adc $00EF00.l		; 6F 00 EF 00
	cmp $00DE00.l,X		; DF 00 DE 00
	stz $3C00.w,X		; 9E 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	xba		; EB
	ldy #$AB.b		; A0 AB
	rts		; 60

	tax		; AA
	adc ($2A.b,X)		; 61 2A
	sbc ($AF.b,X)		; E1 AF
	stz $A3.b		; 64 A3
	stz $95.b		; 64 95
	bvs -98.b		; 70 9E
	sei		; 78
	trb $1C81.w		; 1C 81 1C
	ora ($5C.b,X)		; 01 5C
	ora ($5C.b,X)		; 01 5C
	ora ($58.b,X)		; 01 58
	ora ($1C.b,X)		; 01 1C
	ora ($28.b,X)		; 01 28
	cop $20.b		; 02 20
	ora ($10.b,X)		; 01 10
	ora $33037C.l		; 0F 7C 03 33
	bit #$8A36.w		; 89 36 8A
	sta $E8.b,X		; 95 E8
	sta $F02FE4.l,X		; 9F E4 2F F0
	ora $2B.b,X		; 15 2B
	ora [$00.b]		; 07 00
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	ora ($18.b,X)		; 01 18
	cop $28.b		; 02 28
	brk $31.b		; 00 31
	brk $30.b		; 00 30
	cpy #$0B.b		; C0 0B
	php		; 08
	beq  60.b		; F0 3C
	cpy #$4A.b		; C0 4A
	bcs -81.b		; B0 AF
	rti		; 40

	lsr $A086.w,X		; 5E 86 A0
	php		; 08
	cmp [$27.b],Y		; D7 27
	lda [$C8.b]		; A7 C8
	ldy #$00.b		; A0 00
	rti		; 40

	brk $80.b		; 00 80
	bit $7000.w,X		; 3C 00 70
	tsb $E7.b		; 04 E7
	brk $DF.b		; 00 DF
	ora $2F.b,S		; 03 2F
	brk $D8.b		; 00 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $000008.l		; 0F 08 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	sei		; 78
	ror $24.b		; 66 24
	stz $02.b,X		; 74 02
	tsb $0A.b		; 04 0A
	rol $BEBA.w,X		; 3E BA BE
	tsx		; BA
	inc $3A.b,X		; F6 3A
	ror $BA.b,X		; 76 BA
	plx		; FA
	rol $E8.b,X		; 36 E8
	bmi -16.b		; 30 F0
	php		; 08
	cpy #$3B.b		; C0 3B
	bra 123.b		; 80 7B
	and ($7B.b)		; 32 7B
	and ($3B.b)		; 32 3B
	cop $BB.b		; 02 BB
	brk $B7.b		; 00 B7
	inc A		; 1A
	bit $0D.b		; 24 0D
	ora ($04.b,S),Y		; 13 04
	phd		; 0B
	brk $06.b		; 00 06
	ora $1C3F00.l,X		; 1F 00 3F 1C
	adc ($22.b,X)		; 61 22
	sbc $20231C.l,X		; FF 1C 23 20
	bpl  16.b		; 10 10
	ora #$0508.w		; 09 08 05
	tsb $00.b		; 04 00
	ora ($18.b,X)		; 01 18
	trb $3E00.w		; 1C 00 3E
	clc		; 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F3B3F.l,X		; 1F 3F 3B 7F
	and ($7F.b)		; 32 7F
	adc $FD.b,S		; 63 FD
	eor $F8.b		; 45 F8
	phd		; 0B
	pea $181F.w		; F4 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $4D7F44.l,X		; 7F 44 7F 4D
	jsr ($F29C.w,X)		; FC 9C F2
	bcs -18.b		; B0 EE
	cpx #$F8.b		; E0 F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $C0FF42.l,X		; FF 42 FF C0
	and $F03648.l,X		; 3F 48 36 F0
	ldy $26FE.w,X		; BC FE 26
	inc $FFC2.w,X		; FE C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADBF.w		; 69 BF AD
	and $C63607.l,X		; 3F 07 36 C6
	tsb $8C.b		; 04 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $000008.l		; 0F 08 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	sei		; 78
	lsr $34.b		; 46 34
	stz $02.b,X		; 74 02
	tsb $0A.b		; 04 0A
	rol $BEBA.w,X		; 3E BA BE
	tsx		; BA
	inc $3A.b,X		; F6 3A
	ror $BA.b,X		; 76 BA
	plx		; FA
	rol $C8.b,X		; 36 C8
	brk $F0.b		; 00 F0
	php		; 08
	cpy #$3B.b		; C0 3B
	bra 123.b		; 80 7B
	and ($7B.b)		; 32 7B
	and ($3B.b)		; 32 3B
	cop $BB.b		; 02 BB
	brk $B7.b		; 00 B7
	inc A		; 1A
	bit $0D.b		; 24 0D
	ora ($04.b,S),Y		; 13 04
	phd		; 0B
	brk $06.b		; 00 06
	ora $1C3F00.l,X		; 1F 00 3F 1C
	adc ($22.b,X)		; 61 22
	sbc $20231C.l,X		; FF 1C 23 20
	bpl  16.b		; 10 10
	ora #$0508.w		; 09 08 05
	tsb $00.b		; 04 00
	ora ($18.b,X)		; 01 18
	trb $3E00.w		; 1C 00 3E
	clc		; 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F3B3F.l,X		; 1F 3F 3B 7F
	and ($7F.b)		; 32 7F
	adc $FD.b,S		; 63 FD
	mvp $0A,$F9		; 44 F9 0A
	sbc $1F.b,X		; F5 1F
	clc		; 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $4D7F44.l,X		; 7F 44 7F 4D
	jsr ($F39C.w,X)		; FC 9C F3
	bcs -18.b		; B0 EE
	cpx #$F8.b		; E0 F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $00FF42.l,X		; FF 42 FF 00
	sbc $30FEC0.l,X		; FF C0 FE 30
	jsr ($26FE.w,X)		; FC FE 26
	inc $FFC2.w,X		; FE C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADBF.w		; 69 BF AD
	sbc $063687.l,X		; FF 87 36 06
	tsb $04.b		; 04 04
	and [$0F.b],Y		; 37 0F
	asl $0301.w		; 0E 01 03
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora $000100.l		; 0F 00 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $FD.b		; 02 FD
	sbc $F6FEFB.l,X		; FF FB FE F6
	tsb $00DF.w		; 0C DF 00
	lsr $AB00.w,X		; 5E 00 AB
	tsb $AB.b		; 04 AB
	tsb $75.b		; 04 75
	php		; 08
	iny		; C8
	sbc $00FF30.l,X		; FF 30 FF 00
	ora $002000.l		; 0F 00 20 00
	lda $5D00.w		; AD 00 5D
	brk $5D.b		; 00 5D
	brk $DF.b		; 00 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	jmp ($FFFF.w,X)		; 7C FF FF
	sbc $FCFFFF.l,X		; FF FF FF FC
	sbc $61FF78.l,X		; FF 78 FF 61
	sbc $7E0000.l,X		; FF 00 00 7E
	ror $83FF.w,X		; 7E FF 83
	sbc $DCFF82.l,X		; FF 82 FF DC
	sbc $86FE03.l,X		; FF 03 FE 86
	inc $009A.w,X		; FE 9A 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	ora $06.b		; 05 06
	tsb $0901.w		; 0C 01 09
	tsb $0019.w		; 0C 19 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $D7.b		; 00 D7
	ora #$02FD.w		; 09 FD 02
	adc ($41.b)		; 72 41
	lda $4BCBA0.l		; AF A0 CB 4B
	rtl		; 6B

	plb		; AB
	phk		; 4B
	plb		; AB
	phy		; 5A
	txy		; 9B
	brk $38.b		; 00 38
	brk $3E.b		; 00 3E
	rti		; 40

	cmp $40F080.l		; CF 80 F0 40
	adc $883F88.l,X		; 7F 88 3F 88
	and $003F10.l,X		; 3F 10 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bpl 120.b		; 10 78
	pla		; 68
	trb $2C2C.w		; 1C 2C 2C
	bit $24.b		; 24 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	sed		; F8
	brk $FC.b		; 00 FC
	brk $1E.b		; 00 1E
	tsb $7E.b		; 04 7E
	tsb $7E.b		; 04 7E
	tsb $0E1E.w		; 0C 1E 0E
	ora $05070B.l		; 0F 0B 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	and $001F00.l,X		; 3F 00 1F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	beq 120.b		; F0 78
	sed		; F8
	ldy $DD7C.w,X		; BC 7C DD
	rol $0000.w,X		; 3E 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	rti		; 40

	sed		; F8
	bmi  -4.b		; 30 FC
	clc		; 18
	ror $7E00.w,X		; 7E 00 7E
	cli		; 58
	rts		; 60

	pha		; 48
	bvc  88.b		; 50 58
	bvc -76.b		; 50 B4
	ldy #$F4.b		; A0 F4
	rti		; 40

	adc ($00.b)		; 72 00
	cmp ($20.b,S),Y		; D3 20
	ora $40A0.w,X		; 1D A0 40
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	inx		; E8
	brk $48.b		; 00 48
	brk $AC.b		; 00 AC
	brk $BC.b		; 00 BC
	brk $F6.b		; 00 F6
	dec $38.b		; C6 38
	tda		; 7B
	tsb $1B.b		; 04 1B
	sed		; F8
	txy		; 9B
	cpx $CE.b		; E4 CE
	inx		; E8
	cpx #$F6.b		; E0 F6
	pla		; 68
	inc $FE48.w,X		; FE 48 FE
	brk $78.b		; 00 78
	brk $06.b		; 00 06
	cpy #$FC.b		; C0 FC
	cpx #$66.b		; E0 66
	beq  32.b		; F0 20
	jsr ($F410.w,X)		; FC 10 F4
	bcc -12.b		; 90 F4
	bcs   0.b		; B0 00
	cpx $FC10.w		; EC 10 FC
	bra  88.b		; 80 58
	rts		; 60

	sed		; F8
	jsr $00F0.w		; 20 F0 00
	bcs -48.b		; B0 D0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	rts		; 60

	pla		; 68
	rts		; 60

	bvs  64.b		; 70 40
	bpl   0.b		; 10 00
	rti		; 40

	brk $20.b		; 00 20
	rti		; 40

	rti		; 40

	rts		; 60

	brk $A0.b		; 00 A0
	ora $2FA0.w,X		; 1D A0 2F
	bcc  46.b		; 90 2E
	bcc  76.b		; 90 4C
	sta ($58.b)		; 92 58
	stx $DC.b		; 86 DC
	ora $2213F2.l		; 0F F2 13 22
	sbc $00.b,S		; E3 00
	inc $00.b,X		; F6 00
	plx		; FA
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	tsb $E0.b		; 04 E0
	cop $E0.b		; 02 E0
	tsb $1C00.w		; 0C 00 1C
	brk $5C.b		; 00 5C
	ldy #$4C.b		; A0 4C
	jsr $08FC.w		; 20 FC 08
	jmp.w [$BC08]		; DC 08 BC
	bne 108.b		; D0 6C
	bcc -76.b		; 90 B4
	iny		; C8
	jmp ($0080.w,X)		; 7C 80 00
	dec A		; 3A
	bra  50.b		; 80 32
	brk $2A.b		; 00 2A
	brk $28.b		; 00 28
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $C8.b		; 00 C8
	brk $80.b		; 00 80
	pei ($28.b)		; D4 28
	mvn $E8,$88		; 54 88 E8
	bvs -16.b		; 70 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq 112.b		; F0 70
	bvs   0.b		; 70 00
	plp		; 28
	brk $A8.b		; 00 A8
	brk $70.b		; 00 70
	rts		; 60

	sed		; F8
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($08.b,S),Y		; D3 08
	cmp ($09.b)		; D2 09
	ldx #$19.b		; A2 19
	tax		; AA
	ora ($7A.b),Y		; 11 7A
	sta ($5F.b,X)		; 81 5F
	cpx #$4B.b		; E0 4B
	cpy $8630.w		; CC 30 86
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	bra  31.b		; 80 1F
	ldy #$03.b		; A0 03
	ldy $00.b,X		; B4 00
	jsr ($0600.w,X)		; FC 00 06
	ora $000F04.l		; 0F 04 0F 00
	ora $030906.l		; 0F 06 09 03
	tsb $01.b		; 04 01
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $0F.b		; 00 0F
	ora #$0B0F.w		; 09 0F 0B
	asl $080E.w		; 0E 0E 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	adc $8355D3.l		; 6F D3 55 83
	ldx $994B.w,Y		; BE 4B 99
	ora #$C05E.w		; 09 5E C0
	ora #$9AC7.w		; 09 C7 9A
	tda		; 7B
	cpx #$3F.b		; E0 3F
	bne -128.b		; D0 80
	jsr $A108.w		; 20 08 A1
	php		; 08
	plx		; FA
	tsb $003F.w		; 0C 3F 00
	ror $6400.w,X		; 7E 00 64
	brk $04.b		; 00 04
	ora ($02.b,X)		; 01 02
	ora ($18.b,S),Y		; 13 18
	and ($0C.b,S),Y		; 33 0C
	and $6D083E.l		; 2F 3E 08 6D
	asl $56.b,X		; 16 56
	and #$176B.w		; 29 6B 17
	and [$0F.b],Y		; 37 0F
	ora $0E00.w		; 0D 00 0E
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	php		; 08
	brk $16.b		; 00 16
	brk $29.b		; 00 29
	brk $17.b		; 00 17
	ora $0F.b,S		; 03 0F
	and $77B8B0.l,X		; 3F B0 B8 77
	eor $04E33B.l,X		; 5F 3B E3 04
	lda $5FEF5F.l		; AF 5F EF 5F
	adc $E7CB98.l		; 6F 98 CB E7
	bpl 112.b		; 10 70
	bpl 119.b		; 10 77
	brk $3B.b		; 00 3B
	brk $1C.b		; 00 1C
	ora $5F.b,S		; 03 5F
	ora [$5F.b]		; 07 5F
	brk $98.b		; 00 98
	.db $82, $F7, $0F		; 82 F7 0F
	brk $05.b		; 00 05
	cop $0A.b		; 02 0A
	tsb $0A.b		; 04 0A
	tsb $05.b		; 04 05
	brk $0A.b		; 00 0A
	brk $17.b		; 00 17
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $0B00.w		; 0D 00 0B
	stp		; DB
	and ($FB.b,S),Y		; 33 FB
	ora $AD.b,S		; 03 AD
	ora $2E.b		; 05 2E
	.db $82, $7B, $01		; 82 7B 01
	lda $AF10.w		; AD 10 AF
	bpl -44.b		; 10 D4
	jsl $013F01.l		; 22 01 3F 01
	ora [$04.b]		; 07 04
	eor [$82.b],Y		; 57 82
	stp		; DB
	brk $B5.b		; 00 B5
	brk $76.b		; 00 76
	brk $76.b		; 00 76
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $00003F.l,X		; 1F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$FC.b		; C0 FC
	sed		; F8
	jsr ($FFFC.w,X)		; FC FC FF
	dec $00FF.w		; CE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$FC.b		; E0 FC
	bit $24FC.w,X		; 3C FC 24
	sbc $31FFC3.l,X		; FF C3 FF 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	tas		; 1B
	cop $1D.b		; 02 1D
	and $521A.w		; 2D 1A 52
	rol $568A.w		; 2E 8A 56
	inc A		; 1A
	ldx $3A.b		; A6 3A
	eor #$0075.w		; 49 75 00
	brk $00.b		; 00 00
	asl $05.b		; 06 05
	ora $720722.l		; 0F 22 07 72
	ora $E8.b,S		; 03 E8
	ora $D0.b,S		; 03 D0
	ora $A1.b,S		; 03 A1
	ora [$2B.b]		; 07 2B
	ora $AF0F1C.l,X		; 1F 1C 0F AF
	asl $F7.b,X		; 16 F7
	txa		; 8A
	sta $BCBB82.l,X		; 9F 82 BB BC
	lda $B9.b,X		; B5 B9
	tsx		; BA
	lda $C014.w,X		; BD 14 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $98.b		; 00 98
	brk $E0.b		; 00 E0
	bra  -4.b		; 80 FC
	bra  -1.b		; 80 FF
	bra  -3.b		; 80 FD
	rti		; 40

	rts		; 60

	brk $C0.b		; 00 C0
	cpx #$00.b		; E0 00
	beq  32.b		; F0 20
	sec		; 38
	bvc 104.b		; 50 68
	dec $FA.b,X		; D6 FA
	eor $F6.b,S		; 43 F6
	bvc -128.b		; 50 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	jsr $D000.w		; 20 00 D0
	brk $D0.b		; 00 D0
	tsb $0F40.w		; 0C 40 0F
	rti		; 40

	brk $00.b		; 00 00
	phd		; 0B
	asl $3B.b		; 06 3B
	rol $06.b,X		; 36 06
	jmp $DC5A.w		; 4C 5A DC
	pea $78F8.w		; F4 F8 78
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	rol $02.b,X		; 36 02
	ror $00.b,X		; 76 00
	jsr ($FC00.w,X)		; FC 00 FC
	bvs  -8.b		; 70 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	stz $80.b,X		; 74 80
	ldy $B440.w,X		; BC 40 B4
	rti		; 40

	clv		; B8
	rti		; 40

	bvs   8.b		; 70 08
	beq  28.b		; F0 1C
	pha		; 48
	cpy $8C88.w		; CC 88 8C
	brk $D8.b		; 00 D8
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	php		; 08
	brk $B0.b		; 00 B0
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	cpy #$90.b		; C0 90
	bra  80.b		; 80 50
	rts		; 60

	beq -128.b		; F0 80
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	pha		; 48
	bra 120.b		; 80 78
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	jsr $A000.w		; 20 00 A0
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sta [$F8.b]		; 87 F8
	inc $3B35.w,X		; FE 35 3B
	asl A		; 0A
	eor ($EA.b),Y		; 51 EA
	ora $001FE0.l,X		; 1F E0 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$05.b		; C0 05
	cpx #$0E.b		; E0 0E
	ldy #$0E.b		; A0 0E
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F701.w		; 0E 01 F7
	ora $FBFFFC.l		; 0F FC FF FB
	jsr ($F0CC.w,X)		; FC CC F0
	bmi -64.b		; 30 C0
	cpy #$00.b		; C0 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	sei		; 78
	sbc $00FCE0.l,X		; FF E0 FC 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $4C.b		; 00 4C
	jsl $882648.l		; 22 48 26 88
	ror $A8.b		; 66 A8
	lsr $69.b		; 46 69
	asl $EF.b		; 06 EF
	brk $3F.b		; 00 3F
	jsr $1BC0.w		; 20 C0 1B
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	and [$7F.b],Y		; 37 7F
	rol $FF.b,X		; 36 FF
	ror $FD.b		; 66 FD
	eor $F8.b		; 45 F8
	phd		; 0B
	pea $1069.w		; F4 69 10
	and $4C.b,X		; 35 4C
	bvc  44.b		; 50 2C
	adc $C9FF48.l,X		; 7F 48 FF C9
	sbc $F298.w,X		; FD 98 F2
	bcs -22.b		; B0 EA
	cpx #$0F.b		; E0 0F
	brk $43.b		; 00 43
	rti		; 40

	and [$20.b]		; 27 20
	stx $FF.b		; 86 FF
	trb $FE.b		; 14 FE
	beq  62.b		; F0 3E
	bvc  62.b		; 50 3E
	inx		; E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$08.b		; E0 08
	bcc 120.b		; 90 78
	sbc $AAEE69.l		; EF 69 EE AA
	asl $0606.w		; 0E 06 06
	stx $14.b		; 86 14
	sty $A0.b		; 84 A0
	cpy #$F0.b		; C0 F0
	brk $E0.b		; 00 E0
	brk $06.b		; 00 06
	asl A		; 0A
	ora $0B1604.l		; 0F 04 16 0B
	tsa		; 3B
	tsb $3D.b		; 04 3D
	ora $1B.b,S		; 03 1B
	ora [$0D.b]		; 07 0D
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	phd		; 0B
	brk $14.b		; 00 14
	brk $0B.b		; 00 0B
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	sta [$E3.b]		; 87 E3
	ora $C3.b		; 05 C3
	sta $8C5301.l,X		; 9F 01 53 8C
	tyx		; BB
	cpy $E5.b		; C4 E5
	sbc ($FF.b,S),Y		; F3 FF
	sbc $41FF3E.l,X		; FF 3E FF 41
	ora $80.b,S		; 03 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sta $C400.w		; 8D 00 C4
	cmp ($FB.b,X)		; C1 FB
	sbc ($FF.b)		; F2 FF
	tsb $A7FF.w		; 0C FF A7
	clv		; B8
	sbc $8502.w,X		; FD 02 85
	sei		; 78
	sbc $BE36.w,X		; FD 36 BE
	asl $BFBE.w		; 0E BE BF
	eor $DEDE.w,X		; 5D DE DE
	stz $F880.w		; 9C 80 F8
	brk $02.b		; 00 02
	brk $7A.b		; 00 7A
	brk $B6.b		; 00 B6
	tsb $3C4F.w		; 0C 4F 3C
	sbc $18FE18.l,X		; FF 18 FE 18
	jsr ($DC2C.w,X)		; FC 2C DC
.INDEX 8
	sep #$1E		; E2 1E
	jsr $C0DF.w		; 20 DF C0
	sta ($80.b,X)		; 81 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	cpy #$0D.b		; C0 0D
	brk $01.b		; 00 01
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	and ($1C.b,S),Y		; 33 1C
	and ($1C.b),Y		; 31 1C
	and ($0C.b),Y		; 31 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0D.b,X)		; 21 0D
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $82.b		; 00 82
	eor $78.b,S		; 43 78
	cmp $74.b,S		; C3 74
	cmp [$34.b]		; C7 34
	stx $30.b		; 86 30
	stx $78.b		; 86 78
	stx $8CE8.w		; 8E E8 8C
	cpx #$8C.b		; E0 8C
	jmp ($3E00.w,X)		; 7C 00 3E
	brk $3A.b		; 00 3A
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $F4.b		; 00 F4
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	adc $6CFF7F.l,X		; 7F 7F FF 6C
	sbc $00FF64.l,X		; FF 64 FF 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	tsb $1E1F.w		; 0C 1F 1E
	adc $80FF64.l,X		; 7F 64 FF 80
	sbc $9AFF93.l,X		; FF 93 FF 9A
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FEF8.w,X)		; FC F8 FE
	jmp ($3CFE.w,X)		; 7C FE 3C
	inc $0000.w,X		; FE 00 00
	cpx #$E0.b		; E0 E0
	sed		; F8
	clc		; 18
	sed		; F8
	php		; 08
	jsr ($FE7C.w,X)		; FC 7C FE
	asl $FE.b,X		; 16 FE
	.db $82, $FE, $42		; 82 FE 42
	ora $3B08.w,X		; 1D 08 3B
	bpl  59.b		; 10 3B
	bpl  26.b		; 10 1A
	ora ($2F.b,X)		; 01 2F
	ora ($02.b,X)		; 01 02
	ora #$0C1B.w		; 09 1B 0C
	rol $000A.w,X		; 3E 0A 00
	asl A		; 0A
	bpl  22.b		; 10 16
	brk $16.b		; 00 16
	ora ($24.b,X)		; 01 24
	brk $10.b		; 00 10
	ora ($1C.b,X)		; 01 1C
	brk $0C.b		; 00 0C
	brk $0B.b		; 00 0B
	ora ($E0.b),Y		; 11 E0
	beq   0.b		; F0 00
	lda $5782.w		; AD 82 57
	ora #$45BD.w		; 09 BD 45
	sbc $750D.w		; ED 0D 75
	sbc $B7.b,X		; F5 B7
	stz $20.b,X		; 74 20
	asl $EF00.w		; 0E 00 EF
	rti		; 40

	asl $3981.w,X		; 1E 81 39
	ora ($67.b,X)		; 01 67
	ora $1F.b		; 05 1F
	tsb $FF.b		; 04 FF
	tsb $FE.b		; 04 FE
	rti		; 40

	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $33.b		; 02 33
	adc ($2F.b,S),Y		; 73 2F
	jmp ($909F.w)		; 6C 9F 90
	ldx $EBA1.w,Y		; BE A1 EB
	rti		; 40

	wai		; CB
	tsb $55.b		; 04 55
	cop $54.b		; 02 54
	ora $22.b,S		; 03 22
	sbc $10FC08.l,X		; FF 08 FC 10
	sbc ($20.b)		; F2 20
	xba		; EB
	rti		; 40

	eor $3D00.w,X		; 5D 00 3D
	brk $BE.b		; 00 BE
	brk $BF.b		; 00 BF
	cld		; D8
	jsr $10A4.w		; 20 A4 10
	jmp $2210.w		; 4C 10 22
	php		; 08
	asl $1100.w,X		; 1E 00 11
	tsb $0D.b		; 04 0D
	cop $0A.b		; 02 0A
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	php		; 08
	brk $30.b		; 00 30
	sec		; 38
	cli		; 58
	jmp $585C44.l		; 5C 44 5C 58
	sei		; 78
	sei		; 78
	bvs  96.b		; 70 60
	rts		; 60

	brk $60.b		; 00 60
	brk $38.b		; 00 38
	bmi 124.b		; 30 7C
	brk $FE.b		; 00 FE
	rti		; 40

	inc $FC50.w,X		; FE 50 FC
	jsr $00F0.w		; 20 F0 00
	beq   0.b		; F0 00
	beq  13.b		; F0 0D
	brk $1D.b		; 00 1D
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $32.b		; 00 32
	php		; 08
	bit $08.b,X		; 34 08
	stz $10.b		; 64 10
	sei		; 78
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	inc $FA00.w,X		; FE 00 FA
	jmp ($4081.w,X)		; 7C 81 40
	lsr $2A00.w,X		; 5E 00 2A
	tsb $29.b		; 04 29
	asl $15.b		; 06 15
	cop $08.b		; 02 08
	ora $00.b,S		; 03 00
	brk $70.b		; 00 70
	jmp ($7E00.w,X)		; 7C 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora $1D00.w,X		; 1D 00 1D
	brk $1D.b		; 00 1D
	brk $2A.b		; 00 2A
	brk $2A.b		; 00 2A
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $34.b		; 00 34
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	asl $131F.w,X		; 1E 1F 13
	tas		; 1B
	asl $16.b,X		; 16 16
	asl A		; 0A
	tsb $001C.w		; 0C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1D.b,X)		; 01 1D
	asl $123F.w		; 0E 3F 12
	and $003F14.l,X		; 3F 14 3F 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	ldy #$C0.b		; A0 C0
	cpx #$80.b		; E0 80
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $E8.b		; 00 E8
	brk $A8.b		; 00 A8
	rti		; 40

	tya		; 98
	rts		; 60

	mvn $8C,$20		; 54 20 8C
	bmi -86.b		; 30 AA
	bpl  86.b		; 10 56
	php		; 08
	and $08.b		; 25 08
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	asl $1A33.w,X		; 1E 33 1A
	and ($12.b,S),Y		; 33 12
	and ($1A.b,S),Y		; 33 1A
	tsa		; 3B
	trb $047F.w		; 1C 7F 04
	ror $CE30.w,X		; 7E 30 CE
	sed		; F8
	bit $0C.b,X		; 34 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $22.b		; 00 22
	brk $38.b		; 00 38
	brk $4C.b		; 00 4C
	brk $30.b		; 00 30
	bmi -32.b		; 30 E0
	sty $88E0.w		; 8C E0 88
	beq -104.b		; F0 98
	bcc -104.b		; 90 98
	bvs  -4.b		; 70 FC
	clc		; 18
	inc $7F00.w,X		; FE 00 7F
	and $007840.l,X		; 3F 40 78 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $88.b		; 00 88
	brk $64.b		; 00 64
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	inc $F21C.w,X		; FE 1C F2
	trb $E9.b		; 14 E9
	ora $0F78.w		; 0D 78 0F
	bpl  12.b		; 10 0C
	tas		; 1B
	tsb $0D.b		; 04 0D
	ora $FF03.w		; 0D 03 FF
	ldx $E3.b,Y		; B6 E3
.ACCU 8
	sep #$E3		; E2 E3
	inx		; E8
	tda		; 7B
	pla		; 68
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	sty $FF.b,X		; 94 FF
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	jsr $949B.w		; 20 9B 94
	lda $281EC0.l,X		; BF C0 1E 28
	ldy $50.b,X		; B4 50
	inx		; E8
	stx $7FF0.w		; 8E F0 7F
	rtl		; 6B

	ora $C3171D.l,X		; 1F 1D 17 C3
	sta $E3.b,S		; 83 E3
	inc $06.b,X		; F6 06
	cpy $04.b		; C4 04
	tay		; A8
	php		; 08
	bpl  16.b		; 10 10
	and $3B0A.w,X		; 3D 0A 3B
	tsb $221D.w		; 0C 1D 22
	and #$3736.w		; 29 36 37
	ply		; 7A
	rtl		; 6B

	bvs -48.b		; 70 D0
	cpx #$C0A0.w		; E0 A0 C0
	brk $0A.b		; 00 0A
	brk $6C.b		; 00 6C
	brk $72.b		; 00 72
	brk $76.b		; 00 76
	brk $FA.b		; 00 FA
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	adc [$F6.b],Y		; 77 F6
	sta [$73.b],Y		; 97 73
	ply		; 7A
	ora $42.b		; 05 42
	bit $DBFB.w,X		; 3C FB DB
	adc [$E7.b]		; 67 E7
	adc $7C7C7F.l,X		; 7F 7F 7C 7C
	brk $FF.b		; 00 FF
	cop $7B.b		; 02 7B
	brk $85.b		; 00 85
	brk $BD.b		; 00 BD
	brk $DF.b		; 00 DF
	eor ($FF.b,X)		; 41 FF
	and $FF38FF.l,X		; 3F FF 38 FF
	ora #$0D00.w		; 09 00 0D
	brk $1E.b		; 00 1E
	brk $1B.b		; 00 1B
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	ora $0100.w		; 0D 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($09.b)		; D2 09
	cmp ($09.b)		; D2 09
	lda ($09.b)		; B2 09
	and $88.b,X		; 35 88
	and $F984.w,Y		; 39 84 F9
	tsb $3F.b		; 04 3F
	cpy #$EF91.w		; C0 91 EF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ror $00.b		; 66 00
	adc ($32.b,S),Y		; 73 32
	eor #$7D02.w		; 49 02 7D
	brk $6A.b		; 00 6A
	bpl -86.b		; 10 AA
	bpl -86.b		; 10 AA
	bpl -44.b		; 10 D4
	jsr $20D4.w		; 20 D4 20
	bpl  62.b		; 10 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	bvc   0.b		; 50 00
	tay		; A8
	brk $F8.b		; 00 F8
	brk $44.b		; 00 44
	bpl  50.b		; 10 32
	php		; 08
	rol $08.b		; 26 08
	ora ($00.b)		; 12 00
	asl $0000.w		; 0E 00 00
	cpx #$7000.w		; E0 00 70
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	rep #$07		; C2 07
	lda $47.b,S		; A3 47
	lda $93.b,S		; A3 93
	eor ($3B.b,S),Y		; 53 3B
	sta ($43.b,X)		; 81 43
	jsr ($A341.w,X)		; FC 41 A3
	rts		; 60

	ora [$FE.b]		; 07 FE
	cop $0F.b		; 02 0F
	cop $4F.b		; 02 4F
	ora ($C7.b,X)		; 01 C7
	and ($87.b,X)		; 21 87
	adc $3807.w,Y		; 79 07 38
	ora $5C.b,S		; 03 5C
	brk $18.b		; 00 18
	bra -32.b		; 80 E0
	ora $408040.l,X		; 1F 40 80 40
	brk $38.b		; 00 38
	bra -80.b		; 80 B0
	bcc -112.b		; 90 90
	bcs  16.b		; B0 10
	bcs -56.b		; B0 C8
	sec		; 38
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	inx		; E8
	clc		; 18
	jsr ($B200.w,X)		; FC 00 B2
	tsb $06FD.w		; 0C FD 06
	phy		; 5A
	sty $AC.b		; 84 AC
	rti		; 40

	ldy $40.b,X		; B4 40
	eor ($20.b)		; 52 20
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	brk $6E.b		; 00 6E
	brk $B4.b		; 00 B4
	brk $D8.b		; 00 D8
	brk $E8.b		; 00 E8
	brk $EC.b		; 00 EC
	lsr A		; 4A
	bmi  44.b		; 30 2C
	bcc  52.b		; 90 34
	dey		; 88
	sec		; 38
	cpy #$C030.w		; C0 30 C0
	cpy #$0030.w		; C0 30 00
	beq -64.b		; F0 C0
	beq   0.b		; F0 00
	pea $F800.w		; F4 00 F8
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rts		; 60

	brk $20.b		; 00 20
	brk $1F.b		; 00 1F
	php		; 08
	and $3D12.w		; 2D 12 3D
	cop $35.b		; 02 35
	cop $26.b		; 02 26
	ora ($5E.b,X)		; 01 5E
	ora ($5B.b,X)		; 01 5B
	brk $5B.b		; 00 5B
	brk $00.b		; 00 00
	and #$1600.w		; 29 00 16
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	brk $1B.b		; 00 1B
	brk $2B.b		; 00 2B
	brk $2D.b		; 00 2D
	brk $2D.b		; 00 2D
	tad		; 5B
	ora [$2A.b]		; 07 2A
	sta $27.b,S		; 83 27
	rti		; 40

	txs		; 9A
	rts		; 60

	sta $2620.w		; 8D 20 26
	bcc  66.b		; 90 42
	tya		; 98
	and $C8.b		; 25 C8
	brk $A7.b		; 00 A7
	brk $D7.b		; 00 D7
	brk $DA.b		; 00 DA
	brk $6C.b		; 00 6C
	brk $F6.b		; 00 F6
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $02.b		; 05 02
	ora $82.b		; 05 82
	cpy $C3.b		; C4 C3
	sbc [$F1.b]		; E7 F1
	adc $FA.b,X		; 75 FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $C2.b		; 00 C2
	cpy #$60F3.w		; C0 F3 60
	sbc $FA30.w,Y		; F9 30 FA
	ldx $41.b,Y		; B6 41
	xba		; EB
	asl $FA.b		; 06 FA
	phd		; 0B
	sbc $4F65.w,X		; FD 65 4F
.INDEX 8
	sep #$96		; E2 96
	eor $2B.b		; 45 2B
	sty $1C53.w		; 8C 53 1C
	brk $19.b		; 00 19
	brk $36.b		; 00 36
	cop $0F.b		; 02 0F
	tsb $67.b		; 04 67
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	ora ($74.b,X)		; 01 74
	ora ($E8.b,X)		; 01 E8
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	and $7FFF1F.l,X		; 3F 1F FF 7F
	sbc $C2FFDF.l,X		; FF DF FF C2
	sbc $0CFF40.l,X		; FF 40 FF 0C
	sbc ($03.b,S),Y		; F3 03
	ora $3F.b,S		; 03 3F
	bit $E8FF.w,X		; 3C FF E8
	sbc $20FF87.l,X		; FF 87 FF 20
	sbc $B7FF3D.l,X		; FF 3D FF B7
	cmp $C1.b,S		; C3 C1
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	beq  -4.b		; F0 FC
	clv		; B8
	inc $FF9C.w,X		; FE 9C FF
	asl $C0FF.w		; 0E FF C0
	cpy #$20E0.w		; C0 E0 20
	beq  48.b		; F0 30
	sed		; F8
	pla		; 68
	jsr ($FE0C.w,X)		; FC 0C FE
	lsr $FF.b		; 46 FF
	adc $FF.b,S		; 63 FF
	sbc ($04.b),Y		; F1 04
	ora $051F04.l		; 0F 04 1F 05
	ora $0C1F0D.l,X		; 1F 0D 1F 0C
	rol $3E0C.w,X		; 3E 0C 3E
	tsb $183E.w		; 0C 3E 18
	rol $0002.w,X		; 3E 02 00
	ora #$0800.w		; 09 00 08
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $05.b		; 00 05
	brk $68.b		; 00 68
	asl $0CE8.w		; 0E E8 0C
	beq  28.b		; F0 1C
	bne  28.b		; D0 1C
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpy #$A010.w		; C0 10 A0
	bmi -12.b		; 30 F4
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $A7.b		; 00 A7
	bra -18.b		; 80 EE
	.db $82, $FA, $86		; 82 FA 86
	lda ($CE.b)		; B2 CE
	adc ($0E.b)		; 72 0E
	plx		; FA
	dec $FF.b		; C6 FF
	brk $F8.b		; 00 F8
	ora [$00.b]		; 07 00
	cpy #$8780.w		; C0 80 87
	bra -49.b		; 80 CF
	brk $CF.b		; 00 CF
	brk $8F.b		; 00 8F
	bra -17.b		; 80 EF
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3C1C.w		; 1C 1C 3C
	bit $2C0C.w,X		; 3C 0C 2C
	jmp $0E3C2C.l		; 5C 2C 3C 0E
	ora ($0F.b)		; 12 0F
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $3E.b		; 04 3E
	trb $0C7E.w		; 1C 7E 0C
	ror $2E08.w,X		; 7E 08 2E
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -128.b		; 80 80
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
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
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
	brk $C8.b		; 00 C8
	jsr $10A8.w		; 20 A8 10
	pha		; 48
	bpl  52.b		; 10 34
	brk $2C.b		; 00 2C
	brk $1C.b		; 00 1C
	brk $14.b		; 00 14
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	inc A		; 1A
	brk $1A.b		; 00 1A
	brk $2A.b		; 00 2A
	brk $2A.b		; 00 2A
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	ora [$00.b],Y		; 17 00
	pld		; 2B
	brk $2B.b		; 00 2B
	brk $74.b		; 00 74
	brk $88.b		; 00 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
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
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $8D00.w,X		; 5D 00 8D
	brk $8E.b		; 00 8E
	brk $FE.b		; 00 FE
	brk $07.b		; 00 07
	sei		; 78
	ora [$7C.b]		; 07 7C
	and $F026F8.l		; 2F F8 26 F0
	brk $2E.b		; 00 2E
	brk $76.b		; 00 76
	brk $77.b		; 00 77
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	pld		; 2B
	brk $47.b		; 00 47
	brk $4F.b		; 00 4F
	brk $12.b		; 00 12
	cpx $748B.w		; EC 8B 74
	stz $7060.w,X		; 9E 60 70
	php		; 08
	cpx #$4010.w		; E0 10 40
	bvs  64.b		; 70 40
	bvs -128.b		; 70 80
	cpx #$EF00.w		; E0 00 EF
	brk $F6.b		; 00 F6
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$A000.w		; A0 00 A0
	brk $40.b		; 00 40
	brk $8F.b		; 00 8F
	adc $6B.b,X		; 75 6B
	trb $3F.b		; 14 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$00.b],Y		; 77 00
	and $00.b,X		; 35 00
	ora $00.b,X		; 15 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A7.b		; 00 A7
	and $77C7.w,Y		; 39 C7 77
	sta $5F8F7F.l		; 8F 7F 8F 5F
	asl $0C1F.w		; 0E 1F 0C
	tsb $0B03.w		; 0C 03 0B
	ora [$04.b],Y		; 17 04
	bvc   7.b		; 50 07
	and $0F.b,S		; 23 0F
	eor [$1F.b]		; 47 1F
	ora [$3F.b]		; 07 3F
	tsb $3F.b		; 04 3F
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	brk $0C.b		; 00 0C
	asl A		; 0A
	adc $1A.b,X		; 75 1A
	sei		; 78
	phd		; 0B
	bit $1E.b		; 24 1E
	bmi   0.b		; 30 00
	clc		; 18
	cop $1B.b		; 02 1B
	brk $0F.b		; 00 0F
	ora ($00.b,X)		; 01 00
	eor ($44.b),Y		; 51 44
	eor #$394C.w		; 49 4C 39
	asl $0F.b		; 06 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $2C9EA0.l,X		; FF A0 9E 2C
	adc ($18.b)		; 72 18
	stz $90.b		; 64 90
	cpx $E01C.w		; EC 1C E0
	lda ($80.b)		; B2 80
	and $9F9F00.l		; 2F 00 9F 9F
	ror $C20E.w		; 6E 0E C2
	cop $C4.b		; 02 C4
	tsb $4C.b		; 04 4C
	tsb $00C0.w		; 0C C0 00
	brk $4C.b		; 00 4C
	brk $DE.b		; 00 DE
	clc		; 18
	ror $7F19.w,X		; 7E 19 7F
	brk $7F.b		; 00 7F
	cpx #$F01D.w		; E0 1D F0
	adc $1498.w		; 6D 98 14
	cpx $08.b		; E4 08
	pei ($20.b)		; D4 20
	and $00.b		; 25 00
	bit $00.b		; 24 00
	and $0800.w,X		; 3D 00 08
	brk $20.b		; 00 20
	rts		; 60

	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	ldy #$2030.w		; A0 30 20
	bmi -32.b		; 30 E0
	beq  48.b		; F0 30
	sed		; F8
	brk $FC.b		; 00 FC
	sed		; F8
	asl $FF.b		; 06 FF
	sei		; 78
	lsr $07.b		; 46 07
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $78.b		; 00 78
	brk $04.b		; 00 04
	brk $30.b		; 00 30
	sei		; 78
	brk $3F.b		; 00 3F
	ror A		; 6A
	bpl 106.b		; 10 6A
	bpl 106.b		; 10 6A
	bpl 106.b		; 10 6A
	bpl 106.b		; 10 6A
	bpl 106.b		; 10 6A
	bpl  92.b		; 10 5C
	brk $54.b		; 00 54
	brk $00.b		; 00 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	bpl -64.b		; 10 C0
	bcs  64.b		; B0 40
	php		; 08
	rts		; 60

	cli		; 58
	jsr $10A4.w		; 20 A4 10
	jmp $2210.w		; 4C 10 22
	php		; 08
	rol $0000.w		; 2E 00 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	cli		; 58
	trb $1E2E.w		; 1C 2E 1E
	ora [$0F.b],Y		; 17 0F
	phd		; 0B
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rol $1F06.w,X		; 3E 06 1F
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$5000.w		; E0 00 50
	bra -88.b		; 80 A8
	rti		; 40

	pei ($20.b)		; D4 20
	jmp ($A080.w,X)		; 7C 80 A0
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	inc A		; 1A
	trb $00A2.w		; 1C A2 00
	adc $18.b		; 65 18
	eor ($0C.b,S),Y		; 53 0C
	plp		; 28
	asl $15.b		; 06 15
	cop $08.b		; 02 08
	ora $0A.b,S		; 03 0A
	ora ($00.b,X)		; 01 00
	jsr ($7C00.w,X)		; FC 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	dey		; 88
	jsr $1064.w		; 20 64 10
	phy		; 5A
	brk $25.b		; 00 25
	php		; 08
	ora $1504.w,Y		; 19 04 15
	cop $09.b		; 02 09
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	ora [$3F.b],Y		; 17 3F
	and $7F2F7F.l		; 2F 7F 2F 7F
	and $00007F.l,X		; 3F 7F 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $2E3F1C.l,X		; 1F 1C 3F 2E
	adc $507F51.l,X		; 7F 51 7F 50
	adc $000040.l,X		; 7F 40 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $00FF.w,X		; FE FF 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$10F0.w		; E0 F0 10
	sed		; F8
	clc		; 18
	jsr ($FEBC.w,X)		; FC BC FE
	cop $FF.b		; 02 FF
	ora ($02.b,X)		; 01 02
	sec		; 38
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	ora [$7F.b]		; 07 7F
	bpl 127.b		; 10 7F
	bne  63.b		; D0 3F
	lda $5C.b,S		; A3 5C
	lda ($2D.b,S),Y		; B3 2D
	ora $002F00.l		; 0F 00 2F 00
	and $003000.l		; 2F 00 30 00
	and [$00.b]		; 27 00
	and #$1800.w		; 29 00 18
	rti		; 40

	brk $61.b		; 00 61
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$00E0.w		; C0 E0 00
	beq -32.b		; F0 E0
	clc		; 18
	jsr ($00E0.w,X)		; FC E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	brk $C0.b		; 00 C0
	cpx #$0005.w		; E0 05 00
	asl $00.b		; 06 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	brk $0E.b		; 00 0E
	brk $0B.b		; 00 0B
	tsb $00.b		; 04 00
	ora [$01.b]		; 07 01
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $E3.b		; 00 E3
	trb $0BF4.w		; 1C F4 0B
	sed		; F8
	ora [$34.b]		; 07 34
	ora $8417F4.l		; 0F F4 17 84
	sta [$68.b]		; 87 68
	asl $0EE8.w		; 0E E8 0E
	brk $BC.b		; 00 BC
	brk $B8.b		; 00 B8
	asl $D0.b		; 06 D0
	asl A		; 0A
	cpy #$000A.w		; C0 0A 00
	ply		; 7A
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $1B.b		; 00 1B
	cmp [$0D.b]		; C7 0D
	sta $0C.b,S		; 83 0C
	ora $05.b,S		; 03 05
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $81.b		; 00 81
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cpx #$9EFC.w		; E0 FC 9E
	jsr ($FF7E.w,X)		; FC 7E FF
	dec $D5DF.w		; CE DF D5
	eor $DB.b,X		; 55 DB
	sty $59.b,X		; 94 59
	sta ($1C.b,S),Y		; 93 1C
	cpy #$00FF.w		; C0 FF 00
	sbc $4CFF18.l,X		; FF 18 FF 4C
	dec $F544.w		; CE 44 F5
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	and $E1F0.w,X		; 3D F0 E1
	ora $EE53F0.l,X		; 1F F0 53 EE
	ora $80.b,S		; 03 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sed		; F8
	bpl -14.b		; 10 F2
	brk $01.b		; 00 01
	asl $1C40.w		; 0E 40 1C
	bra   3.b		; 80 03
	brk $06.b		; 00 06
	brk $0B.b		; 00 0B
	tsb $0B.b		; 04 0B
	asl A		; 0A
	and $1705.w,X		; 3D 05 17
	dec A		; 3A
	tsa		; 3B
	jmp ($CE69.w)		; 6C 69 CE
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	cop $1F.b		; 02 1F
	tsb $07.b		; 04 07
	asl A		; 0A
	ora $14.b,S		; 03 14
	brk $30.b		; 00 30
	brk $C7.b		; 00 C7
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $80.b		; 00 80
	and $F10FD0.l,X		; 3F D0 0F F1
	tsb $BE.b		; 04 BE
	adc ($BF.b),Y		; 71 BF
	adc $003F00.l,X		; 7F 00 3F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $00BF00.l,X		; 7F 00 BF 00
	lsr $7100.w		; 4E 00 71
	ora $1FECFF.l,X		; 1F FF EC 1F
	sed		; F8
	asl $DE.b		; 06 DE
	jsr $C03E.w		; 20 3E C0
	cpx #$0000.w		; E0 00 00
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$12E0.w		; C0 E0 12
	cpy #$E000.w		; C0 00 E0
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
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
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	brk $74.b		; 00 74
	brk $AC.b		; 00 AC
	brk $AC.b		; 00 AC
	brk $CC.b		; 00 CC
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	jmp ($5410.w)		; 6C 10 54
	jsr $2054.w		; 20 54 20
	mvn $54,$20		; 54 20 54
	jsr $0074.w		; 20 74 00
	pla		; 68
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	ora [$7F.b],Y		; 17 7F
	ora [$7F.b]		; 07 7F
	ora $3F.b,S		; 03 3F
	ora ($0B.b,X)		; 01 0B
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	adc $787F68.l,X		; 7F 68 7F 78
	and $02073C.l,X		; 3F 3C 07 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	inc $FF.b		; E6 FF
	beq  -1.b		; F0 FF
	adc ($FE.b,X)		; 61 FE
	ora $F00FF0.l		; 0F F0 0F F0
	tsb $3FF2.w		; 0C F2 3F
	cpy #$C031.w		; C0 31 C0
	sbc $0FFF19.l,X		; FF 19 FF 0F
	inc $F09E.w,X		; FE 9E F0
	beq -16.b		; F0 F0
	sbc ($F0.b),Y		; F1 F0
	sbc ($40.b,S),Y		; F3 40
	rti		; 40

	bra  15.b		; 80 0F
	sta $E410.w,X		; 9D 10 E4
	php		; 08
	pea $D400.w		; F4 00 D4
	jsr $20D4.w		; 20 D4 20
	pei ($20.b)		; D4 20
	pei ($20.b)		; D4 20
	pei ($20.b)		; D4 20
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	inc A		; 1A
	trb $00A2.w		; 1C A2 00
	adc $18.b		; 65 18
	eor ($0C.b,S),Y		; 53 0C
	plp		; 28
	asl $15.b		; 06 15
	cop $08.b		; 02 08
	ora $0A.b,S		; 03 0A
	ora ($00.b,X)		; 01 00
	jsr ($7C00.w,X)		; FC 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	ora $0E.b,S		; 03 0E
	ora ($1C.b,X)		; 01 1C
	ora [$1C.b]		; 07 1C
	ora $38.b,S		; 03 38
	asl $38.b		; 06 38
	asl $0638.w		; 0E 38 06
	bvs   3.b		; 70 03
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $07.b		; 00 07
	brk $2F.b		; 00 2F
	brk $D0.b		; 00 D0
	trb $1CD0.w		; 1C D0 1C
	ldy #$4038.w		; A0 38 40
	bvs  64.b		; 70 40
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	inx		; E8
	brk $E8.b		; 00 E8
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $AB.b,S		; 03 AB
	jmp $886F.w		; 4C 6F 88
	tyx		; BB
	mvp $5F,$A2		; 44 A2 5F
	lda $20CF4F.l,X		; BF 4F CF 20
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	cpx #$0018.w		; E0 18 00
	jmp $009800.l		; 5C 00 98 00
	mvp $DF,$00		; 44 00 DF
	brk $EF.b		; 00 EF
	brk $70.b		; 00 70
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	iny		; C8
	jsr $10A8.w		; 20 A8 10
	pha		; 48
	bpl  52.b		; 10 34
	brk $2C.b		; 00 2C
	brk $1C.b		; 00 1C
	brk $14.b		; 00 14
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	dey		; 88
	jsr $1064.w		; 20 64 10
	phy		; 5A
	brk $25.b		; 00 25
	php		; 08
	ora $1504.w,Y		; 19 04 15
	cop $09.b		; 02 09
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	and $4219.w		; 2D 19 42
	ora ($54.b,S),Y		; 13 54
	and $FE8678.l		; 2F 78 86 FE
	bra  -4.b		; 80 FC
	cpy #$C090.w		; C0 90 C0
	cpy #$0600.w		; C0 00 06
	brk $0D.b		; 00 0D
	jsr $A00A.w		; 20 0A A0
	brk $90.b		; 00 90
	brk $A8.b		; 00 A8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	dey		; 88
	rts		; 60

	cli		; 58
	jsr $3084.w		; 20 84 30
	ldy $5210.w		; AC 10 52
	php		; 08
	rol $08.b		; 26 08
	ora ($04.b),Y		; 11 04
	ora [$00.b],Y		; 17 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	ora $07.b,S		; 03 07
	ora $2F233F.l,X		; 1F 3F 23 2F
	and $402040.l,X		; 3F 40 20 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $007F0E.l,X		; 3F 0E 7F 00
	adc $00C000.l,X		; 7F 00 C0 00
	cpy #$4000.w		; C0 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -72.b		; 80 B8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bvc  48.b		; 50 30
	bcc 112.b		; 90 70
	bmi -16.b		; 30 F0
	sed		; F8
	brk $A0.b		; 00 A0
	brk $98.b		; 00 98
	brk $24.b		; 00 24
	cpy #$00FE.w		; C0 FE 00
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $D8.b		; 00 D8
	brk $00.b		; 00 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
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
	brk $1F.b		; 00 1F
	and $3F3F1F.l,X		; 3F 1F 3F 3F
	adc $047F16.l,X		; 7F 16 7F 04
	tsa		; 3B
	ora $0C.b,S		; 03 0C
	ora ($00.b,X)		; 01 00
	ora $203F00.l		; 0F 00 3F 20
	and $407F20.l,X		; 3F 20 7F 40
	adc $3B3B69.l,X		; 7F 69 3B 3B
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	sbc $72FFF0.l,X		; FF F0 FF 72
	jsr ($FC62.w,X)		; FC 62 FC
	asl A		; 0A
	pea $18E4.w		; F4 E4 18
	inc $0100.w,X		; FE 00 01
	brk $FF.b		; 00 FF
	ora $FF.b		; 05 FF
	ora $FC8CFC.l		; 0F FC 8C FC
	tya		; 98
	pea $18F0.w		; F4 F0 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	sta $FFFE8F.l		; 8F 8F FE FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($8F.b,X)		; 01 8F
	stx $FF.b		; 86 FF
	iny		; C8
	sbc $9A8F0B.l,X		; FF 0B 8F 9A
	bit $C7.b,X		; 34 C7
	phd		; 0B
	sbc [$D1.b]		; E7 D1
	cmp $E2.b,X		; D5 E2
	inc $BEF7.w		; EE F7 BE
	cmp [$EE.b]		; C7 EE
	ora [$00.b]		; 07 00
	adc ($00.b,S),Y		; 73 00
	adc ($01.b),Y		; 71 01
	tsa		; 3B
	ora ($D9.b,X)		; 01 D9
	cpy #$80EA.w		; C0 EA 80
	sbc [$00.b],Y		; F7 00
	cmp [$00.b]		; C7 00
	ora [$2F.b],Y		; 17 2F
	brk $2B.b		; 00 2B
	brk $14.b		; 00 14
	ora ($0D.b,X)		; 01 0D
	brk $03.b		; 00 03
	tsb $01.b		; 04 01
	ora [$00.b]		; 07 00
	asl $03.b		; 06 03
	asl $00.b		; 06 00
	ora $1D00.w,X		; 1D 00 1D
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	.db $62, $8C, $52		; 62 8C 52
	sty $8C52.w		; 8C 52 8C
	sbc ($0C.b)		; F2 0C
	sbc ($0C.b)		; F2 0C
	ora $1ED020.l,X		; 1F 20 D0 1E
	cpy #$001C.w		; C0 1C 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00DF00.l,X		; FF 00 DF 00
	ora $E400E0.l,X		; 1F E0 00 E4
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	bit $3F17.w,X		; 3C 17 3F
	asl $7F.b,X		; 16 7F
	rol $7F.b,X		; 36 7F
	and ($7F.b)		; 32 7F
	sbc ($3F.b,S),Y		; F3 3F
	sbc ($5F.b),Y		; F1 5F
	lda ($2C.b,S),Y		; B3 2C
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl A		; 0A
	rti		; 40

	php		; 08
	rts		; 60

	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$F8F0.w		; C0 F0 F8
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $0F.b,S		; 03 0F
	ora $F6FEFD.l		; 0F FD FE F6
	sed		; F8
	inx		; E8
	beq -80.b		; F0 B0
	cpy #$00C0.w		; C0 C0 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	asl $FF.b		; 06 FF
	sec		; 38
	inc $F8E0.w,X		; FE E0 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A800.w		; C0 00 A8
	cmp [$B6.b]		; C7 B6
	lda $BFA0B7.l		; AF B7 A0 BF
	and $F82F50.l		; 2F 50 2F F8
	ora [$C0.b]		; 07 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne -119.b		; D0 89
	cpx #$E02F.w		; E0 2F E0
	brk $60.b		; 00 60
	ora $8000A0.l		; 0F A0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb INIDSP.w		; 1C 00 21
	cmp $F7.b,X		; D5 F7
	ora $E3.b,X		; 15 E3
	cmp $3E.b,X		; D5 3E
	cmp ($1F.b,X)		; C1 1F
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	cmp ($1D.b,X)		; C1 1D
	brk $1D.b		; 00 1D
	cpy #$0015.w		; C0 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F07.l		; 0F 07 1F 1F
	and $3F3F1F.l,X		; 3F 1F 3F 3F
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3F1A1F.l		; 0F 1F 1A 3F
	and [$3F.b]		; 27 3F
	jsr $407F.w		; 20 7F 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $FEFF.w,X		; FE FF FE
	sbc $000000.l,X		; FF 00 00 00
	brk $F0.b		; 00 F0
	beq  -8.b		; F0 F8
	php		; 08
	jsr ($FE24.w,X)		; FC 24 FE
	cmp ($FF.b)		; D2 FF
	sta ($FF.b,X)		; 81 FF
	ora ($2A.b,X)		; 01 2A
	bpl  34.b		; 10 22
	bpl  66.b		; 10 42
	bpl  84.b		; 10 54
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	brk $58.b		; 00 58
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	ora #$0F00.w		; 09 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	brk $30.b		; 00 30
	brk $36.b		; 00 36
	jsr $501F.w		; 20 1F 50
	xce		; FB
	tsb $15.b		; 04 15
	phx		; DA
	rts		; 60

	cmp $31CD1A.l		; CF 1A CD 31
	ror $00.b		; 66 00
	ora $106F00.l		; 0F 00 6F 10
	sbc [$00.b],Y		; F7 00
	ora [$60.b]		; 07 60
	ora $38.b,S		; 03 38
	ora $70.b,S		; 03 70
	ora ($1C.b,X)		; 01 1C
	brk $3D.b		; 00 3D
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	beq  95.b		; F0 5F
	bra  -2.b		; 80 FE
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	sbc [$F8.b],Y		; F7 F8
	jmp.w [$E1E0]		; DC E0 E1
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $09.b		; 00 09
	brk $12.b		; 00 12
	brk $15.b		; 00 15
	brk $60.b		; 00 60
	jsr ($E000.w,X)		; FC 00 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	brk $0B.b		; 00 0B
	cli		; 58
	ora [$9F.b]		; 07 9F
	brk $33.b		; 00 33
	trb $0E59.w		; 1C 59 0E
	lda $003D04.l,X		; BF 04 3D 00
	cpx $6A11.w		; EC 11 6A
	ora ($00.b),Y		; 11 00
	and $006000.l		; 2F 00 60 00
	cmp $00AF00.l,X		; DF 00 AF 00
	jmp $D300.w		; 4C 00 D3
	brk $BB.b		; 00 BB
	brk $BF.b		; 00 BF
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	ora $1C.b		; 05 1C
	ora $1C.b		; 05 1C
	tsb $1C.b		; 04 1C
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ldy #$A038.w		; A0 38 A0
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bmi  64.b		; 30 40
	bvs  64.b		; 70 40
	rts		; 60

	brk $60.b		; 00 60
	bra -32.b		; 80 E0
	bne   0.b		; D0 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $CF.b		; 00 CF
	ora ($E5.b),Y		; 11 E5
	php		; 08
	pea $F400.w		; F4 00 F4
	brk $B4.b		; 00 B4
	rti		; 40

	ldy $40.b,X		; B4 40
	ldy $40.b,X		; B4 40
	ldy $40.b		; A4 40
	brk $71.b		; 00 71
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	pea $02F8.w		; F4 F8 02
	brk $A5.b		; 00 A5
	clc		; 18
	eor ($0C.b)		; 52 0C
	pld		; 2B
	tsb $15.b		; 04 15
	cop $0A.b		; 02 0A
	ora ($06.b,X)		; 01 06
	ora ($E0.b,X)		; 01 E0
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	tay		; A8
	brk $A8.b		; 00 A8
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $10.b		; 00 10
	rti		; 40

	bcc  64.b		; 90 40
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  56.b		; 10 38
	bit $3E3E.w,X		; 3C 3E 3E
	bit $7C7E.w,X		; 3C 7E 7C
	sbc ($FC.b)		; F2 FC
	dec $60E0.w,X		; DE E0 60
	bra   0.b		; 80 00
	sec		; 38
	brk $7F.b		; 00 7F
	bit $387F.w,X		; 3C 7F 38
	adc $FC38.w,X		; 7D 38 FC
	rts		; 60

	jsr ($E080.w,X)		; FC 80 E0
	brk $80.b		; 00 80
	inx		; E8
	beq   8.b		; F0 08
	brk $F0.b		; 00 F0
	beq -32.b		; F0 E0
	beq  -4.b		; F0 FC
	cpy #$2C9E.w		; C0 9E 2C
	inc $FA1C.w		; EE 1C FA
	jmp $00F000.l		; 5C 00 F0 00
	beq -32.b		; F0 E0
	sed		; F8
	cpy #$80F8.w		; C0 F8 80
	cpy #$6C00.w		; C0 00 6C
	brk $1C.b		; 00 1C
	brk $5C.b		; 00 5C
	rol $FE58.w,X		; 3E 58 FE
	brk $DB.b		; 00 DB
	asl $E3.b		; 06 E3
	asl $0E5D.w,X		; 1E 5D 0E
	lsr $DC04.w,X		; 5E 04 DC
	brk $D8.b		; 00 D8
	brk $00.b		; 00 00
	jmp.w [$0000]		; DC 00 00
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $AE.b		; 00 AE
	brk $B4.b		; 00 B4
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $02.b		; 04 02
	ora $0E01.w		; 0D 01 0E
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bra -80.b		; 80 B0
	rti		; 40

	plp		; 28
	rti		; 40

	tya		; 98
	jsr $1044.w		; 20 44 10
	and ($08.b)		; 32 08
	and [$08.b]		; 27 08
	tas		; 1B
	tsb $00.b		; 04 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	sty $60.b,X		; 94 60
	jmp $10AA20.l		; 5C 20 AA 10
	lsr $08.b,X		; 56 08
	and $08.b,X		; 35 08
	pld		; 2B
	tsb $15.b		; 04 15
	cop $09.b		; 02 09
	cop $00.b		; 02 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	jmp $2410.w		; 4C 10 24
	clc		; 18
	rol $08.b		; 26 08
	asl $08.b,X		; 16 08
	asl $00.b,X		; 16 00
	ora ($00.b)		; 12 00
	trb $00.b		; 14 00
	trb $0000.w		; 1C 00 00
	sec		; 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	adc $003F01.l		; 6F 01 3F 00
	ora $01.b,S		; 03 01
	cop $07.b		; 02 07
	brk $0E.b		; 00 0E
	tsb $0B.b		; 04 0B
	tsb $06.b		; 04 06
	ora ($37.b,X)		; 01 37
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora $864D.w		; 0D 4D 86
	txy		; 9B
	tsb $1BB3.w		; 0C B3 1B
	lda $24DE14.l		; AF 14 DE 24
	cmp $13.b		; C5 13
	cld		; D8
	eor $80DFDC.l,X		; 5F DC DF 80
	rol $08.b,X		; 36 08
	jmp ($5F02.w)		; 6C 02 5F
	tsb $D6.b		; 04 D6
	ora ($A4.b,X)		; 01 A4
	cop $38.b		; 02 38
	ora ($FC.b,X)		; 01 FC
	clc		; 18
	inc $8E08.w,X		; FE 08 8E
	pla		; 68
	sbc $FD10.w		; ED 10 FD
	cpx #$F01D.w		; E0 1D F0
	adc $1498.w		; 6D 98 14
	ldy $B208.w		; AC 08 B2
	tsb $74.b		; 04 74
	brk $10.b		; 00 10
	brk $68.b		; 00 68
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	rts		; 60

	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	sei		; 78
	dec $8C28.w		; CE 28 8C
	jsr $108C.w		; 20 8C 10
	stz $FC70.w		; 9C 70 FC
	brk $FE.b		; 00 FE
	jmp ($7F82.w,X)		; 7C 82 7F
	bit $0034.w,X		; 3C 34 00
	beq   0.b		; F0 00
	sed		; F8
	brk $E8.b		; 00 E8
	brk $88.b		; 00 88
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	bit $0007.w,X		; 3C 07 00
	asl $00.b		; 06 00
	php		; 08
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	asl $03.b		; 06 03
	ora [$00.b]		; 07 00
	tsb $0C04.w		; 0C 04 0C
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	stz $18.b		; 64 18
	cpy $E830.w		; CC 30 E8
	ora ($E0.b),Y		; 11 E0
	ora $9C.b,S		; 03 9C
	adc ($81.b,X)		; 61 81
	inc $F0C4.w,X		; FE C4 F0
	lsr $0070.w		; 4E 70 00
	lda $007F00.l,X		; BF 00 7F 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $6E.b,S		; 03 6E
	brk $2F.b		; 00 2F
	brk $9F.b		; 00 9F
	brk $74.b		; 00 74
	brk $74.b		; 00 74
	brk $64.b		; 00 64
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $A8.b		; 00 A8
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	iny		; C8
	jsr $2058.w		; 20 58 20
	stz $10.b		; 64 10
	jmp $3210.w		; 4C 10 32
	php		; 08
	dec A		; 3A
	brk $15.b		; 00 15
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	sta $FF.b		; 85 FF
	sta ($FF.b,X)		; 81 FF
	clc		; 18
	sbc [$1C.b]		; E7 1C
	sbc $39.b,S		; E3 39
	adc $481E.w		; 6D 1E 48
	bit $0160.w,X		; 3C 60 01
	and ($FF.b),Y		; 31 FF
	ply		; 7A
	sbc $83876E.l,X		; FF 6E 87 83
	lda $89.b,S		; A3 89
	cop $08.b		; 02 08
	adc $001F18.l		; 6F 18 1F 00
	asl $7800.w,X		; 1E 00 78
	tsb $94.b		; 04 94
	pla		; 68
	lsr A		; 4A
	pea $F0AE.w		; F4 AE F0
	txa		; 8A
	bmi  76.b		; 30 4C
	bpl -88.b		; 10 A8
	bra  76.b		; 80 4C
	bne   0.b		; D0 00
	asl $00.b		; 06 00
	asl A		; 0A
	jsr $1004.w		; 20 04 10
	tsb $D0.b		; 04 D0
	tsb $E0.b		; 04 E0
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $36.b		; 00 36
	iny		; C8
	ror A		; 6A
	sty $3E.b,X		; 94 3E
	php		; 08
	inc $FCF0.w,X		; FE F0 FC
	beq  -8.b		; F0 F8
	cpx #$C030.w		; E0 30 C0
	bne  48.b		; D0 30
	rti		; 40

	php		; 08
	brk $B4.b		; 00 B4
	brk $C8.b		; 00 C8
	rts		; 60

	pea $F0E0.w		; F4 E0 F0
	bra -16.b		; 80 F0
	brk $C8.b		; 00 C8
	brk $38.b		; 00 38
	cop $02.b		; 02 02
	ora $02.b		; 05 02
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	sbc [$F8.b],Y		; F7 F8
	rtl		; 6B

	inc $FF.b,X		; F6 FF
	brk $6F.b		; 00 6F
	bmi -38.b		; 30 DA
	bit $B4.b		; 24 B4
	ora #$116C.w		; 09 6C 11
	iny		; C8
	and ($60.b),Y		; 31 60
	sed		; F8
	brk $F6.b		; 00 F6
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	brk $2F.b		; 00 2F
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	bvc -80.b		; 50 B0
	cpx $10.b		; E4 10
	sei		; 78
	brk $60.b		; 00 60
	clc		; 18
	inx		; E8
	clc		; 18
	sed		; F8
	php		; 08
	cld		; D8
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	clv		; B8
	brk $18.b		; 00 18
	brk $A4.b		; 00 A4
	brk $BC.b		; 00 BC
	brk $9C.b		; 00 9C
	brk $8C.b		; 00 8C
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	sty $AA30.w		; 8C 30 AA
	bpl  66.b		; 10 42
	clc		; 18
	rol $08.b,X		; 36 08
	rol A		; 2A
	tsb $19.b		; 04 19
	tsb $13.b		; 04 13
	tsb $0D.b		; 04 0D
	cop $00.b		; 02 00
	sei		; 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	ora $1B00.w,X		; 1D 00 1B
	brk $2B.b		; 00 2B
	brk $3B.b		; 00 3B
	brk $CC.b		; 00 CC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	asl $0D01.w		; 0E 01 0D
	brk $16.b		; 00 16
	php		; 08
	asl $0501.w		; 0E 01 05
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $0500.w		; 0D 00 05
	brk $02.b		; 00 02
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	dec $DEDF.w,X		; DE DF DE
	jmp.w [$43DF]		; DC DF 43
	jsr ($DB1C.w,X)		; FC 1C DB
	stp		; DB
	sbc [$A7.b]		; E7 A7
	ora $FEF91F.l,X		; 1F 1F F9 FE
	trb $00FF.w		; 1C FF 00
	sbc $04FF00.l,X		; FF 00 FF 04
	ora $03FF08.l,X		; 1F 08 FF 03
	lda $F0FF00.l,X		; BF 00 FF F0
	sbc $6A106A.l,X		; FF 6A 10 6A
	bpl  74.b		; 10 4A
	bpl  74.b		; 10 4A
	bpl  74.b		; 10 4A
	bpl  74.b		; 10 4A
	bpl  42.b		; 10 2A
	bpl  58.b		; 10 3A
	brk $00.b		; 00 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	adc $22.b,S		; 63 22
	jmp $0C3201.l		; 5C 01 32 0C
	and ($0E.b,X)		; 21 0E
	ora $1506.w,Y		; 19 06 15
	cop $08.b		; 02 08
	ora $0A.b,S		; 03 0A
	ora ($00.b,X)		; 01 00
	rol $3F00.w,X		; 3E 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $18.b		; 00 18
	ora #$0119.w		; 09 19 01
	and ($12.b),Y		; 31 12
	and ($02.b,S),Y		; 33 02
	adc $24.b,S		; 63 24
	adc [$04.b]		; 67 04
	cmp [$48.b]		; C7 48
	dec $000F.w		; CE 0F 00
	asl $00.b		; 06 00
	asl $0D00.w,X		; 1E 00 0D
	brk $3D.b		; 00 3D
	brk $1A.b		; 00 1A
	brk $7A.b		; 00 7A
	brk $34.b		; 00 34
	brk $9E.b		; 00 9E
	beq -115.b		; F0 8D
	sbc ($1D.b,X)		; E1 1D
	sbc ($1A.b,X)		; E1 1A
	sbc $3A.b,S		; E3 3A
	sbc $1C.b,S		; E3 1C
	eor [$34.b]		; 47 34
	cmp [$70.b]		; C7 70
	dec $4F.b		; C6 4F
	brk $5E.b		; 00 5E
	brk $9E.b		; 00 9E
	brk $3D.b		; 00 3D
	brk $1D.b		; 00 1D
	brk $3A.b		; 00 3A
	brk $7A.b		; 00 7A
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $3F7F0F.l		; 0F 0F 7F 3F
	adc $61FF6F.l,X		; 7F 6F FF 61
	sbc $06FF20.l,X		; FF 20 FF 06
	adc $0101.w,Y		; 79 01 01
	ora $747F0E.l		; 0F 0E 7F 74
	adc $90FF43.l,X		; 7F 43 FF 90
	sbc $DBFF9E.l,X		; FF 9E FF DB
	adc ($60.b,X)		; 61 60
	brk $E0.b		; 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	jmp $FF4EFF.l		; 5C FF 4E FF
	ora [$FF.b]		; 07 FF
	cpx #$F0E0.w		; E0 E0 F0
	bpl  -8.b		; 10 F8
	clc		; 18
	jsr ($FEB4.w,X)		; FC B4 FE
	cop $FF.b		; 02 FF
	lda $FF.b,S		; A3 FF
	lda ($FF.b),Y		; B1 FF
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3C1C.w		; 1C 1C 3C
	bit $2C6C.w,X		; 3C 6C 2C
	jmp ($3C0C.w,X)		; 7C 0C 3C
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	php		; 08
	rol $7E38.w,X		; 3E 38 7E
	php		; 08
	rol $1E04.w,X		; 3E 04 1E
	sty $9E.b		; 84 9E
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	adc ($FC.b),Y		; 71 FC
	and $1CFC.w,Y		; 39 FC 1C
	inc $FE00.w,X		; FE 00 FE
	rti		; 40

	bit $E458.w,X		; 3C 58 E4
	sec		; 38
	cpy #$D02F.w		; C0 2F D0
	jsr ($FC8C.w,X)		; FC 8C FC
	cpy $FE.b		; C4 FE
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	rol $1CDC.w,X		; 3E DC 1C
	sty $04.b		; 84 04
	bra   0.b		; 80 00
	bcc  16.b		; 90 10
	bcs -80.b		; B0 B0
	beq  48.b		; F0 30
	beq  48.b		; F0 30
	cli		; 58
	sec		; 38
	sec		; 38
	clc		; 18
	bit $3C1C.w,X		; 3C 1C 3C
	trb $1C28.w		; 1C 28 1C
	jsr $10F8.w		; 20 F8 10
	sei		; 78
	bpl 120.b		; 10 78
	bpl  60.b		; 10 3C
	clc		; 18
	trb $1E08.w		; 1C 08 1E
	php		; 08
	asl $1E00.w,X		; 1E 00 1E
	mvn $54,$80		; 54 80 54
	bra  84.b		; 80 54
	bra -92.b		; 80 A4
	brk $B8.b		; 00 B8
	brk $C0.b		; 00 C0
	bmi -64.b		; 30 C0
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	inx		; E8
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $D8.b		; 00 D8
	brk $C0.b		; 00 C0
	jsr $2000.w		; 20 00 20
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $347905.l,X		; 7F 05 79 34
	lsr $2618.w		; 4E 18 26
	ora #$37.b		; 09 37
	inc $9F1B.w		; EE 1B 9F
	adc $6F.b		; 65 6F
	nop		; EA
	adc $7679.w,Y		; 79 79 76
	bvs  67.b		; 70 43
	rti		; 40

	and $20.b,S		; 23 20
	rol $30.b,X		; 36 30
	ora ($18.b,X)		; 01 18
	tsb $04.b		; 04 04
	ora ($02.b)		; 12 02
	bvs -114.b		; 70 8E
	sec		; 38
	jmp ($24F0.w)		; 6C F0 24
	sei		; 78
	tsb $1800.w		; 0C 00 18
	rti		; 40

	cld		; D8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	txa		; 8A
	jsl $EC2080.l		; 22 80 20 EC
	bmi -16.b		; 30 F0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	sta $7FFC05.l		; 8F 05 FC 7F
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  11.b		; 80 0B
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($06F4.w,X)		; FC F4 06
	inc $1C03.w,X		; FE 03 1C
	ora ($77.b,X)		; 01 77
	bvs  31.b		; 70 1F
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $88.b		; 00 88
	brk $84.b		; 00 84
	asl $FF.b		; 06 FF
	inc $FFFE.w,X		; FE FE FF
	inc $E0FF.w,X		; FE FF E0
	bvs -49.b		; 70 CF
	jmp $30BD.w		; 4C BD 30
	plx		; FA
	rti		; 40

	nop		; EA
	ora ($7C.b,X)		; 01 7C
	inc $FF7C.w,X		; FE 7C FF
	jmp ($40FF.w,X)		; 7C FF 40
	adc $207C08.l,X		; 7F 08 7C 20
	adc ($00.b)		; 72 00
	eor [$00.b]		; 47 00
	ora [$B3.b],Y		; 17 B3
	cpy #$E7.b		; C0 E7
	eor $CF.b,S		; 43 CF
	ora $FC.b		; 05 FC
	ora $83.b,S		; 03 83
	ora ($62.b,X)		; 01 62
	trb $0082.w		; 1C 82 00
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	brk $E0.b		; 00 E0
	ora ($43.b,X)		; 01 43
	ora $85.b		; 05 85
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	ora ($FC.b,X)		; 01 FC
	ora ($7C.b,X)		; 01 7C
	ora ($FC.b,X)		; 01 FC
	ora [$00.b]		; 07 00
	sei		; 78
	ora ($41.b,X)		; 01 41
	ora [$2E.b]		; 07 2E
	brk $1B.b		; 00 1B
	cop $34.b		; 02 34
	ora $021D.w		; 0D 1D 02
	phd		; 0B
	trb $0000.w		; 1C 00 00
	brk $06.b		; 00 06
	brk $38.b		; 00 38
	ora ($10.b,X)		; 01 10
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	brk $22.b		; 00 22
	brk $3D.b		; 00 3D
	ora $3D3E.w,X		; 1D 3E 3D
	rol $3C3A.w,X		; 3E 3A 3C
	rol $7778.w,X		; 3E 78 77
	ply		; 7A
	tda		; 7B
	adc ($6A.b)		; 72 6A
	adc ($76.b,S),Y		; 73 76
	xba		; EB
	php		; 08
	ror $7E18.w,X		; 7E 18 7E
	bpl 125.b		; 10 7D
	bpl  -7.b		; 10 F9
	jsr $20FA.w		; 20 FA 20
	sbc [$60.b],Y		; F7 60
	sbc [$40.b],Y		; F7 40
	xba		; EB
	sbc [$EA.b],Y		; F7 EA
	cmp $F1FEE2.l,X		; DF E2 FE F1
	sta $F39DF1.l,X		; 9F F1 9D F3
	sbc $001F02.l,X		; FF 02 1F 00
	ora $0000.w,Y		; 19 00 00
	xba		; EB
	bra -30.b		; 80 E2
	beq -15.b		; F0 F1
	brk $F3.b		; 00 F3
	brk $F3.b		; 00 F3
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora $02.b,X		; 15 02
	ora $1B06.w,Y		; 19 06 1B
	tsb $22.b		; 04 22
	tsb $0826.w		; 0C 26 08
	and $08.b,X		; 35 08
	and $4A10.w		; 2D 10 4A
	bpl   0.b		; 10 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	ora $001E00.l,X		; 1F 00 1E 00
	asl $3C00.w,X		; 1E 00 3C
	cpy #$4000.w		; C0 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $6A.b		; 00 6A
	bpl  84.b		; 10 54
	jsr $2054.w		; 20 54 20
	pha		; 48
	jsr $2088.w		; 20 88 20
	inx		; E8
	brk $90.b		; 00 90
	rti		; 40

	bcc  64.b		; 90 40
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	adc $C310.w		; 6D 10 C3
	trb $01CE.w		; 1C CE 01
	sbc [$0F.b],Y		; F7 0F
	php		; 08
	sec		; 38
	phd		; 0B
	sec		; 38
	phd		; 0B
	sec		; 38
	phd		; 0B
	sec		; 38
	brk $BF.b		; 00 BF
	brk $3E.b		; 00 3E
	ora ($30.b,X)		; 01 30
	php		; 08
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	cpy #$C021.w		; C0 21 C0
	ora $C0.b,S		; 03 C0
	stx $C1.b		; 86 C1
	stx $C1.b		; 86 C1
	sta [$C0.b]		; 87 C0
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	bra   1.b		; 80 01
	eor $18.b		; 45 18
	txa		; 8A
	bmi -108.b		; 30 94
	rts		; 60

	plp		; 28
	cpy #$8050.w		; C0 50 80
	ldy #$A000.w		; A0 00 A0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rol $7C00.w,X		; 3E 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	lda [$85.b],Y		; B7 85
	sta [$05.b]		; 87 05
	lda $BA.b,X		; B5 BA
	stx $79.b		; 86 79
	cmp $3FFF3F.l		; CF 3F FF 3F
	bra  64.b		; 80 40
	adc $78FE.w,X		; 7D FE 78
	ora ($F8.b,X)		; 01 F8
	ora ($48.b,X)		; 01 48
	cop $60.b		; 02 60
	ora ($03.b,X)		; 01 03
	sta $003F3E.l,X		; 9F 3E 3F 00
	sbc $80FE00.l,X		; FF 00 FE 80
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	jsr $A0F0.w		; 20 F0 A0
	bne -96.b		; D0 A0
	bvc -96.b		; 50 A0
	bne  32.b		; D0 20
	beq -128.b		; F0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	sed		; F8
	sbc $02FE81.l,X		; FF 81 FE 02
	beq   5.b		; F0 05
	bra   6.b		; 80 06
	ora ($08.b,X)		; 01 08
	ora $11.b,S		; 03 11
	asl $22.b		; 06 22
	tsb $0007.w		; 0C 07 00
	bvs   0.b		; 70 00
	bra   1.b		; 80 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	eor $82B8.w,Y		; 59 B8 82
	brk $8A.b		; 00 8A
	bvs  20.b		; 70 14
	cpx #$8068.w		; E0 68 80
	bcs   0.b		; B0 00
	rti		; 40

	brk $80.b		; 00 80
	brk $08.b		; 00 08
	rol $7C00.w,X		; 3E 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	lda $00.b,X		; B5 00
	sbc ($08.b)		; F2 08
	sep #$0C		; E2 0C
	sta $B846.w,Y		; 99 46 B8
	eor [$D4.b]		; 47 D4
	and $D6.b,S		; 23 D6
	and ($7B.b,X)		; 21 7B
	brk $00.b		; 00 00
	tad		; 5B
	brk $5D.b		; 00 5D
	brk $5F.b		; 00 5F
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	ora $FD.b,S		; 03 FD
	sbc $033C01.l,X		; FF 01 3C 03
	cpy $03.b		; C4 03
	trb $7CE0.w		; 1C E0 7C
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	ora $F8.b,S		; 03 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F3A3F.l,X		; 1F 3F 3A 7F
	and ($7F.b)		; 32 7F
	rts		; 60

	sbc $0F0707.l,X		; FF 07 07 0F
	php		; 08
	ora $2D3F18.l,X		; 1F 18 3F 2D
	and $457F20.l,X		; 3F 20 7F 45
	adc $9FFF4D.l,X		; 7F 4D FF 9F
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	beq  -2.b		; F0 FE
	jsr ($F6FE.w,X)		; FC FE F6
	sbc $04FF86.l,X		; FF 86 FF 04
	sbc $809E60.l,X		; FF 60 9E 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE2E.w,X		; FE 2E FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora #$79FF.w		; 09 FF 79
	sbc $0686DB.l,X		; FF DB 86 06
	asl A		; 0A
	tsa		; 3B
	ora [$74.b],Y		; 17 74
	adc $7CBD02.l,X		; 7F 02 BD 7C
	.db $82, $00, $FA		; 82 00 FA
	brk $5C.b		; 00 5C
	jsr $6094.w		; 20 94 60
	trb $00.b		; 14 00
	plp		; 28
	brk $00.b		; 00 00
	cop $18.b		; 02 18
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	cli		; 58
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
.ACCU 8
	sep #$28		; E2 28
.ACCU 8
	sep #$2C		; E2 2C
	.db $62, $0C, $62		; 62 0C 62
	trb $1872.w		; 1C 72 18
	adc ($3C.b)		; 72 3C
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	jsr $2054.w		; 20 54 20
	stz $00.b,X		; 74 00
	dec A		; 3A
	brk $1A.b		; 00 1A
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	bit $1C00.w,X		; 3C 00 1C
	brk $14.b		; 00 14
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F8FC.w		; C0 FC F8
	jsr ($FEFC.w,X)		; FC FC FE
	dec $86FF.w		; CE FF 86
	sbc $00FF14.l,X		; FF 14 FF 00
	brk $C0.b		; 00 C0
	cpy #$3CFC.w		; C0 FC 3C
	jsr ($FE24.w,X)		; FC 24 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ABEF.w		; 69 EF AB
	adc $9B93.w		; 6D 93 9B
	cpx $FA.b		; E4 FA
	mvn $B5,$FE		; 54 FE B5
	sbc [$F8.b],Y		; F7 F8
	plx		; FA
	sbc ($EF.b),Y		; F1 EF
	sbc $72.b,X		; F5 72
	adc $9300.w		; 6D 00 93
	brk $E4.b		; 00 E4
	brk $54.b		; 00 54
	ldy #$E0B4.w		; A0 B4 E0
	sed		; F8
	cpx $F1.b		; E4 F1
	rti		; 40

	sbc ($04.b),Y		; F1 04
	sbc ($85.b,X)		; E1 85
	ora $07.b,S		; 03 07
	ora [$0E.b]		; 07 0E
	ora $7A3E1D.l		; 0F 1D 3E 7A
	jmp ($78F4.w,X)		; 7C F4 78
	tay		; A8
	bvs  80.b		; 70 50
	ldy #$0300.w		; A0 00 03
	brk $0F.b		; 00 0F
	tsb $3F.b		; 04 3F
	php		; 08
	inc $FC30.w,X		; FE 30 FC
	jsr $0078.w		; 20 78 00
	bvs   0.b		; 70 00
	ldy #$1E3D.w		; A0 3D 1E
	ora $3E3E.w,X		; 1D 3E 3E
	bit $3C3A.w,X		; 3C 3A 3C
	bit $3C38.w,X		; 3C 38 3C
	sec		; 38
	bit $38.b,X		; 34 38
	bit $0870.w,X		; 3C 70 08
	asl $7E18.w,X		; 1E 18 7E
	clc		; 18
	jmp ($7C10.w,X)		; 7C 10 7C
	bpl 120.b		; 10 78
	bpl 121.b		; 10 79
	bpl 121.b		; 10 79
	brk $F9.b		; 00 F9
	lda $01.b,S		; A3 01
	and $1FEF1E.l		; 2F 1E EF 1F
	and $5F6F5F.l		; 2F 5F 6F 5F
	sbc [$DF.b]		; E7 DF
	cpx #$AFC0.w		; E0 C0 AF
	cmp $001D00.l,X		; DF 00 1D 00
	asl $1F07.w,X		; 1E 07 1F
	ora [$DF.b]		; 07 DF
	ora [$DF.b]		; 07 DF
	ora ($DF.b,X)		; 01 DF
	brk $DF.b		; 00 DF
	ora $DF.b,S		; 03 DF
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	tyx		; BB
	pha		; 48
	sbc #$E518.w		; E9 18 E5
	trb $1EE2.w		; 1C E2 1E
	adc ($0F.b),Y		; 71 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora [$40.b]		; 07 40
	ora [$00.b],Y		; 17 00
	phd		; 0B
	brk $0D.b		; 00 0D
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $55.b		; 00 55
	php		; 08
	adc $18.b		; 65 18
	ror A		; 6A
	bpl -118.b		; 10 8A
	bmi -102.b		; 30 9A
	jsr $20D4.w		; 20 D4 20
	ldy $40.b,X		; B4 40
	tay		; A8
	rti		; 40

	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	rol A		; 2A
	bpl  74.b		; 10 4A
	bpl  68.b		; 10 44
	bpl 116.b		; 10 74
	brk $54.b		; 00 54
	jsr $2054.w		; 20 54 20
	pha		; 48
	jsr $2088.w		; 20 88 20
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
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
	brk $01.b		; 00 01
	rol A		; 2A
	bpl  68.b		; 10 44
	bpl 100.b		; 10 64
	bpl 120.b		; 10 78
	brk $58.b		; 00 58
	brk $38.b		; 00 38
	brk $28.b		; 00 28
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	trb $3800.w		; 1C 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	pei ($68.b)		; D4 68
	cpx $30.b		; E4 30
	cpy $F410.w		; CC 10 F4
	clc		; 18
	stz $08.b		; 64 08
	sei		; 78
	tsb $84B8.w		; 0C B8 84
	bra -124.b		; 80 84
	ldy #$C008.w		; A0 08 C0
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	jsr ($FE00.w,X)		; FC 00 FE
	cpy $F836.w		; CC 36 F8
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	cop $AC.b		; 02 AC
	.db $62, $2C, $E3		; 62 2C E3
	asl $0073.w,X		; 1E 73 00
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	brk $8C.b		; 00 8C
	cpy #$801C.w		; C0 1C 80
	jmp $005E00.l		; 5C 00 5E 00
	bit $1200.w		; 2C 00 12
	tsb $65.b		; 04 65
	php		; 08
	tax		; AA
	bpl -108.b		; 10 94
	rts		; 60

	bvc -128.b		; 50 80
	jsr $2080.w		; 20 80 20
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	ora $001E00.l		; 0F 00 1E 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	sbc $F845.w,X		; FD 45 F8
	phd		; 0B
	pea $1069.w		; F4 69 10
	and $4C.b,X		; 35 4C
	bpl  44.b		; 10 2C
	sbc ($0B.b),Y		; F1 0B
	ldx $FDA3.w		; AE A3 FD
	tya		; 98
	sbc ($B0.b)		; F2 B0
	nop		; EA
	cpx #$000F.w		; E0 0F 00
	eor $40.b,S		; 43 40
	and [$20.b]		; 27 20
	asl $00.b		; 06 00
	jsr $F0F0.w		; 20 F0 F0
	rol $3E50.w,X		; 3E 50 3E
	inx		; E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$060E.w		; E0 0E 06
	asl $86.b		; 06 86
	trb $84.b		; 14 84
	ldy #$F0C0.w		; A0 C0 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $B2.b		; 00 B2
	ldy $D3.b		; A4 D3
	rti		; 40

	bvc  32.b		; 50 20
	inx		; E8
	bpl 120.b		; 10 78
	brk $18.b		; 00 18
	ldy #$00D8.w		; A0 D8 00
	tay		; A8
	bne -128.b		; D0 80
	sbc ($00.b,X)		; E1 00
	rts		; 60

	brk $A0.b		; 00 A0
	brk $90.b		; 00 90
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	rti		; 40

	bpl -96.b		; 10 A0
	brk $C0.b		; 00 C0
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
	and $78.b		; 25 78
	rol $267D.w,X		; 3E 7D 26
	and $3C27.w,X		; 3D 27 3C
	and $0702.w,X		; 3D 02 07
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	sed		; F8
	bit $00FD.w,X		; 3C FD 00
	adc $7C00.w,X		; 7D 00 7C
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sbc $00D600.l,X		; FF 00 D6 00
	sbc #$4804.w		; E9 04 48
	rol $54.b		; 26 54
	and $8A.b,S		; 23 8A
	and ($87.b),Y		; 31 87
	sec		; 38
	cld		; D8
	jsr $0000.w		; 20 00 00
	brk $2D.b		; 00 2D
	brk $3F.b		; 00 3F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $78.b		; 00 78
	ora [$70.b]		; 07 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $01.b		; 04 01
	ora #$0002.w		; 09 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$0C.b]		; 07 0C
	ora $17.b,S		; 03 17
	tsb $6B.b		; 04 6B
	ora $A4.b,S		; 03 A4
	clc		; 18
	.db $42, $3C		; 42 3C
	ora $66E0.w,Y		; 19 E0 66
	bra -104.b		; 80 98
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	tsb $1F03.w		; 0C 03 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	trb $1071.w		; 1C 71 10
	adc ($1E.b),Y		; 71 1E
	adc $7E701E.l,X		; 7F 1E 70 7E
	tsb $70F2.w		; 0C F2 70
	txa		; 8A
	brk $74.b		; 00 74
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $7C30.w		; 0C 30 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	bra -64.b		; 80 C0
	cpy #$60C0.w		; C0 C0 60
	rti		; 40

	cpx #$A0C0.w		; E0 C0 A0
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -32.b		; 80 E0
	cpy #$00E0.w		; C0 E0 00
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	tas		; 1B
	brk $2E.b		; 00 2E
	asl A		; 0A
	lsr $35.b,X		; 56 35
	adc $A90A.w,Y		; 79 0A A9
	stz $00.b,X		; 74 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	clc		; 18
	ora ($3C.b,X)		; 01 3C
	brk $0E.b		; 00 0E
	brk $76.b		; 00 76
	sbc $14.b,X		; F5 14
	ldx $DFA9.w,Y		; BE A9 DF
	php		; 08
	and $F5CF35.l		; 2F 35 CF F5
	ora $BD5FFD.l		; 0F FD 5F BD
	ldx $1479.w,Y		; BE 79 14
	asl $0948.w,X		; 1E 48 09
	cpx #$D008.w		; E0 08 D0
	ora $20.b		; 05 20
	ora $84.b		; 05 84
	ora $7D0C.w,X		; 1D 0C 7D
	bpl 121.b		; 10 79
	bmi   0.b		; 30 00
	tay		; A8
	brk $D4.b		; 00 D4
	jsr $A074.w		; 20 74 A0
	tsx		; BA
	cpy $7E.b		; C4 7E
	sty $AE.b,X		; 94 AE
	bne 126.b		; D0 7E
	sty $00.b		; 84 00
	cpy #$1040.w		; C0 40 10
	jsr $0008.w		; 20 08 00
	dey		; 88
	brk $C4.b		; 00 C4
	brk $D4.b		; 00 D4
	brk $D4.b		; 00 D4
	brk $8C.b		; 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	phd		; 0B
	phd		; 0B
	ora #$1F09.w		; 09 09 1F
	ora [$0A.b]		; 07 0A
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b]		; 07 06
	ora $001F0B.l		; 0F 0B 1F 00
	ora $020702.l,X		; 1F 02 07 02
	ora [$54.b]		; 07 54
	brk $74.b		; 00 74
	brk $74.b		; 00 74
	brk $54.b		; 00 54
	brk $3C.b		; 00 3C
	brk $1A.b		; 00 1A
	brk $15.b		; 00 15
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	ora $303F.w,Y		; 19 3F 30
	adc $057F00.l,X		; 7F 00 7F 05
	adc $4E34.w,Y		; 79 34 4E
	clc		; 18
	rol $39.b		; 26 39
	ora [$EA.b]		; 07 EA
	ora $7F263F.l,X		; 1F 3F 26 7F
	eor $767979.l		; 4F 79 79 76
	bvs  67.b		; 70 43
	rti		; 40

	and $20.b,S		; 23 20
	asl $00.b		; 06 00
	ora $1C.b		; 05 1C
	cop $FF.b		; 02 FF
	bmi -49.b		; 30 CF
	bvs -114.b		; 70 8E
	sec		; 38
	jmp ($24F0.w)		; 6C F0 24
	sei		; 78
	tsb $1800.w		; 0C 00 18
	rti		; 40

	cld		; D8
	sbc $83C3ED.l,X		; FF ED C3 83
	txa		; 8A
	jsl $EC2080.l		; 22 80 20 EC
	bmi -16.b		; 30 F0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$06.b]		; 07 06
	ora [$07.b]		; 07 07
	asl $0700.w		; 0E 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	tsb $1E.b		; 04 1E
	cld		; D8
	cpx $D7.b		; E4 D7
	sbc $EFCFAF.l		; EF AF CF EF
	sta $BEAF7F.l		; 8F 7F AF BE
	and [$AC.b]		; 27 AC
	bit $6B.b,X		; 34 6B
	lda ($80.b,S),Y		; B3 80
	sbc $07EF80.l		; EF 80 EF 07
	cmp $079F07.l,X		; DF 07 9F 07
	lda $007704.l		; AF 04 77 00
	adc [$02.b],Y		; 77 02
	lda [$0D.b],Y		; B7 0D
	cop $DF.b		; 02 DF
	inx		; E8
	xce		; FB
	cpx $F4EE.w		; EC EE F4
	cpx $0FF0.w		; EC F0 0F
	brk $F8.b		; 00 F8
	cpy #$01D6.w		; C0 D6 01
	brk $F2.b		; 00 F2
	brk $EC.b		; 00 EC
	cpy #$C0EE.w		; C0 EE C0
	pea $F8C0.w		; F4 C0 F8
	brk $F0.b		; 00 F0
	bra -57.b		; 80 C7
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sei		; 78
	bmi  -4.b		; 30 FC
	cli		; 58
	cpy #$313F.w		; C0 3F 31
	bpl  47.b		; 10 2F
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  48.b		; 10 30
	bvc  88.b		; 50 58
	brk $00.b		; 00 00
	ora $C01FC0.l		; 0F C0 1F C0
	ora [$00.b]		; 07 00
	sei		; 78
	ora ($41.b,X)		; 01 41
	ora [$2E.b]		; 07 2E
	brk $1B.b		; 00 1B
	cop $34.b		; 02 34
	ora $021D.w		; 0D 1D 02
	phd		; 0B
	trb $0000.w		; 1C 00 00
	brk $06.b		; 00 06
	brk $38.b		; 00 38
	ora ($10.b,X)		; 01 10
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	brk $22.b		; 00 22
	brk $3D.b		; 00 3D
	and $08.b,X		; 35 08
	rol A		; 2A
	bpl  42.b		; 10 2A
	bpl  36.b		; 10 24
	bpl  68.b		; 10 44
	bpl 116.b		; 10 74
	brk $48.b		; 00 48
	jsr $2048.w		; 20 48 20
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F3A3F.l,X		; 1F 3F 3A 7F
	and ($7F.b)		; 32 7F
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $4D7F45.l,X		; 7F 45 7F 4D
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	beq  -2.b		; F0 FE
	jsr ($F6FE.w,X)		; FC FE F6
	sbc $04FF86.l,X		; FF 86 FF 04
	sbc $800000.l,X		; FF 00 00 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE2E.w,X		; FE 2E FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora #$79FF.w		; 09 FF 79
	sbc $E32EDB.l,X		; FF DB 2E E3
	bit $2CE1.w		; 2C E1 2C
	adc ($0C.b,X)		; 61 0C
	adc ($1C.b,X)		; 61 1C
	adc ($14.b),Y		; 71 14
	adc ($16.b),Y		; 71 16
	and ($06.b),Y		; 31 06
	and ($5C.b),Y		; 31 5C
	brk $5E.b		; 00 5E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	and $390C.w,Y		; 39 0C 39
	asl A		; 0A
	tsa		; 3B
	ora [$74.b],Y		; 17 74
	adc $7CBD02.l,X		; 7F 02 BD 7C
	.db $82, $00, $FA		; 82 00 FA
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $14.b		; 00 14
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	cop $18.b		; 02 18
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	asl $0B01.w		; 0E 01 0B
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	php		; 08
	cmp $806F00.l,X		; DF 00 6F 80
	ora $71E6.w,Y		; 19 E6 71
	asl $7EB8.w		; 0E B8 7E
	mvp $5C,$C6		; 44 C6 5C
	dec $00.b		; C6 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	php		; 08
	bra  68.b		; 80 44
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	jsr $2054.w		; 20 54 20
	stz $00.b,X		; 74 00
	dec A		; 3A
	brk $1A.b		; 00 1A
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	sta $EA6F65.l,X		; 9F 65 6F EA
	lda [$85.b],Y		; B7 85
	sta [$05.b]		; 87 05
	lda $BA.b,X		; B5 BA
	stx $79.b		; 86 79
	cmp $3FFF3F.l		; CF 3F FF 3F
	tsb $04.b		; 04 04
	ora ($02.b)		; 12 02
	sei		; 78
	ora ($F8.b,X)		; 01 F8
	ora ($48.b,X)		; 01 48
	cop $60.b		; 02 60
	ora ($03.b,X)		; 01 03
	sta $003F3E.l,X		; 9F 3E 3F 00
	beq   0.b		; F0 00
	brk $80.b		; 00 80
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	jsr $A0F0.w		; 20 F0 A0
	bne -96.b		; D0 A0
	bvc -96.b		; 50 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	ora $0E0D0E.l		; 0F 0E 0D 0E
	ora $0F090F.l		; 0F 0F 09 0F
	ora #$1F0F.w		; 09 0F 1F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl $1E08.w,X		; 1E 08 1E
	ora $1F001F.l		; 0F 1F 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $20FEA4.l,X		; 7F A4 FE 20
	xba		; EB
	bpl  -1.b		; 10 FF
	bpl -34.b		; 10 DE
	bmi  -7.b		; 30 F9
	bit $FB.b		; 24 FB
	tsb $9D.b		; 04 9D
	cop $00.b		; 02 00
	ldy $00.b,X		; B4 00
	and ($00.b,X)		; 21 00
	ora $00.b,X		; 15 00
	and $00.b,X		; 35 00
	and $00.b,X		; 35 00
	ldx $00.b		; A6 00
	stx $00.b		; 86 00
	ora [$A8.b]		; 07 A8
	brk $AC.b		; 00 AC
	ora ($50.b,S),Y		; 13 50
	ora $21802F.l		; 0F 2F 80 21
	cpy #$609C.w		; C0 9C 60
	sta ($7E.b,X)		; 81 7E
	eor [$38.b]		; 47 38
	brk $77.b		; 00 77
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	and $C02000.l		; 2F 00 20 C0
	rol $E0DF.w,X		; 3E DF E0
	ora $403EC0.l,X		; 1F C0 3E 40
	bmi -64.b		; 30 C0
	brk $C0.b		; 00 C0
	brk $1F.b		; 00 1F
	cpy #$C01F.w		; C0 1F C0
	ora ($C0.b,X)		; 01 C0
	asl $30C0.w,X		; 1E C0 30
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	tsb $32.b		; 04 32
	tsb $0836.w		; 0C 36 08
	eor $18.b		; 45 18
	eor $6A10.w		; 4D 10 6A
	bpl  90.b		; 10 5A
	jsr $2094.w		; 20 94 20
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ora $F1.b,X		; 15 F1
	sbc $00F800.l,X		; FF 00 F8 00
	ora $FFC00F.l		; 0F 0F C0 FF
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ror $FF00.w		; 6E 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	bra -36.b		; 80 DC
	rti		; 40

	pla		; 68
	and [$74.b]		; 27 74
	eor ($D7.b,S),Y		; 53 D7
	inx		; E8
	trb $E8.b		; 14 E8
	ora $0000F0.l		; 0F F0 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ldy #$803F.w		; A0 3F 80
	ora $E00B20.l,X		; 1F 20 0B E0
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3F00.w		; C0 00 3F
	brk $00.b		; 00 00
	sbc $F1E01F.l,X		; FF 1F E0 F1
	brk $7F.b		; 00 7F
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FF0000.l,X		; FF 00 00 FF
	inc $EB00.w,X		; FE 00 EB
	brk $F3.b		; 00 F3
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	trb $0C00.w		; 1C 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F600.w,X		; FE 00 F6
	brk $7C.b		; 00 7C
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
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
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	asl $07.b		; 06 07
	ora [$0E.b]		; 07 0E
	ora $0E0E.w		; 0D 0E 0E
	tsb $0701.w		; 0C 01 07
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	brk $1D.b		; 00 1D
	cmp $D0E3.w,X		; DD E3 D0
	cpx #$CFA7.w		; E0 A7 CF
	adc $179F87.l,X		; 7F 87 9F 17
	ora $9413.w,X		; 1D 13 94
	clc		; 18
	cmp $9B.b,X		; D5 9B
	bra -29.b		; 80 E3
	bra -17.b		; 80 EF
	brk $DF.b		; 00 DF
	ora [$87.b]		; 07 87
	ora $37.b,S		; 03 37
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $BB.b		; 00 BB
	sbc $1A1DFC.l,X		; FF FC 1D 1A
	cmp $E2.b		; C5 E2
	sbc $FBF2.w		; ED F2 FB
	beq -33.b		; F0 DF
	cpx #$006C.w		; E0 6C 00
	sta ($00.b,S),Y		; 93 00
	sei		; 78
	jsr ($FA08.w,X)		; FC 08 FA
	brk $FA.b		; 00 FA
	cpy #$C0F6.w		; C0 F6 C0
	pea $E300.w		; F4 00 E3
	brk $9F.b		; 00 9F
	brk $6F.b		; 00 6F
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b)		; 12 0E
	adc ($00.b,S),Y		; 73 00
	sbc $009F00.l,X		; FF 00 9F 00
	jmp ($F300.w,X)		; 7C 00 F3
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	rts		; 60

	ora $C01FE0.l		; 0F E0 1F C0
	trb $00C0.w		; 1C C0 00
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	adc $7CFF7E.l,X		; 7F 7E FF 7C
	sbc $00FD12.l,X		; FF 12 FD 00
	sbc $0707.w,X		; FD 07 07
	ora $1F1F0C.l		; 0F 0C 1F 1F
	adc $81FF70.l,X		; 7F 70 FF 81
	sbc $E9FB83.l,X		; FF 83 FB E9
	xce		; FB
	sed		; F8
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	sed		; F8
	sed		; F8
	inc $FFEC.w,X		; FE EC FF
	dec $FF.b		; C6 FF
	rol $FF.b,X		; 36 FF
	mvp $C0,$7E		; 44 7E C0
	cpy #$20E0.w		; C0 E0 20
	sed		; F8
	clc		; 18
	inc $FF26.w,X		; FE 26 FF
	ora [$FF.b],Y		; 17 FF
	and $C9CF.w,Y		; 39 CF C9
	ldx $320A.w,Y		; BE 0A 32
	php		; 08
	dec A		; 3A
	brk $24.b		; 00 24
	bpl  68.b		; 10 44
	bpl 100.b		; 10 64
	bpl  88.b		; 10 58
	jsr $2058.w		; 20 58 20
	dey		; 88
	jsr $1C00.w		; 20 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $1F.b,S		; 03 1F
	stx $70.b,Y		; 96 70
	tad		; 5B
	cmp $79.b,S		; C3 79
	ora ($E4.b,X)		; 01 E4
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0F.b		; 00 0F
	brk $3C.b		; 00 3C
	brk $FE.b		; 00 FE
	brk $FB.b		; 00 FB
	brk $34.b		; 00 34
	ora $D1.b,S		; 03 D1
	asl $C8D7.w		; 0E D7 C8
	cpx $B120.w		; EC 20 B1
	bne -26.b		; D0 E6
	bne  56.b		; D0 38
	cpy #$C000.w		; C0 00 C0
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	rti		; 40

	sbc $403F00.l,X		; FF 00 3F 40
	asl $1800.w,X		; 1E 00 18
	cpy #$0000.w		; C0 00 00
	brk $29.b		; 00 29
	asl $2B.b		; 06 2B
	tsb $32.b		; 04 32
	tsb $0837.w		; 0C 37 08
	and $08.b,X		; 35 08
	eor $4A10.w		; 4D 10 4A
	bpl 106.b		; 10 6A
	bpl   0.b		; 10 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001E00.l,X		; 1F 00 1E 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	ora ($00.b,X)		; 01 00
	asl $7500.w		; 0E 00 75
	cop $A2.b		; 02 A2
	trb $7089.w		; 1C 89 70
	ror $80.b,X		; 76 80
	iny		; C8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $007F00.l		; 0F 00 7F 00
	inc $F800.w,X		; FE 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	eor $00813E.l,X		; 5F 3E 81 00
	ldx $CE00.w,Y		; BE 00 CE
	bmi  74.b		; 30 4A
	bmi  92.b		; 30 5C
	jsr $6094.w		; 20 94 60
	clv		; B8
	rti		; 40

	tsb $003E.w		; 0C 3E 00
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	asl $3600.w		; 0E 00 36
	ora ($D9.b,X)		; 01 D9
	asl $47.b		; 06 47
	sec		; 38
	trb $71E0.w		; 1C E0 71
	bra -58.b		; 80 C6
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $003F00.l		; 0F 00 3F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $E0.b		; 00 E0
	asl $08.b,X		; 16 08
	ora $0100.w		; 0D 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($8E.b),Y		; 51 8E
	tad		; 5B
	sty $AF.b		; 84 AF
	rti		; 40

	lda [$40.b],Y		; B7 40
	tsb $7873.w		; 0C 73 78
	ora [$8C.b]		; 07 8C
	adc $00FB1A.l,X		; 7F 1A FB 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	asl $80.b		; 06 80
	and ($00.b)		; 32 00
	stz $00.b		; 64 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	brk $3A.b		; 00 3A
	trb $3874.w		; 1C 74 38
	adc $38.b,X		; 75 38
	eor $6D38.w,X		; 5D 38 6D
	clc		; 18
	eor $3D38.w		; 4D 38 3D
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora $3910.w,X		; 1D 10 39
	bmi  56.b		; 30 38
	bpl  56.b		; 10 38
	php		; 08
	clc		; 18
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $D0BFD0.l,X		; FF D0 BF D0
	lda $C8.b,X		; B5 C8
	inc $EE88.w,X		; FE 88 EE
	ora $917C.w,Y		; 19 7C 91
	tyx		; BB
	cpy #$40B7.w		; C0 B7 40
	brk $D8.b		; 00 D8
	brk $D0.b		; 00 D0
	brk $CA.b		; 00 CA
	brk $DB.b		; 00 DB
	brk $1B.b		; 00 1B
	brk $D3.b		; 00 D3
	brk $CD.b		; 00 CD
	brk $4D.b		; 00 4D
	jmp ($5003.w)		; 6C 03 50
	brk $58.b		; 00 58
	and [$A0.b]		; 27 A0
	ora $43005F.l,X		; 1F 5F 00 43
	bra  56.b		; 80 38
	cpy #$FC03.w		; C0 03 FC
	brk $9F.b		; 00 9F
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	jmp ($308F.w)		; 6C 8F 30
	ora $40BC40.l,X		; 1F 40 BC 40
	bcs -64.b		; B0 C0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora ($C0.b,S),Y		; 13 C0
	tsb $30C0.w		; 0C C0 30
	bra  32.b		; 80 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	cpx #$7A87.w		; E0 87 7A
	and [$85.b],Y		; 37 85
	xce		; FB
	ora ($9E.b,X)		; 01 9E
	ora $7E61.w,X		; 1D 61 7E
	stx $F9.b		; 86 F9
	asl $E1FF.w,X		; 1E FF E1
	cpx #$0202.w		; E0 02 02
	adc $FC01.w,Y		; 79 01 FC
	ora ($E0.b,X)		; 01 E0
	ora ($98.b,X)		; 01 98
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	and $B04EF8.l,X		; 3F F8 4E B0
	bit $38A0.w		; 2C A0 38
	ldy #$8070.w		; A0 70 80
	rts		; 60

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	cpy #$8600.w		; C0 00 86
	asl $C4.b		; 06 C4
	tsb $40.b		; 04 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	sbc ($26.b,S),Y		; F3 26
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	adc $2E.b,S		; 63 2E
	adc $0E.b,S		; 63 0E
	adc $4C.b,S		; 63 4C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	adc $1E.b,S		; 63 1E
	adc ($1E.b,S),Y		; 73 1E
	adc ($1E.b,S),Y		; 73 1E
	adc ($18.b,S),Y		; 73 18
	adc ($08.b,S),Y		; 73 08
	.db $62, $26, $E4		; 62 26 E4
	inc $3C00.w,X		; FE 00 3C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $2E.b		; 00 2E
	brk $3C.b		; 00 3C
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $8F.b		; 00 8F
	brk $40.b		; 00 40
	ora [$5D.b]		; 07 5D
	tsb $2F.b		; 04 2F
	php		; 08
	eor ($34.b)		; 52 34
	adc ($0A.b),Y		; 71 0A
	and $000070.l		; 2F 70 00 00
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	ora $20.b,S		; 03 20
	ora $18.b,S		; 03 18
	ora ($3C.b,X)		; 01 3C
	brk $8E.b		; 00 8E
	brk $F2.b		; 00 F2
	cld		; D8
	ora $C03C20.l,X		; 1F 20 3C C0
	sed		; F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $00.b		; E4 00
	cld		; D8
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $37.b		; 00 37
	brk $D3.b		; 00 D3
	tsb $40A9.w		; 0C A9 40
	lsr $3080.w		; 4E 80 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $3C00.w		; 0C 00 3C
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	mvn $54,$20		; 54 20 54
	jsr $0074.w		; 20 74 00
	dec A		; 3A
	brk $1A.b		; 00 1A
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
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
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $3F3F0F.l		; 0F 0F 3F 3F
	adc $287F3C.l,X		; 7F 3C 7F 28
	adc $037F29.l,X		; 7F 29 7F 03
	ora $07.b,S		; 03 07
	tsb $0F.b		; 04 0F
	asl A		; 0A
	and $407F36.l,X		; 3F 36 7F 40
	adc $577F43.l,X		; 7F 43 7F 57
	ror $0054.w,X		; 7E 54 00
	cpy #$F880.w		; C0 80 F8
	clv		; B8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FFDE.w,X		; FE DE FF
	lsr A		; 4A
	sbc $F8C0C0.l,X		; FF C0 C0 F8
	sei		; 78
	jsr ($FE44.w,X)		; FC 44 FE
	asl A		; 0A
	inc $FE32.w,X		; FE 32 FE
	ora ($FF.b)		; 12 FF
	and ($FF.b,X)		; 21 FF
	lda $03.b,X		; B5 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	brk $0B.b		; 00 0B
	brk $11.b		; 00 11
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $01803E.l		; 0F 3E 80 01
	sta ($1E.b,X)		; 81 1E
	cmp $807FC0.l,X		; DF C0 7F 80
	adc $3EBEC1.l,X		; 7F C1 BE 3E
	rti		; 40

	dey		; 88
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $61.b		; 00 61
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $3C.b		; 00 3C
	bra   0.b		; 80 00
	cpx #$F000.w		; E0 00 F0
	ora ($02.b,X)		; 01 02
	ora [$00.b]		; 07 00
	ply		; 7A
	and $3863.w,Y		; 39 63 38
	adc $3B5F3B.l,X		; 7F 3B 5F 3B
	and $070807.l,X		; 3F 07 08 07
	ora ($00.b,X)		; 01 00
	brk $38.b		; 00 38
	clc		; 18
	and $033C00.l,X		; 3F 00 3C 03
	tsa		; 3B
	ora $3B.b,S		; 03 3B
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora ($4E.b),Y		; 11 4E
	phb		; 8B
	cmp $BF.b,X		; D5 BF
	eor $D7.b,S		; 43 D7
	ora $C307C3.l		; 0F C3 07 C3
	sta [$50.b]		; 87 50
	bit #$069E.w		; 89 9E 06
	cpy #$002E.w		; C0 2E 00
	and $01.b,X		; 35 01
	ora ($01.b,S),Y		; 13 01
	sta $010F01.l		; 8F 01 0F 01
	sta $008F00.l		; 8F 00 8F 00
	ora [$22.b]		; 07 22
	trb $EAF4.w		; 1C F4 EA
	sbc $FCFAF0.l,X		; FF F0 FA FC
	plx		; FA
	jsr ($FCF2.w,X)		; FC F2 FC
	sbc ($F2.b,X)		; E1 F2
	eor $DD004C.l		; 4F 4C 00 DD
	cpy #$E0EB.w		; C0 EB E0
	sbc ($F0.b)		; F2 F0
	jsr ($FCE0.w,X)		; FC E0 FC
	cpx #$40FC.w		; E0 FC 40
	inc $FC00.w,X		; FE 00 FC
	brk $98.b		; 00 98
	rti		; 40

	cpy #$B83C.w		; C0 3C B8
	tsb $3EB8.w		; 0C B8 3E
	sec		; 38
	rol $38.b,X		; 36 38
	dec A		; 3A
	tsb $22.b		; 04 22
	trb $00F0.w		; 1C F0 00
	bra  56.b		; 80 38
	bmi 120.b		; 30 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $04.b		; 00 04
	brk $1C.b		; 00 1C
	bne  32.b		; D0 20
	pla		; 68
	brk $B8.b		; 00 B8
	brk $54.b		; 00 54
	brk $5C.b		; 00 5C
	brk $7C.b		; 00 7C
	brk $94.b		; 00 94
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $08.b		; 00 08
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$04.b]		; 07 04
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	ora $07.b		; 05 07
	ora $1507.w,Y		; 19 07 15
	ora ($30.b,S),Y		; 13 30
	asl $0025.w		; 0E 25 00
	ora $04.b,S		; 03 04
	ora $0E08.w		; 0D 08 0E
	brk $05.b		; 00 05
	php		; 08
	ora ($08.b,X)		; 01 08
	ora ($0C.b,X)		; 01 0C
	brk $18.b		; 00 18
	ora ($7F.b,X)		; 01 7F
	brk $DE.b		; 00 DE
	and $0CFF.w		; 2D FF 0C
	cmp $AAE3.w,X		; DD E3 AA
	cmp #$EBD5.w		; C9 D5 EB
	rol A		; 2A
	cmp ($DF.b,X)		; C1 DF
	plp		; 28
	brk $DD.b		; 00 DD
	brk $E1.b		; 00 E1
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	brk $FF.b		; 00 FF
	brk $EB.b		; 00 EB
	brk $D5.b		; 00 D5
	brk $28.b		; 00 28
	php		; 08
	brk $F8.b		; 00 F8
	php		; 08
	inc $14.b,X		; F6 14
	inc $C8.b,X		; F6 C8
	cpx $F8D6.w		; EC D6 F8
	wai		; CB
	rol $C3.b,X		; 36 C3
	jmp.w [$0029]		; DC 29 00
	beq   8.b		; F0 08
	cpx $1C04.w		; EC 04 1C
	brk $C8.b		; 00 C8
	brk $D0.b		; 00 D0
	asl $C0.b		; 06 C0
	tsb $06C0.w		; 0C C0 06
	jsr $001C.w		; 20 1C 00
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
	brk $00.b		; 00 00
	eor $B050A0.l		; 4F A0 50 B0
	eor $BF40BF.l		; 4F BF 40 BF
	cpx #$101F.w		; E0 1F 10
	ora $060609.l		; 0F 09 06 06
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($90.b,X)		; 01 90
	jsr $2000.w		; 20 00 20
	bpl  96.b		; 10 60
	inx		; E8
	bne -76.b		; D0 B4
	bne 106.b		; D0 6A
	ldy #$4C92.w		; A0 92 4C
	and $C004.w,Y		; 39 04 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	clc		; 18
	bra  60.b		; 80 3C
	brk $FC.b		; 00 FC
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
	brk $00.b		; 00 00
	jsr $0E7E.w		; 20 7E 0E
	adc $350A.w,Y		; 79 0A 35
	ora [$1D.b]		; 07 1D
	ora ($18.b,X)		; 01 18
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	bit $7F03.w,X		; 3C 03 7F
	jmp $307070.l		; 5C 70 70 30
	and $14.b,X		; 35 14
	ora $17.b,X		; 15 17
	bpl   5.b		; 10 05
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	sbc $A8DF28.l,X		; FF 28 DF A8
	cmp [$70.b],Y		; D7 70
	eor $401FD4.l,X		; 5F D4 1F 40
	dec $FCC0.w,X		; DE C0 FC
	ora $EDEFE0.l,X		; 1F E0 EF ED
	sta [$07.b]		; 87 07
	ora [$57.b]		; 07 57
	sta [$53.b],Y		; 97 53
	sbc $03.b,S		; E3 03
	ldx $06.b,Y		; B6 06
	bit $800C.w		; 2C 0C 80
	brk $1B.b		; 00 1B
	tsb $36.b		; 04 36
	php		; 08
	and $5A00.w,X		; 3D 00 5A
	brk $74.b		; 00 74
	brk $BC.b		; 00 BC
	brk $94.b		; 00 94
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	asl $3C00.w,X		; 1E 00 3C
	brk $38.b		; 00 38
	brk $40.b		; 00 40
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	cpy #$0000.w		; C0 00 00
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
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	and $003F01.l,X		; 3F 01 3F 00
	adc $7004.w,Y		; 79 04 70
	ora $1BE0.w		; 0D E0 1B
	rti		; 40

	and $7F439E.l,X		; 3F 9E 43 7F
	cmp ($01.b,X)		; C1 01
	ora ($00.b,X)		; 01 00
	trb $00.b		; 14 00
	ora [$00.b],Y		; 17 00
	and $001F00.l		; 2F 00 1F 00
	sta ($3C.b,X)		; 81 3C
	brk $3E.b		; 00 3E
	brk $BC.b		; 00 BC
	bcs  -2.b		; B0 FE
	rti		; 40

	eor $5602.w,X		; 5D 02 56
	ora #$4C23.w		; 09 23 4C
	brk $7F.b		; 00 7F
	lda $B05F58.l		; AF 58 5F B0
	bcs -13.b		; B0 F3
	rti		; 40

	eor $00.b		; 45 00
	ldx $00.b,Y		; B6 00
	xce		; FB
	brk $FD.b		; 00 FD
	brk $F0.b		; 00 F0
	ora [$C0.b]		; 07 C0
	ora $009C00.l		; 0F 00 9C 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra -96.b		; 80 A0
	brk $50.b		; 00 50
	brk $90.b		; 00 90
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	sec		; 38
	.db $62, $20, $62		; 62 20 62
	ora $017E.w,X		; 1D 7E 01
	ror $7608.w,X		; 7E 08 76
	ora $376A.w,X		; 1D 6A 37
	pei ($7B.b)		; D4 7B
	ldy #$001C.w		; A0 1C 00
	trb $2000.w		; 1C 00 20
	brk $3C.b		; 00 3C
	brk $30.b		; 00 30
	ora ($28.b,X)		; 01 28
	ora #$1D50.w		; 09 50 1D
	jsr $0E3D.w		; 20 3D 0E
	beq  -2.b		; F0 FE
	tsb $F034.w		; 0C 34 F0
	tsb $00.b		; 04 00
	inx		; E8
	brk $D0.b		; 00 D0
	brk $90.b		; 00 90
	brk $A0.b		; 00 A0
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	tsb $F800.w		; 0C 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	pld		; 2B
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $00.b,X		; 16 00
	ora $00.b,X		; 15 00
	ora $00.b		; 05 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $55.b		; 00 55
	dey		; 88
	eor ($8C.b),Y		; 51 8C
	lda ($0C.b),Y		; B1 0C
	ldx $01.b,Y		; B6 01
	sbc $0107.w,Y		; F9 07 01
	sbc $89FFF1.l,X		; FF F1 FF 89
	sta $00FF00.l		; 8F 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	sed		; F8
	cop $00.b		; 02 00
	plx		; FA
	brk $0A.b		; 00 0A
	brk $74.b		; 00 74
	brk $16.b		; 00 16
	asl $070F.w		; 0E 0F 07
	ora [$03.b]		; 07 03
	ora $03.b		; 05 03
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $0F.b		; 02 0F
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$E0E0.w		; E0 E0 E0
	beq -16.b		; F0 F0
	sec		; 38
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$60F0.w		; C0 F0 60
	beq  32.b		; F0 20
	sed		; F8
	brk $C0.b		; 00 C0
	ror $54D3.w		; 6E D3 54
	sta $BE.b,S		; 83 BE
	phk		; 4B
	cmp $5E49.w,Y		; D9 49 5E
	cpy #$E729.w		; C0 29 E7
	rti		; 40

	sbc [$69.b]		; E7 69
	ldx $80D1.w,Y		; BE D1 80
	and ($08.b,X)		; 21 08
	lda ($08.b,X)		; A1 08
	tsx		; BA
	tsb $003F.w		; 0C 3F 00
	lsr $3F00.w,X		; 5E 00 3F
	brk $86.b		; 00 86
	bra   0.b		; 80 00
	beq -128.b		; F0 80
	bvs -96.b		; 70 A0
	bvs  32.b		; 70 20
	bcs  64.b		; B0 40
	cpx #$A040.w		; E0 40 A0
	cpx #$6080.w		; E0 80 60
	rti		; 40

	beq 112.b		; F0 70
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	bpl  48.b		; 10 30
	pha		; 48
	clc		; 18
	stz $0C.b		; 64 0C
	bit $24.b,X		; 34 24
	bit $6C2C.w,X		; 3C 2C 6C
	bit $1E2E.w,X		; 3C 2E 1E
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	tsb $6E.b		; 04 6E
	tsb $6E.b		; 04 6E
	tsb $0C3E.w		; 0C 3E 0C
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	ora [$1A.b]		; 07 1A
	asl $2F.b		; 06 2F
	php		; 08
	eor ($15.b,S),Y		; 53 15
	rol $29.b		; 26 29
	ror $0071.w,X		; 7E 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	clc		; 18
	brk $3C.b		; 00 3C
	ora ($78.b,X)		; 01 78
	jsr $9CF4.w		; 20 F4 9C
	jsr $209C.w		; 20 9C 20
	sty $8A20.w		; 8C 20 8A
	jsr $208A.w		; 20 8A 20
	txa		; 8A
	jsr $208D.w		; 20 8D 20
	sta ($20.b,S),Y		; 93 20
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $74.b		; 00 74
	brk $74.b		; 00 74
	brk $74.b		; 00 74
	brk $72.b		; 00 72
	brk $60.b		; 00 60
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	bvc   0.b		; 50 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	asl $0F.b		; 06 0F
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	asl $01.b		; 06 01
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	ora $090F00.l		; 0F 00 0F 09
	ora $0E0E0B.l		; 0F 0B 0E 0E
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bit $1700.w,X		; 3C 00 17
	pei ($69.b)		; D4 69
	cmp #$05D5.w		; C9 D5 05
	ora $C915.w,X		; 1D 15 C9
	sbc $0B.b,X		; F5 0B
	sbc ($3F.b,S),Y		; F3 3F
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	bit $1F88.w,X		; 3C 88 1F
	sbc $0F.b		; E5 0F
	sbc ($07.b,X)		; E1 07
	and ($07.b),Y		; 31 07
	ora $07.b,S		; 03 07
	ora $17.b,S		; 03 17
	bvc -128.b		; 50 80
	pla		; 68
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	beq  96.b		; F0 60
	clc		; 18
	bvs  24.b		; 70 18
	rts		; 60

	php		; 08
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	cpx #$0000.w		; E0 00 00
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $C7.b		; 00 C7
	cli		; 58
	lda $18.b,S		; A3 18
	ldx $18.b		; A6 18
	ldx $AD10.w		; AE 10 AD
	bpl -83.b		; 10 AD
	bpl -90.b		; 10 A6
	bpl -90.b		; 10 A6
	bpl   0.b		; 10 00
	adc $7D00.w,X		; 7D 00 7D
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	sta [$B0.b]		; 87 B0
	sta [$3C.b]		; 87 3C
	sta [$7C.b]		; 87 7C
	cmp [$7C.b]		; C7 7C
	dec $58.b		; C6 58
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
	brk $7D.b		; 00 7D
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $78FFFC.l,X		; FF FC FF 78
	sbc $00FF60.l,X		; FF 60 FF 00
	brk $78.b		; 00 78
	sei		; 78
	sbc $82FF87.l,X		; FF 87 FF 82
	sbc $03FFDC.l,X		; FF DC FF 03
	inc $FF86.w,X		; FE 86 FF
	txs		; 9A
	jsr ($FC10.w,X)		; FC 10 FC
	brk $54.b		; 00 54
	dey		; 88
	stz $C8E0.w		; 9C E0 C8
	beq -32.b		; F0 E0
	sed		; F8
	rts		; 60

	sed		; F8
	jsr $00F8.w		; 20 F8 00
	sec		; 38
	brk $00.b		; 00 00
	bra -72.b		; 80 B8
	cpx #$F060.w		; E0 60 F0
	jsr $10F0.w		; 20 F0 10
	beq -112.b		; F0 90
	beq -48.b		; F0 D0
	adc $10BB00.l		; 6F 00 BB 10
	sbc $BB00.w,X		; FD 00 BB
	ldy $B9B5.w,X		; BC B5 B9
	tsx		; BA
	lda $B8A7.w,X		; BD A7 B8
	sbc $0000.w,X		; FD 00 00
	lda ($00.b)		; B2 00
	dec $00.b		; C6 00
	cop $00.b		; 02 00
	jsr ($FF00.w,X)		; FC 00 FF
	bra  -3.b		; 80 FD
	bra  -8.b		; 80 F8
	brk $02.b		; 00 02
	cpx #$E080.w		; E0 80 E0
	brk $20.b		; 00 20
	rti		; 40

	rts		; 60

	cpy #$40E0.w		; C0 E0 40
	cpx #$2040.w		; E0 40 20
	cpy #$00E0.w		; C0 E0 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bcs -116.b		; B0 8C
	clv		; B8
	sty $C450.w		; 8C 50 C4
	jmp $E228C6.l		; 5C C6 28 E2
	jsr $1CE2.w		; 20 E2 1C
	ror $7E10.w,X		; 7E 10 7E
	sei		; 78
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $20.b		; 00 20
	brk $2C.b		; 00 2C
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$06.b]		; 07 06
	ora [$0F.b]		; 07 0F
	asl $1C1E.w		; 0E 1E 1C
	rol $6A3C.w,X		; 3E 3C 6A
	jmp ($485C.w,X)		; 7C 5C 48
	ora $07.b,S		; 03 07
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	tsb $1E.b		; 04 1E
	php		; 08
	bit $7C18.w,X		; 3C 18 7C
	jsr $40FC.w		; 20 FC 40
	inx		; E8
	lda ($80.b),Y		; B1 80
	adc ($80.b,X)		; 61 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $1DEF9B.l		; 5C 9B EF 1D
	ora ($00.b,S),Y		; 13 00
	tas		; 1B
	ora [$EB.b]		; 07 EB
	ora [$3B.b]		; 07 3B
	eor [$5D.b]		; 47 5D
	adc $48.b,S		; 63 48
	adc ($08.b),Y		; 71 08
	tyx		; BB
	brk $1D.b		; 00 1D
	brk $0C.b		; 00 0C
	ora ($0F.b,X)		; 01 0F
	ora ($07.b,X)		; 01 07
	ora ($E7.b,X)		; 01 E7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	and #$EAC6.w		; 29 C6 EA
	ldy $F4.b,X		; B4 F4
	sei		; 78
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	brk $D6.b		; 00 D6
	brk $B4.b		; 00 B4
	jsr $F078.w		; 20 78 F0
	jsr ($FCF0.w,X)		; FC F0 FC
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	bvs  -4.b		; 70 FC
	jmp ($6C48.w,X)		; 7C 48 6C
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	iny		; C8
	brk $C0.b		; 00 C0
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
	asl $03.b		; 06 03
	asl $0707.w		; 0E 07 07
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $A4.b		; 00 A4
	cpy $C3BF.w		; CC BF C3
	and $08.b,S		; 23 08
	cmp [$00.b],Y		; D7 00
	lda [$00.b]		; A7 00
	ldx $5900.w		; AE 00 59
	tsb $59.b		; 04 59
	tsb $00.b		; 04 00
	cmp $08C301.l,X		; DF 01 C3 08
	jmp.w [$AA00]		; DC 00 AA
	brk $5A.b		; 00 5A
	brk $57.b		; 00 57
	brk $B7.b		; 00 B7
	brk $AF.b		; 00 AF
	cpx #$28F0.w		; E0 F0 28
	jsr $D0DC.w		; 20 DC D0
	ldy $60.b,X		; B4 60
	mvn $EE,$20		; 54 20 EE
	brk $2A.b		; 00 2A
	bcc  45.b		; 90 2D
	bcc  32.b		; 90 20
	sed		; F8
	brk $F0.b		; 00 F0
	cpy #$60F0.w		; C0 F0 60
	pla		; 68
	jsr $00A8.w		; 20 A8 00
	ldy $00.b,X		; B4 00
	pea $FA00.w		; F4 00 FA
	bit $08.b		; 24 08
	bit $08.b		; 24 08
	bit $08.b		; 24 08
	jmp $5C00.w		; 4C 00 5C
	brk $54.b		; 00 54
	php		; 08
	bit $08.b		; 24 08
	bit $08.b		; 24 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	ora ($07.b,X)		; 01 07
	ora $0C.b		; 05 0C
	cop $00.b		; 02 00
	dec A		; 3A
	tsa		; 3B
	ror $61.b,X		; 76 61
	xba		; EB
	jmp $6B3CD5.l		; 5C D5 3C 6B
	dec A		; 3A
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$38.b]		; 07 38
	and ($7C.b),Y		; 31 7C
	rti		; 40

	inx		; E8
	php		; 08
	jmp $203E10.l		; 5C 10 3E 20
	rol $2CA7.w,X		; 3E A7 2C
	phk		; 4B
	pla		; 68
	rol $31D5.w		; 2E D5 31
	wai		; CB
	phk		; 4B
	tas		; 1B
	ldx $57.b,Y		; B6 57
	phd		; 0B
	cmp [$37.b]		; C7 37
	tay		; A8
	cpy #$A01D.w		; C0 1D A0
	trb $15C0.w		; 1C C0 15
	brk $0F.b		; 00 0F
	php		; 08
	and $005F00.l,X		; 3F 00 5F 00
	sbc [$00.b],Y		; F7 00
	sbc #$18E3.w		; E9 E3 18
	lda $5C.b,X		; B5 5C
	tsx		; BA
	eor $7407E8.l		; 4F E8 07 74
	txy		; 9B
	xce		; FB
	bcc  -7.b		; 90 F9
	brk $E7.b		; 00 E7
	eor $C01F.w,Y		; 59 1F C0
	ora $C0.b,S		; 03 C0
	brk $50.b		; 00 50
	ora ($58.b,X)		; 01 58
	brk $80.b		; 00 80
	brk $C4.b		; 00 C4
	brk $86.b		; 00 86
	brk $59.b		; 00 59
	.db $42, $FF		; 42 FF
	ldy #$403E.w		; A0 3E 40
	beq   0.b		; F0 00
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $37.b		; 00 37
	ora $C6.b		; 05 C6
	asl $20.b		; 06 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   7.b		; 80 07
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	brk $9C.b		; 00 9C
	ora ($54.b,X)		; 01 54
	ora #$0972.w		; 09 72 09
	ldx $EC11.w		; AE 11 EC
	ora ($5C.b,S),Y		; 13 5C
	and $DE.b,S		; 23 DE
	and ($00.b,X)		; 21 00
	ldx $00.b,Y		; B6 00
	adc $00EF00.l		; 6F 00 EF 00
	cmp $00DB00.l,X		; DF 00 DB 00
	tyx		; BB
	brk $B7.b		; 00 B7
	brk $71.b		; 00 71
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F8F8.w		; E0 F8 F8
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F8E0.w		; E0 E0 F8
	tya		; 98
	jsr ($3184.w,X)		; FC 84 31
	brk $36.b		; 00 36
	brk $2B.b		; 00 2B
	brk $4C.b		; 00 4C
	brk $48.b		; 00 48
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	asl $0F00.w		; 0E 00 0F
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	stx $C070.w		; 8E 70 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	and [$1D.b],Y		; 37 1D
	brk $1B.b		; 00 1B
	ora ($0F.b,X)		; 01 0F
	ora $05.b,S		; 03 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora [$00.b]		; 07 00
	asl A		; 0A
	brk $05.b		; 00 05
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	bmi  -8.b		; 30 F8
	cld		; D8
	bit $0000.w,X		; 3C 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$20F0.w		; C0 F0 20
	sed		; F8
	bpl  -4.b		; 10 FC
	php		; 08
	rol $1C2C.w,X		; 3E 2C 1C
	ora ($0B.b,S),Y		; 13 0B
	asl A		; 0A
	ora $08.b,S		; 03 08
	brk $04.b		; 00 04
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F01.l,X		; 1F 01 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	bra -56.b		; 80 C8
	bvs 116.b		; 70 74
	brk $7A.b		; 00 7A
	brk $5D.b		; 00 5D
	brk $47.b		; 00 47
	php		; 08
	phk		; 4B
	bit $59.b		; 24 59
	rol $00.b		; 26 00
	sed		; F8
	brk $70.b		; 00 70
	brk $88.b		; 00 88
	brk $D4.b		; 00 D4
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $F6.b		; 00 F6
	inc $6C10.w		; EE 10 6C
	sta ($38.b)		; 92 38
	dec $88.b		; C6 88
	inc $7694.w,X		; FE 94 76
	pei ($76.b)		; D4 76
	bcc  50.b		; 90 32
	bcc  50.b		; 90 32
	brk $74.b		; 00 74
	bra  56.b		; 80 38
	sty $00.b		; 84 00
	trb $00.b		; 14 00
	iny		; C8
	brk $88.b		; 00 88
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $BD.b		; 00 BD
	brk $B2.b		; 00 B2
	brk $A1.b		; 00 A1
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $00.b,S		; 43 00
	eor ($00.b,X)		; 41 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor [$36.b],Y		; 57 36
	rol $1B01.w		; 2E 01 1B
	tsb $77.b		; 04 77
	ora $3875.w,Y		; 19 75 38
	and $003510.l,X		; 3F 10 35 00
	sbc #$0000.w		; E9 00 00
	rol $1100.w,X		; 3E 00 11
	brk $06.b		; 00 06
	brk $1D.b		; 00 1D
	brk $3A.b		; 00 3A
	brk $10.b		; 00 10
	brk $0A.b		; 00 0A
	brk $16.b		; 00 16
	and $FB2E.w,X		; 3D 2E FB
	jmp ($637C.w)		; 6C 7C 63
	rol $BFBF.w,X		; 3E BF BF
	lda $CEDF5F.l,X		; BF 5F DF CE
	eor $202E6C.l,X		; 5F 6C 2E 20
	inc $6C20.w		; EE 20 6C
	jsr $38E3.w		; 20 E3 38
	sbc $5EFF1E.l,X		; FF 1E FF 5E
	sbc $207F0C.l,X		; FF 0C 7F 20
	lda $DBAC5E.l,X		; BF 5E AC DB
	and $5AB7.w,X		; 3D B7 5A
	xce		; FB
	eor ($F4.b,X)		; 41 F4
	adc $60.b,S		; 63 60
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $3D01.w,X		; BD 01 3D
	brk $5A.b		; 00 5A
	brk $44.b		; 00 44
	ora ($60.b,X)		; 01 60
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpx #$E0C0.w		; E0 C0 E0
	brk $80.b		; 00 80
	ldy #$3060.w		; A0 60 30
	cpy #$6098.w		; C0 98 60
	cpy $C610.w		; CC 10 C6
	ora $C08060.l		; 0F 60 80 C0
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $64.b		; 00 64
	brk $53.b		; 00 53
	php		; 08
	phy		; 5A
	tsb $44.b		; 04 44
	ora $DA.b,S		; 03 DA
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $3C.b		; 00 3C
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $27.b		; 00 27
	eor $3526.w,Y		; 59 26 35
	eor $7016.w		; 4D 16 70
	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	wai		; CB
	sec		; 38
	lda $18.b,S		; A3 18
	eor $8C.b,X		; 55 8C
	asl $30.b		; 06 30
	asl A		; 0A
	brk $2F.b		; 00 2F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	cpy #$E00B.w		; C0 0B E0
	ora [$1F.b]		; 07 1F
	ora $3F1E3F.l,X		; 1F 3F 1E 3F
	brk $3F.b		; 00 3F
	brk $3D.b		; 00 3D
	cmp ($1B.b,X)		; C1 1B
	asl A		; 0A
	rol $B9.b,X		; 36 B9
	tsb $1F.b		; 04 1F
	clc		; 18
	and $213F20.l,X		; 3F 20 3F 21
	and $393B3F.l,X		; 3F 3F 3B 39
	asl $10.b,X		; 16 10
	and $F0.b,X		; 35 F0
	ora $E0.b,S		; 03 E0
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FF7E.w,X		; FE 7E FF
	adc $FF29FF.l		; 6F FF 29 FF
	sta ($FF.b,X)		; 81 FF
	beq  15.b		; F0 0F
	inx		; E8
	sta $FE42FE.l,X		; 9F FE 42 FE
	asl $FF.b,X		; 16 FF
	sta $FF90FF.l		; 8F FF 90 FF
	dec $7F.b,X		; D6 7F
	ror $470F.w,X		; 7E 0F 47
	sta [$C3.b]		; 87 C3
	and ($CC.b,X)		; 21 CC
	txs		; 9A
	ror $40.b		; 66 40
	rol $A8.b,X		; 36 A8
	asl $59.b,X		; 16 59
	ora $25.b,S		; 03 25
	ora [$14.b]		; 07 14
	ora [$38.b]		; 07 38
	ora [$07.b]		; 07 07
	beq   5.b		; F0 05
	beq   3.b		; F0 03
	sed		; F8
	ora $78.b,S		; 03 78
	cop $3C.b		; 02 3C
	brk $1C.b		; 00 1C
	ora ($0C.b,X)		; 01 0C
	brk $04.b		; 00 04
	cpy #$C032.w		; C0 32 C0
	and ($E0.b)		; 32 E0
	and ($C0.b)		; 32 C0
	ora ($44.b)		; 12 44
	asl $04.b,X		; 16 04
	asl $A8.b,X		; 16 A8
	ldx $EC50.w,Y		; BE 50 EC
	jmp.w [$EC00]		; DC 00 EC
	brk $CC.b		; 00 CC
	brk $EC.b		; 00 EC
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $44.b		; 00 44
	brk $A8.b		; 00 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	inc A		; 1A
	ora ($3A.b,S),Y		; 13 3A
	pld		; 2B
	nop		; EA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl A		; 0A
	asl $12.b		; 06 12
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$2020.w		; C0 20 20
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$F020.w		; E0 20 F0
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$E040.w		; E0 40 E0
	brk $C0.b		; 00 C0
	rol $2EE3.w		; 2E E3 2E
	adc $2E.b,S		; 63 2E
	adc $0E.b,S		; 63 0E
	adc $0E.b,S		; 63 0E
	adc $0A.b,S		; 63 0A
	adc $08.b,S		; 63 08
	adc $0C.b,S		; 63 0C
	ror $5C.b		; 66 5C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $0D.b		; 00 0D
	cop $14.b		; 02 14
	cop $13.b		; 02 13
	tsb $26.b		; 04 26
	php		; 08
	lsr $08.b,X		; 56 08
	ldy $A410.w		; AC 10 A4
	bpl -72.b		; 10 B8
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	trb $3C00.w		; 1C 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $010106.l		; 0F 06 01 01
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	lda [$71.b]		; A7 71
	cmp $30.b,S		; C3 30
	pha		; 48
	clv		; B8
	.db $42, $BE		; 42 BE
	inx		; E8
	ora $6B6290.l		; 0F 90 62 6B
	trb $95.b		; 14 95
	asl A		; 0A
	ora $001F01.l,X		; 1F 01 1F 00
	sta [$80.b],Y		; 97 80
	sta $0080.w,X		; 9D 80 00
	bpl   0.b		; 10 00
	cpx $F004.w		; EC 04 F0
	cop $78.b		; 02 78
	lda ($1C.b)		; B2 1C
	sbc ($0C.b,S),Y		; F3 0C
	sbc $0E.b,X		; F5 0E
	ldy $47.b		; A4 47
	cpy $07.b		; C4 07
	ora $000F04.l		; 0F 04 0F 00
	ora $08.b,X		; 15 08
	php		; 08
	rti		; 40

	php		; 08
	ldx #$4700.w		; A2 00 47
	brk $4F.b		; 00 4F
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tsa		; 3B
	ora $3F.b,S		; 03 3F
	adc $BF7F3F.l,X		; 7F 3F 7F BF
	adc $E61F9E.l,X		; 7F 9E 1F E6
	sbc [$FA.b]		; E7 FA
	inc A		; 1A
	eor $0205.w,X		; 5D 05 02
	cmp [$1E.b]		; C7 1E
	sbc $1EFF1E.l,X		; FF 1E FF 1E
	adc $267F0E.l,X		; 7F 0E 7F 26
	sbc $041F1A.l,X		; FF 1A 1F 04
	lda [$80.b]		; A7 80
	brk $7E.b		; 00 7E
	ora ($B9.b,X)		; 01 B9
	php		; 08
	sbc [$10.b]		; E7 10
	and $21C9D0.l,X		; 3F D0 C9 21
	ldy $F06F.w		; AC 6F F0
	adc $000000.l,X		; 7F 00 00 00
	bra   7.b		; 80 07
	rts		; 60

	ora $C00FC0.l,X		; 1F C0 0F C0
	rol $5380.w,X		; 3E 80 53
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	jsr ($C644.w,X)		; FC 44 C6
	plx		; FA
	ora $FC.b,S		; 03 FC
	ora ($5E.b,X)		; 01 5E
	adc ($24.b,S),Y		; 73 24
	sbc [$3F.b]		; E7 3F
	cpy #$3EFD.w		; C0 FD 3E
	brk $00.b		; 00 00
	clv		; B8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $AC.b		; 00 AC
	brk $98.b		; 00 98
	brk $40.b		; 00 40
	brk $18.b		; 00 18
	rol $10A2.w,X		; 3E A2 10
	ldx #$A210.w		; A2 10 A2
	bpl -92.b		; 10 A4
	bpl -92.b		; 10 A4
	bpl -92.b		; 10 A4
	bpl 100.b		; 10 64
	bpl 100.b		; 10 64
	bpl   0.b		; 10 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	stz $10.b		; 64 10
	pla		; 68
	bpl 120.b		; 10 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $00.b		; 00 00
	sec		; 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	clv		; B8
	brk $D4.b		; 00 D4
	brk $5C.b		; 00 5C
	brk $3C.b		; 00 3C
	brk $2C.b		; 00 2C
	brk $1A.b		; 00 1A
	brk $16.b		; 00 16
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $06.b		; 05 06
	ora $7F7E1F.l,X		; 1F 1F 7E 7F
	adc $1EFE.w,X		; 7D FE 1E
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	tsb $3E7F.w		; 0C 7F 3E
	sbc $00FE60.l,X		; FF 60 FE 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $003F.w,X		; 1E 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $213F.w,X		; 1E 3F 21
	brk $00.b		; 00 00
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
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $362E.w		; 1C 2E 36
	and $0F3E23.l,X		; 3F 23 3E 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	clc		; 18
	rol $7720.w,X		; 3E 20 77
	brk $63.b		; 00 63
	php		; 08
	ora $000000.l		; 0F 00 00 00
	brk $80.b		; 00 80
	jsr $60C0.w		; 20 C0 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	sta [$16.b],Y		; 97 16
	rts		; 60

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F02.w		; 0E 02 1F
	tsb $3E.b		; 04 3E
	tsb $0426.w		; 0C 26 04
	rol $08.b		; 26 08
	rol $7817.w		; 2E 17 78
	ora $3966.w,X		; 1D 66 39
	cli		; 58
	.db $62, $20, $52		; 62 20 52
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $14.b		; 00 14
	brk $28.b		; 00 28
	brk $20.b		; 00 20
	asl $00.b		; 06 00
	asl $3C00.w,X		; 1E 00 3C
	brk $3C.b		; 00 3C
	pla		; 68
	bpl 104.b		; 10 68
	bpl 104.b		; 10 68
	bpl 120.b		; 10 78
	brk $68.b		; 00 68
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1D0E.w,X		; 1E 0E 1D
	ora ($05.b,X)		; 01 05
	asl $0A.b,X		; 16 0A
	ora ($08.b,S),Y		; 13 08
	and $14.b,S		; 23 14
	and [$10.b]		; 27 10
	eor [$E8.b]		; 47 E8
	asl $0F06.w		; 0E 06 0F
	brk $03.b		; 00 03
	asl A		; 0A
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	brk $1A.b		; 00 1A
	brk $3C.b		; 00 3C
	ora ($34.b,X)		; 01 34
	ora ($FF.b,X)		; 01 FF
	.db $82, $5B, $5C		; 82 5B 5C
	cmp $DA5E.w,X		; DD 5E DA
	jmp $FFDE5D.l		; 5C 5D DE FF
	bra -62.b		; 80 C2
	ldy $D97C.w,X		; BC 7C D9
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	rti		; 40

	adc $00FE40.l,X		; 7F 40 FE 00
	bra   0.b		; 80 00
	lda $DB00.w,X		; BD 00 DB
	rol $18.b,X		; 36 18
	tda		; 7B
	bmi  53.b		; 30 35
	brk $15.b		; 00 15
	brk $27.b		; 00 27
	brk $2B.b		; 00 2B
	brk $4B.b		; 00 4B
	brk $6F.b		; 00 6F
	brk $00.b		; 00 00
	ora $3500.w,Y		; 19 00 35
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	brk $1A.b		; 00 1A
	brk $16.b		; 00 16
	brk $36.b		; 00 36
	brk $16.b		; 00 16
	lda $00EB02.l		; AF 02 EB 00
	cmp $0D00.w,X		; DD 00 0D
	eor ($0E.b)		; 52 0E
	eor ($87.b),Y		; 51 87
	cli		; 58
	bcs  79.b		; B0 4F
	bit #$0266.w		; 89 66 02
	eor ($00.b)		; 52 00
	mvn $76,$00		; 54 00 76
	brk $F7.b		; 00 F7
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	eor ($FC.b,X)		; 41 FC
	cop $F8.b		; 02 F8
	ora $C0.b,S		; 03 C0
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	asl $01.b		; 06 01
	asl A		; 0A
	ora ($08.b,X)		; 01 08
	ora $B8.b,S		; 03 B8
	brk $C0.b		; 00 C0
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$02.b]		; 07 02
	brk $94.b		; 00 94
	rts		; 60

	tay		; A8
	rti		; 40

	plp		; 28
	cpy #$8050.w		; C0 50 80
	rts		; 60

	bra -96.b		; 80 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	eor $7A0E.w		; 4D 0E 7A
	tsb $28FC.w		; 0C FC 28
	jmp.w [$7CA8]		; DC A8 7C
	tay		; A8
	ldy $FC68.w,X		; BC 68 FC
	php		; 08
	stz $0868.w		; 9C 68 08
	ldx $8C00.w,Y		; BE 00 8C
	php		; 08
	plp		; 28
	php		; 08
	tay		; A8
	php		; 08
	tay		; A8
	php		; 08
	pla		; 68
	php		; 08
	php		; 08
	php		; 08
	pla		; 68
	jsr ($FC58.w,X)		; FC 58 FC
	sec		; 38
	jsr ($FC38.w,X)		; FC 38 FC
	sec		; 38
	sed		; F8
	bpl -72.b		; 10 B8
	rti		; 40

	bcc  32.b		; 90 20
	cpx #$1800.w		; E0 00 18
	cli		; 58
	clc		; 18
	clv		; B8
	bpl  56.b		; 10 38
	bpl 120.b		; 10 78
	brk $30.b		; 00 30
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	and $0F00.w,X		; 3D 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	bvs  -3.b		; 70 FD
	ora $E0.b,S		; 03 E0
	ora $3EFF00.l,X		; 1F 00 FF 3E
	sbc $22E322.l,X		; FF 22 E3 22
	sbc $26.b,S		; E3 26
	sbc $00.b,S		; E3 00
	jsr ($E002.w,X)		; FC 02 E0
	asl $0000.w,X		; 1E 00 00
	brk $C0.b		; 00 C0
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
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
	brk $0F.b		; 00 0F
	ora $1F3F1F.l,X		; 1F 1F 3F 1F
	and $327F3A.l,X		; 3F 3A 7F 32
	adc $00FF60.l,X		; 7F 60 FF 00
	sbc $1FF20A.l,X		; FF 0A F2 1F
	clc		; 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $4D7F45.l,X		; 7F 45 7F 4D
	sbc $F2F39F.l,X		; FF 9F F3 F2
	sbc $F0E0.w		; ED E0 F0
	inc $FEFC.w,X		; FE FC FE
	inc $FF.b,X		; F6 FF
	stx $FF.b		; 86 FF
	tsb $FF.b		; 04 FF
	rts		; 60

	stz $1CE0.w,X		; 9E E0 1C
	bvs -40.b		; 70 D8
	inc $FE2E.w,X		; FE 2E FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora #$79FF.w		; 09 FF 79
	sbc $0686DB.l,X		; FF DB 86 06
	trb $44.b		; 14 44
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $00001F.l		; 0F 1F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	beq  -2.b		; F0 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	sei		; 78
	inc $252E.w,X		; FE 2E 25
	txy		; 9B
	and #$7897.w		; 29 97 78
	sta [$58.b]		; 87 58
	sta [$30.b]		; 87 30
	cmp $E08E71.l		; CF 71 8E E0
	ora ($B8.b,X)		; 01 B8
	and $F802.w,Y		; 39 02 F8
	asl $F0.b		; 06 F0
	ora [$B0.b]		; 07 B0
	ora [$B0.b]		; 07 B0
	asl $C0.b		; 06 C0
	brk $C0.b		; 00 C0
	brk $9E.b		; 00 9E
	brk $7E.b		; 00 7E
	bra -16.b		; 80 F0
	bpl  -8.b		; 10 F8
	clc		; 18
	jsr ($9F4F.w,X)		; FC 4F 9F
	tad		; 5B
	ora [$C5.b]		; 07 C5
	ora $E2.b,S		; 03 E2
	ora ($E1.b,X)		; 01 E1
	brk $60.b		; 00 60
	php		; 08
	bne  28.b		; D0 1C
	dey		; 88
	and $013F05.l,X		; 3F 05 3F 01
	sta [$00.b]		; 87 00
	sta $00.b,S		; 83 00
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1B.b		; 00 1B
	tsb $3B.b		; 04 3B
	asl A		; 0A
	ora $1735.w		; 0D 35 17
	lsr A		; 4A
	and $008A.w		; 2D 8A 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0A.b		; 05 0A
	asl $0704.w		; 0E 04 07
	sec		; 38
	cop $F0.b		; 02 F0
	cop $30.b		; 02 30
	jmp $6E12.w		; 4C 12 6E
	bne  47.b		; D0 2F
	dec A		; 3A
	cmp $59.b,S		; C3 59
	plp		; 28
	sbc $7A02.w,Y		; F9 02 7A
	brk $37.b		; 00 37
	clv		; B8
	eor [$40.b]		; 47 40
	adc $60.b		; 65 60
	and [$20.b]		; 27 20
	brk $C4.b		; 00 C4
	brk $E6.b		; 00 E6
	asl $30.b		; 06 30
	tsb $81.b		; 04 81
	brk $F9.b		; 00 F9
	bpl -128.b		; 10 80
	ldy #$A000.w		; A0 00 A0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0C.b,S		; 23 0C
	eor $08.b,X		; 55 08
	adc $18.b		; 65 18
	tsx		; BA
	brk $02.b		; 00 02
	brk $F4.b		; 00 F4
	sed		; F8
	jsr ($2000.w,X)		; FC 00 20
	sec		; 38
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	bvs  -8.b		; 70 F8
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$4000.w		; A0 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ldy #$A0E0.w		; A0 E0 A0
	jsr $7020.w		; 20 20 70
	beq  63.b		; F0 3F
	sbc $1C1FE7.l,X		; FF E7 1F 1C
	ora $03.b,S		; 03 03
	brk $20.b		; 00 20
	bcs  32.b		; B0 20
	bcs  32.b		; B0 20
	beq  16.b		; F0 10
	sbc $01FF0F.l,X		; FF 0F FF 01
	ora $000300.l,X		; 1F 00 03 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($1A.b,X)		; 01 1A
	ora $D7.b		; 05 D7
	nop		; EA
	sbc $F0EFF0.l,X		; FF F0 EF F0
	cmp $003F20.l		; CF 20 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($E4.b,X)		; 01 E4
	brk $EA.b		; 00 EA
	cpx #$00F2.w		; E0 F2 00
	sbc ($00.b)		; F2 00
	bit $00.b,X		; 34 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0863.w		; 2E 63 08
	adc $08.b,S		; 63 08
	adc $0C.b,S		; 63 0C
	ror $0C.b		; 66 0C
	ror $0C.b		; 66 0C
	ror $04.b		; 66 04
	ror $08.b		; 66 08
	ror $001C.w		; 6E 1C 00
	rol $3E00.w,X		; 3E 00 3E
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	brk $17.b		; 00 17
	sei		; 78
	ora $3966.w,X		; 1D 66 39
	cli		; 58
	.db $62, $20, $52		; 62 20 52
	brk $A2.b		; 00 A2
	bpl -94.b		; 10 A2
	bpl -94.b		; 10 A2
	bpl  40.b		; 10 28
	brk $20.b		; 00 20
	asl $00.b		; 06 00
	asl $3C00.w,X		; 1E 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	ldy $10.b		; A4 10
	ldy $10.b		; A4 10
	ldy $10.b		; A4 10
	stz $10.b		; 64 10
	stz $10.b		; 64 10
	stz $10.b		; 64 10
	pla		; 68
	bpl 120.b		; 10 78
	brk $00.b		; 00 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $D4.b		; 00 D4
	brk $5C.b		; 00 5C
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	ora $3F1F3F.l,X		; 1F 3F 1F 3F
	dec A		; 3A
	adc $607F32.l,X		; 7F 32 7F 60
	sbc $0AFF00.l,X		; FF 00 FF 0A
	sbc ($69.b)		; F2 69
	stz $2D3F.w		; 9C 3F 2D
	and $457F20.l,X		; 3F 20 7F 45
	adc $9FFF4D.l,X		; 7F 4D FF 9F
	sbc ($F2.b,S),Y		; F3 F2
	sbc $87E0.w		; ED E0 87
	bra  -4.b		; 80 FC
	inc $FFF6.w,X		; FE F6 FF
	stx $FF.b		; 86 FF
	tsb $FF.b		; 04 FF
	rts		; 60

	stz $1CE0.w,X		; 9E E0 1C
	bvs -36.b		; 70 DC
	cpx #$FE48.w		; E0 48 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora #$79FF.w		; 09 FF 79
	sbc $0686DB.l,X		; FF DB 86 06
	trb $44.b		; 14 44
	tsb $44.b		; 04 44
	cld		; D8
	rts		; 60

	rep #$07		; C2 07
	rol $26FB.w,X		; 3E FB 26
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	adc $2E.b,S		; 63 2E
	adc $04.b,S		; 63 04
	sec		; 38
	mvp $5C,$00		; 44 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
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
	brk $55.b		; 00 55
	clc		; 18
	lda [$39.b]		; A7 39
	wai		; CB
	sbc [$03.b],Y		; F7 03
	cmp $01.b,S		; C3 01
	sta $00.b,S		; 83 00
	ora ($1C.b,X)		; 01 1C
	brk $02.b		; 00 02
	ora #$02E8.w		; 09 E8 02
	cmp ($01.b),Y		; D1 01
	ora ($07.b,X)		; 01 07
	sta ($07.b,X)		; 81 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $1D.b		; 00 1D
	tyx		; BB
	ldy $B9B7.w,X		; BC B7 B9
	tsx		; BA
	lda $0087.w,X		; BD 87 00
	sta [$78.b]		; 87 78
	plx		; FA
	lda $3F.b,X		; B5 3F
	ora $FEFD.w		; 0D FD FE
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $B5.b		; 00 B5
	brk $CD.b		; 00 CD
	sei		; 78
	inc $003C.w,X		; FE 3C 00
	bit $1A00.w		; 2C 00 1A
	brk $16.b		; 00 16
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A000.w		; C0 00 A0
	brk $90.b		; 00 90
	jsr $2050.w		; 20 50 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	pha		; 48
	bmi  72.b		; 30 48
	bmi  72.b		; 30 48
	bmi  72.b		; 30 48
	bpl  68.b		; 10 44
	clc		; 18
	cpy $08.b		; C4 08
	cpy $08.b		; C4 08
	iny		; C8
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora #$1602.w		; 09 02 16
	brk $1A.b		; 00 1A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $F00F00.l		; 0F 00 0F F0
	clc		; 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -30.b		; 80 E2
	ora ($C3.b,X)		; 01 C3
	rti		; 40

	sta ($42.b,X)		; 81 42
	eor ($C4.b,X)		; 41 C4
	.db $42, $C8		; 42 C8
	sta [$13.b]		; 87 13
	asl A		; 0A
	lda $9A.b,S		; A3 9A
	and $00.b,S		; 23 00
	ora ($00.b,X)		; 01 00
	rts		; 60

	ora ($60.b,X)		; 01 60
	ora $E0.b,S		; 03 E0
	ora [$E0.b]		; 07 E0
	tsb $1D40.w		; 0C 40 1D
	cpy #$001D.w		; C0 1D 00
	asl A		; 0A
	ora $0D0A.w		; 0D 0A 0D
	tsb $1E0A.w		; 0C 0A 1E
	ora ($2B.b,X)		; 01 2B
	bpl 117.b		; 10 75
	jsr $40E7.w		; 20 E7 40
	rtl		; 6B

	brk $00.b		; 00 00
	ora $1D00.w,X		; 1D 00 1D
	brk $1B.b		; 00 1B
	brk $09.b		; 00 09
	brk $14.b		; 00 14
	brk $2B.b		; 00 2B
	brk $5A.b		; 00 5A
	brk $16.b		; 00 16
	sbc $FFFE.w,X		; FD FE FF
	jsr ($0A0D.w,X)		; FC 0D 0A
	xce		; FB
	sbc $F2.b,X		; F5 F2
	tsb $00AE.w		; 0C AE 00
	lda [$11.b]		; A7 11
	and $9B.b		; 25 9B
	sei		; 78
	inc $FC78.w,X		; FE 78 FC
	brk $FA.b		; 00 FA
	bvs -12.b		; 70 F4
	ora ($0C.b,X)		; 01 0C
	ora ($5C.b,X)		; 01 5C
	brk $F8.b		; 00 F8
	cop $F8.b		; 02 F8
	trb $47.b		; 14 47
	bit $87.b,X		; 34 87
	pla		; 68
	asl $0EC8.w		; 0E C8 0E
	bcc  28.b		; 90 1C
	bcs  60.b		; B0 3C
	rts		; 60

	sei		; 78
	cpy #$3AF0.w		; C0 F0 3A
	brk $7A.b		; 00 7A
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $E8.b		; 00 E8
	brk $C8.b		; 00 C8
	brk $90.b		; 00 90
	brk $20.b		; 00 20
	brk $57.b		; 00 57
	brk $97.b		; 00 97
	brk $EF.b		; 00 EF
	brk $4F.b		; 00 4F
	brk $3F.b		; 00 3F
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	and $6D00.w		; 2D 00 6D
	brk $1D.b		; 00 1D
	brk $3B.b		; 00 3B
	brk $1B.b		; 00 1B
	brk $0B.b		; 00 0B
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	ora [$0D.b]		; 07 0D
	ora [$15.b],Y		; 17 15
	eor ($11.b),Y		; 51 11
	tas		; 1B
	ora [$09.b]		; 07 09
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl A		; 0A
	ora ($1D.b,X)		; 01 1D
	ora ($5D.b,X)		; 01 5D
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($7E.b)		; 12 7E
	cop $3E.b		; 02 3E
	ora ($1F.b,X)		; 01 1F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	asl $01.b		; 06 01
	php		; 08
	ora [$25.b]		; 07 25
	brk $15.b		; 00 15
	brk $0A.b		; 00 0A
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $E0.b		; 06 E0
	clc		; 18
	cpx #$F018.w		; E0 18 F0
	clc		; 18
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	beq -120.b		; F0 88
	bcs -120.b		; B0 88
	bvc -52.b		; 50 CC
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $05.b		; 00 05
	asl $1F.b		; 06 1F
	brk $09.b		; 00 09
	asl $0F0C.w		; 0E 0C 0F
	ora [$06.b]		; 07 06
	ora #$1704.w		; 09 04 17
	brk $3A.b		; 00 3A
	ora ($00.b,X)		; 01 00
	ora $000000.l		; 0F 00 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $0600.w		; 0E 00 06
	brk $09.b		; 00 09
	brk $1D.b		; 00 1D
	lda $A742.w,X		; BD 42 A7
	brk $53.b		; 00 53
	ora $EB0FB7.l		; 0F B7 0F EB
	asl $AF.b		; 06 AF
	rti		; 40

	lsr $88.b,X		; 56 88
	eor [$88.b],Y		; 57 88
	brk $46.b		; 00 46
	brk $58.b		; 00 58
	brk $BF.b		; 00 BF
	brk $4F.b		; 00 4F
	brk $76.b		; 00 76
	brk $FA.b		; 00 FA
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	asl $9FC1.w		; 0E C1 9F
	plp		; 28
	adc $8A8504.l		; 6F 04 85 8A
	eor $DA.b,X		; 55 DA
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cpy #$F408.w		; C0 08 F4
	ora $70.b		; 05 70
	ora $A0.b,S		; 03 A0
	ora $FF.b,S		; 03 FF
	sbc $0FFF3F.l,X		; FF 3F FF 0F
	sbc $80FF0C.l,X		; FF 0C FF 80
	adc $BE0E71.l,X		; 7F 71 0E BE
	brk $ED.b		; 00 ED
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	cpy #$F0FF.w		; C0 FF F0
	sbc $7E7EF3.l,X		; FF F3 7E 7E
	asl $018E.w		; 0E 8E 01
	cpy #$F002.w		; C0 02 F0
	bcs   0.b		; B0 00
	beq   0.b		; F0 00
	inx		; E8
	brk $68.b		; 00 68
	brk $E8.b		; 00 E8
	brk $18.b		; 00 18
	jsr $30E0.w		; 20 E0 30
	cpy #$0010.w		; C0 10 00
	cpy #$A000.w		; C0 00 A0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $10.b		; 00 10
	cpx #$C000.w		; E0 00 C0
	brk $E0.b		; 00 E0
	brk $3C.b		; 00 3C
	brk $74.b		; 00 74
	tas		; 1B
	tad		; 5B
	and $FD.b		; 25 FD
	cpx #$F2EE.w		; E0 EE F2
	sbc $F8F3.w		; ED F3 F8
	sbc [$D0.b]		; E7 D0
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	clc		; 18
	brk $EC.b		; 00 EC
	eor $E8.b,S		; 43 E8
	cmp ($F0.b,X)		; C1 F0
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	sta ($E0.b,X)		; 81 E0
	bra -32.b		; 80 E0
	adc [$18.b]		; 67 18
	adc $18.b		; 65 18
	ldx $AA10.w		; AE 10 AA
	bpl -116.b		; 10 8C
	bmi -44.b		; 30 D4
	jsr $20D8.w		; 20 D8 20
	iny		; C8
	jsr $3E00.w		; 20 00 3E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	ora ($00.b,X)		; 01 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	jsr $00F8.w		; 20 F8 00
	beq   0.b		; F0 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	cld		; D8
	bvs 112.b		; 70 70
	ldy #$0020.w		; A0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	cli		; 58
	cld		; D8
	plp		; 28
	inx		; E8
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	pha		; 48
	php		; 08
	jmp $002C08.l		; 5C 08 2C 00
	mvp $0F,$0F		; 44 0F 0F
	ora $0F7F0F.l		; 0F 0F 7F 0F
	and $303F36.l		; 2F 36 3F 30
	and $38.b,X		; 35 38
	and $3A.b,X		; 35 3A
	and $0732.w		; 2D 32 07
	ora $061F07.l,X		; 1F 07 1F 06
	ora $007600.l		; 0F 00 76 00
	sei		; 78
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	cmp $C1F6C0.l		; CF C0 F6 C1
	phx		; DA
	and $B8.b,X		; 35 B8
	stz $78.b,X		; 74 78
	beq 120.b		; F0 78
	beq -72.b		; F0 B8
	bvs -24.b		; 70 E8
	bpl -128.b		; 10 80
	beq -64.b		; F0 C0
	iny		; C8
	brk $34.b		; 00 34
	brk $F6.b		; 00 F6
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $34.b		; 00 34
	tay		; A8
	bpl -112.b		; 10 90
	dey		; 88
	pha		; 48
	cpy $E026.w		; CC 26 E0
	ora $320B7A.l,X		; 1F 7A 0B 32
	ora ($04.b),Y		; 11 04
	asl $6000.w		; 0E 00 60
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $58.b		; 00 58
	brk $20.b		; 00 20
	cop $10.b		; 02 10
	asl $00.b		; 06 00
	asl $0000.w		; 0E 00 00
	asl $0A0C.w		; 0E 0C 0A
	tsb $181C.w		; 0C 1C 18
	stz $78.b,X		; 74 78
	jmp ($2C40.w,X)		; 7C 40 2C
	rti		; 40

	pla		; 68
	bpl  16.b		; 10 10
	brk $08.b		; 00 08
	trb $1C08.w		; 1C 08 1C
	bpl 120.b		; 10 78
	jsr $40F8.w		; 20 F8 40
	cpy #$D800.w		; C0 00 D8
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	ora ($10.b,X)		; 01 10
	ora ($14.b,X)		; 01 14
	ora ($16.b,X)		; 01 16
	ora ($17.b,X)		; 01 17
	brk $1D.b		; 00 1D
	ora $10.b,S		; 03 10
	brk $14.b		; 00 14
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	ora ($0C.b,X)		; 01 0C
	brk $08.b		; 00 08
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	clc		; 18
	cpy $EC28.w		; CC 28 EC
	rti		; 40

	cpy $9890.w		; CC 90 98
	bne  24.b		; D0 18
	cpx #$20D0.w		; E0 D0 20
	brk $A0.b		; 00 A0
	brk $70.b		; 00 70
	brk $50.b		; 00 50
	brk $B8.b		; 00 B8
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	ror $01.b,X		; 76 01
	jmp.w [$EF03]		; DC 03 EF
	brk $7D.b		; 00 7D
	cop $3C.b		; 02 3C
	ora $06.b,S		; 03 06
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsa		; 3B
	brk $77.b		; 00 77
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $10AD10.l		; CF 10 AD 10
	lda $201F10.l		; AF 10 1F 20
	sbc [$00.b],Y		; F7 00
	and $FC44C1.l,X		; 3F C1 44 FC
	and $FC.b		; 25 FC
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $3A.b		; 00 3A
	cpy #$AB00.w		; C0 00 AB
	brk $4B.b		; 00 4B
	brk $28.b		; 00 28
	sbc [$1E.b],Y		; F7 1E
	adc #$1877.w		; 69 77 18
	and $0F0F06.l		; 2F 06 0F 0F
	ora $08000F.l		; 0F 0F 00 08
	ora $07.b,S		; 03 07
	bvc   7.b		; 50 07
	jsr $0009.w		; 20 09 00
	inc A		; 1A
	brk $1E.b		; 00 1E
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	inc $01.b,X		; F6 01
	tsx		; BA
	brk $41.b		; 00 41
	bra -96.b		; 80 A0
	rti		; 40

	bne  32.b		; D0 20
	jsr ($3F80.w,X)		; FC 80 3F
	rti		; 40

	sta $F80090.l		; 8F 90 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $CF.b		; 00 CF
	brk $F3.b		; 00 F3
	phd		; 0B
	tsb $15.b		; 04 15
	brk $16.b		; 00 16
	php		; 08
	and ($08.b)		; 32 08
	jmp ($F410.w)		; 6C 10 F4
	brk $B8.b		; 00 B8
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $50.b		; 00 50
	brk $10.b		; 00 10
	tay		; A8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B0.b		; 00 B0
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	tsb $1F.b		; 04 1F
	trb $1E1D.w		; 1C 1D 1E
	ora $3F3E.w,X		; 1D 3E 3F
	bit $3C3A.w,X		; 3C 3A 3C
	bit $38.b,X		; 34 38
	pla		; 68
	bvs   0.b		; 70 00
	ora $3D08.w,X		; 1D 08 3D
	clc		; 18
	rol $7E18.w,X		; 3E 18 7E
	bpl 124.b		; 10 7C
	bmi 124.b		; 30 7C
	jsr $2078.w		; 20 78 20
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$07.b]		; 07 07
	ora $3F7F1F.l,X		; 1F 1F 7F 3F
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	asl $1F.b		; 06 1F
	inc A		; 1A
	adc $407F67.l,X		; 7F 67 7F 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	sed		; F8
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F0C0.w		; C0 C0 F0
	bmi  -8.b		; 30 F8
	php		; 08
	inc $FF0E.w,X		; FE 0E FF
	lda $0000.w,Y		; B9 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	asl $0F.b		; 06 0F
	asl A		; 0A
	ora $183F18.l,X		; 1F 18 3F 18
	and $030000.l,X		; 3F 00 00 03
	ora $07.b,S		; 03 07
	tsb $0F.b		; 04 0F
	asl A		; 0A
	ora $151F09.l		; 0F 09 1F 15
	and $373F27.l,X		; 3F 27 3F 37
	brk $FC.b		; 00 FC
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	stp		; DB
	sbc $00FF40.l,X		; FF 40 FF 00
	sbc $BDCC30.l,X		; FF 30 CC BD
	dec $FC.b		; C6 FC
	jsr ($36FE.w,X)		; FC FE 36
	sbc $24FF81.l,X		; FF 81 FF 24
	sbc $E4FEBF.l,X		; FF BF FE E4
	sta [$00.b]		; 87 00
	ora $20.b,S		; 03 20
	trb $3C7F.w		; 1C 7F 3C
	adc $08CE48.l,X		; 7F 48 CE 08
	stx $9C10.w		; 8E 10 9C
	bpl -100.b		; 10 9C
	pha		; 48
	dec $FF3C.w		; CE 3C FF
	jsl $000200.l		; 22 00 02 00
	bit $00.b,X		; 34 00
	stz $00.b,X		; 74 00
	pla		; 68
	brk $68.b		; 00 68
	brk $34.b		; 00 34
	brk $42.b		; 00 42
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
	brk $0E.b		; 00 0E
	beq  61.b		; F0 3D
	plp		; 28
	lda $16.b,S		; A3 16
	sbc $C32DC0.l,X		; FF C0 2D C3
	sbc [$03.b],Y		; F7 03
	sta $038503.l		; 8F 03 85 03
	brk $00.b		; 00 00
	cpy #$C00E.w		; C0 0E C0
	ora $C01400.l,X		; 1F 00 14 C0
	tas		; 1B
	ora ($0B.b,X)		; 01 0B
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$0107.w		; E0 07 01
	ora $03.b		; 05 03
	trb $1E02.w		; 1C 02 1E
	ora $1B.b		; 05 1B
	tsb $15.b		; 04 15
	php		; 08
	ora $0A.b,X		; 15 0A
	ora $0A.b,X		; 15 0A
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	lda $DC9CBF.l,X		; BF BF 9C DC
	stp		; DB
	stp		; DB
	ora [$C7.b],Y		; 17 C7
	sbc [$17.b]		; E7 17
	and $67FFF7.l,X		; 3F F7 FF 67
	ror $3E0E.w,X		; 7E 0E 3E
	sbc $10FF18.l,X		; FF 18 FF 10
	sbc $07EF03.l,X		; FF 03 EF 07
	ora $06F707.l,X		; 1F 07 F7 06
	adc [$04.b]		; 67 04
	ora $070003.l		; 0F 03 00 07
	cop $0F.b		; 02 0F
	asl $3D.b		; 06 3D
	rol $3926.w,X		; 3E 26 39
	sei		; 78
	jsl $232451.l		; 22 51 24 23
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $36.b		; 00 36
	jsr $007E.w		; 20 7E 00
	sei		; 78
	ora ($20.b,X)		; 01 20
	ora $20.b,S		; 03 20
	ora [$00.b]		; 07 00
	sbc [$08.b],Y		; F7 08
	inc $9701.w,X		; FE 01 97
	sei		; 78
	adc ($C3.b,S),Y		; 73 C3
	adc $03F300.l,X		; 7F 00 F3 03
	cpy $000F.w		; CC 0F 00
	adc $003900.l,X		; 7F 00 39 00
	ora [$28.b]		; 07 28
	brk $3C.b		; 00 3C
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F3.b		; 00 F3
	brk $E0.b		; 00 E0
	brk $FB.b		; 00 FB
	brk $F5.b		; 00 F5
	brk $BB.b		; 00 BB
	rti		; 40

	rol A		; 2A
	rti		; 40

	and #$3440.w		; 29 40 34
	rti		; 40

	trb $60.b		; 14 60
	stz $0060.w		; 9C 60 00
	mvn $5A,$00		; 54 00 5A
	brk $6C.b		; 00 6C
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	tsb $B8.b		; 04 B8
	dey		; 88
	brk $F8.b		; 00 F8
	bra -48.b		; 80 D0
	rts		; 60

	ldy #$C040.w		; A0 40 C0
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	sed		; F8
	brk $70.b		; 00 70
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	txs		; 9A
	brk $4A.b		; 00 4A
	brk $25.b		; 00 25
	brk $12.b		; 00 12
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jmp ($3C00.w,X)		; 7C 00 3C
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $78C0.w		; 20 C0 78
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$E0C0.w		; C0 C0 E0
	cpx #$C0C0.w		; E0 C0 C0
	bra -128.b		; 80 80
	jmp ($DCA3.w)		; 6C A3 DC
	mvn $A0,$B7		; 54 B7 A0
	adc [$A7.b],Y		; 77 A7
	jmp.w [$D82F]		; DC 2F D8
	ora [$01.b]		; 07 01
	stx $BFBE.w		; 8E BE BF
	bra -72.b		; 80 B8
	eor ($70.b,S),Y		; 53 70
	and $A008E0.l		; 2F E0 08 A0
	ora $20.b,S		; 03 20
	brk $30.b		; 00 30
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$C0F8.w		; C0 F8 C0
	bmi -72.b		; 30 B8
	brk $77.b		; 00 77
	bra   3.b		; 80 03
	jsr ($037C.w,X)		; FC 7C 03
	sbc ($00.b,S),Y		; F3 00
	asl $3080.w		; 0E 80 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	clc		; 18
	and $0D3F18.l,X		; 3F 18 3F 0D
	rol $1F00.w,X		; 3E 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $263F26.l,X		; 3F 26 3F 26
	rol $1D32.w,X		; 3E 32 1D
	trb $0606.w		; 1C 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -93.b		; F0 A3
	ldx $3E83.w,Y		; BE 83 3E
	sta $81.b,S		; 83 81
	dec A		; 3A
	lsr $FC.b		; 46 FC
	dec A		; 3A
	jsr ($7805.w,X)		; FC 05 78
	asl $01.b		; 06 01
	rol $28.b		; 26 28
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $5E.b		; 00 5E
	brk $B8.b		; 00 B8
	ora ($44.b,X)		; 01 44
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora ($07.b,X)		; 01 07
	ror $310F.w,X		; 7E 0F 31
	rol $0E.b,X		; 36 0E
	ora ($00.b),Y		; 11 00
	ora #$0400.w		; 09 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	brk $78.b		; 00 78
	brk $34.b		; 00 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	.db $42, $81		; 42 81
	eor $AF00.w		; 4D 00 AF
	cpy $EB.b		; C4 EB
	dec $D9.b		; C6 D9
	sbc [$88.b]		; E7 88
	sta [$6F.b]		; 87 6F
	bvs  -9.b		; 70 F7
	dey		; 88
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $C4.b		; 00 C4
	bra -58.b		; 80 C6
	bra -17.b		; 80 EF
	brk $F7.b		; 00 F7
	rti		; 40

	inc $80.b,X		; F6 80
	dey		; 88
	cpx #$60E0.w		; E0 E0 60
	cpx #$6060.w		; E0 60 60
	bcs 112.b		; B0 70
	bcs  48.b		; B0 30
	beq 120.b		; F0 78
	jmp ($DCF8.w,X)		; 7C F8 DC
	tya		; 98
	rti		; 40

	beq  96.b		; F0 60
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	sei		; 78
	jsr $3078.w		; 20 78 30
	jmp ($F850.w,X)		; 7C 50 F8
	brk $B8.b		; 00 B8
	ora $0F02.w		; 0D 02 0F
	asl $0E.b		; 06 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	and $2507.w		; 2D 07 25
	and $106F02.l,X		; 3F 02 6F 10
	tda		; 7B
	brk $F7.b		; 00 F7
	rti		; 40

	cmp #$3A02.w		; C9 02 3A
	tsb $01.b		; 04 01
	ora $000D10.l,X		; 1F 10 0D 00
	cop $00.b		; 02 00
	and $0500.w,Y		; 39 00 05
	brk $49.b		; 00 49
	brk $37.b		; 00 37
	brk $CF.b		; 00 CF
	ora [$09.b]		; 07 09
	asl $10.b		; 06 10
	php		; 08
	clc		; 18
	ora [$1F.b]		; 07 1F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $000700.l		; 0F 00 07 00
	php		; 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	beq  16.b		; F0 10
	plp		; 28
	and [$50.b],Y		; 37 50
	inx		; E8
	lda [$D0.b]		; A7 D0
	eor $3FA040.l		; 4F 40 A0 3F
	cpy #$7F00.w		; C0 00 7F
	bcc   0.b		; 90 00
	cpx #$C00F.w		; E0 0F C0
	ora $403F20.l,X		; 1F 20 3F 40
	adc $003F80.l,X		; 7F 80 3F 00
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	cpx #$E11E.w		; E0 1E E1
	stz $7863.w		; 9C 63 78
	sta [$61.b]		; 87 61
	ror $FC83.w,X		; 7E 83 FC
	ora $FC.b,S		; 03 FC
	ror $F8.b		; 66 F8
	brk $F6.b		; 00 F6
	brk $F4.b		; 00 F4
	cop $70.b		; 02 70
	sty $00.b		; 84 00
	tya		; 98
	brk $64.b		; 00 64
	brk $98.b		; 00 98
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $28.b		; 00 28
	cpy #$6098.w		; C0 98 60
	cli		; 58
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ldy $10.b		; A4 10
	jmp $002A00.l		; 5C 00 2A 00
	asl $0E00.w,X		; 1E 00 0E
	brk $0A.b		; 00 0A
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $90.b		; 00 90
	brk $D0.b		; 00 D0
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	tay		; A8
	brk $68.b		; 00 68
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	adc $1D3E1E.l,X		; 7F 1E 3E 1D
	ora $1D1D.w,X		; 1D 1D 1D
	phd		; 0B
	asl A		; 0A
	eor ($32.b,S),Y		; 53 32
	ror $9C0C.w,X		; 7E 0C 9C
	brk $1E.b		; 00 1E
	adc $187F1C.l,X		; 7F 1C 7F 18
	and $023F09.l,X		; 3F 09 3F 02
	rol $3E00.w,X		; 3E 00 3E
	tsb $0D.b		; 04 0D
	brk $63.b		; 00 63
	adc $C39D40.l,X		; 7F 40 9D C3
	adc ($80.b,S),Y		; 73 80
	ldx $F700.w		; AE 00 F7
	brk $FD.b		; 00 FD
	brk $AA.b		; 00 AA
	bpl -42.b		; 10 D6
	php		; 08
	brk $C0.b		; 00 C0
	brk $E3.b		; 00 E3
	brk $8C.b		; 00 8C
	brk $77.b		; 00 77
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	ora $3F1F3F.l		; 0F 3F 1F 3F
	and $00007F.l,X		; 3F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $303F1C.l,X		; 1F 1C 3F 30
	and $567F20.l,X		; 3F 20 7F 56
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	inc $FFFE.w,X		; FE FE FF
	inc $00FF.w		; EE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$30F0.w		; C0 F0 30
	inc $FF6E.w,X		; FE 6E FF
	sta ($FF.b,X)		; 81 FF
	ora ($02.b),Y		; 11 02
	rol $1F00.w,X		; 3E 00 1F
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $081F00.l		; 0F 00 1F 08
	and $303114.l,X		; 3F 14 31 30
	ora $021C.w,X		; 1D 1C 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	php		; 08
	brk $14.b		; 00 14
	trb $78.b		; 14 78
	sta $0DF0.w		; 8D F0 0D
	beq 122.b		; F0 7A
	ora ($6D.b,X)		; 01 6D
	cmp ($D5.b),Y		; D1 D5
	lda $9DED.w		; AD ED 9D
	cmp $E03D.w,X		; DD 3D E0
	ora $70.b,S		; 03 70
	asl $00.b		; 06 00
	asl $DD00.w		; 0E 00 DD
	bra  19.b		; 80 13
	ora ($2F.b,X)		; 01 2F
	ora ($1F.b,X)		; 01 1F
	ora ($3F.b,X)		; 01 3F
	beq   0.b		; F0 00
	cld		; D8
	eor [$B9.b],Y		; 57 B9
	lda #$A0B7.w		; A9 B7 A0
	ldy $502C.w,X		; BC 2C 50
	lda $CCCFB0.l		; AF B0 CF CC
	cpx #$0800.w		; E0 00 08
	bvc 112.b		; 50 70
	ldx $E0.b		; A6 E0
	ora $6003E0.l		; 0F E0 03 60
	ora [$A0.b]		; 07 A0
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E1C3.w		; E0 C3 E1
	ora ($03.b,S),Y		; 13 03
	lda $DFFFDF.l,X		; BF DF FF DF
	inc $D1AF.w		; EE AF D1
	ldx $C0.b,Y		; B6 C0
	sbc ($C0.b),Y		; F1 C0
	sbc ($C0.b),Y		; F1 C0
	sbc ($01.b),Y		; F1 01
	sbc $8EDF0F.l		; EF 0F DF 8E
	cmp $00BF84.l,X		; DF 84 BF 00
	ldx $0502.w,Y		; BE 02 05
	ora $3F1E.w,X		; 1D 1E 3F
	ror $FEFD.w,X		; 7E FD FE
	inc $F8.b,X		; F6 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7E0C.w,X		; 1D 0C 7E
	trb $F0FE.w		; 1C FE F0
	inc $F800.w,X		; FE 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor #$73CE.w		; 49 CE 73
	jsr ($FE00.w,X)		; FC 00 FE
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b,X		; 34 00
	php		; 08
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0803.w		; 0C 03 08
	ora [$08.b]		; 07 08
	ora $100618.l		; 0F 18 06 10
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $06F500.l		; 0F 00 F5 06
	xba		; EB
	tsb $1CF2.w		; 0C F2 1C
	cmp $18.b		; C5 18
	lda $38.b		; A5 38
	lsr A		; 4A
	bvs -108.b		; 70 94
	cpx #$E088.w		; E0 88 E0
	sed		; F8
	brk $F4.b		; 00 F4
	brk $E8.b		; 00 E8
	ora ($F0.b,X)		; 01 F0
	ora $D0.b,S		; 03 D0
	cop $A0.b		; 02 A0
	tsb $40.b		; 04 40
	php		; 08
	rti		; 40

	bpl -88.b		; 10 A8
	brk $78.b		; 00 78
	brk $94.b		; 00 94
	brk $6A.b		; 00 6A
	brk $96.b		; 00 96
	brk $0A.b		; 00 0A
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	sed		; F8
	brk $9C.b		; 00 9C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $AB3C.w		; 2C 3C AB
	eor [$9E.b]		; 47 9E
	eor $00004F.l		; 4F 4F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $7F04.w,X		; 3C 04 7F
	ora ($77.b,X)		; 01 77
	brk $6F.b		; 00 6F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	asl $00.b,X		; 16 00
	and #$5601.w		; 29 01 56
	phd		; 0B
	rol A		; 2A
	eor ($DE.b),Y		; 51 DE
	cpx #$E0F4.w		; E0 F4 E0
	cld		; D8
	cpx #$0007.w		; E0 07 00
	ora $100600.l		; 0F 00 06 10
	ora ($28.b,X)		; 01 28
	brk $D4.b		; 00 D4
	cpy #$C0E8.w		; C0 E8 C0
	inx		; E8
	brk $E0.b		; 00 E0
	mvn $A4,$00		; 54 00 A4
	php		; 08
	bit $08.b,X		; 34 08
	lsr $18.b		; 46 18
	ldx $6600.w,Y		; BE 00 66
	tya		; 98
	bit #$748E.w		; 89 8E 74
	ora [$00.b]		; 07 00
	sbc $00DF00.l		; EF 00 DF 00
	cmp $00BD00.l,X		; DF 00 BD 00
	eor $18.b		; 45 18
	ora ($74.b,X)		; 01 74
	brk $FA.b		; 00 FA
	brk $95.b		; 00 95
	pha		; 48
	sta ($4C.b,S),Y		; 93 4C
	tax		; AA
	mvp $46,$A9		; 44 A9 46
	txy		; 9B
	adc $FD.b		; 65 FD
	ora $E0.b,S		; 03 E0
	ora [$F8.b]		; 07 F8
	ora $00.b,S		; 03 00
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $EC.b		; 00 EC
	cop $E0.b		; 02 E0
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	and $7F367F.l,X		; 3F 7F 36 7F
	bit $7F.b,X		; 34 7F
	and ($FE.b),Y		; 31 FE
	.db $62, $FC, $47		; 62 FC 47
	sbc $F505.w,X		; FD 05 F5
	ora ($74.b,X)		; 01 74
	adc $497F40.l,X		; 7F 40 7F 49
	adc $CCFE4A.l,X		; 7F 4A FE CC
	jsr ($F099.w,X)		; FC 99 F0
	lda ($EB.b),Y		; B1 EB
	sbc ($6F.b,X)		; E1 6F
	rts		; 60

	ror $FF.b		; 66 FF
	lsr A		; 4A
	sbc $90F788.l,X		; FF 88 F7 90
	ror $98.b		; 66 98
	jmp $1CE8.w		; 4C E8 1C
	beq   4.b		; F0 04
	cmp [$68.b]		; C7 68
	sbc $B5F799.l,X		; FF 99 F7 B5
	adc [$67.b]		; 67 67
	ror $0A.b		; 66 0A
	jsr $6008.w		; 20 08 60
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	brk $35.b		; 00 35
	asl $05.b		; 06 05
	bit $15.b		; 24 15
	lsr $37.b		; 46 37
	sty $6E.b		; 84 6E
	ora #$1B97.w		; 09 97 1B
	adc $B9.b		; 65 B9
	ldy #$0010.w		; A0 10 00
	asl $0E10.w		; 0E 10 0E
	bmi  15.b		; 30 0F
	bvs  14.b		; 70 0E
	beq   1.b		; F0 01
	pla		; 68
	ora $10.b,S		; 03 10
	sta $00.b,S		; 83 00
	eor ($ED.b,X)		; 41 ED
	sta $BD5D.w,X		; 9D 5D BD
	inc $E300.w,X		; FE 00 E3
	ora $4DBF.w,X		; 1D BF 4D
	sbc $7FFF73.l,X		; FF 73 FF 7F
	lda $BF017F.l,X		; BF 7F 01 BF
	brk $BF.b		; 00 BF
	brk $41.b		; 00 41
	brk $3D.b		; 00 3D
	ora ($4D.b,X)		; 01 4D
	eor $73.b,S		; 43 73
	and $7F1E7F.l,X		; 3F 7F 1E 7F
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $10.b		; 00 10
	cpy #$2048.w		; C0 48 20
	pei ($00.b)		; D4 00
	bit $00.b,X		; 34 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $38.b		; 00 38
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	tsb $BAF0.w		; 0C F0 BA
	bit $2F.b		; 24 2F
	brk $D3.b		; 00 D3
	ldy $70BF.w		; AC BF 70
	ply		; 7A
	sei		; 78
	jmp ($F8F8.w,X)		; 7C F8 F8
	beq   0.b		; F0 00
	brk $C0.b		; 00 C0
	tsb $12C0.w		; 0C C0 12
	brk $2C.b		; 00 2C
	brk $72.b		; 00 72
	bmi  -4.b		; 30 FC
	bvs  -8.b		; 70 F8
	rts		; 60

	beq -16.b		; F0 F0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	rti		; 40

	brk $B0.b		; 00 B0
	brk $C8.b		; 00 C8
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	trb $2F48.w		; 1C 48 2F
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bpl -64.b		; 10 C0
	bit $80.b,X		; 34 80
	sbc $FE41.w,Y		; F9 41 FE
	bra 127.b		; 80 7F
	brk $8F.b		; 00 8F
	bra 112.b		; 80 70
	beq   7.b		; F0 07
	sbc $007F00.l,X		; FF 00 7F 00
	ora ($3E.b,X)		; 01 3E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $8F.b		; 00 8F
	brk $78.b		; 00 78
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7040.w		; C0 40 70
	ldy #$003C.w		; A0 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $D0.b		; 00 D0
	brk $E8.b		; 00 E8
	ora $1C00FE.l		; 0F FE 00 1C
	brk $3F.b		; 00 3F
	sbc $00FE01.l,X		; FF 01 FE 00
	ora $000100.l,X		; 1F 00 01 00
	brk $F4.b		; 00 F4
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $1E.b		; 00 1E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	cpx #$5061.w		; E0 61 50
	sbc $5FC0A0.l		; EF A0 C0 5F
	sbc $40A080.l,X		; FF 80 A0 40
	adc $000080.l,X		; 7F 80 00 00
	brk $00.b		; 00 00
	bra  30.b		; 80 1E
	jsr $403F.w		; 20 3F 40
	adc $00BF00.l,X		; 7F 00 BF 00
	eor $000000.l,X		; 5F 00 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $E7.b		; 00 E7
	brk $06.b		; 00 06
	sed		; F8
	sed		; F8
	ora [$00.b]		; 07 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $00.b,S		; 83 00
	jmp ($1E00.w,X)		; 7C 00 1E
	sbc ($00.b,X)		; E1 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $00.b,S		; 83 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $3A3F1F.l,X		; 3F 1F 3F 3A
	adc $607F32.l,X		; 7F 32 7F 60
	sbc $0F0707.l,X		; FF 07 07 0F
	php		; 08
	ora $2D3F18.l,X		; 1F 18 3F 2D
	and $457F20.l,X		; 3F 20 7F 45
	adc $9FFF4D.l,X		; 7F 4D FF 9F
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	beq  -2.b		; F0 FE
	jsr ($F6FE.w,X)		; FC FE F6
	sbc $04FF86.l,X		; FF 86 FF 04
	sbc $809E60.l,X		; FF 60 9E 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE2E.w,X		; FE 2E FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora #$79FF.w		; 09 FF 79
	sbc $0686DB.l,X		; FF DB 86 06
	ora $E02EE0.l,X		; 1F E0 2E E0
	and $701760.l		; 2F 60 17 70
	ora [$30.b],Y		; 17 30
	phd		; 0B
	sec		; 38
	ora [$1C.b]		; 07 1C
	ora ($0C.b,X)		; 01 0C
	rts		; 60

	brk $5F.b		; 00 5F
	brk $1F.b		; 00 1F
	brk $2F.b		; 00 2F
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	bra -127.b		; 80 81
	cpy #$4001.w		; C0 01 40
	eor ($60.b,X)		; 41 60
	.db $82, $20, $E2		; 82 20 E2
	bmi -59.b		; 30 C5
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	ora ($C0.b,X)		; 01 C0
	ora ($E0.b,X)		; 01 E0
	ora $38.b,S		; 03 38
	sei		; 78
	clv		; B8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	brk $8E.b		; 00 8E
	ora ($F4.b,X)		; 01 F4
	ora $86.b,S		; 03 86
	cop $7F.b		; 02 7F
	tsb $18.b		; 04 18
	jsr ($FC98.w,X)		; FC 98 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	ora ($78.b,X)		; 01 78
	ora $80.b,S		; 03 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cpy $C6.b		; C4 C6
	ror $E003.w,X		; 7E 03 E0
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $1B.b		; 00 1B
	trb $3E.b		; 14 3E
	and ($35.b),Y		; 31 35
	and $3126.w,Y		; 39 26 31
	adc $001D00.l,X		; 7F 00 1D 00
	ora $5D20.w,X		; 1D 20 5D
	rts		; 60

	brk $36.b		; 00 36
	brk $75.b		; 00 75
	brk $7B.b		; 00 7B
	brk $79.b		; 00 79
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	brk $72.b		; 00 72
	brk $F2.b		; 00 F2
	rti		; 40

	cpx #$FFFF.w		; E0 FF FF
	sbc $FCF3FF.l,X		; FF FF F3 FC
	inc $E400.w,X		; FE 00 E4
	adc ($7B.b,X)		; 61 7B
	inc A		; 1A
	ror $0004.w,X		; 7E 04 00
	sbc $F0FF7F.l,X		; FF 7F FF F0
	sbc $00FC00.l,X		; FF 00 FC 00
	ora $00.b,S		; 03 00
	adc $049E18.l,X		; 7F 18 9E 04
	lda $00.b		; A5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $2094.w		; 0E 94 20
	stz $00.b,X		; 74 00
	pla		; 68
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	sei		; 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	brk $1B.b		; 00 1B
	tsb $16.b		; 04 16
	brk $2D.b		; 00 2D
	bpl  86.b		; 10 56
	jsr $0048.w		; 20 48 00
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	sec		; 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	cpy #$3F00.w		; C0 00 3F
	brk $06.b		; 00 06
	sed		; F8
	sec		; 38
	ora [$F3.b]		; 07 F3
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	bpl  15.b		; 10 0F
	asl $0012.w,X		; 1E 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	jsr $3300.w		; 20 00 33
	phx		; DA
	cmp ($27.b),Y		; D1 27
	inx		; E8
	tay		; A8
	sta $75.b,X		; 95 75
	and $9D.b		; 25 9D
	and $7B0B.w		; 2D 0B 7B
	adc $ECA0.w		; 6D A0 EC
	tas		; 1B
	rti		; 40

	sbc [$00.b],Y		; F7 00
	sec		; 38
	rti		; 40

	ora [$C0.b],Y		; 17 C0
	ora $880FE4.l		; 0F E4 0F 88
	ora $003200.l,X		; 1F 00 32 00
	tas		; 1B
	cld		; D8
	rti		; 40

	pla		; 68
	ldy #$08F4.w		; A0 F4 08
	jmp $A8FCA8.l		; 5C A8 FC A8
	sei		; 78
	bcc  -8.b		; 90 F8
	brk $98.b		; 00 98
	sec		; 38
	brk $20.b		; 00 20
	brk $90.b		; 00 90
	brk $08.b		; 00 08
	brk $A8.b		; 00 A8
	brk $A8.b		; 00 A8
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	clc		; 18
	jmp ($FF00.w,X)		; 7C 00 FF
	asl A		; 0A
	sbc ($69.b)		; F2 69
	stz $4C30.w		; 9C 30 4C
	ora ($6E.b)		; 12 6E
	bne  47.b		; D0 2F
	dec A		; 3A
	cmp $59.b,S		; C3 59
	plp		; 28
	sbc ($F2.b,S),Y		; F3 F2
	sbc $87E0.w		; ED E0 87
	bra  71.b		; 80 47
	rti		; 40

	adc $60.b		; 65 60
	and [$20.b]		; 27 20
	brk $C4.b		; 00 C4
	brk $E6.b		; 00 E6
	cpx #$701C.w		; E0 1C 70
	jmp.w [$48E0]		; DC E0 48
	beq  24.b		; F0 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	trb $44.b		; 14 44
	tsb $44.b		; 04 44
	cld		; D8
	rts		; 60

	cpx #$E000.w		; E0 00 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $F9.b		; 06 F9
	ora [$09.b]		; 07 09
	ora [$0C.b],Y		; 17 0C
	xba		; EB
	cpx $960B.w		; EC 0B 96
	ora $61.b		; 05 61
	cop $1F.b		; 02 1F
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	beq   9.b		; F0 09
	sed		; F8
	asl A		; 0A
	sed		; F8
	ora ($7C.b,X)		; 01 7C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	sbc $10.b		; E5 10
	adc ($18.b)		; 72 18
	ror $08.b		; 66 08
	.db $82, $88, $F4		; 82 88 F4
	sed		; F8
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora ($F0.b,X)		; 01 F0
	cpy #$20.b		; C0 20
	cpx #$03.b		; E0 03
	cpx #$07.b		; E0 07
	beq   7.b		; F0 07
	bvs   7.b		; 70 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	sec		; 38
	brk $CF.b		; 00 CF
	ora [$7E.b]		; 07 7E
	sta [$B0.b]		; 87 B0
	eor $220E71.l		; 4F 71 0E 22
	bra -59.b		; 80 C5
	brk $85.b		; 00 85
	brk $07.b		; 00 07
	beq   0.b		; F0 00
	bmi   1.b		; 30 01
	cpy #$0C.b		; C0 0C
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cmp ($00.b,X)		; C1 00
	sta $00.b,S		; 83 00
	ora $22.b,S		; 03 22
	tsa		; 3B
	stz $3EFF.w		; 9C FF 3E
	cpy #$FE.b		; C0 FE
	bit $C0C4.w,X		; 3C C4 C0
	plp		; 28
	brk $50.b		; 00 50
	bra  80.b		; 80 50
	bra -36.b		; 80 DC
	brk $62.b		; 00 62
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	bit $F800.w,X		; 3C 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cmp $E0.b,X		; D5 E0
	sbc $60.b,X		; F5 60
	ply		; 7A
	brk $3A.b		; 00 3A
	brk $1A.b		; 00 1A
	brk $12.b		; 00 12
	brk $1A.b		; 00 1A
	brk $07.b		; 00 07
	php		; 08
	brk $EA.b		; 00 EA
	brk $6A.b		; 00 6A
	brk $25.b		; 00 25
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	adc $00.b,X		; 75 00
	dex		; CA
	jsr $24C9.w		; 20 C9 24
	pei ($22.b)		; D4 22
	inc $11.b		; E6 11
.INDEX 8
	sep #$19		; E2 19
	adc $18.b,S		; 63 18
	eor $AA0000.l,X		; 5F 00 00 AA
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $0506.w,X		; 1D 06 05
	asl $0F.b		; 06 0F
	tsb $0A0F.w		; 0C 0F 0A
	ora $1F0A.w,X		; 1D 0A 1F
	brk $1B.b		; 00 1B
	bit $7976.w,X		; 3C 76 79
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	brk $0A.b		; 00 0A
	brk $21.b		; 00 21
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	and $07777F.l,X		; 3F 7F 77 07
	sbc [$77.b],Y		; F7 77
	lda ($73.b,S),Y		; B3 73
	stz $F5.b		; 64 F5
	inc $6A72.w		; EE 72 6A
	lda ($BB.b),Y		; B1 BB
	cpy #$1E.b		; C0 1E
	sbc $028F07.l,X		; FF 07 8F 02
	adc $04FF00.l,X		; 7F 00 FF 04
	sbc $007300.l,X		; FF 00 73 00
	lda $00.b,X		; B5 00
	cpy $9B.b		; C4 9B
	dec $87.b		; C6 87
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	bra  14.b		; 80 0E
	ora ($74.b,X)		; 01 74
	ora $86.b,S		; 03 86
	cop $FF.b		; 02 FF
	tsb $00.b		; 04 00
	inc $00.b		; E6 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   1.b		; 80 01
	dey		; 88
	ora ($78.b,X)		; 01 78
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cpy $C6.b		; C4 C6
	ror $E003.w,X		; 7E 03 E0
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $13.b		; 00 13
	bvs  23.b		; 70 17
	bvs  23.b		; 70 17
	bvs  11.b		; 70 0B
	sec		; 38
	phd		; 0B
	sec		; 38
	ora $1C.b		; 05 1C
	ora $1C.b		; 05 1C
	cop $0E.b		; 02 0E
	bit $2F00.w		; 2C 00 2F
	brk $2F.b		; 00 2F
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $05.b		; 00 05
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	cpy #$60.b		; C0 60
	sta ($20.b,X)		; 81 20
	sta ($20.b,X)		; 81 20
	sbc ($30.b,X)		; E1 30
.INDEX 16
	rep #$10		; C2 10
.INDEX 16
	rep #$10		; C2 10
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ora ($E0.b,X)		; 01 E0
	ora ($00.b,X)		; 01 00
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $3A3F1F.l,X		; 3F 1F 3F 3A
	adc $607F32.l,X		; 7F 32 7F 60
	sbc $0F0707.l,X		; FF 07 07 0F
	php		; 08
	ora $2D3F18.l,X		; 1F 18 3F 2D
	and $457F20.l,X		; 3F 20 7F 45
	adc $9FFF4D.l,X		; 7F 4D FF 9F
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	beq  -2.b		; F0 FE
	jsr ($F6FE.w,X)		; FC FE F6
	sbc $04FF86.l,X		; FF 86 FF 04
	sbc $809E60.l,X		; FF 60 9E 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE2E.w,X		; FE 2E FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora #$79FF.w		; 09 FF 79
	sbc $0686DB.l,X		; FF DB 86 06
	ora $000800.l		; 0F 00 08 00
	tas		; 1B
	tsb $16.b		; 04 16
	brk $2D.b		; 00 2D
	bpl  86.b		; 10 56
	jsr $0048.w		; 20 48 00
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	sec		; 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	tax		; AA
	bpl -76.b		; 10 B4
	brk $A8.b		; 00 A8
	brk $68.b		; 00 68
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $061A.w		; 0C 1A 06
	ora [$00.b],Y		; 17 00
	ora $000001.l		; 0F 01 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	brk $08.b		; 00 08
	brk $05.b		; 00 05
	cpy #$3F00.w		; C0 00 3F
	brk $06.b		; 00 06
	sed		; F8
	sec		; 38
	ora [$F3.b]		; 07 F3
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ora $08.b		; 05 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	php		; 08
	bmi  49.b		; 30 31
	cpx #$83A4.w		; E0 A4 83
	sbc $333B00.l,X		; FF 00 3B 33
	cmp #$96F1.w		; C9 F1 96
	ror $47.b		; 66 47
	lda $000700.l		; AF 00 07 00
	ora $C01F40.l		; 0F 40 1F C0
	brk $C1.b		; 00 C1
	ora [$20.b]		; 07 20
	ora [$00.b]		; 07 00
	ora $72BF06.l		; 0F 06 BF 72
	inc A		; 1A
	sei		; 78
	lda $7CFE.w,X		; BD FE 7C
	inc $FEFF.w,X		; FE FF FE
	sbc $7DFEFF.l,X		; FF FF FE 7D
	ror $8881.w,X		; 7E 81 88
	brk $DF.b		; 00 DF
	bpl -65.b		; 10 BF
	sec		; 38
	adc $FF7C.w,X		; 7D 7C FF
	jsr ($FCFF.w,X)		; FC FF FC
	sbc $00FE30.l,X		; FF 30 FE 00
	inc $316A.w,X		; FE 6A 31
	rol $01.b,X		; 36 01
	tas		; 1B
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $07.b		; 00 07
	php		; 08
	brk $0F.b		; 00 0F
	brk $35.b		; 00 35
	brk $09.b		; 00 09
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $F9C4.w,Y		; F9 C4 F9
	cpy $E5.b		; C4 E5
	bpl -28.b		; 10 E4
	ora ($E6.b)		; 12 E6
	ora ($E2.b),Y		; 11 E2
	ora $1863.w,Y		; 19 63 18
	cmp $D70000.l,X		; DF 00 00 D7
	brk $D7.b		; 00 D7
	brk $1F.b		; 00 1F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $3C.b		; 00 3C
	clv		; B8
	brk $4F.b		; 00 4F
	ora [$7C.b]		; 07 7C
	sta [$A8.b]		; 87 A8
	eor [$73.b]		; 47 73
	tsb $8024.w		; 0C 24 80
	cmp $00.b		; C5 00
	txa		; 8A
	ora ($07.b,X)		; 01 07
	bvs   0.b		; 70 00
	bcs   3.b		; B0 03
	cpy #$F004.w		; C0 04 F0
	brk $E0.b		; 00 E0
	brk $C3.b		; 00 C3
	brk $83.b		; 00 83
	brk $07.b		; 00 07
	jsl $FF9C3B.l		; 22 3B 9C FF
	rol $FEC0.w,X		; 3E C0 FE
	bit $C0C4.w,X		; 3C C4 C0
	plp		; 28
	brk $50.b		; 00 50
	bra  80.b		; 80 50
	bra -36.b		; 80 DC
	brk $62.b		; 00 62
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	bit $F800.w,X		; 3C 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cop $0E.b		; 02 0E
	sbc $0907.w,Y		; F9 07 09
	ora [$0C.b],Y		; 17 0C
	xba		; EB
	cpx $960B.w		; EC 0B 96
	ora $61.b		; 05 61
	cop $1F.b		; 02 1F
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	beq   9.b		; F0 09
	sed		; F8
	asl A		; 0A
	sed		; F8
	ora ($7C.b,X)		; 01 7C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	sbc $10.b		; E5 10
	adc $18.b,X		; 75 18
	.db $62, $08, $82		; 62 08 82
	dey		; 88
	sbc $F8.b,X		; F5 F8
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora ($F0.b,X)		; 01 F0
	cpy #$20.b		; C0 20
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	beq   7.b		; F0 07
	bvs   7.b		; 70 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	asl A		; 0A
	sbc ($69.b)		; F2 69
	stz $4C30.w		; 9C 30 4C
	adc $816500.l,X		; 7F 00 65 81
	lsr A		; 4A
	.db $82, $B2, $0A		; 82 B2 0A
	sbc ($F2.b,S),Y		; F3 F2
	sbc $87E0.w		; ED E0 87
	bra  71.b		; 80 47
	rti		; 40

	brk $00.b		; 00 00
	sta ($FB.b,X)		; 81 FB
	cop $F7.b		; 02 F7
	brk $EF.b		; 00 EF
	cpx #$1C.b		; E0 1C
	bvs -36.b		; 70 DC
	cpx #$48.b		; E0 48
	beq  24.b		; F0 18
	cpx #$1C.b		; E0 1C
	bvc 115.b		; 50 73
	lda $E0A0E0.l,X		; BF E0 A0 E0
	trb $44.b		; 14 44
	tsb $44.b		; 04 44
	cld		; D8
	rts		; 60

	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	jmp $9FC0.w		; 4C C0 9F
	bra  31.b		; 80 1F
	bra -33.b		; 80 DF
	lda $B05F20.l,X		; BF 20 5F B0
	brk $90.b		; 00 90
	rts		; 60

	bcs  96.b		; B0 60
	beq  96.b		; F0 60
	beq   0.b		; F0 00
	rti		; 40

	bra  32.b		; 80 20
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3700.w,X		; 1E 00 37
	cmp $A3.b,X		; D5 A3
	ora $77.b,X		; 15 77
	eor ($BE.b,X)		; 41 BE
	cmp ($3F.b,X)		; C1 3F
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $1DC0.w,X		; 1D C0 1D
	bra  29.b		; 80 1D
	rti		; 40

	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $F7FFFE.l,X		; FF FE FF F7
	sed		; F8
	sei		; 78
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E0FFFF.l,X		; FF FF FF E0
	sbc $00F800.l,X		; FF 00 F8 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	rol $F6F2.w,X		; 3E F2 F6
	and $EBF2.w,X		; 3D F2 EB
	asl $1E.b,X		; 16 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $FF1E.w,X		; 3E 1E FF
	beq  -1.b		; F0 FF
	brk $F2.b		; 00 F2
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	tsb $02.b		; 04 02
	tsb $3502.w		; 0C 02 35
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	php		; 08
	adc $F3FDF1.l		; 6F F1 FD F3
	adc [$F3.b],Y		; 77 F3
	adc [$73.b],Y		; 77 73
	adc [$73.b],Y		; 77 73
	sbc [$73.b],Y		; F7 73
	lda [$73.b],Y		; B7 73
	lda [$73.b],Y		; B7 73
	brk $F5.b		; 00 F5
	rts		; 60

	sbc ($61.b,S),Y		; F3 61
	xce		; FB
	adc ($FB.b,X)		; 61 FB
	and ($FB.b,X)		; 21 FB
	and ($7B.b,X)		; 21 7B
	jsl $7B227B.l		; 22 7B 22 7B
	sbc $E0C3E0.l		; EF E0 C3 E0
	jmp.w [$82DC]		; DC DC 82
	dec $BF83.w,X		; DE 83 BF
	bra -65.b		; 80 BF
	rti		; 40

	sta $CF0086.l,X		; 9F 86 00 CF
	beq -49.b		; F0 CF
	beq -125.b		; F0 83
	cpx #$9D.b		; E0 9D
	cpx #$1C.b		; E0 1C
	cpy #$1F.b		; C0 1F
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	jsr $30C0.w		; 20 C0 30
	cpy #$50.b		; C0 50
	bra -88.b		; 80 A8
	brk $88.b		; 00 88
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	asl $09.b,X		; 16 09
	and ($06.b,X)		; 21 06
	eor [$00.b],Y		; 57 00
	ora $080F08.l		; 0F 08 0F 08
	ora $1F1F19.l,X		; 1F 19 1F 1F
	asl $080E.w		; 0E 0E 08
	php		; 08
	asl $1E.b		; 06 1E
	brk $2C.b		; 00 2C
	cpx #$FF.b		; E0 FF
	mvp $1C,$FF		; 44 FF 1C
	sbc ($0C.b,S),Y		; F3 0C
	cmp ($2E.b,S),Y		; D3 2E
	phy		; 5A
	cmp $0A41.w,X		; DD 41 0A
	cmp $DC.b,S		; C3 DC
	adc $FA1BFF.l,X		; 7F FF 1B FA
	clv		; B8
	sbc ($E0.b,X)		; E1 E0
	adc $48.b,S		; 63 48
	sbc $BA08.w,Y		; F9 08 BA
	tsb $7D.b		; 04 7D
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	cpx #$FC.b		; E0 FC
	jsr ($9CFE.w,X)		; FC FE 9C
	inc $FE0C.w,X		; FE 0C FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	sei		; 78
	jsr ($FE9C.w,X)		; FC 9C FE
	cop $FE.b		; 02 FE
	.db $62, $FE, $F2		; 62 FE F2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora [$1F.b]		; 07 1F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	and $FF7F7F.l,X		; 3F 7F 7F FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $181F0F.l		; 0F 0F 1F 18
	and $517F20.l,X		; 3F 20 7F 51
	adc $80FF76.l,X		; 7F 76 FF 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	bra  32.b		; 80 20
	bra -48.b		; 80 D0
	brk $F0.b		; 00 F0
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	rti		; 40

	cpy #$70.b		; C0 70
	jsr $C0E0.w		; 20 E0 C0
	bne  32.b		; D0 20
	bcs -64.b		; B0 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra -32.b		; 80 E0
	jsr $00D0.w		; 20 D0 00
	ldy #$80.b		; A0 80
	bne   0.b		; D0 00
	jsr $0000.w		; 20 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	bpl -128.b		; 10 80
	clc		; 18
	tsb $31.b		; 04 31
	asl $0019.w		; 0E 19 00
	ora $001F.w,Y		; 19 1F 00
	ora $1906.w,X		; 1D 06 19
	brk $1D.b		; 00 1D
	asl $1F.b		; 06 1F
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000600.l		; 0F 00 06 00
	ora $A20000.l		; 0F 00 00 A2
	cli		; 58
	ror $98.b		; 66 98
	lda $06FD00.l,X		; BF 00 FD 06
	cmp $FD00.w,Y		; D9 00 FD
	asl $BF.b		; 06 BF
	brk $ED.b		; 00 ED
	asl $5007.w,X		; 1E 07 50
	ora [$90.b]		; 07 90
	brk $40.b		; 00 40
	brk $4F.b		; 00 4F
	brk $26.b		; 00 26
	brk $2F.b		; 00 2F
	brk $60.b		; 00 60
	brk $5E.b		; 00 5E
	bmi -40.b		; 30 D8
	ply		; 7A
	sty $806C.w		; 8C 6C 80
	pea $7400.w		; F4 00 74
	brk $FC.b		; 00 FC
	brk $9C.b		; 00 9C
	bpl  -4.b		; 10 FC
	php		; 08
	bra  28.b		; 80 1C
	brk $2C.b		; 00 2C
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $B8.b		; 00 B8
	brk $08.b		; 00 08
	rts		; 60

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	phd		; 0B
	mvp $5A,$3B		; 44 3B 5A
	and ($BF.b,X)		; 21 BF
	brk $A8.b		; 00 A8
	brk $F8.b		; 00 F8
	brk $E7.b		; 00 E7
	brk $7D.b		; 00 7D
	ora $03.b,S		; 03 03
	sec		; 38
	ora ($38.b,X)		; 01 38
	brk $3C.b		; 00 3C
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $78.b		; 00 78
	brk $03.b		; 00 03
	adc ($B7.b)		; 72 B7
	adc ($B7.b)		; 72 B7
	adc [$B6.b],Y		; 77 B6
	lda [$36.b],Y		; B7 36
	adc $7BFF3B.l,X		; 7F 3B FF 7B
	inc $FDE9.w,X		; FE E9 FD
	dey		; 88
	ldy #$3F.b		; A0 3F
	bra  63.b		; 80 3F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	ora ($3B.b)		; 12 3B
	and ($7B.b)		; 32 7B
	rti		; 40

	sbc $8888.w,Y		; F9 88 88
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq  68.b		; F0 44
	bmi -92.b		; 30 A4
	bpl  84.b		; 10 54
	brk $2A.b		; 00 2A
	brk $2E.b		; 00 2E
	brk $3E.b		; 00 3E
	brk $4E.b		; 00 4E
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	sed		; F8
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	dec A		; 3A
	and ($4E.b),Y		; 31 4E
	ora ($7D.b,X)		; 01 7D
	sec		; 38
	rol $1340.w,X		; 3E 40 13
	stz $0B.b,X		; 74 0B
	and ($0D.b,X)		; 21 0D
	and $1C.b,S		; 23 1C
	and ($10.b,S),Y		; 33 10
	adc [$00.b],Y		; 77 00
	and ($18.b,S),Y		; 33 18
	tsa		; 3B
	brk $01.b		; 00 01
	bit $1C00.w		; 2C 00 1C
	ora ($1C.b,X)		; 01 1C
	ora ($0E.b,X)		; 01 0E
	brk $81.b		; 00 81
	rol $21B3.w,X		; 3E B3 21
	sta $26F800.l,X		; 9F 00 F8 26
	cmp $7324.w,Y		; D9 24 73
	sty $ACF3.w		; 8C F3 AC
	eor [$AC.b],Y		; 57 AC
	rts		; 60

	brk $40.b		; 00 40
	ora $0C60.w		; 0D 60 0C
	ora $88.b,S		; 03 88
	and $00.b,S		; 23 00
	ora $88.b,S		; 03 88
	ora [$A0.b]		; 07 A0
	ora $A0.b,S		; 03 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl $01.b		; 06 01
	and $5C03.w,Y		; 39 03 5C
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	bit $F16F.w,X		; 3C 6F F1
	sbc $F17FF1.l,X		; FF F1 7F F1
	adc $73.b,X		; 75 73
	adc [$73.b],Y		; 77 73
	and [$73.b],Y		; 37 73
	and [$33.b],Y		; 37 33
	sbc ($37.b,S),Y		; F3 37
	brk $F5.b		; 00 F5
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $21.b,X		; F5 21
	xce		; FB
	and ($FB.b,X)		; 21 FB
	and ($FB.b,X)		; 21 FB
	ldx #$7B.b		; A2 7B
	ldx #$3F.b		; A2 3F
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	bmi  15.b		; 30 0F
	lsr $09.b,X		; 56 09
	ora [$07.b]		; 07 07
	ora $080F08.l		; 0F 08 0F 08
	ora $191F08.l		; 0F 08 1F 19
	ora $0E0E1F.l,X		; 1F 1F 0E 0E
	php		; 08
	plp		; 28
	sbc $F0FF.w,Y		; F9 FF F0
	sbc $44FFE0.l,X		; FF E0 FF 44
	sbc $0CF31C.l,X		; FF 1C F3 0C
	cmp ($2E.b,S),Y		; D3 2E
	phy		; 5A
	cmp $FF41.w,X		; DD 41 FF
	ror $FF.b		; 66 FF
	ora $FA1BFF.l		; 0F FF 1B FA
	clv		; B8
	sbc ($E0.b,X)		; E1 E0
	adc $48.b,S		; 63 48
	sbc $BA08.w,Y		; F9 08 BA
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F07.l		; 0F 07 1F 1F
	and $007F3F.l,X		; 3F 3F 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3F181F.l		; 0F 1F 18 3F
	jsr $517F.w		; 20 7F 51
	xba		; EB
	pea $E0FA.w		; F4 FA E0
	pei ($E0.b)		; D4 E0
	sed		; F8
	cpy #$A0.b		; C0 A0
	cpy #$C0.b		; C0 C0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	inc $C0.b,X		; F6 C0
	cpx $E880.w		; EC 80 E8
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rti		; 40

	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	cpx #$40.b		; E0 40
	adc $FF01FD.l,X		; 7F FD 01 FF
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $A00000.l,X		; FF 00 00 A0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	cpx #$FC.b		; E0 FC
	jsr ($00FE.w,X)		; FC FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sei		; 78
	jsr ($FE9C.w,X)		; FC 9C FE
	cop $C0.b		; 02 C0
	cpx #$C0.b		; E0 C0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	jsr $8000.w		; 20 00 80
	bvs -32.b		; 70 E0
	bpl -128.b		; 10 80
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	jsr $0060.w		; 20 60 00
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	rts		; 60

	cpx #$F0.b		; E0 F0
	brk $80.b		; 00 80
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	and $F04040.l,X		; 3F 40 40 F0
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ora $19.b,S		; 03 19
	ora $0D.b		; 05 0D
	ora #$06.b		; 09 06
	asl $0F03.w		; 0E 03 0F
	brk $0D.b		; 00 0D
	ora $0F.b,S		; 03 0F
	brk $03.b		; 00 03
	ora [$0E.b]		; 07 0E
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora $57C837.l		; 0F 37 C8 57
	lda #$AE.b		; A9 AE
	rti		; 40

	stp		; DB
	ora ($EF.b,X)		; 01 EF
	brk $FB.b		; 00 FB
	ora [$D7.b]		; 07 D7
	ora $008F7F.l		; 0F 7F 8F 00
	pha		; 48
	brk $2B.b		; 00 2B
	brk $51.b		; 00 51
	brk $A7.b		; 00 A7
	brk $10.b		; 00 10
	brk $97.b		; 00 97
	ora [$2F.b]		; 07 2F
	asl $AF.b		; 06 AF
	sbc ($0D.b)		; F2 0D
	adc $6783.w,X		; 7D 83 67
	cop $65.b		; 02 65
	tya		; 98
	jsr ($5B00.w,X)		; FC 00 5B
	sta [$F8.b]		; 87 F8
	sta [$58.b]		; 87 58
	lda [$00.b]		; A7 00
	trb $C002.w		; 1C 02 C0
	ora ($98.b,X)		; 01 98
	ora $D8.b,S		; 03 D8
	ora $18.b,S		; 03 18
	tsb $A0.b		; 04 A0
	ora [$B0.b]		; 07 B0
	brk $B0.b		; 00 B0
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	sbc ($01.b),Y		; F1 01
	ora $E31E.w,X		; 1D 1E E3
	sbc $FA06.w,X		; FD 06 FA
	cop $FD.b		; 02 FD
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	inc $E200.w,X		; FE 00 E2
	brk $19.b		; 00 19
	ora ($E0.b,X)		; 01 E0
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	bra -39.b		; 80 D9
	rti		; 40

	lda ($9E.b,X)		; A1 9E
	rti		; 40

	and $0700F8.l,X		; 3F F8 00 07
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $FF80.w,X		; 7E 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	mvp $4D,$3A		; 44 3A 4D
	and $B5.b,S		; 23 B5
	ora $AC.b,S		; 03 AC
	ora $F8.b,S		; 03 F8
	ora $E7.b,S		; 03 E7
	brk $7D.b		; 00 7D
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	sec		; 38
	cop $38.b		; 02 38
	cop $68.b		; 02 68
	ora $70.b,S		; 03 70
	ora ($40.b,X)		; 01 40
	brk $78.b		; 00 78
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	sbc ($37.b)		; F2 37
	adc [$36.b],Y		; 77 36
	sbc [$B6.b],Y		; F7 B6
	adc $7BFFBB.l,X		; 7F BB FF 7B
	inc $FDE9.w,X		; FE E9 FD
	dey		; 88
	sty $8000.w		; 8C 00 80
	and $003E80.l,X		; 3F 80 3E 00
	rol $3B92.w,X		; 3E 92 3B
	and ($7B.b)		; 32 7B
	rti		; 40

	sbc $8888.w,Y		; F9 88 88
	brk $00.b		; 00 00
	rol $4B31.w,X		; 3E 31 4B
	brk $3E.b		; 00 3E
	and $013C.w,Y		; 39 3C 01
	lsr A		; 4A
	sec		; 38
	ora $110432.l		; 0F 32 04 11
	asl $1019.w		; 0E 19 10
	stz $00.b,X		; 74 00
	rol $18.b,X		; 36 18
	tda		; 7B
	brk $43.b		; 00 43
	trb $01.b		; 14 01
	trb $0E00.w		; 1C 00 0E
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	cmp $DC.b,S		; C3 DC
	adc $FA3E81.l,X		; 7F 81 3E FA
	rts		; 60

	cmp $F702.w,X		; DD 02 F7
	rol A		; 2A
	lda $6BD4.w,Y		; B9 D4 6B
	pei ($7D.b)		; D4 7D
	brk $02.b		; 00 02
	brk $60.b		; 00 60
	brk $01.b		; 00 01
	tsb $8023.w		; 0C 23 80
	ora ($08.b,X)		; 01 08
	ora $D0.b,S		; 03 D0
	ora $50.b,S		; 03 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sta $F00E00.l,X		; 9F 00 0E F0
	ora ($00.b,X)		; 01 00
	sbc $000100.l,X		; FF 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $84.b		; 00 84
	sei		; 78
	asl $F300.w,X		; 1E 00 F3
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $0E.b		; 00 0E
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	brk $07.b		; 00 07
	ora [$7F.b]		; 07 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	cmp $FF87FF.l		; CF FF 87 FF
	ora ($FF.b,X)		; 01 FF
	bit $07F3.w,X		; 3C F3 07
	ora [$7F.b]		; 07 7F
	sei		; 78
	sbc $0EFF90.l,X		; FF 90 FF 0E
	sbc $58DF30.l,X		; FF 30 DF 58
	sbc $81C3D6.l,X		; FF D6 C3 81
	asl $00.b		; 06 00
	tas		; 1B
	brk $1E.b		; 00 1E
	rts		; 60

	and $E3.b,X		; 35 E3
	pld		; 2B
	brk $FF.b		; 00 FF
	brk $F6.b		; 00 F6
	brk $8F.b		; 00 8F
	tsb $0100.w		; 0C 00 01
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	beq   4.b		; F0 04
	beq   7.b		; F0 07
	sed		; F8
	ora $F0.b,S		; 03 F0
	brk $F7.b		; 00 F7
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cpx #$F5.b		; E0 F5
	cpx #$DF.b		; E0 DF
	cpx #$F6.b		; E0 F6
	ora $FF085F.l		; 0F 5F 08 FF
	bpl -81.b		; 10 AF
	brk $62.b		; 00 62
	nop		; EA
	rts		; 60

	sbc #$40.b		; E9 40
	xba		; EB
	brk $E0.b		; 00 E0
	ora ($00.b,X)		; 01 00
	ora [$A0.b]		; 07 A0
	ora $C01F40.l		; 0F 40 1F C0
	ora $1A04.w		; 0D 04 1A
	asl A		; 0A
	ora $0F05.w,X		; 1D 05 0F
	jsl $284417.l		; 22 17 44 28
	stx $1CD1.w		; 8E D1 1C
	ldy #$98.b		; A0 98
	brk $06.b		; 00 06
	cop $0F.b		; 02 0F
	ora $07.b		; 05 07
	clc		; 18
	cop $38.b		; 02 38
	brk $74.b		; 00 74
	ora ($28.b,X)		; 01 28
	brk $10.b		; 00 10
	cpy #$76.b		; C0 76
	php		; 08
	phx		; DA
	tsb $3F.b		; 04 3F
	rti		; 40

	inc $6DAF.w		; EE AF 6D
	ldx $77F6.w		; AE F6 77
	adc $F6.b,X		; 75 F6
	adc ($70.b),Y		; 71 70
	ora $F8.b,S		; 03 F8
	ora ($3C.b,X)		; 01 3C
	brk $C0.b		; 00 C0
	brk $BF.b		; 00 BF
	jsr $20BF.w		; 20 BF 20
	adc $30FF70.l,X		; 7F 70 FF 30
	inc $0007.w,X		; FE 07 00
	and $D800.w,Y		; 39 00 D8
	ora [$80.b]		; 07 80
	adc $1FC030.l,X		; 7F 30 C0 1F
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $1A.b		; 00 1A
	ora ($29.b,X)		; 01 29
	asl $3F.b		; 06 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $000000.l,X		; 1F 00 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	beq -32.b		; F0 E0
	beq -80.b		; F0 B0
	sed		; F8
	bcs  -8.b		; B0 F8
	tya		; 98
	jsr ($8080.w,X)		; FC 80 80
	cpy #$40.b		; C0 40
	cpx #$60.b		; E0 60
	beq -48.b		; F0 D0
	beq  16.b		; F0 10
	sed		; F8
	pha		; 48
	sed		; F8
	pha		; 48
	jsr ($0864.w,X)		; FC 64 08
	jsr ($BC40.w,X)		; FC 40 BC
	tya		; 98
	ldy #$B0.b		; A0 B0
	iny		; C8
	jsr $B8D0.w		; 20 D0 B8
	cpy #$34.b		; C0 34
	rti		; 40

	bit $D0.b		; 24 D0
	ldy $5CB4.w,X		; BC B4 5C
	trb $0040.w		; 1C 40 00
	php		; 08
	php		; 08
	bcc  16.b		; 90 10
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	rti		; 40

	txy		; 9B
	cmp $4E00.w,X		; DD 00 4E
	bcc  87.b		; 90 57
	dey		; 88
	pld		; 2B
	cpy $F9.b		; C4 F9
	asl $3F.b		; 06 3F
	rti		; 40

	sta $38A620.l,X		; 9F 20 A6 38
	brk $B6.b		; 00 B6
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $2F.b		; 00 2F
	cpy #$14.b		; C0 14
	cpx #$00.b		; E0 00
	bne   0.b		; D0 00
	php		; 08
	bmi  64.b		; 30 40
	bvs -128.b		; 70 80
	cpx #$20.b		; E0 20
	cpy #$60.b		; C0 60
	bra -112.b		; 80 90
	brk $50.b		; 00 50
	bra -88.b		; 80 A8
	rti		; 40

	beq   0.b		; F0 00
	ldy #$00.b		; A0 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cpy #$3F.b		; C0 3F
	adc [$50.b],Y		; 77 50
	tyx		; BB
	plp		; 28
	eor $0BEC97.l,X		; 5F 97 EC 0B
	php		; 08
	ora [$F0.b],Y		; 17 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	cpy #$27.b		; C0 27
	cpx #$10.b		; E0 10
	beq   3.b		; F0 03
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	ora [$70.b],Y		; 17 70
	eor $00F8C0.l,X		; 5F C0 F8 00
	trb $C01F.w		; 1C 1F C0
	sbc $00F800.l,X		; FF 00 F8 00
	bra   0.b		; 80 00
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $E3.b		; 00 E3
	brk $38.b		; 00 38
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6A.b		; 00 6A
	bcs  95.b		; B0 5F
	ldy $26.b,X		; B4 26
	stz $1E.b		; 64 1E
	rti		; 40

	bit $38.b		; 24 38
	pha		; 48
	and $1FA0.w,Y		; 39 A0 1F
	ora $8100.w,X		; 1D 00 81
	sty $A1.b		; 84 A1
	sty $17.b		; 84 17
	tsb $003F.w		; 0C 3F 00
	ora $001700.l,X		; 1F 00 17 00
	ora #$40.b		; 09 40
	brk $E3.b		; 00 E3
	sbc ($FE.b),Y		; F1 FE
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $E000.w		; 0E 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	jsr $3E1E.w		; 20 1E 3E
	ora ($3F.b,X)		; 01 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $000100.l,X		; 1F 00 01 00
	asl $1F00.w,X		; 1E 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	rti		; 40

	adc #$80.b		; 69 80
	tyx		; BB
	adc $7D7D.w,Y		; 79 7D 7D
	ldx $6F7E.w,Y		; BE 7E 6F
	ora $05071B.l,X		; 1F 1B 07 05
	ora ($00.b,X)		; 01 00
	rts		; 60

	brk $90.b		; 00 90
	bpl 125.b		; 10 7D
	sec		; 38
	sbc $027F1C.l,X		; FF 1C 7F 02
	ora $000700.l,X		; 1F 00 07 00
	ora $B0.b,S		; 03 B0
	and $3F4E9D.l		; 2F 9D 4E 3F
	adc ($BF.b),Y		; 71 BF
	and $6E5F9F.l,X		; 3F 9F 5F 6E
	rol $95B5.w		; 2E B5 95
	xce		; FB
	dex		; CA
	brk $6F.b		; 00 6F
	brk $6E.b		; 00 6E
	ora ($F1.b,X)		; 01 F1
	ora $7F0E7F.l,X		; 1F 7F 0E 7F
	tsb $BF.b		; 04 BF
	ora ($DF.b,X)		; 01 DF
	txa		; 8A
	dec $0000.w		; CE 00 00
	bra -128.b		; 80 80
	jsr ($7EFC.w,X)		; FC FC 7E
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	dec A		; 3A
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr ($FE78.w,X)		; FC 78 FE
	rts		; 60

	sbc $10.b,S		; E3 10
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	inc $E000.w,X		; FE 00 E0
	ora $1FE01C.l,X		; 1F 1C E0 1F
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cpx #$00.b		; E0 00
	brk $DE.b		; 00 DE
	ldx $EF.b		; A6 EF
	sta [$5B.b],Y		; 97 5B
	and [$F8.b],Y		; 37 F8
	bvc -72.b		; 50 B8
	bvc  72.b		; 50 48
	bmi -12.b		; 30 F4
	php		; 08
	mvp $04,$B8		; 44 B8 04
	and [$07.b]		; 27 07
	ora [$80.b],Y		; 17 80
	and [$00.b],Y		; 37 00
	eor [$00.b],Y		; 57 00
	bvc   0.b		; 50 00
	bcs   0.b		; B0 00
	php		; 08
	brk $B8.b		; 00 B8
	ldy $58.b,X		; B4 58
	sed		; F8
	cpy #$E0.b		; C0 E0
	cpy #$90.b		; C0 90
	bra  16.b		; 80 10
	rts		; 60

	inx		; E8
	bra -72.b		; 80 B8
	brk $DC.b		; 00 DC
	brk $00.b		; 00 00
	cli		; 58
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $90.b		; 00 90
	brk $50.b		; 00 50
	brk $68.b		; 00 68
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	cop $75.b		; 02 75
	phd		; 0B
	adc $336733.l		; 6F 33 67 33
	and ($1B.b),Y		; 31 1B
	trb $09.b		; 14 09
	php		; 08
	brk $17.b		; 00 17
	ora [$00.b]		; 07 00
	asl A		; 0A
	brk $0B.b		; 00 0B
	ora ($33.b,X)		; 01 33
	ora ($3B.b,X)		; 01 3B
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	asl $2F.b		; 06 2F
	sta [$7D.b]		; 87 7D
	cpy $FA.b		; C4 FA
	sbc $F8.b,S		; E3 F8
	sbc ($F7.b,S),Y		; F3 F7
	ora [$8F.b]		; 07 8F
	eor $3E3D5F.l,X		; 5F 5F 3D 3E
	inc $F9.b,X		; F6 F9
	clc		; 18
	ora ($00.b,X)		; 01 00
	sbc $C0.b,S		; E3 C0
	pea $FFE1.w		; F4 E1 FF
	ora $FF.b,S		; 03 FF
	asl $18FF.w		; 0E FF 18
	inc $F920.w,X		; FE 20 F9
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	ora $FF7F7F.l		; 0F 7F 7F FF
	adc $FF5BFF.l,X		; 7F FF 5B FF
	eor #$FF.b		; 49 FF
	bpl  -1.b		; 10 FF
	ora $03.b,S		; 03 03
	ora $747F0E.l		; 0F 0E 7F 74
	sbc $80FF87.l,X		; FF 87 FF 80
	sbc $B6FFA4.l,X		; FF A4 FF B6
	sbc $00ED.w		; ED ED 00
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $E0FFE2.l,X		; FF E2 FF E0
	cpx #$F0.b		; E0 F0
	bpl  -8.b		; 10 F8
	clc		; 18
	jsr ($FE74.w,X)		; FC 74 FE
	cop $FE.b		; 02 FE
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	ora $0000.w,X		; 1D 00 00
	sbc $008000.l,X		; FF 00 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00BD00.l		; 0F 00 BD 00
	adc $001700.l		; 6F 00 17 00
	asl $00.b,X		; 16 00
	asl $00.b,X		; 16 00
	ror $00.b		; 66 00
	jmp ($0000.w,X)		; 7C 00 00
	beq   0.b		; F0 00
	ror $1C00.w,X		; 7E 00 1C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	ora $43FF3F.l,X		; 1F 3F FF 43
	cmp $000C04.l		; CF 04 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($3F.b,X)		; 01 3F
	asl $7F.b		; 06 7F
	cop $43.b		; 02 43
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bra 112.b		; 80 70
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	bra -96.b		; 80 A0
	cpy #$40.b		; C0 40
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpy #$40.b		; C0 40
	jmp $D878C0.l		; 5C C0 78 D8
	sed		; F8
	cli		; 58
	inx		; E8
	cli		; 58
	jmp ($FA88.w,X)		; 7C 88 FA
	bra -77.b		; 80 B3
	dec $E000.w		; CE 00 E0
	brk $E0.b		; 00 E0
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $5C.b		; 00 5C
	brk $98.b		; 00 98
	brk $C4.b		; 00 C4
	brk $CE.b		; 00 CE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C0.b		; E0 C0
	clc		; 18
	bvs   6.b		; 70 06
	stz $0081.w,X		; 9E 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $03.b		; 00 03
	sbc $7807.w,X		; FD 07 78
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($0001.w,X)		; 7C 01 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $380B.w		; 0E 0B 38
	and $C05060.l		; 2F 60 50 C0
	rol $18FF.w,X		; 3E FF 18
	sbc $000000.l,X		; FF 00 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $41.b		; 00 41
	brk $60.b		; 00 60
	brk $0C.b		; 00 0C
	adc ($2F.b,S),Y		; 73 2F
	inx		; E8
	stz $00.b,X		; 74 00
	inc $C304.w,X		; FE 04 C3
	cop $7C.b		; 02 7C
	adc $FFFF00.l,X		; 7F 00 FF FF
	brk $00.b		; 00 00
	ora [$50.b]		; 07 50
	ora $F8.b,S		; 03 F8
	ora $F8.b,S		; 03 F8
	ora ($FC.b,X)		; 01 FC
	brk $83.b		; 00 83
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $2A.b		; 00 2A
	cpy $94.b		; C4 94
	php		; 08
	eor $1A30.w		; 4D 30 1A
	sbc ($74.b,X)		; E1 74
	ora $89.b,S		; 03 89
	asl $71.b		; 06 71
	stx $00FF.w		; 8E FF 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	adc [$22.b],Y		; 77 22
	ldx $AB00.w		; AE 00 AB
	brk $B7.b		; 00 B7
	brk $BA.b		; 00 BA
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	tax		; AA
	brk $D5.b		; 00 D5
	brk $D7.b		; 00 D7
	brk $DA.b		; 00 DA
	brk $DD.b		; 00 DD
	brk $B8.b		; 00 B8
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	clv		; B8
	rti		; 40

	jmp $8C30.w		; 4C 30 8C
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $ECFB2F.l,X		; 3F 2F FB EC
	sbc [$E8.b],Y		; F7 E8
	jmp ($8080.w,X)		; 7C 80 80
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $03.b		; 00 03
	sbc $80ED60.l		; EF 60 ED 80
	cpx $8000.w		; EC 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	cmp $9879E6.l,X		; DF E6 79 98
	sbc [$36.b],Y		; F7 36
	sta $104968.l		; 8F 68 49 10
	sbc $8500.w,X		; FD 00 85
	brk $A9.b		; 00 A9
	mvp $E6,$80		; 44 80 E6
	brk $DE.b		; 00 DE
	asl $3E.b		; 06 3E
	brk $78.b		; 00 78
	brk $36.b		; 00 36
	brk $06.b		; 00 06
	brk $7E.b		; 00 7E
	brk $FE.b		; 00 FE
	asl A		; 0A
	adc $390A.w		; 6D 0A 39
	tsb $13.b		; 04 13
	ora $0119.w		; 0D 19 01
	ora $0F02.w,Y		; 19 02 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	adc ($60.b)		; 72 60
	asl $00.b,X		; 16 00
	asl $0600.w		; 0E 00 06
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $5F3FC0.l,X		; FF C0 3F 5F
	ldy #$7B.b		; A0 7B
	phb		; 8B
	adc [$94.b],Y		; 77 94
	ldx $14.b		; A6 14
	ldx $D40A.w,Y		; BE 0A D4
	pld		; 2B
	sbc $3F3FFF.l,X		; FF FF 3F 3F
	jsr $8220.w		; 20 20 82
	ora $011C84.l		; 0F 84 1C 01
	jmp $036801.l		; 5C 01 68 03
	pla		; 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	ora [$0A.b]		; 07 0A
	ora [$31.b]		; 07 31
	adc #$22.b		; 69 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	tsb $1E01.w		; 0C 01 1E
	bra  48.b		; 80 30
	eor $C3033C.l		; 4F 3C 03 C3
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -8.b		; 80 F8
	ora [$8C.b]		; 07 8C
	lda ($4F.b,S),Y		; B3 4F
	eor $000303.l		; 4F 03 03 00
	bit $FF00.w,X		; 3C 00 FF
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $0F.b		; 00 0F
	brk $F3.b		; 00 F3
	php		; 08
	sbc ($1C.b)		; F2 1C
	inc $C8.b,X		; F6 C8
	rol $00FC.w,X		; 3E FC 00
	sbc [$00.b],Y		; F7 00
	ror $7A80.w,X		; 7E 80 7A
	sty $FE.b		; 84 FE
	tsb $C0DC.w		; 0C DC C0
	tay		; A8
	bra  52.b		; 80 34
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	brk $81.b		; 00 81
	brk $85.b		; 00 85
	php		; 08
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$A0.b		; C0 A0
	rti		; 40

	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	bra   6.b		; 80 06
	ora [$06.b]		; 07 06
	ora [$05.b]		; 07 05
	asl $1F.b		; 06 1F
	brk $09.b		; 00 09
	asl $0F0C.w		; 0E 0C 0F
	and [$06.b],Y		; 37 06
	tad		; 5B
	tsb $00.b		; 04 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000000.l		; 0F 00 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $2500.w		; 0E 00 25
	lda $1EEF5E.l		; AF 5E EF 1E
	sbc [$0E.b],Y		; F7 0E
	sbc $6702.w,X		; FD 02 67
	brk $B3.b		; 00 B3
	ora $590FD6.l		; 0F D6 0F 59
	stx $00.b		; 86 00
	lsr $5E00.w,X		; 5E 00 5E
	brk $5E.b		; 00 5E
	brk $06.b		; 00 06
	brk $98.b		; 00 98
	brk $5F.b		; 00 5F
	brk $AF.b		; 00 AF
	brk $B6.b		; 00 B6
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $B8.b		; 00 B8
	brk $E6.b		; 00 E6
	brk $5E.b		; 00 5E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $38.b		; 00 38
	brk $BC.b		; 00 BC
	cpy #$00.b		; C0 00
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
	stz $6301.w,X		; 9E 01 63
	brk $1E.b		; 00 1E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $001F00.l,X		; 7F 00 1F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	cpy #$DB.b		; C0 DB
	jsr $0816.w		; 20 16 08
	sbc ($01.b)		; F2 01
	ora $0200.w		; 0D 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bmi   0.b		; 30 00
	bit $E3C0.w		; 2C C0 E3
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
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
	sta ($0C.b,S),Y		; 93 0C
	lsr $3E00.w,X		; 5E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $62.b		; 00 62
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	jmp ($2C00.w)		; 6C 00 2C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	tsb $07.b		; 04 07
	ora $001908.l		; 0F 08 19 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
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
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($577C.w,X)		; 7C 7C 57
	ldx $C9.b,Y		; B6 C9
	ldx $4EB0.w,Y		; BE B0 4E
	pla		; 68
	bra -16.b		; 80 F0
	brk $01.b		; 00 01
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	brk $28.b		; 00 28
	bra  22.b		; 80 16
	bra   0.b		; 80 00
	rti		; 40

	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	brk $01.b		; 00 01
	tyx		; BB
	ldy $3F9F.w,X		; BC 9F 3F
	rti		; 40

	brk $5F.b		; 00 5F
	and $FF3F7F.l,X		; 3F 7F 3F FF
	and $FEDEBF.l,X		; 3F BF DE FE
	cmp ($00.b,X)		; C1 00
	jsr ($7F01.w,X)		; FC 01 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	ora $3F1F3F.l,X		; 1F 3F 1F 3F
	asl $00DE.w		; 0E DE 00
	sbc ($FF.b,X)		; E1 FF
	bit $FDFA.w,X		; 3C FA FD
	stz $78.b,X		; 74 78
	php		; 08
	bcc -48.b		; 90 D0
	cpx #$D0.b		; E0 D0
	cpx #$F0.b		; E0 F0
	brk $E0.b		; 00 E0
	cpy #$30.b		; C0 30
	and $FCF0.w,X		; 3D F0 FC
	jsr $00F8.w		; 20 F8 00
	beq   0.b		; F0 00
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	cpy #$A2.b		; C0 A2
	php		; 08
	tad		; 5B
	dec $EC2B.w		; CE 2B EC
	phd		; 0B
	jmp ($7C41.w,X)		; 7C 41 7C
	rol $B860.w,X		; 3E 60 B8
	rti		; 40

	dey		; 88
	bvs 112.b		; 70 70
	tsb $B0.b		; 04 B0
	cop $54.b		; 02 54
	brk $34.b		; 00 34
	brk $00.b		; 00 00
	rep #$00		; C2 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $70.b		; 00 70
	ldy $EA01.w,X		; BC 01 EA
	ora ($B5.b),Y		; 11 B5
	cop $55.b		; 02 55
	cop $3B.b		; 02 3B
	tsb $0F.b		; 04 0F
	brk $0B.b		; 00 0B
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	tad		; 5B
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $2F.b		; 00 2F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	lda [$00.b],Y		; B7 00
	ldx $6A11.w		; AE 11 6A
	ora ($4D.b),Y		; 11 4D
	bmi  79.b		; 30 4F
	bmi -113.b		; 30 8F
	bmi  -4.b		; 30 FC
	ora $D0.b,S		; 03 D0
	brk $00.b		; 00 00
	plx		; FA
	brk $F9.b		; 00 F9
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldx $AD02.w		; AE 02 AD
	tsb $73.b		; 04 73
	dey		; 88
	pha		; 48
	clv		; B8
	sta $FF007F.l		; 8F 7F 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora ($D8.b,X)		; 01 D8
	ora $D0.b,S		; 03 D0
	ora $8017C0.l		; 0F C0 17 80
	bmi   0.b		; 30 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	jsr $F93F.w		; 20 3F F9
	ora ($FE.b,X)		; 01 FE
	brk $01.b		; 00 01
	ora ($FC.b,X)		; 01 FC
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C00000.l,X		; FF 00 00 C0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$03.b]		; 07 03
	ora [$07.b]		; 07 07
	ora $000F07.l		; 0F 07 0F 00
	ora $011F00.l,X		; 1F 00 1F 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $07.b		; 04 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $1F1F08.l		; 0F 08 1F 1F
	ora $00001F.l,X		; 1F 1F 00 00
	brk $E0.b		; 00 E0
	jsr $AE38.w		; 20 38 AE
	bcs -71.b		; B0 B9
	tay		; A8
	adc [$D0.b],Y		; 77 D0
	bit $D3.b,X		; 34 D3
	rol $D1.b		; 26 D1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bvc   0.b		; 50 00
	pha		; 48
	asl $1F90.w		; 0E 90 1F
	cpy #$1F.b		; C0 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $D8.b		; 00 D8
	brk $36.b		; 00 36
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	sed		; F8
	jmp ($FFFF.w,X)		; 7C FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $E0FFF1.l,X		; FF F1 FF E0
	sbc $01FBE4.l,X		; FF E4 FB 01
	xce		; FB
	sbc $C0FF83.l,X		; FF 83 FF C0
	sbc $02FF39.l,X		; FF 39 FF 02
	sbc $1BFB0E.l,X		; FF 0E FB 1B
	sbc [$12.b],Y		; F7 12
	inc $F0.b,X		; F6 F0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpx #$F0.b		; E0 F0
	ldy #$F0.b		; A0 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	beq  80.b		; F0 50
	beq  80.b		; F0 50
	beq -16.b		; F0 F0
	beq 112.b		; F0 70
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	ror $D2.b,X		; 76 D2
	eor $13CFAB.l		; 4F AB CF 13
	tsa		; 3B
	ora [$1C.b]		; 07 1C
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tas		; 1B
	cop $3B.b		; 02 3B
	ora $37.b,S		; 03 37
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	xce		; FB
	jsr ($3EDF.w,X)		; FC DF 3E
	pld		; 2B
	asl $021D.w,X		; 1E 1D 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  -4.b		; 80 FC
	sec		; 38
	jsr ($3E0C.w,X)		; FC 0C 3E
	brk $1E.b		; 00 1E
	brk $02.b		; 00 02
	brk $F0.b		; 00 F0
	beq  -4.b		; F0 FC
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $05FF67.l,X		; FF 67 FF 05
	sbc $30FF01.l,X		; FF 01 FF 30
	cmp $FCF0F0.l		; CF F0 F0 FC
	tsb $D2FE.w		; 0C FE D2
	sbc $98FF07.l,X		; FF 07 FF 98
	sbc $4EFFFA.l,X		; FF FA FF 4E
	cmp [$03.b]		; C7 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpy #$E0.b		; C0 E0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	cpx #$20.b		; E0 20
	cpx #$60.b		; E0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $06.b		; 00 06
	php		; 08
	phd		; 0B
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	ora ($3E.b,X)		; 01 3E
	asl $0E21.w,X		; 1E 21 0E
	and ($0C.b),Y		; 31 0C
	and ($FC.b,S),Y		; 33 FC
	ora $C3.b,S		; 03 C3
	brk $03.b		; 00 03
	jsr ($609F.w,X)		; FC 9F 60
	and $203C.w,X		; 3D 3C 20
	jsr $3031.w		; 20 31 30
	and ($30.b),Y		; 31 30
	cop $00.b		; 02 00
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	ora $0506.w		; 0D 06 05
	asl $0B.b		; 06 0B
	tsb $0A0F.w		; 0C 0F 0A
	ora $1F0A.w,X		; 1D 0A 1F
	brk $9B.b		; 00 9B
	bit $79F6.w,X		; 3C F6 79
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	brk $0A.b		; 00 0A
	brk $21.b		; 00 21
	brk $7D.b		; 00 7D
	brk $79.b		; 00 79
	sbc $87F7FF.l,X		; FF FF F7 87
	ldx $77.b,Y		; B6 77
	sbc $76.b		; E5 76
	adc ($F0.b,X)		; 61 F0
	sbc $6F6E.w		; ED 6E 6F
	ldy #$B3.b		; A0 B3
	cpy #$7E.b		; C0 7E
	sbc $068F06.l,X		; FF 06 8F 06
	adc $00FE00.l,X		; 7F 00 FE 00
	inc $7E00.w,X		; FE 00 7E
	brk $B0.b		; 00 B0
	brk $CE.b		; 00 CE
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	sta [$00.b]		; 87 00
	ora $03.b		; 05 03
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	sbc $000200.l,X		; FF 00 02 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cpy $38.b		; C4 38
	sed		; F8
	brk $F0.b		; 00 F0
	cpx #$10.b		; E0 10
	brk $D0.b		; 00 D0
	brk $50.b		; 00 50
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra -24.b		; 80 E8
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$78.b		; C0 78
	ora [$FC.b]		; 07 FC
	brk $F7.b		; 00 F7
	brk $E8.b		; 00 E8
	brk $C8.b		; 00 C8
	brk $68.b		; 00 68
	brk $66.b		; 00 66
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003800.l,X		; 3F 00 38 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	tsb $001F.w		; 0C 1F 00
	ora $003E00.l,X		; 1F 00 3E 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $131F08.l		; 0F 08 1F 13
	asl $3D1E.w,X		; 1E 1E 3D
	bit $B060.w,X		; 3C 60 B0
	stx $D46C.w		; 8E 6C D4
	tad		; 5B
	dey		; 88
	eor ($DA.b),Y		; 51 DA
	dey		; 88
	sbc $CC.b,X		; F5 CC
	dec $EE.b,X		; D6 EE
	and ($4F.b),Y		; 31 4F
	jsr $08BC.w		; 20 BC 08
	jmp ($7802.w,X)		; 7C 02 78
	ora [$70.b]		; 07 70
	ora [$A0.b]		; 07 A0
	phb		; 8B
	cpy #$89.b		; C0 89
	cpx #$06.b		; E0 06
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	jsr $1048.w		; 20 48 10
	ldy $A8.b,X		; B4 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rti		; 40

	asl A		; 0A
	bvs -89.b		; 70 A7
	beq   1.b		; F0 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $01.b		; 00 01
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -68.b		; 80 BC
	brk $D8.b		; 00 D8
	asl $E8.b		; 06 E8
	ora [$46.b]		; 07 46
	sbc $FC0771.l,X		; FF 71 07 FC
	ora ($0E.b,X)		; 01 0E
	brk $F9.b		; 00 F9
	jsr ($6000.w,X)		; FC 00 60
	brk $B0.b		; 00 B0
	asl $10.b		; 06 10
	lda ($00.b,X)		; A1 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq  96.b		; F0 60
	beq  80.b		; F0 50
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $05.b		; 00 05
	cop $06.b		; 02 06
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
	brk $3C.b		; 00 3C
	cmp [$B8.b]		; C7 B8
	cmp [$FF.b],Y		; D7 FF
	sty $84.b		; 84 84
	ldx $00.b,Y		; B6 00
	jsr ($38C0.w,X)		; FC C0 38
	bcs   0.b		; B0 00
	sed		; F8
	brk $83.b		; 00 83
	ora ($1F.b,S),Y		; 13 1F
	ora ($78.b),Y		; 11 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $9841.w		; 1C 41 98
	adc $3EC1.w,Y		; 79 C1 3E
	cmp $0E7730.l		; CF 30 77 0E
	ora $0602.w,X		; 1D 02 06
	brk $06.b		; 00 06
	ora ($3E.b,X)		; 01 3E
	brk $26.b		; 00 26
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	asl $0600.w		; 0E 00 06
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cmp $03FC00.l,X		; DF 00 FC 03
	ora [$7F.b]		; 07 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	ora [$07.b]		; 07 07
	adc ($F9.b),Y		; 71 F9
	jsr ($00FE.w,X)		; FC FE 00
	rts		; 60

	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora $FF03FF.l,X		; 1F FF 03 FF
	brk $FF.b		; 00 FF
	sei		; 78
	sbc $36316A.l,X		; FF 6A 31 36
	ora ($2F.b,X)		; 01 2F
	brk $3C.b		; 00 3C
	ora ($2D.b,X)		; 01 2D
	cop $1D.b		; 02 1D
	cop $0B.b		; 02 0B
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	and $00.b,X		; 35 00
	ora $1C00.w		; 0D 00 1C
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	sbc #$D2.b		; E9 D2
	nop		; EA
	cmp ($ED.b),Y		; D1 ED
	bpl -113.b		; 10 8F
	bmi -115.b		; 30 8D
	and ($5A.b,S),Y		; 33 5A
	rol $64.b		; 26 64
	trb $3FC3.w		; 1C C3 3F
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $1F.b		; 00 1F
	brk $FC.b		; 00 FC
	cop $F8.b		; 02 F8
	ora $E0.b		; 05 E0
	phd		; 0B
	bra  28.b		; 80 1C
	brk $29.b		; 00 29
	tsb $29.b		; 04 29
	tsb $29.b		; 04 29
	tsb $19.b		; 04 19
	tsb $1A.b		; 04 1A
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	rol $00.b		; 26 00
	ror A		; 6A
	tsb $7A.b		; 04 7A
	tsb $76.b		; 04 76
	brk $3E.b		; 00 3E
	brk $1A.b		; 00 1A
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora $0700.w		; 0D 00 07
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
	brk $7B.b		; 00 7B
	brk $56.b		; 00 56
	brk $67.b		; 00 67
	brk $A9.b		; 00 A9
	tsb $C8.b		; 04 C8
	and $C8.b		; 25 C8
	and $10.b		; 25 10
	eor $4D90.w		; 4D 90 4D
	brk $D4.b		; 00 D4
	brk $BD.b		; 00 BD
	brk $BD.b		; 00 BD
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpx #$40.b		; E0 40
	ldy #$40.b		; A0 40
	cpx #$00.b		; E0 00
	bvc   0.b		; 50 00
	bvc   0.b		; 50 00
	beq   0.b		; F0 00
	inx		; E8
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F3A3F.l,X		; 1F 3F 3A 7F
	and ($7F.b)		; 32 7F
	rts		; 60

	sbc $0F0707.l,X		; FF 07 07 0F
	php		; 08
	ora $2D3F18.l,X		; 1F 18 3F 2D
	and $457F20.l,X		; 3F 20 7F 45
	adc $9FFF4D.l,X		; 7F 4D FF 9F
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	beq  -2.b		; F0 FE
	jsr ($F6FE.w,X)		; FC FE F6
	sbc $04FF86.l,X		; FF 86 FF 04
	sbc $809E60.l,X		; FF 60 9E 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE2E.w,X		; FE 2E FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora #$79FF.w		; 09 FF 79
	sbc $0686DB.l,X		; FF DB 86 06
	inc $4836.w		; EE 36 48
	and #$16B2.w		; 29 B2 16
	eor $94.b		; 45 94
	tax		; AA
	dec $D9.b		; C6 D9
	sbc [$F8.b]		; E7 F8
	sbc $24F9F2.l,X		; FF F2 F9 24
	lda $05BE08.l,X		; BF 08 BE 05
	cli		; 58
	ora $B8.b,S		; 03 B8
	ora $D0.b		; 05 D0
	.db $82, $E0, $E1		; 82 E0 E1
	jsr ($FC60.w,X)		; FC 60 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	rti		; 40

	bpl -92.b		; 10 A4
	sty $DA51.w		; 8C 51 DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	tsb $0670.w		; 0C 70 06
	ldy #$0206.w		; A0 06 02
	bmi  11.b		; 30 0B
	clc		; 18
	ora $1C.b		; 05 1C
	ora ($0C.b,X)		; 01 0C
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $000700.l,X		; 1F 00 07 00
	phd		; 0B
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	cpy $C480.w		; CC 80 C4
	sty $66.b		; 84 66
	cpy #$C062.w		; C0 62 C0
	and ($E2.b,S),Y		; 33 E2
	and ($60.b,S),Y		; 33 60
	and ($28.b),Y		; 31 28
	and $00B0.w,Y		; 39 B0 00
	sec		; 38
	brk $D8.b		; 00 D8
	brk $9C.b		; 00 9C
	brk $DE.b		; 00 DE
	brk $CC.b		; 00 CC
	brk $CE.b		; 00 CE
	brk $C6.b		; 00 C6
	brk $2A.b		; 00 2A
	tsb $35.b		; 04 35
	php		; 08
	eor ($08.b,S),Y		; 53 08
	lsr A		; 4A
	bpl 100.b		; 10 64
	bpl -108.b		; 10 94
	jsr $00A8.w		; 20 A8 00
	bne   0.b		; D0 00
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	plb		; AB
	tsb $29.b		; 04 29
	tsb $29.b		; 04 29
	tsb $29.b		; 04 29
	tsb $26.b		; 04 26
	php		; 08
	jsl $082208.l		; 22 08 22 08
	jsl $1E0008.l		; 22 08 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bit $08.b		; 24 08
	bit $08.b,X		; 34 08
	bit $3C00.w,X		; 3C 00 3C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5A.b		; 00 5A
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	eor $7800.w		; 4D 00 78
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0700.w,X		; 3E 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $1E.b		; 04 1E
	brk $22.b		; 00 22
	php		; 08
	phy		; 5A
	brk $AC.b		; 00 AC
	bpl -92.b		; 10 A4
	bpl 104.b		; 10 68
	bpl  88.b		; 10 58
	brk $00.b		; 00 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $06.b		; 05 06
	ora $0F0E.w,X		; 1D 0E 0F
	asl $06.b		; 06 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	asl $0E00.w		; 0E 00 0E
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bcc  77.b		; 90 4D
	adc ($1C.b,X)		; 61 1C
	tsa		; 3B
	mvp $70,$0F		; 44 0F 70
	php		; 08
	sec		; 38
	phd		; 0B
	sec		; 38
	ora ($18.b,X)		; 01 18
	ora $1C.b		; 05 1C
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $0D.b		; 00 0D
	bpl   0.b		; 10 00
	ora [$00.b],Y		; 17 00
	ora [$00.b]		; 07 00
	ora $000B00.l		; 0F 00 0B 00
	bit $80.b,X		; 34 80
	bit $80.b,X		; 34 80
	sei		; 78
	sty $D0.b		; 84 D0
	bit $EEA8.w,X		; 3C A8 EE
	tsb $66.b		; 04 66
	pei ($76.b)		; D4 76
	bra  51.b		; 80 33
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $C0.b		; 00 C0
	plp		; 28
	brk $14.b		; 00 14
	brk $D8.b		; 00 D8
	brk $88.b		; 00 88
	brk $DE.b		; 00 DE
	brk $00.b		; 00 00
	sbc $69F20A.l,X		; FF 0A F2 69
	stz $4C30.w		; 9C 30 4C
	ora ($6E.b)		; 12 6E
	beq  15.b		; F0 0F
	dec A		; 3A
	cmp $38.b,S		; C3 38
	tya		; 98
	sbc ($F2.b,S),Y		; F3 F2
	sbc $87E0.w		; ED E0 87
	bra  71.b		; 80 47
	rti		; 40

	adc $60.b		; 65 60
	ora [$00.b]		; 07 00
	brk $E4.b		; 00 E4
	bpl -34.b		; 10 DE
	cpx #$701C.w		; E0 1C 70
	jmp.w [$48E0]		; DC E0 48
	beq  24.b		; F0 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	trb $44.b		; 14 44
	tsb $44.b		; 04 44
	cld		; D8
	rts		; 60

	cpx #$E000.w		; E0 00 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $E6.b		; 00 E6
	pea $ECC6.w		; F4 C6 EC
	dec $A0E0.w		; CE E0 A0
	cpy #$C0A0.w		; C0 A0 C0
	cpy #$C000.w		; C0 00 C0
	bra   0.b		; 80 00
	jsr ($FC00.w,X)		; FC 00 FC
	bra  -4.b		; 80 FC
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	and ($FA.b,X)		; 21 FA
	asl $70.b		; 06 70
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	asl $00.b		; 06 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F1700.l		; 0F 00 17 0F
	jsr $3E00.w		; 20 00 3E
	brk $55.b		; 00 55
	php		; 08
	lda $18.b		; A5 18
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $0F.b,S		; 03 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rol $CC3F.w		; 2E 3F CC
	sbc $FD18E7.l,X		; FF E7 18 FD
	dec $59.b		; C6 59
	sec		; 38
	rep #$00		; C2 00
	phy		; 5A
	brk $AA.b		; 00 AA
	bpl -64.b		; 10 C0
	brk $22.b		; 00 22
	brk $18.b		; 00 18
	brk $80.b		; 00 80
	dec $00.b		; C6 00
	ldx $3C00.w,Y		; BE 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora #$0900.w		; 09 00 09
	brk $12.b		; 00 12
	brk $21.b		; 00 21
	brk $1E.b		; 00 1E
	ora ($03.b,X)		; 01 03
	ora [$03.b]		; 07 03
	ora $84.b,S		; 03 84
	tsb $0700.w		; 0C 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	lsr $AF8F.w		; 4E 8F AF
	cmp $AFDFDF.l,X		; DF DF DF AF
	cmp $F8A753.l,X		; DF 53 A7 F8
	ora $06B6.w,Y		; 19 B6 06
	lda $9F0401.l		; AF 01 04 9F
	asl $0FDF.w		; 0E DF 0F
	sbc $01DF07.l,X		; FF 07 DF 01
	lda $069F00.l		; AF 00 9F 06
	eor $295301.l		; 4F 01 53 29
	tsb $1A.b		; 04 1A
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	brk $0E.b		; 00 0E
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C00.w,X		; 1E 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $3C000F.l		; 0F 0F 00 3C
	bit $7F7F.w,X		; 3C 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $12FF9C.l,X		; FF 9C FF 12
	sbc $3CED1A.l,X		; FF 1A ED 3C
	bit $437F.w,X		; 3C 7F 43
	sbc $BBFFC2.l,X		; FF C2 FF BB
	sbc $63FF00.l,X		; FF 00 FF 63
	sbc $E1ED.w,X		; FD ED E1
	cpx #$C739.w		; E0 39 C7
	bit #$3867.w		; 89 67 38
	ora $2F23EA.l		; 0F EA 23 2F
	sbc ($17.b,X)		; E1 17
	beq  11.b		; F0 0B
	sei		; 78
	ora $3C.b		; 05 3C
	cop $F0.b		; 02 F0
	cop $F0.b		; 02 F0
	ora $C0.b		; 05 C0
	trb $DE00.w		; 1C 00 DE
	brk $6F.b		; 00 6F
	brk $37.b		; 00 37
	brk $0B.b		; 00 0B
	brk $50.b		; 00 50
	trb $0770.w		; 1C 70 07
	stz $4E81.w		; 9C 81 4E
	cpy #$F013.w		; C0 13 F0
	sta $FC.b		; 85 FC
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	bra  63.b		; 80 3F
	inx		; E8
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $6F.b		; 00 6F
	brk $1B.b		; 00 1B
	brk $85.b		; 00 85
	brk $E1.b		; 00 E1
	brk $52.b		; 00 52
	php		; 08
	.db $42, $08		; 42 08
	rol $08.b		; 26 08
	and #$1104.w		; 29 04 11
	tsb $13.b		; 04 13
	tsb $0F.b		; 04 0F
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	bit $3C00.w,X		; 3C 00 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bcc  48.b		; 90 30
	mvp $04,$68		; 44 68 04
	inx		; E8
	clc		; 18
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  48.b		; 80 30
	cpy #$8018.w		; C0 18 80
	clc		; 18
	cpy #$0018.w		; C0 18 00
	bmi   0.b		; 30 00
	brk $1F.b		; 00 1F
	ora ($1B.b,X)		; 01 1B
	ora ($1C.b,X)		; 01 1C
	ora ($24.b,X)		; 01 24
	cop $26.b		; 02 26
	ora $2F.b,S		; 03 2F
	ora [$37.b]		; 07 37
	ora [$00.b]		; 07 00
	tsb $01.b		; 04 01
	ora $0D00.w		; 0D 00 0D
	brk $0B.b		; 00 0B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	ora $17.b,S		; 03 17
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	sec		; 38
	bcs  72.b		; B0 48
	jmp $147358.l		; 5C 58 73 14
	lda ($0B.b),Y		; B1 0B
	sec		; 38
	sty $DC.b		; 84 DC
	sbc ($FF.b,X)		; E1 FF
	brk $0F.b		; 00 0F
	jsr $50F0.w		; 20 F0 50
	cpx #$C00C.w		; E0 0C C0
	ora $C017C0.l		; 0F C0 17 C0
	phd		; 0B
	cpx #$F0C2.w		; E0 C2 F0
	brk $FC.b		; 00 FC
	pla		; 68
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	brk $5C.b		; 00 5C
	brk $54.b		; 00 54
	php		; 08
	rol A		; 2A
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FCA8.w,X)		; FC A8 FC
	php		; 08
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq 112.b		; F0 70
	sed		; F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	mvn $B4,$BC		; 54 BC B4
	bpl  -8.b		; 10 F8
	bra -16.b		; 80 F0
	rti		; 40

	ldy #$C000.w		; A0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	tay		; A8
	bvs  48.b		; 70 30
	ldy #$0020.w		; A0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	brk $4C.b		; 00 4C
	bpl  44.b		; 10 2C
	brk $22.b		; 00 22
	php		; 08
	rol INIDSP.w		; 2E 00 21
	tsb $1F.b		; 04 1F
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	sbc [$0F.b],Y		; F7 0F
	.db $62, $76, $41		; 62 76 41
	adc ($23.b),Y		; 71 23
	rol $2F.b,X		; 36 2F
	bmi   0.b		; 30 00
	and $071F07.l,X		; 3F 07 1F 07
	ora $000F03.l,X		; 1F 03 0F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ror $7000.w,X		; 7E 00 70
	dey		; 88
	cmp [$EB.b]		; C7 EB
	pea $F0EC.w		; F4 EC F0
	inx		; E8
	beq   8.b		; F0 08
	brk $F4.b		; 00 F4
	beq -12.b		; F0 F4
	php		; 08
	ldx $0000.w		; AE 00 00
	pea $F480.w		; F4 80 F4
	cpy #$C0F2.w		; C0 F2 C0
	beq   0.b		; F0 00
	beq  96.b		; F0 60
	sed		; F8
	brk $08.b		; 00 08
	brk $50.b		; 00 50
	eor $1760.w,X		; 5D 60 17
	jsr $0274.w		; 20 74 02
	ora $22.b,X		; 15 22
	asl $21.b,X		; 16 21
	mvn $72,$61		; 54 61 72
	adc ($F3.b,X)		; 61 F3
	brk $00.b		; 00 00
	sep #$00		; E2 00
	ror A		; 6A
	brk $0B.b		; 00 0B
	brk $6B.b		; 00 6B
	brk $6B.b		; 00 6B
	brk $EB.b		; 00 EB
	brk $ED.b		; 00 ED
	brk $0D.b		; 00 0D
	tyx		; BB
	brk $DC.b		; 00 DC
	brk $AB.b		; 00 AB
	mvp $42,$35		; 44 35 42
	eor ($21.b)		; 52 21
	sta $AE30.w		; 8D 30 AE
	bpl  71.b		; 10 47
	tya		; 98
	brk $D4.b		; 00 D4
	brk $EB.b		; 00 EB
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $0F.b		; 00 0F
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	ora ($02.b,X)		; 01 02
	cop $0D.b		; 02 0D
	ora ($0D.b)		; 12 0D
	ora ($09.b,S),Y		; 13 09
	ora $0C0C0F.l		; 0F 0F 0C 0C
	tsb $04.b		; 04 04
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	tsb $010C.w		; 0C 0C 01
	ora $2E0D01.l		; 0F 01 0D 2E
	cmp ($E1.b,X)		; C1 E1
	ldx $455F.w		; AE 5F 45
	eor $CF49C1.l,X		; 5F C1 49 CF
	bpl  -1.b		; 10 FF
	jmp $E0FF.w		; 4C FF E0
	stz $0010.w,X		; 9E 10 00
	bvc   4.b		; 50 04
	ldy $3E04.w,X		; BC 04 3E
	brk $B6.b		; 00 B6
	brk $EF.b		; 00 EF
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	asl $0F01.w,X		; 1E 01 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$701B.w		; C0 1B 70
	ora $8CA0.w,Y		; 19 A0 8C
	cli		; 58
	cpy $E624.w		; CC 24 E6
	trb $007E.w		; 1C 7E 00
	ror $720C.w,X		; 7E 0C 72
	beq   0.b		; F0 00
	cpx #$7800.w		; E0 00 78
	brk $B0.b		; 00 B0
	brk $58.b		; 00 58
	brk $20.b		; 00 20
	brk $3C.b		; 00 3C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $C8.b		; 00 C8
	brk $D8.b		; 00 D8
	brk $68.b		; 00 68
	bcc -96.b		; 90 A0
	trb $3FD8.w		; 1C D8 3F
	rol A		; 2A
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jsr $C000.w		; 20 00 C0
	bpl -64.b		; 10 C0
	bit $00.b		; 24 00
	eor $F800.w,X		; 5D 00 F8
	brk $5C.b		; 00 5C
	brk $22.b		; 00 22
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $183926.l,X		; 1F 26 39 18
	adc $00.b		; 65 00
	eor $08.b,X		; 55 08
	eor $08.b,X		; 55 08
	eor $08.b,X		; 55 08
	eor $08.b,X		; 55 08
	rol $08.b,X		; 36 08
	tsb $06.b		; 04 06
	php		; 08
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	rol $08.b		; 26 08
	rol $08.b		; 26 08
	rol $08.b		; 26 08
	rol A		; 2A
	tsb $2A.b		; 04 2A
	tsb $2A.b		; 04 2A
	tsb $2A.b		; 04 2A
	tsb $1A.b		; 04 1A
	tsb $00.b		; 04 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	inc A		; 1A
	tsb $11.b		; 04 11
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E00.w		; 0C 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   6.b		; 50 06
	tad		; 5B
	tsb $7F.b		; 04 7F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $002700.l		; 2F 00 27 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	bra  48.b		; 80 30
	rti		; 40

	bpl -128.b		; 10 80
	tya		; 98
	jmp ($00F0.w)		; 6C F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $90.b		; 00 90
	brk $1C.b		; 00 1C
	inx		; E8
	bit $D0.b,X		; 34 D0
	nop		; EA
	jsr $409A.w		; 20 9A 40
	lda ($08.b)		; B2 08
	eor ($08.b)		; 52 08
	eor ($08.b)		; 52 08
	eor $08.b		; 45 08
	cpx #$4008.w		; E0 08 40
	clc		; 18
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cpx #$C9BF.w		; E0 BF C9
	bit $3A90.w,X		; 3C 90 3A
	sbc [$F7.b]		; E7 F7
	cmp $DF1FEF.l		; CF EF 1F DF
	ora $0EF63F.l,X		; 1F 3F F6 0E
	bpl -127.b		; 10 81
	brk $8F.b		; 00 8F
	bpl 127.b		; 10 7F
	.db $62, $FF, $07		; 62 FF 07
	sbc $06FF0F.l,X		; FF 0F FF 06
	sbc $804F00.l,X		; FF 00 4F 80
	brk $C0.b		; 00 C0
	bra   1.b		; 80 01
	brk $1E.b		; 00 1E
	sta ($9C.b,X)		; 81 9C
	bne -76.b		; D0 B4
	lda $6C.b,S		; A3 6C
	rti		; 40

	lda ($81.b)		; B2 81
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E1.b		; 00 E1
	brk $F7.b		; 00 F7
	jsr $40EB.w		; 20 EB 40
	cmp [$00.b],Y		; D7 00
	cmp $000000.l		; CF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	ora $79.b,S		; 03 79
	ora [$90.b]		; 07 90
	adc $000000.l		; 6F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $6004.w		; 20 04 60
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	brk $3B.b		; 00 3B
	ora ($FE.b)		; 12 FE
	phk		; 4B
	sed		; F8
	bit $BAE0.w		; 2C E0 BA
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	brk $21.b		; 00 21
	brk $87.b		; 00 87
	brk $1F.b		; 00 1F
	brk $7D.b		; 00 7D
	brk $1F.b		; 00 1F
	cpx #$E858.w		; E0 58 E8
	dec A		; 3A
	and #$F41D.w		; 29 1D F4
	jsr ($FD24.w,X)		; FC 24 FD
	inc A		; 1A
	adc ($10.b,S),Y		; 73 10
	adc $D0.b,X		; 75 D0
	brk $00.b		; 00 00
	ldy #$C80F.w		; A0 0F C8
	ora $C00704.l		; 0F 04 07 C0
	ora [$D0.b]		; 07 D0
	inc A		; 1A
	bne  28.b		; D0 1C
	bcc  30.b		; 90 1E
	bra   0.b		; 80 00
	adc $FC0200.l,X		; 7F 00 02 FC
	jsr ($0003.w,X)		; FC 03 00
	brk $1F.b		; 00 1F
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003F0F.l		; 0F 0F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $00303F.l		; 0F 3F 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	sed		; F8
	beq  -4.b		; F0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	sed		; F8
	clc		; 18
	jsr ($098C.w,X)		; FC 8C 09
	asl $F7.b		; 06 F7
	brk $07.b		; 00 07
	brk $FE.b		; 00 FE
	brk $C2.b		; 00 C2
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $02.b		; 14 02
	asl A		; 0A
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	bra -98.b		; 80 9E
	rts		; 60

	dec A		; 3A
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $002F00.l		; 2F 00 2F 00
	bit $4A01.w		; 2C 01 4A
	ora ($4B.b,X)		; 01 4B
	brk $4B.b		; 00 4B
	brk $4E.b		; 00 4E
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	inc A		; 1A
	brk $18.b		; 00 18
	brk $1B.b		; 00 1B
	brk $3D.b		; 00 3D
	brk $3D.b		; 00 3D
	brk $3C.b		; 00 3C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	adc $FE0100.l,X		; 7F 00 01 FE
	ora [$00.b]		; 07 00
	sed		; F8
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	inx		; E8
	sei		; 78
	trb $8C.b		; 14 8C
	brk $6A.b		; 00 6A
	bvs -116.b		; 70 8C
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	cpx #$F006.w		; E0 06 F0
	asl $90.b		; 06 90
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $C4.b		; 00 C4
	brk $38.b		; 00 38
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$FE		; 44 FE 00
	sbc $1E631D.l,X		; FF 1D 63 1E
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $07.b		; 02 07
	brk $F3.b		; 00 F3
	bcs  -3.b		; B0 FD
	jsr ($6060.w,X)		; FC 60 60
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	jmp ($3F12.w,X)		; 7C 12 3F
	trb $1F2E.w		; 1C 2E 1F
	adc $0E.b,X		; 75 0E
	ldx $CF41.w,Y		; BE 41 CF
	bmi  57.b		; 30 39
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,S),Y		; 13 00
	trb $1F00.w		; 1C 00 1F
	brk $0E.b		; 00 0E
	brk $71.b		; 00 71
	brk $3D.b		; 00 3D
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	eor #$4186.w		; 49 86 41
	brk $FE.b		; 00 FE
	brk $F1.b		; 00 F1
	brk $FC.b		; 00 FC
	beq  63.b		; F0 3F
	beq -49.b		; F0 CF
	bmi  -7.b		; 30 F9
	brk $00.b		; 00 00
	lda $00BE00.l,X		; BF 00 BE 00
	ora ($00.b,X)		; 01 00
	ora $00F300.l		; 0F 00 F3 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	brk $0A.b		; 00 0A
	dec $1B.b		; C6 1B
	jsr $C837.w		; 20 37 C8
	stz $5008.w,X		; 9E 08 50
	jsr $E313.w		; 20 13 E3
	asl $F807.w		; 0E 07 F8
	ora [$01.b]		; 07 01
	beq   7.b		; F0 07
	beq  15.b		; F0 0F
	cpx #$E007.w		; E0 07 E0
	ora $E00CE0.l		; 0F E0 0C E0
	ora ($F0.b,X)		; 01 F0
	asl $00.b		; 06 00
	pea $C807.w		; F4 07 C8
	asl $1C90.w		; 0E 90 1C
	jsr $C038.w		; 20 38 C0
	beq -128.b		; F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	plx		; FA
	brk $F4.b		; 00 F4
	brk $E8.b		; 00 E8
	brk $D0.b		; 00 D0
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	pei ($21.b)		; D4 21
	lsr $14.b,X		; 56 14
	ora $0A.b,S		; 03 0A
	ora ($05.b,X)		; 01 05
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	bra -88.b		; 80 A8
	rti		; 40

	mvn $AA,$20		; 54 20 AA
	bpl 105.b		; 10 69
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $1E.b		; 00 1E
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	rol $3E7F.w,X		; 3E 7F 3E
	adc $35FF36.l,X		; 7F 36 FF 35
	sbc $61FF61.l,X		; FF 61 FF 61
	sbc $213F.w,Y		; F9 3F 21
	adc $717F4A.l,X		; 7F 4A 7F 71
	adc $C9FF41.l,X		; 7F 41 FF C9
	inc $FECA.w,X		; FE CA FE
	stz $90F6.w,X		; 9E F6 90
	cld		; D8
	jsr ($FEC4.w,X)		; FC C4 FE
	sty $FE.b		; 84 FE
	rti		; 40

	inc $9CE0.w,X		; FE E0 9C
	bvs -100.b		; 70 9C
	bvc -60.b		; 50 C4
	bvc 100.b		; 50 64
	jsr ($FE24.w,X)		; FC 24 FE
	dec A		; 3A
	inc $AE4A.w		; EE 4A AE
	stx $0414.w		; 8E 14 04
	php		; 08
	rti		; 40

	jmp.w [$D860]		; DC 60 D8
	rts		; 60

	rts		; 60

	trb $9C80.w		; 1C 80 9C
	bmi  -8.b		; 30 F8
	jsr ($6D03.w,X)		; FC 03 6D
	tay		; A8
	dec $D950.w,X		; DE 50 D9
	eor ($BC.b),Y		; 51 BC
	eor [$F8.b],Y		; 57 F8
	brk $78.b		; 00 78
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	clv		; B8
	eor [$70.b],Y		; 57 70
	asl $70.b,X		; 16 70
	cop $50.b		; 02 50
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	asl $1F1F.w		; 0E 1F 1F
	and $3F3F1F.l,X		; 3F 1F 3F 3F
	adc $327F36.l,X		; 7F 36 7F 32
	sbc $0F0000.l,X		; FF 00 00 0F
	ora $3F111F.l		; 0F 1F 11 3F
	plp		; 28
	and $447F3A.l,X		; 3F 3A 7F 44
	adc $CDFF49.l,X		; 7F 49 FF CD
	brk $E0.b		; 00 E0
	rts		; 60

	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	stz $16FF.w,X		; 9E FF 16
	sbc $E0FF16.l,X		; FF 16 FF E0
	cpx #$90F0.w		; E0 F0 90
	sed		; F8
	clc		; 18
	jsr ($FE3C.w,X)		; FC 3C FE
	asl $FF.b		; 06 FF
	adc ($FF.b,X)		; 61 FF
	sbc #$A9FF.w		; E9 FF A9
	cmp $3602.w,X		; DD 02 36
	sta ($DD.b,X)		; 81 DD
	bvc -17.b		; 50 EF
	plp		; 28
	adc $D7AE56.l,X		; 7F 56 AE D7
	and $8F37C7.l,X		; 3F C7 37 8F
	brk $3E.b		; 00 3E
	brk $CF.b		; 00 CF
	bvc 115.b		; 50 73
	ldy #$8238.w		; A0 38 82
	asl $42.b,X		; 16 42
	ora [$83.b],Y		; 17 83
	ora [$03.b],Y		; 17 03
	ora $F5F183.l		; 0F 83 F1 F5
	adc $FE.b,S		; 63 FE
	ora ($FF.b),Y		; 11 FF
	cop $75.b		; 02 75
	plx		; FA
	xba		; EB
	bvs  -5.b		; 70 FB
	jmp ($B9F7.w,X)		; 7C F7 B9
	brk $0D.b		; 00 0D
	brk $0B.b		; 00 0B
	brk $81.b		; 00 81
	brk $02.b		; 00 02
	brk $FA.b		; 00 FA
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $B9.b		; 00 B9
	inc A		; 1A
	pla		; 68
	ora $122A.w,Y		; 19 2A 12
	ora #$0009.w		; 09 09 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	jsr $000F.w		; 20 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  80.b		; 80 50
	bra -80.b		; 80 B0
	rti		; 40

	pha		; 48
	jsr $10A4.w		; 20 A4 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	rti		; 40

	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq -64.b		; F0 C0
	and $2FDECF.l,X		; 3F CF DE 2F
	adc $E8.b,X		; 75 E8
	dec $0020.w,X		; DE 20 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$CF00.w		; C0 00 CF
	ora $2F08DF.l		; 0F DF 08 2F
	brk $EE.b		; 00 EE
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3E00.w,X		; 3C 00 3E
	jmp ($F0FA.w,X)		; 7C FA F0
	ror $C9FD.w,X		; 7E FD C9
	and [$25.b],Y		; 37 25
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	clc		; 18
	jsr ($FCE0.w,X)		; FC E0 FC
	bmi  -4.b		; 30 FC
	brk $30.b		; 00 30
	ora $00.b,S		; 03 00
	.db $62, $05, $97		; 62 05 97
	pha		; 48
	inc $7C70.w,X		; FE 70 7C
	sei		; 78
	jmp ($7478.w,X)		; 7C 78 74
	sei		; 78
	sei		; 78
	bvs 104.b		; 70 68
	bvs   1.b		; 70 01
	trb $6A00.w		; 1C 00 6A
	jsr $3074.w		; 20 74 30
	sed		; F8
	bmi  -8.b		; 30 F8
	jsr $20F8.w		; 20 F8 20
	beq  96.b		; F0 60
	beq  15.b		; F0 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $3003.w		; 0C 03 30
	jmp ($AA00.w,X)		; 7C 00 AA
	ora ($C4.b,S),Y		; 13 C4
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $000F00.l		; 0F 00 0F 00
	ora $70.b		; 05 70
	cop $38.b		; 02 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $1700.w		; 0E 00 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $0E0C0F.l		; 0F 0F 0C 0E
	tsb $1C1A.w		; 0C 1A 1C
	ply		; 7A
	jmp ($7076.w,X)		; 7C 76 70
	dec A		; 3A
	stz $7E.b,X		; 74 7E
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	asl $1C08.w,X		; 1E 08 1C
	brk $7C.b		; 00 7C
	sec		; 38
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F4.b		; 00 F4
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0E.b		; 00 0E
	phd		; 0B
	sec		; 38
	and $81B9E0.l		; 2F E0 B9 81
	ror $07.b,X		; 76 07
	inx		; E8
	ora $000000.l		; 0F 00 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7E.b		; 00 7E
	brk $F9.b		; 00 F9
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$10C0.w		; E0 C0 10
	bne  24.b		; D0 18
	bit $FA30.w		; 2C 30 FA
	cpx $E819.w		; EC 19 E8
	tas		; 1B
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $D0.b		; 00 D0
	brk $08.b		; 00 08
	tsb $0E68.w		; 0C 68 0E
	plp		; 28
	asl $1E90.w		; 0E 90 1E
	rts		; 60

	sei		; 78
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	inx		; E8
	brk $90.b		; 00 90
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sbc $17FC03.l,X		; FF 03 FC 17
	sbc $6D03.w,Y		; F9 03 6D
	ora $78.b,S		; 03 78
	inc $0C.b,X		; F6 0C
	cop $0E.b		; 02 0E
	sbc $03.b,X		; F5 03
	sbc $F8F8DB.l,X		; FF DB F8 F8
	cpy #$59C1.w		; C0 C1 59
	eor $7F.b		; 45 7F
	rts		; 60

	ora $00.b,S		; 03 00
	ora $F0.b		; 05 F0
	brk $F8.b		; 00 F8
	cpy $FF.b		; C4 FF
	sei		; 78
	cmp $D0DE60.l		; CF 60 DE D0
	stz $0870.w		; 9C 70 08
	bit $D8.b,X		; 34 D8
	rol A		; 2A
	ldy $0E.b,X		; B4 0E
	rts		; 60

	and $07871B.l,X		; 3F 1B 87 07
	txa		; 8A
	ora ($54.b)		; 12 54
	bit $F0.b,X		; 34 F0
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	tsb $C0.b		; 04 C0
	bpl  11.b		; 10 0B
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EB.b		; 00 EB
	sta $D7.b,X		; 95 D7
	lda $017F.w		; AD 7F 01
	sta $1E6E7F.l,X		; 9F 7F 6E 1E
	inc $2D01.w,X		; FE 01 2D
.ACCU 16
	rep #$EE		; C2 EE
	beq -127.b		; F0 81
	sta $01.b,X		; 95 01
	lda $8101.w		; AD 01 81
	ora $3F007F.l		; 0F 7F 00 3F
	brk $09.b		; 00 09
	brk $F6.b		; 00 F6
	brk $F9.b		; 00 F9
	ora $D8F0E0.l,X		; 1F E0 F0 D8
	sbc $A7E8A0.l		; EF A0 E8 A7
	bit $D3.b,X		; 34 D3
	ora ($E8.b,S),Y		; 13 E8
	php		; 08
	bit $07.b,X		; 34 07
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $203F20.l,X		; 1F 20 3F 20
	and $201FC0.l,X		; 3F C0 1F 20
	ora $000700.l		; 0F 00 07 00
	brk $52.b		; 00 52
	php		; 08
	sbc #$9E04.w		; E9 04 9E
	brk $1B.b		; 00 1B
	cpx #$FE01.w		; E0 01 FE
	inc $0001.w,X		; FE 01 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	bit $1E00.w,X		; 3C 00 1E
	brk $E3.b		; 00 E3
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	lda ($C0.b),Y		; B1 C0
	inc $EFE0.w		; EE E0 EF
	inx		; E8
	inc $E4.b		; E6 E4
	ora $E0FE1C.l,X		; 1F 1C FE E0
	cpx $B303.w		; EC 03 B3
	brk $00.b		; 00 00
	cpy #$F1C0.w		; C0 C0 F1
	cpx #$C0F8.w		; E0 F8 C0
	sbc $FC04.w,X		; FD 04 FC
	brk $E1.b		; 00 E1
	brk $1F.b		; 00 1F
	brk $4F.b		; 00 4F
	xba		; EB
	clc		; 18
	tsa		; 3B
	php		; 08
	pei ($0C.b)		; D4 0C
	sbc $070807.l		; EF 07 08 07
	sec		; 38
	ora [$70.b]		; 07 70
	sta $173FDE.l		; 8F DE 3F 17
	brk $07.b		; 00 07
	cpy #$200B.w		; C0 0B 20
	brk $F0.b		; 00 F0
	ora [$F0.b]		; 07 F0
	asl $F0.b		; 06 F0
	brk $C0.b		; 00 C0
	and ($80.b,X)		; 21 80
	sbc $306E70.l,X		; FF 70 6E 30
	and $3500.w,X		; 3D 00 35
	php		; 08
	and $003F18.l		; 2F 18 3F 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	brk $79.b		; 00 79
	brk $31.b		; 00 31
	brk $0A.b		; 00 0A
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	lda $4E00.w		; AD 00 4E
	bmi -45.b		; 30 D3
	tsb $07A8.w		; 0C A8 07
	lsr $01.b,X		; 56 01
	adc $9B00.w		; 6D 00 9B
	jsr $18A4.w		; 20 A4 18
	brk $73.b		; 00 73
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $F3.b		; 00 F3
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	sbc $005F20.l		; EF 20 5F 00
	cmp $60A000.l,X		; DF 00 A0 60
	lda $7F807F.l,X		; BF 7F 80 7F
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	ora $803F80.l,X		; 1F 80 3F 80
	and $005F80.l,X		; 3F 80 5F 00
	rti		; 40

	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E1.b		; 00 E1
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	brk $0F.b		; 00 0F
	ora $00FF00.l		; 0F 00 FF 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	brk $17.b		; 00 17
	cpx #$1FE0.w		; E0 E0 1F
	sbc [$00.b]		; E7 00
	asl $0300.w,X		; 1E 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	ror $8280.w		; 6E 80 82
	brk $7C.b		; 00 7C
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jsr ($8000.w,X)		; FC 00 80
	brk $00.b		; 00 00
	ror $7777.w,X		; 7E 77 77
	plx		; FA
	adc $7F7EFD.l,X		; 7F FD 7E 7F
	sta $ED9E.w,X		; 9D 9E ED
	jmp ($1272.w)		; 6C 72 12
	tyx		; BB
	asl A		; 0A
	brk $F7.b		; 00 F7
	bmi  -6.b		; 30 FA
	sei		; 78
	sbc $FF1C.w,X		; FD 1C FF
	tsb $60FE.w		; 0C FE 60
	ror $9F10.w,X		; 7E 10 9F
	php		; 08
	inc $00F8.w		; EE F8 00
	iny		; C8
	bcs  80.b		; B0 50
	ldy #$00E0.w		; A0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	asl A		; 0A
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	ora $02.b,S		; 03 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $15.b		; 05 15
	cpx #$D22F.w		; E0 2F D2
	ldx $42.b		; A6 42
	cmp [$30.b],Y		; D7 30
	.db $42, $B1		; 42 B1
	stx $6E.b		; 86 6E
	sed		; F8
	ora $C8A4BB.l,X		; 1F BB A4 C8
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	.db $82, $3E, $03		; 82 3E 03
	ora $809F00.l		; 0F 00 9F 80
	and $0100.w,Y		; 39 00 01
	brk $04.b		; 00 04
	sbc ($E0.b,X)		; E1 E0
	asl $C837.w		; 0E 37 C8
	ora $E120F0.l,X		; 1F F0 20 E1
	and [$E1.b]		; 27 E1
	asl $70.b,X		; 16 70
	ora [$70.b],Y		; 17 70
	ora $3F0038.l		; 0F 38 00 3F
	cpy #$E00F.w		; C0 0F E0
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $17.b		; 00 17
	brk $E0.b		; 00 E0
	bpl -128.b		; 10 80
	bvs -32.b		; 70 E0
	bvs  64.b		; 70 40
	cld		; D8
	bpl -40.b		; 10 D8
	brk $C8.b		; 00 C8
	brk $CC.b		; 00 CC
	plp		; 28
	cpx $0000.w		; EC 00 00
	jsr $0000.w		; 20 00 00
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $90.b		; 00 90
	brk $02.b		; 00 02
	asl $03.b		; 06 03
	ora $070F06.l		; 0F 06 0F 07
	clc		; 18
	ora $182807.l,X		; 1F 07 28 18
	rol $00.b		; 26 00
	and ($0C.b,S),Y		; 33 0C
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $7C43.w,X		; 1E 43 7C
	ora $3DF2.w		; 0D F2 3D
	cpy $30C1.w		; CC C1 30
	dec $D680.w		; CE 80 D6
	php		; 08
	cmp ($08.b)		; D2 08
	lsr A		; 4A
	bpl -100.b		; 10 9C
	brk $D0.b		; 00 D0
	cop $80.b		; 02 80
	asl $3E00.w		; 0E 00 3E
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	plx		; FA
	jsr ($60BC.w,X)		; FC BC 60
	bvs  32.b		; 70 20
	sec		; 38
	bpl  62.b		; 10 3E
	trb $36.b		; 14 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	jsr ($6020.w,X)		; FC 20 60
	brk $28.b		; 00 28
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F3B3F.l,X		; 1F 3F 3B 7F
	and ($7F.b)		; 32 7F
	adc $FD.b,S		; 63 FD
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $4D7F44.l,X		; 7F 44 7F 4D
	jsr ($009C.w,X)		; FC 9C 00
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	dec $86FF.w		; CE FF 86
	sbc $E0FF42.l,X		; FF 42 FF E0
	and $F88080.l,X		; 3F 80 80 F8
	sei		; 78
	jsr ($FE24.w,X)		; FC 24 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADBF.w		; 69 BF AD
	ora $081607.l,X		; 1F 07 16 08
	asl $08.b,X		; 16 08
	jsl $003C08.l		; 22 08 3C 00
	bit $10.b		; 24 10
	mvp $74,$10		; 44 10 74
	brk $88.b		; 00 88
	jsr $0C00.w		; 20 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	iny		; C8
	jsr $20C8.w		; 20 C8 20
	beq   0.b		; F0 00
	bcc   0.b		; 90 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $1204.w		; 0E 04 12
	bpl  53.b		; 10 35
	rol A		; 2A
	ror $68.b		; 66 68
	cpy $F0D0.w		; CC D0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $10.b		; 14 10
	bit $EA20.w,X		; 3C 20 EA
	rts		; 60

	jsr ($F000.w,X)		; FC 00 F0
	brk $00.b		; 00 00
	pha		; 48
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	brk $B8.b		; 00 B8
	brk $A8.b		; 00 A8
	bpl -76.b		; 10 B4
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	pei ($08.b)		; D4 08
	rol $1100.w		; 2E 00 11
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $A00E84.l		; 2F 84 0E A0
	inc A		; 1A
	ldy #$A01B.w		; A0 1B A0
	ora [$B0.b]		; 07 B0
	ora [$B0.b]		; 07 B0
	sta $308B30.l		; 8F 30 8B 30
	brk $F4.b		; 00 F4
	brk $F1.b		; 00 F1
	brk $F5.b		; 00 F5
	brk $F5.b		; 00 F5
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	ora $01.b,X		; 15 01
	rol $2D02.w		; 2E 02 2D
	cop $57.b		; 02 57
	php		; 08
	eor [$0C.b],Y		; 57 0C
	and $078F0F.l		; 2F 0F 8F 07
	cmp [$88.b]		; C7 88
	ora ($0B.b,X)		; 01 0B
	brk $13.b		; 00 13
	brk $12.b		; 00 12
	brk $2A.b		; 00 2A
	brk $2C.b		; 00 2C
	asl $1F.b		; 06 1F
	ora $1F.b,S		; 03 1F
	brk $9E.b		; 00 9E
	adc ($5E.b,X)		; 61 5E
	cmp ($B3.b)		; D2 B3
	lda $B859E0.l		; AF E0 59 B8
	cmp $3F.b,S		; C3 3F
	inx		; E8
	adc [$EF.b],Y		; 77 EF
	adc $7C.b,X		; 75 7C
	sta $40.b,S		; 83 40
	cmp ($2C.b,X)		; C1 2C
	bra  31.b		; 80 1F
	bra  39.b		; 80 27
	bra   4.b		; 80 04
	bra   0.b		; 80 00
	bvs   0.b		; 70 00
	adc $00.b,X		; 75 00
	sta $0B.b,S		; 83 0B
	sec		; 38
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora [$00.b],Y		; 17 00
	ora $000300.l		; 0F 00 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ldy #$00E4.w		; A0 E4 00
	ror $14.b		; 66 14
	ror $94.b,X		; 76 94
	ror $D0.b,X		; 76 D0
	adc ($D0.b)		; 72 D0
	adc ($94.b)		; 72 94
	rol $8C.b,X		; 36 8C
	rol $0018.w,X		; 3E 18 00
	ldy $A800.w,X		; BC 00 A8
	brk $C8.b		; 00 C8
	brk $8C.b		; 00 8C
	brk $8C.b		; 00 8C
	brk $C8.b		; 00 C8
	brk $D0.b		; 00 D0
	brk $51.b		; 00 51
	tsb $1845.w		; 0C 45 18
	lsr $18.b		; 46 18
	jmp ($A410.w)		; 6C 10 A4
	bpl -104.b		; 10 98
	jsr $20C8.w		; 20 C8 20
	iny		; C8
	jsr $3E00.w		; 20 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	jmp $4410.w		; 4C 10 44
	bpl -124.b		; 10 84
	bpl -88.b		; 10 A8
	bpl -120.b		; 10 88
	bmi -104.b		; 30 98
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $3800.w		; 20 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	sbc $7770.w,X		; FD 70 77
	jsr $2056.w		; 20 56 20
	and #$2C00.w		; 29 00 2C
	ora ($2C.b,X)		; 01 2C
	ora ($5A.b,X)		; 01 5A
	ora ($58.b,X)		; 01 58
	ora $00.b,S		; 03 00
	adc ($00.b)		; 72 00
	rol A		; 2A
	brk $2B.b		; 00 2B
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	rti		; 40

	sed		; F8
	ldy #$40D0.w		; A0 D0 40
	rts		; 60

	bra  32.b		; 80 20
	rti		; 40

	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	rts		; 60

	brk $18.b		; 00 18
	clc		; 18
	bvc  16.b		; 50 10
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -96.b		; 80 A0
	jmp $B2E41F.l		; 5C 1F E4 B2
	and #$14A7.w		; 29 A7 14
	adc $4B.b		; 65 4B
	and $C3.b,X		; 35 C3
	ldy $8301.w,X		; BC 01 83
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	cpy #$C00D.w		; C0 0D C0
	trb $1B80.w		; 1C 80 1B
	ora ($0B.b,X)		; 01 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	cpy #$2000.w		; C0 00 20
	jsr $CCCC.w		; 20 CC CC
	sbc [$F7.b],Y		; F7 F7
	sed		; F8
	xce		; FB
	ldy $777C.w,X		; BC 7C 77
	ora $00030D.l		; 0F 0D 03 00
	jsr $FC00.w		; 20 00 FC
	dey		; 88
	sbc $70FFC2.l,X		; FF C2 FF 70
	sbc $027F18.l,X		; FF 18 7F 02
	ora $340301.l		; 0F 01 03 34
	ora $1C.b,S		; 03 1C
	ora $03.b,S		; 03 03
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $04.b		; 06 04
	ora [$04.b]		; 07 04
	php		; 08
	asl $0C0A.w		; 0E 0A 0C
	rol $18.b,X		; 36 18
	sbc $8F01.w,X		; FD 01 8F
	bvs   0.b		; 70 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	brk $70.b		; 00 70
	rol A		; 2A
	bpl  76.b		; 10 4C
	bpl  76.b		; 10 4C
	bpl 100.b		; 10 64
	bpl 116.b		; 10 74
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	trb $3800.w		; 1C 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	stz $18.b		; 64 18
	jmp ($6C10.w)		; 6C 10 6C
	bpl 100.b		; 10 64
	bpl  68.b		; 10 44
	bpl  68.b		; 10 44
	bpl  68.b		; 10 44
	bpl  68.b		; 10 44
	bpl   0.b		; 10 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	jsl $7E32FE.l		; 22 FE 32 7E
	ora ($7F.b),Y		; 11 7F
	ora $087F.w,Y		; 19 7F 08
	and $041F04.l,X		; 3F 04 1F 04
	ora $550F02.l,X		; 1F 02 0F 55
	brk $09.b		; 00 09
	brk $2A.b		; 00 2A
	brk $22.b		; 00 22
	brk $15.b		; 00 15
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	clc		; 18
	rti		; 40

	clc		; 18
	bvc  24.b		; 50 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bcc -104.b		; 90 98
	bvc -40.b		; 50 D8
	bvc -40.b		; 50 D8
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $0F1F0F.l		; 0F 0F 1F 0F
	ora $003F1F.l,X		; 1F 1F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $141F.w		; 0D 1F 14
	ora $283F16.l,X		; 1F 16 3F 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0E0.w		; E0 E0 F0
	bcc  -8.b		; 90 F8
	php		; 08
	jsr ($FC34.w,X)		; FC 34 FC
	ldy $0000.w		; AC 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora $CC.b,S		; 03 CC
	ora $03.b,S		; 03 03
	brk $06.b		; 00 06
	ora ($3E.b,X)		; 01 3E
	ora ($3C.b,X)		; 01 3C
	ora $19.b,S		; 03 19
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	sbc $003F00.l,X		; FF 00 3F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7F0000.l,X		; FF 00 00 7F
	sbc $191C12.l,X		; FF 12 1C 19
	asl $0C2E.w,X		; 1E 2E 0C
	ora $08.b,X		; 15 08
	trb $1E01.w		; 1C 01 1E
	ora ($39.b,X)		; 01 39
	cop $3C.b		; 02 3C
	cop $00.b		; 02 00
	and $003E00.l,X		; 3F 00 3E 00
	ora $0B00.w,X		; 1D 00 0B
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	dec $6700.w		; CE 00 67
	asl $1E6D.w,X		; 1E 6D 1E
	adc ($0C.b)		; 72 0C
	lsr $5620.w		; 4E 20 56
	jsr $4234.w		; 20 34 42
	ldy $42.b		; A4 42
	brk $31.b		; 00 31
	brk $BE.b		; 00 BE
	brk $9E.b		; 00 9E
	brk $AD.b		; 00 AD
	brk $F5.b		; 00 F5
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	pea $0CF0.w		; F4 F0 0C
	brk $4C.b		; 00 4C
	bmi  76.b		; 30 4C
	bmi  68.b		; 30 44
	bmi  68.b		; 30 44
	bmi  68.b		; 30 44
	bmi -56.b		; 30 C8
	bmi  96.b		; 30 60
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	and M7D.l		; 2F 1E 21 00
	and $5500.w		; 2D 00 55
	php		; 08
	phk		; 4B
	bpl 107.b		; 10 6B
	bpl 101.b		; 10 65
	bpl  84.b		; 10 54
	jsr $1E04.w		; 20 04 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	sed		; F8
	brk $34.b		; 00 34
	cpy #$887A.w		; C0 7A 88
	wai		; CB
	rol A		; 2A
	phb		; 8B
	ror A		; 6A
	cmp $E0CE6A.l,X		; DF 6A CE E0
	cld		; D8
	dec $8000.w		; CE 00 80
	brk $E8.b		; 00 E8
	brk $CC.b		; 00 CC
	php		; 08
	ldx $7E0A.w,Y		; BE 0A 7E
	brk $6A.b		; 00 6A
	brk $F0.b		; 00 F0
	tsb $E0.b		; 04 E0
	bcc -52.b		; 90 CC
	bit $18.b		; 24 18
	sei		; 78
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	cpx #$C010.w		; E0 10 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	ldy #$E000.w		; A0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $88.b		; 00 88
	brk $E8.b		; 00 E8
	brk $D8.b		; 00 D8
	brk $F8.b		; 00 F8
	brk $74.b		; 00 74
	brk $74.b		; 00 74
	brk $7A.b		; 00 7A
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	php		; 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	stz $10.b		; 64 10
	jmp $6C30.w		; 4C 30 6C
	bpl  76.b		; 10 4C
	brk $7A.b		; 00 7A
	brk $3E.b		; 00 3E
	brk $3D.b		; 00 3D
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	ora $000400.l,X		; 1F 00 04 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora #$0F00.w		; 09 00 0F
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	cld		; D8
	bmi  -8.b		; 30 F8
	bmi  -4.b		; 30 FC
	bmi  -4.b		; 30 FC
	bvc -36.b		; 50 DC
	mvn $1C,$D8		; 54 D8 1C
	bcc -12.b		; 90 F4
	php		; 08
	ldy #$4000.w		; A0 00 40
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	php		; 08
	and $FF3F7F.l,X		; 3F 7F 3F FF
	eor $FF46FF.l,X		; 5F FF 46 FF
	cop $7F.b		; 02 7F
	trb $0F63.w		; 1C 63 0F
	bmi  15.b		; 30 0F
	bpl 127.b		; 10 7F
	rti		; 40

	sbc $A0FFC0.l,X		; FF C0 FF A0
	sbc $7D7FB9.l,X		; FF B9 7F 7D
	adc $63.b,S		; 63 63
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	jsr ($F4FE.w,X)		; FC FE F4
	inc $FE74.w,X		; FE 74 FE
	jsr $08FE.w		; 20 FE 08
	jsr ($F800.w,X)		; FC 00 F8
	bra 104.b		; 80 68
	cpy #$FE10.w		; C0 10 FE
	cop $FE.b		; 02 FE
	asl A		; 0A
	inc $FE8A.w,X		; FE 8A FE
	dec $F4F4.w,X		; DE F4 F4
	beq -16.b		; F0 F0
	bvs  96.b		; 70 60
	jsr $0600.w		; 20 00 06
	brk $1E.b		; 00 1E
	ora ($0B.b,X)		; 01 0B
	tsb $0C0F.w		; 0C 0F 0C
	ora $0D0E.w		; 0D 0E 0D
	asl $0C0B.w		; 0E 0B 0C
	and $030000.l,X		; 3F 00 00 03
	brk $01.b		; 00 01
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	sed		; F8
	jsr ($E15E.w,X)		; FC 5E E1
	sbc $BD5F1D.l		; EF 1D 5F BD
	dec $EE3D.w,X		; DE 3D EE
	ora $05FA.w,X		; 1D FA 05
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E1.b		; 00 E1
	brk $1D.b		; 00 1D
	brk $BD.b		; 00 BD
	brk $BD.b		; 00 BD
	brk $BD.b		; 00 BD
	brk $0D.b		; 00 0D
	dec A		; 3A
	tsb $73.b		; 04 73
	tsb $7F.b		; 04 7F
	brk $78.b		; 00 78
	ora [$18.b]		; 07 18
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora [$00.b],Y		; 17 00
	rol $2000.w		; 2E 00 20
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol A		; 2A
	cpy $7A.b		; C4 7A
	sty $B2.b		; 84 B2
	tsb $00FC.w		; 0C FC 00
	eor $BC.b,S		; 43 BC
	ora [$FF.b]		; 07 FF
	phb		; 8B
	sed		; F8
	phb		; 8B
	sed		; F8
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $6F.b		; 00 6F
	brk $03.b		; 00 03
	clc		; 18
	brk $98.b		; 00 98
	brk $57.b		; 00 57
	brk $57.b		; 00 57
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F1F0C.l		; 0F 0C 1F 0F
	ora $003F1F.l,X		; 1F 1F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $1F131F.l		; 0F 1F 13 1F
	clc		; 18
	and $000036.l,X		; 3F 36 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	beq  -4.b		; F0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0E0.w		; E0 E0 F0
	bpl  -8.b		; 10 F8
	plp		; 28
	jsr ($007C.w,X)		; FC 7C 00
	ora $0D00.w		; 0D 00 0D
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	and $1E2D00.l,X		; 3F 00 2D 1E
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	asl $0800.w		; 0E 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1810.w,X		; 1E 10 18
	cpy #$E0D8.w		; C0 D8 E0
	sed		; F8
	rts		; 60

	sed		; F8
	bvs -100.b		; 70 9C
	beq 108.b		; F0 6C
	tya		; 98
	sty $AC.b,X		; 94 AC
	php		; 08
	cpx #$3000.w		; E0 00 30
	brk $10.b		; 00 10
	brk $90.b		; 00 90
	brk $88.b		; 00 88
	brk $68.b		; 00 68
	rts		; 60

	bpl -16.b		; 10 F0
	brk $78.b		; 00 78
	sbc $0A.b,S		; E3 0A
	cmp $2C.b,X		; D5 2C
	lda ($4A.b,S),Y		; B3 4A
	eor $08BD04.l,X		; 5F 04 BD 08
	sty $9220.w		; 8C 20 92
	bit $52.b		; 24 52
	bit $02.b		; 24 02
	asl $2F00.w,X		; 1E 00 2F
	cop $4E.b		; 02 4E
	brk $A4.b		; 00 A4
	php		; 08
	ror A		; 6A
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra   0.b		; 80 00
	rti		; 40

	bra  96.b		; 80 60
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $082208.l		; 22 08 22 08
	rol A		; 2A
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $24.b		; 00 24
	bpl  40.b		; 10 28
	bpl  72.b		; 10 48
	bpl   0.b		; 10 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	asl A		; 0A
	asl $1D.b		; 06 1D
	ora $62.b,S		; 03 62
	ora ($EF.b,X)		; 01 EF
	rti		; 40

	lda ($26.b),Y		; B1 26
	lda $F442.w,Y		; B9 42 F4
	and ($0B.b,X)		; 21 0B
	rts		; 60

	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $1C.b		; 00 1C
	brk $5E.b		; 00 5E
	jsr $006E.w		; 20 6E 00
	eor [$18.b]		; 47 18
	ora $3C.b,S		; 03 3C
	brk $EA.b		; 00 EA
	tsb $F817.w		; 0C 17 F8
	php		; 08
	beq  23.b		; F0 17
	cpx #$E47B.w		; E0 7B E4
	sbc ($4D.b,X)		; E1 4D
	lda ($48.b)		; B2 48
	eor $00F001.l,X		; 5F 01 F0 00
	ldy #$A000.w		; A0 00 A0
	ora [$40.b]		; 07 40
	asl $0C80.w		; 0E 80 0C
	cop $18.b		; 02 18
	eor [$10.b]		; 47 10
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	rti		; 40

	ldy #$A080.w		; A0 80 A0
	rti		; 40

	cpx #$0080.w		; E0 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rol $08.b,X		; 36 08
	rol $08.b,X		; 36 08
	rol $08.b		; 26 08
	rol $08.b		; 26 08
	rol $08.b		; 26 08
	inc A		; 1A
	tsb $1A.b		; 04 1A
	tsb $1A.b		; 04 1A
	tsb $00.b		; 04 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	asl $1A00.w,X		; 1E 00 1A
	brk $2A.b		; 00 2A
	brk $24.b		; 00 24
	brk $54.b		; 00 54
	brk $54.b		; 00 54
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	bne  32.b		; D0 20
	iny		; C8
	jsr $00F8.w		; 20 F8 00
	tay		; A8
	bpl -60.b		; 10 C4
	bpl  60.b		; 10 3C
	brk $22.b		; 00 22
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	rts		; 60

	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	asl $6C2A.w,X		; 1E 2A 6C
	ora [$DF.b]		; 07 DF
	adc $BF.b		; 65 BF
	.db $42, $6B		; 42 6B
	ora ($7B.b,X)		; 01 7B
	brk $5F.b		; 00 5F
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	rtl		; 6B

	brk $17.b		; 00 17
	tsb $65.b		; 04 65
	brk $52.b		; 00 52
	ora ($15.b,X)		; 01 15
	brk $2C.b		; 00 2C
	brk $2B.b		; 00 2B
	brk $5B.b		; 00 5B
	lda [$00.b],Y		; B7 00
	sbc $EF02.w		; ED 02 EF
	brk $4B.b		; 00 4B
	tsb $3B.b		; 04 3B
	tsb $0F.b		; 04 0F
	bmi   0.b		; 30 00
	and $001F07.l,X		; 3F 07 1F 00
	tad		; 5B
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $36.b		; 00 36
	brk $0E.b		; 00 0E
	bpl   0.b		; 10 00
	ora $000800.l,X		; 1F 00 08 00
	ora #$0919.w		; 09 19 09
	ora $1901.w,Y		; 19 01 19
	ora ($19.b,X)		; 01 19
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $1F.b		; 00 1F
	adc $567F3F.l,X		; 7F 3F 7F 56
	sbc $18FF42.l,X		; FF 42 FF 18
	sbc $7253AE.l		; EF AE 53 72
	dey		; 88
	and $7F58.w		; 2D 58 7F
	stz $7F.b		; 64 7F
	rti		; 40

	sbc $BDFFA9.l,X		; FF A9 FF BD
	sbc [$E7.b]		; E7 E7
	eor ($41.b),Y		; 51 41
	sta ($8C.b,X)		; 81 8C
	tad		; 5B
	pha		; 48
	sed		; F8
	inc $FF3C.w,X		; FE 3C FF
	trb $94FE.w		; 1C FE 94
	inc $7CC2.w,X		; FE C2 7C
	stz $1A.b		; 64 1A
	stz $6820.w		; 9C 20 68
	bit $FE.b,X		; 34 FE
	rol $FF.b		; 26 FF
	cmp $FE.b,S		; C3 FE
.ACCU 8
.INDEX 8
	sep #$7E		; E2 7E
	rol A		; 2A
	ldy $9A3C.w,X		; BC 3C 9A
	asl A		; 0A
	brk $60.b		; 00 60
	ldy $24.b,X		; B4 24
	eor ($00.b,X)		; 41 00
	eor $4200.w,X		; 5D 00 42
	clc		; 18
	tax		; AA
	bpl -108.b		; 10 94
	jsr $2094.w		; 20 94 20
	iny		; C8
	jsr $40A8.w		; 20 A8 40
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	lda ($04.b)		; B2 04
	tax		; AA
	bpl -94.b		; 10 A2
	clc		; 18
	ror $18.b		; 66 18
	ror $18.b		; 66 18
	lsr $18.b		; 46 18
	lsr $18.b		; 46 18
	lsr $08.b,X		; 56 08
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	mvn $95,$22		; 54 22 95
	.db $62, $B9, $42		; 62 B9 42
	inc $18.b		; E6 18
	cmp $603E.w,X		; DD 3E 60
	lda $1A.b,S		; A3 1A
	cmp $1A.b,S		; C3 1A
	cmp $00.b,S		; C3 00
	sbc $007F00.l,X		; FF 00 7F 00
	adc [$18.b]		; 67 18
	cmp ($22.b,X)		; C1 22
	brk $1E.b		; 00 1E
	brk $BC.b		; 00 BC
	brk $7C.b		; 00 7C
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
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
	brk $78.b		; 00 78
	cmp $78.b,S		; C3 78
	cmp $38.b,S		; C3 38
	.db $82, $7C, $86		; 82 7C 86
	bvs -122.b		; 70 86
	pla		; 68
	sty $8CE0.w		; 8C E0 8C
	ldy #$88.b		; A0 88
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $3B.b		; 00 3B
	rts		; 60

	rol $5D40.w,X		; 3E 40 5D
	rol $1EEF.w		; 2E EF 1E
	adc $6C555E.l,X		; 7F 5E 55 6C
	eor $63.b,S		; 43 63
	adc $005E.w,X		; 7D 5E 00
	ora $1100.w		; 0D 00 11
	brk $2E.b		; 00 2E
	tsb $0C1E.w		; 0C 1E 0C
	dec $EE04.w,X		; DE 04 EE
	ora $FF.b,S		; 03 FF
	tsb $EADE.w		; 0C DE EA
	sta ($BA.b,X)		; 81 BA
	bra -34.b		; 80 DE
	sec		; 38
	xce		; FB
	ldy $BAF6.w,X		; BC F6 BA
	inc $EEB2.w,X		; FE B2 EE
	jmp $7AD0.w		; 4C D0 7A
	brk $DC.b		; 00 DC
	brk $C4.b		; 00 C4
	brk $B8.b		; 00 B8
	bpl -68.b		; 10 BC
	bpl -69.b		; 10 BB
	bpl -77.b		; 10 B3
	mvp $00,$5D		; 44 5D 00
	adc $000000.l,X		; 7F 00 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$03.b]		; 07 03
	ora [$07.b]		; 07 07
	ora $0C0F06.l		; 0F 06 0F 0C
	ora $010000.l,X		; 1F 00 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b		; 05 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $131F09.l		; 0F 09 1F 13
	brk $F0.b		; 00 F0
	beq  -1.b		; F0 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $70FF.w,Y		; F9 FF 70
	sbc $7CFF48.l,X		; FF 48 FF 7C
	lda [$F0.b]		; A7 F0
	beq  -1.b		; F0 FF
	ora $FF04FF.l		; 0F FF 04 FF
	clv		; B8
	sbc $8DFD06.l,X		; FF 06 FD 8D
	sbc [$B5.b],Y		; F7 B5
	sta $80.b,S		; 83 80
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	sbc [$0F.b],Y		; F7 0F
	and $80D7C0.l		; 2F C0 D7 80
	sta $012E00.l,X		; 9F 00 2E 01
	phy		; 5A
	ora ($54.b,X)		; 01 54
	ora $B4.b,S		; 03 B4
	ora $03.b,S		; 03 03
	ora $00D000.l		; 0F 00 D0 00
	lda $6B00.w		; AD 00 6B
	brk $DB.b		; 00 DB
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $FEF0.w		; EC F0 FE
	sbc ($7F.b),Y		; F1 7F
	pea $20DE.w		; F4 DE 20
	and $031C03.l		; 2F 03 1C 03
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	rts		; 60

	pea $F401.w		; F4 01 F4
	ora ($2C.b,X)		; 01 2C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2820.w		; 20 20 28
	plp		; 28
	bit $34.b		; 24 34
	bit $34.b		; 24 34
	bpl  60.b		; 10 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2878.w		; 20 78 28
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$A0.b		; E0 A0
	cpx #$E0.b		; E0 E0
	bpl -64.b		; 10 C0
	clc		; 18
	dey		; 88
	plp		; 28
	clc		; 18
	rol $2418.w		; 2E 18 24
	trb $40.b		; 14 40
	clc		; 18
	brk $D0.b		; 00 D0
	dey		; 88
	jsr $C8C0.w		; 20 C0 C8
	bra -116.b		; 80 8C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	rti		; 40

	bcc -33.b		; 90 DF
	php		; 08
	and $5B2A.w,Y		; 39 2A 5B
	xba		; EB
	ora ($EB.b,S),Y		; 13 EB
	eor [$13.b]		; 47 13
	adc $0F7707.l,X		; 7F 07 77 0F
	adc ($06.b,S),Y		; 73 06
	inx		; E8
	ora #$C8.b		; 09 C8
	asl $0FA0.w		; 0E A0 0F
	ora ($0F.b,X)		; 01 0F
	ora $3B.b,S		; 03 3B
	ora $07.b,S		; 03 07
	cop $2F.b		; 02 2F
	brk $0E.b		; 00 0E
	lda $28DF51.l,X		; BF 51 DF 28
	rol $7600.w,X		; 3E 00 76
	adc $726B.w,Y		; 79 6B 72
	adc $7A.b,X		; 75 7A
	lsr $FF71.w		; 4E 71 FF
	tsb $00.b		; 04 00
	cmp ($00.b,X)		; C1 00
	.db $62, $00, $C1		; 62 00 C1
	brk $F9.b		; 00 F9
	brk $FE.b		; 00 FE
	brk $FA.b		; 00 FA
	brk $F1.b		; 00 F1
	brk $04.b		; 00 04
	pla		; 68
	jsr $A0B0.w		; 20 B0 A0
	bne   0.b		; D0 00
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	bne -128.b		; D0 80
	cpy #$00.b		; C0 00
	jsr $8000.w		; 20 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bit $0E63.w		; 2C 63 0E
	adc $0C.b,S		; 63 0C
	and ($14.b,X)		; 21 14
	and ($06.b),Y		; 31 06
	and ($04.b,S),Y		; 33 04
	and [$18.b],Y		; 37 18
	and $1E700F.l,X		; 3F 0F 70 1E
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	brk $06.b		; 00 06
	brk $30.b		; 00 30
	brk $3F.b		; 00 3F
	lsr $3071.w		; 4E 71 30
	dex		; CA
	rti		; 40

	tax		; AA
	bpl  68.b		; 10 44
	bmi  84.b		; 30 54
	jsr $600C.w		; 20 0C 60
	sty $0C60.w		; 8C 60 0C
	asl $3E10.w		; 0E 10 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	tsb $0B.b		; 04 0B
	ora [$0D.b]		; 07 0D
	sbc ($00.b,X)		; E1 00
	adc ($47.b),Y		; 71 47
	eor $4963.w,Y		; 59 63 49
	adc ($49.b,S),Y		; 73 49
	adc ($58.b,S),Y		; 73 58
	rts		; 60

	brk $1B.b		; 00 1B
	brk $1D.b		; 00 1D
	brk $0E.b		; 00 0E
	brk $EF.b		; 00 EF
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	and $EAC6.w,Y		; 39 C6 EA
	ldy $F4.b,X		; B4 F4
	bvs  -8.b		; 70 F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	bvs 120.b		; 70 78
	brk $D6.b		; 00 D6
	brk $B4.b		; 00 B4
	rts		; 60

	sei		; 78
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	bvs  -4.b		; 70 FC
	bvs  -4.b		; 70 FC
	bmi  -4.b		; 30 FC
	tsb $011C.w		; 0C 1C 01
	ora $05070B.l,X		; 1F 0B 07 05
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $013F00.l,X		; 3F 00 3F 01
	ora [$00.b],Y		; 17 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $0D1E01.l,X		; 1F 01 1E 0D
	ora ($06.b)		; 12 06
	ora #$02.b		; 09 02
	ora $00.b		; 05 00
	ora $7F.b,S		; 03 7F
	bra -70.b		; 80 BA
	bpl  30.b		; 10 1E
	asl $1D.b,X		; 16 1D
	trb $1011.w		; 1C 11 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cpy #$17.b		; C0 17
	plb		; AB
	asl $7D.b		; 06 7D
	stx $32.b,Y		; 96 32
	ora ($BC.b,S),Y		; 13 BC
	sta ($12.b,X)		; 81 12
	sta $C07634.l		; 8F 34 76 C0
	jmp ($20D9.w,X)		; 7C D9 20
	rti		; 40

	bpl -62.b		; 10 C2
	bpl -12.b		; 10 F4
	clc		; 18
	ror $FC00.w,X		; 7E 00 FC
	brk $C8.b		; 00 C8
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $B4.b		; 00 B4
	ora $70.b,S		; 03 70
	ora [$68.b]		; 07 68
	ora [$F9.b]		; 07 F9
	asl $79.b		; 06 79
	asl $0F.b		; 06 0F
	bmi   6.b		; 30 06
	and $001C04.l,X		; 3F 04 1C 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $006F00.l,X		; FF 00 6F 00
	ora $090000.l		; 0F 00 00 09
	brk $0B.b		; 00 0B
	brk $20.b		; 00 20
	jsr $D088.w		; 20 88 D0
	cpx $FC50.w		; EC 50 FC
	jsr $007A.w		; 20 7A 00
	eor $5D20.w,X		; 5D 20 5D
	jsr $205D.w		; 20 5D 20
	brk $F8.b		; 00 F8
	bra -16.b		; 80 F0
	rti		; 40

	bvs   0.b		; 70 00
	plp		; 28
	brk $D4.b		; 00 D4
	brk $EA.b		; 00 EA
	brk $EA.b		; 00 EA
	brk $EA.b		; 00 EA
	lsr $20.b,X		; 56 20
	lsr $20.b,X		; 56 20
	lsr $4A30.w		; 4E 30 4A
	bmi -52.b		; 30 CC
	bmi  -8.b		; 30 F8
	tsb $70.b		; 04 70
	sty $3C20.w		; 8C 20 3C
	brk $EC.b		; 00 EC
	brk $EC.b		; 00 EC
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	php		; 08
	brk $C8.b		; 00 C8
	brk $05.b		; 00 05
	trb $0C01.w		; 1C 01 0C
	ora $0E.b,S		; 03 0E
	cop $0E.b		; 02 0E
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cpy #$1C.b		; C0 1C
	cpy #$1C.b		; C0 1C
	cpx #$1C.b		; E0 1C
	beq  28.b		; F0 1C
	beq  28.b		; F0 1C
	rts		; 60

	tsb $0C60.w		; 0C 60 0C
	bvs  12.b		; 70 0C
	inx		; E8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $33.b		; 00 33
	php		; 08
	and $08.b,X		; 35 08
	and $08.b,X		; 35 08
	and $6F10.w		; 2D 10 6F
	bpl -89.b		; 10 A7
	bpl -89.b		; 10 A7
	bpl -85.b		; 10 AB
	bpl   0.b		; 10 00
	trb $1A00.w		; 1C 00 1A
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $3A.b		; 00 3A
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	brk $76.b		; 00 76
	plb		; AB
	bpl 106.b		; 10 6A
	bpl 107.b		; 10 6B
	bpl 109.b		; 10 6D
	bpl 122.b		; 10 7A
	brk $59.b		; 00 59
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $00.b,X		; 76 00
	and [$00.b],Y		; 37 00
	and [$00.b],Y		; 37 00
	and ($00.b,S),Y		; 33 00
	and ($00.b),Y		; 31 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	asl $2A.b		; 06 2A
	tsb $21.b		; 04 21
	tsb $0C31.w		; 0C 31 0C
	and $08.b,X		; 35 08
	eor $18.b,S		; 43 18
	phk		; 4B
	bpl  71.b		; 10 47
	bpl   0.b		; 10 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	ldy $40.b		; A4 40
	bvs  10.b		; 70 0A
	brk $A2.b		; 00 A2
	brk $8C.b		; 00 8C
	tsb $20.b		; 04 20
	.db $42, $95		; 42 95
	bra   2.b		; 80 02
	asl A		; 0A
	brk $00.b		; 00 00
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   2.b		; 70 02
	tsb $0082.w		; 0C 82 00
	bvc  64.b		; 50 40
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	sty $0500.w		; 8C 00 05
	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	phx		; DA
	dex		; CA
	adc #$07.b		; 69 07
	bra -104.b		; 80 98
	tax		; AA
	ora $106A.w		; 0D 6A 10
	asl $3C12.w,X		; 1E 12 3C
	jsr $8308.w		; 20 08 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $00.b,X		; D6 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	ora ($24.b)		; 12 24
	bpl   0.b		; 10 00
	eor ($80.b,X)		; 41 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 0DFFFE. Skipping.
	.db $8B		; Opcode 8B overrunning bank boundry at 0DFFFF. Skipping.
.ENDS
