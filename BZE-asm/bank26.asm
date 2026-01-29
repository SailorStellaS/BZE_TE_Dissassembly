.BANK 26 SLOT 0
.ORG $0000

.SECTION "Bank26" FORCE

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bvs -128.b		; 70 80
	ora $FEC9F0.l		; 0F F0 C9 FE
	cpy $FF.b		; C4 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	inc $FF00.w,X		; FE 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

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
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 126.b		; 80 7E
	ror $4040.w,X		; 7E 40 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	bvs   0.b		; 70 00
	cpy #$BF80.w		; C0 80 BF
	lda $803F3F.l,X		; BF 3F 3F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $BF.b		; 00 BF
	bra  -1.b		; 80 FF
	and $BFC0FF.l,X		; 3F FF C0 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora #$09.b		; 09 09
	ora $E5.b		; 05 E5
	cmp $F5.b,X		; D5 F5
	eor $00003E.l,X		; 5F 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora #$FF.b		; 09 FF
	ora $FF.b		; 05 FF
	cmp $FF.b,X		; D5 FF
	asl $62FF.w,X		; 1E FF 62
	inc $BE70.w,X		; FE 70 BE
	and $0C5F.w,Y		; 39 5F 0C
	and $FF01FE.l,X		; 3F FE 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F5.b		; 00 F5
	tsb $B3.b		; 04 B3
	cop $5A.b		; 02 5A
	cop $3D.b		; 02 3D
	ora ($00.b,X)		; 01 00
	brk $F8.b		; 00 F8
	sed		; F8
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	sed		; F8
	ora $FC07F8.l		; 0F F8 07 FC
	ora [$F9.b]		; 07 F9
	cop $FD.b		; 02 FD
	.db $82, $7E, $C3		; 82 7E C3
	trb $AEC1.w		; 1C C1 AE
	adc ($F3.b,X)		; 61 F3
	brk $FF.b		; 00 FF
	tsb $F9.b		; 04 F9
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	cop $BC.b		; 02 BC
	bra 126.b		; 80 7E
	rti		; 40

	ora $40B781.l,X		; 1F 81 B7 40
	lda [$40.b]		; A7 40
	lda [$40.b]		; A7 40
	cmp $00CF00.l		; CF 00 CF 00
	cmp $008F00.l		; CF 00 8F 00
	sta $004000.l		; 8F 00 40 00
	rti		; 40

	brk $41.b		; 00 41
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $FD.b,S		; 03 FD
	bit $F8.b,X		; 34 F8
	and ($98.b),Y		; 31 98
	ora ($88.b),Y		; 11 88
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $B4.b		; 00 B4
	bra -79.b		; 80 B1
	bra  17.b		; 80 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($0D.b,X)		; 01 0D
	cop $0D.b		; 02 0D
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $4E.b		; 00 4E
	lsr $9595.w		; 4E 95 95
	and #$29.b		; 29 29
	eor #$49.b		; 49 49
	sta ($92.b)		; 92 92
	ora ($12.b)		; 12 12
	bit $24.b		; 24 24
	bit $24.b		; 24 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and ($4F.b)		; 32 4F
	and $B15FD9.l		; 2F D9 5F B1
	lsr $BCA3.w,X		; 5E A3 BC
	eor [$69.b]		; 47 69
	sta $AB1BD1.l		; 8F D1 1B AB
	and ($44.b),Y		; 31 44
	tsb $C6.b		; 04 C6
	brk $8E.b		; 00 8E
	brk $BD.b		; 00 BD
	and ($3A.b,X)		; 21 3A
	cop $70.b		; 02 70
	ora ($E9.b,X)		; 01 E9
	ora $FA1750.l		; 0F 50 17 FA
	ora $7B.b		; 05 7B
	stx $3C.b		; 86 3C
	cpy #$E21C.w		; C0 1C E2
	dec $CEE0.w,X		; DE E0 CE
	lda ($C2.b),Y		; B1 C2
	lda $7884.w,X		; BD 84 78
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $40.b,S		; 03 40
	ora ($60.b,X)		; 01 60
	and ($E0.b,X)		; 21 E0
	bcc -112.b		; 90 90
	sty $038C.w		; 8C 8C 03
	ora $60.b,S		; 03 60
	bpl   0.b		; 10 00
	beq -32.b		; F0 E0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	bra  -8.b		; 80 F8
	brk $D8.b		; 00 D8
	bit $98.b		; 24 98
	ror $F0.b		; 66 F0
	bpl  96.b		; 10 60
	rts		; 60

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4420.w		; 20 20 44
	mvp $EF,$96		; 44 96 EF
	and ($CF.b)		; 32 CF
	jmp $3649A7.l		; 5C A7 49 36
	sta $98C430.l		; 8F 30 C4 98
	beq  24.b		; F0 18
	bne  88.b		; D0 58
	sbc $00CF00.l		; EF 00 CF 00
	ora [$00.b]		; 07 00
	ldx $A0.b		; A6 A0
	rts		; 60

	rts		; 60

	rts		; 60

	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	jsr $C000.w		; 20 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	inc $FF33.w		; EE 33 FF
	adc ($B3.b,S),Y		; 73 B3
	sbc $C07F73.l,X		; FF 73 7F C0
	sbc $0EF304.l,X		; FF 04 F3 0E
	sbc $0B.b,X		; F5 0B
	rti		; 40

	adc $B3FFC0.l,X		; 7F C0 FF B3
	lda $107333.l,X		; BF 33 73 10
	bne  20.b		; D0 14
	bpl  46.b		; 10 2E
	jsr $202B.w		; 20 2B 20
	stz $80FC.w,X		; 9E FC 80
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	cpy #$0C00.w		; C0 00 0C
	sbc $60FE00.l,X		; FF 00 FE 60
	rts		; 60

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
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
	brk $17.b		; 00 17
	sbc ($4A.b),Y		; F1 4A
	sed		; F8
	sbc $7C.b		; E5 7C
	sbc ($3E.b)		; F2 3E
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $17E0.w		; 2E E0 17
	bne 107.b		; D0 6B
	pla		; 68
	ora $34.b		; 05 34
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $800F80.l		; 0F 80 0F 80
	ora $800F80.l		; 0F 80 0F 80
	ora $0400.w		; 0D 00 04
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
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $5F.b		; 00 5F
	ldy #$38C7.w		; A0 C7 38
	bra 127.b		; 80 7F
	cpy #$C2BF.w		; C0 BF C2
	inc $4444.w,X		; FE 44 44
	iny		; C8
	iny		; C8
	pla		; 68
	pla		; 68
	tya		; 98
	clc		; 18
	ora [$07.b]		; 07 07
	rti		; 40

	brk $A7.b		; 00 A7
	ora [$E5.b]		; 07 E5
	tsb $06.b		; 04 06
	ora ($05.b,X)		; 01 05
	ora $87.b,S		; 03 87
	adc ($F5.b,S),Y		; 73 F5
	adc ($F4.b,S),Y		; 73 F4
	sta $84.b		; 85 84
	asl $0F.b		; 06 0F
	brk $0E.b		; 00 0E
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	xce		; FB
	ora ($FB.b,X)		; 01 FB
	adc ($FB.b),Y		; 71 FB
	tsb $FF.b		; 04 FF
	brk $8F.b		; 00 8F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	stz $89.b,X		; 74 89
	sbc $E0.b		; E5 E0
	sed		; F8
	sed		; F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $03.b,S		; 03 03
	sbc $7E01.w,X		; FD 01 7E
	bra   8.b		; 80 08
	sta $C0.b,S		; 83 C0
	xce		; FB
	beq  -1.b		; F0 FF
	jsr ($79FF.w,X)		; FC FF 79
	sbc $10FF01.l,X		; FF 01 FF 10
	ora ($24.b,S),Y		; 13 24
	and $84.b		; 25 84
	sei		; 78
	tda		; 7B
	sty $06.b		; 84 06
	ora $E0F0.w,Y		; 19 F0 E0
	cpx #$DFFF.w		; E0 FF DF
	sbc $37C09F.l		; EF 9F C0 37
	bcc   3.b		; 90 03
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	cpx #$FF60.w		; E0 60 FF
	cpx #$CFFF.w		; E0 FF CF
	sbc $02FF80.l,X		; FF 80 FF 02
	phx		; DA
	tya		; 98
	.db $62, $1E, $E3		; 62 1E E3
	ldy $0251.w		; AC 51 02
	brk $00.b		; 00 00
	sbc $FDFD.w,X		; FD FD FD
	sbc $DF02.w,X		; FD 02 DF
	rti		; 40

	asl $02.b		; 06 02
	tsb $1F00.w		; 0C 00 1F
	ora ($02.b),Y		; 11 02
	sbc $FF00.w,X		; FD 00 FF
	sbc $00FF.w,X		; FD FF 00
	sbc $80BF.w,X		; FD BF 80
	adc $009F60.l		; 6F 60 9F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc ($F1.b,X)		; 61 F1
	ora [$67.b]		; 07 67
	bit #$89.b		; 89 89
	mvn $62,$54		; 54 54 62
	.db $62, $51, $51		; 62 51 51
	pha		; 48
	pha		; 48
	eor #$49.b		; 49 49
	ldx $FC80.w,Y		; BE 80 FC
	sta ($F8.b,X)		; 81 F8
	sta $E0.b,S		; 83 E0
	ora [$91.b]		; 07 91
	asl $3CA3.w,X		; 1E A3 3C
	cmp $1F70.w		; CD 70 1F
	cpx #$007F.w		; E0 7F 00
	adc $027E01.l,X		; 7F 01 7E 02
	jsr ($E884.w,X)		; FC 84 E8
	dey		; 88
	pei ($91.b)		; D4 91
	ldy #$C0A2.w		; A0 A2 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $02.b		; 06 02
	tsb $01.b		; 04 01
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	phd		; 0B
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	asl $00.b		; 06 00
	ora $02.b		; 05 02
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $000000.l		; 0F 00 00 00
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	trb $08.b		; 14 08
	php		; 08
	brk $04.b		; 00 04
	bit #$0E.b		; 89 0E
	ora ($F1.b,S),Y		; 13 F1
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $0D.b		; 00 0D
	brk $EB.b		; 00 EB
	trb $00DF.w		; 1C DF 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	phd		; 0B
	asl A		; 0A
	ora [$1E.b],Y		; 17 1E
	and [$1D.b]		; 27 1D
	ror $0000.w		; 6E 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $17.b		; 00 17
	brk $27.b		; 00 27
	brk $6C.b		; 00 6C
	brk $F1.b		; 00 F1
	asl $DE21.w,X		; 1E 21 DE
	rtl		; 6B

	pei ($A5.b)		; D4 A5
	cmp ($2C.b),Y		; D1 2C
	pei ($33.b)		; D4 33
	cmp $7C8673.l		; CF 73 86 7C
	.db $82, $1E, $00		; 82 1E 00
	dec $D400.w,X		; DE 00 D4
	brk $DB.b		; 00 DB
	ora ($DB.b,X)		; 01 DB
	brk $C4.b		; 00 C4
	tsb $89.b		; 04 89
	php		; 08
	sta $02.b,S		; 83 02
	jsr ($EE03.w,X)		; FC 03 EE
	bpl -10.b		; 10 F6
	clc		; 18
	inc $FA19.w,X		; FE 19 FA
	ora $0CFF.w		; 0D FF 0C
	sbc $2E.b,X		; F5 2E
	sbc $2326.w,X		; FD 26 23
	jsr $4050.w		; 20 50 40
	cli		; 58
	rti		; 40

	eor $4D40.w,Y		; 59 40 4D
	rti		; 40

	sty $AE80.w		; 8C 80 AE
	bra -90.b		; 80 A6
	bra -64.b		; 80 C0
	ldy #$E000.w		; A0 00 E0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$E000.w		; A0 00 E0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	tsb $1807.w		; 0C 07 18
	bit $3E17.w		; 2C 17 3E
	ora $001F75.l		; 0F 75 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc $7FFF00.l,X		; FF 00 FF 7F
	sbc $007F00.l,X		; FF 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	pea $FDF4.w		; F4 F4 FD
	sbc $0303.w,Y		; F9 03 03
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  24.b		; D0 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C93600.l,X		; FF 00 36 C9
	tsb $0B.b		; 04 0B
	beq  15.b		; F0 0F
	eor $45.b		; 45 45
	eor [$47.b]		; 47 47
	lsr $46.b		; 46 46
	mvp $48,$44		; 44 44 48
	pha		; 48
	cmp ($D0.b),Y		; D1 D0
	sbc ($00.b,S),Y		; F3 00
	xce		; FB
	php		; 08
	and $906FC0.l,X		; 3F C0 6F 90
	cmp $708F30.l		; CF 30 8F 70
	ora $E01FE0.l,X		; 1F E0 1F E0
	ora [$E0.b],Y		; 17 E0
	and [$C0.b],Y		; 37 C0
	bra -128.b		; 80 80
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $0D.b		; 00 0D
	tsb $010A.w		; 0C 0A 01
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora $06.b		; 05 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	tsb $000D.w		; 0C 0D 00
	phd		; 0B
	tsb $05.b		; 04 05
	brk $02.b		; 00 02
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	cmp ($D3.b,S),Y		; D3 D3
	ora #$09.b		; 09 09
	ora [$01.b]		; 07 01
	ora #$0A.b		; 09 0A
	pea $C0FA.w		; F4 FA C0
	cpy #$0000.w		; C0 00 00
	jmp.w [$CFFD]		; DC FD CF
	cmp $000900.l,X		; DF 00 09 00
	ora $10FF00.l		; 0F 00 FF 10
	inc $C0C0.w,X		; FE C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $04.b		; 00 04
	bpl  28.b		; 10 1C
	and $2718.w,X		; 3D 18 27
	jsl $6E0D00.l		; 22 00 0D 6E
	adc [$00.b]		; 67 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $10.b		; 04 10
	trb $3F18.w		; 1C 18 3F
	jsr $0227.w		; 20 27 02
	ora $006F46.l		; 0F 46 6F 00
	brk $C0.b		; 00 C0
	bra  32.b		; 80 20
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	trb $A020.w		; 1C 20 A0
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	brk $B8.b		; 00 B8
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $8E.b		; 00 8E
	brk $DC.b		; 00 DC
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	ora $0F1000.l		; 0F 00 10 0F
	sta $7F.b,S		; 83 7F
	asl $7CFF.w,X		; 1E FF 7C
	sbc $B9FF05.l,X		; FF 05 FF B9
	adc $000000.l,X		; 7F 00 00 00
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $08.b		; 00 08
	brk $B8.b		; 00 B8
	brk $06.b		; 00 06
	sed		; F8
	and $FECFF0.l		; 2F F0 CF FE
	cmp $FECDFE.l		; CF FE CD FE
	ora $EE.b,X		; 15 EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $F1.b		; 00 F1
	jsr ($F0C3.w,X)		; FC C3 F0
	ora $80.b,S		; 03 80
	ora ($00.b,X)		; 01 00
	and $007F00.l,X		; 3F 00 7F 00
	asl $073F.w,X		; 1E 3F 07
	pha		; 48
	cpx #$81FE.w		; E0 FE 81
	sbc $E000.w,X		; FD 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	and $F008C0.l,X		; 3F C0 08 F0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	iny		; C8
	bpl -25.b		; 10 E7
	pha		; 48
	sta ($45.b)		; 92 45
	tyx		; BB
	rts		; 60

	eor $DDA2.w		; 4D A2 DD
	bmi -96.b		; 30 A0
	ldy #$4040.w		; A0 40 40
	bmi  16.b		; 30 10
	sec		; 38
	php		; 08
	adc $1C44.w,X		; 7D 44 1C
	brk $BE.b		; 00 BE
	jsl $00000E.l		; 22 0E 00 00
	ora ($03.b,X)		; 01 03
	ora [$06.b]		; 07 06
	ora $131E09.l		; 0F 09 1E 13
	bit $3927.w,X		; 3C 27 39
	lsr $7D73.w		; 4E 73 7D
	lsr $01.b		; 46 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $39.b		; 00 39
	brk $73.b		; 00 73
	brk $46.b		; 00 46
	brk $FC.b		; 00 FC
	inc $9F.b		; E6 9F
	cpx #$9C63.w		; E0 63 9C
	jsr ($E33F.w,X)		; FC 3F E3
	jsr ($F38C.w,X)		; FC 8C F3
	adc ($8F.b),Y		; 71 8F
	sta [$3F.b]		; 87 3F
	cpx $07.b		; E4 07
	cpx #$9C00.w		; E0 00 9C
	brk $3F.b		; 00 3F
	brk $FC.b		; 00 FC
	brk $F3.b		; 00 F3
	brk $8F.b		; 00 8F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	ora [$00.b]		; 07 00
	sbc $03E001.l,X		; FF 01 E0 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $87.b		; 00 87
	brk $FF.b		; 00 FF
	bra  -7.b		; 80 F9
	ora ($F0.b,X)		; 01 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E6.b		; 00 E6
	adc ($72.b,S),Y		; 73 72
	lda ($35.b,S),Y		; B3 35
	jmp.w [$4CB8]		; DC B8 4C
	tsx		; BA
	adc [$FF.b],Y		; 77 FF
	ora $F7.b,S		; 03 F7
	ora $0CFD.w,X		; 1D FD 0C
	stz $F8.b		; 64 F8
	ldy $F8.b,X		; B4 F8
	trb $3C.b		; 14 3C
	pha		; 48
	eor $03FF32.l,X		; 5F 32 FF 03
	ora [$15.b]		; 07 15
	ora $C01D1C.l,X		; 1F 1C 1D C0
	adc [$E0.b]		; 67 E0
	and ($71.b,S),Y		; 33 71
	tya		; 98
	sed		; F8
	sty $A6DC.w		; 8C DC A6
	and $7FA3.w,X		; 3D A3 7F
	adc $2CA7.w		; 6D A7 2C
	mvp $20,$FC		; 44 FC 20
	jsr ($FE10.w,X)		; FC 10 FE
	php		; 08
	sbc $00BF24.l,X		; FF 24 BF 00
	sbc $84EF45.l,X		; FF 45 EF 84
	sbc $4E804E.l,X		; FF 4E 80 4E
	bra 114.b		; 80 72
	sty $3CC2.w		; 8C C2 3C
	mvn $88,$28		; 54 28 88
	ldy $98.b,X		; B4 98
	sty $6400.w		; 8C 00 64
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	php		; 08
	php		; 08
	bmi  48.b		; 30 30
	brk $80.b		; 00 80
	jsr $00E0.w		; 20 E0 00
	cpx #$F008.w		; E0 08 F0
	asl $07.b		; 06 07
	asl $03.b		; 06 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
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
	eor $107F20.l		; 4F 20 7F 10
	and $102710.l		; 2F 10 27 10
	ora $081708.l,X		; 1F 08 17 08
	ora [$08.b]		; 07 08
	xce		; FB
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  15.b		; 10 0F
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	adc $FC.b,S		; 63 FC
	eor $FC.b,S		; 43 FC
	eor [$E8.b],Y		; 57 E8
	cmp [$E8.b],Y		; D7 E8
	lda ($CC.b,S),Y		; B3 CC
	lda ($CC.b,S),Y		; B3 CC
	sbc ($8E.b),Y		; F1 8E
	cmp ($8E.b),Y		; D1 8E
	jsr ($FD00.w,X)		; FC 00 FD
	ora ($EA.b,X)		; 01 EA
	cop $EA.b		; 02 EA
	cop $CD.b		; 02 CD
	ora ($CC.b,X)		; 01 CC
	brk $8E.b		; 00 8E
	brk $8E.b		; 00 8E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	rti		; 40

	sta $888860.l,X		; 9F 60 88 88
	ora ($11.b),Y		; 11 11
	jsl $242422.l		; 22 22 24 24
	mvp $C8,$44		; 44 44 C8
	iny		; C8
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	rts		; 60

	rti		; 40

	adc ($61.b,X)		; 61 61
	adc ($71.b),Y		; 71 71
	sec		; 38
	sec		; 38
	ora $06.b,S		; 03 06
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	brk $71.b		; 00 71
	rts		; 60

	adc $3F20.w,Y		; 79 20 3F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	trb $2408.w		; 1C 08 24
	sec		; 38
	sec		; 38
	bmi 115.b		; 30 73
	cpx #$8447.w		; E0 47 84
	phd		; 0B
	asl $0101.w		; 0E 01 01
	cpx #$E0EE.w		; E0 EE E0
	jsr ($FEE0.w,X)		; FC E0 FE
	bpl  62.b		; 10 3E
	brk $FF.b		; 00 FF
	tsb $DF.b		; 04 DF
	cop $1F.b		; 02 1F
	brk $07.b		; 00 07
	cpy $39.b		; C4 39
	cmp ($3C.b,X)		; C1 3C
	cpy #$E63D.w		; C0 3D E6
	ora $600EE2.l		; 0F E2 0E 60
	stx $DB3C.w		; 8E 3C DB
	rol $3BC0.w,X		; 3E C0 3B
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	cop $11.b		; 02 11
	brk $11.b		; 00 11
	brk $91.b		; 00 91
	bra  65.b		; 80 41
	eor ($40.b,X)		; 41 40
	rti		; 40

	mvn $4A,$BA		; 54 BA 4A
	bne -16.b		; D0 F0
	cld		; D8
	sei		; 78
	tsb $70.b		; 04 70
	php		; 08
	rts		; 60

	sec		; 38
	jsr $E010.w		; 20 10 E0
	brk $8A.b		; 00 8A
	brk $F0.b		; 00 F0
	bvs   0.b		; 70 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sbc [$E0.b]		; E7 E0
	adc ($F1.b,S),Y		; 73 F1
	and $14F0.w,Y		; 39 F0 14
	tsb $0CFE.w		; 0C FE 0C
	pea $FDF1.w		; F4 F1 FD
	cmp $F8C7F1.l		; CF F1 C7 F8
	adc $FC.b,S		; 63 FC
	and ($7E.b),Y		; 31 7E
	bpl  63.b		; 10 3F
	jsr ($F40F.w,X)		; FC 0F F4
	ora $F103FD.l		; 0F FD 03 F1
	ora $E5.b,S		; 03 E5
	bpl -55.b		; 10 C9
	inc A		; 1A
	sta $DE.b		; 85 DE
	ora ($DE.b,X)		; 01 DE
	eor $190E98.l		; 4F 98 0E 19
	tsb $8C9B.w		; 0C 9B 8C
	cmp $1E.b,S		; C3 1E
	bpl   6.b		; 10 06
	jsl $C62ACA.l		; 22 CA 2A C6
	rol $80.b,X		; 36 80
	sec		; 38
	ora ($F9.b,X)		; 01 F9
	cop $FA.b		; 02 FA
	.db $82, $F2, $BB		; 82 F2 BB
	cpy $98D6.w		; CC D6 98
	trb $A890.w		; 1C 90 A8
	and ($30.b),Y		; 31 30
	and ($11.b,X)		; 21 11
	and $21.b,S		; 23 21
	ora $22.b,S		; 03 22
	ora $CC.b,S		; 03 CC
	brk $98.b		; 00 98
	brk $90.b		; 00 90
	brk $31.b		; 00 31
	brk $21.b		; 00 21
	brk $23.b		; 00 23
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	adc $66FF3F.l,X		; 7F 3F FF 66
	sbc $98FFCC.l,X		; FF CC FF 98
	sbc $31BE51.l,X		; FF 51 BE 31
	inc $7CA3.w,X		; FE A3 7C
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00BE00.l,X		; FF 00 BE 00
	inc $7C00.w,X		; FE 00 7C
	brk $87.b		; 00 87
	bra -57.b		; 80 C7
	bra -49.b		; 80 CF
	rti		; 40

	cmp $400F40.l		; CF 40 0F 40
	eor $005F00.l		; 4F 00 5F 00
	sta $008000.l,X		; 9F 00 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($F0.b,X)		; 01 F0
	ora ($F3.b,X)		; 01 F3
	ora $E1.b,S		; 03 E1
	ora ($E0.b,X)		; 01 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	and ($23.b,X)		; 21 23
	and $41.b,S		; 23 41
	eor ($40.b,X)		; 41 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($14.b),Y		; D1 14
	xba		; EB
	asl A		; 0A
	sbc [$04.b],Y		; F7 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $BF8100.l,X		; FF 00 81 BF
	rol A		; 2A
	rol $2F27.w,X		; 3E 27 2F
	jmp $4A4C.w		; 4C 4C 4A
	lsr A		; 4A
	eor #$49.b		; 49 49
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	cpy #$E074.w		; C0 74 E0
	sec		; 38
	beq  28.b		; F0 1C
	sed		; F8
	asl $07FC.w		; 0E FC 07
	inc $FF03.w,X		; FE 03 FF
	ora ($FF.b,X)		; 01 FF
	brk $40.b		; 00 40
	sed		; F8
	jsr $10FF.w		; 20 FF 10
	adc $34FFC8.l,X		; 7F C8 FF 34
	and $FD273A.l,X		; 3F 3A 27 FD
	cmp $7E.b,S		; C3 7E
	eor ($07.b,X)		; 41 07
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$38.b]		; 07 38
	sec		; 38
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	tsb $F9.b		; 04 F9
	tsb $FB.b		; 04 FB
	asl $FC.b,X		; 16 FC
	inc A		; 1A
	pea $FE0B.w		; F4 0B FE
	ora ($F9.b,X)		; 01 F9
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	cpx #$1407.w		; E0 07 14
	ora ($10.b),Y		; 11 10
	phd		; 0B
	inc A		; 1A
	ora ($09.b,X)		; 01 09
	ora ($0D.b,X)		; 01 0D
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	eor ($8E.b,S),Y		; 53 8E
	ora ($8E.b,S),Y		; 13 8E
	sta $0E.b,X		; 95 0E
	sta $0E.b,X		; 95 0E
	ora $0E.b,X		; 15 0E
	ora $0E.b,X		; 15 0E
	ora $0D06.w		; 0D 06 0D
	asl $8E.b		; 06 8E
	brk $8E.b		; 00 8E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $8F.b		; 00 8F
	bvs -89.b		; 70 A7
	sei		; 78
	lda ($7C.b,S),Y		; B3 7C
	plb		; AB
	jmp ($4695.w)		; 6C 95 46
	txs		; 9A
	eor $FD.b,S		; 43 FD
	and ($DE.b,X)		; 21 DE
	jsr $6969.w		; 20 69 69
	eor $55.b,X		; 55 55
	lsr A		; 4A
	lsr A		; 4A
	lsr $46.b,X		; 56 46
	tsa		; 3B
	ora $3D.b,S		; 03 3D
	ora ($1E.b,X)		; 01 1E
	brk $3F.b		; 00 3F
	jsr $00FC.w		; 20 FC 00
	rol $3F00.w,X		; 3E 00 3F
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $040004.l		; 0F 04 00 04
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
	brk $48.b		; 00 48
	bmi  -2.b		; 30 FE
	sed		; F8
	sbc $F0E7F8.l,X		; FF F8 E7 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	sbc ($FA.b)		; F2 FA
	sbc ($FA.b)		; F2 FA
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	rti		; 40

	brk $28.b		; 00 28
	bpl  24.b		; 10 18
	bpl   6.b		; 10 06
	tsb $0006.w		; 0C 06 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	bpl  30.b		; 10 1E
	brk $1F.b		; 00 1F
	tsb $0F.b		; 04 0F
	bra -63.b		; 80 C1
	sta ($33.b,X)		; 81 33
	and $27.b,S		; 23 27
	bpl  20.b		; 10 14
	asl $0E.b		; 06 0E
	ora $2F070F.l		; 0F 0F 07 2F
	adc ($07.b,S),Y		; 73 07
	bra -13.b		; 80 F3
	ora ($F7.b,X)		; 01 F7
	and $7F.b,S		; 23 7F
	bpl  31.b		; 10 1F
	asl $1F.b		; 06 1F
	ora $1F.b,S		; 03 1F
	and ($1F.b,X)		; 21 1F
	brk $0F.b		; 00 0F
	sta $CF3EE4.l,X		; 9F E4 3E CF
	sei		; 78
	sta $837B8D.l,X		; 9F 8D 7B 83
	adc $1FFB07.l,X		; 7F 07 FB 1F
	cpx #$00FF.w		; E0 FF 00
	cpx #$C807.w		; E0 07 C8
	ora $481999.l		; 0F 99 19 48
	eor #$0303.w		; 49 03 03
	sta $83.b,S		; 83 83
	sta ($92.b)		; 92 92
	mvp $03,$44		; 44 44 03
	asl $07.b		; 06 07
	tsb $07.b		; 04 07
	tsb $06.b		; 04 06
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0E0.w		; C0 E0 E0
	bvs 112.b		; 70 70
	brk $B8.b		; 00 B8
	trb $CEDE.w		; 1C DE CE
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	cpx #$70F0.w		; E0 F0 70
	beq   0.b		; F0 00
	cpy #$E000.w		; C0 00 E0
	cpy $FFF0.w		; CC F0 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	ora $F8.b,S		; 03 F8
	ora [$F8.b]		; 07 F8
	ora [$FC.b]		; 07 FC
	brk $53.b		; 00 53
	ldx $C7B9.w		; AE B9 C7
	bpl  16.b		; 10 10
	ora ($11.b),Y		; 11 11
	ora [$17.b],Y		; 17 17
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	ldy #$EEA0.w		; A0 A0 EE
	cpy #$0007.w		; C0 07 00
	ldx $7FD1.w		; AE D1 7F
	bvc 109.b		; 50 6D
	cli		; 58
	stx $34.b		; 86 34
	sta ($38.b)		; 92 38
	tya		; 98
	bit $3E8C.w,X		; 3C 8C 3E
	cmp $2E.b,X		; D5 2E
	eor ($40.b),Y		; 51 40
	bcc   0.b		; 90 00
	tya		; 98
	brk $F4.b		; 00 F4
	jsr $20F8.w		; 20 F8 20
	jsr ($FE20.w,X)		; FC 20 FE
	jsr $20EE.w		; 20 EE 20
	wai		; CB
	rol $E7.b		; 26 E7
	jsl $E022E5.l		; 22 E5 22 E0
	jsl $E02200.l		; 22 00 22 E0
	rep #$C2		; C2 C2
	brk $02.b		; 00 02
	brk $E6.b		; 00 E6
	jsr $00C2.w		; 20 C2 00
	rep #$00		; C2 00
	rep #$00		; C2 00
.ACCU 8
	sep #$20		; E2 20
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $12120F.l		; 0F 0F 12 12
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	bvs  -8.b		; 70 F8
	bcs  56.b		; B0 38
	trb $8000.w		; 1C 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpy #$60F8.w		; C0 F8 60
	jsr ($FEB0.w,X)		; FC B0 FE
	php		; 08
	rol $2C3C.w,X		; 3E 3C 2C
	ora #$01.b		; 09 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $003E.w		; 2C 3E 00
	ora $000300.l		; 0F 00 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ldy #$F000.w		; A0 00 F0
	rti		; 40

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	lsr $0E08.w,X		; 5E 08 0E
	brk $1E.b		; 00 1E
	brk $08.b		; 00 08
	rol $3E00.w,X		; 3E 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $BE.b		; 00 BE
	brk $BF.b		; 00 BF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $06.b		; 04 06
	asl $36.b		; 06 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	tsb $FE.b		; 04 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	eor $4EEEEF.l		; 4F EF EE 4E
	rts		; 60

	jsr $00C0.w		; 20 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	adc $EEFF40.l		; 6F 40 FF EE
	sbc $00FE40.l,X		; FF 40 FE 00
	beq 103.b		; F0 67
	bpl 104.b		; 10 68
	sbc [$F2.b],Y		; F7 F2
	cmp $4DDF24.l		; CF 24 DF 4D
	lda $B83FDD.l,X		; BF DD 3F B8
	adc $F805.w,X		; 7D 05 F8
	bpl   0.b		; 10 00
	sbc [$00.b],Y		; F7 00
	cmp $00DF00.l		; CF 00 DF 00
	lda $003F00.l,X		; BF 00 3F 00
	adc $00FA00.l,X		; 7F 00 FA 00
	asl $F8.b		; 06 F8
	sbc $FECFF0.l		; EF F0 CF FE
	cmp $FECDFE.l		; CF FE CD FE
	ora $EE.b,X		; 15 EE
	mvn $4A,$BA		; 54 BA 4A
	bne  -8.b		; D0 F8
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $8A.b		; 00 8A
	brk $F0.b		; 00 F0
	bvs -36.b		; 70 DC
	tsa		; 3B
	bcs 127.b		; B0 7F
	clv		; B8
	adc [$B8.b]		; 67 B8
	eor [$E7.b]		; 47 E7
	clc		; 18
	cmp ($3E.b,X)		; C1 3E
	lda $5D.b,S		; A3 5D
	sta [$6B.b],Y		; 97 6B
	asl A		; 0A
	ply		; 7A
	tsb $FC.b		; 04 FC
	tsb $F4.b		; 04 F4
	brk $60.b		; 00 60
	bpl  80.b		; 10 50
	jsr $01A0.w		; 20 A0 01
	cmp ($03.b,X)		; C1 03
	adc $7C.b,S		; 63 7C
	bra  62.b		; 80 3E
	cpy #$C03E.w		; C0 3E C0
	ply		; 7A
	sty $D1.b		; 84 D1
	asl $0E91.w		; 0E 91 0E
	sbc ($0C.b,S),Y		; F3 0C
	tax		; AA
	sty $90.b,X		; 94 90
	bra  80.b		; 80 50
	rti		; 40

	rti		; 40

	rti		; 40

	tsb $04.b		; 04 04
	rol A		; 2A
	rol A		; 2A
	pla		; 68
	pla		; 68
	brk $00.b		; 00 00
	bpl -48.b		; 10 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFE00.l,X		; FF 00 FE FF
	cpx #$1FFF.w		; E0 FF 1F
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($F9.b,X)		; 01 F9
	ora [$02.b]		; 07 02
	sbc $01FC03.l,X		; FF 03 FC 01
	inc $FFC0.w,X		; FE C0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	sbc $00FC00.l,X		; FF 00 FC 00
	inc $FF00.w,X		; FE 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
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
	brk $07.b		; 00 07
	brk $31.b		; 00 31
	ora $78FF0F.l		; 0F 0F FF 78
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $4E.b		; 00 4E
	sta $9D.b,S		; 83 9D
	asl $0B.b		; 06 0B
	trb $1C2A.w		; 1C 2A 1C
	ora $38.b,X		; 15 38
	cli		; 58
	and ($23.b),Y		; 31 23
	adc ($37.b),Y		; 71 37
	.db $62, $83, $00		; 62 83 00
	asl $00.b		; 06 00
	trb $1C00.w		; 1C 00 1C
	brk $38.b		; 00 38
	brk $31.b		; 00 31
	brk $71.b		; 00 71
	brk $62.b		; 00 62
	brk $FF.b		; 00 FF
	bpl  -4.b		; 10 FC
	ora ($79.b,X)		; 01 79
	and $F3.b,S		; 23 F3
	adc [$E3.b]		; 67 E3
	cmp [$E3.b],Y		; D7 E3
	sta [$C3.b],Y		; 97 C3
	and [$CF.b],Y		; 37 CF
	and ($10.b,S),Y		; 33 10
	brk $00.b		; 00 00
	ora $20.b,S		; 03 20
	ora [$61.b]		; 07 61
	ora $910FD1.l		; 0F D1 0F 91
	ora $310F31.l		; 0F 31 0F 31
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora ($77.b,X)		; 01 77
	ora $40.b		; 05 40
	rti		; 40

	sta ($21.b,X)		; 81 21
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $3F.b		; 00 3F
	brk $77.b		; 00 77
	rti		; 40

	eor ($00.b,X)		; 41 00
	lda ($01.b,X)		; A1 01
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	brk $37.b		; 00 37
	cpx #$A35B.w		; E0 5B A3
	dec A		; 3A
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $AF.b		; 00 AF
	brk $FF.b		; 00 FF
	ora $7F.b,S		; 03 7F
	beq  -1.b		; F0 FF
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora $B1BF7E.l		; 0F 7E BF B1
	lda $4BC3.w,Y		; B9 C3 4B
	tas		; 1B
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($7F.b,X)		; 01 7F
	asl $B17F.w		; 0E 7F B1
	sbc $0BFB81.l,X		; FF 81 FB 0B
	tad		; 5B
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	bvs -80.b		; 70 B0
	sed		; F8
	cpy #$20E0.w		; C0 E0 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  -1.b		; 30 FF
	cpy #$20F8.w		; C0 F8 20
	cpx #$4040.w		; E0 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $7F7E.w		; 0E 7E 7F
	adc ($7F.b),Y		; 71 7F
	asl $3CFA.w		; 0E FA 3C
	cpx #$0000.w		; E0 00 00
	beq  64.b		; F0 40
	bvs -96.b		; 70 A0
	sec		; 38
	asl $70FF.w		; 0E FF 70
	sbc $10FF0C.l,X		; FF 0C FF 10
	sbc $801C00.l,X		; FF 00 1C 80
	bra -96.b		; 80 A0
	jsr $10D0.w		; 20 D0 10
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	clc		; 18
	sbc $8A.b		; E5 8A
	adc [$CA.b],Y		; 77 CA
	rol $E8.b,X		; 36 E8
	asl $E8.b,X		; 16 E8
	ora [$F0.b],Y		; 17 F0
	ora $740CE8.l,X		; 1F E8 0C 74
	bra -25.b		; 80 E7
	cop $65.b		; 02 65
	brk $25.b		; 00 25
	brk $15.b		; 00 15
	trb $13.b		; 14 13
	sta ($08.b,S),Y		; 93 08
	dey		; 88
	bpl   0.b		; 10 00
	tya		; 98
	bra -16.b		; 80 F0
	cld		; D8
	sei		; 78
	tsb $70.b		; 04 70
	php		; 08
	rts		; 60

	sec		; 38
	jsr $E010.w		; 20 10 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	and ($F6.b,S),Y		; 33 F6
	tsa		; 3B
	plx		; FA
	asl $08F8.w,X		; 1E F8 08
	cpx #$0303.w		; E0 03 03
	ora $6C6C0F.l,X		; 1F 0F 6C 6C
	adc $A2.b,S		; 63 A2
	lda ($90.b,S),Y		; B3 90
	tyx		; BB
	cli		; 58
	eor $404F48.l,X		; 5F 48 4F 40
	eor $0CDF03.l,X		; 5F 03 DF 0C
	sbc $24FF60.l,X		; FF 60 FF 24
	tya		; 98
	eor $23.b,S		; 43 23
	sta $0B.b,S		; 83 0B
	phd		; 0B
	jmp ($F07F.w,X)		; 7C 7F F0
	sbc $EF81.w,X		; FD 81 EF
	clc		; 18
	adc $D210EC.l,X		; 7F EC 10 D2
	jsr $03BB.w		; 20 BB 03
	adc $72FF08.l,X		; 7F 08 FF 72
	inc $F882.w,X		; FE 82 F8
	and [$F8.b]		; 27 F8
	ora $FF00EC.l,X		; 1F EC 00 FF
	ror $80FF.w,X		; 7E FF 80
	sbc $97FF03.l,X		; FF 03 FF 97
	bvs  31.b		; 70 1F
	cpy #$7F9C.w		; C0 9C 7F
	cmp [$38.b]		; C7 38
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $EC01.w,X		; FD 01 EC
	tsb $202F.w		; 0C 2F 20
	adc $232340.l,X		; 7F 40 23 23
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $FC.b,S		; 03 FC
	adc $E6.b		; 65 E6
	plx		; FA
	ora $FA.b,S		; 03 FA
	ora $D0.b,S		; 03 D0
	ora $EEF70F.l,X		; 1F 0F F7 EE
	ora $00FF.w,X		; 1D FF 00
	jsr ($9800.w,X)		; FC 00 98
	bra  -4.b		; 80 FC
	brk $FC.b		; 00 FC
	brk $E8.b		; 00 E8
	ora #$E6.b		; 09 E6
	sbc $133D0D.l		; EF 0D 3D 13
	ora $383F4F.l		; 0F 4F 3F 38
	sbc [$E0.b],Y		; F7 E0
	cmp [$81.b]		; C7 81
	asl $1B04.w		; 0E 04 1B
	tas		; 1B
	jsr $4127.w		; 20 27 41
	ora $003F00.l		; 0F 00 3F 00
	sbc [$00.b],Y		; F7 00
	cmp [$00.b]		; C7 00
	asl $1B00.w		; 0E 00 1B
	brk $20.b		; 00 20
	brk $41.b		; 00 41
	brk $FF.b		; 00 FF
	sbc $1BF807.l,X		; FF 07 F8 1B
	sbc [$6E.b]		; E7 6E
	sta $FAFA3D.l,X		; 9F 3D FA FA
	adc $F7.b		; 65 F7
	sty $986F.w		; 8C 6F 98
	sbc $00F800.l,X		; FF 00 F8 00
	sbc [$00.b]		; E7 00
	sta $00FA00.l,X		; 9F 00 FA 00
	stz $00.b		; 64 00
	sty $9800.w		; 8C 00 98
	brk $06.b		; 00 06
	stz $2D.b		; 64 2D
	rti		; 40

	php		; 08
	eor ($49.b,X)		; 41 49
	ora $43.b,S		; 03 43
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $01.b,S		; 03 01
	asl $64.b		; 06 64
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $8F.b		; 00 8F
	adc ($59.b,S),Y		; 73 59
	sbc $D7.b,S		; E3 D7
	sbc #$AD.b		; E9 AD
	cmp ($2E.b),Y		; D1 2E
	cmp ($EF.b),Y		; D1 EF
	bvc -10.b		; 50 F6
	cld		; D8
	plx		; FA
	jmp.w [$0771]		; DC 71 07
	sbc ($07.b,X)		; E1 07
	inx		; E8
	ora $D0.b,S		; 03 D0
	ora $D0.b,S		; 03 D0
	ora ($50.b,X)		; 01 50
	ora ($D8.b,X)		; 01 D8
	ora ($DC.b,X)		; 01 DC
	ora ($09.b,X)		; 01 09
	ora [$30.b]		; 07 30
	phy		; 5A
	stx $46.b,Y		; 96 46
	bvc  72.b		; 50 48
	pha		; 48
	brk $30.b		; 00 30
	bmi  23.b		; 30 17
	tas		; 1B
	ora $1D010F.l		; 0F 0F 01 1D
	ora $7F.b		; 05 7F
	asl $40DE.w		; 0E DE 40
	cli		; 58
	brk $48.b		; 00 48
	jsr $1033.w		; 20 33 10
	ora $380F0B.l,X		; 1F 0B 0F 38
	bmi  24.b		; 30 18
	php		; 08
	pha		; 48
	bvc  32.b		; 50 20
	bpl  80.b		; 10 50
	rti		; 40

	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpx #$C0FC.w		; E0 FC C0
	cld		; D8
	brk $58.b		; 00 58
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	ora $801F40.l		; 0F 40 1F 80
	ora $001F00.l,X		; 1F 00 1F 00
	ora $003E00.l,X		; 1F 00 3E 00
	rol $3E00.w,X		; 3E 00 3E
	brk $40.b		; 00 40
	brk $81.b		; 00 81
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $C0.b		; 04 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	and $F7.b,S		; 23 F7
	and $F03FF0.l,X		; 3F F0 3F F0
	asl $0080.w,X		; 1E 80 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq -115.b		; F0 8D
	tyx		; BB
	phb		; 8B
	tyx		; BB
	ror $707E.w,X		; 7E 7E 70
	bvs -128.b		; 70 80
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	inc $1C05.w,X		; FE 05 1C
	phd		; 0B
	sec		; 38
	and $3F5F03.l,X		; 3F 03 5F 3F
	sta [$78.b]		; 87 78
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	brk $03.b		; 00 03
	asl $003F.w		; 0E 3F 00
	sei		; 78
	ora $230E26.l,X		; 1F 26 0E 23
	and $03.b		; 25 03
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	asl $16.b		; 06 16
	cmp [$10.b],Y		; D7 10
	cmp #$E0.b		; C9 E0
	rol $00.b		; 26 00
	and $00.b,S		; 23 00
	ora $00.b,S		; 03 00
	ora ($04.b,X)		; 01 04
	brk $17.b		; 00 17
	asl $BF.b		; 06 BF
	bpl  -1.b		; 10 FF
	brk $E8.b		; 00 E8
	sbc $77.b,S		; E3 77
	cmp $07.b,S		; C3 07
	bra  26.b		; 80 1A
	trb $BDBC.w		; 1C BC BD
	lda $35.b,S		; A3 35
	tas		; 1B
	sbc ($9F.b),Y		; F1 9F
	eor $738F.w,Y		; 59 8F 73
	ora $003F00.l		; 0F 00 3F 00
	adc $A0FF1C.l,X		; 7F 1C FF A0
	jsr ($A018.w,X)		; FC 18 A0
	stz $8C00.w		; 9C 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $0626.w		; 0C 26 06
	ldx $F0.b		; A6 F0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E00.w		; 0C 00 0E
	tsb $FF.b		; 04 FF
	brk $FE.b		; 00 FE
	cpy #$00E0.w		; C0 E0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	tsb $1000.w		; 0C 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$20C0.w		; E0 C0 20
	cpy #$8020.w		; C0 20 80
	rti		; 40

	cpy #$8000.w		; C0 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $3C.b,S		; 03 3C
	bit $4040.w,X		; 3C 40 40
	sbc $00FE00.l,X		; FF 00 FE 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
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
	brk $00.b		; 00 00
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
	brk $FF.b		; 00 FF
	brk $3B.b		; 00 3B
	sty $B1.b		; 84 B1
	stx $9FA0.w		; 8E A0 9F
	sta [$B8.b]		; 87 B8
	sta $A0DFB0.l		; 8F B0 DF A0
	sbc $000080.l,X		; FF 80 00 00
	tsb $C4.b		; 04 C4
	txa		; 8A
	dex		; CA
	sta ($D1.b),Y		; 91 D1
	ldx $E6.b		; A6 E6
	bit #$C9.b		; 89 C9
	sta ($D2.b)		; 92 D2
	lda $E5.b		; A5 E5
	lda $C0BFC0.l,X		; BF C0 BF C0
	sbc $C0FFC0.l,X		; FF C0 FF C0
	cmp $E08FC0.l,X		; DF C0 8F E0
	pea $F8C0.w		; F4 C0 F8
	sbc ($8A.b,S),Y		; F3 8A
	dex		; CA
	sta ($D2.b)		; 92 D2
	lda $E5.b		; A5 E5
	sta $C5.b		; 85 C5
	cmp #$E9.b		; C9 E9
	bit #$F9.b		; 89 F9
	brk $FB.b		; 00 FB
	beq  -1.b		; F0 FF
	xce		; FB
	inx		; E8
	jsr ($06A0.w,X)		; FC A0 06
	ldy #$4057.w		; A0 57 40
	adc [$50.b],Y		; 77 50
	pla		; 68
	eor $F00770.l		; 4F 70 07 F0
	sta [$E8.b]		; 87 E8
	sbc $00FCA0.l,X		; FF A0 FC 00
	beq  16.b		; F0 10
	beq -25.b		; F0 E7
	eor [$F5.b]		; 47 F5
	mvp $04,$FD		; 44 FD 04
	adc $FD04.w,X		; 7D 04 FD
	stx $F9.b		; 86 F9
	.db $82, $F8, $83		; 82 F8 83
	bit $3C83.w,X		; 3C 83 3C
	sta $7C.b,S		; 83 7C
.INDEX 16
	rep #$5C		; C2 5C
.INDEX 16
	rep #$1C		; C2 1C
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
	brk $7C.b		; 00 7C
	brk $7D.b		; 00 7D
	brk $FD.b		; 00 FD
	bra  -3.b		; 80 FD
	bra  60.b		; 80 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	bit $7C00.w,X		; 3C 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A9.b		; 00 A9
	bvs  89.b		; 70 59
	bmi -101.b		; 30 9B
	bmi -81.b		; 30 AF
	bcc -49.b		; 90 CF
	bcc 119.b		; 90 77
	cpy #$407F.w		; C0 7F 40
	ora $007040.l,X		; 1F 40 70 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bcc   0.b		; 90 00
	bcc   0.b		; 90 00
	cpy #$4000.w		; C0 00 40
	brk $40.b		; 00 40
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	sty $8C0D.w		; 8C 0D 8C
	ora $44.b		; 05 44
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$18.b]		; 07 18
	clc		; 18
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $FC03.w		; F4 03 FC
	ora $E3.b,S		; 03 E3
	ora $FF0CFE.l,X		; 1F FE 0C FF
	asl $FF.b		; 06 FF
	ora ($FF.b,X)		; 01 FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	sbc $FB.b,S		; E3 FB
	brk $1C.b		; 00 1C
	ora $060C.w		; 0D 0C 06
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
.INDEX 8
	sep #$9C		; E2 9C
	cpx $58.b		; E4 58
	stz $70.b		; 64 70
	php		; 08
	cpx #$70.b		; E0 70
	cpy #$20.b		; C0 20
	brk $00.b		; 00 00
	jmp $001C40.l		; 5C 40 1C 00
	sei		; 78
	rts		; 60

	clv		; B8
	jsr $00F0.w		; 20 F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	ldy #$30.b		; A0 30
	bvs  28.b		; 70 1C
	sec		; 38
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$F8.b		; C0 F8
	jsr $10FC.w		; 20 FC 10
	ror $3F08.w,X		; 7E 08 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FECFF0.l		; EF F0 CF FE
	cmp $15FE.w		; CD FE 15
	inc $BB55.w		; EE 55 BB
	eor $DFF3D1.l		; 4F D1 F3 DF
	plx		; FA
	sta [$F0.b]		; 87 F0
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $8B.b		; 00 8B
	ora ($F1.b,X)		; 01 F1
	adc ($02.b),Y		; 71 02
	ora [$7A.b]		; 07 7A
	ora $C0.b,S		; 03 C0
	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	cpy #$C0.b		; C0 C0
	beq  96.b		; F0 60
	clv		; B8
	beq  28.b		; F0 1C
	sei		; 78
	asl $F7CE.w		; 0E CE F7
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	jsr $10FC.w		; 20 FC 10
	inc $FF08.w,X		; FE 08 FF
	stx $FF.b		; 86 FF
	sed		; F8
	php		; 08
	beq -124.b		; F0 84
	jmp ($BEC6.w,X)		; 7C C6 BE
	sbc $9E.b,S		; E3 9E
	lda ($0F.b),Y		; B1 0F
	clc		; 18
	eor [$8C.b]		; 47 8C
	eor ($86.b,X)		; 41 86
	beq   0.b		; F0 00
	sei		; 78
	brk $38.b		; 00 38
	brk $9C.b		; 00 9C
	bra -113.b		; 80 8F
	cmp ($07.b,X)		; C1 07
	cpy #$03.b		; C0 03
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $75.b		; 00 75
	sta $EF.b,S		; 83 EF
	ora [$DF.b]		; 07 DF
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($A0.b,X)		; 01 A0
	lda $9F5F47.l		; AF 47 5F 9F
	lda $000000.l,X		; BF 00 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $0E.b		; 02 0E
	ora ($1F.b,X)		; 01 1F
	brk $7A.b		; 00 7A
	ora $00.b		; 05 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $6F.b		; 00 6F
	sta $FD2FD6.l,X		; 9F D6 2F FD
	and $6C8F75.l		; 2F 75 8F 6C
	sta $BE4FBE.l,X		; 9F BE 4F BE
	eor $99.b,S		; 43 99
	sbc $9F.b		; E5 9F
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $8F.b		; 00 8F
	brk $9F.b		; 00 9F
	brk $4D.b		; 00 4D
	brk $41.b		; 00 41
	brk $E2.b		; 00 E2
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $11.b		; 00 11
	ora $631F2E.l		; 0F 2E 1F 63
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $F0.b		; 00 F0
	ora $FFFF0F.l		; 0F 0F FF FF
	sbc $1FFF00.l,X		; FF 00 FF 1F
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $02.b		; 00 02
	ora ($0D.b,X)		; 01 0D
	ora $30.b,S		; 03 30
	ora $0000FF.l		; 0F FF 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $33.b,S		; 03 33
	ora $3C3FCF.l		; 0F CF 3F 3C
	sbc $1CFFE0.l,X		; FF E0 FF 1C
	cpx #$C3.b		; E0 C3
	brk $0C.b		; 00 0C
	ora $03.b,S		; 03 03
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $88.b		; 00 88
	adc $24FD12.l,X		; 7F 12 FD 24
	xce		; FB
	eor #$F7.b		; 49 F7
	.db $82, $FF, $31		; 82 FF 31
	dec $DE25.w		; CE 25 DE
	phb		; 8B
	jmp ($007F.w,X)		; 7C 7F 00
	sbc $FB00.w,X		; FD 00 FB
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $CE.b		; 00 CE
	brk $DE.b		; 00 DE
	brk $7C.b		; 00 7C
	brk $29.b		; 00 29
	cmp $51FF98.l,X		; DF 98 FF 51
	lda $337F93.l,X		; BF 93 7F 33
	sbc $28F72B.l,X		; FF 2B F7 28
	inc $58.b,X		; F6 58
	sbc $DE.b		; E5 DE
	brk $FE.b		; 00 FE
	brk $BE.b		; 00 BE
	ora ($7D.b,X)		; 01 7D
	ora $FD.b,S		; 03 FD
	ora $F4.b,S		; 03 F4
	ora $F4.b,S		; 03 F4
	ora $E4.b,S		; 03 E4
	cop $6F.b		; 02 6F
	beq -33.b		; F0 DF
	cpx #$7F.b		; E0 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8D.b		; 00 8D
	sty $F4.b		; 84 F4
	tsb $E2.b		; 04 E2
	cop $A1.b		; 02 A1
	and ($11.b,X)		; 21 11
	ora ($10.b),Y		; 11 10
	bpl   9.b		; 10 09
	ora #$FF.b		; 09 FF
	inc $087B.w,X		; FE 7B 08
	inc $FF00.w,X		; FE 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	php		; 08
	bne  28.b		; D0 1C
	inx		; E8
	asl $07F4.w		; 0E F4 07
	bit $24.b		; 24 24
	jsl $141422.l		; 22 22 14 14
	clc		; 18
	clc		; 18
	bcs -80.b		; B0 B0
	inx		; E8
	iny		; C8
	pea $FA04.w		; F4 04 FA
	cop $1C.b		; 02 1C
	asl $0D.b		; 06 0D
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($0B.b,X)		; 01 0B
	ora [$5F.b]		; 07 5F
	rol $FCFE.w,X		; 3E FE FC
	tsb $1F.b		; 04 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $3F.b		; 00 3F
	tsb $F8FF.w		; 0C FF F8
	sbc $E0C0C0.l,X		; FF C0 C0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$40.b		; C0 40
	bcc -128.b		; 90 80
	php		; 08
	php		; 08
	php		; 08
	tsb $07.b		; 04 07
	cpy #$F0.b		; C0 F0
	cpx #$F0.b		; E0 F0
	cpx #$F0.b		; E0 F0
	brk $F8.b		; 00 F8
	brk $F4.b		; 00 F4
	brk $FC.b		; 00 FC
	php		; 08
	sta $771704.l,X		; 9F 04 17 77
	asl $3E66.w		; 0E 66 3E
	bit $1E96.w		; 2C 96 1E
	cpx #$FC.b		; E0 FC
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	bmi -16.b		; 30 F0
	clc		; 18
	inc $07.b,X		; F6 07
	cpy $07.b		; C4 07
	stz $06.b		; 64 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	dec $DA.b		; C6 DA
	txa		; 8A
	sty $19.b		; 84 19
	trb $3838.w		; 1C 38 38
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$DF		; C2 DF
	bra -113.b		; 80 8F
	bpl  29.b		; 10 1D
	sec		; 38
	sec		; 38
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($82.b,X)		; 41 82
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
	cmp $1CDF1F.l,X		; DF 1F DF 1C
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	lda $40BF80.l,X		; BF 80 BF 40
	lsr $0000.w,X		; 5E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $1B.b		; E5 1B
	rol $FCC7.w,X		; 3E C7 FC
	and $32FED9.l,X		; 3F D9 FE 32
	sbc $FB44.w,X		; FD 44 FB
	txa		; 8A
	sbc [$55.b],Y		; F7 55
	ldx $001B.w		; AE 1B 00
	cmp [$00.b]		; C7 00
	and $00FE00.l,X		; 3F 00 FE 00
	sbc $FB00.w,X		; FD 00 FB
	brk $F7.b		; 00 F7
	brk $AE.b		; 00 AE
	brk $09.b		; 00 09
	sbc [$24.b],Y		; F7 24
	xce		; FB
	ora ($FD.b)		; 12 FD
	ora $FC.b,S		; 03 FC
	ora #$FE.b		; 09 FE
	and $89EE.w,Y		; 39 EE 89
	ror $DE69.w,X		; 7E 69 DE
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $7E.b		; 00 7E
	brk $DF.b		; 00 DF
	brk $84.b		; 00 84
	phd		; 0B
	ora $201F10.l		; 0F 10 1F 20
	and ($41.b)		; 32 41
	eor $03.b		; 45 03
	php		; 08
	ora [$13.b]		; 07 13
	tsb $102E.w		; 0C 2E 10
	phd		; 0B
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $41.b		; 00 41
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $78.b		; 00 78
	sta [$C7.b]		; 87 C7
	and $78FF1E.l,X		; 3F 1E FF 78
	sbc $7FF08F.l,X		; FF 8F F0 7F
	bra -63.b		; 80 C1
	brk $03.b		; 00 03
	brk $87.b		; 00 87
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	ora $FFFF00.l		; 0F 00 FF FF
	brk $0E.b		; 00 0E
	ora ($38.b,X)		; 01 38
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	sbc $F32C.w,Y		; F9 2C F3
	cli		; 58
	sbc [$B1.b]		; E7 B1
	cmp $C59F62.l		; CF 62 9F C5
	rol $788F.w,X		; 3E 8F 78
	ora [$F8.b],Y		; 17 F8
	sbc $F300.w,Y		; F9 00 F3
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	brk $9F.b		; 00 9F
	brk $3E.b		; 00 3E
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $5A.b		; 00 5A
	sbc ($B7.b,X)		; E1 B7
	cpy #$C0AC.w		; C0 AC C0
	stz $80.b		; 64 80
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	tsb $C0.b		; 04 C0
	php		; 08
	cpy #$8000.w		; C0 00 80
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	dey		; 88
	dey		; 88
	pha		; 48
	pha		; 48
	cop $0E.b		; 02 0E
	adc ($0F.b,X)		; 61 0F
	cpx #$E00B.w		; E0 0B E0
	php		; 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpx #$E010.w		; E0 10 E0
	bpl -11.b		; 10 F5
	tsb $F2.b		; 04 F2
	cop $F0.b		; 02 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl  -4.b		; 10 FC
	ora ($7E.b,X)		; 01 7E
	brk $5F.b		; 00 5F
	cpy #$F017.w		; C0 17 F0
	cop $3E.b		; 02 3E
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sbc $00FF01.l,X		; FF 01 FF 00
	lda $202F80.l,X		; BF 80 2F 20
	ora $030C.w		; 0D 0C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpy #$6066.w		; C0 66 60
	ror $1A67.w		; 6E 67 1A
	ora $1C1C.w,X		; 1D 1C 1C
	bpl  16.b		; 10 10
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $FD.b		; 00 FD
	rts		; 60

	inc $7F20.w,X		; FE 20 7F
	php		; 08
	rol $1F07.w,X		; 3E 07 1F
	ora [$17.b]		; 07 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	pla		; 68
	rti		; 40

	jmp $8640.w		; 4C 40 86
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$7000.w		; A0 00 70
	brk $FC.b		; 00 FC
	brk $CE.b		; 00 CE
	brk $86.b		; 00 86
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	php		; 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	and ($1C.b,S),Y		; 33 1C
	eor ($3C.b,X)		; 41 3C
	eor ($3E.b,X)		; 41 3E
	.db $42, $3E		; 42 3E
	.db $42, $38		; 42 38
	.db $42, $38		; 42 38
	.db $42, $1C		; 42 1C
	dec $F8.b		; C6 F8
	cpx $7E.b		; E4 7E
	rti		; 40

	ror $7C40.w,X		; 7E 40 7C
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	cop $3C.b		; 02 3C
	brk $78.b		; 00 78
	rti		; 40

	trb $0004.w		; 1C 04 00
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
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	asl $18.b		; 06 18
	clc		; 18
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $603838.l		; 0F 38 38 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $FEE3.w		; 2C E3 FE
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	jsr ($F80C.w,X)		; FC 0C F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $5E.b		; 00 5E
	.db $42, $80		; 42 80
	bra 120.b		; 80 78
	sed		; F8
	php		; 08
	tsb $1010.w		; 0C 10 10
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	cpy #$01C0.w		; C0 C0 01
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	sbc $E0FFFF.l,X		; FF FF FF E0
	sbc $FEFF01.l,X		; FF 01 FF FE
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $71.b		; 00 71
	inc $F9C6.w,X		; FE C6 F9
	bit $F0C3.w,X		; 3C C3 F0
	ora $C11FE0.l		; 0F E0 1F C1
	and $1C7F86.l,X		; 3F 86 7F 1C
	sbc $F900FE.l,X		; FF FE 00 F9
	brk $C3.b		; 00 C3
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F1.b		; 00 F1
	inc $FDC2.w,X		; FE C2 FD
	tsb $FB.b		; 04 FB
	bmi -49.b		; 30 CF
	sbc ($1F.b,X)		; E1 1F
	dec $3F.b		; C6 3F
	ora $F3FE.w,X		; 1D FE F3
	jsr ($00FE.w,X)		; FC FE 00
	sbc $FB00.w,X		; FD 00 FB
	brk $CF.b		; 00 CF
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $C6.b		; 00 C6
	sbc $C739.w,Y		; F9 39 C7
	cmp [$3F.b]		; C7 3F
	adc $07FE.w,Y		; 79 FE 07
	sed		; F8
	sbc $1C0300.l,X		; FF 00 03 1C
	brk $0F.b		; 00 0F
	sbc $C700.w,Y		; F9 00 C7
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	trb $0707.w		; 1C 07 07
	ora [$07.b]		; 07 07
	ora ($0F.b,X)		; 01 0F
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	asl $06.b		; 06 06
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	bmi  48.b		; 30 30
	brk $04.b		; 00 04
	tsb $000C.w		; 0C 0C 00
	ora ($02.b,X)		; 01 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora $20.b,S		; 03 20
	jsr ($7E00.w,X)		; FC 00 7E
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	cop $0B.b		; 02 0B
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	cpy #$60F8.w		; C0 F8 60
	jsr ($8000.w,X)		; FC 00 80
	bra -32.b		; 80 E0
	rti		; 40

	bvs -96.b		; 70 A0
	sec		; 38
	bne  28.b		; D0 1C
	tay		; A8
	stx $E614.w		; 8E 14 E6
	plp		; 28
	sep #$00		; E2 00
	brk $40.b		; 00 40
	rti		; 40

	ldy #$D020.w		; A0 20 D0
	bpl -24.b		; 10 E8
	php		; 08
	stz $04.b,X		; 74 04
	sec		; 38
	jsr $405C.w		; 20 5C 40
	jsr $1E10.w		; 20 10 1E
	rol $08.b		; 26 08
	php		; 08
	brk $10.b		; 00 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03030E.l		; 0F 0E 03 03
	ora [$37.b]		; 07 37
	brk $3E.b		; 00 3E
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	php		; 08
	asl $0700.w		; 0E 00 07
	tsb $030F.w		; 0C 0F 03
	ora $03.b,S		; 03 03
	dec $17.b		; C6 17
	cpx $90.b		; E4 90
	bcc  96.b		; 90 60
	jmp $086C.w		; 4C 6C 08
	php		; 08
	php		; 08
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	cop $27.b		; 02 27
	tsb $F7.b		; 04 F7
	cpx #$40F0.w		; E0 F0 40
	jmp ($6C08.w)		; 6C 08 6C
	php		; 08
	php		; 08
	jsr $4060.w		; 20 60 40
	rti		; 40

	cmp $C404.w,Y		; D9 04 C4
	dec A		; 3A
	sbc $0CFF19.l,X		; FF 19 FF 0C
	sbc $03FC06.l,X		; FF 06 FC 03
	sed		; F8
	brk $80.b		; 00 80
	brk $07.b		; 00 07
	bit $C3.b,X		; 34 C3
	plx		; FA
	cpx #$0CF8.w		; E0 F8 0C
	tsb $0606.w		; 0C 06 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   4.b		; F0 04
	sed		; F8
	tsb $1CF0.w		; 0C F0 1C
	jsr $8038.w		; 20 38 80
	bvs -128.b		; 70 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	rts		; 60

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $0C.b		; 06 0C
	tsb $0808.w		; 0C 08 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	cpy #$8000.w		; C0 00 80
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
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
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
	bvs 112.b		; 70 70
	sec		; 38
	sec		; 38
	asl $071C.w		; 0E 1C 07
	asl $0703.w		; 0E 03 07
	ora ($7B.b,X)		; 01 7B
	brk $18.b		; 00 18
	sbc $30FC60.l,X		; FF 60 FC 30
	ror $3F08.w,X		; 7E 08 3F
	tsb $1F.b		; 04 1F
	cop $0F.b		; 02 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bne -72.b		; D0 B8
	sec		; 38
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bcs -100.b		; B0 9C
	iny		; C8
	asl $3820.w		; 0E 20 38
	bvs  20.b		; 70 14
	jsr $0B04.w		; 20 04 0B
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	clv		; B8
	bpl 126.b		; 10 7E
	brk $2E.b		; 00 2E
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rol $3E00.w,X		; 3E 00 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ldx $3F00.w,Y		; BE 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $F4.b		; 00 F4
	sed		; F8
	bne -32.b		; D0 E0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	inc $F880.w,X		; FE 80 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	clv		; B8
	stz $675C.w		; 9C 5C 67
	ror $2663.w		; 6E 63 26
	and ($0B.b,X)		; 21 0B
	tsb $0C0C.w		; 0C 0C 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	lda $627F44.l,X		; BF 44 7F 62
	adc $082720.l		; 6F 20 27 08
	ora $000C0C.l		; 0F 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rts		; 60

	cpx #$4860.w		; E0 60 48
	bpl   8.b		; 10 08
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	jsr $00F0.w		; 20 F0 00
	ror $1F00.w,X		; 7E 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -96.b		; 80 A0
	bra 112.b		; 80 70
	bvs  56.b		; 70 38
	sec		; 38
	trb $0000.w		; 1C 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	cpy #$F080.w		; C0 80 F0
	brk $F8.b		; 00 F8
	bmi 126.b		; 30 7E
	clc		; 18
	and $2F376A.l,X		; 3F 6A 37 2F
	ror $C5.b,X		; 76 C5
	ror $6CDF.w,X		; 7E DF 6C
	xce		; FB
	jmp $499E.w		; 4C 9E 49
	stp		; DB
	ora #$93.b		; 09 93
	ora #$37.b		; 09 37
	brk $76.b		; 00 76
	brk $7E.b		; 00 7E
	brk $6C.b		; 00 6C
	brk $4C.b		; 00 4C
	brk $49.b		; 00 49
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $A0.b		; 00 A0
	adc $487FE0.l,X		; 7F E0 7F 48
	sbc [$D3.b],Y		; F7 D3
	inc $CFB4.w		; EE B4 CF
	ldx $DD.b		; A6 DD
	nop		; EA
	sta $9F68.w,X		; 9D 68 9F
	adc $007F00.l,X		; 7F 00 7F 00
	sbc [$00.b],Y		; F7 00
	inc $CF00.w		; EE 00 CF
	brk $DD.b		; 00 DD
	brk $9D.b		; 00 9D
	brk $9F.b		; 00 9F
	brk $93.b		; 00 93
	pla		; 68
	lda [$48.b],Y		; B7 48
	and [$C8.b],Y		; 37 C8
	ror $88.b,X		; 76 88
	asl $F8.b		; 06 F8
	lsr $B8.b		; 46 B8
	ror $98.b		; 66 98
	adc [$99.b]		; 67 99
	adc [$00.b]		; 67 00
	eor [$00.b]		; 47 00
	cmp [$00.b]		; C7 00
	sta [$00.b]		; 87 00
	sbc [$70.b],Y		; F7 70
	lda [$20.b]		; A7 20
	sta [$10.b],Y		; 97 10
	stx $10.b,Y		; 96 10
	eor ($3E.b,X)		; 41 3E
	eor ($3E.b,X)		; 41 3E
	ror $19.b		; 66 19
	iny		; C8
	lda [$D0.b],Y		; B7 D0
	and $D11EA1.l		; 2F A1 1E D1
	asl $21CF.w		; 0E CF 21
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sta ($01.b,X)		; 81 01
	asl $26.b		; 06 26
	php		; 08
	pla		; 68
	bpl  80.b		; 10 50
	brk $60.b		; 00 60
	ora ($31.b,X)		; 01 31
	pea $CC08.w		; F4 08 CC
	bmi -28.b		; 30 E4
	cli		; 58
	inx		; E8
	bvc -48.b		; 50 D0
	rts		; 60

	cmp ($E0.b),Y		; D1 E0
	sbc [$C1.b]		; E7 C1
	lda $0000C0.l		; AF C0 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	stx $9DE0.w		; 8E E0 9D
	cmp ($9E.b,X)		; C1 9E
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFC0.w,X		; FE C0 FF
	bra  -1.b		; 80 FF
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -48.b		; 90 D0
	sta $C0C08F.l		; 8F 8F C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F3F01.l		; 0F 01 3F 0F
	sbc $E73E.w,Y		; F9 3E E7
	sbc $0000.w,Y		; F9 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $003E00.l		; 0F 00 3E 00
	sbc $7F00.w,Y		; F9 00 7F
	stx $9ECE.w		; 8E CE 9E
	asl $0EDE.w		; 0E DE 0E
	dec $4E9E.w,X		; DE 9E 4E
	ror $2E0E.w,X		; 7E 0E 2E
	asl $0E0E.w		; 0E 0E 0E
	bra  14.b		; 80 0E
	stx $3F.b		; 86 3F
	dec $3F.b		; C6 3F
	dec $3F.b		; C6 3F
	lsr $3F.b		; 46 3F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FF01.w,X		; FE 01 FF
	brk $FB.b		; 00 FB
	brk $EB.b		; 00 EB
	clc		; 18
	and ($C8.b,S),Y		; 33 C8
	cmp [$2C.b],Y		; D7 2C
	php		; 08
	php		; 08
	ora #$09.b		; 09 09
	stx $86.b		; 86 86
	sta [$84.b]		; 87 84
	sbc $1017F8.l,X		; FF F8 17 10
	cmp $002308.l		; CF 08 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bmi  29.b		; 30 1D
	.db $62, $B0, $5F		; 62 B0 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	.db $62, $00, $5F		; 62 00 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
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
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7846.w		; C0 46 78
	sbc $01FF01.l		; EF 01 FF 01
	cmp $7807C0.l		; CF C0 07 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx #$F523.w		; A2 23 F5
	ora $F5.b		; 05 F5
	ora $34.b		; 05 34
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	ora [$BF.b]		; 07 BF
	adc $F6FEFD.l,X		; 7F FD FE F6
	sed		; F8
	bmi -64.b		; 30 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($1F.b,X)		; 01 1F
	asl $F8FF.w,X		; 1E FF F8
	sbc $00FFC0.l,X		; FF C0 FF 00
	jsr ($6000.w,X)		; FC 00 60
	txy		; 9B
	ora ($93.b,X)		; 01 93
	ora ($12.b,X)		; 01 12
	ora ($11.b,X)		; 01 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D4.b		; 00 D4
	tsa		; 3B
	pei ($3B.b)		; D4 3B
	sty $3B.b,X		; 94 3B
	bit $1B.b,X		; 34 1B
	bit $1B.b,X		; 34 1B
	and [$19.b],Y		; 37 19
	and [$19.b],Y		; 37 19
	asl $3B19.w		; 0E 19 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $D7.b		; 00 D7
	and #$8F.b		; 29 8F
	adc ($0F.b),Y		; 71 0F
	sbc ($4F.b),Y		; F1 4F
	lda ($2F.b),Y		; B1 2F
	bne  31.b		; D0 1F
	cpx #$A05F.w		; E0 5F A0
	cmp $2026A0.l,X		; DF A0 26 20
	lsr $40.b		; 46 40
	stx $80.b		; 86 80
	stx $00.b		; 86 00
	cpy #$E000.w		; C0 00 E0
	brk $AF.b		; 00 AF
	ora $E310B0.l		; 0F B0 10 E3
	ora ($F4.b,S),Y		; 13 F4
	tsb $03FF.w		; 0C FF 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $5F4300.l,X		; FF 00 43 5F
	stz $6F.b		; 64 6F
	eor ($53.b,S),Y		; 53 53
	eor $12125F.l,X		; 5F 5F 12 12
	ora ($12.b)		; 12 12
	ora #$09.b		; 09 09
	php		; 08
	php		; 08
	sta [$C0.b]		; 87 C0
	eor $07D08F.l,X		; 5F 8F D0 07
	pea $FD07.w		; F4 07 FD
	asl $FD.b		; 06 FD
	asl $FD.b		; 06 FD
	asl $FE.b		; 06 FE
	ora $3F.b		; 05 3F
	cpy #$8030.w		; C0 30 80
	and $DA01.w,Y		; 39 01 DA
.ACCU 16
	rep #$2A		; C2 2A
	jsl $18121A.l		; 22 1A 12 18
	bpl -103.b		; 10 99
	bcc  -1.b		; 90 FF
	rts		; 60

	sbc $806FB0.l,X		; FF B0 6F 80
	adc $00C080.l,X		; 7F 80 C0 00
	cpx #$5000.w		; E0 00 50
	cpx #$F018.w		; E0 18 F0
	rts		; 60

	rts		; 60

	bpl  48.b		; 10 30
	bra -112.b		; 80 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $07.b		; 00 07
	ora $0E.b,S		; 03 0E
	ora [$1C.b]		; 07 1C
	ora $121E39.l		; 0F 39 1E 12
	and $3B75.w,X		; 3D 75 3B
	ror A		; 6A
	and [$EE.b],Y		; 37 EE
	adc [$03.b],Y		; 77 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $77.b		; 00 77
	brk $8A.b		; 00 8A
	sbc [$14.b],Y		; F7 14
	sbc $527E89.l		; EF 89 7E 52
	sbc $FB84.w,X		; FD 84 FB
	ora ($FF.b,X)		; 01 FF
	eor ($BF.b)		; 52 BF
	ldy #$F77F.w		; A0 7F F7
	brk $EF.b		; 00 EF
	brk $7E.b		; 00 7E
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $06.b		; 00 06
	asl $0E06.w		; 0E 06 0E
	asl $0E06.w		; 0E 06 0E
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	asl $01.b		; 06 01
	asl $05.b		; 06 05
	asl $1F02.w		; 0E 02 1F
	cop $1F.b		; 02 1F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	adc ($8C.b,S),Y		; 73 8C
	sta ($6E.b,S),Y		; 93 6E
	adc #$3116.w		; 69 16 31
	ora [$04.b]		; 07 04
	ora $0E.b,S		; 03 0E
	ora ($3F.b,X)		; 01 3F
	brk $7F.b		; 00 7F
	brk $87.b		; 00 87
	tsb $61.b		; 04 61
	brk $13.b		; 00 13
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $08.b		; 04 08
	php		; 08
	jsr $FB20.w		; 20 20 FB
	and $C67FD7.l,X		; 3F D7 7F C6
	tda		; 7B
	sty $7B.b		; 84 7B
	lda $9552.w		; AD 52 95
	mvp $50,$B2		; 44 B2 50
	cmp $003F3E.l		; CF 3E 3F 00
	adc $007B00.l,X		; 7F 00 7B 00
	tda		; 7B
	brk $50.b		; 00 50
	brk $6E.b		; 00 6E
	asl $6D.b		; 06 6D
	ora ($11.b,X)		; 01 11
	bpl  36.b		; 10 24
	sed		; F8
	ora ($FC.b)		; 12 FC
	cli		; 58
	ldx $3CCA.w,Y		; BE CA 3C
	adc ($9C.b)		; 72 9C
	bit $D8.b		; 24 D8
	sec		; 38
	cpy #$6010.w		; C0 10 60
	sed		; F8
	brk $FC.b		; 00 FC
	brk $BE.b		; 00 BE
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $98.b		; 00 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $37.b		; 00 37
	ora $192E.w,Y		; 19 2E 19
	ora $1508.w,X		; 1D 08 15
	php		; 08
	php		; 08
	tsb $08.b		; 04 08
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	bvs  28.b		; 70 1C
	php		; 08
	.db $82, $04, $C2		; 82 04 C2
	bra -31.b		; 80 E1
	rti		; 40

	bpl  32.b		; 10 20
	php		; 08
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
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
	ora [$00.b]		; 07 00
	ora $3EF906.l,X		; 1F 06 F9 3E
	sbc $8F7EF1.l		; EF F1 7E 8F
	sbc ($7C.b,S),Y		; F3 7C
	sta $0000E0.l,X		; 9F E0 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	rol $F100.w,X		; 3E 00 F1
	brk $8F.b		; 00 8F
	brk $7C.b		; 00 7C
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	sta $193FC6.l		; 8F C6 3F 19
	inc $F867.w,X		; FE 67 F8
	sta $F609F0.l		; 8F F0 09 F6
	ora ($EB.b)		; 12 EB
	lda $008F49.l,X		; BF 49 8F 00
	and $00FE00.l,X		; 3F 00 FE 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E4.b		; 00 E4
	brk $46.b		; 00 46
	brk $CF.b		; 00 CF
	clc		; 18
	lda ($49.b,S),Y		; B3 49
	cmp $F434.w,Y		; D9 34 F4
	ora ($FA.b)		; 12 FA
	ora #$00FF.w		; 09 FF 00
	stx $8270.w		; 8E 70 82
	jmp ($2027.w,X)		; 7C 27 20
	asl $0708.w		; 0E 08 07
	tsb $0B.b		; 04 0B
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $71.b		; 00 71
	adc ($0D.b),Y		; 71 0D
	ora $60D0.w		; 0D D0 60
	bvc 108.b		; 50 6C
	lda ($4F.b)		; B2 4F
	and ($C8.b,S),Y		; 33 C8
	adc #$8494.w		; 69 94 84
	ply		; 7A
	mvp $44,$3B		; 44 3B 44
	sec		; 38
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	sty $8F0C.w		; 8C 0C 8F
	dey		; 88
	ora [$14.b],Y		; 17 14
	adc $62.b,S		; 63 62
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	sbc $6EF310.l,X		; FF 10 F3 6E
	and $3BC3.w,X		; 3D C3 3B
	rti		; 40

	bne  96.b		; D0 60
	tya		; 98
	jsr $30E4.w		; 20 E4 30
	cpy #$E010.w		; C0 10 E0
	cpx #$808E.w		; E0 8E 80
	sta $80.b,S		; 83 80
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$E000.w		; E0 00 E0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$F008.w		; E0 08 F0
	php		; 08
	sed		; F8
	php		; 08
	beq -124.b		; F0 84
	sec		; 38
	sty $5C.b		; 84 5C
	cpy $F0.b		; C4 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $FC.b		; 00 FC
	sty $38.b		; 84 38
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $36.b		; 04 36
	and ($C2.b)		; 32 C2
	stz $80.b		; 64 80
	cld		; D8
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3E04.w		; 1C 04 3E
	and ($3F.b)		; 32 3F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	sbc $3FFFFF.l,X		; FF FF FF 3F
	and $0000C0.l,X		; 3F C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3FF0.w		; C0 F0 3F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	sed		; F8
	lda $1FEFFF.l		; AF FF EF 1F
	brk $1F.b		; 00 1F
	ora #$0C0F.w		; 09 0F 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	ldy #$2FF8.w		; A0 F8 2F
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $0C0F00.l,X		; 1F 00 0F 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	sbc $1DFF.w,X		; FD FF 1D
	sbc $58FEC1.l,X		; FF C1 FE 58
	ror $6C6C.w,X		; 7E 6C 6C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1DF8.w		; E0 F8 1D
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $6C7E00.l,X		; FF 00 7E 6C
	jmp ($0000.w)		; 6C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	plx		; FA
	sbc $1A1FFA.l,X		; FF FA 1F 1A
	adc $00.b		; 65 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sed		; F8
	inc A		; 1A
	sbc $00FF02.l,X		; FF 02 FF 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $AF.b		; 00 AF
	sbc $FFFFAF.l,X		; FF AF FF FF
	ora ($01.b,X)		; 01 01
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AE.b		; 00 AE
	sbc $00FF21.l,X		; FF 21 FF 00
	sbc $000700.l,X		; FF 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $85.b,S		; 03 85
	sta $A2.b		; 85 A2
	plx		; FA
	tay		; A8
.ACCU 8
	sep #$E2		; E2 E2
	bpl   8.b		; 10 08
	clc		; 18
	sec		; 38
	and $000101.l,X		; 3F 01 01 00
	ora [$01.b]		; 07 01
	sta $20FFA2.l		; 8F A2 FF 20
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $013F38.l,X		; 1F 38 3F 01
	ora ($FF.b,X)		; 01 FF
	cpy #$E0D7.w		; C0 D7 E0
	lda [$A0.b],Y		; B7 A0
	stp		; DB
	cmp $87DF4B.l		; CF 4B DF 87
	sei		; 78
	cpx #$B0FB.w		; E0 FB B0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	beq -96.b		; F0 A0
	beq  75.b		; F0 4B
	sbc $00FF08.l,X		; FF 08 FF 00
	sbc $B0FB00.l,X		; FF 00 FB B0
	beq -13.b		; F0 F3
	php		; 08
	sed		; F8
	tsb $DD.b		; 04 DD
	ora $E6.b,S		; 03 E6
	cmp ($FF.b,X)		; C1 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	cpy #$FFFF.w		; C0 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$D7C0.w		; C0 C0 D7
	sbc $FFFFD7.l,X		; FF D7 FF FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FFD7.w		; C0 D7 FF
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	ora $7B710F.l		; 0F 0F 71 7B
	bra -127.b		; 80 81
	rts		; 60

	cpx #$7393.w		; E0 93 73
	eor $3F003F.l,X		; 5F 3F 00 3F
	ora $0F0B00.l,X		; 1F 00 0B 0F
	bvs 123.b		; 70 7B
	clv		; B8
	lda $F070.w,Y		; B9 70 F0
	bpl -13.b		; 10 F3
	ora $3F007F.l,X		; 1F 7F 00 3F
	brk $1F.b		; 00 1F
	cpy #$D8C0.w		; C0 C0 D8
	cld		; D8
	tsb $8C.b		; 04 8C
	eor $4F.b		; 45 4F
	cpx $B7F7.w		; EC F7 B7
	iny		; C8
	cpy #$0000.w		; C0 00 00
	bra -128.b		; 80 80
	cpy #$F8B0.w		; C0 B0 F8
	bvs  -4.b		; 70 FC
	adc $7F.b,X		; 75 7F
	cpx $FF.b		; E4 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	beq   0.b		; F0 00
	php		; 08
	cpx #$07C6.w		; E0 C6 07
	sbc $08EF00.l,X		; FF 00 EF 08
	tda		; 7B
	sei		; 78
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc $FF01.w,Y		; F9 01 FF
	brk $F7.b		; 00 F7
	brk $87.b		; 00 87
	brk $C3.b		; 00 C3
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	cpx $587F.w		; EC 7F 58
	sbc $60FFB0.l,X		; FF B0 FF 60
	adc $D827B0.l,X		; 7F B0 27 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -116.b		; 80 8C
	sta $1B.b,S		; 83 1B
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	bra -80.b		; 80 B0
	brk $18.b		; 00 18
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	asl A		; 0A
	ora [$16.b]		; 07 16
	ora $2D0F16.l		; 0F 16 0F 2D
	asl $1F2C.w,X		; 1E 2C 1F
	asl $013D.w,X		; 1E 3D 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $3D.b		; 00 3D
	brk $B3.b		; 00 B3
	cpy $986F.w		; CC 6F 98
	cmp $60BF30.l,X		; DF 30 BF 60
	eor ($EC.b,S),Y		; 53 EC
	eor $F6.b		; 45 F6
	sta $8FF2.w,X		; 9D F2 8F
	sep #$CC		; E2 CC
	brk $98.b		; 00 98
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	brk $CE.b		; 00 CE
	cop $FC.b		; 02 FC
	jsr $37EB.w		; 20 EB 37
	xba		; EB
	and [$ED.b],Y		; 37 ED
	and ($E5.b,S),Y		; 33 E5
	tsa		; 3B
	inc $39.b		; E6 39
	.db $62, $39, $69		; 62 39 69
	bmi 105.b		; 30 69
	bmi  55.b		; 30 37
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	brk $3B.b		; 00 3B
	brk $39.b		; 00 39
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $E5.b		; 00 E5
	asl $69.b,X		; 16 69
	stz $9867.w,X		; 9E 67 98
	lda $C0BFD0.l		; AF D0 BF C0
	sbc $C07FC0.l,X		; FF C0 7F C0
	adc $0AC6.w,Y		; 79 C6 0A
	cop $80.b		; 02 80
	brk $80.b		; 00 80
	brk $C6.b		; 00 C6
	asl $C9.b		; 06 C9
	ora #$D6.b		; 09 D6
	asl $C9.b,X		; 16 C9
	ora #$D0.b		; 09 D0
	asl $66.b,X		; 16 66
	sta ($B3.b)		; 92 B3
	pla		; 68
	inx		; E8
	and $F4.b		; 25 F4
	ora ($FF.b,S),Y		; 13 FF
	brk $1C.b		; 00 1C
	cpx #$F804.w		; E0 04 F8
	ora $FC.b,S		; 03 FC
	ora $0F11.w,X		; 1D 11 0F
	php		; 08
	ora [$05.b],Y		; 17 05
	php		; 08
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	sbc $1B.b,S		; E3 1B
	tas		; 1B
	brk $00.b		; 00 00
	ldy #$40C0.w		; A0 C0 40
	bra  96.b		; 80 60
	bra -48.b		; 80 D0
	jsr $F009.w		; 20 09 F0
	bit #$73.b		; 89 73
	sta $2FDE77.l		; 8F 77 DE 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $C020.w		; 20 20 C0
	cmp $00.b,S		; C3 00
	ora [$06.b]		; 07 06
	ora [$0C.b]		; 07 0C
	ora $FE19E8.l		; 0F E8 19 FE
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C8.b		; 00 C8
	cmp $BFB7B6.l,X		; DF B6 B7 BF
	lda $222424.l,X		; BF 24 24 22
	jsl $101111.l		; 22 11 11 10
	bpl   8.b		; 10 08
	php		; 08
	sbc $01FE00.l,X		; FF 00 FE 01
	sbc $FF03.w,X		; FD 03 FF
	cop $FF.b		; 02 FF
	cop $FA.b		; 02 FA
	asl $F0.b		; 06 F0
	ora $7C0FF0.l		; 0F F0 0F 7C
	jmp ($8282.w,X)		; 7C 82 82
	sty $84.b		; 84 84
	adc $057C.w,X		; 7D 7C 05
	tsb $0D.b		; 04 0D
	tsb $9F9F.w		; 0C 9F 9F
	rti		; 40

	rti		; 40

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
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	sbc $E2.b		; E5 E2
	adc $E0.b,S		; 63 E0
	rts		; 60

	cpx #$60E0.w		; E0 E0 60
	rts		; 60

	rts		; 60

	and ($60.b,S),Y		; 33 60
	eor [$E0.b],Y		; 57 E0
	sbc $F062E0.l,X		; FF E0 62 F0
	rts		; 60

	beq  96.b		; F0 60
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq   2.b		; F0 02
	sbc ($60.b)		; F2 60
	sed		; F8
	asl $BEC0.w,X		; 1E C0 BE
	rts		; 60

	ora $30D720.l		; 0F 20 D7 30
	sbc $08F318.l		; EF 18 F3 08
	sbc $0C.b,X		; F5 0C
	sbc $7F04.w,Y		; F9 04 7F
	rti		; 40

	ora $203F00.l,X		; 1F 00 3F 20
	ora $505700.l		; 0F 00 57 50
	sta $000388.l		; 8F 88 03 00
	ora $00.b,S		; 03 00
	and ($8F.b,S),Y		; 33 8F
	tsb $8383.w		; 0C 83 83
	cpy #$C080.w		; C0 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	sta $808380.l		; 8F 80 83 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bmi  29.b		; 30 1D
	.db $62, $B0, $5F		; 62 B0 5F
	xce		; FB
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $62.b		; 00 62
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
	cpy #$F824.w		; C0 24 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	cpy #$F0C8.w		; C0 C8 F0
	pea $C2F8.w		; F4 F8 C2
	tsb $01.b		; 04 01
	cpx #$7000.w		; E0 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
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
	brk $55.b		; 00 55
	and $553F51.l,X		; 3F 51 3F 55
	tsa		; 3B
	lda [$7B.b]		; A7 7B
	lda $7F.b,S		; A3 7F
	plb		; AB
	adc [$AB.b],Y		; 77 AB
	adc [$AB.b],Y		; 77 AB
	adc [$3F.b],Y		; 77 3F
	brk $3F.b		; 00 3F
	brk $3B.b		; 00 3B
	brk $7B.b		; 00 7B
	brk $7F.b		; 00 7F
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $1D.b		; 00 1D
	cpx #$E01D.w		; E0 1D E0
	sta $8F60.w		; 8D 60 8F
	.db $62, $9E, $72		; 62 9E 72
	cmp $32CD32.l,X		; DF 32 CD 32
	sbc #$12.b		; E9 12
	inc $FE20.w,X		; FE 20 FE
	jsr $005E.w		; 20 5E 00
	jmp $014C01.l		; 5C 01 4C 01
	bit $3E00.w		; 2C 00 3E
	ora ($1E.b)		; 12 1E
	ora ($50.b)		; 12 50
	jsr $2050.w		; 20 50 20
	rti		; 40

	jsr $0060.w		; 20 60 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	eor $8F5FAF.l		; 4F AF 5F 8F
	ora $1F1F8F.l,X		; 1F 8F 1F 1F
	ora $070F07.l		; 0F 07 0F 07
	ora $66070F.l		; 0F 0F 07 66
	and $071F46.l		; 2F 46 1F 07
	and $071F07.l,X		; 3F 07 1F 07
	ora $071F07.l,X		; 1F 07 1F 07
	ora $070F03.l,X		; 1F 03 0F 07
	sed		; F8
	phb		; 8B
	adc $73.b,X		; 75 73
	sta $BD43.w		; 8D 43 BD
	sta $7D.b,S		; 83 7D
	lda $1B.b		; A5 1B
	stx $CE77.w		; 8E 77 CE
	and $040000.l,X		; 3F 00 00 04
	ora $0C.b		; 05 0C
	sta $B534.w		; 8D 34 B5
	pha		; 48
	eor #$01.b		; 49 01
	cmp $06.b,S		; C3 06
	adc [$8E.b],Y		; 77 8E
	lda $9DCC3E.l,X		; BF 3E CC 9D
	pla		; 68
	lda $837D40.l,X		; BF 40 7D 83
	jsr $7FDF.w		; 20 DF 7F
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $48.b		; 00 48
	eor $000E00.l		; 4F 00 0E 00
	brk $03.b		; 00 03
	bra  31.b		; 80 1F
	cpy #$BF3F.w		; C0 3F BF
	brk $80.b		; 00 80
	cop $02.b		; 02 02
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FD02.w,X		; FE 02 FD
	tsb $2B.b		; 04 2B
	cli		; 58
	eor $6C.b,X		; 55 6C
	pld		; 2B
	ror $59.b,X		; 76 59
	rol $08.b,X		; 36 08
	php		; 08
	sta [$87.b]		; 87 87
	sta $84.b		; 85 84
	xce		; FB
	sed		; F8
	eor [$90.b],Y		; 57 90
	rtl		; 6B

	dey		; 88
	adc $84.b,X		; 75 84
	and ($82.b,S),Y		; 33 82
	cmp $E79820.l,X		; DF 20 98 E7
	cmp $726DF0.l		; CF F0 6D 72
	sty $1B.b		; 84 1B
	cmp [$0B.b]		; C7 0B
	cpx $0B.b		; E4 0B
	plx		; FA
	ora $8080.w		; 0D 80 80
	eor [$40.b]		; 47 40
	jsr $9220.w		; 20 20 92
	bpl -13.b		; 10 F3
	bpl  -5.b		; 10 FB
	php		; 08
	xce		; FB
	php		; 08
	sbc ($00.b),Y		; F1 00
	rep #$C2		; C2 C2
	cmp ($FD.b),Y		; D1 FD
	pei ($F1.b)		; D4 F1
	sbc ($08.b),Y		; F1 08
	tsb $0C.b		; 04 0C
	trb $001F.w		; 1C 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$D1.b]		; C7 D1
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $1C0F00.l,X		; FF 00 0F 1C
	ora $000000.l,X		; 1F 00 00 00
	brk $EB.b		; 00 EB
	beq  91.b		; F0 5B
	bvc 109.b		; 50 6D
	adc [$25.b]		; 67 25
	adc $703C43.l		; 6F 43 3C 70
	sbc $F8D8.w,X		; FD D8 F8
	brk $00.b		; 00 00
	cpx #$50F8.w		; E0 F8 50
	sed		; F8
	and $FF.b		; 25 FF
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	cld		; D8
	sed		; F8
	brk $00.b		; 00 00
	jsr ($EE02.w,X)		; FC 02 EE
	ora ($F3.b,X)		; 01 F3
	cpx #$FFFF.w		; E0 FF FF
	sbc $807F7F.l,X		; FF 7F 7F 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	bra -32.b		; 80 E0
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	cpx #$EBE0.w		; E0 E0 EB
	sbc $7F7FEB.l,X		; FF EB 7F 7F
	bra   0.b		; 80 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$FF6B.w		; E0 6B FF
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($D7.b,X)		; 01 D7
	adc $847BC6.l,X		; 7F C6 7B 84
	tda		; 7B
	lda $9552.w		; AD 52 95
	mvp $50,$B2		; 44 B2 50
	cmp $18CF3E.l		; CF 3E CF 18
	adc $007B00.l,X		; 7F 00 7B 00
	tda		; 7B
	brk $50.b		; 00 50
	brk $6E.b		; 00 6E
	asl $6D.b		; 06 6D
	ora ($11.b,X)		; 01 11
	bpl  39.b		; 10 27
	jsr $FC12.w		; 20 12 FC
	eor $CBBE.w,Y		; 59 BE CB
	bit $9C72.w,X		; 3C 72 9C
	rol $D8.b		; 26 D8
	dec A		; 3A
	cpy #$6010.w		; C0 10 60
	bne  96.b		; D0 60
	jsr ($BE00.w,X)		; FC 00 BE
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $98.b		; 00 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $C6.b		; 00 C6
	cmp [$FF.b]		; C7 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	sbc $00FE00.l,X		; FF 00 FE 00
	brk $39.b		; 00 39
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $FB7F9F.l,X		; FF 9F 7F FB
	ora [$7E.b]		; 07 7E
	sta ($01.b,X)		; 81 01
	inc $F3C0.w,X		; FE C0 F3
	sei		; 78
	beq   0.b		; F0 00
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	brk $81.b		; 00 81
	brk $FE.b		; 00 FE
	brk $F3.b		; 00 F3
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $0101.w,X		; FE 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3030.w		; C0 30 30
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	xce		; FB
	sbc $83FF3B.l,X		; FF 3B FF 83
	jsr ($FCB0.w,X)		; FC B0 FC
	cld		; D8
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3BF0.w		; C0 F0 3B
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $D8FC00.l,X		; FF 00 FC D8
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	pea $F4FE.w		; F4 FE F4
	rol $CA34.w,X		; 3E 34 CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$34F0.w		; C0 F0 34
	inc $FE04.w,X		; FE 04 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	cpy #$6080.w		; C0 80 60
	cpy #$20D0.w		; C0 D0 20
	sec		; 38
	brk $08.b		; 00 08
	tsb $02.b		; 04 02
	brk $01.b		; 00 01
	brk $83.b		; 00 83
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D7.b		; 00 D7
	sbc $FFFF57.l,X		; FF 57 FF FF
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D7.b		; 00 D7
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $000300.l,X		; FF 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	beq -16.b		; F0 F0
	sed		; F8
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	sed		; F8
	beq  -4.b		; F0 FC
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	cpy #$FF00.w		; C0 00 FF
	brk $38.b		; 00 38
	sbc $7FFFFE.l,X		; FF FE FF 7F
	bra  -1.b		; 80 FF
	brk $3C.b		; 00 3C
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$FFFF.w		; E0 FF FF
	sbc $807F7F.l,X		; FF 7F 7F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -16.b		; 70 F0
	eor $3FDFFF.l,X		; 5F FF DF 3F
	brk $3F.b		; 00 3F
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
	ora [$07.b]		; 07 07
	sec		; 38
	and $4040.w,X		; 3D 40 40
	bmi 112.b		; 30 70
	eor #$39.b		; 49 39
	and $1F001F.l		; 2F 1F 00 1F
	ora $070500.l		; 0F 00 05 07
	sec		; 38
	and $5C5C.w,X		; 3D 5C 5C
	sec		; 38
	sei		; 78
	php		; 08
	adc $3F0F.w,Y		; 79 0F 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	cpx #$ECE0.w		; E0 E0 EC
	cpx $C602.w		; EC 02 C6
	jsl $FBF627.l		; 22 27 F6 FB
	stp		; DB
	cpx $60.b		; E4 60
	bra -128.b		; 80 80
	rti		; 40

	cpy #$58E0.w		; C0 E0 58
	jsr ($FE38.w,X)		; FC 38 FE
	dec A		; 3A
	and $80FF72.l,X		; 3F 72 FF 80
	sbc $00E000.l,X		; FF 00 E0 00
	cpy #$0001.w		; C0 01 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora #$06.b		; 09 06
	ora ($0C.b,S),Y		; 13 0C
	and $385718.l		; 2F 18 57 38
	ldy $0073.w		; AC 73 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $73.b		; 00 73
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	cpy #$00FC.w		; C0 FC 00
	asl $C100.w		; 0E 00 C1
	brk $20.b		; 00 20
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -18.b		; 80 EE
	bpl -127.b		; 10 81
	inc $FFD9.w,X		; FE D9 FF
	clv		; B8
	sbc $00DD32.l,X		; FF 32 DD 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$E090.w		; C0 90 E0
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $A1.b		; 00 A1
	dec $32.b,X		; D6 32
	bit $00CC.w		; 2C CC 00
	inc $FE00.w,X		; FE 00 FE
	brk $79.b		; 00 79
	stx $90.b		; 86 90
	asl $0E90.w		; 0E 90 0E
	jmp $00C054.l		; 5C 54 C0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	jsr $8600.w		; 20 00 86
	stx $68.b		; 86 68
	pla		; 68
	rts		; 60

	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	asl $7D1D.w,X		; 1E 1D 7D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($1F.b,X)		; 01 1F
	cop $7F.b		; 02 7F
	ora $F8FF.w,X		; 1D FF F8
	ora $FF00FE.l,X		; 1F FE 00 FF
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	jsr $38D9.w		; 20 D9 38
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	stz $64.b		; 64 64
	ora $203F00.l,X		; 1F 00 3F 20
	and $405F00.l,X		; 3F 00 5F 40
	adc [$60.b]		; 67 60
	jsr ($81FC.w,X)		; FC FC 81
	sta ($00.b,X)		; 81 00
	brk $80.b		; 00 80
	beq -48.b		; F0 D0
	trb $06F0.w		; 1C F0 06
	sed		; F8
	ora $FC.b,S		; 03 FC
	ora ($3D.b,X)		; 01 3D
	beq -38.b		; F0 DA
	cpy #$0000.w		; C0 00 00
	rti		; 40

	rti		; 40

	inx		; E8
	php		; 08
	jsr ($FE04.w,X)		; FC 04 FE
	cop $FE.b		; 02 FE
	brk $4E.b		; 00 4E
	rti		; 40

	bit $0100.w,X		; 3C 00 01
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
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($A4.b,X)		; 01 A4
	cmp $A4.b,S		; C3 A4
	cmp $C2.b,S		; C3 C2
	sta ($42.b,X)		; 81 42
	sta ($42.b,X)		; 81 42
	sta ($02.b,X)		; 81 02
	ora ($51.b,X)		; 01 51
	php		; 08
	lda ($36.b),Y		; B1 36
	cmp $00.b,S		; C3 00
	cmp $00.b,S		; C3 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora ($90.b,X)		; 01 90
	brk $FA.b		; 00 FA
	brk $BF.b		; 00 BF
	eor $E057E0.l,X		; 5F E0 57 E0
	eor [$E0.b],Y		; 57 E0
	rol $C0.b		; 26 C0
	rol $40.b		; 26 40
	ror $00.b		; 66 00
	jmp ($BD02.w,X)		; 7C 02 BD
	asl $00E0.w		; 0E E0 00
	cpx #$E100.w		; E0 00 E1
	ora ($C2.b,X)		; 01 C2
	ora $40.b,S		; 03 40
	ora ($00.b,X)		; 01 00
	tas		; 1B
	brk $FF.b		; 00 FF
	cop $FC.b		; 02 FC
	sed		; F8
	ora ($E4.b,X)		; 01 E4
	brk $83.b		; 00 83
	php		; 08
	phd		; 0B
	plp		; 28
	and ($70.b,S),Y		; 33 70
	lda $00FF80.l,X		; BF 80 FF 00
	sbc $474000.l,X		; FF 00 40 47
	bra -101.b		; 80 9B
	brk $7C.b		; 00 7C
	php		; 08
	sbc $FD31.w,X		; FD 31 FD
	sta ($F1.b,X)		; 81 F1
	and ($A1.b,X)		; 21 A1
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	asl A		; 0A
	ora [$14.b]		; 07 14
	ora $3B1E09.l		; 0F 09 1E 3B
	ora $3D13.w,X		; 1D 13 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	ora $3D00.w,X		; 1D 00 3D
	brk $C9.b		; 00 C9
	adc $66FF92.l,X		; 7F 92 FF 66
	lda $CD7FE4.l,X		; BF E4 7F CD
	inc $FE89.w,X		; FE 89 FE
	sta $13FE.w,Y		; 99 FE 13
	jsr ($007F.w,X)		; FC 7F 00
	sbc $00BF00.l,X		; FF 00 BF 00
	adc $00FE00.l,X		; 7F 00 FE 00
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $78.b		; 00 78
	stz $9C71.w,X		; 9E 71 9C
	sbc $38.b,S		; E3 38
	cmp [$30.b]		; C7 30
	sty $9063.w		; 8C 63 90
	eor $FC07F8.l		; 4F F8 07 FC
	cop $9F.b		; 02 9F
	cop $9F.b		; 02 9F
	tsb $3F.b		; 04 3F
	php		; 08
	and $227E10.l,X		; 3F 10 7E 22
	jmp ($014C.w,X)		; 7C 4C 01
	ora ($70.b,X)		; 01 70
	adc ($5F.b),Y		; 71 5F
	jsr $10EF.w		; 20 EF 10
	lda [$58.b],Y		; B7 58
	tsa		; 3B
	jmp.w [$9629]		; DC 29 96
	bpl  79.b		; 10 4F
	bmi -81.b		; 30 AF
	bvs -17.b		; 70 EF
	bra  32.b		; 80 20
	cpy #$C010.w		; C0 10 C0
	cli		; 58
	bne -36.b		; D0 DC
	lsr $06.b		; 46 06
	cmp #$69.b		; C9 69
	bra -32.b		; 80 E0
	jsr $31E0.w		; 20 E0 31
	and ($17.b),Y		; 31 17
	ora $3E0F0F.l,X		; 1F 0F 0F 3E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $20.b		; 00 20
	and [$11.b],Y		; 37 11
	ora $000F0B.l,X		; 1F 0B 0F 00
	brk $3E.b		; 00 3E
	rol $4141.w,X		; 3E 41 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $40.b		; 00 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	rol $D9.b		; 26 D9
	rtl		; 6B

	sty $A9.b,X		; 94 A9
	rol $91.b		; 26 91
	stx $78.b		; 86 78
	sbc ($7E.b,S),Y		; F3 7E
	cmp $9A.b,S		; C3 9A
	phk		; 4B
	eor $D9A2.w		; 4D A2 D9
	brk $80.b		; 00 80
	brk $74.b		; 00 74
	bit $6C.b,X		; 34 6C
	tsb $808C.w		; 0C 8C 80
	bit $7400.w,X		; 3C 00 74
	mvp $A0,$BC		; 44 BC A0
	bvc -32.b		; 50 E0
	bcc -32.b		; 90 E0
	jsr $C0C0.w		; 20 C0 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	ora #$41.b		; 09 41
	lda [$07.b]		; A7 07
	sta $3E6C0F.l		; 8F 0F 6C 3E
	and ($BB.b),Y		; 31 BB
	sta [$FF.b]		; 87 FF
	ora $F3.b,S		; 03 F3
	ora $010700.l		; 0F 00 07 01
	ora $0C7F07.l,X		; 1F 07 7F 0C
	sbc $80F730.l,X		; FF 30 F7 80
	sbc [$33.b],Y		; F7 33
	lda ($83.b,S),Y		; B3 83
	sta $7B.b,S		; 83 7B
	sbc [$FF.b],Y		; F7 FF
	cmp [$EE.b]		; C7 EE
	ora $78EE3C.l,X		; 1F 3C EE 78
	pea $B07C.w		; F4 7C B0
	sec		; 38
	cpx #$8080.w		; E0 80 80
	adc ($FF.b,S),Y		; 73 FF
	dec $FF.b		; C6 FF
	tsb $FF.b		; 04 FF
	php		; 08
	sbc $30F6B0.l		; EF B0 F6 30
	bmi  48.b		; 30 30
	bmi -128.b		; 30 80
	bra -121.b		; 80 87
	rts		; 60

	phb		; 8B
	cmp ($97.b,X)		; C1 97
	rep #$8F		; C2 8F
	cpy #$80BF.w		; C0 BF 80
	lda $007F80.l,X		; BF 80 7F 00
	ror $E000.w,X		; 7E 00 E0
	bra -64.b		; 80 C0
	ora [$C0.b]		; 07 C0
	asl $18C0.w		; 0E C0 18
	bra   0.b		; 80 00
	sta ($01.b,X)		; 81 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	jsr ($F000.w,X)		; FC 00 F0
	beq -32.b		; F0 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sed		; F8
	brk $10.b		; 00 10
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $03.b		; 06 03
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	brk $02.b		; 00 02
	sta $05.b,S		; 83 05
	dey		; 88
	ora $0989.w		; 0D 89 09
	rti		; 40

	bmi -124.b		; 30 84
	cpy $77.b		; C4 77
	and ($A1.b)		; 32 A1
	adc ($20.b,X)		; 61 20
	ora ($00.b,X)		; 01 00
	ora $0F0A02.l		; 0F 02 0A 0F
	and $32EF0F.l,X		; 3F 0F EF 32
	inc $30.b,X		; F6 30
	adc ($20.b,S),Y		; 73 20
	sbc ($00.b,X)		; E1 00
	and [$B1.b]		; 27 B1
	dec A		; 3A
	cmp ($D7.b)		; D2 D7
	dec $83.b		; C6 83
	lsr $43.b		; 46 43
	cmp $03.b		; C5 03
	sta ($43.b,X)		; 81 43
	ora $01.b,S		; 03 01
	.db $82, $01, $32		; 82 01 32
	jsr ($F087.w,X)		; FC 87 F0
	ora $F0.b,S		; 03 F0
	ora $40.b,S		; 03 40
	ora $C0.b,S		; 03 C0
	ora $C0.b,S		; 03 C0
	ora ($80.b,X)		; 01 80
	ora ($80.b,X)		; 01 80
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $388B30.l		; CF 30 8B 38
	sta [$30.b]		; 87 30
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	.db $42, $42		; 42 42
	and ($32.b)		; 32 32
	asl $170E.w		; 0E 0E 17
	ora ($1F.b,S),Y		; 13 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl 119.b		; 10 77
	tsa		; 3B
	rol $7B.b		; 26 7B
	ror $CE73.w		; 6E 73 CE
	adc ($DE.b,S),Y		; 73 DE
	adc $D6.b,S		; 63 D6
	sbc $96.b,S		; E3 96
	sbc $A6.b,S		; E3 A6
	cmp $3B.b,S		; C3 3B
	brk $7B.b		; 00 7B
	brk $73.b		; 00 73
	brk $73.b		; 00 73
	brk $63.b		; 00 63
	brk $E3.b		; 00 E3
	brk $E3.b		; 00 E3
	brk $C3.b		; 00 C3
	brk $33.b		; 00 33
	jsr ($FC23.w,X)		; FC 23 FC
	and [$F8.b]		; 27 F8
	lda [$78.b]		; A7 78
	sbc [$78.b]		; E7 78
	cmp $70CF70.l		; CF 70 CF 70
	eor $00FCF0.l		; 4F F0 FC 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	bvs  63.b		; 70 3F
	sei		; 78
	sta $1ECF3C.l,X		; 9F 3C CF 1E
	sbc [$0F.b]		; E7 0F
	sbc ($07.b,S),Y		; F3 07
	sbc ($03.b),Y		; F1 03
	sbc $B003.w,Y		; F9 03 B0
	sbc ($18.b),Y		; F1 18
	sed		; F8
	tsb $067C.w		; 0C 7C 06
	rol $1F00.w,X		; 3E 00 1F
	ora ($0F.b,X)		; 01 0F
	bpl  31.b		; 10 1F
	jsr $7B27.w		; 20 27 7B
	stz $3C.b,X		; 74 3C
	lda ($10.b,S),Y		; B3 10
	eor $F826B8.l		; 4F B8 26 F8
	ora ($F1.b,X)		; 01 F1
	sbc [$FB.b],Y		; F7 FB
	sbc $20FCFF.l,X		; FF FF FC 20
	beq  34.b		; F0 22
	sbc ($0C.b)		; F2 0C
	cpx $6100.w		; EC 00 61
	brk $07.b		; 00 07
	ora ($FF.b,X)		; 01 FF
	sbc $FF.b,S		; E3 FF
	stz $FF.b,X		; 74 FF
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $3C.b		; 00 3C
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
	brk $01.b		; 00 01
	mvp $04,$41		; 44 41 04
	eor ($04.b,X)		; 41 04
	ora $06.b,S		; 03 06
	sta $06.b,S		; 83 06
	sbc $D106.w,Y		; F9 06 D1
	asl $2EF1.w		; 0E F1 2E
	eor [$04.b]		; 47 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sta $82.b,S		; 83 82
	sta $A2.b,S		; 83 A2
	ora #$28.b		; 09 28
	sbc ($19.b,S),Y		; F3 19
	sbc $19.b,S		; E3 19
	sbc $10.b,S		; E3 10
.INDEX 8
	sep #$10		; E2 10
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	cpy #$30.b		; C0 30
	cmp ($20.b,X)		; C1 20
	sbc ($00.b,X)		; E1 00
	sbc ($10.b),Y		; F1 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $0F3C03.l		; 0F 03 3C 0F
	sei		; 78
	ora $003FE4.l,X		; 1F E4 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	ora [$F8.b]		; 07 F8
	and $07FEC1.l,X		; 3F C1 FE 07
	sbc $F32F.w,Y		; F9 2F F3
	lsr $BDE7.w,X		; 5E E7 BD
	dec $0000.w		; CE 00 00
	ora [$00.b]		; 07 00
	and $00FE00.l,X		; 3F 00 FE 00
	sbc $F300.w,Y		; F9 00 F3
	brk $E7.b		; 00 E7
	brk $CE.b		; 00 CE
	brk $F0.b		; 00 F0
	sbc $14C23D.l,X		; FF 3D C2 14
	plx		; FA
	sbc $BE72.w		; ED 72 BE
	cmp ($7E.b,X)		; C1 7E
	bra  -1.b		; 80 FF
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	brk $C2.b		; 00 C2
	brk $FB.b		; 00 FB
	brk $73.b		; 00 73
	brk $C0.b		; 00 C0
	brk $81.b		; 00 81
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
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
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	cpy #$3F.b		; C0 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $73.b		; 00 73
	sbc $20F848.l,X		; FF 48 F8 20
	cpx #$24.b		; E0 24
	bit $22.b		; 24 22
	jsl $102121.l		; 22 21 21 10
	bpl  16.b		; 10 10
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($F3.b,X)		; 01 F3
	ora $912F92.l		; 0F 92 2F 91
	rol $2E81.w		; 2E 81 2E
.ACCU 16
	rep #$6C		; C2 6C
	bpl  16.b		; 10 10
	ora ($11.b),Y		; 11 11
	ora [$16.b],Y		; 17 16
	sbc $00CFF0.l,X		; FF F0 CF 00
	dec $CE00.w		; CE 00 CE
	brk $8C.b		; 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $7E3F3E.l		; 0F 3E 3F 7E
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	ora $6E3F18.l		; 0F 18 3F 6E
	adc $010000.l,X		; 7F 00 00 01
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	asl $781E.w,X		; 1E 1E 78
	sei		; 78
	cpx #$E0.b		; E0 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	phd		; 0B
	ora ($3F.b,X)		; 01 3F
	tsb $7E.b		; 04 7E
	clc		; 18
	inc $F860.w,X		; FE 60 F8
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	bit $007E.w		; 2C 7E 00
	jmp ($3838.w,X)		; 7C 38 38
	cpx #$F0.b		; E0 F0
	cpy #$E0.b		; C0 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $00FF.w		; 0C FF 00
	inc $FC00.w,X		; FE 00 FC
	rti		; 40

	sed		; F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0626.w		; 0C 26 06
	ldx $D0.b		; A6 D0
	cpx #$E0.b		; E0 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	tsb $FE.b		; 04 FE
	brk $FE.b		; 00 FE
	rti		; 40

	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $1E1E07.l		; 0F 07 1E 1E
	sei		; 78
	ply		; 7A
	ror $67.b		; 66 67
	sta [$14.b]		; 87 14
	bit $30.b,X		; 34 30
	bmi   0.b		; 30 00
	ora $063F01.l		; 0F 01 3F 06
	sbc $62FE18.l,X		; FF 18 FE 62
	inc $E707.w,X		; FE 07 E7
	trb $34.b		; 14 34
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $02.b		; 05 02
	ora [$01.b]		; 07 01
	asl $FE03.w,X		; 1E 03 FE
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $BF.b		; 00 BF
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	jsr $F820.w		; 20 20 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	rol $2EFC.w		; 2E FC 2E
	jsr ($F936.w,X)		; FC 36 F9
	trb $34.b		; 14 34
	phd		; 0B
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	and $24.b		; 25 24
	and ($20.b,X)		; 21 20
	ora ($32.b,S),Y		; 13 32
	ora [$14.b]		; 07 14
	ora $0B.b,S		; 03 0B
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($20.b,X)		; C1 20
	sta ($20.b,X)		; 81 20
	cmp ($60.b,X)		; C1 60
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $06.b		; 04 06
	cop $32.b		; 02 32
	sec		; 38
	cli		; 58
	sei		; 78
	cpx #$F0.b		; E0 F0
	bcc -96.b		; 90 A0
	jsr $0100.w		; 20 00 01
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	cop $FF.b		; 02 FF
	clc		; 18
	plx		; FA
	rti		; 40

	sed		; F8
	bcc -16.b		; 90 F0
	jsr $3CA0.w		; 20 A0 3C
	jsr $301C.w		; 20 1C 30
	sec		; 38
	bmi   7.b		; 30 07
	brk $19.b		; 00 19
	asl $1F1C.w		; 0E 1C 1F
	bit $04.b,X		; 34 04
	brk $70.b		; 00 70
	brk $7C.b		; 00 7C
	bpl  60.b		; 10 3C
	bpl  62.b		; 10 3E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	tsb $1C.b		; 04 1C
	ora [$37.b]		; 07 37
	ora [$77.b]		; 07 77
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bmi -128.b		; 30 80
	tya		; 98
	bcc   4.b		; 90 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $DC.b		; 00 DC
	brk $06.b		; 00 06
	tsb $0F.b		; 04 0F
	php		; 08
	ora $7E3807.l,X		; 1F 07 38 7E
	ora ($4D.b,X)		; 01 4D
	ora $95.b,S		; 03 95
	phd		; 0B
	phb		; 8B
	ora [$2A.b],Y		; 17 2A
	ora [$0F.b],Y		; 17 0F
	brk $1F.b		; 00 1F
	brk $38.b		; 00 38
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $40.b		; 00 40
	lda $787F9F.l,X		; BF 9F 7F 78
	sbc $C1FFE0.l,X		; FF E0 FF C1
	inc $F986.w,X		; FE 86 F9
	ora $3BE3.w,X		; 1D E3 3B
	cmp [$BF.b]		; C7 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F9.b		; 00 F9
	brk $E3.b		; 00 E3
	brk $C7.b		; 00 C7
	brk $00.b		; 00 00
	sbc $00FC03.l,X		; FF 03 FC 00
	sbc $8FCF31.l,X		; FF 31 CF 8F
	adc $E0FF7C.l,X		; 7F 7C FF E0
	sbc $FFFF83.l,X		; FF 83 FF FF
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3D.b		; 00 3D
	cmp $F7.b,S		; C3 F7
	ora $E0FF1E.l		; 0F 1E FF E0
	sbc $31FF00.l,X		; FF 00 FF 31
	inc $F8C7.w,X		; FE C7 F8
	ora $00C3F0.l		; 0F F0 C3 00
	ora $00FF00.l		; 0F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $F0.b		; 00 F0
	brk $9A.b		; 00 9A
	sbc [$56.b]		; E7 56
	ldy $A85B.w		; AC 5B A8
	sbc $0C.b,X		; F5 0C
	sbc $1E.b,S		; E3 1E
	cpx #$1E.b		; E0 1E
	sta $327F.w,Y		; 99 7F 32
	adc $05E5.w,Y		; 79 E5 05
	plb		; AB
	php		; 08
	lda [$00.b]		; A7 00
	phd		; 0B
	php		; 08
	ora $14.b		; 05 14
	ora $1A.b,S		; 03 1A
	bpl  60.b		; 10 3C
	and ($FD.b),Y		; 31 FD
	tsa		; 3B
	sta $03.b,S		; 83 03
	sta [$07.b]		; 87 07
	cmp [$17.b]		; C7 17
	eor [$BA.b]		; 47 BA
	eor $9D.b,S		; 43 9D
	jsr $20DE.w		; 20 DE 20
	lsr $0110.w		; 4E 10 01
	ora [$03.b]		; 07 03
	ora [$83.b]		; 07 83
	sta $D20F86.l		; 8F 86 0F D2
	eor [$C8.b],Y		; 57 C8
	phd		; 0B
	cpx $25.b		; E4 25
	cpx $05.b		; E4 05
	dec $83.b		; C6 83
	sta $81.b,S		; 83 81
	ora $81.b,S		; 03 81
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	.db $82, $C7, $01		; 82 C7 01
	cmp $01.b,S		; C3 01
	cmp $00.b,S		; C3 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$A0.b		; C0 A0
	ldy #$70.b		; A0 70
	bvs -16.b		; 70 F0
	sed		; F8
	inx		; E8
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$A0.b		; E0 A0
	beq 112.b		; F0 70
	sed		; F8
	beq  -8.b		; F0 F8
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $000003.l		; 0F 03 00 00
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
	and $3FFF00.l,X		; 3F 00 FF 3F
	cpy #$FF.b		; C0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00FF00.l,X		; 3F 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	rol $1C03.w,X		; 3E 03 1C
	sbc $03.b,S		; E3 03
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc $00.b,S		; E3 00
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	brk $D6.b		; 00 D6
	sbc $539FEF.l		; EF EF 9F 53
	lda $707F8E.l,X		; BF 8E 7F 70
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	brk $9F.b		; 00 9F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $78.b		; 00 78
	jmp $EEDC.w		; 4C DC EE
	ldy $0606.w,X		; BC 06 06
	sbc $F0EF.w,Y		; F9 EF F0
	adc $FEFFFE.l,X		; 7F FE FF FE
	sbc $08FE.w		; ED FE 08
	ror $FF8C.w,X		; 7E 8C FF
	tsb $07.b		; 04 07
	sed		; F8
	ora ($F0.b,X)		; 01 F0
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$C0.b		; E0 C0
	cpx #$E0.b		; E0 E0
	cpx #$60.b		; E0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpx #$19.b		; E0 19
	ora #$2160.w		; 09 60 21
	jsr $2120.w		; 20 20 21
	and ($10.b,X)		; 21 10
	ora ($34.b),Y		; 11 34
	bmi  27.b		; 30 1B
	ora $070E0A.l,X		; 1F 0A 0E 07
	and $217100.l,X		; 3F 00 71 21
	and ($01.b),Y		; 31 01
	and $1900.w,Y		; 39 00 19
	jsr $113C.w		; 20 3C 11
	ora $040E0A.l,X		; 1F 0A 0E 04
	bra   2.b		; 80 02
	bra  36.b		; 80 24
	jmp $5056.w		; 4C 56 50
	ldy $10.b		; A4 10
	cpy #$70.b		; C0 70
	bvs  96.b		; 70 60
	rti		; 40

	brk $00.b		; 00 00
	lsr $00.b		; 46 00
	rep #$84		; C2 84
	cpx $F690.w		; EC 90 F6
	brk $B4.b		; 00 B4
	rti		; 40

	beq  96.b		; F0 60
	bvs   0.b		; 70 00
	rti		; 40

	asl $2F.b,X		; 16 2F
	trb $2F.b		; 14 2F
	adc $6B1E.w		; 6D 1E 6B
	trb $3856.w		; 1C 56 38
	cpx $38.b		; E4 38
	cmp #$9170.w		; C9 70 91
	cpx #$2F.b		; E0 2F
	brk $2F.b		; 00 2F
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $77.b		; 00 77
	sta $FD1FEE.l		; 8F EE 1F FD
	asl $3DDB.w,X		; 1E DB 3D
	inc $3B.b,X		; F6 3B
	lda $DB76.w		; AD 76 DB
	jmp ($D9B6.w)		; 6C B6 D9
	sta $001F00.l		; 8F 00 1F 00
	asl $3D00.w,X		; 1E 00 3D
	brk $3B.b		; 00 3B
	brk $76.b		; 00 76
	brk $6C.b		; 00 6C
	brk $D9.b		; 00 D9
	brk $07.b		; 00 07
	sbc $BD6FDE.l,X		; FF DE 6F BD
	dec $9D7A.w		; CE 7A 9D
	cpx $D433.w		; EC 33 D4
	rtl		; 6B

	ora ($FE.b,X)		; 01 FE
	adc $9C.b,S		; 63 9C
	sbc $006F00.l,X		; FF 00 6F 00
	dec $9C00.w		; CE 00 9C
	brk $30.b		; 00 30
	brk $61.b		; 00 61
	ora ($C2.b,X)		; 01 C2
	cop $94.b		; 02 94
	trb $35.b		; 14 35
	iny		; C8
	lsr $B2.b		; 46 B2
	cmp $7224.w		; CD 24 72
	bit #$8071.w		; 89 71 80
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $C8.b		; 00 C8
	ora $B0.b,S		; 03 B0
	ora $801E20.l		; 0F 20 1E 80
	stz $9890.w		; 9C 90 98
	plp		; 28
	plp		; 28
	sty $94.b,X		; 94 94
	txa		; 8A
	txa		; 8A
	stz $F3.b		; 64 F3
	ora #$F206.w		; 09 06 F2
	tsb $C834.w		; 0C 34 C8
	plp		; 28
	cpy #$A0.b		; C0 A0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sed		; F8
	cop $F2.b		; 02 F2
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $2E90.w		; EE 90 2E
	bcc  94.b		; 90 5E
	sbc ($3F.b,X)		; E1 3F
	eor ($7F.b,X)		; 41 7F
	ora ($3E.b,X)		; 01 3E
	ora ($1C.b,X)		; 01 1C
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	ora ($F0.b),Y		; 11 F0
	sta ($24.b),Y		; 91 24
	and $45.b		; 25 45
	eor $08.b		; 45 08
	ora #$1110.w		; 09 10 11
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $FF7E1F.l,X		; 1F 1F 7E FF
	plx		; FA
	jsr ($F0E8.w,X)		; FC E8 F0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1CFF07.l		; 0F 07 FF 1C
	sbc $00FFF0.l,X		; FF F0 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	bne -32.b		; D0 E0
	bcc -16.b		; 90 F0
	cpy #$0C.b		; C0 0C
	bpl   0.b		; 10 00
	tsb $08.b		; 04 08
	asl $04.b		; 06 04
	ora [$04.b]		; 07 04
	ora $06.b,S		; 03 06
	brk $FC.b		; 00 FC
	bpl  -8.b		; 10 F8
	brk $DC.b		; 00 DC
	brk $9C.b		; 00 9C
	brk $0D.b		; 00 0D
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	cop $07.b		; 02 07
	bit $B31F.w		; 2C 1F B3
	jmp ($03FD.w,X)		; 7C FD 03
	bpl  15.b		; 10 0F
	sbc $C07E.w,Y		; F9 7E C0
	sbc $C1FF0F.l,X		; FF 0F FF C1
	and $7C001F.l,X		; 3F 1F 00 7C
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $DC.b		; 00 DC
	and $83FF70.l,X		; 3F 70 FF 83
	jsr ($F10E.w,X)		; FC 0E F1
	sed		; F8
	ora [$01.b]		; 07 01
	sbc $F8FFFF.l,X		; FF FF FF F8
	sbc $FF003F.l,X		; FF 3F 00 FF
	brk $FC.b		; 00 FC
	brk $F1.b		; 00 F1
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $8207F9.l,X		; FF F9 07 82
	adc $39FF04.l,X		; 7F 04 FF 39
	inc $FDE2.w,X		; FE E2 FD
	ora $C33DF1.l		; 0F F1 3D C3
	sbc $000700.l,X		; FF 00 07 00
	adc $00FF00.l,X		; 7F 00 FF 00
	inc $FD00.w,X		; FE 00 FD
	brk $F1.b		; 00 F1
	brk $C3.b		; 00 C3
	brk $01.b		; 00 01
	sbc $11F904.l,X		; FF 04 F9 11
	cpx $AD50.w		; EC 50 AD
	sta ($6F.b)		; 92 6F
	ora ($EE.b)		; 12 EE
	sec		; 38
	dec $3C.b		; C6 3C
	cmp $FF.b,S		; C3 FF
	brk $FB.b		; 00 FB
	brk $EE.b		; 00 EE
	brk $AF.b		; 00 AF
	cop $65.b		; 02 65
	tsb $E5.b		; 04 E5
	tsb $C3.b		; 04 C3
	cop $C1.b		; 02 C1
	ora ($D5.b,X)		; 01 D5
	inc $BA55.w		; EE 55 BA
	phk		; 4B
	cmp ($F1.b),Y		; D1 F1
	stp		; DB
	tda		; 7B
	ora [$73.b]		; 07 73
	ora $263F67.l		; 0F 67 3F 26
	ora $8A00EE.l,X		; 1F EE 00 8A
	ora ($F0.b,X)		; 01 F0
	adc ($01.b),Y		; 71 01
	ora $F9.b,S		; 03 F9
	ora $F2.b,S		; 03 F2
	ora [$C2.b]		; 07 C2
	ora [$E6.b]		; 07 E6
	ora $20A060.l		; 0F 60 A0 20
	cpy #$80.b		; C0 80
	rts		; 60

	cpx #$30.b		; E0 30
	rts		; 60

	bcs -16.b		; B0 F0
	clc		; 18
	bmi  24.b		; 30 18
	clc		; 18
	tsb $E020.w		; 0C 20 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	bpl  -4.b		; 10 FC
	bpl -68.b		; 10 BC
	php		; 08
	stz $C02F.w,X		; 9E 2F C0
	sta $003F00.l,X		; 9F 00 3F 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	cpy #$00.b		; C0 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	sec		; 38
	sec		; 38
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	cmp $00FF20.l,X		; DF 20 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F901.w,X		; FE 01 F9
	ora [$21.b]		; 07 21
	and ($11.b,X)		; 21 11
	ora ($11.b),Y		; 11 11
	ora ($30.b),Y		; 11 30
	bmi  32.b		; 30 20
	jsr $6060.w		; 20 60 60
	eor [$47.b]		; 47 47
	plx		; FA
	plx		; FA
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A0.b		; 00 A0
	adc $BC.b,S		; 63 BC
	sta ($7E.b,X)		; 81 7E
	brk $14.b		; 00 14
	trb $14.b		; 14 14
	trb $0A.b		; 14 0A
	asl A		; 0A
	bit #$BC89.w		; 89 89 BC
	ldy $C2DE.w,X		; BC DE C2
	adc $00FF01.l,X		; 7F 01 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bvc -52.b		; 50 CC
	clc		; 18
	dec $2C.b		; C6 2C
.ACCU 8
	sep #$EE		; E2 EE
	and ($F6.b,X)		; 21 F6
	ora ($3A.b),Y		; 11 3A
	cmp #$FC.b		; C9 FC
	adc $F0.b		; 65 F0
	asl $88B8.w		; 0E B8 88
	bit $DE04.w,X		; 3C 04 DE
.INDEX 16
	rep #$1E		; C2 1E
	brk $0F.b		; 00 0F
	sta ($07.b,X)		; 81 07
	cmp ($62.b,X)		; C1 62
	rts		; 60

	brk $20.b		; 00 20
	ora $000E00.l		; 0F 00 0E 00
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
	bmi 112.b		; 30 70
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sei		; 78
	brk $78.b		; 00 78
	cpy #$1000.w		; C0 00 10
	brk $18.b		; 00 18
	bpl  16.b		; 10 10
	clc		; 18
	tsb $000C.w		; 0C 0C 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	sed		; F8
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	bpl  60.b		; 10 3C
	php		; 08
	trb $1E00.w		; 1C 00 1E
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
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
	brk $10.b		; 00 10
	rts		; 60

	bmi  56.b		; 30 38
	bpl 112.b		; 10 70
	cli		; 58
	sei		; 78
	jmp ($0C18.w)		; 6C 18 0C
	bit $2C36.w,X		; 3C 36 2C
	rol $00.b,X		; 36 00
	sec		; 38
	jsr $0078.w		; 20 78 00
	bit $7C50.w,X		; 3C 50 7C
	pla		; 68
	ror $1E08.w,X		; 7E 08 1E
	bit $3F.b,X		; 34 3F
	bit $3F.b		; 24 3F
	rol $23.b		; 26 23
	asl $03.b		; 06 03
	inc A		; 1A
	ora $090B.w,X		; 1D 0B 09
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $070227.l		; 22 27 02 07
	clc		; 18
	ora $080B09.l,X		; 1F 09 0B 08
	php		; 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	cpy #$0070.w		; C0 70 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C0C0.w		; C0 C0 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rti		; 40

	beq  64.b		; F0 40
	sed		; F8
	cpy #$C060.w		; C0 60 C0
	bvs  96.b		; 70 60
	bmi  96.b		; 30 60
	sec		; 38
	bmi  24.b		; 30 18
	sec		; 38
	trb $0C18.w		; 1C 18 0C
	clc		; 18
	asl $F040.w		; 0E 40 F0
	rti		; 40

	sed		; F8
	jsr $2078.w		; 20 78 20
	jmp ($3C10.w,X)		; 7C 10 3C
	clc		; 18
	rol $1E08.w,X		; 3E 08 1E
	php		; 08
	ora $E060C0.l,X		; 1F C0 60 E0
	bvs  64.b		; 70 40
	brk $18.b		; 00 18
	clc		; 18
	sec		; 38
	clc		; 18
	jsr $181C.w		; 20 1C 18
	tsb $0E1C.w		; 0C 1C 0E
	rti		; 40

	beq  96.b		; F0 60
	beq   0.b		; F0 00
	bvs  16.b		; 70 10
	bit $3810.w,X		; 3C 10 38
	brk $3E.b		; 00 3E
	php		; 08
	asl $1F0C.w,X		; 1E 0C 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $1F0C07.l		; 0F 07 0C 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $000000.l,X		; 1F 00 00 00
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
	ora ($00.b,X)		; 01 00
	ora $00FF00.l		; 0F 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $000E.w		; 0E 0E 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $807070.l		; 0F 70 70 80
	bra   0.b		; 80 00
	brk $5F.b		; 00 5F
	cpy #$F017.w		; C0 17 F0
	cop $3E.b		; 02 3E
	sbc $1C.b		; E5 1C
	cmp #$34.b		; C9 34
	jsr ($FE1A.w,X)		; FC 1A FE
	tsb $01FF.w		; 0C FF 01
	lda $606F80.l,X		; BF 80 6F 60
	ora $030C.w		; 0D 0C 03
	rts		; 60

	cmp $F0.b,S		; C3 F0
	ora $0D18.w,Y		; 19 18 0D
	tsb $0800.w		; 0C 00 08
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$E818.w		; C0 18 E8
	php		; 08
	inx		; E8
	tsb $0EE8.w		; 0C E8 0E
	brk $1E.b		; 00 1E
	cpy $F3.b		; C4 F3
	cpy #$E040.w		; C0 40 E0
	jsr $10F0.w		; 20 F0 10
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	pea $2E14.w		; F4 14 2E
	jsl $3B0708.l		; 22 08 07 3B
	tsb $FC.b		; 04 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	tsb $14.b		; 04 14
	phd		; 0B
	rol $F000.w,X		; 3E 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $07.b		; 00 07
	ora [$F8.b]		; 07 F8
	sed		; F8
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $3C.b,S		; 03 3C
	bit $C0C0.w,X		; 3C C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000300.l,X		; FF 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $00FF.w,X		; FE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora [$1B.b]		; 07 1B
	asl $0E19.w		; 0E 19 0E
	cop $3D.b		; 02 3D
	cpy $9133.w		; CC 33 91
	sbc $00BF47.l		; EF 47 BF 00
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $3D.b		; 00 3D
	brk $33.b		; 00 33
	cpy #$80EF.w		; C0 EF 80
	lda $009800.l,X		; BF 00 98 00
	sei		; 78
	lda $F67FFF.l,X		; BF FF 7F F6
	sbc $E8FF6E.l,X		; FF 6E FF E8
	sbc $AAFDC2.l,X		; FF C2 FD AA
	dec $00.b,X		; D6 00
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $D7.b		; 00 D7
	ora $36.b,S		; 03 36
	xce		; FB
	cpx $DF77.w		; EC 77 DF
	inx		; E8
	lda ($4F.b),Y		; B1 4F
	lsr $BF.b		; 46 BF
	tya		; 98
	adc $61FE31.l,X		; 7F 31 FE 61
	inc $00FB.w,X		; FE FB 00
	adc [$00.b],Y		; 77 00
	inx		; E8
	brk $4F.b		; 00 4F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $37.b		; 00 37
	cmp ($8E.b),Y		; D1 8E
	cld		; D8
	lda [$CC.b],Y		; B7 CC
	cmp $BC.b,S		; C3 BC
	stp		; DB
	ldx $E9.b,Y		; B6 E9
	stx $D5.b,Y		; 96 D5
	phb		; 8B
	stz $9B.b		; 64 9B
	dec $D700.w		; CE 00 D7
	bmi -53.b		; 30 CB
	plp		; 28
	sta [$34.b]		; 87 34
	sta ($30.b),Y		; 91 30
	sta $32.b,S		; 83 32
	bra  32.b		; 80 20
	sta ($01.b,X)		; 81 01
	cpx #$F800.w		; E0 00 F8
	cpy #$F83E.w		; C0 3E F8
	asl $003E.w		; 0E 3E 00
	tsb $0101.w		; 0C 01 01
	phd		; 0B
	ora [$FE.b]		; 07 FE
	sbc $C0E000.l,X		; FF 00 E0 C0
	sed		; F8
	sec		; 38
	inc $FF0E.w,X		; FE 0E FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	beq -16.b		; F0 F0
	sed		; F8
	cpx #$A0F8.w		; E0 F8 A0
	cpy #$0F86.w		; C0 86 0F
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	rts		; 60

	sed		; F8
	beq  -4.b		; F0 FC
	cpx #$00FC.w		; E0 FC 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F87F60.l,X		; FF 60 7F F8
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -97.b		; 80 9F
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	jmp.w [$EE1F]		; DC 1F EE
	sta $7B47F7.l		; 8F F7 47 7B
	cmp [$FB.b]		; C7 FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	cpy #$47CE.w		; C0 CE 47
	eor [$A3.b]		; 47 A3
	and $20.b,S		; 23 20
	and $A3.b,S		; 23 A3
	jmp.w [$9867]		; DC 67 98
	adc $906F90.l		; 6F 90 6F 90
	adc $807F80.l,X		; 7F 80 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy $04.b		; C4 04
	bit #$09.b		; 89 09
	bcc  16.b		; 90 10
	sty $14.b,X		; 94 14
	sty $04.b		; 84 04
	sty $04.b		; 84 04
	.db $42, $42		; 42 42
	.db $42, $42		; 42 42
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF03.w,X		; FD 03 FF
	asl $FB.b		; 06 FB
	php		; 08
	sbc [$10.b],Y		; F7 10
	clc		; 18
	clc		; 18
	asl $06.b		; 06 06
	bra -128.b		; 80 80
	mvp $2A,$44		; 44 44 2A
	rol A		; 2A
	ora ($00.b,X)		; 01 00
	and [$20.b]		; 27 20
	eor $000040.l		; 4F 40 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $F00E.w		; 0E 0E F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	sei		; 78
	sbc $FC04.w,Y		; F9 04 FC
	ora $FD.b,S		; 03 FD
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $37.b		; 00 37
	bmi   7.b		; 30 07
	tsb $F1.b		; 04 F1
	sbc ($18.b),Y		; F1 18
	inc A		; 1A
	tsb $05.b		; 04 05
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $81		; 42 81
	sbc $E40CE4.l		; EF E4 0C E4
	ldy $504C.w,X		; BC 4C 50
	tsb $001C.w		; 0C 1C 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $0FFC00.l,X		; FF 00 FC 0F
	sbc $03FB03.l,X		; FF 03 FB 03
	adc $800000.l,X		; 7F 00 00 80
	rti		; 40

	jmp ($0E7C.w,X)		; 7C 7C 0E
	asl $8387.w		; 0E 87 83
	ora ($03.b,X)		; 01 03
	rol $9222.w		; 2E 22 92
	phx		; DA
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bit $02FC.w		; 2C FC 02
	inc $8F03.w,X		; FE 03 8F
	sta ($83.b,X)		; 81 83
	ldy #$B2AE.w		; A0 AE B2
	plx		; FA
	beq -64.b		; F0 C0
	rol $F0.b		; 26 F0
	tas		; 1B
	trb $0703.w		; 1C 03 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$20F0.w		; C0 F0 20
	inc $18.b,X		; F6 18
	sbc $005F03.l,X		; FF 03 5F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	cpx #$F81F.w		; E0 1F F8
	ora [$3E.b]		; 07 3E
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$18F8.w		; E0 F8 18
	sbc $01FF06.l,X		; FF 06 FF 01
	and $09FF00.l,X		; 3F 00 FF 09
	inc $2A.b,X		; F6 2A
	sbc $D2.b,X		; F5 D2
	adc $ED93.w		; 6D 93 ED
	tsa		; 3B
	cmp $9F69.w		; CD 69 9F
	cmp $3B.b,X		; D5 3B
	sbc $00F600.l,X		; FF 00 F6 00
	sbc $00.b,X		; F5 00
	adc $ED00.w		; 6D 00 ED
	brk $CD.b		; 00 CD
	brk $9F.b		; 00 9F
	brk $3B.b		; 00 3B
	brk $47.b		; 00 47
	ldx $0CEF.w		; AE EF 0C
	sbc $847E0C.l,X		; FF 0C 7E 84
	rol $34C1.w,X		; 3E C1 34
	cmp $34D124.l		; CF 24 D1 34
	cmp ($B8.b),Y		; D1 B8
	brk $13.b		; 00 13
	brk $03.b		; 00 03
	brk $83.b		; 00 83
	brk $C0.b		; 00 C0
	brk $C8.b		; 00 C8
	php		; 08
	dec $CF10.w,X		; DE 10 CF
	ora ($43.b,X)		; 01 43
	jsr ($ED96.w,X)		; FC 96 ED
	tax		; AA
	cmp $BD52.w,X		; DD 52 BD
	lda [$78.b]		; A7 78
	rtl		; 6B

	pea $EED1.w		; F4 D1 EE
	bcs -49.b		; B0 CF
	jsr ($EC00.w,X)		; FC 00 EC
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	brk $78.b		; 00 78
	brk $F5.b		; 00 F5
	ora $E2.b		; 05 E2
	cop $C3.b		; 02 C3
	ora $64.b,S		; 03 64
	sta $C038.w,Y		; 99 38 C0
	rts		; 60

	bra -128.b		; 80 80
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$19E0.w		; E0 E0 19
	ora $8686.w,Y		; 19 86 86
	adc ($61.b,X)		; 61 61
	sbc $F4FE.w,X		; FD FE F4
	sed		; F8
	bne -32.b		; D0 E0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sbc $80FEE0.l,X		; FF E0 FE 80
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FF.b,S		; 03 FF
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	inc $FF.b,X		; F6 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	inc $00.b		; E6 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F101.w,X		; FE 01 F1
	ora $000F20.l		; 0F 20 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($42.b,X)		; 01 42
	.db $42, $33		; 42 33
	and ($B8.b,S),Y		; 33 B8
	clv		; B8
	.db $42, $42		; 42 42
	and $23.b,S		; 23 23
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7F803F.l,X		; FF 3F 80 7F
	brk $FF.b		; 00 FF
	pla		; 68
	asl $87B4.w		; 0E B4 87
	cli		; 58
	cmp ($2E.b,X)		; C1 2E
	cpx #$F017.w		; E0 17 F0
	bra -128.b		; 80 80
	adc $00007F.l,X		; 7F 7F 00 00
	pea $7A04.w		; F4 04 7A
	cop $BF.b		; 02 BF
	sta ($DF.b,X)		; 81 DF
	cpy #$606F.w		; C0 6F 60
	sei		; 78
	bra  48.b		; 80 30
	cpy #$C030.w		; C0 30 C0
	clc		; 18
	cpx #$F00C.w		; E0 0C F0
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$E0E0.w		; E0 E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $000700.l,X		; 7F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0E.b)		; 12 0E
	brk $00.b		; 00 00
	tsb $0C.b		; 04 0C
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cpy #$FC00.w		; C0 00 FC
	brk $00.b		; 00 00
	rol $1600.w,X		; 3E 00 16
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cpx #$0DE0.w		; E0 E0 0D
	cpx #$163F.w		; E0 3F 16
	jsl $141004.l		; 22 04 10 14
	brk $20.b		; 00 20
	sed		; F8
	bmi  64.b		; 30 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	adc $FF06.w,X		; 7D 06 FF
	brk $36.b		; 00 36
	bpl  20.b		; 10 14
	brk $20.b		; 00 20
	bmi  -8.b		; 30 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $3F7C03.l,X		; 1F 03 7C 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $010000.l,X		; 3F 00 00 01
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	clc		; 18
	ora [$F0.b]		; 07 F0
	and $3FFCE3.l,X		; 3F E3 FC 3F
	cmp $FC.b,S		; C3 FC
	ora $000F00.l,X		; 1F 00 0F 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $FC.b		; 00 FC
	brk $C3.b		; 00 C3
	brk $1F.b		; 00 1F
	brk $3A.b		; 00 3A
	trb $182C.w		; 1C 2C 18
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	trb $08.b		; 14 08
	trb $08.b		; 14 08
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A7.b		; 00 A7
	cpy #$C0A7.w		; C0 A7 C0
	cmp [$80.b]		; C7 80
	eor [$80.b]		; 47 80
	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $C6.b		; 00 C6
	asl $C5.b		; 06 C5
	ora $85.b		; 05 85
	ora $80.b		; 05 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0C.b		; 02 0C
	brk $09.b		; 00 09
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	sed		; F8
	ora $6F9CF7.l		; 0F F7 9C 6F
	bcs  95.b		; B0 5F
	adc ($BE.b,X)		; 61 BE
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	bit #$9777.w		; 89 77 97
	adc $F700F8.l		; 6F F8 00 F7
	brk $6F.b		; 00 6F
	brk $5F.b		; 00 5F
	brk $BE.b		; 00 BE
	brk $3D.b		; 00 3D
	brk $77.b		; 00 77
	brk $6F.b		; 00 6F
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	rol $EF6C.w,X		; 3E 6C EF
	stz $FF80.w		; 9C 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $20.b		; 00 20
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	sta ($83.b,S),Y		; 93 83
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	beq  -1.b		; F0 FF
	brk $FC.b		; 00 FC
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	asl $E00E.w		; 0E 0E E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	rts		; 60

	ldy #$C030.w		; A0 30 C0
	bpl 112.b		; 10 70
	tya		; 98
	ldy #$D848.w		; A0 48 D8
	ldy $44F0.w		; AC F0 44
	cpx $A014.w		; EC 14 A0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	cpx #$7880.w		; E0 80 78
	pha		; 48
	bmi -96.b		; 30 A0
	jmp $101844.l		; 5C 44 18 10
	sed		; F8
	bit $F0.b		; 24 F0
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0824.w		; 0C 24 08
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 126.b		; 80 7E
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	bvs -128.b		; 70 80
	sei		; 78
	beq 104.b		; F0 68
	beq -88.b		; F0 A8
	bvs -88.b		; 70 A8
	bne -48.b		; D0 D0
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $8181.w,X		; 1E 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FC00.w		; E0 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$1F1F.w		; E0 1F 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F3.b		; 00 F3
	tsb $1FE0.w		; 0C E0 1F
	beq  15.b		; F0 0F
	jmp ($0703.w,X)		; 7C 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $03.b		; 04 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$8060.w		; C0 60 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	asl $01.b		; 06 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rts		; 60

	brk $6C.b		; 00 6C
	rts		; 60

	ora $00004C.l		; 0F 4C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	jsr ($FF0C.w,X)		; FC 0C FF
	tsb $0C00.w		; 0C 00 0C
	brk $04.b		; 00 04
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $0C.b		; 00 0C
	brk $09.b		; 00 09
	brk $10.b		; 00 10
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	cmp $50BF58.l,X		; DF 58 BF 50
	lda $A23EE1.l,X		; BF E1 3E A2
	adc $7BC4.w,X		; 7D C4 7B
	cmp #$1A77.w		; C9 77 1A
	sbc [$DF.b]		; E7 DF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $3E.b		; 00 3E
	brk $7D.b		; 00 7D
	brk $7B.b		; 00 7B
	brk $77.b		; 00 77
	brk $E7.b		; 00 E7
	brk $03.b		; 00 03
	sta $808700.l,X		; 9F 00 87 80
	cpy #$4000.w		; C0 00 40
	cpy #$8060.w		; C0 60 80
	jsr $20D0.w		; 20 D0 20
	plx		; FA
	lda ($03.b,X)		; A1 03
	eor $009F80.l,X		; 5F 80 9F 00
	ora [$C0.b]		; 07 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$E020.w		; E0 20 E0
	jsr $0F48.w		; 20 48 0F
	and $43FFA3.l,X		; 3F A3 FF 43
	adc $077E03.l,X		; 7F 03 7E 07
	bmi   0.b		; 30 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	wai		; CB
	phb		; 8B
	phd		; 0B
	phd		; 0B
	ora ($13.b,S),Y		; 13 13
	jsr $0027.w		; 20 27 00
	ora $008080.l		; 0F 80 80 00
	brk $90.b		; 00 90
	bcc -16.b		; 90 F0
	sbc $04FC83.l,X		; FF 83 FC 04
	xce		; FB
	.db $62, $9D, $83		; 62 9D 83
	adc $E0FF7C.l,X		; 7F 7C FF E0
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $9D.b		; 00 9D
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	inc $FE01.w,X		; FE 01 FE
	ora ($FD.b)		; 12 FD
	jsl $FF40FD.l		; 22 FD 40 FF
	sty $FF.b		; 84 FF
	ora $31EE.w,Y		; 19 EE 31
	dec $00FE.w,X		; DE FE 00
	inc $FD00.w,X		; FE 00 FD
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EE.b		; 00 EE
	brk $DE.b		; 00 DE
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	cmp [$44.b]		; C7 44
	sta $9D8F5C.l		; 8F 5C 8F 9D
	asl $1E89.w		; 0E 89 1E
	lda $BA1E.w,Y		; B9 1E BA
	trb $1CBA.w		; 1C BA 1C
	cmp [$00.b]		; C7 00
	sta $008F00.l		; 8F 00 8F 00
	asl $1E00.w		; 0E 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $72.b		; 00 72
	lda $3DE3.w,X		; BD E3 3D
	sbc $7D.b,S		; E3 7D
	cmp $7D.b,S		; C3 7D
	cmp [$79.b]		; C7 79
	cmp $E0D7F0.l		; CF F0 D7 E0
	sta [$E0.b],Y		; 97 E0
	lda $3D00.w,X		; BD 00 3D
	brk $7D.b		; 00 7D
	brk $7D.b		; 00 7D
	brk $7D.b		; 00 7D
	tsb $F4.b		; 04 F4
	tsb $E4.b		; 04 E4
	tsb $E6.b		; 04 E6
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	adc $4F.b,S		; 63 4F
	jmp $0B07.w		; 4C 07 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	and $FF.b,S		; 23 FF
	tsb $03FF.w		; 0C FF 03
	adc $001F00.l,X		; 7F 00 1F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bne 112.b		; D0 70
	sbc [$07.b]		; E7 07
	jsr ($3EE6.w,X)		; FC E6 3E
	sed		; F8
	tsb $3E.b		; 04 3E
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bvc -16.b		; 50 F0
	ora [$E7.b]		; 07 E7
	cpx $FE.b		; E4 FE
	sec		; 38
	inc $FE04.w,X		; FE 04 FE
	ora $3F.b,S		; 03 3F
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	jsr $6020.w		; 20 20 60
	tsb $0504.w		; 0C 04 05
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7000.w		; 20 00 70
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	ora ($3F.b,X)		; 01 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	eor [$5F.b]		; 47 5F
	and $0000F8.l		; 2F F8 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $5F.b		; 00 5F
	eor [$7F.b]		; 47 7F
	plp		; 28
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $15.b		; 05 15
	adc $F87C.w		; 6D 7C F8
	sed		; F8
	bra -40.b		; 80 D8
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $7F.b		; 00 7F
	ora $FF.b		; 05 FF
	pla		; 68
	sbc $F880.w,X		; FD 80 F8
	clc		; 18
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $18.b		; 00 18
	tsb $0010.w		; 0C 10 00
	asl A		; 0A
	php		; 08
	tsb $17.b		; 04 17
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	php		; 08
	trb $1000.w		; 1C 00 10
	php		; 08
	ora $001700.l		; 0F 00 17 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $2024.w		; 20 24 20
	asl $1C.b		; 06 1C
	rol A		; 2A
	bit $46.b,X		; 34 46
	lsr $C203.w		; 4E 03 C2
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	brk $35.b		; 00 35
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	stz $F7.b,X		; 74 F7
	sec		; 38
	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cop $FA.b		; 02 FA
	cop $F2.b		; 02 F2
	sei		; 78
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $77.b		; 00 77
	cop $FF.b		; 02 FF
	rti		; 40

	plx		; FA
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	ora $50.b,S		; 03 50
	eor ($D3.b),Y		; 51 D3
	cmp $87.b,S		; C3 87
	asl $0F.b		; 06 0F
	tsb $1A1E.w		; 0C 1E 1A
	bit $0700.w,X		; 3C 00 07
	brk $57.b		; 00 57
	brk $FF.b		; 00 FF
	eor ($FF.b),Y		; 51 FF
	.db $82, $DF, $04		; 82 DF 04
	ora $183F08.l,X		; 1F 08 3F 18
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E1E.w,X		; 1E 1E 3E
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $3C7F.w,X		; 1E 7F 3C
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	adc $00B037.l		; 6F 37 B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc $307F07.l		; 6F 07 7F 30
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $05.b		; 05 05
	adc $FCF87D.l,X		; 7F 7D F8 FC
	bra -28.b		; 80 E4
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $7F.b		; 00 7F
	ora $FF.b		; 05 FF
	sei		; 78
	sbc $FC80.w,X		; FD 80 FC
	brk $EC.b		; 00 EC
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $3B.b,S		; 03 3B
	lda ($B2.b)		; B2 B2
	lda [$87.b],Y		; B7 87
	cmp [$0F.b]		; C7 0F
	asl $0F.b		; 06 0F
	asl $010E.w		; 0E 0E 01
	ora [$02.b]		; 07 02
	and $32FF03.l,X		; 3F 03 FF 32
	sbc $06BF87.l,X		; FF 87 BF 06
	cmp $060F06.l		; CF 06 0F 06
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	ldy #$E000.w		; A0 00 E0
	eor ($A0.b,X)		; 41 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$E000.w		; A0 00 E0
	brk $A1.b		; 00 A1
	ora ($38.b,X)		; 01 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	clv		; B8
	sec		; 38
	cld		; D8
	sec		; 38
	jsr ($1800.w,X)		; FC 00 18
	jmp ($7C30.w,X)		; 7C 30 7C
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bpl 124.b		; 10 7C
	bra -68.b		; 80 BC
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora #$0306.w		; 09 06 03
	tsb $0B16.w		; 0C 16 0B
	ora $2F1A27.l,X		; 1F 27 1A 2F
	sec		; 38
	ora $002F50.l		; 0F 50 2F 00
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $0B.b		; 00 0B
	brk $27.b		; 00 27
	brk $2F.b		; 00 2F
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $E1.b		; 00 E1
	tsb $18.b		; 04 18
	cmp $0C.b,S		; C3 0C
	adc ($06.b,X)		; 61 06
	bmi   3.b		; 30 03
	clc		; 18
	and ($1C.b,X)		; 21 1C
	rts		; 60

	asl $0000.w,X		; 1E 00 00
	clc		; 18
	brk $7D.b		; 00 7D
	rti		; 40

	rol $1F20.w,X		; 3E 20 1F
	bpl  15.b		; 10 0F
	php		; 08
	ora [$04.b],Y		; 17 04
	tas		; 1B
	cop $DC.b		; 02 DC
	sty $C5.b		; 84 C5
	ora $1C1C.w		; 0D 1C 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $DC.b		; 84 DC
	ora $CD.b		; 05 CD
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	php		; 08
	ora $161B.w,X		; 1D 1B 16
	brk $08.b		; 00 08
	php		; 08
	ora ($02.b,X)		; 01 02
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($1B.b,X)		; 01 1B
	ora $001F.w,Y		; 19 1F 00
	asl $08.b,X		; 16 08
	php		; 08
	brk $03.b		; 00 03
	asl $07.b		; 06 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	jsl $909622.l		; 22 22 96 90
	php		; 08
	tsb $08.b		; 04 08
	php		; 08
	bit $38.b,X		; 34 38
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	tya		; 98
	tsx		; BA
	bra -106.b		; 80 96
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	bpl  -4.b		; 10 FC
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	bit $3878.w,X		; 3C 78 38
	beq 104.b		; F0 68
	beq -48.b		; F0 D0
	cpx #$A0.b		; E0 A0
	cpy #$50.b		; C0 50
	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	inc $FC20.w,X		; FE 20 FC
	rti		; 40

	sed		; F8
	bra  -8.b		; 80 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	ora $C379.w,Y		; 19 79 C3
	sec		; 38
	cpy #$E0.b		; C0 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00FF.w,Y		; 19 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $B2.b		; 00 B2
	sta $82.b		; 85 82
	asl $06.b		; 06 06
	asl $03.b		; 06 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	lda [$00.b],Y		; B7 00
	stx $02.b		; 86 02
	asl $03.b		; 06 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	cpx $6C6C.w		; EC 6C 6C
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	bit $706C.w		; 2C 6C 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $0E0C.w		; 0E 0C 0E
	tsb $1C1C.w		; 0C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $383C.w		; 1C 3C 38
	bit $3C38.w,X		; 3C 38 3C
	tsb $1E.b		; 04 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $3E08.w,X		; 1E 08 3E
	php		; 08
	rol $3C18.w,X		; 3E 18 3C
	clc		; 18
	bit $7C18.w,X		; 3C 18 7C
	eor ($A0.b,X)		; 41 A0
	cmp ($22.b,X)		; C1 22
	sta $44.b,S		; 83 44
	ora [$08.b]		; 07 08
	asl $1C10.w		; 0E 10 1C
	and ($B8.b,X)		; 21 B8
	eor $70.b,S		; 43 70
	asl $A0.b		; 06 A0
	brk $21.b		; 00 21
	brk $43.b		; 00 43
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora ($3E.b,X)		; 01 3E
	cop $FC.b		; 02 FC
	tsb $FC.b		; 04 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	clv		; B8
	rti		; 40

	rti		; 40

	bcs  48.b		; B0 30
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $6A.b,X		; B5 6A
	adc ($E8.b)		; 72 E8
	inc $CA.b,X		; F6 CA
	sbc #$97.b		; E9 97
	eor $66B3.w,Y		; 59 B3 66
	ora $02BD.w,Y		; 19 BD 02
	stz $6A23.w		; 9C 23 6A
	brk $ED.b		; 00 ED
	brk $CD.b		; 00 CD
	brk $92.b		; 00 92
	cop $34.b		; 02 34
	tsb $99.b		; 04 99
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $AE.b		; 00 AE
	eor ($A4.b,S),Y		; 53 A4
	txy		; 9B
	eor [$18.b]		; 47 18
	sbc $CC.b,S		; E3 CC
	plx		; FA
	tsb $2C6A.w		; 0C 6A 2C
	and [$88.b],Y		; 37 88
	sta [$58.b]		; 87 58
	ora $00.b,S		; 03 00
	cmp ($D0.b,S),Y		; D3 D0
	bcs  48.b		; B0 30
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	bne  16.b		; D0 10
	beq -128.b		; F0 80
	bvs  80.b		; 70 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	phd		; 0B
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $D4.b		; 00 D4
	tsa		; 3B
	ldy $7B.b		; A4 7B
	eor $FA.b		; 45 FA
	cmp [$E8.b],Y		; D7 E8
	lda $D8B7D8.l		; AF D8 B7 D8
	eor $B16EB0.l,X		; 5F B0 6E B1
	and $7901.w,Y		; 39 01 79
	ora ($F8.b,X)		; 01 F8
	brk $E8.b		; 00 E8
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $B0.b		; 00 B0
	brk $B1.b		; 00 B1
	ora ($5E.b,X)		; 01 5E
	ldy #$7E.b		; A0 7E
	bra -15.b		; 80 F1
	asl $1CA2.w		; 0E A2 1C
	ldx #$1C.b		; A2 1C
	sbc ($0D.b)		; F2 0D
	ror A		; 6A
	sta $E4.b,X		; 95 E4
	tad		; 5B
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	asl $510E.w		; 0E 0E 51
	bvc  65.b		; 50 41
	rti		; 40

	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	eor $40.b,S		; 43 40
	cpx #$0C.b		; E0 0C
	cpy #$18.b		; C0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	rti		; 40

	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	cpy #$A0.b		; C0 A0
	cpy #$F8.b		; C0 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	asl A		; 0A
	ora [$0A.b]		; 07 0A
	ora [$0A.b]		; 07 0A
	ora [$19.b]		; 07 19
	asl $19.b		; 06 19
	asl $1D.b		; 06 1D
	asl $1D.b		; 06 1D
	asl $1D.b		; 06 1D
	asl $07.b		; 06 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $B4.b		; 00 B4
	rtl		; 6B

	ldy $6B.b,X		; B4 6B
	lsr $F9.b		; 46 F9
	eor $FA.b		; 45 FA
	pha		; 48
	sbc [$51.b],Y		; F7 51
	inc $E857.w		; EE 57 E8
	and $026AC0.l,X		; 3F C0 6A 02
	pla		; 68
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F4.b		; 00 F4
	tsb $E8.b		; 04 E8
	php		; 08
	sbc $03.b,S		; E3 03
	cpy $010C.w		; CC 0C 01
	asl $05.b		; 06 05
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	.db $62, $B4, $6B		; 62 B4 6B
	ldy $6B.b,X		; B4 6B
	ldx $FE69.w,Y		; BE 69 FE
	and #$5A.b		; 29 5A
	and $2D5E.w		; 2D 5E 2D
	eor [$2C.b]		; 47 2C
	adc ($01.b,X)		; 61 01
	adc #$01.b		; 69 01
	adc #$01.b		; 69 01
	adc #$01.b		; 69 01
	plp		; 28
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $7F.b		; 00 7F
	rti		; 40

	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $6902.w,X		; FD 02 69
	sbc #$95.b		; E9 95
	sta $93.b,X		; 95 93
	sta ($29.b,S),Y		; 93 29
	and #$29.b		; 29 29
	and #$25.b		; 29 25
	and $26.b		; 25 26
	rol $14.b		; 26 14
	trb $F4.b		; 14 F4
	cli		; 58
	pea $E458.w		; F4 58 E4
	cli		; 58
	cpx $58.b		; E4 58
	ldy $58.b		; A4 58
	sty $48.b,X		; 94 48
	sty $48.b,X		; 94 48
	sty $48.b,X		; 94 48
	cli		; 58
	brk $58.b		; 00 58
	brk $58.b		; 00 58
	brk $58.b		; 00 58
	brk $58.b		; 00 58
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	brk $5B.b		; 00 5B
	sty $CB.b		; 84 CB
	tsb $EA.b		; 04 EA
	tsb $6A.b		; 04 6A
	tsb $6A.b		; 04 6A
	tsb $26.b		; 04 26
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	cpy $18.b		; C4 18
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	.db $62, $98, $62		; 62 98 62
	bra 102.b		; 80 66
	sty $7A.b,X		; 94 7A
	asl A		; 0A
	pea $EE14.w		; F4 14 EE
	sec		; 38
	brk $7C.b		; 00 7C
	rti		; 40

	trb $3C00.w		; 1C 00 3C
	jsr $243C.w		; 20 3C 24
	rts		; 60

	rts		; 60

	rts		; 60

	stz $44.b		; 64 44
	lsr $0000.w		; 4E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jmp $211C21.l		; 5C 21 1C 21
	rol $5863.w,X		; 3E 63 58
	cmp $3C.b,S		; C3 3C
	stx $F0.b		; 86 F0
	stx $74F8.w		; 8E F8 74
	cpx $98.b		; E4 98
	and $213F21.l,X		; 3F 21 3F 21
	trb $3E00.w		; 1C 00 3E
	cop $F8.b		; 02 F8
	bra   4.b		; 80 04
	tsb $60.b		; 04 60
	bvs -128.b		; 70 80
	tya		; 98
	ror $7E00.w,X		; 7E 00 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $1F.b		; 02 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
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
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F4EB.w		; F4 EB F4
	xba		; EB
	inx		; E8
	sbc [$FB.b],Y		; F7 FB
	sbc $CA.b		; E5 CA
	sbc $CF.b		; E5 CF
	cpx #$D0CF.w		; E0 CF D0
	lda $E0C3A0.l,X		; BF A0 C3 E0
	cmp $E0.b,S		; C3 E0
	cmp [$F0.b]		; C7 F0
	cmp $F0.b		; C5 F0
	sta $F0.b		; 85 F0
	bra -16.b		; 80 F0
	sty $F4.b		; 84 F4
	.db $82, $E2, $D0		; 82 E2 D0
	cpx #$E050.w		; E0 50 E0
	rts		; 60

	beq  40.b		; F0 28
	beq -88.b		; F0 A8
	beq -104.b		; F0 98
	beq -36.b		; F0 DC
	beq 116.b		; F0 74
	cld		; D8
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $D8.b		; 00 D8
	brk $1D.b		; 00 1D
	asl $1D.b		; 06 1D
	asl $1D.b		; 06 1D
	asl $15.b		; 06 15
	asl $15.b		; 06 15
	asl $15.b		; 06 15
	asl $15.b		; 06 15
	asl $15.b		; 06 15
	asl $06.b		; 06 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $3F.b		; 00 3F
	cpy #$C03F.w		; C0 3F C0
	and $C03FC0.l,X		; 3F C0 3F C0
	and $E01FC0.l,X		; 3F C0 1F E0
	sta $609F60.l,X		; 9F 60 9F 60
	cmp ($11.b),Y		; D1 11
.ACCU 8
	sep #$22		; E2 22
	pei ($14.b)		; D4 14
	iny		; C8
	php		; 08
	cmp #$09.b		; C9 09
	cpx $04.b		; E4 04
	.db $62, $02, $62		; 62 02 62
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
	brk $4F.b		; 00 4F
	bit $0D.b		; 24 0D
	rol $09.b		; 26 09
	rol $01.b		; 26 01
	rol $24.b		; 26 24
	ora $20.b,S		; 03 20
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($24.b,X)		; 01 24
	brk $26.b		; 00 26
	brk $26.b		; 00 26
	brk $26.b		; 00 26
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FD.b		; 00 FD
	cop $FD.b		; 02 FD
	asl $F8.b		; 06 F8
	ora $5E.b,S		; 03 5E
	cmp $5C.b,S		; C3 5C
	cmp ($1F.b,X)		; C1 1F
	cmp ($3E.b,X)		; C1 3E
	cpx #$E00F.w		; E0 0F E0
	trb $14.b		; 14 14
	clc		; 18
	clc		; 18
	inc $BCE2.w,X		; FE E2 BC
	bra  63.b		; 80 3F
	ora ($7E.b,X)		; 01 7E
	rti		; 40

	cmp $20BF40.l,X		; DF 40 BF 20
	sty $48.b		; 84 48
	cpy #$C808.w		; C0 08 C8
	brk $C8.b		; 00 C8
	brk $48.b		; 00 48
	bra  72.b		; 80 48
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	pha		; 48
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $24.b		; 00 24
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
	brk $2E.b		; 00 2E
	phx		; DA
	lsr $DEB2.w,X		; 5E B2 DE
	jsr $007E.w		; 20 7E 00
	ror $7E00.w,X		; 7E 00 7E
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $08.b		; 00 08
	inc A		; 1A
	ora ($32.b)		; 12 32
	brk $60.b		; 00 60
	cop $C2.b		; 02 C2
	cop $82.b		; 02 82
	cop $82.b		; 02 82
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $03.b		; 05 03
	ora $0F02.w		; 0D 02 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
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
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	ora [$7F.b]		; 07 7F
	sta $C0C898.l,X		; 9F 98 C8 C0
	ldy #$80E0.w		; A0 E0 80
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$FF.b]		; 07 FF
	tya		; 98
	sbc $A0F8C0.l,X		; FF C0 F8 A0
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rol $63C1.w,X		; 3E C1 63
	stz $5EA1.w		; 9C A1 5E
	bmi 111.b		; 30 6F
	bmi 111.b		; 30 6F
	and ($6E.b),Y		; 31 6E
	rol $79.b		; 26 79
	clv		; B8
	eor [$80.b]		; 47 80
	bra  28.b		; 80 1C
	trb WRMPYA.w		; 1C 02 42
	and ($E1.b,X)		; 21 E1
	jsr $20E0.w		; 20 E0 20
	cpx #$E000.w		; E0 00 E0
	brk $40.b		; 00 40
	sta ($2E.b),Y		; 91 2E
	tad		; 5B
	lda $4F.b,X		; B5 4F
	txy		; 9B
	cmp $AF4F1F.l		; CF 1F 4F AF
	sbc [$17.b]		; E7 17
	xce		; FB
	phd		; 0B
	sbc $0805.w,X		; FD 05 08
	pla		; 68
	ora $35.b		; 05 35
	ora $3B.b,S		; 03 3B
	ora [$3F.b]		; 07 3F
	ora [$3F.b]		; 07 3F
	sbc $FF.b,S		; E3 FF
	and ($3F.b,S),Y		; 33 3F
	bit #$8F.b		; 89 8F
	inc $FF02.w,X		; FE 02 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $16.b		; 00 16
	ora [$23.b],Y		; 17 23
	and $44.b,S		; 23 44
	mvp $89,$89		; 44 89 89
	ora #$09.b		; 09 09
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	and ($21.b,X)		; 21 21
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $9F98E0.l,X		; FF E0 98 9F
	sty $87.b		; 84 87
	clv		; B8
	sta $B8.b,S		; 83 B8
	sta $B8.b,S		; 83 B8
	sta $21.b,S		; 83 21
	and ($E1.b,X)		; 21 E1
	sbc ($1F.b,X)		; E1 1F
	ora $7A0464.l,X		; 1F 64 04 7A
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $B8.b		; 02 B8
	sta $78.b,S		; 83 78
	sta $79.b,S		; 83 79
	.db $82, $79, $82		; 82 79 82
	adc $7982.w,Y		; 79 82 79
	.db $82, $75, $86		; 82 75 86
	adc $86.b,X		; 75 86
	ror $FE02.w,X		; 7E 02 FE
	.db $82, $FE, $82		; 82 FE 82
	ror $7E02.w,X		; 7E 02 7E
	cop $7C.b		; 02 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $1F.b		; 00 1F
	beq   7.b		; F0 07
	beq  15.b		; F0 0F
	sed		; F8
	ora $F8.b,S		; 03 F8
	sta [$7C.b]		; 87 7C
	sta ($7C.b,X)		; 81 7C
	eor $3E.b,S		; 43 3E
	pha		; 48
	rol $AF.b,X		; 36 AF
	jsr $10DF.w		; 20 DF 10
	cmp [$10.b],Y		; D7 10
	sbc $086B08.l		; EF 08 6B 08
	adc [$04.b],Y		; 77 04
	and $04.b,X		; 35 04
	and ($02.b,S),Y		; 33 02
	brk $40.b		; 00 40
	cpy #$8060.w		; C0 60 80
	jsr $20C0.w		; 20 C0 20
	cpx #$C030.w		; E0 30 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bpl -64.b		; 10 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	bpl  62.b		; 10 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	adc $007F00.l,X		; 7F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $001F00.l,X		; 3F 00 1F 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $01.b		; 05 01
	and #$35.b		; 29 35
	and $80B8.w,Y		; 39 B8 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $30FF01.l,X		; 3F 01 FF 30
	sbc $B800.w,Y		; F9 00 B8
	brk $80.b		; 00 80
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
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	ror $7E00.w,X		; 7E 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
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
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $3703.w		; 0D 03 37
	ora $A03FDC.l		; 0F DC 3F A0
	adc #$41.b		; 69 41
	dec $0B59.w		; CE 59 0B
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	adc #$16.b		; 69 16
	dec $39.b		; C6 39
	brk $FF.b		; 00 FF
	tya		; 98
	adc $C8FE74.l,X		; 7F 74 FE C8
	sbc $FA30.w,X		; FD 30 FA
	sbc $3DE6.w		; ED E6 3D
	tsb $189B.w		; 0C 9B 18
	cmp $007F98.l,X		; DF 98 7F 00
	inc $FC01.w,X		; FE 01 FC
	ora $F8.b,S		; 03 F8
	ora [$E0.b]		; 07 E0
	asl $FE00.w,X		; 1E 00 FE
	clc		; 18
	jsr ($F810.w,X)		; FC 10 F8
	and ($66.b),Y		; 31 66
	tda		; 7B
	mvp $09,$2A		; 44 2A 09
	sbc $21.b		; E5 21
	ora ($FD.b,S),Y		; 13 FD
	sta [$39.b],Y		; 97 39
	cmp $01FE31.l		; CF 31 FE 01
	rol $F9.b		; 26 F9
	rti		; 40

	sbc ($5C.b),Y		; F1 5C
	lda $835A.w		; AD 5A 83
	lda $4B2D.w		; AD 2D 4B
	phk		; 4B
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	eor $1D32.w,X		; 5D 32 1D
	and ($2D.b)		; 32 2D
	ora ($29.b)		; 12 29
	ora ($19.b)		; 12 19
	cop $1B.b		; 02 1B
	brk $1B.b		; 00 1B
	brk $09.b		; 00 09
	brk $32.b		; 00 32
	brk $32.b		; 00 32
	brk $12.b		; 00 12
	brk $12.b		; 00 12
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	sed		; F8
	and [$F8.b]		; 27 F8
	and $FA.b,X		; 35 FA
	lda $7B.b,X		; B5 7B
	sta $DC7B.w,X		; 9D 7B DC
	dec A		; 3A
	jmp $1A7C3A.l		; 5C 3A 7C 1A
	jsr ($FB04.w,X)		; FC 04 FB
	ora $FB.b,S		; 03 FB
	ora $7A.b,S		; 03 7A
	cop $7A.b		; 02 7A
	cop $3B.b		; 02 3B
	cop $3B.b		; 02 3B
	cop $1B.b		; 02 1B
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  47.b		; 80 2F
	bmi -48.b		; 30 D0
	ora $F90DE2.l,X		; 1F E2 0D F9
	asl $8888.w		; 0E 88 88
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	inx		; E8
	inx		; E8
	cmp $09E91F.l,X		; DF 1F E9 09
	sed		; F8
	php		; 08
	sbc ($00.b)		; F2 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($0C.b,S),Y		; F3 0C
	sbc ($06.b,X)		; E1 06
	tya		; 98
	ora $1C.b,S		; 03 1C
	ora ($1E.b,X)		; 01 1E
	bra  15.b		; 80 0F
	cpy #$8C8C.w		; C0 8C 8C
	dey		; 88
	dey		; 88
	tya		; 98
	tya		; 98
	jsr ($FEE4.w,X)		; FC E4 FE
	.db $82, $FF, $01		; 82 FF 01
	sbc $407F80.l,X		; FF 80 7F 40
	bpl   1.b		; 10 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	adc ($0C.b,X)		; 61 0C
	adc ($0C.b,X)		; 61 0C
	rts		; 60

	tsb $0860.w		; 0C 60 08
	bvc  24.b		; 50 18
	bvc  24.b		; 50 18
	bpl  24.b		; 10 18
	bne  16.b		; D0 10
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $46.b		; 00 46
	sbc $EB55.w,Y		; F9 55 EB
	sbc $4B.b		; E5 4B
	lda $418640.l		; AF 40 86 41
	sta [$40.b]		; 87 40
	eor #$00.b		; 49 00
	phk		; 4B
	brk $F9.b		; 00 F9
	ora ($E8.b,X)		; 01 E8
	brk $48.b		; 00 48
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	ora ($40.b,X)		; 01 40
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	tsb $7C.b		; 04 7C
	php		; 08
	jmp ($7C00.w,X)		; 7C 00 7C
	clc		; 18
	sed		; F8
	rts		; 60

	sed		; F8
	cpy #$00F8.w		; C0 F8 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $90.b		; 00 90
	clc		; 18
	rts		; 60

	rts		; 60

	brk $C0.b		; 00 C0
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora $000000.l		; 0F 00 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora ($05.b,X)		; 01 05
	tsb $080C.w		; 0C 0C 08
	tya		; 98
	bcs -80.b		; B0 B0
	ldy #$0100.w		; A0 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	tsb $1F.b		; 04 1F
	php		; 08
	inc $FC10.w,X		; FE 10 FC
	ldy #$05F8.w		; A0 F8 05
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$0A.b]		; 07 0A
	ora [$0A.b]		; 07 0A
	ora [$0A.b]		; 07 0A
	ora [$03.b]		; 07 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $2D.b		; 00 2D
	dec $DE2D.w,X		; DE 2D DE
	eor $5ABE.w,Y		; 59 BE 5A
	lda $BD52.w,X		; BD 52 BD
	adc ($BD.b)		; 72 BD
	ror $B9.b		; 66 B9
	inc $39.b		; E6 39
	dec $DE00.w,X		; DE 00 DE
	brk $BE.b		; 00 BE
	brk $BD.b		; 00 BD
	brk $BD.b		; 00 BD
	brk $BD.b		; 00 BD
	brk $B9.b		; 00 B9
	brk $39.b		; 00 39
	brk $0C.b		; 00 0C
	cop $1B.b		; 02 1B
	asl $14.b		; 06 14
	ora $2B1D2B.l		; 0F 2B 1D 2B
	trb $3C53.w		; 1C 53 3C
	eor ($3D.b)		; 52 3D
	adc [$39.b]		; 67 39
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	ora $031D00.l		; 0F 00 1D 03
	trb $3C03.w		; 1C 03 3C
	brk $3D.b		; 00 3D
	brk $39.b		; 00 39
	brk $E9.b		; 00 E9
	inc A		; 1A
	cpy $3C.b		; C4 3C
	cpy $34.b		; C4 34
	brk $EC.b		; 00 EC
	sta ($FF.b,X)		; 81 FF
	ldy $E7.b		; A4 E7
	clc		; 18
	sbc $1046F8.l		; EF F8 46 10
	cmp $873B.w		; CD 3B 87
	and [$0F.b],Y		; 37 0F
	adc $93.b,S		; 63 93
.INDEX 8
	sep #$9D		; E2 9D
	cmp $D82F3C.l,X		; DF 3C 2F D8
	lsr $D9.b		; 46 D9
	adc $E1FEE0.l		; 6F E0 FE E1
	and ($2C.b),Y		; 31 2C
	eor [$20.b],Y		; 57 20
	inc $4A90.w		; EE 90 4A
	eor $00.b,S		; 43 00
	and $40704F.l,X		; 3F 4F 70 40
	beq -128.b		; F0 80
	cpx #$87.b		; E0 87
	cpx $8F.b		; E4 8F
	bcs  15.b		; B0 0F
	beq  29.b		; F0 1D
	sbc ($18.b,X)		; E1 18
	sed		; F8
	rti		; 40

	cpy #$9F.b		; C0 9F
	bvs  55.b		; 70 37
	bra -17.b		; 80 EF
	php		; 08
	lda [$38.b]		; A7 38
	sta $C03FE0.l,X		; 9F E0 3F C0
	dec $1221.w,X		; DE 21 12
	sbc ($25.b,X)		; E1 25
	and $FC.b		; 25 FC
	sty $F2.b		; 84 F2
	cop $D0.b		; 02 D0
	bpl  76.b		; 10 4C
	rti		; 40

	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $090C.w		; 0C 0C 09
	brk $09.b		; 00 09
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
	brk $34.b		; 00 34
	inc A		; 1A
	bit $1A.b,X		; 34 1A
	and $2D13.w,X		; 3D 13 2D
	ora ($05.b,S),Y		; 13 05
	ora ($05.b),Y		; 11 05
	ora ($14.b),Y		; 11 14
	ora ($10.b,X)		; 01 10
	ora ($19.b,X)		; 01 19
	brk $19.b		; 00 19
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($F8.b,X)		; 01 F8
	ora $F107F0.l		; 0F F0 07 F1
	ora [$F1.b]		; 07 F1
	ora [$F0.b]		; 07 F0
	ora [$FA.b]		; 07 FA
	ora $0DFA.w		; 0D FA 0D
	xce		; FB
	tsb $00F3.w		; 0C F3 00
	xce		; FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $F1.b		; 00 F1
	brk $F1.b		; 00 F1
	brk $F0.b		; 00 F0
	brk $87.b		; 00 87
	rts		; 60

	adc $98.b,S		; 63 98
	ora ($EE.b,S),Y		; 13 EE
	sta $D6F3.w		; 8D F3 D6
	sbc #$CB.b		; E9 CB
	pea $F06F.w		; F4 6F F0
	ror $F9.b		; 66 F9
	and $088F20.l,X		; 3F 20 8F 08
	sbc $04.b		; E5 04
	beq   0.b		; F0 00
	inx		; E8
	brk $F4.b		; 00 F4
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	asl $03.b		; 06 03
	asl $0D03.w		; 0E 03 0D
	ora [$1B.b]		; 07 1B
	ora $0C1316.l		; 0F 16 13 0C
	and $002F00.l		; 2F 00 2F 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	cpx #$90.b		; E0 90
	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	jsr $8000.w		; 20 00 80
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	rts		; 60

	brk $20.b		; 00 20
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	eor $005F00.l		; 4F 00 5F 00
	eor $001F00.l,X		; 5F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	and ($03.b,S),Y		; 33 03
	sbc [$0B.b]		; E7 0B
	sta $1FDB.w		; 8D DB 1F
	lda $511F.w,Y		; B9 1F 51
	eor $CB.b,X		; 55 CB
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora ($1F.b,X)		; 01 1F
	cmp #$3B.b		; C9 3B
	sta $117B.w,Y		; 99 7B 11
	xce		; FB
	eor #$F3.b		; 49 F3
	ldy #$80.b		; A0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sta ($80.b,X)		; 81 80
	sta ($80.b,X)		; 81 80
	lda $80.b,S		; A3 80
	lda $80.b,S		; A3 80
	ldy $83.b		; A4 83
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	sta ($C1.b,X)		; 81 C1
	bra -64.b		; 80 C0
	sta $C3.b,S		; 83 C3
	bra -64.b		; 80 C0
	sta $C3.b,S		; 83 C3
	asl A		; 0A
	ora [$0A.b]		; 07 0A
	ora [$02.b]		; 07 02
	ora [$06.b]		; 07 06
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $E4.b		; 00 E4
	tsa		; 3B
	cpx $3B.b		; E4 3B
	sbc $3A.b		; E5 3A
	sbc $D832.w		; ED 32 D8
	and [$58.b],Y		; 37 58
	lda [$5A.b],Y		; B7 5A
	lda [$CA.b],Y		; B7 CA
	lda [$3B.b],Y		; B7 3B
	brk $3B.b		; 00 3B
	brk $3A.b		; 00 3A
	brk $33.b		; 00 33
	ora ($37.b,X)		; 01 37
	brk $B7.b		; 00 B7
	brk $B7.b		; 00 B7
	brk $B7.b		; 00 B7
	brk $46.b		; 00 46
	sbc $74.b		; E5 74
	cmp #$63.b		; C9 63
	jmp.w [$DCE3]		; DC E3 DC
	inc $C8.b,X		; F6 C8
	cpy $9DB0.w		; CC B0 9D
	rts		; 60

	ldx $E040.w,Y		; BE 40 E0
	ora $D00BC8.l,X		; 1F C8 0B D0
	ora ($C0.b),Y		; 11 C0
	ora ($C0.b,X)		; 01 C0
	ora ($A4.b,X)		; 01 A4
	and [$48.b]		; 27 48
	phk		; 4B
	ora ($13.b)		; 12 13
	bne -17.b		; D0 EF
	sbc #$F6.b		; E9 F6
	ror $50F1.w		; 6E F1 50
	sbc $BCF778.l		; EF 78 F7 BC
	tda		; 7B
	bit $5DBC.w,X		; 3C BC 5D
	jmp.w [$E848]		; DC 48 E8
	stz $F4.b		; 64 F4
	adc ($F1.b,X)		; 61 F1
	asl $30EE.w		; 0E EE 30
	beq  56.b		; F0 38
	sed		; F8
	clc		; 18
	sbc $03FE08.l,X		; FF 08 FE 03
	ora $3A.b,S		; 03 3A
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	bvs 120.b		; 70 78
	bmi  48.b		; 30 30
	rts		; 60

	bvs  96.b		; 70 60
	bvs   2.b		; 70 02
	and $307E10.l,X		; 3F 10 7E 30
	jsr ($FC78.w,X)		; FC 78 FC
	bvs  -8.b		; 70 F8
	jsr $40F8.w		; 20 F8 40
	sed		; F8
	brk $F0.b		; 00 F0
	inx		; E8
	sbc $E1.b,S		; E3 E1
	inc $E3.b		; E6 E3
	cpx $E8E6.w		; EC E6 E8
	cpx $E8E1.w		; EC E1 E8
	sbc $E0.b,S		; E3 E0
	inc $C0.b		; E6 C0
	cpy $F161.w		; CC 61 F1
	sbc $F2.b,S		; E3 F2
	sbc [$F4.b]		; E7 F4
	sbc $F1EFF8.l		; EF F8 EF F1
	inc $ECF2.w		; EE F2 EC
	pea $F8C8.w		; F4 C8 F8
	brk $98.b		; 00 98
	cpy #$38.b		; C0 38
	cpy #$30.b		; C0 30
	cpy #$20.b		; C0 20
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  16.b		; 80 10
	beq -96.b		; F0 A0
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	cpy #$50.b		; C0 50
	cpx #$50.b		; E0 50
	cpx #$90.b		; E0 90
	rts		; 60

	bvc -96.b		; 50 A0
	sec		; 38
	cpy #$18.b		; C0 18
	rts		; 60

	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $20.b		; 00 20
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	dey		; 88
	bmi -56.b		; 30 C8
	bpl -28.b		; 10 E4
	php		; 08
	pea $FC08.w		; F4 08 FC
	dey		; 88
	sec		; 38
	cpy $78.b		; C4 78
	cpy $FC.b		; C4 FC
	sty $E0.b		; 84 E0
	jsr $10F0.w		; 20 F0 10
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	sei		; 78
	rti		; 40

	ldy $7884.w,X		; BC 84 78
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $C0.b		; 04 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C.b,S		; 03 0C
	asl $1F.b		; 06 1F
	phd		; 0B
	trb $051B.w		; 1C 1B 05
	sec		; 38
	ora $007E90.l		; 0F 90 7E 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	brk $05.b		; 00 05
	brk $0F.b		; 00 0F
	brk $7E.b		; 00 7E
	ora ($D8.b,X)		; 01 D8
	jsr $2090.w		; 20 90 20
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7BE7.w,Y		; 39 E7 7B
	wai		; CB
	wai		; CB
	lda $6767A7.l,X		; BF A7 67 67
	sbc $4EEF6F.l		; EF 6F EF 4E
	eor $211F1E.l,X		; 5F 1E 1F 21
	sbc $83FF49.l,X		; FF 49 FF 83
	sbc $66EF23.l,X		; FF 23 EF 66
	sbc $4EFF66.l		; EF 66 FF 4E
	eor $1E3F0C.l,X		; 5F 0C 3F 1E
	rol $3E1C.w,X		; 3E 1C 3E
	cpy $E41E.w		; CC 1E E4
	tsb $04F0.w		; 0C F0 04
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $1C.b		; 00 1C
	and $047F0C.l,X		; 3F 0C 7F 04
	rol $9E80.w,X		; 3E 80 9E
	rti		; 40

	jmp $2420.w		; 4C 20 24
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C.b		; 04 0C
	asl $E80C.w		; 0E 0C E8
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1E00.w		; 0C 00 1E
	php		; 08
	inc $F840.w,X		; FE 40 F8
	cpy #$F0.b		; C0 F0
	cpx #$F0.b		; E0 F0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $807F00.l,X		; FF 00 7F 80
	adc $807F80.l,X		; 7F 80 7F 80
	bit $24.b		; 24 24
	pha		; 48
	pha		; 48
	sta ($91.b),Y		; 91 91
	ora ($11.b),Y		; 11 11
	ldx #$A2.b		; A2 A2
.ACCU 8
	sep #$62		; E2 62
	cpy $44.b		; C4 44
	cpy $44.b		; C4 44
	pld		; 2B
	ror A		; 6A
	cmp [$14.b],Y		; D7 14
	sbc $00FF08.l		; EF 08 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and #$FF.b		; 29 FF
	sta $BD.b,X		; 95 BD
	asl A		; 0A
	inc A		; 1A
	ora $251D.w,X		; 1D 1D 25
	and $24.b		; 25 24
	bit $24.b		; 24 24
	bit $44.b		; 24 44
	mvp $00,$7E		; 44 7E 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $0E.b,S		; 03 0E
	ora [$1C.b]		; 07 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	cop $1F.b		; 02 1F
	tsb $3F.b		; 04 3F
	tya		; 98
	tsb $64.b		; 04 64
	tya		; 98
	.db $42, $BC		; 42 BC
	.db $62, $9C, $E4		; 62 9C E4
	clc		; 18
	inx		; E8
	bpl -16.b		; 10 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	bpl -20.b		; 10 EC
	clc		; 18
	jsr ($F608.w,X)		; FC 08 F6
	tsb $0CF6.w		; 0C F6 0C
	sbc $4006.w,X		; FD 06 40
	brk $20.b		; 00 20
	brk $90.b		; 00 90
	bra  88.b		; 80 58
	rti		; 40

	plp		; 28
	jsr $909C.w		; 20 9C 90
	stz $5690.w		; 9C 90 56
	bvc 126.b		; 50 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
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
	php		; 08
	php		; 08
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
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
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	ldy $3E00.w,X		; BC 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$20.b		; C0 20
	jsr $3010.w		; 20 10 30
	ora [$01.b]		; 07 01
	ora [$0C.b]		; 07 0C
	ora [$02.b]		; 07 02
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq   0.b		; F0 00
	sed		; F8
	bpl  -4.b		; 10 FC
	ora ($7F.b,X)		; 01 7F
	tsb $3F.b		; 04 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bcs  48.b		; B0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bmi -80.b		; 30 B0
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	bvs -64.b		; 70 C0
	sec		; 38
	rts		; 60

	trb $0030.w		; 1C 30 00
	bpl   7.b		; 10 07
	ora [$0E.b]		; 07 0E
	ora $80C000.l		; 0F 00 C0 80
	cpx #$40.b		; E0 40
	beq  32.b		; F0 20
	sed		; F8
	bpl  -4.b		; 10 FC
	brk $7F.b		; 00 7F
	asl $3F.b		; 06 3F
	asl $001F.w		; 0E 1F 00
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
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	sec		; 38
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	bra  58.b		; 80 3A
	bra  58.b		; 80 3A
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	cpx #$C139.w		; E0 39 C1
	ora $C0C0.w,Y		; 19 C0 C0
	tya		; 98
	tya		; 98
	jmp.w [$DC5C]		; DC 5C DC
	clc		; 18
	dec $FC1A.w,X		; DE 1A FC
	sec		; 38
	cmp $08EE09.l		; CF 09 EE 08
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
	tsx		; BA
	adc [$5D.b]		; 67 5D
	and ($5D.b,S),Y		; 33 5D
	and ($2E.b,S),Y		; 33 2E
	ora $192E.w,Y		; 19 2E 19
	ora [$0C.b],Y		; 17 0C
	ora $0C.b,X		; 15 0C
	trb $0C.b		; 14 0C
	adc [$00.b]		; 67 00
	and ($00.b,S),Y		; 33 00
	and ($00.b,S),Y		; 33 00
	ora $1900.w,Y		; 19 00 19
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $7F.b		; 00 7F
	bcs  94.b		; B0 5E
	lda ($15.b),Y		; B1 15
	xce		; FB
	ldx $DA.b		; A6 DA
	lda $DC.b		; A5 DC
	adc $D8.b,S		; 63 D8
	adc [$D8.b]		; 67 D8
	and $D8.b,S		; 23 D8
	lda ($03.b,S),Y		; B3 03
	bcs   0.b		; B0 00
	sed		; F8
	brk $D9.b		; 00 D9
	brk $DB.b		; 00 DB
	brk $D7.b		; 00 D7
	brk $D7.b		; 00 D7
	brk $DF.b		; 00 DF
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	phd		; 0B
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	ora $37.b,S		; 03 37
	ora $713FDC.l		; 0F DC 3F 71
	sbc $ECCFF6.l,X		; FF F6 CF EC
	ora $003F58.l,X		; 1F 58 3F 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $05.b		; 00 05
	asl $0D16.w		; 0E 16 0D
	ora ($0D.b)		; 12 0D
	asl A		; 0A
	ora $192E.w,X		; 1D 2E 19
	rol $19.b		; 26 19
	and ($19.b,S),Y		; 33 19
	tsa		; 3B
	ora ($0E.b),Y		; 11 0E
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $11.b		; 00 11
	brk $63.b		; 00 63
	sbc $C6FF43.l,X		; FF 43 FF C6
	sbc $86FFC6.l,X		; FF C6 FF 86
	sbc $8CFF8C.l,X		; FF 8C FF 8C
	sbc $FFFF8C.l,X		; FF 8C FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1D.b		; 00 1D
	inc $FF0C.w		; EE 0C FF
	rol $3FDC.w		; 2E DC 3F
	cmp $5FF91B.l,X		; DF 1B F9 5F
	clv		; B8
	eor $B8DFB8.l,X		; 5F B8 DF B8
	inc $FE01.w		; EE 01 FE
	ora ($DC.b,X)		; 01 DC
	ora $DC.b,S		; 03 DC
	ora $F8.b,S		; 03 F8
	ora [$BD.b]		; 07 BD
	ora $BC.b		; 05 BC
	tsb $BC.b		; 04 BC
	tsb $77.b		; 04 77
	sbc [$F0.b],Y		; F7 F0
	beq -17.b		; F0 EF
	cpx #$4F50.w		; E0 50 4F
	dey		; 88
	sta [$44.b]		; 87 44
	eor $C3.b,S		; 43 C3
	brk $F0.b		; 00 F0
	brk $37.b		; 00 37
	sbc $60FF70.l,X		; FF 70 FF 60
	beq  65.b		; F0 41
	sbc ($80.b,X)		; E1 80
	cpy #$E000.w		; C0 00 E0
	cpy #$90E0.w		; C0 E0 90
	bcc -66.b		; 90 BE
	adc $0CFFE0.l,X		; 7F E0 FF 0C
	sbc $87FF60.l,X		; FF 60 FF 87
	sed		; F8
	tsb $19F3.w		; 0C F3 19
	sbc [$23.b]		; E7 23
	dec $007F.w,X		; DE 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00F800.l,X		; FF 00 F8 00
	sbc ($00.b,S),Y		; F3 00
	sbc [$00.b]		; E7 00
	dec $0C00.w,X		; DE 00 0C
	sbc $00FB37.l,X		; FF 37 FB 00
	sbc $7E837C.l,X		; FF 7C 83 7E
	cmp ($E5.b,X)		; C1 E5
	stz $3CCB.w,X		; 9E CB 3C
	sta [$78.b],Y		; 97 78
	sbc $00FB00.l,X		; FF 00 FB 00
	sbc $008300.l,X		; FF 00 83 00
	cmp ($00.b,X)		; C1 00
	stz $3C00.w,X		; 9E 00 3C
	brk $78.b		; 00 78
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	sec		; 38
	cpx $84.b		; E4 84
	ror $3BCE.w,X		; 7E CE 3B
	adc [$1C.b]		; 67 1C
	bmi   0.b		; 30 00
	clc		; 18
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	clc		; 18
	sed		; F8
	sty $E4.b		; 84 E4
	lsr $23FE.w		; 4E FE 23
	sbc $00FC10.l,X		; FF 10 FC 00
	jmp ($3F04.w,X)		; 7C 04 3F
	cop $0F.b		; 02 0F
	ora $7C1E.w,X		; 1D 1E 7C
	sed		; F8
	dey		; 88
	beq -32.b		; F0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	adc $00FF38.l,X		; 7F 38 FF 00
	sbc $00F100.l,X		; FF 00 F1 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra  64.b		; 80 40
	cpy #$0010.w		; C0 10 00
	brk $20.b		; 00 20
	bpl   8.b		; 10 08
	tsb $0705.w		; 0C 05 07
	ora $00.b,S		; 03 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	cpy #$F000.w		; C0 00 F0
	brk $F0.b		; 00 F0
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	cop $1F.b		; 02 1F
	cpy #$E518.w		; C0 18 E5
	trb $1CE1.w		; 1C E1 1C
	sbc ($1C.b),Y		; F1 1C
	sep #$0E		; E2 0E
	beq  14.b		; F0 0E
	sbc $700F.w,Y		; F9 0F 70
	ora [$EF.b]		; 07 EF
	php		; 08
	xba		; EB
	php		; 08
	sbc [$14.b],Y		; F7 14
	sbc [$04.b]		; E7 04
	sbc $04.b,X		; F5 04
	xce		; FB
	asl A		; 0A
	sbc ($02.b)		; F2 02
	sbc $0005.w,X		; FD 05 00
	bra -128.b		; 80 80
	cpy #$4000.w		; C0 00 40
	cpy #$8060.w		; C0 60 80
	jsr $30E0.w		; 20 E0 30
	rti		; 40

	bpl -16.b		; 10 F0
	tya		; 98
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	rts		; 60

	brk $0C.b		; 00 0C
	tsb $08.b		; 04 08
	tsb $08.b		; 04 08
	tsb $08.b		; 04 08
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	pha		; 48
	sta [$4C.b],Y		; 97 4C
	ora $4C.b		; 05 4C
	eor ($0C.b,X)		; 41 0C
	.db $42, $06		; 42 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	eor $084B08.l		; 4F 08 4B 08
	eor $00.b,S		; 43 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	tsb $15.b		; 04 15
	php		; 08
	cop $19.b		; 02 19
	jsl $330511.l		; 22 11 05 33
	ora $23.b		; 05 23
	asl A		; 0A
	and [$2B.b]		; 27 2B
	asl $04.b		; 06 04
	brk $08.b		; 00 08
	brk $19.b		; 00 19
	brk $11.b		; 00 11
	brk $33.b		; 00 33
	brk $23.b		; 00 23
	brk $27.b		; 00 27
	brk $06.b		; 00 06
	brk $B0.b		; 00 B0
	adc $C3FF61.l,X		; 7F 61 FF C3
	inc $FD86.w,X		; FE 86 FD
	tsb $50FB.w		; 0C FB 50
	lda $217FB1.l,X		; BF B1 7F 21
	sbc $FF007F.l,X		; FF 7F 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $3B.b		; 00 3B
	ora ($33.b),Y		; 11 33
	ora ($30.b),Y		; 11 30
	ora ($20.b),Y		; 11 20
	ora ($20.b),Y		; 11 20
	ora ($11.b),Y		; 11 11
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	cmp $ACDFAC.l,X		; DF AC DF AC
	cmp $DCEF9C.l,X		; DF 9C EF DC
	sbc $54EF54.l		; EF 54 EF 54
	sbc $DF67BA.l		; EF BA 67 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $67.b		; 00 67
	brk $DF.b		; 00 DF
	clv		; B8
	cmp $D8BFB8.l,X		; DF B8 BF D8
	plb		; AB
	jmp.w [$FCCB]		; DC CB FC
	stp		; DB
	jmp ($78E7.w)		; 6C E7 78
	lda $04BC70.l		; AF 70 BC 04
	ldy $DC04.w,X		; BC 04 DC
	tsb $DC.b		; 04 DC
	brk $FE.b		; 00 FE
	cop $6E.b		; 02 6E
	cop $7A.b		; 02 7A
	cop $72.b		; 02 72
	cop $F0.b		; 02 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $90.b		; 00 90
	bcc   8.b		; 90 08
	php		; 08
	pha		; 48
	pha		; 48
	mvp $22,$44		; 44 44 22
	jsl $262222.l		; 22 22 22 26
	rol $78.b		; 26 78
	sei		; 78
	dec $BD.b		; C6 BD
	sty $187B.w		; 8C 7B 18
	sbc [$31.b],Y		; F7 31
	sbc $C6FF63.l		; EF 63 FF C6
	sbc $9CEF96.l,X		; FF 96 EF 9C
	sbc $7B00BD.l		; EF BD 00 7B
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $28.b		; 00 28
	sbc [$5B.b],Y		; F7 5B
	cpx #$C0B0.w		; E0 B0 C0
	rts		; 60

	sta $800FC0.l		; 8F C0 0F 80
	ora [$40.b]		; 07 40
	ora $F76FAF.l,X		; 1F AF 6F F7
	ora [$E7.b]		; 07 E7
	brk $CF.b		; 00 CF
	brk $8D.b		; 00 8D
	ora $3606.w,X		; 1D 06 36
	brk $78.b		; 00 78
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	bvs -128.b		; 70 80
	bmi  32.b		; 30 20
	beq  24.b		; F0 18
	sei		; 78
	tsb $863C.w		; 0C 3C 86
	tsb $06C3.w		; 0C C3 06
	sbc ($A3.b),Y		; F1 A3
	tya		; 98
	bra -128.b		; 80 80
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bra 126.b		; 80 7E
	.db $42, $1F		; 42 1F
	ora ($8F.b),Y		; 11 8F
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra 112.b		; 80 70
	cpy #$6038.w		; C0 38 60
	trb $0E30.w		; 1C 30 0E
	clc		; 18
	ora [$0C.b]		; 07 0C
	ora $06.b,S		; 03 06
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	bpl  -4.b		; 10 FC
	php		; 08
	ror $3F04.w,X		; 7E 04 3F
	cop $1F.b		; 02 1F
	cpy #$C000.w		; C0 00 C0
	bra  48.b		; 80 30
	bra  57.b		; 80 39
	sbc ($BF.b,X)		; E1 BF
	cmp ($3E.b,X)		; C1 3E
	sbc $F837.w,Y		; F9 37 F8
	eor [$BA.b],Y		; 57 BA
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $F0.b		; 00 F0
	cpx #$C031.w		; E0 31 C0
	ora [$F8.b]		; 07 F8
	ora $F8.b,S		; 03 F8
	ora $BA.b,S		; 03 BA
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -96.b		; 80 A0
	ldy #$7070.w		; A0 70 70
	cpx #$8460.w		; E0 60 84
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr $30A0.w		; 20 A0 30
	bvs   0.b		; 70 00
	cpx #$C404.w		; E0 04 C4
	rti		; 40

	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	clc		; 18
	ora $18.b,S		; 03 18
	sbc [$0C.b],Y		; F7 0C
	wai		; CB
	sec		; 38
	sta $E33E71.l,X		; 9F 71 3E E3
	adc $8C7EC0.l,X		; 7F C0 7E 8C
	ora [$00.b]		; 07 00
	ora $080B08.l		; 0F 08 0B 08
	ora [$10.b],Y		; 17 10
	rol $5D20.w		; 2E 20 5D
	eor ($30.b,X)		; 41 30
	brk $C0.b		; 00 C0
	sty $8000.w		; 8C 00 80
	cpy #$7150.w		; C0 50 71
	bmi 103.b		; 30 67
	cop $6F.b		; 02 6F
	asl $0C14.w		; 0E 14 0C
	clc		; 18
	trb $0418.w		; 1C 18 04
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	jsr $00FD.w		; 20 FD 00
	sbc $05FF00.l,X		; FF 00 FF 05
	adc $7B03.w,X		; 7D 03 7B
	ora $3B.b,S		; 03 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $F080.w		; 20 80 F0
	bmi  14.b		; 30 0E
	asl $0707.w		; 0E 07 07
	.db $82, $82, $00		; 82 82 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F010.w		; E0 10 F0
	asl $5E.b		; 06 5E
	sta $8F.b,S		; 83 8F
	brk $86.b		; 00 86
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F7700.l		; 0F 00 77 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $F6E100.l		; 0F 00 E1 F6
	cmp $E3.b,X		; D5 E3
	and $D7.b,S		; 23 D7
	and #$29DC.w		; 29 DC 29
	cld		; D8
	ora ($F8.b,X)		; 01 F8
	bra 124.b		; 80 7C
	cmp $FE32.w		; CD 32 FE
	brk $EB.b		; 00 EB
	ora ($DC.b,X)		; 01 DC
	php		; 08
	cmp [$00.b],Y		; D7 00
	cmp [$00.b],Y		; D7 00
	sbc [$10.b],Y		; F7 10
	adc [$64.b]		; 67 64
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	beq  -1.b		; F0 FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sbc $F0FFFE.l,X		; FF FE FF F0
	sbc $00FF00.l,X		; FF 00 FF 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	.db $42, $78		; 42 78
	lsr A		; 4A
	sei		; 78
	sta [$F0.b]		; 87 F0
	adc $98.b,S		; 63 98
	adc ($8E.b),Y		; 71 8E
	jsr ($E000.w,X)		; FC 00 E0
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	php		; 08
	sta [$00.b]		; 87 00
	eor $888F50.l,X		; 5F 50 8F 88
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($2C.b),Y		; 51 2C
	dey		; 88
	ror $F0.b,X		; 76 F0
	ora $40.b,S		; 03 40
	sta ($20.b,X)		; 81 20
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$84.b]		; 07 84
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	rts		; 60

	sbc $073F07.l,X		; FF 07 3F 07
	tsa		; 3B
	cmp [$7F.b]		; C7 7F
	bra 112.b		; 80 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	lsr $07C7.w		; 4E C7 07
	cmp [$07.b]		; C7 07
	cmp ($C7.b,X)		; C1 C7
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	ora $6C07.w		; 0D 07 6C
	ora [$F9.b],Y		; 17 F9
	asl $E2.b		; 06 E2
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b],Y		; 17 00
	asl $00.b		; 06 00
	sbc $0100.w,X		; FD 00 01
	ora $00.b,S		; 03 00
	ora ($DC.b,X)		; 01 DC
	brk $BC.b		; 00 BC
	cmp $FB3FFF.l,X		; DF FF 3F FB
	adc $74FF37.l,X		; 7F 37 FF 74
	sbc $000F01.l,X		; FF 01 0F 00
	ora [$00.b]		; 07 00
	ora $DF.b,S		; 03 DF
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $55.b		; 00 55
	xba		; EB
	plp		; 28
	eor ($C0.b,X)		; 41 C0
	rts		; 60

	cpx #$C010.w		; E0 10 C0
	jsr $E080.w		; 20 80 E0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	and #$C003.w		; 29 03 C0
	cmp [$00.b]		; C7 00
	ora $E0.b,S		; 03 E0
	ora ($C0.b,X)		; 01 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $CC.b		; 00 CC
	bit $88F8.w		; 2C F8 88
	bvs -64.b		; 70 C0
	bmi  96.b		; 30 60
	tsb $0E00.w		; 0C 00 0E
	clc		; 18
	ora $08.b,S		; 03 08
	ora $06.b,S		; 03 06
	tsb $EC.b		; 04 EC
	bra  -8.b		; 80 F8
	rti		; 40

	beq  32.b		; F0 20
	beq   0.b		; F0 00
	jsr ($7E08.w,X)		; FC 08 7E
	brk $3F.b		; 00 3F
	cop $1F.b		; 02 1F
	rep #$01		; C2 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FC38.w,X)		; FC 38 FC
	cpx #$80F8.w		; E0 F8 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	sec		; 38
	pla		; 68
	inx		; E8
	bpl -112.b		; 10 90
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	php		; 08
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	pld		; 2B
	brk $3D.b		; 00 3D
	brk $39.b		; 00 39
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	jsr $3DA2.w		; 20 A2 3D
	lda $0C.b,X		; B5 0C
	mvn $20,$E0		; 54 E0 20
	tsb $4818.w		; 0C 18 48
	beq  64.b		; F0 40
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	ldx #$7D71.w		; A2 71 7D
	bit $FC.b		; 24 FC
	brk $E0.b		; 00 E0
	php		; 08
	jmp $00F840.l		; 5C 40 F8 00
	rti		; 40

	brk $C0.b		; 00 C0
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $001F00.l,X		; 7F 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $007E00.l,X		; 3F 00 7E 00
	sei		; 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0C.b		; 06 0C
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $1E.b		; 04 1E
	brk $1F.b		; 00 1F
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $007E00.l,X		; 3F 00 7E 00
	ror $7E00.w,X		; 7E 00 7E
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $7C.b		; 04 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	jsr ($FE00.w,X)		; FC 00 FE
	brk $DE.b		; 00 DE
	brk $5F.b		; 00 5F
	brk $4F.b		; 00 4F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	tsb $04.b		; 04 04
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
	brk $20.b		; 00 20
	bpl  24.b		; 10 18
	asl A		; 0A
	asl $0C06.w		; 0E 06 0C
	brk $0D.b		; 00 0D
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	jsr ($7E00.w,X)		; FC 00 7E
	tsb $3F.b		; 04 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $E400.w		; 20 00 E4
	bvc  -2.b		; 50 FE
	dec $81.b		; C6 81
	sta ($00.b,X)		; 81 00
	bra  16.b		; 80 10
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$FC00.w		; A0 00 FC
	cop $FE.b		; 02 FE
	ldy #$70AB.w		; A0 AB 70
	adc ($60.b),Y		; 71 60
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $E3.b		; 00 E3
	cmp $7F.b,S		; C3 7F
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	eor ($F3.b,X)		; 41 F3
	brk $8F.b		; 00 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	tya		; 98
	bvs   6.b		; 70 06
	bcc   7.b		; 90 07
	sty $0603.w		; 8C 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  56.b		; 90 38
	brk $7E.b		; 00 7E
	tsb $3F.b		; 04 3F
	cop $1F.b		; 02 1F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	bra 112.b		; 80 70
	cpy #$4808.w		; C0 08 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq   8.b		; F0 08
	sed		; F8
	brk $00.b		; 00 00
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
	ora $0E.b,S		; 03 0E
	ora $1F0F00.l,X		; 1F 00 0F 1F
	ora $00FF21.l,X		; 1F 21 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $0500.w,X		; FE 00 05
	tsb $00.b		; 04 00
	brk $07.b		; 00 07
	and $006101.l,X		; 3F 01 61 00
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $0C.b		; 06 0C
	tsb $30A3.w		; 0C A3 30
	sta [$20.b]		; 87 20
	sbc $C08F80.l		; EF 80 8F C0
	ora $009F80.l,X		; 1F 80 9F 00
	ora $001700.l,X		; 1F 00 17 00
	cpy #$6000.w		; C0 00 60
	jsr $8000.w		; 20 00 80
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $0E3F03.l		; 0F 03 3F 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	and [$FE.b]		; 27 FE
	and $E3FD.w,X		; 3D FD E3
	inc $B89F.w		; EE 9F B8
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	brk $3D.b		; 00 3D
	brk $E3.b		; 00 E3
	brk $9F.b		; 00 9F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	sbc $C0FF3F.l,X		; FF 3F FF C0
	sbc $A6EF10.l,X		; FF 10 EF A6
	stp		; DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00EF00.l,X		; FF 00 EF 00
	stp		; DB
	brk $EF.b		; 00 EF
	and $3BE7.w,Y		; 39 E7 3B
	eor #$13B7.w		; 49 B7 13
	sbc $01FFC1.l		; EF C1 FF 01
	sbc $08C73B.l,X		; FF 3B C7 08
	sbc [$39.b],Y		; F7 39
	brk $3B.b		; 00 3B
	brk $B7.b		; 00 B7
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C7.b		; 00 C7
	brk $F7.b		; 00 F7
	brk $1B.b		; 00 1B
	tsb $081F.w		; 0C 1F 08
	tas		; 1B
	brk $33.b		; 00 33
	brk $33.b		; 00 33
	tsb $23.b		; 04 23
	tsb $23.b		; 04 23
	tsb $23.b		; 04 23
	tsb $0C.b		; 04 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $DC.b		; 00 DC
	adc $F9DFAC.l		; 6F AC DF F9
	stz $3DDA.w,X		; 9E DA 3D
	sbc ($3D.b)		; F2 3D
	pea $543B.w		; F4 3B 54
	tsa		; 3B
	eor $6F37.w,Y		; 59 37 6F
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $3D.b		; 00 3D
	brk $3D.b		; 00 3D
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $64.b		; 00 64
	pea $1607.w		; F4 07 16
	ora ($0A.b,X)		; 01 0A
	trb $0104.w		; 1C 04 01
	ora $89.b,S		; 03 89
	asl $0048.w,X		; 1E 48 00
	cli		; 58
	brk $24.b		; 00 24
	stz $0E.b,X		; 74 0E
	lda $003F04.l		; AF 04 3F 00
	trb $0B01.w		; 1C 01 0B
	php		; 08
	sta $00C800.l,X		; 9F 00 C8 00
	cld		; D8
	beq 127.b		; F0 7F
	inc $ECFF.w,X		; FE FF EC
	sbc $D1FFDC.l,X		; FF DC FF D1
	inc $DB85.w,X		; FE 85 DB
	mvn $8F,$8D		; 54 8D 8F
	eor $007F.w,X		; 5D 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sed		; F8
	brk $AF.b		; 00 AF
	ora [$70.b]		; 07 70
	jsr $C0E0.w		; 20 E0 C0
	cpx #$F800.w		; E0 00 F8
	inx		; E8
	cld		; D8
	inx		; E8
	bvc -32.b		; 50 E0
	bvc -96.b		; 50 A0
	cpx #$1840.w		; E0 40 18
	bra  64.b		; 80 40
	cpy #$0000.w		; C0 00 00
	inx		; E8
	php		; 08
	inx		; E8
	php		; 08
	cpx #$A000.w		; E0 00 A0
	brk $40.b		; 00 40
	rti		; 40

	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	ora $FE7D3F.l,X		; 1F 3F 7D FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	asl $38FF.w		; 0E FF 38
	sbc $3C1818.l,X		; FF 18 18 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $753C.w,X		; 3C 3C 75
	sbc $E1D0.w,Y		; F9 D0 E1
	rti		; 40

	bra   0.b		; 80 00
	brk $08.b		; 00 08
	jsr ($7E18.w,X)		; FC 18 7E
	bit $387F.w,X		; 3C 7F 38
	sbc $80FF61.l,X		; FF 61 FF 80
	sbc $00F300.l,X		; FF 00 F3 00
	cmp ($03.b,X)		; C1 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $FC.b,S		; 03 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	clc		; 18
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
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
	brk $00.b		; 00 00
	brk $5A.b		; 00 5A
	and $7BA7.w,X		; 3D A7 7B
	lsr $8CF7.w		; 4E F7 8C
	sbc $73FE19.l,X		; FF 19 FE 73
	lda $3BE7.w,X		; BD E7 3B
	dec $3D77.w		; CE 77 3D
	brk $7B.b		; 00 7B
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $BD.b		; 00 BD
	brk $3B.b		; 00 3B
	brk $77.b		; 00 77
	brk $E2.b		; 00 E2
	sbc $31FF88.l,X		; FF 88 FF 31
	inc $7DE3.w,X		; FE E3 7D
	cmp [$FA.b]		; C7 FA
	sta $09F6.w		; 8D F6 09
	sbc $FFFF13.l,X		; FF 13 FF FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $7D.b		; 00 7D
	brk $FA.b		; 00 FA
	brk $F6.b		; 00 F6
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $74.b		; 00 74
	lda $D16FD8.l		; AF D8 6F D1
	lda $E57FA2.l,X		; BF A2 7F E5
	ror $FCCB.w,X		; 7E CB FC
	stx $F9.b,Y		; 96 F9
	rol $AFF1.w,X		; 3E F1 AF
	brk $6F.b		; 00 6F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $F9.b		; 00 F9
	brk $F1.b		; 00 F1
	brk $5A.b		; 00 5A
	sbc $B2.b		; E5 B2
	cmp $9966.w		; CD 66 99
	dec $9F31.w		; CE 31 9F
	rts		; 60

	ora ($E2.b,X)		; 01 E2
	trb $0EC1.w		; 1C C1 0E
	bra -27.b		; 80 E5
	brk $CD.b		; 00 CD
	brk $99.b		; 00 99
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $FE.b		; 00 FE
	jsl $7F41FF.l		; 22 FF 41 7F
	brk $23.b		; 00 23
	tsb $23.b		; 04 23
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $01.b		; 04 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	ora ($04.b,X)		; 01 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $69.b		; 00 69
	and [$69.b],Y		; 37 69
	and [$69.b],Y		; 37 69
	and [$7B.b],Y		; 37 7B
	and [$7B.b]		; 27 7B
	and [$5B.b]		; 27 5B
	and [$5F.b]		; 27 5F
	and $57.b,S		; 23 57
	and $37.b,S		; 23 37
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $27.b		; 00 27
	brk $27.b		; 00 27
	brk $27.b		; 00 27
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	sbc $46FF26.l,X		; FF 26 FF 46
	sbc $CCFF4C.l,X		; FF 4C FF CC
	sbc $99FF8D.l,X		; FF 8D FF 99
	sbc $FFFF99.l,X		; FF 99 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $6C.b		; 00 6C
	sbc ($6C.b,S),Y		; F3 6C
	sbc ($D8.b)		; F2 D8
	sbc [$D8.b]		; E7 D8
	cpx $D1.b		; E4 D1
	cpx $C9B2.w		; EC B2 C9
	lda ($C3.b),Y		; B1 C3
	lda #$F3D4.w		; A9 D4 F3
	brk $F2.b		; 00 F2
	ora ($E6.b,X)		; 01 E6
	ora ($E4.b,X)		; 01 E4
	ora $EC.b,S		; 03 EC
	ora $C8.b,S		; 03 C8
	ora [$C0.b]		; 07 C0
	ora $070FD0.l		; 0F D0 0F 07
	bcs  67.b		; B0 43
	sed		; F8
	ora ($7C.b,X)		; 01 7C
	bpl -114.b		; 10 8E
	and $BC7B.w,Y		; 39 7B BC
	lda $C1DBD8.l,X		; BF D8 DB C1
	dec $7F.b		; C6 7F
	bmi  15.b		; 30 0F
	php		; 08
	and [$B4.b],Y		; 37 B4
	ora $FA.b,S		; 03 FA
	clc		; 18
	jsr ($FD3D.w,X)		; FC 3D FD
	cli		; 58
	jsr ($FAC2.w,X)		; FC C2 FA
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	cpy #$8060.w		; C0 60 80
	jsr $30E0.w		; 20 E0 30
	rti		; 40

	bpl -16.b		; 10 F0
	tya		; 98
	bit $88.b		; 24 88
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	rts		; 60

	brk $F8.b		; 00 F8
	phb		; 8B
	and [$43.b],Y		; 37 43
	and [$43.b],Y		; 37 43
	and $03.b,X		; 35 03
	ora ($21.b,S),Y		; 13 21
	inc A		; 1A
	ora ($0A.b,X)		; 01 0A
	ora ($0A.b),Y		; 11 0A
	ora ($01.b,X)		; 01 01
	php		; 08
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	ora $00.b,S		; 03 00
	and ($00.b,X)		; 21 00
	ora ($00.b,X)		; 01 00
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $33.b		; 00 33
	sbc $33FF33.l,X		; FF 33 FF 33
	sbc $B3FF33.l,X		; FF 33 FF B3
	sbc $FD93.w,X		; FD 93 FD
	sta ($FD.b,S),Y		; 93 FD
	lda ($DD.b,S),Y		; B3 DD
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FD00.w,X		; FD 00 FD
	brk $FD.b		; 00 FD
	brk $DD.b		; 00 DD
	brk $4F.b		; 00 4F
	bcs  79.b		; B0 4F
	bcs  79.b		; B0 4F
	bcs  95.b		; B0 5F
	ldy #$A05F.w		; A0 5F A0
	eor $A05FA0.l,X		; 5F A0 5F A0
	ror $B49F.w		; 6E 9F B4
	tsb $B4.b		; 04 B4
	tsb $B2.b		; 04 B2
	cop $AA.b		; 02 AA
	asl A		; 0A
	tax		; AA
	asl A		; 0A
	tax		; AA
	asl A		; 0A
	lda ($01.b,X)		; A1 01
	sta ($11.b),Y		; 91 11
	jsr ($F903.w,X)		; FC 03 F9
	ora [$FB.b]		; 07 FB
	ora [$F0.b]		; 07 F0
	ora $803FC0.l		; 0F C0 3F 80
	adc $008000.l,X		; 7F 00 80 00
	bra -123.b		; 80 85
	sta $4A.b		; 85 4A
	lsr A		; 4A
	bit $7F2C.w		; 2C 2C 7F
	adc $807F7F.l,X		; 7F 7F 7F 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	cpy #$8081.w		; C0 81 80
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora $003F00.l		; 0F 00 3F 00
	adc $000000.l,X		; 7F 00 00 00
	beq -16.b		; F0 F0
	sta ($81.b,X)		; 81 81
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cpy #$F018.w		; C0 18 F0
	tsb $0670.w		; 0C 70 06
	bvc -58.b		; 50 C6
	bvc -60.b		; 50 C4
	bra -116.b		; 80 8C
	brk $18.b		; 00 18
	sed		; F8
	brk $F0.b		; 00 F0
	bpl  -8.b		; 10 F8
	php		; 08
	jsr ($BC04.w,X)		; FC 04 BC
	sty $BC.b		; 84 BC
	sty $78.b		; 84 78
	php		; 08
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	php		; 08
	bmi  14.b		; 30 0E
	php		; 08
	ora [$04.b]		; 07 04
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	php		; 08
	ror $3F04.w,X		; 7E 04 3F
	cop $1F.b		; 02 1F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	bra 112.b		; 80 70
	cpy #$6038.w		; C0 38 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	bra  32.b		; 80 20
	brk $10.b		; 00 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	and $003E00.l,X		; 3F 00 3E 00
	ror $7C00.w,X		; 7E 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0800.w		; 0C 00 08
	clc		; 18
	php		; 08
	php		; 08
	tsb $02.b		; 04 02
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	php		; 08
	rol $3F00.w,X		; 3E 00 3F
	brk $3F.b		; 00 3F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	sta $19FF.w,Y		; 99 FF 19
	sbc $31FF19.l,X		; FF 19 FF 31
	sbc $33FF33.l,X		; FF 33 FF 33
	sbc $33FF33.l,X		; FF 33 FF 33
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A2.b		; 00 A2
	dec $AF.b,X		; D6 AF
	cmp ($8F.b),Y		; D1 8F
	beq -113.b		; F0 8F
	beq  15.b		; F0 0F
	beq  15.b		; F0 0F
	beq  15.b		; F0 0F
	beq  15.b		; F0 0F
	beq -48.b		; F0 D0
	ora $F307D7.l		; 0F D7 07 F3
	ora $F5.b,S		; 03 F5
	ora $F4.b		; 05 F4
	tsb $F2.b		; 04 F2
	cop $F2.b		; 02 F2
	cop $F5.b		; 02 F5
	ora $18.b		; 05 18
	sta [$68.b]		; 87 68
	ora [$E5.b],Y		; 17 E5
	inc A		; 1A
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($01.b,X)		; 01 01
	sbc ($01.b,X)		; E1 01
	sta ($E2.b,X)		; 81 E2
.INDEX 8
	sep #$18		; E2 18
	clc		; 18
	stx $86.b		; 86 86
	adc ($61.b,X)		; 61 61
	ora $0619.w,Y		; 19 19 06
	asl $C6.b		; 06 C6
	eor #$61AE.w		; 49 AE 61
	asl $1C70.w		; 0E 70 1C
	jsr $001F.w		; 20 1F 00
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	adc $E3.b,S		; 63 E3
	sec		; 38
	ora #$4150.w		; 09 50 41
	bmi  49.b		; 30 31
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	trb $1C1C.w		; 1C 1C 1C
	brk $01.b		; 00 01
	php		; 08
	ora ($08.b,X)		; 01 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	cmp $9976.w,Y		; D9 76 99
	ror $99.b,X		; 76 99
	adc ($99.b)		; 72 99
	tsx		; BA
	ora ($B8.b),Y		; 11 B8
	ora ($21.b,S),Y		; 13 21
	ora ($31.b)		; 12 31
	cop $D9.b		; 02 D9
	brk $99.b		; 00 99
	brk $99.b		; 00 99
	brk $99.b		; 00 99
	brk $11.b		; 00 11
	brk $13.b		; 00 13
	brk $12.b		; 00 12
	brk $02.b		; 00 02
	brk $77.b		; 00 77
	sta ($0E.b),Y		; 91 0E
	cpx #$6F.b		; E0 6F
	ldy #$6F.b		; A0 6F
	ldy #$8F.b		; A0 8F
	rts		; 60

	ora [$70.b],Y		; 17 70
	ora [$30.b]		; 07 30
	phd		; 0B
	sec		; 38
	stx $FF00.w		; 8E 00 FF
	jsr $009F.w		; 20 9F 00
	sta $203F00.l,X		; 9F 00 3F 20
	and $101F20.l		; 2F 20 1F 10
	ora [$00.b]		; 07 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	ora $03.b,X		; 15 03
	phd		; 0B
	ora [$3F.b]		; 07 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	ora $001F01.l		; 0F 01 1F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $F0.b		; 02 F0
	cpx #$E0.b		; E0 E0
	cpy #$E0.b		; C0 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
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

	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$00.b		; E0 00
	beq  32.b		; F0 20
	sed		; F8
	asl $0F02.w		; 0E 02 0F
	ora $040F.w,Y		; 19 0F 04
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $FE.b		; 02 FE
	ora #$007F.w		; 09 7F 00
	and $011F02.l,X		; 3F 02 1F 01
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bcs 112.b		; B0 70
	iny		; C8
	php		; 08
	jsr ($769C.w,X)		; FC 9C 76
	dec $6038.w		; CE 38 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bmi -16.b		; 30 F0
	php		; 08
	iny		; C8
	stz $46FC.w		; 9C FC 46
	inc $F820.w,X		; FE 20 F8
	clc		; 18
	bmi  12.b		; 30 0C
	clc		; 18
	asl $0C.b		; 06 0C
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	asl $3D00.w,X		; 1E 00 3D
	asl $FC10.w,X		; 1E 10 FC
	php		; 08
	ror $3F04.w,X		; 7E 04 3F
	cop $1F.b		; 02 1F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $06.b,S		; 03 06
	ora $0C.b,S		; 03 0C
	ora [$0D.b]		; 07 0D
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $A7.b		; 00 A7
	bvs -89.b		; 70 A7
	rts		; 60

	asl $E3.b		; 06 E3
	cop $F1.b		; 02 F1
	rol $C8.b,X		; 36 C8
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra  95.b		; 80 5F
	brk $5F.b		; 00 5F
	brk $DC.b		; 00 DC
	rti		; 40

	asl $0810.w,X		; 1E 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	pea $D0F8.w		; F4 F8 D0
	cpx #$40.b		; E0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	sbc $00FC80.l,X		; FF 80 FC 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	cpx #$40.b		; E0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rts		; 60

	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ldy #$A0.b		; A0 A0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $80A0.w		; 20 A0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	brk $22.b		; 00 22
	brk $22.b		; 00 22
	brk $20.b		; 00 20
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
	brk $03.b		; 00 03
	clc		; 18
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	bra  32.b		; 80 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	sbc ($10.b,X)		; E1 10
	sbc ($10.b,X)		; E1 10
	cmp $10.b,S		; C3 10
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	ror $FE00.w,X		; 7E 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
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
	adc #$6934.w		; 69 34 69
	bit $69.b,X		; 34 69
	bit $21.b,X		; 34 21
	trb $27.b		; 14 27
	ora ($24.b)		; 12 24
	ora ($15.b)		; 12 15
	ora $10.b,S		; 03 10
	ora $37.b,S		; 03 37
	tsb $37.b		; 04 37
	tsb $33.b		; 04 33
	brk $13.b		; 00 13
	brk $11.b		; 00 11
	brk $13.b		; 00 13
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($E3.b,X)		; 01 E3
	php		; 08
	sbc ($08.b,X)		; E1 08
	sbc ($08.b,X)		; E1 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	pea $F408.w		; F4 08 F4
	php		; 08
	ror $08.b		; 66 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	asl $01.b		; 06 01
	ora $0B.b		; 05 0B
	ora $0B.b		; 05 0B
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $1F.b,X		; 16 1F
	jsr $0CF3.w		; 20 F3 0C
	sei		; 78
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $00FDF2.l,X		; FF F2 FD 00
	brk $16.b		; 00 16
	brk $20.b		; 00 20
	brk $0C.b		; 00 0C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0D.b,X)		; 01 0D
	ora $0B.b,S		; 03 0B
	eor $41.b,S		; 43 41
	eor $000000.l,X		; 5F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	eor $00.b,S		; 43 00
	cmp [$40.b],Y		; D7 40
	sbc $010102.l,X		; FF 02 01 01
	ora $EB30D7.l,X		; 1F D7 30 EB
	clc		; 18
	sta ($CF.b),Y		; 91 CF
	iny		; C8
	sbc [$01.b]		; E7 01
	jsr $FAF8.w		; 20 F8 FA
	ora ($00.b,X)		; 01 00
	asl $06.b		; 06 06
	and $101720.l		; 2F 20 17 10
	cop $E2.b		; 02 E2
	bra -16.b		; 80 F0
	brk $FE.b		; 00 FE
	sei		; 78
	sbc $A679A6.l,X		; FF A6 79 A6
	adc $70AF.w,Y		; 79 AF 70
	sta $9573.w		; 8D 73 95
	adc $96.b,S		; 63 96
	adc $46.b,S		; 63 46
	and $46.b,S		; 23 46
	and $79.b,S		; 23 79
	brk $79.b		; 00 79
	brk $71.b		; 00 71
	ora ($73.b,X)		; 01 73
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	brk $9F.b		; 00 9F
	cpx #$FF.b		; E0 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	rti		; 40

	sbc $E219.w,Y		; F9 19 E2
	.db $62, $85, $85		; 62 85 85
	bit #$9289.w		; 89 89 92
	sta ($62.b)		; 92 62
	.db $62, $44, $44		; 62 44 44
	plp		; 28
	plp		; 28
	sbc $9A.b,X		; F5 9A
	adc $403F80.l,X		; 7F 80 3F 40
	eor $781F70.l,X		; 5F 70 1F 78
	ora $0F2CEC.l,X		; 1F EC 2C 0F
	jsr $9AC0.w		; 20 C0 9A
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	bcs  48.b		; B0 30
	iny		; C8
	cli		; 58
	sty $9C.b		; 84 9C
	ora $DD.b		; 05 DD
	brk $DF.b		; 00 DF
	txy		; 9B
	jmp $28C7.w		; 4C C7 28
	xce		; FB
	rti		; 40

	cmp $00EF00.l		; CF 00 EF 00
	sbc $817E00.l,X		; FF 00 7E 81
	tsb $00.b		; 04 00
	stz $44.b,X		; 74 44
	sec		; 38
	plp		; 28
	tsb $00.b		; 04 00
	bit $1800.w,X		; 3C 00 18
	brk $08.b		; 00 08
	brk $81.b		; 00 81
	sta ($00.b,X)		; 81 00
	xce		; FB
	dex		; CA
	bit $0EF5.w,X		; 3C F5 0E
	sbc $E216.w		; ED 16 E2
	ora $E11FF2.l,X		; 1F F2 1F E1
	ora $30CF39.l		; 0F 39 CF 30
	lda [$3C.b]		; A7 3C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	bpl   7.b		; 10 07
	brk $1F.b		; 00 1F
	php		; 08
	sta ($80.b,S),Y		; 93 80
	ora $000044.l,X		; 1F 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra -116.b		; 80 8C
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy $FF3C.w		; CC 3C FF
	bit $FE.b		; 24 FE
	clc		; 18
	sbc $FD03.w,X		; FD 03 FD
	ora $FD.b,S		; 03 FD
	cop $FE.b		; 02 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $A0.b		; 00 A0
	inc $BC99.w,X		; FE 99 BC
	jsr $2838.w		; 20 38 28
	plp		; 28
	bit $24.b		; 24 24
	bit $25.b		; 24 25
	mvp $44,$46		; 44 46 44
	mvp $07,$73		; 44 73 07
	adc ($07.b)		; 72 07
	adc ($24.b,S),Y		; 73 24
	jsr ($EF70.w,X)		; FC 70 EF
	bcc  -3.b		; 90 FD
	cop $F8.b		; 02 F8
	ora [$F8.b]		; 07 F8
	ora [$FA.b]		; 07 FA
	ora $D8.b,S		; 03 D8
	ora $A8.b,S		; 03 A8
	and $40.b,S		; 23 40
	adc ($00.b,S),Y		; 73 00
	tya		; 98
	cop $08.b		; 02 08
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	brk $00.b		; 00 00
	asl $6100.w,X		; 1E 00 61
	and ($40.b,X)		; 21 40
	bpl  32.b		; 10 20
	jsr $4008.w		; 20 08 40
	lda ($5F.b),Y		; B1 5F
	bne -62.b		; D0 C2
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	jsr $0061.w		; 20 61 00
	bvc  32.b		; 50 20
	jsr $5E00.w		; 20 00 5E
	ora ($FD.b,X)		; 01 FD
	cmp $00DF.w		; CD DF 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bcc -32.b		; 90 E0
	tsa		; 3B
	bpl  11.b		; 10 0B
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bne   0.b		; D0 00
	ldy $C0.b,X		; B4 C0
	sbc $12DFC0.l,X		; FF C0 DF 12
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
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
	brk $F6.b		; 00 F6
	tya		; 98
	asl $98.b,X		; 16 98
	ror $F8.b		; 66 F8
	asl $FE70.w		; 0E 70 FE
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	bra  16.b		; 80 10
	bpl  96.b		; 10 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	tsb $03.b		; 04 03
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $12.b		; 04 12
	tsb $1C2B.w		; 0C 2B 1C
	eor $B436.w,Y		; 59 36 B4
	ror $0007.w		; 6E 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $1D00.w		; 0D 00 1D
	brk $36.b		; 00 36
	brk $6F.b		; 00 6F
	ora ($DA.b,X)		; 01 DA
	sbc $F88F.w,X		; FD 8F F8
	inc A		; 1A
	sbc $CB.b		; E5 CB
	bit $D567.w,X		; 3C 67 D5
	adc ($C5.b)		; 72 C5
	sed		; F8
	eor $92.b		; 45 92
	eor $FD.b,S		; 43 FD
	brk $F8.b		; 00 F8
	brk $60.b		; 00 60
	brk $14.b		; 00 14
	trb $D9.b		; 14 D9
	cmp ($1C.b),Y		; D1 1C
	adc [$3B.b]		; 67 3B
	ora ($7D.b,X)		; 01 7D
	eor #$1E1E.w		; 49 1E 1E
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $007F.w,X		; 1E 7F 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($5415.w,X)		; FC 15 54
	ora ($14.b,X)		; 01 14
	rol $0F.b		; 26 0F
	and ($1E.b,X)		; 21 1E
	adc #$531E.w		; 69 1E 53
	bit $3CF3.w,X		; 3C F3 3C
	bit $00FF.w,X		; 3C FF 00
	inc $7E00.w,X		; FE 00 7E
	ora ($1E.b,X)		; 01 1E
	asl $1E00.w,X		; 1E 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $26.b		; 00 26
	ora $28.b,S		; 03 28
	ora [$2C.b]		; 07 2C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $9F.b		; 00 9F
	rts		; 60

	sta $7CB370.l		; 8F 70 B3 7C
	bit #$844E.w		; 89 4E 84
	eor [$DA.b]		; 47 DA
	eor $DD.b,S		; 43 DD
	eor ($DE.b,X)		; 41 DE
	rti		; 40

	bmi  48.b		; 30 30
	bit $0E3C.w,X		; 3C 3C 0E
	asl $4575.w		; 0E 75 45
	ply		; 7A
	.db $42, $3D		; 42 3D
	ora ($3E.b,X)		; 01 3E
	brk $3F.b		; 00 3F
	brk $C0.b		; 00 C0
	cmp $FF1FDF.l,X		; DF DF 1F FF
	brk $A8.b		; 00 A8
	eor [$BB.b],Y		; 57 BB
	eor $D93D.w,X		; 5D 3D D9
	eor $5FF9.w,X		; 5D F9 5F
	cpx #$C0.b		; E0 C0
	sbc $00FF1F.l,X		; FF 1F FF 00
	ora $401F40.l,X		; 1F 40 1F 40
	ora $1BD9.w,Y		; 19 D9 1B
	sbc $E71B.w,Y		; F9 1B E7
	ora [$03.b]		; 07 03
	xce		; FB
	xce		; FB
	sbc $DC00FF.l,X		; FF FF 00 DC
	pld		; 2B
	inc $FFBD.w,X		; FE BD FF
	inc $BDFE.w,X		; FE FE BD
	sbc $FF005A.l,X		; FF 5A 00 FF
	xce		; FB
	sbc $08FB00.l,X		; FF 00 FB 08
	clv		; B8
	php		; 08
	ldy $FFF8.w,X		; BC F8 FF
	bcs  -1.b		; B0 FF
	bvc  -1.b		; 50 FF
	brk $40.b		; 00 40
	rti		; 40

	adc $3FFF3F.l,X		; 7F 3F FF 3F
	cpy #$69.b		; C0 69
	sta ($70.b)		; 92 70
	asl A		; 0A
	adc $BB05.w,Y		; 79 05 BB
	ora [$00.b]		; 07 00
	sbc $3FFF40.l,X		; FF 40 FF 3F
	and $1E3F00.l,X		; 3F 00 3F 1E
	ora ($0E.b)		; 12 0E
	phb		; 8B
	ora $87.b		; 05 87
	adc ($03.b,S),Y		; 73 03
	brk $00.b		; 00 00
	rol A		; 2A
	nop		; EA
	tsx		; BA
	tsx		; BA
	stx $003E.w		; 8E 3E 00
	asl $6060.w		; 0E 60 60
	bne -32.b		; D0 E0
	tay		; A8
	cpy #$00.b		; C0 00
	sbc $BAFF2A.l,X		; FF 2A FF BA
	sbc $00FF0E.l,X		; FF 0E FF 00
	sbc $80FE40.l,X		; FF 40 FE 80
	sed		; F8
	brk $F0.b		; 00 F0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc [$08.b],Y		; F7 08
	sbc [$18.b]		; E7 18
	sbc $A85700.l,X		; FF 00 57 A8
	eor [$A8.b],Y		; 57 A8
	and [$88.b],Y		; 37 88
	rti		; 40

	rti		; 40

	dey		; 88
	dey		; 88
	bcc -112.b		; 90 90
	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	plp		; 28
	brk $28.b		; 00 28
	brk $08.b		; 00 08
	brk $F8.b		; 00 F8
	ora [$F1.b]		; 07 F1
	ora $F10FF1.l		; 0F F1 0F F1
	ora $E70EF3.l		; 0F F3 0E E7
	trb $1CE9.w		; 1C E9 1C
	cpy $1718.w		; CC 18 17
	bpl  47.b		; 10 2F
	jsr $202F.w		; 20 2F 20
	and $404E20.l		; 2F 20 4E 40
	jmp $405C40.l		; 5C 40 5C 40
	tya		; 98
	bra -83.b		; 80 AD
	ora $4050.w,X		; 1D 50 40
	jsr $5020.w		; 20 20 50
	rts		; 60

	and $1C1C3F.l,X		; 3F 3F 1C 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $40BD.w		; 0C BD 40
	bvc   0.b		; 50 00
	jsr $7F40.w		; 20 40 7F
	and ($3F.b,X)		; 21 3F
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	tsa		; 3B
	txs		; 9A
	sta ($70.b,S),Y		; 93 70
	bpl -112.b		; 10 90
	ldy #$40.b		; A0 40
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	sbc $009F00.l,X		; FF 00 9F 00
	pea $F000.w		; F4 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	adc $7D81.w,X		; 7D 81 7D
	sta ($78.b,X)		; 81 78
	sta ($F8.b,X)		; 81 F8
	ora ($F9.b,X)		; 01 F9
	brk $F1.b		; 00 F1
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $89.b		; 00 89
	php		; 08
	bit #$9108.w		; 89 08 91
	bpl  17.b		; 10 11
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $F020.w		; 20 20 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $88.b		; 04 88
	bra   8.b		; 80 08
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
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
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	bne -16.b		; D0 F0
	cpy #$50.b		; C0 50
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	rts		; 60

	bne  96.b		; D0 60
	tay		; A8
	bvs   8.b		; 70 08
	beq   4.b		; F0 04
	clv		; B8
	jmp $4AB8.w		; 4C B8 4A
	ldy $1CE6.w,X		; BC E6 1C
	rts		; 60

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $58.b		; 00 58
	brk $58.b		; 00 58
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $58.b		; 00 58
	bra -88.b		; 80 A8
	bpl  72.b		; 10 48
	bmi -120.b		; 30 88
	bvs -104.b		; 70 98
	bvs -104.b		; 70 98
	bvs -104.b		; 70 98
	bvs -104.b		; 70 98
	bvs   0.b		; 70 00
	cpx #$10.b		; E0 10
	cpy #$30.b		; C0 30
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $A8.b		; 00 A8
	bvs -96.b		; 70 A0
	bvs  48.b		; 70 30
	cpx #$50.b		; E0 50
	cpx #$50.b		; E0 50
	cpx #$60.b		; E0 60
	cpy #$A0.b		; C0 A0
	cpy #$80.b		; C0 80
	cpy #$70.b		; C0 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	phd		; 0B
	wai		; CB
	xba		; EB
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	wai		; CB
	brk $FF.b		; 00 FF
	phd		; 0B
	sbc $00CB00.l,X		; FF 00 CB 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	rol A		; 2A
	pld		; 2B
	eor $70.b,X		; 55 70
	xba		; EB
	cmp $C4.b		; C5 C4
	cmp $00.b		; C5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora [$2A.b]		; 07 2A
	pld		; 2B
	rti		; 40

	adc $80.b,X		; 75 80
	sbc $00E786.l		; EF 86 E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bra  80.b		; 80 50
	bvc   8.b		; 50 08
	jsr $0088.w		; 20 88 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bvc  80.b		; 50 50
	brk $A8.b		; 00 A8
	brk $8C.b		; 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $1A06.w		; 0D 06 1A
	ora $0B1D.w		; 0D 1D 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	ora $0B00.w		; 0D 00 0B
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora $1D.b,S		; 03 1D
	ora $C3.b,S		; 03 C3
	and $FFFF3E.l,X		; 3F 3E FF FF
	sbc $E2FFD7.l,X		; FF D7 FF E2
	sbc $030000.l,X		; FF 00 00 03
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $0E.b,S		; 03 0E
	ora $070C0F.l		; 0F 0F 0C 07
	asl $02.b		; 06 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$0E.b]		; 07 0E
	ora $060F0C.l		; 0F 0C 0F 06
	ora $0B1D09.l		; 0F 09 1D 0B
	ora [$27.b],Y		; 17 27
	ora [$07.b],Y		; 17 07
	ora $E93F0E.l		; 0F 0E 3F E9
	jmp ($E285.w,X)		; 7C 85 E2
	tas		; 1B
	sty $1D.b		; 84 1D
	sta $13.b,S		; 83 13
	sta [$17.b]		; 87 17
	sta $08BF06.l		; 8F 06 BF 08
	sbc $02FE00.l,X		; FF 00 FE 02
	sed		; F8
	ora $E1.b		; 05 E1
	cld		; D8
	dec $CE.b		; C6 CE
	cpx #$9F.b		; E0 9F
	cpy #$3F.b		; C0 3F
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C4.b		; 00 C4
	sbc $88.b		; E5 88
	sbc $F212.w,Y		; F9 12 F2
	bit $E4.b		; 24 E4
	plp		; 28
	tay		; A8
	pha		; 48
	pha		; 48
	sta ($91.b),Y		; 91 91
	jsl $BF1F22.l		; 22 22 1F BF
	asl $A45F.w		; 0E 5F A4
	rol $15D1.w		; 2E D1 15
	nop		; EA
	asl A		; 0A
	sbc $04.b,X		; F5 04
	xce		; FB
	brk $FF.b		; 00 FF
	brk $0E.b		; 00 0E
	sbc $80FF04.l,X		; FF 04 FF 80
	sbc $AA7F50.l,X		; FF 50 7F AA
	lda $1B9F95.l,X		; BF 95 9F 1B
	ora $472525.l,X		; 1F 25 25 47
	sec		; 38
	and $1C.b,S		; 23 1C
	jsr $789F.w		; 20 9F 78
	ora [$FC.b]		; 07 FC
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1A.b		; 00 1A
	.db $82, $1D, $C1		; 82 1D C1
	and $D057E0.l,X		; 3F E0 57 D0
	wai		; CB
	iny		; C8
	and $25.b		; 25 25
	jsl $121222.l		; 22 22 12 12
	cpx #$00.b		; E0 00
	bne  32.b		; D0 20
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	php		; 08
	beq   8.b		; F0 08
	beq   4.b		; F0 04
	sed		; F8
	mvp $00,$F8		; 44 F8 00
	brk $A0.b		; 00 A0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $06.b		; 00 06
	phd		; 0B
	asl $0B.b		; 06 0B
	ror $7B.b,X		; 76 7B
	ror $0673.w,X		; 7E 73 06
	ora $36.b,S		; 03 36
	tsa		; 3B
	rol $0633.w,X		; 3E 33 06
	ora $02.b,S		; 03 02
	ora $620F02.l		; 0F 02 0F 62
	adc $027F62.l,X		; 7F 62 7F 02
	ora [$22.b]		; 07 22
	and $023F22.l,X		; 3F 22 3F 02
	ora [$02.b]		; 07 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bra   1.b		; 80 01
	bra   1.b		; 80 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra 106.b		; 80 6A
	cld		; D8
	and [$D0.b]		; 27 D0
	adc [$90.b]		; 67 90
	sbc [$90.b]		; E7 90
	lda $188F18.l		; AF 18 8F 18
	sta $180318.l		; 8F 18 03 18
	cmp [$00.b]		; C7 00
	cmp $008F00.l		; CF 00 8F 00
	sta $000700.l		; 8F 00 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $F88A08.l		; 0F 08 8A F8
	lsr $70.b		; 46 70
	lsr $CE70.w,X		; 5E 70 CE
	rts		; 60

	cmp $61CF61.l		; CF 61 CF 61
	cmp $61CC61.l		; CF 61 CC 61
	eor [$50.b],Y		; 57 50
	sta $008F10.l,X		; 9F 10 8F 00
	sta $009E00.l,X		; 9F 00 9E 00
	stz $9E00.w,X		; 9E 00 9E
	brk $BF.b		; 00 BF
	and ($00.b,X)		; 21 00
	brk $78.b		; 00 78
	rts		; 60

	sec		; 38
	rts		; 60

	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	rts		; 60

	bmi   0.b		; 30 00
	jsr ($7820.w,X)		; FC 20 78
	jsr $0078.w		; 20 78 00
	sei		; 78
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $0578.w		; 20 78 05
	ora $0A0D1B.l		; 0F 1B 0D 0A
	ora $1A35.w,X		; 1D 35 1A
	trb $3B.b		; 14 3B
	ror A		; 6A
	and $2B.b,X		; 35 2B
	adc $AC.b,X		; 75 AC
	adc ($0F.b)		; 72 0F
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $1A.b		; 00 1A
	brk $3A.b		; 00 3A
	brk $35.b		; 00 35
	ora ($74.b,X)		; 01 74
	brk $71.b		; 00 71
	brk $C4.b		; 00 C4
	cmp $40.b		; C5 40
	eor $45.b,S		; 43 45
	eor $28.b		; 45 28
	pla		; 68
	bvc   0.b		; 50 00
	asl A		; 0A
	and ($1E.b,S),Y		; 33 1E
	ora $860207.l		; 0F 07 02 86
	sbc [$00.b]		; E7 00
	.db $62, $43, $67		; 62 43 67
	ora [$7F.b]		; 07 7F
	ora [$77.b]		; 07 77
	cop $3A.b		; 02 3A
	cop $1F.b		; 02 1F
	brk $07.b		; 00 07
	php		; 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	bpl -80.b		; 10 B0
	ldy #$00.b		; A0 00
	bne -128.b		; D0 80
	rti		; 40

	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $8C.b		; 00 8C
	brk $8C.b		; 00 8C
	brk $18.b		; 00 18
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	ora $1B.b		; 05 1B
	tsb $2D1B.w		; 0C 1B 2D
	inc A		; 1A
	and ($1C.b,S),Y		; 33 1C
	ora ($3E.b,S),Y		; 13 3E
	stz $3F.b		; 64 3F
	and $DB7E.w		; 2D 7E DB
	jmp ($001B.w,X)		; 7C 1B 00
	tas		; 1B
	brk $1A.b		; 00 1A
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7D.b		; 00 7D
	ora ($45.b,X)		; 01 45
	inc $4EBD.w,X		; FE BD 4E
	dex		; CA
	and ($A6.b),Y		; 31 A6
	adc ($90.b,X)		; 61 90
	rti		; 40

	bmi  96.b		; 30 60
	cld		; D8
	and ($E5.b),Y		; 31 E5
	asl $18FE.w,X		; 1E FE 18
	.db $42, $02		; 42 02
	and $31.b,X		; 35 31
	cmp $4EFF41.l,X		; DF 41 FF 4E
	sta $000E84.l,X		; 9F 84 0E 00
	bit #$0689.w		; 89 89 06
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	brk $76.b		; 00 76
	tda		; 7B
	ror $0673.w,X		; 7E 73 06
	ora $000700.l		; 0F 00 07 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $62.b,S		; 03 62
	adc $517F62.l,X		; 7F 62 7F 51
	asl $8609.w		; 0E 09 86
	ora #$0906.w		; 09 06 09
	asl $0D.b		; 06 0D
	ora [$05.b]		; 07 05
	ora [$04.b]		; 07 04
	ora [$06.b]		; 07 06
	ora $0E.b,S		; 03 0E
	bra   6.b		; 80 06
	bra   6.b		; 80 06
	brk $06.b		; 00 06
	bra   7.b		; 80 07
	bra   7.b		; 80 07
	brk $07.b		; 00 07
	bra   3.b		; 80 03
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra -65.b		; 80 BF
	rti		; 40

	lda $58A750.l		; AF 50 A7 58
	sbc [$9C.b]		; E7 9C
	sbc $C49D.w		; ED 9D C4
	cpy $44.b		; C4 44
	mvp $28,$A8		; 44 A8 28
	cli		; 58
	clc		; 18
	pha		; 48
	php		; 08
	eor $05.b		; 45 05
	phb		; 8B
	phd		; 0B
	.db $82, $00, $FF		; 82 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3C.b		; 00 3C
	cpy $24.b		; C4 24
	bit $44.b		; 24 44
	mvp $44,$44		; 44 44 44
	sty $84.b		; 84 84
	sty $84.b		; 84 84
	tsb $04.b		; 04 04
	cmp [$C7.b]		; C7 C7
	tyx		; BB
	clv		; B8
	inc $FC01.w,X		; FE 01 FC
	ora $FC.b,S		; 03 FC
	ora $F8.b,S		; 03 F8
	ora [$F0.b]		; 07 F0
	ora $661FE4.l		; 0F E4 1F 66
	sta $BD46.w,X		; 9D 46 BD
	sta $94.b,X		; 95 94
	phb		; 8B
	dey		; 88
	phk		; 4B
	pha		; 48
	eor [$50.b],Y		; 57 50
	and $C0DF20.l		; 2F 20 DF C0
	ora $3D00.w,X		; 1D 00 3D
	brk $44.b		; 00 44
	sed		; F8
	.db $42, $FC		; 42 FC
	cop $FC.b		; 02 FC
	rol $FC.b		; 26 FC
	rol $FC.b		; 26 FC
	rol $EC.b,X		; 36 EC
	rol $EC.b,X		; 36 EC
	jmp ($F8C8.w,X)		; 7C C8 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $EC.b		; 00 EC
	brk $EC.b		; 00 EC
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	ora $07.b,S		; 03 07
	ora $00.b,S		; 03 00
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   3.b		; 80 03
	php		; 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy $CE61.w		; CC 61 CE
	adc $CE.b,S		; 63 CE
	adc $CE.b,S		; 63 CE
	adc $8C.b,S		; 63 8C
	adc $8C.b,S		; 63 8C
	adc $8C.b,S		; 63 8C
	adc $9C.b,S		; 63 9C
	adc ($BF.b,S),Y		; 73 BF
	and ($BC.b,X)		; 21 BC
	jsr $20BC.w		; 20 BC 20
	ldy $FE20.w,X		; BC 20 FE
	.db $62, $FE, $62		; 62 FE 62
	dec $CE42.w,X		; DE 42 CE
	.db $42, $00		; 42 00
	brk $60.b		; 00 60
	bmi  96.b		; 30 60
	bmi   1.b		; 30 01
	brk $21.b		; 00 21
	bmi   0.b		; 30 00
	ora ($60.b,X)		; 01 60
	and ($60.b),Y		; 31 60
	and ($00.b),Y		; 31 00
	bmi  32.b		; 30 20
	sei		; 78
	jsr $0078.w		; 20 78 00
	bmi  32.b		; 30 20
	sei		; 78
	ora ($30.b,X)		; 01 30
	and ($78.b,X)		; 21 78
	and ($78.b,X)		; 21 78
	cmp $6A.b,X		; D5 6A
	eor $EA.b,X		; 55 EA
	eor $EA.b,X		; 55 EA
	sta $EA.b,X		; 95 EA
	sty $EA.b,X		; 94 EA
	stz $B7E1.w,X		; 9E E1 B7
	cpy #$CB.b		; C0 CB
	tay		; A8
	adc #$E900.w		; 69 00 E9
	brk $E9.b		; 00 E9
	brk $E9.b		; 00 E9
	brk $E9.b		; 00 E9
	brk $E5.b		; 00 E5
	ora $C2.b		; 05 C2
	asl A		; 0A
	lda #$7D1D.w		; A9 1D 7D
	.db $82, $FD, $03		; 82 FD 03
	rol $5FC0.w,X		; 3E C0 5F
	cpx #$91.b		; E0 91
	stx $0F50.w		; 8E 50 0F
	bne  15.b		; D0 0F
	sed		; F8
	and [$E0.b],Y		; 37 E0
	rts		; 60

	brk $00.b		; 00 00
	eor ($40.b,X)		; 41 40
	ldy #$A0.b		; A0 A0
	ror $E10E.w		; 6E 0E E1
	ora ($E0.b,X)		; 01 E0
	brk $C0.b		; 00 C0
	bpl  30.b		; 10 1E
	sbc [$9F.b]		; E7 9F
	sbc $DC2B13.l		; EF 13 2B DC
	and ($FC.b,X)		; 21 FC
	cop $F9.b		; 02 F9
	asl $51.b		; 06 51
	stx $8D52.w		; 8E 52 8D
	tsb $07.b		; 04 07
	lsr A		; 4A
	eor $C02FE3.l		; 4F E3 2F C0
	ora $40.b,S		; 03 40
	ora ($04.b,X)		; 01 04
	tsb $A8.b		; 04 A8
	tay		; A8
	jsr $4A20.w		; 20 20 4A
	lda $F80D.w,X		; BD 0D F8
	ora $F8.b,X		; 15 F8
	ora ($F8.b),Y		; 11 F8
	and #$29F0.w		; 29 F0 29
	beq  49.b		; F0 31
	cpx #$B1.b		; E0 B1
	rts		; 60

	and $7800.w,X		; 3D 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $6C.b		; 00 6C
	iny		; C8
	pla		; 68
	cpy #$C8.b		; C0 C8
	bra -56.b		; 80 C8
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	bvs  25.b		; 70 19
	bvs  80.b		; 70 50
	sec		; 38
	pha		; 48
	sec		; 38
	plp		; 28
	clc		; 18
	plp		; 28
	clc		; 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   3.b		; 80 03
	tsb $0C04.w		; 0C 04 0C
	ora [$1D.b]		; 07 1D
	ora [$1A.b]		; 07 1A
	ora $0D1717.l		; 0F 17 17 0D
	ora [$08.b]		; 07 08
	ora $040700.l		; 0F 00 07 04
	ora $00.b,S		; 03 00
	php		; 08
	php		; 08
	asl A		; 0A
	asl A		; 0A
	ora $07.b,S		; 03 07
	ora ($0D.b,X)		; 01 0D
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	stz $8073.w		; 9C 73 80
	adc ($08.b,S),Y		; 73 08
	eor [$0E.b],Y		; 57 0E
	cmp $0EDF.w,Y		; D9 DF 0E
	dec $9E83.w,X		; DE 83 9E
	cmp ($9F.b,X)		; C1 9F
	brk $CE.b		; 00 CE
	.db $42, $9E		; 42 9E
	ora ($93.b)		; 12 93
	ora ($89.b,S),Y		; 13 89
	bit #$0E0C.w		; 89 0C 0E
	brk $83.b		; 00 83
	brk $C1.b		; 00 C1
	cop $42.b		; 02 42
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	bcs -32.b		; B0 E0
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	cpy #$60.b		; C0 60
	bra -32.b		; 80 E0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpx #$C0.b		; E0 C0
	cpy #$E0.b		; C0 E0
	rts		; 60

	cpx #$60.b		; E0 60
	bvs   0.b		; 70 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	beq  64.b		; F0 40
	beq  96.b		; F0 60
	sed		; F8
	bvs 112.b		; 70 70
	bvs 120.b		; 70 78
	sec		; 38
	sei		; 78
	sec		; 38
	bit $BC1C.w,X		; 3C 1C BC
	stz $EA5C.w		; 9C 5C EA
	trb $00FE.w		; 1C FE 00
	rts		; 60

	sed		; F8
	bcs 124.b		; B0 7C
	bcs 124.b		; B0 7C
	tya		; 98
	ror $FE98.w,X		; 7E 98 FE
	pha		; 48
	ror $BEA2.w,X		; 7E A2 BE
	jmp $00005C.l		; 5C 5C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $DE36.w,Y		; F9 36 DE
	and ($88.b),Y		; 31 88
	and [$A4.b],Y		; 37 A4
	ora $E7.b,S		; 03 E7
	jmp $4F37.w		; 4C 37 4F
	and [$D7.b]		; 27 D7
	cmp $37.b,S		; C3 37
	bne  16.b		; D0 10
	beq  48.b		; F0 30
	cpy #$10.b		; C0 10
	cpy #$18.b		; C0 18
	bra  28.b		; 80 1C
	cmp ($4F.b,X)		; C1 4F
	sta ($9F.b),Y		; 91 9F
	and ($2F.b,X)		; 21 2F
	plx		; FA
	ora $76.b		; 05 76
	bit #$6DF2.w		; 89 F2 6D
	sbc $7A.b,X		; F5 7A
	sbc ($F8.b,S),Y		; F3 F8
	sbc [$F8.b],Y		; F7 F8
	sbc ($F4.b,S),Y		; F3 F4
	beq  -9.b		; F0 F7
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($61.b,X)		; 01 61
	bmi 120.b		; 30 78
	bvs  -4.b		; 70 FC
	beq  -8.b		; F0 F8
	pea $E3FC.w		; F4 FC E3
	plx		; FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	rol A		; 2A
	pld		; 2B
	eor $70.b,X		; 55 70
	xba		; EB
	cmp $C4.b		; C5 C4
	cmp $00.b		; C5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora [$2A.b]		; 07 2A
	pld		; 2B
	rti		; 40

	adc $80.b,X		; 75 80
	sbc $00E786.l		; EF 86 E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bra  80.b		; 80 50
	bvc   8.b		; 50 08
	jsr $0088.w		; 20 88 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bvc  80.b		; 50 50
	brk $A8.b		; 00 A8
	brk $8C.b		; 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora ($06.b,X)		; 01 06
	ora #$0006.w		; 09 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	rts		; 60

	dec $E0F0.w		; CE F0 E0
	lda $AE7FF6.l,X		; BF F6 7F AE
	sbc $01F78C.l,X		; FF 8C F7 01
	inc $0000.w,X		; FE 00 00
	rts		; 60

	brk $F0.b		; 00 F0
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $FE.b		; 00 FE
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $0E.b,S		; 03 0E
	ora $070C0F.l		; 0F 0F 0C 07
	asl $02.b		; 06 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$0E.b]		; 07 0E
	ora $060F0C.l		; 0F 0C 0F 06
	ora $0B1D09.l		; 0F 09 1D 0B
	ora [$27.b],Y		; 17 27
	ora [$07.b],Y		; 17 07
	ora $A93F0E.l		; 0F 0E 3F A9
	bit $E087.w,X		; 3C 87 E0
	ora $831D80.l,X		; 1F 80 1D 83
	ora ($87.b,S),Y		; 13 87
	ora [$8F.b],Y		; 17 8F
	asl $BF.b		; 06 BF
	php		; 08
	lda $00BE00.l,X		; BF 00 BE 00
	sed		; F8
	ora ($E1.b,X)		; 01 E1
	cld		; D8
	dec $CE.b		; C6 CE
	cpx #$9F.b		; E0 9F
	cpy #$3F.b		; C0 3F
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C4.b		; 00 C4
	sbc $88.b		; E5 88
	sbc $F212.w,Y		; F9 12 F2
	bit $E4.b		; 24 E4
	plp		; 28
	tay		; A8
	pha		; 48
	pha		; 48
	sta ($91.b),Y		; 91 91
	jsl $BF1F22.l		; 22 22 1F BF
	asl $A45F.w		; 0E 5F A4
	rol $15D1.w		; 2E D1 15
	nop		; EA
	asl A		; 0A
	sbc $04.b,X		; F5 04
	xce		; FB
	brk $FF.b		; 00 FF
	brk $0E.b		; 00 0E
	sbc $80FF04.l,X		; FF 04 FF 80
	sbc $AA7F50.l,X		; FF 50 7F AA
	lda $1B9F95.l,X		; BF 95 9F 1B
	ora $5F2525.l,X		; 1F 25 25 5F
	jsr $0837.w		; 20 37 08
	and ($8C.b,S),Y		; 33 8C
	sei		; 78
	ora [$FC.b]		; 07 FC
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $05.b		; 00 05
	sta $0A.b		; 85 0A
.ACCU 16
	rep #$2D		; C2 2D
	sbc ($57.b,X)		; E1 57
	bne -53.b		; D0 CB
	iny		; C8
	and $25.b		; 25 25
	jsl $121222.l		; 22 22 12 12
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$20.b		; C0 20
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	ldy #$80.b		; A0 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	asl $0B.b		; 06 0B
	asl $0B.b		; 06 0B
	ror $7B.b,X		; 76 7B
	ror $0673.w,X		; 7E 73 06
	ora $36.b,S		; 03 36
	tsa		; 3B
	rol $0633.w,X		; 3E 33 06
	ora $02.b,S		; 03 02
	ora $620F02.l		; 0F 02 0F 62
	adc $027F62.l,X		; 7F 62 7F 02
	ora [$22.b]		; 07 22
	and $023F22.l,X		; 3F 22 3F 02
	ora [$06.b]		; 07 06
	ora $02.b,S		; 03 02
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bra   1.b		; 80 01
	bra   1.b		; 80 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  42.b		; 80 2A
	cli		; 58
	and [$50.b]		; 27 50
	adc [$10.b]		; 67 10
	and [$10.b]		; 27 10
	and $180F18.l		; 2F 18 0F 18
	ora $180318.l		; 0F 18 03 18
	eor [$00.b]		; 47 00
	eor $000F00.l		; 4F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $F88A08.l		; 0F 08 8A F8
	lsr $70.b		; 46 70
	lsr $CE70.w,X		; 5E 70 CE
	rts		; 60

	cmp $61CF61.l		; CF 61 CF 61
	cmp $61CC61.l		; CF 61 CC 61
	eor [$50.b],Y		; 57 50
	sta $008F10.l,X		; 9F 10 8F 00
	sta $009E00.l,X		; 9F 00 9E 00
	stz $9E00.w,X		; 9E 00 9E
	brk $BF.b		; 00 BF
	and ($00.b,X)		; 21 00
	brk $78.b		; 00 78
	rts		; 60

	sec		; 38
	rts		; 60

	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	rts		; 60

	bmi   0.b		; 30 00
	jsr ($7820.w,X)		; FC 20 78
	jsr $0078.w		; 20 78 00
	sei		; 78
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $0278.w		; 20 78 02
	ora [$0D.b]		; 07 0D
	asl $05.b		; 06 05
	asl $0D1A.w		; 0E 1A 0D
	asl A		; 0A
	ora $1A35.w,X		; 1D 35 1A
	ora $3A.b,X		; 15 3A
	ror A		; 6A
	and $07.b,X		; 35 07
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $1A.b		; 00 1A
	brk $3A.b		; 00 3A
	brk $34.b		; 00 34
	brk $C4.b		; 00 C4
	cmp $40.b		; C5 40
	eor $45.b,S		; 43 45
	eor $28.b		; 45 28
	pla		; 68
	bvc   0.b		; 50 00
	asl A		; 0A
	and ($1E.b,S),Y		; 33 1E
	ora $860207.l		; 0F 07 02 86
	sbc [$00.b]		; E7 00
	.db $62, $43, $67		; 62 43 67
	ora [$7F.b]		; 07 7F
	ora [$77.b]		; 07 77
	cop $3A.b		; 02 3A
	cop $1F.b		; 02 1F
	brk $07.b		; 00 07
	php		; 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	bpl -80.b		; 10 B0
	ldy #$00.b		; A0 00
	bne -128.b		; D0 80
	rti		; 40

	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $8C.b		; 00 8C
	brk $8C.b		; 00 8C
	brk $18.b		; 00 18
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	trb $0F.b		; 14 0F
	ora $090F.w,Y		; 19 0F 09
	ora $161F32.l,X		; 1F 32 1F 16
	and $0F3E6D.l,X		; 3F 6D 3E 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $14.b		; 00 14
	xba		; EB
	inc $0F.b,X		; F6 0F
	cpx $DE20.w		; EC 20 DE
	bit $B01F.w,X		; 3C 1F B0
	rts		; 60

	bcc -15.b		; 90 F1
	php		; 08
	sbc #$EA14.w		; E9 14 EA
	cop $09.b		; 02 09
	ora #$0053.w		; 09 53 00
	adc ($20.b,X)		; 61 20
	cmp $179F40.l		; CF 40 9F 17
	ora $C4C60A.l		; 0F 0A C6 C4
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	ror $7B.b,X		; 76 7B
	ror $0673.w,X		; 7E 73 06
	ora $000700.l		; 0F 00 07 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $62.b,S		; 03 62
	adc $537F62.l,X		; 7F 62 7F 53
	tsb $8708.w		; 0C 08 87
	php		; 08
	ora [$01.b]		; 07 01
	ora [$05.b]		; 07 05
	ora [$05.b]		; 07 05
	ora [$04.b]		; 07 04
	ora $06.b,S		; 03 06
	ora $0C.b,S		; 03 0C
	bra   7.b		; 80 07
	bra   7.b		; 80 07
	brk $07.b		; 00 07
	bra   7.b		; 80 07
	bra   7.b		; 80 07
	brk $03.b		; 00 03
	bra   3.b		; 80 03
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$2F.b		; C0 2F
	bne -89.b		; D0 A7
	cli		; 58
	lda [$5C.b]		; A7 5C
	lda $C45D.w		; AD 5D C4
	cpy $44.b		; C4 44
	mvp $28,$A8		; 44 A8 28
	cld		; D8
	clc		; 18
	iny		; C8
	php		; 08
	eor $05.b		; 45 05
	phk		; 4B
	phd		; 0B
	.db $42, $00		; 42 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C43C00.l,X		; FF 00 3C C4
	bit $24.b		; 24 24
	mvp $44,$44		; 44 44 44
	mvp $84,$84		; 44 84 84
	sty $84.b		; 84 84
	tsb $04.b		; 04 04
	cmp [$C7.b]		; C7 C7
	tyx		; BB
	clv		; B8
	inc $FC01.w,X		; FE 01 FC
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora $F4.b,S		; 03 F4
	phd		; 0B
	cpx $4C1B.w		; EC 1B 4C
	tyx		; BB
	asl $95F1.w,X		; 1E F1 95
	sty $8B.b,X		; 94 8B
	dey		; 88
	phk		; 4B
	pha		; 48
	eor ($50.b,S),Y		; 53 50
	pld		; 2B
	jsr $C0DB.w		; 20 DB C0
	tsa		; 3B
	brk $71.b		; 00 71
	brk $28.b		; 00 28
	beq  40.b		; F0 28
	beq  40.b		; F0 28
	beq  40.b		; F0 28
	beq 104.b		; F0 68
	bne 104.b		; D0 68
	bne 104.b		; D0 68
	bne  -8.b		; D0 F8
	bcc -16.b		; 90 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	ora $07.b,S		; 03 07
	ora $00.b,S		; 03 00
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   3.b		; 80 03
	php		; 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy $CE61.w		; CC 61 CE
	adc $CE.b,S		; 63 CE
	adc $CE.b,S		; 63 CE
	adc $8C.b,S		; 63 8C
	adc $8C.b,S		; 63 8C
	adc $8C.b,S		; 63 8C
	adc $9C.b,S		; 63 9C
	adc ($BF.b,S),Y		; 73 BF
	and ($BC.b,X)		; 21 BC
	jsr $20BC.w		; 20 BC 20
	ldy $FE20.w,X		; BC 20 FE
	.db $62, $FE, $62		; 62 FE 62
	dec $CE42.w,X		; DE 42 CE
	.db $42, $00		; 42 00
	brk $60.b		; 00 60
	bmi  96.b		; 30 60
	bmi   0.b		; 30 00
	brk $20.b		; 00 20
	bmi   1.b		; 30 01
	brk $60.b		; 00 60
	and ($60.b),Y		; 31 60
	and ($00.b),Y		; 31 00
	bmi  32.b		; 30 20
	sei		; 78
	jsr $0078.w		; 20 78 00
	bmi  32.b		; 30 20
	sei		; 78
	brk $30.b		; 00 30
	and ($78.b,X)		; 21 78
	and ($78.b,X)		; 21 78
	rol A		; 2A
	adc $D3.b,X		; 75 D3
	adc $6ED0.w		; 6D D0 6E
	eor $EA.b,X		; 55 EA
	sta $EA.b,X		; 95 EA
	sta $C0B7E1.l,X		; 9F E1 B7 C0
	wai		; CB
	tay		; A8
	adc $01.b,X		; 75 01
	jmp ($6D00.w)		; 6C 00 6D
	brk $E9.b		; 00 E9
	brk $E9.b		; 00 E9
	brk $E4.b		; 00 E4
	tsb $C2.b		; 04 C2
	asl A		; 0A
	lda #$BE1D.w		; A9 1D BE
	cmp ($FE.b,X)		; C1 FE
	sta ($1F.b,X)		; 81 1F
	cpx #$8F.b		; E0 8F
	bvc 104.b		; 50 68
	cmp [$38.b]		; C7 38
	sta [$F8.b]		; 87 F8
	sta [$4C.b],Y		; 97 4C
	tas		; 1B
	beq  48.b		; F0 30
	bra   0.b		; 80 00
	ldy #$20.b		; A0 20
	bvs  80.b		; 70 50
	and [$07.b],Y		; 37 07
	beq -128.b		; F0 80
	rts		; 60

	brk $F0.b		; 00 F0
	clc		; 18
	adc $F7CF93.l		; 6F 93 CF F7
	ora #$EE15.w		; 09 15 EE
	bpl  -2.b		; 10 FE
	ora ($7C.b,X)		; 01 7C
	sta $28.b,S		; 83 28
	cmp [$29.b]		; C7 29
	dec $82.b		; C6 82
	sta $25.b,S		; 83 25
	and [$F1.b]		; 27 F1
	ora [$60.b],Y		; 17 60
	ora ($20.b,X)		; 01 20
	brk $82.b		; 00 82
	.db $82, $54, $54		; 82 54 54
	bpl  16.b		; 10 10
	inc A		; 1A
	sbc ($2A.b),Y		; F1 2A
	sbc ($33.b),Y		; F1 33
	sbc ($13.b,X)		; E1 13
	sbc ($03.b,X)		; E1 03
	sbc ($03.b,X)		; E1 03
	cpx #$03.b		; E0 03
	cpx #$A2.b		; E0 A2
	rts		; 60

	adc ($00.b),Y		; 71 00
	adc ($00.b),Y		; 71 00
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $D8.b		; 00 D8
	bcc -48.b		; 90 D0
	bra -112.b		; 80 90
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A2.b		; 00 A2
	rts		; 60

	lda ($60.b)		; B2 60
	bcs  96.b		; B0 60
	bcs 112.b		; B0 70
	tya		; 98
	bvs  88.b		; 70 58
	bmi  40.b		; 30 28
	clc		; 18
	trb $0C.b		; 14 0C
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   3.b		; 80 03
	tsb $0C04.w		; 0C 04 0C
	ora [$1D.b]		; 07 1D
	ora [$1A.b]		; 07 1A
	ora $0D1717.l		; 0F 17 17 0D
	ora [$08.b]		; 07 08
	ora $040700.l		; 0F 00 07 04
	ora $00.b,S		; 03 00
	php		; 08
	php		; 08
	asl A		; 0A
	asl A		; 0A
	ora $07.b,S		; 03 07
	ora ($0D.b,X)		; 01 0D
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	stz $8073.w		; 9C 73 80
	adc ($08.b,S),Y		; 73 08
	eor [$0E.b],Y		; 57 0E
	cmp $0EDF.w,Y		; D9 DF 0E
	dec $9E83.w,X		; DE 83 9E
	cmp ($9F.b,X)		; C1 9F
	brk $CE.b		; 00 CE
	.db $42, $9E		; 42 9E
	ora ($93.b)		; 12 93
	ora ($89.b,S),Y		; 13 89
	bit #$0E0C.w		; 89 0C 0E
	brk $83.b		; 00 83
	brk $C1.b		; 00 C1
	cop $42.b		; 02 42
	asl A		; 0A
	asl $06.b		; 06 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $C2.b		; 00 C2
	tsb $5C.b		; 04 5C
	inc $28.b		; E6 28
	inc $7CB0.w,X		; FE B0 7C
	sty $78.b,X		; 94 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	inc $00.b		; E6 00
	inc $7C00.w,X		; FE 00 7C
	brk $78.b		; 00 78
	brk $E4.b		; 00 E4
	sec		; 38
	pha		; 48
	bcs 112.b		; B0 70
	bra -96.b		; 80 A0
	rti		; 40

	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	cpy #$20.b		; C0 20
	sec		; 38
	brk $B0.b		; 00 B0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sed		; F8
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	rts		; 60

	cpx #$70.b		; E0 70
	rts		; 60

	cpx #$70.b		; E0 70
	beq 112.b		; F0 70
	sei		; 78
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	beq  64.b		; F0 40
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	bvs  96.b		; 70 60
	sei		; 78
	rts		; 60

	sei		; 78
	bvs  -8.b		; 70 F8
	sed		; F8
	sei		; 78
	sed		; F8
	sei		; 78
	bit $3878.w,X		; 3C 78 38
	bit $BC1C.w,X		; 3C 1C BC
	stz $EA5C.w		; 9C 5C EA
	trb $F8B0.w		; 1C B0 F8
	bcs 124.b		; B0 7C
	bcs 124.b		; B0 7C
	clv		; B8
	jmp ($7E98.w,X)		; 7C 98 7E
	tya		; 98
	inc $7E48.w,X		; FE 48 7E
	ldx #$BE.b		; A2 BE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $DF3B.w		; EC 3B DF
	plp		; 28
	cpy $2B.b		; C4 2B
	ldy $03.b		; A4 03
	sbc [$4C.b]		; E7 4C
	and [$4F.b],Y		; 37 4F
	and [$D7.b]		; 27 D7
	cmp $37.b,S		; C3 37
	iny		; C8
	php		; 08
	inx		; E8
	plp		; 28
	cpy #$18.b		; C0 18
	cpy #$18.b		; C0 18
	bra  28.b		; 80 1C
	cmp ($4F.b,X)		; C1 4F
	sta ($9F.b),Y		; 91 9F
	and ($2F.b,X)		; 21 2F
	sbc $3B02.w,X		; FD 02 3B
	cpy $79.b		; C4 79
	ldx $F5.b,Y		; B6 F5
	ply		; 7A
	sbc ($F8.b,S),Y		; F3 F8
	sbc [$F8.b],Y		; F7 F8
	sbc ($F4.b,S),Y		; F3 F4
	sbc ($F6.b),Y		; F1 F6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi 120.b		; 30 78
	bvs  -4.b		; 70 FC
	beq  -8.b		; F0 F8
	pea $E2FC.w		; F4 FC E2
	plx		; FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	trb $2F03.w		; 1C 03 2F
	ora ($60.b,S),Y		; 13 60
	ora $007F9B.l,X		; 1F 9B 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $13.b		; 00 13
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $78.b		; 00 78
	bra  28.b		; 80 1C
	inx		; E8
	bit $00F8.w		; 2C F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E8.b		; 00 E8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $02.b		; 00 02
	ora $07.b,S		; 03 07
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $020F00.l,X		; 1F 00 0F 02
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $8A.b,S		; 03 8A
	cmp [$05.b]		; C7 05
	rol $60.b		; 26 60
	and ($71.b,S),Y		; 33 71
	clc		; 18
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($C0.b,X)		; 01 C0
	ora $E0.b,S		; 03 E0
	sta [$F0.b]		; 87 F0
	asl $F8.b		; 06 F8
	and $7C.b,S		; 23 7C
	bpl 126.b		; 10 7E
	lda [$CC.b]		; A7 CC
	adc $9E.b,S		; 63 9E
	inc $1B.b		; E6 1B
	adc $83F981.l,X		; 7F 81 F9 83
	sbc [$02.b],Y		; F7 02
	jmp.w [$1629]		; DC 29 16
	sbc #$505C.w		; E9 5C 50
	stz $1B80.w,X		; 9E 80 1B
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $0C.b		; 02 0C
	brk $26.b		; 00 26
	jsr $C9CF.w		; 20 CF C9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $2B.b		; 00 2B
	trb $3956.w		; 1C 56 39
	lsr $39.b,X		; 56 39
	adc [$39.b],Y		; 77 39
	lda $AD73.w		; AD 73 AD
	adc ($AF.b,S),Y		; 73 AF
	adc ($EB.b,S),Y		; 73 EB
	adc [$1C.b],Y		; 77 1C
	brk $39.b		; 00 39
	brk $39.b		; 00 39
	brk $39.b		; 00 39
	brk $73.b		; 00 73
	brk $73.b		; 00 73
	brk $73.b		; 00 73
	brk $77.b		; 00 77
	brk $AC.b		; 00 AC
	cmp ($D8.b)		; D2 D8
	lda $C9.b,X		; B5 C9
	lda $33.b,S		; A3 33
	sbc [$06.b]		; E7 06
	cmp $3ADE5D.l		; CF 5D DE 3A
	ldy $F934.w,X		; BC 34 F9
	jmp.w [$8811]		; DC 11 88
	ora $B9.b,S		; 03 B9
	and [$93.b]		; 27 93
	ora $9C5FE6.l		; 0F E6 5F 9C
	and $B07FB8.l,X		; 3F B8 7F B0
	ror $3A57.w,X		; 7E 57 3A
	eor [$3A.b],Y		; 57 3A
	and ($1F.b)		; 32 1F
	rol A		; 2A
	ora $1D1E2B.l,X		; 1F 2B 1E 1D
	asl A		; 0A
	ora $160A.w,X		; 1D 0A 16
	php		; 08
	dec A		; 3A
	brk $3A.b		; 00 3A
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	bpl  79.b		; 10 4F
	sec		; 38
	eor ($31.b),Y		; 51 31
	and $401F60.l		; 2F 60 1F 40
	stz $64.b		; 64 64
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	ora [$17.b],Y		; 17 17
	rol $1F20.w		; 2E 20 1F
	brk $3F.b		; 00 3F
	brk $F8.b		; 00 F8
	tsb $26DC.w		; 0C DC 26
	stz $3F73.w,X		; 9E 73 3F
	sbc ($3B.b),Y		; F1 3B
	beq 121.b		; F0 79
	bne 104.b		; D0 68
	bne  -8.b		; D0 F8
	bra -120.b		; 80 88
	lda $721F24.l,X		; BF 24 1F 72
	ora $F007F1.l		; 0F F1 07 F0
	ora $D0.b,S		; 03 D0
	ora ($D0.b,X)		; 01 D0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpx #$20.b		; E0 20
	jsr $0018.w		; 20 18 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$40.b		; E0 40
	beq  32.b		; F0 20
	jsr ($3E00.w,X)		; FC 00 3E
	sta $853F.w		; 8D 3F 85
	eor $E92EC4.l,X		; 5F C4 2E E9
	tas		; 1B
	sbc $00FF06.l,X		; FF 06 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sty $05FF.w		; 8C FF 05
	adc $29BF84.l,X		; 7F 84 BF 29
	and $954F4F.l,X		; 3F 4F 4F 95
	sta $14.b,X		; 95 14
	trb $24.b		; 14 24
	bit $78.b		; 24 78
	jmp ($7E3A.w,X)		; 7C 3A 7E
	bcc -71.b		; 90 B9
	sbc $19.b,S		; E3 19
	sbc ($0C.b,S),Y		; F3 0C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF7800.l,X		; FF 00 78 FF
	sec		; 38
	sbc $A1FF90.l,X		; FF 90 FF A1
	lda $2E5F50.l,X		; BF 50 5F 2E
	and $889191.l		; 2F 91 91 88
	dey		; 88
	asl $F9.b		; 06 F9
	lsr $B9.b		; 46 B9
	eor $BA.b		; 45 BA
	sta $7A.b		; 85 7A
	sta $7A.b		; 85 7A
	bra 123.b		; 80 7B
	asl A		; 0A
	adc ($48.b),Y		; 71 48
	and ($B8.b),Y		; 31 B8
	bra  56.b		; 80 38
	brk $3A.b		; 00 3A
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	brk $7B.b		; 00 7B
	brk $71.b		; 00 71
	brk $31.b		; 00 31
	brk $B9.b		; 00 B9
	.db $82, $FF, $82		; 82 FF 82
	sbc $7C80.w,X		; FD 80 7C
	sta ($3E.b,X)		; 81 3E
	sta ($FF.b,X)		; 81 FF
	eor ($9E.b,X)		; 41 9E
	rti		; 40

	ldx $7E60.w,Y		; BE 60 7E
	cop $7C.b		; 02 7C
	brk $7E.b		; 00 7E
	brk $FE.b		; 00 FE
	bra 127.b		; 80 7F
	ora ($3E.b,X)		; 01 3E
	brk $7F.b		; 00 7F
	rti		; 40

	ora $FF7D00.l,X		; 1F 00 7D FF
	tda		; 7B
	sbc $FD73.w,X		; FD 73 FD
	jsr $F3FF.w		; 20 FF F3
	ora $9C55BC.l		; 0F BC 55 9C
	adc ($DE.b),Y		; 71 DE
	and ($FF.b),Y		; 31 FF
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	brk $FA.b		; 00 FA
	cop $04.b		; 02 04
	tsb $53.b		; 04 53
	eor $47.b,X		; 55 47
	eor $000E.w,Y		; 59 0E 00
	inc $5AF8.w,X		; FE F8 5A
	pea $50FC.w		; F4 FC 50
	ldy $CE50.w		; AC 50 CE
	bmi -26.b		; 30 E6
	cli		; 58
	stx $78.b		; 86 78
	asl $6C.b,X		; 16 6C
	sed		; F8
	brk $F4.b		; 00 F4
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $10.b		; 00 10
	brk $58.b		; 00 58
	bvc  24.b		; 50 18
	bne -52.b		; D0 CC
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	asl A		; 0A
	ora [$1C.b]		; 07 1C
	ora [$15.b]		; 07 15
	asl $1C2B.w		; 0E 2B 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $1C00.w		; 0E 00 1C
	brk $B8.b		; 00 B8
	jmp $E65C.w		; 4C 5C E6
	txa		; 8A
	sbc ($04.b,S),Y		; F3 04
	sbc $BC42.w,Y		; F9 42 BC
	lda ($7E.b,X)		; A1 7E
	jmp.w [$646B]		; DC 6B 64
	cmp ($48.b,S),Y		; D3 48
	and $F21FE4.l,X		; 3F E4 1F F2
	ora $B007F8.l		; 0F F8 07 B0
	ora $78.b,S		; 03 78
	ora #$0064.w		; 09 64 00
	cpy $0B00.w		; CC 00 0B
	sbc ($0A.b),Y		; F1 0A
	bvs  15.b		; 70 0F
	bit $1B.b,X		; 34 1B
	sty $83.b		; 84 83
	cpy $C9.b		; C4 C9
	pha		; 48
	lda $35.b		; A5 35
	adc ($78.b),Y		; 71 78
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	ora $C0.b,S		; 03 C0
	ora [$E4.b]		; 07 E4
	sta $F8.b,S		; 83 F8
	phk		; 4B
	jsr ($FE24.w,X)		; FC 24 FE
	bvs  -2.b		; 70 FE
	bne  96.b		; D0 60
	bmi -32.b		; 30 E0
	pla		; 68
	bcs 104.b		; B0 68
	bcs -40.b		; B0 D8
	bcs  24.b		; B0 18
	bvs -72.b		; 70 B8
	bne  56.b		; D0 38
	bne  96.b		; D0 60
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $B0.b		; 00 B0
	bra  48.b		; 80 30
	brk $B0.b		; 00 B0
	brk $10.b		; 00 10
	brk $D0.b		; 00 D0
	cpy #$EB.b		; C0 EB
	adc [$EA.b],Y		; 77 EA
	adc [$EA.b],Y		; 77 EA
	adc [$EA.b],Y		; 77 EA
	adc [$AA.b],Y		; 77 AA
	adc [$A6.b],Y		; 77 A6
	tda		; 7B
	ldx $7B.b		; A6 7B
	ror $3B.b		; 66 3B
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	tda		; 7B
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	brk $29.b		; 00 29
	sbc ($57.b)		; F2 57
	ldy #$7F.b		; A0 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A0.b		; 00 A0
	jmp ($3880.w,X)		; 7C 80 38
	bra   0.b		; 80 00
	sta ($01.b,X)		; 81 01
	ldx $26.b		; A6 26
	pha		; 48
	pha		; 48
	ora ($11.b),Y		; 11 11
	jsl $080222.l		; 22 22 02 08
	asl A		; 0A
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($3E.b,X)		; 01 3E
	rti		; 40

	adc $813CC1.l,X		; 7F C1 3C 81
	ror $7883.w,X		; 7E 83 78
	sta $7C.b,S		; 83 7C
	stx $F0.b		; 86 F0
	stx $F8.b		; 86 F8
	sty $407F.w		; 8C 7F 40
	rol $7F00.w,X		; 3E 00 7F
	ora ($FC.b,X)		; 01 FC
	bra  -2.b		; 80 FE
	.db $82, $F8, $80		; 82 F8 80
	jmp ($7004.w,X)		; 7C 04 70
	brk $D8.b		; 00 D8
	bra -112.b		; 80 90
	brk $90.b		; 00 90
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $38.b		; 00 38
	tsb $E6DC.w		; 0C DC E6
	ror $2773.w,X		; 7E 73 27
	and ($1B.b,X)		; 21 1B
	trb $0C0D.w		; 1C 0D 0C
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	php		; 08
	and $72FFC4.l,X		; 3F C4 FF 72
	adc $182721.l,X		; 7F 21 27 18
	ora $010D0C.l,X		; 1F 0C 0D 01
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra -65.b		; 80 BF
	cpy #$24.b		; C0 24
	bit $44.b		; 24 44
	mvp $40,$40		; 44 40 40
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	dey		; 88
	dey		; 88
	jmp ($037C.w,X)		; 7C 7C 03
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	tsb $1CE3.w		; 0C E3 1C
	cmp [$24.b]		; C7 24
	eor $84C2.w,Y		; 59 C2 84
	sty $43.b		; 84 43
	eor $40.b,S		; 43 40
	rti		; 40

	jmp $384C.w		; 4C 4C 38
	sec		; 38
	bit $F83C.w,X		; 3C 3C F8
	cpx #$BC.b		; E0 BC
	bra  73.b		; 80 49
	bmi  81.b		; 30 51
	jsr $2050.w		; 20 50 20
	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	ldy #$5F.b		; A0 5F
	bcs  71.b		; B0 47
	bcc  79.b		; 90 4F
	tya		; 98
	eor $88.b,S		; 43 88
	eor $8C.b		; 45 8C
	.db $42, $86		; 42 86
	sta ($07.b,X)		; 81 07
	lda $008F20.l,X		; BF 20 8F 00
	sta $008710.l,X		; 9F 10 87 00
	sta $008308.l		; 8F 08 83 00
	sta $04.b		; 85 04
	cop $02.b		; 02 02
	ora $04.b,S		; 03 04
	ora [$01.b]		; 07 01
	phd		; 0B
	asl $07.b		; 06 07
	php		; 08
	ora $001F00.l		; 0F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	inx		; E8
	tsb $DCF0.w		; 0C F0 DC
	cpx #$58.b		; E0 58
	cpx #$58.b		; E0 58
	cpx #$50.b		; E0 50
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	dey		; 88
	iny		; C8
	bpl  80.b		; 10 50
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
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
	ora $140F37.l		; 0F 37 0F 14
	ora $040F14.l		; 0F 14 0F 04
	phd		; 0B
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $16.b		; 00 16
	ora [$04.b],Y		; 17 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	bra -64.b		; 80 C0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	jsr $0000.w		; 20 00 00
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpx #$40.b		; E0 40
	cpx #$30.b		; E0 30
	cpx #$80.b		; E0 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	jsr $80FC.w		; 20 FC 80
	inc $0C08.w,X		; FE 08 0C
	tsb $04.b		; 04 04
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	and $021F00.l,X		; 3F 00 1F 02
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $A4.b		; 00 A4
	bpl  50.b		; 10 32
	pha		; 48
	sec		; 38
	ora $17.b		; 05 17
	dey		; 88
	cmp ($0F.b,S),Y		; D3 0F
	rtl		; 6B

	stz $77.b,X		; 74 77
	sei		; 78
	xce		; FB
	sed		; F8
	eor $884F53.l,X		; 5F 53 4F 88
	ora [$C5.b]		; 07 C5
	php		; 08
	inx		; E8
	tsb $07EC.w		; 0C EC 07
	pea $F862.w		; F4 62 F8
	bvs  -4.b		; 70 FC
	sed		; F8
	beq -12.b		; F0 F4
	inc $6E.b		; E6 6E
	cmp $5F.b,S		; C3 5F
	sta ($BB.b),Y		; 91 BB
	bit $35.b,X		; 34 35
	ror $3EDF.w		; 6E DF 3E
	stz $603F.w,X		; 9E 3F 60
	sbc $02FF44.l,X		; FF 44 FF 02
	sbc $20FF01.l,X		; FF 01 FF 20
	sbc [$24.b],Y		; F7 24
	lda $1C3F18.l		; AF 18 3F 1C
	adc $7458B4.l,X		; 7F B4 58 74
	clc		; 18
	bit $18.b		; 24 18
	tsb $98.b		; 04 98
	sty $C8.b		; 84 C8
	cpy $60.b		; C4 60
	cpx #$30.b		; E0 30
	beq  24.b		; F0 18
	cli		; 58
	rti		; 40

	clc		; 18
	bra  24.b		; 80 18
	cpy #$18.b		; C0 18
	cpx #$88.b		; E0 88
	beq  64.b		; F0 40
	sed		; F8
	jsr $90FC.w		; 20 FC 90
	inc $0300.w,X		; FE 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	ora ($0E.b,X)		; 01 0E
	ora ($1C.b,X)		; 01 1C
	ora $38.b,S		; 03 38
	asl $70.b		; 06 70
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora $181F0C.l		; 0F 0C 1F 18
	and $0CE030.l,X		; 3F 30 E0 0C
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	cpy #$70.b		; C0 70
	bra  56.b		; 80 38
	sed		; F8
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$40.b		; C0 40
	ldy #$20.b		; A0 20
	beq  48.b		; F0 30
	brk $00.b		; 00 00
	sei		; 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	and $007E00.l,X		; 3F 00 7E 00
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $4040.w		; 20 40 40
	rti		; 40

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

	stx $030C.w		; 8E 0C 03
	asl A		; 0A
	brk $01.b		; 00 01
	cpy #$DC.b		; C0 DC
	cpy #$D8.b		; C0 D8
	ldy #$BE.b		; A0 BE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	tsb $BF.b		; 04 BF
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
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
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	jsr $6020.w		; 20 20 60
	bmi  96.b		; 30 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	jsr $00F0.w		; 20 F0 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cpx #$08.b		; E0 08
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
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
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

	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $3F.b		; C5 3F
	inc $0D.b,X		; F6 0D
	inc $0D.b,X		; F6 0D
	inc $0D.b,X		; F6 0D
	sbc ($0E.b)		; F2 0E
	sbc ($0E.b)		; F2 0E
	plx		; FA
	asl $FA.b		; 06 FA
	asl $FF.b		; 06 FF
	cpy #$3D.b		; C0 3D
	bmi  29.b		; 30 1D
	bpl -99.b		; 10 9D
	bcc  94.b		; 90 5E
	bvc  46.b		; 50 2E
	jsr $1016.w		; 20 16 10
	asl $10.b,X		; 16 10
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $9B.b		; 00 9B
	stz $9B.b,X		; 74 9B
	stz $9B.b,X		; 74 9B
	stz $9B.b,X		; 74 9B
	stz $9B.b,X		; 74 9B
	stz $9B.b,X		; 74 9B
	stz $99.b,X		; 74 99
	ror $9A.b,X		; 76 9A
	adc [$75.b],Y		; 77 75
	ora ($76.b,X)		; 01 76
	cop $76.b		; 02 76
	cop $77.b		; 02 77
	ora $75.b,S		; 03 75
	ora ($75.b,X)		; 01 75
	ora ($76.b,X)		; 01 76
	brk $77.b		; 00 77
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	sbc $190707.l,X		; FF 07 07 19
	ora $6262.w,Y		; 19 62 62
	.db $82, $82, $04		; 82 82 04
	tsb $88.b		; 04 88
	dey		; 88
	bvc  80.b		; 50 50
	ora [$10.b]		; 07 10
	ora $180F18.l		; 0F 18 0F 18
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	cmp $DC61.w,X		; DD 61 DC
	adc ($9C.b,X)		; 61 9C
	and ($9C.b,X)		; 21 9C
	and ($DE.b,X)		; 21 DE
	and $DE.b,S		; 23 DE
	jsl $D822DC.l		; 22 DC 22 D8
	jsl $9F009E.l		; 22 9E 00 9F
	ora ($DF.b,X)		; 01 DF
	ora ($DE.b,X)		; 01 DE
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $DE.b		; 00 DE
	cop $DC.b		; 02 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora ($77.b,X)		; 01 77
	ora $40.b		; 05 40
	rti		; 40

	sta ($21.b,X)		; 81 21
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $3F.b		; 00 3F
	brk $77.b		; 00 77
	rti		; 40

	eor ($00.b,X)		; 41 00
	lda ($01.b,X)		; A1 01
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	brk $37.b		; 00 37
	cpx #$5B.b		; E0 5B
	lda $3A.b,S		; A3 3A
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $AF.b		; 00 AF
	brk $FF.b		; 00 FF
	ora $7F.b,S		; 03 7F
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $16.b		; 06 16
	cmp [$10.b],Y		; D7 10
	cmp #$01E0.w		; C9 E0 01
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$06.b],Y		; 17 06
	lda $00FE10.l,X		; BF 10 FE 00
	inx		; E8
	brk $C0.b		; 00 C0
	ora ($00.b,X)		; 01 00
	eor $5B34.w,Y		; 59 34 5B
	ldx $B5.b,Y		; B6 B5
	ror A		; 6A
	ldy $6A.b,X		; B4 6A
	rol $E8.b,X		; 36 E8
	ror $D8.b		; 66 D8
	ror $6FD8.w		; 6E D8 6F
	cld		; D8
	and [$04.b],Y		; 37 04
	and ($80.b),Y		; 31 80
	rtl		; 6B

	cop $69.b		; 02 69
	brk $E8.b		; 00 E8
	ora ($D8.b,X)		; 01 D8
	ora ($D8.b,X)		; 01 D8
	ora ($D8.b,X)		; 01 D8
	brk $3B.b		; 00 3B
	lsr $DE.b		; 46 DE
	.db $42, $06		; 42 06
	sec		; 38
	and ($5E.b,X)		; 21 5E
.INDEX 8
	sep #$5C		; E2 5C
.INDEX 8
	sep #$5C		; E2 5C
	sbc [$68.b],Y		; F7 68
	bcs 111.b		; B0 6F
	cpy $44.b		; C4 44
	sta ($20.b,X)		; 81 20
	sta $0678.w,Y		; 99 78 06
	dec $01.b		; C6 01
	cmp ($41.b,X)		; C1 41
	cmp ($20.b,X)		; C1 20
	cpx #$0E.b		; E0 0E
	inc $01FD.w		; EE FD 01
	plx		; FA
	ora [$E4.b]		; 07 E4
	tas		; 1B
	cpy $3B.b		; C4 3B
	eor [$38.b]		; 47 38
	lsr $39.b		; 46 39
	inc $19.b		; E6 19
	stx $0671.w		; 8E 71 06
	brk $85.b		; 00 85
	ora $9A.b		; 05 9A
	inc A		; 1A
	jsr $8020.w		; 20 20 80
	bra -127.b		; 80 81
	bra   1.b		; 80 01
	brk $71.b		; 00 71
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $7F.b		; 00 7F
	ora [$FE.b]		; 07 FE
	ora $FE.b,S		; 03 FE
	ora $E7.b,S		; 03 E7
	php		; 08
	inc $0009.w,X		; FE 09 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	and $B14743.l,X		; 3F 43 47 B1
	lda ($41.b)		; B2 41
	.db $42, $98		; 42 98
	dey		; 88
	lda ($80.b),Y		; B1 80
	brk $00.b		; 00 00
	trb $7D60.w		; 1C 60 7D
.ACCU 8
.INDEX 8
	sep #$70		; E2 70
	cmp $D7BF7B.l,X		; DF 7B BF D7
	adc $807BC6.l,X		; 7F C6 7B 80
	adc $600000.l,X		; 7F 00 00 60
	brk $E2.b		; 00 E2
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $3A.b		; 00 3A
.ACCU 16
	rep #$26		; C2 26
	xce		; FB
	trb $FF.b		; 14 FF
	eor $CBBE.w,Y		; 59 BE CB
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rep #$00		; C2 00
	xce		; FB
	brk $FF.b		; 00 FF
	brk $BE.b		; 00 BE
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	ora $EF.b,S		; 03 EF
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	ora $130704.l,X		; 1F 04 07 13
	ora $FA.b,S		; 03 FA
	asl $FA.b		; 06 FA
	asl $DA.b		; 06 DA
	rol $42.b		; 26 42
	ldy $52.b,X		; B4 52
	ldy $52.b,X		; B4 52
	ldy $32.b,X		; B4 32
	cpx $24.b		; E4 24
	cpx #$A6.b		; E0 A6
	ldy #$46.b		; A0 46
	rti		; 40

	ldx $80.b		; A6 80
	ldy $80.b,X		; B4 80
	ldy $80.b,X		; B4 80
	ldy $80.b,X		; B4 80
	stz $00.b		; 64 00
	rts		; 60

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
	brk $5A.b		; 00 5A
	and [$5A.b],Y		; 37 5A
	and [$5A.b],Y		; 37 5A
	and [$16.b],Y		; 37 16
	and ($36.b,S),Y		; 33 36
	ora ($25.b,S),Y		; 13 25
	ora ($05.b,S),Y		; 13 05
	ora ($03.b,S),Y		; 13 03
	ora ($37.b),Y		; 11 37
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $11.b		; 00 11
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra -81.b		; 80 AF
	bvc -121.b		; 50 87
	sei		; 78
	eor $32.b,S		; 43 32
	eor ($30.b,X)		; 41 30
	ora [$30.b]		; 07 30
	and [$10.b]		; 27 10
	lda ($21.b,X)		; A1 21
	sta ($11.b),Y		; 91 11
	pha		; 48
	php		; 08
	ror $16.b,X		; 76 16
	and $3F11.w,X		; 3D 11 3F
	bpl  47.b		; 10 2F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	tsb $0403.w		; 0C 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	cld		; D8
	jsl $9C24DC.l		; 22 DC 24 9C
	bit $98.b		; 24 98
	bit $D0.b		; 24 D0
	stz $D0.b		; 64 D0
	stz $98.b		; 64 98
	jmp ($6C18.w)		; 6C 18 6C
	jmp.w [$D800]		; DC 00 D8
	brk $D8.b		; 00 D8
	brk $DC.b		; 00 DC
	tsb $9C.b		; 04 9C
	tsb $98.b		; 04 98
	brk $D0.b		; 00 D0
	rti		; 40

	bne  64.b		; D0 40
	ora #$3007.w		; 09 07 30
	phy		; 5A
	stx $46.b,Y		; 96 46
	bvc  72.b		; 50 48
	pha		; 48
	brk $30.b		; 00 30
	bmi  23.b		; 30 17
	tas		; 1B
	ora $1D010F.l		; 0F 0F 01 1D
	ora $7F.b		; 05 7F
	asl $40DE.w		; 0E DE 40
	cli		; 58
	brk $48.b		; 00 48
	jsr $1033.w		; 20 33 10
	ora $380F0B.l,X		; 1F 0B 0F 38
	bmi  24.b		; 30 18
	php		; 08
	pha		; 48
	bvc  32.b		; 50 20
	bpl  80.b		; 10 50
	rti		; 40

	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpx #$FC.b		; E0 FC
	cpy #$D8.b		; C0 D8
	brk $58.b		; 00 58
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	ora $09.b,S		; 03 09
	ora [$01.b]		; 07 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $6F.b		; 00 6F
	cld		; D8
	cmp $B9D6B8.l		; CF B8 D6 B9
	dec $B9.b,X		; D6 B9
	dec $B9.b,X		; D6 B9
	cmp [$B8.b],Y		; D7 B8
	sty $7B.b		; 84 7B
	tya		; 98
	adc [$D8.b]		; 67 D8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $21.b		; 00 21
	lsr $1EE1.w,X		; 5E E1 1E
	sta ($2D.b,S),Y		; 93 2D
	ora $8F5793.l		; 0F 93 57 8F
	cmp [$0F.b],Y		; D7 0F
	and [$8F.b]		; 27 8F
	lda [$17.b]		; A7 17
	bpl -48.b		; 10 D0
	brk $40.b		; 00 40
	ora ($61.b,X)		; 01 61
	ora $73.b,S		; 03 73
	ora [$3F.b]		; 07 3F
	ora [$3F.b]		; 07 3F
	ora $7F.b,S		; 03 7F
	ora $7F.b,S		; 03 7F
	.db $82, $7D, $C2		; 82 7D C2
	lda $F9D6EB.l,X		; BF EB D6 F9
	sbc [$E9.b]		; E7 E9
	sbc [$D8.b]		; E7 D8
	cmp [$DC.b]		; C7 DC
	cmp $DC.b,S		; C3 DC
	cmp $0D.b,S		; C3 0D
	php		; 08
	sta [$80.b]		; 87 80
	dec $C0.b		; C6 C0
	cmp [$E0.b]		; C7 E0
	cmp [$F0.b]		; C7 F0
	cmp [$E0.b]		; C7 E0
	sta $E0.b,S		; 83 E0
	sta $E0.b,S		; 83 E0
	dec $01.b,X		; D6 01
	ply		; 7A
	and $1B.b		; 25 1B
	rol $0D.b		; 26 0D
	rol $39.b		; 26 39
	ora ($2E.b)		; 12 2E
	ora ($44.b,S),Y		; 13 44
	and ($5F.b),Y		; 31 5F
	and #$0039.w		; 29 39 00
	ora $3E00.w,Y		; 19 00 3E
	bit $18.b		; 24 18
	brk $0E.b		; 00 0E
	cop $1C.b		; 02 1C
	bpl  47.b		; 10 2F
	ora ($26.b,X)		; 01 26
	brk $AA.b		; 00 AA
	mvn $40,$98		; 54 98 40
	ldx $D0.b,Y		; B6 D0
	cmp $D82FBE.l		; CF BE 2F D8
	beq   8.b		; F0 08
	sed		; F8
	tsb $74.b		; 04 74
	txa		; 8A
	eor $00.b,X		; 55 00
	adc [$00.b]		; 67 00
	sbc #$1000.w		; E9 00 10
	bpl  71.b		; 10 47
	brk $0F.b		; 00 0F
	phd		; 0B
	ora [$05.b]		; 07 05
	phd		; 0B
	asl A		; 0A
	adc ($9C.b,S),Y		; 73 9C
	and [$D8.b]		; 27 D8
	and $215FC0.l,X		; 3F C0 5F 21
	cmp $645F62.l,X		; DF 62 5F 64
	ldx $7D48.w,Y		; BE 48 7D
	sta ($1C.b,X)		; 81 1C
	brk $98.b		; 00 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $81.b		; 00 81
	brk $83.b		; 00 83
	bra -121.b		; 80 87
	brk $8E.b		; 00 8E
	bra -25.b		; 80 E7
	pha		; 48
	rts		; 60

	dey		; 88
	cpx #$90.b		; E0 90
	cpy #$10.b		; C0 10
	bra  32.b		; 80 20
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	sec		; 38
	phd		; 0B
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $3101.w,X		; FD 01 31
	eor ($0D.b),Y		; 51 0D
	adc ($9D.b,X)		; 61 9D
	adc ($10.b,X)		; 61 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  19.b		; 10 13
	ora ($FE.b,S),Y		; 13 FE
	jsr ($008E.w,X)		; FC 8E 00
	dec $DE40.w,X		; DE 40 DE
	rti		; 40

	ora ($01.b)		; 12 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	rts		; 60

	cpy #$60.b		; C0 60
	cpy #$B0.b		; C0 B0
	rts		; 60

	bcs -32.b		; B0 E0
	cld		; D8
	bcs -40.b		; B0 D8
	bcs -128.b		; B0 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	tas		; 1B
	ora $0000FC.l,X		; 1F FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora $FF.b,S		; 03 FF
	trb $00FF.w		; 1C FF 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	ora $606C4C.l		; 0F 4C 6C 60
	rts		; 60

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	tsb $40FE.w		; 0C FE 40
	cpx $F000.w		; EC 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	and $FCFC1F.l,X		; 3F 1F FC FC
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $1CFF07.l,X		; 3F 07 FF 1C
	sbc $00FCE0.l,X		; FF E0 FC 00
	cpx #$FE.b		; E0 FE
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	trb $98.b		; 14 98
	sec		; 38
	bcs -80.b		; B0 B0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	trb $F4.b		; 14 F4
	clc		; 18
	clv		; B8
	bcs -80.b		; B0 B0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $E0.b		; 24 E0
	jsr $20C0.w		; 20 C0 20
	cpy #$40.b		; C0 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B9.b		; 00 B9
	clv		; B8
	eor $54.b,X		; 55 54
	plb		; AB
	plp		; 28
	cmp [$10.b],Y		; D7 10
	sbc $00FF00.l		; EF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $10FF.w,Y		; 39 FF 10
	inc $7D21.w,X		; FE 21 7D
	trb $3C.b		; 14 3C
	.db $42, $52		; 42 52
	eor ($52.b)		; 52 52
	sta ($91.b),Y		; 91 91
	sta ($91.b),Y		; 91 91
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	phd		; 0B
	phd		; 0B
	phd		; 0B
	jsr ($E1F4.w,X)		; FC F4 E1
	sbc $03.b,S		; E3 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $17.b		; 00 17
	phd		; 0B
	sbc $E0FF08.l,X		; FF 08 FF E0
	sbc $03.b,X		; F5 03
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0B.b,S		; 03 0B
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $17.b		; 00 17
	phd		; 0B
	eor $000000.l,X		; 5F 00 00 00
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	phd		; 0B
	ora $F23E7C.l		; 0F 7C 3E F2
	pea $D0C4.w		; F4 C4 D0
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $087F03.l,X		; 1F 03 7F 08
	sbc $C4FE32.l,X		; FF 32 FE C4
	pea $F010.w		; F4 10 F0
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $1001.w		; 0D 01 10
	brk $30.b		; 00 30
	clc		; 18
	jsr $2A00.w		; 20 00 2A
	ora #$04.b		; 09 04
	asl $00.b,X		; 16 00
	tsb $00.b		; 04 00
	ora $001D00.l,X		; 1F 00 1D 00
	bpl  16.b		; 10 10
	sec		; 38
	brk $21.b		; 00 21
	php		; 08
	and $001701.l		; 2F 01 17 00
	brk $83.b		; 00 83
	rti		; 40

	sta $1DB0.w		; 8D B0 1D
	and #$46.b		; 29 46
	ror $4C4E.w		; 6E 4E 4C
	cop $82.b		; 02 82
	rol $20.b		; 26 20
	brk $A0.b		; 00 A0
	brk $D7.b		; 00 D7
	brk $FF.b		; 00 FF
	ora ($7F.b,X)		; 01 7F
	trb $57.b		; 14 57
	sei		; 78
	sbc $907B78.l,X		; FF 78 7B 90
	ldx $00.b,Y		; B6 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $0E.b		; 00 0E
	asl $0000.w		; 0E 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ror $09.b,X		; 76 09
	inx		; E8
	and [$F7.b],Y		; 37 F7
	adc $295FED.l		; 6F ED 5F 29
	cmp $E5DB25.l,X		; DF 25 DB E5
	txy		; 9B
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	and [$00.b],Y		; 37 00
	sbc $005F80.l		; EF 80 5F 00
	cmp $00DB00.l,X		; DF 00 DB 00
	tas		; 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003F01.l		; 0F 01 3F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	asl $07.b		; 06 07
	rol $591F.w,X		; 3E 1F 59
	phk		; 4B
	eor ($87.b,X)		; 41 87
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $3E00.w		; 0E 00 3E
	asl $FE.b		; 06 FE
	ora $41FC.w,Y		; 19 FC 41
	sed		; F8
	sta $E0.b,S		; 83 E0
	adc ($1C.b,S),Y		; 73 1C
	adc [$38.b],Y		; 77 38
	sbc [$38.b]		; E7 38
	sbc $70CF70.l		; EF 70 CF 70
	cmp $E966.w,Y		; D9 66 E9
	lsr $8D.b		; 46 8D
	lsr $1D.b		; 46 1D
	ora ($3A.b,X)		; 01 3A
	cop $3A.b		; 02 3A
	cop $73.b		; 02 73
	ora $71.b,S		; 03 71
	ora ($67.b,X)		; 01 67
	ora ($46.b,X)		; 01 46
	brk $46.b		; 00 46
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	sbc [$07.b]		; E7 07
	ora [$19.b]		; 07 19
	ora $6262.w,Y		; 19 62 62
	.db $82, $82, $04		; 82 82 04
	tsb $88.b		; 04 88
	dey		; 88
	bvc  80.b		; 50 50
	plx		; FA
	tsb $03.b		; 04 03
	jsr ($FEF1.w,X)		; FC F1 FE
	cmp $B9FF.w,Y		; D9 FF B9
	dec $DEAB.w,X		; DE AB DE
	ror $EB.b,X		; 76 EB
	inc $75.b,X		; F6 75
	tsb $00.b		; 04 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FF.b		; 00 FF
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $8B.b		; 00 8B
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	sei		; 78
	sbc $A2DFB0.l,X		; FF B0 DF A2
	wai		; CB
	tsb $87.b		; 04 87
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	and ($7B.b,S),Y		; 33 7B
	ldy $34.b		; A4 34
	sta ($30.b,X)		; 81 30
	ora [$34.b]		; 07 34
	ora $30.b,S		; 03 30
	stp		; DB
	jsr $27C8.w		; 20 C8 27
	jsr $86DB.w		; 20 DB 86
	sbc $86.b,X		; F5 86
	sbc $CC27.w		; ED 27 CC
	and [$CE.b]		; 27 CE
	ply		; 7A
	cmp $3C.b		; C5 3C
	jsr $071F.w		; 20 1F 07
	cld		; D8
	trb $1CF0.w		; 1C F0 1C
	cpx $1C.b		; E4 1C
	cpy $1C.b		; C4 1C
.INDEX 16
	rep #$1E		; C2 1E
	cmp ($0D.b,X)		; C1 0D
	cmp [$00.b]		; C7 00
	ror $1C81.w,X		; 7E 81 1C
	sbc $24.b,S		; E3 24
	cmp $24.b,S		; C3 24
	cmp $7E.b,S		; C3 7E
	sta ($08.b,X)		; 81 08
	sbc [$18.b],Y		; F7 18
	sbc [$38.b]		; E7 38
	brk $99.b		; 00 99
	sta ($22.b,X)		; 81 22
	jsl $181818.l		; 22 18 18 18
	clc		; 18
	brk $00.b		; 00 00
	sbc [$E7.b]		; E7 E7
	brk $00.b		; 00 00
	cpx $48.b		; E4 48
	lsr $4E94.w		; 4E 94 4E
	ldy $5F.b,X		; B4 5F
	ldx $7F.b		; A6 7F
	stx $5B.b		; 86 5B
	lda [$DB.b]		; A7 DB
	and [$6D.b]		; 27 6D
	lda ($30.b,S),Y		; B3 30
	brk $B4.b		; 00 B4
	bcc  36.b		; 90 24
	jsr $0006.w		; 20 06 00
	asl $00.b		; 06 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	lda ($80.b,S),Y		; B3 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	bit $F120.w		; 2C 20 F1
	sbc ($C1.b),Y		; F1 C1
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sbc $C1F120.l,X		; FF 20 F1 C1
	sbc ($00.b),Y		; F1 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	ldy #$80A0.w		; A0 A0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	ldy #$80A0.w		; A0 A0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1B1D.w,Y		; 19 1D 1B
	ora ($00.b),Y		; 11 00
	asl $06.b		; 06 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1B.b,X)		; 01 1B
	ora $001F.w,Y		; 19 1F 00
	ora ($04.b),Y		; 11 04
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $9C.b		; 00 9C
	sta ($08.b)		; 92 08
	php		; 08
	tsb $08.b		; 04 08
	sec		; 38
	sec		; 38
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	bra -98.b		; 80 9E
	brk $0C.b		; 00 0C
	brk $3C.b		; 00 3C
	php		; 08
	sed		; F8
	jsr $60E0.w		; 20 E0 60
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($5A.b,X)		; 21 5A
	stx $29.b,Y		; 96 29
	cld		; D8
	and [$CA.b]		; 27 CA
	ora ($6E.b),Y		; 11 6E
	ora ($27.b),Y		; 11 27
	dey		; 88
	and ($C4.b,S),Y		; 33 C4
	txy		; 9B
	rti		; 40

	dec $CD40.w,X		; DE 40 CD
	ora ($E3.b,X)		; 01 E3
	and $E5.b,S		; 23 E5
	ora $F0.b		; 05 F0
	bpl -16.b		; 10 F0
	bra 120.b		; 80 78
	rti		; 40

	bit $1500.w,X		; 3C 00 15
	tsb $E4.b		; 04 E4
	bpl -32.b		; 10 E0
	rts		; 60

	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $FF0400.l		; 0F 00 04 FF
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	stx $03.b		; 86 03
	tsb $1907.w		; 0C 07 19
	asl $1D33.w		; 0E 33 1D
	ror $3B.b		; 66 3B
	cpy $1977.w		; CC 77 19
	inc $1CFB.w		; EE FB 1C
	ora $80.b,S		; 03 80
	ora [$00.b]		; 07 00
	asl $1D00.w		; 0E 00 1D
	brk $3B.b		; 00 3B
	brk $77.b		; 00 77
	brk $EE.b		; 00 EE
	brk $1C.b		; 00 1C
	brk $CD.b		; 00 CD
	asl $85.b		; 06 85
	asl $87.b		; 06 87
	asl $86.b		; 06 86
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra -81.b		; 80 AF
	bvc -121.b		; 50 87
	sei		; 78
	eor $32.b,S		; 43 32
	eor ($30.b,X)		; 41 30
	ora [$30.b]		; 07 30
	and [$10.b]		; 27 10
	lda ($21.b,X)		; A1 21
	sta ($11.b),Y		; 91 11
	pha		; 48
	php		; 08
	ror $16.b,X		; 76 16
	and $3F11.w,X		; 3D 11 3F
	bpl  47.b		; 10 2F
	brk $0F.b		; 00 0F
	brk $67.b		; 00 67
	ldy #$83B8.w		; A0 B8 83
	adc $4103.w,Y		; 79 03 41
	ora $22.b,S		; 03 22
	sta ($1A.b,X)		; 81 1A
	cmp $C7.b		; C5 C7
	sec		; 38
	lda $001800.l,X		; BF 00 18 00
	mvn $FC,$00		; 54 00 FC
	brk $FC.b		; 00 FC
	sec		; 38
	sbc $7998.w,X		; FD 98 79
	rti		; 40

	bpl  16.b		; 10 10
	rti		; 40

	brk $96.b		; 00 96
	clc		; 18
	stx $EC79.w		; 8E 79 EC
	and ($5C.b),Y		; 31 5C
	lda ($58.b)		; B2 58
	ldx #$64B8.w		; A2 B8 64
	bcs  68.b		; B0 44
	pea $0F48.w		; F4 48 0F
	sei		; 78
	ora [$61.b]		; 07 61
	rol $8E30.w,X		; 3E 30 8E
	cop $BC.b		; 02 BC
	jsr $041C.w		; 20 1C 04
	sei		; 78
	rti		; 40

	sec		; 38
	php		; 08
	adc ($C5.b)		; 72 C5
	lda $D2A9C0.l,X		; BF C0 A9 D2
	jsr $65D9.w		; 20 D9 65
	tya		; 98
	adc $4280.w,X		; 7D 80 42
	clv		; B8
	txs		; 9A
	adc ($C0.b,X)		; 61 C0
	tsb $04C0.w		; 0C C0 04
	cpy #$C006.w		; C0 06 C0
	ora [$80.b]		; 07 80
	ora $80.b,S		; 03 80
	ora $80.b,S		; 03 80
	ora [$18.b]		; 07 18
	ora $3EEB1C.l,X		; 1F 1C EB 3E
	cmp $3EFF.w,X		; DD FF 3E
	inc $FEFE.w,X		; FE FE FE
	inc $FCFC.w,X		; FE FC FC
	adc $7DFC.w,X		; 7D FC 7D
	jmp ($0808.w,X)		; 7C 08 08
	trb $3E1C.w		; 1C 1C 3E
	rol $FF7E.w,X		; 3E 7E FF
	ror $7CFF.w,X		; 7E FF 7C
	sbc $38FE38.l,X		; FF 38 FE 38
	inc $B36D.w,X		; FE 6D B3
	cmp [$39.b],Y		; D7 39
	stx $79.b,Y		; 96 79
	txa		; 8A
	adc $7C8B.w,X		; 7D 8B 7C
	sta [$7C.b]		; 87 7C
	ora [$FC.b]		; 07 FC
	cmp $3E.b		; C5 3E
	and ($00.b,S),Y		; 33 00
	and $7900.w,Y		; 39 00 79
	brk $7D.b		; 00 7D
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $3E.b		; 00 3E
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra  96.b		; 80 60
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $B9.b		; 00 B9
	clv		; B8
	eor $54.b,X		; 55 54
	plb		; AB
	plp		; 28
	cmp [$10.b],Y		; D7 10
	sbc $00FF00.l		; EF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $10FF.w,Y		; 39 FF 10
	inc $7D21.w,X		; FE 21 7D
	trb $3C.b		; 14 3C
	.db $42, $52		; 42 52
	eor ($52.b)		; 52 52
	sta ($91.b),Y		; 91 91
	sta ($91.b),Y		; 91 91
	sbc $1E.b		; E5 1E
	sbc ($0E.b),Y		; F1 0E
	sbc ($0E.b,S),Y		; F3 0E
	xce		; FB
	asl $FB.b		; 06 FB
	asl $FB.b		; 06 FB
	asl $FB.b		; 06 FB
	asl $FD.b		; 06 FD
	asl $DE.b		; 06 DE
	cpy #$303E.w		; C0 3E 30
	asl $9610.w,X		; 1E 10 96
	bcc  86.b		; 90 56
	bvc  38.b		; 50 26
	jsr $1016.w		; 20 16 10
	asl $10.b,X		; 16 10
	ora $613F41.l,X		; 1F 41 3F 61
	rol $1E60.w,X		; 3E 60 1E
	rts		; 60

	ora $200F20.l,X		; 1F 20 0F 20
	ora $301F20.l		; 0F 20 1F 30
	rol $1E00.w,X		; 3E 00 1E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	ora $001F00.l,X		; 1F 00 1F 00
	ora $857600.l		; 0F 00 76 85
	adc ($85.b,S),Y		; 73 85
	adc ($85.b,S),Y		; 73 85
	adc ($85.b,S),Y		; 73 85
	ply		; 7A
	sta $897A.w		; 8D 7A 89
	adc ($89.b)		; 72 89
	rts		; 60

	bit #$79.b		; 89 79
	brk $7D.b		; 00 7D
	tsb $7D.b		; 04 7D
	tsb $79.b		; 04 79
	brk $71.b		; 00 71
	brk $71.b		; 00 71
	brk $79.b		; 00 79
	php		; 08
	adc ($00.b),Y		; 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sta $0F.b,S		; 83 0F
	cmp $30FC3C.l		; CF 3C FC 30
	sed		; F8
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $0C3F03.l		; 0F 03 3F 0C
	and $003C30.l,X		; 3F 30 3C 00
	sec		; 38
	brk $60.b		; 00 60
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
	rts		; 60

	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	brk $14.b		; 00 14
	inc A		; 1A
	trb $905C.w		; 1C 5C 90
	bne  64.b		; D0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	php		; 08
	jsr ($FC10.w,X)		; FC 10 FC
	rti		; 40

	cpx #$4000.w		; E0 00 40
	php		; 08
	bra -120.b		; 80 88
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
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
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $FD.b		; 00 FD
	ora ($31.b,X)		; 01 31
	eor ($0D.b),Y		; 51 0D
	adc ($9D.b,X)		; 61 9D
	adc ($10.b,X)		; 61 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  19.b		; 10 13
	ora ($FE.b,S),Y		; 13 FE
	jsr ($008E.w,X)		; FC 8E 00
	dec $DE40.w,X		; DE 40 DE
	rti		; 40

	inc $0D.b,X		; F6 0D
.INDEX 8
	sep #$1D		; E2 1D
	sbc $BB4119.l		; EF 19 41 BB
	cli		; 58
	lda ($01.b,S),Y		; B3 01
	sbc ($B0.b)		; F2 B0
	.db $62, $A0, $62		; 62 A0 62
	lda $5DA0.w		; AD A0 5D
	rti		; 40

	sta $BB80.w,Y		; 99 80 BB
	bra -77.b		; 80 B3
	bra -14.b		; 80 F2
	bra  98.b		; 80 62
	brk $62.b		; 00 62
	brk $1F.b		; 00 1F
	bmi  15.b		; 30 0F
	bpl  14.b		; 10 0E
	bpl  14.b		; 10 0E
	bpl  15.b		; 10 0F
	ora ($0F.b),Y		; 11 0F
	ora ($0E.b),Y		; 11 0E
	ora ($0C.b),Y		; 11 0C
	and ($0F.b),Y		; 31 0F
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	ora ($1F.b),Y		; 11 1F
	ora ($61.b),Y		; 11 61
	dey		; 88
	adc ($90.b),Y		; 71 90
	bvs -112.b		; 70 90
	rts		; 60

	bcc  64.b		; 90 40
	bcc  64.b		; 90 40
	bcc  96.b		; 90 60
	bcs  96.b		; B0 60
	bcs 112.b		; B0 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	bpl 112.b		; 10 70
	bpl  96.b		; 10 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$DC.b		; C0 DC
	jmp $7999F1.l		; 5C F1 99 79
	sbc ($1E.b,X)		; E1 1E
	adc $0000.w,Y		; 79 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jmp $F991DC.l		; 5C DC 91 F9
	adc ($F9.b,X)		; 61 F9
	clc		; 18
	sbc $000000.l,X		; FF 00 00 00
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
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $03.b		; 00 03
	ora ($05.b,X)		; 01 05
	ora $06.b,S		; 03 06
	ora $0A.b,S		; 03 0A
	ora [$0E.b]		; 07 0E
	ora [$16.b]		; 07 16
	ora $2C0F16.l		; 0F 16 0F 2C
	ora $030001.l,X		; 1F 01 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $76.b		; 00 76
	lda #$6F.b		; A9 6F
	beq 111.b		; F0 6F
	beq  79.b		; F0 4F
	beq -37.b		; F0 DB
	stz $B5.b		; 64 B5
	lsr $13E6.w		; 4E E6 13
	dec $A821.w		; CE 21 A8
	brk $F0.b		; 00 F0
	brk $F2.b		; 00 F2
	cop $F4.b		; 02 F4
	tsb $60.b		; 04 60
	brk $48.b		; 00 48
	php		; 08
	trb $3F10.w		; 1C 10 3F
	and ($45.b,X)		; 21 45
	tyx		; BB
	lda [$D8.b]		; A7 D8
	tyx		; BB
	mvp $24,$E3		; 44 E3 24
	sbc $FB02.w		; ED 02 FB
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	bra  65.b		; 80 41
	rti		; 40

	brk $00.b		; 00 00
	clc		; 18
	brk $1C.b		; 00 1C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	tsb $18E0.w		; 0C E0 18
	rti		; 40

	bmi -128.b		; 30 80
	bvs -64.b		; 70 C0
	jsr $20C0.w		; 20 C0 20
	jsr $10C0.w		; 20 C0 10
	cpx #$F8.b		; E0 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr $0120.w		; 20 20 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $3E.b		; 00 3E
	cmp ($3F.b,X)		; C1 3F
	cpy #$7F.b		; C0 7F
	bra  83.b		; 80 53
	tya		; 98
	and $3CBC.w,Y		; 39 BC 3C
	lda $BD3C.w,X		; BD 3C BD
	bit $D2BD.w,X		; 3C BD D2
	ora ($DD.b)		; 12 DD
	ora $22A2.w,X		; 1D A2 22
	bra  60.b		; 80 3C
	bcc 126.b		; 90 7E
	sta $9D7E.w,Y		; 99 7E 9D
	ror $7E9D.w,X		; 7E 9D 7E
	sta ($7C.b)		; 92 7C
	ldx $78.b,Y		; B6 78
	and #$F6.b		; 29 F6
	adc ($EE.b),Y		; 71 EE
	adc ($DE.b,X)		; 61 DE
	adc ($CE.b),Y		; 71 CE
	cmp $EC93E0.l,X		; DF E0 93 EC
	jmp ($7801.w,X)		; 7C 01 78
	ora ($F4.b,X)		; 01 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bne  16.b		; D0 10
	cmp ($01.b,X)		; C1 01
	sep #$02		; E2 02
	sbc #$09.b		; E9 09
	ora $3F5F73.l,X		; 1F 73 5F 3F
	adc $676F1F.l		; 6F 1F 6F 67
	tsa		; 3B
	tda		; 7B
	sbc $FE0D.w,X		; FD 0D FE
	cop $FF.b		; 02 FF
	ora ($03.b,X)		; 01 03
	sbc ($07.b,S),Y		; F3 07
	sbc $43FF07.l,X		; FF 07 FF 43
	sbc $FCFF31.l,X		; FF 31 FF FC
	sbc $27AFAE.l,X		; FF AE AF 27
	and [$00.b]		; 27 00
	ora ($A2.b,X)		; 01 A2
	sbc ($EE.b,X)		; E1 EE
	adc $EC.b		; 65 EC
	tsb $0ED6.w		; 0C D6 0E
	bpl  12.b		; 10 0C
	clc		; 18
	tsb $02.b		; 04 02
	asl $8100.w		; 0E 00 81
	brk $EB.b		; 00 EB
	rts		; 60

	sbc $07FC00.l,X		; FF 00 FC 07
	sbc $03FB03.l,X		; FF 03 FB 03
	tsa		; 3B
	brk $1E.b		; 00 1E
	rti		; 40

	brk $74.b		; 00 74
	stz $8E.b,X		; 74 8E
	asl $8383.w		; 0E 83 83
	tsb $03.b		; 04 03
	ora $03.b,S		; 03 03
	sta ($DA.b)		; 92 DA
	tsb $00C0.w		; 0C C0 00
	rti		; 40

	bit $F4.b		; 24 F4
	cop $FE.b		; 02 FE
	ora ($9F.b,X)		; 01 9F
	bra -121.b		; 80 87
	sta ($83.b,X)		; 81 83
	lda ($FA.b)		; B2 FA
	bmi 124.b		; 30 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	asl $7503.w,X		; 1E 03 75
	ora $007ED1.l		; 0F D1 7E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $7E.b		; 00 7E
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	php		; 08
	xba		; EB
	trb $FE1F.w		; 1C 1F FE
	cmp $FFC7FF.l		; CF FF C7 FF
	sta ($EF.b)		; 92 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	brk $80.b		; 00 80
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	asl $1C1E.w		; 0E 1E 1C
	bit $7C3C.w,X		; 3C 3C 7C
	sei		; 78
	beq  -8.b		; F0 F8
	inx		; E8
	beq   2.b		; F0 02
	ora [$06.b]		; 07 06
	ora $1C1F0E.l		; 0F 0E 1F 1C
	and $707E38.l,X		; 3F 38 7E 70
	jsr ($FCE0.w,X)		; FC E0 FC
	cpy #$F8.b		; C0 F8
	ora [$1E.b]		; 07 1E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $FF.b		; 06 FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$80.b		; A0 80
	clv		; B8
	cpx #$9E.b		; E0 9E
	clv		; B8
	ora [$1E.b]		; 07 1E
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -96.b		; 80 A0
	ldy #$F8.b		; A0 F8
	tya		; 98
	inc $7F06.w,X		; FE 06 7F
	ora ($3F.b,X)		; 01 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	bit $281F.w		; 2C 1F 28
	ora $503E59.l,X		; 1F 59 3E 50
	and $A13E50.l,X		; 3F 50 3E A1
	jmp ($7CA0.w,X)		; 7C A0 7C
	stz $1F63.w		; 9C 63 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3D.b		; 00 3D
	brk $7B.b		; 00 7B
	brk $77.b		; 00 77
	tsb $6F.b		; 04 6F
	ora $BA419C.l		; 0F 9C 41 BA
	eor $35.b,S		; 43 35
	sta [$6B.b]		; 87 6B
	ora $9913CF.l		; 0F CF 13 99
	and $AF.b,S		; 23 AF
	cmp ($44.b),Y		; D1 44
	lda $003E.w,Y		; B9 3E 00
	jmp ($7840.w,X)		; 7C 40 78
	ora ($F1.b,X)		; 01 F1
	ora $E1.b,S		; 03 E1
	ora [$C0.b]		; 07 C0
	ora [$10.b]		; 07 10
	ora $38.b,S		; 03 38
	ora $8C.b,S		; 03 8C
	bvs -124.b		; 70 84
	sei		; 78
	cmp [$B8.b]		; C7 B8
	cmp $BA.b		; C5 BA
	sbc #$D6.b		; E9 D6
	cmp ($CE.b),Y		; D1 CE
	ora ($DE.b,X)		; 01 DE
	lda ($0D.b,S),Y		; B3 0D
	and ($33.b,S),Y		; 33 33
	phd		; 0B
	phd		; 0B
	bra -128.b		; 80 80
	.db $82, $82, $C4		; 82 82 C4
	cpy $08.b		; C4 08
	inx		; E8
	brk $E0.b		; 00 E0
	brk $C1.b		; 00 C1
	bcc  96.b		; 90 60
	bcc  96.b		; 90 60
	sed		; F8
	brk $84.b		; 00 84
	sei		; 78
	dey		; 88
	bvs  72.b		; 70 48
	bcs -96.b		; B0 A0
	bne -112.b		; D0 90
	bra  32.b		; 80 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	cop $01.b		; 02 01
	.db $82, $01, $E2		; 82 01 E2
	sta ($FA.b,X)		; 81 FA
	sbc ($1E.b,X)		; E1 1E
	sbc $3809.w,Y		; F9 09 38
	ora $0B.b,S		; 03 0B
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	sta ($E0.b,X)		; 81 E0
	sbc ($F8.b,X)		; E1 F8
	ora $08FC.w,Y		; 19 FC 08
	sbc $003F03.l,X		; FF 03 3F 00
	ora $BC.b,S		; 03 BC
	sbc $FD9C.w,X		; FD 9C FD
	stz $9CDD.w		; 9C DD 9C
	sbc $FD9C.w,X		; FD 9C FD
	cpy $6C3E.w		; CC 3E 6C
	stx $EF6E.w		; 8E 6E EF
	cmp $DD3E.w,X		; DD 3E DD
	rol $3EDD.w,X		; 3E DD 3E
	sbc $ED1E.w		; ED 1E ED
	asl $9F2C.w,X		; 1E 2C 9F
	tsb $64FF.w		; 0C FF 64
	sbc $AFD8A7.l,X		; FF A7 D8 AF
	bne -65.b		; D0 BF
	cpy #$3F.b		; C0 3F
	cpy #$7F.b		; C0 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bcc -65.b		; 90 BF
	bne -43.b		; D0 D5
	ora $CA.b,X		; 15 CA
	asl A		; 0A
	cmp ($12.b)		; D2 12
	cpx $24.b		; E4 24
	cpy $44.b		; C4 44
	dey		; 88
	php		; 08
	cmp $F159.w,Y		; D9 59 F1
	lda ($FF.b),Y		; B1 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $25.b		; 00 25
	and $64.b		; 25 64
	stz $44.b		; 64 44
	mvp $44,$44		; 44 44 44
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$36.b],Y		; 17 36
	rol A		; 2A
	asl $12.b		; 06 12
	trb $2000.w		; 1C 00 20
	clv		; B8
	jsr $0050.w		; 20 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F7.b		; 06 F7
	cop $3E.b		; 02 3E
	bpl  30.b		; 10 1E
	brk $20.b		; 00 20
	jsr $00B8.w		; 20 B8 00
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	lsr $54AB.w,X		; 5E AB 54
	sbc $11.b		; E5 11
	ldy $89D4.w		; AC D4 89
	sbc $AEDB21.l,X		; FF 21 DB AE
	eor ($ED.b),Y		; 51 ED
	eor ($5E.b)		; 52 5E
	brk $54.b		; 00 54
	brk $1B.b		; 00 1B
	ora ($DB.b,X)		; 01 DB
	brk $F2.b		; 00 F2
	cop $D4.b		; 02 D4
	tsb $51.b		; 04 51
	ora ($50.b,X)		; 01 50
	brk $2C.b		; 00 2C
	cmp [$58.b],Y		; D7 58
	ldx $46.b		; A6 46
	sec		; 38
	.db $82, $1C, $EA		; 82 1C EA
	cpy $0CE8.w		; CC E8 0C
	stz $09.b,X		; 74 09
	and $CB.b,X		; 35 CB
	cmp [$00.b]		; C7 00
	asl $00.b		; 06 00
	ldy #$A0.b		; A0 A0
	rts		; 60

	rti		; 40

	bmi   0.b		; 30 00
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	bvs  64.b		; 70 40
	ora [$00.b]		; 07 00
	ora $100F00.l		; 0F 00 0F 10
	ora [$30.b],Y		; 17 30
	tsa		; 3B
	rts		; 60

	ror $C4.b,X		; 76 C4
	sed		; F8
	sty $08F0.w		; 8C F0 08
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	ora #$01.b		; 09 01
	ora $3801.w,X		; 1D 01 38
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $50.b		; 00 50
	rts		; 60

	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	bra -96.b		; 80 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $1FE3.w,Y		; 79 E3 1F
	adc $1E87.w,Y		; 79 87 1E
	bra  38.b		; 80 26
	cpy #$40.b		; C0 40
	brk $46.b		; 00 46
	bra -61.b		; 80 C3
	brk $C3.b		; 00 C3
	.db $62, $FE, $18		; 62 FE 18
	inc $7F86.w,X		; FE 86 7F
	cpy #$1F.b		; C0 1F
	bra   7.b		; 80 07
	cpy #$41.b		; C0 41
	ora ($01.b,X)		; 01 01
	sta ($81.b,X)		; 81 81
	bvs  24.b		; 70 18
	bvs  24.b		; 70 18
	bvs  24.b		; 70 18
	bcs -104.b		; B0 98
	bmi -96.b		; 30 A0
	trb $70.b		; 14 70
	bra -118.b		; 80 8A
	cmp $89.b,S		; C3 89
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	bra -128.b		; 80 80
	cpx #$20.b		; E0 20
	sed		; F8
	bpl  -4.b		; 10 FC
	brk $7E.b		; 00 7E
	rti		; 40

	and $DA67DA.l,X		; 3F DA 67 DA
	adc [$FA.b]		; 67 FA
	adc [$6B.b]		; 67 6B
	and [$6B.b],Y		; 37 6B
	and [$7F.b],Y		; 37 7F
	and ($15.b,S),Y		; 33 15
	tsa		; 3B
	and $1B.b,X		; 35 1B
	adc [$00.b]		; 67 00
	adc [$00.b]		; 67 00
	adc [$00.b]		; 67 00
	and [$00.b],Y		; 37 00
	and [$00.b],Y		; 37 00
	and ($00.b,S),Y		; 33 00
	tsa		; 3B
	brk $1B.b		; 00 1B
	brk $60.b		; 00 60
	sta $9C64.w,Y		; 99 64 9C
	adc $98.b,S		; 63 98
	rtl		; 6B

	tya		; 98
	rtl		; 6B

	tya		; 98
	adc [$90.b]		; 67 90
	adc [$90.b]		; 67 90
	adc [$90.b]		; 67 90
	dey		; 88
	ora $8F098A.l		; 0F 8A 09 8F
	php		; 08
	sta [$00.b]		; 87 00
	sta [$10.b],Y		; 97 10
	sta $109F10.l,X		; 9F 10 9F 10
	sta $000110.l,X		; 9F 10 01 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	jsr ($7C7A.w,X)		; FC 7A 7C
	dey		; 88
	beq   8.b		; F0 08
	sed		; F8
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	sei		; 78
	brk $88.b		; 00 88
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$80.b		; E0 80
	sei		; 78
	cpx #$1E.b		; E0 1E
	sed		; F8
	ora [$3E.b]		; 07 3E
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	rts		; 60

	sed		; F8
	clc		; 18
	inc $FF06.w,X		; FE 06 FF
	ora ($3F.b,X)		; 01 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $04.b		; 06 04
	tsb $0C.b		; 04 0C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	rti		; 40

	bra  64.b		; 80 40
	cpy #$D0.b		; C0 D0
	cpy #$B8.b		; C0 B8
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	cpx #$50.b		; E0 50
	beq -88.b		; F0 A8
	inx		; E8
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $E8.b		; 00 E8
	inx		; E8
	ldy $A4.b		; A4 A4
	ldy $A4.b		; A4 A4
	sta ($92.b)		; 92 92
	txa		; 8A
	txa		; 8A
	bit #$89.b		; 89 89
	sta $85.b		; 85 85
	dec $C6.b		; C6 C6
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	and [$EF.b]		; 27 EF
	ora [$37.b]		; 07 37
	sta $C7.b,S		; 83 C7
	sta ($E3.b),Y		; 91 E3
	cpy $CFF0.w		; CC F0 CF
	bvs -52.b		; 70 CC
	adc ($ED.b,S),Y		; 73 ED
	adc ($27.b,S),Y		; 73 27
	sbc $C1FF03.l,X		; FF 03 FF C1
	and $F00FE0.l,X		; 3F E0 0F F0
	ora $70.b,S		; 03 70
	brk $73.b		; 00 73
	brk $73.b		; 00 73
	brk $3F.b		; 00 3F
	bcs -97.b		; B0 9F
	cpy #$DD.b		; C0 DD
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	sta [$9C.b]		; 87 9C
	sta ($4B.b),Y		; 91 4B
	sec		; 38
	sta $47.b,S		; 83 47
	bmi -61.b		; 30 C3
	ora ($F2.b)		; 12 F2
	stx $81EE.w		; 8E EE 81
	sbc ($80.b,X)		; E1 80
	sed		; F8
	sta ($FF.b),Y		; 91 FF
	php		; 08
	sbc $C03F43.l,X		; FF 43 3F C0
	ora $FF00FF.l		; 0F FF 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra -32.b		; 80 E0
	sta $C00F60.l		; 8F 60 0F C0
	ora $10C7F0.l		; 0F F0 C7 10
	bpl  16.b		; 10 10
	bpl -112.b		; 10 90
	bcc  -1.b		; 90 FF
	sbc $790979.l,X		; FF 79 09 79
	bit #$E919.w		; 89 19 E9
	cmp ($F9.b,X)		; C1 F9
	jsr ($F800.w,X)		; FC 00 F8
	brk $C0.b		; 00 C0
	sec		; 38
	bra  72.b		; 80 48
	bpl -120.b		; 10 88
	bcs -116.b		; B0 8C
	bcs -116.b		; B0 8C
	clv		; B8
	sty $C4C4.w		; 8C C4 C4
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	beq -64.b		; F0 C0
	beq -128.b		; F0 80
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
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
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($80.b),Y		; F1 80
	beq -124.b		; F0 84
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	bvc -60.b		; 50 C4
	jsr $3CE4.w		; 20 E4 3C
	sbc ($1E.b)		; F2 1E
	cpx $70.b		; E4 70
	ora $F80378.l		; 0F 78 03 F8
	sta ($F8.b,X)		; 81 F8
	bra  56.b		; 80 38
	brk $58.b		; 00 58
	rti		; 40

	rti		; 40

	rti		; 40

	bit $24.b		; 24 24
	and $1B.b,X		; 35 1B
	cop $19.b		; 02 19
	ora ($09.b)		; 12 09
	ora ($08.b,S),Y		; 13 08
	ora #$0900.w		; 09 00 09
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	ora ($1B.b,X)		; 01 1B
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5E.b		; 00 5E
	bcs  95.b		; B0 5F
	lda ($4C.b),Y		; B1 4C
	lda ($4C.b,X)		; A1 4C
	lda ($0E.b,X)		; A1 0E
	sbc $88.b,S		; E3 88
	adc $38.b,S		; 63 38
	dex		; CA
	jsr ($8F36.w,X)		; FC 36 8F
	brk $8E.b		; 00 8E
	brk $BF.b		; 00 BF
	and ($BF.b,X)		; 21 BF
	and ($BC.b,X)		; 21 BC
	jsr $223E.w		; 20 3E 22
	asl $02.b		; 06 02
	bpl  48.b		; 10 30
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	tsb $04.b		; 04 04
	tsb $080C.w		; 0C 0C 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	cpx #$E000.w		; E0 00 E0
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr $F020.w		; 20 20 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001E00.l,X		; 1F 00 1E 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
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
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	rol $7ECE.w,X		; 3E CE 7E
	txs		; 9A
	lsr $1EB0.w,X		; 5E B0 1E
	ldy #$00BE.w		; A0 BE 00
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $0E0C00.l,X		; FF 00 0C 0E
	php		; 08
	inc A		; 1A
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	cop $42.b		; 02 42
	cop $42.b		; 02 42
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	adc $007F00.l,X		; 7F 00 7F 00
	adc $003F00.l,X		; 7F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
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
	bit $7C00.w,X		; 3C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	jmp ($7E00.w,X)		; 7C 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $19.b		; 00 19
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	php		; 08
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
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
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
	cpy #$9AC0.w		; C0 C0 9A
	cli		; 58
	ora ($12.b,S),Y		; 13 12
	ora ($07.b,X)		; 01 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	sed		; F8
	php		; 08
	plx		; FA
	cop $FF.b		; 02 FF
	brk $17.b		; 00 17
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	dey		; 88
	dey		; 88
	jmp.w [$00DC]		; DC DC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bpl  48.b		; 10 30
	bpl 120.b		; 10 78
	dey		; 88
	jsr ($FC5C.w,X)		; FC 5C FC
	tsb $220C.w		; 0C 0C 22
	jsl $333737.l		; 22 37 37 33
	and ($10.b,S),Y		; 33 10
	jsr $2010.w		; 20 10 20
	rts		; 60

	bvs -16.b		; 70 F0
	cpx #$1E04.w		; E0 04 1E
	jsl $7F177F.l		; 22 7F 17 7F
	ora ($7F.b,S),Y		; 13 7F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	rti		; 40

	jsr ($F8C0.w,X)		; FC C0 F8
	rol $1F00.w,X		; 3E 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
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
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   2.b		; 80 02
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($CC.b,X)		; 01 CC
	rts		; 60

	cpx #$6030.w		; E0 30 60
	bmi -16.b		; 30 F0
	ldy #$B0E0.w		; A0 E0 B0
	beq  24.b		; F0 18
	cpx #$D800.w		; E0 00 D8
	clc		; 18
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	jsr $8078.w		; 20 78 80
	sed		; F8
	ldy #$90F8.w		; A0 F8 90
	ldy $9880.w,X		; BC 80 98
	bpl  60.b		; 10 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	asl A		; 0A
	phd		; 0B
	rol $20.b		; 26 20
	and $32.b		; 25 32
	adc ($62.b)		; 72 62
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	asl A		; 0A
	phd		; 0B
	jsr $2026.w		; 20 26 20
	and [$43.b],Y		; 37 43
	adc ($00.b,S),Y		; 73 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bra  88.b		; 80 58
	bvc -124.b		; 50 84
	bcc  68.b		; 90 44
	bra   4.b		; 80 04
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs  80.b		; B0 50
	cli		; 58
	brk $D6.b		; 00 D6
	brk $C6.b		; 00 C6
	brk $C6.b		; 00 C6
	eor [$B8.b]		; 47 B8
	lda $00FFD0.l		; AF D0 FF 00
	sbc $C07F90.l,X		; FF 90 7F C0
	ror $BCC1.w,X		; 7E C1 BC
	eor $F8.b,S		; 43 F8
	and [$85.b]		; 27 85
	sta $40.b		; 85 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -128.b		; B0 80
	and ($01.b),Y		; 31 01
	jsl $040402.l		; 22 02 04 04
	bra   0.b		; 80 00
	cpy #$9030.w		; C0 30 90
	trb $0794.w		; 1C 94 07
	ldx $8FE0.w		; AE E0 8F
	bvs -51.b		; 70 CD
	jmp ($AF61.w,X)		; 7C 61 AF
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	plp		; 28
	pha		; 48
	dec A		; 3A
.INDEX 16
	rep #$1F		; C2 1F
	bra  63.b		; 80 3F
	bmi   3.b		; 30 03
	rti		; 40

	stx $A6.b		; 86 A6
	ldx $3F7F.w,Y		; BE 7F 3F
	ror $3E5F.w,X		; 7E 5F 3E
	rol $4C9C.w,X		; 3E 9C 4C
	cmp #$32B2.w		; C9 B2 32
	sbc $F30C.w		; ED 0C F3
	brk $1C.b		; 00 1C
	adc $1CFF1C.l,X		; 7F 1C FF 1C
	sbc $08FF1C.l,X		; FF 1C FF 08
	sbc $6DFF90.l,X		; FF 90 FF 6D
	adc $205D51.l,X		; 7F 51 5D 20
	rti		; 40

	bpl  96.b		; 10 60
	php		; 08
	bvs  80.b		; 70 50
	jsr $00E0.w		; 20 E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $40.b		; 00 40
	cpy #$A020.w		; C0 20 A0
	bpl -112.b		; 10 90
	brk $80.b		; 00 80
	cpy #$20C0.w		; C0 C0 20
	jsr $1010.w		; 20 10 10
	tsb $04.b		; 04 04
	tsa		; 3B
	tsb $1977.w		; 0C 77 19
	inc $DD33.w		; EE 33 DD
	ror $9B.b		; 66 9B
	cpx $D936.w		; EC 36 D9
	jmp ($DAB3.w)		; 6C B3 DA
	adc $0C.b		; 65 0C
	brk $19.b		; 00 19
	brk $33.b		; 00 33
	brk $66.b		; 00 66
	brk $EC.b		; 00 EC
	brk $D9.b		; 00 D9
	brk $B3.b		; 00 B3
	brk $65.b		; 00 65
	brk $12.b		; 00 12
	sbc $DC23.w		; ED 23 DC
	lsr $9CB1.w		; 4E B1 9C
	adc $3E.b,S		; 63 3E
	cmp ($7F.b,X)		; C1 7F
	bra  95.b		; 80 5F
	bra -87.b		; 80 A9
	lsr $EC.b		; 46 EC
	brk $DC.b		; 00 DC
	brk $B8.b		; 00 B8
	php		; 08
	adc ($11.b),Y		; 71 11
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	bra  32.b		; 80 20
	asl $36.b		; 06 36
	cmp $6B.b,X		; D5 6B
	sty $6A.b,X		; 94 6A
	lda $D0AFD0.l		; AF D0 AF D0
	lda $80FFC0.l,X		; BF C0 FF 80
	ora $FC7F98.l		; 0F 98 7F FC
	pla		; 68
	brk $69.b		; 00 69
	brk $D5.b		; 00 D5
	tsb $D5.b		; 04 D5
	tsb $D2.b		; 04 D2
	ora ($89.b)		; 12 89
	ora #$7C84.w		; 09 84 7C
	bit $B2FC.w,X		; 3C FC B2
	ora $5CE3.w		; 0D E3 5C
	ldx $58.b		; A6 58
	bit $FE41.w,X		; 3C 41 FE
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C8.b		; 00 C8
	php		; 08
	bcc  16.b		; 90 10
	cpy #$C841.w		; C0 41 C8
	phk		; 4B
	trb $15.b		; 14 15
	and #$4929.w		; 29 29 49
	eor #$5252.w		; 49 52 52
	ora ($18.b),Y		; 11 18
	ora $030C.w,Y		; 19 0C 03
	brk $09.b		; 00 09
	tsb $0003.w		; 0C 03 00
	trb $0C0E.w		; 1C 0E 0C
	asl $08.b		; 06 08
	brk $10.b		; 00 10
	trb $1E08.w		; 1C 08 1E
	brk $0C.b		; 00 0C
	php		; 08
	asl $0C00.w,X		; 1E 00 0C
	tsb $041F.w		; 0C 1F 04
	ora $F50F00.l		; 0F 00 0F F5
	ror $6ED5.w		; 6E D5 6E
	sbc $4E.b,X		; F5 4E
	tda		; 7B
	cpy $CC3B.w		; CC 3B CC
	tsa		; 3B
	cpy $CC3B.w		; CC 3B CC
	bcs -52.b		; B0 CC
	ror $6E00.w		; 6E 00 6E
	brk $4E.b		; 00 4E
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	sta $0F.b,S		; 83 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
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
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  24.b		; D0 18
	cpy #$CC00.w		; C0 00 CC
	tsb $0C88.w		; 0C 88 0C
	sty $0208.w		; 8C 08 02
	tsb $00.b		; 04 00
	brk $0E.b		; 00 0E
	asl $00.b		; 06 00
	bit $0C00.w,X		; 3C 00 0C
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	.db $62, $62, $60		; 62 62 60
	rts		; 60

	ora ($11.b),Y		; 11 11
	ora ($12.b)		; 12 12
	tsb $1218.w		; 0C 18 12
	tsb $03.b		; 04 03
	ora ($00.b,X)		; 01 00
	brk $43.b		; 00 43
	adc ($40.b,S),Y		; 73 40
	bvs   0.b		; 70 00
	ora $1F11.w,Y		; 19 11 1F
	ora ($1D.b,X)		; 01 1D
	brk $1E.b		; 00 1E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	mvp $28,$C0		; 44 C0 28
	bit $3000.w		; 2C 00 30
	jsr $5850.w		; 20 50 58
	bvs -16.b		; 70 F0
	cpy #$0080.w		; C0 80 00
	brk $C4.b		; 00 C4
	rti		; 40

	dec $C0.b		; C6 C0
	inc $DCC0.w,X		; FE C0 DC
	bra -80.b		; 80 B0
	rti		; 40

	sei		; 78
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bmi -49.b		; 30 CF
	pha		; 48
	sta [$4C.b]		; 87 4C
	sta $BB.b,S		; 83 BB
	mvp $D7,$38		; 44 38 D7
	trb $1CDB.w		; 1C DB 1C
	sbc $C0BD3E.l,X		; FF 3E BD C0
	cpy #$3030.w		; C0 30 30
	bmi  48.b		; 30 30
	rti		; 40

	rti		; 40

	sta ($93.b,S),Y		; 93 93
	sta $1DB9.w,Y		; 99 B9 1D
	and $7C1C.w,X		; 3D 1C 7C
	rts		; 60

	lda $40.b,S		; A3 40
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$C020.w		; C0 20 C0
	rti		; 40

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $48.b		; 00 48
	pha		; 48
	mvp $22,$44		; 44 44 22
	jsl $102121.l		; 22 21 21 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	ora #$FE09.w		; 09 09 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	rts		; 60

	rep #$C2		; C2 C2
	and ($32.b)		; 32 32
	tsb $040C.w		; 0C 0C 04
	tsb $88.b		; 04 88
	dey		; 88
	bvc  80.b		; 50 50
	jsr $8020.w		; 20 20 80
	bra -90.b		; 80 A6
	stp		; DB
	cmp $19B6.w		; CD B6 19
	inc $DE31.w		; EE 31 DE
	adc ($9E.b),Y		; 71 9E
	.db $62, $BD, $EA		; 62 BD EA
	and $CA.b,X		; 35 CA
	adc $DB.b,X		; 75 DB
	brk $B6.b		; 00 B6
	brk $EE.b		; 00 EE
	brk $DE.b		; 00 DE
	brk $9E.b		; 00 9E
	brk $BC.b		; 00 BC
	brk $34.b		; 00 34
	brk $75.b		; 00 75
	ora ($98.b,X)		; 01 98
	adc [$58.b]		; 67 58
	sbc [$3C.b],Y		; F7 3C
	lda ($6C.b,S),Y		; B3 6C
	sta ($EF.b,S),Y		; 93 EF
	tya		; 98
	lsr $15.b		; 46 15
	sed		; F8
	and $D6.b,S		; 23 D6
	and #$5040.w		; 29 40 50
	jsr $5030.w		; 20 30 50
	bpl -32.b		; 10 E0
	bra 120.b		; 80 78
	clc		; 18
	sbc ($1D.b),Y		; F1 1D
	rep #$06		; C2 06
	inx		; E8
	plp		; 28
	sbc $FAFC.w,X		; FD FC FA
	jsr ($C027.w,X)		; FC 27 C0
	adc $CCB380.l,X		; 7F 80 B3 CC
	tad		; 5B
	cpx $6D.b		; E4 6D
	lda ($B6.b)		; B2 B6
	cmp $FEFC.w,Y		; D9 FC FE
	cpx #$01FF.w		; E0 FF 01
	sbc $0181.w,Y		; F9 81 01
	cmp $E401.w		; CD 01 E4
	brk $B2.b		; 00 B2
	brk $D9.b		; 00 D9
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $92.b		; 00 92
	sta ($A2.b)		; 92 A2
	ldx #$2222.w		; A2 22 22
	mvp $84,$44		; 44 44 84
	sty $C4.b		; 84 C4
	cpy $24.b		; C4 24
	bit $1E.b		; 24 1E
	asl $0604.w,X		; 1E 04 06
	asl $07.b		; 06 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	asl $0F.b		; 06 0F
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	wai		; CB
	cmp [$4F.b]		; C7 4F
	eor $20BF1F.l,X		; 5F 1F BF 20
	lda ($38.b),Y		; B1 38
	ora [$0E.b]		; 07 0E
	lda ($1F.b,S),Y		; B3 1F
	bit #$8407.w		; 89 07 84
	sta ($FF.b,X)		; 81 FF
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	ora [$C0.b]		; 07 C0
	and ($C0.b,S),Y		; 33 C0
	ora #$04C0.w		; 09 C0 04
	cpy #$1838.w		; C0 38 18
	jsr $1800.w		; 20 00 18
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $060C.w		; 0C 0C 06
	tsb $0C06.w		; 0C 06 0C
	asl $10.b		; 06 10
	bit $2C00.w,X		; 3C 00 2C
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $0F04.w,X		; 1E 04 0F
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	bit $1E61.w,X		; 3C 61 1E
	eor $3A.b,S		; 43 3A
	cmp $7C.b,S		; C3 7C
	cmp [$F4.b]		; C7 F4
	asl $F8.b		; 06 F8
	asl $CCF8.w		; 0E F8 CC
	beq 108.b		; F0 6C
	ora $003C01.l,X		; 1F 01 3C 00
	jmp ($BA40.w,X)		; 7C 40 BA
	.db $82, $38, $00		; 82 38 00
	trb $04.b		; 14 04
	cpy #$48C0.w		; C0 C0 48
	pla		; 68
	asl $90.b		; 06 90
	ora $180B18.l		; 0F 18 0B 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora $0E.b,S		; 03 0E
	ora [$01.b]		; 07 01
	ora $000710.l,X		; 1F 10 07 00
	ora [$00.b]		; 07 00
	ora $080B08.l		; 0F 08 0B 08
	ora [$04.b]		; 07 04
	tsb $04.b		; 04 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	txa		; 8A
	sbc ($BD.b),Y		; F1 BD
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $48.b,S		; 03 48
	eor $0A17D1.l		; 4F D1 17 0A
	tsb $10.b		; 04 10
	tsb $182C.w		; 0C 2C 18
	cli		; 58
	sec		; 38
	bcs 120.b		; B0 78
	bvs -16.b		; 70 F0
	cpx #$C0F0.w		; E0 F0 C0
	cpx #$1F00.w		; E0 00 1F
	brk $3E.b		; 00 3E
	php		; 08
	ror $FC10.w,X		; 7E 10 FC
	bmi  -4.b		; 30 FC
	rts		; 60

	sed		; F8
	cpy #$80F8.w		; C0 F8 80
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
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
	brk $07.b		; 00 07
	brk $1C.b		; 00 1C
	ora $7B.b,S		; 03 7B
	ora $463FD7.l		; 0F D7 3F 46
	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	xce		; FB
	brk $30.b		; 00 30
	clc		; 18
	brk $04.b		; 00 04
	clc		; 18
	tsb $0818.w		; 0C 18 08
	brk $04.b		; 00 04
	jmp $FC76.w		; 4C 76 FC
	inc $8C.b		; E6 8C
	stx $10.b,Y		; 96 10
	sec		; 38
	brk $0E.b		; 00 0E
	php		; 08
	asl $1C08.w,X		; 1E 08 1C
	brk $0E.b		; 00 0E
	tsb $7F.b		; 04 7F
	cpy $FF.b		; C4 FF
	sty $9F.b		; 84 9F
	eor $022724.l		; 4F 24 27 02
	ora ($01.b)		; 12 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b		; 24 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$C8.b],Y		; 97 C8
	wai		; CB
	stz $76.b		; 64 76
	ora ($02.b,X)		; 01 02
	ora ($82.b,X)		; 01 82
	ora ($40.b,X)		; 01 40
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($C8.b,X)		; 01 C8
	brk $64.b		; 00 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	cpx #$C358.w		; E0 58 C3
	sec		; 38
	sta $B8.b,S		; 83 B8
	sta $78.b,S		; 83 78
	ora $78.b,S		; 03 78
	ora $FC.b,S		; 03 FC
	ora [$FC.b]		; 07 FC
	ora [$5F.b]		; 07 5F
	eor $FE82BE.l		; 4F BE 82 FE
	.db $82, $7E, $02		; 82 7E 02
	inc $FF02.w,X		; FE 02 FF
	ora $F9.b,S		; 03 F9
	ora ($F9.b,X)		; 01 F9
	ora ($1D.b,X)		; 01 1D
	asl $3F.b		; 06 3F
	tsb $093F.w		; 0C 3F 09
	adc $7E1B.w,X		; 7D 1B 7E
	ora ($FA.b,S),Y		; 13 FA
	and [$FA.b],Y		; 37 FA
	and [$FC.b]		; 27 FC
	and [$06.b]		; 27 06
	brk $0C.b		; 00 0C
	brk $09.b		; 00 09
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $37.b		; 00 37
	brk $27.b		; 00 27
	brk $27.b		; 00 27
	brk $80.b		; 00 80
	cpy #$6000.w		; C0 00 60
	cpy #$8060.w		; C0 60 80
	jsr $30C0.w		; 20 C0 30
	cpx #$E030.w		; E0 30 E0
	bcs -32.b		; B0 E0
	bne   0.b		; D0 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$E020.w		; E0 20 E0
	jsr $0040.w		; 20 40 00
	bpl -112.b		; 10 90
	bne -48.b		; D0 D0
	cld		; D8
	jsr $00E8.w		; 20 E8 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	jsr $1000.w		; 20 00 10
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora $06.b		; 05 06
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	tsb $05.b		; 04 05
	tsb $07.b		; 04 07
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $0E06.w		; 0C 06 0E
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	ora $020F02.l		; 0F 02 0F 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $0B.b,S		; 03 0B
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	bra  63.b		; 80 3F
	bra  63.b		; 80 3F
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	dey		; 88
	cop $8A.b		; 02 8A
	tsb $088C.w		; 0C 8C 08
	dey		; 88
	php		; 08
	iny		; C8
	clc		; 18
	cld		; D8
	bpl -48.b		; 10 D0
	cpx #$E038.w		; E0 38 E0
	clc		; 18
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $01.b,S		; 03 01
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	ora [$FF.b]		; 07 FF
	cmp $3C.b,S		; C3 3C
	cpy #$403F.w		; C0 3F 40
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	and $943B3A.l,X		; 3F 3A 3B 94
	sta [$13.b],Y		; 97 13
	ora ($0C.b,S),Y		; 13 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	ora $0E1900.l		; 0F 00 19 0E
	and ($1C.b,S),Y		; 33 1C
	cpx $0133.w		; EC 33 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $33.b		; 00 33
	brk $84.b		; 00 84
	tda		; 7B
	lda $9552.w		; AD 52 95
	mvp $50,$B2		; 44 B2 50
	and [$FF.b]		; 27 FF
	sta [$6C.b]		; 87 6C
	and $14C4.w,Y		; 39 C4 14
	xba		; EB
	tda		; 7B
	brk $50.b		; 00 50
	brk $6E.b		; 00 6E
	asl $6D.b		; 06 6D
	ora ($C8.b,X)		; 01 C8
	php		; 08
	eor ($10.b,S),Y		; 53 10
	cmp [$04.b]		; C7 04
	sbc ($01.b,X)		; E1 01
	tsb $6E16.w		; 0C 16 6E
	adc ($7E.b,S),Y		; 73 7E
	adc ($46.b,S),Y		; 73 46
	eor $36.b,S		; 43 36
	tsa		; 3B
	and $010031.l,X		; 3F 31 00 01
	ora $01.b,S		; 03 01
	tsb $1F.b		; 04 1F
	.db $42, $7F		; 42 7F
	.db $62, $7F, $42		; 62 7F 42
	eor [$22.b]		; 47 22
	and $003F21.l,X		; 3F 21 3F 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	sbc ($07.b),Y		; F1 07
	sbc ($07.b),Y		; F1 07
	sbc $E90F.w,Y		; F9 0F E9
	ora $F10FE1.l		; 0F E1 0F F1
	ora $C01BF0.l,X		; 1F F0 1B C0
	ora $04FC.w,Y		; 19 FC 04
	jsr ($F404.w,X)		; FC 04 F4
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	inx		; E8
	php		; 08
	sbc ($01.b,X)		; E1 01
	sbc ($11.b),Y		; F1 11
	and $C05F80.l,X		; 3F 80 5F C0
	lda $C01F80.l,X		; BF 80 1F C0
	stz $CEC0.w,X		; 9E C0 CE
	rts		; 60

	dec $CC60.w		; CE 60 CC
	rts		; 60

	bpl -112.b		; 10 90
	bvc -16.b		; 50 F0
	bcc -48.b		; 90 D0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq -128.b		; F0 80
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
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $0006.w		; 0C 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0300.w		; 0E 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $030C.w		; 0C 0C 03
	ora $08.b,S		; 03 08
	php		; 08
	ora ($13.b,S),Y		; 13 13
	ora ($13.b),Y		; 11 13
	trb $16.b		; 14 16
	clc		; 18
	trb $0814.w		; 1C 14 08
	tsb $030C.w		; 0C 0C 03
	ora $131E08.l,X		; 1F 08 1E 13
	ora $143F11.l,X		; 1F 11 3F 14
	rol $3E18.w,X		; 3E 18 3E
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	asl $1E03.w		; 0E 03 1E
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	jsr $70AC.w		; 20 AC 70
	ror $3EF8.w,X		; 7E F8 3E
	sbc $FE1C.w,X		; FD 1C FE
	lsr A		; 4A
	ldy $0000.w,X		; BC 00 00
	brk $00.b		; 00 00
	jsr $7000.w		; 20 00 70
	brk $F8.b		; 00 F8
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $BC.b		; 00 BC
	brk $B0.b		; 00 B0
	jmp $189860.l		; 5C 60 98 18
	cpx #$7008.w		; E0 08 70
	tay		; A8
	bmi -96.b		; 30 A0
	bmi -48.b		; 30 D0
	jsr $20D0.w		; 20 D0 20
	trb $1800.w		; 1C 00 18
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$D020.w		; E0 20 D0
	bpl   0.b		; 10 00
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
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	rts		; 60

	bmi  96.b		; 30 60
	bmi  32.b		; 30 20
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	bmi  24.b		; 30 18
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr $0078.w		; 20 78 00
	sei		; 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	brk $18.b		; 00 18
	jsr ($7C06.w,X)		; FC 06 7C
	dec $FC.b		; C6 FC
	stx $78.b		; 86 78
	asl $F8.b		; 06 F8
	asl $F0.b		; 06 F0
	tsb $F0.b		; 04 F0
	tsb $F8.b		; 04 F8
	tsb $E0F8.w		; 0C F8 E0
	clv		; B8
	bra 120.b		; 80 78
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	tsb $0CF0.w		; 0C F0 0C
	cpx #$E008.w		; E0 08 E0
	php		; 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	rts		; 60

	tsb $00F0.w		; 0C F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	php		; 08
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
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	brk $10.b		; 00 10
	sec		; 38
	sec		; 38
	brk $40.b		; 00 40
	jsr $F060.w		; 20 60 F0
	rti		; 40

	rts		; 60

	cpy #$1C00.w		; C0 00 1C
	tsb $3C.b		; 04 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $F8.b		; 00 F8
	jsr $40F0.w		; 20 F0 40
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($01.b,X)		; 01 01
	brk $04.b		; 00 04
	ora [$0E.b]		; 07 0E
	asl $1C.b		; 06 1C
	tsb $1C18.w		; 0C 18 1C
	bmi  56.b		; 30 38
	bvs   0.b		; 70 00
	ora [$01.b]		; 07 01
	ora $060F00.l		; 0F 00 0F 06
	ora $083E04.l,X		; 1F 04 3E 08
	jmp ($7C10.w,X)		; 7C 10 7C
	bmi  -8.b		; 30 F8
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
	ror $3AC3.w,X		; 7E C3 3A
	sta $78.b,S		; 83 78
	sta $FC.b,S		; 83 FC
	stx $70.b		; 86 70
	asl $F8.b		; 06 F8
	tsb $0CE0.w		; 0C E0 0C
	beq  24.b		; F0 18
	and $7C01.w,X		; 3D 01 7C
	brk $FE.b		; 00 FE
	.db $82, $78, $00		; 82 78 00
	jsr ($F004.w,X)		; FC 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$FF00.w		; E0 00 FF
	brk $FF.b		; 00 FF
	brk $1E.b		; 00 1E
	sbc ($01.b,X)		; E1 01
	cpx $CE03.w		; EC 03 CE
	brk $C6.b		; 00 C6
	ora ($87.b,X)		; 01 87
	brk $83.b		; 00 83
	php		; 08
	php		; 08
	inx		; E8
	inx		; E8
	stz $879E.w,X		; 9E 9E 87
	sty $85.b		; 84 85
	sty $83.b		; 84 83
	.db $82, $02, $02		; 82 02 02
	ora ($01.b,X)		; 01 01
	beq   0.b		; F0 00
	cpx #$2018.w		; E0 18 20
	clv		; B8
	bne  28.b		; D0 1C
	cpx #$F00C.w		; E0 0C F0
	tsb $F4.b		; 04 F4
	asl $78.b		; 06 78
	cop $50.b		; 02 50
	bvc -32.b		; 50 E0
	cpx #$1050.w		; E0 50 10
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	jsr ($F804.w,X)		; FC 04 F8
	brk $FE.b		; 00 FE
	cop $AC.b		; 02 AC
	.db $42, $D6		; 42 D6
	and ($8B.b),Y		; 31 8B
	sec		; 38
	ora $9C.b		; 05 9C
	cop $8F.b		; 02 8F
	rti		; 40

	sta [$E3.b]		; 87 E3
	rti		; 40

	sbc ($80.b,X)		; E1 80
	trb $2E00.w		; 1C 00 2E
	ldy #$9017.w		; A0 17 90
	phd		; 0B
	dey		; 88
	ora $85.b		; 05 85
	cop $C2.b		; 02 C2
	jsr $A0E0.w		; 20 E0 A0
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra  96.b		; 80 60
	bra 120.b		; 80 78
	bra  -1.b		; 80 FF
	ora $FF0FFF.l		; 0F FF 0F FF
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	and $4F2F2E.l		; 2F 2E 2F 4F
	eor $009F9F.l		; 4F 9F 9F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	ora ($3C.b,X)		; 01 3C
	ora [$EE.b]		; 07 EE
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $AE.b		; 00 AE
	bvs 123.b		; 70 7B
	jsr ($FEFD.w,X)		; FC FD FE
	stz $00FF.w,X		; 9E FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	asl $07.b		; 06 07
	tsb $5C4E.w		; 0C 4E 5C
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	cop $1F.b		; 02 1F
	tsb $5F.b		; 04 5F
	jmp $32FE.w		; 4C FE 32
.ACCU 8
	sep #$60		; E2 60
	cpy #$80E0.w		; C0 E0 80
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	sbc ($40.b)		; F2 40
	cpx #$E080.w		; E0 80 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bpl   0.b		; 10 00
	cpx #$C000.w		; E0 00 C0
	cpx #$3800.w		; E0 00 38
	brk $9E.b		; 00 9E
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	rts		; 60

	cpx #$C000.w		; E0 00 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	brk $08.b		; 00 08
	brk $64.b		; 00 64
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0E.b]		; 07 0E
	asl $1C.b		; 06 1C
	asl $2D08.w		; 0E 08 2D
	and ($12.b,S),Y		; 33 12
	and ($00.b)		; 32 00
	ora [$01.b]		; 07 01
	ora $060F03.l		; 0F 03 0F 06
	ora $083E04.l,X		; 1F 04 3E 08
	ror $7F21.w,X		; 7E 21 7F
	ora ($F2.b)		; 12 F2
	beq -80.b		; F0 B0
	ldy #$C020.w		; A0 20 C0
	rti		; 40

	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -16.b		; B0 F0
	jsr $40E0.w		; 20 E0 40
	cpy #$C040.w		; C0 40 C0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	asl $04.b		; 06 04
	tsb $1002.w		; 0C 02 10
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	brk $3E.b		; 00 3E
	bmi -32.b		; 30 E0
	rts		; 60

	cpy #$80E0.w		; C0 E0 80
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	beq  64.b		; F0 40
	cpx #$E080.w		; E0 80 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	phd		; 0B
	sec		; 38
	sec		; 38
	brk $7C.b		; 00 7C
	clc		; 18
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $101708.l		; 0F 08 17 10
	ora [$00.b]		; 07 00
	phd		; 0B
	sec		; 38
	cpy #$E018.w		; C0 18 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	bra  96.b		; 80 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	beq  16.b		; F0 10
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $83.b		; 00 83
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
	plx		; FA
	sta $3C.b,S		; 83 3C
	sta ($5D.b,X)		; 81 5D
	cmp ($2E.b,X)		; C1 2E
	cpx #$7016.w		; E0 16 70
	ora $180338.l		; 0F 38 03 18
	ora [$1C.b]		; 07 1C
	jmp ($FF00.w,X)		; 7C 00 FF
	sta ($3E.b,X)		; 81 3E
	brk $5F.b		; 00 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	ora $080B08.l		; 0F 08 0B 08
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	bra  16.b		; 80 10
	bpl  80.b		; 10 50
	bvc  72.b		; 50 48
	pha		; 48
	pha		; 48
	pha		; 48
	mvp $44,$44		; 44 44 44
	mvp $48,$48		; 44 48 48
	stp		; DB
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003F00.l,X		; 3F 00 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	sbc $BDEA.w,X		; FD EA BD
	ror $A9.b,X		; 76 A9
	nop		; EA
	jsl $53E859.l		; 22 59 E8 53
	sbc $1CF603.l,X		; FF 03 F6 1C
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	brk $BD.b		; 00 BD
	brk $A8.b		; 00 A8
	brk $37.b		; 00 37
	ora $F6.b,S		; 03 F6
	brk $E4.b		; 00 E4
	tsb $E9.b		; 04 E9
	php		; 08
	sbc $02.b,S		; E3 02
	and $AE5CDE.l		; 2F DE 5C AE
	lda ($4C.b)		; B2 4C
	sty $0470.w		; 8C 70 04
	sec		; 38
	pei ($98.b)		; D4 98
	bcc  24.b		; 90 18
	iny		; C8
	bpl -34.b		; 10 DE
	brk $8E.b		; 00 8E
	brk $0C.b		; 00 0C
	brk $40.b		; 00 40
	rti		; 40

	cpy #$80.b		; C0 80
	rts		; 60

	brk $E0.b		; 00 E0
	rts		; 60

	beq  48.b		; F0 30
	jmp $E858.w		; 4C 58 E8
	cpx #$F0.b		; E0 F0
	beq -16.b		; F0 F0
	sed		; F8
	bvs  -8.b		; 70 F8
	jsr $8078.w		; 20 78 80
	sec		; 38
	php		; 08
	trb $FC48.w		; 1C 48 FC
	cpx #$F8.b		; E0 F8
	beq  -8.b		; F0 F8
	bvs  -8.b		; 70 F8
	bmi  -4.b		; 30 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	php		; 08
	ldx $0001.w,Y		; BE 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	ora [$02.b]		; 07 02
	and $000004.l,X		; 3F 04 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	ora [$F8.b]		; 07 F8
	cop $FC.b		; 02 FC
	cop $FC.b		; 02 FC
	sta $8EF170.l		; 8F 70 F1 8E
	cmp $BC.b,S		; C3 BC
	sta [$7A.b]		; 87 7A
	cmp $9898B7.l		; CF B7 98 98
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	dey		; 88
	dey		; 88
	bcs -80.b		; B0 B0
	rti		; 40

	.db $42, $02		; 42 02
	sta [$A0.b]		; 87 A0
	rti		; 40

	bcc  96.b		; 90 60
	bcc  96.b		; 90 60
	bne  32.b		; D0 20
	jsr $10C0.w		; 20 C0 10
	cpx #$08.b		; E0 08
	beq -104.b		; F0 98
	stz $40.b		; 64 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr $0020.w		; 20 20 00
	brk $08.b		; 00 08
	brk $FD.b		; 00 FD
	asl $7E3F.w		; 0E 3F 7E
	ora ($BE.b,X)		; 01 BE
	rts		; 60

	sta $F20FF0.l,X		; 9F F0 0F F2
	asl $10E7.w		; 0E E7 10
	cmp $000E00.l,X		; DF 00 0E 00
	ror $3E80.w,X		; 7E 80 3E
	cpy #$7F.b		; C0 7F
	cpx #$9D.b		; E0 9D
	sta ($25.b),Y		; 91 25
	bit $5F.b		; 24 5F
	bvc -65.b		; 50 BF
	bra   8.b		; 80 08
	sbc [$06.b],Y		; F7 06
	sbc $C03F.w,Y		; F9 3F C0
	ora $989FE0.l,X		; 1F E0 9F 98
	sbc $02CF04.l,X		; FF 04 CF 02
	eor [$73.b]		; 47 73
	sbc ($01.b),Y		; F1 01
	sed		; F8
	brk $80.b		; 00 80
	jsr $7060.w		; 20 60 70
	rts		; 60

	php		; 08
	beq  12.b		; F0 0C
	plx		; FA
	asl $BB.b		; 06 BB
	and [$14.b],Y		; 37 14
	inx		; E8
	ora ($EC.b)		; 12 EC
	ldy #$5E.b		; A0 5E
	sbc ($1E.b,X)		; E1 1E
	bne  46.b		; D0 2E
	phb		; 8B
	stz $8F.b,X		; 74 8F
	bvs -97.b		; 70 9F
	rts		; 60

	inx		; E8
	phd		; 0B
	inx		; E8
	ora #$50.b		; 09 50
	ora ($10.b),Y		; 11 10
	bpl  40.b		; 10 28
	and #$42.b		; 29 42
	eor $48.b,S		; 43 48
	pha		; 48
	bpl  16.b		; 10 10
	sbc $FF7F4F.l,X		; FF 4F 7F FF
	lda $0F1F7F.l,X		; BF 7F 1F 0F
	lda $FB0F47.l		; AF 47 0F FB
	sbc $02FF0D.l,X		; FF 0D FF 02
	asl $CF.b		; 06 CF
	ora $FF0FFF.l,X		; 1F FF 0F FF
	ora [$FF.b]		; 07 FF
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	stz $7F.b,X		; 74 7F
	stx $038F.w		; 8E 8F 03
	asl $0C07.w		; 0E 07 0C
	asl $1D19.w		; 0E 19 1D
	and $721F.w,Y		; 39 1F 72
	and ($6F.b,S),Y		; 33 6F
	adc [$CB.b],Y		; 77 CB
	stz $43.b,X		; 74 43
	cop $1F.b		; 02 1F
	tsb $3F.b		; 04 3F
	php		; 08
	and $107D18.l,X		; 3F 18 7D 10
	inc $FF21.w,X		; FE 21 FF
	eor $FB.b,S		; 43 FB
	eor $F0.b,S		; 43 F0
	tsb $1E1E.w		; 0C 1E 1E
	ora $FB8FE7.l		; 0F E7 8F FB
	cmp [$D5.b]		; C7 D5
	sbc $19.b,S		; E3 19
.ACCU 8
.INDEX 8
	sep #$BB		; E2 BB
	cpy #$81.b		; C0 81
	jmp ($3F0C.w,X)		; 7C 0C 3F
	asl $1F.b		; 06 1F
	ora $9F.b,S		; 03 9F
	cmp ($CF.b,X)		; C1 CF
	cpx #$0F.b		; E0 0F
	sbc ($07.b,X)		; E1 07
	cpy #$86.b		; C0 86
	jmp ($7102.w,X)		; 7C 02 71
	rol $3C62.w,X		; 3E 62 3C
	eor $78.b		; 45 78
	plb		; AB
	eor ($93.b),Y		; 51 93
	adc $97.b,S		; 63 97
	adc $A6.b,S		; 63 A6
	eor [$AC.b]		; 47 AC
	eor [$3E.b]		; 47 3E
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $51.b		; 00 51
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $47.b		; 00 47
	brk $47.b		; 00 47
	brk $F8.b		; 00 F8
	and $FF7FFF.l,X		; 3F FF 7F FF
	sbc $B8FFFE.l,X		; FF FE FF B8
	sbc $27FF31.l,X		; FF 31 FF 27
	inc $F84D.w,X		; FE 4D F8
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sta ($D3.b,X)		; 81 D3
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($81.b),Y		; F1 81
	sbc $000000.l,X		; FF 00 00 00
	brk $20.b		; 00 20
	jsr $4050.w		; 20 50 40
	rts		; 60

	rti		; 40

	beq -64.b		; F0 C0
	beq  -8.b		; F0 F8
	bne -32.b		; D0 E0
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	jsr $4078.w		; 20 78 40
	bvs  64.b		; 70 40
	cpx #$40.b		; E0 40
	beq  96.b		; F0 60
	jsr ($F880.w,X)		; FC 80 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	tsb $0800.w		; 0C 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $001C00.l		; 0F 00 1C 00
	clc		; 18
	brk $10.b		; 00 10
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	pld		; 2B
	ora $1C.b,S		; 03 1C
	bit $A6.b,X		; 34 A6
	jmp.w [$6E4E]		; DC 4E 6E
	ora $00.b,S		; 03 00
	rti		; 40

	eor $00.b,S		; 43 00
	ora [$01.b]		; 07 01
	ora $00EF02.l,X		; 1F 02 EF 00
	lda $18EF04.l,X		; BF 04 EF 18
	dec $3B38.w,X		; DE 38 3B
	sei		; 78
	xce		; FB
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0808.w		; 0C 08 08
	sed		; F8
	cpx $2CF0.w		; EC F0 2C
	inx		; E8
	bit $E8.b,X		; 34 E8
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C4.b		; 00 C4
	cpx $08.b		; E4 08
	plp		; 28
	bra -80.b		; 80 B0
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
	brk $80.b		; 00 80
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
	php		; 08
	bit $00.b		; 24 00
	rts		; 60

	bmi -32.b		; 30 E0
	jsr $40C0.w		; 20 C0 40
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	bit $7C00.w,X		; 3C 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$FD.b		; C0 FD
	ora ($F1.b,X)		; 01 F1
	rol $B04F.w,X		; 3E 4F B0
	sbc $BE86.w,Y		; F9 86 BE
	adc $00FFC3.l,X		; 7F C3 FF 00
	sbc $BEFF00.l,X		; FF 00 FF BE
	bra -116.b		; 80 8C
	sty $40C0.w		; 8C C0 40
	stx $00.b		; 86 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$FB.b]		; 07 FB
	sta [$7A.b]		; 87 7A
	cmp $0FF736.l		; CF 36 F7 0F
	adc [$8F.b],Y		; 77 8F
	tyx		; BB
	cmp [$DD.b]		; C7 DD
	sbc $3F.b,S		; E3 3F
	sbc ($89.b,X)		; E1 89
	sta $001E18.l		; 8F 18 1E 00
	asl $1F03.w		; 0E 03 1F
	sta $1F.b,S		; 83 1F
	cmp ($0F.b,X)		; C1 0F
	cpx #$07.b		; E0 07
	cpx #$03.b		; E0 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $807F00.l,X		; FF 00 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	rts		; 60

	rts		; 60

	sta ($81.b,X)		; 81 81
	cop $02.b		; 02 02
	mvp $28,$44		; 44 44 28
	plp		; 28
	bcc  16.b		; 90 10
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	phb		; 8B
	phb		; 8B
	ora ($01.b,X)		; 01 01
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	jsl $222222.l		; 22 22 22 22
	mvp $84,$44		; 44 44 84
	sty $9D.b		; 84 9D
	ldx $0D8E.w,Y		; BE 8E 0D
	sty $0907.w		; 8C 07 09
	ora [$1B.b]		; 07 1B
	ora [$14.b]		; 07 14
	ora $3C0F38.l		; 0F 38 0F 3C
	ora $0DBC86.l,X		; 1F 86 BC 0D
	sty $8407.w		; 8C 07 84
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $FE0100.l,X		; 1F 00 01 FE
	asl $73FF.w		; 0E FF 73
	sbc $01FFC0.l,X		; FF C0 FF 01
	inc $F907.w,X		; FE 07 F9
	asl $7CE7.w,X		; 1E E7 7C
	sta $FF00FE.l,X		; 9F FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F9.b		; 00 F9
	brk $E7.b		; 00 E7
	brk $9F.b		; 00 9F
	brk $8C.b		; 00 8C
	eor [$98.b]		; 47 98
	eor $980FD8.l		; 4F D8 0F 98
	ora $900F90.l		; 0F 90 0F 90
	ora $080F80.l		; 0F 80 0F 08
	ora [$47.b]		; 07 47
	brk $4F.b		; 00 4F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $5A.b		; 00 5A
	sbc ($95.b),Y		; F1 95
	sbc $AA.b,S		; E3 AA
	cmp [$1C.b]		; C7 1C
	cmp [$51.b]		; C7 51
	stx $8D72.w		; 8E 72 8D
	lda $1D.b,S		; A3 1D
	lda $1F.b,S		; A3 1F
	sbc ($00.b),Y		; F1 00
	sbc $00.b,S		; E3 00
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	stx $8D00.w		; 8E 00 8D
	brk $1D.b		; 00 1D
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	sbc $00FFF8.l,X		; FF F8 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	trb $11.b		; 14 11
	brk $15.b		; 00 15
	ora $02.b		; 05 02
	tsb $05.b		; 04 05
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora $00.b,X		; 15 00
	ora ($04.b,S),Y		; 13 04
	ora $00.b,X		; 15 00
	asl $01.b		; 06 01
	ora [$02.b]		; 07 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	sed		; F8
	ora $82.b,S		; 03 82
	.db $62, $63, $82		; 62 63 82
	.db $42, $C4		; 42 C4
	tsb $BE.b		; 04 BE
	ldx $3C1C.w		; AE 1C 3C
	jsr $0020.w		; 20 20 00
	lda $E2C340.l,X		; BF 40 C3 E2
	sbc [$00.b]		; E7 00
	dec $CC00.w		; CE 00 CC
	stx $BE.b		; 86 BE
	trb $3C.b		; 14 3C
	jsr $3F20.w		; 20 20 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $18.b		; 00 18
	clc		; 18
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	cpy #$00.b		; C0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $07.b		; 02 07
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $03.b		; 00 03
	bit $87C3.w,X		; 3C C3 87
	sed		; F8
	sbc ($FC.b,S),Y		; F3 FC
	and $C6CE.w,X		; 3D CE C6
	xce		; FB
	sbc ($FC.b,S),Y		; F3 FC
	sbc $7B3E.w,X		; FD 3E 7B
	jsr ($00C3.w,X)		; FC C3 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $CE.b		; 00 CE
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $3E.b		; 00 3E
	brk $FC.b		; 00 FC
	brk $E7.b		; 00 E7
	sed		; F8
	sta $E01FF0.l		; 8F F0 1F E0
	sta $C73860.l,X		; 9F 60 38 C7
	bcs -49.b		; B0 CF
	and ($CE.b),Y		; 31 CE
	ora ($CC.b,S),Y		; 13 CC
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $C7.b		; 00 C7
	brk $CF.b		; 00 CF
	brk $CE.b		; 00 CE
	brk $CC.b		; 00 CC
	brk $08.b		; 00 08
	ora [$01.b]		; 07 01
	asl $05.b		; 06 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A6.b		; 00 A6
	tas		; 1B
	rol $1D13.w		; 2E 13 1D
	ora $1F.b,S		; 03 1F
	ora ($0A.b,X)		; 01 0A
	ora ($05.b,X)		; 01 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $57.b		; 00 57
	dey		; 88
	eor [$88.b],Y		; 57 88
	eor $C00780.l		; 4F 80 07 C0
	lda ($C0.b,X)		; A1 C0
	bpl -32.b		; 10 E0
	sty $7070.w		; 8C 70 70
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	trb $39C9.w		; 1C C9 39
	cmp $31.b		; C5 31
	cmp $8D31.w,X		; DD 31 8D
	adc ($BD.b,X)		; 61 BD
	adc ($1D.b,X)		; 61 1D
	eor ($1C.b,X)		; 41 1C
	cmp ($0B.b,X)		; C1 0B
	phd		; 0B
	asl $10.b,X		; 16 10
	asl $2E10.w,X		; 1E 10 2E
	jsr $203E.w		; 20 3E 20
	asl $7E00.w,X		; 1E 00 7E
	rti		; 40

	adc $000F41.l,X		; 7F 41 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
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
	jsr ($FC00.w,X)		; FC 00 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$60.b		; C0 60
	rts		; 60

	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
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
	ora $001F00.l,X		; 1F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

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
	trb $28C6.w		; 1C C6 28
	sep #$08		; E2 08
	.db $62, $1C, $73		; 62 1C 73
	asl $0D73.w,X		; 1E 73 0D
	bvs  15.b		; 70 0F
	bvs  15.b		; 70 0F
	ror $78.b,X		; 76 78
	rti		; 40

	jmp $203C40.l		; 5C 40 3C 20
	rol $0C22.w		; 2E 22 0C
	brk $1E.b		; 00 1E
	bpl  24.b		; 10 18
	bpl  22.b		; 10 16
	asl $3E.b,X		; 16 3E
	dec $BA5E.w,X		; DE 5E BA
	lsr $9FB0.w,X		; 5E B0 9F
	jsr $00BF.w		; 20 BF 00
	lda $00FF00.l,X		; BF 00 FF 00
	adc $1E0C00.l,X		; 7F 00 0C 1E
	php		; 08
	dec A		; 3A
	brk $30.b		; 00 30
	cop $62.b		; 02 62
	cop $42.b		; 02 42
	cop $42.b		; 02 42
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $003F00.l,X		; 1F 00 3F 00
	ror $7E00.w,X		; 7E 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
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
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($1E.b,X)		; 01 1E
	ora $7C.b,S		; 03 7C
	ora $0337C8.l		; 0F C8 37 03
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $37.b		; 00 37
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $7B.b		; 00 7B
	ora [$F7.b]		; 07 F7
	cmp $49DF24.l		; CF 24 DF 49
	lda $607F91.l,X		; BF 91 7F 60
	sbc $00F8C5.l,X		; FF C5 F8 00
	brk $07.b		; 00 07
	brk $CF.b		; 00 CF
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FA.b		; 00 FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $08.b		; 02 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	brk $B8.b		; 00 B8
	adc $C3FFFE.l,X		; 7F FE FF C3
	and $0E0738.l,X		; 3F 38 07 0E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra  24.b		; 80 18
	cpx #$87.b		; E0 87
	sed		; F8
	bvs  -1.b		; 70 FF
	jmp ($0083.w,X)		; 7C 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FC.b		; 00 FC
	ora $00.b,S		; 03 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cop $09.b		; 02 09
	ora [$DC.b]		; 07 DC
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	brk $2D.b		; 00 2D
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $86.b		; 00 86
	sty $02.b		; 84 02
	php		; 08
	tsb $04.b		; 04 04
	bpl   2.b		; 10 02
	sta $00FA.w		; 8D FA 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sed		; F8
	tsb $86.b		; 04 86
	brk $0A.b		; 00 0A
	tsb $04.b		; 04 04
	brk $7A.b		; 00 7A
	bra -65.b		; 80 BF
	ldy #$C0.b		; A0 C0
	plx		; FA
	jsr ($FFFF.w,X)		; FC FF FF
	sta $071B7F.l,X		; 9F 7F 1B 07
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $7F.b,S		; 03 7F
	brk $F0.b		; 00 F0
	beq  -1.b		; F0 FF
	bit $07FF.w,X		; 3C FF 07
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $00.b,S		; 03 00
	adc $00FF03.l,X		; 7F 03 FF 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -24.b		; 80 E8
	beq  -2.b		; F0 FE
	inc $7FBF.w,X		; FE BF 7F
	and $DEDE9F.l,X		; 3F 9F DE DE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra  -2.b		; 80 FE
	jsr ($1EFF.w,X)		; FC FF 1E
	sbc $C8FF0E.l,X		; FF 0E FF C8
	sbc $5FE02F.l,X		; FF 2F E0 5F
	cpy #$BC.b		; C0 BC
	bra -64.b		; 80 C0
	sbc $11F803.l,X		; FF 03 F8 11
	sed		; F8
	and ($FC.b,X)		; 21 FC
	cpy #$FC.b		; C0 FC
	eor $80BF40.l,X		; 5F 40 BF 80
	adc $303000.l,X		; 7F 00 30 30
	cpx #$E4.b		; E0 E4
	cpy #$DE.b		; C0 DE
	brk $3E.b		; 00 3E
	bra  -1.b		; 80 FF
	cmp [$38.b]		; C7 38
	sbc $010E00.l,X		; FF 00 0E 01
	asl $0EF0.w		; 0E F0 0E
	bmi -128.b		; 30 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $F8.b,S		; 03 F8
	sec		; 38
	beq   0.b		; F0 00
	beq   1.b		; F0 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FB.b		; 00 FB
	bcc  24.b		; 90 18
	pla		; 68
	dey		; 88
	sei		; 78
	bra  -4.b		; 80 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $90.b		; 00 90
	jsr ($FCE8.w,X)		; FC E8 FC
	sec		; 38
	bit $2424.w,X		; 3C 24 24
	ora ($12.b)		; 12 12
	ora ($12.b)		; 12 12
	and $25.b		; 25 25
	bit $24.b		; 24 24
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
	bra -128.b		; 80 80
	jmp.w [$03DF]		; DC DF 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $DC.b		; 00 DC
	jmp.w [$0000]		; DC 00 00
	ora $03.b,S		; 03 03
	tsb $100C.w		; 0C 0C 10
	bpl   8.b		; 10 08
	php		; 08
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	jsr ($E003.w,X)		; FC 03 E0
	ora $F00FF0.l,X		; 1F F0 0F F0
	ora $FF06F9.l		; 0F F9 06 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $41.b		; 00 41
	eor ($80.b,X)		; 41 80
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	bpl  32.b		; 10 20
	jsr $4141.w		; 20 41 41
	.db $82, $82, $04		; 82 82 04
	tsb $10.b		; 04 10
	sbc $C29F60.l		; EF 60 9F C2
	and $307F8C.l,X		; 3F 8C 7F 30
	sbc $03FFC0.l,X		; FF C0 FF 03
	jsr ($F00F.w,X)		; FC 0F F0
	sbc $009F00.l		; EF 00 9F 00
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($F000.w,X)		; FC 00 F0
	brk $08.b		; 00 08
	sbc $08.b,X		; F5 08
	sbc $2A.b,X		; F5 2A
	dec $20.b,X		; D6 20
	dec $837C.w,X		; DE 7C 83
	jsr ($FF03.w,X)		; FC 03 FF
	brk $C6.b		; 00 C6
	rol $00F7.w,X		; 3E F7 00
	sbc [$02.b],Y		; F7 02
	cmp $00.b,X		; D5 00
	cmp $8304.w,X		; DD 04 83
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $0E3100.l		; 0F 00 31 0E
	mvp $99,$3B		; 44 3B 99
	adc [$00.b]		; 67 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $3B.b		; 00 3B
	brk $67.b		; 00 67
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $17.b		; 00 17
	ora $FC0FF0.l		; 0F F0 0F FC
	ora $1F.b,S		; 03 1F
	sbc $C0FF78.l,X		; FF 78 FF C0
	sbc $000000.l,X		; FF 00 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E1.b		; 00 E1
	ora $F0FF7F.l,X		; 1F 7F FF F0
	sbc $1FFE01.l,X		; FF 01 FE 1F
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $1FFF00.l,X		; FF 00 FF 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	sbc $0FFE81.l,X		; FF 81 FE 0F
	beq  -8.b		; F0 F8
	ora [$03.b]		; 07 03
	sbc $00FF3C.l,X		; FF 3C FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $D0.b		; 00 D0
	tsb $DCDC.w		; 0C DC DC
	eor $0EC9.w,Y		; 59 C9 0E
	php		; 08
	ora #$05.b		; 09 05
	cop $05.b		; 02 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FB.b,S		; 03 FB
	cmp $F900FF.l		; CF FF 00 F9
	brk $2F.b		; 00 2F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	eor $B5.b,S		; 43 B5
	clv		; B8
	asl A		; 0A
	cop $04.b		; 02 04
	tsb $0A.b		; 04 0A
	asl $FC.b		; 06 FC
	jsr ($3838.w,X)		; FC 38 38
	brk $00.b		; 00 00
	lda ($FB.b,S),Y		; B3 FB
	bmi -67.b		; 30 BD
	cop $0A.b		; 02 0A
	brk $04.b		; 00 04
	cop $FE.b		; 02 FE
	sty $FC.b		; 84 FC
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	adc $007C7C.l,X		; 7F 7C 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($00FF.w,X)		; 7C FF 00
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($1818.w,X)		; FC 18 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	inc $1800.w,X		; FE 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	cmp $DF.b,S		; C3 DF
	cmp $00DDFC.l,X		; DF FC DD 00
	ora #$F5.b		; 09 F5
	ora $ADED.w,X		; 1D ED AD
	eor $0040.w		; 4D 40 00
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	jmp.w [$00FF]		; DC FF 00
	cmp $0D00.w,X		; DD 00 0D
	and ($2D.b,X)		; 21 2D
	eor $004D.w		; 4D 4D 00
	brk $03.b		; 00 03
	xce		; FB
	xce		; FB
	sed		; F8
	sed		; F8
	brk $10.b		; 00 10
	inx		; E8
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	brk $00.b		; 00 00
	ora $FF.b,S		; 03 FF
	sed		; F8
	sbc $00F800.l,X		; FF 00 F8 00
	sed		; F8
	brk $98.b		; 00 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $00EF00.l,X		; FF 00 EF 00
	sta [$70.b],Y		; 97 70
	phd		; 0B
	sec		; 38
	mvp $44,$44		; 44 44 44
	mvp $89,$89		; 44 89 89
	phb		; 8B
	txa		; 8A
	sta $A0BF98.l,X		; 9F 98 BF A0
	lda $1017A0.l		; AF A0 17 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra  64.b		; 80 40
	cpy #$20.b		; C0 20
	cpy #$10.b		; C0 10
	cpx #$08.b		; E0 08
	beq   4.b		; F0 04
	jsr ($C006.w,X)		; FC 06 C0
	cpy #$40.b		; C0 40
	rti		; 40

	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $0C05.w		; 0C 05 0C
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	sbc $00EF00.l,X		; FF 00 EF 00
	xba		; EB
	tsb $0CC0.w		; 0C C0 0C
	tsb $080C.w		; 0C 0C 08
	php		; 08
	tya		; 98
	tya		; 98
	sed		; F8
	sei		; 78
	sed		; F8
	clc		; 18
	sed		; F8
	php		; 08
	sbc [$07.b],Y		; F7 07
	sed		; F8
	php		; 08
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp [$3F.b]		; C7 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	sbc $00FF00.l,X		; FF 00 FF 00
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	ora $FC.b,S		; 03 FC
	sed		; F8
	sbc $00FFE0.l,X		; FF E0 FF 00
	sbc $03FF00.l,X		; FF 00 FF 03
	jsr ($F00F.w,X)		; FC 0F F0
	sbc $00FC00.l,X		; FF 00 FC 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($F000.w,X)		; FC 00 F0
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $08.b		; 02 08
	tsb $30.b		; 04 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	ora $513F58.l,X		; 1F 58 3F 51
	rol $7887.w,X		; 3E 87 78
	clv		; B8
	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $78.b		; 00 78
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	eor ($50.b,S),Y		; 53 50
	mvn $00,$D0		; 54 D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $D3.b		; 00 D3
	brk $FF.b		; 00 FF
	bvc  -1.b		; 50 FF
	brk $D0.b		; 00 D0
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	tsb $080C.w		; 0C 0C 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	inc $FA39.w,X		; FE 39 FA
	trb $00FC.w		; 1C FC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	sec		; 38
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	ora [$30.b],Y		; 17 30
	asl $2C60.w		; 0E 60 2C
	adc ($07.b,X)		; 61 07
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	and $011F20.l,X		; 3F 20 1F 01
	bra   0.b		; 80 00
	.db $82, $F0, $EE		; 82 F0 EE
	beq -17.b		; F0 EF
	inc $FECD.w,X		; FE CD FE
	sta $EE.b,X		; 95 EE
	eor $BA.b,X		; 55 BA
	lsr A		; 4A
	bne   0.b		; D0 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $8A.b		; 00 8A
	brk $F0.b		; 00 F0
	bvs -16.b		; 70 F0
	cld		; D8
	sei		; 78
	tsb $70.b		; 04 70
	php		; 08
	rts		; 60

	sec		; 38
	jsr $C010.w		; 20 10 C0
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bvs   0.b		; 70 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	bpl -12.b		; 10 F4
	asl $E8.b		; 06 E8
	tsb $18D0.w		; 0C D0 18
	ldy #$30.b		; A0 30
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$05.b]		; 07 05
	ora $0C.b,S		; 03 0C
	cop $34.b		; 02 34
	asl A		; 0A
	adc $0C7F19.l		; 6F 19 7F 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $0A.b		; 02 0A
	ora $1A.b,S		; 03 1A
	ora $1A.b,S		; 03 1A
	brk $18.b		; 00 18
	tsb $FE0C.w		; 0C 0C FE
	ora ($1C.b,X)		; 01 1C
	sbc $38.b,S		; E3 38
	cmp [$68.b]		; C7 68
	sta [$C8.b]		; 87 C8
	ora [$C8.b]		; 07 C8
	ora [$84.b]		; 07 84
	and $007723.l		; 2F 23 77 00
	cop $E0.b		; 02 E0
	tsb $C1.b		; 04 C1
	ora #$81.b		; 09 81
	ora $3901.w,Y		; 19 01 39
	ora ($39.b,X)		; 01 39
	tsb $7C.b		; 04 7C
	ora $FF.b,S		; 03 FF
	adc ($F9.b),Y		; 71 F9
	brk $02.b		; 00 02
	cop $FE.b		; 02 FE
	sbc $03FFFC.l,X		; FF FC FF 03
	rol $1C3E.w,X		; 3E 3E 1C
	jmp.w [$7828]		; DC 28 78
	jsr $00FF.w		; 20 FF 00
	sbc $FCFF02.l,X		; FF 02 FF FC
	inc $FF00.w,X		; FE 00 FF
	trb $08FF.w		; 1C FF 08
	inc $FC00.w,X		; FE 00 FC
	clc		; 18
	cmp $78.b,S		; C3 78
	dec $F8.b		; C6 F8
	sty $0CE0.w		; 8C E0 0C
	beq  24.b		; F0 18
	cpx #$38.b		; E0 38
	cpx #$F0.b		; E0 F0
	brk $E0.b		; 00 E0
	ror $BC42.w,X		; 7E 42 BC
	sty $70.b		; 84 70
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	brk $FF.b		; 00 FF
	and $01E6C0.l,X		; 3F C0 E6 01
	clc		; 18
	ora [$2F.b]		; 07 2F
	ora $F03F7C.l,X		; 1F 7C 3F F0
	adc $FFB8C7.l		; 6F C7 B8 FF
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $6F.b		; 00 6F
	brk $B8.b		; 00 B8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7D.b		; 00 7D
	brk $06.b		; 00 06
	cop $02.b		; 02 02
	xce		; FB
	xce		; FB
	jsr ($00FF.w,X)		; FC FF 00
	lsr $99.b,X		; 56 99
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $FB.b		; 02 FB
	cop $FF.b		; 02 FF
	sed		; F8
	sbc $FC00.w,X		; FD 00 FC
	bpl -104.b		; 10 98
	inc $FC00.w,X		; FE 00 FC
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	sbc $FEFCFF.l,X		; FF FF FC FE
	brk $C2.b		; 00 C2
	and $9C62.w,X		; 3D 62 9C
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	jsr ($00FF.w,X)		; FC FF 00
	sbc $0504.w,X		; FD 04 05
	tsb $020D.w		; 0C 0D 02
	brk $04.b		; 00 04
	brk $08.b		; 00 08
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
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	ora ($B5.b,X)		; 01 B5
	sta $BC9E.w		; 8D 9E BC
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $9F.b		; 00 9F
	brk $FF.b		; 00 FF
	sty $00FD.w		; 8C FD 00
	stz $40BF.w		; 9C BF 40
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $43.b		; 00 43
	phb		; 8B
	lda [$BF.b],Y		; B7 BF
	ldy $017D.w,X		; BC 7D 01
	sta $400D.w		; 8D 0D 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$40.b]		; 07 40
	lda $B4FF03.l,X		; BF 03 FF B4
	sbc $0DBD01.l,X		; FF 01 BD 0D
	ora $003F.w		; 0D 3F 00
	rol $7E00.w,X		; 3E 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $6F1773.l		; 0F 73 17 6F
	and $385F5C.l		; 2F 5C 5F 38
	eor $007F20.l,X		; 5F 20 7F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	ora ($13.b)		; 12 13
	tsb $0F.b		; 04 0F
	php		; 08
	trb $3810.w		; 1C 10 38
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	jsr ($F800.w,X)		; FC 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	brk $4F.b		; 00 4F
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
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
	and [$F0.b],Y		; 37 F0
	ora $037C.w		; 0D 7C 03
	ora $000700.l,X		; 1F 00 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	rti		; 40

	ora ($10.b,S),Y		; 13 10
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$18.b		; E0 18
	beq  12.b		; F0 0C
	sei		; 78
	asl $DC.b		; 06 DC
.ACCU 16
	rep #$6E		; C2 6E
	sbc ($1E.b,X)		; E1 1E
	adc $710E.w,Y		; 79 0E 71
	asl $F061.w,X		; 1E 61 F0
	bpl  -8.b		; 10 F8
	php		; 08
	jsr ($3E04.w,X)		; FC 04 3E
	cop $1E.b		; 02 1E
	brk $27.b		; 00 27
	and ($1F.b,X)		; 21 1F
	ora ($39.b),Y		; 11 39
	and ($07.b,X)		; 21 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	php		; 08
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($FE.b,X)		; 01 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	.db $42, $80		; 42 80
	.db $82, $80, $80		; 82 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7020.w		; 20 20 70
	adc ($E3.b,S),Y		; 73 E3
	sbc [$43.b],Y		; F7 43
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	and [$70.b]		; 27 70
	adc $40FFE3.l,X		; 7F E3 FF 40
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora [$03.b]		; 07 03
	ora $1C.b,S		; 03 1C
	ora ($6C.b,X)		; 01 6C
	asl $7FB0.w,X		; 1E B0 7F
	rti		; 40

	sbc $E0FF80.l,X		; FF 80 FF E0
	ora $010F03.l,X		; 1F 03 0F 01
	ora [$00.b]		; 07 00
	ora $1E.b,S		; 03 1E
	ora ($7F.b,X)		; 01 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $FCFC1F.l,X		; 1F 1F FC FC
	cpx #$F0.b		; E0 F0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $1CFF03.l,X		; 1F 03 FF 1C
	sbc $80FCE0.l,X		; FF E0 FC 80
	beq   0.b		; F0 00
	bra   3.b		; 80 03
	ora $6C6C0F.l,X		; 1F 0F 6C 6C
	adc $62.b,S		; 63 62
	tsb $86.b		; 04 86
	asl $06.b		; 06 06
	asl $03.b		; 06 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	cmp $60FF0C.l,X		; DF 0C FF 60
	sbc $00E600.l,X		; FF 00 E6 00
	stx $06.b		; 86 06
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $98.b		; 00 98
	cmp [$EC.b]		; C7 EC
	sbc $EE.b,S		; E3 EE
	sbc ($5E.b,X)		; E1 5E
	cmp ($3E.b,X)		; C1 3E
	brk $7D.b		; 00 7D
	sta $38.b,S		; 83 38
	cmp [$00.b]		; C7 00
	sbc $83E007.l,X		; FF 07 E0 83
	beq -63.b		; F0 C1
	beq   0.b		; F0 00
	cpx #$01.b		; E0 01
	cpy #$80.b		; C0 80
	brk $C3.b		; 00 C3
	ora $F0.b,S		; 03 F0
	brk $01.b		; 00 01
	inc $F00F.w,X		; FE 0F F0
	brk $FF.b		; 00 FF
	lsr $FFC0.w		; 4E C0 FF
	brk $1F.b		; 00 1F
	brk $FE.b		; 00 FE
	sbc $FEFF00.l,X		; FF 00 FF FE
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $BF.b		; 00 BF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $F8.b		; 00 F8
	bra -56.b		; 80 C8
	clc		; 18
	jmp $5F30E0.l		; 5C E0 30 5F
	xce		; FB
	and $C67FD7.l,X		; 3F D7 7F C6
	tda		; 7B
	sty $7B.b		; 84 7B
	bra  -8.b		; 80 F8
	brk $D8.b		; 00 D8
	jsr $5FC0.w		; 20 C0 5F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $0E.b		; 00 0E
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora ($39.b,X)		; 01 39
	cpy #$24.b		; C0 24
	sed		; F8
	ora ($FC.b)		; 12 FC
	cli		; 58
	ldx $3CCA.w,Y		; BE CA 3C
	brk $3F.b		; 00 3F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	cpy #$03.b		; C0 03
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	ora ($BE.b,X)		; 01 BE
	brk $3C.b		; 00 3C
	brk $FB.b		; 00 FB
	ora [$FF.b]		; 07 FF
	tsb $FF.b		; 04 FF
	ora $3E.b,S		; 03 3E
	bra  63.b		; 80 3F
	bmi -65.b		; 30 BF
	sed		; F8
	clc		; 18
	cmp [$1C.b],Y		; D7 1C
	stp		; DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	bcc 112.b		; 90 70
	clc		; 18
	sec		; 38
	sta $B3.b,S		; 83 B3
	php		; 08
	sec		; 38
	sbc $FA01.w,X		; FD 01 FA
	sta $BC.b,S		; 83 BC
	stx $3C.b		; 86 3C
	jsr $04FA.w		; 20 FA 04
	sbc ($0E.b),Y		; F1 0E
	sbc ($0E.b),Y		; F1 0E
	bvc -113.b		; 50 8F
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $64.b		; 00 64
	tsb $2A.b		; 04 2A
	asl A		; 0A
	cop $02.b		; 02 02
	lda ($A1.b,X)		; A1 A1
	dey		; 88
	bvs  80.b		; 70 50
	jsr $0030.w		; 20 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   1.b		; 10 01
	bpl   1.b		; 10 01
	brk $01.b		; 00 01
	bvs   0.b		; 70 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sbc ($1C.b,X)		; E1 1C
	cmp ($7C.b,X)		; C1 7C
	cmp ($7C.b,X)		; C1 7C
	cmp ($3E.b,X)		; C1 3E
	sta $F8.b,S		; 83 F8
	sta $7C.b,S		; 83 7C
	asl $F0.b		; 06 F0
	asl $5F.b		; 06 5F
	eor ($7F.b,X)		; 41 7F
	eor ($3F.b,X)		; 41 3F
	ora ($BF.b,X)		; 01 BF
	sta ($FC.b,X)		; 81 FC
	bra 126.b		; 80 7E
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
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
	brk $02.b		; 00 02
	phx		; DA
	ora $F8.b,S		; 03 F8
	ora $6060.w,X		; 1D 60 60
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	cop $FF.b		; 02 FF
	brk $FD.b		; 00 FD
	rts		; 60

	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cld		; D8
	bne -16.b		; D0 F0
	brk $70.b		; 00 70
	jsr $1820.w		; 20 20 18
	sec		; 38
	tsb $0E1C.w		; 0C 1C 0E
	asl $0F0F.w		; 0E 0F 0F
	clc		; 18
	jsr ($F8C0.w,X)		; FC C0 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	php		; 08
	rol $3F0C.w,X		; 3E 0C 3F
	asl $1F.b		; 06 1F
	ora ($06.b,X)		; 01 06
	asl A		; 0A
	tsb $0C.b		; 04 0C
	brk $08.b		; 00 08
	ora ($0A.b,X)		; 01 0A
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $07.b,S		; 03 07
	ora $06.b,S		; 03 06
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $1C.b		; 00 1C
	ora $03.b,S		; 03 03
	jmp ($7FB0.w,X)		; 7C B0 7F
	rti		; 40

	sbc $A9EF94.l,X		; FF 94 EF A9
	dec $BD53.w,X		; DE 53 BD
	lsr $BB.b,X		; 56 BB
	ora $00.b,S		; 03 00
	jmp ($7F00.w,X)		; 7C 00 7F
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $DE.b		; 00 DE
	brk $BD.b		; 00 BD
	brk $BB.b		; 00 BB
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
	bra   3.b		; 80 03
	brk $05.b		; 00 05
	cop $09.b		; 02 09
	asl $18.b		; 06 18
	ora $721F31.l		; 0F 31 1F 72
	and $9C7FFE.l,X		; 3F FE 7F 9C
	sbc $020000.l,X		; FF 00 00 02
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $007F80.l,X		; FF 80 7F 00
	sbc $40FF00.l,X		; FF 00 FF 40
	sbc $28EF94.l,X		; FF 94 EF 28
	cmp $FFBE51.l,X		; DF 51 BE FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $DF.b		; 00 DF
	brk $BE.b		; 00 BE
	brk $01.b		; 00 01
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	php		; 08
	sbc $A0BF50.l,X		; FF 50 BF A0
	adc $FEFE41.l,X		; 7F 41 FE FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $AD.b		; 00 AD
	eor ($95.b)		; 52 95
	mvp $10,$F2		; 44 F2 10
	cmp $984F3E.l		; CF 3E 4F 98
	and ($C9.b,S),Y		; 33 C9
	and $74C4.w,Y		; 39 C4 74
	txa		; 8A
	bvc   0.b		; 50 00
	ror $2D06.w		; 6E 06 2D
	ora ($11.b,X)		; 01 11
	bpl -89.b		; 10 A7
	jsr $08CE.w		; 20 CE 08
	cmp [$04.b]		; C7 04
	sta $02.b,S		; 83 02
	adc ($9C.b)		; 72 9C
	bit $D8.b		; 24 D8
	sec		; 38
	cpy #$10.b		; C0 10
	adc ($C1.b,X)		; 61 C1
	adc $43.b,S		; 63 43
	ror $449F.w		; 6E 9F 44
	rol $1CC0.w,X		; 3E C0 1C
	brk $98.b		; 00 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	bra -125.b		; 80 83
	brk $87.b		; 00 87
	bra  28.b		; 80 1C
	tad		; 5B
	ldy $8C3B.w,X		; BC 3B 8C
	tsa		; 3B
	phk		; 4B
	ldy $44.b,X		; B4 44
	txy		; 9B
	rol $67C1.w		; 2E C1 67
	stx $8D.b		; 86 8D
	adc $08.b,S		; 63 08
	clv		; B8
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	bra  48.b		; 80 30
	bra  56.b		; 80 38
	cpy #$10.b		; C0 10
	bra  30.b		; 80 1E
	rti		; 40

	eor ($58.b,S),Y		; 53 58
	sta [$76.b]		; 87 76
	bit #$56B9.w		; 89 B9 56
	and $35D6.w,Y		; 39 D6 35
	phx		; DA
	ror $B8.b,X		; 76 B8
	cpx #$70.b		; E0 70
	cpx #$F0.b		; E0 F0
	and ($21.b,X)		; 21 21
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $12.b		; 02 12
	.db $42, $5A		; 42 5A
	ldy #$B8.b		; A0 B8
	rts		; 60

	sei		; 78
	cpx #$F8.b		; E0 F8
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $0CF808.l		; 0F 08 F8 0C
	cpx #$0C.b		; E0 0C
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
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
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $0800.w		; 0E 00 08
	php		; 08
	bpl   4.b		; 10 04
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	php		; 08
	brk $14.b		; 00 14
	brk $10.b		; 00 10
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpx $A0.b		; E4 A0
	asl $1C.b		; 06 1C
	pld		; 2B
	bit $27.b,X		; 34 27
	and [$27.b]		; 27 27
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	jsr $F000.w		; 20 00 F0
	brk $F5.b		; 00 F5
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	rol $3CFF.w,X		; 3E FF 3C
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $00FF01.l,X		; 1F 01 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $7EFC1F.l,X		; 1F 1F FC 7E
	.db $62, $73, $87		; 62 73 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora $FF.b,S		; 03 FF
	trb $62FF.w		; 1C FF 62
	inc $F703.w,X		; FE 03 F7
	pei ($6F.b)		; D4 6F
	cmp $6E.b,X		; D5 6E
	sta $6E.b,X		; 95 6E
	ora $7D.b,S		; 03 7D
	eor ($2D.b,S),Y		; 53 2D
	eor ($2F.b,S),Y		; 53 2F
	asl A		; 0A
	and [$26.b]		; 27 26
	ora $6F.b,S		; 03 6F
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $7D.b		; 00 7D
	brk $2D.b		; 00 2D
	brk $2F.b		; 00 2F
	brk $27.b		; 00 27
	brk $03.b		; 00 03
	brk $DE.b		; 00 DE
	adc [$94.b]		; 67 94
	sbc $A9CEBD.l		; EF BD CE A9
	dec $DC2B.w,X		; DE 2B DC
	pld		; 2B
	jmp.w [$DC23]		; DC 23 DC
	adc $9C.b,S		; 63 9C
	adc [$00.b]		; 67 00
	sbc $00CE00.l		; EF 00 CE 00
	dec $DC00.w,X		; DE 00 DC
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $9C.b		; 00 9C
	brk $50.b		; 00 50
	lda $A07FB0.l,X		; BF B0 7F A0
	adc $40FF60.l,X		; 7F 60 FF 40
	sbc $40FE41.l,X		; FF 41 FE 40
	sbc $BFFF40.l,X		; FF 40 FF BF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $42.b		; 00 42
	lda $D821.w,Y		; B9 21 D8
	and ($C8.b,S),Y		; 33 C8
	eor $708FA0.l,X		; 5F A0 8F 70
	ora $40BFE0.l,X		; 1F E0 BF 40
	sbc $37B000.l,X		; FF 00 B0 37
	cpy #$07.b		; C0 07
	cpy #$04.b		; C0 04
	ldy $24.b		; A4 24
	eor ($41.b,X)		; 41 41
	asl A		; 0A
	asl A		; 0A
	ora ($12.b)		; 12 12
	bit $24.b		; 24 24
	sbc $FADE.w		; ED DE FA
	ror $FF.b,X		; 76 FF
	tsb $00FF.w		; 0C FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	tsb $32DF.w		; 0C DF 32
	sbc [$0D.b],Y		; F7 0D
	and $2AACA0.l,X		; 3F A0 AC 2A
	rol A		; 2A
	ora #$4409.w		; 09 09 44
	mvp $44,$44		; 44 44 44
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FD01.w,X		; FE 01 FD
	ora $FB.b,S		; 03 FB
	asl $FD.b		; 06 FD
	tsb $FC.b		; 04 FC
	tsb $00.b		; 04 00
	brk $FF.b		; 00 FF
	sbc $3FC1C1.l,X		; FF C1 C1 3F
	and $8D0606.l,X		; 3F 06 06 8D
	sty $787B.w		; 8C 7B 78
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra 127.b		; 80 7F
	sbc $E3.b,S		; E3 E3
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $070400.l,X		; FF 00 04 07
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	trb $FF00.w		; 1C 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$A0.b		; E0 A0
	sec		; 38
	beq  12.b		; F0 0C
	beq   4.b		; F0 04
	bcs -124.b		; B0 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne  16.b		; D0 10
	sed		; F8
	php		; 08
	sed		; F8
	brk $78.b		; 00 78
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
	brk $0F.b		; 00 0F
	clc		; 18
	ora [$30.b]		; 07 30
	ora $1C7F20.l,X		; 1F 20 7F 1C
	adc $06FB24.l,X		; 7F 24 FB 06
	sbc $FC02.w,X		; FD 02 FC
	cop $07.b		; 02 07
	brk $1F.b		; 00 1F
	bpl  35.b		; 10 23
	jsr $1C0D.w		; 20 0D 1C
	ora ($64.b,X)		; 01 64
	brk $86.b		; 00 86
	rti		; 40

	.db $42, $40		; 42 40
	eor $00.b,S		; 43 00
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
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	asl $0B.b		; 06 0B
	ora ($08.b)		; 12 08
	asl A		; 0A
	ora #$0009.w		; 09 09 00
	asl $06.b		; 06 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($1B.b,X)		; 01 1B
	php		; 08
	phd		; 0B
	brk $09.b		; 00 09
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $41.b,S		; 03 41
	cmp #$04CA.w		; C9 CA 04
	cop $0A.b		; 02 0A
	php		; 08
	php		; 08
	tsb $70F0.w		; 0C F0 70
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	clv		; B8
	xce		; FB
	cpy #$CB.b		; C0 CB
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	php		; 08
	jmp ($F000.w,X)		; 7C 00 F0
	rts		; 60

	cpx #$00.b		; E0 00
	brk $1E.b		; 00 1E
	jsr ($E0FC.w,X)		; FC FC E0
	cpx #$80.b		; E0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $E0FE.w		; 1C FE E0
	jsr ($E080.w,X)		; FC 80 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $36.b,Y		; 96 36
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $B6.b,X		; 16 B6
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $03.b		; 26 03
	asl $03.b		; 06 03
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $9C.b,S		; 63 9C
	adc $9C.b,S		; 63 9C
	.db $62, $9C, $72		; 62 9C 72
	sty $8E70.w		; 8C 70 8E
	and #$A4C6.w		; 29 C6 A4
	eor $62.b,S		; 43 62
	ora ($9C.b,X)		; 01 9C
	brk $9C.b		; 00 9C
	brk $9C.b		; 00 9C
	brk $8C.b		; 00 8C
	brk $8E.b		; 00 8E
	brk $C6.b		; 00 C6
	brk $43.b		; 00 43
	brk $01.b		; 00 01
	brk $60.b		; 00 60
	sbc $B0FF20.l,X		; FF 20 FF B0
	adc $187F90.l,X		; 7F 90 7F 18
	adc $043F48.l,X		; 7F 48 3F 04
	and $FF1EA1.l,X		; 3F A1 1E FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1E.b		; 00 1E
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$3F.b		; C0 3F
	cpy #$3F.b		; C0 3F
	cpy #$7F.b		; C0 7F
	bra -125.b		; 80 83
	trb $1E01.w		; 1C 01 1E
	mvp $A8,$44		; 44 44 A8
	plp		; 28
	iny		; C8
	php		; 08
	cmp ($11.b),Y		; D1 11
	cmp ($11.b),Y		; D1 11
	sta $030D.w		; 8D 0D 03
	ora $07.b,S		; 03 07
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $12.b		; 00 12
	ora ($92.b)		; 12 92
	sta ($91.b)		; 92 91
	sta ($11.b),Y		; 91 11
	ora ($10.b),Y		; 11 10
	bpl  16.b		; 10 10
	bpl  17.b		; 10 11
	ora ($F6.b),Y		; 11 F6
	inc $FF.b,X		; F6 FF
	ora [$F0.b]		; 07 F0
	ora $C01FE0.l		; 0F E0 1F C0
	bit $00C0.w,X		; 3C C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	ora $3C3C1F.l,X		; 1F 1F 3C 3C
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -1.b		; 80 FF
	brk $E3.b		; 00 E3
	ora ($07.b,X)		; 01 07
	ora $071B00.l		; 0F 00 1B 07
	ora $001F00.l,X		; 1F 00 1F 00
	and $707000.l,X		; 3F 00 70 70
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	cpy $8C80.w		; CC 80 8C
	brk $18.b		; 00 18
	sed		; F8
	brk $F0.b		; 00 F0
	cpx #$E0.b		; E0 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	bra 120.b		; 80 78
	php		; 08
	beq  16.b		; F0 10
	bpl  16.b		; 10 10
	cpx #$F0.b		; E0 F0
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
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
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	sty $4600.w		; 8C 00 46
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $06.b		; 06 06
	rol $70.b,X		; 36 70
	bcs  -8.b		; B0 F8
	cpy #$E0.b		; C0 E0
	jsr $4040.w		; 20 40 40
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	tsb $FE.b		; 04 FE
	bmi  -1.b		; 30 FF
	cpy #$F8.b		; C0 F8
	jsr $40E0.w		; 20 E0 40
	rti		; 40

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
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $16.b		; 06 16
	trb $FF.b		; 14 FF
	sed		; F8
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora [$03.b]		; 07 03
	and [$04.b],Y		; 37 04
	sbc $E0FF10.l,X		; FF 10 FF E0
	sbc $0000.w,Y		; F9 00 00
	brk $07.b		; 00 07
	cmp $DF.b,S		; C3 DF
	sta $801CCC.l		; 8F CC 1C 80
	rti		; 40

	rti		; 40

	rts		; 60

	cpy #$20.b		; C0 20
	cli		; 58
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	cmp $FF.b,S		; C3 FF
	sty $00FF.w		; 8C FF 00
	jsr ($F000.w,X)		; FC 00 F0
	rti		; 40

	sed		; F8
	brk $FE.b		; 00 FE
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $08.b		; 00 08
	php		; 08
	clc		; 18
	clc		; 18
	trb $101C.w		; 1C 1C 10
	bpl  48.b		; 10 30
	bmi  32.b		; 30 20
	jsr $6060.w		; 20 60 60
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	bvs -16.b		; 70 F0
	clv		; B8
	sei		; 78
	jmp $1E20.w		; 4C 20 1E
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	cpx #$60.b		; E0 60
	beq  48.b		; F0 30
	sed		; F8
	clc		; 18
	jsr ($F200.w,X)		; FC 00 F2
	tsb $3E6C.w		; 0C 6C 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	cpy #$F8.b		; C0 F8
	bcc -32.b		; 90 E0
	bmi -64.b		; 30 C0
	rts		; 60

	rti		; 40

	rti		; 40

	bra -64.b		; 80 C0
	ora ($52.b)		; 12 52
	tsb $300C.w		; 0C 0C 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  32.b		; 30 20
	jsr $6060.w		; 20 60 60
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $1107.w		; 0C 07 11
	bpl  55.b		; 10 37
	and ($48.b),Y		; 31 48
	adc $62.b		; 65 62
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	ora $201110.l		; 0F 10 11 20
	and [$42.b],Y		; 37 42
	adc $006303.l		; 6F 03 63 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	jsr $0008.w		; 20 08 00
	sty $00.b		; 84 00
	php		; 08
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bpl  24.b		; 10 18
	brk $2C.b		; 00 2C
	brk $8C.b		; 00 8C
	brk $86.b		; 00 86
	brk $CC.b		; 00 CC
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	tya		; 98
	cpx #$E7.b		; E0 E7
	sed		; F8
	tsa		; 3B
	jsr ($FE0D.w,X)		; FC 0D FE
	asl $FF.b		; 06 FF
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra -80.b		; 80 B0
	rti		; 40

	clv		; B8
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora [$18.b]		; 07 18
	ora $471F30.l		; 0F 30 1F 47
	sec		; 38
	stz $0060.w		; 9C 60 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	sbc $00FF87.l,X		; FF 87 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $1E07F8.l,X		; FF F8 07 1E
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora [$08.b]		; 07 08
	asl $09.b		; 06 09
	tsb $0B.b		; 04 0B
	brk $0A.b		; 00 0A
	ora ($04.b,X)		; 01 04
	ora $03.b,S		; 03 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	sed		; F8
	clc		; 18
	sbc [$27.b]		; E7 27
	cmp $A03FD8.l,X		; DF D8 3F A0
	adc $3FFF40.l,X		; 7F 40 FF 3F
	cpy #$8C.b		; C0 8C
	ora $F8.b,S		; 03 F8
	brk $E7.b		; 00 E7
	brk $DF.b		; 00 DF
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $03.b		; 00 03
	brk $CE.b		; 00 CE
	and $C8CF33.l,X		; 3F 33 CF C8
	sbc [$E4.b],Y		; F7 E4
	xce		; FB
	ora ($FD.b)		; 12 FD
	php		; 08
	sbc $007F80.l,X		; FF 80 7F 00
	sbc $CF003F.l,X		; FF 3F 00 CF
	brk $F7.b		; 00 F7
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $65.b		; 00 65
	inc $FE25.w,X		; FE 25 FE
	sta ($FF.b)		; 92 FF
	eor ($FF.b)		; 52 FF
	and ($FF.b)		; 32 FF
	ora ($FF.b)		; 12 FF
	asl A		; 0A
	sbc [$76.b],Y		; F7 76
	phb		; 8B
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $8B.b		; 00 8B
	php		; 08
	and ($EC.b,S),Y		; 33 EC
	and ($EC.b,S),Y		; 33 EC
	and ($EC.b,S),Y		; 33 EC
	cmp [$68.b],Y		; D7 68
	cmp $7C.b,S		; C3 7C
	phk		; 4B
	inc $49.b,X		; F6 49
	pea $EC97.w		; F4 97 EC
	sbc $ED01.w		; ED 01 ED
	ora ($ED.b,X)		; 01 ED
	ora ($6A.b,X)		; 01 6A
	cop $79.b		; 02 79
	ora ($F0.b,X)		; 01 F0
	brk $F7.b		; 00 F7
	tsb $E3.b		; 04 E3
	brk $BE.b		; 00 BE
	adc $BF7FFF.l,X		; 7F FF 7F BF
	adc $E00FF0.l,X		; 7F F0 0F E0
	brk $97.b		; 00 97
	pla		; 68
	sta $FA9F70.l,X		; 9F 70 9F FA
	clc		; 18
	adc $1F7F3F.l,X		; 7F 3F 7F 1F
	adc $40BF80.l,X		; 7F 80 BF 40
	eor $B00028.l,X		; 5F 28 00 B0
	brk $3A.b		; 00 3A
	brk $20.b		; 00 20
	pla		; 68
	dec $E6.b		; C6 E6
	sbc $FB.b,S		; E3 FB
	ora $F7.b,S		; 03 F7
	brk $30.b		; 00 30
	ora ($03.b,X)		; 01 03
	bcc   0.b		; 90 00
	sty $0006.w		; 8C 06 00
	inc $FF06.w,X		; FE 06 FF
	sta $FF.b,S		; 83 FF
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $040B00.l,X		; 1F 00 0B 04
	phd		; 0B
	tsb $01.b		; 04 01
	asl $14.b		; 06 14
	trb $08.b		; 14 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	trb $14.b		; 14 14
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$07.b]		; 07 07
	ora $2119.w,Y		; 19 19 21
	and ($42.b,X)		; 21 42
	.db $42, $84		; 42 84
	sty $08.b		; 84 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	.db $62, $63, $60		; 62 63 60
	rts		; 60

	jsr $1A20.w		; 20 20 1A
	inc A		; 1A
	tsb $10.b		; 04 10
	ora #$8306.w		; 09 06 83
	ora ($C0.b,X)		; 01 C0
	ora $42.b,S		; 03 42
	adc ($41.b,S),Y		; 73 41
	adc ($01.b),Y		; 71 01
	and $1F11.w,Y		; 39 11 1F
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	bra -65.b		; 80 BF
	php		; 08
	bra -24.b		; 80 E8
	cpx $3000.w		; EC 00 30
	jsr $D810.w		; 20 10 D8
	beq -16.b		; F0 F0
	cpy #$E0.b		; C0 E0
	rti		; 40

	bmi -16.b		; 30 F0
	brk $4C.b		; 00 4C
	cpy #$FE.b		; C0 FE
	cpy #$DC.b		; C0 DC
	cpy #$F0.b		; C0 F0
	cpy #$F8.b		; C0 F8
	rti		; 40

	beq   0.b		; F0 00
	sed		; F8
	bpl  -8.b		; 10 F8
	ora ($FF.b,X)		; 01 FF
	adc ($9F.b,X)		; 61 9F
	beq -49.b		; F0 CF
	sei		; 78
	sbc [$BC.b]		; E7 BC
	adc ($5C.b,S),Y		; 73 5C
	tyx		; BB
	txa		; 8A
	sbc $FDCE.w,X		; FD CE FD
	sbc $009F00.l,X		; FF 00 9F 00
	cmp $00E700.l		; CF 00 E7 00
	adc ($00.b,S),Y		; 73 00
	tyx		; BB
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $5C.b		; 00 5C
	bcs -36.b		; B0 DC
	bcs -114.b		; B0 8E
	sed		; F8
	ldx $67D8.w		; AE D8 67
	jmp.w [$FC47]		; DC 47 FC
	eor [$EC.b],Y		; 57 EC
	eor [$EC.b],Y		; 57 EC
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	sed		; F8
	brk $D8.b		; 00 D8
	brk $DC.b		; 00 DC
	brk $FC.b		; 00 FC
	brk $EC.b		; 00 EC
	brk $EC.b		; 00 EC
	brk $60.b		; 00 60
	bra   7.b		; 80 07
	brk $10.b		; 00 10
	ora $9E1F67.l		; 0F 67 1F 9E
	adc $40FF30.l,X		; 7F 30 FF 40
	sbc $80FF80.l,X		; FF 80 FF 80
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E3.b		; 00 E3
	trb $07FB.w		; 1C FB 07
	asl $F3F1.w		; 0E F1 F3
	jsr ($FF3C.w,X)		; FC 3C FF
	ora [$FF.b]		; 07 FF
	ora ($FF.b,X)		; 01 FF
	bit $1CFF.w,X		; 3C FF 1C
	brk $07.b		; 00 07
	brk $F1.b		; 00 F1
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $05.b		; 00 05
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
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
	brk $10.b		; 00 10
	ora $431F20.l		; 0F 20 1F 43
	bit $3847.w,X		; 3C 47 38
	lda [$48.b],Y		; B7 48
	cmp $009F00.l		; CF 00 9F 00
	sta $000F00.l,X		; 9F 00 0F 00
	ora $033F00.l,X		; 1F 00 3F 03
	bit $4C04.w,X		; 3C 04 4C
	tsb $08.b		; 04 08
	php		; 08
	bpl  16.b		; 10 10
	ora ($13.b,S),Y		; 13 13
	bit $43C3.w,X		; 3C C3 43
	ldy $0EF1.w,X		; BC F1 0E
	sed		; F8
	ora [$FE.b]		; 07 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	brk $84.b		; 00 84
	tsb $C2.b		; 04 C2
.ACCU 16
	rep #$61		; C2 61
	adc ($18.b,X)		; 61 18
	ora $0706.w,Y		; 19 06 07
.ACCU 8
	sep #$E3		; E2 E3
	asl $C71F.w,X		; 1E 1F C7
	tsa		; 3B
	asl $FB.b		; 06 FB
	tsb $FB.b		; 04 FB
	bit #$76.b		; 89 76
	dec $7930.w		; CE 30 79
	brk $00.b		; 00 00
	ora ($7E.b,X)		; 01 7E
	brk $0B.b		; 00 0B
	php		; 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	asl $10.b,X		; 16 10
	bpl  17.b		; 10 11
	brk $87.b		; 00 87
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	ora ($E8.b,S),Y		; 13 E8
	and $B147D9.l		; 2F D9 47 B1
	stz $1F33.w,X		; 9E 33 1F
	ror $6D.b,X		; 76 6D
	inc $FCF3.w,X		; FE F3 FC
	sbc $08EFC0.l,X		; FF C0 EF 08
	dec $00.b		; C6 00
	ldx $0C10.w,Y		; BE 10 0C
	rti		; 40

	php		; 08
	cpy #$00.b		; C0 00
	cpx #$70.b		; E0 70
	beq -64.b		; F0 C0
	cpy #$DF.b		; C0 DF
	lda $BF70.w,X		; BD 70 BF
	dec $C33D.w,X		; DE 3D C3
	bit $3FC0.w,X		; 3C C0 3F
	cmp $28.b		; C5 28
	inc $1D.b		; E6 1D
	cmp $3D38.w,Y		; D9 38 3D
	brk $3F.b		; 00 3F
	brk $3D.b		; 00 3D
	brk $3C.b		; 00 3C
	brk $3B.b		; 00 3B
	brk $36.b		; 00 36
	bpl   9.b		; 10 09
	php		; 08
	rol $20.b		; 26 20
	cpy $4806.w		; CC 06 48
	bra   2.b		; 80 02
	sbc $F0.b,S		; E3 F0
	php		; 08
	adc ($EF.b)		; 72 EF
	ora $3DF7.w,Y		; 19 F7 3D
	xce		; FB
	ora [$F9.b],Y		; 17 F9
	tsb $0E.b		; 04 0E
	bra  14.b		; 80 0E
	sep #$07		; E2 07
	php		; 08
	ora $EE.b,S		; 03 EE
	ora $F7.b,S		; 03 F7
	ora ($FB.b,X)		; 01 FB
	ora ($F9.b,X)		; 01 F9
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpx #$05.b		; E0 05
	ora $05.b,S		; 03 05
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra -65.b		; 80 BF
	bcc -75.b		; 90 B5
	stx $5A.b		; 86 5A
	cmp $5C.b,S		; C3 5C
	cmp ($2F.b,X)		; C1 2F
	sbc ($AE.b,X)		; E1 AE
	rts		; 60

	bcc -112.b		; 90 90
	bvs 112.b		; 70 70
	ror $790E.w		; 6E 0E 79
	ora ($BC.b,X)		; 01 BC
	bra  63.b		; 80 3F
	ora ($5E.b,X)		; 01 5E
	rti		; 40

	ora $03C000.l,X		; 1F 00 C0 03
	sed		; F8
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  48.b		; 80 30
	bmi  12.b		; 30 0C
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$70.b],Y		; 97 70
	eor [$B0.b],Y		; 57 B0
	phk		; 4B
	clv		; B8
	plb		; AB
	cli		; 58
	sbc $1C.b		; E5 1C
	sbc $1C.b		; E5 1C
	sbc ($0E.b)		; F2 0E
	bne  46.b		; D0 2E
	and $000F20.l		; 2F 20 0F 00
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	cmp $C0.b,S		; C3 C0
	ora $24.b		; 05 24
	ora ($32.b,S),Y		; 13 32
	and $9C.b,S		; 23 9C
	sta $B9BA.w,X		; 9D BA B9
	ldx $B1.b,Y		; B6 B1
	ldx $B7B8.w		; AE B8 B7
	stz $C719.w,X		; 9E 19 C7
	asl $80.b		; 06 80
	brk $00.b		; 00 00
	jsr ($F800.w,X)		; FC 00 F8
	bra -16.b		; 80 F0
	tay		; A8
	inx		; E8
	rol $F6.b,X		; 36 F6
	bit #$F9.b		; 89 F9
	rti		; 40

	lsr $8780.w,X		; 5E 80 87
	cmp [$38.b]		; C7 38
	ora [$F8.b]		; 07 F8
	ora $F10FF1.l		; 0F F1 0F F1
	sta $5D71.w		; 8D 71 5D
	lda ($EF.b,X)		; A1 EF
	brk $4F.b		; 00 4F
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	ora ($10.b)		; 12 10
	asl $00.b		; 06 00
	bpl  16.b		; 10 10
	bmi -80.b		; 30 B0
	txy		; 9B
	lsr A		; 4A
	bit $7B89.w,X		; 3C 89 7B
	jsr $8750.w		; 20 50 87
	and ($FE.b),Y		; 31 FE
	cmp [$B8.b]		; C7 B8
	cmp $8433.w		; CD 33 84
	tad		; 5B
	ror $42.b,X		; 76 42
	sbc ($82.b)		; F2 82
	jmp.w [$FE04]		; DC 04 FE
	ldx $00.b		; A6 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	jsr $4063.w		; 20 63 40
	sbc $38.b		; E5 38
	adc ($FC.b),Y		; 71 FC
	and $F8.b,X		; 35 F8
	sty $78.b		; 84 78
	cpy $38.b		; C4 38
	clc		; 18
	beq 104.b		; F0 68
	beq -56.b		; F0 C8
	beq  56.b		; F0 38
	ora ($FC.b,X)		; 01 FC
	ora ($F8.b,X)		; 01 F8
	ora ($78.b,X)		; 01 78
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $18.b		; 00 18
	tsb $0C18.w		; 0C 18 0C
	tsb $0C06.w		; 0C 06 0C
	asl $0C.b		; 06 0C
	asl $04.b		; 06 04
	cop $03.b		; 02 03
	ora $04.b,S		; 03 04
	cop $08.b		; 02 08
	asl $1E08.w,X		; 1E 08 1E
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	brk $07.b		; 00 07
	ora $03.b,S		; 03 03
	brk $07.b		; 00 07
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sec		; 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
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
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $5E.b		; 00 5E
	brk $1E.b		; 00 1E
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $1E.b		; 04 1E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	cpy #$C0.b		; C0 C0
	rts		; 60

	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	rts		; 60

	bmi  96.b		; 30 60
	bmi  64.b		; 30 40
	brk $80.b		; 00 80
	cpx #$80.b		; E0 80
	cpx #$40.b		; E0 40
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq  32.b		; F0 20
	sei		; 78
	jsr $0078.w		; 20 78 00
	jmp ($1830.w,X)		; 7C 30 18
	bmi  24.b		; 30 18
	brk $04.b		; 00 04
	clc		; 18
	tsb $ECD8.w		; 0C D8 EC
	cpx $0CD6.w		; EC D6 0C
	asl $0C.b,X		; 16 0C
	asl $10.b,X		; 16 10
	bit $3810.w,X		; 3C 10 38
	brk $1E.b		; 00 1E
	php		; 08
	asl $FE88.w,X		; 1E 88 FE
	sty $FF.b		; 84 FF
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	ora [$00.b]		; 07 00
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	cop $1E.b		; 02 1E
	ora $1E.b,S		; 03 1E
	ora $3C.b		; 05 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	ora $04.b		; 05 04
	ora $0B0C.w		; 0D 0C 0B
	php		; 08
	sbc ($2F.b),Y		; F1 2F
	jsr ($F22F.w,X)		; FC 2F F2
	pld		; 2B
	sbc ($29.b),Y		; F1 29
	pea $910C.w		; F4 0C 91
	bit $4380.w		; 2C 80 43
	bra   0.b		; 80 00
	asl $232E.w		; 0E 2E 23
	and $25.b,S		; 23 25
	and ($06.b,X)		; 21 06
	jsr $2083.w		; 20 83 20
	cmp $00.b,S		; C3 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sta ($00.b,X)		; 81 00
	sta $00.b,S		; 83 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -127.b		; 80 81
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A206.w,Y		; F9 06 A2
	eor $E01C.w,X		; 5D 1C E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($D9.b)		; 72 D9
	adc ($C8.b,X)		; 61 C8
	clc		; 18
	cpy $6430.w		; CC 30 64
	tsb $1A66.w		; 0C 66 1A
	and ($05.b,S),Y		; 33 05
	bmi  11.b		; 30 0B
	clc		; 18
	lda ($80.b,X)		; A1 80
	bcs -128.b		; B0 80
	bvs  64.b		; 70 40
	clc		; 18
	brk $38.b		; 00 38
	jsr $000C.w		; 20 0C 00
	asl $0510.w,X		; 1E 10 05
	ora ($10.b,X)		; 01 10
	cpx #$A0.b		; E0 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	ora #$0B.b		; 09 0B
	ora $0C0F.w		; 0D 0F 0C
	ora ($00.b,X)		; 01 00
	ora $06.b		; 05 06
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora #$0B.b		; 09 0B
	ora #$0F.b		; 09 0F
	tsb $000F.w		; 0C 0F 00
	ora ($04.b,X)		; 01 04
	ora [$07.b]		; 07 07
	ora [$02.b]		; 07 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$C0.b		; C0 C0
	rts		; 60

	cpy #$60.b		; C0 60
	cpx #$40.b		; E0 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	sed		; F8
	ora [$18.b]		; 07 18
	ora $000F00.l		; 0F 00 0F 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sta [$78.b]		; 87 78
	adc $7FBFFF.l,X		; 7F FF BF 7F
	rts		; 60

	ora $00000F.l,X		; 1F 0F 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	clv		; B8
	brk $7F.b		; 00 7F
	ror $0FFF.w,X		; 7E FF 0F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $7D.b		; 00 7D
	adc ($76.b),Y		; 71 76
	adc ($71.b)		; 72 71
	sta ($F0.b,X)		; 81 F0
	jsr ($E118.w,X)		; FC 18 E1
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	adc $01F762.l,X		; 7F 62 F7 01
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $00FD00.l,X		; FF 00 FD 00
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	rts		; 60

	cpy #$60.b		; C0 60
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	bra  32.b		; 80 20
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
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
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $E0F0.w		; 20 F0 E0
	cpx #$10.b		; E0 10
	bpl  96.b		; 10 60
	rts		; 60

	bpl  16.b		; 10 10
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$60.b		; C0 60
	cpx #$F0.b		; E0 F0
	bpl -16.b		; 10 F0
	rts		; 60

	beq  16.b		; F0 10
	beq  96.b		; F0 60
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpx #$40.b		; E0 40
	beq -64.b		; F0 C0
	rts		; 60

	cpy #$60.b		; C0 60
	rts		; 60

	bmi  96.b		; 30 60
	bmi  96.b		; 30 60
	sec		; 38
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	sec		; 38
	trb $F040.w		; 1C 40 F0
	rti		; 40

	beq  32.b		; F0 20
	sei		; 78
	jsr $2078.w		; 20 78 20
	jmp ($3C10.w,X)		; 7C 10 3C
	bpl  60.b		; 10 3C
	clc		; 18
	rol $B0E0.w,X		; 3E E0 B0
	rts		; 60

	bmi  64.b		; 30 40
	brk $18.b		; 00 18
	clc		; 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	tsb $080C.w		; 0C 0C 08
	tsb $F8A0.w		; 0C A0 F8
	jsr $0078.w		; 20 78 00
	jmp ($3C10.w,X)		; 7C 10 3C
	brk $3C.b		; 00 3C
	brk $2E.b		; 00 2E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	tsb $010C.w		; 0C 0C 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	bpl   4.b		; 10 04
	tsb $18.b		; 04 18
	tsb $0818.w		; 0C 18 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1E.b		; 00 1E
	php		; 08
	asl $1C00.w,X		; 1E 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $003E00.l,X		; 3F 00 3E 00
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	cop $0E.b		; 02 0E
	tsb $1C.b		; 04 1C
	ora $0F1700.l,X		; 1F 00 17 0F
	and $003F00.l,X		; 3F 00 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	ora $3F.b,S		; 03 3F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cpy #$20.b		; C0 20
	bra  64.b		; 80 40
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	ror $FE00.w,X		; 7E 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	cpy #$00.b		; C0 00
	bvs -64.b		; 70 C0
	trb $C7F0.w		; 1C F0 C7
	jsr ($FEF3.w,X)		; FC F3 FE
	ora $86FF.w,X		; 1D FF 86
	adc $009F63.l,X		; 7F 63 9F 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl -64.b		; 10 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
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
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	brk $F0.b		; 00 F0
	ora $070000.l		; 0F 00 00 07
	brk $30.b		; 00 30
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  92.b		; 30 5C
	jmp $FC3FC0.l		; 5C C0 3F FC
	ora $FF.b,S		; 03 FF
	brk $1F.b		; 00 1F
	sbc $7C0FF0.l,X		; FF F0 0F 7C
	sbc ($CD.b,S),Y		; F3 CD
	rol $0F30.w,X		; 3E 30 0F
	and $000300.l,X		; 3F 00 03 00
	brk $00.b		; 00 00
	sbc $000F00.l,X		; FF 00 0F 00
	sbc ($00.b,S),Y		; F3 00
	rol $0F00.w,X		; 3E 00 0F
	brk $07.b		; 00 07
	tsb $0C11.w		; 0C 11 0C
	sec		; 38
	asl $49.b		; 06 49
	rol $9D.b,X		; 36 9D
	adc ($A6.b)		; 72 A6
	adc $FB34.w,Y		; 79 34 FB
	sta ($7F.b),Y		; 91 7F
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	and ($02.b)		; 32 02
	bvs   0.b		; 70 00
	adc $FB00.w,Y		; 79 00 FB
	brk $7F.b		; 00 7F
	brk $E4.b		; 00 E4
	and [$E0.b],Y		; 37 E0
	sbc $53149B.l,X		; FF 9B 14 53
	mvp $94,$6B		; 44 6B 94
	eor $BC.b,S		; 43 BC
	cmp [$BC.b]		; C7 BC
	cmp [$FC.b],Y		; D7 FC
	wai		; CB
	php		; 08
	ora ($10.b,S),Y		; 13 10
	pla		; 68
	brk $EC.b		; 00 EC
	cpy #$14.b		; C0 14
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $FC.b		; 00 FC
	brk $19.b		; 00 19
	brk $1E.b		; 00 1E
	ora ($1D.b,X)		; 01 1D
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora ($08.b,X)		; 01 08
	asl $0100.w		; 0E 00 01
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	bra -64.b		; 80 C0
	cpx #$C0.b		; E0 C0
	cpy #$E1.b		; C0 E1
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $41.b		; 00 41
	brk $C1.b		; 00 C1
	bra -31.b		; 80 E1
	bra -31.b		; 80 E1
	cpy #$F1.b		; C0 F1
	cpy #$F3.b		; C0 F3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $300C.w		; 0C 0C 30
	bmi   3.b		; 30 03
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $C03030.l		; 0F 30 30 C0
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
	ora ($F0.b,X)		; 01 F0
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	asl $1C04.w		; 0E 04 1C
	asl A		; 0A
	sec		; 38
	asl $F0.b,X		; 16 F0
	eor $00C1.w,X		; 5D C1 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $80BE20.l		; 2F 20 BE 80
	ora [$78.b]		; 07 78
	ora $F0CFF0.l		; 0F F0 CF F0
	sta $E09FE0.l,X		; 9F E0 9F E0
	lda $C0BFC0.l,X		; BF C0 BF C0
	ror $1281.w,X		; 7E 81 12
	ora ($64.b)		; 12 64
	stz $24.b		; 64 24
	bit $48.b		; 24 48
	pha		; 48
	pha		; 48
	pha		; 48
	bvc  80.b		; 50 50
	bvc  80.b		; 50 50
	lda ($A1.b,X)		; A1 A1
	lda $40BF40.l,X		; BF 40 BF 40
	lda $40BF40.l,X		; BF 40 BF 40
	ora $F01FE0.l,X		; 1F E0 1F F0
	and $C07FE0.l,X		; 3F E0 7F C0
	jsr $2020.w		; 20 20 20
	jsr $3E3E.w		; 20 3E 3E
	and ($31.b),Y		; 31 31
	bmi  48.b		; 30 30
	pla		; 68
	pla		; 68
	cld		; D8
	iny		; C8
	clv		; B8
	dey		; 88
	and ($EF.b),Y		; 31 EF
	clc		; 18
	sbc [$0C.b],Y		; F7 0C
	xce		; FB
	stx $7D.b		; 86 7D
	.db $42, $BF		; 42 BF
	lda ($DF.b,X)		; A1 DF
	lda ($CF.b),Y		; B1 CF
	bne -17.b		; D0 EF
	sbc $00F700.l		; EF 00 F7 00
	xce		; FB
	brk $7D.b		; 00 7D
	brk $BF.b		; 00 BF
	brk $DF.b		; 00 DF
	brk $CF.b		; 00 CF
	brk $EF.b		; 00 EF
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	cpx #$7C.b		; E0 7C
	beq  60.b		; F0 3C
	beq -98.b		; F0 9E
	sei		; 78
	lsr $4EB8.w		; 4E B8 4E
	ldy $DCA7.w,X		; BC A7 DC
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sei		; 78
	brk $B8.b		; 00 B8
	brk $BC.b		; 00 BC
	brk $DC.b		; 00 DC
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	rts		; 60

	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	cmp ($00.b,X)		; C1 00
	cmp $00.b,S		; C3 00
	cmp [$00.b]		; C7 00
	cmp $40BF20.l,X		; DF 20 BF 40
	lda $807F40.l,X		; BF 40 7F 80
	sbc $010100.l,X		; FF 00 01 01
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bit $463C.w,X		; 3C 3C 46
	lsr $81.b		; 46 81
	sta ($FE.b,X)		; 81 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($8B.b,X)		; 01 8B
	txa		; 8A
	ora $05.b		; 05 05
	sty $84.b		; 84 84
	.db $42, $42		; 42 42
	jsl $222222.l		; 22 22 22 22
	ora ($12.b)		; 12 12
	trb $14.b		; 14 14
	iny		; C8
	ora [$34.b]		; 07 34
	cmp $8C.b,S		; C3 8C
	adc ($C6.b,S),Y		; 73 C6
	tsa		; 3B
	adc $9B.b		; 65 9B
	ora ($EF.b),Y		; 11 EF
	bpl -17.b		; 10 EF
	bpl -17.b		; 10 EF
	ora [$00.b]		; 07 00
	cmp $00.b,S		; C3 00
	sbc ($80.b,S),Y		; F3 80
	tda		; 7B
	rti		; 40

	tas		; 1B
	brk $2F.b		; 00 2F
	jsr $202F.w		; 20 2F 20
	and $3F4920.l		; 2F 20 49 3F
	sec		; 38
	ora [$07.b]		; 07 07
	clc		; 18
	ora [$1C.b]		; 07 1C
	ora [$0C.b]		; 07 0C
	asl $0C.b		; 06 0C
	tsb $0D.b		; 04 0D
	ora ($0E.b,X)		; 01 0E
	and $000700.l,X		; 3F 00 07 00
	php		; 08
	php		; 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $01.b,S		; 03 01
	asl $06.b		; 06 06
	ldx $18F8.w,Y		; BE F8 18
	pea $8C70.w		; F4 70 8C
	ldy #$98.b		; A0 98
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F4.b		; 00 F4
	brk $8C.b		; 00 8C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	sbc ($20.b,X)		; E1 20
	adc ($58.b),Y		; 71 58
	bmi  33.b		; 30 21
	ora $0D11.w,Y		; 19 11 0D
	asl A		; 0A
	tsb $06.b		; 04 06
	brk $02.b		; 00 02
	brk $60.b		; 00 60
	xce		; FB
	jsr $10FB.w		; 20 FB 10
	adc $7F00.w,X		; 7D 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00F800.l,X		; FF 00 F8 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($E000.w,X)		; FC 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	and $B75869.l,X		; 3F 69 58 B7
	jsr $30DB.w		; 20 DB 30
	sbc $F419.w,X		; FD 19 F4
	ora #$F8.b		; 09 F8
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	cop $57.b		; 02 57
	bne -81.b		; D0 AF
	cpx #$57.b		; E0 57
	bvs  34.b		; 70 22
	sec		; 38
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	ply		; 7A
	ora $F4.b,S		; 03 F4
	ora [$D1.b]		; 07 D1
	asl $7841.w,X		; 1E 41 78
	ora $C0.b,S		; 03 C0
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	sbc $FA01.w,X		; FD 01 FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$20.b		; A0 20
	sta ($81.b,X)		; 81 81
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $03.b		; 00 03
	ror $FF81.w,X		; 7E 81 FF
	ora ($FF.b,X)		; 01 FF
	ora $FF.b,S		; 03 FF
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cpx #$21.b		; E0 21
	and ($40.b,X)		; 21 40
	rti		; 40

	cpy #$C0.b		; C0 C0
	sta ($80.b,X)		; 81 80
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $C01F00.l		; 0F 00 1F C0
	sbc $00FB80.l,X		; FF 80 FB 00
	sbc ($06.b),Y		; F1 06
	cpx #$0C.b		; E0 0C
	cpy #$18.b		; C0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	ror $FD06.w,X		; 7E 06 FD
	ora ($FC.b,X)		; 01 FC
	tsb $F8.b		; 04 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $07FF00.l,X		; FF 00 FF 07
	sed		; F8
	php		; 08
	sbc [$15.b],Y		; F7 15
	and $23.b,S		; 23 23
	ora ($13.b,S),Y		; 13 13
	ora #$09.b		; 09 09
	cmp $3DCD.w		; CD CD 3D
	and $1717.w,X		; 3D 17 17
	clc		; 18
	ora $8E3D35.l,X		; 1F 35 3D 8E
	adc ($91.b),Y		; 71 91
	ror $6F90.w		; 6E 90 6F
	cmp ($2C.b,S),Y		; D3 2C
	pea $D80B.w		; F4 0B D8
	sta [$10.b]		; 87 10
	ora $11EFD0.l		; 0F D0 EF 11
	bpl  32.b		; 10 20
	jsr $2323.w		; 20 23 23
	bit $24.b		; 24 24
	phd		; 0B
	php		; 08
	sta [$E0.b]		; 87 E0
	ora $E08FE0.l		; 0F E0 8F E0
	rol $F9.b,X		; 36 F9
	inc A		; 1A
	sbc $7C9B.w,X		; FD 9B 7C
	tas		; 1B
	jsr ($FE09.w,X)		; FC 09 FE
	ora #$FE.b		; 09 FE
	ora #$FE.b		; 09 FE
	ora #$FE.b		; 09 FE
	sbc $FD00.w,Y		; F9 00 FD
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $29.b		; 00 29
	sbc [$15.b],Y		; F7 15
	xce		; FB
	trb $FB.b		; 14 FB
	inc A		; 1A
	sbc $FD0A.w,X		; FD 0A FD
	asl A		; 0A
	sbc $7E8D.w,X		; FD 8D 7E
	sta $F77E.w		; 8D 7E F7
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $07.b		; 00 07
	sed		; F8
	ora $00FFFF.l		; 0F FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	cpy #$BF.b		; C0 BF
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	jmp ($1D00.w,X)		; 7C 00 1D
	brk $13.b		; 00 13
	php		; 08
	rol $10.b		; 26 10
	asl $1F.b		; 06 1F
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	ora $101F28.l		; 0F 28 1F 10
	ora #$09.b		; 09 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$0C.b		; E0 0C
	bra  24.b		; 80 18
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($F880.w,X)		; 7C 80 F8
	brk $E0.b		; 00 E0
	brk $90.b		; 00 90
	bpl 112.b		; 10 70
	bvs -16.b		; 70 F0
	bvs  96.b		; 70 60
	beq -16.b		; F0 F0
	cpx #$20.b		; E0 20
	jsr $4040.w		; 20 40 40
	bra -104.b		; 80 98
	brk $78.b		; 00 78
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	beq  64.b		; F0 40
	beq 103.b		; F0 67
	sta [$C7.b],Y		; 97 C7
	ora [$CE.b],Y		; 17 CE
	ora [$8F.b],Y		; 17 8F
	asl $8E.b,X		; 16 8E
	asl $0C.b		; 06 0C
	asl $01.b		; 06 01
	asl $00.b		; 06 00
	and $061F82.l		; 2F 82 1F 06
	and $043F04.l,X		; 3F 04 3F 04
	and $043F04.l,X		; 3F 04 3F 04
	and $003F00.l,X		; 3F 00 3F 00
	adc $0F2F0F.l,X		; 7F 0F 2F 0F
	and $0C2E0E.l		; 2F 0E 2E 0C
	bit $0808.w		; 2C 08 08
	bpl  48.b		; 10 30
	clc		; 18
	bmi   0.b		; 30 00
	brk $0E.b		; 00 0E
	adc $0C7F0E.l,X		; 7F 0E 7F 0C
	adc $007E08.l,X		; 7F 08 7E 00
	bit $7810.w,X		; 3C 10 78
	bpl 120.b		; 10 78
	brk $60.b		; 00 60
	tsb $0204.w		; 0C 04 02
	cop $02.b		; 02 02
	jsl $082414.l		; 22 14 24 08
	jsr $3018.w		; 20 18 30
	clc		; 18
	bmi  48.b		; 30 30
	rts		; 60

	tsb $7E.b		; 04 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	tsb $7C.b		; 04 7C
	brk $7C.b		; 00 7C
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	jsr $60F0.w		; 20 F0 60
	bne 126.b		; D0 7E
	dec $DE6E.w		; CE 6E DE
	rts		; 60

	bne  96.b		; D0 60
	bne 126.b		; D0 7E
	dec $CE6E.w		; CE 6E CE
	cld		; D8
	clv		; B8
	rti		; 40

	beq  70.b		; F0 46
	inc $FE46.w,X		; FE 46 FE
	rti		; 40

	beq  64.b		; F0 40
	beq  70.b		; F0 46
	inc $EE46.w,X		; FE 46 EE
	dey		; 88
	sed		; F8
	sed		; F8
	tya		; 98
	cpy #$80.b		; C0 80
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	jsr $8820.w		; 20 20 88
	sed		; F8
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0DE0.w		; 20 E0 0D
	tas		; 1B
	ora $190D1B.l		; 0F 1B 0D 19
	tsb $0D18.w		; 0C 18 0D
	tas		; 1B
	ora $190D1B.l		; 0F 1B 0D 19
	trb $0934.w		; 1C 34 09
	and $093F0B.l,X		; 3F 0B 3F 09
	and $3C08.w,X		; 3D 08 3C
	ora #$3F.b		; 09 3F
	phd		; 0B
	and $143D09.l,X		; 3F 09 3D 14
	jmp ($1AED.w,X)		; 7C ED 1A
	iny		; C8
	ora [$88.b],Y		; 17 88
	ora [$09.b],Y		; 17 09
	asl $0A.b,X		; 16 0A
	ora $6E.b		; 05 6E
	ora ($1C.b,X)		; 01 1C
	adc $14.b,S		; 63 14
	adc $40.b,S		; 63 40
	cli		; 58
	bra -80.b		; 80 B0
	ora ($31.b,X)		; 01 31
	cop $32.b		; 02 32
	tsb $14.b		; 04 14
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	inx		; E8
	sbc [$84.b],Y		; F7 84
	ora $7B.b,S		; 03 7B
	ldy $7FFE.w,X		; BC FE 7F
	adc $DF3EBF.l,X		; 7F BF 3E DF
	trb $18EE.w		; 1C EE 18
	sbc $F0C7.w		; ED C7 F0
	ora $78.b,S		; 03 78
	bra -66.b		; 80 BE
	bit $1E7F.w,X		; 3C 7F 1E
	and $001F0E.l,X		; 3F 0E 1F 00
	ora $09EEE0.l		; 0F E0 EE 09
	inc $FC03.w,X		; FE 03 FC
	ora $FC.b,S		; 03 FC
	eor $3C.b,S		; 43 3C
	lda [$98.b]		; A7 98
	ora $F86700.l,X		; 1F 00 67 F8
	eor ($1E.b),Y		; 51 1E
	inc $FC00.w,X		; FE 00 FC
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
	bra  24.b		; 80 18
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $E8.b		; 00 E8
	php		; 08
	sta $857E.w		; 8D 7E 85
	ror $7E85.w,X		; 7E 85 7E
	sta $7E.b		; 85 7E
	ora $FE.b		; 05 FE
	ora $FC.b,S		; 03 FC
	sta $7C.b,S		; 83 7C
	inc $08.b,X		; F6 08
	ror $7E00.w,X		; 7E 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $08.b		; 00 08
	brk $3C.b		; 00 3C
	trb $18.b		; 14 18
	bmi  24.b		; 30 18
	bmi   0.b		; 30 00
	brk $30.b		; 00 30
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	brk $60.b		; 00 60
	rts		; 60

	tsb $7C.b		; 04 7C
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	brk $30.b		; 00 30
	bpl 120.b		; 10 78
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	jsr $20F0.w		; 20 F0 20
	rts		; 60

	rts		; 60

	jsr $2040.w		; 20 40 20
	brk $00.b		; 00 00
	bvs  96.b		; 70 60
	bmi  96.b		; 30 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $00F0.w		; 20 F0 00
	beq   0.b		; F0 00
	rts		; 60

	brk $60.b		; 00 60
	jsr $00F0.w		; 20 F0 00
	beq   0.b		; F0 00
	rts		; 60

	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $001F00.l		; 0F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	rol $0000.w,X		; 3E 00 00
	brk $03.b		; 00 03
	ora $0C.b,S		; 03 0C
	tsb $1010.w		; 0C 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
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
	brk $30.b		; 00 30
	rts		; 60

	bmi  96.b		; 30 60
	bmi  96.b		; 30 60
	bmi  96.b		; 30 60
	bmi  96.b		; 30 60
	bpl  32.b		; 10 20
	rts		; 60

	rts		; 60

	jsr $2040.w		; 20 40 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	bvs  96.b		; 70 60
	cpx #$00.b		; E0 00
	cpx #$A4.b		; E0 A4
	eor $F3.b,S		; 43 F3
	tsb $4C.b		; 04 4C
	lda ($46.b,S),Y		; B3 46
	sec		; 38
	and [$18.b]		; 27 18
	ora [$08.b],Y		; 17 08
	ora $010200.l		; 0F 00 02 01
	tas		; 1B
	tas		; 1B
	php		; 08
	php		; 08
	bra   0.b		; 80 00
	ora #$08.b		; 09 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FE00.w,Y		; F9 00 FE
	brk $7F.b		; 00 7F
	bra  15.b		; 80 0F
	bmi  -1.b		; 30 FF
	bra  14.b		; 80 0E
	cmp ($64.b),Y		; D1 64
	phb		; 8B
	lda ($A5.b)		; B2 A5
	ora $04.b,S		; 03 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	adc ($50.b),Y		; 71 50
	tda		; 7B
	php		; 08
	eor $FE44.w,X		; 5D 44 FE
	brk $FD.b		; 00 FD
	brk $2B.b		; 00 2B
	cpx #$FF.b		; E0 FF
	brk $A3.b		; 00 A3
	ror $FE65.w,X		; 7E 65 FE
	inc A		; 1A
	jsr ($F816.w,X)		; FC 16 F8
	sbc $00FE00.l,X		; FF 00 FE 00
	jmp $000040.l		; 5C 40 00 00
	ror $FE00.w,X		; 7E 00 FE
	brk $FC.b		; 00 FC
	ora ($F8.b,X)		; 01 F8
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$FF.b]		; 07 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $D8.b		; 00 D8
	cpx #$73.b		; E0 73
	jsr ($FF1C.w,X)		; FC 1C FF
	adc [$1F.b]		; 67 1F
	ora $0007.w,Y		; 19 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $10.b		; 00 10
	cpx #$94.b		; E0 94
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sed		; F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6E.b		; 00 6E
	ora $417FBE.l,X		; 1F BE 7F 41
	sbc $0C0FF0.l,X		; FF F0 0F 0C
	ora $0B.b,S		; 03 0B
	php		; 08
	ora $1C.b,X		; 15 1C
	dec A		; 3A
	and ($1F.b),Y		; 31 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $08.b		; 00 08
	php		; 08
	bpl  29.b		; 10 1D
	jsr $923B.w		; 20 3B 92
	adc $6AFF42.l		; 6F 42 FF 6A
	lda [$72.b],Y		; B7 72
	lda $38FB14.l,X		; BF 14 FB 38
	cmp $EA5DAA.l,X		; DF AA 5D EA
	ora $006F.w,X		; 1D 6F 00
	sbc $00B700.l,X		; FF 00 B7 00
	lda $00FB00.l,X		; BF 00 FB 00
	cmp $005D00.l,X		; DF 00 5D 00
	ora $1880.w,X		; 1D 80 18
	sbc [$0F.b],Y		; F7 0F
	sbc ($1F.b),Y		; F1 1F
	sbc ($3F.b)		; F2 3F
	cpx $7F.b		; E4 7F
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	cmp ($67.b,X)		; C1 67
	cmp ($0D.b,X)		; C1 0D
	cpy $00F7.w		; CC F7 00
	beq   1.b		; F0 01
	rep #$02		; C2 02
	sty $04.b,X		; 94 04
	and ($02.b)		; 32 02
	sec		; 38
	ora ($3C.b,X)		; 01 3C
	ora ($B2.b,X)		; 01 B2
	brk $FF.b		; 00 FF
	jsr ($C03F.w,X)		; FC 3F C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora ($FF.b,X)		; 01 FF
	brk $FC.b		; 00 FC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cmp $0B01.w,X		; DD 01 0B
	sed		; F8
	cop $3E.b		; 02 3E
	brk $0F.b		; 00 0F
	clc		; 18
	ora [$70.b]		; 07 70
	ora $1E23DC.l		; 0F DC 23 1E
	sbc ($7E.b,X)		; E1 7E
	rti		; 40

	ora [$10.b],Y		; 17 10
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	asl $00.b		; 06 00
	ora $002300.l		; 0F 00 23 00
	sbc ($00.b,X)		; E1 00
	ora $FE.b		; 05 FE
	lda $3C.b,S		; A3 3C
	pea $B803.w		; F4 03 B8
	sta [$28.b]		; 87 28
	cmp [$01.b],Y		; D7 01
	inc $F806.w,X		; FE 06 F8
	phb		; 8B
	bvs -114.b		; 70 8E
	bra -48.b		; 80 D0
	bpl  -8.b		; 10 F8
	brk $64.b		; 00 64
	tsb $54.b		; 04 54
	mvn $20,$E8		; 54 E8 20
	cpx #$4421.w		; E0 21 44
	eor $9F.b		; 45 9F
	rts		; 60

	sta $30CF60.l,X		; 9F 60 CF 30
	rti		; 40

	lda $1CA2.w,Y		; B9 A2 1C
	eor $7FBF3F.l,X		; 5F 3F BF 7F
	adc $1474FF.l,X		; 7F FF 74 14
	adc ($12.b)		; 72 12
	and $3809.w,Y		; 39 09 38
	ora [$00.b]		; 07 00
	adc $0EFF06.l,X		; 7F 06 FF 0E
	sbc $7DFF1E.l,X		; FF 1E FF 7D
	.db $82, $FE, $01		; 82 FE 01
	ldy $FD43.w,X		; BC 43 FD
	cmp $FD.b,S		; C3 FD
	ora $FC.b,S		; 03 FC
	cop $7C.b		; 02 7C
	cop $0C.b		; 02 0C
	cop $12.b		; 02 12
	ora ($10.b)		; 12 10
	bpl  89.b		; 10 59
	ora $08C8.w,Y		; 19 C8 08
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	ora ($80.b,X)		; 01 80
	php		; 08
	cpx $F040.w		; EC 40 F0
	cpx #$00F0.w		; E0 F0 00
	bpl  64.b		; 10 40
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bmi  72.b		; 30 48
	lsr $ACA0.w,X		; 5E A0 AC
	bpl  28.b		; 10 1C
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	jsr $00FF.w		; 20 FF 00
	adc $407F00.l,X		; 7F 00 7F 40
	and $407F40.l,X		; 3F 40 7F 40
	adc $407F40.l,X		; 7F 40 7F 40
	adc $888840.l,X		; 7F 40 88 88
	pha		; 48
	iny		; C8
	and #$22E9.w		; 29 E9 22
.ACCU 8
	sep #$24		; E2 24
	cpx $7B.b		; E4 7B
	xce		; FB
	jmp ($30FC.w,X)		; 7C FC 30
	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $42.b		; 00 42
	.db $42, $83		; 42 83
	sta $0C.b,S		; 83 0C
	tsb $3030.w		; 0C 30 30
	cmp ($C1.b,X)		; C1 C1
	asl $06.b		; 06 06
	and ($31.b),Y		; 31 31
	inc $00FE.w,X		; FE FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	sec		; 38
	ora $7A.b		; 05 7A
	ora [$C2.b],Y		; 17 C2
	and [$82.b],Y		; 37 82
	sbc $0B678A.l,X		; FF 8A 67 0B
	sbc $0C.b,S		; E3 0C
	sbc ($1C.b,S),Y		; F3 1C
	brk $02.b		; 00 02
	sec		; 38
	dec A		; 3A
	sei		; 78
	.db $42, $FA		; 42 FA
	.db $82, $72, $02		; 82 72 02
	xce		; FB
	phd		; 0B
	beq   1.b		; F0 01
	cpx #$0C00.w		; E0 00 0C
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $18.b		; 00 18
	ora [$03.b]		; 07 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $CB.b		; 00 CB
	jsr ($FE63.w,X)		; FC 63 FE
	and ($FF.b),Y		; 31 FF
	clc		; 18
	sbc $C87F88.l,X		; FF 88 7F C8
	and $A43FC4.l,X		; 3F C4 3F A4
	eor $FE00FC.l,X		; 5F FC 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $1E.b		; 00 1E
	ror $FEFF.w,X		; 7E FF FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $3D.b		; 00 3D
	asl $FDFF.w		; 0E FF FD
	sbc $313131.l,X		; FF 31 31 31
	and ($10.b),Y		; 31 10
	bpl  17.b		; 10 11
	ora ($0A.b),Y		; 11 0A
	inc A		; 1A
	pei ($20.b)		; D4 20
	lda ($3C.b,X)		; A1 3C
	inx		; E8
	ora $213921.l		; 0F 21 39 21
	and $1800.w,Y		; 39 00 18
	bpl  25.b		; 10 19
	ora ($9F.b,X)		; 01 9F
	ora ($5D.b,X)		; 01 5D
	bpl  80.b		; 10 50
	stz $44.b,X		; 74 44
	bit $055F.w		; 2C 5F 05
	lsr $CE15.w,X		; 5E 15 CE
	mvn $34,$4F		; 54 4F 34
	and $F40F34.l		; 2F 34 0F F4
	ora $9F8F74.l		; 0F 74 8F 9F
	cpy #$E09E.w		; C0 9E E0
	asl $CFA0.w		; 0E A0 CF
	cpy #$E0CF.w		; C0 CF E0
	cmp $000FC0.l		; CF C0 0F 00
	ora $EF2000.l		; 0F 00 20 EF
	trb $E7.b		; 14 E7
	ora $0FF1.w		; 0D F1 0F
	sed		; F8
	sta [$6C.b],Y		; 97 6C
	txy		; 9B
	ror $9D.b		; 66 9D
	adc $9E.b,S		; 63 9E
	adc ($90.b,X)		; 61 90
	brk $D8.b		; 00 D8
	brk $EE.b		; 00 EE
	brk $E7.b		; 00 E7
	brk $73.b		; 00 73
	bpl 113.b		; 10 71
	bpl 112.b		; 10 70
	bpl 120.b		; 10 78
	clc		; 18
	tsb $03.b		; 04 03
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	php		; 08
	ora [$08.b]		; 07 08
	ora [$0B.b]		; 07 0B
	ora [$03.b]		; 07 03
	ora $030709.l		; 0F 09 07 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $CF.b		; 00 CF
	beq -81.b		; F0 AF
	beq  56.b		; F0 38
	cmp [$E3.b]		; C7 E3
	ora $37B842.l,X		; 1F 42 B8 37
	cmp ($8F.b,X)		; C1 8F
	cpx $F6.b		; E4 F6
	trb $F0.b		; 14 F0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	ora $08CE.w,Y		; 19 CE 08
	cmp ($10.b,S),Y		; D3 10
	tas		; 1B
	bpl -45.b		; 10 D3
	jsr $01F2.w		; 20 F2 01
	inc $01.b,X		; F6 01
	tsa		; 3B
	cpx $99.b		; E4 99
	ror $98.b		; 66 98
	and [$1C.b]		; 27 1C
	adc $3C.b,S		; 63 3C
	cmp $2C.b,S		; C3 2C
	bit $0C0C.w		; 2C 0C 0C
	ora #$09.b		; 09 09
	brk $00.b		; 00 00
	cpy #$C440.w		; C0 40 C4
	tsb $C2.b		; 04 C2
	.db $42, $82		; 42 82
	.db $82, $FF, $FF		; 82 FF FF
	adc $EF1EBF.l,X		; 7F BF 1E EF
	ora $13F6.w		; 0D F6 13
	cpx $A3.b		; E4 A3
	mvp $D8,$1A		; 44 1A D8
	clv		; B8
	bit $FF3E.w,X		; 3C 3E FF
	bit $083F.w,X		; 3C 3F 08
	ora $808780.l		; 0F 80 87 80
	sta $505F40.l		; 8F 40 5F 50
	adc $007E30.l,X		; 7F 30 7E 00
	cop $01.b		; 02 01
	ora $80.b,S		; 03 80
	ora ($C0.b,X)		; 01 C0
	cmp ($E0.b,X)		; C1 E0
	sbc ($7B.b,X)		; E1 7B
	beq  61.b		; F0 3D
	sei		; 78
	asl $013C.w,X		; 1E 3C 01
	bra   0.b		; 80 00
	cpy #$E101.w		; C0 01 E1
	ora ($F1.b,X)		; 01 F1
	rti		; 40

	sed		; F8
	jsr $10FC.w		; 20 FC 10
	inc $7F0C.w,X		; FE 0C 7F
	cpy #$E030.w		; C0 30 E0
	bmi  96.b		; 30 60
	bmi  32.b		; 30 20
	bmi -96.b		; 30 A0
	bcs  64.b		; B0 40
	beq -128.b		; F0 80
	bvs -64.b		; 70 C0
	bmi -32.b		; 30 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$C000.w		; C0 00 C0
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	ldy #$2020.w		; A0 20 20
	jsr $7C20.w		; 20 20 7C
	ora $48.b,S		; 03 48
	and [$84.b],Y		; 37 84
	tda		; 7B
	.db $82, $7D, $45		; 82 7D 45
	sec		; 38
	pha		; 48
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	sty $42.b		; 84 42
	.db $42, $41		; 42 41
	eor ($20.b,X)		; 41 20
	jsr $3030.w		; 20 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $40C0.w		; 20 C0 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
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
	cop $03.b		; 02 03
	asl $81.b		; 06 81
	tsb $43.b		; 04 43
	sty $A7.b		; 84 A7
	cpy $E813.w		; CC 13 E8
	sta [$F8.b]		; 87 F8
	sbc $020300.l,X		; FF 00 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	sta [$04.b]		; 87 04
	cmp $00.b,S		; C3 00
	sbc [$00.b]		; E7 00
	and $0003C8.l		; 2F C8 03 00
	cmp ($18.b,X)		; C1 18
	cpy #$C010.w		; C0 10 C0
	bpl -32.b		; 10 E0
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	rti		; 40

	rts		; 60

	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	and $009FC0.l,X		; 3F C0 9F 00
	sbc $E01F00.l,X		; FF 00 1F E0
	trb $031C.w		; 1C 1C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $00.b		; 00 00
	cpy #$80C0.w		; C0 C0 80
	cpx #$20C0.w		; E0 C0 20
	cpx #$F800.w		; E0 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	cpy #$30C0.w		; C0 C0 30
	bmi  12.b		; 30 0C
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $6703.w		; 0C 03 67
	ora $0307F8.l,X		; 1F F8 07 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $00.b		; 06 00
	tsb $0E.b		; 04 0E
	asl $0E.b		; 06 0E
	asl $00.b		; 06 00
	brk $0C.b		; 00 0C
	asl $18.b		; 06 18
	tsb $0C18.w		; 0C 18 0C
	tsb $0F.b		; 04 0F
	brk $06.b		; 00 06
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	brk $06.b		; 00 06
	tsb $0F.b		; 04 0F
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	clc		; 18
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $0C18.w		; 0C 18 0C
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	clc		; 18
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $0C18.w		; 0C 18 0C
	bpl   8.b		; 10 08
	tsb $A00C.w		; 0C 0C A0
	bcc -80.b		; 90 B0
	cld		; D8
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	brk $1C.b		; 00 1C
	tsb $800E.w		; 0C 0E 80
	clv		; B8
	bcc  -4.b		; 90 FC
	beq -40.b		; F0 D8
	bmi  24.b		; 30 18
	bcs -104.b		; B0 98
	bcs -40.b		; B0 D8
	beq -40.b		; F0 D8
	bmi  24.b		; 30 18
	bvs  88.b		; 70 58
	sei		; 78
	bvc -48.b		; 50 D0
	jsr ($3C10.w,X)		; FC 10 3C
	bcc -68.b		; 90 BC
	bcc  -4.b		; 90 FC
	bne  -4.b		; D0 FC
	bpl  60.b		; 10 3C
	bvc 124.b		; 50 7C
	rti		; 40

	jmp ($0000.w,X)		; 7C 00 00
	cpx #$F800.w		; E0 00 F8
	brk $FE.b		; 00 FE
	bcs 111.b		; B0 6F
	jmp.w [$EF12]		; DC 12 EF
	and #$F7.b		; 29 F7
	bpl  -1.b		; 10 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	jmp.w [$EF00]		; DC 00 EF
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $1A.b		; 00 1A
	ora [$0F.b]		; 07 0F
	ora [$06.b],Y		; 17 06
	tas		; 1B
	ora $0D.b,S		; 03 0D
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b],Y		; 17 00
	tas		; 1B
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	cmp [$18.b]		; C7 18
	sbc $81C428.l		; EF 28 C4 81
	sbc ($F3.b)		; F2 F3
	tsb $000F.w		; 0C 0F 00
	asl $03.b		; 06 03
	cop $02.b		; 02 02
	cmp $E401.w,Y		; D9 01 E4
	tsb $DB.b		; 04 DB
	cop $FE.b		; 02 FE
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora [$00.b]		; 07 00
	ora [$0D.b]		; 07 0D
	ora $0D0D.w		; 0D 0D 0D
	asl $0E0C.w		; 0E 0C 0E
	tsb $0006.w		; 0C 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $0CF0.w		; EE F0 0C
	ora $0C1F0D.l		; 0F 0D 1F 0C
	ora $001F0C.l,X		; 1F 0C 1F 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$C0.b]		; 07 C0
	sbc $0AE0FE.l,X		; FF FE E0 0A
	trb $0A.b		; 14 0A
	trb $EA.b		; 14 EA
	pea $E6FC.w		; F4 FC E6
	tsb $6C06.w		; 0C 06 6C
	ror $7C.b,X		; 76 7C
	ror $C0.b		; 66 C0
	sbc $001F00.l,X		; FF 00 1F 00
	ora $C0FFC0.l,X		; 1F C0 FF C0
	sbc $400F00.l,X		; FF 00 0F 40
	adc $0F7F44.l,X		; 7F 44 7F 0F
	asl $0F07.w,X		; 1E 07 0F
	ora $07.b,S		; 03 07
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3F.b		; 06 3F
	ora $3F.b,S		; 03 3F
	ora ($1F.b,X)		; 01 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -64.b		; 10 C0
	jsr $0000.w		; 20 00 00
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
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  16.b		; 80 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bpl  24.b		; 10 18
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bit $3B.b		; 24 3B
	sta ($1D.b)		; 92 1D
	cmp #$0E.b		; C9 0E
	cpx $07.b		; E4 07
	sbc [$80.b],Y		; F7 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10D000.l,X		; FF 00 D0 10
	inx		; E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	cop $7F.b		; 02 7F
	ora [$F8.b]		; 07 F8
	sed		; F8
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	adc $C02780.l,X		; 7F 80 27 C0
	jsr $A0C0.w		; 20 C0 A0
	rti		; 40

	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	bpl  16.b		; 10 10
	bit $182C.w		; 2C 2C 18
	bpl   8.b		; 10 08
	bpl   0.b		; 10 00
	brk $38.b		; 00 38
	clc		; 18
	bmi  24.b		; 30 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3030.w		; C0 30 30
	tsb $030C.w		; 0C 0C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bra  -1.b		; 80 FF
	brk $7F.b		; 00 7F
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
	brk $00.b		; 00 00
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
	brk $C0.b		; 00 C0
	cpy #$3030.w		; C0 30 30
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $001F00.l,X		; FF 00 1F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $010C.w		; 0C 0C 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora [$06.b]		; 07 06
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	tsb $000E.w		; 0C 0E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora [$00.b]		; 07 00
	ora $02.b,S		; 03 02
	ora $08.b,S		; 03 08
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	adc $F03BFB.l,X		; 7F FB 3B F0
	tyx		; BB
	adc [$F0.b]		; 67 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	sec		; 38
	sbc $40FFA0.l,X		; FF A0 FF 40
	sbc $00F000.l,X		; FF 00 F0 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3030.w		; C0 30 30
	tsb $030C.w		; 0C 0C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	clc		; 18
	clc		; 18
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3C00.w		; 0C 00 3C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bmi  48.b		; 30 30
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($1C.b,X)		; 01 1C
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $01.b		; 00 01
	inc $071A.w,X		; FE 1A 07
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	inc $0700.w,X		; FE 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	cpy #$F008.w		; C0 08 F0
	sty $F8.b		; 84 F8
	.db $42, $FC		; 42 FC
	sbc ($7E.b,X)		; E1 7E
	cpx #$003F.w		; E0 3F 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
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
	brk $0C.b		; 00 0C
	tsb $1C1C.w		; 0C 1C 1C
	sec		; 38
	inc A		; 1A
	jsr $181A.w		; 20 1A 18
	ora ($05.b,X)		; 01 05
	ora $02.b,S		; 03 02
	ora ($19.b,X)		; 01 19
	bmi  12.b		; 30 0C
	rol $3E1C.w,X		; 3E 1C 3E
	clc		; 18
	adc $007F00.l,X		; 7F 00 7F 00
	and $003F01.l,X		; 3F 01 3F 00
	adc [$10.b],Y		; 77 10
	tda		; 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	sta $EC84.w,Y		; 99 84 EC
	cpx #$F176.w		; E0 76 F1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $82.b,S		; 03 82
	sta [$E4.b]		; 87 E4
	adc $F0.b,S		; 63 F0
	and ($F9.b),Y		; 31 F9
	sta ($6D.b,S),Y		; 93 6D
	beq -113.b		; F0 8F
	sbc ($DE.b,X)		; E1 DE
	lda ($6E.b),Y		; B1 6E
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $05.b		; 04 05
	.db $82, $83, $02		; 82 83 02
	rep #$00		; C2 00
	cpx #$3100.w		; E0 00 31
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	xce		; FB
	jsr ($FCFF.w,X)		; FC FF FC
	adc $7C8DFC.l,X		; 7F FC 8D 7C
	sbc ($01.b,X)		; E1 01
	ora $1F.b,S		; 03 1F
	ora $00FF30.l		; 0F 30 FF 00
	sbc ($FE.b)		; F2 FE
	ply		; 7A
	inc $FE3A.w,X		; FE 3A FE
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora $FC9CFF.l		; 0F FF 9C FC
	sbc [$08.b]		; E7 08
	xba		; EB
	tsb $2EC9.w		; 0C C9 2E
	inx		; E8
	asl $0EF0.w,X		; 1E F0 0E
	sed		; F8
	asl $FC.b		; 06 FC
	cop $FF.b		; 02 FF
	brk $F0.b		; 00 F0
	bra 112.b		; 80 70
	rti		; 40

	bit $24.b,X		; 34 24
	bit $34.b,X		; 34 34
	stz $CC9C.w		; 9C 9C CC
	cpy $3C3C.w		; CC 3C 3C
	cmp [$C7.b]		; C7 C7
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora $06.b,S		; 03 06
	ora $02.b,S		; 03 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	cop $07.b		; 02 07
	.db $82, $8F, $8C		; 82 8F 8C
	sta $09.b,S		; 83 09
	stx $08.b		; 86 08
	asl $85.b		; 06 85
	cop $05.b		; 02 05
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	cpy #$C003.w		; C0 03 C0
	asl $80.b		; 06 80
	ora [$00.b]		; 07 00
	ora $80.b,S		; 03 80
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($DD.b)		; 32 DD
	and $DA.b		; 25 DA
	ror A		; 6A
	sta $A8.b,X		; 95 A8
	and [$90.b]		; 27 90
	sta $3D.b,S		; 83 3D
	sbc $613D.w,Y		; F9 3D 61
	dec $DD21.w		; CE 21 DD
	brk $D8.b		; 00 D8
	brk $80.b		; 00 80
	brk $74.b		; 00 74
	bit $6C.b,X		; 34 6C
	php		; 08
	lsr $40.b		; 46 40
	stz $3F82.w,X		; 9E 82 3F
	and ($51.b,X)		; 21 51
	sbc $07FE83.l		; EF 83 FE 07
	jsr ($38CE.w,X)		; FC CE 38
	jmp $A358B1.l		; 5C B1 58 A3
	eor ($86.b,X)		; 41 86
	sbc $EA02.w,X		; FD 02 EA
	cop $F5.b		; 02 F5
	tsb $EB.b		; 04 EB
	php		; 08
	and [$10.b],Y		; 37 10
	ora $223E01.l		; 0F 01 3E 22
	bit $0004.w,X		; 3C 04 00
	brk $78.b		; 00 78
	ora [$01.b]		; 07 01
	adc $3DFF07.l,X		; 7F 07 FF 3D
	inc $F906.w,X		; FE 06 F9
	sed		; F8
	ora [$07.b]		; 07 07
	sed		; F8
	ora $0087F0.l		; 0F F0 87 00
	cmp $80BF40.l,X		; DF 40 BF 80
	ror $F900.w,X		; 7E 00 F9
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	brk $57.b		; 00 57
	cpx $DCA6.w		; EC A6 DC
	lsr $8CB8.w		; 4E B8 8C
	sei		; 78
	trb $38F0.w		; 1C F0 38
	cpx #$4030.w		; E0 30 40
	bra  32.b		; 80 20
	cpx $DC00.w		; EC 00 DC
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($21.b,X)		; 01 21
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpy #$6020.w		; C0 20 60
	bcc  96.b		; 90 60
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $90.b		; 00 90
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	and $F83FF0.l,X		; 3F F0 3F F8
	ora $781FF8.l,X		; 1F F8 1F 78
	ora $781F78.l,X		; 1F 78 1F 78
	ora $3F1F78.l,X		; 1F 78 1F 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	bra  48.b		; 80 30
	cpy #$D028.w		; C0 28 D0
	bit $D8.b		; 24 D8
	jsl $0000DC.l		; 22 DC 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$D000.w		; C0 00 D0
	brk $D8.b		; 00 D8
	brk $DC.b		; 00 DC
	brk $18.b		; 00 18
	bmi   0.b		; 30 00
	rti		; 40

	bmi 104.b		; 30 68
	and $D767E7.l,X		; 3F E7 67 D7
	rts		; 60

	bne  96.b		; D0 60
	bne  -2.b		; D0 FE
	stz $7910.w,X		; 9E 10 79
	brk $E0.b		; 00 E0
	jsr $23F8.w		; 20 F8 23
	sbc $40F747.l,X		; FF 47 F7 40
	beq  64.b		; F0 40
	beq -114.b		; F0 8E
	inc $78BF.w,X		; FE BF 78
	tad		; 5B
	sec		; 38
	tsa		; 3B
	brk $26.b		; 00 26
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	sed		; F8
	php		; 08
	jsr ($7C00.w,X)		; FC 00 7C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003F00.l,X		; 1F 00 3F 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	trb $201C.w		; 1C 1C 20
	jsr $1010.w		; 20 10 10
	ora #$09.b		; 09 09
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and ($32.b)		; 32 32
	eor $8959.w,Y		; 59 59 89
	bit #$08.b		; 89 08
	php		; 08
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	beq -16.b		; F0 F0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	and ($21.b,X)		; 21 21
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	sty $84.b		; 84 84
	.db $82, $82, $80		; 82 82 80
	bra  65.b		; 80 41
	eor ($43.b,X)		; 41 43
	eor $83.b,S		; 43 83
	brk $81.b		; 00 81
	rts		; 60

	bra 124.b		; 80 7C
	sta ($73.b)		; 92 73
	lda $40DF60.l		; AF 60 DF 40
	and $80FF80.l,X		; 3F 80 FF 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	sbc $DFE1.w		; ED E1 DF
	cpy #$80BF.w		; C0 BF 80
	sbc $007F80.l,X		; FF 80 7F 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $0C.b		; 06 0C
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $0C18.w		; 0C 18 0C
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $1C.b		; 00 1C
	tsb $1E.b		; 04 1E
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	bit $7C00.w,X		; 3C 00 7C
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
	rol $19.b		; 26 19
	ora ($0E.b),Y		; 11 0E
	asl A		; 0A
	tsb $3C.b		; 04 3C
	brk $3F.b		; 00 3F
	brk $7C.b		; 00 7C
	ora $F8.b,S		; 03 F8
	ora [$6C.b]		; 07 6C
	phb		; 8B
	asl $0008.w		; 0E 08 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	tsb $E8.b		; 04 E8
	tya		; 98
	sbc ($0C.b,S),Y		; F3 0C
	adc ($1E.b,X)		; 61 1E
	adc ($1E.b,X)		; 61 1E
	and ($0E.b),Y		; 31 0E
	nop		; EA
	ora $26.b		; 05 26
	cmp ($37.b,X)		; C1 37
	cpy #$D72F.w		; C0 2F D7
	tsb $820C.w		; 0C 0C 82
	cop $80.b		; 02 80
	brk $C0.b		; 00 C0
	brk $10.b		; 00 10
	bpl -40.b		; 10 D8
	cld		; D8
	pha		; 48
	pha		; 48
	ora [$17.b],Y		; 17 17
	ora ($E0.b,S),Y		; 13 E0
	ora $E4.b,X		; 15 E4
	sta ($66.b)		; 92 66
	adc ($87.b),Y		; 71 87
	plp		; 28
	cmp $6C.b,S		; C3 6C
	sta ($DE.b),Y		; 91 DE
	rti		; 40

	cmp $00DFE0.l,X		; DF E0 DF 00
	stp		; DB
	brk $5D.b		; 00 5D
	tsb $9E.b		; 04 9E
	stx $5D.b		; 86 5D
	eor ($0E.b,X)		; 41 0E
	brk $4F.b		; 00 4F
	pla		; 68
	cmp $10E0EC.l		; CF EC E0 10
	sed		; F8
	brk $F8.b		; 00 F8
	bit $207E.w,X		; 3C 7E 20
	sbc $A07FA0.l,X		; FF A0 7F A0
	eor $401FA0.l,X		; 5F A0 1F 40
	cpx #$8000.w		; E0 00 80
	brk $B0.b		; 00 B0
	bit $24A4.w,X		; 3C A4 24
	jsl $A18122.l		; 22 22 81 A1
	brk $20.b		; 00 20
	bra  32.b		; 80 20
	sed		; F8
	bra  -2.b		; 80 FE
	bra  -1.b		; 80 FF
	rti		; 40

	sbc $207F40.l,X		; FF 40 7F 20
	eor $807FA0.l,X		; 5F A0 7F 80
	eor $E0E000.l,X		; 5F 00 E0 E0
	tya		; 98
	tya		; 98
	lsr $46.b		; 46 46
	eor ($41.b,X)		; 41 41
	bra  32.b		; 80 20
	bra -96.b		; 80 A0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F800.w		; E0 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	clc		; 18
	clc		; 18
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $0C.b		; 00 0C
	ora #$12.b		; 09 12
	cop $21.b		; 02 21
	ora ($22.b,X)		; 01 22
	ora ($20.b,X)		; 01 20
	ora ($20.b,X)		; 01 20
	and ($32.b,X)		; 21 32
	ora ($00.b)		; 12 00
	php		; 08
	php		; 08
	ora $1202.w		; 0D 02 12
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $66.b		; 00 66
	ora $73.b,S		; 03 73
	bra   0.b		; 80 00
	rts		; 60

	cpy #$50D0.w		; C0 D0 50
	ldy $04.b		; A4 04
	ldx $5E.b,Y		; B6 5E
	eor $675744.l		; 4F 44 57 67
	ror $000F.w		; 6E 0F 00
	bra  64.b		; 80 40
	cpx #$D050.w		; E0 50 D0
	tsb $A4.b		; 04 A4
	asl $FE.b		; 06 FE
	cpy #$E3CC.w		; C0 CC E3
	dec $1E03.w		; CE 03 1E
	clc		; 18
	asl $18.b		; 06 18
	asl $18.b		; 06 18
	asl $38.b,X		; 16 38
	asl $B2.b,X		; 16 B2
	adc $F867.w,X		; 7D 67 F8
	jmp.w [$00E3]		; DC E3 00
	sbc $060006.l,X		; FF 06 00 06
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $7D.b		; 00 7D
	brk $F8.b		; 00 F8
	brk $E3.b		; 00 E3
	brk $FF.b		; 00 FF
	brk $34.b		; 00 34
	ora $2C0F34.l		; 0F 34 0F 2C
	eor $903F48.l,X		; 5F 48 3F 90
	adc $00FF20.l,X		; 7F 20 FF 00
	sbc $0FFC03.l,X		; FF 03 FC 0F
	brk $0F.b		; 00 0F
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $0A.b		; 00 0A
	sbc [$02.b],Y		; F7 02
	sbc $12EF12.l,X		; FF 12 EF 12
	sbc $66DF26.l		; EF 26 DF 66
	sta $9C3FCC.l,X		; 9F CC 3F 9C
	adc $FF00F7.l,X		; 7F F7 00 FF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $DF.b		; 00 DF
	brk $9F.b		; 00 9F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$C020.w		; C0 20 C0
	jsr $00C0.w		; 20 C0 00
	cpx #$E010.w		; E0 10 E0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bmi   0.b		; 30 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $00.b		; 06 00
	brk $03.b		; 00 03
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	asl $02.b		; 06 02
	ora $D08CCC.l		; 0F CC 8C D0
	bcs  -8.b		; B0 F8
	sec		; 38
	bcc  16.b		; 90 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $80CC.w		; 8C CC 80
	beq   8.b		; F0 08
	sed		; F8
	bpl -112.b		; 10 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $180C05.l		; 0F 05 0C 18
	tsb $1008.w		; 0C 08 10
	bpl  16.b		; 10 10
	bmi  16.b		; 30 10
	bpl  32.b		; 10 20
	jsr $6020.w		; 20 20 60
	ora ($3F.b,X)		; 01 3F
	php		; 08
	bit $1C08.w,X		; 3C 08 1C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	jsr $00F0.w		; 20 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	rts		; 60

	bra -112.b		; 80 90
	cpx #$08FE.w		; E0 FE 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	pha		; 48
	beq  24.b		; F0 18
	asl $0C.b		; 06 0C
	asl $0C.b		; 06 0C
	asl $0C.b		; 06 0C
	tsb $0C18.w		; 0C 18 0C
	clc		; 18
	tsb $1818.w		; 0C 18 18
	bmi  24.b		; 30 18
	bmi   4.b		; 30 04
	asl $1E04.w,X		; 1E 04 1E
	tsb $1E.b		; 04 1E
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	bit $7810.w,X		; 3C 10 78
	bpl 120.b		; 10 78
	bmi  16.b		; 30 10
	jsr $0010.w		; 20 10 00
	brk $60.b		; 00 60
	rts		; 60

	bmi  96.b		; 30 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	jsr $00E0.w		; 20 E0 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
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
	tsb $24.b		; 04 24
	brk $1C.b		; 00 1C
	inc A		; 1A
	asl $0B.b		; 06 0B
	asl $030F.w		; 0E 0F 03
	brk $01.b		; 00 01
	trb $1F04.w		; 1C 04 1F
	asl $03.b		; 06 03
	adc $035303.l,X		; 7F 03 53 03
	tsa		; 3B
	cop $0E.b		; 02 0E
	brk $3F.b		; 00 3F
	ora ($1E.b,X)		; 01 1E
	tsb $1F.b		; 04 1F
	tsb $3E.b		; 04 3E
	cpy $4BAB.w		; CC AB 4B
	jmp $BF64.w		; 4C 64 BF
	stz $DB4F.w		; 9C 4F DB
	ldy $B14E.w,X		; BC 4E B1
	and $6BC7.w,X		; 3D C7 6B
	sta $8C9823.l,X		; 9F 23 98 8C
	sed		; F8
	sta [$78.b]		; 87 78
	ora $E01CF0.l		; 0F F0 1C E0
	lda ($00.b),Y		; B1 00
	cmp [$00.b]		; C7 00
	sta $FF0000.l,X		; 9F 00 00 FF
	lda ($5E.b,X)		; A1 5E
	rti		; 40

	lda $FFC738.l,X		; BF 38 C7 FF
	ora ($13.b,X)		; 01 13
	jsr ($FE89.w,X)		; FC 89 FE
	sty $FFFF.w		; 8C FF FF
	brk $5E.b		; 00 5E
	brk $BF.b		; 00 BF
	brk $C7.b		; 00 C7
	brk $01.b		; 00 01
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	cpx #$03FC.w		; E0 FC 03
	ora ($FF.b,X)		; 01 FF
	asl $C0FF.w,X		; 1E FF C0
	jsr ($F30F.w,X)		; FC 0F F3
	ora $0EF3.w		; 0D F3 0E
	sbc ($E0.b),Y		; F1 E0
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	ora $F3.b,S		; 03 F3
	ora $E1.b,S		; 03 E1
	ora $D0.b,S		; 03 D0
	ora ($38.b),Y		; 11 38
	sbc $CFF970.l,X		; FF 70 F9 CF
	sbc $F03F3C.l		; EF 3C 3F F0
	jsr ($F3E0.w,X)		; FC E0 F3
	cpy #$00EF.w		; C0 EF 00
	cmp $F800FF.l,X		; DF FF 00 F8
	ora [$EF.b]		; 07 EF
	ora $F0FF3C.l,X		; 1F 3C FF F0
	sbc $CFFCE3.l,X		; FF E3 FC CF
	beq  31.b		; F0 1F
	cpx #$7030.w		; E0 30 70
	sec		; 38
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	clc		; 18
	rts		; 60

	bra 120.b		; 80 78
	bra -80.b		; 80 B0
	rti		; 40

	bcs  64.b		; B0 40
	bmi  -8.b		; 30 F8
	sec		; 38
	jsr ($FC18.w,X)		; FC 18 FC
	clc		; 18
	jsr ($1880.w,X)		; FC 80 18
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $83.b		; 02 83
	sta $7C.b,S		; 83 7C
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  48.b		; D0 30
	bra 127.b		; 80 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $808060.l		; 6F 60 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FF0000.l,X		; 1F 00 00 FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F80300.l,X		; FF 00 03 F8
	ora ($FC.b,X)		; 01 FC
	brk $1E.b		; 00 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $EE00.w,X		; FE 00 EE
	inx		; E8
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F800.w		; E0 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$1818.w		; E0 18 18
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0D19.w		; 0D 19 0D
	tas		; 1B
	ora $30183B.l,X		; 1F 3B 18 30
	inc A		; 1A
	and ($3A.b)		; 32 3A
	ror $34.b,X		; 76 34
	stz $30.b		; 64 30
	rts		; 60

	ora #$3D.b		; 09 3D
	ora #$3F.b		; 09 3F
	tas		; 1B
	adc $127810.l,X		; 7F 10 78 12
	ply		; 7A
	and ($FE.b)		; 32 FE
	bit $F4.b		; 24 F4
	jsr $3BF0.w		; 20 F0 3B
	cmp $7B.b,S		; C3 7B
	phb		; 8B
	adc ($99.b)		; 72 99
	cpy #$8018.w		; C0 18 80
	bmi   0.b		; 30 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	tda		; 7B
	eor [$F3.b]		; 47 F3
	sta [$E8.b]		; 87 E8
	sta $E017F0.l		; 8F F0 17 E0
	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -4.b		; 80 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	trb $031C.w		; 1C 1C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl $07.b		; 06 07
	tsb $0C06.w		; 0C 06 0C
	asl $0C.b		; 06 0C
	asl $0418.w		; 0E 18 04
	php		; 08
	trb $0018.w		; 1C 18 00
	clc		; 18
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	php		; 08
	rol $1C00.w,X		; 3E 00 1C
	clc		; 18
	bit $7800.w,X		; 3C 00 78
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
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	bra  39.b		; 80 27
	sec		; 38
	sbc ($03.b)		; F2 03
	inc $FF00.w,X		; FE 00 FF
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	sbc $FF01.w,X		; FD 01 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0D.b,S		; 03 0D
	ora $FC3F3D.l		; 0F 3D 3F FC
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $04.b,S		; 03 04
	ora $E03F18.l		; 0F 18 3F E0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7341.w		; C0 41 73
	sbc $0F.b,S		; E3 0F
	ora [$0F.b],Y		; 17 0F
	adc ($CF.b,S),Y		; 73 CF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$F12F.w		; A0 2F F1
	ora [$F7.b]		; 07 F7
	ora [$B0.b]		; 07 B0
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	trb $F0B0.w		; 1C B0 F0
	beq  64.b		; F0 40
	sed		; F8
	clc		; 18
	sed		; F8
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bit $F090.w,X		; 3C 90 F0
	rti		; 40

	beq  24.b		; F0 18
	sed		; F8
	bpl  -8.b		; 10 F8
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora ($07.b,X)		; 01 07
	ora #$07.b		; 09 07
	ora #$07.b		; 09 07
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b),Y		; 11 0F
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $3C4E00.l		; 0F 00 4E 3C
	jmp $9C38.w		; 4C 38 9C
	sei		; 78
	tya		; 98
	bvs -104.b		; 70 98
	bvs -104.b		; 70 98
	bvs  28.b		; 70 1C
	sed		; F8
	sty $3CF8.w		; 8C F8 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	bra  -2.b		; 80 FE
	brk $8F.b		; 00 8F
	beq   0.b		; F0 00
	sbc $00FF07.l,X		; FF 07 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $0C.b		; 00 0C
	beq -14.b		; F0 F2
	jsr ($FE1D.w,X)		; FC 1D FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $8F.b		; 00 8F
	adc $786F10.l,X		; 7F 10 6F 78
	and [$5C.b]		; 27 5C
	and ($0F.b,S),Y		; 33 0F
	bit $1F23.w,X		; 3C 23 1F
	bpl  15.b		; 10 0F
	tsb $7F03.w		; 0C 03 7F
	brk $6F.b		; 00 6F
	brk $27.b		; 00 27
	brk $33.b		; 00 33
	brk $3C.b		; 00 3C
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $82.b		; 00 82
	sbc $02FE05.l,X		; FF 05 FE 02
	sbc $BB64.w,X		; FD 64 BB
	cpy $7B.b		; C4 7B
	dey		; 88
	sbc [$13.b],Y		; F7 13
	cpx $C33C.w		; EC 3C C3
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $BB00.w,X		; FD 00 BB
	brk $7B.b		; 00 7B
	brk $F7.b		; 00 F7
	brk $EC.b		; 00 EC
	brk $C3.b		; 00 C3
	brk $FE.b		; 00 FE
	bit $FE59.w,X		; 3C 59 FE
	brk $FF.b		; 00 FF
	stx $BE77.w		; 8E 77 BE
	eor [$B0.b]		; 47 B0
	sta $F2322D.l		; 8F 2D 32 F2
	cmp $003C.w		; CD 3C 00
	inc $FF00.w,X		; FE 00 FF
	brk $77.b		; 00 77
	brk $47.b		; 00 47
	brk $4F.b		; 00 4F
	brk $E2.b		; 00 E2
	jsr $0001.w		; 20 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra   0.b		; 80 00
	cpy #$8060.w		; C0 60 80
	bvs -64.b		; 70 C0
	bvc -32.b		; 50 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $83.b		; 00 83
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $06FF00.l,X		; FF 00 FF 06
	sbc $06FD.w,Y		; F9 FD 06
	sbc $3A02.w,Y		; F9 02 3A
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E1.b		; 00 E1
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $81.b		; 00 81
	inc $FE01.w,X		; FE 01 FE
	cop $FD.b		; 02 FD
	brk $FF.b		; 00 FF
	ora [$FE.b]		; 07 FE
	cmp $3F.b		; C5 3F
	sed		; F8
	ora [$F1.b]		; 07 F1
	ora $FE00FE.l		; 0F FE 00 FE
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	brk $38.b		; 00 38
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $A0.b,S		; 03 A0
	cmp $80C080.l,X		; DF 80 C0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -127.b		; 80 81
	sta ($87.b,X)		; 81 87
	cmp [$BF.b]		; C7 BF
	sbc $80C080.l,X		; FF 80 C0 80
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -63.b		; 80 C1
	sta $C7.b,S		; 83 C7
	stz $05FF.w,X		; 9E FF 05
	ora [$3E.b]		; 07 3E
	and $51FFBE.l,X		; 3F BE FF 51
	sbc $00F040.l,X		; FF 40 F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	trb $203F.w		; 1C 3F 20
	sbc $40FF40.l,X		; FF 40 FF 40
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	sbc ($FE.b)		; F2 FE
	stx $79FE.w		; 8E FE 79
	sbc $B0B0.w,Y		; F9 B0 B0
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	ora ($F9.b,X)		; 01 F9
	brk $B0.b		; 00 B0
	bpl -112.b		; 10 90
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	bpl -48.b		; 10 D0
	plp		; 28
	cpx #$8000.w		; E0 00 80
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0030.w		; 20 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	ora $500F10.l		; 0F 10 0F 50
	ora $A80748.l		; 0F 48 07 A8
	eor [$94.b]		; 47 94
	adc $AF.b,S		; 63 AF
	bvs -104.b		; 70 98
	adc $0F000F.l,X		; 7F 0F 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $47.b		; 00 47
	brk $63.b		; 00 63
	brk $70.b		; 00 70
	brk $7F.b		; 00 7F
	brk $A6.b		; 00 A6
	jmp.w [$EED1]		; DC D1 EE
	cpx $71F3.w		; EC F3 71
	inc $FF1F.w,X		; FE 1F FF
	brk $FF.b		; 00 FF
	jsr $C1FF.w		; 20 FF C1
	sbc $EE00DC.l,X		; FF DC 00 EE
	brk $F3.b		; 00 F3
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	sbc [$87.b]		; E7 87
	sei		; 78
	asl $FF.b		; 06 FF
	ora ($FF.b,X)		; 01 FF
	bit $C2C3.w,X		; 3C C3 C2
	and $FE3D.w,X		; 3D 3D FE
	inc $E7FF.w,X		; FE FF E7
	brk $78.b		; 00 78
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	brk $3D.b		; 00 3D
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	sbc $C4FD02.l,X		; FF 02 FD C4
	tsa		; 3B
	clv		; B8
	cmp [$E3.b]		; C7 E3
	sbc $38FF7C.l,X		; FF 7C FF 38
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FD.b		; 00 FD
	brk $3B.b		; 00 3B
	brk $C7.b		; 00 C7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	ora [$F1.b]		; 07 F1
	ora $80FF0F.l		; 0F 0F FF 80
	adc $E007F8.l,X		; 7F F8 07 E0
	ora $E038DF.l,X		; 1F DF 38 E0
	jsr $BEFE.w		; 20 FE BE
	ora $00FF00.l		; 0F 00 FF 00
	adc $808700.l,X		; 7F 00 87 80
	eor ($40.b,X)		; 41 40
	sta [$80.b]		; 87 80
	eor $808140.l,X		; 5F 40 81 80
	dec $59.b		; C6 59
	cmp [$19.b]		; C7 19
	ldy $9B.b		; A4 9B
	lda [$38.b]		; A7 38
	brk $F0.b		; 00 F0
	cpy #$8000.w		; C0 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	lda $F138.w,Y		; B9 38 F1
	bpl  99.b		; 10 63
	rti		; 40

	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	cpx #$E090.w		; E0 90 E0
	brk $E0.b		; 00 E0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	cmp [$3C.b]		; C7 3C
	adc $837941.l,X		; 7F 41 79 83
	sta $A7.b,S		; 83 A7
	lda $FEDF9F.l		; AF 9F DF FE
	sbc $3DFF80.l,X		; FF 80 FF 3D
	ora [$38.b]		; 07 38
	and $7F46.w,X		; 3D 46 7F
	sbc [$FF.b],Y		; F7 FF
	adc ($FF.b,S),Y		; 73 FF
	lda [$FF.b],Y		; B7 FF
	dey		; 88
	sbc $F0FF00.l,X		; FF 00 FF F0
	dec $CE70.w		; CE 70 CE
	beq -22.b		; F0 EA
	bcc -22.b		; 90 EA
	beq  99.b		; F0 63
	sbc ($C2.b),Y		; F1 C2
	and ($C0.b,S),Y		; 33 C0
	adc [$80.b],Y		; 77 80
	sta ($C0.b,X)		; 81 C0
	eor ($C0.b,X)		; 41 C0
	cmp [$E2.b]		; C7 E2
	ora [$E2.b]		; 07 E2
	eor $8C61.w		; 4D 61 8C
	cpy #$C00C.w		; C0 0C C0
	php		; 08
	bra   1.b		; 80 01
	ora ($06.b,X)		; 01 06
	asl $1E.b		; 06 1E
	asl $FEFE.w,X		; 1E FE FE
	beq  -2.b		; F0 FE
	cpy #$00F0.w		; C0 F0 00
	cpy #$0000.w		; C0 00 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $701F.w		; 0C 1F 70
	sbc $00FF80.l,X		; FF 80 FF 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	jmp.w [$E0DF]		; DC DF E0
	sbc $F2E6E8.l		; EF E8 E6 F2
	pea $F8E5.w		; F4 E5 F8
	php		; 08
	and ($8C.b),Y		; 31 8C
	bvs  95.b		; 70 5F
	jsr $FFC0.w		; 20 C0 FF
	sbc ($FF.b,X)		; E1 FF
	cpx #$C0F1.w		; E0 F1 C0
	sbc $E200.w,Y		; F9 00 E2
	brk $C7.b		; 00 C7
	tsb $0B0F.w		; 0C 0F 0B
	phd		; 0B
	rol $49C1.w,X		; 3E C1 49
	stx $91.b		; 86 91
	asl $1CE2.w		; 0E E2 1C
	jmp.w [$48A0]		; DC A0 48
	bit $30.b,X		; 34 30
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	rti		; 40

	rol $36.b,X		; 36 36
	pla		; 68
	pla		; 68
	ora ($00.b,X)		; 01 00
	ora $80.b,S		; 03 80
	ora $80.b,S		; 03 80
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $15.b		; 00 15
	ora $25.b,X		; 15 25
	and $49.b		; 25 49
	eor #$89.b		; 49 89
	bit #$91.b		; 89 91
	sta ($11.b),Y		; 91 11
	ora ($21.b),Y		; 11 21
	and ($A2.b,X)		; 21 A2
	ldx #$2CAC.w		; A2 AC 2C
	cmp ($12.b,S),Y		; D3 12
	sbc $FF0C.w		; ED 0C FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8C.b		; 00 8C
	inc $7F53.w,X		; FE 53 7F
	bit $2F3E.w		; 2C 3E 2F
	and $122424.l		; 2F 24 24 12
	ora ($11.b)		; 12 11
	ora ($11.b),Y		; 11 11
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $2121.w,X		; 1E 21 21
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$1F1F.w		; E0 1F 1F
	lsr $2FC0.w,X		; 5E C0 2F
	rts		; 60

	ora [$70.b],Y		; 17 70
	phd		; 0B
	sec		; 38
	ora [$1C.b]		; 07 1C
	ora ($0C.b,X)		; 01 0C
	sta $0E.b,S		; 83 0E
	sed		; F8
	asl $3F.b		; 06 3F
	brk $5F.b		; 00 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	sta $82.b,S		; 83 82
	ora $803F80.l,X		; 1F 80 3F 80
	rol $BC40.w,X		; 3E 40 BC
	rti		; 40

	tya		; 98
	jsr $20D0.w		; 20 D0 20
	cpy #$E010.w		; C0 10 E0
	bpl   8.b		; 10 08
	php		; 08
	tya		; 98
	tya		; 98
	bcc  16.b		; 90 10
	bne  80.b		; D0 50
	cpy #$E000.w		; C0 00 E0
	jsr $00E0.w		; 20 E0 00
	beq  16.b		; F0 10
	asl A		; 0A
	ora $FC3F3A.l		; 0F 3A 3F FC
	sbc $80FCE0.l,X		; FF E0 FC 80
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0F.b		; 02 0F
	inc A		; 1A
	and $00FFE0.l,X		; 3F E0 FF 00
	jsr ($E000.w,X)		; FC 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  32.b		; 80 20
	cpy #$E010.w		; C0 10 E0
	bra 126.b		; 80 7E
	adc $0092.w		; 6D 92 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $7E.b		; 00 7E
	brk $92.b		; 00 92
	brk $00.b		; 00 00
	lda $337B3C.l,X		; BF 3C 7B 33
	jmp ($6F30.w)		; 6C 30 6F
	and ($EE.b),Y		; 31 EE
	tyx		; BB
	adc $7E.b,X		; 75 7E
	tsx		; BA
	jmp $FE005C.l		; 5C 5C 00 FE
	brk $F8.b		; 00 F8
	tsb $E4.b		; 04 E4
	ora $E3.b,S		; 03 E3
	brk $E0.b		; 00 E0
	bpl 113.b		; 10 71
	inc A		; 1A
	tyx		; BB
	trb $00FE.w		; 1C FE 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	ora $801CE0.l		; 0F E0 1C 80
	rts		; 60

	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	cpy #$E110.w		; C0 10 E1
	bpl -112.b		; 10 90
	bcc -96.b		; 90 A0
	ldy #$8080.w		; A0 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$E020.w		; E0 20 E0
	brk $F0.b		; 00 F0
	bpl   1.b		; 10 01
	sbc $3F0E12.l,X		; FF 12 0E 3F
	brk $77.b		; 00 77
	ora $FF007F.l		; 0F 7F 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	tsb $10.b		; 04 10
	bmi  35.b		; 30 23
	and $602020.l,X		; 3F 20 20 60
	rts		; 60

	rti		; 40

	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$3F.b]		; 07 3F
	and $F0FFFC.l,X		; 3F FC FF F0
	jsr ($F080.w,X)		; FC 80 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $07.b,S		; 03 07
	trb $603F.w		; 1C 3F 60
	sbc $00FC80.l,X		; FF 80 FC 00
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	ora $0E.b,S		; 03 0E
	ora $F87F7E.l		; 0F 7E 7F F8
	sbc $1CFFC3.l,X		; FF C3 FF 1C
	jsr ($E4E4.w,X)		; FC E4 E4
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl $0F.b		; 06 0F
	sec		; 38
	adc $00FFC0.l,X		; 7F C0 FF 00
	sbc $04FC00.l,X		; FF 00 FC 04
	cpx $00.b		; E4 00
	cop $FF.b		; 02 FF
	brk $FE.b		; 00 FE
	ora ($FD.b,X)		; 01 FD
	cop $FD.b		; 02 FD
	brk $FB.b		; 00 FB
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	ora [$01.b]		; 07 01
	brk $FF.b		; 00 FF
	sbc $850202.l,X		; FF 02 02 85
	sty $67.b		; 84 67
	stz $1F.b		; 64 1F
	clc		; 18
	ora [$00.b]		; 07 00
	ora $20000F.l		; 0F 0F 00 20
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	sbc $FF01.w,Y		; F9 01 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0000C0.l,X		; FF C0 00 00
	brk $78.b		; 00 78
	sei		; 78
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	jsr ($007F.w,X)		; FC 7F 00
	and $000F00.l,X		; 3F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $62, $62, $32		; 62 62 32
	and ($0A.b)		; 32 0A
	asl A		; 0A
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $701700.l,X		; FF 00 17 70
	phd		; 0B
	sec		; 38
	ora $18.b,S		; 03 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	ora #$09.b		; 09 09
	ora $F0FF0E.l		; 0F 0E FF F0
	and $101720.l		; 2F 20 17 10
	ora $007F08.l		; 0F 08 7F 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
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
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
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
	brk $F5.b		; 00 F5
	ora $FC.b,S		; 03 FC
	ora $E8.b,S		; 03 E8
	ora [$F8.b],Y		; 17 F8
	ora [$FC.b],Y		; 17 FC
	asl A		; 0A
	rol $0F04.w,X		; 3E 04 0F
	cop $00.b		; 02 00
	brk $72.b		; 00 72
	ply		; 7A
	ora ($11.b,X)		; 01 11
	cop $12.b		; 02 12
	ora $13.b,S		; 03 13
	phd		; 0B
	asl A		; 0A
	ora $04.b		; 05 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	rts		; 60

	php		; 08
	bmi -120.b		; 30 88
	bmi   8.b		; 30 08
	rts		; 60

	clc		; 18
	cpy #$8030.w		; C0 30 80
	rts		; 60

	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	dey		; 88
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$0020.w		; E0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora [$1A.b]		; 07 1A
	ora $F8FFFA.l,X		; 1F FA FF F8
	inc $F8C0.w,X		; FE C0 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	asl A		; 0A
	ora $80FF72.l,X		; 1F 72 FF 80
	inc $F800.w,X		; FE 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($12.b,X)		; 01 12
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	cop $0D.b		; 02 0D
	cop $08.b		; 02 08
	asl $32.b		; 06 32
	tsb $18EC.w		; 0C EC 18
	clc		; 18
	beq  48.b		; F0 30
	cpx #$C060.w		; E0 60 C0
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $1800.w		; 0C 00 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	ora $F87F7F.l,X		; 1F 7F 7F F8
	sbc $80F8E0.l,X		; FF E0 F8 80
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	asl $301F.w		; 0E 1F 30
	adc $00FFC0.l,X		; 7F C0 FF 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F171F.l		; 0F 1F 17 3F
	clc		; 18
	and $001800.l,X		; 3F 00 18 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$0C.b]		; 07 0C
	ora $003F10.l,X		; 1F 10 3F 00
	and $001800.l,X		; 3F 00 18 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $A1FFAC.l,X		; 1F AC FF A1
	sbc $04FECE.l,X		; FF CE FE 04
	cpy $04.b		; C4 04
	tsb $00.b		; 04 00
	brk $03.b		; 00 03
	ora [$0C.b]		; 07 0C
	ora $A0FF20.l,X		; 1F 20 FF A0
	sbc $00FE00.l,X		; FF 00 FE 00
	cpy $04.b		; C4 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $2A.b		; 02 2A
	pld		; 2B
	eor $70.b,X		; 55 70
	xba		; EB
	cmp $00.b		; C5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora [$2A.b]		; 07 2A
	pld		; 2B
	rti		; 40

	adc $80.b,X		; 75 80
	sbc $000000.l		; EF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bra  80.b		; 80 50
	bvc   8.b		; 50 08
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bvc  80.b		; 50 50
	brk $A8.b		; 00 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bvs -128.b		; 70 80
	dec $78.b		; C6 78
	cmp ($FE.b,X)		; C1 FE
	lda $00FE.w,Y		; B9 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
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
	brk $07.b		; 00 07
	cop $00.b		; 02 00
	brk $07.b		; 00 07
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $020702.l		; 0F 02 07 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $80.b,S		; 03 80
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	ora ($80.b,X)		; 01 80
	ora ($80.b,X)		; 01 80
	ora $80.b,S		; 03 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	tsb $1903.w		; 0C 03 19
	asl $3A.b		; 06 3A
	ora $1F70.w		; 0D 70 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $1F00.w		; 0D 00 1F
	brk $6C.b		; 00 6C
	ora ($DC.b,S),Y		; 13 DC
	adc $A8.b,S		; 63 A8
	cmp $5B.b,X		; D5 5B
	ldy $BD.b		; A4 BD
	eor $6C.b,S		; 43 6C
	sta ($4D.b),Y		; 91 4D
	lda ($46.b,S),Y		; B3 46
	lda $0013.w,Y		; B9 13 00
	adc $00.b,S		; 63 00
	cmp [$00.b],Y		; D7 00
	ldx $00.b		; A6 00
	rti		; 40

	brk $93.b		; 00 93
	ora $B0.b,S		; 03 B0
	brk $B9.b		; 00 B9
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $0E.b,S		; 03 0E
	ora $020C0F.l		; 0F 0F 0C 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora $0C0F0E.l		; 0F 0E 0F 0C
	ora $721D33.l		; 0F 33 1D 72
	ora $3E50.w,X		; 1D 50 3E
	bvc  63.b		; 50 3F
	eor $2F.b,S		; 43 2F
	ora $7FDE3F.l		; 0F 3F DE 7F
	bcc  -4.b		; 90 FC
	ora $1D80.w,X		; 1D 80 1D
	bra  62.b		; 80 3E
	sta ($3C.b,X)		; 81 3C
	sta $23.b,S		; 83 23
	sta $1CFF0F.l,X		; 9F 0F FF 1C
	sbc $EBFF00.l,X		; FF 00 FF EB
	stz $DB.b,X		; 74 DB
	stz $DA.b		; 64 DA
	cpx $96.b		; E4 96
	cpx $ED95.w		; EC 95 ED
	ldy $CD.b,X		; B4 CD
	dec A		; 3A
	cmp [$3C.b]		; C7 3C
	cmp $73.b,S		; C3 73
	brk $67.b		; 00 67
	tsb $E7.b		; 04 E7
	tsb $E3.b		; 04 E3
	brk $E2.b		; 00 E2
	brk $CB.b		; 00 CB
	ora #$C5.b		; 09 C5
	ora $CA.b		; 05 CA
	asl A		; 0A
	lda ($DE.b,X)		; A1 DE
	cmp ($BE.b,X)		; C1 BE
	ora [$F8.b]		; 07 F8
	adc $4186.w,Y		; 79 86 41
	lda $5F9D63.l,X		; BF 63 9D 5F
	sta $DF.b,S		; 83 DF
	ora $000202.l		; 0F 02 02 00
	brk $80.b		; 00 80
	bra -122.b		; 80 86
	stx $19.b		; 86 19
	ora $0101.w,Y		; 19 01 01
	ora $23.b,S		; 03 23
	ora [$3F.b]		; 07 3F
	and [$18.b]		; 27 18
	and $1A.b		; 25 1A
	cmp $3A.b		; C5 3A
	dex		; CA
	and [$BE.b],Y		; 37 BE
	eor [$8B.b]		; 47 8B
	adc $C8.b,X		; 75 C8
	lda [$FD.b],Y		; B7 FD
	stx $D0.b		; 86 D0
	bne -62.b		; D0 C2
	cpy #$2022.w		; C0 22 20
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	sta [$80.b]		; 87 80
	stx $80.b		; 86 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $FA.b		; 00 FA
	asl $F9.b		; 06 F9
	ora [$FC.b]		; 07 FC
	ora $FC.b,S		; 03 FC
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora $F6.b,S		; 03 F6
	phd		; 0B
	sbc ($0E.b,S),Y		; F3 0E
	lsr A		; 4A
	eor $444F49.l		; 4F 49 4F 44
	eor [$24.b]		; 47 24
	and [$2C.b]		; 27 2C
	bit $383B.w		; 2C 3B 38
	tsa		; 3B
	bmi  62.b		; 30 3E
	bmi  32.b		; 30 20
	plp		; 28
	tya		; 98
	tya		; 98
	sec		; 38
	jsr ($7818.w,X)		; FC 18 78
	cpy #$F000.w		; C0 00 F0
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	jsr ($FC98.w,X)		; FC 98 FC
	sec		; 38
	inc $FC18.w,X		; FE 18 FC
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy $C5.b		; C4 C5
	cpy $C5.b		; C4 C5
	rti		; 40

	eor $45.b,S		; 43 45
	eor $28.b		; 45 28
	pla		; 68
	bvc   0.b		; 50 00
	asl A		; 0A
	and ($1E.b,S),Y		; 33 1E
	ora $86E786.l		; 0F 86 E7 86
	sbc [$00.b]		; E7 00
	.db $62, $43, $67		; 62 43 67
	ora [$7F.b]		; 07 7F
	ora [$77.b]		; 07 77
	cop $3A.b		; 02 3A
	cop $1F.b		; 02 1F
	dey		; 88
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	bpl -80.b		; 10 B0
	ldy #$D000.w		; A0 00 D0
	bra  64.b		; 80 40
	cpy #$0080.w		; C0 80 00
	sty $8C00.w		; 8C 00 8C
	brk $8C.b		; 00 8C
	brk $18.b		; 00 18
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	and $32DF.w,Y		; 39 DF 32
	cmp $3DC2.w,X		; DD C2 3D
	rti		; 40

	and $9E5D23.l,X		; 3F 23 5D 9E
	sta $04EB.w,Y		; 99 EB 04
	ror A		; 6A
	tsb $00DF.w		; 0C DF 00
	cmp $1900.w,X		; DD 00 19
	brk $B7.b		; 00 B7
	bit $8D.b,X		; 34 8D
	tsb $0061.w		; 0C 61 00
	sed		; F8
	brk $F0.b		; 00 F0
	bpl  32.b		; 10 20
	cpy #$E080.w		; C0 80 E0
	bne -32.b		; D0 E0
	bra -16.b		; 80 F0
	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $00.b,S		; 03 00
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	brk $06.b		; 00 06
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	ora $02.b,S		; 03 02
	ora [$0E.b]		; 07 0E
	ora [$0C.b]		; 07 0C
	ora [$0D.b]		; 07 0D
	asl $1D.b		; 06 1D
	asl $0E19.w		; 0E 19 0E
	tas		; 1B
	ora $1D3B.w		; 0D 3B 1D
	tsa		; 3B
	ora $8007.w,X		; 1D 07 80
	ora [$00.b]		; 07 00
	asl $80.b		; 06 80
	asl $0E80.w		; 0E 80 0E
	brk $0D.b		; 00 0D
	bra  29.b		; 80 1D
	brk $1D.b		; 00 1D
	bra -28.b		; 80 E4
	and $997EC5.l,X		; 3F C5 7E 99
	inc $EB9C.w		; EE 9C EB
	bit $DA.b,X		; 34 DA
	and [$DA.b],Y		; 37 DA
	adc $6BB0.w		; 6D B0 6B
	ldy $3F.b,X		; B4 3F
	brk $7F.b		; 00 7F
	ora ($EE.b,X)		; 01 EE
	brk $E9.b		; 00 E9
	ora ($DB.b,X)		; 01 DB
	cop $D9.b		; 02 D9
	brk $B3.b		; 00 B3
	brk $B3.b		; 00 B3
	brk $1D.b		; 00 1D
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	ora $FE.b,S		; 03 FE
	ora ($7F.b,X)		; 01 7F
	sta ($BF.b,X)		; 81 BF
	cpy #$3F.b		; C0 3F
	rti		; 40

	and [$58.b]		; 27 58
	and $5C.b,S		; 23 5C
	sed		; F8
	clc		; 18
	cpx #$E0.b		; E0 E0
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	cld		; D8
	cli		; 58
	sty $04.b		; 84 04
	ora [$06.b]		; 07 06
	asl $17.b,X		; 16 17
	php		; 08
	clc		; 18
	tsb $04.b		; 04 04
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	ror $7B.b,X		; 76 7B
	asl $0F.b		; 06 0F
	asl $1F.b,X		; 16 1F
	php		; 08
	ora $020700.l,X		; 1F 00 07 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $62.b,S		; 03 62
	adc $4C830C.l,X		; 7F 0C 83 4C
	and ($4C.b,S),Y		; 33 4C
	lda ($4C.b,S),Y		; B3 4C
	lda ($08.b,S),Y		; B3 08
	and ($2A.b,S),Y		; 33 2A
	ora ($22.b),Y		; 11 22
	ora ($21.b),Y		; 11 21
	bpl   3.b		; 10 03
	beq  51.b		; F0 33
	bra  51.b		; 80 33
	bra  51.b		; 80 33
	bra  51.b		; 80 33
	bra  17.b		; 80 11
	bra  17.b		; 80 11
	brk $10.b		; 00 10
	bra  62.b		; 80 3E
	cmp ($1F.b,X)		; C1 1F
	rts		; 60

	adc $F0E7F0.l		; 6F F0 E7 F0
	cmp [$E0.b]		; C7 E0
	sta $801FC0.l		; 8F C0 1F 80
	adc $14D480.l,X		; 7F 80 D4 14
	asl A		; 0A
	nop		; EA
	stz $F4.b		; 64 F4
	cmp ($F9.b,X)		; C1 F9
	.db $82, $FA, $04		; 82 FA 04
	pea $E808.w		; F4 08 E8
	sta ($11.b),Y		; 91 11
	cmp $0F970F.l,X		; DF 0F 97 0F
	adc $370307.l		; 6F 07 03 37
	cmp $0B.b,S		; C3 0B
	sbc $05.b,X		; F5 05
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($03.b,X)		; 01 03
	and $037F03.l,X		; 3F 03 7F 03
	sbc $41FF03.l,X		; FF 03 FF 41
	adc $AA5F50.l,X		; 7F 50 5F AA
	lda $E94F4D.l		; AF 4D 4F E9
	dec $E7.b		; C6 E7
	dex		; CA
	cmp [$CA.b]		; C7 CA
	cmp [$8A.b]		; C7 8A
	bra -89.b		; 80 A7
	cli		; 58
	eor $B8.b,S		; 43 B8
	sta ($74.b,X)		; 81 74
	tsb $F086.w		; 0C 86 F0
	txa		; 8A
	beq -118.b		; F0 8A
	beq -118.b		; F0 8A
	beq   7.b		; F0 07
	sed		; F8
	ora ($F4.b,S),Y		; 13 F4
	lda ($F6.b),Y		; B1 F6
	mvn $40,$DF		; 54 DF 40
	ldy #$60.b		; A0 60
	bra  32.b		; 80 20
	cpy #$A0.b		; C0 A0
	rti		; 40

	ldy #$50.b		; A0 50
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	ldy #$00.b		; A0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $50.b		; 00 50
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	clc		; 18
	sbc #$16.b		; E9 16
	eor $04F6.w		; 4D F6 04
	rol $2C52.w,X		; 3E 52 2C
	cld		; D8
	bit $28DC.w		; 2C DC 28
	cpy #$38.b		; C0 38
	iny		; C8
	bmi -10.b		; 30 F6
	cpx #$96.b		; E0 96
	bra -34.b		; 80 DE
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $C8.b		; 00 C8
	brk $D8.b		; 00 D8
	brk $D0.b		; 00 D0
	brk $60.b		; 00 60
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra -94.b		; 80 A2
	jsl $8844C4.l		; 22 C4 44 88
	php		; 08
	cmp ($51.b),Y		; D1 51
	lda ($21.b,X)		; A1 21
	sta ($12.b)		; 92 12
	txa		; 8A
	asl A		; 0A
	sta [$07.b]		; 87 07
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $48.b		; 00 48
	eor #$89.b		; 49 89
	bit #$89.b		; 89 89
	bit #$11.b		; 89 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($21.b),Y		; 11 21
	and ($3F.b,X)		; 21 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  32.b		; 10 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $3F20.w		; 20 20 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
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
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $0D01.w		; 0C 01 0D
	ora $1E.b,S		; 03 1E
	ora [$19.b]		; 07 19
	tas		; 1B
	cop $2B.b		; 02 2B
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $0E.b		; 04 0E
	tsb $0C0C.w		; 0C 0C 0C
	ora #$09.b		; 09 09
	cop $06.b		; 02 06
	brk $1C.b		; 00 1C
	dec $9C23.w,X		; DE 23 9C
	rol $EC.b		; 26 EC
	lsr $AA.b		; 46 AA
	cpy $7897.w		; CC 97 78
	cmp $64DBB2.l		; CF B2 DB 64
	sta $00DC60.l,X		; 9F 60 DC 00
	phx		; DA
	cop $98.b		; 02 98
	brk $54.b		; 00 54
	mvp $08,$08		; 44 08 08
	sta ($92.b)		; 92 92
	jsr $0064.w		; 20 64 00
	pha		; 48
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   0.b		; 10 00
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
	brk $1C.b		; 00 1C
	cmp ($9E.b,X)		; C1 9E
	eor ($BE.b,X)		; 41 BE
	adc ($3E.b,X)		; 61 3E
	adc ($1E.b,X)		; 61 1E
	adc ($0E.b,X)		; 61 0E
	and ($0E.b,X)		; 21 0E
	and ($0E.b,X)		; 21 0E
	and ($7E.b,X)		; 21 7E
	rti		; 40

	ror $1E40.w,X		; 7E 40 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $1E00.w,X		; 1E 00 1E
	brk $F0.b		; 00 F0
	tsb $08F4.w		; 0C F4 08
	beq   8.b		; F0 08
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	pea $F000.w		; F4 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	ora $1E.b,S		; 03 1E
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $28.b		; 00 28
	sty $48B0.w		; 8C B0 48
	pha		; 48
	bcs -72.b		; B0 B8
	cpy #$3C.b		; C0 3C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F2.b		; 00 F2
	tsb $90F0.w		; 0C F0 90
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	php		; 08
	php		; 08
	ror $0673.w,X		; 7E 73 06
	phd		; 0B
	asl $0B.b		; 06 0B
	ror $7B.b,X		; 76 7B
	ror $0673.w,X		; 7E 73 06
	ora $36.b,S		; 03 36
	tsa		; 3B
	rol $6233.w,X		; 3E 33 62
	adc $020F02.l,X		; 7F 02 0F 02
	ora $627F62.l		; 0F 62 7F 62
	adc $220702.l,X		; 7F 02 07 22
	and $113F22.l,X		; 3F 22 3F 11
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
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
	bra 124.b		; 80 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
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

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  24.b		; 30 18
	brk $10.b		; 00 10
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	brk $00.b		; 00 00
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bpl  60.b		; 10 3C
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	sec		; 38
	sta [$B8.b]		; 87 B8
	asl $B8.b		; 06 B8
	asl $98.b		; 06 98
	asl $1C.b		; 06 1C
	cop $0D.b		; 02 0D
	ora $0D.b,S		; 03 0D
	ora $05.b,S		; 03 05
	ora $83.b,S		; 03 83
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$01.b		; C0 01
	and $EB1CD0.l,X		; 3F D0 1C EB
	tsb $0CFB.w		; 0C FB 0C
	xce		; FB
	tsb $0473.w		; 0C 73 04
	sbc ($E1.b,X)		; E1 E1
	sbc $32F2FF.l,X		; FF FF F2 32
	xba		; EB
	php		; 08
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	xce		; FB
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
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
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ora [$08.b],Y		; 17 08
	eor $007F00.l,X		; 5F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $0000.w,X		; FE 00 00
	sec		; 38
	brk $20.b		; 00 20
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

	sbc $00EF00.l		; EF 00 EF 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $02.b		; 00 02
	eor ($02.b)		; 52 02
	ora ($04.b)		; 12 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	bmi  24.b		; 30 18
	jsr $1810.w		; 20 10 18
	clc		; 18
	ldy #$90.b		; A0 90
	bcs -40.b		; B0 D8
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	brk $38.b		; 00 38
	clc		; 18
	trb $B880.w		; 1C 80 B8
	bcc  -4.b		; 90 FC
	beq -40.b		; F0 D8
	bmi  24.b		; 30 18
	bcs -104.b		; B0 98
	bcs -40.b		; B0 D8
	beq -40.b		; F0 D8
	bmi  24.b		; 30 18
	bvs  88.b		; 70 58
	sei		; 78
	bvc -48.b		; 50 D0
	jsr ($3C10.w,X)		; FC 10 3C
	bcc -68.b		; 90 BC
	bcc  -4.b		; 90 FC
	bne  -4.b		; D0 FC
	bpl  60.b		; 10 3C
	bvc 124.b		; 50 7C
	rti		; 40

	jmp ($1830.w,X)		; 7C 30 18
	bmi  24.b		; 30 18
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bpl  24.b		; 10 18
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	clc		; 18
	bpl   8.b		; 10 08
	bpl   0.b		; 10 00
	brk $38.b		; 00 38
	clc		; 18
	bmi  24.b		; 30 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000D00.l		; 0F 00 0D 00
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
	ora $7C.b,S		; 03 7C
	ora $7C.b,S		; 03 7C
	ora ($7C.b,S),Y		; 13 7C
	ora ($7C.b,S),Y		; 13 7C
	and ($7C.b,S),Y		; 33 7C
	and ($7E.b),Y		; 31 7E
	and $7A.b,X		; 35 7A
	and $7A.b,X		; 35 7A
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	brk $E9.b		; 00 E9
	asl $F1.b,X		; 16 F1
	asl $C43B.w		; 0E 3B C4
	and $C03FD0.l		; 2F D0 3F C0
	and $807FC0.l,X		; 3F C0 7F 80
	sbc $041400.l,X		; FF 00 14 04
	php		; 08
	php		; 08
	cmp ($01.b,X)		; C1 01
	stp		; DB
	phd		; 0B
	cmp $15.b,X		; D5 15
	sbc #$29.b		; E9 29
	dex		; CA
	lsr A		; 4A
	sta ($92.b)		; 92 92
	inc $DDFB.w,X		; FE FB DD
	sbc $ECDDDD.l,X		; FF DD DD EC
	and $12F3.w		; 2D F3 12
	sbc $00FF0C.l,X		; FF 0C FF 00
	sbc $FF0000.l,X		; FF 00 00 FF
	iny		; C8
	sbc $A4FFCD.l,X		; FF CD FF A4
	lda $6DDED0.l,X		; BF D0 DE 6D
	adc $5252.w		; 6D 52 52
	jmp $DB4C.w		; 4C 4C DB
	and ($F7.b,X)		; 21 F7
	sty $FC81.w		; 8C 81 FC
	inx		; E8
	asl $FC.b,X		; 16 FC
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $25.b		; 00 25
	txy		; 9B
	cop $81.b		; 02 81
	sbc [$84.b],Y		; F7 84
	ora ($02.b,S),Y		; 13 02
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	lda $A3.b,S		; A3 A3
	eor ($51.b),Y		; 51 51
	sed		; F8
	sbc $4F07FF.l,X		; FF FF 07 4F
	bcs 112.b		; B0 70
	bra -32.b		; 80 E0
	ora $813FFE.l,X		; 1F FE 3F 81
	ror $708C.w,X		; 7E 8C 70
	sed		; F8
	sbc $B0FF07.l,X		; FF 07 FF B0
	sta $000F00.l		; 8F 00 0F 00
	ora $003F3E.l,X		; 1F 3E 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	cpy #$C0.b		; C0 C0
	cpy #$92.b		; C0 92
	and ($58.b)		; 32 58
	adc $B879.w,Y		; 79 79 B8
	jsr $3FC7.w		; 20 C7 3F
	and $007E01.l,X		; 3F 01 7E 00
	sbc $12FFC0.l,X		; FF C0 FF 12
	sbc $38FF58.l,X		; FF 58 FF 38
	sbc $3FFF00.l,X		; FF 00 FF 3F
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $1C.b		; 00 1C
	rts		; 60

	tsa		; 3B
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $C4.b		; 00 C4
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
	bmi   0.b		; 30 00
	jmp ($00F8.w,X)		; 7C F8 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

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
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	asl A		; 0A
	sbc $9A.b,X		; F5 9A
	eor $93.b		; 45 93
	jmp $0C53.w		; 4C 53 0C
	phk		; 4B
	tsb $4B.b		; 04 4B
	tsb $0D.b		; 04 0D
	rti		; 40

	ora $F500.w		; 0D 00 F5
	brk $45.b		; 00 45
	brk $4C.b		; 00 4C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$0F.b		; C0 0F
	sed		; F8
	asl $F0.b		; 06 F0
	ora [$F0.b]		; 07 F0
	ora [$F0.b],Y		; 17 F0
	ora [$F0.b],Y		; 17 F0
	eor [$B0.b],Y		; 57 B0
	eor [$B0.b]		; 47 B0
	jsr ($D33C.w,X)		; FC 3C D3
	ora ($DF.b,S),Y		; 13 DF
	bpl -33.b		; 10 DF
	bpl -49.b		; 10 CF
	brk $CF.b		; 00 CF
	brk $8F.b		; 00 8F
	brk $BF.b		; 00 BF
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	asl $10.b		; 06 10
	asl $FF00.w		; 0E 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $F6.b		; 00 F6
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FE00.w,X		; FE 00 FE
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	ora $F0.b,S		; 03 F0
	ora $F98A.w		; 0D 8A F9
	asl $71.b,X		; 16 71
	ora $618F61.l		; 0F 61 8F 61
	stx $8E60.w		; 8E 60 8E
	rts		; 60

	txs		; 9A
	txs		; 9A
	asl $04.b		; 06 04
	eor [$51.b],Y		; 57 51
	cmp $40DE41.l		; CF 41 DE 40
	dec $DF40.w,X		; DE 40 DF
	rti		; 40

	cmp $748A40.l,X		; DF 40 8A 74
	dex		; CA
	bit $CE.b,X		; 34 CE
	bmi -33.b		; 30 DF
	jsl $6FAA57.l		; 22 57 AA 6F
	stz $9E6F.w,X		; 9E 6F 9E
	lsr $749F.w		; 4E 9F 74
	ora ($34.b,X)		; 01 34
	ora ($30.b,X)		; 01 30
	ora ($20.b,X)		; 01 20
	phd		; 0B
	jsr $000B.w		; 20 0B 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $177A15.l,X		; 3F 15 7A 17
	sei		; 78
	ora $7A.b,X		; 15 7A
	trb $3B.b		; 14 3B
	asl $39.b,X		; 16 39
	ora ($3C.b,S),Y		; 13 3C
	ora $3C.b,S		; 03 3C
	ora $1C.b,S		; 03 1C
	tda		; 7B
	ora ($7A.b,X)		; 01 7A
	cop $7B.b		; 02 7B
	ora ($3B.b,X)		; 01 3B
	brk $39.b		; 00 39
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$1F.b		; C0 1F
	cpx #$5F.b		; E0 5F
	ldy #$14.b		; A0 14
	trb $24.b		; 14 24
	bit $24.b		; 24 24
	bit $C0.b		; 24 C0
	cpy #$C8.b		; C0 C8
	pha		; 48
	sbc #$29.b		; E9 29
	sbc #$09.b		; E9 09
	lda #$09.b		; A9 09
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	eor #$49.b		; 49 49
	bit #$89.b		; 89 89
	bit #$89.b		; 89 89
	bit #$89.b		; 89 89
	dey		; 88
	dey		; 88
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $02FD00.l,X		; FF 00 FD 02
	sbc $F502.w,X		; FD 02 F5
	asl A		; 0A
	beq  15.b		; F0 0F
	cmp ($2E.b),Y		; D1 2E
	pha		; 48
	pha		; 48
	bit $24.b		; 24 24
	jsr $1220.w		; 20 20 12
	bpl -110.b		; 10 92
	bcc -118.b		; 90 8A
	bra -49.b		; 80 CF
	cpy #$8E.b		; C0 8E
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	and $801F00.l,X		; 3F 00 1F 80
	ora $C01F80.l,X		; 1F 80 1F C0
	ora $C01FC0.l,X		; 1F C0 1F C0
	ora $0C1FC0.l,X		; 1F C0 1F 0C
	bvs   7.b		; 70 07
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	sbc $00F800.l,X		; FF 00 F8 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$60.b		; E0 60
	lda $AE7FF6.l,X		; BF F6 7F AE
	sbc $09F78C.l,X		; FF 8C F7 09
	inc $5A.b,X		; F6 5A
	lda $2A.b		; A5 2A
	bit #$64.b		; 89 64
	lda ($BF.b,X)		; A1 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $A0.b		; 00 A0
	brk $DD.b		; 00 DD
	ora $03DB.w		; 0D DB 03
	sei		; 78
	bra  76.b		; 80 4C
	beq  36.b		; F0 24
	plx		; FA
	bcs 126.b		; B0 7E
	sty $7A.b,X		; 94 7A
	cpx $3A.b		; E4 3A
	jmp $79B2.w		; 4C B2 79
	sty $80.b		; 84 80
	ora [$F0.b]		; 07 F0
	ora $FA.b,S		; 03 FA
	ora ($7E.b,X)		; 01 7E
	ora ($7A.b,X)		; 01 7A
	ora ($3A.b,X)		; 01 3A
	ora ($32.b,X)		; 01 32
	ora ($04.b,X)		; 01 04
	ora $78.b,S		; 03 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $1020.w		; 20 20 10
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
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	ora #$00.b		; 09 00
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
	eor [$B0.b]		; 47 B0
	lda $18AF18.l		; AF 18 AF 18
	and ($08.b,S),Y		; 33 08
	adc ($08.b,S),Y		; 73 08
	adc ($08.b,S),Y		; 73 08
	adc ($08.b,S),Y		; 73 08
	sbc ($08.b,S),Y		; F3 08
	lda $000710.l,X		; BF 10 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bmi  14.b		; 30 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b),Y		; 31 0E
	bmi -114.b		; 30 8E
	and ($8C.b)		; 32 8C
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
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
	stx $8E60.w		; 8E 60 8E
	rts		; 60

	stx $8F60.w		; 8E 60 8F
	adc ($8D.b,X)		; 61 8D
	adc ($8E.b,X)		; 61 8E
	adc $10.b,S		; 63 10
	adc ($0D.b,S),Y		; 73 0D
	adc $DF40DF.l,X		; 7F DF 40 DF
	rti		; 40

	cmp $40DE40.l,X		; DF 40 DE 40
	dec $9D40.w,X		; DE 40 9D
	ora ($8E.b,X)		; 01 8E
	cop $92.b		; 02 92
	ora ($4E.b,S),Y		; 13 4E
	sta $4E9F4E.l,X		; 9F 4E 9F 4E
	sta $4F9F4E.l,X		; 9F 4E 9F 4F
	stz $9ECD.w,X		; 9E CD 9E
	sta $8C129C.l		; 8F 9C 12 8C
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $1C81.w,X		; 1E 81 1C
	sta ($20.b,X)		; 81 20
	sta $3C.b,S		; 83 3C
	sta $B4.b,S		; 83 B4
	ora $A0.b,S		; 03 A0
	ora [$51.b]		; 07 51
	asl $12.b		; 06 12
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $00C700.l,X		; DF 00 C7 00
	cmp $00CF00.l		; CF 00 CF 00
	sta $708F00.l		; 8F 00 8F 70
	sty $00ED.w		; 8C ED 00
	cpx #$00.b		; E0 00
	sep #$00		; E2 00
	jmp.w [$C000]		; DC 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	sta $009E00.l,X		; 9F 00 9E 00
	stz $9C00.w,X		; 9E 00 9C
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sbc ($08.b,S),Y		; F3 08
	sbc ($08.b,S),Y		; F3 08
	sbc [$08.b]		; E7 08
	dec $0D18.w		; CE 18 0D
	ora $1F08.w,X		; 1D 08 1F
	ora [$3A.b]		; 07 3A
	ora $000737.l		; 0F 37 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	ora [$17.b],Y		; 17 17
	inc A		; 1A
	inc A		; 1A
	ora [$17.b],Y		; 17 17
	ora ($7F.b,X)		; 01 7F
	ora $5F.b,S		; 03 5F
	phd		; 0B
	eor [$8F.b]		; 47 8F
	cmp [$0E.b]		; C7 0E
	cmp [$0D.b]		; C7 0D
	.db $82, $1F, $80		; 82 1F 80
	txs		; 9A
	cop $9C.b		; 02 9C
	ora $2380.w,X		; 1D 80 23
	bra  63.b		; 80 3F
	brk $2F.b		; 00 2F
	bra -97.b		; 80 9F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	cop $3F.b		; 02 3F
	ror $7E00.w,X		; 7E 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
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

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
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
	stx $00.b		; 86 00
	cmp #$A8.b		; C9 A8
	rti		; 40

	pha		; 48
	brk $30.b		; 00 30
	jmp $000060.l		; 5C 60 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $F7.b		; 00 F7
	php		; 08
	sbc $6800.w,Y		; F9 00 68
	brk $78.b		; 00 78
	brk $5E.b		; 00 5E
	brk $00.b		; 00 00
	.db $82, $00, $C1		; 82 00 C1
	ldy #$58.b		; A0 58
	cli		; 58
	brk $30.b		; 00 30
	cld		; D8
	rti		; 40

	sta $E008.w,Y		; 99 08 E0
	sty $8000.w		; 8C 00 80
	brk $F0.b		; 00 F0
	brk $F6.b		; 00 F6
	brk $79.b		; 00 79
	brk $78.b		; 00 78
	brk $FA.b		; 00 FA
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bvs   0.b		; 70 00
	bmi -128.b		; 30 80
	jsr $F840.w		; 20 40 F8
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $B0.b		; 00 B0
	brk $FC.b		; 00 FC
	ora $0B.b		; 05 0B
	asl A		; 0A
	ora [$15.b],Y		; 17 15
	rol $0F3C.w		; 2E 3C 0F
	pld		; 2B
	jmp $493B54.l		; 5C 54 3B 49
	lda [$90.b],Y		; B7 90
	jmp ($000B.w)		; 6C 0B 00
	ora [$00.b],Y		; 17 00
	rol $0F00.w		; 2E 00 0F
	brk $5C.b		; 00 5C
	brk $39.b		; 00 39
	ora ($B2.b,X)		; 01 B2
	cop $67.b		; 02 67
	tsb $39.b		; 04 39
	sbc [$E9.b],Y		; F7 E9
	adc ($CE.b,S),Y		; 73 CE
	sbc ($FD.b),Y		; F1 FD
	cop $FD.b		; 02 FD
	ora $FF.b,S		; 03 FF
	sta ($FE.b,X)		; 81 FE
	sbc ($4F.b,X)		; E1 4F
	beq -14.b		; F0 F2
	cop $74.b		; 02 74
	tsb $F1.b		; 04 F1
	ora ($00.b,X)		; 01 00
	brk $60.b		; 00 60
	rts		; 60

	bpl -112.b		; 10 90
	php		; 08
	pla		; 68
	pea $E3F4.w		; F4 F4 E3
	cpy $0CFB.w		; CC FB 0C
	rtl		; 6B

	bit $8835.w		; 2C 35 88
	sty $78.b		; 84 78
	sbc $BD82.w,X		; FD 82 BD
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	sta $30.b,S		; 83 30
	brk $F0.b		; 00 F0
	ora ($D0.b,X)		; 01 D0
	ora ($F8.b),Y		; 11 F8
	phb		; 8B
	bmi  51.b		; 30 33
	cop $01.b		; 02 01
	php		; 08
	ora #$1213.w		; 09 13 12
	bpl -128.b		; 10 80
	cpx #$F930.w		; E0 30 F9
	beq 104.b		; F0 68
	cpy #$70BA.w		; C0 BA 70
	and ($00.b)		; 32 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	and $EF00.w,X		; 3D 00 EF
	bra -17.b		; 80 EF
	brk $1F.b		; 00 1F
	jsr $F006.w		; 20 06 F0
	stx $40.b,Y		; 96 40
	mvp $CC,$30		; 44 30 CC
	brk $00.b		; 00 00
	rep #$00		; C2 00
	bcc   0.b		; 90 00
	bcc   0.b		; 90 00
	beq   0.b		; F0 00
	sed		; F8
	brk $E8.b		; 00 E8
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	cpx #$E000.w		; E0 00 E0
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
	brk $27.b		; 00 27
	cop $2F.b		; 02 2F
	ora [$3F.b]		; 07 3F
	ora #$102F.w		; 09 2F 10
	eor $007F00.l,X		; 5F 00 7F 00
	adc $9F0000.l,X		; 7F 00 00 9F
	brk $9A.b		; 00 9A
	brk $97.b		; 00 97
	brk $89.b		; 00 89
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
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
	ora $103F29.l,X		; 1F 29 3F 10
	adc $007F00.l,X		; 7F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	ror $7E00.w,X		; 7E 00 7E
	brk $09.b		; 00 09
	ora #$1000.w		; 09 00 10
	php		; 08
	plp		; 28
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	sta [$07.b],Y		; 97 07
	bit #$9009.w		; 89 09 90
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	and $003F09.l,X		; 3F 09 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $F87E00.l,X		; 7F 00 7E F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
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

	rti		; 40

	rti		; 40

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
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
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
	tsa		; 3B
	tas		; 1B
	plx		; FA
	cmp ($50.b,S),Y		; D3 50
	bmi -112.b		; 30 90
	ldy #$BC7C.w		; A0 7C BC
	rol $E03F.w,X		; 3E 3F E0
	sbc $D3EFE0.l,X		; FF E0 EF D3
	sbc $00FF40.l,X		; FF 40 FF 00
	pea $FC00.w		; F4 00 FC
	jsr $3AFF.w		; 20 FF 3A
	and $3BEBC8.l,X		; 3F C8 EB 3B
	ora ($53.b,S),Y		; 13 53
	bmi -112.b		; 30 90
	ldy #$806C.w		; A0 6C 80
	and $3C.b,S		; 23 3C
	tsa		; 3B
	rol $0000.w,X		; 3E 00 00
	php		; 08
	sbc $00FF03.l,X		; FF 03 FF 00
	sbc [$00.b],Y		; F7 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bit $3F00.w,X		; 3C 00 3F
	brk $00.b		; 00 00
	clc		; 18
	cli		; 58
	trb $0F3F.w		; 1C 3F 0F
	and $A09E07.l,X		; 3F 07 9E A0
	ora #$8061.w		; 09 61 80
	sta ($08.b,X)		; 81 08
	brk $0E.b		; 00 0E
	clc		; 18
	sbc $07FF0C.l,X		; FF 0C FF 07
	sbc $00BF00.l,X		; FF 00 BF 00
	adc $08BF00.l,X		; 7F 00 BF 08
	cmp [$0E.b]		; C7 0E
	ora ($E6.b,X)		; 01 E6
	clc		; 18
	ora $01.b		; 05 01
	brk $F9.b		; 00 F9
	sed		; F8
	inc $06FE.w,X		; FE FE 06
	inc $09.b,X		; F6 09
	lda [$08.b],Y		; B7 08
	adc $0F06.w,Y		; 79 06 0F
	php		; 08
	asl $F8.b		; 06 F8
	ora ($FF.b,X)		; 01 FF
	sed		; F8
	sbc $11FF06.l,X		; FF 06 FF 11
	dec $08.b,X		; D6 08
	cpy #$8006.w		; C0 06 80
	eor $FC.b,S		; 43 FC
	eor ($FE.b,X)		; 41 FE
	ora ($3E.b,X)		; 01 3E
	ora ($E0.b,X)		; 01 E0
	cpy #$DEDE.w		; C0 DE DE
	ora $51219F.l,X		; 1F 9F 21 51
	ldx $CCCC.w		; AE CC CC
	.db $42, $42		; 42 42
	brk $C0.b		; 00 C0
	brk $DE.b		; 00 DE
	cpy #$1EFF.w		; C0 FF 1E
	sbc $807F01.l,X		; FF 01 7F 80
	lda $441BE6.l,X		; BF E6 1B 44
	lda $B947.w,Y		; B9 47 B9
	inc $18.b		; E6 18
	phd		; 0B
	brk $04.b		; 00 04
	pea $FBF3.w		; F4 F3 FB
	xce		; FB
	ora $A31818.l		; 0F 18 18 A3
	lda ($82.b,X)		; A1 82
	bra   3.b		; 80 03
	brk $07.b		; 00 07
	beq   0.b		; F0 00
	xce		; FB
	beq  -1.b		; F0 FF
	phd		; 0B
	sbc $1A0002.l,X		; FF 02 00 1A
	bra -95.b		; 80 A1
	cop $03.b		; 02 03
	.db $82, $02, $C3		; 82 02 C3
	sta $87.b,S		; 83 87
	brk $40.b		; 00 40
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	cpy #$00BF.w		; C0 BF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $7E007E.l,X		; FF 7E 00 7E
	brk $7D.b		; 00 7D
	brk $65.b		; 00 65
	brk $5E.b		; 00 5E
	brk $BC.b		; 00 BC
	cop $BD.b		; 02 BD
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	.db $82, $00, $9A		; 82 00 9A
	brk $A3.b		; 00 A3
	brk $C3.b		; 00 C3
	brk $C3.b		; 00 C3
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	bra   0.b		; 80 00
	beq -16.b		; F0 F0
	sbc $7F0FFF.l,X		; FF FF 0F 7F
	beq  -9.b		; F0 F7
	cmp $0D3F.w,X		; DD 3F 0D
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	ora $FF70FF.l		; 0F FF 70 FF
	cmp $FD.b,X		; D5 FD
	ora $FFDF.w		; 0D DF FF
	rol $00FE.w,X		; 3E FE 00
	sbc ($00.b,S),Y		; F3 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	and $007F00.l,X		; 3F 00 7F 00
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	dey		; 88
	inc $6DED.w		; EE ED 6D
	sbc ($91.b),Y		; F1 91
	inc $FC.b,X		; F6 FC
	jmp.w [$C10C]		; DC 0C C1
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	sbc $68FF00.l,X		; FF 00 FF 68
	sbc $D4FF81.l,X		; FF 81 FF D4
	sbc $EC0C.w,X		; FD 0C EC
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	.db $62, $80, $C9		; 62 80 C9
	sbc $0D2D.w		; ED 2D 0D
	cpy $DD40.w		; CC 40 DD
	cmp $0C.b,X		; D5 0C
	tsb $8000.w		; 0C 00 80
	brk $EC.b		; 00 EC
	brk $FD.b		; 00 FD
	bra  -1.b		; 80 FF
	ora #$00FF.w		; 09 FF 00
	cmp $00DD00.l		; CF 00 DD 00
	tsb $0001.w		; 0C 01 00
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	phd		; 0B
	asl $1D.b		; 06 1D
	asl $3B.b		; 06 3B
	tsb $5A2D.w		; 0C 2D 5A
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $5A00.w		; 0C 00 5A
	brk $30.b		; 00 30
	brk $04.b		; 00 04
	brk $43.b		; 00 43
	brk $21.b		; 00 21
	brk $31.b		; 00 31
	brk $11.b		; 00 11
	brk $21.b		; 00 21
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	adc $007E00.l,X		; 7F 00 7E 00
	ror $7E00.w,X		; 7E 00 7E
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
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
	brk $F8.b		; 00 F8
	brk $BC.b		; 00 BC
	brk $DE.b		; 00 DE
	brk $CE.b		; 00 CE
	brk $EE.b		; 00 EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8C00.w		; C0 00 8C
	brk $B6.b		; 00 B6
	iny		; C8
	phx		; DA
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $EC.b		; 00 EC
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bra -55.b		; 80 C9
	cpx $2D2C.w		; EC 2C 2D
	sta $000181.l		; 8F 81 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $EC.b		; 00 EC
	bra  -2.b		; 80 FE
	php		; 08
	sbc $00ED00.l,X		; FF 00 ED 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
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
	brk $DF.b		; 00 DF
	jsr $A45B.w		; 20 5B A4
	pld		; 2B
	pei ($08.b)		; D4 08
	adc [$08.b],Y		; 77 08
	and [$04.b],Y		; 37 04
	tas		; 1B
	brk $1F.b		; 00 1F
	asl $09.b		; 06 09
	and $A30D.w		; 2D 0D A3
	ora $D3.b,S		; 03 D3
	ora $70.b,S		; 03 70
	brk $31.b		; 00 31
	ora ($19.b,X)		; 01 19
	ora ($1D.b,X)		; 01 1D
	ora ($09.b,X)		; 01 09
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	cop $01.b		; 02 01
	inc $E621.w,X		; FE 21 E6
	adc $FDC6.w,X		; 7D C6 FD
	sta [$79.b]		; 87 79
	ora $04.b,S		; 03 04
	tsb $07.b		; 04 07
	ora [$FC.b]		; 07 FC
	jsr ($0000.w,X)		; FC 00 00
	jmp.w [$B8C4]		; DC C4 B8
	sta ($78.b,X)		; 81 78
	ora ($FC.b,X)		; 01 FC
	ora ($FD.b,X)		; 01 FD
	ora ($FE.b),Y		; 11 FE
	jsr $E02F.w		; 20 2F E0
	sta [$70.b],Y		; 97 70
	wai		; CB
	sec		; 38
	sbc $1C.b		; E5 1C
	sbc ($8F.b),Y		; F1 8F
	sed		; F8
	cmp [$2E.b]		; C7 2E
	jsr $C0DF.w		; 20 DF C0
	eor $202F40.l,X		; 5F 40 2F 20
	sta [$90.b],Y		; 97 90
	phk		; 4B
	pha		; 48
	jsl $D111A2.l		; 22 A2 11 D1
	stz $B8.b,X		; 74 B8
	plx		; FA
	sbc $FCBE.w,X		; FD BE FC
	eor $8E7E.w,X		; 5D 7E 8E
	and $CF2FF7.l,X		; 3F F7 2F CF
	ora ($F7.b,S),Y		; 13 F7
	sta ($00.b),Y		; 91 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $C03F80.l,X		; 3F 80 3F C0
	ora $E01FC0.l,X		; 1F C0 1F E0
	ora $000F60.l		; 0F 60 0F 00
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
	ora ($03.b,X)		; 01 03
	php		; 08
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora [$1C.b]		; 07 1C
	phd		; 0B
	sec		; 38
	asl $70.b,X		; 16 70
	cpx $B821.w		; EC 21 B8
	eor $0F.b,S		; 43 0F
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $011F20.l		; 2F 20 1F 01
	asl $C2.b		; 06 C2
	sbc $4EDF5E.l		; EF 5E DF 4E
	cmp $4E3D4E.l,X		; DF 4E 3D 4E
	and $1A5E.w		; 2D 5E 1A
	jsr ($F835.w,X)		; FC 35 F8
	asl A		; 0A
	ora ($80.b),Y		; 11 80
	and $803F80.l,X		; 3F 80 3F 80
	and $C07FC0.l,X		; 3F C0 7F C0
	adc $00BF80.l,X		; 7F 80 BF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	rts		; 60

	bcc  96.b		; 90 60
	plp		; 28
	cpy #$8050.w		; C0 50 80
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	and $2018.w,Y		; 39 18 20
	php		; 08
	bpl  16.b		; 10 10
	tsb $20.b		; 04 20
	cli		; 58
	bit $63E8.w		; 2C E8 63
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	clc		; 18
	and $2800.w,Y		; 39 00 28
	bpl  16.b		; 10 10
	brk $2C.b		; 00 2C
	brk $7F.b		; 00 7F
	stz $EE.b		; 64 EE
	brk $00.b		; 00 00
	clc		; 18
	brk $86.b		; 00 86
	brk $C3.b		; 00 C3
	ldx #$4141.w		; A2 41 41
	cop $B2.b		; 02 B2
	eor $9DE1.w,Y		; 59 E1 9D
	dey		; 88
	brk $08.b		; 00 08
	brk $9E.b		; 00 9E
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $65.b		; 00 65
	brk $FB.b		; 00 FB
	brk $DF.b		; 00 DF
	cpx #$00FF.w		; E0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $68.b		; 00 68
	bra  36.b		; 80 24
	bne -122.b		; D0 86
	beq -94.b		; F0 A2
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	and $D01F80.l,X		; 3F 80 1F D0
	ora $D00FF0.l		; 0F F0 0F D0
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	phd		; 0B
	ora $0F.b,X		; 15 0F
	ora ($1D.b,S),Y		; 13 1D
	and [$3C.b]		; 27 3C
	cmp [$D8.b]		; C7 D8
	and [$00.b]		; 27 00
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $15.b		; 00 15
	brk $13.b		; 00 13
	brk $27.b		; 00 27
	brk $C7.b		; 00 C7
	brk $27.b		; 00 27
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $DC.b		; 00 DC
	jsr $FC03.w		; 20 03 FC
	lda ($FF.b)		; B2 FF
	adc ($FF.b),Y		; 71 FF
	adc $BB.b		; 65 BB
	jmp $00B3.w		; 4C B3 00
	brk $00.b		; 00 00
	asl $0320.w		; 0E 20 03
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $BB.b		; 00 BB
	brk $B3.b		; 00 B3
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $0D.b		; 00 0D
	.db $82, $05, $1B		; 82 05 1B
	asl A		; 0A
	cmp [$54.b],Y		; D7 54
	and $005FA1.l		; 2F A1 5F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F002.w		; C0 02 F0
	phd		; 0B
	bcc  23.b		; 90 17
	cpx #$C02F.w		; E0 2F C0
	eor $090680.l,X		; 5F 80 06 09
	tas		; 1B
	and [$6E.b]		; 27 6E
	sta $E0FE79.l,X		; 9F 79 FE E0
	sbc $98FE41.l,X		; FF 41 FE 98
	sbc [$32.b]		; E7 32
	cmp $270009.l		; CF 09 00 27
	brk $9F.b		; 00 9F
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	brk $C5.b		; 00 C5
	ora $06.b		; 05 06
	ora #$0906.w		; 09 06 09
	tsb $09.b		; 04 09
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	ora $FD.b,S		; 03 FD
	sta $3E.b,S		; 83 3E
	sta $3E.b,S		; 83 3E
	sta $7C.b,S		; 83 7C
	cmp ($3C.b,X)		; C1 3C
	cmp ($1E.b,X)		; C1 1E
	eor ($3E.b,X)		; 41 3E
	adc ($FE.b,X)		; 61 FE
	ora $7E.b,S		; 03 7E
	ora $FC.b,S		; 03 FC
	sta ($7C.b,X)		; 81 7C
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	and $011F01.l,X		; 3F 01 1F 01
	jsr ($FFE3.w,X)		; FC E3 FF
	beq  -4.b		; F0 FC
	sbc ($FA.b,S),Y		; F3 FA
	sbc ($F1.b),Y		; F1 F1
	plx		; FA
	beq  -5.b		; F0 FB
	jmp ($FCFB.w,X)		; 7C FB FC
	tda		; 7B
	php		; 08
	inx		; E8
	tsb $F4.b		; 04 F4
	ora $FB.b,S		; 03 FB
	ora ($FD.b,X)		; 01 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	adc $C8.b,S		; 63 C8
	and $16C8.w,Y		; 39 C8 16
	sta ($0C.b,X)		; 81 0C
	phd		; 0B
	cop $89.b		; 02 89
	bra 112.b		; 80 70
	rts		; 60

	bra   0.b		; 80 00
	cpy #$87B0.w		; C0 B0 87
	bvs  71.b		; 70 47
	sed		; F8
	sta [$F0.b]		; 87 F0
	ora [$F0.b]		; 07 F0
	sta [$00.b]		; 87 00
	ora $00.b,S		; 03 00
	cpy #$E000.w		; C0 00 E0
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $030000.l,X		; 7F 00 00 03
	ora [$07.b]		; 07 07
	ora $0C0C0F.l		; 0F 0F 0C 0C
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $6020.w		; 20 20 60
	rts		; 60

	adc $FCF7.w,Y		; 79 F7 FC
	bpl -24.b		; 10 E8
	bpl -16.b		; 10 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $81.b		; 00 81
	brk $03.b		; 00 03
	brk $75.b		; 00 75
	sbc $10.b,X		; F5 10
	ora ($80.b,S),Y		; 13 80
	sta [$00.b],Y		; 97 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $007E00.l,X		; 3F 00 7E 00
	jsr ($C0D7.w,X)		; FC D7 C0
	eor $421F4E.l		; 4F 4E 1F 42
	adc $007C00.l,X		; 7F 00 7C 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	sed		; F8
	rti		; 40

	inc $E200.w,X		; FE 00 E2
	brk $C2.b		; 00 C2
	brk $82.b		; 00 82
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
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $511E.w		; 2C 1E 51
	eor ($20.b,X)		; 41 20
	jsr $6151.w		; 20 51 61
	bit $3E3C.w,X		; 3C 3C 3E
	and $000000.l,X		; 3F 00 00 00
	brk $0D.b		; 00 0D
	and $005140.l,X		; 3F 40 51 00
	jsr $7D41.w		; 20 41 7D
	jsr $3A3F.w		; 20 3F 3A
	and $000000.l,X		; 3F 00 00 00
	brk $25.b		; 00 25
	sec		; 38
	tas		; 1B
	tas		; 1B
	tsx		; BA
	sta ($50.b,S),Y		; 93 50
	and ($91.b,S),Y		; 33 91
	ldx #$BC7B.w		; A2 7B BC
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cpx #$D3EF.w		; E0 EF D3
	cmp $03BF00.l,X		; DF 00 BF 03
	pea $FC02.w		; F4 02 FC
	bit $05F8.w		; 2C F8 05
	brk $05.b		; 00 05
	brk $24.b		; 00 24
	bne  96.b		; D0 60
	bcc -64.b		; 90 C0
	jsr $60C0.w		; 20 C0 60
	sbc ($E2.b),Y		; F1 E2
	bne -125.b		; D0 83
	adc ($E4.b),Y		; 71 E4
	rts		; 60

	ora $D0.b,S		; 03 D0
	ora $200F90.l		; 0F 90 0F 20
	ora $007F00.l,X		; 1F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FF00.w,X		; FE 00 FF
	rol $1E00.w		; 2E 00 1E
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	dec A		; 3A
	cmp $F9.b		; C5 F9
	sty $BB.b,X		; 94 BB
	adc $6C.b,X		; 75 6C
	sbc ($BC.b,S),Y		; F3 BC
	cmp ($FF.b,X)		; C1 FF
	brk $FE.b		; 00 FE
	ora ($7F.b,X)		; 01 7F
	bra -59.b		; 80 C5
	brk $96.b		; 00 96
	brk $76.b		; 00 76
	brk $F1.b		; 00 F1
	ora ($DA.b,X)		; 01 DA
	inc A		; 1A
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$29.b],Y		; D7 29
	eor ($4D.b)		; 52 4D
	and $0C.b,S		; 23 0C
	sbc ($E6.b),Y		; F1 E6
	sbc $3586.w,X		; FD 86 35
	stx $9B.b,Y		; 96 9B
	mvp $B8,$47		; 44 47 B8
	ora ($00.b,X)		; 01 00
	sbc #$D868.w		; E9 68 D8
	clc		; 18
	clc		; 18
	brk $78.b		; 00 78
	brk $E8.b		; 00 E8
	dey		; 88
	jmp ($1A45.w,X)		; 7C 45 1A
	inc A		; 1A
	clv		; B8
	and ($3E.b,S),Y		; 33 3E
	sei		; 78
	trb $8F7F.w		; 1C 7F 8F
	and $4310C3.l,X		; 3F C3 10 43
	ldy #$B863.w		; A0 63 B8
	bcs 124.b		; B0 7C
	and ($F4.b,S),Y		; 33 F4
	clc		; 18
	sbc $FF0C.w,Y		; F9 0C FF
	ora $7F.b,S		; 03 7F
	brk $3F.b		; 00 3F
	ldy #$B81F.w		; A0 1F B8
	ora [$7C.b]		; 07 7C
	ora $E5.b,S		; 03 E5
	ora $511C.w,X		; 1D 1C 51
	brk $40.b		; 00 40
	rti		; 40

	eor $FF9F3F.l,X		; 5F 3F 9F FF
	brk $6F.b		; 00 6F
	bpl -33.b		; 10 DF
	jsr $080A.w		; 20 0A 08
	ora $FF00A1.l		; 0F A1 00 FF
	rti		; 40

	sbc $20FF3F.l,X		; FF 3F FF 20
	lda $208010.l,X		; BF 10 80 20
	brk $FB.b		; 00 FB
	jmp ($7DF2.w,X)		; 7C F2 7D
.ACCU 8
.INDEX 8
	sep #$7D		; E2 7D
	inc $79.b		; E6 79
	dec $79.b		; C6 79
	dec $79.b		; C6 79
	dec $69.b,X		; D6 69
	dec $69.b,X		; D6 69
	jmp ($7D00.w,X)		; 7C 00 7D
	brk $7D.b		; 00 7D
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $69.b		; 00 69
	brk $69.b		; 00 69
	brk $1F.b		; 00 1F
	cpx $58.b		; E4 58
	sbc [$D0.b]		; E7 D0
	sbc $9DEED1.l		; EF D1 EE 9D
.ACCU 8
.INDEX 8
	sep #$B3		; E2 B3
	cpy $9867.w		; CC 67 98
	sbc $00E410.l		; EF 10 E4 00
	sbc [$07.b]		; E7 07
	inx		; E8
	php		; 08
	cpx #$00.b		; E0 00
	sbc ($01.b,X)		; E1 01
	dex		; CA
	asl A		; 0A
	sty $14.b,X		; 94 14
	ora #$09.b		; 09 09
	lda $807FC0.l,X		; BF C0 7F 80
	lda [$18.b]		; A7 18
	ora $04.b,S		; 03 04
	brk $F9.b		; 00 F9
	sed		; F8
	inc $06FE.w,X		; FE FE 06
	ror $0001.w,X		; 7E 01 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	cli		; 58
	tsb $FC.b		; 04 FC
	ora ($FF.b,X)		; 01 FF
	sed		; F8
	sbc $00FF06.l,X		; FF 06 FF 00
	dec $3F.b		; C6 3F
	cpy #$9F.b		; C0 9F
	rts		; 60

	txy		; 9B
	stz $B2.b		; 64 B2
	eor $1C23.w		; 4D 23 1C
	jsr $C0C1.w		; 20 C1 C0
	dec $1FDE.w,X		; DE DE 1F
	sta ($81.b,X)		; 81 81
	rts		; 60

	rts		; 60

	stz $64.b		; 64 64
	ora #$08.b		; 09 08
	bpl -48.b		; 10 D0
	ora ($DE.b,X)		; 01 DE
	cpy #$FF.b		; C0 FF
	asl $00FF.w,X		; 1E FF 00
	brk $83.b		; 00 83
	brk $11.b		; 00 11
	bra -96.b		; 80 A0
	rti		; 40

	cpy #$30.b		; C0 30
	rts		; 60

	stz $000F.w,X		; 9E 0F 00
	tsb $F0.b		; 04 F0
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	bra 126.b		; 80 7E
	rti		; 40

	and $9E0F30.l,X		; 3F 30 0F 9E
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	xce		; FB
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $06.b		; 00 06
	bpl -32.b		; 10 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$10.b		; C0 10
	inx		; E8
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sta $80.b,S		; 83 80
	sta $00.b,S		; 83 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $000000.l,X		; 3F 00 00 00
	brk $42.b		; 00 42
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $F0.b		; 00 F0
	beq  -2.b		; F0 FE
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $C0.b		; 02 C0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	bvc -128.b		; 50 80
	jsr $08C0.w		; 20 C0 08
	cpx #$10.b		; E0 10
	rts		; 60

	sty $0070.w		; 8C 70 00
	clv		; B8
	dec $98.b		; C6 98
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $05.b		; 02 05
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	bpl  16.b		; 10 10
	lsr A		; 4A
	lsr A		; 4A
	eor #$49.b		; 49 49
	mvp $44,$44		; 44 44 44
	mvp $40,$40		; 44 40 40
	.db $82, $82, $82		; 82 82 82
	.db $82, $D6, $49		; 82 D6 49
	phd		; 0B
	mvn $54,$0B		; 54 0B 54
	ora $4A.b		; 05 4A
	ora $4A.b		; 05 4A
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	ora ($02.b,X)		; 01 02
	eor #$00.b		; 49 00
	mvn $54,$00		; 54 00 54
	brk $4A.b		; 00 4A
	brk $4A.b		; 00 4A
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $5F.b		; 00 5F
	ldy #$7F.b		; A0 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra -86.b		; 80 AA
	asl A		; 0A
	sta ($12.b)		; 92 12
	bcc  16.b		; 90 10
	ldy $24.b		; A4 24
	ldy $24.b		; A4 24
	jsr $1820.w		; 20 20 18
	clc		; 18
	dey		; 88
	php		; 08
	rts		; 60

	ora $B31EA1.l,X		; 1F A1 1E B3
	ora $132F.w		; 0D 2F 13
	stx $C41F.w		; 8E 1F C4
	rol $F8.b		; 26 F8
	ora $06FF.w,Y		; 19 FF 06
	bpl -48.b		; 10 D0
	bpl  80.b		; 10 50
	ora #$69.b		; 09 69
	cop $F3.b		; 02 F3
	tsb $7F.b		; 04 7F
	bra -65.b		; 80 BF
	dey		; 88
	sta $DF0604.l,X		; 9F 04 06 DF
	and ($D1.b,X)		; 21 D1
	ldx $BAF7.w		; AE F7 BA
	adc $337FB3.l,X		; 7F B3 7F 33
	adc $00FF81.l,X		; 7F 81 FF 00
	sbc $1F0100.l,X		; FF 00 01 1F
	brk $BF.b		; 00 BF
	brk $B3.b		; 00 B3
	and ($B3.b)		; 32 B3
	and ($B3.b,S),Y		; 33 B3
	ora $85.b		; 05 85
	stz $64.b		; 64 64
	clc		; 18
	clc		; 18
	sbc ($FB.b,S),Y		; F3 FB
	xce		; FB
	ora $ED49AE.l		; 0F AE 49 ED
	adc $60E0.w		; 6D E0 60
	adc $FFF07F.l,X		; 7F 7F F0 FF
	asl $F0F0.w		; 0E F0 F0
	sbc $00FF0B.l,X		; FF 0B FF 00
	adc $607F08.l,X		; 7F 08 7F 60
	adc $F0FF7F.l,X		; 7F 7F FF F0
	sbc $00FF00.l,X		; FF 00 FF 00
	eor ($00.b,X)		; 41 00
	.db $62, $C8, $59		; 62 C8 59
	ldy $3CBC.w		; AC BC 3C
	jmp $82E310.l		; 5C 10 E3 82
	tsb $4039.w		; 0C 39 40
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	pha		; 48
	sbc $1CFF2C.l,X		; FF 2C FF 1C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0FFF00.l,X		; FF 00 FF 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2021.w		; 20 21 20
	and ($81.b,X)		; 21 81
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	inc $5F1F.w,X		; FE 1F 5F
	bra  61.b		; 80 3D
	jsr $00EE.w		; 20 EE 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00FF.w,X		; 1E FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ldy $FFBC.w,X		; BC BC FF
	sbc $301303.l,X		; FF 03 13 30
	adc $77.b,X		; 75 77
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -1.b		; 80 FF
	bit $03FF.w,X		; 3C FF 03
	adc $753310.l,X		; 7F 10 33 75
	adc [$03.b],Y		; 77 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora $FD.b,S		; 03 FD
	ora $86.b		; 05 86
	stx $61.b		; 86 61
	adc ($19.b,X)		; 61 19
	ora $8585.w,Y		; 19 85 85
	.db $42, $42		; 42 42
	rol $26.b		; 26 26
	trb $14.b		; 14 14
	asl A		; 0A
	php		; 08
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	bit #$00.b		; 89 00
	ora $88.b,X		; 15 88
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	asl $FF00.w,X		; 1E 00 FF
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ora $000F00.l		; 0F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	ror $7C00.w,X		; 7E 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
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
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	and $40.b,S		; 23 40
	eor $40.b,S		; 43 40
	eor $40.b,S		; 43 40
	eor $00.b,S		; 43 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
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
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	cpy $E2.b		; C4 E2
	xce		; FB
	xce		; FB
	tas		; 1B
	jsr ($0EE4.w,X)		; FC E4 0E
	asl $0000.w		; 0E 00 00
	brk $70.b		; 00 70
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$FF.b		; C0 FF
	inc A		; 1A
	sbc $0CFFE4.l,X		; FF E4 FF 0C
	asl $0000.w		; 0E 00 00
	bcc   0.b		; 90 00
	txa		; 8A
	sty $645C.w		; 8C 5C 64
	adc ($7B.b)		; 72 7B
	phb		; 8B
	phb		; 8B
	adc $60.b,S		; 63 60
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $EC.b		; 00 EC
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	rts		; 60

	sbc $00FF02.l,X		; FF 02 FF 00
	adc $00.b,S		; 63 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $62.b		; 00 62
	bra  72.b		; 80 48
	jmp ($0C2D.w)		; 6C 2D 0C
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx $FF00.w		; EC 00 FF
	php		; 08
	cmp $000C00.l,X		; DF 00 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	rti		; 40

	bne  96.b		; D0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra -52.b		; 80 CC
	sbc $C4.b,S		; E3 C4
	bvc -26.b		; 50 E6
	and $1EC2.w		; 2D C2 1E
	cpy #$2F.b		; C0 2F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $DE.b		; 00 DE
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF5FF.l,X		; FF FF F5 FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFF7F7.l,X		; FF F7 F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00C002.l,X		; FF 02 C0 00
	brk $80.b		; 00 80
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
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra  66.b		; 80 42
	trb $00.b		; 14 00
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $82.b		; 00 82
	php		; 08
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
	brk $08.b		; 00 08
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
	brk $08.b		; 00 08
	jsr $0030.w		; 20 30 00
	brk $10.b		; 00 10
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
	brk $10.b		; 00 10
	rti		; 40

	jsl $288130.l		; 22 30 81 28
	bmi   0.b		; 30 00
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $40.b		; 00 40
	rti		; 40

	php		; 08
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $14.b		; 00 14
	cop $10.b		; 02 10
	rti		; 40

	trb $05.b		; 14 05
	php		; 08
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
	tsb $48.b		; 04 48
	brk $04.b		; 00 04
	brk $28.b		; 00 28
	bmi  66.b		; 30 42
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $10.b		; 00 10
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bpl  64.b		; 10 40
	bpl  74.b		; 10 4A
	jsr $0004.w		; 20 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0820.w		; 20 20 08
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bvc   0.b		; 50 00
	tsb $80.b		; 04 80
	jsl $002A40.l		; 22 40 2A 00
	bpl   0.b		; 10 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	sta ($80.b,X)		; 81 80
	php		; 08
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	clc		; 18
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	tax		; AA
	tsb $8000.w		; 0C 00 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
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
	brk $48.b		; 00 48
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
	.db $00		; Opcode 00 overrunning bank boundry at 1AFFFF. Skipping.
.ENDS
