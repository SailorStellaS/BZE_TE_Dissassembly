.BANK 22 SLOT 0
.ORG $0000

.SECTION "Bank22" FORCE

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1C.b		; 04 1C
	tsb $20.b		; 04 20
	rol $1660.w		; 2E 60 16
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	ora $2F1F1F.l,X		; 1F 1F 1F 2F
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7840.w		; C0 40 78
	sec		; 38
	bit $4644.w,X		; 3C 44 46
	bpl  10.b		; 10 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$B8C0.w		; C0 C0 B8
	clv		; B8
	jsr ($00FC.w,X)		; FC FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	asl $71.b		; 06 71
	ora $FBDFAE.l		; 0F AE DF FB
	wai		; CB
	sbc $E2F5.w,X		; FD F5 E2
	ldy $FBF0.w,X		; BC F0 FB
	ror $78.b,X		; 76 78
	ora ($00.b,X)		; 01 00
	tsb $DE00.w		; 0C 00 DE
	brk $4B.b		; 00 4B
	cpy $D5.b		; C4 D5
	jsl $A4D1A0.l		; 22 A0 D1 A4
	mvn $17,$F7		; 54 F7 17
	tsx		; BA
	ldy $4EA1.w		; AC A1 4E
	ldx $1BBF.w		; AE BF 1B
	xba		; EB
	xce		; FB
	phy		; 5A
	pea $F093.w		; F4 93 F0
	sta $9166.w,X		; 9D 66 91
	bvc   0.b		; 50 00
	inc $40.b,X		; F6 40
	eor $040B00.l		; 4F 00 0B 04
	inc A		; 1A
	tsb $90.b		; 04 90
	php		; 08
	sta ($02.b)		; 92 02
	asl $000E.w		; 0E 0E 00
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	bcs  -8.b		; B0 F8
	sec		; 38
	sed		; F8
	sed		; F8
	rts		; 60

	inx		; E8
	bvs  -8.b		; 70 F8
	rti		; 40

	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	clc		; 18
	rts		; 60

	inx		; E8
	bvc  96.b		; 50 60
	bcs  96.b		; B0 60
	bra 112.b		; 80 70
	bra -123.b		; 80 85
	sbc [$18.b]		; E7 18
	cmp $7E.b,S		; C3 7E
	cmp $3D.b,S		; C3 3D
	sta ($7D.b,X)		; 81 7D
	cmp $3E.b,S		; C3 3E
	cmp $9A.b,S		; C3 9A
	eor $B8.b,S		; 43 B8
	adc ($39.b,X)		; 61 39
	ldy #$427E.w		; A0 7E 42
	and $7E01.w,X		; 3D 01 7E
	brk $3E.b		; 00 3E
	cop $7C.b		; 02 7C
	rti		; 40

	bit $1E00.w,X		; 3C 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	cpy #$E090.w		; C0 90 E0
	bcc -32.b		; 90 E0
	pha		; 48
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	rti		; 40

	bcc -128.b		; 90 80
	phb		; 8B
	cpx $8B.b		; E4 8B
	sbc [$8B.b]		; E7 8B
	sbc [$05.b]		; E7 05
	rep #$06		; C2 06
	cpy #$C206.w		; C0 06 C2
	ora [$C0.b]		; 07 C0
	adc $81.b,S		; 63 81
	mvp $47,$40		; 44 40 47
	rti		; 40

	ora [$00.b]		; 07 00
	.db $82, $80, $80		; 82 80 80
	sta ($02.b,X)		; 81 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $C0.b		; 00 C0
	jsr $C0A0.w		; 20 A0 C0
	ldy #$6040.w		; A0 40 60
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	bra -80.b		; 80 B0
	jsr $0000.w		; 20 00 00
	cpy #$4000.w		; C0 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	bra   0.b		; 80 00
	jsr $1F40.w		; 20 40 1F
	phd		; 0B
	ora $030307.l,X		; 1F 07 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0503.w		; 09 03 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	xce		; FB
	ldx $BBBF.w,Y		; BE BF BB
	lda $6EC3DD.l,X		; BF DD C3 6E
	ora $9B.b,X		; 15 9B
	jmp ($5BBD.w)		; 6C BD 5B
	cmp [$3B.b],Y		; D7 3B
	sed		; F8
	sbc [$9E.b]		; E7 9E
	sbc ($39.b,X)		; E1 39
	dec $C0.b		; C6 C0
	ora $14.b,S		; 03 14
	ora ($6C.b,X)		; 01 6C
	brk $5B.b		; 00 5B
	brk $3B.b		; 00 3B
	brk $79.b		; 00 79
	and $ED.b,X		; 35 ED
	adc $F3.b,X		; 75 F3
	ror A		; 6A
	tad		; 5B
	rol A		; 2A
	and ($02.b,S),Y		; 33 02
	asl $0F2D.w,X		; 1E 2D 0F
	and ($0F.b),Y		; 31 0F
	bit $0235.w,X		; 3C 35 02
	adc $02.b,X		; 75 02
	ror A		; 6A
	tsb $2A.b		; 04 2A
	tsb $02.b		; 04 02
	tsb $000D.w		; 0C 0D 00
	ora ($10.b),Y		; 11 10
	bpl  16.b		; 10 10
	ora ($33.b,S),Y		; 13 33
	trb $30.b		; 14 30
	asl $0E30.w,X		; 1E 30 0E
	rts		; 60

	asl $0F60.w		; 0E 60 0F
	adc ($2F.b,X)		; 61 2F
	adc ($3E.b,X)		; 61 3E
	adc ($0C.b,X)		; 61 0C
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	rol $1E20.w,X		; 3E 20 1E
	brk $1F.b		; 00 1F
	ora ($3C.b,X)		; 01 3C
	adc ($1C.b,X)		; 61 1C
	eor ($1E.b,X)		; 41 1E
	eor $18.b,S		; 43 18
	eor $25.b,S		; 43 25
	ror $18.b		; 66 18
	adc $003C03.l,X		; 7F 03 3C 00
	trb $011F.w		; 1C 1F 01
	rol $3C00.w,X		; 3E 00 3C
	brk $3F.b		; 00 3F
	cop $18.b		; 02 18
	brk $25.b		; 00 25
	bit $18.b		; 24 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	cpx #$C200.w		; E0 00 C2
	eor ($D6.b)		; 52 D6
	jsr $48BD.w		; 20 BD 48
	inc $7A0F.w,X		; FE 0F 7A
	ora ($38.b),Y		; 11 38
	phd		; 0B
	bpl  63.b		; 10 3F
	and $293F3F.l,X		; 3F 3F 3F 29
	and #$5252.w		; 29 52 52
	ora ($00.b,X)		; 01 00
	ora $0310.w,Y		; 19 10 03
	tsb $000F.w		; 0C 0F 00
	adc ($47.b)		; 72 47
	plp		; 28
	eor ($00.b,S),Y		; 53 00
	cmp ($C4.b)		; D2 C4
	inc $7C48.w		; EE 48 7C
	cpx #$10BC.w		; E0 BC 10
	sec		; 38
	ldy #$B810.w		; A0 10 B8
	clv		; B8
	ldy $2CBC.w,X		; BC BC 2C
	bit $1010.w		; 2C 10 10
	bra   0.b		; 80 00
	bmi  16.b		; 30 10
	bra  96.b		; 80 60
	cpx #$0100.w		; E0 00 01
	tsb $07.b		; 04 07
	tsb $190B.w		; 0C 0B 19
	cop $13.b		; 02 13
	trb $37.b		; 14 37
	ora $221330.l,X		; 1F 30 13 22
	ora [$24.b],Y		; 17 24
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	tsb $0800.w		; 0C 00 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $0904.w		; 0C 04 09
	stz $79.b,X		; 74 79
	ldy $F8.b,X		; B4 F8
	jsr $11B9.w		; 20 B9 11
	ora $101810.l,X		; 1F 10 18 10
	ora $FFF9.w,Y		; 19 F9 FF
	sbc $B7FB.w,X		; FD FB B7
	ora [$27.b],Y		; 17 27
	ora [$26.b],Y		; 17 26
	asl $10.b,X		; 16 10
	brk $17.b		; 00 17
	ora [$16.b]		; 07 16
	asl $F8.b		; 06 F8
	ora ($78.b,X)		; 01 78
	sbc [$B2.b]		; E7 B2
	ora #$43D3.w		; 09 D3 43
	adc [$9F.b]		; 67 9F
	ora [$77.b],Y		; 17 77
	and [$F7.b]		; 27 F7
	sbc ($FF.b,S),Y		; F3 FF
	sbc $C1FF.w,X		; FD FF C1
	sbc $4F6E0E.l,X		; FF 0E 6E 4F
	bit $0305.w		; 2C 05 03
	sta $6B0F8B.l		; 8F 8B 0F 6B
	adc ($F0.b,S),Y		; 73 F0
	sbc $C1FE.w,Y		; F9 FE C1
.INDEX 16
	rep #$58		; C2 58
	cpy $ECF8.w		; CC F8 EC
	cpx #$F0E4.w		; E0 E4 F0
	cpy $B8.b		; C4 B8
	cpx $B8.b		; E4 B8
	pei ($78.b)		; D4 78
	jsr $0070.w		; 20 70 00
	bvs -128.b		; 70 80
	bne   0.b		; D0 00
	sed		; F8
	bra -120.b		; 80 88
	cpy #$E000.w		; C0 00 E0
	bcc  64.b		; 90 40
	jsr $0000.w		; 20 00 00
	brk $9C.b		; 00 9C
	adc ($8C.b,X)		; 61 8C
	adc ($1D.b,X)		; 61 1D
	sbc ($47.b),Y		; F1 47
	sbc ($E6.b),Y		; F1 E6
	bne -22.b		; D0 EA
	cld		; D8
	cmp $B8.b,S		; C3 B8
	cmp [$6C.b]		; C7 6C
	and $015F21.l,X		; 3F 21 5F 01
	dec $DE00.w		; CE 00 DE
	bpl -49.b		; 10 CF
	brk $C7.b		; 00 C7
	brk $8F.b		; 00 8F
	php		; 08
	ora $00.b,S		; 03 00
	cli		; 58
	beq  84.b		; F0 54
	sed		; F8
	jmp $6CF8.w		; 4C F8 6C
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	brk $18.b		; 00 18
	brk $28.b		; 00 28
	jsr $0000.w		; 20 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ldy #$23A0.w		; A0 A0 23
	cmp ($23.b,X)		; C1 23
	cpy #$01C2.w		; C0 C2 01
	cmp ($80.b,X)		; C1 80
	eor ($80.b,X)		; 41 80
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $D0.b		; 00 D0
	jsr $E0F0.w		; 20 F0 E0
	sei		; 78
	bra -28.b		; 80 E4
	jsr $40FC.w		; 20 FC 40
	ply		; 7A
	clc		; 18
	asl $0000.w,X		; 1E 00 00
	cpy #$0020.w		; C0 20 00
	cpx #$8000.w		; E0 00 80
	brk $20.b		; 00 20
	clc		; 18
	rti		; 40

	brk $18.b		; 00 18
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $2004.w		; 1C 04 20
	rol $1660.w		; 2E 60 16
	bvc  72.b		; 50 48
	cpx #$C200.w		; E0 00 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	and $3F3F2F.l		; 2F 2F 3F 3F
	and $00003F.l,X		; 3F 3F 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	sei		; 78
	sec		; 38
	bit $4644.w,X		; 3C 44 46
	bpl  10.b		; 10 0A
	adc ($47.b)		; 72 47
	plp		; 28
	eor ($00.b,S),Y		; 53 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$B8B8.w		; C0 B8 B8
	jsr ($B8FC.w,X)		; FC FC B8
	clv		; B8
	ldy $3BBC.w,X		; BC BC 3B
	ora [$5C.b],Y		; 17 5C
	and $6C.b,X		; 35 6C
	and $33.b,X		; 35 33
	asl A		; 0A
	ora $1D0A.w,Y		; 19 0A 1D
	cop $03.b		; 02 03
	trb $1E07.w		; 1C 07 1E
	ora [$00.b],Y		; 17 00
	and $02.b,X		; 35 02
	and $02.b,X		; 35 02
	asl A		; 0A
	tsb $0A.b		; 04 0A
	tsb $02.b		; 04 02
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	cmp $9C55.w,X		; DD 55 9C
	trb $9C.b		; 14 9C
	trb $9C.b		; 14 9C
	sty $9C.b,X		; 94 9C
	sty $1C.b,X		; 94 1C
	trb $1C.b		; 14 1C
	trb $FF.b		; 14 FF
	brk $55.b		; 00 55
	jsl $146314.l		; 22 14 63 14
	adc $94.b,S		; 63 94
	adc $94.b,S		; 63 94
	adc $14.b,S		; 63 14
	sbc $14.b,S		; E3 14
	sbc $00.b,S		; E3 00
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	tsb $1E17.w		; 0C 17 1E
	and [$37.b],Y		; 37 37
	pld		; 2B
	tsa		; 3B
	ora $363B.w,Y		; 19 3B 36
	adc $004F0A.l,X		; 7F 0A 4F 00
	brk $0C.b		; 00 0C
	ora ($12.b,X)		; 01 12
	tsb $1C27.w		; 0C 27 1C
	and #$111E.w		; 29 1E 11
	asl $0D12.w		; 0E 12 0D
	dec A		; 3A
	ora $E5.b		; 05 E5
	cmp $EFF8.w		; CD F8 EF
	and $1F29.w,Y		; 39 29 1F
	inc $66.b,X		; F6 66
	sta $9249.w,Y		; 99 49 92
	adc $0684.w		; 6D 84 06
	sta $00C2.w,Y		; 99 C2 00
	cpx #$2600.w		; E0 00 26
	cpy #$0010.w		; C0 10 00
	rts		; 60

	rts		; 60

	bvs 118.b		; 70 76
	stz $72.b,X		; 74 72
	rts		; 60

	rts		; 60

	ror $F7B0.w,X		; 7E B0 F7
	adc ($CE.b,S),Y		; 73 CE
	eor [$8E.b]		; 47 8E
	inc $9D6D.w,X		; FE 6D 9D
	and #$669D.w		; 29 9D 66
	ora $309F05.l,X		; 1F 05 9F 30
	brk $73.b		; 00 73
	php		; 08
	mvp $8E,$33		; 44 33 8E
	ora $69.b,S		; 03 69
	adc [$E8.b]		; 67 E8
	sbc [$E4.b]		; E7 E4
	xba		; EB
	adc $6A.b		; 65 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40C0.w		; C0 C0 40
	cpy #$C080.w		; C0 80 C0
	cpy #$00E0.w		; C0 E0 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $7A.b		; 00 7A
	cmp $7A.b,S		; C3 7A
	cmp $1A.b,S		; C3 1A
	cmp $1A.b,S		; C3 1A
	eor $3A.b,S		; 43 3A
	adc $3E.b,S		; 63 3E
	adc $1E.b,S		; 63 1E
	adc $1C.b,S		; 63 1C
	and ($3C.b,X)		; 21 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $001E.w		; 20 1E 00
	tsb $0B00.w		; 0C 00 0B
	tsb $0F.b		; 04 0F
	ora [$1E.b]		; 07 1E
	ora ($27.b,X)		; 01 27
	tsb $3F.b		; 04 3F
	cop $5E.b		; 02 5E
	clc		; 18
	sei		; 78
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	clc		; 18
	cop $00.b		; 02 00
	clc		; 18
	jsr $0000.w		; 20 00 00
	sec		; 38
	cpy $4C18.w		; CC 18 4C
	bpl  68.b		; 10 44
	bmi 100.b		; 30 64
	ror A		; 6A
	tsb $205E.w		; 0C 5E 20
	eor $5D3E.w,X		; 5D 3E 5D
	dec A		; 3A
	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	sec		; 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $3E.b		; 00 3E
	brk $3A.b		; 00 3A
	brk $07.b		; 00 07
	bmi  22.b		; 30 16
	bmi  13.b		; 30 0D
	and ($0C.b,X)		; 21 0C
	adc ($3A.b,X)		; 61 3A
	adc $18.b,S		; 63 18
	eor $1C.b,S		; 43 1C
	dec $34.b		; C6 34
	dec $1F.b		; C6 1F
	bpl  15.b		; 10 0F
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	and ($1C.b,X)		; 21 1C
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	rti		; 40

	sei		; 78
	rti		; 40

	lsr $20.b,X		; 56 20
	.db $62, $00, $6E		; 62 00 6E
	bit $76.b		; 24 76
	php		; 08
	tsa		; 3B
	ora ($33.b)		; 12 33
	bpl  61.b		; 10 3D
	cop $2F.b		; 02 2F
	asl $0820.w,X		; 1E 20 08
	brk $1C.b		; 00 1C
	bit $10.b		; 24 10
	php		; 08
	brk $12.b		; 00 12
	tsb $10.b		; 04 10
	tsb $0002.w		; 0C 02 00
	asl $0100.w,X		; 1E 00 01
	ora $00.b,S		; 03 00
	cop $03.b		; 02 03
	asl $01.b		; 06 01
	tsb $06.b		; 04 06
	tsb $0802.w		; 0C 02 08
	ora $0619.w		; 0D 19 06
	ora ($00.b,S),Y		; 13 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $BA.b		; 00 BA
	and $423BAD.l,X		; 3F AD 3B 42
	adc [$43.b]		; 67 43
	adc [$82.b]		; 67 82
	cmp $0F.b,S		; C3 0F
	sta ($0F.b,X)		; 81 0F
	sta $08.b		; 85 08
	ora [$D8.b]		; 07 D8
	asl $C8.b		; 06 C8
	tsb $84.b		; 04 84
	cop $87.b		; 02 87
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $42.b		; 00 42
	stp		; DB
	bpl  60.b		; 10 3C
	sec		; 38
	ror $FF7E.w,X		; 7E 7E FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	adc $7FFFFF.l,X		; 7F FF FF 7F
	bit $24.b		; 24 24
	cmp $DB.b,S		; C3 DB
	sta $66A5.w,Y		; 99 A5 66
	clc		; 18
	rol $7FFF.w,X		; 3E FF 7F
	sbc $3EFF3F.l,X		; FF 3F FF 3E
	sbc $20D652.l,X		; FF 52 D6 20
	lda $FE48.w,X		; BD 48 FE
	ora $38117A.l		; 0F 7A 11 38
	phd		; 0B
	bpl  14.b		; 10 0E
	inc A		; 1A
	asl $0D.b		; 06 0D
	and #$5229.w		; 29 29 52
	eor ($01.b)		; 52 01
	brk $19.b		; 00 19
	bpl   3.b		; 10 03
	tsb $000F.w		; 0C 0F 00
	ora $00.b		; 05 00
	ora $01.b,S		; 03 01
	brk $D2.b		; 00 D2
	cpy $EE.b		; C4 EE
	pha		; 48
	jmp ($BCE0.w,X)		; 7C E0 BC
	bpl  56.b		; 10 38
	ldy #$E010.w		; A0 10 E0
	bcs -128.b		; B0 80
	jsr $2C2C.w		; 20 2C 2C
	bpl  16.b		; 10 10
	bra   0.b		; 80 00
	bmi  16.b		; 30 10
	bra  96.b		; 80 60
	cpx #$4000.w		; E0 00 40
	brk $C0.b		; 00 C0
	brk $0C.b		; 00 0C
	trb $1808.w		; 1C 08 18
	ora #$0918.w		; 09 18 09
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sbc $FF.b,S		; E3 FF
	jsl $1C803E.l		; 22 3E 80 1C
	cmp ($14.b,X)		; C1 14
	sbc $36.b,S		; E3 36
	sbc $36.b,S		; E3 36
	bra  54.b		; 80 36
	bra  34.b		; 80 22
	trb $14.b		; 14 14
	cmp $14.b,X		; D5 14
	sbc [$14.b],Y		; F7 14
	sbc $00.b,S		; E3 00
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	sbc $22.b,S		; E3 22
	cmp ($00.b,X)		; C1 00
	eor $B5FC.w,X		; 5D FC B5
	jmp.w [$E642]		; DC 42 E6
.ACCU 16
	rep #$E6		; C2 E6
	lda ($E3.b,X)		; A1 E3
	sed		; F8
	cmp ($78.b,X)		; C1 78
	cmp ($88.b),Y		; D1 88
	bvs  27.b		; 70 1B
	rts		; 60

	ora ($20.b,S),Y		; 13 20
	and ($40.b,X)		; 21 40
	sbc ($00.b,X)		; E1 00
	jsr $40C0.w		; 20 C0 40
	bra  80.b		; 80 50
	bra 112.b		; 80 70
	bra  48.b		; 80 30
	sty $60.b		; 84 60
	dec $04.b		; C6 04
	dec $08.b		; C6 08
	eor $3A.b,S		; 43 3A
	adc $1C.b,S		; 63 1C
	adc ($0D.b,X)		; 61 0D
	and ($16.b,X)		; 21 16
	bmi 120.b		; 30 78
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	rol $1C02.w,X		; 3E 02 1C
	brk $3F.b		; 00 3F
	and ($1E.b,X)		; 21 1E
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	adc $3C.b,S		; 63 3C
	ror $1C.b		; 66 1C
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	cpy $38.b		; C4 38
	cpy $CC70.w		; CC 70 CC
	rts		; 60

	iny		; C8
	asl $1802.w,X		; 1E 02 18
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	sbc $9D76.w		; ED 76 9D
	lsr $9B.b,X		; 56 9B
	lsr $E7.b,X		; 56 E7
	tay		; A8
	cpy $5CA8.w		; CC A8 5C
	jsr $1C60.w		; 20 60 1C
	beq  60.b		; F0 3C
	ror $00.b,X		; 76 00
	lsr $20.b,X		; 56 20
	lsr $20.b,X		; 56 20
	tay		; A8
	bpl -88.b		; 10 A8
	bpl  32.b		; 10 20
	bra  24.b		; 80 18
	tya		; 98
	php		; 08
	php		; 08
	tya		; 98
	stz $0C08.w		; 9C 08 0C
	iny		; C8
	tsb $0CC8.w		; 0C C8 0C
	inx		; E8
	tsb $0CE8.w		; 0C E8 0C
	inx		; E8
	tsb $0CE8.w		; 0C E8 0C
	rts		; 60

	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $3B.b		; 00 3B
	ora ($37.b)		; 12 37
	php		; 08
	ror $6624.w		; 6E 24 66
	tsb $5E.b		; 04 5E
	jsr $3C7A.w		; 20 7A 3C
	pea $3C08.w		; F4 08 3C
	jsr $0412.w		; 20 12 04
	php		; 08
	brk $24.b		; 00 24
	bpl   4.b		; 10 04
	clc		; 18
	jsr $3C00.w		; 20 00 3C
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	cpy #$C37F.w		; C0 7F C3
	adc $AF7F87.l		; 6F 87 7F AF
	adc [$2F.b],Y		; 77 2F
	and $07070F.l,X		; 3F 0F 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $15.b		; 02 15
	bit $0B.b		; 24 0B
	and $0B.b		; 25 0B
	tsb $0603.w		; 0C 03 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	sbc $EDFBFF.l,X		; FF FF FB ED
	tsa		; 3B
	sbc ($FC.b,S),Y		; F3 FC
	cpx $3B.b		; E4 3B
	wai		; CB
	inc $ED.b,X		; F6 ED
	ldx $BF.b,Y		; B6 BF
	adc $05FA.w		; 6D FA 05
	sbc #$28D6.w		; E9 D6 28
	cmp ($BC.b,S),Y		; D3 BC
	cpy #$C03B.w		; C0 3B C0
	ror $80.b,X		; 76 80
	ldx $00.b,Y		; B6 00
	adc $FB00.w		; 6D 00 FB
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $F9F9FE.l,X		; FF FE F9 F9
	ror $76.b,X		; 76 76
	and $75.b,S		; 23 75
	eor ($77.b,S),Y		; 53 77
	eor $FB.b,X		; 55 FB
	jsr ($FA75.w,X)		; FC 75 FA
	sbc $F976.w,Y		; F9 76 F9
	tay		; A8
	ror $50.b,X		; 76 50
	and $A8.b,S		; 23 A8
	eor ($88.b,S),Y		; 53 88
	eor $88.b,X		; 55 88
	sbc $FEFFFC.l,X		; FF FC FF FE
	adc $FFFECF.l,X		; 7F CF FE FF
	adc $7EBECF.l,X		; 7F CF BE 7E
	clv		; B8
	sei		; 78
	inx		; E8
	bcs  -4.b		; B0 FC
	brk $74.b		; 00 74
	tsx		; BA
	.db $42, $BD		; 42 BD
	phx		; DA
	and $3CC3.w,X		; 3D C3 3C
	ror $18.b		; 66 18
	sei		; 78
	brk $B0.b		; 00 B0
	brk $E0.b		; 00 E0
	bmi  96.b		; 30 60
	bpl -32.b		; 10 E0
	bvc -32.b		; 50 E0
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	bra -24.b		; 80 E8
	bpl 120.b		; 10 78
	beq -68.b		; F0 BC
	rti		; 40

	sbc ($10.b)		; F2 10
	ror $3D20.w,X		; 7E 20 3D
	tsb $000F.w		; 0C 0F 00
	bra  96.b		; 80 60
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	rti		; 40

	brk $10.b		; 00 10
	tsb $0020.w		; 0C 20 00
	tsb $0002.w		; 0C 02 00
	brk $70.b		; 00 70
	stx $34.b		; 86 34
	stx $58.b		; 86 58
.INDEX 16
	rep #$18		; C2 18
	cmp $2E.b,S		; C3 2E
	adc $0C.b,S		; 63 0C
	adc ($1C.b,X)		; 61 1C
	and ($16.b),Y		; 31 16
	and ($FC.b),Y		; 31 FC
	sty $78.b		; 84 78
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $3E.b		; 00 3E
	jsr $010F.w		; 20 0F 01
	ora $110401.l		; 0F 01 04 11
	asl $13.b		; 06 13
	pld		; 2B
	clc		; 18
	and $5D02.w,X		; 3D 02 5D
	rol $2E5D.w,X		; 3E 5D 2E
	ror A		; 6A
	tsb $46.b		; 04 46
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	bvs -58.b		; 70 C6
	cli		; 58
	dec $1C.b		; C6 1C
	dec $3C.b		; C6 3C
	ror $38.b		; 66 38
	.db $62, $0C, $62		; 62 0C 62
	tsb $1C23.w		; 0C 23 1C
	and ($3C.b,S),Y		; 33 3C
	tsb $3C.b		; 04 3C
	tsb $78.b		; 04 78
	rti		; 40

	clc		; 18
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	asl $0002.w		; 0E 02 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $3012.w		; 1C 12 30
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

	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	adc ($03.b)		; 72 03
	ror $0237.w,X		; 7E 37 02
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($36.b,X)		; 01 36
	ora ($51.b,X)		; 01 51
	sbc ($42.b),Y		; F1 42
	sbc $8C.b,S		; E3 8C
	cmp $19DF50.l		; CF 50 DF 19
	sta ($3E.b,X)		; 81 3E
	bra -89.b		; 80 A7
	sbc [$C0.b]		; E7 C0
	sbc $1CC00E.l,X		; FF 0E C0 1C
	cpy #$02B2.w		; C0 B2 02
	plp		; 28
	php		; 08
	ror $7F00.w,X		; 7E 00 7F
	brk $18.b		; 00 18
	bra  64.b		; 80 40
	cpy #$19D5.w		; C0 D5 19
	bvs  95.b		; 70 5F
	jsr ($DC80.w,X)		; FC 80 DC
	jmp ($FEFE.w,X)		; 7C FE FE
	ldx $7EFE.w,Y		; BE FE 7E
	inc $8F8E.w,X		; FE 8E 8F
	rol $4008.w		; 2E 08 40
	bra -128.b		; 80 80
	brk $4C.b		; 00 4C
	sec		; 38
	plx		; FA
	tsb $9E.b		; 04 9E
	bvs 118.b		; 70 76
	php		; 08
	ror $0000.w,X		; 7E 00 00
	brk $18.b		; 00 18
	clc		; 18
	rol $7F3E.w,X		; 3E 3E 7F
	adc $FF.b,X		; 75 FF
	sbc $7DFDFF.l,X		; FF FF FD 7D
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $18.b		; 00 18
	brk $36.b		; 00 36
	clc		; 18
	adc $3A.b		; 65 3A
	lda $797E.w,X		; BD 7E 79
	inc $FE19.w,X		; FE 19 FE
	sbc $000300.l,X		; FF 00 03 00
	tsb $1702.w		; 0C 02 17
	ora $4F1F2E.l		; 0F 2E 1F 4F
	bmi -74.b		; 30 B6
	eor ($AB.b,X)		; 41 AB
	eor [$76.b]		; 47 76
	ora $020000.l		; 0F 00 00 02
	ora ($0F.b,X)		; 01 0F
	brk $1F.b		; 00 1F
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	phd		; 0B
	rti		; 40

	ora [$00.b],Y		; 17 00
	asl $E830.w		; 0E 30 E8
	ldy #$60E8.w		; A0 E8 60
	inx		; E8
	ror $DF9E.w,X		; 7E 9E DF
	eor $BC0F9F.l		; 4F 9F 0F BC
	and $3077CF.l		; 2F CF 77 30
	bvc  48.b		; 50 30
	bne  80.b		; D0 50
	bcc  30.b		; 90 1E
	brk $45.b		; 00 45
	rol $6F0E.w		; 2E 0E 6F
	jsr $774F.w		; 20 4F 77
	brk $F8.b		; 00 F8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta ($0E.b,S),Y		; 93 0E
	sta ($4F.b),Y		; 91 4F
	cmp ($27.b),Y		; D1 27
	beq  23.b		; F0 17
	bvs  51.b		; 70 33
	sei		; 78
	nop		; EA
	tsb $2F38.w		; 0C 38 2F
	jmp ($6E60.w)		; 6C 60 6E
	adc ($2F.b,X)		; 61 2F
	and ($0F.b,X)		; 21 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	php		; 08
	ora [$04.b],Y		; 17 04
	jsr $D2C0.w		; 20 C0 D2
	sbc $849F46.l,X		; FF 46 9F 84
	lsr $1CD0.w,X		; 5E D0 1C
	ldy #$00F0.w		; A0 F0 00
	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$6000.w		; A0 00 60
	bra -32.b		; 80 E0
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $FF.b		; 00 FF
	inc $FF7F.w,X		; FE 7F FF
	lda $1FFD7F.l,X		; BF 7F FD 1F
	eor $DBBFE7.l,X		; 5F E7 BF DB
	lda $CAAFC9.l		; AF C9 AF CA
	jmp.w [$3D3F]		; DC 3F 3D
	dec $F61D.w		; CE 1D F6
	ora $E71A.w		; 0D 1A E7
	tsb $DB.b		; 04 DB
	cop $C9.b		; 02 C9
	ora ($CA.b),Y		; 11 CA
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $186800.l,X		; 1F 00 68 18
	lda $FE7D7F.l,X		; BF 7F 7D FE
	cmp $836DE1.l,X		; DF E1 6D 83
	eor [$8F.b],Y		; 57 8F
	sbc $00001F.l		; EF 1F 00 00
	clc		; 18
	ora [$7F.b]		; 07 7F
	brk $FE.b		; 00 FE
	brk $E1.b		; 00 E1
	brk $81.b		; 00 81
	asl $81.b,X		; 16 81
	rol $1E03.w		; 2E 03 1E
	brk $00.b		; 00 00
	adc $4FDF0F.l,X		; 7F 0F DF 4F
	sta $2FBC0F.l,X		; 9F 0F BC 2F
	cmp $807877.l		; CF 77 78 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $2F4300.l		; 0F 00 43 2F
	asl $206F.w		; 0E 6F 20
	eor $000077.l		; 4F 77 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$7F40.w		; C0 40 7F
	sta $3E01.w,Y		; 99 01 3E
	brk $C7.b		; 00 C7
	cmp [$00.b]		; C7 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	and ($E0.b,S),Y		; 33 E0
	ldx $00F8.w,Y		; BE F8 00
	jsr ($FAFC.w,X)		; FC FC FA
	inc $FEFE.w,X		; FE FE FE
	stz $F6.b,X		; 74 F6
	tax		; AA
	sbc $5C.b,S		; E3 5C
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	bmi -14.b		; 30 F2
	jmp $B07E.w		; 4C 7E B0
	cli		; 58
	ldy #$40BC.w		; A0 BC 40
	sbc $A1.b		; E5 A1
	sbc ($F0.b)		; F2 F0
	cmp #$A4F8.w		; C9 F8 A4
	jmp.w [$F7E1]		; DC E1 F7
	bmi  -1.b		; 30 FF
	bra -27.b		; 80 E5
	rts		; 60

	tyx		; BB
	ldx $EF40.w,Y		; BE 40 EF
	bra -121.b		; 80 87
	cpx #$E003.w		; E0 03 E0
	inx		; E8
	php		; 08
	brk $80.b		; 00 80
	inc A		; 1A
	phx		; DA
	jsr $2BC0.w		; 20 C0 2B
	ora $1C2F.w,X		; 1D 2F 1C
	and $1C.b,S		; 23 1C
	jsl $013E1D.l		; 22 1D 3E 01
	mvp $4D,$3B		; 44 3B 4D
	and ($39.b)		; 32 39
	asl $1D.b		; 06 1D
	brk $1C.b		; 00 1C
	ora ($1C.b,X)		; 01 1C
	brk $1D.b		; 00 1D
	brk $01.b		; 00 01
	brk $3B.b		; 00 3B
	brk $32.b		; 00 32
	brk $06.b		; 00 06
	brk $FF.b		; 00 FF
	sbc $DFFF3F.l,X		; FF 3F FF DF
	and $AF8F7E.l,X		; 3F 7E 8F AF
	adc ($DF.b,S),Y		; 73 DF
	adc $E457.w		; 6D 57 E4
	cmp [$E5.b],Y		; D7 E5
	inc $1E1F.w		; EE 1F 1E
	sbc [$0E.b]		; E7 0E
	tda		; 7B
	stx $0D.b		; 86 0D
	adc ($02.b,S),Y		; 73 02
	adc $E401.w		; 6D 01 E4
	php		; 08
	sbc $08.b		; E5 08
	rti		; 40

	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	cpy #$A080.w		; C0 80 A0
	cpy #$C0A0.w		; C0 A0 C0
	cpx #$F0C0.w		; E0 C0 F0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	clc		; 18
	clc		; 18
	rol $7F3E.w,X		; 3E 3E 7F
	adc $FF.b,X		; 75 FF
	sbc $7DFDFF.l,X		; FF FF FD 7D
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $18.b		; 00 18
	brk $36.b		; 00 36
	clc		; 18
	adc $3A.b		; 65 3A
	lda $797E.w,X		; BD 7E 79
	inc $FE19.w,X		; FE 19 FE
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $4F91.w		; 0E 91 4F
	cmp ($27.b),Y		; D1 27
	beq  23.b		; F0 17
	bvs  51.b		; 70 33
	sei		; 78
	nop		; EA
	tsb $2F38.w		; 0C 38 2F
	inc $6EC0.w,X		; FE C0 6E
	adc ($2F.b,X)		; 61 2F
	and ($0F.b,X)		; 21 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	php		; 08
	ora [$04.b],Y		; 17 04
	jsr $C0C0.w		; 20 C0 C0
	brk $46.b		; 00 46
	sta $D05E84.l,X		; 9F 84 5E D0
	trb $F0A0.w		; 1C A0 F0
	brk $E0.b		; 00 E0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $3D.b		; 00 3D
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $6F00.w,Y		; 19 00 6F
	eor $5F7F6F.l,X		; 5F 6F 7F 5F
	adc $FF7F77.l,X		; 7F 77 7F FF
	lda $BFFFBF.l,X		; BF BF FF BF
	sbc $47FFBF.l,X		; FF BF FF 47
	and $5B1F67.l,X		; 3F 67 1F 5B
	and [$46.b]		; 27 46
	and $7E9D.w,Y		; 39 9D 7E
	sta $7F9F7F.l,X		; 9F 7F 9F 7F
	sta $01007F.l,X		; 9F 7F 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	cop $06.b		; 02 06
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
	inc A		; 1A
	sta $B4.b,S		; 83 B4
	stx $70.b		; 86 70
	asl $68.b		; 06 68
	tsb $18D0.w		; 0C D0 18
	cpy #$8010.w		; C0 10 80
	bmi  64.b		; 30 40
	rts		; 60

	jsr ($7880.w,X)		; FC 80 78
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora $0E.b,S		; 03 0E
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	cpx #$E009.w		; E0 09 E0
	php		; 08
	cpx #$E008.w		; E0 08 E0
	php		; 08
	cpx #$E008.w		; E0 08 E0
	php		; 08
	cpx #$E008.w		; E0 08 E0
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	eor ($C1.b,X)		; 41 C1
	rti		; 40

	cpy #$E020.w		; C0 20 E0
	bpl 112.b		; 10 70
	php		; 08
	sec		; 38
	brk $18.b		; 00 18
	tsb $0C.b		; 04 0C
	cop $0E.b		; 02 0E
	ldx $3F80.w,Y		; BE 80 3F
	brk $5F.b		; 00 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	ora $000308.l		; 0F 08 03 00
	ora $04.b		; 05 04
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $E0.b		; 00 E0
	brk $7B.b		; 00 7B
	asl A		; 0A
	and $1F2610.l		; 2F 10 26 1F
	and $1706.w,Y		; 39 06 17
	ora ($13.b,X)		; 01 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tsb $10.b		; 04 10
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
	brk $40.b		; 00 40
	rep #$00		; C2 00
	cmp $00.b,S		; C3 00
	cmp $22.b,S		; C3 22
	adc $22.b,S		; 63 22
	adc $00.b,S		; 63 00
	adc ($10.b,X)		; 61 10
	and ($00.b),Y		; 31 00
	and ($3C.b),Y		; 31 3C
	brk $7E.b		; 00 7E
	.db $42, $7E		; 42 7E
	.db $42, $1C		; 42 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $000E.w		; 20 0E 00
	asl $0010.w,X		; 1E 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	brk $E4.b		; 00 E4
	jsr $40B8.w		; 20 B8 40
	pla		; 68
	beq -40.b		; F0 D8
	rts		; 60

	bvs   0.b		; 70 00
	ldy #$C080.w		; A0 80 C0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	clc		; 18
	rti		; 40

	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	ora #$122F.w		; 09 2F 12
	eor $0E7D3C.l,X		; 5F 3C 7D 0E
	lsr A		; 4A
	tsb $F6.b		; 04 F6
	bpl -36.b		; 10 DC
	jsr $10B8.w		; 20 B8 10
	asl $00.b		; 06 00
	bpl   0.b		; 10 00
	bit $0E00.w,X		; 3C 00 0E
	brk $04.b		; 00 04
	bmi  16.b		; 30 10
	php		; 08
	jsr $1000.w		; 20 00 10
	rti		; 40

	brk $8C.b		; 00 8C
	pha		; 48
	cpy $CC08.w		; CC 08 CC
	brk $44.b		; 00 44
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $0518.w		; 0E 18 05
	and ($1E.b),Y		; 31 1E
	and ($08.b,S),Y		; 33 08
	and $14.b,S		; 23 14
	ror $30.b		; 66 30
	stz $08.b		; 64 08
	jmp $080F.w		; 4C 0F 08
	ora [$00.b]		; 07 00
	asl $0C10.w,X		; 1E 10 0C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	jsr $0018.w		; 20 18 00
	bmi   0.b		; 30 00
	bra -64.b		; 80 C0
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
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	asl $0E.b		; 06 0E
	ora #$0118.w		; 09 18 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	brk $E0.b		; 00 E0
	php		; 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	rts		; 60

	clc		; 18
	brk $10.b		; 00 10
	jsr $F030.w		; 20 30 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  24.b		; 10 18
	bra -116.b		; 80 8C
	bra -116.b		; 80 8C
	cli		; 58
	jmp.w [$9C18]		; DC 18 9C
	dey		; 88
	sty $8480.w		; 8C 80 84
	beq  16.b		; F0 10
	cpx #$7800.w		; E0 00 78
	php		; 08
	sei		; 78
	php		; 08
	ldy #$E080.w		; A0 80 E0
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	brk $7F.b		; 00 7F
	tsa		; 3B
	ror $39.b		; 66 39
	eor [$38.b]		; 47 38
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
	brk $DE.b		; 00 DE
	sbc $BFFF7F.l,X		; FF 7F FF BF
	adc $5F1FFD.l,X		; 7F FD 1F 5F
	sbc [$BF.b]		; E7 BF
	stp		; DB
	lda $CAAFC9.l		; AF C9 AF CA
	dec $373F.w		; CE 3F 37
	dec $F61D.w		; CE 1D F6
	ora $E71A.w		; 0D 1A E7
	tsb $DB.b		; 04 DB
	cop $C9.b		; 02 C9
	ora ($CA.b),Y		; 11 CA
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $02.b		; 06 02
	and $6325.w,X		; 3D 25 63
	bit $63.b		; 24 63
	asl $65.b		; 06 65
	ora $26.b		; 05 26
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $39.b		; 00 39
	jsr $021A.w		; 20 1A 02
	and $D703.w,Y		; 39 03 D7
	bmi 121.b		; 30 79
	sbc $FEFF.w,Y		; F9 FF FE
	tyx		; BB
	cmp $DF.b		; C5 DF
	ora $AB.b,S		; 03 AB
	ora $003FDE.l,X		; 1F DE 3F 00
	brk $30.b		; 00 30
	php		; 08
	sbc $FE06.w,Y		; F9 06 FE
	brk $C5.b		; 00 C5
	brk $03.b		; 00 03
	plp		; 28
	cop $5D.b		; 02 5D
	cop $3D.b		; 02 3D
	sed		; F8
	sed		; F8
	pea $FCFC.w		; F4 FC FC
	jsr ($ECE8.w,X)		; FC E8 EC
	mvn $D8,$C6		; 54 C6 D8
	.db $42, $EA		; 42 EA
	sbc $95.b,S		; E3 95
	sbc ($D8.b),Y		; F1 D8
	rts		; 60

	cpx $98.b		; E4 98
	jsr ($B060.w,X)		; FC 60 B0
	rti		; 40

	sei		; 78
	bra 124.b		; 80 7C
	bra -36.b		; 80 DC
	brk $0E.b		; 00 0E
	cpy #$1E1E.w		; C0 1E 1E
	asl $3E06.w,X		; 1E 06 3E
	clc		; 18
	and $261F1E.l,X		; 3F 1E 1F 26
	rol $60.b		; 26 60
	pha		; 48
	cpy $C840.w		; CC 40 C8
	asl $0C.b,X		; 16 0C
	asl $04.b		; 06 04
	clc		; 18
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	cpx #$C00E.w		; E0 0E C0
	rol $2FE0.w		; 2E E0 2F
	rts		; 60

	and $701760.l		; 2F 60 17 70
	ora [$30.b],Y		; 17 30
	ora [$30.b],Y		; 17 30
	ora $407F00.l,X		; 1F 00 7F 40
	eor $001F40.l,X		; 5F 40 1F 00
	ora $202F00.l,X		; 1F 00 2F 20
	ora $000F00.l		; 0F 00 0F 00
	sty $FC.b		; 84 FC
	.db $82, $DE, $80		; 82 DE 80
	cmp [$00.b]		; C7 00
	eor ($00.b,X)		; 41 00
	rti		; 40

	brk $60.b		; 00 60
	bra  96.b		; 80 60
	cpy #$1B60.w		; C0 60 1B
	clc		; 18
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra   0.b		; 80 00
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	sta ($81.b,X)		; 81 81
	jsr $08E0.w		; 20 E0 08
	sei		; 78
	cop $1E.b		; 02 1E
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($7E.b,X)		; 01 7E
	brk $5F.b		; 00 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	jsr $2030.w		; 20 30 20
	bmi  32.b		; 30 20
	sec		; 38
	jsr $0038.w		; 20 38 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	bpl -48.b		; 10 D0
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$0120.w		; A0 20 01
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	cop $13.b		; 02 13
	asl $0E17.w		; 0E 17 0E
	and $073F17.l		; 2F 17 3F 07
	asl A		; 0A
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $17.b		; 00 17
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $30.b		; 00 30
	sed		; F8
	jsr $9CF0.w		; 20 F0 9C
	jsr ($BE3E.w,X)		; FC 3E BE
	and $2F3F2F.l,X		; 3F 2F 3F 2F
	and $1E163F.l,X		; 3F 3F 16 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2A00.w		; 1C 00 2A
	trb $1E25.w		; 1C 25 1E
	and $1E2D1E.l		; 2F 1E 2D 1E
	ora ($0C.b)		; 12 0C
	bra -101.b		; 80 9B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra 112.b		; 80 70
	bra -24.b		; 80 E8
	bcc -42.b		; 90 D6
	tay		; A8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bpl -128.b		; 10 80
	plp		; 28
	bra  19.b		; 80 13
	ora $0D13.w		; 0D 13 0D
	and $2F1B.w		; 2D 1B 2F
	tas		; 1B
	rol $1A.b		; 26 1A
	asl $0702.w,X		; 1E 02 07
	php		; 08
	ora $0F.b,S		; 03 0F
	ora $0D00.w		; 0D 00 0D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1A.b		; 00 1A
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $AF.b		; 04 AF
	wai		; CB
	ldx $EECA.w		; AE CA EE
	tax		; AA
	ror $4EAA.w		; 6E AA 4E
	txa		; 8A
	lsr $CE8A.w		; 4E 8A CE
	asl A		; 0A
	sbc $10CB80.l,X		; FF 80 CB 10
	dex		; CA
	ora ($AA.b),Y		; 11 AA
	ora ($AA.b),Y		; 11 AA
	ora ($8A.b),Y		; 11 8A
	and ($8A.b),Y		; 31 8A
	and ($0A.b),Y		; 31 0A
	and ($00.b),Y		; 31 00
	brk $10.b		; 00 10
	and ($00.b)		; 32 00
	and ($1F.b)		; 32 1F
	brk $3F.b		; 00 3F
	asl $1D23.w,X		; 1E 23 1D
	and $0F7B03.l,X		; 3F 03 7B 0F
	adc $000C37.l,X		; 7F 37 0C 00
	trb $0010.w		; 1C 10 00
	brk $1E.b		; 00 1E
	brk $1D.b		; 00 1D
	brk $01.b		; 00 01
	cop $09.b		; 02 09
	asl $35.b		; 06 35
	cop $DF.b		; 02 DF
	lda $BFFFDF.l,X		; BF DF FF BF
	sbc $FFFFEF.l,X		; FF EF FF FF
	adc $7EFF7F.l,X		; 7F 7F FF 7E
	sbc $8FFE7F.l,X		; FF 7F FE 8F
	jmp ($3ECF.w,X)		; 7C CF 3E
	lda [$4F.b],Y		; B7 4F
	sta $FB3C77.l		; 8F 77 3C FB
	tsa		; 3B
	jsr ($FF3E.w,X)		; FC 3E FF
	bit $4BFF.w,X		; 3C FF 4B
	lda $ECC4.w,Y		; B9 C4 EC
	.db $62, $FE, $80		; 62 FE 80
	wai		; CB
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $C0.b		; 06 C0
	cmp ($10.b,S),Y		; D3 10
	ora ($00.b,X)		; 01 00
	ldy $34.b,X		; B4 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  24.b		; 10 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	brk $C0.b		; 00 C0
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
	brk $0B.b		; 00 0B
	sec		; 38
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	cop $0E.b		; 02 0E
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	cpy #$8060.w		; C0 60 80
	jsr $20C0.w		; 20 C0 20
	cpy #$C020.w		; C0 20 C0
	bmi -64.b		; 30 C0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi -128.b		; 30 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$C000.w		; C0 00 C0
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	dey		; 88
	sty $8C88.w		; 8C 88 8C
	pha		; 48
	dec $C640.w		; CE 40 C6
	cpx #$E000.w		; E0 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	ldy $84.b,X		; B4 84
	bit $0F04.w,X		; 3C 04 0F
	sta ($4F.b),Y		; 91 4F
	bne  39.b		; D0 27
	beq  23.b		; F0 17
	bvs  51.b		; 70 33
	sei		; 78
	nop		; EA
	tsb $2F38.w		; 0C 38 2F
	inc $6FC0.w,X		; FE C0 6F
	adc ($2F.b,X)		; 61 2F
	jsr $000F.w		; 20 0F 00
	ora $080F00.l		; 0F 00 0F 08
	ora [$04.b],Y		; 17 04
	jsr $C0C0.w		; 20 C0 C0
	brk $46.b		; 00 46
	sta $D3DE04.l,X		; 9F 04 DE D3
	ora $07F787.l,X		; 1F 87 F7 07
	cmp $87.b		; C5 87
	cmp $07.b		; C5 07
	sta [$02.b]		; 87 02
	ora $A0.b,S		; 03 A0
	brk $60.b		; 00 60
	bra -29.b		; 80 E3
	brk $45.b		; 00 45
	eor $84.b,S		; 43 84
	sta $05.b,S		; 83 05
	ora $05.b,S		; 03 05
	ora $02.b,S		; 03 02
	ora ($08.b,X)		; 01 08
	asl $16.b		; 06 16
	tsb $1D26.w		; 0C 26 1D
	adc $62ED0E.l,X		; 7F 0E ED 62
	sbc [$94.b],Y		; F7 94
	jmp.w [$48A0]		; DC A0 48
	bmi   7.b		; 30 07
	cop $0D.b		; 02 0D
	brk $1D.b		; 00 1D
	ora ($0E.b,X)		; 01 0E
	brk $62.b		; 00 62
	bpl -108.b		; 10 94
	php		; 08
	ldy #$3000.w		; A0 00 30
	bra   0.b		; 80 00
	tya		; 98
	bvc -40.b		; 50 D8
	cpx $08.b		; E4 08
	ldy $BA60.w,X		; BC 60 BA
	jmp ($60BE.w,X)		; 7C BE 60
	inc $14.b,X		; F6 14
	ror $7030.w,X		; 7E 30 70
	bpl  32.b		; 10 20
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	brk $7C.b		; 00 7C
	brk $60.b		; 00 60
	brk $14.b		; 00 14
	php		; 08
	bmi   0.b		; 30 00
	adc ($0C.b)		; 72 0C
	ror $7B30.w,X		; 7E 30 7B
	asl A		; 0A
	and $1F2610.l		; 2F 10 26 1F
	and $1706.w,Y		; 39 06 17
	ora ($13.b,X)		; 01 13
	brk $0C.b		; 00 0C
	brk $30.b		; 00 30
	brk $0A.b		; 00 0A
	tsb $10.b		; 04 10
	brk $1F.b		; 00 1F
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	tsx		; BA
	inc $5438.w,X		; FE 38 54
	sec		; 38
	jmp $006420.l		; 5C 20 64 00
	jmp ($3A30.w,X)		; 7C 30 3A
	php		; 08
	ora $00BA00.l		; 0F 00 BA 00
	sec		; 38
	brk $38.b		; 00 38
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	clc		; 18
	bmi   0.b		; 30 00
	php		; 08
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	dec $20.b		; C6 20
	.db $62, $00, $63		; 62 00 63
	ora ($33.b)		; 12 33
	cop $33.b		; 02 33
	php		; 08
	ora $1900.w,Y		; 19 00 19
	brk $09.b		; 00 09
	sei		; 78
	rti		; 40

	trb $3E00.w		; 1C 00 3E
	jsl $1C000C.l		; 22 0C 00 1C
	bpl   6.b		; 10 06
	brk $0E.b		; 00 0E
	php		; 08
	ora [$01.b]		; 07 01
	lda ($6E.b),Y		; B1 6E
	plb		; AB
	ror $D5.b,X		; 76 D5
	tsx		; BA
	phy		; 5A
	and $5D6E.w,X		; 3D 6E 5D
	adc $00385B.l		; 6F 5B 38 00
	cpx #$6E00.w		; E0 00 6E
	brk $76.b		; 00 76
	brk $BA.b		; 00 BA
	brk $3C.b		; 00 3C
	bra  93.b		; 80 5D
	sta ($58.b,X)		; 81 58
	bra   7.b		; 80 07
	cpy #$001F.w		; C0 1F 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	phd		; 0B
	sec		; 38
	ora [$70.b],Y		; 17 70
	eor $74C1.w,X		; 5D C1 74
	ora [$D0.b]		; 07 D0
	asl $0000.w,X		; 1E 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	and $003E20.l		; 2F 20 3E 00
	plx		; FA
	cop $E8.b		; 02 E8
	php		; 08
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	asl $3F06.w,X		; 1E 06 3F
	ora #$2ADD.w		; 09 DD 2A
	bit $E3.b,X		; 34 E3
	tda		; 7B
	inx		; E8
	inc $0174.w,X		; FE 74 01
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($09.b,X)		; 01 09
	brk $2A.b		; 00 2A
	brk $E3.b		; 00 E3
	php		; 08
	inx		; E8
	tsb $74.b		; 04 74
	brk $6E.b		; 00 6E
	sbc $A0.b,S		; E3 A0
	sta $F4.b,S		; 83 F4
	asl $D0.b		; 06 D0
	trb $7840.w		; 1C 40 78
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	stz $7E80.w		; 9C 80 7E
	cop $F8.b		; 02 F8
	brk $E8.b		; 00 E8
	php		; 08
	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	sec		; 38
	inc $1A20.w		; EE 20 1A
	cmp $C8.b,S		; C3 C8
	sta $E0B8C0.l		; 8F C0 B8 E0
	cpy #$40A0.w		; C0 A0 40
	cpx #$0780.w		; E0 80 07
	brk $1F.b		; 00 1F
	brk $FD.b		; 00 FD
	eor ($B0.b,X)		; 41 B0
	brk $A0.b		; 00 A0
	jsr $00C0.w		; 20 C0 00
	rti		; 40

	brk $80.b		; 00 80
	brk $13.b		; 00 13
	asl $0E16.w		; 0E 16 0E
	trb $0C.b		; 14 0C
	trb $0C.b		; 14 0C
	ora $0D04.w		; 0D 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	ora ($0C.b,X)		; 01 0C
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $FD.b,S		; 03 FD
	brk $69.b		; 00 69
	bvs  25.b		; 70 19
	bpl -39.b		; 10 D9
	bpl  -8.b		; 10 F8
	bpl -24.b		; 10 E8
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra  16.b		; 80 10
	cpx #$E010.w		; E0 10 E0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cmp $8199C0.l,X		; DF C0 99 81
	ldx $B280.w,Y		; BE 80 B2
	sty $1EA0.w		; 8C A0 1E
	lda ($1E.b,X)		; A1 1E
	lda ($1E.b,X)		; A1 1E
	lda ($1E.b,X)		; A1 1E
	cpy #$8120.w		; C0 20 81
	ror $7F80.w,X		; 7E 80 7F
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	beq   1.b		; F0 01
	bcs  65.b		; B0 41
	bcs  65.b		; B0 41
	beq   1.b		; F0 01
	ldy #$E040.w		; A0 40 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpx #$E766.w		; E0 66 E7
	eor ($C1.b,X)		; 41 C1
	eor $5FC1.w		; 4D C1 5F
	cmp ($5E.b,X)		; C1 5E
	cpy #$C05E.w		; C0 5E C0
	lsr $C0C0.w,X		; 5E C0 C0
	cpy #$8199.w		; C0 99 81
	ldx $BE80.w,Y		; BE 80 BE
	bra  62.b		; 80 3E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0E.b		; 02 0E
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F8.b		; 00 F8
	rts		; 60

	jsr ($DF08.w,X)		; FC 08 DF
	jsr $F789.w		; 20 89 F7
	and $00C2.w,X		; 3D C2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $08.b		; 00 08
	beq   0.b		; F0 00
	jsr ($7E81.w,X)		; FC 81 7E
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $2000.w,Y		; 19 00 20
	ora $F71F42.l		; 0F 42 1F F7
	ora [$8C.b],Y		; 17 8C
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $173F02.l,X		; 1F 02 3F 17
	ora $007F0C.l		; 0F 0C 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	cpy #$E06C.w		; C0 6C E0
	rol $F4.b		; 26 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rts		; 60

	beq  36.b		; F0 24
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $1F.b		; 06 1F
	bpl  48.b		; 10 30
	jsl $F80F60.l		; 22 60 0F F8
	tsb $0080.w		; 0C 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $171F1F.l		; 0F 1F 1F 17
	ora [$7F.b],Y		; 17 7F
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$3000.w		; C0 00 30
	bvs  28.b		; 70 1C
	plp		; 28
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F4F4.w		; E0 F4 F4
	tas		; 1B
	php		; 08
	tas		; 1B
	php		; 08
	bpl   8.b		; 10 08
	bpl   8.b		; 10 08
	clc		; 18
	php		; 08
	and ($11.b,X)		; 21 11
	and $11.b		; 25 11
	and $11.b,X		; 35 11
	php		; 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$11.b]		; 07 11
	asl $0E11.w		; 0E 11 0E
	ora ($0E.b),Y		; 11 0E
	eor ($00.b,X)		; 41 00
	eor ($00.b,X)		; 41 00
	cmp ($80.b,X)		; C1 80
	cmp ($80.b,X)		; C1 80
	eor ($80.b,X)		; 41 80
	eor $81.b,S		; 43 81
	sta $01.b,S		; 83 01
	.db $82, $00, $00		; 82 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($4F.b,X)		; 01 4F
	and ($4F.b)		; 32 4F
	bmi -10.b		; 30 F6
	sta ($F7.b,X)		; 81 F7
	bra 124.b		; 80 7C
	php		; 08
	cpx $A808.w		; EC 08 A8
	rti		; 40

	tay		; A8
	rti		; 40

	cop $F8.b		; 02 F8
	brk $F8.b		; 00 F8
	sta ($78.b,X)		; 81 78
	bra 120.b		; 80 78
	php		; 08
	beq   8.b		; F0 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	ora ($80.b,X)		; 01 80
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $0D.b		; 00 0D
	tsb $09.b		; 04 09
	tsb $09.b		; 04 09
	tsb $05.b		; 04 05
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $04.b		; 02 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($F8.b,X)		; 01 F8
	bpl  -8.b		; 10 F8
	bpl -24.b		; 10 E8
	bpl -56.b		; 10 C8
	bpl -48.b		; 10 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $10.b		; 00 10
	cpx #$E010.w		; E0 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	ldy #$E01E.w		; A0 1E E0
	lsr $5FE1.w,X		; 5E E1 5F
	adc $1D.b,S		; 63 1D
	eor $1C.b,S		; 43 1C
	eor $1C.b,S		; 43 1C
	eor ($0C.b,S),Y		; 53 0C
	eor ($0C.b,S),Y		; 53 0C
	brk $7F.b		; 00 7F
	rti		; 40

	and $013E41.l,X		; 3F 41 3E 01
	rol $3E00.w,X		; 3E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	brk $5F.b		; 00 5F
	cmp ($1F.b,X)		; C1 1F
	cmp ($1E.b,X)		; C1 1E
	cmp ($9C.b,X)		; C1 9C
	eor ($BC.b,X)		; 41 BC
	adc ($BC.b,X)		; 61 BC
	adc ($2C.b,X)		; 61 2C
	adc ($2C.b,X)		; 61 2C
	adc ($3E.b,X)		; 61 3E
	brk $7E.b		; 00 7E
	rti		; 40

	adc $013F41.l,X		; 7F 41 3F 01
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
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
	brk $1F.b		; 00 1F
	tsb $1B.b		; 04 1B
	tsb $0817.w		; 0C 17 08
	ora $081F00.l,X		; 1F 00 1F 08
	asl $0E00.w		; 0E 00 0E
	ora $07.b		; 05 07
	ora ($04.b,X)		; 01 04
	phd		; 0B
	tsb $0803.w		; 0C 03 08
	tsb $00.b		; 04 00
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $05.b		; 05 05
	brk $01.b		; 00 01
	brk $D3.b		; 00 D3
	bit $84FF.w		; 2C FF 84
	sbc $4F52.w,X		; FD 52 4F
	rol $F3.b,X		; 36 F3
	php		; 08
	plx		; FA
	brk $66.b		; 00 66
	tsb $9824.w		; 0C 24 98
	plp		; 28
	dec $84.b,X		; D6 84
	plp		; 28
	eor ($00.b)		; 52 00
	asl $E0.b,X		; 16 E0
	php		; 08
	pea $FC00.w		; F4 00 FC
	tsb $98F0.w		; 0C F0 98
	rts		; 60

	cop $BF.b		; 02 BF
	eor $72.b		; 45 72
	tsx		; BA
	cpy #$B74B.w		; C0 4B B7
	rti		; 40

	and $B94FB0.l,X		; 3F B0 4F B9
	asl $6D.b,X		; 16 6D
	phd		; 0B
	cop $FD.b		; 02 FD
	rti		; 40

	tsx		; BA
	bra  69.b		; 80 45
	ora $BE.b,S		; 03 BE
	brk $BF.b		; 00 BF
	brk $5F.b		; 00 5F
	bpl  79.b		; 10 4F
	ora #$C216.w		; 09 16 C2
	sbc $813A.w,Y		; F9 3A 81
	jsr ($9829.w,X)		; FC 29 98
	ora ($F0.b,X)		; 01 F0
	sta ($60.b,X)		; 81 60
	bra -96.b		; 80 A0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	jmp ($C400.w,X)		; 7C 00 C4
	plp		; 28
	brk $00.b		; 00 00
	rts		; 60

	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	rti		; 40

	.db $42, $88		; 42 88
	cmp $BF05.w		; CD 05 BF
	and [$43.b],Y		; 37 43
	ldx $0FC1.w,Y		; BE C1 0F
	ldy #$F046.w		; A0 46 F0
	ora ($79.b)		; 12 79
	lda $7272BF.l,X		; BF BF 72 72
	cpy #$BFC0.w		; C0 C0 BF
	.db $82, $3E, $01		; 82 3E 01
	eor $101F40.l,X		; 5F 40 1F 10
	ora $864409.l		; 0F 09 44 86
	mvp $00,$7E		; 44 7E 00
	jsr ($78E0.w,X)		; FC E0 78
	bra -80.b		; 80 B0
	bra  32.b		; 80 20
	rti		; 40

	cpx #$C000.w		; E0 00 C0
	sed		; F8
	sed		; F8
	bra -128.b		; 80 80
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  93.b		; 80 5D
	and ($4C.b),Y		; 31 4C
	and ($6D.b,X)		; 21 6D
	jsr $2079.w		; 20 79 20
	tda		; 7B
	jsl $59025B.l		; 22 5B 02 59
	cop $51.b		; 02 51
	cop $31.b		; 02 31
	asl $1E21.w		; 0E 21 1E
	jsr $201E.w		; 20 1E 20
	asl $1C22.w,X		; 1E 22 1C
	cop $3C.b		; 02 3C
	cop $3C.b		; 02 3C
	cop $3C.b		; 02 3C
	stx $02.b		; 86 02
	sta [$02.b]		; 87 02
	ora $00.b		; 05 00
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	plp		; 28
	cpy #$D038.w		; C0 38 D0
	bmi -64.b		; 30 C0
	bvs -128.b		; 70 80
	bvc -128.b		; 50 80
	bvc -128.b		; 50 80
	bvs -96.b		; 70 A0
	beq  32.b		; F0 20
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $20C0.w		; 20 C0 20
	cpy #$0701.w		; C0 01 07
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ldy $DC53.w		; AC 53 DC
	phd		; 0B
	jsr ($B52B.w,X)		; FC 2B B5
	pld		; 2B
	jmp ($0403.w,X)		; 7C 03 04
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	brk $50.b		; 00 50
	ora $08.b,S		; 03 08
	adc $28.b,S		; 63 28
	eor $29.b,S		; 43 29
	.db $42, $00		; 42 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	sbc $CB.b		; E5 CB
	pea $E419.w		; F4 19 E4
	lda $3FC0.w,X		; BD C0 3F
	cpy #$817E.w		; C0 7E 81
	sbc [$08.b],Y		; F7 08
	ror $89.b,X		; 76 89
	and $D0.b		; 25 D0
	beq   6.b		; F0 06
	jsr $C0D6.w		; 20 D6 C0
	asl $40.b		; 06 40
	bra -128.b		; 80 80
	ora ($08.b,X)		; 01 08
	brk $89.b		; 00 89
	brk $FE.b		; 00 FE
	and $7E3373.l,X		; 3F 73 33 7E
	and $FCA4E7.l,X		; 3F E7 A4 FC
	and $D1BE79.l,X		; 3F 79 BE D1
	rol $2DDA.w		; 2E DA 2D
	rol $333D.w,X		; 3E 3D 33
	ldy $BD3E.w,X		; BC 3E BD
	ldy $38.b		; A4 38
	and $803E38.l,X		; 3F 38 3E 80
	rol $2D00.w		; 2E 00 2D
	brk $70.b		; 00 70
	sbc $77F8F5.l,X		; FF F5 F8 77
	plx		; FA
	adc ($FA.b,S),Y		; 73 FA
	lda $7F7E.w,Y		; B9 7E 7F
	sta $BFC6BF.l,X		; 9F BF C6 BF
	cmp ($75.b)		; D2 75
	sbc $F6.b,X		; F5 F6
	bvs 116.b		; 70 74
	bcc 116.b		; 90 74
	cpx #$7038.w		; E0 38 70
	sta $06C61D.l,X		; 9F 1D C6 06
	cmp ($02.b)		; D2 02
	inc $733F.w,X		; FE 3F 73
	and ($7E.b,S),Y		; 33 7E
	and $FCA4E7.l,X		; 3F E7 A4 FC
	and $D13EF9.l,X		; 3F F9 3E D1
	rol $ADDA.w		; 2E DA AD
	inc A		; 1A
	and $BC23.w,X		; 3D 23 BC
	and ($BD.b)		; 32 BD
	ldy $38.b		; A4 38
	ora [$38.b],Y		; 17 38
	rol $2E00.w,X		; 3E 00 2E
	brk $AD.b		; 00 AD
	brk $7F.b		; 00 7F
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $BFFF7F.l,X		; FF 7F FF BF
	adc $BF9F7F.l,X		; 7F 7F 9F BF
	dec $BF.b		; C6 BF
	cmp ($3E.b)		; D2 3E
	sbc $6D7EBF.l,X		; FF BF 7E 6D
	stz $ED1B.w,X		; 9E 1B ED
	ora $1D8F71.l,X		; 1F 71 8F 1D
	dec $06.b		; C6 06
	cmp ($02.b)		; D2 02
	jsr ($6498.w,X)		; FC 98 64
	ldy #$81C5.w		; A0 C5 81
	cpy $9C89.w		; CC 89 9C
	ora ($FC.b),Y		; 11 FC
	adc ($F8.b,X)		; 61 F8
	ora ($FA.b),Y		; 11 FA
	sbc ($9B.b,S),Y		; F3 9B
	brk $23.b		; 00 23
	tya		; 98
	cop $B8.b		; 02 B8
	asl A		; 0A
	bcs  18.b		; B0 12
	rts		; 60

	.db $62, $00, $16		; 62 00 16
	brk $F4.b		; 00 F4
	brk $A0.b		; 00 A0
	sbc $00.b,S		; E3 00
	rep #$40		; C2 40
	rep #$04		; C2 04
	stx $84.b		; 86 84
	stx $80.b		; 86 80
	stx $00.b		; 86 00
	tsb $08.b		; 04 08
	tsb $021E.w		; 0C 1E 02
	jmp ($3C40.w,X)		; 7C 40 3C
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $0D.b,S		; 03 0D
	ora $0F.b,S		; 03 0F
	bpl   4.b		; 10 04
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	bpl   8.b		; 10 08
	and $1E06.w,Y		; 39 06 1E
	tsb $0E75.w		; 0C 75 0E
	sbc ($0E.b),Y		; F1 0E
	ora $0DE4.w,X		; 1D E4 0D
	pea $F0CD.w		; F4 CD F0
	sbc [$1B.b],Y		; F7 1B
	sbc $010C03.l,X		; FF 03 0C 01
	asl $0E00.w		; 0E 00 0E
	brk $E4.b		; 00 E4
	cop $F4.b		; 02 F4
	cop $F0.b		; 02 F0
	cop $1B.b		; 02 1B
	brk $03.b		; 00 03
	rts		; 60

	eor ($00.b,X)		; 41 00
	sbc $06F900.l,X		; FF 00 F9 06
	ldx $CF4F.w,Y		; BE 4F CF
	ora $7E23E3.l		; 0F E3 23 7E
	bra -71.b		; 80 B9
	inc $00.b,X		; F6 00
	bra   0.b		; 80 00
	brk $06.b		; 00 06
	brk $4F.b		; 00 4F
	brk $0F.b		; 00 0F
	bmi  35.b		; 30 23
	trb $8100.w		; 1C 00 81
	bcs 102.b		; B0 66
	bit $BF00.w,X		; 3C 00 BF
	ldy #$E7F8.w		; A0 F8 E7
	lda $05BD07.l,X		; BF 07 BD 05
	tda		; 7B
	txa		; 8A
	cmp $07FB89.l,X		; DF 89 FB 07
	brk $D8.b		; 00 D8
	ldy #$E740.w		; A0 40 E7
	brk $07.b		; 00 07
	rts		; 60

	ora $62.b		; 05 62
	txa		; 8A
	bit $89.b		; 24 89
	jsr $0403.w		; 20 03 04
	brk $01.b		; 00 01
	sta [$00.b]		; 87 00
	eor #$FE86.w		; 49 86 FE
	cmp $E30FCF.l		; CF CF 0F E3
	and $70.b,S		; 23 70
	stx $F9B0.w		; 8E B0 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b		; 86 00
	cmp $300F00.l		; CF 00 0F 30
	and $1C.b,S		; 23 1C
	brk $81.b		; 00 81
	stx $66.b,Y		; 96 66
	cpy #$C7E4.w		; C0 E4 C7
	sed		; F8
	inx		; E8
	sbc [$CF.b],Y		; F7 CF
	eor [$CD.b],Y		; 57 CD
	eor $5A.b,X		; 55 5A
	phb		; 8B
	sed		; F8
	ldx $C833.w		; AE 33 C8
	clc		; 18
	brk $A0.b		; 00 A0
	jsr $00E7.w		; 20 E7 00
	and [$00.b]		; 27 00
	and $02.b		; 25 02
	tax		; AA
	tsb $89.b		; 04 89
	ora ($07.b,X)		; 01 07
	ora [$00.b]		; 07 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	cpy #$20E0.w		; C0 E0 20
	bvs -16.b		; 70 F0
	bmi -16.b		; 30 F0
	rts		; 60

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $50.b		; 00 50
	jsr $6030.w		; 20 30 60
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $37.b		; 00 37
	php		; 08
	and $0702.w,X		; 3D 02 07
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
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
	brk $64.b		; 00 64
	txy		; 9B
	inc $CE13.w		; EE 13 CE
	and ($CB.b,S),Y		; 33 CB
	and [$9B.b],Y		; 37 9B
	adc [$9F.b]		; 67 9F
	adc [$DF.b]		; 67 DF
	and [$BF.b]		; 27 BF
	eor [$9B.b]		; 47 9B
	brk $13.b		; 00 13
	brk $33.b		; 00 33
	brk $37.b		; 00 37
	brk $67.b		; 00 67
	brk $67.b		; 00 67
	brk $27.b		; 00 27
	brk $47.b		; 00 47
	brk $EB.b		; 00 EB
	ora $5BB5.w,X		; 1D B5 5B
	lda [$5B.b],Y		; B7 5B
	tda		; 7B
	sta [$7E.b]		; 87 7E
	lda [$5E.b],Y		; B7 5E
	lda [$5E.b],Y		; B7 5E
	lda ($5F.b,S),Y		; B3 5F
	ldy $1D.b		; A4 1D
	brk $5B.b		; 00 5B
	brk $5B.b		; 00 5B
	brk $87.b		; 00 87
	brk $B7.b		; 00 B7
	brk $B7.b		; 00 B7
	brk $B3.b		; 00 B3
	brk $A4.b		; 00 A4
	brk $FF.b		; 00 FF
	ldy $5F.b,X		; B4 5F
	stx $5D.b,Y		; 96 5D
	sty $CD.b,X		; 94 CD
	eor #$48CC.w		; 49 CC 48
	stx $8E0A.w		; 8E 0A 8E
	asl A		; 0A
	sta $00B40A.l		; 8F 0A B4 00
	stx $20.b,Y		; 96 20
	sty $22.b,X		; 94 22
	eor #$4832.w		; 49 32 48
	and ($0A.b,S),Y		; 33 0A
	adc ($0A.b),Y		; 71 0A
	adc ($0A.b),Y		; 71 0A
	bvs 107.b		; 70 6B
	sta $5BB5.w,X		; 9D B5 5B
	adc [$9B.b],Y		; 77 9B
	xce		; FB
	eor [$FE.b]		; 47 FE
	sta [$6E.b]		; 87 6E
	ora [$86.b]		; 07 86
	phd		; 0B
	ora $0C.b,S		; 03 0C
	sta $5B00.w,X		; 9D 00 5B
	brk $9B.b		; 00 9B
	brk $47.b		; 00 47
	brk $87.b		; 00 87
	brk $07.b		; 00 07
	bra   3.b		; 80 03
	brk $04.b		; 00 04
	tsb $FF.b		; 04 FF
	ldy $5F.b,X		; B4 5F
	stx $5D.b,Y		; 96 5D
	sty $CD.b,X		; 94 CD
	eor #$48CC.w		; 49 CC 48
	stx $8E0A.w		; 8E 0A 8E
	asl A		; 0A
	sta $00B40A.l		; 8F 0A B4 00
	stx $20.b,Y		; 96 20
	sty $22.b,X		; 94 22
	eor #$4832.w		; 49 32 48
	and ($0A.b,S),Y		; 33 0A
	adc ($0A.b),Y		; 71 0A
	adc ($0A.b),Y		; 71 0A
	bvs 126.b		; 70 7E
	sbc $706FBC.l		; EF BC 6F 70
	sta $E05DE0.l		; 8F E0 5D E0
	sta $2140.w,Y		; 99 40 21
	bra   1.b		; 80 01
	ora ($00.b,X)		; 01 00
	cpx #$6200.w		; E0 00 62
	cop $8C.b		; 02 8C
	tsb $1858.w		; 0C 58 18
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	bpl  28.b		; 10 1C
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bra -112.b		; 80 90
	cpy #$F030.w		; C0 30 F0
	brk $F8.b		; 00 F8
	php		; 08
	inx		; E8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	rol $3609.w		; 2E 09 36
	and ($1E.b),Y		; 31 1E
	pla		; 68
	and $740754.l		; 2F 54 07 74
	brk $EC.b		; 00 EC
	pha		; 48
	cld		; D8
	eor [$26.b],Y		; 57 26
	ora $0D32.w,Y		; 19 32 0D
	inc A		; 1A
	ora $2F.b		; 05 2F
	bpl   7.b		; 10 07
	sec		; 38
	brk $38.b		; 00 38
	pha		; 48
	bmi  87.b		; 30 57
	jsr $33CE.w		; 20 CE 33
	eor [$AB.b],Y		; 57 AB
	lsr $7DA0.w,X		; 5E A0 7D
	bra 126.b		; 80 7E
	bit #$837C.w		; 89 7C 83
	adc $3A82.w,Y		; 79 82 3A
	cpy #$7902.w		; C0 02 79
	phd		; 0B
	bcs   0.b		; B0 00
	lda $B300.w,Y		; B9 00 B3
	php		; 08
	sta $80.b,S		; 83 80
	tsa		; 3B
	bra  23.b		; 80 17
	cpy #$EB27.w		; C0 27 EB
	sbc [$6E.b],Y		; F7 6E
	xce		; FB
	inc $7CFB.w		; EE FB 7C
	tda		; 7B
	lda $1BEC38.l,X		; BF 38 EC 1B
	ror $FD19.w		; 6E 19 FD
	ror $97E3.w,X		; 7E E3 97
	ror A		; 6A
	stp		; DB
	nop		; EA
	tad		; 5B
	sei		; 78
	phb		; 8B
	sec		; 38
	iny		; C8
	clc		; 18
	sta $18.b,S		; 83 18
	lda ($7C.b,X)		; A1 7C
	cop $4E.b		; 02 4E
	sta [$EB.b],Y		; 97 EB
	lda [$7D.b]		; A7 7D
	sta $B2.b,S		; 83 B2
	asl $39.b		; 06 39
	mvn $BC,$7B		; 54 7B BC
	ror $BC.b,X		; 76 BC
	sbc $7D.b,X		; F5 7D
	asl $B1.b		; 06 B1
	lda $14.b,S		; A3 14
	brk $80.b		; 00 80
	ora ($48.b,X)		; 01 48
	ora ($D0.b,S),Y		; 13 D0
	tsa		; 3B
	clv		; B8
	and ($B0.b,S),Y		; 33 B0
	adc ($70.b)		; 72 70
	sbc $F8.b,S		; E3 F8
	ror A		; 6A
	jsr ($FCEA.w,X)		; FC EA FC
	sed		; F8
	jsr ($7F78.w,X)		; FC 78 7F
	sec		; 38
	jmp $CEB8.w		; 4C B8 CE
	jmp ($67FF.w,X)		; 7C FF 67
	sta [$63.b],Y		; 97 63
	stp		; DB
	plb		; AB
	tad		; 5B
	tda		; 7B
	phd		; 0B
	bcs   8.b		; B0 08
	phb		; 8B
	ora ($09.b,S),Y		; 13 09
	ora ($7C.b,X)		; 01 7C
	cop $49.b		; 02 49
	trb $68.b		; 14 68
	ldy #$4F30.w		; A0 30 4F
	jmp $90FC.w		; 4C FC 90
	lda $7F39.w,Y		; B9 39 7F
	and $7F7F.w,X		; 3D 7F 7F
	sbc $A7B787.l,X		; FF 87 B7 A7
	sta [$80.b],Y		; 97 80
	bra   3.b		; 80 03
	ora $46.b,S		; 03 46
	lsr $B1.b,X		; 56 B1
	clv		; B8
	lda $7DBE.w,Y		; B9 BE 7D
	ror $F060.w,X		; 7E 60 F0
	bvc -40.b		; 50 D8
	eor #$41CC.w		; 49 CC 41
	dec $26.b		; C6 26
	sbc $022705.l		; EF 05 27 02
	asl $043C.w,X		; 1E 3C 04
	rti		; 40

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $5F.b		; 00 5F
	adc $853FC3.l,X		; 7F C3 3F 85
	sbc [$58.b]		; E7 58
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	.db $82, $10, $02		; 82 10 02
	tsb $06.b		; 04 06
	sty $C6.b		; 84 C6
	eor $02013A.l		; 4F 3A 01 02
	lda $3C20.w,Y		; B9 20 3C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	rti		; 40

	bne  24.b		; D0 18
	cpy #$C018.w		; C0 18 C0
	bpl -128.b		; 10 80
	bpl -96.b		; 10 A0
	bmi -96.b		; 30 A0
	bmi -128.b		; 30 80
	bmi   0.b		; 30 00
	bmi -32.b		; 30 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	ldy $50.b,X		; B4 50
	ldy $BC68.w,X		; BC 68 BC
	bvs -76.b		; 70 B4
	sei		; 78
	pea $D438.w		; F4 38 D4
	sec		; 38
	bit $18.b		; 24 18
	bit $5000.w,X		; 3C 00 50
	php		; 08
	pla		; 68
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	php		; 08
	and ($0C.b,S),Y		; 33 0C
	tsa		; 3B
	tsb $5F.b		; 04 5F
	sec		; 38
	adc ($0E.b),Y		; 71 0E
	ror $7A00.w,X		; 7E 00 7A
	tsb $7A.b		; 04 7A
	trb $0008.w		; 1C 08 00
	tsb $0400.w		; 0C 00 04
	brk $38.b		; 00 38
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $1C.b		; 00 1C
	brk $6A.b		; 00 6A
	bpl 106.b		; 10 6A
	bpl  78.b		; 10 4E
	trb $4E.b		; 14 4E
	trb $4C.b		; 14 4C
	bpl  76.b		; 10 4C
	bpl  92.b		; 10 5C
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	bit $3C00.w,X		; 3C 00 3C
	tsb $38.b		; 04 38
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	trb $46.b		; 14 46
	trb $46.b		; 14 46
	bmi 102.b		; 30 66
	bmi 102.b		; 30 66
	bmi 100.b		; 30 64
	bmi 100.b		; 30 64
	jsr $E864.w		; 20 64 E8
	tsb $0038.w		; 0C 38 00
	sec		; 38
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
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
	tsb $03.b		; 04 03
	ora $030C00.l		; 0F 00 0C 03
	clc		; 18
	ora [$37.b]		; 07 37
	clc		; 18
	and [$08.b],Y		; 37 08
	jmp $00F020.l		; 5C 20 F0 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	clc		; 18
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	brk $82.b		; 00 82
	brk $83.b		; 00 83
	brk $86.b		; 00 86
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	bmi -12.b		; 30 F4
	php		; 08
	ldy $78.b,X		; B4 78
	pea $C878.w		; F4 78 C8
	bcs  -8.b		; B0 F8
	bra -56.b		; 80 C8
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $B0.b		; 00 B0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $56.b		; 00 56
	tsb $56.b		; 04 56
	tsb $72.b		; 04 72
	bit $72.b		; 24 72
	bit $74.b		; 24 74
	jsr $2074.w		; 20 74 20
	stz $20.b		; 64 20
	cpx $0408.w		; EC 08 04
	sec		; 38
	tsb $38.b		; 04 38
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	jsr $2018.w		; 20 18 20
	clc		; 18
	jsr $0818.w		; 20 18 08
	bpl  52.b		; 10 34
	bpl  60.b		; 10 3C
	bpl  22.b		; 10 16
	tsb $000E.w		; 0C 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	bpl   0.b		; 10 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	clc		; 18
	and $3D1E.w		; 2D 1E 3D
	asl $67.b		; 06 67
	jsr $0C7E.w		; 20 7E 0C
	ror $7E00.w,X		; 7E 00 7E
	plp		; 28
	jmp ($1820.w)		; 6C 20 18
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	brk $20.b		; 00 20
	clc		; 18
	tsb $0000.w		; 0C 00 00
	brk $28.b		; 00 28
	brk $20.b		; 00 20
	bpl -80.b		; 10 B0
	sty $B0.b		; 84 B0
	sty $08.b		; 84 08
	sty $8C08.w		; 8C 08 8C
	bra -116.b		; 80 8C
	bpl  28.b		; 10 1C
	bvc  24.b		; 50 18
	bvc  24.b		; 50 18
	sei		; 78
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	bra 120.b		; 80 78
	php		; 08
	inx		; E8
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$06.b]		; 07 06
	asl $1809.w		; 0E 09 18
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	cpx #$F008.w		; E0 08 F0
	clc		; 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	rts		; 60

	clc		; 18
	brk $10.b		; 00 10
	jsr $F030.w		; 20 30 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $1E.b		; 00 1E
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
	cpx #$3F27.w		; E0 27 3F
	ldx #$A23E.w		; A2 3E A2
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
	bra -96.b		; 80 A0
	rti		; 40

	bcc  96.b		; 90 60
	pha		; 48
	bcs -56.b		; B0 C8
	bcs -88.b		; B0 A8
	bne  80.b		; D0 50
	cpx #$E070.w		; E0 70 E0
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  24.b		; 10 18
	bra -116.b		; 80 8C
	bra -116.b		; 80 8C
	cli		; 58
	jmp.w [$9C18]		; DC 18 9C
	dey		; 88
	sty $8480.w		; 8C 80 84
	beq  16.b		; F0 10
	cpx #$7800.w		; E0 00 78
	php		; 08
	sei		; 78
	php		; 08
	ldy #$E080.w		; A0 80 E0
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	and $12.b,S		; 23 12
	and ($02.b,S),Y		; 33 02
	and ($00.b,S),Y		; 33 00
	ora ($08.b),Y		; 11 08
	ora $1900.w,Y		; 19 00 19
	ora ($09.b,X)		; 01 09
	tsb $0C.b		; 04 0C
	asl $0C02.w,X		; 1E 02 0C
	brk $1C.b		; 00 1C
	bpl  14.b		; 10 0E
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	ora #$0006.w		; 09 06 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	ora #$122F.w		; 09 2F 12
	eor $0E7D3C.l,X		; 5F 3C 7D 0E
	lsr A		; 4A
	tsb $F6.b		; 04 F6
	bpl -36.b		; 10 DC
	jsr $10B8.w		; 20 B8 10
	asl $00.b		; 06 00
	bpl   0.b		; 10 00
	bit $0E00.w,X		; 3C 00 0E
	brk $04.b		; 00 04
	bmi  16.b		; 30 10
	php		; 08
	jsr $1000.w		; 20 00 10
	rti		; 40

	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $061701.l		; 0F 01 17 06
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	brk $06.b		; 00 06
	php		; 08
	brk $00.b		; 00 00
	iny		; C8
	rti		; 40

	bvs -128.b		; 70 80
	bne -32.b		; D0 E0
	bcs -64.b		; B0 C0
	cpx #$4000.w		; E0 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bmi -128.b		; 30 80
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	and [$96.b],Y		; 37 96
	adc $DD6EDD.l		; 6F DD 6E DD
	ror $56A5.w		; 6E A5 56
	sbc $16.b,X		; F5 16
	and $16.b,X		; 35 16
	tsa		; 3B
	ora $0037.w		; 0D 37 00
	adc $006E00.l		; 6F 00 6E 00
	ror $5600.w		; 6E 00 56
	php		; 08
	asl $08.b,X		; 16 08
	asl $08.b,X		; 16 08
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $BF.b		; 00 BF
	bit $29BA.w		; 2C BA 29
	tsx		; BA
	lda #$A9BA.w		; A9 BA A9
	tsa		; 3B
	rol A		; 2A
	tsa		; 3B
	rol A		; 2A
	and $3928.w,Y		; 39 28 39
	plp		; 28
	bit $2940.w		; 2C 40 29
	mvp $44,$A9		; 44 A9 44
	lda #$2A44.w		; A9 44 2A
	cpy $2A.b		; C4 2A
	cpy $28.b		; C4 28
	dec $28.b		; C6 28
	dec $40.b		; C6 40
	bcs -32.b		; B0 E0
	sei		; 78
	bne -40.b		; D0 D8
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0600.w		; 0C 00 06
	tsb $06.b		; 04 06
	brk $03.b		; 00 03
	ldy #$1020.w		; A0 20 10
	bpl  32.b		; 10 20
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $FE.b		; 00 FE
	cop $03.b		; 02 03
	bmi  22.b		; 30 16
	bmi  14.b		; 30 0E
	rts		; 60

	and $1A61.w		; 2D 61 1A
	cmp $58.b,S		; C3 58
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stx $E8.b		; 86 E8
	sty $101F.w		; 8C 1F 10
	ora $203F00.l		; 0F 00 3F 20
	asl $7C00.w,X		; 1E 00 7C
	rti		; 40

	bit $FC00.w,X		; 3C 00 FC
	sty $70.b		; 84 70
	brk $40.b		; 00 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$1C.b]		; 07 1C
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080B08.l		; 0F 08 0B 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	cpy #$C013.w		; C0 13 C0
	ora ($C0.b),Y		; 11 C0
	ora ($C0.b),Y		; 11 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -31.b		; 10 E1
	ora ($E0.b,X)		; 01 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $82.b		; 00 82
	sta $80.b,S		; 83 80
	sta ($41.b,X)		; 81 41
	cmp ($20.b,X)		; C1 20
	cpx #$7010.w		; E0 10 70
	brk $30.b		; 00 30
	php		; 08
	clc		; 18
	tsb $1C.b		; 04 1C
	jmp ($7F00.w,X)		; 7C 00 7F
	ora ($BE.b,X)		; 01 BE
	bra  95.b		; 80 5F
	rti		; 40

	and $101F20.l		; 2F 20 1F 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	cop $18.b		; 02 18
	ora $110419.l		; 0F 19 04 11
	asl A		; 0A
	and ($18.b,S),Y		; 33 18
	and ($04.b)		; 32 04
	rol $07.b		; 26 07
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	asl $00.b		; 06 00
	ora $101C01.l		; 0F 01 1C 10
	tsb $1800.w		; 0C 00 18
	brk $72.b		; 00 72
	tsb $5E.b		; 04 5E
	bmi  93.b		; 30 5D
	rol $385F.w,X		; 3E 5F 38
	tda		; 7B
	cop $3F.b		; 02 3F
	clc		; 18
	and $3F06.w,Y		; 39 06 3F
	clc		; 18
	php		; 08
	brk $30.b		; 00 30
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $02.b		; 00 02
	tsb $18.b		; 04 18
	brk $06.b		; 00 06
	brk $18.b		; 00 18
	brk $3D.b		; 00 3D
	ora $17.b		; 05 17
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	trb $0B03.w		; 1C 03 0B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $08.b		; 02 08
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	brk $B0.b		; 00 B0
	cpy #$30D8.w		; C0 D8 30
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	cpy #$3000.w		; C0 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	adc ($3A.b,X)		; 61 3A
	adc $1C.b,S		; 63 1C
	dec $70.b		; C6 70
	dec $28.b		; C6 28
	sty $98F0.w		; 8C F0 98
	rti		; 40

	clc		; 18
	ldy #$3F30.w		; A0 30 3F
	and ($1C.b,X)		; 21 1C
	brk $78.b		; 00 78
	rti		; 40

	bit $F004.w,X		; 3C 04 F0
	bra  96.b		; 80 60
	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $40.b		; 00 40
	rep #$00		; C2 00
	cmp $00.b,S		; C3 00
	cmp $22.b,S		; C3 22
	adc $22.b,S		; 63 22
	adc $00.b,S		; 63 00
	adc ($10.b,X)		; 61 10
	and ($00.b),Y		; 31 00
	and ($3C.b),Y		; 31 3C
	brk $7E.b		; 00 7E
	.db $42, $7E		; 42 7E
	.db $42, $1C		; 42 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $000E.w		; 20 0E 00
	asl $0010.w,X		; 1E 10 00
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
	brk $01.b		; 00 01
	ora ($3E.b,X)		; 01 3E
	adc $3C.b,S		; 63 3C
	adc $28.b,S		; 63 28
	.db $62, $24, $E6		; 62 24 E6
	rti		; 40

	dec $20.b		; C6 20
	sty $B8.b		; 84 B8
	sty $0C70.w		; 8C 70 0C
	trb $1E00.w		; 1C 00 1E
	cop $1C.b		; 02 1C
	brk $58.b		; 00 58
	rti		; 40

	bit $F804.w,X		; 3C 04 F8
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	php		; 08
	ror $E7.b		; 66 E7
	eor ($C1.b,X)		; 41 C1
	jmp $5EC0.w		; 4C C0 5E
	cpy #$C05E.w		; C0 5E C0
	lsr $7FC0.w,X		; 5E C0 7F
	cmp ($7E.b,X)		; C1 7E
	cmp ($19.b,X)		; C1 19
	ora ($3E.b,X)		; 01 3E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	ora ($10.b,X)		; 01 10
	beq  16.b		; F0 10
	beq -120.b		; F0 88
	sed		; F8
	dey		; 88
	sed		; F8
	brk $D8.b		; 00 D8
	tsb $8C.b		; 04 8C
	brk $8C.b		; 00 8C
	cop $86.b		; 02 86
	lda $A0AFA0.l		; AF A0 AF A0
	and [$30.b],Y		; 37 30
	ora [$10.b],Y		; 17 10
	sta $000388.l		; 8F 88 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
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
	and ($02.b,S),Y		; 33 02
	and $1E3D10.l		; 2F 10 3D 1E
	ply		; 7A
	tsb $9E.b		; 04 9E
	bpl  -4.b		; 10 FC
	php		; 08
	sei		; 78
	rts		; 60

	cpx #$0200.w		; E0 00 02
	tsb $0010.w		; 0C 10 00
	asl $0400.w,X		; 1E 00 04
	brk $10.b		; 00 10
	rts		; 60

	php		; 08
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	dey		; 88
	rti		; 40

	cpy $CC08.w		; CC 08 CC
	brk $44.b		; 00 44
	jsr $0064.w		; 20 64 00
	ror $04.b		; 66 04
	rol $11.b		; 26 11
	and ($70.b)		; 32 70
	brk $38.b		; 00 38
	php		; 08
	bvs  64.b		; 70 40
	sec		; 38
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bit $18.b		; 24 18
	brk $0C.b		; 00 0C
	brk $3D.b		; 00 3D
	cop $3D.b		; 02 3D
	asl $2E5D.w,X		; 1E 5D 2E
	rtl		; 6B

	tsb $46.b		; 04 46
	brk $76.b		; 00 76
	bit $6E.b		; 24 6E
	bpl -36.b		; 10 DC
	pha		; 48
	cop $00.b		; 02 00
	asl $2E00.w,X		; 1E 00 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	pha		; 48
	jsr $0472.w		; 20 72 04
	lsr $5D30.w,X		; 5E 30 5D
	rol $385F.w,X		; 3E 5F 38
	tda		; 7B
	cop $3F.b		; 02 3F
	clc		; 18
	and $3F06.w,Y		; 39 06 3F
	clc		; 18
	php		; 08
	brk $30.b		; 00 30
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $02.b		; 00 02
	tsb $18.b		; 04 18
	brk $06.b		; 00 06
	brk $18.b		; 00 18
	brk $48.b		; 00 48
	cpy $EE68.w		; CC 68 EE
	pha		; 48
	dec $8604.w		; CE 04 86
	tsb $86.b		; 04 86
	rti		; 40

	rep #$40		; C2 40
	rep #$00		; C2 00
	cmp $30.b,S		; C3 30
	brk $14.b		; 00 14
	tsb $34.b		; 04 34
	tsb $78.b		; 04 78
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	.db $42, $04		; 42 04
	stx $44.b		; 86 44
	dec $00.b		; C6 00
.ACCU 16
	rep #$20		; C2 20
	.db $62, $20, $63		; 62 20 63
	cop $63.b		; 02 63
	ora ($33.b)		; 12 33
	brk $31.b		; 00 31
	sei		; 78
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	rti		; 40

	trb $1E00.w		; 1C 00 1E
	cop $3C.b		; 02 3C
	jsr $000C.w		; 20 0C 00
	asl $0010.w,X		; 1E 10 00
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	cpx #$C020.w		; E0 20 C0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	php		; 08
	tsb $0400.w		; 0C 00 04
	bra -124.b		; 80 84
	brk $86.b		; 00 86
	mvp $00,$C6		; 44 C6 00
.ACCU 16
	rep #$20		; C2 20
	adc $12.b,S		; 63 12
	adc ($F0.b,S),Y		; 73 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	sty $38.b		; 84 38
	brk $7C.b		; 00 7C
	rti		; 40

	asl $2C02.w,X		; 1E 02 2C
	jsr $331E.w		; 20 1E 33
	php		; 08
	and $18.b,S		; 23 18
	jsl $10661C.l		; 22 1C 66 10
	ror $30.b		; 66 30
	stz $2C.b		; 64 2C
	pla		; 68
	ldy $0C60.w		; AC 60 0C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $38.b		; 00 38
	jsr $243C.w		; 20 3C 24
	clc		; 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $F6.b		; 00 F6
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
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $0C03.w		; 0C 03 0C
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	rts		; 60

	php		; 08
	bne  24.b		; D0 18
	cpy #$E018.w		; C0 18 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$8040.w		; C0 40 80
	brk $7C.b		; 00 7C
	cmp ($3C.b,X)		; C1 3C
	sta ($3E.b,X)		; 81 3E
	sta $3E.b,S		; 83 3E
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	.db $82, $38, $82		; 82 38 82
	bit $3E86.w,X		; 3C 86 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	cop $7C.b		; 02 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	brk $F5.b		; 00 F5
	ora ($27.b,S),Y		; 13 27
	ora $4E.b,S		; 03 4E
	eor [$9D.b]		; 47 9D
	asl $BF.b		; 06 BF
	dey		; 88
	phy		; 5A
	ldy $70AC.w		; AC AC 70
	pea $0B78.w		; F4 78 0B
	xce		; FB
	tas		; 1B
	tsa		; 3B
	and [$77.b],Y		; 37 77
	ror $E6.b		; 66 E6
	cli		; 58
	cld		; D8
	and $73AD.w		; 2D AD 73
	adc ($7B.b,S),Y		; 73 7B
	tda		; 7B
	ror $84.b		; 66 84
	nop		; EA
	tsb $10DC.w		; 0C DC 10
	stz $0A04.w		; 9C 04 0A
	bit $1814.w		; 2C 14 18
	pha		; 48
	bvs -16.b		; 70 F0
	bra -104.b		; 80 98
	stz $9E90.w,X		; 9E 90 9E
	jsr $603C.w		; 20 3C 60
	jmp ($FED0.w,X)		; 7C D0 FE
	cpx #$80FC.w		; E0 FC 80
	sed		; F8
	brk $F0.b		; 00 F0
	cmp $864B07.l,X		; DF 07 4B 86
	adc $3177E2.l		; 6F E2 77 31
	and ($11.b,S),Y		; 33 11
	ora ($00.b,S),Y		; 13 00
	plp		; 28
	clc		; 18
	and ($12.b,S),Y		; 33 12
	and [$E7.b]		; 27 E7
	rol $F6.b,X		; 36 F6
	ora ($F2.b)		; 12 F2
	ora #$0D79.w		; 09 79 0D
	and $1C0C.w,X		; 3D 0C 1C
	ora [$3F.b]		; 07 3F
	tsb $E03F.w		; 0C 3F E0
	bmi -15.b		; 30 F1
	ldx $A4EE.w,Y		; BE EE A4
	cpy #$CC04.w		; C0 04 CC
	php		; 08
	dey		; 88
	brk $D4.b		; 00 D4
	cld		; D8
	nop		; EA
	bit $3000.w		; 2C 00 30
	bra -65.b		; 80 BF
	bcc -66.b		; 90 BE
	sec		; 38
	bit $3C30.w,X		; 3C 30 3C
	bvs 120.b		; 70 78
	jsr $10FC.w		; 20 FC 10
	inc $4020.w,X		; FE 20 40
	bvc  96.b		; 50 60
	jsr ($B678.w,X)		; FC 78 B6
	bit $CB.b		; 24 CB
	asl $54.b,X		; 16 54
	tya		; 98
	inc $84.b		; E6 84
	sbc ($80.b,S),Y		; F3 80
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	brk $7C.b		; 00 7C
	pha		; 48
	ror $3F20.w,X		; 7E 20 3F
	ldy #$D8BC.w		; A0 BC D8
	dec $8F8C.w,X		; DE 8C 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	clc		; 18
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0C.b)		; 12 0C
	tsb $0507.w		; 0C 07 05
	ora ($04.b,X)		; 01 04
	tsb $05.b		; 04 05
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F00.w,X		; 1E 00 0F
	cop $07.b		; 02 07
	ora $07.b,S		; 03 07
	cop $06.b		; 02 06
	ora ($06.b,X)		; 01 06
	ora [$03.b]		; 07 03
	tsb $1A04.w		; 0C 04 1A
	tsb $20E4.w		; 0C E4 20
	eor ($C1.b,X)		; 41 C1
	cmp $00BFC0.l		; CF C0 BF 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	brk $1E.b		; 00 1E
	clc		; 18
	jsr ($FF3E.w,X)		; FC 3E FF
	bmi -16.b		; 30 F0
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	cpy #$6000.w		; C0 00 60
	bpl   0.b		; 10 00
	ldy #$68C0.w		; A0 C0 68
	bvs -19.b		; 70 ED
	php		; 08
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	bpl  29.b		; 10 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	clc		; 18
	php		; 08
	bpl   8.b		; 10 08
	sty $0C.b,X		; 94 0C
	cmp [$09.b],Y		; D7 09
	lda $5F6B.w,X		; BD 6B 5F
	tsa		; 3B
	bit $14.b,X		; 34 14
	and ($10.b,S),Y		; 33 10
	ora [$1F.b]		; 07 1F
	ora [$1F.b]		; 07 1F
	ora $9F.b,S		; 03 9F
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	phd		; 0B
	and $BF3C0C.l,X		; 3F 0C 3C BF
	adc $DF2FF6.l,X		; 7F F6 2F DF
	jsr $106F.w		; 20 6F 10
	adc $003F0F.l,X		; 7F 0F 3F 00
	stp		; DB
	and $35FE.w,X		; 3D FE 35
	adc $2F2F7F.l,X		; 7F 7F 2F 2F
	jsr $9020.w		; 20 20 90
	bcc -113.b		; 90 8F
	sta $3DC0C0.l		; 8F C0 C0 3D
	and $3535.w,X		; 3D 35 35
	phx		; DA
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	eor ($B3.b,X)		; 41 B3
	rti		; 40

	adc $86.b		; 65 86
	cpx #$00.b		; E0 00
	inc $B700.w,X		; FE 00 B7
	sei		; 78
	sbc $E55A.w,X		; FD 5A E5
	sbc [$44.b]		; E7 44
	eor [$4C.b]		; 47 4C
	eor $1F9F98.l		; 4F 98 9F 1F
	ora $780101.l,X		; 1F 01 01 78
	sei		; 78
	phy		; 5A
	phy		; 5A
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	bra -28.b		; 80 E4
	rti		; 40

	cpy #$E4.b		; C0 E4
	ror $64.b,X		; 76 64
	asl $8614.w,X		; 1E 14 86
	ora $00.b		; 05 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	cpx $00.b		; E4 00
	cpx $80.b		; E4 80
	inc $E0.b,X		; F6 E0
	inc $7F78.w,X		; FE 78 7F
	eor $8ADD9A.l		; 4F 9A DD 8A
	ror $C1.b,X		; 76 C1
	cmp $43.b		; C5 43
	ror $13.b,X		; 76 13
	and [$10.b],Y		; 37 10
	tas		; 1B
	php		; 08
	lda ($50.b),Y		; B1 50
	ora $DB.b,S		; 03 DB
	cop $DA.b		; 02 DA
	phd		; 0B
	xce		; FB
	tsa		; 3B
	xce		; FB
	phd		; 0B
	tda		; 7B
	php		; 08
	sec		; 38
	tsb $1C.b		; 04 1C
	asl $58FE.w		; 0E FE 58
	sbc $FFC7BF.l		; EF BF C7 FF
	sta $7D.b		; 85 7D
	tsx		; BA
	sbc $FF03.w,X		; FD 03 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($EF.b,X)		; 01 EF
	sbc $85C7C7.l		; EF C7 C7 85
	sta $BA.b		; 85 BA
	tsx		; BA
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $F8F1.w,X		; FD F1 F8
	adc ($FB.b),Y		; 71 FB
	eor ($F2.b,S),Y		; 53 F2
	lda $F9.b,S		; A3 F9
	lsr $1AF7.w		; 4E F7 1A
	dex		; CA
	ora ($94.b)		; 12 94
	.db $82, $F2, $F3		; 82 F2 F3
	ror $77.b,X		; 76 77
	mvn $AC,$57		; 54 57 AC
	lda $004F40.l		; AF 40 4F 00
	ora $603A20.l,X		; 1F 20 3A 60
	inc $40.b,X		; F6 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6E.b		; 00 6E
	plp		; 28
	lsr $2C.b		; 46 2C
	bmi  15.b		; 30 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl 126.b		; 10 7E
	bpl 126.b		; 10 7E
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $0000.w,X		; 3C 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $0000.w,X		; 3C 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phx		; DA
	and $FC.b,S		; 23 FC
	rts		; 60

	jsr ($E600.w,X)		; FC 00 E6
	clc		; 18
	tad		; 5B
	bit $1E6D.w,X		; 3C 6D 1E
	lda $4FD68E.l,X		; BF 8E D6 4F
	bit $27.b		; 24 27
	sbc $E3.b,S		; E3 E3
	eor $43.b,S		; 43 43
	ora $BC19.w,Y		; 19 19 BC
	ldy $9E9E.w,X		; BC 9E 9E
	lsr $2FCE.w		; 4E CE 2F
	sbc $1A3884.l		; EF 84 38 1A
	sty $8CFA.w		; 8C FA 8C
	stz $78.b,X		; 74 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	tay		; A8
	bmi -96.b		; 30 A0
	bmi   0.b		; 30 00
	ldy $9E00.w,X		; BC 00 9E
	brk $FE.b		; 00 FE
	bra  -4.b		; 80 FC
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	rti		; 40

	sei		; 78
	rti		; 40

	bvs  13.b		; 70 0D
	tsb $11.b		; 04 11
	tsb $1437.w		; 0C 37 14
	adc $20.b,S		; 63 20
	pld		; 2B
	clc		; 18
	ora [$1C.b]		; 07 1C
	ora $1104.w,X		; 1D 04 11
	brk $02.b		; 00 02
	asl $1E02.w		; 0E 02 1E
	php		; 08
	bit $7C1C.w,X		; 3C 1C 7C
	tsb $3C.b		; 04 3C
	brk $1C.b		; 00 1C
	cop $1E.b		; 02 1E
	asl $FF1E.w		; 0E 1E FF
	brk $F6.b		; 00 F6
	ora $FF3FDF.l		; 0F DF 3F FF
	and $FF7FBF.l,X		; 3F BF 7F FF
	lsr $FF.b		; 46 FF
	eor $0046FF.l		; 4F FF 46 00
	brk $0F.b		; 00 0F
	ora $3F3F3F.l		; 0F 3F 3F 3F
	and $467F7F.l,X		; 3F 7F 7F 46
	lsr $5F.b		; 46 5F
	eor $F64646.l,X		; 5F 46 46 F6
	ora $F1.b		; 05 F1
	ora $BA.b,S		; 03 BA
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	cpy #$E2DB.w		; C0 DB E2
	sbc $26FD26.l,X		; FF 26 FD 26
	xce		; FB
	jsl $0C0F08.l		; 22 08 0F 0C
	ora $C6C7C5.l		; 0F C5 C7 C6
	cmp [$E4.b]		; C7 E4
	sbc [$20.b]		; E7 20
	and [$A0.b]		; 27 A0
	lda [$24.b]		; A7 24
	and [$C0.b]		; 27 C0
	bra  96.b		; 80 60
	rti		; 40

	bra  32.b		; 80 20
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	cpx #$3020.w		; E0 20 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$00.b]		; 27 00
	adc $636D20.l		; 6F 20 6D 63
	wai		; CB
	eor [$CB.b]		; 47 CB
	eor [$6F.b]		; 47 6F
	sbc $6E.b,S		; E3 6E
	cmp $C6.b,S		; C3 C6
	sta ($18.b,S),Y		; 93 18
	sec		; 38
	bpl 112.b		; 10 70
	ora ($73.b,S),Y		; 13 73
	and [$F7.b],Y		; 37 F7
	and [$F7.b],Y		; 37 F7
	ora ($F3.b,S),Y		; 13 F3
	ora ($F3.b,S),Y		; 13 F3
	phd		; 0B
	stp		; DB
	cmp $59A730.l,X		; DF 30 A7 59
	sbc $5BEF43.l,X		; FF 43 EF 5B
	lda [$5B.b],Y		; B7 5B
	cmp $37E833.l,X		; DF 33 E8 37
	lda $303067.l,X		; BF 67 30 30
	eor $4359.w,Y		; 59 59 43
	eor $5B.b,S		; 43 5B
	tad		; 5B
	tad		; 5B
	tad		; 5B
	and ($33.b,S),Y		; 33 33
	and [$37.b],Y		; 37 37
	adc [$67.b]		; 67 67
	inc $1B.b,X		; F6 1B
	cmp $43FF33.l		; CF 33 FF 43
	sta $DB.b,X		; 95 DB
	sta $6DDB59.l		; 8F 59 DB 6D
	plx		; FA
	sta $0CF7.w		; 8D F7 0C
	tas		; 1B
	tas		; 1B
	and ($33.b,S),Y		; 33 33
	eor $43.b,S		; 43 43
	tyx		; BB
	txy		; 9B
	tsa		; 3B
	tas		; 1B
	eor $8D8D4F.l		; 4F 4F 8D 8D
	ora $950D.w		; 0D 0D 95
	asl $9A.b,X		; 16 9A
	plp		; 28
	inc $D424.w,X		; FE 24 D4
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $98.b		; 00 98
	bpl 104.b		; 10 68
	adc $007E44.l,X		; 7F 44 7E 00
	rol $3420.w,X		; 3E 20 34
	jsr $2030.w		; 20 30 20
	bmi  32.b		; 30 20
	bmi  96.b		; 30 60
	sei		; 78
	adc $3338.w,Y		; 79 38 33
	brk $37.b		; 00 37
	bpl  71.b		; 10 47
	jsr $602F.w		; 20 2F 60
	cmp $A0BF40.l		; CF 40 BF A0
	and $7E0620.l,X		; 3F 20 06 7E
	tsb $083C.w		; 0C 3C 08
	sec		; 38
	clc		; 18
	sei		; 78
	bpl 112.b		; 10 70
	bmi -16.b		; 30 F0
	rti		; 40

	cpx #$E0C0.w		; E0 C0 E0
	sbc $01FE00.l,X		; FF 00 FE 01
	inc $DB01.w,X		; FE 01 DB
	bit $7FBF.w,X		; 3C BF 7F
	adc $C7FFE7.l,X		; 7F E7 FF C7
	sbc $0000C7.l,X		; FF C7 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	bit $7F3C.w,X		; 3C 3C 7F
	adc $C7E7E7.l,X		; 7F E7 E7 C7
	cmp [$C7.b]		; C7 C7
	cmp [$F5.b]		; C7 F5
	inc $06FD.w		; EE FD 06
	xba		; EB
	stx $79.b,Y		; 96 79
	inc $FF.b		; E6 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	bra 126.b		; 80 7E
	bra -17.b		; 80 EF
	sbc $960606.l		; EF 06 06 96
	stx $E6.b,Y		; 96 E6
	inc $06.b		; E6 06
	asl $01.b		; 06 01
	ora ($81.b,X)		; 01 81
	sta ($81.b,X)		; 81 81
	sta ($80.b,X)		; 81 80
	php		; 08
	sty $18.b,X		; 94 18
	stz $3808.w		; 9C 08 38
	bit $64.b		; 24 64
	rti		; 40

	rti		; 40

	brk $D0.b		; 00 D0
	bra -16.b		; 80 F0
	bcc 112.b		; 90 70
	sei		; 78
	rts		; 60

	jmp ($7C60.w,X)		; 7C 60 7C
	cpy #$80FC.w		; C0 FC 80
	cpx $80.b		; E4 80
	cpy #$D000.w		; C0 00 D0
	brk $F0.b		; 00 F0
	xce		; FB
	trb $F0EF.w		; 1C EF F0
	adc $00FE80.l,X		; 7F 80 FE 00
	lda $EE71.w		; AD 71 EE
	adc ($7E.b,S),Y		; 73 7E
	sbc $DB.b,S		; E3 DB
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	bit $F8F8.w,X		; 3C F8 F8
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	adc ($73.b)		; 72 73
	bvs 115.b		; 70 73
	beq -13.b		; F0 F3
	cpx $E7.b		; E4 E7
	cpy $8608.w		; CC 08 86
	tsb $24.b		; 04 24
	bmi  -4.b		; 30 FC
	cld		; D8
	adc ($9C.b)		; 72 9C
	dec A		; 3A
	ldy $B2.b		; A4 B2
	bit $26.b		; 24 26
	brk $30.b		; 00 30
	bit $7E78.w,X		; 3C 78 7E
	iny		; C8
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $BE.b		; 00 BE
	brk $B6.b		; 00 B6
	brk $26.b		; 00 26
	adc $208FA0.l,X		; 7F A0 8F 20
	and $103700.l		; 2F 00 37 10
	sta [$90.b]		; 87 90
	sta $081F08.l,X		; 9F 08 1F 08
	ora $E00008.l,X		; 1F 08 00 E0
	bpl -80.b		; 10 B0
	bpl  48.b		; 10 30
	php		; 08
	sec		; 38
	php		; 08
	tya		; 98
	brk $98.b		; 00 98
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	adc $7FBFC7.l,X		; 7F C7 BF 7F
	sbc $33EE07.l,X		; FF 07 EE 33
	lda $70EF70.l,X		; BF 70 EF 70
	sbc $E07F60.l,X		; FF 60 7F E0
	sbc [$E7.b]		; E7 E7
	adc $07077F.l,X		; 7F 7F 07 07
	adc ($73.b,S),Y		; 73 73
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cmp $A02F43.l		; CF 43 2F A0
	cmp $6BE2.w		; CD E2 6B
	lda [$BB.b]		; A7 BB
	adc [$DF.b]		; 67 DF
	rti		; 40

	lda $8E.b,X		; B5 8E
	adc [$0C.b],Y		; 77 0C
	and ($F3.b,S),Y		; 33 F3
	bvc -16.b		; 50 F0
	asl $F6.b,X		; 16 F6
	ora [$F7.b],Y		; 17 F7
	ora [$E7.b]		; 07 E7
	jsr $4EE0.w		; 20 E0 4E
	dec $8E8E.w		; CE 8E 8E
	sty $1C.b,X		; 94 1C
	sec		; 38
	jsr $0838.w		; 20 38 08
	bvs  84.b		; 70 54
	jmp ($0848.w)		; 6C 48 08
	brk $98.b		; 00 98
	bpl -34.b		; 10 DE
	clc		; 18
	rts		; 60

	jmp ($FCC4.w,X)		; 7C C4 FC
	cpy $FC.b		; C4 FC
	dey		; 88
	jsr ($FC90.w,X)		; FC 90 FC
	beq  -8.b		; F0 F8
	rts		; 60

	sei		; 78
	jsr $003E.w		; 20 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	phy		; 5A
	cpy $52.b		; C4 52
	trb $041C.w		; 1C 1C 04
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $20FE.w		; 20 FE 20
	ror $1C00.w,X		; 7E 00 1C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	ora #$03.b		; 09 03
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	sbc $0CFF0C.l,X		; FF 0C FF 0C
	xba		; EB
	trb $18EF.w		; 1C EF 18
	sbc $18FE00.l,X		; FF 00 FE 18
	stp		; DB
	bit $18EF.w,X		; 3C EF 18
	asl $0C0E.w		; 0E 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	and $3C3D.w,X		; 3D 3D 3C
	bit $1818.w,X		; 3C 18 18
	adc $7602.w,X		; 7D 02 76
	ora $DD073B.l		; 0F 3B 07 DD
	cmp $AE.b,S		; C3 AE
	adc ($E7.b,X)		; 61 E7
	brk $33.b		; 00 33
	bne -47.b		; D0 D1
	bmi -126.b		; 30 82
	.db $82, $8F, $8F		; 82 8F 8F
	cmp [$C7.b]		; C7 C7
	and $E3.b,S		; 23 E3
	ora ($F1.b),Y		; 11 F1
	clc		; 18
	sed		; F8
	tsb $0EFC.w		; 0C FC 0E
	inc $00FE.w,X		; FE FE 00
	sbc $807F80.l,X		; FF 80 7F 80
	lda $F8FF70.l,X		; BF 70 FF F8
	xce		; FB
	bit $1CFF.w,X		; 3C FF 1C
	sbc $01011C.l,X		; FF 1C 01 01
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bvs 112.b		; 70 70
	sed		; F8
	sed		; F8
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	bne -80.b		; D0 B0
	rts		; 60

	bmi  48.b		; 30 30
	jsr $20B0.w		; 20 B0 20
	ldy #$30.b		; A0 30
	cld		; D8
	bpl -48.b		; 10 D0
	clc		; 18
	cpx #$08.b		; E0 08
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	cpy #$F0.b		; C0 F0
	rti		; 40

	bvs  64.b		; 70 40
	bvs  32.b		; 70 20
	sec		; 38
	jsr $1038.w		; 20 38 10
	clc		; 18
	xce		; FB
.ACCU 16
.INDEX 16
	rep #$B2		; C2 B2
	cmp ($F6.b,X)		; C1 F6
	stx $61.b		; 86 61
	sta ($E7.b,X)		; 81 E7
	ora #$09CD.w		; 09 CD 09
	cpy $01.b		; C4 01
	cmp $E41C.w,Y		; D9 1C E4
	sbc [$CC.b]		; E7 CC
	cmp $9E8F89.l		; CF 89 8F 9E
	sta $301F10.l,X		; 9F 10 1F 30
	and $3D38.w,X		; 3D 38 3D
	jsr $823D.w		; 20 3D 82
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $00, $C0		; 82 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b],Y		; 17 00
	lda [$10.b]		; A7 10
	eor [$B0.b],Y		; 57 B0
	inc $E1.b		; E6 E1
	ora [$81.b]		; 07 81
	adc [$E1.b]		; 67 E1
	lda $335D71.l,X		; BF 71 5D 33
	php		; 08
	clc		; 18
	php		; 08
	clv		; B8
	php		; 08
	sed		; F8
	ora $79F9.w,Y		; 19 F9 79
	sbc $F919.w,Y		; F9 19 F9
	ora ($F1.b,X)		; 01 F1
	ora $73.b,S		; 03 73
	cmp $C1FEE0.l,X		; DF E0 FE C1
	sbc $C3BDC1.l,X		; FF C1 BD C3
	sbc $87FA83.l,X		; FF 83 FA 87
	adc $0EF586.l,X		; 7F 86 F5 0E
	sbc ($E1.b,X)		; E1 E1
	sbc ($E1.b,X)		; E1 E1
	cmp ($C1.b,X)		; C1 C1
	cmp $C3.b,S		; C3 C3
	cmp $C3.b,S		; C3 C3
	sta [$87.b]		; 87 87
	stx $86.b		; 86 86
	stx $118E.w		; 8E 8E 11
	ora ($02.b,X)		; 01 02
	bpl  24.b		; 10 18
	ora ($3F.b)		; 12 3F
	ora ($25.b)		; 12 25
	tsb $E1.b		; 04 E1
	jsr $989B.w		; 20 9B 98
	tax		; AA
	cmp $1100.w,Y		; D9 00 11
	ora ($13.b,X)		; 01 13
	ora ($1B.b,X)		; 01 1B
	brk $3E.b		; 00 3E
	inc A		; 1A
	rol $FE1E.w,X		; 3E 1E FE
	stz $FC.b		; 64 FC
	ora $FD.b		; 05 FD
	rtl		; 6B

	trb $18FF.w		; 1C FF 18
	dec $38.b,X		; D6 38
	inc $AD30.w,X		; FE 30 AD
	adc ($FD.b),Y		; 71 FD
	adc ($DA.b,X)		; 61 DA
	sbc $B7.b,S		; E3 B7
	cpy $9C.b		; C4 9C
	stz $1C1C.w		; 9C 1C 1C
	and $7939.w,Y		; 39 39 79
	adc $7372.w,Y		; 79 72 73
	sbc ($F3.b)		; F2 F3
	cpx $E7.b		; E4 E7
	iny		; C8
	cmp $F00EED.l		; CF ED 0E F0
	brk $79.b		; 00 79
	bra -67.b		; 80 BD
	cmp ($DC.b,X)		; C1 DC
	cpx #$F06E.w		; E0 6E F0
	ldx $D670.w,Y		; BE 70 D6
	sec		; 38
	bpl  31.b		; 10 1F
	ora $87860F.l		; 0F 0F 86 87
	rep #$C3		; C2 C3
	sbc $E3.b,S		; E3 E3
	sbc ($F1.b),Y		; F1 F1
	adc $3979.w,Y		; 79 79 39
	and $20B0.w,Y		; 39 B0 20
	beq -96.b		; F0 A0
	clc		; 18
	bpl -24.b		; 10 E8
	bmi -80.b		; 30 B0
	rti		; 40

	rts		; 60

	rti		; 40

	rti		; 40

	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	bcs   0.b		; B0 00
	beq -32.b		; F0 E0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bmi  16.b		; 30 10
	tsa		; 3B
	tda		; 7B
	rtl		; 6B

	.db $82, $85, $00		; 82 85 00
	asl $02.b		; 06 02
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F043F.l		; 0F 3F 04 7F
	tsb $EF.b		; 04 EF
	cop $87.b		; 02 87
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	trb $0C7F.w		; 1C 7F 0C
	lda $47DA86.l,X		; BF 86 DA 47
	cmp $D14743.l		; CF 43 47 D1
	dex		; CA
	eor $04DF.w,Y		; 59 DF 04
	trb $9E1C.w		; 1C 1C 9E
	stz $CE4E.w,X		; 9E 4E CE
	and [$E7.b]		; 27 E7
	and ($F3.b,S),Y		; 33 F3
	pld		; 2B
	xce		; FB
	and $FD.b		; 25 FD
	jsr $75FC.w		; 20 FC 75
	bit $35.b		; 24 35
	jsr $1236.w		; 20 36 12
	ora ($00.b)		; 12 00
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	cop $76.b		; 02 76
	cop $36.b		; 02 36
	ora ($37.b,X)		; 01 37
	ora ($13.b,X)		; 01 13
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($07.b,X)		; 01 07
	phd		; 0B
	asl $0E.b		; 06 0E
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	tsb $0814.w		; 0C 14 08
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	sta $5364.w,X		; 9D 64 53
	and ($2A.b),Y		; 31 2A
	ora $1C00.w,Y		; 19 00 1C
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $FE.b		; 02 FE
	ora $057D.w		; 0D 7D 05
	and $1003.w,X		; 3D 03 10
	ora ($10.b,S),Y		; 13 10
	trb $04.b		; 14 04
	asl $06.b,X		; 16 06
	asl $0509.w,X		; 1E 09 05
	clc		; 18
	php		; 08
	bpl  16.b		; 10 10
	brk $0C.b		; 00 0C
	trb $1C0C.w		; 1C 0C 1C
	phd		; 0B
	ora $001F09.l,X		; 1F 09 1F 00
	ora $001D00.l,X		; 1F 00 1D 00
	clc		; 18
	brk $10.b		; 00 10
	ora [$30.b]		; 07 30
	ora $180318.l		; 0F 18 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora $000710.l,X		; 1F 10 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	bra 120.b		; 80 78
	cpy #$8078.w		; C0 78 80
	sec		; 38
	cpy #$E038.w		; C0 38 E0
	sec		; 38
	cpy #$E018.w		; C0 18 E0
	clc		; 18
	beq  24.b		; F0 18
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$F000.w		; E0 00 F0
	bpl -32.b		; 10 E0
	brk $04.b		; 00 04
	cop $0F.b		; 02 0F
	ora ($0F.b,X)		; 01 0F
	asl $07.b		; 06 07
	ora #$1C07.w		; 09 07 1C
	asl $0418.w		; 0E 18 04
	ora ($0C.b),Y		; 11 0C
	ora ($00.b),Y		; 11 00
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	asl $01.b		; 06 01
	ora ($0A.b,X)		; 01 0A
	php		; 08
	ora [$00.b]		; 07 00
	asl $1E00.w		; 0E 00 1E
	bpl  -2.b		; 10 FE
	ora ($7F.b,X)		; 01 7F
	brk $BF.b		; 00 BF
	bra -65.b		; 80 BF
	rti		; 40

	sbc $40BF80.l,X		; FF 80 BF 40
	sbc $077F03.l,X		; FF 03 7F 07
	ora ($01.b,X)		; 01 01
	sec		; 38
	clv		; B8
	rol $1CFF.w,X		; 3E FF 1C
	eor $9C1C.w,X		; 5D 1C 9C
	brk $40.b		; 00 40
	tas		; 1B
	tas		; 1B
	asl $37.b,X		; 16 37
	sei		; 78
	bra  -4.b		; 80 FC
	brk $7C.b		; 00 7C
	.db $82, $FE, $01		; 82 FE 01
	sbc $06FB04.l,X		; FF 04 FB 06
	sbc $7887.w,Y		; F9 87 78
	cmp $80.b,S		; C3 80
	bra  48.b		; 80 30
	bmi  48.b		; 30 30
	bcs  50.b		; B0 32
	bcs  51.b		; B0 33
	bmi   5.b		; 30 05
	tsb $B2.b		; 04 B2
	lda ($51.b)		; B2 51
	cmp ($34.b),Y		; D1 34
	php		; 08
	jmp ($5C18.w)		; 6C 18 5C
	sec		; 38
	jmp.w [$FC38]		; DC 38 FC
	clc		; 18
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	bra   0.b		; 80 00
	clc		; 18
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	dey		; 88
	clv		; B8
	dey		; 88
	tya		; 98
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	bpl  16.b		; 10 10
	sbc $00D707.l,X		; FF 07 D7 00
	eor $00.b,X		; 55 00
	eor $00.b,X		; 55 00
	cmp $00.b,X		; D5 00
	lda $00.b,X		; B5 00
	ldx $00.b,Y		; B6 00
	ldx $0100.w		; AE 00 01
	ora [$00.b]		; 07 00
	plp		; 28
	ora ($AB.b,X)		; 01 AB
	ora ($AB.b,X)		; 01 AB
	sta ($AB.b,X)		; 81 AB
	and ($6B.b,X)		; 21 6B
	bit $6D.b		; 24 6D
	tsb $EC5D.w		; 0C 5D EC
	bcs -34.b		; B0 DE
	cpx #$00F7.w		; E0 F7 00
	lda #$AE00.w		; A9 00 AE
	brk $B7.b		; 00 B7
	brk $B7.b		; 00 B7
	brk $DB.b		; 00 DB
	brk $80.b		; 00 80
	beq   0.b		; F0 00
	cpx #$0E06.w		; E0 06 0E
	ora ($57.b,X)		; 01 57
	php		; 08
	eor $6E26.w,Y		; 59 26 6E
	and [$6F.b]		; 27 6F
	sta ($B6.b)		; 92 B6
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
	bvs   9.b		; 70 09
	rol $1F00.w,X		; 3E 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora #$0003.w		; 09 03 00
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
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $173F.w,X		; FE 3F 17
	adc $12170F.l		; 6F 0F 17 12
	and $2B1F2A.l		; 2F 2A 1F 2B
	trb $201F.w		; 1C 1F 20
	ora $300F10.l		; 0F 10 0F 30
	adc $001700.l		; 6F 00 17 00
	and $001F00.l		; 2F 00 1F 00
	trb $2300.w		; 1C 00 23
	ora $10.b,S		; 03 10
	brk $03.b		; 00 03
	tsb $0C07.w		; 0C 07 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	asl $0F18.w		; 0E 18 0F
	and $390F.w,Y		; 39 0F 39
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	and ($0C.b),Y		; 31 0C
	and ($1E.b),Y		; 31 1E
	adc ($1E.b,S),Y		; 73 1E
	adc ($1C.b)		; 72 1C
	adc ($5C.b)		; 72 5C
	and ($58.b)		; 32 58
	and ($6C.b)		; 32 6C
	asl $1F.b,X		; 16 1F
	ora ($1E.b),Y		; 11 1E
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	and $005F2F.l		; 2F 2F 5F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	brk $5F.b		; 00 5F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $60.b		; 02 60
	php		; 08
	bvs   8.b		; 70 08
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	cpx #$F088.w		; E0 88 F0
	tya		; 98
	beq  24.b		; F0 18
	cpy #$F010.w		; C0 10 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl  28.b		; 10 1C
	and ($0B.b)		; 32 0B
	bit $1F.b		; 24 1F
	and ($3F.b,X)		; 21 3F
	adc $1F.b,S		; 63 1F
	eor $3F.b,S		; 43 3F
	eor ($7F.b,X)		; 41 7F
	cpy #$C04F.w		; C0 4F C0
	tsb $1A00.w		; 0C 00 1A
	cop $30.b		; 02 30
	and #$0B03.w		; 29 03 0B
	pld		; 2B
	phd		; 0B
	pla		; 68
	eor #$0434.w		; 49 34 04
	bmi   0.b		; 30 00
	adc $FE6E0F.l,X		; 7F 0F 6E FE
	sbc ($F9.b,X)		; E1 F9
	cmp $CF93E0.l		; CF E0 93 CF
	and ($87.b),Y		; 31 87
	pei ($09.b)		; D4 09
	cmp [$0E.b],Y		; D7 0E
	ora [$0F.b]		; 07 0F
	rol $FF.b		; 26 FF
	cmp ($FF.b,X)		; C1 FF
	bra -16.b		; 80 F0
	ora ($EF.b,X)		; 01 EF
	brk $DF.b		; 00 DF
	brk $3F.b		; 00 3F
	cop $3F.b		; 02 3F
	bvc   1.b		; 50 01
	bne -128.b		; D0 80
	ldy #$A040.w		; A0 40 A0
	cpy #$C090.w		; C0 90 C0
	bcc -64.b		; 90 C0
	bmi -64.b		; 30 C0
	pla		; 68
	bpl   0.b		; 10 00
	ldy #$A080.w		; A0 80 A0
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	bmi -64.b		; 30 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $EE00.w		; AE 00 EE
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	sec		; 38
	phd		; 0B
	sec		; 38
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	tsb $0C5D.w		; 0C 5D 0C
	ora $0100.w,X		; 1D 00 01
	brk $00.b		; 00 00
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	dec $D800.w,X		; DE 00 D8
	asl $F0.b		; 06 F0
	asl $3EC0.w		; 0E C0 3E
	rti		; 40

	ror $3E80.w,X		; 7E 80 3E
	cpx #$C03E.w		; E0 3E C0
	asl $B090.w,X		; 1E 90 B0
	sty $B4.b,X		; 94 B4
	sty $0C8C.w		; 8C 8C 0C
	tsb $0C8C.w		; 0C 8C 0C
	cpx $24.b		; E4 24
	cpy $04.b		; C4 04
	cpx $04.b		; E4 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -56.b		; 30 C8
	sed		; F8
	bit $FE.b,X		; 34 FE
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	brk $34.b		; 00 34
	brk $F0.b		; 00 F0
	php		; 08
	adc ($C3.b)		; 72 C3
	ora ($C3.b)		; 12 C3
	ora $0BE2.w		; 0D E2 0B
	jsr ($D827.w,X)		; FC 27 D8
	sbc $04FB00.l,X		; FF 00 FB 04
	sbc $8DBD00.l,X		; FF 00 BD 8D
	jmp ($BC4C.w,X)		; 7C 4C BC
	jsr $30F0.w		; 20 F0 30
	cld		; D8
	clc		; 18
	brk $00.b		; 00 00
	cmp $ECC5.w,X		; DD C5 EC
	cpx #$78F4.w		; E0 F4 78
	jmp.w [$C460]		; DC 60 C4
	bvs  96.b		; 70 60
	bne -64.b		; D0 C0
	brk $80.b		; 00 80
	rti		; 40

	cpy #$E020.w		; C0 20 E0
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $EE.b		; 00 EE
	cli		; 58
	sbc $06FD2A.l,X		; FF 2A FD 06
	ldx $78.b,Y		; B6 78
	inx		; E8
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cli		; 58
	plp		; 28
	rol A		; 2A
	tsb $06.b		; 04 06
	bmi 120.b		; 30 78
	brk $70.b		; 00 70
	ora $F0.b,S		; 03 F0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	ora $0B.b,S		; 03 0B
	ora [$1F.b]		; 07 1F
	ora [$3F.b]		; 07 3F
	eor $7F3F7F.l,X		; 5F 7F 3F 7F
	lda $03BF7F.l,X		; BF 7F BF 03
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora $57.b		; 05 57
	php		; 08
	and $209F00.l,X		; 3F 00 9F 20
	phb		; 8B
	bit $FF.b,X		; 34 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	jsr ($FBFC.w,X)		; FC FC FB
	sbc ($FC.b,S),Y		; F3 FC
	cmp $7887E7.l,X		; DF E7 87 78
	lda $807F41.l,X		; BF 41 7F 80
	eor $C03CA0.l,X		; 5F A0 3C C0
	xce		; FB
	ora $F8.b,S		; 03 F8
	brk $E0.b		; 00 E0
	brk $72.b		; 00 72
	bvs 126.b		; 70 7E
	rti		; 40

	bne -32.b		; D0 E0
	inx		; E8
	beq 104.b		; F0 68
	beq -88.b		; F0 A8
	bvs  28.b		; 70 1C
	sbc ($FA.b)		; F2 FA
	adc $BE7F.w,X		; 7D 7F BE
	ply		; 7A
	lda $40A0.w,X		; BD A0 40
	bne  32.b		; D0 20
	bne  32.b		; D0 20
	bvs   0.b		; 70 00
	sbc ($80.b)		; F2 80
	adc $3E00.w,X		; 7D 00 3E
	brk $BD.b		; 00 BD
	bra 106.b		; 80 6A
	brk $EA.b		; 00 EA
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $76.b		; 00 76
	brk $76.b		; 00 76
	brk $36.b		; 00 36
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	ora $00.b,X		; 15 00
	ora $10.b,X		; 15 10
	ora $20.b,X		; 15 20
	and $24.b		; 25 24
	and $2D24.w		; 2D 24 2D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	sbc $A500.w,X		; FD 00 A5
	brk $B6.b		; 00 B6
	brk $B7.b		; 00 B7
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $DD.b		; 00 DD
	brk $EE.b		; 00 EE
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	tad		; 5B
	bit $6D.b		; 24 6D
	rol $6E.b		; 26 6E
	sta ($B7.b,S),Y		; 93 B7
	sta ($B7.b,S),Y		; 93 B7
	sta $CCBB.w,Y		; 99 BB CC
	cmp $301E.w,X		; DD 1E 30
	ora [$30.b]		; 07 30
	ora [$10.b]		; 07 10
	ora $180B18.l		; 0F 18 0B 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $101F00.l		; 0F 00 1F 10
	ora $000710.l,X		; 1F 10 07 00
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora $00.b,S		; 03 00
	bcc  -4.b		; 90 FC
	bcc  -4.b		; 90 FC
	clc		; 18
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jmp ($7CD8.w,X)		; 7C D8 7C
	cld		; D8
	jmp ($3C88.w,X)		; 7C 88 3C
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $D0.b		; 00 D0
	bpl   0.b		; 10 00
	brk $03.b		; 00 03
	tsb $05.b		; 04 05
	asl A		; 0A
	ora $2F06.w,Y		; 19 06 2F
	trb $1D3A.w		; 1C 3A 1D
	bit $3619.w,X		; 3C 19 36
	adc $0000.w,Y		; 79 00 00
	tsb $00.b		; 04 00
	asl A		; 0A
	brk $06.b		; 00 06
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	brk $59.b		; 00 59
	and ($38.b,X)		; 21 38
	mvp $32,$CC		; 44 CC 32
	sed		; F8
	asl $8E.b		; 06 8E
	adc ($3D.b),Y		; 71 3D
	sbc ($1F.b)		; F2 1F
	sbc #$E57B.w		; E9 7B E5
	sbc $0B.b,X		; F5 0B
	mvp $32,$00		; 44 00 32
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $4A.b		; 00 4A
	rti		; 40

	ora ($00.b),Y		; 11 00
	sta ($80.b),Y		; 91 80
	ora $3808.w,X		; 1D 08 38
	brk $7C.b		; 00 7C
	sec		; 38
	inc $AF7C.w,X		; FE 7C AF
	inc $BE97.w,X		; FE 97 BE
	cop $80.b		; 02 80
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	jmp ($AE7C.w,X)		; 7C 7C AE
	inc $FE96.w,X		; FE 96 FE
	brk $FC.b		; 00 FC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	ora [$20.b]		; 07 20
	cmp $C3ED13.l		; CF 13 ED C3
	bit $0CE3.w,X		; 3C E3 0C
	beq  14.b		; F0 0E
	bmi   7.b		; 30 07
	clc		; 18
	brk $00.b		; 00 00
	cpy #$E100.w		; C0 00 E1
	ora $30.b,S		; 03 30
	ora $D0.b,S		; 03 D0
	cmp $30.b,S		; C3 30
	and ($00.b,S),Y		; 33 00
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	ora ($1E.b),Y		; 11 1E
	and ($0C.b,S),Y		; 33 0C
	and $08.b,S		; 23 08
	rol $30.b		; 26 30
	rol $18.b		; 26 18
	jmp $4C00.w		; 4C 00 4C
	bpl  88.b		; 10 58
	asl $0D10.w,X		; 1E 10 0D
	ora ($1E.b,X)		; 01 1E
	cop $3C.b		; 02 3C
	bit $1C.b		; 24 1C
	tsb $30.b		; 04 30
	brk $38.b		; 00 38
	php		; 08
	rts		; 60

	rti		; 40

	brk $DF.b		; 00 DF
	brk $9F.b		; 00 9F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	stx $86.b		; 86 86
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $18673C.l,X		; DF 3C 67 18
	and $001F03.l,X		; 3F 03 1F 00
	ora [$0D.b],Y		; 17 0D
	asl $1D1B.w		; 0E 1B 1D
	rol $3F.b,X		; 36 3F
	rti		; 40

	bit $1810.w		; 2C 10 18
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($F0.b,X)		; 01 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	bcs -80.b		; B0 B0
	cpy #$60C0.w		; C0 C0 60
	cpx #$7030.w		; E0 30 70
	bra -96.b		; 80 A0
	cpy #$80C0.w		; C0 C0 80
	bra -128.b		; 80 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	and $143F10.l,X		; 3F 10 3F 14
	ror $FC04.w,X		; 7E 04 FC
	bmi  -4.b		; 30 FC
	bmi  -8.b		; 30 F8
	brk $F8.b		; 00 F8
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
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C05.w		; 0E 05 1C
	phd		; 0B
	clc		; 18
	ora [$30.b],Y		; 17 30
	ora $633E21.l		; 0F 21 3E 63
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $203E00.l		; 0F 00 3E 20
	ora $7801.w,X		; 1D 01 78
	ora $E01FF0.l		; 0F F0 1F E0
	and $807FC0.l,X		; 3F C0 7F 80
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FE00.w,X		; FE 00 FE
	sbc ($01.b),Y		; F1 01
	sbc $03.b,S		; E3 03
	cmp $03.b,S		; C3 03
	stx $06.b		; 86 06
	lsr $46.b		; 46 46
	stx $0C8E.w		; 8E 8E 0C
	tsb $1C1C.w		; 0C 1C 1C
	asl $00.b,X		; 16 00
	asl $0700.w,X		; 1E 00 07
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($04.b,X)		; 01 04
	ora $0100.w		; 0D 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $03FC00.l		; EF 00 FC 03
	cpx #$503F.w		; E0 3F 50
	ora $E80F68.l,X		; 1F 68 0F E8
	sta $F08FF8.l		; 8F F8 8F F0
	sta [$C8.b]		; 87 C8
	cld		; D8
	cpy #$19C0.w		; C0 C0 19
	ora $09E9.w,Y		; 19 E9 09
	sbc ($01.b),Y		; F1 01
	adc $05.b,X		; 75 05
	adc $05.b,X		; 75 05
	adc $0105.w,X		; 7D 05 01
	tsb $03.b		; 04 03
	asl $01.b		; 06 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	asl $01.b		; 06 01
	tsb $0407.w		; 0C 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	dey		; 88
	bit $3C88.w,X		; 3C 88 3C
	inx		; E8
	bit $3CE8.w,X		; 3C E8 3C
	iny		; C8
	trb $1CC8.w		; 1C C8 1C
	cpx #$C03C.w		; E0 3C C0
	bit $10D0.w,X		; 3C D0 10
	cpx #$C020.w		; E0 20 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C8.b		; 00 C8
	php		; 08
	inx		; E8
	plp		; 28
	bit $7E7F.w,X		; 3C 7F 7E
	and $223F5E.l,X		; 3F 5E 3F 22
	ora $2B0F17.l,X		; 1F 17 0F 2B
	ora [$2F.b],Y		; 17 2F
	ora $4F1F2F.l,X		; 1F 2F 1F 4F
	bmi  47.b		; 30 2F
	bpl  39.b		; 10 27
	clc		; 18
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b],Y		; 17 00
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	sbc $E507.w,X		; FD 07 E5
	cop $E5.b		; 02 E5
	ora $DD.b,S		; 03 DD
	ora ($B1.b)		; 12 B1
	lsr $DE61.w		; 4E 61 DE
	xce		; FB
	sty $FF.b		; 84 FF
	brk $F9.b		; 00 F9
	brk $7C.b		; 00 7C
	clc		; 18
	adc $2C18.w,X		; 7D 18 2C
	brk $40.b		; 00 40
	brk $C3.b		; 00 C3
	cop $87.b		; 02 87
	tsb $19.b		; 04 19
	clc		; 18
	rts		; 60

	bpl 112.b		; 10 70
	brk $30.b		; 00 30
	rti		; 40

	clc		; 18
	rti		; 40

	clc		; 18
	rti		; 40

	trb $4C60.w		; 1C 60 4C
	jsr $146A.w		; 20 6A 14
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	trb $14.b		; 14 14
	sei		; 78
	tsb $7B.b		; 04 7B
	tsb $7D.b		; 04 7D
	cop $67.b		; 02 67
	brk $23.b		; 00 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $06.b		; 04 06
	tsb $03.b		; 04 03
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
	ora #$0B02.w		; 09 02 0B
	clc		; 18
	phd		; 0B
	bit $3E0E.w,X		; 3C 0E 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	jsr $10F8.w		; 20 F8 10
	ora [$01.b]		; 07 01
	tsb $0608.w		; 0C 08 06
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	beq  -8.b		; F0 F8
	sed		; F8
	cpy #$1CC0.w		; C0 C0 1C
	ora $BD3C.w,X		; 1D 3C BD
	rol $1E3E.w,X		; 3E 3E 1E
	asl $0101.w,X		; 1E 01 01
	sbc [$F7.b]		; E7 F7
	inc $FE01.w,X		; FE 01 FE
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FE.b,X)		; 01 FE
	ora ($F0.b,X)		; 01 F0
	sec		; 38
	beq  56.b		; F0 38
	sed		; F8
	sed		; F8
	adc $64.b		; 65 64
	ora $3C9C.w,X		; 1D 9C 3C
	ldy $1C1C.w,X		; BC 1C 1C
	bra -128.b		; 80 80
	bra -68.b		; 80 BC
	bcs -68.b		; B0 BC
	sec		; 38
	rti		; 40

	bvc  40.b		; 50 28
	plp		; 28
	stz $74.b,X		; 74 74
	clv		; B8
	pea $FC78.w		; F4 78 FC
	plx		; FA
	txs		; 9A
	jsr ($9866.w,X)		; FC 66 98
	rti		; 40

	brk $28.b		; 00 28
	brk $74.b		; 00 74
	brk $B8.b		; 00 B8
	brk $58.b		; 00 58
	jsr $C03A.w		; 20 3A C0
	jsr ($9800.w,X)		; FC 00 98
	brk $DC.b		; 00 DC
	rts		; 60

	pla		; 68
	beq -24.b		; F0 E8
	beq -112.b		; F0 90
	cpx #$00F8.w		; E0 F8 00
	jsr ($FE00.w,X)		; FC 00 FE
	sta ($FF.b,X)		; 81 FF
	bra  96.b		; 80 60
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	bpl 112.b		; 10 70
	bvs  44.b		; 70 2C
	bit $1E1E.w		; 2C 1E 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $1DFE05.l,X		; 7F 05 FE 1D
	sbc $C73E.w,Y		; F9 3E C7
	sec		; 38
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $303F18.l		; 0F 18 3F 30
	and $003E00.l,X		; 3F 00 3E 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F4FFE4.l,X		; FF E4 FF F4
	and $01FCD2.l,X		; 3F D2 FC 01
	and $1D00.w,X		; 3D 00 1D
	brk $0F.b		; 00 0F
	brk $0A.b		; 00 0A
	brk $E1.b		; 00 E1
	sbc $F515.w,X		; FD 15 F5
	ora ($D2.b)		; 12 D2
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	sed		; F8
	trb $3CF8.w		; 1C F8 3C
	clv		; B8
	jmp ($FC3A.w,X)		; 7C 3A FC
	tas		; 1B
	jmp ($E37E.w,X)		; 7C 7E E3
	inc $FD7F.w,X		; FE 7F FD
	asl $D8.b		; 06 D8
	dec $BE98.w,X		; DE 98 BE
	clc		; 18
	ror $FC18.w,X		; 7E 18 FC
	php		; 08
	jsr ($FB20.w,X)		; FC 20 FB
	trb $007F.w		; 1C 7F 00
	asl $03.b		; 06 03
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	ldy #$06A0.w		; A0 A0 06
	bmi  15.b		; 30 0F
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	ora $000710.l,X		; 1F 10 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	bra 112.b		; 80 70
	bra 112.b		; 80 70
	bra  96.b		; 80 60
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	trb $36.b		; 14 36
	ora #$BE5F.w		; 09 5F BE
	lda $FFFF7F.l,X		; BF 7F FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	ora #$BE00.w		; 09 00 BE
	brk $4F.b		; 00 4F
	bmi  55.b		; 30 37
	iny		; C8
	ora $041BF0.l		; 0F F0 1B 04
	and $0E7F18.l		; 2F 18 7F 0E
	adc ($1F.b,X)		; 61 1F
	tay		; A8
	tas		; 1B
	stx $31.b,Y		; 96 31
	dec $CE31.w,X		; DE 31 CE
	and ($04.b),Y		; 31 04
	brk $01.b		; 00 01
	ora $2E02.w,Y		; 19 02 2E
	ora ($11.b,X)		; 01 11
	asl $62.b		; 06 62
	ora $010F41.l		; 0F 41 0F 01
	ora $E9D211.l,X		; 1F 11 D2 E9
	sbc $1C.b,S		; E3 1C
	sbc $18FF39.l,X		; FF 39 FF 18
	sbc [$08.b],Y		; F7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $EE02.w,X		; FD 02 EE
	php		; 08
	brk $00.b		; 00 00
	cmp ($C0.b,X)		; C1 C0
	.db $42, $42		; 42 42
	adc $63.b,S		; 63 63
	brk $00.b		; 00 00
	adc $7079.w,Y		; 79 79 70
	ror $2F.b,X		; 76 2F
	brk $B7.b		; 00 B7
	brk $9B.b		; 00 9B
	brk $DC.b		; 00 DC
	ora $D8.b,S		; 03 D8
	ora [$D2.b]		; 07 D2
	phd		; 0B
	inc $10.b		; E6 10
	sta $DC0C70.l,X		; 9F 70 0C DC
	and [$6F.b]		; 27 6F
	bpl 116.b		; 10 74
	bcc -80.b		; 90 B0
	stx $B6.b,Y		; 96 B6
	sta $9FA9.w		; 8D A9 9F
	bcc  47.b		; 90 2F
	jsr $0060.w		; 20 60 00
	cpy #$0000.w		; C0 00 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr $A020.w		; 20 20 A0
	ldy #$1010.w		; A0 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	and ($0C.b),Y		; 31 0C
	and ($1E.b),Y		; 31 1E
	adc ($1E.b,S),Y		; 73 1E
	adc ($1C.b)		; 72 1C
	adc ($5C.b)		; 72 5C
	and ($58.b)		; 32 58
	and ($6C.b)		; 32 6C
	asl $1F.b,X		; 16 1F
	ora ($1E.b),Y		; 11 1E
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	bpl 108.b		; 10 6C
	asl $0E74.w,X		; 1E 74 0E
	cld		; D8
	rol $DC.b		; 26 DC
	jsl $CE38C6.l		; 22 C6 38 CE
	sec		; 38
.ACCU 16
.INDEX 16
	rep #$34		; C2 34
	dec $34.b		; C6 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1814.w		; 1C 14 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bvs 112.b		; 70 70
	dey		; 88
	inx		; E8
	pea $F874.w		; F4 74 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	dey		; 88
	brk $F4.b		; 00 F4
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	sed		; F8
	beq  12.b		; F0 0C
	inx		; E8
	pei ($16.b)		; D4 16
	adc #$DEED.w		; 69 ED DE
	cmp $6C1B3E.l,X		; DF 3E 1B 6C
	jmp ($F8BA.w)		; 6C BA F8
	brk $0C.b		; 00 0C
	brk $14.b		; 00 14
	brk $A9.b		; 00 A9
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $AC.b		; 00 AC
	brk $BA.b		; 00 BA
	bra  -4.b		; 80 FC
	sei		; 78
	ldy $1A7A.w,X		; BC 7A 1A
	cpx $62.b		; E4 62
	tya		; 98
	bra   2.b		; 80 02
	cpy #$C004.w		; C0 04 C0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $7A.b		; 00 7A
	brk $E4.b		; 00 E4
	brk $98.b		; 00 98
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  -8.b		; 80 F8
	bvs  -4.b		; 70 FC
	sed		; F8
	cpy $70F0.w		; CC F0 70
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra 112.b		; 80 70
	bvs  -8.b		; 70 F8
	sed		; F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	phd		; 0B
	clc		; 18
	asl $10.b		; 06 10
	asl $30.b		; 06 30
	ora $310F31.l		; 0F 31 0F 31
	asl $0B31.w		; 0E 31 0B
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora $101F00.l		; 0F 00 1F 10
	asl $1E10.w,X		; 1E 10 1E
	bpl  31.b		; 10 1F
	ora ($80.b),Y		; 11 80
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $2F1711.l		; 0F 11 17 2F
	asl $2F.b,X		; 16 2F
	ora $0816.w		; 0D 16 08
	ora [$0D.b]		; 07 0D
	ora ($03.b,S),Y		; 13 03
	brk $03.b		; 00 03
	brk $11.b		; 00 11
	brk $2B.b		; 00 2B
	tsb $2F.b		; 04 2F
	brk $16.b		; 00 16
	brk $07.b		; 00 07
	brk $13.b		; 00 13
	brk $FE.b		; 00 FE
	sbc $FEFEFD.l,X		; FF FD FE FE
	sbc $C7B0.w,X		; FD B0 C7
	cmp $C4BFA3.l,X		; DF A3 BF C4
	cmp $E0F0E0.l,X		; DF E0 F0 E0
	lda $00FE50.l		; AF 50 FE 00
	jsr ($C800.w,X)		; FC 00 C8
	brk $80.b		; 00 80
	brk $D9.b		; 00 D9
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	asl $AE.b		; 06 AE
	ora ($AE.b),Y		; 11 AE
	ora ($66.b),Y		; 11 66
	ora ($6E.b),Y		; 11 6E
	ora $3976.w,Y		; 19 76 39
	adc ($39.b)		; 72 39
	cmp $3C.b,X		; D5 3C
.INDEX 8
	sep #$1E		; E2 1E
	asl $0E70.w,X		; 1E 70 0E
	rts		; 60

	asl $07A0.w		; 0E A0 07
	cmp ($0F.b,X)		; C1 0F
	sbc $F107.w,Y		; F9 07 F1
	ora $70.b,S		; 03 70
	ora $B4.b		; 05 B4
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $0FEE0F.l		; CF 0F EE 0F
	bmi -58.b		; 30 C6
	lda $5A24.w,Y		; B9 24 5A
	adc ($1D.b,X)		; 61 1D
	.db $62, $70, $76		; 62 70 76
	rts		; 60

	rts		; 60

	ora [$3F.b]		; 07 3F
	brk $1F.b		; 00 1F
	bra -113.b		; 80 8F
	cpy #$06.b		; C0 06
	ldy #$24.b		; A0 24
	sbc ($60.b,X)		; E1 60
	ora $301760.l		; 0F 60 17 30
	ora $180318.l		; 0F 18 03 18
	ora $0C.b		; 05 0C
	cop $06.b		; 02 06
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	and $000F20.l,X		; 3F 20 0F 00
	ora [$10.b],Y		; 17 10
	ora $000308.l		; 0F 08 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $78.b		; 00 78
	cpy #$7C.b		; C0 7C
	bra  60.b		; 80 3C
	cpx #$3E.b		; E0 3E
	cpy #$1E.b		; C0 1E
	beq  31.b		; F0 1F
	rts		; 60

	ora $D08FF8.l		; 0F F8 8F D0
	bvc -120.b		; 50 88
	php		; 08
	inx		; E8
	plp		; 28
	cpy $04.b		; C4 04
	pea $E014.w		; F4 14 E0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	inc $FE01.w,X		; FE 01 FE
	ora ($7F.b,X)		; 01 7F
	brk $3F.b		; 00 3F
	brk $7A.b		; 00 7A
	brk $F6.b		; 00 F6
	brk $ED.b		; 00 ED
	brk $6D.b		; 00 6D
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora $1B09.w		; 0D 09 1B
	ora #$E41B.w		; 09 1B E4
	ora $6DECD2.l,X		; 1F D2 EC 6D
	sbc ($F3.b)		; F2 F3
	rol $0CFF.w,X		; 3E FF 0C
	cmp $00DD00.l,X		; DF 00 DD 00
	ldx $0A00.w		; AE 00 0A
	asl A		; 0A
	rti		; 40

	cpx #$20.b		; E0 20
	sbc ($12.b)		; F2 12
	ror $1C04.w,X		; 7E 04 1C
	brk $20.b		; 00 20
	ora $0C3B.w,Y		; 19 3B 0C
	eor $3BCE.w,X		; 5D CE 3B
	ora [$1C.b]		; 07 1C
	ora ($0C.b,X)		; 01 0C
	brk $06.b		; 00 06
	cpy #$03.b		; C0 03
	cpx #$01.b		; E0 01
	beq   0.b		; F0 00
	sei		; 78
	brk $15.b		; 00 15
	ora ($0B.b),Y		; 11 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	rti		; 40

	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	cpy #$10.b		; C0 10
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bpl 124.b		; 10 7C
	sec		; 38
	jmp $00003C.l		; 5C 3C 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	tsb $5B3E.w		; 0C 3E 5B
	brk $5D.b		; 00 5D
	brk $2D.b		; 00 2D
	brk $2D.b		; 00 2D
	brk $06.b		; 00 06
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $07.b		; 00 07
	brk $12.b		; 00 12
	rol $19.b,X		; 36 19
	tsa		; 3B
	ora #$091B.w		; 09 1B 09
	tas		; 1B
	tsb $1D.b		; 04 1D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	brk $00.b		; 00 00
	bit $3E3C.w,X		; 3C 3C 3E
	and $16171E.l		; 2F 1E 17 16
	ora [$06.b],Y		; 17 06
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ror $3F06.w,X		; 7E 06 3F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	cop $07.b		; 02 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$12.b		; E0 12
	jmp ($3F00.w,X)		; 7C 00 3F
	brk $3F.b		; 00 3F
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0B.b		; 00 0B
	brk $01.b		; 00 01
	brk $1E.b		; 00 1E
	ora ($06.b)		; 12 06
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	cpy #$18.b		; C0 18
	.db $42, $1C		; 42 1C
	.db $42, $1C		; 42 1C
	.db $42, $3E		; 42 3E
	.db $62, $0C, $61		; 62 0C 61
	asl $1E61.w		; 0E 61 1E
	and ($7C.b),Y		; 31 7C
	rti		; 40

	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	rol $1C02.w,X		; 3E 02 1C
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $3800.w		; 0E 00 38
	jmp $CC70.w		; 4C 70 CC
	jsr $3088.w		; 20 88 30
	tya		; 98
	rts		; 60

	tya		; 98
	cpy #$90.b		; C0 90
	cpx #$B0.b		; E0 B0
	cpx #$B0.b		; E0 B0
	stz $44.b,X		; 74 44
	sec		; 38
	php		; 08
	sei		; 78
	php		; 08
	cpx #$80.b		; E0 80
	beq -112.b		; F0 90
	bvs  16.b		; 70 10
	rti		; 40

	brk $40.b		; 00 40
	brk $59.b		; 00 59
	brk $5D.b		; 00 5D
	brk $5D.b		; 00 5D
	brk $5E.b		; 00 5E
	brk $6E.b		; 00 6E
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $76.b		; 00 76
	brk $10.b		; 00 10
	rol $19.b,X		; 36 19
	tsa		; 3B
	ora $1C3B.w,Y		; 19 3B 1C
	and $1D0C.w,X		; 3D 0C 1D
	asl $0E1E.w		; 0E 1E 0E
	asl $0C05.w,X		; 1E 05 0C
	adc ($00.b,S),Y		; 73 00
	ldy $DF00.w,X		; BC 00 DF
	brk $E1.b		; 00 E1
	brk $FF.b		; 00 FF
	brk $F1.b		; 00 F1
	ora $D03F20.l		; 0F 20 3F D0
	ora $30EF63.l,X		; 1F 63 EF 30
	adc ($1C.b,S),Y		; 73 1C
	bit $9E80.w,X		; 3C 80 9E
	cpy #$C0.b		; C0 C0
	cop $02.b		; 02 02
	cmp ($11.b),Y		; D1 11
	inx		; E8
	php		; 08
	sbc $1803.w,Y		; F9 03 18
	ora #$0CF4.w		; 09 F4 0C
	cpx #$1C.b		; E0 1C
	beq  24.b		; F0 18
	sei		; 78
	tsb $86BC.w		; 0C BC 86
	jmp $E0E0C1.l		; 5C C1 E0 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sei		; 78
	brk $BE.b		; 00 BE
	bra 120.b		; 80 78
	brk $FC.b		; 00 FC
	bra  -1.b		; 80 FF
	tsb $FF.b		; 04 FF
	ora $63.b,S		; 03 63
	trb $001F.w		; 1C 1F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $04.b		; 00 04
	tsb $1F03.w		; 0C 03 1F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora [$0C.b]		; 07 0C
	asl $1A30.w,X		; 1E 30 1A
	eor $10.b,S		; 43 10
	jmp $877003.l		; 5C 03 70 87
	rts		; 60

	sbc $000001.l		; EF 01 00 00
	ora $00.b,S		; 03 00
	ora $013D00.l		; 0F 00 3D 01
	plp		; 28
	phd		; 0B
	jsr $002C.w		; 20 2C 00
	clc		; 18
	bra -111.b		; 80 91
	xba		; EB
	tsb $38A7.w		; 0C A7 38
	sta $837FE1.l,X		; 9F E1 7F 83
	sbc $7FFF07.l,X		; FF 07 FF 7F
	inc $F7F9.w,X		; FE F9 F7
	sed		; F8
	sbc ($03.b)		; F2 03
	bne  16.b		; D0 10
	eor ($41.b,X)		; 41 41
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ror $F87F.w,X		; 7E 7F F8
	sbc $F800.w,Y		; F9 00 F8
	sbc $00FB04.l,X		; FF 04 FB 00
	sed		; F8
	bra -12.b		; 80 F4
	cpy #$B6.b		; C0 B6
	cmp ($7B.b,X)		; C1 7B
	dey		; 88
	xce		; FB
	tsb $FF.b		; 04 FF
	brk $33.b		; 00 33
	bmi  55.b		; 30 37
	bmi -73.b		; 30 B7
	lda ($9B.b,S),Y		; B3 9B
	cmp ($18.b),Y		; D1 18
	bne  36.b		; D0 24
	ldy #$61.b		; A0 61
	adc $ECE0.w		; 6D E0 EC
	sbc [$3B.b]		; E7 3B
	sbc $33.b		; E5 33
	sbc ($07.b,S),Y		; F3 07
	ldx $5B.b,Y		; B6 5B
	cmp $FC.b,S		; C3 FC
	plx		; FA
	tsb $18EF.w		; 0C EF 18
	sbc ($0C.b)		; F2 0C
	sta ($00.b,S),Y		; 93 00
	phb		; 8B
	brk $FF.b		; 00 FF
	brk $CB.b		; 00 CB
	pha		; 48
	tsb $00.b		; 04 00
	cpx $D8E0.w		; EC E0 D8
	cpy #$0C.b		; C0 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8E.b		; 00 8E
	ora ($5D.b),Y		; 11 5D
	stx $9FEF.w		; 8E EF 9F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	stx $9B00.w		; 8E 00 9B
	tsb $F9.b		; 04 F9
	asl $FC.b		; 06 FC
	ora $FE.b,S		; 03 FE
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
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
	trb $0C00.w		; 1C 00 0C
	cop $0E.b		; 02 0E
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpx #$20.b		; E0 20
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	cpx #$11.b		; E0 11
	beq  17.b		; F0 11
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	tsb $3862.w		; 0C 62 38
	.db $62, $1C, $46		; 62 1C 46
	bvs -58.b		; 70 C6
	sec		; 38
	sty $8C60.w		; 8C 60 8C
	beq -104.b		; F0 98
	rti		; 40

	clc		; 18
	bit $1C20.w,X		; 3C 20 1C
	brk $78.b		; 00 78
	rti		; 40

	bit $7404.w,X		; 3C 04 74
	tsb $F8.b		; 04 F8
	dey		; 88
	pla		; 68
	php		; 08
	beq  16.b		; F0 10
	asl $31.b		; 06 31
	asl $0639.w		; 0E 39 06
	ora $1903.w,Y		; 19 03 19
	ora [$0D.b]		; 07 0D
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	asl $1710.w,X		; 1E 10 17
	ora ($0F.b),Y		; 11 0F
	ora #$080E.w		; 09 0E 08
	cop $00.b		; 02 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	cpx #$A0.b		; E0 A0
	rti		; 40

	ldy #$00.b		; A0 00
	ldy #$40.b		; A0 40
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	cpy #$20.b		; C0 20
	cpy #$60.b		; C0 60
	bra  64.b		; 80 40
	brk $60.b		; 00 60
	jsr $2060.w		; 20 60 20
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bit $3902.w,X		; 3C 02 39
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	asl $0674.w		; 0E 74 06
	clv		; B8
	sta $5E.b,S		; 83 5E
	cmp $2C.b,S		; C3 2C
	sbc ($17.b,X)		; E1 17
	sbc ($0A.b),Y		; F1 0A
	sei		; 78
	ora $3C.b		; 05 3C
	pea $F804.w		; F4 04 F8
	brk $7E.b		; 00 7E
	cop $BC.b		; 02 BC
	bra  95.b		; 80 5F
	eor ($2E.b,X)		; 41 2E
	jsr $1017.w		; 20 17 10
	phd		; 0B
	php		; 08
	rol $13E0.w		; 2E E0 13
	bvs   9.b		; 70 09
	sec		; 38
	tsb $1C.b		; 04 1C
	ora ($8F.b,X)		; 01 8F
	brk $87.b		; 00 87
	brk $C1.b		; 00 C1
	bra -64.b		; 80 C0
	eor $202F40.l,X		; 5F 40 2F 20
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	bcc -104.b		; 90 98
	pha		; 48
	cpy $E424.w		; CC 24 E4
	bpl -14.b		; 10 F2
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $B0.b		; 00 B0
	bra  88.b		; 80 58
	rti		; 40

	tsb $FE00.w		; 0C 00 FE
	ora ($F7.b,X)		; 01 F7
	brk $EB.b		; 00 EB
	ora [$DF.b]		; 07 DF
	ora ($D7.b,X)		; 01 D7
	brk $F5.b		; 00 F5
	brk $F5.b		; 00 F5
	brk $F6.b		; 00 F6
	brk $80.b		; 00 80
	sta ($00.b,X)		; 81 00
	tsb $1F00.w		; 0C 00 1F
	brk $21.b		; 00 21
	brk $28.b		; 00 28
	rts		; 60

	ror A		; 6A
	adc ($6B.b,X)		; 61 6B
	stz $6D.b		; 64 6D
	ora $FA86.w,X		; 1D 86 FA
	trb $309B.w		; 1C 9B 30
	sbc $68F7D0.l		; EF D0 F7 68
	sed		; F8
	bpl -65.b		; 10 BF
	brk $DF.b		; 00 DF
	brk $00.b		; 00 00
	sbc [$00.b]		; E7 00
	ora $C07C00.l,X		; 1F 00 7C C0
	bne  35.b		; D0 23
	rtl		; 6B

	brk $37.b		; 00 37
	brk $40.b		; 00 40
	sta $00FFBF.l,X		; 9F BF FF 00
	inc $FA01.w,X		; FE 01 FA
	ora ($FA.b,X)		; 01 FA
	ora #$01FA.w		; 09 FA 01
	inc A		; 1A
	ora #$08F3.w		; 09 F3 08
	sbc $0C.b,X		; F5 0C
	brk $00.b		; 00 00
	jsr $3620.w		; 20 20 36
	bmi   6.b		; 30 06
	brk $F6.b		; 00 F6
	beq   6.b		; F0 06
	cpx #$07.b		; E0 07
	brk $E3.b		; 00 E3
	cpx #$0C.b		; E0 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	cop $3F.b		; 02 3F
	ora #$340F.w		; 09 0F 34
	ora [$5A.b],Y		; 17 5A
	adc #$008E.w		; 69 8E 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	asl $3901.w		; 0E 01 39
	tsb $04.b		; 04 04
	jsr $7002.w		; 20 02 70
	cop $7F.b		; 02 7F
	sbc $FB3FC7.l,X		; FF C7 3F FB
	and $EF1FFF.l,X		; 3F FF 1F EF
	ora $769FEF.l,X		; 1F EF 9F 76
	sta $FF0EF1.l		; 8F F1 0E FF
	brk $7F.b		; 00 7F
	rti		; 40

	lda $C0DF80.l,X		; BF 80 DF C0
	eor $E07F40.l,X		; 5F 40 7F E0
	adc $A02FE0.l		; 6F E0 2F A0
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $6C70.w		; 2C 70 6C
	bmi 122.b		; 30 7A
	tsb $7E.b		; 04 7E
	brk $3D.b		; 00 3D
	.db $42, $17		; 42 17
	pla		; 68
	trb $3F43.w		; 1C 43 3F
	rti		; 40

	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	jsl $000002.l		; 22 02 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bcs  96.b		; B0 60
	cli		; 58
	bcs -72.b		; B0 B8
	bvc  -8.b		; 50 F8
	bpl 112.b		; 10 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rts		; 60

	bpl -80.b		; 10 B0
	bpl  80.b		; 10 50
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	adc $087701.l,X		; 7F 01 77 08
	pld		; 2B
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cop $A3.b		; 02 A3
	jmp.w [$FFFE]		; DC FE FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	jmp.w [$E700]		; DC 00 E7
	clc		; 18
	sta ($7E.b,X)		; 81 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A75B1F.l		; EF 1F 5B A7
	sbc [$18.b]		; E7 18
	sbc [$08.b],Y		; F7 08
	sbc $1C.b,S		; E3 1C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $005F00.l,X		; FF 00 5F 00
	lda [$A0.b]		; A7 A0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	bcc  80.b		; 90 50
	cpx #$F0.b		; E0 F0
	cpx #$D0.b		; E0 D0
	cpx #$D0.b		; E0 D0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	cpx #$D0.b		; E0 D0
	cpx #$D0.b		; E0 D0
	cpx #$60.b		; E0 60
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
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
	brk $37.b		; 00 37
	ora $0F0619.l		; 0F 19 06 0F
	ora ($04.b,X)		; 01 04
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	asl $1D07.w		; 0E 07 1D
	and $040B00.l,X		; 3F 00 0B 04
	asl $00.b		; 06 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	asl A		; 0A
	php		; 08
	brk $00.b		; 00 00
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $A0DFC0.l,X		; FF C0 DF A0
	sbc $C0BF40.l,X		; FF 40 BF C0
	adc $3CFF80.l,X		; 7F 80 FF 3C
	ldx $18BE.w,Y		; BE BE 18
	clc		; 18
	sta [$C7.b]		; 87 C7
	ora $0F8F2F.l		; 0F 2F 8F 0F
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	and $FF7D.w,Y		; 39 7D FF
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	jsr $00FF.w		; 20 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($FC0E.w,X)		; FC 0E FC
	asl $3E3E.w		; 0E 3E 3E
	ora $0719.w,Y		; 19 19 07
	adc [$0F.b]		; 67 0F
	adc $A08787.l		; 6F 87 87 A0
	ldy #$60.b		; A0 60
	adc $00EFEC.l		; 6F EC EF 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cmp $91.b,S		; C3 91
	adc $3CC3.w		; 6D C3 3C
	sbc $0C.b,S		; E3 0C
	bvs  14.b		; 70 0E
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $61.b		; 00 61
	ora ($B0.b,X)		; 01 B0
	sta $50.b,S		; 83 50
	eor $30.b,S		; 43 30
	and ($00.b,S),Y		; 33 00
	ora ($3D.b,X)		; 01 3D
	brk $7A.b		; 00 7A
	asl $79.b,X		; 16 79
	ora [$7C.b],Y		; 17 7C
	and $7E.b,S		; 23 7E
	and ($FC.b,X)		; 21 FC
	ora ($F8.b,X)		; 01 F8
	ora ($F8.b,X)		; 01 F8
	rts		; 60

	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b),Y		; 11 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	asl $07F4.w		; 0E F4 07
	ply		; 7A
	ora $BD.b,S		; 03 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$2F.b		; C0 2F
	cpx #$57.b		; E0 57
	beq  43.b		; F0 2B
	sed		; F8
	pea $FA04.w		; F4 04 FA
	cop $FD.b		; 02 FD
	ora ($7E.b,X)		; 01 7E
	brk $BF.b		; 00 BF
	bra  95.b		; 80 5F
	rti		; 40

	and $505720.l		; 2F 20 57 50
	ora ($00.b,X)		; 01 00
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$31.b],Y		; 17 31
	asl $3D5A.w		; 0E 5A 3D
	stz $3B.b,X		; 74 3B
	sei		; 78
	and [$75.b],Y		; 37 75
	plx		; FA
	brk $00.b		; 00 00
	phd		; 0B
	brk $17.b		; 00 17
	brk $0E.b		; 00 0E
	brk $3C.b		; 00 3C
	brk $39.b		; 00 39
	ora ($32.b,X)		; 01 32
	cop $BA.b		; 02 BA
	.db $42, $38		; 42 38
	cpy #$5C.b		; C0 5C
	ldy #$F2.b		; A0 F2
	tsb $E31C.w		; 0C 1C E3
	tda		; 7B
	cpx $FF.b		; E4 FF
	cmp ($F7.b,S),Y		; D3 F7
	wai		; CB
	nop		; EA
	ora [$C0.b],Y		; 17 C0
	brk $A0.b		; 00 A0
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	brk $94.b		; 00 94
	bra  34.b		; 80 22
	ora ($23.b,X)		; 01 23
	brk $3B.b		; 00 3B
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$70.b		; C0 70
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	bra  56.b		; 80 38
	brk $7C.b		; 00 7C
	sec		; 38
	inc $AC7C.w,X		; FE 7C AC
	jsr ($BC14.w,X)		; FC 14 BC
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	jmp ($AC7C.w,X)		; 7C 7C AC
	inc $FE14.w,X		; FE 14 FE
	brk $DC.b		; 00 DC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	cpy #$40.b		; C0 40
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $00.b,X		; B5 00
	lda $00.b,X		; B5 00
	ldx $00.b,Y		; B6 00
	ldx $00.b,Y		; B6 00
	lda [$00.b],Y		; B7 00
	tyx		; BB
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $90.b		; 00 90
	phx		; DA
	bcc -38.b		; 90 DA
	sta ($DB.b)		; 92 DB
	sta ($DB.b)		; 92 DB
	sta ($DB.b,S),Y		; 93 DB
	sta $1CDD.w,Y		; 99 DD 1C
	jmp $470808.l		; 5C 08 08 47
	bmi -61.b		; 30 C3
	sec		; 38
	lda ($1C.b,X)		; A1 1C
	bne  14.b		; D0 0E
	adc $FC07.w,Y		; 79 07 FC
	ora $F4.b,S		; 03 F4
	ora #$1C90.w		; 09 90 1C
	ora $888F90.l,X		; 1F 90 8F 88
	ora [$44.b]		; 07 44
	eor $62.b,S		; 43 62
	jsl $C1C1A2.l		; 22 A2 C1 C1
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	cpy #$60.b		; C0 60
	bra  48.b		; 80 30
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	bvs  24.b		; 70 18
	cpx #$88.b		; E0 88
	bvs -60.b		; 70 C4
	bmi -28.b		; 30 E4
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sei		; 78
	php		; 08
	clv		; B8
	bra  92.b		; 80 5C
	mvp $76,$1C		; 44 1C 76
	tsb $063A.w		; 0C 3A 06
	sta $8D06.w,Y		; 99 06 8D
	ora ($CD.b,X)		; 01 CD
	sta $C7.b,S		; 83 C7
	ora [$60.b]		; 07 60
	cmp [$60.b]		; C7 60
	plp		; 28
	jsr $1216.w		; 20 16 12
	asl $0308.w		; 0E 08 03
	ora ($86.b,X)		; 01 86
	sty $00.b		; 84 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	adc $1EFF0E.l,X		; 7F 0E FF 1E
	jsr ($E71F.w,X)		; FC 1F E7
	clc		; 18
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora $003F1C.l,X		; 1F 1C 3F 00
	and $003C00.l,X		; 3F 00 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc ($7F.b)		; F2 7F
	plx		; FA
	lda $009C48.l,X		; BF 48 9C 00
	asl $1F00.w,X		; 1E 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $70.b		; 00 70
	inc $FA0A.w,X		; FE 0A FA
	php		; 08
	iny		; C8
	brk $03.b		; 00 03
	php		; 08
	ora #$0808.w		; 09 08 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	jsr ($FE1F.w,X)		; FC 1F FE
	ora $9E3FDE.l,X		; 1F DE 3F 9E
	and $8F4F26.l,X		; 3F 26 4F 8F
	adc $AD00FF.l,X		; 7F FF 00 AD
	brk $FC.b		; 00 FC
	sbc $0EDFDE.l,X		; FF DE DF 0E
	and $027F06.l,X		; 3F 06 7F 02
	cmp $007F07.l,X		; DF 07 7F 00
	brk $80.b		; 00 80
	cmp ($07.b)		; D2 07
	sec		; 38
	bmi 124.b		; 30 7C
	iny		; C8
	dec $C7F4.w		; CE F4 C7
	plx		; FA
	cmp $DD.b,S		; C3 DD
	cmp ($BE.b,X)		; C1 BE
	rts		; 60

	ora $000060.l		; 0F 60 00 00
	php		; 08
	php		; 08
	ldy $84.b,X		; B4 84
	tsx		; BA
	.db $82, $BD, $81		; 82 BD 81
	ldx $5F80.w,Y		; BE 80 5F
	rti		; 40

	and $40F0A0.l,X		; 3F A0 F0 40
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
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
	brk $15.b		; 00 15
	cpx $761A.w		; EC 1A 76
	tsb $073A.w		; 0C 3A 07
	ora $0F02.w,X		; 1D 02 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	tsa		; 3B
	plp		; 28
	ora $1704.w		; 0D 04 17
	ora ($0A.b)		; 12 0A
	php		; 08
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	jsr ($7CFF.w,X)		; FC FF 7C
	lda $5F7E.w,X		; BD 7E 5F
	rol $1F2E.w,X		; 3E 2E 1F
	eor [$2F.b],Y		; 57 2F
	eor $3E5F3F.l,X		; 5F 3F 5F 3E
	sta $5D60.w,X		; 9D 60 5D
	jsr $304E.w		; 20 4E 30
	rol $1F00.w,X		; 3E 00 1F
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	bpl  46.b		; 10 2E
	bpl  -5.b		; 10 FB
	asl $CA.b		; 06 CA
	ora $CB.b		; 05 CB
	ora [$FB.b]		; 07 FB
	ora $E3.b		; 05 E3
	stz $BEC7.w		; 9C C7 BE
	sbc $01FF1D.l		; EF 1D FF 01
	plx		; FA
	brk $F9.b		; 00 F9
	bmi  -5.b		; 30 FB
	bmi  -7.b		; 30 F9
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	php		; 08
	ora ($10.b)		; 12 10
	inc $E0.b		; E6 E0
	.db $82, $31, $E1		; 82 31 E1
	bmi -63.b		; 30 C1
	bpl -16.b		; 10 F0
	bpl 112.b		; 10 70
	clc		; 18
	bcc -104.b		; 90 98
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	sbc ($21.b,X)		; E1 21
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $E0.b		; 00 E0
	cpx #$00.b		; E0 00
	brk $78.b		; 00 78
	cpy #$BC.b		; C0 BC
	rti		; 40

	ror $7E00.w,X		; 7E 00 7E
	brk $3F.b		; 00 3F
	php		; 08
	and [$0C.b],Y		; 37 0C
	ora $000F00.l,X		; 1F 00 0F 00
	bra -128.b		; 80 80
	pha		; 48
	rti		; 40

	tsb $0C00.w		; 0C 00 0C
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -128.b		; 70 80
	ldy #$50.b		; A0 50
	bvc -24.b		; 50 E8
	inx		; E8
	bvs -24.b		; 70 E8
	beq  -8.b		; F0 F8
	pea $F834.w		; F4 34 F8
	cpy $8030.w		; CC 30 80
	brk $50.b		; 00 50
	brk $E8.b		; 00 E8
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	rti		; 40

	stz $80.b,X		; 74 80
	sed		; F8
	brk $30.b		; 00 30
	brk $B8.b		; 00 B8
	cpy #$D0.b		; C0 D0
	cpx #$D0.b		; E0 D0
	cpx #$20.b		; E0 20
	cpy #$F0.b		; C0 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	jsr $E0E0.w		; 20 E0 E0
	cli		; 58
	cli		; 58
	bit $F03C.w,X		; 3C 3C F0
	asl $0FF4.w		; 0E F4 0F
	asl $FF01.w		; 0E 01 FF
	brk $FB.b		; 00 FB
	tsb $F8.b		; 04 F8
	ora [$11.b]		; 07 11
	ora ($FF.b,X)		; 01 FF
	brk $EC.b		; 00 EC
	cpx $0A0A.w		; EC 0A 0A
	ora [$F1.b]		; 07 F1
	sbc [$F0.b],Y		; F7 F0
	sbc ($F0.b,S),Y		; F3 F0
	asl $06.b		; 06 06
	asl $EFE0.w		; 0E E0 EF
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rts		; 60

	cpy #$30.b		; C0 30
	jsr $C0D8.w		; 20 D8 C0
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	bcs -112.b		; B0 90
	clv		; B8
	sec		; 38
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora [$00.b]		; 07 00
	ora $1602.w,X		; 1D 02 16
	and $3807.w		; 2D 07 38
	ora $2E32.w		; 0D 32 2E
	ora ($00.b),Y		; 11 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $2D.b		; 00 2D
	brk $38.b		; 00 38
	brk $32.b		; 00 32
	brk $10.b		; 00 10
	brk $6D.b		; 00 6D
	ldx $FEBF.w,Y		; BE BF FE
	sbc $7CFB3E.l,X		; FF 3E FB 7C
	sed		; F8
	sbc $0B1FE3.l,X		; FF E3 1F 0B
	sbc [$65.b],Y		; F7 65
	tyx		; BB
	ldx $FE00.w,Y		; BE 00 FE
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $53.b		; 00 53
	bpl  65.b		; 10 41
	brk $E3.b		; 00 E3
	ora ($F7.b,X)		; 01 F7
	ora ($F3.b,X)		; 01 F3
	brk $F9.b		; 00 F9
	asl $E7.b		; 06 E7
	clc		; 18
	stp		; DB
	bit $7FBC.w,X		; 3C BC 7F
	brk $00.b		; 00 00
	eor ($41.b,X)		; 41 41
	adc ($61.b,X)		; 61 61
	cpx $E6E0.w		; EC E0 E6
	inc $C0.b		; E6 C0
	jmp.w [$3F00]		; DC 00 3F
	clc		; 18
	adc $D0E0D0.l,X		; 7F D0 E0 D0
	cpy #$A0.b		; C0 A0
	bra  70.b		; 80 46
	brk $8B.b		; 00 8B
	brk $F6.b		; 00 F6
	brk $ED.b		; 00 ED
	brk $FB.b		; 00 FB
	rti		; 40

	cpy #$E0.b		; C0 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cop $06.b		; 02 06
	tsb $0D.b		; 04 0D
	ora #$43DB.w		; 09 DB 43
	sbc [$1E.b]		; E7 1E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	bra  15.b		; 80 0F
	cpy #$07.b		; C0 07
	rts		; 60

	dey		; 88
	bmi -36.b		; 30 DC
	ldy #$3E.b		; A0 3E
	cpy #$08.b		; C0 08
	ora #$0909.w		; 09 09 09
	ora #$8409.w		; 09 09 84
	sty $C0.b		; 84 C0
	rti		; 40

	cpx #$20.b		; E0 20
	rts		; 60

	plp		; 28
	rti		; 40

	bvc  -1.b		; 50 FF
	brk $9F.b		; 00 9F
	brk $E1.b		; 00 E1
	brk $FC.b		; 00 FC
	brk $EF.b		; 00 EF
	brk $73.b		; 00 73
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	ora $A0E181.l,X		; 1F 81 E1 A0
	ldx $CFCC.w,Y		; BE CC CF
	adc $73.b,S		; 63 73
	bmi  60.b		; 30 3C
	trb $001C.w		; 1C 1C 00
	brk $11.b		; 00 11
	bit $360A.w,X		; 3C 0A 36
	and $3C03.w,X		; 3D 03 3C
	ora $18.b,S		; 03 18
	ora #$0812.w		; 09 12 08
	asl $0E01.w,X		; 1E 01 0E
	ora ($07.b,X)		; 01 07
	tsb $11.b		; 04 11
	bpl   2.b		; 10 02
	cop $05.b		; 02 05
	ora ($06.b,X)		; 01 06
	brk $0C.b		; 00 0C
	php		; 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bra  32.b		; 80 20
	ldy #$30.b		; A0 30
	rti		; 40

	bpl -112.b		; 10 90
	tya		; 98
	rti		; 40

	iny		; C8
	plp		; 28
	cpx $7410.w		; EC 10 74
	asl $E03C.w		; 0E 3C E0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	rts		; 60

	brk $B8.b		; 00 B8
	dey		; 88
	bvc  64.b		; 50 40
	bit $1024.w		; 2C 24 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	clc		; 18
	bpl  12.b		; 10 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	ldy $BFC0.w		; AC C0 BF
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $CC.b		; 00 CC
	tsb $00FF.w		; 0C FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $62DD30.l		; AF 30 DD 62
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $2F2F00.l,X		; FF 00 2F 2F
	adc $8E8E6F.l		; 6F 6F 8E 8E
	eor ($01.b,X)		; 41 01
	bit #$800F.w		; 89 0F 80
	asl $61.b		; 06 61
	adc ($DD.b,X)		; 61 DD
	cmp $100F.w,X		; DD 0F 10
	tsb $09.b		; 04 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sed		; F8
	sbc [$78.b],Y		; F7 78
	lda $887370.l		; AF 70 73 88
	and $50.b,S		; 23 50
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $7B01.w,Y		; F9 01 7B
	ora $73.b,S		; 03 73
	ora $8A.b,S		; 03 8A
	cop $50.b		; 02 50
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	rti		; 40

	cmp $40FFA0.l,X		; DF A0 FF 40
	bvs -122.b		; 70 86
	cld		; D8
	cop $DD.b		; 02 DD
	cmp $BEBE.w,X		; DD BE BE
	rol $0D3E.w,X		; 3E 3E 0D
	eor $B181.w		; 4D 81 B1
	rti		; 40

	rts		; 60

	trb $3EC4.w		; 1C C4 3E
	cop $FF.b		; 02 FF
	brk $E7.b		; 00 E7
	brk $59.b		; 00 59
	sec		; 38
	stx $7E.b		; 86 7E
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $001FC0.l		; CF C0 1F 00
	and [$A0.b]		; 27 A0
	adc $0178.w,Y		; 79 78 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	asl $07FE.w,X		; 1E FE 07
	sbc $003F01.l,X		; FF 01 3F 00
	eor $F017C0.l,X		; 5F C0 17 F0
	ora $7C.b		; 05 7C
	ora ($0F.b,X)		; 01 0F
	cpx $04.b		; E4 04
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	bra 111.b		; 80 6F
	rts		; 60

	phd		; 0B
	php		; 08
	cop $02.b		; 02 02
	rol $3A42.w,X		; 3E 42 3A
	lsr $52.b		; 46 52
	and $183F58.l,X		; 3F 58 3F 18
	adc $1A1B2C.l,X		; 7F 2C 1B 1A
	and $0F12.w		; 2D 12 0F
	eor ($00.b,X)		; 41 00
	eor ($00.b,X)		; 41 00
	sec		; 38
	brk $3A.b		; 00 3A
	cop $7A.b		; 02 7A
	cop $18.b		; 02 18
	brk $2C.b		; 00 2C
	brk $0F.b		; 00 0F
	brk $A2.b		; 00 A2
	eor $E7.b		; 45 E7
	tsb $7D.b		; 04 7D
	asl $C5.b		; 06 C5
	stx $59.b		; 86 59
	ldx $DC2B.w,Y		; BE 2B DC
	ply		; 7A
	ldy $3CFB.w,X		; BC FB 3C
	adc $F858.w,Y		; 79 58 F8
	clc		; 18
	clv		; B8
	brk $38.b		; 00 38
	brk $A1.b		; 00 A1
	ldy #$DD.b		; A0 DD
	cpy #$3D.b		; C0 3D
	brk $3C.b		; 00 3C
	brk $DF.b		; 00 DF
	and $EF1FEF.l,X		; 3F EF 1F EF
	ora $EF1FEF.l,X		; 1F EF 1F EF
	asl $01CE.w,X		; 1E CE 01
	sbc $1C03.w,X		; FD 03 1C
	ora ($9E.b,X)		; 01 9E
	lda $CFDFCF.l,X		; BF CF DF CF
	cmp $C0DFCF.l,X		; DF CF DF C0
	cmp $00BF80.l,X		; DF 80 BF 00
	ora $00.b,S		; 03 00
	ora $7F.b,S		; 03 7F
	ldy #$BC.b		; A0 BC
	bne  -1.b		; D0 FF
	bne  -1.b		; D0 FF
	ldy #$50.b		; A0 50
	cpx #$BF.b		; E0 BF
	cpy #$7F.b		; C0 7F
	bra -64.b		; 80 C0
	brk $24.b		; 00 24
	pea $F390.w		; F4 90 F3
	sta [$F7.b],Y		; 97 F7
	ldy #$F0.b		; A0 F0
	rti		; 40

	sbc $00DF1F.l		; EF 1F DF 00
	cpy #$00.b		; C0 00
	lda $760679.l,X		; BF 79 06 76
	ora $1B1F2F.l		; 0F 2F 1F 1B
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rol $04.b		; 26 04
	ora $031F0E.l		; 0F 0E 1F 03
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	cpy #$F0.b		; C0 F0
	cpy #$F8.b		; C0 F8
	cpx #$BC.b		; E0 BC
	bvs  54.b		; 70 36
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	jsr $2078.w		; 20 78 20
	jmp ($000B.w,X)		; 7C 0B 00
	ora $0B06.w		; 0D 06 0B
	tsb $06.b		; 04 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	trb $008F.w		; 1C 8F 00
	cmp [$80.b]		; C7 80
	sbc $83.b		; E5 83
	adc $80.b,S		; 63 80
	sbc $00.b,S		; E3 00
	sbc ($00.b,X)		; E1 00
	ora ($00.b,X)		; 01 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3C00.w		; 1C 00 3C
	clc		; 18
	ror $7604.w,X		; 7E 04 76
	sec		; 38
	stz $28.b,X		; 74 28
	adc ($38.b)		; 72 38
	inx		; E8
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	clc		; 18
	brk $04.b		; 00 04
	bmi  56.b		; 30 38
	jsr $202E.w		; 20 2E 20
	bit $7060.w,X		; 3C 60 70
	ror $7C30.w,X		; 7E 30 7C
	clc		; 18
	jmp $305820.l		; 5C 20 58 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  52.b		; 30 34
	bpl  24.b		; 10 18
	brk $20.b		; 00 20
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0661.w		; 0C 61 06
	and ($03.b),Y		; 31 03
	clc		; 18
	ora ($06.b,X)		; 01 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $1F20.w,X		; 3E 20 1F
	ora ($0F.b),Y		; 11 0F
	php		; 08
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$60.b		; C0 60
	cpy #$30.b		; C0 30
	cpx #$18.b		; E0 18
	beq  24.b		; F0 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	brk $1E.b		; 00 1E
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	cop $07.b		; 02 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	tsb $04.b		; 04 04
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cpx #$18.b		; E0 18
	beq  24.b		; F0 18
	rts		; 60

	php		; 08
	inx		; E8
	sty $8430.w		; 8C 30 84
	stz $C6.b,X		; 74 C6
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$BA		; C2 BA
	sbc $F0.b,S		; E3 F0
	bpl -24.b		; 10 E8
	php		; 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	jsr ($3884.w,X)		; FC 84 38
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bra 112.b		; 80 70
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bcc -128.b		; 90 80
	jsr ($7E00.w,X)		; FC 00 7E
	bpl  63.b		; 10 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
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
	brk $30.b		; 00 30
	pha		; 48
	bvs -120.b		; 70 88
	bit $92C0.w,X		; 3C C0 92
	adc $0000.w		; 6D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	brk $88.b		; 00 88
	brk $C0.b		; 00 C0
	brk $6D.b		; 00 6D
	brk $E0.b		; 00 E0
	beq   0.b		; F0 00
	beq -32.b		; F0 E0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  -8.b		; 80 F8
	brk $FC.b		; 00 FC
	ora $FE.b,S		; 03 FE
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	inx		; E8
	inx		; E8
	adc $006D.w		; 6D 6D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	trb $EA9F.w		; 1C 9F EA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $031F60.l,X		; 9F 60 1F 03
	brk $9F.b		; 00 9F
	brk $C0.b		; 00 C0
	ora $E0.b,S		; 03 E0
	sta ($7C.b,X)		; 81 7C
	dec $1EDE.w,X		; DE DE 1E
	asl $7C1C.w,X		; 1E 1C 7C
	brk $E3.b		; 00 E3
	brk $7F.b		; 00 7F
	bra -65.b		; 80 BF
.INDEX 16
	rep #$DE		; C2 DE
	cpx #$FE62.w		; E0 62 FE
	sbc $EF.b,S		; E3 EF
	sbc [$EE.b],Y		; F7 EE
	sbc [$FE.b],Y		; F7 FE
	inc $DEFD.w		; EE FD DE
	adc $F33C.w,Y		; 79 3C F3
	sed		; F8
	stz $F0.b		; 64 F0
	cpy #$E4E3.w		; C0 E3 E4
	sbc [$E4.b],Y		; F7 E4
	sbc [$E4.b],Y		; F7 E4
	sbc $18DE0C.l		; EF 0C DE 18
	ldx $FC30.w,Y		; BE 30 FC
	rts		; 60

	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $2F07.w,Y		; 19 07 2F
	ora $007F1F.l,X		; 1F 1F 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	tsb $60.b		; 04 60
	sta [$F1.b],Y		; 97 F1
	adc $E7FF57.l		; 6F 57 FF E7
	stp		; DB
	and $DB.b		; 25 DB
	eor $04A7.w,Y		; 59 A7 04
	brk $04.b		; 00 04
	brk $97.b		; 00 97
	brk $6F.b		; 00 6F
	brk $FF.b		; 00 FF
	brk $DB.b		; 00 DB
	brk $9B.b		; 00 9B
	brk $87.b		; 00 87
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$3F.b]		; 07 3F
	brk $5E.b		; 00 5E
	cmp $CC.b,S		; C3 CC
	ora ($C8.b)		; 12 C8
	beq  16.b		; F0 10
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($81.b,X)		; A1 81
	sbc ($12.b)		; F2 12
	jsr $8020.w		; 20 20 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	sta $033F81.l,X		; 9F 81 3F 03
	rol $7C07.w,X		; 3E 07 7C
	phd		; 0B
	sei		; 78
	ora [$F0.b],Y		; 17 F0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	tsb $090C.w		; 0C 0C 09
	php		; 08
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $E02E00.l		; 0F 00 2E E0
	jmp $83BAC1.l		; 5C C1 BA 83
	stz $06.b,X		; 74 06
	inx		; E8
	tsb $18D0.w		; 0C D0 18
	bra  24.b		; 80 18
	jsr $1F38.w		; 20 38 1F
	brk $3F.b		; 00 3F
	ora ($7C.b,X)		; 01 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $1A.b		; 00 1A
	ora $34381F.l		; 0F 1F 38 34
	sei		; 78
	jmp ($D8F0.w)		; 6C F0 D8
	cpx #$40B0.w		; E0 B0 40
	cpx #$E000.w		; E0 00 E0
	ora ($0A.b,X)		; 01 0A
	ora $203C10.l		; 0F 10 3C 20
	sei		; 78
	rti		; 40

	sed		; F8
	bra -16.b		; 80 F0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0101.w		; C0 01 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $188B.w		; 0C 8B 18
	cmp [$B0.b],Y		; D7 B0
	inc $FC00.w		; EE 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	bra  31.b		; 80 1F
	brk $0F.b		; 00 0F
	brk $99.b		; 00 99
	ora ($7E.b,X)		; 01 7E
	sta $EC.b,S		; 83 EC
	ora $9C.b,S		; 03 9C
	ora $FE.b,S		; 03 FE
	ora ($E2.b,X)		; 01 E2
	ora ($9E.b,X)		; 01 9E
	ora ($7E.b,X)		; 01 7E
	brk $06.b		; 00 06
	rts		; 60

	and ($B1.b),Y		; 31 B1
	asl A		; 0A
	inc A		; 1A
	clc		; 18
	sei		; 78
	rts		; 60

	rts		; 60

	bra -100.b		; 80 9C
	trb $607C.w		; 1C 7C 60
	cpx #$00E2.w		; E0 E2 00
	stz $7E00.w,X		; 9E 00 7E
	brk $F4.b		; 00 F4
	brk $0C.b		; 00 0C
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	stz $7C1C.w		; 9C 1C 7C
	bvs -16.b		; 70 F0
	brk $08.b		; 00 08
	php		; 08
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $1C.b		; 05 1C
	eor $01FDC0.l,X		; 5F C0 FD 01
	pea $A007.w		; F4 07 A0
	rol $F080.w,X		; 3E 80 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	lda $00FE80.l,X		; BF 80 FE 00
	plx		; FA
	cop $D0.b		; 02 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	and $00DE00.l,X		; 3F 00 DE 00
	inc $00.b,X		; F6 00
	jsr ($C800.w,X)		; FC 00 C8
	bmi -64.b		; 30 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	asl $7007.w,X		; 1E 07 70
	adc $80FCC0.l,X		; 7F C0 FC 80
	sbc ($03.b)		; F2 03
	inx		; E8
	ora $000000.l		; 0F 00 00 00
	brk $05.b		; 00 05
	tsb $3F.b		; 04 3F
	bmi  63.b		; 30 3F
	brk $7F.b		; 00 7F
	brk $FD.b		; 00 FD
	ora ($F4.b,X)		; 01 F4
	tsb $7F.b		; 04 7F
	bra  31.b		; 80 1F
	rts		; 60

	adc $04FB80.l,X		; 7F 80 FB 04
	inc $FF01.w,X		; FE 01 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora ($8A.b,X)		; 01 8A
	txa		; 8A
	dec $46.b		; C6 46
	.db $82, $82, $00		; 82 82 00
	tsb $8D80.w		; 0C 80 8D
	ldy #$E9A1.w		; A0 A1 E9
	sbc #$EDED.w		; E9 ED ED
	adc $B8CE.w,X		; 7D CE B8
	ror $38C0.w,X		; 7E C0 38
	sbc ($10.b,X)		; E1 10
	sbc ($01.b,S),Y		; F3 01
	adc [$82.b],Y		; 77 82
	cmp [$A1.b],Y		; D7 A1
	dec $B2E3.w,X		; DE E3 B2
	.db $82, $44, $44		; 82 44 44
	bra -128.b		; 80 80
	cpy #$61C0.w		; C0 C0 61
	adc ($02.b,X)		; 61 02
	.db $82, $00, $A1		; 82 00 A1
	bra -29.b		; 80 E3
	cmp $38.b		; C5 38
	cmp [$A8.b],Y		; D7 A8
	adc ($CC.b,S),Y		; 73 CC
	and $037E.w,Y		; 39 7E 03
	bit $0003.w,X		; 3C 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sed		; F8
	dec A		; 3A
	adc $3C29.w,Y		; 79 29 3C
	tsb $0606.w		; 0C 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $009360.l		; 0F 60 93 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FC.b		; 00 FC
	brk $EF.b		; 00 EF
	brk $C3.b		; 00 C3
	brk $80.b		; 00 80
	brk $03.b		; 00 03
	sbc ($00.b,S),Y		; F3 00
	jmp ($0300.w)		; 6C 00 03
	tsb $000C.w		; 0C 0C 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	bit $3F78.w,X		; 3C 78 3F
	jmp ($7E3F.w,X)		; 7C 3F 7E
	and $7BFE3D.l,X		; 3F 3D FE 7B
	jsr ($7FFE.w,X)		; FC FE 7F
	xce		; FB
	adc $3E003C.l,X		; 7F 3C 00 3E
	brk $2F.b		; 00 2F
	bpl  47.b		; 10 2F
	bpl -50.b		; 10 CE
	bmi -36.b		; 30 DC
	jsr $205F.w		; 20 5F 20
	adc $F33F00.l,X		; 7F 00 3F F3
	ora $E779EB.l,X		; 1F EB 79 E7
	sbc $0A.b,X		; F5 0A
	sbc $6106.w,X		; FD 06 61
	stx $E2.b		; 86 E2
	sty $97.b		; 84 97
	tad		; 5B
	phk		; 4B
	rti		; 40

	ora ($00.b,S),Y		; 13 00
	sta ($80.b,S),Y		; 93 80
	trb $F808.w		; 1C 08 F8
	brk $7C.b		; 00 7C
	trb $18F9.w		; 1C F9 18
	rts		; 60

	brk $C0.b		; 00 C0
	asl $3F80.w,X		; 1E 80 3F
	ora ($7F.b,X)		; 01 7F
	ora $FF.b,S		; 03 FF
	asl $FE.b		; 06 FE
	ora ($FF.b,X)		; 01 FF
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	dec $06.b		; C6 06
	stx $9C0E.w		; 8E 0E 9C
	stz $1819.w		; 9C 19 18
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $0838.w		; 20 38 08
	asl $FFFC.w		; 0E FC FF
	ora ($FE.b,X)		; 01 FE
	ora $7C.b,S		; 03 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne  16.b		; D0 10
	pea $0204.w		; F4 04 02
	cop $7C.b		; 02 7C
	jmp ($0000.w,X)		; 7C 00 00
	ror $3C39.w,X		; 7E 39 3C
	ora $0E.b,S		; 03 0E
	ora $0C07.w,Y		; 19 07 0C
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bpl  60.b		; 10 3C
	ora $03.b,S		; 03 03
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bvs -128.b		; 70 80
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ldy #$4020.w		; A0 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7B.b,X		; 35 7B
	rol $0F.b,X		; 36 0F
	phd		; 0B
	ora [$06.b],Y		; 17 06
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	bcs -65.b		; B0 BF
	cpy #$E0DF.w		; C0 DF E0
	cmp $C03FE0.l,X		; DF E0 3F C0
	sbc [$08.b],Y		; F7 08
	sbc $047B70.l,X		; FF 70 7B 04
	lda [$07.b],Y		; B7 07
	dec $ED1E.w,X		; DE 1E ED
	ora $03E3.w		; 0D E3 03
	cmp $03.b,S		; C3 03
	ora ($0D.b,X)		; 01 0D
	jsr $0078.w		; 20 78 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	clc		; 18
	ror $3C.b		; 66 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $3C.b		; 24 3C
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	plp		; 28
	bpl  48.b		; 10 30
	rti		; 40

	bmi  72.b		; 30 48
	php		; 08
	stz $1C.b,X		; 74 1C
	plx		; FA
	ror $00FD.w,X		; 7E FD 00
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $48.b		; 00 48
	brk $74.b		; 00 74
	brk $FA.b		; 00 FA
	brk $FD.b		; 00 FD
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
	cpy #$E098.w		; C0 98 E0
	and $887BC0.l,X		; 3F C0 7B 88
	inc $08.b,X		; F6 08
	asl $0702.w,X		; 1E 02 07
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bra -128.b		; 80 80
	tsb $00.b		; 04 00
	ora #$0108.w		; 09 08 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $07.b		; 04 07
	trb $688F.w		; 1C 8F 68
	inc $F830.w,X		; FE 30 F8
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sty $FE78.w		; 8C 78 FE
	trb $06FF.w		; 1C FF 06
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $FA1FD0.l,X		; FF D0 1F FA
	ora $78.b,S		; 03 78
	php		; 08
	sty $84.b		; 84 84
.ACCU 8
	sep #$E2		; E2 E2
	and $0E39.w,Y		; 39 39 0E
	asl $8383.w		; 0E 83 83
	inx		; E8
	php		; 08
	sbc $0001.w,X		; FD 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sec		; 38
	eor $5E.b		; 45 5E
	lda ($00.b),Y		; B1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	brk $B1.b		; 00 B1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	inc A		; 1A
	tsb $FD.b		; 04 FD
	asl $679A.w		; 0E 9A 67
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	asl $780B.w,X		; 1E 0B 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	bpl -12.b		; 10 F4
	clv		; B8
	stx $F8.b		; 86 F8
	ora $C4.b,S		; 03 C4
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	jsr $047C.w		; 20 7C 04
	inc $FF02.w,X		; FE 02 FF
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bne -56.b		; D0 C8
	iny		; C8
	inx		; E8
	xba		; EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $3F00.w,Y		; 19 00 3F
	brk $D8.b		; 00 D8
	brk $2F.b		; 00 2F
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	and [$00.b]		; 27 00
	bne  63.b		; D0 3F
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora ($03.b,X)		; 01 03
	ora ($FF.b,X)		; 01 FF
	ora ($FC.b,X)		; 01 FC
	ora $04.b,S		; 03 04
	ora $FC.b,S		; 03 FC
	ora $3C.b,S		; 03 3C
	jsr ($FCFC.w,X)		; FC FC FC
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($03FC.w,X)		; FC FC 03
	ora $00.b,S		; 03 00
	sed		; F8
	sed		; F8
	sed		; F8
	jsr ($7FFF.w,X)		; FC FF 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $C000.w,X		; FE 00 C0
	ora $03.b,S		; 03 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $9F03.w		; 0E 03 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	tsb $9F.b		; 04 9F
	jsr $E03F.w		; 20 3F E0
	adc $00FFC0.l,X		; 7F C0 FF 00
	sbc $0CF708.l,X		; FF 08 F7 0C
	jsr ($FF03.w,X)		; FC 03 FF
	rti		; 40

	ora $0F8F0F.l		; 0F 0F 8F 0F
	ora $27A70F.l		; 0F 0F A7 27
	eor $4B.b,S		; 43 4B
	cpy #$80DC.w		; C0 DC 80
	lda [$80.b]		; A7 80
	cmp ($7F.b,S),Y		; D3 7F
	lda $2FBF7C.l,X		; BF 7C BF 2F
	lsr $2F1F.w,X		; 5E 1F 2F
	ora $0C130F.l,X		; 1F 0F 13 0C
	ora $000310.l		; 0F 10 03 00
	lda #$16.b		; A9 16
	lda ($0C.b,S),Y		; B3 0C
	phy		; 5A
	tsb $2B.b		; 04 2B
	tsb $0D.b		; 04 0D
	cop $0C.b		; 02 0C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	jmp.w [$DEB9]		; DC B9 DE
	asl $DCFF.w,X		; 1E FF DC
	and $77FFBE.l,X		; 3F BE FF 77
	xce		; FB
	sbc $02F100.l,X		; FF 00 F1 02
	jmp.w [$DE00]		; DC 00 DE
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $F0.b		; 00 F0
	lda $63B8E2.l		; AF E2 B8 63
	clv		; B8
	cmp [$3C.b]		; C7 3C
	sbc ($0E.b)		; F2 0E
	rts		; 60

	sta $0023C0.l		; 8F C0 23 00
	cpy #$A000.w		; C0 00 A0
	ora [$A0.b]		; 07 A0
	and $A80BA8.l		; 2F A8 0B A8
	ora $832C.w		; 0D 2C 83
	ora $20.b,S		; 03 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	clc		; 18
	sbc $00C700.l,X		; FF 00 C7 00
	ror $F810.w,X		; 7E 10 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	bra  12.b		; 80 0C
	jsr ($7F00.w,X)		; FC 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $007F00.l,X		; FF 00 7F 00
	adc ($70.b,S),Y		; 73 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ror $01F0.w,X		; 7E F0 01
	adc $077E.w,Y		; 79 7E 07
	sed		; F8
	ror $3F01.w,X		; 7E 01 3F
	brk $1B.b		; 00 1B
	brk $08.b		; 00 08
	brk $B0.b		; 00 B0
	bmi  -2.b		; 30 FE
	brk $84.b		; 00 84
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	lda $7F.b,S		; A3 7F
	sta [$CF.b]		; 87 CF
	bit $B7.b,X		; 34 B7
	ply		; 7A
	adc $FE7BFA.l,X		; 7F FA 7B FE
	adc $BF7FFE.l,X		; 7F FE 7F BF
	ldy #$8000.w		; A0 00 80
	brk $32.b		; 00 32
	brk $7A.b		; 00 7A
	brk $FA.b		; 00 FA
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $AB.b		; 00 AB
	trb $61.b		; 14 61
	lda $FDFDEA.l,X		; BF EA FD FD
	asl $FD.b		; 06 FD
	asl $7B.b		; 06 7B
	sty $3CC3.w		; 8C C3 3C
	cmp [$38.b],Y		; D7 38
	eor $43AE.w,X		; 5D AE 43
	brk $01.b		; 00 01
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	brk $38.b		; 00 38
	brk $AE.b		; 00 AE
	brk $2E.b		; 00 2E
	cpx #$81BD.w		; E0 BD 81
	inc $07.b,X		; F6 07
	clc		; 18
	ora $00FEE0.l,X		; 1F E0 FE 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $FE.b		; 00 FE
	eor $007E40.l,X		; 5F 40 7E 00
	sbc $E601.w,Y		; F9 01 E6
	asl $18.b		; 06 18
	clc		; 18
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $46.b		; 00 46
	sei		; 78
	ora [$FC.b]		; 07 FC
	ora $CE.b,S		; 03 CE
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	lda $888B38.l,X		; BF 38 8B 88
	ora $04.b		; 05 04
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $E96FE1.l,X		; FF E1 6F E9
	ora $0E61EF.l		; 0F EF 61 0E
	ora ($C0.b,S),Y		; 13 C0
	ora $CC20.w,X		; 1D 20 CC
	cmp $0D0D.w		; CD 0D 0D
	sbc $E5.b		; E5 E5
	ora #$F9.b		; 09 F9
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $2E.b		; 00 2E
	cpy #$A802.w		; C0 02 A8
	bne  -1.b		; D0 FF
	bcs -16.b		; B0 F0
	ldy #$60FE.w		; A0 FE 60
	sbc $C02040.l,X		; FF 40 20 C0
	sbc $004700.l,X		; FF 00 47 00
	brk $D7.b		; 00 D7
	ldy #$80B0.w		; A0 B0 80
	lda $006F4E.l		; AF 4E 6F 00
	rti		; 40

	brk $DF.b		; 00 DF
	ora [$C7.b]		; 07 C7
	ora ($B9.b,X)		; 01 B9
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $1DFFFF.l,X		; FF FF FF 1D
	sbc $E2.b,S		; E3 E2
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs   0.b		; 70 00
	brk $FF.b		; 00 FF
	sbc $00FFFB.l,X		; FF FB FF 00
	sbc $00.b,S		; E3 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$E0F0.w		; C0 F0 E0
	beq -32.b		; F0 E0
	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$E0E0.w		; E0 E0 E0
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$0018.w		; C0 18 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$F020.w		; E0 20 F0
	bpl   0.b		; 10 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $87.b		; 00 87
	brk $1E.b		; 00 1E
	cpx #$1EE1.w		; E0 E1 1E
	jsr ($FE00.w,X)		; FC 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $79.b		; 00 79
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1C.b,X)		; 01 1C
	ora $54.b,S		; 03 54
	cop $2C.b		; 02 2C
	brk $DF.b		; 00 DF
	ora ($3E.b,X)		; 01 3E
	ora ($FE.b,X)		; 01 FE
	ora ($C2.b,X)		; 01 C2
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	rol A		; 2A
	phd		; 0B
	cld		; D8
	clc		; 18
	sec		; 38
	and $C1FD.w,X		; 3D FD C1
	cmp ($00.b,X)		; C1 00
	bit $FF00.w,X		; 3C 00 FF
	sbc $FF01.w,X		; FD 01 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	inc $FF00.w,X		; FE 00 FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	bpl -24.b		; 10 E8
	ora $2F80BF.l		; 0F BF 80 2F
	cpx #$780A.w		; E0 0A 78
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	cpx #$F400.w		; E0 00 F4
	tsb $7F.b		; 04 7F
	brk $5F.b		; 00 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	brk $0F.b		; 00 0F
	beq -17.b		; F0 EF
	adc ($6F.b),Y		; 71 6F
	adc ($DC.b),Y		; 71 DC
	sbc $3F.b,S		; E3 3F
	cpy #$001F.w		; C0 1F 00
	brk $00.b		; 00 00
	clc		; 18
	trb $7070.w		; 1C 70 70
	sta ($11.b),Y		; 91 11
	sta ($11.b),Y		; 91 11
	jsr $0023.w		; 20 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	rti		; 40

	inc $F4C0.w,X		; FE C0 F4
	cpy #$C0A0.w		; C0 A0 C0
	ldy #$E8C0.w		; A0 C0 E8
	inx		; E8
	cpy $8CCC.w		; CC CC 8C
	sty $6C0C.w		; 8C 0C 6C
	sty $E4.b		; 84 E4
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora [$0C.b]		; 07 0C
	ora $301E18.l		; 0F 18 1E 30
	sbc $0021.w		; ED 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$38A0.w		; E0 A0 38
	inx		; E8
	tsb $0774.w		; 0C 74 07
	ora $07C1.w,X		; 1D C1 07
	beq   0.b		; F0 00
	ora $400000.l,X		; 1F 00 00 40
	rti		; 40

	bne  16.b		; D0 10
	beq   0.b		; F0 00
	plx		; FA
	cop $FE.b		; 02 FE
	cpy #$303F.w		; C0 3F 30
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cli		; 58
	rts		; 60

	adc ($8C.b)		; 72 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$C020.w		; A0 20 C0
	bra   0.b		; 80 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	tsb $180F.w		; 0C 0F 18
	ora $603C30.l,X		; 1F 30 3C 60
	tda		; 7B
	cmp $F0.b,S		; C3 F0
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3C.b		; 00 3C
	brk $7F.b		; 00 7F
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$4030.w		; C0 30 40
	clc		; 18
	jsr $9008.w		; 20 08 90
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $10F0.w		; 20 F0 10
	sed		; F8
	php		; 08
	sei		; 78
	brk $05.b		; 00 05
	cop $07.b		; 02 07
	ora ($04.b,X)		; 01 04
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	asl $07.b		; 06 07
	tsb $080F.w		; 0C 0F 08
	ora $020011.l		; 0F 11 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $FF00.w		; 0E 00 FF
	jsr $D0EF.w		; 20 EF D0
	and $F0CFE0.l,X		; 3F E0 CF F0
	cmp [$74.b]		; C7 74
	cmp $DE8F6C.l		; CF 6C 8F DE
	ora $2707DE.l		; 0F DE 07 27
	cpy #$07D0.w		; C0 D0 07
	and [$03.b]		; 27 03
	ora ($81.b,S),Y		; 13 81
	ora $1D85.w,X		; 1D 85 1D
	lsr $7E.b		; 46 7E
	stx $BE.b		; 86 BE
	adc $7DC0.w,X		; 7D C0 7D
	bra  -3.b		; 80 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	bmi  -4.b		; 30 FC
	bmi  -4.b		; 30 FC
	sec		; 38
	jmp ($0018.w,X)		; 7C 18 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	sec		; 38
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	bpl  56.b		; 10 38
	sbc ($06.b,X)		; E1 06
	sbc [$01.b],Y		; F7 01
	sbc $F303.w,X		; FD 03 F3
	asl $F7.b		; 06 F7
	brk $FD.b		; 00 FD
	brk $7D.b		; 00 7D
	brk $7D.b		; 00 7D
	brk $00.b		; 00 00
	asl $0D01.w,X		; 1E 01 0D
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	brk $08.b		; 00 08
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	ora ($00.b,X)		; 01 00
	ora $04.b,S		; 03 04
	ora $1703.w		; 0D 03 17
	ora $170F1F.l		; 0F 1F 0F 17
	ora $0E170F.l		; 0F 0F 17 0E
	ora [$00.b],Y		; 17 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $7F.b		; 00 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5FFFF.l,X		; FF FF FF F5
	inc $FDFB.w,X		; FE FB FD
	sbc $B7E5.w,Y		; F9 E5 B7
	adc $40BF.w		; 6D BF 40
	and $708FC0.l,X		; 3F C0 8F 70
	lda $00FE40.l,X		; BF 40 FE 00
	jsr ($E000.w,X)		; FC 00 E0
	asl $64.b		; 06 64
	tsb $BB.b		; 04 BB
	brk $BD.b		; 00 BD
	brk $DE.b		; 00 DE
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $F7.b		; 00 F7
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	brk $99.b		; 00 99
	cmp $DE9C.w,X		; DD 9C DE
	dec $CFEF.w		; CE EF CF
	sbc $70F6E6.l		; EF E6 F6 70
	sei		; 78
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bvs -96.b		; 70 A0
	sec		; 38
	inx		; E8
	stx $0000.w		; 8E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$D020.w		; A0 20 D0
	bpl 116.b		; 10 74
	tsb $5F.b		; 04 5F
	cpy #$00FE.w		; C0 FE 00
	sbc ($01.b),Y		; F1 01
	tsb $07.b		; 04 07
	bmi  63.b		; 30 3F
	cpy #$00FC.w		; C0 FC 00
	beq   0.b		; F0 00
	cpy #$80BF.w		; C0 BF 80
	sbc $00FE00.l,X		; FF 00 FE 00
	plx		; FA
	cop $C8.b		; 02 C8
	php		; 08
	jsr $8020.w		; 20 20 80
	bra   0.b		; 80 00
	brk $90.b		; 00 90
	ora $007940.l,X		; 1F 40 79 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc #$09.b		; E9 09
	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	bra 126.b		; 80 7E
	ldy #$60F9.w		; A0 F9 60
	sbc $80F2C0.l,X		; FF C0 F2 80
	cmp $EE00.w,X		; DD 00 EE
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	cpy #$B120.w		; C0 20 B1
	eor ($77.b,X)		; 41 77
	bra -32.b		; 80 E0
	bpl -35.b		; 10 DD
	tsb $26AE.w		; 0C AE 26
	and [$93.b],Y		; 37 93
	stp		; DB
	ply		; 7A
	ora ($EC.b,S),Y		; 13 EC
	ora $120FF0.l,X		; 1F F0 0F 12
	asl $08F9.w		; 0E F9 08
	jsr ($7A04.w,X)		; FC 04 7A
	asl $99.b		; 06 99
	ora [$0D.b]		; 07 0D
	sta ($C2.b,X)		; 81 C2
	rep #$81		; C2 81
	sta ($0D.b,X)		; 81 0D
	cpx $E0E7.w		; EC E7 E0
	adc ($70.b,S),Y		; 73 70
	ora $84.b		; 05 84
	stx $E6.b		; 86 E6
	brk $03.b		; 00 03
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	cpx #$F000.w		; E0 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	bra  -1.b		; 80 FF
	brk $39.b		; 00 39
	brk $0F.b		; 00 0F
	ora $07.b,S		; 03 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora $A01ED0.l		; 0F D0 1E A0
	bit $7840.w,X		; 3C 40 78
	bra -16.b		; 80 F0
	brk $E3.b		; 00 E3
	cop $FE.b		; 02 FE
	phd		; 0B
	sed		; F8
	jsr ($E80C.w,X)		; FC 0C E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	sta ($81.b,X)		; 81 81
	ora $370C.w		; 0D 0C 37
	bmi  72.b		; 30 48
	cpy $20.b		; C4 20
.INDEX 8
	sep #$10		; E2 10
	adc $113F00.l,X		; 7F 00 3F 11
	sbc ($5F.b),Y		; F1 5F
	cpy #$FB.b		; C0 FB
	ora $F0.b,S		; 03 F0
	ora [$BC.b]		; 07 BC
	sty $5E.b		; 84 5E
	.db $42, $20		; 42 20
	jsr $0E0E.w		; 20 0E 0E
	ror $BF60.w		; 6E 60 BF
	bra  -4.b		; 80 FC
	brk $FF.b		; 00 FF
	ora [$1E.b]		; 07 1E
	ora ($1C.b,S),Y		; 13 1C
	and [$38.b]		; 27 38
	rol $4C20.w		; 2E 20 4C
	rts		; 60

	iny		; C8
	adc ($C8.b,X)		; 61 C8
	adc $C8.b		; 65 C8
	adc $C8.b		; 65 C8
	ora $1A01.w		; 0D 01 1A
	cop $14.b		; 02 14
	tsb $38.b		; 04 38
	php		; 08
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	lsr $C59E.w		; 4E 9E C5
	ora $07E3.w,X		; 1D E3 07
	eor [$0F.b],Y		; 57 0F
	eor [$0F.b],Y		; 57 0F
	ora $07AF07.l		; 0F 07 AF 07
	nop		; EA
	ora [$00.b]		; 07 00
	and $013F00.l,X		; 3F 00 3F 01
	ora $033F03.l,X		; 1F 03 3F 03
	and $023F03.l,X		; 3F 03 3F 02
	ora $3C1F00.l,X		; 1F 00 1F 3C
	clc		; 18
	bit $3E18.w,X		; 3C 18 3E
	php		; 08
	ora $061F0C.l,X		; 1F 0C 1F 06
	ora $000F05.l,X		; 1F 05 0F 00
	brk $00.b		; 00 00
	clc		; 18
	sec		; 38
	php		; 08
	clc		; 18
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	tsb $0F.b		; 04 0F
	tsb $0D.b		; 04 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $7D00.w,X		; 7D 00 7D
	brk $06.b		; 00 06
	brk $83.b		; 00 83
	brk $C1.b		; 00 C1
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	ldy #$F0.b		; A0 F0
	brk $04.b		; 00 04
	asl $04.b		; 06 04
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	ldy #$00.b		; A0 00
	brk $3E.b		; 00 3E
	ora $3D5B.w		; 0D 5B 3D
	adc $7FBE.w,X		; 7D BE 7F
	lda $303F5F.l,X		; BF 5F 3F 30
	ora $3F003F.l,X		; 1F 3F 00 3F
	asl $000D.w		; 0E 0D 00
	and $BE00.w,X		; 3D 00 BE
	brk $BF.b		; 00 BF
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $E17F.w		; 0E 7F E1
	sbc $F16EF1.l		; EF F1 6E F1
	and $9F66D9.l		; 2F D9 66 9F
	sed		; F8
	asl $FA.b		; 06 FA
	tsb $02F9.w		; 0C F9 02
	inc $EE00.w		; EE 00 EE
	brk $EE.b		; 00 EE
	brk $C6.b		; 00 C6
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$74.b		; E0 74
	bvs 122.b		; 70 7A
	cmp $3E.b,S		; C3 3E
	cpx #$0F.b		; E0 0F
	sed		; F8
	eor ($3C.b,X)		; 41 3C
	bvs  15.b		; 70 0F
	bmi  15.b		; 30 0F
	dec A		; 3A
	tsb $2E.b		; 04 2E
	bpl -67.b		; 10 BD
	sta ($DF.b,X)		; 81 DF
	cpy #$37.b		; C0 37
	bmi  15.b		; 30 0F
	tsb $0303.w		; 0C 03 03
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	bpl  16.b		; 10 10
	and $0C1710.l		; 2F 10 17 0C
	ora $001F00.l,X		; 1F 00 1F 00
	tas		; 1B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $03.b		; E4 03
	jsr ($F803.w,X)		; FC 03 F8
	asl $70.b		; 06 70
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	xce		; FB
	sed		; F8
	sed		; F8
	jsr $0020.w		; 20 20 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $83.b		; 00 83
	jmp ($30FF.w,X)		; 7C FF 30
	inc $F000.w,X		; FE 00 F0
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
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	bpl -48.b		; 10 D0
	cpx #$F0.b		; E0 F0
	cpx #$30.b		; E0 30
	iny		; C8
	sed		; F8
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C8.b		; 00 C8
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	bvs -40.b		; 70 D8
	jsr $8060.w		; 20 60 80
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	jsr $0000.w		; 20 00 00
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
	sec		; 38
	stz $9A.b		; 64 9A
	lda $00007C.l,X		; BF 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $9A.b		; 00 9A
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra  32.b		; 80 20
	rti		; 40

	bcs   0.b		; B0 00
	sed		; F8
	brk $FC.b		; 00 FC
	php		; 08
	pea $FC08.w		; F4 08 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	iny		; C8
	cpx #$E8.b		; E0 E8
	cpx #$E0.b		; E0 E0
	ora [$00.b]		; 07 00
	ora #$06.b		; 09 06
	ora $003F0C.l,X		; 1F 0C 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $20FF20.l,X		; FF 20 FF 20
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($0D.b,X)		; 01 0D
	cop $02.b		; 02 02
	and $4F4F2F.l		; 2F 2F 4F 4F
	ora $0E4E0F.l		; 0F 0F 4E 0E
	cpy #$00.b		; C0 00
	sbc $07FC00.l,X		; FF 00 FC 07
	sbc $07FF07.l,X		; FF 07 FF 07
	sbc $87FE07.l,X		; FF 07 FE 87
	sbc $00FE.w,X		; FD FE 00
	brk $C0.b		; 00 C0
	cpy #$F0.b		; C0 F0
	sbc [$F0.b],Y		; F7 F0
	sbc [$77.b],Y		; F7 77
	adc [$76.b],Y		; 77 76
	adc [$84.b],Y		; 77 84
	sta [$F0.b]		; 87 F0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $5F780B.l		; 0F 0B 78 5F
	cpy #$4F.b		; C0 4F
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $17.b		; 02 17
	bpl -65.b		; 10 BF
	bra -65.b		; 80 BF
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	and $E02E.w,X		; 3D 2E E0
	adc $0EEB00.l,X		; 7F 00 EB 0E
	cmp ($1F.b,S),Y		; D3 1F
	and ($3F.b,X)		; 21 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	php		; 08
	eor $00FF40.l,X		; 5F 40 FF 00
	sbc $04.b,X		; F5 04
	inx		; E8
	php		; 08
	cmp ($12.b)		; D2 12
	ora $02.b		; 05 02
	asl $19.b		; 06 19
	ora $522F07.l,X		; 1F 07 2F 52
	adc $255F84.l,X		; 7F 84 5F 25
	and $2E5744.l,X		; 3F 44 57 2E
	cop $00.b		; 02 00
	clc		; 18
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $84.b		; 00 84
	brk $24.b		; 00 24
	brk $44.b		; 00 44
	brk $2E.b		; 00 2E
	brk $18.b		; 00 18
	cpx #$C8.b		; E0 C8
	stz $D4.b,X		; 74 D4
	inx		; E8
	xce		; FB
	tsb $0EF9.w		; 0C F9 0E
	sbc $1A.b,X		; F5 1A
	sty $7B.b		; 84 7B
	xce		; FB
	tsb $0020.w		; 0C 20 00
	sty $00.b		; 84 00
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	sbc ($00.b)		; F2 00
	sep #$00		; E2 00
	phd		; 0B
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $9A.b		; 00 9A
	tsb $8E7D.w		; 0C 7D 8E
	dec $00F7.w		; CE F7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $8E00.w		; 0D 00 8E
	asl $F7.b		; 06 F7
	brk $00.b		; 00 00
	sec		; 38
	brk $FC.b		; 00 FC
	ora $FC.b,S		; 03 FC
	ora $E2.b,S		; 03 E2
	ora ($1E.b,X)		; 01 1E
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	adc $63.b,S		; 63 63
	ora ($1D.b,X)		; 01 1D
	ora $FCFD.w,X		; 1D FD FC
	jsr ($0101.w,X)		; FC 01 01
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	stz $04.b,X		; 74 04
	rol $1F00.w,X		; 3E 00 1F
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	cpy #$D0.b		; C0 D0
	cpx #$E8.b		; E0 E8
	bvs -12.b		; 70 F4
	sei		; 78
.INDEX 8
	sep #$5C		; E2 5C
	eor $0A.b,X		; 55 0A
	ora $000808.l,X		; 1F 08 08 00
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	rts		; 60

	beq 112.b		; F0 70
	sei		; 78
	rti		; 40

	jmp $080A00.l		; 5C 00 0A 08
	php		; 08
	brk $00.b		; 00 00
	asl $78.b		; 06 78
	asl $1F21.w,X		; 1E 21 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $38.b		; 00 38
	sec		; 38
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$10.b		; E0 10
	beq   8.b		; F0 08
	jsr ($7E00.w,X)		; FC 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	and $061F0E.l,X		; 3F 0E 1F 06
	ora $030601.l		; 0F 01 06 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $98.b		; 00 98
	jsr $78B2.w		; 20 B2 78
	lda $F67E.w,X		; BD 7E F6
	ora $07033F.l		; 0F 3F 03 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bmi 124.b		; 30 7C
	bit $067E.w,X		; 3C 7E 06
	and $030703.l,X		; 3F 03 07 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	phd		; 0B
	ora $0B0507.l		; 0F 07 05 0B
	ora $04.b,S		; 03 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	phd		; 0B
	brk $03.b		; 00 03
	tsb $0B.b		; 04 0B
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	dex		; CA
	cli		; 58
	sty $40.b		; 84 40
	bra -32.b		; 80 E0
	bra -80.b		; 80 B0
	iny		; C8
	sed		; F8
	tsb $08.b		; 04 08
	sty $08.b		; 84 08
	bpl -54.b		; 10 CA
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C8.b		; 00 C8
	brk $04.b		; 00 04
	brk $84.b		; 00 84
	brk $10.b		; 00 10
	brk $BF.b		; 00 BF
	ora ($7F.b,X)		; 01 7F
	ora $F8.b,S		; 03 F8
	ora [$FF.b]		; 07 FF
	brk $F2.b		; 00 F2
	php		; 08
	sbc $FC14.w,Y		; F9 14 FC
	pld		; 2B
	xce		; FB
	and [$CD.b],Y		; 37 CD
	ora $2BA8.w		; 0D A8 2B
	rts		; 60

	adc [$60.b]		; 67 60
	adc [$40.b]		; 67 40
	eor $1610.w		; 4D 10 16
	rol A		; 2A
	rol A		; 2A
	bmi  48.b		; 30 30
	sbc ($FC.b,S),Y		; F3 FC
	sbc #$F0.b		; E9 F0
	ora [$E0.b],Y		; 17 E0
	cmp $003F00.l		; CF 00 3F 00
	adc [$00.b]		; 67 00
	sta $00.b,S		; 83 00
	ora ($80.b,X)		; 01 80
	cpx #$FE.b		; E0 FE
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1EE0.w		; 20 E0 1E
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($F080.w,X)		; FC 80 F0
	bcc -98.b		; 90 9E
	ply		; 7A
	ora $7E.b,S		; 03 7E
	brk $DF.b		; 00 DF
	cpy #$E1.b		; C0 E1
	sbc ($7C.b,X)		; E1 7C
	jmp ($8080.w,X)		; 7C 80 80
	rts		; 60

	rts		; 60

	pla		; 68
	php		; 08
	sbc $FF01.w,X		; FD 01 FF
	brk $81.b		; 00 81
	sbc ($00.b,S),Y		; F3 00
	cmp $00.b,S		; C3 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq  64.b		; F0 40
	rti		; 40

	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	adc $5F3F3F.l,X		; 7F 3F 3F 5F
	and $2F1F1F.l		; 2F 1F 1F 2F
	ora [$0F.b],Y		; 17 0F
	ora #$17.b		; 09 17
	ora $070000.l		; 0F 00 00 07
	tsa		; 3B
	tsb $58.b		; 04 58
	ora [$11.b]		; 07 11
	asl $042B.w		; 0E 2B 04
	ora $1702.w		; 0D 02 17
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3D.b		; 00 3D
	dec $FFFF.w,X		; DE FF FF
	sbc $FF71FF.l,X		; FF FF 71 FF
	jsr $FEFF.w		; 20 FF FE
	sta $7FFF7E.l		; 8F 7E FF 7F
	sbc $FF00DE.l,X		; FF DE 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BD.b		; 00 BD
	inc $DC7B.w		; EE 7B DC
	inc $B8.b,X		; F6 B8
	sbc $609970.l		; EF 70 99 60
	inc $00.b		; E6 00
	tsa		; 3B
	brk $BD.b		; 00 BD
	brk $0C.b		; 00 0C
	inc $DC18.w		; EE 18 DC
	brk $B9.b		; 00 B9
	ora ($71.b,X)		; 01 71
	brk $66.b		; 00 66
	cop $DB.b		; 02 DB
	ora #$CD.b		; 09 CD
	tsb $004E.w		; 0C 4E 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($03.b,X)		; 01 03
	ora ($FF.b,X)		; 01 FF
	ora ($7F.b,X)		; 01 7F
	ora ($9C.b,X)		; 01 9C
	ora $E4.b,S		; 03 E4
	ora $00.b,S		; 03 00
	sbc $00FEFE.l,X		; FF FE FE 00
	brk $00.b		; 00 00
	jsr ($7C7C.w,X)		; FC 7C 7C
	trb $839C.w		; 1C 9C 83
	sbc $E0.b,S		; E3 E0
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	beq  24.b		; F0 18
	inx		; E8
	sty $84F0.w		; 8C F0 84
	jmp ($38C6.w,X)		; 7C C6 38
.INDEX 8
	sep #$1C		; E2 1C
	adc ($0E.b),Y		; 71 0E
	and $1C06.w,Y		; 39 06 1C
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra  94.b		; 80 5E
	.db $42, $2E		; 42 2E
	jsr $1117.w		; 20 17 11
	phd		; 0B
	php		; 08
	adc $808F00.l,X		; 7F 00 8F 80
	sei		; 78
	sed		; F8
	ora $FF.b,S		; 03 FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $007F00.l,X		; FF 00 7F 00
	sta [$80.b]		; 87 80
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	trb $07F4.w		; 1C F4 07
	bit $9E01.w,X		; 3C 01 9E
	bra  31.b		; 80 1F
	sed		; F8
	ora [$3C.b]		; 07 3C
	ora $0E.b,S		; 03 0E
	ora ($07.b,X)		; 01 07
	inx		; E8
	php		; 08
	plx		; FA
	cop $FF.b		; 02 FF
	ora ($7F.b,X)		; 01 7F
	brk $27.b		; 00 27
	jsr $080B.w		; 20 0B 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora $0E.b,S		; 03 0E
	ora ($07.b,X)		; 01 07
	brk $83.b		; 00 83
	bra -63.b		; 80 C1
	ora ($60.b,X)		; 01 60
	bra  48.b		; 80 30
	cpy #$18.b		; C0 18
	cpx #$0C.b		; E0 0C
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	eor ($B8.b,S),Y		; 53 B8
	adc ($98.b,S),Y		; 73 98
	adc [$8C.b],Y		; 77 8C
	eor $A6.b,S		; 43 A6
	sta ($43.b,X)		; 81 43
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$30.b],Y		; 97 30
	sta [$10.b]		; 87 10
	sta $00.b,S		; 83 00
	lda ($00.b,X)		; A1 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$10.b		; C0 10
	cpx #$88.b		; E0 88
	sei		; 78
	cpy $6E3D.w		; CC 3D 6E
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	cpx #$80.b		; E0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$10.b		; E0 10
	beq   8.b		; F0 08
	jmp ($3E00.w,X)		; 7C 00 3E
	brk $3A.b		; 00 3A
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bvs  15.b		; 70 0F
	sec		; 38
	ora [$1C.b]		; 07 1C
	ora $0E.b,S		; 03 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $101720.l		; 2F 20 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$C0.b]		; 07 C0
	ora [$60.b]		; 07 60
	sta [$30.b]		; 87 30
	cmp [$18.b]		; C7 18
	sep #$88		; E2 88
	beq -60.b		; F0 C4
	bit $F6.b,X		; 34 F6
	ora $813E.w		; 0D 3E 81
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	sei		; 78
	php		; 08
	sec		; 38
	brk $48.b		; 00 48
	rti		; 40

	ora ($12.b)		; 12 12
	inc $F700.w		; EE 00 F7
	brk $FB.b		; 00 FB
	brk $DD.b		; 00 DD
	brk $8E.b		; 00 8E
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	and [$13.b],Y		; 37 13
	tas		; 1B
	ora #$0D.b		; 09 0D
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $78.b		; 00 78
	brk $B0.b		; 00 B0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs  48.b		; 70 30
	bcs -128.b		; B0 80
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	rti		; 40

	tad		; 5B
	jsr $1C2E.w		; 20 2E 1C
	inc A		; 1A
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	sbc $007F04.l		; EF 04 7F 00
	rol $1E00.w,X		; 3E 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	adc ($40.b,X)		; 61 40
	ora $00.b,S		; 03 00
	sta $00.b,S		; 83 00
	eor [$30.b],Y		; 57 30
	adc $004F20.l		; 6F 20 4F 00
	cmp $809F40.l,X		; DF 40 9F 80
	stz $FCFE.w,X		; 9E FE FC
	jsr ($FC7C.w,X)		; FC 7C FC
	php		; 08
	sei		; 78
	bpl 112.b		; 10 70
	bmi 112.b		; 30 70
	jsr $60E0.w		; 20 E0 60
	cpx #$FD.b		; E0 FD
	cop $CF.b		; 02 CF
	bmi  -5.b		; 30 FB
	jmp ($EF7F.w,X)		; 7C 7F EF
	lda $87FFC7.l,X		; BF C7 FF 87
	sbc $CF7787.l,X		; FF 87 77 CF
	asl $06.b		; 06 06
	bmi  48.b		; 30 30
	jmp ($FF7C.w,X)		; 7C 7C FF
	sbc $87C7C7.l,X		; FF C7 C7 87
	sta [$87.b]		; 87 87
	sta [$CF.b]		; 87 CF
	cmp $9E00FC.l		; CF FC 00 9E
	rts		; 60

	sbc $B0FFF0.l,X		; FF F0 FF B0
	sbc $08FF18.l		; EF 18 FF 08
	sbc $987708.l,X		; FF 08 77 98
	ora $03.b,S		; 03 03
	adc ($61.b,X)		; 61 61
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tya		; 98
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $1C00.w		; 0C 00 1C
	php		; 08
	bit $10.b,X		; 34 10
	jsl $245714.l		; 22 14 57 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	php		; 08
	bit $3E08.w,X		; 3C 08 3E
	php		; 08
	adc $331033.l,X		; 7F 33 10 33
	bpl  57.b		; 10 39
	brk $39.b		; 00 39
	bpl  97.b		; 10 61
	jsr $40C1.w		; 20 C1 40
	sta $7910.w,Y		; 99 10 79
	ldy #$0C.b		; A0 0C
	bit $3C0C.w,X		; 3C 0C 3C
	asl $3E.b		; 06 3E
	asl $3E.b		; 06 3E
	asl $3E7E.w,X		; 1E 7E 3E
	inc $FE66.w,X		; FE 66 FE
	asl $FE.b		; 06 FE
	sbc $63FF63.l,X		; FF 63 FF 63
	sbc $63FF63.l,X		; FF 63 FF 63
	ldx $FF63.w,Y		; BE 63 FF
	brk $BB.b		; 00 BB
	adc [$BB.b],Y		; 77 BB
	adc [$63.b],Y		; 77 63
	adc $63.b,S		; 63 63
	adc $63.b,S		; 63 63
	adc $63.b,S		; 63 63
	adc $63.b,S		; 63 63
	adc $00.b,S		; 63 00
	brk $77.b		; 00 77
	adc [$77.b],Y		; 77 77
	adc [$C4.b],Y		; 77 C4
	brk $CC.b		; 00 CC
	php		; 08
	dex		; CA
	brk $95.b		; 00 95
	cop $A7.b		; 02 A7
	cop $A6.b		; 02 A6
	cop $9D.b		; 02 9D
	tsb $99.b		; 04 99
	php		; 08
	sec		; 38
	bit $3C30.w,X		; 3C 30 3C
	bmi  58.b		; 30 3A
	rts		; 60

	adc [$40.b],Y		; 77 40
	adc [$41.b]		; 67 41
	adc [$62.b]		; 67 62
	adc $4D7F66.l,X		; 7F 66 7F 4D
	brk $45.b		; 00 45
	brk $58.b		; 00 58
	php		; 08
	jmp ($D624.w,X)		; 7C 24 D6
	.db $62, $A2, $40		; 62 A2 40
	dec $02.b		; C6 02
	sty $00.b		; 84 00
	and ($7E.b)		; 32 7E
	dec A		; 3A
	ror $7F27.w,X		; 7E 27 7F
	ora $7F.b,S		; 03 7F
	ora ($F7.b,X)		; 01 F7
	ora ($E3.b,X)		; 01 E3
	ora ($C7.b,X)		; 01 C7
	ora $87.b,S		; 03 87
	adc ($C1.b),Y		; 71 C1
	cmp $EB20.w,Y		; D9 20 EB
	and ($BA.b)		; 32 BA
	bvs -70.b		; 70 BA
	bvs -70.b		; 70 BA
	bvs -70.b		; 70 BA
	bvs -54.b		; 70 CA
	bmi -50.b		; 30 CE
	cmp $742726.l		; CF 26 27 74
	adc [$74.b],Y		; 77 74
	ror $74.b,X		; 76 74
	ror $74.b,X		; 76 74
	ror $74.b,X		; 76 74
	ror $34.b,X		; 76 34
	rol $00.b,X		; 36 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	brk $36.b		; 00 36
	cop $DC.b		; 02 DC
	bpl 101.b		; 10 65
	inx		; E8
	sbc $00.b		; E5 00
	lda ($10.b),Y		; B1 10
	sta ($00.b,S),Y		; 93 00
	eor ($80.b,S),Y		; 53 80
	ora ($03.b,X)		; 01 03
	ora ($37.b,X)		; 01 37
	and $FF.b,S		; 23 FF
	ora ($FE.b)		; 12 FE
	inc A		; 1A
	inc $BE0E.w,X		; FE 0E BE
	tsb $0D9C.w		; 0C 9C 0D
	cmp $18EF.w,X		; DD EF 18
	inc $18.b,X		; F6 18
	dec $ED30.w,X		; DE 30 ED
	and ($B9.b),Y		; 31 B9
	rts		; 60

	cld		; D8
	rts		; 60

	adc ($C1.b),Y		; 71 C1
	lda ($C2.b,S),Y		; B3 C2
	trb $391C.w		; 1C 1C 39
	and $3939.w,Y		; 39 39 39
	adc ($73.b)		; 72 73
	ror $77.b,X		; 76 77
	sbc [$E7.b]		; E7 E7
	inc $CCEF.w		; EE EF CC
	cmp $674126.l		; CF 26 41 67
	brk $63.b		; 00 63
	ldy #$FD.b		; A0 FD
	tsb $C9.b		; 04 C9
	brk $28.b		; 00 28
	brk $C8.b		; 00 C8
	bra -104.b		; 80 98
	php		; 08
	sta $99F9.w,Y		; 99 F9 99
	sbc $FC1C.w,Y		; F9 1C FC
	cop $FE.b		; 02 FE
	asl $CE.b		; 06 CE
	cmp [$EF.b]		; C7 EF
	ora [$CF.b]		; 07 CF
	ora [$9F.b]		; 07 9F
	lda ($C1.b),Y		; B1 C1
	sed		; F8
	cpy #$59.b		; C0 59
	sbc ($F9.b,X)		; E1 F9
	adc ($AC.b,X)		; 61 AC
	bvs  -4.b		; 70 FC
	bmi -36.b		; 30 DC
	bmi 116.b		; 30 74
	clc		; 18
	dec $E7CF.w		; CE CF E7
	sbc [$E6.b]		; E7 E6
	sbc [$F6.b]		; E7 F6
	sbc [$73.b],Y		; F7 73
	adc ($73.b,S),Y		; 73 73
	adc ($3B.b,S),Y		; 73 3B
	tsa		; 3B
	tyx		; BB
	tyx		; BB
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	bne  32.b		; D0 20
	beq  32.b		; F0 20
	inx		; E8
	jsr $08CC.w		; 20 CC 08
	jmp.w [$BC48]		; DC 48 BC
	php		; 08
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bpl  -8.b		; 10 F8
	bmi  -4.b		; 30 FC
	jsr $40FC.w		; 20 FC 40
	jsr ($0103.w,X)		; FC 03 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $010200.l		; 0F 00 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	eor $20E700.l		; 4F 00 E7 20
	and $00.b,S		; 23 00
	and ($10.b),Y		; 31 10
	lda ($00.b,X)		; A1 00
	cmp ($80.b,X)		; C1 80
	adc $FDE0.w,Y		; 79 E0 FD
	brk $B0.b		; 00 B0
	beq  24.b		; F0 18
	sed		; F8
	trb $0E3C.w		; 1C 3C 0E
	rol $BE1E.w,X		; 3E 1E BE
	rol $06FE.w,X		; 3E FE 06
	inc $FE02.w,X		; FE 02 FE
	lda $07FA7F.l,X		; BF 7F FA 07
	lda $78B770.l,X		; BF 70 B7 78
	sbc $30FF30.l,X		; FF 30 FF 30
	sbc $30FF30.l,X		; FF 30 FF 30
	sbc $0707FF.l,X		; FF FF 07 07
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	sbc $00FFF0.l		; EF F0 FF 00
	inc $6C70.w		; EE 70 6C
	beq  -8.b		; F0 F8
	rts		; 60

	sbc $FB60.w,Y		; F9 60 FB
	.db $62, $FA, $60		; 62 FA 60
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	adc ($71.b),Y		; 71 71
	sbc ($F3.b,S),Y		; F3 F3
	sbc [$F7.b],Y		; F7 F7
	ror $67.b		; 66 67
	stz $67.b		; 64 67
	stz $66.b		; 64 66
	ror $05.b,X		; 76 05
	iny		; C8
	ora $8F.b,S		; 03 8F
	asl $06.b		; 06 06
	cop $08.b		; 02 08
	brk $1E.b		; 00 1E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	adc $00CF04.l,X		; 7F 04 CF 00
	sta $070701.l		; 8F 01 07 07
	ora $001F00.l		; 0F 00 1F 00
	ora ($00.b,X)		; 01 00
	brk $73.b		; 00 73
	bra -29.b		; 80 E3
	brk $C7.b		; 00 C7
	rti		; 40

	asl $0F01.w		; 0E 01 0F
	ora ($DD.b,X)		; 01 DD
	cmp $9F.b,S		; C3 9F
	ora $9E.b,S		; 03 9E
	ora $0C.b,S		; 03 0C
	jsr ($FC1C.w,X)		; FC 1C FC
	sec		; 38
	sed		; F8
	sbc ($F1.b),Y		; F1 F1
	sbc ($F3.b,S),Y		; F3 F3
	and $E3.b,S		; 23 E3
	adc $E3.b,S		; 63 E3
	adc [$E7.b]		; 67 E7
	cpy $FF33.w		; CC 33 FF
	brk $FD.b		; 00 FD
	cmp $B5.b,S		; C3 B5
	cmp $E6.b,S		; C3 E6
	sta ($63.b,X)		; 81 63
	bra -29.b		; 80 E3
	brk $C9.b		; 00 C9
	php		; 08
	adc [$77.b],Y		; 77 77
	brk $00.b		; 00 00
	cmp $C3.b,S		; C3 C3
	wai		; CB
	wai		; CB
	cmp $9DD9.w,Y		; D9 D9 9D
	sta $9C9C.w,X		; 9D 9C 9C
	rol $3E.b,X		; 36 3E
	cmp $02.b,S		; C3 02
	inc $04.b		; E6 04
	pea $7600.w		; F4 00 76
	sty $FA.b		; 84 FA
	bra -71.b		; 80 B9
	cpy #$5D.b		; C0 5D
	cpx #$FC.b		; E0 FC
	rts		; 60

	bit $183F.w,X		; 3C 3F 18
	asl $0C08.w,X		; 1E 08 0C
	dey		; 88
	stx $C6C4.w		; 8E C4 C6
	inc $E7.b		; E6 E7
.ACCU 8
	sep #$E3		; E2 E3
	sbc ($F3.b,S),Y		; F3 F3
	php		; 08
	brk $1B.b		; 00 1B
	asl A		; 0A
	inc A		; 1A
	php		; 08
	asl $0504.w		; 0E 04 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $041F04.l		; 0F 04 1F 04
	asl $0E00.w,X		; 1E 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ply		; 7A
	brk $83.b		; 00 83
	.db $82, $F1, $10		; 82 F1 10
	trb $0604.w		; 1C 04 06
	ora ($81.b,X)		; 01 81
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	stx $7C.b		; 86 7C
	sbc $03FF0E.l,X		; FF 0E FF 03
	ora $000700.l,X		; 1F 00 07 00
	sta ($00.b,X)		; 81 00
	cpy #$00.b		; C0 00
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $0B.b		; 00 0B
	cop $16.b		; 02 16
	tsb $34.b		; 04 34
	clc		; 18
	sei		; 78
	brk $81.b		; 00 81
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora [$02.b]		; 07 02
	ora [$04.b]		; 07 04
	ora $001E08.l		; 0F 08 1E 00
	bit $7800.w,X		; 3C 00 78
	brk $81.b		; 00 81
	brk $03.b		; 00 03
	inc $E789.w,X		; FE 89 E7
	lda ($C5.b,X)		; A1 C5
	ora $4E.b,S		; 03 4E
	ora $CB.b,S		; 03 CB
	lsr $9F.b		; 46 9F
	tsb $BF.b		; 04 BF
	bra  46.b		; 80 2E
	clc		; 18
	ora ($F9.b,X)		; 01 F9
	tas		; 1B
	xce		; FB
	tsa		; 3B
	xce		; FB
	and ($73.b,S),Y		; 33 73
	and [$F7.b],Y		; 37 F7
	ror $E6.b		; 66 E6
	rti		; 40

	cpy #$DD.b		; C0 DD
	cmp $84E6.w,X		; DD E6 84
	eor $DB88.w		; 4D 88 DB
	ora ($96.b,X)		; 01 96
	cop $BE.b		; 02 BE
	bit $17.b		; 24 17
	ora ($0A.b,X)		; 01 0A
	ora ($31.b,X)		; 01 31
	brk $D8.b		; 00 D8
	dec $BDB0.w,X		; DE B0 BD
	ldy #$BB.b		; A0 BB
	adc ($77.b,X)		; 61 77
	eor ($7F.b,X)		; 41 7F
	inx		; E8
	sbc $C0FBF0.l,X		; FF F0 FB C0
	sbc ($13.b),Y		; F1 13
	ora $BB.b,S		; 03 BB
	trb $815F.w		; 1C 5F 81
	rep #$80		; C2 80
	.db $82, $00, $86		; 82 00 86
	cop $85.b		; 02 85
	ora ($83.b,X)		; 01 83
	brk $0C.b		; 00 0C
	ora $00BF00.l,X		; 1F 00 BF 00
	cmp $01C301.l,X		; DF 01 C3 01
	sta $01.b,S		; 83 01
	sta [$02.b]		; 87 02
	sta [$00.b]		; 87 00
	sta $6E.b,S		; 83 6E
	clc		; 18
	dec A		; 3A
	tsb $0C36.w		; 0C 36 0C
	ora $061B04.l,X		; 1F 04 1B 06
	lsr $6703.w		; 4E 03 67
	cop $77.b		; 02 77
	ora ($9D.b,X)		; 01 9D
	sta $DDDD.w,X		; 9D DD DD
	cmp $EECD.w		; CD CD EE
	inc $E6E6.w		; EE E6 E6
	lda [$F7.b],Y		; B7 F7
	txs		; 9A
	plx		; FA
	bit #$F9.b		; 89 F9
	bit $08.b,X		; 34 08
	mvn $6C,$08		; 54 08 6C
	brk $30.b		; 00 30
	jsr $0097.w		; 20 97 00
	txy		; 9B
	asl $DB.b		; 06 DB
	asl A		; 0A
	.db $42, $80		; 42 80
	cpy #$FC.b		; C0 FC
	bra -36.b		; 80 DC
	bra -20.b		; 80 EC
	cpy #$F0.b		; C0 F0
	rts		; 60

	adc [$60.b],Y		; 77 60
	adc $BC3F24.l,X		; 7F 24 3F BC
	ldx $04FC.w,Y		; BE FC 04
	bvc  48.b		; 50 30
	sec		; 38
	php		; 08
	tsb $0404.w		; 0C 04 04
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	cop $06.b		; 02 06
	cop $03.b		; 02 03
	sbc $077F0F.l,X		; FF 0F 7F 07
	and $030F03.l,X		; 3F 03 0F 03
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$F4.b]		; 07 F4
	clc		; 18
	cmp $B821.w,Y		; D9 21 B8
	rts		; 60

	plb		; AB
	adc ($BB.b)		; 72 BB
	adc ($B9.b)		; 72 B9
	bvs -87.b		; 70 A9
	adc ($98.b),Y		; 71 98
	rts		; 60

	tas		; 1B
	tas		; 1B
	ror $67.b		; 66 67
	adc [$67.b]		; 67 67
	stz $77.b,X		; 74 77
	stz $77.b,X		; 74 77
	ror $77.b,X		; 76 77
	ror $77.b,X		; 76 77
	adc [$67.b]		; 67 67
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	brk $51.b		; 00 51
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $71.b		; 00 71
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	jsr $3800.w		; 20 00 38
	brk $BF.b		; 00 BF
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	brk $BF.b		; 00 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ror $FD80.w		; 6E 80 FD
	ror $5C.b		; 66 5C
	brk $CF.b		; 00 CF
	eor #$E1.b		; 49 E1
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	inc $FF00.w		; EE 00 FF
	and $7F.b,S		; 23 7F
	bmi  -1.b		; 30 FF
	asl $08FF.w,X		; 1E FF 08
	brk $08.b		; 00 08
	brk $14.b		; 00 14
	brk $36.b		; 00 36
	bpl -61.b		; 10 C3
	jsl $0F636C.l		; 22 6C 63 0F
	brk $8F.b		; 00 8F
	dey		; 88
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	trb $3E08.w		; 1C 08 3E
	trb $90FF.w		; 1C FF 90
	sbc $70FFF0.l,X		; FF F0 FF 70
	sbc $0620C5.l,X		; FF C5 20 06
	ora ($81.b,X)		; 01 81
	ora ($81.b,X)		; 01 81
	brk $C3.b		; 00 C3
	cop $E2.b		; 02 E2
	brk $F9.b		; 00 F9
	brk $FC.b		; 00 FC
	brk $18.b		; 00 18
	sbc $FFF8.w,X		; FD F8 FF
	ror $7E7F.w,X		; 7E 7F 7E
	adc $1C3F3C.l,X		; 7F 3C 3F 1C
	asl $0706.w,X		; 1E 06 07
	ora $03.b,S		; 03 03
	cpx #$00.b		; E0 00
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$85.b		; E0 85
	brk $86.b		; 00 86
	brk $92.b		; 00 92
	bpl -103.b		; 10 99
	ora #$9D.b		; 09 9D
	tsb $97.b		; 04 97
	brk $90.b		; 00 90
	brk $D0.b		; 00 D0
	brk $78.b		; 00 78
	adc $7F79.w,X		; 7D 79 7F
	adc $667F.w		; 6D 7F 66
	adc $607F62.l,X		; 7F 62 7F 60
	adc [$60.b],Y		; 77 60
	bvs  32.b		; 70 20
	bmi  96.b		; 30 60
	rti		; 40

	cpx #$40.b		; E0 40
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	rts		; 60

	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $40.b		; 00 40
	brk $08.b		; 00 08
	eor ($21.b,S),Y		; 53 21
	adc ($00.b,X)		; 61 00
	eor ($00.b,X)		; 41 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	brk $73.b		; 00 73
	brk $61.b		; 00 61
	brk $41.b		; 00 41
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	and $80BF00.l,X		; 3F 00 BF 80
	adc $000F00.l,X		; 7F 00 0F 00
	ora $00.b,S		; 03 00
	eor [$40.b]		; 47 40
	sta $20EFC0.l		; 8F C0 EF 20
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$80.b		; C0 80
	bra -16.b		; 80 F0
	beq  -4.b		; F0 FC
	jsr ($F8B8.w,X)		; FC B8 F8
	bmi -16.b		; 30 F0
	bpl -16.b		; 10 F0
	sbc $0FFF11.l,X		; FF 11 FF 0F
	sbc $F703.w,X		; FD 03 F7
	php		; 08
	sbc $03FF04.l,X		; FF 04 FF 03
	sbc $01FE00.l,X		; FF 00 FE 01
	ora ($11.b),Y		; 11 11
	ora $0B0B1F.l,X		; 1F 1F 0B 0B
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $F0FF88.l,X		; FF 88 FF F0
	lda $10EFC0.l,X		; BF C0 EF 10
	sbc $C0FF20.l,X		; FF 20 FF C0
	sbc $80FF00.l,X		; FF 00 FF 80
	dey		; 88
	dey		; 88
	sed		; F8
	sed		; F8
	bne -48.b		; D0 D0
	bpl  16.b		; 10 10
	jsr $C020.w		; 20 20 C0
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	bra  14.b		; 80 0E
	php		; 08
	clc		; 18
	bpl  23.b		; 10 17
	brk $1D.b		; 00 1D
	tsb $DA.b		; 04 DA
	rti		; 40

	stz $20.b		; 64 20
	sec		; 38
	bpl 104.b		; 10 68
	bmi -16.b		; 30 F0
	inc $F8E0.w,X		; FE E0 F8
	cpx #$F7.b		; E0 F7
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	bit $FE.b		; 24 FE
	clc		; 18
	jmp ($3800.w,X)		; 7C 00 38
	brk $78.b		; 00 78
	tas		; 1B
	php		; 08
	tas		; 1B
	php		; 08
	and $3C10.w,Y		; 39 10 3C
	bpl  46.b		; 10 2E
	ora ($2A.b)		; 12 2A
	bpl  51.b		; 10 33
	ora ($11.b,X)		; 01 11
	brk $04.b		; 00 04
	ora $061F04.l,X		; 1F 04 1F 06
	and $013F03.l,X		; 3F 03 3F 01
	and $003B01.l,X		; 3F 01 3B 00
	and ($00.b,S),Y		; 33 00
	ora ($04.b),Y		; 11 04
	brk $0C.b		; 00 0C
	tsb $0D.b		; 04 0D
	asl $0E.b		; 06 0E
	tsb $0A.b		; 04 0A
	tsb $0C.b		; 04 0C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$03.b]		; 07 03
	ora $000F00.l		; 0F 00 0F 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	sbc ($00.b),Y		; F1 00
	ora $E70E.w		; 0D 0E E7
	jsr $1034.w		; 20 34 10
	inc A		; 1A
	php		; 08
	asl $0704.w		; 0E 04 07
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	ora $18FFF0.l		; 0F F0 FF 18
	sbc $043C08.l,X		; FF 08 3C 04
	asl $0E00.w,X		; 1E 00 0E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	eor ($21.b,S),Y		; 53 21
	eor $20.b,X		; 55 20
	adc $7920.w,Y		; 79 20 79
	plp		; 28
	stz $20.b,X		; 74 20
	ror $30.b,X		; 76 30
	adc #$20.b		; 69 20
	adc #$20.b		; 69 20
	brk $73.b		; 00 73
	cop $77.b		; 02 77
	asl $7F.b		; 06 7F
	asl $7F.b		; 06 7F
	phd		; 0B
	adc $107F09.l,X		; 7F 09 7F 10
	adc $7910.w,Y		; 79 10 79
	bvc -120.b		; 50 88
	cpy $8484.w		; CC 84 84
	brk $0C.b		; 00 0C
	brk $F8.b		; 00 F8
	php		; 08
	ora [$00.b]		; 07 00
	ora $808F00.l		; 0F 00 8F 80
	ora [$DF.b]		; 07 DF
	ora $CF.b,S		; 03 CF
	ora $87.b,S		; 03 87
	ora $0F.b,S		; 03 0F
	ora [$FF.b]		; 07 FF
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	bvs -16.b		; 70 F0
	bvs 112.b		; 70 70
	asl $9F00.w		; 0E 00 9F
	brk $FD.b		; 00 FD
	ora $F7.b,S		; 03 F7
	ora $FF1FEF.l		; 0F EF 1F FF
	ora ($FF.b),Y		; 11 FF
	ora ($8F.b,S),Y		; 13 8F
	sbc $60F1F1.l,X		; FF F1 F1 60
	rts		; 60

	ora [$07.b]		; 07 07
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora ($11.b),Y		; 11 11
	ora ($13.b,S),Y		; 13 13
	ora ($01.b,X)		; 01 01
	bvs   0.b		; 70 00
	xce		; FB
	brk $BF.b		; 00 BF
	cpy #$EF.b		; C0 EF
	beq  -9.b		; F0 F7
	sed		; F8
	sbc $C8FF88.l,X		; FF 88 FF C8
	inc $8FFF.w,X		; FE FF 8F
	sta $E00404.l		; 8F 04 04 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	sed		; F8
	sed		; F8
	dey		; 88
	dey		; 88
	iny		; C8
	iny		; C8
	sbc $FB00.w,Y		; F9 00 FB
	cop $EB.b		; 02 EB
	cop $E2.b		; 02 E2
	brk $F2.b		; 00 F2
	brk $E6.b		; 00 E6
	tsb $14.b		; 04 14
	clc		; 18
	php		; 08
	brk $06.b		; 00 06
	ora [$04.b]		; 07 04
	ora [$14.b]		; 07 14
	ora [$1C.b],Y		; 17 1C
	asl $0E0C.w,X		; 1E 0C 0E
	clc		; 18
	asl $FCE0.w,X		; 1E E0 FC
	beq  -8.b		; F0 F8
	bne  96.b		; D0 60
	beq  32.b		; F0 20
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	rti		; 40

	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	cmp [$00.b],Y		; D7 00
	cmp $5A84.w,X		; DD 84 5A
	dey		; 88
	dec $04.b		; C6 04
	sta $0B08.w		; 8D 08 0B
	ora ($1E.b,X)		; 01 1E
	bpl -80.b		; 10 B0
	bmi  32.b		; 30 20
	and [$A2.b],Y		; 37 A2
	lda $38BEA4.l,X		; BF A4 BE 38
	rol $7D70.w,X		; 3E 70 7D
	beq  -5.b		; F0 FB
	sbc ($FF.b,X)		; E1 FF
	eor $00087F.l		; 4F 7F 08 00
	clc		; 18
	brk $38.b		; 00 38
	bpl 104.b		; 10 68
	jsr $40C8.w		; 20 C8 40
	plp		; 28
	brk $78.b		; 00 78
	bvc -36.b		; 50 DC
	php		; 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	bpl 120.b		; 10 78
	bmi  -8.b		; 30 F8
	bne  -8.b		; D0 F8
	bra  -8.b		; 80 F8
	brk $DC.b		; 00 DC
	ora $01.b		; 05 01
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	sbc M7Y.l		; EF 20 21 00
	plp		; 28
	clc		; 18
	trb $0C.b		; 14 0C
	stz $520E.w,X		; 9E 0E 52
	cop $B0.b		; 02 B0
	bcc -128.b		; 90 80
	brk $10.b		; 00 10
	beq  30.b		; F0 1E
	rol $3F07.w,X		; 3E 07 3F
	ora $1F.b,S		; 03 1F
	ora ($9F.b,X)		; 01 9F
	sta $4FDF.w		; 8D DF 4F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	brk $9F.b		; 00 9F
	ror $AF.b		; 66 AF
	adc ($FF.b),Y		; 71 FF
	bmi  -1.b		; 30 FF
	and [$FF.b],Y		; 37 FF
	bmi  -1.b		; 30 FF
	bmi  -1.b		; 30 FF
	and $00.b,X		; 35 00
	brk $6E.b		; 00 6E
	ror $7171.w		; 6E 71 71
	bmi  48.b		; 30 30
	and [$37.b],Y		; 37 37
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	and $35.b,X		; 35 35
	sbc $6B9500.l,X		; FF 00 95 6B
	inc $BF73.w,X		; FE 73 BF
	adc ($D7.b)		; 72 D7
	dec A		; 3A
	adc $F7C2.w,X		; 7D C2 F7
	sty $B66B.w		; 8C 6B B6
	brk $00.b		; 00 00
	rtl		; 6B

	rtl		; 6B

	adc ($73.b,S),Y		; 73 73
	adc ($73.b,S),Y		; 73 73
	dec A		; 3A
	dec A		; 3A
	rep #$C2		; C2 C2
	sty $B68C.w		; 8C 8C B6
	ldx $BF.b,Y		; B6 BF
	asl $BF.b		; 06 BF
	stx $1F.b		; 86 1F
	asl $1F.b		; 06 1F
	asl $1E.b		; 06 1E
	ora [$1A.b]		; 07 1A
	ora [$1B.b]		; 07 1B
	ora [$1F.b]		; 07 1F
	ora $46.b,S		; 03 46
	dec $46.b		; C6 46
	dec $E6.b		; C6 E6
	inc $E7.b		; E6 E7
	sbc [$E7.b]		; E7 E7
	sbc [$E7.b]		; E7 E7
	sbc [$E7.b]		; E7 E7
	sbc [$E7.b]		; E7 E7
	sbc [$FF.b]		; E7 FF
	tsb $0CFF.w		; 0C FF 0C
	sbc $0CFF0C.l,X		; FF 0C FF 0C
	sbc $1CEB1C.l		; EF 1C EB 1C
	xce		; FB
	trb $18FF.w		; 1C FF 18
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $044A.w		; 1C 4A 04
	jmp ($3840.w)		; 6C 40 38
	brk $34.b		; 00 34
	bpl   4.b		; 10 04
	brk $18.b		; 00 18
	bpl  16.b		; 10 10
	brk $30.b		; 00 30
	jsr $CE80.w		; 20 80 CE
	bra -20.b		; 80 EC
	cpy #$F8.b		; C0 F8
	iny		; C8
	jsr ($FCF8.w,X)		; FC F8 FC
	cpx #$F8.b		; E0 F8
	cpx #$F0.b		; E0 F0
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $1A.b		; 00 1A
	brk $28.b		; 00 28
	bpl -24.b		; 10 E8
	bpl 120.b		; 10 78
	bvc -104.b		; 50 98
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $1A.b		; 00 1A
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	rti		; 40

	sed		; F8
	pla		; 68
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $D0.b		; 00 D0
	rti		; 40

	bcc -128.b		; 90 80
	bmi  32.b		; 30 20
	jsr $0000.w		; 20 00 00
	sei		; 78
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $60F0.w		; 20 F0 60
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	cpx #$80.b		; E0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $50.b		; 00 50
	brk $58.b		; 00 58
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	jsr $2070.w		; 20 70 20
	sei		; 78
	clv		; B8
	bpl -84.b		; 10 AC
	bpl -14.b		; 10 F2
	jmp $804F.w		; 4C 4F 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sed		; F8
	rti		; 40

	jsr ($FE00.w,X)		; FC 00 FE
	brk $CF.b		; 00 CF
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
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cpx #$40.b		; E0 40
	bvc  32.b		; 50 20
	bvc  32.b		; 50 20
	bit $10.b		; 24 10
	trb $1800.w		; 1C 00 18
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bit $00.b,X		; 34 00
	trb $1800.w		; 1C 00 18
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $1808.w		; 0C 08 18
	bpl  56.b		; 10 38
	bmi -120.b		; 30 88
	brk $CC.b		; 00 CC
	php		; 08
	cmp [$04.b]		; C7 04
	cpy #$00.b		; C0 00
	sta $02.b,S		; 83 02
	beq  -4.b		; F0 FC
	cpx #$F8.b		; E0 F8
	cpy #$F8.b		; C0 F8
	bvs 120.b		; 70 78
	bmi  60.b		; 30 3C
	sec		; 38
	and $7C3F3F.l,X		; 3F 3F 3F 7C
	adc $080000.l,X		; 7F 00 00 08
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	php		; 08
	sbc ($14.b)		; F2 14
	ror $E4.b,X		; 76 E4
	pea $F400.w		; F4 00 F4
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	php		; 08
	inc $FE08.w,X		; FE 08 FE
	php		; 08
	jsr ($FC08.w,X)		; FC 08 FC
	asl $1404.w		; 0E 04 14
	php		; 08
	trb $08.b		; 14 08
	clc		; 18
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $19.b		; 00 19
	brk $00.b		; 00 00
	asl $1C00.w		; 0E 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $19.b		; 00 19
	rti		; 40

	brk $40.b		; 00 40
	brk $4E.b		; 00 4E
	cop $5F.b		; 02 5F
	ora ($DF.b),Y		; 11 DF
	rts		; 60

	lda $80BE80.l,X		; BF 80 BE 80
	asl $3F02.w,X		; 1E 02 3F
	adc $317F3F.l,X		; 7F 3F 7F 31
	adc $007F20.l,X		; 7F 20 7F 00
	sbc $41FF40.l,X		; FF 40 FF 41
	sbc $EFFFE1.l,X		; FF E1 FF EF
	and ($EE.b,S),Y		; 33 EE
	and [$7D.b],Y		; 37 7D
	asl $1C7B.w		; 0E 7B 1C
	adc $003F10.l		; 6F 10 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and ($33.b,S),Y		; 33 33
	and [$37.b],Y		; 37 37
	stx $9C8E.w		; 8E 8E 9C
	stz $9090.w		; 9C 90 90
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	sbc $FA03.w,X		; FD 03 FA
	eor $DF.b		; 45 DF
	clv		; B8
	sbc $C07F00.l,X		; FF 00 7F C0
	lda $00FF40.l,X		; BF 40 FF 00
	adc $0303C0.l,X		; 7F C0 03 03
	eor $45.b		; 45 45
	clv		; B8
	clv		; B8
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cmp $80.b,S		; C3 80
	cmp ($00.b,X)		; C1 00
	bvs  64.b		; 70 40
	cpy #$00.b		; C0 00
	clc		; 18
	brk $28.b		; 00 28
	bpl -56.b		; 10 C8
	bmi  88.b		; 30 58
	rts		; 60

	brk $C3.b		; 00 C3
	brk $C1.b		; 00 C1
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	rts		; 60

	rti		; 40

	jsr $C040.w		; 20 40 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$1C.b]		; 07 1C
	ora $060000.l,X		; 1F 00 00 06
	ora [$04.b]		; 07 04
	ora [$0B.b]		; 07 0B
	tsb $3837.w		; 0C 37 38
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	asl $0000.w,X		; 1E 00 00
	ora [$07.b]		; 07 07
	php		; 08
	ora [$38.b]		; 07 38
	ora $C03FB0.l		; 0F B0 3F C0
	brk $7F.b		; 00 7F
	asl $D8.b		; 06 D8
	asl $2F90.w,X		; 1E 90 2F
	and ($21.b,X)		; 21 21
	cmp ($7E.b,X)		; C1 7E
	sta $980342.l		; 8F 42 03 98
	ora $5F0F0E.l		; 0F 0E 0F 5F
	jsr $601F.w		; 20 1F 60
	rol $FEC0.w,X		; 3E C0 FE
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	beq -112.b		; F0 90
	ora $B2CF48.l,X		; 1F 48 CF B2
	stz $60.b,X		; 74 60
	bpl  40.b		; 10 28
	clc		; 18
	sta $83.b,S		; 83 83
	mvp $0D,$C7		; 44 C7 0D
	dec $6086.w		; CE 86 60
	cmp $30.b,S		; C3 30
	sbc ($08.b,S),Y		; F3 08
	beq  15.b		; F0 0F
	sed		; F8
	ora [$63.b]		; 07 63
	trb $1827.w		; 1C 27 18
	ora $F11030.l		; 0F 30 10 F1
	jsr $80E0.w		; 20 E0 80
	bra  16.b		; 80 10
	clc		; 18
	pla		; 68
	ror $04.b,X		; 76 04
	sbc ($54.b)		; F2 54
	ldx #$92.b		; A2 92
	rts		; 60

	cpy #$0E.b		; C0 0E
	bra  31.b		; 80 1F
	bra 127.b		; 80 7F
	clc		; 18
	sbc [$7E.b]		; E7 7E
	sta ($FE.b,X)		; 81 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($C3.b,X)		; 01 C3
	cpx $4825.w		; EC 25 48
	phy		; 5A
	ora ($20.b),Y		; 11 20
	and ($68.b,S),Y		; 33 68
	ply		; 7A
	pha		; 48
	sed		; F8
	ora #$79.b		; 09 79
	tsb $FF3C.w		; 0C 3C FF
	brk $7F.b		; 00 7F
	bra 111.b		; 80 6F
	bra  79.b		; 80 4F
	bra   6.b		; 80 06
	sta ($80.b,X)		; 81 80
	ora [$01.b]		; 07 01
	stx $0C.b		; 86 0C
	cpy #$C0.b		; C0 C0
	rti		; 40

	bpl -112.b		; 10 90
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$38.b		; C0 38
	bcc  96.b		; 90 60
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	ora $0604.w,X		; 1D 04 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	ora [$06.b]		; 07 06
	asl $07E0.w,X		; 1E E0 07
	sec		; 38
	ora $0C.b,S		; 03 0C
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $34.b,S		; 03 34
	ora [$18.b]		; 07 18
	sta $FF.b,S		; 83 FF
	asl $FF.b		; 06 FF
	stx $9CFF.w		; 8E FF 9C
	ror $7F41.w		; 6E 41 7F
	ora ($1F.b)		; 12 1F
	phd		; 0B
	sta $0700C0.l		; 8F C0 00 07
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $9C.b		; 00 9C
	ora ($41.b,X)		; 01 41
	bra  30.b		; 80 1E
	cpx #$8F.b		; E0 8F
	bvs -64.b		; 70 C0
	and $229910.l,X		; 3F 10 99 22
	tyx		; BB
	asl A		; 0A
	tsa		; 3B
	ldy $4A9F.w		; AC 9F 4A
	adc $DD02.w,X		; 7D 02 DD
	php		; 08
	cmp $10D605.l,X		; DF 05 D6 10
	ror $32.b		; 66 32
	mvp $C4,$2A		; 44 2A C4
	ldx $4E40.w		; AE 40 4E
	bra  50.b		; 80 32
	brk $BC.b		; 00 BC
	brk $B7.b		; 00 B7
	php		; 08
	sta $FA9DFF.l,X		; 9F FF 9D FA
	cpy $6DF3.w		; CC F3 6D
	cmp ($63.b)		; D2 63
	jmp.w [$D320]		; DC 20 D3
	eor $B1.b,S		; 43 B1
	sta $00C060.l		; 8F 60 C0 00
	cmp $00.b		; C5 00
	sbc $ED00.w		; ED 00 ED
	brk $E3.b		; 00 E3
	brk $EF.b		; 00 EF
	brk $4F.b		; 00 4F
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	trb $03.b		; 14 03
	ora [$04.b]		; 07 04
	ora $0E.b,S		; 03 0E
	ora #$0B.b		; 09 0B
	php		; 08
	tas		; 1B
	tas		; 1B
	phd		; 0B
	tas		; 1B
	txa		; 8A
	sta $00.b,S		; 83 00
	sta $07.b,S		; 83 07
	clc		; 18
	ora [$18.b]		; 07 18
	ora $100F00.l		; 0F 00 0F 10
	trb $1C20.w		; 1C 20 1C
	cpx #$8C.b		; E0 8C
	bvs -116.b		; 70 8C
	bvs  70.b		; 70 46
	lda ($91.b,X)		; A1 91
	bmi -38.b		; 30 DA
	sei		; 78
	cmp $8BFD.w		; CD FD 8B
	sbc $01FF00.l,X		; FF 00 FF 01
	sed		; F8
	asl $FFE1.w		; 0E E1 FF
	brk $EF.b		; 00 EF
	brk $87.b		; 00 87
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $82.b		; 00 82
	cop $4B.b		; 02 4B
	phk		; 4B
	sec		; 38
	tda		; 7B
	ldy $FF.b,X		; B4 FF
	tsb $FF.b		; 04 FF
	brk $EF.b		; 00 EF
	sed		; F8
	ora $78.b,S		; 03 78
	sta $FD.b		; 85 FD
	brk $B4.b		; 00 B4
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $A8.b		; 00 A8
	cpx $AC.b		; E4 AC
.INDEX 8
	sep #$97		; E2 97
	sbc ($08.b),Y		; F1 08
	xce		; FB
	ora #$FB.b		; 09 FB
	cop $F9.b		; 02 F9
	ora [$FC.b]		; 07 FC
	ora [$FE.b]		; 07 FE
	trb $1E03.w		; 1C 03 1E
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$E0.b		; E0 E0
	cpx #$10.b		; E0 10
	beq -96.b		; F0 A0
	rts		; 60

	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$E0.b		; C0 E0
	brk $E0.b		; 00 E0
	trb $F0.b		; 14 F0
	tsb $18E0.w		; 0C E0 18
	cpy #$38.b		; C0 38
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	phd		; 0B
	phd		; 0B
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $3F.b		; 00 3F
	ora [$08.b]		; 07 08
	phd		; 0B
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $A0.b		; 00 A0
	sbc $68.b,S		; E3 68
	bcc -124.b		; 90 84
	brk $AF.b		; 00 AF
	dec $CFA9.w		; CE A9 CF
	pei ($E7.b)		; D4 E7
	asl $0B.b		; 06 0B
	brk $00.b		; 00 00
	cpx #$1C.b		; E0 1C
	sed		; F8
	ora [$FC.b]		; 07 FC
	ora $F1.b,S		; 03 F1
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	beq   0.b		; F0 00
	sbc $339D1B.l,X		; FF 1B 9D 33
	lda $01330B.l,X		; BF 0B 33 01
	sbc [$9C.b],Y		; F7 9C
	adc $0A6796.l		; 6F 96 67 0A
	lda $03.b,S		; A3 03
	eor $1E.b,S		; 43 1E
	rts		; 60

	bit $3C40.w,X		; 3C 40 3C
	cpy #$F8.b		; C0 F8
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $6C.b		; 00 6C
	bpl   4.b		; 10 04
	clv		; B8
	tax		; AA
	eor $C01ED7.l		; 4F D7 1E C0
	jsr ($FC87.w,X)		; FC 87 FC
	asl A		; 0A
	sed		; F8
	php		; 08
	sed		; F8
	ora $05F9.w,Y		; 19 F9 05
	inc $F1.b		; E6 F1
	brk $E1.b		; 00 E1
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $01.b,S		; 03 01
	asl $07.b		; 06 07
	clc		; 18
	iny		; C8
	php		; 08
	tya		; 98
	clc		; 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	and ($31.b),Y		; 31 31
	lda $AD12DF.l		; AF DF 12 AD
	jsr ($C843.w,X)		; FC 43 C8
	bmi -104.b		; 30 98
	rts		; 60

	sec		; 38
	cpy #$38.b		; C0 38
	cmp $31.b,S		; C3 31
	dec $00FF.w		; CE FF 00
	sbc $00BF00.l,X		; FF 00 BF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	cpy #$20.b		; C0 20
	bra  96.b		; 80 60
	asl $07.b		; 06 07
	ora $07.b,S		; 03 07
	cop $05.b		; 02 05
	ora $06.b		; 05 06
	ora $06.b		; 05 06
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora [$38.b]		; 07 38
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	ldy #$02.b		; A0 02
	brk $97.b		; 00 97
	eor $9C.b,S		; 43 9C
	cmp ($18.b)		; D2 18
	ora ($19.b),Y		; 11 19
	lda ($39.b),Y		; B1 39
	ora $3D.b,S		; 03 3D
	ldy $32.b		; A4 32
.INDEX 8
	sep #$1D		; E2 1D
	sbc $00E700.l		; EF 00 E7 00
	sbc [$00.b]		; E7 00
	sbc $02.b		; E5 02
	cmp $02.b		; C5 02
	cmp $00.b,S		; C3 00
	cmp $2D0400.l		; CF 00 04 2D
	brk $01.b		; 00 01
	and $D3.b,S		; 23 D3
	ora $A805.w,X		; 1D 05 A8
	mvp $E2,$1E		; 44 1E E2
	brk $FE.b		; 00 FE
	ora $2DFF.w		; 0D FF 2D
	cmp ($01.b)		; D2 01
	inc $0CF3.w,X		; FE F3 0C
	sbc $BC02.w,X		; FD 02 BC
	ora $BE.b,S		; 03 BE
	ora ($BE.b,X)		; 01 BE
	ora ($BF.b,X)		; 01 BF
	brk $B2.b		; 00 B2
	jmp $CE38.w		; 4C 38 CE
	adc #$9D.b		; 69 9D
	eor ($A5.b,X)		; 41 A5
	ora $C5.b		; 05 C5
	bvs -15.b		; 70 F1
	cmp $11C0.w		; CD C0 11
	rol $00BF.w		; 2E BF 00
	rol $7D01.w,X		; 3E 01 7D
	cop $45.b		; 02 45
	inc A		; 1A
	ora $3A.b		; 05 3A
	sbc ($0E.b),Y		; F1 0E
	cmp $3132.w		; CD 32 31
	cpy #$06.b		; C0 06
	ora [$12.b]		; 07 12
	ora $0601.w,X		; 1D 01 06
	ora $06.b		; 05 06
	cop $03.b		; 02 03
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora [$F8.b]		; 07 F8
	ora $180760.l,X		; 1F 60 07 18
	ora [$08.b]		; 07 08
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	cpx #$67.b		; E0 67
	jsr $5176.w		; 20 76 51
	jsl $5089A8.l		; 22 A8 89 50
	eor ($F8.b),Y		; 51 F8
	sed		; F8
	cld		; D8
	sed		; F8
	txy		; 9B
	tda		; 7B
	cpx #$18.b		; E0 18
	sbc ($08.b),Y		; F1 08
	sbc ($0C.b),Y		; F1 0C
	sei		; 78
	asl $A8.b		; 06 A8
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$83.b]		; 07 83
	tsb $FA.b		; 04 FA
	ora [$A4.b]		; 07 A4
	jmp $9840.w		; 4C 40 98
	iny		; C8
	eor ($A0.b,X)		; 41 A0
	jsr $2400.w		; 20 00 24
	bcs -105.b		; B0 97
	rts		; 60

	sta ($FF.b,S),Y		; 93 FF
	brk $FC.b		; 00 FC
	ora $F8.b,S		; 03 F8
	ora [$C8.b]		; 07 C8
	rol $A0.b,X		; 36 A0
	eor $B1DB20.l,X		; 5F 20 DB B1
	pha		; 48
	sbc ($0C.b),Y		; F1 0C
	cpy $3A.b		; C4 3A
	ora ($50.b,X)		; 01 50
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $20.b		; 00 20
	brk $71.b		; 00 71
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp [$00.b]		; C7 00
	and ($8E.b,X)		; 21 8E
	jsr $20DF.w		; 20 DF 20
	stp		; DB
	jsr $70DF.w		; 20 DF 70
	stx $00DC.w		; 8E DC 00
	cmp $0700.w,X		; DD 00 07
	inc $7D06.w,X		; FE 06 7D
	asl $7E.b		; 06 7E
	sta $3D.b		; 85 3D
	cmp #$19.b		; C9 19
	.db $82, $73, $15		; 82 73 15
	ldx $DE.b,Y		; B6 DE
	lda $0001.w,X		; BD 01 00
	sta $00.b,S		; 83 00
	.db $82, $01, $C5		; 82 01 C5
	cop $E1.b		; 02 E1
	asl $83.b		; 06 83
	tsb $4887.w		; 0C 87 48
	cmp $808000.l,X		; DF 00 80 80
	jsr $6020.w		; 20 20 60
	rts		; 60

	rti		; 40

	rts		; 60

	bra -32.b		; 80 E0
	bra  64.b		; 80 40
	jmp ($86FC.w,X)		; 7C FC 86
	inc $7080.w,X		; FE 80 70
	jsr $60DC.w		; 20 DC 60
	stz $9860.w		; 9C 60 98
	cpx #$18.b		; E0 18
	cpy #$3E.b		; C0 3E
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $107208.l,X		; 3F 08 72 10
	cpx $20.b		; E4 20
	iny		; C8
	rti		; 40

	bcc -128.b		; 90 80
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	clc		; 18
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	cop $27.b		; 02 27
	and $00.b		; 25 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $022D02.l		; 0F 02 2D 02
	and $1827.w,X		; 3D 27 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	adc $F7.b,X		; 75 F7
	ldx #$75.b		; A2 75
	eor ($2C.b),Y		; 51 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C1.b		; 00 C1
	bra 111.b		; 80 6F
	sbc [$08.b],Y		; F7 08
	sbc [$08.b],Y		; F7 08
	sbc $000000.l,X		; FF 00 00 00
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	pla		; 68
	sei		; 78
	sty $EC.b,X		; 94 EC
	rol A		; 2A
	dec $6D.b		; C6 6D
	sta $DA.b,S		; 83 DA
	ora ($00.b)		; 12 00
	tsb $7608.w		; 0C 08 76
	clc		; 18
	inc $78.b		; E6 78
	stx $FC.b		; 86 FC
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $ED.b		; 00 ED
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	ora $08.b,S		; 03 08
	ora $0A3935.l		; 0F 35 39 0A
	tsb $0300.w		; 0C 00 03
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora $6C.b,S		; 03 6C
	ora $403E70.l		; 0F 70 3E 40
	ora $7C5C30.l		; 0F 30 5C 7C
	sbc ($DF.b,X)		; E1 DF
	lda $E0C1.w,Y		; B9 C1 E0
	brk $27.b		; 00 27
	lda [$1C.b]		; A7 1C
	cmp $D0FFF8.l,X		; DF F8 FF D0
	sbc $FF837C.l,X		; FF 7C 83 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $D8.b		; 00 D8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  19.b		; 10 13
	ora ($B8.b,S),Y		; 13 B8
	tsa		; 3B
	ror $DAFF.w,X		; 7E FF DA
	lda [$97.b],Y		; B7 97
	inx		; E8
	bit $F7.b		; 24 F7
	stz $F7.b		; 64 F7
	trb $EB.b		; 14 EB
	ora ($EC.b,S),Y		; 13 EC
	tyx		; BB
	mvp $00,$FF		; 44 FF 00
	adc $001700.l,X		; 7F 00 17 00
	bit $08.b		; 24 08
	cpx $08.b		; E4 08
	php		; 08
	php		; 08
	sbc ($FB.b,S),Y		; F3 FB
.INDEX 8
	sep #$1B		; E2 1B
	rti		; 40

	sta ($27.b,X)		; 81 27
	cmp $04FF18.l,X		; DF 18 FF 04
	eor [$0E.b],Y		; 57 0E
	eor $FCF00F.l,X		; 5F 0F F0 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	php		; 08
	ldy #$01.b		; A0 01
	eor [$BE.b]		; 47 BE
	sbc ($25.b,X)		; E1 25
	sbc $2F.b,S		; E3 2F
	sbc [$5C.b]		; E7 5C
	cpy #$54.b		; C0 54
	iny		; C8
	adc $0CF9.w,X		; 7D F9 0C
	cpx $00BF.w		; EC BF 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $033C00.l,X		; 1F 00 3C 03
	bit $0503.w,X		; 3C 03 05
	cop $14.b		; 02 14
	cop $80.b		; 02 80
	bra  64.b		; 80 40
	cpy #$80.b		; C0 80
	bra  32.b		; 80 20
	jsr $0000.w		; 20 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	cpy #$30.b		; C0 30
	bra 112.b		; 80 70
	jsr $00C0.w		; 20 C0 00
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	ldy #$E0.b		; A0 E0
	rts		; 60

	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	bcs -32.b		; B0 E0
	trb $18E0.w		; 1C E0 18
	eor ($6C.b)		; 52 6C
	sec		; 38
	bit $3C28.w		; 2C 28 3C
	php		; 08
	tsb $0A02.w		; 0C 02 0A
	asl $0F.b		; 06 0F
	ora $0E.b		; 05 0E
	ora $1C.b,S		; 03 1C
	adc ($81.b)		; 72 81
	bmi  67.b		; 30 43
	bmi  67.b		; 30 43
	php		; 08
	and ($02.b,S),Y		; 33 02
	ora $07.b,X		; 15 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $E8.b		; 00 E8
	dey		; 88
	cpx #$80.b		; E0 80
	bpl -16.b		; 10 F0
	clc		; 18
	cld		; D8
	brk $C0.b		; 00 C0
	jsr $C0E0.w		; 20 E0 C0
	cpy #$50.b		; C0 50
	bne 104.b		; D0 68
	bpl  96.b		; 10 60
	bpl -16.b		; 10 F0
	brk $D8.b		; 00 D8
	jsr $30C0.w		; 20 C0 30
	cpx #$10.b		; E0 10
	cpy #$34.b		; C0 34
	bne  38.b		; D0 26
	mvn $24,$D4		; 54 D4 24
	bit $E8.b,X		; 34 E8
	jsr ($CCB4.w,X)		; FC B4 CC
	jmp ($AC84.w)		; 6C 84 AC
	tsb $E8E8.w		; 0C E8 E8
	cpx #$68.b		; E0 68
	pei ($2A.b)		; D4 2A
	bit $CA.b,X		; 34 CA
	jsr ($FC02.w,X)		; FC 02 FC
	ora $FC.b,S		; 03 FC
	cop $FC.b		; 02 FC
	cop $18.b		; 02 18
	tsb $98.b		; 04 98
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $0C.b		; 00 0C
	sty $0C.b,X		; 94 0C
	sty $08.b,X		; 94 08
	pei ($89.b)		; D4 89
	cmp $04.b,X		; D5 04
	phb		; 8B
	ora [$18.b]		; 07 18
	brk $6F.b		; 00 6F
	brk $80.b		; 00 80
	cpx $EC03.w		; EC 03 EC
	ora $EC.b,S		; 03 EC
	ora $ED.b,S		; 03 ED
	cop $F7.b		; 02 F7
	brk $67.b		; 00 67
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	mvn $68,$50		; 54 50 68
	ldy #$D0.b		; A0 D0
	rti		; 40

	ldy #$80.b		; A0 80
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	ldy #$70.b		; A0 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	sed		; F8
	brk $7D.b		; 00 7D
	cop $7F.b		; 02 7F
	bit $3E.b		; 24 3E
	sec		; 38
	sec		; 38
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
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	tsb $6D1C.w		; 0C 1C 6D
	adc $EFD7.w,X		; 7D D7 EF
	lda $0000C7.l		; AF C7 00 00
	brk $02.b		; 00 02
	brk $16.b		; 00 16
	bpl  46.b		; 10 2E
	trb $7D63.w		; 1C 63 7D
	.db $82, $FF, $00		; 82 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	pha		; 48
	jmp $FEBA.w		; 4C BA FE
	ldy $F2.b		; A4 F2
	pha		; 48
	tyx		; BB
	and [$8C.b],Y		; 37 8C
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $5A.b		; 04 5A
	jmp $FEB3.w		; 4C B3 FE
	ora ($FE.b,X)		; 01 FE
	ora ($F7.b,X)		; 01 F7
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bmi  56.b		; 30 38
	pei ($EC.b)		; D4 EC
	inx		; E8
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $9608.w		; 0C 08 96
	php		; 08
	inc $38.b,X		; F6 38
	dec $FC.b		; C6 FC
	ora $FC.b,S		; 03 FC
	ora $33.b,S		; 03 33
	and ($20.b,S),Y		; 33 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	and ($CC.b,S),Y		; 33 CC
	jsr $00D9.w		; 20 D9 00
	sei		; 78
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	cpy #$9F.b		; C0 9F
	cpx #$DF.b		; E0 DF
	sei		; 78
	eor $A1CE80.l,X		; 5F 80 CE A1
	cmp $21EFD0.l		; CF D0 EF 21
	ora $CFF2.w,X		; 1D F2 CF
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	bra -16.b		; 80 F0
	ora ($F1.b,X)		; 01 F1
	brk $F0.b		; 00 F0
	brk $35.b		; 00 35
.ACCU 16
.INDEX 16
	rep #$F7		; C2 F7
	brk $20.b		; 00 20
	lda $B800.w,Y		; B9 00 B8
	php		; 08
	sec		; 38
	sbc [$D7.b]		; E7 D7
	ldx $D7.b		; A6 D7
	pha		; 48
	lda $84EB05.l		; AF 05 EB 84
	tad		; 5B
	bmi  70.b		; 30 46
	bmi  71.b		; 30 47
	plp		; 28
	cmp [$E7.b]		; C7 E7
	php		; 08
	sbc [$08.b]		; E7 08
	cmp $102F10.l		; CF 10 2F 10
	sta $7E1920.l,X		; 9F 20 19 7E
	tsb $856B.w		; 0C 6B 85
	txs		; 9A
	sta $8392.w		; 8D 92 83
	stz $908E.w		; 9C 8E 90
	dey		; 88
	bcs -107.b		; B0 95
	ldy $59.b		; A4 59
	bra  76.b		; 80 4C
	bcc -115.b		; 90 8D
	rts		; 60

	sta $8360.w		; 8D 60 83
	rts		; 60

	sta $408F60.l		; 8F 60 8F 40
	txy		; 9B
	rti		; 40

	cld		; D8
	cli		; 58
	cpy #$50F0.w		; C0 F0 50
	bcs -48.b		; B0 D0
	bmi -112.b		; 30 90
	bvs  32.b		; 70 20
	cpx #$60A0.w		; E0 A0 60
	cpy #$D840.w		; C0 40 D8
	rol $F0.b		; 26 F0
	tsb $08F0.w		; 0C F0 08
	beq  12.b		; F0 0C
	beq   8.b		; F0 08
	cpx #$E010.w		; E0 10 E0
	ora ($C0.b,S),Y		; 13 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bit $01.b,X		; 34 01
	ora ($00.b)		; 12 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sbc $44FFC0.l,X		; FF C0 FF 44
	adc $0D.b,X		; 75 0D
	adc $375D1B.l		; 6F 1B 5D 37
	sei		; 78
	bit $1873.w		; 2C 73 18
	cpx $80.b		; E4 80
	brk $80.b		; 00 80
	brk $06.b		; 00 06
	dey		; 88
	asl $1E90.w		; 0E 90 1E
	jsr $003F.w		; 20 3F 00
	bit $1800.w,X		; 3C 00 18
	brk $92.b		; 00 92
	sbc $48.b,S		; E3 48
	bvs  62.b		; 70 3E
	sec		; 38
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($7F00.w,X)		; FC 00 7F
	bra  63.b		; 80 3F
	rti		; 40

	ora $3C.b,S		; 03 3C
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sei		; 78
	sbc $40FF06.l,X		; FF 06 FF 40
	adc $A33FB0.l,X		; 7F B0 3F A3
	lda $482E.w		; AD 2E 48
	ror $40.b		; 66 40
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $D3.b		; 00 D3
	brk $77.b		; 00 77
	bra 127.b		; 80 7F
	bra  31.b		; 80 1F
	cpx #$E716.w		; E0 16 E7
	ora $24DE.w,Y		; 19 DE 24
	sed		; F8
	beq -64.b		; F0 C0
	cld		; D8
	txs		; 9A
	adc ($7F.b),Y		; 71 7F
	cpx #$C0FF.w		; E0 FF C0
	sbc $1F0817.l,X		; FF 17 08 1F
	jsr $007F.w		; 20 7F 00
	sbc $00E500.l,X		; FF 00 E5 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$9AC0.w		; C0 C0 9A
	ply		; 7A
	rol $1E.b		; 26 1E
	sec		; 38
	rol $3F41.w,X		; 3E 41 3F
	jsr $CC1F.w		; 20 1F CC
	cmp $0D.b,S		; C3 0D
	plx		; FA
	cpy #$FA3F.w		; C0 3F FA
	ora $FE.b		; 05 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $07.b,S		; 03 07
	asl $07.b		; 06 07
	asl $02.b		; 06 02
	brk $01.b		; 00 01
	asl $03.b		; 06 03
	tsb $0C03.w		; 0C 03 0C
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora $04.b,S		; 03 04
	tax		; AA
	cmp [$55.b]		; C7 55
	sta ($57.b)		; 92 57
	bcc -72.b		; 90 B8
	sec		; 38
	rol $403F.w,X		; 3E 3F 40
	adc $877F00.l,X		; 7F 00 7F 87
	sed		; F8
	sbc $00EF00.l,X		; FF 00 EF 00
	sbc $00C700.l		; EF 00 C7 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $07.b		; 00 07
	brk $93.b		; 00 93
	asl $7FE3.w,X		; 1E E3 7F
	adc ($7F.b,X)		; 61 7F
	ldy #$10FF.w		; A0 FF 10
	sbc $73C00F.l,X		; FF 0F C0 73
	tsb $39D6.w		; 0C D6 39
	sbc ($00.b,X)		; E1 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00FF00.l,X		; 3F 00 FF 00
	inc $A600.w,X		; FE 00 A6
	jsl $827B48.l		; 22 48 7B 82
	sbc $FC01.w,Y		; F9 01 FC
	cop $FE.b		; 02 FE
	cmp ($1F.b,X)		; C1 1F
	cpy #$202F.w		; C0 2F 20
	cmp [$DE.b],Y		; D7 DE
	ora ($87.b,X)		; 01 87
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	brk $07.b		; 00 07
	ora [$0C.b]		; 07 0C
	ora $081817.l		; 0F 17 18 08
	tsb $1E19.w		; 0C 19 1E
	ora $0A1A.w,Y		; 19 1A 0A
	phd		; 0B
	ora $03.b,S		; 03 03
	ora [$08.b]		; 07 08
	ora $001F10.l		; 0F 10 1F 00
	ora $201F30.l		; 0F 30 1F 20
	tas		; 1B
	bit $0B.b		; 24 0B
	stz $03.b,X		; 74 03
	bit $9EE2.w,X		; 3C E2 9E
	and ($DD.b,X)		; 21 DD
	php		; 08
	ora $77.b		; 05 77
	ror $09.b,X		; 76 09
	ply		; 7A
	sta $78.b,S		; 83 78
	.db $82, $3D, $21		; 82 3D 21
	lda $F501F6.l,X		; BF F6 01 F5
	cop $FD.b		; 02 FD
	cop $8B.b		; 02 8B
	brk $87.b		; 00 87
	brk $87.b		; 00 87
	brk $C2.b		; 00 C2
	brk $C0.b		; 00 C0
	brk $28.b		; 00 28
	and ($51.b,S),Y		; 33 51
	adc $A9.b,S		; 63 A9
	wai		; CB
	cpy $558A.w		; CC 8A 55
	lda ($BB.b,S),Y		; B3 BB
	adc $E27632.l,X		; 7F 32 76 E2
	sbc [$3F.b]		; E7 3F
	cpy #$807F.w		; C0 7F 80
	sbc [$00.b],Y		; F7 00
	inc $01.b,X		; F6 01
	cmp $008700.l		; CF 00 87 00
	stx $1F01.w		; 8E 01 1F
	brk $04.b		; 00 04
	tsb $0F.b		; 04 0F
	eor $0B1F07.l		; 4F 07 1F 0B
	and $3D7E1F.l,X		; 3F 1F 7E 3D
	dec A		; 3A
	adc $71E2.w		; 6D E2 71
	inc $C03B.w		; EE 3B C0
	bmi -128.b		; 30 80
	rts		; 60

	bra  88.b		; 80 58
	bra  61.b		; 80 3D
	bra  61.b		; 80 3D
	cpy #$10ED.w		; C0 ED 10
	sbc ($00.b),Y		; F1 00
	cpy #$E040.w		; C0 40 E0
	sbc ($F1.b,X)		; E1 F1
	beq -27.b		; F0 E5
	inc $8A.b		; E6 8A
	trb $05.b		; 14 05
	ldy $1D.b		; A4 1D
	dec $BE3A.w,X		; DE 3A BE
	cpy #$6123.w		; C0 23 61
	asl $0E71.w		; 0E 71 0E
	and [$18.b]		; 27 18
	sta $40BB60.l,X		; 9F 60 BB 40
	sbc ($00.b,X)		; E1 00
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	asl $140A.w		; 0E 0A 14
	tsb $0011.w		; 0C 11 00
	asl $00.b,X		; 16 00
	clc		; 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	rti		; 40

	bcc -128.b		; 90 80
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	ora [$08.b]		; 07 08
	asl $1D11.w		; 0E 11 1D
	and $3B.b,S		; 23 3B
	rol DMAP3.w		; 2E 30 43
	jmp ($6767.w,X)		; 7C 67 67
	ora $04.b,S		; 03 04
	ora [$78.b]		; 07 78
	ora $201E30.l		; 0F 30 1E 20
	bit $3F00.w,X		; 3C 00 3F
	cpy #$807F.w		; C0 7F 80
	adc [$98.b]		; 67 98
	sbc $6DF1.w,X		; FD F1 6D
	sta ($5F.b),Y		; 91 5F
	eor $F3.b,S		; 43 F3
	sbc [$19.b],Y		; F7 19
	sbc $007F08.l,X		; FF 08 7F 00
	and $FE3F80.l,X		; 3F 80 3F FE
	brk $FE.b		; 00 FE
	brk $BC.b		; 00 BC
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	sbc $C6FFC0.l,X		; FF C0 FF C6
	beq -46.b		; F0 D2
	sty $A7C8.w		; 8C C8 A7
	jsr $80BA.w		; 20 BA 80
	dec A		; 3A
	rti		; 40

	adc ($00.b)		; 72 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $58.b		; 00 58
	brk $20.b		; 00 20
	eor $A0.b		; 45 A0
	eor $60.b		; 45 60
	sta $FC0E.w		; 8D 0E FC
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	ora $F4.b,X		; 15 F4
	phd		; 0B
	sbc $BB2C.w,Y		; F9 2C BB
	mvp $33,$D3		; 44 D3 33
	jsr ($0003.w,X)		; FC 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $07.b		; 00 07
	brk $27.b		; 00 27
	rti		; 40

	eor $00B320.l		; 4F 20 B3 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	dec A		; 3A
	and $1816.w,X		; 3D 16 18
	ora ($1C.b)		; 12 1C
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $8F.b		; 00 8F
	ora [$F8.b]		; 07 F8
	and $601F40.l,X		; 3F 40 1F 60
	ora $390220.l,X		; 1F 20 02 39
	eor $5A.b		; 45 5A
	ora $0D.b,S		; 03 0D
	and $1C.b,S		; 23 1C
	cpy #$10D0.w		; C0 D0 10
	beq 103.b		; F0 67
	ora $C70718.l,X		; 1F 18 07 C7
	brk $67.b		; 00 67
	bra  19.b		; 80 13
	cpx #$C023.w		; E0 23 C0
	cpy #$F02F.w		; C0 2F F0
	ora $FF00FF.l		; 0F FF 00 FF
	brk $90.b		; 00 90
	and ($00.b),Y		; 31 00
	rts		; 60

	rts		; 60

	mvp $20,$20		; 44 20 20
	brk $11.b		; 00 11
	bra -97.b		; 80 9F
	cpy #$C8CF.w		; C0 CF C8
	cmp $E00EF0.l		; CF F0 0E E0
	ora $209B60.l,X		; 1F 60 9B 20
	cmp $87EE01.l,X		; DF 01 EE 87
	rts		; 60

	cmp [$30.b]		; C7 30
	cmp $30.b,S		; C3 30
	tsb $41.b		; 04 41
	brk $01.b		; 00 01
	cop $90.b		; 02 90
	ora $80.b,S		; 03 80
	cop $C5.b		; 02 C5
	brk $FF.b		; 00 FF
	cop $FF.b		; 02 FF
	tsb $86FC.w		; 0C FC 86
	sec		; 38
	.db $82, $7C, $83		; 82 7C 83
	jmp ($7C83.w)		; 6C 83 7C
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	adc ($00.b)		; 72 00
	ror $00.b,X		; 76 00
	stz $03.b		; 64 03
	bpl -49.b		; 10 CF
	asl $03C1.w,X		; 1E C1 03
	cpy #$FC1C.w		; C0 1C FC
	ora [$FF.b]		; 07 FF
	.db $42, $FE		; 42 FE
	rti		; 40

	cpy #$7F7C.w		; C0 7C 7F
	and $003F00.l,X		; 3F 00 3F 00
	and $000300.l,X		; 3F 00 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	and $E4807F.l,X		; 3F 7F 80 E4
	jsr ($9868.w,X)		; FC 68 98
	cpx #$5810.w		; E0 10 58
	sec		; 38
	bcc 112.b		; 90 70
	jsr $00E0.w		; 20 E0 00
	brk $60.b		; 00 60
	cpx #$02FC.w		; E0 FC 02
	sed		; F8
	asl $F0.b		; 06 F0
	tsb $00F8.w		; 0C F8 00
	beq   8.b		; F0 08
	cpx #$0010.w		; E0 10 00
	beq -32.b		; F0 E0
	inc A		; 1A
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $FF01BF.l,X		; BF BF 01 FF
	plx		; FA
	asl $0A.b		; 06 0A
	asl $DF.b		; 06 DF
	cmp [$B1.b]		; C7 B1
	sta $000600.l		; 8F 00 06 00
	cmp $FF40BF.l,X		; DF BF 40 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($3F.b,X)		; 01 3F
	brk $7F.b		; 00 7F
	brk $4A.b		; 00 4A
	cmp $65.b		; C5 65
	sbc $2B.b,S		; E3 2B
	inc $06.b		; E6 06
	sbc $0C.b		; E5 0C
	adc ($58.b)		; 72 58
	stz $00.b,X		; 74 00
	brk $40.b		; 00 40
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $8C.b		; 00 8C
	brk $88.b		; 00 88
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F070.w		; E0 70 F0
	tsb $24FC.w		; 0C FC 24
	trb $F000.w		; 1C 00 F0
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F4.b		; 00 F4
	cpx #$F01E.w		; E0 1E F0
	ora $FC03FC.l		; 0F FC 03 FC
	cop $00.b		; 02 00
	clc		; 18
	bpl   0.b		; 10 00
	cpx #$C010.w		; E0 10 C0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$90C0.w		; C0 C0 90
	bcc -80.b		; 90 B0
	bcs  -8.b		; B0 F8
	tsb $F0.b		; 04 F0
	php		; 08
	beq   8.b		; F0 08
	cpx #$C018.w		; E0 18 C0
	bmi -64.b		; 30 C0
	jsr $6890.w		; 20 90 68
	bcs  76.b		; B0 4C
	cmp ($A6.b,X)		; C1 A6
	bra  67.b		; 80 43
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($00.b,X)		; C1 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $F9.b		; 02 F9
	php		; 08
	sed		; F8
	bmi -16.b		; 30 F0
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
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
	brk $38.b		; 00 38
	sec		; 38
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	sec		; 38
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $0E09.w		; 0C 09 0E
	tsb $060F.w		; 0C 0F 06
	ora [$03.b]		; 07 03
	ora $24.b,S		; 03 24
	and [$2B.b]		; 27 2B
	bit $3826.w,X		; 3C 26 38
	ora $100F30.l		; 0F 30 0F 10
	ora $C80790.l		; 0F 90 07 C8
	ora $EC.b,S		; 03 EC
	and [$58.b]		; 27 58
	and $403F40.l,X		; 3F 40 3F 40
	adc ($70.b,S),Y		; 73 70
	bcc  30.b		; 90 1E
	cpy $07.b		; C4 07
	.db $62, $83, $61		; 62 83 61
	sta ($6F.b,X)		; 81 6F
	sta $790380.l		; 8F 80 03 79
	adc $008F.w,Y		; 79 8F 00
	sbc ($00.b,X)		; E1 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $86.b		; 00 86
	brk $A4.b		; 00 A4
	adc [$D0.b]		; 67 D0
	bcs  45.b		; B0 2D
	lda $14.b,S		; A3 14
	jsr ($FF90.w,X)		; FC 90 FF
	cmp ($FF.b,X)		; C1 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	sbc ($18.b,X)		; E1 18
	bvs  15.b		; 70 0F
	eor $000300.l,X		; 5F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($F3.b,S),Y		; 13 F3
	tsb $07.b		; 04 07
	ora $161E.w,Y		; 19 1E 16
	tya		; 98
	eor ($5B.b,S),Y		; 53 5B
	bit $27.b,X		; 34 27
	bmi  39.b		; 30 27
	brk $00.b		; 00 00
	cmp $0C.b,S		; C3 0C
	ora [$F8.b]		; 07 F8
	ora $609FE0.l,X		; 1F E0 9F 60
	jmp.w [$3820]		; DC 20 38
	cpy #$C038.w		; C0 38 C0
	brk $FF.b		; 00 FF
	asl $4CE1.w,X		; 1E E1 4C
	sta $FD.b,S		; 83 FD
	jmp ($F1F2.w,X)		; 7C F2 F1
	sbc $31E3.w		; ED E3 31
	beq  50.b		; F0 32
	inc $4000.w		; EE 00 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $00.b,S		; 83 00
	ora $001F00.l		; 0F 00 1F 00
	ora $011E00.l		; 0F 00 1E 01
	brk $BF.b		; 00 BF
	beq -16.b		; F0 F0
	plp		; 28
	cld		; D8
	cld		; D8
	sec		; 38
	sei		; 78
	sed		; F8
	beq -16.b		; F0 F0
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	asl $06F8.w		; 0E F8 06
	sed		; F8
	asl $F8.b		; 06 F8
	tsb $F0.b		; 04 F0
	tsb $18E0.w		; 0C E0 18
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	asl $1F.b		; 06 1F
	phd		; 0B
	tsa		; 3B
	ora $31.b		; 05 31
	ora $0C31.w,X		; 1D 31 0C
	adc ($01.b,X)		; 61 01
	ora ($06.b,X)		; 01 06
	asl $07.b		; 06 07
	ora [$09.b]		; 07 09
	ora #$1014.w		; 09 14 10
	asl $2E10.w,X		; 1E 10 2E
	jsr $213F.w		; 20 3F 21
	rts		; 60

	php		; 08
	beq -120.b		; F0 88
	sec		; 38
	dey		; 88
	bvc -60.b		; 50 C4
	sec		; 38
	cpx $0C.b		; E4 0C
	cpx $18.b		; E4 18
	lda ($00.b)		; B2 00
	ora ($F0.b)		; 12 F0
	brk $78.b		; 00 78
	php		; 08
	beq -128.b		; F0 80
	sec		; 38
	brk $DC.b		; 00 DC
	cpy $B8.b		; C4 B8
	ldy #$000C.w		; A0 0C 00
	asl $0012.w,X		; 1E 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FFE02E.l,X		; 1F 2E E0 FF
	brk $FF.b		; 00 FF
	brk $FA.b		; 00 FA
	cop $E9.b		; 02 E9
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	rti		; 40

	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F600.w,X		; FD 00 F6
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$6040.w		; E0 40 60
	ldy #$C030.w		; A0 30 C0
	bpl 112.b		; 10 70
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $1D.b		; 00 1D
	asl $3F.b		; 06 3F
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	ora $000602.l		; 0F 02 06 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $BE.b		; 00 BE
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $77.b		; 00 77
	brk $BB.b		; 00 BB
	brk $FE.b		; 00 FE
	ora ($5E.b,X)		; 01 5E
	ora ($6E.b,X)		; 01 6E
	ora ($B8.b,X)		; 01 B8
	sbc $3E1E.w,Y		; F9 1E 3E
	cmp $EE66DF.l		; CF DF 66 EE
	and ($76.b)		; 32 76
	clv		; B8
	clv		; B8
	trb $4CBC.w		; 1C BC 4C
	jmp.w [$0000]		; DC 00 00
	ora [$08.b]		; 07 08
	phd		; 0B
	trb $33.b		; 14 33
	tsb $395E.w		; 0C 5E 39
	stz $3B.b,X		; 74 3B
	sei		; 78
	and ($6D.b,S),Y		; 33 6D
	sbc ($00.b)		; F2 00
	brk $08.b		; 00 08
	brk $14.b		; 00 14
	brk $0C.b		; 00 0C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $35.b		; 00 35
	ora ($B2.b,X)		; 01 B2
	.db $42, $70		; 42 70
	dey		; 88
	tya		; 98
	rts		; 60

	beq  12.b		; F0 0C
	trb $7BE3.w		; 1C E3 7B
	cpx $2F.b		; E4 2F
	stp		; DB
	sbc $1FEAC3.l,X		; FF C3 EA 1F
	dey		; 88
	brk $60.b		; 00 60
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	brk $9C.b		; 00 9C
	bra  34.b		; 80 22
	ora ($23.b,X)		; 01 23
	brk $33.b		; 00 33
	bpl  55.b		; 10 37
	ora $113F.w		; 0D 3F 11
	ora $2B6A.w,X		; 1D 6A 2B
	ldy $A7.b,X		; B4 A7
	and $734F.w,Y		; 39 4F 73
	sbc $FFFE0F.l,X		; FF 0F FE FF
	tsb $0001.w		; 0C 01 00
	ora ($20.b),Y		; 11 20
	rol A		; 2A
	bvc  20.b		; 50 14
	cmp $A319.w,Y		; D9 19 A3
	and $06.b,S		; 23 06
	ora $FEFFE0.l		; 0F E0 FF FE
	ora $FE.b,S		; 03 FE
	sta ($3F.b,X)		; 81 3F
	cpy #$00FF.w		; C0 FF 00
	sbc $C0BF80.l,X		; FF 80 BF C0
	adc $00FF80.l,X		; 7F 80 FF 00
	bvs 112.b		; 70 70
	jsr $18A0.w		; 20 A0 18
	cld		; D8
	rol $BE3E.w,X		; 3E 3E BE
	ldx $DE1E.w,Y		; BE 1E DE
	asl $0DDE.w,X		; 1E DE 0D
	sta $0001.w		; 8D 01 00
	ora [$01.b]		; 07 01
	ora $530E83.l		; 0F 83 0E 53
	sty $3F62.w		; 8C 62 3F
	rti		; 40

	lda [$80.b]		; A7 80
	lsr $C8.b		; 46 C8
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	bra   3.b		; 80 03
	bne  67.b		; D0 43
	beq  64.b		; F0 40
	sei		; 78
	brk $B8.b		; 00 B8
	dey		; 88
	brk $F8.b		; 00 F8
	sei		; 78
	brk $84.b		; 00 84
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	brk $C8.b		; 00 C8
	ora [$A2.b]		; 07 A2
	asl $3C45.w,X		; 1E 45 3C
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	brk $80.b		; 00 80
	bvs 112.b		; 70 70
	iny		; C8
	sed		; F8
	sta $C4.b		; 85 C4
	phd		; 0B
	dey		; 88
	phb		; 8B
	sei		; 78
	sta [$70.b],Y		; 97 70
	and $C05EE0.l		; 2F E0 5E C0
	tad		; 5B
	cmp $48.b,S		; C3 48
	cmp $80FF00.l		; CF 00 FF 80
	adc $2F1017.l,X		; 7F 17 10 2F
	jsr $405F.w		; 20 5F 40
	lda $80BC80.l,X		; BF 80 BC 80
	ldx $86.b,Y		; B6 86
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	jsr $4080.w		; 20 80 40
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
	inc A		; 1A
	ora $18.b,S		; 03 18
	cop $3E.b		; 02 3E
	brk $6E.b		; 00 6E
	bpl -20.b		; 10 EC
	bpl -12.b		; 10 F4
	bpl -24.b		; 10 E8
	tsb $F8.b		; 04 F8
	php		; 08
	tsb $00.b		; 04 00
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $B8.b		; 00 B8
	brk $F4.b		; 00 F4
	rti		; 40

	ldx $40.b,Y		; B6 40
	ply		; 7A
	php		; 08
	and $0C.b,X		; 35 0C
	ora $0F06.w,Y		; 19 06 0F
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	adc $18.b,S		; 63 18
	.db $42, $3C		; 42 3C
	lsr $30.b		; 46 30
	cpy $78.b		; C4 78
	cpy $8820.w		; CC 20 88
	bvs -104.b		; 70 98
	cpy #$1C10.w		; C0 10 1C
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	rti		; 40

	jmp ($3044.w,X)		; 7C 44 30
	brk $78.b		; 00 78
	php		; 08
	rts		; 60

	brk $70.b		; 00 70
	bpl  14.b		; 10 0E
	inc A		; 1A
	brk $19.b		; 00 19
	ora $0F04.w		; 0D 04 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $04.b		; 00 04
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	php		; 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	bcs  63.b		; B0 3F
	cpy #$00FF.w		; C0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00C000.l,X		; FF 00 C0 00
	brk $00.b		; 00 00
	brk $C9.b		; 00 C9
	ora #$2121.w		; 09 21 21
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	php		; 08
	sed		; F8
	sty $8430.w		; 8C 30 84
	jmp ($18C6.w,X)		; 7C C6 18
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	sbc $0C.b,S		; E3 0C
	adc ($1F.b,X)		; 61 1F
	adc ($F8.b),Y		; 71 F8
	php		; 08
	bvs   0.b		; 70 00
	jsr ($B884.w,X)		; FC 84 B8
	bra 126.b		; 80 7E
	.db $42, $5C		; 42 5C
	rti		; 40

	and $202E21.l,X		; 3F 21 2E 20
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
	lda [$00.b],Y		; B7 00
	jmp $006800.l		; 5C 00 68 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $6C.b		; 24 6C
	bpl  48.b		; 10 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	jsr ($7EFD.w,X)		; FC FD 7E
	lda $447E.w,X		; BD 7E 44
	and $141F2E.l,X		; 3F 2E 1F 14
	and $6F386F.l		; 2F 6F 38 6F
	dec A		; 3A
	sta $5E60.w,X		; 9D 60 5E
	jsr $304E.w		; 20 4E 30
	and $001F00.l,X		; 3F 00 1F 00
	and $003800.l		; 2F 00 38 00
	dec A		; 3A
	cop $FA.b		; 02 FA
	ora [$CD.b]		; 07 CD
	ora [$CB.b]		; 07 CB
	ora [$93.b]		; 07 93
	ora $BB44.w		; 0D 44 BB
	dec $C331.w		; CE 31 C3
	bit $02F1.w,X		; 3C F1 02
	sbc $30FB04.l,X		; FF 04 FB 30
	sbc $087934.l,X		; FF 34 79 08
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy $EFC0.w		; CC C0 EF
	beq -47.b		; F0 D1
	cpx #$C0A1.w		; E0 A1 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80F3.w		; C0 F3 80
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $10FF00.l,X		; FF 00 FF 10
	lda $3CDF78.l,X		; BF 78 DF 3C
	adc $0F371F.l		; 6F 1F 37 0F
	tas		; 1B
	tsb $1F.b		; 04 1F
	ora $03.b,S		; 03 03
	ora $17.b,S		; 03 17
	ora [$1B.b],Y		; 17 1B
	xce		; FB
	tsb $067C.w		; 0C 7C 06
	and $031F00.l,X		; 3F 00 1F 03
	ora $000F07.l		; 0F 07 0F 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	tsb $07.b		; 04 07
	php		; 08
	ora $110711.l		; 0F 11 07 11
	ora $0C0319.l		; 0F 19 03 0C
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	ora #$0901.w		; 09 01 09
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $DC.b		; 00 DC
	brk $4C.b		; 00 4C
	jsr $106E.w		; 20 6E 10
	and $003700.l,X		; 3F 00 37 00
	asl $0008.w,X		; 1E 08 00
	brk $10.b		; 00 10
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $3B.b		; 00 3B
	tsb $3D.b		; 04 3D
	tsb $7A.b		; 04 7A
	ora ($7E.b,X)		; 01 7E
	cop $6C.b		; 02 6C
	asl $3C.b,X		; 16 3C
	bpl  44.b		; 10 2C
	brk $78.b		; 00 78
	jsr $0000.w		; 20 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	bpl -32.b		; 10 E0
	jsr $20C0.w		; 20 C0 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	trb $1426.w		; 1C 26 14
	and [$1E.b],Y		; 37 1E
	ora ($1A.b,S),Y		; 13 1A
	.db $42, $04		; 42 04
	cpx $70.b		; E4 70
	iny		; C8
	cpx #$0000.w		; E0 00 00
	tsb $041C.w		; 0C 1C 04
	trb $1E16.w		; 1C 16 1E
	ora ($3E.b)		; 12 3E
	brk $3C.b		; 00 3C
	rti		; 40

	sei		; 78
	bra -16.b		; 80 F0
	bvs -128.b		; 70 80
	ldy #$5050.w		; A0 50 50
	inx		; E8
	cpx $E870.w		; EC 70 E8
	beq  -8.b		; F0 F8
	pea $F834.w		; F4 34 F8
	jmp $80B0.w		; 4C B0 80
	brk $50.b		; 00 50
	brk $E8.b		; 00 E8
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	rti		; 40

	stz $80.b,X		; 74 80
	sed		; F8
	brk $B0.b		; 00 B0
	brk $B8.b		; 00 B8
	cpy #$E0D0.w		; C0 D0 E0
	bne -32.b		; D0 E0
	bmi -64.b		; 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bne  -4.b		; D0 FC
	bpl  -2.b		; 10 FE
	tsb $FE.b		; 04 FE
	ora ($BE.b,X)		; 01 BE
	rti		; 40

	sbc $02FE02.l,X		; FF 02 FE 02
	sbc $FC03.w,X		; FD 03 FC
	ora $40.b,S		; 03 40
	bvc   0.b		; 50 00
	tsb $38.b		; 04 38
	sec		; 38
	ora $19D8.w,Y		; 19 D8 19
	cld		; D8
	ora $DA18.w,Y		; 19 18 DA
	phx		; DA
	cmp #$F8E9.w		; C9 E9 F8
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $7F.b		; 00 7F
	bra 110.b		; 80 6E
	bcc -17.b		; 90 EF
	bmi  -1.b		; 30 FF
	cpx #$80FD.w		; E0 FD 80
	bra -96.b		; 80 A0
	ldy #$20A0.w		; A0 A0 20
	rts		; 60

	jsr $62E0.w		; 20 E0 62
	sbc ($E8.b,S),Y		; F3 E8
	sed		; F8
	cmp [$F7.b],Y		; D7 F7
	adc ($E3.b,X)		; 61 E3
	sta $7C3F38.l,X		; 9F 38 3F 7C
	and $309F78.l,X		; 3F 78 9F 30
	eor $C0BF90.l		; 4F 90 BF C0
	ora $FC.b,S		; 03 FC
	and $087C.w,X		; 3D 7C 08
	sei		; 78
	trb $11FC.w		; 1C FC 11
	sbc $7707.w,Y		; F9 07 77
	ora [$B7.b]		; 07 B7
	bra -64.b		; 80 C0
	brk $FC.b		; 00 FC
	bit $EFFE.w,X		; 3C FE EF
	bmi -50.b		; 30 CE
	bmi  -1.b		; 30 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	ldy $00.b,X		; B4 00
	bmi -114.b		; 30 8E
	stx $9C9C.w		; 8E 9C 9C
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $E900.w,X		; DE 00 E9
	asl $4784.w		; 0E 84 47
	rol A		; 2A
	adc $0D.b,S		; 63 0D
	adc ($1E.b,X)		; 61 1E
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	clc		; 18
	cpy #$14E1.w		; C0 E1 14
	tsb $7A.b		; 04 7A
	.db $42, $1D		; 42 1D
	ora ($3E.b,X)		; 01 3E
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	jsr ($F802.w,X)		; FC 02 F8
	ora $CC.b,S		; 03 CC
	and ($0E.b,X)		; 21 0E
	cpx #$F017.w		; E0 17 F0
	phd		; 0B
	sed		; F8
	ora $5C.b		; 05 5C
	.db $82, $4E, $60		; 82 4E 60
	rts		; 60

	asl $3F02.w		; 0E 02 3F
	and ($7F.b,X)		; 21 7F
	rts		; 60

	and $909720.l		; 2F 20 97 90
	phb		; 8B
	php		; 08
	sta $04.b		; 85 04
	rol $BF1F.w,X		; 3E 1F BF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FDFFFE.l,X		; FF FE FF FD
	inc $001F.w,X		; FE 1F 00
	adc $40BF00.l,X		; 7F 00 BF 40
	and $609FC0.l,X		; 3F C0 9F 60
	cmp [$38.b]		; C7 38
	lda $00FE40.l,X		; BF 40 FE 00
	cpy #$2020.w		; C0 20 20
	cpy #$E0D0.w		; C0 D0 E0
	bne -32.b		; D0 E0
	sed		; F8
	cpx #$F874.w		; E0 74 F8
	jsr ($147A.w,X)		; FC 7A 14
	plx		; FA
	jsr $C000.w		; 20 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	tsb $180B.w		; 0C 0B 18
	ora $10.b,S		; 03 10
	asl $30.b,X		; 16 30
	asl $33.b,X		; 16 33
	bit $76.b,X		; 34 76
	bmi 124.b		; 30 7C
	cpx #$0B78.w		; E0 78 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	bit $0820.w		; 2C 20 08
	brk $48.b		; 00 48
	pha		; 48
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	ldy #$D030.w		; A0 30 D0
	clc		; 18
	cpx #$000C.w		; E0 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	sei		; 78
	tsb $86B4.w		; 0C B4 86
	jmp ($1CC6.w,X)		; 7C C6 1C
	dec $70.b		; C6 70
	cpy $A8.b		; C4 A8
	sty $1870.w		; 8C 70 18
	cpy #$F018.w		; C0 18 F0
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	bra 120.b		; 80 78
	rti		; 40

	ldy $7084.w,X		; BC 84 70
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl   5.b		; 10 05
	trb $380B.w		; 1C 0B 38
	ora [$70.b],Y		; 17 70
	and $C15C60.l		; 2F 60 5C C1
	clc		; 18
	.db $82, $B0, $84		; 82 B0 84
	bcs -104.b		; B0 98
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $405F20.l		; 2F 20 5F 40
	rol $FC00.w,X		; 3E 00 FC
	bra 120.b		; 80 78
	brk $60.b		; 00 60
	brk $E3.b		; 00 E3
	asl $C1.b		; 06 C1
	bit $83.b		; 24 83
	mvp $8C,$07		; 44 07 8C
	ora $08.b,S		; 03 08
	asl $08.b		; 06 08
	ora $09.b		; 05 09
	asl $1B.b		; 06 1B
	sbc ($00.b,X)		; E1 00
	cmp $00.b,S		; C3 00
	sta [$04.b]		; 87 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $080E08.l		; 0F 08 0E 08
	ora $E009.w		; 0D 09 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $1F.b,S		; 03 1F
	ora $3C.b,S		; 03 3C
	ora ($7F.b,X)		; 01 7F
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $1A.b		; 00 1A
	brk $36.b		; 00 36
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $08.b		; 05 08
	ora $1B12.w		; 0D 12 1B
	ror $00.b,X		; 76 00
	adc $2D00.w		; 6D 00 2D
	brk $1D.b		; 00 1D
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	tsa		; 3B
	tsb $16.b		; 04 16
	tsb $16.b		; 04 16
	tsb $000E.w		; 0C 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$03.b]		; 07 03
	ora [$0E.b]		; 07 0E
	ora [$18.b]		; 07 18
	ora [$3E.b]		; 07 3E
	brk $3E.b		; 00 3E
	brk $4C.b		; 00 4C
	bmi 120.b		; 30 78
	bmi   0.b		; 30 00
	brk $04.b		; 00 04
	tsb $01.b		; 04 01
	ora ($06.b,X)		; 01 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $99.b		; 00 99
	bit $18C3.w,X		; 3C C3 18
	lda [$00.b]		; A7 00
	lda $F600.w,X		; BD 00 F6
	brk $DB.b		; 00 DB
	brk $DD.b		; 00 DD
	brk $CD.b		; 00 CD
	brk $18.b		; 00 18
	ror $3C00.w,X		; 7E 00 3C
	ora ($59.b,X)		; 01 59
	brk $42.b		; 00 42
	eor ($5B.b)		; 52 5B
	cmp #$CCED.w		; C9 ED CC
	inc $F6C4.w		; EE C4 F6
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $E8.b		; 00 E8
	brk $74.b		; 00 74
	brk $BC.b		; 00 BC
	brk $DC.b		; 00 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	bvs  48.b		; 70 30
	clv		; B8
	tya		; 98
	cld		; D8
	iny		; C8
	inx		; E8
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	ora $0E.b,S		; 03 0E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0E.b		; 02 0E
	ora $000308.l		; 0F 08 03 00
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	sta ($47.b,X)		; 81 47
	cpy #$8063.w		; C0 63 80
	and ($C0.b,X)		; 21 C0
	jsr $2160.w		; 20 60 21
	cpy #$6191.w		; C0 91 61
	ora ($E0.b,S),Y		; 13 E0
	ora ($C2.b)		; 12 C2
	.db $42, $81		; 42 81
	ora ($C0.b,X)		; 01 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	adc ($01.b,X)		; 61 01
	cpx #$E300.w		; E0 00 E3
	cop $33.b		; 02 33
	sbc $C33D.w,X		; FD 3D C3
	cmp ($A8.b,S),Y		; D3 A8
	ora $F09FF8.l		; 0F F8 9F F0
	inc $90.b		; E6 90
	cmp ($E8.b,S),Y		; D3 E8
	sta ($EF.b)		; 92 EF
	jsr ($C200.w,X)		; FC 00 C2
	cop $A1.b		; 02 A1
	bit $2AA9.w		; 2C A9 2A
	cmp $119F00.l		; CF 00 9F 11
	sbc $04E408.l		; EF 08 E4 04
	clc		; 18
	pea $9078.w		; F4 78 90
	iny		; C8
	bcc -16.b		; 90 F0
	bra -96.b		; 80 A0
	cpy #$C0A0.w		; C0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $F4.b		; 00 F4
	cpx #$8090.w		; E0 90 80
	bpl  32.b		; 10 20
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $36.b		; 04 36
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	plp		; 28
	trb $0C38.w		; 1C 38 0C
	bit $3C00.w,X		; 3C 00 3C
	brk $6C.b		; 00 6C
	brk $1A.b		; 00 1A
	ora ($14.b)		; 12 14
	trb $14.b		; 14 14
	trb $10.b		; 14 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $6C.b		; 00 6C
	bpl 100.b		; 10 64
	clc		; 18
	ror $6E10.w		; 6E 10 6E
	ora ($7F.b),Y		; 11 7F
	brk $3C.b		; 00 3C
	brk $37.b		; 00 37
	brk $13.b		; 00 13
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	clc		; 18
	bpl  16.b		; 10 10
	ora ($11.b),Y		; 11 11
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bpl  13.b		; 10 0D
	ora ($3C.b)		; 12 3C
	cop $3E.b		; 02 3E
	brk $7A.b		; 00 7A
	tsb $0C7A.w		; 0C 7A 0C
	ror $7C00.w,X		; 7E 00 7C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora $0B.b,S		; 03 0B
	ora [$0F.b]		; 07 0F
	ora [$33.b]		; 07 33
	ora $003F5F.l		; 0F 5F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	brk $27.b		; 00 27
	clc		; 18
	ror $FFBF.w,X		; 7E BF FF
	adc $9F7FBF.l,X		; 7F BF 7F 9F
	adc $79BF4F.l,X		; 7F 4F BF 79
	ora [$F6.b],Y		; 17 F6
	eor #$A57A.w		; 49 7A A5
	txy		; 9B
	bit $7F.b		; 24 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $17.b		; 00 17
	bpl   1.b		; 10 01
	pha		; 48
	and ($24.b,X)		; 21 24
	and $60DFD0.l		; 2F D0 DF 60
	lda $201F20.l,X		; BF 20 1F 20
	sta $904FE0.l,X		; 9F E0 4F 90
	sta $301F30.l		; 8F 30 1F 30
	cpy #$A0D4.w		; C0 D4 A0
	bit $08C0.w		; 2C C0 08
	cpx #$0020.w		; E0 20 00
	brk $07.b		; 00 07
	and [$07.b],Y		; 37 07
	adc [$07.b],Y		; 77 07
	sbc [$47.b],Y		; F7 47
	sed		; F8
	lda $48A758.l,X		; BF 58 A7 48
	eor [$98.b],Y		; 57 98
	dec $EE30.w		; CE 30 EE
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	clc		; 18
	rti		; 40

	brk $78.b		; 00 78
	php		; 08
	ldy #$1000.w		; A0 00 10
	bpl   6.b		; 10 06
	asl $8E.b		; 06 8E
	stx $8E8E.w		; 8E 8E 8E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $0C.b		; 06 0C
	ora $0A19.w		; 0D 19 0A
	and ($15.b,S),Y		; 33 15
	lsr $33.b		; 46 33
	sty $C07E.w		; 8C 7E C0
	ldx $5D60.w,Y		; BE 60 5D
	jsl $060003.l		; 22 03 00 06
	brk $1C.b		; 00 1C
	bpl  56.b		; 10 38
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	sta ($40.b,X)		; 81 40
	eor ($20.b,X)		; 41 20
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $09.b		; 06 09
	ora [$37.b],Y		; 17 37
	eor $007F1F.l		; 4F 1F 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $17.b		; 00 17
	brk $4F.b		; 00 4F
	brk $6F.b		; 00 6F
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$20C0.w		; C0 C0 20
	ldy #$ECD8.w		; A0 D8 EC
	sbc ($FA.b)		; F2 FA
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$2000.w		; C0 00 20
	brk $D8.b		; 00 D8
	brk $F2.b		; 00 F2
	brk $FC.b		; 00 FC
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $37.b		; 00 37
	asl $186B.w		; 0E 6B 18
	sbc [$10.b],Y		; F7 10
	adc $007F00.l,X		; 7F 00 7F 00
	cpy $0720.w		; CC 20 07
	ora [$00.b]		; 07 00
	brk $08.b		; 00 08
	php		; 08
	ora [$10.b],Y		; 17 10
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	jsr $21FE.w		; 20 FE 21
	eor $C01FC0.l,X		; 5F C0 1F C0
	sta $30C760.l		; 8F 60 C7 30
	cmp $18.b,S		; C3 18
	sta ($7C.b,X)		; 81 7C
	eor $1F3F.w,Y		; 59 3F 1F
	ora ($3F.b,X)		; 01 3F
	brk $7F.b		; 00 7F
	rti		; 40

	and $101F20.l,X		; 3F 20 1F 10
	and $747708.l		; 2F 08 77 74
	jsl $860322.l		; 22 22 03 86
	ora ($C6.b,X)		; 01 C6
	bra  66.b		; 80 42
	cmp ($63.b,X)		; C1 63
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	cmp $10.b,S		; C3 10
	sbc $08.b,S		; E3 08
	xce		; FB
	tsb $0001.w		; 0C 01 00
	sta $82.b,S		; 83 82
	sta $02.b,S		; 83 02
	bra   0.b		; 80 00
	sbc ($21.b,X)		; E1 21
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$C000.w		; C0 00 C0
	bra -32.b		; 80 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora ($05.b,X)		; 01 05
	cop $0E.b		; 02 0E
	ora ($02.b,X)		; 01 02
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $F7.b		; 00 F7
	adc $F8FF41.l		; 6F 41 FF F8
	ora [$FE.b]		; 07 FE
	adc ($FF.b),Y		; 71 FF
	inx		; E8
	sbc $EA1F14.l,X		; FF 14 1F EA
	ora $006F14.l		; 0F 14 6F 00
	sbc $000700.l,X		; FF 00 07 00
	and ($70.b),Y		; 31 70
	rts		; 60

	inx		; E8
	brk $14.b		; 00 14
	rts		; 60

	ror A		; 6A
	sbc ($15.b),Y		; F1 15
	asl $3FE1.w,X		; 1E E1 3F
	cpy #$433F.w		; C0 3F 43
	and $031F07.l,X		; 3F 07 1F 03
	ora $001F00.l		; 0F 00 1F 00
	and $616000.l,X		; 3F 00 60 61
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	php		; 08
	php		; 08
	ora ($12.b)		; 12 12
	sbc $7BFE.w,X		; FD FE 7B
	jsr ($78B6.w,X)		; FC B6 78
	sbc $70B880.l,X		; FF 80 B8 70
	adc $F0FFF8.l,X		; 7F F8 FF F0
	jsr ($7860.w,X)		; FC 60 78
	inc $FE30.w,X		; FE 30 FE
	brk $7C.b		; 00 7C
	bra -104.b		; 80 98
	bpl  -9.b		; 10 F7
	and ($FB.b,S),Y		; 33 FB
	rts		; 60

	sed		; F8
	brk $73.b		; 00 73
	sbc ($06.b)		; F2 06
	ora $0C.b		; 05 0C
	xba		; EB
	clc		; 18
	and [$10.b],Y		; 37 10
	sbc $FD00.w		; ED 00 FD
	brk $FB.b		; 00 FB
	cop $74.b		; 02 74
	asl $05.b		; 06 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $C0DFC0.l		; 0F C0 DF C0
	cmp $405DC0.l,X		; DF C0 5D 40
	phd		; 0B
	.db $82, $40, $60		; 82 40 60
	bra  48.b		; 80 30
	cpx #$C030.w		; E0 30 C0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -128.b		; 10 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b		; 05 03
	ora $01.b		; 05 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $FE.b		; 00 FE
	lda $9C.b,S		; A3 9C
.INDEX 8
	sep #$1E		; E2 1E
	cpx $7C.b		; E4 7C
	bra -16.b		; 80 F0
	cpx #$F8.b		; E0 F8
	rts		; 60

	sed		; F8
	bmi  -4.b		; 30 FC
	bpl -100.b		; 10 9C
	brk $DC.b		; 00 DC
	brk $D8.b		; 00 D8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -4.b		; 80 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	bpl -18.b		; 10 EE
	bpl  -2.b		; 10 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	ora ($F9.b,X)		; 01 F9
	ora $C0.b,S		; 03 C0
	cpy #$E4.b		; C0 E4
	cpx $E4.b		; E4 E4
	pea $F4E4.w		; F4 E4 F4
	inx		; E8
	inx		; E8
	brk $00.b		; 00 00
	cld		; D8
	cld		; D8
	lda ($B2.b)		; B2 B2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	and $BF7FFF.l,X		; 3F FF 7F BF
	adc $FFF7FF.l,X		; 7F FF F7 FF
	xce		; FB
	sbc $FBFFFA.l,X		; FF FA FF FB
	inc $EED5.w,X		; FE D5 EE
	cmp [$38.b]		; C7 38
	tya		; 98
	and [$BD.b]		; 27 BD
	.db $42, $FF		; 42 FF
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra  -2.b		; 80 FE
	brk $EE.b		; 00 EE
	brk $FE.b		; 00 FE
	jsr ($FCFF.w,X)		; FC FF FC
	cmp $AAE6.w,X		; DD E6 AA
	cmp $F6.b,X		; D5 F6
	clc		; 18
	stx $58.b,Y		; 96 58
	ror $D8.b,X		; 76 D8
	sed		; F8
	stz $807C.w,X		; 9E 7C 80
	jsr ($E600.w,X)		; FC 00 E6
	brk $C5.b		; 00 C5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	cpy #$62.b		; C0 62
	brk $C8.b		; 00 C8
	jsr $00F0.w		; 20 F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	asl $19.b		; 06 19
	ora ($0C.b,X)		; 01 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E11.w,X		; 1D 11 0E
	php		; 08
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3D86.w,Y		; F9 86 3D
	dec $1C.b		; C6 1C
	sbc $9E.b,S		; E3 9E
	adc ($3E.b),Y		; 71 3E
	and ($1E.b),Y		; 31 1E
	cmp $1C.b,S		; C3 1C
	ror $0000.w,X		; 7E 00 00
	jmp ($F804.w,X)		; 7C 04 F8
	cpy #$7E.b		; C0 7E
	.db $62, $AE, $20		; 62 AE 20
	cmp $003C01.l		; CF 01 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bra  96.b		; 80 60
	bra -16.b		; 80 F0
	brk $EC.b		; 00 EC
	bpl -26.b		; 10 E6
	trb $00FF.w		; 1C FF 00
	sbc $000000.l,X		; FF 00 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0102.w		; 1C 02 01
	tsb $03.b		; 04 03
	brk $06.b		; 00 06
	php		; 08
	tsb $1911.w		; 0C 11 19
	jsl $064433.l		; 22 33 44 06
	bit #$0001.w		; 89 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $021E01.l		; 0F 01 1E 02
	bit $7805.w,X		; 3C 05 78
	ora #$14CB.w		; 09 CB 14
	phb		; 8B
	bit $17.b,X		; 34 17
	pla		; 68
	and $30FFC0.l,X		; 3F C0 FF 30
	lda $F07F70.l,X		; BF 70 7F F0
	sbc $15F1F8.l,X		; FF F8 F1 15
	beq  54.b		; F0 36
	cmp ($4D.b,X)		; C1 4D
	sta ($89.b,X)		; 81 89
	asl $76.b		; 06 76
	ora [$F7.b],Y		; 17 F7
	ora ($FB.b,S),Y		; 13 FB
	and $7FFD.w,Y		; 39 FD 7F
	brk $3F.b		; 00 3F
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	brk $1D.b		; 00 1D
	brk $0F.b		; 00 0F
	brk $22.b		; 00 22
	jsl $081212.l		; 22 12 12 08
	asl A		; 0A
	tsb $06.b		; 04 06
	php		; 08
	asl $0E08.w		; 0E 08 0E
	tsb $060E.w		; 0C 0E 06
	asl $FB.b		; 06 FB
	brk $5D.b		; 00 5D
	brk $6E.b		; 00 6E
	brk $F7.b		; 00 F7
	brk $BB.b		; 00 BB
	brk $BD.b		; 00 BD
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $09.b		; 00 09
	ora $AE0C.w		; 0D 0C AE
	rol $B7.b		; 26 B7
	lda ($BB.b,S),Y		; B3 BB
	sta $9CDD.w,Y		; 99 DD 9C
	dec $EECE.w,X		; DE CE EE
	cmp #$98E8.w		; C9 E8 98
	asl $0FF1.w		; 0E F1 0F
	sbc ($0D.b),Y		; F1 0D
	rts		; 60

	ora $11A0.w,Y		; 19 A0 11
	cpx #$01.b		; E0 01
	cpy #$01.b		; C0 01
	bra  96.b		; 80 60
	sta $E4.b		; 85 E4
	inx		; E8
	inx		; E8
	rts		; 60

	rts		; 60

	ora ($81.b,X)		; 01 81
	sta ($C1.b,X)		; 81 C1
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	cpx #$18.b		; E0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	bvs  24.b		; 70 18
	beq -104.b		; F0 98
	bmi -104.b		; 30 98
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $E0.b		; 00 E0
	bra   5.b		; 80 05
	tsb $0C01.w		; 0C 01 0C
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	beq  12.b		; F0 0C
	sed		; F8
	tsb $0470.w		; 0C 70 04
	sed		; F8
	sty $3C.b		; 84 3C
	sty $F0.b		; 84 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($1F.b),Y		; 11 1F
	jsr $5F3F.w		; 20 3F 5F
	sbc $FF7F3F.l,X		; FF 3F 7F FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	jsr $5F00.w		; 20 00 5F
	brk $2F.b		; 00 2F
	bpl -49.b		; 10 CF
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ldy #$F0.b		; A0 F0
	brk $F8.b		; 00 F8
	rts		; 60

	clv		; B8
	pea $FABC.w		; F4 BC FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	rts		; 60

	brk $F4.b		; 00 F4
	brk $F2.b		; 00 F2
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001A00.l		; 0F 00 1A 00
	rol $00.b,X		; 36 00
	rol $3D00.w		; 2E 00 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	ora $04.b		; 05 04
	ora $1D0C.w		; 0D 0C 1D
	ora $4E1B.w,Y		; 19 1B 4E
	lda $B9FFF6.l,X		; BF F6 FF B9
	and $FA0FED.l,X		; 3F ED 0F FA
	cop $D9.b		; 02 D9
	brk $DB.b		; 00 DB
	brk $FB.b		; 00 FB
	brk $0E.b		; 00 0E
	sbc $19FF66.l,X		; FF 66 FF 19
	adc $D2DFC5.l,X		; 7F C5 DF D2
	cmp [$90.b],Y		; D7 90
	ldx $92.b,Y		; B6 92
	ldx $F3.b,Y		; B6 F3
	sbc [$00.b],Y		; F7 00
	ora $013F00.l,X		; 1F 00 3F 01
	and $003E00.l,X		; 3F 00 3E 00
	rol $3E03.w,X		; 3E 03 3E
	ora ($3C.b,X)		; 01 3C
	ora ($3C.b,X)		; 01 3C
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	bcs -124.b		; B0 84
	sei		; 78
	tsb $0860.w		; 0C 60 08
	beq  24.b		; F0 18
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	sei		; 78
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	ora ($0F.b,X)		; 01 0F
	ora $2F1713.l		; 0F 13 17 2F
	and $2F1F1F.l		; 2F 1F 1F 2F
	ora [$0F.b],Y		; 17 0F
	phd		; 0B
	ora [$06.b],Y		; 17 06
	ora #$000F.w		; 09 0F 00
	ora ($01.b)		; 12 01
	bit $1803.w		; 2C 03 18
	ora [$2C.b]		; 07 2C
	ora $0E.b,S		; 03 0E
	ora ($17.b,X)		; 01 17
	brk $09.b		; 00 09
	brk $E1.b		; 00 E1
	jsr ($FFC1.w,X)		; FC C1 FF
	tya		; 98
	sbc [$7C.b]		; E7 7C
	sta $FE.b,S		; 83 FE
	brk $FF.b		; 00 FF
	cpy #$FF.b		; C0 FF
	jsr $D0EF.w		; 20 EF D0
	sbc [$04.b],Y		; F7 04
	plx		; FA
	cop $E0.b		; 02 E0
	brk $98.b		; 00 98
	clc		; 18
	and $403C.w,X		; 3D 3C 40
	cpy #$0C.b		; C0 0C
	bit $D787.w		; 2C 87 D7
	lda ($4E.b,S),Y		; B3 4E
	ply		; 7A
	stx $FE.b		; 86 FE
	ora $FF.b,S		; 03 FF
	ora $BF.b,S		; 03 BF
	tad		; 5B
	adc $33FFA3.l,X		; 7F A3 FF 33
	sbc $803B.w,X		; FD 3B 80
	asl $0702.w		; 0E 02 07
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	stp		; DB
	tad		; 5B
	sta $A3.b,S		; 83 A3
	ora ($33.b),Y		; 11 33
	ora $74BB.w,Y		; 19 BB 74
	asl $5C.b		; 06 5C
	rol $5C.b		; 26 5C
	jsl $C630CE.l		; 22 CE 30 C6
	sec		; 38
	dec $C238.w		; CE 38 C2
	bit $C7.b,X		; 34 C7
	bit $08.b,X		; 34 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $18.b		; 14 18
	bpl -63.b		; 10 C1
	and ($7D.b)		; 32 7D
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1B.b		; 00 1B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($06.b)		; 12 06
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	sbc ($1C.b),Y		; F1 1C
	sbc ($1E.b),Y		; F1 1E
	sbc ($0C.b)		; F2 0C
	sep #$88		; E2 88
	.db $62, $CC, $24		; 62 CC 24
	inx		; E8
	tsb $E8.b		; 04 E8
	tsb $1F.b		; 04 1F
	ora ($0E.b),Y		; 11 0E
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	phd		; 0B
	ora $0B.b		; 05 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	ora $030303.l,X		; 1F 03 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $7C.b		; 02 7C
	cpy $18.b		; C4 18
	cpy #$1C.b		; C0 1C
	rep #$0C		; C2 0C
.ACCU 16
	rep #$2C		; C2 2C
.ACCU 8
	sep #$28		; E2 28
.INDEX 8
	sep #$5C		; E2 5C
	dec $38.b		; C6 38
	sty $38.b		; 84 38
	brk $7C.b		; 00 7C
	rti		; 40

	rol $3E02.w,X		; 3E 02 3E
	cop $1E.b		; 02 1E
	cop $5C.b		; 02 5C
	rti		; 40

	clv		; B8
	bra  -4.b		; 80 FC
	sty $FE.b		; 84 FE
	sbc $FCFEFF.l,X		; FF FF FE FC
	sbc $E9F8F7.l,X		; FF F7 F8 E9
	pei ($E7.b)		; D4 E7
	jmp.w [$F8CF]		; DC CF F8
	sbc $F8.b,S		; E3 F8
	sta $7C.b,S		; 83 7C
	ror $98.b		; 66 98
	inc $F800.w,X		; FE 00 F8
	brk $D0.b		; 00 D0
	asl $D4.b,X		; 16 D4
	ora $F7.b,X		; 15 F7
	bpl 111.b		; 10 6F
	dey		; 88
	dec $2E3C.w,X		; DE 3C 2E
	jmp.w [$FCCE]		; DC CE FC
	jmp.w [$ECEA]		; DC EA EC
	rti		; 40

	inc $ED4C.w,X		; FE 4C ED
	jmp $385E65.l		; 5C 65 5E 38
	tsb $18.b		; 04 18
	tsb $3C.b		; 04 3C
	jsr $200A.w		; 20 0A 20
	bra  16.b		; 80 10
	sty $8C2C.w		; 8C 2C 8C
	asl $9E84.w,X		; 1E 84 9E
	ora $0D00.w,X		; 1D 00 0D
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	phd		; 0B
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tyx		; BB
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $FF.b		; 00 FF
	brk $2F.b		; 00 2F
	cpx #$1A.b		; E0 1A
	cmp $1D.b,S		; C3 1D
	cmp ($3E.b,X)		; C1 3E
	rts		; 60

	and ($77.b,S),Y		; 33 77
	and ($77.b,S),Y		; 33 77
	and ($77.b,S),Y		; 33 77
	asl $06.b		; 06 06
	bvc  64.b		; 50 40
	adc $7E41.w,X		; 7D 41 7E
	rti		; 40

	eor $004040.l,X		; 5F 40 40 00
	cpy #$80.b		; C0 80
	beq -128.b		; F0 80
	sei		; 78
	brk $DC.b		; 00 DC
	brk $6E.b		; 00 6E
	brk $7E.b		; 00 7E
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  16.b		; 80 10
	bcc  40.b		; 90 28
	tay		; A8
	sty $B4.b,X		; 94 B4
	lsr A		; 4A
	phx		; DA
	phy		; 5A
	phx		; DA
	jsr $B860.w		; 20 60 B8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$20.b		; C0 20
	rts		; 60

	ldy #$A0.b		; A0 A0
	ldy #$A0.b		; A0 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0C3F40.l,X		; 3F 40 3F 0C
	and $1D3E02.l,X		; 3F 02 3E 1D
	and $3F02.w,X		; 3D 02 3F
	brk $1F.b		; 00 1F
	and ($06.b)		; 32 06
	ora ($43.b,S),Y		; 13 43
	ora $04.b,S		; 03 04
	trb $2200.w		; 1C 00 22
	php		; 08
	ora $2300.w,X		; 1D 00 23
	trb $0C00.w		; 1C 00 0C
	brk $1C.b		; 00 1C
	bpl -21.b		; 10 EB
	ora $F7.b		; 05 F7
	asl A		; 0A
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $03FF03.l,X		; FF 03 FF 03
	xce		; FB
	ora [$F6.b]		; 07 F6
	asl $DD.b		; 06 DD
	cmp $08.b		; C5 08
	asl A		; 0A
	cmp ($C3.b,X)		; C1 C3
	adc ($7B.b),Y		; 71 7B
	adc ($6B.b,X)		; 61 6B
	rts		; 60

	adc $10.b,S		; 63 10
	ora [$62.b],Y		; 17 62
	adc $A8E030.l		; 6F 30 E0 A8
	rts		; 60

	inx		; E8
	bmi -12.b		; 30 F4
	bmi -12.b		; 30 F4
	clv		; B8
	plx		; FA
	sec		; 38
	plx		; FA
	bit $BCDE.w,X		; 3C DE BC
	brk $E0.b		; 00 E0
	jsr $2070.w		; 20 70 20
	bmi  32.b		; 30 20
	sec		; 38
	bcs -72.b		; B0 B8
	bmi  60.b		; 30 3C
	clc		; 18
	bit $BC98.w,X		; 3C 98 BC
	dec $FE19.w,X		; DE 19 FE
	ora ($BE.b,X)		; 01 BE
	eor ($9A.b,X)		; 41 9A
	adc $3AC8.w,Y		; 79 C8 3A
	cpy #$1C.b		; C0 1C
	rti		; 40

	brk $40.b		; 00 40
	brk $10.b		; 00 10
	sec		; 38
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	adc [$C8.b]		; 67 C8
	tas		; 1B
	jmp $6433.w		; 4C 33 64
	ora $300B24.l		; 0F 24 0B 30
	and ($1A.b,X)		; 21 1A
	bpl  13.b		; 10 0D
	clc		; 18
	ora [$3A.b]		; 07 3A
	asl A		; 0A
	bvs  64.b		; 70 40
	trb $3804.w		; 1C 04 38
	jsr $101C.w		; 20 1C 10
	asl $070A.w		; 0E 0A 07
	ora $08.b		; 05 08
	php		; 08
	inc $7E71.w,X		; FE 71 7E
	beq -22.b		; F0 EA
	beq -46.b		; F0 D2
	inx		; E8
	sty $48.b,X		; 94 48
	pea $F410.w		; F4 10 F4
	bmi 124.b		; 30 7C
	beq  48.b		; F0 30
	bvs  96.b		; 70 60
	beq -64.b		; F0 C0
	pea $EC80.w		; F4 80 EC
	brk $68.b		; 00 68
	bpl  24.b		; 10 18
	bmi  56.b		; 30 38
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	asl $01.b		; 06 01
	ora $0F.b,S		; 03 0F
	ora $170F07.l		; 0F 07 0F 17
	phd		; 0B
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	ora ($17.b,X)		; 01 17
	brk $17.b		; 00 17
	brk $3E.b		; 00 3E
	rti		; 40

	adc $7FFFBE.l,X		; 7F BE FF 7F
	sbc $FEFDFF.l,X		; FF FF FD FE
	inc $F9FD.w,X		; FE FD F9
	sbc $40F1EF.l,X		; FF EF F1 40
	brk $BE.b		; 00 BE
	brk $5F.b		; 00 5F
	jsr $609F.w		; 20 9F 60
	asl $F8.b		; 06 F8
	cpy $FC30.w		; CC 30 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	ora $1D.b		; 05 1D
	ora $0B0B.w,X		; 1D 0B 0B
	ldx $FE51.w		; AE 51 FE
	adc ($FE.b,X)		; 61 FE
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($00.b,X)		; 01 00
	bvs  44.b		; 70 2C
	jmp ($0C0C.w)		; 6C 0C 0C
	jmp $DC4C.w		; 4C 4C DC
	jmp.w [$DCDC]		; DC DC DC
	ldy $BCBC.w,X		; BC BC BC
	ldy $403F.w,X		; BC 3F 40
	and $023F0C.l,X		; 3F 0C 3F 02
	rol $3D1D.w,X		; 3E 1D 3D
	cop $3F.b		; 02 3F
	brk $1F.b		; 00 1F
	and ($06.b)		; 32 06
	ora ($43.b,S),Y		; 13 43
	ora $04.b,S		; 03 04
	trb $2200.w		; 1C 00 22
	php		; 08
	ora $2300.w,X		; 1D 00 23
	trb $0C00.w		; 1C 00 0C
	brk $1C.b		; 00 1C
	bpl -21.b		; 10 EB
	ora $F7.b		; 05 F7
	asl A		; 0A
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $03FF03.l,X		; FF 03 FF 03
	xce		; FB
	ora [$F6.b]		; 07 F6
	asl $DD.b		; 06 DD
	cmp $08.b		; C5 08
	asl A		; 0A
	cmp ($C3.b,X)		; C1 C3
	adc ($7B.b),Y		; 71 7B
	adc ($6B.b,X)		; 61 6B
	rts		; 60

	adc $10.b,S		; 63 10
	ora [$62.b],Y		; 17 62
	adc $000000.l		; 6F 00 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bcs  96.b		; B0 60
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	clv		; B8
	pha		; 48
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	mvp $20,$7C		; 44 7C 20
	rol $00.b,X		; 36 00
	rol $10.b,X		; 36 10
	and $10.b		; 25 10
	ora $001F00.l,X		; 1F 00 1F 00
	ora $002800.l		; 0F 00 28 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpy #$70.b		; C0 70
	inx		; E8
	sei		; 78
	pea $78BC.w		; F4 BC 78
	jmp $F89CB8.l		; 5C B8 9C F8
	clv		; B8
	pei ($00.b)		; D4 00
	brk $C0.b		; 00 C0
	brk $E8.b		; 00 E8
	brk $E4.b		; 00 E4
	bpl 112.b		; 10 70
	php		; 08
	bmi   8.b		; 30 08
	sei		; 78
	rti		; 40

	trb $40.b		; 14 40
	pla		; 68
	tsb $0674.w		; 0C 74 06
	sed		; F8
	.db $82, $3C, $81		; 82 3C 81
	ror $1FC1.w,X		; 7E C1 1F
	cmp ($2E.b,X)		; C1 2E
	cpx #$17.b		; E0 17
	beq -12.b		; F0 F4
	tsb $F8.b		; 04 F8
	brk $7E.b		; 00 7E
	cop $FE.b		; 02 FE
	bra  63.b		; 80 3F
	ora ($7E.b,X)		; 01 7E
	rti		; 40

	ora $000F00.l,X		; 1F 00 0F 00
	ora $7883F8.l		; 0F F8 83 78
	sbc ($0C.b),Y		; F1 0C
	sta $06.b,S		; 83 06
	brk $86.b		; 00 86
	ora ($83.b,X)		; 01 83
	ora $C0.b,S		; 03 C0
	sta $C0.b,S		; 83 C0
	ora [$10.b],Y		; 17 10
	ora $040708.l		; 0F 08 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $000B00.l		; 0F 00 0B 00
	ora $0A.b,X		; 15 0A
	clc		; 18
	ora $17.b,S		; 03 17
	php		; 08
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl A		; 0A
	asl A		; 0A
	ora [$03.b]		; 07 03
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0FC0.w,X		; 1E C0 0F
	cpx #$17.b		; E0 17
	beq -85.b		; F0 AB
	sei		; 78
	lda $7C.b,X		; B5 7C
	txs		; 9A
	rol $368C.w		; 2E 8C 36
	stx $1B.b		; 86 1B
	and $001F00.l,X		; 3F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b),Y		; 11 00
	phd		; 0B
	cop $05.b		; 02 05
	ora ($81.b,X)		; 01 81
	cpy #$41.b		; C0 41
	rts		; 60

	brk $20.b		; 00 20
	bra  32.b		; 80 20
	ldy #$30.b		; A0 30
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cld		; D8
	bra  -4.b		; 80 FC
	tya		; 98
	phx		; DA
	clv		; B8
	dex		; CA
	ldy $9C66.w,X		; BC 66 9C
	sbc $0C.b,X		; F5 0C
	sbc $FE06.w,X		; FD 06 FE
	asl $00.b		; 06 00
	jsr $5818.w		; 20 18 58
	clc		; 18
	bit $3C08.w,X		; 3C 08 3C
	brk $1C.b		; 00 1C
	tsb $0E.b		; 04 0E
	tsb $06.b		; 04 06
	tsb $07.b		; 04 07
	ora $1F.b,S		; 03 1F
	ora $5F2F27.l,X		; 1F 27 2F 5F
	eor $5F3F3F.l,X		; 5F 3F 3F 5F
	and $2F171F.l		; 2F 1F 17 2F
	tsb $1F13.w		; 0C 13 1F
	brk $25.b		; 00 25
	cop $59.b		; 02 59
	asl $30.b		; 06 30
	ora $1D0659.l		; 0F 59 06 1D
	cop $2F.b		; 02 2F
	brk $13.b		; 00 13
	brk $D3.b		; 00 D3
	tay		; A8
	cmp $F09FB8.l		; CF B8 9F F0
	dec $F0.b		; C6 F0
	cmp $F8.b,S		; C3 F8
	.db $82, $FF, $31		; 82 FF 31
	dec $06F9.w		; CE F9 06
	lda ($2C.b,X)		; A1 2C
	lda #$2A.b		; A9 2A
	sbc $11DF20.l		; EF 20 DF 11
	sbc $04F408.l		; EF 08 F4 04
	cpy #$00.b		; C0 00
	bmi  48.b		; 30 30
	ora $000F00.l,X		; 1F 00 0F 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($C60F.w,X)		; FC 0F C6
	ora [$B2.b]		; 07 B2
	sta $39.b,S		; 83 39
	sta ($3D.b,X)		; 81 3D
	sta ($1E.b,X)		; 81 1E
	cpy #$A0.b		; C0 A0
	ldy #$80.b		; A0 80
	bra -128.b		; 80 80
	bra  56.b		; 80 38
	brk $7D.b		; 00 7D
	ora ($7E.b,X)		; 01 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $0C.b		; 00 0C
	ora $0903.w,Y		; 19 03 09
	asl $0C.b		; 06 0C
	ora ($04.b,X)		; 01 04
	ora ($06.b,X)		; 01 06
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	asl $0308.w		; 0E 08 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($FF.b,X)		; 01 FF
	asl $9E6F.w		; 0E 6F 9E
	adc $FA9E.w,X		; 7D 9E FA
	sta $0972.w,X		; 9D 72 09
	rol $1C43.w,X		; 3E 43 1C
	ldx $09.b		; A6 09
	jsr ($4E46.w,X)		; FC 46 4E
	tsb $981E.w		; 0C 1E 98
	stz $1D10.w,X		; 9E 10 1D
	bra  13.b		; 80 0D
	rep #$42		; C2 42
	sbc $A4.b		; E5 A4
	phd		; 0B
	php		; 08
	pea $FAB8.w		; F4 B8 FA
	sec		; 38
	plx		; FA
	bit $BCDE.w,X		; 3C DE BC
	dec $FE19.w,X		; DE 19 FE
	ora ($BE.b,X)		; 01 BE
	eor ($9A.b,X)		; 41 9A
	adc $B8B0.w,Y		; 79 B0 B8
	bmi  60.b		; 30 3C
	clc		; 18
	bit $BC98.w,X		; 3C 98 BC
	bpl  56.b		; 10 38
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	iny		; C8
	dec A		; 3A
	cpy #$1C.b		; C0 1C
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	bvs   4.b		; 70 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	ldy #$20.b		; A0 20
	lda $D6E1.w		; AD E1 D6
	bvs 102.b		; 70 66
	bcs  54.b		; B0 36
	cld		; D8
	trb $0061.w		; 1C 61 00
	and ($00.b,S),Y		; 33 00
	asl $0000.w		; 0E 00 00
	asl $8F00.w,X		; 1E 00 8F
	brk $5F.b		; 00 5F
	bpl  47.b		; 10 2F
	php		; 08
	ora $020E01.l,X		; 1F 01 0E 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora [$0B.b]		; 07 0B
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	ora $000017.l		; 0F 17 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	asl A		; 0A
	ora ($0C.b,X)		; 01 0C
	ora $0C.b,S		; 03 0C
	ora $0D.b,S		; 03 0D
	cop $13.b		; 02 13
	tsb $78.b		; 04 78
	sta [$BF.b]		; 87 BF
	bvs  -3.b		; 70 FD
	sbc $FBFFFF.l,X		; FF FF FF FB
	jsr ($F8FF.w,X)		; FC FF F8
	xce		; FB
	jsr ($E39F.w,X)		; FC 9F E3
	sta [$00.b]		; 87 00
	bvs   0.b		; 70 00
	cmp $40BF20.l,X		; DF 20 BF 40
	bit $B8C0.w,X		; 3C C0 B8
	rti		; 40

	plx		; FA
	brk $E0.b		; 00 E0
	brk $25.b		; 00 25
	sbc $13.b,S		; E3 13
	adc ($0B.b,S),Y		; 73 0B
	tsa		; 3B
	cop $17.b		; 02 17
	ora $05.b		; 05 05
	brk $08.b		; 00 08
	asl A		; 0A
	clc		; 18
	ora $31.b,X		; 15 31
	cli		; 58
	eor $2B.b,S		; 43 2B
	and [$13.b]		; 27 13
	ora [$02.b],Y		; 17 02
	ora $000F05.l		; 0F 05 0F 00
	ora [$07.b]		; 07 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	ldy $9C8C.w,X		; BC 8C 9C
	ldy $A89C.w		; AC 9C A8
	stz $3C54.w		; 9C 54 3C
	brk $44.b		; 00 44
	clv		; B8
	cpx $EC20.w		; EC 20 EC
	php		; 08
	jsr ($FE84.w,X)		; FC 84 FE
	sty $DE.b		; 84 DE
	bra -34.b		; 80 DE
	trb $BC.b		; 14 BC
	dey		; 88
	bmi  16.b		; 30 10
	brk $98.b		; 00 98
	dey		; 88
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
	sec		; 38
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $10.b		; 00 10
	bpl  56.b		; 10 38
	sec		; 38
	bit $1E3C.w,X		; 3C 3C 1E
	asl $E4E4.w,X		; 1E E4 E4
	plx		; FA
	plx		; FA
	cpx $E4.b		; E4 E4
	php		; 08
	php		; 08
	adc [$3C.b],Y		; 77 3C
	xce		; FB
	bit $BB.b,X		; 34 BB
	stz $B3.b,X		; 74 B3
	jmp ($3CD3.w,X)		; 7C D3 3C
	lda ($5C.b,S),Y		; B3 5C
	sbc ($2C.b,S),Y		; F3 2C
	sbc $1314.w,Y		; F9 14 13
	bvs  23.b		; 70 17
	jmp ($7C17.w,X)		; 7C 17 7C
	ora [$7C.b]		; 07 7C
	ora $B8.b,S		; 03 B8
	ora $D8.b,S		; 03 D8
	ora $68.b,S		; 03 68
	ora ($30.b,S),Y		; 13 30
	adc $7D80.w,X		; 7D 80 7D
	bra 119.b		; 80 77
	bra  -9.b		; 80 F7
	bra -13.b		; 80 F3
	bra 126.b		; 80 7E
	brk $5C.b		; 00 5C
	jsr $38DC.w		; 20 DC 38
	tsb $06.b		; 04 06
	dey		; 88
	txa		; 8A
	sta ($9A.b)		; 92 9A
	bpl  24.b		; 10 18
	bpl  28.b		; 10 1C
	dey		; 88
	php		; 08
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx $C610.w		; EC 10 C6
	bmi  -1.b		; 30 FF
	brk $D9.b		; 00 D9
	tsb $4F.b		; 04 4F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  56.b		; 10 38
	bmi   2.b		; 30 02
	brk $07.b		; 00 07
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	php		; 08
	sei		; 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	rti		; 40

	tya		; 98
	rti		; 40

	tya		; 98
	rti		; 40

	clv		; B8
	rti		; 40

	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7000.w		; 20 00 70
	rti		; 40

	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	brk $80.b		; 00 80
	bra  64.b		; 80 40
	cpx #$80.b		; E0 80
	beq -64.b		; F0 C0
	bvs -32.b		; 70 E0
	beq  96.b		; F0 60
	bvc -32.b		; 50 E0
	rts		; 60

	bcc -128.b		; 90 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	bra -96.b		; 80 A0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	ldy #$20.b		; A0 20
	cpy #$60.b		; C0 60
	cpy #$20.b		; C0 20
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	jsr $4000.w		; 20 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	ora ($01.b,X)		; 01 01
	ora $010701.l		; 0F 01 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($3B.b,X)		; 01 3B
	tsa		; 3B
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	xce		; FB
	ora [$CB.b]		; 07 CB
	and [$2B.b],Y		; 37 2B
	and [$5B.b],Y		; 37 5B
	ora [$63.b],Y		; 17 63
	ora $B70B7B.l		; 0F 7B 0B B7
	sta $55.b,S		; 83 55
	cmp $81.b,S		; C3 81
	sta [$21.b]		; 87 21
	and [$D1.b]		; 27 D1
	ora [$E1.b],Y		; 17 E1
	ora [$F9.b]		; 07 F9
	ora $7907F1.l		; 0F F1 07 79
	ora $B9.b,S		; 03 B9
	sta $30.b,S		; 83 30
	clv		; B8
	bmi -72.b		; 30 B8
	bmi -72.b		; 30 B8
	bmi -72.b		; 30 B8
	bmi -72.b		; 30 B8
	bmi -80.b		; 30 B0
	bmi -80.b		; 30 B0
	clc		; 18
	clv		; B8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	brk $FC.b		; 00 FC
	and [$0F.b],Y		; 37 0F
	eor $5F3F.w,Y		; 59 3F 5F
	tsa		; 3B
	and [$5B.b]		; 27 5B
	tsa		; 3B
	ora $1F24.w		; 0D 24 1F
	bpl  15.b		; 10 0F
	ora $000F00.l		; 0F 00 0F 00
	and $003B00.l,X		; 3F 00 3B 00
	tad		; 5B
	brk $0D.b		; 00 0D
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	sta ($1F.b,X)		; 81 1F
	sbc ($3F.b),Y		; F1 3F
	sbc ($3F.b),Y		; F1 3F
	sbc ($BA.b,X)		; E1 BA
	sbc ($DF.b,X)		; E1 DF
	lda ($C3.b)		; B2 C3
	ldy $30CF.w,X		; BC CF 30
	.db $82, $08, $D2		; 82 08 D2
	mvn $40,$CE		; 54 CE 40
	dec $DE40.w,X		; DE 40 DE
	mvp $20,$AC		; 44 AC 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	asl $1823.w		; 0E 23 18
	eor $7C.b,S		; 43 7C
	cmp [$31.b]		; C7 31
	sta [$F9.b]		; 87 F9
	stx $0E63.w		; 8E 63 0E
	sbc ($1C.b,S),Y		; F3 1C
	dec $1C.b		; C6 1C
	ora $3E01.w,X		; 1D 01 3E
	cop $39.b		; 02 39
	ora ($7C.b,X)		; 01 7C
	tsb $73.b		; 04 73
	cop $F9.b		; 02 F9
	php		; 08
	sbc [$04.b]		; E7 04
	sbc ($10.b,S),Y		; F3 10
	bvs -40.b		; 70 D8
	rti		; 40

	tya		; 98
	cpx #$B0.b		; E0 B0
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	jsr $F000.w		; 20 00 F0
	bcc  64.b		; 90 40
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	bit $34.b,X		; 34 34
	nop		; EA
	nop		; EA
	phx		; DA
	phx		; DA
	ldx $B6.b,Y		; B6 B6
	stz $74.b,X		; 74 74
	sbc $5DED.w		; ED ED 5D
	eor $3B3B.w,X		; 5D 3B 3B
	sbc $FE0C.w,Y		; F9 0C FE
	cop $FD.b		; 02 FD
	ora $F8.b,S		; 03 F8
	ora $FC.b,S		; 03 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	ora [$8B.b]		; 07 8B
	tya		; 98
	sta ($80.b,X)		; 81 80
	ldx #$A2.b		; A2 A2
	lda ($A5.b,X)		; A1 A5
	bcs -77.b		; B0 B3
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	clv		; B8
	lda $EC38DC.l,X		; BF DC 38 EC
	clc		; 18
	pha		; 48
	clc		; 18
	cpx #$80.b		; E0 80
	sei		; 78
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	bmi  48.b		; 30 30
	clv		; B8
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  32.b		; 80 20
	brk $18.b		; 00 18
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bit $3C00.w,X		; 3C 00 3C
	brk $5C.b		; 00 5C
	jsr $2059.w		; 20 59 20
	sbc $F920.w,Y		; F9 20 F9
	jsr $00F9.w		; 20 F9 00
	tay		; A8
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3020.w		; 20 20 30
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  64.b		; 50 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	ora [$FF.b]		; 07 FF
	ora ($FF.b,X)		; 01 FF
	asl $01FF.w		; 0E FF 01
	sbc [$10.b]		; E7 10
	inc $31.b		; E6 31
	inc $71.b		; E6 71
	ora ($19.b,X)		; 01 19
	ora $37.b,S		; 03 37
	ora ($61.b,X)		; 01 61
	asl $EE.b		; 06 EE
	brk $C1.b		; 00 C1
	asl $2E00.w		; 0E 00 2E
	ldy #$2E.b		; A0 2E
	cpx #$DF.b		; E0 DF
	jsr $00FE.w		; 20 FE 00
	sei		; 78
	bra 124.b		; 80 7C
	bra  -4.b		; 80 FC
	brk $7E.b		; 00 7E
	bra  -7.b		; 80 F9
	brk $FB.b		; 00 FB
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	rts		; 60

	cpx #$34.b		; E0 34
	ldy $34.b,X		; B4 34
	bit $30.b,X		; 34 30
	bcs  40.b		; B0 28
	rol $2E2A.w		; 2E 2A 2E
	dec $0873.w		; CE 73 08
	adc ($9C.b)		; 72 9C
	inc $10.b,X		; F6 10
	cpx $18.b		; E4 18
	cpx $E830.w		; EC 30 E8
	jsr $B0C8.w		; 20 C8 B0
	cli		; 58
	sty $DE00.w		; 8C 00 DE
	eor ($08.b)		; 52 08
	brk $9C.b		; 00 9C
	sty $30.b		; 84 30
	jsr $0818.w		; 20 18 08
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $08.b,S		; 03 08
	asl $08.b		; 06 08
	ora $110409.l		; 0F 09 04 11
	asl $0813.w		; 0E 13 08
	ora ($3C.b)		; 12 3C
	asl $28.b,X		; 16 28
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	php		; 08
	asl $00.b		; 06 00
	ora $000C01.l		; 0F 01 0C 00
	asl $0812.w,X		; 1E 12 08
	brk $1C.b		; 00 1C
	tsb $7A.b		; 04 7A
	bpl 126.b		; 10 7E
	brk $7E.b		; 00 7E
	brk $5A.b		; 00 5A
	jsr $2054.w		; 20 54 20
	jmp ($7820.w)		; 6C 20 78
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	jsr $2038.w		; 20 38 20
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora [$04.b]		; 07 04
	cop $08.b		; 02 08
	ora [$09.b]		; 07 09
	tsb $09.b		; 04 09
	asl $140B.w,X		; 1E 0B 14
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	ora #$04.b		; 09 04
	brk $0E.b		; 00 0E
	cop $CC.b		; 02 CC
	adc $730A.w,Y		; 79 0A 73
	sty $18F6.w		; 8C F6 18
	inc $10.b,X		; F6 10
	inc $58.b		; E6 58
	bit $0C70.w		; 2C 70 0C
	sei		; 78
	brk $87.b		; 00 87
	ora ($DC.b,X)		; 01 DC
	bvc  26.b		; 50 1A
	ora ($AC.b)		; 12 AC
	ldy $3C.b		; A4 3C
	bit $30.b		; 24 30
	jsr $0818.w		; 20 18 08
	brk $00.b		; 00 00
	lda $BD83.w,Y		; B9 83 BD
	sta $5D.b,S		; 83 5D
	cmp ($2B.b,X)		; C1 2B
	sbc ($12.b,X)		; E1 12
	adc ($0A.b),Y		; 71 0A
	and $3B0B.w,Y		; 39 0B 3B
	ora $17.b,S		; 03 17
	adc ($07.b),Y		; 71 07
	sei		; 78
	ora $B8.b,S		; 03 B8
	sta $5C.b,S		; 83 5C
	eor ($2C.b,X)		; 41 2C
	and ($14.b,X)		; 21 14
	ora ($03.b),Y		; 11 03
	ora [$03.b]		; 07 03
	ora $F8BCD8.l		; 0F D8 BC F8
	stz $D8B8.w		; 9C B8 D8
	clv		; B8
	cld		; D8
	ldy $8CDC.w		; AC DC 8C
	jmp.w [$9C8C]		; DC 8C 9C
	ldy $889C.w		; AC 9C 88
	ldy $9C88.w,X		; BC 88 9C
	dey		; 88
	jmp.w [$DC88]		; DC 88 DC
	bra -34.b		; 80 DE
	tsb $FE.b		; 04 FE
	sty $FE.b		; 84 FE
	sty $DE.b		; 84 DE
	xce		; FB
	asl $14F9.w,X		; 1E F9 14
	sbc $2CF714.l,X		; FF 14 F7 2C
	sbc ($38.b)		; F2 38
	sbc $09FC19.l,X		; FF 19 FC 09
	jsr ($0909.w,X)		; FC 09 09
	sec		; 38
	ora [$54.b]		; 07 54
	ora $50.b,S		; 03 50
	and $60.b,S		; 23 60
	sta $B086B8.l,X		; 9F B8 86 B0
	sta [$91.b]		; 87 91
	asl $00.b		; 06 00
	lda ($40.b),Y		; B1 40
	and ($40.b),Y		; 31 40
	sbc ($80.b,S),Y		; F3 80
	ror $6A80.w,X		; 7E 80 6A
	stz $38DC.w		; 9C DC 38
	stz $B070.w		; 9C 70 B0
	sec		; 38
	bne  94.b		; D0 5E
	bcc  30.b		; 90 1E
	bpl  28.b		; 10 1C
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl 120.b		; 10 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $000001.l		; 0F 01 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	asl $6F21.w,X		; 1E 21 6F
	stz $7FBF.w		; 9C BF 7F
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc [$F8.b]		; E7 F8
	and ($00.b,X)		; 21 00
	stz $7F00.w		; 9C 00 7F
	brk $AF.b		; 00 AF
	bvc  95.b		; 50 5F
	ldy #$1E.b		; A0 1E
	cpx #$3E.b		; E0 3E
	cpy #$F8.b		; C0 F8
	brk $FF.b		; 00 FF
	brk $D9.b		; 00 D9
	tsb $4F.b		; 04 4F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	trb $1E1C.w		; 1C 1C 1E
	asl $0F0F.w,X		; 1E 0F 0F
	adc ($72.b)		; 72 72
	adc $727D.w,X		; 7D 7D 72
	adc ($7F.b)		; 72 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $05.b		; 00 05
	ora $1A.b		; 05 1A
	inc A		; 1A
	ror $76.b,X		; 76 76
	sbc $DDED.w		; ED ED DD
	cmp $BBBB.w,X		; DD BB BB
	adc [$77.b],Y		; 77 77
	rol $3F2E.w		; 2E 2E 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($0E.b,X)		; 01 0E
	asl $1D1D.w		; 0E 1D 1D
	tsb $000C.w		; 0C 0C 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
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
	cpx #$E0.b		; E0 E0
	bpl 120.b		; 10 78
	cpx #$FC.b		; E0 FC
	beq -36.b		; F0 DC
	sec		; 38
	jsr ($D418.w,X)		; FC 18 D4
	sec		; 38
	cld		; D8
	cpx $E0.b		; E4 E0
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $98.b		; 00 98
	brk $04.b		; 00 04
	jsr $40E8.w		; 20 E8 40
	sed		; F8
	rti		; 40

	bne 104.b		; D0 68
	pha		; 48
	bvs  24.b		; 70 18
	bvs -56.b		; 70 C8
	bcs -16.b		; B0 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	bpl -128.b		; 10 80
	jsr $0088.w		; 20 88 00
	bcc -128.b		; 90 80
	bcs -128.b		; B0 80
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3C00.w,X		; 3C 00 3C
	brk $5C.b		; 00 5C
	jsr $2059.w		; 20 59 20
	sbc $F920.w,Y		; F9 20 F9
	jsr $00F9.w		; 20 F9 00
	tay		; A8
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3020.w		; 20 20 30
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  64.b		; 50 40
	sed		; F8
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	rti		; 40

	tya		; 98
	rti		; 40

	tya		; 98
	rti		; 40

	clv		; B8
	rti		; 40

	cpx $C610.w		; EC 10 C6
	bmi   0.b		; 30 00
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	rti		; 40

	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	clc		; 18
	bpl  56.b		; 10 38
	bmi   6.b		; 30 06
	ora [$01.b]		; 07 01
	ora #$08.b		; 09 08
	clc		; 18
	asl $30.b,X		; 16 30
	ora $1A21.w		; 0D 21 1A
	eor $7C.b,S		; 43 7C
	cmp [$30.b]		; C7 30
	sta [$06.b]		; 87 06
	ora $040701.l		; 0F 01 07 04
	ora $0F.b,S		; 03 0F
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	ora ($3A.b,X)		; 01 3A
	cop $7D.b		; 02 7D
	ora $A8.b		; 05 A8
	tya		; 98
	bvc  56.b		; 50 38
	brk $44.b		; 00 44
	clv		; B8
	cpx $EC20.w		; EC 20 EC
	bvs -40.b		; 70 D8
	rti		; 40

	tya		; 98
	cpx #$B0.b		; E0 B0
	bra -36.b		; 80 DC
	bpl -68.b		; 10 BC
	dey		; 88
	bmi  16.b		; 30 10
	brk $98.b		; 00 98
	dey		; 88
	jsr $F000.w		; 20 00 F0
	bcc  64.b		; 90 40
	brk $F6.b		; 00 F6
	ora $FF.b,S		; 03 FF
	brk $F1.b		; 00 F1
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	ora $93.b,S		; 03 93
	sta [$AB.b]		; 87 AB
	sta $4C.b,S		; 83 4C
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$CE.b		; C0 CE
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $03.b		; 00 03
	adc ($0F.b,X)		; 61 0F
	adc ($07.b),Y		; 71 07
	sed		; F8
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	bmi -80.b		; 30 B0
	sec		; 38
	clv		; B8
	bit $BCD8.w,X		; 3C D8 BC
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	php		; 08
	jmp ($BC88.w,X)		; 7C 88 BC
	ora $0F.b,X		; 15 0F
	asl $0F.b,X		; 16 0F
	phd		; 0B
	asl $0D.b,X		; 16 0D
	cop $0A.b		; 02 0A
	ora [$05.b]		; 07 05
	ora $03.b,S		; 03 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $16.b		; 00 16
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($DD.b,X)		; 01 DD
	cpx #$47.b		; E0 47
	jsr ($FCCF.w,X)		; FC CF FC
	dec $EEF8.w		; CE F8 EE
	sei		; 78
	and [$EC.b],Y		; 37 EC
	bmi -17.b		; 30 EF
	sbc ($0C.b,S),Y		; F3 0C
	cpx #$02.b		; E0 02
	pea $F315.w		; F4 15 F3
	bpl  -9.b		; 10 F7
	ora ($77.b),Y		; 11 77
	ora ($EB.b),Y		; 11 EB
	php		; 08
	cpx #$00.b		; E0 00
	bmi -80.b		; 30 B0
	ora $001F00.l		; 0F 00 1F 00
	and $033F00.l,X		; 3F 00 3F 03
	and $1B3C00.l,X		; 3F 00 3C 1B
	adc $FE1B.w,X		; 7D 1B FE
	inc A		; 1A
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	ora ($13.b,X)		; 01 13
	brk $00.b		; 00 00
	ora #$39.b		; 09 39
	asl A		; 0A
	dec A		; 3A
	ora #$38.b		; 09 38
	xce		; FB
	tsb $FF.b		; 04 FF
	cpx #$EF.b		; E0 EF
	bmi -49.b		; 30 CF
	bcs -17.b		; B0 EF
	bvc -33.b		; 50 DF
	ldy #$3E.b		; A0 3E
	brk $FB.b		; 00 FB
	rti		; 40

	clc		; 18
	clc		; 18
	jmp ($2CEC.w)		; 6C EC 2C
	bit $B585.w,X		; 3C 85 B5
	ora ($51.b,X)		; 01 51
	tsb $24.b		; 04 24
	cpy $05.b		; C4 05
	bit #$0D.b		; 89 0D
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
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
	ora $100618.l		; 0F 18 06 10
	ora $210C31.l,X		; 1F 31 0C 21
	rol $1863.w,X		; 3E 63 18
	eor $3C.b,S		; 43 3C
	eor [$70.b]		; 47 70
	cmp [$07.b]		; C7 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	rti		; 40

	and $8805.w,X		; 3D 05 88
	sbc ($1C.b,S),Y		; F3 1C
	inc $30.b,X		; F6 30
	inc $38.b		; E6 38
	cpy $CC60.w		; CC 60 CC
	beq -104.b		; F0 98
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	lsr $A852.w,X		; 5E 52 A8
	ldy #$1C.b		; A0 1C
	tsb $70.b		; 04 70
	rti		; 40

	clv		; B8
	dey		; 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $7A.b		; 00 7A
	bpl 126.b		; 10 7E
	brk $7E.b		; 00 7E
	brk $5A.b		; 00 5A
	jsr $2054.w		; 20 54 20
	jmp ($7820.w)		; 6C 20 78
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	jsr $2038.w		; 20 38 20
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	sed		; F8
	php		; 08
	bvs   4.b		; 70 04
	beq -124.b		; F0 84
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $3F.b		; 00 3F
	eor [$0F.b]		; 47 0F
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $17.b		; 00 17
	brk $1E.b		; 00 1E
	brk $03.b		; 00 03
	ora $000300.l		; 0F 00 03 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	asl $0D0C.w		; 0E 0C 0D
	jsr ($FCF8.w,X)		; FC F8 FC
	jsr ($7CFD.w,X)		; FC FD 7C
	plx		; FA
	brk $7D.b		; 00 7D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $FD.b		; 00 FD
	brk $90.b		; 00 90
	sbc $38FF18.l,X		; FF 18 FF 38
	inc $7540.w,X		; FE 40 75
	pla		; 68
	nop		; EA
	eor #$DB.b		; 49 DB
	eor #$DB.b		; 49 DB
	sbc $00FB.w,Y		; F9 FB 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($1F.b),Y		; 11 1F
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ldy #$F0.b		; A0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	jmp.w [$F8CF]		; DC CF F8
	sbc $F8.b,S		; E3 F8
	sbc ($FC.b,X)		; E1 FC
	cmp ($FF.b,X)		; C1 FF
	tya		; 98
	sbc [$7C.b]		; E7 7C
	sta $FE.b,S		; 83 FE
	brk $D4.b		; 00 D4
	ora $F7.b,X		; 15 F7
	bpl 111.b		; 10 6F
	dey		; 88
	sbc [$04.b],Y		; F7 04
	plx		; FA
	cop $E0.b		; 02 E0
	brk $98.b		; 00 98
	clc		; 18
	and $F43C.w,X		; 3D 3C F4
	pha		; 48
	cmp ($6C.b)		; D2 6C
	eor ($6C.b)		; 52 6C
	lda ($4C.b)		; B2 4C
	stz $98.b		; 64 98
	sed		; F8
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	rti		; 40

	dey		; 88
	jsr $20AC.w		; 20 AC 20
	sty $8C80.w		; 8C 80 8C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi -48.b		; 30 D0
	bvc -16.b		; 50 F0
	dey		; 88
	cpx #$88.b		; E0 88
	bvs  24.b		; 70 18
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	bra  64.b		; 80 40
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	stz $06.b,X		; 74 06
	jmp $225C26.l		; 5C 26 5C 22
	dec $C630.w		; CE 30 C6
	sec		; 38
	dec $C238.w		; CE 38 C2
	bit $C7.b,X		; 34 C7
	bit $08.b,X		; 34 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $18.b		; 14 18
	bpl  12.b		; 10 0C
	sbc ($0E.b),Y		; F1 0E
	sbc ($1C.b)		; F2 1C
	sbc ($1C.b)		; F2 1C
	sbc ($88.b)		; F2 88
	rts		; 60

	cpy $E824.w		; CC 24 E8
	tsb $E8.b		; 04 E8
	tsb $1E.b		; 04 1E
	bpl  28.b		; 10 1C
	bpl  14.b		; 10 0E
	cop $0C.b		; 02 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $80.b		; 04 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	rti		; 40

	ldy #$C0.b		; A0 C0
	sei		; 78
	bra  -4.b		; 80 FC
	brk $6E.b		; 00 6E
	brk $B7.b		; 00 B7
	brk $BF.b		; 00 BF
	brk $DE.b		; 00 DE
	brk $00.b		; 00 00
	cmp $80.b,S		; C3 80
	cpy #$28.b		; C0 28
	tay		; A8
	pei ($D4.b)		; D4 D4
	lsr A		; 4A
	phx		; DA
	and $6D.b		; 25 6D
	and $906D.w		; 2D 6D 90
	bcs -36.b		; B0 DC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	rti		; 40

	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	bcc -80.b		; 90 B0
	bne -48.b		; D0 D0
	bne -48.b		; D0 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	ora $003E.w,Y		; 19 3E 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000D00.l		; 0F 00 0D 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $000309.l		; 0F 09 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora ($1F.b,X)		; 01 1F
	brk $3E.b		; 00 3E
	ora ($3E.b,X)		; 01 3E
	ora $3E.b,S		; 03 3E
	ora ($3C.b,X)		; 01 3C
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	sei		; 78
	sty $78.b		; 84 78
	sty $38.b		; 84 38
	sty $78.b		; 84 78
	cpy $78.b		; C4 78
	cpy $38.b		; C4 38
	sty $30.b		; 84 30
	sty $78.b		; 84 78
	sty $80F8.w		; 8C F8 80
	sed		; F8
	bra 120.b		; 80 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	bra -16.b		; 80 F0
	bra  14.b		; 80 0E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DD.b		; 00 DD
	brk $DD.b		; 00 DD
	brk $DD.b		; 00 DD
	brk $7F.b		; 00 7F
	bra  23.b		; 80 17
	beq  13.b		; F0 0D
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $BB9930.l,X		; 1F 30 99 BB
	sta $19BB.w,Y		; 99 BB 19
	tsa		; 3B
	ora $03.b,S		; 03 03
	plp		; 28
	jsr $203E.w		; 20 3E 20
	and $202F20.l,X		; 3F 20 2F 20
	and $3FFF5F.l,X		; 3F 5F FF 3F
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $FFFCFE.l,X		; FF FE FC FF
	sbc [$F8.b],Y		; F7 F8
	sbc #$D4.b		; E9 D4
	eor $102F00.l,X		; 5F 00 2F 10
	cmp $7C8330.l		; CF 30 83 7C
	ror $98.b		; 66 98
	inc $F800.w,X		; FE 00 F8
	brk $D0.b		; 00 D0
	asl $F8.b,X		; 16 F8
	rts		; 60

	clv		; B8
	pea $FABC.w		; F4 BC FA
	dec $2E3C.w,X		; DE 3C 2E
	jmp.w [$FCCE]		; DC CE FC
	jmp.w [$ECEA]		; DC EA EC
	rti		; 40

	rts		; 60

	brk $F4.b		; 00 F4
	brk $F2.b		; 00 F2
	php		; 08
	sec		; 38
	tsb $18.b		; 04 18
	tsb $3C.b		; 04 3C
	jsr $200A.w		; 20 0A 20
	bra  16.b		; 80 10
	sbc $60FFC0.l,X		; FF C0 FF 60
	sbc $80FF20.l,X		; FF 20 FF 80
	adc $906F10.l		; 6F 10 6F 90
	adc $003F80.l,X		; 7F 80 3F 00
	lsr $C6.b		; 46 C6
	jsr $0EE0.w		; 20 E0 0E
	ror $2F0F.w		; 6E 0F 2F
	sta [$37.b]		; 87 37
	sta [$B7.b]		; 87 B7
	bpl  48.b		; 10 30
	ora $003C1F.l		; 0F 1F 3C 00
	stz $FE60.w,X		; 9E 60 FE
	brk $DF.b		; 00 DF
	jsr $00FF.w		; 20 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	jsr $00C0.w		; 20 C0 00
	rts		; 60

	rts		; 60

	tsb $8C0C.w		; 0C 0C 8C
	cpx $6C0C.w		; EC 0C 6C
	tsb $800C.w		; 0C 0C 80
	bra  12.b		; 80 0C
	bit $0000.w		; 2C 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora ($07.b,X)		; 01 07
	ora [$03.b]		; 07 03
	ora [$0B.b]		; 07 0B
	ora $0B.b		; 05 0B
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($17.b,S),Y		; 13 17
	and $1F1F2F.l		; 2F 2F 1F 1F
	and $0B0F17.l		; 2F 17 0F 0B
	ora [$06.b],Y		; 17 06
	ora #$03.b		; 09 03
	tsb $12.b		; 04 12
	ora ($2C.b,X)		; 01 2C
	ora $18.b,S		; 03 18
	ora [$2C.b]		; 07 2C
	ora $0E.b,S		; 03 0E
	ora ($17.b,X)		; 01 17
	brk $09.b		; 00 09
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	ora $07.b		; 05 07
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	tsb $0C07.w		; 0C 07 0C
	phd		; 0B
	clc		; 18
	ora [$11.b]		; 07 11
	trb $0431.w		; 1C 31 04
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$00.b]		; 07 00
	asl $0E10.w,X		; 1E 10 0E
	brk $08.b		; 00 08
	jsl $106438.l		; 22 38 64 10
	iny		; C8
	bvs -36.b		; 70 DC
	tda		; 7B
	cpy $603F.w		; CC 3F 60
	ora $110D21.l,X		; 1F 21 0D 11
	bit $1820.w,X		; 3C 20 18
	brk $78.b		; 00 78
	pha		; 48
	tay		; A8
	dey		; 88
	bit $04.b,X		; 34 04
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	and $011F00.l,X		; 3F 00 1F 01
	asl $1F00.w		; 0E 00 1F
	ora ($1F.b,X)		; 01 1F
	ora ($9F.b,X)		; 01 9F
	ora ($E7.b,X)		; 01 E7
	cmp ($F8.b,X)		; C1 F8
	beq  22.b		; F0 16
	asl $0900.w,X		; 1E 00 09
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $E7.b		; 00 E7
	bra  -1.b		; 80 FF
	cpx #$FF.b		; E0 FF
	inc $0EF0.w,X		; FE F0 0E
	asl A		; 0A
	sbc ($F0.b,S),Y		; F3 F0
	plx		; FA
	sbc $F9FB.w,Y		; F9 FB F9
	sbc ($F1.b,S),Y		; F3 F1
	sbc ($F1.b,S),Y		; F3 F1
	adc $2470.w,Y		; 79 70 24
	pea $FA00.w		; F4 00 FA
	bvs  -3.b		; 70 FD
	bvs  -3.b		; 70 FD
	bvs  -3.b		; 70 FD
	adc ($FD.b),Y		; 71 FD
	and ($FD.b),Y		; 31 FD
	bmi -12.b		; 30 F4
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr ($BE8C.w,X)		; FC 8C BE
	inc $FEBE.w,X		; FE BE FE
	inc $727E.w,X		; FE 7E 72
	trb $0018.w		; 1C 18 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	ldy $ACFE.w		; AC FE AC
	inc $FE18.w,X		; FE 18 FE
	brk $7E.b		; 00 7E
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F11.w		; 0E 11 1F
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ldy #$F0.b		; A0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	jmp.w [$F8CF]		; DC CF F8
	sbc $F8.b,S		; E3 F8
	sbc ($FC.b,X)		; E1 FC
	cmp ($FF.b,X)		; C1 FF
	tya		; 98
	sbc [$7C.b]		; E7 7C
	sta $FE.b,S		; 83 FE
	brk $D4.b		; 00 D4
	ora $F7.b,X		; 15 F7
	bpl 111.b		; 10 6F
	dey		; 88
	sbc [$04.b],Y		; F7 04
	plx		; FA
	cop $E0.b		; 02 E0
	brk $98.b		; 00 98
	clc		; 18
	and $F43C.w,X		; 3D 3C F4
	pha		; 48
	cmp ($6C.b)		; D2 6C
	eor ($6C.b)		; 52 6C
	lda ($4C.b)		; B2 4C
	stz $98.b		; 64 98
	sed		; F8
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	rti		; 40

	dey		; 88
	jsr $20AC.w		; 20 AC 20
	sty $8C80.w		; 8C 80 8C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi -48.b		; 30 D0
	bvc  31.b		; 50 1F
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $0E.b,S		; 03 0E
	brk $0E.b		; 00 0E
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpx #$20.b		; E0 20
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	beq  16.b		; F0 10
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	jsr ($3F01.w,X)		; FC 01 3F
	brk $1F.b		; 00 1F
	brk $0D.b		; 00 0D
	brk $1A.b		; 00 1A
	brk $36.b		; 00 36
	brk $2F.b		; 00 2F
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $04.b		; 05 04
	ora $1D0D.w		; 0D 0D 1D
	ora $001B.w,Y		; 19 1B 00
	tya		; 98
	sbc $017F03.l,X		; FF 03 7F 01
	sbc $00EB00.l		; EF 00 EB 00
	wai		; CB
	brk $DB.b		; 00 DB
	brk $9B.b		; 00 9B
	brk $00.b		; 00 00
	sbc $504341.l,X		; FF 41 43 50
	cmp ($84.b),Y		; D1 84
	sty $82.b,X		; 94 82
	stx $82.b,Y		; 96 82
	ldx $93.b,Y		; B6 93
	lda [$93.b],Y		; B7 93
	sbc [$0F.b],Y		; F7 0F
	ora ($17.b,S),Y		; 13 17
	and $1F1F2F.l		; 2F 2F 1F 1F
	and $0B0F17.l		; 2F 17 0F 0B
	ora [$06.b],Y		; 17 06
	ora #$03.b		; 09 03
	tsb $12.b		; 04 12
	ora ($2C.b,X)		; 01 2C
	ora $18.b,S		; 03 18
	ora [$2C.b]		; 07 2C
	ora $0E.b,S		; 03 0E
	ora ($17.b,X)		; 01 17
	brk $09.b		; 00 09
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	ora $07.b		; 05 07
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0802.w		; 0C 02 08
	tsb $0419.w		; 0C 19 04
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$01.b]		; 07 01
	asl $13.b		; 06 13
	clc		; 18
	and ($08.b)		; 32 08
	bit $30.b		; 24 30
	jmp ($421D.w)		; 6C 1D 42
	and $781F64.l,X		; 3F 64 1F 78
	ora $101C30.l		; 0F 30 1C 10
	tsb $3C00.w		; 0C 00 3C
	bit $18.b		; 24 18
	php		; 08
	ror $5842.w,X		; 7E 42 58
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  63.b		; 10 3F
	brk $1F.b		; 00 1F
	ora ($0E.b,X)		; 01 0E
	tsb $0F.b		; 04 0F
	ora $8C.b,S		; 03 8C
	brk $E1.b		; 00 E1
	and [$FF.b]		; 27 FF
	adc $16FF3F.l,X		; 7F 3F FF 16
	asl $0900.w,X		; 1E 00 09
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	brk $67.b		; 00 67
	ora ($3F.b,X)		; 01 3F
	adc $387F.w,Y		; 79 7F 38
	sbc $0FF0FE.l,X		; FF FE F0 0F
	asl A		; 0A
	sbc ($F1.b)		; F2 F1
	xce		; FB
	sbc $393B.w,Y		; F9 3B 39
	cmp ($D1.b,S),Y		; D3 D1
	cmp ($D0.b,S),Y		; D3 D0
	tya		; 98
	bne  36.b		; D0 24
	pea $FB00.w		; F4 00 FB
	beq  -3.b		; F0 FD
	beq  -3.b		; F0 FD
	and ($FD.b),Y		; 31 FD
	sta ($FD.b),Y		; 91 FD
	bcc  -4.b		; 90 FC
	bcc -12.b		; 90 F4
	ora [$71.b]		; 07 71
	asl $0C71.w		; 0E 71 0C
	adc ($0C.b),Y		; 71 0C
	bvs  14.b		; 70 0E
	adc ($1C.b)		; 72 1C
	adc ($1C.b)		; 72 1C
	adc ($5C.b)		; 72 5C
	bit $0E.b,X		; 34 0E
	brk $1F.b		; 00 1F
	ora ($1E.b),Y		; 11 1E
	bpl  30.b		; 10 1E
	bpl  28.b		; 10 1C
	bpl  14.b		; 10 0E
	cop $0C.b		; 02 0C
	brk $08.b		; 00 08
	brk $78.b		; 00 78
	trb $78.b		; 14 78
	tsb $78.b		; 04 78
	tsb $FC.b		; 04 FC
	brk $CC.b		; 00 CC
	bmi -36.b		; 30 DC
	bmi -60.b		; 30 C4
	plp		; 28
	cpy $0C28.w		; CC 28 0C
	tsb $0C.b		; 04 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	plp		; 28
	bmi  32.b		; 30 20
.ACCU 16
	rep #$24		; C2 24
	xce		; FB
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $37.b		; 00 37
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $1C.b		; 24 1C
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	eor $7F3FFF.l,X		; 5F FF 3F 7F
	sbc $FFFFFE.l,X		; FF FE FF FF
	inc $FFFC.w,X		; FE FC FF
	sbc [$F8.b],Y		; F7 F8
	sbc #$5FD4.w		; E9 D4 5F
	brk $2F.b		; 00 2F
	bpl -49.b		; 10 CF
	bmi -125.b		; 30 83
	jmp ($9866.w,X)		; 7C 66 98
	inc $F800.w,X		; FE 00 F8
	brk $D0.b		; 00 D0
	asl $F8.b,X		; 16 F8
	rts		; 60

	clv		; B8
	pea $FABC.w		; F4 BC FA
	dec $2E3C.w,X		; DE 3C 2E
	jmp.w [$FCCE]		; DC CE FC
	jmp.w [$ECEA]		; DC EA EC
	rti		; 40

	rts		; 60

	brk $F4.b		; 00 F4
	brk $F2.b		; 00 F2
	php		; 08
	sec		; 38
	tsb $18.b		; 04 18
	tsb $3C.b		; 04 3C
	jsr $200A.w		; 20 0A 20
	bra  16.b		; 80 10
	sbc $60FFC0.l,X		; FF C0 FF 60
	sbc $00FF20.l,X		; FF 20 FF 00
	sbc $106F10.l		; EF 10 6F 10
	adc $803F80.l,X		; 7F 80 3F 80
	lsr $C6.b		; 46 C6
	jsr $0EE0.w		; 20 E0 0E
	ror $2F8F.w		; 6E 8F 2F
	sta [$37.b]		; 87 37
	sta [$37.b]		; 87 37
	bcc -80.b		; 90 B0
	ora $003C1F.l		; 0F 1F 3C 00
	stz $FE60.w,X		; 9E 60 FE
	brk $DF.b		; 00 DF
	jsr $00FF.w		; 20 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	jsr $00C0.w		; 20 C0 00
	rts		; 60

	rts		; 60

	tsb $8C0C.w		; 0C 0C 8C
	cpx $6C0C.w		; EC 0C 6C
	tsb $800C.w		; 0C 0C 80
	bra  12.b		; 80 0C
	bit $0F01.w		; 2C 01 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora ($3F.b,X)		; 01 3F
	brk $00.b		; 00 00
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	cpx #$00.b		; E0 00
	rts		; 60

	php		; 08
	beq -120.b		; F0 88
	bvs -120.b		; 70 88
	bvs -120.b		; 70 88
	cpx #$88.b		; E0 88
	rts		; 60

	php		; 08
	beq  24.b		; F0 18
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sei		; 78
	php		; 08
	sed		; F8
	dey		; 88
	sed		; F8
	dey		; 88
	sei		; 78
	php		; 08
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	ora $0F00.w,X		; 1D 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $09.b		; 00 09
	phd		; 0B
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tyx		; BB
	brk $BB.b		; 00 BB
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	beq   8.b		; F0 08
	sta $3A8734.l		; 8F 34 87 3A
	sta $33.b,S		; 83 33
	adc [$33.b],Y		; 77 33
	adc [$73.b],Y		; 77 73
	adc [$06.b],Y		; 77 06
	asl $80.b		; 06 80
	bra -12.b		; 80 F4
	sty $FA.b		; 84 FA
	.db $82, $FC, $80		; 82 FC 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
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
	bit $7E0C.w,X		; 3C 0C 7E
	ldx $FEBE.w,Y		; BE BE FE
	dec $C2FE.w		; CE FE C2
	jsr ($00F8.w,X)		; FC F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $24FE.w		; 2C FE 24
	inc $FE84.w,X		; FE 84 FE
	bra  -2.b		; 80 FE
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	ora $3E.b,S		; 03 3E
	ora ($7C.b,X)		; 01 7C
	ora [$7C.b]		; 07 7C
	ora $78.b,S		; 03 78
	ora $78.b,S		; 03 78
	asl $0678.w		; 0E 78 06
	bvs   3.b		; 70 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $10C000.l		; 0F 00 C0 10
	cpx #$30.b		; E0 30
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora ($07.b,X)		; 01 07
	ora [$03.b]		; 07 03
	ora [$0B.b]		; 07 0B
	ora $0B.b		; 05 0B
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	brk $5C.b		; 00 5C
	brk $6E.b		; 00 6E
	brk $EE.b		; 00 EE
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  16.b		; 80 10
	bpl -88.b		; 10 A8
	tay		; A8
	trb $B4.b		; 14 B4
	lsr A		; 4A
	phx		; DA
	lsr A		; 4A
	phy		; 5A
	jsr $B860.w		; 20 60 B8
	brk $D8.b		; 00 D8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	rts		; 60

	bra -96.b		; 80 A0
	bra -96.b		; 80 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $19E1.w,X		; 3C E1 19
	sbc ($0B.b)		; F2 0B
	pea $70BF.w		; F4 BF 70
	eor $100F30.l,X		; 5F 30 0F 10
	and [$00.b]		; 27 00
	ora [$08.b]		; 07 08
	lsr $2D40.w,X		; 5E 40 2D
	lda ($02.b,X)		; A1 02
.ACCU 16
.INDEX 16
	rep #$36		; C2 36
	ror $14.b,X		; 76 14
	bit $01.b,X		; 34 01
	and ($07.b),Y		; 31 07
	ora $BF1A02.l,X		; 1F 02 1A BF
	rts		; 60

	cmp $00BF20.l,X		; DF 20 BF 00
	sbc $20DF00.l,X		; FF 00 DF 20
	sbc $30FE30.l		; EF 30 FE 30
	jsr ($0E78.w,X)		; FC 78 0E
	ror $6E0E.w		; 6E 0E 6E
	cop $62.b		; 02 62
	trb $8E1C.w		; 1C 1C 8E
	ldx $B686.w		; AE 86 B6
	tsb $34.b		; 04 34
	bvs 122.b		; 70 7A
	ora [$0B.b]		; 07 0B
	ora $2F1F17.l		; 0F 17 1F 2F
	ora $3F093F.l		; 0F 3F 09 3F
	ora ($2F.b)		; 12 2F
	ora $3006.w,X		; 1D 06 30
	eor $14010A.l		; 4F 0A 01 14
	ora $2B.b,S		; 03 2B
	tsb $3F.b		; 04 3F
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	brk $06.b		; 00 06
	brk $4F.b		; 00 4F
	brk $FC.b		; 00 FC
	sbc $F5F8F7.l,X		; FF F7 F8 F5
	plx		; FA
	sbc $90F2.w		; ED F2 90
	sbc $AF8F7E.l		; EF 7E 8F AF
	stp		; DB
	sbc $7F1E.w		; ED 1E 7F
	bra  56.b		; 80 38
	cpy #$8078.w		; C0 78 80
	beq   0.b		; F0 00
	cpx #$8000.w		; E0 00 80
	brk $C4.b		; 00 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bpl  63.b		; 10 3F
	asl $5F3F.w		; 0E 3F 5F
	adc $0000BF.l,X		; 7F BF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	asl $5F00.w		; 0E 00 5F
	brk $AF.b		; 00 AF
	bpl   1.b		; 10 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $BD.b		; 02 BD
	ora ($2B.b,X)		; 01 2B
	brk $6B.b		; 00 6B
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $00.b		; 00 00
	eor $00.b,S		; 43 00
	pei ($40.b)		; D4 40
	pei ($90.b)		; D4 90
	ldy $92.b,X		; B4 92
	ldx $32.b,Y		; B6 32
	ror $32.b,X		; 76 32
	ror $32.b,X		; 76 32
	ror $AC.b,X		; 76 AC
	cpx #$405C.w		; E0 5C 40
	ldy $6E00.w		; AC 00 6E
	brk $6E.b		; 00 6E
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $A0.b		; 00 A0
	beq  68.b		; F0 44
	cpx $04.b		; E4 04
	mvn $94,$04		; 54 04 94
	asl A		; 0A
	txs		; 9A
	asl A		; 0A
	txs		; 9A
	asl A		; 0A
	txs		; 9A
	lsr A		; 4A
	phx		; DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	rti		; 40

	inx		; E8
	beq  -8.b		; F0 F8
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	brk $A0.b		; 00 A0
	bne -48.b		; D0 D0
	inx		; E8
	inx		; E8
	beq -12.b		; F0 F4
	sed		; F8
	bit $F8.b,X		; 34 F8
	dec $38.b		; C6 38
	sbc $60DF00.l,X		; FF 00 DF 60
	bne   0.b		; D0 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	brk $BF.b		; 00 BF
	cpy $B3.b		; C4 B3
	dec $906F.w		; CE 6F 90
	cmp $D421.w,X		; DD 21 D4
	and [$B0.b]		; 27 B0
	jmp ($00F0.w,X)		; 7C F0 00
	sed		; F8
	brk $C3.b		; 00 C3
	brk $C1.b		; 00 C1
	brk $8F.b		; 00 8F
	brk $1E.b		; 00 1E
	brk $1A.b		; 00 1A
	cop $08.b		; 02 08
	php		; 08
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	cpy #$A020.w		; C0 20 A0
	jsr $6040.w		; 20 40 60
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $0707.w		; 0C 07 07
	sbc ($07.b,S),Y		; F3 07
	sbc ($07.b,S),Y		; F3 07
	sbc ($03.b),Y		; F1 03
	adc ($0D.b)		; 72 0D
	and $013D07.l,X		; 3F 07 3D 01
	brk $0C.b		; 00 0C
	ora ($0F.b,X)		; 01 0F
	sbc ($EF.b,X)		; E1 EF
	sta ($8F.b,X)		; 81 8F
	bra -113.b		; 80 8F
	bpl  31.b		; 10 1F
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	jsr ($F8F0.w,X)		; FC F0 F8
	beq  -8.b		; F0 F8
	bvs  -8.b		; 70 F8
	ldx $FC.b,Y		; B6 FC
	dec $F0FC.w		; CE FC F0
	inc $FEF0.w,X		; FE F0 FE
	beq  -2.b		; F0 FE
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	bvs  -4.b		; 70 FC
	bmi  -4.b		; 30 FC
	iny		; C8
	jsr ($9F79.w,X)		; FC 79 9F
	lda $FB7F.w,X		; BD 7F FB
	jmp ($F07F.w,X)		; 7C 7F F0
	sbc $180B06.l,X		; FF 06 0B 18
	asl $1D.b		; 06 1D
	ora $0E.b,S		; 03 0E
	sta $304F10.l		; 8F 10 4F 30
	bit $F040.w,X		; 3C 40 F0
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	jsr $090B.w		; 20 0B 09
	ora $14.b		; 05 14
	ldx $7EC7.w,Y		; BE C7 7E
	sta $9C9F7C.l		; 8F 7C 9F 9C
	adc $EA.b,S		; 63 EA
	and [$CF.b],Y		; 37 CF
	bpl 119.b		; 10 77
	txs		; 9A
	sbc $8A.b		; E5 8A
	cld		; D8
	brk $90.b		; 00 90
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $41.b		; 00 41
	brk $62.b		; 00 62
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $011E.w		; 0C 1E 01
	and $3E1E.w		; 2D 1E 3E
	eor $003F5E.l,X		; 5F 5E 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $01.b		; 00 01
	brk $1E.b		; 00 1E
	brk $53.b		; 00 53
	tsb $0837.w		; 0C 37 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	ora $5F2E20.l,X		; 1F 20 2E 5F
	sbc $FF7E3F.l,X		; FF 3F 7E FF
	jsr ($00FF.w,X)		; FC FF 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $20.b		; 00 20
	brk $57.b		; 00 57
	php		; 08
	ora $7C8330.l		; 0F 30 83 7C
	sbc $000010.l		; EF 10 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3020.w		; C0 20 30
	iny		; C8
	inx		; E8
	beq  -2.b		; F0 FE
	and ($D5.b),Y		; 31 D5
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$2000.w		; C0 00 20
	brk $C8.b		; 00 C8
	brk $F0.b		; 00 F0
	brk $31.b		; 00 31
	brk $3A.b		; 00 3A
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
	brk $3E.b		; 00 3E
	cmp ($BF.b),Y		; D1 BF
	bvc -17.b		; 50 EF
	bpl  47.b		; 10 2F
	clc		; 18
	and $080F18.l		; 2F 18 0F 08
	ora [$00.b]		; 07 00
	brk $08.b		; 00 08
	dec $4E00.w		; CE 00 4E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	bpl   6.b		; 10 06
	clc		; 18
	brk $1F.b		; 00 1F
	pld		; 2B
	cpx $E5.b		; E4 E5
	rol $1CFB.w,X		; 3E FB 1C
	sbc $00FF06.l,X		; FF 06 FF 00
	sbc $FD06.w,Y		; F9 06 FD
	ora $FE.b,S		; 03 FE
	ora ($DC.b,X)		; 01 DC
	cpy $11.b		; C4 11
	ora ($C1.b),Y		; 11 C1
	cmp ($71.b,X)		; C1 71
	adc ($3A.b),Y		; 71 3A
	sec		; 38
	brk $00.b		; 00 00
	sei		; 78
	tda		; 7B
	sei		; 78
	tda		; 7B
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	jsr ($F8F0.w,X)		; FC F0 F8
	beq  -8.b		; F0 F8
	bvs  -8.b		; 70 F8
	ldx $FC.b,Y		; B6 FC
	dec $F0FC.w		; CE FC F0
	inc $FEF0.w,X		; FE F0 FE
	beq  -2.b		; F0 FE
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	bvs  -4.b		; 70 FC
	bmi  -4.b		; 30 FC
	iny		; C8
	jsr ($0005.w,X)		; FC 05 00
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
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	ora $1B00.w		; 0D 00 1B
	brk $13.b		; 00 13
	brk $16.b		; 00 16
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $02.b		; 06 02
	asl $0D04.w		; 0E 04 0D
	tsb $080D.w		; 0C 0D 08
	ora #$07F6.w		; 09 F6 07
	lda $AE01.w		; AD 01 AE
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $ED.b		; 00 ED
	brk $ED.b		; 00 ED
	brk $ED.b		; 00 ED
	brk $02.b		; 00 02
	ora $005301.l		; 0F 01 53 00
	eor ($40.b),Y		; 51 40
	cmp ($48.b)		; D2 48
	phx		; DA
	iny		; C8
	phx		; DA
	iny		; C8
	phx		; DA
	cmp #$B0DB.w		; C9 DB B0
	bra 112.b		; 80 70
	brk $B0.b		; 00 B0
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $80.b		; 00 80
	cpy #$9010.w		; C0 10 90
	bpl  80.b		; 10 50
	bpl  80.b		; 10 50
	plp		; 28
	pla		; 68
	plp		; 28
	pla		; 68
	plp		; 28
	pla		; 68
	plp		; 28
	pla		; 68
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	sbc ($07.b,S),Y		; F3 07
	sbc ($07.b,S),Y		; F3 07
	sbc ($03.b),Y		; F1 03
	adc ($0D.b)		; 72 0D
	and $013D07.l,X		; 3F 07 3D 01
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	sbc ($EF.b,X)		; E1 EF
	sta ($8F.b,X)		; 81 8F
	bra -113.b		; 80 8F
	bpl  31.b		; 10 1F
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	tsb $FE11.w		; 0C 11 FE
	ora ($D8.b,S),Y		; 13 D8
	ora ($9C.b)		; 12 9C
	lsr $F0.b		; 46 F0
	tsb $F8.b		; 04 F8
	tsb $08F0.w		; 0C F0 08
	beq   8.b		; F0 08
	ora $808C01.l		; 0F 01 8C 80
	stx $08A2.w		; 8E A2 08
	rts		; 60

	tsb $E004.w		; 0C 04 E0
	cpx #$6060.w		; E0 60 60
	bvs 112.b		; 70 70
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	bra 112.b		; 80 70
	bvs  48.b		; 70 30
	bmi -64.b		; 30 C0
	cpy #$7070.w		; C0 70 70
	rts		; 60

	cpx #$E060.w		; E0 60 E0
	rti		; 40

	cpy #$A000.w		; C0 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F7E.w,X		; 1D 7E 0F
	adc ($1F.b),Y		; 71 1F
	adc ($5F.b,X)		; 61 5F
	jsr $205F.w		; 20 5F 20
	cmp $10FF30.l,X		; DF 30 FF 10
	cmp [$08.b],Y		; D7 08
	ror $7100.w,X		; 7E 00 71
	brk $79.b		; 00 79
	brk $36.b		; 00 36
	asl $34.b		; 06 34
	tsb $25.b		; 04 25
	tsb $01.b		; 04 01
	brk $09.b		; 00 09
	brk $7C.b		; 00 7C
	sbc $DFFEC1.l,X		; FF C1 FE DF
	sbc ($FF.b,X)		; E1 FF
	cpy $99.b		; C4 99
	ror $78CF.w		; 6E CF 78
	wai		; CB
	sec		; 38
	sbc $3C.b		; E5 3C
	sbc $00FE00.l,X		; FF 00 FE 00
	cpx #$C300.w		; E0 00 C3
	brk $61.b		; 00 61
	brk $97.b		; 00 97
	brk $D7.b		; 00 D7
	brk $CB.b		; 00 CB
	php		; 08
	sbc [$5B.b]		; E7 5B
	sbc $E346.w,Y		; F9 46 E3
	jsr ($18E7.w,X)		; FC E7 18
	cmp $10CF31.l		; CF 31 CF 10
	jmp $D810.w		; 4C 10 D8
	jsr $001B.w		; 20 1B 00
	asl $00.b		; 06 00
	tsb $E900.w		; 0C 00 E9
	ora ($C2.b,X)		; 01 C2
	cop $E7.b		; 02 E7
	ora [$F0.b]		; 07 F0
	bcc -32.b		; 90 E0
	jsr $7080.w		; 20 80 70
	bcs 120.b		; B0 78
	beq -124.b		; F0 84
	beq   4.b		; F0 04
	bcs -60.b		; B0 C4
	sei		; 78
	cpy $8860.w		; CC 60 88
	beq -104.b		; F0 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FC04.w,X)		; 7C 04 FC
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $78.b		; 00 78
	php		; 08
	rts		; 60

	brk $03.b		; 00 03
	ora $020F03.l		; 0F 03 0F 02
	asl $09.b		; 06 09
	ora ($05.b,X)		; 01 05
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $000F01.l,X		; 1F 01 0F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$81FF.w		; C0 FF 81
	sbc $81FF81.l,X		; FF 81 FF 81
	adc $673FC3.l,X		; 7F C3 3F 67
	sei		; 78
	tda		; 7B
	bmi  48.b		; 30 30
	cpy $9CCC.w		; CC CC 9C
	sta $BD3C.w,X		; 9D 3C BD
	trb $089D.w		; 1C 9D 08
	wai		; CB
	ora [$E7.b]		; 07 E7
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tyx		; BB
	adc [$F8.b]		; 67 F8
	sbc $DBFF70.l,X		; FF 70 FF DB
	and [$9D.b]		; 27 9D
	sbc ($73.b)		; F2 73
	dec $0FF6.w		; CE F6 0F
	cmp $01663F.l		; CF 3F 66 01
	sta $00FF60.l,X		; 9F 60 FF 00
	cmp $00.b,S		; C3 00
	cop $00.b		; 02 00
	and ($00.b)		; 32 00
	and $000F00.l,X		; 3F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	sbc $FF02.w,X		; FD 02 FF
	sbc [$F5.b],Y		; F7 F5
	sbc $00FCE3.l,X		; FF E3 FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $97.b		; 00 97
	rts		; 60

	lda $807C40.l,X		; BF 40 7C 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C000.w		; C0 00 C0
	ldy #$C0E0.w		; A0 E0 C0
	dec $00E1.w,X		; DE E1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $E1.b		; 00 E1
	brk $4D.b		; 00 4D
	ldy $BF.b		; A4 BF
	ora #$1867.w		; 09 67 18
	sbc ($1E.b,X)		; E1 1E
	pea $FF0B.w		; F4 0B FF
	ora $F8.b		; 05 F8
	ora [$FD.b]		; 07 FD
	ora $9B.b,S		; 03 9B
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cpx #$F2E0.w		; E0 E0 F2
	beq -16.b		; F0 F0
	beq   0.b		; F0 00
	ora $D0.b,S		; 03 D0
	ldy #$00E0.w		; A0 E0 00
	stx $01.b		; 86 01
	sbc $F906.w,X		; FD 06 F9
	tsb $0CF8.w		; 0C F8 0C
	sbc $F807.w,Y		; F9 07 F8
	ora $20.b		; 05 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E5.b		; 00 E5
	cpx $6B.b		; E4 6B
	jmp ($4C43.w)		; 6C 43 4C
	bmi  52.b		; 30 34
	bmi  54.b		; 30 36
	ora $0102.w		; 0D 02 01
	ora $79.b,S		; 03 79
	ora $79.b,S		; 03 79
	ora $78.b,S		; 03 78
	ora ($39.b,X)		; 01 39
	asl $1F.b		; 06 1F
	ora $1E.b,S		; 03 1E
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$70.b]		; 07 70
	adc [$40.b],Y		; 77 40
	eor [$40.b]		; 47 40
	eor [$08.b]		; 47 08
	ora $000301.l		; 0F 01 03 00
	ora ($FC.b,X)		; 01 FC
	inc $FEFC.w,X		; FE FC FE
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($FCF8.w,X)		; FC F8 FC
	sec		; 38
	jsr ($FEDB.w,X)		; FC DB FE
	sbc [$FE.b]		; E7 FE
	sei		; 78
	sbc $F8FFF8.l,X		; FF F8 FF F8
	sbc $78FEF8.l,X		; FF F8 FE 78
	inc $FE38.w,X		; FE 38 FE
	tya		; 98
	inc $FE64.w,X		; FE 64 FE
	rti		; 40

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	cpx #$3820.w		; E0 20 38
	sei		; 78
	tsb $8634.w		; 0C 34 86
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $78.b		; 00 78
	brk $34.b		; 00 34
	lsr $68.b		; 46 68
	sty $18D0.w		; 8C D0 18
	ldy #$4030.w		; A0 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sec		; 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	and $000E00.l,X		; 3F 00 0E 00
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora $04.b,X		; 15 04
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
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

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	adc $0B.b,X		; 75 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $06.b		; 04 06
	php		; 08
	tsb $0811.w		; 0C 11 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	ora $04.b,S		; 03 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $020E01.l		; 0F 01 0E 02
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc $DE051F.l		; EF 1F 05 DE
	tsb $0080.w		; 0C 80 00
	bra -125.b		; 80 83
	cpx #$38A7.w		; E0 A7 38
	cmp ($1E.b,S),Y		; D3 1E
	and #$1FEF.w		; 29 EF 1F
	brk $9E.b		; 00 9E
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cmp ($11.b),Y		; D1 11
	inx		; E8
	asl A		; 0A
	mvn $F5,$45		; 54 45 F5
	plx		; FA
	xba		; EB
	inc $FB.b,X		; F6 FB
	inc $30.b		; E6 30
	cmp #$E12F.w		; C9 2F E1
	eor [$FB.b]		; 47 FB
	lda [$73.b],Y		; B7 73
	sta $00F842.l,X		; 9F 42 F8 00
	beq   0.b		; F0 00
	cpx #$0600.w		; E0 00 06
	brk $1E.b		; 00 1E
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $3D.b		; 00 3D
	brk $E7.b		; 00 E7
	inc $E71A.w,X		; FE 1A E7
	sbc $D0B300.l,X		; FF 00 B3 D0
	lda ($C4.b,S),Y		; B3 C4
	.db $62, $8D, $1A		; 62 8D 1A
	adc $700D.w,X		; 7D 0D 70
	inc $E700.w,X		; FE 00 E7
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $BC.b		; 00 BC
	brk $B0.b		; 00 B0
	brk $FC.b		; 00 FC
	ora ($FE.b,X)		; 01 FE
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$403F.w		; C0 3F 40
	sta $205F20.l,X		; 9F 20 5F 20
	ora $7B7811.l		; 0F 11 78 7B
	jmp ($3E7D.w,X)		; 7C 7D 3E
	ldx $D919.w,Y		; BE 19 D9
	ora [$D7.b],Y		; 17 D7
	asl $066E.w		; 0E 6E 06
	rol $00.b		; 26 00
	and ($FE.b),Y		; 31 FE
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $3C.b		; 00 3C
	cpy #$E0D8.w		; C0 D8 E0
	beq  -8.b		; F0 F8
	sec		; 38
	clv		; B8
	php		; 08
	dey		; 88
	bvs 112.b		; 70 70
	jmp ($3C7C.w,X)		; 7C 7C 3C
	bit $D818.w,X		; 3C 18 D8
	brk $E4.b		; 00 E4
	brk $FC.b		; 00 FC
	and [$00.b],Y		; 37 00
	and $00.b		; 25 00
	adc $DB00.w		; 6D 00 DB
	brk $9B.b		; 00 9B
	brk $B7.b		; 00 B7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	php		; 08
	brk $1A.b		; 00 1A
	php		; 08
	inc A		; 1A
	ora ($36.b)		; 12 36
	ora ($76.b)		; 12 76
	rol $6E.b		; 26 6E
	ror $6E.b		; 66 6E
	lsr $4E.b		; 46 4E
	lda $3C.b,X		; B5 3C
	rtl		; 6B

	php		; 08
	adc $00.b,X		; 75 00
	adc $6D00.w		; 6D 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $14.b		; 00 14
	ror $9C08.w,X		; 7E 08 9C
	brk $8A.b		; 00 8A
	brk $92.b		; 00 92
	eor ($D3.b,X)		; 41 D3
	eor ($D3.b,X)		; 41 D3
	eor ($D3.b,X)		; 41 D3
	eor #$07DB.w		; 49 DB 07
	brk $03.b		; 00 03
	tsb $02.b		; 04 02
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	php		; 08
	asl $08.b		; 06 08
	asl $08.b		; 06 08
	tsb $0019.w		; 0C 19 00
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	asl $00.b		; 06 00
	sbc $40FFC0.l,X		; FF C0 FF 40
	sbc $A05F00.l,X		; FF 00 5F A0
	eor $A05FA0.l,X		; 5F A0 5F A0
	and $013F80.l,X		; 3F 80 3F 01
	rti		; 40

	cpy #$DC1C.w		; C0 1C DC
	ora $FE9E5F.l,X		; 1F 5F 9E FE
	dec $01EE.w		; CE EE 01
	and ($2E.b,X)		; 21 2E
	rol $1504.w,X		; 3E 04 15
	rol $FEC3.w,X		; 3E C3 FE
	ora $BF.b,S		; 03 BF
	eor ($FF.b,X)		; 41 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	.db $42, $FE		; 42 FE
	sbc ($C0.b,X)		; E1 C0
.INDEX 16
	rep #$19		; C2 19
	tas		; 1B
	clc		; 18
	cld		; D8
	ora $19D8.w,Y		; 19 D8 19
	clc		; 18
	ora ($00.b,X)		; 01 00
	ora $0858.w,Y		; 19 58 08
	inx		; E8
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	cpy #$E060.w		; C0 60 E0
	bmi -16.b		; 30 F0
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora $01.b		; 05 01
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora ($32.b,X)		; 01 32
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $BF.b		; 00 BF
	adc $FFFD7B.l,X		; 7F 7B FD FF
	sed		; F8
	pea $F5FB.w		; F4 FB F5
	xce		; FB
	cpy $E9F3.w		; CC F3 E9
	pei ($67.b)		; D4 67
	jmp.w [$106F]		; DC 6F 10
	cmp $B820.w,X		; DD 20 B8
	rti		; 40

	adc $7A81.w,Y		; 79 81 7A
	.db $82, $F1, $01		; 82 F1 01
	bne  22.b		; D0 16
	pei ($15.b)		; D4 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $09.b		; 06 09
	ora #$1F16.w		; 09 16 1F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $16.b		; 00 16
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	iny		; C8
	sed		; F8
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bit $D63C.w,X		; 3C 3C D6
	inc $DECA.w,X		; FE CA DE
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	jsr $C000.w		; 20 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $D6.b		; 00 D6
	inc $FE4A.w,X		; FE 4A FE
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1E1D0E.l,X		; 1F 0E 1D 1E
	bit $7C3C.w,X		; 3C 3C 7C
	pea $E878.w		; F4 78 E8
	pla		; 68
	inx		; E8
	rts		; 60

	cpx #$0000.w		; E0 00 00
	brk $1E.b		; 00 1E
	clc		; 18
	rol $7E20.w,X		; 3E 20 7E
	rts		; 60

	jsr ($F860.w,X)		; FC 60 F8
	rts		; 60

	sed		; F8
	rti		; 40

	cpx #$0000.w		; E0 00 00
	clv		; B8
	pea $BA7C.w		; F4 7C BA
	dec $5D3D.w,X		; DE 3D 5D
	ldx $FECD.w,Y		; BE CD FE
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	cpx $FC48.w		; EC 48 FC
	lsr A		; 4A
	pea $BA00.w		; F4 00 BA
	brk $3D.b		; 00 3D
	brk $BE.b		; 00 BE
	bra  62.b		; 80 3E
	jsr $000C.w		; 20 0C 00
	dey		; 88
	bpl -118.b		; 10 8A
	jsr $7CCE.w		; 20 CE 7C
	eor $BE7E.w		; 4D 7E BE
	eor $805E.w		; 4D 5E 80
	inc $F400.w		; EE 00 F4
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	tsb $BC.b		; 04 BC
	jsr $809E.w		; 20 9E 80
	sta $0000.w		; 8D 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	cpy #$4040.w		; C0 40 40
	brk $04.b		; 00 04
	ora ($07.b,X)		; 01 07
	ora [$0C.b]		; 07 0C
	jsl $013800.l		; 22 00 38 01
	sei		; 78
	ora $7C.b,S		; 03 7C
	jsl $E870F8.l		; 22 F8 70 E8
	beq   2.b		; F0 02
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	clc		; 18
	ora $05.b,S		; 03 05
	cop $06.b		; 02 06
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	cpy #$0DF0.w		; C0 F0 0D
	brk $09.b		; 00 09
	brk $1B.b		; 00 1B
	brk $36.b		; 00 36
	brk $26.b		; 00 26
	brk $2D.b		; 00 2D
	brk $3D.b		; 00 3D
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	asl $04.b		; 06 04
	ora $1D04.w		; 0D 04 1D
	ora #$191B.w		; 09 1B 19
	tas		; 1B
	ora ($13.b),Y		; 11 13
	sbc $5A0F.w		; ED 0F 5A
	cop $5D.b		; 02 5D
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $05.b		; 00 05
	ora $00A702.l,X		; 1F 02 A7 00
	ldx #$A480.w		; A2 80 A4
	bcc -76.b		; 90 B4
	bcc -76.b		; 90 B4
	bcc -76.b		; 90 B4
	sta ($B6.b)		; 92 B6
	tsb $1413.w		; 0C 13 14
	rol $FE38.w,X		; 3E 38 FE
	cpx #$408C.w		; E0 8C 40
	clc		; 18
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	bra  64.b		; 80 40
	asl $0812.w,X		; 1E 12 08
	php		; 08
	mvp $78,$44		; 44 44 78
	php		; 08
	beq  16.b		; F0 10
	rts		; 60

	ldy #$C040.w		; A0 40 C0
	brk $00.b		; 00 00
	ora $071303.l,X		; 1F 03 13 07
	sbc ($07.b,S),Y		; F3 07
	sbc ($07.b,S),Y		; F3 07
	sbc ($03.b),Y		; F1 03
	adc ($0D.b)		; 72 0D
	and $013D07.l,X		; 3F 07 3D 01
	bpl  19.b		; 10 13
	ora ($0F.b,X)		; 01 0F
	sbc ($EF.b,X)		; E1 EF
	sta ($8F.b,X)		; 81 8F
	bra -113.b		; 80 8F
	bpl  31.b		; 10 1F
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	jsr ($F4F4.w,X)		; FC F4 F4
	beq -12.b		; F0 F4
	sed		; F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	bvs  -8.b		; 70 F8
	ldx $FC.b,Y		; B6 FC
	dec $E0FC.w		; CE FC E0
	pea $F8F0.w		; F4 F0 F8
	beq  -8.b		; F0 F8
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	bvs  -4.b		; 70 FC
	bmi  -4.b		; 30 FC
	iny		; C8
	jsr ($C97B.w,X)		; FC 7B C9
	dec A		; 3A
	adc ($0A.b,X)		; 61 0A
	and ($02.b),Y		; 31 02
	clc		; 18
	ora $08.b		; 05 08
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bmi   5.b		; 30 05
	clc		; 18
	ora $18.b		; 05 18
	ora $08.b,X		; 15 08
	ora $0200.w		; 0D 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror A		; 6A
	ora $07.b,X		; 15 07
	tsa		; 3B
	phd		; 0B
	and [$0F.b],Y		; 37 0F
	ora ($06.b,S),Y		; 13 06
	tas		; 1B
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	ora $001507.l		; 0F 07 15 00
	tsa		; 3B
	brk $35.b		; 00 35
	cop $13.b		; 02 13
	brk $1B.b		; 00 1B
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $A3D8AF.l		; 0F AF D8 A3
	cli		; 58
	eor ($BC.b,X)		; 41 BC
	sbc $63A7.w,Y		; F9 A7 63
	stz $0CF3.w		; 9C F3 0C
	plx		; FA
	ora ($FC.b,X)		; 01 FC
	brk $D7.b		; 00 D7
	bpl  79.b		; 10 4F
	php		; 08
	lda [$04.b]		; A7 04
	ldx #$8002.w		; A2 02 80
	brk $60.b		; 00 60
	rts		; 60

	sbc [$F1.b],Y		; F7 F1
	tas		; 1B
	clc		; 18
	rts		; 60

	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	jsr $A020.w		; 20 20 A0
	jsr $50A0.w		; 20 A0 50
	bne  80.b		; D0 50
	bne  80.b		; D0 50
	bne  80.b		; D0 50
	bne   0.b		; D0 00
	ora ($03.b,X)		; 01 03
	tsb $0D.b		; 04 0D
	ora $07.b,S		; 03 07
	ora $1F0F1F.l,X		; 1F 1F 0F 1F
	and $072F17.l		; 2F 17 2F 07
	and $040001.l,X		; 3F 01 00 04
	brk $03.b		; 00 03
	brk $1E.b		; 00 1E
	ora ($0D.b,X)		; 01 0D
	cop $2F.b		; 02 2F
	brk $2F.b		; 00 2F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	adc $FFFE.w,X		; 7D FE FF
	inc $FBFF.w,X		; FE FF FB
	jsr ($FBFC.w,X)		; FC FC FB
	sbc ($FF.b,S),Y		; F3 FF
	cmp $51A7E3.l,X		; DF E3 A7 51
	adc $BF00.w,X		; 7D 00 BF
	rti		; 40

	and $F00CC0.l,X		; 3F C0 0C F0
	tya		; 98
	rts		; 60

	sed		; F8
	brk $E0.b		; 00 E0
	brk $42.b		; 00 42
	cli		; 58
	ora $000F00.l		; 0F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $003E00.l,X		; 7F 00 3E 00
	asl $1D00.w,X		; 1E 00 1D
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $09.b		; 04 09
	ora #$1111.w		; 09 11 11
	and $23.b,S		; 23 23
	ora ($13.b)		; 12 13
	asl $07.b		; 06 07
	tsb $CF0E.w		; 0C 0E CF
	and ($BE.b),Y		; 31 BE
	brk $B7.b		; 00 B7
	brk $76.b		; 00 76
	brk $76.b		; 00 76
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $81.b		; 00 81
	sta ($90.b,X)		; 81 90
	cmp ($92.b),Y		; D1 92
	phx		; DA
	ora ($9B.b)		; 12 9B
	and ($BB.b)		; 32 BB
	jsl $736233.l		; 22 33 62 73
	.db $62, $73, $2F		; 62 73 2F
	trb $027F.w		; 1C 7F 02
	adc $037E1C.l		; 6F 1C 7E 03
	and [$10.b]		; 27 10
	bit $13.b		; 24 13
	asl $0C1B.w		; 0E 1B 0C
	ora $1C04.w,Y		; 19 04 1C
	cop $22.b		; 02 22
	tsb $1D.b		; 04 1D
	cop $23.b		; 02 23
	tsb $0E00.w		; 0C 00 0E
	cop $05.b		; 02 05
	ora ($07.b,X)		; 01 07
	ora ($F3.b,X)		; 01 F3
	brk $F9.b		; 00 F9
	asl $DD.b		; 06 DD
	and ($E7.b)		; 32 E7
	clc		; 18
	sbc $837D03.l,X		; FF 03 7D 83
	sbc $827F10.l		; EF 10 7F 82
	jmp ($0660.w)		; 6C 60 06
	asl $72.b		; 06 72
	.db $42, $F8		; 42 F8
	cpx #$797B.w		; E0 7B 79
	tda		; 7B
	sed		; F8
	sec		; 38
	tay		; A8
	.db $62, $62, $81		; 62 62 81
	bit $C3.b,X		; 34 C3
	ror $C3.b,X		; 76 C3
	ror $C0.b		; 66 C0
	.db $62, $01, $63		; 62 01 63
	brk $43.b		; 00 43
	bra -63.b		; 80 C1
	bra -63.b		; 80 C1
	sbc [$24.b]		; E7 24
	lda ($20.b,X)		; A1 20
	lda ($20.b,X)		; A1 20
	sta $02.b,S		; 83 02
	cpy #$C140.w		; C0 40 C1
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	clc		; 18
	cpx #$E008.w		; E0 08 E0
	php		; 08
	cpx #$F008.w		; E0 08 F0
	php		; 08
	sed		; F8
	tsb $0470.w		; 0C 70 04
	beq -124.b		; F0 84
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $08.b		; 04 08
	tsb $03.b		; 04 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $E0.b		; 04 E0
	bmi -64.b		; 30 C0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	jmp.w [$8FE6]		; DC E6 8F
	adc [$0F.b]		; 67 0F
	lda ($01.b)		; B2 01
	lda $00D400.l,X		; BF 00 D4 00
	pei ($00.b)		; D4 00
	pei ($00.b)		; D4 00
	rti		; 40

	sbc $069F84.l,X		; FF 84 9F 06
	sta $004F00.l,X		; 9F 00 4F 00
	rti		; 40

	rti		; 40

	pla		; 68
	rti		; 40

	pla		; 68
	brk $28.b		; 00 28
	pei ($00.b)		; D4 00
	cli		; 58
	brk $50.b		; 00 50
	php		; 08
	bvs  24.b		; 70 18
	cpy #$7848.w		; C0 48 78
	tsb $0470.w		; 0C 70 04
	sei		; 78
	tsb $00.b		; 04 00
	plp		; 28
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	sec		; 38
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	inc A		; 1A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	.db $42, $1C		; 42 1C
	eor $1C.b,S		; 43 1C
	eor $3C.b,S		; 43 3C
	adc $3C.b,S		; 63 3C
	adc $1E.b,S		; 63 1E
	adc $0E.b,S		; 63 0E
	adc $0E.b,S		; 63 0E
	and $3E.b,S		; 23 3E
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $203C.w		; 20 3C 20
	bit $3720.w,X		; 3C 20 37
	php		; 08
	and $3F02.w,X		; 3D 02 3F
	tsb $3F.b		; 04 3F
	php		; 08
	and [$0E.b],Y		; 37 0E
	ora $001F00.l,X		; 1F 00 1F 00
	ora [$00.b]		; 07 00
	php		; 08
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $BF5F4F.l,X		; 3F 4F 5F BF
	lda $BF7F7F.l,X		; BF 7F 7F BF
	eor $5F2E3F.l,X		; 5F 3F 2E 5F
	ora $0F26.w,Y		; 19 26 0F
	bpl  75.b		; 10 4B
	tsb $B3.b		; 04 B3
	tsb $1E61.w		; 0C 61 1E
	lda ($0C.b,S),Y		; B3 0C
	tsa		; 3B
	tsb $5F.b		; 04 5F
	brk $26.b		; 00 26
	brk $10.b		; 00 10
	brk $9F.b		; 00 9F
	adc ($3F.b),Y		; 71 3F
	sbc ($8D.b,X)		; E1 8D
	sbc ($86.b,X)		; E1 86
	sbc ($05.b),Y		; F1 05
	inc $9C63.w,X		; FE 63 9C
	sbc ($0E.b),Y		; F1 0E
	plx		; FA
	ora ($52.b,X)		; 01 52
	mvn $40,$DE		; 54 DE 40
	ldx $DE22.w,Y		; BE 22 DE
	bpl -24.b		; 10 E8
	php		; 08
	bra   0.b		; 80 00
	rts		; 60

	rts		; 60

	and [$31.b],Y		; 37 31
	ora $0D00.w,X		; 1D 00 0D
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $01.b		; 06 01
	asl $03.b		; 06 03
	asl $0C.b		; 06 0C
	asl $0604.w		; 0E 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	inc $EF00.w		; EE 00 EF
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $E8.b		; 00 E8
	ora $E80FE8.l		; 0F E8 0F E8
	ora $E7F7E6.l		; 0F E6 F7 E7
	sbc [$67.b],Y		; F7 67
	adc [$87.b],Y		; 77 87
	ora [$F0.b]		; 07 F0
	brk $F1.b		; 00 F1
	ora ($F1.b,X)		; 01 F1
	ora ($F1.b,X)		; 01 F1
	ora ($07.b,X)		; 01 07
	ora #$0802.w		; 09 02 08
	asl $1B04.w		; 0E 04 1B
	tsb $39.b		; 04 39
	tsb $7D.b		; 04 7D
	cop $FC.b		; 02 FC
	cop $7E.b		; 02 7E
	ora ($0E.b,X)		; 01 0E
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($10.b,S),Y		; 13 10
	and $22.b,S		; 23 22
	eor ($40.b,X)		; 41 40
	jsr $3F20.w		; 20 20 3F
	cpx $7D.b		; E4 7D
	sta $77.b,S		; 83 77
	sta $5D9FEE.l		; 8F EE 9F 5D
	asl $04DB.w		; 0E DB 04
	sbc $017F00.l,X		; FF 00 7F 01
	stz $15.b,X		; 74 15
	adc ($63.b,X)		; 61 63
	dec $CF.b		; C6 CF
	bit $883F.w		; 2C 3F 88
	and $902680.l		; 2F 80 26 90
	ora ($81.b),Y		; 11 81
	ora $00.b,S		; 03 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	brk $70.b		; 00 70
	sty $38.b		; 84 38
	sty $3C.b		; 84 3C
	stx $78.b		; 86 78
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $42, $38		; 42 38
	.db $42, $1C		; 42 1C
	.db $42, $1C		; 42 1C
	.db $42, $FC		; 42 FC
	sty $7C.b		; 84 7C
	tsb $78.b		; 04 78
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	cop $3E.b		; 02 3E
	cop $09.b		; 02 09
	ora $08.b		; 05 08
	ora $0C.b		; 05 0C
	ora ($0F.b,X)		; 01 0F
	brk $17.b		; 00 17
	php		; 08
	ora $190E.w,Y		; 19 0E 19
	asl A		; 0A
	tsa		; 3B
	brk $06.b		; 00 06
	tsb $07.b		; 04 07
	ora $03.b		; 05 03
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	php		; 08
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
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
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
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
	rti		; 40

	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	rti		; 40

	cpy #$E060.w		; C0 60 E0
	bmi  -8.b		; 30 F8
	brk $7E.b		; 00 7E
	brk $1F.b		; 00 1F
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldy #$F0B0.w		; A0 B0 F0
	bmi -16.b		; 30 F0
	rts		; 60

	beq   8.b		; F0 08
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	beq -96.b		; F0 A0
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E080.w		; E0 80 E0
	bne -16.b		; D0 F0
	inx		; E8
	sei		; 78
	beq -72.b		; F0 B8
	bvs  56.b		; 70 38
	beq 112.b		; F0 70
	tay		; A8
	bcs   0.b		; B0 00
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	iny		; C8
	jsr $10E0.w		; 20 E0 10
	rts		; 60

	bpl -16.b		; 10 F0
	bra  40.b		; 80 28
	bra   0.b		; 80 00
	rti		; 40

	bne  32.b		; D0 20
	pha		; 48
	bcs  72.b		; B0 48
	bcs -112.b		; B0 90
	rts		; 60

	jsr $C0C0.w		; 20 C0 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	bra -80.b		; 80 B0
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$6060.w		; C0 60 60
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	brk $D8.b		; 00 D8
	rts		; 60

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	clv		; B8
	cpy #$E0DC.w		; C0 DC E0
	bra -128.b		; 80 80
	jsr $6020.w		; 20 20 60
	rts		; 60

	bvs  16.b		; 70 10
	brk $00.b		; 00 00
	jsr $9060.w		; 20 60 90
	beq -56.b		; F0 C8
	sed		; F8
	jmp ($98F0.w)		; 6C F0 98
	rts		; 60

	beq   0.b		; F0 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	cpy #$F060.w		; C0 60 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	ora $180F18.l		; 0F 18 0F 18
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora $301F30.l,X		; 1F 30 1F 30
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000F00.l		; 0F 00 0F 00
	ora $301E30.l,X		; 1F 30 1E 30
	ora $210E21.l		; 0F 21 0E 21
	tsb $0E21.w		; 0C 21 0E
	and $0C.b,S		; 23 0C
	jsl $0F621C.l		; 22 1C 62 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora ($1E.b,X)		; 01 1E
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $00203C.l		; 22 3C 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	.db $62, $1C, $C6		; 62 1C C6
	bvs -60.b		; 70 C4
	bmi -124.b		; 30 84
	sed		; F8
	sty $0860.w		; 8C 60 08
	beq  24.b		; F0 18
	cpy #$1C18.w		; C0 18 1C
	brk $78.b		; 00 78
	rti		; 40

	bit $F804.w,X		; 3C 04 F8
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl 120.b		; 10 78
	cpy $C470.w		; CC 70 C4
	bpl -60.b		; 10 C4
	bpl  68.b		; 10 44
	bmi 100.b		; 30 64
	bit $66.b,X		; 34 66
	tsb $66.b		; 04 66
	trb $36.b		; 14 36
	bmi   0.b		; 30 00
	bit $7C04.w,X		; 3C 04 7C
	mvp $44,$7C		; 44 7C 44
	trb $1804.w		; 1C 04 18
	brk $38.b		; 00 38
	jsr $2028.w		; 20 28 20
	trb $36.b		; 14 36
	tsb $0C3E.w		; 0C 3E 0C
	rol $1E24.w,X		; 3E 24 1E
	sec		; 38
	asl $3E.b		; 06 3E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	tsb $0008.w		; 0C 08 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	asl $01.b		; 06 01
	ora $0F.b,S		; 03 0F
	ora $170F07.l		; 0F 07 0F 17
	phd		; 0B
	ora [$03.b],Y		; 17 03
	ora $02271F.l,X		; 1F 1F 27 02
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	ora ($17.b,X)		; 01 17
	brk $17.b		; 00 17
	brk $1F.b		; 00 1F
	brk $25.b		; 00 25
	cop $FF.b		; 02 FF
	adc $FDFFFF.l,X		; 7F FF FF FD
	inc $FDFE.w,X		; FE FE FD
	sbc $EFFF.w,Y		; F9 FF EF
	sbc ($D3.b),Y		; F1 D3
	tay		; A8
	cmp $205FB8.l		; CF B8 5F 20
	sta $F80660.l,X		; 9F 60 06 F8
	cpy $FC30.w		; CC 30 FC
	brk $F0.b		; 00 F0
	brk $A1.b		; 00 A1
	bit $2AA9.w		; 2C A9 2A
	dec $DE00.w,X		; DE 00 DE
	brk $FD.b		; 00 FD
	brk $BE.b		; 00 BE
	sta ($B4.b,X)		; 81 B4
	sta [$78.b]		; 87 78
	cmp $7E.b,S		; C3 7E
	cmp $7C.b,S		; C3 7C
	cmp ($CE.b,X)		; C1 CE
	sbc $0CEFCE.l		; EF CE EF 0C
	asl $0060.w		; 0E 60 00
	ply		; 7A
	cop $BE.b		; 02 BE
	.db $82, $3D, $01		; 82 3D 01
	and $00A001.l,X		; 3F 01 A0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	rol $2E00.w,X		; 3E 00 2E
	bpl 100.b		; 10 64
	clc		; 18
	jmp ($7818.w)		; 6C 18 78
	brk $F8.b		; 00 F8
	brk $D8.b		; 00 D8
	and ($D8.b,X)		; 21 D8
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	clc		; 18
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2020.w		; 20 20 20
	brk $30.b		; 00 30
	pea $E460.w		; F4 60 E4
	pha		; 48
	cpy $8800.w		; CC 00 88
	bpl -104.b		; 10 98
	bcc -104.b		; 90 98
	bra -112.b		; 80 90
	bra -112.b		; 80 90
	jmp $1844.w		; 4C 44 18
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	php		; 08
	cpx #$6080.w		; E0 80 60
	brk $70.b		; 00 70
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0B.b		; 02 0B
	sec		; 38
	ora [$30.b]		; 07 30
	ora $401F20.l		; 0F 20 1F 40
	rol $7883.w,X		; 3E 83 78
	ora $F0.b,S		; 03 F0
	ora [$E0.b]		; 07 E0
	ora $1F1017.l		; 0F 17 10 1F
	bpl  31.b		; 10 1F
	brk $3F.b		; 00 3F
	brk $7D.b		; 00 7D
	ora ($FE.b,X)		; 01 FE
	cop $FC.b		; 02 FC
	tsb $F8.b		; 04 F8
	php		; 08
	ora $220932.l		; 0F 32 09 22
	asl $3764.w,X		; 1E 64 37
	rts		; 60

	ora $1A60.w,X		; 1D 60 1A
	and ($3F.b,X)		; 21 3F
	ora $1F.b,S		; 03 1F
	ora $1C.b,S		; 03 1C
	bpl  28.b		; 10 1C
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	and ($23.b),Y		; 31 23
	brk $05.b		; 00 05
	phd		; 0B
	phd		; 0B
	ora ($07.b,X)		; 01 07
	and $043F08.l,X		; 3F 08 3F 04
	adc ($07.b,S),Y		; 73 07
	sbc ($03.b),Y		; F1 03
	sbc ($0C.b,S),Y		; F3 0C
	sbc [$07.b],Y		; F7 07
	adc $DF81.w,X		; 7D 81 DF
	cpx #$1B03.w		; E0 03 1B
	brk $0C.b		; 00 0C
	and ($2F.b,X)		; 21 2F
	rti		; 40

	eor $031F10.l		; 4F 10 1F 03
	ora $C08300.l		; 0F 00 83 C0
	cpx #$79FE.w		; E0 FE 79
	sbc $F9FB.w,X		; FD FB F9
	xce		; FB
	xce		; FB
	plx		; FA
	xce		; FB
	ply		; 7A
	inc $FEB4.w,X		; FE B4 FE
	cmp $796A.w		; CD 6A 79
	adc $F879.w,Y		; 79 79 F8
	sed		; F8
	plx		; FA
	inc $FC71.w,X		; FE 71 FC
	and ($FC.b),Y		; 31 FC
	ora ($FC.b),Y		; 11 FC
	cmp #$28FD.w		; C9 FD 28
	jsr ($8000.w,X)		; FC 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	jsr ($AF46.w,X)		; FC 46 AF
	lsr $0C6D.w		; 4E 6D 0C
	adc ($80.b,S),Y		; 73 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	cpy #$8043.w		; C0 43 80
	ora $881E8C.l		; 0F 8C 1E 88
	asl $CCC0.w,X		; 1E C0 CC
	tas		; 1B
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -24.b		; 70 E8
	sei		; 78
	pea $78BC.w		; F4 BC 78
	jmp $F89CB8.l		; 5C B8 9C F8
	clv		; B8
	pei ($D8.b)		; D4 D8
	bra -24.b		; 80 E8
	bcc -24.b		; 90 E8
	brk $E4.b		; 00 E4
	bpl 112.b		; 10 70
	php		; 08
	bmi   8.b		; 30 08
	sei		; 78
	rti		; 40

	trb $40.b		; 14 40
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	ldy $D8.b		; A4 D8
	ldy $D8.b		; A4 D8
	pha		; 48
	bcs -112.b		; B0 90
	rts		; 60

	cpx #$F000.w		; E0 00 F0
	brk $78.b		; 00 78
	bra 124.b		; 80 7C
	brk $58.b		; 00 58
	rti		; 40

	clc		; 18
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bcs -80.b		; B0 B0
	bcc  16.b		; 90 10
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
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
	and $3F5F5F.l		; 2F 5F 5F 3F
	and $1F2F5F.l,X		; 3F 5F 2F 1F
	ora [$2F.b],Y		; 17 2F
	tsb $0713.w		; 0C 13 07
	php		; 08
	ora $06.b,S		; 03 06
	eor $3006.w,Y		; 59 06 30
	ora $1D0659.l		; 0F 59 06 1D
	cop $2F.b		; 02 2F
	brk $13.b		; 00 13
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	asl $F09F.w		; 0E 9F F0
	dec $F0.b		; C6 F0
	cmp $F8.b,S		; C3 F8
	.db $82, $FF, $31		; 82 FF 31
	dec $07F8.w		; CE F8 07
	sbc $FE00.w,X		; FD 00 FE
	bra -17.b		; 80 EF
	jsr $11DF.w		; 20 DF 11
	sbc $04F408.l		; EF 08 F4 04
	cpy #$3000.w		; C0 00 30
	bmi  27.b		; 30 1B
	clc		; 18
	sta $1F8C.w		; 8D 8C 1F
	eor ($1E.b,X)		; 41 1E
	rti		; 40

	rol $0F60.w,X		; 3E 60 0F
	jsr $301F.w		; 20 1F 30
	ora [$10.b]		; 07 10
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ror $3F40.w,X		; 7E 40 3F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $C00008.l		; 0F 08 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $F0.b		; 00 F0
	ora #$11EC.w		; 09 EC 11
	sbc $00.b		; E5 00
	sbc $7F18.w,X		; FD 18 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	php		; 08
	clc		; 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bcs -128.b		; B0 80
	ldy #$A080.w		; A0 80 A0
	bra  32.b		; 80 20
	cpx #$E000.w		; E0 00 E0
	brk $60.b		; 00 60
	bra 112.b		; 80 70
	cpy #$0040.w		; C0 40 00
	rts		; 60

	jsr $2060.w		; 20 60 20
	rts		; 60

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$0380.w		; A0 80 03
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0802.w		; 0C 02 08
	tsb $2219.w		; 0C 19 22
	ora ($34.b,S),Y		; 13 34
	ora [$78.b]		; 07 78
	ora $070001.l		; 0F 01 00 07
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$01.b]		; 07 01
	trb $0A10.w		; 1C 10 0A
	cop $04.b		; 02 04
	tsb $C0.b		; 04 C0
	ora $003E80.l,X		; 1F 80 3E 00
	ror $FE00.w,X		; 7E 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	bpl  -4.b		; 10 FC
	bmi  -4.b		; 30 FC
	beq  16.b		; F0 10
	cpx $24.b		; E4 24
	cpy $9C4C.w		; CC 4C 9C
	stz $3C3C.w		; 9C 3C 3C
	sec		; 38
	sec		; 38
	pla		; 68
	pla		; 68
	iny		; C8
	iny		; C8
	asl $0301.w		; 0E 01 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $03.b		; 04 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	inc $5FBC.w		; EE BC 5F
	sbc #$F31E.w		; E9 1E F3
	tsb $00EF.w		; 0C EF 00
	inc $EE00.w		; EE 00 EE
	brk $DE.b		; 00 DE
	brk $6E.b		; 00 6E
	inc $FF0C.w,X		; FE 0C FF
	php		; 08
	adc $600F00.l,X		; 7F 00 0F 60
	ror $60.b,X		; 76 60
	adc ($E6.b),Y		; 71 E6
	sbc [$CE.b],Y		; F7 CE
	sbc $EE10D6.l		; EF D6 10 EE
	brk $FB.b		; 00 FB
	brk $EB.b		; 00 EB
	brk $EB.b		; 00 EB
	brk $ED.b		; 00 ED
	brk $ED.b		; 00 ED
	brk $F5.b		; 00 F5
	brk $10.b		; 00 10
	sec		; 38
	brk $10.b		; 00 10
	jsr $2024.w		; 20 24 20
	bit $20.b,X		; 34 20
	bit $64.b,X		; 34 64
	ror $64.b,X		; 76 64
	ror $70.b,X		; 76 70
	ply		; 7A
	jmp ($3080.w,X)		; 7C 80 30
	rti		; 40

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
	brk $00.b		; 00 00
	ora $0C0101.l		; 0F 01 01 0C
	ora ($19.b,X)		; 01 19
	tsb $0619.w		; 0C 19 06
	and ($09.b,S),Y		; 33 09
	jsl $13661D.l		; 22 1D 66 13
	mvp $01,$01		; 44 01 01
	asl $04.b		; 06 04
	asl $0708.w		; 0E 08 07
	ora ($1C.b,X)		; 01 1C
	bpl  30.b		; 10 1E
	cop $38.b		; 02 38
	jsr $0038.w		; 20 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	ora $2F1F10.l		; 0F 10 1F 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bne  -8.b		; D0 F8
	brk $FC.b		; 00 FC
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	rts		; 60

	beq -80.b		; F0 B0
	bcs  56.b		; B0 38
	bcs  48.b		; B0 30
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	beq  96.b		; F0 60
	sed		; F8
	bcs  -8.b		; B0 F8
	bmi -16.b		; 30 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $86FB40.l,X		; FF 40 FB 86
	ldy $5F43.w,X		; BC 43 5F
	ldy #$60FF.w		; A0 FF 60
	sbc $FF72.w,X		; FD 72 FF
	rts		; 60

	adc [$4C.b],Y		; 77 4C
	brk $40.b		; 00 40
	asl $1F88.w		; 0E 88 1F
	jmp $2F2F0F.l		; 5C 0F 2F 2F
	adc $2CF537.l		; 6F 37 F5 2C
	cpx $D21E.w		; EC 1E D2
	rol $BFC0.w,X		; 3E C0 BF
	rti		; 40

	xce		; FB
	tsb $60FE.w		; 0C FE 60
	ldx $FE60.w,Y		; BE 60 FE
	brk $FC.b		; 00 FC
	rti		; 40

	beq -20.b		; F0 EC
	cpy $C4.b		; C4 C4
	jmp $0E4C.w		; 4C 4C 0E
	cop $6C.b		; 02 6C
	bit $0868.w		; 2C 68 08
	brk $00.b		; 00 00
	cli		; 58
	cli		; 58
	inx		; E8
	cpx #$0813.w		; E0 13 08
	ora [$08.b],Y		; 17 08
	ora $001F08.l,X		; 1F 08 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $0800.w,Y		; 19 00 08
	brk $0E.b		; 00 0E
	php		; 08
	asl $0408.w		; 0E 08 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	cpy #$00F0.w		; C0 F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bra -69.b		; 80 BB
	bvs 111.b		; 70 6F
	beq  95.b		; F0 5F
	cpx #$40BE.w		; E0 BE 40
	ror $EE00.w,X		; 7E 00 EE
	brk $EE.b		; 00 EE
	brk $85.b		; 00 85
	cmp $31.b		; C5 31
	sbc $61.b,X		; F5 61
	sbc $F941.w,Y		; F9 41 F9
	asl A		; 0A
	tda		; 7B
	ora ($33.b)		; 12 33
	jsl $170633.l		; 22 33 06 17
	sbc $7A0F.w		; ED 0F 7A
	cop $7D.b		; 02 7D
	brk $6F.b		; 00 6F
	brk $ED.b		; 00 ED
	brk $ED.b		; 00 ED
	brk $ED.b		; 00 ED
	brk $EE.b		; 00 EE
	brk $05.b		; 00 05
	ora $20A722.l,X		; 1F 22 A7 20
	ldx #$B424.w		; A2 24 B4
	stz $76.b		; 64 76
	stz $76.b		; 64 76
	stz $76.b		; 64 76
	ror $77.b		; 66 77
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $E13FC1.l,X		; 1F C1 3F E1
	rol $0FE0.w,X		; 3E E0 0F
	cpx #$F01F.w		; E0 1F F0
	ora [$F0.b]		; 07 F0
	ora $F803F8.l		; 0F F8 03 F8
	ror $1E40.w,X		; 7E 40 1E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $808F.w		; 20 8F 80
	cmp $C0C7D0.l,X		; DF D0 C7 C0
	sbc $0000E8.l		; EF E8 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	ora $08.b,S		; 03 08
	ora $000019.l		; 0F 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	sbc $C8FF30.l,X		; FF 30 FF C8
	xce		; FB
	bit $77.b,X		; 34 77
	php		; 08
	cmp $8F02.w,X		; DD 02 8F
	and ($1F.b)		; 32 1F
	adc [$33.b]		; 67 33
	dec $30.b		; C6 30
	bmi  64.b		; 30 40
	iny		; C8
	jsr $C134.w		; 20 34 C1
	ora $06E0.w		; 0D E0 06
.ACCU 8
	sep #$22		; E2 22
	cmp $47.b,S		; C3 47
	.db $82, $8E, $E7		; 82 8E E7
	brk $F3.b		; 00 F3
	tsb $64BB.w		; 0C BB 64
	cmp $06FF30.l		; CF 30 FF 06
	xce		; FB
	asl $DF.b		; 06 DF
	jsr $04FF.w		; 20 FF 04
	cmp $0CC1.w,Y		; D9 C1 0C
	tsb $84E4.w		; 0C E4 84
	beq -64.b		; F0 C0
	inc $F2.b,X		; F6 F2
	inc $F0.b,X		; F6 F0
	bvs  80.b		; 70 50
	cmp $C5.b		; C5 C5
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	cpy #$10E0.w		; C0 E0 10
	cpx #$F018.w		; E0 18 F0
	php		; 08
	cld		; D8
	bit $00.b		; 24 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$E0C0.w		; C0 C0 E0
	jsr $C0C0.w		; 20 C0 C0
	bra -128.b		; 80 80
	bpl   0.b		; 10 00
	clv		; B8
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F11.w		; 0E 11 1F
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ldy #$00F0.w		; A0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0000.w		; A0 00 00
	brk $24.b		; 00 24
	clc		; 18
	ora [$08.b],Y		; 17 08
	ora ($08.b,S),Y		; 13 08
	ora [$08.b],Y		; 17 08
	ora $001F00.l,X		; 1F 00 1F 00
	tas		; 1B
	brk $08.b		; 00 08
	brk $0E.b		; 00 0E
	php		; 08
	asl $0408.w		; 0E 08 04
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
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
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
	brk $2E.b		; 00 2E
	adc $38.b,S		; 63 38
	adc $1C.b,S		; 63 1C
	lsr $30.b		; 46 30
	cpy $78.b		; C4 78
	cpy $C860.w		; CC 60 C8
	bvs -40.b		; 70 D8
	jsr $1C90.w		; 20 90 1C
	brk $1E.b		; 00 1E
	cop $78.b		; 02 78
	rti		; 40

	jmp ($3044.w,X)		; 7C 44 30
	brk $38.b		; 00 38
	php		; 08
	jsr $F000.w		; 20 00 F0
	bcc  64.b		; 90 40
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $A8.b		; 00 A8
	brk $A8.b		; 00 A8
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$D080.w		; C0 80 D0
	brk $50.b		; 00 50
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
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
	ror $3E00.w,X		; 7E 00 3E
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$16.b]		; 07 16
	ora [$06.b],Y		; 17 06
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $5E.b		; 00 5E
	cmp ($40.b,X)		; C1 40
	cmp $5C.b,S		; C3 5C
	cmp ($5C.b,X)		; C1 5C
	cmp ($66.b,X)		; C1 66
	adc [$66.b],Y		; 77 66
	adc [$67.b],Y		; 77 67
	adc [$16.b],Y		; 77 16
	asl $A0.b,X		; 16 A0
	bra -66.b		; 80 BE
	.db $82, $3F, $01		; 82 3F 01
	and $070101.l,X		; 3F 01 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	cop $06.b		; 02 06
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora [$FC.b]		; 07 FC
	sta ($FC.b,X)		; 81 FC
.ACCU 16
.INDEX 16
	rep #$F6		; C2 F6
	cpy #$C1F6.w		; C0 F6 C1
	sbc ($C1.b,S),Y		; F3 C1
	sbc ($40.b,S),Y		; F3 40
	adc ($40.b),Y		; 71 40
	adc ($E3.b,X)		; 61 E3
	cpx #$6467.w		; E0 67 64
	and ($20.b,X)		; 21 20
	and $22.b,S		; 23 22
	jsr $2020.w		; 20 20 20
	jsr $0181.w		; 20 81 01
	bra   0.b		; 80 00
	asl $0433.w		; 0E 33 04
	and [$3C.b]		; 27 3C
	.db $62, $26, $40		; 62 26 40
	ply		; 7A
	tsb $7D.b		; 04 7D
	asl $1E6F.w		; 0E 6F 1E
	rol $0F.b,X		; 36 0F
	ora $3A11.w,X		; 1D 11 3A
	jsl $040000.l		; 22 00 00 04
	trb $2420.w		; 1C 20 24
	tsb $060E.w		; 0C 0E 06
	asl $1F02.w,X		; 1E 02 1F
	ora #$0582.w		; 09 82 05
	brk $05.b		; 00 05
	ora ($0C.b,X)		; 01 0C
	ora ($1C.b,X)		; 01 1C
	brk $3C.b		; 00 3C
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $08.b,S		; 03 08
	phd		; 0B
	trb $17.b		; 14 17
	jsr $0A21.w		; 20 21 0A
	asl A		; 0A
	adc $1EFFCE.l,X		; 7F CE FF 1E
	sbc $FEFE3E.l,X		; FF 3E FE FE
	ror $FEFE.w,X		; 7E FE FE
	asl $EDFF.w,X		; 1E FF ED
	adc $2EEE73.l,X		; 7F 73 EE 2E
	dec $3EDE.w,X		; DE DE 3E
	rol $FF7E.w,X		; 3E 7E FF
	trb $0CFF.w		; 1C FF 0C
	sbc $32FFC4.l,X		; FF C4 FF 32
	sbc $97E20C.l,X		; FF 0C E2 97
	bvs  11.b		; 70 0B
	sec		; 38
	ora [$18.b]		; 07 18
	ora $08.b		; 05 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	ldy $2E20.w,X		; BC 20 2E
	jsr $9115.w		; 20 15 91
	asl A		; 0A
	asl A		; 0A
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	and $3FFF5F.l,X		; 3F 5F FF 3F
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $FFFCFE.l,X		; FF FE FC FF
	sbc [$F8.b],Y		; F7 F8
	sbc #$5FD4.w		; E9 D4 5F
	brk $2F.b		; 00 2F
	bpl -49.b		; 10 CF
	bmi -125.b		; 30 83
	jmp ($9866.w,X)		; 7C 66 98
	inc $F800.w,X		; FE 00 F8
	brk $D0.b		; 00 D0
	asl $F8.b,X		; 16 F8
	rts		; 60

	clv		; B8
	pea $FABC.w		; F4 BC FA
	dec $2E3C.w,X		; DE 3C 2E
	jmp.w [$FCCE]		; DC CE FC
	jmp.w [$ECEA]		; DC EA EC
	rti		; 40

	rts		; 60

	brk $F4.b		; 00 F4
	brk $F2.b		; 00 F2
	php		; 08
	sec		; 38
	tsb $18.b		; 04 18
	tsb $3C.b		; 04 3C
	jsr $200A.w		; 20 0A 20
	bra  16.b		; 80 10
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	cpx #$E030.w		; E0 30 E0
	bmi -64.b		; 30 C0
	clc		; 18
	bne  24.b		; D0 18
	beq  24.b		; F0 18
	cpx #$E008.w		; E0 08 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$D000.w		; C0 00 D0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	trb $1C05.w		; 1C 05 1C
	phd		; 0B
	sec		; 38
	asl $1738.w		; 0E 38 17
	adc ($1C.b),Y		; 71 1C
	adc ($2E.b),Y		; 71 2E
	adc $38.b,S		; 63 38
	sbc $0B.b,S		; E3 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	rol $2F20.w		; 2E 20 2F
	and ($1C.b,X)		; 21 1C
	brk $5E.b		; 00 5E
	.db $42, $40		; 42 40
	adc ($00.b,X)		; 61 00
	adc ($80.b,X)		; 61 80
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E008.w		; E0 08 E0
	php		; 08
	beq   8.b		; F0 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bit $1CC6.w,X		; 3C C6 1C
	lsr $1C.b		; 46 1C
	lsr $3C.b		; 46 3C
	ror $3C.b		; 66 3C
	ror $1C.b		; 66 1C
	rol $0C.b		; 26 0C
	rol $08.b		; 26 08
	jsl $784078.l		; 22 78 40 78
	rti		; 40

	sec		; 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	asl $0D02.w,X		; 1E 02 0D
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
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
	brk $05.b		; 00 05
	brk $0F.b		; 00 0F
	ora [$0F.b]		; 07 0F
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	ora [$03.b]		; 07 03
	ora [$1B.b]		; 07 1B
	ora $FD13E9.l		; 0F E9 13 FD
	ply		; 7A
	inc $F8.b,X		; F6 F8
	pea $F0E0.w		; F4 E0 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora $707F00.l		; 0F 00 7F 70
	inc $FC60.w,X		; FE 60 FC
	brk $F8.b		; 00 F8
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	bra -128.b		; 80 80
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
	ora $1A02.w,Y		; 19 02 1A
	bit $0E.b,X		; 34 0E
	bit $3E06.w,X		; 3C 06 3E
	brk $4E.b		; 00 4E
	bmi  92.b		; 30 5C
	bmi  92.b		; 30 5C
	bmi  14.b		; 30 0E
	php		; 08
	tsb $0A08.w		; 0C 08 0A
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	php		; 08
	brk $08.b		; 00 08
	brk $DC.b		; 00 DC
	bmi  -4.b		; 30 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	php		; 08
	phx		; DA
	php		; 08
	eor $1F04.w,X		; 5D 04 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
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
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	stz $00.b		; 64 00
	stz $10.b		; 64 10
	bit $00.b,X		; 34 00
	bit $28.b,X		; 34 28
	asl $0638.w,X		; 1E 38 06
	rol $2E00.w,X		; 3E 00 2E
	bpl  28.b		; 10 1C
	tsb $3C.b		; 04 3C
	bit $2C.b		; 24 2C
	bit $1C.b		; 24 1C
	trb $04.b		; 14 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	phd		; 0B
	ora $0B.b		; 05 0B
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($17.b,S),Y		; 13 17
	and $1F1F2F.l		; 2F 2F 1F 1F
	and $0B0F17.l		; 2F 17 0F 0B
	ora [$06.b],Y		; 17 06
	ora #$0403.w		; 09 03 04
	ora ($01.b)		; 12 01
	bit $1803.w		; 2C 03 18
	ora [$2C.b]		; 07 2C
	ora $0E.b,S		; 03 0E
	ora ($17.b,X)		; 01 17
	brk $09.b		; 00 09
	brk $04.b		; 00 04
	brk $E7.b		; 00 E7
	jmp.w [$F8CF]		; DC CF F8
	sbc $F8.b,S		; E3 F8
	sbc ($FC.b,X)		; E1 FC
	cmp ($FF.b,X)		; C1 FF
	tya		; 98
	sbc [$7C.b]		; E7 7C
	sta $FE.b,S		; 83 FE
	brk $D4.b		; 00 D4
	ora $F7.b,X		; 15 F7
	bpl 111.b		; 10 6F
	dey		; 88
	sbc [$04.b],Y		; F7 04
	plx		; FA
	cop $E0.b		; 02 E0
	brk $98.b		; 00 98
	clc		; 18
	ora $F40C.w		; 0D 0C F4
	pha		; 48
	cmp ($6C.b)		; D2 6C
	eor ($6C.b)		; 52 6C
	ldy $58.b		; A4 58
	pha		; 48
	bcs -16.b		; B0 F0
	brk $78.b		; 00 78
	bra -68.b		; 80 BC
	rti		; 40

	dey		; 88
	jsr $20AC.w		; 20 AC 20
	sty $9880.w		; 8C 80 98
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi -40.b		; 30 D8
	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3F23.w		; 1C 23 3F
	rti		; 40

	adc $0000BE.l,X		; 7F BE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00.b,S		; 23 00
	rti		; 40

	brk $BE.b		; 00 BE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpx #$F000.w		; E0 00 F0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $9F.b		; 00 9F
	beq -58.b		; F0 C6
	beq -61.b		; F0 C3
	sed		; F8
	.db $82, $FF, $31		; 82 FF 31
	dec $07F8.w		; CE F8 07
	sbc $FE00.w,X		; FD 00 FE
	bra -17.b		; 80 EF
	jsr $11DF.w		; 20 DF 11
	sbc $04F408.l		; EF 08 F4 04
	cpy #$3000.w		; C0 00 30
	bmi  27.b		; 30 1B
	clc		; 18
	sta $A48C.w		; 8D 8C A4
	cld		; D8
	ldy $D8.b		; A4 D8
	pha		; 48
	bcs -112.b		; B0 90
	rts		; 60

	cpx #$F000.w		; E0 00 F0
	brk $78.b		; 00 78
	bra 124.b		; 80 7C
	brk $58.b		; 00 58
	rti		; 40

	clc		; 18
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bcs -80.b		; B0 B0
	bcc  16.b		; 90 10
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	cmp $1C.b		; C5 1C
	sbc $3E.b,S		; E3 3E
	sbc $3E.b,S		; E3 3E
	cmp [$3E.b]		; C7 3E
	cmp $388E3C.l		; CF 3C 8E 38
	stz $D831.w		; 9C 31 D8
	adc $EB.b,S		; 63 EB
	php		; 08
	cmp $04.b		; C5 04
	cmp $04.b		; C5 04
	sbc ($20.b,X)		; E1 20
	sbc $20.b,S		; E3 20
	sbc [$20.b]		; E7 20
	cmp $029E01.l		; CF 01 9E 02
	dec $7E00.w,X		; DE 00 7E
	brk $17.b		; 00 17
	sei		; 78
	trb $117F.w		; 1C 7F 11
	adc ($1E.b),Y		; 71 1E
	bvs  30.b		; 70 1E
	bvs  30.b		; 70 1E
	bmi  78.b		; 30 4E
	adc $280706.l		; 6F 06 07 28
	plp		; 28
	and $23.b,S		; 23 23
	rol $2F20.w		; 2E 20 2F
	jsr $202F.w		; 20 2F 20
	and $00F520.l		; 2F 20 F5 00
	inc $00.b,X		; F6 00
	cpx $F800.w		; EC 00 F8
	tsb $C400.w		; 0C 00 C4
	tya		; 98
	cpy $98.b		; C4 98
	cpy $9C.b		; C4 9C
	dec $70.b		; C6 70
	ply		; 7A
	bvs 120.b		; 70 78
	rts		; 60

	bvs   0.b		; 70 00
	brk $B8.b		; 00 B8
	bra  60.b		; 80 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $1E.b		; 00 1E
	stz $12.b		; 64 12
	mvp $C8,$3C		; 44 3C C8
	adc $C03BC0.l		; 6F C0 3B C0
	and $42.b,X		; 35 42
	ror $3F07.w,X		; 7E 07 3F
	ora [$38.b]		; 07 38
	jsr $0038.w		; 20 38 00
	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	.db $62, $46, $00		; 62 46 00
	asl A		; 0A
	asl $17.b,X		; 16 17
	ora $0F.b,S		; 03 0F
	adc $097F10.l,X		; 7F 10 7F 09
	sbc [$0F.b]		; E7 0F
	sbc $07.b,S		; E3 07
	sbc [$18.b]		; E7 18
	sbc $03FB0F.l		; EF 0F FB 03
	ldx $06C0.w,Y		; BE C0 06
	rol $01.b,X		; 36 01
	ora $5F43.w,Y		; 19 43 5F
	bra -97.b		; 80 9F
	jsr $063F.w		; 20 3F 06
	ora $800701.l,X		; 1F 01 07 80
	cmp ($FC.b,X)		; C1 FC
	sbc ($FA.b,S),Y		; F3 FA
	sbc [$F3.b],Y		; F7 F3
	sbc [$F6.b],Y		; F7 F6
	pea $F4F7.w		; F4 F7 F4
	sbc $FC68.w,X		; FD 68 FC
	txs		; 9A
	pei ($F3.b)		; D4 F3
	sbc ($F2.b)		; F2 F2
	sbc ($F1.b),Y		; F1 F1
	pea $E3FC.w		; F4 FC E3
	sed		; F8
	adc $F8.b,S		; 63 F8
	and $F8.b,S		; 23 F8
	sta ($FA.b,S),Y		; 93 FA
	eor ($F9.b),Y		; 51 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	ora ($81.b,X)		; 01 81
	sed		; F8
	sta $9C5E.w		; 8D 5E 9C
	stp		; DB
	clc		; 18
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	sta ($87.b,X)		; 81 87
	brk $1F.b		; 00 1F
	clc		; 18
	and $3C10.w,X		; 3D 10 3C
	bra -104.b		; 80 98
	jmp $7E20.w		; 4C 20 7E
	jsr $047E.w		; 20 7E 04
	tda		; 7B
	php		; 08
	adc $3F08.w,Y		; 79 08 3F
	brk $3F.b		; 00 3F
	brk $17.b		; 00 17
	brk $30.b		; 00 30
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	adc $18.b,S		; 63 18
	.db $62, $3C, $66		; 62 3C 66
	dec A		; 3A
	stz $12.b		; 64 12
	mvp $4C,$1A		; 44 1A 4C
	asl $C8.b,X		; 16 C8
	asl $C8.b,X		; 16 C8
	rol $3C22.w,X		; 3E 22 3C
	jsr $0018.w		; 20 18 00
	trb $7804.w		; 1C 04 78
	rti		; 40

	bvs  64.b		; 70 40
	sei		; 78
	pha		; 48
	bvs  64.b		; 70 40
	ora ($02.b,X)		; 01 02
	asl $01.b		; 06 01
	ora $0F.b,S		; 03 0F
	ora $170F07.l		; 0F 07 0F 17
	phd		; 0B
	ora [$03.b],Y		; 17 03
	ora $02271F.l,X		; 1F 1F 27 02
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	ora ($17.b,X)		; 01 17
	brk $17.b		; 00 17
	brk $1F.b		; 00 1F
	brk $25.b		; 00 25
	cop $FF.b		; 02 FF
	adc $FDFFFF.l,X		; 7F FF FF FD
	inc $FDFE.w,X		; FE FE FD
	sbc $EFFF.w,Y		; F9 FF EF
	sbc ($D3.b),Y		; F1 D3
	tay		; A8
	cmp $205FB8.l		; CF B8 5F 20
	sta $F80660.l,X		; 9F 60 06 F8
	cpy $FC30.w		; CC 30 FC
	brk $F0.b		; 00 F0
	brk $A1.b		; 00 A1
	bit $2AA9.w		; 2C A9 2A
	bvs -24.b		; 70 E8
	sei		; 78
	pea $78BC.w		; F4 BC 78
	jmp $F89CB8.l		; 5C B8 9C F8
	clv		; B8
	pei ($D8.b)		; D4 D8
	bra -24.b		; 80 E8
	bcc -24.b		; 90 E8
	brk $E4.b		; 00 E4
	bpl 112.b		; 10 70
	php		; 08
	bmi   8.b		; 30 08
	sei		; 78
	rti		; 40

	trb $40.b		; 14 40
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	sbc $86FB40.l,X		; FF 40 FB 86
	ldy $5F43.w,X		; BC 43 5F
	ldy #$60FF.w		; A0 FF 60
	sbc $FF72.w,X		; FD 72 FF
	rts		; 60

	adc [$4C.b],Y		; 77 4C
	brk $40.b		; 00 40
	asl $1F88.w		; 0E 88 1F
	jmp $2F2F0F.l		; 5C 0F 2F 2F
	adc $2CF537.l		; 6F 37 F5 2C
	cpx $D21E.w		; EC 1E D2
	rol $BFC0.w,X		; 3E C0 BF
	rti		; 40

	xce		; FB
	tsb $60FE.w		; 0C FE 60
	ldx $FE60.w,Y		; BE 60 FE
	brk $FC.b		; 00 FC
	rti		; 40

	beq -20.b		; F0 EC
	cpy $C4.b		; C4 C4
	jmp $0E4C.w		; 4C 4C 0E
	cop $6C.b		; 02 6C
	bit $0868.w		; 2C 68 08
	brk $00.b		; 00 00
	cli		; 58
	cli		; 58
	inx		; E8
	cpx #$1C07.w		; E0 07 1C
	ora $18.b,S		; 03 18
	ora $180E18.l		; 0F 18 0E 18
	ora [$31.b],Y		; 17 31
	asl $31.b,X		; 16 31
	trb $0E31.w		; 1C 31 0E
	and $0B.b,S		; 23 0B
	php		; 08
	ora $101708.l		; 0F 08 17 10
	ora [$10.b],Y		; 17 10
	asl $0F00.w		; 0E 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($3C.b,X)		; 01 3C
	jsr $6690.w		; 20 90 66
	brk $4C.b		; 00 4C
	bra -40.b		; 80 D8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jmp.w [$F844]		; DC 44 F8
	pha		; 48
	bmi  16.b		; 30 10
	ldy #$C0A0.w		; A0 A0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F30.w,X		; 1E 30 1F
	bmi  31.b		; 30 1F
	bmi  31.b		; 30 1F
	bmi  15.b		; 30 0F
	bmi  15.b		; 30 0F
	bmi  15.b		; 30 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl -100.b		; 10 9C
	dec $18.b		; C6 18
	.db $42, $1C		; 42 1C
	.db $42, $1E		; 42 1E
	eor $2E.b,S		; 43 2E
	adc $2C.b,S		; 63 2C
	adc ($2E.b,X)		; 61 2E
	adc ($16.b,X)		; 61 16
	adc ($38.b),Y		; 71 38
	brk $BE.b		; 00 BE
	cop $BE.b		; 02 BE
	cop $BC.b		; 02 BC
	brk $9C.b		; 00 9C
	brk $9E.b		; 00 9E
	brk $9F.b		; 00 9F
	ora ($AF.b,X)		; 01 AF
	and ($1D.b,X)		; 21 1D
	ora $07.b,S		; 03 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $08.b		; 00 08
	php		; 08
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $BE79DC.l,X		; FF DC 79 BE
	cmp ($3C.b,S),Y		; D3 3C
	sbc [$18.b]		; E7 18
	cmp $00DD00.l,X		; DF 00 DD 00
	cmp $BD00.w,X		; DD 00 BD
	brk $DC.b		; 00 DC
	jsr ($FE18.w,X)		; FC 18 FE
	bpl  -2.b		; 10 FE
	brk $1E.b		; 00 1E
	cpy #$C0EC.w		; C0 EC C0
	sep #$CC		; E2 CC
	inc $DE9C.w		; EE 9C DE
	ldy $DC21.w		; AC 21 DC
	brk $F6.b		; 00 F6
	brk $D6.b		; 00 D6
	brk $D6.b		; 00 D6
	brk $DA.b		; 00 DA
	brk $DA.b		; 00 DA
	brk $EA.b		; 00 EA
	brk $20.b		; 00 20
	bvs   0.b		; 70 00
	jsr $4840.w		; 20 40 48
	rti		; 40

	pla		; 68
	rti		; 40

	pla		; 68
	iny		; C8
	cpx $ECC8.w		; EC C8 EC
	cpx #$F8F4.w		; E0 F4 F8
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	cpy #$8060.w		; C0 60 80
	rts		; 60

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	and $3F5F5F.l		; 2F 5F 5F 3F
	and $1F2F5F.l,X		; 3F 5F 2F 1F
	ora [$2F.b],Y		; 17 2F
	tsb $0713.w		; 0C 13 07
	php		; 08
	ora $06.b,S		; 03 06
	eor $3006.w,Y		; 59 06 30
	ora $1D0659.l		; 0F 59 06 1D
	cop $2F.b		; 02 2F
	brk $13.b		; 00 13
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$6060.w		; E0 60 60
	bvs  96.b		; 70 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpy #$60F0.w		; C0 F0 60
	beq  96.b		; F0 60
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C0101.l		; 0F 01 01 0C
	ora ($19.b,X)		; 01 19
	tsb $0619.w		; 0C 19 06
	and ($09.b,S),Y		; 33 09
	jsl $13661D.l		; 22 1D 66 13
	mvp $01,$01		; 44 01 01
	asl $04.b		; 06 04
	asl $0708.w		; 0E 08 07
	ora ($1C.b,X)		; 01 1C
	bpl  30.b		; 10 1E
	cop $38.b		; 02 38
	jsr $0038.w		; 20 38 00
	cop $64.b		; 02 64
	tsb $0468.w		; 0C 68 04
	pla		; 68
	tsb $68.b		; 04 68
	mvp $7C,$38		; 44 38 7C
	brk $7C.b		; 00 7C
	brk $4C.b		; 00 4C
	jsr $2038.w		; 20 38 20
	bmi  32.b		; 30 20
	sec		; 38
	plp		; 28
	bmi  32.b		; 30 20
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $7B.b		; 00 7B
	bit $FF3E.w,X		; 3C 3E FF
	lda $7FFF7F.l,X		; BF 7F FF 7F
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $F900.w,X		; 3C 00 F9
	asl $7C.b		; 06 7C
	ora $7F.b,S		; 03 7F
	brk $FF.b		; 00 FF
	brk $1E.b		; 00 1E
	ora ($7B.b,X)		; 01 7B
	trb $3FFF.w		; 1C FF 3F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	inc $FFFF.w,X		; FE FF FF
	inc $FEFF.w,X		; FE FF FE
	ora ($00.b,X)		; 01 00
	tsb $1F10.w		; 0C 10 1F
	jsr $700F.w		; 20 0F 70
	phd		; 0B
	pea $38C7.w		; F4 C7 38
	ldx $7E50.w		; AE 50 7E
	bra  47.b		; 80 2F
	dec $9C4D.w,X		; DE 4D 9C
	wai		; CB
	clc		; 18
	cmp $00.b,S		; C3 00
	cmp $1ECF1C.l		; CF 1C CF 1E
	adc $F77F0F.l,X		; 7F 0F 7F F7
	sty $9E.b		; 84 9E
	tsb $3E.b		; 04 3E
	ora ($3D.b,X)		; 01 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3D.b,X)		; 01 3D
	asl $3E.b		; 06 3E
	ora [$8F.b]		; 07 8F
	adc [$F7.b],Y		; 77 F7
	sbc [$08.b],Y		; F7 08
	sbc $00FF08.l,X		; FF 08 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ldx $40.b		; A6 40
	bcs -64.b		; B0 C0
	ldy #$E380.w		; A0 80 E3
	xba		; EB
	cop $0A.b		; 02 0A
	cpx #$E6E0.w		; E0 E0 E6
	inc $86.b		; E6 86
	stx $00.b		; 86 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $D8.b		; 00 D8
	adc $4D00.w		; 6D 00 4D
	brk $4D.b		; 00 4D
	brk $CD.b		; 00 CD
	brk $CC.b		; 00 CC
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	brk $15.b		; 00 15
	adc ($24.b),Y		; 71 24
	ldx $04.b,Y		; B6 04
	ldx $05.b,Y		; B6 05
	lda [$45.b],Y		; B7 45
	adc [$44.b],Y		; 77 44
	adc [$74.b],Y		; 77 74
	adc [$00.b],Y		; 77 00
	brk $2E.b		; 00 2E
	jsr $00B3.w		; 20 B3 00
	stz $DE00.w,X		; 9E 00 DE
	brk $EC.b		; 00 EC
	brk $F8.b		; 00 F8
	tsb $E0.b		; 04 E0
	trb $7C80.w		; 1C 80 7C
	brk $FC.b		; 00 FC
	ldx #$8CEE.w		; A2 EE 8C
	cpx $7252.w		; EC 52 72
	jsr $A030.w		; 20 30 A0
	ldy #$8080.w		; A0 80 80
	clc		; 18
	clc		; 18
	stz $009C.w		; 9C 9C 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($F0.b,X)		; 01 F0
	inc A		; 1A
	cpx $0E.b		; E4 0E
	rts		; 60

	asl $8EF0.w		; 0E F0 8E
	sec		; 38
	stx $8630.w		; 8E 30 86
	bmi -124.b		; 30 84
	sed		; F8
	sty $00E4.w		; 8C E4 00
	beq   0.b		; F0 00
	pea $7804.w		; F4 04 78
	php		; 08
	beq -128.b		; F0 80
	jmp ($F804.w,X)		; 7C 04 F8
	bra 112.b		; 80 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	inx		; E8
	tay		; A8
	beq  -8.b		; F0 F8
	pea $7ABC.w		; F4 BC 7A
	inc $0D.b,X		; F6 0D
	lda [$4E.b],Y		; B7 4E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	brk $7A.b		; 00 7A
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $7F.b		; 00 7F
	dec $CEBD.w		; CE BD CE
	ldx $C9.b,Y		; B6 C9
	iny		; C8
	stx $E8.b,Y		; 96 E8
	bcc -104.b		; 90 98
	beq -72.b		; F0 B8
	bne -24.b		; D0 E8
	bpl  14.b		; 10 0E
	brk $0E.b		; 00 0E
	brk $09.b		; 00 09
	rti		; 40

	asl $20.b,X		; 16 20
	bpl  64.b		; 10 40
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	and $083514.l,X		; 3F 14 35 08
	phd		; 0B
	stz $2D.b,X		; 74 2D
	dey		; 88
	eor [$18.b],Y		; 57 18
	lda $3B.b		; A5 3B
	phk		; 4B
	adc [$93.b],Y		; 77 93
	sbc [$14.b]		; E7 14
	trb $00.b		; 14 00
	asl A		; 0A
	bmi  52.b		; 30 34
	bvs   2.b		; 70 02
	inx		; E8
	php		; 08
	bne  19.b		; D0 13
	lda ($27.b,X)		; A1 27
	eor ($4F.b,X)		; 41 4F
	sbc $FB0E.w,Y		; F9 0E FB
	cop $FD.b		; 02 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	.db $82, $7F, $02		; 82 7F 02
	cpx #$74E0.w		; E0 E0 74
	bvs  22.b		; 70 16
	bpl  98.b		; 10 62
	rts		; 60

	ply		; 7A
	sei		; 78
	sei		; 78
	sei		; 78
	sec		; 38
	tsx		; BA
	brk $82.b		; 00 82
	bne  32.b		; D0 20
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	asl $08.b		; 06 08
	ora $1A11.w		; 0D 11 1A
	and $34.b,S		; 23 34
	eor [$6F.b]		; 47 6F
	bra  89.b		; 80 59
	cpy $01.b		; C4 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	ora ($38.b,X)		; 01 38
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	asl $1C.b		; 06 1C
	ror $0F3E.w		; 6E 3E 0F
	ora $011F07.l,X		; 1F 07 1F 01
	ora ($00.b,S),Y		; 13 00
	ora $0B00.w,Y		; 19 00 0B
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	ora $060F0C.l		; 0F 0C 0F 06
	ora [$00.b]		; 07 00
	ora ($02.b,X)		; 01 02
	asl $0F09.w		; 0E 09 0F
	cop $06.b		; 02 06
	brk $01.b		; 00 01
	stp		; DB
	sbc [$EB.b]		; E7 EB
	ora $1B2BDF.l,X		; 1F DF 2B 1B
	ora $273F4F.l		; 0F 4F 3F 27
	asl $100F.w,X		; 1E 0F 10
	ora $00E708.l,X		; 1F 08 E7 00
	ora $002B00.l,X		; 1F 00 2B 00
	ora $003F00.l		; 0F 00 3F 00
	asl $1000.w,X		; 1E 00 10
	brk $0B.b		; 00 0B
	phd		; 0B
	sbc $CCFF.w,X		; FD FF CC
	sbc ($AF.b,S),Y		; F3 AF
	cmp ($93.b),Y		; D1 93
	inx		; E8
	lda $18FFD8.l		; AF D8 FF 18
	dec $E739.w		; CE 39 E7
	ora $F000FE.l,X		; 1F FE 00 F0
	brk $D0.b		; 00 D0
	brk $E1.b		; 00 E1
	tsb $0AC9.w		; 0C C9 0A
	ora [$00.b]		; 07 00
	stx $80.b		; 86 80
	cpy #$FFC0.w		; C0 C0 FF
	sbc [$EB.b],Y		; F7 EB
	sbc [$98.b],Y		; F7 98
	rtl		; 6B

	cpx $FB1C.w		; EC 1C FB
	ora [$EC.b]		; 07 EC
	ora $EF.b,S		; 03 EF
	brk $6F.b		; 00 6F
	brk $E3.b		; 00 E3
	sbc [$42.b],Y		; F7 42
	sbc [$08.b],Y		; F7 08
	adc $531F0C.l		; 6F 0C 1F 53
	eor [$40.b],Y		; 57 40
	eor ($C4.b,S),Y		; 53 C4
	pei ($46.b)		; D4 46
	dec $48.b,X		; D6 48
	dey		; 88
	jmp $649C.w		; 4C 9C 64
	jmp $7CC8E0.l		; 5C E0 C8 7C
	bra -36.b		; 80 DC
	jsr $00EE.w		; 20 EE 00
	sbc $00.b,S		; E3 00
	php		; 08
	ldy $BE0C.w,X		; BC 0C BE
	mvp $80,$DE		; 44 DE 80
	jmp.w [$8000]		; DC 00 80
	brk $20.b		; 00 20
	plp		; 28
	sec		; 38
	rti		; 40

	jmp $073016.l		; 5C 16 30 07
	bmi  15.b		; 30 0F
	clc		; 18
	ora $080318.l		; 0F 18 03 08
	ora [$0C.b]		; 07 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	and $101F20.l		; 2F 20 1F 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	dey		; 88
	jsr ($7C4C.w,X)		; FC 4C 7C
	iny		; C8
	ply		; 7A
	dey		; 88
	dec A		; 3A
	tay		; A8
	dec A		; 3A
	inx		; E8
	dec A		; 3A
	iny		; C8
	inc A		; 1A
	bne  26.b		; D0 1A
	mvn $90,$54		; 54 54 90
	bpl -108.b		; 10 94
	bpl -28.b		; 10 E4
	jsr $00C4.w		; 20 C4 00
	cpy $00.b		; C4 00
	pea $E410.w		; F4 10 E4
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $0C07.w		; 0C 07 0C
	ora $08.b,S		; 03 08
	asl $0F18.w		; 0E 18 0F
	ora $0000.w,Y		; 19 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	asl $00.b		; 06 00
	rts		; 60

	php		; 08
	bne  24.b		; D0 18
	ldy #$C030.w		; A0 30 C0
	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sed		; F8
	php		; 08
	cpx #$C000.w		; E0 00 C0
	brk $A0.b		; 00 A0
	jsr $40C0.w		; 20 C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora #$1300.w		; 09 00 13
	brk $1B.b		; 00 1B
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	asl $0D09.w		; 0E 09 0D
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	tsb $11.b		; 04 11
	asl $1833.w,X		; 1E 33 18
	and ($0C.b)		; 32 0C
	rol $08.b		; 26 08
	bit $18.b		; 24 18
	jmp ($1860.w)		; 6C 60 18
	sed		; F8
	brk $1F.b		; 00 1F
	ora ($0C.b),Y		; 11 0C
	brk $0E.b		; 00 0E
	cop $18.b		; 02 18
	brk $1C.b		; 00 1C
	tsb $10.b		; 04 10
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	clc		; 18
	asl $3E.b		; 06 3E
	brk $2E.b		; 00 2E
	bpl  44.b		; 10 2C
	clc		; 18
	sei		; 78
	php		; 08
	sei		; 78
	brk $5C.b		; 00 5C
	jsr $30DC.w		; 20 DC 30
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $FC20.w		; CC 20 FC
	brk $FC.b		; 00 FC
	cop $F4.b		; 02 F4
	cop $52.b		; 02 52
	ora #$075E.w		; 09 5E 07
	ora $000F00.l,X		; 1F 00 0F 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $0E00.w		; 0C 00 0E
	php		; 08
	ora ($01.b,X)		; 01 01
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
	jsr $A3C0.w		; 20 C0 A3
	cpy #$DBE5.w		; C0 E5 DB
	tad		; 5B
	sbc [$7F.b]		; E7 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C0FFFF.l,X		; FF FF FF C0
	brk $C0.b		; 00 C0
	brk $DB.b		; 00 DB
	brk $E7.b		; 00 E7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpy #$8080.w		; C0 80 80
	cpx #$C0E0.w		; E0 E0 C0
	cpx #$C0C0.w		; E0 C0 C0
	beq -16.b		; F0 F0
	inx		; E8
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra 112.b		; 80 70
	bra  40.b		; 80 28
	cpy #$7000.w		; C0 00 70
	rti		; 40

	iny		; C8
	clv		; B8
	stx $33F2.w		; 8E F2 33
	dec $E738.w		; CE 38 E7
	trb $86F9.w		; 1C F9 86
	inc $0081.w,X		; FE 81 00
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $4C.b		; 00 4C
	brk $17.b		; 00 17
	bpl  11.b		; 10 0B
	php		; 08
	ora $82.b,S		; 03 82
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	lda $09FE20.l,X		; BF 20 FE 09
	sbc $00008A.l,X		; FF 8A 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E900.w		; C0 00 E9
	php		; 08
	ror A		; 6A
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $180E.w		; 0E 0E 18
	clc		; 18
	bmi   0.b		; 30 00
	tda		; 7B
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FD.b,X)		; 01 FD
	ora $FD.b,S		; 03 FD
	ora $FB.b,S		; 03 FB
	ora [$3B.b]		; 07 3B
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $E1.b,S		; 03 E1
	sbc [$03.b]		; E7 03
	ora [$22.b]		; 07 22
	sbc $7E80BF.l		; EF BF 80 7E
	brk $FC.b		; 00 FC
	brk $F3.b		; 00 F3
	tsb $1EE1.w		; 0C E1 1E
	dec $3F.b		; C6 3F
	stx $70.b		; 86 70
	sta $6DE1.w		; 8D E1 6D
	ora $03F2.w		; 0D F2 03
	sed		; F8
	ora $F1.b,S		; 03 F1
	ora ($E4.b,X)		; 01 E4
	tsb $C8.b		; 04 C8
	php		; 08
	cmp $203E50.l,X		; DF 50 3E 20
	adc $00DF00.l,X		; 7F 00 DF 00
	stp		; DB
	brk $DB.b		; 00 DB
	brk $FE.b		; 00 FE
	ora ($3D.b,X)		; 01 3D
	cmp $87.b,S		; C3 87
	sbc $03.b,S		; E3 03
	cpy #$D454.w		; C0 54 D4
	sty $B4.b,X		; 94 B4
	sta ($B6.b)		; 92 B6
	bcc -75.b		; 90 B5
	bmi  51.b		; 30 33
	ora ($03.b,X)		; 01 03
	eor $43.b,S		; 43 43
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1C.b,S		; 03 1C
	and [$19.b]		; 27 19
	ror $EC13.w		; 6E 13 EC
	ora [$E8.b]		; 07 E8
	asl $5CB0.w		; 0E B0 5C
	sec		; 38
	cpy #$8030.w		; C0 30 80
	ora [$04.b]		; 07 04
	asl $1D08.w		; 0E 08 1D
	ora ($1A.b),Y		; 11 1A
	cop $14.b		; 02 14
	tsb $08.b		; 04 08
	php		; 08
	rti		; 40

	rti		; 40

	cpx #$7A80.w		; E0 80 7A
	jsr ($7CF2.w,X)		; FC F2 7C
	lsr $FC.b		; 46 FC
	cpy $E8FA.w		; CC FA E8
	pea $E0D0.w		; F4 D0 E0
	cpx #$0000.w		; E0 00 00
	cpy #$00FC.w		; C0 FC 00
	jmp ($FC00.w,X)		; 7C 00 FC
	brk $FA.b		; 00 FA
	brk $F4.b		; 00 F4
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$02.b]		; 07 02
	asl $0C01.w		; 0E 01 0C
	ora [$1C.b]		; 07 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora $080B0C.l		; 0F 0C 0B 08
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	ora $610F30.l,X		; 1F 30 0F 61
	bit $1861.w,X		; 3C 61 18
	cmp $50.b,S		; C3 50
	cmp [$00.b]		; C7 00
	asl $1017.w		; 0E 17 10
	ora $202F10.l,X		; 1F 10 2F 20
	rol $5F20.w,X		; 3E 20 5F
	eor ($7E.b,X)		; 41 7E
	.db $42, $BD		; 42 BD
	sta $FB.b		; 85 FB
	asl A		; 0A
	bne  28.b		; D0 1C
	sbc [$3F.b]		; E7 3F
	cpy $983F.w		; CC 3F 98
	ror $B0.b		; 66 B0
	jmp $F800.w		; 4C 00 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	sbc [$04.b]		; E7 04
	iny		; C8
	php		; 08
	cmp ($12.b)		; D2 12
	jmp.w [$B844]		; DC 44 B8
	php		; 08
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $1C05.w		; 0C 05 1C
	ora #$1538.w		; 09 38 15
	bvs  15.b		; 70 0F
	sbc ($1E.b,X)		; E1 1E
	cmp $00.b,S		; C3 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3E.b		; 00 3E
	jsr $417D.w		; 20 7D 41
	sbc $FFFFFF.l,X		; FF FF FF FF
	and [$FF.b],Y		; 37 FF
	stp		; DB
	and [$97.b]		; 27 97
	tda		; 7B
	and [$FB.b],Y		; 37 FB
	eor [$C1.b],Y		; 57 C1
	ldx $FF83.w,Y		; BE 83 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $27.b		; 00 27
	brk $43.b		; 00 43
	brk $93.b		; 00 93
	clc		; 18
	and ($08.b,X)		; 21 08
	adc ($10.b,X)		; 61 10
	sed		; F8
	pea $F8FE.w		; F4 FE F8
	jsr ($FFFF.w,X)		; FC FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FFFCFE.l,X		; FF FE FC FF
	inc $14FD.w,X		; FE FD 14
	cpx #$7088.w		; E0 88 70
	cmp [$38.b]		; C7 38
	inc $18.b		; E6 18
	inc $18.b		; E6 18
	dec $28.b,X		; D6 28
	sbc $00FD00.l,X		; FF 00 FD 00
	sbc $06F980.l,X		; FF 80 F9 06
	cmp $70BF37.l		; CF 37 BF 70
	adc $C87FF8.l,X		; 7F F8 7F C8
	adc $00FF80.l,X		; 7F 80 FF 00
	brk $9E.b		; 00 9E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	and ($FB.b,S),Y		; 33 FB
	ora $CB.b,S		; 03 CB
	ora $83.b,S		; 03 83
	tsa		; 3B
	tsa		; 3B
	sbc $14EB6A.l,X		; FF 6A EB 14
	inc $FD81.w,X		; FE 81 FD
	eor $FD.b,S		; 43 FD
	ora $FF.b,S		; 03 FF
	ora $FB.b,S		; 03 FB
	ora [$FB.b]		; 07 FB
	ora [$00.b]		; 07 00
	asl A		; 0A
	brk $94.b		; 00 94
	ora ($A8.b,X)		; 01 A8
	eor $40.b,S		; 43 40
	phd		; 0B
	php		; 08
	stp		; DB
	cld		; D8
	cmp [$D0.b],Y		; D7 D0
	cmp [$D0.b],Y		; D7 D0
	jmp ($6100.w,X)		; 7C 00 61
	brk $67.b		; 00 67
	brk $7E.b		; 00 7E
	brk $78.b		; 00 78
	brk $31.b		; 00 31
	cpy #$C027.w		; C0 27 C0
	eor $0704C0.l,X		; 5F C0 04 07
	and ($3F.b,X)		; 21 3F
	bit $3C.b		; 24 3C
	sec		; 38
	and $0700.w,Y		; 39 00 07
	ora ($1F.b),Y		; 11 1F
	eor [$5F.b]		; 47 5F
	ldx $779E.w,Y		; BE 9E 77
	asl $1CEF.w		; 0E EF 1C
	cmp $7ABD38.l,X		; DF 38 BD 7A
	sbc [$7A.b],Y		; F7 7A
	xce		; FB
	ror $FF.b,X		; 76 FF
	asl $7F.b		; 06 7F
	ora $44.b,S		; 03 44
	dec $3D00.w,X		; DE 00 3D
	bpl 122.b		; 10 7A
	bmi 123.b		; 30 7B
	rts		; 60

	adc $027762.l,X		; 7F 62 77 02
	ora [$53.b]		; 07 53
	cmp ($1A.b,S),Y		; D3 1A
	cmp $34.b,S		; C3 34
	cmp [$A8.b]		; C7 A8
	stx $1850.w		; 8E 50 18
	cpx #$4030.w		; E0 30 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	lda $7A81.w,X		; BD 81 7A
	.db $42, $70		; 42 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $7D.b		; 00 7D
	cop $7B.b		; 02 7B
	asl $FB.b		; 06 FB
	tsb $FD.b		; 04 FD
	cop $EF.b		; 02 EF
	brk $E7.b		; 00 E7
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	asl $04.b		; 06 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	php		; 08
	cpy #$A080.w		; C0 80 A0
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $03FC00.l,X		; FF 00 FC 03
	xce		; FB
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	bra  -3.b		; 80 FD
	bra 123.b		; 80 7B
	tda		; 7B
	sed		; F8
	xce		; FB
	beq  -9.b		; F0 F7
	php		; 08
	php		; 08
	asl $3E5E.w,X		; 1E 5E 3E
	ldx $BD3D.w,Y		; BE 3D BD
	clc		; 18
	tya		; 98
	xce		; FB
	ora [$FD.b]		; 07 FD
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($E0.b,X)		; 01 E0
	ora ($C0.b,X)		; 01 C0
	brk $B7.b		; 00 B7
	bcs   3.b		; B0 03
	brk $01.b		; 00 01
	brk $38.b		; 00 38
	sec		; 38
	cld		; D8
	cld		; D8
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$0000.w		; C0 00 00
	bit $7887.w,X		; 3C 87 78
	ora $E01EF0.l		; 0F F0 1E E0
	sec		; 38
	cpy #$8070.w		; C0 70 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	plx		; FA
	.db $82, $F4, $04		; 82 F4 04
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	bra -128.b		; 80 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	asl $0C01.w		; 0E 01 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	cmp [$0C.b],Y		; D7 0C
	sta $001E04.l,X		; 9F 04 1E 00
	asl $1C00.w,X		; 1E 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	php		; 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $823382.l,X		; 7F 82 33 82
	ora #$09FE.w		; 09 FE 09
	adc ($0B.b)		; 72 0B
	bit $0B.b,X		; 34 0B
	ora [$04.b],Y		; 17 04
	phd		; 0B
	ora $04.b,S		; 03 04
	jsr ($FC80.w,X)		; FC 80 FC
	cpy #$7C78.w		; C0 78 7C
	bmi  52.b		; 30 34
	bpl  24.b		; 10 18
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	jmp ($7C11.w,X)		; 7C 11 7C
	ora ($7C.b),Y		; 11 7C
	inc A		; 1A
	rol $3610.w,X		; 3E 10 36
	ora $1827.w		; 0D 27 18
	and ($08.b,S),Y		; 33 08
	and ($73.b,S),Y		; 33 73
	bvs  39.b		; 70 27
	bit $2B.b		; 24 2B
	plp		; 28
	ora ($00.b,X)		; 01 00
	ora $001806.l		; 0F 06 18 00
	ora $1E01.w		; 0D 01 1E
	ora ($80.b)		; 12 80
	rts		; 60

	cpy #$A070.w		; C0 70 A0
	sec		; 38
	bne  24.b		; D0 18
	cpx #$780C.w		; E0 0C 78
	tsb $0670.w		; 0C 70 06
	ldy $C086.w,X		; BC 86 C0
	rti		; 40

	ldy #$D020.w		; A0 20 D0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	asl $0F.b		; 06 0F
	ora $070F0F.l		; 0F 0F 0F 07
	ora [$03.b]		; 07 03
	ora $04.b,S		; 03 04
	tsb $07.b		; 04 07
	ora [$07.b]		; 07 07
	ora [$FF.b]		; 07 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora $BF.b,S		; 03 BF
	rti		; 40

	cmp $60DF60.l,X		; DF 60 DF 60
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $7979.w,Y		; 79 79 79
	adc $BBB8.w,Y		; 79 B8 BB
	brk $40.b		; 00 40
	ora $7F1F7F.l,X		; 1F 7F 1F 7F
	asl $0E1E.w,X		; 1E 1E 0E
	asl $522C.w		; 0E 2C 52
	asl $71.b		; 06 71
	phd		; 0B
	sei		; 78
	ora $38.b,S		; 03 38
	ora $3C.b		; 05 3C
	ora ($1C.b,X)		; 01 1C
	cop $1E.b		; 02 1E
	brk $1E.b		; 00 1E
	trb $1E10.w		; 1C 10 1E
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora #$0B08.w		; 09 08 0B
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpx #$C030.w		; E0 30 C0
	bpl -16.b		; 10 F0
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $0A.b		; 00 0A
	and ($05.b,S),Y		; 33 05
	asl $0B.b,X		; 16 0B
	trb $1807.w		; 1C 07 18
	phd		; 0B
	bpl   9.b		; 10 09
	bpl  30.b		; 10 1E
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	ora ($0A.b),Y		; 11 0A
	cop $05.b		; 02 05
	ora $09.b		; 05 09
	ora #$0602.w		; 09 02 06
	ora #$0E0F.w		; 09 0F 0E
	ora $FF0101.l		; 0F 01 01 FF
	brk $B9.b		; 00 B9
	brk $99.b		; 00 99
	brk $CD.b		; 00 CD
	brk $CC.b		; 00 CC
	brk $E6.b		; 00 E6
	brk $7E.b		; 00 7E
	brk $F7.b		; 00 F7
	sec		; 38
	asl $A80E.w		; 0E 0E A8
	inc $EE88.w		; EE 88 EE
	cmp $F7.b		; C5 F7
	cpy #$62F3.w		; C0 F3 62
	tda		; 7B
	brk $81.b		; 00 81
	lda ($BD.b),Y		; B1 BD
	ora $1C.b,S		; 03 1C
	ora ($0C.b,S),Y		; 13 0C
	and $46.b,X		; 35 46
	eor $B3A6.w,Y		; 59 A6 B3
	adc $7A60BF.l		; 6F BF 60 7A
	lda $BF7F.w,X		; BD 7F BF
	ora $0C0F0C.l		; 0F 0C 0F 0C
	eor $0C.b		; 45 0C
	lda ($04.b,X)		; A1 04
	rts		; 60

	brk $60.b		; 00 60
	brk $BD.b		; 00 BD
	brk $BF.b		; 00 BF
	brk $A7.b		; 00 A7
	and $8B37FF.l,X		; 3F FF 37 8B
	and [$F7.b],Y		; 37 F7
	ora $7FBFFF.l		; 0F FF BF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2700CF.l,X		; FF CF 00 27
	ldy #$6007.w		; A0 07 60
	ora $003F00.l		; 0F 00 3F 00
	sbc $01FE00.l,X		; FF 00 FE 01
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($DE.b,S),Y		; 13 DE
	jsr $1CFE.w		; 20 FE 1C
	dec $7E20.w,X		; DE 20 7E
	tya		; 98
	tsx		; BA
	cpy $9A.b		; C4 9A
	jsr ($FCF2.w,X)		; FC F2 FC
	tsb $0040.w		; 0C 40 00
	jsr $5C0C.w		; 20 0C 5C
	brk $20.b		; 00 20
	dey		; 88
	clc		; 18
	cpy $00.b		; C4 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $EC.b		; 00 EC
	bmi  -4.b		; 30 FC
	bpl  -4.b		; 10 FC
	brk $4C.b		; 00 4C
	bpl 100.b		; 10 64
	php		; 08
	stz $00.b,X		; 74 00
	rol $08.b,X		; 36 08
	and $105000.l,X		; 3F 00 50 10
	jsr $0000.w		; 20 00 00
	brk $30.b		; 00 30
	bpl  56.b		; 10 38
	php		; 08
	clc		; 18
	brk $18.b		; 00 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$0020.w		; C0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	cpy #$C090.w		; C0 90 C0
	bcc  64.b		; 90 40
	rts		; 60

	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$4040.w		; C0 40 40
	rts		; 60

	rts		; 60

	jsr $2020.w		; 20 20 20
	ldy #$A020.w		; A0 20 A0
	asl $0C13.w		; 0E 13 0C
	ora ($07.b),Y		; 11 07
	ora ($0E.b),Y		; 11 0E
	clc		; 18
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	tsb $0F00.w		; 0C 00 0F
	ora ($0E.b,X)		; 01 0E
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	sec		; 38
	sta $5E.b,S		; 83 5E
	cmp $1C.b,S		; C3 1C
	cmp ($2F.b,X)		; C1 2F
	sbc ($8E.b,X)		; E1 8E
	cpx #$F096.w		; E0 96 F0
	stx $F0.b		; 86 F0
	cmp $82FEF8.l		; CF F8 FE 82
	bit $7F00.w,X		; 3C 00 7F
	eor ($9E.b,X)		; 41 9E
	bra  63.b		; 80 3F
	jsr $000F.w		; 20 0F 00
	eor $000050.l,X		; 5F 50 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $003F00.l		; 0F 00 3F 00
	adc $067900.l,X		; 7F 00 79 06
	jsl $31051F.l		; 22 1F 05 31
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1E0C.w		; 0C 0C 1E
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $1CE300.l,X		; FF 00 E3 1C
	dec $BF3F.w,X		; DE 3F BF
	adc $2F9F6F.l,X		; 7F 6F 9F 2F
	cmp $9E9090.l,X		; DF 90 90 9E
	stz $8383.w,X		; 9E 83 83
	trb $3F00.w		; 1C 00 3F
	brk $7F.b		; 00 7F
	brk $9F.b		; 00 9F
	brk $5F.b		; 00 5F
	brk $01.b		; 00 01
	ora $000F00.l		; 0F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $0C.b,S		; 03 0C
	tsb $0505.w		; 0C 05 05
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	rts		; 60

	php		; 08
	sei		; 78
	tsb $84B0.w		; 0C B0 84
	bit $5884.w,X		; 3C 84 58
.INDEX 16
	rep #$1C		; C2 1C
.ACCU 16
	rep #$2E		; C2 2E
	sbc $0C.b,S		; E3 0C
	sbc ($F8.b,X)		; E1 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($F804.w,X)		; 7C 04 F8
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	.db $42, $9C		; 42 9C
	bra -66.b		; 80 BE
	ldy #$0031.w		; A0 31 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc ($00.b,S),Y		; F3 00
	cmp $70EF60.l,X		; DF 60 EF 70
	adc [$38.b],Y		; 77 38
	and $1E1000.l,X		; 3F 00 10 1E
	eor $00005F.l,X		; 5F 5F 00 00
	sta $8F.b,S		; 83 8F
	mvp $60,$74		; 44 74 60
	sei		; 78
	ora ($39.b,X)		; 01 39
	ora ($05.b,X)		; 01 05
	xce		; FB
	bit $3EFD.w,X		; 3C FD 3E
	inc $DF1F.w		; EE 1F DF
	adc $F7.b,S		; 63 F7
	sbc $80FF.w,Y		; F9 FF 80
	sbc $1C.b,S		; E3 1C
	sbc $380E.w,X		; FD 0E 38
	rol $BF8C.w,X		; 3E 8C BF
	brk $1F.b		; 00 1F
	ora ($73.b,X)		; 01 73
	cpx #$80FD.w		; E0 FD 80
	plx		; FA
	bra -97.b		; 80 9F
	cpy #$53CF.w		; C0 CF 53
	and $191F23.l,X		; 3F 23 1F 19
	ora $07170C.l		; 0F 0C 17 07
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $001700.l		; 0F 00 17 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FDFE.w,X		; FE FE FD
	tsx		; BA
	jmp ($C438.w,X)		; 7C 38 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	and [$E1.b]		; 27 E1
	asl $3CC2.w,X		; 1E C2 3C
	sbc $7C00.w,X		; FD 00 7C
	brk $C4.b		; 00 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $3C.b		; 00 3C
	cpy #$F0CE.w		; C0 CE F0
	inc $F8.b,X		; F6 F8
	sbc $00FE71.l,X		; FF 71 FE 00
	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F8C0.w		; E0 C0 F8
	bvs  -8.b		; 70 F8
	brk $70.b		; 00 70
	ora $80.b,S		; 03 80
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $13.b		; 00 13
	tsb $040B.w		; 0C 0B 04
	phd		; 0B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $0404.w		; 0C 04 04
	tsb $04.b		; 04 04
	ldx $BCC1.w,Y		; BE C1 BC
	cmp $FD.b,S		; C3 FD
	ora $DB.b,S		; 03 DB
	ror $DB.b		; 66 DB
	stz $F6.b		; 64 F6
	pha		; 48
	sbc $91FC49.l,X		; FF 49 FC 91
	brk $E0.b		; 00 E0
	ora ($F1.b,X)		; 01 F1
	cop $F2.b		; 02 F2
	ora ($F0.b,X)		; 01 F0
	ora [$74.b]		; 07 74
	ora [$60.b]		; 07 60
	asl $60.b		; 06 60
	stx $FB80.w		; 8E 80 FB
	jsr ($FCF0.w,X)		; FC F0 FC
	sed		; F8
	pea $F8F4.w		; F4 F4 F8
	plx		; FA
	jsr ($FCFE.w,X)		; FC FE FC
	inc $F4FC.w,X		; FE FC F4
	plx		; FA
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F4.b		; 00 F4
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $0C.b		; 00 0C
	beq 122.b		; F0 7A
	bra -80.b		; 80 B0
	iny		; C8
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	cpy #$40BA.w		; C0 BA 40
	tyx		; BB
	rti		; 40

	adc $187710.l		; 6F 10 77 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	rti		; 40

	rti		; 40

	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($1C.b,X)		; 01 1C
	ora [$30.b]		; 07 30
	asl $3CE3.w		; 0E E3 3C
	sta [$78.b]		; 87 78
	ora $001FF1.l		; 0F F1 1F 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $1F.b		; 04 1F
	bpl  61.b		; 10 3D
	and ($FB.b,X)		; 21 FB
	sta $F6.b,S		; 83 F6
	asl $E8.b		; 06 E8
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	ora $F0.b,S		; 03 F0
	and $07E680.l,X		; 3F 80 E6 07
	bra  63.b		; 80 3F
	bra  -1.b		; 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	adc $80FF70.l,X		; 7F 70 FF 80
	sbc $F801.w,Y		; F9 01 F8
	sec		; 38
	adc [$67.b]		; 67 67
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	and $01F1C0.l,X		; 3F C0 F1 01
	tsb $000F.w		; 0C 0F 00
	sbc $BEF80B.l,X		; FF 0B F8 BE
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cpy #$00FE.w		; C0 FE 00
	sbc ($03.b,S),Y		; F3 03
	cpy #$37C0.w		; C0 C0 37
	bmi 127.b		; 30 7F
	brk $3D.b		; 00 3D
	.db $42, $53		; 42 53
	bit $37.b		; 24 37
	pha		; 48
	adc $8C7F18.l		; 6F 18 7F 8C
	plb		; AB
	mvn $AC,$53		; 54 53 AC
	.db $42, $3D		; 42 3D
	eor ($00.b,X)		; 41 00
	and $08.b,S		; 23 08
	eor [$08.b]		; 47 08
	asl $00.b		; 06 00
	bra   1.b		; 80 01
	bvc   0.b		; 50 00
	ldy $3D00.w		; AC 00 3D
	brk $F3.b		; 00 F3
	trb $1EF9.w		; 1C F9 1E
	plx		; FA
	ora $39F6.w,X		; 1D F6 39
	pla		; 68
	adc [$55.b],Y		; 77 55
	lda $5FBF4E.l		; AF 4E BF 5F
	lda $E000E0.l,X		; BF E0 00 E0
	brk $E1.b		; 00 E1
	brk $41.b		; 00 41
	bra  71.b		; 80 47
	cpy #$800F.w		; C0 0F 80
	lda $00BF00.l,X		; BF 00 BF 00
	cpy $D026.w		; CC 26 D0
	bit $B8.b		; 24 B8
	jmp ($48B0.w)		; 6C B0 48
	bvs -56.b		; 70 C8
	cpx #$7088.w		; E0 88 70
	clc		; 18
	bra -112.b		; 80 90
	clc		; 18
	brk $3C.b		; 00 3C
	bit $10.b		; 24 10
	brk $78.b		; 00 78
	pha		; 48
	bcs -128.b		; B0 80
	bvs   0.b		; 70 00
	cpx #$7000.w		; E0 00 70
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($1B.b,X)		; 01 1B
	ora $0D1F.w		; 0D 1F 0D
	asl $0F09.w,X		; 1E 09 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b		; 05 01
	ora $0D09.w		; 0D 09 0D
	php		; 08
	ora #$0606.w		; 09 06 06
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003400.l,X		; 1F 00 34 00
	bit $00.b,X		; 34 00
	adc $00.b,X		; 75 00
	sbc $00.b,X		; F5 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	bpl  27.b		; 10 1B
	bmi  59.b		; 30 3B
	jsr $202A.w		; 20 2A 20
	rol A		; 2A
	and #$FF29.w		; 29 29 FF
	brk $FF.b		; 00 FF
	brk $70.b		; 00 70
	cmp $DFE3DF.l		; CF DF E3 DF
	sbc $EDDF.w		; ED DF ED
	inc $76F5.w		; EE F5 76
	sbc $2929.w,Y		; F9 29 29
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	sta $E3.b,S		; 83 E3
	sta $88ED.w		; 8D ED 88
	sbc $F500.w		; ED 00 F5
	jsr $E7F9.w		; 20 F9 E7
	brk $DF.b		; 00 DF
	brk $FB.b		; 00 FB
	brk $E1.b		; 00 E1
	brk $C7.b		; 00 C7
	brk $9E.b		; 00 9E
	brk $F9.b		; 00 F9
	brk $E7.b		; 00 E7
	brk $A7.b		; 00 A7
	lda $637858.l,X		; BF 58 78 63
	adc [$41.b]		; 67 41
	eor $123C04.l,X		; 5F 04 3C 12
	adc ($49.b,S),Y		; 73 49
	eor $A43E26.l		; 4F 26 3E A4
	asl $88.b		; 06 88
	tsb $5C90.w		; 0C 90 5C
	cpx #$C038.w		; E0 38 C0
	bmi  96.b		; 30 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	brk $74.b		; 00 74
	tsb $68.b		; 04 68
	pha		; 48
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $01F800.l,X		; FF 00 F8 01
	cmp [$00.b]		; C7 00
	ror $6F99.w,X		; 7E 99 6F
	bcc 124.b		; 90 7C
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($38.b,X)		; 01 38
	brk $01.b		; 00 01
	ora ($80.b,X)		; 01 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	bmi -81.b		; 30 AF
	rts		; 60

	dec $30.b,X		; D6 30
	jmp ($8080.w,X)		; 7C 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  80.b		; 30 50
	rti		; 40

	plp		; 28
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
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
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $17.b		; 04 17
	tsb $0C17.w		; 0C 17 0C
	ora $093705.l		; 0F 05 37 09
	rts		; 60

	ora $010101.l,X		; 1F 01 01 01
	ora ($05.b,X)		; 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($0C.b,X)		; 01 0C
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	clc		; 18
	sbc [$10.b]		; E7 10
	sbc ($00.b,S),Y		; F3 00
	cmp ($09.b),Y		; D1 09
	stz $9E03.w		; 9C 03 9E
	ora ($3B.b,X)		; 01 3B
	brk $71.b		; 00 71
	brk $0F.b		; 00 0F
	php		; 08
	ora $000F10.l,X		; 1F 10 0F 00
	lsr $70.b,X		; 56 70
	ora ($71.b),Y		; 11 71
	sty $F4.b,X		; 94 F4
	rol A		; 2A
	inc $DF51.w		; EE 51 DF
	sbc $3E.b,S		; E3 3E
	cmp [$7C.b]		; C7 7C
	sta $F01FF8.l		; 8F F8 1F F0
	rol $7DE0.w,X		; 3E E0 7D
	cmp ($BA.b,X)		; C1 BA
	ora $B0.b,S		; 03 B0
	ora $D1.b,S		; 03 D1
	bpl -93.b		; 10 A3
	jsr $4047.w		; 20 47 40
	sta $001F80.l		; 8F 80 1F 00
	rol $7D00.w,X		; 3E 00 7D
	ora ($7E.b,X)		; 01 7E
	cop $1F.b		; 02 1F
	cpx #$C07F.w		; E0 7F C0
	sed		; F8
	bra -25.b		; 80 E7
	ora [$D0.b]		; 07 D0
	ora $4038A0.l,X		; 1F A0 38 40
	bvs -128.b		; 70 80
	cpx #$809F.w		; E0 9F 80
	and $007F00.l,X		; 3F 00 7F 00
	sed		; F8
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	sbc ($01.b),Y		; F1 01
	sty $600F.w		; 8C 0F 60
	adc $00F800.l,X		; 7F 00 F8 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F300.w,X		; FE 00 F3
	ora $98.b,S		; 03 98
	clc		; 18
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ror $9F6F.w,X		; 7E 6F 9F
	and ($4F.b)		; 32 4F
	ora $0D0010.l		; 0F 10 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $9300.w,X		; 7E 00 93
	tsb $024D.w		; 0C 4D 02
	bpl   0.b		; 10 00
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	sbc $F9FFFF.l,X		; FF FF FF F9
	sbc $89F976.l,X		; FF 76 F9 89
	adc [$60.b],Y		; 77 60
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	jsr $E817.w		; 20 17 E8
	bit #$7770.w		; 89 70 77
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	jsr ($0E0F.w,X)		; FC 0F 0E
	sbc ($FE.b,X)		; E1 FE
	brk $FF.b		; 00 FF
	rol $E7.b		; 26 E7
	tya		; 98
	ora $007E60.l,X		; 1F 60 7E 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $1C.b		; 00 1C
	trb $0000.w		; 1C 00 00
	cmp $E6C1.w,Y		; D9 C1 E6
	asl $98.b		; 06 98
	clc		; 18
	bra  -8.b		; 80 F8
	brk $E0.b		; 00 E0
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
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $010F00.l		; 0F 00 0F 01
	asl $0F01.w		; 0E 01 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $04.b		; 06 04
	ora $04.b		; 05 04
	ora $00.b		; 05 00
	brk $04.b		; 00 04
	tsb $FF.b		; 04 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $7F.b,S		; 03 7F
	.db $82, $7F, $80		; 82 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $2101.w,X		; FE 01 21
	and $99.b,S		; 23 99
	txy		; 9B
	and $3C3F.w,X		; 3D 3F 3C
	ldx $8C0C.w,Y		; BE 0C 8C
	stz $74.b,X		; 74 74
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	cmp $E0DFE0.l,X		; DF E0 DF E0
	sbc $00FC00.l,X		; FF 00 FC 00
	cld		; D8
	jsr $70CD.w		; 20 CD 70
	adc $90CBB0.l		; 6F B0 CB 90
	sta $EB.b,S		; 83 EB
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	and $27.b		; 25 27
	rep #$82		; C2 82
	adc $FF19.w,Y		; 79 19 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	dec $0000.w		; CE 00 00
	adc [$77.b],Y		; 77 77
	bpl  16.b		; 10 10
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FC.b,X)		; 01 FC
	ora $F9.b,S		; 03 F9
	asl $7B.b		; 06 7B
	sty $F2.b		; 84 F2
	sta $89F2.w		; 8D F2 89
	xce		; FB
	cpy #$9E9E.w		; C0 9E 9E
	stz $A89D.w		; 9C 9D A8
	plb		; AB
	jsr $3026.w		; 20 26 30
	bit $20.b,X		; 34 20
	bit $2C20.w		; 2C 20 2C
	brk $04.b		; 00 04
	ror $0F.b,X		; 76 0F
	cmp $BF36.w,Y		; D9 36 BF
	jmp $B07F.w		; 4C 7F B0
	lda $E0FEC0.l,X		; BF C0 FE E0
	inc $ECF0.w		; EE F0 EC
	beq   0.b		; F0 00
	cpx #$B010.w		; E0 10 B0
	tsb $B04C.w		; 0C 4C B0
	bmi -64.b		; 30 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $D4.b		; 00 D4
	sbc #$E9DC.w		; E9 DC E9
	xce		; FB
	jsr ($FEFD.w,X)		; FC FD FE
	jsr ($F4F9.w,X)		; FC F9 F4
	sed		; F8
	clv		; B8
	stz $70.b,X		; 74 70
	dey		; 88
	sbc #$E900.w		; E9 00 E9
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	bra  41.b		; 80 29
	bne -104.b		; D0 98
	rts		; 60

	stz $00.b,X		; 74 00
	dey		; 88
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $06.b		; 05 06
	ora ($04.b,X)		; 01 04
	phd		; 0B
	phd		; 0B
	ora [$0B.b],Y		; 17 0B
	ora [$0F.b],Y		; 17 0F
	ora [$0B.b]		; 07 0B
	asl $02.b,X		; 16 02
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	brk $15.b		; 00 15
	cop $15.b		; 02 15
	cop $03.b		; 02 03
	tsb $16.b		; 04 16
	brk $20.b		; 00 20
	bvc -38.b		; 50 DA
	and $3D.b		; 25 3D
.INDEX 16
	rep #$57		; C2 57
	tay		; A8
	and $1DDC.w,Y		; 39 DC 1D
	sbc ($FE.b)		; F2 FE
	ora ($7F.b,X)		; 01 7F
	bra  80.b		; 80 50
	brk $25.b		; 00 25
	brk $C2.b		; 00 C2
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	asl $CC.b		; 06 CC
	brk $0E.b		; 00 0E
	brk $87.b		; 00 87
	bpl -25.b		; 10 E7
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0FFF00.l,X		; FF 00 FF 0F
	adc $DAC287.l,X		; 7F 87 C2 DA
	cpx #$EDE0.w		; E0 E0 ED
	sbc $EEEE.w		; ED EE EE
	dec $3CDE.w,X		; DE DE 3C
	bit $0F00.w,X		; 3C 00 0F
	ora [$07.b]		; 07 07
	bvs   0.b		; 70 00
	sed		; F8
	bvs -20.b		; 70 EC
	bmi  -4.b		; 30 FC
	brk $BC.b		; 00 BC
	sei		; 78
	tda		; 7B
	jsr ($FCFF.w,X)		; FC FF FC
	cmp [$F8.b]		; C7 F8
	brk $00.b		; 00 00
	rts		; 60

	bvs -128.b		; 70 80
	clv		; B8
	bra -128.b		; 80 80
	sec		; 38
	sei		; 78
	sec		; 38
	jsr ($FC00.w,X)		; FC 00 FC
	sta ($F9.b,X)		; 81 F9
	adc $7FBFBF.l,X		; 7F BF BF 7F
	jsr ($FF7F.w,X)		; FC 7F FF
	jmp ($BF5E.w,X)		; 7C 5E BF
	tsa		; 3B
	jmp $0804.w		; 4C 04 08
	tsb $A713.w		; 0C 13 A7
	clc		; 18
	eor $205F30.l		; 4F 30 5F 20
	jmp ($BF10.w)		; 6C 10 BF
	brk $4C.b		; 00 4C
	brk $08.b		; 00 08
	brk $13.b		; 00 13
	brk $F6.b		; 00 F6
	sed		; F8
	xba		; EB
	pea $EAFD.w		; F4 FD EA
	and $05FECA.l,X		; 3F CA FE 05
	sbc $7D07.w,X		; FD 07 7D
	ora $1E.b,S		; 03 1E
	ora ($F8.b,X)		; 01 F8
	ora $F0.b,S		; 03 F0
	ora $E8.b		; 05 E8
	phd		; 0B
	dex		; CA
	asl A		; 0A
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$8040.w		; C0 40 80
	bmi -64.b		; 30 C0
	bpl -32.b		; 10 E0
	clc		; 18
	cpx #$708C.w		; E0 8C 70
	cpy $38.b		; C4 38
	inc $18.b		; E6 18
	sbc ($8C.b,S),Y		; F3 8C
	sbc ($E0.b),Y		; F1 E0
	jsr $00E0.w		; 20 E0 00
	beq  16.b		; F0 10
	sei		; 78
	php		; 08
	clv		; B8
	bra  92.b		; 80 5C
	mvp $62,$6E		; 44 6E 62
	rol $8030.w,X		; 3E 30 80
	brk $C0.b		; 00 C0
	brk $58.b		; 00 58
	bra  36.b		; 80 24
	cld		; D8
	ply		; 7A
	ldy $807F.w,X		; BC 7F 80
	adc $F0EFE0.l,X		; 7F E0 EF F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FF0707.l		; 0F 07 07 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	rts		; 60

	ora [$38.b]		; 07 38
	sbc ($0C.b,S),Y		; F3 0C
	sta $AF66.w,Y		; 99 66 AF
	bcs   0.b		; B0 00
	brk $7C.b		; 00 7C
	jmp ($1313.w,X)		; 7C 13 13
	ora [$67.b]		; 07 67
	ora $FB.b,S		; 03 FB
	ora ($0D.b,X)		; 01 0D
	brk $06.b		; 00 06
	bvc  16.b		; 50 10
	adc ($1C.b,S),Y		; 73 1C
	jmp ($5E07.w,X)		; 7C 07 5E
	cpy #$7C05.w		; C0 05 7C
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	plx		; FA
	cop $BF.b		; 02 BF
	bra  11.b		; 80 0B
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	clv		; B8
	tsb $060C.w		; 0C 0C 06
	rol $0A.b,X		; 36 0A
	ora $04.b		; 05 04
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
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
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -4.b		; F0 FC
	brk $84.b		; 00 84
	brk $FC.b		; 00 FC
	brk $86.b		; 00 86
	brk $E6.b		; 00 E6
	brk $3E.b		; 00 3E
	brk $8E.b		; 00 8E
	brk $C6.b		; 00 C6
	brk $18.b		; 00 18
	clc		; 18
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	tsb $7C.b		; 04 7C
	sty $9C.b		; 84 9C
	jsr $88E0.w		; 20 E0 88
	sed		; F8
	rti		; 40

	sei		; 78
	and $001F00.l,X		; 3F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora ($11.b),Y		; 11 11
	ora $15.b,X		; 15 15
	tsb $04.b		; 04 04
	tsb $010C.w		; 0C 0C 01
	ora ($05.b,X)		; 01 05
	ora $05.b		; 05 05
	ora $04.b		; 05 04
	tsb $16.b		; 04 16
	ora $2F1F2E.l		; 0F 2E 1F 2F
	ora $173F0F.l,X		; 1F 0F 3F 17
	ora $0B170B.l		; 0F 0B 17 0B
	and [$17.b],Y		; 37 17
	adc $13040B.l,X		; 7F 0B 04 13
	tsb $0E11.w		; 0C 11 0E
	and [$08.b],Y		; 37 08
	phd		; 0B
	tsb $17.b		; 04 17
	brk $37.b		; 00 37
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	cpx #$10FF.w		; E0 FF 10
	ora $DFAFF8.l,X		; 1F F8 AF DF
	dec $EF.b,X		; D6 EF
	inx		; E8
	sbc [$CD.b],Y		; F7 CD
	sbc ($A3.b)		; F2 A3
	jsr ($38C7.w,X)		; FC C7 38
	ora $00C710.l,X		; 1F 10 C7 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $BF.b		; 00 BF
	cmp $FF.b,S		; C3 FF
	and $4C.b,S		; 23 4C
	adc ($1F.b,S),Y		; 73 1F
	cpx #$00FF.w		; E0 FF 00
	adc $00C700.l		; 6F 00 C7 00
	sbc [$00.b]		; E7 00
	eor $43.b,S		; 43 43
	cpy #$A003.w		; C0 03 A0
	and $80.b,S		; 23 80
	bra -128.b		; 80 80
	sta ($20.b,X)		; 81 20
	bmi  65.b		; 30 41
	adc $B9A1.w,Y		; 79 A1 B9
	lda $B47BC0.l,X		; BF C0 7B B4
	xce		; FB
	stz $FB.b,X		; 74 FB
	tsb $FC3B.w		; 0C 3B FC
	sbc $00DF00.l,X		; FF 00 DF 00
	cmp $0000.w		; CD 00 00
	cpy #$B531.w		; C0 31 B5
	bpl 116.b		; 10 74
	php		; 08
	tsb $FD19.w		; 0C 19 FD
	ora ($01.b,X)		; 01 01
	lsr $856E.w		; 4E 6E 85
	lda [$66.b],Y		; B7 66
	brk $66.b		; 00 66
	brk $B3.b		; 00 B3
	brk $B7.b		; 00 B7
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $F8.b		; 00 F8
	tsb $E9.b		; 04 E9
	clc		; 18
	jsl $DB42BB.l		; 22 BB 42 DB
	sta ($DD.b),Y		; 91 DD
	lda $ED.b		; A5 ED
	eor $406D.w		; 4D 6D 40
	rts		; 60

	adc [$64.b]		; 67 64
	ora [$10.b],Y		; 17 10
	jsr ($7003.w,X)		; FC 03 70
	ora #$0032.w		; 09 32 00
	ror $10.b		; 66 10
	cmp $3CC738.l		; CF 38 C7 3C
	and $3E.b,S		; 23 3E
	sbc ($1F.b),Y		; F1 1F
	tsx		; BA
	tsx		; BA
	eor [$C1.b]		; 47 C1
	and $C04FE0.l		; 2F E0 4F C0
	sta [$90.b],Y		; 97 90
	phd		; 0B
	php		; 08
	cmp $04.b		; C5 04
	sep #$02		; E2 02
	bvs -52.b		; 70 CC
	bpl -58.b		; 10 C6
	clc		; 18
	inc $88.b		; E6 88
	ror $88.b		; 66 88
	.db $62, $98, $72		; 62 98 72
	stz $8C72.w		; 9C 72 8C
	adc ($B8.b,S),Y		; 73 B8
	dey		; 88
	jmp ($7C44.w,X)		; 7C 44 7C
	stz $BC.b		; 64 BC
	bit $BC.b		; 24 BC
	jsr $42CE.w		; 20 CE 42
	dec $DE42.w		; CE 42 DE
	eor ($C4.b)		; 52 C4
	adc ($84.b,S),Y		; 73 84
	and ($C6.b,S),Y		; 33 C6
	and ($C6.b),Y		; 31 C6
	and ($6A.b),Y		; 31 6A
	and $194A.w,Y		; 39 4A 19
	.db $62, $19, $A6		; 62 19 A6
	sta $129E.w,X		; 9D 9E 12
	dec $EE12.w,X		; DE 12 EE
	jsr $20EE.w		; 20 EE 20
	dec $00.b		; C6 00
	inc $00.b		; E6 00
	inc $6A08.w		; EE 08 6A
	php		; 08
	ldy $9D.b		; A4 9D
	mvp $54,$DD		; 44 DD 54
	cmp $ED20.w,X		; DD 20 ED
	jsl $7F12EF.l		; 22 EF 12 7F
	ora ($7E.b,S),Y		; 13 7E
	ora [$38.b]		; 07 38
	adc ($10.b)		; 72 10
	lda ($90.b)		; B2 90
	ldx #$5680.w		; A2 80 56
	mvp $44,$54		; 44 54 44
	bit $24.b		; 24 24
	jsr $1020.w		; 20 20 10
	bpl  39.b		; 10 27
	cpx #$7013.w		; E0 13 70
	ora #$0238.w		; 09 38 02
	asl $0701.w		; 0E 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $202F40.l,X		; 5F 40 2F 20
	ora [$10.b],Y		; 17 10
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$7C.b]		; C7 7C
	sbc $3E.b,S		; E3 3E
	sbc ($1F.b),Y		; F1 1F
	sed		; F8
	ora $DE077C.l		; 0F 7C 07 DE
	cmp $2F.b,S		; C3 2F
	sbc ($17.b,X)		; E1 17
	bvs -117.b		; 70 8B
	php		; 08
	cmp $04.b		; C5 04
	sep #$02		; E2 02
	sbc ($03.b,S),Y		; F3 03
	sbc $3C01.w,Y		; F9 01 3C
	brk $5E.b		; 00 5E
	rti		; 40

	and $380B20.l		; 2F 20 0B 38
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	ora [$10.b],Y		; 17 10
	ora $000308.l		; 0F 08 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $7E70.w		; 0E 70 7E
	brk $76.b		; 00 76
	brk $56.b		; 00 56
	bmi 118.b		; 30 76
	bpl 122.b		; 10 7A
	brk $3A.b		; 00 3A
	brk $2A.b		; 00 2A
	trb $20.b		; 14 20
	jsr $0000.w		; 20 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $14.b		; 00 14
	trb $2F.b		; 14 2F
	bpl  27.b		; 10 1B
	tsb $15.b		; 04 15
	asl $0A19.w		; 0E 19 0A
	ora [$00.b],Y		; 17 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl A		; 0A
	asl A		; 0A
	asl $02.b		; 06 02
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
	brk $1F.b		; 00 1F
	jsr $1F2C.w		; 20 2C 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1F00.w		; 20 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $27201F.l		; 0F 1F 20 27
	eor $3F3FDF.l,X		; 5F DF 3F 3F
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $20.b		; 00 20
	brk $5F.b		; 00 5F
	brk $38.b		; 00 38
	ora [$F6.b]		; 07 F6
	ora #$00FF.w		; 09 FF 00
	asl $0F02.w		; 0E 02 0F
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	ora [$06.b]		; 07 06
	ora [$06.b]		; 07 06
	ora [$06.b]		; 07 06
	ora [$06.b]		; 07 06
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	asl $8980.w		; 0E 80 89
	brk $88.b		; 00 88
	brk $0C.b		; 00 0C
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$04.b]		; 07 04
	sta [$07.b]		; 87 07
	sta [$02.b]		; 87 02
	.db $82, $04, $06		; 82 04 06
	ora #$5C0D.w		; 09 0D 5C
	and $231E69.l,X		; 3F 69 1E 23
	trb $051B.w		; 1C 1B 05
	tsb $00.b		; 04 00
	ora ($08.b,X)		; 01 08
	ora $301E18.l		; 0F 18 1E 30
	and $001E00.l,X		; 3F 00 1E 00
	trb $0500.w		; 1C 00 05
	ora ($00.b,X)		; 01 00
	ora $06.b,S		; 03 06
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $6C.b		; 00 6C
	sbc ($BF.b,S),Y		; F3 BF
	rti		; 40

	sed		; F8
	ora [$7C.b]		; 07 7C
	eor $BE.b,S		; 43 BE
	lda ($5F.b,X)		; A1 5F
	rti		; 40

	sta $80DF20.l		; 8F 20 DF 80
	sbc ($00.b)		; F2 00
	rti		; 40

	brk $78.b		; 00 78
	sei		; 78
	cli		; 58
	cld		; D8
	tsb $06EC.w		; 0C EC 06
	inc $00.b,X		; F6 00
	bvs  15.b		; 70 0F
	and $CF1CCF.l		; 2F CF 1C CF
	ora $C70FC7.l,X		; 1F C7 0F C7
	and $C937D3.l		; 2F D3 37 C9
	phd		; 0B
	pea $FA05.w		; F4 05 FA
	cop $00.b		; 02 00
	bit $3F03.w,X		; 3C 03 3F
	ora $3F.b,S		; 03 3F
	ora $3F.b,S		; 03 3F
	ora ($3F.b,X)		; 01 3F
	brk $3F.b		; 00 3F
	sty $8F.b		; 84 8F
	.db $42, $47		; 42 47
	bne -32.b		; D0 E0
	bne -32.b		; D0 E0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0A0.w		; C0 A0 C0
	bcc -64.b		; 90 C0
	php		; 08
	ldy #$4058.w		; A0 58 40
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E080.w		; E0 80 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$B837.w		; E0 37 B8
	php		; 08
	sta $388734.l		; 8F 34 87 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $48.b,S		; 83 48
	php		; 08
	ror $06.b,X		; 76 06
	ply		; 7A
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $DB.b		; 02 DB
	sec		; 38
	ora $063C.w		; 0D 3C 06
	asl $0F01.w,X		; 1E 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	and [$20.b]		; 27 20
	ora ($10.b,S),Y		; 13 10
	ora #$0208.w		; 09 08 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$18E0.w		; E0 E0 18
	jsr ($ECC0.w,X)		; FC C0 EC
	beq -72.b		; F0 B8
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	bra -60.b		; 80 C4
	brk $FC.b		; 00 FC
	bra  -4.b		; 80 FC
	ldx #$A830.w		; A2 30 A8
	inx		; E8
	bcs -16.b		; B0 F0
	plp		; 28
	beq  56.b		; F0 38
	cpy #$E030.w		; C0 30 E0
	bmi -128.b		; 30 80
	brk $82.b		; 00 82
	brk $08.b		; 00 08
	cpy #$8080.w		; C0 80 80
	bne   0.b		; D0 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $70.b		; 00 70
	bra 120.b		; 80 78
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	asl $03.b		; 06 03
	asl $0D.b		; 06 0D
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	jsr $20DC.w		; 20 DC 20
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	jsr $60F8.w		; 20 F8 60
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	dey		; 88
	tay		; A8
	php		; 08
	plp		; 28
	bra -128.b		; 80 80
	cld		; D8
	cld		; D8
	dey		; 88
	tay		; A8
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$0060.w		; C0 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $3F.b		; 00 3F
	ora $1F1F2F.l,X		; 1F 2F 1F 1F
	and $7E2E1F.l		; 2F 1F 2E 7E
	sta $7FB9.w,X		; 9D B9 7F
	sbc $BF7F.w,Y		; F9 7F BF
	adc $001F.w,X		; 7D 1F 00
	ora $002F00.l,X		; 1F 00 2F 00
	rol $9D00.w		; 2E 00 9D
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7D.b		; 00 7D
	brk $FF.b		; 00 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	jsr ($79F6.w,X)		; FC F6 79
	sbc [$F8.b],Y		; F7 F8
	sbc $F9FA.w,X		; FD FA F9
	inc $C3FD.w,X		; FE FD C3
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($7800.w,X)		; FC 00 78
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $FD.b		; 00 FD
	brk $C0.b		; 00 C0
	brk $0C.b		; 00 0C
	asl $1E1C.w		; 0E 1C 1E
	trb $1C3C.w		; 1C 3C 1C
	bit $1800.w,X		; 3C 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1C3F.w		; 0C 3F 1C
	ror $7E0C.w,X		; 7E 0C 7E
	tsb $7E.b		; 04 7E
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$00.b],Y		; 37 00
	and $1B00.w		; 2D 00 1B
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	tas		; 1B
	brk $12.b		; 00 12
	cop $06.b		; 02 06
	ora ($05.b,X)		; 01 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $F4E1.w,X		; 3D E1 F4
	sta [$D2.b]		; 87 D2
	trb $7081.w		; 1C 81 70
	eor ($60.b,X)		; 41 60
	rti		; 40

	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	asl $7800.w,X		; 1E 00 78
	brk $E0.b		; 00 E0
	ora ($C0.b,X)		; 01 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $60BFA0.l,X		; 1F A0 BF 60
	adc $703FF0.l,X		; 7F F0 3F 70
	and [$78.b],Y		; 37 78
	sta $108F30.l,X		; 9F 30 8F 10
	eor [$00.b]		; 47 00
	ora $6F0F6F.l		; 0F 6F 0F 6F
	ora [$F7.b],Y		; 17 F7
	ora [$F7.b],Y		; 17 F7
	bpl  -8.b		; 10 F8
	ora [$77.b]		; 07 77
	ora [$77.b]		; 07 77
	ora $3B.b,S		; 03 3B
	sbc $FE01.w,X		; FD 01 FE
	brk $7F.b		; 00 7F
	brk $6D.b		; 00 6D
	brk $ED.b		; 00 ED
	brk $ED.b		; 00 ED
	brk $ED.b		; 00 ED
	brk $7D.b		; 00 7D
	bra  73.b		; 80 49
	phk		; 4B
	iny		; C8
	cmp #$DA5A.w		; C9 5A DA
	pha		; 48
	phx		; DA
	tay		; A8
	tsx		; BA
	lda #$29BB.w		; A9 BB 29
	tsa		; 3B
	ora ($03.b,X)		; 01 03
	ldy $5E80.w,X		; BC 80 5E
	brk $CF.b		; 00 CF
	brk $E7.b		; 00 E7
	brk $F7.b		; 00 F7
	cop $FF.b		; 02 FF
	ora ($DF.b,X)		; 01 DF
	brk $F7.b		; 00 F7
	bpl -104.b		; 10 98
	cld		; D8
	tsb $04AC.w		; 0C AC 04
	bit $C0.b,X		; 34 C0
	cld		; D8
	cpx #$66E8.w		; E0 E8 66
	rts		; 60

	eor $808F60.l		; 4F 60 8F 80
	sec		; 38
	sta $78.b,S		; 83 78
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	dec $3C.b		; C6 3C
	dec $30.b		; C6 30
	dec $73.b		; C6 73
	cpy $7E.b		; C4 7E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($3F44.w,X)		; 7C 44 3F
	ora [$01.b]		; 07 01
	ora [$02.b]		; 07 02
	asl $1C07.w		; 0E 07 1C
	ora $311F18.l		; 0F 18 1F 31
	asl $3C63.w,X		; 1E 63 3C
	dec $78.b		; C6 78
	sty $0202.w		; 8C 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	asl $3C00.w		; 0E 00 3C
	jsr $4078.w		; 20 78 40
	beq -128.b		; F0 80
	cpx #$F030.w		; E0 30 F0
	clc		; 18
	sed		; F8
	tsb $067C.w		; 0C 7C 06
	ldx $2F83.w,Y		; BE 83 2F
	sbc ($17.b,X)		; E1 17
	sbc ($4F.b),Y		; F1 4F
	cmp ($C0.b,X)		; C1 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $5E.b		; 00 5E
	rti		; 40

	rol $BE20.w		; 2E 20 BE
	bra  62.b		; 80 3E
	ora $FC.b,S		; 03 FC
	asl $F0.b		; 06 F0
	clc		; 18
	cpy #$0060.w		; C0 60 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
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
	brk $0F.b		; 00 0F
	ora $1107.w,Y		; 19 07 11
	asl $11.b		; 06 11
	asl $1C11.w		; 0E 11 1C
	and ($1E.b),Y		; 31 1E
	and ($0E.b,S),Y		; 33 0E
	and $0C.b,S		; 23 0C
	and $06.b,S		; 23 06
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	ora ($1F.b),Y		; 11 1F
	ora ($0E.b),Y		; 11 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $3C837E.l		; 22 7E 83 3C
	dec $78.b		; C6 78
	sty $8870.w		; 8C 70 88
	cpx #$8050.w		; E0 50 80
	rts		; 60

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	jmp ($7860.w,X)		; 7C 60 78
	rts		; 60

	bvs  32.b		; 70 20
	bvs  48.b		; 70 30
	ldy #$80A0.w		; A0 A0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  56.b		; 80 38
	adc $1C.b,S		; 63 1C
	lsr $1C.b		; 46 1C
	lsr $38.b		; 46 38
	dec $78.b		; C6 78
	cpy $30.b		; C4 30
	sty $38.b		; 84 38
	sty $8C30.w		; 8C 30 8C
	asl $3802.w,X		; 1E 02 38
	brk $78.b		; 00 78
	rti		; 40

	jmp ($3844.w,X)		; 7C 44 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	bmi -116.b		; 30 8C
	bmi -120.b		; 30 88
	jsr $7088.w		; 20 88 70
	cld		; D8
	rts		; 60

	cld		; D8
	jsr $20D0.w		; 20 D0 20
	bne  32.b		; D0 20
	bne 120.b		; D0 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	jsr $3000.w		; 20 00 30
	bpl  96.b		; 10 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	jsr $A0D0.w		; 20 D0 A0
	bvc -16.b		; 50 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	bra  32.b		; 80 20
	bne  48.b		; D0 30
	bra 112.b		; 80 70
	bra  96.b		; 80 60
	rti		; 40

	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  80.b		; 50 50
	rti		; 40

	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	bpl  84.b		; 10 54
	sec		; 38
	stz $28.b		; 64 28
	jmp $007C00.l		; 5C 00 7C 00
	bit $1C00.w,X		; 3C 00 1C
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  40.b		; 10 28
	plp		; 28
	clc		; 18
	php		; 08
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cpx #$CFFF.w		; E0 FF CF
	sbc $FFBF9F.l,X		; FF 9F BF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FC7BFF.l,X		; FF FF 7B FC
	cpx #$CF00.w		; E0 00 CF
	brk $98.b		; 00 98
	ora [$F6.b]		; 07 F6
	ora #$007F.w		; 09 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($0000.w,X)		; FC 00 00
	bra -64.b		; 80 C0
	jsr $C8F0.w		; 20 F0 C8
	inx		; E8
	pea $C4B8.w		; F4 B8 C4
	plx		; FA
	sty $F2.b		; 84 F2
	ldy $A836.w		; AC 36 A8
	bra   0.b		; 80 00
	jsr $C800.w		; 20 00 C8
	brk $74.b		; 00 74
	bra -60.b		; 80 C4
	brk $84.b		; 00 84
	brk $8C.b		; 00 8C
	brk $08.b		; 00 08
	cpy #$F07E.w		; C0 7E F0
	stx $737C.w		; 8E 7C 73
	ora $DF80BF.l		; 0F BF 80 DF
	cpy #$E0E3.w		; C0 E3 E0
	asl $9FFE.w,X		; 1E FE 9F
	adc $73808F.l,X		; 7F 8F 80 73
	bvs  12.b		; 70 0C
	sty $C080.w		; 8C 80 C0
	cpy #$60E0.w		; C0 E0 60
	jsr ($FF1C.w,X)		; FC 1C FF
	asl $F87F.w		; 0E 7F F8
	rti		; 40

	jsr ($BC40.w,X)		; FC 40 BC
	rti		; 40

	ror $FF80.w,X		; 7E 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	cop $50.b		; 02 50
	bvc  24.b		; 50 18
	cli		; 58
	php		; 08
	pha		; 48
	brk $80.b		; 00 80
	dec A		; 3A
	dec A		; 3A
	adc $797D.w,X		; 7D 7D 79
	tda		; 7B
	adc $7A7B.w,Y		; 79 7B 7A
	asl $7D.b		; 06 7D
	ora $7E.b,S		; 03 7E
	ora ($77.b,X)		; 01 77
	brk $79.b		; 00 79
	brk $5C.b		; 00 5C
	brk $CC.b		; 00 CC
	brk $C7.b		; 00 C7
	brk $02.b		; 00 02
	sta [$01.b]		; 87 01
	sta $18.b,S		; 83 18
	sta $AC24.w,Y		; 99 24 AC
	and #$14AF.w		; 29 AF 14
	lda [$44.b],Y		; B7 44
	adc [$42.b],Y		; 77 42
	ply		; 7A
	bit $3F40.w,X		; 3C 40 3F
	cpy #$877F.w		; C0 7F 87
	inc $F30E.w,X		; FE 0E F3
	ora $B43FC0.l		; 0F C0 3F B4
	eor [$3D.b]		; 47 3D
	sta ($00.b,X)		; 81 00
	cmp $00.b,S		; C3 00
	cpy #$8000.w		; C0 00 80
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	sta $83.b,S		; 83 83
	sec		; 38
	brk $7E.b		; 00 7E
	brk $28.b		; 00 28
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	sbc $3F0303.l,X		; FF 03 03 3F
	brk $CF.b		; 00 CF
	cpy #$FF3E.w		; C0 3E FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jsr ($FF00.w,X)		; FC 00 FF
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	rti		; 40

	sta $009D.w,X		; 9D 9D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$7040.w		; E0 40 70
	ldy #$5038.w		; A0 38 50
	tya		; 98
	bne  24.b		; D0 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A0C0.w		; C0 C0 A0
	jsr $10D0.w		; 20 D0 10
	cpx #$E080.w		; E0 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	ora ($3E.b)		; 12 3E
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	sei		; 78
	brk $17.b		; 00 17
	php		; 08
	rol $00.b,X		; 36 00
	jmp $10C820.l		; 5C 20 C8 10
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	php		; 08
	tsb $2000.w		; 0C 00 20
	jsr $1030.w		; 20 30 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1E.b		; 00 1E
	ora ($79.b,X)		; 01 79
	tsb $F2.b		; 04 F2
	ora #$023D.w		; 09 3D 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $020209.l		; 0F 09 02 02
	bmi   0.b		; 30 00
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
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	and $7F43.w,X		; 3D 43 7F
	and $7E7F3F.l,X		; 3F 3F 7F 7E
	and $3E7F1E.l,X		; 3F 1E 7F 3E
	eor $033F0F.l,X		; 5F 0F 3F 03
	brk $43.b		; 00 43
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $2E.b		; 00 2E
	cmp $0507FC.l,X		; DF FC 07 05
	xce		; FB
	asl $01.b		; 06 01
	ora $1F6300.l,X		; 1F 00 63 1F
	ora $FCFE.w		; 0D FE FC
	sta ($DF.b,X)		; 81 DF
	brk $07.b		; 00 07
	brk $FB.b		; 00 FB
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$32.b]		; 07 32
	and ($7F.b)		; 32 7F
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	cpx #$70B8.w		; E0 B8 70
	cli		; 58
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpx #$F030.w		; E0 30 F0
	bpl -16.b		; 10 F0
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	cmp $01.b		; C5 01
	cpx #$F01F.w		; E0 1F F0
	php		; 08
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0B.b		; 02 0B
	php		; 08
	rol $1800.w,X		; 3E 00 18
	clc		; 18
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F9.b,X		; F6 F9
	sbc [$F8.b],Y		; F7 F8
	adc $79FA.w,X		; 7D FA 79
	inc $7FB1.w,X		; FE B1 7F
	cpy #$E03F.w		; C0 3F E0
	sta $F84CF0.l,X		; 9F F0 4C F8
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $FD.b		; 00 FD
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	cpx $F0B0.w		; EC B0 F0
	plp		; 28
	beq  56.b		; F0 38
	cpy #$E030.w		; C0 30 E0
	bmi -64.b		; 30 C0
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bne   0.b		; D0 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	ora $8107E0.l,X		; 1F E0 07 81
	clc		; 18
	cmp [$18.b]		; C7 18
	sbc [$1C.b]		; E7 1C
	lda [$6F.b]		; A7 6F
	sta ($33.b,S),Y		; 93 33
	sbc $061D.w		; ED 1D 06
	and $001F00.l,X		; 3F 00 1F 00
	ror $3901.w,X		; 7E 01 39
	brk $1C.b		; 00 1C
	ora $7F.b,S		; 03 7F
	ora $7F.b,S		; 03 7F
	ora $1F.b		; 05 1F
	adc $007F80.l,X		; 7F 80 7F 00
	inc $E800.w,X		; FE 00 E8
	brk $90.b		; 00 90
	rti		; 40

	sta $8636C0.l,X		; 9F C0 36 86
	tsa		; 3B
	sta [$3A.b]		; 87 3A
	tsx		; BA
	rol $B6.b,X		; 36 B6
	brk $00.b		; 00 00
	cpy #$00D0.w		; C0 D0 00
	rts		; 60

	bra -32.b		; 80 E0
	asl $CF.b		; 06 CF
	brk $C7.b		; 00 C7
	dec $DC01.w		; CE 01 DC
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	sei		; 78
	eor ($71.b),Y		; 51 71
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $E02FC0.l,X		; 5F C0 2F E0
	ora ($F0.b,S),Y		; 13 F0
	tsb $7C.b		; 04 7C
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora [$70.b],Y		; 17 70
	lda $C0DF80.l,X		; BF 80 DF C0
	adc $181B60.l		; 6F 60 1B 18
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	and $7E4120.l		; 2F 20 41 7E
	cmp ($1C.b,S),Y		; D3 1C
	inx		; E8
	asl $07F4.w		; 0E F4 07
	dec A		; 3A
	ora $5D.b,S		; 03 5D
	cmp ($16.b,X)		; C1 16
	beq  -2.b		; F0 FE
	ora $A3.b,S		; 03 A3
	jsl $F304E7.l		; 22 E7 04 F3
	cop $F9.b		; 02 F9
	ora ($FC.b,X)		; 01 FC
	brk $BE.b		; 00 BE
	bra -81.b		; 80 AF
	ldy #$01FD.w		; A0 FD 01
	ldy #$4038.w		; A0 38 40
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bne  16.b		; D0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $0179C0.l,X		; 5F C0 79 01
	cld		; D8
	ora $3CFC80.l,X		; 1F 80 FC 3C
	iny		; C8
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $BF.b		; 00 BF
	bra  -2.b		; 80 FE
	brk $E6.b		; 00 E6
	asl $60.b		; 06 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $8007.w		; F4 07 80
	inc $C000.w,X		; FE 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	cop $60.b		; 02 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora $403727.l,X		; 1F 27 37 40
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001809.l		; 0F 09 18 00
	sec		; 38
	brk $2F.b		; 00 2F
	rts		; 60

	trb $2B70.w		; 1C 70 2B
	ora ($19.b,S),Y		; 13 19
	ora $08.b,S		; 03 08
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	and $11.b,S		; 23 11
	ora [$00.b],Y		; 17 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $1D.b		; 00 1D
	brk $19.b		; 00 19
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $1E.b		; 00 1E
	asl $1D1C.w,X		; 1E 1C 1D
	ora #$000B.w		; 09 0B 00
	asl $13.b		; 06 13
	brk $27.b		; 00 27
	brk $47.b		; 00 47
	brk $6F.b		; 00 6F
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	asl $1D05.w		; 0E 05 1D
	ora $3D.b		; 05 3D
	phd		; 0B
	tas		; 1B
	asl A		; 0A
	phd		; 0B
	asl $07.b		; 06 07
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	adc $3B00.w,X		; 7D 00 3B
	brk $17.b		; 00 17
	brk $37.b		; 00 37
	brk $2F.b		; 00 2F
	brk $2E.b		; 00 2E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $21.b		; 00 21
	and $03.b,S		; 23 03
	ora [$07.b]		; 07 07
	ora $0E0E06.l		; 0F 06 0E 0E
	asl $1D0C.w,X		; 1E 0C 1D
	tsb $000D.w		; 0C 0D 00
	ora $DF.b,S		; 03 DF
	ora ($DD.b,X)		; 01 DD
	brk $BB.b		; 00 BB
	brk $7B.b		; 00 7B
	brk $77.b		; 00 77
	brk $F7.b		; 00 F7
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $98.b		; 00 98
	lda $3A18.w,Y		; B9 18 3A
	and ($76.b)		; 32 76
	adc ($F6.b)		; 72 F6
	ror $EE.b		; 66 EE
	inc $EE.b		; E6 EE
	cpy $CCDD.w		; CC DD CC
	cmp $7E05.w,X		; DD 05 7E
	ora $1C.b,S		; 03 1C
	ora $030F01.l,X		; 1F 01 0F 03
	ora $010703.l		; 0F 03 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	inc A		; 1A
	inc A		; 1A
	tsb $05.b		; 04 05
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	sbc $00FF04.l,X		; FF 04 FF 00
	sbc $E0FFC0.l,X		; FF C0 FF E0
	sbc $F0FFE0.l,X		; FF E0 FF F0
	sbc $00FFE0.l,X		; FF E0 FF 00
	bmi  48.b		; 30 30
	brk $80.b		; 00 80
	lsr $CECE.w		; 4E CE CE
	inc $EFCF.w		; EE CF EF
	ror $F6.b		; 66 F6
	ora #$37F9.w		; 09 F9 37
	sbc [$E0.b],Y		; F7 E0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpy #$C030.w		; C0 30 C0
	cpx #$E010.w		; E0 10 E0
	php		; 08
	cpx #$F604.w		; E0 04 F6
	clc		; 18
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $20.b		; 00 20
	jsr $6070.w		; 20 70 60
	clc		; 18
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	sei		; 78
	sei		; 78
	cpy #$C080.w		; C0 80 C0
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	cpy #$60F0.w		; C0 F0 60
	sed		; F8
	bvs -68.b		; 70 BC
	sei		; 78
	dec $803C.w,X		; DE 3C 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E060.w		; C0 60 E0
	bmi -16.b		; 30 F0
	clc		; 18
	sei		; 78
	tsb $027C.w		; 0C 7C 02
	ora ($03.b,X)		; 01 03
	ora $05.b		; 05 05
	phd		; 0B
	tas		; 1B
	and [$26.b]		; 27 26
	eor $76BE5D.l,X		; 5F 5D BE 76
	lda $7DAE.w,X		; BD AE 7D
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $27.b		; 00 27
	brk $5F.b		; 00 5F
	brk $BE.b		; 00 BE
	brk $BD.b		; 00 BD
	brk $7D.b		; 00 7D
	brk $FD.b		; 00 FD
	inc $FDFE.w,X		; FE FE FD
	sbc $7BFB.w,X		; FD FB 7B
	pea $72FC.w		; F4 FC 72
	sbc ($E6.b,S),Y		; F3 E6
	sbc $D8EFD0.l		; EF D0 EF D8
	stx $78.b		; 86 78
	cpy $F830.w		; CC 30 F8
	brk $F4.b		; 00 F4
	brk $70.b		; 00 70
	ora $EA.b,S		; 03 EA
	cop $DF.b		; 02 DF
	bpl -41.b		; 10 D7
	bpl -72.b		; 10 B8
	ror $BA5C.w,X		; 7E 5C BA
	stz $78FA.w		; 9C FA 78
	pea $44D8.w		; F4 D8 44
	nop		; EA
	trb $C5.b		; 14 C5
	dec A		; 3A
	and $3A.b		; 25 3A
	ror $08.b,X		; 76 08
	and ($08.b)		; 32 08
	ply		; 7A
	rti		; 40

	sty $80.b,X		; 94 80
	tsb $20.b		; 04 20
	mvp $EA,$80		; 44 80 EA
	jsr $C0CA.w		; 20 CA C0
	ora ($33.b)		; 12 33
	asl $63.b		; 06 63
	rol $1C63.w		; 2E 63 1C
	.db $42, $18		; 42 18
.INDEX 16
	rep #$5C		; C2 5C
	dec $78.b		; C6 78
	cpy $30.b		; C4 30
	sty $2D.b		; 84 2D
	and ($3C.b,X)		; 21 3C
	jsr $001C.w		; 20 1C 00
	ror $7C42.w,X		; 7E 42 7C
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $58.b		; 00 58
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $A000.w		; 20 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	bpl -112.b		; 10 90
	bne -48.b		; D0 D0
	bne -48.b		; D0 D0
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	rts		; 60

	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $A0.b		; 00 A0
	jsr $0603.w		; 20 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc ($1C.b),Y		; F1 1C
	cmp ($1C.b,X)		; C1 1C
	sbc ($3C.b,X)		; E1 3C
	sbc ($3C.b,X)		; E1 3C
	cmp $3E.b,S		; C3 3E
	sta $36.b,S		; 83 36
	.db $82, $26, $C0		; 82 26 C0
	ror $E7.b		; 66 E7
	tsb $F7.b		; 04 F7
	trb $D7.b		; 14 D7
	trb $C7.b		; 14 C7
	tsb $E5.b		; 04 E5
	bit $E1.b		; 24 E1
	jsr $00C1.w		; 20 C1 00
	sta $02.b,S		; 83 02
	cpy #$8070.w		; C0 70 80
	bmi -96.b		; 30 A0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -96.b		; 10 A0
	jsr $20E0.w		; 20 E0 20
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl   4.b		; 10 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $EE.b		; 02 EE
	brk $EE.b		; 00 EE
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	bra  96.b		; 80 60
	asl $0E62.w		; 0E 62 0E
	sbc $0E.b,S		; E3 0E
	sbc ($1C.b),Y		; F1 1C
	cpy $CCDD.w		; CC DD CC
	cmp $0D0D.w,X		; DD 0D 0D
	rts		; 60

	brk $F9.b		; 00 F9
	php		; 08
	sbc $F908.w,Y		; F9 08 F9
	php		; 08
	sbc [$04.b]		; E7 04
	tsa		; 3B
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $7D.b		; 00 7D
	brk $FB.b		; 00 FB
	brk $01.b		; 00 01
	ora ($18.b,X)		; 01 18
	clc		; 18
	trb $14.b		; 14 14
	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	ora #$3109.w		; 09 09 31
	and ($43.b,S),Y		; 33 43
	eor [$FF.b]		; 47 FF
	sei		; 78
	sbc $7EFF7C.l,X		; FF 7C FF 7E
	adc $3EBD3E.l,X		; 7F 3E BD 3E
	cmp $FF0E.w,X		; DD 0E FF
	trb $FD.b		; 14 FD
	asl A		; 0A
	cop $FA.b		; 02 FA
	php		; 08
	jsr ($FE18.w,X)		; FC 18 FE
	trb $1CFE.w		; 1C FE 1C
	inc $7E08.w,X		; FE 08 7E
	brk $3E.b		; 00 3E
	rti		; 40

	lsr $13F7.w		; 4E F7 13
	cmp $33.b		; C5 33
	cpx $13.b		; E4 13
	sty $00.b,X		; 94 00
	asl A		; 0A
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $C1.b		; 00 C1
	wai		; CB
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $94FC.w		; AC FC 94
	ldy $8000.w,X		; BC 00 80
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	jsr ($FC94.w,X)		; FC 94 FC
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $083718.l		; 6F 18 37 08
	ora $000F00.l,X		; 1F 00 0F 00
	asl $01.b		; 06 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($3D.b,X)		; 01 3D
	ora ($1D.b,X)		; 01 1D
	ora ($09.b,X)		; 01 09
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $7D.b		; A6 7D
	cmp ($3E.b,X)		; C1 3E
	bcc 111.b		; 90 6F
	tsb $FB.b		; 04 FB
	adc #$5D0E.w		; 69 0E 5D
	cmp ($0A.b,X)		; C1 0A
	sei		; 78
	ora $1E.b,S		; 03 1E
	adc $3E00.w,X		; 7D 00 3E
	brk $0F.b		; 00 0F
	brk $C3.b		; 00 C3
	cpy #$04F4.w		; C0 F4 04
	ldx $1780.w,Y		; BE 80 17
	bpl   5.b		; 10 05
	tsb $63.b		; 04 63
	cld		; D8
	eor ($EE.b,S),Y		; 53 EE
	php		; 08
	sbc [$73.b],Y		; F7 73
	sty $46F9.w		; 8C F9 46
	adc $D0AEA3.l,X		; 7F A3 AE D0
	eor $08DF60.l,X		; 5F 60 DF 08
	sbc $04.b		; E5 04
	pea $8004.w		; F4 04 80
	brk $06.b		; 00 06
	lsr $80.b		; 46 80
	ldy #$5041.w		; A0 41 50
	stx $16.b		; 86 16
	eor $3A.b		; 45 3A
	cmp #$0276.w		; C9 76 02
	jsr ($7488.w,X)		; FC 88 74
	cld		; D8
	jsr $00F0.w		; 20 F0 00
	sei		; 78
	brk $FC.b		; 00 FC
	cpy #$80DA.w		; C0 DA 80
	stx $00.b,Y		; 96 00
	bit $7400.w,X		; 3C 00 74
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	bpl  16.b		; 10 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	bpl 126.b		; 10 7E
	sec		; 38
	adc $347E36.l,X		; 7F 36 7E 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bmi  56.b		; 30 38
	rol $36.b,X		; 36 36
	tsb $34.b		; 04 34
	ora $210C31.l,X		; 1F 31 0C 21
	tsb $0E21.w		; 0C 21 0E
	adc $0C.b,S		; 63 0C
	.db $62, $28, $62		; 62 28 62
	bpl -46.b		; 10 D2
	php		; 08
	dec $000E.w		; CE 0E 00
	ora $203E01.l,X		; 1F 01 3E 20
	bit $3E20.w,X		; 3C 20 3E
	jsl $6C405C.l		; 22 5C 40 6C
	rti		; 40

	stz $44.b,X		; 74 44
	bmi -124.b		; 30 84
	bvs -60.b		; 70 C4
	cli		; 58
	cpy $38.b		; C4 38
	stz $3C.b		; 64 3C
	stz $0C.b		; 64 0C
	ror $0C.b		; 66 0C
	rol $18.b		; 26 18
	and ($F8.b)		; 32 F8
	bra  56.b		; 80 38
	brk $3C.b		; 00 3C
	tsb $5C.b		; 04 5C
	mvp $00,$18		; 44 18 00
	sec		; 38
	jsr $2038.w		; 20 38 20
	tsb $0000.w		; 0C 00 00
	and ($08.b)		; 32 08
	inc A		; 1A
	bpl  10.b		; 10 0A
	clc		; 18
	asl $1E.b		; 06 1E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	tsb $0819.w		; 0C 19 08
	trb $0410.w		; 1C 10 04
	brk $0C.b		; 00 0C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	rol $3E00.w,X		; 3E 00 3E
	brk $2E.b		; 00 2E
	brk $62.b		; 00 62
	trb $7C.b		; 14 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $1807.w		; 0C 07 18
	ora [$2F.b],Y		; 17 2F
	and $BF7F7F.l,X		; 3F 7F 7F BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1800.w		; 0C 00 18
	brk $2F.b		; 00 2F
	brk $77.b		; 00 77
	php		; 08
	lda [$18.b]		; A7 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	cpx #$FC18.w		; E0 18 FC
	bcs -36.b		; B0 DC
	plx		; FA
	dec $00FD.w,X		; DE FD 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $18.b		; 00 18
	brk $B0.b		; 00 B0
	brk $FA.b		; 00 FA
	brk $F9.b		; 00 F9
	tsb $04.b		; 04 04
	ora $1E0618.l,X		; 1F 18 06 1E
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	bpl  42.b		; 10 2A
	trb $34.b		; 14 34
	php		; 08
	stz $08.b,X		; 74 08
	asl A		; 0A
	asl A		; 0A
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bit $2C62.w,X		; 3C 62 2C
	adc $0C.b,S		; 63 0C
	adc $1E.b,S		; 63 1E
	and ($16.b,S),Y		; 33 16
	and ($0C.b,S),Y		; 33 0C
	and $3114.w,Y		; 39 14 31
	asl $5E21.w		; 0E 21 5E
	.db $42, $1E		; 42 1E
	cop $3E.b		; 02 3E
	jsl $0C202C.l		; 22 2C 20 0C
	brk $16.b		; 00 16
	bpl  14.b		; 10 0E
	brk $1E.b		; 00 1E
	brk $05.b		; 00 05
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	.db $42, $1C		; 42 1C
	.db $42, $1C		; 42 1C
	.db $42, $1C		; 42 1C
	eor $3C.b,S		; 43 3C
	adc $3C.b,S		; 63 3C
	adc $1E.b,S		; 63 1E
	adc $1E.b,S		; 63 1E
	and $3C.b,S		; 23 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $203C.w		; 20 3C 20
	asl $1C23.w		; 0E 23 1C
	.db $62, $18, $62		; 62 18 62
	trb $1866.w		; 1C 66 18
	ror $10.b		; 66 10
	stz $18.b		; 64 18
	jmp ($6C08.w)		; 6C 08 6C
	bit $3E20.w,X		; 3C 20 3E
	jsl $38223E.l		; 22 3E 22 38
	jsr $243C.w		; 20 3C 24
	bit $3024.w,X		; 3C 24 30
	jsr $2030.w		; 20 30 20
	tas		; 1B
	php		; 08
	asl $1F01.w,X		; 1E 01 1F
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $0D.b		; 00 0D
	brk $04.b		; 00 04
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00E0.w		; C0 E0 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $00.b		; 05 00
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
	brk $01.b		; 00 01
	asl $05.b		; 06 05
	phd		; 0B
	ora ($AF.b,S),Y		; 13 AF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	phd		; 0B
	brk $AF.b		; 00 AF
	brk $ED.b		; 00 ED
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	cld		; D8
	sbc $FDD3A0.l,X		; FF A0 D3 FD
	dec $BE.b,X		; D6 BE
	cmp $FE.b		; C5 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $C5.b		; 00 C5
	clc		; 18
	beq  16.b		; F0 10
	phx		; DA
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5D.b		; 00 5D
.ACCU 8
	sep #$A6		; E2 A6
	eor $0718.w,Y		; 59 18 07
	tsb $1F03.w		; 0C 03 1F
	brk $02.b		; 00 02
	ora $01.b		; 05 01
	cop $00.b		; 02 00
	brk $E2.b		; 00 E2
	brk $59.b		; 00 59
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $E1.b		; 00 E1
	sbc $FDE77A.l,X		; FF 7A E7 FD
	inc $7EFD.w,X		; FE FD 7E
	and $77FE.w,Y		; 39 FE 77
	sed		; F8
	ora $807FE0.l,X		; 1F E0 7F 80
	sbc $00E700.l,X		; FF 00 E7 00
	inc $7E00.w,X		; FE 00 7E
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	tsb $007C.w		; 0C 7C 00
	and $0100.w,Y		; 39 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($3F01.w,X)		; 7C 01 3F
	asl $3F.b		; 06 3F
	ora [$BF.b]		; 07 BF
	ora [$FF.b]		; 07 FF
	ora $FE.b,S		; 03 FE
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $00.b		; 00 00
	tas		; 1B
	brk $1E.b		; 00 1E
	ora ($1F.b,X)		; 01 1F
	ora ($17.b,X)		; 01 17
	bit #$8B.b		; 89 8B
	mvn $25,$55		; 54 55 25
	and $44.b		; 25 44
	mvp $00,$7D		; 44 7D 00
	ora $0300.w,X		; 1D 00 03
	tsb $0E06.w		; 0C 06 0E
	ora $0C.b		; 05 0C
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora [$10.b]		; 07 10
	ora $011B.w,Y		; 19 1B 01
	ora $04.b,S		; 03 04
	tsb $01.b		; 04 01
	brk $0B.b		; 00 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00DE10.l,X		; 1F 10 DE 00
	dec $DC00.w,X		; DE 00 DC
	ora $7B.b,S		; 03 7B
	ora [$2C.b]		; 07 2C
	bit $380B.w,X		; 3C 0B 38
	phd		; 0B
	sec		; 38
	eor $BD9C78.l		; 4F 78 9C BD
	stz $18BD.w		; 9C BD 18
	sec		; 38
	sty $04.b		; 84 04
	cmp $00.b,S		; C3 00
	sbc [$20.b]		; E7 20
	cmp [$10.b],Y		; D7 10
	sta [$10.b],Y		; 97 10
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	tsa		; 3B
	ora [$FF.b]		; 07 FF
	ora [$7F.b]		; 07 7F
	.db $82, $3F, $C0		; 82 3F C0
	stz $1CE0.w,X		; 9E E0 1C
	cpx #$0100.w		; E0 00 01
	brk $07.b		; 00 07
	and $2F.b,S		; 23 2F
	ora [$17.b],Y		; 17 17
	asl A		; 0A
	phd		; 0B
	dey		; 88
	txa		; 8A
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	jsr ($F060.w,X)		; FC 60 F0
	cpy #$80E0.w		; C0 E0 80
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	beq -64.b		; F0 C0
	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	asl A		; 0A
	clc		; 18
	asl $1518.w		; 0E 18 15
	and ($03.b),Y		; 31 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora [$10.b],Y		; 17 10
	asl $8000.w		; 0E 00 80
	jsr $40C0.w		; 20 C0 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$8000.w		; C0 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
.INDEX 16
	rep #$1C		; C2 1C
	.db $42, $3C		; 42 3C
	.db $62, $2E, $63		; 62 2E 63
	trb $1631.w		; 1C 31 16
	and ($02.b),Y		; 31 02
	and ($16.b),Y		; 31 16
	and ($3C.b),Y		; 31 3C
	brk $7E.b		; 00 7E
	.db $42, $1E		; 42 1E
	cop $1C.b		; 02 1C
	brk $2E.b		; 00 2E
	jsr $000E.w		; 20 0E 00
	asl $2E10.w,X		; 1E 10 2E
	jsr $0000.w		; 20 00 00
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
	ora ($01.b,X)		; 01 01
	ora $0A.b		; 05 0A
	phd		; 0B
	ora [$0F.b]		; 07 0F
	ora [$0D.b]		; 07 0D
	ror $63.b		; 66 63
	sta $5F6F97.l,X		; 9F 97 6F 5F
	lda $0A59AE.l,X		; BF AE 59 0A
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $66.b		; 00 66
	brk $9F.b		; 00 9F
	brk $6F.b		; 00 6F
	brk $BF.b		; 00 BF
	brk $59.b		; 00 59
	brk $A7.b		; 00 A7
	eor $FFFF9F.l,X		; 5F 9F FF FF
	sbc $3F7FFF.l,X		; FF FF 7F 3F
	sbc $FFDFBF.l,X		; FF BF DF FF
	cmp $5FFFCE.l,X		; DF CE FF 5F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $BE.b		; 00 BE
	cmp $F8.b,S		; C3 F8
	ora [$FC.b]		; 07 FC
	stx $78.b		; 86 78
	inc $1CE0.w,X		; FE E0 1C
	bcc  96.b		; 90 60
	jmp ($F8D0.w)		; 6C D0 F8
	lda [$DC.b]		; A7 DC
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
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
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	ora $08.b		; 05 08
	phd		; 0B
	bpl  52.b		; 10 34
	ora [$69.b]		; 07 69
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $04.b		; 06 04
	asl $1C08.w		; 0E 08 1C
	bpl  58.b		; 10 3A
	jsl $7E2434.l		; 22 34 24 7E
	sta ($FF.b,X)		; 81 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	ora $F1.b,S		; 03 F1
	ora $7B3FC3.l		; 0F C3 3F 7B
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	and $070700.l,X		; 3F 00 07 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	tsb $08.b		; 04 08
	php		; 08
	ora ($13.b,S),Y		; 13 13
	ora #$09.b		; 09 09
	cop $02.b		; 02 02
	cop $06.b		; 02 06
	ora [$0F.b]		; 07 0F
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $85.b		; 00 85
	sta $45.b		; 85 45
	eor $80.b		; 45 80
	sta ($0A.b,X)		; 81 0A
	asl A		; 0A
	cop $02.b		; 02 02
	sta ($96.b)		; 92 96
	adc $67.b,S		; 63 67
	ora $07.b,S		; 03 07
	ora [$30.b]		; 07 30
	ora $301F30.l,X		; 1F 30 1F 30
	asl $0E20.w		; 0E 20 0E
	jsr $210F.w		; 20 0F 21
	asl $1C21.w,X		; 1E 21 1C
	adc ($1F.b,X)		; 61 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $213F.w		; 20 3F 21
	rol $0F20.w,X		; 3E 20 0F
	sei		; 78
	ora $D88778.l		; 0F 78 87 D8
	ora $98.b,S		; 03 98
	ora $88.b,S		; 03 88
	ora [$8C.b]		; 07 8C
	ora $0C.b,S		; 03 0C
	ora ($04.b,X)		; 01 04
	cmp [$50.b],Y		; D7 50
	sta [$10.b],Y		; 97 10
	ora $888F08.l		; 0F 08 8F 88
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	tsb $3A21.w		; 0C 21 3A
	adc $18.b,S		; 63 18
	.db $42, $74		; 42 74
	dec $38.b		; C6 38
	sty $8CF0.w		; 8C F0 8C
	rts		; 60

	php		; 08
	beq  24.b		; F0 18
	and $001C21.l,X		; 3F 21 1C 00
	ror $3842.w,X		; 7E 42 38
	brk $F4.b		; 00 F4
	sty $78.b		; 84 78
	php		; 08
	beq   0.b		; F0 00
	cpx #$0E00.w		; E0 00 0E
	.db $62, $3C, $62		; 62 3C 62
	trb $3C42.w		; 1C 42 3C
	dec $3C.b		; C6 3C
	dec $38.b		; C6 38
	cpy $78.b		; C4 78
	cpy $78.b		; C4 78
	cpy $203C.w		; CC 3C 20
	asl $7E02.w,X		; 1E 02 7E
	.db $42, $78		; 42 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($3C44.w,X)		; 7C 44 3C
	tsb $30.b		; 04 30
	brk $1E.b		; 00 1E
	and ($1E.b,S),Y		; 33 1E
	and ($1C.b,S),Y		; 33 1C
	and ($1C.b,S),Y		; 33 1C
	and ($1C.b,S),Y		; 33 1C
	rol $1C.b,X		; 36 1C
	rol $1C.b,X		; 36 1C
	rol $1C.b,X		; 36 1C
	asl $0C.b,X		; 16 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $08.b		; 02 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	asl $18.b,X		; 16 18
	asl $18.b,X		; 16 18
	asl $18.b		; 06 18
	asl $1E.b		; 06 1E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	tsb $0819.w		; 0C 19 08
	tsb $0C04.w		; 0C 04 0C
	tsb $0C.b		; 04 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $1B.b		; 00 1B
	php		; 08
	asl $1F01.w,X		; 1E 01 1F
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $0D.b		; 00 0D
	brk $04.b		; 00 04
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00E0.w		; C0 E0 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	ldy #$D8D0.w		; A0 D0 D8
	sbc $00.b		; E5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $D0.b		; 00 D0
	brk $E5.b		; 00 E5
	brk $B5.b		; 00 B5
	jmp $18EF.w		; 4C EF 18
	sbc [$18.b]		; E7 18
	sed		; F8
	ora [$6F.b]		; 07 6F
	beq  -1.b		; F0 FF
	beq  -2.b		; F0 FE
	beq  -2.b		; F0 FE
	cpx #$680B.w		; E0 0B 68
	ora [$40.b]		; 07 40
	ora $010148.l		; 0F 48 01 01
	cop $FA.b		; 02 FA
	rol $FE.b,X		; 36 FE
	bvs  -8.b		; 70 F8
	pla		; 68
	sed		; F8
	eor $7C.b,S		; 43 7C
	sbc #$0E.b		; E9 0E
	pea $3207.w		; F4 07 32
	sbc ($00.b,S),Y		; F3 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $04F4.w		; 20 F4 04
	plx		; FA
	cop $CD.b		; 02 CD
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cpx #$403F.w		; E0 3F 40
	lda $C0DCC0.l,X		; BF C0 DC C0
	cpx $A4C0.w		; EC C0 A4
	bra  96.b		; 80 60
	rti		; 40

	ldy #$0880.w		; A0 80 08
	inx		; E8
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	sed		; F8
	brk $DC.b		; 00 DC
	brk $6E.b		; 00 6E
	brk $6F.b		; 00 6F
	brk $B7.b		; 00 B7
	brk $BA.b		; 00 BA
	brk $40.b		; 00 40
	rti		; 40

	jsr $B020.w		; 20 20 B0
	bcs -104.b		; B0 98
	clv		; B8
	jmp $4EDC.w		; 4C DC 4E
	dec $6E26.w,X		; DE 26 6E
	bmi 116.b		; 30 74
	trb $0F.b		; 14 0F
	clc		; 18
	asl $1E.b		; 06 1E
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	bpl  42.b		; 10 2A
	trb $34.b		; 14 34
	php		; 08
	stz $08.b,X		; 74 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $5C.b		; 00 5C
	brk $C4.b		; 00 C4
	plp		; 28
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	rol $26.b		; 26 26
	and $3C7E3E.l,X		; 3F 3E 7E 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	cop $27.b		; 02 27
	asl $7F.b		; 06 7F
	bit $387E.w		; 2C 7E 38
	jmp ($00E0.w,X)		; 7C E0 00
	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$4000.w		; C0 00 40
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	cpy #$8040.w		; C0 40 80
	jsr $20C0.w		; 20 C0 20
	cpy #$E020.w		; C0 20 E0
	jsr $30E0.w		; 20 E0 30
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$1C00.w		; C0 00 1C
	ora ($1E.b),Y		; 11 1E
	and ($0C.b,S),Y		; 33 0C
	and $18.b,S		; 23 18
	jsl $10261C.l		; 22 1C 26 10
	bit $18.b		; 24 18
	jmp ($6C00.w)		; 6C 00 6C
	ora $000C01.l		; 0F 01 0C 00
	asl $1C02.w,X		; 1E 02 1C
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bit $30.b		; 24 30
	jsr $2838.w		; 20 38 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	phd		; 0B
	ora [$17.b],Y		; 17 17
	ora $001F2F.l		; 0F 2F 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $13.b		; 00 13
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   8.b		; F0 08
	php		; 08
	beq -12.b		; F0 F4
	sed		; F8
	inc $00FC.w,X		; FE FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $F3.b		; 00 F3
	brk $73.b		; 00 73
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $51.b,S		; 03 51
	eor $1D11.w,X		; 5D 11 1D
	ora $010D.w		; 0D 0D 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $3F.b		; 00 3F
	brk $FD.b		; 00 FD
	ora ($3E.b,X)		; 01 3E
	cpx #$F01F.w		; E0 1F F0
	ora $DD55F8.l		; 0F F8 55 DD
	ora $DD.b,X		; 15 DD
	trb $DC.b		; 14 DC
	brk $C0.b		; 00 C0
	asl $1F00.w		; 0E 00 1F
	brk $2F.b		; 00 2F
	jsr $1017.w		; 20 17 10
	brk $00.b		; 00 00
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
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sec		; 38
	inc $FE38.w,X		; FE 38 FE
	sec		; 38
	inc $FC38.w,X		; FE 38 FC
	clc		; 18
	jsr ($FC78.w,X)		; FC 78 FC
	bcc -100.b		; 90 9C
	bpl  28.b		; 10 1C
	mvp $44,$44		; 44 44 44
	mvp $44,$44		; 44 44 44
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	pla		; 68
	php		; 08
	inx		; E8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $1D7B3F.l		; 5C 3F 7B 1D
	and $1D.b,S		; 23 1D
	adc [$0B.b],Y		; 77 0B
	trb $0F03.w		; 1C 03 0F
	bpl  31.b		; 10 1F
	bvs 127.b		; 70 7F
	bra  63.b		; 80 3F
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $80E0.w		; 20 E0 80
	sbc $FFCDDE.l,X		; FF DE CD FF
	dec $ED.b,X		; D6 ED
	cmp $EDEE.w,X		; DD EE ED
	dec $1FEC.w,X		; DE EC 1F
	sbc $FF06.w,Y		; F9 06 FF
	brk $DE.b		; 00 DE
	brk $FE.b		; 00 FE
	brk $EC.b		; 00 EC
	brk $EE.b		; 00 EE
	brk $DE.b		; 00 DE
	brk $1F.b		; 00 1F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	cpx #$C000.w		; E0 00 C0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$A000.w		; C0 00 A0
	cpy #$00C0.w		; C0 C0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0F.b],Y		; 17 0F
	ora [$0F.b],Y		; 17 0F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	brk $0C.b		; 00 0C
	phb		; 8B
	phb		; 8B
	mvp $28,$44		; 44 44 28
	plp		; 28
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	rts		; 60

	ldy #$0030.w		; A0 30 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	cpy #$0000.w		; C0 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $C0.b		; 00 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$7808.w		; E0 08 78
	tsb $84F0.w		; 0C F0 84
	bit $5886.w,X		; 3C 86 58
.ACCU 16
	rep #$2E		; C2 2E
	sbc $F0.b,S		; E3 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($F804.w,X)		; 7C 04 F8
	bra  62.b		; 80 3E
	cop $5C.b		; 02 5C
	rti		; 40

	brk $0C.b		; 00 0C
	ora $3F04.w,X		; 1D 04 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	cop $7F.b		; 02 7F
	asl $7F.b		; 06 7F
	cop $5F.b		; 02 5F
	cop $07.b		; 02 07
	tsb $03.b		; 04 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
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
	brk $5F.b		; 00 5F
	and $FF7FBF.l,X		; 3F BF 7F FF
	adc $7D7FBF.l,X		; 7F BF 7F 7D
	sbc $F6FFF9.l,X		; FF F9 FF F6
	sbc $26F7EF.l,X		; FF EF F7 26
	ora $2E51.w,Y		; 19 51 2E
	adc [$08.b],Y		; 77 08
	adc $00FF10.l		; 6F 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc [$00.b],Y		; F7 00
	sbc ($FE.b,X)		; E1 FE
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $E2DC.w,X		; FD DC E2
	cpy $3AAA.w		; CC AA 3A
	cpx $0AFC.w		; EC FC 0A
	jsr ($FE8E.w,X)		; FC 8E FE
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $E2.b		; 00 E2
	brk $82.b		; 00 82
	bmi -96.b		; 30 A0
	jsr $0074.w		; 20 74 00
	bcs   0.b		; B0 00
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
	ora [$FC.b]		; 07 FC
	ora ($FC.b,X)		; 01 FC
	cop $FE.b		; 02 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bpl  -1.b		; 10 FF
	clc		; 18
	sbc $67484B.l,X		; FF 4B 48 67
	stz $61.b		; 64 61
	rts		; 60

	adc ($72.b)		; 72 72
	adc $3C79.w,Y		; 79 79 3C
	bit $2C2C.w,X		; 3C 2C 2C
	rol $26.b		; 26 26
	cop $06.b		; 02 06
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	ora ($19.b,X)		; 01 19
	ora #$0219.w		; 09 19 02
	ora ($12.b,S),Y		; 13 12
	and ($02.b,S),Y		; 33 02
	and $01.b,S		; 23 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $0E.b		; 00 0E
	php		; 08
	asl $00.b		; 06 00
	ora $0D11.w,X		; 1D 11 0D
	ora ($1D.b,X)		; 01 1D
	ora ($30.b,X)		; 01 30
	sec		; 38
	rts		; 60

	adc $F1C0.w,Y		; 79 C0 F1
	bra -31.b		; 80 E1
	brk $E1.b		; 00 E1
	brk $C3.b		; 00 C3
	ora ($83.b,X)		; 01 83
	ora ($03.b,X)		; 01 03
	cpy #$9000.w		; C0 00 90
	bpl  32.b		; 10 20
	jsr $6060.w		; 20 60 60
	cmp ($C1.b,X)		; C1 C1
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $000F02.l		; 0F 02 0F 00
	asl $0701.w		; 0E 01 07
	brk $03.b		; 00 03
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
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	rti		; 40

	ora $C03FE0.l,X		; 1F E0 3F C0
	sbc $C503.w		; ED 03 C5
	ora $07.b,S		; 03 07
	brk $06.b		; 00 06
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	sbc $02FF01.l,X		; FF 01 FF 02
	sbc $05FA05.l,X		; FF 05 FA 05
	sbc $FCFF80.l,X		; FF 80 FF FC
	sbc $1FE1FF.l,X		; FF FF E1 1F
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	bra -125.b		; 80 83
	jsr ($7EFC.w,X)		; FC FC 7E
	sbc $70FF00.l,X		; FF 00 FF 70
	cpx #$B0C0.w		; E0 C0 B0
	bcc  92.b		; 90 5C
	mvn $2C,$C7		; 54 C7 2C
	cpx #$789B.w		; E0 9B 78
	ror $9E.b		; 66 9E
	sei		; 78
	sta [$40.b]		; 87 40
	beq   0.b		; F0 00
	cpy #$8828.w		; C0 28 88
	dec A		; 3A
	cop $5F.b		; 02 5F
	rti		; 40

	and [$20.b]		; 27 20
	ora #$11C8.w		; 09 C8 11
	cmp ($03.b),Y		; D1 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $07.b		; 04 07
	ora [$00.b]		; 07 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	ora [$0E.b]		; 07 0E
	asl $00FF.w		; 0E FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FE00.w,X		; FE 00 FE
	brk $BE.b		; 00 BE
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  34.b		; 10 22
	jsl $284545.l		; 22 45 45 28
	and #$1312.w		; 29 12 13
	ror A		; 6A
	rtl		; 6B

	txs		; 9A
	stp		; DB
	plp		; 28
.INDEX 8
	sep #$1E		; E2 1E
	adc ($04.b)		; 72 04
	adc ($0C.b),Y		; 71 0C
	adc $7B0E.w,Y		; 79 0E 7B
	bpl 115.b		; 10 73
	bit $1CE6.w		; 2C E6 1C
	dec $5E.b		; C6 5E
	.db $42, $2C		; 42 2C
	jsr $303E.w		; 20 3E 30
	asl $10.b,X		; 16 10
	trb $10.b		; 14 10
	rol $5A22.w		; 2E 22 5A
	.db $42, $78		; 42 78
	rti		; 40

	bvs -58.b		; 70 C6
	bmi -122.b		; 30 86
	sed		; F8
	sty $8CF8.w		; 8C F8 8C
	rts		; 60

	tsb $0860.w		; 0C 60 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	ldy $FC84.w,X		; BC 84 FC
	sty $70.b		; 84 70
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	jsr ($FC18.w,X)		; FC 18 FC
	php		; 08
	jmp ($7C08.w,X)		; 7C 08 7C
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
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
	brk $C0.b		; 00 C0
	rts		; 60

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  32.b		; F0 20
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	clc		; 18
	ror $0000.w,X		; 7E 00 00
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
	brk $06.b		; 00 06
	ora #$150B.w		; 09 0B 15
	ora $00001F.l		; 0F 1F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$1500.w		; 09 00 15
	brk $1F.b		; 00 1F
	brk $0C.b		; 00 0C
	brk $16.b		; 00 16
	tsb $1E2D.w		; 0C 2D 1E
	and $151E.w		; 2D 1E 15
	asl $0E1D.w		; 0E 1D 0E
	and $391E.w		; 2D 1E 39
	asl $00.b		; 06 00
	brk $04.b		; 00 04
	tsb $1E0C.w		; 0C 0C 1E
	tsb $041E.w		; 0C 1E 04
	asl $0E0C.w		; 0E 0C 0E
	tsb $001E.w		; 0C 1E 00
	asl $7D.b		; 06 7D
	cop $CD.b		; 02 CD
	and ($86.b)		; 32 86
	sed		; F8
	inc $E608.w,X		; FE 08 E6
	php		; 08
	tsb $F8.b		; 04 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	rti		; 40

	rti		; 40

	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$03.b		; E0 03
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	trb $1E03.w		; 1C 03 1E
	brk $0E.b		; 00 0E
	bmi  10.b		; 30 0A
	bit $261C.w,X		; 3C 1C 26
	trb $0E62.w		; 1C 62 0E
	asl A		; 0A
	asl $020A.w		; 0E 0A 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $02.b		; 00 02
	and ($14.b,S),Y		; 33 14
	and [$08.b],Y		; 37 08
	rol $6E20.w		; 2E 20 6E
	bpl  92.b		; 10 5C
	bmi  -8.b		; 30 F8
	jsr $00F8.w		; 20 F8 00
	beq  29.b		; F0 1D
	ora ($0A.b),Y		; 11 0A
	cop $36.b		; 02 36
	rol $1C.b		; 26 1C
	tsb $0828.w		; 0C 28 08
	pha		; 48
	pha		; 48
	bvc  80.b		; 50 50
	beq -16.b		; F0 F0
	tyx		; BB
	cpy $F7.b		; C4 F7
	sed		; F8
	sbc [$78.b],Y		; F7 78
	sbc $60DF70.l		; EF 70 DF 60
	cmp $A0D360.l,X		; DF 60 D3 A0
	beq  64.b		; F0 40
	bra  -1.b		; 80 FF
	cpx #$FE.b		; E0 FE
	adc ($7D.b,X)		; 61 7D
	eor $7B.b,S		; 43 7B
	ora [$77.b]		; 07 77
	ora $F3.b,S		; 03 F3
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	bcs  64.b		; B0 40
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $EC.b		; 00 EC
	brk $EE.b		; 00 EE
	brk $E6.b		; 00 E6
	brk $E7.b		; 00 E7
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bvs 112.b		; 70 70
	rts		; 60

	bvs -92.b		; 70 A4
	ldy $A0.b,X		; B4 A0
	clv		; B8
	ldx #$BA.b		; A2 BA
	jsr $301E.w		; 20 1E 30
	asl $0478.w		; 0E 78 04
	bit $18C0.w,X		; 3C C0 18
	bra -80.b		; 80 B0
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $1E.b		; 00 1E
	asl $0C0C.w,X		; 1E 0C 0C
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$80.b		; E0 80
	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	adc $18.b,S		; 63 18
	.db $42, $1C		; 42 1C
	lsr $1C.b		; 46 1C
	lsr $10.b		; 46 10
	lsr $30.b		; 46 30
	stz $38.b		; 64 38
	jmp ($6C08.w)		; 6C 08 6C
	asl $3E02.w,X		; 1E 02 3E
	cop $38.b		; 02 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $1C.b		; 04 1C
	tsb $10.b		; 04 10
	brk $30.b		; 00 30
	jsr $380B.w		; 20 0B 38
	ora [$1C.b]		; 07 1C
	ora $1C.b		; 05 1C
	ora ($1C.b,X)		; 01 1C
	ora $3C.b		; 05 3C
	phd		; 0B
	sec		; 38
	ora [$70.b],Y		; 17 70
	asl $1760.w		; 0E 60 17
	bpl  11.b		; 10 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $203F00.l		; 0F 00 3F 20
	clc		; 18
	inc $98.b		; E6 98
	inc $1C.b		; E6 1C
	ror $9C.b		; 66 9C
	rol $D8.b		; 26 D8
	.db $62, $5C, $62		; 62 5C 62
	ldy $3CE2.w,X		; BC E2 3C
.ACCU 8
.INDEX 8
	sep #$BC		; E2 BC
	ldy $3C.b		; A4 3C
	bit $D8.b		; 24 D8
	rti		; 40

	cld		; D8
	brk $9C.b		; 00 9C
	brk $9C.b		; 00 9C
	brk $5C.b		; 00 5C
	rti		; 40

	stz $0780.w		; 9C 80 07
	php		; 08
	ora [$08.b]		; 07 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	ldx $64DF.w,Y		; BE DF 64
	mvn $F3,$BB		; 54 BB F3
	tsb $003F.w		; 0C 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00BE00.l,X		; FF 00 BE 00
	stz $00.b		; 64 00
	tyx		; BB
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	phd		; 0B
	phd		; 0B
	trb $17.b		; 14 17
	ora $000F1F.l		; 0F 1F 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	brk $14.b		; 00 14
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	pld		; 2B
	mvn $5F,$23		; 54 23 5F
	eor $FF3FBF.l		; 4F BF 3F FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $54.b		; 00 54
	brk $5F.b		; 00 5F
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1D.b		; 00 1D
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	tsb $05.b		; 04 05
	tsb $05.b		; 04 05
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	inc A		; 1A
	inc A		; 1A
	stz $DF7F.w		; 9C 7F DF
	and $FF1FFF.l,X		; 3F FF 1F FF
	asl $0EFF.w		; 0E FF 0E
	sbc [$18.b]		; E7 18
	sbc [$1E.b]		; E7 1E
	sbc $FF0C03.l,X		; FF 03 0C FF
	asl $0EFF.w		; 0E FF 0E
	sbc $E40F04.l,X		; FF 04 0F E4
	sbc $025E40.l		; EF 40 5E 02
	asl $0301.w,X		; 1E 01 03
	sbc [$00.b],Y		; F7 00
	and $060100.l,X		; 3F 00 01 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	and $2D.b		; 25 2D
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	stp		; DB
	brk $DE.b		; 00 DE
	ora ($F8.b,X)		; 01 F8
	ora [$A8.b]		; 07 A8
	sta $B487B0.l		; 8F B0 87 B4
	sta [$B8.b]		; 87 B8
	sta $3A.b,S		; 83 3A
	sta $CA.b,S		; 83 CA
	inc $E0C0.w		; EE C0 E0
	ora ($01.b,X)		; 01 01
	adc $05.b,X		; 75 05
	adc $7905.w,X		; 7D 05 79
	ora ($7E.b,X)		; 01 7E
	cop $FC.b		; 02 FC
	bra  14.b		; 80 0E
	and $1E.b,S		; 23 1E
	and ($1C.b,S),Y		; 33 1C
	and ($0C.b),Y		; 31 0C
	and ($0C.b),Y		; 31 0C
	ora ($06.b),Y		; 11 06
	ora ($0E.b),Y		; 11 0E
	ora $0906.w,Y		; 19 06 09
	bit $0C20.w,X		; 3C 20 0C
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  30.b		; 10 1E
	bpl  14.b		; 10 0E
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $84.b		; 00 84
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	sbc ($00.b,X)		; E1 00
	cmp [$01.b]		; C7 01
	eor $E01F81.l		; 4F 81 1F E0
	ora $000070.l,X		; 1F 70 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	clv		; B8
	jmp ($3CF8.w,X)		; 7C F8 3C
	ldy $78.b,X		; B4 78
	inx		; E8
	beq -48.b		; F0 D0
	cpx #$A0.b		; E0 A0
	cpy #$40.b		; C0 40
	bra -64.b		; 80 C0
	brk $38.b		; 00 38
	jmp ($3C10.w,X)		; 7C 10 3C
	jsr $C078.w		; 20 78 C0
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	tas		; 1B
	bmi  10.b		; 30 0A
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	bpl  12.b		; 10 0C
	php		; 08
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $8C71.w,X		; DE 71 8C
	ply		; 7A
	bra 124.b		; 80 7C
	cpx #$00.b		; E0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $F6.b		; 00 F6
	sec		; 38
	xce		; FB
	jmp $44004E.l		; 5C 4E 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sec		; 38
	bpl  92.b		; 10 5C
	rol $1EE1.w,X		; 3E E1 1E
	cmp $7C.b,S		; C3 7C
	cmp [$30.b]		; C7 30
	stx $68.b		; 86 68
	sty $98F0.w		; 8C F0 98
	rti		; 40

	clc		; 18
	cpx #$30.b		; E0 30
	ora $407C01.l,X		; 1F 01 7C 40
	dec A		; 3A
	cop $FC.b		; 02 FC
	sty $F0.b		; 84 F0
	bra  96.b		; 80 60
	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $3C.b		; 00 3C
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	.db $62, $3C, $62		; 62 3C 62
	trb $1C62.w		; 1C 62 1C
	adc $1C.b,S		; 63 1C
	adc $0E.b,S		; 63 0E
	adc $1C.b,S		; 63 1C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $3E.b		; 02 3E
	jsl $3E223E.l		; 22 3E 22 3E
	jsl $03203C.l		; 22 3C 20 03
	tsb $04.b		; 04 04
	php		; 08
	ora #$11.b		; 09 11
	bit $17.b		; 24 17
	and ($0E.b),Y		; 31 0E
	ora $000E00.l,X		; 1F 00 0E 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0A00.w		; 0E 00 0A
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	tya		; 98
	ror $FF9D.w,X		; 7E 9D FF
	ora $7E0FF7.l		; 0F F7 0F 7E
	ora ($70.b,X)		; 01 70
	ora $800000.l		; 0F 00 00 80
	jsr $B888.w		; 20 88 B8
	tsb $073D.w		; 0C 3D 07
	ora $001F03.l,X		; 1F 03 1F 00
	ora $1B1F00.l,X		; 1F 00 1F 1B
	cpy $3FC6.w		; CC C6 3F
	and $7FBFDF.l		; 2F DF BF 7F
	eor $BBB3.w,X		; 5D B3 BB
	cmp $4C.b		; C5 4C
	and ($3F.b,S),Y		; 33 3F
	brk $CC.b		; 00 CC
	brk $3F.b		; 00 3F
	brk $DF.b		; 00 DF
	brk $7F.b		; 00 7F
	brk $B3.b		; 00 B3
	brk $C5.b		; 00 C5
	brk $33.b		; 00 33
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	lda $9FBFFF.l,X		; BF FF BF 9F
	sbc $F3FFC5.l,X		; FF C5 FF F3
	cmp $FFFEF5.l		; CF F5 FE FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $B7.b		; 00 B7
	brk $77.b		; 00 77
	brk $36.b		; 00 36
	brk $22.b		; 00 22
	jsl $042121.l		; 22 21 21 04
	tsb $04.b		; 04 04
	bit $24.b		; 24 24
	stz $22.b		; 64 22
	ror A		; 6A
	bit $2C.b		; 24 2C
	tsb $0D.b		; 04 0D
	sbc $00F701.l,X		; FF 01 F7 00
	sbc [$00.b],Y		; F7 00
	inc $00.b,X		; F6 00
	inc $00.b,X		; F6 00
	sbc ($00.b)		; F2 00
	sbc ($00.b)		; F2 00
	xce		; FB
	brk $08.b		; 00 08
	ora #$82.b		; 09 82
	txa		; 8A
	eor $4B.b,S		; 43 4B
	ora ($1B.b)		; 12 1B
	eor ($5B.b)		; 52 5B
	bvc  93.b		; 50 5D
	bvc  93.b		; 50 5D
	lda $00BD.w,Y		; B9 BD 00
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
	brk $3C.b		; 00 3C
	sta ($5C.b,X)		; 81 5C
	cmp ($1E.b,X)		; C1 1E
	cmp ($3F.b,X)		; C1 3F
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $300730.l,X		; 1F 30 07 30
	phd		; 0B
	clc		; 18
	inc $3E80.w,X		; FE 80 3E
	brk $7F.b		; 00 7F
	eor ($1E.b,X)		; 41 1E
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	sbc $3C.b,S		; E3 3C
	eor $DD26.w,Y		; 59 26 DD
	rol $88.b		; 26 88
	and $DE.b,S		; 23 DE
	lda ($C4.b,S),Y		; B3 C4
	sbc ($E7.b),Y		; F1 E7
	sbc $1CE7.w,Y		; F9 E7 1C
	brk $A0.b		; 00 A0
	trb $3884.w		; 1C 84 38
	rts		; 60

	rol $8C62.w,X		; 3E 62 8C
	bra -33.b		; 80 DF
	cmp ($0E.b),Y		; D1 0E
	inx		; E8
	ora $E0.b,S		; 03 E0
	bmi  76.b		; 30 4C
	bvs  12.b		; 70 0C
	bvs  12.b		; 70 0C
	jmp ($5C00.w,X)		; 7C 00 5C
	jsr $305C.w		; 20 5C 30
	lsr $3638.w,X		; 5E 38 36
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $3E.b		; 00 3E
	bpl  61.b		; 10 3D
	cop $3E.b		; 02 3E
	cop $3F.b		; 02 3F
	ora ($3F.b,X)		; 01 3F
	brk $1B.b		; 00 1B
	brk $09.b		; 00 09
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
	bra -64.b		; 80 C0
	jsr $00F0.w		; 20 F0 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
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
	brk $FE.b		; 00 FE
	jsr $60DC.w		; 20 DC 60
	sec		; 38
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $0D05.w		; 0C 05 0D
	brk $09.b		; 00 09
	cop $1B.b		; 02 1B
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	cop $00.b		; 02 00
	ora [$01.b]		; 07 01
	tsb $0008.w		; 0C 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bne  80.b		; D0 50
	ldy $CAB4.w		; AC B4 CA
	phx		; DA
	jsr ($FFEC.w,X)		; FC EC FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	ldy $CA00.w		; AC 00 CA
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	inc $E6F9.w,X		; FE F9 E6
	jsr ($588A.w,X)		; FC 8A 58
	inc $CCFA.w		; EE FA CC
	jmp ($7C82.w,X)		; 7C 82 7C
	stx $F0.b		; 86 F0
	jmp $00FE.w		; 4C FE 00
	inc $00.b		; E6 00
	.db $82, $00, $C2		; 82 00 C2
	rts		; 60

	cpy #$40.b		; C0 40
	ldy $B800.w,X		; BC 00 B8
	brk $30.b		; 00 30
	brk $6F.b		; 00 6F
	sta $8C75.w,Y		; 99 75 8C
	sbc $B007.w,Y		; F9 07 B0
	ora $A0.b,S		; 03 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $06.b		; 00 06
	cpy #$03.b		; C0 03
	cpy #$02.b		; C0 02
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cli		; 58
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $5050.w		; 20 50 50
	ldy #$A0.b		; A0 A0
	bpl -80.b		; 10 B0
	bmi -80.b		; 30 B0
	rti		; 40

	cpy #$1E.b		; C0 1E
	php		; 08
	rol $3A10.w,X		; 3E 10 3A
	brk $1E.b		; 00 1E
	tsb $76.b		; 04 76
	tsb $7E.b		; 04 7E
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rti		; 40

	beq  96.b		; F0 60
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	ldy #$A0.b		; A0 A0
	bcc -112.b		; 90 90
	rts		; 60

	sed		; F8
	bvc -40.b		; 50 D8
	bpl -36.b		; 10 DC
	plp		; 28
	cpx $EE28.w		; EC 28 EE
	tsb $E6.b		; 04 E6
	sty $0CE6.w		; 8C E6 0C
	ror $90.b,X		; 76 90
	bcc -88.b		; 90 A8
	dey		; 88
	pla		; 68
	pha		; 48
	bvc  64.b		; 50 40
	mvn $B8,$44		; 54 44 B8
	ldy #$38.b		; A0 38
	jsr $32BA.w		; 20 BA 32
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $E31E08.l		; 0F 08 1E E3
	jmp $86BCC2.l		; 5C C2 BC 86
	sei		; 78
	asl $F8.b		; 06 F8
	tsb $08E0.w		; 0C E0 08
	cpy #$10.b		; C0 10
	bra  32.b		; 80 20
	bit $BE20.w,X		; 3C 20 BE
	.db $82, $7A, $02		; 82 7A 02
	jsr ($F004.w,X)		; FC 04 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	jsr $0E03.w		; 20 03 0E
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $180F18.l		; 0F 18 0F 18
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sep #$0E		; E2 0E
	sep #$0E		; E2 0E
	cmp ($1E.b)		; D2 1E
	cmp $1F.b,S		; C3 1F
	sbc ($37.b,X)		; E1 37
	sta ($27.b,X)		; 81 27
	bra  35.b		; 80 23
	cpy #$63.b		; C0 63
	sbc $04.b,X		; F5 04
	sbc $04.b,X		; F5 04
	sbc $04.b		; E5 04
	beq  16.b		; F0 10
	rep #$02		; C2 02
	cpx #$20.b		; E0 20
	cmp ($01.b,X)		; C1 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	ora $0007.w,Y		; 19 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	tsb $07.b		; 04 07
	php		; 08
	asl $0F01.w		; 0E 01 0F
	asl $F513.w,X		; 1E 13 F5
	adc $E982.w,Y		; 79 82 E9
	asl $4C72.w		; 0E 72 4C
	tsb $00.b		; 04 00
	php		; 08
	brk $01.b		; 00 01
	cop $06.b		; 02 06
	asl $28.b		; 06 28
	and ($FC.b,X)		; 21 FC
	bra -12.b		; 80 F4
	tsb $88.b		; 04 88
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	asl A		; 0A
	sty $6B.b		; 84 6B
	adc #$97.b		; 69 97
	sbc [$FF.b]		; E7 FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl A		; 0A
	brk $6B.b		; 00 6B
	brk $97.b		; 00 97
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$60.b		; E0 60
	tya		; 98
	pla		; 68
	inc $F6.b,X		; F6 F6
	sbc $FFFB.w,Y		; F9 FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	tya		; 98
	brk $F6.b		; 00 F6
	brk $F9.b		; 00 F9
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$80.b		; A0 80
	cpx #$C0.b		; E0 C0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $3F.b		; 00 3F
	cmp $9C3FCE.l,X		; DF CE 3F 9C
	adc $BBB847.l,X		; 7F 47 B8 BB
	rti		; 40

	ror $FB84.w,X		; 7E 84 FB
	ora $F8.b		; 05 F8
	ora $DF.b		; 05 DF
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $BB.b		; 00 BB
	brk $07.b		; 00 07
	rti		; 40

	ora $A0.b,S		; 03 A0
	asl $A4.b		; 06 A4
	ora $01.b,S		; 03 01
	lsr $00B3.w,X		; 5E B3 00
	sed		; F8
	jmp ($7E83.w,X)		; 7C 83 7E
	ora $FF.b		; 05 FF
	sta $7B.b		; 85 7B
	sta $0BF4.w		; 8D F4 0B
	sed		; F8
	ora [$AC.b]		; 07 AC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $85.b		; 00 85
	ora $00.b		; 05 00
	tsb $80.b		; 04 80
	sty $0B03.w		; 8C 03 0B
	tsb $14.b		; 04 14
	ora $003F00.l,X		; 1F 00 3F 00
	adc $003F00.l,X		; 7F 00 3F 00
	adc $F900.w,X		; 7D 00 F9
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	brk $0F.b		; 00 0F
	ora $3C1E1E.l		; 0F 1E 1E 3C
	bit $1818.w,X		; 3C 18 18
	jsr $7022.w		; 20 22 70
	ror $21.b,X		; 76 21
	and $09.b		; 25 09
	ora $0DFD.w		; 0D FD 0D
	ldx $5F02.w,Y		; BE 02 5F
	ora ($57.b,X)		; 01 57
	brk $5B.b		; 00 5B
	brk $4D.b		; 00 4D
	brk $26.b		; 00 26
	brk $B3.b		; 00 B3
	brk $00.b		; 00 00
	ora $014302.l		; 0F 02 43 01
	lda ($00.b,X)		; A1 00
	tay		; A8
	php		; 08
	ldy $B604.w		; AC 04 B6
	cop $DB.b		; 02 DB
	sta ($DD.b),Y		; 91 DD
	ora $03.b		; 05 03
	ora $1F03.w		; 0D 03 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	tsb $7C.b		; 04 7C
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F04.l		; 0F 04 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000600.l		; 0F 00 06 00
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
	phd		; 0B
	sec		; 38
	asl $70.b,X		; 16 70
	bit $1861.w		; 2C 61 18
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sty $60.b		; 84 60
	php		; 08
	cpy #$8010.w		; C0 10 80
	jsr $1017.w		; 20 17 10
	and $011F20.l		; 2F 20 1F 01
	jmp ($F840.w,X)		; 7C 40 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	bpl   7.b		; 10 07
	bpl  31.b		; 10 1F
	bmi  30.b		; 30 1E
	bmi  14.b		; 30 0E
	jsr $210F.w		; 20 0F 21
	trb $1C21.w		; 1C 21 1C
	adc ($1F.b,X)		; 61 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora ($3E.b,X)		; 01 3E
	jsr $4100.w		; 20 00 41
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	ora $72.b,S		; 03 72
	ora ($7F.b,X)		; 01 7F
	ora $461F5F.l,X		; 1F 5F 1F 46
	asl $0067.w,X		; 1E 67 00
	ora $001F00.l,X		; 1F 00 1F 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	asl $1E1F.w,X		; 1E 1F 1E
	and $003F00.l,X		; 3F 00 3F 00
	clc		; 18
	brk $00.b		; 00 00
	asl $CC0E.w		; 0E 0E CC
	adc ($E4.b),Y		; 71 E4
	xce		; FB
	adc $FB.b,X		; 75 FB
	adc $033FFB.l,X		; 7F FB 3F 03
	cmp #$1719.w		; C9 19 17
	ora $40EF0F.l		; 0F 0F EF 40
	adc ($E0.b,S),Y		; 73 E0
	xce		; FB
	bvs  -5.b		; 70 FB
	sec		; 38
	xce		; FB
	ora ($C3.b,X)		; 01 C3
	sta ($BF.b,X)		; 81 BF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora $19.b,S		; 03 19
	clc		; 18
	and [$25.b]		; 27 25
	tas		; 1B
	ora [$2F.b],Y		; 17 2F
	pld		; 2B
	asl $17.b,X		; 16 17
	sec		; 38
	and #$0616.w		; 29 16 06
	ora ($19.b,X)		; 01 19
	brk $27.b		; 00 27
	brk $1B.b		; 00 1B
	brk $2F.b		; 00 2F
	brk $16.b		; 00 16
	brk $38.b		; 00 38
	brk $16.b		; 00 16
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	sta $EFFFCF.l,X		; 9F CF FF EF
	sbc [$FF.b],Y		; F7 FF
	sbc [$B3.b],Y		; F7 B3
	adc $9EBF78.l,X		; 7F 78 BF 9E
	adc $FF3F.w,Y		; 79 3F FF
	sta $00FF00.l,X		; 9F 00 FF 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	adc $00BF00.l,X		; 7F 00 BF 00
	adc $FF00.w,Y		; 79 00 FF
	brk $FF.b		; 00 FF
	sbc $E8FFF6.l,X		; FF F6 FF E8
	pea $F5FF.w		; F4 FF F5
	lda $F06FF1.l		; AF F1 6F F0
	ldx $7FC1.w,Y		; BE C1 7F
	lda ($FF.b,X)		; A1 FF
	brk $FF.b		; 00 FF
	brk $F1.b		; 00 F1
	asl $FC.b		; 06 FC
	tsb $F6.b		; 04 F6
	brk $F7.b		; 00 F7
	brk $CE.b		; 00 CE
	brk $BE.b		; 00 BE
	brk $20.b		; 00 20
	bne  48.b		; D0 30
	cpy #$C030.w		; C0 30 C0
	rts		; 60

	bra -96.b		; 80 A0
	rti		; 40

	ldy #$00C0.w		; A0 C0 00
	cpy #$8000.w		; C0 00 80
	bne   0.b		; D0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	adc ($ED.b)		; 72 ED
	inc A		; 1A
	sbc [$08.b],Y		; F7 08
	sbc $C6FF96.l		; EF 96 FF C6
	cmp $7B36.w,Y		; D9 36 7B
	tsb $7F.b		; 04 7F
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	rts		; 60

	sei		; 78
	bvs -74.b		; 70 B6
	ldx #$C0C6.w		; A2 C6 C0
	ror $40.b,X		; 76 40
	bit $79B8.w,X		; 3C B8 79
	sbc $0CF0.w,Y		; F9 F0 0C
	bne  96.b		; D0 60
	bcs -64.b		; B0 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $A0.b		; 00 A0
	cpy #$8060.w		; C0 60 80
	cpy #$0000.w		; C0 00 00
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	jsr $60E0.w		; 20 E0 60
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	rti		; 40

	bra -128.b		; 80 80
	tad		; 5B
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $3C.b		; 00 3C
	ora $08.b,S		; 03 08
	ora [$01.b]		; 07 01
	ora [$09.b]		; 07 09
	and $6E6C.w		; 2D 6C 6E
	jmp ($2E6E.w)		; 6C 6E 2E
	and $092C2C.l		; 2F 2C 2C 09
	ora #$0101.w		; 09 01 01
	cop $02.b		; 02 02
	sta $DC00.w,Y		; 99 00 DC
	brk $CE.b		; 00 CE
	brk $EE.b		; 00 EE
	brk $E6.b		; 00 E6
	brk $F7.b		; 00 F7
	cpy #$A0BF.w		; C0 BF A0
	adc ($07.b),Y		; 71 07
	dey		; 88
	inc $EFCC.w		; EE CC EF
	dec $F7.b		; C6 F7
	ror $77.b		; 66 77
	jsl $18103B.l		; 22 3B 10 18
	rti		; 40

	brk $FC.b		; 00 FC
	tsb $80.b		; 04 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$F020.w		; C0 20 F0
	php		; 08
	jmp ($3E00.w,X)		; 7C 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	beq  79.b		; F0 4F
	ora #$00F7.w		; 09 F7 00
	eor [$D8.b],Y		; 57 D8
	asl $0070.w		; 0E 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sbc ($F0.b,X)		; E1 F0
	ora ($F8.b,X)		; 01 F8
	brk $A8.b		; 00 A8
	dey		; 88
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$C5FF.w		; E0 FF C5
	ora [$FF.b]		; 07 FF
	brk $A0.b		; 00 A0
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	plx		; FA
	cop $FF.b		; 02 FF
	brk $51.b		; 00 51
	ora ($00.b),Y		; 11 00
	brk $A0.b		; 00 A0
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$F80C.w		; E0 0C F8
	tsb $0470.w		; 0C 70 04
	jsr ($B886.w,X)		; FC 86 B8
	sta $C0.b,S		; 83 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $7E.b		; 00 7E
	cop $5E.b		; 02 5E
	cmp $2C.b,S		; C3 2C
	sbc ($17.b,X)		; E1 17
	adc ($0E.b),Y		; 71 0E
	sec		; 38
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	cop $06.b		; 02 06
	ldy $5F80.w,X		; BC 80 5F
	eor ($2E.b,X)		; 41 2E
	jsr $1017.w		; 20 17 10
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $FF7E.w,Y		; B9 7E FF
	sbc $D5FFFF.l,X		; FF FF FF D5
	sbc ($83.b,X)		; E1 83
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora ($FB.b,X)		; 01 FB
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	cpy #$E0F0.w		; C0 F0 E0
	bmi  96.b		; 30 60
	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cpy #$20E0.w		; C0 E0 20
	cpx #$C040.w		; E0 40 C0
	brk $00.b		; 00 00
	sec		; 38
	.db $42, $38		; 42 38
	.db $42, $3C		; 42 3C
	lsr $3C.b		; 46 3C
	lsr $30.b		; 46 30
	mvp $44,$30		; 44 30 44
	sec		; 38
	jmp $4C38.w		; 4C 38 4C
	rol $3C02.w,X		; 3E 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jmp $0C70.w		; 4C 70 0C
	bvs  12.b		; 70 0C
	jmp ($5C00.w,X)		; 7C 00 5C
	jsr $305C.w		; 20 5C 30
	lsr $3638.w,X		; 5E 38 36
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	and ($0C.b),Y		; 31 0C
	adc ($3C.b,X)		; 61 3C
	adc ($1E.b,X)		; 61 1E
	cmp $58.b,S		; C3 58
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $3C, $86		; 82 3C 86
	jmp ($1E84.w,X)		; 7C 84 1E
	bpl  62.b		; 10 3E
	jsr $405E.w		; 20 5E 40
	jmp ($3E40.w,X)		; 7C 40 3E
	cop $7C.b		; 02 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $03.b		; 00 03
	clc		; 18
	asl $30.b		; 06 30
	tsb $4831.w		; 0C 31 48
	jsl $D03650.l		; 22 50 36 D0
	bit $00F8.w,X		; 3C F8 00
	sed		; F8
	brk $0F.b		; 00 0F
	php		; 08
	ora $303E10.l,X		; 1F 10 3E 30
	bit $2820.w,X		; 3C 20 28
	jsr $0808.w		; 20 08 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $103F08.l,X		; 1F 08 3F 10
	dec A		; 3A
	brk $1E.b		; 00 1E
	tsb $76.b		; 04 76
	tsb $7E.b		; 04 7E
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $40.b		; 00 40
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $7D.b		; 00 7D
	brk $60.b		; 00 60
	rti		; 40

	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $D8.b		; 00 D8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	bpl -112.b		; 10 90
	tya		; 98
	brk $C4.b		; 00 C4
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	clc		; 18
	bra -32.b		; 80 E0
	rti		; 40

	sei		; 78
	jsr $20B0.w		; 20 B0 20
	ldy #$0000.w		; A0 00 00
	jsr $C020.w		; 20 20 C0
	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $01.b		; 06 01
	tsb $0C07.w		; 0C 07 0C
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $E31E08.l		; 0F 08 1E E3
	jmp $86BCC2.l		; 5C C2 BC 86
	sei		; 78
	asl $F8.b		; 06 F8
	tsb $08E0.w		; 0C E0 08
	cpy #$8010.w		; C0 10 80
	jsr $203C.w		; 20 3C 20
	ldx $7A82.w,Y		; BE 82 7A
	cop $FC.b		; 02 FC
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	asl $09.b		; 06 09
	ora $0012.w		; 0D 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $06.b		; 04 06
	brk $0C.b		; 00 0C
	brk $71.b		; 00 71
	stz $08.b,X		; 74 08
	nop		; EA
	cpx $F5.b		; E4 F5
	cpy #$9E30.w		; C0 30 9E
	ror $DE3E.w		; 6E 3E DE
	sbc $EB7E.w,X		; FD 7E EB
	cpx $FE70.w		; EC 70 FE
	php		; 08
	ora $E00F00.l,X		; 1F 00 0F E0
	and $9C4FCE.l		; 2F CE 4F 9C
	sta $C07E18.l,X		; 9F 18 7E C0
	jsr ($24CB.w,X)		; FC CB 24
	sbc [$00.b],Y		; F7 00
	tda		; 7B
	ora ($9E.b,X)		; 01 9E
	adc ($FF.b),Y		; 71 FF
	clc		; 18
	sbc [$3E.b]		; E7 3E
	lda $16F946.l,X		; BF 46 F9 16
	sec		; 38
	jsr $000C.w		; 20 0C 00
	ora $80.b		; 05 80
	adc ($00.b),Y		; 71 00
	sed		; F8
	cpx #$C2FE.w		; E0 FE C2
	inc $A0.b		; E6 A0
	cmp [$C1.b],Y		; D7 C1
	bra   0.b		; 80 00
	cpy #$2080.w		; C0 80 20
	cpy #$10E0.w		; C0 E0 10
	beq  24.b		; F0 18
	inx		; E8
	tsb $26F0.w		; 0C F0 26
	clv		; B8
	.db $62, $00, $00		; 62 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	cpy #$C0C0.w		; C0 C0 C0
	bpl   0.b		; 10 00
	trb $1E04.w		; 1C 04 1E
	cop $03.b		; 02 03
	asl $0C01.w		; 0E 01 0C
	ora $0C.b		; 05 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $180F18.l		; 0F 18 0F 18
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sep #$0E		; E2 0E
	sep #$0E		; E2 0E
	cmp ($1E.b)		; D2 1E
	cmp $1F.b,S		; C3 1F
	sbc ($37.b,X)		; E1 37
	sta ($27.b,X)		; 81 27
	bra  35.b		; 80 23
	cpy #$F563.w		; C0 63 F5
	tsb $F5.b		; 04 F5
	tsb $E5.b		; 04 E5
	tsb $F0.b		; 04 F0
	bpl -62.b		; 10 C2
	cop $E0.b		; 02 E0
	jsr $01C1.w		; 20 C1 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	brk $0F.b		; 00 0F
	ora $0F16.w		; 0D 16 0F
	ora $000E15.l,X		; 1F 15 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $16.b		; 00 16
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	brk $BF.b		; 00 BF
	lsr $BF5F.w		; 4E 5F BF
	lda $7FFF7F.l,X		; BF 7F FF 7F
	lda $FF7F7F.l,X		; BF 7F 7F FF
	sbc $F93EFF.l,X		; FF FF 3E F9
	lsr $A700.w		; 4E 00 A7
	clc		; 18
	eor $205F30.l		; 4F 30 5F 20
	adc $38C700.l,X		; 7F 00 C7 38
	sta $01F860.l,X		; 9F 60 F8 01
	ora $003F00.l,X		; 1F 00 3F 00
	adc $003F00.l,X		; 7F 00 3F 00
	adc $F900.w,X		; 7D 00 F9
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	brk $0F.b		; 00 0F
	ora $3C1E1E.l		; 0F 1E 1E 3C
	bit $1818.w,X		; 3C 18 18
	jsr $7022.w		; 20 22 70
	ror $21.b,X		; 76 21
	and $09.b		; 25 09
	ora $0DFD.w		; 0D FD 0D
	ldx $5F02.w,Y		; BE 02 5F
	ora ($57.b,X)		; 01 57
	brk $5B.b		; 00 5B
	brk $4D.b		; 00 4D
	brk $26.b		; 00 26
	brk $B3.b		; 00 B3
	brk $00.b		; 00 00
	ora $014302.l		; 0F 02 43 01
	lda ($00.b,X)		; A1 00
	tay		; A8
	php		; 08
	ldy $B604.w		; AC 04 B6
	cop $DB.b		; 02 DB
	sta ($DD.b),Y		; 91 DD
	bit $2F1C.w,X		; 3C 1C 2F
	asl $1637.w		; 0E 37 16
	ora ($02.b,S),Y		; 13 02
	ora $0E0D0E.l,X		; 1F 0E 0D 0E
	bit $1E1C.w		; 2C 1C 1E
	trb $1E1C.w		; 1C 1C 1E
	asl $161E.w		; 0E 1E 16
	asl $0E02.w,X		; 1E 02 0E
	tsb $0C0E.w		; 0C 0E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	php		; 08
	bit $3C5A.w,X		; 3C 5A 3C
	clv		; B8
	sei		; 78
	ldy $78.b,X		; B4 78
	sty $30.b,X		; 94 30
	iny		; C8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	cpx #$3C18.w		; E0 18 3C
	bpl 124.b		; 10 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ldy #$C030.w		; A0 30 C0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$F80C.w		; E0 0C F8
	tsb $0470.w		; 0C 70 04
	jsr ($B886.w,X)		; FC 86 B8
	sta $C0.b,S		; 83 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $7E.b		; 00 7E
	cop $5E.b		; 02 5E
	cmp $2C.b,S		; C3 2C
	sbc ($17.b,X)		; E1 17
	adc ($0E.b),Y		; 71 0E
	sec		; 38
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	cop $06.b		; 02 06
	ldy $5F80.w,X		; BC 80 5F
	eor ($2E.b,X)		; 41 2E
	jsr $1017.w		; 20 17 10
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	phd		; 0B
	sec		; 38
	asl $70.b,X		; 16 70
	bit $1861.w		; 2C 61 18
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sty $60.b		; 84 60
	php		; 08
	cpy #$8010.w		; C0 10 80
	jsr $1017.w		; 20 17 10
	and $011F20.l		; 2F 20 1F 01
	jmp ($F840.w,X)		; 7C 40 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	ora ($1B.b),Y		; 11 1B
	and $1B.b,S		; 23 1B
	and $18.b,S		; 23 18
	and ($3C.b,X)		; 21 3C
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $E0C7.w		; 0E C7 E0
	sta $8F27C0.l,X		; 9F C0 27 8F
	rti		; 40

	bpl -49.b		; 10 CF
	ora $1F3F9F.l		; 0F 9F 3F 1F
	ora $80EF0F.l,X		; 1F 0F EF 80
	sed		; F8
	ora ($E1.b,X)		; 01 E1
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	ora $7F0F3F.l		; 0F 3F 0F 7F
	ora $FF06FF.l		; 0F FF 06 FF
	inc $39.b		; E6 39
	sta $00FB60.l,X		; 9F 60 FB 00
	sed		; F8
	bra -48.b		; 80 D0
	cpy #$C0A0.w		; C0 A0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	and $FB00.w,Y		; 39 00 FB
	txy		; 9B
	bvs 112.b		; 70 70
	jsr $80A0.w		; 20 A0 80
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	dec $CC23.w,X		; DE 23 CC
	and ($C7.b),Y		; 31 C7
	ora $0C82.w,Y		; 19 82 0C
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ldy $9FA0.w,X		; BC A0 9F
	sta ($8E.b),Y		; 91 8E
	dey		; 88
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora $301E30.l,X		; 1F 30 1E 30
	asl $0F20.w		; 0E 20 0F
	and ($1C.b,X)		; 21 1C
	and ($1C.b,X)		; 21 1C
	adc ($1F.b,X)		; 61 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora ($3E.b,X)		; 01 3E
	jsr $4100.w		; 20 00 41
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora $10.b		; 05 10
	adc $FF9D6B.l		; 6F 6B 9D FF
	ora $132C.w,X		; 1D 2C 13
	eor $2B.b,X		; 55 2B
	.db $62, $1D, $01		; 62 1D 01
	tsb $05.b		; 04 05
	brk $6F.b		; 00 6F
	brk $9D.b		; 00 9D
	brk $1D.b		; 00 1D
	brk $13.b		; 00 13
	brk $2B.b		; 00 2B
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	rol $FBED.w,X		; 3E ED FB
	sbc [$F8.b],Y		; F7 F8
	sbc ($FC.b,S),Y		; F3 FC
	sbc ($FC.b,S),Y		; F3 FC
	xba		; EB
	inc $C5.b,X		; F6 C5
	xce		; FB
	sty $8BF8.w		; 8C F8 8B
	stz $F9.b		; 64 F9
	ora ($FB.b,X)		; 01 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $F1.b		; 00 F1
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	bpl  56.b		; 10 38
	jsr $005B.w		; 20 5B 00
	sbc $FD00.w,X		; FD 00 FD
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $3C.b		; 00 3C
	ora $08.b,S		; 03 08
	ora [$01.b]		; 07 01
	ora [$09.b]		; 07 09
	and $6E6C.w		; 2D 6C 6E
	jmp ($2E6E.w)		; 6C 6E 2E
	and $092C2C.l		; 2F 2C 2C 09
	ora #$0101.w		; 09 01 01
	cop $02.b		; 02 02
	sta $DC00.w,Y		; 99 00 DC
	brk $CE.b		; 00 CE
	brk $EE.b		; 00 EE
	brk $E6.b		; 00 E6
	brk $F7.b		; 00 F7
	cpy #$A0BF.w		; C0 BF A0
	adc ($07.b),Y		; 71 07
	dey		; 88
	inc $EFCC.w		; EE CC EF
	dec $F7.b		; C6 F7
	ror $77.b		; 66 77
	jsl $18103B.l		; 22 3B 10 18
	rti		; 40

	brk $FC.b		; 00 FC
	tsb $0A.b		; 04 0A
	asl $1A.b		; 06 1A
	ora [$3F.b]		; 07 3F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	php		; 08
	sed		; F8
	bpl   5.b		; 10 05
	tsb $01.b		; 04 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	.db $42, $38		; 42 38
	.db $42, $3C		; 42 3C
	lsr $3C.b		; 46 3C
	lsr $30.b		; 46 30
	mvp $44,$30		; 44 30 44
	sec		; 38
	jmp $4C38.w		; 4C 38 4C
	rol $3C02.w,X		; 3E 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jmp $0C70.w		; 4C 70 0C
	bvs  12.b		; 70 0C
	jmp ($5C00.w,X)		; 7C 00 5C
	jsr $305C.w		; 20 5C 30
	lsr $3638.w,X		; 5E 38 36
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	and ($0C.b),Y		; 31 0C
	adc ($3C.b,X)		; 61 3C
	adc ($1E.b,X)		; 61 1E
	cmp $58.b,S		; C3 58
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $3C, $86		; 82 3C 86
	jmp ($1E84.w,X)		; 7C 84 1E
	bpl  62.b		; 10 3E
	jsr $405E.w		; 20 5E 40
	jmp ($3E40.w,X)		; 7C 40 3E
	cop $7C.b		; 02 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	jsr $047A.w		; 20 7A 04
	jmp ($7E04.w,X)		; 7C 04 7E
	cop $7E.b		; 02 7E
	ora ($37.b,X)		; 01 37
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	rti		; 40

	cpx #$F000.w		; E0 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $1803.w		; 0C 03 18
	asl $30.b		; 06 30
	tsb $4831.w		; 0C 31 48
	jsl $D03650.l		; 22 50 36 D0
	bit $00F8.w,X		; 3C F8 00
	ora [$04.b]		; 07 04
	ora $101F08.l		; 0F 08 1F 10
	rol $3C30.w,X		; 3E 30 3C
	jsr $2028.w		; 20 28 20
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	ora $103F08.l,X		; 1F 08 3F 10
	dec A		; 3A
	brk $1E.b		; 00 1E
	tsb $76.b		; 04 76
	tsb $7E.b		; 04 7E
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $40.b		; 00 40
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	cpy #$E090.w		; C0 90 E0
	clc		; 18
	cpx #$E418.w		; E0 18 E4
	ldy $48.b,X		; B4 48
	beq  76.b		; F0 4C
	pla		; 68
	bvc   0.b		; 50 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E4.b		; 00 E4
	brk $48.b		; 00 48
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	bra -48.b		; 80 D0
	rts		; 60

	cpx #$E050.w		; E0 50 E0
	bvs -128.b		; 70 80
	rts		; 60

	cpy #$8060.w		; C0 60 80
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$8000.w		; A0 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rti		; 40

	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $D8.b		; 00 D8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	bpl -112.b		; 10 90
	tya		; 98
	brk $C4.b		; 00 C4
	brk $68.b		; 00 68
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	clc		; 18
	bra -32.b		; 80 E0
	rti		; 40

	sei		; 78
	jsr $20B0.w		; 20 B0 20
	ldy #$0000.w		; A0 00 00
	jsr $C020.w		; 20 20 C0
	brk $F0.b		; 00 F0
	bpl  63.b		; 10 3F
	ora $883F5F.l,X		; 1F 5F 3F 88
	adc $7C7CFB.l,X		; 7F FB 7C 7C
	clc		; 18
	asl $2700.w,X		; 1E 00 27
	brk $13.b		; 00 13
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7C.b		; 00 7C
	brk $18.b		; 00 18
	ora $00.b,S		; 03 00
	ora ($06.b,X)		; 01 06
	asl $0E02.w,X		; 1E 02 0E
	sbc [$E8.b],Y		; F7 E8
	lda [$F8.b]		; A7 F8
	adc [$9C.b]		; 67 9C
	php		; 08
	and [$2F.b],Y		; 37 2F
	asl $0F51.w		; 0E 51 0F
	stz $11.b		; 64 11
	cpy $E721.w		; CC 21 E7
	brk $E7.b		; 00 E7
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	dec $0E.b		; C6 0E
	dec $A505.w,X		; DE 05 A5
	asl $1E80.w		; 0E 80 1E
	brk $2F.b		; 00 2F
	dey		; 88
	adc $403F80.l		; 6F 80 3F 40
	adc $0E7F06.l,X		; 7F 06 7F 0E
	and $0E3F1E.l,X		; 3F 1E 3F 0E
	adc $00700F.l,X		; 7F 0F 70 00
	adc ($01.b),Y		; 71 01
	jsr $0400.w		; 20 00 04
	ora [$0E.b]		; 07 0E
	ora $061F0E.l		; 0F 0E 1F 06
	ora $EE0F06.l,X		; 1F 06 0F EE
	php		; 08
	sbc $0CFF07.l		; EF 07 FF 0C
	sbc [$08.b]		; E7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $18.b		; 00 18
	dec $D7.b		; C6 D7
	cpy $C3CC.w		; CC CC C3
	stp		; DB
	sbc $E3.b,S		; E3 E3
	sbc $5E5EEF.l		; EF EF 5E 5E
	asl $3D1E.w,X		; 1E 1E 3D
	brk $E7.b		; 00 E7
	brk $9F.b		; 00 9F
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($84.b,X)		; 01 84
	ora $C4.b,S		; 03 C4
	cop $FC.b		; 02 FC
	brk $0B.b		; 00 0B
	php		; 08
	and $38.b,S		; 23 38
	tas		; 1B
	sei		; 78
	ora $00.b,S		; 03 00
	dec A		; 3A
	sec		; 38
	cop $7A.b		; 02 7A
	cpy #$38F8.w		; C0 F8 38
	sec		; 38
	sbc ($04.b,S),Y		; F3 04
	sbc [$0C.b]		; E7 0C
	stx $9F38.w		; 8E 38 9F
	sbc ($0C.b),Y		; F1 0C
	sbc ($3E.b,X)		; E1 3E
	adc $18.b,S		; 63 18
	.db $42, $7C		; 42 7C
	dec $FF.b		; C6 FF
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$20.b]		; E7 20
	lsr $3E40.w		; 4E 40 3E
	jsr $001C.w		; 20 1C 00
	ror $3842.w,X		; 7E 42 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $07.b		; 05 07
	asl A		; 0A
	ora $000007.l		; 0F 07 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	asl A		; 0A
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	brk $4B.b		; 00 4B
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	brk $1A.b		; 00 1A
	adc $38.b,S		; 63 38
	.db $62, $18, $C2		; 62 18 C2
	bit $7CC6.w,X		; 3C C6 7C
	dec $78.b		; C6 78
	cpy $38.b		; C4 38
	sty $70.b		; 84 70
	sty $3C.b		; 84 3C
	jsr $425E.w		; 20 5E 42
	ror $7842.w,X		; 7E 42 78
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $FC.b		; 04 FC
	sty $F8.b		; 84 F8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	asl $186B.w,X		; 1E 6B 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	cpy #$9870.w		; C0 70 98
	bvs -76.b		; 70 B4
	sed		; F8
	pea $7C78.w		; F4 78 7C
	bcs  -4.b		; B0 FC
	bpl  -8.b		; 10 F8
	bra -16.b		; 80 F0
	bra -112.b		; 80 90
	brk $B0.b		; 00 B0
	bpl  48.b		; 10 30
	sec		; 38
	bpl 120.b		; 10 78
	brk $B0.b		; 00 B0
	brk $10.b		; 00 10
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sed		; F8
	ldy #$70EC.w		; A0 EC 70
	inc $DCF0.w		; EE F0 DC
	cpx #$C098.w		; E0 98 C0
	clc		; 18
	brk $20.b		; 00 20
	bra  96.b		; 80 60
	cpy #$A0A0.w		; C0 A0 A0
	rts		; 60

	beq  96.b		; F0 60
	beq -64.b		; F0 C0
	cpx #$E080.w		; E0 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	trb $1C31.w		; 1C 31 1C
	and ($06.b),Y		; 31 06
	and ($06.b,S),Y		; 33 06
	and ($04.b,S),Y		; 33 04
	adc ($10.b)		; 72 10
	adc ($20.b)		; 72 20
	.db $62, $14, $C6		; 62 14 C6
	asl $0E00.w		; 0E 00 0E
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  62.b		; 10 3E
	and ($2E.b)		; 32 2E
	jsl $78425E.l		; 22 5E 42 78
	rti		; 40

	trb $0828.w		; 1C 28 08
	bit $0478.w		; 2C 78 04
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $6C.b		; 00 6C
	bpl 108.b		; 10 6C
	bpl 100.b		; 10 64
	clc		; 18
	bpl   0.b		; 10 00
	trb $04.b		; 14 04
	trb $14.b		; 14 14
	clc		; 18
	clc		; 18
	bit $242C.w		; 2C 2C 24
	bit $24.b		; 24 24
	bit $24.b		; 24 24
	bit $78.b		; 24 78
	sta $78.b,S		; 83 78
	.db $82, $7C, $86		; 82 7C 86
	jmp ($7C86.w,X)		; 7C 86 7C
	stx $7C.b		; 86 7C
	stx $38.b		; 86 38
	sty $38.b		; 84 38
	sty $7E.b		; 84 7E
	cop $7E.b		; 02 7E
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $66.b		; 04 66
	clc		; 18
	.db $62, $1C, $3E		; 62 1C 3E
	trb $1C02.w		; 1C 02 1C
	cop $0C.b		; 02 0C
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	asl $021E.w,X		; 1E 1E 02
	cop $0C.b		; 02 0C
	tsb $0404.w		; 0C 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	phd		; 0B
	asl $0B.b		; 06 0B
	asl $02.b		; 06 02
	ora ($06.b,X)		; 01 06
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $01.b		; 04 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $9A.b		; 00 9A
	adc $B5.b,S		; 63 B5
	eor [$69.b]		; 47 69
	stx $9F53.w		; 8E 53 9F
	lda $3F.b,S		; A3 3F
	jmp $9077.w		; 4C 77 90
	cpx $E811.w		; EC 11 E8
	bit $7B20.w,X		; 3C 20 7B
	eor $74.b,S		; 43 74
	ora $E8.b		; 05 E8
	phb		; 8B
	cmp ($17.b),Y		; D1 17
	ldy #$402F.w		; A0 2F 40
	eor $FFDEC0.l,X		; 5F C0 DE FF
	ora [$7F.b]		; 07 7F
	ora [$3F.b]		; 07 3F
	ora $1F.b,S		; 03 1F
	ora $0F.b,S		; 03 0F
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $63.b		; 00 63
	adc $102723.l		; 6F 23 27 10
	ora [$00.b],Y		; 17 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$E0FB.w		; C0 FB E0
	sbc $FDE0.w,X		; FD E0 FD
	cpx #$60FF.w		; E0 FF 60
	ora $0C9D.w,X		; 1D 9D 0C
	sta $D111.w		; 8D 11 D1
	asl $4BFE.w,X		; 1E FE 4B
	sbc $65FFED.l,X		; FF ED FF 65
	sbc [$06.b],Y		; F7 06
	inc $FC.b,X		; F6 FC
	brk $18.b		; 00 18
	brk $D8.b		; 00 D8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$F010.w		; C0 10 F0
	bne -16.b		; D0 F0
	rts		; 60

	rts		; 60

	jsr $8020.w		; 20 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	dec $38.b		; C6 38
	sty $8C20.w		; 8C 20 8C
	bmi -104.b		; 30 98
	brk $98.b		; 00 98
	jsr $E0B8.w		; 20 B8 E0
	bpl -16.b		; 10 F0
	brk $3C.b		; 00 3C
	tsb $70.b		; 04 70
	brk $78.b		; 00 78
	php		; 08
	pla		; 68
	php		; 08
	bvs  16.b		; 70 10
	bvc  16.b		; 50 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F3707.l		; 0F 07 37 0F
	adc $3FDE9F.l		; 6F 9F DE 3F
	and $231CDE.l,X		; 3F DE 1C 23
	asl $09.b,X		; 16 09
	ora ($0F.b),Y		; 11 0F
	tsb $03.b		; 04 03
	asl $9F01.w		; 0E 01 9F
	brk $3F.b		; 00 3F
	brk $DE.b		; 00 DE
	brk $23.b		; 00 23
	brk $09.b		; 00 09
	brk $0F.b		; 00 0F
	brk $B7.b		; 00 B7
	cmp $BFFFFF.l		; CF FF FF BF
	sbc $7F3FDF.l,X		; FF DF 3F 7F
	sbc $EDF9F6.l,X		; FF F6 F9 ED
	sbc ($EF.b,S),Y		; F3 EF
	beq -49.b		; F0 CF
	brk $78.b		; 00 78
	sta [$E3.b]		; 87 E3
	trb $003F.w		; 1C 3F 00
	sta $817860.l,X		; 9F 60 78 81
	sbc ($01.b),Y		; F1 01
	sbc ($00.b,S),Y		; F3 00
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $3C.b		; 00 3C
	bit $BCE2.w		; 2C E2 BC
	sta ($FC.b,X)		; 81 FC
	ora ($CE.b,X)		; 01 CE
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	rti		; 40

	ror $FE00.w,X		; 7E 00 FE
	brk $FC.b		; 00 FC
	brk $0F.b		; 00 0F
	bpl   3.b		; 10 03
	trb $1F03.w		; 1C 03 1F
	tsb $1C.b		; 04 1C
	ora $18.b,S		; 03 18
	ora $100718.l		; 0F 18 07 10
	ora $010110.l		; 0F 10 01 01
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	phd		; 0B
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora $000F00.l		; 0F 00 0F 00
	asl $1C63.w,X		; 1E 63 1C
	.db $62, $1C, $62		; 62 1C 62
	sec		; 38
	.db $62, $3C, $66		; 62 3C 66
	sec		; 38
	stz $38.b		; 64 38
	stz $30.b		; 64 30
	stz $3C.b		; 64 3C
	jsr $223E.w		; 20 3E 22
	rol $1C22.w,X		; 3E 22 1C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $18.b		; 04 18
	brk $28.b		; 00 28
	jmp ($6C20.w)		; 6C 20 6C
	bvs   8.b		; 70 08
	sei		; 78
	brk $B8.b		; 00 B8
	rts		; 60

	clv		; B8
	rts		; 60

	cpx #$F008.w		; E0 08 F0
	php		; 08
	bpl   0.b		; 10 00
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	bmi  48.b		; 30 30
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	clc		; 18
	php		; 08
	plp		; 28
	plp		; 28
	beq   8.b		; F0 08
	sed		; F8
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $4C.b		; 00 4C
	bmi  70.b		; 30 46
	sec		; 38
	.db $42, $3C		; 42 3C
	rol $3000.w,X		; 3E 00 30
	bmi  48.b		; 30 30
	bmi  32.b		; 30 20
	jsr $2828.w		; 20 28 28
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   8.b		; F0 08
	cpy #$C078.w		; C0 78 C0
	beq  64.b		; F0 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	jsr $2020.w		; 20 20 20
	jsr $20A0.w		; 20 A0 20
	ldy #$A020.w		; A0 20 A0
	jsr $40C0.w		; 20 C0 40
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $F400.w		; 8C 00 F4
	sed		; F8
	inc $FD.b		; E6 FD
	sbc $FE.b		; E5 FE
	eor $EE.b,X		; 55 EE
	nop		; EA
	jmp $C86854.l		; 5C 54 68 C8
	jmp ($5CE8.w,X)		; 7C E8 5C
	sed		; F8
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	bra  12.b		; 80 0C
	brk $AC.b		; 00 AC
	brk $01.b		; 00 01
	tsb $0600.w		; 0C 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	beq  24.b		; F0 18
	cpx #$F80C.w		; E0 0C F8
	tsb $86F0.w		; 0C F0 86
	jmp ($3886.w,X)		; 7C 86 38
	cmp $BE.b,S		; C3 BE
	sta $FC.b,S		; 83 FC
	ora ($E0.b,X)		; 01 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($7804.w,X)		; 7C 04 78
	brk $3E.b		; 00 3E
	cop $7C.b		; 02 7C
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bmi  47.b		; 30 2F
	eor $000000.l,X		; 5F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $5F.b		; 00 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bmi  -8.b		; 30 F8
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $64.b		; 00 64
	brk $03.b		; 00 03
	trb $0007.w		; 1C 07 00
	ora $007F00.l,X		; 1F 00 7F 00
	inc $7F01.w,X		; FE 01 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	ora $19.b,S		; 03 19
	ora $6160.w,Y		; 19 60 61
	jsr $1020.w		; 20 20 10
	bpl   4.b		; 10 04
	tsb $FF.b		; 04 FF
	lsr $7F.b		; 46 7F
	inc $FC7F.w		; EE 7F FC
	inc $FF7D.w,X		; FE 7D FF
	ora $C23F.w,Y		; 19 3F C2
	cmp $00FF3C.l,X		; DF 3C FF 00
	tsb $46.b		; 04 46
	bit $3CEE.w		; 2C EE 3C
	jsr ($FF18.w,X)		; FC 18 FF
	iny		; C8
	sbc $0CFE22.l,X		; FF 22 FE 0C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	sei		; 78
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
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
	brk $76.b		; 00 76
	lda $7DAE.w,X		; BD AE 7D
	ldx $7D.b		; A6 7D
	eor ($BE.b,X)		; 41 BE
	and ($4E.b),Y		; 31 4E
	ora #$0616.w		; 09 16 06
	ora #$0700.w		; 09 00 07
	lda $7D00.w,X		; BD 00 7D
	brk $7D.b		; 00 7D
	brk $BE.b		; 00 BE
	brk $4E.b		; 00 4E
	brk $16.b		; 00 16
	brk $09.b		; 00 09
	brk $07.b		; 00 07
	brk $6F.b		; 00 6F
	bne 111.b		; D0 6F
	cld		; D8
	adc $D8.b,S		; 63 D8
	eor ($EE.b,S),Y		; 53 EE
	php		; 08
	sbc [$18.b],Y		; F7 18
	cpx #$40B7.w		; E0 B7 40
	nop		; EA
	ora [$DF.b],Y		; 17 DF
	bpl -41.b		; 10 D7
	bpl -33.b		; 10 DF
	php		; 08
	sbc $04.b		; E5 04
	pea $E004.w		; F4 04 E0
	ora [$40.b]		; 07 40
	php		; 08
	ora ($11.b,X)		; 01 11
	sbc $1A.b		; E5 1A
	and $3A.b		; 25 3A
	ora $3A.b		; 05 3A
	cmp #$0376.w		; C9 76 03
	jsr ($1A65.w,X)		; FC 65 1A
	tsx		; BA
	ora $F9.b		; 05 F9
	ora [$EA.b]		; 07 EA
	brk $CA.b		; 00 CA
	cpy #$C0DA.w		; C0 DA C0
	stx $00.b,Y		; 96 00
	bit $1A00.w,X		; 3C 00 1A
	bra   4.b		; 80 04
	eor ($01.b,X)		; 41 01
	ora [$00.b]		; 07 00
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	rti		; 40

	cpy #$E080.w		; C0 80 E0
	bra -48.b		; 80 D0
	ldy #$C0E0.w		; A0 E0 C0
	cpx #$00C0.w		; E0 C0 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -96.b		; 80 A0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$01FF.w		; C0 FF 01
	and $018E01.l,X		; 3F 01 8E 01
	sep #$01		; E2 01
	jsr ($3803.w,X)		; FC 03 38
	ora [$18.b]		; 07 18
	brk $E0.b		; 00 E0
	brk $3C.b		; 00 3C
	bit $CC0C.w,X		; 3C 0C CC
	sta ($F1.b,X)		; 81 F1
	sbc ($FD.b,X)		; E1 FD
	sec		; 38
	sec		; 38
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	php		; 08
	asl $78.b		; 06 78
	tsb $79.b		; 04 79
	ora $DF.b		; 05 DF
	cop $9C.b		; 02 9C
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $06.b		; 04 06
	tsb $20.b		; 04 20
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	ora $1F.b		; 05 1F
	and $2E.b,S		; 23 2E
	ora $010000.l,X		; 1F 00 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $23.b		; 00 23
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $C4.b		; 00 C4
	brk $1E.b		; 00 1E
	brk $FA.b		; 00 FA
	brk $E1.b		; 00 E1
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	clc		; 18
	sed		; F8
	cpx #$00E4.w		; E0 E4 00
	asl $FE06.w,X		; 1E 06 FE
	phd		; 0B
	sec		; 38
	ora $C01F60.l		; 0F 60 1F C0
	and $7481.w,X		; 3D 81 74
	ora [$D0.b]		; 07 D0
	trb $7040.w		; 1C 40 70
	brk $C0.b		; 00 C0
	ora [$10.b],Y		; 17 10
	and $407F20.l,X		; 3F 20 7F 40
	inc $FA80.w,X		; FE 80 FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$8020.w		; A0 20 80
	bra  -8.b		; 80 F8
	cop $E8.b		; 02 E8
	asl $3CA0.w		; 0E A0 3C
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F402.w,X		; FE 02 F4
	tsb $D0.b		; 04 D0
	bpl -128.b		; 10 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	sbc $7E7FFF.l,X		; FF FF 7F 7E
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc $FAFD.w,X		; FD FD FA
	ldx $F9F9.w,Y		; BE F9 F9
	and ($EF.b,S),Y		; 33 EF
	bpl  79.b		; 10 4F
	bmi -61.b		; 30 C3
	bit $18E6.w,X		; 3C E6 18
	jsr ($FA00.w,X)		; FC 00 FA
	brk $F8.b		; 00 F8
	ora ($35.b,X)		; 01 35
	ora ($B8.b,X)		; 01 B8
	pea $FABC.w		; F4 BC FA
	dec $2E3C.w,X		; DE 3C 2E
	jmp.w [$FCCE]		; DC CE FC
	ldy $6C7A.w		; AC 7A 6C
	and ($E5.b,S),Y		; 33 E5
	inc A		; 1A
	pea $F200.w		; F4 00 F2
	php		; 08
	sec		; 38
	tsb $18.b		; 04 18
	tsb $3C.b		; 04 3C
	jsr $404A.w		; 20 4A 40
	ora $80.b,S		; 03 80
	jsl $003F40.l		; 22 40 3F 00
	adc $003D00.l,X		; 7F 00 3D 00
	ora $0D00.w,X		; 1D 00 0D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	php		; 08
	bmi  48.b		; 30 30
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $07.b		; 04 07
	pla		; 68
	brk $66.b		; 00 66
	brk $73.b		; 00 73
	brk $39.b		; 00 39
	brk $BC.b		; 00 BC
	brk $9E.b		; 00 9E
	brk $CF.b		; 00 CF
	brk $FF.b		; 00 FF
	brk $20.b		; 00 20
	lda [$22.b],Y		; B7 22
	tyx		; BB
	and ($BD.b),Y		; 31 BD
	clc		; 18
	dec $DF9C.w,X		; DE 9C DF
	stx $C7EF.w		; 8E EF C7
	sbc [$63.b],Y		; F7 63
	adc $7F.b,S		; 63 7F
	brk $BF.b		; 00 BF
	bra  95.b		; 80 5F
	cpy #$E027.w		; C0 27 E0
	ora $FF.b,S		; 03 FF
	brk $1F.b		; 00 1F
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $007F00.l,X		; FF 00 7F 00
	lda $C0DF80.l,X		; BF 80 DF C0
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	cpx #$F010.w		; E0 10 F0
	clc		; 18
	beq  24.b		; F0 18
	cpx $3EF0.w		; EC F0 3E
	cpy #$00FF.w		; C0 FF 00
	and $008000.l,X		; 3F 00 80 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
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
	brk $74.b		; 00 74
	phd		; 0B
	cpx $D917.w		; EC 17 D9
	rol $30C7.w		; 2E C7 30
	sta $BA60.w		; 8D 60 BA
	adc $34.b,S		; 63 34
	adc [$39.b]		; 67 39
	ror $0206.w,X		; 7E 06 02
	php		; 08
	brk $10.b		; 00 10
	brk $1E.b		; 00 1E
	bpl  62.b		; 10 3E
	jsr $011D.w		; 20 1D 01
	inc A		; 1A
	cop $04.b		; 02 04
	tsb $67.b		; 04 67
	sta $F91EFC.l,X		; 9F FC 1E F9
	trb $10E7.w		; 1C E7 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$1F.b]		; 07 1F
	jmp $DED85F.l		; 5C 5F D8 DE
	cpy #$E0D8.w		; C0 D8 E0
	cpx $40.b		; E4 40
	mvp $00,$00		; 44 00 00
	tsb $04.b		; 04 04
	jsr $C080.w		; 20 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $7F00.w,X		; 3E 00 7F
	brk $C2.b		; 00 C2
	jsr $00FC.w		; 20 FC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	jsr $0038.w		; 20 38 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,S),Y		; 33 00
	trb $0103.w		; 1C 03 01
	ora $000E00.l		; 0F 00 0E 00
	asl $01.b		; 06 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $10.b,S		; 03 10
	trb $0909.w		; 1C 09 09
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	tsb $80F0.w		; 0C F0 80
	clv		; B8
	cpy #$D018.w		; C0 18 D0
	trb $0CE8.w		; 1C E8 0C
	beq   6.b		; F0 06
	jmp ($F806.w,X)		; 7C 06 F8
	sta $00.b,S		; 83 00
	brk $60.b		; 00 60
	jsr $10F0.w		; 20 F0 10
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $7E.b		; 00 7E
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	lda $BFFFDF.l,X		; BF DF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFEF.l,X		; FF EF FF FE
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $02FFFF.l,X		; FF FF FF 02
	php		; 08
	cpy #$8004.w		; C0 04 80
	.db $82, $80, $80		; 82 80 80
	cop $04.b		; 02 04
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
	plp		; 28
	eor $18.b		; 45 18
	rti		; 40

	eor ($80.b,X)		; 41 80
	ora ($02.b,X)		; 01 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $18.b		; 00 18
	trb $48.b		; 14 48
	sta ($02.b,X)		; 81 02
	brk $10.b		; 00 10
	tsb $10.b		; 04 10
	rep #$00		; C2 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $10.b		; 00 10
	.db $42, $8C		; 42 8C
	brk $20.b		; 00 20
	rti		; 40

	brk $1A.b		; 00 1A
	brk $00.b		; 00 00
	sty $00.b,X		; 94 00
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	bra  64.b		; 80 40
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
	trb $91.b		; 14 91
	jsr $0081.w		; 20 81 00
	rti		; 40

	and ($10.b),Y		; 31 10
	php		; 08
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $40.b		; 00 40
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
	rti		; 40

	cpy #$0012.w		; C0 12 00
	cop $00.b		; 02 00
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
	tsb $00.b		; 04 00
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
	brk $80.b		; 00 80
	brk $90.b		; 00 90
	php		; 08
	tsb $00.b		; 04 00
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
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
	brk $50.b		; 00 50
	rti		; 40

	bcc -126.b		; 90 82
	sta ($41.b,X)		; 81 41
	bra  66.b		; 80 42
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	jsr $0000.w		; 20 00 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bcc   9.b		; 90 09
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	brk $00.b		; 00 00
	tsb $0204.w		; 0C 04 02
	php		; 08
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $42.b		; 00 42
	jsr $0010.w		; 20 10 00
	brk $40.b		; 00 40
	brk $08.b		; 00 08
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
	brk $08.b		; 00 08
	tsb $62.b		; 04 62
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	tsb $0004.w		; 0C 04 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	rti		; 40

	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	clc		; 18
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $12.b		; 00 12
	jsr $6808.w		; 20 08 68
	brk $00.b		; 00 00
	stz $20.b		; 64 20
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	php		; 08
	pha		; 48
	bpl   0.b		; 10 00
	cpy #$4408.w		; C0 08 44
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ldy #$0000.w		; A0 00 00
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
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $00.b,X		; 15 00
	brk $02.b		; 00 02
	.db $42, $00		; 42 00
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	cop $00.b		; 02 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 16FFFF. Skipping.
.ENDS
