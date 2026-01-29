.BANK 0 SLOT 0
.ORG $0000

.SECTION "Bank0" FORCE

.BASE $40
L400000:
.BASE $80
L800000:
.BASE $00
L000000:
	brk $00.b
L000002:
	pla
	brk $C0.b
	ora $A5.b,S
	asl $D6.b
	ora #$28.b
	ora $0FF1.w
	bmi L000023.b
L000010:
	eor $16.b,X
	mvn $39,$19
	trb $1C4B.w
L000018:
	rts

	trb $1CA3.w		; 1C A3 1C
	lda ($1C.b,S),Y		; B3 1C
	cmp $1C.b,S		; C3 1C
	cmp $1C.b,X		; D5 1C
	.db $D5		; Opcode overrunning section
L000023:
	trb $1CE7.w
	sbc $301C.w,Y
	ora $1D42.w,X
	tad
	ora $1D66.w,X
L000030:
	jmp ($921D.w,X)
	ora $1DBB.w,X
	cmp $001D.w
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $E3.b
	ora $1E05.w,X
	ora ($1E.b)
	and $1E.b,S
	lsr A
	ora ($53.b,X)
	ora ($5C.b,X)
	ora ($65.b,X)
	ora ($68.b,X)
	ora ($6B.b,X)
	ora ($6E.b,X)
	ora ($75.b,X)
	ora ($84.b,X)
	ora ($93.b,X)
	ora ($96.b,X)
	ora ($99.b,X)
	ora ($9C.b,X)
	ora ($9F.b,X)
	ora ($9C.b,X)
	ora ($9F.b,X)
	ora ($A2.b,X)
.BASE $40
L400089:
.BASE $00
L000089:
	ora ($A5.b,X)
	ora ($AC.b,X)
	ora ($AF.b,X)
	ora ($B6.b,X)
	ora ($B9.b,X)
	ora ($BC.b,X)
	ora ($CB.b,X)
	ora ($D0.b,X)
	ora ($D5.b,X)
	ora ($D8.b,X)
	ora ($DD.b,X)
	ora ($E2.b,X)
	ora ($E3.b,X)
	ora ($E4.b,X)
	ora ($92.b,X)
	cop $8B.b
	cop $E9.b
	ora ($85.b,X)
	ora $EE.b,S
	ora ($B2.b,X)
	ora $B9.b,S
	ora $9C.b,S
	cop $D5.b
	ora ($E4.b,X)
	ora ($8B.b,X)
	cop $50.b
	ora $00.b,S
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $FB.b
	ora ($03.b,X)
	cop $00.b
	cop $08.b
	cop $14.b
	cop $0F.b
	cop $19.b
	cop $1C.b
	cop $21.b
	cop $24.b
	cop $2B.b
L0000FD:
	cop $30.b
	cop $35.b
L000101:
	cop $3E.b
	cop $43.b
	cop $30.b
	cop $35.b
	cop $3E.b
	cop $4E.b
	cop $59.b
	cop $5E.b
	cop $61.b
	cop $66.b
	cop $69.b
	cop $6E.b
	cop $71.b
	cop $76.b
	cop $7D.b
L00011F:
	cop $86.b
	cop $7D.b
	cop $97.b
	cop $A3.b
	cop $75.b
	ora ($A8.b,X)
	cop $AD.b
	cop $B2.b
	cop $B5.b
	cop $B8.b
	cop $B8.b
	cop $C1.b
	cop $C6.b
	cop $EB.b
	cop $B2.b
	cop $B5.b
	cop $C1.b
	cop $65.b
	ora $68.b,S
	ora $6B.b,S
	ora $80.b,S
	ora $06.b,S
	trb $06.b
	ora $06.b,X
	asl $06.b,X
	ora $40.b,X
	ora $19.b
	ora $1A.b
	ora $1B.b
	ora $1C.b
	rti

	asl $1C.b		; 06 1C
	asl $1B.b		; 06 1B
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0E80.w		; 0E 80 0E
	ora $1E08.w,X		; 1D 08 1E
	brk $1D.b		; 00 1D
	bra  10.b		; 80 0A
	ora $1F04.w,X		; 1D 04 1F
	tsb $20.b		; 04 20
	tsb $21.b		; 04 21
	tsb $22.b		; 04 22
	tsb $1E.b		; 04 1E
	tsb $1D.b		; 04 1D
	bra  10.b		; 80 0A
	ora $1E04.w,X		; 1D 04 1E
	tsb $22.b		; 04 22
	tsb $21.b		; 04 21
	tsb $20.b		; 04 20
	tsb $1F.b		; 04 1F
	brk $1D.b		; 00 1D
	bra   3.b		; 80 03
	asl $0380.w		; 0E 80 03
	phk		; 4B
	bra   3.b		; 80 03
	mvn $00,$80		; 54 80 00
	bpl L00011F.b		; 10 80
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	tsb $0001.w		; 0C 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0305.w		; 0C 05 03
	asl $2203.w,X		; 1E 03 22
	ora $21.b,S		; 03 21
	ora $20.b,S		; 03 20
	ora $1F.b,S		; 03 1F
	ora $1D.b,S		; 03 1D
	bra   6.b		; 80 06
	phd		; 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $79.b		; 06 79
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	ora $1F.b,S		; 03 1F
	ora $20.b,S		; 03 20
	ora $21.b,S		; 03 21
	ora $22.b,S		; 03 22
	ora $1E.b,S		; 03 1E
	brk $1D.b		; 00 1D
	bra   2.b		; 80 02
	bit $03.b		; 24 03
	and $80.b		; 25 80
	ora $24.b,S		; 03 24
	bra   2.b		; 80 02
	bit $03.b		; 24 03
	and $80.b,S		; 23 80
	ora $24.b		; 05 24
	ora [$26.b]		; 07 26
	asl A		; 0A
	eor ($80.b,S),Y		; 53 80
	ora $24.b		; 05 24
	php		; 08
	and $80.b,S		; 23 80
	ora [$26.b]		; 07 26
	asl A		; 0A
	bit $80.b		; 24 80
	ora [$24.b]		; 07 24
	bra   2.b		; 80 02
	adc $6E03.w		; 6D 03 6E
	bra   2.b		; 80 02
	adc $0580.w		; 6D 80 05
	and [$06.b]		; 27 06
	plp		; 28
	ora [$29.b]		; 07 29
	bra   7.b		; 80 07
	rol A		; 2A
	asl $2B.b		; 06 2B
	bra   2.b		; 80 02
	bit $2D00.w		; 2C 00 2D
	bra   3.b		; 80 03
	bit $700C.w		; 2C 0C 70
	php		; 08
	bit $1D00.w		; 2C 00 1D
	bra   2.b		; 80 02
	sei		; 78
	brk $2E.b		; 00 2E
	bra   3.b		; 80 03
	sei		; 78
	asl A		; 0A
	adc ($08.b),Y		; 71 08
	sei		; 78
	asl $1E.b		; 06 1E
	brk $1D.b		; 00 1D
	bra   3.b		; 80 03
	and $08300A.l		; 2F 0A 30 08
	and $001E06.l		; 2F 06 1E 00
	ora $0280.w,X		; 1D 80 02
	and ($03.b),Y		; 31 03
	and ($80.b)		; 32 80
	ora $31.b,S		; 03 31
	bra   6.b		; 80 06
	and ($0A.b),Y		; 31 0A
	adc ($80.b)		; 72 80
	php		; 08
	and ($80.b),Y		; 31 80
	cop $33.b		; 02 33
	ora $34.b,S		; 03 34
	bra   3.b		; 80 03
	and ($80.b,S),Y		; 33 80
	ora $35.b		; 05 35
	asl $36.b		; 06 36
	bra   6.b		; 80 06
	and [$06.b],Y		; 37 06
	sec		; 38
	asl $77.b		; 06 77
	bra   5.b		; 80 05
	and $3A06.w,Y		; 39 06 3A
	asl $3B.b		; 06 3B
	tsb $3C.b		; 04 3C
	bra   6.b		; 80 06
	sec		; 38
	asl $3D.b		; 06 3D
	bra   8.b		; 80 08
	asl $16.b		; 06 16
	ora [$0A.b]		; 07 0A
	php		; 08
	bra   8.b		; 80 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	asl $66.b		; 06 66
	asl $65.b		; 06 65
	bra   4.b		; 80 04
	adc #$04.b		; 69 04
	ror A		; 6A
	tsb $69.b		; 04 69
	bra  20.b		; 80 14
	eor #$04.b		; 49 04
	lsr A		; 4A
	bra   2.b		; 80 02
	rol $3F04.w,X		; 3E 04 3F
	bra   4.b		; 80 04
	rol $3F06.w,X		; 3E 06 3F
	bra  30.b		; 80 1E
	rti		; 40

	bra  45.b		; 80 2D
	rti		; 40

	bra   3.b		; 80 03
	eor ($03.b,X)		; 41 03
	.db $42, $03		; 42 03
	eor $03.b,S		; 43 03
	mvp $03,$80		; 44 80 03
	eor $00.b		; 45 00
	ora $0E80.w,X		; 1D 80 0E
	lsr $00.b		; 46 00
	eor [$01.b]		; 47 01
	pha		; 48
	brk $47.b		; 00 47
	ora ($48.b,X)		; 01 48
	brk $47.b		; 00 47
	ora ($48.b,X)		; 01 48
	brk $47.b		; 00 47
	ora ($48.b,X)		; 01 48
	brk $47.b		; 00 47
	ora ($48.b,X)		; 01 48
	brk $47.b		; 00 47
	ora ($48.b,X)		; 01 48
	brk $47.b		; 00 47
	ora ($48.b,X)		; 01 48
	asl $4B.b		; 06 4B
	tsb $4E.b		; 04 4E
	asl A		; 0A
	eor $460880.l		; 4F 80 08 46
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	asl A		; 0A
	phk		; 4B
	php		; 08
	lsr $4F0E.w		; 4E 0E 4F
	bra   6.b		; 80 06
	rtl		; 6B

	asl $6C.b		; 06 6C
	asl $6B.b		; 06 6B
	asl $6C.b		; 06 6C
	asl $6B.b		; 06 6B
	asl $6C.b		; 06 6C
	asl $6B.b		; 06 6B
	asl $6C.b		; 06 6C
	asl $6B.b		; 06 6B
	asl $6C.b		; 06 6C
	bra   7.b		; 80 07
	bvc -128.b		; 50 80
	clc		; 18
	eor ($80.b),Y		; 51 80
	ora $52.b		; 05 52
	ora $73.b		; 05 73
	ora $74.b		; 05 74
	ora $75.b		; 05 75
	ora $76.b		; 05 76
	ora $52.b		; 05 52
	ora $73.b		; 05 73
	ora $74.b		; 05 74
	ora $75.b		; 05 75
	ora $76.b		; 05 76
	bra   6.b		; 80 06
	eor ($00.b),Y		; 51 00
	ora $0680.w,X		; 1D 80 06
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora $06.b,X		; 15 06
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora $06.b,X		; 15 06
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora $06.b,X		; 15 06
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora $06.b,X		; 15 06
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora $08.b,X		; 15 08
	ora [$18.b],Y		; 17 18
	clc		; 18
	bra  60.b		; 80 3C
	phk		; 4B
	php		; 08
	jmp $4D08.w		; 4C 08 4D
	bra   8.b		; 80 08
	phk		; 4B
	asl $4E.b		; 06 4E
	tsb $804F.w		; 0C 4F 80
	ldx #$AB04.w		; A2 04 AB
	tsb $B4.b		; 04 B4
	tsb $BD.b		; 04 BD
	tsb $C0.b		; 04 C0
	tsb $C3.b		; 04 C3
	tsb $C6.b		; 04 C6
	tsb $CD.b		; 04 CD
	tsb $DC.b		; 04 DC
	tsb $EB.b		; 04 EB
	tsb $EE.b		; 04 EE
	tsb $F1.b		; 04 F1
	tsb $F4.b		; 04 F4
	tsb $F7.b		; 04 F7
	tsb $F4.b		; 04 F4
	tsb $F7.b		; 04 F7
	tsb $FA.b		; 04 FA
	tsb $FD.b		; 04 FD
	tsb $04.b		; 04 04
	ora $07.b		; 05 07
	ora $0E.b		; 05 0E
	ora $11.b		; 05 11
	ora $14.b		; 05 14
	ora $23.b		; 05 23
	ora $28.b		; 05 28
	ora $2D.b		; 05 2D
	ora $30.b		; 05 30
	ora $35.b		; 05 35
	ora $3A.b		; 05 3A
	ora $3B.b		; 05 3B
	ora $3C.b		; 05 3C
	ora $41.b		; 05 41
	ora $65.b		; 05 65
	ora $46.b		; 05 46
	ora $4B.b		; 05 4B
	ora $58.b		; 05 58
	ora $9B.b		; 05 9B
	asl $A2.b		; 06 A2
	asl $6C.b		; 06 6C
	ora $2D.b		; 05 2D
	ora $3C.b		; 05 3C
	ora $65.b		; 05 65
	ora $73.b		; 05 73
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	ora $8D.b		; 05 8D
	ora $90.b		; 05 90
	ora $99.b		; 05 99
	ora $9E.b		; 05 9E
	ora $A6.b		; 05 A6
	ora $A3.b		; 05 A3
	ora $AB.b		; 05 AB
	ora $B0.b		; 05 B0
	ora $B3.b		; 05 B3
	ora $B8.b		; 05 B8
	ora $BD.b		; 05 BD
	ora $C6.b		; 05 C6
	ora $CB.b		; 05 CB
	ora $B8.b		; 05 B8
	ora $BD.b		; 05 BD
	ora $C6.b		; 05 C6
	ora $CB.b		; 05 CB
	ora $D4.b		; 05 D4
	ora $D9.b		; 05 D9
	ora $DC.b		; 05 DC
	ora $E1.b		; 05 E1
	ora $E4.b		; 05 E4
	ora $E9.b		; 05 E9
	ora $EC.b		; 05 EC
	ora $F1.b		; 05 F1
	ora $F6.b		; 05 F6
	ora $FD.b		; 05 FD
	ora $00.b		; 05 00
	asl $F6.b		; 06 F6
	ora $FD.b		; 05 FD
	ora $0B.b		; 05 0B
	asl $32.b		; 06 32
	asl $59.b		; 06 59
	asl $62.b		; 06 62
	asl $6B.b		; 06 6B
	asl $6E.b		; 06 6E
	asl $6B.b		; 06 6B
	asl $6E.b		; 06 6E
	asl $71.b		; 06 71
	asl $76.b		; 06 76
	asl $7B.b		; 06 7B
	asl $82.b		; 06 82
	asl $7B.b		; 06 7B
	asl $82.b		; 06 82
	asl $89.b		; 06 89
	asl $8C.b		; 06 8C
	asl $93.b		; 06 93
	asl $98.b		; 06 98
	asl $06.b		; 06 06
	inc A		; 1A
	asl $19.b		; 06 19
	asl $1B.b		; 06 1B
	asl $19.b		; 06 19
	rti		; 40

	tsb $1C.b		; 04 1C
	tsb $1D.b		; 04 1D
	tsb $1E.b		; 04 1E
	tsb $1F.b		; 04 1F
	rti		; 40

	ora $1F.b		; 05 1F
	ora $1E.b		; 05 1E
	ora $1D.b		; 05 1D
	ora $1C.b		; 05 1C
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0E80.w		; 0E 80 0E
	and ($0C.b,X)		; 21 0C
	jsr $2106.w		; 20 06 21
	bra  10.b		; 80 0A
	and ($04.b,X)		; 21 04
	jsl $042304.l		; 22 04 23 04
	bit $04.b		; 24 04
	and $04.b		; 25 04
	rol $00.b		; 26 00
	and ($80.b,X)		; 21 80
	asl A		; 0A
	and ($04.b,X)		; 21 04
	rol $04.b		; 26 04
	and $04.b		; 25 04
	bit $04.b		; 24 04
	and $04.b,S		; 23 04
	jsl $802100.l		; 22 00 21 80
	ora $0E.b,S		; 03 0E
	bra   3.b		; 80 03
	rtl		; 6B

	bra   3.b		; 80 03
	and $80.b,X		; 35 80
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	ora ($80.b),Y		; 11 80
	brk $00.b		; 00 00
	bra   6.b		; 80 06
	brk $0C.b		; 00 0C
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0305.w		; 0C 05 03
	rol $03.b		; 26 03
	and $03.b		; 25 03
	bit $03.b		; 24 03
	and $03.b,S		; 23 03
	jsl $802100.l		; 22 00 21 80
	asl $0B.b		; 06 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $74.b		; 06 74
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	bit $3C14.w,X		; 3C 14 3C
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora [$14.b],Y		; 17 14
	clc		; 18
	bra   3.b		; 80 03
	jsl $032303.l		; 22 03 23 03
	bit $03.b		; 24 03
	and $03.b		; 25 03
	rol $00.b		; 26 00
	and ($80.b,X)		; 21 80
	php		; 08
	asl $16.b		; 06 16
	ora [$0A.b]		; 07 0A
	php		; 08
	bra   4.b		; 80 04
	adc $6E04.w		; 6D 04 6E
	tsb $6D.b		; 04 6D
	bra   6.b		; 80 06
	plp		; 28
	asl $29.b		; 06 29
	asl $28.b		; 06 28
	asl $29.b		; 06 29
	asl $28.b		; 06 28
	asl $29.b		; 06 29
	asl $28.b		; 06 28
	asl $29.b		; 06 29
	asl $28.b		; 06 28
	asl $29.b		; 06 29
	bra   2.b		; 80 02
	rol A		; 2A
	ora $2B.b,S		; 03 2B
	bra   3.b		; 80 03
	rol A		; 2A
	bra   2.b		; 80 02
	bit $2D01.w		; 2C 01 2D
	cop $2E.b		; 02 2E
	php		; 08
	and $300580.l		; 2F 80 05 30
	tsb $2C.b		; 04 2C
	bra   2.b		; 80 02
	and ($03.b)		; 32 03
	and ($80.b,S),Y		; 33 80
	ora $32.b,S		; 03 32
	bra   2.b		; 80 02
	and ($03.b)		; 32 03
	and ($80.b),Y		; 31 80
	ora $32.b,S		; 03 32
	tsb $31.b		; 04 31
	bra   8.b		; 80 08
	bit $80.b,X		; 34 80
	asl $31.b		; 06 31
	tsb $32.b		; 04 32
	bra   2.b		; 80 02
	rol $00.b,X		; 36 00
	and [$80.b],Y		; 37 80
	cop $36.b		; 02 36
	ora ($6F.b)		; 12 6F
	ora $36.b,S		; 03 36
	brk $21.b		; 00 21
	bra   2.b		; 80 02
	sec		; 38
	brk $39.b		; 00 39
	bra   2.b		; 80 02
	dec A		; 3A
	ora $3B.b,S		; 03 3B
	ora $21003C.l		; 0F 3C 00 21
	bra   2.b		; 80 02
	and $3E03.w,X		; 3D 03 3E
	bra   3.b		; 80 03
	and $0580.w,X		; 3D 80 05
	and $7007.w,X		; 3D 07 70
	bra   6.b		; 80 06
	and $0280.w,X		; 3D 80 02
	and $804003.l,X		; 3F 03 40 80
	ora $3F.b,S		; 03 3F
	bra   3.b		; 80 03
	mvp $43,$06		; 44 06 43
	bra   5.b		; 80 05
	.db $42, $05		; 42 05
	eor ($80.b,X)		; 41 80
	php		; 08
	eor $06.b		; 45 06
	lsr $00.b		; 46 00
	eor [$80.b]		; 47 80
	php		; 08
	eor [$80.b]		; 47 80
	asl $48.b		; 06 48
	asl $73.b		; 06 73
	asl $35.b		; 06 35
	asl $0F.b		; 06 0F
	asl $0E.b		; 06 0E
	bra   2.b		; 80 02
	eor ($02.b),Y		; 51 02
	eor ($02.b)		; 52 02
	eor ($01.b,S),Y		; 53 01
	mvn $56,$01		; 54 01 56
	ora ($55.b,X)		; 01 55
	ora ($6A.b,X)		; 01 6A
	ora ($54.b,X)		; 01 54
	ora ($56.b,X)		; 01 56
	ora ($55.b,X)		; 01 55
	ora ($6A.b,X)		; 01 6A
	ora ($54.b,X)		; 01 54
	ora ($56.b,X)		; 01 56
	ora ($55.b,X)		; 01 55
	ora ($6A.b,X)		; 01 6A
	cop $53.b		; 02 53
	cop $52.b		; 02 52
	cop $51.b		; 02 51
	cop $0E.b		; 02 0E
	bra   3.b		; 80 03
	eor ($03.b),Y		; 51 03
	eor ($03.b)		; 52 03
	eor ($02.b,S),Y		; 53 02
	mvn $56,$02		; 54 02 56
	cop $55.b		; 02 55
	cop $6A.b		; 02 6A
	cop $54.b		; 02 54
	cop $56.b		; 02 56
	cop $55.b		; 02 55
	cop $6A.b		; 02 6A
	cop $54.b		; 02 54
	cop $56.b		; 02 56
	cop $55.b		; 02 55
	cop $6A.b		; 02 6A
	ora $53.b,S		; 03 53
	ora $52.b,S		; 03 52
	ora $51.b,S		; 03 51
	ora $0E.b,S		; 03 0E
	bra   2.b		; 80 02
	eor #$01.b		; 49 01
	lsr A		; 4A
	ora ($4B.b,X)		; 01 4B
	ora ($4C.b,X)		; 01 4C
	bra   3.b		; 80 03
	eor #$02.b		; 49 02
	lsr A		; 4A
	cop $4B.b		; 02 4B
	cop $4C.b		; 02 4C
	bra  30.b		; 80 1E
	eor $2880.w		; 4D 80 28
	eor $0180.w		; 4D 80 01
	lsr $4F02.w		; 4E 02 4F
	bra   3.b		; 80 03
	lsr $4F04.w		; 4E 04 4F
	bra   3.b		; 80 03
	bvc   4.b		; 50 04
	phy		; 5A
	ora $806B.w,Y		; 19 6B 80
	ora $50.b		; 05 50
	asl $5A.b		; 06 5A
	and $6B.b,S		; 23 6B
	bra   5.b		; 80 05
	and [$80.b]		; 27 80
	ora $51.b		; 05 51
	ora $52.b		; 05 52
	ora $5B.b		; 05 5B
	bra   0.b		; 80 00
	jmp $405D00.l		; 5C 00 5D 40
	brk $21.b		; 00 21
	bra   8.b		; 80 08
	eor [$08.b],Y		; 57 08
	cli		; 58
	php		; 08
	eor $0080.w,Y		; 59 80 00
	rtl		; 6B

	bra -111.b		; 80 91
	ora [$9A.b]		; 07 9A
	ora [$A3.b]		; 07 A3
	ora [$AC.b]		; 07 AC
	ora [$AF.b]		; 07 AF
	ora [$B2.b]		; 07 B2
	ora [$B5.b]		; 07 B5
	ora [$BC.b]		; 07 BC
	ora [$C9.b]		; 07 C9
	ora [$D6.b]		; 07 D6
	ora [$D9.b]		; 07 D9
	ora [$DC.b]		; 07 DC
	ora [$DF.b]		; 07 DF
	ora [$E2.b]		; 07 E2
	ora [$DF.b]		; 07 DF
	ora [$E2.b]		; 07 E2
	ora [$E5.b]		; 07 E5
	ora [$E8.b]		; 07 E8
	ora [$EF.b]		; 07 EF
	ora [$F2.b]		; 07 F2
	ora [$F9.b]		; 07 F9
	ora [$FC.b]		; 07 FC
	ora [$FF.b]		; 07 FF
	ora [$0C.b]		; 07 0C
	php		; 08
	ora ($08.b),Y		; 11 08
	asl $08.b,X		; 16 08
	ora $1E08.w,Y		; 19 08 1E
	php		; 08
	and $08.b,S		; 23 08
	bit $08.b		; 24 08
	and $08.b		; 25 08
	rol A		; 2A
	php		; 08
	ror $2F08.w		; 6E 08 2F
	php		; 08
	bit $08.b,X		; 34 08
	adc $08.b,S		; 63 08
	cpy $D309.w		; CC 09 D3
	ora #$75.b		; 09 75
	php		; 08
	asl $08.b,X		; 16 08
	and $08.b		; 25 08
	ror $7C08.w		; 6E 08 7C
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
	sta ($08.b),Y		; 91 08
	stx $08.b,Y		; 96 08
	txy		; 9B
	php		; 08
	stz $A508.w,X		; 9E 08 A5
	php		; 08
	tay		; A8
	php		; 08
	lda $B008.w		; AD 08 B0
	php		; 08
	lda $08.b,X		; B5 08
	tsx		; BA
	php		; 08
	lda $C208.w,X		; BD 08 C2
	php		; 08
	cmp #$08.b		; C9 08
	cmp #$08.b		; C9 08
	dec $CE08.w		; CE 08 CE
	php		; 08
	cmp [$08.b],Y		; D7 08
	jmp.w [$E508]		; DC 08 E5
	php		; 08
	nop		; EA
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	sed		; F8
	php		; 08
	xce		; FB
	php		; 08
	brk $09.b		; 00 09
	ora $09.b,S		; 03 09
	php		; 08
	ora #$0B.b		; 09 0B
	ora #$10.b		; 09 10
	ora #$15.b		; 09 15
	ora #$20.b		; 09 20
	ora #$15.b		; 09 15
	ora #$20.b		; 09 20
	ora #$23.b		; 09 23
	ora #$2A.b		; 09 2A
	ora #$35.b		; 09 35
	ora #$38.b		; 09 38
	ora #$3B.b		; 09 3B
	ora #$3E.b		; 09 3E
	ora #$3B.b		; 09 3B
	ora #$3E.b		; 09 3E
	ora #$41.b		; 09 41
	ora #$46.b		; 09 46
	ora #$4B.b		; 09 4B
	ora #$4E.b		; 09 4E
	ora #$4B.b		; 09 4B
	ora #$4E.b		; 09 4E
	ora #$51.b		; 09 51
	ora #$56.b		; 09 56
	ora #$5B.b		; 09 5B
	ora #$60.b		; 09 60
	ora #$A9.b		; 09 A9
	ora #$B0.b		; 09 B0
	ora #$C2.b		; 09 C2
	ora #$C7.b		; 09 C7
	ora #$06.b		; 09 06
	ora $1A06.w,Y		; 19 06 1A
	asl $1B.b		; 06 1B
	asl $1A.b		; 06 1A
	rti		; 40

	ora $2A.b		; 05 2A
	ora $2B.b		; 05 2B
	ora $2C.b		; 05 2C
	ora $2D.b		; 05 2D
	rti		; 40

	asl $2D.b		; 06 2D
	asl $2C.b		; 06 2C
	asl $2B.b		; 06 2B
	asl $2A.b		; 06 2A
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0E80.w		; 0E 80 0E
	trb $1D0A.w		; 1C 0A 1D
	asl $1C.b		; 06 1C
	bra  10.b		; 80 0A
	trb $1E04.w		; 1C 04 1E
	tsb $1F.b		; 04 1F
	tsb $20.b		; 04 20
	tsb $21.b		; 04 21
	brk $1C.b		; 00 1C
	bra  10.b		; 80 0A
	trb OAMDATA.w		; 1C 04 21
	tsb $20.b		; 04 20
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	brk $1C.b		; 00 1C
	bra   3.b		; 80 03
	asl $0380.w		; 0E 80 03
	and $80.b,X		; 35 80
	ora $53.b,S		; 03 53
	bra   0.b		; 80 00
	bpl -128.b		; 10 80
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	tsb $0001.w		; 0C 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0305.w		; 0C 05 03
	and ($03.b,X)		; 21 03
	jsr $1F03.w		; 20 03 1F
	ora $1E.b,S		; 03 1E
	brk $1C.b		; 00 1C
	bra   6.b		; 80 06
	phd		; 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $7B.b		; 06 7B
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $1B.b		; 06 1B
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $1B.b		; 06 1B
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $1B.b		; 06 1B
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $1B.b		; 06 1B
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $1B.b		; 06 1B
	asl $1A.b		; 06 1A
	php		; 08
	and [$08.b]		; 27 08
	plp		; 28
	trb $29.b		; 14 29
	bra   3.b		; 80 03
	asl $1F03.w,X		; 1E 03 1F
	ora $20.b,S		; 03 20
	ora $21.b,S		; 03 21
	brk $1C.b		; 00 1C
	bra   8.b		; 80 08
	asl $16.b		; 06 16
	ora [$0A.b]		; 07 0A
	php		; 08
	bra   4.b		; 80 04
	adc ($04.b),Y		; 71 04
	adc ($04.b)		; 72 04
	adc ($80.b),Y		; 71 80
	asl $40.b		; 06 40
	asl $41.b		; 06 41
	asl $40.b		; 06 40
	asl $41.b		; 06 41
	asl $40.b		; 06 40
	asl $41.b		; 06 41
	asl $40.b		; 06 40
	asl $41.b		; 06 41
	asl $40.b		; 06 40
	asl $41.b		; 06 41
	bra   2.b		; 80 02
	and ($03.b)		; 32 03
	and ($80.b,S),Y		; 33 80
	cop $32.b		; 02 32
	ora $34.b,S		; 03 34
	bra   3.b		; 80 03
	and ($80.b)		; 32 80
	ora $48.b,S		; 03 48
	tsb $49.b		; 04 49
	tsb $804A.w		; 0C 4A 80
	php		; 08
	pha		; 48
	bra   8.b		; 80 08
	bmi  12.b		; 30 0C
	and ($80.b),Y		; 31 80
	ora #$30.b		; 09 30
	bra   3.b		; 80 03
	phk		; 4B
	tsb $4C.b		; 04 4C
	bra   2.b		; 80 02
	phk		; 4B
	ora $4D.b,S		; 03 4D
	bra   3.b		; 80 03
	phk		; 4B
	bra   5.b		; 80 05
	phk		; 4B
	php		; 08
	lsr $0780.w		; 4E 80 07
	eor $065006.l		; 4F 06 50 06
	eor ($80.b),Y		; 51 80
	cop $3E.b		; 02 3E
	brk $3F.b		; 00 3F
	bra   3.b		; 80 03
	rol $700E.w,X		; 3E 0E 70
	asl $3E.b		; 06 3E
	brk $1C.b		; 00 1C
	bra   2.b		; 80 02
	ply		; 7A
	brk $52.b		; 00 52
	bra   3.b		; 80 03
	ply		; 7A
	asl $067C.w		; 0E 7C 06
	ply		; 7A
	brk $1C.b		; 00 1C
	bra   2.b		; 80 02
	sec		; 38
	brk $39.b		; 00 39
	bra   2.b		; 80 02
	sei		; 78
	php		; 08
	adc $7804.w,Y		; 79 04 78
	brk $1C.b		; 00 1C
	bra   2.b		; 80 02
	rol $2F03.w		; 2E 03 2F
	bra   3.b		; 80 03
	rol $0680.w		; 2E 80 06
	rol $6F0A.w		; 2E 0A 6F
	bra   8.b		; 80 08
	rol $0380.w		; 2E 80 03
	lsr $04.b		; 46 04
	eor [$80.b]		; 47 80
	tsb $46.b		; 04 46
	bra   4.b		; 80 04
	dec A		; 3A
	ora [$3B.b]		; 07 3B
	bra   6.b		; 80 06
	bit $3D05.w,X		; 3C 05 3D
	bra   8.b		; 80 08
	jsl $042305.l		; 22 05 23 04
	bit $03.b		; 24 03
	and $00.b		; 25 00
	rol $80.b		; 26 80
	php		; 08
	rol $80.b		; 26 80
	asl $53.b		; 06 53
	asl $0F.b		; 06 0F
	asl $0E.b		; 06 0E
	bra   6.b		; 80 06
	ora $02.b,X		; 15 02
	asl $06.b,X		; 16 06
	ora [$02.b],Y		; 17 02
	clc		; 18
	php		; 08
	ora $80.b,X		; 15 80
	asl $36.b		; 06 36
	bra  10.b		; 80 0A
	rol $80.b,X		; 36 80
	and $37.b,S		; 23 37
	bra  50.b		; 80 32
	and [$80.b],Y		; 37 80
	ora $58.b,S		; 03 58
	ora $59.b,S		; 03 59
	bra   4.b		; 80 04
	cli		; 58
	tsb $59.b		; 04 59
	bra  30.b		; 80 1E
	phy		; 5A
	bra  50.b		; 80 32
	phy		; 5A
	bra   2.b		; 80 02
	asl $0F01.w		; 0E 01 0F
	bra   3.b		; 80 03
	asl $0F02.w		; 0E 02 0F
	bra   1.b		; 80 01
	eor $3C.b,X		; 55 3C
	lsr $80.b,X		; 56 80
	brk $5C.b		; 00 5C
	brk $5D.b		; 00 5D
	brk $5C.b		; 00 5C
	brk $5D.b		; 00 5D
	brk $5C.b		; 00 5C
	brk $5D.b		; 00 5D
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	bra   4.b		; 80 04
	mvn $77,$12		; 54 12 77
	asl $0F.b		; 06 0F
	bra   0.b		; 80 00
	adc $00.b,X		; 75 00
	ror $00.b,X		; 76 00
	adc $00.b,X		; 75 00
	ror $00.b,X		; 76 00
	adc $00.b,X		; 75 00
	ror $18.b,X		; 76 18
	adc [$08.b],Y		; 77 08
	ora $088080.l		; 0F 80 80 08
	cli		; 58
	asl $59.b		; 06 59
	bra  60.b		; 80 3C
	phy		; 5A
	asl A		; 0A
	phy		; 5A
	bra   6.b		; 80 06
	eor $06.b,S		; 43 06
	mvp $45,$06		; 44 06 45
	rti		; 40

	brk $14.b		; 00 14
	bra -64.b		; 80 C0
	asl A		; 0A
	cmp #$0A.b		; C9 0A
	cmp ($0A.b)		; D2 0A
	stp		; DB
	asl A		; 0A
	dec $E10A.w,X		; DE 0A E1
	asl A		; 0A
	cpx $0A.b		; E4 0A
	xba		; EB
	asl A		; 0A
	sed		; F8
	asl A		; 0A
	ora $0B.b		; 05 0B
	php		; 08
	phd		; 0B
	phd		; 0B
	phd		; 0B
	asl $110B.w		; 0E 0B 11
	phd		; 0B
	asl $110B.w		; 0E 0B 11
	phd		; 0B
	trb $0B.b		; 14 0B
	ora [$0B.b],Y		; 17 0B
	asl $210B.w,X		; 1E 0B 21
	phd		; 0B
	plp		; 28
	phd		; 0B
	pld		; 2B
	phd		; 0B
	rol $390B.w		; 2E 0B 39
	phd		; 0B
	rol $430B.w,X		; 3E 0B 43
	phd		; 0B
	lsr $0B.b		; 46 0B
	phk		; 4B
	phd		; 0B
	bvc  11.b		; 50 0B
	eor ($0B.b),Y		; 51 0B
	eor ($0B.b)		; 52 0B
	eor [$0B.b],Y		; 57 0B
	txy		; 9B
	phd		; 0B
	jmp $0B610B.l		; 5C 0B 61 0B
	bcc  11.b		; 90 0B
	inc A		; 1A
	ora $0D25.w		; 0D 25 0D
	tay		; A8
	phd		; 0B
	eor $0B.b,S		; 43 0B
	eor ($0B.b)		; 52 0B
	txy		; 9B
	phd		; 0B
	lda $00000B.l		; AF 0B 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $0B.b		; C4 0B
	wai		; CB
	phd		; 0B
	cmp ($0B.b)		; D2 0B
	cmp [$0B.b],Y		; D7 0B
	dec $E30B.w,X		; DE 0B E3
	phd		; 0B
	nop		; EA
	phd		; 0B
	sbc $0BF20B.l		; EF 0B F2 0B
	sbc [$0B.b],Y		; F7 0B
	plx		; FA
	phd		; 0B
	plx		; FA
	phd		; 0B
	sbc $0BFF0B.l,X		; FF 0B FF 0B
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	ora $160C.w		; 0D 0C 16
	tsb $0C1F.w		; 0C 1F 0C
	bit $0C.b		; 24 0C
	and [$0C.b]		; 27 0C
	bit $2F0C.w		; 2C 0C 2F
	tsb $0C34.w		; 0C 34 0C
	and [$0C.b],Y		; 37 0C
	bit $3F0C.w,X		; 3C 0C 3F
	tsb $0C51.w		; 0C 51 0C
	lsr A		; 4A
	tsb $0C51.w		; 0C 51 0C
	mvn $57,$0C		; 54 0C 57
	tsb $0C5E.w		; 0C 5E 0C
	adc $0C.b		; 65 0C
	pla		; 68
	tsb $0C65.w		; 0C 65 0C
	pla		; 68
	tsb $0C6B.w		; 0C 6B 0C
	ror $710C.w		; 6E 0C 71
	tsb $0C7A.w		; 0C 7A 0C
	adc ($0C.b),Y		; 71 0C
	ply		; 7A
	tsb $0C83.w		; 0C 83 0C
	ldx #$C10C.w		; A2 0C C1
	tsb $0CC6.w		; 0C C6 0C
	wai		; CB
	tsb $0CCB.w		; 0C CB 0C
	phx		; DA
	tsb $0CDD.w		; 0C DD 0C
	asl $0D.b		; 06 0D
	ora [$0D.b],Y		; 17 0D
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	rti		; 40

	ora [$19.b]		; 07 19
	ora [$1A.b]		; 07 1A
	ora [$1B.b]		; 07 1B
	ora [$1C.b]		; 07 1C
	rti		; 40

	php		; 08
	trb $1B08.w		; 1C 08 1B
	php		; 08
	inc A		; 1A
	php		; 08
	ora $0040.w,Y		; 19 40 00
	ora $0E0180.l		; 0F 80 01 0E
	bra   3.b		; 80 03
	asl $0E80.w		; 0E 80 0E
	ora $320A.w,X		; 1D 0A 32
	asl $1D.b		; 06 1D
	bra  12.b		; 80 0C
	ora $1F05.w,X		; 1D 05 1F
	ora $20.b		; 05 20
	ora $21.b		; 05 21
	ora $05.b		; 05 05
	brk $1D.b		; 00 1D
	bra  12.b		; 80 0C
	ora $0505.w,X		; 1D 05 05
	ora $21.b		; 05 21
	ora $20.b		; 05 20
	ora $1F.b		; 05 1F
	brk $1D.b		; 00 1D
	bra   3.b		; 80 03
	asl $0380.w		; 0E 80 03
	bmi -128.b		; 30 80
	ora $31.b,S		; 03 31
	bra   0.b		; 80 00
	bpl -128.b		; 10 80
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	tsb $0001.w		; 0C 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0305.w		; 0C 05 03
	and ($04.b,X)		; 21 04
	jsr $1F04.w		; 20 04 1F
	brk $1D.b		; 00 1D
	bra   6.b		; 80 06
	phd		; 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $78.b		; 06 78
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	php		; 08
	ora [$08.b],Y		; 17 08
	clc		; 18
	trb $2F.b		; 14 2F
	bra   3.b		; 80 03
	ora $032003.l,X		; 1F 03 20 03
	and ($03.b,X)		; 21 03
	ora $00.b		; 05 00
	ora $0880.w,X		; 1D 80 08
	asl $12.b		; 06 12
	ora [$05.b]		; 07 05
	php		; 08
	ora $1E.b,S		; 03 1E
	cop $2D.b		; 02 2D
	tsb $2E.b		; 04 2E
	bra   4.b		; 80 04
	eor $5E04.w,X		; 5D 04 5E
	tsb $5D.b		; 04 5D
	bra   6.b		; 80 06
	stz $06.b		; 64 06
	adc $06.b		; 65 06
	stz $06.b		; 64 06
	adc $06.b		; 65 06
	stz $06.b		; 64 06
	adc $06.b		; 65 06
	stz $06.b		; 64 06
	adc $06.b		; 65 06
	stz $06.b		; 64 06
	adc $80.b		; 65 80
	ora ($23.b,X)		; 01 23
	cop $24.b		; 02 24
	ora $25.b,S		; 03 25
	bra   1.b		; 80 01
	and $02.b,S		; 23 02
	bit $03.b		; 24 03
	jsl $240380.l		; 22 80 03 24
	cop $23.b		; 02 23
	bra   5.b		; 80 05
	and [$07.b]		; 27 07
	plp		; 28
	tsb $8029.w		; 0C 29 80
	ora #$28.b		; 09 28
	ora [$27.b]		; 07 27
	bra   5.b		; 80 05
	and [$07.b]		; 27 07
	plp		; 28
	asl A		; 0A
	rol $80.b		; 26 80
	ora ($2A.b,X)		; 01 2A
	ora $2B.b		; 05 2B
	bra   5.b		; 80 05
	rol A		; 2A
	bra   8.b		; 80 08
	rol A		; 2A
	asl $802C.w		; 0E 2C 80
	ora #$2A.b		; 09 2A
	bra   2.b		; 80 02
	and ($00.b,S),Y		; 33 00
	bit $80.b,X		; 34 80
	ora $33.b,S		; 03 33
	asl $0679.w		; 0E 79 06
	and ($00.b,S),Y		; 33 00
	ora $0280.w,X		; 1D 80 02
	and $00.b,X		; 35 00
	rol $80.b,X		; 36 80
	ora $35.b,S		; 03 35
	asl A		; 0A
	rol $06.b,X		; 36 06
	and $00.b,X		; 35 00
	ora $0380.w,X		; 1D 80 03
	sec		; 38
	asl $0639.w		; 0E 39 06
	sec		; 38
	brk $1D.b		; 00 1D
	bra   2.b		; 80 02
	dec A		; 3A
	ora $3B.b		; 05 3B
	bra   5.b		; 80 05
	dec A		; 3A
	bra   7.b		; 80 07
	stz $0C.b,X		; 74 0C
	adc $80.b,X		; 75 80
	php		; 08
	stz $80.b,X		; 74 80
	cop $3C.b		; 02 3C
	ora $3D.b		; 05 3D
	bra   5.b		; 80 05
	bit $0780.w,X		; 3C 80 07
	rol $3F0A.w,X		; 3E 0A 3F
	bra   7.b		; 80 07
	rol $0880.w,X		; 3E 80 08
	rti		; 40

	asl $41.b		; 06 41
	bpl  66.b		; 10 42
	asl $43.b		; 06 43
	brk $44.b		; 00 44
	bra  16.b		; 80 10
	.db $42, $06		; 42 06
	eor $00.b,S		; 43 00
	mvp $08,$80		; 44 80 08
	mvp $08,$80		; 44 80 08
	mvp $02,$80		; 44 80 02
	eor $02.b		; 45 02
	lsr $03.b		; 46 03
	eor [$80.b]		; 47 80
	ora $45.b,S		; 03 45
	ora $46.b,S		; 03 46
	tsb $47.b		; 04 47
	bra  30.b		; 80 1E
	pha		; 48
	bra  40.b		; 80 28
	pha		; 48
	bra   6.b		; 80 06
	lsr A		; 4A
	bra   8.b		; 80 08
	lsr A		; 4A
	bra   6.b		; 80 06
	phk		; 4B
	asl $4C.b		; 06 4C
	asl $32.b		; 06 32
	brk $1D.b		; 00 1D
	bra   8.b		; 80 08
	phk		; 4B
	php		; 08
	jmp $3208.w		; 4C 08 32
	brk $1D.b		; 00 1D
	bra   1.b		; 80 01
	eor $4E01.w		; 4D 01 4E
	ora ($4F.b,X)		; 01 4F
	ora ($50.b,X)		; 01 50
	ora ($51.b,X)		; 01 51
	ora ($52.b,X)		; 01 52
	ora ($53.b,X)		; 01 53
	ora ($54.b,X)		; 01 54
	ora ($53.b,X)		; 01 53
	ora ($52.b,X)		; 01 52
	ora ($51.b,X)		; 01 51
	ora ($50.b,X)		; 01 50
	ora ($4F.b,X)		; 01 4F
	ora ($4E.b,X)		; 01 4E
	ora ($4D.b,X)		; 01 4D
	bra   3.b		; 80 03
	eor $4E03.w		; 4D 03 4E
	ora $4F.b,S		; 03 4F
	ora $50.b,S		; 03 50
	ora $51.b,S		; 03 51
	ora $52.b,S		; 03 52
	ora $53.b,S		; 03 53
	ora $54.b,S		; 03 54
	ora $53.b,S		; 03 53
	ora $52.b,S		; 03 52
	ora $51.b,S		; 03 51
	ora $50.b,S		; 03 50
	ora $4F.b,S		; 03 4F
	ora $4E.b,S		; 03 4E
	ora $4D.b,S		; 03 4D
	bra  12.b		; 80 0C
	mvp $40,$0C		; 44 0C 40
	bra  14.b		; 80 0E
	mvp $40,$0E		; 44 0E 40
	bra   8.b		; 80 08
	mvp $40,$06		; 44 06 40
	ora $76.b,S		; 03 76
	ora $77.b		; 05 77
	ora $49.b		; 05 49
	ora $56.b		; 05 56
	ora ($76.b,X)		; 01 76
	bra  20.b		; 80 14
	eor [$80.b],Y		; 57 80
	ora $45.b		; 05 45
	tsb $46.b		; 04 46
	ora $47.b,S		; 03 47
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	ora $61.b,S		; 03 61
	bra   0.b		; 80 00
	.db $62, $00, $63		; 62 00 63
	brk $62.b		; 00 62
	brk $63.b		; 00 63
	brk $62.b		; 00 62
	brk $63.b		; 00 63
	brk $62.b		; 00 62
	brk $63.b		; 00 63
	rti		; 40

	brk $0E.b		; 00 0E
	bra   8.b		; 80 08
	eor $5A08.w,Y		; 59 08 5A
	php		; 08
	tad		; 5B
	php		; 08
	jmp $803708.l		; 5C 08 37 80
	php		; 08
	bmi -128.b		; 30 80
	inc $070D.w,X		; FE 0D 07
	asl $0E10.w		; 0E 10 0E
	ora $1C0E.w,Y		; 19 0E 1C
	asl $0E1F.w		; 0E 1F 0E
	jsl $0E290E.l		; 22 0E 29 0E
	dec A		; 3A
	asl $0E4B.w		; 0E 4B 0E
	lsr $510E.w		; 4E 0E 51
	asl $0E54.w		; 0E 54 0E
	eor [$0E.b],Y		; 57 0E
	mvn $57,$0E		; 54 0E 57
	asl $0E5A.w		; 0E 5A 0E
	eor $640E.w,X		; 5D 0E 64
	asl $0E67.w		; 0E 67 0E
	ror $710E.w		; 6E 0E 71
	asl $0E74.w		; 0E 74 0E
	sta $0E.b		; 85 0E
	txa		; 8A
	asl $0E8F.w		; 0E 8F 0E
	sta ($0E.b)		; 92 0E
	sta [$0E.b],Y		; 97 0E
	stz $9D0E.w		; 9C 0E 9D
	asl $0E9E.w		; 0E 9E 0E
	lda $0E.b,S		; A3 0E
	sbc $A80E.w		; ED 0E A8
	asl $0EAD.w		; 0E AD 0E
	dec $E70E.w,X		; DE 0E E7
	ora $F40FEE.l		; 0F EE 0F F4
	asl $0E8F.w		; 0E 8F 0E
	stz $ED0E.w,X		; 9E 0E ED
	asl $0EFB.w		; 0E FB 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $0F.b,X		; 15 0F
	clc		; 18
	ora $260F21.l		; 0F 21 0F 26
	ora $2E0F2B.l		; 0F 2B 0F 2E
	ora $3A0F37.l		; 0F 37 0F 3A
	ora $3F0F3A.l		; 0F 3A 0F 3F
	ora $480F3F.l		; 0F 3F 0F 48
	ora $4D0F48.l		; 0F 48 0F 4D
	ora $560F4D.l		; 0F 4D 0F 56
	ora $5E0F5B.l		; 0F 5B 0F 5E
	ora $680F65.l		; 0F 65 0F 68
	ora $700F6D.l		; 0F 6D 0F 70
	ora $780F75.l		; 0F 75 0F 78
	ora $8C0F83.l		; 0F 83 0F 8C
	ora $960F91.l		; 0F 91 0F 96
	ora $9E0F9B.l		; 0F 9B 0F 9E
	ora $9E0F9B.l		; 0F 9B 0F 9E
	ora $A60FA1.l		; 0F A1 0F A6
	ora $B00FAB.l		; 0F AB 0F B0
	ora $B00FAB.l		; 0F AB 0F B0
	ora $C80FB5.l		; 0F B5 0F C8
	ora $E40FDB.l		; 0F DB 0F E4
	ora $061806.l		; 0F 06 18 06
	ora $1A06.w,Y		; 19 06 1A
	asl $19.b		; 06 19
	rti		; 40

	ora [$1B.b]		; 07 1B
	ora [$1C.b]		; 07 1C
	ora [$1D.b]		; 07 1D
	ora [$1E.b]		; 07 1E
	rti		; 40

	php		; 08
	asl $1D08.w,X		; 1E 08 1D
	php		; 08
	trb $1B08.w		; 1C 08 1B
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0A80.w		; 0E 80 0A
	ora $06200A.l,X		; 1F 0A 20 06
	ora $1F0A80.l,X		; 1F 80 0A 1F
	tsb $21.b		; 04 21
	tsb $22.b		; 04 22
	tsb $23.b		; 04 23
	tsb $24.b		; 04 24
	tsb $25.b		; 04 25
	tsb $26.b		; 04 26
	brk $1F.b		; 00 1F
	bra  10.b		; 80 0A
	ora $042604.l,X		; 1F 04 26 04
	and $04.b		; 25 04
	bit $04.b		; 24 04
	and $04.b,S		; 23 04
	jsl $002104.l		; 22 04 21 00
	ora $0E0380.l,X		; 1F 80 03 0E
	bra   3.b		; 80 03
	eor [$80.b],Y		; 57 80
	ora $33.b,S		; 03 33
	bra   0.b		; 80 00
	bpl -128.b		; 10 80
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	tsb $0001.w		; 0C 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0205.w		; 0C 05 02
	rol $02.b		; 26 02
	and $02.b		; 25 02
	bit $02.b		; 24 02
	and $02.b,S		; 23 02
	jsl $002102.l		; 22 02 21 00
	ora $0B0680.l,X		; 1F 80 06 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $75.b		; 06 75
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	asl $18.b		; 06 18
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $18.b		; 06 18
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $18.b		; 06 18
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $18.b		; 06 18
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $18.b		; 06 18
	asl $19.b		; 06 19
	asl $1A.b		; 06 1A
	asl $19.b		; 06 19
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	trb $17.b		; 14 17
	bra   2.b		; 80 02
	and ($02.b,X)		; 21 02
	jsl $022302.l		; 22 02 23 02
	bit $02.b		; 24 02
	and $02.b		; 25 02
	rol $00.b		; 26 00
	ora $060880.l,X		; 1F 80 08 06
	asl $07.b,X		; 16 07
	asl A		; 0A
	php		; 08
	bra   4.b		; 80 04
	lsr $5F04.w,X		; 5E 04 5F
	tsb $5E.b		; 04 5E
	bra   6.b		; 80 06
	eor ($06.b),Y		; 51 06
	eor ($06.b)		; 52 06
	eor ($06.b),Y		; 51 06
	eor ($06.b)		; 52 06
	eor ($06.b),Y		; 51 06
	eor ($06.b)		; 52 06
	eor ($06.b),Y		; 51 06
	eor ($06.b)		; 52 06
	eor ($06.b),Y		; 51 06
	eor ($80.b)		; 52 80
	cop $27.b		; 02 27
	ora $28.b,S		; 03 28
	bra   3.b		; 80 03
	and [$80.b]		; 27 80
	tsb $29.b		; 04 29
	tsb $2A.b		; 04 2A
	ora $2B.b		; 05 2B
	phd		; 0B
	bit $0780.w		; 2C 80 07
	and $7406.w		; 2D 06 74
	bra   2.b		; 80 02
	rol $2F03.w		; 2E 03 2F
	bra   3.b		; 80 03
	rol $0580.w		; 2E 80 05
	asl $3006.w		; 0E 06 30
	asl $31.b		; 06 31
	asl $32.b		; 06 32
	bra   6.b		; 80 06
	asl $0280.w		; 0E 80 02
	bit $00.b,X		; 34 00
	and $80.b,X		; 35 80
	ora $36.b,S		; 03 36
	asl A		; 0A
	and [$06.b],Y		; 37 06
	rol $00.b,X		; 36 00
	ora $380280.l,X		; 1F 80 02 38
	brk $39.b		; 00 39
	bra   3.b		; 80 03
	dec A		; 3A
	asl A		; 0A
	tsa		; 3B
	tsb $3A.b		; 04 3A
	brk $1F.b		; 00 1F
	bra   2.b		; 80 02
	bit $3D03.w,X		; 3C 03 3D
	bra   3.b		; 80 03
	bit $0680.w,X		; 3C 80 06
	rol $3F07.w,X		; 3E 07 3F
	asl A		; 0A
	rti		; 40

	bra  10.b		; 80 0A
	eor ($80.b,X)		; 41 80
	cop $42.b		; 02 42
	ora $43.b,S		; 03 43
	bra   3.b		; 80 03
	.db $42, $80		; 42 80
	ora $45.b		; 05 45
	asl A		; 0A
	lsr $80.b		; 46 80
	asl $45.b		; 06 45
	bra   2.b		; 80 02
	eor [$03.b]		; 47 03
	pha		; 48
	asl $49.b		; 06 49
	ora $5C.b		; 05 5C
	tsb $5D.b		; 04 5D
	bra   2.b		; 80 02
	eor $3304.w,X		; 5D 04 33
	tsb $0F.b		; 04 0F
	tsb $0E.b		; 04 0E
	bra   6.b		; 80 06
	phy		; 5A
	tsb $5B.b		; 04 5B
	bra   3.b		; 80 03
	lsr A		; 4A
	ora $4B.b,S		; 03 4B
	bra   5.b		; 80 05
	lsr A		; 4A
	ora $4B.b		; 05 4B
	bra  35.b		; 80 23
	jmp $3280.w		; 4C 80 32
	jmp $0380.w		; 4C 80 03
	eor $4E03.w		; 4D 03 4E
	bra   5.b		; 80 05
	eor $4E05.w		; 4D 05 4E
	bra   5.b		; 80 05
	eor $805005.l		; 4F 05 50 80
	ora [$4F.b]		; 07 4F
	ora [$50.b]		; 07 50
	bra   2.b		; 80 02
	bvs   3.b		; 70 03
	eor ($03.b,S),Y		; 53 03
	mvn $55,$03		; 54 03 55
	ora $53.b,S		; 03 53
	ora $54.b,S		; 03 54
	ora $55.b,S		; 03 55
	asl $56.b		; 06 56
	asl A		; 0A
	clc		; 18
	bra   4.b		; 80 04
	bvs   4.b		; 70 04
	eor ($04.b,S),Y		; 53 04
	mvn $55,$04		; 54 04 55
	tsb $53.b		; 04 53
	tsb $54.b		; 04 54
	tsb $55.b		; 04 55
	php		; 08
	lsr $10.b,X		; 56 10
	clc		; 18
	bra   6.b		; 80 06
	and #$05.b		; 29 05
	rol A		; 2A
	ora $71.b		; 05 71
	tsb $72.b		; 04 72
	bra  60.b		; 80 3C
	adc ($80.b,S),Y		; 73 80
	bit $0857.w,X		; 3C 57 08
	cli		; 58
	php		; 08
	eor $0080.w,Y		; 59 80 00
	rts		; 60

	bra -27.b		; 80 E5
	bpl -18.b		; 10 EE
	bpl  -5.b		; 10 FB
	bpl   8.b		; 10 08
	ora ($0B.b),Y		; 11 0B
	ora ($0E.b),Y		; 11 0E
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($18.b),Y		; 11 18
	ora ($1B.b),Y		; 11 1B
	ora ($1E.b),Y		; 11 1E
	ora ($21.b),Y		; 11 21
	ora ($24.b),Y		; 11 24
	ora ($21.b),Y		; 11 21
	ora ($24.b),Y		; 11 24
	ora ($27.b),Y		; 11 27
	ora ($2A.b),Y		; 11 2A
	ora ($31.b),Y		; 11 31
	ora ($34.b),Y		; 11 34
	ora ($3B.b),Y		; 11 3B
	ora ($3E.b),Y		; 11 3E
	ora ($41.b),Y		; 11 41
	ora ($48.b),Y		; 11 48
	ora ($4D.b),Y		; 11 4D
	ora ($52.b),Y		; 11 52
	ora ($55.b),Y		; 11 55
	ora ($5A.b),Y		; 11 5A
	ora ($5F.b),Y		; 11 5F
	ora ($60.b),Y		; 11 60
	ora ($61.b),Y		; 11 61
	ora ($66.b),Y		; 11 66
	ora ($A6.b),Y		; 11 A6
	ora ($6B.b),Y		; 11 6B
	ora ($70.b),Y		; 11 70
	ora ($A1.b),Y		; 11 A1
	ora ($24.b),Y		; 11 24
	ora ($2D.b,S),Y		; 13 2D
	ora ($AD.b,S),Y		; 13 AD
	ora ($52.b),Y		; 11 52
	ora ($61.b),Y		; 11 61
	ora ($A6.b),Y		; 11 A6
	ora ($B4.b),Y		; 11 B4
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C9.b		; 00 C9
	ora ($CE.b),Y		; 11 CE
	ora ($D3.b),Y		; 11 D3
	ora ($D6.b),Y		; 11 D6
	ora ($DD.b),Y		; 11 DD
	ora ($E2.b),Y		; 11 E2
	ora ($E7.b),Y		; 11 E7
	ora ($EA.b),Y		; 11 EA
	ora ($EF.b),Y		; 11 EF
	ora ($F2.b),Y		; 11 F2
	ora ($F9.b),Y		; 11 F9
	ora ($FE.b),Y		; 11 FE
	ora ($03.b),Y		; 11 03
	ora ($0C.b)		; 12 0C
	ora ($11.b)		; 12 11
	ora ($FE.b)		; 12 FE
	ora ($03.b),Y		; 11 03
	ora ($1E.b)		; 12 1E
	ora ($23.b)		; 12 23
	ora ($2C.b)		; 12 2C
	ora ($31.b)		; 12 31
	ora ($34.b)		; 12 34
	ora ($39.b)		; 12 39
	ora ($3C.b)		; 12 3C
	ora ($41.b)		; 12 41
	ora ($44.b)		; 12 44
	ora ($49.b)		; 12 49
	ora ($4E.b)		; 12 4E
	ora ($55.b)		; 12 55
	ora ($58.b)		; 12 58
	ora ($5B.b)		; 12 5B
	ora ($62.b)		; 12 62
	ora ($6B.b)		; 12 6B
	ora ($6E.b)		; 12 6E
	ora ($77.b)		; 12 77
	ora ($80.b)		; 12 80
	ora ($83.b)		; 12 83
	ora ($80.b)		; 12 80
	ora ($83.b)		; 12 83
	ora ($86.b)		; 12 86
	ora ($8B.b)		; 12 8B
	ora ($90.b)		; 12 90
	ora ($90.b)		; 12 90
	ora ($96.b)		; 12 96
	ora ($9D.b)		; 12 9D
	ora ($A4.b)		; 12 A4
	ora ($A4.b)		; 12 A4
	ora ($AD.b)		; 12 AD
	ora ($AD.b)		; 12 AD
	ora ($B0.b)		; 12 B0
	ora ($B7.b)		; 12 B7
	ora ($BA.b)		; 12 BA
	ora ($15.b)		; 12 15
	ora ($B7.b,S),Y		; 13 B7
	ora ($93.b)		; 12 93
	ora ($9D.b)		; 12 9D
	ora ($A4.b)		; 12 A4
	ora ($AD.b)		; 12 AD
	ora ($06.b)		; 12 06
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora $40.b,X		; 15 40
	tsb $19.b		; 04 19
	tsb $1A.b		; 04 1A
	tsb $1B.b		; 04 1B
	tsb $1C.b		; 04 1C
	tsb $1D.b		; 04 1D
	tsb $26.b		; 04 26
	rti		; 40

	ora $26.b		; 05 26
	ora $1D.b		; 05 1D
	ora $1C.b		; 05 1C
	ora $1B.b		; 05 1B
	ora $1A.b		; 05 1A
	ora $19.b		; 05 19
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0C80.w		; 0E 80 0C
	asl $1F0C.w,X		; 1E 0C 1F
	brk $1E.b		; 00 1E
	bra   3.b		; 80 03
	asl $0380.w		; 0E 80 03
	eor ($80.b,S),Y		; 53 80
	ora $52.b,S		; 03 52
	bra   0.b		; 80 00
	bpl -128.b		; 10 80
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	tsb $0001.w		; 0C 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0605.w		; 0C 05 06
	ora $801E00.l,X		; 1F 00 1E 80
	asl $0B.b		; 06 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $72.b		; 06 72
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	php		; 08
	ora [$0C.b],Y		; 17 0C
	clc		; 18
	php		; 08
	ora [$0C.b],Y		; 17 0C
	clc		; 18
	bra   4.b		; 80 04
	ora $801E00.l,X		; 1F 00 1E 80
	php		; 08
	asl $16.b		; 06 16
	ora [$0A.b]		; 07 0A
	php		; 08
	bra   2.b		; 80 02
	ror $02.b		; 66 02
	adc [$02.b]		; 67 02
	ror $80.b		; 66 80
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	bra   2.b		; 80 02
	and ($03.b,X)		; 21 03
	jsl $210280.l		; 22 80 02 21
	ora $20.b,S		; 03 20
	bra   3.b		; 80 03
	and ($80.b,X)		; 21 80
	tsb $21.b		; 04 21
	ora $24.b		; 05 24
	asl A		; 0A
	and $80.b		; 25 80
	asl $24.b		; 06 24
	ora $21.b		; 05 21
	bra   6.b		; 80 06
	and ($0A.b,X)		; 21 0A
	pla		; 68
	bra   6.b		; 80 06
	and ($80.b,X)		; 21 80
	cop $27.b		; 02 27
	ora $28.b,S		; 03 28
	bra   3.b		; 80 03
	and [$80.b]		; 27 80
	tsb $29.b		; 04 29
	asl $2A.b		; 06 2A
	asl A		; 0A
	pld		; 2B
	bra   6.b		; 80 06
	rol A		; 2A
	ora $29.b		; 05 29
	bra   2.b		; 80 02
	adc #$00.b		; 69 00
	bit $0380.w		; 2C 80 03
	adc #$0A.b		; 69 0A
	ror A		; 6A
	tsb $69.b		; 04 69
	brk $1E.b		; 00 1E
	bra   2.b		; 80 02
	rol $2F00.w		; 2E 00 2F
	bra   2.b		; 80 02
	bmi   3.b		; 30 03
	and ($0A.b),Y		; 31 0A
	and ($04.b)		; 32 04
	and $02.b,S		; 23 02
	bmi   0.b		; 30 00
	asl $0280.w,X		; 1E 80 02
	and ($00.b,S),Y		; 33 00
	bit $80.b,X		; 34 80
	cop $33.b		; 02 33
	asl A		; 0A
	rtl		; 6B

	tsb $33.b		; 04 33
	brk $1E.b		; 00 1E
	bra   2.b		; 80 02
	and $03.b,X		; 35 03
	rol $80.b,X		; 36 80
	ora $35.b,S		; 03 35
	bra   6.b		; 80 06
	and $0A.b,X		; 35 0A
	jmp ($0680.w)		; 6C 80 06
	and $80.b,X		; 35 80
	ora $37.b,S		; 03 37
	tsb $38.b		; 04 38
	bra   4.b		; 80 04
	and [$80.b],Y		; 37 80
	asl $37.b		; 06 37
	brk $51.b		; 00 51
	bra  12.b		; 80 0C
	and [$04.b],Y		; 37 04
	ora $430680.l		; 0F 80 06 43
	ora $44.b		; 05 44
	ora $45.b		; 05 45
	bra   8.b		; 80 08
	lsr $80.b		; 46 80
	ora $0E.b,S		; 03 0E
	bra   5.b		; 80 05
	eor [$04.b]		; 47 04
	pha		; 48
	ora $49.b,S		; 03 49
	bra   8.b		; 80 08
	lsr A		; 4A
	php		; 08
	phk		; 4B
	php		; 08
	jmp $1E00.w		; 4C 00 1E
	bra   0.b		; 80 00
	bvs -128.b		; 70 80
	ora $39.b,S		; 03 39
	cop $3A.b		; 02 3A
	cop $3B.b		; 02 3B
	ora ($2D.b,X)		; 01 2D
	bra   4.b		; 80 04
	and $3A03.w,Y		; 39 03 3A
	ora $3B.b,S		; 03 3B
	cop $2D.b		; 02 2D
	bra  35.b		; 80 23
	bit $3280.w,X		; 3C 80 32
	bit $0E80.w,X		; 3C 80 0E
	ror $6F0E.w		; 6E 0E 6F
	bra  16.b		; 80 10
	ror $6F10.w		; 6E 10 6F
	bra   4.b		; 80 04
	adc $6F0080.l		; 6F 80 00 6F
	bra   4.b		; 80 04
	and $3E0E.w,X		; 3D 0E 3E
	asl $3F.b		; 06 3F
	bra   6.b		; 80 06
	and $3E1E.w,X		; 3D 1E 3E
	asl A		; 0A
	and $410080.l,X		; 3F 80 00 41
	brk $6D.b		; 00 6D
	brk $42.b		; 00 42
	brk $40.b		; 00 40
	rti		; 40

	php		; 08
	adc $0880.w		; 6D 80 08
	phk		; 4B
	php		; 08
	jmp $1E08.w		; 4C 08 1E
	bra   7.b		; 80 07
	adc ($80.b),Y		; 71 80
	ora ($27.b,X)		; 01 27
	cop $28.b		; 02 28
	ora ($27.b,X)		; 01 27
	ora ($0E.b,X)		; 01 0E
	ora ($37.b,X)		; 01 37
	cop $38.b		; 02 38
	ora ($37.b,X)		; 01 37
	ora ($35.b,X)		; 01 35
	cop $6C.b		; 02 6C
	ora ($35.b,X)		; 01 35
	ora ($0E.b,X)		; 01 0E
	ora ($21.b,X)		; 01 21
	cop $22.b		; 02 22
	ora ($29.b,X)		; 01 29
	ora ($2A.b,X)		; 01 2A
	cop $2B.b		; 02 2B
	cop $2A.b		; 02 2A
	ora ($0E.b,X)		; 01 0E
	ora ($37.b,X)		; 01 37
	cop $51.b		; 02 51
	ora ($0E.b,X)		; 01 0E
	ora ($21.b,X)		; 01 21
	cop $24.b		; 02 24
	cop $25.b		; 02 25
	ora ($21.b,X)		; 01 21
	cop $22.b		; 02 22
	ora ($21.b,X)		; 01 21
	ora ($0E.b,X)		; 01 0E
	ora ($35.b,X)		; 01 35
	cop $6C.b		; 02 6C
	ora ($35.b,X)		; 01 35
	ora ($37.b,X)		; 01 37
	cop $38.b		; 02 38
	ora ($37.b,X)		; 01 37
	ora ($0E.b,X)		; 01 0E
	ora ($29.b,X)		; 01 29
	cop $2A.b		; 02 2A
	cop $2B.b		; 02 2B
	cop $2A.b		; 02 2A
	ora ($21.b,X)		; 01 21
	cop $68.b		; 02 68
	ora ($21.b,X)		; 01 21
	cop $24.b		; 02 24
	cop $25.b		; 02 25
	ora ($24.b,X)		; 01 24
	bra   1.b		; 80 01
	eor [$02.b]		; 47 02
	pha		; 48
	ora $49.b,S		; 03 49
	tsb $4A.b		; 04 4A
	tsb $4B.b		; 04 4B
	tsb $4C.b		; 04 4C
	brk $1E.b		; 00 1E
	bra   8.b		; 80 08
	eor $4E10.w		; 4D 10 4E
	php		; 08
	eor $805008.l		; 4F 08 50 80
	brk $54.b		; 00 54
	bra  24.b		; 80 18
	trb $21.b		; 14 21
	trb $2A.b		; 14 2A
	trb $33.b		; 14 33
	trb $36.b		; 14 36
	trb $39.b		; 14 39
	trb $3C.b		; 14 3C
	trb $43.b		; 14 43
	trb $52.b		; 14 52
	trb $61.b		; 14 61
	trb $64.b		; 14 64
	trb $67.b		; 14 67
	trb $6A.b		; 14 6A
	trb $6D.b		; 14 6D
	trb $6A.b		; 14 6A
	trb $6D.b		; 14 6D
	trb $70.b		; 14 70
	trb $73.b		; 14 73
	trb $7A.b		; 14 7A
	trb $7D.b		; 14 7D
	trb $84.b		; 14 84
	trb $87.b		; 14 87
	trb $8A.b		; 14 8A
	trb $99.b		; 14 99
	trb $9E.b		; 14 9E
	trb $A3.b		; 14 A3
	trb $A6.b		; 14 A6
	trb $AB.b		; 14 AB
	trb $B0.b		; 14 B0
	trb $B1.b		; 14 B1
	trb $B2.b		; 14 B2
	trb $B7.b		; 14 B7
	trb $FF.b		; 14 FF
	trb $BC.b		; 14 BC
	trb $C1.b		; 14 C1
	trb $F2.b		; 14 F2
	trb $15.b		; 14 15
	asl $52.b,X		; 16 52
	asl $06.b,X		; 16 06
	ora $A3.b,X		; 15 A3
	trb $B2.b		; 14 B2
	trb $FF.b		; 14 FF
	trb $0D.b		; 14 0D
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $27.b,X		; 15 27
	ora $2A.b,X		; 15 2A
	ora $2F.b,X		; 15 2F
	ora $34.b,X		; 15 34
	ora $39.b,X		; 15 39
	ora $3C.b,X		; 15 3C
	ora $41.b,X		; 15 41
	ora $44.b,X		; 15 44
	ora $4B.b,X		; 15 4B
	ora $50.b,X		; 15 50
	ora $55.b,X		; 15 55
	ora $58.b,X		; 15 58
	ora $5B.b,X		; 15 5B
	ora $60.b,X		; 15 60
	ora $69.b,X		; 15 69
	ora $70.b,X		; 15 70
	ora $5B.b,X		; 15 5B
	ora $60.b,X		; 15 60
	ora $69.b,X		; 15 69
	ora $7D.b,X		; 15 7D
	ora $88.b,X		; 15 88
	ora $8D.b,X		; 15 8D
	ora $90.b,X		; 15 90
	ora $95.b,X		; 15 95
	ora $98.b,X		; 15 98
	ora $9D.b,X		; 15 9D
	ora $A0.b,X		; 15 A0
	ora $A7.b,X		; 15 A7
	ora $AC.b,X		; 15 AC
	ora $B3.b,X		; 15 B3
	ora $B6.b,X		; 15 B6
	ora $AC.b,X		; 15 AC
	ora $B3.b,X		; 15 B3
	ora $BD.b,X		; 15 BD
	ora $C6.b,X		; 15 C6
	ora $CF.b,X		; 15 CF
	ora $D2.b,X		; 15 D2
	ora $CF.b,X		; 15 CF
	ora $D2.b,X		; 15 D2
	ora $D5.b,X		; 15 D5
	ora $DA.b,X		; 15 DA
	ora $DF.b,X		; 15 DF
	ora $E4.b,X		; 15 E4
	ora $E9.b,X		; 15 E9
	ora $F0.b,X		; 15 F0
	ora $F7.b,X		; 15 F7
	ora $FA.b,X		; 15 FA
	ora $FD.b,X		; 15 FD
	ora $06.b,X		; 15 06
	asl $0B.b,X		; 16 0B
	asl $12.b,X		; 16 12
	asl $06.b,X		; 16 06
	trb $06.b		; 14 06
	ora $06.b,X		; 15 06
	asl $06.b,X		; 16 06
	ora $40.b,X		; 15 40
	ora $1B.b		; 05 1B
	ora $1C.b		; 05 1C
	ora $1D.b		; 05 1D
	ora $1E.b		; 05 1E
	rti		; 40

	asl $1E.b		; 06 1E
	asl $1D.b		; 06 1D
	asl $1C.b		; 06 1C
	asl $1B.b		; 06 1B
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0A80.w		; 0E 80 0A
	bit $06.b		; 24 06
	and $06.b		; 25 06
	bit $80.b		; 24 80
	asl A		; 0A
	ora $042004.l,X		; 1F 04 20 04
	and ($04.b,X)		; 21 04
	jsl $042304.l		; 22 04 23 04
	bit $04.b		; 24 04
	ora $1F0A80.l,X		; 1F 80 0A 1F
	tsb $24.b		; 04 24
	tsb $23.b		; 04 23
	tsb $22.b		; 04 22
	tsb $21.b		; 04 21
	tsb $20.b		; 04 20
	tsb $1F.b		; 04 1F
	bra   3.b		; 80 03
	asl $0380.w		; 0E 80 03
	cli		; 58
	bra   3.b		; 80 03
	eor ($80.b),Y		; 51 80
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	ora ($80.b),Y		; 11 80
	brk $00.b		; 00 00
	bra   6.b		; 80 06
	brk $0C.b		; 00 0C
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0305.w		; 0C 05 03
	bit $03.b		; 24 03
	and $03.b,S		; 23 03
	jsl $032103.l		; 22 03 21 03
	jsr $1F03.w		; 20 03 1F
	bra   6.b		; 80 06
	phd		; 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $85.b		; 06 85
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $17.b		; 06 17
	asl $18.b		; 06 18
	asl $19.b		; 06 19
	trb $1A.b		; 14 1A
	bra   3.b		; 80 03
	jsr $2103.w		; 20 03 21
	ora $22.b,S		; 03 22
	ora $23.b,S		; 03 23
	ora $24.b,S		; 03 24
	ora $1F.b,S		; 03 1F
	bra   8.b		; 80 08
	asl $16.b		; 06 16
	ora [$0A.b]		; 07 0A
	php		; 08
	bra   6.b		; 80 06
	adc $0C.b,X		; 75 0C
	ror $06.b,X		; 76 06
	adc $80.b,X		; 75 80
	asl $5A.b		; 06 5A
	asl $5B.b		; 06 5B
	asl $5A.b		; 06 5A
	asl $5B.b		; 06 5B
	asl $5A.b		; 06 5A
	asl $5B.b		; 06 5B
	asl $5A.b		; 06 5A
	asl $5B.b		; 06 5B
	asl $5A.b		; 06 5A
	asl $5B.b		; 06 5B
	bra   2.b		; 80 02
	rol $03.b		; 26 03
	and [$80.b]		; 27 80
	ora $26.b,S		; 03 26
	bra   5.b		; 80 05
	and #$0A.b		; 29 0A
	rol A		; 2A
	bra   8.b		; 80 08
	pld		; 2B
	asl $29.b		; 06 29
	bra   3.b		; 80 03
	rol $2F04.w		; 2E 04 2F
	bra   3.b		; 80 03
	rol $0380.w		; 2E 80 03
	rol $2C03.w		; 2E 03 2C
	bra   3.b		; 80 03
	rol $0480.w		; 2E 80 04
	.db $62, $06, $63		; 62 06 63
	tsb $8064.w		; 0C 64 80
	asl $65.b		; 06 65
	ora $0E.b		; 05 0E
	bra   7.b		; 80 07
	and ($0A.b),Y		; 31 0A
	and ($80.b)		; 32 80
	asl $84.b		; 06 84
	bra   5.b		; 80 05
	and ($80.b),Y		; 31 80
	cop $33.b		; 02 33
	brk $34.b		; 00 34
	bra   3.b		; 80 03
	and ($0A.b,S),Y		; 33 0A
	adc [$06.b],Y		; 77 06
	and ($00.b,S),Y		; 33 00
	bit $80.b		; 24 80
	brk $35.b		; 00 35
	ora ($36.b,X)		; 01 36
	brk $37.b		; 00 37
	bra   3.b		; 80 03
	jmp $035D03.l		; 5C 03 5D 03
	lsr $5F03.w,X		; 5E 03 5F
	ora $60.b,S		; 03 60
	brk $24.b		; 00 24
	bra   2.b		; 80 02
	sec		; 38
	ora $39.b,S		; 03 39
	asl $3A.b		; 06 3A
	ora $2D.b,S		; 03 2D
	brk $24.b		; 00 24
	bra   2.b		; 80 02
	tsa		; 3B
	ora $3C.b,S		; 03 3C
	bra   3.b		; 80 03
	tsa		; 3B
	bra   7.b		; 80 07
	tsa		; 3B
	tsb $8078.w		; 0C 78 80
	ora [$3B.b]		; 07 3B
	bra   2.b		; 80 02
	and $3E03.w,X		; 3D 03 3E
	bra   3.b		; 80 03
	and $0380.w,X		; 3D 80 03
	rti		; 40

	tsb $41.b		; 04 41
	ora #$42.b		; 09 42
	bra   6.b		; 80 06
	eor $06.b,S		; 43 06
	bmi -128.b		; 30 80
	php		; 08
	lsr $4F05.w		; 4E 05 4F
	tsb $50.b		; 04 50
	bra   8.b		; 80 08
	ror $0280.w,X		; 7E 80 02
	ror $3F05.w,X		; 7E 05 3F
	asl $4E.b		; 06 4E
	bra   2.b		; 80 02
	mvp $45,$01		; 44 01 45
	ora ($46.b,X)		; 01 46
	ora ($47.b,X)		; 01 47
	bra   3.b		; 80 03
	mvp $45,$02		; 44 02 45
	cop $46.b		; 02 46
	cop $47.b		; 02 47
	bra  35.b		; 80 23
	pha		; 48
	bra  50.b		; 80 32
	pha		; 48
	bra   1.b		; 80 01
	eor #$02.b		; 49 02
	lsr A		; 4A
	bra   2.b		; 80 02
	eor #$03.b		; 49 03
	lsr A		; 4A
	bra   3.b		; 80 03
	phk		; 4B
	ora $82.b,S		; 03 82
	rti		; 40

	ora $4B.b,S		; 03 4B
	ora $82.b,S		; 03 82
	rti		; 40

	tsb $4C.b		; 04 4C
	tsb $4D.b		; 04 4D
	brk $7F.b		; 00 7F
	bra   8.b		; 80 08
	jmp $4D08.w		; 4C 08 4D
	brk $7F.b		; 00 7F
	bra   2.b		; 80 02
	adc $0480.w,X		; 7D 80 04
	adc $0180.w,X		; 7D 80 01
	eor #$02.b		; 49 02
	adc $7A02.w,Y		; 79 02 7A
	tsb $7B.b		; 04 7B
	bra   3.b		; 80 03
	jmp ($8303.w,X)		; 7C 03 83
	rti		; 40

	asl A		; 0A
	bra  10.b		; 80 0A
	sta ($00.b,X)		; 81 00
	adc $7D0480.l,X		; 7F 80 04 7D
	bra   6.b		; 80 06
	eor ($06.b)		; 52 06
	eor ($06.b,S),Y		; 53 06
	mvn $55,$06		; 54 06 55
	asl $56.b		; 06 56
	asl $57.b		; 06 57
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $57.b		; 06 57
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $57.b		; 06 57
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $57.b		; 06 57
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $57.b		; 06 57
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $57.b		; 06 57
	asl $55.b		; 06 55
	asl $56.b		; 06 56
	asl $55.b		; 06 55
	asl $57.b		; 06 57
	bra   0.b		; 80 00
	eor $2F80.w,Y		; 59 80 2F
	ora [$38.b],Y		; 17 38
	ora [$45.b],Y		; 17 45
	ora [$52.b],Y		; 17 52
	ora [$55.b],Y		; 17 55
	ora [$58.b],Y		; 17 58
	ora [$5B.b],Y		; 17 5B
	ora [$5B.b],Y		; 17 5B
	ora [$5B.b],Y		; 17 5B
	ora [$62.b],Y		; 17 62
	ora [$65.b],Y		; 17 65
	ora [$68.b],Y		; 17 68
	ora [$6B.b],Y		; 17 6B
	ora [$6E.b],Y		; 17 6E
	ora [$6B.b],Y		; 17 6B
	ora [$6E.b],Y		; 17 6E
	ora [$71.b],Y		; 17 71
	ora [$74.b],Y		; 17 74
	ora [$7B.b],Y		; 17 7B
	ora [$7E.b],Y		; 17 7E
	ora [$85.b],Y		; 17 85
	ora [$88.b],Y		; 17 88
	ora [$8B.b],Y		; 17 8B
	ora [$92.b],Y		; 17 92
	ora [$97.b],Y		; 17 97
	ora [$9C.b],Y		; 17 9C
	ora [$9F.b],Y		; 17 9F
	ora [$A4.b],Y		; 17 A4
	ora [$A9.b],Y		; 17 A9
	ora [$AA.b],Y		; 17 AA
	ora [$AB.b],Y		; 17 AB
	ora [$B0.b],Y		; 17 B0
	ora [$F4.b],Y		; 17 F4
	ora [$B5.b],Y		; 17 B5
	ora [$BA.b],Y		; 17 BA
	ora [$EF.b],Y		; 17 EF
	ora [$4C.b],Y		; 17 4C
	ora $1951.w,Y		; 19 51 19
	xce		; FB
	ora [$9C.b],Y		; 17 9C
	ora [$AB.b],Y		; 17 AB
	ora [$F4.b],Y		; 17 F4
	ora [$02.b],Y		; 17 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$18.b],Y		; 17 18
	trb $1F18.w		; 1C 18 1F
	clc		; 18
	bit $18.b		; 24 18
	and [$18.b]		; 27 18
	bmi  24.b		; 30 18
	and [$18.b],Y		; 37 18
	bit $3F18.w,X		; 3C 18 3F
	clc		; 18
	mvp $47,$18		; 44 18 47
	clc		; 18
	lsr $5318.w		; 4E 18 53
	clc		; 18
	cli		; 58
	clc		; 18
	adc ($18.b,X)		; 61 18
	pla		; 68
	clc		; 18
	eor ($18.b,S),Y		; 53 18
	cli		; 58
	clc		; 18
	adc ($18.b,X)		; 61 18
	pla		; 68
	clc		; 18
	adc $18.b,X		; 75 18
	ply		; 7A
	clc		; 18
	adc $8618.w,X		; 7D 18 86
	clc		; 18
	sta $9218.w		; 8D 18 92
	clc		; 18
	sta $18.b,X		; 95 18
	stz $A118.w		; 9C 18 A1
	clc		; 18
	tax		; AA
	clc		; 18
	lda $18B618.l		; AF 18 B6 18
	lda $C018.w,X		; BD 18 C0
	clc		; 18
	lda $C018.w,X		; BD 18 C0
	clc		; 18
	cmp $18.b		; C5 18
	dex		; CA
	clc		; 18
	cmp $18D618.l		; CF 18 D6 18
	cmp $E218.w,X		; DD 18 E2
	clc		; 18
	sbc [$18.b]		; E7 18
	inc HDMATBL1L.w		; EE 18 43
	ora $1406.w,Y		; 19 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	rti		; 40

	tsb $1C.b		; 04 1C
	tsb $1D.b		; 04 1D
	tsb $1E.b		; 04 1E
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $1D.b		; 04 1D
	rti		; 40

	ora $1F.b		; 05 1F
	ora $1E.b		; 05 1E
	ora $1D.b		; 05 1D
	ora $1C.b		; 05 1C
	ora $1D.b		; 05 1D
	ora $1E.b		; 05 1E
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0A80.w		; 0E 80 0A
	jsr $2106.w		; 20 06 21
	asl $20.b		; 06 20
	bra   3.b		; 80 03
	asl $0380.w		; 0E 80 03
	.db $42, $80		; 42 80
	ora $3F.b,S		; 03 3F
	bra   0.b		; 80 00
	bpl -128.b		; 10 80
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	tsb $0001.w		; 0C 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0405.w		; 0C 05 04
	and ($00.b,X)		; 21 00
	jsr $0680.w		; 20 80 06
	phd		; 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $68.b		; 06 68
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $17.b		; 06 17
	asl $18.b		; 06 18
	asl $19.b		; 06 19
	asl $18.b		; 06 18
	trb $1A.b		; 14 1A
	asl $1B.b		; 06 1B
	bra   3.b		; 80 03
	and ($03.b,X)		; 21 03
	jsr $0880.w		; 20 80 08
	asl $16.b		; 06 16
	ora [$0A.b]		; 07 0A
	php		; 08
	bra   6.b		; 80 06
	eor $06600C.l,X		; 5F 0C 60 06
	eor $430680.l,X		; 5F 80 06 43
	asl $44.b		; 06 44
	asl $43.b		; 06 43
	asl $44.b		; 06 44
	asl $43.b		; 06 43
	asl $44.b		; 06 44
	asl $43.b		; 06 43
	asl $44.b		; 06 44
	asl $43.b		; 06 43
	asl $44.b		; 06 44
	bra   2.b		; 80 02
	bit $03.b		; 24 03
	and $80.b		; 25 80
	ora $24.b,S		; 03 24
	bra   2.b		; 80 02
	jsl $802303.l		; 22 03 23 80
	ora $22.b,S		; 03 22
	bra   2.b		; 80 02
	jsl $042303.l		; 22 03 23 04
	adc [$0C.b]		; 67 0C
	plp		; 28
	bra   6.b		; 80 06
	adc [$05.b]		; 67 05
	and $04.b,S		; 23 04
	jsl $260780.l		; 22 80 07 26
	asl A		; 0A
	and [$80.b]		; 27 80
	ora [$26.b]		; 07 26
	bra   2.b		; 80 02
	adc $03.b,S		; 63 03
	stz $80.b		; 64 80
	ora $63.b,S		; 03 63
	bra   4.b		; 80 04
	and #$06.b		; 29 06
	rol A		; 2A
	tsb $802B.w		; 0C 2B 80
	php		; 08
	rol A		; 2A
	ora [$29.b]		; 07 29
	bra   2.b		; 80 02
	bit $2D00.w		; 2C 00 2D
	bra   6.b		; 80 06
	bit $6108.w		; 2C 08 61
	asl $2C.b		; 06 2C
	brk $20.b		; 00 20
	bra   1.b		; 80 01
	rol $2F02.w		; 2E 02 2F
	brk $30.b		; 00 30
	bra   4.b		; 80 04
	rol $2F04.w		; 2E 04 2F
	asl A		; 0A
	.db $62, $04, $2F		; 62 04 2F
	tsb $2E.b		; 04 2E
	brk $20.b		; 00 20
	bra   2.b		; 80 02
	and ($03.b),Y		; 31 03
	and ($80.b)		; 32 80
	ora $31.b,S		; 03 31
	bra   4.b		; 80 04
	and ($05.b,S),Y		; 33 05
	bit $06.b,X		; 34 06
	and $0A.b,X		; 35 0A
	ror $80.b		; 66 80
	ora [$35.b]		; 07 35
	asl $34.b		; 06 34
	ora $33.b		; 05 33
	bra   2.b		; 80 02
	rol $03.b,X		; 36 03
	and [$80.b],Y		; 37 80
	ora $36.b,S		; 03 36
	bra   4.b		; 80 04
	sec		; 38
	asl $39.b		; 06 39
	asl A		; 0A
	dec A		; 3A
	bra   7.b		; 80 07
	and $3805.w,Y		; 39 05 38
	bra   4.b		; 80 04
	tsa		; 3B
	tsb $3C.b		; 04 3C
	asl $3D.b		; 06 3D
	tsb $3E.b		; 04 3E
	bra   4.b		; 80 04
	bit $3B06.w,X		; 3C 06 3B
	bra   3.b		; 80 03
	eor $03.b		; 45 03
	lsr $03.b		; 46 03
	eor [$80.b]		; 47 80
	ora $45.b		; 05 45
	ora $46.b		; 05 46
	ora $47.b		; 05 47
	bra  35.b		; 80 23
	pha		; 48
	bra  60.b		; 80 3C
	pha		; 48
	trb $48.b		; 14 48
	bra   4.b		; 80 04
	eor #$00.b		; 49 00
	lsr A		; 4A
	bra   8.b		; 80 08
	eor #$00.b		; 49 00
	lsr A		; 4A
	bra   5.b		; 80 05
	phk		; 4B
	ora $4C.b		; 05 4C
	ora [$4D.b]		; 07 4D
	bra   7.b		; 80 07
	phk		; 4B
	ora [$4C.b]		; 07 4C
	ora #$4D.b		; 09 4D
	bra   5.b		; 80 05
	lsr $0E06.w		; 4E 06 0E
	bra   7.b		; 80 07
	lsr $0E08.w		; 4E 08 0E
	bra   4.b		; 80 04
	bit $06.b		; 24 06
	adc $04.b		; 65 04
	bit $80.b		; 24 80
	cop $63.b		; 02 63
	ora $64.b,S		; 03 64
	cop $63.b		; 02 63
	cop $0E.b		; 02 0E
	cop $31.b		; 02 31
	ora $32.b,S		; 03 32
	cop $31.b		; 02 31
	cop $36.b		; 02 36
	ora $37.b,S		; 03 37
	cop $36.b		; 02 36
	cop $0E.b		; 02 0E
	cop $22.b		; 02 22
	ora $23.b,S		; 03 23
	ora $22.b,S		; 03 22
	cop $29.b		; 02 29
	ora $2A.b,S		; 03 2A
	ora $2B.b,S		; 03 2B
	ora $2A.b,S		; 03 2A
	cop $29.b		; 02 29
	cop $0E.b		; 02 0E
	cop $31.b		; 02 31
	ora $32.b,S		; 03 32
	cop $31.b		; 02 31
	cop $38.b		; 02 38
	ora $39.b,S		; 03 39
	ora $3A.b,S		; 03 3A
	ora $39.b,S		; 03 39
	cop $38.b		; 02 38
	cop $0E.b		; 02 0E
	cop $26.b		; 02 26
	ora $27.b,S		; 03 27
	ora $26.b,S		; 03 26
	cop $24.b		; 02 24
	ora $25.b,S		; 03 25
	cop $24.b		; 02 24
	cop $22.b		; 02 22
	ora $23.b,S		; 03 23
	cop $22.b		; 02 22
	cop $0E.b		; 02 0E
	cop $33.b		; 02 33
	cop $34.b		; 02 34
	ora $35.b,S		; 03 35
	bra  45.b		; 80 2D
	plp		; 28
	ora [$35.b]		; 07 35
	asl $34.b		; 06 34
	ora $33.b		; 05 33
	bra   6.b		; 80 06
	rti		; 40

	brk $41.b		; 00 41
	bra   0.b		; 80 00
	eor $1A3080.l		; 4F 80 30 1A
	and $401A.w,Y		; 39 1A 40
	inc A		; 1A
	eor [$1A.b]		; 47 1A
	lsr A		; 4A
	inc A		; 1A
	eor $501A.w		; 4D 1A 50
	inc A		; 1A
	bvc  26.b		; 50 1A
	bvc  26.b		; 50 1A
	eor [$1A.b],Y		; 57 1A
	phy		; 5A
	inc A		; 1A
	eor $601A.w,X		; 5D 1A 60
	inc A		; 1A
	adc $1A.b,S		; 63 1A
	rts		; 60

	inc A		; 1A
	adc $1A.b,S		; 63 1A
	ror $1A.b		; 66 1A
	adc #$1A.b		; 69 1A
	bvs  26.b		; 70 1A
	adc ($1A.b,S),Y		; 73 1A
	ply		; 7A
	inc A		; 1A
	adc $801A.w,X		; 7D 1A 80
	inc A		; 1A
	sta [$1A.b]		; 87 1A
	sty $911A.w		; 8C 1A 91
	inc A		; 1A
	sty $1A.b,X		; 94 1A
	sta $9E1A.w,Y		; 99 1A 9E
	inc A		; 1A
	sta $1AA01A.l,X		; 9F 1A A0 1A
	lda $1A.b		; A5 1A
	sbc $1A.b,S		; E3 1A
	tax		; AA
	inc A		; 1A
	lda $1ADE1A.l		; AF 1A DE 1A
	and $1C.b		; 25 1C
	rol $1C.b,X		; 36 1C
	nop		; EA
	inc A		; 1A
	sta ($1A.b),Y		; 91 1A
	ldy #$E31A.w		; A0 1A E3
	inc A		; 1A
	sbc ($1A.b),Y		; F1 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1B.b		; 06 1B
	phd		; 0B
	tas		; 1B
	asl $151B.w		; 0E 1B 15
	tas		; 1B
	inc A		; 1A
	tas		; 1B
	and ($1B.b,X)		; 21 1B
	rol $1B.b		; 26 1B
	pld		; 2B
	tas		; 1B
	rol $351B.w		; 2E 1B 35
	tas		; 1B
	dec A		; 3A
	tas		; 1B
	and $1B481B.l,X		; 3F 1B 48 1B
	eor $1B3A1B.l		; 4F 1B 3A 1B
	and $1B481B.l,X		; 3F 1B 48 1B
	eor $1B5C1B.l		; 4F 1B 5C 1B
	adc ($1B.b,X)		; 61 1B
	stz $1B.b		; 64 1B
	rtl		; 6B

	tas		; 1B
	bvs  27.b		; 70 1B
	adc $1B.b,X		; 75 1B
	sei		; 78
	tas		; 1B
	adc $821B.w,X		; 7D 1B 82
	tas		; 1B
	bit #$1B.b		; 89 1B
	bvc  26.b		; 50 1A
	bvc  26.b		; 50 1A
	bvc  26.b		; 50 1A
	stx $991B.w		; 8E 1B 99
	tas		; 1B
	ldy $1B.b		; A4 1B
	lda [$1B.b]		; A7 1B
	tax		; AA
	tas		; 1B
	wai		; CB
	tas		; 1B
	beq  27.b		; F0 1B
	sbc [$1B.b],Y		; F7 1B
	inc $031B.w,X		; FE 1B 03
	trb $1C08.w		; 1C 08 1C
	ora $1C161C.l		; 0F 1C 16 1C
	ora $221C.w,X		; 1D 1C 22
	trb $1406.w		; 1C 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	rti		; 40

	tsb $1A.b		; 04 1A
	tsb $1B.b		; 04 1B
	tsb $1C.b		; 04 1C
	rti		; 40

	ora $1C.b		; 05 1C
	ora $1B.b		; 05 1B
	ora $1A.b		; 05 1A
	rti		; 40

	brk $0F.b		; 00 0F
	bra   1.b		; 80 01
	asl $0380.w		; 0E 80 03
	asl $0880.w		; 0E 80 08
	ora $1E06.w,X		; 1D 06 1E
	asl $1D.b		; 06 1D
	bra   3.b		; 80 03
	asl $0380.w		; 0E 80 03
	eor $80.b,S		; 43 80
	ora $44.b,S		; 03 44
	bra   0.b		; 80 00
	bpl -128.b		; 10 80
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	tsb $0001.w		; 0C 01 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	bra   6.b		; 80 06
	cop $0C.b		; 02 0C
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	tsb $80.b		; 04 80
	tsb $0405.w		; 0C 05 04
	asl $1D00.w,X		; 1E 00 1D
	bra   6.b		; 80 06
	phd		; 0B
	asl $0C.b		; 06 0C
	rti		; 40

	asl $0A.b		; 06 0A
	asl $66.b		; 06 66
	rti		; 40

	brk $0D.b		; 00 0D
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $01.b,S		; 03 01
	brk $05.b		; 00 05
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	asl $00.b		; 06 00
	ora #$80.b		; 09 80
	php		; 08
	asl $00.b		; 06 00
	ora [$80.b]		; 07 80
	php		; 08
	ora ($08.b)		; 12 08
	ora ($40.b,S),Y		; 13 40
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	asl $14.b		; 06 14
	asl $15.b		; 06 15
	asl $16.b		; 06 16
	asl $15.b		; 06 15
	php		; 08
	ora [$06.b],Y		; 17 06
	clc		; 18
	tsb $8019.w		; 0C 19 80
	ora $1E.b,S		; 03 1E
	ora $1D.b,S		; 03 1D
	bra   8.b		; 80 08
	asl $16.b		; 06 16
	ora [$0A.b]		; 07 0A
	php		; 08
	bra   6.b		; 80 06
	eor $06600C.l,X		; 5F 0C 60 06
	eor $610680.l,X		; 5F 80 06 61
	asl $62.b		; 06 62
	asl $61.b		; 06 61
	asl $62.b		; 06 62
	asl $61.b		; 06 61
	asl $62.b		; 06 62
	asl $61.b		; 06 61
	asl $62.b		; 06 62
	asl $61.b		; 06 61
	asl $62.b		; 06 62
	bra   2.b		; 80 02
	jsr $2103.w		; 20 03 21
	bra   3.b		; 80 03
	jsr $0480.w		; 20 80 04
	and $05.b,S		; 23 05
	bit $0A.b		; 24 0A
	and $80.b		; 25 80
	asl $24.b		; 06 24
	ora $23.b		; 05 23
	bra   3.b		; 80 03
	and ($04.b,X)		; 21 04
	jsl $802B0A.l		; 22 0A 2B 80
	tsb $22.b		; 04 22
	ora $21.b,S		; 03 21
	bra   2.b		; 80 02
	and #$03.b		; 29 03
	rol A		; 2A
	bra   3.b		; 80 03
	and #$80.b		; 29 80
	tsb $26.b		; 04 26
	asl $27.b		; 06 27
	asl A		; 0A
	plp		; 28
	bra   6.b		; 80 06
	and [$05.b]		; 27 05
	rol $80.b		; 26 80
	cop $2C.b		; 02 2C
	brk $2D.b		; 00 2D
	bra   3.b		; 80 03
	bit $5B0A.w		; 2C 0A 5B
	tsb $2C.b		; 04 2C
	brk $1D.b		; 00 1D
	bra   0.b		; 80 00
	rol $2F01.w		; 2E 01 2F
	brk $30.b		; 00 30
	bra   0.b		; 80 00
	rol $2F01.w		; 2E 01 2F
	php		; 08
	bmi   2.b		; 30 02
	and $002E02.l		; 2F 02 2E 00
	ora $0280.w,X		; 1D 80 02
	and ($03.b),Y		; 31 03
	and ($80.b)		; 32 80
	ora $31.b,S		; 03 31
	bra   3.b		; 80 03
	eor $6304.w,X		; 5D 04 63
	ora #$64.b		; 09 64
	bra   4.b		; 80 04
	adc $03.b,S		; 63 03
	eor $0280.w,X		; 5D 80 02
	and ($03.b,S),Y		; 33 03
	bit $80.b,X		; 34 80
	ora $33.b,S		; 03 33
	bra   6.b		; 80 06
	and ($00.b,S),Y		; 33 00
	lsr $0C80.w,X		; 5E 80 0C
	and ($04.b,S),Y		; 33 04
	ora $1D0880.l		; 0F 80 08 1D
	ora $35.b,S		; 03 35
	ora $36.b,S		; 03 36
	bra   3.b		; 80 03
	asl $1D00.w,X		; 1E 00 1D
	bra   2.b		; 80 02
	and [$02.b],Y		; 37 02
	sec		; 38
	cop $39.b		; 02 39
	cop $3A.b		; 02 3A
	cop $3B.b		; 02 3B
	bra   3.b		; 80 03
	and [$03.b],Y		; 37 03
	sec		; 38
	ora $39.b,S		; 03 39
	ora $3A.b,S		; 03 3A
	ora $3B.b,S		; 03 3B
	bra  35.b		; 80 23
	bit $3280.w,X		; 3C 80 32
	bit $0680.w,X		; 3C 80 06
	eor $06.b		; 45 06
	lsr $06.b		; 46 06
	eor $06.b		; 45 06
	lsr $06.b		; 46 06
	eor $06.b		; 45 06
	lsr $06.b		; 46 06
	eor $06.b		; 45 06
	lsr $06.b		; 46 06
	eor $06.b		; 45 06
	lsr $06.b		; 46 06
	eor $06.b		; 45 06
	lsr $06.b		; 46 06
	eor $06.b		; 45 06
	lsr $06.b		; 46 06
	eor $06.b		; 45 06
	lsr $80.b		; 46 80
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	asl $45.b		; 06 45
	asl $46.b		; 06 46
	bra   3.b		; 80 03
	and $3E03.w,X		; 3D 03 3E
	brk $3F.b		; 00 3F
	bra   4.b		; 80 04
	and $3E04.w,X		; 3D 04 3E
	brk $3F.b		; 00 3F
	bra   4.b		; 80 04
	mvp $0E,$00		; 44 00 0E
	bra   6.b		; 80 06
	mvp $0E,$00		; 44 00 0E
	bra   3.b		; 80 03
	and $003E03.l,X		; 3F 03 3E 00
	and $0480.w,X		; 3D 80 04
	and $003E04.l,X		; 3F 04 3E 00
	and $0880.w,X		; 3D 80 08
	rti		; 40

	php		; 08
	eor ($06.b,X)		; 41 06
	.db $42, $80		; 42 80
	asl $1E.b		; 06 1E
	brk $1D.b		; 00 1D
	bra   0.b		; 80 00
	adc $80.b		; 65 80
	asl $47.b		; 06 47
	asl $48.b		; 06 48
	asl $49.b		; 06 49
	asl $48.b		; 06 48
	asl $47.b		; 06 47
	asl $48.b		; 06 48
	asl $49.b		; 06 49
	brk $47.b		; 00 47
	bra   0.b		; 80 00
	mvp $3F,$80		; 44 80 3F
	trb $1C3F.w		; 1C 3F 1C
	mvp $03,$1C		; 44 1C 03
	brk $03.b		; 00 03
	ora $40.b,X		; 15 40
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	bra  83.b		; 80 53
	trb $1C53.w		; 1C 53 1C
	lsr $1C.b,X		; 56 1C
	tad		; 5B
	trb $0400.w		; 1C 00 04
	bra   7.b		; 80 07
	tsb $00.b		; 04 00
	ora $80.b		; 05 80
	ora $06.b,S		; 03 06
	ora $07.b,S		; 03 07
	bra 104.b		; 80 68
	trb $1C68.w		; 1C 68 1C
	sta ($1C.b,X)		; 81 1C
	txa		; 8A
	trb $0801.w		; 1C 01 08
	ora ($09.b,X)		; 01 09
	ora ($0A.b,X)		; 01 0A
	ora ($0B.b,X)		; 01 0B
	ora ($0C.b,X)		; 01 0C
	ora ($0D.b,X)		; 01 0D
	ora ($0E.b,X)		; 01 0E
	ora ($0F.b,X)		; 01 0F
	ora ($10.b,X)		; 01 10
	ora ($11.b,X)		; 01 11
	ora ($12.b,X)		; 01 12
	ora ($13.b,X)		; 01 13
	bra  15.b		; 80 0F
	trb $0F.b		; 14 0F
	trb $0F.b		; 14 0F
	trb $0F.b		; 14 0F
	trb $80.b		; 14 80
	ora ($13.b,X)		; 01 13
	ora ($12.b,X)		; 01 12
	ora ($11.b,X)		; 01 11
	ora ($10.b,X)		; 01 10
	ora ($0F.b,X)		; 01 0F
	ora ($0E.b,X)		; 01 0E
	ora ($0D.b,X)		; 01 0D
	ora ($0C.b,X)		; 01 0C
	ora ($0B.b,X)		; 01 0B
	ora ($0A.b,X)		; 01 0A
	ora ($09.b,X)		; 01 09
	ora ($08.b,X)		; 01 08
	bra -87.b		; 80 A9
	trb $1CA9.w		; 1C A9 1C
	ldx $031C.w		; AE 1C 03
	brk $03.b		; 00 03
	asl $40.b		; 06 40
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	bra -71.b		; 80 B9
	trb $1CB9.w		; 1C B9 1C
	ldx $071C.w,Y		; BE 1C 07
	ora $07.b,S		; 03 07
	ora [$40.b]		; 07 40
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	bra -55.b		; 80 C9
	trb $1CC9.w		; 1C C9 1C
	dec $031C.w		; CE 1C 03
	brk $03.b		; 00 03
	ora ($40.b,X)		; 01 40
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	bra -37.b		; 80 DB
	trb $1CDB.w		; 1C DB 1C
	cpx #$031C.w		; E0 1C 03
	ora $03.b		; 05 03
	asl $40.b		; 06 40
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	bra -19.b		; 80 ED
	trb $1CED.w		; 1C ED 1C
	sbc ($1C.b)		; F2 1C
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	rti		; 40

	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	bra   5.b		; 80 05
	ora $1D05.w,X		; 1D 05 1D
	asl A		; 0A
	ora $1D0F.w,X		; 1D 0F 1D
	clc		; 18
	ora $1D29.w,X		; 1D 29 1D
	ora $02.b,S		; 03 02
	ora $09.b,S		; 03 09
	rti		; 40

	ora $06.b,S		; 03 06
	ora $07.b,S		; 03 07
	bra   3.b		; 80 03
	php		; 08
	ora $0A.b,S		; 03 0A
	ora $08.b,S		; 03 08
	ora $0A.b,S		; 03 0A
	bra   3.b		; 80 03
	php		; 08
	ora $0A.b,S		; 03 0A
	ora $08.b,S		; 03 08
	ora $0A.b,S		; 03 0A
	ora $08.b,S		; 03 08
	ora $0A.b,S		; 03 0A
	ora $08.b,S		; 03 08
	ora $0A.b,S		; 03 0A
	bra   3.b		; 80 03
	ora $03.b,S		; 03 03
	tsb $03.b		; 04 03
	ora $80.b		; 05 80
	rol $1D.b,X		; 36 1D
	rol $1D.b,X		; 36 1D
	tsa		; 3B
	ora $0003.w,X		; 1D 03 00
	ora $0A.b,S		; 03 0A
	rti		; 40

	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	bra  74.b		; 80 4A
	ora $1D4A.w,X		; 1D 4A 1D
	eor $1D541D.l		; 4F 1D 54 1D
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	bra   3.b		; 80 03
	asl $03.b		; 06 03
	ora [$40.b]		; 07 40
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	bra  95.b		; 80 5F
	ora $1D5F.w,X		; 1D 5F 1D
	asl $09.b		; 06 09
	ora $08.b,X		; 15 08
	cop $09.b		; 02 09
	bra 108.b		; 80 6C
	ora $1D6C.w,X		; 1D 6C 1D
	adc $1D.b,X		; 75 1D
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	rti		; 40

	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	ora $06.b,S		; 03 06
	bra -126.b		; 80 82
	ora $1D82.w,X		; 1D 82 1D
	phb		; 8B
	ora $0005.w,X		; 1D 05 00
	ora $01.b		; 05 01
	ora $02.b		; 05 02
	ora $06.b		; 05 06
	rti		; 40

	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	bra -102.b		; 80 9A
	ora $1D9A.w,X		; 1D 9A 1D
	lda $1D.b,S		; A3 1D
	ldx $1D.b,Y		; B6 1D
	ora $00.b		; 05 00
	ora $05.b		; 05 05
	ora $00.b		; 05 00
	ora $05.b		; 05 05
	bra   5.b		; 80 05
	brk $05.b		; 00 05
	ora ($05.b,X)		; 01 05
	tsb $05.b		; 04 05
	ora ($05.b,X)		; 01 05
	tsb $05.b		; 04 05
	ora ($05.b,X)		; 01 05
	tsb $05.b		; 04 05
	ora ($05.b,X)		; 01 05
	tsb $80.b		; 04 80
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	bra -63.b		; 80 C1
	ora $1DC1.w,X		; 1D C1 1D
	cpy $1D.b		; C4 1D
	ora $00.b		; 05 00
	bra   3.b		; 80 03
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	tsb $80.b		; 04 80
	cmp ($1D.b,S),Y		; D3 1D
	cmp ($1D.b,S),Y		; D3 1D
	jmp.w [$031D]		; DC 1D 03
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	ora [$03.b]		; 07 03
	php		; 08
	rti		; 40

	ora $09.b		; 05 09
	ora $0A.b		; 05 0A
	ora $0B.b		; 05 0B
	bra -19.b		; 80 ED
	ora $1DED.w,X		; 1D ED 1D
	sbc ($1D.b)		; F2 1D
	sbc $FE1D.w,Y		; F9 1D FE
	ora $0003.w,X		; 1D 03 00
	tsb $01.b		; 04 01
	bra   2.b		; 80 02
	brk $03.b		; 00 03
	ora ($04.b,X)		; 01 04
	cop $80.b		; 02 80
	ora $06.b,S		; 03 06
	tsb $07.b		; 04 07
	bra   2.b		; 80 02
	asl $03.b		; 06 03
	ora [$04.b]		; 07 04
	php		; 08
	bra   9.b		; 80 09
	asl $1E09.w,X		; 1E 09 1E
	cop $03.b		; 02 03
	cop $04.b		; 02 04
	tsb $05.b		; 04 05
	cop $04.b		; 02 04
	bra  22.b		; 80 16
	asl $1E16.w,X		; 1E 16 1E
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	bra  39.b		; 80 27
	asl $1E27.w,X		; 1E 27 1E
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	bra  32.b		; 80 20
	bit $6B1E.w,X		; 3C 1E 6B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	pha		; 48
	phx		; DA
	phy		; 5A
	phb		; 8B
	php		; 08
	and #$0FFF.w		; 29 FF 0F
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	adc $00.b		; 65 00
	tax		; AA
	phx		; DA
	jsr $1E78.w		; 20 78 1E
	jsr $1F06.w		; 20 06 1F
	bcc  -5.b		; 90 FB
	plx		; FA
	lda $C01FCC.l,X		; BF CC 1F C0
	bit #$00F0.w		; 89 F0 00
	bne  18.b		; D0 12
	sty $32.b		; 84 32
	lda $C01FCA.l,X		; BF CA 1F C0
	sta $30.b		; 85 30
	stz $34.b		; 64 34
	lda #$007F.w		; A9 7F 00
	sta $36.b		; 85 36
	jsr $1EE0.w		; 20 E0 1E
	plp		; 28
	plb		; AB
	ply		; 7A
	plx		; FA
	pla		; 68
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0000.w		; A9 00 00
	sta $C0.b		; 85 C0
	sta $C2.b		; 85 C2
	sta $C4.b		; 85 C4
	sta $C7.b		; 85 C7
	lda #$0054.w		; A9 54 00
	sta $C8.b		; 85 C8
	lda #$6B00.w		; A9 00 6B
	sta $CA.b		; 85 CA
	lda #$0054.w		; A9 54 00
	sta $CC.b		; 85 CC
	lda #$6B00.w		; A9 00 6B
	sta $CE.b		; 85 CE
	lda $C01FC7.l,X		; BF C7 1F C0
	sta $C4.b		; 85 C4
	lda $C01FCA.l,X		; BF CA 1F C0
	sta $C2.b		; 85 C2
.ACCU 8
	sep #$20		; E2 20
	lda $C01FC9.l,X		; BF C9 1F C0
	sta $C6.b		; 85 C6
	sta $CA.b		; 85 CA
	lda $C01FCC.l,X		; BF CC 1F C0
	bit #$F0.b		; 89 F0
	beq   8.b		; F0 08
	sta $CD.b		; 85 CD
	sta $CE.b		; 85 CE
	sta $C9.b		; 85 C9
	bra  12.b		; 80 0C
	stz $C2.b		; 64 C2
	stz $C3.b		; 64 C3
	lda #$7F.b		; A9 7F
	sta $CD.b		; 85 CD
	sta $CE.b		; 85 CE
	sta $C9.b		; 85 C9
.ACCU 16
	rep #$20		; C2 20
	lda [$C4.b]		; A7 C4
	sta $C0.b		; 85 C0
	ldx $C4.b		; A6 C4
	inx		; E8
	inx		; E8
	cpx $C4.b		; E4 C4
	bcs   4.b		; B0 04
	inc $C6.b		; E6 C6
	inc $CA.b		; E6 CA
	stx $C4.b		; 86 C4
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldy #$18.b		; A0 18
	sty DMADEST0.w		; 8C 01 43
	lda $30.b		; A5 30
	sta VMADDL.w		; 8D 16 21
	lda $32.b		; A5 32
	sta DMALEN0L.w		; 8D 05 43
	lda $34.b		; A5 34
	sta DMASRC0L.w		; 8D 02 43
	ldy $36.b		; A4 36
	sty DMASRC0B.w		; 8C 04 43
	ldy #$01.b		; A0 01
	sty DMAP0.w		; 8C 00 43
	sty MDMAEN.w		; 8C 0B 42
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $C0.b		; A5 C0
	bne   3.b		; D0 03
	sep #$01		; E2 01
	rts		; 60

	phb		; 8B
	lda [$C4.b]		; A7 C4
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	lda #$0008.w		; A9 08 00
	sta $02.b		; 85 02
	ldy $C2.b		; A4 C2
	ldx $C4.b		; A6 C4
	inx		; E8
	cpx $C4.b		; E4 C4
	bcs   4.b		; B0 04
	inc $C6.b		; E6 C6
	inc $CA.b		; E6 CA
	lda #$0000.w		; A9 00 00
	lsr $00.b		; 46 00
	bcc  87.b		; 90 57
	lsr $00.b		; 46 00
	bcc  31.b		; 90 1F
	inc A		; 1A
	lsr $00.b		; 46 00
	bcc  26.b		; 90 1A
	inc A		; 1A
	lsr $00.b		; 46 00
	bcc  21.b		; 90 15
	inc A		; 1A
	lsr $00.b		; 46 00
	bcc  16.b		; 90 10
	inc A		; 1A
	lsr $00.b		; 46 00
	bcc  11.b		; 90 0B
	inc A		; 1A
	lsr $00.b		; 46 00
	bcc   6.b		; 90 06
	inc A		; 1A
	lsr $00.b		; 46 00
	bcc   1.b		; 90 01
	inc A		; 1A
	sta $04.b		; 85 04
	txa		; 8A
	sep #$01		; E2 01
	adc $04.b		; 65 04
	sta $C2.b		; 85 C2
	lda $04.b		; A5 04
	bcc  17.b		; 90 11
	txa		; 8A
	eor #$FFFF.w		; 49 FF FF
	jsl $0000C8.l		; 22 C8 00 00
	inc $C6.b		; E6 C6
	inc $CA.b		; E6 CA
	lda $C2.b		; A5 C2
	beq   5.b		; F0 05
	dec A		; 3A
	jsl $0000C8.l		; 22 C8 00 00
	lda $C0.b		; A5 C0
	clc		; 18
	sbc $04.b		; E5 04
	sta $C0.b		; 85 C0
	beq  65.b		; F0 41
	lda $02.b		; A5 02
	clc		; 18
	sbc $04.b		; E5 04
	beq  51.b		; F0 33
	sta $02.b		; 85 02
	stx $C4.b		; 86 C4
	lda [$C4.b]		; A7 C4
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $04.b		; 85 04
	tya		; 98
	clc		; 18
	sbc $04.b		; E5 04
	tax		; AA
	lda [$C4.b]		; A7 C4
	and #$000F.w		; 29 0F 00
	inc A		; 1A
	inc A		; 1A
	jsl $0000CC.l		; 22 CC 00 00
	ldx $C4.b		; A6 C4
	inx		; E8
	inx		; E8
	cpx $C4.b		; E4 C4
	bcs   4.b		; B0 04
	inc $C6.b		; E6 C6
	inc $CA.b		; E6 CA
	dec $C0.b		; C6 C0
	beq  14.b		; F0 0E
	dec $02.b		; C6 02
	beq   3.b		; F0 03
	jmp $1F29.w		; 4C 29 1F
	sty $C2.b		; 84 C2
	stx $C4.b		; 86 C4
	plb		; AB
	clc		; 18
	rts		; 60

	sty $C2.b		; 84 C2
	stx $C4.b		; 86 C4
	plb		; AB
	sep #$01		; E2 01
	rts		; 60

	cmp $00C01F.l,X		; DF 1F C0 00
	brk $00.b		; 00 00
	sbc $21.b		; E5 21
	cpy #$5000.w		; C0 00 50
	brk $B9.b		; 00 B9
	and ($C0.b),Y		; 31 C0
	brk $2C.b		; 00 2C
	brk $D7.b		; 00 D7
	rol $00C0.w,X		; 3E C0 00
	brk $00.b		; 00 00
	eor $E101.w,X		; 5D 01 E1
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	ora ($4F.b,X)		; 01 4F
	cop $6F.b		; 02 6F
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	cmp $07.b		; C5 07
	eor $000007.l,X		; 5F 07 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C5.b		; 00 C5
	inc $03FF.w,X		; FE FF 03
	brk $A6.b		; 00 A6
	asl $0EA7.w		; 0E A7 0E
	mvp $73,$0E		; 44 0E 73
	eor $0E.b		; 45 0E
	sbc $0E1B0C.l,X		; FF 0C 1B 0E
	asl $0F0E.w		; 0E 0E 0F
	adc $40FE02.l,X		; 7F 02 FE 40
	bpl -74.b		; 10 B6
	asl $0EB7.w		; 0E B7 0E
	mvn $55,$0E		; 54 0E 55
	jmp.w [$03FF]		; DC FF 03
	tsb $1E12.w		; 0C 12 1E
	asl $7E1F.w		; 0E 1F 7E
	cop $40.b		; 02 40
	ora ($FF.b)		; 12 FF
	eor ($12.b,X)		; 41 12
	lsr $12.b		; 46 12
	eor [$12.b]		; 47 12
	rol $BF12.w		; 2E 12 BF
	and $122C12.l		; 2F 12 2C 12
	and $3112.w		; 2D 12 31
	ora $48.b,X		; 15 48
	lda $0E490E.l,X		; BF 0E 49 0E
	.db $62, $0E, $63		; 62 0E 63
	and ($09.b)		; 32 09
	jsl $230EE3.l		; 22 E3 0E 23
	adc ($09.b)		; 72 09
	adc $17D302.l,X		; 7F 02 D3 17
	bvc  18.b		; 50 12
	eor ($FF.b),Y		; 51 FF
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($3E.b)		; 12 3E
	ora ($3F.b)		; 12 3F
	sbc $123C12.l		; EF 12 3C 12
	and $03F2.w,X		; 3D F2 03
	cli		; 58
	asl $EF59.w		; 0E 59 EF
	asl $0E72.w		; 0E 72 0E
	adc ($32.b,S),Y		; 73 32
	ora #$0E32.w		; 09 32 0E
	and ($70.b,S),Y		; 33 70
	adc ($0D.b)		; 72 0D
	adc $1BDF02.l,X		; 7F 02 DF 1B
	sbc $2C1C.w,Y		; F9 1C 2C
	asl $3F2D.w		; 0E 2D 3F
	ora ($38.b),Y		; 11 38
	ora $202F1F.l		; 0F 1F 2F 20
	mvp $3C,$21		; 44 21 3C
	asl $3F3D.w		; 0E 3D 3F
	ora ($0F.b),Y		; 11 0F
	and $1C.b,S		; 23 1C
	and $254424.l		; 2F 24 44 25
	rol $0E.b		; 26 0E
	and [$3F.b]		; 27 3F
	ora $270F.w,Y		; 19 0F 27
	and $440E28.l		; 2F 28 0E 44
	and #$0E36.w		; 29 36 0E
	and [$3F.b],Y		; 37 3F
	ora $2B0F.w,Y		; 19 0F 2B
	and $0FF82C.l		; 2F 2C F8 0F
	sta [$2A.b]		; 87 2A
	asl $3F2B.w		; 0E 2B 3F
	and ($4F.b,X)		; 21 4F
	and $F4306F.l		; 2F 6F 30 F4
	ora $0E033A.l		; 0F 3A 03 0E
	tsa		; 3B
	and $334F25.l,X		; 3F 25 4F 33
	adc $0FF434.l		; 6F 34 F4 0F
	sbc $371F07.l,X		; FF 07 1F 37
	cpx #$383F.w		; E0 3F 38
	sbc [$0F.b],Y		; F7 0F
	sbc $3B1F07.l,X		; FF 07 1F 3B
	and $683C.w,X		; 3D 3C 68
	ora $0FF969.l		; 0F 69 F9 0F
	adc $27.b,X		; 75 27
	sbc ($2E.b),Y		; F1 2E
	adc $0E0A0F.l		; 6F 0F 0A 0E
	phd		; 0B
	sbc ($0E.b),Y		; F1 0E
	cmp ($20.b),Y		; D1 20
	cmp $3FFF3E.l,X		; DF 3E FF 3F
	brk $00.b		; 00 00
	sei		; 78
	ora $0F79F3.l		; 0F F3 79 0F
	adc $27.b,X		; 75 27
	sbc ($2E.b),Y		; F1 2E
	adc $0E1A0F.l,X		; 7F 0F 1A 0E
	ora $1B.b,S		; 03 1B
	asl $20D1.w		; 0E D1 20
	cmp $43FF42.l,X		; DF 42 FF 43
	sbc $07FF07.l,X		; FF 07 FF 07
	eor $FF0047.l,X		; 5F 47 00 FF
	ora [$FF.b]		; 07 FF
	ora [$FF.b]		; 07 FF
	ora [$DF.b]		; 07 DF
	phk		; 4B
	sbc $4E1F4C.l,X		; FF 4C 1F 4E
	and $505F4F.l,X		; 3F 4F 5F 50
	beq 127.b		; F0 7F
	eor ($9F.b),Y		; 51 9F
	eor ($BF.b)		; 52 BF
	eor ($D1.b,S),Y		; 53 D1
	mvn $4E,$ED		; 54 ED 4E
	cpx $B84E.w		; EC 4E B8
	ora ($18.b),Y		; 11 18
	ora ($40.b),Y		; 11 40
	adc ($17.b),Y		; 71 17
	bit $0E.b		; 24 0E
	and $12.b		; 25 12
	rti		; 40

	cpx $0EF3.w		; EC F3 0E
	sbc $49DF.w		; ED DF 49
	sbc $FD0057.l		; EF 57 00 FD
	lsr $71FC.w		; 4E FC 71
	lsr $1811.w		; 4E 11 18
	ora ($40.b),Y		; 11 40
	adc ($17.b),Y		; 71 17
	bit $0E.b,X		; 34 0E
	and $12.b,X		; 35 12
	rti		; 40

	ora [$FC.b]		; 07 FC
	asl $DFFD.w		; 0E FD DF
	eor $5BEF.w		; 4D EF 5B
	ora $5E2F5D.l		; 0F 5D 2F 5E
	eor $6F005F.l		; 4F 5F 00 6F
	rts		; 60

	sta $62AF61.l		; 8F 61 AF 62
	cmp $64EF63.l		; CF 63 EF 64
	ora $672F66.l		; 0F 66 2F 67
	eor $6F0068.l		; 4F 68 00 6F
	adc #$6A8F.w		; 69 8F 6A
	lda $6CCF6B.l		; AF 6B CF 6C
	sbc $6F0F6D.l		; EF 6D 0F 6F
	and $714F70.l		; 2F 70 4F 71
	brk $6F.b		; 00 6F
	adc ($8F.b)		; 72 8F
	adc ($AF.b,S),Y		; 73 AF
	stz $CF.b,X		; 74 CF
	adc $EF.b,X		; 75 EF
	ror $0F.b,X		; 76 0F
	sei		; 78
	and $7A4F79.l		; 2F 79 4F 7A
	bpl 111.b		; 10 6F
	tda		; 7B
	sta $7DAF7C.l		; 8F 7C AF 7D
	cmp $7F007E.l		; CF 7E 00 7F
	phd		; 0B
	cmp $010000.l,X		; DF 00 00 01
	brk $03.b		; 00 03
	bpl   0.b		; 10 00
	cop $01.b		; 02 01
	sbc $3F0102.l,X		; FF 02 01 3F
	ora ($73.b,X)		; 01 73
	ora $F40000.l		; 0F 00 00 F4
	ora ($01.b),Y		; 11 01
	ora $00.b,X		; 15 00
	and $8000E0.l,X		; 3F E0 00 80
	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	rti		; 40

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	bra  -4.b		; 80 FC
	bra -25.b		; 80 E7
	inc $E0.b		; E6 E0
	brk $12.b		; 00 12
	ora ($15.b,X)		; 01 15
	brk $E0.b		; 00 E0
	trb $FF00.w		; 1C 00 FF
	brk $7F.b		; 00 7F
	brk $59.b		; 00 59
	sec		; 38
	and $7F7610.l,X		; 3F 10 76 7F
	ora ($CC.b,X)		; 01 CC
	eor $79.b,S		; 43 79
	ora [$77.b]		; 07 77
	phd		; 0B
	sbc ($03.b),Y		; F1 03
	sbc $07.b,X		; F5 07
	bpl   5.b		; 10 05
	phd		; 0B
	bcs   3.b		; B0 03
	ora [$00.b]		; 07 00
	tas		; 1B
	brk $FF.b		; 00 FF
	bvs   0.b		; 70 00
	iny		; C8
	bmi -16.b		; 30 F0
	brk $F0.b		; 00 F0
	jsr $FCFF.w		; 20 FF FC
	rti		; 40

	plx		; FA
	sed		; F8
	jsr ($EC40.w,X)		; FC 40 EC
	jsr L0000FD.w		; 20 FD 00
	bpl   1.b		; 10 01
	bra   0.b		; 80 00
	jsr $4000.w		; 20 00 40
	brk $FF.b		; 00 FF
	sed		; F8
	tsb $40.b		; 04 40
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $FF.b		; 00 FF
	php		; 08
	brk $1C.b		; 00 1C
	php		; 08
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	sta $101D.w		; 8D 1D 10
	brk $15.b		; 00 15
	php		; 08
	sbc ($07.b),Y		; F1 07
	and ($01.b),Y		; 31 01
	ora $00.b,X		; 15 00
	brk $FF.b		; 00 FF
	brk $0C.b		; 00 0C
	brk $9E.b		; 00 9E
	tsb $8C5E.w		; 0C 5E 8C
	lsr $8CFF.w,X		; 5E FF 8C
	phx		; DA
	dey		; 88
	cmp ($80.b)		; D2 80
	dec $80.b,X		; D6 80
	brk $FA.b		; 00 FA
	ora ($01.b)		; 12 01
	sty $0010.w		; 8C 10 00
	dey		; 88
	tsb $80.b		; 04 80
	tsb $FF80.w		; 0C 80 FF
	tsb $0018.w		; 0C 18 00
	bit $7D18.w		; 2C 18 7D
	clc		; 18
	lda ($FF.b,S),Y		; B3 FF
	bvs 118.b		; 70 76
	ora ($1E.b,X)		; 01 1E
	ora ($3B.b,X)		; 01 3B
	ora $37.b		; 05 37
	sbc $09.b,X		; F5 09
	sbc ($03.b,S),Y		; F3 03
	ora $0012.w		; 0D 12 00
	ora $1900.w,X		; 1D 00 19
	brk $FF.b		; 00 FF
	bmi   0.b		; 30 00
	pha		; 48
	bmi -36.b		; 30 DC
	bmi  62.b		; 30 3E
	jsr ($7EBF.w,X)		; FC BF 7E
	ldy $FA.b,X		; B4 FA
	bcs  -6.b		; B0 FA
	bcs -15.b		; B0 F1
	phd		; 0B
	bmi  -2.b		; 30 FE
	bmi   1.b		; 30 01
	jsr ($B400.w,X)		; FC 00 B4
	brk $B0.b		; 00 B0
	tsb $B0.b		; 04 B0
	sbc $F104.w,X		; FD 04 F1
	phd		; 0B
	brk $00.b		; 00 00
	ora $103300.l,X		; 1F 00 33 10
	lda $F01E.w,X		; BD 1E F0
	ora $0F0103.l		; 0F 03 01 0F
	ora ($F3.b,X)		; 01 F3
	ora [$0F.b]		; 07 0F
	jmp ($1036.w,X)		; 7C 36 10
	sbc ($10.b),Y		; F1 10
	sed		; F8
	brk $3C.b		; 00 3C
	sed		; F8
	sei		; 78
	beq  15.b		; F0 0F
	ora $F080C0.l,X		; 1F C0 80 F0
	bra   0.b		; 80 00
	trb $01.b		; 14 01
	and $10.b,X		; 35 10
	sbc [$0B.b],Y		; F7 0B
	lda $5B003D.l,X		; BF 3D 00 5B
	tsb $77.b		; 04 77
	asl A		; 0A
	sbc $2C0B.w,Y		; F9 0B 2C
	tda		; 7B
	brk $2A.b		; 00 2A
	plx		; FA
	phd		; 0B
	sbc ($80.b)		; F2 80
	inc $A0.b,X		; F6 A0
	xce		; FB
	phd		; 0B
	xce		; FB
	ldy #$F70C.w		; A0 0C F7
	ora [$7E.b],Y		; 17 7E
	ora ($9B.b,X)		; 01 9B
	ora $73.b		; 05 73
	cmp $F90D.w,X		; DD 0D F9
	ora [$7D.b],Y		; 17 7D
	brk $0D.b		; 00 0D
	inc $17.b,X		; F6 17
	jmp $BF80.w		; 4C 80 BF
	jmp.w [$F888]		; DC 88 F8
	bcc -16.b		; 90 F0
	ldy #$17F7.w		; A0 F7 17
	dey		; 88
	sbc $009000.l,X		; FF 00 90 00
	ldy #$6300.w		; A0 00 63
	brk $54.b		; 00 54
	sbc $103D20.l,X		; FF 20 3D 10
	tas		; 1B
	brk $CF.b		; 00 CF
	brk $FC.b		; 00 FC
	lda $035D43.l,X		; BF 43 5D 03
	and $D20003.l,X		; 3F 03 00 D2
	trb $CB07.w		; 1C 07 CB
	brk $06.b		; 00 06
	bpl  24.b		; 10 18
	and $90.b,S		; 23 90
	ora $1BF1.w,X		; 1D F1 1B
	jsr ($FF00.w,X)		; FC 00 FF
	rol $FCFC.w,X		; 3E FC FC
	brk $FC.b		; 00 FC
	sed		; F8
	pea $EB40.w		; F4 40 EB
	pea $F340.w		; F4 40 F3
	ora $FC.b,X		; 15 FC
	eor ($0D.b)		; 52 0D
	rti		; 40

	php		; 08
	rti		; 40

	xce		; FB
	php		; 08
	and $030F50.l,X		; 3F 50 0F 03
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	bvc  80.b		; 50 50
	jsr $0FC1.w		; 20 C1 0F
	mvn $C6,$0F		; 54 0F C6
	ora $1F70FC.l		; 0F FC 70 1F
	rti		; 40

	bne  26.b		; D0 1A
	sbc ($C0.b,X)		; E1 C0
	bvc  32.b		; 50 20
	cmp ($17.b,X)		; C1 17
	and ($0F.b)		; 32 0F
	cmp [$0F.b]		; C7 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	adc $193F1F.l		; 6F 1F 3F 19
	rol $3E1E.w,X		; 3E 1E 3E
	clc		; 18
	adc $33183F.l,X		; 7F 3F 18 33
	bpl  31.b		; 10 1F
	brk $60.b		; 00 60
	bne  20.b		; D0 14
	eor $1E0019.l,X		; 5F 19 00 1E
	ora ($18.b,X)		; 01 18
	bpl   0.b		; 10 00
	bpl -48.b		; 10 D0
	bit $FF.b		; 24 FF
	inc $9C00.w,X		; FE 00 9C
	bra  -8.b		; 80 F8
	brk $68.b		; 00 68
	bpl 127.b		; 10 7F
	inx		; E8
	bpl  -8.b		; 10 F8
	bpl  56.b		; 10 38
	beq -16.b		; F0 F0
	cpx #$3F1C.w		; E0 1C 3F
	bra 112.b		; 80 70
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	bmi   0.b		; 30 00
	eor ($00.b),Y		; 51 00
	plx		; FA
	bpl  31.b		; 10 1F
	ora $0012.w,X		; 1D 12 00
	and $3810.w,Y		; 39 10 38
	bpl 112.b		; 10 70
	sbc $20.b,S		; E3 20
	rts		; 60

	stx $1F.b,Y		; 96 1F
	sbc ($01.b,X)		; E1 01
	cpy #$0022.w		; C0 22 00
	dec $FF80.w,X		; DE 80 FF
	phx		; DA
	sty $52.b		; 84 52
	tsb $0C56.w		; 0C 56 0C
	dec $C70C.w,X		; DE 0C C7
	txs		; 9A
	php		; 08
	ora ($B0.b)		; 12 B0
	jsr $1F31.w		; 20 31 1F
.INDEX 8
	sep #$1F		; E2 1F
	sty $FB04.w		; 8C 04 FB
	tsb $D00C.w		; 0C 0C D0
	ora ($67.b,S),Y		; 13 67
	ora $1DEF.w,Y		; 19 EF 1D
	sbc $3E1BFF.l,X		; FF FF 1B 3E
	clc		; 18
	rol $3D18.w,X		; 3E 18 3D
	clc		; 18
	bit $3F.b,X		; 34 3F
	bpl  24.b		; 10 18
	brk $39.b		; 00 39
	brk $5D.b		; 00 5D
	bvc  39.b		; 50 27
	cmp ($07.b),Y		; D1 07
	cmp [$18.b],Y		; D7 18
	brk $10.b		; 00 10
	bne  36.b		; D0 24
	dec $03F0.w		; CE F0 03
	ply		; 7A
	tsb $FF.b		; 04 FF
	ror $1C.b		; 66 1C
	dec $DC34.w		; CE 34 DC
	bmi 120.b		; 30 78
	bmi  63.b		; 30 3F
	bmi   0.b		; 30 00
	bra  52.b		; 80 34
	bra  52.b		; 80 34
	cpy #$1F.b		; C0 1F
	ora ($20.b,X)		; 01 20
	dec $2081.w,X		; DE 81 20
	brk $17.b		; 00 17
	ora $0FF40F.l		; 0F 0F F4 0F
	and $73A700.l,X		; 3F 00 A7 73
	bmi  63.b		; 30 3F
	sty $1F.b,X		; 94 1F
	and $30.b,S		; 23 30
	bmi -48.b		; 30 D0
	bmi -56.b		; 30 C8
	xce		; FB
	cpy #$F0.b		; C0 F0
	pea $FC0F.w		; F4 0F FC
	brk $32.b		; 00 32
	beq  -4.b		; F0 FC
	cmp [$00.b],Y		; D7 00
	cpy #$30.b		; C0 30
	sbc [$0F.b],Y		; F7 0F
	tsb $1460.w		; 0C 60 14
	sbc [$0A.b],Y		; F7 0A
	adc [$FF.b],Y		; 77 FF
	php		; 08
	cmp $0BF8.w,X		; DD F8 0B
	lsr A		; 4A
	brk $48.b		; 00 48
	jsr ($F50B.w,X)		; FC 0B F5
	plx		; FA
	xce		; FB
	phd		; 0B
	bit $0BFB.w		; 2C FB 0B
	ora [$0D.b],Y		; 17 0D
	ora $3FFF09.l,X		; 1F 09 FF 3F
	ora $103A.w,Y		; 19 3A 10
	adc ($20.b)		; 72 20
	sbc [$40.b]		; E7 40
	cmp $70CB.w,X		; DD CB 70
	and [$0D.b]		; 27 0D
	brk $09.b		; 00 09
	bvc  43.b		; 50 2B
	bpl   1.b		; 10 01
	sbc $400120.l		; EF 20 01 40
	ora ($80.b,X)		; 01 80
	bit $00.b,X		; 34 00
	cpx #$80.b		; E0 80
	sbc $00A0.w,X		; FD A0 00
	ora ($68.b,S),Y		; 13 68
	bpl -36.b		; 10 DC
	php		; 08
	dex		; CA
	brk $D3.b		; 00 D3
	lsr $80.b		; 46 80
	and ($18.b),Y		; 31 18
	cpx #$18.b		; E0 18
	ldy #$A0.b		; A0 A0
	ora $FD0488.l,X		; 1F 88 04 FD
	sty $E1.b		; 84 E1
	and [$17.b]		; 27 17
	ora $3F031F.l		; 0F 1F 03 3F
	ora ($FF.b,S),Y		; 13 FF
	ror $7C32.w,X		; 7E 32 7C
	bit $FB.b,X		; 34 FB
	rts		; 60

	pea $FD60.w		; F4 60 FD
	cpx #$90.b		; E0 90
	pld		; 2B
	ora $00.b,S		; 03 00
	ora ($00.b,S),Y		; 13 00
	and ($01.b)		; 32 01
	cmp $600334.l,X		; DF 34 03 60
	tsb $60.b		; 04 60
	cpy #$3C.b		; C0 3C
	dec $FFC0.w		; CE C0 FF
	ldy $B400.w,X		; BC 00 B4
	php		; 08
	pea $CE08.w		; F4 08 CE
	bit $FCFF.w,X		; 3C FF FC
	php		; 08
	sei		; 78
	bmi 112.b		; 30 70
	brk $C0.b		; 00 C0
	bit $0054.w,X		; 3C 54 00
	asl A		; 0A
	ora ($00.b),Y		; 11 00
	jsr ($3780.w,X)		; FC 80 37
	bmi -47.b		; 30 D1
	and $3C1002.l,X		; 3F 02 10 3C
	sbc [$B3.b],Y		; F7 B3
	bvs 119.b		; 70 77
	bcs  62.b		; B0 3E
	eor $7F07.w,Y		; 59 07 7F
	cop $2A.b		; 02 2A
	cmp ($3F.b,S),Y		; D3 3F
	ora $0C3750.l		; 0F 50 37 0C
	bne  63.b		; D0 3F
	and ($D2.b)		; 32 D2
	and $BF23F2.l,X		; 3F F2 23 BF
	jsr $20F8.w		; 20 F8 20
	pea $F4F0.w		; F4 F0 F4
	cpy $1F.b		; C4 1F
	jsr ($107E.w,X)		; FC 7E 10
	bit $0020.w,X		; 3C 20 00
	beq   8.b		; F0 08
	bra   8.b		; 80 08
	sbc ($43.b),Y		; F1 43
	ror $33F1.w		; 6E F1 33
	and [$00.b]		; 27 00
	and $3010.w		; 2D 10 30
	and $08.b,X		; 35 08
	sbc $33.b,X		; F5 33
	sbc $1418.w,X		; FD 18 14
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $BC.b		; 00 BC
	rti		; 40

	asl $27F1.w,X		; 1E F1 27
	cpx #$C0.b		; E0 C0
	jsr ($F1C0.w,X)		; FC C0 F1
	eor $91.b,S		; 43 91
	bit $F1.b		; 24 F1
	and [$76.b]		; 27 76
	ora ($25.b),Y		; 11 25
	cpx #$1C.b		; E0 1C
	sbc ($3B.b),Y		; F1 3B
	jmp ($B218.w,X)		; 7C 18 B2
	beq   7.b		; F0 07
	inc $F0.b		; E6 F0
	tsa		; 3B
	tsb $36.b		; 04 36
	pea $D13F.w		; F4 3F D1
	ora [$0D.b]		; 07 0D
	brk $1C.b		; 00 1C
	inc $0450.w,X		; FE 50 04
	rts		; 60

	brk $D0.b		; 00 D0
	jsr $6090.w		; 20 90 60
	bcs  -1.b		; B0 FF
	rts		; 60

	sed		; F8
	rts		; 60

	jsr ($F8F8.w,X)		; FC F8 F8
	rts		; 60

	beq -22.b		; F0 EA
	jsr $600D.w		; 20 0D 60
	trb $00.b		; 14 00
	sed		; F8
	sta ($00.b)		; 92 00
	clc		; 18
	brk $2B.b		; 00 2B
	sbc $205510.l,X		; FF 10 55 20
	lda $217640.l		; AF 40 76 21
	rol $019F.w		; 2E 9F 01
	tad		; 5B
	ora $BB.b		; 05 BB
	ora $F1.b		; 05 F1
	phk		; 4B
	eor ($2F.b),Y		; 51 2F
	ora #$00BF.w		; 09 BF 00
	ora ($00.b),Y		; 11 00
	and $00.b		; 25 00
	eor $B2.b		; 45 B2
	rol $FF9E.w		; 2E 9E FF
	jmp ($00FC.w,X)		; 7C FC 00
	jmp ($FCF8.w,X)		; 7C F8 FC
	dey		; 88
	pea $F097.w		; F4 97 F0
	jsr ($D780.w,X)		; FC 80 D7
	and $0BF188.l		; 2F 88 F1 0B
	cmp ($02.b)		; D2 02
	ora $4A.b		; 05 4A
	bpl  75.b		; 10 4B
	asl $3F30.w		; 0E 30 3F
	ora $33F2.w,X		; 1D F2 33
	sbc ($03.b,S),Y		; F3 03
	tsb $10.b		; 04 10
	brk $F9.b		; 00 F9
	phd		; 0B
	bcc  20.b		; 90 14
	sbc ($0A.b),Y		; F1 0A
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	cpx #$3F.b		; E0 3F
	rti		; 40

	bvs  32.b		; 70 20
	beq  32.b		; F0 20
	tay		; A8
	sep #$49		; E2 49
	beq  80.b		; F0 50
	jsr ($4BF0.w,X)		; FC F0 4B
	ora ($10.b),Y		; 11 10
	brk $10.b		; 00 10
	adc $7C8C00.l,X		; 7F 00 8C 7C
	sbc $BB609F.l,X		; FF 9F 60 BB
	rts		; 60

	inc $DC61.w,X		; FE 61 DC
	eor $5F.b,S		; 43 5F
	sta $07BB00.l,X		; 9F 00 BB 07
	brk $72.b		; 00 72
	bit $07.b,X		; 34 07
	bvc  85.b		; 50 55
	sbc $2F.b,X		; F5 2F
	bcs  48.b		; B0 30
	adc [$90.b]		; 67 90
	lsr $CE.b		; 46 CE
	bit $04FE.w,X		; 3C FE 04
	sbc $7EE43E.l,X		; FF 3E E4 7E
	sty $FA.b		; 84 FA
	beq  -6.b		; F0 FA
	brk $BB.b		; 00 BB
	inc $B1E0.w,X		; FE E0 B1
	and [$84.b],Y		; 37 84
	brk $E4.b		; 00 E4
	bmi   0.b		; 30 00
	beq -42.b		; F0 D6
	jsr $E006.w		; 20 06 E0
	tsb $F1.b		; 04 F1
	eor $F10A.w		; 4D 0A F1
	dec A		; 3A
	ora ($0F.b,X)		; 01 0F
	lda $043A00.l,X		; BF 00 3A 04
	ply		; 7A
	tsb $00.b		; 04 00
	lda ($07.b)		; B2 07
	cop $F4.b		; 02 F4
	bvc  89.b		; 50 59
	ora ($08.b),Y		; 11 08
	bit $E0.b,X		; 34 E0
	cli		; 58
	clc		; 18
	brk $3C.b		; 00 3C
	clc		; 18
	eor $BC183C.l,X		; 5F 3C 18 BC
	clc		; 18
	sed		; F8
	beq  43.b		; F0 2B
	sed		; F8
	and ($1D.b,X)		; 21 1D
	pea $15B4.w		; F4 B4 15
	adc ($4C.b),Y		; 71 4C
	rts		; 60

	bvs  59.b		; 70 3B
	adc $00.b		; 65 00
	eor $20.b,X		; 55 20
	lda $37103B.l,X		; BF 3B 10 37
	brk $4C.b		; 00 4C
	ora $70.b,S		; 03 70
	trb $AB0E.w		; 1C 0E AB
	brk $00.b		; 00 00
	lda ($3C.b),Y		; B1 3C
	tsb $50.b		; 04 50
	eor ($3B.b,S),Y		; 53 3B
	bmi  24.b		; 30 18
	ror $80FE.w,X		; 7E FE 80
	rol $C8.b,X		; 36 C8
	bmi -72.b		; 30 B8
	bvc  59.b		; 50 3B
	bne 125.b		; D0 7D
	cmp $18BA90.l,X		; DF 90 BA 18
	inc $F100.w,X		; FE 00 F1
	tad		; 5B
	beq   0.b		; F0 00
	cmp $10D0.w,X		; DD D0 10
	brk $90.b		; 00 90
	cop $18.b		; 02 18
	bcs   7.b		; B0 07
	cpx #$1C.b		; E0 1C
	sbc $4F126F.l,X		; FF 6F 12 4F
	bit $5F.b,X		; 34 5F
	and $5F367F.l,X		; 3F 7F 36 5F
	jmp ($7934.w,X)		; 7C 34 79
	bmi 126.b		; 30 7E
	beq  33.b		; F0 21
	and ($30.b)		; 32 30
	ora [$FF.b]		; 07 FF
	and $003600.l,X		; 3F 00 36 00
	bit $03.b,X		; 34 03
	bmi   6.b		; 30 06
	cmp $F230.w,X		; DD 30 F2
	and $34009C.l,X		; 3F 9C 00 34
	beq  35.b		; F0 23
	jmp.w [$F328]		; DC 28 F3
	jmp.w [$F128]		; DC 28 F1
	and $10.b,X		; 35 10
	ora $E80078.l,X		; 1F 78 00 E8
	brk $FD.b		; 00 FD
	plp		; 28
	and ($00.b),Y		; 31 00
	php		; 08
	clc		; 18
	brk $00.b		; 00 00
	and $18.b		; 25 18
	sbc $3F182F.l,X		; FF 2F 18 3F
	tas		; 1B
	rol $7C1A.w,X		; 3E 1A 7C
	bmi -33.b		; 30 DF
	adc $F730.w,X		; 7D 30 F7
	rts		; 60

	sbc $72.b,S		; E3 72
	ora $7F001B.l,X		; 1F 1B 00 7F
	inc A		; 1A
	ora ($30.b,X)		; 01 30
	ora $30.b,S		; 03 30
	ora $60.b,S		; 03 60
	bne  72.b		; D0 48
	sbc $BCC0FC.l,X		; FF FC C0 BC
	bra  50.b		; 80 32
	tsb $04FE.w		; 0C FE 04
	eor $9A04FE.l,X		; 5F FE 04 9A
	sei		; 78
	plx		; FA
	bvc  73.b		; 50 49
	cpy #$F1.b		; C0 F1
	pld		; 2B
	cmp $E1FC.w,X		; DD FC E1
	ora $04.b,X		; 15 04
	jsr ($D004.w,X)		; FC 04 D0
	ora $DF1866.l		; 0F 66 18 DF
	inc $FF1C.w		; EE 1C FF
	inc A		; 1A
	and $3F0E10.l,X		; 3F 10 0E 3F
	clc		; 18
	adc $7037.w,X		; 7D 37 70
	jmp $0038.w		; 4C 38 00
	jmp $D41A00.l		; 5C 00 1A D4
	and $7D.b,S		; 23 7D
	bpl -48.b		; 10 D0
	stz $D0.b		; 64 D0
	rti		; 40

	bcc   0.b		; 90 00
	bcs  49.b		; B0 31
	phd		; 0B
	lda [$20.b],Y		; B7 20
	stz $F160.w		; 9C 60 F1
	and [$40.b],Y		; 37 40
	jsr $2006.w		; 20 06 20
	rts		; 60

	inc $37F1.w,X		; FE F1 37
	sbc [$1D.b]		; E7 1D
	adc $5DBF19.l		; 6F 19 BF 5D
	ldx $5CFF.w,Y		; BE FF 5C
	inc $FD58.w,X		; FE 58 FD
	cli		; 58
	adc [$10.b],Y		; 77 10
	inc A		; 1A
	plx		; FA
	bmi  83.b		; 30 53
	ora $4010.w,Y		; 19 10 40
	jmp $015801.l		; 5C 01 58 01
	cli		; 58
	sbc [$03.b]		; E7 03
	bpl  10.b		; 10 0A
	sbc ($2F.b),Y		; F1 2F
	sbc $3F.b,X		; F5 3F
	phx		; DA
	bmi 114.b		; 30 72
	inc $B0.b,X		; F6 B0
	tsb $3CC0.w		; 0C C0 3C
	sbc $3F.b,X		; F5 3F
	tsb $B4.b		; 04 B4
	tsb $FE8C.w		; 0C 8C FE
	bne 107.b		; D0 6B
	asl $EF.b		; 06 EF
	asl $DE.b		; 06 DE
	tsb $081F.w		; 0C 1F 08
	cmp $7B103C.l,X		; DF 3C 10 7B
	sec		; 38
	bit $6FC0.w,X		; 3C C0 6F
	rol $00.b		; 26 00
	cmp $1046.w,Y		; D9 46 10
	adc [$F0.b]		; 67 F0
	eor [$03.b]		; 47 03
	sec		; 38
	lda ($18.b)		; B2 18
	trb $FF00.w		; 1C 00 FF
	ror A		; 6A
	tsb $76.b		; 04 76
	brk $E8.b		; 00 E8
	bpl -52.b		; 10 CC
	sec		; 38
	and #$F2FA.w		; 29 FA F2
	eor [$E0.b]		; 47 E0
	ror A		; 6A
	tsb $E0.b		; 04 E0
	rtl		; 6B

	bpl -32.b		; 10 E0
	rtl		; 6B

	sbc ($47.b)		; F2 47
	sbc $DF06FF.l,X		; FF FF 06 DF
	and [$9F.b]		; 27 9F
	adc $BE.b,S		; 63 BE
	stz $5F.b		; 64 5F
	inc $F968.w,X		; FE 68 F9
	sei		; 78
	adc $6673C0.l,X		; 7F C0 73 66
	bmi  31.b		; 30 1F
	adc $640063.l,X		; 7F 63 00 64
	ora ($68.b,X)		; 01 68
	ora ($78.b,X)		; 01 78
	bne  59.b		; D0 3B
	inc $4BF0.w,X		; FE F0 4B
	brk $9A.b		; 00 9A
	sty $72.b		; 84 72
	tsb $146E.w		; 0C 6E 14
	sbc $9A24DE.l		; EF DE 24 9A
	sei		; 78
	eor ($57.b),Y		; 51 57
	brk $24.b		; 00 24
	bra -67.b		; 80 BD
	stz $E0.b		; 64 E0
	rtl		; 6B

	pei ($00.b)		; D4 00
	ldy $04.b		; A4 04
	sep #$00		; E2 00
	ror $14FF.w		; 6E FF 14
	eor $659F34.l		; 4F 34 9F 65
	ldx $ED66.w,Y		; BE 66 ED
	lda $087B44.l,X		; BF 44 7B 08
	sbc $10F370.l,X		; FF 70 F3 10
	ora $10FE34.l,X		; 1F 34 FE 10
	ora $0166.w,X		; 1D 66 01
	mvp $08,$02		; 44 02 08
	tsb $70.b		; 04 70
	inc $5CD0.w,X		; FE D0 5C
	jmp.w [$BC40]		; DC 40 BC
	bra  74.b		; 80 4A
	tsb $9E.b		; 04 9E
	xce		; FB
	tsb $2C.b		; 04 2C
	beq  83.b		; F0 53
	bmi -32.b		; 30 E0
	cpx #$00.b		; E0 00
	rti		; 40

	sta [$28.b],Y		; 97 28
	bra  72.b		; 80 48
	brk $24.b		; 00 24
	tsb $F2.b		; 04 F2
	eor ($D0.b,S),Y		; 53 D0
	sei		; 78
	adc [$FF.b]		; 67 FF
	clc		; 18
	and $1A3F1C.l		; 2F 1C 3F 1A
	adc $EBFF3A.l,X		; 7F 3A FF EB
	cli		; 58
	sbc $1813F2.l,X		; FF F2 13 18
	bvc  51.b		; 50 33
	inc A		; 1A
	brk $3A.b		; 00 3A
	xce		; FB
	brk $58.b		; 00 58
	pea $FE13.w		; F4 13 FE
	brk $DA.b		; 00 DA
	sty $74.b		; 84 74
	sbc $18E408.l,X		; FF 08 E4 18
	iny		; C8
	bmi -98.b		; 30 9E
	sei		; 78
	adc $80BB.w,Y		; 79 BB 80
	sta [$F1.b]		; 87 F1
	eor [$0C.b],Y		; 57 0C
	brk $98.b		; 00 98
	cpx #$01.b		; E0 01
	bmi -17.b		; 30 EF
	brk $F8.b		; 00 F8
	asl $86.b		; 06 86
	sta ($72.b),Y		; 91 72
	asl $3B08.w,X		; 1E 08 3B
	sbc $207710.l,X		; FF 10 77 20
	nop		; EA
	eor ($DE.b,X)		; 41 DE
	ora ($39.b,X)		; 01 39
	adc ($07.b,S),Y		; 73 07
	adc $B17FD4.l,X		; 7F D4 7F B1
	rts		; 60

	ora #$1700.w		; 09 00 17
	ora ($52.b,X)		; 01 52
	sbc $00BC00.l,X		; FF 00 BC 00
	dec $7C3C.w,X		; DE 3C 7C
	bra -68.b		; 80 BC
	lda $38FA00.l,X		; BF 00 FA 38
	pea $E4D0.w		; F4 D0 E4
.ACCU 8
.INDEX 8
	sep #$79		; E2 79
	bit $729E.w,X		; 3C 9E 72
	adc $D00438.l		; 6F 38 04 D0
	php		; 08
	rts		; 60

	rol $83D0.w,X		; 3E D0 83
	adc $00FF.w,X		; 7D FF 00
	lda [$70.b],Y		; B7 70
	inc $61.b,X		; F6 61
	dec $9D41.w,X		; DE 41 9D
	cmp [$03.b],Y		; D7 03
	lda [$0B.b],Y		; B7 0B
	sbc ($37.b,S),Y		; F3 37
	ora #$10.b		; 09 10
	stz $29.b,X		; 74 29
	brk $F5.b		; 00 F5
	rtl		; 6B

	bpl   0.b		; 10 00
	cpy #$D0.b		; C0 D0
	adc ($9C.b,S),Y		; 73 9C
	sei		; 78
	bit $4FD0.w,X		; 3C D0 4F
	ror $FCFC.w,X		; 7E FC FC
	bcc -16.b		; 90 F0
	eor $72.b,S		; 43 72
	and $2810F8.l,X		; 3F F8 10 28
	sbc $FC.b,X		; F5 FC
	bne 107.b		; D0 6B
	beq  96.b		; F0 60
	ror $0006.w,X		; 7E 06 00
	ora $1FFF04.l		; 0F 04 FF 1F
	php		; 08
	and ($10.b,S),Y		; 33 10
	ror $21.b		; 66 21
	cpx $5743.w		; EC 43 57
	sbc $F43301.l,X		; FF 01 33 F4
	sta [$0F.b]		; 87 0F
	bcc 123.b		; 90 7B
	ora $FC0032.l,X		; 1F 32 00 FC
	cmp ($87.b),Y		; D1 87
	sbc ($77.b,S),Y		; F3 77
	sed		; F8
	beq -16.b		; F0 F0
	bra -24.b		; 80 E8
	cpx #$54.b		; E0 54
	cmp ($87.b,S),Y		; D3 87
	sbc ($77.b),Y		; F1 77
	beq -15.b		; F0 F1
	sta [$10.b]		; 87 10
	sbc ($7F.b),Y		; F1 7F
	adc $FF7FF0.l,X		; 7F F0 7F FF
	adc $024D20.l		; 6F 20 4D 02
	tda		; 7B
	tsb $B3.b		; 04 B3
	ora $7BF5BA.l		; 0F BA F5 7B
	ora ($B0.b)		; 12 B0
	phk		; 4B
	trb $00.b		; 14 00
	adc $3E3FF4.l,X		; 7F F4 3F 3E
	sbc $C87CC4.l,X		; FF C4 7C C8
	sed		; F8
	bne  -8.b		; D0 F8
	bne -12.b		; D0 F4
	eor $D3C0.w,X		; 5D C0 D3
	adc $C800C4.l		; 6F C4 00 C8
	eor ($30.b)		; 52 30
	cpy #$F2.b		; C0 F2
	phk		; 4B
	inc $4FF1.w,X		; FE F1 4F
	sbc $43DC60.l,X		; FF 60 DC 43
	txy		; 9B
	tsb $B3.b		; 04 B3
	sbc $0C.b,X		; F5 0C
	sbc ($8F.b,S),Y		; F3 8F
	tsb $3FF0.w		; 0C F0 3F
	and [$00.b]		; 27 00
	stz $00.b		; 64 00
	sbc $F07C.w,X		; FD 7C F0
	jmp ($20D8.w)		; 6C D8 20
	stz $B878.w		; 9C 78 B8
	rts		; 60

	wai		; CB
	jsr ($F060.w,X)		; FC 60 F0
	phb		; 8B
	bmi -15.b		; 30 F1
	phb		; 8B
	sta $47.b,X		; 95 47
	sed		; F8
	tsb $D5.b		; 04 D5
	bmi -16.b		; 30 F0
	phb		; 8B
	ora $90.b,S		; 03 90
	.db $42, $7D		; 42 7D
	beq  83.b		; F0 53
	sbc [$40.b],Y		; F7 40
	ora [$FE.b]		; 07 FE
	rti		; 40

	jmp ($31A0.w,X)		; 7C A0 31
	sbc ($77.b,S),Y		; F3 77
	sbc ($53.b,S),Y		; F3 53
	and ($3A.b),Y		; 31 3A
	sbc $77.b,X		; F5 77
	sbc $EA44FE.l,X		; FF FE 44 EA
	rti		; 40

	jsr ($6440.w,X)		; FC 40 64
	jsr $F5AE.w		; 20 AE F5
	adc [$44.b],Y		; 77 44
	brk $40.b		; 00 40
	sbc ($8F.b),Y		; F1 8F
	clc		; 18
	sbc ($93.b),Y		; F1 93
	sta $904E.w,Y		; 99 4E 90
	and $66.b,S		; 23 66
	and ($4F.b,X)		; 21 4F
	sbc ($57.b),Y		; F1 57
	sbc ($87.b)		; F2 87
	ora [$32.b]		; 07 32
	bit #$75.b		; 89 75
	bmi -48.b		; 30 D0
	sta [$31.b],Y		; 97 31
	sbc $084B.w,Y		; F9 4B 08
	pea $F3F0.w		; F4 F0 F3
	and $7BD35A.l,X		; 3F 5A D3 7B
	php		; 08
	beq  87.b		; F0 57
	rts		; 60

	brk $F1.b		; 00 F1
	ora [$05.b]		; 07 05
	bcc  26.b		; 90 1A
	adc $2C012E.l,X		; 7F 2E 01 2C
	ora $3D.b,S		; 03 3D
	ora $77.b,S		; 03 77
	pea $F47F.w		; F4 7F F4
	and ($60.b),Y		; 31 60
	ora ($00.b),Y		; 11 00
	and $D4.b,S		; 23 D4
	txs		; 9A
	dey		; 88
	brk $9C.b		; 00 9C
	php		; 08
	ora $B8089C.l,X		; 1F 9C 08 B8
	bpl -16.b		; 10 F0
	pea $1307.w		; F4 07 13
	stx $11.b,Y		; 96 11
	ror $7F.b,X		; 76 7F
	xba		; EB
	ora ($CF.b),Y		; 11 CF
	and ($5F.b),Y		; 31 5F
	and [$7E.b],Y		; 37 7E
	bcs  63.b		; B0 3F
	cmp [$79.b],Y		; D7 79
	bmi 127.b		; 30 7F
	beq 113.b		; F0 71
	adc ($30.b),Y		; 71 30
	ora [$37.b]		; 07 37
	brk $AB.b		; 00 AB
	bmi   1.b		; 30 01
	bpl   0.b		; 10 00
	ora [$F1.b]		; 07 F1
	and $92B0AC.l,X		; 3F AC B0 92
	bit $FE.b,X		; 34 FE
	beq  35.b		; F0 23
	cpx $FC18.w		; EC 18 FC
	clc		; 18
	stz $30.b,X		; 74 30
	sec		; 38
	nop		; EA
	cmp $47.b,S		; C3 47
	cld		; D8
	and ($00.b,S),Y		; 33 00
	php		; 08
	cpx #$00.b		; E0 00
	sbc [$0B.b],Y		; F7 0B
	cmp $9F2BFF.l,X		; DF FF 2B 9F
	tda		; 7B
	ldx $FC6A.w,Y		; BE 6A FC
	rts		; 60

	adc $FC.b,S		; 63 FC
	eor ($87.b)		; 52 87
	and ($1F.b),Y		; 31 1F
	tda		; 7B
	brk $6A.b		; 00 6A
	ora ($60.b,X)		; 01 60
	ora $DE.b,S		; 03 DE
	ldx #$65.b		; A2 65
	brk $CC.b		; 00 CC
	cpy #$FC.b		; C0 FC
	sbc ($43.b)		; F2 43
	cpy $B738.w		; CC 38 B7
	jsr ($1410.w,X)		; FC 10 14
	bcs -100.b		; B0 9C
	cpy #$38.b		; C0 38
	brk $9F.b		; 00 9F
	sed		; F8
	inc $32.b,X		; F6 32
	brk $10.b		; 00 10
	php		; 08
	bne -98.b		; D0 9E
	and [$19.b]		; 27 19
	and $7FFF1F.l		; 2F 1F FF 7F
	ora ($BE.b,X)		; 01 BE
	ror $047E.w,X		; 7E 7E 04
	adc $FBF718.l,X		; 7F 18 F7 FB
	rts		; 60

	sbc ($72.b,X)		; E1 72
	ora $7E0001.l,X		; 1F 01 00 7E
	ora ($F5.b,X)		; 01 F5
	tsb $10.b		; 04 10
	sty $60.b		; 84 60
	bne -104.b		; D0 98
	sed		; F8
	bra -100.b		; 80 9C
	bra 127.b		; 80 7F
	jmp ($6600.w,X)		; 7C 00 66
	trb $00FC.w		; 1C FC 00
	jmp.w [$3BF0]		; DC F0 3B
	adc $8E.b,X		; 75 8E
	lda ($A7.b),Y		; B1 A7
	sei		; 78
	jsl $00C08D.l		; 22 8D C0 00
	bcs -14.b		; B0 F2
	tsa		; 3B
	sbc $3E4F00.l,X		; FF 00 4F 3E
	eor $327F32.l,X		; 5F 32 7F 32
	adc $30BF.w,X		; 7D BF 30
	adc $7F38.w,Y		; 79 38 7F
	bmi  50.b		; 30 32
	cpx #$AB.b		; E0 AB
	rol $50FE.w,X		; 3E FE 50
	rtl		; 6B

	and ($00.b)		; 32 00
	bmi   2.b		; 30 02
	sec		; 38
	asl $30.b		; 06 30
	inc $6CD0.w,X		; FE D0 6C
	inc $BAC0.w,X		; FE C0 BA
	sty $3A.b		; 84 3A
	tsb $7E.b		; 04 7E
	adc $38CC04.l,X		; 7F 04 CC 38
	clv		; B8
	rti		; 40

	jsr $50C0.w		; 20 C0 50
	sty $0497.w		; 8C 97 04
	bra  68.b		; 80 44
	cpx #$1F.b		; E0 1F
	cpy $40.b		; C4 40
	sta $8D21.w,X		; 9D 21 8D
	brk $FF.b		; 00 FF
	sbc $25DF07.l,X		; FF 07 DF 25
	sta $7CBF64.l,X		; 9F 64 BF 7C
	and $F464FE.l		; 2F FE 64 F4
	rts		; 60

	sbc ($72.b),Y		; F1 72
	adc [$F0.b]		; 67 F0
	mvn $1F,$71		; 54 71 1F
	cmp $64.b,X		; D5 64
	bcc -116.b		; 90 8C
	brk $F2.b		; 00 F2
	adc ($DC.b,S),Y		; 73 DC
	brk $4F.b		; 00 4F
	pla		; 68
	bpl 127.b		; 10 7F
	iny		; C8
	bmi  88.b		; 30 58
	bmi -72.b		; 30 B8
	bvs -16.b		; 70 F0
	sbc ($73.b),Y		; F1 73
	cmp $30.b,X		; D5 30
	brk $49.b		; 00 49
	bcs  98.b		; B0 62
	ldy $70.b		; A4 70
	cmp ($54.b),Y		; D1 54
	sbc $3FEF00.l,X		; FF 00 EF 3F
	ora $51021E.l,X		; 1F 1E 02 51
	jsr $70F3.w		; 20 F3 70
	adc $0352B2.l,X		; 7F B2 52 03
	ora $41B4D0.l,X		; 1F D0 B4 41
	lda $70.b,X		; B5 70
	ora $F032B1.l		; 0F B1 32 F0
	bcc  48.b		; 90 30
	eor $2AB1.w		; 4D B1 2A
	sbc ($83.b,S),Y		; F3 83
	sbc ($AD.b)		; F2 AD
	beq  84.b		; F0 54
	ror $9860.w		; 6E 60 98
	adc $4F17BB.l		; 6F BB 17 4F
	sbc ($17.b)		; F2 17
	jmp ($7F3C.w,X)		; 7C 3C 7F
	beq  83.b		; F0 53
	inc $7C.b		; E6 7C
	bcs  23.b		; B0 17
	sbc ($17.b,S),Y		; F3 17
	bit $3003.w,X		; 3C 03 30
	ora ($60.b,X)		; 01 60
	sbc ($13.b),Y		; F1 13
	cmp ($40.b,S),Y		; D3 40
	tya		; 98
	beq 123.b		; F0 7B
	eor ($64.b),Y		; 51 64
	stz $7050.w		; 9C 50 70
	bvs   0.b		; 70 00
	phb		; 8B
	rti		; 40

	sec		; 38
	jsr $7896.w		; 20 96 78
	rts		; 60

	stx $A1.b,Y		; 96 A1
	and #$00.b		; 29 00
	ror $FF77.w,X		; 7E 77 FF
	ora $EF.b,S		; 03 EF
	asl $CF.b		; 06 CF
	asl $1E.b		; 06 1E
	tsb $951C.w		; 0C 1C 95
	php		; 08
	sbc ($93.b,S),Y		; F3 93
	and $F0.b,S		; 23 F0
	phk		; 4B
	asl $13.b		; 06 13
	jmp $93F2.w		; 4C F2 93
	cpx #$3A.b		; E0 3A
	bvs -69.b		; 70 BB
	ldy #$30.b		; A0 30
	sei		; 78
	bvc  32.b		; 50 20
	sec		; 38
	sbc ($17.b)		; F2 17
	and ($AB.b)		; 32 AB
	jsr ($6BE3.w,X)		; FC E3 6B
	sbc ($17.b)		; F2 17
	adc $5E00.w		; 6D 00 5E
	bit $1839.w		; 2C 39 18
	lda $F033.w,X		; BD 33 F0
	and [$3F.b]		; 27 3F
	brk $39.b		; 00 39
	asl $F1.b		; 06 F1
	lda [$01.b]		; A7 01
	dex		; CA
	sbc ($03.b)		; F2 03
	ora $1EB770.l,X		; 1F 70 B7 1E
	bmi 125.b		; 30 7D
	sbc ($77.b),Y		; F1 77
	sta $BFBF60.l,X		; 9F 60 BF BF
	ror $CC7E.w,X		; 7E 7E CC
	plx		; FA
	iny		; C8
	beq -85.b		; F0 AB
	rti		; 40

	ldx $77F3.w,Y		; BE F3 77
	ror $CC00.w,X		; 7E 00 CC
	brk $C8.b		; 00 C8
	beq -73.b		; F0 B7
	rti		; 40

	inc $ABF0.w,X		; FE F0 AB
	jmp ($9B00.w,X)		; 7C 00 9B
	sei		; 78
	adc $7F2E10.l,X		; 7F 10 2E 7F
	ora ($2D.b,X)		; 01 2D
	cop $59.b		; 02 59
	ora [$7B.b]		; 07 7B
	asl $F3.b		; 06 F3
	rtl		; 6B

	cmp $00.b,X		; D5 00
	bne 119.b		; D0 77
	asl $3410.w,X		; 1E 10 34
	rol $F0.b		; 26 F0
	lda [$E8.b],Y		; B7 E8
	bpl  -1.b		; 10 FF
	ldy $3C48.w,X		; BC 48 3C
	cpy #$7C.b		; C0 7C
	sed		; F8
	sed		; F8
	cpy #$D4.b		; C0 D4
	beq  43.b		; F0 2B
	beq  55.b		; F0 37
	bpl -80.b		; 10 B0
	and [$C0.b],Y		; 37 C0
.INDEX 8
	sep #$17		; E2 17
	beq   8.b		; F0 08
	jsr ($38E2.w,X)		; FC E2 38
	jsl $0006BF.l		; 22 BF 06 00
	and $02.b,X		; 35 02
	and $A902.w,X		; 3D 02 A9
	and $51B7F4.l,X		; 3F F4 B7 51
	iny		; C8
	cop $30.b		; 02 30
	bit $F611.w,X		; 3C 11 F6
	ora ($30.b,X)		; 01 30
	phb		; 8B
	brk $78.b		; 00 78
	beq -101.b		; F0 9B
	inx		; E8
	inc $2B.b,X		; F6 2B
	adc ($BC.b,S),Y		; 73 BC
	sbc ($C3.b),Y		; F1 C3
	asl $00EF.w		; 0E EF 00
	ora $1308.w,Y		; 19 08 13
	bcs  74.b		; B0 4A
	ora $3A02.w,X		; 1D 02 3A
	eor [$04.b],Y		; 57 04
	and ($0C.b)		; 32 0C
	lda ($04.b,S),Y		; B3 04
	asl $0012.w		; 0E 12 00
	trb $8410.w		; 1C 10 84
	inc $2810.w,X		; FE 10 28
	brk $BE.b		; 00 BE
	jmp $52BF.w		; 4C BF 52
	sbc $DF50.w,X		; FD 50 DF
	ply		; 7A
	plp		; 28
	jmp ($7020.w,X)		; 7C 20 70
	sbc ($37.b)		; F2 37
	jmp $3F00.w		; 4C 00 3F
	eor ($00.b)		; 52 00
	bvc   2.b		; 50 02
	plp		; 28
	tsb $12.b		; 04 12
	jmp ($BEB0.w,X)		; 7C B0 BE
	sbc $390C1C.l,X		; FF 1C 0C 39
	clc		; 18
	adc ($30.b)		; 72 30
	stz $20.b		; 64 20
	lda #$4C.b		; A9 4C
	sbc ($CE.b)		; F2 CE
	ora ($B4.b),Y		; 11 B4
	asl $D2.b		; 06 D2
	tsa		; 3B
	sec		; 38
	sbc ($03.b)		; F2 03
	jsr ($0067.w,X)		; FC 67 00
	dec $3C.b		; C6 3C
	stz $1B.b,X		; 74 1B
	sty $1B.b		; 84 1B
	jsr ($0900.w,X)		; FC 00 09
	brk $7D.b		; 00 7D
	ora $10.b,S		; 03 10
	dex		; CA
	tas		; 1B
	php		; 08
	bit $10.b,X		; 34 10
	bit $70.b		; 24 70
	ora $1D.b		; 05 1D
	jmp $0403F4.l		; 5C F4 03 04
	brk $08.b		; 00 08
	sbc ($03.b)		; F2 03
	beq  50.b		; F0 32
	adc ($0E.b),Y		; 71 0E
	jmp $31D030.l		; 5C 30 D0 31
	jmp ($1032.w,X)		; 7C 32 10
	rol $F4.b		; 26 F4
	sta $30.b,S		; 83 30
	sbc ($6D.b,S),Y		; F3 6D
	adc $010C.w,X		; 7D 0C 01
	asl A		; 0A
	ora $1C2C00.l,X		; 1F 00 2C 1C
	ora $E0CF62.l,X		; 1F 62 CF E0
	bcs -104.b		; B0 98
	sbc ($C7.b)		; F2 C7
	.db $42, $88		; 42 88
	trb $01.b		; 14 01
	sbc ($07.b,S),Y		; F3 07
	inc $5C1C.w		; EE 1C 5C
	lda $70B838.l,X		; BF 38 B8 70
	bvs -32.b		; 70 E0
	cpx #$F4.b		; E0 F4
	phk		; 4B
	trb $70E2.w		; 1C E2 70
	adc ($70.b)		; 72 70
	bcc -107.b		; 90 95
	sbc ($4C.b,X)		; E1 4C
	bvs  22.b		; 70 16
	asl $385E.w,X		; 1E 5E 38
	sta $683078.l,X		; 9F 78 30 68
	jsr $5048.w		; 20 48 50
	eor $1013F7.l,X		; 5F F7 13 10
	sed		; F8
	ora $AE.b,S		; 03 AE
	bpl 117.b		; 10 75
	adc ($09.b),Y		; 71 09
	stz $08.b,X		; 74 08
	stz $18.b		; 64 18
	mvp $38,$E3		; 44 E3 38
	jmp $0901.w		; 4C 01 09
	adc ($09.b)		; 72 09
	and $00.b,X		; 35 00
	adc $FFCF10.l		; 6F 10 CF FF
	and $7F167F.l,X		; 3F 7F 16 7F
	rol $7D.b		; 26 7D
	bit $557B.w,X		; 3C 7B 55
	clc		; 18
	sbc ($67.b),Y		; F1 67
	bpl -16.b		; 10 F0
	jmp.w [$5016]		; DC 16 50
	bvs  60.b		; 70 3C
	beq -127.b		; F0 81
	inc $67F1.w		; EE F1 67
	cpx $BC40.w		; EC 40 BC
	pea $BC2F.w		; F4 2F BC
	pha		; 48
	dex		; CA
	ldx $50.b		; A6 50
	cmp $40.b		; C5 40
	clc		; 18
	lda ($63.b)		; B2 63
	lda ($2F.b),Y		; B1 2F
	iny		; C8
	sbc ($7B.b),Y		; F1 7B
	sbc $DF17FF.l		; EF FF 17 DF
	asl $0C1E.w		; 0E 1E 0C
	asl $3C0C.w,X		; 1E 0C 3C
	sbc $307B18.l,X		; FF 18 7B 30
	sbc [$40.b],Y		; F7 40
	sbc [$00.b]		; E7 00
	eor [$CC.b],Y		; 57 CC
	bcc -108.b		; 90 94
	lda $4F.b,X		; B5 4F
	rti		; 40

	ora $F1.b,S		; 03 F1
	and $682BF1.l,X		; 3F F1 2B 68
	bpl 127.b		; 10 7F
	jmp $BA30.w		; 4C 30 BA
	cli		; 58
	mvn $88,$80		; 54 80 88
	sbc ($3F.b),Y		; F1 3F
	sbc [$60.b],Y		; F7 60
	brk $68.b		; 00 68
	eor ($D8.b,X)		; 41 D8
	tsb $5C.b		; 04 5C
	php		; 08
	dey		; 88
	ldx $B7F0.w		; AE F0 B7
	ora #$0D.b		; 09 0D
	brk $33.b		; 00 33
	and [$09.b]		; 27 09
	adc ($4F.b)		; 72 4F
	ora #$14.b		; 09 14
	lda [$0F.b]		; A7 0F
	sbc ($73.b)		; F2 73
	iny		; C8
	cpy #$6A.b		; C0 6A
	bcs  80.b		; B0 50
	cmp $D3.b		; C5 D3
	cmp [$82.b]		; C7 82
	jsr $70FD.w		; 20 FD 70
	sbc #$00.b		; E9 00
	rol $1C.b		; 26 1C
	rol $3E1C.w		; 2E 1C 3E
	trb $7CA3.w		; 1C A3 7C
	sec		; 38
	ora ($00.b),Y		; 11 00
	sbc ($49.b),Y		; F1 49
	and ($1F.b),Y		; 31 1F
	trb $0E14.w		; 1C 14 0E
	bmi -70.b		; 30 BA
	bne -28.b		; D0 E4
	plp		; 28
	eor ($18.b)		; 52 18
	trb $08.b		; 14 08
	trb $0010.w		; 1C 10 00
	trb $62.b		; 14 62
	sbc ($E4.b),Y		; F1 E4
	bpl -110.b		; 10 92
	cmp [$02.b]		; C7 02
	inc $F1.b		; E6 F1
	eor [$11.b]		; 47 11
	ora $A66324.l		; 0F 24 63 A6
	bcs -18.b		; B0 EE
	.db $42, $01		; 42 01
	sbc ($BF.b),Y		; F1 BF
	iny		; C8
	ora $F13F.w,X		; 1D 3F F1
	lda $00FFDC.l,X		; BF DC FF 00
	and ($0C.b)		; 32 0C
	rol $1C.b		; 26 1C
	lsr $9C3C.w		; 4E 3C 9C
	lda [$78.b],Y		; B7 78
	plp		; 28
	cpx #$F0.b		; E0 F0
	and $430030.l,X		; 3F 30 00 43
	asl $3C.b		; 06 3C
	lda [$00.b]		; A7 00
	sei		; 78
	bpl -32.b		; 10 E0
	cpy $1573.w		; CC 73 15
	bit $9A10.w		; 2C 10 9A
	tas		; 1B
	lda ($08.b),Y		; B1 08
	lda ($B7.b),Y		; B1 B7
	lda ($15.b,S),Y		; B3 15
	cmp ($AF.b),Y		; D1 AF
	php		; 08
	tsb $E1.b		; 04 E1
	cmp [$2E.b],Y		; D7 2E
	inc $9D50.w,X		; FE 50 9D
	sbc ($0C.b)		; F2 0C
	pea $4C08.w		; F4 08 4C
	bmi  -4.b		; 30 FC
	sta $C03218.l,X		; 9F 18 32 C0
	dec $0400.w		; CE 00 04
	asl A		; 0A
	ora ($10.b),Y		; 11 10
	clc		; 18
	sbc $00CC0C.l,X		; FF 0C CC 00
	brk $05.b		; 00 05
	ora $0B.b,S		; 03 0B
	ora [$7F.b]		; 07 7F
	ora [$0E.b],Y		; 17 0E
	rol $3F1C.w		; 2E 1C 3F
	trb $F239.w		; 1C 39 F2
	cmp ($EC.b,S),Y		; D3 EC
	lda ($DB.b),Y		; B1 DB
	sta ($2B.b,S),Y		; 93 2B
	clc		; 18
	ora [$F1.b]		; 07 F1
	cmp ($C0.b,S),Y		; D3 C0
	bra -128.b		; 80 80
	lsr $14.b		; 46 14
	stp		; DB
	txs		; 9A
	sei		; 78
	sbc ($C7.b),Y		; F1 C7
	tsb $E8.b		; 04 E8
	ora ($AA.b),Y		; 11 AA
	jsr ($C7F1.w,X)		; FC F1 C7
	ror $49B1.w		; 6E B1 49
	pha		; 48
	bmi  72.b		; 30 48
	bne  73.b		; D0 49
	ror $5038.w,X		; 7E 38 50
	cpx $D25C.w		; EC 5C D2
	sbc $0033.w		; ED 33 00
	sec		; 38
	brk $10.b		; 00 10
	bne -96.b		; D0 A0
	jmp $981172.l		; 5C 72 11 98
	lda ($2D.b),Y		; B1 2D
	and ($20.b),Y		; 31 20
	adc $11.b,X		; 75 11
	jsr $4418.w		; 20 18 44
	jsr $FAB0.w		; 20 B0 FA
	ora $047F.w		; 0D 7F 04
	phd		; 0B
	brk $0D.b		; 00 0D
	cop $0B.b		; 02 0B
	asl $73.b		; 06 73
	brk $B8.b		; 00 B8
	bcc -81.b		; 90 AF
	sbc ($2F.b,X)		; E1 2F
	bpl   0.b		; 10 00
	ora $07.b,S		; 03 07
	asl $00.b		; 06 00
	brk $C7.b		; 00 C7
	sbc $C76D00.l,X		; FF 00 6D C7
	xce		; FB
	asl $5D.b		; 06 5D
	bit $FB.b		; 24 FB
	cmp $C36D20.l		; CF 20 6D C3
	wai		; CB
	bmi   2.b		; 30 02
	bcc -79.b		; 90 B1
	cpy $20.b		; C4 20
	sbc $202220.l,X		; FF 20 22 20
	rol $20.b		; 26 20
	cmp [$C0.b]		; C7 C0
	asl $F7.b		; 06 F7
	brk $04.b		; 00 04
	cop $F0.b		; 02 F0
	ora ($03.b,X)		; 01 03
	tyx		; BB
	ror $5D.b		; 66 5D
	tda		; 7B
	tsb $BB.b		; 04 BB
	bvs   0.b		; 70 00
	plb		; AB
	lsr $DD.b		; 46 DD
	lsr $F0.b		; 46 F0
	lda $07FF.w,X		; BD FF 07
	rts		; 60

	asl $02.b		; 06 02
	rol $06.b		; 26 06
	ror $07.b		; 66 07
	lda $4606C7.l,X		; BF C7 06 46
	bit $64.b		; 24 64
	sbc $D0.b,S		; E3 D0
	lda #$EB.b		; A9 EB
	ror $05F0.w,X		; 7E F0 05
	dex		; CA
	asl $65.b		; 06 65
	cpy #$C6.b		; C0 C6
	ora ($E1.b,X)		; 01 E1
	adc $E3F3.w,X		; 7D F3 E3
	cpx #$E2.b		; E0 E2
	ora $43.b		; 05 43
	stx $04.b		; 86 04
	cmp $00.b,S		; C3 00
	adc $FF.b		; 65 FF
	cpy #$FB.b		; C0 FB
	brk $DD.b		; 00 DD
	jsl $6507EA.l		; 22 EA 07 65
	sbc $80B6C3.l,X		; FF C3 B6 80
	cmp $000024.l,X		; DF 24 00 00
	cmp $F7.b,S		; C3 F7
	ora $06.b,S		; 03 06
	rol $10.b		; 26 10
	brk $86.b		; 00 86
	brk $C0.b		; 00 C0
	adc ($FF.b,X)		; 61 FF
	cpx #$60.b		; E0 60
	rts		; 60

	cpy #$00.b		; C0 00
	rts		; 60

	cpy #$F0.b		; C0 F0
	xce		; FB
	jsr $70D0.w		; 20 D0 70
	bne  96.b		; D0 60
	brk $B0.b		; 00 B0
	rts		; 60

	bne  48.b		; D0 30
	beq -21.b		; F0 EB
	rti		; 40

	jmp $91E192.l		; 5C 92 E1 91
	cmp $40.b		; C5 40
	jsr $FA79.w		; 20 79 FA
	eor $00F700.l		; 4F 00 F7 00
	brk $83.b		; 00 83
	bmi -64.b		; 30 C0
	xba		; EB
	brk $5D.b		; 00 5D
.ACCU 8
	sep #$E7		; E2 E7
	plx		; FA
	asl $05.b		; 06 05
	and ($B6.b)		; 32 B6
	bpl   1.b		; 10 01
	bra -122.b		; 80 86
	bra -13.b		; 80 F3
	dec $C0.b		; C6 C0
	sbc $07.b,X		; F5 07
	sbc ($0D.b,S),Y		; F3 0D
	cmp $EB24.w,X		; DD 24 EB
	brk $5F.b		; 00 5F
	adc $BBC3.w		; 6D C3 BB
	stx $DD.b		; 86 DD
	beq   7.b		; F0 07
	cpy $F0.b		; C4 F0
	sta $02FF.w,X		; 9D FF 02
	jsr $8006.w		; 20 06 80
	ora [$C0.b]		; 07 C0
	ror $E0.b		; 66 E0
	adc $E66264.l,X		; 7F 64 62 E6
	brk $5D.b		; 00 5D
	jsl $11B0EB.l		; 22 EB B0 11
	sta $6D00CB.l		; 8F CB 00 6D
	cop $F0.b		; 02 F0
	ora $E14DF0.l		; 0F F0 4D E1
	phd		; 0B
	cop $3E.b		; 02 3E
	lda ($11.b,X)		; A1 11
	dec $06.b		; C6 06
	asl $04.b		; 06 04
	tsb $FF.b		; 04 FF
	ora ($E4.b,S),Y		; 13 E4
	ora ($F4.b,S),Y		; 13 F4
	stz $14.b,X		; 74 14
	beq  15.b		; F0 0F
	cpy #$F1.b		; C0 F1
	ora $6D06CB.l		; 0F CB 06 6D
	dec $26.b		; C6 26
	sbc ($13.b,S),Y		; F3 13
	cmp $23.b,S		; C3 23
	adc ($15.b),Y		; 71 15
	bcs   3.b		; B0 03
	cpy $B1.b		; C4 B1
	tsx		; BA
	beq  21.b		; F0 15
	sbc $20F6C3.l		; EF C3 F6 20
	eor ($10.b,S),Y		; 53 10
	stp		; DB
	ora $01.b,S		; 03 01
	and ($7B.b)		; 32 7B
	brk $53.b		; 00 53
	cpx #$FF.b		; E0 FF
	cmp [$C0.b]		; C7 C0
	brk $01.b		; 00 01
	adc $0D.b,S		; 63 0D
	inc $0000.w,X		; FE 00 00
	and ($E1.b,X)		; 21 E1
	brk $53.b		; 00 53
	and ($E6.b,X)		; 21 E6
	ora ($C7.b,X)		; 01 C7
	eor $CF87.w		; 4D 87 CF
	bvc  -8.b		; 50 F8
	bvs -57.b		; 70 C7
	jsr $01F8.w		; 20 F8 01
	sbc ($83.b,X)		; E1 83
	brk $80.b		; 00 80
	lda ($DF.b),Y		; B1 DF
	tsb $00.b		; 04 00
	lda [$F8.b]		; A7 F8
	and $84B210.l,X		; 3F 10 B2 84
	ora $07CB.w		; 0D CB 07
	asl $B0.b		; 06 B0
	sbc $5202.w,X		; FD 02 52
	inc $CD92.w,X		; FE 92 CD
	tsb $01.b		; 04 01
	cpx $58.b		; E4 58
	inc $1F70.w,X		; FE 70 1F
	asl $42.b		; 06 42
	tad		; 5B
	adc $58.b,X		; 75 58
	asl $04.b		; 06 04
	tsb $A0.b		; 04 A0
	sbc #$4D.b		; E9 4D
	lda ($21.b),Y		; B1 21
	sbc $B201.w,Y		; F9 01 B2
	and ($F8.b,X)		; 21 F8
	eor $21B07B.l		; 4F 7B B0 21
	and [$DE.b],Y		; 37 DE
	sed		; F8
	bvc  32.b		; 50 20
	jsr $2023.w		; 20 23 20
	sbc #$51.b		; E9 51
	xba		; EB
	tsb $77.b		; 04 77
	eor $C0.b,X		; 55 C0
	sbc $F9.b,S		; E3 F9
	eor ($04.b)		; 52 04
	cmp $23.b,S		; C3 23
	sbc #$53.b		; E9 53
	cmp $6560BB.l,X		; DF BB 60 65
	cmp $C3.b,S		; C3 C3
	sed		; F8
	mvn $60,$64		; 54 64 60
	ora $C3.b,S		; 03 C3
	cpy #$E9.b		; C0 E9
	eor $B3.b,X		; 55 B3
	and $EC5708.l,X		; 3F 08 57 EC
	brk $8F.b		; 00 8F
	ora $6720AB.l,X		; 1F AB 20 67
	phd		; 0B
	tsb $05.b		; 04 05
	sed		; F8
	mvn $DD,$81		; 54 81 DD
	ora $03.b,S		; 03 03
	xce		; FB
	ora [$77.b]		; 07 77
	adc $C7C3.w		; 6D C3 C7
	sbc #$05.b		; E9 05
	ror $C0.b		; 66 C0
	cmp [$FA.b]		; C7 FA
	phd		; 0B
	phy		; 5A
	bcs  47.b		; B0 2F
	sbc [$FA.b]		; E7 FA
	lsr $E0E3.w,X		; 5E E3 E0
	jsr ($C401.w,X)		; FC 01 C4
	plx		; FA
	ora ($F7.b,X)		; 01 F7
	asl $C3.b		; 06 C3
	and [$FA.b]		; 27 FA
	ora $E35500.l		; 0F 00 55 E3
	sbc $7C.b,S		; E3 7C
	nop		; EA
	ora ($FB.b,S),Y		; 13 FB
	ora $01F2.w		; 0D F2 01
	adc $01.b,S		; 63 01
	cmp ($F8.b,X)		; C1 F8
	stz $33.b		; 64 33
	ora ($21.b,X)		; 01 21
	nop		; EA
	brk $F0.b		; 00 F0
	and $D98040.l,X		; 3F 40 80 D9
	ora $00CA.w,X		; 1D CA 00
	cpy #$5F.b		; C0 5F
	and $71307E.l		; 2F 7E 30 71
	ora $CC31DA.l,X		; 1F DA 31 CC
	and ($F0.b)		; 32 F0
	and $EB23.w,Y		; 39 23 EB
	lda $844D06.l,X		; BF 06 4D 84
	wai		; CB
	bra  77.b		; 80 4D
	beq  45.b		; F0 2D
	eor $10FE.w		; 4D FE 10
	cmp ($E0.b,X)		; C1 E0
	ora $80.b,S		; 03 80
	asl $82.b		; 06 82
	asl $86.b		; 06 86
	cmp $2006.w,X		; DD 06 20
	brk $86.b		; 00 86
	tsb $84.b		; 04 84
	beq  55.b		; F0 37
	brk $F0.b		; 00 F0
	rtl		; 6B

	jsr $9050.w		; 20 50 90
	adc ($50.b,S),Y		; 73 50
	cpx #$8E.b		; E0 8E
	bvc  32.b		; 50 20
	sbc ($37.b),Y		; F1 37
	adc $20.b		; 65 20
	eor ($AC.b)		; 52 AC
	jsr $F012.w		; 20 12 F0
	lda ($C2.b),Y		; B1 C2
	asl $01.b		; 06 01
	bvc  76.b		; 50 4C
	tya		; 98
	bcs  49.b		; B0 31
	and ($44.b),Y		; 31 44
	beq -61.b		; F0 C3
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	adc ($24.b,S),Y		; 73 24
	ora $CE.b,S		; 03 CE
	sbc ($37.b),Y		; F1 37
	sta $AB.b,S		; 83 AB
	dec $D0.b		; C6 D0
	cmp $3470.w		; CD 70 34
	xce		; FB
	rol $CB.b		; 26 CB
	eor $F3C4.w,X		; 5D C4 F3
	and [$04.b],Y		; 37 04
	brk $36.b		; 00 36
	ora ($00.b),Y		; 11 00
.ACCU 16
	rep #$26		; C2 26
	phx		; DA
	beq  63.b		; F0 3F
	ora $70.b,S		; 03 70
	ora ($06.b,X)		; 01 06
	dec A		; 3A
	beq  57.b		; F0 39
	rol $01.b,X		; 36 01
	sbc $205F.w,X		; FD 5F 20
	sbc $03.b,X		; F5 03
	cmp $06.b,S		; C3 06
	rol $24.b		; 26 24
	bit $D2.b		; 24 D2
	cpx $41.b		; E4 41
	brk $F2.b		; 00 F2
	and $E0DFD0.l,X		; 3F D0 DF E0
	bvs  64.b		; 70 40
	bcs -128.b		; B0 80
	ora $96D0.w,Y		; 19 D0 96
	ora [$71.b]		; 07 71
	cmp ($80.b,X)		; C1 80
	rts		; 60

	mvp $DF,$9A		; 44 9A DF
	and $0040FF.l,X		; 3F FF 40 00
	ora $433F42.l,X		; 1F 42 3F 43
	eor $457F44.l,X		; 5F 44 7F 45
	sta $47BF46.l,X		; 9F 46 BF 47
	cmp $49FF48.l,X		; DF 48 FF 49
	brk $1F.b		; 00 1F
	phk		; 4B
	and $4D5F4C.l,X		; 3F 4C 5F 4D
	adc $4F9F4E.l,X		; 7F 4E 9F 4F
	lda $51DF50.l,X		; BF 50 DF 51
	ror $97.b,X		; 76 97
	lda [$CB.b]		; A7 CB
	stx $45.b		; 86 45
	bmi  82.b		; 30 52
	ora #$8326.w		; 09 26 83
	dex		; CA
	mvp $83,$F0		; 44 F0 83
	jsr $0160.w		; 20 60 01
	eor [$F7.b],Y		; 57 F7
	and $37EC.w,X		; 3D EC 37
	sbc $EC41.w,X		; FD 41 EC
	eor ($00.b,X)		; 41 00
	lda $F0FB.w,Y		; B9 FB F0
	and $09.b		; 25 09
	and $032606.l,X		; 3F 06 26 03
	plx		; FA
	and $2407FB.l,X		; 3F FB 07 24
	adc $C0.b		; 65 C0
	sbc $423F.w,Y		; F9 3F 42
	and $F9.b,S		; 23 F9
	and $FF6020.l,X		; 3F 20 60 FF
	and $A257FE.l,X		; 3F FE 57 A2
	ora ($0E.b),Y		; 11 0E
	jsl $38461C.l		; 22 1C 46 38
	and $1E06BF.l,X		; 3F BF 06 1E
	php		; 08
	ora $B40B08.l,X		; 1F 08 0B B4
	adc ($38.b,S),Y		; 73 38
	inc $C870.w		; EE 70 C8
	php		; 08
	ora ($08.b,X)		; 01 08
	ora ($84.b)		; 12 84
	cpx $1A00.w		; EC 00 1A
	sbc $040A04.l,X		; FF 04 0A 04
	asl $9E04.w		; 0E 04 9E
	tsb $4FFC.w		; 0C FC 4F
	clc		; 18
	sec		; 38
	beq -16.b		; F0 F0
	sbc ($CB.b),Y		; F1 CB
	cmp ($DD.b,X)		; C1 DD
	tsb $E2.b		; 04 E2
	cmp $F0FD.w,Y		; D9 FD F0
	sbc ($03.b),Y		; F1 03
	ora ($0E.b,S),Y		; 13 0E
	and [$1E.b]		; 27 1E
	eor $7DD32E.l,X		; 5F 2E D3 7D
	tsb $A451.w		; 0C 51 A4
	adc ($A3.b,S),Y		; 73 A3
	asl $7B50.w,X		; 1E 50 7B
	tsb $F402.w		; 0C 02 F4
	ldy #$E9.b		; A0 E9
	beq 115.b		; F0 73
	bit $BBD0.w		; 2C D0 BB
	sei		; 78
	brk $76.b		; 00 76
	brk $1F.b		; 00 1F
	lsr $5A24.w,X		; 5E 24 5A
	jsr $D034.w		; 20 34 D0
	inc $61.b		; E6 61
	sbc $81.b,X		; F5 81
	lda [$DF.b]		; A7 DF
	brk $24.b		; 00 24
	tsb $24.b		; 04 24
	php		; 08
	bne -17.b		; D0 EF
	and ($0C.b)		; 32 0C
	ror $07F0.w,X		; 7E F0 07
	bit $5CAF.w,X		; 3C AF 5C
	inc $3B1C.w,X		; FE 1C 3B
	beq -99.b		; F0 9D
	sbc $A41C.w,X		; FD 1C A4
	sta ($5C.b,X)		; 81 5C
	brk $1C.b		; 00 1C
	ora ($18.b,X)		; 01 18
	tsb $F4.b		; 04 F4
	beq -99.b		; F0 9D
	bne -87.b		; D0 A9
	asl A		; 0A
	beq   7.b		; F0 07
	trb $08.b		; 14 08
	cpx $9718.w		; EC 18 97
	tya		; 98
	bvs -16.b		; 70 F0
	cmp $B1.b,S		; C3 B1
	tsb $E4.b		; 04 E4
	lda ($52.b,X)		; A1 52
	cpy #$31.b		; C0 31
	lda $19670F.l,X		; BF 0F 67 19
	and $F01F07.l,X		; 3F 07 1F F0
	tyx		; BB
	tas		; 1B
	asl $0BF2.w		; 0E F2 0B
	ora $F03900.l,X		; 1F 00 39 F0
	cmp $F0BBF1.l,X		; DF F1 BB F0
	sta $80.b,S		; 83 80
	cpx #$D7.b		; E0 D7
	cpy $9080.w		; CC 80 90
	sbc ($BB.b)		; F2 BB
	rts		; 60

	pea $80C3.w		; F4 C3 80
	bmi  48.b		; 30 30
	bra 112.b		; 80 70
	sbc ($BB.b),Y		; F1 BB
	pea $F0C3.w		; F4 C3 F0
	phd		; 0B
	ora $903427.l		; 0F 27 34 90
	sbc ($D9.b),Y		; F1 D9
	sbc ($0E.b),Y		; F1 0E
	sbc ($AC.b),Y		; F1 AC
	bit $90.b,X		; 34 90
	sbc ($8F.b),Y		; F1 8F
	cpx #$C0.b		; E0 C0
	bcc -128.b		; 90 80
	and [$F0.b],Y		; 37 F0
	brk $72.b		; 00 72
	bvc 120.b		; 50 78
	eor $F120.w,X		; 5D 20 F1
	ora #$3352.w		; 09 52 33
	rol $AF80.w,X		; 3E 80 AF
	cop $22.b		; 02 22
	cop $22.b		; 02 22
	tsb $B1E0.w		; 0C E0 B1
	inc $08.b,X		; F6 08
	sbc $0F00.w,Y		; F9 00 0F
	brk $2B.b		; 00 2B
	ora ($03.b,X)		; 01 03
	ora $0F.b,S		; 03 0F
	tsb $FF1F.w		; 0C 1F FF
	brk $2F.b		; 00 2F
	and $5C.b,S		; 23 5C
	brk $7F.b		; 00 7F
	mvp $FF,$FE		; 44 FE FF
	pha		; 48
	jsr ($0300.w,X)		; FC 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	cmp $233F10.l,X		; DF 10 3F 23
	adc $00F324.l,X		; 7F 24 F3 00
	brk $00.b		; 00 00
	sbc $E0C0C0.l,X		; FF C0 C0 E0
	brk $D0.b		; 00 D0
	bpl -24.b		; 10 E8
	brk $DF.b		; 00 DF
	sed		; F8
	php		; 08
	stz $1C08.w		; 9C 08 1C
	sbc ($00.b),Y		; F1 00
	brk $E0.b		; 00 E0
	cmp $10F020.l,X		; DF 20 F0 10
	sed		; F8
	bcc -11.b		; 90 F5
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	rts		; 60

	brk $90.b		; 00 90
	rts		; 60

	bcc   0.b		; 90 00
	sed		; F8
	bvc 124.b		; 50 7C
	bpl   0.b		; 10 00
	sbc ($00.b,S),Y		; F3 00
	rts		; 60

	beq  96.b		; F0 60
	beq  80.b		; F0 50
	sbc [$00.b],Y		; F7 00
	sbc $490030.l,X		; FF 30 00 49
	and ($4A.b),Y		; 31 4A
	brk $FB.b		; 00 FB
	eor ($F7.b)		; 52 F7
	sbc $F3FF52.l,X		; FF 52 FF F3
	brk $30.b		; 00 30
	adc $7B31.w,Y		; 79 31 7B
	sbc $F751.w,X		; FD 51 F7
	brk $7C.b		; 00 7C
	brk $82.b		; 00 82
	stx $79.b		; 86 79
	brk $DF.b		; 00 DF
	sta [$01.b]		; 87 01
	ora $01.b,S		; 03 01
	ora $F3.b,S		; 03 F3
	brk $7C.b		; 00 7C
	inc $86F7.w,X		; FE F7 86
	sbc $00F702.l,X		; FF 02 F7 00
	ora [$00.b]		; 07 00
	clc		; 18
	clc		; 18
	adc $380027.l,X		; 7F 27 00 38
	jsr $20F0.w		; 20 F0 20
	beq -13.b		; F0 F3
	brk $DF.b		; 00 DF
	ora [$1F.b]		; 07 1F
	clc		; 18
	and $00F710.l,X		; 3F 10 F7 00
	cmp $00.b,S		; C3 00
	sbc $956224.l,X		; FF 24 62 95
	brk $77.b		; 00 77
	ora ($3F.b)		; 12 3F
	ora ($7D.b)		; 12 7D
	and $C300F3.l,X		; 3F F3 00 C3
	sbc [$62.b]		; E7 62
	sbc [$22.b],Y		; F7 22
	sbc [$00.b],Y		; F7 00
	sbc $820001.l,X		; FF 01 00 82
	sta ($42.b,X)		; 81 42
	brk $C3.b		; 00 C3
	eor ($F7.b,X)		; 41 F7
	sbc $21.b,S		; E3 21
	adc ($F3.b,S),Y		; 73 F3
	brk $01.b		; 00 01
	sta $81.b,S		; 83 81
	cmp $FD.b,S		; C3 FD
	sta ($F7.b,X)		; 81 F7
	brk $20.b		; 00 20
	brk $D0.b		; 00 D0
	jsr $00D0.w		; 20 D0 00
	sta $F6F0.w,X		; 9D F0 F6
	ora $20.b		; 05 20
	jsr $15F0.w		; 20 F0 15
	brk $F2.b		; 00 F2
	ora ($40.b,S),Y		; 13 40
	sbc $43A300.l,X		; FF 00 A3 43
	ldy $00.b		; A4 00
	sbc $7CFC48.l		; EF 48 FC 7C
	sbc ($10.b)		; F2 10
	beq   0.b		; F0 00
	rti		; 40

	sbc $43.b,S		; E3 43
	sbc [$44.b]		; E7 44
	sbc [$00.b],Y		; F7 00
	tsx		; BA
	eor ($13.b),Y		; 51 13
	sbc $0650.w,X		; FD 50 06
	ora ($00.b,X)		; 01 00
	and $00F3.w,X		; 3D F3 00
	jsr ($FFFD.w,X)		; FC FD FF
	plx		; FA
	brk $80.b		; 00 80
	brk $41.b		; 00 41
	bra  65.b		; 80 41
	brk $EF.b		; 00 EF
	cmp ($80.b,X)		; C1 80
	cmp ($80.b,X)		; C1 80
	sbc ($0F.b,S),Y		; F3 0F
	bra -128.b		; 80 80
	cmp ($FC.b,X)		; C1 FC
	trb $00.b		; 14 00
	sbc ($10.b,S),Y		; F3 10
	lda $844000.l,X		; BF 00 40 84
	tda		; 7B
	brk $F3.b		; 00 F3
	dec $1084.w		; CE 84 10
	brk $F3.b		; 00 F3
	brk $BF.b		; 00 BF
	sbc $FDFF84.l,X		; FF 84 FF FD
	sty $F7.b		; 84 F7
	brk $81.b		; 00 81
	brk $42.b		; 00 42
	ora ($82.b,X)		; 01 82
	brk $FD.b		; 00 FD
	ora $F6.b,S		; 03 F6
	ora ($81.b),Y		; 11 81
	sta ($C3.b,X)		; 81 C3
	ora ($83.b,X)		; 01 83
	ora ($FE.b,X)		; 01 FE
	sbc [$00.b],Y		; F7 00
	sbc $0600.w,Y		; F9 00 06
	ora ($FA.b,X)		; 01 FA
	brk $83.b		; 00 83
	plx		; FA
	bmi   1.b		; 30 01
	sbc ($F3.b,S),Y		; F3 F3
	brk $F9.b		; 00 F9
	sbc $01FB01.l,X		; FF 01 FB 01
	sed		; F8
	sbc [$00.b],Y		; F7 00
	eor $216620.l		; 4F 20 66 21
	pha		; 48
	jsr ($FE44.w,X)		; FC 44 FE
	brk $FD.b		; 00 FD
	sbc $2F1FD0.l,X		; FF D0 1F 2F
	tsb $031F.w		; 0C 1F 03
	ora $03FD00.l		; 0F 00 FD 03
	sbc ($00.b),Y		; F1 00
	bit $FF.b		; 24 FF
	and $7F.b,S		; 23 7F
	bpl  63.b		; 10 3F
	xce		; FB
	brk $1F.b		; 00 1F
	bcc  32.b		; 90 20
	ora $08.b,S		; 03 08
	trb $9C08.w		; 1C 08 9C
	xba		; EB
	brk $F8.b		; 00 F8
	bne  31.b		; D0 1F
	bne  80.b		; D0 50
	jsr $00C0.w		; 20 C0 00
	brk $9E.b		; 00 9E
	sbc ($00.b),Y		; F1 00
	bcc  -8.b		; 90 F8
	bpl  -8.b		; 10 F8
	bcc  24.b		; 90 18
	sbc ($00.b)		; F2 00
	pha		; 48
	sbc $FD48FD.l,X		; FF FD 48 FD
	brk $FD.b		; 00 FD
	eor $AA.b		; 45 AA
	brk $DF.b		; 00 DF
	tax		; AA
	.db $42, $E7		; 42 E7
	brk $42.b		; 00 42
	sbc ($00.b,S),Y		; F3 00
	pha		; 48
	sbc $45DF.w,X		; FD DF 45
	sbc $00EF45.l		; EF 45 EF 00
	sbc ($00.b)		; F2 00
	sta ($FF.b)		; 92 FF
	cmp $00FF92.l,X		; DF 92 FF 00
	sbc $01F011.l,X		; FF 11 F0 01
	bpl  57.b		; 10 39
	xce		; FB
	brk $10.b		; 00 10
	sbc ($00.b,S),Y		; F3 00
	sta ($FF.b)		; 92 FF
	ora ($BB.b),Y		; 11 BB
	ora ($F3.b),Y		; 11 F3
	tyx		; BB
	brk $F2.b		; 00 F2
	brk $32.b		; 00 32
	ora $850203.l,X		; 1F 03 02 85
	brk $DF.b		; 00 DF
	adc $FE78.w,Y		; 79 78 FE
	brk $78.b		; 00 78
	sbc ($00.b,S),Y		; F3 00
	ora ($03.b,X)		; 01 03
	sta $868702.l,X		; 9F 02 87 86
	sbc $00F200.l,X		; FF 00 F2 00
	and ($1F.b)		; 32 1F
	beq  63.b		; F0 3F
	bpl  40.b		; 10 28
	brk $27.b		; 00 27
	ora [$1F.b]		; 07 1F
	bvs  32.b		; 70 20
	sbc ($00.b)		; F2 00
	dec $D0.b		; C6 D0
	and [$38.b]		; 27 38
	clc		; 18
	sbc ($09.b),Y		; F1 09
	beq   0.b		; F0 00
	and ($1F.b)		; 32 1F
	and $557F22.l,X		; 3F 22 7F 55
	brk $95.b		; 00 95
	.db $82, $E7, $00		; 82 E7 00
	.db $82, $F3, $00		; 82 F3 00
	adc $223F12.l,X		; 7F 12 3F 22
	adc [$62.b],Y		; 77 62
	sbc [$00.b],Y		; F7 00
	sbc ($00.b)		; F2 00
	sbc $113B11.l,X		; FF 11 3B 11
	tsa		; 3B
	brk $1F.b		; 00 1F
	ora $0A.b		; 05 0A
	cmp $030A00.l		; CF 00 0A 03
	ora [$B0.b]		; 07 B0
	and $00F2.w		; 2D F2 00
	ora #$1F1F.w		; 09 1F 1F
	ora $0F.b		; 05 0F
	ora $0F.b		; 05 0F
	brk $F2.b		; 00 F2
	brk $F3.b		; 00 F3
	ora $D0.b		; 05 D0
	ora $3FDF0F.l,X		; 1F 0F DF 3F
	sbc $23D000.l,X		; FF 00 D0 23
	stx $1F.b,Y		; 96 1F
	bvc  11.b		; 50 0B
	sbc ($00.b),Y		; F1 00
	inc $1F32.w,X		; FE 32 1F
	jsr ($AA44.w,X)		; FC 44 AA
	brk $A5.b		; 00 A5
	eor ($E3.b,X)		; 41 E3
	sta ($00.b,S),Y		; 93 00
	eor ($F3.b,X)		; 41 F3
	brk $30.b		; 00 30
	ora ($EE.b,S),Y		; 13 EE
	bne  14.b		; D0 0E
	sbc ($00.b)		; F2 00
	bit $7FFF.w,X		; 3C FF 7F
	tsb $3F.b		; 04 3F
	brk $0F.b		; 00 0F
	tsb $0B.b		; 04 0B
	brk $DF.b		; 00 DF
	xce		; FB
	sed		; F8
	sbc $F800.w,X		; FD 00 F8
	sbc ($00.b,S),Y		; F3 00
	tsb $0F.b		; 04 0F
	cli		; 58
	bpl   0.b		; 10 00
	ora ($20.b),Y		; 11 20
	bne  48.b		; D0 30
	sbc $1F30FF.l,X		; FF FF 30 1F
	cmp ($D0.b,X)		; C1 D0
	ora $804147.l,X		; 1F 47 41 80
	cmp ($70.b,X)		; C1 70
	jsr $00F2.w		; 20 F2 00
	cmp ($1F.b,S),Y		; D3 1F
	brk $F2.b		; 00 F2
	brk $BE.b		; 00 BE
	and ($1F.b)		; 32 1F
	dec $4A84.w		; CE 84 4A
	brk $4A.b		; 00 4A
	bcs  31.b		; B0 1F
	sty $F0.b		; 84 F0
	sbc ($00.b,S),Y		; F3 00
	sty $1F.b,X		; 94 1F
	sbc ($00.b)		; F2 00
	sbc ($11.b,S),Y		; F3 11
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	.db $62, $B0, $31		; 62 B0 31
	ora ($F5.b,X)		; 01 F5
	ora ($53.b),Y		; 11 53
	ora ($F1.b,S),Y		; 13 F1
	brk $F1.b		; 00 F1
	xce		; FB
	bmi  31.b		; 30 1F
	sta $D083.w,X		; 9D 83 D0
	and ($82.b,X)		; 21 82
	ora ($83.b,X)		; 01 83
	sbc $00.b,X		; F5 00
	sta ($1F.b)		; 92 1F
	sta $F9.b,S		; 83 F9
	brk $F2.b		; 00 F2
	brk $33.b		; 00 33
	rol $8C00.w,X		; 3E 00 8C
	tsb $0093.w		; 0C 93 00
	sbc $F6BC.w,X		; FD BC F6
	and ($03.b,S),Y		; 33 03
	ora $8F.b,S		; 03 8F
	tsb $109F.w		; 0C 9F 10
	inc $00F7.w,X		; FE F7 00
	sbc ($00.b)		; F2 00
	ora $F502.w		; 0D 02 F5
	brk $07.b		; 00 07
	sbc $020702.l		; EF 02 07 02
	sbc [$F3.b],Y		; F7 F3
	brk $F2.b		; 00 F2
	sbc $F7FB02.l,X		; FF 02 FB F7
	cop $F7.b		; 02 F7
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cpx $F2.b		; E4 F2
	ora ($F3.b,X)		; 01 F3
	tsa		; 3B
	cop $B2.b		; 02 B2
	ora ($F7.b,X)		; 01 F7
	brk $FE.b		; 00 FE
	brk $01.b		; 00 01
	sta $00EE10.l,X		; 9F 10 EE 00
	sec		; 38
	bpl  16.b		; 10 10
	brk $F3.b		; 00 F3
	brk $FE.b		; 00 FE
	sbc $FE10FF.l		; EF FF 10 FE
	bpl  -9.b		; 10 F7
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ldx $1210.w,Y		; BE 10 12
	asl $0E04.w		; 0E 04 0E
	cop $07.b		; 02 07
	bit $47.b,X		; 34 47
	ora [$FC.b]		; 07 FC
	bmi  18.b		; 30 12
	sbc [$00.b],Y		; F7 00
	cmp ($00.b,X)		; C1 00
	rol $06.b		; 26 06
	cmp #$F900.w		; C9 00 F9
	asl $26B0.w		; 0E B0 26
	sbc ($44.b,S),Y		; F3 44
	cmp ($C1.b,X)		; C1 C1
	sbc [$06.b]		; E7 06
	cmp $F704FD.l		; CF FD 04 F7
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	clc		; 18
	cpx $00.b		; E4 00
	sbc $711C.w,Y		; F9 1C 71
	ora $F3.b,X		; 15 F3
	brk $F0.b		; 00 F0
	sed		; F8
	clc		; 18
	jsr ($FA08.w,X)		; FC 08 FA
	sbc [$00.b],Y		; F7 00
	ora $5F3B10.l,X		; 1F 10 3B 5F
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	xce		; FB
	bra -64.b		; 80 C0
	sbc ($00.b,S),Y		; F3 00
	ora $7F203F.l,X		; 1F 3F 20 7F
	rti		; 40

	inc $00F7.w,X		; FE F7 00
	and [$00.b]		; 27 00
	cld		; D8
	bit $5B.b		; 24 5B
	brk $7E.b		; 00 7E
	sbc $247E24.l		; EF 24 7E 24
	adc $2700F3.l,X		; 7F F3 00 27
	sbc $7FFB24.l,X		; FF 24 FB 7F
	bit $F7.b		; 24 F7
	brk $EF.b		; 00 EF
	brk $10.b		; 00 10
	ora ($EE.b,X)		; 01 EE
	plx		; FA
	sbc ($35.b)		; F2 35
	cmp $F3.b,S		; C3 F3
	brk $EF.b		; 00 EF
	sbc $01EF01.l,X		; FF 01 EF 01
	inc $00F7.w,X		; FE F7 00
	inx		; E8
	brk $14.b		; 00 14
	tsb $EA.b		; 04 EA
	brk $8E.b		; 00 8E
	sbc $028702.l		; EF 02 87 02
	sta [$F3.b]		; 87 F3
	brk $E8.b		; 00 E8
	jsr ($FB04.w,X)		; FC 04 FB
	inc $F704.w		; EE 04 F7
	brk $20.b		; 00 20
	brk $50.b		; 00 50
	jsr $3E50.w		; 20 50 3E
	sed		; F8
	ora [$20.b]		; 07 20
	jsr $2070.w		; 20 70 20
	bvs  -8.b		; 70 F8
	ora [$4F.b]		; 07 4F
	cli		; 58
	ldy #$FF.b		; A0 FF
	eor [$FF.b],Y		; 57 FF
	eor [$FF.b],Y		; 57 FF
	eor [$FF.b],Y		; 57 FF
	eor [$F1.b],Y		; 57 F1
	cli		; 58
	tsb $0010.w		; 0C 10 00
	ora ($CF.b)		; 12 CF
	tsb $0012.w		; 0C 12 00
	asl $4FF4.w,X		; 1E F4 4F
	beq   0.b		; F0 00
	tsb $EC1E.w		; 0C 1E EC
	ora ($00.b),Y		; 11 00
	sbc ($50.b),Y		; F1 50
	jsr $F2F1.w		; 20 F1 F2
	and ($A8.b,S),Y		; 33 A8
	brk $97.b		; 00 97
	xba		; EB
	ora [$8F.b]		; 07 8F
	sbc ($33.b)		; F2 33
	sbc ($F2.b),Y		; F1 F2
	and ($B8.b,S),Y		; 33 B8
	php		; 08
	sta $F200DD.l,X		; 9F DD 00 F2
	brk $F3.b		; 00 F3
	sbc $2F7012.l,X		; FF 12 70 2F
	ora ($2D.b)		; 12 2D
	and $E2ED00.l,X		; 3F 00 ED E2
	sbc [$00.b],Y		; F7 00
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	brk $32.b		; 00 32
	bit $5B.b,X		; 34 5B
	sbc $00F200.l,X		; FF 00 F2 00
	inc $30FF.w,X		; FE FF 30
	ora $1FD007.l,X		; 1F 07 D0 1F
	and $05.b		; 25 05
	bcs  27.b		; B0 1B
	cop $F3.b		; 02 F3
	brk $D3.b		; 00 D3
	ora $00F200.l,X		; 1F 00 F2 00
	and ($1F.b)		; 32 1F
	ora $38.b		; 05 38
	beq  57.b		; F0 39
	plp		; 28
	bcs  31.b		; B0 1F
	beq  61.b		; F0 3D
	eor ($1F.b,S),Y		; 53 1F
	eor ($01.b,S),Y		; 53 01
	sbc ($3D.b,S),Y		; F3 3D
	ldx $54.b		; A6 54
	plp		; 28
	ora [$07.b]		; 07 07
	ora ($37.b),Y		; 11 37
	sed		; F8
	brk $00.b		; 00 00
	sbc ($00.b)		; F2 00
	php		; 08
	adc [$9C.b],Y		; 77 9C
	dey		; 88
	jmp.w [$35F2]		; DC F2 35
	lda #$81.b		; A9 81
	cmp [$70.b]		; C7 70
	lsr $F29C.w		; 4E 9C F2
	brk $F1.b		; 00 F1
	and $46.b,X		; 35 46
	sbc $00F200.l		; EF 00 F2 00
	and ($1F.b)		; 32 1F
	ora $14083F.l		; 0F 3F 08 14
	brk $E4.b		; 00 E4
	cpx #$F8.b		; E0 F8
	bpl  71.b		; 10 47
	sbc ($00.b)		; F2 00
	adc $080F04.l,X		; 7F 04 0F 08
	trb $FC18.w		; 1C 18 FC
	brk $F2.b		; 00 F2
	brk $7E.b		; 00 7E
	and ($1F.b)		; 32 1F
	cpy #$40.b		; C0 40
	ldy #$00.b		; A0 00
	eor $4B111F.l,X		; 5F 1F 11 4B
	inc $00F2.w,X		; FE F2 00
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$20.b		; E0 20
	adc $F2F200.l,X		; 7F 00 F2 F2
	brk $27.b		; 00 27
	bvs 108.b		; 70 6C
	bcc  31.b		; 90 1F
	phy		; 5A
	brk $5B.b		; 00 5B
	and [$61.b]		; 27 61
	sbc $F22070.l,X		; FF 70 20 F2
	brk $94.b		; 00 94
	ora $C100F2.l,X		; 1F F2 00 C1
	sbc $30.b,S		; E3 30
	ora $35F13E.l,X		; 1F 3E F1 35
.ACCU 8
	sep #$E1		; E2 E1
	sbc ($00.b,S),Y		; F3 00
	sbc ($F3.b,X)		; E1 F3
	brk $92.b		; 00 92
	eor $83.b,X		; 55 83
	sbc $00.b,S		; E3 00
	sbc ($00.b)		; F2 00
	sta ($34.b,S),Y		; 93 34
	sbc [$35.b],Y		; F7 35
	lda ($35.b,S),Y		; B3 35
	sed		; F8
	and $80.b,X		; 35 80
	bra  24.b		; 80 18
	brk $B3.b		; 00 B3
	lsr $00FB.w,X		; 5E FB 00
	ora $57FF78.l		; 0F 78 FF 57
	sbc $57FF57.l,X		; FF 57 FF 57
	bne -29.b		; D0 E3
	cpy #$E1.b		; C0 E1
	bpl  67.b		; 10 43
	sbc $F257.w,Y		; F9 57 F2
	brk $21.b		; 00 21
	adc ($21.b,S),Y		; 73 21
	adc $7F007F.l,X		; 7F 7F 00 7F
	rti		; 40

	lda $F0A100.l,X		; BF 00 A1 F0
	phd		; 0B
	sbc $F3F3.w,X		; FD F3 F3
	brk $3F.b		; 00 3F
	adc $40FF40.l,X		; 7F 40 FF 40
	sbc ($04.b,X)		; E1 04
	beq  11.b		; F0 0B
	cmp ($60.b,S),Y		; D3 60
	ora $F51790.l		; 0F 90 17 F5
	tsa		; 3B
	sbc ($37.b),Y		; F1 37
	beq  20.b		; F0 14
	inc $3B.b,X		; F6 3B
	inc $38F1.w,X		; FE F1 38
	sta $00DF0E.l,X		; 9F 0E DF 00
	phk		; 4B
	sty $6A.b		; 84 6A
	cmp $44EE00.l		; CF 00 EE 44
	inc $60B0.w		; EE B0 60
	beq   0.b		; F0 00
	brk $DF.b		; 00 DF
	eor [$84.b]		; 47 84
	cmp $00D184.l		; CF 84 D1 00
	sbc ($00.b,S),Y		; F3 00
	sta ($1B.b),Y		; 91 1B
	ora [$10.b],Y		; 17 10
	cli		; 58
	and $38.b,X		; 35 38
	bvc  45.b		; 50 2D
	adc ($93.b,S),Y		; 73 93
	tas		; 1B
	php		; 08
	ora $F43EB1.l,X		; 1F B1 3E F4
	brk $FF.b		; 00 FF
	lda ($A1.b,S),Y		; B3 A1
	sbc ($00.b,S),Y		; F3 00
	sta ($20.b,S),Y		; 93 20
	eor ($00.b),Y		; 51 00
	sbc $71.b,X		; F5 71
	bvs 118.b		; 70 76
	sbc $00F1.w,Y		; F9 F1 00
	brk $F3.b		; 00 F3
	rts		; 60

	sbc ($FB.b,S),Y		; F3 FB
	jsr $F671.w		; 20 71 F6
	brk $FF.b		; 00 FF
	sbc $7E00FF.l,X		; FF FF 00 7E
	stz $77F0.w,X		; 9E F0 77
	cmp $F8FC88.l,X		; DF 88 FC F8
	sbc ($84.b),Y		; F1 84
	beq  96.b		; F0 60
	sta ($EF.b,X)		; 81 EF
	sbc $80C381.l,X		; FF 81 C3 80
	sbc $00.b,X		; F5 00
	ldx $BE1C.w,Y		; BE 1C BE
	lda $08B600.l,X		; BF 00 B6 08
	sty $00.b,X		; 94 00
	stz $3FF4.w		; 9C F4 3F
	ldx $000F.w,Y		; BE 0F 00
	ldx $BE08.w,Y		; BE 08 BE
	bcs -122.b		; B0 86
	sbc $00.b,X		; F5 00
	and $8D4B8C.l		; 2F 8C 4B 8D
	sta $F81038.l,X		; 9F 38 10 F8
	brk $88.b		; 00 88
	beq -119.b		; F0 89
	sbc $47.b,X		; F5 47
	sec		; 38
	sbc [$00.b]		; E7 00
	sed		; F8
	bvs  16.b		; 70 10
	ror A		; 6A
	inc $47.b,X		; F6 47
	asl $3F1E.w,X		; 1E 1E 3F
	sbc $405E00.l,X		; FF 00 5E 40
	lda ($00.b,X)		; A1 00
	sbc ($40.b,X)		; E1 40
	sbc ($FD.b,X)		; E1 FD
	and ($F1.b,X)		; 21 F1
	sta [$1E.b]		; 87 1E
	brk $3F.b		; 00 3F
	and ($7F.b,X)		; 21 7F
	rti		; 40

	sbc ($E1.b,S),Y		; F3 E1
	rti		; 40

	sbc $00.b,X		; F5 00
	bne  72.b		; D0 48
	brk $8B.b		; 00 8B
	dey		; 88
	mvn $00,$BF		; 54 BF 00
	jmp.w [$DC88]		; DC 88 DC
	sty $DF.b		; 84 DF
	cmp ($52.b)		; D2 52
	ora [$9F.b]		; 07 9F
	tsb $8F.b		; 04 8F
	dey		; 88
	jmp.w [$F588]		; DC 88 F5
	brk $F3.b		; 00 F3
	sta $F1C628.l		; 8F 28 C6 F1
	eor $F830.w		; 4D 30 F8
	inc $8F.b,X		; F6 8F
	cmp ($4E.b)		; D2 4E
	sbc ($00.b)		; F2 00
	asl $971C.w,X		; 1E 1C 97
	rol $3210.w,X		; 3E 10 32
	bpl  38.b		; 10 26
	ror $1311.w,X		; 7E 11 13
	sbc ($05.b)		; F2 05
	rol $0C03.w,X		; 3E 03 0C
	rol $45D1.w,X		; 3E D1 45
	pea $2F00.w		; F4 00 2F
	tya		; 98
	eor $9A6F99.l		; 4F 99 6F 9A
	dey		; 88
	txy		; 9B
	adc $3F001F.l,X		; 7F 1F 00 3F
	ora $3D183F.l,X		; 1F 3F 18 3D
	bpl   0.b		; 10 00
	xce		; FB
	and $9CFF18.l,X		; 3F 18 FF 9C
	brk $00.b		; 00 00
	stx $00.b		; 86 00
	cmp $EF86C7.l		; CF C7 86 EF
	dec $13.b		; C6 13
	brk $FD.b		; 00 FD
	stz $4B32.w,X		; 9E 32 4B
	sta [$82.b]		; 87 82
	sta $4D0045.l,X		; 9F 45 00 4D
	cmp [$EF.b]		; C7 EF
	bvs  78.b		; 70 4E
	sbc ($00.b)		; F2 00
	cop $BF.b		; 02 BF
	sta [$82.b]		; 87 82
	cmp [$82.b]		; C7 82
	cmp $00F200.l		; CF 00 F2 00
	bit $FF.b		; 24 FF
	inc $7E24.w,X		; FE 24 7E
	brk $7E.b		; 00 7E
	trb $2A.b		; 14 2A
	brk $DF.b		; 00 DF
	and ($0C.b)		; 32 0C
	stz $9E00.w,X		; 9E 00 9E
	sbc ($00.b,S),Y		; F3 00
	trb $7E.b		; 14 7E
	and $14.b,X		; 35 14
	bpl  12.b		; 10 0C
	brk $F2.b		; 00 F2
	brk $21.b		; 00 21
	adc ($30.b,S),Y		; 73 30
	ora $B13DF1.l,X		; 1F F1 3D B1
	ora [$F3.b],Y		; 17 F3
	tsa		; 3B
	sbc ($00.b),Y		; F1 00
	adc ($5E.b),Y		; 71 5E
	php		; 08
	ora $F03BF3.l,X		; 1F F3 3B F0
	cmp $F920F9.l,X		; DF F9 20 F9
	brk $71.b		; 00 71
	bne  31.b		; D0 1F
	sta ($A1.b,S),Y		; 93 A1
	jsr ($27F2.w,X)		; FC F2 27
	sbc ($00.b),Y		; F1 00
	jsr $2071.w		; 20 71 20
	adc ($60.b),Y		; 71 60
	sbc ($7E.b,S),Y		; F3 7E
	sbc ($27.b,S),Y		; F3 27
	dey		; 88
	jsr ($DC80.w,X)		; FC 80 DC
	brk $C3.b		; 00 C3
	bne -105.b		; D0 97
	eor $7E.b,X		; 55 7E
	bvc  32.b		; 50 20
	sbc $8000F3.l,X		; FF F3 00 80
	bcs -105.b		; B0 97
	sta ($F1.b,X)		; 81 F1
	adc $74.b,X		; 75 74
	bne -96.b		; D0 A0
	and ($5F.b)		; 32 5F
	stz $1FD0.w		; 9C D0 1F
	lda [$1F.b],Y		; B7 1F
	lda $E89070.l,X		; BF 70 90 E8
	sbc ($00.b)		; F2 00
	lda ($1F.b)		; B2 1F
	cmp ($00.b),Y		; D1 00
	lda $70ABD2.l,X		; BF D2 AB 70
	brk $70.b		; 00 70
	asl $D0.b		; 06 D0
	eor $D0.b,X		; 55 D0
	cpx #$70.b		; E0 70
	bra -13.b		; 80 F3
	brk $D1.b		; 00 D1
	eor $51.b,X		; 55 51
	sta ($F1.b,X)		; 81 F1
	brk $0E.b		; 00 0E
	inc $47.b,X		; F6 47
	inc $FE7C.w		; EE 7C FE
	bpl -125.b		; 10 83
	sbc [$47.b],Y		; F7 47
	cmp ($00.b),Y		; D1 00
	bne  44.b		; D0 2C
	sbc $711E.w,X		; FD 1E 71
	sty $6161.w		; 8C 61 61
	sta ($00.b)		; 92 00
	jmp $370C.w		; 4C 0C 37
	and $F60E00.l,X		; 3F 00 0E F6
	brk $F3.b		; 00 F3
	and ($F1.b,S),Y		; 33 F1
	eor ($F0.b,X)		; 41 F0
	brk $FF.b		; 00 FF
	sta $C7.b,S		; 83 C7
	bra -61.b		; 80 C3
	brk $CC.b		; 00 CC
	sty $CF52.w		; 8C 52 CF
	brk $89.b		; 00 89
	ora ($07.b,X)		; 01 07
	sbc ($75.b),Y		; F1 75
	sbc ($00.b),Y		; F1 00
	bra -52.b		; 80 CC
	sbc [$8C.b]		; E7 8C
	dec $D106.w,X		; DE 06 D1
	eor ($F0.b)		; 52 F0
	ror $D0.b,X		; 76 D0
	sbc $FF10.w,Y		; F9 10 FF
	sbc $3A01.w,Y		; F9 01 3A
	bmi  75.b		; 30 4B
	brk $90.b		; 00 90
	bra 124.b		; 80 7C
	sbc ($8F.b)		; F2 8F
	sbc ($00.b),Y		; F1 00
	ora ($3B.b),Y		; 11 3B
	bmi 123.b		; 30 7B
	rts		; 60

	pea $FC8F.w		; F4 8F FC
	bpl -101.b		; 10 9B
	cpx #$2D.b		; E0 2D
	brk $FB.b		; 00 FB
	brk $0A.b		; 00 0A
	asl $F81F.w		; 0E 1F F8
	sbc ($47.b),Y		; F1 47
	bmi -100.b		; 30 9C
	beq  46.b		; F0 2E
	tsb $FF.b		; 04 FF
	tsb $0E.b		; 04 0E
	brk $80.b		; 00 80
	sbc ($00.b)		; F2 00
	asl $42.b,X		; 16 42
	sta [$B8.b]		; 87 B8
	lda $BA4F41.l,X		; BF 41 4F BA
	ror $BB.b		; 66 BB
	sta ($1F.b),Y		; 91 1F
	bit $101E.w,X		; 3C 1E 10
	brk $3F.b		; 00 3F
	clc		; 18
	and $04E31F.l,X		; 3F 1F E3 04
	tas		; 1B
	lda $1F91.w,X		; BD 91 1F
	txy		; 9B
	sbc $001166.l,X		; FF 66 11 00
	sbc $1FCEC6.l		; EF C6 CE 1F
	cpy $BF.b		; C4 BF
	ora [$FF.b]		; 07 FF
	brk $1F.b		; 00 1F
	ora [$3F.b]		; 07 3F
	trb $307C.w		; 1C 7C 30
	beq 103.b		; F0 67
	rts		; 60

	sbc ($60.b),Y		; F1 60
	sbc $75E1C0.l,X		; FF C0 E1 75
	sed		; F8
	beq -125.b		; F0 83
	lda $28.b,X		; B5 28
	sbc $B5.b,S		; E3 B5
	sbc $07B127.l,X		; FF 27 B1 07
	ora ($00.b,X)		; 01 00
	tay		; A8
	ora [$F3.b]		; 07 F3
	lda $C54C.w,Y		; B9 4C C5
	sbc $F000E0.l,X		; FF E0 00 F0
	cpx #$F1.b		; E0 F1
	rts		; 60

	sbc ($C0.b,X)		; E1 C0
	sbc [$C1.b]		; E7 C1
	bra -125.b		; 80 83
	ora $87.b,X		; 15 87
	ror A		; 6A
	cmp [$60.b]		; C7 60
	brk $F1.b		; 00 F1
	and [$60.b],Y		; 37 60
	sbc $11F0.w,Y		; F9 F0 11
	brk $FD.b		; 00 FD
	tya		; 98
	sbc $03F3C8.l,X		; FF C8 F3 03
	cmp $F0.b,S		; C3 F0
	cpx #$13.b		; E0 13
	cop $FF.b		; 02 FF
	dex		; CA
	ora ($20.b,X)		; 01 20
	brk $3D.b		; 00 3D
	bvs  -8.b		; 70 F8
	sta ($F0.b,X)		; 81 F0
	ora ($00.b),Y		; 11 00
	sbc $31F5CC.l,X		; FF CC F5 31
	eor ($12.b,S),Y		; 53 12
	sbc $1230CE.l,X		; FF CE 30 12
	brk $B7.b		; 00 B7
	sbc $22DFCF.l,X		; FF CF DF 22
	adc ($9E.b),Y		; 71 9E
	tsb $D0FF.w		; 0C FF D0
	brk $7E.b		; 00 7E
	rts		; 60

	txy		; 9B
	jsr ($FEF8.w,X)		; FC F8 FE
	tsb $060F.w		; 0C 0F 06
	ora ($00.b),Y		; 11 00
	inc $D2FF.w,X		; FE FF D2
	brk $00.b		; 00 00
	adc $6FFF00.l		; 6F 00 FF 6F
	sbc $F361E3.l,X		; FF E3 61 F3
	ora ($00.b)		; 12 00
	sbc $7430D4.l,X		; FF D4 30 74
	brk $FF.b		; 00 FF
	sbc ($C7.b,S),Y		; F3 C7
	sbc [$83.b],Y		; F7 83
	cmp [$12.b]		; C7 12
	brk $FF.b		; 00 FF
	dec $E1.b,X		; D6 E1
	wai		; CB
	sta $BFFF07.l,X		; 9F 07 FF BF
	trb $18BC.w		; 1C BC 18
	sed		; F8
	bmi  -8.b		; 30 F8
	bmi  -6.b		; 30 FA
	sbc $6000D8.l,X		; FF D8 00 60
	adc [$F3.b]		; 67 F3
	sbc ($FB.b,X)		; E1 FB
	adc ($7B.b),Y		; 71 7B
	sta $193F31.l,X		; 9F 31 3F 19
	and $DAFF19.l,X		; 3F 19 FF DA
	ora ($D7.b,X)		; 01 D7
	sbc ($7F.b,X)		; E1 7F
	cpy #$F1.b		; C0 F1
	cpx #$F1.b		; E0 F1
	cpx #$F9.b		; E0 F9
	bcs  -1.b		; B0 FF
	ora ($9E.b,S),Y		; 13 9E
	sbc ($DD.b),Y		; F1 DD
	cpy $FE00.w		; CC 00 FE
	cpy $0015.w		; CC 15 00
	ldx $6109.w,Y		; BE 09 61
	sbc $C0F1.w,X		; FD F1 C0
	cld		; D8
	sei		; 78
	bmi  63.b		; 30 3F
	clc		; 18
	ora $C3BC0F.l,X		; 1F 0F BC C3
	sta ($BC.b,S),Y		; 93 BC
	ora $30F8F0.l		; 0F F0 F8 30
	sei		; 78
	bpl   0.b		; 10 00
	sed		; F8
	sbc [$30.b]		; E7 30
	beq -32.b		; F0 E0
	cpx #$75.b		; E0 75
	lda $0F0323.l,X		; BF 23 03 0F
	asl $FF.b		; 06 FF
	asl $3C0C.w,X		; 1E 0C 3C
	clc		; 18
	adc $3F7F30.l,X		; 7F 30 7F 3F
	cpx $C3.b		; E4 C3
	cmp $1B.b,X		; D5 1B
	sbc $83.b		; E5 83
	bmi  33.b		; 30 21
	and ($02.b),Y		; 31 02
	sbc $FBFE06.l		; EF 06 FE FB
	cpx $CFEC.w		; EC EC CF
	inc $00.b		; E6 00
	sbc $FDF8.w,X		; FD F8 FD
	clc		; 18
	and [$9F.b],Y		; 37 9F
	tsb $101F.w		; 0C 1F 10
	brk $0F.b		; 00 0F
	asl $CF.b		; 06 CF
	ora $F0.b,X		; 15 F0
	lda ($9D.b),Y		; B1 9D
	cmp $0012.w,Y		; D9 12 00
	cmp $FFCFFF.l		; CF FF CF FF
	pld		; 2B
	lda ($19.b)		; B2 19
	bcs -62.b		; B0 C2
	ora ($00.b)		; 12 00
	bmi  81.b		; 30 51
	asl A		; 0A
	cmp $31FF13.l		; CF 13 FF 31
	sbc $DEEE.w,X		; FD EE DE
	sty $9E7D.w		; 8C 7D 9E
.INDEX 16
	rep #$90		; C2 90
	cmp $CFFF0C.l,X		; DF 0C FF CF
	cmp $3DF0CF.l		; CF CF F0 3D
	brk $53.b		; 00 53
	ora $FC0C1E.l,X		; 1F 1E 0C FC
	clc		; 18
	and $30.b,X		; 35 30
	sbc $3C13.w,X		; FD 13 3C
	ora [$00.b],Y		; 17 00
	cmp $00001F.l		; CF 1F 00 00
	cmp [$83.b]		; C7 83
	ora [$00.b],Y		; 17 00
	cmp $B0FA1F.l		; CF 1F FA B0
	and $30.b		; 25 30
	eor ($1F.b),Y		; 51 1F
	ldy $BF18.w,X		; BC 18 BF
	trb $E99F.w		; 1C 9F E9
	ora [$C3.b]		; 07 C3
	lda $193DFC.l		; AF FC 3D 19
	eor ($1F.b),Y		; 51 1F
	tda		; 7B
	and ($FB.b),Y		; 31 FB
	sbc [$71.b]		; E7 71
	sbc ($C1.b,S),Y		; F3 C1
	cpx #$EE7D.w		; E0 7D EE
	plx		; FA
	cmp $37DF8C.l,X		; DF 8C DF 37
	sty $86CF.w		; 8C CF 86
	lda ($25.b),Y		; B1 25
	cmp $81.b,S		; C3 81
	cpx #$EE91.w		; E0 91 EE
	jsr ($959E.w,X)		; FC 9E 95
	ora $FEC0EC.l,X		; 1F EC C0 FE
	cpy $1FCE.w		; CC CE 1F
	inc $37.b,X		; F6 37
	beq -31.b		; F0 E1
	rts		; 60

	ora $00.b,X		; 15 00
	sbc $E21FE0.l,X		; FF E0 1F E2
	tsa		; 3B
	sbc $7E.b,S		; E3 7E
	brk $FF.b		; 00 FF
	sbc $5AFF7E.l,X		; FF 7E FF 5A
	ror $00.b		; 66 00
	bit $00.b		; 24 00
	bit $10E4.w,X		; 3C E4 10
	brk $F5.b		; 00 F5
	cpx $18.b		; E4 18
	trb $00.b		; 14 00
	sbc ($76.b,X)		; E1 76
	jmp ($FE38.w,X)		; 7C 38 FE
	eor $009A64.l		; 4F 64 9A 00
	txs		; 9A
	ora $57.b,S		; 03 57
	tsb $E7.b		; 04 E7
	stz $14.b		; 64 14
	brk $E6.b		; 00 E6
	sta ($00.b),Y		; 91 00
	inc $FF64.w,X		; FE 64 FF
	ora ($F7.b,X)		; 01 F7
	ora ($78.b,X)		; 01 78
	brk $FC.b		; 00 FC
	lda #$78.b		; A9 78
	sbc $03F303.l,X		; FF 03 F3 03
	jmp ($03F8.w,X)		; 7C F8 03
	txa		; 8A
	jsr ($7405.w,X)		; FC 05 74
	plx		; FA
	bpl   0.b		; 10 00
	jmp ($0892.w)		; 6C 92 08
	bit $7C18.w,X		; 3C 18 7C
	sec		; 38
	.db $42, $5A		; 42 5A
	jsr ($3C07.w,X)		; FC 07 3C
	xce		; FB
	ora [$74.b]		; 07 74
	.db $82, $FC, $09		; 82 FC 09
	jmp ($09F6.w,X)		; 7C F6 09
	sbc $FE007C.l,X		; FF 7C 00 FE
	jmp ($60FC.w,X)		; 7C FC 60
	bcc   0.b		; 90 00
	ora ($90.b,X)		; 01 90
	adc ($40.b),Y		; 71 40
	sec		; 38
	phk		; 4B
	ora ($00.b),Y		; 11 00
	brk $E9.b		; 00 E9
	sbc $07FC07.l,X		; FF 07 FC 07
	sbc $FB6011.l,X		; FF 11 60 FB
	ora ($FF.b),Y		; 11 FF
	ora [$FB.b]		; 07 FB
	ora [$FF.b]		; 07 FF
	ora ($FF.b,S),Y		; 13 FF
	ora ($FE.b),Y		; 11 FE
	jmp ($15FF.w,X)		; 7C FF 15
	tsb $FF.b		; 04 FF
	phd		; 0B
	sbc $96780B.l,X		; FF 0B 78 96
	ora $CF2031.l,X		; 1F 31 20 CF
	eor $FDC9DF.l,X		; 5F DF C9 FD
	dex		; CA
	ora ($31.b)		; 12 31
	ora $1FB124.l,X		; 1F 24 B1 1F
	bvc 104.b		; 50 68
	clc		; 18
	ply		; 7A
	ora $6027F4.l,X		; 1F F4 27 60
	plx		; FA
	asl $1FB2.w,X		; 1E B2 1F
	stz $7C.b		; 64 7C
	sec		; 38
	sec		; 38
	ply		; 7A
	ora $FF01FF.l,X		; 1F FF 01 FF
	ora ($B5.b,X)		; 01 B5
	brk $10.b		; 00 10
	ora [$FC.b],Y		; 17 FC
	pea $FE03.w		; F4 03 FE
	stz $D3.b		; 64 D3
	jsr $2478.w		; 20 78 24
	sbc $01F803.l,X		; FF 03 F8 01
	jmp ($05FF.w)		; 6C FF 05
	plx		; FA
	ora $7C.b,S		; 03 7C
	sty $1D.b,X		; 94 1D
	sbc $F3E409.l,X		; FF 09 E4 F3
	ora $FD.b		; 05 FD
	ora #$F8.b		; 09 F8
	cpy #$B1E5.w		; C0 E5 B1
	ora $FE60FC.l,X		; 1F FC 60 FE
	ora $7C.b,S		; 03 7C
	jmp ($1F76.w,X)		; 7C 76 1F
	adc [$72.b]		; 67 72
	sbc $0DFB07.l,X		; FF 07 FB 0D
	sbc $11FF11.l,X		; FF 11 FF 11
	bvs  -1.b		; 70 FF
	ora [$FF.b]		; 07 FF
	ora ($FF.b),Y		; 11 FF
	ora ($FC.b,S),Y		; 13 FC
	ora $7C.b,X		; 15 7C
	jsr ($D378.w,X)		; FC 78 D3
	plp		; 28
	bit $FF.b		; 24 FF
	phd		; 0B
	sbc $DB600B.l,X		; FF 0B 60 DB
	adc $35F6.w		; 6D F6 35
	jsr ($39FC.w,X)		; FC FC 39
	sbc ($2D.b),Y		; F1 2D
	rts		; 60

	sbc $37FB37.l,X		; FF 37 FB 37
	sbc $35FB35.l,X		; FF 35 FB 35
	sbc ($3F.b)		; F2 3F
	jmp ($F08A.w,X)		; 7C 8A F0
	and $F8F4C1.l,X		; 3F C1 F4 F8
	sta $F1.b,S		; 83 F1
	and $FF1473.l,X		; 3F 73 14 FF
	eor $FB.b,S		; 43 FB
	eor $78.b,S		; 43 78
	brk $FF.b		; 00 FF
	sbc $7B78.w,X		; FD 78 7B
	and ($4A.b),Y		; 31 4A
	brk $4A.b		; 00 4A
	brk $C9.b		; 00 C9
	tda		; 7B
	bpl   0.b		; 10 00
	sbc $F2.b,X		; F5 F2
	and ($14.b),Y		; 31 14
	brk $D4.b		; 00 D4
	adc ($F1.b),Y		; 71 F1
	rol A		; 2A
	lda $006A00.l,X		; BF 00 6A 00
	cmp ($00.b,S),Y		; D3 00
	cmp $E6.b,S		; C3 E6
	pea $F291.w		; F4 91 F2
	bpl   0.b		; 10 00
	sta ($01.b,X)		; 81 01
	sbc $D3.b,S		; E3 D3
	phb		; 8B
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	pea $8871.w		; F4 71 88
	jmp $E096.w		; 4C 96 E0
	sbc $49.b,X		; F5 49
	jmp ($00AA.w)		; 6C AA 00
	sty $2A.b,X		; 94 2A
	brk $E3.b		; 00 E3
	jmp ($F8E6.w,X)		; 7C E6 F8
	mvp $89,$50		; 44 50 89
	bvs  32.b		; 70 20
	nop		; EA
	sbc $FFF84D.l,X		; FF 4D F8 FF
	eor $4DFF.w		; 4D FF 4D
	xce		; FB
	phk		; 4B
	sbc $FF78.w,X		; FD 78 FF
	stz $9B.b		; 64 9B
	jsr ($4FFF.w,X)		; FC FF 4F
	pea $C84B.w		; F4 4B C8
	brk $FC.b		; 00 FC
	iny		; C8
	jsr ($57C8.w,X)		; FC C8 57
	trb $00.b		; 14 00
	sty $D0.b		; 84 D0
	eor $F8.b		; 45 F8
	inc $FF.b,X		; F6 FF
	inx		; E8
	sta ($2E.b)		; 92 2E
	ora ($70.b,X)		; 01 70
	cmp ($D1.b,X)		; C1 D1
	and $014F00.l		; 2F 00 4F 01
	adc $038F02.l		; 6F 02 8F 03
	lda $D79004.l		; AF 04 90 D7
	bra -11.b		; 80 F5
	and $4033.w		; 2D 33 40
	sbc $37FF2D.l,X		; FF 2D FF 37
	sbc $35FF37.l,X		; FF 37 FF 35
	sbc [$3D.b],Y		; F7 3D
	pea $F214.w		; F4 14 F2
	and $7C59B0.l,X		; 3F B0 59 7C
	sbc ($3F.b,S),Y		; F3 3F
	rts		; 60

	sbc $43FF31.l,X		; FF 31 FF 43
	sed		; F8
	eor $8C.b,S		; 43 8C
	and ($1F.b),Y		; 31 1F
	lda ($1F.b)		; B2 1F
	and ($FD.b),Y		; 31 FD
	sbc ($2D.b)		; F2 2D
	adc [$1F.b],Y		; 77 1F
	cmp ($F3.b,S),Y		; D3 F3
	cmp ($FE.b,S),Y		; D3 FE
	ldy #$6AB5.w		; A0 B5 6A
	brk $2A.b		; 00 2A
	brk $FB.b		; 00 FB
	sbc ($F3.b),Y		; F1 F3
	cmp #$E1.b		; C9 E1
	cpx #$30F9.w		; E0 F9 30
	ora $1FB291.l,X		; 1F 91 B2 1F
	lda [$A7.b],Y		; B7 A7
	cpy #$E600.w		; C0 00 E6
	lda ($1F.b),Y		; B1 1F
	beq -128.b		; F0 80
	and ($AC.b,S),Y		; 33 AC
	lda $3EF7.w		; AD F7 3E
	brk $5D.b		; 00 5D
	adc $00B200.l,X		; 7F 00 B2 00
	sta ($00.b)		; 92 00
	inc $F36C.w		; EE 6C F3
	eor #$17.b		; 49 17
	trb $0C00.w		; 1C 00 0C
	bcs  31.b		; B0 1F
	mvp $4D,$FF		; 44 FF 4D
	sbc $4DFF4D.l,X		; FF 4D FF 4D
	bvc  -1.b		; 50 FF
	eor $4BFF.w		; 4D FF 4B
	jsr ($F14B.w,X)		; FC 4B F1
	jmp $1048.w		; 4C 48 10
	brk $78.b		; 00 78
	pea $018B.w		; F4 8B 01
	bmi  20.b		; 30 14
	brk $F6.b		; 00 F6
	sta $2F200F.l		; 8F 0F 20 2F
	and ($4F.b,X)		; 21 4F
	jsl $8F236F.l		; 22 6F 23 8F
	bit $80.b		; 24 80
	ldx #$FF25.w		; A2 25 FF
	adc $77FF.w,Y		; 79 FF 77
	sbc $41F941.l,X		; FF 41 F9 41
	sbc $3BFD7F.l,X		; FF 7F FD 3B
	jsr ($78FF.w,X)		; FC FF 78
	adc $4930.w,Y		; 79 30 49
	brk $49.b		; 00 49
	brk $79.b		; 00 79
	sed		; F8
	bpl   0.b		; 10 00
	sbc $FA.b,X		; F5 FA
	adc [$0E.b],Y		; 77 0E
	bvs   0.b		; 70 00
	sbc $FD70.w,Y		; F9 70 FD
	and $0035C8.l,X		; 3F C8 35 00
	and $00.b,X		; 35 00
	sbc $0010.w,X		; FD 10 00
	sbc $FC.b,X		; F5 FC
	eor ($C8.b),Y		; 51 C8
	trb $00.b		; 14 00
	sbc ($31.b,S),Y		; F3 31
	sbc ($01.b),Y		; F1 01
	ora $F0.b,X		; 15 F0
	ora ($FC.b,X)		; 01 FC
	sed		; F8
	ora ($F5.b,X)		; 01 F5
	inx		; E8
	bmi  50.b		; 30 32
	cld		; D8
	pei ($BF.b)		; D4 BF
	jsr ($54D8.w,X)		; FC D8 54
	brk $09.b		; 00 09
	plp		; 28
	adc ($CA.b),Y		; 71 CA
	inc $FF.b,X		; F6 FF
	dey		; 88
	adc ($F8.b,X)		; 61 F8
	sbc $34EF33.l,X		; FF 33 EF 34
	ora $2F0036.l		; 0F 36 00 2F
	and [$4F.b],Y		; 37 4F
	sec		; 38
	adc $3A8F39.l		; 6F 39 8F 3A
	lda $3CCF3B.l		; AF 3B CF 3C
	sbc $3F0F3D.l		; EF 3D 0F 3F
	brk $2F.b		; 00 2F
	rti		; 40

	eor $426F41.l		; 4F 41 6F 42
	sta $44AF43.l		; 8F 43 AF 44
	bcc -24.b		; 90 E8
	sbc $6FFF79.l,X		; FF 79 FF 6F
	rti		; 40

	sbc $E26741.l,X		; FF 41 67 E2
	sbc $7FFB7F.l,X		; FF 7F FB 7F
	and ($1F.b),Y		; 31 1F
	lda ($1F.b)		; B2 1F
	bmi -13.b		; 30 F3
	adc #$78.b		; 69 78
	sbc $312D.w,X		; FD 2D 31
	ora $C81FB2.l,X		; 1F B2 1F C8
	sbc $7070.w,Y		; F9 70 70
	ply		; 7A
	ora $7FF7AC.l,X		; 1F AC F7 7F
	sbc ($01.b,S),Y		; F3 01
	jsr ($D1C8.w,X)		; FC C8 D1
	jsr $FCD8.w		; 20 D8 FC
	ora ($7C.b,X)		; 01 7C
	xce		; FB
	brk $BA.b		; 00 BA
	bcs -92.b		; B0 A4
	bit $00.b		; 24 00
	jmp.w [$F8D8]		; DC D8 F8
	asl A		; 0A
	sbc ($03.b)		; F2 03
	sec		; 38
	bcc -89.b		; 90 A7
	dey		; 88
	bne  31.b		; D0 1F
	sbc $549F33.l,X		; FF 33 9F 54
	lda $DF0055.l,X		; BF 55 00 DF
	lsr $FF.b,X		; 56 FF
	eor [$1F.b],Y		; 57 1F
	eor $5A3F.w,Y		; 59 3F 5A
	eor $5C7F5B.l,X		; 5F 5B 7F 5C
	sta $5EBF5D.l,X		; 9F 5D BF 5E
	cpy #$5FDF.w		; C0 DF 5F
	sbc $621F60.l,X		; FF 60 1F 62
	and $645F63.l,X		; 3F 63 5F 64
	sbc [$3F.b],Y		; F7 3F
	tsb $7F00.w		; 0C 00 7F
	asl $3E0C.w,X		; 1E 0C 3E
	trb $0042.w		; 1C 42 00
	.db $42, $B0		; 42 B0
	bvc -35.b		; 50 DD
	asl $9D7A.w,X		; 1E 7A 9D
	tsb $0C00.w		; 0C 00 0C
	sta ($B2.b)		; 92 B2
	ror $7F3C.w,X		; 7E 3C 7F
	adc $004D32.l,X		; 7F 32 4D 00
	eor $7F00.w		; 4D 00 7F
	bcs -66.b		; B0 BE
	ror A		; 6A
	sbc $FF.b,X		; F5 FF
	and ($12.b)		; 32 12
	brk $3C.b		; 00 3C
	nop		; EA
	inc $000C.w,X		; FE 0C 00
	ora $AED6.w,X		; 1D D6 AE
	xba		; EB
	pea $008E.w		; F4 8E 00
	cmp $8EFFEC.l,X		; DF EC FF 8E
	beq  -1.b		; F0 FF
	ora $FE.b,S		; 03 FE
	and ($E4.b),Y		; 31 E4
	ora [$09.b]		; 07 09
	brk $09.b		; 00 09
	brk $06.b		; 00 06
	brk $E5.b		; 00 E5
	ora ($E6.b,X)		; 01 E6
	sbc $00D006.l,X		; FF 06 D0 00
	trb $D4.b		; 14 D4
	brk $EF.b		; 00 EF
	cmp [$FF.b]		; C7 FF
	sbc $0099E6.l,X		; FF E6 99 00
	sta $FF00.w,Y		; 99 00 FF
	brk $D5.b		; 00 D5
	sbc $66FFE6.l		; EF E6 FF 66
	ora ($00.b)		; 12 00
	cmp [$92.b]		; C7 92
	jmp ($80C0.w,X)		; 7C C0 80
	sta $A040E0.l,X		; 9F E0 40 A0
	brk $A0.b		; 00 A0
	lda ($5E.b)		; B2 5E
	sbc $FF.b,X		; F5 FF
	rti		; 40

	cop $52.b		; 02 52
	eor $73FF80.l,X		; 5F 80 FF 73
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	sbc $FFD00F.l,X		; FF 0F D0 FF
	ora $FF0FFF.l		; 0F FF 0F FF
	ora $080FF4.l		; 0F F4 0F 08
	beq  15.b		; F0 0F
	ora $0FD100.l		; 0F 00 D1 0F
	plx		; FA
	ora $F21033.l		; 0F 33 10 F2
	ora $F1C0.w		; 0D C0 F1
	ora $0043.w		; 0D 43 00
	lda ($07.b),Y		; B1 07
	plx		; FA
	ora $13B1.w		; 0D B1 13
	sbc $86FE.w,Y		; F9 FE 86
	brk $1D.b		; 00 1D
	cpx $D686.w		; EC 86 D6
	nop		; EA
	inc $0040.w,X		; FE 40 00
	ora $40FC.w,X		; 1D FC 40
	bpl  31.b		; 10 1F
	asl $3F00.w,X		; 1E 00 3F
	ora ($00.b)		; 12 00
	and ($00.b,S),Y		; 33 00
	adc $FBF33F.l,X		; 7F 3F F3 FB
	and ($1F.b),Y		; 31 1F
	ldy #$1F73.w		; A0 73 1F
	adc $D0.b,X		; 75 D0
	sbc ($69.b,S),Y		; F3 69
	ora ($F6.b),Y		; 11 F6
	sbc $100069.l,X		; FF 69 00 10
	ora $00FF1F.l,X		; 1F 1F FF 00
	ora ($00.b,S),Y		; 13 00
	php		; 08
	brk $0F.b		; 00 0F
	ora [$07.b]		; 07 07
	eor ($03.b,S),Y		; 53 03
	ora $F6.b,S		; 03 F6
	ora $97.b,S		; 03 97
	cpx $50FF.w		; EC FF 50
	tas		; 1B
	cli		; 58
	bne -34.b		; D0 DE
	cmp $9F1B7B.l,X		; DF 7B 1B 9F
	asl $F00E.w		; 0E 0E F0
	sbc $A7009B.l,X		; FF 9B 00 A7
	stz $8700.w		; 9C 00 87
	bvc   0.b		; 50 00
	sbc $FF.b,X		; F5 FF
	sta $F0.b,S		; 83 F0
	ora $B0AE84.l,X		; 1F 84 AE B0
	sta $0F078F.l		; 8F 8F 07 0F
	sbc ($EF.b)		; F2 EF
	ora ($30.b,X)		; 01 30
	jsr $FA03.w		; 20 03 FA
	sei		; 78
	ora $30EF.w		; 0D EF 30
	ora $0049.w		; 0D 49 00
	sbc #$00.b		; E9 00
	sbc $FFE6AF.l,X		; FF AF E6 FF
	inc $E6.b		; E6 E6
	beq  -1.b		; F0 FF
	dec $50.b		; C6 50
	asl $0086.w		; 0E 86 00
	ldx $21.b,Y		; B6 21
	adc ($9C.b),Y		; 71 9C
	eor $FFF9FF.l		; 4F FF F9 FF
	sbc $951B93.l,X		; FF 93 1B 95
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	cpx #$0FFF.w		; E0 FF 0F
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	brk $00.b		; 00 00
	sta $1F508A.l		; 8F 8A 50 1F
	bit #$D0.b		; 89 D0
	ror A		; 6A
	sta $7713F4.l		; 8F F4 13 77
	ora $4FFFF3.l,X		; 1F F3 FF 4F
	plx		; FA
	bmi  47.b		; 30 2F
	lda #$10.b		; A9 10
	brk $EF.b		; 00 EF
	dec $C7.b		; C6 C7
	sta $83.b,S		; 83 83
.ACCU 8
.INDEX 8
	sep #$72		; E2 72
	and ($46.b),Y		; 31 46
	ora ($00.b)		; 12 00
	sbc [$11.b],Y		; F7 11
	pea $4601.w		; F4 01 46
	cmp $D19286.l		; CF 86 92 D1
	asl $1047.w,X		; 1E 47 10
	brk $F9.b		; 00 F9
	ora ($E0.b,X)		; 01 E0
	bvc -81.b		; 50 AF
	lda ($31.b)		; B2 31
	rti		; 40

	ora [$E0.b]		; 07 E0
	rti		; 40

	rti		; 40

	adc ($31.b)		; 72 31
	sbc ($90.b,S),Y		; F3 90
	sbc $FF.b,X		; F5 FF
	cmp $0103.w		; CD 03 01
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	ora ($4F.b,X)		; 01 4F
	cop $6F.b		; 02 6F
	ora $8F.b,S		; 03 8F
	tsb $AF.b		; 04 AF
	ora $CF.b		; 05 CF
	asl $9E.b		; 06 9E
	nop		; EA
	ora [$6D.b]		; 07 6D
	asl $6E.b,X		; 16 6E
	asl $FF.b,X		; 16 FF
	php		; 08
	ora [$0A.b],Y		; 17 0A
	ror $56FF.w		; 6E FF 56
	adc ($16.b)		; 72 16
	adc ($16.b,S),Y		; 73 16
	stz $16.b,X		; 74 16
	adc $7F.b,X		; 75 7F
	asl $8A.b,X		; 16 8A
	asl $8B.b,X		; 16 8B
	asl $6D.b,X		; 16 6D
	lsr $BB.b,X		; 56 BB
	phd		; 0B
	sbc $021601.l,X		; FF 01 16 02
	asl $1603.w		; 0E 03 16
	tsb $16.b		; 04 16
	sbc $061605.l,X		; FF 05 16 06
	asl $07.b,X		; 16 07
	asl $08.b,X		; 16 08
	asl $FF.b,X		; 16 FF
	ora #$16.b		; 09 16
	asl A		; 0A
	asl $0B.b,X		; 16 0B
	asl $0C.b,X		; 16 0C
	asl $FF.b,X		; 16 FF
	ora $0E16.w		; 0D 16 0E
	asl $0E79.w		; 0E 79 0E
	ply		; 7A
	asl $7BFF.w		; 0E FF 7B
	asl $167C.w		; 0E 7C 16
	adc $7E16.w,X		; 7D 16 7E
	asl $FF.b,X		; 16 FF
	adc $068006.l,X		; 7F 06 80 06
	sta ($06.b,X)		; 81 06
	.db $82, $16, $EF		; 82 16 EF
	sta $0E.b,S		; 83 0E
	sty $06.b		; 84 06
	cmp $0F.b,X		; D5 0F
	ora $FF100E.l		; 0F 0E 10 FF
	asl $1611.w		; 0E 11 16
	ora ($16.b)		; 12 16
	ora ($16.b,S),Y		; 13 16
	trb $FF.b		; 14 FF
	asl $15.b,X		; 16 15
	asl $16.b,X		; 16 16
	asl $17.b,X		; 16 17
	asl $18.b,X		; 16 18
	sbc $161916.l,X		; FF 16 19 16
	inc A		; 1A
	asl $1B.b,X		; 16 1B
	asl $1C.b,X		; 16 1C
	sbc $161D16.l,X		; FF 16 1D 16
	asl $890E.w,X		; 1E 0E 89
	asl $FD6E.w		; 0E 6E FD
	stx $1293.w		; 8E 93 12
	sty $8D06.w		; 8C 06 8D
	asl $8E.b		; 06 8E
	asl $7F.b		; 06 7F
	sta $129006.l		; 8F 06 90 12
	sta ($12.b),Y		; 91 12
	sta ($F6.b)		; 92 F6
	ora $FD.b,S		; 03 FD
	ora $2003B0.l,X		; 1F B0 03 20
	asl $21.b,X		; 16 21
	asl $22.b,X		; 16 22
	asl $FF.b,X		; 16 FF
	and $16.b,S		; 23 16
	bit $16.b		; 24 16
	and $16.b		; 25 16
	rol $16.b		; 26 16
	sbc $281627.l,X		; FF 27 16 28
	asl $29.b,X		; 16 29
	asl $2A.b,X		; 16 2A
	asl $DF.b,X		; 16 DF
	pld		; 2B
	asl $2C.b,X		; 16 2C
	asl $2D.b,X		; 16 2D
	eor ($0D.b)		; 52 0D
	sta [$16.b],Y		; 97 16
	sbc $991698.l,X		; FF 98 16 99
	asl $9A.b,X		; 16 9A
	asl $9B.b		; 06 9B
	asl $FF.b		; 06 FF
	stz $4C06.w		; 9C 06 4C
	asl $9D.b		; 06 9D
	asl $9E.b		; 06 9E
	asl $FD.b		; 06 FD
	sta $2E07F6.l,X		; 9F F6 07 2E
	asl $2F.b,X		; 16 2F
	asl $30.b,X		; 16 30
	asl $FF.b,X		; 16 FF
	and ($16.b),Y		; 31 16
	and ($16.b)		; 32 16
	and ($16.b,S),Y		; 33 16
	bit $16.b,X		; 34 16
	cmp $361635.l,X		; DF 35 16 36
	asl $37.b,X		; 16 37
	bne   3.b		; D0 03
	sec		; 38
	asl $FF.b,X		; 16 FF
	and $3A16.w,Y		; 39 16 3A
	asl $3B.b,X		; 16 3B
	asl $3C.b,X		; 16 3C
	asl $FF.b,X		; 16 FF
	ldy $16.b		; A4 16
	lda $16.b		; A5 16
	ldx $16.b		; A6 16
	lda [$16.b]		; A7 16
	adc $A916A8.l,X		; 7F A8 16 A9
	asl $AA.b		; 06 AA
	asl $AB.b		; 06 AB
	bvs  11.b		; 70 0B
	eor $AD06AC.l,X		; 5F AC 06 AD
	asl $AE.b		; 06 AE
	inc $0B.b,X		; F6 0B
	and $03B0.w,X		; 3D B0 03
	sbc $3F163E.l,X		; FF 3E 16 3F
	asl $1640.w		; 0E 40 16
	eor ($16.b,X)		; 41 16
	sbc $431642.l,X		; FF 42 16 43
	asl $44.b,X		; 16 44
	asl $45.b,X		; 16 45
	asl $FF.b,X		; 16 FF
	lsr $16.b		; 46 16
	eor [$16.b]		; 47 16
	pha		; 48
	asl $49.b,X		; 16 49
	asl $FF.b,X		; 16 FF
	lsr A		; 4A
	asl $4B.b,X		; 16 4B
	asl $B3.b,X		; 16 B3
	asl $B4.b,X		; 16 B4
	.db $16		; Opcode overrunning section
L004020:
	cmp $B616B5.l,X
	asl $B7.b,X
	beq L00403D.b
	clv		; Clear overflow
	asl $FF.b
	lda $BA06.w,Y
	asl $BB.b
	asl $BC.b
	asl $FD.b
	lda $0FF6.w,X
	jmp L004D16.w
	asl $4E.b,X		; 16 4E
	.db $0E		; Opcode overrunning section
L00403D:
	sbc $500E4F.l,X
	asl $0E51.w
	eor ($0E.b)
	sbc $540E53.l,X
	asl $55.b,X
	asl $56.b,X
	asl $FD.b,X
	eor [$D0.b],Y
	clc		; Clear carry
	cli		; Clear interupt
	asl $59.b,X
	asl $5A.b,X
	asl $FF.b,X
	lda $16C016.l,X
	cmp ($16.b,X)
.INDEX 16
	rep #$16
	sbc $C416C3.l,X
	asl $C5.b
	asl $C6.b
	asl $7F.b
	cmp [$06.b]
	iny
	asl $C9.b
	asl $CA.b
	inc $13.b,X
	sbc $5C0E5B.l,X
	asl $0E5D.w
	lsr $FF0E.w,X
L00407F:
	eor $0E600E.l,X
	adc ($16.b,X)
	.db $62, $16, $FF		; Invalid branch target (per L003F9E)
L004088:
	adc $16.b,S
	adc ($16.b,X)
	stz $16.b
	adc $16.b
	sbc $671666.l,X
	asl $1668.w
	adc #$16.b
	sbc $CC16CB.l,X
	asl $CD.b
	asl $CE.b
	asl $FF.b
	cmp $06D006.l
	cmp ($06.b),Y
	cmp ($06.b)
	lda $D406D3.l,X
	asl $D5.b
	asl $B7.b
	and [$6A.b]
	cmp $0E6B0E.l,X
	jmp ($BF0E.w)
	plp
	brk $00.b
	sbc $770E76.l,X
	asl $0E78.w
	dec $0E.b,X
	sbc $D812D7.l,X
	asl $D9.b
	asl $DA.b
	asl $FF.b
	stp
	asl $DC.b		; 06 DC
	asl $DD.b		; 06 DD
	asl $DE.b		; 06 DE
	asl $77.b		; 06 77
	cmp $F8E006.l,X		; DF 06 E0 F8
	ora $6F.b,S		; 03 6F
	asl $DF70.w		; 0E 70 DF
	ora $FE.b,S		; 03 FE
	tax		; AA
	and $0685.w		; 2D 85 06
	stx $06.b		; 86 06
	sta [$06.b]		; 87 06
	dey		; 88
	sbc $06A006.l,X		; FF 06 A0 06
	lda ($06.b,X)		; A1 06
	ldx #$A306.w		; A2 06 A3
	sta [$06.b],Y		; 97 06
	ldx $9B06.w,Y		; BE 06 9B
	and $279F71.l		; 2F 71 9F 27
	tax		; AA
	and ($93.b),Y		; 31 93
	sbc $069406.l,X		; FF 06 94 06
	sta $06.b,X		; 95 06
	stx $06.b,Y		; 96 06
	lda $B0063F.l		; AF 3F 06 B0
	asl $B1.b		; 06 B1
	asl $B2.b		; 06 B2
	jmp.w [$5303]		; DC 03 53
	bit $FF.b,X		; 34 FF
	ora $0E01.w		; 0D 01 0E
	ora ($0F.b,X)		; 01 0F
	ora ($20.b,X)		; 01 20
	ora ($FF.b,X)		; 01 FF
	and ($01.b,X)		; 21 01
	jsl $012301.l		; 22 01 23 01
	bit $01.b		; 24 01
	sbc $260125.l,X		; FF 25 01 26
	ora ($27.b,X)		; 01 27
	ora ($28.b,X)		; 01 28
	ora ($FF.b,X)		; 01 FF
	and #$01.b		; 29 01
	rol A		; 2A
	ora ($2B.b,X)		; 01 2B
	ora ($2C.b,X)		; 01 2C
	ora ($FF.b,X)		; 01 FF
	and $2E01.w		; 2D 01 2E
	ora ($2F.b,X)		; 01 2F
	ora ($40.b,X)		; 01 40
	ora ($F3.b,X)		; 01 F3
	eor ($01.b,X)		; 41 01
	eor $387137.l,X		; 5F 37 71 38
	ora $1E01.w,X		; 1D 01 1E
	ora ($FF.b,X)		; 01 FF
	ora $013001.l,X		; 1F 01 30 01
	and ($01.b),Y		; 31 01
	and ($01.b)		; 32 01
	sbc $340133.l,X		; FF 33 01 34
	ora ($35.b,X)		; 01 35
	ora ($36.b,X)		; 01 36
	ora ($FF.b,X)		; 01 FF
	and [$01.b],Y		; 37 01
	sec		; 38
	ora ($39.b,X)		; 01 39
	ora ($3A.b,X)		; 01 3A
	ora ($FF.b,X)		; 01 FF
	tsa		; 3B
	ora ($3C.b,X)		; 01 3C
	ora ($3D.b,X)		; 01 3D
	ora ($3E.b,X)		; 01 3E
	ora ($1F.b,X)		; 01 1F
	and $015001.l,X		; 3F 01 50 01
	eor ($FF.b),Y		; 51 FF
	ora $6F.b,S		; 03 6F
	bit $3D8F.w,X		; 3C 8F 3D
	jsr ($3EAF.w,X)		; FC AF 3E
	iny		; C8
	and $691968.l,X		; 3F 68 19 69
	ora $196A.w,Y		; 19 6A 19
	sbc $6C196B.l		; EF 6B 19 6C
	ora $20D0.w,Y		; 19 D0 20
	ora $194D.w,Y		; 19 4D 19
	sbc $4F194E.l		; EF 4E 19 4F
	ora $41B7.w,Y		; 19 B7 41
	.db $42, $19		; 42 19
	eor $FF.b,S		; 43 FF
	ora $1944.w,Y		; 19 44 19
	eor $19.b		; 45 19
	lsr $19.b		; 46 19
	eor [$FF.b]		; 47 FF
	ora $1948.w,Y		; 19 48 19
	eor #$19.b		; 49 19
	lsr A		; 4A
	ora $FD4B.w,Y		; 19 4B FD
	ora $439B.w,Y		; 19 9B 43
	sei		; 78
	ora $1979.w,Y		; 19 79 19
	ply		; 7A
	ora $7BF7.w,Y		; 19 F7 7B
	ora $F07C.w,Y		; 19 7C F0
	ora $5C.b,S		; 03 5C
	ora $195D.w,Y		; 19 5D 19
	sbc [$5E.b],Y		; F7 5E
	ora $F85F.w,Y		; 19 5F F8
	ora $52.b,S		; 03 52
	ora $1953.w,Y		; 19 53 19
	sbc $551954.l,X		; FF 54 19 55
	ora $1956.w,Y		; 19 56 19
	eor [$19.b],Y		; 57 19
	adc $591958.l,X		; 7F 58 19 59
	ora $195A.w,Y		; 19 5A 19
	tad		; 5B
	jsr ($FF03.w,X)		; FC 03 FF
	ldy #$A119.w		; A0 19 A1
	ora $19A2.w,Y		; 19 A2 19
	lda $19.b,S		; A3 19
	lda $A519A4.l,X		; BF A4 19 A5
	ora $19A6.w,Y		; 19 A6 19
	eor $6049.w,X		; 5D 49 60
	sbc $196119.l,X		; FF 19 61 19
	.db $62, $19, $63		; 62 19 63
	ora $7F64.w,Y		; 19 64 7F
	ora $1965.w,Y		; 19 65 19
	ror $19.b		; 66 19
	adc [$19.b]		; 67 19
	eor $B0FF4B.l,X		; 5F 4B FF B0
	ora $19B1.w,Y		; 19 B1 19
	lda ($19.b)		; B2 19
	lda ($19.b,S),Y		; B3 19
	cmp $B519B4.l,X		; DF B4 19 B5
	ora $FEB6.w,Y		; 19 B6 FE
	ora $70.b,S		; 03 70
	ora $71FF.w,Y		; 19 FF 71
	ora $1972.w,Y		; 19 72 19
	adc ($19.b,S),Y		; 73 19
	stz $19.b,X		; 74 19
	cmp $761975.l,X		; DF 75 19 76
	ora $FF77.w,Y		; 19 77 FF
	ora $00.b,S		; 03 00
	tay		; A8
	sbc $19A919.l,X		; FF 19 A9 19
	tax		; AA
	ora $19AB.w,Y		; 19 AB 19
	ldy $19BF.w		; AC BF 19
	lda $AE19.w		; AD 19 AE
	ora $DCAF.w,Y		; 19 AF DC
	ora $FF80.w		; 0D 80 FF
	ora $1981.w,Y		; 19 81 19
	.db $82, $19, $83		; 82 19 83
	ora $CF84.w,Y		; 19 84 CF
	ora $1985.w,Y		; 19 85 19
	stx $DF.b		; 86 DF
	ora [$40.b]		; 07 40
	mvn $19,$B8		; 54 B8 19
	sbc $BA19B9.l,X		; FF B9 19 BA
	ora $19BB.w,Y		; 19 BB 19
	ldy $DF19.w,X		; BC 19 DF
	lda $BE19.w,X		; BD 19 BE
	ora $DCBF.w,Y		; 19 BF DC
	ora ($90.b),Y		; 11 90
	ora $91FF.w,Y		; 19 FF 91
	ora $1992.w,Y		; 19 92 19
	sta ($19.b,S),Y		; 93 19
	sty $19.b,X		; 94 19
	ora [$95.b]		; 07 95
	ora $DF96.w,Y		; 19 96 DF
	phd		; 0B
	eor $596F58.l		; 4F 58 6F 59
	sta $5BA65A.l		; 8F 5A A6 5B
	sbc $C218C1.l,X		; FF C1 18 C2
	clc		; 18
	cmp $18.b,S		; C3 18
	cpy $18.b		; C4 18
	sbc $C618C5.l,X		; FF C5 18 C6
	clc		; 18
	cmp [$18.b]		; C7 18
	iny		; C8
	clc		; 18
	sbc $CA18C9.l,X		; FF C9 18 CA
	clc		; 18
	wai		; CB
	clc		; 18
	cpy $FF18.w		; CC 18 FF
	cmp $CE18.w		; CD 18 CE
	clc		; 18
	cmp $18E018.l		; CF 18 E0 18
	sbc $E218E1.l,X		; FF E1 18 E2
	clc		; 18
	sbc $18.b,S		; E3 18
	cpx $18.b		; E4 18
	sbc $E618E5.l,X		; FF E5 18 E6
	clc		; 18
	sbc [$18.b]		; E7 18
	inx		; E8
	clc		; 18
	sbc $EA18E9.l,X		; FF E9 18 EA
	clc		; 18
	xba		; EB
	clc		; 18
	cpx $FE18.w		; EC 18 FE
	lda $5F.b,X		; B5 5F
	cmp ($18.b),Y		; D1 18
	cmp ($18.b)		; D2 18
	cmp ($18.b,S),Y		; D3 18
	pei ($FF.b)		; D4 FF
	clc		; 18
	cmp $18.b,X		; D5 18
	dec $18.b,X		; D6 18
	cmp [$18.b],Y		; D7 18
	cld		; D8
	sbc $18D918.l,X		; FF 18 D9 18
	phx		; DA
	clc		; 18
	stp		; DB
	clc		; 18
	jmp.w [$18FF]		; DC FF 18
	cmp $DE18.w,X		; DD 18 DE
	clc		; 18
	cmp $FFF018.l,X		; DF 18 F0 FF
	clc		; 18
	sbc ($18.b),Y		; F1 18
	sbc ($18.b)		; F2 18
	sbc ($18.b,S),Y		; F3 18
	pea $18FF.w		; F4 FF 18
	sbc $18.b,X		; F5 18
	inc $18.b,X		; F6 18
	sbc [$18.b],Y		; F7 18
	sed		; F8
	sbc $18F918.l,X		; FF 18 F9 18
	plx		; FA
	clc		; 18
	xce		; FB
	clc		; 18
	jsr ($F6FE.w,X)		; FC FE F6
	ora $ED.b,S		; 03 ED
	clc		; 18
	inc $EF18.w		; EE 18 EF
	clc		; 18
	brk $FF.b		; 00 FF
	ora $1901.w,Y		; 19 01 19
	cop $19.b		; 02 19
	ora $19.b,S		; 03 19
	tsb $FF.b		; 04 FF
	ora $1905.w,Y		; 19 05 19
	asl $19.b		; 06 19
	ora [$19.b]		; 07 19
	php		; 08
	sbc $190919.l,X		; FF 19 09 19
	asl A		; 0A
	ora $190B.w,Y		; 19 0B 19
	tsb $DFFC.w		; 0C FC DF
	inc A		; 1A
	jmp $FD67.w		; 4C 67 FD
	clc		; 18
	inc $FF18.w,X		; FE 18 FF
	clc		; 18
	sbc $111910.l,X		; FF 10 19 11
	ora $1912.w,Y		; 19 12 19
	ora ($19.b,S),Y		; 13 19
	sbc $151914.l,X		; FF 14 19 15
	ora $1916.w,Y		; 19 16 19
	ora [$19.b],Y		; 17 19
	sbc $191918.l,X		; FF 18 19 19
	ora $191A.w,Y		; 19 1A 19
	tas		; 1B
	ora $1C01.w,Y		; 19 01 1C
	cmp $6B4F1E.l,X		; DF 1E 4F 6B
	adc $6D8F6C.l		; 6F 6C 8F 6D
	lda $6FCF6E.l		; AF 6E CF 6F
	sbc $0F0070.l		; EF 70 00 0F
	adc ($2F.b)		; 72 2F
	adc ($4F.b,S),Y		; 73 4F
	stz $6F.b,X		; 74 6F
	adc $8F.b,X		; 75 8F
	ror $AF.b,X		; 76 AF
	adc [$CF.b],Y		; 77 CF
	sei		; 78
	sbc $0F0079.l		; EF 79 00 0F
	tda		; 7B
	and $7D4F7C.l		; 2F 7C 4F 7D
	adc $7F847E.l		; 6F 7E 84 7F
	sep #$02		; E2 02
	sec		; 38
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	ora ($0F.b)		; 12 0F
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($62.b)		; 12 62
	ora ($63.b)		; 12 63
	ora ($68.b)		; 12 68
	ora ($69.b,S),Y		; 13 69
	ora ($48.b,S),Y		; 13 48
	ora ($49.b)		; 12 49
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($2A.b)		; 12 2A
	ora ($2B.b)		; 12 2B
	ora ($62.b)		; 12 62
	ora ($63.b)		; 12 63
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($6E.b)		; 12 6E
	ora ($A6.b,S),Y		; 13 A6
	ora ($A7.b)		; 12 A7
	ora ($6E.b)		; 12 6E
	eor ($1E.b,S),Y		; 53 1E
	ora ($1F.b)		; 12 1F
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($72.b)		; 12 72
	ora ($73.b)		; 12 73
	ora ($78.b)		; 12 78
	ora ($79.b,S),Y		; 13 79
	ora ($58.b,S),Y		; 13 58
	ora ($59.b)		; 12 59
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($3A.b)		; 12 3A
	ora ($3B.b)		; 12 3B
	ora ($72.b)		; 12 72
	ora ($73.b)		; 12 73
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($7E.b)		; 12 7E
	ora ($B6.b,S),Y		; 13 B6
	ora ($B7.b)		; 12 B7
	ora ($7E.b)		; 12 7E
	eor ($E2.b,S),Y		; 53 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora ($69.b,S),Y		; 13 69
	ora ($6F.b,S),Y		; 13 6F
	ora ($2C.b,S),Y		; 13 2C
	ora ($2D.b)		; 12 2D
	ora ($4C.b)		; 12 4C
	ora ($4D.b)		; 12 4D
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($00.b)		; 12 00
	brk $0E.b		; 00 0E
	ora ($0F.b)		; 12 0F
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($68.b)		; 12 68
	ora ($69.b,S),Y		; 13 69
	ora ($48.b,S),Y		; 13 48
	ora ($49.b)		; 12 49
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	ora ($79.b,S),Y		; 13 79
	ora ($7F.b,S),Y		; 13 7F
	ora ($3C.b,S),Y		; 13 3C
	ora ($3D.b)		; 12 3D
	ora ($5C.b)		; 12 5C
	ora ($5D.b)		; 12 5D
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($00.b)		; 12 00
	brk $1E.b		; 00 1E
	ora ($1F.b)		; 12 1F
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($78.b)		; 12 78
	ora ($79.b,S),Y		; 13 79
	ora ($58.b,S),Y		; 13 58
	ora ($59.b)		; 12 59
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $68.b		; 00 68
	ora ($69.b,S),Y		; 13 69
	ora ($44.b,S),Y		; 13 44
	ora ($45.b)		; 12 45
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($0E.b)		; 12 0E
	ora ($0F.b)		; 12 0F
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($EE.b)		; 12 EE
	ora ($EF.b)		; 12 EF
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($6F.b)		; 12 6F
	ora ($2E.b,S),Y		; 13 2E
	ora ($2F.b)		; 12 2F
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($00.b)		; 12 00
	brk $20.b		; 00 20
	ora ($21.b)		; 12 21
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($78.b)		; 12 78
	ora ($79.b,S),Y		; 13 79
	ora ($54.b,S),Y		; 13 54
	ora ($55.b)		; 12 55
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($1E.b)		; 12 1E
	ora ($1F.b)		; 12 1F
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($FE.b)		; 12 FE
	ora ($FF.b)		; 12 FF
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($7F.b)		; 12 7F
	ora ($3E.b,S),Y		; 13 3E
	ora ($3F.b)		; 12 3F
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($00.b)		; 12 00
	brk $30.b		; 00 30
	ora ($31.b)		; 12 31
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($E2.b)		; 12 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora ($69.b,S),Y		; 13 69
	ora ($22.b,S),Y		; 13 22
	ora ($23.b)		; 12 23
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($68.b)		; 12 68
	ora ($69.b,S),Y		; 13 69
	ora ($6F.b,S),Y		; 13 6F
	ora ($20.b,S),Y		; 13 20
	ora ($21.b)		; 12 21
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($00.b)		; 12 00
	brk $44.b		; 00 44
	ora ($45.b)		; 12 45
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	ora ($79.b,S),Y		; 13 79
	ora ($32.b,S),Y		; 13 32
	ora ($33.b)		; 12 33
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($78.b)		; 12 78
	ora ($79.b,S),Y		; 13 79
	ora ($7F.b,S),Y		; 13 7F
	ora ($30.b,S),Y		; 13 30
	ora ($31.b)		; 12 31
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($00.b)		; 12 00
	brk $54.b		; 00 54
	ora ($55.b)		; 12 55
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	ora ($C9.b)		; 12 C9
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($4A.b)		; 12 4A
	ora ($4B.b)		; 12 4B
	ora ($40.b)		; 12 40
	ora ($41.b)		; 12 41
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($6F.b)		; 12 6F
	ora ($40.b,S),Y		; 13 40
	ora ($41.b)		; 12 41
	ora ($00.b)		; 12 00
	brk $6E.b		; 00 6E
	ora ($20.b,S),Y		; 13 20
	ora ($21.b)		; 12 21
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($62.b)		; 12 62
	ora ($63.b)		; 12 63
	ora ($6E.b)		; 12 6E
	eor ($00.b,S),Y		; 53 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	ora ($D9.b)		; 12 D9
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($5A.b)		; 12 5A
	ora ($5B.b)		; 12 5B
	ora ($50.b)		; 12 50
	ora ($51.b)		; 12 51
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($7F.b)		; 12 7F
	ora ($50.b,S),Y		; 13 50
	ora ($51.b)		; 12 51
	ora ($00.b)		; 12 00
	brk $7E.b		; 00 7E
	ora ($30.b,S),Y		; 13 30
	ora ($31.b)		; 12 31
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($72.b)		; 12 72
	ora ($73.b)		; 12 73
	ora ($7E.b)		; 12 7E
	eor ($00.b,S),Y		; 53 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora ($69.b,S),Y		; 13 69
	ora ($26.b,S),Y		; 13 26
	ora ($27.b)		; 12 27
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($44.b)		; 12 44
	ora ($45.b)		; 12 45
	ora ($44.b)		; 12 44
	ora ($45.b)		; 12 45
	ora ($6F.b)		; 12 6F
	ora ($40.b,S),Y		; 13 40
	ora ($41.b)		; 12 41
	ora ($24.b)		; 12 24
	ora ($25.b)		; 12 25
	ora ($00.b)		; 12 00
	brk $0A.b		; 00 0A
	ora ($0B.b)		; 12 0B
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($62.b)		; 12 62
	ora ($63.b)		; 12 63
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	ora ($79.b,S),Y		; 13 79
	ora ($36.b,S),Y		; 13 36
	ora ($37.b)		; 12 37
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($54.b)		; 12 54
	ora ($55.b)		; 12 55
	ora ($54.b)		; 12 54
	ora ($55.b)		; 12 55
	ora ($7F.b)		; 12 7F
	ora ($50.b,S),Y		; 13 50
	ora ($51.b)		; 12 51
	ora ($34.b)		; 12 34
	ora ($35.b)		; 12 35
	ora ($00.b)		; 12 00
	brk $1A.b		; 00 1A
	ora ($1B.b)		; 12 1B
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($72.b)		; 12 72
	ora ($73.b)		; 12 73
	ora ($00.b)		; 12 00
	brk $E2.b		; 00 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	ora ($27.b)		; 12 27
	ora ($6F.b)		; 12 6F
	ora ($2A.b,S),Y		; 13 2A
	ora ($2B.b)		; 12 2B
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($4E.b)		; 12 4E
	ora ($4F.b)		; 12 4F
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($00.b)		; 12 00
	brk $68.b		; 00 68
	ora ($69.b,S),Y		; 13 69
	ora ($26.b,S),Y		; 13 26
	ora ($27.b)		; 12 27
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($6F.b)		; 12 6F
	ora ($40.b,S),Y		; 13 40
	ora ($41.b)		; 12 41
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	ora ($37.b)		; 12 37
	ora ($7F.b)		; 12 7F
	ora ($3A.b,S),Y		; 13 3A
	ora ($3B.b)		; 12 3B
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($5E.b)		; 12 5E
	ora ($5F.b)		; 12 5F
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($00.b)		; 12 00
	brk $78.b		; 00 78
	ora ($79.b,S),Y		; 13 79
	ora ($36.b,S),Y		; 13 36
	ora ($37.b)		; 12 37
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($7F.b)		; 12 7F
	ora ($50.b,S),Y		; 13 50
	ora ($51.b)		; 12 51
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	ora ($0F.b)		; 12 0F
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($62.b)		; 12 62
	ora ($63.b)		; 12 63
	ora ($68.b)		; 12 68
	ora ($69.b,S),Y		; 13 69
	ora ($48.b,S),Y		; 13 48
	ora ($49.b)		; 12 49
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($2A.b)		; 12 2A
	ora ($2B.b)		; 12 2B
	ora ($62.b)		; 12 62
	ora ($63.b)		; 12 63
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($6E.b)		; 12 6E
	ora ($A8.b,S),Y		; 13 A8
	ora ($A9.b)		; 12 A9
	ora ($6E.b)		; 12 6E
	eor ($1E.b,S),Y		; 53 1E
	ora ($1F.b)		; 12 1F
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($72.b)		; 12 72
	ora ($73.b)		; 12 73
	ora ($78.b)		; 12 78
	ora ($79.b,S),Y		; 13 79
	ora ($58.b,S),Y		; 13 58
	ora ($59.b)		; 12 59
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($3A.b)		; 12 3A
	ora ($3B.b)		; 12 3B
	ora ($72.b)		; 12 72
	ora ($73.b)		; 12 73
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($7E.b)		; 12 7E
	ora ($B8.b,S),Y		; 13 B8
	ora ($B9.b)		; 12 B9
	ora ($7E.b)		; 12 7E
	eor ($E2.b,S),Y		; 53 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	ora ($C9.b)		; 12 C9
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($4A.b)		; 12 4A
	ora ($4B.b)		; 12 4B
	ora ($40.b)		; 12 40
	ora ($41.b)		; 12 41
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($6F.b)		; 12 6F
	ora ($40.b,S),Y		; 13 40
	ora ($41.b)		; 12 41
	ora ($00.b)		; 12 00
	brk $6E.b		; 00 6E
	ora ($40.b,S),Y		; 13 40
	ora ($41.b)		; 12 41
	ora ($6F.b)		; 12 6F
	ora ($24.b,S),Y		; 13 24
	ora ($25.b)		; 12 25
	ora ($26.b)		; 12 26
	ora ($27.b)		; 12 27
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($6E.b)		; 12 6E
	eor ($00.b,S),Y		; 53 00
	brk $D8.b		; 00 D8
	ora ($D9.b)		; 12 D9
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($5A.b)		; 12 5A
	ora ($5B.b)		; 12 5B
	ora ($50.b)		; 12 50
	ora ($51.b)		; 12 51
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($7F.b)		; 12 7F
	ora ($50.b,S),Y		; 13 50
	ora ($51.b)		; 12 51
	ora ($00.b)		; 12 00
	brk $7E.b		; 00 7E
	ora ($50.b,S),Y		; 13 50
	ora ($51.b)		; 12 51
	ora ($7F.b)		; 12 7F
	ora ($34.b,S),Y		; 13 34
	ora ($35.b)		; 12 35
	ora ($36.b)		; 12 36
	ora ($37.b)		; 12 37
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($7E.b)		; 12 7E
	eor ($E2.b,S),Y		; 53 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora ($21.b)		; 12 21
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($4C.b)		; 12 4C
	ora ($4D.b)		; 12 4D
	ora ($00.b)		; 12 00
	brk $48.b		; 00 48
	ora ($49.b)		; 12 49
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($0A.b)		; 12 0A
	ora ($0B.b)		; 12 0B
	ora ($2E.b)		; 12 2E
	ora ($2F.b)		; 12 2F
	ora ($00.b)		; 12 00
	brk $42.b		; 00 42
	ora ($43.b)		; 12 43
	ora ($C8.b)		; 12 C8
	ora ($C9.b)		; 12 C9
	ora ($C8.b)		; 12 C8
	ora ($C9.b)		; 12 C9
	ora ($6F.b)		; 12 6F
	ora ($0E.b,S),Y		; 13 0E
	ora ($0F.b)		; 12 0F
	ora ($22.b)		; 12 22
	ora ($23.b)		; 12 23
	ora ($00.b)		; 12 00
	brk $30.b		; 00 30
	ora ($31.b)		; 12 31
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($5C.b)		; 12 5C
	ora ($5D.b)		; 12 5D
	ora ($00.b)		; 12 00
	brk $58.b		; 00 58
	ora ($59.b)		; 12 59
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($1A.b)		; 12 1A
	ora ($1B.b)		; 12 1B
	ora ($3E.b)		; 12 3E
	ora ($3F.b)		; 12 3F
	ora ($00.b)		; 12 00
	brk $52.b		; 00 52
	ora ($53.b)		; 12 53
	ora ($D8.b)		; 12 D8
	ora ($D9.b)		; 12 D9
	ora ($D8.b)		; 12 D8
	ora ($D9.b)		; 12 D9
	ora ($7F.b)		; 12 7F
	ora ($1E.b,S),Y		; 13 1E
	ora ($1F.b)		; 12 1F
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($E2.b)		; 12 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	asl $0E0F.w		; 0E 0F 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $0F68.w		; 0E 68 0F
	adc #$0F.b		; 69 0F
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	bit $2D0E.w		; 2C 0E 2D
	asl $0E48.w		; 0E 48 0E
	eor #$0E.b		; 49 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	rol A		; 2A
	asl $0E2B.w		; 0E 2B 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $0E42.w		; 0E 42 0E
	eor $0E.b,S		; 43 0E
	ror $A60F.w		; 6E 0F A6
	asl $0EA7.w		; 0E A7 0E
	ror $1E4F.w		; 6E 4F 1E
	asl $0E1F.w		; 0E 1F 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	adc ($0E.b)		; 72 0E
	adc ($0E.b,S),Y		; 73 0E
	sei		; 78
	ora $580F79.l		; 0F 79 0F 58
	asl $0E59.w		; 0E 59 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	bit $3D0E.w,X		; 3C 0E 3D
	asl $0E58.w		; 0E 58 0E
	eor $520E.w,Y		; 59 0E 52
	asl $0E53.w		; 0E 53 0E
	dec A		; 3A
	asl $0E3B.w		; 0E 3B 0E
	adc ($0E.b)		; 72 0E
	adc ($0E.b,S),Y		; 73 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	ror $B60F.w,X		; 7E 0F B6
	asl $0EB7.w		; 0E B7 0E
	ror $E24F.w,X		; 7E 4F E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora $6F0F69.l		; 0F 69 0F 6F
	ora $2D0E2C.l		; 0F 2C 0E 2D
	asl $0E4C.w		; 0E 4C 0E
	eor $220E.w		; 4D 0E 22
	asl $0E23.w		; 0E 23 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	brk $00.b		; 00 00
	asl $0F0E.w		; 0E 0E 0F
	asl $0E0A.w		; 0E 0A 0E
	phd		; 0B
	asl $0F68.w		; 0E 68 0F
	adc #$0F.b		; 69 0F
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	bit $2D0E.w		; 2C 0E 2D
	asl $0E22.w		; 0E 22 0E
	and $0E.b,S		; 23 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	ora $7F0F79.l		; 0F 79 0F 7F
	ora $3D0E3C.l		; 0F 3C 0E 3D
	asl $0E5C.w		; 0E 5C 0E
	eor $320E.w,X		; 5D 0E 32
	asl $0E33.w		; 0E 33 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	brk $00.b		; 00 00
	asl $1F0E.w,X		; 1E 0E 1F
	asl $0E1A.w		; 0E 1A 0E
	tas		; 1B
	asl $0F78.w		; 0E 78 0F
	adc $580F.w,Y		; 79 0F 58
	asl $0E59.w		; 0E 59 0E
	bit $3D0E.w,X		; 3C 0E 3D
	asl $0E32.w		; 0E 32 0E
	and ($0E.b,S),Y		; 33 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sep #$02		; E2 02
	sec		; 38
	brk $02.b		; 00 02
	brk $68.b		; 00 68
	ora $440F69.l		; 0F 69 0F 44
	asl $0E45.w		; 0E 45 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	asl $0F0E.w		; 0E 0E 0F
	asl $0E22.w		; 0E 22 0E
	and $0E.b,S		; 23 0E
	inc $EF0E.w		; EE 0E EF
	asl $0E48.w		; 0E 48 0E
	eor #$0E.b		; 49 0E
	adc $0E2E0F.l		; 6F 0F 2E 0E
	and $0E220E.l		; 2F 0E 22 0E
	and $0E.b,S		; 23 0E
	brk $00.b		; 00 00
	jsr $210E.w		; 20 0E 21
	asl $0E42.w		; 0E 42 0E
	eor $0E.b,S		; 43 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	sei		; 78
	ora $540F79.l		; 0F 79 0F 54
	asl $0E55.w		; 0E 55 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	asl $1F0E.w,X		; 1E 0E 1F
	asl $0E32.w		; 0E 32 0E
	and ($0E.b,S),Y		; 33 0E
	inc $FF0E.w,X		; FE 0E FF
	asl $0E58.w		; 0E 58 0E
	eor $7F0E.w,Y		; 59 0E 7F
	ora $3F0E3E.l		; 0F 3E 0E 3F
	asl $0E32.w		; 0E 32 0E
	and ($0E.b,S),Y		; 33 0E
	brk $00.b		; 00 00
	bmi  14.b		; 30 0E
	and ($0E.b),Y		; 31 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	sep #$02		; E2 02
	sec		; 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora $220F69.l		; 0F 69 0F 22
	asl $0E23.w		; 0E 23 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	pla		; 68
	ora $6F0F69.l		; 0F 69 0F 6F
	ora $210E20.l		; 0F 20 0E 21
	asl $0E22.w		; 0E 22 0E
	and $0E.b,S		; 23 0E
	brk $00.b		; 00 00
	mvp $45,$0E		; 44 0E 45
	asl $0E42.w		; 0E 42 0E
	eor $0E.b,S		; 43 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	ora $320F79.l		; 0F 79 0F 32
	asl $0E33.w		; 0E 33 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	sei		; 78
	ora $7F0F79.l		; 0F 79 0F 7F
	ora $310E30.l		; 0F 30 0E 31
	asl $0E32.w		; 0E 32 0E
	and ($0E.b,S),Y		; 33 0E
	brk $00.b		; 00 00
	mvn $55,$0E		; 54 0E 55
	asl $0E52.w		; 0E 52 0E
	eor ($0E.b,S),Y		; 53 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sep #$02		; E2 02
	sec		; 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	asl $0EC9.w		; 0E C9 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	lsr A		; 4A
	asl $0E4B.w		; 0E 4B 0E
	rti		; 40

	asl $0E41.w		; 0E 41 0E
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	adc $0E400F.l		; 6F 0F 40 0E
	eor ($0E.b,X)		; 41 0E
	brk $00.b		; 00 00
	ror $200F.w		; 6E 0F 20
	asl $0E21.w		; 0E 21 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $4F6E.w		; 0E 6E 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	asl $0ED9.w		; 0E D9 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	phy		; 5A
	asl $0E5B.w		; 0E 5B 0E
	bvc  14.b		; 50 0E
	eor ($0E.b),Y		; 51 0E
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	adc $0E500F.l,X		; 7F 0F 50 0E
	eor ($0E.b),Y		; 51 0E
	brk $00.b		; 00 00
	ror $300F.w,X		; 7E 0F 30
	asl $0E31.w		; 0E 31 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	adc ($0E.b)		; 72 0E
	adc ($0E.b,S),Y		; 73 0E
	ror $004F.w,X		; 7E 4F 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora $260F69.l		; 0F 69 0F 26
	asl $0E27.w		; 0E 27 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	mvp $45,$0E		; 44 0E 45
	asl $0E44.w		; 0E 44 0E
	eor $0E.b		; 45 0E
	adc $0E400F.l		; 6F 0F 40 0E
	eor ($0E.b,X)		; 41 0E
	bit $0E.b		; 24 0E
	and $0E.b		; 25 0E
	brk $00.b		; 00 00
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	bit $2D0E.w		; 2C 0E 2D
	asl $0E2C.w		; 0E 2C 0E
	and $220E.w		; 2D 0E 22
	asl $0E23.w		; 0E 23 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	sei		; 78
	ora $360F79.l		; 0F 79 0F 36
	asl $0E37.w		; 0E 37 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	mvn $55,$0E		; 54 0E 55
	asl $0E54.w		; 0E 54 0E
	eor $0E.b,X		; 55 0E
	adc $0E500F.l,X		; 7F 0F 50 0E
	eor ($0E.b),Y		; 51 0E
	bit $0E.b,X		; 34 0E
	and $0E.b,X		; 35 0E
	brk $00.b		; 00 00
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	bit $3D0E.w,X		; 3C 0E 3D
	asl $0E3C.w		; 0E 3C 0E
	and $320E.w,X		; 3D 0E 32
	asl $0E33.w		; 0E 33 0E
	adc ($0E.b)		; 72 0E
	adc ($0E.b,S),Y		; 73 0E
	brk $00.b		; 00 00
	sep #$02		; E2 02
	sec		; 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	asl $0E27.w		; 0E 27 0E
	adc $0E2A0F.l		; 6F 0F 2A 0E
	pld		; 2B
	asl $0E0A.w		; 0E 0A 0E
	phd		; 0B
	asl $0E4E.w		; 0E 4E 0E
	eor $0E0A0E.l		; 4F 0E 0A 0E
	phd		; 0B
	asl $0000.w		; 0E 00 00
	pla		; 68
	ora $260F69.l		; 0F 69 0F 26
	asl $0E27.w		; 0E 27 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	adc $0E400F.l		; 6F 0F 40 0E
	eor ($0E.b,X)		; 41 0E
	jsl $0E230E.l		; 22 0E 23 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0E.b,X		; 36 0E
	and [$0E.b],Y		; 37 0E
	adc $0E3A0F.l,X		; 7F 0F 3A 0E
	tsa		; 3B
	asl $0E1A.w		; 0E 1A 0E
	tas		; 1B
	asl $0E5E.w		; 0E 5E 0E
	eor $0E1A0E.l,X		; 5F 0E 1A 0E
	tas		; 1B
	asl $0000.w		; 0E 00 00
	sei		; 78
	ora $360F79.l		; 0F 79 0F 36
	asl $0E37.w		; 0E 37 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	adc $0E500F.l,X		; 7F 0F 50 0E
	eor ($0E.b),Y		; 51 0E
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sep #$02		; E2 02
	sec		; 38
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	asl $0E0F.w		; 0E 0F 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $0F68.w		; 0E 68 0F
	adc #$0F.b		; 69 0F
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	bit $2D0E.w		; 2C 0E 2D
	asl $0E48.w		; 0E 48 0E
	eor #$0E.b		; 49 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	rol A		; 2A
	asl $0E2B.w		; 0E 2B 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $0E42.w		; 0E 42 0E
	eor $0E.b,S		; 43 0E
	ror $A80F.w		; 6E 0F A8
	asl $0EA9.w		; 0E A9 0E
	ror $1E4F.w		; 6E 4F 1E
	asl $0E1F.w		; 0E 1F 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	adc ($0E.b)		; 72 0E
	adc ($0E.b,S),Y		; 73 0E
	sei		; 78
	ora $580F79.l		; 0F 79 0F 58
	asl $0E59.w		; 0E 59 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	bit $3D0E.w,X		; 3C 0E 3D
	asl $0E58.w		; 0E 58 0E
	eor $520E.w,Y		; 59 0E 52
	asl $0E53.w		; 0E 53 0E
	dec A		; 3A
	asl $0E3B.w		; 0E 3B 0E
	adc ($0E.b)		; 72 0E
	adc ($0E.b,S),Y		; 73 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	ror $B80F.w,X		; 7E 0F B8
	asl $0EB9.w		; 0E B9 0E
	ror $E24F.w,X		; 7E 4F E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	asl $0EC9.w		; 0E C9 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	lsr A		; 4A
	asl $0E4B.w		; 0E 4B 0E
	rti		; 40

	asl $0E41.w		; 0E 41 0E
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	adc $0E400F.l		; 6F 0F 40 0E
	eor ($0E.b,X)		; 41 0E
	brk $00.b		; 00 00
	ror $400F.w		; 6E 0F 40
	asl $0E41.w		; 0E 41 0E
	adc $0E240F.l		; 6F 0F 24 0E
	and $0E.b		; 25 0E
	rol $0E.b		; 26 0E
	and [$0E.b]		; 27 0E
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	ror $004F.w		; 6E 4F 00
	brk $D8.b		; 00 D8
	asl $0ED9.w		; 0E D9 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	phy		; 5A
	asl $0E5B.w		; 0E 5B 0E
	bvc  14.b		; 50 0E
	eor ($0E.b),Y		; 51 0E
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	adc $0E500F.l,X		; 7F 0F 50 0E
	eor ($0E.b),Y		; 51 0E
	brk $00.b		; 00 00
	ror $500F.w,X		; 7E 0F 50
	asl $0E51.w		; 0E 51 0E
	adc $0E340F.l,X		; 7F 0F 34 0E
	and $0E.b,X		; 35 0E
	rol $0E.b,X		; 36 0E
	and [$0E.b],Y		; 37 0E
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	ror $E24F.w,X		; 7E 4F E2
	cop $38.b		; 02 38
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	asl $0E21.w		; 0E 21 0E
	jsl $0E230E.l		; 22 0E 23 0E
	jmp $4D0E.w		; 4C 0E 4D
	asl $0000.w		; 0E 00 00
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	jsl $0E230E.l		; 22 0E 23 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	rol $2F0E.w		; 2E 0E 2F
	asl $0000.w		; 0E 00 00
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	iny		; C8
	asl $0EC9.w		; 0E C9 0E
	iny		; C8
	asl $0EC9.w		; 0E C9 0E
	adc $0E0E0F.l		; 6F 0F 0E 0E
	ora $0E220E.l		; 0F 0E 22 0E
	and $0E.b,S		; 23 0E
	brk $00.b		; 00 00
	bmi  14.b		; 30 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	jmp $0E5D0E.l		; 5C 0E 5D 0E
	brk $00.b		; 00 00
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	rol $3F0E.w,X		; 3E 0E 3F
	asl $0000.w		; 0E 00 00
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	cld		; D8
	asl $0ED9.w		; 0E D9 0E
	cld		; D8
	asl $0ED9.w		; 0E D9 0E
	adc $0E1E0F.l,X		; 7F 0F 1E 0E
	ora $0E320E.l,X		; 1F 0E 32 0E
	and ($0E.b,S),Y		; 33 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $80.b		; 04 80
	brk $20.b		; 00 20
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $52.b		; 00 52
	jsl $101101.l		; 22 01 11 10
	bra -126.b		; 80 82
	lda ($04.b),Y		; B1 04
	bpl   0.b		; 10 00
	eor ($A4.b),Y		; 51 A4
	bpl L004D1E.b		; 10 20
	ldy $E4.b		; A4 E4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
L004D16:
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
L004D1E:
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $20.b
	ora ($00.b,X)
	brk $00.b
	brk $04.b
	php
	brk $08.b
	jsr L000018.w
	ora ($88.b,X)
	php
	tsb $00.b
	brk $00.b
	rti

	brk $00.b		; 00 00
	jsr $0400.w		; 20 00 04
	brk $00.b		; 00 00
	cop $22.b		; 02 22
	php		; 08
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	cmp ($10.b)		; D2 10
	sty $89.b		; 84 89
	jsr $A288.w		; 20 88 A2
	sty $0A.b		; 84 0A
	adc ($A0.b),Y		; 71 A0
	stz $90.b		; 64 90
	inc A		; 1A
	ora $9A.b,S		; 03 9A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $24.b		; 04 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	sta ($00.b),Y		; 91 00
	bra  21.b		; 80 15
	sta $2214.w,Y		; 99 14 22
	tsb $8A.b		; 04 8A
	cpx #$2281.w		; E0 81 22
	sec		; 38
	rol A		; 2A
	ora ($90.b,X)		; 01 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $A010.w		; 20 10 A0
	cpy #$2080.w		; C0 80 20
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sta ($80.b,X)		; 81 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bpl -128.b		; 10 80
	rti		; 40

	jsr $2104.w		; 20 04 21
	mvn $06,$0C		; 54 0C 06
	brk $86.b		; 00 86
	brk $A0.b		; 00 A0
	bvc 107.b		; 50 6B
	bra -52.b		; 80 CC
	asl A		; 0A
	cpx #$7B52.w		; E0 52 7B
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $24.b		; 00 24
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cop $00.b		; 02 00
	brk $AE.b		; 00 AE
	cop $10.b		; 02 10
	rol $40.b,X		; 36 40
	bcc  13.b		; 90 0D
	jsl $480288.l		; 22 88 02 48
	ora ($32.b,X)		; 01 32
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	brk $24.b		; 00 24
	ora ($02.b,X)		; 01 02
	.db $82, $33, $00		; 82 33 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	bra -127.b		; 80 81
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	jsr $1000.w		; 20 00 10
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	cmp ($40.b,X)		; C1 40
	dec A		; 3A
	bcs  64.b		; B0 40
	ror A		; 6A
	cmp $97.b		; C5 97
	brk $80.b		; 00 80
	dey		; 88
	ldy #$0070.w		; A0 70 00
	jsr $CC3B.w		; 20 3B CC
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	tsb $698A.w		; 0C 8A 69
	stx $0C.b		; 86 0C
	pla		; 68
	cop $80.b		; 02 80
	bra  99.b		; 80 63
	ldy $3A.b		; A4 3A
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FEBDFF.l,X		; FF FF BD FE
	sbc $FFF7D7.l,X		; FF D7 F7 FF
	adc $FFBB7F.l,X		; 7F 7F BB FF
	inc $D3.b,X		; F6 D3
	lda $FEF5FA.l,X		; BF FA F5 FE
	tsa		; 3B
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFDBB.l		; CF BB FD FF
	ror $FC.b,X		; 76 FC
	dec $F6DE.w		; CE DE F6
	and ($B9.b)		; 32 B9
	cmp $DFFF6F.l,X		; DF 6F FF DF
	sbc $7FFFCA.l,X		; FF CA FF 7F
	sbc $FF777B.l		; EF 7B 77 FF
	lda ($C6.b),Y		; B1 C6
	adc $7BDA.w,X		; 7D DA 7B
	ror $FF.b,X		; 76 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFDF.l,X		; FF DF FF FF
	cmp $FFFFFD.l,X		; DF FD FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FBFDEB.l,X		; FF EB FD FB
	sbc $FFADCF.l,X		; FF CF AD FF
	sbc $BFEFFF.l,X		; FF FF EF BF
	eor $5E7FFF.l,X		; 5F FF 7F 5E
	sbc $FF6FDF.l,X		; FF DF 6F FF
	sbc $FFDDDA.l		; EF DA DD FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	xce		; FB
	lda $FFFF.w,X		; BD FF FF
	sbc $FFFF4F.l,X		; FF 4F FF FF
	sbc [$DD.b],Y		; F7 DD
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
	cmp $F7FFFF.l,X		; DF FF FF F7
	sbc $FE7DFF.l,X		; FF FF 7D FE
	sbc $FFFF7F.l,X		; FF 7F FF FF
	jmp ($FF7F.w,X)		; 7C 7F FF
	lda $E8E5F7.l		; AF F7 E5 E8
	ldx $9B.b,Y		; B6 9B
	sbc $FFB67E.l,X		; FF 7E B6 FF
	sbc $B7FEFB.l,X		; FF FB FE B7
	cmp $FFFBDF.l,X		; DF DF FB FF
	and ($FF.b,S),Y		; 33 FF
	ora $FF5F78.l		; 0F 78 5F FF
	cmp [$BF.b]		; C7 BF
	sbc $F74F7E.l,X		; FF 7E 4F F7
	cmp $FEA75F.l,X		; DF 5F A7 FE
	dec $B7F7.w,X		; DE F7 B7
	cmp ($FF.b),Y		; D1 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF9E.l,X		; FF 9E FF FF
	inc $BFFC.w,X		; FE FC BF
	ror $FB.b,X		; 76 FB
	adc $FF8F.w,Y		; 79 8F FF
	sbc $FFFEF7.l,X		; FF F7 FE FF
	dec $BEFF.w		; CE FF BE
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $3FE3DD.l,X		; FF DD E3 3F
	inc $DFFB.w,X		; FE FB DF
	sbc $F7FF7F.l,X		; FF 7F FF F7
	sbc $F1BBFA.l,X		; FF FA BB F1
	and $5DBDFF.l,X		; 3F FF BD 5D
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
	sbc $7FBFFF.l,X		; FF FF BF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	adc $FFFFEF.l,X		; 7F EF FF FF
	sbc $FEA67E.l,X		; FF 7E A6 FE
	tyx		; BB
	sta ($FD.b,S),Y		; 93 FD
	adc $7F5E.w,X		; 7D 5E 7F
	cmp $DFFFBF.l,X		; DF BF FF DF
	sbc [$FD.b],Y		; F7 FD
	ldy $FFF5.w,X		; BC F5 FF
	lda [$FB.b],Y		; B7 FB
	xce		; FB
	sbc $DF4E40.l,X		; FF 40 4E DF
	adc $FFEB7F.l,X		; 7F 7F EB FF
	sbc [$FA.b],Y		; F7 FA
	sbc $FD57DF.l		; EF DF 57 FD
	sbc [$B8.b],Y		; F7 B8
	sbc $F77F.w		; ED 7F F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7DDFFF.l,X		; FF FF DF 7D
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $7FBDDF.l		; EF DF BD 7F
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $FFFFFF.l		; EF FF FF FF
	lda $FFE3F9.l,X		; BF F9 E3 FF
	cmp $DFFE7F.l,X		; DF 7F FE DF
	sbc [$BF.b],Y		; F7 BF
	lda $FDFFDD.l,X		; BF DD FF FD
	sbc $FBEDEF.l,X		; FF EF ED FB
	lda [$F7.b]		; A7 F7
	sbc $FFA6FF.l		; EF FF A6 FF
	xce		; FB
	adc $FFAF9F.l		; 6F 9F AF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FBFFFD.l,X		; FF FD FF FB
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FBFEBD.l,X		; FF BD FE FB
	ror $DFF6.w		; 6E F6 DF
	sbc $DF.b,S		; E3 DF
	xce		; FB
	sbc $FAEBED.l		; EF ED EB FA
	.db $82, $DF, $FD		; 82 DF FD
	adc $FFFBFE.l,X		; 7F FE FB FF
	plx		; FA
	sbc $FFA77B.l,X		; FF 7B A7 FF
	rtl		; 6B

	tsx		; BA
	sbc $EB3E9A.l,X		; FF 9A 3E EB
	sbc $F7FFEA.l,X		; FF EA FF F7
	sbc $F7FFFF.l		; EF FF FF F7
	sbc $FBE7FF.l,X		; FF FF E7 FB
	adc $73.b,X		; 75 73
	sta ($FF.b)		; 92 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	lda $FFFDFF.l,X		; BF FF FD FF
	sbc $FFDDF7.l,X		; FF F7 DD FF
	sbc ($9E.b,S),Y		; F3 9E
	ldx $F9DF.w,Y		; BE DF F9
	xba		; EB
	tyx		; BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFBF.l,X		; FF BF FF FD
	sbc $EFFF.w		; ED FF EF
	sbc $6FDF.w,X		; FD DF 6F
	ora $FFFF.w,X		; 1D FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $DFFF.w,X		; FD FF DF
	sbc $6F0FFE.l		; EF FE 0F 6F
	lda $FFF5.w,X		; BD F5 FF
	ror $FFFF.w,X		; 7E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	plx		; FA
	sbc $F4FFFF.l		; EF FF FF F4
	sbc $E7FE.w,X		; FD FE E7
	adc ($7F.b,S),Y		; 73 7F
	sbc $7B.b		; E5 7B
	lda ($FF.b,S),Y		; B3 FF
	lda #$F7.b		; A9 F7
	pla		; 68
	ldx $51.b,Y		; B6 51
	adc [$FB.b]		; 67 FB
	lda $BFFF7D.l		; AF 7D FF BF
	sbc $7FF7FF.l,X		; FF FF F7 7F
	ror $F7FF.w		; 6E FF F7
	ldx $FFDC.w,Y		; BE DC FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $77FDFF.l,X		; FF FF FD 77
	sbc $F5E6EF.l,X		; FF EF E6 F5
	rtl		; 6B

	adc $DF.b,S		; 63 DF
	sta $FF5D.w,Y		; 99 5D FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $4F7DEF.l,X		; FF EF 7D 4F
	adc $7FAFF7.l,X		; 7F F7 AF 7F
	sbc $FFFF.w		; ED FF FF
	eor [$AF.b],Y		; 57 AF
	sbc $F7BFBF.l,X		; FF BF BF F7
	tda		; 7B
	sbc $D5FFFF.l,X		; FF FF FF D5
	and $FF7FE9.l,X		; 3F E9 7F FF
	inc $FFFB.w,X		; FE FB FF
	sbc [$FF.b],Y		; F7 FF
	sbc $F74D7F.l,X		; FF 7F 4D F7
	lda $CEDF22.l,X		; BF 22 DF CE
	sbc $F7DF.w,X		; FD DF F7
	ror $B7D3.w,X		; 7E D3 B7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFF5.l,X		; FF F5 FF FF
	cmp $F7BFFF.l,X		; DF FF BF F7
	xce		; FB
	sbc $FFDEFF.l,X		; FF FF DE FF
	sbc $7EDFA7.l		; EF A7 DF 7E
	eor $F5F6.w,Y		; 59 F6 F5
	adc [$BF.b]		; 67 BF
	sta $EFFFBF.l,X		; 9F BF FF EF
	lda $5FDDFD.l,X		; BF FD DD 5F
	sta $F8FFDF.l		; 8F DF FF F8
	ora $DF7A.w		; 0D 7A DF
	sbc $CF75FF.l,X		; FF FF 75 CF
	adc $97F6FF.l,X		; 7F FF F6 97
	lda [$EF.b],Y		; B7 EF
	sta [$2B.b],Y		; 97 2B
	sbc $F61D3C.l,X		; FF 3C 1D F6
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFBE.l,X		; FF BE FF F7
	sbc $FFBFF7.l,X		; FF F7 BF FF
	sbc $7FFFEF.l,X		; FF EF FF 7F
	wai		; CB
	adc $FF4BFF.l		; 6F FF 4B FF
	sbc $FF7F.w,X		; FD 7F FF
	sbc $FDF75F.l,X		; FF 5F F7 FD
	dec $AFFF.w		; CE FF AF
	sbc $C6FF.w,Y		; F9 FF C6
	cmp [$3E.b],Y		; D7 3E
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $3FFF.w,X		; 7D FF 3F
	sbc $FFDFBF.l,X		; FF BF DF FF
	xce		; FB
	cmp $41DFBF.l,X		; DF BF DF 41
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	cmp $7EDFFF.l,X		; DF FF DF 7E
	sbc $6BFBFF.l,X		; FF FF FB 6B
	sbc $DFFEF8.l,X		; FF F8 FE DF
	cpx $86FB.w		; EC FB 86
	adc $D7F9.w,X		; 7D F9 D7
	adc $FFFFFE.l		; 6F FE FF FF
	xce		; FB
	lda $FFFFFF.l,X		; BF FF FF FF
	adc $FF79.w,X		; 7D 79 FF
	cpy $FFEB.w		; CC EB FF
	inc $EF.b		; E6 EF
	tsa		; 3B
	sbc $F7EDFF.l,X		; FF FF ED F7
	sbc $FFF37F.l,X		; FF 7F F3 FF
	sbc $FEFFCF.l,X		; FF CF FF FE
	sbc ($EC.b,S),Y		; F3 EC
	adc $FFFF69.l		; 6F 69 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFD79E.l,X		; FF 9E D7 BF
	sbc $FDF7BF.l,X		; FF BF F7 FD
	sbc $ABEFDE.l,X		; FF DE EF AB
	sbc $FFAF.w,Y		; F9 AF FF
	tda		; 7B
	cmp $EFFBDF.l,X		; DF DF FB EF
	sbc $EBFFF6.l,X		; FF F6 FF EB
	sbc $F8DE.w,X		; FD DE F8
	jsr ($9DFC.w,X)		; FC FC 9D
	adc $FFBF.w,X		; 7D BF FF
	adc $FFFF.w,Y		; 79 FF FF
	inc $77DF.w,X		; FE DF 77
	jsr ($B7FF.w,X)		; FC FF B7
	xce		; FB
	inc $E2DF.w,X		; FE DF E2
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DFABFF.l,X		; FF FF AB DF
	sbc $FDFFFC.l,X		; FF FC FF FD
	sbc [$7A.b],Y		; F7 7A
	sbc $DDE457.l		; EF 57 E4 DD
	sbc $9E3D.w,X		; FD 3D 9E
	cmp $656F.w		; CD 6F 65
	eor $FFF77F.l,X		; 5F 7F F7 FF
	tsa		; 3B
	cmp $FF.b,S		; C3 FF
	cmp $FB7F.w,X		; DD 7F FB
	and [$AB.b]		; 27 AB
	trb $FF.b		; 14 FF
	lda $7B.b,X		; B5 7B
	cmp $FBFFFF.l		; CF FF FF FB
	sbc $DF337F.l,X		; FF 7F 33 DF
	sbc $7CFB7F.l,X		; FF 7F FB 7C
	sbc [$7A.b]		; E7 7A
	xba		; EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFDEFF.l,X		; FF FF DE FF
	sbc $77FF7E.l		; EF 7E FF 77
	sbc $FE771E.l,X		; FF 1E 77 FE
	jsr ($EFFE.w,X)		; FC FE EF
	inc $FFFF.w		; EE FF FF
	sbc $F7FFBF.l,X		; FF BF FF F7
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $F72EFD.l,X		; FF FD 2E F7
	adc [$EF.b],Y		; 77 EF
	jmp.w [$FFFD]		; DC FD FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $3BFBFF.l,X		; FF FF FB 3B
	adc $EFFBBF.l,X		; 7F BF FB EF
	rol $6F.b,X		; 36 6F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr L000000.w		; 20 00 00
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000010.w		; 20 10 00
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	jsl $00A800.l		; 22 00 A8 00
	brk $04.b		; 00 04
	ora $0010.w,X		; 1D 10 00
	eor ($45.b)		; 52 45
	bit $92.b,X		; 34 92
	ora ($61.b,X)		; 01 61
	cmp ($20.b,X)		; C1 20
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
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	bra -111.b		; 80 91
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	plp		; 28
	and $20.b		; 25 20
	jsr $6000.w		; 20 00 60
	ora $01.b		; 05 01
	cop $00.b		; 02 00
	php		; 08
	eor ($05.b,X)		; 41 05
	bra  36.b		; 80 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0C.b,X)		; 01 0C
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	rti		; 40

	plp		; 28
	ora $22.b		; 05 22
	sty $D2.b		; 84 D2
	ora #$10.b		; 09 10
	ora ($20.b,S),Y		; 13 20
	sta ($20.b)		; 92 20
	sty $08.b		; 84 08
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
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	rti		; 40

	jsr $1080.w		; 20 80 10
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	sta [$00.b],Y		; 97 00
	brk $41.b		; 00 41
	sbc [$21.b]		; E7 21
	bcs -124.b		; B0 84
	bvc -104.b		; 50 98
	asl A		; 0A
	cmp [$92.b]		; C7 92
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	rti		; 40

	brk $80.b		; 00 80
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	and $08.b		; 25 08
	brk $00.b		; 00 00
	ora #$84.b		; 09 84
	tsb $04.b		; 04 04
	brk $40.b		; 00 40
	pha		; 48
	adc $B6.b,S		; 63 B6
	ora $0808.w		; 0D 08 08
	sta $00.b		; 85 00
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
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	bcs -128.b		; B0 80
	brk $20.b		; 00 20
	jsr L000018.w		; 20 18 00
	bpl   2.b		; 10 02
	php		; 08
	jmp $5001.w		; 4C 01 50
	cop $21.b		; 02 21
	lsr $C4.b,X		; 56 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	jsr $0200.w		; 20 00 02
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	cop $02.b		; 02 02
	ora ($04.b,X)		; 01 04
	sta ($40.b,X)		; 81 40
	cop $23.b		; 02 23
	adc $28.b,S		; 63 28
	mvp $00,$85		; 44 85 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0820.w		; 20 20 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $A5.b		; 05 A5
	brk $42.b		; 00 42
	cop $00.b		; 02 00
	brk $42.b		; 00 42
	brk $60.b		; 00 60
	plp		; 28
	brk $CC.b		; 00 CC
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0320.w		; 0C 20 03
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	jsr L000101.w		; 20 01 01
	and ($20.b,X)		; 21 20
	tsb $48.b		; 04 48
	cpy #$1808.w		; C0 08 18
	cpy #$8201.w		; C0 01 82
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	mvn $90,$84		; 54 84 90
	bne -118.b		; D0 8A
	cpx #$00F1.w		; E0 F1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	jsr L000010.w		; 20 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sty $00.b		; 84 00
	brk $C0.b		; 00 C0
	jsr $0882.w		; 20 82 08
	bpl -108.b		; 10 94
	stz $A0.b		; 64 A0
	php		; 08
	bvc -119.b		; 50 89
	lda [$68.b]		; A7 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	jsr L008000.w		; 20 00 80
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $20.b		; 00 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	bit $00.b		; 24 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	rti		; 40

	cop $10.b		; 02 10
	brk $01.b		; 00 01
	jsl $809481.l		; 22 81 94 80
	brk $00.b		; 00 00
	adc ($70.b)		; 72 70
	bpl -64.b		; 10 C0
	dey		; 88
	php		; 08
	asl $C2.b		; 06 C2
	trb $4E.b		; 14 4E
	dex		; CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	php		; 08
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	cop $10.b		; 02 10
	cpy #$0010.w		; C0 10 00
	bra -112.b		; 80 90
	jsr $A952.w		; 20 52 A9
	eor $00.b		; 45 00
	cpy #$00C8.w		; C0 C8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $2C.b		; 04 2C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	bra -118.b		; 80 8A
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $10.b		; 00 10
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	and ($01.b,X)		; 21 01
	sta ($D4.b,X)		; 81 D4
	brk $90.b		; 00 90
	lda ($A0.b,X)		; A1 A0
	trb $0C.b		; 14 0C
	asl $A1.b		; 06 A1
	txa		; 8A
	cop $CA.b		; 02 CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	rti		; 40

	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	jsr L000000.w		; 20 00 00
	cop $01.b		; 02 01
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	cop $80.b		; 02 80
	and ($30.b,X)		; 21 30
	brk $81.b		; 00 81
	tsb $22.b		; 04 22
	bcc   4.b		; 90 04
	.db $82, $C7, $38		; 82 C7 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	jsr L008020.w		; 20 20 80
	brk $08.b		; 00 08
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	.db $82, $08, $40		; 82 08 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	lda #$0D.b		; A9 0D
	brk $58.b		; 00 58
	tya		; 98
	brk $31.b		; 00 31
	sty $0082.w		; 8C 82 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $40.b		; 04 40
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl  72.b		; 10 48
	php		; 08
	bra   4.b		; 80 04
	ldy #$A900.w		; A0 00 A9
	brk $20.b		; 00 20
	iny		; C8
	ora [$84.b]		; 07 84
	lda ($02.b,X)		; A1 02
	lsr A		; 4A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFF7FF.l,X		; FF FF F7 BF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF9FF.l		; EF FF F9 7F
	cmp $F75E88.l,X		; DF 88 5E F7
	adc $A32DF7.l,X		; 7F F7 2D A3
	sbc $FECAB7.l		; EF B7 CA FE
	sbc $FFFFCF.l,X		; FF CF FF FF
	plb		; AB
	adc $567E.w,X		; 7D 7E 56
	ldy $314D.w		; AC 4D 31
	sbc $7CFEEF.l,X		; FF EF FE 7C
	sbc ($AF.b)		; F2 AF
	sbc [$FF.b],Y		; F7 FF
	sbc $CBEAFF.l,X		; FF FF EA CB
	cmp $EF56DE.l		; CF DE 56 EF
	eor $ADFB.w,X		; 5D FB AD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $DFFFBF.l,X		; BF BF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc ($FB.b,X)		; E1 FB
	adc $E5FBF2.l		; 6F F2 FB E5
	stp		; DB
	xba		; EB
	lda $FFF7FB.l,X		; BF FB F7 FF
	ora $FFFFFB.l,X		; 1F FB FF FF
	sta $7FDFFF.l,X		; 9F FF DF 7F
	sbc $CFF7B6.l,X		; FF B6 F7 CF
	adc $F3FE.w,X		; 7D FE F3
	sbc $FFFFEE.l,X		; FF EE FF FF
	sbc $6DFF.w,X		; FD FF 6D
	adc $7DBFFB.l,X		; 7F FB BF 7D
	sbc $F7FBDB.l,X		; FF DB FB F7
	sbc $FF7B37.l,X		; FF 37 7B FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $DFFFFF.l,X		; FF FF FF DF
	lda $FCFF7F.l,X		; BF 7F FF FC
	tyx		; BB
	eor [$FB.b],Y		; 57 FB
	and ($BF.b)		; 32 BF
	inc $3CF7.w		; EE F7 3C
	and $BDDDAD.l,X		; 3F AD DD BD
	sbc ($FF.b)		; F2 FF
	sbc $FAFDF7.l,X		; FF F7 FD FA
	tda		; 7B
	ror A		; 6A
	adc [$3F.b],Y		; 77 3F
	rol $5F71.w,X		; 3E 71 5F
	lda $EC.b,S		; A3 EC
	jmp ($7DFF.w,X)		; 7C FF 7D
	sbc $F7DF7F.l,X		; FF 7F DF F7
	sbc [$FB.b]		; E7 FB
	sbc $EEA4E6.l		; EF E6 A4 EE
	lda $FF4E93.l,X		; BF 93 4E FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7EDF.l,X		; FF DF 7E FF
	sbc $9FDF.w,X		; FD DF 9F
	sbc $BEFDE7.l,X		; FF E7 FD BE
	inc $FDAE.w,X		; FE AE FD
	sbc $EFFFB7.l,X		; FF B7 FF EF
	inc $BF.b,X		; F6 BF
	sbc $FFFFEE.l,X		; FF EE FF FF
	lda [$FF.b],Y		; B7 FF
	sbc $F9FFFF.l,X		; FF FF FF F9
	adc $BEDDB6.l,X		; 7F B6 DD BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	lda $E7FFFD.l,X		; BF FD FF E7
	sbc $FFDFEF.l,X		; FF EF DF FF
	eor $FFFFBF.l,X		; 5F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FDBBDF.l,X		; FF DF BB FD
	sbc $DFFCBF.l,X		; FF BF FC DF
	lda $F6B7EE.l,X		; BF EE B7 F6
	tsx		; BA
	ror $35.b		; 66 35
	tsx		; BA
	bit $DC5D.w		; 2C 5D DC
	sbc $BDFE.w,X		; FD FE BD
	ror A		; 6A
	jsr ($1FFF.w,X)		; FC FF 1F
	lda ($CF.b,S),Y		; B3 CF
	adc $9DFA.w		; 6D FA 9D
	tad		; 5B
	and [$DF.b]		; 27 DF
	sbc $EFCFFF.l		; EF FF CF EF
	sbc ($E7.b,S),Y		; F3 E7
	sbc $FFBFEF.l		; EF EF BF FF
	pei ($AF.b)		; D4 AF
	jmp ($25E7.w)		; 6C E7 25
	cmp ($FF.b,S),Y		; D3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	xce		; FB
	inc $3BFF.w		; EE FF 3B
	sbc $DA.b,X		; F5 DA
	sbc $3DD7FD.l,X		; FF FD D7 3D
	sbc $BFFF.w,X		; FD FF BF
	sbc $FF.b,X		; F5 FF
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	dec $71EF.w		; CE EF 71
	lda $37F7.w,X		; BD F7 37
	jsr ($F7FF.w,X)		; FC FF F7
	sbc $FDFFF7.l		; EF F7 FF FD
	sbc $9FBBF7.l,X		; FF F7 BB 9F
	dec $FEEF.w,X		; DE EF FE
	sbc $FFDFFA.l,X		; FF FA DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFF.w,X		; DD FF FF
	sbc $FFEFBF.l,X		; FF BF EF FF
	sbc $FEEFFF.l		; EF FF EF FE
	xce		; FB
	ror $FFE7.w,X		; 7E E7 FF
	cmp $7FB7FF.l		; CF FF B7 7F
	adc $EB775E.l,X		; 7F 5E 77 EB
	cmp [$6B.b],Y		; D7 6B
	dec $FF9B.w,X		; DE 9B FF
	cmp $DFEF6B.l,X		; DF 6B EF DF
	cmp $3FFEBC.l,X		; DF BC FE 3F
	eor $2EB4.w,X		; 5D B4 2E
	sbc #$E2.b		; E9 E2
	phx		; DA
	lda [$FE.b],Y		; B7 FE
	sbc $E6BFFF.l,X		; FF FF BF E6
	tda		; 7B
	wai		; CB
	ldx $DFDF.w		; AE DF DF
	ldx $DE7F.w		; AE 7F DE
	sbc $FF3630.l,X		; FF 30 36 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF7B.l,X		; FF 7B FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEF.w,X		; FD EF FF
	adc [$9D.b],Y		; 77 9D
	phx		; DA
	xce		; FB
	inc $F7.b,X		; F6 F7
	sbc $FB7FFD.l,X		; FF FD 7F FB
	xce		; FB
	sbc [$FF.b]		; E7 FF
	sta $FFFFEF.l,X		; 9F EF FF FF
	sbc $BF5FDF.l,X		; FF DF 5F BF
	cmp $7CB7FF.l		; CF FF B7 7C
	sbc $FFB33F.l,X		; FF 3F B3 FF
	adc $D7FFFF.l,X		; 7F FF FF D7
	sbc $FD7FEB.l,X		; FF EB 7F FD
	stp		; DB
	sbc $C6E4DF.l,X		; FF DF E4 C6
	lda $7F.b,S		; A3 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $F7FBFA.l,X		; FF FA FB F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $B5FFFF.l,X		; FF FF FF B5
	ror $C9DD.w,X		; 7E DD C9
	sta ($BF.b,S),Y		; 93 BF
	ror $F679.w		; 6E 79 F6
	sbc $5A7E7B.l,X		; FF 7B 7E 5A
	ldx $6DF3.w,Y		; BE F3 6D
	ldy $FFED.w,X		; BC ED FF
	eor $1E8DFE.l,X		; 5F FE 8D 1E
	eor $EF3C.w,Y		; 59 3C EF
	lda $FFF6FE.l		; AF FE F6 FF
	cmp $F77BBF.l		; CF BF 7B F7
	sbc $FFFAFF.l,X		; FF FF FA FF
	sta ($D3.b,S),Y		; 93 D3
	jmp ($FFFF.w,X)		; 7C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFBFFF.l,X		; FF FF BF BF
	sta [$FF.b],Y		; 97 FF
	sbc [$FE.b],Y		; F7 FE
	sbc $FD.b		; E5 FD
	sbc $6EFFFF.l,X		; FF FF FF 6E
	sbc $FEFB.w,X		; FD FB FE
	eor [$FB.b],Y		; 57 FB
	sbc $F7FF7F.l,X		; FF 7F FF F7
	sbc $EFFDDD.l,X		; FF DD FD EF
	sbc [$9F.b],Y		; F7 9F
	sbc $D5E5E3.l,X		; FF E3 E5 D5
	sbc [$7F.b],Y		; F7 7F
	xce		; FB
	sbc $F6FBE7.l,X		; FF E7 FB F6
	eor $FF7FF7.l,X		; 5F F7 7F FF
	jmp.w [$B7EF]		; DC EF B7
	beq  -5.b		; F0 FB
	cmp $FFFFFF.l		; CF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $BFFFFF.l,X		; BF FF FF BF
	sbc $FFDFBE.l		; EF BE DF FF
	sbc $FFBED7.l,X		; FF D7 BE FF
	inc $FBEF.w,X		; FE EF FB
	and $4FE7.w,X		; 3D E7 4F
	sbc [$63.b]		; E7 63
	adc $CABE.w,X		; 7D BE CA
	cmp $BEDC91.l		; CF 91 DC BE
	adc $77F7B7.l,X		; 7F B7 F7 77
	sbc $FFF23F.l,X		; FF 3F F2 FF
	plb		; AB
	inc $FABC.w,X		; FE BC FA
	ply		; 7A
	sbc $CFFF.w,Y		; F9 FF CF
	and $FEFFDF.l,X		; 3F DF FF FE
	eor $E6E5FA.l,X		; 5F FA E5 E6
	lda $BDCA77.l,X		; BF 77 CA BD
	sbc [$54.b],Y		; F7 54
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $D7FFFF.l		; CF FF FF D7
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $BFFFF7.l,X		; 3F F7 FF BF
	sbc $D9EE7C.l,X		; FF 7C EE D9
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $739FF3.l		; 2F F3 9F 73
	lda $7B7F.w,X		; BD 7F 7B
	adc $DD.b,X		; 75 DD
	inc $7F.b,X		; F6 7F
	sbc ($7D.b,S),Y		; F3 7D
	sbc $FADF.w,X		; FD DF FA
	sbc [$7F.b],Y		; F7 7F
	cmp $FD.b,X		; D5 FD
	sbc $E375BF.l,X		; FF BF 75 E3
	plx		; FA
	jsr ($BFB7.w,X)		; FC B7 BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFEBF.l,X		; FF BF FE FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $7D77FB.l,X		; FF FB 77 7D
	sbc $8BEDDF.l		; EF DF ED 8B
	sbc [$6B.b],Y		; F7 6B
	sta $B78EFB.l		; 8F FB 8E B7
	sbc $F75BC9.l		; EF C9 5B F7
	sbc $E63F9F.l,X		; FF 9F 3F E6
	lsr $E3FF.w,X		; 5E FF E3
	adc $488867.l		; 6F 67 88 48
	tda		; 7B
	bcc  69.b		; 90 45
	and $BFFFFE.l,X		; 3F FE FF BF
	dec $F1C9.w,X		; DE C9 F1
	lda [$7D.b],Y		; B7 7D
.ACCU 16
	rep #$E7		; C2 E7
	sbc [$3C.b]		; E7 3C
	sbc $BB33.w,X		; FD 33 BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $DFF7.w,X		; FE F7 DF
	sbc $FEEFFF.l,X		; FF FF EF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	inc $A5.b,X		; F6 A5
	cmp [$3F.b]		; C7 3F
	ldx $F6.b,Y		; B6 F6
	sta ($B7.b,S),Y		; 93 B7
	tda		; 7B
	sbc $FDEFFE.l,X		; FF FE EF FD
	adc $FBBBD3.l		; 6F D3 BB FB
	adc $AF7FB7.l,X		; 7F B7 7F AF
	and $1BBD6F.l,X		; 3F 6F BD 1B
	cmp $FFBFFF.l,X		; DF FF BF FF
	xce		; FB
	eor $FBFEFF.l,X		; 5F FF FE FB
	lda $FF1D7B.l,X		; BF 7B 1D FF
	adc $FF77FB.l,X		; 7F FB 77 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFEFDF.l,X		; FF DF EF EF
	inc $FFFF.w,X		; FE FF FF
	sbc $E7E3.w,X		; FD E3 E7
	sbc [$FB.b],Y		; F7 FB
	lda $15D7FD.l,X		; BF FD D7 15
	tsa		; 3B
	sta $D7D5AB.l		; 8F AB D5 D7
	sta [$DF.b]		; 87 DF
	sbc $D737DF.l,X		; FF DF 37 D7
	sbc [$F1.b],Y		; F7 F1
	sbc $B3AC.w,X		; FD AC B3
	cpx $FE.b		; E4 FE
	sbc [$3D.b],Y		; F7 3D
	sbc $F933.w		; ED 33 F9
	adc $FF6FB7.l,X		; 7F B7 6F FF
	lda ($FD.b),Y		; B1 FD
	plx		; FA
	ldx $DF.b,Y		; B6 DF
	tda		; 7B
	lsr $EEBB.w,X		; 5E BB EE
	sbc [$7C.b],Y		; F7 7C
	inc $FFFF.w		; EE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFEF.l,X		; FF EF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	tda		; 7B
	sbc $FDDF.w,X		; FD DF FD
	sbc ($FF.b,S),Y		; F3 FF
	ror $EF7F.w,X		; 7E 7F EF
	sbc [$5A.b],Y		; F7 5A
	phx		; DA
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FF.b,X		; F5 FF
	sbc $FBFF.w,X		; FD FF FB
	adc $7F7F42.l,X		; 7F 42 7F 7F
	sbc $FFFF.w,X		; FD FF FF
	lda $F57E0F.l,X		; BF 0F 7E F5
	tyx		; BB
	inc $EDFD.w,X		; FE FD ED
	ldy $6D.b,X		; B4 6D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($A0.b)		; 72 A0
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	jsr $1080.w		; 20 80 10
	bra   0.b		; 80 00
	cop $B0.b		; 02 B0
	cop $04.b		; 02 04
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $50.b		; 00 50
	bvc -120.b		; 50 88
	brk $01.b		; 00 01
	brk $D1.b		; 00 D1
	ora $884D.w		; 0D 4D 88
	brk $1C.b		; 00 1C
	txa		; 8A
	sta $38.b,X		; 95 38
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L004088.w		; 20 88 40
	brk $00.b		; 00 00
	rti		; 40

	brk $10.b		; 00 10
	sta ($A0.b,X)		; 81 A0
	ora $00.b,X		; 15 00
	ora #$0004.w		; 09 04 00
	bpl -62.b		; 10 C2
	bpl -92.b		; 10 A4
	txs		; 9A
	and $10.b,X		; 35 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $88.b		; 02 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra -94.b		; 80 A2
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	sta ($02.b,X)		; 81 02
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	.db $82, $00, $00		; 82 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	cop $20.b		; 02 20
	jsr $5800.w		; 20 00 58
	tsb $2000.w		; 0C 00 20
	ora [$40.b],Y		; 17 40
	cpx #$0EC1.w		; E0 C1 0E
	asl $8E.b,X		; 16 8E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	jsr $2C00.w		; 20 00 2C
	brk $28.b		; 00 28
	rti		; 40

	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra   4.b		; 80 04
	php		; 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cop $00.b		; 02 00
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	php		; 08
	ora ($04.b)		; 12 04
	tsb $0020.w		; 0C 20 00
	jsr $9C80.w		; 20 80 9C
	bit $51.b		; 24 51
	asl A		; 0A
	eor ($99.b)		; 52 99
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
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rti		; 40

	pha		; 48
	brk $80.b		; 00 80
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	jsr $0884.w		; 20 84 08
	tsb $98.b		; 04 98
	bra   3.b		; 80 03
	jsr $4440.w		; 20 40 44
	bit $0E.b		; 24 0E
	bcc  37.b		; 90 25
	beq  51.b		; F0 33
	clc		; 18
	ldx $09C6.w		; AE C6 09
	and $E0.b,S		; 23 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $80.b		; 02 80
	bpl   2.b		; 10 02
	brk $80.b		; 00 80
	php		; 08
	sty $00.b		; 84 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $20.b		; 00 20
	asl A		; 0A
	bvc  17.b		; 50 11
	cop $C4.b		; 02 C4
	pha		; 48
	bra -60.b		; 80 C4
	pha		; 48
	bpl -64.b		; 10 C0
	ora ($E1.b,X)		; 01 E1
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
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	jsr L000000.w		; 20 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  80.b		; 80 50
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	bra   1.b		; 80 01
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	php		; 08
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	.db $42, $10		; 42 10
	bra  96.b		; 80 60
	lda ($01.b),Y		; B1 01
	brk $81.b		; 00 81
	ldy #$8860.w		; A0 60 88
	jsr $0507.w		; 20 07 05
	php		; 08
	jsr $9828.w		; 20 28 98
	ldy #$A003.w		; A0 03 A0
	bit #$0002.w		; 89 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bvc   4.b		; 50 04
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora ($04.b,X)		; 01 04
	ora ($28.b),Y		; 11 28
	ora ($01.b,X)		; 01 01
	lsr A		; 4A
	sta ($24.b)		; 92 24
	pla		; 68
	cpy #$F204.w		; C0 04 F2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sta $C2.b,S		; 83 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bra  36.b		; 80 24
	jsr L000002.w		; 20 02 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	ora ($60.b,X)		; 01 60
	brk $12.b		; 00 12
	ora ($54.b,X)		; 01 54
	phd		; 0B
	tsb $8D.b		; 04 8D
	bmi  21.b		; 30 15
	ora ($68.b,X)		; 01 68
	adc $AC03.w		; 6D 03 AC
	jsr ($00A4.w,X)		; FC A4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	bra  16.b		; 80 10
	rti		; 40

	brk $60.b		; 00 60
	brk $06.b		; 00 06
	cpy #$0880.w		; C0 80 08
	cpy #$4018.w		; C0 18 40
	mvp $08,$80		; 44 80 08
	brk $98.b		; 00 98
	cpy #$4880.w		; C0 80 48
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $88.b		; 00 88
	jsr $0201.w		; 20 01 02
	ora ($00.b,X)		; 01 00
	tay		; A8
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $01.b		; 00 01
	pla		; 68
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	tsb $80.b		; 04 80
	ora ($A1.b,X)		; 01 A1
	plp		; 28
	tda		; 7B
	clv		; B8
	mvp $31,$00		; 44 00 31
	jsr L008204.w		; 20 04 82
	bvc -112.b		; 50 90
	pla		; 68
	sta ($00.b)		; 92 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	jsr $2400.w		; 20 00 24
	brk $02.b		; 00 02
	rti		; 40

	brk $00.b		; 00 00
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  12.b		; 10 0C
	ldy $80.b		; A4 80
	brk $80.b		; 00 80
	bcc  33.b		; 90 21
	brk $01.b		; 00 01
	brk $81.b		; 00 81
	ora $A080.w,Y		; 19 80 A0
	clc		; 18
	php		; 08
	ora $42.b,S		; 03 42
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	php		; 08
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	bpl -128.b		; 10 80
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $03.b		; 00 03
	tsb $5A.b		; 04 5A
	jsr L008122.w		; 20 22 81
	asl $C0.b		; 06 C0
	plp		; 28
	ldy $08.b		; A4 08
	ldy #$0041.w		; A0 41 00
	mvn $00,$A8		; 54 A8 00
	eor $13.b		; 45 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $21.b		; 02 21
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	and ($02.b,X)		; 21 02
	rti		; 40

	php		; 08
	brk $45.b		; 00 45
	ora [$41.b]		; 07 41
	jsr $0CB0.w		; 20 B0 0C
	rep #$00		; C2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	jsr L000000.w		; 20 00 00
	jsr L000000.w		; 20 00 00
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	dey		; 88
	bvc  32.b		; 50 20
	ldx #$88C8.w		; A2 C8 88
	jsl $028C10.l		; 22 10 8C 02
	mvp $A0,$2C		; 44 2C A0
	bne   2.b		; D0 02
	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	php		; 08
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	ora ($20.b),Y		; 11 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	cop $00.b		; 02 00
	bcc  65.b		; 90 41
	bit $50.b		; 24 50
	tsb $A0.b		; 04 A0
	ora ($04.b,X)		; 01 04
	ora ($80.b)		; 12 80
	cop $50.b		; 02 50
	bit $A06C.w,X		; 3C 6C A0
	.db $82, $51, $D0		; 82 51 D0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFD.l,X		; FF FD FF FD
	adc $FFEFFF.l,X		; 7F FF EF FF
	sbc [$BD.b],Y		; F7 BD
	sbc $D7FFFE.l,X		; FF FE FF D7
	sbc $7A.b,X		; F5 7A
	lda $BD7EEF.l,X		; BF EF 7E BD
	cmp ($8D.b,S),Y		; D3 8D
	tyx		; BB
	and $F3FF.w,X		; 3D FF F3
	sbc $BDEFF9.l		; EF F9 EF BD
	dec $FFF4.w		; CE F4 FF
	sbc $F7F9ED.l,X		; FF ED F9 F7
	sbc [$EE.b],Y		; F7 EE
	cmp $FFFF.w,X		; DD FF FF
	sbc $FFE6BF.l,X		; FF BF E6 FF
	sbc $FF3FDF.l,X		; FF DF 3F FF
	and [$65.b]		; 27 65
	plx		; FA
	ldx $BBFD.w,Y		; BE FD BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEEFFF.l,X		; FF FF EF FE
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc $FF5FF7.l,X		; FF F7 5F FF
	cmp $FF4FFB.l,X		; DF FB 4F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7BFB7.l,X		; FF B7 BF F7
	lda $FFFBFB.l,X		; BF FB FB FF
	sbc [$CD.b]		; E7 CD
	inc $FFF5.w,X		; FE F5 FF
	xce		; FB
	inc $FBF6.w,X		; FE F6 FB
	sbc $CFCFB7.l		; EF B7 CF CF
	sbc $BEFEBF.l,X		; FF BF FE BE
	eor $FFEFF7.l,X		; 5F F7 EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $F7FFFF.l		; EF FF FF F7
	lda #$EEF3.w		; A9 F3 EE
	and $D7EB7F.l,X		; 3F 7F EB D7
	inc $FDCB.w,X		; FE CB FD
	lda #$FFBF.w		; A9 BF FF
	sbc $FFFDDD.l,X		; FF DD FD FF
	sbc $F2FD.w,X		; FD FD F2
	cmp $F0BFEB.l,X		; DF EB BF F0
	cpx $DE.b		; E4 DE
	stp		; DB
	sbc $3F7DDF.l,X		; FF DF 7D 3F
	xce		; FB
	ldx $F6FF.w,Y		; BE FF F6
	cpx $7D55.w		; EC 55 7D
	sta $9F967F.l,X		; 9F 7F 96 9F
	cmp ($FF.b,S),Y		; D3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFD7.l,X		; FF D7 FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	txy		; 9B
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FF3BBF.l,X		; FF BF 3B FF
	cmp $FFFA.w,X		; DD FA FF
	sbc $BEFFFF.l,X		; FF FF FF BE
	lda $BFCFBF.l,X		; BF BF CF BF
	sbc $75DF.w,X		; FD DF 75
	sbc $BDE7FC.l,X		; FF FC E7 BD
	inc $FFFF.w,X		; FE FF FF
	sbc $F5F7BF.l,X		; FF BF F7 F5
	sbc $FFFFEF.l,X		; FF EF FF FF
	inc $7FFF.w,X		; FE FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF6FBF.l,X		; FF BF 6F FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDDFFA.l,X		; FF FA DF FD
	sbc $F7DDFE.l,X		; FF FE DD F7
	sbc $6EF7.w		; ED F7 6E
	txs		; 9A
	ldy $EF.b		; A4 EF
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $87FAFF.l,X		; FF FF FA 87
	sbc $B677B5.l		; EF B5 77 B6
	xce		; FB
	pea $7DAF.w		; F4 AF 7D
	sbc $FFFFCF.l,X		; FF CF FF FF
	sbc $6CB6FF.l,X		; FF FF B6 6C
	adc $F6D3FE.l,X		; 7F FE D3 F6
	ror $D52D.w		; 6E 2D D5
	clv		; B8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFF.w,X		; FD FF BF
	cmp $EBE7F9.l,X		; DF F9 E7 EB
	sbc $F7FD.w,X		; FD FD F7
	stp		; DB
	sbc $B6FBF7.l,X		; FF F7 FB B6
	cmp [$FF.b],Y		; D7 FF
	xce		; FB
	sbc $EFFF7F.l,X		; FF 7F FF EF
	sbc $EFB77E.l,X		; FF 7E B7 EF
	sbc $DFFFFD.l,X		; FF FD FF DF
	sta $FFED.w,X		; 9D ED FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EBFDBE.l,X		; FF BE FD EB
	sbc $FFEFDB.l		; EF DB EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFBF.l,X		; FF BF FF FD
	sbc $FD7BFF.l,X		; FF FF 7B FD
	sbc $FEFDEA.l,X		; FF EA FD FE
	sbc $1DAF7E.l,X		; FF 7E AF 1D
	cmp [$7F.b],Y		; D7 7F
	xce		; FB
	jsr ($B44F.w,X)		; FC 4F B4
	sbc $FFFE.w,X		; FD FE FF
	cmp $BFFFFF.l,X		; DF FF FF BF
	ldx $77F6.w,Y		; BE F6 77
	and [$D9.b]		; 27 D9
	tsx		; BA
	lda [$67.b]		; A7 67
	xce		; FB
	tsx		; BA
	sbc $FFF7FF.l,X		; FF FF F7 FF
	adc $FCFF77.l,X		; 7F 77 FF FC
	xce		; FB
	lda $FBAB.w,X		; BD AB FB
	sbc $FDD7BF.l,X		; FF BF D7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFB7FD.l,X		; FF FD B7 FF
	sbc $FF3F7F.l,X		; FF 7F 3F FF
	ply		; 7A
	sbc $4FE7F6.l,X		; FF F6 E7 4F
	xce		; FB
	adc $DFFFF7.l,X		; 7F F7 FF DF
	sbc $F7FFFF.l,X		; FF FF FF F7
	cmp $FFFFD7.l,X		; DF D7 FF FF
	stz $BF.b,X		; 74 BF
	cmp $6F0F77.l		; CF 77 0F 6F
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $D8F7.w,X		; FE F7 D8
	sbc $7FF827.l,X		; FF 27 F8 7F
	cmp [$EF.b],Y		; D7 EF
	adc $FFE7BB.l,X		; 7F BB E7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFE.l,X		; FF FE FF FB
	adc $77FFFD.l,X		; 7F FD FF 77
	lda $C65FF6.l,X		; BF F6 5F C6
	sbc $EBFF7B.l,X		; FF 7B FF EB
	cmp ($55.b)		; D2 55
	sbc $EFBFBF.l,X		; FF BF BF EF
	sbc $FFFF.w,X		; FD FF FF
	dec $E7FB.w,X		; DE FB E7
	plx		; FA
	sbc $3CD7FC.l		; EF FC D7 3C
	cpx $DE.b		; E4 DE
	sbc $5EFFFB.l,X		; FF FB FF 5E
	sbc $9BFF77.l,X		; FF 77 FF 9B
	plx		; FA
	lsr $EF.b,X		; 56 EF
	cmp $7CC7EB.l,X		; DF EB C7 7C
	rts		; 60

	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	lda [$FE.b],Y		; B7 FE
	cmp $FFFBF5.l,X		; DF F5 FB FF
	lda $FF7FFF.l,X		; BF FF 7F FF
	sbc $FFD7EF.l,X		; FF EF D7 FF
	cpy $7F.b		; C4 7F
	sbc $FFB7FF.l,X		; FF FF B7 FF
	adc $DFFF77.l,X		; 7F 77 FF DF
	sbc $FFEBF9.l,X		; FF F9 EB FF
	xce		; FB
	sbc $D4FF.w,X		; FD FF D4
	sbc $FFFFFD.l,X		; FF FD FF FF
	stp		; DB
	eor $FF7BBF.l,X		; 5F BF 7B FF
	adc $7FFF7B.l,X		; 7F 7B FF 7F
	inc $7F.b,X		; F6 7F
	adc [$FF.b]		; 67 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFBA.w,X		; FD BA FF
	cmp $FFFD.w,X		; DD FD FF
	sbc $AFFFBF.l,X		; FF BF FF AF
	ply		; 7A
	rtl		; 6B

	eor $FCBEFE.l,X		; 5F FE BE FC
	cmp $FFCFF5.l		; CF F5 CF FF
	sbc $CDEEB7.l,X		; FF B7 EE CD
	cmp $FF5FFF.l,X		; DF FF 5F FF
	inc $FDFE.w,X		; FE FE FD
	sbc $3FC7BF.l		; EF BF C7 3F
	sbc $FDBFF7.l,X		; FF F7 BF FD
	lda $BF757F.l,X		; BF 7F 75 BF
	sbc $E75FFE.l,X		; FF FE 5F E7
	sta $3FBD0E.l,X		; 9F 0E BD 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FDFFFE.l,X		; 7F FE FF FD
	cmp $FFDF.w,X		; DD DF FF
	adc $FF97.w,X		; 7D 97 FF
	adc $FA5FBB.l		; 6F BB 5F FA
	lda $FF25.w,X		; BD 25 FF
	sbc $D7FFFF.l,X		; FF FF FF D7
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $EFFF7F.l,X		; BF 7F FF EF
	sbc $EFFDFF.l,X		; FF FF FD EF
	sbc $F6FCFF.l,X		; FF FF FC F6
	sbc $FFE3BF.l		; EF BF E3 FF
	adc [$FF.b],Y		; 77 FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $DFFFFF.l,X		; FF FF FF DF
	plx		; FA
	sbc $FDBF.w,X		; FD BF FD
	adc $FF97DE.l,X		; 7F DE 97 FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $F3F6FC.l,X		; FF FC F6 F3
	ldx $67.b,Y		; B6 67
	ora [$BF.b]		; 07 BF
	lda $76FFFF.l,X		; BF FF FF 76
	sbc $ECFF.w,X		; FD FF EC
	lda $DFD71F.l,X		; BF 1F D7 DF
	jsr ($87BF.w,X)		; FC BF 87
	xba		; EB
	sbc $4FFFEE.l,X		; FF EE FF 4F
	jsr ($1FEF.w,X)		; FC EF 1F
	sbc [$F3.b],Y		; F7 F3
	txy		; 9B
	adc $8EC77B.l		; 6F 7B C7 8E
	xba		; EB
	ora $FFFF.w,X		; 1D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FE.l,X		; FF FE F7 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc [$FF.b],Y		; F7 FF
	adc $FEFFD3.l,X		; 7F D3 FF FE
	inc $FDE6.w,X		; FE E6 FD
	sbc $FEAFEF.l,X		; FF EF AF FE
	sbc [$FF.b],Y		; F7 FF
	dec $FB.b,X		; D6 FB
	sbc $FBAF.w,X		; FD AF FB
	sbc $EAFDF7.l		; EF F7 FD EA
	tas		; 1B
	sbc $FEFF.w,Y		; F9 FF FE
	cmp [$F5.b],Y		; D7 F5
	sbc $F7FFF5.l,X		; FF F5 FF F7
	sbc $D3AFFD.l,X		; FF FD AF D3
	cmp $B5EBF7.l,X		; DF F7 EB B5
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEEFF.l,X		; FF FF EE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $F7F9FB.l,X		; FF FB F9 F7
	inc $FFFF.w		; EE FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $BF7F.w		; ED 7F BF
	xba		; EB
	sbc ($F7.b,S),Y		; F3 F7
	sta $FF6CF7.l		; 8F F7 6C FF
	sbc $BFFF.w,X		; FD FF BF
	sbc [$FB.b],Y		; F7 FB
	jsr ($7F4E.w,X)		; FC 4E 7F
	ror $FFEF.w,X		; 7E EF FF
	txy		; 9B
	sbc $DFAEA2.l,X		; FF A2 AE DF
	lda $FFFF.w,X		; BD FF FF
	lda $BBDFFF.l,X		; BF FF DF BB
	sbc $F9B7FF.l		; EF FF B7 F9
	dex		; CA
	sbc $7EFD.w,X		; FD FD 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $F7FFB9.l,X		; FF B9 FF F7
	inc $EFFF.w,X		; FE FF EF
	cmp $F7D7FB.l,X		; DF FB D7 F7
	sbc [$FB.b],Y		; F7 FB
	sbc $25.b,S		; E3 25
	xce		; FB
	cmp $BDFFFF.l,X		; DF FF FF BD
	sbc $EFEFFF.l,X		; FF FF EF EF
	lda $DFFFFD.l,X		; BF FD FF DF
	ldx $BBFC.w,Y		; BE FC BB
	sbc #$FFFF.w		; E9 FF FF
	sbc $FEFB.w		; ED FB FE
	xce		; FB
	sbc [$F3.b],Y		; F7 F3
	tyx		; BB
	sbc $F67B3F.l,X		; FF 3F 7B F6
	plb		; AB
	stp		; DB
	sta $FFFFFF.l,X		; 9F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	ora ($40.b),Y		; 11 40
	and ($00.b,X)		; 21 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	tsb $40.b		; 04 40
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	ldy #$9800.w		; A0 00 98
	jsr $600A.w		; 20 0A 60
	rti		; 40

	brk $50.b		; 00 50
	eor ($80.b),Y		; 51 80
	eor ($43.b)		; 52 43
	trb $0A.b		; 14 0A
	clc		; 18
	ora [$10.b]		; 07 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($C0.b,X)		; 01 C0
	brk $01.b		; 00 01
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
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	lsr A		; 4A
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	brk $44.b		; 00 44
	brk $18.b		; 00 18
	iny		; C8
	tsb $28.b		; 04 28
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	php		; 08
	plp		; 28
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne -128.b		; D0 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	jsr L000101.w		; 20 01 01
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	trb $00.b		; 14 00
	bcc -96.b		; 90 A0
	tsb $40.b		; 04 40
	sta $94.b		; 85 94
	rti		; 40

	cpy #$0880.w		; C0 80 08
	rti		; 40

	php		; 08
	eor ($61.b),Y		; 51 61
	dey		; 88
	rti		; 40

	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $3000.w		; 20 00 30
	bra   0.b		; 80 00
	jsr $2208.w		; 20 08 22
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	plp		; 28
	asl $03.b		; 06 03
	jsl $180088.l		; 22 88 00 18
	eor ($00.b,X)		; 41 00
	asl $84.b		; 06 84
	and $88.b,S		; 23 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	bpl  16.b		; 10 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	brk $20.b		; 00 20
	ora $00.b,S		; 03 00
	eor ($00.b,X)		; 41 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora #$4000.w		; 09 00 40
	brk $11.b		; 00 11
	brk $A4.b		; 00 A4
	jsr $0441.w		; 20 41 04
	asl $54.b		; 06 54
	ldx #$0021.w		; A2 21 00
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
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	jsr $6761.w		; 20 61 67
	cmp #$0400.w		; C9 00 04
	mvp $00,$A8		; 44 A8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	eor ($0A.b,X)		; 41 0A
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	bra   9.b		; 80 09
	cop $80.b		; 02 80
	bpl   8.b		; 10 08
	ora ($0B.b)		; 12 0B
	ora $8818.w,Y		; 19 18 88
	cpy $8897.w		; CC 97 88
	jsl $00009C.l		; 22 9C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ora $20.b		; 05 20
	brk $90.b		; 00 90
	.db $42, $00		; 42 00
	jmp $0220.w		; 4C 20 02
	tsb $80.b		; 04 80
	bpl  16.b		; 10 10
	pha		; 48
	bvs  64.b		; 70 40
	eor $10.b,S		; 43 10
	.db $82, $21, $00		; 82 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	and #$0001.w		; 29 01 00
	rti		; 40

	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	cpy #$0000.w		; C0 00 00
	bpl  40.b		; 10 28
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $80.b		; 00 80
	brk $01.b		; 00 01
	php		; 08
	brk $C0.b		; 00 C0
	tsb $10.b		; 04 10
	jsr $8A00.w		; 20 00 8A
	tsb $20.b		; 04 20
	ldx #$0040.w		; A2 40 00
	cli		; 58
	bra   8.b		; 80 08
	tay		; A8
	eor ($CB.b,X)		; 41 CB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $11.b		; 00 11
	php		; 08
	php		; 08
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	rti		; 40

	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $40.b		; 00 40
	jsr $0200.w		; 20 00 02
	bne  16.b		; D0 10
	sta ($8E.b,X)		; 81 8E
	cpy $81.b		; C4 81
	cop $08.b		; 02 08
	ora $00.b,S		; 03 00
	ora ($83.b)		; 12 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	sta ($8C.b,X)		; 81 8C
	jsr $0800.w		; 20 00 08
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	rti		; 40

	brk $00.b		; 00 00
	and ($04.b,X)		; 21 04
	brk $00.b		; 00 00
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $84.b		; 00 84
	sty $08.b		; 84 08
	ora ($00.b,X)		; 01 00
	.db $82, $60, $00		; 82 60 00
	tsb $48.b		; 04 48
	bvc   0.b		; 50 00
	mvp $90,$80		; 44 80 90
	brk $02.b		; 00 02
	sta ($00.b,X)		; 81 00
	brk $30.b		; 00 30
	dey		; 88
	and $90.b,S		; 23 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	tsb $0000.w		; 0C 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	and ($08.b,X)		; 21 08
	brk $00.b		; 00 00
	dey		; 88
	ora ($80.b),Y		; 11 80
	cpy #$0800.w		; C0 00 08
	brk $40.b		; 00 40
	beq   4.b		; F0 04
	asl $88.b,X		; 16 88
	sta [$00.b],Y		; 97 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	.db $82, $05, $09		; 82 05 09
	brk $01.b		; 00 01
	rti		; 40

	ldy #$000A.w		; A0 0A 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	ora ($A8.b,X)		; 01 A8
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	ldy #$0050.w		; A0 50 00
	jsr $3095.w		; 20 95 30
	rti		; 40

	tsb $85.b		; 04 85
	tsb $0D84.w		; 0C 84 0D
	.db $62, $80, $02		; 62 80 02
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	sta ($08.b,X)		; 81 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	cop $29.b		; 02 29
	bra  24.b		; 80 18
	ldy $84.b		; A4 84
	ora ($20.b)		; 12 20
	stz $0905.w		; 9C 05 09
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	jsr $0008.w		; 20 08 00
	php		; 08
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	cop $10.b		; 02 10
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $11.b		; 04 11
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	jsr $0680.w		; 20 80 06
	ora ($00.b),Y		; 11 00
	rts		; 60

	ora #$8098.w		; 09 98 80
	lda [$94.b]		; A7 94
	bra  44.b		; 80 2C
	rts		; 60

	trb $DC.b		; 14 DC
L007F80:
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
L007FA6:
	brk $00.b
	brk $00.b
L007FAA:
	brk $00.b
	brk $00.b
L007FAE:
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $40.b
	brk $08.b
	bpl L007FC8.b
L007FC8:
	brk $00.b
	bra L007FCC.b
L007FCC:
	pha
	bpl L007FCF.b
L007FCF:
	jsr L000000.w
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	jsr L004020.w
	rti

	bra -127.b		; 80 81
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	brk $20.b		; 00 20
	sty $04.b		; 84 04
	trb $2D.b		; 14 2D
	brk $80.b		; 00 80
	.db $82, $43, $20		; 82 43 20
	bra   0.b		; 80 00
	rti		; 40

	.db $BC		; Opcode overrunning section
.BASE $80
L808000:
.BASE $00
L008000:
.ACCU 16
.INDEX 16
	rep #$30
L008002:
	phk
	plb
	ldx #$1F00.w
	ldy #$8134.w
L00800A:
	lda $00.b,X
	cmp $0000.w,Y
	bne L008033.b
	inx
	inx
	iny
	iny
	cpy #$8144.w
	bne L00800A.b
	ldx #$1FF0.w
	ldy #$8134.w
L008020:
	lda $00.b,X
	cmp $0000.w,Y
	bne L008033.b
	inx
	inx
	iny
	iny
	cpy #$8144.w
	bne L008020.b
	jmp L0080DC.w
L008033:
	phb
	stz $00.b
	ldx #$0000.w
	ldy #$0001.w
	lda #$1FFE.w
	mvn $00,$00
	lda #$0000.w
	sta $7F0000.l
	ldx #$0000.w
	ldy #$0001.w
	lda #$F7FE.w
	mvn $7F,$7F
	plb
	lda #$4000.w
	sta $1F10.w
	sta $1F1C.w
	lda #$0040.w
	sta $1F12.w
	sta $1F1E.w
	lda #$8000.w
	sta $1F14.w
	sta $1F20.w
	lda #$0080.w
	sta $1F16.w
	sta $1F22.w
	lda #$0020.w
	sta $1F18.w
.BASE $80
L808080:
.BASE $00
L008080:
	sta $1F24.w
	lda #$0010.w
	sta $1F1A.w
	sta $1F26.w
	lda #$03E7.w
	sta $1F30.w
	sta $1F32.w
	sta $1F34.w
	sta $1F36.w
	sta $1F38.w
	sta $1F3A.w
	sta $1F3C.w
	sta $1F3E.w
	sta $1F40.w
.BASE $C0
LC080AA:
.BASE $00
L0080AA:
	sta $1F42.w
	sta $1F44.w
	sta $1F46.w
	sta $1F48.w
	sta $1F4A.w
	sta $1F4C.w
	lda #$0008.w
	sta $1F5A.w
	phb
	ldx #$8134.w
	ldy #$1F00.w
	lda #$000F.w
	mvn $80,$00
	ldx #$8134.w
	ldy #$1FF0.w
	lda #$000F.w
	mvn $80,$00
	plb
L0080DC:
.ACCU 8
	sep #$20
	lda #$54.b
.BASE $C0
LC080E0:
.BASE $00
L0080E0:
	sta $80.b
	sta $84.b
	lda #$60.b
	sta $83.b
	lda #$6B.b
	sta $87.b
	jsr L0080F2.w
	jmp L00A0D0.w
L0080F2:
	php
.ACCU 8
	sep #$20
	lda #$03.b
	sta $8A.b
.ACCU 16
.INDEX 16
	rep #$30
	lda #$C0B4.w
	sta $00.b
	lda #$00E7.w
	sta $02.b
	jsr L00EBFB.w
	lda #$C15D.w
	sta $00.b
	lda #$00E7.w
	sta $02.b
	jsr L00EBFB.w
	lda #$0000.w
	sta $00.b
	lda #$00E4.w
	sta $02.b
	jsr L00EBFB.w
L008122:
	lda #$7808.w
	sta $00.b
	lda #$00E4.w
	sta $02.b
	jsr L00EBFB.w
	jsr L00EBAE.w
	plp
	rts

	eor ($4D.b,S),Y		; 53 4D
	eor $482031.l,X		; 5F 31 20 48
	eor ($52.b,X)		; 41 52
	eor $4B.b,X		; 55 4B
	eor ($20.b,X)		; 41 20
	and ($30.b),Y		; 31 30
	bmi L008169.b		; 30 25
L008144:
	phb
	jsr L008217.w
	jsr L00815D.w
	jsr L008194.w
	jsr L0081EB.w
	plb
	rts

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr L00815D.w		; 20 5D 81
	plb		; AB
	plp		; 28
	rtl		; 6B

L00815D:
.ACCU 8
	sep #$20
	lda #$00.b
	sta VMADDL.w		; VRAM Address Low Byte
	lda #$00.b
	sta VMADDH.w		; VRAM Address High Byte
L008169:
	lda #$09.b
	sta DMAP0.w		; DMA 0 Control
	lda #$18.b
	sta DMADEST0.w		; DMA 0 Destination Register
	lda #$92.b
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	lda #$81.b
	sta DMASRC0H.w		; DMA 0 Source Address High Byte
	lda #$80.b
	sta DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$00.b
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	lda #$00.b
	sta DMALEN0H.w		; DMA 0 Transfer Size High Byte
	lda #$01.b
	sta MDMAEN.w		; DMA Channel Enable
	rts

	brk $00.b		; 00 00
L008194:
	php
	phb
.ACCU 16
.INDEX 16
	rep #$30
	lda #$E0E0.w
	sta $0200.w
	ldx #$0200.w
	ldy #$0201.w
	lda #$01FE.w
	mvn $00,$00
.BASE $80
L8081AA:
.BASE $00
L0081AA:
	stz $0400.w
	ldx #$0400.w
	ldy #$0401.w
	lda #$001E.w
	mvn $00,$00
	plb
	plp
	rts

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	stz OAMADDL.w		; 9C 02 21
	stz OAMADDH.w		; 9C 03 21
	stz DMAP0.w		; 9C 00 43
	lda #$04.b		; A9 04
	sta DMADEST0.w		; 8D 01 43
	lda #$00.b		; A9 00
	sta DMASRC0L.w		; 8D 02 43
	lda #$02.b		; A9 02
	sta DMASRC0H.w		; 8D 03 43
	lda #$00.b		; A9 00
	sta DMASRC0B.w		; 8D 04 43
	lda #$20.b		; A9 20
	sta DMALEN0L.w		; 8D 05 43
	lda #$02.b		; A9 02
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
	rts		; 60

L0081EB:
.ACCU 8
.INDEX 8
	sep #$30
	stz CGADD.w		; CGRAM Address
	stz DMAP0.w		; DMA 0 Control
	lda #$22.b
	sta DMADEST0.w		; DMA 0 Destination Register
	lda #$00.b
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	lda #$05.b
	sta DMASRC0H.w		; DMA 0 Source Address High Byte
	lda #$00.b
L008204:
	sta DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$00.b
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	lda #$02.b
	sta DMALEN0H.w		; DMA 0 Transfer Size High Byte
	lda #$01.b
	sta MDMAEN.w		; DMA Channel Enable
	rts

L008217:
.ACCU 8
.INDEX 8
	sep #$30
	lda #$8F.b
	sta INIDSP.w		; Screen Display
	stz NMITIMEN.w		; Interrupt Enable Flags
	lda #$00.b
	sta OBJSEL.w		; Object Size and Chr Address
	sta OAMADDL.w		; OAM Address Low Byte
	sta OAMADDH.w		; OAM Address High Byte
	sta BGMODE.w		; BG Mode and Character Size
	sta MOSAIC.w		; Screen Pixelation
	sta BG1SC.w		; BG1 Tilemap Address and Size
	sta BG2SC.w		; BG2 Tilemap Address and Size
	sta BG3SC.w		; BG3 Tilemap Address and Size
	sta BG4SC.w		; BG4 Tilemap Address and Size
	sta BG12NBA.w		; BG1&2 Tilemap Character Address
	sta BG34NBA.w		; BG3&4 Tilemap Character Address
	sta BG1HOFS.w		; BG1 Horizontal Scroll / Mode 7 BG Horizontal Scroll
	sta BG1VOFS.w		; BG1 Vertical Scroll / Mode 7 BG Vertical Scroll
	sta BG2HOFS.w		; BG2 Horizontal Scroll
	sta BG2VOFS.w		; BG2 Vertical Scroll
	sta BG3HOFS.w		; BG3 Horizontal Scroll
	sta BG3VOFS.w		; BG3 Vertical Scroll
	sta BG4HOFS.w		; BG4 Horizontal Scroll
	sta BG4VOFS.w		; BG4 Vertical Scroll
	lda #$80.b
	sta VMAIN.w		; Video Port Control
	lda #$00.b
	sta M7SEL.w		; Mode 7 Settings
	lda #$00.b
	sta M7A.w		; Mode 7 Matrix A
	lda #$01.b
	sta M7A.w		; Mode 7 Matrix A
	lda #$00.b
	sta M7B.w		; Mode 7 Matrix B
	sta M7B.w		; Mode 7 Matrix B
	sta M7C.w		; Mode 7 Matrix C
	sta M7C.w		; Mode 7 Matrix C
	lda #$00.b
	sta M7D.w		; Mode 7 Matrix D
	lda #$01.b
	sta M7D.w		; Mode 7 Matrix D
	lda #$00.b
	sta M7X.w		; Mode 7 Center X
	sta M7X.w		; Mode 7 Center X
	sta M7Y.w		; Mode 7 Center Y
	sta M7Y.w		; Mode 7 Center Y
	sta W12SEL.w		; Window Mask Settings for BG1 and BG2
	sta W34SEL.w		; Window Mask Settings for BG3 and BG4
	sta WOBJSEL.w		; Window Mask Settings for Objects and Color Window
	sta W1L.w		; Window 1 Left Position
	sta W1R.w		; Window 1 Right Position
	sta W2L.w		; Window 2 Left Position
	sta W2R.w		; Window 2 Right Position
	sta WBGLOG.w		; Window Mask Logic for Backgrounds
	sta WOBJLOG.w		; Window Mask Logic for Objects and Color Window
	sta TMAIN.w		; Mainscreen Designation
	sta TSUB.w		; Subscreen Designation
	sta TMW.w		; Window Mask Designation for the Main Screen
	sta TSW.w		; Window Mask Designation for the Subscreen
	lda #$30.b
	sta CGWSEL.w		; Color Addition Select
	lda #$00.b
	sta CGADSUB.w		; Color Math Designation
	lda #$E0.b
	sta COLDATA.w		; Fixed Color Data
	lda #$00.b
	sta SETINI.w		; Screen Mode/Video Select
	lda #$FF.b
	sta WRIO.w		; I/O port output/write
	lda #$00.b
	sta WRMPYA.w		; Multiplicand A
	sta WRMPYB.w		; Multplier B
	sta WRDIVL.w		; Dividend Low Byte
	sta WRDIVH.w		; Dividend High Byte
	sta WRDIVB.w		; Divisor
	sta HTIMEL.w		; H-Count Timer
	sta HTIMEH.w		; H-Count Timer MSB
	sta VTIMEL.w		; V-Count Timer
	sta VTIMEH.w		; V-Count Timer MSB
	sta MDMAEN.w		; DMA Channel Enable
	sta HDMAEN.w		; HDMA Channel Enable
	sta MEMSEL.w		; ROM Access Speed
	rts

	lda $40.b		; A5 40
	sta INIDSP.w		; 8D 00 21
	lda $42.b		; A5 42
	sta BGMODE.w		; 8D 05 21
	lda $43.b		; A5 43
	sta MOSAIC.w		; 8D 06 21
	lda $44.b		; A5 44
	sta BG1SC.w		; 8D 07 21
	lda $45.b		; A5 45
	sta BG2SC.w		; 8D 08 21
	lda $46.b		; A5 46
	sta BG3SC.w		; 8D 09 21
	lda $47.b		; A5 47
	sta BG4SC.w		; 8D 0A 21
	lda $48.b		; A5 48
	sta BG12NBA.w		; 8D 0B 21
	lda $49.b		; A5 49
	sta BG34NBA.w		; 8D 0C 21
	lda $4A.b		; A5 4A
	sta TMAIN.w		; 8D 2C 21
	lda $4B.b		; A5 4B
	sta TSUB.w		; 8D 2D 21
	lda $4C.b		; A5 4C
	sta TMW.w		; 8D 2E 21
	lda $4D.b		; A5 4D
	sta TSW.w		; 8D 2F 21
	lda $4E.b		; A5 4E
	sta OBJSEL.w		; 8D 01 21
	lda $55.b		; A5 55
	sta CGWSEL.w		; 8D 30 21
	lda $56.b		; A5 56
	sta CGADSUB.w		; 8D 31 21
	lda $57.b		; A5 57
	sta COLDATA.w		; 8D 32 21
	rts		; 60

L008353:
.ACCU 16
	rep #$20
	lda $5C.b
	sta $64.b
	lda $5E.b
	sta $66.b
.ACCU 8
	sep #$20
	lda JOY1L.w		; Joyport1 Data Low Byte
	sta $5C.b
	lda JOY1H.w		; Joyport1 Data High Byte
	sta $5D.b
	lda JOY2L.w		; Joyport2 Data Low Byte
L00836C:
	sta $5E.b
	lda JOY2H.w		; Joyport2 Data High Byte
	sta $5F.b
.ACCU 16
	rep #$20
	lda $5C.b
	eor $64.b
	and $5C.b
	sta $60.b
	lda $5E.b
	eor $66.b
	and $5E.b
	sta $62.b
	rts

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	stz $6C.b		; 64 6C
	lda $6C.b		; A5 6C
	beq  -4.b		; F0 FC
	lda $71.b		; A5 71
	beq   4.b		; F0 04
	dec $71.b		; C6 71
	bra -14.b		; 80 F2
.ACCU 16
	rep #$20		; C2 20
	inc $B1.b		; E6 B1
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1200.w		; A0 00 12
	lda $0000.w,Y		; B9 00 00
	and #$00FF.w		; 29 FF 00
	beq  13.b		; F0 0D
	tya		; 98
	clc		; 18
	adc #$0080.w		; 69 80 00
	tay		; A8
	cpy #$1800.w		; C0 00 18
	bne -19.b		; D0 ED
	sec		; 38
	rtl		; 6B

	clc		; 18
	rtl		; 6B

	phb		; 8B
	phx		; DA
	phy		; 5A
.ACCU 16
	rep #$20		; C2 20
	sty $0E.b		; 84 0E
	tyx		; BB
	iny		; C8
	stz $00.b,X		; 74 00
	lda #$007E.w		; A9 7E 00
	mvn $00,$00		; 54 00 00
	ldy $0E.b		; A4 0E
	ply		; 7A
	plx		; FA
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1100.w		; A2 00 11
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	bne  13.b		; D0 0D
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1800.w		; E0 00 18
	bne -18.b		; D0 EE
	clc		; 18
	rtl		; 6B

	sec		; 38
	rtl		; 6B

	jsr $83EF.w		; 20 EF 83
	rtl		; 6B

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	ldy $932D.w,X		; BC 2D 93
.ACCU 8
	sep #$20		; E2 20
	lda $0000.w,Y		; B9 00 00
	sta $4E.b		; 85 4E
	lda $0001.w,Y		; B9 01 00
	sta $42.b		; 85 42
	lda $0002.w,Y		; B9 02 00
	sta $48.b		; 85 48
	lda $0003.w,Y		; B9 03 00
	sta $49.b		; 85 49
	lda $0004.w,Y		; B9 04 00
	sta $44.b		; 85 44
	lda $0005.w,Y		; B9 05 00
	sta $45.b		; 85 45
	lda $0006.w,Y		; B9 06 00
	sta $46.b		; 85 46
	lda $0007.w,Y		; B9 07 00
	sta $47.b		; 85 47
	lda $0008.w,Y		; B9 08 00
	sta $4A.b		; 85 4A
	lda $0009.w,Y		; B9 09 00
	sta $4B.b		; 85 4B
	lda $000A.w,Y		; B9 0A 00
	sta $4C.b		; 85 4C
	lda $000B.w,Y		; B9 0B 00
	sta $4D.b		; 85 4D
	lda $000C.w,Y		; B9 0C 00
	sta $55.b		; 85 55
	lda $000D.w,Y		; B9 0D 00
	sta $56.b		; 85 56
	plb		; AB
	plp		; 28
	rts		; 60

L008448:
.ACCU 8
.INDEX 8
	sep #$30
	stz OAMADDL.w		; OAM Address Low Byte
	stz OAMADDH.w		; OAM Address High Byte
	stz DMAP0.w		; DMA 0 Control
	lda #$04.b
	sta DMADEST0.w		; DMA 0 Destination Register
	lda #$00.b
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	lda #$02.b
	sta DMASRC0H.w		; DMA 0 Source Address High Byte
	lda #$00.b
	sta DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$20.b
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	lda #$02.b
	sta DMALEN0H.w		; DMA 0 Transfer Size High Byte
	lda #$01.b
	sta MDMAEN.w		; DMA Channel Enable
	stz CGADD.w		; CGRAM Address
	stz DMAP0.w		; DMA 0 Control
	lda #$22.b
	sta DMADEST0.w		; DMA 0 Destination Register
	lda #$00.b
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	lda #$05.b
	sta DMASRC0H.w		; DMA 0 Source Address High Byte
	lda #$00.b
	sta DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$00.b
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	lda #$02.b
	sta DMALEN0H.w		; DMA 0 Transfer Size High Byte
	lda #$01.b
	sta MDMAEN.w		; DMA Channel Enable
	lda $40.b
	sta INIDSP.w		; Screen Display
	lda $42.b
	sta BGMODE.w		; BG Mode and Character Size
	lda $43.b
	sta MOSAIC.w		; Screen Pixelation
	lda $44.b
	sta BG1SC.w		; BG1 Tilemap Address and Size
	lda $45.b
	sta BG2SC.w		; BG2 Tilemap Address and Size
	lda $46.b
	sta BG3SC.w		; BG3 Tilemap Address and Size
	lda $47.b
	sta BG4SC.w		; BG4 Tilemap Address and Size
	lda $48.b
	sta BG12NBA.w		; BG1&2 Tilemap Character Address
	lda $49.b
	sta BG34NBA.w		; BG3&4 Tilemap Character Address
	lda $4A.b
	sta TMAIN.w		; Mainscreen Designation
	lda $4B.b
	sta TSUB.w		; Subscreen Designation
	lda $4C.b
	sta TMW.w		; Window Mask Designation for the Main Screen
	lda $4D.b
	sta TSW.w		; Window Mask Designation for the Subscreen
	lda $4E.b
	sta OBJSEL.w		; Object Size and Chr Address
	lda $55.b
	sta CGWSEL.w		; Color Addition Select
	lda $56.b
	sta CGADSUB.w		; Color Math Designation
	lda $57.b
	sta COLDATA.w		; Fixed Color Data
	lda $0A06.w
	sta BG1VOFS.w		; BG1 Vertical Scroll / Mode 7 BG Vertical Scroll
	lda $0A07.w
	sta BG1VOFS.w		; BG1 Vertical Scroll / Mode 7 BG Vertical Scroll
	lda $0A04.w
	sta BG1HOFS.w		; BG1 Horizontal Scroll / Mode 7 BG Horizontal Scroll
	lda $0A05.w
	sta BG1HOFS.w		; BG1 Horizontal Scroll / Mode 7 BG Horizontal Scroll
	lda $0A0A.w
	sta BG2VOFS.w		; BG2 Vertical Scroll
	lda $0A0B.w
	sta BG2VOFS.w		; BG2 Vertical Scroll
	lda $0A08.w
	sta BG2HOFS.w		; BG2 Horizontal Scroll
	lda $0A09.w
	sta BG2HOFS.w		; BG2 Horizontal Scroll
	lda $0A16.w
	sta BG3VOFS.w		; BG3 Vertical Scroll
	lda $0A17.w
	sta BG3VOFS.w		; BG3 Vertical Scroll
	lda $0A14.w
	sta BG3HOFS.w		; BG3 Horizontal Scroll
	lda $0A15.w
	sta BG3HOFS.w		; BG3 Horizontal Scroll
	rts

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	asl A		; 0A
	tax		; AA
	lda $E002DC.l,X		; BF DC 02 E0
	sta $00.b		; 85 00
	lda $E002DF.l,X		; BF DF 02 E0
	sta $03.b		; 85 03
.ACCU 8
	sep #$20		; E2 20
	lda $E002DE.l,X		; BF DE 02 E0
	sta $02.b		; 85 02
	lda $E002E1.l,X		; BF E1 02 E0
	beq   7.b		; F0 07
	cmp #$7E.b		; C9 7E
	bcs   3.b		; B0 03
	jmp $916B.w		; 4C 6B 91
	sta $05.b		; 85 05
	jmp $8E9A.w		; 4C 9A 8E
.ACCU 16
	rep #$20		; C2 20
	lda #$0000.w		; A9 00 00
	jsr $8B95.w		; 20 95 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0040.w		; A9 40 00
	sta $0A00.w		; 8D 00 0A
	lda #$876E.w		; A9 6E 87
	ldx #$0080.w		; A2 80 00
	jsr $8E36.w		; 20 36 8E
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$E0.b		; A9 E0
	sta $22.b		; 85 22
	ldx $8E.b		; A6 8E
.ACCU 16
	rep #$20		; C2 20
	lda $E0017A.l,X		; BF 7A 01 E0
	sta $20.b		; 85 20
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
.ACCU 8
	sep #$20		; E2 20
	sta $6E.b		; 85 6E
	sta $70.b		; 85 70
.ACCU 16
	rep #$20		; C2 20
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq   7.b		; F0 07
	jsr $853D.w		; 20 3D 85
.ACCU 16
	rep #$20		; C2 20
	bra -19.b		; 80 ED
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq   7.b		; F0 07
	jsr $8B95.w		; 20 95 8B
.ACCU 16
	rep #$20		; C2 20
	bra -19.b		; 80 ED
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
	jsr $83EF.w		; 20 EF 83
.ACCU 16
	rep #$20		; C2 20
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq   7.b		; F0 07
	jsr $D51F.w		; 20 1F D5
.ACCU 16
	rep #$20		; C2 20
	bra -19.b		; 80 ED
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
.ACCU 8
	sep #$20		; E2 20
	sta $6F.b		; 85 6F
.ACCU 16
	rep #$20		; C2 20
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
.ACCU 8
	sep #$20		; E2 20
	sta $8F.b		; 85 8F
.ACCU 16
	rep #$20		; C2 20
	lda [$20.b]		; A7 20
.ACCU 16
	rep #$20		; C2 20
	sta $A2.b		; 85 A2
	jsl $E9000A.l		; 22 0A 00 E9
.INDEX 8
	sep #$10		; E2 10
	ldx $8E.b		; A6 8E
	jmp ($8609.w,X)		; 7C 09 86
	and #$7A86.w		; 29 86 7A
	stx $CB.b		; 86 CB
	stx $1C.b		; 86 1C
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$29.b]		; 87 29
	stx $6D.b		; 86 6D
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$6D.b]		; 87 6D
	sta [$C2.b]		; 87 C2
	bmi -94.b		; 30 A2
	dec A		; 3A
	stx $A0.b		; 86 A0
	bmi  10.b		; 30 0A
	lda #$003F.w		; A9 3F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $200A08.l,X		; 7F 08 0A 20
	php		; 08
	asl A		; 0A
	ora ($10.b,X)		; 01 10
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
	brk $7F.b		; 00 7F
	asl A		; 0A
	asl A		; 0A
	jsr $0A0A.w		; 20 0A 0A
	ora ($12.b,X)		; 01 12
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bmi -94.b		; 30 A2
	phb		; 8B
	stx $A0.b		; 86 A0
	bmi  10.b		; 30 0A
	lda #$003F.w		; A9 3F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	adc $200A04.l,X		; 7F 04 0A 20
	tsb $0A.b		; 04 0A
	ora ($0C.b,X)		; 01 0C
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
	brk $7F.b		; 00 7F
	asl $0A.b		; 06 0A
	jsr $0A06.w		; 20 06 0A
	ora ($0E.b,X)		; 01 0E
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
	brk $C2.b		; 00 C2
	bmi -94.b		; 30 A2
	jmp.w [$A086]		; DC 86 A0
	bmi  10.b		; 30 0A
	lda #$003F.w		; A9 3F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $380A08.l,X		; 7F 08 0A 38
	php		; 08
	asl A		; 0A
	ora ($10.b,X)		; 01 10
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
	brk $7F.b		; 00 7F
	asl A		; 0A
	asl A		; 0A
	sec		; 38
	asl A		; 0A
	asl A		; 0A
	ora ($12.b,X)		; 01 12
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bmi -94.b		; 30 A2
	and $A087.w		; 2D 87 A0
	bmi  10.b		; 30 0A
	lda #$003F.w		; A9 3F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	adc $080A04.l,X		; 7F 04 0A 08
	tsb $0A.b		; 04 0A
	ora ($0C.b,X)		; 01 0C
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
	brk $7F.b		; 00 7F
	asl $0A.b		; 06 0A
	php		; 08
	asl $0A.b		; 06 0A
	ora ($0E.b,X)		; 01 0E
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
	brk $60.b		; 00 60
	brk $01.b		; 00 01
	cop $FF.b		; 02 FF
	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $877C.w		; 20 7C 87
	plb		; AB
	plp		; 28
	rtl		; 6B

.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	beq  24.b		; F0 18
	bpl  11.b		; 10 0B
	inc $73.b		; E6 73
	lsr A		; 4A
	lsr A		; 4A
	eor #$0F.b		; 49 0F
	and #$0F.b		; 29 0F
	sta $72.b		; 85 72
	rts		; 60

	dec A		; 3A
	sta $73.b		; 85 73
	lsr A		; 4A
	lsr A		; 4A
	eor #$0F.b		; 49 0F
	and #$0F.b		; 29 0F
	sta $72.b		; 85 72
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$E0.b		; A9 E0
	sta $22.b		; 85 22
	lda $1D00.w		; AD 00 1D
	sta $1000.w		; 8D 00 10
	asl A		; 0A
	tax		; AA
	lda $1D01.w		; AD 01 1D
	sta $1076.w		; 8D 76 10
	lda #$01.b		; A9 01
	sta $1003.w		; 8D 03 10
	stz $1016.w		; 9C 16 10
	stz $1009.w		; 9C 09 10
	lda $8F.b		; A5 8F
	sta $1008.w		; 8D 08 10
	lda #$22.b		; A9 22
	sta $1001.w		; 8D 01 10
	sta $1004.w		; 8D 04 10
	stz $1002.w		; 9C 02 10
	stz $1046.w		; 9C 46 10
	stz $1007.w		; 9C 07 10
	stz $1006.w		; 9C 06 10
	lda $1D08.w		; AD 08 1D
	sta $1070.w		; 8D 70 10
	lda $1D09.w		; AD 09 1D
	sta $1071.w		; 8D 71 10
	lda $1D0A.w		; AD 0A 1D
	sta $1072.w		; 8D 72 10
	lda $1D0B.w		; AD 0B 1D
	sta $1073.w		; 8D 73 10
	lda $1D0C.w		; AD 0C 1D
	sta $1074.w		; 8D 74 10
	lda $1D0D.w		; AD 0D 1D
	sta $1075.w		; 8D 75 10
	lda $1072.w		; AD 72 10
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$60.b		; 69 60
	sta $1049.w		; 8D 49 10
	sta $104A.w		; 8D 4A 10
.ACCU 16
	rep #$20		; C2 20
	lda #$0080.w		; A9 80 00
	sta $1021.w		; 8D 21 10
	lda #$00C0.w		; A9 C0 00
	sta $1025.w		; 8D 25 10
	stz $100A.w		; 9C 0A 10
	lda #$0001.w		; A9 01 00
	sta $1012.w		; 8D 12 10
	stz $1030.w		; 9C 30 10
	stz $1032.w		; 9C 32 10
	stz $1034.w		; 9C 34 10
	stz $1036.w		; 9C 36 10
	stz $1038.w		; 9C 38 10
	stz $103A.w		; 9C 3A 10
	stz $1079.w		; 9C 79 10
	lda $E00238.l,X		; BF 38 02 E0
	sta $20.b		; 85 20
.ACCU 8
	sep #$20		; E2 20
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
	sta $1048.w		; 8D 48 10
.ACCU 16
	rep #$20		; C2 20
	lda $1D02.w		; AD 02 1D
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	lda #$000C.w		; A9 0C 00
	clc		; 18
	adc $20.b		; 65 20
	sta $20.b		; 85 20
	txa		; 8A
	xba		; EB
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sta $02.b		; 85 02
	lda $00.b		; A5 00
	xba		; EB
	lsr A		; 4A
	clc		; 18
	adc $02.b		; 65 02
	clc		; 18
	adc #$0008.w		; 69 08 00
	sta $00.b		; 85 00
	lda #$00EA.w		; A9 EA 00
	sta $02.b		; 85 02
	lda #$0530.w		; A9 30 05
	sta $04.b		; 85 04
	lda #$0008.w		; A9 08 00
	sta $06.b		; 85 06
	jsl $808ADD.l		; 22 DD 8A 80
	stx $00.b		; 86 00
	lda #$0600.w		; A9 00 06
	sta $04.b		; 85 04
	lda #$0020.w		; A9 20 00
	sta $06.b		; 85 06
	jsl $808ADD.l		; 22 DD 8A 80
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	stx $00.b		; 86 00
	lda #$0640.w		; A9 40 06
	sta $04.b		; 85 04
	lda #$0020.w		; A9 20 00
	sta $06.b		; 85 06
	jsl $808ADD.l		; 22 DD 8A 80
.ACCU 16
	rep #$20		; C2 20
	lda [$20.b]		; A7 20
	sta $00.b		; 85 00
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	lda [$20.b]		; A7 20
	sta $02.b		; 85 02
	inc $20.b		; E6 20
	lda #$6A00.w		; A9 00 6A
	sta $03.b		; 85 03
	lda #$6A01.w		; A9 01 6A
	sta $05.b		; 85 05
	jsr $916B.w		; 20 6B 91
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1D00.w		; AD 00 1D
	clc		; 18
	adc #$1E.b		; 69 1E
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$E0.b		; A9 E0
	sta $22.b		; 85 22
	lda $1D03.w		; AD 03 1D
	sta $1080.w		; 8D 80 10
	asl A		; 0A
	tax		; AA
	lda $1D04.w		; AD 04 1D
	sta $10F6.w		; 8D F6 10
	lda #$01.b		; A9 01
	sta $1083.w		; 8D 83 10
	stz $1096.w		; 9C 96 10
	sta $1089.w		; 8D 89 10
	lda $8F.b		; A5 8F
	ora #$01.b		; 09 01
	sta $1088.w		; 8D 88 10
	lda #$22.b		; A9 22
	sta $1081.w		; 8D 81 10
	sta $1084.w		; 8D 84 10
	stz $1082.w		; 9C 82 10
	stz $10C6.w		; 9C C6 10
	stz $1087.w		; 9C 87 10
	stz $1086.w		; 9C 86 10
	lda $1D10.w		; AD 10 1D
	sta $10F0.w		; 8D F0 10
	lda $1D11.w		; AD 11 1D
	sta $10F1.w		; 8D F1 10
	lda $1D12.w		; AD 12 1D
	sta $10F2.w		; 8D F2 10
	lda $1D13.w		; AD 13 1D
	sta $10F3.w		; 8D F3 10
	lda $1D14.w		; AD 14 1D
	sta $10F4.w		; 8D F4 10
	lda $1D15.w		; AD 15 1D
	sta $10F5.w		; 8D F5 10
	lda $10F2.w		; AD F2 10
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$60.b		; 69 60
	sta $10C9.w		; 8D C9 10
	sta $10CA.w		; 8D CA 10
.ACCU 16
	rep #$20		; C2 20
	lda #$0100.w		; A9 00 01
	sta $10A1.w		; 8D A1 10
	lda #$00C0.w		; A9 C0 00
	sta $10A5.w		; 8D A5 10
	lda #$0050.w		; A9 50 00
	sta $108A.w		; 8D 8A 10
	lda #$0001.w		; A9 01 00
	sta $1092.w		; 8D 92 10
	stz $10B0.w		; 9C B0 10
	stz $10B2.w		; 9C B2 10
	stz $10B4.w		; 9C B4 10
	stz $10B6.w		; 9C B6 10
	stz $10B8.w		; 9C B8 10
	stz $10BA.w		; 9C BA 10
	stz $10F9.w		; 9C F9 10
	lda $E00238.l,X		; BF 38 02 E0
	sta $20.b		; 85 20
.ACCU 8
	sep #$20		; E2 20
	lda [$20.b]		; A7 20
	inc $20.b		; E6 20
	sta $10C8.w		; 8D C8 10
.ACCU 16
	rep #$20		; C2 20
	lda $1D05.w		; AD 05 1D
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	lda #$000C.w		; A9 0C 00
	clc		; 18
	adc $20.b		; 65 20
	sta $20.b		; 85 20
	txa		; 8A
	xba		; EB
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sta $02.b		; 85 02
	lda $00.b		; A5 00
	xba		; EB
	lsr A		; 4A
	clc		; 18
	adc $02.b		; 65 02
	clc		; 18
	adc #$0008.w		; 69 08 00
	sta $00.b		; 85 00
	lda #$00EA.w		; A9 EA 00
	sta $02.b		; 85 02
	lda #$0538.w		; A9 38 05
	sta $04.b		; 85 04
	lda #$0008.w		; A9 08 00
	sta $06.b		; 85 06
	jsl $808ADD.l		; 22 DD 8A 80
	stx $00.b		; 86 00
	lda #$0620.w		; A9 20 06
	sta $04.b		; 85 04
	lda #$0020.w		; A9 20 00
	sta $06.b		; 85 06
	jsl $808ADD.l		; 22 DD 8A 80
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	stx $00.b		; 86 00
	lda #$0660.w		; A9 60 06
	sta $04.b		; 85 04
	lda #$0020.w		; A9 20 00
	sta $06.b		; 85 06
	jsl $808ADD.l		; 22 DD 8A 80
.ACCU 16
	rep #$20		; C2 20
	lda [$20.b]		; A7 20
	sta $00.b		; 85 00
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	lda [$20.b]		; A7 20
	sta $02.b		; 85 02
	inc $20.b		; E6 20
	lda #$7300.w		; A9 00 73
	sta $03.b		; 85 03
	lda #$7301.w		; A9 01 73
	sta $05.b		; 85 05
	jsr $916B.w		; 20 6B 91
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$00.b		; A9 00
	sta $10.b		; 85 10
	lda #$24.b		; A9 24
	sta $11.b		; 85 11
	lda $1D03.w		; AD 03 1D
	clc		; 18
	adc #$1E.b		; 69 1E
	jsl $80EC5E.l		; 22 5E EC 80
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$01.b		; A9 01
	sta $1003.w		; 8D 03 10
	stz $1009.w		; 9C 09 10
	stz $1016.w		; 9C 16 10
	sta $1083.w		; 8D 83 10
	sta $1089.w		; 8D 89 10
	stz $1096.w		; 9C 96 10
	lda $8F.b		; A5 8F
	sta $1008.w		; 8D 08 10
	ora #$01.b		; 09 01
	sta $1088.w		; 8D 88 10
	stz $1001.w		; 9C 01 10
	stz $1081.w		; 9C 81 10
	stz $1004.w		; 9C 04 10
	stz $1084.w		; 9C 84 10
	stz $1007.w		; 9C 07 10
	stz $1087.w		; 9C 87 10
	stz $1006.w		; 9C 06 10
	stz $1086.w		; 9C 86 10
	stz $1002.w		; 9C 02 10
	stz $1046.w		; 9C 46 10
	stz $1082.w		; 9C 82 10
	stz $10C6.w		; 9C C6 10
	lda $104A.w		; AD 4A 10
	sta $1049.w		; 8D 49 10
	lda $10CA.w		; AD CA 10
	sta $10C9.w		; 8D C9 10
.ACCU 16
	rep #$20		; C2 20
	lda #$0080.w		; A9 80 00
	sta $1021.w		; 8D 21 10
	lda #$00C0.w		; A9 C0 00
	sta $1025.w		; 8D 25 10
	stz $100A.w		; 9C 0A 10
	lda #$0001.w		; A9 01 00
	sta $1012.w		; 8D 12 10
	stz $1030.w		; 9C 30 10
	stz $1032.w		; 9C 32 10
	stz $1034.w		; 9C 34 10
	stz $1036.w		; 9C 36 10
	stz $1038.w		; 9C 38 10
	stz $103A.w		; 9C 3A 10
	lda #$0100.w		; A9 00 01
	sta $10A1.w		; 8D A1 10
	lda #$00C0.w		; A9 C0 00
	sta $10A5.w		; 8D A5 10
	lda #$0050.w		; A9 50 00
	sta $108A.w		; 8D 8A 10
	lda #$0001.w		; A9 01 00
	sta $1092.w		; 8D 92 10
	stz $10B0.w		; 9C B0 10
	stz $10B2.w		; 9C B2 10
	stz $10B4.w		; 9C B4 10
	stz $10B6.w		; 9C B6 10
	stz $10B8.w		; 9C B8 10
	stz $10BA.w		; 9C BA 10
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $02.b		; A5 02
	sta $82.b		; 85 82
	stz $81.b		; 64 81
.ACCU 16
	rep #$20		; C2 20
	ldx $00.b		; A6 00
	ldy $04.b		; A4 04
	lda $06.b		; A5 06
	dec A		; 3A
	phb		; 8B
	jsr $0080.w		; 20 80 00
	plb		; AB
	rtl		; 6B

.ACCU 8
	sep #$20		; E2 20
	stz $1001.w		; 9C 01 10
	stz $1081.w		; 9C 81 10
	stz $1004.w		; 9C 04 10
	stz $1084.w		; 9C 84 10
	stz $1007.w		; 9C 07 10
	stz $1087.w		; 9C 87 10
	stz $1006.w		; 9C 06 10
	stz $1086.w		; 9C 86 10
	stz $1070.w		; 9C 70 10
	stz $10F0.w		; 9C F0 10
	stz $1071.w		; 9C 71 10
	stz $10F1.w		; 9C F1 10
	stz $1072.w		; 9C 72 10
	stz $10F2.w		; 9C F2 10
	stz $1073.w		; 9C 73 10
	stz $10F3.w		; 9C F3 10
	stz $1074.w		; 9C 74 10
	stz $10F4.w		; 9C F4 10
	stz $1075.w		; 9C 75 10
	stz $10F5.w		; 9C F5 10
	lda #$11.b		; A9 11
	sta $46.b		; 85 46
	lda $4A.b		; A5 4A
	and #$FB.b		; 29 FB
	sta $4A.b		; 85 4A
	lda $4C.b		; A5 4C
	and #$FB.b		; 29 FB
	sta $4C.b		; 85 4C
.ACCU 16
	rep #$20		; C2 20
	lda $1000.w		; AD 00 10
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	lda $E0021A.l,X		; BF 1A 02 E0
	sta $00.b		; 85 00
	lda $E0021C.l,X		; BF 1C 02 E0
	sta $02.b		; 85 02
	lda #$1000.w		; A9 00 10
	sta $03.b		; 85 03
	lda #$1001.w		; A9 01 10
	sta $05.b		; 85 05
	jsr $916B.w		; 20 6B 91
.ACCU 16
	rep #$20		; C2 20
	lda $1080.w		; AD 80 10
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	lda $E0021A.l,X		; BF 1A 02 E0
	sta $00.b		; 85 00
	lda $E0021C.l,X		; BF 1C 02 E0
	sta $02.b		; 85 02
	lda #$1400.w		; A9 00 14
	sta $03.b		; 85 03
	lda #$1401.w		; A9 01 14
	sta $05.b		; 85 05
	jsr $916B.w		; 20 6B 91
	rts		; 60

	phb		; 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $E00393.l,X		; BF 93 03 E0
	sta $82.b		; 85 82
	stz $81.b		; 64 81
	lda $E00390.l,X		; BF 90 03 E0
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	clc		; 18
	adc #$0500.w		; 69 00 05
	tay		; A8
	lda $E00391.l,X		; BF 91 03 E0
	sta $00.b		; 85 00
	lda $E00394.l,X		; BF 94 03 E0
	dec A		; 3A
	ldx $00.b		; A6 00
	jsr $0080.w		; 20 80 00
	plb		; AB
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1000.w		; A2 00 10
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	beq  22.b		; F0 16
	lda $21.b,X		; B5 21
	sec		; 38
	sbc $0A00.w		; ED 00 0A
	clc		; 18
	adc $2C.b,X		; 75 2C
	sta $28.b,X		; 95 28
	lda $25.b,X		; B5 25
	sec		; 38
	sbc $0A02.w		; ED 02 0A
	clc		; 18
	adc $2E.b,X		; 75 2E
	sta $2A.b,X		; 95 2A
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1800.w		; E0 00 18
	bne -40.b		; D0 D8
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $90.b		; A5 90
	bne   8.b		; D0 08
	lda #$2916.w		; A9 16 29
	clc		; 18
	adc $B1.b		; 65 B1
	beq  -5.b		; F0 FB
	adc $92.b		; 65 92
	adc #$0003.w		; 69 03 00
	sta $92.b		; 85 92
	xba		; EB
	adc $94.b		; 65 94
	sta $94.b		; 85 94
	adc #$0002.w		; 69 02 00
	adc $96.b		; 65 96
	sta $96.b		; 85 96
	xba		; EB
	sta $90.b		; 85 90
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $9A.b		; A5 9A
	bne   8.b		; D0 08
	lda #$2916.w		; A9 16 29
	clc		; 18
	adc $B1.b		; 65 B1
	beq  -5.b		; F0 FB
	adc $9C.b		; 65 9C
	adc #$0003.w		; 69 03 00
	sta $9C.b		; 85 9C
	xba		; EB
	adc $9E.b		; 65 9E
	sta $9E.b		; 85 9E
	adc #$0002.w		; 69 02 00
	adc $A0.b		; 65 A0
	sta $A0.b		; 85 A0
	xba		; EB
	sta $9A.b		; 85 9A
	rtl		; 6B

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr L008C4D.w		; 20 4D 8C
	plb		; AB
	plp		; 28
	rtl		; 6B

L008C4D:
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	lda $74.b
	beq L008CAC.b
	sta $30.b
	ldy $76.b
	sty $32.b
	lda [$30.b]
	inc $30.b
	inc $30.b
	sta $33.b
	lda [$30.b]
	inc $30.b
	inc $30.b
	sta $35.b
	lda [$30.b]
	inc $30.b
	inc $30.b
	sta $37.b
	ldy #$01.b
	sty DMAP0.w		; DMA 0 Control
	ldy #$18.b
	sty DMADEST0.w		; DMA 0 Destination Register
	ldy $32.b
	sty DMASRC0B.w		; DMA 0 Source Address Bank
L008C82:
	lda $33.b
	sta VMADDL.w		; VRAM Address Low Byte
	lda $30.b
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	lda $35.b
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldy #$01.b
	sty MDMAEN.w		; DMA Channel Enable
	nop
	dec $37.b
	beq L008CAC.b
	lda $30.b
	clc		; Clear carry
	adc $35.b
	sta $30.b
	lda $33.b
	clc		; Clear carry
	adc #$0020.w
	sta $33.b
	bra L008C82.b
L008CAC:
	stz $74.b
	rts

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $B1.b		; A5 B1
	and #$0002.w		; 29 02 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$8CCC.w		; 69 CC 8C
	tax		; AA
	ldy #$06A0.w		; A0 A0 06
	lda #$003F.w		; A9 3F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	plp		; 28
	lsr $00.b		; 46 00
	brk $5F.b		; 00 5F
	ora $0D9F.w		; 0D 9F 0D
	cmp $0E1F0D.l,X		; DF 0D 1F 0E
	adc $0EBF0E.l,X		; 7F 0E BF 0E
	ora $58840F.l,X		; 1F 0F 84 58
	asl A		; 0A
	adc $B0.b		; 65 B0
	adc ($57.b),Y		; 71 57
	ror $1096.w,X		; 7E 96 10
	ora $7FFF35.l,X		; 1F 35 FF 7F
	lda $8435.w		; AD 35 84
	bpl  63.b		; 10 3F
	ora ($5F.b)		; 12 5F
	and [$FF.b],Y		; 37 FF
	tad		; 5B
	stx $6D.b		; 86 6D
	bcs 118.b		; B0 76
	plx		; FA
	adc $CD7ECD.l,X		; 7F CD 7E CD
	ror $7ECD.w,X		; 7E CD 7E
	cmp $CD7E.w		; CD 7E CD
	ror $7ECD.w,X		; 7E CD 7E
	cmp $FF7E.w		; CD 7E FF
	adc $004628.l,X		; 7F 28 46 00
	brk $5F.b		; 00 5F
	ora $0D9F.w		; 0D 9F 0D
	cmp $0E1F0D.l,X		; DF 0D 1F 0E
	adc $0EBF0E.l,X		; 7F 0E BF 0E
	ora $7FFF0F.l,X		; 1F 0F FF 7F
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $00007F.l,X		; FF 7F 00 00
	lda $8435.w		; AD 35 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bpl  -1.b		; 10 FF
	adc $E220C2.l,X		; 7F C2 20 E2
	bpl -83.b		; 10 AD
	rol $1C.b		; 26 1C
	beq  39.b		; F0 27
	sta DMASRC0L.w		; 8D 02 43
	ldy #$8C01.w		; A0 01 8C
	brk $43.b		; 00 43
	ldy #$8C18.w		; A0 18 8C
	ora ($43.b,X)		; 01 43
	ldy $1C28.w		; AC 28 1C
	sty DMASRC0B.w		; 8C 04 43
	lda $1C20.w		; AD 20 1C
	sta VMADDL.w		; 8D 16 21
	lda $1C24.w		; AD 24 1C
	sta DMALEN0L.w		; 8D 05 43
	ldy #$8C01.w		; A0 01 8C
	phd		; 0B
	.db $42, $9C		; 42 9C
	rol $1C.b		; 26 1C
	rts		; 60

L008D7D:
.ACCU 16
.INDEX 16
	rep #$30
	phb
	stz $00.b
	ldx #$0000.w
	ldy #$0001.w
	lda #$007E.w
	mvn $00,$00
	lda #$1B00.w
	sta DMALEN3L.w		; DMA 3 Transfer Size Low Byte
	lda #$8192.w
	sta DMASRC3L.w		; DMA 3 Source Adress Low Byte
	lda #$0200.w
	sta WMADDL.w		; WRAM Address Low Byte
.ACCU 8
	sep #$20
	stz WMADDH.w		; WRAM Address High Byte
	lda #$80.b
	sta DMADEST3.w		; DMA 3 Destination Register
	lda #$80.b
	sta DMASRC3B.w		; DMA 3 Source Address Bank
	lda #$08.b
	sta DMAP3.w		; DMA 3 Control
	sta MDMAEN.w		; DMA Channel Enable
	plb
	rts

	jsr L008D7D.w		; 20 7D 8D
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $00.b		; 64 00
	ldx #$0000.w		; A2 00 00
	ldy #$0001.w		; A0 01 00
	lda #$00FE.w		; A9 FE 00
	mvn $00,$00		; 54 00 00
	stz $1D00.w		; 9C 00 1D
	ldx #$1D00.w		; A2 00 1D
	ldy #$1D01.w		; A0 01 1D
	lda #$01FE.w		; A9 FE 01
	mvn $00,$00		; 54 00 00
.ACCU 8
	sep #$20		; E2 20
	lda #$54.b		; A9 54
	sta $80.b		; 85 80
	sta $84.b		; 85 84
	lda #$60.b		; A9 60
	sta $83.b		; 85 83
	lda #$6B.b		; A9 6B
	sta $87.b		; 85 87
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
	and #$FF.b		; 29 FF
	brk $D0.b		; 00 D0
	ora $20.b		; 05 20
	txs		; 9A
	stx $6BAB.w		; 8E AB 6B
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	jsr $919F.w		; 20 9F 91
	plb		; AB
	rtl		; 6B

	php		; 08
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	sta $1C.b		; 85 1C
	stx $1E.b		; 86 1E
	lda #$0072.w		; A9 72 00
	sta $20.b		; 85 20
	ldy #$E0.b		; A0 E0
	sty $22.b		; 84 22
	lda [$1C.b]		; A7 1C
	tax		; AA
	cpx #$FF.b		; E0 FF
	beq   9.b		; F0 09
	php		; 08
	jsr $8E6C.w		; 20 6C 8E
	plp		; 28
	inc $1C.b		; E6 1C
	bra -16.b		; 80 F0
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0072.w		; A9 72 00
	sta $20.b		; 85 20
	ldy #$00E0.w		; A0 E0 00
	sty $22.b		; 84 22
	jsr $8E6E.w		; 20 6E 8E
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	sta $1C.b		; 85 1C
	stx $1E.b		; 86 1E
	lda #$0000.w		; A9 00 00
	sta $20.b		; 85 20
	ldy #$E0.b		; A0 E0
	sty $22.b		; 84 22
	lda [$1C.b]		; A7 1C
	tax		; AA
	cpx #$FF.b		; E0 FF
	beq   9.b		; F0 09
	php		; 08
	jsr $8E6C.w		; 20 6C 8E
	plp		; 28
	inc $1C.b		; E6 1C
	bra -16.b		; 80 F0
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0000.w		; A9 00 00
	sta $20.b		; 85 20
	lda #$00E0.w		; A9 E0 00
	sta $22.b		; 85 22
	jsr $8E6E.w		; 20 6E 8E
	plp		; 28
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	txa		; 8A
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	asl A		; 0A
	tay		; A8
	lda [$20.b],Y		; B7 20
	sta $00.b		; 85 00
	iny		; C8
	iny		; C8
	lda [$20.b],Y		; B7 20
	sta $02.b		; 85 02
	iny		; C8
	lda [$20.b],Y		; B7 20
	sta $03.b		; 85 03
	iny		; C8
	iny		; C8
.ACCU 8
	sep #$20		; E2 20
	lda [$20.b],Y		; B7 20
	beq   7.b		; F0 07
	cmp #$7E.b		; C9 7E
	bcs   3.b		; B0 03
	jmp $916B.w		; 4C 6B 91
	sta $05.b		; 85 05
	phb		; 8B
	lda [$00.b]		; A7 00
	sta $09.b		; 85 09
	ldy #$0001.w		; A0 01 00
.ACCU 16
	rep #$20		; C2 20
	lda [$00.b],Y		; B7 00
	sta $0A.b		; 85 0A
	iny		; C8
	iny		; C8
	lda [$00.b],Y		; B7 00
	clc		; 18
	adc $00.b		; 65 00
	sta $06.b		; 85 06
	iny		; C8
	iny		; C8
.ACCU 8
	sep #$20		; E2 20
	lda $02.b		; A5 02
	sta $08.b		; 85 08
	stz $0E.b		; 64 0E
	lda $05.b		; A5 05
	bne   8.b		; D0 08
	lda $03.b		; A5 03
	sta $18.b		; 85 18
	lda $04.b		; A5 04
	sta $19.b		; 85 19
.ACCU 8
	sep #$20		; E2 20
	jsr $9048.w		; 20 48 90
	cmp #$00.b		; C9 00
	bne   5.b		; D0 05
	jsr $90FF.w		; 20 FF 90
	bra  47.b		; 80 2F
	cmp #$01.b		; C9 01
	bne   8.b		; D0 08
	jsr $8F5A.w		; 20 5A 8F
	jsr $909E.w		; 20 9E 90
	bra  35.b		; 80 23
	cmp #$02.b		; C9 02
	bne  11.b		; D0 0B
	jsr $8F5A.w		; 20 5A 8F
	jsr $8FA9.w		; 20 A9 8F
	jsr $909E.w		; 20 9E 90
	bra  20.b		; 80 14
	lda $09.b		; A5 09
	cmp #$10.b		; C9 10
	bcs   5.b		; B0 05
	jsr $8F0E.w		; 20 0E 8F
	bra   9.b		; 80 09
	jsr $8F5A.w		; 20 5A 8F
	jsr $9023.w		; 20 23 90
	jsr $909E.w		; 20 9E 90
.ACCU 16
	rep #$20		; C2 20
	dec $0A.b		; C6 0A
	bne -67.b		; D0 BD
.ACCU 8
	sep #$20		; E2 20
	plb		; AB
	rts		; 60

	lda #$00.b		; A9 00
	xba		; EB
	lda $09.b		; A5 09
	and #$0F.b		; 29 0F
	tax		; AA
	lda $8F57.w,X		; BD 57 8F
	sta $0C.b		; 85 0C
	tax		; AA
	lda $05.b		; A5 05
	bne  37.b		; D0 25
	lda $18.b		; A5 18
	sta VMADDL.w		; 8D 16 21
	lda $19.b		; A5 19
	sta VMADDH.w		; 8D 17 21
	lda [$00.b],Y		; B7 00
	sta VMDATAL.w		; 8D 18 21
	iny		; C8
	lda [$00.b],Y		; B7 00
	sta VMDATAH.w		; 8D 19 21
	iny		; C8
	dex		; CA
	bne -15.b		; D0 F1
.ACCU 16
	rep #$20		; C2 20
	lda $18.b		; A5 18
	clc		; 18
	adc $0C.b		; 65 0C
	sta $18.b		; 85 18
.ACCU 8
	sep #$20		; E2 20
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda [$00.b],Y		; B7 00
	sta [$03.b]		; 87 03
	iny		; C8
	iny		; C8
	inc $03.b		; E6 03
	inc $03.b		; E6 03
	dex		; CA
	bne -13.b		; D0 F3
.ACCU 8
	sep #$20		; E2 20
	rts		; 60

	php		; 08
	bpl  32.b		; 10 20
	lda #$00.b		; A9 00
	xba		; EB
	lda $09.b		; A5 09
	and #$0F.b		; 29 0F
	tax		; AA
	lda $8FA3.w,X		; BD A3 8F
	sta $0C.b		; 85 0C
	lda $8FA6.w,X		; BD A6 8F
	sta $0D.b		; 85 0D
	ldx #$0000.w		; A2 00 00
	lda [$00.b],Y		; B7 00
	sta $10.b,X		; 95 10
	iny		; C8
	inx		; E8
	dec $0C.b		; C6 0C
	bne -10.b		; D0 F6
	ldx #$0000.w		; A2 00 00
	ror $17.b		; 66 17
	ror $16.b		; 66 16
	ror $15.b		; 66 15
	ror $14.b		; 66 14
	ror $13.b		; 66 13
	ror $12.b		; 66 12
	ror $11.b		; 66 11
	ror $10.b		; 66 10
	bcs   9.b		; B0 09
	stz $0700.w,X		; 9E 00 07
	inx		; E8
	dec $0D.b		; C6 0D
	bne -26.b		; D0 E6
	rts		; 60

	lda [$00.b],Y		; B7 00
	sta $0700.w,X		; 9D 00 07
	iny		; C8
	inx		; E8
	dec $0D.b		; C6 0D
	bne -38.b		; D0 DA
	rts		; 60

	cop $04.b		; 02 04
	php		; 08
	bpl  32.b		; 10 20
	rti		; 40

	phy		; 5A
	ldy #$0007.w		; A0 07 00
	ldx #$0700.w		; A2 00 07
	lda $09.b		; A5 09
	and #$0F.b		; 29 0F
	beq  35.b		; F0 23
	and #$02.b		; 29 02
	bne  50.b		; D0 32
	lda $00.b,X		; B5 00
	eor $02.b,X		; 55 02
	sta $02.b,X		; 95 02
	lda $01.b,X		; B5 01
	eor $03.b,X		; 55 03
	sta $03.b,X		; 95 03
	lda $10.b,X		; B5 10
	eor $12.b,X		; 55 12
	sta $12.b,X		; 95 12
	lda $11.b,X		; B5 11
	eor $13.b,X		; 55 13
	sta $13.b,X		; 95 13
	inx		; E8
	inx		; E8
	dey		; 88
	bne -29.b		; D0 E3
	ply		; 7A
	rts		; 60

	lda $00.b,X		; B5 00
	eor $02.b,X		; 55 02
	sta $02.b,X		; 95 02
	lda $01.b,X		; B5 01
	eor $03.b,X		; 55 03
	sta $03.b,X		; 95 03
	inx		; E8
	inx		; E8
	dey		; 88
	bne -17.b		; D0 EF
	bra -21.b		; 80 EB
	lda $00.b,X		; B5 00
	eor $02.b,X		; 55 02
	sta $02.b,X		; 95 02
	lda $01.b,X		; B5 01
	eor $03.b,X		; 55 03
	sta $03.b,X		; 95 03
	lda $10.b,X		; B5 10
	eor $12.b,X		; 55 12
	sta $12.b,X		; 95 12
	lda $11.b,X		; B5 11
	eor $13.b,X		; 55 13
	sta $13.b,X		; 95 13
	lda $20.b,X		; B5 20
	eor $22.b,X		; 55 22
	sta $22.b,X		; 95 22
	lda $21.b,X		; B5 21
	eor $23.b,X		; 55 23
	sta $23.b,X		; 95 23
	lda $30.b,X		; B5 30
	eor $32.b,X		; 55 32
	sta $32.b,X		; 95 32
	lda $31.b,X		; B5 31
	eor $33.b,X		; 55 33
	sta $33.b,X		; 95 33
	inx		; E8
	inx		; E8
	dey		; 88
	bne -53.b		; D0 CB
	bra -76.b		; 80 B4
	phy		; 5A
	ldx #$0700.w		; A2 00 07
	lda $09.b		; A5 09
	beq  14.b		; F0 0E
	and #$02.b		; 29 02
	bne   5.b		; D0 05
	ldy #$001F.w		; A0 1F 00
	bra   8.b		; 80 08
	ldy #$00FF.w		; A0 FF 00
	bra   3.b		; 80 03
	ldy #$000F.w		; A0 0F 00
	lda $00.b,X		; B5 00
	eor $01.b,X		; 55 01
	sta $01.b,X		; 95 01
	inx		; E8
	dey		; 88
	bne -10.b		; D0 F6
	ply		; 7A
	rts		; 60

	lda $09.b		; A5 09
	and #$0F.b		; 29 0F
	beq  36.b		; F0 24
	stz $0D.b		; 64 0D
	lda $0E.b		; A5 0E
	sta $0C.b		; 85 0C
	cmp #$04.b		; C9 04
	bne  10.b		; D0 0A
.ACCU 16
	rep #$20		; C2 20
	inc $06.b		; E6 06
	stz $0C.b		; 64 0C
.ACCU 8
	sep #$20		; E2 20
	stz $0E.b		; 64 0E
	lda [$06.b]		; A7 06
	ldx $0C.b		; A6 0C
	dex		; CA
	bmi   4.b		; 30 04
	ror A		; 6A
	ror A		; 6A
	bra  -7.b		; 80 F9
	and #$03.b		; 29 03
	inc $0E.b		; E6 0E
	rts		; 60

	lda #$00.b		; A9 00
	xba		; EB
	stz $0D.b		; 64 0D
	lda $0E.b		; A5 0E
	sta $0C.b		; 85 0C
	cmp #$08.b		; C9 08
	bne  10.b		; D0 0A
.ACCU 16
	rep #$20		; C2 20
	inc $06.b		; E6 06
	stz $0C.b		; 64 0C
.ACCU 8
	sep #$20		; E2 20
	stz $0E.b		; 64 0E
	lda [$06.b]		; A7 06
	ldx $0C.b		; A6 0C
	dex		; CA
	bmi   3.b		; 30 03
	ror A		; 6A
	bra  -6.b		; 80 FA
	and #$01.b		; 29 01
	inc $0E.b		; E6 0E
	tax		; AA
	lda $909C.w,X		; BD 9C 90
	rts		; 60

	cop $01.b		; 02 01
	phy		; 5A
	phb		; 8B
	lda #$00.b		; A9 00
	xba		; EB
	lda $09.b		; A5 09
	and #$0F.b		; 29 0F
	tax		; AA
	lda $8FA6.w,X		; BD A6 8F
	sta $0C.b		; 85 0C
	stz $0D.b		; 64 0D
	lda $05.b		; A5 05
	beq  40.b		; F0 28
	ldx #$0700.w		; A2 00 07
	ldy $03.b		; A4 03
	lda $05.b		; A5 05
	sta $81.b		; 85 81
	lda #$00.b		; A9 00
	sta $82.b		; 85 82
	lda $0C.b		; A5 0C
	dec A		; 3A
	jsr $0080.w		; 20 80 00
	plb		; AB
	ply		; 7A
.ACCU 16
	rep #$20		; C2 20
	lda $03.b		; A5 03
	clc		; 18
	adc $0C.b		; 65 0C
	sta $03.b		; 85 03
	lda $18.b		; A5 18
	clc		; 18
	adc $0C.b		; 65 0C
	sta $18.b		; 85 18
.ACCU 8
	sep #$20		; E2 20
	rts		; 60

	lda $18.b		; A5 18
	sta VMADDL.w		; 8D 16 21
	lda $19.b		; A5 19
	sta VMADDH.w		; 8D 17 21
	lda $0C.b		; A5 0C
	lsr A		; 4A
	tay		; A8
	sty $0C.b		; 84 0C
	ldx #$0700.w		; A2 00 07
	lda $00.b,X		; B5 00
	sta VMDATAL.w		; 8D 18 21
	lda $01.b,X		; B5 01
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	inx		; E8
	dey		; 88
	bne -15.b		; D0 F1
	bra -57.b		; 80 C7
	phy		; 5A
	lda #$00.b		; A9 00
	xba		; EB
	lda $09.b		; A5 09
	and #$0F.b		; 29 0F
	tax		; AA
	lda $8FA6.w,X		; BD A6 8F
	sta $0C.b		; 85 0C
	stz $0D.b		; 64 0D
	lsr A		; 4A
	tax		; AA
	lda $05.b		; A5 05
	beq  33.b		; F0 21
.ACCU 16
	rep #$20		; C2 20
	lda #$0000.w		; A9 00 00
	tay		; A8
	sta [$03.b],Y		; 97 03
	iny		; C8
	iny		; C8
	dex		; CA
	bne  -7.b		; D0 F9
	lda $03.b		; A5 03
	clc		; 18
	adc $0C.b		; 65 0C
	sta $03.b		; 85 03
.ACCU 16
	rep #$20		; C2 20
	lda $18.b		; A5 18
	clc		; 18
	adc $0C.b		; 65 0C
	sta $18.b		; 85 18
.ACCU 8
	sep #$20		; E2 20
	ply		; 7A
	rts		; 60

	stx $0C.b		; 86 0C
	lda $18.b		; A5 18
	sta VMADDL.w		; 8D 16 21
	lda $19.b		; A5 19
	sta VMADDH.w		; 8D 17 21
	stz VMDATAL.w		; 9C 18 21
	stz VMDATAH.w		; 9C 19 21
	dex		; CA
	bne  -9.b		; D0 F7
	bra -36.b		; 80 DC
	brk $7F.b		; 00 7F
	jsr L00407F.w		; 20 7F 40
	adc $807F60.l,X		; 7F 60 7F 80
	adc $C07FA0.l,X		; 7F A0 7F C0
	adc $207FE0.l,X		; 7F E0 7F 20
	ror $7E40.w,X		; 7E 40 7E
	rts		; 60

	ror $7E80.w,X		; 7E 80 7E
	ldy #$C07E.w		; A0 7E C0
	ror $7EE0.w,X		; 7E E0 7E
	cmp #$10.b		; C9 10
	beq  44.b		; F0 2C
	bcs  38.b		; B0 26
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	dec A		; 3A
	asl A		; 0A
	tax		; AA
	lda $03.b		; A5 03
	sta $30.b		; 85 30
	lda $914D.w,X		; BD 4D 91
	sta $04.b		; 85 04
	sta $35.b		; 85 35
.ACCU 8
	sep #$20		; E2 20
	stz $03.b		; 64 03
	stz $34.b		; 64 34
	jsr $919F.w		; 20 9F 91
	sec		; 38
	lda $03.b		; A5 03
	sbc $34.b		; E5 34
	sta $32.b		; 85 32
	jmp $9287.w		; 4C 87 92
	lda #$7E.b		; A9 7E
	bra   2.b		; 80 02
	lda #$7F.b		; A9 7F
	sta $05.b		; 85 05
	phb		; 8B
	lda $05.b		; A5 05
	pha		; 48
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$00.b]		; A7 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	sta $1A.b		; 85 1A
	ldy #$0010.w		; A0 10 00
	lsr $1A.b		; 46 1A
	dey		; 88
	bne  11.b		; D0 0B
	lda [$00.b]		; A7 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	sta $1A.b		; 85 1A
	ldy #$0010.w		; A0 10 00
	bcc  14.b		; 90 0E
.ACCU 8
	sep #$20		; E2 20
	lda [$00.b]		; A7 00
	sta ($03.b)		; 92 03
.ACCU 16
	rep #$20		; C2 20
	inc $00.b		; E6 00
	inc $03.b		; E6 03
	bra -32.b		; 80 E0
	stz $16.b		; 64 16
	lsr $1A.b		; 46 1A
	dey		; 88
	bne  11.b		; D0 0B
	lda [$00.b]		; A7 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	sta $1A.b		; 85 1A
	ldy #$0010.w		; A0 10 00
	bcs  51.b		; B0 33
	lsr $1A.b		; 46 1A
	dey		; 88
	bne  11.b		; D0 0B
	lda [$00.b]		; A7 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	sta $1A.b		; 85 1A
	ldy #$0010.w		; A0 10 00
	rol $16.b		; 26 16
	lsr $1A.b		; 46 1A
	dey		; 88
	bne  11.b		; D0 0B
	lda [$00.b]		; A7 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	sta $1A.b		; 85 1A
	ldy #$0010.w		; A0 10 00
	rol $16.b		; 26 16
	inc $16.b		; E6 16
	inc $16.b		; E6 16
	lda [$00.b]		; A7 00
	ora #$FF00.w		; 09 00 FF
	sta $14.b		; 85 14
	inc $00.b		; E6 00
	bra  40.b		; 80 28
	lda [$00.b]		; A7 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	sta $10.b		; 85 10
	xba		; EB
	sta $12.b		; 85 12
	ora #$FF00.w		; 09 00 FF
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sta $14.b		; 85 14
.ACCU 8
	sep #$20		; E2 20
	lda $10.b		; A5 10
	sta $14.b		; 85 14
.ACCU 16
	rep #$20		; C2 20
	lda $12.b		; A5 12
	and #$0007.w		; 29 07 00
	beq  41.b		; F0 29
	inc A		; 1A
	inc A		; 1A
	sta $16.b		; 85 16
	lda $03.b		; A5 03
	clc		; 18
	adc $14.b		; 65 14
	sta $06.b		; 85 06
	phy		; 5A
	ldy #$0000.w		; A0 00 00
	ldx $16.b		; A6 16
	sty $16.b		; 84 16
.ACCU 8
	sep #$20		; E2 20
	lda ($06.b),Y		; B1 06
	sta ($03.b),Y		; 91 03
	iny		; C8
	dex		; CA
	bne  -8.b		; D0 F8
.ACCU 16
	rep #$20		; C2 20
	tya		; 98
	clc		; 18
	adc $03.b		; 65 03
	sta $03.b		; 85 03
	ply		; 7A
	jmp $91B1.w		; 4C B1 91
	lda [$00.b]		; A7 00
	inc $00.b		; E6 00
	and #$00FF.w		; 29 FF 00
	beq  13.b		; F0 0D
	cmp #$0001.w		; C9 01 00
	bne   3.b		; D0 03
	jmp $91B1.w		; 4C B1 91
	inc A		; 1A
	sta $16.b		; 85 16
	bra -59.b		; 80 C5
	plb		; AB
	rts		; 60

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $919F.w		; 20 9F 91
	plb		; AB
	plp		; 28
	rtl		; 6B

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldy #$18.b		; A0 18
	sty DMADEST0.w		; 8C 01 43
	lda $30.b		; A5 30
	sta VMADDL.w		; 8D 16 21
	lda $32.b		; A5 32
	sta DMALEN0L.w		; 8D 05 43
	lda $34.b		; A5 34
	sta DMASRC0L.w		; 8D 02 43
	ldy $36.b		; A4 36
	sty DMASRC0B.w		; 8C 04 43
	ldy #$01.b		; A0 01
	sty DMAP0.w		; 8C 00 43
	sty MDMAEN.w		; 8C 0B 42
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldy #$18.b		; A0 18
	sty DMADEST0.w		; 8C 01 43
	lda $00.b		; A5 00
	sta VMADDL.w		; 8D 16 21
	lda $02.b		; A5 02
	sta DMALEN0L.w		; 8D 05 43
	lda $04.b		; A5 04
	sta DMASRC0L.w		; 8D 02 43
	ldy $06.b		; A4 06
	sty DMASRC0B.w		; 8C 04 43
	ldy #$01.b		; A0 01
	sty DMAP0.w		; 8C 00 43
	sty MDMAEN.w		; 8C 0B 42
	rtl		; 6B

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $92DD.w		; 20 DD 92
	plb		; AB
	plp		; 28
	rtl		; 6B

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $1C.b		; 85 1C
	stx $1E.b		; 86 1E
	lda [$1C.b]		; A7 1C
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq   7.b		; F0 07
	jsr $92F7.w		; 20 F7 92
	inc $1C.b		; E6 1C
	bra -17.b		; 80 EF
	plp		; 28
	rts		; 60

	phb		; 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $E000B7.l,X		; BF B7 00 E0
	sta $82.b		; 85 82
	stz $81.b		; 64 81
	lda $E000B4.l,X		; BF B4 00 E0
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	clc		; 18
	adc #$0500.w		; 69 00 05
	tay		; A8
	lda $E000B5.l,X		; BF B5 00 E0
	sta $00.b		; 85 00
	lda $E000B8.l,X		; BF B8 00 E0
	dec A		; 3A
	ldx $00.b		; A6 00
	jsr $0080.w		; 20 80 00
	plb		; AB
	rts		; 60

	eor $5B93.w		; 4D 93 5B
	sta ($69.b,S),Y		; 93 69
	sta ($77.b,S),Y		; 93 77
	sta ($85.b,S),Y		; 93 85
	sta ($93.b,S),Y		; 93 93
	sta ($03.b,S),Y		; 93 03
	sty $03.b,X		; 94 03
	sty $A1.b,X		; 94 A1
	sta ($AF.b,S),Y		; 93 AF
	sta ($BD.b,S),Y		; 93 BD
	sta ($CB.b,S),Y		; 93 CB
	sta ($D9.b,S),Y		; 93 D9
	sta ($E7.b,S),Y		; 93 E7
	sta ($F5.b,S),Y		; 93 F5
	sta ($03.b,S),Y		; 93 03
	sty $03.b,X		; 94 03
	ora #$5522.w		; 09 22 55
	ora ($09.b,X)		; 01 09
	bpl  16.b		; 10 10
	ora [$00.b],Y		; 17 00
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	jsl $080055.l		; 22 55 00 08
	bpl  16.b		; 10 10
	ora [$00.b],Y		; 17 00
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	jsl $080055.l		; 22 55 00 08
	bpl  16.b		; 10 10
	ora [$00.b],Y		; 17 00
	ora ($0E.b),Y		; 11 0E
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	jsl $090155.l		; 22 55 01 09
	bpl  16.b		; 10 10
	ora $02.b,X		; 15 02
	ora $02.b,X		; 15 02
	cop $23.b		; 02 23
	ora $09.b,S		; 03 09
	jsl $080055.l		; 22 55 00 08
	bpl  16.b		; 10 10
	ora [$00.b],Y		; 17 00
	ora $1002.w,X		; 1D 02 10
	.db $42, $03		; 42 03
	ora #$5522.w		; 09 22 55
	brk $08.b		; 00 08
	bpl  16.b		; 10 10
	ora [$00.b],Y		; 17 00
	ora $000000.l,X		; 1F 00 00 00
	brk $09.b		; 00 09
	jsl $747055.l		; 22 55 70 74
	adc $1779.w,Y		; 79 79 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$5511.w		; 09 11 55
	adc ($78.b),Y		; 71 78
	jmp ($177C.w,X)		; 7C 7C 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $7C6666.l		; 0F 66 66 7C
	jmp ($7C7C.w,X)		; 7C 7C 7C
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora ($55.b),Y		; 11 55
	adc ($78.b)		; 72 78
	jmp ($177C.w,X)		; 7C 7C 17
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	sta ($00.b)		; 92 00
	ora #$5522.w		; 09 22 55
	bvs 120.b		; 70 78
	jmp ($137C.w,X)		; 7C 7C 13
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	sta ($00.b)		; 92 00
	ora #$5511.w		; 09 11 55
	bvs 120.b		; 70 78
	jmp ($157C.w,X)		; 7C 7C 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$5522.w		; 09 22 55
	bvs 120.b		; 70 78
	jmp ($137C.w,X)		; 7C 7C 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$5522.w		; 09 22 55
	bvs 120.b		; 70 78
	jmp ($157C.w,X)		; 7C 7C 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	jsr $52AD.w		; 20 AD 52
	trb $3EF0.w		; 1C F0 3E
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta VMAIN.w		; 8D 15 21
	lda $D2.b		; A5 D2
	sta VMADDL.w		; 8D 16 21
	lda $D3.b		; A5 D3
	sta VMADDH.w		; 8D 17 21
	lda #$00.b		; A9 00
	sta DMAP0.w		; 8D 00 43
	lda #$18.b		; A9 18
	sta DMADEST0.w		; 8D 01 43
	lda $D0.b		; A5 D0
	sta DMASRC0L.w		; 8D 02 43
	lda $D1.b		; A5 D1
	sta DMASRC0H.w		; 8D 03 43
	lda #$80.b		; A9 80
	sta DMASRC0B.w		; 8D 04 43
	lda #$00.b		; A9 00
	sta DMALEN0L.w		; 8D 05 43
	lda #$08.b		; A9 08
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
	lda #$80.b		; A9 80
	sta VMAIN.w		; 8D 15 21
	rts		; 60

	php		; 08
.ACCU 8
	sep #$20		; E2 20
	sta VMADDL.w		; 8D 16 21
	xba		; EB
	sta VMADDH.w		; 8D 17 21
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	txa		; 8A
	sta $04.b		; 85 04
	and #$FC00.w		; 29 00 FC
	sta $02.b		; 85 02
	lda $04.b		; A5 04
	and #$03FF.w		; 29 FF 03
	sta $00.b		; 85 00
	ldy #$0400.w		; A0 00 04
	lda $00.b		; A5 00
	ora $02.b		; 05 02
.ACCU 8
	sep #$20		; E2 20
	sta VMDATAL.w		; 8D 18 21
	xba		; EB
	sta VMDATAH.w		; 8D 19 21
.ACCU 16
	rep #$20		; C2 20
	inc $00.b		; E6 00
	dey		; 88
	bne -20.b		; D0 EC
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
	rep #$20		; C2 20
	lda $0A.b		; A5 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $08.b		; 65 08
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	jsr $94A2.w		; 20 A2 94
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx $06.b		; A6 06
	lda $00.b		; A5 00
	sta VMADDL.w		; 8D 16 21
	lda $01.b		; A5 01
	sta VMADDH.w		; 8D 17 21
	lda $02.b		; A5 02
	sta $08.b		; 85 08
	lda $03.b		; A5 03
	sta $09.b		; 85 09
	ldy $04.b		; A4 04
	lda $08.b		; A5 08
	sta VMDATAL.w		; 8D 18 21
	lda $09.b		; A5 09
	sta VMDATAH.w		; 8D 19 21
.ACCU 16
	rep #$20		; C2 20
	inc $08.b		; E6 08
.ACCU 8
	sep #$20		; E2 20
	dey		; 88
	bne -19.b		; D0 ED
.ACCU 16
	rep #$20		; C2 20
	lda $00.b		; A5 00
	clc		; 18
	adc #$0020.w		; 69 20 00
	sta $00.b		; 85 00
	lda $02.b		; A5 02
	clc		; 18
	adc $0C.b		; 65 0C
	sta $02.b		; 85 02
.ACCU 8
	sep #$20		; E2 20
	dex		; CA
	bne -61.b		; D0 C3
	plp		; 28
	rts		; 60

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $94F2.w		; 20 F2 94
	plb		; AB
	plp		; 28
	rtl		; 6B

	php		; 08
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldy $06.b		; A4 06
	lda $00.b		; A5 00
	sta VMADDL.w		; 8D 16 21
	lda $01.b		; A5 01
	sta VMADDH.w		; 8D 17 21
	ldx $04.b		; A6 04
	lda $02.b		; A5 02
	sta VMDATAL.w		; 8D 18 21
	lda $03.b		; A5 03
	sta VMDATAH.w		; 8D 19 21
.ACCU 16
	rep #$20		; C2 20
	inc $02.b		; E6 02
.ACCU 8
	sep #$20		; E2 20
	dex		; CA
	bne -19.b		; D0 ED
.ACCU 16
	rep #$20		; C2 20
	lda $00.b		; A5 00
	clc		; 18
	adc #$0020.w		; 69 20 00
	sta $00.b		; 85 00
.ACCU 8
	sep #$20		; E2 20
	dey		; 88
	bne -46.b		; D0 D2
	plp		; 28
	rts		; 60

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $9533.w		; 20 33 95
	plb		; AB
	plp		; 28
	rtl		; 6B

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $00.b		; A5 00
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $01.b		; A5 01
	sta $4300.w,X		; 9D 00 43
	lda $02.b		; A5 02
	sta $4301.w,X		; 9D 01 43
	lda $10.b		; A5 10
	sta $4302.w,X		; 9D 02 43
	lda $11.b		; A5 11
	sta $4303.w,X		; 9D 03 43
	lda $12.b		; A5 12
	sta $4304.w,X		; 9D 04 43
	lda $14.b		; A5 14
	sta $4305.w,X		; 9D 05 43
	lda $15.b		; A5 15
	sta $4306.w,X		; 9D 06 43
	lda $16.b		; A5 16
	sta $4307.w,X		; 9D 07 43
	plp		; 28
	rts		; 60

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $9576.w		; 20 76 95
	plb		; AB
	plp		; 28
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C90.w		; AE 90 1C
	jsr ($957F.w,X)		; FC 7F 95
	rts		; 60

	sta $95.b,S		; 83 95
	sbc $95.b,S		; E3 95
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda $1C80.w		; AD 80 1C
	beq  86.b		; F0 56
	sta DMASRC0L.w		; 8D 02 43
	ldy #$01.b		; A0 01
	sty DMAP0.w		; 8C 00 43
	ldy #$18.b		; A0 18
	sty DMADEST0.w		; 8C 01 43
	ldy $1C82.w		; AC 82 1C
	sty DMASRC0B.w		; 8C 04 43
	lda $1C8E.w		; AD 8E 1C
	sta VMADDL.w		; 8D 16 21
	lda #$0020.w		; A9 20 00
	sta DMALEN0L.w		; 8D 05 43
	ldy #$01.b		; A0 01
	sty MDMAEN.w		; 8C 0B 42
	ldy #$01.b		; A0 01
	sty DMAP0.w		; 8C 00 43
	ldy #$18.b		; A0 18
	sty DMADEST0.w		; 8C 01 43
	ldy $1C82.w		; AC 82 1C
	sty DMASRC0B.w		; 8C 04 43
	lda $1C80.w		; AD 80 1C
	clc		; 18
	adc #$0100.w		; 69 00 01
	sta DMASRC0L.w		; 8D 02 43
	lda $1C8E.w		; AD 8E 1C
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta VMADDL.w		; 8D 16 21
	lda #$0020.w		; A9 20 00
	sta DMALEN0L.w		; 8D 05 43
	ldy #$01.b		; A0 01
	sty MDMAEN.w		; 8C 0B 42
	stz $1C80.w		; 9C 80 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C96.w		; AD 96 1C
	sta $30.b		; 85 30
	lda $1C94.w		; AD 94 1C
	sta $32.b		; 85 32
	lda #$0C00.w		; A9 00 0C
	sta $34.b		; 85 34
	lda #$0080.w		; A9 80 00
	sta $36.b		; 85 36
	jsr $9287.w		; 20 87 92
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$0500.w		; A2 00 05
	ldy #$0C00.w		; A0 00 0C
	lda #$01FF.w		; A9 FF 01
	phb		; 8B
	mvn $00,$00		; 54 00 00
	plb		; AB
	ldy #$0040.w		; A0 40 00
	lda $0500.w,Y		; B9 00 05
	lsr A		; 4A
	and #$3DEF.w		; 29 EF 3D
	sta $0500.w,Y		; 99 00 05
	iny		; C8
	iny		; C8
	cpy #$0200.w		; C0 00 02
	bmi -17.b		; 30 EF
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$0C00.w		; A2 00 0C
	ldy #$0500.w		; A0 00 05
	lda #$01FF.w		; A9 FF 01
	phb		; 8B
	mvn $00,$00		; 54 00 00
	plb		; AB
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $A3.b		; A5 A3
	sta $AB.b		; 85 AB
	lda $A5.b		; A5 A5
	sta $AD.b		; 85 AD
	lda $5C.b		; A5 5C
	tax		; AA
	and #$3F00.w		; 29 00 3F
	sta $A3.b		; 85 A3
	txa		; 8A
	bit #$4000.w		; 89 00 40
	beq   7.b		; F0 07
	lda $A3.b		; A5 A3
	ora $1E20.w		; 0D 20 1E
	sta $A3.b		; 85 A3
	txa		; 8A
	bit #$0040.w		; 89 40 00
	beq   7.b		; F0 07
	lda $A3.b		; A5 A3
	ora $1E22.w		; 0D 22 1E
	sta $A3.b		; 85 A3
	txa		; 8A
	bit #$8000.w		; 89 00 80
	beq   7.b		; F0 07
	lda $A3.b		; A5 A3
	ora $1E24.w		; 0D 24 1E
	sta $A3.b		; 85 A3
	txa		; 8A
	bit #$0080.w		; 89 80 00
	beq   7.b		; F0 07
	lda $A3.b		; A5 A3
	ora $1E26.w		; 0D 26 1E
	sta $A3.b		; 85 A3
	txa		; 8A
	bit #$0020.w		; 89 20 00
	beq   7.b		; F0 07
	lda $A3.b		; A5 A3
	ora $1E28.w		; 0D 28 1E
	sta $A3.b		; 85 A3
	txa		; 8A
	bit #$0010.w		; 89 10 00
	beq   7.b		; F0 07
	lda $A3.b		; A5 A3
	ora $1E2A.w		; 0D 2A 1E
	sta $A3.b		; 85 A3
	lda $5E.b		; A5 5E
	tax		; AA
	and #$3F00.w		; 29 00 3F
	sta $A5.b		; 85 A5
	txa		; 8A
	bit #$4000.w		; 89 00 40
	beq   7.b		; F0 07
	lda $A5.b		; A5 A5
	ora $1E2C.w		; 0D 2C 1E
	sta $A5.b		; 85 A5
	txa		; 8A
	bit #$0040.w		; 89 40 00
	beq   7.b		; F0 07
	lda $A5.b		; A5 A5
	ora $1E2E.w		; 0D 2E 1E
	sta $A5.b		; 85 A5
	txa		; 8A
	bit #$8000.w		; 89 00 80
	beq   7.b		; F0 07
	lda $A5.b		; A5 A5
	ora $1E30.w		; 0D 30 1E
	sta $A5.b		; 85 A5
	txa		; 8A
	bit #$0080.w		; 89 80 00
	beq   7.b		; F0 07
	lda $A5.b		; A5 A5
	ora $1E32.w		; 0D 32 1E
	sta $A5.b		; 85 A5
	txa		; 8A
	bit #$0020.w		; 89 20 00
	beq   7.b		; F0 07
	lda $A5.b		; A5 A5
	ora $1E34.w		; 0D 34 1E
	sta $A5.b		; 85 A5
	txa		; 8A
	bit #$0010.w		; 89 10 00
	beq   7.b		; F0 07
	lda $A5.b		; A5 A5
	ora $1E36.w		; 0D 36 1E
	sta $A5.b		; 85 A5
	lda $A3.b		; A5 A3
	eor $AB.b		; 45 AB
	and $A3.b		; 25 A3
	sta $A7.b		; 85 A7
	lda $A5.b		; A5 A5
	eor $AD.b		; 45 AD
	and $A5.b		; 25 A5
	sta $A9.b		; 85 A9
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$4000.w		; A9 00 40
	sta $1E20.w		; 8D 20 1E
	sta $1E2C.w		; 8D 2C 1E
	lda #$0040.w		; A9 40 00
	sta $1E22.w		; 8D 22 1E
	sta $1E2E.w		; 8D 2E 1E
	lda #$8000.w		; A9 00 80
	sta $1E24.w		; 8D 24 1E
	sta $1E30.w		; 8D 30 1E
	lda #$0080.w		; A9 80 00
	sta $1E26.w		; 8D 26 1E
	sta $1E32.w		; 8D 32 1E
	lda #$0020.w		; A9 20 00
	sta $1E28.w		; 8D 28 1E
	sta $1E34.w		; 8D 34 1E
	lda #$0010.w		; A9 10 00
	sta $1E2A.w		; 8D 2A 1E
	sta $1E36.w		; 8D 36 1E
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1E20.w		; AD 20 1E
	sta $1F10.w		; 8D 10 1F
	lda $1E22.w		; AD 22 1E
	sta $1F12.w		; 8D 12 1F
	lda $1E24.w		; AD 24 1E
	sta $1F14.w		; 8D 14 1F
	lda $1E26.w		; AD 26 1E
	sta $1F16.w		; 8D 16 1F
	lda $1E28.w		; AD 28 1E
	sta $1F18.w		; 8D 18 1F
	lda $1E2A.w		; AD 2A 1E
	sta $1F1A.w		; 8D 1A 1F
	lda $1E2C.w		; AD 2C 1E
	sta $1F1C.w		; 8D 1C 1F
	lda $1E2E.w		; AD 2E 1E
	sta $1F1E.w		; 8D 1E 1F
	lda $1E30.w		; AD 30 1E
	sta $1F20.w		; 8D 20 1F
	lda $1E32.w		; AD 32 1E
	sta $1F22.w		; 8D 22 1F
	lda $1E34.w		; AD 34 1E
	sta $1F24.w		; 8D 24 1F
	lda $1E36.w		; AD 36 1E
	sta $1F26.w		; 8D 26 1F
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F10.w		; AD 10 1F
	sta $1E20.w		; 8D 20 1E
	lda $1F12.w		; AD 12 1F
	sta $1E22.w		; 8D 22 1E
	lda $1F14.w		; AD 14 1F
	sta $1E24.w		; 8D 24 1E
	lda $1F16.w		; AD 16 1F
	sta $1E26.w		; 8D 26 1E
	lda $1F18.w		; AD 18 1F
	sta $1E28.w		; 8D 28 1E
	lda $1F1A.w		; AD 1A 1F
	sta $1E2A.w		; 8D 2A 1E
	lda $1F1C.w		; AD 1C 1F
	sta $1E2C.w		; 8D 2C 1E
	lda $1F1E.w		; AD 1E 1F
	sta $1E2E.w		; 8D 2E 1E
	lda $1F20.w		; AD 20 1F
	sta $1E30.w		; 8D 30 1E
	lda $1F22.w		; AD 22 1F
	sta $1E32.w		; 8D 32 1E
	lda $1F24.w		; AD 24 1F
	sta $1E34.w		; 8D 34 1E
	lda $1F26.w		; AD 26 1F
	sta $1E36.w		; 8D 36 1E
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D06.w		; AD 06 1D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$1D20.w		; 69 20 1D
	tax		; AA
	lda $1E20.w		; AD 20 1E
	sta $02.b,X		; 95 02
	lda $1E22.w		; AD 22 1E
	sta $04.b,X		; 95 04
	lda $1E24.w		; AD 24 1E
	sta $06.b,X		; 95 06
	lda $1E26.w		; AD 26 1E
	sta $08.b,X		; 95 08
	lda $1E28.w		; AD 28 1E
	sta $0A.b,X		; 95 0A
	lda $1E2A.w		; AD 2A 1E
	sta $0C.b,X		; 95 0C
	lda $1D07.w		; AD 07 1D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$1D20.w		; 69 20 1D
	tax		; AA
	lda $1E2C.w		; AD 2C 1E
	sta $02.b,X		; 95 02
	lda $1E2E.w		; AD 2E 1E
	sta $04.b,X		; 95 04
	lda $1E30.w		; AD 30 1E
	sta $06.b,X		; 95 06
	lda $1E32.w		; AD 32 1E
	sta $08.b,X		; 95 08
	lda $1E34.w		; AD 34 1E
	sta $0A.b,X		; 95 0A
	lda $1E36.w		; AD 36 1E
	sta $0C.b,X		; 95 0C
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D06.w		; AD 06 1D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$1D20.w		; 69 20 1D
	tax		; AA
	lda $02.b,X		; B5 02
	sta $1E20.w		; 8D 20 1E
	lda $04.b,X		; B5 04
	sta $1E22.w		; 8D 22 1E
	lda $06.b,X		; B5 06
	sta $1E24.w		; 8D 24 1E
	lda $08.b,X		; B5 08
	sta $1E26.w		; 8D 26 1E
	lda $0A.b,X		; B5 0A
	sta $1E28.w		; 8D 28 1E
	lda $0C.b,X		; B5 0C
	sta $1E2A.w		; 8D 2A 1E
	lda $1D07.w		; AD 07 1D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$1D20.w		; 69 20 1D
	tax		; AA
	lda $02.b,X		; B5 02
	sta $1E2C.w		; 8D 2C 1E
	lda $04.b,X		; B5 04
	sta $1E2E.w		; 8D 2E 1E
	lda $06.b,X		; B5 06
	sta $1E30.w		; 8D 30 1E
	lda $08.b,X		; B5 08
	sta $1E32.w		; 8D 32 1E
	lda $0A.b,X		; B5 0A
	sta $1E34.w		; 8D 34 1E
	lda $0C.b,X		; B5 0C
	sta $1E36.w		; 8D 36 1E
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	tax		; AA
	lda $98A2.w,X		; BD A2 98
	plb		; AB
	rtl		; 6B

	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	php		; 08
	ora [$06.b]		; 07 06
	ora $8B.b		; 05 8B
	phk		; 4B
	plb		; AB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	tax		; AA
	lda $98B7.w,X		; BD B7 98
	plb		; AB
	rtl		; 6B

	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	ora $09.b		; 05 09
	php		; 08
	ora [$06.b]		; 07 06
.ACCU 16
	rep #$20		; C2 20
	stz $1D08.w		; 9C 08 1D
	stz $1D0A.w		; 9C 0A 1D
	stz $1D0C.w		; 9C 0C 1D
	stz $1D0E.w		; 9C 0E 1D
	stz $1D10.w		; 9C 10 1D
	stz $1D12.w		; 9C 12 1D
	stz $1D14.w		; 9C 14 1D
	stz $1D16.w		; 9C 16 1D
	rts		; 60

.BASE $80
L8098DB:
.BASE $00
L0098DB:
	php
	phb
	phd
.ACCU 16
.INDEX 16
	rep #$30
	pha
	phx
	phy
	lda #$0000.w
	tad
.ACCU 8
	sep #$20
	phk
	plb
	lda RDNMI.w		; NMI Flag and 5A22 Version
	stz HDMAEN.w		; HDMA Channel Enable
	lda $40.b
	sta INIDSP.w		; Screen Display
.ACCU 8
.INDEX 8
	sep #$30
	ldx $6D.b
	jmp ($98FD.w,X)
	cmp $99CF99.l
	sta $99.b
	ora $99.b
	jsr L008448.w
	jsl L9F9ED7.l
.ACCU 8
	sep #$20
	lda $1C40.w
	sta M7A.w		; Mode 7 Matrix A
	lda $1C41.w
	sta M7A.w		; Mode 7 Matrix A
	lda $1C42.w
	sta M7B.w		; Mode 7 Matrix B
	lda $1C43.w
	sta M7B.w		; Mode 7 Matrix B
	lda $1C44.w
	sta M7C.w		; Mode 7 Matrix C
	lda $1C45.w
	sta M7C.w		; Mode 7 Matrix C
	lda $1C46.w
	sta M7D.w		; Mode 7 Matrix D
	lda $1C47.w
	sta M7D.w		; Mode 7 Matrix D
	lda $1C48.w
	sta M7X.w		; Mode 7 Center X
	lda $1C49.w
	sta M7X.w		; Mode 7 Center X
	lda $1C4A.w
	sta M7Y.w		; Mode 7 Center Y
	lda $1C4B.w
	sta M7Y.w		; Mode 7 Center Y
.ACCU 16
.INDEX 16
	rep #$30
	ldx #$0000.w
L00995B:
	lda $1CD0.w,X
	beq L009977.b
	sta $74.b
	lda $1CD2.w,X
	sta $76.b
	stz $1CD0.w,X
	phx
	php
	jsr L008C4D.w
	plp
	plx
	inx
	inx
	inx
	inx
	bra L00995B.b
L009977:
	jsr L008353.w
.ACCU 8
	sep #$20
	lda $78.b
	sta APUIO2.w		; APU I/O Port 2
	stz $78.b
	bra L0099FC.b
	lda $1C54.w		; AD 54 1C
	bne L0099FC.b		; D0 72
	jsr L008C4D.w		; 20 4D 8C
.ACCU 16
	rep #$20		; C2 20
	lda $1C06.w		; AD 06 1C
	beq  15.b		; F0 0F
	sta $0074.w		; 8D 74 00
	lda $1C08.w		; AD 08 1C
	sta $0076.w		; 8D 76 00
	stz $1C06.w		; 9C 06 1C
	jsr L008C4D.w		; 20 4D 8C
.ACCU 16
	rep #$20		; C2 20
	lda $1C0A.w		; AD 0A 1C
	beq  15.b		; F0 0F
	sta $0074.w		; 8D 74 00
	lda $1C0C.w		; AD 0C 1C
	sta $0076.w		; 8D 76 00
	stz $1C0A.w		; 9C 0A 1C
	jsr L008C4D.w		; 20 4D 8C
.ACCU 16
	rep #$20		; C2 20
	lda $1C0E.w		; AD 0E 1C
	beq  15.b		; F0 0F
	sta $0074.w		; 8D 74 00
	lda $1C10.w		; AD 10 1C
	sta $0076.w		; 8D 76 00
	stz $1C0E.w		; 9C 0E 1C
	jsr L008C4D.w		; 20 4D 8C
.ACCU 8
	sep #$20		; E2 20
	lda $1C54.w		; AD 54 1C
	bne L0099FC.b		; D0 26
	lda $72.b		; A5 72
	sta $40.b		; 85 40
	lda $1C50.w		; AD 50 1C
	sta APUIO0.w		; 8D 40 21
	stz $1C50.w		; 9C 50 1C
	lda $78.b		; A5 78
	sta APUIO2.w		; 8D 42 21
	stz $78.b		; 64 78
	jsr L008448.w		; 20 48 84
	jsr $9411.w		; 20 11 94
	jsr L008C4D.w		; 20 4D 8C
	jsr $8D4C.w		; 20 4C 8D
	jsr $9576.w		; 20 76 95
	jsr L008353.w		; 20 53 83
L0099FC:
.ACCU 8
	sep #$20
	lda $6F.b
	sta HDMAEN.w		; HDMA Channel Enable
	jmp LE880A3.l
.BASE $80
L809A07:
.BASE $00
L009A07:
	ply
	plx
	pla
	pld
	plb
	plp
	rti

	phb		; 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0400.w		; 9C 00 04
	ldx #$0400.w		; A2 00 04
	ldy #$0401.w		; A0 01 04
	lda #$001E.w		; A9 1E 00
	mvn $00,$00		; 54 00 00
	lda #$0B00.w		; A9 00 0B
	sta $10.b		; 85 10
	stz $98.b		; 64 98
.ACCU 8
	sep #$20		; E2 20
	lda #$84.b		; A9 84
	pha		; 48
	plb		; AB
.ACCU 16
	rep #$20		; C2 20
	lda ($10.b)		; B2 10
	tax		; AA
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	clc		; 18
	adc $00.b		; 65 00
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	lda $8000.w,Y		; B9 00 80
	sta $12.b		; 85 12
.ACCU 8
	sep #$20		; E2 20
	lda $8002.w,Y		; B9 02 80
	pha		; 48
	plb		; AB
	lda $05.b,X		; B5 05
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda ($12.b),Y		; B1 12
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	iny		; C8
	sty $12.b		; 84 12
.ACCU 16
	rep #$20		; C2 20
	lda $0A.b,X		; B5 0A
	sta $06.b		; 85 06
	lda $08.b,X		; B5 08
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	ora $07.b		; 05 07
	sta $07.b		; 85 07
	lda $28.b,X		; B5 28
	sta $01.b		; 85 01
	lda $2A.b,X		; B5 2A
	sta $03.b		; 85 03
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   5.b		; F0 05
	jsr $9BCB.w		; 20 CB 9B
	bra   3.b		; 80 03
	jsr $9B17.w		; 20 17 9B
	ldx $98.b		; A6 98
	cpx #$0200.w		; E0 00 02
	bcs 114.b		; B0 72
.ACCU 16
	rep #$20		; C2 20
	inc $10.b		; E6 10
	inc $10.b		; E6 10
	lda ($10.b)		; B2 10
	cmp #$FFFF.w		; C9 FF FF
	beq   3.b		; F0 03
	jmp $9A27.w		; 4C 27 9A
.ACCU 8
	sep #$20		; E2 20
	lda #$80.b		; A9 80
	pha		; 48
	plb		; AB
	lda $9B04.w		; AD 04 9B
	sta $00.b		; 85 00
.ACCU 16
	rep #$20		; C2 20
	lda #$9B05.w		; A9 05 9B
	sta $12.b		; 85 12
	lda #$00C0.w		; A9 C0 00
	sec		; 38
	sbc $0A02.w		; ED 02 0A
	sta $03.b		; 85 03
	lda #$01C0.w		; A9 C0 01
	sta $06.b		; 85 06
	lda #$0004.w		; A9 04 00
	ora $8F.b		; 05 8F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	ora $07.b		; 05 07
	sta $07.b		; 85 07
	lda $B1.b		; A5 B1
	and #$0001.w		; 29 01 00
	bne   7.b		; D0 07
	lda $1028.w		; AD 28 10
	sta $01.b		; 85 01
	bra   5.b		; 80 05
	lda $10A8.w		; AD A8 10
	sta $01.b		; 85 01
	jsr $9B17.w		; 20 17 9B
	ldx $98.b		; A6 98
	cpx #$0200.w		; E0 00 02
	bcs  24.b		; B0 18
.ACCU 16
	rep #$20		; C2 20
	lda $98.b		; A5 98
	clc		; 18
	adc #$0200.w		; 69 00 02
	tax		; AA
	lda #$E0E0.w		; A9 E0 E0
	sta $00.b,X		; 95 00
	txy		; 9B
	iny		; C8
	lda #$01FE.w		; A9 FE 01
	sbc $98.b		; E5 98
	mvn $00,$00		; 54 00 00
	plb		; AB
	rtl		; 6B

	ora $E8.b,S		; 03 E8
	php		; 08
	sbc $0E08.w,Y		; F9 08 0E
	pha		; 48
	sed		; F8
	sed		; F8
	sbc $2008.w,Y		; F9 08 20
	pha		; 48
	php		; 08
	inx		; E8
	sbc $0E48.w,Y		; F9 48 0E
	php		; 08
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $98.b		; A6 98
	ldy $12.b		; A4 12
	stz $0F.b		; 64 0F
	lda $0000.w,Y		; B9 00 00
	bmi   7.b		; 30 07
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	bra   5.b		; 80 05
.ACCU 16
	rep #$20		; C2 20
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $01.b		; 65 01
	cmp #$0100.w		; C9 00 01
	bcc   7.b		; 90 07
	cmp #$FFF0.w		; C9 F0 FF
	bcs   2.b		; B0 02
	bra 118.b		; 80 76
	sta $0200.w,X		; 9D 00 02
	and #$FF00.w		; 29 00 FF
	beq   2.b		; F0 02
	inc $0F.b		; E6 0F
	lda $0002.w,Y		; B9 02 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $03.b		; 65 03
	cmp #$00E0.w		; C9 E0 00
	bcc   7.b		; 90 07
	cmp #$FFF0.w		; C9 F0 FF
	bcs   2.b		; B0 02
	bra  77.b		; 80 4D
	sta $0201.w,X		; 9D 01 02
	lda $0003.w,Y		; B9 03 00
	xba		; EB
	bit #$0800.w		; 89 00 08
	beq   4.b		; F0 04
	inc $0F.b		; E6 0F
	inc $0F.b		; E6 0F
	and #$F7FF.w		; 29 FF F7
	clc		; 18
	adc $06.b		; 65 06
	sta $0202.w,X		; 9D 02 02
	lda $0F.b		; A5 0F
	and #$00FF.w		; 29 FF 00
	beq  32.b		; F0 20
	stx $0D.b		; 86 0D
	txa		; 8A
	and #$000F.w		; 29 0F 00
	ora $0F.b		; 05 0F
	and #$00FF.w		; 29 FF 00
	tax		; AA
	lda $0D.b		; A5 0D
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tay		; A8
	lda $809C86.l,X		; BF 86 9C 80
	and #$00FF.w		; 29 FF 00
	ora $0400.w,Y		; 19 00 04
	sta $0400.w,Y		; 99 00 04
	ldx $98.b		; A6 98
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	bcs  21.b		; B0 15
	stx $98.b		; 86 98
	ldy $12.b		; A4 12
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	sty $12.b		; 84 12
.ACCU 8
	sep #$20		; E2 20
	dec $00.b		; C6 00
	beq   3.b		; F0 03
	jmp $9B1B.w		; 4C 1B 9B
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $98.b		; A6 98
	ldy $12.b		; A4 12
	stz $0F.b		; 64 0F
	lda $0001.w,Y		; B9 01 00
	bmi   7.b		; 30 07
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	bra   5.b		; 80 05
.ACCU 16
	rep #$20		; C2 20
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $01.b		; 65 01
	cmp #$0100.w		; C9 00 01
	bcc   7.b		; 90 07
	cmp #$FFF0.w		; C9 F0 FF
	bcs   2.b		; B0 02
	bra 117.b		; 80 75
	sta $0200.w,X		; 9D 00 02
	and #$FF00.w		; 29 00 FF
	beq   2.b		; F0 02
	inc $0F.b		; E6 0F
	lda $0002.w,Y		; B9 02 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $03.b		; 65 03
	cmp #$00E0.w		; C9 E0 00
	bcc   7.b		; 90 07
	cmp #$FFF0.w		; C9 F0 FF
	bcs   2.b		; B0 02
	bra  76.b		; 80 4C
	sta $0201.w,X		; 9D 01 02
	lda $0004.w,Y		; B9 04 00
	bit #$0800.w		; 89 00 08
	beq   4.b		; F0 04
	inc $0F.b		; E6 0F
	inc $0F.b		; E6 0F
	and #$F7FF.w		; 29 FF F7
	clc		; 18
	adc $06.b		; 65 06
	sta $0202.w,X		; 9D 02 02
	lda $0F.b		; A5 0F
	and #$00FF.w		; 29 FF 00
	beq  32.b		; F0 20
	stx $0D.b		; 86 0D
	txa		; 8A
	and #$000F.w		; 29 0F 00
	ora $0F.b		; 05 0F
	and #$00FF.w		; 29 FF 00
	tax		; AA
	lda $0D.b		; A5 0D
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tay		; A8
	lda $809C86.l,X		; BF 86 9C 80
	and #$00FF.w		; 29 FF 00
	ora $0400.w,Y		; 19 00 04
	sta $0400.w,Y		; 99 00 04
	ldx $98.b		; A6 98
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	bcs  21.b		; B0 15
	stx $98.b		; 86 98
	ldy $12.b		; A4 12
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	sty $12.b		; 84 12
.ACCU 8
	sep #$20		; E2 20
	dec $00.b		; C6 00
	beq   3.b		; F0 03
	jmp $9BCF.w		; 4C CF 9B
	rts		; 60

	jsr $9B17.w		; 20 17 9B
	rtl		; 6B

	jsr $9BCB.w		; 20 CB 9B
	rtl		; 6B

	brk $01.b		; 00 01
	cop $03.b		; 02 03
	brk $04.b		; 00 04
	php		; 08
	tsb $1000.w		; 0C 00 10
	jsr L000030.w		; 20 30 00
	rti		; 40

	bra -64.b		; 80 C0
	phb		; 8B
	phk		; 4B
	plb		; AB
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda #$84.b		; A9 84
	pha		; 48
	plb		; AB
	ldx #$1000.w		; A2 00 10
.ACCU 8
	sep #$20		; E2 20
	lda $00.b,X		; B5 00
	beq  41.b		; F0 29
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $809C.w,Y		; B9 9C 80
	sta $10.b		; 85 10
	lda $05.b,X		; B5 05
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda ($10.b),Y		; B1 10
	iny		; C8
	sta $18.b,X		; 95 18
	lda ($10.b),Y		; B1 10
	iny		; C8
	sta $40.b,X		; 95 40
	lda ($10.b),Y		; B1 10
	iny		; C8
	sta $41.b,X		; 95 41
	lda ($10.b),Y		; B1 10
	sta $42.b,X		; 95 42
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1200.w		; E0 00 12
	bne -60.b		; D0 C4
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1800.w		; A2 00 18
	ldy #$0B00.w		; A0 00 0B
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	beq  13.b		; F0 0D
	lda $03.b,X		; B5 03
	and #$00FF.w		; 29 FF 00
	beq   6.b		; F0 06
	txa		; 8A
	sta $0000.w,Y		; 99 00 00
	iny		; C8
	iny		; C8
	txa		; 8A
	sec		; 38
	sbc #$0080.w		; E9 80 00
	tax		; AA
	cpx #$1180.w		; E0 80 11
	bne -31.b		; D0 E1
	lda $B1.b		; A5 B1
	and #$0001.w		; 29 01 00
	bne  26.b		; D0 1A
	lda $1100.w		; AD 00 11
	and #$00FF.w		; 29 FF 00
	beq  42.b		; F0 2A
	lda $1103.w		; AD 03 11
	and #$00FF.w		; 29 FF 00
	beq  34.b		; F0 22
	lda #$1100.w		; A9 00 11
	sta $0000.w,Y		; 99 00 00
	iny		; C8
	iny		; C8
	bra  24.b		; 80 18
	lda $1180.w		; AD 80 11
	and #$00FF.w		; 29 FF 00
	beq  16.b		; F0 10
	lda $1183.w		; AD 83 11
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda #$1180.w		; A9 80 11
	sta $0000.w,Y		; 99 00 00
	iny		; C8
	iny		; C8
	lda $1098.w		; AD 98 10
	and #$000E.w		; 29 0E 00
	sta $00.b		; 85 00
	lda $1018.w		; AD 18 10
	and #$000E.w		; 29 0E 00
	cmp $00.b		; C5 00
	bpl  14.b		; 10 0E
	lda #$1080.w		; A9 80 10
	sta $0000.w,Y		; 99 00 00
	lda #$1000.w		; A9 00 10
	sta $0002.w,Y		; 99 02 00
	bra  12.b		; 80 0C
	lda #$1000.w		; A9 00 10
	sta $0000.w,Y		; 99 00 00
	lda #$1080.w		; A9 80 10
	sta $0002.w,Y		; 99 02 00
	lda #$FFFF.w		; A9 FF FF
	sta $0004.w,Y		; 99 04 00
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	lda #$E0E0.w		; A9 E0 E0
	sta $0200.w		; 8D 00 02
	ldx #$0200.w		; A2 00 02
	ldy #$0201.w		; A0 01 02
	lda #$01FE.w		; A9 FE 01
	mvn $00,$00		; 54 00 00
	stz $0400.w		; 9C 00 04
	ldx #$0400.w		; A2 00 04
	ldy #$0401.w		; A0 01 04
	lda #$001E.w		; A9 1E 00
	mvn $00,$00		; 54 00 00
	plb		; AB
	lda #$0018.w		; A9 18 00
	sta $1C08.w		; 8D 08 1C
	stz $98.b		; 64 98
	ldx $1C06.w		; AE 06 1C
	lda $809DCA.l,X		; BF CA 9D 80
	sta $88.b		; 85 88
	phx		; DA
	ldx $88.b		; A6 88
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	jsr $9EB9.w		; 20 B9 9E
	jsr $9E2A.w		; 20 2A 9E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	plx		; FA
	inx		; E8
	inx		; E8
	dec $1C08.w		; CE 08 1C
	bne -32.b		; D0 E0
	plb		; AB
	rtl		; 6B

	brk $10.b		; 00 10
	bra  16.b		; 80 10
	brk $11.b		; 00 11
	bra  17.b		; 80 11
	brk $12.b		; 00 12
	bra  18.b		; 80 12
	brk $13.b		; 00 13
	bra  19.b		; 80 13
	brk $14.b		; 00 14
	bra  20.b		; 80 14
	brk $15.b		; 00 15
	bra  21.b		; 80 15
	brk $16.b		; 00 16
	bra  22.b		; 80 16
	brk $17.b		; 00 17
	bra  23.b		; 80 17
	brk $18.b		; 00 18
	bra  24.b		; 80 18
	brk $19.b		; 00 19
	bra  25.b		; 80 19
	brk $1A.b		; 00 1A
	bra  26.b		; 80 1A
	brk $1B.b		; 00 1B
	bra  27.b		; 80 1B
	bra  27.b		; 80 1B
	brk $1B.b		; 00 1B
	bra  26.b		; 80 1A
	brk $1A.b		; 00 1A
	bra  25.b		; 80 19
	brk $19.b		; 00 19
	bra  24.b		; 80 18
	brk $18.b		; 00 18
	bra  23.b		; 80 17
	brk $17.b		; 00 17
	bra  22.b		; 80 16
	brk $16.b		; 00 16
	bra  21.b		; 80 15
	brk $15.b		; 00 15
	bra  20.b		; 80 14
	brk $14.b		; 00 14
	bra  19.b		; 80 13
	brk $13.b		; 00 13
	bra  18.b		; 80 12
	brk $12.b		; 00 12
	bra  17.b		; 80 11
	brk $11.b		; 00 11
	bra  16.b		; 80 10
	brk $10.b		; 00 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $6E.b,X		; D6 6E
	bpl  79.b		; 10 4F
	lda $68.b,X		; B5 68
	clc		; 18
	adc #$0004.w		; 69 04 00
	sta $68.b,X		; 95 68
	tay		; A8
	lda $60.b,X		; B5 60
	sta $00.b		; 85 00
	lda $62.b,X		; B5 62
	sta $02.b		; 85 02
	lda [$00.b],Y		; B7 00
	sta $64.b,X		; 95 64
	iny		; C8
	lda [$00.b],Y		; B7 00
	sta $65.b,X		; 95 65
	iny		; C8
	iny		; C8
	lda [$00.b],Y		; B7 00
	and #$00FF.w		; 29 FF 00
	cmp #$0040.w		; C9 40 00
	bcs   4.b		; B0 04
	sta $6E.b,X		; 95 6E
	bra  37.b		; 80 25
	and #$00C0.w		; 29 C0 00
	cmp #$0040.w		; C9 40 00
	beq  17.b		; F0 11
	lda [$00.b],Y		; B7 00
	and #$003F.w		; 29 3F 00
	sta $6E.b,X		; 95 6E
	lda $68.b,X		; B5 68
	sec		; 38
	sbc #$0004.w		; E9 04 00
	sta $68.b,X		; 95 68
	bra  12.b		; 80 0C
	lda [$00.b],Y		; B7 00
	and #$003F.w		; 29 3F 00
	sta $6E.b,X		; 95 6E
	lda #$FFFC.w		; A9 FC FF
	sta $68.b,X		; 95 68
	lda $03.b,X		; B5 03
	and #$0001.w		; 29 01 00
	beq  50.b		; F0 32
	lda $64.b,X		; B5 64
	sta $12.b		; 85 12
	lda $66.b,X		; B5 66
	sta $14.b		; 85 14
	lda [$12.b]		; A7 12
	sta $00.b		; 85 00
	inc $12.b		; E6 12
	lda $28.b,X		; B5 28
	sta $01.b		; 85 01
	lda $2A.b,X		; B5 2A
	sta $03.b		; 85 03
	lda #$3000.w		; A9 00 30
	lda $0A.b,X		; B5 0A
	sta $06.b		; 85 06
	phb		; 8B
.ACCU 8
	sep #$20		; E2 20
	lda $66.b,X		; B5 66
	pha		; 48
	plb		; AB
	lda $09.b,X		; B5 09
	bne   5.b		; D0 05
	jsr $9B17.w		; 20 17 9B
	plb		; AB
	rts		; 60

	jsr $9BCB.w		; 20 CB 9B
	plb		; AB
	rts		; 60

	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $03.b,X		; B5 03
	bmi  45.b		; 30 2D
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $21.b,X		; B5 21
	sec		; 38
	sbc $1CC1.w		; ED C1 1C
	sta $28.b,X		; 95 28
	clc		; 18
	adc #$0040.w		; 69 40 00
	cmp #$0180.w		; C9 80 01
	bcs  26.b		; B0 1A
	lda $25.b,X		; B5 25
	sec		; 38
	sbc $1CC5.w		; ED C5 1C
	sta $2A.b,X		; 95 2A
	clc		; 18
	adc #$0040.w		; 69 40 00
	cmp #$0180.w		; C9 80 01
	bcs   9.b		; B0 09
.ACCU 8
	sep #$20		; E2 20
	lda $03.b,X		; B5 03
	ora #$01.b		; 09 01
	sta $03.b,X		; 95 03
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $03.b,X		; B5 03
	and #$FE.b		; 29 FE
	sta $03.b,X		; 95 03
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$60.b		; A9 60
	sta VMADDH.w		; 8D 17 21
	lda #$01.b		; A9 01
	sta DMAP0.w		; 8D 00 43
	lda #$18.b		; A9 18
	sta DMADEST0.w		; 8D 01 43
	lda $100C.w		; AD 0C 10
	sta DMASRC0L.w		; 8D 02 43
	lda $100D.w		; AD 0D 10
	sta DMASRC0H.w		; 8D 03 43
	lda $100E.w		; AD 0E 10
	sta DMASRC0B.w		; 8D 04 43
	lda $1012.w		; AD 12 10
	sta DMALEN0L.w		; 8D 05 43
	lda $1013.w		; AD 13 10
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
.ACCU 16
	rep #$20		; C2 20
	lda $1014.w		; AD 14 10
	beq  37.b		; F0 25
.ACCU 8
	sep #$20		; E2 20
	lda $100F.w		; AD 0F 10
	sta DMASRC0L.w		; 8D 02 43
	lda $1010.w		; AD 10 10
	sta DMASRC0H.w		; 8D 03 43
	lda $1011.w		; AD 11 10
	sta DMASRC0B.w		; 8D 04 43
	lda $1014.w		; AD 14 10
	sta DMALEN0L.w		; 8D 05 43
	lda $1015.w		; AD 15 10
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$65.b		; A9 65
	sta VMADDH.w		; 8D 17 21
	lda $108C.w		; AD 8C 10
	sta DMASRC0L.w		; 8D 02 43
	lda $108D.w		; AD 8D 10
	sta DMASRC0H.w		; 8D 03 43
	lda $108E.w		; AD 8E 10
	sta DMASRC0B.w		; 8D 04 43
	lda $1092.w		; AD 92 10
	sta DMALEN0L.w		; 8D 05 43
	lda $1093.w		; AD 93 10
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
.ACCU 16
	rep #$20		; C2 20
	lda $1094.w		; AD 94 10
	beq  37.b		; F0 25
.ACCU 8
	sep #$20		; E2 20
	lda $108F.w		; AD 8F 10
	sta DMASRC0L.w		; 8D 02 43
	lda $1090.w		; AD 90 10
	sta DMASRC0H.w		; 8D 03 43
	lda $1091.w		; AD 91 10
	sta DMASRC0B.w		; 8D 04 43
	lda $1094.w		; AD 94 10
	sta DMALEN0L.w		; 8D 05 43
	lda $1095.w		; AD 95 10
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
	rtl		; 6B

	phb		; 8B
.INDEX 16
	rep #$10		; C2 10
	ldx #$1000.w		; A2 00 10
.ACCU 8
	sep #$20		; E2 20
	lda #$CB.b		; A9 CB
	pha		; 48
	plb		; AB
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	sta $10.b		; 85 10
	lda $0002.w,Y		; B9 02 00
	sta $12.b		; 85 12
.ACCU 8
	sep #$20		; E2 20
	lda $05.b,X		; B5 05
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda ($10.b),Y		; B1 10
	iny		; C8
	sta $00.b		; 85 00
	lda ($10.b),Y		; B1 10
	sta $01.b		; 85 01
	lda $00.b		; A5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	sta $0E.b		; 85 0E
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $0E.b		; 65 0E
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $0C.b,X		; 95 0C
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $0D.b,X		; 95 0D
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $0E.b,X		; 95 0E
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $12.b,X		; 95 12
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $13.b,X		; 95 13
	stz $14.b,X		; 74 14
	stz $15.b,X		; 74 15
	lda $01.b		; A5 01
	beq  42.b		; F0 2A
	lda $01.b		; A5 01
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	sta $0E.b		; 85 0E
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $0E.b		; 65 0E
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $0F.b,X		; 95 0F
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $10.b,X		; 95 10
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $11.b,X		; 95 11
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $14.b,X		; 95 14
	lda ($12.b),Y		; B1 12
	iny		; C8
	sta $15.b,X		; 95 15
.ACCU 16
	rep #$20		; C2 20
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	cmp #$1080.w		; C9 80 10
	bne   4.b		; D0 04
	tax		; AA
	jmp $9FBE.w		; 4C BE 9F
	plb		; AB
	rtl		; 6B

	phb		; 8B
.INDEX 16
	rep #$10		; C2 10
	ldx #$1000.w		; A2 00 10
.ACCU 8
	sep #$20		; E2 20
	lda $00.b,X		; B5 00
	beq  89.b		; F0 59
	lda $06.b,X		; B5 06
	bmi  85.b		; 30 55
	lda $16.b,X		; B5 16
	and #$10.b		; 29 10
	bne  79.b		; D0 4F
	dec $06.b,X		; D6 06
	bpl  75.b		; 10 4B
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	pha		; 48
	plb		; AB
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	sta $10.b		; 85 10
	lda $04.b,X		; B5 04
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda ($10.b),Y		; B1 10
	sta $10.b		; 85 10
.ACCU 8
	sep #$20		; E2 20
	lda $07.b,X		; B5 07
	inc $07.b,X		; F6 07
	inc $07.b,X		; F6 07
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda ($10.b),Y		; B1 10
	iny		; C8
	sta $06.b,X		; 95 06
	and #$C0.b		; 29 C0
	beq  15.b		; F0 0F
	and #$80.b		; 29 80
	bne   5.b		; D0 05
	stz $07.b,X		; 74 07
	jmp $A076.w		; 4C 76 A0
	lda #$80.b		; A9 80
	sta $06.b,X		; 95 06
	bra   4.b		; 80 04
	lda ($10.b),Y		; B1 10
	sta $05.b,X		; 95 05
.ACCU 16
	rep #$20		; C2 20
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1800.w		; E0 00 18
	bne -108.b		; D0 94
	plb		; AB
	rtl		; 6B

L00A0D0:
.ACCU 16
.INDEX 16
	rep #$30
	jsr L008144.w
	jsr L008D7D.w
L00A0D8:
.ACCU 8
.INDEX 8
	sep #$30
	lda $8A.b
	asl A
	tax
	jsr ($A0E3.w,X)
	bra L00A0D0.b
	ply		; 7A
	sbc ($11.b,X)		; E1 11
	ldx #$C4.b		; A2 C4
	ldy $5B.b		; A4 5B
	lda ($D3.b,X)		; A1 D3
	sbc $1F.b,S		; E3 1F
	lda ($1A.b,X)		; A1 1A
	lda ($15.b,X)		; A1 15
	lda ($3D.b,X)		; A1 3D
	lda ($67.b,X)		; A1 67
	lda ($86.b,X)		; A1 86
	lda ($6C.b,X)		; A1 6C
	lda ($71.b,X)		; A1 71
	lda ($8E.b,X)		; A1 8E
	inx		; E8
	sta ($A1.b),Y		; 91 A1
	sta ($A1.b),Y		; 91 A1
	sta ($A1.b),Y		; 91 A1
	tax		; AA
	lda ($76.b,X)		; A1 76
	lda ($B5.b,X)		; A1 B5
	lda ($C6.b,X)		; A1 C6
	lda ($D1.b,X)		; A1 D1
	lda ($DC.b,X)		; A1 DC
	lda ($EA.b,X)		; A1 EA
	lda ($7B.b,X)		; A1 7B
	lda ($22.b,X)		; A1 22
	sta ($A7.b,S),Y		; 93 A7
	sta $60.b,S		; 83 60
	jsl $83A050.l		; 22 50 A0 83
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda #$0060.w		; A9 60 00
	sta $FE.b		; 85 FE
	lda $1D00.w		; AD 00 1D
	and #$00FF.w		; 29 FF 00
	sta $1B1C.w		; 8D 1C 1B
	jsr $AFD5.w		; 20 D5 AF
	jsr $B06A.w		; 20 6A B0
	jsl $839348.l		; 22 48 93 83
	jsr $B0B8.w		; 20 B8 B0
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda #$0062.w		; A9 62 00
	sta $FE.b		; 85 FE
	lda $1D03.w		; AD 03 1D
	and #$00FF.w		; 29 FF 00
	sta $1B1C.w		; 8D 1C 1B
	jsr $AF80.w		; 20 80 AF
	jsr $B091.w		; 20 91 B0
	jsl $839348.l		; 22 48 93 83
	jsr $B0EF.w		; 20 EF B0
	rts		; 60

	jsr $8DB9.w		; 20 B9 8D
	jsl $809786.l		; 22 86 97 80
	jsl $838646.l		; 22 46 86 83
	rts		; 60

	jsl $838838.l		; 22 38 88 83
	rts		; 60

	jsl $8397C1.l		; 22 C1 97 83
	rts		; 60

	jsl $82BAEB.l		; 22 EB BA 82
	rts		; 60

	jsl $9F8C94.l		; 22 94 8C 9F
	rts		; 60

	jsl $9FA3E0.l		; 22 E0 A3 9F
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $8B.b		; A5 8B
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $8398CF.l		; 22 CF 98 83
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$13.b		; A9 13
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $9F8000.l		; 22 00 80 9F
.ACCU 16
	rep #$20		; C2 20
	lda $1DC0.w		; AD C0 1D
	beq   7.b		; F0 07
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$11.b		; A9 11
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $9F8C20.l		; 22 20 8C 9F
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$03.b		; A9 03
	sta $8A.b		; 85 8A
	rts		; 60

	jsr $B27C.w		; 20 7C B2
	jsl $9F930E.l		; 22 0E 93 9F
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldx $8A.b		; A6 8A
	lda $A1F8.w,X		; BD F8 A1
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $9F964F.l		; 22 4F 96 9F
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $8B.b		; A5 8B
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $9F99A4.l		; 22 A4 99 9F
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $8B.b		; A5 8B
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $9F9C34.l		; 22 34 9C 9F
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldx $8A.b		; A6 8A
	lda $A1F8.w,X		; BD F8 A1
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $9FA0D0.l		; 22 D0 A0 9F
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldx $8A.b		; A6 8A
	lda $A1F8.w,X		; BD F8 A1
	sta $8A.b		; 85 8A
	rts		; 60

	brk $01.b		; 00 01
	cop $03.b		; 02 03
	tsb $05.b		; 04 05
	asl $07.b		; 06 07
	php		; 08
	ora #$0A.b		; 09 0A
	phd		; 0B
	tsb $0000.w		; 0C 00 00
	brk $11.b		; 00 11
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	ora ($17.b,S),Y		; 13 17
	cop $12.b		; 02 12
	jsr $8DB9.w		; 20 B9 8D
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$02.b		; A9 02
	jsr $83EF.w		; 20 EF 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1E40.w		; AD 40 1E
	bne   4.b		; D0 04
	jsl $83B763.l		; 22 63 B7 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A46C.w		; 20 6C A4
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $1E40.w		; 9C 40 1E
	jsl $83B7A9.l		; 22 A9 B7 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$A29A.w		; A9 9A A2
	ldx #$0080.w		; A2 80 00
	jsr $92DD.w		; 20 DD 92
	jsl $82C013.l		; 22 13 C0 82
	lda $1F66.w		; AD 66 1F
	and #$00FF.w		; 29 FF 00
	bne  18.b		; D0 12
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $A2.b		; 85 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	stz $1F66.w		; 9C 66 1F
	stz $6D.b		; 64 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	lda #$81.b		; A9 81
	sta NMITIMEN.w		; 8D 00 42
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
	jsr $A2CC.w		; 20 CC A2
	jsr $A2B5.w		; 20 B5 A2
	jsl $82C032.l		; 22 32 C0 82
	jsr $A337.w		; 20 37 A3
	bcs   3.b		; B0 03
	jmp $A278.w		; 4C 78 A2
	jsr $A351.w		; 20 51 A3
	jsr $B155.w		; 20 55 B1
	rts		; 60

	asl A		; 0A
	sbc $FF0500.l,X		; FF 00 05 FF
	cop $01.b		; 02 01
	ora $03.b,S		; 03 03
	brk $02.b		; 00 02
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	ora $05.b		; 05 05
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	ora ($01.b,X)		; 01 01
	tsb $03.b		; 04 03
	cop $02.b		; 02 02
	jsr $B141.w		; 20 41 B1
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	stz $98.b		; 64 98
	jsr $A3A2.w		; 20 A2 A3
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $98.b		; A6 98
	cpx #$0200.w		; E0 00 02
	bcs   3.b		; B0 03
	jsr $B126.w		; 20 26 B1
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	beq 100.b		; F0 64
	lda $1B10.w		; AD 10 1B
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	lda $60.b		; A5 60
	and #$0800.w		; 29 00 08
	beq  16.b		; F0 10
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
	lda $A29D.w,X		; BD 9D A2
	sta $1B10.w		; 8D 10 1B
.ACCU 16
	rep #$20		; C2 20
	bra  71.b		; 80 47
.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$0400.w		; 29 00 04
	beq  16.b		; F0 10
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
	lda $A29E.w,X		; BD 9E A2
	sta $1B10.w		; 8D 10 1B
.ACCU 16
	rep #$20		; C2 20
	bra  46.b		; 80 2E
.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$0200.w		; 29 00 02
	beq  16.b		; F0 10
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
	lda $A29F.w,X		; BD 9F A2
	sta $1B10.w		; 8D 10 1B
.ACCU 16
	rep #$20		; C2 20
	bra  21.b		; 80 15
	lda $60.b		; A5 60
	and #$0100.w		; 29 00 01
	beq  14.b		; F0 0E
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
	lda $A2A0.w,X		; BD A0 A2
	sta $1B10.w		; 8D 10 1B
.ACCU 16
	rep #$20		; C2 20
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1B14.w		; CE 14 1B
	bne   8.b		; D0 08
	lda #$0006.w		; A9 06 00
	sta $1B10.w		; 8D 10 1B
	bra   7.b		; 80 07
	lda $60.b		; A5 60
	and #$5080.w		; 29 80 50
	beq   2.b		; F0 02
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $1B10.w		; AD 10 1B
	cmp #$06.b		; C9 06
	beq   4.b		; F0 04
	lda #$03.b		; A9 03
	sta $78.b		; 85 78
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -13.b		; D0 F3
	rts		; 60

	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	brk $48.b		; 00 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	cop $48.b		; 02 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	tsb $48.b		; 04 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	asl $48.b		; 06 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	php		; 08
	pha		; 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	asl A		; 0A
	pha		; 48
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	asl A		; 0A
	clc		; 18
	adc #$A440.w		; 69 40 A4
	tay		; A8
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $A458.w,X		; BD 58 A4
	sta $06.b		; 85 06
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $A42C.w,X		; BD 2C A4
	tax		; AA
	jsr $A408.w		; 20 08 A4
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $B141.w		; 20 41 B1
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $98.b		; 64 98
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	clc		; 18
	adc #$A44C.w		; 69 4C A4
	tay		; A8
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $A458.w,X		; BD 58 A4
	sta $06.b		; 85 06
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $A42C.w,X		; BD 2C A4
	tax		; AA
	jsr $A408.w		; 20 08 A4
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $98.b		; A6 98
	cpx #$0200.w		; E0 00 02
	bcs   3.b		; B0 03
	jsr $B126.w		; 20 26 B1
	plb		; AB
	rtl		; 6B

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $0000.w,Y		; B9 00 00
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $0001.w,Y		; B9 01 00
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda $0000.w,X		; BD 00 00
	sta $00.b		; 85 00
.INDEX 16
	rep #$10		; C2 10
	inx		; E8
	stx $12.b		; 86 12
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	jsr $9B17.w		; 20 17 9B
	rts		; 60

	sei		; 78
	lda $78.b,S		; A3 78
	lda $7F.b,S		; A3 7F
	lda $86.b,S		; A3 86
	lda $8D.b,S		; A3 8D
	lda $94.b,S		; A3 94
	lda $78.b,S		; A3 78
	lda $78.b,S		; A3 78
	lda $78.b,S		; A3 78
	lda $9B.b,S		; A3 9B
	lda $10.b,S		; A3 10
	bra  16.b		; 80 10
	bcc  16.b		; 90 10
	ldy #$88.b		; A0 88
	bra -120.b		; 80 88
	bcc -120.b		; 90 88
	ldy #$10.b		; A0 10
	plp		; 28
	bpl  64.b		; 10 40
	bpl  88.b		; 10 58
	bpl 112.b		; 10 70
	bpl -120.b		; 10 88
	bpl -96.b		; 10 A0
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1D00.w		; 8D 00 1D
	lda #$01.b		; A9 01
	sta $1D03.w		; 8D 03 1D
	stz $8E.b		; 64 8E
	stz $1D08.w		; 9C 08 1D
	stz $1D09.w		; 9C 09 1D
	stz $1D0A.w		; 9C 0A 1D
	stz $1D0B.w		; 9C 0B 1D
	stz $1D0C.w		; 9C 0C 1D
	stz $1D0D.w		; 9C 0D 1D
	stz $1D0E.w		; 9C 0E 1D
	stz $1D0F.w		; 9C 0F 1D
	stz $1D10.w		; 9C 10 1D
	stz $1D11.w		; 9C 11 1D
	stz $1D12.w		; 9C 12 1D
	stz $1D13.w		; 9C 13 1D
	stz $1D14.w		; 9C 14 1D
	stz $1D15.w		; 9C 15 1D
	stz $1D16.w		; 9C 16 1D
	stz $1D17.w		; 9C 17 1D
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0D8E.w		; A9 8E 0D
	sta $1B14.w		; 8D 14 1B
	phb		; 8B
	stz $1E40.w		; 9C 40 1E
	ldx #$1E40.w		; A2 40 1E
	ldy #$1E41.w		; A0 41 1E
	lda #$009E.w		; A9 9E 00
	mvn $00,$00		; 54 00 00
	plb		; AB
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	stz $6F.b		; 64 6F
	stz $1B10.w		; 9C 10 1B
	lda #$01.b		; A9 01
	jsr $83EF.w		; 20 EF 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsl $83B84D.l		; 22 4D B8 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$AA4A.w		; A9 4A AA
	ldx #$0080.w		; A2 80 00
	jsr $92DD.w		; 20 DD 92
	jsr $ADD3.w		; 20 D3 AD
	jsl $82C0AC.l		; 22 AC C0 82
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	sta $A2.b		; 85 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda $1D00.w		; AD 00 1D
	sta $1B40.w		; 8D 40 1B
	lda $1D03.w		; AD 03 1D
	sta $1B80.w		; 8D 80 1B
	stz $6D.b		; 64 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	lda #$81.b		; A9 81
	sta NMITIMEN.w		; 8D 00 42
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
	jsl $82C0D1.l		; 22 D1 C0 82
	jsr $AF72.w		; 20 72 AF
	jsl $82C10B.l		; 22 0B C1 82
	jsl $82C144.l		; 22 44 C1 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $73.b		; A5 73
	and #$00FF.w		; 29 FF 00
	bne   3.b		; D0 03
	jsr $A843.w		; 20 43 A8
	jsr $A6F5.w		; 20 F5 A6
	jsr $A563.w		; 20 63 A5
	jsr $ADF3.w		; 20 F3 AD
.ACCU 8
	sep #$20		; E2 20
	lda $1B10.w		; AD 10 1B
	cmp #$02.b		; C9 02
	beq  10.b		; F0 0A
	lda $1B12.w		; AD 12 1B
	cmp #$FF.b		; C9 FF
	beq   3.b		; F0 03
	jmp $A51E.w		; 4C 1E A5
	jsr $A575.w		; 20 75 A5
	jsr $B17B.w		; 20 7B B1
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	ora $62.b		; 05 62
	and #$2000.w		; 29 00 20
	beq   6.b		; F0 06
	lda #$00FF.w		; A9 FF 00
	sta $1B12.w		; 8D 12 1B
	rts		; 60

	jsr $AE89.w		; 20 89 AE
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
.ACCU 8
	sep #$20		; E2 20
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -15.b		; D0 F1
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $0000.w,Y		; B9 00 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	lda [$FE.b]		; A7 FE
	bit #$0800.w		; 89 00 08
	bne  48.b		; D0 30
	bit #$0400.w		; 89 00 04
	bne  32.b		; D0 20
	bit #$0200.w		; 89 00 02
	bne  16.b		; D0 10
	bit #$0100.w		; 89 00 01
	beq  50.b		; F0 32
	lda $AA50.w,X		; BD 50 AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
	bra  31.b		; 80 1F
	lda $AA4F.w,X		; BD 4F AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
	bra  20.b		; 80 14
	lda $AA4E.w,X		; BD 4E AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
	bra   9.b		; 80 09
	lda $AA4D.w,X		; BD 4D AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $0000.w,Y		; B9 00 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	lda [$FE.b]		; A7 FE
	bit #$0800.w		; 89 00 08
	bne  48.b		; D0 30
	bit #$0400.w		; 89 00 04
	bne  32.b		; D0 20
	bit #$0200.w		; 89 00 02
	bne  16.b		; D0 10
	bit #$0100.w		; 89 00 01
	beq  50.b		; F0 32
	lda $AA78.w,X		; BD 78 AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
	bra  31.b		; 80 1F
	lda $AA77.w,X		; BD 77 AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
	bra  20.b		; 80 14
	lda $AA76.w,X		; BD 76 AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
	bra   9.b		; 80 09
	lda $AA75.w,X		; BD 75 AA
	and #$00FF.w		; 29 FF 00
	sta $0000.w,Y		; 99 00 00
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	rts		; 60

	jsl $EA000A.l		; 22 0A 00 EA
	rts		; 60

	bra  80.b		; 80 50
	beq  41.b		; F0 29
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	sta $78.b		; 85 78
	stz $1D02.w		; 9C 02 1D
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $0002.w,Y		; 99 02 00
	jsr $A693.w		; 20 93 A6
	inc $1B10.w		; EE 10 1B
	stx $00.b		; 86 00
	lda $0006.w,Y		; B9 06 00
	tax		; AA
	lda #$0001.w		; A9 01 00
	sta $0000.w,X		; 9D 00 00
	ldx $00.b		; A6 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	bra  46.b		; 80 2E
.ACCU 16
	rep #$20		; C2 20
	lda [$FE.b]		; A7 FE
	and #$8040.w		; 29 40 80
	beq  37.b		; F0 25
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	sta $78.b		; 85 78
	stz $1D02.w		; 9C 02 1D
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $0002.w,Y		; 99 02 00
	jsr $A6C4.w		; 20 C4 A6
	inc $1B10.w		; EE 10 1B
	stx $00.b		; 86 00
	lda $0006.w,Y		; B9 06 00
	tax		; AA
	lda #$0001.w		; A9 01 00
	sta $0000.w,X		; 9D 00 00
	ldx $00.b		; A6 00
.ACCU 16
	rep #$20		; C2 20
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	beq  23.b		; F0 17
	lda $1B14.w		; AD 14 1B
	cmp #$0001.w		; C9 01 00
	bne  15.b		; D0 0F
	lda $1B16.w		; AD 16 1B
	cmp $0000.w,Y		; D9 00 00
	bne   7.b		; D0 07
	lda #$0001.w		; A9 01 00
	sta $0004.w,Y		; 99 04 00
	rts		; 60

	lda #$0000.w		; A9 00 00
	sta $0004.w,Y		; 99 04 00
	lda #$0001.w		; A9 01 00
	sta $1B14.w		; 8D 14 1B
	lda $0000.w,Y		; B9 00 00
	sta $1B16.w		; 8D 16 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	beq  23.b		; F0 17
	lda $1B14.w		; AD 14 1B
	cmp #$0002.w		; C9 02 00
	bne  15.b		; D0 0F
	lda $1B16.w		; AD 16 1B
	cmp $0000.w,Y		; D9 00 00
	bne   7.b		; D0 07
	lda #$0000.w		; A9 00 00
	sta $0004.w,Y		; 99 04 00
	rts		; 60

	lda #$0001.w		; A9 01 00
	sta $0004.w,Y		; 99 04 00
	lda #$0002.w		; A9 02 00
	sta $1B14.w		; 8D 14 1B
	lda $0000.w,Y		; B9 00 00
	sta $1B16.w		; 8D 16 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $98.b		; 64 98
	jsr $B141.w		; 20 41 B1
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1B40.w		; AD 40 1B
	asl A		; 0A
	tay		; A8
	lda $8D.b		; A5 8D
	and #$FF.b		; 29 FF
	asl A		; 0A
	tax		; AA
	jsr ($A73F.w,X)		; FC 3F A7
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $98.b		; A6 98
	cpx #$0200.w		; E0 00 02
	bcs  41.b		; B0 29
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1B80.w		; AD 80 1B
	asl A		; 0A
	tay		; A8
	lda $8D.b		; A5 8D
	asl A		; 0A
	tax		; AA
	jsr ($A749.w,X)		; FC 49 A7
	jsr $A920.w		; 20 20 A9
	jsr $A96B.w		; 20 6B A9
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $8D.b		; A5 8D
	asl A		; 0A
	tax		; AA
	jsr ($A753.w,X)		; FC 53 A7
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $98.b		; A6 98
	cpx #$0200.w		; E0 00 02
	bcs   3.b		; B0 03
	jsr $B126.w		; 20 26 B1
	rts		; 60

	wai		; CB
	lda [$7D.b]		; A7 7D
	lda [$7D.b]		; A7 7D
	lda [$7D.b]		; A7 7D
	lda [$7D.b]		; A7 7D
	lda [$40.b]		; A7 40
	tay		; A8
	ldy $A7.b		; A4 A7
	sbc ($A7.b)		; F2 A7
	ora $19A8.w,Y		; 19 A8 19
	tay		; A8
	eor $90A7.w,X		; 5D A7 90
	lda #$A990.w		; A9 90 A9
	bcc -87.b		; 90 A9
	bcc -87.b		; 90 A9
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$AAD9.w		; A2 D9 AA
	ldy #$0600.w		; A0 00 06
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	ldx #$AAD9.w		; A2 D9 AA
	ldy #$0620.w		; A0 20 06
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $AA9D.w,Y		; B9 9D AA
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $AA9E.w,Y		; B9 9E AA
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$30.b		; A9 30
	sta $07.b		; 85 07
	lda $AAD9.w		; AD D9 AA
	sta $00.b		; 85 00
	lda #$DA.b		; A9 DA
	sta $12.b		; 85 12
	lda #$AA.b		; A9 AA
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $AAB1.w,Y		; B9 B1 AA
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $AAB2.w,Y		; B9 B2 AA
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$32.b		; A9 32
	sta $07.b		; 85 07
	lda $AAE0.w		; AD E0 AA
	sta $00.b		; 85 00
	lda #$E1.b		; A9 E1
	sta $12.b		; 85 12
	lda #$AA.b		; A9 AA
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $AAC5.w,Y		; B9 C5 AA
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $AAC6.w,Y		; B9 C6 AA
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$30.b		; A9 30
	sta $07.b		; 85 07
	lda $AAD9.w		; AD D9 AA
	sta $00.b		; 85 00
	lda #$DA.b		; A9 DA
	sta $12.b		; 85 12
	lda #$AA.b		; A9 AA
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $AAB1.w,Y		; B9 B1 AA
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $AAB2.w,Y		; B9 B2 AA
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$32.b		; A9 32
	sta $07.b		; 85 07
	lda $AAE7.w		; AD E7 AA
	sta $00.b		; 85 00
	lda #$E8.b		; A9 E8
	sta $12.b		; 85 12
	lda #$AA.b		; A9 AA
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $AAB1.w,Y		; B9 B1 AA
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $AAB2.w,Y		; B9 B2 AA
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$32.b		; A9 32
	sta $07.b		; 85 07
	lda $AAEE.w		; AD EE AA
	sta $00.b		; 85 00
	lda #$EF.b		; A9 EF
	sta $12.b		; 85 12
	lda #$AA.b		; A9 AA
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($A850.w,X)		; FC 50 A8
	rts		; 60

	phy		; 5A
	tay		; A8
	ldx #$81A8.w		; A2 A8 81
	tay		; A8
	inc $A8.b		; E6 A8
	cmp $A8.b		; C5 A8
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	lda #$0060.w		; A9 60 00
	jsr $A8E7.w		; 20 E7 A8
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	beq  12.b		; F0 0C
	ldy #$1B80.w		; A0 80 1B
	lda #$0001.w		; A9 01 00
	sta $0002.w,Y		; 99 02 00
	inc $1B10.w		; EE 10 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	beq   6.b		; F0 06
	lda #$0060.w		; A9 60 00
	jsr $A90D.w		; 20 0D A9
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	lda #$0060.w		; A9 60 00
	jsr $A8FA.w		; 20 FA A8
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	lda #$0060.w		; A9 60 00
	jsr $A8FA.w		; 20 FA A8
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1B80.w		; A0 80 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	lda #$0062.w		; A9 62 00
	jsr $A90D.w		; 20 0D A9
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	beq   6.b		; F0 06
	lda #$0060.w		; A9 60 00
	jsr $A90D.w		; 20 0D A9
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	lda #$0060.w		; A9 60 00
	jsr $A8FA.w		; 20 FA A8
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $FE.b		; 85 FE
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	jsr $A5DF.w		; 20 DF A5
	jsr $A630.w		; 20 30 A6
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $FE.b		; 85 FE
	ldy #$1B40.w		; A0 40 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	jsr $A58E.w		; 20 8E A5
	jsr $A630.w		; 20 30 A6
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $FE.b		; 85 FE
	ldy #$1B80.w		; A0 80 1B
	lda $0002.w,Y		; B9 02 00
	bne   6.b		; D0 06
	jsr $A58E.w		; 20 8E A5
	jsr $A630.w		; 20 30 A6
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$38.b		; A9 38
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $1B20.w		; AD 20 1B
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$3C.b		; A9 3C
	sta $07.b		; 85 07
	lda $AD9B.w		; AD 9B AD
	sta $00.b		; 85 00
	lda #$9C.b		; A9 9C
	sta $12.b		; 85 12
	lda #$AD.b		; A9 AD
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$B8.b		; A9 B8
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $1B20.w		; AD 20 1B
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$3C.b		; A9 3C
	sta $07.b		; 85 07
	lda $ADCC.w		; AD CC AD
	sta $00.b		; 85 00
	lda #$CD.b		; A9 CD
	sta $12.b		; 85 12
	lda #$AD.b		; A9 AD
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$68.b		; A9 68
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda #$80.b		; A9 80
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$3A.b		; A9 3A
	sta $07.b		; 85 07
	lda $ACEC.w		; AD EC AC
	sta $00.b		; 85 00
	lda #$ED.b		; A9 ED
	sta $12.b		; 85 12
	lda #$AC.b		; A9 AC
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$98.b		; A9 98
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda #$00.b		; A9 00
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$38.b		; A9 38
	sta $07.b		; 85 07
	lda $AAF5.w		; AD F5 AA
	sta $00.b		; 85 00
	lda #$F6.b		; A9 F6
	sta $12.b		; 85 12
	lda #$AA.b		; A9 AA
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$98.b		; A9 98
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda #$80.b		; A9 80
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$38.b		; A9 38
	sta $07.b		; 85 07
	lda $AB9E.w		; AD 9E AB
	sta $00.b		; 85 00
	lda #$9F.b		; A9 9F
	sta $12.b		; 85 12
	lda #$AB.b		; A9 AB
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$70.b		; A9 70
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda #$00.b		; A9 00
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$36.b		; A9 36
	sta $07.b		; 85 07
	lda $ABC9.w		; AD C9 AB
	sta $00.b		; 85 00
	lda #$CA.b		; A9 CA
	sta $12.b		; 85 12
	lda #$AB.b		; A9 AB
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$30.b		; A9 30
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda #$00.b		; A9 00
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$34.b		; A9 34
	sta $07.b		; 85 07
	lda $AC3C.w		; AD 3C AC
	sta $00.b		; 85 00
	lda #$3D.b		; A9 3D
	sta $12.b		; 85 12
	lda #$AC.b		; A9 AC
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$30.b		; A9 30
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda #$80.b		; A9 80
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$34.b		; A9 34
	sta $07.b		; 85 07
	lda $ACC1.w		; AD C1 AC
	sta $00.b		; 85 00
	lda #$C2.b		; A9 C2
	sta $12.b		; 85 12
	lda #$AC.b		; A9 AC
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	rts		; 60

	ora $04.b,S		; 03 04
	ora $06.b		; 05 06
	sbc $FF0201.l,X		; FF 01 02 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$09.b]		; 07 09
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ora ($05.b,X)		; 01 05
	php		; 08
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	tsb $04.b		; 04 04
	ora $05.b,S		; 03 05
	ora $02.b		; 05 02
	ora $06.b		; 05 06
	cop $07.b		; 02 07
	asl $07.b		; 06 07
	ora ($08.b,X)		; 01 08
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	ora [$01.b]		; 07 01
	ora #$09.b		; 09 09
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora #$03.b		; 09 03
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	tsb $04.b		; 04 04
	ora $05.b,S		; 03 05
	ora $02.b		; 05 02
	ora $06.b		; 05 06
	cop $08.b		; 02 08
	asl $07.b		; 06 07
	ora $07.b,S		; 03 07
	php		; 08
	php		; 08
	ora ($07.b,X)		; 01 07
	asl $01.b		; 06 01
	ora #$09.b		; 09 09
	ora #$00.b		; 09 00
	brk $73.b		; 00 73
	adc $47719D.l		; 6F 9D 71 47
	ror $7524.w		; 6E 24 75
	lda $9E80.w,X		; BD 80 9E
	tsa		; 3B
	adc ($35.b,S),Y		; 73 35
	mvp $72,$39		; 44 39 72
	ldx #$00.b		; A2 00
	brk $83.b		; 00 83
	adc $5771AD.l		; 6F AD 71 57
	ror $7534.w		; 6E 34 75
	cmp $AE80.w		; CD 80 AE
	tsa		; 3B
	sta $35.b,S		; 83 35
	mvn $82,$39		; 54 39 82
	ldx #$00.b		; A2 00
	brk $7B.b		; 00 7B
	adc $4F71A5.l		; 6F A5 71 4F
	ror $752C.w		; 6E 2C 75
	cmp $80.b		; C5 80
	ldx $3B.b		; A6 3B
	tda		; 7B
	and $4C.b,X		; 35 4C
	and $A27A.w,Y		; 39 7A A2
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	brk $48.b		; 00 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	cop $48.b		; 02 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	tsb $48.b		; 04 48
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	php		; 08
	asl $48.b		; 06 48
	trb $E808.w		; 1C 08 E8
	ldy #$08.b		; A0 08
	php		; 08
	pha		; 48
	clc		; 18
	cld		; D8
	ldy #$08.b		; A0 08
	asl A		; 0A
	pha		; 48
	php		; 08
	inx		; E8
	ldy #$08.b		; A0 08
	tsb $0848.w		; 0C 48 08
	inx		; E8
	ldy #$08.b		; A0 08
	asl $0848.w		; 0E 48 08
	inx		; E8
	eor $08.b		; 45 08
	jsr $0048.w		; 20 48 00
	sed		; F8
	ldy #$00.b		; A0 00
	ldx #$40.b		; A2 40
	jsr L00A0D8.w		; 20 D8 A0
	brk $A3.b		; 00 A3
	rti		; 40

	jsr L00A0D8.w		; 20 D8 A0
	brk $A4.b		; 00 A4
	rti		; 40

	jsr L00A0D8.w		; 20 D8 A0
	brk $A5.b		; 00 A5
	rti		; 40

	jsr L00A0D8.w		; 20 D8 A0
	brk $A6.b		; 00 A6
	rti		; 40

	clc		; 18
	cpx #$A0.b		; E0 A0
	brk $A7.b		; 00 A7
	rti		; 40

	brk $F8.b		; 00 F8
	pha		; 48
	brk $A8.b		; 00 A8
	rti		; 40

	brk $F8.b		; 00 F8
	bvc   0.b		; 50 00
	lda #$40.b		; A9 40
	php		; 08
	beq -96.b		; F0 A0
	brk $AA.b		; 00 AA
	rti		; 40

	php		; 08
	beq -96.b		; F0 A0
	brk $AB.b		; 00 AB
	rti		; 40

	brk $F8.b		; 00 F8
	ldy #$00.b		; A0 00
	ldy $0040.w		; AC 40 00
	sed		; F8
	ldy #$00.b		; A0 00
	lda $2040.w		; AD 40 20
	cld		; D8
	ldy #$00.b		; A0 00
	ldx $0040.w		; AE 40 00
	sed		; F8
	ldy #$00.b		; A0 00
	lda $D82040.l		; AF 40 20 D8
	ldy #$00.b		; A0 00
	lda ($40.b)		; B2 40
	clc		; 18
	cpx #$A0.b		; E0 A0
	brk $B3.b		; 00 B3
	rti		; 40

	jsr L00A0D8.w		; 20 D8 A0
	brk $B4.b		; 00 B4
	rti		; 40

	clc		; 18
	cpx #$A0.b		; E0 A0
	brk $B5.b		; 00 B5
	rti		; 40

	clc		; 18
	cpx #$A0.b		; E0 A0
	brk $B6.b		; 00 B6
	rti		; 40

	clc		; 18
	cpx #$A0.b		; E0 A0
	brk $B7.b		; 00 B7
	rti		; 40

	clc		; 18
	cpx #$A0.b		; E0 A0
	brk $B8.b		; 00 B8
	rti		; 40

	clc		; 18
	cpx #$A0.b		; E0 A0
	brk $B9.b		; 00 B9
	rti		; 40

	ora $F3.b		; 05 F3
	ldy #$00.b		; A0 00
	tsx		; BA
	rti		; 40

	ora [$20.b]		; 07 20
	cld		; D8
	rts		; 60

	brk $BB.b		; 00 BB
	rti		; 40

	jsr $60D8.w		; 20 D8 60
	brk $BC.b		; 00 BC
	rti		; 40

	ora $F5.b,S		; 03 F5
	rts		; 60

	brk $BD.b		; 00 BD
	rti		; 40

	ora $F5.b,S		; 03 F5
	rts		; 60

	brk $BE.b		; 00 BE
	rti		; 40

	ora $60DB.w,X		; 1D DB 60
	brk $BF.b		; 00 BF
	rti		; 40

	ora $0FDB.w,X		; 1D DB 0F
	rts		; 60

	cpy #$40.b		; C0 40
	ora $0060D9.l,X		; 1F D9 60 00
	cmp ($40.b,X)		; C1 40
	ora ($00.b,S),Y		; 13 00
	beq  33.b		; F0 21
	php		; 08
	jsl $E01048.l		; 22 48 10 E0
	and ($08.b,X)		; 21 08
	bit $48.b		; 24 48
	brk $F0.b		; 00 F0
	and ($08.b),Y		; 31 08
	rol $48.b		; 26 48
	brk $F0.b		; 00 F0
	eor ($08.b,X)		; 41 08
	plp		; 28
	pha		; 48
	bpl -32.b		; 10 E0
	and ($08.b),Y		; 31 08
	rol A		; 2A
	pha		; 48
	bpl -32.b		; 10 E0
	eor ($08.b,X)		; 41 08
	bit $0248.w		; 2C 48 02
	inc $0811.w		; EE 11 08
	rol $1248.w		; 2E 48 12
	dec $0811.w,X		; DE 11 08
	rti		; 40

	pha		; 48
	jsr $21D8.w		; 20 D8 21
	brk $C2.b		; 00 C2
	rti		; 40

	jsr $29D8.w		; 20 D8 29
	brk $C3.b		; 00 C3
	rti		; 40

	jsr $31D8.w		; 20 D8 31
	brk $C4.b		; 00 C4
	rti		; 40

	jsr $39D8.w		; 20 D8 39
	brk $C5.b		; 00 C5
	rti		; 40

	jsr $41D8.w		; 20 D8 41
	brk $C6.b		; 00 C6
	rti		; 40

	jsr $49D8.w		; 20 D8 49
	brk $C7.b		; 00 C7
	rti		; 40

	clc		; 18
	cpx #$76.b		; E0 76
	brk $C8.b		; 00 C8
	rti		; 40

	inc A		; 1A
	dec $0051.w,X		; DE 51 00
	cmp #$40.b		; C9 40
	cop $F6.b		; 02 F6
	adc ($00.b,X)		; 61 00
	dex		; CA
	rti		; 40

	brk $F8.b		; 00 F8
	eor ($00.b),Y		; 51 00
	wai		; CB
	rti		; 40

	clc		; 18
	cpx #$61.b		; E0 61
	brk $CC.b		; 00 CC
	rti		; 40

	asl $08.b,X		; 16 08
	inx		; E8
	bvc   8.b		; 50 08
	.db $42, $48		; 42 48
	plp		; 28
	iny		; C8
	sec		; 38
	php		; 08
	mvp $08,$48		; 44 48 08
	inx		; E8
	rti		; 40

	php		; 08
	lsr $48.b		; 46 48
	clc		; 18
	cld		; D8
	rti		; 40

	php		; 08
	pha		; 48
	pha		; 48
	php		; 08
	inx		; E8
	bmi   8.b		; 30 08
	lsr A		; 4A
	pha		; 48
	php		; 08
	inx		; E8
	jsr $4C08.w		; 20 08 4C
	pha		; 48
	clc		; 18
	cld		; D8
	bmi   8.b		; 30 08
	lsr $1848.w		; 4E 48 18
	cld		; D8
	clc		; 18
	php		; 08
	rts		; 60

	pha		; 48
	sed		; F8
	sed		; F8
	and $08.b,S		; 23 08
	.db $62, $48, $F8		; 62 48 F8
	sed		; F8
	and ($08.b,S),Y		; 33 08
	stz $48.b		; 64 48
	bpl -24.b		; 10 E8
	clc		; 18
	brk $CD.b		; 00 CD
	rti		; 40

	plp		; 28
	bne  32.b		; D0 20
	brk $CE.b		; 00 CE
	rti		; 40

	clc		; 18
	cpx #$28.b		; E0 28
	brk $CF.b		; 00 CF
	rti		; 40

	jsr $28D8.w		; 20 D8 28
	brk $D0.b		; 00 D0
	rti		; 40

	plp		; 28
	bne  40.b		; D0 28
	brk $D1.b		; 00 D1
	rti		; 40

	plp		; 28
	bne  48.b		; D0 30
	brk $D2.b		; 00 D2
	rti		; 40

	plp		; 28
	bne  72.b		; D0 48
	brk $D3.b		; 00 D3
	rti		; 40

	plp		; 28
	bne  89.b		; D0 59
	brk $D4.b		; 00 D4
	rti		; 40

	brk $F8.b		; 00 F8
	eor $00.b,S		; 43 00
	cmp $40.b,X		; D5 40
	brk $F8.b		; 00 F8
	phk		; 4B
	brk $D6.b		; 00 D6
	rti		; 40

	sec		; 38
	cpy #$48.b		; C0 48
	brk $D7.b		; 00 D7
	rti		; 40

	sec		; 38
	cpy #$50.b		; C0 50
	brk $D8.b		; 00 D8
	rti		; 40

	ora [$08.b]		; 07 08
	inx		; E8
	ora $486608.l		; 0F 08 66 48
	plp		; 28
	bne  15.b		; D0 0F
	brk $D9.b		; 00 D9
	rti		; 40

	plp		; 28
	bne  23.b		; D0 17
	brk $DA.b		; 00 DA
	rti		; 40

	plp		; 28
	bne   7.b		; D0 07
	brk $DB.b		; 00 DB
	rti		; 40

	php		; 08
	beq  31.b		; F0 1F
	brk $DC.b		; 00 DC
	rti		; 40

	bpl -24.b		; 10 E8
	ora $40DD00.l,X		; 1F 00 DD 40
	and #$CF.b		; 29 CF
	ora $40DE00.l,X		; 1F 00 DE 40
	ora $F000.w,X		; 1D 00 F0
	bpl   8.b		; 10 08
	pla		; 68
	pha		; 48
	bpl -32.b		; 10 E0
	bpl   8.b		; 10 08
	ror A		; 6A
	pha		; 48
	ora $EB.b		; 05 EB
	brk $08.b		; 00 08
	jmp ($1D48.w)		; 6C 48 1D
	cmp ($00.b,S),Y		; D3 00
	php		; 08
	ror $0D48.w		; 6E 48 0D
	sbc $28.b,S		; E3 28
	php		; 08
	bra  72.b		; 80 48
	jsr $10D8.w		; 20 D8 10
	brk $DF.b		; 00 DF
	rti		; 40

	jsr $18D8.w		; 20 D8 18
	brk $E0.b		; 00 E0
	rti		; 40

	php		; 08
	beq  32.b		; F0 20
	brk $E1.b		; 00 E1
	rti		; 40

	bpl -24.b		; 10 E8
	jsr $E200.w		; 20 00 E2
	rti		; 40

	clc		; 18
	cpx #$20.b		; E0 20
	brk $E3.b		; 00 E3
	rti		; 40

	jsr $20D8.w		; 20 D8 20
	brk $E4.b		; 00 E4
	rti		; 40

	plp		; 28
	bne  12.b		; D0 0C
	brk $E5.b		; 00 E5
	rti		; 40

	plp		; 28
	bne  20.b		; D0 14
	brk $E6.b		; 00 E6
	rti		; 40

	plp		; 28
	bne  28.b		; D0 1C
	brk $E7.b		; 00 E7
	rti		; 40

	plp		; 28
	bne  36.b		; D0 24
	brk $E8.b		; 00 E8
	rti		; 40

	and #$CF.b		; 29 CF
	rol A		; 2A
	brk $E9.b		; 00 E9
	rti		; 40

	phd		; 0B
	sbc $0040.w		; ED 40 00
	nop		; EA
	rti		; 40

	bit $D4.b		; 24 D4
	pha		; 48
	brk $EB.b		; 00 EB
	rti		; 40

	tsb $3BEC.w		; 0C EC 3B
	brk $EC.b		; 00 EC
	rti		; 40

	ora $E3.b,X		; 15 E3
	php		; 08
	brk $ED.b		; 00 ED
	rti		; 40

	and $D3.b		; 25 D3
	plp		; 28
	brk $EE.b		; 00 EE
	rti		; 40

	php		; 08
	beq  72.b		; F0 48
	brk $EF.b		; 00 EF
	rti		; 40

	jsr $40D8.w		; 20 D8 40
	brk $F0.b		; 00 F0
	rti		; 40

	plp		; 28
	bne  64.b		; D0 40
	brk $F1.b		; 00 F1
	rti		; 40

	ora $28DB.w,X		; 1D DB 28
	brk $F2.b		; 00 F2
	rti		; 40

	ora $30DB.w,X		; 1D DB 30
	brk $F3.b		; 00 F3
	rti		; 40

	ora $0038E9.l		; 0F E9 38 00
	pea $1740.w		; F4 40 17
	sbc ($38.b,X)		; E1 38
	brk $F5.b		; 00 F5
	rti		; 40

	ora $0038D9.l,X		; 1F D9 38 00
	inc $40.b,X		; F6 40
	php		; 08
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	.db $82, $48, $10		; 82 48 10
	cpx #$00.b		; E0 00
	php		; 08
	sty $48.b		; 84 48
	jsr $00D0.w		; 20 D0 00
	php		; 08
	stx $48.b		; 86 48
	bmi -64.b		; 30 C0
	brk $08.b		; 00 08
	dey		; 88
	pha		; 48
	rti		; 40

	bcs   0.b		; B0 00
	php		; 08
	txa		; 8A
	pha		; 48
	bvc -96.b		; 50 A0
	brk $08.b		; 00 08
	sty $6048.w		; 8C 48 60
	bcc   0.b		; 90 00
	php		; 08
	sty $48.b		; 84 48
	bvs -128.b		; 70 80
	brk $08.b		; 00 08
	stx $0148.w		; 8E 48 01
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	ldy #$48.b		; A0 48
.ACCU 8
	sep #$20		; E2 20
	stz $1D02.w		; 9C 02 1D
	stz $1D05.w		; 9C 05 1D
.ACCU 16
	rep #$20		; C2 20
	stz $1E44.w		; 9C 44 1E
	lda #$0258.w		; A9 58 02
	sta $1B18.w		; 8D 18 1B
	lda #$1C56.w		; A9 56 1C
	sta $1B46.w		; 8D 46 1B
	lda #$1C58.w		; A9 58 1C
	sta $1B86.w		; 8D 86 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C5A.w		; AE 5A 1C
	jsr ($ADFC.w,X)		; FC FC AD
	rts		; 60

	brk $AE.b		; 00 AE
	rol A		; 2A
	ldx $30C2.w		; AE C2 30
	lda $5C.b		; A5 5C
	and #$0030.w		; 29 30 00
	cmp #$0030.w		; C9 30 00
	bne  23.b		; D0 17
	dec $1B18.w		; CE 18 1B
	bne  17.b		; D0 11
	lda $1E44.w		; AD 44 1E
	cmp #$001E.w		; C9 1E 00
	beq   3.b		; F0 03
	inc $1E44.w		; EE 44 1E
	lda #$0258.w		; A9 58 02
	sta $1B18.w		; 8D 18 1B
	rts		; 60

	lda #$0002.w		; A9 02 00
	sta $1C5A.w		; 8D 5A 1C
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$005D.w		; A9 5D 00
	sta $1C50.w		; 8D 50 1C
	jsl $808386.l		; 22 86 83 80
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1C54.w		; 8D 54 1C
	lda SLHV.w		; AD 37 21
	lda OPVCT.w		; AD 3D 21
	cmp #$E1.b		; C9 E1
	bne -10.b		; D0 F6
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx $1B1E.w		; AE 1E 1B
	lda $AE7F.w,X		; BD 7F AE
	sta $1C50.w		; 8D 50 1C
	lda $AE75.w,X		; BD 75 AE
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda SLHV.w		; AD 37 21
	lda OPVCT.w		; AD 3D 21
	cmp #$F0.b		; C9 F0
	bne -10.b		; D0 F6
	stz $1C54.w		; 9C 54 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sec		; 38
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	clc		; 18
	rts		; 60

	brk $16.b		; 00 16
	ora [$18.b],Y		; 17 18
	ora $1B1A.w,Y		; 19 1A 1B
	trb $1E1D.w		; 1C 1D 1E
	brk $30.b		; 00 30
	and $3A.b,X		; 35 3A
	and $4E4944.l,X		; 3F 44 49 4E
	eor ($58.b,S),Y		; 53 58
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B12.w		; AD 12 1B
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq  71.b		; F0 47
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($AEE7.w,X)		; FC E7 AE
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$00F2.w		; A9 F2 00
	jsl $80EB8C.l		; 22 8C EB 80
	rts		; 60

	and ($AF.b)		; 32 AF
	sbc ($AE.b),Y		; F1 AE
	sbc ($AE.b),Y		; F1 AE
	sbc ($AE.b),Y		; F1 AE
	mvn $C2,$AF		; 54 AF C2
	bmi -83.b		; 30 AD
	rti		; 40

	tas		; 1B
	and #$00FF.w		; 29 FF 00
	sta $1B1E.w		; 8D 1E 1B
	asl A		; 0A
	tax		; AA
	lda $AF5E.w,X		; BD 5E AF
	sta $1B1C.w		; 8D 1C 1B
	jsr $AE2B.w		; 20 2B AE
	jsl $808386.l		; 22 86 83 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1B1C.w		; CE 1C 1B
	bne -11.b		; D0 F5
	lda $1B80.w		; AD 80 1B
	and #$00FF.w		; 29 FF 00
	sta $1B1E.w		; 8D 1E 1B
	asl A		; 0A
	tax		; AA
	lda $AF5E.w,X		; BD 5E AF
	sta $1B1C.w		; 8D 1C 1B
	jsr $AE2B.w		; 20 2B AE
	jsl $808386.l		; 22 86 83 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1B1C.w		; CE 1C 1B
	bne -11.b		; D0 F5
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B40.w		; AD 40 1B
	and #$00FF.w		; 29 FF 00
	sta $1B1E.w		; 8D 1E 1B
	asl A		; 0A
	tax		; AA
	lda $AF5E.w,X		; BD 5E AF
	sta $1B1C.w		; 8D 1C 1B
	jsr $AE2B.w		; 20 2B AE
	jsl $808386.l		; 22 86 83 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1B1C.w		; CE 1C 1B
	bne -11.b		; D0 F5
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$00F2.w		; A9 F2 00
	jsl $80EB8C.l		; 22 8C EB 80
	rts		; 60

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $EA.b		; 00 EA
	dec $1C4C.w		; CE 4C 1C
	bmi   1.b		; 30 01
	rts		; 60

	lda #$0002.w		; A9 02 00
	sta $1C4C.w		; 8D 4C 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D16.w		; AD 16 1D
	and #$00FF.w		; 29 FF 00
	beq  43.b		; F0 2B
	sta $1B1A.w		; 8D 1A 1B
	lda $1E44.w		; AD 44 1E
	sec		; 38
	sbc $1E4E.w		; ED 4E 1E
	bmi  15.b		; 30 0F
	clc		; 18
	adc $1B1A.w		; 6D 1A 1B
	cmp #$001E.w		; C9 1E 00
	bmi   3.b		; 30 03
	lda #$001E.w		; A9 1E 00
	sta $1B1A.w		; 8D 1A 1B
	lda $1E44.w		; AD 44 1E
	sta $1E4E.w		; 8D 4E 1E
	lda $1D17.w		; AD 17 1D
	and #$00FF.w		; 29 FF 00
	sta $1B16.w		; 8D 16 1B
	rts		; 60

	lda #$000F.w		; A9 0F 00
	clc		; 18
	adc $1E44.w		; 6D 44 1E
	cmp #$001E.w		; C9 1E 00
	bmi   3.b		; 30 03
	lda #$001E.w		; A9 1E 00
	sta $1B16.w		; 8D 16 1B
	sta $1B1A.w		; 8D 1A 1B
.ACCU 8
	sep #$20		; E2 20
	lda $1B1A.w		; AD 1A 1B
	sta $1D16.w		; 8D 16 1D
.ACCU 16
	rep #$20		; C2 20
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($AFE2.w,X)		; FC E2 AF
	rts		; 60

	.db $42, $B0		; 42 B0
	sbc $EDAF.w		; ED AF ED
	lda $ECAFEC.l		; AF EC AF EC
	lda $30C260.l		; AF 60 C2 30
	lda $1D0E.w		; AD 0E 1D
	and #$00FF.w		; 29 FF 00
	beq  43.b		; F0 2B
	sta $1B1A.w		; 8D 1A 1B
	lda $1E44.w		; AD 44 1E
	sec		; 38
	sbc $1E4C.w		; ED 4C 1E
	bmi  15.b		; 30 0F
	clc		; 18
	adc $1B1A.w		; 6D 1A 1B
	cmp #$001E.w		; C9 1E 00
	bmi   3.b		; 30 03
	lda #$001E.w		; A9 1E 00
	sta $1B1A.w		; 8D 1A 1B
	lda $1E44.w		; AD 44 1E
	sta $1E4C.w		; 8D 4C 1E
	lda $1D0F.w		; AD 0F 1D
	and #$00FF.w		; 29 FF 00
	sta $1B16.w		; 8D 16 1B
	rts		; 60

	lda #$000F.w		; A9 0F 00
	clc		; 18
	adc $1E44.w		; 6D 44 1E
	cmp #$001E.w		; C9 1E 00
	bmi   3.b		; 30 03
	lda #$001E.w		; A9 1E 00
	sta $1B16.w		; 8D 16 1B
	sta $1B1A.w		; 8D 1A 1B
.ACCU 8
	sep #$20		; E2 20
	lda $1B1A.w		; AD 1A 1B
	sta $1D0E.w		; 8D 0E 1D
.ACCU 16
	rep #$20		; C2 20
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F5A.w		; AD 5A 1F
	and #$00FC.w		; 29 FC 00
	lsr A		; 4A
	tax		; AA
	lda $B062.w,X		; BD 62 B0
	clc		; 18
	adc $1E44.w		; 6D 44 1E
	cmp #$001E.w		; C9 1E 00
	bmi   3.b		; 30 03
	lda #$001E.w		; A9 1E 00
	sta $1B16.w		; 8D 16 1B
	sta $1B1A.w		; 8D 1A 1B
	rts		; 60

	trb $00.b		; 14 00
	ora $000A00.l		; 0F 00 0A 00
	ora $30E200.l		; 0F 00 E2 30
	lda $1D08.w		; AD 08 1D
	sta $1BBA.w		; 8D BA 1B
	lda $1D09.w		; AD 09 1D
	sta $1BB4.w		; 8D B4 1B
	lda $1D0A.w		; AD 0A 1D
	sta $1BB8.w		; 8D B8 1B
	lda $1D0B.w		; AD 0B 1D
	sta $1BB0.w		; 8D B0 1B
	lda $1D0C.w		; AD 0C 1D
	sta $1BB2.w		; 8D B2 1B
	lda $1D0D.w		; AD 0D 1D
	sta $1BB6.w		; 8D B6 1B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1D10.w		; AD 10 1D
	sta $1BBA.w		; 8D BA 1B
	lda $1D11.w		; AD 11 1D
	sta $1BB4.w		; 8D B4 1B
	lda $1D12.w		; AD 12 1D
	sta $1BB8.w		; 8D B8 1B
	lda $1D13.w		; AD 13 1D
	sta $1BB0.w		; 8D B0 1B
	lda $1D14.w		; AD 14 1D
	sta $1BB2.w		; 8D B2 1B
	lda $1D15.w		; AD 15 1D
	sta $1BB6.w		; 8D B6 1B
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1BBA.w		; AD BA 1B
	sta $1D08.w		; 8D 08 1D
	lda $1BB4.w		; AD B4 1B
	sta $1D09.w		; 8D 09 1D
	lda $1BB8.w		; AD B8 1B
	sta $1D0A.w		; 8D 0A 1D
	lda $1BB0.w		; AD B0 1B
	sta $1D0B.w		; 8D 0B 1D
	lda $1BB2.w		; AD B2 1B
	sta $1D0C.w		; 8D 0C 1D
	lda $1BB6.w		; AD B6 1B
	sta $1D0D.w		; 8D 0D 1D
	lda $1B1A.w		; AD 1A 1B
	sec		; 38
	sbc $1B16.w		; ED 16 1B
	sta $1E4C.w		; 8D 4C 1E
	lda $1B16.w		; AD 16 1B
	sta $1D0F.w		; 8D 0F 1D
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1BBA.w		; AD BA 1B
	sta $1D10.w		; 8D 10 1D
	lda $1BB4.w		; AD B4 1B
	sta $1D11.w		; 8D 11 1D
	lda $1BB8.w		; AD B8 1B
	sta $1D12.w		; 8D 12 1D
	lda $1BB0.w		; AD B0 1B
	sta $1D13.w		; 8D 13 1D
	lda $1BB2.w		; AD B2 1B
	sta $1D14.w		; 8D 14 1D
	lda $1BB6.w		; AD B6 1B
	sta $1D15.w		; 8D 15 1D
	lda $1B1A.w		; AD 1A 1B
	sec		; 38
	sbc $1B16.w		; ED 16 1B
	sta $1E4E.w		; 8D 4E 1E
	lda $1B16.w		; AD 16 1B
	sta $1D17.w		; 8D 17 1D
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	lda $98.b		; A5 98
	clc		; 18
	adc #$0200.w		; 69 00 02
	tax		; AA
	lda #$E0E0.w		; A9 E0 E0
	sta $00.b,X		; 95 00
	txy		; 9B
	iny		; C8
	lda #$01FE.w		; A9 FE 01
	sbc $98.b		; E5 98
	mvn $00,$00		; 54 00 00
	plb		; AB
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	stz $0400.w		; 9C 00 04
	ldx #$0400.w		; A2 00 04
	ldy #$0401.w		; A0 01 04
	lda #$001E.w		; A9 1E 00
	mvn $00,$00		; 54 00 00
	plb		; AB
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda $1F5A.w		; AD 5A 1F
	sta $1E3B.w		; 8D 3B 1E
	lda $B1EC.w,Y		; B9 EC B1
	sta $8A.b		; 85 8A
	lda $B1ED.w,Y		; B9 ED B1
	sta $8D.b		; 85 8D
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1B40.w		; AD 40 1B
	sta $1D00.w		; 8D 00 1D
	lda $1B80.w		; AD 80 1B
	sta $1D03.w		; 8D 03 1D
	lda $1B40.w		; AD 40 1B
	jsl $809897.l		; 22 97 98 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	sta $1DBA.w		; 8D BA 1D
	lda $1B80.w		; AD 80 1B
	jsl $809897.l		; 22 97 98 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $1DBC.w		; 8D BC 1D
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $B1E7.w,X		; BD E7 B1
	sta $1DBD.w		; 8D BD 1D
	lda $1B44.w		; AD 44 1B
	sta $1D02.w		; 8D 02 1D
	lda $1B84.w		; AD 84 1B
	sta $1D05.w		; 8D 05 1D
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
	lda $1B12.w		; AD 12 1B
	bne   8.b		; D0 08
	lda #$07.b		; A9 07
	sta $8A.b		; 85 8A
	jsr $B1FA.w		; 20 FA B1
	rts		; 60

	lda #$01.b		; A9 01
	sta $1D00.w		; 8D 00 1D
	lda #$01.b		; A9 01
	sta $1D03.w		; 8D 03 1D
	lda #$01.b		; A9 01
	sta $8A.b		; 85 8A
	jsr $B1FA.w		; 20 FA B1
	rts		; 60

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $16.b		; 00 16
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	cop $12.b		; 02 12
	ora $02.b,S		; 03 02
	tsb $06.b		; 04 06
	brk $0D.b		; 00 0D
	ora $C2.b		; 05 C2
	bmi -91.b		; 30 A5
	sta $FF29.w		; 8D 29 FF
	brk $0A.b		; 00 0A
	tax		; AA
	jsr ($B207.w,X)		; FC 07 B2
	rts		; 60

	ora ($B2.b),Y		; 11 B2
	and [$B2.b]		; 27 B2
	trb $39B2.w		; 1C B2 39
	lda ($30.b)		; B2 30
	lda ($E2.b)		; B2 E2
	jsr $019C.w		; 20 9C 01
	ora $FFA9.w,X		; 1D A9 FF
	sta $1D04.w		; 8D 04 1D
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	stz $1D01.w		; 9C 01 1D
	lda #$FF.b		; A9 FF
	sta $1D04.w		; 8D 04 1D
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	stz $1D01.w		; 9C 01 1D
	stz $1D04.w		; 9C 04 1D
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	stz $1D01.w		; 9C 01 1D
	stz $1D04.w		; 9C 04 1D
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	stz $1D01.w		; 9C 01 1D
	stz $1D04.w		; 9C 04 1D
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldy $1B10.w		; AC 10 1B
	lda $B270.w,Y		; B9 70 B2
	sta $01.b		; 85 01
	stz $02.b		; 64 02
	lda $B271.w,Y		; B9 71 B2
	sta $03.b		; 85 03
	stz $04.b		; 64 04
	stz $06.b		; 64 06
	lda #$32.b		; A9 32
	sta $07.b		; 85 07
	lda $AAEE.w		; AD EE AA
	sta $00.b		; 85 00
	lda #$EF.b		; A9 EF
	sta $12.b		; 85 12
	lda #$AA.b		; A9 AA
	sta $13.b		; 85 13
	jsr $9B17.w		; 20 17 9B
	plb		; AB
	rtl		; 6B

	rti		; 40

	rti		; 40

	tda		; 7B
	adc $4F71A5.l		; 6F A5 71 4F
	ror $752C.w		; 6E 2C 75
	cmp $80.b		; C5 80
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1D00.w		; AD 00 1D
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $1E3A.w		; 6D 3A 1E
	tax		; AA
	lda $B2C7.w,X		; BD C7 B2
	sta $1D03.w		; 8D 03 1D
	tax		; AA
	lda $B317.w,X		; BD 17 B3
	sta $8E.b		; 85 8E
	lda $1D00.w		; AD 00 1D
	jsl $809897.l		; 22 97 98 80
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	sta $1DBA.w		; 8D BA 1D
	lda $1D03.w		; AD 03 1D
	and #$00FF.w		; 29 FF 00
	jsl $809897.l		; 22 97 98 80
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	ora #$8000.w		; 09 00 80
	sta $1DBC.w		; 8D BC 1D
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1E3A.w		; AD 3A 1E
	lsr A		; 4A
	clc		; 18
	adc $1F5A.w		; 6D 5A 1F
	sta $1E3B.w		; 8D 3B 1E
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	tsb $05.b		; 04 05
	ora #$08.b		; 09 08
	ora [$06.b]		; 07 06
	ora $04.b,S		; 03 04
	ora $01.b		; 05 01
	ora #$08.b		; 09 08
	ora [$06.b]		; 07 06
	cop $04.b		; 02 04
	ora $01.b		; 05 01
	ora #$08.b		; 09 08
	ora [$06.b]		; 07 06
	ora $02.b,S		; 03 02
	ora $01.b		; 05 01
	ora #$08.b		; 09 08
	ora [$06.b]		; 07 06
	ora $02.b,S		; 03 02
	tsb $01.b		; 04 01
	ora #$08.b		; 09 08
	ora [$06.b]		; 07 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	tsb $05.b		; 04 05
	ora ($08.b,X)		; 01 08
	ora [$06.b]		; 07 06
	brk $02.b		; 00 02
	php		; 08
	tsb $0E0A.w		; 0C 0A 0E
	bpl   6.b		; 10 06
	tsb $00.b		; 04 00
	jsr $B33F.w		; 20 3F B3
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldx $8E.b		; A6 8E
	jmp ($B32B.w,X)		; 7C 2B B3
	asl A		; 0A
	ldy $2F.b,X		; B4 2F
	ldy $54.b,X		; B4 54
	ldy $C1.b,X		; B4 C1
	ldx $E6.b,Y		; B6 E6
	ldx $FC.b,Y		; B6 FC
	lda $BA88.w,Y		; B9 88 BA
	asl A		; 0A
	ldy $96.b,X		; B4 96
	ldy $BD71.w,X		; BC 71 BD
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1021.w		; AD 21 10
	clc		; 18
	adc $10A1.w		; 6D A1 10
	lsr A		; 4A
	sec		; 38
	sbc #$0080.w		; E9 80 00
	cmp $0A00.w		; CD 00 0A
	bpl   5.b		; 10 05
	dec $0A00.w		; CE 00 0A
	bra   5.b		; 80 05
	beq   3.b		; F0 03
	inc $0A00.w		; EE 00 0A
	lda $0A00.w		; AD 00 0A
	bpl   5.b		; 10 05
	stz $0A00.w		; 9C 00 0A
	bra  11.b		; 80 0B
	cmp #$0080.w		; C9 80 00
	bmi   6.b		; 30 06
	lda #$0080.w		; A9 80 00
	sta $0A00.w		; 8D 00 0A
	lda $1025.w		; AD 25 10
	clc		; 18
	adc $10A5.w		; 6D A5 10
	lsr A		; 4A
	bit #$4000.w		; 89 00 40
	beq   3.b		; F0 03
	ora #$8000.w		; 09 00 80
	sec		; 38
	sbc #$00C0.w		; E9 C0 00
	lsr A		; 4A
	lsr A		; 4A
	bit #$2000.w		; 89 00 20
	beq   3.b		; F0 03
	ora #$C000.w		; 09 00 C0
	cmp $0A02.w		; CD 02 0A
	bpl   5.b		; 10 05
	dec $0A02.w		; CE 02 0A
	bra   5.b		; 80 05
	beq   3.b		; F0 03
	inc $0A02.w		; EE 02 0A
	lda $0A70.w		; AD 70 0A
	and #$00FF.w		; 29 FF 00
	beq  28.b		; F0 1C
	dec $0A70.w		; CE 70 0A
	and #$0001.w		; 29 01 00
	beq  11.b		; F0 0B
	dec $0A02.w		; CE 02 0A
	dec $0A02.w		; CE 02 0A
	dec $0A02.w		; CE 02 0A
	bra   9.b		; 80 09
	inc $0A02.w		; EE 02 0A
	inc $0A02.w		; EE 02 0A
	inc $0A02.w		; EE 02 0A
	lda $0A02.w		; AD 02 0A
	bmi   4.b		; 30 04
	stz $0A02.w		; 9C 02 0A
	rts		; 60

	cmp #$FFF0.w		; C9 F0 FF
	bpl   6.b		; 10 06
	lda #$FFF0.w		; A9 F0 FF
	sta $0A02.w		; 8D 02 0A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $0A18.w		; AD 18 0A
	sta $0A04.w		; 8D 04 0A
	lda $0A1A.w		; AD 1A 0A
	sta $0A06.w		; 8D 06 0A
	lda $0A1C.w		; AD 1C 0A
	sta $0A08.w		; 8D 08 0A
	lda $0A1E.w		; AD 1E 0A
	sta $0A0A.w		; 8D 0A 0A
	lda $0A20.w		; AD 20 0A
	sta $0A0C.w		; 8D 0C 0A
	lda $0A22.w		; AD 22 0A
	sta $0A0E.w		; 8D 0E 0A
	lda $0A24.w		; AD 24 0A
	sta $0A10.w		; 8D 10 0A
	lda $0A26.w		; AD 26 0A
	sta $0A12.w		; 8D 12 0A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $0A00.w		; AD 00 0A
	sta $0A24.w		; 8D 24 0A
	lsr A		; 4A
	lsr A		; 4A
	sta $0A18.w		; 8D 18 0A
	sta $0A20.w		; 8D 20 0A
	stz $0A1C.w		; 9C 1C 0A
	lda $0A02.w		; AD 02 0A
	sta $0A26.w		; 8D 26 0A
	lsr A		; 4A
	lsr A		; 4A
	sta $0A1A.w		; 8D 1A 0A
	sta $0A22.w		; 8D 22 0A
	stz $0A1E.w		; 9C 1E 0A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $0A00.w		; AD 00 0A
	sta $0A20.w		; 8D 20 0A
	lsr A		; 4A
	lsr A		; 4A
	sta $0A24.w		; 8D 24 0A
	sta $0A1C.w		; 8D 1C 0A
	stz $0A18.w		; 9C 18 0A
	lda $0A02.w		; AD 02 0A
	sta $0A22.w		; 8D 22 0A
	lsr A		; 4A
	lsr A		; 4A
	sta $0A1E.w		; 8D 1E 0A
	sta $0A26.w		; 8D 26 0A
	stz $0A1A.w		; 9C 1A 0A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $0A00.w		; AD 00 0A
	sec		; 38
	sbc $0A18.w		; ED 18 0A
	sta $00.b		; 85 00
	lda $0A1C.w		; AD 1C 0A
	dec A		; 3A
	dec A		; 3A
	dec A		; 3A
	dec A		; 3A
	dec A		; 3A
	dec A		; 3A
	clc		; 18
	adc $00.b		; 65 00
	sta $0A1C.w		; 8D 1C 0A
	lda $0A24.w		; AD 24 0A
	clc		; 18
	adc $00.b		; 65 00
	sta $0A24.w		; 8D 24 0A
	lda $B1.b		; A5 B1
	and #$0001.w		; 29 01 00
	beq   3.b		; F0 03
	inc $0A24.w		; EE 24 0A
	lda $0A00.w		; AD 00 0A
	sta $0A20.w		; 8D 20 0A
	sta $0A18.w		; 8D 18 0A
	lda $0A02.w		; AD 02 0A
	sta $0A1A.w		; 8D 1A 0A
	sta $0A22.w		; 8D 22 0A
	sta $0A26.w		; 8D 26 0A
	stz $0A1E.w		; 9C 1E 0A
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $B1.b		; A5 B1
	bit #$0007.w		; 89 07 00
	bne  30.b		; D0 1E
	bit #$0040.w		; 89 40 00
	bne   3.b		; D0 03
	eor #$00FF.w		; 49 FF 00
	and #$0038.w		; 29 38 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$B4C1.w		; 69 C1 B4
	tax		; AA
	ldy #$05C0.w		; A0 C0 05
	lda #$003F.w		; A9 3F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	bpl  65.b		; 10 41
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	php		; 08
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
	brk $10.b		; 00 10
	eor ($06.b,X)		; 41 06
	brk $08.b		; 00 08
	brk $0A.b		; 00 0A
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	brk $12.b		; 00 12
	brk $10.b		; 00 10
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	eor ($01.b,X)		; 41 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $0A.b		; 00 0A
	tsb $0C.b		; 04 0C
	tsb $0E.b		; 04 0E
	tsb $10.b		; 04 10
	php		; 08
	ora ($10.b)		; 12 10
	trb $18.b		; 14 18
	asl $20.b,X		; 16 20
	clc		; 18
	plp		; 28
	inc A		; 1A
	bmi  28.b		; 30 1C
	sec		; 38
	bpl  65.b		; 10 41
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	php		; 08
	brk $0A.b		; 00 0A
	tsb $0C.b		; 04 0C
	tsb $0E.b		; 04 0E
	tsb $10.b		; 04 10
	php		; 08
	asl $0C04.w		; 0E 04 0C
	tsb $0A.b		; 04 0A
	tsb $08.b		; 04 08
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	eor ($01.b,X)		; 41 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	tsb $07.b		; 04 07
	tsb $08.b		; 04 08
	php		; 08
	asl A		; 0A
	php		; 08
	tsb $0E0C.w		; 0C 0C 0E
	bpl  16.b		; 10 10
	clc		; 18
	ora ($20.b)		; 12 20
	trb $28.b		; 14 28
	asl $30.b,X		; 16 30
	clc		; 18
	sec		; 38
	inc A		; 1A
	rti		; 40

	bpl  65.b		; 10 41
	tsb $00.b		; 04 00
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	php		; 08
	php		; 08
	asl A		; 0A
	php		; 08
	tsb $0E0C.w		; 0C 0C 0E
	bpl  12.b		; 10 0C
	tsb $080A.w		; 0C 0A 08
	ora #$0708.w		; 09 08 07
	tsb $05.b		; 04 05
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	eor ($01.b,X)		; 41 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	tsb $05.b		; 04 05
	php		; 08
	ora [$0C.b]		; 07 0C
	php		; 08
	bpl  10.b		; 10 0A
	trb $0C.b		; 14 0C
	clc		; 18
	asl $1020.w		; 0E 20 10
	plp		; 28
	ora ($30.b)		; 12 30
	trb $38.b		; 14 38
	asl $40.b,X		; 16 40
	clc		; 18
	pha		; 48
	bpl  65.b		; 10 41
	ora $00.b,S		; 03 00
	tsb $04.b		; 04 04
	ora $08.b		; 05 08
	ora [$0C.b]		; 07 0C
	php		; 08
	bpl  10.b		; 10 0A
	trb $0C.b		; 14 0C
	clc		; 18
	asl A		; 0A
	trb $09.b		; 14 09
	bpl   7.b		; 10 07
	tsb $0806.w		; 0C 06 08
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	bpl  65.b		; 10 41
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $04.b		; 02 04
	ora $08.b,S		; 03 08
	tsb $0C.b		; 04 0C
	ora $10.b		; 05 10
	ora [$14.b]		; 07 14
	php		; 08
	clc		; 18
	asl A		; 0A
	jsr $280C.w		; 20 0C 28
	asl $1030.w		; 0E 30 10
	sec		; 38
	ora ($40.b)		; 12 40
	trb $48.b		; 14 48
	asl $50.b,X		; 16 50
	bpl  65.b		; 10 41
	cop $04.b		; 02 04
	ora $08.b,S		; 03 08
	tsb $0C.b		; 04 0C
	ora $10.b		; 05 10
	ora [$14.b]		; 07 14
	php		; 08
	clc		; 18
	asl A		; 0A
	jsr $1808.w		; 20 08 18
	ora [$14.b]		; 07 14
	asl $10.b		; 06 10
	tsb $0C.b		; 04 0C
	ora $08.b,S		; 03 08
	cop $04.b		; 02 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl  65.b		; 10 41
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($04.b,X)		; 01 04
	cop $08.b		; 02 08
	cop $10.b		; 02 10
	tsb $14.b		; 04 14
	ora $1C.b		; 05 1C
	asl $20.b		; 06 20
	php		; 08
	plp		; 28
	asl A		; 0A
	bmi  12.b		; 30 0C
	sec		; 38
	asl $1040.w		; 0E 40 10
	pha		; 48
	ora ($50.b)		; 12 50
	trb $58.b		; 14 58
	bpl  65.b		; 10 41
	ora ($04.b,X)		; 01 04
	cop $08.b		; 02 08
	cop $10.b		; 02 10
	tsb $14.b		; 04 14
	ora $1C.b		; 05 1C
	asl $20.b		; 06 20
	php		; 08
	plp		; 28
	asl $20.b		; 06 20
	ora $1C.b		; 05 1C
	tsb $14.b		; 04 14
	ora $10.b,S		; 03 10
	cop $08.b		; 02 08
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl  65.b		; 10 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($0C.b,X)		; 01 0C
	ora ($14.b,X)		; 01 14
	cop $18.b		; 02 18
	ora $20.b,S		; 03 20
	tsb $28.b		; 04 28
	asl $30.b		; 06 30
	php		; 08
	sec		; 38
	asl A		; 0A
	rti		; 40

	tsb $0E48.w		; 0C 48 0E
	mvn $5C,$10		; 54 10 5C
	ora ($68.b)		; 12 68
	bpl  65.b		; 10 41
	brk $04.b		; 00 04
	ora ($0C.b,X)		; 01 0C
	ora ($14.b,X)		; 01 14
	cop $18.b		; 02 18
	ora $20.b,S		; 03 20
	tsb $28.b		; 04 28
	asl $30.b		; 06 30
	ora $28.b		; 05 28
	tsb $20.b		; 04 20
	ora $18.b,S		; 03 18
	cop $10.b		; 02 10
	ora ($08.b,X)		; 01 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  65.b		; 10 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	ora ($20.b,X)		; 01 20
	cop $28.b		; 02 28
	ora $30.b,S		; 03 30
	tsb $38.b		; 04 38
	ora $40.b		; 05 40
	asl $48.b		; 06 48
	ora [$50.b]		; 07 50
	php		; 08
	cli		; 58
	ora #$0A60.w		; 09 60 0A
	pla		; 68
	bpl  65.b		; 10 41
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	ora ($20.b,X)		; 01 20
	cop $28.b		; 02 28
	ora $30.b,S		; 03 30
	tsb $38.b		; 04 38
	ora $30.b,S		; 03 30
	cop $28.b		; 02 28
	ora ($20.b,X)		; 01 20
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.ACCU 16
	rep #$20		; C2 20
	lda $0A00.w		; AD 00 0A
	sta $0A20.w		; 8D 20 0A
	lsr A		; 4A
	lsr A		; 4A
	sta $0A24.w		; 8D 24 0A
	sta $0A1C.w		; 8D 1C 0A
	stz $0A18.w		; 9C 18 0A
	lda $0A02.w		; AD 02 0A
	sta $0A22.w		; 8D 22 0A
	lsr A		; 4A
	lsr A		; 4A
	sta $0A1E.w		; 8D 1E 0A
	sta $0A26.w		; 8D 26 0A
	sta $0A1A.w		; 8D 1A 0A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $0A00.w		; AD 00 0A
	sta $0A18.w		; 8D 18 0A
	sta $0A1C.w		; 8D 1C 0A
	sta $0A20.w		; 8D 20 0A
	sta $0A24.w		; 8D 24 0A
	lda $0A02.w		; AD 02 0A
	sta $0A1A.w		; 8D 1A 0A
	sta $0A1E.w		; 8D 1E 0A
	sta $0A22.w		; 8D 22 0A
	sta $0A26.w		; 8D 26 0A
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $B1.b		; A5 B1
	bit #$0003.w		; 89 03 00
	bne  49.b		; D0 31
	inc $0A84.w		; EE 84 0A
	lda $0A84.w		; AD 84 0A
	cmp #$0003.w		; C9 03 00
	bmi   6.b		; 30 06
	lda #$0000.w		; A9 00 00
	sta $0A84.w		; 8D 84 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$B741.w		; 69 41 B7
	tax		; AA
	ldy #$0540.w		; A0 40 05
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	lda $0A80.w		; AD 80 0A
	and #$0003.w		; 29 03 00
	asl A		; 0A
	tax		; AA
	jmp ($B7A1.w,X)		; 7C A1 B7
	rts		; 60

	brk $00.b		; 00 00
	lda [$20.b]		; A7 20
	lsr $08.b		; 46 08
	php		; 08
	and $312B.w,Y		; 39 2B 31
	dex		; CA
	clc		; 18
	sty $AF49.w		; 8C 49 AF
	eor ($4E.b,X)		; 41 4E
	and #$5A10.w		; 29 10 5A
	php		; 08
	adc $7929.w,Y		; 79 29 79
	dec $9879.w		; CE 79 98
	ror $7E76.w,X		; 7E 76 7E
	tsx		; BA
	ror $0000.w,X		; 7E 00 00
	lsr $08.b		; 46 08
	php		; 08
	and $20A7.w,Y		; 39 A7 20
	dex		; CA
	clc		; 18
	sty $2B49.w		; 8C 49 2B
	and ($4E.b),Y		; 31 4E
	and #$5A10.w		; 29 10 5A
	lda $790841.l		; AF 41 08 79
	and #$CE79.w		; 29 79 CE
	adc $7E76.w,Y		; 79 76 7E
	tsx		; BA
	ror $7E98.w,X		; 7E 98 7E
	brk $00.b		; 00 00
	php		; 08
	and $20A7.w,Y		; 39 A7 20
	lsr $08.b		; 46 08
	sty $2B49.w		; 8C 49 2B
	and ($CA.b),Y		; 31 CA
	clc		; 18
	bpl  90.b		; 10 5A
	lda $294E41.l		; AF 41 4E 29
	php		; 08
	adc $7929.w,Y		; 79 29 79
	dec $BA79.w		; CE 79 BA
	ror $7E98.w,X		; 7E 98 7E
	ror $7E.b,X		; 76 7E
	lda #$D8B7.w		; A9 B7 D8
	lda [$ED.b],Y		; B7 ED
	lda [$D8.b],Y		; B7 D8
	lda [$AD.b],Y		; B7 AD
	.db $82, $0A, $1A		; 82 0A 1A
	cmp #$003C.w		; C9 3C 00
	bpl  34.b		; 10 22
	sta $0A82.w		; 8D 82 0A
	and #$0001.w		; 29 01 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	clc		; 18
	adc #$B81C.w		; 69 1C B8
	tax		; AA
	ldy #$05A0.w		; A0 A0 05
	lda #$005F.w		; A9 5F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	inc $0A80.w		; EE 80 0A
	rts		; 60

	ldx #$B8DC.w		; A2 DC B8
	ldy #$05A0.w		; A0 A0 05
	lda #$005F.w		; A9 5F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	inc $0A80.w		; EE 80 0A
	stz $0A82.w		; 9C 82 0A
	rts		; 60

	lda $0A82.w		; AD 82 0A
	inc A		; 1A
	cmp #$003C.w		; C9 3C 00
	bpl  34.b		; 10 22
	sta $0A82.w		; 8D 82 0A
	and #$0001.w		; 29 01 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	clc		; 18
	adc #$B93C.w		; 69 3C B9
	tax		; AA
	ldy #$05A0.w		; A0 A0 05
	lda #$005F.w		; A9 5F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	inc $0A80.w		; EE 80 0A
	rts		; 60

	brk $00.b		; 00 00
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dex		; CA
	bvc -54.b		; 50 CA
	bvc 115.b		; 50 73
	ror $CA.b		; 66 CA
	bvc -54.b		; 50 CA
	bvc -54.b		; 50 CA
	bvc -54.b		; 50 CA
	bvc -42.b		; 50 D6
	adc ($00.b)		; 72 00
	brk $46.b		; 00 46
	rti		; 40

	lsr $40.b		; 46 40
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	ora $00007C.l,X		; 1F 7C 00 00
	ora $00007C.l,X		; 1F 7C 00 00
	adc ($66.b,S),Y		; 73 66
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	dec $72.b,X		; D6 72
	brk $00.b		; 00 00
	dey		; 88
	pha		; 48
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dex		; CA
	bvc 115.b		; 50 73
	ror $CA.b		; 66 CA
	bvc -54.b		; 50 CA
	bvc -54.b		; 50 CA
	bvc -54.b		; 50 CA
	bvc -54.b		; 50 CA
	bvc -42.b		; 50 D6
	adc ($00.b)		; 72 00
	brk $46.b		; 00 46
	rti		; 40

	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	dey		; 88
	pha		; 48
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	ora $00007C.l,X		; 1F 7C 00 00
	ora $66737C.l,X		; 1F 7C 73 66
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $40.b		; 46 40
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	dec $72.b,X		; D6 72
	brk $00.b		; 00 00
	dey		; 88
	pha		; 48
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dex		; CA
	bvc -42.b		; 50 D6
	adc ($D6.b)		; 72 D6
	adc ($73.b)		; 72 73
	ror $CA.b		; 66 CA
	bvc -54.b		; 50 CA
	bvc -54.b		; 50 CA
	bvc -42.b		; 50 D6
	adc ($00.b)		; 72 00
	brk $46.b		; 00 46
	rti		; 40

	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	dey		; 88
	pha		; 48
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	dey		; 88
	pha		; 48
	ora $00007C.l,X		; 1F 7C 00 00
	ora $72D67C.l,X		; 1F 7C D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $40.b		; 46 40
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	lsr $40.b		; 46 40
	dec $72.b,X		; D6 72
	brk $00.b		; 00 00
	dey		; 88
	pha		; 48
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dey		; 88
	pha		; 48
	adc ($66.b,S),Y		; 73 66
	dex		; CA
	bvc -42.b		; 50 D6
	adc ($D6.b)		; 72 D6
	adc ($D6.b)		; 72 D6
	adc ($D6.b)		; 72 D6
	adc ($CA.b)		; 72 CA
	bvc 115.b		; 50 73
	ror $D6.b		; 66 D6
	adc ($00.b)		; 72 00
	brk $46.b		; 00 46
	rti		; 40

	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	lsr $40.b		; 46 40
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dey		; 88
	pha		; 48
	adc ($66.b,S),Y		; 73 66
	ora $00007C.l,X		; 1F 7C 00 00
	ora $72D67C.l,X		; 1F 7C D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	brk $00.b		; 00 00
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	lsr $40.b		; 46 40
	adc ($66.b,S),Y		; 73 66
	dec $72.b,X		; D6 72
	brk $00.b		; 00 00
	dey		; 88
	pha		; 48
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	dex		; CA
	bvc -42.b		; 50 D6
	adc ($D6.b)		; 72 D6
	adc ($D6.b)		; 72 D6
	adc ($D6.b)		; 72 D6
	adc ($73.b)		; 72 73
	ror $CA.b		; 66 CA
	bvc -42.b		; 50 D6
	adc ($00.b)		; 72 00
	brk $46.b		; 00 46
	rti		; 40

	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	dey		; 88
	pha		; 48
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	dey		; 88
	pha		; 48
	ora $00007C.l,X		; 1F 7C 00 00
	ora $72D67C.l,X		; 1F 7C D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	brk $00.b		; 00 00
	lsr $40.b		; 46 40
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	dec $72.b,X		; D6 72
	adc ($66.b,S),Y		; 73 66
	lsr $40.b		; 46 40
	dec $72.b,X		; D6 72
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0A00.w		; AD 00 0A
	sta $0A1C.w		; 8D 1C 0A
	sta $0A24.w		; 8D 24 0A
	sta $0A18.w		; 8D 18 0A
	sta $0A20.w		; 8D 20 0A
	lda $0A02.w		; AD 02 0A
	sta $0A1E.w		; 8D 1E 0A
	sta $0A26.w		; 8D 26 0A
	sta $0A1A.w		; 8D 1A 0A
	sta $0A22.w		; 8D 22 0A
	lda $B1.b		; A5 B1
	and #$0002.w		; 29 02 00
	tax		; AA
	lda $BA84.w,X		; BD 84 BA
	sta $059E.w		; 8D 9E 05
	lda $B1.b		; A5 B1
	bit #$0007.w		; 89 07 00
	bne  20.b		; D0 14
	and #$0008.w		; 29 08 00
	asl A		; 0A
	asl A		; 0A
	adc #$BA44.w		; 69 44 BA
	tax		; AA
	ldy #$0580.w		; A0 80 05
	lda #$001D.w		; A9 1D 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	bpl  65.b		; 10 41
	stx $40.b		; 86 40
	pld		; 2B
	eor $D0.b,X		; 55 D0
	adc #$7E75.w		; 69 75 7E
	inc A		; 1A
	adc $5043DE.l,X		; 7F DE 43 50
	php		; 08
	cli		; 58
	jsr $58DE.w		; 20 DE 58
	bpl  82.b		; 10 52
	dec $DE63.w,X		; DE 63 DE
	tda		; 7B
	bvc   8.b		; 50 08
	ora $639C12.l,X		; 1F 12 9C 63
	bpl  65.b		; 10 41
	stx $40.b		; 86 40
	pld		; 2B
	eor $D0.b,X		; 55 D0
	adc #$7E75.w		; 69 75 7E
	inc A		; 1A
	adc $5043DE.l,X		; 7F DE 43 50
	php		; 08
	cli		; 58
	jsr $58DE.w		; 20 DE 58
	bpl  82.b		; 10 52
	clc		; 18
	eor $DE.b,S		; 43 DE
	tda		; 7B
	ora $085012.l,X		; 1F 12 50 08
	brk $7F.b		; 00 7F
	stz $0063.w		; 9C 63 00
	adc $AD30C2.l,X		; 7F C2 30 AD
	brk $0A.b		; 00 0A
	sta $0A1C.w		; 8D 1C 0A
	sta $0A24.w		; 8D 24 0A
	sta $0A20.w		; 8D 20 0A
	sta $0A18.w		; 8D 18 0A
	lda $0A02.w		; AD 02 0A
	sta $0A1A.w		; 8D 1A 0A
	sta $0A1E.w		; 8D 1E 0A
	sta $0A22.w		; 8D 22 0A
	sta $0A26.w		; 8D 26 0A
	lda $74.b		; A5 74
	bne  17.b		; D0 11
	lda $B1.b		; A5 B1
	and #$003C.w		; 29 3C 00
	lsr A		; 4A
	tax		; AA
	lda $BABE.w,X		; BD BE BA
	sta $74.b		; 85 74
	lda #$0080.w		; A9 80 00
	sta $76.b		; 85 76
	rts		; 60

	dec $1EBA.w,X		; DE BA 1E
	ldy $BB7E.w,X		; BC 7E BB
	phy		; 5A
	ldy $BADE.w,X		; BC DE BA
	bit $7EBC.w,X		; 3C BC 7E
	tyx		; BB
	sei		; 78
	ldy $BADE.w,X		; BC DE BA
	asl $7EBC.w,X		; 1E BC 7E
	tyx		; BB
	phy		; 5A
	ldy $BADE.w,X		; BC DE BA
	bit $7EBC.w,X		; 3C BC 7E
	tyx		; BB
	sei		; 78
	ldy $0198.w,X		; BC 98 01
	asl $0B00.w		; 0E 00 0B
	brk $00.b		; 00 00
	trb $1DD9.w		; 1C D9 1D
	phx		; DA
	ora $1C00.w,X		; 1D 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	stp		; DB
	ora $1DDC.w,X		; 1D DC 1D
	cmp $001D.w,X		; DD 1D 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	cpx #$E11D.w		; E0 1D E1
	ora $1DE2.w,X		; 1D E2 1D
	sbc $1D.b,S		; E3 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	inx		; E8
	ora $1DE9.w,X		; 1D E9 1D
	nop		; EA
	ora $1DEB.w,X		; 1D EB 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	beq  29.b		; F0 1D
	sbc ($1D.b),Y		; F1 1D
	sbc ($1D.b)		; F2 1D
	sbc ($1D.b,S),Y		; F3 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	sed		; F8
	ora $1DF9.w,X		; 1D F9 1D
	plx		; FA
	ora $1DFB.w,X		; 1D FB 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	inc $FF1D.w,X		; FE 1D FF
	ora $1E00.w,X		; 1D 00 1E
	ora ($1E.b,X)		; 01 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	tsb $1E.b		; 04 1E
	ora $1E.b		; 05 1E
	asl $1E.b		; 06 1E
	ora [$1E.b]		; 07 1E
	php		; 08
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	phd		; 0B
	asl $1E0C.w,X		; 1E 0C 1E
	ora $0E1E.w		; 0D 1E 0E
	asl $1E0F.w,X		; 1E 0F 1E
	bpl  30.b		; 10 1E
	brk $1C.b		; 00 1C
	trb $1E.b		; 14 1E
	ora $1E.b,X		; 15 1E
	asl $1E.b,X		; 16 1E
	ora [$1E.b],Y		; 17 1E
	clc		; 18
	asl $1E19.w,X		; 1E 19 1E
	ora ($1E.b,S),Y		; 13 1E
	ora $1E1E.w,X		; 1D 1E 1E
	asl $1E1F.w,X		; 1E 1F 1E
	jsr $211E.w		; 20 1E 21
	asl $1E22.w,X		; 1E 22 1E
	and $1E.b,S		; 23 1E
	tya		; 98
	ora ($0E.b,X)		; 01 0E
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	trb $1DD9.w		; 1C D9 1D
	phx		; DA
	ora $1C00.w,X		; 1D 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	dec $DF1D.w,X		; DE 1D DF
	ora $1C00.w,X		; 1D 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	cpx $1D.b		; E4 1D
	sbc $1D.b		; E5 1D
	inc $1D.b		; E6 1D
	sbc [$1D.b]		; E7 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	cpx $ED1D.w		; EC 1D ED
	ora $1DEE.w,X		; 1D EE 1D
	sbc $1C001D.l		; EF 1D 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	pea $F51D.w		; F4 1D F5
	ora $1DF6.w,X		; 1D F6 1D
	sbc [$1D.b],Y		; F7 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	sed		; F8
	ora $1DF9.w,X		; 1D F9 1D
	jsr ($FD1D.w,X)		; FC 1D FD
	ora $1C00.w,X		; 1D 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	inc $FF1D.w,X		; FE 1D FF
	ora $1E02.w,X		; 1D 02 1E
	ora $1E.b,S		; 03 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	tsb $1E.b		; 04 1E
	ora $1E.b		; 05 1E
	ora #$0A1E.w		; 09 1E 0A
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	phd		; 0B
	asl $1E0C.w,X		; 1E 0C 1E
	ora ($1E.b),Y		; 11 1E
	ora ($1E.b)		; 12 1E
	ora ($1E.b,S),Y		; 13 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	trb $1E.b		; 14 1E
	ora $1E.b,X		; 15 1E
	inc A		; 1A
	asl $1E1B.w,X		; 1E 1B 1E
	trb $001E.w		; 1C 1E 00
	trb $1C00.w		; 1C 00 1C
	ora $1E1E.w,X		; 1D 1E 1E
	asl $1E1F.w,X		; 1E 1F 1E
	bit $1E.b		; 24 1E
	and $1E.b		; 25 1E
	rol $1E.b		; 26 1E
	brk $1C.b		; 00 1C
	sta ($06.b,X)		; 81 06
	php		; 08
	brk $03.b		; 00 03
	brk $B0.b		; 00 B0
	eor $5DAF.w,X		; 5D AF 5D
	ldx $AA5D.w		; AE 5D AA
	eor $5DB9.w,X		; 5D B9 5D
	clv		; B8
	eor $5DB7.w,X		; 5D B7 5D
	ldy $5D.b,X		; B4 5D
	cmp ($5D.b,X)		; C1 5D
	cpy #$BF5D.w		; C0 5D BF
	eor $5C00.w,X		; 5D 00 5C
	sta ($06.b,X)		; 81 06
	php		; 08
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	jmp $B15C00.l		; 5C 00 5C B1
	eor $5DAA.w,X		; 5D AA 5D
	brk $5C.b		; 00 5C
	tyx		; BB
	eor $5DBA.w,X		; 5D BA 5D
	ldy $5D.b,X		; B4 5D
	cmp $5D.b,S		; C3 5D
.INDEX 16
	rep #$5D		; C2 5D
	lda $5C005D.l,X		; BF 5D 00 5C
	sta [$06.b]		; 87 06
	php		; 08
	brk $03.b		; 00 03
	brk $AA.b		; 00 AA
	ora $1DB1.w,X		; 1D B1 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	ldy $1D.b,X		; B4 1D
	tsx		; BA
	ora $1DBB.w,X		; 1D BB 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	lda $1DC21D.l,X		; BF 1D C2 1D
	cmp $1D.b,S		; C3 1D
	sta [$06.b]		; 87 06
	php		; 08
	brk $03.b		; 00 03
	brk $B2.b		; 00 B2
	ora $1DB3.w,X		; 1D B3 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	ldy $BD1D.w,X		; BC 1D BD
	ora $1DBE.w,X		; 1D BE 1D
	brk $1C.b		; 00 1C
	bcs -35.b		; B0 DD
	cpy $1D.b		; C4 1D
	cmp $1D.b		; C5 1D
	dec $1D.b		; C6 1D
.ACCU 16
	rep #$20		; C2 20
	lda $0A00.w		; AD 00 0A
	sta $0A18.w		; 8D 18 0A
	sta $0A1C.w		; 8D 1C 0A
	sta $0A20.w		; 8D 20 0A
	sta $0A24.w		; 8D 24 0A
	lda $0A02.w		; AD 02 0A
	sta $0A1A.w		; 8D 1A 0A
	sta $0A1E.w		; 8D 1E 0A
	sta $0A22.w		; 8D 22 0A
	sta $0A26.w		; 8D 26 0A
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $B1.b		; A5 B1
	bit #$0003.w		; 89 03 00
	bne  49.b		; D0 31
	inc $0A84.w		; EE 84 0A
	lda $0A84.w		; AD 84 0A
	cmp #$0003.w		; C9 03 00
	bmi   6.b		; 30 06
	lda #$0000.w		; A9 00 00
	sta $0A84.w		; 8D 84 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$BCF1.w		; 69 F1 BC
	tax		; AA
	ldy #$0540.w		; A0 40 05
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	lda $0A80.w		; AD 80 0A
	and #$0003.w		; 29 03 00
	asl A		; 0A
	tax		; AA
	jmp ($B7A1.w,X)		; 7C A1 B7
	rts		; 60

	bpl 122.b		; 10 7A
	stz $10.b		; 64 10
	mvp $84,$08		; 44 08 84
	clc		; 18
	ldx $18.b		; A6 18
	stx $10.b		; 86 10
	dec $20.b		; C6 20
	inx		; E8
	jsr $18C8.w		; 20 C8 18
	php		; 08
	and #$6042.w		; 29 42 60
	.db $42, $50		; 42 50
	.db $42, $14		; 42 14
	.db $42, $2C		; 42 2C
	.db $42, $20		; 42 20
	.db $42, $38		; 42 38
	bpl 122.b		; 10 7A
	mvp $84,$08		; 44 08 84
	clc		; 18
	stz $10.b		; 64 10
	stx $10.b		; 86 10
	dec $20.b		; C6 20
	ldx $18.b		; A6 18
	iny		; C8
	clc		; 18
	php		; 08
	and #$20E8.w		; 29 E8 20
	.db $42, $60		; 42 60
	.db $42, $50		; 42 50
	.db $42, $14		; 42 14
	.db $42, $20		; 42 20
	.db $42, $38		; 42 38
	.db $42, $2C		; 42 2C
	bpl 122.b		; 10 7A
	sty $18.b		; 84 18
	stz $10.b		; 64 10
	mvp $C6,$08		; 44 08 C6
	jsr $18A6.w		; 20 A6 18
	stx $10.b		; 86 10
	php		; 08
	and #$20E8.w		; 29 E8 20
	iny		; C8
	clc		; 18
	.db $42, $60		; 42 60
	.db $42, $50		; 42 50
	.db $42, $14		; 42 14
	.db $42, $38		; 42 38
	.db $42, $2C		; 42 2C
	.db $42, $20		; 42 20
	bpl 122.b		; 10 7A
	mvp $84,$08		; 44 08 84
	clc		; 18
	stz $10.b		; 64 10
	stx $10.b		; 86 10
	dec $20.b		; C6 20
	ldx $18.b		; A6 18
	iny		; C8
	clc		; 18
	php		; 08
	and #$20E8.w		; 29 E8 20
	.db $42, $60		; 42 60
	.db $42, $50		; 42 50
	.db $42, $14		; 42 14
	.db $42, $20		; 42 20
	.db $42, $38		; 42 38
	.db $42, $2C		; 42 2C
.ACCU 16
	rep #$20		; C2 20
	lda $0A00.w		; AD 00 0A
	sta $0A18.w		; 8D 18 0A
	sta $0A1C.w		; 8D 1C 0A
	sta $0A20.w		; 8D 20 0A
	sta $0A24.w		; 8D 24 0A
	lda $0A02.w		; AD 02 0A
	sta $0A1A.w		; 8D 1A 0A
	sta $0A1E.w		; 8D 1E 0A
	sta $0A22.w		; 8D 22 0A
	sta $0A26.w		; 8D 26 0A
	lda $74.b		; A5 74
	bne  17.b		; D0 11
	lda $B1.b		; A5 B1
	and #$003C.w		; 29 3C 00
	lsr A		; 4A
	tax		; AA
	lda $BDA7.w,X		; BD A7 BD
	sta $74.b		; 85 74
	lda #$0080.w		; A9 80 00
	sta $76.b		; 85 76
	rts		; 60

	sbc ($BD.b,S),Y		; F3 BD
	tsa		; 3B
	ldx $BDC7.w,Y		; BE C7 BD
	eor $BE.b,X		; 55 BE
	adc $BDDDBE.l		; 6F BE DD BD
	tsa		; 3B
	ldx $BF15.w,Y		; BE 15 BF
	ora [$BE.b],Y		; 17 BE
	eor $BE.b,X		; 55 BE
	cmp [$BD.b]		; C7 BD
	tsa		; 3B
	ldx $BE6F.w,Y		; BE 6F BE
	cmp $55BD.w,X		; DD BD 55
	ldx $BF15.w,Y		; BE 15 BF
	eor ($01.b,S),Y		; 53 01
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	clv		; B8
	ora $1C00.w,X		; 1D 00 1C
	ldx $BF1D.w,Y		; BE 1D BF
	ora $1DC7.w,X		; 1D C7 1D
	iny		; C8
	ora $1DD2.w,X		; 1D D2 1D
	cmp ($1D.b,S),Y		; D3 1D
	eor ($01.b,S),Y		; 53 01
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $1C.b		; 00 1C
	jsl $1E231E.l		; 22 1E 23 1E
	bit $1E.b		; 24 1E
	and $1E.b		; 25 1E
	rol $1E.b		; 26 1E
	and [$1E.b]		; 27 1E
	plp		; 28
	asl $0156.w,X		; 1E 56 01
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	and #$981E.w		; 29 1E 98
	eor $1E2A.w,X		; 5D 2A 1E
	and $2E1E.w		; 2D 1E 2E
	asl $1E2F.w,X		; 1E 2F 1E
	and $1E.b,X		; 35 1E
	rol $1E.b,X		; 36 1E
	and [$1E.b],Y		; 37 1E
	and $1E401E.l,X		; 3F 1E 40 1E
	eor ($1E.b,X)		; 41 1E
	eor #$4A1E.w		; 49 1E 4A
	asl $1C00.w,X		; 1E 00 1C
	lsr $01.b,X		; 56 01
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	and #$981E.w		; 29 1E 98
	eor $1C00.w,X		; 5D 00 1C
	and $2E1E.w		; 2D 1E 2E
	asl $1C00.w,X		; 1E 00 1C
	and $1E.b,X		; 35 1E
	stx $1E.b,Y		; 96 1E
	sta [$1E.b],Y		; 97 1E
	txs		; 9A
	asl $3E9B.w,X		; 1E 9B 3E
	stz $491E.w		; 9C 1E 49
	asl $1E9F.w,X		; 1E 9F 1E
	ldy #$591E.w		; A0 1E 59
	ora ($04.b,X)		; 01 04
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	bmi  30.b		; 30 1E
	and ($1E.b),Y		; 31 1E
	sec		; 38
	asl $1E39.w,X		; 1E 39 1E
	.db $42, $1E		; 42 1E
	eor $1E.b,S		; 43 1E
	phk		; 4B
	asl $1E4C.w,X		; 1E 4C 1E
	eor $0401.w,Y		; 59 01 04
	brk $05.b		; 00 05
	brk $93.b		; 00 93
	asl $1C00.w,X		; 1E 00 1C
	sty $1E.b,X		; 94 1E
	sta $1E.b,X		; 95 1E
	tya		; 98
	asl $1E99.w,X		; 1E 99 1E
	sta $9E1E.w,X		; 9D 1E 9E
	asl $1EA1.w,X		; 1E A1 1E
	ldx #$011E.w		; A2 1E 01
	ora $14.b		; 05 14
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
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	sta $9E1D.w,X		; 9D 1D 9E
	ora $1C00.w,X		; 1D 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $1DA01D.l,X		; 9F 1D A0 1D
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	lda ($1D.b,X)		; A1 1D
	ldx #$001D.w		; A2 1D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A3.b		; 00 A3
	ora $1DA4.w,X		; 1D A4 1D
	lda $1D.b		; A5 1D
	ldx $1D.b		; A6 1D
	lda [$1D.b]		; A7 1D
	tay		; A8
	ora $1DA9.w,X		; 1D A9 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	tax		; AA
	ora $1DAB.w,X		; 1D AB 1D
	ldy $AD1D.w		; AC 1D AD
	ora $1DAE.w,X		; 1D AE 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	tya		; 98
	sta $1DAF.w,X		; 9D AF 1D
	bcs  29.b		; B0 1D
	lda ($1D.b),Y		; B1 1D
	lda ($1D.b)		; B2 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	lda ($1D.b,S),Y		; B3 1D
	ldy $1D.b,X		; B4 1D
	lda $1D.b,X		; B5 1D
	ldx $1D.b,Y		; B6 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	ora $1D9B.w,X		; 1D 9B 1D
	stz $001D.w		; 9C 1D 00
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($05.b,X)		; 01 05
	trb $00.b		; 14 00
	php		; 08
	brk $00.b		; 00 00
	trb $5C00.w		; 1C 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	stz $9D5D.w,X		; 9E 5D 9D
	eor $5C00.w,X		; 5D 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	ldx #$A15D.w		; A2 5D A1
	eor $5C00.w,X		; 5D 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	ldy #$9F5D.w		; A0 5D 9F
	eor $5C00.w,X		; 5D 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	lda #$A85D.w		; A9 5D A8
	eor $5DA7.w,X		; 5D A7 5D
	ldx $5D.b		; A6 5D
	lda $5D.b		; A5 5D
	ldy $5D.b		; A4 5D
	lda $5D.b,S		; A3 5D
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	ldx $AD5D.w		; AE 5D AD
	eor $5DAC.w,X		; 5D AC 5D
	plb		; AB
	eor $5DAA.w,X		; 5D AA 5D
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	lda ($5D.b)		; B2 5D
	lda ($5D.b),Y		; B1 5D
	bcs  93.b		; B0 5D
	lda $DD985D.l		; AF 5D 98 DD
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	ldx $5D.b,Y		; B6 5D
	lda $5D.b,X		; B5 5D
	ldy $5D.b,X		; B4 5D
	lda ($5D.b,S),Y		; B3 5D
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	tya		; 98
	ora $1D9B.w,X		; 1D 9B 1D
	stz $001D.w		; 9C 1D 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	phb		; 8B
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $1E04.w		; AD 04 1E
	beq   3.b		; F0 03
	jmp $C04C.w		; 4C 4C C0
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	beq 126.b		; F0 7E
	lda $43.b,X		; B5 43
	bne 122.b		; D0 7A
	lda #$8A.b		; A9 8A
	pha		; 48
	plb		; AB
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $C1F1.w,Y		; B9 F1 C1
	sta $20.b		; 85 20
	lda $40.b,X		; B5 40
	and #$00FF.w		; 29 FF 00
	beq  97.b		; F0 61
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $20.b		; 65 20
	tay		; A8
	jsr $C8EA.w		; 20 EA C8
	cpx #$1000.w		; E0 00 10
	bne   5.b		; D0 05
	ldx #$1080.w		; A2 80 10
	bra   3.b		; 80 03
	ldx #$1000.w		; A2 00 10
.ACCU 8
	sep #$20		; E2 20
	lda #$8A.b		; A9 8A
	pha		; 48
	plb		; AB
	lda $46.b,X		; B5 46
	bmi  64.b		; 30 40
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $C229.w,Y		; B9 29 C2
	sta $20.b		; 85 20
	lda $41.b,X		; B5 41
	and #$00FF.w		; 29 FF 00
	beq  43.b		; F0 2B
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $20.b		; 65 20
	sta $20.b		; 85 20
	stx $22.b		; 86 22
	jsr $C9DF.w		; 20 DF C9
	bcc   3.b		; 90 03
	jmp $C121.w		; 4C 21 C1
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	jsr $C9DF.w		; 20 DF C9
	bcc   3.b		; 90 03
	jmp $C04E.w		; 4C 4E C0
	plb		; AB
	rtl		; 6B

	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	lda $0079.w,Y		; B9 79 00
	cmp #$03E7.w		; C9 E7 03
	bpl  10.b		; 10 0A
	lda #$0001.w		; A9 01 00
	clc		; 18
	adc $0079.w,Y		; 79 79 00
	sta $0079.w,Y		; 99 79 00
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$03.b		; 29 03
	and $0A.b		; 25 0A
	beq   3.b		; F0 03
	jmp $C1F4.w		; 4C F4 C1
	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	inc $0043.w,X		; FE 43 00
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CD75.w,X)		; FC 75 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  58.b		; B0 3A
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CDD7.w,X		; BD D7 CD
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CDD5.w,X		; BD D5 CD
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CDD8.w,X		; BD D8 CD
	sta $004C.w,Y		; 99 4C 00
	lda $CDD6.w,X		; BD D6 CD
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CE97.w,X		; BD 97 CE
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CE95.w,X		; BD 95 CE
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CE98.w,X		; BD 98 CE
	sta $004C.w,Y		; 99 4C 00
	lda $CE96.w,X		; BD 96 CE
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	lda $0079.w,Y		; B9 79 00
	cmp #$03E7.w		; C9 E7 03
	bpl  10.b		; 10 0A
	lda #$0001.w		; A9 01 00
	clc		; 18
	adc $0079.w,Y		; 79 79 00
	sta $0079.w,Y		; 99 79 00
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$03.b		; 29 03
	and $0A.b		; 25 0A
	beq   3.b		; F0 03
	jmp $C2A3.w		; 4C A3 C2
	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	inc $0043.w,X		; FE 43 00
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CD95.w,X)		; FC 95 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  58.b		; B0 3A
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CE17.w,X		; BD 17 CE
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CE15.w,X		; BD 15 CE
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CE18.w,X		; BD 18 CE
	sta $004C.w,Y		; 99 4C 00
	lda $CE16.w,X		; BD 16 CE
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CED7.w,X		; BD D7 CE
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CED5.w,X		; BD D5 CE
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CED8.w,X		; BD D8 CE
	sta $004C.w,Y		; 99 4C 00
	lda $CED6.w,X		; BD D6 CE
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

	dec $43.b,X		; D6 43
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CDB5.w,X)		; FC B5 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  62.b		; B0 3E
	lda #$0B.b		; A9 0B
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CE57.w,X		; BD 57 CE
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CE55.w,X		; BD 55 CE
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CE58.w,X		; BD 58 CE
	sta $004C.w,Y		; 99 4C 00
	lda $CE56.w,X		; BD 56 CE
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CE97.w,X		; BD 97 CE
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CE95.w,X		; BD 95 CE
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CE98.w,X		; BD 98 CE
	sta $004C.w,Y		; 99 4C 00
	lda $CE96.w,X		; BD 96 CE
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

	dec $43.b,X		; D6 43
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CDB5.w,X)		; FC B5 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  62.b		; B0 3E
	lda #$0B.b		; A9 0B
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CE57.w,X		; BD 57 CE
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CE55.w,X		; BD 55 CE
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CE58.w,X		; BD 58 CE
	sta $004C.w,Y		; 99 4C 00
	lda $CE56.w,X		; BD 56 CE
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CED7.w,X		; BD D7 CE
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CED5.w,X		; BD D5 CE
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CED8.w,X		; BD D8 CE
	sta $004C.w,Y		; 99 4C 00
	lda $CED6.w,X		; BD D6 CE
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

	phb		; 8B
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $1E04.w		; AD 04 1E
	beq   3.b		; F0 03
	jmp $C42E.w		; 4C 2E C4
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   3.b		; D0 03
	jmp $C42E.w		; 4C 2E C4
	lda $43.b,X		; B5 43
	beq   3.b		; F0 03
	jmp $C42E.w		; 4C 2E C4
	lda #$8A.b		; A9 8A
	pha		; 48
	plb		; AB
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $C1F1.w,Y		; B9 F1 C1
	sta $20.b		; 85 20
	lda $40.b,X		; B5 40
	and #$00FF.w		; 29 FF 00
	bne   3.b		; D0 03
	jmp $C42E.w		; 4C 2E C4
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $20.b		; 65 20
	tay		; A8
	jsr $C8EA.w		; 20 EA C8
	cpx #$1100.w		; E0 00 11
	bne   5.b		; D0 05
	ldx #$1180.w		; A2 80 11
	bra   3.b		; 80 03
	ldx #$1100.w		; A2 00 11
.ACCU 8
	sep #$20		; E2 20
	lda $17.b,X		; B5 17
	bmi  45.b		; 30 2D
	lda #$8A.b		; A9 8A
	pha		; 48
	plb		; AB
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	beq  32.b		; F0 20
	asl A		; 0A
	tay		; A8
	lda $C1F1.w,Y		; B9 F1 C1
	sta $20.b		; 85 20
	lda $40.b,X		; B5 40
	and #$00FF.w		; 29 FF 00
	beq  18.b		; F0 12
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $20.b		; 65 20
	sta $20.b		; 85 20
	stx $22.b		; 86 22
	jsr $C959.w		; 20 59 C9
	bcc   3.b		; 90 03
	jmp $C734.w		; 4C 34 C7
	ldx $88.b		; A6 88
	cpx #$1100.w		; E0 00 11
	bne   5.b		; D0 05
	ldx #$1080.w		; A2 80 10
	bra   3.b		; 80 03
	ldx #$1000.w		; A2 00 10
.ACCU 8
	sep #$20		; E2 20
	lda #$8A.b		; A9 8A
	pha		; 48
	plb		; AB
	lda $46.b,X		; B5 46
	bmi  64.b		; 30 40
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $C229.w,Y		; B9 29 C2
	sta $20.b		; 85 20
	lda $41.b,X		; B5 41
	and #$00FF.w		; 29 FF 00
	beq  43.b		; F0 2B
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $20.b		; 65 20
	sta $20.b		; 85 20
	stx $22.b		; 86 22
	jsr $C9DF.w		; 20 DF C9
	bcc   3.b		; 90 03
	jmp $C503.w		; 4C 03 C5
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	inc $20.b		; E6 20
	jsr $C9DF.w		; 20 DF C9
	bcc   3.b		; 90 03
	jmp $C430.w		; 4C 30 C4
	plb		; AB
	rtl		; 6B

	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	lda $0079.w,Y		; B9 79 00
	cmp #$03E7.w		; C9 E7 03
	bpl  10.b		; 10 0A
	lda #$0001.w		; A9 01 00
	clc		; 18
	adc $0079.w,Y		; 79 79 00
	sta $0079.w,Y		; 99 79 00
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$03.b		; 29 03
	and $0A.b		; 25 0A
	beq   3.b		; F0 03
	jmp $C5D6.w		; 4C D6 C5
	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	inc $0043.w,X		; FE 43 00
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CD75.w,X)		; FC 75 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  58.b		; B0 3A
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CF17.w,X		; BD 17 CF
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CF15.w,X		; BD 15 CF
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CF18.w,X		; BD 18 CF
	sta $004C.w,Y		; 99 4C 00
	lda $CF16.w,X		; BD 16 CF
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CFD7.w,X		; BD D7 CF
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CFD5.w,X		; BD D5 CF
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CFD8.w,X		; BD D8 CF
	sta $004C.w,Y		; 99 4C 00
	lda $CFD6.w,X		; BD D6 CF
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	lda $0079.w,Y		; B9 79 00
	cmp #$03E7.w		; C9 E7 03
	bpl  10.b		; 10 0A
	lda #$0001.w		; A9 01 00
	clc		; 18
	adc $0079.w,Y		; 79 79 00
	sta $0079.w,Y		; 99 79 00
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$03.b		; 29 03
	and $0A.b		; 25 0A
	beq   3.b		; F0 03
	jmp $C685.w		; 4C 85 C6
	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	inc $0043.w,X		; FE 43 00
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CD95.w,X)		; FC 95 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  58.b		; B0 3A
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CF57.w,X		; BD 57 CF
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CF55.w,X		; BD 55 CF
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CF58.w,X		; BD 58 CF
	sta $004C.w,Y		; 99 4C 00
	lda $CF56.w,X		; BD 56 CF
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $D017.w,X		; BD 17 D0
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $D015.w,X		; BD 15 D0
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $D018.w,X		; BD 18 D0
	sta $004C.w,Y		; 99 4C 00
	lda $D016.w,X		; BD 16 D0
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

	dec $43.b,X		; D6 43
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CDB5.w,X)		; FC B5 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  62.b		; B0 3E
	lda #$0B.b		; A9 0B
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CF97.w,X		; BD 97 CF
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CF95.w,X		; BD 95 CF
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CF98.w,X		; BD 98 CF
	sta $004C.w,Y		; 99 4C 00
	lda $CF96.w,X		; BD 96 CF
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CFD7.w,X		; BD D7 CF
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CFD5.w,X		; BD D5 CF
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CFD8.w,X		; BD D8 CF
	sta $004C.w,Y		; 99 4C 00
	lda $CFD6.w,X		; BD D6 CF
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

	dec $43.b,X		; D6 43
	lda $44.b,X		; B5 44
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	tax		; AA
	jsr ($CDB5.w,X)		; FC B5 CD
.ACCU 8
	sep #$20		; E2 20
	lda $08.b		; A5 08
	and #$04.b		; 29 04
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0D.b		; 85 0D
	bra   3.b		; 80 03
	jsr $CADB.w		; 20 DB CA
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $00.b		; E5 00
	sta $0049.w,Y		; 99 49 00
	cmp #$90.b		; C9 90
	bcs  62.b		; B0 3E
	lda #$0B.b		; A9 0B
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $CF97.w,X		; BD 97 CF
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $CF95.w,X		; BD 95 CF
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $CF98.w,X		; BD 98 CF
	sta $004C.w,Y		; 99 4C 00
	lda $CF96.w,X		; BD 96 CF
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	plb		; AB
	rtl		; 6B

	lda $77.b,X		; B5 77
	sta $78.b		; 85 78
	lda $44.b,X		; B5 44
	lsr A		; 4A
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
	lda $D017.w,X		; BD 17 D0
	jsl $80CAAB.l		; 22 AB CA 80
	ldy $22.b		; A4 22
.ACCU 8
	sep #$20		; E2 20
	lda $D015.w,X		; BD 15 D0
	cmp $0047.w,Y		; D9 47 00
	bmi  24.b		; 30 18
	sta $0047.w,Y		; 99 47 00
	lda $0D.b		; A5 0D
	sta $004B.w,Y		; 99 4B 00
	lda $D018.w,X		; BD 18 D0
	sta $004C.w,Y		; 99 4C 00
	lda $D016.w,X		; BD 16 D0
	ldx $88.b		; A6 88
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	jsl $C10A4F.l		; 22 4F 0A C1
	plb		; AB
	rtl		; 6B

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	lda #$FF.b		; A9 FF
	sta $43.b,X		; 95 43
	sta $0043.w,Y		; 99 43 00
	plb		; AB
	rtl		; 6B

	phb		; 8B
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $1E3D.w		; AD 3D 1E
	bne 104.b		; D0 68
	lda #$8A.b		; A9 8A
	pha		; 48
	plb		; AB
	ldx $88.b		; A6 88
	lda $46.b,X		; B5 46
	bit #$40.b		; 89 40
	bne  92.b		; D0 5C
	lda $00.b,X		; B5 00
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $C23D.w,Y		; B9 3D C2
	sta $20.b		; 85 20
	lda $42.b,X		; B5 42
	and #$00FF.w		; 29 FF 00
	beq  71.b		; F0 47
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $20.b		; 65 20
	tay		; A8
	jsr $C8EA.w		; 20 EA C8
	cpx #$1000.w		; E0 00 10
	bne   5.b		; D0 05
	ldx #$1080.w		; A2 80 10
	bra   3.b		; 80 03
	ldx #$1000.w		; A2 00 10
	lda $46.b,X		; B5 46
	bit #$0040.w		; 89 40 00
	bne  41.b		; D0 29
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $C23D.w,Y		; B9 3D C2
	sta $20.b		; 85 20
	lda $42.b,X		; B5 42
	and #$00FF.w		; 29 FF 00
	beq  22.b		; F0 16
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $20.b		; 65 20
	sta $20.b		; 85 20
	stx $22.b		; 86 22
	jsr $C959.w		; 20 59 C9
	bcc   7.b		; 90 07
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	jsr $C7B9.w		; 20 B9 C7
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0030.w,Y		; B9 30 00
	clc		; 18
	adc $0036.w,Y		; 79 36 00
	clc		; 18
	adc $0038.w,Y		; 79 38 00
	sta $00.b		; 85 00
	lda $0016.w,Y		; B9 16 00
	and #$0040.w		; 29 40 00
	beq   3.b		; F0 03
	jmp $C86A.w		; 4C 6A C8
	lda $16.b,X		; B5 16
	and #$0080.w		; 29 80 00
	bne   3.b		; D0 03
	jmp $C82E.w		; 4C 2E C8
	lda $30.b,X		; B5 30
	ora $00.b		; 05 00
	beq  49.b		; F0 31
	lda $00.b		; A5 00
	beq  10.b		; F0 0A
	lda $21.b,X		; B5 21
	sec		; 38
	sbc $0021.w,Y		; F9 21 00
	eor $00.b		; 45 00
	bpl  14.b		; 10 0E
	lda $30.b,X		; B5 30
	beq  31.b		; F0 1F
	lda $21.b,X		; B5 21
	sec		; 38
	sbc $0021.w,Y		; F9 21 00
	eor $30.b,X		; 55 30
	bpl  21.b		; 10 15
	lda $30.b,X		; B5 30
	clc		; 18
	adc $0030.w,Y		; 79 30 00
	lsr A		; 4A
	bit #$4000.w		; 89 00 40
	beq   3.b		; F0 03
	ora #$8000.w		; 09 00 80
	sec		; 38
	sbc $30.b,X		; F5 30
	sta $36.b,X		; 95 36
	rts		; 60

	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
	bmi  13.b		; 30 0D
	bne   5.b		; D0 05
	cpx #$1000.w		; E0 00 10
	bne   6.b		; D0 06
	lda #$0200.w		; A9 00 02
	sta $36.b,X		; 95 36
	rts		; 60

	lda #$FE00.w		; A9 00 FE
	sta $36.b,X		; 95 36
	rts		; 60

	lda $0016.w,Y		; B9 16 00
	and #$0080.w		; 29 80 00
	beq -89.b		; F0 A7
	lda $30.b,X		; B5 30
	clc		; 18
	adc $0030.w,Y		; 79 30 00
	lsr A		; 4A
	bit #$4000.w		; 89 00 40
	beq   3.b		; F0 03
	ora #$8000.w		; 09 00 80
	sec		; 38
	sbc $30.b,X		; F5 30
	sta $0E.b		; 85 0E
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
	bmi  16.b		; 30 10
	bne   5.b		; D0 05
	cpx #$1000.w		; E0 00 10
	bne   9.b		; D0 09
	lda #$0200.w		; A9 00 02
	clc		; 18
	adc $0E.b		; 65 0E
	sta $36.b,X		; 95 36
	rts		; 60

	lda #$FE00.w		; A9 00 FE
	clc		; 18
	adc $0E.b		; 65 0E
	sta $36.b,X		; 95 36
	rts		; 60

	lda $16.b,X		; B5 16
	and #$0040.w		; 29 40 00
	bne  75.b		; D0 4B
	lda $16.b,X		; B5 16
	and #$0080.w		; 29 80 00
	beq  81.b		; F0 51
	and $0016.w,Y		; 39 16 00
	beq  23.b		; F0 17
	lda $30.b,X		; B5 30
	beq  19.b		; F0 13
	lda $21.b,X		; B5 21
	sec		; 38
	sbc $0021.w,Y		; F9 21 00
	eor $30.b,X		; 55 30
	bpl   9.b		; 10 09
	lda $30.b,X		; B5 30
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $36.b,X		; 95 36
	rts		; 60

	lda $30.b,X		; B5 30
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $0E.b		; 85 0E
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
	bmi  16.b		; 30 10
	bne   5.b		; D0 05
	cpx #$1000.w		; E0 00 10
	bne   9.b		; D0 09
	lda $0E.b		; A5 0E
	clc		; 18
	adc #$0200.w		; 69 00 02
	sta $36.b,X		; 95 36
	rts		; 60

	lda $0E.b		; A5 0E
	clc		; 18
	adc #$FE00.w		; 69 00 FE
	sta $36.b,X		; 95 36
	rts		; 60

	lda $16.b,X		; B5 16
	and #$0080.w		; 29 80 00
	beq   6.b		; F0 06
	and $0016.w,Y		; 39 16 00
	bne -52.b		; D0 CC
	rts		; 60

	lda $30.b,X		; B5 30
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $0E.b		; 85 0E
	lda $28.b,X		; B5 28
	and #$0080.w		; 29 80 00
	bne   9.b		; D0 09
	lda $0E.b		; A5 0E
	clc		; 18
	adc #$0200.w		; 69 00 02
	sta $36.b,X		; 95 36
	rts		; 60

	lda $0E.b		; A5 0E
	clc		; 18
	adc #$FE00.w		; 69 00 FE
	sta $36.b,X		; 95 36
	rts		; 60

	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	bne  34.b		; D0 22
	lda $0000.w,Y		; B9 00 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	sta $00.b		; 85 00
	lda $0001.w,Y		; B9 01 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $00.b		; 65 00
	sta $02.b		; 85 02
	bra  32.b		; 80 20
	lda $0002.w,Y		; B9 02 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	sta $00.b		; 85 00
	lda $0003.w,Y		; B9 03 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $00.b		; 65 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $25.b,X		; 75 25
	sta $04.b		; 85 04
	lda $0005.w,Y		; B9 05 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $04.b		; 65 04
	sta $06.b		; 85 06
	lda $0006.w,Y		; B9 06 00
	sta $08.b		; 85 08
	rts		; 60

	ldy $20.b		; A4 20
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	bne  40.b		; D0 28
	lda $0000.w,Y		; B9 00 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	sta $10.b		; 85 10
	cmp $02.b		; C5 02
	bpl  98.b		; 10 62
	lda $0001.w,Y		; B9 01 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $10.b		; 65 10
	cmp $00.b		; C5 00
	bmi  85.b		; 30 55
	bra  38.b		; 80 26
	lda $0002.w,Y		; B9 02 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	sta $10.b		; 85 10
	cmp $02.b		; C5 02
	bpl  58.b		; 10 3A
	lda $0003.w,Y		; B9 03 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $10.b		; 65 10
	cmp $00.b		; C5 00
	bmi  45.b		; 30 2D
	lda $0004.w,Y		; B9 04 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $25.b,X		; 75 25
	sta $10.b		; 85 10
	cmp $06.b		; C5 06
	bpl  20.b		; 10 14
	lda $0005.w,Y		; B9 05 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $10.b		; 65 10
	cmp $04.b		; C5 04
	bmi   7.b		; 30 07
	lda $0006.w,Y		; B9 06 00
	sta $0A.b		; 85 0A
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

	ldy $20.b		; A4 20
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	bne  42.b		; D0 2A
	lda $0000.w,Y		; B9 00 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	sta $10.b		; 85 10
	cmp $02.b		; C5 02
	bpl  97.b		; 10 61
	lda $0001.w,Y		; B9 01 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $10.b		; 65 10
	sta $12.b		; 85 12
	cmp $00.b		; C5 00
	bmi  82.b		; 30 52
	bra  40.b		; 80 28
	lda $0002.w,Y		; B9 02 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	sta $10.b		; 85 10
	cmp $02.b		; C5 02
	bpl  55.b		; 10 37
	lda $0003.w,Y		; B9 03 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $10.b		; 65 10
	sta $12.b		; 85 12
	cmp $00.b		; C5 00
	bmi  40.b		; 30 28
	lda $0004.w,Y		; B9 04 00
	bit #$0080.w		; 89 80 00
	bne   5.b		; D0 05
	and #$00FF.w		; 29 FF 00
	bra   3.b		; 80 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $25.b,X		; 75 25
	sta $14.b		; 85 14
	cmp $06.b		; C5 06
	bpl  15.b		; 10 0F
	lda $0005.w,Y		; B9 05 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $14.b		; 65 14
	sta $16.b		; 85 16
	cmp $04.b		; C5 04
	bpl   2.b		; 10 02
	clc		; 18
	rts		; 60

	lda $0006.w,Y		; B9 06 00
	sta $0A.b		; 85 0A
	lda $00.b		; A5 00
	cmp $10.b		; C5 10
	bmi   2.b		; 30 02
	sta $10.b		; 85 10
	lda $02.b		; A5 02
	cmp $12.b		; C5 12
	bpl   2.b		; 10 02
	sta $12.b		; 85 12
	lda $04.b		; A5 04
	cmp $14.b		; C5 14
	bmi   2.b		; 30 02
	sta $14.b		; 85 14
	lda $06.b		; A5 06
	cmp $16.b		; C5 16
	bpl   2.b		; 10 02
	sta $16.b		; 85 16
	lda $10.b		; A5 10
	clc		; 18
	adc $12.b		; 65 12
	lsr A		; 4A
	bit #$4000.w		; 89 00 40
	beq   3.b		; F0 03
	ora #$8000.w		; 09 00 80
	sta $10.b		; 85 10
	lda $14.b		; A5 14
	clc		; 18
	adc $16.b		; 65 16
	lsr A		; 4A
	bit #$4000.w		; 89 00 40
	beq   3.b		; F0 03
	ora #$8000.w		; 09 00 80
	sta $12.b		; 85 12
	sec		; 38
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	and #$FF.b		; 29 FF
	beq  41.b		; F0 29
	sta $2F.b		; 85 2F
	jsl $80839D.l		; 22 9D 83 80
	bcs  33.b		; B0 21
	jsl $8083B9.l		; 22 B9 83 80
.ACCU 8
	sep #$20		; E2 20
	lda #$30.b		; A9 30
	sta $0000.w,Y		; 99 00 00
	lda $2F.b		; A5 2F
	sta $0017.w,Y		; 99 17 00
	lda $0D.b		; A5 0D
	sta $0009.w,Y		; 99 09 00
.ACCU 16
	rep #$20		; C2 20
	lda $10.b		; A5 10
	sta $0021.w,Y		; 99 21 00
	lda $12.b		; A5 12
	sta $0025.w,Y		; 99 25 00
	rtl		; 6B

.ACCU 16
	rep #$20		; C2 20
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
	bmi   3.b		; 30 03
	stz $0D.b		; 64 0D
	rts		; 60

	lda #$0001.w		; A9 01 00
	sta $0D.b		; 85 0D
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $70.b,X		; F5 70
	dec A		; 3A
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jmp $D055.w		; 4C 55 D0
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $73.b,X		; F5 73
	dec A		; 3A
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jmp $D055.w		; 4C 55 D0
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $74.b,X		; F5 74
	dec A		; 3A
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jmp $D055.w		; 4C 55 D0
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $70.b,X		; F5 70
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jmp $D055.w		; 4C 55 D0
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $73.b,X		; F5 73
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jmp $D055.w		; 4C 55 D0
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $74.b,X		; F5 74
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jmp $D055.w		; 4C 55 D0
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $73.b,X		; F5 73
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jsr $D055.w		; 20 55 D0
.ACCU 8
	sep #$20		; E2 20
	lda $00.b		; A5 00
	lsr A		; 4A
	lsr A		; 4A
	bne   2.b		; D0 02
	lda #$01.b		; A9 01
	sta $00.b		; 85 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $74.b,X		; F5 74
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jsr $D055.w		; 20 55 D0
.ACCU 8
	sep #$20		; E2 20
	lda $00.b		; A5 00
	lsr A		; 4A
	lsr A		; 4A
	bne   2.b		; D0 02
	lda #$01.b		; A9 01
	sta $00.b		; 85 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $74.b,X		; F5 74
	dec A		; 3A
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jsr $D055.w		; 20 55 D0
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	cmp $00.b		; C5 00
	bcs   2.b		; B0 02
	sta $00.b		; 85 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $74.b,X		; F5 74
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jsr $D055.w		; 20 55 D0
.ACCU 8
	sep #$20		; E2 20
	lda $0049.w,Y		; B9 49 00
	cmp $00.b		; C5 00
	bcs   2.b		; B0 02
	sta $00.b		; 85 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	bne   3.b		; D0 03
	jmp $CD6A.w		; 4C 6A CD
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	beq   4.b		; F0 04
	lda #$FE.b		; A9 FE
	sta $00.b		; 85 00
	lda $0048.w,Y		; B9 48 00
	clc		; 18
	adc $0071.w,Y		; 79 71 00
	sec		; 38
	sbc $74.b,X		; F5 74
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $45.b,X		; B5 45
	jsr $D055.w		; 20 55 D0
.ACCU 8
	sep #$20		; E2 20
	lda $00.b		; A5 00
	lsr A		; 4A
	lsr A		; 4A
	bne   2.b		; D0 02
	lda #$01.b		; A9 01
	sta $00.b		; 85 00
	lda $0049.w,Y		; B9 49 00
	cmp $00.b		; C5 00
	bcs   2.b		; B0 02
	sta $00.b		; 85 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	ldy $22.b		; A4 22
	stz $00.b		; 64 00
	rts		; 60

	sbc $EDCA.w		; ED CA ED
	dex		; CA
	sbc $EDCA.w		; ED CA ED
	dex		; CA
	jsr $EDCB.w		; 20 CB ED
	dex		; CA
	jsr $20CB.w		; 20 CB 20
	wai		; CB
	jsr $53CB.w		; 20 CB 53
	wai		; CB
	eor ($CB.b,S),Y		; 53 CB
	eor ($CB.b,S),Y		; 53 CB
	lda $CC.b		; A5 CC
	eor ($CB.b,S),Y		; 53 CB
	eor ($CB.b,S),Y		; 53 CB
	eor ($CB.b,S),Y		; 53 CB
	stx $CB.b		; 86 CB
	stx $CB.b		; 86 CB
	stx $CB.b		; 86 CB
	stx $CB.b		; 86 CB
	clv		; B8
	wai		; CB
	stx $CB.b		; 86 CB
	clv		; B8
	wai		; CB
	clv		; B8
	wai		; CB
	clv		; B8
	wai		; CB
	nop		; EA
	wai		; CB
	nop		; EA
	wai		; CB
	nop		; EA
	wai		; CB
	cpx $CC.b		; E4 CC
	nop		; EA
	wai		; CB
	nop		; EA
	wai		; CB
	nop		; EA
	wai		; CB
	trb $1CCC.w		; 1C CC 1C
	cpy $CC1C.w		; CC 1C CC
	trb $27CC.w		; 1C CC 27
	cpy $CC1C.w		; CC 1C CC
	and [$CC.b]		; 27 CC
	and [$CC.b]		; 27 CC
	and [$CC.b]		; 27 CC
	ror $CC.b		; 66 CC
	ror $CC.b		; 66 CC
	ror $CC.b		; 66 CC
	jsl $CC66CD.l		; 22 CD 66 CC
	ror $CC.b		; 66 CC
	ror $CC.b		; 66 CC
	asl $08.b		; 06 08
	ora ($00.b,X)		; 01 00
	asl $08.b		; 06 08
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	php		; 08
	cop $00.b		; 02 00
	asl $08.b		; 06 08
	cop $00.b		; 02 00
	asl $0208.w		; 0E 08 02
	brk $12.b		; 00 12
	php		; 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	asl $0200.w		; 0E 00 02
	ora ($14.b,X)		; 01 14
	php		; 08
	cop $00.b		; 02 00
	asl A		; 0A
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	tsb $0208.w		; 0C 08 02
	brk $08.b		; 00 08
	php		; 08
	cop $00.b		; 02 00
	bpl   8.b		; 10 08
	cop $00.b		; 02 00
	ora ($08.b)		; 12 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	bpl   0.b		; 10 00
	cop $01.b		; 02 01
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	tsb $0208.w		; 0C 08 02
	brk $1A.b		; 00 1A
	php		; 08
	cop $00.b		; 02 00
	cop $08.b		; 02 08
	ora $00.b,S		; 03 00
	cop $08.b		; 02 08
	ora $00.b,S		; 03 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $01.b		; 04 01
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	trb $08.b		; 14 08
	ora ($00.b,X)		; 01 00
	trb $08.b		; 14 08
	ora ($00.b,X)		; 01 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	trb $08.b		; 14 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	ora ($00.b,X)		; 01 00
	asl $08.b,X		; 16 08
	ora ($00.b,X)		; 01 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	clc		; 18
	php		; 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	asl $00.b,X		; 16 00
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	cop $00.b		; 02 00
	asl $08.b		; 06 08
	brk $01.b		; 00 01
	asl $08.b		; 06 08
	brk $01.b		; 00 01
	asl A		; 0A
	php		; 08
	brk $01.b		; 00 01
	asl $08.b		; 06 08
	brk $01.b		; 00 01
	asl $0008.w		; 0E 08 00
	ora ($12.b,X)		; 01 12
	php		; 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	asl $0000.w		; 0E 00 00
	ora ($14.b,X)		; 01 14
	php		; 08
	cop $00.b		; 02 00
	asl A		; 0A
	php		; 08
	cop $01.b		; 02 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	php		; 08
	php		; 08
	brk $01.b		; 00 01
	php		; 08
	php		; 08
	brk $01.b		; 00 01
	tsb $0008.w		; 0C 08 00
	ora ($08.b,X)		; 01 08
	php		; 08
	brk $01.b		; 00 01
	bpl   8.b		; 10 08
	brk $01.b		; 00 01
	ora ($08.b)		; 12 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	cop $00.b		; 02 00
	tsb $0208.w		; 0C 08 02
	ora ($1A.b,X)		; 01 1A
	php		; 08
	brk $01.b		; 00 01
	cop $08.b		; 02 08
	brk $01.b		; 00 01
	cop $08.b		; 02 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	tsb $08.b		; 04 08
	cop $00.b		; 02 00
	tsb $08.b		; 04 08
	cop $01.b		; 02 01
	tsb $08.b		; 04 08
	cop $01.b		; 02 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	trb $00.b		; 14 00
	brk $01.b		; 00 01
	trb $08.b		; 14 08
	cop $01.b		; 02 01
	trb $08.b		; 14 08
	cop $01.b		; 02 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	brk $01.b		; 00 01
	clc		; 18
	php		; 08
	brk $01.b		; 00 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
	asl $00.b,X		; 16 00
	brk $01.b		; 00 01
	asl $08.b,X		; 16 08
	cop $01.b		; 02 01
	asl $08.b,X		; 16 08
	cop $01.b		; 02 01
	inc A		; 1A
	php		; 08
	brk $01.b		; 00 01
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $02.b		; 85 02
	lda $00.b		; A5 00
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc #$0008.w		; 69 08 00
	and #$000F.w		; 29 0F 00
	sta $00.b		; 85 00
	lda $02.b		; A5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	clc		; 18
	adc #$D081.w		; 69 81 D0
	sta $00.b		; 85 00
	lda ($00.b)		; B2 00
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	rts		; 60

	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $03.b		; 04 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $05.b		; 06 05
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	ora [$07.b]		; 07 07
	asl $05.b		; 06 05
	tsb $03.b		; 04 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	phd		; 0B
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	ora #$0809.w		; 09 09 08
	ora [$05.b]		; 07 05
	tsb $03.b		; 04 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $0D.b		; 02 0D
	tsb $0C0C.w		; 0C 0C 0C
	phd		; 0B
	asl A		; 0A
	ora #$0608.w		; 09 08 06
	ora $04.b		; 05 04
	tsb $03.b		; 04 03
	ora $03.b,S		; 03 03
	ora $0F.b,S		; 03 0F
	asl $0E0E.w		; 0E 0E 0E
	ora $0B0C.w		; 0D 0C 0B
	ora #$0507.w		; 09 07 05
	ora $04.b		; 05 04
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora ($10.b),Y		; 11 10
	bpl  16.b		; 10 10
	ora $0A0C0E.l		; 0F 0E 0C 0A
	php		; 08
	asl $05.b		; 06 05
	ora $04.b		; 05 04
	tsb $04.b		; 04 04
	tsb $13.b		; 04 13
	ora ($12.b)		; 12 12
	ora ($11.b)		; 12 11
	ora $090C0E.l		; 0F 0E 0C 09
	ora [$06.b]		; 07 06
	ora $05.b		; 05 05
	ora $04.b		; 05 04
	tsb $15.b		; 04 15
	ora $14.b,X		; 15 14
	trb $13.b		; 14 13
	ora ($0F.b),Y		; 11 0F
	ora $080A.w		; 0D 0A 08
	ora [$06.b]		; 07 06
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora [$17.b],Y		; 17 17
	asl $15.b,X		; 16 15
	trb $13.b		; 14 13
	ora ($0E.b),Y		; 11 0E
	phd		; 0B
	php		; 08
	ora [$06.b]		; 07 06
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	ora $1819.w,Y		; 19 19 18
	ora [$16.b],Y		; 17 16
	trb $12.b		; 14 12
	bpl  12.b		; 10 0C
	ora #$0708.w		; 09 08 07
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	tas		; 1B
	tas		; 1B
	inc A		; 1A
	ora $1618.w,Y		; 19 18 16
	trb $11.b		; 14 11
	ora $090A.w		; 0D 0A 09
	php		; 08
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	ora $1C1D.w,X		; 1D 1D 1C
	tas		; 1B
	inc A		; 1A
	clc		; 18
	ora $12.b,X		; 15 12
	asl $090B.w		; 0E 0B 09
	php		; 08
	php		; 08
	ora [$07.b]		; 07 07
	ora [$20.b]		; 07 20
	ora $1C1D1E.l,X		; 1F 1E 1D 1C
	inc A		; 1A
	ora [$14.b],Y		; 17 14
	ora $090A0C.l		; 0F 0C 0A 09
	php		; 08
	php		; 08
	ora [$07.b]		; 07 07
	jsl $1F2021.l		; 22 21 20 1F
	asl $181B.w,X		; 1E 1B 18
	ora $10.b,X		; 15 10
	tsb $090B.w		; 0C 0B 09
	ora #$0808.w		; 09 08 08
	php		; 08
	bit $23.b		; 24 23
	jsl $1D1F21.l		; 22 21 1F 1D
	inc A		; 1A
	asl $11.b,X		; 16 11
	ora $0A0B.w		; 0D 0B 0A
	ora #$0809.w		; 09 09 08
	php		; 08
	rol $25.b		; 26 25
	bit $23.b		; 24 23
	and ($1F.b,X)		; 21 1F
	tas		; 1B
	ora [$12.b],Y		; 17 12
	asl $0B0C.w		; 0E 0C 0B
	asl A		; 0A
	ora #$0909.w		; 09 09 09
	plp		; 28
	and [$26.b]		; 27 26
	and $23.b		; 25 23
	jsr $191D.w		; 20 1D 19
	ora ($0F.b,S),Y		; 13 0F
	ora $0A0B.w		; 0D 0B 0A
	asl A		; 0A
	ora #$2A09.w		; 09 09 2A
	and #$2728.w		; 29 28 27
	and $22.b		; 25 22
	asl $141A.w,X		; 1E 1A 14
	ora $0B0C0D.l		; 0F 0D 0C 0B
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	bit $2A2B.w		; 2C 2B 2A
	and #$2427.w		; 29 27 24
	jsr $151B.w		; 20 1B 15
	bpl  14.b		; 10 0E
	tsb $0B0B.w		; 0C 0B 0B
	asl A		; 0A
	asl A		; 0A
	rol $2C2D.w		; 2E 2D 2C
	pld		; 2B
	and #$2125.w		; 29 25 21
	ora $1116.w,X		; 1D 16 11
	ora $0B0C0D.l		; 0F 0D 0C 0B
	phd		; 0B
	phd		; 0B
	bmi  47.b		; 30 2F
	rol $2B2D.w		; 2E 2D 2B
	and [$23.b]		; 27 23
	asl $1217.w,X		; 1E 17 12
	ora $0C0C0E.l		; 0F 0E 0C 0C
	phd		; 0B
	phd		; 0B
	and ($31.b)		; 32 31
	bmi  47.b		; 30 2F
	bit $2429.w		; 2C 29 24
	ora $101218.l,X		; 1F 18 12 10
	asl $0C0D.w		; 0E 0D 0C
	tsb $350C.w		; 0C 0C 35
	and ($32.b,S),Y		; 33 32
	and ($2E.b),Y		; 31 2E
	pld		; 2B
	rol $21.b		; 26 21
	ora $1113.w,Y		; 19 13 11
	ora $0C0D0E.l		; 0F 0E 0D 0C
	tsb $3537.w		; 0C 37 35
	bit $33.b,X		; 34 33
	bmi  44.b		; 30 2C
	and [$22.b]		; 27 22
	inc A		; 1A
	trb $11.b		; 14 11
	ora $0D0D0E.l		; 0F 0E 0D 0D
	tsb $3739.w		; 0C 39 37
	rol $35.b,X		; 36 35
	and ($2E.b)		; 32 2E
	and #$1B23.w		; 29 23 1B
	ora $12.b,X		; 15 12
	bpl  15.b		; 10 0F
	asl $0D0D.w		; 0E 0D 0D
	tsa		; 3B
	and $3738.w,Y		; 39 38 37
	bit $30.b,X		; 34 30
	rol A		; 2A
	bit $1C.b		; 24 1C
	asl $13.b,X		; 16 13
	ora ($0F.b),Y		; 11 0F
	asl $0D0E.w		; 0E 0E 0D
	and $3A3B.w,X		; 3D 3B 3A
	and $3136.w,Y		; 39 36 31
	bit $1D26.w		; 2C 26 1D
	asl $13.b,X		; 16 13
	ora ($10.b),Y		; 11 10
	ora $3F0E0E.l		; 0F 0E 0E 3F
	and $3B3C.w,X		; 3D 3C 3B
	sec		; 38
	and ($2D.b,S),Y		; 33 2D
	and [$1E.b]		; 27 1E
	ora [$14.b],Y		; 17 14
	ora ($10.b)		; 12 10
	ora $410E0F.l		; 0F 0F 0E 41
	rti		; 40

	rol $393C.w,X		; 3E 3C 39
	and $2F.b,X		; 35 2F
	plp		; 28
	ora $121518.l,X		; 1F 18 15 12
	ora ($10.b),Y		; 11 10
	ora $42430F.l		; 0F 0F 43 42
	rti		; 40

	rol $363B.w,X		; 3E 3B 36
	bmi  42.b		; 30 2A
	jsr $1519.w		; 20 19 15
	ora ($11.b,S),Y		; 13 11
	bpl  16.b		; 10 10
	ora $424445.l		; 0F 45 44 42
	rti		; 40

	and $3238.w,X		; 3D 38 32
	pld		; 2B
	and ($19.b,X)		; 21 19
	asl $13.b,X		; 16 13
	ora ($11.b)		; 12 11
	bpl  16.b		; 10 10
	eor [$46.b]		; 47 46
	mvp $3F,$42		; 44 42 3F
	dec A		; 3A
	and ($2C.b,S),Y		; 33 2C
	jsl $14171A.l		; 22 1A 17 14
	ora ($11.b)		; 12 11
	ora ($10.b),Y		; 11 10
	pha		; 48
	pha		; 48
	lsr $44.b		; 46 44
	eor ($3C.b,X)		; 41 3C
	and $2E.b,X		; 35 2E
	and $1B.b,S		; 23 1B
	ora [$15.b],Y		; 17 15
	ora ($12.b,S),Y		; 13 12
	ora ($11.b),Y		; 11 11
	pha		; 48
	pha		; 48
	pha		; 48
	lsr $43.b		; 46 43
	and $2F36.w,X		; 3D 36 2F
	bit $1C.b		; 24 1C
	clc		; 18
	ora $13.b,X		; 15 13
	ora ($12.b)		; 12 12
	ora ($48.b),Y		; 11 48
	pha		; 48
	pha		; 48
	pha		; 48
	mvp $38,$3F		; 44 3F 38
	bmi  37.b		; 30 25
	trb $1619.w		; 1C 19 16
	trb $13.b		; 14 13
	ora ($12.b)		; 12 12
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	lsr $41.b		; 46 41
	and $2631.w,Y		; 39 31 26
	ora $1619.w,X		; 1D 19 16
	ora $13.b,X		; 15 13
	ora ($12.b,S),Y		; 13 12
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	.db $42, $3B		; 42 3B
	and ($27.b,S),Y		; 33 27
	asl $171A.w,X		; 1E 1A 17
	ora $14.b,X		; 15 14
	ora ($13.b,S),Y		; 13 13
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	mvp $34,$3C		; 44 3C 34
	plp		; 28
	ora $16181B.l,X		; 1F 1B 18 16
	trb $14.b		; 14 14
	ora ($48.b,S),Y		; 13 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	lsr $3E.b		; 46 3E
	and $29.b,X		; 35 29
	jsr $181B.w		; 20 1B 18
	asl $15.b,X		; 16 15
	trb $14.b		; 14 14
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	eor [$3F.b]		; 47 3F
	and [$2A.b],Y		; 37 2A
	jsr $191C.w		; 20 1C 19
	ora [$15.b],Y		; 17 15
	ora $14.b,X		; 15 14
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	eor ($38.b,X)		; 41 38
	pld		; 2B
	and ($1D.b,X)		; 21 1D
	ora $1617.w,Y		; 19 17 16
	ora $15.b,X		; 15 15
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	.db $42, $39		; 42 39
	bit $1D22.w		; 2C 22 1D
	inc A		; 1A
	clc		; 18
	asl $16.b,X		; 16 16
	ora $48.b,X		; 15 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	mvp $2D,$3B		; 44 3B 2D
	and $1E.b,S		; 23 1E
	tas		; 1B
	clc		; 18
	ora [$16.b],Y		; 17 16
	asl $48.b,X		; 16 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	eor $3C.b		; 45 3C
	rol $1F23.w		; 2E 23 1F
	tas		; 1B
	ora $1717.w,Y		; 19 17 17
	asl $48.b,X		; 16 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	eor [$3D.b]		; 47 3D
	and $1C1F24.l		; 2F 24 1F 1C
	ora $1718.w,Y		; 19 18 17
	ora [$48.b],Y		; 17 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	rol $2530.w,X		; 3E 30 25
	jsr $1A1C.w		; 20 1C 1A
	clc		; 18
	clc		; 18
	ora [$48.b],Y		; 17 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	rti		; 40

	and ($26.b),Y		; 31 26
	and ($1D.b,X)		; 21 1D
	inc A		; 1A
	ora $1818.w,Y		; 19 18 18
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	eor ($32.b,X)		; 41 32
	and [$22.b]		; 27 22
	asl $1A1B.w,X		; 1E 1B 1A
	ora $4818.w,Y		; 19 18 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	.db $42, $33		; 42 33
	and [$22.b]		; 27 22
	asl $1A1C.w,X		; 1E 1C 1A
	ora $4818.w,Y		; 19 18 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	mvp $28,$34		; 44 34 28
	and $1F.b,S		; 23 1F
	trb $191B.w		; 1C 1B 19
	ora $4848.w,Y		; 19 48 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	eor $35.b		; 45 35
	and #$1F24.w		; 29 24 1F
	ora $1A1B.w,X		; 1D 1B 1A
	ora $4848.w,Y		; 19 48 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	lsr $36.b		; 46 36
	rol A		; 2A
	bit $20.b		; 24 20
	ora $1A1C.w,X		; 1D 1C 1A
	inc A		; 1A
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	and [$2A.b],Y		; 37 2A
	and $20.b		; 25 20
	asl $1B1C.w,X		; 1E 1C 1B
	inc A		; 1A
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	sec		; 38
	pld		; 2B
	rol $21.b		; 26 21
	asl $1B1D.w,X		; 1E 1D 1B
	tas		; 1B
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	and $262C.w,Y		; 39 2C 26
	jsl $1C1D1F.l		; 22 1F 1D 1C
	tas		; 1B
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	dec A		; 3A
	and $2227.w		; 2D 27 22
	ora $1C1C1E.l,X		; 1F 1E 1C 1C
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	tsa		; 3B
	and $2328.w		; 2D 28 23
	jsr $1D1E.w		; 20 1E 1D
	trb $4848.w		; 1C 48 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	bit $282E.w,X		; 3C 2E 28
	and $20.b,S		; 23 20
	ora $481D1D.l,X		; 1F 1D 1D 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	and $292F.w,X		; 3D 2F 29
	bit $21.b		; 24 21
	ora $481D1E.l,X		; 1F 1E 1D 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	rol $2A30.w,X		; 3E 30 2A
	and $21.b		; 25 21
	jsr $1E1E.w		; 20 1E 1E
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
	and $252A31.l,X		; 3F 31 2A 25
	jsl $1E1F20.l		; 22 20 1F 1E
.BASE $80
L80D481:
.BASE $00
L00D481:
	php
	phb
	phd
.ACCU 16
.INDEX 16
	rep #$30
	pha
	phx
	phy
	lda #$0000.w
	tad
	sei		; Disable interrupts
.ACCU 8
.INDEX 8
	sep #$30
	phk
	plb
	lda TIMEUP.w		; IRQ Flag
	bpl L00D516.b
	lda $40.b
	sta INIDSP.w		; Screen Display
	ldx $6E.b
	jmp ($D4A1.w,X)
	plb
	pei ($BA.b)
	pei ($C9.b)
	pei ($E1.b)
	pei ($E4.b)
	pei ($A9.b)
	trb $8D.b
	ora #$42.b
	lda #$02.b
	sta $6E.b
	lda $72.b
	sta $40.b
	bra L00D516.b
	lda #$D4.b		; A9 D4
	sta VTIMEL.w		; 8D 09 42
	lda $70.b		; A5 70
	sta $6E.b		; 85 6E
	lda #$80.b		; A9 80
	sta $40.b		; 85 40
	bra L00D516.b		; 80 4D
	stz HDMAEN.w		; 9C 0C 42
	jsr L008448.w		; 20 48 84
	jsl $809EF5.l		; 22 F5 9E 80
	jsr L008C4D.w		; 20 4D 8C
	jsr $D56F.w		; 20 6F D5
	jsr $B3D7.w		; 20 D7 B3
	jsr L008353.w		; 20 53 83
	bra   6.b		; 80 06
	jmp $99CF.w		; 4C CF 99
	jmp $9985.w		; 4C 85 99
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$13.b		; A9 13
	sta VTIMEL.w		; 8D 09 42
	stz $6E.b		; 64 6E
	stz $40.b		; 64 40
	lda $1078.w		; AD 78 10
	sta APUIO0.w		; 8D 40 21
	stz $1078.w		; 9C 78 10
	lda $10F8.w		; AD F8 10
	beq   5.b		; F0 05
	ora #$80.b		; 09 80
	stz $10F8.w		; 9C F8 10
	sta APUIO1.w		; 8D 41 21
	lda $78.b		; A5 78
	sta APUIO2.w		; 8D 42 21
	stz $78.b		; 64 78
	lda $6F.b		; A5 6F
	sta HDMAEN.w		; 8D 0C 42
	inc $6C.b		; E6 6C
L00D516:
.ACCU 16
.INDEX 16
	rep #$30
	ply
	plx
	pla
	pld
	plb
	plp
	rti

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	sta $00.b		; 85 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sec		; 38
	sbc $00.b		; E5 00
	tax		; AA
	lda $D553.w,X		; BD 53 D5
	tay		; A8
	lda $D554.w,X		; BD 54 D5
	sta $4300.w,Y		; 99 00 43
	lda $D555.w,X		; BD 55 D5
	sta $4301.w,Y		; 99 01 43
	lda $D556.w,X		; BD 56 D5
	sta $4302.w,Y		; 99 02 43
	lda $D557.w,X		; BD 57 D5
	sta $4303.w,Y		; 99 03 43
	lda $D558.w,X		; BD 58 D5
	sta $4304.w,Y		; 99 04 43
	lda $D559.w,X		; BD 59 D5
	sta $4307.w,Y		; 99 07 43
	rts		; 60

	bvs  66.b		; 70 42
	ora $0A30.w		; 0D 30 0A
	brk $00.b		; 00 00
	rts		; 60

	.db $42, $0F		; 42 0F
	rti		; 40

	asl A		; 0A
	brk $00.b		; 00 00
	bvc  66.b		; 50 42
	asl $0A50.w		; 0E 50 0A
	brk $00.b		; 00 00
	rti		; 40

	.db $42, $10		; 42 10
	rts		; 60

	asl A		; 0A
	brk $00.b		; 00 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0806.w		; AD 06 08
	beq  32.b		; F0 20
	sta VMADDL.w		; 8D 16 21
	lda $0808.w		; AD 08 08
	sta VMDATAL.w		; 8D 18 21
	lda $0806.w		; AD 06 08
	clc		; 18
	adc #$0020.w		; 69 20 00
	sta VMADDL.w		; 8D 16 21
	lda $0808.w		; AD 08 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta VMDATAL.w		; 8D 18 21
	stz $0806.w		; 9C 06 08
	lda $080A.w		; AD 0A 08
	beq  32.b		; F0 20
	sta VMADDL.w		; 8D 16 21
	lda $080C.w		; AD 0C 08
	sta VMDATAL.w		; 8D 18 21
	lda $080A.w		; AD 0A 08
	clc		; 18
	adc #$0020.w		; 69 20 00
	sta VMADDL.w		; 8D 16 21
	lda $080C.w		; AD 0C 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta VMDATAL.w		; 8D 18 21
	stz $080A.w		; 9C 0A 08
	lda $080E.w		; AD 0E 08
	beq  39.b		; F0 27
	lda #$10AF.w		; A9 AF 10
	sta VMADDL.w		; 8D 16 21
	lda $080E.w		; AD 0E 08
	sta VMDATAL.w		; 8D 18 21
	lda $0812.w		; AD 12 08
	sta VMDATAL.w		; 8D 18 21
	lda #$10CF.w		; A9 CF 10
	sta VMADDL.w		; 8D 16 21
	lda $0810.w		; AD 10 08
	sta VMDATAL.w		; 8D 18 21
	lda $0814.w		; AD 14 08
	sta VMDATAL.w		; 8D 18 21
	stz $080E.w		; 9C 0E 08
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda $B1.b		; A5 B1
	and #$01.b		; 29 01
	beq   3.b		; F0 03
	jmp $D67C.w		; 4C 7C D6
	lda $1049.w		; AD 49 10
	cmp $0800.w		; CD 00 08
	bcs  60.b		; B0 3C
	dec $0800.w		; CE 00 08
.ACCU 16
	rep #$20		; C2 20
	stz $02.b		; 64 02
	lda $0800.w		; AD 00 08
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	cmp #$0060.w		; C9 60 00
	bcc  13.b		; 90 0D
	lda #$0400.w		; A9 00 04
	sta $02.b		; 85 02
	lda $00.b		; A5 00
	sec		; 38
	sbc #$0060.w		; E9 60 00
	sta $00.b		; 85 00
	and #$0007.w		; 29 07 00
	inc A		; 1A
	ora #$2000.w		; 09 00 20
	ora $02.b		; 05 02
	sta $0808.w		; 8D 08 08
	lda $00.b		; A5 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	eor #$FFFF.w		; 49 FF FF
	clc		; 18
	adc #$106E.w		; 69 6E 10
	sta $0806.w		; 8D 06 08
.ACCU 8
	sep #$20		; E2 20
	lda $10C9.w		; AD C9 10
	cmp $0801.w		; CD 01 08
	bcs  57.b		; B0 39
	dec $0801.w		; CE 01 08
.ACCU 16
	rep #$20		; C2 20
	stz $02.b		; 64 02
	lda $0801.w		; AD 01 08
	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	cmp #$0060.w		; C9 60 00
	bcc  13.b		; 90 0D
	lda #$0400.w		; A9 00 04
	sta $02.b		; 85 02
	lda $00.b		; A5 00
	sec		; 38
	sbc #$0060.w		; E9 60 00
	sta $00.b		; 85 00
	and #$0007.w		; 29 07 00
	inc A		; 1A
	ora #$6000.w		; 09 00 60
	ora $02.b		; 05 02
	sta $080C.w		; 8D 0C 08
	lda $00.b		; A5 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	clc		; 18
	adc #$1072.w		; 69 72 10
	sta $080A.w		; 8D 0A 08
.ACCU 8
	sep #$20		; E2 20
	lda $1E04.w		; AD 04 1E
	bne  82.b		; D0 52
	lda $1E3D.w		; AD 3D 1E
	bne  77.b		; D0 4D
	lda $1F5C.w		; AD 5C 1F
	bne  72.b		; D0 48
	dec $0802.w		; CE 02 08
	bne  67.b		; D0 43
	lda #$3C.b		; A9 3C
	sta $0802.w		; 8D 02 08
	dec $0803.w		; CE 03 08
	bpl  15.b		; 10 0F
	lda #$09.b		; A9 09
	sta $0803.w		; 8D 03 08
	dec $0804.w		; CE 04 08
	bpl   5.b		; 10 05
	inc $1F5C.w		; EE 5C 1F
	bra  42.b		; 80 2A
.ACCU 16
	rep #$20		; C2 20
	lda $0804.w		; AD 04 08
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc #$2C50.w		; 69 50 2C
	sta $080E.w		; 8D 0E 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta $0810.w		; 8D 10 08
	lda $0803.w		; AD 03 08
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc #$2C50.w		; 69 50 2C
	sta $0812.w		; 8D 12 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta $0814.w		; 8D 14 08
.ACCU 8
	sep #$20		; E2 20
	lda $1F5C.w		; AD 5C 1F
	bmi  29.b		; 30 1D
	lda $0804.w		; AD 04 08
	bne  24.b		; D0 18
.ACCU 16
	rep #$20		; C2 20
	lda $B1.b		; A5 B1
	and #$0004.w		; 29 04 00
	asl A		; 0A
	clc		; 18
	adc #$E146.w		; 69 46 E1
	tax		; AA
	ldy #$0520.w		; A0 20 05
	lda #$0007.w		; A9 07 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
.ACCU 8
	sep #$20		; E2 20
	lda $1E04.w		; AD 04 1E
	bne  29.b		; D0 1D
	lda $1E0A.w		; AD 0A 1E
	clc		; 18
	adc #$01.b		; 69 01
	sta $1E0A.w		; 8D 0A 1E
	cmp #$3C.b		; C9 3C
	bmi  16.b		; 30 10
	stz $1E0A.w		; 9C 0A 1E
.ACCU 16
	rep #$20		; C2 20
	lda $1E0B.w		; AD 0B 1E
	cmp #$03E7.w		; C9 E7 03
	bpl   3.b		; 10 03
	inc $1E0B.w		; EE 0B 1E
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1000.w		; AD 00 10
	asl A		; 0A
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	ldy #$0C.b		; A0 0C
	lda #$A2.b		; A9 A2
	sta VMADDL.w		; 8D 16 21
	lda #$10.b		; A9 10
	sta VMADDH.w		; 8D 17 21
	lda $D8AE.w,X		; BD AE D8
	inx		; E8
	sta VMDATAL.w		; 8D 18 21
	lda #$2C.b		; A9 2C
	sta VMDATAH.w		; 8D 19 21
	dey		; 88
	bne -15.b		; D0 F1
	lda $1080.w		; AD 80 10
	asl A		; 0A
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tax		; AA
	ldy #$0C.b		; A0 0C
	lda #$B2.b		; A9 B2
	sta VMADDL.w		; 8D 16 21
	lda #$10.b		; A9 10
	sta VMADDH.w		; 8D 17 21
	lda $D926.w,X		; BD 26 D9
	inx		; E8
	sta VMDATAL.w		; 8D 18 21
	lda #$2C.b		; A9 2C
	sta VMDATAH.w		; 8D 19 21
	dey		; 88
	bne -15.b		; D0 F1
	lda #$3C.b		; A9 3C
	sta $0802.w		; 8D 02 08
	jsr $D77A.w		; 20 7A D7
	jsr $D847.w		; 20 47 D8
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $104A.w		; AD 4A 10
	sta $0800.w		; 8D 00 08
	lda $10CA.w		; AD CA 10
	sta $0801.w		; 8D 01 08
.ACCU 16
	rep #$20		; C2 20
	lda #$1062.w		; A9 62 10
	sta VMADDL.w		; 8D 16 21
	ldy #$0C.b		; A0 0C
	lda #$2401.w		; A9 01 24
	sta VMDATAL.w		; 8D 18 21
	dey		; 88
	bne  -9.b		; D0 F7
	lda #$1082.w		; A9 82 10
	sta VMADDL.w		; 8D 16 21
	ldy #$0C.b		; A0 0C
	lda #$2411.w		; A9 11 24
	sta VMDATAL.w		; 8D 18 21
	dey		; 88
	bne  -9.b		; D0 F7
	lda #$1072.w		; A9 72 10
	sta VMADDL.w		; 8D 16 21
	ldy #$0C.b		; A0 0C
	lda #$6401.w		; A9 01 64
	sta VMDATAL.w		; 8D 18 21
	dey		; 88
	bne  -9.b		; D0 F7
	lda #$1092.w		; A9 92 10
	sta VMADDL.w		; 8D 16 21
	ldy #$0C.b		; A0 0C
	lda #$6411.w		; A9 11 64
	sta VMDATAL.w		; 8D 18 21
	dey		; 88
	bne  -9.b		; D0 F7
	lda $104A.w		; AD 4A 10
	and #$00FF.w		; 29 FF 00
	sec		; 38
	sbc #$0060.w		; E9 60 00
	beq  54.b		; F0 36
	and #$00FF.w		; 29 FF 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $00.b		; 85 00
	sta $02.b		; 85 02
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc #$106E.w		; 69 6E 10
	sta VMADDL.w		; 8D 16 21
	lda #$2409.w		; A9 09 24
	sta VMDATAL.w		; 8D 18 21
	dec $00.b		; C6 00
	bne -10.b		; D0 F6
	lda $02.b		; A5 02
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc #$108E.w		; 69 8E 10
	sta VMADDL.w		; 8D 16 21
	lda #$2419.w		; A9 19 24
	sta VMDATAL.w		; 8D 18 21
	dec $02.b		; C6 02
	bne -10.b		; D0 F6
	lda $10CA.w		; AD CA 10
	and #$00FF.w		; 29 FF 00
	sec		; 38
	sbc #$0060.w		; E9 60 00
	beq  42.b		; F0 2A
	and #$00FF.w		; 29 FF 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $00.b		; 85 00
	sta $02.b		; 85 02
	lda #$1072.w		; A9 72 10
	sta VMADDL.w		; 8D 16 21
	lda #$6409.w		; A9 09 64
	sta VMDATAL.w		; 8D 18 21
	dec $00.b		; C6 00
	bne -10.b		; D0 F6
	lda #$1092.w		; A9 92 10
	sta VMADDL.w		; 8D 16 21
	lda #$6419.w		; A9 19 64
	sta VMDATAL.w		; 8D 18 21
	dec $02.b		; C6 02
	bne -10.b		; D0 F6
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $1F5C.w		; AD 5C 1F
	bmi  57.b		; 30 39
	stz $1F5C.w		; 9C 5C 1F
	lda #$3C.b		; A9 3C
	sta $0802.w		; 8D 02 08
	lda #$00.b		; A9 00
	sta $0803.w		; 8D 03 08
	lda #$06.b		; A9 06
	sta $0804.w		; 8D 04 08
.ACCU 16
	rep #$20		; C2 20
	lda #$10AF.w		; A9 AF 10
	sta VMADDL.w		; 8D 16 21
	lda #$2C56.w		; A9 56 2C
	sta VMDATAL.w		; 8D 18 21
	lda #$2C50.w		; A9 50 2C
	sta VMDATAL.w		; 8D 18 21
	lda #$10CF.w		; A9 CF 10
	sta VMADDL.w		; 8D 16 21
	lda #$2C66.w		; A9 66 2C
	sta VMDATAL.w		; 8D 18 21
	lda #$2C60.w		; A9 60 2C
	sta VMDATAL.w		; 8D 18 21
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda #$10AF.w		; A9 AF 10
	sta VMADDL.w		; 8D 16 21
	lda #$2C5B.w		; A9 5B 2C
	sta VMDATAL.w		; 8D 18 21
	lda #$2C5C.w		; A9 5C 2C
	sta VMDATAL.w		; 8D 18 21
	lda #$10CF.w		; A9 CF 10
	sta VMADDL.w		; 8D 16 21
	lda #$2C6B.w		; A9 6B 2C
	sta VMDATAL.w		; 8D 18 21
	lda #$2C6C.w		; A9 6C 2C
	sta VMDATAL.w		; 8D 18 21
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($7E7E.w,X)		; 7C 7E 7E
	adc $0000.w,X		; 7D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($8174.w,X)		; 7C 74 81
	adc ($84.b)		; 72 84
	sta ($88.b,X)		; 81 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	bvs -127.b		; 70 81
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $7F84.w,Y		; 79 84 7F
	sei		; 78
	sta $74.b,S		; 83 74
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $74.b		; 85 74
	adc $8284.w,X		; 7D 84 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	sta ($70.b,X)		; 81 70
	adc $8284.w,X		; 7D 84 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $7F74.w,X		; 7D 74 7F
	sta $84.b,S		; 83 84
	adc $0074.w,X		; 7D 74 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $83847B.l,X		; 7F 7B 84 83
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	adc [$78.b],Y		; 77 78
	adc ($78.b),Y		; 71 78
	jmp ($7E7E.w,X)		; 7C 7E 7E
	adc $0000.w,X		; 7D 00 00
	brk $00.b		; 00 00
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
	ror $7D7E.w,X		; 7E 7E 7D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	stz $81.b,X		; 74 81
	adc ($84.b)		; 72 84
	sta ($88.b,X)		; 81 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($8170.w,X)		; 7C 70 81
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	sty $7F.b		; 84 7F
	sei		; 78
	sta $74.b,S		; 83 74
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $74.b		; 85 74
	adc $8284.w,X		; 7D 84 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $81.b		; 84 81
	bvs 125.b		; 70 7D
	sty $82.b		; 84 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	stz $7F.b,X		; 74 7F
	sta $84.b,S		; 83 84
	adc $0074.w,X		; 7D 74 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $83847B.l,X		; 7F 7B 84 83
	ror $0000.w,X		; 7E 00 00
	brk $72.b		; 00 72
	adc [$78.b],Y		; 77 78
	adc ($78.b),Y		; 71 78
	jmp ($7E7E.w,X)		; 7C 7E 7E
	adc $30C2.w,X		; 7D C2 30
	lda $1E05.w		; AD 05 1E
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jmp ($D9AB.w,X)		; 7C AB D9
	cmp #$F7D9.w		; C9 D9 F7
	cmp $DA1C.w,Y		; D9 1C DA
	sbc [$D9.b],Y		; F7 D9
	bvs -38.b		; 70 DA
	sbc [$D9.b],Y		; F7 D9
	stx $DA.b		; 86 DA
	sbc [$D9.b],Y		; F7 D9
	cpx #$DA.b		; E0 DA
	sbc [$D9.b],Y		; F7 D9
	inc $DA.b,X		; F6 DA
	sbc [$D9.b],Y		; F7 D9
	tsb $F7DB.w		; 0C DB F7
	cmp $DB22.w,Y		; D9 22 DB
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E0FC.w		; A9 FC E0
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
.ACCU 8
	sep #$20		; E2 20
	lda $8D.b		; A5 8D
	cmp #$03.b		; C9 03
	beq  14.b		; F0 0E
	lda $1E01.w		; AD 01 1E
	bne   9.b		; D0 09
	lda #$14.b		; A9 14
	sta $1E06.w		; 8D 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

	lda #$1E.b		; A9 1E
	sta $1E06.w		; 8D 06 1E
	lda #$05.b		; A9 05
	sta $1E05.w		; 8D 05 1E
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	dec $1E06.w		; CE 06 1E
	bne   3.b		; D0 03
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $5C.b		; A5 5C
	ora $5E.b		; 05 5E
	and #$1000.w		; 29 00 10
	bne   8.b		; D0 08
.ACCU 8
	sep #$20		; E2 20
	dec $1E06.w		; CE 06 1E
	beq   1.b		; F0 01
	rts		; 60

	stz $1E06.w		; 9C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$0820.w		; A9 20 08
	sta $74.b		; 85 74
	ldy #$00.b		; A0 00
	sty $76.b		; 84 76
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$E966.w		; A2 66 E9
	ldy #$0820.w		; A0 20 08
	lda #$0025.w		; A9 25 00
	phb		; 8B
	mvn $82,$00		; 54 00 82
	plb		; AB
	lda $1E00.w		; AD 00 1E
	and #$00F0.w		; 29 F0 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	clc		; 18
	adc #$3420.w		; 69 20 34
	sta $0832.w		; 8D 32 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta $0842.w		; 8D 42 08
	lda $1E00.w		; AD 00 1E
	and #$000F.w		; 29 0F 00
	clc		; 18
	adc #$3420.w		; 69 20 34
	sta $0834.w		; 8D 34 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta $0844.w		; 8D 44 08
.ACCU 8
	sep #$20		; E2 20
	lda #$3C.b		; A9 3C
	sta $1E06.w		; 8D 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E064.w		; A9 64 E0
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$14.b		; A0 14
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	cmp #$0003.w		; C9 03 00
	beq  27.b		; F0 1B
	lda $1E01.w		; AD 01 1E
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $82E000.l,X		; BF 00 E0 82
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$1E.b		; A0 1E
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

	lda $1E01.w		; AD 01 1E
	and #$00FF.w		; 29 FF 00
	bne  18.b		; D0 12
	lda #$E902.w		; A9 02 E9
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$64.b		; A0 64
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

	ldy #$01.b		; A0 01
	sty $1E01.w		; 8C 01 1E
	lda #$E930.w		; A9 30 E9
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$1E.b		; A0 1E
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E8C4.w		; A9 C4 E8
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$2D.b		; A0 2D
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E0FC.w		; A9 FC E0
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$0F.b		; A0 0F
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E8DE.w		; A9 DE E8
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$2D.b		; A0 2D
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E0FC.w		; A9 FC E0
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$FF.b		; A0 FF
	sty $1E05.w		; 8C 05 1E
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1E3D.w		; AD 3D 1E
	beq  70.b		; F0 46
	lda #$01.b		; A9 01
	sta $71.b		; 85 71
	sta $1E04.w		; 8D 04 1E
	jsl $8083D0.l		; 22 D0 83 80
	bcc   3.b		; 90 03
	jmp $DBC7.w		; 4C C7 DB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1001.w		; AD 01 10
	beq  11.b		; F0 0B
	cmp #$21.b		; C9 21
	beq   7.b		; F0 07
	cmp #$1F.b		; C9 1F
	beq   3.b		; F0 03
	jmp $DBC7.w		; 4C C7 DB
	lda $1081.w		; AD 81 10
	beq   8.b		; F0 08
	cmp #$21.b		; C9 21
	beq   4.b		; F0 04
	cmp #$1F.b		; C9 1F
	bne  92.b		; D0 5C
	lda $1049.w		; AD 49 10
	cmp $0800.w		; CD 00 08
	bne  84.b		; D0 54
	lda $10C9.w		; AD C9 10
	cmp $0801.w		; CD 01 08
	bne  76.b		; D0 4C
	lda #$FF.b		; A9 FF
	sta $1E05.w		; 8D 05 1E
	bra  69.b		; 80 45
	lda $1F5C.w		; AD 5C 1F
	and #$01.b		; 29 01
	beq  62.b		; F0 3E
	lda #$01.b		; A9 01
	sta $1E04.w		; 8D 04 1E
	jsl $8083D0.l		; 22 D0 83 80
	bcs  51.b		; B0 33
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1001.w		; AD 01 10
	beq   8.b		; F0 08
	cmp #$21.b		; C9 21
	beq   4.b		; F0 04
	cmp #$1F.b		; C9 1F
	bne  36.b		; D0 24
	lda $1081.w		; AD 81 10
	beq   8.b		; F0 08
	cmp #$21.b		; C9 21
	beq   4.b		; F0 04
	cmp #$1F.b		; C9 1F
	bne  23.b		; D0 17
	lda $1049.w		; AD 49 10
	cmp $0800.w		; CD 00 08
	bne  15.b		; D0 0F
	lda $10C9.w		; AD C9 10
	cmp $0801.w		; CD 01 08
	bne   7.b		; D0 07
	lda #$FE.b		; A9 FE
	sta $1E05.w		; 8D 05 1E
	bra   0.b		; 80 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1E05.w		; AD 05 1E
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jmp ($DBD5.w,X)		; 7C D5 DB
	sbc ($DB.b,S),Y		; F3 DB
	cop $DA.b		; 02 DA
	asl $81DC.w		; 0E DC 81
	jmp.w [$DA02]		; DC 02 DA
	and $02DD.w,Y		; 39 DD 02
	phx		; DA
	stz $DD.b,X		; 74 DD
	cop $DA.b		; 02 DA
	txa		; 8A
	cmp $DA02.w,X		; DD 02 DA
	ldx $DD.b,Y		; B6 DD
	cmp [$DD.b]		; C7 DD
	cop $DA.b		; 02 DA
	and ($DE.b),Y		; 31 DE
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$E146.w		; A2 46 E1
	ldy #$0520.w		; A0 20 05
	lda #$0007.w		; A9 07 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$3C.b		; A9 3C
	sta $1E06.w		; 8D 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda $1E3D.w		; AD 3D 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0003.w		; C9 03 00
	bne  13.b		; D0 0D
	lda #$E80A.w		; A9 0A E8
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	inc $1E05.w		; EE 05 1E
	rts		; 60

	cmp #$0001.w		; C9 01 00
	beq  41.b		; F0 29
	lda $1000.w		; AD 00 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $82E008.l,X		; BF 08 E0 82
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$24.b		; A0 24
	sty $1001.w		; 8C 01 10
	sty $1004.w		; 8C 04 10
	ldy #$00.b		; A0 00
	sty $1002.w		; 8C 02 10
	sty $1007.w		; 8C 07 10
	sty $1006.w		; 8C 06 10
	inc $1E05.w		; EE 05 1E
	rts		; 60

	lda $1080.w		; AD 80 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $82E008.l,X		; BF 08 E0 82
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$24.b		; A0 24
	sty $1081.w		; 8C 81 10
	sty $1084.w		; 8C 84 10
	ldy #$00.b		; A0 00
	sty $1082.w		; 8C 82 10
	sty $1087.w		; 8C 87 10
	sty $1086.w		; 8C 86 10
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldy #$B4.b		; A0 B4
	sty $1E06.w		; 8C 06 1E
	lda $1E3D.w		; AD 3D 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0003.w		; C9 03 00
	bne   4.b		; D0 04
	inc $1E05.w		; EE 05 1E
	rts		; 60

	lda #$0820.w		; A9 20 08
	sta $74.b		; 85 74
	ldy #$00.b		; A0 00
	sty $76.b		; 84 76
	lda #$0004.w		; A9 04 00
	sta $0822.w		; 8D 22 08
	lda #$0002.w		; A9 02 00
	sta $0824.w		; 8D 24 08
	lda $1E3D.w		; AD 3D 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0001.w		; C9 01 00
	beq  59.b		; F0 3B
	lda $1000.w		; AD 00 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $E166.w,X		; BD 66 E1
	sta $0826.w		; 8D 26 08
	inc A		; 1A
	sta $0828.w		; 8D 28 08
	clc		; 18
	adc #$000F.w		; 69 0F 00
	sta $082A.w		; 8D 2A 08
	inc A		; 1A
	sta $082C.w		; 8D 2C 08
	lda $1E02.w		; AD 02 1E
	and #$00FF.w		; 29 FF 00
	bne  11.b		; D0 0B
	lda #$10C2.w		; A9 C2 10
	sta $0820.w		; 8D 20 08
	inc $1E02.w		; EE 02 1E
	bra  71.b		; 80 47
	lda #$10C4.w		; A9 C4 10
	sta $0820.w		; 8D 20 08
	inc $1E02.w		; EE 02 1E
	bra  60.b		; 80 3C
	lda $1080.w		; AD 80 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $E166.w,X		; BD 66 E1
	ora #$0400.w		; 09 00 04
	sta $0826.w		; 8D 26 08
	inc A		; 1A
	sta $0828.w		; 8D 28 08
	clc		; 18
	adc #$000F.w		; 69 0F 00
	sta $082A.w		; 8D 2A 08
	inc A		; 1A
	sta $082C.w		; 8D 2C 08
	lda $1E03.w		; AD 03 1E
	and #$00FF.w		; 29 FF 00
	bne  11.b		; D0 0B
	lda #$10DA.w		; A9 DA 10
	sta $0820.w		; 8D 20 08
	inc $1E03.w		; EE 03 1E
	bra   9.b		; 80 09
	lda #$10DC.w		; A9 DC 10
	sta $0820.w		; 8D 20 08
	inc $1E03.w		; EE 03 1E
	ldy #$5A.b		; A0 5A
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1E3D.w		; AD 3D 1E
	cmp #$03.b		; C9 03
	beq  44.b		; F0 2C
	cmp #$01.b		; C9 01
	beq  10.b		; F0 0A
	lda $1049.w		; AD 49 10
	cmp $104A.w		; CD 4A 10
	bne  32.b		; D0 20
	bra   8.b		; 80 08
	lda $10C9.w		; AD C9 10
	cmp $10CA.w		; CD CA 10
	bne  22.b		; D0 16
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E0FC.w		; A9 FC E0
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$1E.b		; A0 1E
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

	ldy #$09.b		; A0 09
	sty $1E05.w		; 8C 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E9AA.w		; A9 AA E9
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$5A.b		; A0 5A
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda $1E3D.w		; AD 3D 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0003.w		; C9 03 00
	beq  23.b		; F0 17
	lda $1E08.w		; AD 08 1E
	beq  18.b		; F0 12
	lda #$E0FC.w		; A9 FC E0
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$1E.b		; A0 1E
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

	ldy #$0E.b		; A0 0E
	sty $1E05.w		; 8C 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E98C.w		; A9 8C E9
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda $1E3D.w		; AD 3D 1E
	and #$00FE.w		; 29 FE 00
	beq  47.b		; F0 2F
	lda $1000.w		; AD 00 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $82E01C.l,X		; BF 1C E0 82
	sta $10.b		; 85 10
	lda $1E09.w		; AD 09 1E
	and #$00FE.w		; 29 FE 00
	clc		; 18
	adc $10.b		; 65 10
	sta $10.b		; 85 10
	lda #$0082.w		; A9 82 00
	sta $12.b		; 85 12
	lda [$10.b]		; A7 10
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$5A.b		; A0 5A
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

	lda $1080.w		; AD 80 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $82E01C.l,X		; BF 1C E0 82
	sta $10.b		; 85 10
	lda $1E09.w		; AD 09 1E
	and #$00FE.w		; 29 FE 00
	clc		; 18
	adc $10.b		; 65 10
	sta $10.b		; 85 10
	lda #$0082.w		; A9 82 00
	sta $12.b		; 85 12
	lda [$10.b]		; A7 10
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$3C.b		; A0 3C
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldy #$FF.b		; A0 FF
	sty $1E05.w		; 8C 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$10C2.w		; A9 C2 10
	sta VMADDL.w		; 8D 16 21
	lda $1000.w		; AD 00 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $E166.w,X		; BD 66 E1
	sta VMDATAL.w		; 8D 18 21
	inc A		; 1A
	sta VMDATAL.w		; 8D 18 21
	lda #$10E2.w		; A9 E2 10
	sta VMADDL.w		; 8D 16 21
	lda $E166.w,X		; BD 66 E1
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta VMDATAL.w		; 8D 18 21
	inc A		; 1A
	sta VMDATAL.w		; 8D 18 21
	lda #$10DA.w		; A9 DA 10
	sta VMADDL.w		; 8D 16 21
	lda $1080.w		; AD 80 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $E166.w,X		; BD 66 E1
	ora #$0400.w		; 09 00 04
	sta VMDATAL.w		; 8D 18 21
	inc A		; 1A
	sta VMDATAL.w		; 8D 18 21
	lda #$10FA.w		; A9 FA 10
	sta VMADDL.w		; 8D 16 21
	lda $E166.w,X		; BD 66 E1
	ora #$0400.w		; 09 00 04
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta VMDATAL.w		; 8D 18 21
	inc A		; 1A
	sta VMDATAL.w		; 8D 18 21
	ldy #$01.b		; A0 01
	sty $1E02.w		; 8C 02 1E
	sty $1E03.w		; 8C 03 1E
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1E05.w		; AD 05 1E
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jmp ($DEB3.w,X)		; 7C B3 DE
	cmp [$DE.b]		; C7 DE
	cop $DA.b		; 02 DA
.INDEX 8
	sep #$DE		; E2 DE
	cop $DA.b		; 02 DA
	sed		; F8
	dec $DA02.w,X		; DE 02 DA
	asl $BFDF.w		; 0E DF BF
	cmp $31DA02.l,X		; DF 02 DA 31
	dec $30C2.w,X		; DE C2 30
	ldx #$46.b		; A2 46
	sbc ($A0.b,X)		; E1 A0
	jsr $A905.w		; 20 05 A9
	ora [$00.b]		; 07 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$3C.b		; A9 3C
	sta $1E06.w		; 8D 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E834.w		; A9 34 E8
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$3C.b		; A0 3C
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$E064.w		; A9 64 E0
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$14.b		; A0 14
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldy $1049.w		; AC 49 10
	cpy $10C9.w		; CC C9 10
	bne  47.b		; D0 2F
	lda #$E80A.w		; A9 0A E8
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$25.b		; A0 25
	sty $1001.w		; 8C 01 10
	sty $1004.w		; 8C 04 10
	sty $1081.w		; 8C 81 10
	sty $1084.w		; 8C 84 10
	ldy #$00.b		; A0 00
	sty $1002.w		; 8C 02 10
	sty $1007.w		; 8C 07 10
	sty $1006.w		; 8C 06 10
	sty $1082.w		; 8C 82 10
	sty $1087.w		; 8C 87 10
	sty $1086.w		; 8C 86 10
	inc $1E05.w		; EE 05 1E
	rts		; 60

	bcc  58.b		; 90 3A
	lda $1000.w		; AD 00 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $82E008.l,X		; BF 08 E0 82
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$24.b		; A0 24
	sty $1001.w		; 8C 01 10
	sty $1004.w		; 8C 04 10
	ldy #$25.b		; A0 25
	sty $1081.w		; 8C 81 10
	sty $1084.w		; 8C 84 10
	ldy #$00.b		; A0 00
	sty $1002.w		; 8C 02 10
	sty $1007.w		; 8C 07 10
	sty $1006.w		; 8C 06 10
	sty $1082.w		; 8C 82 10
	sty $1087.w		; 8C 87 10
	sty $1086.w		; 8C 86 10
	inc $1E05.w		; EE 05 1E
	rts		; 60

	lda $1080.w		; AD 80 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $82E008.l,X		; BF 08 E0 82
	sta $74.b		; 85 74
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$24.b		; A0 24
	sty $1081.w		; 8C 81 10
	sty $1084.w		; 8C 84 10
	ldy #$25.b		; A0 25
	sty $1001.w		; 8C 01 10
	sty $1004.w		; 8C 04 10
	ldy #$00.b		; A0 00
	sty $1002.w		; 8C 02 10
	sty $1007.w		; 8C 07 10
	sty $1006.w		; 8C 06 10
	sty $1082.w		; 8C 82 10
	sty $1087.w		; 8C 87 10
	sty $1086.w		; 8C 86 10
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldy #$B4.b		; A0 B4
	sty $1E06.w		; 8C 06 1E
	ldy $1049.w		; AC 49 10
	cpy $10C9.w		; CC C9 10
	bne   4.b		; D0 04
	inc $1E05.w		; EE 05 1E
	rts		; 60

	lda #$0820.w		; A9 20 08
	sta $74.b		; 85 74
	ldy #$00.b		; A0 00
	sty $76.b		; 84 76
	lda #$0004.w		; A9 04 00
	sta $0822.w		; 8D 22 08
	lda #$0002.w		; A9 02 00
	sta $0824.w		; 8D 24 08
	ldy $1049.w		; AC 49 10
	cpy $10C9.w		; CC C9 10
	bcc  59.b		; 90 3B
	lda $1000.w		; AD 00 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $E166.w,X		; BD 66 E1
	sta $0826.w		; 8D 26 08
	inc A		; 1A
	sta $0828.w		; 8D 28 08
	clc		; 18
	adc #$000F.w		; 69 0F 00
	sta $082A.w		; 8D 2A 08
	inc A		; 1A
	sta $082C.w		; 8D 2C 08
	lda $1E02.w		; AD 02 1E
	and #$00FF.w		; 29 FF 00
	bne  11.b		; D0 0B
	lda #$10C2.w		; A9 C2 10
	sta $0820.w		; 8D 20 08
	inc $1E02.w		; EE 02 1E
	bra  71.b		; 80 47
	lda #$10C4.w		; A9 C4 10
	sta $0820.w		; 8D 20 08
	inc $1E02.w		; EE 02 1E
	bra  60.b		; 80 3C
	lda $1080.w		; AD 80 10
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $E166.w,X		; BD 66 E1
	ora #$0400.w		; 09 00 04
	sta $0826.w		; 8D 26 08
	inc A		; 1A
	sta $0828.w		; 8D 28 08
	clc		; 18
	adc #$000F.w		; 69 0F 00
	sta $082A.w		; 8D 2A 08
	inc A		; 1A
	sta $082C.w		; 8D 2C 08
	lda $1E03.w		; AD 03 1E
	and #$00FF.w		; 29 FF 00
	bne  11.b		; D0 0B
	lda #$10DA.w		; A9 DA 10
	sta $0820.w		; 8D 20 08
	inc $1E03.w		; EE 03 1E
	bra   9.b		; 80 09
	lda #$10DC.w		; A9 DC 10
	sta $0820.w		; 8D 20 08
	inc $1E03.w		; EE 03 1E
	ldy #$5A.b		; A0 5A
	sty $1E06.w		; 8C 06 1E
	inc $1E05.w		; EE 05 1E
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $1E04.w		; AD 04 1E
	bne  41.b		; D0 29
	lda $1076.w		; AD 76 10
	bmi   6.b		; 30 06
	lda $61.b		; A5 61
	and #$10.b		; 29 10
	bne  31.b		; D0 1F
	lda $008D.w		; AD 8D 00
	cmp #$02.b		; C9 02
	beq  12.b		; F0 0C
	lda $10F6.w		; AD F6 10
	bmi  18.b		; 30 12
	lda $63.b		; A5 63
	and #$10.b		; 29 10
	bne  62.b		; D0 3E
	rts		; 60

	lda $63.b		; A5 63
	and #$10.b		; 29 10
	beq   5.b		; F0 05
	lda #$FD.b		; A9 FD
	sta $1E05.w		; 8D 05 1E
	rts		; 60

	lda #$30.b		; A9 30
	sta $74.b		; 85 74
	lda #$E0.b		; A9 E0
	sta $75.b		; 85 75
	lda #$82.b		; A9 82
	sta $76.b		; 85 76
	stz $61.b		; 64 61
	lda #$26.b		; A9 26
	sta $78.b		; 85 78
	lda $61.b		; A5 61
	and #$10.b		; 29 10
	beq  -6.b		; F0 FA
	lda #$27.b		; A9 27
	sta $78.b		; 85 78
	lda #$4A.b		; A9 4A
	sta $74.b		; 85 74
	lda #$E0.b		; A9 E0
	sta $75.b		; 85 75
	lda #$82.b		; A9 82
	sta $76.b		; 85 76
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	rts		; 60

	lda #$30.b		; A9 30
	sta $74.b		; 85 74
	lda #$E0.b		; A9 E0
	sta $75.b		; 85 75
	lda #$82.b		; A9 82
	sta $76.b		; 85 76
	stz $63.b		; 64 63
	lda #$26.b		; A9 26
	sta $78.b		; 85 78
	lda $63.b		; A5 63
	and #$10.b		; 29 10
	beq  -6.b		; F0 FA
	lda #$27.b		; A9 27
	sta $78.b		; 85 78
	lda #$4A.b		; A9 4A
	sta $74.b		; 85 74
	lda #$E0.b		; A9 E0
	sta $75.b		; 85 75
	lda #$82.b		; A9 82
	sta $76.b		; 85 76
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1E05.w		; AD 05 1E
	and #$FF.b		; 29 FF
	bne  22.b		; D0 16
	inc $1E05.w		; EE 05 1E
	lda #$5E.b		; A9 5E
	sta $74.b		; 85 74
	lda #$E8.b		; A9 E8
	sta $75.b		; 85 75
	ldy #$82.b		; A0 82
	sty $76.b		; 84 76
	ldy #$B4.b		; A0 B4
	sty $1E06.w		; 8C 06 1E
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	dec $1E06.w		; CE 06 1E
	bne   5.b		; D0 05
	lda #$FD.b		; A9 FD
	sta $1E05.w		; 8D 05 1E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $B1.b		; A5 B1
	and #$0004.w		; 29 04 00
	asl A		; 0A
	clc		; 18
	adc #$E156.w		; 69 56 E1
	tax		; AA
	ldy #$0528.w		; A0 28 05
	lda #$0007.w		; A9 07 00
	phb		; 8B
	mvn $80,$00		; 54 00 80
	plb		; AB
	rts		; 60

	lda $9F35.w		; AD 35 9F
	adc ($7F.b,S),Y		; 73 7F
	ora $0844.w,X		; 1D 44 08
	lda $5F35.w		; AD 35 5F
	rtl		; 6B

	sbc $08447F.l,X		; FF 7F 44 08
	lda $FF35.w		; AD 35 FF
	adc $C45A51.l,X		; 7F 51 5A C4
	bit $AD.b,X		; 34 AD
	and $C4.b,X		; 35 C4
	bit $51.b,X		; 34 51
	phy		; 5A
	sbc $00007F.l,X		; FF 7F 00 00
	cpx #$E238.w		; E0 38 E2
	sec		; 38
	cpx $38.b		; E4 38
	inc $38.b		; E6 38
	inx		; E8
	sec		; 38
	nop		; EA
	sec		; 38
	cpx $EE38.w		; EC 38 EE
	sec		; 38
	cpx #$E238.w		; E0 38 E2
	jsr $9C78.w		; 20 78 9C
	brk $42.b		; 00 42
	lda #$8D80.w		; A9 80 8D
	brk $21.b		; 00 21
	stz $1E01.w		; 9C 01 1E
	stz $1E02.w		; 9C 02 1E
	stz $1E03.w		; 9C 03 1E
	stz $1E14.w		; 9C 14 1E
	stz $1E0E.w		; 9C 0E 1E
	stz $1E0F.w		; 9C 0F 1E
	stz $1E10.w		; 9C 10 1E
	stz $1E11.w		; 9C 11 1E
	stz $1E0A.w		; 9C 0A 1E
	stz $1E0B.w		; 9C 0B 1E
	stz $1E0C.w		; 9C 0C 1E
	stz $1E0D.w		; 9C 0D 1E
	lda $1E00.w		; AD 00 1E
	cmp #$F099.w		; C9 99 F0
	php		; 08
	sed		; F8
	clc		; 18
	adc #$8D01.w		; 69 01 8D
	brk $1E.b		; 00 1E
	cld		; D8
.ACCU 8
	sep #$20		; E2 20
	lda $1E01.w		; AD 01 1E
	bne  23.b		; D0 17
	jsr $856D.w		; 20 6D 85
	jsr $879B.w		; 20 9B 87
	jsl $828000.l		; 22 00 80 82
	jsr $D71E.w		; 20 1E D7
.ACCU 8
	sep #$20		; E2 20
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
	bra  29.b		; 80 1D
	lda #$40.b		; A9 40
	sta $0A00.w		; 8D 00 0A
	stz $0A01.w		; 9C 01 0A
	jsr $8A39.w		; 20 39 8A
	jsr $D77A.w		; 20 7A D7
	jsr $D847.w		; 20 47 D8
.ACCU 8
	sep #$20		; E2 20
	lda $1E01.w		; AD 01 1E
	cmp #$03.b		; C9 03
	bne   3.b		; D0 03
	jsr $DE3B.w		; 20 3B DE
.ACCU 8
	sep #$20		; E2 20
	stz $1E3D.w		; 9C 3D 1E
	stz $1E05.w		; 9C 05 1E
	stz $1E08.w		; 9C 08 1E
	stz $1E09.w		; 9C 09 1E
	inc $1E04.w		; EE 04 1E
	lda #$D4.b		; A9 D4
	sta VTIMEL.w		; 8D 09 42
	lda #$C0.b		; A9 C0
	sta HTIMEL.w		; 8D 07 42
	stz $72.b		; 64 72
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	cli		; 58
	lda #$31.b		; A9 31
	sta NMITIMEN.w		; 8D 00 42
.ACCU 8
	sep #$20		; E2 20
	lda $1E05.w		; AD 05 1E
	bmi  44.b		; 30 2C
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
	jsl $80A05C.l		; 22 5C A0 80
	jsl $809C96.l		; 22 96 9C 80
	jsl $C10000.l		; 22 00 00 C1
	jsl $809FB8.l		; 22 B8 9F 80
	jsr $8BCB.w		; 20 CB 8B
	jsr $9CE2.w		; 20 E2 9C
	jsl $809A0E.l		; 22 0E 9A 80
	jsr $D99E.w		; 20 9E D9
	jsr $B321.w		; 20 21 B3
	jsr $8BF9.w		; 20 F9 8B
	bra -51.b		; 80 CD
.ACCU 8
	sep #$20		; E2 20
	stz $1E04.w		; 9C 04 1E
	stz $1E05.w		; 9C 05 1E
.ACCU 8
	sep #$20		; E2 20
	lda $1E05.w		; AD 05 1E
	bmi  65.b		; 30 41
	jsl $808386.l		; 22 86 83 80
	jsr $E071.w		; 20 71 E0
	jsr $9633.w		; 20 33 96
	jsl $C10E26.l		; 22 26 0E C1
	jsl $80A05C.l		; 22 5C A0 80
	jsl $809C96.l		; 22 96 9C 80
	jsl $C12584.l		; 22 84 25 C1
	jsl $C116EE.l		; 22 EE 16 C1
	jsl $C10000.l		; 22 00 00 C1
	jsl $809FB8.l		; 22 B8 9F 80
	jsr $8BCB.w		; 20 CB 8B
	jsr $9CE2.w		; 20 E2 9C
	jsl $809A0E.l		; 22 0E 9A 80
	jsr $D5E8.w		; 20 E8 D5
	jsr $DB35.w		; 20 35 DB
	jsr $B321.w		; 20 21 B3
	jsr $8CAF.w		; 20 AF 8C
	jsr $8BF9.w		; 20 F9 8B
	bra -72.b		; 80 B8
.ACCU 8
	sep #$20		; E2 20
	lda $1E05.w		; AD 05 1E
	stz $1E05.w		; 9C 05 1E
	cmp #$FF.b		; C9 FF
	beq 102.b		; F0 66
	cmp #$FE.b		; C9 FE
	beq  53.b		; F0 35
	lda #$1B.b		; A9 1B
	sta $78.b		; 85 78
	lda #$01.b		; A9 01
	jsl $80EB8C.l		; 22 8C EB 80
	jsl $808386.l		; 22 86 83 80
	jsr $E104.w		; 20 04 E1
.ACCU 8
	sep #$20		; E2 20
	lda $1E05.w		; AD 05 1E
	bpl -14.b		; 10 F2
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -13.b		; D0 F3
	lda #$02.b		; A9 02
	sta $8A.b		; 85 8A
	lda #$01.b		; A9 01
	sta $8D.b		; 85 8D
	jsr $98C0.w		; 20 C0 98
	rts		; 60

	jsl $808386.l		; 22 86 83 80
	jsl $80A05C.l		; 22 5C A0 80
	jsl $809C96.l		; 22 96 9C 80
	jsl $C10000.l		; 22 00 00 C1
	jsl $809FB8.l		; 22 B8 9F 80
	jsr $8BCB.w		; 20 CB 8B
	jsr $9CE2.w		; 20 E2 9C
	jsl $809A0E.l		; 22 0E 9A 80
	jsr $DEA6.w		; 20 A6 DE
	jsr $B321.w		; 20 21 B3
.ACCU 8
	sep #$20		; E2 20
	lda $1E05.w		; AD 05 1E
	bpl -43.b		; 10 D5
	bra  43.b		; 80 2B
	jsl $808386.l		; 22 86 83 80
	jsl $80A05C.l		; 22 5C A0 80
	jsl $809C96.l		; 22 96 9C 80
	jsl $C10000.l		; 22 00 00 C1
	jsl $809FB8.l		; 22 B8 9F 80
	jsr $8BCB.w		; 20 CB 8B
	jsr $9CE2.w		; 20 E2 9C
	jsl $809A0E.l		; 22 0E 9A 80
	jsr $DBC8.w		; 20 C8 DB
	jsr $B321.w		; 20 21 B3
.ACCU 8
	sep #$20		; E2 20
	lda $1E05.w		; AD 05 1E
	bpl -43.b		; 10 D5
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	lda $8D.b		; A5 8D
	cmp #$03.b		; C9 03
	bne  12.b		; D0 0C
	lda $1E02.w		; AD 02 1E
	bne  35.b		; D0 23
	lda $1E03.w		; AD 03 1E
	bne  37.b		; D0 25
	bra  48.b		; 80 30
	lda $1E02.w		; AD 02 1E
	cmp #$02.b		; C9 02
	beq  21.b		; F0 15
	lda $1E03.w		; AD 03 1E
	cmp #$02.b		; C9 02
	beq  21.b		; F0 15
	lda $1E01.w		; AD 01 1E
	cmp #$03.b		; C9 03
	bne  27.b		; D0 1B
	lda #$FF.b		; A9 FF
	sta $1E14.w		; 8D 14 1E
	bra  14.b		; 80 0E
	lda #$01.b		; A9 01
	sta $1E14.w		; 8D 14 1E
	bra   7.b		; 80 07
	lda #$02.b		; A9 02
	sta $1E14.w		; 8D 14 1E
	bra   0.b		; 80 00
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -13.b		; D0 F3
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
.ACCU 16
	rep #$20		; C2 20
	lda $104A.w		; AD 4A 10
	sec		; 38
	sbc $1049.w		; ED 49 10
	clc		; 18
	and #$00FF.w		; 29 FF 00
	adc $1E0E.w		; 6D 0E 1E
	sta $1E0E.w		; 8D 0E 1E
	lda $10CA.w		; AD CA 10
	sec		; 38
	sbc $10C9.w		; ED C9 10
	clc		; 18
	and #$00FF.w		; 29 FF 00
	adc $1E10.w		; 6D 10 1E
	sta $1E10.w		; 8D 10 1E
.ACCU 8
	sep #$20		; E2 20
	lda $1E14.w		; AD 14 1E
	bne   6.b		; D0 06
	inc $1E01.w		; EE 01 1E
	jmp $E1B8.w		; 4C B8 E1
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	jsl $80EB8C.l		; 22 8C EB 80
	jsr $E513.w		; 20 13 E5
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
.ACCU 8
	sep #$20		; E2 20
	jsr $856D.w		; 20 6D 85
	jsr $879B.w		; 20 9B 87
	jsr $8AF6.w		; 20 F6 8A
.ACCU 8
	sep #$20		; E2 20
	stz $1E3D.w		; 9C 3D 1E
	stz $1E04.w		; 9C 04 1E
	lda #$D4.b		; A9 D4
	sta VTIMEL.w		; 8D 09 42
	lda #$C0.b		; A9 C0
	sta HTIMEL.w		; 8D 07 42
	stz $72.b		; 64 72
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
	cli		; 58
	lda #$31.b		; A9 31
	sta NMITIMEN.w		; 8D 00 42
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
	jsr $E47C.w		; 20 7C E4
	jsr $9633.w		; 20 33 96
	jsl $C10E26.l		; 22 26 0E C1
	jsl $80A05C.l		; 22 5C A0 80
	jsl $809C96.l		; 22 96 9C 80
	jsl $C12584.l		; 22 84 25 C1
	jsl $C116EE.l		; 22 EE 16 C1
	jsl $C10000.l		; 22 00 00 C1
	jsl $809FB8.l		; 22 B8 9F 80
	jsr $8BCB.w		; 20 CB 8B
	jsr $9CE2.w		; 20 E2 9C
	jsl $809A0E.l		; 22 0E 9A 80
	jsr $B321.w		; 20 21 B3
	jsr $8CAF.w		; 20 AF 8C
	jsr $8BF9.w		; 20 F9 8B
.ACCU 8
	sep #$20		; E2 20
	lda $61.b		; A5 61
	and #$20.b		; 29 20
	beq -68.b		; F0 BC
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -13.b		; D0 F3
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
	lda #$02.b		; A9 02
	sta $8A.b		; 85 8A
	lda #$01.b		; A9 01
	jsl $80EB8C.l		; 22 8C EB 80
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $72.b		; A5 72
	cmp #$0F.b		; C9 0F
	bne  12.b		; D0 0C
	lda $61.b		; A5 61
	and #$10.b		; 29 10
	bne   7.b		; D0 07
	lda $63.b		; A5 63
	and #$10.b		; 29 10
	bne  64.b		; D0 40
	rts		; 60

	stz $61.b		; 64 61
	lda #$26.b		; A9 26
	sta $78.b		; 85 78
	lda $4A.b		; A5 4A
	ora #$04.b		; 09 04
	sta $4A.b		; 85 4A
	lda $4C.b		; A5 4C
	ora #$04.b		; 09 04
	sta $4C.b		; 85 4C
	stz $0A14.w		; 9C 14 0A
	stz $0A15.w		; 9C 15 0A
	jsr $95FD.w		; 20 FD 95
.ACCU 8
	sep #$20		; E2 20
	lda $61.b		; A5 61
	and #$10.b		; 29 10
	beq  -6.b		; F0 FA
	lda #$27.b		; A9 27
	sta $78.b		; 85 78
	lda $4A.b		; A5 4A
	and #$FB.b		; 29 FB
	sta $4A.b		; 85 4A
	lda $4C.b		; A5 4C
	and #$FB.b		; 29 FB
	sta $4C.b		; 85 4C
	jsr $9622.w		; 20 22 96
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	rts		; 60

	stz $63.b		; 64 63
	lda #$26.b		; A9 26
	sta $78.b		; 85 78
	lda $4A.b		; A5 4A
	ora #$04.b		; 09 04
	sta $4A.b		; 85 4A
	lda $4C.b		; A5 4C
	ora #$04.b		; 09 04
	sta $4C.b		; 85 4C
	lda #$00.b		; A9 00
	sta $0A14.w		; 8D 14 0A
	lda #$01.b		; A9 01
	sta $0A15.w		; 8D 15 0A
	jsr $95FD.w		; 20 FD 95
.ACCU 8
	sep #$20		; E2 20
	lda $63.b		; A5 63
	and #$10.b		; 29 10
	beq  -6.b		; F0 FA
	lda #$27.b		; A9 27
	sta $78.b		; 85 78
	lda $4A.b		; A5 4A
	and #$FB.b		; 29 FB
	sta $4A.b		; 85 4A
	lda $4C.b		; A5 4C
	and #$FB.b		; 29 FB
	sta $4C.b		; 85 4C
	jsr $9622.w		; 20 22 96
	jsl $808386.l		; 22 86 83 80
	jsl $808386.l		; 22 86 83 80
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $8D.b		; A5 8D
	asl A		; 0A
	tax		; AA
	jmp ($E51C.w,X)		; 7C 1C E5
	rol $E5.b		; 26 E5
	phx		; DA
	sbc $DC.b		; E5 DC
	inc $DE.b		; E6 DE
	sbc [$DE.b]		; E7 DE
	sbc [$C2.b]		; E7 C2
	jsr $14AD.w		; 20 AD 14
	asl $FF29.w,X		; 1E 29 FF
	brk $C9.b		; 00 C9
	ora ($00.b,X)		; 01 00
	beq  18.b		; F0 12
	lda $1E38.w		; AD 38 1E
	cmp #$E7.b		; C9 E7
	ora $10.b,S		; 03 10
	ora $EE.b,S		; 03 EE
	sec		; 38
	asl $20E2.w,X		; 1E E2 20
	lda #$10.b		; A9 10
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $1F42.w		; AD 42 1F
	sta $1DA4.w		; 8D A4 1D
	lda $1F38.w		; AD 38 1F
	sta $1DA8.w		; 8D A8 1D
	lda $1F4C.w		; AD 4C 1F
	sta $1DAC.w		; 8D AC 1D
	lda $1E38.w		; AD 38 1E
	sta $1DB6.w		; 8D B6 1D
	lda $10F9.w		; AD F9 10
	sta $1DB2.w		; 8D B2 1D
	cmp $1F38.w		; CD 38 1F
	bpl   9.b		; 10 09
	sta $1F38.w		; 8D 38 1F
	ora #$8000.w		; 09 00 80
	sta $1DA8.w		; 8D A8 1D
	lda $1E0E.w		; AD 0E 1E
	sta $1DB4.w		; 8D B4 1D
	cmp $1F4C.w		; CD 4C 1F
	bpl   9.b		; 10 09
	sta $1F4C.w		; 8D 4C 1F
	ora #$8000.w		; 09 00 80
	sta $1DAC.w		; 8D AC 1D
	lda $1E0B.w		; AD 0B 1E
	sta $1DB0.w		; 8D B0 1D
	cmp $1F42.w		; CD 42 1F
	bpl   9.b		; 10 09
	sta $1F42.w		; 8D 42 1F
	ora #$8000.w		; 09 00 80
	sta $1DA4.w		; 8D A4 1D
	jsr $E81E.w		; 20 1E E8
.ACCU 8
	sep #$20		; E2 20
	inc $1E3A.w		; EE 3A 1E
	lda $1E3A.w		; AD 3A 1E
	cmp #$05.b		; C9 05
	beq  10.b		; F0 0A
	cmp #$08.b		; C9 08
	beq  12.b		; F0 0C
	lda #$13.b		; A9 13
	sta $8B.b		; 85 8B
	bra  33.b		; 80 21
	lda #$0A.b		; A9 0A
	sta $8B.b		; 85 8B
	bra  27.b		; 80 1B
	jsr $E7E3.w		; 20 E3 E7
.ACCU 8
	sep #$20		; E2 20
	lda $1E12.w		; AD 12 1E
	sta $1DB8.w		; 8D B8 1D
	lda $1E13.w		; AD 13 1E
	sta $1DB9.w		; 8D B9 1D
	lda $1D00.w		; AD 00 1D
	sta $1F58.w		; 8D 58 1F
	lda #$09.b		; A9 09
	sta $8B.b		; 85 8B
	lda #$15.b		; A9 15
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $1F3A.w		; AD 3A 1F
	sta $1DA4.w		; 8D A4 1D
	lda $1F3C.w		; AD 3C 1F
	sta $1DA6.w		; 8D A6 1D
	lda $1F30.w		; AD 30 1F
	sta $1DA8.w		; 8D A8 1D
	lda $1F32.w		; AD 32 1F
	sta $1DAA.w		; 8D AA 1D
	lda $1F44.w		; AD 44 1F
	sta $1DAC.w		; 8D AC 1D
	lda $1F46.w		; AD 46 1F
	sta $1DAE.w		; 8D AE 1D
	lda $1E14.w		; AD 14 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0001.w		; C9 01 00
	beq  12.b		; F0 0C
	cmp #$0002.w		; C9 02 00
	beq 104.b		; F0 68
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $8A.b		; 85 8A
	rts		; 60

	lda $10F9.w		; AD F9 10
	sta $1DB2.w		; 8D B2 1D
	cmp $1F30.w		; CD 30 1F
	bpl   9.b		; 10 09
	sta $1F30.w		; 8D 30 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	tay		; A8
	ora $0EAD.w,X		; 1D AD 0E
	asl $B48D.w,X		; 1E 8D B4
	ora $44CD.w,X		; 1D CD 44
	ora $8D0910.l,X		; 1F 10 09 8D
	mvp $09,$1F		; 44 1F 09
	brk $80.b		; 00 80
	sta $1DAC.w		; 8D AC 1D
	lda $1E0B.w		; AD 0B 1E
	sta $1DB0.w		; 8D B0 1D
	cmp $1F3A.w		; CD 3A 1F
	bpl   9.b		; 10 09
	sta $1F3A.w		; 8D 3A 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	ldy $1D.b		; A4 1D
	lda $1F4E.w		; AD 4E 1F
	cmp #$E7.b		; C9 E7
	ora $10.b,S		; 03 10
	ora $EE.b,S		; 03 EE
	lsr $AD1F.w		; 4E 1F AD
	lsr $8D1F.w		; 4E 1F 8D
	ldy #$1D.b		; A0 1D
	lda $1F50.w		; AD 50 1F
	sta $1DA2.w		; 8D A2 1D
	stz $1DBE.w		; 9C BE 1D
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $8B.b		; 85 8B
	lda #$14.b		; A9 14
	sta $8A.b		; 85 8A
	rts		; 60

	lda $1079.w		; AD 79 10
	sta $1DB2.w		; 8D B2 1D
	cmp $1F32.w		; CD 32 1F
	bpl   9.b		; 10 09
	sta $1F32.w		; 8D 32 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	tax		; AA
	ora $10AD.w,X		; 1D AD 10
	asl $B48D.w,X		; 1E 8D B4
	ora $46CD.w,X		; 1D CD 46
	ora $8D0910.l,X		; 1F 10 09 8D
	lsr $1F.b		; 46 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	ldx $AD1D.w		; AE 1D AD
	phd		; 0B
	asl $B08D.w,X		; 1E 8D B0
	ora $3CCD.w,X		; 1D CD 3C
	ora $8D0910.l,X		; 1F 10 09 8D
	bit $091F.w,X		; 3C 1F 09
	brk $80.b		; 00 80
	sta $1DA6.w		; 8D A6 1D
	lda $1F50.w		; AD 50 1F
	cmp #$E7.b		; C9 E7
	ora $10.b,S		; 03 10
	ora $EE.b,S		; 03 EE
	bvc  31.b		; 50 1F
	lda $1F4E.w		; AD 4E 1F
	sta $1DA0.w		; 8D A0 1D
	lda $1F50.w		; AD 50 1F
	sta $1DA2.w		; 8D A2 1D
	lda #$01.b		; A9 01
	brk $8D.b		; 00 8D
	ldx $E21D.w,Y		; BE 1D E2
	jsr $02A9.w		; 20 A9 02
	sta $8B.b		; 85 8B
	lda #$14.b		; A9 14
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $1F3E.w		; AD 3E 1F
	sta $1DA4.w		; 8D A4 1D
	lda $1F40.w		; AD 40 1F
	sta $1DA6.w		; 8D A6 1D
	lda $1F34.w		; AD 34 1F
	sta $1DA8.w		; 8D A8 1D
	lda $1F36.w		; AD 36 1F
	sta $1DAA.w		; 8D AA 1D
	lda $1F48.w		; AD 48 1F
	sta $1DAC.w		; 8D AC 1D
	lda $1F4A.w		; AD 4A 1F
	sta $1DAE.w		; 8D AE 1D
	lda $1E14.w		; AD 14 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0001.w		; C9 01 00
	beq  12.b		; F0 0C
	cmp #$0002.w		; C9 02 00
	beq 104.b		; F0 68
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $8A.b		; 85 8A
	rts		; 60

	lda $10F9.w		; AD F9 10
	sta $1DB2.w		; 8D B2 1D
	cmp $1F34.w		; CD 34 1F
	bpl   9.b		; 10 09
	sta $1F34.w		; 8D 34 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	tay		; A8
	ora $0EAD.w,X		; 1D AD 0E
	asl $B48D.w,X		; 1E 8D B4
	ora $48CD.w,X		; 1D CD 48
	ora $8D0910.l,X		; 1F 10 09 8D
	pha		; 48
	ora $800009.l,X		; 1F 09 00 80
	sta $1DAC.w		; 8D AC 1D
	lda $1E0B.w		; AD 0B 1E
	sta $1DB0.w		; 8D B0 1D
	cmp $1F3E.w		; CD 3E 1F
	bpl   9.b		; 10 09
	sta $1F3E.w		; 8D 3E 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	ldy $1D.b		; A4 1D
	lda $1F52.w		; AD 52 1F
	cmp #$E7.b		; C9 E7
	ora $10.b,S		; 03 10
	ora $EE.b,S		; 03 EE
	eor ($1F.b)		; 52 1F
	lda $1F52.w		; AD 52 1F
	sta $1DA0.w		; 8D A0 1D
	lda $1F54.w		; AD 54 1F
	sta $1DA2.w		; 8D A2 1D
	stz $1DBE.w		; 9C BE 1D
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $8B.b		; 85 8B
	lda #$14.b		; A9 14
	sta $8A.b		; 85 8A
	rts		; 60

	lda $1079.w		; AD 79 10
	sta $1DB2.w		; 8D B2 1D
	cmp $1F36.w		; CD 36 1F
	bpl   9.b		; 10 09
	sta $1F36.w		; 8D 36 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	tax		; AA
	ora $10AD.w,X		; 1D AD 10
	asl $B48D.w,X		; 1E 8D B4
	ora $4ACD.w,X		; 1D CD 4A
	ora $8D0910.l,X		; 1F 10 09 8D
	lsr A		; 4A
	ora $800009.l,X		; 1F 09 00 80
	sta $1DAE.w		; 8D AE 1D
	lda $1E0B.w		; AD 0B 1E
	sta $1DB0.w		; 8D B0 1D
	cmp $1F40.w		; CD 40 1F
	bpl   9.b		; 10 09
	sta $1F40.w		; 8D 40 1F
	ora #$00.b		; 09 00
	bra -115.b		; 80 8D
	ldx $1D.b		; A6 1D
	lda $1F54.w		; AD 54 1F
	cmp #$E7.b		; C9 E7
	ora $10.b,S		; 03 10
	ora $EE.b,S		; 03 EE
	mvn $AD,$1F		; 54 1F AD
	eor ($1F.b)		; 52 1F
	sta $1DA0.w		; 8D A0 1D
	lda $1F54.w		; AD 54 1F
	sta $1DA2.w		; 8D A2 1D
	lda #$01.b		; A9 01
	brk $8D.b		; 00 8D
	ldx $E21D.w,Y		; BE 1D E2
	jsr $02A9.w		; 20 A9 02
	sta $8B.b		; 85 8B
	lda #$14.b		; A9 14
	sta $8A.b		; 85 8A
	rts		; 60

	lda #$0C.b		; A9 0C
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $1E38.w		; AD 38 1E
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc $1E12.w		; 6D 12 1E
	cmp #$0018.w		; C9 18 00
	bpl   3.b		; 10 03
	lda #$0018.w		; A9 18 00
	sta WRDIVL.w		; 8D 04 42
.ACCU 8
	sep #$20		; E2 20
	lda #$18.b		; A9 18
	sta WRDIVB.w		; 8D 06 42
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
	nop		; EA
.ACCU 16
	rep #$20		; C2 20
	lda RDDIVL.w		; AD 14 42
	sta $1E12.w		; 8D 12 1E
	lda RDMPYL.w		; AD 16 42
	beq   3.b		; F0 03
	inc $1E12.w		; EE 12 1E
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $00.b		; 64 00
	lda $1DB4.w		; AD B4 1D
	ldx #$E882.w		; A2 82 E8
	jsr $E85E.w		; 20 5E E8
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tya		; 98
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $1E0B.w		; AD 0B 1E
	ldx #$E86A.w		; A2 6A E8
	jsr $E85E.w		; 20 5E E8
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tya		; 98
	clc		; 18
	adc $00.b		; 65 00
	sta $00.b		; 85 00
	lda $1DB2.w		; AD B2 1D
	ldx #$E876.w		; A2 76 E8
	jsr $E85E.w		; 20 5E E8
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tya		; 98
	clc		; 18
	adc $00.b		; 65 00
	clc		; 18
	adc $1E12.w		; 6D 12 1E
	sta $1E12.w		; 8D 12 1E
	rts		; 60

	ldy #$0000.w		; A0 00 00
	inx		; E8
	inx		; E8
	iny		; C8
	cmp $0000.w,X		; DD 00 00
	bmi  -8.b		; 30 F8
	rts		; 60

	sbc $0083FF.l,X		; FF FF 83 00
	adc $00.b		; 65 00
	eor [$00.b]		; 47 00
	rol $0000.w		; 2E 00 00
	brk $FF.b		; 00 FF
	sbc $470065.l,X		; FF 65 00 47
	brk $33.b		; 00 33
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $8300AB.l,X		; FF AB 00 83
	brk $5B.b		; 00 5B
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	jsr $9C78.w		; 20 78 9C
	brk $42.b		; 00 42
	lda #$8D80.w		; A9 80 8D
	brk $21.b		; 00 21
	jsr $E93E.w		; 20 3E E9
.ACCU 8
	sep #$20		; E2 20
	stz $1E05.w		; 9C 05 1E
	stz $1E3D.w		; 9C 3D 1E
	stz $1E04.w		; 9C 04 1E
	lda #$D4.b		; A9 D4
	sta VTIMEL.w		; 8D 09 42
	lda #$C0.b		; A9 C0
	sta HTIMEL.w		; 8D 07 42
	stz $72.b		; 64 72
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
	cli		; 58
	lda #$31.b		; A9 31
	sta NMITIMEN.w		; 8D 00 42
.ACCU 8
	sep #$20		; E2 20
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
	jsr $EA3F.w		; 20 3F EA
	jsl $C10E26.l		; 22 26 0E C1
	jsl $80A05C.l		; 22 5C A0 80
	jsl $809C96.l		; 22 96 9C 80
	jsl $C12584.l		; 22 84 25 C1
	jsl $C116EE.l		; 22 EE 16 C1
	jsl $C10000.l		; 22 00 00 C1
	jsl $809FB8.l		; 22 B8 9F 80
	jsr $8BCB.w		; 20 CB 8B
	jsr $9CE2.w		; 20 E2 9C
	jsl $809A0E.l		; 22 0E 9A 80
	jsr $D5E8.w		; 20 E8 D5
	jsr $B321.w		; 20 21 B3
	jsr $8CAF.w		; 20 AF 8C
	jsr $8BF9.w		; 20 F9 8B
.ACCU 8
	sep #$20		; E2 20
	lda $1E05.w		; AD 05 1E
	beq -69.b		; F0 BB
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
	jsl $808386.l		; 22 86 83 80
	jsr $877C.w		; 20 7C 87
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -13.b		; D0 F3
	sei		; 78
	stz NMITIMEN.w		; 9C 00 42
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
	lda $1E05.w		; AD 05 1E
	bmi   6.b		; 30 06
	lda #$03.b		; A9 03
	sta $8A.b		; 85 8A
	bra   4.b		; 80 04
	lda #$01.b		; A9 01
	sta $8A.b		; 85 8A
	lda #$01.b		; A9 01
	jsl $80EB8C.l		; 22 8C EB 80
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	stz $AF.b		; 64 AF
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	stz $1D01.w		; 9C 01 1D
	stz $1D02.w		; 9C 02 1D
	stz $1D04.w		; 9C 04 1D
	stz $1D05.w		; 9C 05 1D
	stz $1D08.w		; 9C 08 1D
	stz $1D09.w		; 9C 09 1D
	stz $1D0A.w		; 9C 0A 1D
	stz $1D0B.w		; 9C 0B 1D
	stz $1D0C.w		; 9C 0C 1D
	stz $1D0D.w		; 9C 0D 1D
	stz $1D10.w		; 9C 10 1D
	stz $1D11.w		; 9C 11 1D
	stz $1D12.w		; 9C 12 1D
	stz $1D13.w		; 9C 13 1D
	stz $1D14.w		; 9C 14 1D
	stz $1D15.w		; 9C 15 1D
	lda $1F5F.w		; AD 5F 1F
	inc $1F5F.w		; EE 5F 1F
	and #$07.b		; 29 07
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	lda $1F5D.w		; AD 5D 1F
	beq  22.b		; F0 16
	lda $E9F9.w,X		; BD F9 E9
	sta $8E.b		; 85 8E
	lda $E9FA.w,X		; BD FA E9
	sta $1D00.w		; 8D 00 1D
	lda $E9FB.w,X		; BD FB E9
	sta $1D03.w		; 8D 03 1D
	lda $E9FC.w,X		; BD FC E9
	bra  20.b		; 80 14
	lda $E9D9.w,X		; BD D9 E9
	sta $8E.b		; 85 8E
	lda $E9DA.w,X		; BD DA E9
	sta $1D00.w		; 8D 00 1D
	lda $E9DB.w,X		; BD DB E9
	sta $1D03.w		; 8D 03 1D
	lda $E9DC.w,X		; BD DC E9
	pha		; 48
	jsr $856D.w		; 20 6D 85
	jsr $879B.w		; 20 9B 87
	jsr $D71E.w		; 20 1E D7
.ACCU 8
	sep #$20		; E2 20
	stz $1001.w		; 9C 01 10
	stz $1081.w		; 9C 81 10
	stz $1004.w		; 9C 04 10
	stz $1084.w		; 9C 84 10
	stz $1007.w		; 9C 07 10
	stz $1087.w		; 9C 87 10
	stz $1006.w		; 9C 06 10
	stz $1086.w		; 9C 86 10
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	plx		; FA
	jsr $8E5A.w		; 20 5A 8E
	rts		; 60

	brk $01.b		; 00 01
	cop $03.b		; 02 03
	cop $02.b		; 02 02
	ora $04.b,S		; 03 04
	tsb $03.b		; 04 03
	tsb $05.b		; 04 05
	asl $04.b		; 06 04
	ora $06.b		; 05 06
	php		; 08
	ora $06.b		; 05 06
	ora [$0A.b]		; 07 0A
	asl $07.b		; 06 07
	php		; 08
	tsb $0807.w		; 0C 07 08
	ora #$0E.b		; 09 0E
	php		; 08
	ora #$0A.b		; 09 0A
	brk $01.b		; 00 01
	cop $0B.b		; 02 0B
	cop $02.b		; 02 02
	ora $0C.b,S		; 03 0C
	tsb $03.b		; 04 03
	tsb $0D.b		; 04 0D
	asl $04.b		; 06 04
	ora $0E.b		; 05 0E
	php		; 08
	ora $06.b		; 05 06
	ora $07060A.l		; 0F 0A 06 07
	bpl  12.b		; 10 0C
	ora [$08.b]		; 07 08
	ora ($0E.b),Y		; 11 0E
	php		; 08
	ora #$12.b		; 09 12
	jsr $9633.w		; 20 33 96
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1E3D.w		; AD 3D 1E
	and #$00FF.w		; 29 FF 00
	bne  24.b		; D0 18
	ldx $AF.b		; A6 AF
	cpx #$1C00.w		; E0 00 1C
	beq  17.b		; F0 11
	lda $A3.b		; A5 A3
	sta $7F0000.l,X		; 9F 00 00 7F
	lda $A5.b		; A5 A5
	sta $7F1C00.l,X		; 9F 00 1C 7F
	inc $AF.b		; E6 AF
	inc $AF.b		; E6 AF
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	ora $62.b		; 05 62
	and #$1000.w		; 29 00 10
	bne  56.b		; D0 38
	ldx $AF.b		; A6 AF
	cpx #$1C00.w		; E0 00 1C
	beq  69.b		; F0 45
	lda $1E3D.w		; AD 3D 1E
	and #$00FF.w		; 29 FF 00
	bne  81.b		; D0 51
	lda $A3.b		; A5 A3
	sta $AB.b		; 85 AB
	lda $A5.b		; A5 A5
	sta $AD.b		; 85 AD
	lda $7F0000.l,X		; BF 00 00 7F
	sta $A3.b		; 85 A3
	lda $7F1C00.l,X		; BF 00 1C 7F
	sta $A5.b		; 85 A5
	inc $AF.b		; E6 AF
	inc $AF.b		; E6 AF
	lda $A3.b		; A5 A3
	eor $AB.b		; 45 AB
	and $A3.b		; 25 A3
	sta $A7.b		; 85 A7
	lda $A5.b		; A5 A5
	eor $AD.b		; 45 AD
	and $A5.b		; 25 A5
	sta $A9.b		; 85 A9
	rts		; 60

	stz $A3.b		; 64 A3
	stz $AB.b		; 64 AB
	stz $A7.b		; 64 A7
	stz $A5.b		; 64 A5
	stz $AD.b		; 64 AD
	stz $A9.b		; 64 A9
.ACCU 8
	sep #$20		; E2 20
	lda #$FF.b		; A9 FF
	sta $1E05.w		; 8D 05 1E
	rts		; 60

	stz $A3.b		; 64 A3
	stz $AB.b		; 64 AB
	stz $A7.b		; 64 A7
	stz $A5.b		; 64 A5
	stz $AD.b		; 64 AD
	stz $A9.b		; 64 A9
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1E05.w		; 8D 05 1E
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$01.b		; A9 01
	sta $71.b		; 85 71
	sta $1E04.w		; 8D 04 1E
	jsl $8083D0.l		; 22 D0 83 80
	bcc   1.b		; 90 01
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1001.w		; AD 01 10
	beq   9.b		; F0 09
	cmp #$21.b		; C9 21
	beq   5.b		; F0 05
	cmp #$1F.b		; C9 1F
	beq   1.b		; F0 01
	rts		; 60

	lda $1081.w		; AD 81 10
	beq   9.b		; F0 09
	cmp #$21.b		; C9 21
	beq   5.b		; F0 05
	cmp #$1F.b		; C9 1F
	beq   1.b		; F0 01
	rts		; 60

	lda $1049.w		; AD 49 10
	cmp $0800.w		; CD 00 08
	bne  27.b		; D0 1B
	lda $10C9.w		; AD C9 10
	cmp $0801.w		; CD 01 08
	bne  19.b		; D0 13
	lda #$01.b		; A9 01
	sta $1E05.w		; 8D 05 1E
.ACCU 16
	rep #$20		; C2 20
	stz $A3.b		; 64 A3
	stz $AB.b		; 64 AB
	stz $A7.b		; 64 A7
	stz $A5.b		; 64 A5
	stz $AD.b		; 64 AD
	stz $A9.b		; 64 A9
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $1E12.w		; AD 12 1E
	and #$00F0.w		; 29 F0 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tay		; A8
	lda $EB2B.w,Y		; B9 2B EB
	sta $080E.w		; 8D 0E 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta $0810.w		; 8D 10 08
	lda $1E12.w		; AD 12 1E
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tay		; A8
	lda $EB2B.w,Y		; B9 2B EB
	sta $0812.w		; 8D 12 08
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta $0814.w		; 8D 14 08
	rts		; 60

	bvc  44.b		; 50 2C
	eor ($2C.b),Y		; 51 2C
	eor ($2C.b)		; 52 2C
	eor ($2C.b,S),Y		; 53 2C
	mvn $55,$2C		; 54 2C 55
	bit $2C56.w		; 2C 56 2C
	eor [$2C.b],Y		; 57 2C
	cli		; 58
	bit $2C59.w		; 2C 59 2C
	bcc  44.b		; 90 2C
	sta ($2C.b),Y		; 91 2C
	sta ($2C.b)		; 92 2C
	sta ($2C.b,S),Y		; 93 2C
	sty $2C.b,X		; 94 2C
	sta $2C.b,X		; 95 2C
	jmp $288000.l		; 5C 00 80 28
	nop		; EA
	nop		; EA
	phk		; 4B
	plb		; AB
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	phy		; 5A
	lda $ECE7.w,Y		; B9 E7 EC
	sta $00.b		; 85 00
	lda $ECE9.w,Y		; B9 E9 EC
	sta $02.b		; 85 02
	jsr $EBD4.w		; 20 D4 EB
	jsr L00EBFB.w		; 20 FB EB
	jsr L00EBAE.w		; 20 AE EB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ply		; 7A
	lda $ECEA.w,Y		; B9 EA EC
	cmp #$FFFF.w		; C9 FF FF
	beq  16.b		; F0 10
	sta $00.b		; 85 00
	lda $ECEC.w,Y		; B9 EC EC
	sta $02.b		; 85 02
	jsr $EBD4.w		; 20 D4 EB
	jsr L00EBFB.w		; 20 FB EB
	jsr L00EBAE.w		; 20 AE EB
	plb		; AB
	rtl		; 6B

	jmp $E88069.l		; 5C 69 80 E8
	phk		; 4B
	plb		; AB
	nop		; EA
	sta APUIO3.w		; 8D 43 21
	ldx #$1000.w		; A2 00 10
	cmp $2143.w		; CD 43 21
	beq  11.b		; F0 0B
	dex		; CA
	bne  -8.b		; D0 F8
	ldx #$1000.w		; A2 00 10
	sta APUIO3.w		; 8D 43 21
	bra -16.b		; 80 F0
	stz APUIO3.w		; 9C 43 21
	plb		; AB
	rtl		; 6B

L00EBAE:
.INDEX 16
	rep #$10
.ACCU 8
	sep #$20
	lda #$01.b
	sta APUIO0.w		; APU I/O Port 0
	ldx #$1000.w
L00EBBA:
	cmp $2140.w
	beq L00EBCA.b
	dex
	bne L00EBBA.b
	ldx #$1000.w
	sta APUIO0.w		; APU I/O Port 0
	bra L00EBBA.b
L00EBCA:
	stz APUIO0.w		; APU I/O Port 0
	ldx #$4000.w
L00EBD0:
	dex
	bne L00EBD0.b
	rts

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1000.w		; A2 00 10
	ldy #$BBAA.w		; A0 AA BB
	lda #$E2E2.w		; A9 E2 E2
	sta APUIO2.w		; 8D 42 21
	cmp $2142.w		; CD 42 21
	bne   5.b		; D0 05
	cpy APUIO0.w		; CC 40 21
	beq  11.b		; F0 0B
	dex		; CA
	bne -13.b		; D0 F3
	ldx #$1000.w		; A2 00 10
	sta APUIO2.w		; 8D 42 21
	bra -21.b		; 80 EB
	stz APUIO2.w		; 9C 42 21
	rts		; 60

L00EBFB:
	php
.ACCU 16
.INDEX 16
	rep #$30
	ldy #$0000.w
	lda #$BBAA.w
L00EC04:
	cmp $2140.w
	bne L00EC04.b
.ACCU 8
	sep #$20
	lda #$CC.b
	bra L00EC35.b
L00EC0F:
	lda [$00.b],Y
	iny
	xba
	lda #$00.b
	bra L00EC22.b
L00EC17:
	xba
	lda [$00.b],Y
	iny
	xba
L00EC1C:
	cmp $2140.w
	bne L00EC1C.b
	inc A
L00EC22:
.ACCU 16
	rep #$20
	sta APUIO0.w		; APU I/O Port 0
.ACCU 8
	sep #$20
	dex
	bne L00EC17.b
L00EC2C:
	cmp $2140.w
	bne L00EC2C.b
.BASE $C0
LC0EC31:
.BASE $00
L00EC31:
	adc #$03.b
	beq L00EC31.b
L00EC35:
	pha
.ACCU 16
	rep #$20
	lda [$00.b],Y
	iny
	iny
	tax
	lda [$00.b],Y
	iny
	iny
	sta APUIO2.w		; APU I/O Port 2
.ACCU 8
	sep #$20
	cpx #$0001.w
	lda #$00.b
	rol A
	sta APUIO1.w		; APU I/O Port 1
	adc #$7F.b
	pla
	sta APUIO0.w		; APU I/O Port 0
L00EC55:
	cmp $2140.w
	bne L00EC55.b
	bvs L00EC0F.b
	plp
	rts

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	sta $00.b		; 85 00
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	lda $ECE7.w,Y		; B9 E7 EC
	sta $00.b		; 85 00
	lda $ECE9.w,Y		; B9 E9 EC
	sta $02.b		; 85 02
	jsr $EBD4.w		; 20 D4 EB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$0000.w		; A0 00 00
	lda #$BBAA.w		; A9 AA BB
	cmp $2140.w		; CD 40 21
	bne  -5.b		; D0 FB
.ACCU 8
	sep #$20		; E2 20
	lda #$CC.b		; A9 CC
	bra  38.b		; 80 26
	lda [$00.b],Y		; B7 00
	iny		; C8
	xba		; EB
	lda #$00.b		; A9 00
	bra  11.b		; 80 0B
	xba		; EB
	lda [$00.b],Y		; B7 00
	iny		; C8
	xba		; EB
	cmp $2140.w		; CD 40 21
	bne  -5.b		; D0 FB
	inc A		; 1A
.ACCU 16
	rep #$20		; C2 20
	sta APUIO0.w		; 8D 40 21
.ACCU 8
	sep #$20		; E2 20
	dex		; CA
	bne -21.b		; D0 EB
	cmp $2140.w		; CD 40 21
	bne  -5.b		; D0 FB
	adc #$03.b		; 69 03
	beq  -4.b		; F0 FC
	pha		; 48
.ACCU 16
	rep #$20		; C2 20
	lda [$00.b],Y		; B7 00
	bne   2.b		; D0 02
	stz $10.b		; 64 10
	iny		; C8
	iny		; C8
	tax		; AA
	lda [$00.b],Y		; B7 00
	iny		; C8
	iny		; C8
	clc		; 18
	adc $10.b		; 65 10
	sta APUIO2.w		; 8D 42 21
.ACCU 8
	sep #$20		; E2 20
	cpx #$0001.w		; E0 01 00
	lda #$00.b		; A9 00
	rol A		; 2A
	sta APUIO1.w		; 8D 41 21
	adc #$7F.b		; 69 7F
	pla		; 68
	sta APUIO0.w		; 8D 40 21
	cmp $2140.w		; CD 40 21
	bne  -5.b		; D0 FB
	bvs -84.b		; 70 AC
	jsr L00EBAE.w		; 20 AE EB
	plb		; AB
	rtl		; 6B

	sbc $FF00FF.l,X		; FF FF 00 FF
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	sbc $1C1900.l,X		; FF 00 19 1C
	sbc [$21.b]		; E7 21
	lda $E7.b		; A5 E7
	tsb $26.b		; 04 26
	sbc [$FF.b]		; E7 FF
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	sbc $2C3500.l,X		; FF 00 35 2C
	sbc [$C3.b]		; E7 C3
	lda ($E7.b)		; B2 E7
	sbc $E72E.w,X		; FD 2E E7
	cmp $B2.b,S		; C3 B2
	sbc [$8C.b]		; E7 8C
	and ($E7.b)		; 32 E7
	sbc $7000FF.l,X		; FF FF 00 70
	and [$E7.b],Y		; 37 E7
	sbc $C000FF.l,X		; FF FF 00 C0
	tsa		; 3B
	sbc [$FF.b]		; E7 FF
	sbc $422500.l,X		; FF 00 25 42
	sbc [$C3.b]		; E7 C3
	lda ($E7.b)		; B2 E7
	adc $4D.b		; 65 4D
	sbc [$FF.b]		; E7 FF
	sbc $582D00.l,X		; FF 00 2D 58
	sbc [$C3.b]		; E7 C3
	lda ($E7.b)		; B2 E7
	stp		; DB
	rts		; 60

	sbc [$21.b]		; E7 21
	lda $E7.b		; A5 E7
	ora $6A.b,X		; 15 6A
	sbc [$21.b]		; E7 21
	lda $E7.b		; A5 E7
	and ($74.b,X)		; 21 74
	sbc [$FF.b]		; E7 FF
	sbc $7F5600.l,X		; FF 00 56 7F
	sbc [$21.b]		; E7 21
	lda $E7.b		; A5 E7
	lda ($88.b),Y		; B1 88
	sbc [$64.b]		; E7 64
	ldx $48E7.w,Y		; BE E7 48
	bcc -25.b		; 90 E7
	sbc $8700FF.l,X		; FF FF 00 87
	sta $FFE7.w,Y		; 99 E7 FF
	sbc $128500.l,X		; FF 00 85 12
	sbc [$64.b]		; E7 64
	ldx $C0E7.w,Y		; BE E7 C0
	lda $E7.b,S		; A3 E7
	sbc $0300FF.l,X		; FF FF 00 03
	and $E6.b,S		; 23 E6
	sbc $1900FF.l,X		; FF FF 00 19
	lsr A		; 4A
	inc $FF.b		; E6 FF
	sbc $69CD00.l,X		; FF 00 CD 69
	inc $FF.b		; E6 FF
	sbc $832400.l,X		; FF 00 24 83
	inc $FF.b		; E6 FF
	sbc $A02300.l,X		; FF 00 23 A0
	inc $FF.b		; E6 FF
	sbc $BE5D00.l,X		; FF 00 5D BE
	inc $FF.b		; E6 FF
	sbc $D23800.l,X		; FF 00 38 D2
	inc $FF.b		; E6 FF
	sbc $DD2500.l,X		; FF 00 25 DD
	inc $FF.b		; E6 FF
	sbc $000000.l,X		; FF 00 00 00
	sbc [$FF.b]		; E7 FF
	sbc $000000.l,X		; FF 00 00 00
	sbc $FF.b		; E5 FF
	sbc $239300.l,X		; FF 00 93 23
	sbc $FF.b		; E5 FF
	sbc $397000.l,X		; FF 00 70 39
	sbc $FF.b		; E5 FF
	sbc $5B9200.l,X		; FF 00 92 5B
	sbc $FF.b		; E5 FF
	sbc $7C1600.l,X		; FF 00 16 7C
	sbc $FF.b		; E5 FF
	sbc $9B3200.l,X		; FF 00 32 9B
	sbc $FF.b		; E5 FF
	sbc $BBAD00.l,X		; FF 00 AD BB
	sbc $FF.b		; E5 FF
	sbc $DD7E00.l,X		; FF 00 7E DD
	sbc $FF.b		; E5 FF
	sbc $000000.l,X		; FF 00 00 00
	inc $FF.b		; E6 FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $1108.w		; 0C 08 11
	sec		; 38
	mvp $20,$33		; 44 33 20
	sta $00.b,X		; 95 00
	dey		; 88
	wai		; CB
	dex		; CA
	cop $E5.b		; 02 E5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $81.b,X		; 15 81
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	jsr $0208.w		; 20 08 02
	jsr $0008.w		; 20 08 00
	brk $20.b		; 00 20
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $2800.w		; 20 00 28
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	php		; 08
	rti		; 40

	brk $08.b		; 00 08
	rti		; 40

	dex		; CA
	rol A		; 2A
	tsb $38.b		; 04 38
	bcs -108.b		; B0 94
	bcc  33.b		; 90 21
	sta ($31.b,X)		; 81 31
	sec		; 38
	jmp $0C00.w		; 4C 00 0C
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($40.b,X)		; 01 40
	eor ($00.b,X)		; 41 00
	rti		; 40

	bpl -102.b		; 10 9A
	sty $00.b,X		; 94 00
	ora ($00.b),Y		; 11 00
	rti		; 40

	ldy #$0600.w		; A0 00 06
	brk $02.b		; 00 02
	cmp #$00.b		; C9 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bra -128.b		; 80 80
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	tsb $00.b		; 04 00
	bra -128.b		; 80 80
	bit $80.b		; 24 80
	brk $50.b		; 00 50
	sta ($58.b)		; 92 58
	brk $21.b		; 00 21
	ora ($80.b)		; 12 80
	cmp ($10.b,X)		; C1 10
	pla		; 68
	dec $00.b,X		; D6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $12.b		; 02 12
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	cpy #$8004.w		; C0 04 80
	brk $42.b		; 00 42
	sty $82.b		; 84 82
	eor ($00.b)		; 52 00
	dex		; CA
	dey		; 88
	bra -110.b		; 80 92
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	sbc $FEF5FF.l,X		; FF FF F5 FE
	plx		; FA
	sbc $9FFF7F.l,X		; FF 7F FF 9F
	sbc $FE99F6.l,X		; FF F6 99 FE
	sbc $FDAF8D.l,X		; FF 8D AF FD
	sbc $B6FFFF.l,X		; FF FF FF B6
	inc $FF.b,X		; F6 FF
	sbc $3FFFFE.l		; EF FE FF 3F
	sbc $E6FF5E.l,X		; FF 5E FF E6
	eor ($F7.b,S),Y		; 53 F7
	sbc $FF77.w,Y		; F9 77 FF
	jsr ($AEE7.w,X)		; FC E7 AE
	adc [$7F.b],Y		; 77 7F
	sbc $B7FF.w,X		; FD FF B7
	stz $C3D3.w,X		; 9E D3 C3
	lda [$FF.b],Y		; B7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l		; EF FB FF FF
	sbc $FFEFFE.l,X		; FF FE EF FF
	sbc $FFF9FF.l,X		; FF FF F9 FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$CF.b],Y		; F7 CF
	sbc $FDFFF7.l,X		; FF F7 FF FD
	cmp $D7F7E6.l,X		; DF E6 F7 D7
	sbc $CF.b,S		; E3 CF
	xce		; FB
	adc $F77FFF.l,X		; 7F FF 7F F7
	tsx		; BA
	sbc $6EFFFF.l,X		; FF FF FF 6E
	sbc $FF76FC.l,X		; FF FC 76 FF
	sbc $FBDEFD.l,X		; FF FD DE FB
	tda		; 7B
	sbc $FEFBFF.l,X		; FF FF FB FE
	xce		; FB
	sbc $FDFF37.l,X		; FF 37 FF FD
	sbc ($FE.b),Y		; F1 FE
	cmp $FFFBBF.l,X		; DF BF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF3BFF.l,X		; FF FF 3B FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FD.b],Y		; F7 FD
	sbc $F7F75F.l,X		; FF 5F F7 F7
	inc $5FEF.w,X		; FE EF 5F
	sbc #$56.b		; E9 56
	adc $FFFF.w		; 6D FF FF
	phx		; DA
	adc $FF.b,X		; 75 FF
	inc $FFF7.w,X		; FE F7 FF
	sbc [$B4.b],Y		; F7 B4
	lda $DEDF76.l,X		; BF 76 DF DE
	sbc ($FF.b),Y		; F1 FF
	xce		; FB
	cmp $DDD57F.l,X		; DF 7F D5 DD
	adc $48785F.l,X		; 7F 5F 78 48
	sbc $BFF5ED.l,X		; FF ED F5 BF
	sbc $FFFE.w,Y		; F9 FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc ($FD.b,S),Y		; F3 FD
	sbc $FFFEFE.l,X		; FF FE FE FF
	sta ($FD.b,S),Y		; 93 FD
	sbc $FFFBFE.l		; EF FE FB FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $ABEFFF.l,X		; FF FF EF AB
	sbc $FEAF7D.l,X		; FF 7D AF FE
	ldy $F8F6.w,X		; BC F6 F8
	sbc $FBFFF7.l,X		; FF F7 FF FB
	sbc $AFFFFF.l,X		; FF FF FF AF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FAEFEF.l,X		; FF EF EF FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	xce		; FB
	sbc $6BF7FF.l,X		; FF FF F7 6B
	xba		; EB
	sbc $F7767F.l		; EF 7F 76 F7
	cmp [$44.b],Y		; D7 44
	sbc $74.b,X		; F5 74
	cmp $EBF9.w,X		; DD F9 EB
	ldx $BEBF.w,Y		; BE BF BE
	sta $F6EFF9.l,X		; 9F F9 EF F6
	cmp $BEF2B6.l,X		; DF B6 F2 BE
	xce		; FB
	sbc ($DE.b,S),Y		; F3 DE
	ora $FD7DFF.l,X		; 1F FF 7D FD
	sbc $B7EFFB.l,X		; FF FB EF B7
	and $BABFF7.l,X		; 3F F7 BF BA
	sbc [$9F.b],Y		; F7 9F
	txs		; 9A
	sbc [$3F.b]		; E7 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $D7BFD7.l,X		; FF D7 BF D7
	dec $7BFF.w,X		; DE FF 7B
	xce		; FB
	dec $565B.w		; CE 5B 56
	sbc [$FF.b],Y		; F7 FF
	sbc $F7DDFF.l,X		; FF FF DD F7
	stp		; DB
	sbc $BFFFB7.l,X		; FF B7 FF BF
	plx		; FA
	sta $77FFDF.l,X		; 9F DF FF 77
	lda $DFFFFF.l,X		; BF FF FF DF
	sbc ($7F.b,S),Y		; F3 7F
	lda [$FB.b],Y		; B7 FB
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $F8FFDF.l		; EF DF FF F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FFFF.w,X		; FE FF FF
	inc $FFF9.w,X		; FE F9 FF
	cmp $EFFE.w,X		; DD FE EF
	sbc $57F7EB.l		; EF EB F7 57
	sbc $1FDA9F.l,X		; FF 9F DA 1F
	sbc $FFFFEF.l,X		; FF EF FF FF
	tyx		; BB
	xba		; EB
	sbc $97FF7B.l,X		; FF 7B FF 97
	sbc $BFFCFF.l,X		; FF FF FC BF
	xce		; FB
	lda ($FD.b)		; B2 FD
	sbc $7FFF76.l,X		; FF 76 FF 7F
	xce		; FB
	sbc $EB77FA.l,X		; FF FA 77 EB
	inc $FB3D.w,X		; FE 3D FB
	cmp $E2B6.w,X		; DD B6 E2
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFE7FF.l,X		; FF FF E7 BF
	xce		; FB
	sbc $7FFF7C.l,X		; FF 7C FF 7F
	sbc $FFB7BF.l,X		; FF BF B7 FF
	ora $BB76.w,X		; 1D 76 BB
	sbc $FFFFFE.l,X		; FF FE FF FF
	cmp $FFEBFF.l,X		; DF FF EB FF
	sbc $9FFFEF.l,X		; FF EF FF 9F
	sbc [$FD.b],Y		; F7 FD
	xba		; EB
	eor $FFFFEF.l,X		; 5F EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BEBFFF.l,X		; FF FF BF BE
	inc $FFDF.w,X		; FE DF FF
	and $FFFF3F.l,X		; 3F 3F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFF7FF.l,X		; DF FF F7 FF
	adc $DF7BFF.l,X		; 7F FF 7B DF
	sbc $DFD7FA.l,X		; FF FA D7 DF
	cmp $7BFEF9.l		; CF F9 FE 7B
	lda $FFAE.w,X		; BD AE FF
	sbc $EAFDFF.l,X		; FF FF FD EA
	sta ($9E.b,S),Y		; 93 9E
	inc $9BEF.w,X		; FE EF 9B
	tda		; 7B
	sbc $EDBDE9.l		; EF E9 BD ED
	sbc [$FF.b]		; E7 FF
	sbc $FBF97F.l		; EF 7F F9 FB
	sbc $F7F9FF.l,X		; FF FF F9 F7
	tyx		; BB
	ldx $35F7.w		; AE F7 35
	sbc $FF65F7.l		; EF F7 65 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFBB.l,X		; FF BB FF FB
	sbc $FFDE7E.l,X		; FF 7E DE FF
	cmp $7FFDFF.l,X		; DF FF FD 7F
	ror $FF.b,X		; 76 FF
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	cmp [$FF.b],Y		; D7 FF
	xce		; FB
	sbc $FFDF.w,X		; FD DF FF
	inc $FFEF.w		; EE EF FF
	adc ($FE.b),Y		; 71 FE
	sbc $FF7FF7.l,X		; FF F7 7F FF
	sbc $FBEFFB.l,X		; FF FB EF FB
	sbc [$FE.b],Y		; F7 FE
	adc $FA3EFF.l,X		; 7F FF 3E FA
	adc $FFFFFF.l		; 6F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $FFFFEB.l,X		; FF EB FF FF
	cmp $B7C7FF.l,X		; DF FF C7 B7
	sbc [$FD.b],Y		; F7 FD
	sbc $EE7C6F.l,X		; FF 6F 7C EE
	xce		; FB
	sbc [$3D.b],Y		; F7 3D
	sbc $FE37BA.l,X		; FF BA 37 FE
	sbc $BFFFFF.l,X		; FF FF FF BF
	xce		; FB
	tda		; 7B
	inc $FFE7.w		; EE E7 FF
	adc $F77B6F.l,X		; 7F 6F 7B F7
	sbc $FF7B4D.l,X		; FF 4D 7B FF
	xce		; FB
	cmp $97FDFF.l,X		; DF FF FD 97
	sbc $FFBDD7.l,X		; FF D7 BD FF
	jmp $E72FFF.l		; 5C FF 2F E7
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	adc ($EF.b)		; 72 EF
	inc $36AF.w		; EE AF 36
	inc $7FFF.w		; EE FF 7F
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $E5ECFF.l,X		; FF FF EC E5
	sbc $DD.b,X		; F5 DD
	sbc $FCEE.w,X		; FD EE FC
	lda $FF3D5C.l,X		; BF 5C 3D FF
	sbc $BFEEBF.l,X		; FF BF EE BF
	sbc $DE7FF6.l,X		; FF F6 7F DE
	sbc $FFFFC7.l		; EF C7 FF FF
	xce		; FB
	adc $FF3D.w,Y		; 79 3D FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFBFF.l,X		; FF FF FB FE
	sbc $FFFFFF.l		; EF FF FF FF
	lda $FEFFFB.l,X		; BF FB FF FE
	sbc $FBEBFF.l,X		; FF FF EB FB
	lda $DFF7F7.l,X		; BF F7 F7 DF
	adc $DFEF.w,X		; 7D EF DF
	sbc $EFFBAC.l,X		; FF AC FB EF
	sbc $EF7B.w,X		; FD 7B EF
	and $5FFEFF.l,X		; 3F FF FE 5F
	eor $FBFD7B.l,X		; 5F 7B FD FB
	adc ($F7.b,S),Y		; 73 F7
	sbc $BFFDEA.l,X		; FF EA FD BF
	ldx $F7.b,Y		; B6 F7
	sbc $FFBFBF.l		; EF BF BF FF
	inc $CFBF.w,X		; FE BF CF
	eor $F6F7DF.l,X		; 5F DF F7 F6
	sbc $F7FBBF.l,X		; FF BF FB F7
	rtl		; 6B

	and $FF.b,S		; 23 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFF33F.l,X		; FF 3F F3 FF
	sbc [$BD.b],Y		; F7 BD
	lda $FFAFFF.l,X		; BF FF AF FF
	cmp ($EF.b,S),Y		; D3 EF
	phx		; DA
	sta $FF6E.w,X		; 9D 6E FF
	lda $FFF7FF.l,X		; BF FF F7 FF
	sbc $EAF7.w,X		; FD F7 EA
	and $8DF7FC.l,X		; 3F FC F7 8D
	inc $BE7F.w,X		; FE 7F BE
	sbc $FEBFFF.l,X		; FF FF BF FE
	cmp $DFDFFD.l,X		; DF FD DF DF
	cmp $DF7CAE.l,X		; DF AE 7C DF
	dec $F75C.w		; CE 5C F7
	and $FFFFDF.l		; 2F DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFE7F.l,X		; 7F 7F FE FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $DF7D.w,X		; FE 7D DF
	sbc $DF9EFD.l,X		; FF FD 9E DF
	xce		; FB
	sbc $E7EBEF.l,X		; FF EF EB E7
	sbc $F6BFFF.l		; EF FF BF F6
	sbc $FFDB79.l		; EF 79 DB FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $61FDD7.l,X		; FF D7 FD 61
	inc $FCDE.w		; EE DE FC
	sbc $F0FF34.l,X		; FF 34 FF F0
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $BE1FF3.l,X		; FF F3 1F BE
	sbc $BEF75F.l		; EF 5F F7 BE
	sbc ($78.b,S),Y		; F3 78
	tda		; 7B
	inc $FF.b,X		; F6 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $CFEFBD.l,X		; FF BD EF CF
	sbc $FFFE.w,Y		; F9 FE FF
	adc $7B7B1F.l,X		; 7F 1F 7B 7B
	lda $FFFFF3.l,X		; BF F3 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $CB3F.w,X		; FD 3F CB
	sbc ($FD.b)		; F2 FD
	sbc $F7BF9F.l,X		; FF 9F BF F7
	eor $FFFD9B.l		; 4F 9B FD FF
	sbc $FF7DBF.l,X		; FF BF 7D FF
	and $FFFEDF.l,X		; 3F DF FE FF
	xce		; FB
	lda $7FF7FF.l		; AF FF F7 7F
	rol $FF.b,X		; 36 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0A.b		; 02 0A
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	pha		; 48
	tsb $41.b		; 04 41
	cpy #$4091.w		; C0 91 40
	eor #$B4.b		; 49 B4
	ora ($90.b,X)		; 01 90
	rts		; 60

	sta ($68.b,X)		; 81 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	bit $00.b		; 24 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $05.b		; 00 05
.INDEX 16
	rep #$10		; C2 10
	tsb $28.b		; 04 28
	ldy $31.b		; A4 31
	php		; 08
	bpl   1.b		; 10 01
	rts		; 60

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	brk $41.b		; 00 41
	jsr $0040.w		; 20 40 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	bra -127.b		; 80 81
	rti		; 40

	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($44.b,X)		; 01 44
	bpl   0.b		; 10 00
	jsr $0820.w		; 20 20 08
	php		; 08
	mvn $09,$41		; 54 41 09
	clc		; 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	tsb $00.b		; 04 00
	bpl   0.b		; 10 00
	brk $30.b		; 00 30
	ora #$82.b		; 09 82
	brk $0A.b		; 00 0A
	ora #$00.b		; 09 00
	eor ($00.b,X)		; 41 00
	brk $24.b		; 00 24
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsl $000808.l		; 22 08 08 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	ora $53.b,S		; 03 53
	lda #$0A.b		; A9 0A
	tsb $40.b		; 04 40
	sta $0244.w		; 8D 44 02
	bra   5.b		; 80 05
	ora $03.b,X		; 15 03
	rts		; 60

	adc #$0B.b		; 69 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora #$04.b		; 09 04
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $11.b		; 04 11
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
	brk $20.b		; 00 20
	rti		; 40

	brk $01.b		; 00 01
	pha		; 48
	brk $42.b		; 00 42
	sta ($00.b,X)		; 81 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $50.b		; 00 50
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	bit $80.b		; 24 80
	rts		; 60

	bpl   6.b		; 10 06
	rti		; 40

	lda $31.b		; A5 31
	mvp $A0,$C1		; 44 C1 A0
	ldy $A4.b		; A4 A4
	tsb $26.b		; 04 26
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	rti		; 40

	dey		; 88
	jsl $086000.l		; 22 00 60 08
	jsr $4601.w		; 20 01 46
	php		; 08
	and $40.b		; 25 40
	bcc -128.b		; 90 80
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
	brk $02.b		; 00 02
	bra   8.b		; 80 08
	brk $20.b		; 00 20
	rti		; 40

	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	jsr $2000.w		; 20 00 20
	jsr $0040.w		; 20 40 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $90.b		; 00 90
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $08.b		; 00 08
	cop $91.b		; 02 91
	ora $E8.b		; 05 E8
	stx $22.b		; 86 22
	plp		; 28
	eor $60C05C.l		; 4F 5C C0 60
	sta $F0.b,S		; 83 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	sty $04.b		; 84 04
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bra   1.b		; 80 01
	bra -96.b		; 80 A0
	brk $00.b		; 00 00
	ora ($64.b,X)		; 01 64
	brk $80.b		; 00 80
	bra  68.b		; 80 44
.INDEX 16
	rep #$90		; C2 90
	asl A		; 0A
	bne   8.b		; D0 08
	brk $22.b		; 00 22
	ldy $80.b		; A4 80
	ldx $0000.w		; AE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra   4.b		; 80 04
	sty $00.b		; 84 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr L000000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bpl  64.b		; 10 40
	php		; 08
	ora ($00.b,X)		; 01 00
	jsr L000000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $10.b		; 00 10
	php		; 08
	bvc -70.b		; 50 BA
	tsb $07.b		; 04 07
	clc		; 18
	rti		; 40

	brk $26.b		; 00 26
	bra  16.b		; 80 10
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $20.b		; 04 20
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  24.b		; 10 18
	sty $00.b,X		; 94 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	and ($60.b,X)		; 21 60
	tsb $00.b		; 04 00
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	bpl  80.b		; 10 50
	cmp ($00.b,X)		; C1 00
	tsb $82.b		; 04 82
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	brk $08.b		; 00 08
	ora ($00.b)		; 12 00
	bvc   8.b		; 50 08
	brk $01.b		; 00 01
	bit $08.b		; 24 08
	brk $40.b		; 00 40
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora ($80.b,X)		; 01 80
	cop $08.b		; 02 08
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
	ora #$01.b		; 09 01
	brk $00.b		; 00 00
	ldx $44.b,Y		; B6 44
	lda ($40.b,X)		; A1 40
	brk $80.b		; 00 80
	jsl $1C0880.l		; 22 80 08 1C
	lda $10.b,S		; A3 10
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	sta ($00.b,X)		; 81 00
	rti		; 40

	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

	jsr L000000.w		; 20 00 00
	cop $00.b		; 02 00
	bra -118.b		; 80 8A
	ldy #$0800.w		; A0 00 08
	phx		; DA
	brk $49.b		; 00 49
	tsb $02.b		; 04 02
	eor $04A082.l		; 4F 82 A0 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	jsr L000000.w		; 20 00 00
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $20.b		; 04 20
	brk $08.b		; 00 08
	jsr $10A0.w		; 20 A0 10
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	stz $8080.w		; 9C 80 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra  40.b		; 80 28
	brk $90.b		; 00 90
	brk $8C.b		; 00 8C
	cmp ($2A.b,S),Y		; D3 2A
	.db $50		; Opcode overrunning section
L00FF80:
	sei		; Disable interrupts
	clc		; Clear carry
	xce		; Exchange carry bit to set emulation or native mode
.ACCU 16
.INDEX 16
	rep #$30
	ldx #$01FF.w
	txs
	lda #$0000.w
	tad
.ACCU 8
	sep #$20
	lda #$01.b
	sta MEMSEL.w		; ROM Access Speed
	lda #$8F.b
	sta INIDSP.w		; Screen Display
	lda #$00.b
	sta NMITIMEN.w		; Interrupt Enable Flags
	jsl L808000.l
	nop
	nop
	bra L00FF80.b
	jmp L8098DB.l
	jmp L80D481.l
	bra  -2.b		; 80 FE
.ENDS
