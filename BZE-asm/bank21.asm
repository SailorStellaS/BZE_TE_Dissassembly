.BANK 21 SLOT 0
.ORG $0000

.SECTION "Bank21" FORCE

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
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
	brk $07.b		; 00 07
	rol $00FE.w,X		; 3E FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $0E.b,S		; 03 0E
	inc $000F.w,X		; FE 0F 00
	ora $0C.b		; 05 0C
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	asl $30.b		; 06 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($70.b),Y		; 71 70
	sbc $000300.l,X		; FF 00 03 00
	ora $000708.l		; 0F 08 07 00
	ora $82B010.l,X		; 1F 10 B0 82
	stz $06.b,X		; 74 06
	inx		; E8
	tsb $18D7.w		; 0C D7 18
	ldy #$30.b		; A0 30
	dec $71.b		; C6 71
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $A1.b		; 00 A1
	jsr $40C0.w		; 20 C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
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
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$00.b		; E0 00
	sbc $000000.l,X		; FF 00 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	ora $0B0000.l		; 0F 00 00 0B
	clc		; 18
	adc [$F0.b],Y		; 77 F0
	ora [$10.b]		; 07 10
	ora [$F0.b]		; 07 F0
	ora $00FF30.l		; 0F 30 FF 00
	sbc $301EE0.l		; EF E0 1E 30
	ora [$00.b]		; 07 00
	sta $000F80.l		; 8F 80 0F 00
	and $101F30.l,X		; 3F 30 1F 10
	sbc $001F00.l,X		; FF 00 1F 00
	ora $18D000.l		; 0F 00 D0 18
	cpy #$1F.b		; C0 1F
	ldy #$30.b		; A0 30
	bra  48.b		; 80 30
	bra  32.b		; 80 20
	rti		; 40

	rts		; 60

	ora $60.b,S		; 03 60
	clv		; B8
	cmp [$E0.b]		; C7 E0
	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	asl $00FE.w,X		; 1E FE 00
	ora ($00.b,X)		; 01 00
	ora $0F.b,S		; 03 0F
	sbc $FA0600.l,X		; FF 00 06 FA
	asl $08.b		; 06 08
	pea $0000.w		; F4 00 00
	sbc ($E0.b,X)		; E1 E0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bmi  48.b		; 30 30
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	sbc [$04.b],Y		; F7 04
	and ($E1.b,X)		; 21 E1
	cop $03.b		; 02 03
	tsb $87.b		; 04 87
	dey		; 88
	stx $1C10.w		; 8E 10 1C
	jsr $4038.w		; 20 38 40
	bvs -128.b		; 70 80
	cpx #$5E.b		; E0 5E
	rti		; 40

	sbc $FA01.w,X		; FD 01 FA
	.db $82, $74, $04		; 82 74 04
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	and $0000FF.l,X		; 3F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($0003.w,X)		; 7C 03 00
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
	brk $1F.b		; 00 1F
	sbc $000000.l,X		; FF 00 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($7F.b,X)		; 01 7F
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $FF.b,S		; 03 FF
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F0E.w		; 0E 0E 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $0000.w,X		; 3C 00 00
	and $0AF1.w,X		; 3D F1 0A
	adc $9C.b,S		; 63 9C
	stx $F0.b		; 86 F0
	asl $68.b		; 06 68
	cpy $9850.w		; CC 50 98
	jsr $4030.w		; 20 30 40
	rts		; 60

	dec $3CC0.w		; CE C0 3C
	jsr $0078.w		; 20 78 00
	jsr ($3004.w,X)		; FC 04 30
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	sta $000003.l		; 8F 03 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $F80000.l		; 0F 00 00 F8
	sed		; F8
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora $7F.b,S		; 03 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	trb $0E1C.w		; 1C 1C 0E
	cpx #$0E.b		; E0 0E
	jsr $E13D.w		; 20 3D E1
	bit $7E61.w,X		; 3C 61 7E
	ora $D8.b,S		; 03 D8
	cmp $48.b,S		; C3 48
	cmp $84.b,S		; C3 84
	stx $7F.b		; 86 7F
	rts		; 60

	ora $C0DE00.l,X		; 1F 00 DE C0
	ora $00FC01.l,X		; 1F 01 FC 00
	rol $3D02.w,X		; 3E 02 3D
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra  56.b		; 80 38
	sta [$1F.b]		; 87 1F
	sbc $050003.l,X		; FF 03 00 05
	cop $7F.b		; 02 7F
	inc $070A.w,X		; FE 0A 07
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc $000000.l,X		; 7F 00 00 00
	cop $00.b		; 02 00
	inc $0700.w,X		; FE 00 07
	brk $2D.b		; 00 2D
	ora $1B6E.w,Y		; 19 6E 1B
	rol $EDED.w,X		; 3E ED ED
	ldx $F6.b		; A6 F6
	bcc -36.b		; 90 DC
	tay		; A8
	tay		; A8
	bcc -80.b		; 90 B0
	brk $1A.b		; 00 1A
	brk $19.b		; 00 19
	ora ($EC.b,X)		; 01 EC
	brk $A6.b		; 00 A6
	bpl -112.b		; 10 90
	php		; 08
	tay		; A8
	brk $90.b		; 00 90
	rti		; 40

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $01.b		; 00 01
	tsb $7C.b		; 04 7C
	ora [$00.b]		; 07 00
	brk $05.b		; 00 05
	ora $FE1E00.l		; 0F 00 1E FE
	tsb $0D.b		; 04 0D
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	tas		; 1B
	tas		; 1B
	sbc $0303FF.l,X		; FF FF 03 03
	sbc $E1E1FF.l,X		; FF FF E1 E1
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	.db $82, $83, $30		; 82 83 30
	brk $F9.b		; 00 F9
	brk $B2.b		; 00 B2
	brk $20.b		; 00 20
	ora $00.b		; 05 00
	asl A		; 0A
	lsr A		; 4A
	eor $7CFD9B.l,X		; 5F 9B FD 7C
	jmp ($FFFF.w,X)		; 7C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5F5FF.l,X		; FF FF F5 F5
	ldy #$A0.b		; A0 A0
	tsb $0008.w		; 0C 08 00
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
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	sbc $000700.l,X		; FF 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	jsr ($0000.w,X)		; FC 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00FE.w,X		; 1E FE 00
	brk $03.b		; 00 03
	sbc $008083.l,X		; FF 83 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	ora ($00.b,X)		; 01 00
	brk $1C.b		; 00 1C
	trb $FE3E.w		; 1C 3E FE
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $07F87F.l,X		; 7F 7F F8 07
	ora [$0F.b]		; 07 0F
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $FF0000.l,X		; 7F 00 00 FF
	asl $01.b		; 06 01
	brk $01.b		; 00 01
	bit $04FD.w,X		; 3C FD 04
	ora $790701.l		; 0F 01 07 79
	ora [$FD.b]		; 07 FD
	sbc ($FE.b,S),Y		; F3 FE
	plx		; FA
	sbc $FEB8.w,X		; FD B8 FE
	inc $C2C2.w,X		; FE C2 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	sbc ($00.b),Y		; F1 00
	cmp $BBE0.w,Y		; D9 E0 BB
	cpx #$D2.b		; E0 D2
	ora $3C01F9.l		; 0F F9 01 3C
	sta [$98.b]		; 87 98
	dec $C4.b		; C6 C4
	inc $00.b,X		; F6 00
	jsr ($DBB7.w,X)		; FC B7 DB
	ror $3B.b,X		; 76 3B
	pea $FE08.w		; F4 08 FE
	brk $FA.b		; 00 FA
	.db $82, $7C, $44		; 82 7C 44
	sec		; 38
	bmi -64.b		; 30 C0
	rti		; 40

	txy		; 9B
	brk $BA.b		; 00 BA
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	clc		; 18
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$78.b		; C0 78
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	and $000007.l,X		; 3F 07 00 00
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	eor $71.b,S		; 43 71
	beq  39.b		; F0 27
	cmp $D2.b,X		; D5 D2
	bit $0E.b,X		; 34 0E
	asl A		; 0A
	stz $E8.b		; 64 E8
	bit $1914.w,X		; 3C 14 19
	cpx #$43.b		; E0 43
	brk $F0.b		; 00 F0
	ora $3408D5.l		; 0F D5 08 34
	ora #$F10A.w		; 09 0A F1
	inx		; E8
	ora ($14.b,S),Y		; 13 14
	ora $00.b,S		; 03 00
	asl $8F.b		; 06 8F
	ora $C7.b,S		; 03 C7
	and $3B121B.l,X		; 3F 1B 12 3B
	rol A		; 2A
	and ($22.b,S),Y		; 33 22
	rol $21.b,X		; 36 21
	adc ($52.b,S),Y		; 73 52
	sbc ($0F.b),Y		; F1 0F
	cop $73.b		; 02 73
	ora ($FF.b,X)		; 01 FF
	ora ($E4.b)		; 12 E4
	rol A		; 2A
	cpy $22.b		; C4 22
	cpy $C821.w		; CC 21 C8
	eor ($8C.b)		; 52 8C
	ora $40B800.l		; 0F 00 B8 40
	inc $18.b		; E6 18
	adc $37A6.w,Y		; 79 A6 37
	cld		; D8
	adc ($DE.b,X)		; 61 DE
	eor ($EC.b)		; 52 EC
	stz $E8.b,X		; 74 E8
	cpx $40F4.w		; EC F4 40
	brk $18.b		; 00 18
	brk $A6.b		; 00 A6
	brk $D8.b		; 00 D8
	brk $DE.b		; 00 DE
	brk $ED.b		; 00 ED
	brk $EB.b		; 00 EB
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	cpx #$FF.b		; E0 FF
	tsb $000F.w		; 0C 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$18.b		; C0 18
	clc		; 18
	sbc ($03.b,S),Y		; F3 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $FC.b		; 00 FC
	clc		; 18
	ora $4CF908.l,X		; 1F 08 F9 4C
	cmp ($30.b,X)		; C1 30
	ora $88.b,S		; 03 88
	asl $78C0.w		; 0E C0 78
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	cpx $04.b		; E4 04
	asl $10.b,X		; 16 10
	ldx $FE80.w,Y		; BE 80 FE
	cop $70.b		; 02 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	and $000000.l,X		; 3F 00 00 00
	brk $0E.b		; 00 0E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	ora [$00.b]		; 07 00
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	sbc $001FE1.l,X		; FF E1 1F 00
	brk $3C.b		; 00 3C
	jsr ($000F.w,X)		; FC 0F 00
	ora ($00.b,X)		; 01 00
	jmp ($00FC.w,X)		; 7C FC 00
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	ora $E0.b,S		; 03 E0
	ora ($DE.b,S),Y		; 13 DE
	cpx $FE.b		; E4 FE
	sed		; F8
	plx		; FA
	trb $0814.w		; 1C 14 08
	cpx $B820.w		; EC 20 B8
	rti		; 40

	bvs  32.b		; 70 20
	asl $E002.w		; 0E 02 E0
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	cpx #$20.b		; E0 20
	bpl  64.b		; 10 40
	brk $20.b		; 00 20
	bra -16.b		; 80 F0
	ldy #$E0.b		; A0 E0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	ora $1B070B.l,X		; 1F 0B 07 1B
	ora [$F5.b]		; 07 F5
	cop $07.b		; 02 07
	ora ($60.b,X)		; 01 60
	cpx #$07.b		; E0 07
	brk $07.b		; 00 07
	cop $1F.b		; 02 1F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $E0.b		; 00 E0
	ora $020000.l,X		; 1F 00 00 02
	brk $05.b		; 00 05
	ora [$0E.b]		; 07 0E
	ora $0FFE0E.l,X		; 1F 0E FE 0F
	and $07463F.l		; 2F 3F 46 07
	ora $53.b,S		; 03 53
	cmp ($9B.b,X)		; C1 9B
	dey		; 88
	sbc $0403.w,X		; FD 03 04
	cop $71.b		; 02 71
	adc ($18.b),Y		; 71 18
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	plx		; FA
	and ($0C.b,X)		; 21 0C
	pla		; 68
	ora $B7.b		; 05 B7
	ldy $03.b,X		; B4 03
	inc $0239.w,X		; FE 39 02
	sbc $7899E0.l,X		; FF E0 99 78
	sbc ($F0.b,X)		; E1 F0
	sbc ($F0.b),Y		; F1 F0
	sbc ($7E.b)		; F2 7E
	sta $E8.b,X		; 95 E8
	cop $00.b		; 02 00
	jsr ($80FC.w,X)		; FC FC 80
	rts		; 60

	sei		; 78
	ora [$6E.b]		; 07 6E
	inc $4FB0.w		; EE B0 4F
	adc ($81.b),Y		; 71 81
	adc $376F37.l		; 6F 37 6F 37
	sbc ($5F.b,X)		; E1 5F
	jmp.w [$2523]		; DC 23 25
	cmp ($AC.b,S),Y		; D3 AC
	sty $1FE3.w		; 8C E3 1F
	tas		; 1B
	cmp $B305B6.l,X		; DF B6 05 B3
	ora $40.b		; 05 40
	ora ($1C.b,X)		; 01 1C
	ora $DC1D.w,X		; 1D 1D DC
	stz $0053.w		; 9C 53 00
	sbc $B02123.l,X		; FF 23 21 B0
	lda $8180BF.l,X		; BF BF 80 81
	sta ($AE.b,X)		; 81 AE
	sbc ($FF.b,X)		; E1 FF
	inc $BD.b,X		; F6 BD
	adc $FCFE.w,Y		; 79 FE FC
	cmp $0CCCFC.l,X		; DF FC CC 0C
	sbc $00FE00.l,X		; FF 00 FE 00
	bne  64.b		; D0 40
	inc $00.b,X		; F6 00
	ora $C0FA.w,Y		; 19 FA C0
	sbc $E0DC.w,X		; FD DC E0
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	cmp $3F.b,S		; C3 3F
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sta $80.b,S		; 83 80
	ora [$FF.b]		; 07 FF
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	adc $383800.l,X		; 7F 00 38 38
	brk $00.b		; 00 00
	asl $07F2.w		; 0E F2 07
	bit $FCFC.w,X		; 3C FC FC
	ora $F01320.l,X		; 1F 20 13 F0
	sbc $808F00.l,X		; FF 00 8F 80
	and $F1F260.l		; 2F 60 F2 F1
	clc		; 18
	clc		; 18
	jsr ($0003.w,X)		; FC 03 00
	brk $EF.b		; 00 EF
	cpx #$FF.b		; E0 FF
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $E3.b		; 00 E3
	ldx #$C3.b		; A2 C3
	cop $03.b		; 02 03
	cop $FF.b		; 02 FF
	brk $20.b		; 00 20
	sec		; 38
	ldy #$3F.b		; A0 3F
	bra  48.b		; 80 30
	bra  32.b		; 80 20
	ldx #$1C.b		; A2 1C
	cop $3C.b		; 02 3C
	cop $FC.b		; 02 FC
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	cmp ($01.b,X)		; C1 01
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	tsb $16F4.w		; 0C F4 16
	inc $1FE3.w		; EE E3 1F
	bra 127.b		; 80 7F
	brk $00.b		; 00 00
	trb $00FC.w		; 1C FC 00
	ora $F30100.l,X		; 1F 00 01 F3
	brk $E9.b		; 00 E9
	php		; 08
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	cpx #$07.b		; E0 07
	ora [$00.b]		; 07 00
	brk $FC.b		; 00 FC
	sbc $04FF01.l,X		; FF 01 FF 04
	bit $0000.w,X		; 3C 00 00
	and ($E1.b,X)		; 21 E1
	.db $42, $C3		; 42 C3
	sty $87.b		; 84 87
	php		; 08
	asl $0303.w		; 0E 03 03
	asl $06.b		; 06 06
	phd		; 0B
	php		; 08
	sbc $C0DE00.l,X		; FF 00 DE C0
	lda $7A81.w,X		; BD 81 7A
	cop $F4.b		; 02 F4
	tsb $80.b		; 04 80
	tya		; 98
	jsr $4030.w		; 20 30 40
	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bpl -64.b		; 10 C0
	brk $A0.b		; 00 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $00FEFE.l,X		; 7F FE FE 00
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
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	rts		; 60

	ldy #$30.b		; A0 30
	bcc  56.b		; 90 38
	bcs 120.b		; B0 78
	ldy #$F0.b		; A0 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
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
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	ora $00.b,S		; 03 00
	brk $0F.b		; 00 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	sbc $011F00.l,X		; FF 00 1F 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	sbc $F80000.l,X		; FF 00 00 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $010F00.l,X		; FF 00 0F 01
	ldy $BB.b		; A4 BB
	phd		; 0B
	inc $4E.b,X		; F6 4E
	lda $7B.b,X		; B5 7B
	sty $C6.b		; 84 C6
	cmp ($35.b,X)		; C1 35
	tas		; 1B
	sbc [$FB.b],Y		; F7 FB
	sbc ($00.b),Y		; F1 00
	eor ($01.b,X)		; 41 01
	asl $00.b,X		; 16 00
	ldy $01.b,X		; B4 01
	sty $00.b		; 84 00
	cpy #$3F.b		; C0 3F
	tas		; 1B
	brk $FB.b		; 00 FB
	brk $68.b		; 00 68
	sbc $82C3C3.l,X		; FF C3 C3 82
	sbc $7FFE7F.l,X		; FF 7F FE 7F
	sbc $7EFF3D.l,X		; FF 3D FF 7E
	sta $0147DE.l,X		; 9F DE 47 01
	sbc ($3F.b,X)		; E1 3F
	bit $0380.w,X		; 3C 80 03
	jmp ($1D9F.w)		; 6C 9F 1D
	inc $F61D.w		; EE 1D F6
	stx $4619.w		; 8E 19 46
	and $C3.b		; 25 C3
	cmp $39.b,S		; C3 39
	ora [$8F.b]		; 07 8F
	sta $008080.l		; 8F 80 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $3E.b		; 00 3E
	and $FF00.w,X		; 3D 00 FF
	sta $008000.l		; 8F 00 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -16.b		; 70 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -128.b		; 70 80
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $0F.b		; 00 0F
	sbc $3C0000.l,X		; FF 00 00 3C
	jsr ($0F00.w,X)		; FC 00 0F
	brk $00.b		; 00 00
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	cmp $C3.b,S		; C3 C3
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $3F.b,S		; C3 3F
	brk $00.b		; 00 00
	ora $0000FF.l		; 0F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000000.l,X		; 3F 00 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $F0F000.l,X		; 3F 00 F0 F0
	ora $F0F000.l		; 0F 00 F0 F0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  15.b		; F0 0F
	brk $00.b		; 00 00
	beq  15.b		; F0 0F
	brk $00.b		; 00 00
	and $2E08.w,Y		; 39 08 2E
	bpl  90.b		; 10 5A
	bit $18F4.w,X		; 3C F4 18
	clc		; 18
	brk $E8.b		; 00 E8
	jsr $C0F0.w		; 20 F0 C0
	cpy #$00.b		; C0 00
	php		; 08
	asl $10.b		; 06 10
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bpl -64.b		; 10 C0
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	sed		; F8
	and $E323FC.l,X		; 3F FC 23 E3
	jsr $2F60.w		; 20 60 2F
	rts		; 60

	and $600F60.l		; 2F 60 0F 60
	ora [$60.b]		; 07 60
	pha		; 48
	phk		; 4B
	rti		; 40

	rti		; 40

	jmp $001F40.l		; 5C 40 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $203F20.l,X		; 3F 20 3F 20
	and [$2C.b],Y		; 37 2C
	sbc $FF8703.l,X		; FF 03 87 FF
	lsr $7E.b		; 46 7E
	.db $42, $7E		; 42 7E
	eor $6F.b,S		; 43 6F
	eor ($67.b,X)		; 41 67
	brk $23.b		; 00 23
	bit $00C0.w		; 2C C0 00
	brk $58.b		; 00 58
	cli		; 58
	bit #$8D08.w		; 89 08 8D
	tsb $0484.w		; 0C 84 04
	.db $82, $02, $C1		; 82 02 C1
	ora ($C0.b,X)		; 01 C0
	beq -32.b		; F0 E0
	sed		; F8
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0604.w		; 0C 04 06
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	sta ($81.b,X)		; 81 81
	jsr $1020.w		; 20 20 10
	bpl  -8.b		; 10 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	ora ($7E.b,X)		; 01 7E
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
	brk $73.b		; 00 73
	tsb $205F.w		; 0C 5F 20
	mvp $28,$3B		; 44 3B 28
	ora [$31.b],Y		; 17 31
	asl $3D4A.w		; 0E 4A 3D
	lda $7B.b,X		; B5 7B
	xba		; EB
	adc [$0C.b],Y		; 77 0C
	ora ($20.b,X)		; 01 20
	brk $3B.b		; 00 3B
	brk $17.b		; 00 17
	brk $0E.b		; 00 0E
	brk $3D.b		; 00 3D
	brk $7B.b		; 00 7B
	brk $77.b		; 00 77
	brk $7F.b		; 00 7F
	sbc $DF7FBF.l,X		; FF BF 7F DF
	and $5E5FBF.l,X		; 3F BF 5F 5E
	sbc [$F7.b]		; E7 F7
	cmp ($A7.b,S),Y		; D3 A7
	cmp $6F.b		; C5 6F
	tax		; AA
	and $EF16DF.l		; 2F DF 16 EF
	asl $4E37.w		; 0E 37 4E
	tas		; 1B
	inc $05.b		; E6 05
	cmp ($0A.b,S),Y		; D3 0A
	cmp $19.b		; C5 19
	tax		; AA
	bpl   1.b		; 10 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $427F0F.l,X		; 1F 0F 7F 42
	cmp $EF.b,S		; C3 EF
	and [$F9.b]		; 27 F9
	lda $015F7F.l,X		; BF 7F 5F 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($13.b,X)		; 01 13
	ora ($3E.b),Y		; 11 3E
	ora ($1F.b,X)		; 01 1F
	brk $B8.b		; 00 B8
	ora [$4D.b]		; 07 4D
	sta $FEF3FD.l,X		; 9F FD F3 FE
	sbc $FF.b,X		; F5 FF
	inc $BD.b,X		; F6 BD
	sbc ($F6.b),Y		; F1 F6
	sed		; F8
	rtl		; 6B

	jsr ($EFDC.w,X)		; FC DC EF
	inc $F0FF.w,X		; FE FF F0
	brk $54.b		; 00 54
	ldy #$F6.b		; A0 F6
	ldy #$91.b		; A0 91
	ror A		; 6A
	beq  13.b		; F0 0D
	php		; 08
	inc $C8.b,X		; F6 C8
	inc $EC.b,X		; F6 EC
	inc $0E.b,X		; F6 0E
	cop $0B.b		; 02 0B
	tsb $16.b		; 04 16
	ora $27061D.l		; 0F 1D 06 27
	brk $7A.b		; 00 7A
	php		; 08
	ldy $F030.w,X		; BC 30 F0
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	tsb $30.b		; 04 30
	rti		; 40

	brk $00.b		; 00 00
	bmi 112.b		; 30 70
	eor #$1AC1.w		; 49 C1 1A
	sta $B4.b,S		; 83 B4
	stx $70.b		; 86 70
	asl $68.b		; 06 68
	tsb $18D0.w		; 0C D0 18
	cpy #$10.b		; C0 10
	ora $003E00.l		; 0F 00 3E 00
	jsr ($7880.w,X)		; FC 80 78
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $4C.b		; 00 4C
	cpx #$10.b		; E0 10
	cmp ($40.b,X)		; C1 40
.INDEX 16
	rep #$12		; C2 12
	sta $2FD04D.l,X		; 9F 4D D0 2F
	bvs   7.b		; 70 07
	bvs  19.b		; 70 13
	sec		; 38
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	and $603D.w,X		; 3D 3D 60
	rts		; 60

	and $000F20.l		; 2F 20 0F 00
	ora $080F10.l,X		; 1F 10 0F 08
	bmi   1.b		; 30 01
	and ($45.b,X)		; 21 45
	eor ($9F.b,S),Y		; 53 9F
	dec $FF.b		; C6 FF
	sty $FE.b,X		; 94 FE
	bmi  92.b		; 30 5C
	cpx #$2008.w		; E0 08 20
	bvs  -2.b		; 70 FE
	inc $FEFE.w,X		; FE FE FE
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	cpx #$8080.w		; E0 80 80
	rti		; 40

	beq   0.b		; F0 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $283909.l		; 0F 09 39 28
	rts		; 60

	trb $0080.w		; 1C 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $1F.b		; 06 1F
	ora $007F7F.l,X		; 1F 7F 7F 00
	brk $E0.b		; 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	sed		; F8
	clv		; B8
	sec		; 38
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$5000.w		; E0 00 50
	cpx #$F0E8.w		; E0 E8 F0
	sec		; 38
	bne 104.b		; D0 68
	bne -16.b		; D0 F0
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	eor ($1E.b,X)		; 41 1E
	eor $3E.b,S		; 43 3E
	adc $3E.b,S		; 63 3E
	adc $3E.b,S		; 63 3E
	adc $2C.b,S		; 63 2C
	sbc $C0.b,S		; E3 C0
.ACCU 16
	rep #$24		; C2 24
	asl $3E.b		; 06 3E
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $5E.b		; 00 5E
	.db $42, $3C		; 42 3C
	brk $F8.b		; 00 F8
	brk $0E.b		; 00 0E
	adc $38.b,S		; 63 38
	adc $14.b,S		; 63 14
	dec $78.b		; C6 78
	cpy $8C20.w		; CC 20 8C
	bvc -104.b		; 50 98
	cpy #$2090.w		; C0 90 20
	bmi  60.b		; 30 3C
	jsr $021E.w		; 20 1E 02
	sei		; 78
	rti		; 40

	bmi   0.b		; 30 00
	sei		; 78
	php		; 08
	cpx #$6080.w		; E0 80 60
	brk $C0.b		; 00 C0
	brk $17.b		; 00 17
	bmi  23.b		; 30 17
	bmi  23.b		; 30 17
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	sec		; 38
	ora $180318.l		; 0F 18 03 18
	ora $18.b,S		; 03 18
	ora $000F00.l		; 0F 00 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	bra  33.b		; 80 21
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	cpy #$E020.w		; C0 20 E0
	bpl 112.b		; 10 70
	php		; 08
	clc		; 18
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	lda $405F80.l,X		; BF 80 5F 40
	ora $000700.l		; 0F 00 07 00
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	clc		; 18
	bpl  24.b		; 10 18
	bra -116.b		; 80 8C
	pha		; 48
	cpy $0000.w		; CC 00 00
	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $78.b		; 00 78
	php		; 08
	bcs -128.b		; B0 80
	lsr $2F.b,X		; 56 2F
	ror A		; 6A
	tas		; 1B
	and $16.b,X		; 35 16
	tas		; 1B
	ora $000E.w		; 0D 0E 00
	asl $02.b		; 06 02
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	and $041B00.l		; 2F 00 1B 04
	asl $08.b,X		; 16 08
	ora $0000.w		; 0D 00 00
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $CD.b,S		; 03 CD
	eor #$098D.w		; 49 8D 09
	sta $1995.w,X		; 9D 95 19
	ora ($39.b),Y		; 11 39
	and #$2939.w		; 29 39 29
	and ($21.b),Y		; 31 21
	sbc ($11.b),Y		; F1 11
	eor #$0932.w		; 49 32 09
	adc ($95.b)		; 72 95
	.db $62, $11, $E6		; 62 11 E6
	and #$29C6.w		; 29 C6 29
	dec $21.b		; C6 21
	dec $0E11.w		; CE 11 0E
	lda $0F97AF.l,X		; BF AF 97 0F
	plx		; FA
	tas		; 1B
	ora [$05.b]		; 07 05
	stz $07.b,X		; 74 07
	sbc $BD77.w,X		; FD 77 BD
	tda		; 7B
	stx $A073.w		; 8E 73 A0
	eor $1A6807.l		; 4F 07 68 1A
	ora ($05.b,X)		; 01 05
	cop $04.b		; 02 04
	ora $74.b,S		; 03 74
	ora $78.b,S		; 03 78
	ora $72.b,S		; 03 72
	ora ($3D.b,X)		; 01 3D
	rol $FEFD.w,X		; 3E FD FE
	sbc $78FE.w,X		; FD FE 78
	inc $FFF8.w,X		; FE F8 FF
	clv		; B8
	jsr ($FFF0.w,X)		; FC F0 FF
	sbc $1DFF.w,X		; FD FF 1D
	sbc $B9.b,X		; F5 B9
	adc $79.b		; 65 79
	sta $FD79.w,X		; 9D 79 FD
	bne  56.b		; D0 38
	tsa		; 3B
	cmp $C0.b,S		; C3 C0
	sed		; F8
	sbc $00FE.w,Y		; F9 FE 00
	sty $CC48.w		; 8C 48 CC
	php		; 08
	cpy $4400.w		; CC 00 44
	jsr $0064.w		; 20 64 00
	ror $04.b		; 66 04
	rol $11.b		; 26 11
	and ($78.b)		; 32 78
	php		; 08
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	sec		; 38
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bit $18.b		; 24 18
	brk $0C.b		; 00 0C
	brk $68.b		; 00 68
	cpx $CE48.w		; EC 48 CE
	pha		; 48
	dec $8604.w		; CE 04 86
	tsb $86.b		; 04 86
	brk $82.b		; 00 82
	rti		; 40

	rep #$40		; C2 40
	cmp $10.b,S		; C3 10
	brk $34.b		; 00 34
	tsb $34.b		; 04 34
	tsb $78.b		; 04 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	cpy #$36FE.w		; C0 FE 36
	sbc $FFA7.w,X		; FD A7 FF
	sta $A7DFBF.l		; 8F BF DF A7
	cmp [$E1.b]		; C7 E1
	sta ($E0.b,X)		; 81 E0
	bra  64.b		; 80 40
	bra  54.b		; 80 36
	bra -95.b		; 80 A1
	asl $8F.b		; 06 8F
	eor $064798.l		; 4F 98 47 06
	cmp ($81.b,X)		; C1 81
	bra -128.b		; 80 80
	bra -48.b		; 80 D0
	jsr $20D0.w		; 20 D0 20
	tay		; A8
	bvc -28.b		; 50 E4
	cli		; 58
	cmp ($6C.b)		; D2 6C
	sbc ($6E.b),Y		; F1 6E
	plb		; AB
	stz $BC.b,X		; 74 BC
	adc ($20.b,S),Y		; 73 20
	brk $20.b		; 00 20
	brk $50.b		; 00 50
	brk $58.b		; 00 58
	brk $6C.b		; 00 6C
	brk $6E.b		; 00 6E
	brk $74.b		; 00 74
	brk $72.b		; 00 72
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cpy #$7040.w		; C0 40 70
	bne  28.b		; D0 1C
	rts		; 60

	cop $42.b		; 02 42
	phb		; 8B
	ldx $3F.b		; A6 3F
	sty $00FE.w		; 8C FE 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$FCFC.w		; E0 FC FC
	jsr ($C0FC.w,X)		; FC FC C0
	cpy #$0000.w		; C0 00 00
	ora ($18.b,X)		; 01 18
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	asl $30.b,X		; 16 30
	ora $2C61.w		; 0D 61 2C
	adc ($18.b,X)		; 61 18
	cmp $74.b,S		; C3 74
	dec $0F.b		; C6 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	rol $1E20.w,X		; 3E 20 1E
	brk $7E.b		; 00 7E
	.db $42, $38		; 42 38
	brk $E4.b		; 00 E4
	php		; 08
	ldy $BA60.w,X		; BC 60 BA
	jmp ($70BE.w,X)		; 7C BE 70
	inc $04.b,X		; F6 04
	ror $7230.w,X		; 7E 30 72
	tsb $307E.w		; 0C 7E 30
	bpl   0.b		; 10 00
	rts		; 60

	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	php		; 08
	bmi   0.b		; 30 00
	tsb $3000.w		; 0C 00 30
	brk $7B.b		; 00 7B
	php		; 08
	ror $5C10.w		; 6E 10 5C
	php		; 08
	cpx $20.b		; E4 20
	clv		; B8
	rti		; 40

	pla		; 68
	beq -40.b		; F0 D8
	rts		; 60

	bvs   0.b		; 70 00
	php		; 08
	tsb $10.b		; 04 10
	brk $08.b		; 00 08
	jsr $1820.w		; 20 20 18
	rti		; 40

	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bra -10.b		; 80 F6
	trb $5E.b		; 14 5E
	jsr $3E4D.w		; 20 4D 3E
	adc ($0C.b)		; 72 0C
	rol $2703.w		; 2E 03 27
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	php		; 08
	jsr $3E00.w		; 20 00 3E
	brk $0C.b		; 00 0C
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $22.b,S		; C3 22
	adc $22.b,S		; 63 22
	adc $00.b,S		; 63 00
	adc ($00.b,X)		; 61 00
	and ($10.b,X)		; 21 10
	and ($10.b),Y		; 31 10
	and ($00.b),Y		; 31 00
	and ($7E.b),Y		; 31 7E
	.db $42, $1C		; 42 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	bpl -112.b		; 10 90
	cmp $80EC88.l		; CF 88 EC 80
	jsr ($40E0.w,X)		; FC E0 40
	beq -96.b		; F0 A0
	bvs  32.b		; 70 20
	bvs -64.b		; 70 C0
	bcs  76.b		; B0 4C
	jmp ($104C.w,X)		; 7C 4C 10
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	ldy #$2000.w		; A0 00 20
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	bra 120.b		; 80 78
	tsb $78.b		; 04 78
	sty $70.b		; 84 70
	bit $60.b		; 24 60
	pei ($90.b)		; D4 90
	jsr ($EC48.w,X)		; FC 48 EC
	bra -108.b		; 80 94
	brk $0C.b		; 00 0C
	dey		; 88
	dey		; 88
	dey		; 88
	tay		; A8
	tay		; A8
	dey		; 88
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bvc  16.b		; 50 10
	dey		; 88
	php		; 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	tas		; 1B
	sei		; 78
	ora [$40.b]		; 07 40
	and $1261.w		; 2D 61 12
	and ($00.b,S),Y		; 33 00
	asl $0000.w,X		; 1E 00 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	rol $1E00.w,X		; 3E 00 1E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $0C06.w		; 0C 06 0C
	ora ($09.b,X)		; 01 09
	sec		; 38
	ora #$122F.w		; 09 2F 12
	eor $0E7D3C.l,X		; 5F 3C 7D 0E
	lsr A		; 4A
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $10.b		; 00 10
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	bmi -68.b		; 30 BC
	tda		; 7B
	ldx $F867.w,Y		; BE 67 F8
	ora $61E1.w,Y		; 19 E1 61
	cpy #$60C0.w		; C0 C0 60
	cpx #$E020.w		; E0 20 E0
	bpl 112.b		; 10 70
	ply		; 7A
	cop $60.b		; 02 60
	brk $07.b		; 00 07
	ora ($1E.b,X)		; 01 1E
	brk $3F.b		; 00 3F
	brk $9F.b		; 00 9F
	bra  95.b		; 80 5F
	rti		; 40

	and $000020.l		; 2F 20 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	rti		; 40

	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $07.b		; 00 07
	ora $1E03.w,Y		; 19 03 1E
	ora [$1F.b]		; 07 1F
	tsb $091C.w		; 0C 1C 09
	clc		; 18
	ora $300738.l		; 0F 38 07 30
	ora [$30.b],Y		; 17 30
	ora #$0C08.w		; 09 08 0C
	tsb $0808.w		; 0C 08 08
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$10.b],Y		; 17 10
	ora $000F10.l,X		; 1F 10 0F 00
	adc ($51.b),Y		; 71 51
	sbc ($01.b,X)		; E1 01
	sbc ($C1.b),Y		; F1 C1
	and $1F9030.l,X		; 3F 30 90 1F
	bne  25.b		; D0 19
	cpy #$C018.w		; C0 18 C0
	bpl  81.b		; 10 51
	stx $1E01.w		; 8E 01 1E
	ora ($0E.b,X)		; 01 0E
	cpy #$E900.w		; C0 00 E9
	ora #$00E0.w		; 09 E0 00
	beq  16.b		; F0 10
	cpx #$A100.w		; E0 00 A1
	sta ($73.b,X)		; 81 73
	brk $61.b		; 00 61
	brk $81.b		; 00 81
	asl A		; 0A
	cop $14.b		; 02 14
	stx $FF.b,Y		; 96 FF
	jmp ($7987.w)		; 6C 87 79
	.db $82, $7E, $7E		; 82 7E 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EBEBFF.l,X		; FF FF EB EB
	brk $00.b		; 00 00
	adc $027C04.l,X		; 7F 04 7C 02
	brk $C0.b		; 00 C0
	rti		; 40

	bvs -128.b		; 70 80
	php		; 08
	php		; 08
	bit $FC98.w		; 2C 98 FC
	bmi  -8.b		; 30 F8
	ldy #$80F0.w		; A0 F0 80
	cpx #$0000.w		; E0 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
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
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	plx		; FA
	inc $E7.b		; E6 E7
	cmp $00BE4E.l,X		; DF 4E BE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E6.b		; 00 E6
	ora ($5F.b,X)		; 01 5F
	bra  62.b		; 80 3E
	sta ($37.b,X)		; 81 37
	clc		; 18
	tsa		; 3B
	ora $1BE5.w,X		; 1D E5 1B
	lda [$5A.b]		; A7 5A
	lda $F542.w,X		; BD 42 F5
	asl A		; 0A
	inc A		; 1A
	ora $0D3B.w		; 0D 3B 0D
	clc		; 18
	brk $1D.b		; 00 1D
	brk $1B.b		; 00 1B
	brk $5A.b		; 00 5A
	brk $42.b		; 00 42
	brk $0A.b		; 00 0A
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $FF.b		; 00 FF
	adc $FF7FBF.l,X		; 7F BF 7F FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	adc $BF9FFE.l,X		; 7F FE 9F BF
	cmp $3FA3EF.l		; CF EF A3 3F
	adc $5E7F3F.l,X		; 7F 3F 7F 5E
	and $0ECF36.l,X		; 3F 36 CF 0E
	adc [$8E.b],Y		; 77 8E
	tas		; 1B
	cmp [$0C.b]		; C7 0C
	lda $12.b,S		; A3 12
	asl $1B02.w,X		; 1E 02 1B
	tsb $37.b		; 04 37
	ora ($39.b)		; 12 39
	php		; 08
	rol $5A10.w		; 2E 10 5A
	bit $18F4.w,X		; 3C F4 18
	tya		; 98
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	brk $12.b		; 00 12
	php		; 08
	php		; 08
	asl $10.b		; 06 10
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	rts		; 60

	ora $0C.b		; 05 0C
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	asl $30.b,X		; 16 30
	ora $3A61.w		; 0D 61 3A
	adc $14.b,S		; 63 14
	dec $03.b		; C6 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	rol $1C20.w,X		; 3E 20 1C
	brk $78.b		; 00 78
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $E7.b		; 24 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	ora ($73.b)		; 12 73
	bpl  49.b		; 10 31
	bpl  49.b		; 10 31
	ora ($73.b)		; 12 73
	jsl $C30063.l		; 22 63 00 C3
	rti		; 40

	cmp $00.b,S		; C3 00
	.db $82, $2C, $20		; 82 2C 20
	asl $0E00.w		; 0E 00 0E
	brk $2C.b		; 00 2C
	jsr $001C.w		; 20 1C 00
	ror $3E42.w,X		; 7E 42 3E
	cop $7C.b		; 02 7C
	brk $00.b		; 00 00
	.db $82, $00, $82		; 82 00 82
	brk $82.b		; 00 82
	rti		; 40

	rep #$40		; C2 40
	rep #$04		; C2 04
	dec $04.b		; C6 04
	dec $00.b		; C6 00
	lsr $7C.b		; 46 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	bit $0004.w,X		; 3C 04 00
	lsr $00.b		; 46 00
	mvp $44,$00		; 44 00 44
	brk $44.b		; 00 44
	jsr $2064.w		; 20 64 20
	stz $20.b		; 64 20
	stz $E0.b		; 64 E0
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	sec		; 38
	tsb $1C.b		; 04 1C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
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
	mvp $00,$C6		; 44 C6 00
.ACCU 16
	rep #$20		; C2 20
	adc $F0.b,S		; 63 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra 124.b		; 80 7C
	rti		; 40

	asl $1702.w,X		; 1E 02 17
	bmi  15.b		; 30 0F
	jsr $200F.w		; 20 0F 20
	ora $601F20.l		; 0F 20 1F 60
	asl $3E60.w,X		; 1E 60 3E
	rts		; 60

	and $0F61.w,X		; 3D 61 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	ora $001E00.l,X		; 1F 00 1E 00
	ldy #$8030.w		; A0 30 80
	bmi  64.b		; 30 40
	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $3F.b		; 00 3F
	bra -103.b		; 80 99
	cmp $C8.b,S		; C3 C8
	sbc [$FC.b]		; E7 FC
	cop $7F.b		; 02 7F
	xce		; FB
	ora $4F7F07.l,X		; 1F 07 7F 4F
	cmp $80FFBF.l		; CF BF FF 80
	ror $3E42.w,X		; 7E 42 3E
	rol $00.b		; 26 00
	brk $FB.b		; 00 FB
	brk $05.b		; 00 05
	inc $4F.b		; E6 4F
	sta $8A.b,X		; 95 8A
	and $00.b,X		; 35 00
	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$E0E0.w		; E0 E0 E0
	sbc $DFC0C0.l,X		; FF C0 C0 DF
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$A000.w		; E0 00 A0
	cpy #$807F.w		; C0 7F 80
	lda $7F0700.l,X		; BF 00 07 7F
	jsr $40E0.w		; 20 E0 40
	cpy #$E767.w		; C0 67 E7
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $09.b		; 00 09
	php		; 08
	eor $003F40.l,X		; 5F 40 3F 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	adc $CF00FF.l,X		; 7F FF 00 CF
	lda $FFFFBF.l,X		; BF BF FF FF
	sbc $BFBFDE.l,X		; FF DE BF BF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	adc $FF7F8F.l,X		; 7F 8F 7F FF
	brk $8C.b		; 00 8C
	adc $BF7F9E.l,X		; 7F 9E 7F BF
	adc $8E215F.l,X		; 7F 5F 21 8E
	adc [$93.b],Y		; 77 93
	ror A		; 6A
	adc #$371A.w		; 69 1A 37
	ora $32.b,X		; 15 32
	trb $1E.b		; 14 1E
	asl A		; 0A
	tsb BG2VOFS.w		; 0C 10 21
	brk $77.b		; 00 77
	brk $6A.b		; 00 6A
	tsb $1A.b		; 04 1A
	tsb $15.b		; 04 15
	php		; 08
	trb $09.b		; 14 09
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	ora $47.b,S		; 03 47
	sta ($CF.b,X)		; 81 CF
	lsr A		; 4A
	sta $1D89.w		; 8D 89 1D
	ora $19.b,X		; 15 19
	ora ($19.b),Y		; 11 19
	ora ($39.b),Y		; 11 39
	and #$2131.w		; 29 31 21
	sta ($39.b,X)		; 81 39
	lsr A		; 4A
	bmi -119.b		; 30 89
	adc ($15.b)		; 72 15
.INDEX 8
	sep #$11		; E2 11
	inc $11.b		; E6 11
	inc $29.b		; E6 29
	dec $21.b		; C6 21
	dec $60BC.w		; CE BC 60
	ldy $BE78.w,X		; BC 78 BE
	bvs -10.b		; 70 F6
	tsb $FE.b		; 04 FE
	bvs 114.b		; 70 72
	tsb $307E.w		; 0C 7E 30
	ror $14.b,X		; 76 14
	rts		; 60

	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	php		; 08
	bvs   0.b		; 70 00
	tsb $3000.w		; 0C 00 30
	brk $14.b		; 00 14
	php		; 08
	lsr $5A20.w,X		; 5E 20 5A
	bit $3E4D.w,X		; 3C 4D 3E
	adc ($0C.b)		; 72 0C
	rol $2703.w		; 2E 03 27
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $0C.b		; 00 0C
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sta $38.b,S		; 83 38
	.db $82, $74, $86		; 82 74 86
	beq -122.b		; F0 86
	sei		; 78
	tsb $0C60.w		; 0C 60 0C
	jsr $1008.w		; 20 08 10
	clc		; 18
	ror $7C02.w,X		; 7E 02 7C
	brk $F8.b		; 00 F8
	bra 124.b		; 80 7C
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	phd		; 0B
	ora [$1E.b]		; 07 1E
	ora $13.b,S		; 03 13
	brk $3D.b		; 00 3D
	tsb $5E.b		; 04 5E
	clc		; 18
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	tsb $0204.w		; 0C 04 02
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $5D60.w		; 2C 60 5D
	cmp ($BA.b,X)		; C1 BA
	sta $74.b,S		; 83 74
	asl $68.b		; 06 68
	tsb $1CF0.w		; 0C F0 1C
	cpy #$18.b		; C0 18
	ldy #$30.b		; A0 30
	ora $003E00.l,X		; 1F 00 3E 00
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	ora [$18.b]		; 07 18
	ora $100718.l		; 0F 18 07 10
	asl $10.b		; 06 10
	ora ($30.b)		; 12 30
	and ($61.b,X)		; 21 61
	cli		; 58
	cmp ($BA.b,X)		; C1 BA
	sta $0F.b,S		; 83 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001E00.l		; 0F 00 1E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $1E.b		; 00 1E
	and ($08.b,S),Y		; 33 08
	adc $34.b,S		; 63 34
	ror $28.b		; 66 28
	cpy $D850.w		; CC 50 D8
	ldy #$B0.b		; A0 B0
	brk $30.b		; 00 30
	cpx #$40.b		; E0 40
	tsb $3E00.w		; 0C 00 3E
	jsl $700018.l		; 22 18 00 70
	rti		; 40

	jsr $4000.w		; 20 00 40
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	brk $04.b		; 00 04
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	plx		; FA
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $A7FDDB.l,X		; FF DB FD A7
	xce		; FB
	jmp.w [$0AFF]		; DC FF 0A
	adc $36.b,X		; 75 36
	sbc $FCFB.w,Y		; F9 FB FC
	sbc $79FE.w,Y		; F9 FE 79
	inc $3EC1.w,X		; FE C1 3E
	jsl $E01CDC.l		; 22 DC 1C E0
	ldy $9880.w,X		; BC 80 98
	sta $00FC00.l,X		; 9F 00 FC 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sbc $04E400.l,X		; FF 00 E4 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -12.b		; B0 F4
	cpy #$FC.b		; C0 FC
	rti		; 40

	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	bra -16.b		; 80 F0
	bra  40.b		; 80 28
	iny		; C8
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -24.b		; 80 E8
	bcc -12.b		; 90 F4
	dey		; 88
	tsx		; BA
	mvn $68,$9E		; 54 9E 68
	ldx $6C.b,Y		; B6 6C
	tax		; AA
	stz $BA.b,X		; 74 BA
	stz $B4.b,X		; 74 B4
	ply		; 7A
	bpl -128.b		; 10 80
	dey		; 88
	bra  84.b		; 80 54
	brk $68.b		; 00 68
	brk $6C.b		; 00 6C
	brk $74.b		; 00 74
	brk $74.b		; 00 74
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $ECFFEF.l,X		; 1F EF FF EC
	jsr ($FDDD.w,X)		; FC DD FD
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	inc A		; 1A
	ora [$E7.b]		; 07 E7
	ora $00FFCC.l,X		; 1F CC FF 00
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1B.b		; 00 1B
	sbc #$E153.w		; E9 53 E1
	and [$11.b],Y		; 37 11
	adc [$53.b],Y		; 77 53
	sec		; 38
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	tsb $81.b		; 04 81
	sta $09D0.w		; 8D D0 09
	sta ($08.b,S),Y		; 93 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	clc		; 18
	clc		; 18
	cpx #$00.b		; E0 00
	tsb $000F.w		; 0C 0F 00
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b]		; E7 00
	sbc $02F200.l,X		; FF 00 F2 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0D.b		; 05 0D
	bmi   9.b		; 30 09
	and $3C5F12.l		; 2F 12 5F 3C
	adc $4A0E.w,X		; 7D 0E 4A
	tsb $F6.b		; 04 F6
	bpl -36.b		; 10 DC
	jsr $0002.w		; 20 02 00
	ora [$01.b]		; 07 01
	bpl   0.b		; 10 00
	bit $0E00.w,X		; 3C 00 0E
	brk $04.b		; 00 04
	bmi  16.b		; 30 10
	php		; 08
	jsr $0500.w		; 20 00 05
	trb $1C01.w		; 1C 01 1C
	ora $1E.b,S		; 03 1E
	php		; 08
	asl $1F09.w,X		; 1E 09 1F
	tsb $081F.w		; 0C 1F 08
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora #$0308.w		; 09 08 03
	cop $04.b		; 02 04
	tsb $01.b		; 04 01
	ora ($06.b,X)		; 01 06
	cop $04.b		; 02 04
	brk $C0.b		; 00 C0
	bpl -64.b		; 10 C0
	clc		; 18
	cpx #$18.b		; E0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	rts		; 60

	php		; 08
	beq -116.b		; F0 8C
	sec		; 38
	sty $00E0.w		; 8C E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	lda [$C5.b]		; A7 C5
	lda [$C5.b]		; A7 C5
	sbc [$A5.b]		; E7 A5
	sbc [$25.b]		; E7 25
	cmp [$05.b]		; C7 05
	and $FC3FC1.l,X		; 3F C1 3F FC
	and ($E1.b,X)		; 21 E1
	cmp $18.b		; C5 18
	cmp $18.b		; C5 18
	lda $18.b		; A5 18
	and $18.b		; 25 18
	ora $38.b		; 05 38
	eor ($40.b,X)		; 41 40
	rti		; 40

	rti		; 40

	lsr $4F40.w,X		; 5E 40 4F
	bit $59.b,X		; 34 59
	rol $7B.b,X		; 36 7B
	lsr $36.b,X		; 56 36
	clc		; 18
	bit $3C18.w		; 2C 18 3C
	brk $E0.b		; 00 E0
	clc		; 18
	bpl  -8.b		; 10 F8
	bit $80.b,X		; 34 80
	rol $80.b,X		; 36 80
	lsr $80.b,X		; 56 80
	clc		; 18
	cpy #$18.b		; C0 18
	cpy #$00.b		; C0 00
	cpy #$10.b		; C0 10
	bpl -96.b		; 10 A0
	ldy #$9D.b		; A0 9D
	inc $DE34.w,X		; FE 34 DE
	ror $68CF.w,X		; 7E CF 68
	dec $1FEF.w,X		; DE EF 1F
	adc $79ED37.l,X		; 7F 37 ED 79
	ldx $4D6F.w,Y		; BE 6F 4D
	eor $AD91.w,X		; 5D 91 AD
	lsr $C130.w		; 4E 30 C1
	and $300F.w,X		; 3D 0F 30
	rol $8F.b,X		; 36 8F
	ora #$0C7E.w		; 09 7E 0C
	adc $181035.l,X		; 7F 35 10 18
	inc $86.b		; E6 86
	sta $687D08.l,X		; 9F 08 7D 68
	sbc $F0E8F8.l,X		; FF F8 E8 F0
	beq -48.b		; F0 D0
	beq -45.b		; F0 D3
	wai		; CB
	ora ($01.b,X)		; 01 01
	rts		; 60

	rts		; 60

	txa		; 8A
	sta ($E8.b)		; 92 E8
	bvs -56.b		; 70 C8
	bvs -48.b		; 70 D0
	rts		; 60

	bne  96.b		; D0 60
	brk $1B.b		; 00 1B
	ora $14.b,S		; 03 14
	phd		; 0B
	trb $0A00.w		; 1C 00 0A
	tsb $0F.b		; 04 0F
	ora ($07.b,X)		; 01 07
	ora $7B03.w,X		; 1D 03 7B
	ora $0C0C.w,X		; 1D 0C 0C
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $5000.w,X		; 1D 00 50
	sbc $E8377E.l,X		; FF 7E 37 E8
	tas		; 1B
	sed		; F8
	cop $78.b		; 02 78
	cop $20.b		; 02 20
	stz $C820.w		; 9C 20 C8
	cpy $02F0.w		; CC F0 02
	cop $F0.b		; 02 F0
	jsr $10EC.w		; 20 EC 10
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	tya		; 98
	bcs -128.b		; B0 80
	bra   0.b		; 80 00
	eor $5D3E.w,X		; 5D 3E 5D
	rol $609E.w,X		; 3E 9E 60
	inc $14.b,X		; F6 14
	inc $F260.w		; EE 60 F2
	tsb $60EE.w		; 0C EE 60
	inc $14.b,X		; F6 14
	rol $3E00.w,X		; 3E 00 3E
	brk $60.b		; 00 60
	brk $14.b		; 00 14
	php		; 08
	rts		; 60

	bpl  12.b		; 10 0C
	brk $60.b		; 00 60
	bpl  20.b		; 10 14
	php		; 08
	adc $22.b,S		; 63 22
	adc $125F00.l,X		; 7F 00 5F 12
	adc [$04.b]		; 67 04
	tda		; 7B
	cop $5F.b		; 02 5F
	sec		; 38
	ror $361F.w		; 6E 1F 36
	ora $001C22.l		; 0F 22 1C 00
	brk $12.b		; 00 12
	jsr $1804.w		; 20 04 18
	cop $04.b		; 02 04
	sec		; 38
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	ora ($31.b,X)		; 01 31
	ora ($31.b,X)		; 01 31
	bpl  49.b		; 10 31
	bpl  49.b		; 10 31
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $101E10.l,X		; 1F 10 1E 10
	asl $0F10.w,X		; 1E 10 0F
	ora ($0E.b,X)		; 01 0E
	brk $5C.b		; 00 5C
	cmp $18.b,S		; C3 18
	sta $18.b,S		; 83 18
	.db $82, $18, $82		; 82 18 82
	cli		; 58
.INDEX 16
	rep #$1C		; C2 1C
	dec $18.b		; C6 18
	dec $10.b		; C6 10
	lsr $3E.b		; 46 3E
	cop $7E.b		; 02 7E
	cop $7C.b		; 02 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	rti		; 40

	jmp ($3C44.w,X)		; 7C 44 3C
	tsb $03.b		; 04 03
	ora $0609.w		; 0D 09 06
	ora ($0D.b)		; 12 0D
	ora ($0D.b)		; 12 0D
	trb $0503.w		; 1C 03 05
	cop $09.b		; 02 09
	asl $09.b		; 06 09
	asl $01.b		; 06 01
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $06.b,S		; 03 06
	asl $05.b		; 06 05
	ora [$03.b]		; 07 03
	ora $0B0B02.l		; 0F 02 0B 0B
	tas		; 1B
	ora $31.b		; 05 31
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $03.b		; 05 03
	asl $05.b		; 06 05
	asl $01.b		; 06 01
	ora $00.b		; 05 00
	asl $2010.w,X		; 1E 10 20
	cpy #$00E0.w		; C0 E0 00
	ldy #$C0C0.w		; A0 C0 C0
	jsr $6040.w		; 20 40 60
	brk $20.b		; 00 20
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	ora $1909.w,Y		; 19 09 19
	php		; 08
	ora $1B0A.w,Y		; 19 0A 1B
	brk $33.b		; 00 33
	ora $37.b,X		; 15 37
	brk $66.b		; 00 66
	jsr $0766.w		; 20 66 07
	ora ($06.b,X)		; 01 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $1D.b		; 00 1D
	ora ($08.b),Y		; 11 08
	brk $3B.b		; 00 3B
	jsl $30021B.l		; 22 1B 02 30
	sty $00.b		; 84 00
	sty $00.b		; 84 00
	sty $A8.b		; 84 A8
	sty $0C60.w		; 8C 60 0C
	cpx #$E008.w		; E0 08 E0
	php		; 08
	beq  24.b		; F0 18
	sei		; 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$2600.w		; E0 00 26
	rts		; 60

	ora $600F60.l		; 0F 60 0F 60
	ora $301730.l,X		; 1F 30 17 30
	ora [$30.b]		; 07 30
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $203F00.l,X		; 1F 00 3F 20
	and $000F20.l,X		; 3F 20 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $F89008.l		; 0F 08 90 F8
	brk $78.b		; 00 78
	rti		; 40

	bvs -64.b		; 70 C0
	bvs -128.b		; 70 80
	bmi -128.b		; 30 80
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi  64.b		; 30 40
	rti		; 40

	bne  80.b		; D0 50
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$E020.w		; E0 20 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$DD00.w		; C0 00 DD
	and #$77FD.w		; 29 FD 77
	sta $64D76F.l,X		; 9F 6F D7 64
	cmp [$65.b],Y		; D7 65
	eor [$E5.b],Y		; 57 E5
	lda [$D5.b],Y		; B7 D5
	lda [$D5.b],Y		; B7 D5
	ora ($7E.b,X)		; 01 7E
	adc ($0E.b),Y		; 71 0E
	ror $6401.w		; 6E 01 64
	php		; 08
	adc $08.b		; 65 08
	sbc $08.b		; E5 08
	cmp $08.b,X		; D5 08
	cmp $08.b,X		; D5 08
	sed		; F8
	bne -24.b		; D0 E8
	beq -20.b		; F0 EC
	beq  -4.b		; F0 FC
	cpx #$48F4.w		; E0 F4 48
	dec $A8.b,X		; D6 A8
	lsr $28.b,X		; 56 28
	eor ($2C.b)		; 52 2C
	bne -32.b		; D0 E0
	jsr $C0D0.w		; 20 D0 C0
	bmi -64.b		; 30 C0
	ldy #$4048.w		; A0 48 40
	tay		; A8
	brk $28.b		; 00 28
	bra  44.b		; 80 2C
	bra -49.b		; 80 CF
	sta $C6E5.w		; 8D E5 C6
	xce		; FB
	nop		; EA
	adc $2160.w,Y		; 79 60 21
	adc $56F9E0.l,X		; 7F E0 F9 56
	sed		; F8
	pea $8CF9.w		; F4 F9 8C
	bmi  70.b		; 30 46
	tya		; 98
	tax		; AA
	cpy $20.b		; C4 20
	dec $21.b,X		; D6 21
	bne 102.b		; D0 66
	stx $47.b,Y		; 96 47
	lda [$D7.b],Y		; B7 D7
	and [$F2.b],Y		; 37 F2
	cmp $DDFB.w,X		; DD FB DD
	tsx		; BA
	sta $9BB5.w,X		; 9D B5 9B
	bcs  31.b		; B0 1F
	cpx $6453.w		; EC 53 64
	ora $90.b,S		; 03 90
	pld		; 2B
	cmp $1C00.w,X		; DD 00 1C
	ora ($5D.b,X)		; 01 5D
	brk $5B.b		; 00 5B
	ora ($51.b,X)		; 01 51
	brk $0D.b		; 00 0D
	tsb $9D9D.w		; 0C 9D 9D
	ora $9E6D.w		; 0D 6D 9E
	rts		; 60

	sta $DD7E.w,Y		; 99 7E DD
	rol $1D6F.w,X		; 3E 6F 1D
	lsr $0A.b,X		; 56 0A
	eor $000702.l,X		; 5F 02 07 00
	brk $00.b		; 00 00
	rts		; 60

	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $1D.b		; 00 1D
	brk $0A.b		; 00 0A
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	asl $2B.b		; 06 2B
	ora $06.b		; 05 06
	cop $83.b		; 02 83
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	and ($00.b,S),Y		; 33 00
	and $00.b,S		; 23 00
	jsl $006604.l		; 22 04 66 00
	ror $20.b		; 66 20
	stz $20.b		; 64 20
	stz $FE.b		; 64 FE
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $38.b		; 00 38
	jsr $243C.w		; 20 3C 24
	clc		; 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	mvp $44,$10		; 44 10 44
	jsr $2064.w		; 20 64 20
	stz $F8.b		; 64 F8
	tsb $70BE.w		; 0C BE 70
	tsx		; BA
	jmp ($00FE.w,X)		; 7C FE 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
	rol $8080.w,X		; 3E 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3E00.w		; 0C 00 3E
	php		; 08
	rol $2677.w		; 2E 77 26
	sbc #$F7AE.w		; E9 AE F7
	trb $FA.b		; 14 FA
	pha		; 48
	inc $3E0C.w,X		; FE 0C 3E
	rol $8C3D.w		; 2E 3D 8C
	sta $E12E73.l,X		; 9F 73 2E E1
	rol $BE43.w,X		; 3E 43 BE
.INDEX 8
	sep #$1C		; E2 1C
	tax		; AA
	stz $0CDE.w		; 9C DE 0C
	cmp $750E.w,X		; DD 0E 75
	asl $F317.w		; 0E 17 F3
	ora $1B05B8.l		; 0F B8 05 1B
	ora $0C.b,S		; 03 0C
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	plp		; 28
	and $10.b,S		; 23 10
	bpl  11.b		; 10 0B
	php		; 08
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $E0.b		; 00 E0
	rti		; 40

	bne -64.b		; D0 C0
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	jsr $0000.w		; 20 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $0000.w,Y		; 39 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	plx		; FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	asl $0C.b		; 06 0C
	phd		; 0B
	ora $1104.w,Y		; 19 04 11
	inc A		; 1A
	and ($01.b,S),Y		; 33 01
	rol $1B.b		; 26 1B
	eor ($2E.b,X)		; 41 2E
	rts		; 60

	asl A		; 0A
	sec		; 38
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $000C01.l		; 0F 01 0C 00
	trb $3D04.w		; 1C 04 3D
	brk $1C.b		; 00 1C
	ora ($04.b,X)		; 01 04
	ora ($0F.b,X)		; 01 0F
	sei		; 78
	ora $1079.w,Y		; 19 79 10
	bvs  19.b		; 70 13
	bvs  23.b		; 70 17
	bmi  23.b		; 30 17
	bmi  23.b		; 30 17
	bmi  23.b		; 30 17
	bmi  48.b		; 30 30
	bmi  38.b		; 30 26
	jsr $202F.w		; 20 2F 20
	and $000F20.l		; 2F 20 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $00F000.l		; 0F 00 F0 00
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ora [$1F.b],Y		; 17 1F
	tas		; 1B
	ora $171F0F.l,X		; 1F 0F 1F 17
	and [$0B.b],Y		; 37 0B
	and $18.b,S		; 23 18
	jsl $2B6634.l		; 22 34 66 2B
	adc $1B0C13.l		; 6F 13 0C 1B
	asl $05.b		; 06 05
	cop $0B.b		; 02 0B
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $13.b		; 00 13
	brk $1A.b		; 00 1A
	cpy #$53.b		; C0 53
	sbc $51.b		; E5 51
	sep #$C2		; E2 C2
	sbc [$C4.b]		; E7 C4
	sbc $6341.w,X		; FD 41 63
	eor ($73.b,X)		; 41 73
	sbc $FF.b,S		; E3 FF
	bit $1DBD.w,X		; 3C BD 1D
	jmp.w [$DC5C]		; DC 5C DC
	cld		; D8
	cli		; 58
	.db $82, $42, $5D		; 82 42 5D
	ora $0D4D.w,X		; 1D 4D 0D
	sbc $13.b,S		; E3 13
	phk		; 4B
	lda [$42.b]		; A7 42
	asl $82.b		; 06 82
	ror $E662.w,X		; 7E 62 E6
	sta ($CF.b,X)		; 81 CF
	iny		; C8
	sbc $F8E8.w,Y		; F9 E8 F8
	sbc $3AF8.w,Y		; F9 F8 3A
	clv		; B8
	tsa		; 3B
	clv		; B8
	ora ($00.b,X)		; 01 00
	ora $3018.w,Y		; 19 18 30
	bcs -120.b		; B0 88
	cpy #$C8.b		; C0 C8
	beq -24.b		; F0 E8
	beq   2.b		; F0 02
	sta $86.b,S		; 83 86
	cmp ($4C.b,X)		; C1 4C
	adc [$0A.b]		; 67 0A
	rol $35.b,X		; 36 35
	jmp ($3828.w,X)		; 7C 28 38
	bpl -16.b		; 10 F0
	cpx $26.b		; E4 26
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	sta $01.b		; 85 01
	cmp ($00.b,X)		; C1 00
	cmp $40.b,S		; C3 40
	cmp [$00.b]		; C7 00
	ora $021B00.l		; 0F 00 1B 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0B0B0F.l		; 0F 0F 0B 0B
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	plx		; FA
	plx		; FA
	dec A		; 3A
	sbc $18.b,S		; E3 18
	cmp $58.b,S		; C3 58
.ACCU 16
.INDEX 16
	rep #$70		; C2 70
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	dec $34.b		; C6 34
	stx $30.b		; 86 30
	stx $20.b		; 86 20
	stx $5C.b		; 86 5C
	rti		; 40

	ror $3C42.w,X		; 7E 42 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $01.b		; 04 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	ora ($0B.b,X)		; 01 0B
	cop $0F.b		; 02 0F
	cop $1B.b		; 02 1B
	tsb $003C.w		; 0C 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $04.b		; 02 04
	cop $00.b		; 02 00
	tsb $0000.w		; 0C 00 00
	brk $F8.b		; 00 F8
	cpy #$20D0.w		; C0 D0 20
	bne -32.b		; D0 E0
	bne -32.b		; D0 E0
	jsr $E0C0.w		; 20 C0 E0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bpl  32.b		; 10 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	cop $17.b		; 02 17
	clc		; 18
	tsa		; 3B
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($10.b,X)		; 01 10
	php		; 08
	and $2C06.w,Y		; 39 06 2C
	adc ($2C.b,X)		; 61 2C
	adc ($02.b,X)		; 61 02
	adc $02.b,S		; 63 02
	adc $20.b,S		; 63 20
	adc $04.b,S		; 63 04
	cmp [$14.b]		; C7 14
	dec $54.b		; C6 54
	dec $1E.b		; C6 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	asl $7A02.w,X		; 1E 02 7A
	.db $42, $78		; 42 78
	rti		; 40

	sec		; 38
	brk $14.b		; 00 14
	lsr $14.b		; 46 14
	lsr $30.b		; 46 30
	ror $30.b		; 66 30
	ror $30.b		; 66 30
	stz $30.b		; 64 30
	stz $20.b		; 64 20
	stz $E8.b		; 64 E8
	tsb $0038.w		; 0C 38 00
	sec		; 38
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $0C.b		; 00 0C
	asl $0F7C.w,X		; 1E 7C 0F
	stz $EC6F.w,X		; 9E 6F EC
	sbc $FC.b,X		; F5 FC
	sbc $35.b,X		; F5 35
	sec		; 38
	ora $9C03EA.l		; 0F EA 03 9C
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	cop $6E.b		; 02 6E
	brk $F2.b		; 00 F2
	brk $F2.b		; 00 F2
	brk $3A.b		; 00 3A
	cpy #$1008.w		; C0 08 10
	rts		; 60

	rts		; 60

	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	ora [$10.b]		; 07 10
	ora $180F18.l		; 0F 18 0F 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $101F00.l		; 0F 00 1F 10
	ora $000F10.l,X		; 1F 10 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	bra  96.b		; 80 60
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
	ora $8357F3.l		; 0F F3 57 83
	adc [$A3.b],Y		; 77 A3
	rol $1FAA.w,X		; 3E AA 1F
	adc $07.b,S		; 63 07
	ora $05.b,S		; 03 05
	cop $05.b		; 02 05
	cop $51.b		; 02 51
	eor ($62.b,S),Y		; 53 62
	phd		; 0B
	eor $0B.b,S		; 43 0B
	lsr A		; 4A
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $E7.b		; 00 E7
	sbc $E73F3F.l,X		; FF 3F 3F E7
	sbc $CB4F77.l,X		; FF 77 4F CB
	sbc [$97.b],Y		; F7 97
	sbc #$EC1B.w		; E9 1B EC
	plb		; AB
	cmp $DFA3.w,X		; DD A3 DF
	tsa		; 3B
	cmp [$26.b]		; C7 26
	cmp $8E41.w,Y		; D9 41 8E
	adc ($87.b),Y		; 71 87
	inx		; E8
	ora ($EC.b,X)		; 01 EC
	brk $DD.b		; 00 DD
	brk $FF.b		; 00 FF
	sbc $FAF6.w,Y		; F9 F6 FA
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	sbc $FFF1.w,Y		; F9 F1 FF
	inc $FF.b,X		; F6 FF
	adc ($FF.b,X)		; 61 FF
	and $F2F0E9.l		; 2F E9 F0 F2
	sbc #$EBD0.w		; E9 D0 EB
	bcs -37.b		; B0 DB
	sbc ($16.b),Y		; F1 16
	inc $D0.b,X		; F6 D0
	adc ($60.b,X)		; 61 60
	and $8ECA20.l		; 2F 20 CA 8E
	rti		; 40

	tsb $1C54.w		; 0C 54 1C
	cpy #$C898.w		; C0 98 C8
	clc		; 18
	iny		; C8
	clc		; 18
	bra  16.b		; 80 10
	ldy #$B130.w		; A0 30 B1
	brk $37.b		; 00 37
	sty $23.b		; 84 23
	bra -81.b		; 80 AF
	php		; 08
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	adc $004F00.l		; 6F 00 4F 00
	jsr $44A1.w		; 20 A1 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$5007.w		; E0 07 50
	and $78.b,S		; 23 78
	ora #$5F3C.w		; 09 3C 5F
	eor $603939.l,X		; 5F 39 39 60
	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpy #$2010.w		; C0 10 20
	bvs   0.b		; 70 00
	cpx #$FCFC.w		; E0 FC FC
	rti		; 40

	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	rti		; 40

	sei		; 78
	bra -124.b		; 80 84
	sei		; 78
	inc $DE7C.w,X		; FE 7C DE
	eor ($A7.b)		; 52 A7
	lda $36EF83.l,X		; BF 83 EF 36
	sta $000080.l		; 8F 80 00 00
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $52.b		; 00 52
	jsr $42A5.w		; 20 A5 42
	sta ($16.b,S),Y		; 93 16
	adc ($74.b)		; 72 74
	ror $7E0C.w,X		; 7E 0C 7E
	brk $7E.b		; 00 7E
	plp		; 28
	jmp ($B420.w)		; 6C 20 B4
	bvc -68.b		; 50 BC
	pla		; 68
	ldy $B470.w,X		; BC 70 B4
	sei		; 78
	tsb $0000.w		; 0C 00 00
	brk $28.b		; 00 28
	brk $20.b		; 00 20
	bpl  80.b		; 10 50
	php		; 08
	pla		; 68
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $F4.b		; 00 F4
	sec		; 38
	pei ($38.b)		; D4 38
	bit $18.b		; 24 18
	bit $3400.w,X		; 3C 00 34
	bpl  60.b		; 10 3C
	bpl  22.b		; 10 16
	tsb $000E.w		; 0C 0E 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	bpl   0.b		; 10 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	lsr $00.b		; 46 00
	lsr $20.b		; 46 20
	stz $70.b		; 64 70
	tsb $305E.w		; 0C 5E 30
	phy		; 5A
	bit $0C7A.w,X		; 3C 7A 0C
	dec $3C40.w		; CE 40 3C
	tsb $3C.b		; 04 3C
	tsb $18.b		; 04 18
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	brk $40.b		; 00 40
	bmi  53.b		; 30 35
	asl $0D1A.w		; 0E 1A 0D
	tas		; 1B
	ora $031D.w		; 0D 1D 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora $05.b,S		; 03 05
	ora ($06.b,X)		; 01 06
	asl $0D00.w		; 0E 00 0D
	brk $0D.b		; 00 0D
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $FF.b		; 02 FF
	phx		; DA
	lda $CAAECB.l		; AF CB AE CA
	inc $A4.b		; E6 A4
	ror $A4.b		; 66 A4
	eor [$85.b]		; 47 85
	eor [$85.b]		; 47 85
	cmp [$05.b]		; C7 05
	phx		; DA
	brk $CB.b		; 00 CB
	bpl -54.b		; 10 CA
	ora ($A4.b),Y		; 11 A4
	ora $19A4.w,Y		; 19 A4 19
	sta $38.b		; 85 38
	sta $38.b		; 85 38
	ora $38.b		; 05 38
	lda $37DE77.l,X		; BF 77 DE 37
	clv		; B8
	eor [$F0.b]		; 47 F0
	ldx $4C70.w		; AE 70 4C
	jsr $4010.w		; 20 10 40
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	brk $31.b		; 00 31
	ora ($46.b,X)		; 01 46
	asl $AC.b		; 06 AC
	tsb $8040.w		; 0C 40 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	.db $42, $C3		; 42 C3
	rti		; 40

	cmp $00.b,S		; C3 00
	.db $82, $04, $86		; 82 04 86
	tsb $86.b		; 04 86
	brk $86.b		; 00 86
	php		; 08
	stx $8C08.w		; 8E 08 8C
	bit $3E00.w,X		; 3C 00 3E
	cop $7C.b		; 02 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $0F.b		; 00 0F
	sec		; 38
	and $3D1E.w		; 2D 1E 3D
	asl $67.b		; 06 67
	jsr $0E7F.w		; 20 7F 0E
	lsr $5E30.w		; 4E 30 5E
	bit $66.b		; 24 66
	tsb $38.b		; 04 38
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $20.b		; 00 20
	clc		; 18
	asl $3000.w		; 0E 00 30
	brk $24.b		; 00 24
	brk $04.b		; 00 04
	clc		; 18
	clc		; 18
	clc		; 18
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	eor $3FC37F.l,X		; 5F 7F C3 3F
	sta $E7.b		; 85 E7
	cli		; 58
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	.db $82, $18, $00		; 82 18 00
	and [$08.b],Y		; 37 08
	and $4F02.w,X		; 3D 02 4F
	dec A		; 3A
	ora ($02.b,X)		; 01 02
	lda $3C20.w,Y		; B9 20 3C
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $00A1.w		; 20 A1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $005F5F.l,X		; 3F 5F 5F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6040.w		; C0 40 60
	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $000043.l		; 22 43 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($FBFC.w,X)		; FC FC FB
	jsr ($FDFF.w,X)		; FC FF FD
	sbc $39FDFC.l,X		; FF FC FD 39
	ldx $AEC2.w,Y		; BE C2 AE
	dex		; CA
	lda [$C5.b]		; A7 C5
	lda [$D5.b],Y		; B7 D5
	sei		; 78
	pea $14E9.w		; F4 E9 14
	jmp ($39E4.w,X)		; 7C E4 39
	dec A		; 3A
	rep #$01		; C2 01
	dex		; CA
	ora ($C5.b),Y		; 11 C5
	clc		; 18
	cmp $08.b,X		; D5 08
	inc $FF02.w,X		; FE 02 FF
	xce		; FB
	ror $98FB.w,X		; 7E FB 98
	adc [$E9.b],Y		; 77 E9
	sta [$3B.b],Y		; 97 3B
	and [$1F.b]		; 27 1F
	ora [$0E.b],Y		; 17 0E
	ora [$01.b]		; 07 01
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	ora ($72.b,X)		; 01 72
	cop $95.b		; 02 95
	tsb $21.b		; 04 21
	cmp $10.b,S		; C3 10
	sbc [$06.b]		; E7 06
	sbc ($06.b),Y		; F1 06
	ora ($1D.b,X)		; 01 1D
	ora $3E.b		; 05 3E
	and ($6F.b)		; 32 6F
	jsr ($BFBE.w,X)		; FC BE BF
	cmp $9F9F1F.l,X		; DF 1F 9F 9F
	xba		; EB
	ora $050001.l,X		; 1F 01 00 05
	cop $32.b		; 02 32
	ora ($6C.b,X)		; 01 6C
	bpl  86.b		; 10 56
	ora $05EE.w		; 0D EE 05
	rtl		; 6B

	tsb $1A.b		; 04 1A
	ora $B3.b,X		; 15 B3
	jmp ($BBF4.w,X)		; 7C F4 BB
	sbc $6376CB.l		; EF CB 76 63
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	rol $C0.b,X		; 36 C0
	sbc $FDF2.w,Y		; F9 F2 FD
	pea $0070.w		; F4 70 00
	txy		; 9B
	brk $D3.b		; 00 D3
	brk $6B.b		; 00 6B
	bra   2.b		; 80 02
	brk $39.b		; 00 39
	lda $06F0.w,Y		; B9 F0 06
	pei ($E2.b)		; D4 E2
	pla		; 68
	beq -56.b		; F0 C8
	beq  56.b		; F0 38
	cpy #$00D0.w		; C0 D0 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	and [$4D.b],Y		; 37 4D
	and ($FE.b,S),Y		; 33 FE
	ora ($99.b,X)		; 01 99
	ror $A9.b		; 66 A9
	lsr $69.b,X		; 56 69
	asl $49.b,X		; 16 49
	rol $49.b,X		; 36 49
	rol $37.b,X		; 36 37
	brk $30.b		; 00 30
	ora [$00.b]		; 07 00
	ora ($66.b,X)		; 01 66
	brk $56.b		; 00 56
	brk $16.b		; 00 16
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $95.b		; 00 95
	ror $6E95.w		; 6E 95 6E
	sbc $0E.b,X		; F5 0E
	ora $0E.b,X		; 15 0E
	ora $0E.b,X		; 15 0E
	ora $0E0100.l,X		; 1F 00 01 0E
	ora $0F.b,S		; 03 0F
	ror $6E00.w		; 6E 00 6E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $03.b		; 04 03
	ora $020E02.l		; 0F 02 0E 02
	asl $0E02.w		; 0E 02 0E
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	clc		; 18
	asl $0E08.w,X		; 1E 08 0E
	inx		; E8
	tsb $0CE8.w		; 0C E8 0C
	inx		; E8
	tsb $0CE0.w		; 0C E0 0C
	cpx #$E00C.w		; E0 0C E0
	php		; 08
	cpx $04.b		; E4 04
	pea $F004.w		; F4 04 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpx #$F0E0.w		; E0 E0 F0
	bvs  -8.b		; 70 F8
	sed		; F8
	sed		; F8
	cld		; D8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	cpy #$00C0.w		; C0 C0 00
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	cpx #$F0E8.w		; E0 E8 F0
	cld		; D8
	bmi  40.b		; 30 28
	bne  -8.b		; D0 F8
	brk $20.b		; 00 20
	rts		; 60

	eor ($C1.b,X)		; 41 C1
	bra -125.b		; 80 83
	php		; 08
	asl $1810.w		; 0E 10 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	brk $C0.b		; 00 C0
	ora $003E00.l,X		; 1F 00 3E 00
	ror $F002.w,X		; 7E 02 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	rol $F017.w,X		; 3E 17 F0
	eor $003CC0.l		; 4F C0 3C 00
	sbc ($03.b)		; F2 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	and $80BF20.l		; 2F 20 BF 80
	sbc $00FC00.l,X		; FF 00 FC 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b		; 05 00
	ora $1B03.w		; 0D 03 1B
	tsb $003E.w		; 0C 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpx #$20C0.w		; E0 C0 20
	rti		; 40

	jsr $A040.w		; 20 40 A0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$44C0.w		; C0 C0 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$5007.w		; E0 07 50
	and $78.b,S		; 23 78
	eor #$3C3C.w		; 49 3C 3C
	asl $3939.w		; 0E 39 39
	rts		; 60

	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	jsl $FE80BF.l		; 22 BF 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpy #$2010.w		; C0 10 20
	bvs   0.b		; 70 00
	cpx #$C000.w		; E0 00 C0
	rti		; 40

	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	bra -45.b		; 80 D3
.INDEX 8
	sep #$D3		; E2 D3
.INDEX 8
	sep #$D1		; E2 D1
	sbc ($D9.b,X)		; E1 D9
	sbc #$F0E8.w		; E9 E8 F0
	sbc #$FEF0.w		; E9 F0 FE
	brk $F0.b		; 00 F0
	inc $0CE2.w,X		; FE E2 0C
	sep #$0C		; E2 0C
	sbc ($0E.b,X)		; E1 0E
	sbc #$F006.w		; E9 06 F0
	ora [$F0.b]		; 07 F0
	asl $00.b		; 06 00
	brk $0C.b		; 00 0C
	tsb $8189.w		; 0C 89 81
	bcc -128.b		; 90 80
	cpx #$40.b		; E0 40
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($70.b,X)		; 81 70
	bra  96.b		; 80 60
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	eor $BC2FBF.l		; 4F BF 2F BC
	and $010FFF.l		; 2F FF 0F 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($4D.b,X)		; 01 4D
	and $2D.b,S		; 23 2D
	eor $0F4F20.l		; 4F 20 4F 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $F6.b		; 00 F6
	sbc $BFB8.w,Y		; F9 B8 BF
	bvs -25.b		; 70 E7
	sta [$CF.b]		; 87 CF
	sta $FF3F7F.l		; 8F 7F 3F FF
	lda $BF7F7F.l,X		; BF 7F 7F BF
	bcs -32.b		; B0 E0
	bpl -32.b		; 10 E0
	pla		; 68
	txa		; 8A
	ldx $37.b,Y		; B6 37
	ora $FF1FCF.l		; 0F CF 1F FF
	ora $3F8F7F.l,X		; 1F 7F 8F 3F
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $B8.b		; 00 B8
	plb		; AB
	cpx $E3A5.w		; EC A5 E3
	lda $CFF0E7.l,X		; BF E7 F0 CF
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	bmi -128.b		; 30 80
	tsa		; 3B
	cpy #$A7.b		; C0 A7
	cpy #$CF.b		; C0 CF
	ldy #$00.b		; A0 00
	ora [$02.b]		; 07 02
	asl $38C9.w,X		; 1E C9 38
	eor ($B0.b,S),Y		; 53 B0
	inc $E8A0.w		; EE A0 E8
	cpy #$20.b		; C0 20
	cpy #$F2.b		; C0 F2
	ora ($01.b,S),Y		; 13 01
	ora ($05.b,X)		; 01 05
	tsb $17.b		; 04 17
	bpl -81.b		; 10 AF
	jsr $009F.w		; 20 9F 00
	cmp $00DF00.l,X		; DF 00 DF 00
	ora $9E01.w		; 0D 01 9E
	bra 120.b		; 80 78
	ora ($E4.b,X)		; 01 E4
	ora [$88.b]		; 07 88
	tsb $1810.w		; 0C 10 18
	brk $30.b		; 00 30
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	adc $01FF00.l,X		; 7F 00 FF 01
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1C.b		; 05 1C
	php		; 08
	and $1C633A.l		; 2F 3A 63 1C
	rti		; 40

	rol $60.b		; 26 60
	php		; 08
	sec		; 38
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($01.b),Y		; 11 01
	trb $3F00.w		; 1C 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $6E.b		; 00 6E
	iny		; C8
	sbc $C0FEC6.l		; EF C6 FE C0
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	bpl -58.b		; 10 C6
	bpl -64.b		; 10 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $1D.b		; 00 1D
	phd		; 0B
	adc $4BEF17.l,X		; 7F 17 EF 4B
	cmp $A2.b,X		; D5 A2
	lsr $2C28.w,X		; 5E 28 2C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $4B.b		; 00 4B
	bpl -94.b		; 10 A2
	php		; 08
	plp		; 28
	bra  16.b		; 80 10
	cpy #$1F.b		; C0 1F
	tda		; 7B
	eor [$C5.b]		; 47 C5
	sta $86.b		; 85 86
	ora ($1C.b),Y		; 11 1C
	jsr $4038.w		; 20 38 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	ora $00.b,S		; 03 00
	and $7800.w,Y		; 39 00 78
	brk $E8.b		; 00 E8
	php		; 08
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	tsb $1C.b		; 04 1C
	bpl  48.b		; 10 30
	jsr $4060.w		; 20 60 40
	cpy #$80.b		; C0 80
	sta ($04.b,X)		; 81 04
	ora [$00.b]		; 07 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	ora ($F8.b,X)		; 01 F8
	brk $5C.b		; 00 5C
	cmp ($5E.b,X)		; C1 5E
	cmp $5E.b,S		; C3 5E
	cmp $58.b,S		; C3 58
	cmp $18.b,S		; C3 18
	cmp $18.b,S		; C3 18
.INDEX 16
	rep #$18		; C2 18
	.db $42, $28		; 42 28
	.db $62, $3E, $00		; 62 3E 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3E.b		; 00 3E
	cop $7E.b		; 02 7E
	.db $42, $7C		; 42 7C
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $50.b		; 00 50
	cpy $00.b		; C4 00
	dec $24.b		; C6 24
	inc $24.b		; E6 24
	ror $30.b		; 66 30
	adc $18.b,S		; 63 18
	eor $1E.b,S		; 43 1E
	eor $1E.b,S		; 43 1E
	eor $38.b,S		; 43 38
	brk $7C.b		; 00 7C
	mvp $40,$58		; 44 58 40
	clc		; 18
	brk $1E.b		; 00 1E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	eor ($1C.b,X)		; 41 1C
	eor ($1C.b,X)		; 41 1C
	eor ($1C.b,X)		; 41 1C
	eor ($1E.b,X)		; 41 1E
	eor $1E.b,S		; 43 1E
	eor $1C.b,S		; 43 1C
	eor $3C.b,S		; 43 3C
	adc $3E.b,S		; 63 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $1E.b		; 02 1E
	cop $38.b		; 02 38
	.db $62, $08, $62		; 62 08 62
	php		; 08
	.db $62, $08, $22		; 62 08 22
	php		; 08
	jsl $7D201E.l		; 22 1E 20 7D
	asl $3E5D.w,X		; 1E 5D 3E
	trb $3C00.w		; 1C 00 3C
	jsr $203C.w		; 20 3C 20
	trb $1C00.w		; 1C 00 1C
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $5F.b		; 00 5F
	bmi 115.b		; 30 73
	cop $7F.b		; 02 7F
	sec		; 38
	ror $4E00.w,X		; 7E 00 4E
	bmi 118.b		; 30 76
	tsb $6E.b		; 04 6E
	plp		; 28
	ply		; 7A
	tsb $30.b		; 04 30
	brk $02.b		; 00 02
	tsb $0038.w		; 0C 38 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	tsb $08.b		; 04 08
	plp		; 28
	bpl   4.b		; 10 04
	brk $1E.b		; 00 1E
	ora $6A.b		; 05 6A
	ora ($D9.b),Y		; 11 D9
	bmi  -3.b		; 30 FD
	cmp $2C3F.w,Y		; D9 3F 2C
	rol A		; 2A
	bit $8C.b,X		; 34 8C
	cpx #$C000.w		; E0 00 C0
	ora $00.b		; 05 00
	ora ($04.b),Y		; 11 04
	bmi   6.b		; 30 06
	ora $CC02.w,Y		; 19 02 CC
	brk $C4.b		; 00 C4
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	beq  64.b		; F0 40
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $B5.b		; 00 B5
	txs		; 9A
	lsr $3EC1.w,X		; 5E C1 3E
	adc $197F.w		; 6D 7F 19
	ror $5F0B.w,X		; 7E 0B 5F
	and [$55.b]		; 27 55
	and $621D63.l		; 2F 63 1D 62
	brk $31.b		; 00 31
	brk $0D.b		; 00 0D
	brk $19.b		; 00 19
	brk $0A.b		; 00 0A
	ora $20.b,S		; 03 20
	ora [$2D.b]		; 07 2D
	ora $1C.b,S		; 03 1C
	ora ($BE.b,X)		; 01 BE
	adc $BF9F7F.l,X		; 7F 7F 9F BF
	adc $F767FF.l		; 6F FF 67 F7
	sbc ($FF.b)		; F2 FF
	sbc $EDCF.w,X		; FD CF ED
	cmp $771CDD.l,X		; DF DD 1C 77
	sta $661A.w		; 8D 1A 66
	ora $0766.w		; 0D 66 07
	sbc ($0A.b)		; F2 0A
	sbc $8DF0.w		; ED F0 8D
	beq -51.b		; F0 CD
	beq   3.b		; F0 03
	clc		; 18
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $000308.l		; 0F 08 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ldx #$A036.w		; A2 36 A0
	rol $A1.b,X		; 36 A1
	and ($A0.b,S),Y		; 33 A0
	and ($A0.b,S),Y		; 33 A0
	and ($E0.b),Y		; 31 E0
	and ($E0.b),Y		; 31 E0
	bmi -64.b		; 30 C0
	bmi -63.b		; 30 C1
	brk $C3.b		; 00 C3
	cop $C0.b		; 02 C0
	brk $C1.b		; 00 C1
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $C2A7.w		; 20 A7 C2
	sta [$C9.b]		; 87 C9
	dey		; 88
	dec $E7C2.w,X		; DE C2 E7
	ora $CF.b,S		; 03 CF
	stx $FE.b		; 86 FE
	sbc $FF.b,X		; F5 FF
	inx		; E8
	xce		; FB
	tsx		; BA
	clv		; B8
	bcs -80.b		; B0 B0
	lda ($A1.b,X)		; A1 A1
	phx		; DA
	clc		; 18
	and ($B4.b)		; 32 B4
	sta $88.b		; 85 88
	inc $FA.b		; E6 FA
	inx		; E8
	beq   0.b		; F0 00
	jsr $C000.w		; 20 00 C0
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	jsr $1630.w		; 20 30 16
	clc		; 18
	phb		; 8B
	stx $C0.b		; 86 C0
	cpy #$0000.w		; C0 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$E000.w		; C0 00 E0
	brk $76.b		; 00 76
	brk $02.b		; 00 02
	asl $05.b		; 06 05
	tsb $180A.w		; 0C 0A 18
	ora $31.b,X		; 15 31
	rol $67.b		; 26 67
	jsl $311463.l		; 22 63 14 31
	phd		; 0B
	ora $0001.w,Y		; 19 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1800.w		; 0E 00 18
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $20.b		; 00 20
	ror $20.b		; 66 20
	ror $04.b		; 66 04
	ror $04.b		; 66 04
	rol $00.b		; 26 00
	jsl $5E0072.l		; 22 72 00 5E
	bmi  93.b		; 30 5D
	rol $041C.w,X		; 3E 1C 04
	trb $3804.w		; 1C 04 38
	jsr $0018.w		; 20 18 00
	trb $0C00.w		; 1C 00 0C
	brk $30.b		; 00 30
	brk $3E.b		; 00 3E
	brk $03.b		; 00 03
	tsb $0C07.w		; 0C 07 0C
	cop $18.b		; 02 18
	ora $310419.l		; 0F 19 04 31
	inc A		; 1A
	and ($14.b,S),Y		; 33 14
	ror $28.b		; 66 28
	jmp ($0407.w)		; 6C 07 04
	ora $00.b,S		; 03 00
	ora $000608.l		; 0F 08 06 00
	ora $000C11.l,X		; 1F 11 0C 00
	sec		; 38
	jsr $0010.w		; 20 10 00
	ldx $F670.w,Y		; BE 70 F6
	tsb $7E.b		; 04 7E
	bmi 114.b		; 30 72
	tsb $307E.w		; 0C 7E 30
	tda		; 7B
	asl A		; 0A
	adc $1E2D10.l		; 6F 10 2D 1E
	bvs   0.b		; 70 00
	tsb $08.b		; 04 08
	bmi   0.b		; 30 00
	tsb $3000.w		; 0C 00 30
	brk $0A.b		; 00 0A
	tsb $10.b		; 04 10
	brk $1E.b		; 00 1E
	brk $26.b		; 00 26
	ora $170639.l,X		; 1F 39 06 17
	ora ($13.b,X)		; 01 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	bra -80.b		; 80 B0
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5A.b		; 00 5A
	bit $3C5A.w,X		; 3C 5A 3C
	lsr $7420.w,X		; 5E 20 74
	bpl  60.b		; 10 3C
	brk $3C.b		; 00 3C
	clc		; 18
	trb $00.b		; 14 00
	clc		; 18
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	php		; 08
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	adc $E71E.w,Y		; 79 1E E7
	rol $7A.b		; 26 7A
	wai		; CB
	sbc $FEF5.w,X		; FD F5 FE
	plx		; FA
	ror $F9F9.w		; 6E F9 F9
	inc $7E5D.w,X		; FE 5D 7E
	asl $2600.w,X		; 1E 00 26
	clc		; 18
	phk		; 4B
	sty $B5.b		; 84 B5
	.db $62, $5A, $B1		; 62 5A B1
	pla		; 68
	pei ($B9.b)		; D4 B9
	adc $D9.b		; 65 D9
	and $D1.b		; 25 D1
	inc $AE9D.w		; EE 9D AE
	sta $550E.w,X		; 9D 0E 55
	stx $F4.b		; 86 F4
	lda [$3A.b]		; A7 3A
	cmp $01BA.w		; CD BA 01
	dec A		; 3A
	eor $EE.b		; 45 EE
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $A6.b		; 00 A6
	php		; 08
	sty $08.b		; 84 08
	asl A		; 0A
	cop $C6.b		; 02 C6
	dec $C6.b		; C6 C6
	dec $00.b,X		; D6 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $180A.w		; 0C 0A 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	and $1B.b		; 25 1B
	tsa		; 3B
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora ($01.b,X)		; 01 01
	asl $0F03.w		; 0E 03 0F
	cop $0E.b		; 02 0E
	tas		; 1B
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $05.b		; 04 05
	tsb $F7.b		; 04 F7
	sbc $E7.b,X		; F5 E7
	sbc $A7.b		; E5 A7
	cmp $67.b		; C5 67
	lda $47.b		; A5 47
	sta $C7.b		; 85 C7
	ora $E7.b		; 05 E7
	sta $3F.b		; 85 3F
	jsr $48B5.w		; 20 B5 48
	sbc $18.b		; E5 18
	cmp $18.b		; C5 18
	lda $18.b		; A5 18
	sta $38.b		; 85 38
	ora $38.b		; 05 38
	ora $18.b		; 05 18
	cpy #$0300.w		; C0 00 03
	asl $04.b		; 06 04
	tsb $1808.w		; 0C 08 18
	asl $30.b,X		; 16 30
	asl $3D60.w		; 0E 60 3D
	adc ($1C.b,X)		; 61 1C
	cmp ($7A.b,X)		; C1 7A
	cmp $01.b,S		; C3 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	jsr $001E.w		; 20 1E 00
	adc $003C41.l,X		; 7F 41 3C 00
	bra  48.b		; 80 30
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$8020.w		; E0 20 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $DF7F6F.l,X		; BF 6F 7F DF
	cmp $3F3D3D.l,X		; DF 3D 3D 3F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $1FD900.l		; 6F 00 D9 1F
	ora ($3E.b,X)		; 01 3E
	bit $0303.w,X		; 3C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFDFDF.l,X		; FF DF DF FF
	and $0F3F.w,Y		; 39 3F 0F
	ora $000000.l		; 0F 00 00 00
	brk $FC.b		; 00 FC
	brk $9F.b		; 00 9F
	jsr ($E21F.w,X)		; FC 1F E2
	cmp $393A.w		; CD 3A 39
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	cmp $618241.l		; CF 41 82 61
	bra -80.b		; 80 B0
	rti		; 40

	inx		; E8
	bvc -76.b		; 50 B4
	pla		; 68
	sbc ($AC.b)		; F2 AC
	phy		; 5A
	bit $C2.b,X		; 34 C2
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	brk $50.b		; 00 50
	brk $68.b		; 00 68
	brk $AC.b		; 00 AC
	brk $34.b		; 00 34
	bra 124.b		; 80 7C
	bvc  44.b		; 50 2C
	clc		; 18
	bit $1828.w,X		; 3C 28 18
	brk $10.b		; 00 10
	php		; 08
	bmi  24.b		; 30 18
	beq  60.b		; F0 3C
	cpy #$50CC.w		; C0 CC 50
	bra  24.b		; 80 18
	cpy #$C028.w		; C0 28 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	php		; 08
	php		; 08
	sec		; 38
	php		; 08
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	php		; 08
	ora $F507E5.l		; 0F E5 07 F5
	ora [$F5.b]		; 07 F5
	ora [$F5.b]		; 07 F5
	ora [$F4.b]		; 07 F4
	ora [$74.b]		; 07 74
	ora [$74.b]		; 07 74
	ora [$F5.b]		; 07 F5
	ora $F8.b		; 05 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	ora ($F8.b,X)		; 01 F8
	brk $F8.b		; 00 F8
	brk $88.b		; 00 88
	sty $0E08.w		; 8C 08 0E
	brk $06.b		; 00 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	bra -126.b		; 80 82
	bra -125.b		; 80 83
	brk $83.b		; 00 83
	bvs   0.b		; 70 00
	pea $FC04.w		; F4 04 FC
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	cop $FE.b		; 02 FE
	.db $82, $36, $10		; 82 36 10
	and $6F06.w,Y		; 39 06 6F
	jsr $1476.w		; 20 76 14
	tsx		; BA
	rts		; 60

	ldy $78.b,X		; B4 78
	ldy $78.b,X		; B4 78
	ldy $1040.w,X		; BC 40 10
	ora #$0006.w		; 09 06 00
	jsr $1410.w		; 20 10 14
	php		; 08
	rts		; 60

	tsb $78.b		; 04 78
	brk $78.b		; 00 78
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	adc $2F500D.l		; 6F 0D 50 2F
	bvs   3.b		; 70 03
	plp		; 28
	ora ($3C.b),Y		; 11 3C
	tsb $1E.b		; 04 1E
	bit $D60F.w,X		; 3C 0F D6
	and $2F3030.l		; 2F 30 30 2F
	jsr $000F.w		; 20 0F 00
	ora [$10.b],Y		; 17 10
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	and $4001.w		; 2D 01 40
	sbc $A0DEF8.l,X		; FF F8 DE A0
	jmp ($08E0.w)		; 6C E0 08
	bcc  56.b		; 90 38
	bra 112.b		; 80 70
	brk $20.b		; 00 20
	bmi -64.b		; 30 C0
	asl A		; 0A
	asl A		; 0A
	cpy #$B080.w		; C0 80 B0
	rti		; 40

	beq   0.b		; F0 00
	cpx #$E020.w		; E0 20 E0
	rts		; 60

	cpy #$0000.w		; C0 00 00
	brk $1A.b		; 00 1A
	cmp $78.b,S		; C3 78
	cmp $34.b,S		; C3 34
	stx $78.b		; 86 78
	sty $8CE0.w		; 8C E0 8C
	bvc  24.b		; 50 18
	cpx #$8030.w		; E0 30 80
	bmi 124.b		; 30 7C
	rti		; 40

	rol $7802.w,X		; 3E 02 78
	brk $F0.b		; 00 F0
	bra 120.b		; 80 78
	php		; 08
	cpx #$C000.w		; E0 00 C0
	brk $E0.b		; 00 E0
	jsr $0300.w		; 20 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $4300.w,Y		; 39 00 43
	jsl $630263.l		; 22 63 02 63
	brk $21.b		; 00 21
	bpl  49.b		; 10 31
	bpl  49.b		; 10 31
	brk $31.b		; 00 31
	brk $11.b		; 00 11
	rol $1C02.w,X		; 3E 02 1C
	brk $3C.b		; 00 3C
	jsr $001E.w		; 20 1E 00
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	bpl  14.b		; 10 0E
	brk $57.b		; 00 57
	ora $5D3FA7.l,X		; 1F A7 3F 5D
	adc $2FEFB3.l		; 6F B3 EF 2F
	lda $3F3FEF.l,X		; BF EF 3F 3F
	cmp $E6CF37.l,X		; DF 37 CF E6
	ora ($C3.b,X)		; 01 C3
	ora $23138C.l		; 0F 8C 13 23
	trb $1F26.w		; 1C 26 1F
	and [$1F.b]		; 27 1F
	cmp $1CC303.l,X		; DF 03 C3 1C
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	dey		; 88
	sty $8C08.w		; 8C 08 8C
	brk $86.b		; 00 86
	mvp $E0,$C6		; 44 C6 E0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	jmp ($3804.w,X)		; 7C 04 38
	brk $4C.b		; 00 4C
	dec $CE4C.w		; CE 4C CE
	tsb $86.b		; 04 86
	brk $82.b		; 00 82
	brk $82.b		; 00 82
	rti		; 40

	rep #$40		; C2 40
	rep #$00		; C2 00
	cmp $30.b,S		; C3 30
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	.db $42, $00		; 42 00
	cpy #$6040.w		; C0 40 60
	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	trb $14.b		; 14 14
	jsr $7013.w		; 20 13 70
	cop $7E.b		; 02 7E
	bmi -70.b		; 30 BA
	jmp ($4CBA.w,X)		; 7C BA 4C
	cpy $B400.w		; CC 00 B4
	bra -56.b		; 80 C8
	bmi  14.b		; 30 0E
	cop $0C.b		; 02 0C
	brk $30.b		; 00 30
	brk $7C.b		; 00 7C
	brk $4C.b		; 00 4C
	brk $00.b		; 00 00
	bmi -128.b		; 30 80
	pha		; 48
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1C.b		; 04 1C
	ora ($30.b)		; 12 30
	rol $0C70.w		; 2E 70 0C
	adc ($14.b,X)		; 61 14
	dec $40.b		; C6 40
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	ora $39391F.l,X		; 1F 1F 39 39
	and ($33.b,S),Y		; 33 33
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $1030.w		; 20 30 10
	clc		; 18
	bmi   4.b		; 30 04
	bmi   2.b		; 30 02
	trb $4E.b		; 14 4E
	rol $9F.b		; 26 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F8F8.w		; E0 F8 F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	rts		; 60

	rts		; 60

	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $300000.l		; 0F 00 00 30
	brk $20.b		; 00 20
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpx #$C020.w		; E0 20 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $010701.l		; 0F 01 07 01
	ora $0E04.w		; 0D 04 0E
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	asl $0A.b		; 06 0A
	ora ($0C.b,X)		; 01 0C
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	ora ($04.b,X)		; 01 04
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	ora $00.b		; 05 00
	brk $B0.b		; 00 B0
	iny		; C8
	cpx #$4088.w		; E0 88 40
	dey		; 88
	bra  12.b		; 80 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $00C0.w		; 0C C0 00
	bcc   0.b		; 90 00
	bcs   0.b		; B0 00
	sei		; 78
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	lsr $00.b		; 46 00
	and $1F1E07.l,X		; 3F 07 1E 1F
	ora $071D0F.l		; 0F 0F 1D 07
	ora ($0F.b,S),Y		; 13 0F
	ora $190F.w,X		; 1D 0F 19
	asl $3800.w		; 0E 00 38
	ora $06.b		; 05 06
	asl $0F.b,X		; 16 0F
	asl A		; 0A
	ora [$04.b]		; 07 04
	ora $0E.b,S		; 03 0E
	ora ($0F.b,X)		; 01 0F
	brk $0E.b		; 00 0E
	brk $47.b		; 00 47
	adc $FF7F5E.l,X		; 7F 5E 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFBFFF.l,X		; FF FF BF BF
	lda $47FFFF.l,X		; BF FF FF 47
	sec		; 38
	jmp $FE3F.w		; 4C 3F FE
	ora $FFF7EF.l		; 0F EF F7 FF
	sbc [$AF.b],Y		; F7 AF
	sbc [$1F.b],Y		; F7 1F
	sbc $C801FE.l		; EF FE 01 C8
	sbc ($C8.b)		; F2 C8
	inc $10.b,X		; F6 10
	sbc $C0C680.l,X		; FF 80 C6 C0
	sbc $E0A0.w,Y		; F9 A0 E0
	jsr ($6FC0.w,X)		; FC C0 6F
	stp		; DB
	ora $C9ED.w		; 0D ED C9
	ora #$8000.w		; 09 00 80
	lda $80B9.w,Y		; B9 B9 80
	cpy #$C020.w		; C0 20 C0
	rti		; 40

	bra  91.b		; 80 5B
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  48.b		; 80 30
	bcs 124.b		; B0 7C
	jmp ($7E7E.w,X)		; 7C 7E 7E
	dec $00FE.w		; CE FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $6C.b		; 00 6C
	bpl  90.b		; 10 5A
	bit $708E.w		; 2C 8E 70
	adc ($D2.b,S),Y		; 73 D2
	cld		; D8
	inx		; E8
	cld		; D8
	inx		; E8
	sed		; F8
	inx		; E8
	cpx $EDF4.w		; EC F4 ED
	pea $01FE.w		; F4 FE 01
	brk $7F.b		; 00 7F
	cmp ($0C.b)		; D2 0C
	inx		; E8
	ora [$E8.b]		; 07 E8
	ora [$E8.b]		; 07 E8
	ora [$F4.b]		; 07 F4
	ora $F4.b,S		; 03 F4
	cop $01.b		; 02 01
	ora ($38.b,X)		; 01 38
	sec		; 38
	sbc $80FC7A.l,X		; FF 7A FC 80
	bit $2F24.w,X		; 3C 24 2F
	ora $A03F5C.l,X		; 1F 5C 3F A0
	adc $01F900.l,X		; 7F 00 F9 01
	sbc [$79.b],Y		; F7 79
	brk $83.b		; 00 83
	brk $23.b		; 00 23
	cpy #$D010.w		; C0 10 D0
	jsl $5858A2.l		; 22 A2 58 58
	cpy #$20C0.w		; C0 C0 20
	jsr $385F.w		; 20 5F 38
	eor $5D3E.w,X		; 5D 3E 5D
	rol $067D.w,X		; 3E 7D 06
	adc [$20.b]		; 67 20
	ror $04.b,X		; 76 04
	ror $7620.w		; 6E 20 76
	trb $38.b		; 14 38
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $06.b		; 00 06
	brk $20.b		; 00 20
	clc		; 18
	tsb $08.b		; 04 08
	jsr $1410.w		; 20 10 14
	php		; 08
	lsr $5A20.w,X		; 5E 20 5A
	bit $3E5D.w,X		; 3C 5D 3E
	lsr A		; 4A
	bit $0B76.w,X		; 3C 76 0B
	and $2302.w		; 2D 02 23
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	ora ($0B.b,X)		; 01 0B
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	sbc ($3D.b),Y		; F1 3D
	ora ($E3.b,X)		; 01 E3
	ora $31.b,S		; 03 31
	and $13FF01.l,X		; 3F 01 FF 13
	ora $9F1F97.l,X		; 1F 97 1F 9F
	ora $FF000F.l,X		; 1F 0F 00 FF
	brk $FD.b		; 00 FD
	brk $C1.b		; 00 C1
	brk $01.b		; 00 01
	asl $0F10.w		; 0E 10 0F
	ora ($0F.b,S),Y		; 13 0F
	asl $0A01.w,X		; 1E 01 0A
	sta ($0E.b,S),Y		; 93 0E
	sta ($4F.b),Y		; 91 4F
	cmp ($27.b),Y		; D1 27
	beq  23.b		; F0 17
	bvs -77.b		; 70 B3
	sed		; F8
	lsr A		; 4A
	cpx $FFE8.w		; EC E8 FF
	jmp ($6E60.w)		; 6C 60 6E
	adc ($2F.b,X)		; 61 2F
	and ($0F.b,X)		; 21 0F
	brk $0F.b		; 00 0F
	brk $8F.b		; 00 8F
	php		; 08
	eor [$84.b],Y		; 57 84
	ldy #$D240.w		; A0 40 D2
	sbc $849F46.l,X		; FF 46 9F 84
	lsr $1CD0.w,X		; 5E D0 1C
	bra  -8.b		; 80 F8
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$6000.w		; A0 00 60
	bra -32.b		; 80 E0
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($31.b,X)		; 01 31
	brk $31.b		; 00 31
	bpl  49.b		; 10 31
	bpl  49.b		; 10 31
	cop $23.b		; 02 23
	brk $23.b		; 00 23
	brk $22.b		; 00 22
	jmp ($1E06.w,X)		; 7C 06 1E
	bpl  31.b		; 10 1F
	ora ($0E.b),Y		; 11 0E
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $0C04.w		; 0C 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	bpl  28.b		; 10 1C
	bpl  24.b		; 10 18
	bmi  56.b		; 30 38
	jsr $2038.w		; 20 38 20
	bmi  32.b		; 30 20
	bmi -16.b		; 30 F0
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	cpx #$C000.w		; E0 00 C0
	brk $D0.b		; 00 D0
	bpl -64.b		; 10 C0
	brk $C0.b		; 00 C0
	brk $19.b		; 00 19
	asl $0E31.w		; 0E 31 0E
	rol $4201.w,X		; 3E 01 42
	and $3D42.w,X		; 3D 42 3D
	bit $1B.b		; 24 1B
	trb $0903.w		; 1C 03 09
	asl $0E.b		; 06 0E
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	brk $3D.b		; 00 3D
	brk $3D.b		; 00 3D
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $BF.b		; 00 BF
	adc $BF03FF.l,X		; 7F FF 03 BF
	cli		; 58
	sbc [$53.b],Y		; F7 53
	inc $52.b,X		; F6 52
	inc $52.b,X		; F6 52
	inc $52.b,X		; F6 52
	adc [$D5.b],Y		; 77 D5
	ora [$FE.b]		; 07 FE
	ora $03.b,S		; 03 03
	cli		; 58
	brk $53.b		; 00 53
	php		; 08
	eor ($09.b)		; 52 09
	eor ($09.b)		; 52 09
	eor ($09.b)		; 52 09
	cmp $08.b,X		; D5 08
	sbc $EBDFDB.l		; EF DB DF EB
	lda $01FF60.l		; AF 60 FF 01
	jsr ($0104.w,X)		; FC 04 01
	brk $03.b		; 00 03
	ora ($82.b,X)		; 01 82
	bra -37.b		; 80 DB
	ora $48.b,S		; 03 48
	sta $20.b,S		; 83 20
	rti		; 40

	ora ($00.b,X)		; 01 00
	tsb $03.b		; 04 03
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	sta ($7C.b,X)		; 81 7C
	inc $E8FE.w		; EE FE E8
	sbc $661FE1.l,X		; FF E1 1F 66
	jsr $41DD.w		; 20 DD 41
	bcs -121.b		; B0 87
	.db $62, $0E, $C5		; 62 0E C5
	trb $FCCA.w		; 1C CA FC
	pla		; 68
	beq   6.b		; F0 06
	asl $1F.b		; 06 1F
	bra  62.b		; 80 3E
	brk $79.b		; 00 79
	ora ($F5.b,X)		; 01 F5
	tsb $EB.b		; 04 EB
	php		; 08
	ora $38187F.l,X		; 1F 7F 18 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	ora #$0218.w		; 09 18 02
	ora $1B05.w,Y		; 19 05 1B
	phd		; 0B
	ora $20.b		; 05 20
	jsr $0007.w		; 20 07 00
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	asl $00.b		; 06 00
	ora $0B08.w		; 0D 08 0B
	php		; 08
	ora $00.b		; 05 00
	inc $36F2.w		; EE F2 36
	tsb $327F.w		; 0C 7F 32
	inc $45.b		; E6 45
	tyx		; BB
	cop $D6.b		; 02 D6
	pha		; 48
	pei ($88.b)		; D4 88
	sed		; F8
	bcs   1.b		; B0 01
	brk $CD.b		; 00 CD
	brk $B2.b		; 00 B2
	brk $45.b		; 00 45
	clc		; 18
	cop $44.b		; 02 44
	pha		; 48
	jsr $2088.w		; 20 88 20
	bcs   0.b		; B0 00
	pea $FEFA.w		; F4 FA FE
	jsr ($F4DE.w,X)		; FC DE F4
	adc [$FA.b],Y		; 77 FA
	sbc $FAFA.w,X		; FD FA FA
	sbc $FCFA.w,X		; FD FA FC
	plx		; FA
	jsr ($A0F0.w,X)		; FC F0 A0
	jmp.w [$54A0]		; DC A0 54
	ldy #$9862.w		; A0 62 98
	ldy #$F278.w		; A0 78 F2
	plx		; FA
	sbc ($FB.b,S),Y		; F3 FB
	sbc ($FB.b,S),Y		; F3 FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	rti		; 40

	ldy #$0000.w		; A0 00 00
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
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $7F.b		; 05 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	asl $3E.b		; 06 3E
	jsr $2960.w		; 20 60 29
	adc $0A.b,S		; 63 0A
	and $17.b,S		; 23 17
	bit $0F.b,X		; 34 0F
	ora ($1C.b),Y		; 11 1C
	tsb $0000.w		; 0C 00 00
	ora ($00.b,X)		; 01 00
	ora $001C00.l,X		; 1F 00 1C 00
	trb $0800.w		; 1C 00 08
	brk $01.b		; 00 01
	brk $0C.b		; 00 0C
	ora $00.b,S		; 03 00
	rol $FF0C.w,X		; 3E 0C FF
	sta ($83.b)		; 92 83
	asl A		; 0A
	ora $58.b,S		; 03 58
	cmp $B4.b,S		; C3 B4
	stx $F0.b		; 86 F0
	asl $E8.b		; 06 E8
	tsb $0000.w		; 0C 00 00
	and ($32.b)		; 32 32
	jmp ($FC00.w,X)		; 7C 00 FC
	brk $BE.b		; 00 BE
	.db $82, $78, $00		; 82 78 00
	jsr ($F004.w,X)		; FC 04 F0
	brk $09.b		; 00 09
	asl $11.b		; 06 11
	asl $0E11.w		; 0E 11 0E
	ora #$0706.w		; 09 06 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8B.b		; 00 8B
	sec		; 38
	eor [$70.b],Y		; 57 70
	sta [$E0.b]		; 87 E0
	and $C35AE1.l		; 2F E1 5A C3
	ldy $86.b,X		; B4 86
	rts		; 60

	tsb $38A0.w		; 0C A0 38
	cmp [$10.b],Y		; D7 10
	sta $203F00.l		; 8F 00 3F 20
	asl $3C00.w,X		; 1E 00 3C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	php		; 08
	cpy #$D000.w		; C0 00 D0
	clc		; 18
	ldy #$0030.w		; A0 30 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
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
	bmi -16.b		; 30 F0
	jsr $20E0.w		; 20 E0 20
	rts		; 60

	jsr $2060.w		; 20 60 20
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	eor $405F40.l		; 4F 40 5F 40
	ora $001F00.l,X		; 1F 00 1F 00
	ora $203F00.l,X		; 1F 00 3F 20
	and $001F20.l,X		; 3F 20 1F 00
	cpy #$40E0.w		; C0 E0 40
	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $3F03.w		; 0D 03 3F
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	cop $19.b		; 02 19
	asl $76.b		; 06 76
	tsb $5CAA.w		; 0C AA 5C
	cpx $B4D8.w		; EC D8 B4
	iny		; C8
	cli		; 58
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $5C.b		; 00 5C
	brk $D8.b		; 00 D8
	brk $C8.b		; 00 C8
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1C.b		; 04 1C
	tsb $20.b		; 04 20
	and $401660.l		; 2F 60 16 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	bmi  56.b		; 30 38
	bmi   4.b		; 30 04
	php		; 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F8F8.w		; C0 F8 F8
	jsr ($03FC.w,X)		; FC FC 03
	brk $0C.b		; 00 0C
	ora $33.b,S		; 03 33
	and $776F73.l		; 2F 73 6F 77
	adc $3F6E55.l		; 6F 55 6E 3F
	and ($1A.b,X)		; 21 1A
	ora [$00.b],Y		; 17 00
	brk $03.b		; 00 03
	brk $2F.b		; 00 2F
	brk $4F.b		; 00 4F
	jsr $206F.w		; 20 6F 20
	lsr $2020.w		; 4E 20 20
	ora ($10.b,X)		; 01 10
	ora $C361A1.l		; 0F A1 61 C3
	rep #$85		; C2 85
	stx $3D.b		; 86 3D
	rol $FCFB.w,X		; 3E FB FC
	inc $FC01.w,X		; FE 01 FC
	sbc $61FFFE.l,X		; FF FE FF 61
	asl $3CC2.w,X		; 1E C2 3C
	stx $78.b		; 86 78
	rol $FCC0.w,X		; 3E C0 FC
	ora ($00.b,X)		; 01 00
	ora ($78.b,X)		; 01 78
	sbc $2300FE.l,X		; FF FE 00 23
	trb $013E.w		; 1C 3E 01
	.db $42, $3D		; 42 3D
	stx $79.b,Y		; 96 79
	inc $79.b,X		; F6 79
	adc $1906.w,Y		; 79 06 19
	asl $28.b		; 06 28
	ora [$1C.b],Y		; 17 1C
	brk $01.b		; 00 01
	brk $3D.b		; 00 3D
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $17.b		; 00 17
	brk $F6.b		; 00 F6
	tsb $48D0.w		; 0C D0 48
	cmp $7B41.w,X		; DD 41 7B
	tay		; A8
	sbc $BFA1.w,Y		; F9 A1 BF
	cld		; D8
	sbc $BFEDFF.l,X		; FF FF ED BF
	ora $00.b,S		; 03 00
	eor [$20.b]		; 47 20
	.db $42, $20		; 42 20
	tay		; A8
	tsb $A1.b		; 04 A1
	asl $D8.b		; 06 D8
	php		; 08
	sbc $AD0E.w,X		; FD 0E AD
	lsr $1870.w,X		; 5E 70 18
	cpy #$E010.w		; C0 10 E0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	stx $C1.b		; 86 C1
	stz $B6C5.w,X		; 9E C5 B6
	pei ($E0.b)		; D4 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora ($15.b,X)		; 01 15
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	ora $7D.b		; 05 7D
	and [$E3.b]		; 27 E3
	txy		; 9B
	sta $7C.b,S		; 83 7C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $0A.b		; 02 0A
	php		; 08
	jmp $007C40.l		; 5C 40 7C 00
	sbc $400001.l,X		; FF 01 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	php		; 08
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	ora $1C.b		; 05 1C
	phd		; 0B
	sec		; 38
	ora ($70.b,S),Y		; 13 70
	sec		; 38
	sed		; F8
	tsx		; BA
	tyx		; BB
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $404720.l		; 2F 20 47 40
	eor $01.b		; 45 01
	and $E1.b		; 25 E1
	txs		; 9A
	sta $74.b,S		; 83 74
	asl $E8.b		; 06 E8
	tsb $18D0.w		; 0C D0 18
	jsr $8030.w		; 20 30 80
	cpx #$C000.w		; E0 00 C0
	lsr $7C40.w,X		; 5E 40 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	ora $000F00.l		; 0F 00 0F 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	xce		; FB
	ora #$A16B.w		; 09 6B A1
	sbc $D0.b,X		; F5 D0
	sbc [$62.b],Y		; F7 62
	ror $D828.w,X		; 7E 28 D8
	ldy #$8060.w		; A0 60 80
	brk $00.b		; 00 00
	ora #$A104.w		; 09 04 A1
	trb $D0.b		; 14 D0
	asl A		; 0A
	.db $62, $08, $A8		; 62 08 A8
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	ldy #$C0A0.w		; A0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	rti		; 40

	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	cmp ($0A.b,X)		; C1 0A
	lda $00.b,S		; A3 00
	rep #$45		; C2 45
	dec $13.b		; C6 13
	jmp $337E2D.l		; 5C 2D 7E 33
	ora ($7F.b)		; 12 7F
	ora ($3E.b,X)		; 01 3E
	rol $7C7C.w,X		; 3E 7C 7C
	and $393C.w,X		; 3D 3C 39
	sec		; 38
	and $20.b,S		; 23 20
	ora $02.b,S		; 03 02
	tsb $0100.w		; 0C 00 01
	brk $42.b		; 00 42
	rtl		; 6B

	plp		; 28
	xce		; FB
	.db $42, $17		; 42 17
	pea $F04E.w		; F4 4E F0
	trb $38C0.w		; 1C C0 38
	sed		; F8
	brk $DE.b		; 00 DE
	rol $9494.w,X		; 3E 94 94
	tsb $04.b		; 04 04
	tya		; 98
	pla		; 68
	cpy #$E060.w		; C0 60 E0
	brk $F0.b		; 00 F0
	bmi   0.b		; 30 00
	brk $1E.b		; 00 1E
	rts		; 60

	ora $0D0E13.l,X		; 1F 13 0E 0D
	ora $07.b		; 05 07
	asl $05.b		; 06 05
	rol $3E03.w,X		; 3E 03 3E
	ora $1D33.w,Y		; 19 33 1D
	and ($1C.b,S),Y		; 33 1C
	ora ($0C.b,S),Y		; 13 0C
	tsb $0403.w		; 0C 03 04
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($18.b,X)		; 01 18
	ora ($1D.b,X)		; 01 1D
	brk $1C.b		; 00 1C
	ora ($78.b,X)		; 01 78
	sbc $FCFFFD.l,X		; FF FD FF FC
	inc $FEF8.w,X		; FE F8 FE
	xce		; FB
	inc $FFFB.w,X		; FE FB FF
	beq  -4.b		; F0 FC
	ply		; 7A
	jsr ($FE00.w,X)		; FC 00 FE
	sed		; F8
	jsr ($FCF9.w,X)		; FC F9 FC
	sbc $71FC.w,Y		; F9 FC 71
	sed		; F8
	bmi  -8.b		; 30 F8
	sbc ($08.b,S),Y		; F3 08
	pld		; 2B
	beq  43.b		; F0 2B
	ora [$4B.b],Y		; 17 4B
	and [$4A.b],Y		; 37 4A
	and [$7A.b],Y		; 37 7A
	ora [$0A.b]		; 07 0A
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$17.b]		; 07 17
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $DE.b,S		; 03 DE
	inc $FEBA.w,X		; FE BA FE
	sbc $7EFDFD.l,X		; FF FD FD 7E
	lda $73BC7C.l,X		; BF 7C BC 73
	beq  15.b		; F0 0F
	jsr ($4AFF.w,X)		; FC FF 4A
	lda $FD9A.w,X		; BD 9A FD
	lda $78.b,X		; B5 78
	ror $7C00.w,X		; 7E 00 7C
	brk $70.b		; 00 70
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $66.b		; 02 66
	ldy $47.b		; A4 47
	cpy $07.b		; C4 07
	.db $82, $9F, $1A		; 82 9F 1A
	jsr ($ED40.w,X)		; FC 40 ED
	and $0F.b		; 25 0F
	ora [$1C.b]		; 07 1C
	ora [$25.b],Y		; 17 25
	clc		; 18
	eor $38.b		; 45 38
	ora ($78.b,X)		; 01 78
	ora $4360.w,Y		; 19 60 43
	brk $22.b		; 00 22
	bpl   0.b		; 10 00
	beq  18.b		; F0 12
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	ora $F4.b,S		; 03 F4
	asl $C8.b		; 06 C8
	tsb $38A0.w		; 0C A0 38
	rti		; 40

	bvs -128.b		; 70 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	adc $807C60.l,X		; 7F 60 7C 80
	bmi  64.b		; 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $04.b		; 84 04
	bcc  16.b		; 90 10
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	.db $42, $C3		; 42 C3
	brk $83.b		; 00 83
	brk $82.b		; 00 82
	tsb $86.b		; 04 86
	bra -122.b		; 80 86
	dey		; 88
	sty $0C00.w		; 8C 00 0C
	ror $3C40.w,X		; 7E 40 3C
	brk $7E.b		; 00 7E
	cop $FC.b		; 02 FC
	bra  -8.b		; 80 F8
	bra 124.b		; 80 7C
	tsb $70.b		; 04 70
	brk $F8.b		; 00 F8
	php		; 08
	phd		; 0B
	tsb $0B.b		; 04 0B
	ora [$09.b]		; 07 09
	ora [$0E.b]		; 07 0E
	ora ($05.b,X)		; 01 05
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	cpy #$50.b		; C0 50
	bra -40.b		; 80 D8
	rts		; 60

	cpx $3E18.w		; EC 18 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	jsr $0060.w		; 20 60 00
	clc		; 18
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	tsb $051C.w		; 0C 1C 05
	and $11.b,X		; 35 11
	and ($01.b),Y		; 31 01
	adc ($20.b,X)		; 61 20
	adc ($0F.b,X)		; 61 0F
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora $00.b,S		; 03 00
	inc A		; 1A
	bpl  14.b		; 10 0E
	brk $3E.b		; 00 3E
	jsr $011F.w		; 20 1F 01
	lda $7FFF7F.l,X		; BF 7F FF 7F
	adc $77FF.w,X		; 7D FF 77
	sbc $48FE3C.l,X		; FF 3C FE 48
	cpy $8C38.w		; CC 38 8C
	cpx #$88.b		; E0 88
	tsa		; 3B
	jmp $6DA25D.l		; 5C 5D A2 6D
	stz $B857.w,X		; 9E 57 B8
	sec		; 38
	bra  48.b		; 80 30
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $10.b		; 00 10
	asl $2C30.w		; 0E 30 2C
	cpx #$D8.b		; E0 D8
	cpy #$30.b		; C0 30
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $28EC.w		; 0C EC 28
	iny		; C8
	bne  16.b		; D0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $3E5D38.l,X		; 5F 38 5D 3E
	eor $7D3E.w,X		; 5D 3E 7D
	asl $E6.b		; 06 E6
	rts		; 60

	inc $DC0C.w,X		; FE 0C DC
	rti		; 40

	cpx $3828.w		; EC 28 38
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $06.b		; 00 06
	brk $60.b		; 00 60
	clc		; 18
	tsb $4000.w		; 0C 00 40
	jsr $1028.w		; 20 28 10
	brk $21.b		; 00 21
	cop $23.b		; 02 23
	brk $63.b		; 00 63
	brk $62.b		; 00 62
	bit $66.b		; 24 66
	jsr $0066.w		; 20 66 00
	mvp $0C,$F8		; 44 F8 0C
	asl $1C00.w,X		; 1E 00 1C
	brk $3E.b		; 00 3E
	jsl $18203C.l		; 22 3C 20 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	asl $3C5A.w,X		; 1E 5A 3C
	stz $08.b,X		; 74 08
	jmp ($7820.w)		; 6C 20 78
	brk $58.b		; 00 58
	bmi  40.b		; 30 28
	brk $31.b		; 00 31
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	tsb $1800.w		; 0C 00 18
	php		; 08
	clc		; 18
	ora ($31.b,X)		; 01 31
	ora ($33.b)		; 12 33
	stz $06.b		; 64 06
	tya		; 98
	ror $74B8.w		; 6E B8 74
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	asl $0C10.w,X		; 1E 10 0C
	brk $18.b		; 00 18
	brk $64.b		; 00 64
	tsb $70.b		; 04 70
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $04.b		; 06 04
	tsb $1E00.w		; 0C 00 1E
	sta ($30.b,S),Y		; 93 30
	cmp ($80.b,X)		; C1 80
	and $40.b,S		; 23 40
	beq -48.b		; F0 D0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $3FBF0F.l		; 0F 0F BF 3F
	eor $0FCF9F.l,X		; 5F 9F CF 0F
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	bpl  24.b		; 10 18
	bra   8.b		; 80 08
	dey		; 88
	tsb $0480.w		; 0C 80 04
	cpx $06.b		; E4 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	jsr ($14FC.w,X)		; FC FC 14
	and [$01.b],Y		; 37 01
	and ($04.b),Y		; 31 04
	trb $0E02.w		; 1C 02 0E
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	cop $1E.b		; 02 1E
	bpl  11.b		; 10 0B
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bmi -128.b		; 30 80
	ldy $77D0.w		; AC D0 77
	pla		; 68
	adc $FC71.w,X		; 7D 71 FC
	plx		; FA
	sbc $B3FB.w,X		; FD FB B3
	sbc $0080.w,X		; FD 80 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tay		; A8
	brk $D1.b		; 00 D1
	jsl $AB2972.l		; 22 72 29 AB
	bvc -79.b		; 50 B1
	jmp $070E.w		; 4C 0E 07
	ora [$02.b]		; 07 02
	asl $1201.w		; 0E 01 12
	ora $0B14.w		; 0D 14 0B
	and [$1A.b]		; 27 1A
	pld		; 2B
	asl $4F.b,X		; 16 4F
	rol $07.b,X		; 36 07
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $0D.b		; 00 0D
	brk $0B.b		; 00 0B
	brk $1A.b		; 00 1A
	brk $16.b		; 00 16
	brk $36.b		; 00 36
	brk $F3.b		; 00 F3
	bpl -33.b		; 10 DF
	tsa		; 3B
	sbc $54DB41.l,X		; FF 41 DB 54
	dec $F645.w		; CE 45 F6
	ora $E9FA.w		; 0D FA E9
	txs		; 9A
	bit #$10.b		; 89 10
	tsb $0339.w		; 0C 39 03
	rti		; 40

	ora ($54.b,X)		; 01 54
	jsr $3045.w		; 20 45 30
	ora $E900.w		; 0D 00 E9
	tsb $89.b		; 04 89
	stz $01.b		; 64 01
	sbc $067F00.l,X		; FF 00 7F 06
	ora $000F01.l,X		; 1F 01 0F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	ora ($66.b,X)		; 01 66
	ror $18.b		; 66 18
	clc		; 18
	ora #$09.b		; 09 09
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $E06780.l,X		; 9F 80 67 E0
	ora $82F8.w,Y		; 19 F8 82
	inc $FF40.w,X		; FE 40 FF
	and ($F3.b)		; 32 F3
	eor $007FC0.l,X		; 5F C0 7F 00
	adc $809F00.l,X		; 7F 00 9F 80
	and [$20.b]		; 27 20
	eor $44.b		; 45 44
	bra -128.b		; 80 80
	ora $BF01.w		; 0D 01 BF
	bra  -1.b		; 80 FF
	brk $6F.b		; 00 6F
	asl $1EED.w,X		; 1E ED 1E
	ldx $3A1C.w		; AE 1C 3A
	tsb $36.b		; 04 36
	bpl  60.b		; 10 3C
	brk $14.b		; 00 14
	php		; 08
	trb $1E08.w		; 1C 08 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
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
	brk $20.b		; 00 20
	bmi  96.b		; 30 60
	sed		; F8
	rti		; 40

	cpy $6422.w		; CC 22 64
	ora $083932.l,X		; 1F 32 39 08
	and [$05.b]		; 27 05
	ora $00C003.l,X		; 1F 03 C0 00
	bcc -112.b		; 90 90
	sec		; 38
	php		; 08
	clc		; 18
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	asl $04.b		; 06 04
	ora $0303.w,Y		; 19 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $7F0E.w		; 0E 0E 7F
	ora $7D77BB.l		; 0F BB 77 7D
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	asl $0671.w		; 0E 71 06
	ora ($02.b,X)		; 01 02
	rti		; 40

	cpy #$F0.b		; C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	rti		; 40

	bra -80.b		; 80 B0
	cpy #$E8.b		; C0 E8
	beq  -8.b		; F0 F8
	beq -24.b		; F0 E8
	bmi -112.b		; 30 90
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	clc		; 18
	ldy #$88.b		; A0 88
	pha		; 48
	cpy $4604.w		; CC 04 46
	php		; 08
	adc $14.b,S		; 63 14
	and ($09.b),Y		; 31 09
	ora $0F03.w,Y		; 19 03 0F
	beq  16.b		; F0 10
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $3E.b		; 00 3E
	jsl $06000E.l		; 22 0E 00 06
	brk $04.b		; 00 04
	tsb $13.b		; 04 13
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	cop $0E.b		; 02 0E
	cop $13.b		; 02 13
	ora $1E27.w		; 0D 27 1E
	rol $4E1F.w		; 2E 1F 4E
	and $000001.l,X		; 3F 01 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($0D.b,X)		; 01 0D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $F4.b		; 00 F4
	tya		; 98
	ldy $D8A0.w,X		; BC A0 D8
	bpl -80.b		; 10 B0
	rti		; 40

	rts		; 60

	brk $E0.b		; 00 E0
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $98.b		; 00 98
	brk $A0.b		; 00 A0
	rti		; 40

	bpl  32.b		; 10 20
	rti		; 40

	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	inx		; E8
	ror $04F7.w,X		; 7E F7 04
	plx		; FA
	ora $02F3E0.l,X		; 1F E0 F3 02
	sbc $FBF781.l,X		; FF 81 F7 FB
	sbc $E7FF.w,X		; FD FF E7
	ora [$F0.b]		; 07 F0
	brk $F9.b		; 00 F9
	brk $E0.b		; 00 E0
	brk $02.b		; 00 02
	trb $8180.w		; 1C 80 81
	sbc $FC.b,S		; E3 FC
	pea $00FB.w		; F4 FB 00
	rol $20.b,X		; 36 20
	nop		; EA
	php		; 08
	ror $38A0.w,X		; 7E A0 38
	bra  96.b		; 80 60
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	inx		; E8
	sed		; F8
	jsr ($1CFC.w,X)		; FC FC 1C
	trb $0080.w		; 1C 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ldy #$C0.b		; A0 C0
	beq   0.b		; F0 00
	iny		; C8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $61.b		; 00 61
	ora ($B6.b,X)		; 01 B6
	and [$D9.b]		; 27 D9
	cmp $9BE0BF.l		; CF BF E0 9B
	nop		; EA
	sbc #$D8.b		; E9 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	rol $41.b		; 26 41
	iny		; C8
	and [$E0.b]		; 27 E0
	brk $EA.b		; 00 EA
	tsb $D8.b		; 04 D8
	asl $CE.b		; 06 CE
	sbc $FDDE.w,X		; FD DE FD
	and $FE6FFE.l,X		; 3F FE 6F FE
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	cmp ($3C.b,X)		; C1 3C
	cmp $343C.w		; CD 3C 34
	dec $F60A.w		; CE 0A F6
	sbc $FB.b,X		; F5 FB
	xce		; FB
	sbc $FDFA.w,X		; FD FA FD
	sbc $55FE.w,Y		; F9 FE 55
	rol $2E55.w		; 2E 55 2E
	and $3D0E.w,X		; 3D 0E 3D
	asl $0E1D.w		; 0E 1D 0E
	ora $030000.l		; 0F 00 00 03
	brk $01.b		; 00 01
	rol $2E00.w		; 2E 00 2E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $9B.b		; 00 9B
	sta ($9C.b)		; 92 9C
	sty $8C.b,X		; 94 8C
	sty $8E.b		; 84 8E
	txa		; 8A
	stx $82.b		; 86 82
	sta [$80.b]		; 87 80
	sbc $0203.w,X		; FD 03 02
	inc $6492.w,X		; FE 92 64
	sty $63.b,X		; 94 63
	sty $73.b		; 84 73
	txa		; 8A
	adc ($82.b),Y		; 71 82
	adc $7880.w,Y		; 79 80 78
	cop $02.b		; 02 02
	sta $329C.w,X		; 9D 9C 32
	tsb $2CFE.w		; 0C FE 2C
	sbc $CAEF46.l		; EF 46 EF CA
	eor $22.b,X		; 55 22
	lsr $F221.w,X		; 5E 21 F2
	stx $C0.b		; 86 C0
	tsb $000D.w		; 0C 0D 00
	and $4600.w		; 2D 00 46
	bpl -54.b		; 10 CA
	bpl  34.b		; 10 22
	dey		; 88
	and ($81.b,X)		; 21 81
	sta ($00.b,X)		; 81 00
	ora [$04.b]		; 07 04
	sbc $1801.w,Y		; F9 01 18
	ora $1CFF80.l,X		; 1F 80 FF 1C
	inc $8E88.w,X		; FE 88 8E
	bpl  28.b		; 10 1C
	brk $18.b		; 00 18
	jsr $FE30.w		; 20 30 FE
	brk $E4.b		; 00 E4
	tsb $42.b		; 04 42
	.db $42, $20		; 42 20
	jsr $0474.w		; 20 74 04
	inx		; E8
	php		; 08
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	sei		; 78
	cli		; 58
	jsr ($FE3C.w,X)		; FC 3C FE
	inc $3F3D.w,X		; FE 3D 3F
	ora [$1F.b],Y		; 17 1F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora [$07.b]		; 07 07
	pha		; 48
	bcc  52.b		; 90 34
	sec		; 38
	phx		; DA
	bit $1E29.w,X		; 3C 29 1E
	ora ($0F.b)		; 12 0F
	ora $070B07.l		; 0F 07 0B 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	phd		; 0B
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $FD.b		; 04 FD
	sbc $EFFDFB.l,X		; FF FB FD EF
	sbc [$79.b],Y		; F7 79
	sbc $0380.w,X		; FD 80 03
	bra   0.b		; 80 00
	rti		; 40

	bra  -8.b		; 80 F8
	cpy #$F9.b		; C0 F9
	inc $7EE1.w,X		; FE E1 7E
	sta [$78.b]		; 87 78
	ply		; 7A
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	sbc [$FD.b],Y		; F7 FD
	eor $F9F0EF.l,X		; 5F EF F0 F9
	rti		; 40

	iny		; C8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $FA.b		; 65 FA
	asl $F0F0.w		; 0E F0 F0
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	bpl  24.b		; 10 18
	tay		; A8
	sty $C654.w		; 8C 54 C6
	rol A		; 2A
	adc $14.b,S		; 63 14
	and ($0A.b),Y		; 31 0A
	clc		; 18
	tsb $0C.b		; 04 0C
	sed		; F8
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $B8.b		; 00 B8
	bvs  -8.b		; 70 F8
	bra  48.b		; 80 30
	bit $1F78.w		; 2C 78 1F
.ACCU 8
	sep #$63		; E2 63
	sta $7E81.w,Y		; 99 81 7E
	brk $3F.b		; 00 3F
	brk $70.b		; 00 70
	brk $80.b		; 00 80
	brk $28.b		; 00 28
	iny		; C8
	tsb $84.b		; 04 84
	ora $7E01.w,X		; 1D 01 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	ora $13.b,S		; 03 13
	asl $1E2F.w		; 0E 2F 1E
	eor $0EFF2E.l,X		; 5F 2E FF 0E
	lda $00001E.l		; AF 1E 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $1E00.w		; 0E 00 1E
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $40.b		; 00 40
	rts		; 60

	brk $40.b		; 00 40
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs -112.b		; 70 90
	clc		; 18
	iny		; C8
	tsb $06F0.w		; 0C F0 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	jsr ($7C04.w,X)		; FC 04 7C
	asl $BE.b		; 06 BE
	sta $5C.b,S		; 83 5C
	cmp ($C2.b,X)		; C1 C2
	ora $90.b,S		; 03 90
	asl $F800.w,X		; 1E 00 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	bra  -4.b		; 80 FC
	brk $E8.b		; 00 E8
	php		; 08
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phy		; 5A
	and [$7E.b],Y		; 37 7E
	ora [$0E.b]		; 07 0E
	ora [$1F.b]		; 07 1F
	brk $18.b		; 00 18
	ora [$0F.b]		; 07 0F
	ora ($1F.b,X)		; 01 1F
	brk $13.b		; 00 13
	tsb $0037.w		; 0C 37 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $CE00.w		; 0C 00 CE
	lsr A		; 4A
	cmp [$44.b]		; C7 44
	dec $41.b		; C6 41
	sbc $FC1C07.l,X		; FF 07 1C FC
	cld		; D8
	sed		; F8
	sta ($F0.b,X)		; 81 F0
	eor #$98.b		; 49 98
	lsr A		; 4A
	and ($44.b),Y		; 31 44
	sec		; 38
	eor ($39.b,X)		; 41 39
	brk $00.b		; 00 00
	lda $20.b,S		; A3 20
	cmp [$00.b]		; C7 00
	cmp $008710.l,X		; DF 10 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3E1C.w		; 1C 1C 3E
	rol $3F39.w,X		; 3E 39 3F
	eor $7C63.w,X		; 5D 63 7C
	tad		; 5B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3A00.w		; 1C 00 3A
	tsb $1E21.w		; 0C 21 1E
	eor ($22.b,X)		; 41 22
	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	ora [$4D.b]		; 07 4D
	and ($62.b,S),Y		; 33 62
	sta $0000.w,X		; 9D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and ($00.b,S),Y		; 33 00
	ora $0000.w,X		; 1D 00 00
	ora $003111.l,X		; 1F 11 31 00
	rti		; 40

	bvc -64.b		; 50 C0
	ora $4F80.w,Y		; 19 80 4F
	cpx #$1E.b		; E0 1E
	cpy #$8C.b		; C0 8C
	bra   0.b		; 80 00
	brk $0E.b		; 00 0E
	asl $3F3F.w		; 0E 3F 3F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	adc $00007F.l,X		; 7F 7F 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	bvs   0.b		; 70 00
	clc		; 18
	brk $08.b		; 00 08
	clc		; 18
	trb $5C08.w		; 1C 08 5C
	asl A		; 0A
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	cop $00.b		; 02 00
	ora $07.b		; 05 07
	ora $07.b		; 05 07
	and $183706.l,X		; 3F 06 37 18
	dec A		; 3A
	ora $1D3A.w,X		; 1D 3A 1D
	tsa		; 3B
	trb $1837.w		; 1C 37 18
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $00.b		; 06 00
	clc		; 18
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	bvs -32.b		; 70 E0
	beq -32.b		; F0 E0
	sed		; F8
	bmi  56.b		; 30 38
	bpl  24.b		; 10 18
	cpy #$0C.b		; C0 0C
	cpy #$0C.b		; C0 0C
	brk $80.b		; 00 80
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	inx		; E8
	tsb $0EF8.w		; 0C F8 0E
	beq   6.b		; F0 06
	stz $06.b,X		; 74 06
	ldy $87.b,X		; B4 87
	sec		; 38
	sta $5A.b,S		; 83 5A
	cmp $1E.b,S		; C3 1E
	cmp $F0.b,S		; C3 F0
	brk $F4.b		; 00 F4
	tsb $FC.b		; 04 FC
	tsb $F8.b		; 04 F8
	brk $7A.b		; 00 7A
	cop $FE.b		; 02 FE
	.db $82, $3C, $00		; 82 3C 00
	jmp ($8040.w,X)		; 7C 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFF8.w,X		; FE F8 FF
	sty $07.b		; 84 07
	cpy $07.b		; C4 07
	inx		; E8
	stx $0080.w		; 8E 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ply		; 7A
	cop $3A.b		; 02 3A
	cop $94.b		; 02 94
	tsb $58.b		; 04 58
	cmp $1C.b,S		; C3 1C
	cmp $1E.b,S		; C3 1E
	eor $0C.b,S		; 43 0C
	eor ($00.b,X)		; 41 00
	eor ($02.b,X)		; 41 02
	cmp $18.b,S		; C3 18
	cmp $58.b,S		; C3 58
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	cop $7E.b		; 02 7E
	.db $42, $3C		; 42 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	rti		; 40

	ror $3C42.w,X		; 7E 42 3C
	brk $FF.b		; 00 FF
	sbc $FD1FFE.l,X		; FF FE 1F FD
	lsr $DD7B.w,X		; 5E 7B DD
	ror $7EDE.w,X		; 7E DE 7E
	cmp ($7F.b,X)		; C1 7F
	dex		; CA
	lda $FFFE4D.l,X		; BF 4D FE FF
	trb $581F.w		; 1C 1F 58
	ora $C606D9.l,X		; 1F D9 06 C6
	clc		; 18
	cpy #$CA00.w		; C0 00 CA
	brk $4D.b		; 00 4D
	brk $F0.b		; 00 F0
	bra -80.b		; 80 B0
	pla		; 68
	clc		; 18
	jsr ($FE80.w,X)		; FC 80 FE
	beq   3.b		; F0 03
	inc A		; 1A
	ora $84.b,S		; 03 84
	stx $00.b		; 86 00
	jsr ($0080.w,X)		; FC 80 00
	rts		; 60

	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	inc $FC02.w,X		; FE 02 FC
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	sbc ($1E.b,X)		; E1 1E
	cmp $58.b,S		; C3 58
	cmp $78.b,S		; C3 78
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $34, $86		; 82 34 86
	bmi -122.b		; 30 86
	bmi -124.b		; 30 84
	lsr $7C40.w,X		; 5E 40 7C
	rti		; 40

	rol $3C02.w,X		; 3E 02 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	sty $F8.b		; 84 F8
	bra  -1.b		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFF7.l,X		; FF F7 FF FD
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $FF7FFA.l,X		; FF FA 7F FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	ora [$E6.b]		; 07 E6
	sbc $FEF1.w,Y		; F9 F1 FE
	sbc $F9FE.w,Y		; F9 FE F9
	inc $7C72.w,X		; FE 72 7C
	cld		; D8
	sed		; F8
	beq -48.b		; F0 D0
	ldy #$60F8.w		; A0 F8 60
	tay		; A8
	cpx #$8070.w		; E0 70 80
	cpx #$4000.w		; E0 00 40
	brk $80.b		; 00 80
	tya		; 98
	cpx #$E010.w		; E0 10 E0
	jsr $30C0.w		; 20 C0 30
	bne  64.b		; D0 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $1A.b		; 00 1A
	ora $1C3B.w		; 0D 3B 1C
	rol $5C18.w,X		; 3E 18 5C
	bmi  72.b		; 30 48
	bmi  80.b		; 30 50
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	ora $1C00.w		; 0D 00 1C
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $85.b		; 00 85
	trb $0E02.w		; 1C 02 0E
	brk $0E.b		; 00 0E
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	and [$78.b],Y		; 37 78
	plp		; 28
	bvs  16.b		; 70 10
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $04.b,X		; 34 04
	and [$00.b]		; 27 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $7F73E0.l,X		; DF E0 73 7F
	eor [$7F.b],Y		; 57 7F
	adc [$DF.b],Y		; 77 DF
	and [$3F.b],Y		; 37 3F
	ora $131F.w,Y		; 19 1F 13
	ora $401F17.l,X		; 1F 17 1F 40
	jsr $2FD0.w		; 20 D0 2F
	cmp ($2F.b),Y		; D1 2F
	eor ($2F.b,S),Y		; 53 2F
	and [$08.b],Y		; 37 08
	clc		; 18
	ora [$11.b]		; 07 11
	ora $800F11.l		; 0F 11 0F 80
	cpy #$C140.w		; C0 40 C1
	sbc ($13.b)		; F2 13
	lda $FEF9C0.l,X		; BF C0 F9 FE
	sbc ($FC.b)		; F2 FC
	sta $7C.b,S		; 83 7C
	adc $7F7F80.l,X		; 7F 80 7F 7F
	rol $0C3E.w,X		; 3E 3E 0C
	tsb $00C0.w		; 0C C0 00
	inc $FC00.w,X		; FE 00 FC
	ora ($7C.b,X)		; 01 7C
	brk $00.b		; 00 00
	bra  65.b		; 80 41
	cmp $FC1F66.l,X		; DF 66 1F FC
	ora $7E1EFE.l		; 0F FE 1E 7E
	rol $3EFE.w,X		; 3E FE 3E
	cmp [$7F.b],Y		; D7 7F
	bit $21FF.w,X		; 3C FF 21
	asl $E0.b		; 06 E0
	ora $0B000C.l		; 0F 0C 00 0B
	trb $1F.b		; 14 1F
	ldy $15.b,X		; B4 15
	plp		; 28
	mvn $3C,$28		; 54 28 3C
	cpy #$205F.w		; C0 5F 20
	rtl		; 6B

	tsb $09.b		; 04 09
	asl $09.b		; 06 09
	asl $0A.b		; 06 0A
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $67.b		; 00 67
	jsr $0879.w		; 20 79 08
	lda $7CBA70.l		; AF 70 BA 7C
	txs		; 9A
	jmp $BA5C9A.l		; 5C 9A 5C BA
	jmp $44BA.w		; 4C BA 44
	jsr $0818.w		; 20 18 08
	asl $70.b		; 06 70
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	jsr $205C.w		; 20 5C 20
	jmp $4400.w		; 4C 00 44
	brk $04.b		; 00 04
	rol $7E.b		; 26 7E
	brk $5D.b		; 00 5D
	rol $3E5D.w,X		; 3E 5D 3E
	eor $FA3E.w,X		; 5D 3E FA
	tsb $CE.b		; 04 CE
	pha		; 48
	sbc ($00.b)		; F2 00
	clc		; 18
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $04.b		; 00 04
	brk $48.b		; 00 48
	bmi   0.b		; 30 00
	tsb $610C.w		; 0C 0C 61
	tsb $1A61.w		; 0C 61 1A
	adc $38.b,S		; 63 38
	adc $38.b,S		; 63 38
	.db $62, $34, $66		; 62 34 66
	bpl  70.b		; 10 46
	brk $44.b		; 00 44
	and $203E21.l,X		; 3F 21 3E 20
	bit $1E20.w,X		; 3C 20 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $FD.b		; 00 FD
	cop $97.b		; 02 97
	ror $6E9F.w		; 6E 9F 6E
	ror $4F15.w		; 6E 15 4F
	and ($93.b),Y		; 31 93
	adc $6D9B.w		; 6D 9B 6D
	sbc $021B.w		; ED 1B 02
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $15.b		; 00 15
	brk $31.b		; 00 31
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $1B.b		; 00 1B
	brk $3F.b		; 00 3F
	cmp ($BF.b,S),Y		; D3 BF
	adc $7B.b,X		; 75 7B
	lda ($79.b)		; B2 79
	sta ($7C.b,X)		; 81 7C
	ldy $6C.b,X		; B4 6C
	ldy $6E.b		; A4 6E
	tax		; AA
	ror $A2.b		; 66 A2
	cmp ($00.b,S),Y		; D3 00
	adc $00.b,X		; 75 00
	lda ($04.b)		; B2 04
	sta ($06.b,X)		; 81 06
	ldy $03.b,X		; B4 03
	ldy $13.b		; A4 13
	tax		; AA
	ora ($A2.b),Y		; 11 A2
	ora $03E2.w,Y		; 19 E2 03
	pea $FCC7.w		; F4 C7 FC
	sbc ($FC.b)		; F2 FC
	sei		; 78
	jsr ($3898.w,X)		; FC 98 38
	jsr $1018.w		; 20 18 10
	php		; 08
	brk $1D.b		; 00 1D
	ora ($CA.b,X)		; 01 CA
	cop $F0.b		; 02 F0
	brk $78.b		; 00 78
	brk $98.b		; 00 98
	brk $20.b		; 00 20
	cpy #$E010.w		; C0 10 E0
	brk $F0.b		; 00 F0
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	ora ($7F.b,X)		; 01 7F
	php		; 08
	cmp $5FC05E.l		; CF 5E C0 5F
	cpy #$602F.w		; C0 2F 60
	phd		; 0B
	sec		; 38
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $741E.w,X		; 1E 1E 74
	mvp $00,$3F		; 44 3F 00
	and $001F00.l,X		; 3F 00 1F 00
	ora [$10.b],Y		; 17 10
	tsa		; 3B
	jmp.w [$C23E]		; DC 3E C2
	jsr ($06F4.w,X)		; FC F4 06
	dex		; CA
	sta $3EA7F9.l		; 8F F9 A7 3E
	bne  31.b		; D0 1F
	pea $1C07.w		; F4 07 1C
	brk $C2.b		; 00 C2
	cmp ($04.b,X)		; C1 04
	ora $3A.b,S		; 03 3A
	ora #$4041.w		; 09 41 40
	bne  16.b		; D0 10
	sbc #$FA09.w		; E9 09 FA
	cop $AE.b		; 02 AE
	sta $6D.b		; 85 6D
	lsr $6F.b		; 46 6F
	rol $CE.b		; 26 CE
	sta [$CD.b]		; 87 CD
	eor $9D.b		; 45 9D
	sta $DD.b,X		; 95 DD
	ora $3C.b,X		; 15 3C
	cpy $85.b		; C4 85
	bvc  70.b		; 50 46
	bcc  38.b		; 90 26
	bcc -121.b		; 90 87
	bmi  69.b		; 30 45
	and ($95.b)		; 32 95
	.db $62, $15, $22		; 62 15 22
	tsb $03.b		; 04 03
	bvs -128.b		; 70 80
	ldy #$50C0.w		; A0 C0 50
	cpx #$70E8.w		; E0 E8 70
	clv		; B8
	bvs -80.b		; 70 B0
	rts		; 60

	rts		; 60

	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $1808.w		; 0E 08 18
	brk $62.b		; 00 62
	.db $42, $CB		; 42 CB
	rti		; 40

	sbc [$20.b],Y		; F7 20
	sei		; 78
	and [$70.b]		; 27 70
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $3C3C1F.l,X		; 1F 1F 3C 3C
	php		; 08
	php		; 08
	phd		; 0B
	tsb $03.b		; 04 03
	php		; 08
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	bcs  24.b		; B0 18
	cpx #$6004.w		; E0 04 60
	cop $F4.b		; 02 F4
	stx $8630.w		; 8E 30 86
	bit $86.b		; 24 86
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F8F8.w		; E0 F8 F8
	jsr ($78FC.w,X)		; FC FC 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	bit $3C.b,X		; 34 3C
	and $2E3F.w		; 2D 3F 2E
	adc $1D5F17.l,X		; 7F 17 5F 1D
	eor $076F06.l,X		; 5F 06 6F 07
	rol $0E03.w,X		; 3E 03 0E
	and [$08.b],Y		; 37 08
	bit $2410.w		; 2C 10 24
	asl $2F32.w,X		; 1E 32 2F
	and $1222.w		; 2D 22 12
	ora ($02.b),Y		; 11 02
	brk $02.b		; 00 02
	brk $D1.b		; 00 D1
	asl $0734.w,X		; 1E 34 07
	bit $88E1.w		; 2C E1 88
	sbc $E342.w,Y		; F9 42 E3
	cpx $27.b		; E4 27
	adc ($4F.b,S),Y		; 73 4F
	sta $01E097.l,X		; 9F 97 E0 01
	sed		; F8
	brk $5E.b		; 00 5E
	rti		; 40

	stx $10.b,Y		; 96 10
	trb $18C0.w		; 1C C0 18
	ora ($40.b,X)		; 01 40
	sta $96.b,S		; 83 96
	adc [$67.b]		; 67 67
	inc A		; 1A
	and $103706.l,X		; 3F 06 37 10
	and $3D12.w,X		; 3D 12 3D
	asl $1C2B.w		; 0E 2B 1C
	and $083518.l,X		; 3F 18 35 08
	inc A		; 1A
	brk $06.b		; 00 06
	brk $10.b		; 00 10
	php		; 08
	ora ($00.b)		; 12 00
	asl $1C00.w		; 0E 00 1C
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	jsr $0030.w		; 20 30 00
	bmi  64.b		; 30 40
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  30.b		; 80 1E
	ora $0B1C.w		; 0D 1C 0B
	rol $3F17.w		; 2E 17 3F
	tsb $304C.w		; 0C 4C 30
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0B00.w		; 0D 00 0B
	brk $17.b		; 00 17
	brk $0C.b		; 00 0C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	beq   4.b		; F0 04
	sed		; F8
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	sty $08.b		; 84 08
	sty $CC48.w		; 8C 48 CC
	pha		; 48
	dec $C604.w		; CE 04 C6
	brk $42.b		; 00 42
	jsr $2263.w		; 20 63 22
	adc $78.b,S		; 63 78
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $34.b		; 00 34
	tsb $78.b		; 04 78
	rti		; 40

	bit $1E00.w,X		; 3C 00 1E
	cop $1C.b		; 02 1C
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	cpy #$E0D0.w		; C0 D0 E0
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rep #$00		; C2 00
	rep #$00		; C2 00
	cmp $00.b,S		; C3 00
	eor $02.b,S		; 43 02
	eor $22.b,S		; 43 22
	adc $20.b,S		; 63 20
	adc ($00.b,X)		; 61 00
	adc ($3C.b,X)		; 61 3C
	brk $7C.b		; 00 7C
	rti		; 40

	ror $3E42.w,X		; 7E 42 3E
	cop $3C.b		; 02 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $1E02.w		; 20 02 1E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $4F01.w,X		; 7D 01 4F
	cpy #$F809.w		; C0 09 F8
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	ora [$1F.b]		; 07 1F
	tsb $081C.w		; 0C 1C 08
	clc		; 18
	inc $BF00.w,X		; FE 00 BF
	bra  23.b		; 80 17
	bpl   2.b		; 10 02
	cop $0C.b		; 02 0C
	tsb $0808.w		; 0C 08 08
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $7841F0.l		; 0F F0 41 78
	cmp ($1D.b,S),Y		; D3 1D
	adc ($01.b,S),Y		; 73 01
	ora [$F3.b],Y		; 17 F3
	sta $FA.b		; 85 FA
	eor [$71.b]		; 47 71
	and ($30.b,X)		; 21 30
	brk $00.b		; 00 00
	ldy #$E920.w		; A0 20 E9
	php		; 08
	sbc $2B00.w,X		; FD 00 2B
	jsr $4042.w		; 20 42 40
	lda ($20.b,X)		; A1 20
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $78.b		; 00 78
	bra  -2.b		; 80 FE
	bvc -83.b		; 50 AD
	asl $6F.b		; 06 6F
	ora [$BF.b]		; 07 BF
	eor [$F7.b],Y		; 57 F7
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bvc   0.b		; 50 00
	asl $50.b		; 06 50
	ora [$90.b]		; 07 90
	eor [$00.b],Y		; 57 00
	asl $0F00.w		; 0E 00 0F
	bit $1007.w,X		; 3C 07 10
	brk $0E.b		; 00 0E
	ora $0E0900.l		; 0F 00 09 0E
	ora [$1F.b],Y		; 17 1F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora [$08.b]		; 07 08
	ora $060700.l		; 0F 00 07 06
	brk $00.b		; 00 00
	php		; 08
	asl $17.b		; 06 17
	tsb $0B16.w		; 0C 16 0B
	ora $8006.w,X		; 1D 06 80
	.db $42, $04		; 42 04
	lsr $80.b		; 46 80
	cpx $FE.b		; E4 FE
	brk $F3.b		; 00 F3
	adc ($7F.b)		; 72 7F
	bra -122.b		; 80 86
	sbc $7867.w,Y		; F9 67 78
	ldy $B83C.w,X		; BC 3C B8
	sec		; 38
	cli		; 58
	cli		; 58
	brk $00.b		; 00 00
	adc ($0C.b)		; 72 0C
	brk $80.b		; 00 80
	sta ($18.b,X)		; 81 18
	bra   6.b		; 80 06
	ora [$07.b]		; 07 07
	tda		; 7B
	adc $FAFFFB.l,X		; 7F FB FF FA
	inc $FCBC.w,X		; FE BC FC
	jmp ($707C.w,X)		; 7C 7C 70
	bvs   7.b		; 70 07
	brk $05.b		; 00 05
	ora $7B.b,S		; 03 7B
	ora [$B1.b]		; 07 B1
	ror $7CFA.w,X		; 7E FA 7C
	ldy $4C78.w,X		; BC 78 4C
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $DFFFFF.l		; 0F FF FF DF
	sbc $7F7F5F.l,X		; FF 5F 7F 7F
	adc $FF785F.l,X		; 7F 5F 78 FF
	sta ($CF.b,X)		; 81 CF
	and $0E.b,X		; 35 0E
	ora $CDBF5F.l		; 0F 5F BF CD
	rol $314E.w,X		; 3E 4E 31
	ror $480F.w,X		; 7E 0F 48
	sec		; 38
	sta ($40.b,X)		; 81 40
	and $00.b,X		; 35 00
	plp		; 28
	jmp ($6C28.w)		; 6C 28 6C
	rol $FA60.w		; 2E 60 FA
	tsb $7C9A.w		; 0C 9A 7C
	sbc $266700.l,X		; FF 00 67 26
	adc $001000.l,X		; 7F 00 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	tsb $7C00.w		; 0C 00 7C
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	clc		; 18
	brk $00.b		; 00 00
	jsr ($8000.w,X)		; FC 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	cpy #$C05C.w		; C0 5C C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra 124.b		; 80 7C
	tya		; 98
	jmp $DCEAB8.l		; 5C B8 EA DC
	ror $FE9C.w		; 6E 9C FE
	tsb $20DE.w		; 0C DE 20
	cmp ($2E.b,S),Y		; D3 2E
	sbc $801856.l		; EF 56 18 80
	sec		; 38
	bra -36.b		; 80 DC
	brk $1C.b		; 00 1C
	cpy #$000C.w		; C0 0C 00
	jsr $2E00.w		; 20 00 2E
	brk $56.b		; 00 56
	brk $00.b		; 00 00
.ACCU 16
	rep #$20		; C2 20
	.db $62, $20, $62		; 62 20 62
	brk $62.b		; 00 62
	tsb $66.b		; 04 66
	tsb $26.b		; 04 26
	tsb $26.b		; 04 26
	tsb $26.b		; 04 26
	jmp ($1C40.w,X)		; 7C 40 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $2038.w		; 20 38 20
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $2E.b		; 00 2E
	php		; 08
	bit $6808.w,X		; 3C 08 68
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   8.b		; 10 08
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $00.b		; 06 00
	tsb $0C04.w		; 0C 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($73.b)		; 12 73
	jsr $48E3.w		; 20 E3 48
	dec $9C90.w		; CE 90 9C
	bpl  24.b		; 10 18
	jsr $0038.w		; 20 38 00
	bmi  64.b		; 30 40
	rts		; 60

	bit $5E20.w		; 2C 20 5E
	.db $42, $B4		; 42 B4
	sty $68.b		; 84 68
	php		; 08
	cpx #$D000.w		; E0 00 D0
	bpl -32.b		; 10 E0
	jsr $0080.w		; 20 80 00
	txy		; 9B
	jmp ($6F96.w)		; 6C 96 6F
	eor $374B37.l		; 4F 37 4B 37
	eor [$3B.b]		; 47 3B
	tsa		; 3B
	tsb $03.b		; 04 03
	ora $6C0E02.l		; 0F 02 0E 6C
	brk $6F.b		; 00 6F
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $3B.b		; 00 3B
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $05.b		; 04 05
	tsb $08.b		; 04 08
	ora [$C8.b]		; 07 C8
	eor [$70.b]		; 47 70
	stx $BCC0.w		; 8E C0 BC
	bra 124.b		; 80 7C
	beq  -4.b		; F0 FC
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	ora [$F7.b]		; 07 F7
	lsr $36.b		; 46 36
	dey		; 88
	php		; 08
	ldy #$7820.w		; A0 20 78
	sei		; 78
	php		; 08
	php		; 08
	inx		; E8
	php		; 08
	inx		; E8
	php		; 08
	jsr ($FF64.w,X)		; FC 64 FF
	sbc $FDFE.w,Y		; F9 FE FD
	stz $7F.b,X		; 74 7F
	lsr $767F.w,X		; 5E 7F 76
	cmp $2E3F2E.l,X		; DF 2E 3F 2E
	and $B90364.l,X		; 3F 64 03 B9
	pla		; 68
	stz $2A.b,X		; 74 2A
	pei ($2A.b)		; D4 2A
	cld		; D8
	rol $54.b		; 26 54
	rol $1E26.w		; 2E 26 1E
	rol $1E.b		; 26 1E
	phx		; DA
	sta [$4F.b],Y		; 97 4F
	asl $2F.b		; 06 2F
	cmp $8C.b		; C5 8C
	and ($DB.b,S),Y		; 33 DB
	tsb $9D.b		; 04 9D
	jsl $18089C.l		; 22 9C 08 18
	rol $A7.b,X		; 36 A7
	brk $36.b		; 00 36
	bra  20.b		; 80 14
	ora ($C0.b,X)		; 01 C0
	cpy #$E3E3.w		; C0 E3 E3
	sbc $EB.b,S		; E3 EB
	xba		; EB
	sbc $C1.b,S		; E3 C1
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $3013.w		; 1C 13 30
	ora ($21.b,X)		; 01 21
	bit $67.b,X		; 34 67
	bpl  68.b		; 10 44
	pla		; 68
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $001E00.l		; 0F 00 1E 00
	clc		; 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	sta $40.b,S		; 83 40
	cmp $40.b,S		; C3 40
	rep #$44		; C2 44
	dec $44.b		; C6 44
	dec $00.b		; C6 00
	dec $00.b		; C6 00
	dec $40.b		; C6 40
	cpy $7E.b		; C4 7E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	mvp $44,$7C		; 44 7C 44
	sec		; 38
	brk $3F.b		; 00 3F
	tsb $324B.w		; 0C 4B 32
	lsr $BA38.w,X		; 5E 38 BA
	jmp ($3CDA.w,X)		; 7C DA 3C
	phx		; DA
	bit $1CAA.w,X		; 3C AA 1C
	ldx $0C10.w		; AE 10 0C
	brk $32.b		; 00 32
	tsb $38.b		; 04 38
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $3012.w		; 1C 12 30
	rol $0C70.w		; 2E 70 0C
	adc ($14.b,X)		; 61 14
	dec $40.b		; C6 40
	cpy $930A.w		; CC 0A 93
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	ora $39391F.l,X		; 1F 1F 39 39
	and ($33.b,S),Y		; 33 33
	jmp ($0060.w)		; 6C 60 00
	cpx #$3020.w		; E0 20 30
	bpl  24.b		; 10 18
	bmi   4.b		; 30 04
	bmi   2.b		; 30 02
	trb $4E.b		; 14 4E
	rol $9F.b		; 26 9F
	cmp ($FF.b)		; D2 FF
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F8F8.w		; E0 F8 F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $23E300.l,X		; FF 00 E3 23
	adc $0089.w,Y		; 79 89 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	trb $0689.w		; 1C 89 06
	asl $9E23.w,X		; 1E 23 9E
	lda ($4F.b,X)		; A1 4F
	cpx #$E12F.w		; E0 2F E1
	ror $F1.b		; 66 F1
	cmp $59.b,X		; D5 59
	cpx #$F56F.w		; E0 6F F5
	tyx		; BB
	cmp $415EC2.l,X		; DF C2 5E 41
	ora $001E00.l,X		; 1F 00 1E 00
	ora $082E11.l,X		; 1F 11 2E 08
	bvs   0.b		; 70 00
	tyx		; BB
	brk $8C.b		; 00 8C
	rol $BC08.w,X		; 3E 08 BC
	ldy #$0038.w		; A0 38 00
	cpx #$8000.w		; E0 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	sed		; F8
	sec		; 38
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	rol $6B3E.w,X		; 3E 3E 6B
	rtl		; 6B

	adc $63.b,S		; 63 63
	and $3B.b,S		; 23 3B
	tsa		; 3B
	cmp $00D6FE.l		; CF FE D6 00
	brk $18.b		; 00 18
	brk $3E.b		; 00 3E
	php		; 08
	eor $3E.b,S		; 43 3E
	adc $1E.b,S		; 63 1E
	and ($1E.b,X)		; 21 1E
	ora $0C.b,S		; 03 0C
	ora ($04.b)		; 12 04
	rti		; 40

	brk $60.b		; 00 60
	brk $50.b		; 00 50
	brk $78.b		; 00 78
	bpl  88.b		; 10 58
	brk $2C.b		; 00 2C
	php		; 08
	bit $3400.w,X		; 3C 00 34
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	php		; 08
	bpl   0.b		; 10 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	clc		; 18
	ora #$0019.w		; 09 19 00
	and ($12.b),Y		; 31 12
	and ($00.b,S),Y		; 33 00
	and $04.b,S		; 23 04
	ror $20.b		; 66 20
	ror $A0.b		; 66 A0
	stz $0F.b		; 64 0F
	php		; 08
	asl $00.b		; 06 00
	ora $000C11.l,X		; 1F 11 0C 00
	asl $3802.w,X		; 1E 02 38
	jsr $041C.w		; 20 1C 04
	clc		; 18
	brk $80.b		; 00 80
	cpx #$C000.w		; E0 00 C0
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
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $3A.b		; 00 3A
	and $33273E.l,X		; 3F 3E 27 33
	and $5F3F2F.l		; 2F 2F 3F 5F
	adc $FFBFDF.l,X		; 7F DF BF FF
	and $387FDF.l,X		; 3F DF 7F 38
	asl $26.b		; 06 26
	clc		; 18
	jsr $271F.w		; 20 1F 27
	ora $8F3F4F.l,X		; 1F 4F 3F 8F
	adc $47403F.l,X		; 7F 3F 40 47
	and $81FF22.l,X		; 3F 22 FF 81
	sta $970C.w,X		; 9D 0C 97
	tya		; 98
	sed		; F8
	cmp ($F0.b),Y		; D1 F0
	lda $E0.b,S		; A3 E0
	and $E4FDE2.l		; 2F E2 FD E4
	brk $08.b		; 00 08
	.db $62, $6A, $64		; 62 6A 64
	pla		; 68
	dey		; 88
	bcc -112.b		; 90 90
	cpx #$C020.w		; E0 20 C0
	jsl $02E4C0.l		; 22 C0 E4 02
	and $5F18.w,X		; 3D 18 5F
	sec		; 38
	lda $7CFA78.l,X		; BF 78 FA 7C
	plx		; FA
	jmp ($B8F4.w,X)		; 7C F4 B8
	tsb $7070.w		; 0C 70 70
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $B8.b		; 00 B8
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
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
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	brk $0A.b		; 00 0A
	tsb $35.b		; 04 35
	cop $7B.b		; 02 7B
	plp		; 28
	tad		; 5B
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora ($02.b,X)		; 01 02
	php		; 08
	plp		; 28
	tsb $32.b		; 04 32
	tsb $3D.b		; 04 3D
	eor $EC3F.w,Y		; 59 3F EC
	lsr $5CC4.w		; 4E C4 5C
	bpl -96.b		; 10 A0
	bmi  64.b		; 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	ora $4C02.w,Y		; 19 02 4C
	rti		; 40

	ldy $80.b,X		; B4 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora $007840.l,X		; 1F 40 78 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $08E800.l		; 0F 00 E8 08
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $070B07.l		; 0F 07 0B 07
	ora #$0807.w		; 09 07 08
	ora [$09.b]		; 07 09
	asl $0E.b		; 06 0E
	ora ($04.b,X)		; 01 04
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$04.b]		; 07 04
	trb $780B.w		; 1C 0B 78
	rol $E0.b		; 26 E0
	sta $7A81.w,X		; 9D 81 7A
	ora $F4.b,S		; 03 F4
	asl $00.b		; 06 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	brk $17.b		; 00 17
	bpl  95.b		; 10 5F
	rti		; 40

	ror $FC00.w,X		; 7E 00 FC
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	trb $7840.w		; 1C 40 78
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	tsb $6F.b		; 04 6F
	and ($7F.b),Y		; 31 7F
	asl $0F.b		; 06 0F
	and $B7EF2F.l,X		; 3F 2F EF B7
	sta [$C5.b]		; 87 C5
	ora [$27.b]		; 07 27
	and $0304.w,X		; 3D 04 03
	and ($00.b),Y		; 31 00
	asl $00.b		; 06 00
	phd		; 0B
	asl $17.b		; 06 17
	cop $7D.b		; 02 7D
	cop $FD.b		; 02 FD
	cop $D5.b		; 02 D5
	ora ($0B.b)		; 12 0B
	asl $0F0E.w		; 0E 0E 0F
	cmp $FEFEDF.l,X		; DF DF FE FE
	inc $7CFE.w,X		; FE FE 7C
	jmp ($3838.w,X)		; 7C 38 38
	brk $00.b		; 00 00
	asl A		; 0A
	asl $0A.b		; 06 0A
	ora [$D5.b]		; 07 D5
	asl $5CA2.w		; 0E A2 5C
	tsx		; BA
	jmp ($3854.w,X)		; 7C 54 38
	sec		; 38
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	adc $F0FFFF.l,X		; 7F FF FF F0
	beq -65.b		; F0 BF
	sbc $00FF60.l,X		; FF 60 FF 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  80.b		; 80 50
	jsr $60D0.w		; 20 D0 60
	lda $40A040.l		; AF 40 A0 40
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sta $01.b,S		; 83 01
	ora $D73C05.l		; 0F 05 3C D7
	bmi -33.b		; 30 DF
	rti		; 40

	and $80BE80.l,X		; 3F 80 BE 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	phd		; 0B
	php		; 08
	and $003F20.l		; 2F 20 3F 00
	sbc $007F80.l,X		; FF 80 7F 00
	cmp $0BFF20.l,X		; DF 20 FF 0B
	cmp $29DB2D.l,X		; DF 2D DB 29
	stp		; DB
	rol A		; 2A
	lda #$AC51.w		; A9 51 AC
	mvn $5A,$A6		; 54 A6 5A
	brk $60.b		; 00 60
	phd		; 0B
	brk $2D.b		; 00 2D
	brk $29.b		; 00 29
	tsb $2A.b		; 04 2A
	tsb $51.b		; 04 51
	asl $54.b		; 06 54
	ora $5A.b,S		; 03 5A
	ora ($B1.b,X)		; 01 B1
	bne -31.b		; D0 E1
	jsr $0203.w		; 20 03 02
	sbc $01FFFD.l,X		; FF FD FF 01
	sbc $0307FB.l,X		; FF FB 07 03
	ora $100B.w		; 0D 0B 10
	dec $1E20.w		; CE 20 1E
	cop $FC.b		; 02 FC
	jsr ($0000.w,X)		; FC 00 00
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	sed		; F8
	asl A		; 0A
	sbc ($F9.b)		; F2 F9
	sta ($72.b,X)		; 81 72
	ora $64.b,S		; 03 64
	ora [$08.b]		; 07 08
	asl $1C10.w		; 0E 10 1C
	rts		; 60

	sei		; 78
	cpy #$00F0.w		; C0 F0 00
	cpx #$007E.w		; E0 7E 00
	sbc $FA01.w,X		; FD 01 FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bcc  16.b		; 90 10
	jsr $C020.w		; 20 20 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $D8EC30.l		; 5C 30 EC D8
	clc		; 18
	sbc ($00.b,X)		; E1 00
	ora [$02.b]		; 07 02
	asl $7809.w,X		; 1E 09 78
	and [$E0.b]		; 27 E0
	lda $80.b,S		; A3 80
	bcs   0.b		; B0 00
	clc		; 18
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	tsb $17.b		; 04 17
	bpl  95.b		; 10 5F
	rti		; 40

	adc $090300.l,X		; 7F 00 03 09
	tsb $3219.w		; 0C 19 32
	ora $3E.b,S		; 03 3E
	bpl  98.b		; 10 62
	jsr $187C.w		; 20 7C 18
	clv		; B8
	cpx #$F8E8.w		; E0 E8 F8
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	tsb $1000.w		; 0C 00 10
	brk $20.b		; 00 20
	trb $0018.w		; 1C 18 00
	ldy #$A860.w		; A0 60 A8
	bvs  97.b		; 70 61
	ora ($E8.b,X)		; 01 E8
	ora $900CC8.l		; 0F C8 0C 90
	clc		; 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	inc $F400.w,X		; FE 00 F4
	tsb $F0.b		; 04 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $3A.b		; 00 3A
	phd		; 0B
	rol $5D10.w		; 2E 10 5D
	rol $007F.w,X		; 3E 7F 00
	inc $74.b,X		; F6 74
	inc $E400.w,X		; FE 00 E4
	cli		; 58
	jsr ($0460.w,X)		; FC 60 04
	brk $10.b		; 00 10
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	php		; 08
	brk $00.b		; 00 00
	cli		; 58
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	cpx #$E0D0.w		; E0 D0 E0
	bvc -32.b		; 50 E0
	bvs -128.b		; 70 80
	bne  64.b		; D0 40
	beq  64.b		; F0 40
	cli		; 58
	bmi  60.b		; 30 3C
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	jsr $0040.w		; 20 40 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	inc $0400.w,X		; FE 00 04
	sed		; F8
	sed		; F8
	brk $E0.b		; 00 E0
	tya		; 98
	cpx #$8C7E.w		; E0 7E 8C
	ora $BE81B9.l		; 0F B9 81 BE
	bra   0.b		; 80 00
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	clc		; 18
	adc ($02.b)		; 72 02
	ror $7F00.w,X		; 7E 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $01.b,S		; 83 01
	cmp $00FC85.l		; CF 85 FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	.db $82, $4B, $48		; 82 4B 48
	ora $0B0D0F.l		; 0F 0F 0D 0B
	rol $2701.w,X		; 3E 01 27
	trb $1B25.w		; 1C 25 1B
	tsa		; 3B
	asl $6D.b		; 06 6D
	asl $3D5B.w,X		; 1E 5B 3D
	ora $070800.l		; 0F 00 08 07
	brk $01.b		; 00 01
	trb $1B00.w		; 1C 00 1B
	brk $06.b		; 00 06
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	brk $FD.b		; 00 FD
	inc $FCFB.w,X		; FE FB FC
	sbc $73FDFB.l,X		; FF FB FD 73
	sbc ($2C.b,S),Y		; F3 2C
	sbc $7FD6.w,X		; FD D6 7F
	lsr $7F.b,X		; 56 7F
	rol $78.b,X		; 36 78
	inc $F8.b,X		; F6 F8
	jmp ($98F3.w)		; 6C F3 98
	adc ($50.b,S),Y		; 73 50
	bit $D620.w		; 2C 20 D6
	brk $56.b		; 00 56
	bra  54.b		; 80 36
	bra 100.b		; 80 64
	ora $AD69B0.l,X		; 1F B0 69 AD
	stz $F9.b,X		; 74 F9
	bcs  -6.b		; B0 FA
	cmp ($98.b),Y		; D1 98
	inc $6D.b		; E6 6D
	bcc  78.b		; 90 4E
	sta ($09.b),Y		; 91 09
	ora #$0668.w		; 09 68 06
	adc ($00.b)		; 72 00
	ldx $00.b,Y		; B6 00
	sty $40.b,X		; 94 40
	sta ($01.b,X)		; 81 01
	adc $63.b,S		; 63 63
	adc ($75.b),Y		; 71 75
	and $EF77E7.l		; 2F E7 77 EF
	stz $6F8F.w,X		; 9E 8F 6F
	eor $9DDF37.l,X		; 5F 37 DF 9D
	ror $7EBF.w,X		; 7E BF 7E
	eor $96A33E.l,X		; 5F 3E A3 96
	adc $0B.b		; 65 0B
	stx $6D.b		; 86 6D
	phk		; 4B
	stx $07.b,Y		; 96 07
	sec		; 38
	bra -65.b		; 80 BF
	tya		; 98
	lda $08DFD8.l,X		; BF D8 DF 08
	tsb $0C08.w		; 0C 08 0C
	plp		; 28
	tsb $0C28.w		; 0C 28 0C
	jsr $200C.w		; 20 0C 20
	tsb $0860.w		; 0C 60 08
	rts		; 60

	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	ora #$4FF8.w		; 09 F8 4F
	cpy #$017D.w		; C0 7D 01
	plx		; FA
	ora $E8.b,S		; 03 E8
	asl $3C20.w		; 0E 20 3C
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	ora [$10.b],Y		; 17 10
	lda $00FE80.l,X		; BF 80 FE 00
	jsr ($F400.w,X)		; FC 00 F4
	tsb $D0.b		; 04 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	ora $1E2D0E.l,X		; 1F 0E 2D 1E
	and $044A0C.l,X		; 3F 0C 4A 04
	ror $B818.w,X		; 7E 18 B8
	jsr $00F0.w		; 20 F0 00
	brk $00.b		; 00 00
	asl $1E00.w		; 0E 00 1E
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	bmi  24.b		; 30 18
	brk $20.b		; 00 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $182D04.l,X		; 3F 04 2D 18
	asl $2F64.w,X		; 1E 64 2F
	inc $0D.b		; E6 0D
	asl A		; 0A
	ldx $38.b		; A6 38
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	tsb $00.b		; 04 00
	clc		; 18
	cop $04.b		; 02 04
	ora ($56.b,X)		; 01 56
	rti		; 40

	sbc ($00.b)		; F2 00
	cpy #$4000.w		; C0 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	phd		; 0B
	sed		; F8
	eor $7AC1.w		; 4D C1 7A
	ora $E8.b,S		; 03 E8
	asl $1CD0.w		; 0E D0 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	ldx $FC80.w,Y		; BE 80 FC
	brk $F4.b		; 00 F4
	tsb $E0.b		; 04 E0
	brk $04.b		; 00 04
	trb $1F06.w		; 1C 06 1F
	php		; 08
	ora $031C0A.l,X		; 1F 0A 1C 03
	tsb $0601.w		; 0C 01 06
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	php		; 08
	lda $DF90.w		; AD 90 DF
	asl $3F.b		; 06 3F
	cpy $E3.b		; C4 E3
	clv		; B8
	eor [$F8.b]		; 47 F8
	cop $41.b		; 02 41
	inc A		; 1A
	ora $BE.b,S		; 03 BE
	cmp ($D2.b)		; D2 D2
	bit $24.b		; 24 24
	rol A		; 2A
	inx		; E8
	plx		; FA
	bra -100.b		; 80 9C
	.db $42, $FC		; 42 FC
	brk $FC.b		; 00 FC
	clc		; 18
	plx		; FA
	clv		; B8
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $83.b		; 00 83
	cop $0E.b		; 02 0E
	phd		; 0B
	sec		; 38
	sbc $5BE1.w		; ED E1 5B
	cmp $40.b,S		; C3 40
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	dec $7F00.w,X		; DE 00 7F
	bra   0.b		; 80 00
	asl $F90C.w,X		; 1E 0C F9
	dec $78F3.w,X		; DE F3 78
	cop $7C.b		; 02 7C
	rol $FC.b,X		; 36 FC
	cld		; D8
	bit $98E0.w,X		; 3C E0 98
	sed		; F8
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	tsb $8C00.w		; 0C 00 8C
	brk $B0.b		; 00 B0
	brk $98.b		; 00 98
	rti		; 40

	brk $E0.b		; 00 E0
	tya		; 98
	cpx #$2100.w		; E0 00 21
	cop $63.b		; 02 63
	jsr $0863.w		; 20 63 08
	.db $42, $08		; 42 08
	rep #$08		; C2 08
	rep #$48		; C2 48
	rep #$48		; C2 48
.INDEX 16
	rep #$1E		; C2 1E
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $3C.b		; 00 3C
	brk $BF.b		; 00 BF
	bra  95.b		; 80 5F
	cpy #$E02E.w		; C0 2E E0
	clc		; 18
	sed		; F8
	cop $3E.b		; 02 3E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $80BF00.l,X		; 7F 00 BF 80
	cmp $2027C0.l,X		; DF C0 27 20
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$70.b],Y		; 17 70
	cmp $80BEC0.l,X		; DF C0 BE 80
	dec A		; 3A
	ora $10.b,S		; 03 10
	ora $00F800.l,X		; 1F 00 F8 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	rti		; 40

	and $007F00.l,X		; 3F 00 7F 00
	sbc $E801.w,X		; FD 01 E8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $3A.b,X		; 76 3A
	bit $1914.w		; 2C 14 19
	ora ($09.b,X)		; 01 09
	ora ($07.b,X)		; 01 07
	php		; 08
	ora ($0F.b,X)		; 01 0F
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	dec A		; 3A
	ora ($14.b,X)		; 01 14
	ora $01.b,S		; 03 01
	asl $01.b		; 06 01
	asl $00.b		; 06 00
	brk $06.b		; 00 06
	asl $05.b		; 06 05
	tsb $05.b		; 04 05
	tsb $DB.b		; 04 DB
	stx $DB.b,Y		; 96 DB
	stx $DB.b,Y		; 96 DB
	mvn $10,$9E		; 54 9E 10
	stz $F810.w		; 9C 10 F8
	tsb $70.b		; 04 70
	jmp ($1C10.w,X)		; 7C 10 1C
	stx $20.b,Y		; 96 20
	stx $20.b,Y		; 96 20
	mvn $10,$20		; 54 20 10
	rts		; 60

	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	dey		; 88
	php		; 08
	inx		; E8
	php		; 08
	ldx $8444.w		; AE 44 84
	wai		; CB
	cmp #$D07F.w		; C9 7F D0
	adc [$E6.b],Y		; 77 E6
	ora $0302.w,X		; 1D 02 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	and $31.b,X		; 35 31
	bcs  48.b		; B0 30
	rti		; 40

	brk $48.b		; 00 48
	asl A		; 0A
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	eor $1D3E.w,X		; 5D 3E 1D
	and $2DFE0B.l,X		; 3F 0B FE 2D
	rol $3F1C.w,X		; 3E 1C 3F
	rol $7EFF.w,X		; 3E FF 7E
	sbc $D8FF7F.l,X		; FF 7F FF D8
	cmp $02DED9.l,X		; DF D9 DE 02
	ora $C3CC.w		; 0D CC C3
	cpy #$3CDF.w		; C0 DF 3C
	and $3DFF3C.l,X		; 3F 3C FF 3D
	inc $C258.w,X		; FE 58 C2
	cli		; 58
.INDEX 16
	rep #$58		; C2 58
.INDEX 16
	rep #$58		; C2 58
.INDEX 16
	rep #$1C		; C2 1C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	lsr $1C.b		; 46 1C
	lsr $3C.b		; 46 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	lsr $18.b		; 46 18
	lsr $38.b		; 46 38
	ror $30.b		; 66 30
	stz $30.b		; 64 30
	stz $28.b		; 64 28
	jmp ($2C48.w)		; 6C 48 2C
	ror $3C00.w,X		; 7E 00 3C
	tsb $3C.b		; 04 3C
	tsb $1C.b		; 04 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	jsr $0000.w		; 20 00 00
	lsr $7A3C.w,X		; 5E 3C 7A
	tsb $66.b		; 04 66
	jsr $40F2.w		; 20 F2 40
	cpy $FC30.w		; CC 30 FC
	pha		; 48
	cpy $00.b		; C4 00
	jsr ($3C40.w,X)		; FC 40 3C
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	clc		; 18
	rti		; 40

	tsb $0030.w		; 0C 30 00
	pha		; 48
	brk $00.b		; 00 00
	sec		; 38
	rti		; 40

	brk $2C.b		; 00 2C
	adc ($2E.b,X)		; 61 2E
	adc $2E.b,S		; 63 2E
	adc $3E.b,S		; 63 3E
	adc $3A.b,S		; 63 3A
	adc $38.b,S		; 63 38
	adc $38.b,S		; 63 38
	adc $20.b,S		; 63 20
	.db $62, $1E, $00		; 62 1E 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $1C.b		; 02 1C
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$04.b]		; 07 04
	trb $F016.w		; 1C 16 F0
	ora $602340.l		; 0F 40 23 60
	lsr $D0.b		; 46 D0
	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $3F3F0F.l		; 0F 0F 3F 3F
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	ora $80001F.l,X		; 1F 1F 00 80
	bra -16.b		; 80 F0
	jsr $4038.w		; 20 38 40
	tsb $30.b		; 04 30
	cop $34.b		; 02 34
	asl $26.b		; 06 26
	ora [$4A.b]		; 07 4A
	sta $000000.l,X		; 9F 00 00 00
	brk $C0.b		; 00 C0
	cpy #$F8F8.w		; C0 F8 F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	sed		; F8
	sed		; F8
	pea $01F4.w		; F4 F4 01
	brk $3F.b		; 00 3F
	rol $FFFB.w,X		; 3E FB FF
	sbc $E3FF.w,Y		; F9 FF E3
	sbc [$FC.b]		; E7 FC
	jsr ($7878.w,X)		; FC 78 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $D100.w,X		; 3E 00 D1
	and $E37FB8.l,X		; 3F B8 7F E3
	jmp ($68BC.w,X)		; 7C BC 68
	sei		; 78
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $00.b		; 02 00
	brk $7C.b		; 00 7C
	adc $BFFFBF.l,X		; 7F BF FF BF
	xce		; FB
	lda $9FBF.w,X		; BD BF 9F
	sta $808080.l,X		; 9F 80 80 80
	bra -128.b		; 80 80
	bra -84.b		; 80 AC
	ora $AB1EBF.l,X		; 1F BF 1E AB
	trb $0EB1.w		; 1C B1 0E
	sta $008000.l,X		; 9F 00 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bcs -128.b		; B0 80
	beq  32.b		; F0 20
	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	bcc  96.b		; 90 60
	bne  32.b		; D0 20
	sbc $008000.l,X		; FF 00 80 00
	bra   0.b		; 80 00
	jsr $6000.w		; 20 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	brk $0C.b		; 00 0C
	ora $3B.b,S		; 03 3B
	ora [$F7.b]		; 07 F7
	ora ($F6.b,S),Y		; 13 F6
	eor $DB.b,S		; 43 DB
	bra -18.b		; 80 EE
	mvp $60,$FC		; 44 FC 60
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora ($08.b,S),Y		; 13 08
	eor $08.b,S		; 43 08
	bra  36.b		; 80 24
	mvp $60,$10		; 44 10 60
	brk $F0.b		; 00 F0
	brk $3E.b		; 00 3E
	cpy #$88DA.w		; C0 DA 88
	jsr ($70A0.w,X)		; FC A0 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $88.b		; 00 88
	bit $A0.b		; 24 A0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2A.b		; 00 2A
	ora ($3D.b),Y		; 11 3D
	trb $55.b		; 14 55
	sec		; 38
	lda $BE78.w,X		; BD 78 BE
	sei		; 78
	ldy $78.b,X		; B4 78
	sei		; 78
	brk $58.b		; 00 58
	ora ($11.b,S),Y		; 13 11
	tsb $14.b		; 04 14
	cop $38.b		; 02 38
	cop $78.b		; 02 78
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $13B2.w		; 20 B2 13
	rts		; 60

	lda ($A0.b,X)		; A1 A0
	adc ($20.b,X)		; 61 20
	adc ($22.b,X)		; 61 22
	adc $22.b,S		; 63 22
	adc $20.b,S		; 63 20
	sbc $64.b,S		; E3 64
	inc $0C.b		; E6 0C
	rti		; 40

	stz $1E00.w,X		; 9E 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $5E.b		; 00 5E
	.db $42, $98		; 42 98
	bra   0.b		; 80 00
	tsb $02.b		; 04 02
	asl $01.b		; 06 01
	ora [$00.b]		; 07 00
	ora $1E.b,S		; 03 1E
	ora ($39.b,X)		; 01 39
	iny		; C8
	ror $BF70.w		; 6E 70 BF
	rol $0303.w,X		; 3E 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	asl $A0.b		; 06 A0
	ora ($EA.b),Y		; 11 EA
	trb $7A.b		; 14 7A
	sty $8678.w		; 8C 78 86
	rol $BC80.w,X		; 3E 80 BC
	sta [$98.b]		; 87 98
	dec $54.b		; C6 54
	ror $C0.b		; 66 C0
	jmp ($A0C0.w,X)		; 7C C0 A0
	adc $7B08.w,X		; 7D 08 7B
	tsb $7F.b		; 04 7F
	brk $7A.b		; 00 7A
	cop $7C.b		; 02 7C
	mvp $20,$B8		; 44 B8 20
	rti		; 40

	brk $80.b		; 00 80
	brk $CE.b		; 00 CE
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $BFFFFF.l,X		; FF FF FF BF
	adc $C03FDF.l,X		; 7F DF 3F C0
	ldx $BFCF.w,Y		; BE CF BF
	sta $FF3F7F.l,X		; 9F 7F 3F FF
	and $1FEEFF.l,X		; 3F FF EE 1F
	trb $0FE3.w		; 1C E3 0F
	bit $3F08.w,X		; 3C 08 3F
	bit $D6.b		; 24 D6
	ldy #$E0DC.w		; A0 DC E0
	ldy #$C040.w		; A0 40 C0
	lsr $FFCE.w		; 4E CE FF
	sbc $C0FF7D.l,X		; FF 7D FF C0
	cpy #$2808.w		; C0 08 28
	brk $E0.b		; 00 E0
	jsr $40C0.w		; 20 C0 40
	bra  78.b		; 80 4E
	bra  -3.b		; 80 FD
	asl $BA55.w		; 0E 55 BA
	and ($09.b),Y		; 31 09
	phy		; 5A
	and ($BF.b,S),Y		; 33 BF
	sei		; 78
	plx		; FA
	trb $E0FE.w		; 1C FE E0
	cpx $B828.w		; EC 28 B8
	rti		; 40

	bne -96.b		; D0 A0
	asl $3408.w		; 0E 08 34
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	brk $E0.b		; 00 E0
	brk $28.b		; 00 28
	bpl  64.b		; 10 40
	brk $A0.b		; 00 A0
	brk $BA.b		; 00 BA
	jmp ($3CDA.w,X)		; 7C DA 3C
	plx		; FA
	trb $18B6.w		; 1C B6 18
	pld		; 2B
	ora ($1E.b)		; 12 1E
	ora $07.b		; 05 07
	ora ($01.b,X)		; 01 01
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $12.b		; 00 12
	tsb $05.b		; 04 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $3012.w		; 1C 12 30
	rol $0C70.w		; 2E 70 0C
	adc ($14.b,X)		; 61 14
	dec $40.b		; C6 40
	cpy $930A.w		; CC 0A 93
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	ora $39391F.l,X		; 1F 1F 39 39
	and ($33.b,S),Y		; 33 33
	jmp ($0060.w)		; 6C 60 00
	cpx #$3020.w		; E0 20 30
	bpl  24.b		; 10 18
	bmi   4.b		; 30 04
	bmi   2.b		; 30 02
	trb $4E.b		; 14 4E
	rol $9F.b		; 26 9F
	cmp ($FF.b)		; D2 FF
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F8F8.w		; E0 F8 F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	ora $0E1F01.l		; 0F 01 1F 0E
	rol $3B02.w,X		; 3E 02 3B
	trb $7D.b		; 14 7D
	inc A		; 1A
	txy		; 9B
	pla		; 68
	ldx $F674.w,Y		; BE 74 F6
	sei		; 78
	ora ($00.b,X)		; 01 00
	asl $0200.w		; 0E 00 02
	ora ($14.b,X)		; 01 14
	brk $1A.b		; 00 1A
	brk $68.b		; 00 68
	tsb $74.b		; 04 74
	brk $78.b		; 00 78
	brk $22.b		; 00 22
	adc $04.b,S		; 63 04
	dec $48.b		; C6 48
	cpy $9810.w		; CC 10 98
	ldy #$F030.w		; A0 30 F0
	bra -96.b		; 80 A0
	cpy #$00E0.w		; C0 E0 00
	trb $7800.w		; 1C 00 78
	rti		; 40

	bmi   0.b		; 30 00
	cpx #$4080.w		; E0 80 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($05.b,X)		; 01 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	sbc $2FF0F0.l,X		; FF F0 F0 2F
	rts		; 60

	bvc 112.b		; 50 70
	sbc [$8F.b],Y		; F7 8F
	iny		; C8
	eor [$B8.b]		; 47 B8
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	ora $009F00.l		; 0F 00 9F 00
	sta $080800.l		; 8F 00 08 08
	rti		; 40

	bmi -96.b		; 30 A0
	rti		; 40

	sei		; 78
	cli		; 58
	jsr ($3F3C.w,X)		; FC 3C 3F
	and $0F1F1F.l,X		; 3F 1F 1F 0F
	asl $0705.w		; 0E 05 07
	ora [$07.b]		; 07 07
	ora $4801.w,X		; 1D 01 48
	bcc  20.b		; 90 14
	sec		; 38
	pld		; 2B
	trb $0F17.w		; 1C 17 0F
	asl $0401.w		; 0E 01 04
	ora $07.b,S		; 03 07
	brk $01.b		; 00 01
	brk $69.b		; 00 69
	ora [$7A.b]		; 07 7A
	rol $54.b		; 26 54
	tsb $0830.w		; 0C 30 08
	plp		; 28
	clc		; 18
	bpl 112.b		; 10 70
	and ($61.b,X)		; 21 61
	cop $C3.b		; 02 C3
	cop $12.b		; 02 12
	and $04.b		; 25 04
	ora $20.b,S		; 03 20
	ora $101708.l		; 0F 08 17 10
	and $001E20.l		; 2F 20 1E 00
	jmp ($8840.w,X)		; 7C 40 88
	stx $1C10.w		; 8E 10 1C
	jsr $2038.w		; 20 38 20
	bmi  64.b		; 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	stz $04.b,X		; 74 04
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ror $FFFE.w,X		; 7E FE FF
	eor [$FF.b],Y		; 57 FF
	sbc $BFDFFF.l,X		; FF FF DF BF
	ldx $FCFF.w,Y		; BE FF FC
	inc $FEFC.w,X		; FE FC FE
	ldx $5E15.w,Y		; BE 15 5E
	and $52.b,X		; 35 52
	and $03FC.w		; 2D FC 03
	stx $7F.b		; 86 7F
	stx $DD7E.w		; 8E 7E DD
	and $817D.w,X		; 3D 7D 81
	jsr $40C0.w		; 20 C0 40
	ldy #$9040.w		; A0 40 90
	rts		; 60

	phb		; 8B
	ror A		; 6A
	lda $1E.b,X		; B5 1E
	sta ($1C.b,X)		; 81 1C
	sbc #$3128.w		; E9 28 31
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	bvs 112.b		; 70 70
	eor ($52.b)		; 52 52
	.db $62, $6A, $0A		; 62 6A 0A
	cop $C6.b		; 02 C6
	dec $DF.b		; C6 DF
	and ($5F.b,X)		; 21 5F
	ldy $AD5F.w		; AC 5F AD
	phk		; 4B
	lda ($CD.b)		; B2 CD
	lda $DC.b,X		; B5 DC
	ldy $B6.b,X		; B4 B6
	phx		; DA
	ldx $DA.b,Y		; B6 DA
	jsr $AC01.w		; 20 01 AC
	brk $AD.b		; 00 AD
	brk $B2.b		; 00 B2
	tsb $B5.b		; 04 B5
	cop $B4.b		; 02 B4
	ora $DA.b,S		; 03 DA
	ora ($DA.b,X)		; 01 DA
	ora ($97.b,X)		; 01 97
	jsr ($03FF.w,X)		; FC FF 03
	ora ($00.b,X)		; 01 00
	sbc $02FEFD.l,X		; FF FD FE 02
	adc $1574.w,X		; 7D 74 15
	tsb $0818.w		; 0C 18 08
	sty $7C.b		; 84 7C
	ora $00.b,S		; 03 00
	brk $FE.b		; 00 FE
	jsr ($0100.w,X)		; FC 00 01
	brk $73.b		; 00 73
	bra  11.b		; 80 0B
	inx		; E8
	ora [$E0.b]		; 07 E0
	ora $0E170D.l,X		; 1F 0D 17 0E
	ora ($0E.b,S),Y		; 13 0E
	ora ($0E.b),Y		; 11 0E
	ora $020500.l		; 0F 00 05 02
	ora #$0B06.w		; 09 06 0B
	tsb $0D.b		; 04 0D
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $09.b		; 02 09
	asl $09.b		; 06 09
	asl $07.b		; 06 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b]		; 07 06
	tsb $0C07.w		; 0C 07 0C
	ora ($04.b,X)		; 01 04
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  -8.b		; 30 F8
	jsr $80F0.w		; 20 F0 80
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra -32.b		; 80 E0
	ldy #$A030.w		; A0 30 A0
	bmi   0.b		; 30 00
	jsr $6040.w		; 20 40 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tsa		; 3B
	asl $0A19.w		; 0E 19 0A
	ora $0B.b,X		; 15 0B
	asl $1B.b,X		; 16 1B
	asl $37.b		; 06 37
	ora $7B.b,S		; 03 7B
	and #$00D9.w		; 29 D9 00
	trb $10.b		; 14 10
	brk $00.b		; 00 00
	ora $01.b		; 05 01
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $08.b,S		; 03 08
	and #$0004.w		; 29 04 00
	rol $14.b		; 26 14
	stx $A8.b		; 86 A8
	sty $1850.w		; 8C 50 18
	jsr $D038.w		; 20 38 D0
	sed		; F8
	bcs 120.b		; B0 78
	bvc -104.b		; 50 98
	bne  88.b		; D0 58
	sed		; F8
	bra 112.b		; 80 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	and $9F7898.l,X		; 3F 98 78 9F
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $94.b		; 00 94
	trb $F88A.w		; 1C 8A F8
	brk $00.b		; 00 00
	and [$20.b]		; 27 20
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	xba		; EB
	php		; 08
	eor [$40.b]		; 47 40
	tyx		; BB
	cmp $DDBB.w,X		; DD BB DD
	lda $18FFDD.l,X		; BF DD FF 18
	sec		; 38
	ora [$07.b]		; 07 07
	ora $021E06.l,X		; 1F 06 1E 02
	asl $00DD.w		; 0E DD 00
	cmp $DD00.w,X		; DD 00 DD
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	ora #$0508.w		; 09 08 05
	tsb $3A.b		; 04 3A
	tas		; 1B
	cli		; 58
	and $027F81.l,X		; 3F 81 7F 02
	inc $FC05.w,X		; FE 05 FC
	cmp $F8.b,S		; C3 F8
	phd		; 0B
	sec		; 38
	lsr $70.b,X		; 56 70
	ora $C1.b		; 05 C1
	bit $A4.b		; 24 A4
	adc ($72.b)		; 72 72
	cmp $C4.b		; C5 C4
	and ($30.b,S),Y		; 33 30
	and $10D728.l		; 2F 28 D7 10
	sta $E12D00.l		; 8F 00 2D E1
	phy		; 5A
	cmp $34.b,S		; C3 34
	asl $E8.b		; 06 E8
	tsb $18D0.w		; 0C D0 18
	ldy #$4030.w		; A0 30 40
	rts		; 60

	bra -64.b		; 80 C0
	asl $BC00.w,X		; 1E 00 BC
	bra  -8.b		; 80 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	ror $6EDD.w		; 6E DD 6E
	adc $1D3B1D.l		; 6F 1D 3B 1D
	dec A		; 3A
	trb $2C1A.w		; 1C 1A 2C
	asl $0330.w		; 0E 30 03
	trb $006E.w		; 1C 6E 00
	ror $1D00.w		; 6E 00 1D
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	ora ($0C.b,X)		; 01 0C
	ora ($10.b,X)		; 01 10
	ora ($0C.b),Y		; 11 0C
	tsb $5577.w		; 0C 77 55
	ror $55.b,X		; 76 55
	and ($22.b,S),Y		; 33 22
	and ($21.b),Y		; 31 21
	and $3B29.w,Y		; 39 29 3B
	plp		; 28
	bit $F828.w,X		; 3C 28 F8
	brk $55.b		; 00 55
	dey		; 88
	eor $88.b,X		; 55 88
	jsl $CE21CC.l		; 22 CC 21 CE
	and #$28C6.w		; 29 C6 28
	cpy $28.b		; C4 28
	cpy #$0000.w		; C0 00 00
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	php		; 08
	clc		; 18
	brk $20.b		; 00 20
	bit $0E70.w		; 2C 70 0E
	rts		; 60

	asl $40.b,X		; 16 40
	tsb $0080.w		; 0C 80 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$1F.b]		; 07 1F
	ora $1F0F0F.l,X		; 1F 0F 0F 1F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	adc $40C000.l,X		; 7F 00 C0 40
	bvs  16.b		; 70 10
	clc		; 18
	pla		; 68
	asl $0130.w		; 0E 30 01
	inc A		; 1A
	ora $09.b,S		; 03 09
	ora ($0D.b,X)		; 01 0D
	ora ($00.b,S),Y		; 13 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F0F0.w		; E0 F0 F0
	inc $FCFE.w,X		; FE FE FC
	jsr ($FEFE.w,X)		; FC FE FE
	inc $00FE.w,X		; FE FE 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $1C03.w		; 0C 03 1C
	ora $40093A.l,X		; 1F 3A 09 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bmi   6.b		; 30 06
	adc $9F9FFF.l,X		; 7F FF 9F 9F
	eor $A51F.w,X		; 5D 1F A5
	and [$4F.b],Y		; 37 4F
	adc $FBFEBF.l		; 6F BF FE FB
	sbc $2EFE3E.l,X		; FF 3E FE 2E
	ora $0977.w,Y		; 19 77 09
	sbc $C403.w		; ED 03 C4
	ora $8F.b,S		; 03 8F
	brk $36.b		; 00 36
	ora $3CD3.w		; 0D D3 3C
	dec A		; 3A
	jsr ($8070.w,X)		; FC 70 80
	clc		; 18
	inx		; E8
	jsr ($BCEC.w,X)		; FC EC BC
	sty $7E4E.w		; 8C 4E 7E
	ora #$63DF.w		; 09 DF 63
	ora $009E28.l,X		; 1F 28 9E 00
	brk $E8.b		; 00 E8
	brk $E4.b		; 00 E4
	php		; 08
	sty $4648.w		; 8C 48 46
	dey		; 88
	and #$E126.w		; 29 26 E1
	sbc $00E7E8.l		; EF E8 E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A000.w		; C0 00 A0
	cpy #$C020.w		; C0 20 C0
	jsr ($F400.w,X)		; FC 00 F4
	sei		; 78
	ldy $CC40.w,X		; BC 40 CC
	php		; 08
	stz $6604.w,X		; 9E 04 66
	clc		; 18
	ror $4624.w,X		; 7E 24 46
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	bmi   4.b		; 30 04
	rts		; 60

	clc		; 18
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	sec		; 38
	ror $3E04.w,X		; 7E 04 3E
	trb $1E2D.w		; 1C 2D 1E
	and $08140C.l,X		; 3F 0C 14 08
	ora $010706.l,X		; 1F 06 07 01
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	trb $1E00.w		; 1C 00 1E
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	ora $06.b,S		; 03 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $F0.b		; 00 F0
	cpx #$C0E0.w		; E0 E0 C0
	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	cmp ($1C.b,X)		; C1 1C
	cmp ($1C.b,X)		; C1 1C
	eor ($1C.b,X)		; 41 1C
	eor ($1C.b,X)		; 41 1C
	eor ($3C.b,X)		; 41 3C
	adc ($1C.b,X)		; 61 1C
	adc ($0E.b,X)		; 61 0E
	and $7E.b,S		; 23 7E
	rti		; 40

	ror $3E40.w,X		; 7E 40 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $001C.w		; 20 1C 00
	cop $23.b		; 02 23
	cop $23.b		; 02 23
	brk $63.b		; 00 63
	jsr $0863.w		; 20 63 08
	.db $42, $18		; 42 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$58		; C2 58
.INDEX 16
	rep #$1C		; C2 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $3C021E.l		; 22 1E 02 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $78.b		; 00 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $3C.b		; C6 3C
	stx $38.b		; 86 38
	stx $38.b		; 86 38
	stx $30.b		; 86 30
	sty $30.b		; 84 30
	sty $30.b		; 84 30
	sty $3C.b		; 84 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $07.b		; 00 07
	ora $051C04.l,X		; 1F 04 1C 05
	trb $0C05.w		; 1C 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	php		; 08
	php		; 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	cpy #$20F8.w		; C0 F8 20
	sec		; 38
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpy #$3010.w		; C0 10 30
	bmi -48.b		; 30 D0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $18.b		; 00 18
	.db $82, $00, $A4		; 82 00 A4
	brk $DB.b		; 00 DB
	cli		; 58
	sbc [$1F.b]		; E7 1F
	.db $62, $07, $30		; 62 07 30
	ora ($38.b,S),Y		; 13 38
	ora #$7F1C.w		; 09 1C 7F
	adc $247B7B.l,X		; 7F 7B 7B 24
	bit $19.b		; 24 19
	cop $1E.b		; 02 1E
	ora $1F.b,S		; 03 1F
	bpl  15.b		; 10 0F
	php		; 08
	ora [$04.b]		; 07 04
	asl $53.b		; 06 53
	jsr $12B9.w		; 20 B9 12
	tda		; 7B
	mvn $F0,$DE		; 54 DE F0
	bit $10C0.w		; 2C C0 10
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	cpx $46EC.w		; EC EC 46
	lsr $84.b		; 46 84
	sty $A0.b		; 84 A0
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$2BC0.w		; C0 C0 2B
	adc ($0E.b,X)		; 61 0E
	and $0F.b,X		; 35 0F
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	plx		; FA
	jmp ($C3BC.w,X)		; 7C BC C3
	cpy #$020D.w		; C0 0D 02
	asl A		; 0A
	ora $0B.b		; 05 0B
	ora $05.b		; 05 05
	ora $0A.b,S		; 03 0A
	ora [$92.b]		; 07 92
	jsr ($C03C.w,X)		; FC 3C C0
	cpy #$0200.w		; C0 00 02
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	ora [$03.b],Y		; 17 03
	sbc ($80.b,S),Y		; F3 80
	bcc  15.b		; 90 0F
	bmi  56.b		; 30 38
	sbc [$A0.b]		; E7 A0
	sbc $F8FFE3.l,X		; FF E3 FF F8
	sbc [$E4.b]		; E7 E4
	sbc $03.b,S		; E3 03
	brk $60.b		; 00 60
	rts		; 60

	cpy #$27C0.w		; C0 C0 27
	brk $20.b		; 00 20
	cpy #$CCAC.w		; C0 AC CC
	ldy #$20C0.w		; A0 C0 20
	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	tsb $20FC.w		; 0C FC 20
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $C3.b		; 00 C3
	cmp $33.b,S		; C3 33
	bmi  28.b		; 30 1C
	lsr $1C.b		; 46 1C
	lsr $18.b		; 46 18
	lsr $18.b		; 46 18
	lsr $30.b		; 46 30
	stz $30.b		; 64 30
	stz $28.b		; 64 28
	jmp ($6CA8.w)		; 6C A8 6C
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($09.b,X)		; 01 09
	ora ($1C.b,X)		; 01 1C
	tsb $36.b		; 04 36
	and $7F5E.w,Y		; 39 5E 7F
	ror $007F.w,X		; 7E 7F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl $04.b		; 06 04
	ora $30.b,S		; 03 30
	php		; 08
	lsr $2C.b,X		; 56 2C
	phy		; 5A
	bit $FA.b,X		; 34 FA
	ora $D9DF3C.l,X		; 1F 3C DF D9
	nop		; EA
	sbc $6BEA.w,Y		; F9 EA 6B
	adc ($1F.b),Y		; 71 1F
	cmp $06.b,X		; D5 06
	and $0269.w,Y		; 39 69 02
	ora ($01.b),Y		; 11 01
	jmp.w [$E400]		; DC 00 E4
	brk $E4.b		; 00 E4
	brk $75.b		; 00 75
	bra  17.b		; 80 11
	jsr $C0C0.w		; 20 C0 C0
	beq -10.b		; F0 F6
	eor $4694.w		; 4D 94 46
	bit #$9F09.w		; 89 09 9F
	ora ($F7.b)		; 12 F7
	ora [$8F.b]		; 07 8F
	ora [$CF.b]		; 07 CF
	sta $BFDF7F.l		; 8F 7F DF BF
	stz $72.b,X		; 74 72
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	php		; 08
	asl A		; 0A
	ror $77.b,X		; 76 77
	and [$37.b],Y		; 37 37
	ora $7F8FCF.l		; 0F CF 8F 7F
	sbc $BFDFFF.l,X		; FF FF DF BF
	cmp $CF3F3F.l,X		; DF 3F 3F CF
	eor $B46FB3.l		; 4F B3 6F B4
	lda $6DFF75.l		; AF 75 FF 6D
	sbc $679B1F.l		; EF 1F 9B 67
	ora [$39.b]		; 07 39
	cmp [$0E.b]		; C7 0E
	lda ($03.b),Y		; B1 03
	ldy $00.b,X		; B4 00
	adc $00.b,X		; 75 00
	adc $B600.w		; 6D 00 B6
	sbc #$AEF1.w		; E9 F1 AE
	sbc ($CC.b,S),Y		; F3 CC
	jmp.w [$F7E3]		; DC E3 F7
	sbc $FFDFE0.l		; EF E0 DF FF
	rti		; 40

	cmp ($BE.b,X)		; C1 BE
	lda #$2EC1.w		; A9 C1 2E
	cpy #$A04C.w		; C0 4C A0
	cmp $20.b,S		; C3 20
	cmp $C09FA0.l		; CF A0 9F C0
	brk $40.b		; 00 40
	ldx $C000.w,Y		; BE 00 C0
	cpy #$0080.w		; C0 80 00
	bra   0.b		; 80 00
	sta ($01.b,X)		; 81 01
	dey		; 88
	ora $003CA0.l		; 0F A0 3C 00
	beq   0.b		; F0 00
	cpy #$003F.w		; C0 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	ror $7400.w,X		; 7E 00 74
	tsb $50.b		; 04 50
	bpl -64.b		; 10 C0
	cpy #$0000.w		; C0 00 00
	brk $FC.b		; 00 FC
	sei		; 78
	inc $0604.w,X		; FE 04 06
	brk $06.b		; 00 06
	bpl  28.b		; 10 1C
	rti		; 40

	sei		; 78
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sty $84.b		; 84 84
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $E8.b		; 04 E8
	php		; 08
	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	brk $7A.b		; 00 7A
	bit $3D.b,X		; 34 3D
	ora ($31.b,X)		; 01 31
	bpl  31.b		; 10 1F
	brk $0B.b		; 00 0B
	ora [$0C.b]		; 07 0C
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	ora ($34.b,X)		; 01 34
	ora ($01.b,X)		; 01 01
	cop $10.b		; 02 10
	asl $0000.w		; 0E 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	bne  64.b		; D0 40
	beq  64.b		; F0 40
	pha		; 48
	bcs -24.b		; B0 E8
	bcs  40.b		; B0 28
	bne -76.b		; D0 B4
	cld		; D8
	phx		; DA
	cpx $E0FE.w		; EC FE E0
	rti		; 40

	jsr $0040.w		; 20 40 00
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	bne   0.b		; D0 00
	cld		; D8
	brk $EC.b		; 00 EC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	trb $7013.w		; 1C 13 70
	eor ($C7.b,X)		; 41 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $063E00.l		; 0F 00 3E 06
	phd		; 0B
	ora $131F07.l		; 0F 07 1F 13
	adc ($4F.b,S),Y		; 73 4F
	cmp $7B.b,S		; C3 7B
	ora $CA.b,S		; 03 CA
	ora $8D3F23.l		; 0F 23 3F 8D
	xce		; FB
	ora #$0706.w		; 09 06 07
	ora $0F.b,S		; 03 0F
	ora ($3E.b,X)		; 01 3E
	ora ($FE.b,X)		; 01 FE
	ora ($F6.b,X)		; 01 F6
	ora $D3.b		; 05 D3
	bpl   8.b		; 10 08
	ora [$EE.b]		; 07 EE
	lda [$EC.b]		; A7 EC
	iny		; C8
	inc $E2.b,X		; F6 E2
	ldy #$CCFE.w		; A0 FE CC
	sbc ($EC.b)		; F2 EC
	sbc ($E9.b),Y		; F1 E9
	sbc ($E1.b)		; F2 E1
	beq  35.b		; F0 23
	bcc -53.b		; 90 CB
	bvc -95.b		; 50 A1
	pha		; 48
	lda ($50.b,X)		; A1 50
	cmp $8E2C.w		; CD 2C 8E
	ror $EE4E.w		; 6E 4E EE
	inc $26EE.w		; EE EE 26
	plx		; FA
	dec $BA.b		; C6 BA
	inc $EEB6.w,X		; FE B6 EE
	bvs -57.b		; 70 C7
	ply		; 7A
	lda $4E.b,X		; B5 4E
	sbc [$2D.b],Y		; F7 2D
	wai		; CB
	sta $12.b,X		; 95 12
	bpl  10.b		; 10 0A
	brk $32.b		; 00 32
	tsb $70.b		; 04 70
	brk $42.b		; 00 42
	brk $36.b		; 00 36
	bmi  21.b		; 30 15
	sta ($A4.b),Y		; 91 A4
	and ($00.b,X)		; 21 00
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
	ora [$04.b]		; 07 04
	trb $3010.w		; 1C 10 30
	brk $40.b		; 00 40
	eor $1CE0.w,Y		; 59 E0 1C
	cpy #$802C.w		; C0 2C 80
	clc		; 18
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $1F3F3F.l		; 0F 3F 3F 1F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	adc $7FFFFF.l,X		; 7F FF FF 7F
	brk $67.b		; 00 67
	and $245B.w,Y		; 39 5B 24
	adc $BB1B.w		; 6D 1B BB
	adc [$EE.b],Y		; 77 EE
	adc [$6F.b],Y		; 77 6F
	and ($2E.b)		; 32 2E
	ora ($00.b),Y		; 11 00
	brk $38.b		; 00 38
	ora ($24.b,X)		; 01 24
	brk $1B.b		; 00 1B
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $32.b		; 00 32
	brk $11.b		; 00 11
	ora ($BE.b,X)		; 01 BE
	lda ($F6.b),Y		; B1 F6
	.db $62, $6D, $A4		; 62 6D A4
	stp		; DB
	pha		; 48
	inc $50.b,X		; F6 50
	sbc $41DE21.l		; EF 21 DE 41
	stz $B181.w		; 9C 81 B1
	sbc ($41.b,X)		; E1 41
	plp		; 28
	lda $10.b,S		; A3 10
	eor [$20.b]		; 47 20
	eor $001E00.l		; 4F 00 1E 00
	and $017F01.l,X		; 3F 01 7F 01
	cpx #$12F7.w		; E0 F7 12
	asl $0CE4.w,X		; 1E E4 0C
	nop		; EA
	asl $0EC8.w		; 0E C8 0E
	ora $07.b		; 05 07
	phx		; DA
	cmp $5C.b,S		; C3 5C
	cmp ($01.b,X)		; C1 01
	ora #$04E5.w		; 09 E5 04
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b),Y		; F1 00
	sbc $04.b,X		; F5 04
	sed		; F8
	brk $3C.b		; 00 3C
	brk $3F.b		; 00 3F
	ora ($80.b,X)		; 01 80
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	php		; 08
	brk $08.b		; 00 08
	jsr $C038.w		; 20 38 C0
	sed		; F8
	brk $E8.b		; 00 E8
	brk $C8.b		; 00 C8
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc [$00.b],Y		; F7 00
	sbc $10D708.l,X		; FF 08 D7 10
	and [$20.b]		; 27 20
	cmp [$C0.b]		; C7 C0
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	inc $00EE.w		; EE EE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	bra -58.b		; 80 C6
	sed		; F8
	xba		; EB
	xba		; EB
	sbc $E3.b,S		; E3 E3
	adc ($71.b,X)		; 61 71
	and $37.b,X		; 35 37
	ora $73.b,S		; 03 73
	bmi  -8.b		; 30 F8
	bra -120.b		; 80 88
	brk $0C.b		; 00 0C
	eor #$83FE.w		; 49 FE 83
	ror $3E41.w,X		; 7E 41 3E
	and $02.b,X		; 35 02
	ora $00.b,S		; 03 00
	rti		; 40

	rti		; 40

	bvs   0.b		; 70 00
	sed		; F8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $1030.w		; 20 30 10
	trb $0380.w		; 1C 80 03
	cpy $06.b		; C4 06
	.db $42, $03		; 42 03
	.db $42, $27		; 42 27
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$FCFC.w		; E0 FC FC
	sed		; F8
	sed		; F8
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($0102.w,X)		; FC 02 01
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
	sbc $C27DF4.l		; EF F4 7D C2
	cmp $207F0A.l		; CF 0A 7F 20
	dec A		; 3A
	php		; 08
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	brk $C2.b		; 00 C2
	brk $0A.b		; 00 0A
	bmi  32.b		; 30 20
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5A.b		; 00 5A
	cmp $1F.b,S		; C3 1F
	.db $42, $1E		; 42 1E
	sec		; 38
	trb $0B04.w		; 1C 04 0B
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($3C.b,X)		; 01 3C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora $03.b,S		; 03 03
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	sta $96171B.l		; 8F 1B 17 96
	ora $F71F57.l,X		; 1F 57 1F F7
	and $7DFFEF.l,X		; 3F EF FF 7D
	sbc $0D3EF6.l,X		; FF F6 3E 0D
	ora $13.b,S		; 03 13
	tsb $0F10.w		; 0C 10 0F
	ora ($8F.b,S),Y		; 13 8F
	and ($0F.b,S),Y		; 33 0F
	eor $FF1DF0.l		; 4F F0 1D FF
	asl $3F.b,X		; 16 3F
	beq  -1.b		; F0 FF
	cpx $E1FD.w		; EC FD E1
	sbc ($E2.b,S),Y		; F3 E2
	inc $FAF6.w,X		; FE F6 FA
	pea $F7FC.w		; F4 FC F7
	jsr ($DFE1.w,X)		; FC E1 DF
	cpx #$62F0.w		; E0 F0 62
.ACCU 8
	sep #$ED		; E2 ED
	tsb $F0C2.w		; 0C C2 F0
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	cpx $78.b		; E4 78
	cpx $B8.b		; E4 B8
	eor ($C0.b,X)		; 41 C0
	sta [$61.b]		; 87 61
	rti		; 40

	bne   0.b		; D0 00
	ldy #$00.b		; A0 00
	rts		; 60

	brk $00.b		; 00 00
	cpy #$01.b		; C0 01
	sed		; F8
	sta [$42.b]		; 87 42
	rol $0001.w,X		; 3E 01 00
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($01.b,X)		; 81 01
	and $84.b		; 25 84
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl $F701.w		; 0E 01 F7
	ora $3923E3.l		; 0F E3 23 39
	cmp $05FD.w,Y		; D9 FD 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1C2300.l		; 0F 00 23 1C
	cmp $0506.w,Y		; D9 06 05
	cop $30.b		; 02 30
	tsb $00.b		; 04 00
	eor #$00.b		; 49 00
	ldx $B7.b,Y		; B6 B7
	dec $C33D.w		; CE 3D C3
	cmp $70A660.l		; CF 60 A6 70
.ACCU 8
.INDEX 8
	sep #$79		; E2 79
	sbc $F6F6FF.l,X		; FF FF F6 F6
	eor #$49.b		; 49 49
	rol $04.b,X		; 36 04
	and $3F02.w,X		; 3D 02 3F
	jsr $105F.w		; 20 5F 10
	adc $071809.l		; 6F 09 18 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $8D81.w		; 8D 81 8D
	sta ($C3.b,X)		; 81 C3
	cmp $7E.b,S		; C3 7E
	sbc $00FF00.l,X		; FF 00 FF 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	ror $7E00.w,X		; 7E 00 7E
	brk $3C.b		; 00 3C
	brk $81.b		; 00 81
	sta ($3C.b,X)		; 81 3C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $2EC0.w		; 0C C0 2E
	cpx #$07.b		; E0 07
	cpx #$17.b		; E0 17
	beq   3.b		; F0 03
	bmi   9.b		; 30 09
	clc		; 18
	tsb $1C.b		; 04 1C
	cop $0E.b		; 02 0E
	adc $809F40.l,X		; 7F 40 9F 80
	lda $000FA0.l,X		; BF A0 0F 00
	ora $000710.l,X		; 1F 10 07 00
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	tsb $8C.b		; 04 8C
	tsb $CC.b		; 04 CC
	bra -52.b		; 80 CC
	brk $64.b		; 00 64
	.db $82, $26, $A0		; 82 26 A0
	rol $C1.b,X		; 36 C1
	tas		; 1B
	rts		; 60

	phd		; 0B
	ora $00.b,S		; 03 00
	sta $80.b,S		; 83 80
	ora [$04.b]		; 07 04
	cmp $40.b,S		; C3 40
	cmp ($00.b,X)		; C1 00
	cmp $02.b,S		; C3 02
	beq  16.b		; F0 10
	sbc ($01.b),Y		; F1 01
	tsb $A6.b		; 04 A6
	rti		; 40

	adc ($24.b)		; 72 24
	inc $A8.b,X		; F6 A8
	ldy $58E0.w,X		; BC E0 58
	bra  32.b		; 80 20
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cld		; D8
	cld		; D8
	sty $088C.w		; 8C 8C 08
	php		; 08
	rti		; 40

	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $2C30.w		; 20 30 2C
	bmi -128.b		; 30 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
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
	rts		; 60

	ora $84B1.w		; 0D B1 84
	eor [$C4.b],Y		; 57 C4
	jsl $7317E1.l		; 22 E1 17 73
	and $1C2E06.l,X		; 3F 06 2E 1C
	ora $09.b,X		; 15 09
	sed		; F8
	php		; 08
	sei		; 78
	brk $B8.b		; 00 B8
	bra  93.b		; 80 5D
	rti		; 40

	pld		; 2B
	jsr $0006.w		; 20 06 00
	trb $0901.w		; 1C 01 09
	cop $14.b		; 02 14
	php		; 08
	pea $B418.w		; F4 18 B4
	sei		; 78
	stz $7660.w,X		; 9E 60 76
	sty $FE.b,X		; 94 FE
	bmi 118.b		; 30 76
	pha		; 48
	inc $E814.w		; EE 14 E8
	brk $18.b		; 00 18
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $94.b		; 00 94
	php		; 08
	bmi   0.b		; 30 00
	pha		; 48
	bra  20.b		; 80 14
	brk $E0.b		; 00 E0
	tsb $0E6A.w		; 0C 6A 0E
	lda ($84.b)		; B2 84
	and $86.b,X		; 35 86
	jmp $28C6.w		; 4C C6 28
.INDEX 8
	sep #$1C		; E2 1C
	adc ($06.b,S),Y		; 73 06
	and ($F8.b,S),Y		; 33 F8
	phd		; 0B
	sbc ($01.b)		; F2 01
	jmp ($F805.w,X)		; 7C 05 F8
	bra  56.b		; 80 38
	brk $5C.b		; 00 5C
	rti		; 40

	rol $1C22.w		; 2E 22 1C
	bpl -42.b		; 10 D6
	lda ($2E.b)		; B2 2E
	lsr $76.b,X		; 56 76
	lsr $3CCC.w		; 4E CC 3C
	tsb $027C.w		; 0C 7C 02
	asl $0701.w,X		; 1E 01 07
	brk $03.b		; 00 03
	lda ($08.b),Y		; B1 08
	eor ($80.b),Y		; 51 80
	eor #$88.b		; 49 88
	and ($30.b,S),Y		; 33 30
	ora ($10.b,S),Y		; 13 10
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	bit $50.b,X		; 34 50
	clc		; 18
	rol $08.b		; 26 08
	eor $00.b,X		; 55 00
	stz $3C18.w		; 9C 18 3C
	bit $FDFF.w,X		; 3C FF FD
	inc $FE75.w,X		; FE 75 FE
	cmp ($CB.b,S),Y		; D3 CB
	cmp ($C1.b,X)		; C1 C1
	ldx #$AA.b		; A2 AA
	adc $6B.b,S		; 63 6B
	cmp ($DB.b,S),Y		; D3 DB
	bit $38.b,X		; 34 38
	pea $74FA.w		; F4 FA 74
	ply		; 7A
	jsr $60E0.w		; 20 E0 60
	ldy #$40.b		; A0 40
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	bra  56.b		; 80 38
	brk $C4.b		; 00 C4
	sec		; 38
	tsb $F8.b		; 04 F8
	jsr $2040.w		; 20 40 20
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	brk $09.b		; 00 09
	inc A		; 1A
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	tsb $0C.b		; 04 0C
	stz $0C.b,X		; 74 0C
	stx $7F.b		; 86 7F
	sbc ($FF.b),Y		; F1 FF
	txy		; 9B
	sta $0707.w,X		; 9D 07 07
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	bvs   0.b		; 70 00
	sed		; F8
	brk $9C.b		; 00 9C
	rts		; 60

	bit $3800.w,X		; 3C 00 38
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	eor #$05.b		; 49 05
	lda [$AA.b],Y		; B7 AA
	sbc $7439BC.l,X		; FF BC 39 74
	php		; 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F6F6FF.l,X		; FF FF F6 F6
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	phx		; DA
	bpl -13.b		; 10 F3
	tsb $61C1.w		; 0C C1 61
	rti		; 40

	jsr $B020.w		; 20 20 B0
	rts		; 60

	beq  64.b		; F0 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $E0.b		; 00 E0
	rts		; 60

	sta ($80.b,X)		; 81 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $F8.b		; 00 F8
	sed		; F8
	sed		; F8
	sed		; F8
	mvn $3C,$7C		; 54 7C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	rol $3E30.w		; 2E 30 3E
	tsb $1C22.w		; 0C 22 1C
	sei		; 78
	bcs -40.b		; B0 D8
	bmi  84.b		; 30 54
	sec		; 38
	bit $18.b,X		; 34 18
	bit $18.b		; 24 18
	jsr $0C10.w		; 20 10 0C
	brk $1C.b		; 00 1C
	brk $48.b		; 00 48
	rol $3F65.w,X		; 3E 65 3F
	bit $1F.b,X		; 34 1F
	ora ($0F.b)		; 12 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $02.b,S		; 23 02
	plp		; 28
	php		; 08
	ora ($01.b),Y		; 11 01
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	clc		; 18
	bpl  28.b		; 10 1C
	php		; 08
	asl $0000.w		; 0E 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	pea $0404.w		; F4 04 04
	ora [$02.b]		; 07 02
	ora $01.b,S		; 03 01
	ora ($80.b,X)		; 01 80
	bra  32.b		; 80 20
	cpx #$10.b		; E0 10
	bvs   8.b		; 70 08
	sec		; 38
	tsb $1C.b		; 04 1C
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	bmi  62.b		; 30 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	iny		; C8
	php		; 08
	trb $1E.b		; 14 1E
	trb $1E.b		; 14 1E
	asl A		; 0A
	ora $28073F.l		; 0F 3F 07 28
	ora [$2B.b],Y		; 17 2B
	ora [$28.b],Y		; 17 28
	ora [$74.b],Y		; 17 74
	tsb $0D15.w		; 0C 15 0D
	ora ($0D.b),Y		; 11 0D
	php		; 08
	asl $07.b		; 06 07
	brk $10.b		; 00 10
	asl $11.b		; 06 11
	ora [$10.b]		; 07 10
	brk $03.b		; 00 03
	brk $8F.b		; 00 8F
	sei		; 78
	sta [$70.b]		; 87 70
	adc [$10.b]		; 67 10
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	and $1C.b		; 25 1C
	and ($1C.b,X)		; 21 1C
	lsr A		; 4A
	rol $0067.w,X		; 3E 67 00
	adc $000F00.l		; 6F 00 0F 00
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	and ($00.b,X)		; 21 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $0F.b		; 00 0F
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	adc $B9C747.l,X		; 7F 47 C7 B9
	sta ($27.b,X)		; 81 27
	and [$80.b]		; 27 80
	and $0060C0.l,X		; 3F C0 60 00
	rti		; 40

	bra -64.b		; 80 C0
	cop $01.b		; 02 01
	and $7F00.w,Y		; 39 00 7F
	brk $D9.b		; 00 D9
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $0118.w		; 0D 18 01
	ora $0A03.w,Y		; 19 03 0A
	ora $030F05.l		; 0F 05 0F 03
	ora $02.b		; 05 02
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $0408.w		; 0E 08 04
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($40.b,X)		; 01 40
	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	cpy #$F0.b		; C0 F0
	jsr $0010.w		; 20 10 00
	sed		; F8
	bra  -8.b		; 80 F8
	rts		; 60

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	jsr $0000.w		; 20 00 00
	cpx #$80.b		; E0 80
	brk $60.b		; 00 60
	brk $BF.b		; 00 BF
	inc $7D1F.w,X		; FE 1F 7D
	cmp $3B8E7C.l,X		; DF 7C 8E 3B
	lda $1DC631.l		; AF 31 C6 1D
	cmp [$1E.b],Y		; D7 1E
	sbc $0D.b		; E5 0D
	bit $CD36.w,X		; 3C 36 CD
	mvn $14,$88		; 54 88 14
	sbc $28.b,S		; E3 28
	cmp ($00.b,X)		; C1 00
	sbc $10.b,X		; F5 10
	inc $00.b		; E6 00
	sbc $02.b,X		; F5 02
	inc $FE00.w,X		; FE 00 FE
	jsr ($FC3E.w,X)		; FC 3E FC
	dec $3D.b		; C6 3D
	lda ($CD.b)		; B2 CD
	lda $CB4FB1.l		; AF B1 4F CB
	ldx $62.b		; A6 62
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $3C.b		; 00 3C
	brk $CD.b		; 00 CD
	ora ($B0.b,X)		; 01 B0
	rti		; 40

	iny		; C8
	bmi  97.b		; 30 61
	clc		; 18
	dec $E54D.w		; CE 4D E5
	rol $FB.b		; 26 FB
	phx		; DA
	sbc $D6C5.w,X		; FD C5 D6
	plx		; FA
	sed		; F8
	sbc $D8FC78.l,X		; FF 78 FC D8
	jsr ($304C.w,X)		; FC 4C 30
	rol $18.b		; 26 18
	phy		; 5A
	sty $C5.b		; 84 C5
	ldx #$C2.b		; A2 C2
	lda $B848.w,Y		; B9 48 B8
	phk		; 4B
	tyx		; BB
	wai		; CB
	tsa		; 3B
	bpl -57.b		; 10 C7
	cmp ($FF.b,X)		; C1 FF
	lda ($BF.b)		; B2 BF
	lda $8DF606.l		; AF 06 F6 8D
	cpy #$9F.b		; C0 9F
	and [$C8.b],Y		; 37 C8
	jmp $3E15.w		; 4C 15 3E
	asl $CD.b		; 06 CD
	tsb $0063.w		; 0C 63 00
	ror $00.b,X		; 76 00
	ldy $A000.w		; AC 00 A0
	brk $07.b		; 00 07
	ora [$82.b]		; 07 82
	lda ($F8.b)		; B2 F8
	ror $7FFC.w,X		; 7E FC 7F
	xce		; FB
	sei		; 78
	sed		; F8
	sed		; F8
	cmp $DFF0FF.l,X		; DF FF F0 DF
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	sec		; 38
	rti		; 40

	ror A		; 6A
	eor ($7F.b)		; 52 7F
	bvc -81.b		; 50 AF
	bvc -48.b		; 50 D0
	jsr $A050.w		; 20 50 A0
	cpx #$80.b		; E0 80
	rti		; 40

	bra  62.b		; 80 3E
	brk $10.b		; 00 10
	sbc ($52.b)		; F2 52
	adc ($C0.b,S),Y		; 73 C0
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $8C.b		; 00 8C
	brk $FE.b		; 00 FE
	bpl  -2.b		; 10 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $26.b		; 00 26
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	tsb $040E.w		; 0C 0E 04
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	clc		; 18
	brk $00.b		; 00 00
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sec		; 38
	bpl  28.b		; 10 1C
	php		; 08
	asl $0704.w		; 0E 04 07
	.db $42, $C3		; 42 C3
	ora ($F1.b),Y		; 11 F1
	tsb $3C.b		; 04 3C
	cop $0E.b		; 02 0E
	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	cop $BD.b		; 02 BD
	sta ($2E.b,X)		; 81 2E
	jsr $080B.w		; 20 0B 08
	ora $04.b		; 05 04
	ldy $98.b,X		; B4 98
	ply		; 7A
	jmp.w [$20FF]		; DC FF 20
	adc ($E2.b,S),Y		; 73 E2
	lda $147A59.l,X		; BF 59 7A 14
	rol $08.b,X		; 36 08
	ora $005807.l		; 0F 07 58 00
	stz $2080.w		; 9C 80 20
	brk $E2.b		; 00 E2
	tsb $0059.w		; 0C 59 00
	trb $01.b		; 14 01
	php		; 08
	ora ($07.b,X)		; 01 07
	brk $E8.b		; 00 E8
	beq 116.b		; F0 74
	sed		; F8
	ldy $6E78.w,X		; BC 78 6E
	bmi  54.b		; 30 36
	tsb $3F.b		; 04 3F
	inc A		; 1A
	ora $0706.w,Y		; 19 06 07
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $04.b		; 00 04
	php		; 08
	inc A		; 1A
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $2F.b		; 00 2F
	php		; 08
	and ($12.b,S),Y		; 33 12
	rol $FC20.w,X		; 3E 20 FC
	jsr ($7878.w,X)		; FC 78 78
	bvs -16.b		; 70 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	php		; 08
	bpl  18.b		; 10 12
	tsb $0020.w		; 0C 20 00
	pei ($38.b)		; D4 38
	pha		; 48
	beq  80.b		; F0 50
	cpx #$A0.b		; E0 A0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	asl $3010.w,X		; 1E 10 30
	bit $60.b		; 24 60
	asl $4F40.w		; 0E 40 4F
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $003F3F.l,X		; 3F 3F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	jsr $1030.w		; 20 30 10
	ora $0710.w,Y		; 19 10 07
	clc		; 18
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	inc $41FE.w,X		; FE FE 41
	cmp ($10.b,X)		; C1 10
	bvs  12.b		; 70 0C
	bit $1F03.w,X		; 3C 03 1F
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $2F00.w,X		; 3E 00 2F
	jsr $1013.w		; 20 13 10
	tsb $020C.w		; 0C 0C 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq  32.b		; F0 20
	bit $0F08.w,X		; 3C 08 0F
	cop $03.b		; 02 03
	sta ($81.b,X)		; 81 81
	rti		; 40

	cpy #$10.b		; C0 10
	beq   4.b		; F0 04
	bit $4040.w,X		; 3C 40 40
	bne  16.b		; D0 10
	pea $FD04.w		; F4 04 FD
	ora ($7E.b,X)		; 01 7E
	brk $BF.b		; 00 BF
	bra  47.b		; 80 2F
	jsr $080B.w		; 20 0B 08
	phd		; 0B
	clc		; 18
	cop $12.b		; 02 12
	clc		; 18
	and ($0C.b,S),Y		; 33 0C
	rol $30.b		; 26 30
	stz $18.b		; 64 18
	jmp $28E0.w		; 4C E0 28
	sei		; 78
	rti		; 40

	ora [$00.b]		; 07 00
	ora $0E00.w		; 0D 00 0E
	cop $18.b		; 02 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	bra 112.b		; 80 70
	rti		; 40

	beq  32.b		; F0 20
	cli		; 58
	bra -44.b		; 80 D4
	php		; 08
	plx		; FA
	cpx $1EE9.w		; EC E9 1E
	lsr $373F.w		; 4E 3F 37
	ora $208040.l		; 0F 40 80 20
	brk $80.b		; 00 80
	jsr $2008.w		; 20 08 20
	cpx $1E00.w		; EC 00 1E
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $40.b		; 00 40
	bvs  32.b		; 70 20
	sec		; 38
	sta ($9C.b)		; 92 9C
	phk		; 4B
	cpy $F316.w		; CC 16 F3
	eor $047F3B.l		; 4F 3B 7F 04
	rol $A01C.w		; 2E 1C A0
	jsr $10D0.w		; 20 D0 10
	pla		; 68
	php		; 08
	ldy $84.b,X		; B4 84
	pld		; 2B
	jsr $1013.w		; 20 13 10
	tsb $00.b		; 04 00
	trb $0001.w		; 1C 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	jmp ($7E7C.w,X)		; 7C 7C 7E
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $5C.b		; 00 5C
	sec		; 38
	lsr A		; 4A
	bit $08FC.w,X		; 3C FC 08
	dec $7B48.w		; CE 48 7B
	tsb $2D.b		; 04 2D
	asl $1E2F.w,X		; 1E 2F 1E
	ora [$0E.b],Y		; 17 0E
	ora $010900.l		; 0F 00 09 01
	php		; 08
	brk $48.b		; 00 48
	bmi   4.b		; 30 04
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $37.b		; 06 37
	beq  55.b		; F0 37
	beq  23.b		; F0 17
	bvs  19.b		; 70 13
	bmi  11.b		; 30 0B
	sec		; 38
	ora $1C.b		; 05 1C
	ora ($0C.b,X)		; 01 0C
	cop $F6.b		; 02 F6
	cmp $404FC0.l		; CF C0 4F 40
	and $000F20.l		; 2F 20 0F 00
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	sta $22.b		; 85 22
	sta $33.b		; 85 33
	sbc $33.b		; E5 33
	cmp [$10.b]		; C7 10
	sbc [$1B.b]		; E7 1B
	sbc [$18.b],Y		; F7 18
	inc $0D.b		; E6 0D
	sbc ($0E.b,S),Y		; F3 0E
	rep #$00		; C2 00
	sbc $20.b,S		; E3 20
	cmp $00.b,S		; C3 00
	cpx #$00.b		; E0 00
	sbc ($10.b,S),Y		; F3 10
	cpx #$00.b		; E0 00
	sbc $00.b,X		; F5 00
	plx		; FA
	php		; 08
	phk		; 4B
	bit $F3.b,X		; 34 F3
	adc $5BAD.w		; 6D AD 5B
	adc [$1B.b],Y		; 77 1B
	phy		; 5A
	and [$AE.b],Y		; 37 AE
	adc [$F7.b],Y		; 77 F7
	ror $6ADB.w		; 6E DB 6A
	bit $00.b,X		; 34 00
	adc $5B00.w		; 6D 00 5B
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $77.b		; 00 77
	brk $6E.b		; 00 6E
	brk $6A.b		; 00 6A
	tsb $7D.b		; 04 7D
	sbc $7F7EFF.l,X		; FF FF 7E 7F
	sta $DF66FF.l,X		; 9F FF 66 DF
	lsr A		; 4A
	stz $9F0D.w,X		; 9E 0D 9F
	stx $9D.b,Y		; 96 9D
	sty $39.b,X		; 94 39
	dec $741A.w		; CE 1A 74
	sta $066619.l,X		; 9F 19 66 06
	lsr A		; 4A
	jsl $96600D.l		; 22 0D 60 96
	rts		; 60

	sty $62.b,X		; 94 62
	eor [$60.b]		; 47 60
	plx		; FA
	ora $DB.b		; 05 DB
	and $FA66.w,X		; 3D 66 FA
	jsr ($CC04.w,X)		; FC 04 CC
	bit $2C.b,X		; 34 2C
	pei ($7C.b)		; D4 7C
	cpx $80.b		; E4 80
	brk $04.b		; 00 04
	brk $3C.b		; 00 3C
	brk $F9.b		; 00 F9
	brk $03.b		; 00 03
	brk $33.b		; 00 33
	brk $D3.b		; 00 D3
	brk $E3.b		; 00 E3
	brk $80.b		; 00 80
	ora $80FD0D.l,X		; 1F 0D FD 80
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	clc		; 18
	ora #$39.b		; 09 39
	bvc 113.b		; 50 71
	brk $00.b		; 00 00
	ora ($10.b)		; 12 10
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc [$00.b],Y		; F7 00
	sbc [$10.b],Y		; F7 10
	inc $20.b		; E6 20
	sta $000001.l		; 8F 01 00 00
	brk $00.b		; 00 00
	bmi -64.b		; 30 C0
	rol $F916.w,X		; 3E 16 F9
	and [$7F.b],Y		; 37 7F
	and [$FE.b],Y		; 37 FE
	adc $008F7F.l		; 6F 7F 8F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D6.b		; 00 D6
	brk $B1.b		; 00 B1
	asl $B6.b		; 06 B6
	ora [$60.b]		; 07 60
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($3E.b,X)		; 01 3E
	rol $FEFE.w,X		; 3E FE FE
	inc $F6.b,X		; F6 F6
	cmp $F9FDDC.l,X		; DF DC FD F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $DE00.w,X		; 3E 00 DE
	bit $FC72.w,X		; 3C 72 FC
	pei ($F8.b)		; D4 F8
	ora $00E2.w,Y		; 19 E2 00
	brk $00.b		; 00 00
	ora $2E3909.l		; 0F 09 39 2E
	rts		; 60

	asl $40.b		; 06 40
	mvp $09,$E0		; 44 E0 09
	cmp ($40.b,X)		; C1 40
	rep #$00		; C2 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $1F.b		; 06 1F
	ora $3F3F3F.l,X		; 1F 3F 3F 3F
	and $3F3E3E.l,X		; 3F 3E 3E 3F
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	rts		; 60

	clc		; 18
	sec		; 38
	tsb $4460.w		; 0C 60 44
	jmp $009E.w		; 4C 9E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F0.b		; E0 F0
	beq -72.b		; F0 B8
	clv		; B8
	cpx #$E0.b		; E0 E0
	sed		; F8
	brk $FC.b		; 00 FC
	cli		; 58
	ldy $5C1B.w		; AC 1B 5C
	dey		; 88
	eor $88.b,X		; 55 88
	sbc $3837.w,Y		; F9 37 38
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	brk $18.b		; 00 18
	rti		; 40

	phb		; 8B
	jsr $208B.w		; 20 8B 20
	and ($02.b)		; 32 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $B538.w,X		; 5D 38 B5
	sei		; 78
	lda [$7A.b],Y		; B7 7A
	ror $5430.w		; 6E 30 54
	jsr $103C.w		; 20 3C 10
	dec A		; 3A
	php		; 08
	ora $023800.l		; 0F 00 38 02
	sei		; 78
	cop $7A.b		; 02 7A
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	php		; 08
	bpl   0.b		; 10 00
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	ora $1C3A.w		; 0D 3A 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1C00.w		; 0D 00 1C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rts		; 60

	cpx #$80.b		; E0 80
	bne -32.b		; D0 E0
	beq   0.b		; F0 00
	bcs -96.b		; B0 A0
	cpx #$00.b		; E0 00
	jsr $A0C0.w		; 20 C0 A0
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	ldy #$40.b		; A0 40
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $C1.b		; 00 C1
	sbc $7D07E4.l,X		; FF E4 07 7D
	ora ($27.b,X)		; 01 27
	cpx #$09.b		; E0 09
	sei		; 78
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	plx		; FA
	cop $FE.b		; 02 FE
	brk $5F.b		; 00 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	asl $86B1.w		; 0E B1 86
	adc $19C7.w,X		; 7D C7 19
	ora $C4.b,S		; 03 C4
	ora [$09.b]		; 07 09
	asl $FC30.w		; 0E 30 FC
	brk $78.b		; 00 78
	sbc ($01.b)		; F2 01
	jmp ($B904.w,X)		; 7C 04 B9
	bra  -3.b		; 80 FD
	brk $F9.b		; 00 F9
	brk $F4.b		; 00 F4
	tsb $48.b		; 04 48
	pha		; 48
	brk $00.b		; 00 00
	lda #$5A.b		; A9 5A
	adc $16.b,X		; 75 16
	and [$15.b],Y		; 37 15
	tsa		; 3B
	ora $000E.w		; 0D 0E 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	phy		; 5A
	tsb $16.b		; 04 16
	php		; 08
	ora $08.b,X		; 15 08
	ora $0000.w		; 0D 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	ora $1C.b,X		; 15 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1F.b		; 14 1F
	trb $9F.b		; 14 9F
	ora ($7E.b,S),Y		; 13 7E
	stx $15.b		; 86 15
.INDEX 8
	sep #$14		; E2 14
	sbc $14.b,S		; E3 14
	sbc $14.b,S		; E3 14
	sbc $14.b,S		; E3 14
	sbc $14.b,S		; E3 14
	cpx #$10.b		; E0 10
	rts		; 60

	ora ($00.b,X)		; 01 00
	lda $D675.w,X		; BD 75 D6
	lda $401F60.l		; AF 60 1F 40
	rol $30C0.w,X		; 3E C0 30
	cpx #$F0.b		; E0 F0
	jsr $D138.w		; 20 38 D1
	clc		; 18
	adc ($00.b)		; 72 00
	lda #$09.b		; A9 09
	asl $009E.w,X		; 1E 9E 00
	bra  32.b		; 80 20
	jsr $0000.w		; 20 00 00
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	.db $82, $E3, $20		; 82 E3 20
	sbc $00.b,S		; E3 00
	rep #$04		; C2 04
	lsr $00.b		; 46 00
	dec $48.b		; C6 48
	cpy $8C00.w		; CC 00 8C
	bra   8.b		; 80 08
	bit $9E20.w,X		; 3C 20 9E
	.db $82, $3C, $00		; 82 3C 00
	sec		; 38
	brk $7C.b		; 00 7C
	mvp $00,$30		; 44 30 00
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	php		; 08
	sec		; 38
	ora $0F.b,S		; 03 0F
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	jsr ($FEF0.w,X)		; FC F0 FE
	plx		; FA
	dec $FAFC.w,X		; DE FC FA
	sbc $FEB8.w,X		; FD B8 FE
	adc $FDFE.w,X		; 7D FE FD
	inc $FCF9.w,X		; FE F9 FC
	beq   3.b		; F0 03
	cmp ($29.b)		; D2 29
	jmp.w [$7869]		; DC 69 78
	sty $91.b,X		; 94 91
	adc $9D69.w		; 6D 69 9D
	adc $7BFD.w,Y		; 79 FD 7B
	xce		; FB
	txs		; 9A
	sta $2DDF85.l,X		; 9F 85 DF 2D
	lda $2F.b,X		; B5 2F
	bcs  95.b		; B0 5F
	beq -82.b		; F0 AE
	rts		; 60

	sbc [$61.b]		; E7 61
	sbc ($7D.b,X)		; E1 7D
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	lsr A		; 4A
	eor ($4F.b,X)		; 41 4F
	rti		; 40

	ora $001F00.l		; 0F 00 1F 00
	asl $0200.w,X		; 1E 00 02
	brk $04.b		; 00 04
	ror $FC48.w,X		; 7E 48 FC
	rts		; 60

	sec		; 38
	rti		; 40

	bne -64.b		; D0 C0
	bpl  64.b		; 10 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	bra  32.b		; 80 20
	jsr $8000.w		; 20 00 80
	rts		; 60

	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $E1.b		; 00 E1
	adc $B3E0.w,X		; 7D E0 B3
	cpx $FCB0.w		; EC B0 FC
	tay		; A8
	ply		; 7A
	ldy $6C3A.w		; AC 3A 6C
	ldy #$1E.b		; A0 1E
	stz $82.b,X		; 74 82
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	dey		; 88
	brk $0C.b		; 00 0C
	brk $8C.b		; 00 8C
	bra -64.b		; 80 C0
	cpy #$8C.b		; C0 8C
	ldy $0203.w		; AC 03 02
	cop $03.b		; 02 03
	ror $05.b,X		; 76 05
	adc $7D37.w,X		; 7D 37 7D
	tsa		; 3B
	lda [$79.b]		; A7 79
	sta $07F973.l		; 8F 73 F9 07
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	bit $03.b,X		; 34 03
	sec		; 38
	ora $78.b,S		; 03 78
	ora $73.b,S		; 03 73
	tsb $00.b		; 04 00
	ora [$F8.b]		; 07 F8
	jsr ($FF70.w,X)		; FC 70 FF
	inc $FE.b,X		; F6 FE
	beq  -7.b		; F0 F9
	sbc $FEFF.w,Y		; F9 FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $507BF3.l,X		; FF F3 7B 50
	bcs  49.b		; B0 31
	cmp ($C6.b,X)		; C1 C6
	inc $F9.b,X		; F6 F9
	sed		; F8
	jsr ($7DFF.w,X)		; FC FF 7D
	inc $7CBA.w,X		; FE BA 7C
	jmp ($202A.w,X)		; 7C 2A 20
	cpy $20.b		; C4 20
	sed		; F8
	bra -48.b		; 80 D0
	bra -56.b		; 80 C8
	bra -48.b		; 80 D0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	ldy $84.b		; A4 84
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	jsr $B0A0.w		; 20 A0 B0
	bmi -96.b		; 30 A0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$D8.b		; C0 D8
	bra -20.b		; 80 EC
	cli		; 58
	inc $0000.w,X		; FE 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	jsr $0058.w		; 20 58 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1C.b		; 04 1C
	ora [$30.b],Y		; 17 30
	ora $20.b,S		; 03 20
	jsl $600470.l		; 22 70 04 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $30.b		; 00 30
	bmi  12.b		; 30 0C
	trb $B006.w		; 1C 06 B0
	ldx #$00.b		; A2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0.b		; C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jmp $00005C.l		; 5C 5C 00 00
	brk $07.b		; 00 07
	tsb $0C.b		; 04 0C
	brk $08.b		; 00 08
	ora ($19.b,X)		; 01 19
	asl A		; 0A
	tas		; 1B
	brk $13.b		; 00 13
	bmi   2.b		; 30 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0408.w		; 0E 08 04
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	brk $1F.b		; 00 1F
	brk $30.b		; 00 30
	cmp $3E4778.l		; CF 78 47 3E
	ora ($FB.b,X)		; 01 FB
	inc $FF07.w,X		; FE 07 FF
	php		; 08
	ora $000F0B.l		; 0F 0B 0F 00
	brk $0F.b		; 00 0F
	brk $87.b		; 00 87
	brk $C1.b		; 00 C1
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	ora [$08.b]		; 07 08
	ora [$7D.b]		; 07 7D
	inc $FD1B.w,X		; FE 1B FD
	sbc $C73BF3.l		; EF F3 3B C7
	nop		; EA
	ora $DF7FBF.l,X		; 1F BF 7F DF
	sbc $FEFFBF.l,X		; FF BF FF FE
	brk $FD.b		; 00 FD
	brk $F2.b		; 00 F2
	ora ($C2.b,X)		; 01 C2
	ora $3D02.w		; 0D 02 3D
	ora ($FE.b,X)		; 01 FE
	dec $373F.w		; CE 3F 37
	cmp $FCFFF8.l		; CF F8 FF FC
	sbc $E7F0F7.l,X		; FF F7 F0 E7
	cpx #$F8.b		; E0 F8
	sed		; F8
	ldy #$FF.b		; A0 FF
	inx		; E8
	sed		; F8
	sed		; F8
	sed		; F8
	tay		; A8
	bvc -14.b		; 50 F2
	ldx #$FF.b		; A2 FF
	ldy #$BF.b		; A0 BF
	rti		; 40

	lda [$40.b]		; A7 40
	ldy #$40.b		; A0 40
	inx		; E8
	bpl -24.b		; 10 E8
	beq 102.b		; F0 66
	ldx #$66.b		; A2 66
	ldx #$66.b		; A2 66
	ldy $67.b		; A4 67
	lda $E3.b		; A5 E3
	jsr $817F.w		; 20 7F 81
	asl $18FE.w,X		; 1E FE 18
	sei		; 78
	ldx #$19.b		; A2 19
	ldx #$19.b		; A2 19
	ldy $19.b		; A4 19
	lda $18.b		; A5 18
	jsr $001C.w		; 20 1C 00
	brk $61.b		; 00 61
	rts		; 60

	and [$20.b]		; 27 20
	eor $4F7437.l		; 4F 37 74 4F
	jsr $601F.w		; 20 1F 60
	trb $70C0.w		; 1C C0 70
	cpx #$F1.b		; E0 F1
	jsr $D339.w		; 20 39 D3
	clc		; 18
	bmi -128.b		; 30 80
	phk		; 4B
	phb		; 8B
	tsb $00CC.w		; 0C CC 00
	bra  32.b		; 80 20
	jsr $0000.w		; 20 00 00
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $3F.b		; 00 3F
	sed		; F8
	brk $7E.b		; 00 7E
	brk $18.b		; 00 18
	sed		; F8
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	sbc $00FF00.l,X		; FF 00 FF 00
	and [$20.b]		; 27 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bpl  28.b		; 10 1C
	brk $04.b		; 00 04
	dey		; 88
	sty $8C80.w		; 8C 80 8C
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	sed		; F8
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	eor $B538.w,X		; 5D 38 B5
	sei		; 78
	lda [$7A.b],Y		; B7 7A
	ror $5430.w		; 6E 30 54
	jsr $103C.w		; 20 3C 10
	dec A		; 3A
	php		; 08
	ora $023800.l		; 0F 00 38 02
	sei		; 78
	cop $7A.b		; 02 7A
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	php		; 08
	bpl   0.b		; 10 00
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	ora $1C3A.w		; 0D 3A 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1C00.w		; 0D 00 1C
	ora ($AC.b,X)		; 01 AC
	xce		; FB
	adc $0576.w,Y		; 79 76 05
	cop $02.b		; 02 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $0A.b,S		; 03 0A
	ora [$0E.b]		; 07 0E
	ora [$AB.b]		; 07 AB
	bvc 118.b		; 50 76
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $B7.b		; 00 B7
	lsr A		; 4A
	cmp [$6B.b],Y		; D7 6B
	sbc [$6B.b],Y		; F7 6B
	inc $1A.b,X		; F6 1A
	lsr $BA.b,X		; 56 BA
	ldx $7A.b,Y		; B6 7A
	ldx $7A.b,Y		; B6 7A
	inc $7A.b,X		; F6 7A
	lsr A		; 4A
	brk $6B.b		; 00 6B
	brk $6B.b		; 00 6B
	brk $1A.b		; 00 1A
	ora ($BA.b,X)		; 01 BA
	ora ($7A.b,X)		; 01 7A
	ora ($7A.b,X)		; 01 7A
	ora ($7A.b,X)		; 01 7A
	ora ($EF.b,X)		; 01 EF
	beq  -1.b		; F0 FF
	adc [$F9.b],Y		; 77 F9
	and [$F6.b]		; 27 F6
	eor #$F5.b		; 49 F5
	ror $57DA.w		; 6E DA 57
	cmp #$87.b		; C9 87
	cpy $608B.w		; CC 8B 60
	bne 103.b		; D0 67
	bvc   7.b		; 50 07
	jsr $0049.w		; 20 49 00
	ror $5700.w		; 6E 00 57
	jsr $3087.w		; 20 87 30
	phb		; 8B
	bmi  32.b		; 30 20
	cpy #$E0.b		; C0 E0
	cmp $30D8F8.l,X		; DF F8 D8 30
	bne -32.b		; D0 E0
	brk $60.b		; 00 60
	sta ($E1.b,X)		; 81 E1
	lda $C8.b,S		; A3 C8
	lsr $00C0.w		; 4E C0 00
	cpy #$00.b		; C0 00
	cmp [$00.b]		; C7 00
	cmp $001F00.l		; CF 00 1F 00
	sta $029E01.l,X		; 9F 01 9E 02
	and $04.b,X		; 35 04
	jsr $4D61.w		; 20 61 4D
	cmp $16EF42.l		; CF 42 EF 16
	phy		; 5A
	ora [$58.b],Y		; 17 58
	and $301778.l		; 2F 78 17 30
	inc $1F1F.w,X		; FE 1F 1F
	ora $303030.l,X		; 1F 30 30 30
	bmi  37.b		; 30 25
	jsr $2027.w		; 20 27 20
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	rol $4F.b		; 26 4F
	cop $BF.b		; 02 BF
	ldy $FE.b		; A4 FE
	bcs -100.b		; B0 9C
	ldy #$68.b		; A0 68
	cpx #$08.b		; E0 08
	jsr $8070.w		; 20 70 80
	cpx #$F0.b		; E0 F0
	beq  64.b		; F0 40
	rti		; 40

	bpl  16.b		; 10 10
	brk $C0.b		; 00 C0
	bcs  64.b		; B0 40
	beq   0.b		; F0 00
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	rol $2710.w		; 2E 10 27
	clc		; 18
	and [$0B.b],Y		; 37 0B
	and $3B3E33.l,X		; 3F 33 3E 3B
	jmp $7A7D7B.l		; 5C 7B 7D 7A
	txs		; 9A
	sbc $0010.w,Y		; F9 10 00
	clc		; 18
	brk $0B.b		; 00 0B
	brk $23.b		; 00 23
	bpl  43.b		; 10 2B
	clc		; 18
	eor ($38.b,S),Y		; 53 38
	lsr A		; 4A
	bmi -103.b		; 30 99
	rts		; 60

	ora [$1F.b],Y		; 17 1F
	ora [$1F.b],Y		; 17 1F
	lda $9B7F03.l,X		; BF 03 7F 9B
	cmp [$BB.b],Y		; D7 BB
	tad		; 5B
	lda $F9.b,X		; B5 F9
	and [$FE.b],Y		; 37 FE
	and ($13.b,X)		; 21 13
	ora $030F13.l		; 0F 13 0F 03
	ora $99.b,S		; 03 99
	ora $BA.b,S		; 03 BA
	ora ($B1.b,X)		; 01 B1
	asl $30.b		; 06 30
	ora [$20.b]		; 07 20
	ora ($EF.b,X)		; 01 EF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $E4FFFB.l,X		; FF FB FF E4
	inc $EBF8.w,X		; FE F8 EB
	beq -16.b		; F0 F0
	cld		; D8
	beq -49.b		; F0 CF
	sbc [$F5.b],Y		; F7 F5
	xce		; FB
	plx		; FA
	sbc $FCFB.w,X		; FD FB FC
	cmp $F9.b		; C5 F9
	pha		; 48
	beq -112.b		; F0 90
	rts		; 60

	bne -96.b		; D0 A0
	inx		; E8
	sed		; F8
	beq -12.b		; F0 F4
	bvs -12.b		; 70 F4
	ldy #$E8.b		; A0 E8
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	inx		; E8
	beq -40.b		; F0 D8
	inx		; E8
	pla		; 68
	dey		; 88
	bcc  16.b		; 90 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$78.b		; 09 78
	ora $053C.w		; 0D 3C 05
	trb $0E06.w		; 1C 06 0E
	cop $0E.b		; 02 0E
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $FB.b		; 00 FB
	and [$30.b],Y		; 37 30
	ora ($10.b,S),Y		; 13 10
	phd		; 0B
	php		; 08
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc ($19.b)		; F2 19
	sep #$09		; E2 09
	sep #$0D		; E2 0D
	xce		; FB
	tsb $05F3.w		; 0C F3 05
	adc ($04.b,S),Y		; 73 04
	adc $BD06.w,Y		; 79 06 BD
	sta [$E1.b]		; 87 E1
	brk $F1.b		; 00 F1
	brk $F9.b		; 00 F9
	php		; 08
	beq   0.b		; F0 00
	sbc $F800.w,Y		; F9 00 F8
	brk $FC.b		; 00 FC
	tsb $79.b		; 04 79
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cpx #$41.b		; E0 41
	ror $81FB.w,X		; 7E FB 81
	asl $060C.w		; 0E 0C 06
	plx		; FA
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	adc $F000.w,X		; 7D 00 F0
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	lda $7B3F7D.l,X		; BF 7D 3F 7B
	and $813FFE.l,X		; 3F FE 3F 81
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	brk $38.b		; 00 38
	lda $3EBF01.l,X		; BF 01 BF 3E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	jsr ($F4FC.w,X)		; FC FC F4
	jsr ($9C7C.w,X)		; FC 7C 9C
	sed		; F8
	sed		; F8
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F4.b		; 00 F4
	sed		; F8
	pea $14F8.w		; F4 F8 14
	sed		; F8
	dey		; 88
	bvs 112.b		; 70 70
	brk $D7.b		; 00 D7
	adc $1F0F77.l		; 6F 77 0F 1F
	ora $03031F.l		; 0F 1F 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	sbc $00.b,S		; E3 00
	cmp $04.b,S		; C3 04
	dec $40.b		; C6 40
	dec $08.b		; C6 08
	sty $8C00.w		; 8C 00 8C
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	stz $3E80.w		; 9C 80 3E
	cop $78.b		; 02 78
	rti		; 40

	bit $7004.w,X		; 3C 04 70
	brk $F8.b		; 00 F8
	dey		; 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	bmi -16.b		; 30 F0
	cpy #$E8.b		; C0 E8
	beq  -8.b		; F0 F8
	brk $D8.b		; 00 D8
	bne -16.b		; D0 F0
	brk $10.b		; 00 10
	cpx #$D0.b		; E0 D0
	jsr $0000.w		; 20 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	bne  32.b		; D0 20
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	jsr $6000.w		; 20 00 60
	adc $BE03F2.l,X		; 7F F2 03 BE
	bra  19.b		; 80 13
	beq   4.b		; F0 04
	bit $0F00.w,X		; 3C 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tya		; 98
	clc		; 18
	sbc $7F01.w,X		; FD 01 7F
	brk $2F.b		; 00 2F
	jsr $080B.w		; 20 0B 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $5C83.w,Y		; 39 83 5C
	cmp $BE.b,S		; C3 BE
	sbc $8C.b,S		; E3 8C
	ora ($E2.b,X)		; 01 E2
	ora $84.b,S		; 03 84
	sta [$18.b]		; 87 18
	inc $3C00.w,X		; FE 00 3C
	sbc $3E80.w,X		; FD 80 3E
	cop $5C.b		; 02 5C
	rti		; 40

	inc $FC00.w,X		; FE 00 FC
	brk $7A.b		; 00 7A
	cop $24.b		; 02 24
	bit $00.b		; 24 00
	brk $60.b		; 00 60
	rti		; 40

	cpx #$00.b		; E0 00
	ldy #$C0.b		; A0 C0
	bne -32.b		; D0 E0
	jmp ($F6C0.w)		; 6C C0 F6
	bit $007F.w		; 2C 7F 00
	brk $00.b		; 00 00
	rti		; 40

	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bpl  44.b		; 10 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	ldy $0D56.w		; AC 56 0D
	ldx $AA44.w		; AE 44 AA
	mvp $1B,$FC		; 44 FC 1B
	trb $0001.w		; 1C 01 00
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	brk $0C.b		; 00 0C
	ldy #$45.b		; A0 45
	bpl  69.b		; 10 45
	bpl  25.b		; 10 19
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	.db $62, $05, $46		; 62 05 46
	plp		; 28
	adc $08.b,S		; 63 08
	and $14.b,S		; 23 14
	and ($65.b),Y		; 31 65
	ora ($69.b),Y		; 11 69
	clc		; 18
	and ($5C.b,S),Y		; 33 5C
	trb $3801.w		; 1C 01 38
	ora ($1C.b,X)		; 01 1C
	ora ($1C.b,X)		; 01 1C
	ora ($0E.b,X)		; 01 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $50.b		; 00 50
	brk $E1.b		; 00 E1
	sbc $E1B160.l,X		; FF 60 B1 E1
	xce		; FB
	sbc ($FD.b)		; F2 FD
	adc $FE.b,X		; 75 FE
	sbc $0CBF1E.l,X		; FF 1E BF 0C
	lda $20C093.l,X		; BF 93 C0 20
	rol $44CE.w		; 2E CE 44
	sbc $60.b,X		; F5 60
	sbc ($24.b)		; F2 24
	plx		; FA
	php		; 08
	asl $0C.b,X		; 16 0C
	mvp $50,$83		; 44 83 50
	cpx #$3C.b		; E0 3C
	bpl -36.b		; 10 DC
	.db $82, $2E, $02		; 82 2E 02
	asl $82.b,X		; 16 82
	asl $60.b		; 06 60
	sty $D8.b		; 84 D8
	cpx $BF.b		; E4 BF
	adc ($03.b),Y		; 71 03
	brk $27.b		; 00 27
	ldy $11.b		; A4 11
	bpl   1.b		; 10 01
	brk $01.b		; 00 01
	brk $83.b		; 00 83
	brk $E3.b		; 00 E3
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	sbc ($03.b,X)		; E1 03
	bne  99.b		; D0 63
	cpy #$BF.b		; C0 BF
	ldy $01FF.w,X		; BC FF 01
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $61.b		; 00 61
	ora ($82.b,X)		; 01 82
	cop $82.b		; 02 82
	cop $F0.b		; 02 F0
	asl $F4.b		; 06 F4
	asl $F4.b		; 06 F4
	asl $74.b		; 06 74
	asl $74.b		; 06 74
	asl $F4.b		; 06 F4
	stx $F4.b		; 86 F4
	stx $B4.b		; 86 B4
	stx $FC.b		; 86 FC
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
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
	ora $203808.l		; 0F 08 38 20
	rts		; 60

	jsr $0870.w		; 20 70 08
	cpx #$58.b		; E0 58
	cpy #$AC.b		; C0 AC
	bra   8.b		; 80 08
	rti		; 40

	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $FFFF7F.l,X		; 7F 7F FF FF
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $11051F.l		; 0F 1F 05 11
	ora $0A31.w,X		; 1D 31 0A
	and $38.b,S		; 23 38
	adc $15.b,S		; 63 15
	lsr $0B.b		; 46 0B
	asl $0D.b		; 06 0D
	ora $02.b,S		; 03 02
	ora ($0F.b,X)		; 01 0F
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	ora ($38.b,X)		; 01 38
	ora ($DF.b,X)		; 01 DF
	sta [$AE.b],Y		; 97 AE
	wai		; CB
	jsr ($42E8.w,X)		; FC E8 42
	jsr ($F3CD.w,X)		; FC CD F3
	adc #$F0.b		; 69 F0
	inc $F4.b		; E6 F4
	sbc $F1.b,S		; E3 F1
	stx $A0.b,Y		; 96 A0
	phb		; 8B
	bvc -21.b		; 50 EB
	brk $41.b		; 00 41
	ldy #$8C.b		; A0 8C
	jmp ($EE4E.w)		; 6C 4E EE
	pha		; 48
	sbc #$4D.b		; E9 4D
	cpx $76EE.w		; EC EE 76
	plx		; FA
	ror $6EDC.w		; 6E DC 6E
	jsr ($845E.w,X)		; FC 5E 84
	ror $0BB0.w,X		; 7E B0 0B
	adc ($AB.b)		; 72 AB
	rti		; 40

	ora #$72.b		; 09 72
	tsb $6A.b		; 04 6A
	tsb $6C.b		; 04 6C
	brk $48.b		; 00 48
	bpl   0.b		; 10 00
	brk $76.b		; 00 76
	adc ($14.b)		; 72 14
	bcc  54.b		; 90 36
	bcs  31.b		; B0 1F
	ora $1E1F1F.l,X		; 1F 1F 1F 1E
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0F.b],Y		; 17 0F
	ora ($0E.b),Y		; 11 0E
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	sbc $013F00.l,X		; FF 00 3F 01
	ora $000700.l,X		; 1F 00 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bmi   0.b		; 30 00
	brk $06.b		; 00 06
	asl $03.b		; 06 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -96.b		; B0 A0
	bcs   0.b		; B0 00
	bpl -128.b		; 10 80
	tya		; 98
	mvn $A6,$D8		; 54 D8 A6
	pla		; 68
	plx		; FA
	tsb $5F.b		; 04 5F
	dec A		; 3A
	cpx #$A0.b		; E0 A0
	rti		; 40

	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bpl  32.b		; 10 20
	brk $18.b		; 00 18
	php		; 08
	tsb $00.b		; 04 00
	dec A		; 3A
	brk $3B.b		; 00 3B
	brk $3E.b		; 00 3E
	ora $001F.w,Y		; 19 1F 00
	asl $0F06.w		; 0E 06 0F
	brk $05.b		; 00 05
	ora $05.b,S		; 03 05
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	tsb $19.b		; 04 19
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	cpy #$D8.b		; C0 D8
	bra -20.b		; 80 EC
	cli		; 58
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	jsr $0058.w		; 20 58 00
	brk $00.b		; 00 00
	lda [$59.b],Y		; B7 59
	cmp $807C3A.l,X		; DF 3A 7C 80
	cmp $73123C.l,X		; DF 3C 12 73
	bpl 112.b		; 10 70
	ora [$70.b],Y		; 17 70
	ora [$30.b],Y		; 17 30
	eor $3A00.w,Y		; 59 00 3A
	brk $80.b		; 00 80
	ora $20.b,S		; 03 20
	jsr $212D.w		; 20 2D 21
	and $202F20.l		; 2F 20 2F 20
	ora $3C7F00.l		; 0F 00 7F 3C
	sbc $9FEA3F.l,X		; FF 3F EA 9F
	cmp $32D7A2.l,X		; DF A2 D7 32
	cmp [$B5.b],Y		; D7 B5
	jmp ($8043.w,X)		; 7C 43 80
	and ($34.b),Y		; 31 34
	clv		; B8
	ora [$3F.b]		; 07 3F
	.db $82, $1F, $A2		; 82 1F A2
	ora [$30.b]		; 07 30
	phd		; 0B
	and $08.b,X		; 35 08
	sta ($01.b,X)		; 81 01
	cpx #$20.b		; E0 20
	sbc $F3EF06.l,X		; FF 06 EF F3
	sbc $CFCFFC.l,X		; FF FC CF CF
	cmp $FFFFCF.l		; CF CF FF FF
	ror $6EFE.w,X		; 7E FE 6E
	inc $0006.w,X		; FE 06 00
	eor ($90.b,S),Y		; 53 90
	iny		; C8
	sty $F9.b		; 84 F9
	stx $BB.b		; 86 BB
	asl $B9.b		; 06 B9
	asl $BCFF.w		; 0E FF BC
	rtl		; 6B

	trb $0080.w		; 1C 80 00
	bra  64.b		; 80 40
	bra 112.b		; 80 70
	rts		; 60

	jmp ($0E08.w,X)		; 7C 08 0E
	tsb $06.b		; 04 06
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bcc  16.b		; 90 10
	pea $F804.w		; F4 04 F8
	brk $FE.b		; 00 FE
	cop $FC.b		; 02 FC
	brk $A2.b		; 00 A2
	sbc $D0.b,S		; E3 D0
	and ($A5.b),Y		; 31 A5
	cmp $0FE1.w,X		; DD E1 0F
	cpy #$03.b		; C0 03
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	ldy #$80.b		; A0 80
	stz $0F00.w		; 9C 00 0F
	ora ($CA.b,X)		; 01 CA
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bit $86.b,X		; 34 86
	stz $C6.b,X		; 74 C6
	bit $C6.b,X		; 34 C6
	dey		; 88
	dec $DC50.w		; CE 50 DC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	bra  56.b		; 80 38
	brk $78.b		; 00 78
	rti		; 40

	stz $44.b,X		; 74 44
	tay		; A8
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	ora $3302.w,X		; 1D 02 33
	ora ($73.b)		; 12 73
	.db $42, $F9		; 42 F9
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $12.b		; 00 12
	tsb $0C42.w		; 0C 42 0C
	cpx #$16.b		; E0 16
	brk $84.b		; 00 84
	ldy #$A9.b		; A0 A9
	sta ($B7.b,X)		; 81 B7
	lda $C13ECB.l		; AF CB 3E C1
	eor $F115C0.l,X		; 5F C0 15 F1
	rts		; 60

	sbc $567F7F.l,X		; FF 7F 7F 56
	lsr $48.b,X		; 56 48
	pha		; 48
	and $02.b,X		; 35 02
	rol $3F01.w,X		; 3E 01 3F
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	tas		; 1B
	rol $7D15.w,X		; 3E 15 7D
	ora [$7D.b],Y		; 17 7D
	ora [$7E.b],Y		; 17 7E
	and #$5D.b		; 29 5D
	rol $00.b,X		; 36 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	brk $28.b		; 00 28
	brk $36.b		; 00 36
	brk $5F.b		; 00 5F
	sec		; 38
	rol $3610.w,X		; 3E 10 36
	tsb $2E.b		; 04 2E
	php		; 08
	ora $0F04.w,X		; 1D 04 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	php		; 08
	php		; 08
	bpl   4.b		; 10 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	rts		; 60

	jsr $D030.w		; 20 30 D0
	clc		; 18
	pla		; 68
	tsb $1330.w		; 0C 30 13
	plp		; 28
	asl $9E0C.w,X		; 1E 0C 9E
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	cpx $F0EC.w		; EC EC F0
	beq -32.b		; F0 E0
	cpx #$08.b		; E0 08
	ldy $7C18.w,X		; BC 18 7C
	bpl  -8.b		; 10 F8
	cpy #$70.b		; C0 70
	bra -96.b		; 80 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $6D.b		; 00 6D
	ror $FEAD.w,X		; 7E AD FE
	ora $789E.w,Y		; 19 9E 78
	asl $2F54.w,X		; 1E 54 2F
	mvn $6A,$2E		; 54 2E 6A
	ora [$D7.b],Y		; 17 D7
	and $1DA9.w,Y		; 39 A9 1D
	and #$1D.b		; 29 1D
	ora ($0D.b),Y		; 11 0D
	ora $2405.w,Y		; 19 05 24
	php		; 08
	and ($0D.b,X)		; 21 0D
	bpl   6.b		; 10 06
	and $A501.w,Y		; 39 01 A5
	php		; 08
	adc [$53.b],Y		; 77 53
	trb $4266.w		; 1C 66 42
	xce		; FB
	bcc -68.b		; 90 BC
	sec		; 38
	adc $FCFD7A.l,X		; 7F 7A FD FC
	xce		; FB
	cmp $DB.b,S		; C3 DB
	bcc -120.b		; 90 88
	sta ($81.b,X)		; 81 81
	tsb $14.b		; 04 14
	eor $5B.b,S		; 43 5B
	bcs -72.b		; B0 B8
	pla		; 68
	stz $D2.b,X		; 74 D2
	tay		; A8
	tsb $18.b		; 04 18
	bit $3A.b		; 24 3A
	asl $9F33.w		; 0E 33 9F
	and [$DD.b],Y		; 37 DD
	adc $B8.b		; 65 B8
	bvs -39.b		; 70 D9
	php		; 08
	cld		; D8
	dey		; 88
	inx		; E8
	brk $C8.b		; 00 C8
	brk $E0.b		; 00 E0
	jsr $00D0.w		; 20 D0 00
	.db $82, $00, $B7		; 82 00 B7
	brk $07.b		; 00 07
	jsr $2087.w		; 20 87 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	dey		; 88
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	beq   0.b		; F0 00
	mvp $1A,$38		; 44 38 1A
	jsr ($6CAE.w,X)		; FC AE 6C
	eor $AFBFD3.l,X		; 5F D3 BF AF
	sbc $FF8FDF.l,X		; FF DF 8F FF
	adc $20E89F.l		; 6F 9F E8 20
	trb $6C00.w		; 1C 00 6C
	bpl -45.b		; 10 D3
	jsr $46AD.w		; 20 AD 46
	cmp [$08.b],Y		; D7 08
	sta $6706.w		; 8D 06 67
	pla		; 68
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	ora [$18.b],Y		; 17 18
	tsb $070B.w		; 0C 0B 07
	ora $67.b,S		; 03 67
	sep #$07		; E2 07
	plx		; FA
	ora #$06.b		; 09 06
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$00.b		; E0 00
	sbc ($00.b,S),Y		; F3 00
	xce		; FB
	brk $9A.b		; 00 9A
	bra   2.b		; 80 02
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $180A.w		; 0C 0A 18
	ora $31.b,X		; 15 31
	asl A		; 0A
	and $04.b,S		; 23 04
	lsr $28.b		; 46 28
	adc $00.b,S		; 63 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $1E.b		; 00 1E
	cop $14.b		; 02 14
	and ($0B.b),Y		; 31 0B
	clc		; 18
	asl $0C12.w		; 0E 12 0C
	tsb $0B.b		; 04 0B
	brk $07.b		; 00 07
	ora ($01.b,X)		; 01 01
	ora [$03.b]		; 07 03
	ora [$0E.b]		; 07 0E
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C07.w		; 0C 07 0C
	ora $08.b,S		; 03 08
	ora [$18.b]		; 07 18
	ora $100718.l		; 0F 18 07 10
	ora $10.b,S		; 03 10
	ora #$19.b		; 09 19
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $000F00.l		; 0F 00 0F 00
	asl $00.b		; 06 00
	asl $1F.b		; 06 1F
	jsr $2D1F.w		; 20 1F 2D
	asl $043E.w,X		; 1E 3E 04
	rol $10.b,X		; 36 10
	dec A		; 3A
	php		; 08
	jmp $007810.l		; 5C 10 78 00
	ora #$09.b		; 09 09
	bpl   0.b		; 10 00
	asl $0400.w,X		; 1E 00 04
	brk $10.b		; 00 10
	php		; 08
	php		; 08
	tsb $10.b		; 04 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $1E.b		; 02 1E
	brk $20.b		; 00 20
	bit $70.b		; 24 70
	tsb $1760.w		; 0C 60 17
	rti		; 40

	lsr $C0.b		; 46 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	and $00003F.l,X		; 3F 3F 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $10.b		; 00 10
	bvs  24.b		; 70 18
	plp		; 28
	asl $0312.w		; 0E 12 03
	ora ($0B.b)		; 12 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($020E.w,X)		; FC 0E 02
	ora $3E371D.l,X		; 1F 1D 37 3E
	tad		; 5B
	ror $7F6F.w,X		; 7E 6F 7F
	and $DF5E7F.l,X		; 3F 7F 5E DF
	lda $01028F.l		; AF 8F 02 01
	ora $3200.w,X		; 1D 00 32
	tsb $364A.w		; 0C 4A 36
	adc $0A1D1A.l		; 6F 1A 1D 0A
	rol $09.b,X		; 36 09
	jmp ($6C03.w,X)		; 7C 03 6C
	eor $3E5F6E.l,X		; 5F 6E 5F 3E
	and $9B8899.l		; 2F 99 88 9B
	ora ($DA.b)		; 12 DA
	ora ($7F.b),Y		; 11 7F
	sta $06.b,X		; 95 06
	sbc $824A.w,Y		; F9 4A 82
	eor $C02381.l		; 4F 81 23 C0
	stx $60.b		; 86 60
	trb $60.b		; 14 60
	ora $A0.b,X		; 15 A0
	ora ($C0.b),Y		; 11 C0
	brk $00.b		; 00 00
	tay		; A8
	jmp ($4C18.w)		; 6C 18 4C
	clc		; 18
	cpy $C860.w		; CC 60 C8
	jsr $3088.w		; 20 88 30
	tya		; 98
	bcc -104.b		; 90 98
	bra -104.b		; 80 98
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	bpl -33.b		; 10 DF
	ora $DF0FEF.l,X		; 1F EF 0F DF
	ora $403FA7.l,X		; 1F A7 3F 40
	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra -17.b		; 80 EF
	ora [$FF.b]		; 07 FF
	ora $EA.b		; 05 EA
	ora $D7.b		; 05 D7
	bpl -96.b		; 10 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rtl		; 6B

	ldy $F3.b,X		; B4 F3
	sta $3DDB.w		; 8D DB 3D
	xce		; FB
	cmp $E1FF.w		; CD FF E1
	xce		; FB
	sbc $FFDF.w,X		; FD DF FF
	adc $00B47F.l,X		; 7F 7F B4 00
	sta $3D00.w		; 8D 00 3D
	brk $8D.b		; 00 8D
	cpy #$41.b		; C0 41
	cpx #$81.b		; E0 81
	jmp ($3F5E.w,X)		; 7C 5E 3F
	lda $77FA0F.l,X		; BF 0F FA 77
	stz $AB.b,X		; 74 AB
	sbc $74DB.w		; ED DB 74
	lsr $70.b,X		; 56 70
	eor ($32.b)		; 52 32
	rol $BF.b		; 26 BF
	plp		; 28
	sed		; F8
	ldy #$76.b		; A0 76
	bvc -86.b		; 50 AA
	jsr $00D8.w		; 20 D8 00
	eor $88.b,X		; 55 88
	eor ($8C.b),Y		; 51 8C
	and ($C8.b,X)		; 21 C8
	plp		; 28
	rti		; 40

	ldy #$87.b		; A0 87
	inx		; E8
	tya		; 98
	cpy $863C.w		; CC 3C 86
	inc $8F81.w,X		; FE 81 8F
	bra -125.b		; 80 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$10.b],Y		; 97 10
	and ($30.b,S),Y		; 33 30
	bit #$08.b		; 89 08
	.db $82, $02, $80		; 82 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	ora [$31.b]		; 07 31
	ora ($1C.b,X)		; 01 1C
	brk $8F.b		; 00 8F
	bra  39.b		; 80 27
	cpx #$08.b		; E0 08
	sei		; 78
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	plx		; FA
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	sbc $D0FFD7.l,X		; FF D7 FF D0
	sbc $0F0FCF.l,X		; FF CF 0F 0F
	asl $170F.w		; 0E 0F 17
	ora $161F1D.l,X		; 1F 1D 1F 16
	asl $40D7.w,X		; 1E D7 40
	bcc  64.b		; 90 40
	wai		; CB
	ora [$0A.b]		; 07 0A
	ora [$0E.b]		; 07 0E
	ora [$15.b]		; 07 15
	asl $0E11.w		; 0E 11 0E
	ora ($0C.b)		; 12 0C
	rol $7F3E.w,X		; 3E 3E 7F
	adc $DAFFFF.l,X		; 7F FF FF DA
	phx		; DA
	ora $0B0B1F.l,X		; 1F 1F 0B 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $3E5D1C.l		; 22 1C 5D 3E
	ldx $DA4F.w,Y		; BE 4F DA
	ora $0B0A1F.l		; 0F 1F 0A 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
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
	jsr ($FFF0.w,X)		; FC F0 FF
	rts		; 60

	rts		; 60

	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	tsb $00FC.w		; 0C FC 00
	ora $0C0000.l,X		; 1F 00 00 0C
	tsb $009F.w		; 0C 9F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $101300.l		; 8F 00 13 10
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	jmp ($0F88.w,X)		; 7C 88 0F
	sbc ($01.b),Y		; F1 01
	asl $0000.w,X		; 1E 00 00
	brk $18.b		; 00 18
	sed		; F8
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	pea $FE04.w		; F4 04 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $27.b		; 00 27
	jsr $0101.w		; 20 01 01
	bra   0.b		; 80 00
	bvs -128.b		; 70 80
	ldx $BD10.w		; AE 10 BD
	asl $BFF6.w,X		; 1E F6 BF
	sbc [$1E.b]		; E7 1E
	ora $000100.l,X		; 1F 00 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bpl  64.b		; 10 40
	asl $BF40.w,X		; 1E 40 BF
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	jsr $B0D8.w		; 20 D8 B0
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra -80.b		; 80 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra -52.b		; 80 CC
	bcs 127.b		; B0 7F
	bit $76.b,X		; 34 76
	and $75.b		; 25 75
	ldx #$9D.b		; A2 9D
	ror A		; 6A
	sbc $000F09.l,X		; FF 09 0F 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	ldy $00.b,X		; B4 00
	lda $08.b		; A5 08
	jsl $006A08.l		; 22 08 6A 00
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	jsr $2038.w		; 20 38 20
	bcs  96.b		; B0 60
	beq  96.b		; F0 60
	beq  64.b		; F0 40
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl A		; 0A
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	brk $0B.b		; 00 0B
	ora $0E.b		; 05 0E
	brk $0E.b		; 00 0E
	tsa		; 3B
	ora [$FA.b]		; 07 FA
	and [$05.b],Y		; 37 05
	ora $03.b		; 05 03
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	ora ($80.b,X)		; 01 80
	ora ($00.b)		; 12 00
	rol A		; 2A
	sta $D7.b		; 85 D7
	bvc  -1.b		; 50 FF
	phx		; DA
	eor ($FE.b,S),Y		; 53 FE
	ora $F8.b,S		; 03 F8
	ora ($70.b,X)		; 01 70
	asl $FFFF.w		; 0E FF FF
	cmp $28DD.w,X		; DD DD 28
	plp		; 28
	brk $00.b		; 00 00
	ldy #$14.b		; A0 14
	beq   8.b		; F0 08
	inc $FC00.w,X		; FE 00 FC
	tsb $2208.w		; 0C 08 22
	clc		; 18
	jsl $3C663C.l		; 22 3C 66 3C
	ror $10.b		; 66 10
	lsr $04.b		; 46 04
	lsr $20.b		; 46 20
	.db $62, $08, $62		; 62 08 62
	trb $1C00.w		; 1C 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1C.b		; 04 1C
	ora ($30.b)		; 12 30
	rol $0C70.w		; 2E 70 0C
	adc ($14.b,X)		; 61 14
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $1F1F1F.l		; 0F 1F 1F 1F
	ora $013939.l,X		; 1F 39 39 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	jsr ($FD7B.w,X)		; FC 7B FD
	sbc $FE7E.w,X		; FD 7E FE
	sbc $FEBFDF.l,X		; FF DF BF FE
	adc $7E7FBE.l,X		; 7F BE 7F 7E
	sbc $790894.l,X		; FF 94 08 79
	sty $34.b,X		; 94 34
	nop		; EA
	pea $881B.w		; F4 1B 88
	adc [$76.b],Y		; 77 76
	stx $FE1E.w		; 8E 1E FE
	rol $57FE.w,X		; 3E FE 57
	tsa		; 3B
	lsr $4739.w,X		; 5E 39 47
	sec		; 38
	mvp $79,$3B		; 44 3B 79
	asl $89.b		; 06 89
	ror $92.b,X		; 76 92
	adc $0D73.w		; 6D 73 0D
	tsa		; 3B
	brk $38.b		; 00 38
	ora $38.b,S		; 03 38
	brk $3B.b		; 00 3B
	brk $06.b		; 00 06
	brk $76.b		; 00 76
	brk $6D.b		; 00 6D
	brk $0D.b		; 00 0D
	brk $FE.b		; 00 FE
	sbc $BFFF7F.l,X		; FF 7F FF BF
	adc $5F1FFD.l,X		; 7F FD 1F 5F
	sbc [$BF.b]		; E7 BF
	stp		; DB
	lda $CAAFC9.l		; AF C9 AF CA
	jmp.w [$3D3F]		; DC 3F 3D
	dec $F61D.w		; CE 1D F6
	ora $E71A.w		; 0D 1A E7
	tsb $DB.b		; 04 DB
	cop $C9.b		; 02 C9
	ora ($CA.b),Y		; 11 CA
	bpl  57.b		; 10 39
	php		; 08
	and [$06.b]		; 27 06
	rol $1000.w,X		; 3E 00 10
	and ($08.b)		; 32 08
	jsl $1C260C.l		; 22 0C 26 1C
	ror $30.b		; 66 30
	stz $08.b		; 64 08
	asl $06.b		; 06 06
	clc		; 18
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	sei		; 78
	sei		; 78
	jmp ($7F7C.w,X)		; 7C 7C 7F
	adc $3F2F3F.l,X		; 7F 3F 2F 3F
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sei		; 78
	jsr $287C.w		; 20 7C 28
	eor $182728.l,X		; 5F 28 27 18
	and ($1E.b,X)		; 21 1E
	and $1B3B.w,X		; 3D 3B 1B
	ora $2A1E1E.l,X		; 1F 1E 1E 2A
	rol $3C3C.w,X		; 3E 3C 3C
	jmp $7C7C7C.l		; 5C 7C 7C 7C
	jmp ($2900.w,X)		; 7C 00 29
	asl $0C1B.w,X		; 1E 1B 0C
	ora ($0C.b)		; 12 0C
	jsl $182C1C.l		; 22 1C 2C 18
	jmp $385C38.l		; 5C 38 5C 38
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bcs -16.b		; B0 F0
	sed		; F8
	sed		; F8
	bit $B43C.w,X		; 3C 3C B4
	ldy $F8F8.w,X		; BC F8 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bmi -64.b		; 30 C0
	cld		; D8
	cpx #$34.b		; E0 34
	inx		; E8
	sty $E8.b,X		; 94 E8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bmi  16.b		; 30 10
	clc		; 18
	bmi   4.b		; 30 04
	bmi   2.b		; 30 02
	trb $4E.b		; 14 4E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	sed		; F8
	sed		; F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	rol $9F.b		; 26 9F
	cmp ($FF.b)		; D2 FF
	lsr $9F.b		; 46 9F
	tsb $DE.b		; 04 DE
	bne  28.b		; D0 1C
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $70.b		; 00 70
	ldy #$B0.b		; A0 B0
	lsr $D4.b		; 46 D4
	rol A		; 2A
	ldy $0042.w,X		; BC 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	jsr $8000.w		; 20 00 80
	bra -60.b		; 80 C4
	cpy $C4.b		; C4 C4
	pei ($BC.b)		; D4 BC
	ora ($10.b)		; 12 10
	cop $00.b		; 02 00
	jsr ($B684.w,X)		; FC 84 B6
	jsr $406A.w		; 20 6A 40
	dec $40.b		; C6 40
	cpy #$80.b		; C0 80
	bra -44.b		; 80 D4
	cpy $EC.b		; C4 EC
	cpx $0000.w		; EC 00 00
	pha		; 48
	pha		; 48
	ldy $84.b		; A4 84
	rti		; 40

	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra -29.b		; 80 E3
	ora $FD.b,S		; 03 FD
	eor $6B5EBF.l,X		; 5F BF 5E 6B
	sta $C0BF7F.l,X		; 9F 7F BF C0
	bra -32.b		; 80 E0
	bra -128.b		; 80 80
	brk $03.b		; 00 03
	brk $5D.b		; 00 5D
	ora $5C.b,S		; 03 5C
	ora $3F9F01.l,X		; 1F 01 9F 3F
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -48.b		; 80 D0
	jsr $50A8.w		; 20 A8 50
	sty $68.b,X		; 94 68
	sbc ($AC.b)		; F2 AC
	nop		; EA
	ldy $7A.b,X		; B4 7A
	bit $54.b,X		; 34 54
	sec		; 38
	jmp ($2058.w,X)		; 7C 58 20
	brk $50.b		; 00 50
	brk $68.b		; 00 68
	brk $AC.b		; 00 AC
	brk $B4.b		; 00 B4
	brk $34.b		; 00 34
	bra  56.b		; 80 38
	bra  88.b		; 80 58
	bra   8.b		; 80 08
	and $0E.b,S		; 23 0E
	and $1C.b,S		; 23 1C
	and ($04.b),Y		; 31 04
	and ($06.b),Y		; 31 06
	ora ($0E.b),Y		; 11 0E
	ora $190B.w,Y		; 19 0B 19
	cop $18.b		; 02 18
	asl $1C02.w,X		; 1E 02 1C
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  14.b		; 10 0E
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	php		; 08
	rti		; 40

	cpy $930A.w		; CC 0A 93
	ora $D04F91.l		; 0F 91 4F D0
	and [$F0.b]		; 27 F0
	ora [$F0.b],Y		; 17 F0
	and ($F8.b,S),Y		; 33 F8
	nop		; EA
	cpx $3333.w		; EC 33 33
	jmp ($6F60.w)		; 6C 60 6F
	adc ($2F.b,X)		; 61 2F
	jsr $000F.w		; 20 0F 00
	ora $080F00.l		; 0F 00 0F 08
	sbc [$04.b],Y		; F7 04
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	adc ($02.b,S),Y		; 73 02
	ply		; 7A
	and ($01.b,S),Y		; 33 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($32.b,X)		; 01 32
	ora ($7E.b,X)		; 01 7E
	sbc $DCFF7E.l,X		; FF 7E FF DC
	sbc $FCBF7D.l,X		; FF 7D BF FC
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	bit $3CFE.w,X		; 3C FE 3C
	inc $3CCC.w,X		; FE CC 3C
	bit $05C0.w,X		; 3C C0 05
	sbc $FE7E.w,X		; FD 7E FE
	ror $7EFF.w,X		; 7E FF 7E
	sbc $271B25.l,X		; FF 25 1B 27
	tas		; 1B
	eor [$3B.b],Y		; 57 3B
	tad		; 5B
	and [$2D.b],Y		; 37 2D
	ora $15.b,X		; 15 15
	ora $0D14.w		; 0D 14 0D
	asl $1B03.w		; 0E 03 1B
	brk $1B.b		; 00 1B
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $15.b		; 00 15
	cop $0D.b		; 02 0D
	cop $0D.b		; 02 0D
	cop $03.b		; 02 03
	brk $AF.b		; 00 AF
	wai		; CB
	ror $6EAA.w		; 6E AA 6E
	tax		; AA
	lsr $4E8A.w		; 4E 8A 4E
	txa		; 8A
	lsr $CE8A.w		; 4E 8A CE
	lsr A		; 4A
	stx $CB0A.w		; 8E 0A CB
	bpl -86.b		; 10 AA
	ora ($AA.b),Y		; 11 AA
	ora ($8A.b),Y		; 11 8A
	and ($8A.b),Y		; 31 8A
	and ($8A.b),Y		; 31 8A
	and ($4A.b),Y		; 31 4A
	and ($0A.b),Y		; 31 0A
	adc ($1C.b),Y		; 71 1C
	rts		; 60

	ora $71117C.l,X		; 1F 7C 11 71
	bpl  48.b		; 10 30
	ora [$30.b],Y		; 17 30
	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	ora $30.b,S		; 03 30
	jsr $2023.w		; 20 23 20
	jsr $202E.w		; 20 2E 20
	ora $000F00.l		; 0F 00 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $527310.l,X		; 1F 10 73 52
	sbc ($10.b),Y		; F1 10
	cmp $3F27E0.l,X		; DF E0 27 3F
	ldx #$3E.b		; A2 3E
	ldx #$3E.b		; A2 3E
	lda ($3F.b,X)		; A1 3F
	sta ($17.b,X)		; 81 17
	eor ($8C.b)		; 52 8C
	bpl  14.b		; 10 0E
	jsr $C820.w		; 20 20 C8
	php		; 08
	cmp $C50C.w		; CD 0C C5
	tsb $C6.b		; 04 C6
	asl $E2.b		; 06 E2
	cop $C0.b		; 02 C0
	bcs -32.b		; B0 E0
	sei		; 78
	bne -40.b		; D0 D8
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0600.w		; 0C 00 06
	tsb $06.b		; 04 06
	brk $03.b		; 00 03
	ldy #$20.b		; A0 20
	bpl  16.b		; 10 10
	jsr $F800.w		; 20 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $FE.b		; 00 FE
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $3012.w		; 1C 12 30
	rol $0C70.w		; 2E 70 0C
	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $1F1F1F.l		; 0F 1F 1F 1F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bmi  16.b		; 30 10
	clc		; 18
	bmi   4.b		; 30 04
	bmi   2.b		; 30 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	sed		; F8
	sed		; F8
	jsr ($00FC.w,X)		; FC FC 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $D1.b		; 00 D1
	and ($7F.b),Y		; 31 7F
	inc $FDFB.w,X		; FE FB FD
	lda $07DBC3.l,X		; BF C3 DB 07
	ldx $DF1F.w		; AE 1F DF
	and $310000.l,X		; 3F 00 00 31
	asl $00FE.w		; 0E FE 00
	sbc $C300.w,X		; FD 00 C3
	brk $02.b		; 00 02
	and $5D02.w		; 2D 02 5D
	ora [$3C.b]		; 07 3C
	eor [$3B.b],Y		; 57 3B
	lsr $4739.w,X		; 5E 39 47
	sec		; 38
	mvp $7D,$3B		; 44 3B 7D
	cop $89.b		; 02 89
	ror $9A.b,X		; 76 9A
	adc $73.b		; 65 73
	ora $003B.w		; 0D 3B 00
	sec		; 38
	ora $38.b,S		; 03 38
	brk $3B.b		; 00 3B
	brk $02.b		; 00 02
	brk $76.b		; 00 76
	brk $65.b		; 00 65
	brk $0D.b		; 00 0D
	brk $FE.b		; 00 FE
	sbc $BFFF7F.l,X		; FF 7F FF BF
	adc $5F1FFD.l,X		; 7F FD 1F 5F
	sbc [$BF.b]		; E7 BF
	stp		; DB
	lda $CAAFC9.l		; AF C9 AF CA
	jmp.w [$3D3F]		; DC 3F 3D
	dec $F61D.w		; CE 1D F6
	ora $E71A.w		; 0D 1A E7
	tsb $DB.b		; 04 DB
	cop $C9.b		; 02 C9
	ora ($CA.b),Y		; 11 CA
	bpl -54.b		; 10 CA
	eor $E5.b,S		; 43 E5
	sbc ($92.b,X)		; E1 92
	beq  73.b		; F0 49
	clv		; B8
.ACCU 16
	rep #$EE		; C2 EE
	adc ($FF.b,X)		; 61 FF
	brk $CB.b		; 00 CB
	cpy #$76.b		; C0 76
	jmp ($DE80.w,X)		; 7C 80 DE
	brk $0F.b		; 00 0F
	cpy #$07.b		; C0 07
	cpy #$D1.b		; C0 D1
	bpl   0.b		; 10 00
	brk $34.b		; 00 34
	ldy $40.b,X		; B4 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc $7E0131.l,X		; FF 31 01 7E
	brk $87.b		; 00 87
	sta [$00.b]		; 87 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	sec		; 38
	sec		; 38
	adc [$77.b],Y		; 77 77
	eor $7F5D4F.l		; 4F 4F 5D 7F
	lsr $46.b		; 46 46
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $38.b		; 00 38
	bpl  87.b		; 10 57
	jsr $324D.w		; 20 4D 32
	eor $463A.w		; 4D 3A 46
	sec		; 38
	ora ($01.b,X)		; 01 01
	adc $4EDC0F.l,X		; 7F 0F DC 4E
	sta $2FBD0F.l,X		; 9F 0F BD 2F
	dec $7876.w		; CE 76 78
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $48.b		; 00 48
	and $216F0D.l		; 2F 0D 6F 21
	lsr $0076.w		; 4E 76 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	bpl  16.b		; 10 10
	bne -16.b		; D0 F0
	ldy #$E0.b		; A0 E0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	cpx #$A0.b		; E0 A0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	ror $C0.b		; 66 C0
	jmp ($00F0.w,X)		; 7C F0 00
	sed		; F8
	sed		; F8
	pea $FCFC.w		; F4 FC FC
	jsr ($ECE8.w,X)		; FC E8 EC
	mvn $B8,$C6		; 54 C6 B8
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	cld		; D8
	rts		; 60

	cpx $98.b		; E4 98
	jsr ($B060.w,X)		; FC 60 B0
	rti		; 40

	sei		; 78
	bra -48.b		; 80 D0
	jsr $50A8.w		; 20 A8 50
	ldy $58.b		; A4 58
	sta ($6C.b)		; 92 6C
	sbc ($AC.b)		; F2 AC
	nop		; EA
	ldy $54.b,X		; B4 54
	sec		; 38
	jmp $002038.l		; 5C 38 20 00
	bvc   0.b		; 50 00
	cli		; 58
	brk $6C.b		; 00 6C
	brk $AC.b		; 00 AC
	brk $B4.b		; 00 B4
	brk $38.b		; 00 38
	bra  56.b		; 80 38
	bra  30.b		; 80 1E
	.db $62, $1F, $7C		; 62 1F 7C
	ora ($71.b),Y		; 11 71
	bpl  48.b		; 10 30
	ora [$30.b],Y		; 17 30
	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	ora $30.b,S		; 03 30
	jsl $202021.l		; 22 21 20 20
	rol $0F20.w		; 2E 20 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl 115.b		; 10 73
	eor ($F3.b)		; 52 F3
	ora ($DF.b)		; 12 DF
	cpx #$27.b		; E0 27
	and $A23EA2.l,X		; 3F A2 3E A2
	rol $3FA1.w,X		; 3E A1 3F
	sta ($17.b,X)		; 81 17
	eor ($8C.b)		; 52 8C
	ora ($0C.b)		; 12 0C
	jsr $C820.w		; 20 20 C8
	php		; 08
	cmp $C50C.w		; CD 0C C5
	tsb $C6.b		; 04 C6
	asl $E2.b		; 06 E2
	cop $40.b		; 02 40
	bcs -32.b		; B0 E0
	sei		; 78
	bne -40.b		; D0 D8
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0600.w		; 0C 00 06
	tsb $06.b		; 04 06
	brk $03.b		; 00 03
	ldy #$20.b		; A0 20
	bpl  16.b		; 10 10
	jsr $F800.w		; 20 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $FE.b		; 00 FE
	cop $14.b		; 02 14
	dec $40.b		; C6 40
	cpy $930A.w		; CC 0A 93
	ora $D04F91.l		; 0F 91 4F D0
	and [$F0.b]		; 27 F0
	ora [$70.b],Y		; 17 70
	and ($78.b,S),Y		; 33 78
	and $3339.w,Y		; 39 39 33
	and ($6C.b,S),Y		; 33 6C
	rts		; 60

	adc $202F61.l		; 6F 61 2F 20
	ora $000F00.l		; 0F 00 0F 00
	ora $4E1408.l		; 0F 08 14 4E
	rol $9F.b		; 26 9F
	cmp ($FF.b)		; D2 FF
	lsr $9F.b		; 46 9F
	tsb $DE.b		; 04 DE
	bne  28.b		; D0 1C
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	sed		; F8
	sed		; F8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	tsb $0C.b		; 04 0C
	ora ($19.b,X)		; 01 19
	ora $13.b,S		; 03 13
	adc $7B0B.w,Y		; 79 0B 7B
	and ($00.b,S),Y		; 33 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	php		; 08
	ora $0700.w		; 0D 00 07
	cop $37.b		; 02 37
	brk $DF.b		; 00 DF
	lda $BFFFDF.l,X		; BF DF FF BF
	sbc $FFFFEF.l,X		; FF EF FF FF
	adc $7FFF7E.l,X		; 7F 7E FF 7F
	sbc $8FFF7E.l,X		; FF 7E FF 8F
	ror $3FCF.w,X		; 7E CF 3F
	lda [$4F.b],Y		; B7 4F
	sty $3B73.w		; 8C 73 3B
	jsr ($FF3E.w,X)		; FC 3E FF
	rol $3EFF.w,X		; 3E FF 3E
	sbc $250D13.l,X		; FF 13 0D 25
	tas		; 1B
	and [$1B.b],Y		; 37 1B
	and [$1B.b],Y		; 37 1B
	and #$3D15.w		; 29 15 3D
	ora $0D.b		; 05 0D
	ora $0E.b		; 05 0E
	ora $0D.b,S		; 03 0D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $15.b		; 00 15
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $03.b		; 02 03
	brk $AF.b		; 00 AF
	wai		; CB
	ldx $6ECA.w		; AE CA 6E
	tax		; AA
	ror $4EAA.w		; 6E AA 4E
	txa		; 8A
	lsr $4E8A.w		; 4E 8A 4E
	txa		; 8A
	dec $CB4A.w		; CE 4A CB
	bpl -54.b		; 10 CA
	ora ($AA.b),Y		; 11 AA
	ora ($AA.b),Y		; 11 AA
	ora ($8A.b),Y		; 11 8A
	and ($8A.b),Y		; 31 8A
	and ($8A.b),Y		; 31 8A
	and ($4A.b),Y		; 31 4A
	and ($80.b),Y		; 31 80
	bra  12.b		; 80 0C
	tsb $3F3B.w		; 0C 3B 3F
	cmp $A3737F.l,X		; DF 7F 73 A3
	tda		; 7B
	tyx		; BB
	sbc $80E0BF.l,X		; FF BF E0 80
	bra   0.b		; 80 00
	tsb $3300.w		; 0C 00 33
	tsb $3E5D.w		; 0C 5D 3E
	ora $BE.b,S		; 03 BE
	ora $3FBE.w,Y		; 19 BE 3F
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $243808.l		; 0F 08 38 24
	rts		; 60

	jmp $0000E0.l		; 5C E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($2E7C.w,X)		; 7C 7C 2E
	inc $6E5E.w		; EE 5E 6E
	rol $663E.w		; 2E 3E 66
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($0A00.w,X)		; 7C 00 0A
	bit $9C8E.w,X		; 3C 8E 9C
	dec $CC.b		; C6 CC
	sbc ($F4.b)		; F2 F4
	ror $F1.b		; 66 F1
	cmp $19.b,X		; D5 19
	bvs  95.b		; 70 5F
	inc $FF9F.w,X		; FE 9F FF
	adc $FC7EFE.l,X		; 7F FE 7E FC
	jmp ($FF5F.w,X)		; 7C 5F FF
	ora $082E11.l,X		; 1F 11 2E 08
	rti		; 40

	bra -98.b		; 80 9E
	brk $6A.b		; 00 6A
	trb $7F.b		; 14 7F
	bit $A85F.w		; 2C 5F A8
	mvn $03,$A8		; 54 A8 03
	cmp #$8802.w		; C9 02 88
	asl $0C.b		; 06 0C
	ora [$FC.b]		; 07 FC
	ora $FC0C.w		; 0D 0C FC
	brk $03.b		; 00 03
	ora $C0.b,S		; 03 C0
	sbc $070006.l,X		; FF 06 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $F3.b		; 00 F3
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $1E.b,S		; 03 1E
	ora $4178.w,Y		; 19 78 41
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $3E.b		; 00 3E
	brk $0F.b		; 00 0F
	brk $19.b		; 00 19
	ora #$1C2C.w		; 09 2C 1C
	cmp $7F9F3F.l,X		; DF 3F 9F 7F
	and $FE3FFF.l,X		; 3F FF 3F FE
	rol $00FD.w,X		; 3E FD 00
	brk $09.b		; 00 09
	asl $1C.b		; 06 1C
	ora $3F.b,S		; 03 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	ora ($57.b,X)		; 01 57
	tsa		; 3B
	lsr $4739.w,X		; 5E 39 47
	sec		; 38
	mvp $7C,$3B		; 44 3B 7C
	ora $89.b,S		; 03 89
	ror $99.b,X		; 76 99
	ror $72.b		; 66 72
	ora $003B.w		; 0D 3B 00
	sec		; 38
	ora $38.b,S		; 03 38
	brk $3B.b		; 00 3B
	brk $03.b		; 00 03
	brk $76.b		; 00 76
	brk $66.b		; 00 66
	brk $0D.b		; 00 0D
	brk $FC.b		; 00 FC
	sbc $BFFF7F.l,X		; FF 7F FF BF
	adc $DF1FFD.l,X		; 7F FD 1F DF
	adc [$3F.b]		; 67 3F
	stp		; DB
	lda $CAAFC9.l		; AF C9 AF CA
	cld		; D8
	and $1DCE3D.l,X		; 3F 3D CE 1D
	inc $0D.b,X		; F6 0D
	inc A		; 1A
	adc [$04.b]		; 67 04
	stp		; DB
	cop $C9.b		; 02 C9
	ora ($CA.b),Y		; 11 CA
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
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
	brk $80.b		; 00 80
	ldx $0000.w,Y		; BE 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -48.b		; 80 D0
	jsr $50AC.w		; 20 AC 50
	ldx #$5C.b		; A2 5C
	cmp ($AC.b)		; D2 AC
	nop		; EA
	ldy $DC.b,X		; B4 DC
	bcs  84.b		; B0 54
	sec		; 38
	jmp ($2058.w,X)		; 7C 58 20
	brk $50.b		; 00 50
	brk $5C.b		; 00 5C
	brk $AC.b		; 00 AC
	brk $B4.b		; 00 B4
	brk $B0.b		; 00 B0
	brk $38.b		; 00 38
	bra  88.b		; 80 58
	bra  30.b		; 80 1E
	rts		; 60

	ora $71117C.l,X		; 1F 7C 11 71
	bpl  48.b		; 10 30
	ora [$30.b],Y		; 17 30
	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	ora $30.b,S		; 03 30
	jsr $2021.w		; 20 21 20
	jsr $202E.w		; 20 2E 20
	ora $000F00.l		; 0F 00 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $223310.l,X		; 1F 10 33 22
	sbc ($02.b,S),Y		; F3 02
	cmp $3F27F0.l		; CF F0 27 3F
	ldx #$3E.b		; A2 3E
	ldx #$3E.b		; A2 3E
	lda ($3F.b,X)		; A1 3F
	sta ($17.b,X)		; 81 17
	jsl $0C02CC.l		; 22 CC 02 0C
	jsr $C820.w		; 20 20 C8
	php		; 08
	cmp $C50C.w		; CD 0C C5
	tsb $C6.b		; 04 C6
	asl $E2.b		; 06 E2
	cop $40.b		; 02 40
	bcs -32.b		; B0 E0
	sei		; 78
	bne -40.b		; D0 D8
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0600.w		; 0C 00 06
	tsb $06.b		; 04 06
	brk $03.b		; 00 03
	ldy #$20.b		; A0 20
	bpl  16.b		; 10 10
	jsr $F800.w		; 20 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $FE.b		; 00 FE
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
	brk $18.b		; 00 18
.ACCU 16
	rep #$28		; C2 28
	sty $9980.w		; 8C 80 99
	ora $27.b,X		; 15 27
	asl $9E23.w,X		; 1E 23 9E
	lda ($4F.b,X)		; A1 4F
	cpx #$2F.b		; E0 2F
	sbc ($3F.b,X)		; E1 3F
	and $667373.l,X		; 3F 73 73 66
	ror $D8.b		; 66 D8
	cpy #$DF.b		; C0 DF
.INDEX 16
	rep #$5E		; C2 5E
	eor ($1F.b,X)		; 41 1F
	brk $1E.b		; 00 1E
	brk $62.b		; 00 62
	asl $2A.b		; 06 2A
	stz $3E4C.w,X		; 9E 4C 3E
	ldy $FE.b		; A4 FE
	sta $093E.w		; 8D 3E 09
	ldy $38A7.w,X		; BC A7 38
	tsb $ED.b		; 04 ED
	plx		; FA
	sed		; F8
	sbc ($F0.b)		; F2 F0
	cpy #$00C0.w		; C0 C0 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	cop $C0.b		; 02 C0
	brk $82.b		; 00 82
	bra -12.b		; 80 F4
	sbc $FBFFFE.l,X		; FF FE FF FB
	inc $FEFB.w,X		; FE FB FE
	inc $FE.b,X		; F6 FE
	tay		; A8
	sbc $FE78.w,X		; FD 78 FE
	bvc -14.b		; 50 F2
	stz $C8.b,X		; 74 C8
	inc $F3E0.w,X		; FE E0 F3
	sbc $FDF3.w,X		; FD F3 FD
	sbc $F9.b		; E5 F9
	txa		; 8A
	adc ($70.b)		; 72 70
	bra  76.b		; 80 4C
	sty $E000.w		; 8C 00 E0
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
	cop $83.b		; 02 83
	pha		; 48
	cmp $204400.l		; CF 00 44 20
	stz $00.b		; 64 00
	bit $1E.b		; 24 1E
	bmi 119.b		; 30 77
	ora $357B.w		; 0D 7B 35
	adc $3401.w,X		; 7D 01 34
	tsb $38.b		; 04 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	brk $35.b		; 00 35
	brk $9D.b		; 00 9D
	tda		; 7B
	adc $1B.b		; 65 1B
	tda		; 7B
	adc [$DB.b]		; 67 DB
	lda $FDFFA7.l,X		; BF A7 FF FD
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sbc $180378.l,X		; FF 78 03 18
	ora $61.b,S		; 03 61
	ora [$99.b]		; 07 99
	adc [$86.b]		; 67 86
	adc $7E9D.w,Y		; 79 9D 7E
	rol $3EFF.w,X		; 3E FF 3E
	sbc $130D13.l,X		; FF 13 0D 13
	ora $1B25.w		; 0D 25 1B
	and [$1B.b]		; 27 1B
	and $19.b		; 25 19
	and $0D05.w,Y		; 39 05 0D
	ora $0F.b		; 05 0F
	ora $0D.b,S		; 03 0D
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $03.b		; 02 03
	brk $AD.b		; 00 AD
	cmp #$C9AD.w		; C9 AD C9
	ldy $6CC8.w		; AC C8 6C
	tay		; A8
	ror $4EAA.w		; 6E AA 4E
	txa		; 8A
	lsr $84.b		; 46 84
	lsr $84.b		; 46 84
	cmp #$C912.w		; C9 12 C9
	ora ($C8.b)		; 12 C8
	ora ($A8.b,S),Y		; 13 A8
	ora ($AA.b,S),Y		; 13 AA
	ora ($8A.b),Y		; 11 8A
	and ($84.b),Y		; 31 84
	and $3984.w,Y		; 39 84 39
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	bpl  48.b		; 10 30
	rol $60.b		; 26 60
	eor $0000C0.l		; 4F C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	sei		; 78
	php		; 08
	tsb $0634.w		; 0C 34 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora ($07.b,X)		; 01 07
	ora [$00.b]		; 07 00
	ora [$03.b]		; 07 03
	ora $03.b		; 05 03
	ora $0B1F00.l		; 0F 00 1F 0B
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora #$8803.w		; 09 03 88
	sbc [$88.b],Y		; F7 88
	cmp [$89.b]		; C7 89
	cmp [$99.b]		; C7 99
	cmp [$FF.b],Y		; D7 FF
	and ($F7.b,S),Y		; 33 F7
	tad		; 5B
	cmp $FBBDBB.l,X		; DF BB BD FB
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b],Y		; 17 00
	and ($08.b,S),Y		; 33 08
	eor ($28.b,S),Y		; 53 28
	sta ($68.b,S),Y		; 93 68
	sta ($68.b,S),Y		; 93 68
	adc $EFEB.w		; 6D EB EF
	xba		; EB
	xba		; EB
	sbc $ECEF.w		; ED EF EC
	inc $E7.b		; E6 E7
	sbc ($F3.b,S),Y		; F3 F3
	sbc $FFFD.w,X		; FD FD FF
	sbc $EB10E8.l,X		; FF E8 10 EB
	bpl -19.b		; 10 ED
	bpl -20.b		; 10 EC
	bpl -25.b		; 10 E7
	clc		; 18
	sbc ($0C.b,S),Y		; F3 0C
	sbc $FF02.w,X		; FD 02 FF
	brk $CC.b		; 00 CC
	sbc [$40.b]		; E7 40
	tda		; 7B
	brk $CE.b		; 00 CE
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra -64.b		; 80 C0
	bra  58.b		; 80 3A
	jsl $800A8E.l		; 22 8E 0A 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $6B.b		; 00 6B
	bit $76.b,X		; 34 76
	tsa		; 3B
	ror $D603.w,X		; 7E 03 D6
	pld		; 2B
	ldx $5B.b		; A6 5B
	tax		; AA
	eor [$4A.b],Y		; 57 4A
	and [$4E.b],Y		; 37 4E
	and [$34.b],Y		; 37 34
	brk $3B.b		; 00 3B
	brk $03.b		; 00 03
	brk $2B.b		; 00 2B
	brk $5B.b		; 00 5B
	brk $57.b		; 00 57
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $FD.b		; 00 FD
	asl $23BD.w,X		; 1E BD 23
	lda $169F2D.l,X		; BF 2D 9F 16
	cmp $DC55.w,X		; DD 55 DC
	mvn $54,$DC		; 54 DC 54
	dec $084A.w		; CE 4A 08
	asl $4221.w,X		; 1E 21 42
	and $1640.w		; 2D 40 16
	rts		; 60

	eor $22.b,X		; 55 22
	mvn $54,$23		; 54 23 54
	and $4A.b,S		; 23 4A
	and ($04.b),Y		; 31 04
	jsr ($3CC0.w,X)		; FC C0 3C
	sed		; F8
	cpy $78.b		; C4 78
	pea $76FA.w		; F4 FA 76
	tsx		; BA
	ror $D0.b,X		; 76 D0
	ldx $2F55.w		; AE 55 2F
	sbc ($00.b,S),Y		; F3 00
	and [$04.b],Y		; 37 04
	cmp $00.b,S		; C3 00
	sbc ($00.b,S),Y		; F3 00
	adc ($00.b),Y		; 71 00
	adc ($00.b),Y		; 71 00
	plb		; AB
	asl A		; 0A
	plp		; 28
	dey		; 88
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	ora $43.b,S		; 03 43
	pha		; 48
	adc $007F41.l		; 6F 41 7F 00
	and ($01.b)		; 32 01
	and $3F.b,S		; 23 3F
	brk $3F.b		; 00 3F
	brk $BF.b		; 00 BF
	brk $BC.b		; 00 BC
	brk $95.b		; 00 95
	ora $90.b		; 05 90
	bpl -63.b		; 10 C1
	brk $C0.b		; 00 C0
	brk $2F.b		; 00 2F
	rts		; 60

	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	ora #$0418.w		; 09 18 04
	tsb $0602.w		; 0C 02 06
	ora ($07.b,X)		; 01 07
	brk $FB.b		; 00 FB
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	bra  16.b		; 80 10
	cpy #$D018.w		; C0 18 D0
	clc		; 18
	cpx #$E008.w		; E0 08 E0
	tsb $0CF8.w		; 0C F8 0C
	bvs   4.b		; 70 04
	sei		; 78
	asl $E0.b		; 06 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($3C.b,X)		; 01 3C
	sbc $FFFF.w,X		; FD FF FF
	adc $3FC640.l,X		; 7F 40 C6 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $2B00.w,X		; 3C 00 2B
	trb $0080.w		; 1C 80 00
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	clc		; 18
	sta $008000.l,X		; 9F 00 80 00
	bra   5.b		; 80 05
	sta $0000.w,X		; 9D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $04.b		; 64 04
	adc $007F00.l,X		; 7F 00 7F 00
	ply		; 7A
	clc		; 18
	brk $E0.b		; 00 E0
	jsr $1030.w		; 20 30 10
	clc		; 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	cpy #$08CC.w		; C0 CC 08
	sty $8480.w		; 8C 80 84
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	php		; 08
	beq -128.b		; F0 80
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	asl $1D.b		; 06 1D
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $1600.w		; 0E 00 16
	ldy #$C0A4.w		; A0 A4 C0
	rti		; 40

	cmp ($89.b,X)		; C1 89
	plb		; AB
	sta ($DF.b,S),Y		; 93 DF
	ora $4FD0.w		; 0D D0 4F
	bne -61.b		; D0 C3
	sei		; 78
	adc $3F3F7F.l,X		; 7F 7F 3F 3F
	rol $743E.w,X		; 3E 3E 74
	stz $21.b,X		; 74 21
	and ($6F.b,X)		; 21 6F
	rts		; 60

	and $080F20.l		; 2F 20 0F 08
	eor ($07.b)		; 52 07
	asl $AF.b,X		; 16 AF
	trb $5E.b		; 14 5E
	rti		; 40

	jsr ($B860.w,X)		; FC 60 B8
	jsr $90F0.w		; 20 F0 90
	clc		; 18
	brk $70.b		; 00 70
	jsr ($F0FC.w,X)		; FC FC F0
	beq -96.b		; F0 A0
	ldy #$0808.w		; A0 08 08
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	rts		; 60

	ora $1B250B.l,X		; 1F 0B 25 1B
	and [$18.b]		; 27 18
	sbc $679913.l		; EF 13 99 67
	xba		; EB
	adc [$73.b],Y		; 77 73
	rol $162B.w		; 2E 2B 16
	ora #$1902.w		; 09 02 19
	cop $18.b		; 02 18
	brk $13.b		; 00 13
	brk $67.b		; 00 67
	brk $77.b		; 00 77
	brk $2E.b		; 00 2E
	brk $16.b		; 00 16
	brk $7F.b		; 00 7F
	sbc $3DEF.w,X		; FD EF 3D
	sbc $BCFFBD.l,X		; FF BD FF BC
	lda $7FFE7F.l,X		; BF 7F FE 7F
	sbc $3FFF.w,X		; FD FF 3F
	inc $EC35.w,X		; FE 35 EC
	and $B934.w		; 2D 34 B9
	bit $B8.b,X		; 34 B8
	bit $34.b,X		; 34 34
	tda		; 7B
	rol $79.b,X		; 36 79
	sbc $1C02.w,X		; FD 02 1C
	plx		; FA
	sbc [$F8.b],Y		; F7 F8
	cmp $9F77E7.l,X		; DF E7 77 9F
	sta [$7F.b],Y		; 97 7F
	cmp $DF37FF.l,X		; DF FF 37 DF
	sed		; F8
	jsr ($04F8.w,X)		; FC F8 04
	sed		; F8
	brk $E7.b		; 00 E7
	brk $93.b		; 00 93
	ora $1B6817.l		; 0F 17 68 1B
	sbc [$17.b]		; E7 17
	inx		; E8
	xce		; FB
	brk $03.b		; 00 03
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0A0.w		; E0 A0 E0
	cpx #$5CFF.w		; E0 FF 5C
	jmp ($0000.w,X)		; 7C 00 00
	cpy #$6000.w		; C0 00 60
	bra -32.b		; 80 E0
	brk $20.b		; 00 20
	cpy #$40A0.w		; C0 A0 40
	rts		; 60

	brk $83.b		; 00 83
	brk $4E.b		; 00 4E
	and [$4E.b],Y		; 37 4E
	and [$3E.b],Y		; 37 3E
	ora [$0E.b]		; 07 0E
	ora [$0E.b]		; 07 0E
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	lsr A		; 4A
	dec $CE4A.w		; CE 4A CE
	lsr A		; 4A
	cmp $49CF4A.l		; CF 4A CF 49
	inc $3D06.w,X		; FE 06 3D
	jsr ($E023.w,X)		; FC 23 E0
	lsr A		; 4A
	and ($4A.b),Y		; 31 4A
	and ($4A.b),Y		; 31 4A
	and ($4A.b),Y		; 31 4A
	bmi  72.b		; 30 48
	bmi   1.b		; 30 01
	brk $43.b		; 00 43
	rti		; 40

	eor $0F3540.l,X		; 5F 40 35 0F
	rts		; 60

	eor $801960.l,X		; 5F 60 19 80
	adc ($80.b,X)		; 61 80
	sbc ($40.b,X)		; E1 40
	rts		; 60

	bra  48.b		; 80 30
	ldy #$0830.w		; A0 30 08
	iny		; C8
	eor $0099.w,Y		; 59 99 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $00.b		; 00 00
	and $40.b,S		; 23 40
	and ($60.b),Y		; 31 60
	and ($C0.b),Y		; 31 C0
	bcc  64.b		; 90 40
	bcc  16.b		; 90 10
	tya		; 98
	rti		; 40

	iny		; C8
	rti		; 40

	iny		; C8
	cmp ($01.b,X)		; C1 01
	cpx #$C020.w		; E0 20 C0
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	adc $BE03F2.l,X		; 7F F2 03 BE
	bra  19.b		; 80 13
	beq   4.b		; F0 04
	jmp ($0F00.w,X)		; 7C 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tya		; 98
	clc		; 18
	sbc $7F01.w,X		; FD 01 7F
	brk $2F.b		; 00 2F
	jsr $080B.w		; 20 0B 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $5886.w,X		; BC 86 58
	cmp $BA.b,S		; C3 BA
	sbc $80.b,S		; E3 80
	ora ($E2.b,X)		; 01 E2
	ora $84.b,S		; 03 84
	sta [$18.b]		; 87 18
	inc $3E00.w,X		; FE 00 3E
	sei		; 78
	brk $3E.b		; 00 3E
	cop $5C.b		; 02 5C
	rti		; 40

	inc $FC00.w,X		; FE 00 FC
	brk $7A.b		; 00 7A
	cop $24.b		; 02 24
	bit $00.b		; 24 00
	brk $2E.b		; 00 2E
	trb $3C5A.w		; 1C 5A 3C
	tad		; 5B
	and $1837.w,X		; 3D 37 18
	rol A		; 2A
	bpl  30.b		; 10 1E
	php		; 08
	ora $0704.w,X		; 1D 04 07
	brk $1C.b		; 00 1C
	ora ($3C.b,X)		; 01 3C
	ora ($3D.b,X)		; 01 3D
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	tsb $08.b		; 04 08
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $18.b		; 00 18
	jsr $18F4.w		; 20 F4 18
	stz $F8.b,X		; 74 F8
	ldx $E644.w,Y		; BE 44 E6
	bit $FE.b		; 24 FE
	rts		; 60

	adc ($0E.b),Y		; 71 0E
	adc $20E030.l,X		; 7F 30 E0 20
	clc		; 18
	brk $F8.b		; 00 F8
	brk $44.b		; 00 44
	brk $24.b		; 00 24
	clc		; 18
	rts		; 60

	brk $0E.b		; 00 0E
	brk $30.b		; 00 30
	brk $FC.b		; 00 FC
	cpy #$24E6.w		; C0 E6 24
	ldx $9B40.w,Y		; BE 40 9B
	jmp ($2955.w,X)		; 7C 55 29
	adc $002702.l		; 6F 02 27 00
	brk $00.b		; 00 00
	cpy #$2400.w		; C0 00 24
	clc		; 18
	rti		; 40

	brk $7C.b		; 00 7C
	brk $29.b		; 00 29
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	jsr $286C.w		; 20 6C 28
	jmp ($0C78.w)		; 6C 78 0C
	lsr $3200.w		; 4E 00 32
	bpl  58.b		; 10 3A
	clc		; 18
	asl $3000.w,X		; 1E 00 30
	brk $18.b		; 00 18
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bpl  12.b		; 10 0C
	clc		; 18
	tsb $00.b		; 04 00
	brk $1E.b		; 00 1E
	asl $1E1E.w,X		; 1E 1E 1E
	ora $1F.b,X		; 15 1F
	and [$37.b]		; 27 37
	and [$37.b],Y		; 37 37
	and $1F1F3F.l,X		; 3F 3F 1F 1F
	brk $00.b		; 00 00
	asl $0C.b,X		; 16 0C
	asl $0C.b,X		; 16 0C
	ora $0E.b,X		; 15 0E
	and $1E.b		; 25 1E
	and [$1E.b]		; 27 1E
	and $1E.b		; 25 1E
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	jsr ($FE00.w,X)		; FC 00 FE
	ldy $0D56.w		; AC 56 0D
	ldx $AA44.w		; AE 44 AA
	mvp $1B,$FC		; 44 FC 1B
	jmp ($0003.w,X)		; 7C 03 00
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	brk $0C.b		; 00 0C
	ldy #$1045.w		; A0 45 10
	eor $10.b		; 45 10
	ora $0001.w,Y		; 19 01 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $8480.w		; 0C 80 84
	brk $86.b		; 00 86
	mvp $00,$C6		; 44 C6 00
.ACCU 16
	rep #$20		; C2 20
	.db $62, $F0, $00		; 62 F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $FC.b		; 00 FC
	sty $38.b		; 84 38
	brk $7C.b		; 00 7C
	rti		; 40

	trb $0000.w		; 1C 00 00
	dec $24.b		; C6 24
	ror $10.b		; 66 10
	and ($01.b)		; 32 01
	and ($1F.b)		; 32 1F
	ora ($17.b,X)		; 01 17
	ora $0E040B.l		; 0F 0B 04 0E
	cop $7C.b		; 02 7C
	mvp $00,$18		; 44 18 00
	tsb $1E00.w		; 0C 00 1E
	ora ($01.b)		; 12 01
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	cop $0C.b		; 02 0C
	brk $0F.b		; 00 0F
	tsb $17.b		; 04 17
	asl A		; 0A
	ora $08.b,X		; 15 08
	and $2E19.w		; 2D 19 2E
	trb $0E7D.w		; 1C 7D 0E
	cop $00.b		; 02 00
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	asl A		; 0A
	brk $08.b		; 00 08
	cop $19.b		; 02 19
	cop $1C.b		; 02 1C
	ora ($0E.b,X)		; 01 0E
	brk $BC.b		; 00 BC
	bvs -28.b		; 70 E4
	tya		; 98
	sec		; 38
	bit $F0.b		; 24 F0
	tsb $DC20.w		; 0C 20 DC
	bne  56.b		; D0 38
	bne  88.b		; D0 58
	brk $98.b		; 00 98
	bvs   0.b		; 70 00
	tya		; 98
	brk $20.b		; 00 20
	cpy #$0808.w		; C0 08 08
	cld		; D8
	clc		; 18
	jsr $2020.w		; 20 20 20
	brk $F0.b		; 00 F0
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	ora $8F3F47.l,X		; 1F 47 3F 8F
	adc $1FFF0B.l,X		; 7F 0B FF 1F
	xba		; EB
	rol $DFDF.w		; 2E DF DF
	and $1FFFBF.l,X		; 3F BF FF 1F
	brk $3D.b		; 00 3D
	ora $7B.b,S		; 03 7B
	asl $FB.b		; 06 FB
	ora $EA.b		; 05 EA
	ora $C6.b		; 05 C6
	ora $3C0B.w,Y		; 19 0B 3C
	stz $337F.w,X		; 9E 7F 33
	tsb $217E.w		; 0C 7E 21
	lsr $39.b		; 46 39
	bit $1613.w		; 2C 13 16
	phd		; 0B
	and [$1A.b]		; 27 1A
	tad		; 5B
	rol $AF.b,X		; 36 AF
	ror $0C.b,X		; 76 0C
	brk $21.b		; 00 21
	brk $39.b		; 00 39
	brk $13.b		; 00 13
	brk $0B.b		; 00 0B
	brk $1A.b		; 00 1A
	brk $36.b		; 00 36
	brk $76.b		; 00 76
	brk $DF.b		; 00 DF
	and $FF47FF.l,X		; 3F FF 47 FF
	tad		; 5B
	lda [$11.b],Y		; B7 11
	lda [$12.b],Y		; B7 12
	lda [$95.b],Y		; B7 95
	tsx		; BA
	lda #$AABB.w		; A9 BB AA
	ora $473A.w		; 0D 3A 47
	tsb $59.b		; 04 59
	cop $10.b		; 02 10
	eor #$4812.w		; 49 12 48
	sta $48.b,X		; 95 48
	lda #$AA44.w		; A9 44 AA
	mvp $81,$BD		; 44 BD 81
	stz $5F80.w,X		; 9E 80 5F
	cpy #$E02F.w		; C0 2F E0
	sta ($F0.b,S),Y		; 93 F0
	phk		; 4B
	sei		; 78
	eor $7C.b		; 45 7C
	rti		; 40

	jmp ($007E.w)		; 6C 7E 00
	adc $80BF00.l,X		; 7F 00 BF 80
	eor $202F40.l,X		; 5F 40 2F 20
	sta [$10.b],Y		; 97 10
	phb		; 8B
	php		; 08
	sta [$04.b]		; 87 04
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$8060.w		; C0 60 80
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $E0.b		; 00 E0
	brk $CD.b		; 00 CD
	jsr ($FFA3.w,X)		; FC A3 FF
	sed		; F8
	xce		; FB
	tax		; AA
	sbc $DA54.w,Y		; F9 54 DA
	bra -52.b		; 80 CC
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	ora $C0.b,S		; 03 C0
	bra 112.b		; 80 70
	jmp ($2684.w,X)		; 7C 84 26
	dec $64.b		; C6 64
	ldy $B0.b		; A4 B0
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -96.b		; 80 A0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	cpy #$60D0.w		; C0 D0 60
	bcs  96.b		; B0 60
	sed		; F8
	bcs  88.b		; B0 58
	jsr $18E0.w		; 20 E0 18
	beq  -8.b		; F0 F8
	brk $0C.b		; 00 0C
	cpy #$6000.w		; C0 00 60
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $20.b		; 00 20
	bra  16.b		; 80 10
	bpl   0.b		; 10 00
	brk $F8.b		; 00 F8
	php		; 08
	ora $07.b		; 05 07
	asl $7F0F.w		; 0E 0F 7F
	ora $BE0F9F.l		; 0F 9F 0F BE
	rol $2CBC.w		; 2E BC 2C
	sed		; F8
	pla		; 68
	rts		; 60

	bra   4.b		; 80 04
	ora $08.b,S		; 03 08
	ora [$07.b]		; 07 07
	asl $6E0D.w		; 0E 0D 6E
	rol A		; 2A
	jmp $4824.w		; 4C 24 48
	pla		; 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cmp $8E7848.l		; CF 48 78 8E
	brk $1A.b		; 00 1A
	ora $C8.b,S		; 03 C8
	dec $F800.w		; CE 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$00.b]		; 87 00
	sbc $00FC00.l,X		; FF 00 FC 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	asl $28.b		; 06 28
	ora [$38.b],Y		; 17 38
	ora ($14.b,X)		; 01 14
	php		; 08
	asl $0F32.w,X		; 1E 32 0F
	eor #$B637.w		; 49 37 B6
	adc $1818.w,Y		; 79 18 18
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	rol $00.b,X		; 36 00
	adc $A001.w,Y		; 79 01 A0
	sbc $D06FFC.l,X		; FF FC 6F D0
	rol $F0.b,X		; 36 F0
	tsb $C8.b		; 04 C8
	trb $3840.w		; 1C 40 38
	brk $B0.b		; 00 B0
	brk $E0.b		; 00 E0
	ora $05.b		; 05 05
	cpx #$D840.w		; E0 40 D8
	jsr $00F8.w		; 20 F8 00
	beq  16.b		; F0 10
	beq  48.b		; F0 30
	rts		; 60

	jsr $0000.w		; 20 00 00
	and $7F1E.w		; 2D 1E 7F
	brk $73.b		; 00 73
	and ($7F.b)		; 32 7F
	brk $72.b		; 00 72
	bit $307E.w		; 2C 7E 30
	inc $14.b,X		; F6 14
	ldy $1E68.w,X		; BC 68 1E
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	tsb $0000.w		; 0C 00 00
	bit $3000.w		; 2C 00 30
	brk $14.b		; 00 14
	php		; 08
	pla		; 68
	brk $5D.b		; 00 5D
	asl $0E1D.w		; 0E 1D 0E
	asl $1B01.w,X		; 1E 01 1B
	ora #$010F.w		; 09 0F 01
	ora $000B05.l		; 0F 05 0B 00
	asl $01.b		; 06 01
	asl $0E00.w		; 0E 00 0E
	brk $01.b		; 00 01
	ora ($08.b,X)		; 01 08
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $80.b		; 00 80
	tya		; 98
	bra -112.b		; 80 90
	jsr $0030.w		; 20 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2080.w		; 20 80 20
	beq -128.b		; F0 80
	bvs  16.b		; 70 10
	rts		; 60

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$4000.w		; C0 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($1D.b,X)		; 01 1D
	ora ($1F.b,X)		; 01 1F
	ora $0D17.w		; 0D 17 0D
	ora ($0C.b,S),Y		; 13 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $0D00.w		; 0D 00 0D
	brk $0C.b		; 00 0C
	ora ($FE.b,X)		; 01 FE
	sbc $FFFFBF.l,X		; FF BF FF FF
	adc $7F7FFF.l,X		; 7F FF 7F 7F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FEFF7F.l,X		; FF 7F FF FE
	ora ($8D.b,X)		; 01 8D
	ror $FF1F.w,X		; 7E 1F FF
	and $FF3EFF.l,X		; 3F FF 3E FF
	rol $EDFF.w,X		; 3E FF ED
	asl $E619.w,X		; 1E 19 E6
	sbc $5576.w		; ED 76 55
	rol $0E3D.w		; 2E 3D 0E
	ora $0F0E.w,X		; 1D 0E 0F
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$76.b]		; 07 76
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	ora $99.b,S		; 03 99
	dey		; 88
	sta $9C89.w,Y		; 99 89 9C
	sty $9C.b,X		; 94 9C
	sty $8C.b,X		; 94 8C
	sty $FD.b		; 84 FD
	tsb $1F.b		; 04 1F
	sbc ($1E.b,X)		; E1 1E
	inc $6688.w,X		; FE 88 66
	bit #$9466.w		; 89 66 94
	adc $94.b,S		; 63 94
	adc $84.b,S		; 63 84
	adc ($04.b,S),Y		; 73 04
	cop $60.b		; 02 60
	rts		; 60

	lda ($A0.b,X)		; A1 A0
	.db $42, $66		; 42 66
	eor ($67.b,X)		; 41 67
	eor $6F.b,S		; 43 6F
	eor #$5778.w		; 49 78 57
	bvs  46.b		; 70 2E
	rts		; 60

	ora $3AC1.w,X		; 1D C1 3A
	sta $81.b,S		; 83 81
	brk $82.b		; 00 82
	cop $84.b		; 02 84
	tsb $87.b		; 04 87
	brk $8F.b		; 00 8F
	brk $9F.b		; 00 9F
	brk $7E.b		; 00 7E
	rti		; 40

	jsr ($F080.w,X)		; FC 80 F0
	clc		; 18
	rts		; 60

	php		; 08
	brk $08.b		; 00 08
	bcc  24.b		; 90 18
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $D470.w,X		; BC 70 D4
	sec		; 38
	jsr ($AC18.w,X)		; FC 18 AC
	bpl  58.b		; 10 3A
	php		; 08
	asl $0B08.w,X		; 1E 08 0B
	asl $07.b		; 06 07
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	tsb $08.b		; 04 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $E0C0.w,Y		; 39 C0 E0
	cpx #$D020.w		; E0 20 D0
	beq -32.b		; F0 E0
	beq -48.b		; F0 D0
	jmp.w [$87B4]		; DC B4 87
	cmp $36C1.w,X		; DD C1 36
	beq -64.b		; F0 C0
	brk $20.b		; 00 20
	cpy #$E090.w		; C0 90 E0
	rts		; 60

	bra -96.b		; 80 A0
	brk $F8.b		; 00 F8
	brk $BE.b		; 00 BE
	brk $0F.b		; 00 0F
	brk $11.b		; 00 11
	adc $1E7F18.l,X		; 7F 18 7F 1E
	adc $003919.l,X		; 7F 19 39 00
	bmi   0.b		; 30 00
	bmi   8.b		; 30 08
	clc		; 18
	php		; 08
	clc		; 18
	rol A		; 2A
	rol A		; 2A
	and $25.b		; 25 25
	jsr $0620.w		; 20 20 06
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl   7.b		; 10 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $0F.b		; 02 0F
	ora $080F08.l		; 0F 08 0F 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	tsb $1E.b		; 04 1E
	ora ($1E.b,X)		; 01 1E
	ora #$1614.w		; 09 14 16
	php		; 08
	and $6E19.w		; 2D 19 6E
	ora $0404.w,X		; 1D 04 04
	ora ($01.b,X)		; 01 01
	ora #$0B08.w		; 09 08 0B
	asl A		; 0A
	ora [$04.b]		; 07 04
	phd		; 0B
	brk $1A.b		; 00 1A
	brk $1C.b		; 00 1C
	brk $74.b		; 00 74
	asl $E8.b		; 06 E8
	tsb $18D0.w		; 0C D0 18
	ldy #$4030.w		; A0 30 40
	rts		; 60

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
	brk $00.b		; 00 00
	cpy #$6040.w		; C0 40 60
	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	trb $14.b		; 14 14
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $7E3C.w,X		; 3C 3C 7E
	ror $7F7F.w,X		; 7E 7F 7F
	lda $FECEFF.l,X		; BF FF CE FE
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	clc		; 18
	brk $24.b		; 00 24
	clc		; 18
	phy		; 5A
	bit $3E7D.w,X		; 3C 7D 3E
	sta $0E7E.w,X		; 9D 7E 0E
	beq -16.b		; F0 F0
	cpy #$3CCC.w		; C0 CC 3C
	eor ($FF.b,X)		; 41 FF
	dey		; 88
	sta $020704.l		; 8F 04 07 02
	ora $81.b,S		; 03 81
	sta ($40.b,X)		; 81 40
	cpy #$E020.w		; C0 20 E0
	ora ($10.b,S),Y		; 13 10
	ldx #$74A2.w		; A2 A2 74
	tsb $FA.b		; 04 FA
	cop $FD.b		; 02 FD
	ora ($7E.b,X)		; 01 7E
	brk $BF.b		; 00 BF
	bra  95.b		; 80 5F
	rti		; 40

	adc $001F00.l,X		; 7F 00 1F 00
	and [$E0.b]		; 27 E0
	tsb $7C.b		; 04 7C
	ora ($8F.b,X)		; 01 8F
	tsb $9C.b		; 04 9C
	phd		; 0B
	sed		; F8
	sta [$F0.b],Y		; 97 F0
	sbc $00FF00.l,X		; FF 00 FF 00
	eor $080B40.l,X		; 5F 40 0B 08
	cop $02.b		; 02 02
	ora $00.b,S		; 03 00
	sta [$90.b],Y		; 97 90
	and $1B6720.l		; 2F 20 67 1B
	lda $779F77.l,X		; BF 77 9F 77
	sta $779D77.l,X		; 9F 77 9D 77
	stz $9D73.w,X		; 9E 73 9D
	adc ($9B.b,S),Y		; 73 9B
	adc [$1B.b],Y		; 77 1B
	brk $75.b		; 00 75
	cop $77.b		; 02 77
	cop $75.b		; 02 75
	cop $75.b		; 02 75
	cop $72.b		; 02 72
	ora $71.b		; 05 71
	asl $71.b		; 06 71
	ora [$C0.b]		; 07 C0
	sbc $DFF0F0.l,X		; FF F0 F0 DF
	cpy #$C0C7.w		; C0 C7 C0
	adc $E3.b,S		; 63 E3
	ldy #$D9FF.w		; A0 FF D9
	sbc $C0FDFF.l,X		; FF FF FD C0
	brk $4F.b		; 00 4F
	bra  -1.b		; 80 FF
	bra 127.b		; 80 7F
	bra  92.b		; 80 5C
	bra -96.b		; 80 A0
	rti		; 40

	cmp ($3E.b,X)		; C1 3E
	sbc $37FE.w,Y		; F9 FE 37
	ora $1CEF.w,Y		; 19 EF 1C
	lda $5C.b,S		; A3 5C
	sta ($6C.b,S),Y		; 93 6C
	sta ($6C.b,S),Y		; 93 6C
	lda $4A.b,X		; B5 4A
	cmp $8522.w,X		; DD 22 85
	ply		; 7A
	ora $1C00.w,Y		; 19 00 1C
	ora ($5C.b,X)		; 01 5C
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $4A.b		; 00 4A
	brk $22.b		; 00 22
	brk $7A.b		; 00 7A
	brk $FD.b		; 00 FD
	sbc $FDFF7F.l,X		; FF 7F FF FD
	asl $905F.w		; 0E 5F 90
	cmp $AAEE8B.l		; CF 8B EE AA
	inc $AEAA.w		; EE AA AE
	dex		; CA
	sbc $3706.w,Y		; F9 06 37
	sed		; F8
	php		; 08
	ora $8B2090.l		; 0F 90 20 8B
	bmi -86.b		; 30 AA
	ora ($AA.b),Y		; 11 AA
	ora ($CA.b),Y		; 11 CA
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	ora $07.b,S		; 03 07
	ora ($0B.b,X)		; 01 0B
	asl $1F.b		; 06 1F
	ora [$1F.b]		; 07 1F
	php		; 08
	sec		; 38
	php		; 08
	adc $000000.l		; 6F 00 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $08.b		; 00 08
	ora [$00.b]		; 07 00
	bpl 102.b		; 10 66
	and $403B0A.l,X		; 3F 0A 3B 40
	adc ($94.b,S),Y		; 73 94
	ror $E0.b,X		; 76 E0
	stx $A8.b		; 86 A8
	cpy $2CE0.w		; CC E0 2C
	cpy #$C848.w		; C0 48 C8
	php		; 08
	cpx $20.b		; E4 20
	stz $2812.w,X		; 9E 12 28
	jsr $049C.w		; 20 9C 04
	bne   0.b		; D0 00
	clc		; 18
	php		; 08
	bmi   0.b		; 30 00
	beq 100.b		; F0 64
	bne  54.b		; D0 36
	jsr ($F006.w,X)		; FC 06 F0
	trb $1C70.w		; 1C 70 1C
	sec		; 38
	sty $F880.w		; 8C 80 F8
	cpy #$E820.w		; C0 20 E8
	rti		; 40

	cld		; D8
	jsr $00F8.w		; 20 F8 00
	inx		; E8
	php		; 08
	inx		; E8
	php		; 08
	beq -128.b		; F0 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	asl $1F2F.w,X		; 1E 2F 1F
	brk $03.b		; 00 03
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	eor $68.b,S		; 43 68
	and $38.b,S		; 23 38
	cop $18.b		; 02 18
	and ($78.b)		; 32 78
	asl A		; 0A
	lsr $5A30.w,X		; 5E 30 5A
	bit $007E.w,X		; 3C 7E 00
	jmp $2600.w		; 4C 00 26
	ora ($04.b)		; 12 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	and ($7E.b)		; 32 7E
	brk $FA.b		; 00 FA
	stz $CE.b		; 64 CE
	php		; 08
	ldy $6C48.w,X		; BC 48 6C
	beq 116.b		; F0 74
	sed		; F8
	ldy $78.b,X		; B4 78
	and ($0C.b)		; 32 0C
	brk $00.b		; 00 00
	stz $00.b		; 64 00
	php		; 08
	bmi  72.b		; 30 48
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $D0.b		; 00 D0
	clc		; 18
	inx		; E8
	tsb $0C08.w		; 0C 08 0C
	bpl  28.b		; 10 1C
	ldy #$4038.w		; A0 38 40
	bvs -128.b		; 70 80
	cpy #$8000.w		; C0 00 80
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	tsb $3E0C.w		; 0C 0C 3E
	rol $3F3F.w,X		; 3E 3F 3F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	lsr $7E.b		; 46 7E
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	tsb $3200.w		; 0C 00 32
	tsb $1E2D.w		; 0C 2D 1E
	adc $3E4D1E.l,X		; 7F 1E 4D 3E
	lsr $38.b		; 46 38
	pha		; 48
	bmi 120.b		; 30 78
	sei		; 78
	sei		; 78
	sei		; 78
	sed		; F8
	brk $F8.b		; 00 F8
	bvs  -8.b		; 70 F8
	bvs 120.b		; 70 78
	bra  80.b		; 80 50
	cld		; D8
	rts		; 60

	iny		; C8
	cli		; 58
	bmi  88.b		; 30 58
	bmi   0.b		; 30 00
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	bvs   1.b		; 70 01
	and ($08.b),Y		; 31 08
	ora $1F06.w,Y		; 19 06 1F
	brk $0F.b		; 00 0F
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	and $101E20.l		; 2F 20 1E 10
	asl $00.b		; 06 00
	php		; 08
	php		; 08
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	rol $5DE0.w		; 2E E0 5D
	cmp ($3A.b,X)		; C1 3A
	sta $F4.b,S		; 83 F4
	stx $68.b		; 86 68
	tsb $18D0.w		; 0C D0 18
	ldy #$4838.w		; A0 38 48
	jmp ($405F.w,X)		; 7C 5F 40
	rol $FC00.w,X		; 3E 00 FC
	bra 120.b		; 80 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $90.b		; 00 90
	bpl -117.b		; 10 8B
	adc [$8B.b],Y		; 77 8B
	adc [$FD.b],Y		; 77 FD
	ora $0F.b,S		; 03 0F
	phd		; 0B
	asl $05.b		; 06 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	and $7101.w,Y		; 39 01 71
	ora [$70.b]		; 07 70
	ora [$00.b]		; 07 00
	ora [$0B.b]		; 07 0B
	tsb $04.b		; 04 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	sbc $FEFFFB.l,X		; FF FB FF FE
	inc $FD7F.w,X		; FE 7F FD
	sbc $FDFF.w,X		; FD FF FD
	sbc $7DFFFF.l,X		; FF FF FF 7D
	sbc $B2F0EF.l,X		; FF EF F0 B2
	cpy $3DDB.w		; CC DB 3D
	and $7DFE.w,Y		; 39 FE 7D
	inc $FE7D.w,X		; FE 7D FE
	adc $3DFE.w,X		; 7D FE 3D
	inc $3A75.w,X		; FE 75 3A
	and $2B06.w,Y		; 39 06 2B
	asl $4B.b,X		; 16 4B
	rol $57.b,X		; 36 57
	rol $0E75.w		; 2E 75 0E
	ora $0E.b,X		; 15 0E
	ora $003A00.l,X		; 1F 00 3A 00
	asl $00.b		; 06 00
	asl $00.b,X		; 16 00
	rol $00.b,X		; 36 00
	rol $0E00.w		; 2E 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $A7.b		; 00 A7
	cmp $B3.b		; C5 B3
	cmp ($F3.b),Y		; D1 F3
	cmp ($D3.b)		; D2 D3
	sbc $D8.b,S		; E3 D8
	inx		; E8
	cld		; D8
	inx		; E8
	sbc #$EEF0.w		; E9 F0 EE
	sbc $C5.b,X		; F5 C5
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($0C.b)		; D2 0C
	sbc $0C.b,S		; E3 0C
	inx		; E8
	ora [$E8.b]		; 07 E8
	ora [$F0.b]		; 07 F0
	asl $F5.b		; 06 F5
	ora ($75.b,X)		; 01 75
	ora ($9B.b)		; 12 9B
	pla		; 68
	lda $7AB675.l,X		; BF 75 B6 7A
	inc $3A.b,X		; F6 3A
	pei ($38.b)		; D4 38
	ldy $2400.w,X		; BC 00 24
	brk $12.b		; 00 12
	php		; 08
	pla		; 68
	tsb $74.b		; 04 74
	brk $79.b		; 00 79
	brk $39.b		; 00 39
	brk $3B.b		; 00 3B
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	clc		; 18
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	jsr $0030.w		; 20 30 00
	bmi  64.b		; 30 40
	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $3014.w		; 1C 14 30
	rol $5E60.w		; 2E 60 5E
	cpy #$810C.w		; C0 0C 81
	bpl -93.b		; 10 A3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	jmp ($007C.w,X)		; 7C 7C 00
	brk $00.b		; 00 00
	sed		; F8
	pla		; 68
	tsb $0620.w		; 0C 20 06
	lsr A		; 4A
	ora $149F06.l		; 0F 06 9F 14
	rol $DC10.w,X		; 3E 10 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$C0E0.w		; E0 E0 C0
	rti		; 40

	ldy #$5480.w		; A0 80 54
	sec		; 38
	mvn $5C,$38		; 54 38 5C
	jsr $1034.w		; 20 34 10
	bit $1C10.w,X		; 3C 10 1C
	php		; 08
	trb $0C08.w		; 1C 08 0C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	php		; 08
	bpl   0.b		; 10 00
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	mvp $44,$10		; 44 10 44
	bvc -60.b		; 50 C4
	bne -60.b		; D0 C4
	cpy #$0804.w		; C0 04 08
	tsb $F800.w		; 0C 00 F8
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	sed		; F8
	dec A		; 3A
	sec		; 38
	sed		; F8
	brk $C1.b		; 00 C1
	ora ($00.b,X)		; 01 00
	sbc $00C000.l,X		; FF 00 C0 00
	rti		; 40

	bra  64.b		; 80 40
	ora [$00.b]		; 07 00
	cmp [$00.b]		; C7 00
	sbc $00FE00.l,X		; FF 00 FE 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$7C80.w		; C0 80 7C
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra   4.b		; 80 04
	brk $08.b		; 00 08
	brk $90.b		; 00 90
	stx $4FDC.w		; 8E DC 4F
	adc $03.b,S		; 63 03
	jmp.w [$9F40]		; DC 40 9F
	bra -97.b		; 80 9F
	bra   0.b		; 80 00
	sed		; F8
	brk $F0.b		; 00 F0
	dey		; 88
	pla		; 68
	.db $42, $22		; 42 22
	trb $3F80.w		; 1C 80 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	jsr $D038.w		; 20 38 D0
	trb $06F4.w		; 1C F4 06
	plx		; FA
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$E800.w		; C0 00 E8
	php		; 08
	sed		; F8
	brk $FC.b		; 00 FC
	brk $04.b		; 00 04
	adc [$21.b]		; 67 21
	adc $01.b		; 65 01
	bit $11.b		; 24 11
	bit $04.b,X		; 34 04
	ora [$0D.b],Y		; 17 0D
	ora $010F01.l,X		; 1F 01 0F 01
	asl $18.b		; 06 18
	clc		; 18
	inc A		; 1A
	clc		; 18
	tas		; 1B
	clc		; 18
	phd		; 0B
	php		; 08
	ora #$0009.w		; 09 09 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cpx #$F8C0.w		; E0 C0 F8
	bvc -34.b		; 50 DE
	bit $E7.b		; 24 E7
	bcc -16.b		; 90 F0
	lsr $AB72.w		; 4E 72 AB
	and $9F.b,X		; 35 9F
	sty $0000.w		; 8C 00 00
	jsr $A820.w		; 20 20 A8
	dey		; 88
	phy		; 5A
	.db $42, $2F		; 42 2F
	jsr $1091.w		; 20 91 10
	cpy $00.b		; C4 00
	jmp ($0000.w)		; 6C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F880.w		; C0 80 F8
	bpl  30.b		; 10 1E
	tsb $07.b		; 04 07
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	inx		; E8
	php		; 08
	plx		; FA
	cop $7F.b		; 02 7F
	brk $00.b		; 00 00
	asl $1F0C.w		; 0E 0C 1F
	ora ($33.b)		; 12 33
	and #$5861.w		; 29 61 58
	cpy #$8039.w		; C0 39 80
	sbc $84.b,X		; F5 84
	adc ($04.b),Y		; 71 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $1E01.w		; 0D 01 1E
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	bra 123.b		; 80 7B
	brk $FF.b		; 00 FF
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$6040.w		; C0 40 60
	ldy #$D030.w		; A0 30 D0
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $18.b		; 00 18
	lsr $1D.b		; 46 1D
	eor [$1C.b]		; 47 1C
	eor [$18.b]		; 47 18
	eor $11.b,S		; 43 11
	eor $31.b,S		; 43 31
	adc $26.b,S		; 63 26
	adc [$7D.b]		; 67 7D
	sbc $39053D.l,X		; FF 3D 05 39
	brk $38.b		; 00 38
	ora ($3C.b,X)		; 01 3C
	ora ($3C.b,X)		; 01 3C
	ora ($1C.b,X)		; 01 1C
	ora ($1A.b,X)		; 01 1A
	ora ($FD.b,X)		; 01 FD
	cop $AF.b		; 02 AF
	adc $DFF7F9.l		; 6F F9 F7 DF
	adc $BFFFFF.l,X		; 7F FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $9FFFF7.l,X		; FF F7 FF 9F
	bcc -16.b		; 90 F0
	ora $5FBF47.l		; 0F 47 BF 5F
	lda $AFDFBF.l,X		; BF BF DF AF
	cmp $F0EFD7.l,X		; DF D7 EF F0
	sbc $FFF72F.l		; EF 2F F7 FF
	beq  -1.b		; F0 FF
	sbc [$F8.b],Y		; F7 F8
	inx		; E8
	sbc ($E3.b,S),Y		; F3 E3
	sbc $EF57E0.l,X		; FF E0 57 EF
	sbc $D027C0.l,X		; FF C0 27 D0
	ldy #$D7D0.w		; A0 D0 D7
	bcs -24.b		; B0 E8
	lda [$E3.b]		; A7 E3
	ldy $A040.w		; AC 40 A0
	eor $20C0A0.l		; 4F A0 C0 20
	sed		; F8
	tya		; 98
	cpy #$8740.w		; C0 40 87
	stx $3E.b		; 86 3E
	and ($F1.b),Y		; 31 F1
	ora $FFFF1F.l		; 0F 1F FF FF
	sbc $9800FF.l,X		; FF FF 00 98
	ora [$40.b]		; 07 40
	and $317886.l,X		; 3F 86 78 31
	cpy #$000F.w		; C0 0F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($04.b,X)		; 01 04
	ora ($1C.b,X)		; 01 1C
	clc		; 18
	bit $3C15.w,X		; 3C 15 3C
	bit $007F.w		; 2C 7F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  48.b		; F0 30
	tya		; 98
	rts		; 60

	stx $0DF4.w		; 8E F4 0D
	plx		; FA
	ora $D48F78.l		; 0F 78 8F D4
	cmp $F841.w		; CD 41 F8
	brk $00.b		; 00 00
	cpx #$F880.w		; E0 80 F8
	dey		; 88
	xce		; FB
	php		; 08
	sbc $04.b,X		; F5 04
	bvs -128.b		; 70 80
	sbc ($42.b)		; F2 42
	asl $06.b		; 06 06
	beq -128.b		; F0 80
	eor $1B7C20.l,X		; 5F 20 7C 1B
	xba		; EB
	sta [$EF.b]		; 87 EF
	lda [$F6.b]		; A7 F6
	and $070639.l		; 2F 39 06 07
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	bra  27.b		; 80 1B
	bra -121.b		; 80 87
	bpl -89.b		; 10 A7
	bpl  47.b		; 10 2F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $2F.b		; 00 2F
	dec $FE.b		; C6 FE
	cld		; D8
	clc		; 18
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	bpl -40.b		; 10 D8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cld		; D8
	cpx #$E0D0.w		; E0 D0 E0
	brk $80.b		; 00 80
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $0C07.w		; 0C 07 0C
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	ora [$30.b],Y		; 17 30
	and $E02E60.l		; 2F 60 2E E0
	lsr $07C0.w,X		; 5E C0 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	bpl  15.b		; 10 0F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	rti		; 40

	and $1C1C00.l,X		; 3F 00 1C 1C
	rol $7E3E.w,X		; 3E 3E 7E
	ror $7F7D.w,X		; 7E 7D 7F
	and $3D3F.w,X		; 3D 3F 3D
	and $000F0F.l,X		; 3F 0F 0F 00
	brk $1C.b		; 00 1C
	brk $2A.b		; 00 2A
	trb $3C5E.w		; 1C 5E 3C
	eor $283E.w,X		; 5D 3E 28
	ora $0F0738.l,X		; 1F 38 07 0F
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	sei		; 78
	bne -16.b		; D0 F0
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	sbc ($A1.b,X)		; E1 A1
	cmp ($33.b)		; D2 33
	sec		; 38
	cmp $97DCF0.l,X		; DF F0 DC 97
	bpl  15.b		; 10 0F
	brk $DF.b		; 00 DF
	cpy #$203F.w		; C0 3F 20
	stz $2D00.w,X		; 9E 00 2D
	and ($C4.b,X)		; 21 C4
	tsb $C8.b		; 04 C8
	php		; 08
	and $3DE8.w,X		; 3D E8 3D
	cli		; 58
	and $1F18.w		; 2D 18 1F
	asl $0E.b		; 06 0E
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	.db $42, $18		; 42 18
	cop $18.b		; 02 18
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $9878.w		; 20 78 98
	lda $5C6220.l,X		; BF 20 62 5C
	inc $BBBC.w,X		; FE BC BB
	jmp ($708C.w,X)		; 7C 8C 70
	ror $1F00.w,X		; 7E 00 1F
	brk $87.b		; 00 87
	brk $20.b		; 00 20
	rti		; 40

	jmp $01BC81.l		; 5C 81 BC 01
	jmp ($7000.w,X)		; 7C 00 70
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	asl $0FE1.w		; 0E E1 0F
	cpx #$D00B.w		; E0 0B D0
	ora $19C0.w,Y		; 19 C0 19
	bra  23.b		; 80 17
	ldx #$043E.w		; A2 3E 04
	bit $00F1.w,X		; 3C F1 00
	sed		; F8
	php		; 08
	sbc ($01.b),Y		; F1 01
	cpx #$F000.w		; E0 00 F0
	bpl -31.b		; 10 E1
	ora ($C5.b,X)		; 01 C5
	tsb $EB.b		; 04 EB
	plp		; 28
	inx		; E8
	tsb $0774.w		; 0C 74 07
	tsx		; BA
	sta $5D.b,S		; 83 5D
	cmp ($2E.b,X)		; C1 2E
	cpx #$F88B.w		; E0 8B F8
	jsl $0F083E.l		; 22 3E 08 0F
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	bra  95.b		; 80 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	cmp $04.b		; C5 04
	sbc ($01.b),Y		; F1 01
	tda		; 7B
	sbc $7AFF7D.l,X		; FF 7D FF 7A
	sbc $BF3CFF.l,X		; FF FF 3C BF
	rti		; 40

	lda $BF607F.l,X		; BF 7F 60 BF
	and $3CD380.l,X		; 3F 80 D3 3C
	adc $5202.w,X		; 7D 02 52
	and $033C.w,X		; 3D 3C 03
	rti		; 40

	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	sbc $FAEE.w,X		; FD EE FA
	jmp.w [$38E4]		; DC E4 38
	cld		; D8
	beq   0.b		; F0 00
	bcc -32.b		; 90 E0
	bpl -32.b		; 10 E0
	beq   0.b		; F0 00
	cmp #$CAF6.w		; C9 F6 CA
	pea $F804.w		; F4 04 F8
	clc		; 18
	cpx #$0000.w		; E0 00 00
	cpx #$E000.w		; E0 00 E0
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	ora $63.b,S		; 03 63
	bit $7EA1.w,X		; 3C A1 7E
	cmp $0DF270.l		; CF 70 F2 0D
	and ($1E.b,X)		; 21 1E
	and $000000.l,X		; 3F 00 00 00
	ora $00.b,S		; 03 00
	bit $7E00.w,X		; 3C 00 7E
	brk $70.b		; 00 70
	brk $0D.b		; 00 0D
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	sbc $383FC7.l,X		; FF C7 3F 38
	cmp [$67.b]		; C7 67
	cld		; D8
	adc ($CC.b)		; 72 CC
	lsr $8080.w		; 4E 80 80
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $C7.b		; 00 C7
	brk $D8.b		; 00 D8
	brk $CC.b		; 00 CC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor HTIMEH.w		; 4D 08 42
	sec		; 38
	rts		; 60

	tsb $0620.w		; 0C 20 06
	bpl   4.b		; 10 04
	tsb $0700.w		; 0C 00 07
	brk $00.b		; 00 00
	and ($32.b)		; 32 32
	and $1F1F3F.l,X		; 3F 3F 1F 1F
	ora $0F0F1F.l,X		; 1F 1F 0F 0F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($B2.b,S),Y		; 93 B2
	ora ($42.b,X)		; 01 42
	bmi   5.b		; 30 05
	rts		; 60

	ora ($7A.b,X)		; 01 7A
	ora $14.b,S		; 03 14
	asl $88.b		; 06 88
	sty $F800.w		; 8C 00 F8
	jmp $FC4C.w		; 4C 4C FC
	jsr ($FEFE.w,X)		; FC FE FE
	inc $FCFE.w,X		; FE FE FC
	jsr ($F8F8.w,X)		; FC F8 F8
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	php		; 08
	ora $401C10.l		; 0F 10 1C 40
	sei		; 78
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $E804.w		; F4 04 E8
	php		; 08
	ldy #$4020.w		; A0 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	php		; 08
	tsb $04E0.w		; 0C E0 04
	brk $04.b		; 00 04
	bvs -28.b		; 70 E4
	bmi 100.b		; 30 64
	bmi 100.b		; 30 64
	clc		; 18
	eor [$00.b]		; 47 00
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $05.b		; 00 05
	trb $18CB.w		; 1C CB 18
	plb		; AB
	clc		; 18
	txy		; 9B
	brk $84.b		; 00 84
	brk $8E.b		; 00 8E
	txa		; 8A
	tas		; 1B
	ora ($79.b),Y		; 11 79
	pla		; 68
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$50.b],Y		; 17 50
	ora [$60.b]		; 07 60
	ora $78.b,S		; 03 78
	bit #$1070.w		; 89 70 10
	cpx $68.b		; E4 68
	stx $00.b		; 86 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cmp $FE.b,S		; C3 FE
	phx		; DA
	sbc $FFD8.w,X		; FD D8 FF
	stp		; DB
	sec		; 38
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $D9.b		; 00 D9
	cpy #$C01B.w		; C0 1B C0
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	inx		; E8
	lda $F7F96F.l		; AF 6F F9 F7
	cmp $FFFF7F.l,X		; DF 7F FF FF
	lda $0000FF.l,X		; BF FF 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	sta $0FF090.l,X		; 9F 90 F0 0F
	eor [$BF.b]		; 47 BF
	eor $DFBFBF.l,X		; 5F BF BF DF
	brk $C0.b		; 00 C0
	sta [$F8.b]		; 87 F8
	ora $02.b		; 05 02
	adc $16BF0A.l,X		; 7F 0A BF 16
	sbc #$CF56.w		; E9 56 CF
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	plx		; FA
	brk $82.b		; 00 82
	brk $06.b		; 00 06
	rti		; 40

	lsr $00.b		; 46 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq -128.b		; F0 80
	eor $1B7C20.l,X		; 5F 20 7C 1B
	xba		; EB
	sta [$EF.b]		; 87 EF
	lda [$F6.b]		; A7 F6
	and $000000.l		; 2F 00 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	bra  27.b		; 80 1B
	bra -121.b		; 80 87
	bpl -89.b		; 10 A7
	bpl  47.b		; 10 2F
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	ora ($FC.b),Y		; 11 FC
	cpx $2F.b		; E4 2F
	sbc [$FF.b],Y		; F7 FF
	beq  -1.b		; F0 FF
	sbc [$F8.b],Y		; F7 F8
	inx		; E8
	sbc ($E3.b,S),Y		; F3 E3
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	cpx $13.b		; E4 13
	and [$D0.b]		; 27 D0
	ldy #$D7D0.w		; A0 D0 D7
	bcs -24.b		; B0 E8
	lda [$E3.b]		; A7 E3
	ldy $180F.w		; AC 0F 18
	ora [$10.b]		; 07 10
	asl $10.b		; 06 10
	asl $30.b		; 06 30
	ora $31.b		; 05 31
	bpl  49.b		; 10 31
	cop $23.b		; 02 23
	inc A		; 1A
	adc $07.b,S		; 63 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  30.b		; 10 1E
	bpl  15.b		; 10 0F
	ora ($1D.b,X)		; 01 1D
	ora ($3C.b,X)		; 01 3C
	jsr $6300.w		; 20 00 63
	sty $E7.b		; 84 E7
	ldy $E6.b		; A4 E6
	brk $C6.b		; 00 C6
	php		; 08
	dec $CC40.w		; CE 40 CC
	bpl -100.b		; 10 9C
	bcc -104.b		; 90 98
	dec $5A42.w,X		; DE 42 5A
	.db $42, $18		; 42 18
	brk $BC.b		; 00 BC
	sty $B4.b		; 84 B4
	sty $38.b		; 84 38
	php		; 08
	pla		; 68
	php		; 08
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($7F.b,X)		; 01 7F
	adc $5F7F7F.l,X		; 7F 7F 7F 5F
	adc $0D7F5F.l,X		; 7F 5F 7F 0D
	cmp $0FFF4E.l,X		; DF 4E FF 0F
	cmp $5DDF6F.l,X		; DF 6F DF 5D
	rol $3F5F.w,X		; 3E 5F 3F
	eor $1F5E3F.l,X		; 5F 3F 5E 1F
	and ($2E.b,X)		; 21 2E
	asl $2701.w		; 0E 01 27
	and $382F27.l		; 2F 27 2F 38
	brk $34.b		; 00 34
	clc		; 18
	dec A		; 3A
	tsb $162D.w		; 0C 2D 16
	trb $0B.b		; 14 0B
	ora $0A.b,X		; 15 0A
	ora ($0D.b)		; 12 0D
	asl $0D.b,X		; 16 0D
	brk $00.b		; 00 00
	clc		; 18
	brk $0C.b		; 00 0C
	brk $16.b		; 00 16
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $70.b		; 00 70
	brk $68.b		; 00 68
	bmi 116.b		; 30 74
	clc		; 18
	phy		; 5A
	bit $16A9.w		; 2C A9 16
	plb		; AB
	trb $A5.b		; 14 A5
	inc A		; 1A
	lda $001A.w		; AD 1A 00
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $2C.b		; 00 2C
	brk $16.b		; 00 16
	brk $14.b		; 00 14
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $3F.b		; 00 3F
	brk $2D.b		; 00 2D
	asl $003F.w,X		; 1E 3F 00
	bpl  50.b		; 10 32
	clc		; 18
	and ($08.b)		; 32 08
	jsl $082208.l		; 22 08 22 08
	jsl $1E0000.l		; 22 00 00 1E
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $7E.b		; 00 7E
	brk $5A.b		; 00 5A
	bit $007E.w,X		; 3C 7E 00
	jsr $2064.w		; 20 64 20
	stz $00.b		; 64 00
	mvp $CC,$08		; 44 08 CC
	php		; 08
	cpy $0000.w		; CC 00 00
	bit $0000.w,X		; 3C 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	rti		; 40

	bvs  64.b		; 70 40
	brk $03.b		; 00 03
	ora $083400.l		; 0F 00 34 08
	rol $1A1A.w,X		; 3E 1A 1A
	tsb $0D17.w		; 0C 17 0D
	ora $0B06.w		; 0D 06 0B
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	ora $1A.b,S		; 03 1A
	ora ($0C.b,X)		; 01 0C
	ora ($0D.b,X)		; 01 0D
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $FC.b		; 00 FC
	ora $63407F.l		; 0F 7F 40 63
	.db $42, $73		; 42 73
	eor ($73.b)		; 52 73
	eor ($33.b)		; 52 33
	jsl $BB2233.l		; 22 33 22 BB
	tax		; AA
	cop $02.b		; 02 02
	rti		; 40

	bra  66.b		; 80 42
	stz $8C52.w		; 9C 52 8C
	eor ($8C.b)		; 52 8C
	jsl $CC22CC.l		; 22 CC 22 CC
	tax		; AA
	mvp $00,$00		; 44 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $0E.b		; 04 0E
	ora $08.b,S		; 03 08
	cop $1B.b		; 02 1B
	ora $00003D.l		; 0F 3D 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	sei		; 78
	sbc [$2F.b],Y		; F7 2F
	cpx #$7C18.w		; E0 18 7C
	bcc  60.b		; 90 3C
	cpy $1E.b		; C4 1E
	cpx #$FA0A.w		; E0 0A FA
	ora [$D8.b]		; 07 D8
	sta $77.b		; 85 77
	brk $50.b		; 00 50
	rti		; 40

	ldy #$E020.w		; A0 20 E0
	jsr $10F0.w		; 20 F0 10
	pea $F804.w		; F4 04 F8
	brk $FA.b		; 00 FA
	.db $82, $FA, $DC		; 82 FA DC
	ldx $AEEC.w,Y		; BE EC AE
	cpx #$E020.w		; E0 20 E0
	bne -16.b		; D0 F0
	inx		; E8
	sed		; F8
	inx		; E8
	sed		; F8
	sed		; F8
	sed		; F8
	jmp.w [$2C00]		; DC 00 2C
	cpy #$C020.w		; C0 20 C0
	jsr $D0C0.w		; 20 C0 D0
	jsr $F048.w		; 20 48 F0
	iny		; C8
	beq -24.b		; F0 E8
	beq -12.b		; F0 F4
	jsr ($FCB4.w,X)		; FC B4 FC
	cpy $FC.b		; C4 FC
	ldy $FC.b		; A4 FC
	sbc $FC.b		; E5 FC
	sbc $EFFFF1.l		; EF F1 FF EF
	cpx #$E49F.w		; E0 9F E4
	sed		; F8
	sty $78.b		; 84 78
	cpy $38.b		; C4 38
	ldy $58.b		; A4 58
	ldy $58.b		; A4 58
	lda ($50.b,X)		; A1 50
	sbc $801F00.l		; EF 00 1F 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$01.b]		; 07 01
	asl A		; 0A
	tsb $0D.b		; 04 0D
	asl $1D.b		; 06 1D
	asl $1F.b,X		; 16 1F
	inc A		; 1A
	sbc $0000F8.l		; EF F8 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	asl $00.b,X		; 16 00
	ora ($08.b)		; 12 08
	inx		; E8
	clc		; 18
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
	asl $3E63.w,X		; 1E 63 3E
	adc $3C.b,S		; 63 3C
	adc ($3C.b,X)		; 61 3C
	adc ($3E.b,X)		; 61 3E
	adc ($3E.b,X)		; 61 3E
	adc ($3E.b,X)		; 61 3E
	adc ($2F.b,X)		; 61 2F
	adc ($3C.b,X)		; 61 3C
	jsr $001C.w		; 20 1C 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora ($1F.b,X)		; 01 1F
	ora ($1E.b,X)		; 01 1E
	brk $30.b		; 00 30
	sec		; 38
	bmi  56.b		; 30 38
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bra -120.b		; 80 88
	brk $8C.b		; 00 8C
	brk $8C.b		; 00 8C
	rti		; 40

	cpy $00C0.w		; CC C0 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	sec		; 38
	php		; 08
	ora ($FE.b,X)		; 01 FE
	tya		; 98
	sta $D70070.l,X		; 9F 70 00 D7
	bpl  67.b		; 10 43
	adc $80C300.l,X		; 7F 00 C3 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($64.b,X)		; 01 64
	tsb $FF.b		; 04 FF
	brk $EF.b		; 00 EF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	sta $82DF27.l,X		; 9F 27 DF 82
	sbc $7B07C7.l,X		; FF C7 07 7B
	ora $67.b,S		; 03 67
	sbc [$0F.b]		; E7 0F
	adc $630F0F.l,X		; 7F 0F 0F 63
	adc $422827.l		; 6F 27 28 42
	eor ($FA.b,X)		; 41 FA
	ora ($FE.b,X)		; 01 FE
	ora ($1B.b,X)		; 01 1B
	ora ($05.b,X)		; 01 05
	ora $0B.b,S		; 03 0B
	asl $17.b		; 06 17
	ora $0D15.w		; 0D 15 0D
	trb $0D.b		; 14 0D
	asl $0F.b,X		; 16 0F
	and $163700.l,X		; 3F 00 37 16
	and $163700.l,X		; 3F 00 37 16
	ora $0D00.w		; 0D 00 0D
	cop $0D.b		; 02 0D
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	php		; 08
	brk $00.b		; 00 00
	asl $08.b,X		; 16 08
	lda $1AAB1A.l		; AF 1A AB 1A
	lda #$AD1A.w		; A9 1A AD
	asl $007E.w,X		; 1E 7E 00
	ror $7E2C.w		; 6E 2C 7E
	brk $6E.b		; 00 6E
	bit $001A.w		; 2C 1A 00
	inc A		; 1A
	tsb $1A.b		; 04 1A
	tsb $1E.b		; 04 1E
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	bpl   0.b		; 10 00
	brk $2C.b		; 00 2C
	bpl  12.b		; 10 0C
	.db $62, $0C, $63		; 62 0C 63
	bit $2E63.w		; 2C 63 2E
	adc $1E.b,S		; 63 1E
	eor $1E.b,S		; 43 1E
	cmp $1A.b,S		; C3 1A
	cmp $5A.b,S		; C3 5A
	cmp $3C.b,S		; C3 3C
	jsr $223E.w		; 20 3E 22
	asl $1C02.w,X		; 1E 02 1C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $08.b		; 00 08
	sty $8C08.w		; 8C 08 8C
	dey		; 88
	sty $8C88.w		; 8C 88 8C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	bpl  24.b		; 10 18
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$0600.w		; E0 00 06
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($BB.b,X)		; 01 BB
	rol A		; 2A
	stp		; DB
	eor ($DA.b)		; 52 DA
	sta ($DA.b),Y		; 91 DA
	ora ($FE.b),Y		; 11 FE
	lda $FE.b,X		; B5 FE
	cmp $F7.b		; C5 F7
	sed		; F8
	sbc $2AFE.w,X		; FD FE 2A
	mvp $24,$52		; 44 52 24
	sta ($24.b),Y		; 91 24
	ora ($24.b),Y		; 11 24
	and $80.b,X		; 35 80
	cmp $40.b		; C5 40
	cpx #$F0B8.w		; E0 B8 F0
	cmp $447F01.l		; CF 01 7F 44
	sbc $C244.w,X		; FD 44 C2
	plp		; 28
	cpx #$701D.w		; E0 1D 70
	brk $18.b		; 00 18
	cop $06.b		; 02 06
	brk $03.b		; 00 03
	plp		; 28
	plp		; 28
	cop $02.b		; 02 02
	and $5F5F3F.l,X		; 3F 3F 5F 5F
	ora $07070F.l		; 0F 0F 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rti		; 40

	xce		; FB
	jsl $850467.l		; 22 67 04 85
	rts		; 60

	cop $E0.b		; 02 E0
	rol $0C88.w,X		; 3E 88 0C
	bpl  24.b		; 10 18
	cpy #$06F0.w		; C0 F0 06
	asl $9C.b		; 06 9C
	stz $FAFA.w		; 9C FA FA
	jsr ($D0FC.w,X)		; FC FC D0
	bne -16.b		; D0 F0
	beq -32.b		; F0 E0
	cpx #$0000.w		; E0 00 00
	and $602E61.l		; 2F 61 2E 60
	rol $2E60.w		; 2E 60 2E
	rts		; 60

	rol $3660.w		; 2E 60 36
	bvs  16.b		; 70 10
	bvs  28.b		; 70 1C
	jmp ($001E.w,X)		; 7C 1E 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $202F00.l		; 0F 00 2F 20
	and $20.b,S		; 23 20
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	cpx #$7000.w		; E0 00 70
	cpx #$E078.w		; E0 78 E0
	mvn $6E,$E8		; 54 E8 6E
	jmp.w [$DCEA]		; DC EA DC
	rti		; 40

	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $B4.b		; 00 B4
	cld		; D8
	iny		; C8
	bcs -48.b		; B0 D0
	ldy #$9068.w		; A0 68 90
	cpy $38.b		; C4 38
	jsr ($9808.w,X)		; FC 08 98
	rts		; 60

	bcc  96.b		; 90 60
	cld		; D8
	brk $B0.b		; 00 B0
	brk $A0.b		; 00 A0
	brk $90.b		; 00 90
	brk $38.b		; 00 38
	brk $08.b		; 00 08
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	sbc $0000FF.l,X		; FF FF 00 00
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
	brk $08.b		; 00 08
	cpy $CC08.w		; CC 08 CC
	php		; 08
	cpy $CC88.w		; CC 88 CC
	tay		; A8
	cpx $FC98.w		; EC 98 FC
	bcc  -4.b		; 90 FC
	bcc  -4.b		; 90 FC
	bvs  64.b		; 70 40
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	jsr $4820.w		; 20 20 48
	pha		; 48
	pha		; 48
	pha		; 48
	ora [$06.b]		; 07 06
	tda		; 7B
	ror $BF93.w,X		; 7E 93 BF
	inc $FEFE.w,X		; FE FE FE
	inc $FCFC.w,X		; FE FC FC
	jmp ($007C.w,X)		; 7C 7C 00
	brk $04.b		; 00 04
	cop $7A.b		; 02 7A
	asl $91.b		; 06 91
	ror $5CBA.w		; 6E BA 5C
	tsx		; BA
	jmp ($38F4.w,X)		; 7C F4 38
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	rts		; 60

	sbc $FA07F0.l,X		; FF F0 07 FA
	ora $FC.b,S		; 03 FC
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $0C01.w		; 0C 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $1C.b		; 05 1C
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	cmp ($14.b,X)		; C1 14
	cmp ($1C.b,X)		; C1 1C
	cmp ($1C.b,X)		; C1 1C
	cmp $1C.b,X		; D5 1C
	cmp $1C.b,X		; D5 1C
	cmp $1C.b,X		; D5 1C
	sty $1C.b,X		; 94 1C
	ldx #$E33E.w		; A2 3E E3
	brk $F7.b		; 00 F7
	trb $F7.b		; 14 F7
	trb $E3.b		; 14 E3
	brk $E3.b		; 00 E3
	brk $E3.b		; 00 E3
	brk $E3.b		; 00 E3
	brk $D5.b		; 00 D5
	trb $03.b		; 14 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $05.b,S		; 03 05
	ora [$05.b]		; 07 05
	adc [$65.b]		; 67 65
	sbc [$14.b],Y		; F7 14
	sta $038B2F.l,X		; 9F 2F 8B 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $64.b,S		; 03 64
	ora $7B.b,S		; 03 7B
	tsb $DE.b		; 04 DE
	ror $DF.b		; 66 DF
	adc #$5EFF.w		; 69 FF 5E
	lda $BFFF5F.l,X		; BF 5F FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tyx		; BB
	sbc $610166.l,X		; FF 66 01 61
	php		; 08
	jmp $5E1E.w		; 4C 1E 5E
	ora $FFBF9F.l,X		; 1F 9F BF FF
	sbc $83FF7E.l,X		; FF 7E FF 83
	jmp ($1694.w,X)		; 7C 94 16
	bne   6.b		; D0 06
	cpx #$2804.w		; E0 04 28
	tsb $0800.w		; 0C 00 08
	bcc -104.b		; 90 98
	rts		; 60

	beq   0.b		; F0 00
	cpx #$E8E8.w		; E0 E8 E8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($34.b)		; 12 34
	trb $36.b		; 14 36
	tsb $0C26.w		; 0C 26 0C
	rol $0C.b		; 26 0C
	ror $08.b		; 66 08
	.db $62, $08, $62		; 62 08 62
	bit $0C62.w		; 2C 62 0C
	tsb $08.b		; 04 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $203C.w		; 20 3C 20
	bit $1C20.w,X		; 3C 20 1C
	brk $2C.b		; 00 2C
	.db $62, $2C, $63		; 62 2C 63
	bit $0E63.w		; 2C 63 0E
	eor $1E.b,S		; 43 1E
	eor $1E.b,S		; 43 1E
	eor $1E.b,S		; 43 1E
	eor $1A.b,S		; 43 1A
	eor $1C.b,S		; 43 1C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1A.b		; 00 1A
	eor $10.b,S		; 43 10
	eor $00.b,S		; 43 00
	eor $24.b,S		; 43 24
	ror $2C.b		; 66 2C
	inc $FE58.w		; EE 58 FE
	pha		; 48
	jsr ($BC38.w,X)		; FC 38 BC
	bit $3E00.w,X		; 3C 00 3E
	cop $3E.b		; 02 3E
	cop $18.b		; 02 18
	brk $50.b		; 00 50
	rti		; 40

	bit $24.b		; 24 24
	bmi  48.b		; 30 30
	rti		; 40

	brk $2F.b		; 00 2F
	asl $003F.w,X		; 1E 3F 00
	and ($12.b,S),Y		; 33 12
	adc $246600.l,X		; 7F 00 66 24
	ror $5A00.w,X		; 7E 00 5A
	bit $007E.w,X		; 3C 7E 00
	asl $0000.w,X		; 1E 00 00
	brk $12.b		; 00 12
	tsb $0000.w		; 0C 00 00
	bit $18.b		; 24 18
	brk $00.b		; 00 00
	bit $0000.w,X		; 3C 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $19.b,S		; 03 19
	asl $1A.b		; 06 1A
	ora $2F.b		; 05 2F
	ora ($39.b)		; 12 39
	asl $26.b,X		; 16 26
	tsb $2C4E.w		; 0C 4E 2C
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	ora ($00.b)		; 12 00
	asl $00.b,X		; 16 00
	tsb $2C10.w		; 0C 10 2C
	bpl -64.b		; 10 C0
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
	brk $14.b		; 00 14
	dec $14.b,X		; D6 14
	dec $44.b,X		; D6 44
	dec $44.b		; C6 44
	dec $44.b		; C6 44
	dec $6C.b		; C6 6C
	dec $3C.b		; C6 3C
	stx $3C.b		; 86 3C
	stx $68.b		; 86 68
	rti		; 40

	pla		; 68
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $C0.b		; 00 C0
	clc		; 18
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	bne  28.b		; D0 1C
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	php		; 08
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	jsr ($BFE0.w,X)		; FC E0 BF
	rti		; 40

	adc #$3307.w		; 69 07 33
	and $EA5E65.l		; 2F 65 5E EA
	sta $08E8.w,X		; 9D E8 08
	inx		; E8
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ora [$90.b]		; 07 90
	and $805EC0.l		; 2F C0 5E 80
	sta $9E00.w,X		; 9D 00 9E
	ror A		; 6A
	lsr A		; 4A
	bit $2B.b,X		; 34 2B
	ora $17.b,X		; 15 17
	ora #$020D.w		; 09 0D 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $03.b		; 02 03
	ror A		; 6A
	ora ($34.b,X)		; 01 34
	ora ($15.b,X)		; 01 15
	brk $09.b		; 00 09
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($79.b,X)		; 01 79
	ora #$72EB.w		; 09 EB 72
	lda $33CE75.l		; AF 75 CE 33
	sbc #$DE96.w		; E9 96 DE
	lda ($E8.b,X)		; A1 E8
	and [$E8.b],Y		; 37 E8
	lda [$09.b],Y		; B7 09
	stx $72.b		; 86 72
	tsb $75.b		; 04 75
	brk $33.b		; 00 33
	brk $96.b		; 00 96
	brk $A1.b		; 00 A1
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	bra   4.b		; 80 04
	trb $1C07.w		; 1C 07 1C
	and $1B3501.l,X		; 3F 01 35 1B
	and $1B.b,X		; 35 1B
	and $6F1B.w,X		; 3D 1B 6F
	tas		; 1B
	stz $0B6A.w,X		; 9E 6A 0B
	php		; 08
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $6A.b		; 00 6A
	ora ($E2.b,X)		; 01 E2
	inc $3FE3.w,X		; FE E3 3F
	and ($1F.b,X)		; 21 1F
	ora $060E00.l,X		; 1F 00 0E 06
	asl $1C16.w,X		; 1E 16 1C
	trb $3C.b		; 14 3C
	bit $1415.w		; 2C 15 14
	trb $14.b		; 14 14
	asl $C6.b		; 06 C6
	brk $E0.b		; 00 E0
	asl $F1.b		; 06 F1
	asl $E1.b,X		; 16 E1
	trb $E3.b		; 14 E3
	bit $53C3.w		; 2C C3 53
	cmp $3F7F37.l,X		; DF 37 7F 3F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	adc $5F7F77.l,X		; 7F 77 7F 5F
	rts		; 60

	rol $2F.b,X		; 36 2F
	bmi  15.b		; 30 0F
	and ($0F.b,S),Y		; 33 0F
	and [$0F.b],Y		; 37 0F
	eor [$2F.b],Y		; 57 2F
	adc [$2F.b],Y		; 77 2F
	eor ($2F.b,S),Y		; 53 2F
	rti		; 40

	jsr $002F.w		; 20 2F 00
	adc $FFFF.w,X		; 7D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $FF837C.l,X		; 1F 7C 83 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	ora $FB6BF4.l,X		; 1F F4 6B FB
	sbc [$6F.b],Y		; F7 6F
	tya		; 98
	tya		; 98
	rts		; 60

	bvs -32.b		; 70 E0
	beq -32.b		; F0 E0
	bvc -64.b		; 50 C0
	bne -64.b		; D0 C0
	rtl		; 6B

	brk $F7.b		; 00 F7
	brk $98.b		; 00 98
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $20C0.w		; 20 C0 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	ldy #$801F.w		; A0 1F 80
	ora $C04880.l,X		; 1F 80 48 C0
	tsb $0840.w		; 0C 40 08
	sed		; F8
	ora $0F.b,S		; 03 0F
	brk $03.b		; 00 03
	eor $7F7F5F.l,X		; 5F 5F 7F 7F
	adc $3F3F7F.l,X		; 7F 7F 3F 3F
	and $07073F.l,X		; 3F 3F 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	cpx #$E0C0.w		; E0 C0 E0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	dec $C6.b		; C6 C6
	cmp $F4D948.l		; CF 48 D9 F4
	lda ($40.b),Y		; B1 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  70.b		; 80 46
	bra -82.b		; 80 AE
	rti		; 40

	sta ($FB.b)		; 92 FB
	jmp.w [$F8FE]		; DC FE F8
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($DCFC.w,X)		; FC FC DC
	jsr ($FCD4.w,X)		; FC D4 FC
	clv		; B8
	cpy #$E014.w		; C0 14 E0
	tya		; 98
	cpx #$E0D8.w		; E0 D8 E0
	pei ($E8.b)		; D4 E8
	jmp.w [$94E8]		; DC E8 94
	inx		; E8
	trb $E8.b		; 14 E8
	brk $E0.b		; 00 E0
	adc $5F.b,S		; 63 5F
	ror $59.b		; 66 59
	sbc $F8C0.w,Y		; F9 C0 F8
	sbc $F3F1.w,Y		; F9 F1 F3
	adc ($65.b,X)		; 61 65
	ora ($0D.b,X)		; 01 0D
	brk $08.b		; 00 08
	eor $005900.l,X		; 5F 00 59 00
	bra  64.b		; 80 40
	clv		; B8
	bvc -48.b		; 50 D0
	rts		; 60

	.db $62, $02, $02		; 62 02 02
	cop $07.b		; 02 07
	ora [$BF.b]		; 07 BF
	cpy #$F00F.w		; C0 0F F0
	jsr ($A006.w,X)		; FC 06 A0
	ldx $2E28.w,Y		; BE 28 2E
	php		; 08
	phd		; 0B
	cop $03.b		; 02 03
	rti		; 40

	ora ($C0.b,X)		; 01 C0
	ora [$F0.b]		; 07 F0
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	mvp $D0,$D0		; 44 D0 D0
	pea $FCF4.w		; F4 F4 FC
	jsr ($FEFE.w,X)		; FC FE FE
	dec $BF30.w		; CE 30 BF
	jmp ($80FC.w,X)		; 7C FC 80
	sed		; F8
	sed		; F8
	sei		; 78
	sei		; 78
	bmi  48.b		; 30 30
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bmi -128.b		; 30 80
	jmp ($8000.w,X)		; 7C 00 80
	brk $E8.b		; 00 E8
	bvc  88.b		; 50 58
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A4.b		; 00 A4
	lda $9F15.w,X		; BD 15 9F
	mvp $29,$CE		; 44 CE 29
	eor $8424.w		; 4D 24 84
	ora ($40.b,S),Y		; 13 40
	and ($60.b,X)		; 21 60
	phd		; 0B
	plp		; 28
	rep #$40		; C2 40
	rts		; 60

	rts		; 60

	and ($31.b),Y		; 31 31
	sbc ($F2.b)		; F2 F2
	tda		; 7B
	tda		; 7B
	and $1F1F3F.l,X		; 3F 3F 1F 1F
	ora [$17.b],Y		; 17 17
	cmp $FF.b,S		; C3 FF
	inc A		; 1A
	adc $44CB42.l,X		; 7F 42 CB 44
	ora [$82.b],Y		; 17 82
	ora [$80.b]		; 07 80
	cop $C0.b		; 02 C0
	asl $0C88.w,X		; 1E 88 0C
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	bit $34.b,X		; 34 34
	sed		; F8
	sed		; F8
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($F0F0.w,X)		; FC F0 F0
	beq -16.b		; F0 F0
	adc $7FAF3F.l,X		; 7F 3F AF 7F
	lda $7FBF7F.l		; AF 7F BF 7F
	sbc $3F.b,S		; E3 3F
	eor ($73.b,X)		; 41 73
	plp		; 28
	sbc $FFA2.w,Y		; F9 A2 FF
	tsa		; 3B
	ora [$67.b]		; 07 67
	ora $671F67.l,X		; 1F 67 1F 67
	ora $4C0321.l,X		; 1F 21 03 4C
	and $2606.w		; 2D 06 26
	brk $20.b		; 00 20
	sbc $E9FE.w,Y		; F9 FE E9
	inc $FEEB.w,X		; FE EB FE
	sbc $F8EFFE.l,X		; FF FE EF F8
	cpy #$80E8.w		; C0 E8 80
	cpy $14.b		; C4 14
	sta $C0BE.w,X		; 9D BE C0
	dec $CEF0.w		; CE F0 CE
	beq -18.b		; F0 EE
	beq -56.b		; F0 C8
	cpx #$D090.w		; E0 90 D0
	sec		; 38
	clv		; B8
	stz $60.b		; 64 60
	ora $0C.b		; 05 0C
	ora ($18.b,X)		; 01 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	ora $00.b,S		; 03 00
	ora $080F08.l		; 0F 08 0F 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sta $28.b,S		; 83 28
	sta $28.b,S		; 83 28
	.db $82, $38, $82		; 82 38 82
	sec		; 38
	tax		; AA
	sec		; 38
	tax		; AA
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	sbc $28EF28.l		; EF 28 EF 28
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	tsb $46.b		; 04 46
	trb $1CC6.w		; 1C C6 1C
	dec $5C.b		; C6 5C
	dec $7C.b		; C6 7C
	dec $74.b		; C6 74
	dec $74.b		; C6 74
	dec $34.b		; C6 34
	stx $38.b		; 86 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	bne -128.b		; D0 80
	bcc -128.b		; 90 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bpl -64.b		; 10 C0
	bvc  96.b		; 50 60
	bmi  64.b		; 30 40
	bmi -32.b		; 30 E0
	bne -16.b		; D0 F0
	bvc -16.b		; 50 F0
	bmi -32.b		; 30 E0
	cpx #$00E0.w		; E0 E0 00
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	brk $50.b		; 00 50
	brk $10.b		; 00 10
	jsr $40A0.w		; 20 A0 40
	sbc $DFACDD.l		; EF DD AC DF
	clv		; B8
	cmp $ECDFF4.l,X		; DF F4 DF EC
	cmp $5066.w,Y		; D9 66 50
	cmp [$FC.b],Y		; D7 FC
	cmp $9DE8.w		; CD E8 9D
	cpy #$C01C.w		; C0 1C C0
	sta $93C1.w,Y		; 99 C1 93
	cmp $C7.b,S		; C3 C7
	sta ($4F.b,X)		; 81 4F
	bra  71.b		; 80 47
	dey		; 88
	stp		; DB
	brk $EF.b		; 00 EF
	lda [$6F.b],Y		; B7 6F
	lda [$2D.b],Y		; B7 2D
	sbc [$1F.b],Y		; F7 1F
	lda [$6F.b],Y		; B7 6F
	and $DF19CB.l,X		; 3F CB 19 DF
	adc $B72F6F.l,X		; 7F 6F 2F B7
	asl $35.b		; 06 35
	asl $31.b		; 06 31
	asl $D5.b		; 06 D5
	stx $CE.b		; 86 CE
	ora [$E9.b]		; 07 E9
	ora [$CA.b]		; 07 CA
	and [$BD.b]		; 27 BD
	cop $E0.b		; 02 E0
	cpx #$0080.w		; E0 80 00
	rti		; 40

	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $020901.l		; 0F 01 09 02
	php		; 08
	tsb $0C.b		; 04 0C
	cop $0F.b		; 02 0F
	ora $0E.b		; 05 0E
	asl $0C.b		; 06 0C
	asl $000C.w		; 0E 0C 00
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0C.b,X)		; 01 0C
	ora ($0B.b,X)		; 01 0B
	ora $0C0F.w		; 0D 0F 0C
	phd		; 0B
	ora $070707.l		; 0F 07 07 07
	ora ($0B.b,X)		; 01 0B
	ora [$1F.b]		; 07 1F
	ora $07.b,S		; 03 07
	ora [$09.b]		; 07 09
	tsb $08.b		; 04 08
	tsb $09.b		; 04 09
	asl $07.b		; 06 07
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($05.b,X)		; 01 05
	ora $07.b,S		; 03 07
	asl $07.b		; 06 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $06.b		; 00 06
	ora $05.b,S		; 03 05
	ora $02.b,S		; 03 02
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $12.b		; 00 12
	bit $14.b,X		; 34 14
	rol $0C.b,X		; 36 0C
	rol $0C.b		; 26 0C
	rol $1C.b		; 26 1C
	ror $18.b		; 66 18
	.db $62, $18, $62		; 62 18 62
	brk $00.b		; 00 00
	tsb $0804.w		; 0C 04 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $203C.w		; 20 3C 20
	bit $0420.w,X		; 3C 20 04
	bit $0F00.w,X		; 3C 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	sei		; 78
	brk $C8.b		; 00 C8
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
	bra -13.b		; 80 F3
	adc $EA90.w		; 6D 90 EA
	bvc 107.b		; 50 6B
	eor $E9.b,X		; 55 E9
	sta ($E3.b)		; 92 E3
	eor $E2.b,X		; 55 E2
	jmp.w [$DDE7]		; DC E7 DD
	tsb $0E2C.w		; 0C 2C 0E
	asl $0D4C.w		; 0E 4C 0D
	eor $8C8C.w		; 4D 8C 8C
	tsb $4808.w		; 0C 08 48
	cmp $C0.b		; C5 C0
	jmp.w [$00C0]		; DC C0 00
	sbc $5A4483.l,X		; FF 83 44 5A
	sty $4B.b		; 84 4B
	and $D7.b		; 25 D7
	asl $CFB7.w		; 0E B7 CF
	phk		; 4B
	and $00BFCF.l,X		; 3F CF BF 00
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	lda $B839.w,Y		; B9 39 B8
	bit $32.b,X		; 34 32
	and [$33.b],Y		; 37 33
	phb		; 8B
	ora [$3A.b]		; 07 3A
	ora [$08.b]		; 07 08
	sec		; 38
	ora #$0F39.w		; 09 39 0F
	and $1F3E07.l,X		; 3F 07 3E 1F
	jsr $0E7D.w		; 20 7D 0E
	sta [$6E.b],Y		; 97 6E
	sta $101776.l		; 8F 76 17 10
	asl $10.b,X		; 16 10
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	asl $6E00.w		; 0E 00 6E
	brk $76.b		; 00 76
	brk $44.b		; 00 44
	jmp ($FFC7.w,X)		; 7C C7 FF
	cmp $02F6E0.l,X		; DF E0 F6 02
	stx $8C82.w		; 8E 82 8C
	sty $9C.b		; 84 9C
	sty $9C.b,X		; 94 9C
	sty $AB.b,X		; 94 AB
	plp		; 28
	plp		; 28
	plp		; 28
	jsr $0220.w		; 20 20 02
	ora #$7182.w		; 09 82 71
	sty $73.b		; 84 73
	sty $63.b,X		; 94 63
	sty $63.b,X		; 94 63
	sec		; 38
	.db $62, $38, $62		; 62 38 62
	sec		; 38
	adc $38.b,S		; 63 38
	adc $1A.b,S		; 63 1A
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	eor $1C.b,S		; 43 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $12.b		; 00 12
	eor $12.b,S		; 43 12
	eor $10.b,S		; 43 10
	eor $10.b,S		; 43 10
	eor $10.b,S		; 43 10
	.db $42, $04		; 42 04
	dec $40.b		; C6 40
	dec $00.b		; C6 00
	sty $3C.b		; 84 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $78.b		; 00 78
	rti		; 40

	bit $7804.w,X		; 3C 04 78
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($1F.b,X)		; 01 1F
	asl $14.b		; 06 14
	php		; 08
	and $1E2D0C.l,X		; 3F 0C 2D 1E
	rol $001C.w,X		; 3E 1C 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	ora $0C.b,S		; 03 0C
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
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
	brk $7E.b		; 00 7E
	tsb $46.b		; 04 46
	brk $7E.b		; 00 7E
	bit $66.b		; 24 66
	clc		; 18
	stz $CC04.w,X		; 9E 04 CC
	php		; 08
	ldy $F440.w,X		; BC 40 F4
	sei		; 78
	tsb $00.b		; 04 00
	brk $38.b		; 00 38
	bit $00.b		; 24 00
	clc		; 18
	brk $04.b		; 00 04
	rts		; 60

	php		; 08
	bmi  64.b		; 30 40
	brk $78.b		; 00 78
	brk $40.b		; 00 40
	cpy $70.b		; C4 70
	dec $70.b		; C6 70
	dec $74.b		; C6 74
	dec $7C.b		; C6 7C
	dec $5C.b		; C6 5C
	dec $5C.b		; C6 5C
	dec $58.b		; C6 58
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $40.b		; 00 40
	rts		; 60

	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $2030.w		; 20 30 20
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bmi -128.b		; 30 80
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpx #$C020.w		; E0 20 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	sec		; 38
	jsr $F038.w		; 20 38 F0
	dey		; 88
	jmp.w [$7600]		; DC 00 76
	jmp $2E3F.w		; 4C 3F 2E
	adc $DA5E.w		; 6D 5E DA
	lda $10D0.w,X		; BD D0 10
	bne  16.b		; D0 10
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jmp $2E80.w		; 4C 80 2E
	cpy #$805E.w		; C0 5E 80
	lda $4F00.w,X		; BD 00 4F
	rol $4B.b,X		; 36 4B
	rol $2A.b,X		; 36 2A
	ora [$16.b],Y		; 17 16
	phd		; 0B
	ora [$0B.b],Y		; 17 0B
	ora $000703.l		; 0F 03 07 00
	asl $01.b		; 06 01
	rol $00.b,X		; 36 00
	rol $00.b,X		; 36 00
	ora [$00.b],Y		; 17 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $99.b,S		; 03 99
	bit #$8A9B.w		; 89 9B 8A
	dec $DD4D.w,X		; DE 4D DD
	phk		; 4B
	xce		; FB
	eor [$FE.b],Y		; 57 FE
	and $FE7D.w,Y		; 39 7D FE
	inc $89FF.w,X		; FE FF 89
	ror $8A.b		; 66 8A
	stz $4D.b		; 64 4D
	jsr $204B.w		; 20 4B 20
	eor [$10.b],Y		; 57 10
	ora ($38.b),Y		; 11 38
	sec		; 38
	inc $936C.w		; EE 6C 93
	ldy $7B.b,X		; B4 7B
	pla		; 68
	sbc [$D3.b],Y		; F7 D3
	cpx $D8A4.w		; EC A4 D8
	pha		; 48
	bcs -104.b		; B0 98
	rts		; 60

	inx		; E8
	bpl -28.b		; 10 E4
	clc		; 18
	tda		; 7B
	brk $F7.b		; 00 F7
	brk $EC.b		; 00 EC
	brk $D8.b		; 00 D8
	brk $B0.b		; 00 B0
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $18.b		; 00 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$03.b]		; 07 03
	ora #$1006.w		; 09 06 10
	asl $2F20.w		; 0E 20 2F
	rts		; 60

	asl $40.b,X		; 16 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $1F1F0F.l		; 0F 0F 1F 1F
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	bvs   0.b		; 70 00
	php		; 08
	pla		; 68
	tsb $0430.w		; 0C 30 04
	trb $0E.b		; 14 0E
	bvc  70.b		; 50 46
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	clv		; B8
	clv		; B8
	ora $0F.b,S		; 03 0F
	asl $1E.b		; 06 1E
	tsb $1C.b		; 04 1C
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	brk $30.b		; 00 30
	tsb $04.b		; 04 04
	ora #$0B08.w		; 09 08 0B
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora $C0FF10.l,X		; 1F 10 FF C0
	and ($3F.b),Y		; 31 3F
	ora ($1E.b)		; 12 1E
	tsb $1C.b		; 04 1C
	and $3C.b		; 25 3C
	and [$3C.b]		; 27 3C
	ora [$3C.b]		; 07 3C
	eor $78.b,S		; 43 78
	brk $00.b		; 00 00
	dec $06.b		; C6 06
	sbc $04.b		; E5 04
	sbc ($10.b,S),Y		; F3 10
	cmp ($10.b,S),Y		; D3 10
	cmp $00.b,S		; C3 00
	sbc $20.b,S		; E3 20
	lda [$20.b]		; A7 20
	ora $091900.l		; 0F 00 19 09
	rol $5E12.w		; 2E 12 5E
	bit $3E7F.w,X		; 3C 7F 3E
	phy		; 5A
	tsa		; 3B
	bvs  51.b		; 70 33
	mvp $00,$36		; 44 36 00
	brk $09.b		; 00 09
	asl $02.b		; 06 02
	ora ($18.b),Y		; 11 18
	and $2E.b		; 25 2E
	clc		; 18
	trb $3E20.w		; 1C 20 3E
	cop $2B.b		; 02 2B
	cop $7A.b		; 02 7A
	cmp $FEFB87.l		; CF 87 FB FE
	tyx		; BB
	adc $293F5A.l,X		; 7F 5A 3F 29
	ora $CBE0.w,Y		; 19 E0 CB
.ACCU 16
	rep #$6B		; C2 6B
	cop $33.b		; 02 33
	brk $83.b		; 00 83
	brk $83.b		; 00 83
	brk $42.b		; 00 42
	bra  33.b		; 80 21
	cpy #$0600.w		; C0 00 06
	and ($04.b)		; 32 04
	sbc ($04.b)		; F2 04
	adc $BF5F8F.l,X		; 7F 8F 5F BF
	sbc $FF6F7F.l,X		; FF 7F 6F FF
	sbc [$FF.b],Y		; F7 FF
	sbc $F3F3FF.l		; EF FF F3 F3
	cpy #$8FF0.w		; C0 F0 8F
	brk $9A.b		; 00 9A
	and [$37.b]		; 27 37
	eor $A7BF4F.l		; 4F 4F BF A7
	adc $F34C.w,Y		; 79 4C F3
	and ($C0.b,S),Y		; 33 C0
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
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
	brk $0F.b		; 00 0F
	ora ($16.b,X)		; 01 16
	ora #$0916.w		; 09 16 09
	ora $1206.w,Y		; 19 06 12
	ora $1B24.w		; 0D 24 1B
	phk		; 4B
	rol $55.b,X		; 36 55
	rol $0001.w		; 2E 01 00
	php		; 08
	ora $08.b,S		; 03 08
	ora ($06.b,X)		; 01 06
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $36.b		; 00 36
	brk $2E.b		; 00 2E
	brk $FE.b		; 00 FE
	sbc $FFFFFE.l,X		; FF FE FF FF
	jsr ($FAFF.w,X)		; FC FF FA
	sbc $2AFF72.l,X		; FF 72 FF 2A
	adc [$D3.b],Y		; 77 D3
	inc $D2.b,X		; F6 D2
	ror $BCF9.w,X		; 7E F9 BC
	adc [$58.b],Y		; 77 58
	ldy $D872.w		; AC 72 D8
	and ($70.b)		; 32 70
	rol A		; 2A
	jsr $08D3.w		; 20 D3 08
	cmp ($09.b)		; D2 09
	bpl -52.b		; 10 CC
	clc		; 18
	jmp $0C6A.w		; 4C 6A 0C
	lsr $5E20.w,X		; 5E 20 5E
	bit $3A5D.w,X		; 3C 5D 3A
	rtl		; 6B

	bpl  49.b		; 10 31
	brk $78.b		; 00 78
	pha		; 48
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	jsr $3C00.w		; 20 00 3C
	brk $3A.b		; 00 3A
	brk $10.b		; 00 10
	tsb $00.b		; 04 00
	asl $6120.w		; 0E 20 61
	jsr $2061.w		; 20 61 20
	adc ($02.b,X)		; 61 02
	eor $02.b,S		; 43 02
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	eor $04.b,S		; 43 04
	lsr $1E.b		; 46 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $38.b		; 02 38
	brk $90.b		; 00 90
	stz $CC48.w		; 9C 48 CC
	bvc -58.b		; 50 C6
	dec A		; 3A
	sbc $2C.b,S		; E3 2C
	adc ($0D.b,X)		; 61 0D
	adc ($16.b,X)		; 61 16
	bmi   6.b		; 30 06
	bmi 104.b		; 30 68
	php		; 08
	bcs -128.b		; B0 80
	bit $5C04.w,X		; 3C 04 5C
	rti		; 40

	ora $203E01.l,X		; 1F 01 3E 20
	ora $101F00.l		; 0F 00 1F 10
	ror $7624.w		; 6E 24 76
	php		; 08
	tsa		; 3B
	ora ($33.b)		; 12 33
	bpl  61.b		; 10 3D
	cop $2F.b		; 02 2F
	asl $0817.w,X		; 1E 17 08
	asl $2402.w,X		; 1E 02 24
	bpl   8.b		; 10 08
	brk $12.b		; 00 12
	tsb $10.b		; 04 10
	tsb $0002.w		; 0C 02 00
	asl $0800.w,X		; 1E 00 08
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	adc ($22.b,X)		; 61 22
	adc $24.b,S		; 63 24
	adc [$04.b]		; 67 04
	dec $1C.b		; C6 1C
	dec $CE0C.w,X		; DE 0C CE
	mvp $40,$C6		; 44 C6 40
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	and ($1C.b,X)		; 21 1C
	brk $1A.b		; 00 1A
	cop $78.b		; 02 78
	rti		; 40

	rts		; 60

	rti		; 40

	bvs  64.b		; 70 40
	sec		; 38
	brk $3C.b		; 00 3C
	brk $B0.b		; 00 B0
	stx $34.b		; 86 34
	stx $58.b		; 86 58
	cmp $18.b,S		; C3 18
	cmp $3E.b,S		; C3 3E
	adc $0E.b,S		; 63 0E
	adc $1C.b,S		; 63 1C
	and ($07.b),Y		; 31 07
	and ($7C.b),Y		; 31 7C
	tsb $F8.b		; 04 F8
	bra  62.b		; 80 3E
	cop $7E.b		; 02 7E
	.db $42, $1C		; 42 1C
	brk $3D.b		; 00 3D
	and ($0F.b,X)		; 21 0F
	ora ($1E.b,X)		; 01 1E
	bpl  69.b		; 10 45
	cmp ($40.b,X)		; C1 40
	nop		; EA
	brk $D5.b		; 00 D5
	trb $7F.b		; 14 7F
	ora [$3E.b],Y		; 17 3E
	asl $1C.b		; 06 1C
	ora $08.b,S		; 03 08
	ora ($04.b,X)		; 01 04
	rol $3D3E.w,X		; 3E 3E 3D
	and $2A2A.w,X		; 3D 2A 2A
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $07.b		; 04 07
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	pha		; 48
	.db $62, $24, $76		; 62 24 76
	brk $5C.b		; 00 5C
	sec		; 38
	jmp ($84A0.w)		; 6C A0 84
	sed		; F8
	tsb $28B0.w		; 0C B0 28
	ldx $C8.b		; A6 C8
	stz $889C.w		; 9C 9C 88
	dey		; 88
	bcs -112.b		; B0 90
	ldy #$4880.w		; A0 80 48
	bmi -16.b		; 30 F0
	brk $D0.b		; 00 D0
	brk $70.b		; 00 70
	rti		; 40

	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	and ($61.b,X)		; 21 61
	jsr $0261.w		; 20 61 02
	cmp $00.b,S		; C3 00
	cmp $0F.b,S		; C3 0F
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	asl $1F00.w,X		; 1E 00 1F
	ora ($7C.b,X)		; 01 7C
	rti		; 40

	ror $4342.w,X		; 7E 42 43
	pla		; 68
	ora $68.b,S		; 03 68
	sta $C8.b,S		; 83 C8
	ora $C8.b,S		; 03 C8
	ora $88.b,S		; 03 88
	ora $88.b,S		; 03 88
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	sta [$00.b]		; 87 00
	cmp [$40.b]		; C7 40
	ora [$00.b]		; 07 00
	sta [$80.b]		; 87 80
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	eor #$7438.w		; 49 38 74
	tsb $0703.w		; 0C 03 07
	tsb $07.b		; 04 07
	asl $05.b		; 06 05
	asl $0A03.w		; 0E 03 0A
	ora $0A.b		; 05 0A
	ora $27.b		; 05 27
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	ora $02.b,S		; 03 02
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($DF.b,X)		; 01 DF
	ora $6E.b,X		; 15 6E
	adc ($12.b),Y		; 71 12
	sbc $44.b,X		; F5 44
	cmp $FEFF06.l		; CF 06 FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $8000E5.l,X		; FF E5 00 80
	brk $08.b		; 00 08
	asl A		; 0A
	bit $36.b,X		; 34 36
	tsb $07.b		; 04 07
	rol $7EFF.w,X		; 3E FF 7E
	sbc $80FE7D.l,X		; FF 7D FE 80
	bvc   0.b		; 50 00
	bne -128.b		; D0 80
	bcs  48.b		; B0 30
	sed		; F8
	cmp ($D8.b,S),Y		; D3 D8
	cmp $85DB.w,X		; DD DB 85
	cmp $A5.b,S		; C3 A5
	sbc $A0.b,S		; E3 A0
	ldy #$2020.w		; A0 20 20
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ldy #$A300.w		; A0 00 A3
	brk $BB.b		; 00 BB
	brk $9B.b		; 00 9B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FF1F17.l		; 0F 17 1F FF
	adc $FD7FFB.l,X		; 7F FB 7F FD
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $12.b		; 00 12
	ora $0A7F.w		; 0D 7F 0A
	adc ($7D.b,S),Y		; 73 7D
	ora ($7E.b,X)		; 01 7E
	ror $3B1D.w		; 6E 1D 3B
	ora $1B3D.w,X		; 1D 3D 1B
	rol $1A.b,X		; 36 1A
	inc A		; 1A
	asl $0D.b		; 06 0D
	and $0D.b,X		; 35 0D
	and ($03.b),Y		; 31 03
	bit $001D.w,X		; 3C 1D 00
	ora $1B00.w,X		; 1D 00 1B
	brk $1A.b		; 00 1A
	ora ($06.b,X)		; 01 06
	ora ($05.b,X)		; 01 05
	cop $11.b		; 02 11
	ora ($1C.b)		; 12 1C
	trb $D2B6.w		; 1C B6 D2
	ldx $D4.b,Y		; B6 D4
	lda [$D5.b],Y		; B7 D5
	lda [$D5.b],Y		; B7 D5
	adc [$A5.b]		; 67 A5
	adc $A1.b,S		; 63 A1
	adc $A1.b,S		; 63 A1
	sbc $20.b,S		; E3 20
	cmp ($09.b)		; D2 09
	pei ($09.b)		; D4 09
	cmp $08.b,X		; D5 08
	cmp $08.b,X		; D5 08
	lda $18.b		; A5 18
	lda ($1C.b,X)		; A1 1C
	lda ($1C.b,X)		; A1 1C
	jsr $001C.w		; 20 1C 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	brk $0D.b		; 00 0D
	ora $1B.b,S		; 03 1B
	tsb $003E.w		; 0C 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	tsb $0000.w		; 0C 00 00
	brk $70.b		; 00 70
	jsr ($FCF0.w,X)		; FC F0 FC
	bpl  28.b		; 10 1C
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	inx		; E8
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $E8.b		; 00 E8
	bpl 120.b		; 10 78
	beq -68.b		; F0 BC
	rti		; 40

	sbc ($10.b)		; F2 10
	ror $3D20.w,X		; 7E 20 3D
	tsb $000F.w		; 0C 0F 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	rti		; 40

	brk $10.b		; 00 10
	tsb $0020.w		; 0C 20 00
	tsb $0002.w		; 0C 02 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	clc		; 18
	ldy $E8A0.w,X		; BC A0 E8
	bpl -56.b		; 10 C8
	beq  56.b		; F0 38
	cpy #$00D0.w		; C0 D0 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	clc		; 18
	brk $A0.b		; 00 A0
	rti		; 40

	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rol $4E.b		; 26 4E
	jsr $0C7A.w		; 20 7A 0C
	tsx		; BA
	jmp ($1CFA.w,X)		; 7C FA 1C
	dec $FC40.w,X		; DE 40 FC
	clc		; 18
	stz $1C60.w		; 9C 60 1C
	tsb $30.b		; 04 30
	jsr $000C.w		; 20 0C 00
	jmp ($1C00.w,X)		; 7C 00 1C
	brk $40.b		; 00 40
	jsr $0018.w		; 20 18 00
	rts		; 60

	brk $02.b		; 00 02
	adc $00.b,S		; 63 00
	adc $04.b,S		; 63 04
	adc [$24.b]		; 67 24
	ror $20.b		; 66 20
	ror $00.b		; 66 00
	lsr $08.b		; 46 08
	jmp $4C08.w		; 4C 08 4C
	bit $3E20.w,X		; 3C 20 3E
	jsl $18223A.l		; 22 3A 22 18
	brk $1C.b		; 00 1C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $E7.b		; 00 E7
	clc		; 18
	ldy $58.b		; A4 58
	jmp $D028A0.l		; 5C A0 28 D0
	pla		; 68
	bne  84.b		; D0 54
	inx		; E8
	ldy $68.b,X		; B4 68
	ldy $0070.w		; AC 70 00
	bra  88.b		; 80 58
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $E8.b		; 00 E8
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	brk $FF.b		; 00 FF
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	bcs  84.b		; B0 54
	sec		; 38
	jmp $586C38.l		; 5C 38 6C 58
	bit $3818.w		; 2C 18 38
	brk $60.b		; 00 60
	bpl -128.b		; 10 80
	bvs -80.b		; 70 B0
	brk $38.b		; 00 38
	bra  56.b		; 80 38
	bra  88.b		; 80 58
	bra  24.b		; 80 18
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra -96.b		; 80 A0
	rti		; 40

	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	adc ($3E.b,X)		; 61 3E
	adc $1E.b,S		; 63 1E
	adc $1E.b,S		; 63 1E
	adc $0A.b,S		; 63 0A
	and $12.b,S		; 23 12
	and ($09.b,S),Y		; 33 09
	and $180A.w,Y		; 39 0A 18
	asl $1C00.w,X		; 1E 00 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	trb $0D00.w		; 1C 00 0D
	ora ($16.b,X)		; 01 16
	bpl   7.b		; 10 07
	brk $70.b		; 00 70
	trb $8CE0.w		; 1C E0 8C
	sec		; 38
	sty $CC78.w		; 8C 78 CC
	bmi -58.b		; 30 C6
	trb $0866.w		; 1C 66 08
	.db $62, $1C, $33		; 62 1C 33
	inx		; E8
	php		; 08
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	jmp ($3844.w,X)		; 7C 44 38
	jsr $203C.w		; 20 3C 20
	asl $0002.w		; 0E 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C04.w		; 0E 04 1C
	php		; 08
	sec		; 38
	ora ($31.b),Y		; 11 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	asl $2000.w		; 0E 00 20
	cpx #$C040.w		; E0 40 C0
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	tsb $07.b		; 04 07
	bpl  30.b		; 10 1E
	rti		; 40

	sei		; 78
	brk $E0.b		; 00 E0
	eor $80BF40.l,X		; 5F 40 BF 80
	adc $00FE00.l,X		; 7F 00 FE 00
	plx		; FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	clc		; 18
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	bpl   0.b		; 10 00
	bpl -128.b		; 10 80
	tya		; 98
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bpl  97.b		; 10 61
	adc $027642.l,X		; 7F 42 76 02
	inc $01.b		; E6 01
	sty $0C05.w		; 8C 05 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	sta ($12.b)		; 92 12
	lda ($20.b,X)		; A1 20
	sta ($80.b,X)		; 81 80
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	jsr $E806.w		; 20 06 E8
	tsb $0CE8.w		; 0C E8 0C
	bne  28.b		; D0 1C
	bne  24.b		; D0 18
	cpx #$A038.w		; E0 38 A0
	bmi -128.b		; 30 80
	bmi  -4.b		; 30 FC
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	cpx #$D000.w		; E0 00 D0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $1C.b		; 04 1C
	cop $20.b		; 02 20
	tsb $0040.w		; 0C 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	ora $003F3F.l,X		; 1F 3F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	jsr $6838.w		; 20 38 68
	ora $0002F0.l		; 0F F0 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	jsr ($88FC.w,X)		; FC FC 88
	brk $F8.b		; 00 F8
	bvs -16.b		; 70 F0
	brk $E0.b		; 00 E0
	beq  64.b		; F0 40
	rts		; 60

	bra  32.b		; 80 20
	cpy #$4C60.w		; C0 60 4C
	jmp ($7000.w,X)		; 7C 00 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $8C.b		; 00 8C
	brk $2A.b		; 00 2A
	rol $3C3C.w,X		; 3E 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	brk $7C.b		; 00 7C
	sec		; 38
	mvp $7C,$38		; 44 38 7C
	brk $28.b		; 00 28
	jmp ($1C2A.w)		; 6C 2A 1C
	bit $2C18.w		; 2C 18 2C
	clc		; 18
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $03.b		; 00 03
	php		; 08
	brk $0B.b		; 00 0B
	asl $07.b		; 06 07
	phd		; 0B
	ora $0D0E0E.l		; 0F 0E 0E 0D
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $070007.l		; 0F 07 00 07
	ora $06.b,S		; 03 06
	brk $0A.b		; 00 0A
	tsb $0B.b		; 04 0B
	tsb $0D.b		; 04 0D
	asl $0B.b		; 06 0B
	asl $0D.b		; 06 0D
	ora $CA.b,S		; 03 CA
	sec		; 38
	sec		; 38
	sed		; F8
	sta $85.b		; 85 85
	bit $07.b,X		; 34 07
	ora ($1E.b,S),Y		; 13 1E
	rti		; 40

	adc $C4F0C7.l,X		; 7F C7 F0 C4
	sbc $00C7.w,Y		; F9 C7 00
	ora [$00.b]		; 07 00
	ply		; 7A
	brk $F8.b		; 00 F8
	brk $E2.b		; 00 E2
	brk $80.b		; 00 80
	brk $CE.b		; 00 CE
	rol $B747.w		; 2E 47 B7
	bvc -78.b		; 50 B2
	ldx #$3AFE.w		; A2 FE 3A
	ror $7F3D.w,X		; 7E 3D 7F
	adc $FBFE.w,X		; 7D FE FB
	inc $FFFC.w,X		; FE FC FF
	sbc $0CFE.w,X		; FD FE 0C
	tsb $2002.w		; 0C 02 20
	lda ($8C.b)		; B2 8C
	sta $38BE.w,Y		; 99 BE 38
	ror $FCFA.w,X		; 7E FA FC
	pea $F8FB.w		; F4 FB F8
	inc $00.b,X		; F6 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	rts		; 60

	bmi -32.b		; 30 E0
	bpl -32.b		; 10 E0
	jsr ($6C00.w,X)		; FC 00 6C
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	brk $D0.b		; 00 D0
	cpx #$10F8.w		; E0 F8 10
	dey		; 88
	bra 124.b		; 80 7C
	php		; 08
	sty $60.b,X		; 94 60
	inc $00.b		; E6 00
	ror A		; 6A
	bit $3D.b		; 24 3D
	asl $00E0.w		; 0E E0 00
	bpl   0.b		; 10 00
	bra 112.b		; 80 70
	php		; 08
	bra  96.b		; 80 60
	php		; 08
	brk $18.b		; 00 18
	bit $10.b		; 24 10
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($22.b,X)		; 61 22
	adc $20.b,S		; 63 20
	adc ($11.b,X)		; 61 11
	adc ($10.b),Y		; 71 10
	bmi  24.b		; 30 18
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	and $001C21.l,X		; 3F 21 1C 00
	ora $202E01.l,X		; 1F 01 2E 20
	ora $000700.l		; 0F 00 07 00
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	tya		; 98
	trb $FA80.w		; 1C 80 FA
	trb $FC7A.w		; 1C 7A FC
	inc $CE00.w,X		; FE 00 CE
	jmp $00FE.w		; 4C FE 00
	eor $80E026.l,X		; 5F 26 E0 80
	rts		; 60

	brk $1C.b		; 00 1C
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	bmi   0.b		; 30 00
	brk $26.b		; 00 26
	brk $07.b		; 00 07
	clc		; 18
	ora $180F18.l		; 0F 18 0F 18
	ora $18.b,S		; 03 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy #$4070.w		; C0 70 40
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	rti		; 40

	sei		; 78
	bpl  28.b		; 10 1C
	cpx $06.b		; E4 06
	adc ($03.b)		; 72 03
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $A0.b		; 00 A0
	jsr $08E8.w		; 20 E8 08
	sed		; F8
	brk $FC.b		; 00 FC
	brk $0C.b		; 00 0C
	cpy #$D054.w		; C0 54 D0
	eor ($D9.b)		; 52 D9
	jsl $FF01F6.l		; 22 F6 01 FF
	ora $0876.w		; 0D 76 08
	bit $03.b,X		; 34 03
	trb $3F3F.w		; 1C 3F 3F
	and $2F2F2F.l		; 2F 2F 2F 2F
	eor #$6449.w		; 49 49 64
	stz $22.b		; 64 22
	jsl $070007.l		; 22 07 00 07
	php		; 08
	cpy $06.b		; C4 06
	.db $62, $0B, $02		; 62 0B 02
	ora [$04.b]		; 07 04
	lda [$2D.b]		; A7 2D
	adc $6B9E20.l,X		; 7F 20 9E 6B
	ldx $B5.b		; A6 B5
	jmp $F8F8.w		; 4C F8 F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	sei		; 78
	sei		; 78
	bra -128.b		; 80 80
	sta ($D0.b),Y		; 91 D0
	lda $3320.w,Y		; B9 20 33
	rti		; 40

	tax		; AA
	sbc $56FFAF.l,X		; FF AF FF 56
	inc $CF97.w		; EE 97 CF
	tya		; 98
	cmp [$C8.b]		; C7 C8
	bit $E0.b		; 24 E0
	sty $E0.b		; 84 E0
	lsr $042A.w,X		; 5E 2A 04
	rol A		; 2A
	tsb $55.b		; 04 55
	bpl -76.b		; 10 B4
	bmi -72.b		; 30 B8
	sec		; 38
	sec		; 38
	sec		; 38
	tya		; 98
	cli		; 58
	rti		; 40

	brk $28.b		; 00 28
	cpx $CCC8.w		; EC C8 CC
	php		; 08
	tsb $FCF8.w		; 0C F8 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07070F.l		; 0F 0F 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $F8.b,X		; B4 F8
	sed		; F8
	sbc $FF7A.w,X		; FD 7A FF
	jsr ($7CFE.w,X)		; FC FE 7C
	adc $173F23.l,X		; 7F 23 3F 17
	ora $870F0D.l,X		; 1F 0D 0F 87
	adc [$72.b],Y		; 77 72
	plx		; FA
	sec		; 38
	sed		; F8
	lda $7C7D.w,Y		; B9 7D 7C
	brk $21.b		; 00 21
	ora $0C0F11.l,X		; 1F 11 0F 0C
	ora $FE.b,S		; 03 FE
	sbc $F9FE.w,X		; FD FE F9
	xce		; FB
	sbc ($FD.b)		; F2 FD
	pea $65FD.w		; F4 FD 65
	inc $F6AA.w,X		; FE AA F6
	eor ($F7.b)		; 52 F7
	eor $79.b,X		; 55 79
	cpx $68B9.w		; EC B9 68
	adc ($94.b)		; 72 94
	stz $D2.b,X		; 74 D2
	and $62.b		; 25 62
	tax		; AA
	and ($52.b,X)		; 21 52
	ora #$0855.w		; 09 55 08
	stz $4460.w		; 9C 60 44
	clv		; B8
	tax		; AA
	jmp.w [$EE55]		; DC 55 EE
	plb		; AB
	ror $F5.b,X		; 76 F5
	tsx		; BA
	phy		; 5A
	bit $5C6E.w,X		; 3C 6E 5C
	rts		; 60

	brk $B8.b		; 00 B8
	brk $DC.b		; 00 DC
	brk $EE.b		; 00 EE
	brk $76.b		; 00 76
	brk $BA.b		; 00 BA
	brk $3C.b		; 00 3C
	bra  92.b		; 80 5C
	bra 115.b		; 80 73
	bpl  61.b		; 10 3D
	cop $25.b		; 02 25
	asl $1E2D.w,X		; 1E 2D 1E
	adc $B51E.w		; 6D 1E B5
	rol A		; 2A
	ply		; 7A
	ldy #$00F2.w		; A0 F2 00
	bpl  12.b		; 10 0C
	cop $00.b		; 02 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $2A.b		; 00 2A
	rti		; 40

	ldy #$0000.w		; A0 00 00
	brk $A8.b		; 00 A8
	bcc -12.b		; 90 F4
	sec		; 38
	tsx		; BA
	jmp ($305E.w,X)		; 7C 5E 30
	and ($00.b,S),Y		; 33 00
	ora $040D0A.l,X		; 1F 0A 0D 04
	asl $00.b		; 06 00
	bcc  64.b		; 90 40
	sec		; 38
	brk $7C.b		; 00 7C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	tsb $000A.w		; 0C 0A 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	jmp $602EC0.l		; 5C C0 2E 60
	ora [$30.b],Y		; 17 30
	phd		; 0B
	clc		; 18
	ora $0C.b		; 05 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	and $001F00.l,X		; 3F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	cpx #$5038.w		; E0 38 50
	clc		; 18
	ldy #$808C.w		; A0 8C 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$D020.w		; E0 20 D0
	bpl -32.b		; 10 E0
	brk $78.b		; 00 78
	php		; 08
	asl $7DC8.w		; 0E C8 7D
	asl $5D.b		; 06 5D
	rol $112F.w,X		; 3E 2F 11
	sec		; 38
	php		; 08
	ora [$00.b],Y		; 17 00
	ora $0E06.w,Y		; 19 06 0E
	brk $30.b		; 00 30
	brk $06.b		; 00 06
	brk $3E.b		; 00 3E
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	ora [$00.b]		; 07 00
	php		; 08
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $7F3E.w,X		; 3E 3E 7F
	adc $6E7F7F.l,X		; 7F 7F 7F 6E
	ror $7E7A.w,X		; 7E 7A 7E
	ldy $00FC.w,X		; BC FC 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $55.b		; 00 55
	rol A		; 2A
	adc $306E2A.l,X		; 7F 2A 6E 30
	.db $62, $3C, $8C		; 62 3C 8C
	bvs   3.b		; 70 03
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	asl $13.b		; 06 13
	ora $030E.w		; 0D 0E 03
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $0300.w		; 0D 00 03
	brk $0D.b		; 00 0D
	asl $1F.b		; 06 1F
	ora $0D1B.w		; 0D 1B 0D
	ora $3B0F13.l		; 0F 13 0F 3B
	ora $E62779.l,X		; 1F 79 27 E6
	eor ($C1.b,X)		; 41 C1
	asl $00.b		; 06 00
	ora $0D00.w		; 0D 00 0D
	brk $03.b		; 00 03
	brk $13.b		; 00 13
	bpl  33.b		; 10 21
	jsr $4058.w		; 20 58 40
	ldx $F780.w,Y		; BE 80 F7
	cmp $F3.b,X		; D5 F3
	cmp ($F3.b),Y		; D1 F3
	cmp ($F3.b)		; D2 F3
	cmp ($F1.b)		; D2 F1
	bne -15.b		; D0 F1
	cmp ($F1.b),Y		; D1 F1
	ora ($BF.b),Y		; 11 BF
	cpy #$08D5.w		; C0 D5 08
	cmp ($0C.b),Y		; D1 0C
	cmp ($0C.b)		; D2 0C
	cmp ($0C.b)		; D2 0C
	bne  14.b		; D0 0E
	cmp ($0E.b),Y		; D1 0E
	ora ($0E.b),Y		; 11 0E
	rti		; 40

	rti		; 40

	rol $2C.b,X		; 36 2C
	trb $8812.w		; 1C 12 88
	stx $88.b		; 86 88
	stx $98.b		; 86 98
	stx $1EF8.w		; 8E F8 1E
	sed		; F8
	jmp ($8C88.w,X)		; 7C 88 8C
	bit $10C0.w		; 2C C0 10
	cpx #$7484.w		; E0 84 74
	sty $74.b		; 84 74
	sty $64.b		; 84 64
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	and $7F7B3F.l,X		; 3F 3F 7B 7F
	jmp ($F87C.w,X)		; 7C 7C F8
	sed		; F8
	beq -16.b		; F0 F0
	beq   0.b		; F0 00
	ora $1E2D00.l,X		; 1F 00 2D 1E
	and $5B1E.w,Y		; 39 1E 5B
	bit $307C.w,X		; 3C 7C 30
	tay		; A8
	bvs -16.b		; 70 F0
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bvs  -4.b		; 70 FC
	tsb $36.b		; 04 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $003B.w,X		; 3D 3B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	brk $FD.b		; 00 FD
	cmp ($DD.b,X)		; C1 DD
	sta ($8F.b,X)		; 81 8F
	txy		; 9B
	ora ($BB.b,X)		; 01 BB
	brk $DF.b		; 00 DF
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	cop $06.b		; 02 06
	eor $201F20.l,X		; 5F 20 1F 20
	adc $10.b,X		; 75 10
	eor $0018.w,X		; 5D 18 00
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	beq -79.b		; F0 B1
	lda ($FF.b,X)		; A1 FF
	inc $DE.b,X		; F6 DE
	cld		; D8
	plx		; FA
	inc $FF6D.w,X		; FE 6D FF
	plx		; FA
	xce		; FB
	sed		; F8
	bit $E050.w,X		; 3C 50 E0
	lda ($CE.b,X)		; A1 CE
	dec $E0.b,X		; D6 E0
	eor $A9E0.w,Y		; 59 E0 A9
	bvs  72.b		; 70 48
	bcs -52.b		; B0 CC
	bit $1B.b,X		; 34 1B
	and ($B8.b,S),Y		; 33 B8
	brk $FF.b		; 00 FF
	tya		; 98
	adc $5EB7DF.l,X		; 7F DF B7 5E
	lda ($5D.b)		; B2 5D
	inc $CF81.w,X		; FE 81 CF
	sed		; F8
	xba		; EB
	jsr ($0000.w,X)		; FC 00 00
	tya		; 98
	brk $DF.b		; 00 DF
	brk $5E.b		; 00 5E
	brk $5D.b		; 00 5D
	brk $81.b		; 00 81
	brk $08.b		; 00 08
	pea $F4C8.w		; F4 C8 F4
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	bvs -32.b		; 70 E0
	bvc -32.b		; 50 E0
	cpx #$E0C0.w		; E0 C0 E0
	brk $9C.b		; 00 9C
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $B7.b		; 00 B7
	cmp $B3.b,X		; D5 B3
	cmp ($B3.b),Y		; D1 B3
	cmp ($B3.b),Y		; D1 B3
	cmp ($B1.b)		; D2 B1
	bne -79.b		; D0 B1
	cmp ($B0.b),Y		; D1 B0
	bne -77.b		; D0 B3
	bne -43.b		; D0 D5
	php		; 08
	cmp ($0C.b),Y		; D1 0C
	cmp ($0C.b),Y		; D1 0C
	cmp ($0C.b)		; D2 0C
	bne  14.b		; D0 0E
	cmp ($0E.b),Y		; D1 0E
	bne  15.b		; D0 0F
	bne  12.b		; D0 0C
	trb $0C10.w		; 1C 10 0C
	php		; 08
	php		; 08
	asl $90.b		; 06 90
	stx $9EB8.w		; 8E B8 9E
	sed		; F8
	rol $7EF8.w,X		; 3E F8 7E
	cpy $104E.w		; CC 4E 10
	cpx #$F008.w		; E0 08 F0
	tsb $F4.b		; 04 F4
	sty $846C.w		; 8C 6C 84
	mvp $04,$04		; 44 04 04
	tsb $04.b		; 04 04
	bmi   0.b		; 30 00
	ply		; 7A
	cmp $1A.b,S		; C3 1A
	cmp $1A.b,S		; C3 1A
	eor $3A.b,S		; 43 3A
	adc $3E.b,S		; 63 3E
	adc $1E.b,S		; 63 1E
	adc $1C.b,S		; 63 1C
	and ($0C.b,X)		; 21 0C
	and ($3C.b,X)		; 21 3C
	brk $7C.b		; 00 7C
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $001E.w		; 20 1E 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $18.b		; 00 18
	brk $FF.b		; 00 FF
	ora [$78.b],Y		; 17 78
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $B0.b		; 00 B0
	ora [$6B.b]		; 07 6B
	lda [$F7.b],Y		; B7 F7
	eor $FF3FDF.l		; 4F DF 3F FF
	ora $FFFFBF.l,X		; 1F BF FF FF
	sbc $FBFFB7.l,X		; FF B7 FF FB
	sbc $4507B0.l,X		; FF B0 07 45
	phd		; 0B
	ora [$3B.b]		; 07 3B
	ora $DB3F1B.l,X		; 1F 1B 3F DB
	sbc $1B.b,X		; F5 1B
	and $DB.b,X		; 35 DB
	inx		; E8
	ora [$C9.b],Y		; 17 C9
	sbc $CD3CA7.l,X		; FF A7 3C CD
	eor ($0D.b)		; 52 0D
	lsr $B5.b,X		; 56 B5
	rol $1D56.w,X		; 3E 56 1D
	ldx $8D.b		; A6 8D
	eor ($DD.b,S),Y		; 53 DD
	ora #$4416.w		; 09 16 44
	php		; 08
	jsl $00A600.l		; 22 00 A6 00
	dec $00.b		; C6 00
	sbc $00.b		; E5 00
	adc $00.b,X		; 75 00
	and $00.b		; 25 00
	ora $FD.b,S		; 03 FD
	ora [$09.b]		; 07 09
	ora ($0E.b,X)		; 01 0E
	ora $0F.b,S		; 03 0F
	asl $0E.b		; 06 0E
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	pea $BC08.w		; F4 08 BC
	sei		; 78
	jmp $087A20.l		; 5C 20 7A 08
	rol $1D10.w,X		; 3E 10 1D
	tsb $0F.b		; 04 0F
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $78.b		; 00 78
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	tsb $10.b		; 04 10
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	dec $3C.b		; C6 3C
	ror $08.b		; 66 08
	adc $16.b,S		; 63 16
	and ($0C.b,S),Y		; 33 0C
	ora $1903.w,Y		; 19 03 19
	asl $0C.b		; 06 0C
	ora ($04.b,X)		; 01 04
	bit $1804.w,X		; 3C 04 18
	brk $3E.b		; 00 3E
	jsl $07000C.l		; 22 0C 00 07
	ora ($0E.b,X)		; 01 0E
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	tsb $0C.b		; 04 0C
	php		; 08
	clc		; 18
	brk $10.b		; 00 10
	ora $90.b,S		; 03 90
	bpl -16.b		; 10 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $02B00F.l		; 0F 0F B0 02
	cpx #$F901.w		; E0 01 F9
	ora ($C3.b,X)		; 01 C3
	ora $00.b,S		; 03 00
	bpl   0.b		; 10 00
	eor $373F05.l		; 4F 05 3F 37
	xba		; EB
	jsr ($FEFC.w,X)		; FC FC FE
	inc $FEFE.w,X		; FE FE FE
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $D0F8F8.l,X		; FF F8 F8 D0
	bne  53.b		; D0 35
	jsr $7D7F.w		; 20 7F 7D
	ror $4A6D.w		; 6E 6D 4A
	cmp $FA7D.w		; CD 7D FA
	sbc $5FFA.w,X		; FD FA 5F
	sbc $7F3F.w,Y		; F9 3F 7F
	sbc $3C49FF.l,X		; FF FF 49 3C
	eor #$493C.w		; 49 3C 49
	bit $387A.w,X		; 3C 7A 38
	eor ($38.b)		; 52 38
	rti		; 40

	and $18B7.w,Y		; 39 B7 18
	nop		; EA
	ora $0602.w,X		; 1D 02 06
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	phk		; 4B
	clv		; B8
	bvs -56.b		; 70 C8
	bmi  48.b		; 30 30
	brk $40.b		; 00 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	pha		; 48
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	sbc $FDFEFD.l		; EF FD FE FD
	sbc $F9FDFA.l,X		; FF FA FD F9
	jsr ($FCF8.w,X)		; FC F8 FC
	pea $72BE.w		; F4 BE 72
	dec $E92A.w,X		; DE 2A E9
	pea $ECF9.w		; F4 F9 EC
	plx		; FA
	inx		; E8
	cmp $A8EA.w,Y		; D9 EA A8
	stp		; DB
	cpx $13.b		; E4 13
	jsl $210AD1.l		; 22 D1 0A 21
	.db $62, $9C, $DA		; 62 9C DA
	cpx $76.b		; E4 76
	sed		; F8
	tsx		; BA
	jmp ($BEDD.w,X)		; 7C DD BE
	eor $5C6E3E.l,X		; 5F 3E 6E 5C
	rol $2C.b,X		; 36 2C
	stz $E400.w		; 9C 00 E4
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	brk $3E.b		; 00 3E
	bra  92.b		; 80 5C
	bra  44.b		; 80 2C
	cpy #$03FC.w		; C0 FC 03
	sbc ($FB.b,X)		; E1 FB
	and ($3B.b),Y		; 31 3B
	ora ($1B.b),Y		; 11 1B
	ora ($1B.b,X)		; 01 1B
	jsr $203B.w		; 20 3B 20
	and $3920.w,Y		; 39 20 39
	ora ($01.b,X)		; 01 01
	bpl  16.b		; 10 10
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	bpl -47.b		; 10 D1
	ora ($D0.b),Y		; 11 D0
	bpl -48.b		; 10 D0
	bpl -124.b		; 10 84
	stx $64.b		; 86 64
	asl $E4.b		; 06 E4
	asl $F4.b		; 06 F4
	asl $F4.b		; 06 F4
	asl $74.b		; 06 74
	asl $74.b		; 06 74
	asl $F4.b		; 06 F4
	stx $78.b		; 86 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	cpx #$7310.w		; E0 10 73
	ora ($23.b,X)		; 01 23
	ora ($3B.b),Y		; 11 3B
	asl $3F.b,X		; 16 3F
	cop $1F.b		; 02 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $0C0C1F.l,X		; 1F 1F 0C 0C
	trb $041C.w		; 1C 1C 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	dec $04.b		; C6 04
	cmp [$08.b]		; C7 08
	eor $3A.b,S		; 43 3A
	adc $1D.b,S		; 63 1D
	adc ($0E.b,X)		; 61 0E
	jsr $301E.w		; 20 1E 30
	ora [$10.b]		; 07 10
	bit $7A04.w,X		; 3C 04 7A
	.db $42, $3E		; 42 3E
	cop $1D.b		; 02 1D
	ora ($3E.b,X)		; 01 3E
	jsr $001F.w		; 20 1F 00
	ora $000F00.l		; 0F 00 0F 00
	bra  48.b		; 80 30
	rts		; 60

	bmi -64.b		; 30 C0
	bcc  32.b		; 90 20
	dey		; 88
	rti		; 40

	iny		; C8
	pei ($18.b)		; D4 18
	ldx $5E40.w,Y		; BE 40 5E
	bit $20E0.w,X		; 3C E0 20
	cpy #$6000.w		; C0 00 60
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $3C.b		; 00 3C
	brk $42.b		; 00 42
	cmp $02.b,S		; C3 02
	cmp $02.b,S		; C3 02
	cmp $02.b,S		; C3 02
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	.db $42, $3D		; 42 3D
	ora ($7D.b,X)		; 01 7D
	eor ($7C.b,X)		; 41 7C
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $1E.b		; 00 1E
	bmi 125.b		; 30 7D
	asl $7EBD.w		; 0E BD 7E
	sbc $266700.l,X		; FF 00 67 26
	adc $265F00.l,X		; 7F 00 5F 26
	adc ($10.b,S),Y		; 73 10
	brk $00.b		; 00 00
	asl $7E00.w		; 0E 00 7E
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	clc		; 18
	brk $00.b		; 00 00
	rol $00.b		; 26 00
	bpl  12.b		; 10 0C
	bne  28.b		; D0 1C
	inx		; E8
	tsb $0670.w		; 0C 70 06
	pea $3886.w		; F4 86 38
	.db $82, $78, $C3		; 82 78 C3
	asl $2C43.w,X		; 1E 43 2C
	adc ($E8.b,X)		; 61 E8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $1E.b		; 00 1E
	brk $48.b		; 00 48
	cpy $CC48.w		; CC 48 CC
	bit $E6.b		; 24 E6
	bit $E6.b		; 24 E6
	bit $67.b		; 24 67
	jsr $3263.w		; 20 63 32
	adc ($32.b,S),Y		; 73 32
	adc ($30.b,S),Y		; 73 30
	brk $30.b		; 00 30
	brk $58.b		; 00 58
	rti		; 40

	cli		; 58
	rti		; 40

	inc A		; 1A
	cop $1E.b		; 02 1E
	cop $0C.b		; 02 0C
	brk $0C.b		; 00 0C
	brk $20.b		; 00 20
	adc ($20.b,X)		; 61 20
	adc ($20.b,X)		; 61 20
	adc ($22.b,X)		; 61 22
	adc $22.b,S		; 63 22
	adc $20.b,S		; 63 20
	adc $20.b,S		; 63 20
	adc $20.b,S		; 63 20
	.db $62, $1E, $00		; 62 1E 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $1C.b		; 02 1C
	brk $20.b		; 00 20
	.db $62, $24, $66		; 62 24 66
	bit $66.b		; 24 66
	jsr $2066.w		; 20 66 20
	stz $20.b		; 64 20
	stz $28.b		; 64 28
	jmp ($6C28.w)		; 6C 28 6C
	trb $1800.w		; 1C 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	sei		; 78
	ldy $78.b,X		; B4 78
	ldy $78.b,X		; B4 78
	pei ($A8.b)		; D4 A8
	inx		; E8
	bra -56.b		; 80 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $A8.b		; 00 A8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	inx		; E8
	ldy $C440.w		; AC 40 C4
	brk $6E.b		; 00 6E
	bit $76.b		; 24 76
	php		; 08
	tsa		; 3B
	ora ($33.b)		; 12 33
	bpl  30.b		; 10 1E
	ora ($E8.b,X)		; 01 E8
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
	sec		; 38
	bit $10.b		; 24 10
	php		; 08
	brk $12.b		; 00 12
	tsb $10.b		; 04 10
	tsb $0001.w		; 0C 01 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $0D.b		; 04 0D
	ora #$121A.w		; 09 1A 12
	bmi   4.b		; 30 04
	jsr $602F.w		; 20 2F 60
	rol $0060.w		; 2E 60 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	ora [$0F.b]		; 07 0F
	ora $1F1F1F.l		; 0F 1F 1F 1F
	ora $001F1F.l,X		; 1F 1F 1F 00
	cpx #$FC60.w		; E0 60 FC
	sty $00BE.w		; 8C BE 00
	lsr $23.b		; 46 23
	and $19665B.l,X		; 3F 5B 66 19
	jsl $00602D.l		; 22 2D 60 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	bvc  -8.b		; 50 F8
	sed		; F8
	cmp ($C0.b,X)		; C1 C0
	stz $DE84.w		; 9C 84 DE
.INDEX 16
	rep #$9E		; C2 9E
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $2F.b		; 00 2F
	ora [$45.b],Y		; 17 45
	tsa		; 3B
	sta $007B.w,X		; 9D 7B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $39.b		; 00 39
	cop $79.b		; 02 79
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $7D7C83.l,X		; FF 83 7C 7D
	inc $FEFF.w,X		; FE FF FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FE0000.l,X		; FF 00 00 FE
	bmi  -2.b		; 30 FE
	jmp ($60FE.w,X)		; 7C FE 60
	brk $5B.b		; 00 5B
	jsr $1B44.w		; 20 44 1B
	mvp $FF,$3B		; 44 3B FF
	brk $13.b		; 00 13
	pla		; 68
	php		; 08
	bit $84.b,X		; 34 84
	dec A		; 3A
	brk $00.b		; 00 00
	jsr $1B00.w		; 20 00 1B
	jsr $003B.w		; 20 3B 00
	brk $00.b		; 00 00
	pla		; 68
	sty $34.b		; 84 34
	cmp $3A.b,S		; C3 3A
	eor ($00.b,X)		; 41 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $88.b		; 00 88
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	ora ($04.b),Y		; 11 04
	and ($04.b),Y		; 31 04
	and ($1E.b),Y		; 31 1E
	and ($1E.b,S),Y		; 33 1E
	and ($08.b,S),Y		; 33 08
	and $08.b,S		; 23 08
	and $09.b,S		; 23 09
	and $0F.b,S		; 23 0F
	ora ($1E.b,X)		; 01 1E
	bpl  30.b		; 10 1E
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $1D.b		; 02 1D
	brk $06.b		; 00 06
	bra  15.b		; 80 0F
	asl $0B.b		; 06 0B
	ora [$0C.b]		; 07 0C
	ora $1F.b,S		; 03 1F
	trb $3E3E.w		; 1C 3E 3E
	pei ($FC.b)		; D4 FC
	sed		; F8
	sed		; F8
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	trb $0C.b		; 14 0C
	rol A		; 2A
	trb $38C4.w		; 1C C4 38
	pla		; 68
	beq -113.b		; F0 8F
	bne -63.b		; D0 C1
	ora $849F47.l,X		; 1F 47 9F 84
	trb $1808.w		; 1C 08 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	asl $880E.w		; 0E 0E 88
	php		; 08
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $2CD710.l,X		; 1F 10 D7 2C
	rtl		; 6B

	tya		; 98
	phb		; 8B
	sed		; F8
	phk		; 4B
	sei		; 78
	ora ($38.b,X)		; 01 38
	and $3C.b		; 25 3C
	cop $3E.b		; 02 3E
	rti		; 40

	ror $2B.b		; 66 2B
	php		; 08
	sta [$90.b],Y		; 97 90
	eor [$50.b],Y		; 57 50
	sta [$00.b]		; 87 00
	sbc $00C328.l		; EF 28 C3 00
	sbc $24.b		; E5 24
	sta $02.b,S		; 83 02
	dey		; 88
	stx $8604.w		; 8E 04 86
	rti		; 40

	cmp $02.b,S		; C3 02
	cmp $00.b,S		; C3 00
	eor ($20.b,X)		; 41 20
	adc ($00.b,X)		; 61 00
	adc ($11.b,X)		; 61 11
	and ($74.b),Y		; 31 74
	tsb $F8.b		; 04 F8
	bra  62.b		; 80 3E
	cop $7C.b		; 02 7C
	rti		; 40

	rol $1E00.w,X		; 3E 00 1E
	brk $3F.b		; 00 3F
	and ($0E.b,X)		; 21 0E
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	jsr $D030.w		; 20 30 D0
	clc		; 18
	inx		; E8
	tsb $0674.w		; 0C 74 06
	tsx		; BA
	sta $4C.b,S		; 83 4C
	cmp ($00.b,X)		; C1 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $BF.b		; 00 BF
	sta ($34.b,X)		; 81 34
	plp		; 28
	ply		; 7A
	jmp.w [$B87E]		; DC 7E B8
	tyx		; BB
	.db $62, $A7, $45		; 62 A7 45
	ror $3532.w,X		; 7E 32 35
	php		; 08
	ora $08.b,X		; 15 08
	iny		; C8
	brk $9C.b		; 00 9C
	bra  56.b		; 80 38
	brk $62.b		; 00 62
	tsb $45.b		; 04 45
	clc		; 18
	and ($01.b)		; 32 01
	php		; 08
	cop $08.b		; 02 08
	cop $F0.b		; 02 F0
	clc		; 18
	rts		; 60

	ora $4C8382.l		; 0F 82 83 4C
	cpy #$E027.w		; C0 27 E0
	ora ($70.b,S),Y		; 13 70
	ora $3C.b		; 05 3C
	cop $0E.b		; 02 0E
	cpx #$F800.w		; E0 00 F8
	php		; 08
	adc $BF01.w,X		; 7D 01 BF
	bra  95.b		; 80 5F
	rti		; 40

	and $080B20.l		; 2F 20 0B 08
	ora $04.b		; 05 04
	and ($03.b)		; 32 03
	plp		; 28
	cop $2C.b		; 02 2C
	php		; 08
	stz $50.b,X		; 74 50
	jmp ($F868.w,X)		; 7C 68 F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq  12.b		; F0 0C
	brk $04.b		; 00 04
	bpl   8.b		; 10 08
	bpl  80.b		; 10 50
	php		; 08
	pha		; 48
	jsr $70A0.w		; 20 A0 70
	beq  96.b		; F0 60
	bpl -32.b		; 10 E0
	ora $1F1F0F.l		; 0F 0F 1F 1F
	rol $3E3E.w,X		; 3E 3E 3E
	rol $3E3E.w,X		; 3E 3E 3E
	rol $1E3E.w,X		; 3E 3E 1E
	asl $0E0E.w,X		; 1E 0E 0E
	ora $0E1106.l		; 0F 06 11 0E
	rol $3E1C.w		; 2E 1C 3E
	trb $1836.w		; 1C 36 18
	rol $1218.w		; 2E 18 12
	tsb $000E.w		; 0C 0E 00
	bit $60.b		; 24 60
	brk $21.b		; 00 21
	ora ($30.b)		; 12 30
	tsb $11.b		; 04 11
	ora [$10.b]		; 07 10
	php		; 08
	ora $0F05.w,Y		; 19 05 0F
	ora $07.b,S		; 03 07
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $06060F.l		; 0F 0F 06 06
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	adc $770DE3.l,X		; 7F E3 0D 77
	adc [$D7.b]		; 67 D7
	and $77.b,X		; 35 77
	phb		; 8B
	sbc $81EB01.l,X		; FF 01 EB 81
	cmp $00.b,S		; C3 00
	.db $82, $3F, $20		; 82 3F 20
	ldy $1F93.w		; AC 93 1F
	brk $8C.b		; 00 8C
	sta $03.b,S		; 83 03
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	xce		; FB
	adc $FD7A.w,X		; 7D 7A FD
	cmp $5DDF5D.l,X		; DF 5D DF 5D
	cmp [$45.b]		; C7 45
	tas		; 1B
	sta $C3FF.w,X		; 9D FF C3
	cmp $007D3F.l		; CF 3F 7D 00
	jsr ($5C01.w,X)		; FC 01 5C
	and ($5C.b,X)		; 21 5C
	and ($45.b,X)		; 21 45
	and $619D.w,Y		; 39 9D 61
	cmp $03.b,S		; C3 03
	ora [$3F.b]		; 07 3F
	adc $FFFDFF.l,X		; 7F FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda ($FF.b,S),Y		; B3 FF
	ror $D3FF.w		; 6E FF D3
	sbc ($E3.b)		; F2 E3
	beq 125.b		; F0 7D
	inc $7EFD.w,X		; FE FD 7E
	sbc $7DB37D.l,X		; FF 7D B3 7D
	.db $82, $7D, $4E		; 82 7D 4E
	lda ($52.b),Y		; B1 52
	lda ($E0.b,X)		; A1 E0
	bra 100.b		; 80 64
	.db $82, $FB, $A4		; 82 FB A4
	pei ($9B.b)		; D4 9B
	cmp $23E20C.l		; CF 0C E2 23
	lda ($51.b),Y		; B1 51
	cld		; D8
	pla		; 68
	pea $026C.w		; F4 6C 02
	sta $8024.w,Y		; 99 24 80
	tas		; 1B
	ldy #$300C.w		; A0 0C 30
	and $1C.b,S		; 23 1C
	eor ($0E.b),Y		; 51 0E
	pla		; 68
	ora [$6C.b]		; 07 6C
	ora $88.b,S		; 03 88
	bvs  -8.b		; 70 F8
	brk $EC.b		; 00 EC
	beq 100.b		; F0 64
	cpx #$789C.w		; E0 9C 78
	cpx $98.b		; E4 98
	cli		; 58
	rts		; 60

	sec		; 38
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	clc		; 18
	sei		; 78
	brk $98.b		; 00 98
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$2309.w		; C0 09 23
	ora ($23.b,X)		; 01 23
	and ($73.b),Y		; 31 73
	and $67.b,X		; 35 67
	ora ($45.b),Y		; 11 45
	bpl  68.b		; 10 44
	pha		; 48
	cpy $8800.w		; CC 00 88
	ora $1D00.w,X		; 1D 00 1D
	brk $0D.b		; 00 0D
	brk $19.b		; 00 19
	brk $39.b		; 00 39
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $E8.b		; 00 E8
	sed		; F8
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	cpx #$80E0.w		; E0 E0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	beq -80.b		; F0 B0
	cpx #$E090.w		; E0 90 E0
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	jsr $6101.w		; 20 01 61
	brk $61.b		; 00 61
	jsl $101F63.l		; 22 63 1F 10
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	rol $3F20.w,X		; 3E 20 3F
	and ($1C.b,X)		; 21 1C
	brk $41.b		; 00 41
	adc $00.b,S		; 63 00
	adc $00.b,S		; 63 00
	eor ($80.b,X)		; 41 80
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cmp ($41.b,X)		; C1 41
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	dec $00.b		; C6 00
	sty $40.b		; 84 40
	cpy $00.b		; C4 00
	dec $04.b		; C6 04
	eor [$22.b]		; 47 22
	adc $01.b,S		; 63 01
	adc ($10.b,X)		; 61 10
	bmi  60.b		; 30 3C
	tsb $78.b		; 04 78
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	mvp $02,$3A		; 44 3A 02
	ora $3E01.w,X		; 1D 01 3E
	jsr $000F.w		; 20 0F 00
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	phd		; 0B
	ora [$0E.b]		; 07 0E
	ora ($1B.b,X)		; 01 1B
	cop $37.b		; 02 37
	clc		; 18
	jmp ($0000.w,X)		; 7C 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	tsb $18.b		; 04 18
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	sbc $FCFFFF.l,X		; FF FF FF FC
	sbc $FEFDF3.l,X		; FF F3 FD FE
	sbc $401F07.l,X		; FF 07 1F 40
	trb $E0.b		; 14 E0
	and ($CF.b,S),Y		; 33 CF
	and $F0DFAC.l,X		; 3F AC DF F0
	ora $FEEED1.l		; 0F D1 EE FE
	brk $E0.b		; 00 E0
	brk $E3.b		; 00 E3
	ora $C0.b,S		; 03 C0
	brk $E3.b		; 00 E3
	beq  85.b		; F0 55
	plx		; FA
	cmp $89DA.w		; CD DA 89
	stx $09.b,Y		; 96 09
	inc $79.b,X		; F6 79
	inc $49.b,X		; F6 49
	dec $4F.b		; C6 4F
	cpy #$8040.w		; C0 40 80
	.db $42, $80		; 42 80
	ldx #$6620.w		; A2 20 66
	rts		; 60

	asl $00.b		; 06 00
	asl $00.b		; 06 00
	rol $00.b,X		; 36 00
	bmi   0.b		; 30 00
	ldy $7674.w		; AC 74 76
	tsx		; BA
	phk		; 4B
	lda $D635.w		; AD 35 D6
	and $D2.b,S		; 23 D2
	phy		; 5A
	xba		; EB
	eor ($E9.b),Y		; 51 E9
	adc $74F4.w		; 6D F4 74
	ora $BA.b,S		; 03 BA
	ora ($AD.b,X)		; 01 AD
	bpl -42.b		; 10 D6
	php		; 08
	cmp ($0C.b)		; D2 0C
	xba		; EB
	tsb $E9.b		; 04 E9
	asl $F4.b		; 06 F4
	cop $08.b		; 02 08
	brk $10.b		; 00 10
	php		; 08
	bpl  12.b		; 10 0C
	clv		; B8
	stz $9CB8.w		; 9C B8 9C
	inx		; E8
	bit $46C0.w		; 2C C0 46
	ldy $86.b,X		; B4 86
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	php		; 08
	inx		; E8
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bpl   0.b		; 10 00
	bit $7804.w,X		; 3C 04 78
	brk $00.b		; 00 00
	stx $44.b		; 86 44
	dec $00.b		; C6 00
	rep #$00		; C2 00
	.db $42, $20		; 42 20
	.db $62, $00, $62		; 62 00 62
	bpl  51.b		; 10 33
	cop $33.b		; 02 33
	jsr ($3884.w,X)		; FC 84 38
	brk $7C.b		; 00 7C
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $3C.b		; 00 3C
	jsr $020E.w		; 20 0E 02
	trb $0010.w		; 1C 10 00
	jsl $7D280F.l		; 22 0F 28 7D
	asl $5D.b		; 06 5D
	rol $007F.w,X		; 3E 7F 00
	adc [$26.b]		; 67 26
	adc $122F00.l,X		; 7F 00 2F 12
	trb $1000.w		; 1C 00 10
	brk $06.b		; 00 06
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	clc		; 18
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	sei		; 78
	bvc -20.b		; 50 EC
	jsr $8C52.w		; 20 52 8C
	eor $FE8E.w,X		; 5D 8E FE
	adc $2F1F6E.l		; 6F 6E 1F 2F
	asl $0E1D.w,X		; 1E 1D 0E
	bvc -128.b		; 50 80
	jsr $8C10.w		; 20 10 8C
	jsr $208E.w		; 20 8E 20
	adc $001F00.l		; 6F 00 1F 00
	asl $0E00.w,X		; 1E 00 0E
	brk $66.b		; 00 66
	tsb $7E.b		; 04 7E
	bmi 114.b		; 30 72
	tsb $7CBA.w		; 0C BA 7C
	tsx		; BA
	jmp ($F874.w,X)		; 7C 74 F8
	cpy $7430.w		; CC 30 74
	rti		; 40

	tsb $18.b		; 04 18
	bmi   0.b		; 30 00
	tsb $7C00.w		; 0C 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	bmi  96.b		; 30 60
	sec		; 38
	bcc -104.b		; 90 98
	eor #$26CC.w		; 49 CC 26
	sbc $0F.b		; E5 0F
	tsa		; 3B
	ora $0C1717.l		; 0F 17 17 0C
	cpx #$D020.w		; E0 20 D0
	bpl  96.b		; 10 60
	brk $B0.b		; 00 B0
	bra  25.b		; 80 19
	brk $13.b		; 00 13
	bpl   7.b		; 10 07
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $7478.w		; F4 78 74
	sed		; F8
	ror $EAF0.w,X		; 7E F0 EA
	bvs -72.b		; 70 B8
	rti		; 40

	cli		; 58
	bpl  88.b		; 10 58
	brk $38.b		; 00 38
	bpl 120.b		; 10 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	jsr $2000.w		; 20 00 20
	bpl   0.b		; 10 00
	plp		; 28
	brk $18.b		; 00 18
	brk $08.b		; 00 08
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
	brk $A0.b		; 00 A0
	bmi -64.b		; 30 C0
	clc		; 18
	bne  24.b		; D0 18
	beq  24.b		; F0 18
	cpx #$E80C.w		; E0 0C E8
	tsb $0CF8.w		; 0C F8 0C
	beq   6.b		; F0 06
	cpy #$F000.w		; C0 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jsr ($7404.w,X)		; FC 04 74
	asl $BC.b		; 06 BC
	stx $38.b		; 86 38
	.db $82, $58, $C3		; 82 58 C3
	rol $0CE3.w,X		; 3E E3 0C
	adc ($10.b,X)		; 61 10
	bmi   9.b		; 30 09
	sec		; 38
	sed		; F8
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	bra  62.b		; 80 3E
	cop $5C.b		; 02 5C
	rti		; 40

	and $000F21.l,X		; 3F 21 0F 00
	ora [$10.b],Y		; 17 10
	lda $4E81.w,X		; BD 81 4E
	cpy #$F017.w		; C0 17 F0
	ora #$0238.w		; 09 38 02
	asl $0700.w,X		; 1E 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ror $BF00.w,X		; 7E 00 BF
	bra  47.b		; 80 2F
	jsr $1017.w		; 20 17 10
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C1.b,X)		; 01 C1
	jsr $0060.w		; 20 60 00
	rts		; 60

	brk $60.b		; 00 60
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	ror $1F40.w,X		; 7E 40 1F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	ora $000F00.l		; 0F 00 0F 00
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	stz $C6.b		; 64 C6
	bvs -58.b		; 70 C6
	eor $3FC3.w,X		; 5D C3 3F
	jmp ($5031.w)		; 6C 31 50
	and $000008.l		; 2F 08 00 00
	brk $00.b		; 00 00
	tsa		; 3B
	cop $3D.b		; 02 3D
	tsb $30.b		; 04 30
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	asl $1008.w		; 0E 08 10
	ora $03.b,S		; 03 03
	cop $FF.b		; 02 FF
	sbc $03.b,S		; E3 03
	and $C101.w,X		; 3D 01 C1
	cmp ($0F.b,X)		; C1 0F
	sbc $1D0F02.l,X		; FF 02 0F 1D
	ora [$03.b],Y		; 17 03
	brk $02.b		; 00 02
	ora ($FD.b,X)		; 01 FD
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($15.b,X)		; 01 15
	asl A		; 0A
	sbc $6D87.w,Y		; F9 87 6D
	wai		; CB
	sbc [$D5.b],Y		; F7 D5
	sbc [$E5.b],Y		; F7 E5
	plx		; FA
	inx		; E8
	xba		; EB
	sbc ($F5.b)		; F2 F5
	sed		; F8
	sbc $80FE.w,Y		; F9 FE 80
	brk $49.b		; 00 49
	bcc  85.b		; 90 55
	dey		; 88
	cpy $A8.b		; C4 A8
	cmp #$62A4.w		; C9 A4 62
	sty $C0.b,X		; 94 C0
	dec A		; 3A
	bcs 120.b		; B0 78
	tya		; 98
	dec $C0.b		; C6 C0
	sbc ($00.b)		; F2 00
	jsr ($00C0.w,X)		; FC C0 00
	ldy #$E040.w		; A0 40 E0
	rti		; 40

	rts		; 60

	cpy #$80C0.w		; C0 C0 80
	jmp ($3C44.w,X)		; 7C 44 3C
	bmi -64.b		; 30 C0
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $13.b		; 00 13
	asl $0E71.w		; 0E 71 0E
	lsr $2431.w		; 4E 31 24
	tas		; 1B
	and #$3116.w		; 29 16 31
	asl $1D2A.w		; 0E 2A 1D
	tad		; 5B
	and $000E.w,X		; 3D 0E 00
	asl $3100.w		; 0E 00 31
	brk $1B.b		; 00 1B
	brk $16.b		; 00 16
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	brk $3D.b		; 00 3D
	brk $3F.b		; 00 3F
	sbc $BF0FFF.l,X		; FF FF 0F BF
	eor ($BF.b,S),Y		; 53 BF
	eor $2F.b,X		; 55 2F
	dec $AD.b		; C6 AD
	cpy $ED.b		; C4 ED
	ldy $6D.b		; A4 6D
	lda #$F90E.w		; A9 0E F9
	ora [$0E.b]		; 07 0E
	eor ($02.b,S),Y		; 53 02
	eor $01.b,X		; 55 01
	dec $10.b		; C6 10
	cpy $12.b		; C4 12
	ldy $12.b		; A4 12
	lda #$6012.w		; A9 12 60
	cpx #$C0C0.w		; E0 C0 C0
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	jsr ($F543.w,X)		; FC 43 F5
	ora ($CD.b,S),Y		; 13 CD
	cpy $FB.b		; C4 FB
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	brk $12.b		; 00 12
	asl A		; 0A
	cmp $30.b,S		; C3 30
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $1E.b		; 02 1E
	phd		; 0B
	sed		; F8
	eor $007EC0.l,X		; 5F C0 7E 00
	sbc $FA01.w,X		; FD 01 FA
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $17.b		; 00 17
	bpl -65.b		; 10 BF
	bra  -1.b		; 80 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $131808.l		; 0F 08 18 13
	bmi  39.b		; 30 27
	rts		; 60

	phd		; 0B
	bvc  82.b		; 50 52
	cpx #$E020.w		; E0 20 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $1F1F3F.l,X		; 3F 3F 1F 1F
	ora $80001F.l,X		; 1F 1F 00 80
	bra -32.b		; 80 E0
	jsr $043C.w		; 20 3C 04
	asl $9A.b		; 06 9A
	ora $29.b,S		; 03 29
	ora $0B.b,S		; 03 0B
	eor [$0A.b],Y		; 57 0A
	lda $000000.l		; AF 00 00 00
	brk $C0.b		; 00 C0
	cpy #$F8F8.w		; C0 F8 F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $F8F8.w,X		; FE F8 F8
	bvc  80.b		; 50 50
	brk $00.b		; 00 00
	sta $00.b,S		; 83 00
	adc $EE80.w,X		; 7D 80 EE
	cpy $EC.b		; C4 EC
	cpy #$C038.w		; C0 38 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $C4.b		; 02 C4
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	sta [$08.b]		; 87 08
	asl $1C10.w		; 0E 10 1C
	jsr $0038.w		; 20 38 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	ply		; 7A
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bne  16.b		; D0 10
	cpx #$8020.w		; E0 20 80
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	brk $0C.b		; 00 0C
	ora $0D.b		; 05 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	cop $00.b		; 02 00
	bit $88.b		; 24 88
	lsr A		; 4A
	cpy $FA.b		; C4 FA
	tsb $78BD.w		; 0C BD 78
	tad		; 5B
	jsl $3C1477.l		; 22 77 14 3C
	ora $33.b,S		; 03 33
	bpl  -8.b		; 10 F8
	dey		; 88
	bit $00.b,X		; 34 00
	tsb $7800.w		; 0C 00 78
	cop $22.b		; 02 22
	tsb $14.b		; 04 14
	php		; 08
	ora $00.b,S		; 03 00
	bpl  12.b		; 10 0C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	bpl 112.b		; 10 70
	jsr $4160.w		; 20 60 41
	cmp ($02.b,X)		; C1 02
	sta $0B.b,S		; 83 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $202F10.l,X		; 1F 10 2F 20
	ora $003E00.l,X		; 1F 00 3E 00
	adc $4001.w,X		; 7D 01 40
	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	ora [$3F.b],Y		; 17 3F
	ora [$1E.b]		; 07 1E
	ora [$06.b]		; 07 06
	ora [$07.b]		; 07 07
	ora $09.b,S		; 03 09
	ora [$0D.b]		; 07 0D
	ora [$17.b]		; 07 17
	asl $0615.w		; 0E 15 06
	asl $07.b		; 06 07
	cop $07.b		; 02 07
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $1700.w		; 0E 00 17
	ora $7DBFA3.l,X		; 1F A3 BF 7D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFAFFF.l,X		; FF FF AF AF
	lda $14FFFF.l		; AF FF FF 14
	phd		; 0B
	ldx #$611D.w		; A2 1D 61
	stz $E75E.w,X		; 9E 5E E7
	sbc [$FB.b],Y		; F7 FB
	lda $FB07FB.l		; AF FB 07 FB
	xce		; FB
	ora [$FA.b]		; 07 FA
	sbc $F8F6.w,X		; FD F6 F8
	pea $F0F9.w		; F4 F9 F0
	sbc $FFE0.w,Y		; F9 E0 FF
	inc $F7.b		; E6 F7
	cpy #$98FA.w		; C0 FA 98
	jsr ($FAF2.w,X)		; FC F2 FA
	sbc [$F7.b],Y		; F7 F7
	sbc [$F7.b]		; E7 F7
	dec $76.b		; C6 76
	rts		; 60

	bra -120.b		; 80 88
	inx		; E8
	sty $F4.b		; 84 F4
	clc		; 18
	cpx #$B0C0.w		; E0 C0 B0
	jsr $20D0.w		; 20 D0 20
	bcc   0.b		; 90 00
	bne   0.b		; D0 00
	ldy #$E080.w		; A0 80 E0
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	jsr $6020.w		; 20 20 60
	rts		; 60

	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	lda $7B.b,X		; B5 7B
	sbc [$7B.b],Y		; F7 7B
	rtl		; 6B

	ora [$1D.b],Y		; 17 1D
	ora $15.b		; 05 15
	ora $051D.w		; 0D 1D 05
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	tda		; 7B
	brk $7B.b		; 00 7B
	brk $17.b		; 00 17
	brk $05.b		; 00 05
	cop $0D.b		; 02 0D
	cop $05.b		; 02 05
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	ldx #$A266.w		; A2 66 A2
	ror $A4.b		; 66 A4
	adc $A1.b,S		; 63 A1
	adc $A2.b,S		; 63 A2
	adc ($A1.b,X)		; 61 A1
	adc $27F8A8.l		; 6F A8 F8 27
	ldx #$A219.w		; A2 19 A2
	ora $19A4.w,Y		; 19 A4 19
	lda ($1C.b,X)		; A1 1C
	ldx #$A11C.w		; A2 1C A1
	asl $10A8.w,X		; 1E A8 10
	and [$07.b]		; 27 07
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $1B.b		; 00 1B
	php		; 08
	bpl   0.b		; 10 00
	sbc ($D3.b,S),Y		; F3 D3
	jsr ($E03F.w,X)		; FC 3F E0
	ror $F800.w,X		; 7E 00 F8
	ora [$F0.b]		; 07 F0
	ora [$F0.b]		; 07 F0
	ora [$E0.b]		; 07 E0
	ora $00CCE0.l		; 0F E0 CC 00
	cop $02.b		; 02 02
	clc		; 18
	clc		; 18
	cpy #$F4C0.w		; C0 C0 F4
	ora [$C8.b]		; 07 C8
	ora $401D10.l		; 0F 10 1D 40
	adc $E000.w,Y		; 79 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	cmp $49.b,X		; D5 49
	sbc $276806.l		; EF 06 68 27
	pla		; 68
	and ($7C.b,X)		; 21 7C
	cpy $6E3E.w		; CC 3E 6E
	eor $3AAFB8.l,X		; 5F B8 AF 3A
	dec A		; 3A
	bpl  16.b		; 10 10
	and [$30.b],Y		; 37 30
	ora [$10.b],Y		; 17 10
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	eor #$AE81.w		; 49 81 AE
	.db $42, $A0		; 42 A0
	inc $DCB0.w,X		; FE B0 DC
	bcc 120.b		; 90 78
	iny		; C8
	tsb $08E0.w		; 0C E0 08
	cpy #$0030.w		; C0 30 00
	bcc   0.b		; 90 00
	cpx #$0404.w		; E0 04 04
	cpy #$A080.w		; C0 80 A0
	rti		; 40

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$E020.w		; E0 20 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	and ($14.b,S),Y		; 33 14
	rol $C0.b,X		; 36 C0
	rol $BC.b		; 26 BC
	pha		; 48
	jmp ($F4F0.w,X)		; 7C F0 F4
	clc		; 18
	tya		; 98
	bra  -8.b		; 80 F8
	bmi  30.b		; 30 1E
	ora ($08.b)		; 12 08
	brk $3C.b		; 00 3C
	bit $40.b		; 24 40
	brk $F0.b		; 00 F0
	brk $18.b		; 00 18
	brk $80.b		; 00 80
	rts		; 60

	bmi   0.b		; 30 00
	jsr $075F.w		; 20 5F 07
	and $043E06.l,X		; 3F 06 3E 04
	trb $1C04.w		; 1C 04 1C
	tsb $0C.b		; 04 0C
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	ora $0B18.w,Y		; 19 18 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	brk $F8.b		; 00 F8
	cpx #$10F8.w		; E0 F8 10
	clc		; 18
	bpl  28.b		; 10 1C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $3030.w		; 0C 30 30
	bpl  16.b		; 10 10
	cpx #$E800.w		; E0 00 E8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $E0.b		; 00 E0
	rti		; 40

	bvs -96.b		; 70 A0
	bmi -128.b		; 30 80
	clc		; 18
	bpl  24.b		; 10 18
	jsr $2008.w		; 20 08 20
	tsb $8CF8.w		; 0C F8 8C
	brk $00.b		; 00 00
	ldy #$C020.w		; A0 20 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	beq -124.b		; F0 84
	beq -122.b		; F0 86
	bit $3886.w,X		; 3C 86 38
	.db $82, $58, $C3		; 82 58 C3
	asl $2CC3.w,X		; 1E C3 2C
	adc ($07.b,X)		; 61 07
	adc ($78.b,X)		; 61 78
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	bra 124.b		; 80 7C
	brk $3E.b		; 00 3E
	cop $7C.b		; 02 7C
	rti		; 40

	ora $203E01.l,X		; 1F 01 3E 20
	tsx		; BA
	jmp $9E1CEE.l		; 5C EE 1C 9E
	tsb $0816.w		; 0C 16 08
	inc A		; 1A
	brk $1F.b		; 00 1F
	tsb $030D.w		; 0C 0D 03
	ora $00.b,S		; 03 00
	jmp $001C00.l		; 5C 00 1C 00
	tsb $0800.w		; 0C 00 08
	brk $00.b		; 00 00
	tsb $0C.b		; 04 0C
	brk $03.b		; 00 03
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
	brk $17.b		; 00 17
	ora $39113F.l		; 0F 3F 11 39
	php		; 08
	adc $246B23.l,X		; 7F 23 6B 24
	inc $10.b,X		; F6 10
	stz $BC6C.w,X		; 9E 6C BC
	bvs  15.b		; 70 0F
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	asl $23.b		; 06 23
	brk $24.b		; 00 24
	bpl  16.b		; 10 10
	php		; 08
	jmp ($7000.w)		; 6C 00 70
	brk $B0.b		; 00 B0
	stx $1C.b		; 86 1C
	stx $48.b		; 86 48
.ACCU 16
	rep #$2C		; C2 2C
	sbc $16.b,S		; E3 16
	adc ($04.b,S),Y		; 73 04
	and ($09.b),Y		; 31 09
	clc		; 18
	ora $047C01.l,X		; 1F 01 7C 04
	sed		; F8
	bra  60.b		; 80 3C
	brk $5E.b		; 00 5E
	.db $42, $2C		; 42 2C
	jsr $111F.w		; 20 1F 11
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	ldy $5060.w,X		; BC 60 50
	jsr $0038.w		; 20 38 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $F2.b		; 00 F2
	tsb $40CE.w		; 0C CE 40
	adc ($10.b)		; 72 10
	and $1F3E00.l,X		; 3F 00 3E 1F
	and $0F1F1F.l		; 2F 1F 1F 0F
	ora [$0F.b],Y		; 17 0F
	tsb $4000.w		; 0C 00 40
	bmi  16.b		; 30 10
	tsb $0000.w		; 0C 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000F00.l		; 0F 00 0F 00
	rts		; 60

	beq -72.b		; F0 B8
	cpy #$F6B0.w		; C0 B0 F6
	tsb $79.b		; 04 79
	sbc $DAFE.w,Y		; F9 FE DA
	cmp $CE.b,S		; C3 CE
	cpy #$F053.w		; C0 53 F0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bvs -120.b		; 70 88
	rol $C6.b,X		; 36 C6
	ldy #$FCC0.w		; A0 C0 FC
	bra 127.b		; 80 7F
	bra 111.b		; 80 6F
	ldy #$0707.w		; A0 07 07
	ora [$01.b]		; 07 01
	ora $8C04.w		; 0D 04 8C
	rts		; 60

	wai		; CB
	sta $F21B.w,Y		; 99 1B F2
	sed		; F8
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	ora [$05.b]		; 07 05
	ora $01.b,S		; 03 01
	ora ($04.b,X)		; 01 04
	cop $00.b		; 02 00
	ora $A5.b,S		; 03 A5
	jsr $000C.w		; 20 0C 00
	trb $F800.w		; 1C 00 F8
	brk $F6.b		; 00 F6
	adc $73CF.w,X		; 7D CF 73
	lda $6F73.w		; AD 73 6F
	bmi  74.b		; 30 4A
	and $FB.b,X		; 35 FB
	ora $AB.b		; 05 AB
	adc $CB.b,X		; 75 CB
	adc $7C.b,X		; 75 7C
	ora $73.b,S		; 03 73
	brk $70.b		; 00 70
	ora [$30.b]		; 07 30
	brk $35.b		; 00 35
	brk $05.b		; 00 05
	brk $75.b		; 00 75
	brk $75.b		; 00 75
	brk $FA.b		; 00 FA
	inc $FEBA.w,X		; FE BA FE
	xce		; FB
	inc $FEFF.w,X		; FE FF FE
	sbc $B07F0E.l,X		; FF 0E 7F B0
	adc $A9EDA6.l		; 6F A6 ED A9
	ply		; 7A
	jsr ($7C9A.w,X)		; FC 9A 7C
	sbc ($8C.b)		; F2 8C
	bit $0CF2.w,X		; 3C F2 0C
	asl $00B0.w		; 0E B0 00
	ldx $10.b		; A6 10
	lda #$12.b		; A9 12
	sed		; F8
	inx		; E8
	cld		; D8
	cld		; D8
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	tay		; A8
	bne -40.b		; D0 D8
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $1F.b		; 06 1F
	ora $7E3F3F.l,X		; 1F 3F 3F 7E
	adc $FFED.w,X		; 7D ED FF
	sbc $0000FF.l		; EF FF 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $3C02.w,X		; 1D 02 3C
	tas		; 1B
	jmp ($A133.w)		; 6C 33 A1
	ror $F06F.w,X		; 7E 6F F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  -8.b		; 80 F8
	bpl  31.b		; 10 1F
	sep #$03		; E2 03
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	inx		; E8
	php		; 08
	sbc $FF01.w,X		; FD 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	sbc $000100.l,X		; FF 00 01 00
	ora ($00.b,X)		; 01 00
	sta $82.b,S		; 83 82
	sbc $80FE7D.l,X		; FF 7D FE 80
	adc $3964.w,X		; 7D 64 39
	clc		; 18
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	.db $82, $7C, $7C		; 82 7C 7C
	brk $81.b		; 00 81
	brk $63.b		; 00 63
	bra   7.b		; 80 07
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpx #$C0.b		; E0 C0
	inc $8F8C.w,X		; FE 8C 8F
	adc ($01.b),Y		; 71 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	jsr $7220.w		; 20 20 72
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora $080D04.l		; 0F 04 0D 08
	ora $110C.w,Y		; 19 0C 11
	phd		; 0B
	and ($20.b,X)		; 21 20
	.db $62, $08, $41		; 62 08 41
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	asl $1E0E.w		; 0E 0E 1E
	asl $1F1F.w,X		; 1E 1F 1F
	rol $003E.w,X		; 3E 3E 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	sed		; F8
	pha		; 48
	cpy $AE70.w		; CC 70 AE
	bne -25.b		; D0 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bmi   0.b		; 30 00
	bit $5E0C.w,X		; 3C 0C 5E
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	ora ($3F.b,X)		; 01 3F
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C04.w		; 0E 04 1C
	php		; 08
	sei		; 78
	lda ($61.b,X)		; A1 61
	sty $07.b		; 84 07
	bcc  30.b		; 90 1E
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	lsr $7A40.w,X		; 5E 40 7A
	cop $68.b		; 02 68
	php		; 08
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	tsb $07.b		; 04 07
	bpl  30.b		; 10 1E
	rti		; 40

	sei		; 78
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	adc $00FE00.l,X		; 7F 00 FE 00
	plx		; FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txa		; 8A
	sbc $28.b,S		; E3 28
	sbc $28.b,S		; E3 28
	sep #$0C		; E2 0C
	lsr $04.b		; 46 04
	lsr $FE.b		; 46 FE
	brk $BA.b		; 00 BA
	jmp ($60BE.w,X)		; 7C BE 60
	bit $9E20.w,X		; 3C 20 9E
	.db $82, $1C, $00		; 82 1C 00
	sec		; 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $60.b		; 00 60
	brk $C4.b		; 00 C4
	jsr ($FFE0.w,X)		; FC E0 FF
	jmp ($BEFF.w,X)		; 7C FF BE
	adc $33FFCE.l,X		; 7F CE FF 33
	and $FD1F1B.l,X		; 3F 1B 1F FD
	ora [$CB.b]		; 07 CB
	php		; 08
	eor ($F1.b,X)		; 41 F1
	sei		; 78
	inc $FE00.w,X		; FE 00 FE
	dec $3031.w		; CE 31 30
	ora $040719.l		; 0F 19 07 04
	ora $69.b,S		; 03 69
	ora $029E90.l		; 0F 90 9E 02
	sbc $3D90.w,Y		; F9 90 3D
	sec		; 38
	sbc $FAFEFA.l,X		; FF FA FE FA
	inc $FEFA.w,X		; FE FA FE
	sbc ($02.b)		; F2 02
	adc #$08.b		; 69 08
	asl $06.b		; 06 06
.INDEX 16
	rep #$DA		; C2 DA
	bpl  56.b		; 10 38
	sbc ($FC.b)		; F2 FC
	plx		; FA
	jsr ($FCFA.w,X)		; FC FA FC
	ply		; 7A
	ora $0A.b		; 05 0A
	ora $09.b		; 05 09
	asl $09.b		; 06 09
	asl $09.b		; 06 09
	asl $09.b		; 06 09
	asl $0D.b		; 06 0D
	cop $07.b		; 02 07
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $AE.b		; 00 AE
	dex		; CA
	lda [$D5.b],Y		; B7 D5
	sbc [$D5.b],Y		; F7 D5
	cmp ($E2.b,S),Y		; D3 E2
	cmp $68E9.w,Y		; D9 E9 68
	beq 108.b		; F0 6C
	pea $F877.w		; F4 77 F8
	dex		; CA
	ora ($D5.b),Y		; 11 D5
	php		; 08
	cmp $08.b,X		; D5 08
	sep #$0C		; E2 0C
	sbc #$06.b		; E9 06
	beq   7.b		; F0 07
	pea $F803.w		; F4 03 F8
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	wai		; CB
	stx $03FD.w		; 8E FD 03
	cop $84.b		; 02 84
	sta [$28.b]		; 87 28
	inc $7C00.w		; EE 00 7C
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	eor ($40.b,X)		; 41 40
	jsr ($7A00.w,X)		; FC 00 7A
	cop $54.b		; 02 54
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	bne 112.b		; D0 70
	rts		; 60

	ldy #$00C0.w		; A0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne -32.b		; D0 E0
	bpl  96.b		; 10 60
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $3E.b		; 00 3E
	brk $C0.b		; 00 C0
	cpy #$FC0C.w		; C0 0C FC
	trb $30.b		; 14 30
	ora $3C61.w		; 0D 61 3C
	sbc ($5A.b,X)		; E1 5A
	cmp $FF.b,S		; C3 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $3E.b		; 00 3E
	jsr $415F.w		; 20 5F 41
	bit $4000.w,X		; 3C 00 40
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	bmi  31.b		; 30 1F
	sbc $70FF00.l,X		; FF 00 FF 70
	sbc $30E161.l,X		; FF 61 E1 30
	beq   8.b		; F0 08
	sei		; 78
	tsb $1C.b		; 04 1C
	ora $E0E000.l		; 0F 00 E0 E0
	ora $03.b,S		; 03 03
	sty $9E8C.w		; 8C 8C 9E
	bra  79.b		; 80 4F
	rti		; 40

	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	sbc $000000.l,X		; FF 00 00 00
	and $FF00FF.l,X		; 3F FF 00 FF
	cpy #$20F0.w		; C0 F0 20
	sec		; 38
	bpl  28.b		; 10 1C
	php		; 08
	asl $00FF.w		; 0E FF 00
	sbc $C0C000.l,X		; FF 00 C0 C0
	brk $00.b		; 00 00
	jsr $D020.w		; 20 20 D0
	bpl -24.b		; 10 E8
	php		; 08
	pea $5804.w		; F4 04 58
	rep #$4C		; C2 4C
	cmp ($0D.b,X)		; C1 0D
	eor #$20.b		; 49 20
	pla		; 68
	bpl  56.b		; 10 38
	cop $1B.b		; 02 1B
	ora ($0D.b,X)		; 01 0D
	brk $03.b		; 00 03
	and $3E3E3F.l,X		; 3F 3F 3E 3E
	rol $36.b,X		; 36 36
	ora $07071F.l,X		; 1F 1F 07 07
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	jmp ($F8C1.w,X)		; 7C C1 F8
	sta $30.b,S		; 83 30
	sta [$66.b]		; 87 66
	sta $0D9F63.l		; 8F 63 9F 0D
	ror $BF3D.w		; 6E 3D BF
	sec		; 38
	xce		; FB
	ror $7C40.w,X		; 7E 40 7C
	brk $7E.b		; 00 7E
	asl $79.b		; 06 79
	ora #$60.b		; 09 60
	brk $9C.b		; 00 9C
	bcc -37.b		; 90 DB
	cpy $31.b		; C4 31
	asl $11FA.w,X		; 1E FA 11
	adc $F5B4.w,X		; 7D B4 F5
	tay		; A8
	cmp [$88.b],Y		; D7 88
	mvn $F8,$88		; 54 88 F8
	rts		; 60

	cpx #$C040.w		; E0 40 C0
	brk $11.b		; 00 11
	tsb $B4.b		; 04 B4
	cop $A8.b		; 02 A8
	cop $88.b		; 02 88
	jsr $2088.w		; 20 88 20
	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	clv		; B8
	cpy #$40A0.w		; C0 A0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $0080.w		; 20 80 00
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
	inc $04.b		; E6 04
	jmp.w [$F450]		; DC 50 F4
	php		; 08
	stz $E480.w		; 9C 80 E4
	jsr $C03C.w		; 20 3C C0
	stz $F8.b,X		; 74 F8
	ply		; 7A
	jsr ($1804.w,X)		; FC 04 18
	bvc  32.b		; 50 20
	php		; 08
	brk $80.b		; 00 80
	rts		; 60

	jsr $C018.w		; 20 18 C0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $16.b		; 00 16
	asl $0E36.w		; 0E 36 0E
	and $0F.b,X		; 35 0F
	adc [$2F.b],Y		; 77 2F
	eor ($0D.b,S),Y		; 53 0D
	inc $7361.w,X		; FE 61 73
	brk $01.b		; 00 01
	ora ($0E.b,X)		; 01 0E
	ora $0C.b,S		; 03 0C
	ora $0D.b,S		; 03 0D
	cop $2F.b		; 02 2F
	brk $0D.b		; 00 0D
	jsr $0160.w		; 20 60 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	tsb $1C.b		; 04 1C
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	phd		; 0B
	php		; 08
	tsb $07.b		; 04 07
	.db $82, $83, $42		; 82 83 42
	cmp $20.b,S		; C3 20
	sbc $11.b,S		; E3 11
	sbc ($41.b,S),Y		; F3 41
	cmp $04.b,S		; C3 04
	asl $04.b		; 06 04
	asl $FA.b		; 06 FA
	cop $7C.b		; 02 7C
	brk $BC.b		; 00 BC
	bra  93.b		; 80 5D
	eor ($0C.b,X)		; 41 0C
	brk $BC.b		; 00 BC
	bra  -7.b		; 80 F9
	brk $F9.b		; 00 F9
	brk $38.b		; 00 38
	sta $F4.b,S		; 83 F4
	stx $70.b		; 86 70
	asl $68.b		; 06 68
	tsb $0CE0.w		; 0C E0 0C
	bne  24.b		; D0 18
	cpy #$E018.w		; C0 18 E0
	bmi  -2.b		; 30 FE
	.db $82, $78, $00		; 82 78 00
	jsr ($F004.w,X)		; FC 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $2F.b		; 00 2F
	ora $1D1F27.l,X		; 1F 27 1F 1D
	ora $1A.b,S		; 03 1A
	ora ($19.b,X)		; 01 19
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	cpy #$C0EF.w		; C0 EF C0
	sbc $3EC4.w		; ED C4 3E
	cld		; D8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bpl -60.b		; 10 C4
	ora ($D8.b)		; 12 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $F0.b		; 00 F0
	brk $1E.b		; 00 1E
	cpx #$1CEE.w		; E0 EE 1C
	rol $00FC.w,X		; 3E FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora [$00.b]		; 07 00
	ora $000700.l,X		; 1F 00 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	asl $03.b		; 06 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	ror $7D7E.w,X		; 7E 7E 7D
	adc $FF7F7D.l,X		; 7F 7D 7F FF
	lda $0000.w,X		; BD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $56.b		; 00 56
	sec		; 38
	adc $793E.w,X		; 7D 3E 79
	rol $7AB5.w,X		; 3E B5 7A
	ora $00.b,S		; 03 00
	tsb $1303.w		; 0C 03 13
	ora $36031F.l		; 0F 1F 03 36
	ora $0B.b,S		; 03 0B
	asl $17.b		; 06 17
	asl $0E1F.w		; 0E 1F 0E
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $000300.l		; 0F 00 03 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $1D.b		; 00 1D
	cop $1A.b		; 02 1A
	php		; 08
	asl $1C04.w,X		; 1E 04 1C
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	tsb $04.b		; 04 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	adc $EC3E89.l,X		; 7F 89 3E EC
	rol $1F48.w,X		; 3E 48 1F
	eor ($1C.b)		; 52 1C
	adc $0C.b,S		; 63 0C
	tay		; A8
	sta $9E8733.l		; 8F 33 87 9E
	brk $C1.b		; 00 C1
	ora $01CD.w,X		; 1D CD 01
	cpx #$E30C.w		; E0 0C E3
	ora $F3.b,S		; 03 F3
	ora $70.b,S		; 03 70
	brk $78.b		; 00 78
	ora $00.b,S		; 03 00
	cpy #$3E80.w		; C0 80 3E
	bpl -78.b		; 10 B2
	brk $FC.b		; 00 FC
	ora $6F03BF.l		; 0F BF 03 6F
	and $E7.b,S		; 23 E7
	sta [$FF.b]		; 87 FF
	brk $00.b		; 00 00
	cpy #$CCC0.w		; C0 C0 CC
	cpy $0000.w		; CC 00 00
	cmp $9390C0.l		; CF C0 90 93
	tas		; 1B
	tas		; 1B
	ora [$C7.b]		; 07 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F900.w,X		; 1E 00 F9
	inc $FFFE.w,X		; FE FE FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	asl $04.b		; 06 04
	xce		; FB
	sbc $F6ECF9.l,X		; FF F9 EC F6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7F00.w,X		; 3C 00 7F
	bit $23FF.w,X		; 3C FF 23
	sed		; F8
	clc		; 18
	cpy #$FF40.w		; C0 40 FF
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $23.b		; 00 23
	brk $18.b		; 00 18
	ora [$40.b]		; 07 40
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	cop $1C.b		; 02 1C
	inc A		; 1A
	inc $FFFC.w		; EE FC FF
	sbc $FCF7.w,X		; FD F7 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	inc A		; 1A
	ora ($EC.b,X)		; 01 EC
	ora $FC69.w,X		; 1D 69 FC
	cpx $F8.b		; E4 F8
	brk $07.b		; 00 07
	ora [$3F.b]		; 07 3F
	lda ($70.b,S),Y		; B3 70
	dec $C040.w		; CE 40 C0
	rti		; 40

	phy		; 5A
	stz $BEC2.w,X		; 9E C2 BE
	cpy #$0002.w		; C0 02 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $A5.b		; 00 A5
	tsb $81.b		; 04 81
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FC00.w		; C0 00 FC
	bmi  63.b		; 30 3F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$CCC0.w		; C0 C0 CC
	tsb $00FC.w		; 0C FC 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	bmi  60.b		; 30 3C
	php		; 08
	asl $0604.w		; 0E 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C8C0.w		; C0 C0 C8
	php		; 08
	pea $F804.w		; F4 04 F8
	brk $2E.b		; 00 2E
	cpx #$F057.w		; E0 57 F0
	pld		; 2B
	sed		; F8
	ora $DC.b,X		; 15 DC
	asl A		; 0A
	lsr $6721.w		; 4E 21 67
	rol $7A61.w		; 2E 61 7A
	tsb $001F.w		; 0C 1F 00
	ora $404700.l		; 0F 00 47 40
	adc $40.b,S		; 63 40
	and ($00.b),Y		; 31 00
	clc		; 18
	brk $10.b		; 00 10
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	cpx #$3030.w		; E0 30 30
	clc		; 18
	pha		; 48
	cpy $E423.w		; CC 23 E4
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	bra  28.b		; 80 1C
	tsb $30.b		; 04 30
	bmi 126.b		; 30 7E
	ror $7F7D.w,X		; 7E 7D 7F
	cmp $FFCF.w		; CD CF FF
	sbc $7F8F89.l,X		; FF 89 8F 7F
	adc $307070.l,X		; 7F 70 70 30
	brk $4E.b		; 00 4E
	bmi 117.b		; 30 75
	dec A		; 3A
	iny		; C8
	adc [$A9.b],Y		; 77 A9
	adc [$88.b],Y		; 77 88
	adc [$4F.b],Y		; 77 4F
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cpy #$DBF4.w		; C0 F4 DB
	cpx $C8.b		; E4 C8
	jmp.w [$EF94]		; DC 94 EF
	lda [$70.b],Y		; B7 70
	ora $000000.l		; 0F 00 00 00
	brk $C0.b		; 00 C0
	brk $18.b		; 00 18
	cpy #$D0CB.w		; C0 CB D0
	ora ($A0.b,S),Y		; 13 A0
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra 120.b		; 80 78
	bra 127.b		; 80 7F
	sbc ($B3.b,S),Y		; F3 B3
	cpx #$00A0.w		; E0 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	sei		; 78
	sty $9F00.w		; 8C 00 9F
	brk $E0.b		; 00 E0
	jsr $3070.w		; 20 70 30
	mvp $E0,$3C		; 44 3C E0
	lda $C167E4.l,X		; BF E4 67 C1
	eor ($BE.b,X)		; 41 BE
	brk $BF.b		; 00 BF
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	bra  11.b		; 80 0B
	dey		; 88
	sta ($11.b),Y		; 91 11
	inc A		; 1A
	cop $3E.b		; 02 3E
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	cmp $0E9F10.l,X		; DF 10 9F 0E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	sty $08F9.w		; 8C F9 08
	ora ($E0.b),Y		; 11 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	bvs   8.b		; 70 08
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $55.b		; 00 55
	cmp [$A9.b]		; C7 A9
	sbc $62.b,S		; E3 62
	adc $5F.b,S		; 63 5F
	adc $7FFFCF.l,X		; 7F CF FF 7F
	sbc $AEFFFE.l,X		; FF FE FF AE
	sbc $1D0139.l,X		; FF 39 01 1D
	brk $FE.b		; 00 FE
	ora ($DC.b,X)		; 01 DC
	and $43.b,S		; 23 43
	rol $1C6F.w,X		; 3E 6F 1C
	ror $6401.w,X		; 7E 01 64
	eor $FFFFFF.l,X		; 5F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DEFFEF.l,X		; FF EF FF DE
	sbc $8AFFF1.l,X		; FF F1 FF 8A
	inc $DFEF.w,X		; FE EF DF
	sbc $5FEFDF.l,X		; FF DF EF 5F
	sbc $5FE65F.l		; EF 5F E6 5F
	bne 111.b		; D0 6F
	sta ($6E.b),Y		; 91 6E
	txa		; 8A
	stz $FE.b,X		; 74 FE
	jsr ($FBF7.w,X)		; FC F7 FB
	sbc $E7F8F0.l		; EF F0 F8 E7
	eor $CDF2E3.l,X		; 5F E3 F2 CD
	sbc ($0E.b),Y		; F1 0E
	txa		; 8A
	adc [$D8.b],Y		; 77 D8
	sbc $D8E3.w		; ED E3 D8
	ldy #$C7D0.w		; A0 D0 C7
	bcs  67.b		; B0 43
	ldy #$20CD.w		; A0 CD 20
	asl $7700.w		; 0E 00 77
	brk $7F.b		; 00 7F
	rti		; 40

	brk $00.b		; 00 00
	cpy #$F0C0.w		; C0 C0 F0
	bmi -68.b		; 30 BC
	cpy $F3CF.w		; CC CF F3
	sbc ($7C.b,S),Y		; F3 7C
	jmp ($40BF.w,X)		; 7C BF 40
	bra   0.b		; 80 00
	sbc $303FC0.l,X		; FF C0 3F 30
	ora $F303CC.l		; 0F CC 03 F3
	brk $7C.b		; 00 7C
	brk $BF.b		; 00 BF
	brk $F8.b		; 00 F8
	sed		; F8
	ldy #$C7E7.w		; A0 E7 C7
	cmp $088B80.l		; CF 80 8B 08
	ora $3414.w,Y		; 19 14 34
	tsb $0A23.w		; 0C 23 0A
	jsr $E0D8.w		; 20 D8 E0
	jsr $C0C0.w		; 20 C0 C0
	brk $84.b		; 00 84
	tsb $06.b		; 04 06
	asl $0B.b		; 06 0B
	phd		; 0B
	asl $1F1E.w,X		; 1E 1E 1F
	ora $000301.l,X		; 1F 01 03 00
	sta ($10.b),Y		; 91 10
	sbc $D8EF62.l,X		; FF 62 EF D8
	lda $E11E.w		; AD 1E E1
	jmp ($5CA1.w,X)		; 7C A1 5C
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  28.b		; 80 1C
	tsb $0436.w		; 0C 36 04
	lsr $FF20.w,X		; 5E 20 FF
	lda ($3F.b,X)		; A1 3F
	ora ($20.b,X)		; 01 20
	cpx #$FF0C.w		; E0 0C FF
	rti		; 40

	adc $E41E90.l,X		; 7F 90 1E E4
	ora [$FD.b]		; 07 FD
	ora ($FF.b,X)		; 01 FF
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	rti		; 40

	sta ($93.b,S),Y		; 93 93
	ldy #$E820.w		; A0 20 E8
	php		; 08
	plx		; FA
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora $22.b,S		; 03 22
	sbc $46.b,S		; E3 46
	cmp [$46.b]		; C7 46
	cmp [$06.b]		; C7 06
	cmp [$02.b]		; C7 02
	sbc $42.b,S		; E3 42
	adc ($A2.b,S),Y		; 73 A2
	tsa		; 3B
	inc $DC02.w,X		; FE 02 DC
	cpy #$0038.w		; C0 38 00
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	stz $AC80.w		; 9C 80 AC
	jsr $10D4.w		; 20 D4 10
	tsx		; BA
	jmp ($609E.w,X)		; 7C 9E 60
	inc $04.b		; E6 04
	ror $7230.w,X		; 7E 30 72
	tsb $307E.w		; 0C 7E 30
	adc [$04.b]		; 67 04
	eor $007C20.l,X		; 5F 20 7C 00
	rts		; 60

	brk $04.b		; 00 04
	clc		; 18
	bmi   0.b		; 30 00
	tsb $3000.w		; 0C 00 30
	brk $04.b		; 00 04
	clc		; 18
	jsr $1E00.w		; 20 00 1E
	and ($3F.b,S),Y		; 33 3F
	asl $182E.w		; 0E 2E 18
	ora $1F01.w,Y		; 19 01 1F
	tsb $000F.w		; 0C 0F 00
	asl $02.b		; 06 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $1800.w		; 0E 00 18
	ora ($01.b,X)		; 01 01
	asl $0C.b		; 06 0C
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $8D.b		; 00 8D
	adc ($0A.b,S),Y		; 73 0A
	sbc $F9.b,X		; F5 F9
	asl $31.b		; 06 31
	asl $000F.w		; 0E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($00.b,S),Y		; 73 00
	sbc $00.b,X		; F5 00
	asl $00.b		; 06 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AF.b		; 00 AF
	dec $E6DB.w,X		; DE DB E6
	ldx $79.b,Y		; B6 79
	jmp $18243B.l		; 5C 3B 24 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	brk $E6.b		; 00 E6
	brk $79.b		; 00 79
	ora ($38.b,X)		; 01 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	brk $8F.b		; 00 8F
	bra  97.b		; 80 61
	cpx #$FF0F.w		; E0 0F FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	sta $303080.l,X		; 9F 80 30 30
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
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
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
	brk $E0.b		; 00 E0
	rts		; 60

	bvs  16.b		; 70 10
	clc		; 18
	bpl  24.b		; 10 18
	bra -116.b		; 80 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$E000.w		; E0 00 E0
	brk $78.b		; 00 78
	php		; 08
	brk $8C.b		; 00 8C
	php		; 08
	sty $CC48.w		; 8C 48 CC
	pha		; 48
	cpy $CC48.w		; CC 48 CC
	php		; 08
	cpy $ECA8.w		; CC A8 EC
	plp		; 28
	jmp ($0878.w)		; 6C 78 08
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	bpl   0.b		; 10 00
	bcc   0.b		; 90 00
	brk $13.b		; 00 13
	php		; 08
	clc		; 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	cop $06.b		; 02 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $070E.w		; 0E 0E 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5D.b		; 00 5D
	adc $2C.b,S		; 63 2C
	sbc $88.b,S		; E3 88
	and ($43.b,S),Y		; 33 43
	ora $8927A4.l		; 0F A4 27 89
	sta $EF00.w,Y		; 99 00 EF
	brk $18.b		; 00 18
	stz $1C82.w,X		; 9E 82 1C
	brk $CD.b		; 00 CD
	cmp ($F0.b,X)		; C1 F0
	beq -38.b		; F0 DA
	phx		; DA
	ror $66.b		; 66 66
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	and $01F8.w,Y		; 39 F8 01
	sbc $000300.l,X		; FF 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	cpy #$0202.w		; C0 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($1F.b)		; 92 1F
	php		; 08
	ora $5A8734.l		; 0F 34 87 5A
	cmp $1D.b,S		; C3 1D
	cmp ($2E.b,X)		; C1 2E
	rts		; 60

	ora $301760.l		; 0F 60 17 30
	inx		; E8
	php		; 08
	pea $F804.w		; F4 04 F8
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	rti		; 40

	ora $203F00.l,X		; 1F 00 3F 20
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $F0.b		; 00 F0
	bra -40.b		; 80 D8
	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	jsr $0000.w		; 20 00 00
	tsb $0F0C.w		; 0C 0C 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $050F0F.l		; 0F 0F 0F 05
	ora [$06.b]		; 07 06
	ora [$03.b]		; 07 03
	ora $0C.b,S		; 03 0C
	brk $0B.b		; 00 0B
	tsb $0E.b		; 04 0E
	ora $0B.b		; 05 0B
	ora [$0F.b]		; 07 0F
	brk $05.b		; 00 05
	cop $04.b		; 02 04
	ora $03.b,S		; 03 03
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bra -96.b		; 80 A0
	rti		; 40

	jsr $F0C0.w		; 20 C0 F0
	brk $30.b		; 00 30
	jsr $00F8.w		; 20 F8 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpy #$0000.w		; C0 00 00
	eor $5E3E.w,X		; 5D 3E 5E
	and $692F56.l,X		; 3F 56 2F 69
	asl $27.b		; 06 27
	ora ($23.b,X)		; 01 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	bra -80.b		; 80 B0
	rts		; 60

	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	sed		; F8
	ply		; 7A
	jsr ($FE7D.w,X)		; FC 7D FE
	ldx $957F.w,Y		; BE 7F 95
	ror $046A.w		; 6E 6A 04
	adc [$01.b]		; 67 01
	and $00.b,S		; 23 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $6E.b		; 00 6E
	brk $04.b		; 00 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $0F.b		; 00 0F
	brk $09.b		; 00 09
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	ora [$84.b]		; 07 84
	sta [$89.b]		; 87 89
	sta $02FE78.l		; 8F 78 FE 02
	inc $3EC6.w,X		; FE C6 3E
	jmp ($EECC.w,X)		; 7C CC EE
	sbc ($FA.b)		; F2 FA
	cop $79.b		; 02 79
	ora ($74.b,X)		; 01 74
	tsb $83.b		; 04 83
	.db $82, $F5, $F4		; 82 F5 F4
	and #$28.b		; 29 28
	cmp $00.b,S		; C3 00
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1680.w		; 0C 80 16
	inx		; E8
	and $08DD2A.l,X		; 3F 2A DD 08
	and $5D18.w,X		; 3D 18 5D
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	bra -54.b		; 80 CA
	brk $E8.b		; 00 E8
	cop $D8.b		; 02 D8
	cop $38.b		; 02 38
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	ldy #$8857.w		; A0 57 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$8800.w		; A0 00 88
	jsr $7922.w		; 20 22 79
	eor $803FC0.l,X		; 5F C0 3F 80
	asl $1AE0.w,X		; 1E E0 1A
	sbc [$3E.b]		; E7 3E
	sta $09672E.l		; 8F 2E 67 09
	tda		; 7B
	asl $3F18.w,X		; 1E 18 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	rts		; 60

	ply		; 7A
	ror $7E.b		; 66 7E
	brk $14.b		; 00 14
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	tya		; 98
	bra -52.b		; 80 CC
	mvp $44,$CE		; 44 CE 44
	dec $84.b,X		; D6 84
	dec $08.b,X		; D6 08
	.db $42, $1C		; 42 1C
	asl $70.b		; 06 70
	sty $60.b		; 84 60
	rts		; 60

	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	mvp $32,$C6		; 44 C6 32
	ora $E1.b,S		; 03 E1
	ora ($18.b,X)		; 01 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $E7.b		; 00 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $2900.w,X		; 1D 00 29
	bpl  79.b		; 10 4F
	and $DF.b,S		; 23 DF
	eor [$6F.b],Y		; 57 6F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	asl $16.b,X		; 16 16
	bmi  48.b		; 30 30
	and ($26.b,X)		; 21 26
	sta ($1F.b,X)		; 81 1F
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	sec		; 38
	sbc $038F8E.l,X		; FF 8E 8F 03
	ora $C7.b,S		; 03 C7
	brk $CF.b		; 00 CF
	brk $B3.b		; 00 B3
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	mvp $01,$71		; 44 71 01
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$7840.w		; E0 40 78
	bne  30.b		; D0 1E
	pea $0007.w		; F4 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $08E8.w		; 20 E8 08
	plx		; FA
	cop $10.b		; 02 10
	bmi  24.b		; 30 18
	sec		; 38
	php		; 08
	sec		; 38
	tsb $0C1C.w		; 0C 1C 0C
	trb $1808.w		; 1C 08 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	ora $000700.l		; 0F 00 07 00
	ora [$10.b],Y		; 17 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	jmp ($1374.w)		; 6C 74 13
	tas		; 1B
	ora [$0B.b]		; 07 0B
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	brk $13.b		; 00 13
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	cli		; 58
	bra -88.b		; 80 A8
	bne -44.b		; D0 D4
	sed		; F8
	pea $74F8.w		; F4 F8 74
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $DC.b		; 00 DC
	cpy $78.b		; C4 78
	bpl -40.b		; 10 D8
	bcs -20.b		; B0 EC
	lda [$F8.b],Y		; B7 F8
	ldy $F0.b		; A4 F0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	brk $17.b		; 00 17
	brk $B7.b		; 00 B7
	brk $B0.b		; 00 B0
	bra  32.b		; 80 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora $0A.b		; 05 0A
	ora $0B.b		; 05 0B
	ora $0B.b		; 05 0B
	ora $0D.b		; 05 0D
	ora $0D.b,S		; 03 0D
	ora $0E.b,S		; 03 0E
	ora $0D.b,S		; 03 0D
	cop $05.b		; 02 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $FB.b		; 00 FB
	sbc #$D1.b		; E9 D1
	cpx #$D0B0.w		; E0 B0 D0
	sbc ($A1.b,X)		; E1 A1
	eor $82.b,S		; 43 82
	cmp [$45.b]		; C7 45
	stx $9C0A.w		; 8E 0A 9C
	sty $E8.b,X		; 94 E8
	tsb $E0.b		; 04 E0
	asl $0FD0.w		; 0E D0 0F
	lda ($1E.b,X)		; A1 1E
	.db $82, $3C, $45		; 82 3C 45
	sec		; 38
	asl A		; 0A
	adc ($94.b),Y		; 71 94
	adc $65.b,S		; 63 65
	clc		; 18
	ora $000706.l,X		; 1F 06 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	eor $BE2FBF.l		; 4F BF 2F BE
	sta $613CDF.l,X		; 9F DF 3C 61
	asl $001F.w,X		; 1E 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $402F20.l		; 4F 20 2F 40
	sta $003C40.l,X		; 9F 40 3C 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $1C09.w,X		; 1E 09 1C
	ora #$1C.b		; 09 1C
	php		; 08
	clc		; 18
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -120.b		; 10 88
	brk $08.b		; 00 08
	cpy #$8010.w		; C0 10 80
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	sed		; F8
	cop $C6.b		; 02 C6
	ora ($FF.b,X)		; 01 FF
	ror $A1FF.w,X		; 7E FF A1
	sbc ($41.b,X)		; E1 41
	eor ($BF.b,X)		; 41 BF
	sbc $07FF01.l,X		; FF 01 FF 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  94.b		; 80 5E
	rti		; 40

	lda $404100.l,X		; BF 00 41 40
	ora ($00.b,X)		; 01 00
	lda [$3F.b]		; A7 3F
	cmp [$1F.b],Y		; D7 1F
	rtl		; 6B

	ora $5A87B5.l		; 0F B5 87 5A
	cmp $2D.b,S		; C3 2D
	sbc ($D1.b,X)		; E1 D1
	lda ($6B.b),Y		; B1 6B
	tyx		; BB
	cmp $0F.b,S		; C3 0F
	sbc [$07.b]		; E7 07
	sbc ($03.b,S),Y		; F3 03
	adc $3C01.w,Y		; 79 01 3C
	brk $1F.b		; 00 1F
	bra  15.b		; 80 0F
	bra  39.b		; 80 27
	sta ($04.b,X)		; 81 04
	jmp ($CF81.w,X)		; 7C 81 CF
	brk $83.b		; 00 83
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	wai		; CB
	pha		; 48
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $1F01.w,Y		; F9 01 1F
	brk $73.b		; 00 73
	beq  14.b		; F0 0E
	inc $1F00.w,X		; FE 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	brk $8F.b		; 00 8F
	bra  17.b		; 80 11
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	bpl  28.b		; 10 1C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0E08.w		; 0C 08 0E
	php		; 08
	ora $F010F0.l		; 0F F0 10 F0
	bpl -32.b		; 10 E0
	brk $E8.b		; 00 E8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	pea $F404.w		; F4 04 F4
	tsb $01.b		; 04 01
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
	brk $74.b		; 00 74
	sed		; F8
	pea $CE08.w		; F4 08 CE
	rti		; 40

	inc $9E1C.w,X		; FE 1C 9E
	rts		; 60

	sbc $20670E.l,X		; FF 0E 67 20
	adc $F806.w,X		; 7D 06 F8
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	bmi  28.b		; 30 1C
	brk $60.b		; 00 60
	brk $0E.b		; 00 0E
	brk $20.b		; 00 20
	clc		; 18
	asl $00.b		; 06 00
	ora $0C0E09.l		; 0F 09 0E 0C
	asl $2F1C.w,X		; 1E 1C 2F
	rol $7E5F.w,X		; 3E 5F 7E
	lda $FF7FFF.l,X		; BF FF 7F FF
	sbc $0009FF.l,X		; FF FF 09 00
	php		; 08
	ora $18.b		; 05 18
	ora $2C.b		; 05 2C
	asl $46.b,X		; 16 46
	dec A		; 3A
	stz $3A7B.w,X		; 9E 7B 3A
	sbc $FE7D.w,X		; FD 7D FE
	sec		; 38
	plp		; 28
	bvs  80.b		; 70 50
	sbc $A3.b,S		; E3 A3
	cmp $B3BC4C.l		; CF 4C BC B3
	sbc ($0F.b,S),Y		; F3 0F
	eor ($BE.b,X)		; 41 BE
	ror $2881.w,X		; 7E 81 28
	cmp [$50.b]		; C7 50
	sta $4C1CA3.l		; 8F A3 1C 4C
	bmi -77.b		; 30 B3
	rti		; 40

	ora $803E00.l		; 0F 00 3E 80
	ora ($C0.b,X)		; 01 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	adc $7E79.w,Y		; 79 79 7E
	adc $7E7F7F.l,X		; 7F 7F 7F 7E
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $49.b		; 00 49
	bmi 126.b		; 30 7E
	and ($7C.b,X)		; 21 7C
	and $3F3F5C.l,X		; 3F 5C 3F 3F
	and $371D1D.l,X		; 3F 1D 1D 37
	and [$FF.b],Y		; 37 FF
	sbc $FDFFFA.l,X		; FF FA FF FD
	sbc $7CFEFE.l,X		; FF FE FE 7C
	jmp ($1C23.w,X)		; 7C 23 1C
	ora $3600.w,X		; 1D 00 36
	ora ($F9.b,X)		; 01 F9
	and [$B8.b]		; 27 B8
	eor [$FD.b]		; 47 FD
	rol A		; 2A
	tax		; AA
	mvn $00,$7C		; 54 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $88.b		; 00 88
	bvs 124.b		; 70 7C
	beq  14.b		; F0 0E
	pea $00FE.w		; F4 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	sed		; F8
	jsr ($8000.w,X)		; FC 00 80
	dey		; 88
	bra -116.b		; 80 8C
	php		; 08
	sty $C640.w		; 8C 40 C6
	mvp $00,$C6		; 44 C6 00
	cmp $F8.b,S		; C3 F8
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	beq -128.b		; F0 80
	bit $3804.w,X		; 3C 04 38
	brk $7E.b		; 00 7E
	.db $42, $02		; 42 02
	cmp $20.b,S		; C3 20
	adc ($21.b,X)		; 61 21
	adc ($00.b,X)		; 61 00
	rts		; 60

	brk $60.b		; 00 60
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	jmp ($1F40.w,X)		; 7C 40 1F
	ora ($1E.b,X)		; 01 1E
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	ora $000F00.l		; 0F 00 0F 00
	ora $000010.l,X		; 1F 10 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	eor $FFBF7E.l,X		; 5F 7E BF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $9E3A46.l,X		; FF 46 3A 9E
	tda		; 7B
	dec A		; 3A
	sbc $FE7D.w,X		; FD 7D FE
	inc $FEFF.w,X		; FE FF FE
	sbc $D8FF7C.l,X		; FF 7C FF D8
	and $F9FFED.l,X		; 3F ED FF F9
	sbc $FAFFFF.l,X		; FF FF FF FA
	inc $FEFA.w,X		; FE FA FE
	ply		; 7A
	inc $FE5A.w,X		; FE 5A FE
	dec $FA.b,X		; D6 FA
	lda ($DE.b,X)		; A1 DE
	cmp $F7E6.w,Y		; D9 E6 F7
	sed		; F8
	sbc ($FC.b)		; F2 FC
	cmp ($3C.b)		; D2 3C
	.db $62, $9C, $52		; 62 9C 52
	ldy $AC52.w		; AC 52 AC
	sbc [$BF.b],Y		; F7 BF
	adc $3E17.w,X		; 7D 17 3E
	ora $07.b,S		; 03 07
	ora $070F07.l		; 0F 07 0F 07
	ora $081F06.l		; 0F 06 1F 08
	and $1503B5.l,X		; 3F B5 03 15
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	php		; 08
	asl $16.b,X		; 16 16
	inc $FA.b,X		; F6 FA
	sbc $C3FCF0.l,X		; FF F0 FC C3
	cpy #$FFBF.w		; C0 BF FF
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	ldy #$B0A0.w		; A0 A0 B0
	cmp ($6C.b)		; D2 6C
	bcs -52.b		; B0 CC
	eor $80.b,S		; 43 80
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	asl $F400.w,X		; 1E 00 F4
	bpl -72.b		; 10 B8
	bpl -80.b		; 10 B0
	jsr $00E0.w		; 20 E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	bpl  64.b		; 10 40
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C05.w		; 0E 05 1C
	phd		; 0B
	sec		; 38
	ora [$30.b],Y		; 17 30
	asl $0060.w		; 0E 60 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $203F00.l		; 0F 00 3F 20
	and $C15CE1.l		; 2F E1 5C C1
	tsx		; BA
	sta $3A.b,S		; 83 3A
	ora $7C.b,S		; 03 7C
	ora [$F4.b]		; 07 F4
	asl $F0.b		; 06 F0
	asl $E8.b		; 06 E8
	tsb $405E.w		; 0C 5E 40
	lda $007C81.l,X		; BF 81 7C 00
	jsr ($FA00.w,X)		; FC 00 FA
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $08.b		; 00 08
	tsb $1C10.w		; 0C 10 1C
	beq 120.b		; F0 78
	ldy #$C078.w		; A0 78 C0
	sec		; 38
	ldy #$1098.w		; A0 98 10
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	brk $00.b		; 00 00
	bvc  80.b		; 50 50
	bmi  48.b		; 30 30
	bcc  80.b		; 90 50
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	php		; 08
	brk $38.b		; 00 38
	bmi  -8.b		; 30 F8
	cpy #$38CC.w		; C0 CC 38
	bit $F4F8.w,X		; 3C F8 F4
	sed		; F8
	sty $F0F0.w		; 8C F0 F0
	brk $00.b		; 00 00
	beq  48.b		; F0 30
	cpy #$00C0.w		; C0 C0 00
	sec		; 38
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
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
	ora ($01.b,X)		; 01 01
	ora [$3C.b]		; 07 3C
	tsb $5B.b		; 04 5B
	bpl -20.b		; 10 EC
	tay		; A8
	cpx $ECCB.w		; EC CB EC
	iny		; C8
	sed		; F8
	cmp [$00.b]		; C7 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $17.b		; 00 17
	jsr $10AB.w		; 20 AB 10
	php		; 08
	bne -56.b		; D0 C8
	bne   0.b		; D0 00
	cpy #$9DE2.w		; C0 E2 9D
	cmp $BC.b,S		; C3 BC
	.db $82, $FC, $C4		; 82 FC C4
	clv		; B8
	bit $18.b		; 24 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9D.b		; 00 9D
	rti		; 40

	ldy $FC00.w,X		; BC 00 FC
	brk $B8.b		; 00 B8
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	rol $7EFF.w,X		; 3E FF 7E
	stz $E77F.w,X		; 9E 7F E7
	sta $0D273B.l,X		; 9F 3B 27 0D
	phd		; 0B
	ora $07.b		; 05 07
	sbc [$E6.b]		; E7 E6
	rol $7E00.w,X		; 3E 00 7E
	brk $7F.b		; 00 7F
	brk $9F.b		; 00 9F
	brk $27.b		; 00 27
	cpy #$F00B.w		; C0 0B F0
	ora [$F8.b]		; 07 F8
	inc $18.b		; E6 18
	ldy #$50C0.w		; A0 C0 50
	cpx #$60B0.w		; E0 B0 60
	phk		; 4B
	bcs -92.b		; B0 A4
	stp		; DB
	cpx $DB.b		; E4 DB
	cmp ($ED.b)		; D2 ED
	sbc ($1E.b,X)		; E1 1E
	cpy #$E000.w		; C0 00 E0
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $ED.b		; 00 ED
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $31FE06.l,X		; 1F 06 FE 31
	beq  31.b		; F0 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($19.b,X)		; 01 19
	clc		; 18
	cmp $00FFC0.l		; CF C0 FF 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	cop $3C.b		; 02 3C
	cop $FC.b		; 02 FC
	ply		; 7A
	jsr ($080C.w,X)		; FC 0C 08
	cmp $00EF0B.l		; CF 0B EF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bit $843D.w,X		; 3C 3D 84
	sta $F0.b		; 85 F0
	ora $F3.b,S		; 03 F3
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	ldy #$6080.w		; A0 80 60
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	bpl -100.b		; 10 9C
	rts		; 60

	dec $3A.b		; C6 3A
	adc $0D.b,S		; 63 0D
	adc ($80.b,X)		; 61 80
	brk $40.b		; 00 40
	rti		; 40

	ldy #$D020.w		; A0 20 D0
	bpl -24.b		; 10 E8
	dey		; 88
	bit $1C04.w,X		; 3C 04 1C
	brk $3E.b		; 00 3E
	jsr $0000.w		; 20 00 00
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
	bra   0.b		; 80 00
	sed		; F8
	brk $FE.b		; 00 FE
	bne 121.b		; D0 79
	asl $AE.b,X		; 16 AE
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $16.b		; 00 16
	bra  71.b		; 80 47
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $070F00.l,X		; 1F 00 0F 07
	asl $03.b		; 06 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $8F4FCF.l,X		; BF CF 4F 8F
	bit #$0F.b		; 89 0F
	asl $030F.w		; 0E 0F 03
	and $0B2703.l,X		; 3F 03 27 0B
	sbc $CB7F43.l		; EF 43 7F CB
	ora [$8A.b]		; 07 8A
	ora [$09.b]		; 07 09
	asl $0E.b		; 06 0E
	ora ($02.b,X)		; 01 02
	ora $1A.b,S		; 03 1A
	tas		; 1B
	ora ($13.b)		; 12 13
	sta $83.b,S		; 83 83
	cpy $F1.b		; C4 F1
	sty $F1.b,X		; 94 F1
	dec $4AF3.w,X		; DE F3 4A
	lda $28.b,S		; A3 28
.ACCU 8
	sep #$AC		; E2 AC
	inc $E4.b		; E6 E4
	inc $BF.b		; E6 BF
	inc $E00E.w,X		; FE 0E E0
	asl $CCC0.w		; 0E C0 CC
	brk $1C.b		; 00 1C
	cpy #$801C.w		; C0 1C 80
	tya		; 98
	brk $F8.b		; 00 F8
	brk $9E.b		; 00 9E
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $6400.w,X		; 3C 00 64
	jsr $40D8.w		; 20 D8 40
	beq -128.b		; F0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4018.w		; 20 18 40
	jsr $0080.w		; 20 80 00
	sed		; F8
	bit $7E32.w		; 2C 32 7E
	tsb $5E7F.w		; 0C 7F 5E
	cmp ($7C.b,X)		; C1 7C
	sta ($3F.b,X)		; 81 3F
	sta $1A.b,S		; 83 1A
	sbc [$1A.b]		; E7 1A
	adc ($33.b,X)		; 61 33
	ora $09.b,S		; 03 09
	ora #$30.b		; 09 30
	bmi  62.b		; 30 3E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	cop $7A.b		; 02 7A
	stz $38.b		; 64 38
	bit $88.b		; 24 88
	cpy $2604.w		; CC 04 26
	asl A		; 0A
	ora $AC.b,S		; 03 AC
	sta ($38.b,X)		; 81 38
	sta ($18.b,X)		; 81 18
	eor ($82.b,X)		; 41 82
	sta $00.b,S		; 83 00
	.db $82, $30, $30		; 82 30 30
	sed		; F8
	sed		; F8
	jsr ($7EFC.w,X)		; FC FC 7E
	ror $7E7E.w,X		; 7E 7E 7E
	inc $7CFE.w,X		; FE FE 7C
	jmp ($7C7C.w,X)		; 7C 7C 7C
	sta ($80.b,X)		; 81 80
	cmp $C05FC0.l,X		; DF C0 5F C0
	lda $7F40FF.l,X		; BF FF 40 7F
	ora $7F400F.l		; 0F 0F 40 7F
	brk $E0.b		; 00 E0
	adc $003F00.l,X		; 7F 00 3F 00
	and $000000.l,X		; 3F 00 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	ldy #$0020.w		; A0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $DE.b		; 00 DE
	ora $33.b,X		; 15 33
	ora ($0E.b,X)		; 01 0E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $15.b		; 00 15
	jsr $0C01.w		; 20 01 0C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $6F0E.w,Y		; F9 0E 6F
	inc $FEDF.w,X		; FE DF FE
	sbc [$FE.b],Y		; F7 FE
	inc $FFFF.w,X		; FE FF FF
	sbc $3FF7EB.l		; EF EB F7 3F
	cmp $08.b,S		; C3 08
	asl $60.b		; 06 60
	stz $3ECE.w,X		; 9E CE 3E
	ror $F8.b		; 66 F8
	cld		; D8
	sbc [$A7.b]		; E7 A7
	iny		; C8
	sbc ($05.b)		; F2 05
	rep #$05		; C2 05
	lda ($93.b)		; B2 93
	ldx $80.b		; A6 80
	lda ($90.b,S),Y		; B3 90
	stz $5C.b		; 64 5C
	sed		; F8
	asl $F6FC.w		; 0E FC F6
	sbc ($FE.b)		; F2 FE
	sbc ($FE.b,S),Y		; F3 FE
	sty $9F40.w		; 8C 40 9F
	rti		; 40

	sta $804340.l		; 8F 40 43 80
	ora #$30.b		; 09 30
	sbc $08.b,X		; F5 08
	cmp ($F8.b,X)		; C1 F8
	sbc ($F8.b,X)		; E1 F8
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FF00.w,X		; FE 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $C000.w,X		; FE 00 C0
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	ora [$DE.b]		; 07 DE
	ora [$1F.b],Y		; 17 1F
	ora [$FF.b],Y		; 17 FF
	sbc [$0F.b],Y		; F7 0F
	sbc [$07.b],Y		; F7 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	brk $F4.b		; 00 F4
	ora $E4.b,S		; 03 E4
	ora $E6.b,S		; 03 E6
	ora $07.b,S		; 03 07
	ora $05.b,S		; 03 05
	ora $03.b,S		; 03 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	bmi   7.b		; 30 07
	bmi  11.b		; 30 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	ora $C6.b,S		; 03 C6
	bra -10.b		; 80 F6
	and ($3B.b,X)		; 21 3B
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora ($00.b,X)		; 01 00
	eor $42.b,S		; 43 42
	bne  16.b		; D0 10
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$A060.w		; C0 60 A0
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	sed		; F8
	ora $000ECE.l,X		; 1F CE 0E 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $F1.b		; 00 F1
	brk $AF.b		; 00 AF
	lsr $FF.b		; 46 FF
	asl $3A.b,X		; 16 3A
	ora $0E.b		; 05 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $46.b		; 00 46
	bpl  22.b		; 10 16
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	inc $0704.w,X		; FE 04 07
	rti		; 40

	cpy #$F010.w		; C0 10 F0
	tsb $3C.b		; 04 3C
	cop $0E.b		; 02 0E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	jsr $FA20.w		; 20 20 FA
	cop $BF.b		; 02 BF
	bra  47.b		; 80 2F
	jsr $080B.w		; 20 0B 08
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $271B.w,X		; 1E 1B 27
	tsa		; 3B
	eor $FCB77D.l,X		; 5F 7D B7 FC
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$1AE0.w		; E0 E0 1A
	brk $23.b		; 00 23
	clc		; 18
	eor $843C.w		; 4D 3C 84
	sei		; 78
	sed		; F8
	bpl -24.b		; 10 E8
	bcs -80.b		; B0 B0
	rti		; 40

	cpx #$0300.w		; E0 00 03
	sbc [$0D.b]		; E7 0D
	lda $04.b,S		; A3 04
	tyx		; BB
	cop $B9.b		; 02 B9
	and ($4E.b,X)		; 21 4E
	and ($4C.b,S),Y		; 33 4C
	ora ($3A.b,X)		; 01 3A
	ora ($00.b,X)		; 01 00
	ora $5C1B.w,Y		; 19 1B 5C
	eor $4D4C.w,X		; 5D 4C 4D
	ror $66.b		; 66 66
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	inc $F9B6.w,X		; FE B6 F9
	adc $E7E7.w,Y		; 79 E7 E7
	ora $E7FC3C.l,X		; 1F 3C FC E7
	ora $70A0FF.l,X		; 1F FF A0 70
	lda $B13CDA.l,X		; BF DA 3C B1
	pha		; 48
	eor [$A0.b]		; 47 A0
	ora $03FC00.l,X		; 1F 00 FC 03
	ora $008000.l,X		; 1F 00 80 00
	bcs   0.b		; B0 00
	bcc  96.b		; 90 60
	bit $E6F0.w,X		; 3C F0 E6
	cpx $8A.b		; E4 8A
	sty $1816.w		; 8C 16 18
	inx		; E8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	sed		; F8
	rts		; 60

	brk $F0.b		; 00 F0
	brk $E4.b		; 00 E4
	clc		; 18
	sty $1870.w		; 8C 70 18
	cpx #$00F0.w		; E0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	ora $1F.b,S		; 03 1F
	ora $0F.b		; 05 0F
	asl $0F.b		; 06 0F
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	.db $42, $1C		; 42 1C
	stx $70.b		; 86 70
	sty $20.b		; 84 20
	php		; 08
	jsr $0030.w		; 20 30 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	jsr ($78FC.w,X)		; FC FC 78
	sei		; 78
	sei		; 78
	sei		; 78
	beq -16.b		; F0 F0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	brk $A8.b		; 00 A8
	bpl 100.b		; 10 64
	tya		; 98
	pea $FAF8.w		; F4 F8 FA
	jsr ($40BE.w,X)		; FC BE 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tya		; 98
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $40.b		; 00 40
	brk $47.b		; 00 47
	tsb $7F.b		; 04 7F
	ora $2D.b,S		; 03 2D
	trb $13.b		; 14 13
	ora ($0F.b,X)		; 01 0F
	ora $0B.b,S		; 03 0B
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	sec		; 38
	ora $00.b,S		; 03 00
	trb $02.b		; 14 02
	ora ($0C.b,X)		; 01 0C
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	cop $1B.b		; 02 1B
	ora $003F.w		; 0D 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $0000.w		; 0D 00 00
	brk $1C.b		; 00 1C
	brk $23.b		; 00 23
	trb $0718.w		; 1C 18 07
	sbc $1E.b		; E5 1E
	and $7CFAFD.l,X		; 3F FD FA 7C
	lda $00C040.l,X		; BF 40 C0 00
	brk $00.b		; 00 00
	trb $0700.w		; 1C 00 07
	brk $1E.b		; 00 1E
	brk $FD.b		; 00 FD
	brk $7C.b		; 00 7C
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $56.b		; 00 56
	jsr $76ED.w		; 20 ED 76
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7600.w		; 20 00 76
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpy #$7040.w		; C0 40 70
	ldy #$0030.w		; A0 30 00
	bpl -96.b		; 10 A0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	cpy #$0060.w		; C0 60 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	ora $810704.l		; 0F 04 07 81
	sta ($40.b,X)		; 81 40
	cpy #$F010.w		; C0 10 F0
	php		; 08
	sec		; 38
	cop $1E.b		; 02 1E
	brk $07.b		; 00 07
	sbc ($01.b),Y		; F1 01
	plx		; FA
	cop $7E.b		; 02 7E
	brk $BF.b		; 00 BF
	bra  47.b		; 80 2F
	jsr $1017.w		; 20 17 10
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	sbc ($FC.b,S),Y		; F3 FC
	sbc $FA.b		; E5 FA
	clc		; 18
	sbc $90.b,S		; E3 90
	cmp $034C01.l		; CF 01 4C 03
	jsr ($E340.w,X)		; FC 40 E3
	brk $BC.b		; 00 BC
	rts		; 60

	sed		; F8
	cpy $E4.b		; C4 E4
	trb $381C.w		; 1C 1C 38
	sec		; 38
	lda ($B3.b,S),Y		; B3 B3
	ora [$07.b]		; 07 07
	trb $401C.w		; 1C 1C 40
	rti		; 40

	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
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
	brk $0E.b		; 00 0E
	brk $1A.b		; 00 1A
	tsb $0695.w		; 0C 95 06
	sbc ($13.b)		; F2 13
	eor $C939.w,Y		; 59 39 C9
	lda $5DED.w,Y		; B9 ED 5D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0600.w		; 0C 00 06
	php		; 08
	ora ($0C.b,S),Y		; 13 0C
	and $B986.w,Y		; 39 86 B9
	asl $5D.b		; 06 5D
	cop $00.b		; 02 00
	ora $141808.l		; 0F 08 18 14
	bmi  47.b		; 30 2F
	rts		; 60

	sta $40.b,S		; 83 40
	stx $50.b		; 86 50
	bra  97.b		; 80 61
	ldy $66.b		; A4 66
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	ora $19191F.l,X		; 1F 1F 19 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	nop		; EA
	tas		; 1B
	bne -80.b		; D0 B0
	wai		; CB
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	sta $009F00.l		; 8F 00 9F 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	cpy #$CCFC.w		; C0 FC CC
	ora $000000.l		; 0F 00 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	sta $5F.b,S		; 83 5F
	sbc $3BFFDF.l,X		; FF DF FF 3B
	and $771E2F.l,X		; 3F 2F 1E 77
	eor $6F5F7F.l,X		; 5F 7F 5F 6F
	eor $CD0281.l,X		; 5F 81 02 CD
	dec A		; 3A
	cmp $2A3A.w		; CD 3A 2A
	cmp $DC02.w,X		; DD 02 DC
	eor $8E.b,X		; 55 8E
	lsr $4B87.w,X		; 5E 87 4B
	sta [$F4.b],Y		; 97 F4
	sbc $60FEFC.l,X		; FF FC FE 60
	.db $82, $E0, $03		; 82 E0 03
	bvc -96.b		; 50 A0
	inx		; E8
	bcs -76.b		; B0 B4
	cld		; D8
	ldy $04D8.w,X		; BC D8 04
	sed		; F8
	sbc $0101.w,X		; FD 01 01
	cmp ($00.b,X)		; C1 00
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $7A.b		; 00 7A
	ora $BE.b,S		; 03 BE
	sta $BE.b,S		; 83 BE
	sta $3E.b,S		; 83 3E
	sta $7E.b,S		; 83 7E
	cmp $5E.b,S		; C3 5E
	cmp $1E.b,S		; C3 1E
	cmp $1E.b,S		; C3 1E
	cmp $FC.b,S		; C3 FC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	bra -68.b		; 80 BC
	bra  60.b		; 80 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($8040.w,X)		; 7C 40 80
	bcs -96.b		; B0 A0
	bcs -96.b		; B0 A0
	bcs -96.b		; B0 A0
	clv		; B8
	bra -104.b		; 80 98
	bcc -104.b		; 90 98
	bcc -104.b		; 90 98
	bra -116.b		; 80 8C
	rts		; 60

	jsr $0040.w		; 20 40 00
	rti		; 40

	brk $50.b		; 00 50
	bpl 112.b		; 10 70
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	brk $78.b		; 00 78
	php		; 08
	ldy #$8038.w		; A0 38 80
	sbc ($00.b),Y		; F1 00
	cmp $01.b,S		; C3 01
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $0C04.w		; 0C 04 0C
	bne  16.b		; D0 10
	rti		; 40

	rti		; 40

	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	jsr $44E3.w		; 20 E3 44
	dec $80.b		; C6 80
	stx $08.b		; 86 08
	tsb $1C10.w		; 0C 10 1C
	brk $18.b		; 00 18
	jsr $4030.w		; 20 30 40
	bvs  94.b		; 70 5E
	.db $42, $B8		; 42 B8
	bra 124.b		; 80 7C
	tsb $F0.b		; 04 F0
	brk $E8.b		; 00 E8
	php		; 08
	beq  16.b		; F0 10
	cpy #$A000.w		; C0 00 A0
	jsr $0E02.w		; 20 02 0E
	ora $1C.b		; 05 1C
	ora [$30.b],Y		; 17 30
	and $C05E60.l		; 2F 60 5E C0
	and $6481.w,Y		; 39 81 64
	ora [$50.b]		; 07 50
	asl $0001.w,X		; 1E 01 00
	phd		; 0B
	php		; 08
	ora $001F00.l		; 0F 00 1F 00
	and $80FE00.l,X		; 3F 00 FE 80
	plx		; FA
	cop $E8.b		; 02 E8
	php		; 08
	cpy #$8078.w		; C0 78 80
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0020.w		; A0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $03.b,S		; 03 03
	brk $04.b		; 00 04
	ora $18.b,S		; 03 18
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
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
	brk $1C.b		; 00 1C
	sed		; F8
	jmp ($7C30.w,X)		; 7C 30 7C
	tsb $3F2B.w		; 0C 2B 3F
	and $1F173F.l		; 2F 3F 17 1F
	phd		; 0B
	ora $180707.l		; 0F 07 07 18
	brk $30.b		; 00 30
	brk $0C.b		; 00 0C
	php		; 08
	pld		; 2B
	trb $1F22.w		; 1C 22 1F
	ora ($0D.b,S),Y		; 13 0D
	phd		; 0B
	tsb $07.b		; 04 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $6D.b		; 00 6D
	ora $ED75.w,X		; 1D 75 ED
	cmp [$EF.b],Y		; D7 EF
	ror A		; 6A
	adc [$7A.b],Y		; 77 7A
	adc [$FF.b],Y		; 77 FF
	plx		; FA
	lda $F5FA.w		; AD FA F5
	plx		; FA
	ora $6D02.w,X		; 1D 02 6D
	cop $4F.b		; 02 4F
	jsr $30E7.w		; 20 E7 30
	sbc [$20.b],Y		; F7 20
	sta ($68.b)		; 92 68
	tax		; AA
	bvc -14.b		; 50 F2
	php		; 08
	sta ($4F.b,X)		; 81 4F
	sta $59.b,X		; 95 59
	sta $78AF79.l		; 8F 79 AF 78
	sbc [$58.b],Y		; F7 58
	adc ($78.b,S),Y		; 73 78
	inc $1C.b		; E6 1C
	ldy #$30C7.w		; A0 C7 30
	bmi  39.b		; 30 27
	and ($07.b,X)		; 21 07
	ora ($17.b,X)		; 01 17
	bpl 111.b		; 10 6F
	php		; 08
	sbc $000308.l		; EF 08 03 00
	cpy #$4800.w		; C0 00 48
	ldy #$63B8.w		; A0 B8 63
	ora $C7.b,X		; 15 C7
	ora $C6.b,S		; 03 C6
	plb		; AB
	adc $817F.w		; 6D 7F 81
	cmp [$85.b]		; C7 85
	xce		; FB
	lda $009F.w,Y		; B9 9F 00
	trb $B900.w		; 1C 00 B9
	brk $BA.b		; 00 BA
	ora ($11.b,X)		; 01 11
	cop $81.b		; 02 81
	cop $85.b		; 02 85
	sec		; 38
	lda $7904.w,Y		; B9 04 79
	ora ($CF.b,X)		; 01 CF
	cpy #$F818.w		; C0 18 F8
	ora $FF.b,S		; 03 FF
	cpx $F9FB.w		; EC FB F9
	sbc $F7FFFB.l,X		; FF FB FF F7
	sbc $3F00FE.l,X		; FF FE 00 3F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	cpx #$F408.w		; E0 08 F4
	eor #$F6.b		; 49 F6
	inx		; E8
	sbc [$F7.b],Y		; F7 F7
	xce		; FB
	adc [$5F.b]		; 67 5F
	adc $1FFF5F.l		; 6F 5F FF 1F
	sbc $0F0EC0.l,X		; FF C0 0E 0F
	and ($03.b)		; 32 03
	ply		; 7A
	ora $7A.b,S		; 03 7A
	ora $43.b,S		; 03 43
	sta $1F9F46.l,X		; 9F 46 9F 1F
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	bne -16.b		; D0 F0
	cpy #$00E0.w		; C0 E0 00
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$F0C0.w		; E0 C0 F0
	bne   0.b		; D0 00
	cpy #$0000.w		; C0 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1E20.w		; 20 20 1E
	eor $2E.b,S		; 43 2E
	adc $2E.b,S		; 63 2E
	adc $6E.b,S		; 63 6E
	sbc $CE.b,S		; E3 CE
	cmp $C2.b,S		; C3 C2
	ora $EC.b,S		; 03 EC
	asl $1CF8.w		; 0E F8 1C
	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	sty $8C88.w		; 8C 88 8C
	php		; 08
	stx $C640.w		; 8E 40 C6
	mvp $00,$C6		; 44 C6 00
	cmp $02.b,S		; C3 02
	eor $22.b,S		; 43 22
	adc $78.b,S		; 63 78
	php		; 08
	bvs   0.b		; 70 00
	pea $BC84.w		; F4 84 BC
	sty $38.b		; 84 38
	brk $7E.b		; 00 7E
	.db $42, $3C		; 42 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	ora #$19.b		; 09 19
	brk $11.b		; 00 11
	cop $13.b		; 02 13
	brk $33.b		; 00 33
	trb $36.b		; 14 36
	bvs  22.b		; 70 16
	ora [$00.b]		; 07 00
	ora $000608.l		; 0F 08 06 00
	ora $000C01.l		; 0F 01 0C 00
	asl $0812.w,X		; 1E 12 08
	brk $0C.b		; 00 0C
	tsb $00.b		; 04 00
	rts		; 60

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
	bra -128.b		; 80 80
	beq  16.b		; F0 10
	clc		; 18
	bmi   4.b		; 30 04
	clc		; 18
	cop $0E.b		; 02 0E
	ora $08.b,S		; 03 08
	and ($80.b,X)		; 21 80
	cmp $0000.w,Y		; D9 00 00
	brk $00.b		; 00 00
	cpx #$F8E0.w		; E0 E0 F8
	sed		; F8
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FEFE.w,X)		; FC FE FE
	rol $26.b		; 26 26
	inc A		; 1A
	sbc $4C9ED4.l,X		; FF D4 9E 4C
	dec $1CC0.w,X		; DE C0 1C
	cpy #$0010.w		; C0 10 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$6000.w		; A0 00 60
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $1E.b		; 02 1E
	bit $0C.b,X		; 34 0C
	cld		; D8
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	php		; 08
	and [$01.b],Y		; 37 01
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	tas		; 1B
	ora $26.b		; 05 26
	trb $3C4E.w		; 1C 4E 3C
	ror $DD0C.w,X		; 7E 0C DD
	asl $1C2E.w		; 0E 2E 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	trb $3C01.w		; 1C 01 3C
	ora ($0C.b,X)		; 01 0C
	ora ($0E.b,X)		; 01 0E
	brk $1C.b		; 00 1C
	brk $F8.b		; 00 F8
	lda ($BC.b,S),Y		; B3 BC
	txs		; 9A
	pei ($48.b)		; D4 48
	cld		; D8
	brk $A0.b		; 00 A0
	rti		; 40

	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	cop $98.b		; 02 98
	rti		; 40

	pha		; 48
	jsr $2000.w		; 20 00 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2A.b		; 00 2A
	trb $003C.w		; 1C 3C 00
	bit $10.b,X		; 34 10
	bit $00.b,X		; 34 00
	sec		; 38
	bpl  40.b		; 10 28
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pld		; 2B
	trb $3B55.w		; 1C 55 3B
	plb		; AB
	adc [$F7.b],Y		; 77 F7
	eor $BD3F5E.l		; 4F 5E 3F BD
	ror $FD7B.w,X		; 7E 7B FD
	plx		; FA
	jmp ($001C.w,X)		; 7C 1C 00
	tsa		; 3B
	brk $77.b		; 00 77
	brk $4F.b		; 00 4F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $FD.b		; 00 FD
	brk $7C.b		; 00 7C
	ora ($76.b,X)		; 01 76
	dec A		; 3A
	bit $18.b,X		; 34 18
	trb $0804.w		; 1C 04 08
	brk $07.b		; 00 07
	php		; 08
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	dec A		; 3A
	ora ($18.b,X)		; 01 18
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
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
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($1F.b,X)		; 01 1F
	ora $0E1F1F.l,X		; 1F 1F 1F 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F0A.w,X		; 1D 0A 1F
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	cop $0B.b		; 02 0B
	ora $09.b		; 05 09
	asl $0B.b		; 06 0B
	ora [$0B.b]		; 07 0B
	ora [$0A.b]		; 07 0A
	ora $0D.b		; 05 0D
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	cpy #$C0B0.w		; C0 B0 C0
	cli		; 58
	bcc  -4.b		; 90 FC
	plp		; 28
	rol $0000.w,X		; 3E 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $90.b		; 00 90
	jsr $0028.w		; 20 28 00
	brk $00.b		; 00 00
	bit $5F12.w		; 2C 12 5F
	bit $3E5D.w,X		; 3C 5D 3E
	sbc $64E600.l,X		; FF 00 E6 64
	inc $E400.w,X		; FE 00 E4
	cli		; 58
	jmp.w [$1040]		; DC 40 10
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	clc		; 18
	brk $00.b		; 00 00
	cli		; 58
	brk $40.b		; 00 40
	jsr $3273.w		; 20 73 32
	adc $24FB00.l,X		; 7F 00 FB 24
	lda [$40.b]		; A7 40
	txy		; 9B
	rts		; 60

	lda $1AFD58.l,X		; BF 58 FD 1A
	lda $321A.w		; AD 1A 32
	tsb $0000.w		; 0C 00 00
	bit $00.b		; 24 00
	rti		; 40

	clc		; 18
	rts		; 60

	tsb $58.b		; 04 58
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
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
	brk $15.b		; 00 15
	and [$00.b],Y		; 37 00
	rol $00.b		; 26 00
	rol $03.b		; 26 03
	rol $09.b		; 26 09
	bit $2C01.w		; 2C 01 2C
	ora $2C.b,S		; 03 2C
	asl $3C.b,X		; 16 3C
	php		; 08
	brk $1D.b		; 00 1D
	tsb $1B.b		; 04 1B
	cop $19.b		; 02 19
	brk $13.b		; 00 13
	brk $1B.b		; 00 1B
	php		; 08
	ora [$04.b],Y		; 17 04
	ora $00.b,S		; 03 00
	rts		; 60

	php		; 08
	bne  24.b		; D0 18
	cpy #$E018.w		; C0 18 E0
	bmi -128.b		; 30 80
	bmi  64.b		; 30 40
	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	brk $09.b		; 00 09
	ora $0C1F08.l,X		; 1F 08 1F 0C
	ora $081B0A.l,X		; 1F 0A 1B 08
	ora $1D0D.w,Y		; 19 0D 1D
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	ora [$01.b]		; 07 01
	cop $00.b		; 02 00
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	bvs   6.b		; 70 06
	stz $06.b,X		; 74 06
	clv		; B8
	.db $82, $38, $83		; 82 38 83
	lsr $1CC3.w,X		; 5E C3 1C
	cmp ($0C.b,X)		; C1 0C
	cmp ($A0.b,X)		; C1 A0
	sbc ($FC.b,X)		; E1 FC
	tsb $F8.b		; 04 F8
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	.db $82, $3C, $00		; 82 3C 00
	ror $BE40.w,X		; 7E 40 BE
	bra  30.b		; 80 1E
	brk $ED.b		; 00 ED
	lda $734727.l		; AF 27 47 73
	eor ($73.b),Y		; 51 73
	bvc  -2.b		; 50 FE
	ora ($7F.b,X)		; 01 7F
	sbc $2FE060.l,X		; FF 60 E0 2F
	cpx #$17A9.w		; E0 A9 17
	mvp $51,$9B		; 44 9B 51
	sty $8C50.w		; 8C 50 8C
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	sta $405F80.l,X		; 9F 80 5F 40
	cpx #$A0C0.w		; E0 C0 A0
	bra  32.b		; 80 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cmp $7FFF7F.l,X		; DF 7F FF 7F
	eor $8F2CDE.l,X		; 5F DE 2C 8F
	lda $8F.b,S		; A3 8F
	adc [$1F.b],Y		; 77 1F
	dec $AE1F.w		; CE 1F AE
	and $773A4D.l,X		; 3F 4D 3A 77
	tsb $052A.w		; 0C 2A 05
	stz $03.b,X		; 74 03
	bvs   7.b		; 70 07
	sep #$07		; E2 07
	inc $0E.b		; E6 0E
	dec $0E.b		; C6 0E
	brk $0F.b		; 00 0F
	php		; 08
	clc		; 18
	ora $20.b,S		; 03 20
	and [$70.b],Y		; 37 70
	phk		; 4B
	cpx #$E023.w		; E0 23 E0
	asl $D0.b,X		; 16 D0
	mvp $00,$E1		; 44 E1 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $3F0F0F.l,X		; 1F 0F 0F 3F
	and $2F1F1F.l,X		; 3F 1F 1F 2F
	and $003E3E.l		; 2F 3E 3E 00
	bra -128.b		; 80 80
	cpx #$3020.w		; E0 20 30
	bra  12.b		; 80 0C
	bit $06.b		; 24 06
	stz $49.b		; 64 49
	bit $08B9.w		; 2C B9 08
	adc ($00.b)		; 72 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	sed		; F8
	sed		; F8
	ldx $46BE.w,Y		; BE BE 46
	lsr $8C.b		; 46 8C
	sty $F840.w		; 8C 40 F8
	bcc -72.b		; 90 B8
	brk $68.b		; 00 68
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $40.b		; 00 40
	rti		; 40

	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1B.b,X		; 35 1B
	jmp ($5533.w)		; 6C 33 55
	rol A		; 2A
	and #$16.b		; 29 16
	and $4D16.w		; 2D 16 4D
	rol $76.b,X		; 36 76
	and $6DDF.w		; 2D DF 6D
	clc		; 18
	brk $32.b		; 00 32
	brk $2A.b		; 00 2A
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $36.b		; 00 36
	brk $2D.b		; 00 2D
	brk $6D.b		; 00 6D
	brk $3F.b		; 00 3F
	ora $FE.b		; 05 FE
	bcs  -5.b		; B0 FB
	.db $62, $FD, $4D		; 62 FD 4D
	sbc $BFEF9F.l,X		; FF 9F EF BF
	cmp $AFEF9F.l,X		; DF 9F EF AF
	cmp ($04.b,X)		; C1 04
	bmi   1.b		; 30 01
	.db $62, $04, $4D		; 62 04 4D
	asl A		; 0A
	sta $1EA11C.l		; 8F 1C A1 1E
	sta [$2F.b],Y		; 97 2F
	lda $B0F017.l		; AF 17 F0 B0
	inc $FF7E.w,X		; FE 7E FF
	adc $9F7FFF.l,X		; 7F FF 7F 9F
	ora $CE9F9F.l,X		; 1F 9F 9F CE
	dec $C6C6.w		; CE C6 C6
	bcs   0.b		; B0 00
	ror $3D70.w		; 6E 70 3D
	ror $1A67.w,X		; 7E 67 1A
	tas		; 1B
	asl $95.b		; 06 95
	asl A		; 0A
	lsr A		; 4A
	sty $C6.b		; 84 C6
	bra  42.b		; 80 2A
	ora ($36.b),Y		; 11 36
	ora ($3D.b,X)		; 01 3D
	tsb $17.b		; 04 17
	brk $13.b		; 00 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	tsb $01.b		; 04 01
	php		; 08
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bit $3903.w,X		; 3C 03 39
	asl A		; 0A
	and $0938.w,Y		; 39 38 09
	bit $3F15.w		; 2C 15 3F
	clc		; 18
	eor $7F3E.w,X		; 5D 3E 7F
	brk $13.b		; 00 13
	bpl  14.b		; 10 0E
	php		; 08
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	ora ($00.b)		; 12 00
	clc		; 18
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1C.b		; 04 1C
	tsb $091C.w		; 0C 1C 09
	ora $1909.w,Y		; 19 09 19
	brk $31.b		; 00 31
	brk $31.b		; 00 31
	cop $33.b		; 02 33
	bpl  51.b		; 10 33
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $1E10.w,X		; 1E 10 1E
	bpl  28.b		; 10 1C
	bpl  13.b		; 10 0D
	ora ($A2.b,X)		; 01 A2
	sbc $00.b,S		; E3 00
	cmp $18.b,S		; C3 18
.INDEX 16
	rep #$5C		; C2 5C
	dec $30.b		; C6 30
	stx $B0.b		; 86 B0
	sty $F8.b		; 84 F8
	sty $0C60.w		; 8C 60 0C
	trb $BE00.w		; 1C 00 BE
	.db $82, $7C, $40		; 82 7C 40
	sec		; 38
	brk $FC.b		; 00 FC
	sty $78.b		; 84 78
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	php		; 08
	and $F017E0.l		; 2F E0 17 F0
	ora [$70.b],Y		; 17 70
	ora $70.b,S		; 03 70
	phd		; 0B
	sei		; 78
	ora $3C.b		; 05 3C
	brk $3C.b		; 00 3C
	cop $3E.b		; 02 3E
	eor $202F40.l,X		; 5F 40 2F 20
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora [$14.b],Y		; 17 14
	ora $0018.w,Y		; 19 18 00
	bmi -96.b		; 30 A0
	bmi -128.b		; 30 80
	bpl -64.b		; 10 C0
	clc		; 18
	bne  24.b		; D0 18
	cpx #$E008.w		; E0 08 E0
	tsb $0CE8.w		; 0C E8 0C
	cpx #$C020.w		; E0 20 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	ora ($04.b,X)		; 01 04
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	asl A		; 0A
	clc		; 18
	ora ($11.b,X)		; 01 11
	asl A		; 0A
	clc		; 18
	ora $0C.b,X		; 15 0C
	inc A		; 1A
	asl $03.b		; 06 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $DF.b		; 00 DF
	adc $BE7F16.l,X		; 7F 16 7F BE
	sbc $7DFF3E.l,X		; FF 3E FF 7D
	sbc $3AFEBE.l,X		; FF BE FE 3A
	ror $4CFF.w,X		; 7E FF 4C
	stz $8607.w,X		; 9E 07 86
	sec		; 38
	trb $3C3E.w		; 1C 3E 3C
	ror $7E39.w,X		; 7E 39 7E
	dec A		; 3A
	tsb $349A.w		; 0C 9A 34
	sty $0908.w		; 8C 08 09
	cmp $42.b,S		; C3 42
	cpy $03.b		; C4 03
	mvp $6C,$27		; 44 27 6C
	ora $F4D17C.l		; 0F 7C D1 F4
	cpx $F6.b		; E4 F6
	sed		; F8
	sbc [$3C.b],Y		; F7 3C
	bit $383B.w,X		; 3C 3B 38
	tsa		; 3B
	sec		; 38
	ora ($10.b,S),Y		; 13 10
	ora $00.b,S		; 03 00
	cmp $C26B04.l		; CF 04 6B C2
	bcs  96.b		; B0 60
	rts		; 60

	pea $C8A0.w		; F4 A0 C8
	cpy #$C030.w		; C0 30 C0
	bpl -128.b		; 10 80
	bpl -128.b		; 10 80
	rts		; 60

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	php		; 08
	php		; 08
	bne -112.b		; D0 90
	ldy #$E040.w		; A0 40 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	plb		; AB
	eor $1D7B.w,X		; 5D 7B 1D
	tsa		; 3B
	ora $013F.w,X		; 1D 3F 01
	ora $04.b,S		; 03 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	eor $1D00.w,X		; 5D 00 1D
	brk $1D.b		; 00 1D
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $07.b,S		; 03 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	rti		; 40

	rti		; 40

	ldy $B448.w		; AC 48 B4
	php		; 08
	ldy $C0.b		; A4 C0
	pla		; 68
	brk $68.b		; 00 68
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	pha		; 48
	pha		; 48
	cli		; 58
	cli		; 58
	bcc -112.b		; 90 90
	bcc -112.b		; 90 90
	brk $0F.b		; 00 0F
	php		; 08
	clc		; 18
	brk $20.b		; 00 20
	ora #$40.b		; 09 40
	eor $A01FC0.l,X		; 5F C0 1F A0
	phk		; 4B
	cpx #$E021.w		; E0 21 E0
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $30.b		; 00 30
	ldy #$C030.w		; A0 30 C0
	clc		; 18
	ldy #$1008.w		; A0 08 10
	bit $20.b,X		; 34 20
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	inx		; E8
	inx		; E8
	cpy #$FFC0.w		; C0 C0 FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$0F.b],Y		; F7 0F
	sbc [$FB.b],Y		; F7 FB
	ora [$1C.b]		; 07 1C
	cpx $F4D1.w		; EC D1 F4
	sbc ($F6.b)		; F2 F6
	sbc ($F3.b),Y		; F1 F3
	sbc ($05.b)		; F2 05
	inc $03.b,X		; F6 03
	sbc $02.b,X		; F5 02
	cop $04.b		; 02 04
	ora $E013F0.l		; 0F F0 13 E0
	cmp ($E0.b),Y		; D1 E0
	beq   0.b		; F0 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	cli		; 58
	sei		; 78
	sty $3C.b,X		; 94 3C
	cpx $803C.w		; EC 3C 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $98.b		; 00 98
	brk $C4.b		; 00 C4
	clc		; 18
	cpy $08.b		; C4 08
	and $7D3F3D.l,X		; 3F 3D 3F 7D
	rol $4BFD.w,X		; 3E FD 4B
	cpy $9FBE.w		; CC BE 9F
	.db $42, $1B		; 42 1B
	lda ($31.b,X)		; A1 31
	eor ($61.b,X)		; 41 61
	and $2D14.w,Y		; 39 14 2D
	clc		; 18
	eor $48.b,X		; 55 48
	sec		; 38
	tsb $6E.b		; 04 6E
	ora ($F2.b,X)		; 01 F2
	ora ($C1.b),Y		; 11 C1
	brk $81.b		; 00 81
	brk $FF.b		; 00 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $0000FF.l,X		; FF FF 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7FFF00.l,X		; FF 00 FF 7F
	sbc $F700FF.l,X		; FF FF 00 F7
	sei		; 78
	lda $727DF0.l		; AF F0 7D 72
	ora #$06.b		; 09 06
	ora ($0D.b)		; 12 0D
	and [$0D.b],Y		; 37 0D
	pld		; 2B
	ora $0A14.w,X		; 1D 14 0A
	rts		; 60

	jmp ($7C80.w,X)		; 7C 80 7C
	adc ($08.b)		; 72 08
	asl $00.b		; 06 00
	ora $0D00.w		; 0D 00 0D
	brk $1D.b		; 00 1D
	brk $0A.b		; 00 0A
	ora ($CE.b,X)		; 01 CE
	and $FF.b,X		; 35 FF
	cpx $65F7.w		; EC F7 65
	sbc [$95.b],Y		; F7 95
	sbc ($D1.b,S),Y		; F3 D1
	adc ($51.b,S),Y		; 73 51
	jsl $A1E241.l		; 22 41 E2 A1
	and $00.b,X		; 35 00
	cpx $6500.w		; EC 00 65
	php		; 08
	sta $08.b,X		; 95 08
	cmp ($0C.b),Y		; D1 0C
	eor ($8C.b),Y		; 51 8C
	eor ($9C.b,X)		; 41 9C
	lda ($1C.b,X)		; A1 1C
	rol $2E60.w		; 2E 60 2E
	rts		; 60

	asl $0E60.w		; 0E 60 0E
	rts		; 60

	asl $20.b		; 06 20
	asl $30.b,X		; 16 30
	asl $30.b,X		; 16 30
	cop $30.b		; 02 30
	ora $001F00.l,X		; 1F 00 1F 00
	and $203F20.l,X		; 3F 20 3F 20
	ora $000F00.l,X		; 1F 00 0F 00
	ora $101F00.l		; 0F 00 1F 10
	.db $82, $C3, $80		; 82 C3 80
	cmp $84.b,S		; C3 84
	dec $84.b		; C6 84
	dec $80.b		; C6 80
	dec $80.b		; C6 80
	dec $88.b		; C6 88
	cpy $CC88.w		; CC 88 CC
	bit $3E00.w,X		; 3C 00 3E
	cop $38.b		; 02 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $07.b		; 00 07
	ora $000B03.l		; 0F 03 0B 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	ora ($18.b,X)		; 01 18
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	bra -52.b		; 80 CC
	php		; 08
	jmp $4C08.w		; 4C 08 4C
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	jsr $0064.w		; 20 64 00
	stz $38.b		; 64 38
	php		; 08
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	clv		; B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $98.b		; 00 98
	brk $B8.b		; 00 B8
	jsr $0801.w		; 20 01 08
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	dey		; 88
	jmp ($6C08.w)		; 6C 08 6C
	rol $3A40.w,X		; 3E 40 3A
	jmp ($FC9A.w,X)		; 7C 9A FC
	rol $56C0.w,X		; 3E C0 56
	ldy $FE.b,X		; B4 FE
	brk $D0.b		; 00 D0
	rti		; 40

	bcs  32.b		; B0 20
	bra   0.b		; 80 00
	ldy $3C00.w,X		; BC 00 3C
	brk $80.b		; 00 80
	bra  52.b		; 80 34
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	cop $08.b		; 02 08
	phd		; 0B
	tas		; 1B
	tsb $11.b		; 04 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	asl $0F00.w		; 0E 00 0F
	ora $0802.w,Y		; 19 02 08
	ora $0C.b		; 05 0C
	ora $04.b,S		; 03 04
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $0860.w		; 20 60 08
	plp		; 28
	bpl  56.b		; 10 38
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $00.b		; 00 00
	sbc $3F3FFF.l,X		; FF FF 3F 3F
	ora $17171F.l,X		; 1F 1F 17 17
	ora $00000F.l		; 0F 0F 00 00
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $100000.l,X		; FF 00 00 10
	rti		; 40

	bvc   0.b		; 50 00
	rts		; 60

	brk $40.b		; 00 40
	beq   0.b		; F0 00
	cpx $1EF4.w		; EC F4 1E
	asl $FF.b,X		; 16 FF
	sbc [$E0.b],Y		; F7 E0
	cpx #$A0A0.w		; E0 A0 A0
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $F4.b		; 00 F4
	brk $12.b		; 00 12
	cpx $F7.b		; E4 F7
	tsb $A0.b		; 04 A0
	sbc ($E0.b,X)		; E1 E0
	sbc ($E0.b,X)		; E1 E0
	cpx #$00E0.w		; E0 E0 00
	jsr $A000.w		; 20 00 A0
	bra -96.b		; 80 A0
	bra -32.b		; 80 E0
	rti		; 40

	jsr $A0C0.w		; 20 C0 A0
	cpy #$C0A0.w		; C0 A0 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	rti		; 40

	brk $4C.b		; 00 4C
	bpl -108.b		; 10 94
	tya		; 98
	php		; 08
	sty $4C08.w		; 8C 08 4C
	bmi 124.b		; 30 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$6000.w		; E0 00 60
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$A000.w		; C0 00 A0
	bra -89.b		; 80 A7
	sta [$7B.b]		; 87 7B
	and $0000.w,X		; 3D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	sta [$40.b]		; 87 40
	ora $9FA6.w,Y		; 19 A6 9F
	sbc $BFFFBF.l,X		; FF BF FF BF
	sbc $9F1FFF.l,X		; FF FF 1F 9F
	brk $AA.b		; 00 AA
	and ($BF.b),Y		; 31 BF
	and $FF.b,X		; 35 FF
	rti		; 40

	bra 127.b		; 80 7F
	sta $7F9F7F.l,X		; 9F 7F 9F 7F
	asl $001F.w,X		; 1E 1F 00
	rts		; 60

	and ($44.b),Y		; 31 44
	and $40.b,X		; 35 40
	rti		; 40

	brk $0E.b		; 00 0E
	cop $06.b		; 02 06
	asl A		; 0A
	ora $0C.b,S		; 03 0C
	ora ($0F.b,X)		; 01 0F
	ora $0F.b,S		; 03 0F
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $A2.b,S		; E3 A2
	sbc $A2.b,S		; E3 A2
	sbc $22.b,S		; E3 22
	sbc $1F1180.l,X		; FF 80 11 1F
	wai		; CB
	ora $EA0EEA.l		; 0F EA 0E EA
	asl $1CA2.w		; 0E A2 1C
	ldx #$221C.w		; A2 1C 22
	trb $0000.w		; 1C 00 00
	nop		; EA
	asl A		; 0A
	beq   0.b		; F0 00
	sbc ($00.b),Y		; F1 00
	sbc ($00.b),Y		; F1 00
	cop $30.b		; 02 30
	cop $10.b		; 02 10
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $18.b		; 00 18
	ora $1B.b,S		; 03 1B
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora $000F10.l,X		; 1F 10 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080C08.l		; 0F 08 0C 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -52.b		; 80 CC
	bcc -36.b		; 90 DC
	bcc -40.b		; 90 D8
	ldy #$A0F8.w		; A0 F8 A0
	sed		; F8
	ldy #$B0F8.w		; A0 F8 B0
	sed		; F8
	bcc -36.b		; 90 DC
	sec		; 38
	php		; 08
	plp		; 28
	php		; 08
	jsr $1000.w		; 20 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   0.b		; 10 00
	brk $28.b		; 00 28
	php		; 08
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	brk $64.b		; 00 64
	bra 100.b		; 80 64
	cpy #$C064.w		; C0 64 C0
	stz $C0.b		; 64 C0
	stz $C8.b		; 64 C8
	jmp ($6CC8.w)		; 6C C8 6C
	dey		; 88
	jmp ($40D8.w)		; 6C D8 40
	cld		; D8
	rti		; 40

	tya		; 98
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $D0.b		; 00 D0
	rti		; 40

	ora $070B07.l		; 0F 07 0B 07
	ora $040C00.l		; 0F 00 0C 04
	ora $040C00.l		; 0F 00 0C 04
	ora $030700.l		; 0F 00 07 03
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	lsr $B4.b,X		; 56 B4
	ror $EE80.w,X		; 7E 80 EE
	trb $9CFE.w		; 1C FE 9C
	sbc $DF1E.w		; ED 1E DF
	stx $0ADB.w		; 8E DB 0A
	eor $08B484.l,X		; 5F 84 B4 08
	bra   0.b		; 80 00
	trb $9C00.w		; 1C 00 9C
	brk $1E.b		; 00 1E
	brk $8E.b		; 00 8E
	brk $0A.b		; 00 0A
	tsb $84.b		; 04 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	ora $1D1F.w		; 0D 1F 1D
	and $00003D.l,X		; 3F 3D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1900.w		; 0D 00 19
	tsb $2D.b		; 04 2D
	trb $70.b		; 14 70
	bra  -8.b		; 80 F8
	cpx #$68F4.w		; E0 F4 68
	nop		; EA
	sty $D6.b,X		; 94 D6
	clv		; B8
	dec A		; 3A
	jmp $245C6A.l		; 5C 6A 5C 24
	clc		; 18
	bra   0.b		; 80 00
	cpx #$6800.w		; E0 00 68
	brk $94.b		; 00 94
	brk $B8.b		; 00 B8
	brk $5C.b		; 00 5C
	bra  92.b		; 80 5C
	bra  24.b		; 80 18
	cpy #$A4B8.w		; C0 B8 A4
	bcs -84.b		; B0 AC
	beq  12.b		; F0 0C
	bvs  -8.b		; 70 F8
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	jsr $A030.w		; 20 30 A0
	rti		; 40

	tay		; A8
	pha		; 48
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $07.b		; 00 07
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	sty $DB.b		; 84 DB
	sty $C4.b		; 84 C4
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	clc		; 18
	asl $30.b,X		; 16 30
	and [$70.b]		; 27 70
	php		; 08
	rts		; 60

	plp		; 28
	sbc #$44.b		; E9 44
	dec $42.b,X		; D6 42
	sbc $07F02D.l		; EF 2D F0 07
	ora [$0F.b]		; 07 0F
	ora $1F0F0F.l		; 0F 0F 0F 1F
	ora $391717.l,X		; 1F 17 17 39
	and $1010.w,Y		; 39 10 10
	ora $784000.l		; 0F 00 40 78
	bvs   4.b		; 70 04
	bmi   4.b		; 30 04
	bit $0E.b		; 24 0E
	tsb $5E.b		; 04 5E
	tsb $BE.b		; 04 BE
	ldy $DE.b,X		; B4 DE
	bcs 124.b		; B0 7C
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$50E0.w		; E0 E0 50
	bvc -64.b		; 50 C0
	bra -96.b		; 80 A0
	rti		; 40

	ora $0D0F0D.l		; 0F 0D 0F 0D
	ora $1C1B.w		; 0D 1B 1C
	tsa		; 3B
	and $C75568.l		; 2F 68 55 C7
	lda #$8D.b		; A9 8D
	eor ($19.b),Y		; 51 19
	ora $0904.w		; 0D 04 09
	tsb $0B.b		; 04 0B
	brk $0B.b		; 00 0B
	brk $10.b		; 00 10
	brk $39.b		; 00 39
	brk $71.b		; 00 71
	brk $E1.b		; 00 E1
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $00.b		; 00 00
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3FFF00.l,X		; FF 00 FF 3F
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $1AEFFF.l		; EF FF EF 1A
	inc $0EF7.w		; EE F7 0E
	ora $D0FC.w,Y		; 19 FC D0
	pea $F3F1.w		; F4 F1 F3
	sbc $E70A.w		; ED 0A E7
	asl A		; 0A
	sbc $EB06.w		; ED 06 EB
	tsb $07.b		; 04 07
	php		; 08
	tas		; 1B
	cpx #$E013.w		; E0 13 E0
	bcc -32.b		; 90 E0
	ora ($02.b,S),Y		; 13 02
	ora $1F0C.w,X		; 1D 0C 1F
	bra -114.b		; 80 8E
	cmp $867342.l,X		; DF 42 73 86
	and ($46.b,S),Y		; 33 46
	ora ($26.b,S),Y		; 13 26
	ora $02.b,S		; 03 02
	tsb $020C.w		; 0C 0C 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $EC00.w		; 8C 00 EC
	jsr $10FC.w		; 20 FC 10
	jsr ($FF00.w,X)		; FC 00 FF
	bit $3837.w,X		; 3C 37 38
	asl $19.b,X		; 16 19
	ora $0C1303.l,X		; 1F 03 13 0C
	pld		; 2B
	ora $1B3D.w,X		; 1D 3D 1B
	and [$1B.b],Y		; 37 1B
	clc		; 18
	bit $1C20.w,X		; 3C 20 1C
	ora ($08.b),Y		; 11 08
	ora $00.b,S		; 03 00
	tsb $1D00.w		; 0C 00 1D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $FF.b		; 00 FF
	stx $F7.b		; 86 F7
	plp		; 28
	cmp $DF96.w,X		; DD 96 DF
	ora [$CF.b],Y		; 17 CF
	pha		; 48
	cmp $4ACE4B.l		; CF 4B CE 4A
	dec $42.b		; C6 42
	stx $00.b		; 86 00
	plp		; 28
	brk $96.b		; 00 96
	jsr $2017.w		; 20 17 20
	pha		; 48
	bmi  75.b		; 30 4B
	bmi  74.b		; 30 4A
	and ($42.b),Y		; 31 42
	and $0305.w,Y		; 39 05 03
	ora $03.b		; 05 03
	ora [$00.b]		; 07 00
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	ora $03.b		; 05 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	pea $FC78.w		; F4 78 FC
	brk $CC.b		; 00 CC
	pha		; 48
	jsr ($CC00.w,X)		; FC 00 CC
	pha		; 48
	jsr ($BC00.w,X)		; FC 00 BC
	sei		; 78
	ldy $7878.w,X		; BC 78 78
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	bmi   0.b		; 30 00
	brk $48.b		; 00 48
	bmi   0.b		; 30 00
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	cpy #$401C.w		; C0 1C 40
	rol $3E60.w,X		; 3E 60 3E
	rts		; 60

	asl $0E60.w		; 0E 60 0E
	rts		; 60

	asl $1E20.w		; 0E 20 1E
	bmi 127.b		; 30 7F
	rti		; 40

	and $001F00.l,X		; 3F 00 1F 00
	ora $203F00.l,X		; 1F 00 3F 20
	and $001F20.l,X		; 3F 20 1F 00
	ora $C60000.l		; 0F 00 00 C6
	bra -60.b		; 80 C4
	bra -60.b		; 80 C4
	dey		; 88
	cpy $CC80.w		; CC 80 CC
	bra -56.b		; 80 C8
	bcc -40.b		; 90 D8
	bra -40.b		; 80 D8
	ldy $3884.w,X		; BC 84 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	bmi   0.b		; 30 00
	jsr $3000.w		; 20 00 30
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $06.b		; 00 06
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $50.b		; 00 50
	ldy #$A050.w		; A0 50 A0
	tay		; A8
	bvc -24.b		; 50 E8
	bvc -44.b		; 50 D4
	pla		; 68
	pea $AA68.w		; F4 68 AA
	stz $FA.b,X		; 74 FA
	ldy $A0.b,X		; B4 A0
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $74.b		; 00 74
	brk $B4.b		; 00 B4
	brk $FC.b		; 00 FC
	bcs 120.b		; B0 78
	bmi 112.b		; 30 70
	brk $C0.b		; 00 C0
	bmi -64.b		; 30 C0
	beq  64.b		; F0 40
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	rts		; 60

	bcs   0.b		; B0 00
	bmi -128.b		; 30 80
	brk $80.b		; 00 80
	jsr $2020.w		; 20 20 20
	jsr $20A0.w		; 20 A0 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora $5813D0.l		; 0F D0 13 58
	and $7E.b,X		; 35 7E
	cop $3B.b		; 02 3B
	ora ($19.b,X)		; 01 19
	sbc $FF7F00.l,X		; FF 00 7F FF
	brk $00.b		; 00 00
	and $202720.l		; 2F 20 27 20
	ora $02.b,S		; 03 02
	ora $01.b		; 05 01
	asl $0008.w		; 0E 08 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $E008E0.l,X		; FF E0 08 E0
	php		; 08
	bra  48.b		; 80 30
	rts		; 60

	bmi   0.b		; 30 00
	cpx #$00E0.w		; E0 E0 00
	jmp.w [$3EEC]		; DC EC 3E
	rol $00F0.w		; 2E F0 00
	beq   0.b		; F0 00
	cpx #$C020.w		; E0 20 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	brk $26.b		; 00 26
	iny		; C8
	ldy #$C030.w		; A0 30 C0
	cpx #$4000.w		; E0 00 40
	cpy #$7860.w		; C0 60 78
	jsr $80B4.w		; 20 B4 80
	stz $D0.b,X		; 74 D0
	adc $00C027.l		; 6F 27 C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	php		; 08
	bpl   8.b		; 10 08
	and $14.b,S		; 23 14
	sbc $BFCFFF.l,X		; FF FF CF BF
	eor $7F5F7F.l,X		; 5F 7F 5F 7F
	sbc $049F1F.l,X		; FF 1F 9F 04
	lda $23.b,X		; B5 23
	cmp $00FF6B.l,X		; DF 6B FF 00
	bra 127.b		; 80 7F
	eor $3F4F3F.l		; 4F 3F 4F 3F
	ora $64041F.l		; 0F 1F 04 64
	and $48.b,S		; 23 48
	rtl		; 6B

	brk $F0.b		; 00 F0
	sbc ($D0.b),Y		; F1 D0
	beq -48.b		; F0 D0
	beq -48.b		; F0 D0
	beq -16.b		; F0 F0
	bpl  48.b		; 10 30
	bpl -72.b		; 10 B8
	bcc  56.b		; 90 38
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	cpx #$E090.w		; E0 90 E0
	bcc -32.b		; 90 E0
	bpl   0.b		; 10 00
	bpl -64.b		; 10 C0
	bra  80.b		; 80 50
	brk $C0.b		; 00 C0
	lsr A		; 4A
	cmp $12.b,S		; C3 12
	adc ($00.b,S),Y		; 73 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $0C00.w,X		; 3C 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora $0D.b		; 05 0D
	ora $0D.b,X		; 15 0D
	ora $07.b,X		; 15 07
	clc		; 18
	cop $0F.b		; 02 0F
	ora $0F.b,S		; 03 0F
	cop $0E.b		; 02 0E
	brk $0C.b		; 00 0C
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	php		; 08
	php		; 08
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	stx $02.b		; 86 02
	stx $02.b		; 86 02
	stx $02.b		; 86 02
	stx $02.b		; 86 02
	sbc $FFE300.l,X		; FF 00 E3 FF
	bpl  28.b		; 10 1C
	bne  28.b		; D0 1C
	cop $79.b		; 02 79
	cop $79.b		; 02 79
	cop $79.b		; 02 79
	cop $79.b		; 02 79
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	xba		; EB
	php		; 08
	xba		; EB
	php		; 08
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	ora [$01.b]		; 07 01
	ora $050B01.l		; 0F 01 0B 05
	inc A		; 1A
	ora $001F.w		; 0D 1F 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	sec		; 38
	cpx $EC28.w		; EC 28 EC
	plp		; 28
	cpx $BC00.w		; EC 00 BC
	bvc -84.b		; 50 AC
	bvc  -4.b		; 50 FC
	bra  -8.b		; 80 F8
	brk $38.b		; 00 38
	brk $28.b		; 00 28
	bpl  40.b		; 10 28
	bpl   0.b		; 10 00
	bpl  80.b		; 10 50
	brk $50.b		; 00 50
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	bmi   7.b		; 30 07
	bmi   7.b		; 30 07
	bpl  13.b		; 10 0D
	clc		; 18
	php		; 08
	clc		; 18
	brk $18.b		; 00 18
	cop $0A.b		; 02 0A
	ora [$0F.b]		; 07 0F
	ora $101F00.l		; 0F 00 1F 10
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $000508.l		; 0F 08 05 00
	brk $00.b		; 00 00
	bra -48.b		; 80 D0
	ldy #$80F0.w		; A0 F0 80
	beq -128.b		; F0 80
	cpx #$E080.w		; E0 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0EC3.w		; 1C C3 0E
	cmp $2E.b,S		; C3 2E
	sbc $2C.b,S		; E3 2C
	sbc ($0C.b,X)		; E1 0C
	sbc ($04.b,X)		; E1 04
	sbc ($14.b,X)		; E1 14
	sbc ($54.b),Y		; F1 54
	sbc ($3E.b),Y		; F1 3E
	cop $3C.b		; 02 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	lsr $0E40.w		; 4E 40 0E
	brk $44.b		; 00 44
	sbc ($44.b),Y		; F1 44
	sbc ($44.b),Y		; F1 44
	sbc ($64.b),Y		; F1 64
	sbc ($62.b),Y		; F1 62
	sbc ($62.b,S),Y		; F3 62
	sbc ($7F.b,S),Y		; F3 7F
	cpx #$0FFE.w		; E0 FE 0F
	asl $1E10.w,X		; 1E 10 1E
	bpl  46.b		; 10 2E
	jsr $000E.w		; 20 0E 00
	tsb $0C00.w		; 0C 00 0C
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
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
	brk $1C.b		; 00 1C
	trb $3E3E.w		; 1C 3E 3E
	ror $7E7E.w,X		; 7E 7E 7E
	ror $3E2E.w,X		; 7E 2E 3E
	inc A		; 1A
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1C00.w,X		; 1E 00 1C
	brk $2A.b		; 00 2A
	trb $3C5E.w		; 1C 5E 3C
	ror $2A3C.w		; 6E 3C 2A
	trb $0C12.w		; 1C 12 0C
	asl $0C.b,X		; 16 0C
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	cop $06.b		; 02 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	bra -32.b		; 80 E0
	cpy #$00E0.w		; C0 E0 00
	jsr $3000.w		; 20 00 30
	rts		; 60

	bmi -64.b		; 30 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	clc		; 18
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	bpl   4.b		; 10 04
	ora $060F04.l		; 0F 04 0F 06
	ora $060F06.l		; 0F 06 0F 06
	ora $0F0E07.l		; 0F 07 0E 0F
	brk $0B.b		; 00 0B
	asl $01.b		; 06 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $40.b		; 00 40
	bpl  64.b		; 10 40
	bpl  64.b		; 10 40
	bpl  32.b		; 10 20
	bmi  32.b		; 30 20
	bmi  -8.b		; 30 F8
	brk $E8.b		; 00 E8
	beq -24.b		; F0 E8
	beq -32.b		; F0 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $11.b		; 00 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $44A1.w		; 20 A1 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$0F0F.w		; E0 0F 0F
	phd		; 0B
	phd		; 0B
	and $5F5F3F.l,X		; 3F 3F 5F 5F
	and $6039.w,Y		; 39 39 60
	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra   1.b		; 80 01
	tsb $0401.w		; 0C 01 04
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	bit $3CE0.w,X		; 3C E0 3C
	rts		; 60

	sec		; 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	ldy #$E0B8.w		; A0 B8 E0
	sed		; F8
	cpx #$C0F8.w		; E0 F8 C0
	brk $C8.b		; 00 C8
	php		; 08
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $180A.w		; 0C 0A 18
	ora $31.b,X		; 15 31
	rol $67.b		; 26 67
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1800.w		; 0E 00 18
	brk $6F.b		; 00 6F
	cmp $70DFEF.l,X		; DF EF DF 70
	eor $5830BF.l		; 4F BF 30 58
	adc $17DF97.l,X		; 7F 97 DF 17
	sta $5F0F0F.l,X		; 9F 0F 0F 5F
	brk $5F.b		; 00 5F
	brk $8F.b		; 00 8F
	brk $D0.b		; 00 D0
	brk $98.b		; 00 98
	ora [$10.b]		; 07 10
	ora $0F0F13.l		; 0F 13 0F 0F
	brk $FF.b		; 00 FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $3F1FE0.l,X		; FF E0 1F 3F
	cpy #$FFF0.w		; C0 F0 FF
	sbc $F9FF.w,X		; FD FF F9
	sbc [$FF.b],Y		; F7 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	cpx #$FF00.w		; E0 00 FF
	sbc ($FE.b),Y		; F1 FE
	sbc ($0E.b),Y		; F1 0E
	sed		; F8
	sei		; 78
	sed		; F8
	sei		; 78
	sed		; F8
	jmp ($76D4.w,X)		; 7C D4 76
	ldx $73.b,Y		; B6 73
	cmp [$F1.b],Y		; D7 F1
	phd		; 0B
	clc		; 18
	ora $0C.b		; 05 0C
	pla		; 68
	bvc  56.b		; 50 38
	bvc 104.b		; 50 68
	bmi  88.b		; 30 58
	jsr $403C.w		; 20 3C 40
	dec $0700.w		; CE 00 07
	brk $03.b		; 00 03
	brk $DD.b		; 00 DD
	ldx #$5976.w		; A2 76 59
	adc $213F5D.l,X		; 7F 5D 3F 21
	rol $3B2D.w,X		; 3E 2D 3B
	rol A		; 2A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	ldx #$5900.w		; A2 00 59
	bra  93.b		; 80 5D
	bra  33.b		; 80 21
	cpy #$C02D.w		; C0 2D C0
	rol A		; 2A
	cpy $0A.b		; C4 0A
	cpx $0A.b		; E4 0A
	cpx $40.b		; E4 40
	bra -96.b		; 80 A0
	rti		; 40

	bcc  96.b		; 90 60
	pha		; 48
	bcs -88.b		; B0 A8
	bne -88.b		; D0 A8
	bne -48.b		; D0 D0
	cpx #$E0D0.w		; E0 D0 E0
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $0E.b		; 00 0E
	cmp $2E.b,S		; C3 2E
	sbc $2C.b,S		; E3 2C
	sbc ($0C.b,X)		; E1 0C
	sbc ($04.b,X)		; E1 04
	sbc ($14.b,X)		; E1 14
	sbc ($54.b),Y		; F1 54
	sbc ($44.b),Y		; F1 44
	sbc ($3C.b),Y		; F1 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	lsr $0E40.w		; 4E 40 0E
	brk $1E.b		; 00 1E
	bpl -40.b		; 10 D8
	bvc -40.b		; 50 D8
	bvc -40.b		; 50 D8
	brk $78.b		; 00 78
	ldy #$A058.w		; A0 58 A0
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	jsr $2050.w		; 20 50 20
	brk $20.b		; 00 20
	ldy #$A000.w		; A0 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $7F1F1F.l		; 0F 1F 1F 7F
	ora $D82CBC.l,X		; 1F BC 2C D8
	pha		; 48
	cli		; 58
	bpl 120.b		; 10 78
	bmi -80.b		; 30 B0
	cpy #$070B.w		; C0 0B 07
	ora [$0F.b],Y		; 17 0F
	phd		; 0B
	trb $4824.w		; 1C 24 48
	pha		; 48
	jsr $2090.w		; 20 90 20
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $1E0B.w		; 0D 0B 1E
	inc A		; 1A
	ora $00001B.l,X		; 1F 1B 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	brk $1A.b		; 00 1A
	ora #$13.b		; 09 13
	php		; 08
	phd		; 0B
	asl $0F.b		; 06 0F
	brk $0F.b		; 00 0F
	asl $0F.b		; 06 0F
	brk $0F.b		; 00 0F
	asl $0F.b		; 06 0F
	brk $0B.b		; 00 0B
	asl $0B.b		; 06 0B
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $F8.b		; 00 F8
	brk $98.b		; 00 98
	bcc  -8.b		; 90 F8
	brk $98.b		; 00 98
	bcc  -8.b		; 90 F8
	brk $78.b		; 00 78
	beq 120.b		; F0 78
	beq  -8.b		; F0 F8
	bvs   0.b		; 70 00
	brk $90.b		; 00 90
	rts		; 60

	brk $00.b		; 00 00
	bcc  96.b		; 90 60
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	ora [$50.b]		; 07 50
	and $78.b,S		; 23 78
	eor #$3C.b		; 49 3C
	cli		; 58
	rol $03F8.w,X		; 3E F8 03
	sbc $0707F8.l,X		; FF F8 07 07
	sed		; F8
	sed		; F8
	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	asl $02.b		; 06 02
	sed		; F8
	brk $07.b		; 00 07
	sed		; F8
	sed		; F8
	ora [$C0.b]		; 07 C0
	bpl -32.b		; 10 E0
	bcs   0.b		; B0 00
	rts		; 60

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	cpy #$B800.w		; C0 00 B8
	cld		; D8
	jmp ($E05C.w,X)		; 7C 5C E0
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	brk $4C.b		; 00 4C
	bcc   0.b		; 90 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	sed		; F8
	bra -120.b		; 80 88
	brk $0C.b		; 00 0C
	clc		; 18
	tsb $84B0.w		; 0C B0 84
	bmi -124.b		; 30 84
	sec		; 38
	stx $38.b		; 86 38
	stx $00.b		; 86 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $F8.b		; 00 F8
	bra 124.b		; 80 7C
	tsb $7C.b		; 04 7C
	tsb $28.b		; 04 28
	.db $62, $1A, $33		; 62 1A 33
	tsb $11.b		; 04 11
	ora $0519.w		; 0D 19 05
	tsb $0503.w		; 0C 03 05
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	trb $0C00.w		; 1C 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $0C.b		; 00 0C
	phd		; 0B
	ora $07.b		; 05 07
	ora $07.b		; 05 07
	cmp $004901.l		; CF 01 49 00
	rtl		; 6B

	jsl $FF76DD.l		; 22 DD 76 FF
	sbc ($08.b)		; F2 08
	ora [$04.b]		; 07 04
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	stx $22.b		; 86 22
	sty $16.b		; 84 16
	rts		; 60

	.db $62, $F0, $EF		; 62 F0 EF
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $F2F1FF.l,X		; FF FF F1 F2
	rti		; 40

	tad		; 5B
	sec		; 38
	sbc ($B0.b,S),Y		; F3 B0
	sbc $0F1A.w,X		; FD 1A 0F
	beq -15.b		; F0 F1
	inc $FEF9.w,X		; FE F9 FE
	sbc ($F0.b),Y		; F1 F0
	rti		; 40

	eor $8538.w		; 4D 38 85
	bcs  12.b		; B0 0C
	inc A		; 1A
	brk $02.b		; 00 02
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $19.b		; 00 19
	php		; 08
	ora $1B08.w,Y		; 19 08 1B
	php		; 08
	sbc $FD8D03.l,X		; FF 03 8D FD
	eor ($71.b,X)		; 41 71
	eor ($71.b,X)		; 41 71
	brk $31.b		; 00 31
	php		; 08
	inc $08.b		; E6 08
	inc $08.b		; E6 08
	cpx $00.b		; E4 00
	brk $62.b		; 00 62
	rts		; 60

	ldx $AE20.w		; AE 20 AE
	jsr $21EF.w		; 20 EF 21
	cpx #$C0C0.w		; E0 C0 C0
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	asl $0F.b		; 06 0F
	cop $1F.b		; 02 1F
	cop $17.b		; 02 17
	asl A		; 0A
	and $1A.b,X		; 35 1A
	and $000301.l,X		; 3F 01 03 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl A		; 0A
	brk $1A.b		; 00 1A
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	cpx #$665B.w		; E0 5B 66
	adc $314F0C.l,X		; 7F 0C 4F 31
	lda $6DF775.l		; AF 75 F7 6D
	cmp $14666D.l,X		; DF 6D 66 14
	bra 112.b		; 80 70
	lsr $20.b		; 46 20
	tsb $3100.w		; 0C 00 31
	brk $75.b		; 00 75
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $14.b		; 00 14
	ora #$36.b		; 09 36
	mvn $54,$36		; 54 36 54
	asl $0B60.w,X		; 1E 60 0B
	bit $3F0F.w,X		; 3C 0F 3F
	php		; 08
	sec		; 38
	ora $30.b,S		; 03 30
	ora [$30.b]		; 07 30
	trb $09.b		; 14 09
	trb $09.b		; 14 09
	jsr $1421.w		; 20 21 14
	trb $10.b		; 14 10
	bpl  23.b		; 10 17
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl   7.b		; 10 07
	bpl  15.b		; 10 0F
	clc		; 18
	ora $180318.l		; 0F 18 03 18
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $0C.b		; 05 0C
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	jsr $A031.w		; 20 31 A0
	and ($A2.b),Y		; 31 A2
	and ($A0.b,S),Y		; 33 A0
	and ($A0.b,S),Y		; 33 A0
	and ($A4.b)		; 32 A4
	rol $A0.b,X		; 36 A0
	rol $E0.b,X		; 36 E0
	bit $CE.b,X		; 34 CE
	brk $CE.b		; 00 CE
	brk $CC.b		; 00 CC
	brk $CE.b		; 00 CE
	cop $CC.b		; 02 CC
	brk $C8.b		; 00 C8
	brk $CC.b		; 00 CC
	tsb $C8.b		; 04 C8
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	sec		; 38
	rol $3F3E.w,X		; 3E 3E 3F
	and $7F7B.w,X		; 3D 7B 7F
	inc $FCFE.w,X		; FE FE FC
	jsr ($F8F8.w,X)		; FC F8 F8
	sec		; 38
	brk $38.b		; 00 38
	bpl  62.b		; 10 3E
	bpl  57.b		; 10 39
	asl $3C7B.w,X		; 1E 7B 3C
	tsx		; BA
	jmp ($F874.w,X)		; 7C 74 F8
	clv		; B8
	cpy #$820B.w		; C0 0B 82
	sta $55D4.w		; 8D D4 55
	adc ($97.b),Y		; 71 97
	ora $2B.b,S		; 03 2B
	tsb $8880.w		; 0C 80 88
	rts		; 60

	beq   0.b		; F0 00
	rts		; 60

	cop $04.b		; 02 04
	tsb $02.b		; 04 02
	bit #$02.b		; 89 02
	xce		; FB
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	ror $C342.w,X		; 7E 42 C3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $5B3C.w,X		; 3C 3C 5B
	and ($5D.b)		; 32 5D
	sec		; 38
	plx		; FA
	ora $1DBB.w,X		; 1D BB 1D
	tsa		; 3B
	ora $023C.w,X		; 1D 3C 02
	bit $12.b,X		; 34 12
	trb $3202.w		; 1C 02 32
	tsb $38.b		; 04 38
	cop $1D.b		; 02 1D
	ora ($1C.b,X)		; 01 1C
	brk $1C.b		; 00 1C
	brk $01.b		; 00 01
	brk $11.b		; 00 11
	php		; 08
	ora ($00.b,X)		; 01 00
	lda ($70.b,X)		; A1 70
	ldx #$02B1.w		; A2 B1 02
	and ($07.b),Y		; 31 07
	bmi   5.b		; 30 05
	jsr $2001.w		; 20 01 20
	ora ($20.b,X)		; 01 20
	ora ($20.b,X)		; 01 20
	rti		; 40

	rti		; 40

	eor ($00.b,X)		; 41 00
	sbc ($20.b,X)		; E1 20
	cpx #$C020.w		; E0 20 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $73.b		; 00 73
	lda $B26E.w		; AD 6E B2
	dec A		; 3A
	bne  31.b		; D0 1F
	sbc #$17.b		; E9 17
	sbc ($16.b,X)		; E1 16
	sbc ($EE.b,X)		; E1 EE
	ora ($6E.b),Y		; 11 6E
	cmp ($AD.b),Y		; D1 AD
	brk $B2.b		; 00 B2
	ora ($D0.b,X)		; 01 D0
	ora [$E9.b]		; 07 E9
	asl $E1.b		; 06 E1
	asl $0EE1.w		; 0E E1 0E
	ora ($0E.b),Y		; 11 0E
	cmp ($0E.b),Y		; D1 0E
	sta $CA.b,X		; 95 CA
	ora $8A.b,X		; 15 8A
	bit $9B.b		; 24 9B
	jsl $8E719D.l		; 22 9D 71 8E
	eor ($0E.b),Y		; 51 0E
	ora ($0E.b),Y		; 11 0E
	asl $CA01.w,X		; 1E 01 CA
	brk $8A.b		; 00 8A
	brk $9B.b		; 00 9B
	brk $9D.b		; 00 9D
	brk $8E.b		; 00 8E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	ror $C342.w,X		; 7E 42 C3
	dey		; 88
	bra  61.b		; 80 3D
	cpx #$0030.w		; E0 30 00
	ora ($0A.b,X)		; 01 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7F3C.w,X		; 3C 3C 7F
	adc $FF5F5F.l,X		; 7F 5F 5F FF
	sbc $05FFFF.l,X		; FF FF FF 05
	cop $0B.b		; 02 0B
	ora [$17.b]		; 07 17
	asl $1E27.w		; 0E 27 1E
	and $3B4F1D.l		; 2F 1D 4F 3B
	lsr $993B.w,X		; 5E 3B 99
	adc [$02.b],Y		; 77 02
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	ora ($3A.b,X)		; 01 3A
	ora ($3A.b,X)		; 01 3A
	ora ($71.b,X)		; 01 71
	asl $20.b		; 06 20
	ldy $78F0.w,X		; BC F0 78
	sed		; F8
	sed		; F8
	sed		; F8
	sbc $EFF3F3.l,X		; FF F3 F3 EF
	cpx #$F0F1.w		; E0 F1 F0
	ldy #$D0FF.w		; A0 FF D0
	bpl 112.b		; 10 70
	brk $68.b		; 00 68
	bcs -48.b		; B0 D0
	rts		; 60

	cpx $BF40.w		; EC 40 BF
	rti		; 40

	lda $41A140.l		; AF 40 A1 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($C4.b,X)		; 01 C4
	cmp $78.b,S		; C3 78
	ldx #$163E.w		; A2 3E 16
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	dey		; 88
	sta [$D6.b]		; 87 D6
	cmp ($E0.b),Y		; D1 E0
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3000.w		; C0 00 30
	cpx #$B808.w		; E0 08 B8
	lsr $10.b		; 46 10
	sbc $847A.w		; ED 7A 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3000.w		; C0 00 30
	cpy #$F008.w		; C0 08 F0
	asl $F8.b		; 06 F8
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb STAT78.w		; 0C 3F 21
	adc ($44.b,X)		; 61 44
	cpy #$F09E.w		; C0 9E F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3F00.w		; 0C 00 3F
	brk $61.b		; 00 61
	asl $3FC0.w,X		; 1E C0 3F
	beq  15.b		; F0 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	cpx #$0038.w		; E0 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra  56.b		; 80 38
	cpy #$0931.w		; C0 31 09
	rol A		; 2A
	trb $44.b		; 14 44
	tsa		; 3B
	bit #$77.b		; 89 77
	asl A		; 0A
	sbc [$61.b],Y		; F7 61
	adc $8704F5.l,X		; 7F F5 04 87
	bra   9.b		; 80 09
	asl $14.b		; 06 14
	ora $3B.b,S		; 03 3B
	brk $72.b		; 00 72
	ora $14.b		; 05 14
	cop $80.b		; 02 80
	brk $FB.b		; 00 FB
	brk $7F.b		; 00 7F
	brk $6F.b		; 00 6F
	lda $7BFF99.l,X		; BF 99 FF 7B
	sta $5C2FFC.l		; 8F FC 2F 5C
	lda [$58.b],Y		; B7 58
	and [$AC.b],Y		; 37 AC
	bpl 112.b		; 10 70
	eor $F147BB.l		; 4F BB 47 F1
	asl $0C8B.w		; 0E 8B 0C
	and [$08.b]		; 27 08
	and [$00.b],Y		; 37 00
	lda [$00.b],Y		; B7 00
	bne   7.b		; D0 07
	bra  15.b		; 80 0F
	cpx $F3.b		; E4 F3
	jsr $D0BB.w		; 20 BB D0
	dec $BC43.w,X		; DE 43 BC
	dec $9231.w		; CE 31 92
	adc $F106.w		; 6D 06 F1
	eor ($8C.b,S),Y		; 53 8C
	lda ($4C.b,S),Y		; B3 4C
	tsa		; 3B
	cpy $DE.b		; C4 DE
	jsr $00BC.w		; 20 BC 00
	and ($58.b,X)		; 21 58
	eor $F130.w		; 4D 30 F1
	tsb $FE00.w		; 0C 00 FE
	trb $18FF.w		; 1C FF 18
	adc $E0CB36.l,X		; 7F 36 CB E0
	lsr $6080.w,X		; 5E 80 60
	rti		; 40

	ldy #$B040.w		; A0 40 B0
	bvs -65.b		; 70 BF
	cmp ($3E.b,X)		; C1 3E
	eor $3A.b		; 45 3A
	phb		; 8B
	stz $1E.b,X		; 74 1E
	rts		; 60

	jsr $A040.w		; 20 40 A0
	brk $B0.b		; 00 B0
	brk $BF.b		; 00 BF
	brk $1C.b		; 00 1C
	asl A		; 0A
	ora [$00.b],Y		; 17 00
	ora $0503.w		; 0D 03 05
	ora $0F.b,S		; 03 0F
	brk $0E.b		; 00 0E
	asl $0F.b		; 06 0F
	brk $0E.b		; 00 0E
	ora $09.b		; 05 09
	brk $00.b		; 00 00
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	cpx #$A000.w		; E0 00 A0
	cpy #$00E0.w		; C0 E0 00
	rts		; 60

	rti		; 40

	cpx #$4000.w		; E0 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $EE.b		; 00 EE
	ora ($AC.b),Y		; 11 AC
	eor ($FC.b),Y		; 51 FC
	eor ($67.b,X)		; 41 67
	clc		; 18
	and ($1E.b,X)		; 21 1E
	adc $3E4D00.l,X		; 7F 00 4D 3E
	adc $0E1100.l,X		; 7F 00 11 0E
	eor ($0E.b),Y		; 51 0E
	eor ($06.b,X)		; 41 06
	clc		; 18
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	ora $010E.w		; 0D 0E 01
	asl A		; 0A
	ora $0B.b		; 05 0B
	tsb $06.b		; 04 06
	ora ($02.b,X)		; 01 02
	ora ($07.b,X)		; 01 07
	brk $04.b		; 00 04
	ora $0D.b,S		; 03 0D
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora ($06.b,X)		; 01 06
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	and $14.b,X		; 35 14
	sbc $FA0DDF.l,X		; FF DF 0D FA
	asl $3E.b		; 06 3E
	bra  25.b		; 80 19
	cmp $48.b,S		; C3 48
	sbc [$C0.b]		; E7 C0
	inc $CA.b,X		; F6 CA
	dex		; CA
	brk $00.b		; 00 00
	jsr ($FB08.w,X)		; FC 08 FB
	tsb $7F.b		; 04 7F
	brk $7E.b		; 00 7E
	.db $42, $3E		; 42 3E
	rol $2C.b		; 26 2C
	bit $F6.b		; 24 F6
	ora $0F1F17.l		; 0F 17 1F 0F
	ora $0B0F0B.l		; 0F 0B 0F 0B
	ora $020705.l		; 0F 05 07 02
	ora $3A.b,S		; 03 3A
	ora $00.b,S		; 03 00
	ora $0B0F13.l		; 0F 13 0F 0B
	ora [$09.b]		; 07 09
	ora [$09.b]		; 07 09
	ora [$05.b]		; 07 05
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($F2.b,X)		; 01 F2
	sbc $FCF2.w,X		; FD F2 FC
	xce		; FB
	sbc $FDF8.w,X		; FD F8 FD
	lda $D8FF.w,Y		; B9 FF D8
	sbc $FF7D.w,X		; FD 7D FF
	sbc $F2FF.w,X		; FD FF F2
	asl A		; 0A
	sbc $FB.b,S		; E3 FB
	sbc ($FA.b)		; F2 FA
	sbc ($FA.b)		; F2 FA
	sec		; 38
	cpy #$3AC2.w		; C0 C2 3A
	and $7DFC.w,X		; 3D FC 7D
	inc $F817.w,X		; FE 17 F8
	asl $98F8.w		; 0E F8 98
	sbc [$11.b],Y		; F7 11
	inc $AF00.w		; EE 00 AF
	asl A		; 0A
	sta $03.b,X		; 95 03
	asl $01.b,X		; 16 01
	ora $0700.w		; 0D 00 07
	tay		; A8
	lda [$17.b]		; A7 17
	php		; 08
	plp		; 28
	ora [$28.b],Y		; 17 28
	ora [$14.b],Y		; 17 14
	phd		; 0B
	asl $09.b,X		; 16 09
	ora $F702.w		; 0D 02 F7
	cli		; 58
	bvc -89.b		; 50 A7
	ora $5F.b		; 05 5F
	bvc -29.b		; 50 E3
	plp		; 28
	dec $0F.b,X		; D6 0F
	sbc [$37.b],Y		; F7 37
	cmp [$BF.b],Y		; D7 BF
	adc $A7AF50.l,X		; 7F 50 AF A7
	cli		; 58
	eor $CC23A0.l,X		; 5F A0 23 CC
	asl $E9.b,X		; 16 E9
	ora [$F8.b]		; 07 F8
	ora $EB.b,X		; 15 EB
	tsa		; 3B
	cmp [$18.b]		; C7 18
	rti		; 40

	brk $45.b		; 00 45
	bpl -102.b		; 10 9A
	asl A		; 0A
	adc $FC8669.l,X		; 7F 69 86 FC
	cmp ($FF.b,X)		; C1 FF
	cpx #$E1EC.w		; E0 EC E1
	rti		; 40

	lda $9ABA45.l,X		; BF 45 BA 9A
	adc $7F.b		; 65 7F
	bra -126.b		; 80 82
	jmp ($3EC1.w,X)		; 7C C1 3E
	cpx #$A19F.w		; E0 9F A1
	dec $1C50.w,X		; DE 50 1C
	dey		; 88
	tsb $FC88.w		; 0C 88 FC
	brk $F8.b		; 00 F8
	cpy #$00F0.w		; C0 F0 00
	rts		; 60

	brk $7E.b		; 00 7E
	sty $1CFF.w		; 8C FF 1C
	cpx #$F00C.w		; E0 0C F0
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	bra 126.b		; 80 7E
	bra -29.b		; 80 E3
	trb $FC0C.w		; 1C 0C FC
	rti		; 40

	lda $1FBF5F.l,X		; BF 5F BF 1F
	lda $0ADF2F.l,X		; BF 2F DF 0A
	lda $6F13.w,X		; BD 13 6F
	sbc $101317.l		; EF 17 13 10
	rti		; 40

	rti		; 40

	rti		; 40

	eor $005F40.l,X		; 5F 40 5F 00
	and $0F5E41.l,X		; 3F 41 5E 0F
	bpl  21.b		; 10 15
	phd		; 0B
	phb		; 8B
	sed		; F8
	rti		; 40

	lda $80B748.l,X		; BF 48 B7 80
	sbc [$92.b],Y		; F7 92
	sbc $F601.w		; ED 01 F6
	sta ($ED.b)		; 92 ED
	cpx #$38FB.w		; E0 FB 38
	ora [$2F.b]		; 07 2F
	bvc  37.b		; 50 25
	phx		; DA
	and $DA.b		; 25 DA
	and $F6D2.w		; 2D D2 F6
	ora #$AD.b		; 09 AD
	eor ($DB.b)		; 52 DB
	ldy #$38C5.w		; A0 C5 38
	tya		; 98
	sta $01.b,S		; 83 01
	inc $F209.w,X		; FE 09 F2
	ora $FA.b		; 05 FA
	tsb $FA.b		; 04 FA
	rti		; 40

	sta $00FE00.l,X		; 9F 00 FE 00
	inc $7C83.w,X		; FE 83 7C
	inc $0201.w,X		; FE 01 02
	sbc $FD02.w,X		; FD 02 FD
	cop $FD.b		; 02 FD
	ora $01FEE0.l,X		; 1F E0 FE 01
	plx		; FA
	cop $43.b		; 02 43
	cpy #$FE06.w		; C0 06 FE
	jsr $A05F.w		; 20 5F A0
	bne   0.b		; D0 00
	bne -128.b		; D0 80
	cpx #$D000.w		; E0 00 D0
	cop $7D.b		; 02 7D
	cpy #$FE3F.w		; C0 3F FE
	ora ($5F.b,X)		; 01 5F
	ldy #$20D0.w		; A0 D0 20
	bne  32.b		; D0 20
	cpx #$D000.w		; E0 00 D0
	jsr $300F.w		; 20 0F 30
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	tsb $1F.b		; 04 1F
	asl $1F.b		; 06 1F
	ora [$1F.b]		; 07 1F
	asl $0E.b		; 06 0E
	brk $0C.b		; 00 0C
	bpl  16.b		; 10 10
	tas		; 1B
	tas		; 1B
	ora $0A1D.w,X		; 1D 1D 0A
	asl A		; 0A
	ora #$09.b		; 09 09
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	sbc $0FFF20.l		; EF 20 FF 0F
	beq -16.b		; F0 F0
	adc $E027E0.l		; 6F E0 27 E0
	sta [$F0.b],Y		; 97 F0
	phk		; 4B
	sei		; 78
	bit $3C.b		; 24 3C
	jsr $0010.w		; 20 10 00
	brk $0F.b		; 00 0F
	brk $9F.b		; 00 9F
	bra  95.b		; 80 5F
	rti		; 40

	and $109720.l		; 2F 20 97 10
	wai		; CB
	php		; 08
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	phb		; 8B
	tya		; 98
	sta [$B0.b]		; 87 B0
	stx $9DE0.w		; 8E E0 9D
	cmp ($3A.b,X)		; C1 3A
	cmp $34.b,S		; C3 34
	stx $68.b		; 86 68
	sty $1850.w		; 8C 50 18
	adc [$00.b]		; 67 00
	eor $203F10.l,X		; 5F 10 3F 20
	rol $7C00.w,X		; 3E 00 7C
	rti		; 40

	sei		; 78
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	brk $1E.b		; 00 1E
	sbc $C1BE.w,X		; FD BE C1
	ora $784878.l,X		; 1F 78 48 78
	sty $3C.b		; 84 3C
	nop		; EA
	rol $1BC1.w,X		; 3E C1 1B
	pea $BD19.w		; F4 19 BD
	bra   1.b		; 80 01
	brk $D8.b		; 00 D8
	rti		; 40

	tya		; 98
	ora [$EC.b]		; 07 EC
	and $CE.b,S		; 23 CE
	ora ($F3.b,X)		; 01 F3
	trb $E1.b		; 14 E1
	asl $F6.b		; 06 F6
	sbc #$FC.b		; E9 FC
	sta [$81.b]		; 87 81
	cop $7E.b		; 02 7E
	ora $84.b,S		; 03 84
	adc $3DC3.w,Y		; 79 C3 3D
	rti		; 40

	rol $9EA1.w,X		; 3E A1 9E
	sbc #$00.b		; E9 00
	sta [$00.b]		; 87 00
	cop $7C.b		; 02 7C
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	and ($DE.b,X)		; 21 DE
	and ($DE.b,X)		; 21 DE
	sbc [$18.b]		; E7 18
	adc $F87887.l,X		; 7F 87 78 F8
	and [$F0.b],Y		; 37 F0
	ora ($F0.b,S),Y		; 13 F0
	phb		; 8B
	sed		; F8
	dec $DE00.w,X		; DE 00 DE
	brk $18.b		; 00 18
	brk $87.b		; 00 87
	brk $F8.b		; 00 F8
	ora [$F0.b]		; 07 F0
	ora $F80FF0.l		; 0F F0 0F F8
	ora [$20.b]		; 07 20
	cpy #$8060.w		; C0 60 80
	bra  96.b		; 80 60
	cpy #$00E0.w		; C0 E0 00
	bmi -96.b		; 30 A0
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	cpy #$8000.w		; C0 00 80
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	cpy #$C030.w		; C0 30 C0
	clc		; 18
	cpx #$E018.w		; E0 18 E0
	lda [$38.b]		; A7 38
	eor $68.b,S		; 43 68
	.db $82, $C9, $09		; 82 C9 09
	txy		; 9B
	ora #$1A.b		; 09 1A
	cop $17.b		; 02 17
	ora ($35.b)		; 12 35
	trb $3F.b		; 14 3F
	cpy #$8807.w		; C0 07 88
	ora [$09.b]		; 07 09
	asl $1B.b		; 06 1B
	tsb $1A.b		; 04 1A
	ora $16.b		; 05 16
	ora #$34.b		; 09 34
	phd		; 0B
	bit $1103.w,X		; 3C 03 11
	lsr $9C22.w		; 4E 22 9C
	cpy $B9.b		; C4 B9
	dey		; 88
	adc ($10.b)		; 72 10
	sbc $20.b		; E5 20
	cmp #$40.b		; C9 40
	sta ($80.b),Y		; 91 80
	and $40.b,S		; 23 40
	lda $817F80.l,X		; BF 80 7F 81
	ror $FC02.w,X		; 7E 02 FC
	ora $F8.b		; 05 F8
	ora #$F0.b		; 09 F0
	ora ($E0.b),Y		; 11 E0
	and $C0.b,S		; 23 C0
	ora $0E170D.l,X		; 1F 0D 17 0E
	ora ($0C.b,S),Y		; 13 0C
	and ($0C.b,S),Y		; 33 0C
	ror $4621.w,X		; 7E 21 46
	and $132C.w,Y		; 39 2C 13
	asl $0B.b,X		; 16 0B
	ora $0E00.w		; 0D 00 0E
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	brk $21.b		; 00 21
	brk $39.b		; 00 39
	brk $13.b		; 00 13
	brk $0B.b		; 00 0B
	brk $7F.b		; 00 7F
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $FE3FDE.l,X		; FF DE 3F FE
	eor [$FF.b]		; 47 FF
	tad		; 5B
	lda [$11.b],Y		; B7 11
	lda [$12.b],Y		; B7 12
	rol $EEFF.w,X		; 3E FF EE
	ora $0EE71E.l,X		; 1F 1E E7 0E
	tsa		; 3B
	lsr $05.b		; 46 05
	eor $1002.w,Y		; 59 02 10
	eor #$12.b		; 49 12
	pha		; 48
	lda $1FBF2F.l,X		; BF 2F BF 1F
	xce		; FB
	eor $9FFF.w,X		; 5D FF 9F
	sta $8AF5E0.l,X		; 9F E0 F5 8A
	lda $CA.b,X		; B5 CA
	sbc [$1A.b]		; E7 1A
	bit $1E43.w		; 2C 43 1E
	eor $9F1E41.l,X		; 5F 41 1E 9F
	brk $E0.b		; 00 E0
	ora ($8A.b,X)		; 01 8A
	brk $CA.b		; 00 CA
	brk $1A.b		; 00 1A
	brk $FB.b		; 00 FB
	stz $FE.b,X		; 74 FE
	stp		; DB
	sbc $F27DFA.l,X		; FF FA 7D F2
	tad		; 5B
	pea $36E9.w		; F4 E9 36
	and $DC.b,S		; 23 DC
	adc ($CC.b,S),Y		; 73 CC
	stz $E8.b,X		; 74 E8
	stp		; DB
	bvs -86.b		; 70 AA
	bvc -14.b		; 50 F2
	php		; 08
	bit $D8.b		; 24 D8
	asl $28.b,X		; 16 28
	cpy $C410.w		; CC 10 C4
	php		; 08
	stx $1F.b		; 86 1F
	sta $7B.b,S		; 83 7B
	sbc ($FE.b)		; F2 FE
	jsr $00CF.w		; 20 CF 00
	sbc $5C07E8.l,X		; FF E8 07 5C
	lda $53.b,S		; A3 53
	ldy $6E11.w		; AC 11 6E
	rts		; 60

	ora $0DFB04.l,X		; 1F 04 FB 0D
	sbc ($FF.b)		; F2 FF
	brk $02.b		; 00 02
	ora $02A1.w,X		; 1D A1 02
	ldy $0001.w		; AC 01 00
	cld		; D8
	sec		; 38
	cmp ($89.b,X)		; C1 89
	inc $10.b,X		; F6 10
	sbc $30A15D.l		; EF 5D A1 30
	eor $004000.l		; 4F 00 40 00
	cpy #$00D8.w		; C0 D8 00
	cmp ($00.b,X)		; C1 00
	ror $81.b,X		; 76 81
	rts		; 60

	sta $4F0EA1.l		; 8F A1 0E 4F
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	tsb $0602.w		; 0C 02 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($1E.b)		; 12 1E
	ora ($1F.b),Y		; 11 1F
	bpl  27.b		; 10 1B
	bpl  25.b		; 10 19
	bpl  25.b		; 10 19
	bpl  27.b		; 10 1B
	ora ($1E.b)		; 12 1E
	ora $1C.b,X		; 15 1C
	sbc $04.b		; E5 04
	sep #$02		; E2 02
	sbc ($01.b,X)		; E1 01
	cpx #$E000.w		; E0 00 E0
	brk $E1.b		; 00 E1
	ora ($E1.b,X)		; 01 E1
	brk $E3.b		; 00 E3
	brk $05.b		; 00 05
	cop $0B.b		; 02 0B
	asl $1B.b		; 06 1B
	ora [$3D.b]		; 07 3D
	ora ($67.b,S),Y		; 13 67
	tsb $79.b		; 04 79
	and ($BF.b,X)		; 21 BF
	bvc -87.b		; 50 A9
	lsr $02.b		; 46 02
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $13.b		; 00 13
	brk $04.b		; 00 04
	clc		; 18
	and ($06.b,X)		; 21 06
	bvc   0.b		; 50 00
	lsr $10.b		; 46 10
	ldy #$4030.w		; A0 30 40
	rts		; 60

	bra  64.b		; 80 40
	cpx #$2180.w		; E0 80 21
	cpy #$20C3.w		; C0 C3 20
	.db $82, $61, $05		; 82 61 05
	sep #$C0		; E2 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	rti		; 40

	rep #$C0		; C2 C0
	sep #$0C		; E2 0C
	tda		; 7B
	tsb $0433.w		; 0C 33 04
	lda $5986.w,X		; BD 86 59
	rep #$C1		; C2 C1
.ACCU 16
	rep #$65		; C2 65
	asl $D3.b		; 06 D3
	trb $0BF8.w		; 1C F8 0B
	beq   3.b		; F0 03
	sed		; F8
	ora $78.b,S		; 03 78
	ora ($BC.b,X)		; 01 BC
	sta ($3C.b,X)		; 81 3C
	ora ($F8.b,X)		; 01 F8
	ora ($E8.b,X)		; 01 E8
	phd		; 0B
	cli		; 58
	cmp [$28.b]		; C7 28
	adc [$14.b]		; 67 14
	adc ($0E.b,S),Y		; 73 0E
	eor $4902.w,Y		; 59 02 49
	ora $4C.b		; 05 4C
	ora #$0C58.w		; 09 58 0C
	adc $C0.b,S		; 63 C0
	and $709F60.l,X		; 3F 60 9F 70
	sta $488758.l		; 8F 58 87 48
	sta [$4C.b]		; 87 4C
	sta $58.b,S		; 83 58
	sta [$60.b]		; 87 60
	sta $D27C25.l,X		; 9F 25 7C D2
	ror $AF09.w,X		; 7E 09 AF
	pha		; 48
	lda $28DD08.l		; AF 08 DD 28
	jmp.w [$1CE8]		; DC E8 1C
	iny		; C8
	ora $837C.w,X		; 1D 7C 83
	ror $2F81.w,X		; 7E 81 2F
	bne  47.b		; D0 2F
	bne  29.b		; D0 1D
	cpx #$E01C.w		; E0 1C E0
	trb $1DE0.w		; 1C E0 1D
	cpx #$0CE0.w		; E0 E0 0C
	sei		; 78
	tsb $0670.w		; 0C 70 06
	ldy $1886.w,X		; BC 86 18
	.db $82, $5E, $C3		; 82 5E C3
	bit $60E1.w		; 2C E1 60
	sbc ($0C.b,X)		; E1 0C
	beq  12.b		; F0 0C
	beq   6.b		; F0 06
	sed		; F8
	stx $78.b		; 86 78
	.db $82, $7C, $C3		; 82 7C C3
	bit $1EE1.w,X		; 3C E1 1E
	sbc ($1E.b,X)		; E1 1E
	ora $2A2A.w,X		; 1D 2A 2A
	trb $4C.b		; 14 4C
	and ($C4.b),Y		; 31 C4
	dec A		; 3A
	adc $9C.b,S		; 63 9C
	cmp $F6E6.w,Y		; D9 E6 F6
	and $837E.w,Y		; 39 7E 83
	plp		; 28
	ora [$10.b]		; 07 10
	ora [$31.b]		; 07 31
	asl $3A.b		; 06 3A
	brk $9C.b		; 00 9C
	brk $E6.b		; 00 E6
	brk $39.b		; 00 39
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	eor $01.b,S		; 43 01
	.db $82, $02, $01		; 82 02 01
	tsb $03.b		; 04 03
	tsb $1603.w		; 0C 03 16
	ora #$0E31.w		; 09 31 0E
	bit $4313.w		; 2C 13 43
	bra -126.b		; 80 82
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $09.b		; 00 09
	brk $0E.b		; 00 0E
	brk $13.b		; 00 13
	brk $27.b		; 00 27
	inc A		; 1A
	tad		; 5B
	rol $AF.b,X		; 36 AF
	ror $ED.b,X		; 76 ED
	ror $55.b,X		; 76 55
	rol $0E3D.w		; 2E 3D 0E
	ora $0F0E.w,X		; 1D 0E 0F
	brk $1A.b		; 00 1A
	brk $36.b		; 00 36
	brk $76.b		; 00 76
	brk $76.b		; 00 76
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	sta $BA.b,X		; 95 BA
	lda #$AABB.w		; A9 BB AA
	sta $9988.w,Y		; 99 88 99
	bit #$949C.w		; 89 9C 94
	stz $8C94.w		; 9C 94 8C
	sty $95.b		; 84 95
	pha		; 48
	lda #$AA44.w		; A9 44 AA
	mvp $66,$88		; 44 88 66
	bit #$9466.w		; 89 66 94
	adc $94.b,S		; 63 94
	adc $84.b,S		; 63 84
	adc ($A7.b,S),Y		; 73 A7
	phy		; 5A
	xba		; EB
	stx $AA.b,Y		; 96 AA
	cmp [$6A.b],Y		; D7 6A
	cmp [$DB.b],Y		; D7 DB
	adc [$BB.b]		; 67 BB
	adc [$FB.b]		; 67 FB
	lda [$5B.b],Y		; B7 5B
	and [$5A.b]		; 27 5A
	brk $96.b		; 00 96
	brk $D7.b		; 00 D7
	brk $D7.b		; 00 D7
	brk $67.b		; 00 67
	brk $67.b		; 00 67
	brk $B7.b		; 00 B7
	brk $27.b		; 00 27
	bra 110.b		; 80 6E
	cmp ($56.b),Y		; D1 56
	sbc #$6DB2.w		; E9 B2 6D
	lda #$B976.w		; A9 76 B9
	ror $B4.b,X		; 76 B4
	tda		; 7B
	jmp $BD5ABB.l		; 5C BB 5A BD
	cmp ($00.b),Y		; D1 00
	sbc #$6D00.w		; E9 00 6D
	brk $76.b		; 00 76
	brk $76.b		; 00 76
	brk $7B.b		; 00 7B
	brk $BB.b		; 00 BB
	brk $BD.b		; 00 BD
	brk $53.b		; 00 53
	ldy $AD52.w		; AC 52 AD
	sta ($6E.b),Y		; 91 6E
	bit #$8876.w		; 89 76 88
	adc [$88.b],Y		; 77 88
	adc [$88.b],Y		; 77 88
	adc [$44.b],Y		; 77 44
	tyx		; BB
	ldy $AD00.w		; AC 00 AD
	brk $6E.b		; 00 6E
	brk $76.b		; 00 76
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $BB.b		; 00 BB
	brk $80.b		; 00 80
	rti		; 40

	cpy #$4000.w		; C0 00 40
	bra  32.b		; 80 20
	cpy #$6090.w		; C0 90 60
	bcc  96.b		; 90 60
	pha		; 48
	bcs  72.b		; B0 48
	bcs  64.b		; B0 40
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl  32.b		; 10 20
	bmi -96.b		; 30 A0
	bmi 112.b		; 30 70
	bra  16.b		; 80 10
	cpx #$00F0.w		; E0 F0 00
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	bmi  64.b		; 30 40
	bra   0.b		; 80 00
	cpx #$0000.w		; E0 00 00
	brk $E0.b		; 00 E0
	brk $38.b		; 00 38
	ora $6C.b		; 05 6C
	ora ($24.b)		; 12 24
	phx		; DA
	ldy $98.b		; A4 98
	pei ($08.b)		; D4 08
	clv		; B8
	jsr $6040.w		; 20 40 60
	brk $C0.b		; 00 C0
	ora ($06.b,X)		; 01 06
	ora ($04.b)		; 12 04
	phx		; DA
	brk $98.b		; 00 98
	rti		; 40

	php		; 08
	cpx #$C020.w		; E0 20 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $49.b		; 00 49
	adc $45CE0A.l		; 6F 0A CE 45
	cpy $D843.w		; CC 43 D8
	eor [$F0.b]		; 47 F0
	lsr $9DE0.w		; 4E E0 9D
	sbc ($9A.b,X)		; E1 9A
	cmp $6F.b,S		; C3 6F
	bcc -50.b		; 90 CE
	and ($CC.b),Y		; 31 CC
	and ($D8.b,S),Y		; 33 D8
	and [$F0.b]		; 27 F0
	ora $E11FE0.l		; 0F E0 1F E1
	asl $3CC3.w,X		; 1E C3 3C
	and ($03.b)		; 32 03
	inx		; E8
	asl $1CD0.w		; 0E D0 1C
	ldy #$4030.w		; A0 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $FC.b,S		; 03 FC
	asl $1CF0.w		; 0E F0 1C
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	dec $28.b		; C6 28
	sty $18D0.w		; 8C D0 18
	ldy #$4030.w		; A0 30 40
	ldy #$C030.w		; A0 30 C0
	bcc  96.b		; 90 60
	rts		; 60

	bcc -58.b		; 90 C6
	sec		; 38
	sty $1870.w		; 8C 70 18
	rts		; 60

	bmi  64.b		; 30 40
	ldy #$C000.w		; A0 00 C0
	brk $60.b		; 00 60
	brk $90.b		; 00 90
	brk $7E.b		; 00 7E
	bmi -10.b		; 30 F6
	trb $BC.b		; 14 BC
	pla		; 68
	ldy $D470.w,X		; BC 70 D4
	sec		; 38
	jsr ($AC18.w,X)		; FC 18 AC
	bpl  58.b		; 10 3A
	php		; 08
	bmi   0.b		; 30 00
	trb $08.b		; 14 08
	pla		; 68
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	tsb $1E.b		; 04 1E
	php		; 08
	phd		; 0B
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $52.b		; 00 52
	bit $304E.w		; 2C 4E 30
.INDEX 8
	sep #$1C		; E2 1C
	sty $68.b,X		; 94 68
	sty $C470.w		; 8C 70 C4
	sec		; 38
	cpx $18.b		; E4 18
	brk $00.b		; 00 00
	bit $3000.w		; 2C 00 30
	brk $1C.b		; 00 1C
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $AC.b		; 00 AC
	bpl  50.b		; 10 32
	tsb $0816.w		; 0C 16 08
	ora #$0706.w		; 09 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $2F10.w,X		; 3E 10 2F
	jsl $5D225D.l		; 22 5D 22 5D
	rti		; 40

	phb		; 8B
	bra  94.b		; 80 5E
	cpy #$20.b		; C0 20
	brk $00.b		; 00 00
	rol $2300.w,X		; 3E 00 23
	trb $3E41.w		; 1C 41 3E
	eor $3A.b		; 45 3A
	phb		; 8B
	stz $1E.b,X		; 74 1E
	rts		; 60

	jsr $0040.w		; 20 40 00
	cpx #$80.b		; E0 80
	bvs -64.b		; 70 C0
	sei		; 78
	bcc 124.b		; 90 7C
	plp		; 28
	pei ($00.b)		; D4 00
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bpl -32.b		; 10 E0
	pha		; 48
	bcs  84.b		; B0 54
	tay		; A8
	pei ($28.b)		; D4 28
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $52.b		; 00 52
	bit $304E.w		; 2C 4E 30
	nop		; EA
	trb $6894.w		; 1C 94 68
	sty $C470.w		; 8C 70 C4
	sec		; 38
	cpx $18.b		; E4 18
	ldy $2C10.w		; AC 10 2C
	brk $30.b		; 00 30
	brk $1C.b		; 00 1C
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $36.b		; 00 36
	tsb $0816.w		; 0C 16 08
	ora #$0706.w		; 09 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	tsb $DC20.w		; 0C 20 DC
	bne  56.b		; D0 38
	bne  88.b		; D0 58
	brk $98.b		; 00 98
	bra -104.b		; 80 98
	bra -112.b		; 80 90
	brk $10.b		; 00 10
	tsb $DC00.w		; 0C 00 DC
	brk $38.b		; 00 38
	brk $58.b		; 00 58
	jsr $6098.w		; 20 98 60
	tya		; 98
	rts		; 60

	bcc  96.b		; 90 60
	bpl -32.b		; 10 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	cop $0A.b		; 02 0A
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	brk $30.b		; 00 30
	bmi  -4.b		; 30 FC
	sty $86.b		; 84 86
	bpl   1.b		; 10 01
	tda		; 7B
	cpy #$61.b		; C0 61
	brk $02.b		; 00 02
	trb $42.b		; 14 42
	rtl		; 6B

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	inc $BFFE.w,X		; FE FE BF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $009494.l,X		; FF 94 94 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($80.b,X)		; 81 80
	sep #$41		; E2 41
	stz $21.b,X		; 74 21
	and $00F827.l,X		; 3F 27 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($A4.b,X)		; 01 A4
	lda $CF.b,S		; A3 CF
	cpy #$08.b		; C0 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $98.b		; 00 98
	beq   4.b		; F0 04
	jmp.w [$0823]		; DC 23 08
	ror $3D.b,X		; 76 3D
	rep #$00		; C2 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $98.b		; 00 98
	rts		; 60

	tsb $F8.b		; 04 F8
	ora $FC.b,S		; 03 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	cld		; D8
	eor ($70.b),Y		; 51 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $07D800.l		; 0F 00 D8 07
	bvs -113.b		; 70 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rts		; 60

	bra  24.b		; 80 18
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $01.b		; 06 01
	tsb $0803.w		; 0C 03 08
	phd		; 0B
	clc		; 18
	asl $30.b,X		; 16 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $E02600.l		; 0F 00 26 E0
	sta $7A81.w,X		; 9D 81 7A
	ora $E4.b,S		; 03 E4
	ora [$D0.b]		; 07 D0
	ora $483FA4.l,X		; 1F A4 3F 48
	ror $CE38.w,X		; 7E 38 CE
	eor $007E40.l,X		; 5F 40 7E 00
	jsr ($F900.w,X)		; FC 00 F9
	ora ($EA.b,X)		; 01 EA
	asl A		; 0A
	rep #$02		; C2 02
	sty $14.b,X		; 94 14
	sty $84.b		; 84 84
	rti		; 40

	adc $00C000.l,X		; 7F 00 C0 00
	sta ($00.b,X)		; 81 00
	.db $82, $01, $04		; 82 01 04
	cop $09.b		; 02 09
	tsb $081B.w		; 0C 1B 08
	ora [$9F.b],Y		; 17 9F
	brk $80.b		; 00 80
	bra   1.b		; 80 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	ora [$18.b]		; 07 18
	ora [$10.b]		; 07 10
	ora $27C7D8.l		; 0F D8 C7 27
	cpx #$B3.b		; E0 B3
	sty $39C5.w		; 8C C5 39
	php		; 08
	sbc ($32.b,S),Y		; F3 32
	cmp [$54.b]		; C7 54
	stz $3684.w,X		; 9E 84 36
	cpy #$3F.b		; C0 3F
	cpx #$1F.b		; E0 1F
	bra 127.b		; 80 7F
	ora ($FE.b,X)		; 01 FE
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	asl $36E0.w,X		; 1E E0 36
	iny		; C8
	sta $389920.l,X		; 9F 20 99 38
	ora ($7F.b,X)		; 01 7F
	brk $87.b		; 00 87
	cop $0E.b		; 02 0E
	ora #$1718.w		; 09 18 17
	bmi  46.b		; 30 2E
	rts		; 60

	jsr $38DF.w		; 20 DF 38
	cmp [$7F.b]		; C7 7F
	bra -121.b		; 80 87
	brk $0E.b		; 00 0E
	ora ($18.b,X)		; 01 18
	ora [$30.b]		; 07 30
	ora $E81F60.l		; 0F 60 1F E8
	asl $03F8.w		; 0E F8 03
	dec A		; 3A
	ora $C2.b,S		; 03 C2
	cmp $64.b,S		; C3 64
	asl $D0.b		; 06 D0
	trb $38A0.w		; 1C A0 38
	rti		; 40

	sei		; 78
	asl $03F0.w		; 0E F0 03
	jsr ($FC03.w,X)		; FC 03 FC
	cmp $3C.b,S		; C3 3C
	asl $F8.b		; 06 F8
	trb $38E0.w		; 1C E0 38
	cpy #$78.b		; C0 78
	bra  23.b		; 80 17
	asl $1F2E.w		; 0E 2E 1F
	rol $0F.b,X		; 36 0F
	rol $0F.b,X		; 36 0F
	dec A		; 3A
	ora [$3F.b]		; 07 3F
	brk $26.b		; 00 26
	cop $0F.b		; 02 0F
	cop $0E.b		; 02 0E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	brk $F5.b		; 00 F5
	asl $54EB.w		; 0E EB 54
	cpx $B050.w		; EC 50 B0
	rts		; 60

	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	sta ($00.b,X)		; 81 00
	asl $5400.w		; 0E 00 54
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9B.b		; 00 9B
	asl $24.b		; 06 24
	tas		; 1B
	and $1C.b,S		; 23 1C
	eor ($3E.b,X)		; 41 3E
	adc ($1E.b,X)		; 61 1E
	sbc ($1E.b,X)		; E1 1E
	sbc ($0E.b),Y		; F1 0E
	sbc $000600.l,X		; FF 00 06 00
	tas		; 1B
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	sec		; 38
	ldy $48.b,X		; B4 48
	sty $5970.w		; 8C 70 59
	ldy #$61.b		; A0 61
	bra -126.b		; 80 82
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $38.b		; 00 38
	brk $48.b		; 00 48
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0A01.w		; 0D 01 0A
	ora $0E.b		; 05 0E
	brk $05.b		; 00 05
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	sbc $FF050F.l,X		; FF 0F 05 FF
	asl $06.b		; 06 06
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03C500.l		; 0F 00 C5 03
	plp		; 28
	sbc $F41BBF.l,X		; FF BF 1B F4
	ora $017C.w		; 0D 7C 01
	and ($87.b)		; 32 87
	bcc -50.b		; 90 CE
	bra -20.b		; 80 EC
	cpy #$F8.b		; C0 F8
	ora ($01.b,X)		; 01 01
	sed		; F8
	bpl -10.b		; 10 F6
	php		; 08
	inc $FC00.w,X		; FE 00 FC
	sty $7C.b		; 84 7C
	jmp $4858.w		; 4C 58 48
	ldy #$20.b		; A0 20
	phd		; 0B
	beq   7.b		; F0 07
	pei ($0C.b)		; D4 0C
	txy		; 9B
	php		; 08
	ora [$00.b],Y		; 17 00
	ora [$05.b],Y		; 17 05
	asl A		; 0A
	ora ($0B.b,X)		; 01 0B
	brk $06.b		; 00 06
	bvc  79.b		; 50 4F
	trb $0B.b		; 14 0B
	tas		; 1B
	tsb $14.b		; 04 14
	phd		; 0B
	trb $0B.b		; 14 0B
	asl A		; 0A
	ora $0B.b		; 05 0B
	tsb $06.b		; 04 06
	ora ($FB.b,X)		; 01 FB
	bit $5328.w		; 2C 28 53
	cop $AF.b		; 02 AF
	tay		; A8
	adc ($14.b),Y		; 71 14
	xba		; EB
	tsb $FA.b		; 04 FA
	tya		; 98
	ror A		; 6A
	cld		; D8
	ldy $D728.w,X		; BC 28 D7
	eor ($AC.b,S),Y		; 53 AC
	lda $E61150.l		; AF 50 11 E6
	phd		; 0B
	pea $FC02.w		; F4 02 FC
	asl A		; 0A
	pea $609C.w		; F4 9C 60
	sta [$3C.b]		; 87 3C
	asl $A0.b		; 06 A0
	ldy #$E1.b		; A0 E1
	mvp $02,$E6		; 44 E6 02
	cmp $5FA11A.l,X		; DF 1A A1 5F
	cpx #$07.b		; E0 07
	bvc  60.b		; 50 3C
	cmp $A0.b,S		; C3 A0
	eor $E61EE1.l,X		; 5F E1 1E E6
	ora $20DF.w,Y		; 19 DF 20
	ldy #$5F.b		; A0 5F
	cpx #$1F.b		; E0 1F
	bvc  47.b		; 50 2F
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	bvs -68.b		; 70 BC
	brk $58.b		; 00 58
	cpy #$10.b		; C0 10
	asl $07F0.w		; 0E F0 07
	sed		; F8
	eor $BC.b,S		; 43 BC
	lda $00FE40.l,X		; BF 40 FE 00
	ldy $5800.w,X		; BC 00 58
	ldy #$10.b		; A0 10
	cpx #$0A.b		; E0 0A
	adc $F4.b,S		; 63 F4
	rol $48.b		; 26 48
	sty $D8F1.w		; 8C F1 D8
	sbc ($E0.b),Y		; F1 E0
	cmp ($21.b,S),Y		; D3 21
	adc ($40.b,S),Y		; 73 40
	cpx $83.b		; E4 83
	bit $1820.w,X		; 3C 20 18
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $21.b		; 00 21
	brk $40.b		; 00 40
	bra -125.b		; 80 83
	brk $2C.b		; 00 2C
	beq -70.b		; F0 BA
	jmp ($00FE.w,X)		; 7C FE 00
	cmp $03FCC8.l		; CF C8 FC 03
	jmp $BE33.w		; 4C 33 BE
	sta $FB.b		; 85 FB
	ror $70.b		; 66 70
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	bmi   3.b		; 30 03
	brk $33.b		; 00 33
	bra -123.b		; 80 85
	rti		; 40

	ror $00.b		; 66 00
	ora #$1326.w		; 09 26 13
	eor $D368.w		; 4D 68 D3
	sta ($24.b),Y		; 91 24
	sbc ($08.b,X)		; E1 08
	.db $42, $91		; 42 91
	and $C0.b,S		; 23 C0
	lda $43.b		; A5 43
	jsr $411F.w		; 20 1F 41
	rol $3CC3.w,X		; 3E C3 3C
	tsb $78.b		; 04 78
	php		; 08
	bvs -111.b		; 70 91
	jsr $00C0.w		; 20 C0 00
	eor $00.b,S		; 43 00
	plp		; 28
	jmp ($8C68.w)		; 6C 68 8C
	clc		; 18
	sbc ($05.b,X)		; E1 05
	xce		; FB
	jsr ($6F02.w,X)		; FC 02 6F
	sbc ($FC.b)		; F2 FC
	brk $93.b		; 00 93
	adc $906C.w		; 6D 6C 90
	sty $E110.w		; 8C 10 E1
	brk $FB.b		; 00 FB
	brk $02.b		; 00 02
	ora ($F2.b,X)		; 01 F2
	ora ($00.b,X)		; 01 00
	ora $6D.b,S		; 03 6D
	brk $1D.b		; 00 1D
	cmp ($3A.b,X)		; C1 3A
	sta $B4.b,S		; 83 B4
	sta [$63.b]		; 87 63
	tsb $3FA0.w		; 0C A0 3F
	pha		; 48
	adc [$8F.b]		; 67 8F
	cpy #$10.b		; C0 10
	sta $833EC1.l		; 8F C1 3E 83
	jmp ($7887.w,X)		; 7C 87 78
	tsb $3FF0.w		; 0C F0 3F
	cpy #$67.b		; C0 67
	bra -64.b		; 80 C0
	brk $8F.b		; 00 8F
	brk $00.b		; 00 00
	beq  64.b		; F0 40
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	cpy #$E0.b		; C0 E0
	brk $40.b		; 00 40
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $0A.b		; 00 0A
	ora $0F.b		; 05 0F
	brk $0B.b		; 00 0B
	ora [$07.b]		; 07 07
	brk $05.b		; 00 05
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	bra  64.b		; 80 40
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $2B.b		; 00 2B
	asl $4B.b,X		; 16 4B
	bit $44.b,X		; 34 44
	tsa		; 3B
	ror $4501.w,X		; 7E 01 45
	sec		; 38
	bit $2400.w,X		; 3C 00 24
	clc		; 18
	clc		; 18
	brk $16.b		; 00 16
	brk $34.b		; 00 34
	brk $3B.b		; 00 3B
	brk $01.b		; 00 01
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2D.b		; 00 2D
	ora ($3D.b)		; 12 3D
	cop $15.b		; 02 15
	asl A		; 0A
	and $4D16.w		; 2D 16 4D
	rol $AD.b,X		; 36 AD
	ror $D5.b,X		; 76 D5
	ror $2E5D.w		; 6E 5D 2E
	ora ($00.b)		; 12 00
	cop $00.b		; 02 00
	asl A		; 0A
	brk $16.b		; 00 16
	brk $36.b		; 00 36
	brk $76.b		; 00 76
	brk $6E.b		; 00 6E
	brk $2E.b		; 00 2E
	brk $FF.b		; 00 FF
	sta $FFD3FF.l		; 8F FF D3 FF
	cld		; D8
	lda [$95.b],Y		; B7 95
	lda ($92.b,S),Y		; B3 92
	clv		; B8
	tay		; A8
	tya		; 98
	dey		; 88
	stz $8F94.w		; 9C 94 8F
	tsb $02D3.w		; 0C D3 02
	cld		; D8
	brk $95.b		; 00 95
	pha		; 48
	sta ($4C.b)		; 92 4C
	tay		; A8
	eor [$88.b]		; 47 88
	adc [$94.b]		; 67 94
	adc $FA.b,S		; 63 FA
	cmp ($8F.b,X)		; C1 8F
	bvs  -2.b		; 70 FE
	ora ($FC.b,X)		; 01 FC
	xce		; FB
	sta $B0C877.l		; 8F 77 C8 B0
	ply		; 7A
	lsr $70.b		; 46 70
	and $7007C0.l,X		; 3F C0 07 70
	brk $01.b		; 00 01
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $B7.b		; 00 B7
	brk $45.b		; 00 45
	sty $09.b		; 84 09
	bit #$FE09.w		; 89 09 FE
	lda ($7E.b,X)		; A1 7E
	sed		; F8
	ora $FEFF00.l,X		; 1F 00 FF FE
	sbc $000000.l,X		; FF 00 00 00
	brk $80.b		; 00 80
	bra  98.b		; 80 62
	sta $E51A.w,X		; 9D 1A E5
	ora [$18.b]		; 07 18
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $53A400.l,X		; 7F 00 A4 53
	jsl $A36CDD.l		; 22 DD 6C A3
	ply		; 7A
	sta ($3F.b,X)		; 81 3F
	cpy #$88.b		; C0 88
	sbc [$10.b],Y		; F7 10
	rts		; 60

	sta $8F50E0.l,X		; 9F E0 50 8F
	jmp $1CA383.l		; 5C 83 A3 1C
	brk $07.b		; 00 07
	bra -128.b		; 80 80
	eor [$40.b],Y		; 57 40
	cpy #$4F.b		; C0 4F
	jsr $180F.w		; 20 0F 18
	inc $EA00.w		; EE 00 EA
	ldy #$52.b		; A0 52
	bit $D2.b		; 24 D2
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	ora $03.b,S		; 03 03
	inc $0E00.w,X		; FE 00 0E
	beq  10.b		; F0 0A
	pea $EC12.w		; F4 12 EC
	cmp ($2C.b)		; D2 2C
	bit $FFC0.w,X		; 3C C0 FF
	brk $03.b		; 00 03
	jsr ($FF00.w,X)		; FC 00 FF
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -128.b		; 80 80
	sbc $000006.l,X		; FF 06 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	jsr ($FE33.w,X)		; FC 33 FE
	ldy $87.b,X		; B4 87
	eor $26C1.w,X		; 5D C1 26
	cpx #$89.b		; E0 89
	sed		; F8
	cmp ($BE.b,X)		; C1 BE
	sbc ($6D.b,S),Y		; F3 6D
	wai		; CB
	php		; 08
	ora ($00.b,X)		; 01 00
	sei		; 78
	brk $BE.b		; 00 BE
	bra  95.b		; 80 5F
	rti		; 40

	stx $00.b		; 86 00
	bra 112.b		; 80 70
	adc ($9C.b,X)		; 61 9C
	beq -24.b		; F0 E8
	sbc $DE70.w,Y		; F9 70 DE
	sbc ($FC.b),Y		; F1 FC
	and ($A8.b,S),Y		; 33 A8
	asl $B1.b,X		; 16 B1
	phb		; 8B
	adc $3E7D5F.l,X		; 7F 5F 7D 3E
	ldy #$60.b		; A0 60
	bne  32.b		; D0 20
	eor ($20.b),Y		; 51 20
	and ($00.b,S),Y		; 33 00
	brk $51.b		; 00 51
	sta $44.b		; 85 44
	eor $BF3890.l		; 4F 90 38 BF
	sei		; 78
	ora [$81.b]		; 07 81
	ror $F314.w,X		; 7E 14 F3
	brk $9B.b		; 00 9B
	bcc 102.b		; 90 66
	eor $38.b		; 45 38
	sbc ($EC.b,S),Y		; F3 EC
	inc $07F1.w,X		; FE F1 07
	brk $7E.b		; 00 7E
	ora ($F1.b,X)		; 01 F1
	asl $6798.w		; 0E 98 67
	asl $F9.b		; 06 F9
	brk $FE.b		; 00 FE
	cpx #$1E.b		; E0 1E
	eor ($EC.b),Y		; 51 EC
	bit $90B6.w		; 2C B6 90
	jmp.w [$D063]		; DC 63 D0
	trb $58E3.w		; 1C E3 58
	lda [$9B.b]		; A7 9B
	adc [$F3.b]		; 67 F3
	sty $94E9.w		; 8C E9 94
	ldx $48.b,Y		; B6 48
	jmp $C010A0.l		; 5C A0 10 C0
	lda $40.b,S		; A3 40
	lda [$40.b]		; A7 40
	adc [$00.b]		; 67 00
	sty $9423.w		; 8C 23 94
	phd		; 0B
	php		; 08
	asl $0F02.w,X		; 1E 02 0F
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	ora ($F7.b,X)		; 01 F7
	eor $CA.b,X		; 55 CA
	dec A		; 3A
	sbc $48.b		; E5 48
	adc $13DC.w,X		; 7D DC 13
	asl $0F01.w,X		; 1E 01 0F
	brk $3F.b		; 00 3F
	brk $F3.b		; 00 F3
	tsb $36C8.w		; 0C C8 36
	sbc $1A.b		; E5 1A
	adc $1382.w,X		; 7D 82 13
	cpx #$7088.w		; E0 88 70
	sed		; F8
	brk $48.b		; 00 48
	bmi  88.b		; 30 58
	jsr $1824.w		; 20 24 18
	trb $08.b		; 14 08
	asl $0000.w		; 0E 00 00
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($1D.b,X)		; 01 1D
	tsb $3E.b		; 04 3E
	asl A		; 0A
	eor $62B529.l,X		; 5F 29 B5 62
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tsb $02.b		; 04 02
	asl A		; 0A
	ora ($29.b,X)		; 01 29
	brk $62.b		; 00 62
	php		; 08
	and $16.b		; 25 16
	and $16.b,X		; 35 16
	and $0F0E.w,X		; 3D 0E 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	php		; 08
	asl $08.b,X		; 16 08
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8E.b		; 00 8E
	txa		; 8A
	sta [$80.b]		; 87 80
	sta $8E9681.l		; 8F 81 96 8E
	sbc $1F.b,S		; E3 1F
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	txa		; 8A
	adc ($80.b),Y		; 71 80
	sei		; 78
	bra 112.b		; 80 70
	bit #$1C68.w		; 89 68 1C
	trb $0101.w		; 1C 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $47.b		; C4 47
	sta $7E81.w,Y		; 99 81 7E
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	brk $3C.b		; 00 3C
	jsr ($FF00.w,X)		; FC 00 FF
	brk $03.b		; 00 03
	dec A		; 3A
	cop $7E.b		; 02 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	cpy #$0303.w		; C0 03 03
	brk $00.b		; 00 00
	clc		; 18
	sed		; F8
	ora #$42F9.w		; 09 F9 42
	adc $F41FD0.l,X		; 7F D0 1F F4
	ora [$FC.b]		; 07 FC
	ora ($9D.b,X)		; 01 9D
	sta ($61.b,X)		; 81 61
	sbc ($67.b,X)		; E1 67
	rts		; 60

	stx $90.b,Y		; 96 90
	lda $25.b		; A5 25
	inx		; E8
	php		; 08
	plx		; FA
	cop $FF.b		; 02 FF
	ora ($7E.b,X)		; 01 7E
	brk $9E.b		; 00 9E
	bra  59.b		; 80 3B
	iny		; C8
	ora ($9E.b)		; 12 9E
	stz $87.b,X		; 74 87
	eor $03B1.w		; 4D B1 03
	jsr ($FF00.w,X)		; FC 00 FF
	rts		; 60

	sta $888106.l,X		; 9F 06 81 88
	sta [$1E.b]		; 87 1E
	adc ($07.b,X)		; 61 07
	sei		; 78
	ora ($7E.b,X)		; 01 7E
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	sbc $00FE00.l,X		; FF 00 FE 00
	cmp $E12CC1.l		; CF C1 2C E1
	lsr A		; 4A
	tda		; 7B
	bvc -97.b		; 50 9F
	ora $E6.b,X		; 15 E6
	asl $FB.b		; 06 FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp ($3E.b,X)		; C1 3E
	sbc ($1E.b,X)		; E1 1E
	tda		; 7B
	sty $1F.b		; 84 1F
	cpx #$F906.w		; E0 06 F9
	ora $FC.b,S		; 03 FC
	lda $8000FF.l,X		; BF FF 00 80
	jsr $08E0.w		; 20 E0 08
	sed		; F8
	eor ($7F.b,X)		; 41 7F
	bcc  31.b		; 90 1F
	cpx $07.b		; E4 07
	sbc $FF01.w,X		; FD 01 FF
	brk $80.b		; 00 80
	adc $F81FE0.l,X		; 7F E0 1F F8
	ora [$7F.b]		; 07 7F
	bra  31.b		; 80 1F
	cpx #$F807.w		; E0 07 F8
	ora ($FE.b,X)		; 01 FE
	cpx #$08FC.w		; E0 FC 08
	asl $0600.w		; 0E 00 06
	php		; 08
	tsb $8C80.w		; 0C 80 8C
	bcc -104.b		; 90 98
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	jsr ($0E00.w,X)		; FC 00 0E
	beq   6.b		; F0 06
	sed		; F8
	tsb $8CF0.w		; 0C F0 8C
	bvs -104.b		; 70 98
	rts		; 60

	sed		; F8
	brk $F8.b		; 00 F8
	brk $39.b		; 00 39
	ora ($3D.b,X)		; 01 3D
	ora $1C3B.w,Y		; 19 3B 1C
	rol $261D.w		; 2E 1D 26
	tas		; 1B
	adc [$1B.b]		; 67 1B
	lda $8F43.w,X		; BD 43 8F
	bvs   1.b		; 70 01
	brk $19.b		; 00 19
	brk $1C.b		; 00 1C
	ora ($1C.b,X)		; 01 1C
	ora ($1A.b,X)		; 01 1A
	ora ($1B.b,X)		; 01 1B
	brk $40.b		; 00 40
	ora [$70.b]		; 07 70
	brk $1D.b		; 00 1D
	plx		; FA
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $FFFF.w,X		; FE FF FF
	inc $FFFD.w,X		; FE FD FF
	inc $7EFF.w,X		; FE FF 7E
	sbc $0FE618.l,X		; FF 18 E6 0F
	sed		; F8
	rol $7EFF.w,X		; 3E FF 7E
	sbc $BDFF7C.l,X		; FF 7C FF BD
	ror $9D6A.w,X		; 7E 6A 9D
	dec A		; 3A
	sbc $FF.b		; E5 FF
	and $4FFF77.l,X		; 3F 77 FF 4F
	cmp $84B309.l,X		; DF 09 B3 84
	sbc $F946.w,Y		; F9 46 F9
	lsr A		; 4A
	sbc $C8.b,X		; F5 C8
	sbc [$0C.b],Y		; F7 0C
	and $2F0F30.l,X		; 3F 30 0F 2F
	jsr $4053.w		; 20 53 40
	clv		; B8
	ora $78.b,S		; 03 78
	sta $74.b,S		; 83 74
	sta $77.b,S		; 83 77
	bra -13.b		; 80 F3
	sbc $F3FD.w,X		; FD FD F3
	sbc [$F0.b],Y		; F7 F0
	bmi  -1.b		; 30 FF
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $FDF8.w,X		; FD F8 FD
	adc $FDFA.w,X		; 7D FA FD
	cpx #$E8F3.w		; E0 F3 E8
	bcc 108.b		; 90 6C
	and $3EC1D0.l		; 2F D0 C1 3E
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	cop $FD.b		; 02 FD
	rti		; 40

	lda $9979F4.l,X		; BF F4 79 99
	adc $406F11.l,X		; 7F 11 6F 40
	and $3C5285.l,X		; 3F 85 52 3C
	cmp ($28.b,S),Y		; D3 28
	cmp [$9F.b]		; C7 9F
	jsr $7F00.w		; 20 00 7F
	brk $7F.b		; 00 7F
	rts		; 60

	sta $52C03F.l,X		; 9F 3F C0 52
	sta $0ED1.w		; 8D D1 0E
	cpy #$2A1F.w		; C0 1F 2A
	cpy $93.b		; C4 93
	cpx $ECD3.w		; EC D3 EC
	cpy $FB.b		; C4 FB
	ora $7F84E0.l,X		; 1F E0 84 7F
	trb $ED.b		; 14 ED
	brk $EA.b		; 00 EA
	cpy $31.b		; C4 31
	bit $2CC0.w		; 2C C0 2C
	cmp ($38.b,X)		; C1 38
	cmp $20.b,S		; C3 20
	cmp $7F.b,S		; C3 7F
	bra -115.b		; 80 8D
	adc ($0A.b)		; 72 0A
	pea $0305.w		; F4 05 03
	ora #$0F07.w		; 09 07 0F
	ora ($1B.b,X)		; 01 1B
	ora ($13.b,X)		; 01 13
	ora ($05.b,X)		; 01 05
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $D6.b		; 00 D6
	dey		; 88
	inx		; E8
	ldy #$C0B0.w		; A0 B0 C0
	ldy #$A0C0.w		; A0 C0 A0
	cpy #$80C0.w		; C0 C0 80
	cpy #$C080.w		; C0 80 C0
	brk $88.b		; 00 88
	jsr $10A0.w		; 20 A0 10
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $64.b		; 00 64
	jsr $003C.w		; 20 3C 00
	bit $10.b,X		; 34 10
	clc		; 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	clc		; 18
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $6C9200.l,X		; 7F 00 92 6C
	dec $2430.w		; CE 30 24
	cld		; D8
	trb $08E0.w		; 1C E0 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	beq   0.b		; F0 00
	brk $6C.b		; 00 6C
	brk $30.b		; 00 30
	brk $D8.b		; 00 D8
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $C8.b		; 00 C8
	trb $3840.w		; 1C 40 38
	brk $B0.b		; 00 B0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $1C.b		; 00 1C
	cpx #$C038.w		; E0 38 C0
	bcs  64.b		; B0 40
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	brk $A0.b		; 00 A0
	brk $FE.b		; 00 FE
	phy		; 5A
	sta $30.b,X		; 95 30
	cmp $060F70.l		; CF 70 0F 06
	sbc $1200.w,Y		; F9 00 12
	rts		; 60

	brk $A0.b		; 00 A0
	rti		; 40

	inc $1100.w,X		; FE 00 11
	inc $FE01.w		; EE 01 FE
	ora ($FE.b,X)		; 01 FE
	sbc $1206.w,Y		; F9 06 12
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	and ($01.b),Y		; 31 01
	tsa		; 3B
	bpl  55.b		; 10 37
	ora $1B2D.w,Y		; 19 2D 1B
	and $1B.b		; 25 1B
	and $000002.l,X		; 3F 02 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
	ora $1B00.w,Y		; 19 00 1B
	brk $1B.b		; 00 1B
	brk $02.b		; 00 02
	brk $FB.b		; 00 FB
	lda $7FFFBE.l,X		; BF BE FF 7F
	sbc $FF7FFF.l,X		; FF FF 7F FF
	adc $BF7FFE.l,X		; 7F FE 7F BF
	lsr $7F9F.w,X		; 5E 9F 7F
	sta $7C.b,S		; 83 7C
	stz $3F7F.w		; 9C 7F 3F
	sbc $1F7F7F.l,X		; FF 7F 7F 1F
	adc $141F6C.l,X		; 7F 6C 1F 14
	adc $00F609.l		; 6F 09 F6 00
	ora [$04.b]		; 07 04
	trb $3017.w		; 1C 17 30
	ora $20.b,S		; 03 20
	jsl $600470.l		; 22 70 04 60
	jsr $4D61.w		; 20 61 4D
	cmp $030000.l		; CF 00 00 03
	ora $0F.b,S		; 03 0F
	ora $1F1F1F.l		; 0F 1F 1F 1F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $003030.l,X		; 1F 30 30 00
	bra -128.b		; 80 80
	cpy #$3000.w		; C0 00 30
	bmi  12.b		; 30 0C
	trb $B006.w		; 1C 06 B0
	ldx #$4F26.w		; A2 26 4F
	cop $BF.b		; 02 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F0C0.w		; C0 C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jmp $F0F05C.l		; 5C 5C F0 F0
	rti		; 40

	rti		; 40

	ora #$043F.w		; 09 3F 04
	ora $010F02.l,X		; 1F 02 0F 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($10.b,X)		; 01 10
	bpl  10.b		; 10 0A
	asl A		; 0A
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $4F00.w,X		; 3E 00 4F
	cpy #$E027.w		; C0 27 E0
	phb		; 8B
	sed		; F8
	and $3C.b		; 25 3C
	sta ($9E.b)		; 92 9E
	cpy #$89DF.w		; C0 DF 89
	sbc $00FF.w,Y		; F9 FF 00
	lda $001F80.l,X		; BF 80 1F 00
	eor [$50.b],Y		; 57 50
	cmp $00.b,S		; C3 00
	adc #$2108.w		; 69 08 21
	ora ($16.b,X)		; 01 16
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$40A0.w		; C0 A0 40
	bcc  96.b		; 90 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	brk $60.b		; 00 60
	brk $EF.b		; 00 EF
	adc [$D7.b],Y		; 77 D7
	adc $1F0F77.l		; 6F 77 0F 1F
	ora $03031F.l		; 0F 1F 03 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $77.b		; 00 77
	brk $6F.b		; 00 6F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	tay		; A8
	ror $A2.b		; 66 A2
	ror $A2.b		; 66 A2
	ror $A4.b		; 66 A4
	adc [$A5.b]		; 67 A5
	sbc $20.b,S		; E3 20
	adc $FC2480.l,X		; 7F 80 24 FC
	tay		; A8
	ora ($A2.b,S),Y		; 13 A2
	ora $19A2.w,Y		; 19 A2 19
	ldy $19.b		; A4 19
	lda $18.b		; A5 18
	jsr $811C.w		; 20 1C 81
	bra  75.b		; 80 4B
	pha		; 48
	iny		; C8
	bcs  72.b		; B0 48
	bmi 112.b		; 30 70
	pha		; 48
	bmi  28.b		; 30 1C
	pla		; 68
	tsb $06E4.w		; 0C E4 06
	beq   3.b		; F0 03
	plx		; FA
	ora $B0.b,S		; 03 B0
	brk $30.b		; 00 30
	bra  64.b		; 80 40
	bra   8.b		; 80 08
	iny		; C8
	bpl -128.b		; 10 80
	sei		; 78
	brk $FE.b		; 00 FE
	cop $FC.b		; 02 FC
	brk $C0.b		; 00 C0
	cpy #$FEFE.w		; C0 FE FE
	cmp $FF7FEF.l,X		; DF EF 7F FF
	sbc $3F3FFF.l,X		; FF FF 3F 3F
	ora ($1E.b)		; 12 1E
	tsb $C00C.w		; 0C 0C C0
	brk $BE.b		; 00 BE
	cpy #$FEC5.w		; C0 C5 FE
	ora $3ECFFE.l		; 0F FE CF 3E
	and $1206.w,Y		; 39 06 12
	tsb $000C.w		; 0C 0C 00
	ora ($00.b,X)		; 01 00
	rol $6001.w,X		; 3E 01 60
	ora $7D0F70.l,X		; 1F 70 0F 7D
	ora $04.b,S		; 03 04
	ora [$06.b]		; 07 06
	ora [$0D.b]		; 07 0D
	phd		; 0B
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $000E00.l,X		; 1F 00 0E 00
	brk $00.b		; 00 00
	ora $01.b		; 05 01
	asl $00.b		; 06 00
	ora #$FF06.w		; 09 06 FF
	brk $E2.b		; 00 E2
	sbc $67F90B.l,X		; FF 0B F9 67
	jsr ($0F69.w,X)		; FC 69 0F
	tyx		; BB
	.db $82, $4D, $C0		; 82 4D C0
	ora ($F1.b,S),Y		; 13 F1
	brk $00.b		; 00 00
	sep #$01		; E2 01
	sta [$10.b],Y		; 97 10
	ora $00.b,S		; 03 00
	beq   0.b		; F0 00
	jmp ($BE00.w,X)		; 7C 00 BE
	bra  13.b		; 80 0D
	brk $D4.b		; 00 D4
	sbc [$E0.b],Y		; F7 E0
	inc $F0E8.w,X		; FE E8 F0
	sed		; F8
	cpx #$E0B8.w		; E0 B8 E0
	inx		; E8
	bvc  80.b		; 50 50
	jsr $1070.w		; 20 70 10
	nop		; EA
	jsl $6080C0.l		; 22 C0 80 60
	cpy #$40A0.w		; C0 A0 40
	ldy #$5040.w		; A0 40 50
	brk $20.b		; 00 20
	bra  16.b		; 80 10
	bra  94.b		; 80 5E
	and ($7C.b,X)		; 21 7C
	ora $C8A6E4.l		; 0F E4 A6 C8
	jmp $8C00.w		; 4C 00 8C
	bpl -104.b		; 10 98
	bra -104.b		; 80 98
	jsr $2030.w		; 20 30 20
	bra   2.b		; 80 02
	.db $82, $98, $00		; 82 98 00
	bmi   0.b		; 30 00
	sei		; 78
	php		; 08
	cpx #$7080.w		; E0 80 70
	bpl -64.b		; 10 C0
	brk $C0.b		; 00 C0
	rts		; 60

	cpy #$A0A0.w		; C0 A0 A0
	cpy #$00E0.w		; C0 E0 00
	cpy #$8080.w		; C0 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	ora ($4B.b)		; 12 4B
	bit $5D.b,X		; 34 5D
	rol $3F.b		; 26 3F
	asl $2F.b		; 06 2F
	ora ($45.b),Y		; 11 45
	tsa		; 3B
	phk		; 4B
	and [$AB.b],Y		; 37 AB
	adc [$12.b],Y		; 77 12
	brk $34.b		; 00 34
	brk $26.b		; 00 26
	brk $06.b		; 00 06
	brk $11.b		; 00 11
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $77.b		; 00 77
	brk $ED.b		; 00 ED
	ora $7EAE7E.l,X		; 1F 7E AE 7E
	ldx $7F.b,Y		; B6 7F
	lda ($6F.b)		; B2 6F
	ldy $6F.b		; A4 6F
	ldx $6D.b		; A6 6D
	lda $6C.b		; A5 6C
	tay		; A8
	ora $A61A.w		; 0D 1A A6
	tsb $04B6.w		; 0C B6 04
	bcs   2.b		; B0 02
	ldy $10.b		; A4 10
	ldx $10.b		; A6 10
	lda $12.b		; A5 12
	tay		; A8
	ora ($42.b,S),Y		; 13 42
	sbc $175A16.l		; EF 16 5A 17
	cli		; 58
	and $341778.l		; 2F 78 17 34
	plx		; FA
	asl $FF5C.w,X		; 1E 5C FF
	adc $303E.w,X		; 7D 3E 30
	bmi  37.b		; 30 25
	jsr $2027.w		; 20 27 20
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $1D.b		; 00 1D
	tsb $58.b		; 04 58
	bmi -20.b		; 30 EC
	clc		; 18
	ldy $FE.b		; A4 FE
	bcs -100.b		; B0 9C
	ldy #$E068.w		; A0 68 E0
	php		; 08
	jsr $8070.w		; 20 70 80
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $C0.b		; 00 C0
	bcs  64.b		; B0 40
	beq   0.b		; F0 00
	cpy #$4040.w		; C0 40 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora $0C3211.l		; 0F 11 32 0C
	ror $EF2C.w,X		; 7E 2C EF
	lsr $EF.b		; 46 EF
	lsr A		; 4A
	cmp $A2.b,X		; D5 A2
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $2D00.w		; 0D 00 2D
	brk $46.b		; 00 46
	bpl  74.b		; 10 4A
	bpl -94.b		; 10 A2
	php		; 08
	and $C05FE0.l		; 2F E0 5F C0
	adc $E801.w,Y		; 79 01 E8
	ora $803C20.l		; 0F 20 3C 80
	beq   0.b		; F0 00
	cpy #$8000.w		; C0 00 80
	eor $80BF40.l,X		; 5F 40 BF 80
	inc $F400.w,X		; FE 00 F4
	tsb $D0.b		; 04 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	ora [$E5.b],Y		; 17 E5
	sbc [$D3.b],Y		; F7 D3
	sbc $FFE7E3.l,X		; FF E3 E7 FF
	tsx		; BA
	inc $EF48.w,X		; FE 48 EF
	bra -68.b		; 80 BC
	brk $00.b		; 00 00
	tsb $09.b		; 04 09
	cmp ($4B.b,S),Y		; D3 4B
	rti		; 40

	lda $A7.b,S		; A3 A7
	cld		; D8
	lda $50C1.w,Y		; B9 C1 50
	bcc -128.b		; 90 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$6000.w		; C0 00 60
	cpy #$A060.w		; C0 60 A0
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	sei		; 78
	tsb $84B0.w		; 0C B0 84
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $88.b		; 00 88
	tsb $38A0.w		; 0C A0 38
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$8000.w		; C0 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	ora $13.b,S		; 03 13
	asl $1E2F.w		; 0E 2F 1E
	eor $0EFF2E.l,X		; 5F 2E FF 0E
	lda $1E3D1E.l		; AF 1E 3D 1E
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $1E00.w		; 0E 00 1E
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $5A.b		; 00 5A
	and $0974.w,X		; 3D 74 09
	adc $037C20.l		; 6F 20 7C 03
	eor $2F33.w,X		; 5D 33 2F
	tsb $3D.b		; 04 3D
	ora $2E.b		; 05 2E
	bpl  60.b		; 10 3C
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	bpl   3.b		; 10 03
	brk $33.b		; 00 33
	brk $04.b		; 00 04
	bpl   5.b		; 10 05
	cop $10.b		; 02 10
	ora ($75.b,X)		; 01 75
	ora ($5B.b)		; 12 5B
	plp		; 28
	stz $BF77.w,X		; 9E 77 BF
	sei		; 78
	dec A		; 3A
	jsr ($78BC.w,X)		; FC BC 78
	ldy $78.b,X		; B4 78
	clv		; B8
	bvs  18.b		; 70 12
	php		; 08
	plp		; 28
	tsb $77.b		; 04 77
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $E8.b		; 00 E8
	bpl -40.b		; 10 D8
	rti		; 40

	bvs   0.b		; 70 00
	bvc  32.b		; 50 20
	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	jsr $0000.w		; 20 00 00
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	jsr $0000.w		; 20 00 00
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
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	ora ($1C.b,X)		; 01 1C
	clc		; 18
	and $6E6F3C.l		; 2F 3C 6F 6E
	lsr $F7.b,X		; 56 F7
	sbc ($F7.b,S),Y		; F3 F7
	and $B53F.w		; 2D 3F B5
	and $180001.l,X		; 3F 01 00 18
	ora $24.b,S		; 03 24
	clc		; 18
	lsr $5239.w		; 4E 39 52
	and $1D22.w,X		; 3D 22 1D
	sbc $1B.b		; E5 1B
	cmp $0B.b,X		; D5 0B
	sbc $E9DE.w		; ED DE E9
	phx		; DA
	dec A		; 3A
	and #$F51F.w		; 29 1F F5
	ror $99.b		; 66 99
	eor #$6D92.w		; 49 92 6D
	sty $06.b		; 84 06
	sta $00DE.w,Y		; 99 DE 00
	pei ($10.b)		; D4 10
	and $C0.b		; 25 C0
	ora ($00.b),Y		; 11 00
	rts		; 60

	rts		; 60

	bvs 118.b		; 70 76
	stz $72.b,X		; 74 72
	rts		; 60

	rts		; 60

	rts		; 60

	bra  88.b		; 80 58
	inx		; E8
	cpx $8CDC.w		; EC DC 8C
	jmp ($9E66.w,X)		; 7C 66 9E
	rol $6E9E.w		; 2E 9E 6E
	asl $9E0C.w,X		; 1E 0C 9E
	bra   0.b		; 80 00
	inx		; E8
	brk $D4.b		; 00 D4
	php		; 08
	tsb $6608.w		; 0C 08 66
	pla		; 68
	inc $E6E4.w		; EE E4 E6
	inx		; E8
	pla		; 68
	rts		; 60

	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	phd		; 0B
	sec		; 38
	asl $60.b		; 06 60
	bpl  82.b		; 10 52
	plp		; 28
	adc $0000.w		; 6D 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $07070F.l		; 0F 0F 07 07
	ora $2F2F1F.l,X		; 1F 1F 2F 2F
	ora ($12.b)		; 12 12
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $0030.w		; 20 30 00
	php		; 08
	tya		; 98
	asl $0A.b		; 06 0A
	ora $00.b,S		; 03 00
	sta ($42.b),Y		; 91 42
	adc $000000.l,X		; 7F 00 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	sed		; F8
	sed		; F8
	jsr ($EEFC.w,X)		; FC FC EE
	inc $9090.w		; EE 90 90
	sbc $33F8.w,Y		; F9 F8 33
	bmi   6.b		; 30 06
	ora $05.b,S		; 03 05
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	cop $C8.b		; 02 C8
	bmi  48.b		; 30 30
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $0F.b		; 00 0F
	sbc $AB1FE7.l,X		; FF E7 1F AB
	eor [$4F.b],Y		; 57 4F
	lda ($53.b),Y		; B1 53
	ldy $6D9B.w		; AC 9B 6D
	tax		; AA
	jmp $CFDA3E.l		; 5C 3E DA CF
	and ($03.b,S),Y		; 33 03
	ora $0651.w,X		; 1D 51 06
	bcs   1.b		; B0 01
	ldy $6D00.w		; AC 00 6D
	brk $5C.b		; 00 5C
	ora ($DA.b,X)		; 01 DA
	ora ($FE.b,X)		; 01 FE
	sbc ($F5.b)		; F2 F5
	xce		; FB
	inc $F8.b,X		; F6 F8
	sbc $FAF2.w,X		; FD F2 FA
	sbc $FE.b		; E5 FE
	cmp $ED.b,X		; D5 ED
	ldx $EB.b		; A6 EB
	ldx $D1.b		; A6 D1
	inx		; E8
	cmp ($EA.b)		; D2 EA
	sbc ($D8.b,X)		; E1 D8
.INDEX 8
	sep #$50		; E2 50
	sbc $A0.b		; E5 A0
	cmp $40.b,X		; D5 40
	ldx $10.b		; A6 10
	ldx $10.b		; A6 10
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	beq   0.b		; F0 00
	sed		; F8
	bvs  72.b		; 70 48
	bcs  56.b		; B0 38
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bcs   0.b		; B0 00
	iny		; C8
	brk $10.b		; 00 10
	and ($12.b),Y		; 31 12
	and ($12.b,S),Y		; 33 12
	and ($12.b,S),Y		; 33 12
	and ($14.b,S),Y		; 33 14
	adc [$04.b],Y		; 77 04
	adc [$24.b]		; 67 24
	adc [$22.b]		; 67 22
	adc $0E.b,S		; 63 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $2A.b		; 00 2A
	jsl $1A223A.l		; 22 3A 22 1A
	cop $1C.b		; 02 1C
	brk $19.b		; 00 19
	ora ($17.b,X)		; 01 17
	php		; 08
	asl $3D0F.w,X		; 1E 0F 3D
	cop $4F.b		; 02 4F
	php		; 08
	ror $BC04.w,X		; 7E 04 BC
	bmi -16.b		; 30 F0
	brk $01.b		; 00 01
	asl $08.b		; 06 08
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	bmi   4.b		; 30 04
	brk $30.b		; 00 30
	rti		; 40

	brk $00.b		; 00 00
	asl $2C61.w		; 0E 61 2C
	adc ($1A.b,X)		; 61 1A
	eor $18.b,S		; 43 18
	cmp $74.b,S		; C3 74
	dec $30.b		; C6 30
	stx $38.b		; 86 38
	sty $8C68.w		; 8C 68 8C
	and $001E21.l,X		; 3F 21 1E 00
	bit $7E00.w,X		; 3C 00 7E
	.db $42, $38		; 42 38
	brk $7C.b		; 00 7C
	tsb $F0.b		; 04 F0
	bra -16.b		; 80 F0
	bra  64.b		; 80 40
	dec $00.b		; C6 00
	dec $00.b		; C6 00
	lsr $24.b		; 46 24
	ror $04.b		; 66 04
	ror $04.b		; 66 04
	rol $10.b		; 26 10
	and ($00.b)		; 32 00
	and ($3C.b)		; 32 3C
	tsb $7C.b		; 04 7C
	mvp $04,$3C		; 44 3C 04
	clc		; 18
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	tsb $1C00.w		; 0C 00 1C
	bpl   0.b		; 10 00
	rol $72.b		; 26 72
	tsb $5E.b		; 04 5E
	bmi  93.b		; 30 5D
	rol $385F.w,X		; 3E 5F 38
	tda		; 7B
	cop $3F.b		; 02 3F
	clc		; 18
	and $1C06.w,Y		; 39 06 1C
	tsb $0C.b		; 04 0C
	tsb $30.b		; 04 30
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $02.b		; 00 02
	tsb $18.b		; 04 18
	brk $06.b		; 00 06
	brk $3F.b		; 00 3F
	clc		; 18
	and $1705.w,X		; 3D 05 17
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	trb $0B03.w		; 1C 03 0B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $05.b		; 00 05
	cop $08.b		; 02 08
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $180A.w		; 0C 0A 18
	ora $31.b,X		; 15 31
	and $433761.l,X		; 3F 61 37 43
	and $173B57.l,X		; 3F 57 3B 17
	ora $000307.l,X		; 1F 07 03 00
	ora [$00.b]		; 07 00
	asl $0100.w		; 0E 00 01
	brk $01.b		; 00 01
	asl A		; 0A
	ora ($05.b)		; 12 05
	ora ($05.b)		; 12 05
	asl $01.b		; 06 01
	eor $877F.w		; 4D 7F 87
	sbc $01.b		; E5 01
	cmp $FD.b,S		; C3 FD
	inc $FDFC.w,X		; FE FC FD
	sbc [$9C.b],Y		; F7 9C
	sbc $93F6FB.l,X		; FF FB F6 93
	lda $4423.w		; AD 23 44
	eor $83.b,S		; 43 83
	bra  -2.b		; 80 FE
	ora ($75.b,X)		; 01 75
	inx		; E8
	trb $E8.b		; 14 E8
	stp		; DB
	cpx #$13.b		; E0 13
	cpx #$90.b		; E0 90
	inc $44.b,X		; F6 44
	cmp $DDDF8E.l		; CF 8E DF DD
	sbc $3FFF7F.l,X		; FF 7F FF 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $308909.l,X		; FF 09 89 30
	rol $26.b,X		; 36 26
	lda #$06D9.w		; A9 D9 06
	rol $9FFF.w,X		; 3E FF 9F
	adc $CF7F9F.l,X		; 7F 9F 7F CF
	and $64F604.l,X		; 3F 04 F6 64
	ror $04.b,X		; 76 04
	ldx $B0.b		; A6 B0
	sbc ($30.b)		; F2 30
	sbc ($E0.b,S),Y		; F3 E0
	sbc ($A2.b,S),Y		; F3 A2
	lda ($A2.b,S),Y		; B3 A2
	lda ($88.b,S),Y		; B3 88
	bra -120.b		; 80 88
	bra  88.b		; 80 58
	rti		; 40

	ldy $2E00.w		; AC 00 2E
	rep #$4E		; C2 4E
	.db $82, $2C, $C0		; 82 2C C0
	bit $05C0.w		; 2C C0 05
	adc $2E530B.l		; 6F 0B 53 2E
	adc ($07.b),Y		; 71 07
	sec		; 38
	ora ($38.b,S),Y		; 13 38
	ora $1C.b		; 05 1C
	bpl  14.b		; 10 0E
	adc ($0B.b)		; 72 0B
	bmi  48.b		; 30 30
	and $010E22.l		; 2F 22 0E 01
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	tsb $00.b		; 04 00
	bmi  -1.b		; 30 FF
	tya		; 98
	asl $94D8.w		; 0E D8 94
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	bra -16.b		; 80 F0
	bra  32.b		; 80 20
	jsr $0AC0.w		; 20 C0 0A
	asl A		; 0A
	pla		; 68
	brk $F0.b		; 00 F0
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	rts		; 60

	rts		; 60

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $E4BA.w,X		; DE BA E4
	tay		; A8
	stz $A8.b		; 64 A8
	stz $CC54.w		; 9C 54 CC
	mvn $10,$E8		; 54 E8 10
	sec		; 38
	cpx #$7F.b		; E0 7F
	beq -70.b		; F0 BA
	ora ($A8.b,X)		; 01 A8
	ora ($A8.b,S),Y		; 13 A8
	ora ($54.b,S),Y		; 13 54
	and $54.b,S		; 23 54
	and $10.b,S		; 23 10
	ora [$C0.b]		; 07 C0
	cmp [$80.b]		; C7 80
	bra -18.b		; 80 EE
	plb		; AB
	sbc $A3.b		; E5 A3
	sbc [$A5.b]		; E7 A5
	sbc $A1.b,S		; E3 A1
	sbc $A0.b,S		; E3 A0
.ACCU 8
	sep #$A1		; E2 A1
	jsr ($FE83.w,X)		; FC 83 FE
	and $A310AB.l,X		; 3F AB 10 A3
	clc		; 18
	lda $18.b		; A5 18
	lda ($1C.b,X)		; A1 1C
	ldy #$1C.b		; A0 1C
	lda ($1D.b,X)		; A1 1D
	sta $03.b,S		; 83 03
	ora ($01.b,X)		; 01 01
	clv		; B8
	cli		; 58
	pei ($3C.b)		; D4 3C
	jsr ($BEBC.w,X)		; FC BC BE
	rol $BF3F.w,X		; 3E 3F BF
	and $B73FB7.l,X		; 3F B7 3F B7
	and [$B3.b],Y		; 37 B3
	pha		; 48
	bpl   4.b		; 10 04
	sec		; 38
	ldy $18.b		; A4 18
	rol A		; 2A
	trb $1C3F.w		; 1C 3F 1C
	and $1E.b,X		; 35 1E
	and ($1E.b,S),Y		; 33 1E
	and ($0E.b),Y		; 31 0E
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra -96.b		; 80 A0
	brk $B0.b		; 00 B0
	cpy #$D8.b		; C0 D8
	bmi 124.b		; 30 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	cpy #$00.b		; C0 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	tsb $0621.w		; 0C 21 06
	adc $20.b,S		; 63 20
	adc $10.b,S		; 63 10
.INDEX 16
	rep #$5C		; C2 5C
	dec $38.b		; C6 38
	stx $B0.b		; 86 B0
	sty $68.b		; 84 68
	tsb $001E.w		; 0C 1E 00
	bit $1E20.w,X		; 3C 20 1E
	cop $7C.b		; 02 7C
	rti		; 40

	sec		; 38
	brk $FC.b		; 00 FC
	sty $78.b		; 84 78
	brk $F0.b		; 00 F0
	brk $35.b		; 00 35
	cop $23.b		; 02 23
	brk $3B.b		; 00 3B
	ora ($37.b)		; 12 37
	php		; 08
	ror $6624.w		; 6E 24 66
	tsb $5E.b		; 04 5E
	jsr $3C7A.w		; 20 7A 3C
	cop $08.b		; 02 08
	brk $1C.b		; 00 1C
	ora ($04.b)		; 12 04
	php		; 08
	brk $24.b		; 00 24
	bpl   4.b		; 10 04
	clc		; 18
	jsr $3C00.w		; 20 00 3C
	brk $5E.b		; 00 5E
	cmp $5E.b,S		; C3 5E
	cmp $58.b,S		; C3 58
	cmp $58.b,S		; C3 58
.INDEX 16
	rep #$5C		; C2 5C
	dec $7C.b		; C6 7C
	dec $78.b		; C6 78
	dec $38.b		; C6 38
	sty $3C.b		; 84 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	brk $1C.b		; 00 1C
	and ($18.b,S),Y		; 33 18
	and ($08.b)		; 32 08
	jsl $56260C.l		; 22 0C 26 56
	bmi 122.b		; 30 7A
	tsb $BA.b		; 04 BA
	jmp ($5CBA.w,X)		; 7C BA 5C
	asl $0C02.w		; 0E 02 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $02.b		; 00 02
	eor $02.b,S		; 43 02
	eor $22.b,S		; 43 22
	adc $20.b,S		; 63 20
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	and ($10.b,X)		; 21 10
	and ($3C.b),Y		; 31 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $0F00.w,X		; 1E 00 0F
	ora ($0E.b,X)		; 01 0E
	adc $1A.b,S		; 63 1A
	adc $38.b,S		; 63 38
	adc $3C.b,S		; 63 3C
	ror $1C.b		; 66 1C
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	cpy $38.b		; C4 38
	cpy $203C.w		; CC 3C 20
	bit $1E20.w,X		; 3C 20 1E
	cop $18.b		; 02 18
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	bvs  64.b		; 70 40
	.db $42, $C3		; 42 C3
	cop $C3.b		; 02 C3
	cop $C3.b		; 02 C3
	jsl $632263.l		; 22 63 22 63
	brk $61.b		; 00 61
	brk $61.b		; 00 61
	brk $21.b		; 00 21
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	jmp ($1C40.w,X)		; 7C 40 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $0000.w,X		; 1E 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	cmp $988181.l		; CF 81 81 98
	sta ($9C.b,X)		; 81 9C
	sta ($BE.b,X)		; 81 BE
	sta $BE.b,S		; 83 BE
	sta $B8.b,S		; 83 B8
	sta $B8.b,S		; 83 B8
	.db $82, $31, $01		; 82 31 01
	ror $7F00.w,X		; 7E 00 7F
	ora ($7E.b,X)		; 01 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	cop $7C.b		; 02 7C
	brk $22.b		; 00 22
	sbc $41.b,S		; E3 41
	cmp ($41.b,X)		; C1 41
	cmp ($01.b,X)		; C1 01
	cmp ($01.b,X)		; C1 01
	cmp ($21.b,X)		; C1 21
	adc ($21.b,X)		; 61 21
	adc ($21.b,X)		; 61 21
	adc ($5D.b,X)		; 61 5D
	eor ($3E.b,X)		; 41 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ror $1E40.w,X		; 7E 40 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	lda $009E1E.l,X		; BF 1E 9E 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  43.b		; 80 2B
	trb $001E.w		; 1C 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bmi  24.b		; 30 18
	clc		; 18
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  16.b		; 30 10
	sec		; 38
	php		; 08
	clc		; 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	bra -126.b		; 80 82
	ora ($03.b,X)		; 01 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C080.w		; C0 80 C0
	brk $83.b		; 00 83
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C1.b,X)		; 01 C1
	tsb $0E40.w		; 0C 40 0E
	rti		; 40

	rol $2E60.w		; 2E 60 2E
	rts		; 60

	rol $0E60.w		; 2E 60 0E
	rts		; 60

	asl $7E60.w		; 0E 60 7E
	rti		; 40

	and $003F00.l,X		; 3F 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $203F00.l,X		; 1F 00 3F 20
	and $FF3F20.l,X		; 3F 20 3F FF
	lda ($E1.b,X)		; A1 E1
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bcc -16.b		; 90 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	brk $B0.b		; 00 B0
	bra -128.b		; 80 80
	asl $3F00.w,X		; 1E 00 3F
	jsr $203F.w		; 20 3F 20
	and $808F20.l		; 2F 20 8F 80
	sta $101F80.l		; 8F 80 1F 10
	dec A		; 3A
	sta $11C772.l		; 8F 72 C7 11
	cmp [$10.b]		; C7 10
	eor [$06.b]		; 47 06
	eor $27.b		; 45 27
	ror $5F.b		; 66 5F
	ror $7E7F.w,X		; 7E 7F 7E
	bvs   0.b		; 70 00
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	bit $3804.w,X		; 3C 04 38
	brk $1E.b		; 00 1E
	brk $6E.b		; 00 6E
	bit $7A.b		; 24 7A
	tsb $00FF.w		; 0C FF 00
	jmp ($3C83.w,X)		; 7C 83 3C
	.db $82, $1F, $C1		; 82 1F C1
	cpy #$C073.w		; C0 73 C0
	jmp $3EB8F1.l		; 5C F1 B8 3E
	ora ($FF.b),Y		; 11 FF
	brk $7F.b		; 00 7F
	ora $7F.b,S		; 03 7F
	cop $7E.b		; 02 7E
	rti		; 40

	bit $3030.w,X		; 3C 30 30
	bpl -128.b		; 10 80
	brk $01.b		; 00 01
	cpy #$0C13.w		; C0 13 0C
	and $4902.w,X		; 3D 02 49
	rol $52.b,X		; 36 52
	and $1B25.w		; 2D 25 1B
	lsr A		; 4A
	and [$96.b],Y		; 37 96
	adc $0C5EAD.l		; 6F AD 5E 0C
	brk $02.b		; 00 02
	brk $36.b		; 00 36
	brk $2D.b		; 00 2D
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $6F.b		; 00 6F
	brk $5E.b		; 00 5E
	brk $BE.b		; 00 BE
	adc $3F3FDE.l,X		; 7F DE 3F 3F
	cmp $77B35F.l		; CF 5F B3 77
	lda $76BF.w,Y		; B9 BF 76
	stp		; DB
	eor ($4B.b)		; 52 4B
	cmp ($1E.b)		; D2 1E
	sbc [$0C.b]		; E7 0C
	tsa		; 3B
	cmp [$0C.b]		; C7 0C
	lda ($02.b,S),Y		; B3 02
	lda $7601.w,Y		; B9 01 76
	brk $52.b		; 00 52
	bit $D2.b		; 24 D2
	bit $1C.b		; 24 1C
	and ($00.b),Y		; 31 00
	and ($02.b,X)		; 21 02
	adc $20.b,S		; 63 20
	adc $08.b,S		; 63 08
	.db $42, $18		; 42 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$5C		; C2 5C
	dec $0E.b		; C6 0E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	jmp ($3840.w,X)		; 7C 40 38
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $5C.b		; 00 5C
	cpy #$18F4.w		; C0 F4 18
	tsx		; BA
	jmp ($70BE.w,X)		; 7C BE 70
	ror $04.b,X		; 76 04
	adc $067938.l,X		; 7F 38 79 06
	and $002018.l,X		; 3F 18 20 00
	clc		; 18
	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	php		; 08
	sec		; 38
	brk $06.b		; 00 06
	brk $18.b		; 00 18
	brk $3D.b		; 00 3D
	ora $001F.w		; 0D 1F 00
	ora [$0F.b],Y		; 17 0F
	ora ($0F.b,S),Y		; 13 0F
	phd		; 0B
	tsb $0C.b		; 04 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0D.b		; 00 0D
	cop $00.b		; 02 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $D8.b		; 00 D8
	cpx #$C8EE.w		; E0 EE C8
	tsa		; 3B
	dec $FE.b,X		; D6 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C8.b		; 00 C8
	bpl -42.b		; 10 D6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	and [$08.b]		; 27 08
	jsr $220A.w		; 20 0A 22
	ora #$23.b		; 09 23
	tsb $1623.w		; 0C 23 16
	and ($04.b,S),Y		; 33 04
	and ($04.b),Y		; 31 04
	ora ($1A.b),Y		; 11 1A
	cop $1F.b		; 02 1F
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $0C.b		; 02 0C
	brk $1E.b		; 00 1E
	bpl  15.b		; 10 0F
	ora ($00.b,X)		; 01 00
	cpy $98EE.w		; CC EE 98
	dec $B120.w		; CE 20 B1
	adc $C0.b		; 65 C0
	lsr A		; 4A
	ora #$DD.b		; 09 DD
	adc [$FE.b]		; 67 FE
	tad		; 5B
	cpx #$0303.w		; E0 03 03
	ora [$07.b]		; 07 07
	ora $1E1E1F.l,X		; 1F 1F 1E 1E
	and $623D.w,X		; 3D 3D 62
	.db $62, $00, $00		; 62 00 00
	ora $2002.w,X		; 1D 02 20
	bmi -32.b		; 30 E0
	php		; 08
	rts		; 60

	ora [$6B.b],Y		; 17 6B
	and $7FCD.w,X		; 3D CD 7F
	and $FE.b,X		; 35 FE
	cmp $4E.b,X		; D5 4E
	lda ($0D.b)		; B2 0D
	cpy #$F0C0.w		; C0 C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	bpl -96.b		; 10 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	jsr $00E4.w		; 20 E4 00
	tsb $A0.b		; 04 A0
	cpx $88.b		; E4 88
	cpy $CC00.w		; CC 00 CC
	rti		; 40

	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	rti		; 40

	sed		; F8
	brk $58.b		; 00 58
	rti		; 40

	bmi   0.b		; 30 00
	sei		; 78
	pha		; 48
	bmi   0.b		; 30 00
	asl $0E20.w		; 0E 20 0E
	jsr $210F.w		; 20 0F 21
	ora $210F21.l		; 0F 21 0F 21
	ora $1C31.w,X		; 1D 31 1C
	and ($1C.b),Y		; 31 1C
	and ($1F.b),Y		; 31 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($00.b,X)		; 01 00
	bcs   8.b		; B0 08
	tya		; 98
	php		; 08
	tya		; 98
	brk $98.b		; 00 98
	brk $88.b		; 00 88
	tsb $8C.b		; 04 8C
	brk $8C.b		; 00 8C
	brk $84.b		; 00 84
	ora $000710.l,X		; 1F 10 07 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	adc $3F3F5E.l		; 6F 5E 3F 3F
	rol $2F.b,X		; 36 2F
	and $3B1F.w,X		; 3D 1F 3B
	ora $3D1B2F.l		; 0F 2F 1B 3D
	ora [$07.b]		; 07 07
	ora $46.b		; 05 46
	dec A		; 3A
	and $2206.w,X		; 3D 06 22
	ora $031C.w,X		; 1D 1C 03
	ora #$07.b		; 09 07
	ora $0507.w,Y		; 19 07 05
	ora $04.b,S		; 03 04
	ora $9D.b,S		; 03 9D
	phb		; 8B
	sta [$7D.b]		; 87 7D
	lda ($4C.b,S),Y		; B3 4C
	bit $C9.b		; 24 C9
	ldx $C2.b,Y		; B6 C2
	sta [$CC.b]		; 87 CC
	bit #$FB.b		; 89 FB
	cmp ($F7.b,S),Y		; D3 F7
	sta $60.b,S		; 83 60
	ora ($00.b,X)		; 01 00
	bmi -80.b		; 30 B0
	sec		; 38
	tyx		; BB
	dec A		; 3A
	lda $B030.w,Y		; B9 30 B0
	sty $85.b		; 84 85
	phb		; 8B
	iny		; C8
	eor $7A3E.w,X		; 5D 3E 7A
	and $1D3B.w,X		; 3D 3B 1D
	ora $0623.w,X		; 1D 23 06
	dec A		; 3A
	asl $0F38.w		; 0E 38 0F
	rol $3909.w,X		; 3E 09 39
	rol $3D00.w,X		; 3E 00 3D
	brk $1D.b		; 00 1D
	brk $03.b		; 00 03
	brk $1A.b		; 00 1A
	ora $1110.w,Y		; 19 10 11
	bpl  16.b		; 10 10
	asl $10.b,X		; 16 10
	tyx		; BB
	tax		; AA
	lda ($A2.b,S),Y		; B3 A2
	and ($22.b,S),Y		; 33 22
	eor ($62.b,S),Y		; 53 62
	adc ($52.b,S),Y		; 73 52
	adc $42.b,S		; 63 42
	sbc $02.b,S		; E3 02
	lda $44AAC0.l,X		; BF C0 AA 44
	ldx #$224C.w		; A2 4C 22
	cpy $8C62.w		; CC 62 8C
	eor ($8C.b)		; 52 8C
	.db $42, $9C		; 42 9C
	cop $1C.b		; 02 1C
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $01.b		; 00 01
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	cli		; 58
	jmp ($7F7C.w,X)		; 7C 7C 7F
	and ($2F.b,S),Y		; 33 2F
	ora [$1F.b],Y		; 17 1F
	adc $277D0B.l		; 6F 0B 7D 27
	adc $335D37.l,X		; 7F 37 5D 33
	tad		; 5B
	tsa		; 3B
	jmp ($2100.w,X)		; 7C 00 21
	ora $090F13.l,X		; 1F 13 0F 09
	ora [$25.b]		; 07 25
	ora $36.b,S		; 03 36
	ora ($31.b,X)		; 01 31
	asl $00.b		; 06 00
	jmp $4C04.w		; 4C 04 4C
	sta ($D9.b),Y		; 91 D9
	clc		; 18
	sta $3B3A.w,Y		; 99 3A 3B
	jsr ($7C3F.w,X)		; FC 3F 7C
	stx $8EFC.w		; 8E FC 8E
	sta [$04.b]		; 87 04
	sta $00.b,S		; 83 00
	asl $1F08.w,X		; 1E 08 1F
	ora ($2C.b,X)		; 01 2C
	bpl  62.b		; 10 3E
	ora ($8C.b)		; 12 8C
	clc		; 18
	sty $28.b		; 84 28
	mvn $CC,$AC		; 54 AC CC
	stz $28.b,X		; 74 28
	cld		; D8
	tay		; A8
	cli		; 58
	ldy #$0010.w		; A0 10 00
	bne  64.b		; D0 40
	beq   0.b		; F0 00
	bcc -124.b		; 90 84
	plp		; 28
	tsb $48.b		; 04 48
	plp		; 28
	jsr $6068.w		; 20 68 60
	rts		; 60

	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $60.b		; 00 60
	rts		; 60

	jsr $0062.w		; 20 62 00
	.db $62, $04, $66		; 62 04 66
	trb $77.b		; 14 77
	trb $77.b		; 14 77
	bpl 115.b		; 10 73
	cop $63.b		; 02 63
	jsl $001C63.l		; 22 63 1C 00
	bit $1820.w,X		; 3C 20 18
	brk $0A.b		; 00 0A
	cop $0A.b		; 02 0A
	cop $2E.b		; 02 2E
	jsl $1C203C.l		; 22 3C 20 1C
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	asl $023D.w,X		; 1E 3D 02
	and ($10.b,S),Y		; 33 10
	adc $6620.w,Y		; 79 20 66
	clc		; 18
	ror $6224.w,X		; 7E 24 62
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	tsb $0620.w		; 0C 20 06
	clc		; 18
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ror $7C20.w,X		; 7E 20 7C
	sec		; 38
	ldy $78.b,X		; B4 78
	jsr ($2830.w,X)		; FC 30 28
	bpl  -8.b		; 10 F8
	rts		; 60

	cpx #$C080.w		; E0 80 C0
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	cpy #$0060.w		; C0 60 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	mvp $04,$C6		; 44 C6 04
	stx $00.b		; 86 00
	.db $82, $40, $C2		; 82 40 C2
	brk $C2.b		; 00 C2
	brk $42.b		; 00 42
	jsr $0063.w		; 20 63 00
	adc $38.b,S		; 63 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	bit $1E00.w,X		; 3C 00 1E
	cop $3E.b		; 02 3E
	jsl $1C4218.l		; 22 18 42 1C
	lsr $1C.b		; 46 1C
	lsr $18.b		; 46 18
	lsr $30.b		; 46 30
	stz $30.b		; 64 30
	stz $28.b		; 64 28
	jmp ($6CA8.w)		; 6C A8 6C
	bit $3800.w,X		; 3C 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	lsr $24.b		; 46 24
	ror $00.b		; 66 00
	.db $62, $10, $33		; 62 10 33
	cop $33.b		; 02 33
	cop $13.b		; 02 13
	phd		; 0B
	clc		; 18
	asl $3803.w,X		; 1E 03 38
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	jsr $020E.w		; 20 0E 02
	trb $0C10.w		; 1C 10 0C
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $60.b		; 00 60
	inc $FEFA.w,X		; FE FA FE
	inc $FEFE.w,X		; FE FE FE
	inc $FEFE.w,X		; FE FE FE
	inc $FAFE.w,X		; FE FE FA
	inc $FEFB.w,X		; FE FB FE
	brk $70.b		; 00 70
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	plx		; FA
	jsr ($FCFA.w,X)		; FC FA FC
	plx		; FA
	jsr ($FCFA.w,X)		; FC FA FC
	plx		; FA
	jsr ($7CBA.w,X)		; FC BA 7C
	cpx #$80.b		; E0 80
	ldy #$C0.b		; A0 C0
	cpx #$80.b		; E0 80
	bne -96.b		; D0 A0
	tay		; A8
	bvc -40.b		; 50 D8
	ldy #$D4.b		; A0 D4
	tay		; A8
	dex		; CA
	ldy $80.b,X		; B4 80
	rti		; 40

	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	ldy #$80.b		; A0 80
	bvc   0.b		; 50 00
	ldy #$00.b		; A0 00
	tay		; A8
	brk $B4.b		; 00 B4
	brk $FA.b		; 00 FA
	pei ($B4.b)		; D4 B4
	tya		; 98
	ldy $B898.w		; AC 98 B8
	ldy #$90.b		; A0 90
	bra -112.b		; 80 90
	bra -32.b		; 80 E0
	bcc -128.b		; 90 80
	bvs -44.b		; 70 D4
	brk $98.b		; 00 98
	rti		; 40

	tya		; 98
	rti		; 40

	ldy #$40.b		; A0 40
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra   0.b		; 80 00
	rts		; 60

	rts		; 60

	bit $1C63.w,X		; 3C 63 1C
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $3C.b		; C6 3C
	stx $38.b		; 86 38
	stx $30.b		; 86 30
	sty $1E.b		; 84 1E
	cop $7C.b		; 02 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $00.b		; 00 00
	jsr $53C0.w		; 20 C0 53
	lda #$B477.w		; A9 77 B4
	jsr ($FF56.w,X)		; FC 56 FF
	sty $BB.b,X		; 94 BB
	and $8113.w		; 2D 13 81
	ora ($C0.b,S),Y		; 13 C0
	cpy #$A0A0.w		; C0 A0 A0
	rep #$C2		; C2 C2
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	eor ($01.b,X)		; 41 01
	cpy #$A000.w		; C0 00 A0
	rti		; 40

	brk $F0.b		; 00 F0
	rti		; 40

	bne   0.b		; D0 00
	bpl   0.b		; 10 00
	bpl -96.b		; 10 A0
	bcs  32.b		; B0 20
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $0000.w		; 20 00 00
	ldy #$E080.w		; A0 80 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bpl -97.b		; 10 9F
	and $82.b,S		; 23 82
	pld		; 2B
	dey		; 88
	.db $62, $CD, $3B		; 62 CD 3B
	cmp $4710.w		; CD 10 47
	ora $3947.w,X		; 1D 47 39
	adc $68.b,S		; 63 68
	php		; 08
	jmp ($7400.w,X)		; 7C 00 74
	brk $3C.b		; 00 3C
	tsb $4070.w		; 0C 70 40
	and $3805.w,X		; 3D 05 38
	brk $1C.b		; 00 1C
	brk $10.b		; 00 10
	bmi -69.b		; 30 BB
	rts		; 60

	and $C580.w,Y		; 39 80 C5
	sty $03.b,X		; 94 03
	and #$7724.w		; 29 24 77
	sta $C0AEF9.l,X		; 9F F9 AE C0
	ora $1F1F0F.l		; 0F 0F 1F 1F
	adc $7B7B7F.l,X		; 7F 7F 7B 7B
	inc $F6.b,X		; F6 F6
	dey		; 88
	dey		; 88
	brk $00.b		; 00 00
	rol $09.b,X		; 36 09
	sbc [$A2.b]		; E7 A2
	sbc ($DF.b,X)		; E1 DF
	ldy $49D3.w		; AC D3 49
	sbc ($ED.b)		; F2 ED
	beq -31.b		; F0 E1
	sbc ($62.b,S),Y		; F3 62
	inc $7DF4.w,X		; FE F4 7D
	ldy #$4098.w		; A0 98 40
	bra -116.b		; 80 8C
	jmp ($EE0E.w)		; 6C 0E EE
	lsr $4CEE.w		; 4E EE 4C
	cpx $E161.w		; EC 61 E1
	jsl $D967F2.l		; 22 F2 67 D9
	sbc ($5E.b)		; F2 5E
	dex		; CA
	rol $28.b,X		; 36 28
	mvn $84,$A8		; 54 A8 84
	cpy #$5034.w		; C0 34 50
	jsr ($E4C0.w,X)		; FC C0 E4
	cmp ($1A.b,X)		; C1 1A
	.db $42, $10		; 42 10
	asl A		; 0A
	php		; 08
	clc		; 18
	cld		; D8
	tya		; 98
	cli		; 58
	php		; 08
	php		; 08
	brk $40.b		; 00 40
	cld		; D8
	clc		; 18
	ora ($0C.b,S),Y		; 13 0C
	and $4902.w,X		; 3D 02 49
	rol $52.b,X		; 36 52
	and $1B25.w		; 2D 25 1B
	lsr A		; 4A
	and [$96.b],Y		; 37 96
	adc $0C5EAD.l		; 6F AD 5E 0C
	brk $02.b		; 00 02
	brk $36.b		; 00 36
	brk $2D.b		; 00 2D
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $6F.b		; 00 6F
	brk $5E.b		; 00 5E
	brk $BE.b		; 00 BE
	adc $3F3FDE.l,X		; 7F DE 3F 3F
	cmp $77B35F.l		; CF 5F B3 77
	lda $76BF.w,Y		; B9 BF 76
	stp		; DB
	eor ($4B.b)		; 52 4B
	cmp ($1E.b)		; D2 1E
	sbc [$0C.b]		; E7 0C
	tsa		; 3B
	cmp [$0C.b]		; C7 0C
	lda ($02.b,S),Y		; B3 02
	lda $7601.w,Y		; B9 01 76
	brk $52.b		; 00 52
	bit $D2.b		; 24 D2
	bit $00.b		; 24 00
	bmi   3.b		; 30 03
	bpl   3.b		; 10 03
	bpl  11.b		; 10 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $000F10.l,X		; 1F 10 0F 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	eor $38287F.l		; 4F 7F 28 38
	ldy #$A038.w		; A0 38 A0
	sec		; 38
	ldy $3C.b		; A4 3C
	sty $3C.b		; 84 3C
	sty $3C.b		; 84 3C
	bra  44.b		; 80 2C
	ldy #$C720.w		; A0 20 C7
	brk $CF.b		; 00 CF
	php		; 08
	cmp $08CB08.l		; CF 08 CB 08
	sbc $20.b,S		; E3 20
	sbc $20.b,S		; E3 20
	cmp [$04.b]		; C7 04
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
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
	jsr $6040.w		; 20 40 60
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	jsr $2020.w		; 20 20 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $0020.w		; 20 20 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	clc		; 18
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl  56.b		; 10 38
	tas		; 1B
	ora [$0F.b],Y		; 17 0F
	ora $0F0B0D.l		; 0F 0D 0B 0F
	ora [$0E.b]		; 07 0E
	ora $0B.b,S		; 03 0B
	asl $0F.b		; 06 0F
	ora ($01.b,X)		; 01 01
	ora ($11.b,X)		; 01 11
	asl $010F.w		; 0E 0F 01
	php		; 08
	ora [$07.b]		; 07 07
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	.db $62, $04, $66		; 62 04 66
	trb $77.b		; 14 77
	trb $77.b		; 14 77
	bpl 115.b		; 10 73
	cop $63.b		; 02 63
	jsl $632263.l		; 22 63 22 63
	bit $1820.w,X		; 3C 20 18
	brk $0A.b		; 00 0A
	cop $0A.b		; 02 0A
	cop $2E.b		; 02 2E
	jsl $1C203C.l		; 22 3C 20 1C
	brk $1C.b		; 00 1C
	brk $C0.b		; 00 C0
	ora ($20.b)		; 12 20
	inc $06.b,X		; F6 06
	ldx $CC.b		; A6 CC
	jmp ($DE3E.w)		; 6C 3E DE
	adc $23DF0F.l,X		; 7F 0F DF 23
	lda $E163.w,X		; BD 63 E1
	brk $C3.b		; 00 C3
	rep #$C5		; C2 C5
	bra -113.b		; 80 8F
	brk $17.b		; 00 17
	tsb $040E.w		; 0C 0E 04
	and ($06.b,X)		; 21 06
	adc ($0A.b,X)		; 61 0A
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	adc $0E.b,S		; 63 0E
	and $14.b,S		; 23 14
	and ($04.b),Y		; 31 04
	and ($01.b),Y		; 31 01
	ora ($09.b),Y		; 11 09
	ora $1F17.w,Y		; 19 17 1F
	ora $223E1F.l,X		; 1F 1F 3E 22
	trb $0E00.w		; 1C 00 0E
	brk $1F.b		; 00 1F
	ora ($0E.b),Y		; 11 0E
	brk $07.b		; 00 07
	brk $1B.b		; 00 1B
	ora #$031E.w		; 09 1E 03
	lda $E39CC0.l,X		; BF C0 9C E3
	jmp $07E3.w		; 4C E3 07
	sbc ($B0.b),Y		; F1 B0
	jmp $FC97F0.l		; 5C F0 97 FC
	ldx $84CF.w		; AE CF 84
	and $031F00.l,X		; 3F 00 1F 03
	ora $101E03.l,X		; 1F 03 1E 10
	ora $048C0C.l		; 0F 0C 8C 04
	ldy #$8000.w		; A0 00 80
	bmi -80.b		; 30 B0
	sbc $FFF9.w,Y		; F9 F9 FF
	adc [$5F.b]		; 67 5F
	and $17DF3F.l		; 2F 3F DF 17
	xce		; FB
	eor $BB6FFF.l		; 4F FF 6F BB
	adc [$B6.b]		; 67 B6
	ror $F9.b,X		; 76 F9
	ora ($43.b,X)		; 01 43
	and $131F27.l,X		; 3F 27 1F 13
	ora $6D074B.l		; 0F 4B 07 6D
	ora $63.b,S		; 03 63
	tsb $FCC0.w		; 0C C0 FC
	pea $FCFC.w		; F4 FC FC
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FCF4.w,X)		; FC F4 FC
	inc $FC.b,X		; F6 FC
	brk $E0.b		; 00 E0
	cpy $F8.b		; C4 F8
	pea $F4F8.w		; F4 F8 F4
	sed		; F8
	pea $F4F8.w		; F4 F8 F4
	sed		; F8
	pea $74F8.w		; F4 F8 74
	sed		; F8
	eor $7A3E.w,X		; 5D 3E 7A
	and $1D3B.w,X		; 3D 3B 1D
	ora $0623.w,X		; 1D 23 06
	dec A		; 3A
	asl $0F38.w		; 0E 38 0F
	rol $3909.w,X		; 3E 09 39
	rol $3D00.w,X		; 3E 00 3D
	brk $1D.b		; 00 1D
	brk $03.b		; 00 03
	brk $1A.b		; 00 1A
	ora $1110.w,Y		; 19 10 11
	bpl  16.b		; 10 10
	asl $10.b,X		; 16 10
	tyx		; BB
	tax		; AA
	lda ($A2.b,S),Y		; B3 A2
	and ($22.b,S),Y		; 33 22
	eor ($62.b,S),Y		; 53 62
	adc ($52.b,S),Y		; 73 52
	adc $42.b,S		; 63 42
	sbc $02.b,S		; E3 02
	lda $44AAC0.l,X		; BF C0 AA 44
	ldx #$224C.w		; A2 4C 22
	cpy $8C62.w		; CC 62 8C
	eor ($8C.b)		; 52 8C
	.db $42, $9C		; 42 9C
	cop $1C.b		; 02 1C
	rti		; 40

	rti		; 40

	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	bra  44.b		; 80 2C
	.db $82, $26, $C2		; 82 26 C2
	ror $C0.b		; 66 C0
	ror $C0.b		; 66 C0
	.db $62, $41, $63		; 62 41 63
	brk $63.b		; 00 63
	brk $61.b		; 00 61
	cmp [$04.b]		; C7 04
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	sta $02.b,S		; 83 02
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	cmp ($41.b,X)		; C1 41
	cpy #$6040.w		; C0 40 60
	rts		; 60

	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	rts		; 60

	rts		; 60

	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$20.b]		; 07 20
	bvs  16.b		; 70 10
	bmi   0.b		; 30 00
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
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0030.w		; 20 30 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $43.b		; 02 43
	cop $43.b		; 02 43
	cop $43.b		; 02 43
	jsl $630263.l		; 22 63 02 63
	cop $23.b		; 02 23
	cop $23.b		; 02 23
	bpl  49.b		; 10 31
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $001C.w		; 20 1C 00
	trb $0E00.w		; 1C 00 0E
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	asl $023D.w,X		; 1E 3D 02
	and ($10.b,S),Y		; 33 10
	adc $6620.w,Y		; 79 20 66
	clc		; 18
	ror $6224.w,X		; 7E 24 62
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	tsb $0620.w		; 0C 20 06
	clc		; 18
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ror $7C20.w,X		; 7E 20 7C
	sec		; 38
	ldy $78.b,X		; B4 78
	jsr ($2830.w,X)		; FC 30 28
	bpl  -8.b		; 10 F8
	rts		; 60

	cpx #$C080.w		; E0 80 C0
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	cpy #$0060.w		; C0 60 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	clc		; 18
	.db $42, $1C		; 42 1C
	lsr $1C.b		; 46 1C
	lsr $18.b		; 46 18
	lsr $30.b		; 46 30
	stz $30.b		; 64 30
	stz $28.b		; 64 28
	jmp ($6CA8.w)		; 6C A8 6C
	bit $3800.w,X		; 3C 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cpy $00.b		; C4 00
	mvp $66,$20		; 44 20 66
	tsb $66.b		; 04 66
	tsb $26.b		; 04 26
	ora [$30.b],Y		; 17 30
	and $2E06.w,X		; 3D 06 2E
	ora $384078.l,X		; 1F 78 40 38
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	jsr $0018.w		; 20 18 00
	php		; 08
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	ora $100F17.l,X		; 1F 17 0F 10
	ora $0C040B.l		; 0F 0B 04 0C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	and ($00.b),Y		; 31 00
	and ($02.b,X)		; 21 02
	adc $20.b,S		; 63 20
	adc $08.b,S		; 63 08
	.db $42, $18		; 42 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$5C		; C2 5C
	dec $0E.b		; C6 0E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	jmp ($3840.w,X)		; 7C 40 38
	brk $E0.b		; 00 E0
	bra -96.b		; 80 A0
	cpy #$80E0.w		; C0 E0 80
	bne -96.b		; D0 A0
	tay		; A8
	bvc -40.b		; 50 D8
	ldy #$A8D4.w		; A0 D4 A8
	dex		; CA
	ldy $80.b,X		; B4 80
	rti		; 40

	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	ldy #$5080.w		; A0 80 50
	brk $A0.b		; 00 A0
	brk $A8.b		; 00 A8
	brk $B4.b		; 00 B4
	brk $FA.b		; 00 FA
	pei ($B4.b)		; D4 B4
	tya		; 98
	ldy $B898.w		; AC 98 B8
	ldy #$8090.w		; A0 90 80
	bcc -128.b		; 90 80
	cpx #$8090.w		; E0 90 80
	bvs -44.b		; 70 D4
	brk $98.b		; 00 98
	rti		; 40

	tya		; 98
	rti		; 40

	ldy #$8040.w		; A0 40 80
	rts		; 60

	bra  96.b		; 80 60
	bra   0.b		; 80 00
	rts		; 60

	rts		; 60

	cpy #$60F0.w		; C0 F0 60
	bvs  32.b		; 70 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $18.b		; 00 18
	jsr $8020.w		; 20 20 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl  16.b		; 10 10
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	bra -120.b		; 80 88
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	bpl  60.b		; 10 3C
	adc $1C.b,S		; 63 1C
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $3C.b		; C6 3C
	stx $38.b		; 86 38
	stx $30.b		; 86 30
	sty $1E.b		; 84 1E
	cop $7C.b		; 02 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $BE.b		; 00 BE
	cpy #$88DC.w		; C0 DC 88
	sei		; 78
	ldy #$00E0.w		; A0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8800.w		; C0 00 88
	jsr $00A0.w		; 20 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $BA18.w		; F4 18 BA
	jmp ($70BE.w,X)		; 7C BE 70
	inc $04.b,X		; F6 04
	adc $067938.l,X		; 7F 38 79 06
	adc $0D3D38.l,X		; 7F 38 3D 0D
	clc		; 18
	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	php		; 08
	sec		; 38
	brk $06.b		; 00 06
	brk $38.b		; 00 38
	brk $0D.b		; 00 0D
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
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
	brk $10.b		; 00 10
	php		; 08
	clc		; 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora #$1019.w		; 09 19 10
	bmi  44.b		; 30 2C
	rts		; 60

	tsb $1640.w		; 0C 40 16
	bvs  76.b		; 70 4C
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $2F2F3F.l,X		; 3F 3F 2F 2F
	and $00003F.l,X		; 3F 3F 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	cpy #$6818.w		; C0 18 68
	tsb $0670.w		; 0C 70 06
	bvc   1.b		; 50 01
	bpl   3.b		; 10 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	inc $FCFE.w,X		; FE FE FC
	jsr ($0000.w,X)		; FC 00 00
	ora $1F1E1F.l,X		; 1F 1F 1E 1F
	trb $0E1F.w		; 1C 1F 0E
	ora $000706.l		; 0F 06 07 00
	ora ($F0.b,X)		; 01 F0
	cmp ($00.b,X)		; C1 00
	brk $1F.b		; 00 1F
	brk $14.b		; 00 14
	asl $021C.w		; 0E 1C 02
	php		; 08
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $BB.b		; 00 BB
	adc ($B8.b,X)		; 61 B8
	adc $B7A677.l		; 6F 77 A6 B7
	adc $86.b		; 65 86
	and $F0.b,S		; 23 F0
	ora $522156.l,X		; 1F 56 21 52
	ora #$0066.w		; 09 66 00
	rts		; 60

	brk $28.b		; 00 28
	brk $A9.b		; 00 A9
	bra -37.b		; 80 DB
	cpy #$C0C0.w		; C0 C0 C0
	stx $8EAE.w		; 8E AE 8E
	ldx $0001.w		; AE 01 00
	asl $0701.w		; 0E 01 07
	phd		; 0B
	asl $1D.b		; 06 1D
	phd		; 0B
	dec A		; 3A
	bpl 112.b		; 10 70
	jsr $4EE0.w		; 20 E0 4E
	cpy #$0000.w		; C0 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora #$1408.w		; 09 08 14
	bpl  47.b		; 10 2F
	jsr $405F.w		; 20 5F 40
	and $1FFF00.l,X		; 3F 00 FF 1F
	cmp $F5EEEE.l,X		; DF EE EE F5
	ror $C781.w,X		; 7E 81 C7
	asl $E3.b		; 06 E3
	.db $82, $5F, $6E		; 82 5F 6E
	and $150B32.l		; 2F 32 0B 15
	inc $F50A.w		; EE 0A F5
	tsb $81.b		; 04 81
	brk $06.b		; 00 06
	sec		; 38
	cop $1C.b		; 02 1C
	ldx $D220.w		; AE 20 D2
	bpl -10.b		; 10 F6
	ora $6E73FF.l		; 0F FF 73 6E
	lda $D2F3.w		; AD F3 D2
	cmp $BCE9.w,Y		; D9 E9 BC
	ldy $B6BF.w		; AC BF B6
	eor $000FD5.l,X		; 5F D5 0F 00
	adc ($00.b,S),Y		; 73 00
	lda $D210.w		; AD 10 D2
	tsb $06E9.w		; 0C E9 06
	ldy $B643.w		; AC 43 B6
	rti		; 40

	pei ($20.b)		; D4 20
	cpx #$B000.w		; E0 00 B0
	iny		; C8
	beq -18.b		; F0 EE
	jsr ($E25F.w,X)		; FC 5F E2
	and $D8.b,S		; 23 D8
	rti		; 40

	stx $8F80.w		; 8E 80 8F
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $E8.b		; 00 E8
	php		; 08
	.db $42, $02		; 42 02
	ora $3F01.w,X		; 1D 01 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($0D.b,X)		; 01 0D
	tsb $1F.b		; 04 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	cpx #$F0E8.w		; E0 E8 F0
	sec		; 38
	cpx #$60F8.w		; E0 F8 60
	bvc  32.b		; 50 20
	cpx #$8080.w		; E0 80 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	cld		; D8
	jmp ($CAA8.w)		; 6C A8 CA
	jmp $1C1E.w		; 4C 1E 1C
	inc $AE00.w,X		; FE 00 AE
	ror $FF77.w,X		; 7E 77 FF
	cmp $8098FF.l		; CF FF 98 80
	plp		; 28
	bpl  76.b		; 10 4C
	bmi  28.b		; 30 1C
	cpx #$0000.w		; E0 00 00
	rol $D8.b		; 26 D8
	adc [$8C.b],Y		; 77 8C
	wai		; CB
	rol $7D.b,X		; 36 7D
	adc $3F3FBF.l,X		; 7F BF 3F 3F
	and $FF9B.w,X		; 3D 9B FF
	eor $FEEDF4.l		; 4F F4 ED FE
	xce		; FB
	jsr ($FBFD.w,X)		; FC FD FB
	lda $DF1A.w		; AD 1A DF
	php		; 08
	cmp $0A.b,X		; D5 0A
	tas		; 1B
	tsb $04.b		; 04 04
	ply		; 7A
	iny		; C8
	inc $D0.b,X		; F6 D0
	cpx $D8B3.w		; EC B3 D8
	sei		; 78
	sei		; 78
	jsr ($DEFC.w,X)		; FC FC DE
	dec $FFFD.w,X		; DE FD FF
	sbc ($FF.b,S),Y		; F3 FF
	ora $03030F.l		; 0F 0F 03 03
	ora ($01.b,X)		; 01 01
	sei		; 78
	brk $D4.b		; 00 D4
	sei		; 78
	phx		; DA
	jmp ($5EA9.w,X)		; 7C A9 5E
	beq  15.b		; F0 0F
	ora $0203.w		; 0D 03 02
	ora ($01.b,X)		; 01 01
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	bra -20.b		; 80 EC
	cpy #$C4EE.w		; C0 EE C4
	and $FFD4.w,X		; 3D D4 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bpl -60.b		; 10 C4
	bpl -44.b		; 10 D4
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	brk $18.b		; 00 18
	bra  64.b		; 80 40
	cmp $10.b		; C5 10
	phy		; 5A
	ora #$127D.w		; 09 7D 12
	eor $3C.b,S		; 43 3C
	ror $4D.b		; 66 4D
	and ($FF.b)		; 32 FF
	pla		; 68
	adc $3E3E7F.l,X		; 7F 7F 3E 3E
	and $25.b		; 25 25
	cop $00.b		; 02 00
	bit $1E00.w,X		; 3C 00 1E
	ora $0C.b		; 05 0C
	cop $67.b		; 02 67
	brk $2A.b		; 00 2A
	plb		; AB
	cop $2B.b		; 02 2B
	mvn $24,$7E		; 54 7E 24
	inc $FCE0.w,X		; FE E0 FC
	bra -104.b		; 80 98
	jsr $9810.w		; 20 10 98
	jsr $D4D4.w		; 20 D4 D4
	jmp.w [$80DC]		; DC DC 80
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	bpl  80.b		; 10 50
	jsr $00C0.w		; 20 C0 00
	cpy #$E800.w		; C0 00 E8
	lda $D4.b		; A5 D4
	eor [$AD.b]		; 47 AD
	ora ($EB.b,X)		; 01 EB
	clc		; 18
	cop $0E.b		; 02 0E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$4890.w		; A0 90 48
	jsr $401E.w		; 20 1E 40
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($97.b),Y		; B1 97
	adc $8C.b,X		; 75 8C
	ora [$F0.b],Y		; 17 F0
	jmp ($C260.w)		; 6C 60 C2
	ora $91.b,S		; 03 91
	sta $0BFF02.l,X		; 9F 02 FF 0B
	ora [$48.b]		; 07 48
	pha		; 48
	ora $00.b,S		; 03 00
	sta $009F80.l		; 8F 80 9F 00
	jsr ($6800.w,X)		; FC 00 68
	ora #$0502.w		; 09 02 05
	ora ($06.b,X)		; 01 06
	asl $BC80.w,X		; 1E 80 BC
	bra 122.b		; 80 7A
	ora $68.b,S		; 03 68
	ora $1F8383.l		; 0F 83 83 1F
	inc $7906.w,X		; FE 06 79
	ora $00.b,S		; 03 00
	sbc $007F80.l,X		; FF 80 7F 00
	jsr ($F500.w,X)		; FC 00 F5
	ora $7C.b		; 05 7C
	brk $60.b		; 00 60
	rts		; 60

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	eor $7C.b,S		; 43 7C
	sta ($F0.b,X)		; 81 F0
	jsr $50C0.w		; 20 C0 50
	ldy #$A078.w		; A0 78 A0
	ldy $7468.w,X		; BC 68 74
	bcc -86.b		; 90 AA
	stz $B0.b		; 64 B0
	bmi  64.b		; 30 40
	rti		; 40

	brk $00.b		; 00 00
	ldy #$A080.w		; A0 80 A0
	bra 104.b		; 80 68
	brk $90.b		; 00 90
	php		; 08
	stz $10.b		; 64 10
	jmp $F8C3.w		; 4C C3 F8
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	and ($01.b,S),Y		; 33 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	cpy #$E063.w		; C0 63 E0
	clc		; 18
	sed		; F8
	cop $3E.b		; 02 3E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $809F00.l,X		; 3F 00 9F 80
	and [$20.b]		; 27 20
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $A0.b		; 00 A0
	rti		; 40

	rts		; 60

	cpy #$C078.w		; C0 78 C0
	plp		; 28
	bne  -8.b		; D0 F8
	brk $8C.b		; 00 8C
	bvs 100.b		; 70 64
	tya		; 98
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	jsr $9030.w		; 20 30 90
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$E000.w		; C0 00 E0
	brk $E8.b		; 00 E8
	asl $03F2.w		; 0E F2 03
	sbc $3E01.w,X		; FD 01 3E
	brk $4F.b		; 00 4F
	cpy #$F013.w		; C0 13 F0
	cop $3E.b		; 02 3E
	brk $07.b		; 00 07
	pea $FC04.w		; F4 04 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	bra  47.b		; 80 2F
	jsr $0405.w		; 20 05 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	bvs 112.b		; 70 70
	sta $009F00.l,X		; 9F 00 9F 00
	ora $00.b,S		; 03 00
	sec		; 38
	sed		; F8
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sta $00FF00.l		; 8F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp [$C0.b]		; C7 C0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpy #$E2FF.w		; C0 FF E2
	ora $FE.b,S		; 03 FE
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	jsr ($3F00.w,X)		; FC 00 3F
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	sbc $FF01.w,X		; FD 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $33.b		; 00 33
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	cpx #$7847.w		; E0 47 78
	cmp $F70A.w		; CD 0A F7
	cop $3F.b		; 02 3F
	dec A		; 3A
	ora #$0FF6.w		; 09 F6 0F
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $00F2.w		; 20 F2 00
	plx		; FA
	brk $C2.b		; 00 C2
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	bra 127.b		; 80 7F
	clc		; 18
	lsr $23.b,X		; 56 23
	cmp [$A3.b],Y		; D7 A3
	sbc $01FE1B.l,X		; FF 1B FE 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	clc		; 18
	bra  35.b		; 80 23
	dey		; 88
	lda $08.b,S		; A3 08
	tas		; 1B
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
	php		; 08
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0000.w		; 20 00 00
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
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
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
	brk $10.b		; 00 10
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda [$00.b]		; A7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $0000.w,X		; DE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 15FFFE. Skipping.
	.db $ED		; Opcode ED overrunning bank boundry at 15FFFF. Skipping.
.ENDS
