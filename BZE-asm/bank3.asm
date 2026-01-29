.BANK 3 SLOT 0
.ORG $0000

.SECTION "Bank3" FORCE

	cmp $FE.b		; C5 FE
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($0CFF.w,X)		; FC FF 0C
	inc $D7F8.w,X		; FE F8 D7
	sta ($0D.b),Y		; 91 0D
	sta ($0D.b)		; 92 0D
	sta ($BF.b,S),Y		; 93 BF
	sbc $0DD20D.l,X		; FF 0D D2 0D
	cmp ($0D.b,S),Y		; D3 0D
	pei ($0D.b)		; D4 0D
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	and ($94.b),Y		; 31 94
	ora $0D95.w		; 0D 95 0D
	stx $0D.b,Y		; 96 0D
	sta [$7F.b],Y		; 97 7F
	sbc $0DD50D.l,X		; FF 0D D5 0D
	dec $0D.b,X		; D6 0D
	cmp [$0D.b],Y		; D7 0D
	cld		; D8
	ldx $2EF8.w,Y		; BE F8 2E
	tya		; 98
	ora $0D99.w		; 0D 99 0D
	txs		; 9A
	ora $FBFF.w		; 0D FF FB
	txy		; 9B
	ora $0D9C.w		; 0D 9C 0D
	cmp $DA0D.w,Y		; D9 0D DA
	ora $0DDB.w		; 0D DB 0D
	jmp.w [$F8C0]		; DC C0 F8
	rol $0D9D.w		; 2E 9D 0D
	stz $DFFF.w,X		; 9E FF DF
	ora $0D9F.w		; 0D 9F 0D
	ldy #$A10D.w		; A0 0D A1
	ora $0DDD.w		; 0D DD 0D
	dec $DF0D.w,X		; DE 0D DF
	ora $C0E0.w		; 0D E0 C0
	sed		; F8
	rol $FFFF.w		; 2E FF FF
	ldx #$A30D.w		; A2 0D A3
	ora $0DA4.w		; 0D A4 0D
	lda $0D.b		; A5 0D
	ldx $0D.b		; A6 0D
	sbc ($0D.b,X)		; E1 0D
	sep #$0D		; E2 0D
	sbc $0D.b,S		; E3 0D
	inc $E4FF.w,X		; FE FF E4
	cpy #$2EF8.w		; C0 F8 2E
	lda [$0D.b]		; A7 0D
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	tax		; AA
	ora $0DAB.w		; 0D AB 0D
	sbc $0D.b		; E5 0D
	inc $F7.b		; E6 F7
	sbc $0DE70D.l,X		; FF 0D E7 0D
	inx		; E8
	cpy #$2EF8.w		; C0 F8 2E
	ldy $AD0D.w		; AC 0D AD
	ora $0DAE.w		; 0D AE 0D
	lda $0DB00D.l		; AF 0D B0 0D
	lda $0DE9FF.l,X		; BF FF E9 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	cpx $F07E.w		; EC 7E F0
	bmi -79.b		; 30 B1
	ora $0DB2.w		; 0D B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ldy $7F.b,X		; B4 7F
	sbc $0DED0D.l,X		; FF 0D ED 0D
	inc $EF0D.w		; EE 0D EF
	ora $C0F0.w		; 0D F0 C0
	sed		; F8
	rol $0DB5.w		; 2E B5 0D
	ldx $0D.b,Y		; B6 0D
	lda [$0D.b],Y		; B7 0D
	sbc $0DB8DF.l,X		; FF DF B8 0D
	lda $F10D.w,Y		; B9 0D F1
	ora $0DF2.w		; 0D F2 0D
	sbc ($0D.b,S),Y		; F3 0D
	pea $980D.w		; F4 0D 98
	eor $F8C0.w		; 4D C0 F8
	pld		; 2B
	sbc $0DBAFF.l,X		; FF FF BA 0D
	tyx		; BB
	ora $0DBC.w		; 0D BC 0D
	lda $BE0D.w,X		; BD 0D BE
	ora $0DF5.w		; 0D F5 0D
	inc $0D.b,X		; F6 0D
	sbc [$0D.b],Y		; F7 0D
	xce		; FB
	sbc $F90DF8.l,X		; FF F8 0D F9
	ror $2AF8.w,X		; 7E F8 2A
	ldy $BF8D.w		; AC 8D BF
	ora $0DC0.w		; 0D C0 0D
	cmp ($0D.b,X)		; C1 0D
	rep #$0D		; C2 0D
	cmp $FF.b,S		; C3 FF
	sbc $FA0D.w,X		; FD 0D FA
	ora $0DFB.w		; 0D FB 0D
	jsr ($FD0D.w,X)		; FC 0D FD
	ora $C0FE.w		; 0D FE C0
	sed		; F8
	rol A		; 2A
	cpy $0D.b		; C4 0D
	cmp $0D.b		; C5 0D
	sbc $0DC6F0.l,X		; FF F0 C6 0D
	cmp [$0D.b]		; C7 0D
	iny		; C8
	ora $0DC9.w		; 0D C9 0D
	sbc $010EC8.l,X		; FF C8 0E 01
	asl $FFF7.w		; 0E F7 FF
	cop $0E.b		; 02 0E
	ora $0E.b,S		; 03 0E
	cpy $F8.b		; C4 F8
	and $CA.b		; 25 CA
	ora $0DCB.w		; 0D CB 0D
	cpy $CD0D.w		; CC 0D CD
	ora $0DCE.w		; 0D CE 0D
	sbc $0DCFFF.l,X		; FF FF CF 0D
	bne  13.b		; D0 0D
	cmp ($0D.b),Y		; D1 0D
	tsb $0E.b		; 04 0E
	ora $0E.b		; 05 0E
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	php		; 08
	asl $C3FE.w		; 0E FE C3
	ora #$F8BE.w		; 09 BE F8
	jsl $0B0E0A.l		; 22 0A 0E 0B
	asl $0E0C.w		; 0E 0C 0E
	ora $FF0E.w		; 0D 0E FF
	ora $0EFFFF.l		; 0F FF FF 0E
	bpl  14.b		; 10 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b)		; 12 0E
	and $3E0E.w,X		; 3D 0E 3E
	asl $0E3F.w		; 0E 3F 0E
	rti		; 40

	asl $FD41.w		; 0E 41 FD
	sbc $C0420E.l,X		; FF 0E 42 C0
	sed		; F8
	jsr $0E13.w		; 20 13 0E
	trb $0E.b		; 14 0E
	ora $0E.b,X		; 15 0E
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	clc		; 18
	asl $FFFF.w		; 0E FF FF
	ora $1A0E.w,Y		; 19 0E 1A
	asl $0E1B.w		; 0E 1B 0E
	trb $430E.w		; 1C 0E 43
	asl $0E44.w		; 0E 44 0E
	eor $0E.b		; 45 0E
	lsr $0E.b		; 46 0E
	xce		; FB
	sbc $480E47.l,X		; FF 47 0E 48
	cpy #$1EF8.w		; C0 F8 1E
	ora $1E0E.w,X		; 1D 0E 1E
	asl $0E1F.w		; 0E 1F 0E
	jsr $210E.w		; 20 0E 21
	asl $FF22.w		; 0E 22 FF
	sbc $0E230E.l,X		; FF 0E 23 0E
	bit $0E.b		; 24 0E
	and $0E.b		; 25 0E
	rol $0E.b		; 26 0E
	and [$0E.b]		; 27 0E
	eor #$4A0E.w		; 49 0E 4A
	asl $7F4B.w		; 0E 4B 7F
	sbc $0E4C0E.l,X		; FF 0E 4C 0E
	eor $4E0E.w		; 4D 0E 4E
	asl $BE4F.w		; 0E 4F BE
	sed		; F8
	trb $0E28.w		; 1C 28 0E
	and #$2A0E.w		; 29 0E 2A
	asl $FFFF.w		; 0E FF FF
	pld		; 2B
	asl $0E2C.w		; 0E 2C 0E
	and $2E0E.w		; 2D 0E 2E
	asl $0E2F.w		; 0E 2F 0E
	bmi  14.b		; 30 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b)		; 32 0E
	sbc $0E50EF.l,X		; FF EF 50 0E
	eor ($0E.b),Y		; 51 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	mvn $55,$0E		; 54 0E 55
	asl $7E56.w		; 0E 56 7E
	sed		; F8
	asl $FF33.w,X		; 1E 33 FF
	sbc $0E340E.l,X		; FF 0E 34 0E
	and $0E.b,X		; 35 0E
	rol $0E.b,X		; 36 0E
	and [$0E.b],Y		; 37 0E
	sec		; 38
	asl $0E39.w		; 0E 39 0E
	dec A		; 3A
	asl $FF3B.w		; 0E 3B FF
	adc $0E3C0E.l,X		; 7F 0E 3C 0E
	eor [$0E.b],Y		; 57 0E
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	phy		; 5A
	asl $0E5B.w		; 0E 5B 0E
	jmp $555D0E.l		; 5C 0E 5D 55
	brk $C0.b		; 00 C0
	sed		; F8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	cmp ($00.b,X)		; C1 00
	beq   0.b		; F0 00
	brk $C5.b		; 00 C5
	inc $FF00.w,X		; FE 00 FF
	sed		; F8
	jsr ($0CFF.w,X)		; FC FF 0C
	inc $9FF8.w,X		; FE F8 9F
	jmp.w [$DD0D]		; DC 0D DD
	ora $FBDE.w		; 0D DE FB
	sbc [$0D.b],Y		; F7 0D
	cmp $F8CE0D.l,X		; DF 0D CE F8
	and #$0D91.w		; 29 91 0D
	sta ($0D.b)		; 92 0D
	sta ($0D.b,S),Y		; 93 0D
	sty $CE.b,X		; 94 CE
	sbc $0DE0.w,X		; FD E0 0D
	sbc $0DE19F.l		; EF 9F E1 0D
	sep #$0D		; E2 0D
	sbc $C0.b,S		; E3 C0
	sed		; F8
	rol A		; 2A
	sta $0D.b,X		; 95 0D
	stx $0D.b,Y		; 96 0D
	sta [$0D.b],Y		; 97 0D
	tya		; 98
	sbc $E4CEFB.l,X		; FF FB CE E4
	ora $0DE5.w		; 0D E5 0D
	inc $0D.b		; E6 0D
	sbc [$0D.b]		; E7 0D
	inx		; E8
	cpy #$2AF8.w		; C0 F8 2A
	sta $9A0D.w,Y		; 99 0D 9A
	sbc $9B0DFF.l,X		; FF FF 0D 9B
	ora $0D9C.w		; 0D 9C 0D
	sta $9E0D.w,X		; 9D 0D 9E
	ora $0DE9.w		; 0D E9 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	cpx $FFBF.w		; EC BF FF
	ora $0DED.w		; 0D ED 0D
	inc $DC0D.w		; EE 0D DC
	eor $F8C0.w		; 4D C0 F8
	and $9F.b		; 25 9F
	ora $0DA0.w		; 0D A0 0D
	lda ($0D.b,X)		; A1 0D
	ldx #$FFFF.w		; A2 FF FF
	ora $0DA3.w		; 0D A3 0D
	ldy $0D.b		; A4 0D
	sbc $0DF00D.l		; EF 0D F0 0D
	sbc ($0D.b),Y		; F1 0D
	sbc ($0D.b)		; F2 0D
	sbc ($0D.b,S),Y		; F3 0D
	pea $FFFD.w		; F4 FD FF
	ora $7CF5.w		; 0D F5 7C
	sed		; F8
	bit $A5.b		; 24 A5
	ora $0DA6.w		; 0D A6 0D
	lda [$0D.b]		; A7 0D
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	tax		; AA
	ora $FFFF.w		; 0D FF FF
	plb		; AB
	ora $0DF6.w		; 0D F6 0D
	sbc [$0D.b],Y		; F7 0D
	sed		; F8
	ora $0DF9.w		; 0D F9 0D
	plx		; FA
	ora $0DFB.w		; 0D FB 0D
	jsr ($FE0D.w,X)		; FC 0D FE
	sbc $F8BEFD.l,X		; FF FD BE F8
	jsl $AD0DAC.l		; 22 AC 0D AD
	ora $0DAE.w		; 0D AE 0D
	lda $0DB00D.l		; AF 0D B0 0D
	lda ($0D.b),Y		; B1 0D
	lda ($87.b)		; B2 87
	sbc $0DFE0D.l,X		; FF 0D FE 0D
	sbc $010ECC.l,X		; FF CC 0E 01
	asl $0E02.w		; 0E 02 0E
	ora $0E.b,S		; 03 0E
	tsb $FB.b		; 04 FB
	sbc $0E050E.l,X		; FF 0E 05 0E
	cpy #$21F8.w		; C0 F8 21
	lda ($0D.b,S),Y		; B3 0D
	ldy $0D.b,X		; B4 0D
	lda $0D.b,X		; B5 0D
	ldx $0D.b,Y		; B6 0D
	lda [$0D.b],Y		; B7 0D
	clv		; B8
	sbc $B90DFF.l,X		; FF FF 0D B9
	ora $0E06.w		; 0D 06 0E
	ora [$0E.b]		; 07 0E
	php		; 08
	asl $0E09.w		; 0E 09 0E
	asl A		; 0A
	asl $0E0B.w		; 0E 0B 0E
	tsb $FFFD.w		; 0C FD FF
	asl $C00D.w		; 0E 0D C0
	sed		; F8
	jsl $BB0DBA.l		; 22 BA 0D BB
	ora $0DBC.w		; 0D BC 0D
	lda $BE0D.w,X		; BD 0D BE
	ora $0DBF.w		; 0D BF 0D
	beq  -1.b		; F0 FF
	cpy #$0ECF.w		; C0 CF 0E
	ora $0E100E.l		; 0F 0E 10 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b)		; 12 0E
	ora ($0E.b,S),Y		; 13 0E
	xce		; FB
	sbc $150E14.l,X		; FF 14 0E 15
	cpy #$22F8.w		; C0 F8 22
	cmp ($0D.b,X)		; C1 0D
	rep #$0D		; C2 0D
	cmp $0D.b,S		; C3 0D
	cpy $0D.b		; C4 0D
	cmp $0D.b		; C5 0D
	dec $FF.b		; C6 FF
	sbc $0DC70D.l,X		; FF 0D C7 0D
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	clc		; 18
	asl $0E19.w		; 0E 19 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	trb $FFFB.w		; 1C FB FF
	asl $CDDC.w		; 0E DC CD
	ldx $23F0.w,Y		; BE F0 23
	iny		; C8
	ora $0DC9.w		; 0D C9 0D
	dex		; CA
	ora $0DCB.w		; 0D CB 0D
	cpy $CD0D.w		; CC 0D CD
	sbc $1D0D5F.l,X		; FF 5F 0D 1D
	asl $0E1E.w		; 0E 1E 0E
	ora $0E200E.l,X		; 1F 0E 20 0E
	and ($0E.b,X)		; 21 0E
	jsl $82230E.l		; 22 0E 23 82
	sed		; F8
	jsl $FEFFFF.l		; 22 FF FF FE
	jsr ($0DCE.w,X)		; FC CE 0D
	cmp $0DD00D.l		; CF 0D D0 0D
	cmp ($0D.b),Y		; D1 0D
	cmp ($0D.b)		; D2 0D
	bit $0E.b		; 24 0E
	and $0E.b		; 25 0E
	cmp $D2.b,S		; C3 D2
	rol $0E.b		; 26 0E
	and [$86.b]		; 27 86
	sta $02D8.w		; 8D D8 02
	beq  38.b		; F0 26
	inc $FFD3.w,X		; FE D3 FF
	eor $0DD40D.l,X		; 5F 0D D4 0D
	cmp $0D.b,X		; D5 0D
	dec $0D.b,X		; D6 0D
	cmp [$0D.b],Y		; D7 0D
	plp		; 28
	asl $0E29.w		; 0E 29 0E
	rol A		; 2A
	dey		; 88
	sed		; F8
	plp		; 28
	sta [$FF.b]		; 87 FF
	inc $D8FE.w,X		; FE FE D8
	ora $D992.w		; 0D 92 D9
	ora $0DDA.w		; 0D DA 0D
	stp		; DB
	ora $0E2B.w		; 0D 2B 0E
	phk		; 4B
	sbc $2D0E2C.l,X		; FF 2C 0E 2D
	cpy #$30F8.w		; C0 F8 30
	inc $0E2E.w,X		; FE 2E 0E
	and $0E300E.l		; 2F 0E 30 0E
	rol $FFF7.w,X		; 3E F7 FF
	asl $0E3F.w		; 0E 3F 0E
	rti		; 40

	cpy #$32F8.w		; C0 F8 32
	and ($0E.b),Y		; 31 0E
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	bit $0E.b,X		; 34 0E
	eor ($0E.b,X)		; 41 0E
	sbc $0E42FF.l		; EF FF 42 0E
	eor $0E.b,S		; 43 0E
	mvp $F8,$BE		; 44 BE F8
	bmi  53.b		; 30 35
	asl $0E36.w		; 0E 36 0E
	and [$0E.b],Y		; 37 0E
	sec		; 38
	asl $F745.w		; 0E 45 F7
	adc $0E460E.l,X		; 7F 0E 46 0E
	eor [$40.b]		; 47 40
	sed		; F8
	bit $39.b,X		; 34 39
	asl $0E3A.w		; 0E 3A 0E
	tsa		; 3B
	asl $0E48.w		; 0E 48 0E
	eor #$FD0E.w		; 49 0E FD
	plb		; AB
	stx $F0.b		; 86 F0
	pld		; 2B
	inc $0BF8.w,X		; FE F8 0B
	bit $3D0E.w,X		; 3C 0E 3D
	asl $0E4A.w		; 0E 4A 0E
	phk		; 4B
	.db $82, $F8, $1D		; 82 F8 1D
	sbc $02FCF8.l,X		; FF F8 FC 02
	brk $FF.b		; 00 FF
	sed		; F8
	cmp ($00.b,X)		; C1 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sbc $F8FF00.l		; EF 00 FF F8
	bit $03.b		; 24 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	inc $09F8.w		; EE F8 09
	ora $0F.b,S		; 03 0F
	cli		; 58
	ora [$07.b]		; 07 07
	ora $ED1F0F.l		; 0F 0F 1F ED
	nop		; EA
	sbc $0AF8FE.l,X		; FF FE F8 0A
	.db $82, $1A, $FF		; 82 1A FF
	nop		; EA
	sbc $D2FFFF.l,X		; FF FF FF D2
	jsr ($0101.w,X)		; FC 01 01
	.db $82, $FE, $BC		; 82 FE BC
	inc $F906.w,X		; FE 06 F9
	sta ($FE.b),Y		; 91 FE
	sbc $FF01FD.l,X		; FF FD 01 FF
	ldy $007F.w,X		; BC 7F 00
	sbc $F306.w,Y		; F9 06 F3
	tsb $8FFF.w		; 0C FF 8F
	sbc $609F10.l		; EF 10 9F 60
	lda $C03F40.l,X		; BF 40 3F C0
	adc $3F3F80.l,X		; 7F 80 3F 3F
	adc $FF3ECA.l,X		; 7F CA 3E FF
	cpy #$09F8.w		; C0 F8 09
	ldy $F8.b		; A4 F8
	phd		; 0B
	inc $F8FF.w,X		; FE FF F8
	asl $0304.w		; 0E 04 03
	php		; 08
	ora [$FC.b]		; 07 FC
	ora $FE.b,S		; 03 FE
	bpl  15.b		; 10 0F
	jsr $231F.w		; 20 1F 23
	trb $304F.w		; 1C 4F 30
	lda ($09.b)		; B2 09
	tsb $6A.b		; 04 6A
	ror $FC.b		; 66 FC
	sbc $FE2FB4.l,X		; FF B4 2F FE
	dec $817E.w		; CE 7E 81
	clc		; 18
	sbc [$C1.b]		; E7 C1
	sed		; F8
	clc		; 18
	ldy #$847B.w		; A0 7B 84
	adc ($8C.b,S),Y		; 73 8C
	ora [$83.b]		; 07 83
	adc $17F8.w,Y		; 79 F8 17
	inx		; E8
	sty $DF.b		; 84 DF
	sed		; F8
	phd		; 0B
	sbc $FBFF.w,X		; FD FF FB
	xce		; FB
	lda $A0.b,S		; A3 A0
	.db $42, $F8		; 42 F8
	phd		; 0B
	ora [$FE.b]		; 07 FE
	rti		; 40

	sed		; F8
	ora $60FF.w		; 0D FF 60
	sed		; F8
	ora $442BF8.l		; 0F F8 2B 44
	sed		; F8
	tsb $11FF.w		; 0C FF 11
	inc $CC33.w		; EE 33 CC
	adc [$88.b],Y		; 77 88
	rti		; 40

	sed		; F8
	ora $F8C0.w,Y		; 19 C0 F8
	ora $8E8C40.l		; 0F 40 8C 8E
	sbc $EFFFF7.l,X		; FF F7 FF EF
	lda $DFFF14.l		; AF 14 FF DF
	cmp $88BEBE.l,X		; DF BE BE 88
	sbc ($86.b)		; F2 86
	sbc ($FE.b)		; F2 FE
	and $FE2225.l,X		; 3F 25 22 FE
	cpy $20F2.w		; CC F2 20
	sbc $61A71C.l,X		; FF 1C A7 61
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	ora $01FE.w		; 0D FE 01
	lda $FEFE.w		; AD FE FE
	lsr $F3.b		; 46 F3
	sbc ($78.b,S),Y		; F3 78
	plx		; FA
	cpy #$9E9E.w		; C0 9E 9E
	beq -16.b		; F0 F0
	cpx $02FD.w		; EC FD 02
	sbc $1FFF04.l,X		; FF 04 FF 1F
	sbc ($0C.b,S),Y		; F3 0C
	xce		; FB
	trb $66A7.w		; 1C A7 66
	inc A		; 1A
	sta $BC.b,S		; 83 BC
	ldy $7C7C.w,X		; BC 7C 7C
	sed		; F8
	sed		; F8
	inc $E82A.w,X		; FE 2A E8
	cpx #$81E0.w		; E0 E0 81
	sta ($19.b,X)		; 81 19
	ora ($7D.b,X)		; 01 7D
	bvs  -9.b		; 70 F7
	cli		; 58
	inc $FF.b,X		; F6 FF
	sed		; F8
	ora $8E2564.l		; 0F 64 25 8E
	adc $FE9EFE.l,X		; 7F FE 9E FE
	tax		; AA
	sbc ($FF.b)		; F2 FF
	eor $5A10.w,Y		; 59 10 5A
	sbc ($14.b)		; F2 14
	rts		; 60

	beq  16.b		; F0 10
	ldx #$FE25.w		; A2 25 FE
	inc $78FF.w,X		; FE FF 78
	sbc $F6F9.w,Y		; F9 F9 F6
	ora [$E1.b]		; 07 E1
	ora ($CA.b,X)		; 01 CA
	asl $1EDC.w		; 0E DC 1E
	bne  31.b		; D0 1F
	cmp $1F.b,X		; D5 1F
	sbc $1AD2FF.l,X		; FF FF D2 1A
	inx		; E8
	plp		; 28
	dey		; 88
	bra  94.b		; 80 5E
	rti		; 40

	lda ($80.b),Y		; B1 80
	lda ($80.b,X)		; A1 80
	ldy #$2080.w		; A0 80 20
	brk $9F.b		; 00 9F
	asl $80A5.w,X		; 1E A5 80
	sta [$80.b],Y		; 97 80
	tsx		; BA
	sta $FE.b,S		; 83 FE
	tda		; 7B
	cop $7F.b		; 02 7F
	cop $22.b		; 02 22
	bne 116.b		; D0 74
	ror $FA98.w,X		; 7E 98 FA
	inc $90FC.w,X		; FE FC 90
	eor $00.b,X		; 55 00
	inc $B0FE.w,X		; FE FE B0
	sty $F6.b		; 84 F6
	.db $82, $F4, $80		; 82 F4 80
	pea $F755.w		; F4 55 F7
	sty $F2.b		; 84 F2
	.db $82, $F4, $80		; 82 F4 80
	beq  17.b		; F0 11
	lda [$F0.b]		; A7 F0
	ora #$F2FA.w		; 09 FA F2
	xce		; FB
	xce		; FB
	cpx #$0FF8.w		; E0 F8 0F
	sbc ($F3.b,S),Y		; F3 F3
	sbc $E3E3FF.l,X		; FF FF E3 E3
	cmp [$D7.b],Y		; D7 D7
	lda $5F5FAF.l		; AF AF 5F 5F
	cmp $BFBFDF.l,X		; DF DF BF BF
	ror $EC7E.w,X		; 7E 7E EC
	tsb $FFFF.w		; 0C FF FF
	pea $FD14.w		; F4 14 FD
	ora #$03FD.w		; 09 FD 03
	plx		; FA
	ora ($F1.b,X)		; 01 F1
	brk $F1.b		; 00 F1
	asl A		; 0A
	sbc ($04.b),Y		; F1 04
	sta ($80.b,S),Y		; 93 80
	sbc $C0CB1F.l,X		; FF 1F CB C0
.ACCU 8
	sep #$E0		; E2 E0
	bne -48.b		; D0 D0
	bcs -76.b		; B0 B4
	rts		; 60

	ror $6460.w		; 6E 60 64
	cpx #$F1EA.w		; E0 EA F1
	adc $3F686C.l,X		; 7F 6C 68 3F
	brk $BF.b		; 00 BF
	bra 127.b		; 80 7F
	cpy #$409F.w		; C0 9F 40
	sbc $12B520.l,X		; FF 20 B5 12
	bcs -15.b		; B0 F1
	clc		; 18
	pea $F372.w		; F4 72 F3
	ora $60F362.l,X		; 1F 62 F3 60
	pea $A8F0.w		; F4 F0 A8
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	.db $62, $F2, $60		; 62 F2 60
	pea $F262.w		; F4 62 F2
	rts		; 60

	beq  15.b		; F0 0F
	inc $FFF7.w,X		; FE F7 FF
	eor [$F7.b]		; 47 F7
	inc $F6.b,X		; F6 F6
	sbc $DDED.w		; ED ED DD
	cmp $DBDB.w,X		; DD DB DB
	tyx		; BB
	tyx		; BB
	adc [$FF.b],Y		; 77 FF
	eor ($8D.b,X)		; 41 8D
	cpx #$0FF8.w		; E0 F8 0F
	ror $EE86.w		; 6E 86 EE
	inc $EC.b,X		; F6 EC
	cpx #$0FF8.w		; E0 F8 0F
	cpy #$F0D9.w		; C0 D9 F0
	sbc $60FF80.l,X		; FF 80 FF 60
	pea $6ECF.w		; F4 CF 6E
	bpl -33.b		; 10 DF
	plp		; 28
	sbc $30FBC9.l,X		; FF C9 FB 30
	sbc $D228.w		; ED 28 D2
	tsb $DD.b		; 04 DD
	asl $DA.b		; 06 DA
	ora $6E.b,S		; 03 6E
	cld		; D8
	sbc ($BF.b)		; F2 BF
	ldy $13.b		; A4 13
	brk $39.b		; 00 39
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	bit $F0.b		; 24 F0
	tsb $FFFE.w		; 0C FE FF
	sed		; F8
	ora $227F10.l		; 0F 10 7F 22
	beq  13.b		; F0 0D
	inc $FF3E.w,X		; FE 3E FF
	and $7D3D.w,X		; 3D 3D 7D
	adc $7B7B.w,X		; 7D 7B 7B
	eor $7A.b,X		; 55 7A
	sei		; 78
	cpx $F880.w		; EC 80 F8
	ora $66EA68.l		; 0F 68 EA 66
	nop		; EA
	sbc $B0BFBF.l,X		; FF BF BF B0
	bcs -97.b		; B0 9F
	jsr $F8E4.w		; 20 E4 F8
	phd		; 0B
	sed		; F8
	asl $E0.b		; 06 E0
	beq -52.b		; F0 CC
	asl $0EEE.w,X		; 1E EE 0E
	tda		; 7B
	sbc $91E8E8.l,X		; FF E8 E8 91
	cpy #$E4EF.w		; C0 EF E4
	inc $18E1.w,X		; FE E1 18
	sta ($32.b,X)		; 81 32
	sed		; F8
	.db $82, $7F, $F8		; 82 7F F8
	ora #$1506.w		; 09 06 15
	lda $F1.b,X		; B5 F1
	inc $03FF.w,X		; FE FF 03
	sbc $01FD1F.l,X		; FF 1F FD 01
	stz $8A20.w,X		; 9E 20 8A
	bpl -121.b		; 10 87
	eor #$A3C0.w		; 49 C0 A3
	cpx #$F850.w		; E0 50 F8
	mvp $1F,$C2		; 44 C2 1F
	lsr $3E1E.w		; 4E 1E 3E
	rti		; 40

	ora [$60.b]		; 07 60
	brk $30.b		; 00 30
	brk $1C.b		; 00 1C
	plb		; AB
	cmp ($35.b)		; D2 35
	ora $04.b,S		; 03 04
	beq  11.b		; F0 0B
	pea $04E2.w		; F4 E2 04
	beq  11.b		; F0 0B
	pea $A4E2.w		; F4 E2 A4
	sbc $C3FF.w,X		; FD FF C3
	ora $FB.b,S		; 03 FB
	ora [$F7.b]		; 07 F7
	ora $EF0FFF.l		; 0F FF 0F EF
	ora $821FFF.l,X		; 1F FF 1F 82
	cpx $C3FF.w		; EC FF C3
	cpx $EBE8.w		; EC E8 EB
	sbc ($E7.b,X)		; E1 E7
	sbc $EF.b,S		; E3 EF
	sbc [$EF.b]		; E7 EF
	cmp $F8FEDF.l		; CF DF FE F8
	sta [$80.b]		; 87 80
	tsb $DE.b		; 04 DE
	sec		; 38
	lda $FEDF9A.l,X		; BF 9A DF FE
	beq  63.b		; F0 3F
	phk		; 4B
	adc ($EF.b)		; 72 EF
	bra -125.b		; 80 83
	brk $39.b		; 00 39
	trb $DEFE.w		; 1C FE DE
	cmp $FFFECE.l,X		; DF CE FE FF
	cpx $CF.b		; E4 CF
	sbc $70EFC7.l		; EF C7 EF 70
	beq  56.b		; F0 38
	sec		; 38
	trb $8E1C.w		; 1C 1C 8E
	asl $FFC7.w		; 0E C7 FF
	sbc $C3A387.l,X		; FF 87 A3 C3
	cmp ($E9.b),Y		; D1 E9
	inx		; E8
	pea $7F30.w		; F4 30 7F
	clc		; 18
	sbc $06FF0C.l,X		; FF 0C FF 06
	adc $BFBF03.l,X		; 7F 03 BF BF
	lda $80DF01.l,X		; BF 01 DF 80
	sbc [$80.b]		; E7 80
	sbc ($D6.b,S),Y		; F3 D6
	beq   9.b		; F0 09
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$FFF1.w		; E0 F1 FF
	ora ($F8.b),Y		; 11 F8
	ora #$FE80.w		; 09 80 FE
	rti		; 40

	sbc $7A58D7.l,X		; FF D7 58 7A
	lda $37.b,S		; A3 37
	bvc  28.b		; 50 1C
	bit $4C03.w		; 2C 03 4C
	ora #$0607.w		; 09 07 06
	adc ($67.b),Y		; 71 67
	brk $20.b		; 00 20
	adc $8049C5.l,X		; 7F C5 49 80
	ora $C0.b,S		; 03 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	tsa		; 3B
	nop		; EA
	cpx #$09E8.w		; E0 E8 09
	inc $21FB.w,X		; FE FB 21
	ora ($3F.b,X)		; 01 3F
	cop $E0.b		; 02 E0
	inx		; E8
	ora #$0E0E.w		; 09 0E 0E
	tsb $190C.w		; 0C 0C 19
	sta ($1F.b,S),Y		; 93 1F
	inc $4A9F.w,X		; FE 9F 4A
	ora $DF2FF7.l		; 0F F7 2F DF
	eor [$AB.b],Y		; 57 AB
	sta [$7F.b]		; 87 7F
	phd		; 0B
	sbc $03.b,X		; F5 03
	inc $4C1F.w,X		; FE 1F 4C
	cmp [$CF.b]		; C7 CF
	sta [$8F.b]		; 87 8F
	and $07.b,S		; 23 07
	adc ($07.b,S),Y		; 73 07
	sbc ($03.b),Y		; F1 03
	sbc $2203.w,Y		; F9 03 22
	adc $FEF74E.l,X		; 7F 4E F7 FE
	xce		; FB
	sbc [$FF.b],Y		; F7 FF
	sbc [$FB.b],Y		; F7 FB
	sbc [$60.b],Y		; F7 60
	tya		; 98
	rol A		; 2A
	inc $F7F8.w,X		; FE F8 F7
	sbc $FF.b,S		; E3 FF
	tsb $ECFE.w		; 0C FE EC
	sbc ($FA.b)		; F2 FA
	sbc $FD.b,X		; F5 FD
	inc $FE.b,X		; F6 FE
	cpx #$7FF0.w		; E0 F0 7F
	sbc $C0D2.w,X		; FD D2 C0
	sbc ($C0.b),Y		; F1 C0
	pea $F6E0.w		; F4 E0 F6
	cpx #$E4F7.w		; E0 F7 E4
	sbc [$E6.b],Y		; F7 E6
	cpy $F8.b		; C4 F8
	pei ($20.b)		; D4 20
	bvs  32.b		; 70 20
	stz $0ECE.w		; 9C CE 0E
	sbc $8363C3.l,X		; FF C3 63 83
	cmp ($A9.b),Y		; D1 A9
	inx		; E8
	ldy $74.b,X		; B4 74
	tsx		; BA
	rts		; 60

	sbc $7F2038.l,X		; FF 38 20 7F
	sbc $3F067D.l,X		; FF 7D 06 3F
	ora $9F.b,S		; 03 9F
	ora ($A7.b,X)		; 01 A7
	brk $B3.b		; 00 B3
	brk $B9.b		; 00 B9
	jsl $F00BF8.l		; 22 F8 0B F0
	beq 124.b		; F0 7C
	jmp ($5FAF.w,X)		; 7C AF 5F
	jsr $0BF8.w		; 20 F8 0B
	cpy #$30FF.w		; C0 FF 30
	rti		; 40

	cmp $47.b,X		; D5 47
	sbc ($02.b)		; F2 02
	brk $05.b		; 00 05
	brk $0B.b		; 00 0B
	bcs -24.b		; B0 E8
	tsb $BD7F.w		; 0C 7F BD
	pla		; 68
	sbc ($3B.b)		; F2 3B
	brk $37.b		; 00 37
	brk $7F.b		; 00 7F
	jsr $F1F7.w		; 20 F7 F1
.INDEX 16
	rep #$D4		; C2 D4
	brk $17.b		; 00 17
	bpl  -2.b		; 10 FE
	sbc $ACCCD8.l,X		; FF D8 CC AC
	sbc $01FA05.l		; EF 05 FA 01
	sbc $FB02.w,Y		; F9 02 FB
	cop $F0.b		; 02 F0
	ora ($F1.b,X)		; 01 F1
	ora ($E1.b,X)		; 01 E1
	ora ($2F.b,X)		; 01 2F
	ora #$00E0.w		; 09 E0 00
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	jsl $10FEE5.l		; 22 E5 FE 10
	cmp $E1F0.w,Y		; D9 F0 E1
	lsr A		; 4A
	sbc $77FB.w,X		; FD FB 77
	xce		; FB
	sbc $BFFE7B.l,X		; FF 7B FE BF
	tda		; 7B
	ora $BB7F30.l,X		; 1F 30 7F BB
	sbc ($F7.b,X)		; E1 F7
	eor ($FB.b,X)		; 41 FB
	xba		; EB
	inc $077B.w,X		; FE 7B 07
	sta [$FE.b]		; 87 FE
	tsa		; 3B
	rol $F147.w		; 2E 47 F1
	sbc $0FFDEE.l		; EF EE FD 0F
	sbc $DEBFDE.l,X		; FF DE BF DE
	lda $FDDE.w,X		; BD DE FD
	cmp $EF8EEF.l		; CF EF 8E EF
	asl $EF.b		; 06 EF
	brk $F3.b		; 00 F3
	sbc $DE00DF.l,X		; FF DF 00 DE
	inc $AFBD.w,X		; FE BD AF
	bvs -16.b		; 70 F0
	adc $E06FD0.l		; 6F D0 6F E0
	eor $605FF3.l,X		; 5F F3 5F 60
	cmp $00FEE0.l,X		; DF E0 FE 00
	bvs  15.b		; 70 0F
	adc $5F6F4F.l		; 6F 4F 6F 5F
	and ($E1.b,X)		; 21 E1
	dey		; 88
	ora $FE9FFE.l,X		; 1F FE 9F FE
	cmp $C33F3F.l,X		; DF 3F 3F C3
	ora $FC.b,S		; 03 FC
	sta $91.b		; 85 91
	rol A		; 2A
	sbc $C13F0E.l,X		; FF 0E 3F C1
	cmp $FC.b,S		; C3 FC
	jsr ($C860.w,X)		; FC 60 C8
	phd		; 0B
	bit $F5BE.w,X		; 3C BE F5
	cmp $0CC840.l		; CF 40 C8 0C
	ora [$07.b]		; 07 07
	sta $F8E08F.l		; 8F 8F E0 F8
	ora #$10F0.w		; 09 F0 10
	sbc $E0.b		; E5 E0
	sed		; F8
	ora #$F0F0.w		; 09 F0 F0
	ora $FE74.w,X		; 1D 74 FE
	inc $C820.w,X		; FE 20 C8
	ora $0080.w		; 0D 80 00
	plp		; 28
	ora ($F5.b),Y		; 11 F5
	lda ($F7.b)		; B2 F7
	cpx #$00E0.w		; E0 E0 00
	jsr $98D8.w		; 20 D8 98
	dec $E2.b,X		; D6 E2
	adc $55.b,X		; 75 55
	sbc ($EC.b,S),Y		; F3 EC
	clv		; B8
	jsr ($F696.w,X)		; FC 96 F6
	sed		; F8
	sed		; F8
	ply		; 7A
	jsr ($E072.w,X)		; FC 72 E0
	ora $E52B.w		; 0D 2B E5
	sty $0AE8.w		; 8C E8 0A
	eor $58.b,X		; 55 58
	nop		; EA
.ACCU 16
	rep #$E8		; C2 E8
.ACCU 16
	rep #$20		; C2 20
	cld		; D8
	ora $FFE298.l		; 0F 98 E2 FF
	cmp [$D7.b],Y		; D7 D7
	brk $D8.b		; 00 D8
	ora $B5.b,X		; 15 B5
	inc $E45A.w,X		; FE 5A E4
	cli		; 58
	sep #$42		; E2 42
	cpx #$100E.w		; E0 0E 10
	cpx #$42FC.w		; E0 FC 42
.INDEX 8
	sep #$5F		; E2 5F
	eor $474F4F.l,X		; 5F 4F 4F 47
	inc $4702.w,X		; FE 02 47
	cpx $F8.b		; E4 F8
	ora #$20DF.w		; 09 DF 20
	sbc [$18.b]		; E7 18
	xce		; FB
	tsb $63.b		; 04 63
	iny		; C8
	ora $11DA.w		; 0D DA 11
	brk $44.b		; 00 44
	plp		; 28
	sei		; 78
	cpx #$80.b		; E0 80
	ldy #$C2.b		; A0 C2
	inc $FE44.w,X		; FE 44 FE
	rol $FA.b		; 26 FA
	pea $2A00.w		; F4 00 2A
	mvp $0B,$F8		; 44 F8 0B
	pei ($FE.b)		; D4 FE
	sbc $600FF8.l,X		; FF F8 0F 60
	sed		; F8
	ora $C1D284.l		; 0F 84 D2 C1
	sbc $4682FF.l		; EF FF 82 46
	lsr $B8.b		; 46 B8
	clv		; B8
	adc ($61.b,X)		; 61 61
	cpx $F8.b		; E4 F8
	phd		; 0B
	sbc $FFFF.w,X		; FD FF FF
	cop $FB.b		; 02 FB
	asl $DE.b		; 06 DE
	dec $D6D6.w,X		; DE D6 D6
	ldx $B6.b,Y		; B6 B6
	ldy $B4.b,X		; B4 B4
	adc $E96D.w		; 6D 6D E9
	sbc #$FBDA.w		; E9 DA FB
	adc $9197D8.l,X		; 7F D8 97 91
	jsl $F730D9.l		; 22 D9 30 F7
	sec		; 38
	cmp [$18.b],Y		; D7 18
	sta ($5C.b,S),Y		; 93 5C
	sta ($1C.b,S),Y		; 93 1C
	eor ($DC.b,S),Y		; 53 DC
	sed		; F8
	sbc $C7C7FA.l,X		; FF FA C7 C7
	sta $83.b,S		; 83 83
	sta $85.b		; 85 85
	lda $85.b		; A5 85
	and ($01.b,X)		; 21 01
	adc ($01.b,X)		; 61 01
	sbc ($69.b,X)		; E1 69
	jsl $F9FE02.l		; 22 02 FE F9
	asl $FC.b		; 06 FC
	ora $FE.b,S		; 03 FE
	inc $4901.w,X		; FE 01 49
	ora $0AFCFE.l,X		; 1F FE FC 0A
	cpx $F4.b		; E4 F4
	sbc $6897FC.l,X		; FF FC 97 68
	phb		; 8B
	stz $E0.b,X		; 74 E0
	ora $E7E1.w,X		; 1D E1 E7
	and [$D8.b]		; 27 D8
	and $C080C0.l,X		; 3F C0 80 C0
	ora ($60.b,S),Y		; 13 60
	brk $22.b		; 00 22
	eor $FE.b		; 45 FE
	ldy #$FE.b		; A0 FE
	mvp $FE,$E0		; 44 E0 FE
	sec		; 38
	lsr A		; 4A
	sbc $A02020.l,X		; FF 20 20 A0
	sbc $FFD298.l,X		; FF 98 D2 FF
	sbc $9867FF.l,X		; FF FF 67 98
	dec $E6F1.w		; CE F1 E6
	ora $9E07FB.l,X		; 1F FB 07 9E
	adc ($4D.b,X)		; 61 4D
	sbc ($E7.b)		; F2 E7
	xce		; FB
	sbc $F387FB.l		; EF FB 87 F3
	cop $02.b		; 02 02
	plp		; 28
	jsr ($6060.w,X)		; FC 60 60
	clc		; 18
	plx		; FA
	iny		; C8
	xce		; FB
	phx		; DA
	inc $87FF.w		; EE FF 87
	trb $09F7.w		; 1C F7 09
	cmp $D7AB23.l,X		; DF 23 AB D7
	jsr ($47FB.w,X)		; FC FB 47
	cpy $83.b		; C4 83
	adc ($FF.b)		; 72 FF
	sbc $3F81.w,X		; FD 81 3F
	and $6F.b,S		; 23 6F
	ror $CF.b		; 66 CF
	cpy $2027.w		; CC 27 20
	ora $82.b,S		; 03 82
	cmp ($7C.b),Y		; D1 7C
	brk $3E.b		; 00 3E
	bra  63.b		; 80 3F
	inc $B06F.w,X		; FE 6F B0
	eor [$A8.b],Y		; 57 A8
	sbc $FEBF48.l,X		; FF 48 BF FE
	lda [$08.b],Y		; B7 08
	tas		; 1B
	cpx $E7.b		; E4 E7
	sbc $821818.l,X		; FF 18 18 82
	cop $0A.b		; 02 0A
	cop $4A.b		; 02 4A
	.db $42, $09		; 42 09
	ora ($FE.b,X)		; 01 FE
	eor ($34.b,X)		; 41 34
	inc $E03C.w,X		; FE 3C E0
	beq  17.b		; F0 11
	asl $C4.b		; 06 C4
	sbc $DDFF.w		; ED FF DD
	cmp $D7D7.w,X		; DD D7 D7
	ora [$42.b],Y		; 17 42
	jmp ($8017.w,X)		; 7C 17 80
	bne  21.b		; D0 15
	phx		; DA
	lda [$FF.b],Y		; B7 FF
	lda [$A7.b]		; A7 A7
	ror $66.b		; 66 66
	jsl $444CA8.l		; 22 A8 4C 44
	inc $C280.w,X		; FE 80 C2
	xba		; EB
	sbc $C8E0FF.l,X		; FF FF E0 C8
	ora $FFCB77.l		; 0F 77 CB FF
	ora $7B.b,S		; 03 7B
	cmp [$7F.b],Y		; D7 7F
	sbc [$3F.b]		; E7 3F
	inc $1EEF.w		; EE EF 1E
	sta $1FAFFC.l,X		; 9F FC AF 1F
	inc $1B20.w,X		; FE 20 1B
	stp		; DB
	txy		; 9B
	txy		; 9B
	lda $C2.b,S		; A3 C2
	sbc [$C7.b],Y		; F7 C7
	inc $1E0F.w		; EE 0F 1E
	ora $3C415F.l,X		; 1F 5F 41 3C
	cmp $80FC00.l,X		; DF 00 FC 80
	inc $DA37.w,X		; FE 37 DA
	cpy $BA.b		; C4 BA
	jsr ($F1C0.w,X)		; FC C0 F1
	and $FC.b		; 25 FC
	stx $E9.b,Y		; 96 E9
	beq  -3.b		; F0 FD
	inc $E0EC.w		; EE EC E0
	ora $FF2911.l,X		; 1F 11 29 FF
	and $417F37.l,X		; 3F 37 7F 41
	cmp $B26FA2.l,X		; DF A2 6F B2
	sbc $75EF72.l		; EF 72 EF 75
	asl $06.b		; 06 06
	cpx $04.b		; E4 04
	ora $940E.w,X		; 1D 0E 94
	jsr $3222.w		; 20 22 32
	sbc $745472.l,X		; FF 72 54 74
	pei ($E1.b)		; D4 E1
	bne -50.b		; D0 CE
	lda $BFE100.l,X		; BF 00 E1 BF
	cpy #$FA.b		; C0 FA
	rol $FFC0.w,X		; 3E C0 FF
	ora $2A2F2F.l,X		; 1F 2F 2F 2A
	rol A		; 2A
	inc A		; 1A
	inc A		; 1A
	trb $14.b		; 14 14
	and $3D2D.w		; 2D 2D 3D
	and $3A3A.w,X		; 3D 3A 3A
	inc $80A5.w		; EE A5 80
	sbc $C0EE00.l		; EF 00 EE C0
	sbc #$00D8.w		; E9 D8 00
	bne -100.b		; D0 9C
	sbc ($FF.b),Y		; F1 FF
	eor $464651.l,X		; 5F 51 46 46
	cpy $C4.b		; C4 C4
	iny		; C8
	iny		; C8
	rts		; 60

	sed		; F8
	ora #$E988.w		; 09 88 E9
	inc $C2A8.w,X		; FE A8 C2
	ora $C2.b,X		; 15 C2
	bcc  -3.b		; 90 FD
	stz $EC.b,X		; 74 EC
	nop		; EA
	inx		; E8
	phd		; 0B
	jsr ($FE02.w,X)		; FC 02 FE
	sbc $3F.b,X		; F5 3F
	ora #$F201.w		; 09 01 F2
	brk $71.b		; 00 71
	ora $BB.b,S		; 03 BB
	stx $DC.b		; 86 DC
.ACCU 8
.INDEX 8
	sep #$BE		; E2 BE
	sbc $79FAFF.l,X		; FF FF FA 79
	brk $F5.b		; 00 F5
	eor $7BAF7E.l		; 4F 7E AF 7B
	phx		; DA
	adc $B6.b,X		; 75 B6
	sta $04.b,S		; 83 04
	phd		; 0B
	tsb $FF17.w		; 0C 17 FF
	adc [$18.b],Y		; 77 18
	sta [$18.b]		; 87 18
	tsb $4E.b		; 04 4E
	bra -84.b		; 80 AC
	cpy $D8.b		; C4 D8
	dey		; 88
	bcs 121.b		; B0 79
	bcc -39.b		; 90 D9
	sbc $03.b,S		; E3 03
	jsr $FE63.w		; 20 63 FE
	pei ($FE.b)		; D4 FE
	inc $FEF8.w,X		; FE F8 FE
	sei		; 78
	jmp ($FF74.w)		; 6C 74 FF
	sed		; F8
	sbc $FFF0FD.l,X		; FF FD F0 FF
	mvp $0C,$B0		; 44 B0 0C
	brk $BF.b		; 00 BF
	cmp $3257.w,X		; DD 57 32
	bcs  15.b		; B0 0F
	stx $08F2.w		; 8E F2 08
	sta $FDF5F2.l,X		; 9F F2 F5 FD
	ora ($F5.b,X)		; 01 F5
	asl $5E.b		; 06 5E
	sbc ($92.b),Y		; F1 92
	bcs   9.b		; B0 09
	trb $B086.w		; 1C 86 B0
	lda $9FFE30.l		; AF 30 FE 9F
	jsr $0EFE.w		; 20 FE 0E
	eor $3F.b,S		; 43 3F
	inc $C7D5.w,X		; FE D5 C7
	ora [$FE.b]		; 07 FE
	cmp $9FFE0F.l		; CF 0F FE 9F
	and $C9.b		; 25 C9
	tsb $C1.b		; 04 C1
	stz $8CBA.w		; 9C BA 8C
	inc $0BF8.w,X		; FE F8 0B
	sty $F8FF.w		; 8C FF F8
	phd		; 0B
	sbc $A06FC2.l,X		; FF C2 6F A0
	plb		; AB
	cld		; D8
	phx		; DA
	inc $0F.b		; E6 0F
	bmi  63.b		; 30 3F
	ldx #$E1.b		; A2 E1
	plx		; FA
	phd		; 0B
	and $340E.w		; 2D 0E 34
	ora $01D970.l,X		; 1F 70 D9 01
	ldx $E6.b,Y		; B6 E6
	sbc $0CE3.w,Y		; F9 E3 0C
	sbc $2A.b		; E5 2A
	ldy #$BF.b		; A0 BF
	lsr $EC.b		; 46 EC
	inc $9CF0.w,X		; FE F0 9C
	cpx #$0E.b		; E0 0E
	cpx #$E8.b		; E0 E8
	ora $E7C91B.l		; 0F 1B C9 E7
	eor $FF.b,X		; 55 FF
	adc $3737FF.l		; 6F FF 37 37
	sty $F8.b		; 84 F8
	phd		; 0B
	jsr ($84F2.w,X)		; FC F2 84
	sed		; F8
	phd		; 0B
	sbc $F2FCFF.l,X		; FF FF FC F2
	clc		; 18
	and [$FC.b]		; 27 FC
	ora ($76.b,S),Y		; 13 76
	adc $0A83.w,X		; 7D 83 0A
	jmp $430D.w		; 4C 0D 43
	cmp $54.b,S		; C3 54
	stz $E4.b,X		; 74 E4
	cmp $8C60.w		; CD 60 8C
	jsl $00F4F1.l		; 22 F1 F4 00
	sbc ($C4.b)		; F2 C4
	lda $FF8B.w,Y		; B9 8B FF
	lda $C03FAE.l,X		; BF AE 3F C0
	ora $FC03F0.l		; 0F F0 03 FC
	sta ($7E.b,X)		; 81 7E
	bra 126.b		; 80 7E
	rti		; 40

	ldy $B8C0.w,X		; BC C0 B8
	inc $FF40.w,X		; FE 40 FF
	iny		; C8
	ora $09F886.l		; 0F 86 F8 09
	and $684740.l,X		; 3F 40 47 68
	adc [$70.b],Y		; 77 70
	stx $57F1.w		; 8E F1 57
	sbc $03FF1B.l,X		; FF 1B FF 03
	sta $05.b,S		; 83 05
	sbc $20.b,X		; F5 20
	sed		; F8
	bra -16.b		; 80 F0
	phd		; 0B
	jmp ($FFF3.w,X)		; 7C F3 FF
	sbc $0CF8FF.l,X		; FF FF F8 0C
	sei		; 78
	sei		; 78
	ldx $5F00.w,Y		; BE 00 5F
	brk $2F.b		; 00 2F
	brk $17.b		; 00 17
	jsr $100B.w		; 20 0B 10
	ora #$04.b		; 09 04
	adc [$F8.b],Y		; 77 F8
	tsb $02.b		; 04 02
	ora $01.b,S		; 03 01
	tay		; A8
	lda ($80.b),Y		; B1 80
	ora $07C08E.l,X		; 1F 8E C0 07
	cpx #$03.b		; E0 03
	adc ($F8.b),Y		; 71 F8
	beq   1.b		; F0 01
	eor $4020.w		; 4D 20 40
	inc $50E0.w,X		; FE E0 50
	ldy #$10.b		; A0 10
	adc $209040.l,X		; 7F 40 90 20
	bne  32.b		; D0 20
	sbc ($21.b),Y		; F1 21
	adc ($21.b),Y		; 71 21
	sbc $FE.b,S		; E3 FE
	beq  -1.b		; F0 FF
	sbc ($FE.b,X)		; E1 FE
	sbc $777375.l,X		; FF 75 73 77
	adc ($67.b,S),Y		; 73 67
	rtl		; 6B

	adc $E76F67.l		; 6F 67 6F E7
	adc $D7CB3C.l,X		; 7F 3C CB D7
	cmp [$CB.b],Y		; D7 CB
	stx $AB.b,Y		; 96 AB
	and ($FB.b,X)		; 21 FB
	inc $43F3.w,X		; FE F3 43
	sbc [$FC.b],Y		; F7 FC
	sbc $E740FE.l,X		; FF FE 40 E7
	bra -21.b		; 80 EB
	bra -53.b		; 80 CB
	jsr ($FC80.w,X)		; FC 80 FC
	cpy #$F4.b		; C0 F4
	cld		; D8
	tsx		; BA
	sbc $FEDCFF.l,X		; FF FF DC FE
	ldy $BC7E.w,X		; BC 7E BC
	plx		; FA
	jmp ($78FE.w,X)		; 7C FE 78
	sec		; 38
	clv		; B8
	bra -64.b		; 80 C0
	bra -40.b		; 80 D8
	tya		; 98
	sbc $18DCE0.l,X		; FF E0 DC 18
	ldy $BC38.w,X		; BC 38 BC
	bmi 124.b		; 30 7C
	rts		; 60

	sei		; 78
	tsa		; 3B
	mvn $F8,$D2		; 54 D2 F8
	adc $1E18FB.l,X		; 7F FB 18 1E
	inc $07.b		; E6 07
	plx		; FA
	cop $FD.b		; 02 FD
	asl $59.b		; 06 59
	cmp ($40.b,S),Y		; D3 40
	ora $E0A9.w,Y		; 19 A9 E0
	sbc [$F8.b]		; E7 F8
	sbc ($FF.b,X)		; E1 FF
	plx		; FA
	jsr ($FDFF.w,X)		; FC FF FD
	sta ($A1.b),Y		; 91 A1
	lda ($11.b,X)		; A1 11
	adc $03.b,S		; 63 03
	lsr $26.b		; 46 26
	ror $F0FF.w,X		; 7E FF F0
	sta $83.b,S		; 83 83
	jmp $0201.w		; 4C 01 02
	adc ($68.b,X)		; 61 68
	eor ($0F.b,X)		; 41 0F
	inc $9F00.w,X		; FE 00 9F
	cop $FE.b		; 02 FE
	sbc $C1F19F.l,X		; FF 9F F1 C1
	bmi  32.b		; 30 20
	jmp.w [$E670]		; DC 70 E6
	lda $8A.b,X		; B5 8A
	dec A		; 3A
	eor $7D.b,X		; 55 7D
	tsa		; 3B
	tda		; 7B
	ldy $FF0F.w,X		; BC 0F FF
	lda $8F7070.l		; AF 70 70 8F
	cpx #$CA.b		; E0 CA
	ora $00CA00.l,X		; 1F 00 CA 00
	sta $10.b,X		; 95 10
	tyx		; BB
	cmp $3C301F.l,X		; DF 1F 30 3C
	ora $73.b,S		; 03 73
	ora $A2E08F.l		; 0F 8F E0 A2
	ror $F8.b,X		; 76 F8
	inc $FEF0.w		; EE F0 FE
	cpy #$06.b		; C0 06
	sed		; F8
	plb		; AB
	asl $A4F0.w		; 0E F0 A4
	inc $F807.w,X		; FE 07 F8
	tsb $FC.b		; 04 FC
	cmp $F404D5.l,X		; DF D5 04 F4
	tsb $C4.b		; 04 C4
	sec		; 38
	sec		; 38
	brk $FC.b		; 00 FC
	plx		; FA
	plx		; FA
	.db $62, $B0, $0B		; 62 B0 0B
	stz $72C2.w,X		; 9E C2 72
	ldy #$0D.b		; A0 0D
	plb		; AB
	tax		; AA
	ora $00.b,S		; 03 00
	ora [$E2.b],Y		; 17 E2
	sbc ($A0.b),Y		; F1 A0
	cpy #$0B.b		; C0 0B
	sty $AE.b,X		; 94 AE
	jmp $0BB0.w		; 4C B0 0B
	ror $EA.b,X		; 76 EA
	rol $F1.b		; 26 F1
	plx		; FA
	and ($F6.b,X)		; 21 F6
	stp		; DB
	bne -88.b		; D0 A8
	bpl -84.b		; 10 AC
	cpy $0701.w		; CC 01 07
	tsb $07.b		; 04 07
	php		; 08
	iny		; C8
	adc $250FFA.l,X		; 7F FA 0F 25
	lsr $EE.b		; 46 EE
	sbc ($03.b,S),Y		; F3 03
	sbc [$07.b]		; E7 07
	sta $BBDF1F.l,X		; 9F 1F DF BB
	sbc $BFFE1B.l,X		; FF 1B FE BF
	stp		; DB
	sbc $1BEE1B.l,X		; FF 1B EE 1B
	sbc $0AF51A.l		; EF 1A F5 0A
	and ($D1.b),Y		; 31 D1
	tsa		; 3B
	cmp $FF.b,S		; C3 FF
	inc $FE1B.w,X		; FE 1B FE
	cpy #$DB.b		; C0 DB
	cpy #$DA.b		; C0 DA
	cpy #$CA.b		; C0 CA
	bne -48.b		; D0 D0
	xce		; FB
	sbc $7DBDF5.l,X		; FF F5 BD 7D
	tyx		; BB
	lda [$7B.b],Y		; B7 7B
	xba		; EB
	adc [$D7.b],Y		; 77 D7
	adc $C1B42F.l		; 6F 2F B4 C1
	lda ($91.b),Y		; B1 91
	lda $FF01.w,X		; BD 01 FF
	sei		; 78
	tyx		; BB
	ora ($7B.b,X)		; 01 7B
	ora ($77.b,X)		; 01 77
	ora ($6F.b,X)		; 01 6F
	ora ($DF.b,X)		; 01 DF
	adc $A0FF.w,Y		; 79 FF A0
	cmp $FE0055.l,X		; DF 55 00 FE
	inc $C480.w,X		; FE 80 C4
	sty $FEC2.w		; 8C C2 FE
	inc $A1FF.w,X		; FE FF A1
	ora $D8.b		; 05 D8
	eor ($90.b,X)		; 41 90
	asl $C8C0.w,X		; 1E C0 C8
	asl A		; 0A
	ora ($24.b)		; 12 24
	bpl   8.b		; 10 08
	cmp ($C8.b,X)		; C1 C8
	asl $8AE1.w		; 0E E1 8A
	ora [$0B.b]		; 07 0B
	ora ($08.b)		; 12 08
	and $F2FE10.l,X		; 3F 10 FE F2
	ror $8AA1.w,X		; 7E A1 8A
	rol A		; 2A
	lda $FEACFA.l,X		; BF FA AC FE
	inc $7F.b,X		; F6 7F
	and ($FD.b)		; 32 FD
	cop $FC.b		; 02 FC
	beq -32.b		; F0 E0
	ora ($1E.b),Y		; 11 1E
	ldx $0102.w		; AE 02 01
	ora ($02.b,X)		; 01 02
	cpy $101F.w		; CC 1F 10
	and $0EE15C.l,X		; 3F 5C E1 0E
	ldx $C2B8.w		; AE B8 C2
	pei ($F2.b)		; D4 F2
	sbc $0401.w,Y		; F9 01 04
	jmp $3F3FE2.l		; 5C E2 3F 3F
	tay		; A8
	inc $1A.b,X		; F6 1A
	cmp $CCEF3A.l		; CF 3A EF CC
	txa		; 8A
	rts		; 60

	bcc  26.b		; 90 1A
	cld		; D8
	sbc $B0B8B8.l,X		; FF B8 B8 B0
	sta ($E0.b),Y		; 91 E0
	sbc $DDFF70.l,X		; FF 70 FF DD
	cmp $7F7FFE.l		; CF FE 7F 7F
	xce		; FB
	sbc $BE7E.w,X		; FD 7E BE
	adc $3CFF.w,X		; 7D FF 3C
	cmp $C73E.w,X		; DD 3E C7
	cmp $99397E.l,X		; DF 7E 39 99
	and $3E00.w,X		; 3D 00 3E
	sbc $CFF0FF.l,X		; FF FF F0 CF
	bcs -49.b		; B0 CF
	bvs -113.b		; 70 8F
	clv		; B8
	eor [$38.b]		; 47 38
	cmp [$7C.b]		; C7 7C
	sta $3C.b,S		; 83 3C
	cmp $BE.b,S		; C3 BE
	eor ($BE.b,X)		; 41 BE
	inc $EC1F.w,X		; FE 1F EC
	sbc ($2F.b),Y		; F1 2F
	lda $586F6F.l		; AF 6F 6F 58
	dec $F8A5.w		; CE A5 F8
	ora #$01.b		; 09 01
	inc $F807.w,X		; FE 07 F8
	ora $E0FFFE.l,X		; 1F FE FF E0
	cpx #$F0.b		; E0 F0
	ora $401020.l		; 0F 20 10 40
	bmi  64.b		; 30 40
	sec		; 38
	bvs  12.b		; 70 0C
	eor $718030.l		; 4F 30 80 71
	bra  32.b		; 80 20
	cpy $60.b		; C4 60
	inc $ABB1.w,X		; FE B1 AB
	and ($03.b),Y		; 31 03
	ora $9E.b,X		; 15 9E
	asl $F50E.w		; 0E 0E F5
	nop		; EA
	bit $0C00.w,X		; 3C 00 0C
	sbc ($03.b,S),Y		; F3 03
	bra  99.b		; 80 63
	lsr $2488.w,X		; 5E 88 24
	tyx		; BB
	nop		; EA
	ora $4F03C0.l		; 0F C0 03 4F
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	trb $387A.w		; 1C 7A 38
	dec $D1D3.w,X		; DE D3 D1
	ldy $0FEA.w,X		; BC EA 0F
	php		; 08
	cmp $8FC002.l,X		; DF 02 C0 8F
	bvs -20.b		; 70 EC
	eor $DE.b		; 45 DE
	ora $DA3AF0.l		; 0F F0 3A DA
	sbc ($03.b,S),Y		; F3 03
	and [$79.b]		; 27 79
	ldy $D5FF.w		; AC FF D5
	inc $90C0.w		; EE C0 90
	ora [$20.b],Y		; 17 20
.INDEX 16
	rep #$1C		; C2 1C
	cmp $E0.b,S		; C3 E0
	sed		; F8
	asl $FF60.w		; 0E 60 FF
	sbc $E0E0.w,X		; FD E0 E0
	cpx #$EEC4.w		; E0 C4 EE
	adc [$40.b],Y		; 77 40
	ora $FD0FF7.l,X		; 1F F7 0F FD
	ply		; 7A
	sta ($FC.b),Y		; 91 FC
	ora $FA.b,S		; 03 FA
	sed		; F8
	bcc  -4.b		; 90 FC
	sta ($7F.b),Y		; 91 7F
	txs		; 9A
	.db $62, $47, $A4		; 62 47 A4
	ora ($9E.b,X)		; 01 9E
	adc ($5F.b,X)		; 61 5F
	sbc $EFA0FF.l,X		; FF FF A0 EF
	bcc  39.b		; 90 27
	cld		; D8
	cmp ($2E.b),Y		; D1 2E
	clv		; B8
	cmp [$F6.b]		; C7 F6
	sbc $FCFB.w,Y		; F9 FB FC
	adc [$77.b],Y		; 77 77
	and [$FF.b],Y		; 37 FF
	sbc $BB3BB7.l		; EF B7 3B BB
	clc		; 18
	cld		; D8
	ora $C7072F.l		; 0F 2F 07 C7
	ora $FB.b,S		; 03 FB
	ora ($FD.b,X)		; 01 FD
	rol $B8.b		; 26 B8
	ora #$D33E.w		; 09 3E D3
	xba		; EB
	cmp ($0C.b,X)		; C1 0C
	sbc ($81.b,S),Y		; F3 81
	sed		; F8
	sed		; F8
	cmp [$C7.b]		; C7 C7
	pla		; 68
	sbc ($FF.b),Y		; F1 FF
	sbc $FFC0.w,X		; FD C0 FF
	bvs  60.b		; 70 3C
	rts		; 60

	ora $20205F.l,X		; 1F 5F 20 20
	trb $1820.w		; 1C 20 18
	inc $0C10.w,X		; FE 10 0C
	php		; 08
	sbc $D1.b		; E5 D1
	asl $FC.b		; 06 FC
	adc $01F47C.l		; 6F 7C F4 01
	asl $491D.w		; 0E 1D 49
	cmp ($7F.b,X)		; C1 7F
	sbc $0201.w,X		; FD 01 02
	asl $09.b		; 06 09
	tsa		; 3B
	eor [$DF.b]		; 47 DF
	and $6DE9F7.l,X		; 3F F7 E9 6D
	jmp ($00FC.w,X)		; 7C FC 00
	sbc ($01.b),Y		; F1 01
	cmp ($1F.b,X)		; C1 1F
	sta [$03.b]		; 87 03
	clv		; B8
	and $E1.b,X		; 35 E1
	and $BC7F58.l,X		; 3F 58 7F BC
	lda $887E.w,X		; BD 7E 88
	inc $B02D.w,X		; FE 2D B0
	tsb $9B03.w		; 0C 03 9B
	ora ($3D.b),Y		; 11 3D
	clc		; 18
	ror $BE0A.w,X		; 7E 0A BE
	ror $B43A.w,X		; 7E 3A B4
	jsr $0DF8.w		; 20 F8 0D
	adc ($FF.b)		; 72 FF
	sed		; F8
	asl A		; 0A
	adc $BF3F7F.l,X		; 7F 7F 3F BF
	tax		; AA
	ldy #$F800.w		; A0 00 F8
	ora $FF8AAA.l		; 0F AA 8A FF
	sed		; F8
	phd		; 0B
	rts		; 60

	bcc  19.b		; 90 13
	jmp ($09C0.w,X)		; 7C C0 09
	sbc $92816E.l,X		; FF 6E 81 92
	cpy #$A8C0.w		; C0 C0 A8
	ora $907D.w		; 0D 7D 90
	asl $8F6A.w		; 0E 6A 8F
	sbc #$EBFD.w		; E9 FD EB
	sbc $7FBFFE.l,X		; FF FE BF 7F
	lda ($8F.b,X)		; A1 8F
	inc $80FD.w,X		; FE FD 80
	adc $F0BF40.l,X		; 7F 40 BF F0
	cmp $F4E7F8.l		; CF F8 E7 F4
	and ($BE.b,S),Y		; 33 BE
	xce		; FB
	sbc $6CD4FC.l,X		; FF FC D4 6C
	ora $E707DF.l,X		; 1F DF 07 E7
	ldy $E2.b		; A4 E2
	cpy $F2.b		; C4 F2
	pei ($D2.b)		; D4 D2
	dex		; CA
	sbc $331BF8.l,X		; FF F8 1B 33
	xba		; EB
	wai		; CB
	and $1FD45F.l		; 2F 5F D4 1F
	ora [$0F.b],Y		; 17 0F
	phd		; 0B
	ora [$05.b]		; 07 05
	cmp $436F81.l		; CF 81 6F 43
	txa		; 8A
	cli		; 58
	sbc ($83.b),Y		; F1 83
	rts		; 60

	tsb $07.b		; 04 07
	cop $F1.b		; 02 F1
	sbc $CA14F8.l,X		; FF F8 14 CA
	rtl		; 6B

	sta $FFFF.w,Y		; 99 FF FF
	bcc -93.b		; 90 A3
	.db $82, $FF, $C0		; 82 FF C0
	cmp $F0EFE0.l,X		; DF E0 EF F0
	sbc $A0F8FE.l,X		; FF FE F8 A0
	adc $7F80.w,X		; 7D 80 7F
	sta $E791CA.l,X		; 9F CA 91 E7
	pha		; 48
	sbc #$FBFB.w		; E9 FB FB
	sbc $75FD.w,Y		; F9 FD 75
	sbc $FB.b,X		; F5 FB
	lda #$7840.w		; A9 40 78
	trb $FF.b		; 14 FF
	sed		; F8
	ora #$7B7B.w		; 09 7B 7B
	bvs -32.b		; 70 E0
	bpl  -1.b		; 10 FF
	sed		; F8
	asl $7846.w		; 0E 46 78
	ora #$07FB.w		; 09 FB 07
	cmp [$21.b],Y		; D7 21
	sbc ($0F.b,S),Y		; F3 0F
	sbc ($0F.b),Y		; F1 0F
	sbc ($D8.b),Y		; F1 D8
	asl A		; 0A
	ora $7B.b		; 05 7B
	sbc $E7FE3F.l,X		; FF 3F FE E7
	jsr ($0F57.w,X)		; FC 57 0F
	and $DFBF7F.l,X		; 3F 7F BF DF
	lda $D7DFAF.l,X		; BF AF DF D7
	sbc $6F8589.l		; EF 89 85 6F
	sta ($BC.b,X)		; 81 BC
	and [$FE.b]		; 27 FE
	cmp $46EF00.l,X		; DF 00 EF 46
	sed		; F8
	ora $1CFF10.l		; 0F 10 FF 1C
	cmp $EF04.w		; CD 04 EF
	rol $F1FC.w,X		; 3E FC F1
	bit #$36FF.w		; 89 FF 36
	iny		; C8
	eor [$C9.b]		; 47 C9
	bra 111.b		; 80 6F
	sbc ($3E.b,X)		; E1 3E
	cpy #$E11E.w		; C0 1E E1
	ora [$82.b]		; 07 82
	cmp ($03.b),Y		; D1 03
	rol $FED1.w		; 2E D1 FE
	ldy $F7BD.w,X		; BC BD F7
	adc $E0DDDC.l,X		; 7F DC DD E0
	cpx #$AC3E.w		; E0 3E AC
	beq  -3.b		; F0 FD
	sei		; 78
	adc $28.b,X		; 75 28
	bit $10.b		; 24 10
	dey		; 88
	jsr $FF51.w		; 20 51 FF
	sbc $82D9D8.l,X		; FF D8 D9 82
	.db $82, $45, $F0		; 82 45 F0
	sbc ($F0.b)		; F2 F0
	adc ($72.b)		; 72 72
	lda ($22.b,X)		; A1 22
	eor $06.b		; 45 06
	dey		; 88
	jmp $EAEF.w		; 4C EF EA
	lda ($38.b)		; B2 38
	mvp $39,$01		; 44 01 39
	rti		; 40

	beq   9.b		; F0 09
	jsr ($2203.w,X)		; FC 03 22
	cmp ($B5.b),Y		; D1 B5
	sbc ($FF.b),Y		; F1 FF
	jsr ($4A79.w,X)		; FC 79 4A
	stz $79.b		; 64 79
	mvp $A3,$69		; 44 69 A3
	sbc ($AA.b),Y		; F1 AA
	tay		; A8
	inc $FAFE.w,X		; FE FE FA
	eor $51.b,X		; 55 51
	dex		; CA
	dex		; CA
	sbc $EAE0FD.l,X		; FF FD E0 EA
	jsl $200DA0.l		; 22 A0 0D 20
	ldy #$190F.w		; A0 0F 19
	phk		; 4B
	lda #$B0B8.w		; A9 B8 B0
	dex		; CA
	ora $D67FE0.l,X		; 1F E0 7F D6
	sbc #$F9C1.w		; E9 C1 F9
	asl $F0.b		; 06 F0
	cmp ($38.b,S),Y		; D3 38
	inc $FBC2.w,X		; FE C2 FB
	xce		; FB
	sbc [$E7.b]		; E7 E7
	sta $E7869F.l,X		; 9F 9F 86 E7
	sbc $EF180F.l,X		; FF 0F 18 EF
	clc		; 18
	stp		; DB
	bit $3DFE.w,X		; 3C FE 3D
	lda $EF76.w,X		; BD 76 EF
	ror $83.b,X		; 76 83
	sta $FF.b,S		; 83 FF
	sta $EA.b,S		; 83 EA
	sta $9B.b,S		; 83 9B
	eor ($59.b,X)		; 41 59
	bra -68.b		; 80 BC
	sta ($BD.b,X)		; 81 BD
	brk $76.b		; 00 76
	inc $FD41.w,X		; FE 41 FD
	adc #$3F79.w		; 69 79 3F
	adc $D6DD44.l,X		; 7F 44 DD D6
	sta $F0F6.w,Y		; 99 F6 F0
	ora #$3F3F.w		; 09 3F 3F
	cmp $5FC1CF.l		; CF CF C1 5F
	sbc ($F3.b,S),Y		; F3 F3
	ldy $5E.b		; A4 5E
	jsr ($38C7.w,X)		; FC C7 38
	sbc [$08.b],Y		; F7 08
	sbc $5A02.w,X		; FD 02 5A
	sbc ($07.b,X)		; E1 07
	lda $FF.b,X		; B5 FF
	sbc $F9F9.w,X		; FD F9 F9
	lsr $5E.b,X		; 56 5E
	sbc ($4A.b)		; F2 4A
	ldy $FE.b		; A4 FE
	inc $C240.w,X		; FE 40 C2
	sbc $BEFD5F.l,X		; FF 5F FD BE
	ldx $F1FC.w		; AE FC F1
	asl $1CE3.w		; 0E E3 1C
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	sta [$78.b]		; 87 78
	ora $FDBF.w		; 0D BF FD
	sbc ($0B.b,S),Y		; F3 0B
	sbc [$1F.b],Y		; F7 1F
	sbc [$17.b]		; E7 17
	sbc $FEE1C9.l		; EF C9 E1 FE
	ldy $FCF1.w,X		; BC F1 FC
	sed		; F8
	xce		; FB
	beq  -1.b		; F0 FF
	sbc [$F7.b],Y		; F7 F7
	sbc ($F7.b),Y		; F1 F7
	sbc ($EF.b,X)		; E1 EF
	lsr $EB.b,X		; 56 EB
	lda $3DDBDB.l		; AF DB DB 3D
	adc $97ED.w,X		; 7D ED 97
	brk $EB.b		; 00 EB
	lda $DB00FF.l,X		; BF FF 00 DB
	brk $3D.b		; 00 3D
	clc		; 18
	inc $F07E.w,X		; FE 7E F0
	sbc $609F.w,X		; FD 9F 60
	cmp $B04F30.l		; CF 30 4F B0
	adc [$F0.b]		; 67 F0
	lda $B3BA98.l		; AF 98 BA B3
	cpy $EED1.w		; CC D1 EE
	beq -17.b		; F0 EF
	jmp ($3E7C.w,X)		; 7C 7C 3E
	nop		; EA
	beq -47.b		; F0 D1
	bit $FFE9.w,X		; 3C E9 FF
	cmp $8FEF0F.l,X		; DF 0F EF 8F
	sbc $A13C6E.l		; EF 6E 3C A1
	ora ($1E.b,X)		; 01 1E
	sbc ($0C.b,S),Y		; F3 0C
	trb $8F5E.w		; 1C 5E 8F
	bvs  31.b		; 70 1F
	cpx #$955E.w		; E0 5E 95
	ror $3737.w		; 6E 37 37
	dec $FECE.w		; CE CE FE
	stz $F4.b,X		; 74 F4
	ldx #$AA20.w		; A2 20 AA
	ldx #$8492.w		; A2 92 84
	and $FE.b		; 25 FE
	bit $6EBA.w,X		; 3C BA 6E
	rti		; 40

	rti		; 40

	sei		; 78
	.db $82, $FF, $E1		; 82 FF E1
	lda ($3C.b,X)		; A1 3C
	tsx		; BA
	tas		; 1B
	adc $BF5F9F.l,X		; 7F 9F 5F BF
	ora ($BF.b,S),Y		; 13 BF
	sed		; F8
	cmp $C0.b,S		; C3 C0
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $EF.b,S		; E3 EF
	cmp $DF.b,S		; C3 DF
	sta [$BF.b]		; 87 BF
	inc $500F.w,X		; FE 0F 50
	sbc $1FFE7F.l,X		; FF 7F FE 1F
	jsr ($FFE9.w,X)		; FC E9 FF
	sed		; F8
	ora $E8E7F8.l,X		; 1F F8 E7 E8
	sbc [$FC.b],Y		; F7 FC
	sbc ($F0.b,S),Y		; F3 F0
	sta [$F4.b]		; 87 F4
	sty $F8.b,X		; 94 F8
	sbc $FAFEF9.l,X		; FF F9 FE FA
	pea $6EF8.w		; F4 F8 6E
	sbc ($7F.b,X)		; E1 7F
	sta [$F7.b]		; 87 F7
	inc $FBC3.w,X		; FE C3 FB
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	cpy #$C1F8.w		; C0 F8 C1
	sed		; F8
	cmp $F8.b,S		; C3 F8
	sbc $928402.l,X		; FF 02 84 92
	adc $40DFA0.l,X		; 7F A0 DF 40
	cmp $785F80.l,X		; DF 80 5F 78
	cmp ($FE.b,X)		; C1 FE
	jsr ($6E41.w,X)		; FC 41 6E
	cmp $8F8FCF.l		; CF CF 8F 8F
	and $436F0F.l		; 2F 0F 6F 43
	inc A		; 1A
	lda ($50.b),Y		; B1 50
	eor $FE.b,X		; 55 FE
	tax		; AA
	ldy $2E.b,X		; B4 2E
	dey		; 88
	ora #$B4AA.w		; 09 AA B4
	sbc $EAFCFC.l,X		; FF FC FC EA
	bcc  -8.b		; 90 F8
	ora $66E185.l		; 0F 85 E1 66
	nop		; EA
	sta $8E0BC8.l,X		; 9F C8 0B 8E
	sbc $FBF4.w,X		; FD F4 FB
	xba		; EB
	beq 127.b		; F0 7F
	clc		; 18
	sbc #$F9F0.w		; E9 F0 F9
	inx		; E8
	sed		; F8
	inx		; E8
	cld		; D8
	inx		; E8
	stx $F0C3.w		; 8E C3 F0
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	inc $FEC7.w,X		; FE C7 FE
	sta [$E0.b]		; 87 E0
	inc $20FF.w,X		; FE FF 20
	cmp $FE09AC.l,X		; DF AC 09 FE
	sbc $FAEB11.l,X		; FF 11 EB FA
	lda $8C40.w,Y		; B9 40 8C
	cpy $A8.b		; C4 A8
	inc $C9BB.w,X		; FE BB C9
	inc $FE9F.w,X		; FE 9F FE
	ldy #$E0.b		; A0 E0
	ora $66002A.l		; 0F 2A 00 66
	sty $44.b,X		; 94 44
	cmp $A0.b,X		; D5 A0
	bit #$00.b		; 89 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $008D.w,X		; FD 8D 00
	sbc $0328F8.l,X		; FF F8 28 03
	brk $1C.b		; 00 1C
	ora $6F.b,S		; 03 6F
	ora $0FF8EA.l,X		; 1F EA F8 0F
	ora ($F1.b,X)		; 01 F1
	ora [$E8.b]		; 07 E8
	ora [$FE.b]		; 07 FE
	and $3EDD00.l,X		; 3F 00 DD 3E
	inc $FFFF.w,X		; FE FF FF
	ora ($B4.b,X)		; 01 B4
	sbc $FEFD.w		; ED FD FE
	plx		; FA
	phx		; DA
	sed		; F8
	tsb $FCFE.w		; 0C FE FC
	jsl $EA7F1E.l		; 22 1E 7F EA
	sed		; F8
	tsb $FEFF.w		; 0C FF FE
	cpy #$00.b		; C0 00
	bra  -2.b		; 80 FE
	rti		; 40

	bra -79.b		; 80 B1
	cpy #$FE.b		; C0 FE
	sbc ($FF.b),Y		; F1 FF
	adc $11F8A0.l,X		; 7F A0 F8 11
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	phd		; 0B
	ora [$3F.b]		; 07 3F
	ora $B83C5C.l		; 0F 5C 3C B8
	sei		; 78
	beq -16.b		; F0 F0
	sbc ($E1.b,X)		; E1 E1
	bvs  -8.b		; 70 F8
	phd		; 0B
	txa		; 8A
	ora $7FBF00.l		; 0F 00 BF 7F
	sty $EFEF.w		; 8C EF EF
	adc $8F8F8F.l,X		; 7F 8F 8F 8F
	adc $5F5F7F.l,X		; 7F 7F 5F 5F
	trb $E61C.w		; 1C 1C E6
	jsr ($0010.w,X)		; FC 10 00
	bvs  15.b		; 70 0F
	inx		; E8
	bcs -96.b		; B0 A0
	brk $E3.b		; 00 E3
	brk $71.b		; 00 71
	adc $FFFF.w		; 6D FF FF
	stz $F8C1.w,X		; 9E C1 F8
	sta $FF593F.l,X		; 9F 3F 59 FF
	sed		; F8
	asl A		; 0A
	rts		; 60

	stx $62.b		; 86 62
	ora ($53.b,X)		; 01 53
	sbc $5B2083.l,X		; FF 83 20 5B
	bmi  47.b		; 30 2F
	clc		; 18
	and [$1F.b]		; 27 1F
	ora ($0F.b,S),Y		; 13 0F
	tsb $AE03.w		; 0C 03 AE
	beq -16.b		; F0 F0
	sbc $A10FF8.l,X		; FF F8 0F A1
	ora $3FDFFF.l		; 0F FF DF 3F
	plx		; FA
	sbc [$FF.b]		; E7 FF
	sta $FF2F83.l		; 8F 83 2F FF
	eor $E092BF.l,X		; 5F BF 92 E0
	sed		; F8
	ora $CFE3E3.l		; 0F E3 E3 CF
	cmp $0BF89C.l		; CF 9C F8 0B
	pea $7D01.w		; F4 01 7D
	bmi -32.b		; 30 E0
	sed		; F8
	tsb $A2A2.w		; 0C A2 A2
	cmp $C5.b		; C5 C5
	.db $62, $FC, $D8		; 62 FC D8
	cmp [$E2.b]		; C7 E2
	jsr ($FFF7.w,X)		; FC F7 FF
	eor $3A00.w,X		; 5D 00 3A
	.db $62, $40, $E0		; 62 40 E0
	sbc $71F48F.l,X		; FF 8F F4 71
	adc $FEFFFC.l,X		; 7F FC FF FE
	inc $FBFF.w,X		; FE FF FB
	sbc $FDA0F5.l,X		; FF F5 A0 FD
	xce		; FB
	pha		; 48
	txa		; 8A
	beq  15.b		; F0 0F
	brk $FA.b		; 00 FA
	ora [$FE.b]		; 07 FE
	sbc ($0F.b),Y		; F1 0F
	ora [$17.b]		; 07 17
	ora $16FD20.l		; 0F 20 FD 16
	ora $10F860.l		; 0F 60 F8 10
	sbc $CDFFF6.l,X		; FF F6 FF CD
	sbc $002F9F.l,X		; FF 9F 2F 00
	sbc $DD3B.w,X		; FD 3B DD
	adc $BB.b,X		; 75 BB
	cpx #$F8.b		; E0 F8
	ora $FCA4E4.l		; 0F E4 A4 FC
	cmp ($9E.b),Y		; D1 9E
	beq  -1.b		; F0 FF
	cpx #$FF.b		; E0 FF
	cpy #$FF.b		; C0 FF
	bra  -2.b		; 80 FE
	cpx #$F8.b		; E0 F8
	ora $6F3180.l		; 0F 80 31 6F
	jsl $FEBEFE.l		; 22 FE BE FE
	and $FFDC.w,X		; 3D DC FF
	cmp [$7C.b],Y		; D7 7C
	xce		; FB
	jmp ($F8E0.w,X)		; 7C E0 F8
	ora $7DF5FB.l		; 0F FB F5 7D
	inc $6D.b,X		; F6 6D
	inc $EB.b,X		; F6 EB
	sbc [$7F.b],Y		; F7 7F
	sbc $ECF4.w,X		; FD F4 EC
	sbc $FBE8.w,Y		; F9 E8 FB
	inx		; E8
	sbc [$E0.b],Y		; F7 E0
	.db $82, $F0, $0B		; 82 F0 0B
	bra -14.b		; 80 F2
	trb $0F.b		; 14 0F
	ora ($0E.b),Y		; 11 0E
	sbc $0C12F2.l,X		; FF F2 12 0C
	trb $08.b		; 14 08
	tsb $0D00.w		; 0C 00 0D
	brk $05.b		; 00 05
	phd		; 0B
	beq  13.b		; F0 0D
	sbc $934FE5.l,X		; FF E5 4F 93
	tsa		; 3B
	lda $7B.b		; A5 7B
	dey		; 88
	adc [$FE.b],Y		; 77 FE
	php		; 08
	sbc [$FE.b],Y		; F7 FE
	ora $AAF6.w,X		; 1D F6 AA
	inx		; E8
	bpl  -2.b		; 10 FE
	inc $06FE.w,X		; FE FE 06
	xce		; FB
	inc $FB04.w,X		; FE 04 FB
	cpx #$F8.b		; E0 F8
	ora $FFFC7B.l		; 0F 7B FC FF
	eor $77FA7F.l,X		; 5F 7F FA 77
	xce		; FB
	and [$FB.b],Y		; 37 FB
	ldx $78.b,Y		; B6 78
	lda $DE7A.w,X		; BD 7A DE
	tsa		; 3B
	stp		; DB
	and $E8E8.w,X		; 3D E8 E8
	asl A		; 0A
	sbc ($FF.b,X)		; E1 FF
	txy		; 9B
	xba		; EB
	ror $E176.w		; 6E 76 E1
	sbc $63.b,X		; F5 63
	xce		; FB
	adc [$AE.b]		; 67 AE
	adc [$7D.b],Y		; 77 7D
	ldx $8F.b,Y		; B6 8F
	and $31DF.w,Y		; 39 DF 31
	sbc [$5B.b],Y		; F7 5B
	asl $0B78.w		; 0E 78 0B
	stz $06.b		; 64 06
	ldx $DA04.w		; AE 04 DA
	rti		; 40

	rti		; 40

	txa		; 8A
	nop		; EA
	sbc $6C1BF8.l,X		; FF F8 1B 6C
	ora $846407.l		; 0F 07 64 84
	tda		; 7B
	mvp $FE,$3B		; 44 3B FE
	jsl $C3121D.l		; 22 1D 12 C3
	sbc ($E1.b,X)		; E1 E1
	sbc $6E0EF8.l,X		; FF F8 0E 6E
	mvp $42,$BB		; 44 BB 42
	lda $41FE.w,X		; BD FE 41
	ldx $FF61.w,Y		; BE 61 FF
	jsr $FEDF.w		; 20 DF FE
	ora ($EC.b,S),Y		; 13 EC
	cpx #$F8.b		; E0 F8
	ora $BB5DA3.l		; 0F A3 5D BB
	stz $5D.b		; 64 5D
	tsx		; BA
	sbc $817EFD.l,X		; FF FD 7E 81
	tas		; 1B
	inc $DC.b		; E6 DC
	pld		; 2B
	ror $F49D.w,X		; 7E 9D F4
	ora [$92.b],Y		; 17 92
	sed		; F8
	asl A		; 0A
	php		; 08
	brk $1C.b		; 00 1C
	php		; 08
	sbc $AF1E7F.l,X		; FF 7F 1E AF
	tas		; 1B
	cmp [$0B.b],Y		; D7 0B
	plx		; FA
	tsb $FE.b		; 04 FE
	tya		; 98
	sta ($00.b,X)		; 81 00
	sta $80BF80.l,X		; 9F 80 BF 80
	and $6EC87C.l,X		; 3F 7C C8 6E
	rts		; 60

	rts		; 60

	adc ($60.b,X)		; 61 60
	phx		; DA
	adc $FEFFBF.l,X		; 7F BF FF FE
	sbc $060980.l,X		; FF 80 09 06
	asl $01.b		; 06 01
	lsr $1BF8.w,X		; 5E F8 1B
	ora $7987F0.l		; 0F F0 87 79
	cmp $3C.b,S		; C3 3C
	adc $FFFA.w,Y		; 79 FA FF
	asl $07.b		; 06 07
	beq  16.b		; F0 10
	sbc $6396FD.l,X		; FF FD 96 63
	sta $D0CBF1.l		; 8F F1 CB D0
	cmp $40DED3.l		; CF D3 DE 40
	lda $60FFFF.l		; AF FF FF 60
	eor [$27.b]		; 47 27
	and [$10.b],Y		; 37 10
	asl A		; 0A
	asl A		; 0A
	ora [$37.b]		; 07 37
	and $15.b		; 25 15
	rol $17.b		; 26 17
	tsa		; 3B
	ora $1C.b,S		; 03 1C
	sta $00.b		; 85 00
	brk $18.b		; 00 18
	rts		; 60

	sbc ($8E.b),Y		; F1 8E
	and $1E0188.l,X		; 3F 88 01 1E
	tya		; 98
	rti		; 40

	inc $5380.w,X		; FE 80 53
	bpl -29.b		; 10 E3
	bmi   8.b		; 30 08
	sbc ($8E.b),Y		; F1 8E
	dey		; 88
	nop		; EA
	plx		; FA
	sbc $C3FF00.l		; EF 00 FF C3
	cmp $102100.l		; CF 00 21 10
	ora ($02.b,S),Y		; 13 02
	ora $081708.l,X		; 1F 08 17 08
	phd		; 0B
	pei ($04.b)		; D4 04
	sta [$82.b]		; 87 82
	ora $0E08.w		; 0D 08 0E
	asl A		; 0A
	dec $C20D.w		; CE 0D C2
	sbc ($FE.b,S),Y		; F3 FE
	sbc $E43B17.l,X		; FF 17 3B E4
	eor $30.b,S		; 43 30
	cmp [$90.b],Y		; D7 90
	sbc $0CFE00.l,X		; FF 00 FE 0C
	sbc [$00.b],Y		; F7 00
	jsr ($E2B2.w,X)		; FC B2 E2
	adc $26.b,S		; 63 26
	dec $FA6F.w		; CE 6F FA
	sbc ($F4.b,S),Y		; F3 F4
	inc $FF07.w,X		; FE 07 FF
	inc $D8.b,X		; F6 D8
	tsb $0601.w		; 0C 01 06
	cmp $F8FF.w		; CD FF F8
	asl $0D0B.w		; 0E 0B 0D
	ora #$0C.b		; 09 0C
	bpl  24.b		; 10 18
	lda $3020FF.l		; AF FF 20 30
	cpy #$60.b		; C0 60
	bra  25.b		; 80 19
.ACCU 8
	sep #$A0		; E2 A0
	cpx #$11.b		; E0 11
	brk $BF.b		; 00 BF
	bra -33.b		; 80 DF
	rti		; 40

	adc [$10.b],Y		; 77 10
	phd		; 0B
	tsb $1D.b		; 04 1D
	tsb $06.b		; 04 06
	sbc $AEF3.w,Y		; F9 F3 AE
	.db $62, $3E, $0C		; 62 3E 0C
	ply		; 7A
	lda [$FE.b],Y		; B7 FE
	tsb $1C06.w		; 0C 06 1C
	php		; 08
	inc $1038.w,X		; FE 38 10
	eor $71FE00.l,X		; 5F 00 FE 71
	jsr $207F.w		; 20 7F 20
	ror $F0D5.w,X		; 7E D5 F0
	ora $49F2.w		; 0D F2 49
	sbc ($83.b,X)		; E1 83
	sbc $F5CCFD.l,X		; FF FD CC F5
	ora $6B3FEB.l,X		; 1F EB 3F 6B
	ora $01.b,X		; 15 01
	ora $F8FF.w		; 0D FF F8
	ora #$1F.b		; 09 1F
	lda $FE.b		; A5 FE
	sbc $5F83FD.l,X		; FF FD 83 5F
	dey		; 88
	ldx $83.b		; A6 83
	sbc $FDFEFE.l,X		; FF FE FE FD
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	sbc $42FE.w		; ED FE 42
	sbc $D8982B.l,X		; FF 2B 98 D8
	asl A		; 0A
	rti		; 40

	ora $75.b		; 05 75
	beq  14.b		; F0 0E
	cop $00.b		; 02 00
	adc $1B.b		; 65 1B
	adc $FFFF13.l,X		; 7F 13 FF FF
	plx		; FA
	ora [$FF.b],Y		; 17 FF
	lsr $FD.b		; 46 FD
	.db $62, $BB, $64		; 62 BB 64
	sty $6B.b,X		; 94 6B
	stp		; DB
	bit $01.b		; 24 01
	tas		; 1B
	ora ($17.b,S),Y		; 13 17
	sbc $57121F.l,X		; FF 1F 12 57
	lsr $46.b		; 46 46
	rts		; 60

	.db $62, $20, $60		; 62 20 60
	brk $68.b		; 00 68
	brk $6C.b		; 00 6C
	cmp [$7F.b],Y		; D7 7F
	rol $FEDD.w,X		; 3E DD FE
	sta [$3F.b],Y		; 97 3F
	cmp [$D7.b],Y		; D7 D7
	bne  -1.b		; D0 FF
	bvc  80.b		; 50 50
	bcc  41.b		; 90 29
	sbc ($4F.b)		; F2 4F
	sbc $787F40.l,X		; FF 40 7F 78
	sbc $7FFE7F.l,X		; FF 7F FE 7F
	and $EBED3F.l,X		; 3F 3F ED EB
	jmp.w [$FFD4]		; DC D4 FF
	sbc $30A8B8.l,X		; FF B8 A8 30
	jsr $5071.w		; 20 71 50
	phk		; 4B
	sec		; 38
	sbc [$AC.b]		; E7 AC
	bit #$44.b		; 89 44
	bpl  -8.b		; 10 F8
	and $F0.b,S		; 23 F0
	sbc $E047EB.l,X		; FF EB 47 E0
	cmp $C08FE0.l		; CF E0 8F C0
	sta [$80.b]		; 87 80
	ora ($80.b,S),Y		; 13 80
	tsa		; 3B
	trb $D8.b		; 14 D8
	ora $10D802.l		; 0F 02 D8 10
	asl A		; 0A
	sbc $1E00BF.l,X		; FF BF 00 1E
	php		; 08
	bit $5810.w,X		; 3C 10 58
	jsr $40B7.w		; 20 B7 40
	inx		; E8
	asl $78.b		; 06 78
	ora [$F0.b],Y		; 17 F0
	ora [$F0.b]		; 07 F0
	sbc ($8A.b,X)		; E1 8A
	cpx $25.b		; E4 25
	sec		; 38
	brk $76.b		; 00 76
	ora [$E7.b]		; 07 E7
	inc $5F0F.w,X		; FE 0F 5F
	and $FFA0FC.l,X		; 3F FC A0 FF
	bra  -3.b		; 80 FD
	.db $82, $79, $86		; 82 79 86
	inc $06F9.w,X		; FE F9 06
	and [$88.b],Y		; 37 88
	ora $FE3F.w,Y		; 19 3F FE
	inc $00.b		; E6 00
	bit $2A00.w		; 2C 00 2A
	brk $26.b		; 00 26
	inc $000E.w,X		; FE 0E 00
	rol $80.b,X		; 36 80
	cld		; D8
	sbc $E7E0FF.l,X		; FF FF E0 E7
	cmp ($11.b),Y		; D1 11
	lda ($50.b),Y		; B1 50
	sbc ($92.b,S),Y		; F3 92
	sbc ($91.b)		; F2 91
	sbc [$95.b],Y		; F7 95
	pei ($12.b)		; D4 12
	sta $FFFF5A.l,X		; 9F 5A FF FF
	sta $3E54.w,Y		; 99 54 3E
	and $1C1E1E.l,X		; 3F 1E 1E 1C
	stz $9C1C.w,X		; 9E 1C 9C
	clc		; 18
	stz $3839.w		; 9C 39 38
	and ($78.b),Y		; 31 78
	sbc $7033FF.l		; EF FF 33 70
	stp		; DB
	rti		; 40

	and $7DD9E9.l,X		; 3F E9 D9 7D
	ora ($FB.b,X)		; 01 FB
	brk $EE.b		; 00 EE
	asl A		; 0A
	cmp $7701.w,Y		; D9 01 77
	.db $82, $BF, $50		; 82 BF 50
	inx		; E8
	nop		; EA
	inc $F2E7.w,X		; FE E7 F2
	sbc ($03.b),Y		; F1 03
	inc $07.b		; E6 07
	dey		; 88
	clc		; 18
	ora $FE.b,X		; 15 FE
	stz $D8.b,X		; 74 D8
	ora $2004.w		; 0D 04 20
	beq  16.b		; F0 10
	sbc $396CFC.l,X		; FF FC 6C 39
	ora [$DF.b]		; 07 DF
	and $15F070.l,X		; 3F 70 F0 15
	ror $CFCF.w		; 6E CF CF
	mvp $0C,$E8		; 44 E8 0C
	pea $B2D7.w		; F4 D7 B2
	xce		; FB
	jsr ($7AFF.w,X)		; FC FF 7A
	cmp $FD8F.w,Y		; D9 8F FD
	sbc [$80.b],Y		; F7 80
	cld		; D8
	bpl  -1.b		; 10 FF
	inc $0080.w,X		; FE 80 00
	rts		; 60

	bra  24.b		; 80 18
	cpx #$C4.b		; E0 C4
	sed		; F8
	inx		; E8
	sed		; F8
	ora $FF0709.l		; 0F 09 07 FF
	and $230F13.l		; 2F 13 0F 23
	ora $461F27.l,X		; 1F 27 1F 46
	and $4B3F4E.l,X		; 3F 4E 3F 4B
	bit $70E7.w,X		; 3C E7 70
	sed		; F8
	tsb $7DFD.w		; 0C FD 7D
	adc $1F0F.w		; 6D 0F 1F
	eor $FFBB7F.l,X		; 5F 7F BB FF
	adc [$A6.b],Y		; 77 A6
	cmp ($EF.b),Y		; D1 EF
	sbc $687FAF.l,X		; FF AF 7F 68
	sbc $7C.b,X		; F5 7C
	cpx #$9B.b		; E0 9B
	inx		; E8
	ora $E080.w		; 0D 80 E0
	pei ($FF.b)		; D4 FF
	sed		; F8
	ora #$A0.b		; 09 A0
	sed		; F8
	ora $55FCFA.l		; 0F FA FC 55
	adc $82FEFD.l,X		; 7F FD FE 82
	pei ($E0.b)		; D4 E0
	sed		; F8
	ora $64.b,X		; 15 64
	jsr ($CA62.w,X)		; FC 62 CA
	cpy #$80.b		; C0 80
	ldy #$C0.b		; A0 C0
	cpx #$C0.b		; E0 C0
	sbc $D0A0C3.l,X		; FF C3 A0 D0
	bpl   1.b		; 10 01
	sta $7C63.w,X		; 9D 63 7C
	sbc $5E.b,S		; E3 5E
	sbc ($9F.b,X)		; E1 9F
	rts		; 60

	cmp $F7.b		; C5 F7
	sbc $5F0F43.l,X		; FF 43 0F 5F
	lda $01E701.l,X		; BF 01 E7 01
	sbc $40EF60.l		; EF 60 EF 40
	sbc $F000F3.l		; EF F3 00 F0
	adc $D11975.l,X		; 7F 75 19 D1
	sbc $CFBF9F.l		; EF 9F BF CF
	and $8F7FCF.l,X		; 3F CF 7F 8F
	sbc $04781F.l		; EF 1F 78 04
	sbc $C73B.w,Y		; F9 3B C7
	sbc [$F9.b],Y		; F7 F9
	lda $D2E8.w,Y		; B9 E8 D2
	phy		; 5A
	inc $FDB6.w,X		; FE B6 FD
	.db $62, $F8, $0D		; 62 F8 0D
	sta [$80.b]		; 87 80
	sed		; F8
	bpl -32.b		; 10 E0
	sed		; F8
	ora $20BF.w		; 0D BF 20
	inx		; E8
	phd		; 0B
	ora $DA20FF.l		; 0F FF 20 DA
	brk $D0.b		; 00 D0
	cpx #$FE.b		; E0 FE
	beq -32.b		; F0 E0
	inx		; E8
	beq 104.b		; F0 68
	bvs  56.b		; 70 38
	sta $10.b,S		; 83 10
	bmi -104.b		; 30 98
	bcc  -2.b		; 90 FE
	jmp $09F8.w		; 4C F8 09
	sta $ABE560.l,X		; 9F 60 E5 AB
	inc $CD87.w,X		; FE 87 CD
	sbc $47FFF3.l,X		; FF F3 FF 47
	ldy #$F8.b		; A0 F8
	bpl   2.b		; 10 02
	sed		; F8
	ora $BFFD.w		; 0D FD BF
	brk $F8.b		; 00 F8
	ora ($01.b),Y		; 11 01
	cmp $BFC0D9.l		; CF D9 C0 BF
	cpx #$DF.b		; E0 DF
	bne -17.b		; D0 EF
	inx		; E8
	sbc [$F8.b],Y		; F7 F8
	sbc [$F4.b],Y		; F7 F4
	sbc $D0603F.l,X		; FF 3F 60 D0
	bpl -33.b		; 10 DF
	cmp $30CC4C.l,X		; DF 4C CC 30
	beq  24.b		; F0 18
	sed		; F8
	php		; 08
	sed		; F8
	asl A		; 0A
	plx		; FA
	ora [$FF.b]		; 07 FF
	jmp $20FE33.l		; 5C 33 FE 20
	brk $33.b		; 00 33
	php		; 08
	sbc ($5A.b),Y		; F1 5A
	nop		; EA
	ora $E0.b		; 05 E0
	ora ($00.b,X)		; 01 00
	jmp ($FE66.w)		; 6C 66 FE
	lsr $8110.w,X		; 5E 10 81
	phy		; 5A
	inc $666C.w,X		; FE 6C 66
	lda $B9BD.w		; AD BD B9
	beq   9.b		; F0 09
	ora $3FC1A0.l,X		; 1F A0 C1 3F
	pei ($E1.b)		; D4 E1
	and ($FD.b,X)		; 21 FD
	eor $1BF800.l,X		; 5F 00 F8 1B
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	sta [$7F.b]		; 87 7F
	rts		; 60

	sed		; F8
	bpl  -4.b		; 10 FC
	xce		; FB
	plx		; FA
	and $3DFD.w,X		; 3D FD 3D
	inc $FE8F.w,X		; FE 8F FE
	cmp [$FE.b]		; C7 FE
	stx $2D.b		; 86 2D
	eor $C91C.w,X		; 5D 1C C9
	ldy #$C8.b		; A0 C8
	bpl  -1.b		; 10 FF
	inc $64FC.w,X		; FE FC 64
	sta [$7F.b]		; 87 7F
	stx $C040.w		; 8E 40 C0
	bpl  -8.b		; 10 F8
	eor $E0D06E.l,X		; 5F 6E D0 E0
	cpx #$C0.b		; E0 C0
	ldy #$C0.b		; A0 C0
	cpy #$80.b		; C0 80
	rti		; 40

	bra  24.b		; 80 18
	sbc ($FF.b)		; F2 FF
	sbc $0FF8FF.l,X		; FF FF F8 0F
	sta $EB1F6F.l,X		; 9F 6F 1F EB
	asl $B6EB.w,X		; 1E EB B6
	stp		; DB
	sbc [$5A.b],Y		; F7 5A
	lda $1A.b		; A5 1A
	pea $150B.w		; F4 0B 15
	trb $6B94.w		; 1C 94 6B
	ldy #$F0.b		; A0 F0
	phd		; 0B
	jmp $80E9.w		; 4C E9 80
	ldy #$C1.b		; A0 C1
	ldy $16FF.w,X		; BC FF 16
	bit $0286.w		; 2C 86 02
	sbc $FECAB8.l,X		; FF B8 CA FE
	cpy #$F8.b		; C0 F8
	ora $D6D740.l		; 0F 40 D7 D6
	ora [$E0.b],Y		; 17 E0
	inc $4040.w,X		; FE 40 40
	beq  14.b		; F0 0E
	sbc $7E9F6E.l,X		; FF 6E 9F 7E
	and $5F7C.w		; 2D 7C 5F
	ldx $FEFE.w,Y		; BE FE FE
	lsr $F8E0.w,X		; 5E E0 F8
	bpl -100.b		; 10 9C
	asl $0B00.w		; 0E 00 0B
	asl $07.b		; 06 07
	lda #$08.b		; A9 08
	jmp.w [$FEC9]		; DC C9 FE
	.db $82, $D5, $C8		; 82 D5 C8
	trb $74.b		; 14 74
	cop $F8.b		; 02 F8
	mvp $E9,$64		; 44 64 E9
	inc $E434.w,X		; FE 34 E4
	sed		; F8
	ora $DFED72.l		; 0F 72 ED DF
	sbc $B2E02F.l,X		; FF 2F E0 B2
	cmp $B87F.w,X		; DD 7F B8
	sbc $DCFB67.l,X		; FF 67 FB DC
	sbc [$BE.b]		; E7 BE
	cld		; D8
	bvs -123.b		; 70 85
	cpx $3412.w		; EC 12 34
	clc		; 18
	ldx $A8.b,Y		; B6 A8
	ora [$06.b],Y		; 17 06
	cmp #$BB.b		; C9 BB
	jsr ($28B0.w,X)		; FC B0 28
	jsl $6D92DD.l		; 22 DD 92 6D
	xba		; EB
	sty $5F.b,X		; 94 5F
	eor $A4816E.l,X		; 5F 6E 81 A4
	ldx $F8.b		; A6 F8
	asl $4EC0.w		; 0E C0 4E
	inc $CA04.w,X		; FE 04 CA
	inc $DA9D.w,X		; FE 9D DA
	bcc 111.b		; 90 6F
	ldy #$F8.b		; A0 F8
	ora $FEBF5F.l		; 0F 5F BF FE
	eor $87FDFE.l		; 4F FE FD 87
	ldy #$F0.b		; A0 F0
	bpl -33.b		; 10 DF
	cmp $450183.l,X		; DF 83 01 45
	sta $BB.b,S		; 83 BB
	cmp [$7C.b]		; C7 7C
	tsx		; BA
	cpy #$FF.b		; C0 FF
	sbc ($CE.b),Y		; F1 CE
	nop		; EA
	pea $F8E0.w		; F4 E0 F8
	ora $90D061.l		; 0F 61 D0 90
	cpx #$FE.b		; E0 FE
	jsr $FEC0.w		; 20 C0 FE
	.db $82, $F2, $FF		; 82 F2 FF
	sed		; F8
	ora ($FF.b,S),Y		; 13 FF
	sbc $CBC9B8.l,X		; FF B8 C9 CB
	sbc ($0B.b,X)		; E1 0B
	adc ($0A.b,X)		; 61 0A
	and ($CD.b,X)		; 21 CD
	jsr $21FF.w		; 20 FF 21
	sbc [$22.b],Y		; F7 22
	beq  50.b		; F0 32
	sbc $3F06FF.l,X		; FF FF 06 3F
	ora [$37.b],Y		; 17 37
	sta [$77.b],Y		; 97 77
	dec $37.b,X		; D6 37
	cmp ($33.b,S),Y		; D3 33
	beq  49.b		; F0 31
	plx		; FA
	dec A		; 3A
	sbc $FF3F.w,X		; FD 3F FF
	sbc ($55.b,X)		; E1 55
	cmp $C9D5C9.l		; CF C9 D5 C9
	cmp ($49.b,S),Y		; D3 49
	cmp ($C1.b),Y		; D1 C1
	rti		; 40

	inc $1093.w,X		; FE 93 10
	sbc $3013FF.l,X		; FF FF 13 30
	jsr $A2E0.w		; 20 E0 A2
	beq -92.b		; F0 A4
	beq  38.b		; F0 26
	beq -66.b		; F0 BE
	cpx #$3E.b		; E0 3E
	rts		; 60

	jmp ($FF60.w)		; 6C 60 FF
	sbc $C8C0CC.l,X		; FF CC C0 C8
	and [$9C.b],Y		; 37 9C
	adc $A6.b,S		; 63 A6
	eor $CB.b		; 45 CB
	asl A		; 0A
	lda $3D24.w,X		; BD 24 3D
	clc		; 18
	eor $34.b,X		; 55 34
	adc #$F8.b		; 69 F8
	adc $34.b		; 65 34
	ldy $0018.w		; AC 18 00
	sbc $0042.w,Y		; F9 42 00
	rep #$00		; C2 00
	php		; 08
	beq -118.b		; F0 8A
	inc $FE4E.w,X		; FE 4E FE
	sta $7F.b,S		; 83 7F
	eor $F1.b,S		; 43 F1
	rol $45BF.w		; 2E BF 45
	inc $BF42.w,X		; FE 42 BF
	lda $80.b,S		; A3 80
	inx		; E8
	bpl -12.b		; 10 F4
	sed		; F8
	dec $FCDA.w,X		; DE DA FC
	lda $DEFD.w		; AD FD DE
	inc $FEEE.w,X		; FE EE FE
	cpx #$F8.b		; E0 F8
	bvs  96.b		; 70 60
	cmp $7202.w,X		; DD 02 72
	sbc ($C2.b,S),Y		; F3 C2
	and $7EEA1A.l		; 2F 1A EA 7E
	inc $40.b,X		; F6 40
	jsr $6040.w		; 20 40 60
	rti		; 40

	rti		; 40

	bvs -54.b		; 70 CA
	cld		; D8
	ora $35BC.w		; 0D BC 35
	inc $38F8.w,X		; FE F8 38
	pea $0507.w		; F4 07 05
	sbc ($FE.b)		; F2 FE
	dec $D9.b,X		; D6 D9
	sbc $3FEB.w,X		; FD EB 3F
	dey		; 88
	sed		; F8
	lda $ECF3.w,X		; BD F3 EC
	inc $E3FE.w		; EE FE E3
	and ($C3.b,X)		; 21 C3
	ora $C1C3.w,X		; 1D C3 C1
	sbc $B0.b,S		; E3 B0
	cmp ($F3.b,X)		; C1 F3
	jsl $FE02FE.l		; 22 FE 02 FE
	trb $4885.w		; 1C 85 48
	brk $3C.b		; 00 3C
	cmp ($D1.b)		; D2 D1
	inc $FEDC.w,X		; FE DC FE
	sbc $29F8FF.l,X		; FF FF F8 29
	sei		; 78
	tsx		; BA
	sbc $F3F4.w,Y		; F9 F4 F3
	sed		; F8
	cmp [$C8.b]		; C7 C8
	ora [$84.b],Y		; 17 84
	adc ($94.b,S),Y		; 73 94
	tsa		; 3B
	iny		; C8
	ora [$7E.b],Y		; 17 7E
	and [$86.b]		; 27 86
	brk $04.b		; 00 04
	lda [$B9.b]		; A7 B9
	sbc $681030.l,X		; FF 30 10 68
	rts		; 60

	cli		; 58
	clc		; 18
	clv		; B8
	sta ($11.b,S),Y		; 93 11
	eor ($BF.b,X)		; 41 BF
	and ($68.b,X)		; 21 68
	sbc ($10.b),Y		; F1 10
	sbc $BE7FFE.l		; EF FE 7F BE
	ldy #$B0.b		; A0 B0
	ora ($73.b,S),Y		; 13 73
	sbc $B9FF39.l,X		; FF 39 FF B9
	sbc $30FEB0.l,X		; FF B0 FE 30
	sbc $FFFF20.l,X		; FF 20 FF FF
	cpx #$E0.b		; E0 E0
	bpl 112.b		; 10 70
	rts		; 60

	beq -32.b		; F0 E0
	pla		; 68
	beq  56.b		; F0 38
	beq  24.b		; F0 18
	beq  16.b		; F0 10
	sed		; F8
	trb $F8.b		; 14 F8
	tsb $C2.b		; 04 C2
	xba		; EB
	sed		; F8
	ply		; 7A
	beq  15.b		; F0 0F
	cmp $4F20EF.l		; CF EF 20 4F
	rts		; 60

	cmp [$AA.b]		; C7 AA
	inc $DFFE.w,X		; FE FE DF
	sbc $FF.b,X		; F5 FF
	brk $9F.b		; 00 9F
	lsr $BA.b		; 46 BA
	inc $F2FD.w,X		; FE FD F2
	ora $F5.b,S		; 03 F5
	asl $E5.b		; 06 E5
	asl $EB.b		; 06 EB
	asl $0EE7.w		; 0E E7 0E
	ora $1CD500.l,X		; 1F 00 D5 1C
	tyx		; BB
	plp		; 28
	eor $70.b,S		; 43 70
	lsr $E220.w		; 4E 20 E2
	sta [$FE.b]		; 87 FE
	beq  -2.b		; F0 FE
	sep #$00		; E2 00
	dec $00.b		; C6 00
	stx $FFF8.w		; 8E F8 FF
	ora $4FD00F.l		; 0F 0F D0 4F
	plp		; 28
	adc [$24.b]		; 67 24
	adc $14.b,S		; 63 14
	and ($12.b,S),Y		; 33 12
	and ($0A.b),Y		; 31 0A
	ora $0082.w,Y		; 19 82 00
	inc $B080.w,X		; FE 80 B0
	ora ($FE.b,S),Y		; 13 FE
	rti		; 40

	jsr ($0236.w,X)		; FC 36 02
	eor $FE.b,X		; 55 FE
	cpx #$F8.b		; E0 F8
	ora $C0FE85.l		; 0F 85 FE C0
	.db $42, $AB		; 42 AB
	sta $710EB8.l		; 8F B8 0E 71
	ora [$60.b]		; 07 60
	ldy $4C.b,X		; B4 4C
	php		; 08
	beq  -2.b		; F0 FE
	jsr ($E010.w,X)		; FC 10 E0
	inc $FFFF.w,X		; FE FF FF
	cpx #$F8.b		; E0 F8
	ora $FD00FE.l		; 0F FE 00 FD
	ora ($FB.b,X)		; 01 FB
	cop $F2.b		; 02 F2
	ora $95.b		; 05 95
	tas		; 1B
	stp		; DB
	sbc [$F7.b]		; E7 F7
	ora $4EFF25.l		; 0F 25 FF 4E
	rol $F288.w,X		; 3E 88 F2
	jmp $01FCD7.l		; 5C D7 FC 01
	brk $D7.b		; 00 D7
	bcs -25.b		; B0 E7
	jsr $0C1F.w		; 20 1F 0C
	cmp $C1CE40.l		; CF 40 CE C1
	sta $96FE81.l		; 8F 81 FE 96
	sbc ($02.b,X)		; E1 02
	cmp [$08.b]		; C7 08
	jsr ($001E.w,X)		; FC 1E 00
	rol $7EFE.w,X		; 3E FE 7E
	inc $0FF0.w,X		; FE F0 0F
	pei ($D6.b)		; D4 D6
	asl $0D.b		; 06 0D
	asl $0705.w		; 0E 05 07
	asl A		; 0A
	sta [$0A.b]		; 87 0A
	lda $9236B4.l,X		; BF B4 36 92
	tsb $1EE1.w		; 0C E1 1E
	lda ($5E.b,X)		; A1 5E
	rol $0B98.w		; 2E 98 0B
	sbc $08BF42.l,X		; FF 42 BF 08
	bmi -81.b		; 30 AF
	lda ($68.b),Y		; B1 68
	plx		; FA
	inc $3F40.w,X		; FE 40 3F
	inx		; E8
	bvc  -2.b		; 50 FE
	iny		; C8
	iny		; C8
	ora $09E004.l		; 0F 04 E0 09
	ora ($FE.b,X)		; 01 FE
	inc $9002.w,X		; FE 02 90
	lda $FF1E15.l,X		; BF 15 1E FF
	inc $EC04.w,X		; FE 04 EC
	cop $E8.b		; 02 E8
	ora [$FF.b],Y		; 17 FF
	lsr $5F3E.w,X		; 5E 3E 5F
	and $9F0BFF.l,X		; 3F FF 0B 9F
	and $FEBFFF.l,X		; 3F FF BF FE
	rol $DF3F.w,X		; 3E 3F DF
	sbc $DDFFE0.l,X		; FF E0 FF DD
	sta $2F.b,S		; 83 2F
	tya		; 98
	lda $72FC01.l,X		; BF 01 FC 72
	sta ($07.b),Y		; 91 07
	ora #$BC.b		; 09 BC
	cpy $AB.b		; C4 AB
	cmp ($FC.b),Y		; D1 FC
	lda $0F0172.l,X		; BF 72 01 0F
	tsb $83FF.w		; 0C FF 83
	sbc ($61.b,X)		; E1 61
	beq   1.b		; F0 01
	ora $07.b,S		; 03 07
	ora $B10087.l,X		; 1F 87 00 B1
	cmp ($FE.b),Y		; D1 FE
	sbc $8094F0.l,X		; FF F0 94 80
	bit $FB.b,X		; 34 FB
	cmp $5FA04E.l,X		; DF 4E A0 5F
	rti		; 40

	cmp ($9F.b),Y		; D1 9F
	beq  47.b		; F0 2F
	eor #$86.b		; 49 86
	eor [$80.b]		; 47 80
	sbc $41.b,S		; E3 41
	adc [$FF.b]		; 67 FF
	and $30204C.l,X		; 3F 4C 20 30
	bmi  56.b		; 30 38
	sec		; 38
	bit $4E7C.w,X		; 3C 7C 4E
	ldy #$1F.b		; A0 1F
	sbc $E0FEB2.l,X		; FF B2 FE E0
	eor $C2BEC1.l,X		; 5F C1 BE C2
	ldy $7884.w,X		; BC 84 78
	rol $E9.b,X		; 36 E9
	inc $B802.w,X		; FE 02 B8
	ldy #$F0.b		; A0 F0
	ora #$A8.b		; 09 A8
	sbc ($5C.b)		; F2 5C
	eor $F860.w,X		; 5D 60 F8
	ora $0E.b,X		; 15 0E
	asl $85FE.w		; 0E FE 85
	inx		; E8
	tsx		; BA
	tya		; 98
	tax		; AA
	sbc ($03.b,S),Y		; F3 03
	ldy #$3F.b		; A0 3F
	ora [$74.b],Y		; 17 74
	sbc ($0F.b),Y		; F1 0F
	sbc $FFFF81.l,X		; FF 81 FF FF
	cpy #$00.b		; C0 00
	dey		; 88
	brk $3B.b		; 00 3B
	cop $FF.b		; 02 FF
	ora $FC.b		; 05 FC
	php		; 08
	cmp $B000.w,Y		; D9 00 B0
	bpl  96.b		; 10 60
	ldy #$1A.b		; A0 1A
	inc $C881.w,X		; FE 81 C8
	sbc ($84.b,X)		; E1 84
	sbc ($01.b),Y		; F1 01
	dec $E7.b,X		; D6 E7
	ora [$CF.b]		; 07 CF
	ora $FF3F1F.l,X		; 1F 1F 3F FF
	ora $7E.b,X		; 15 7E
	ror $FDFD.w,X		; 7E FD FD
	lda $81.b,S		; A3 81
	eor [$02.b]		; 47 02
	stx $1E04.w		; 8E 04 1E
	lda ($B4.b),Y		; B1 B4
	cmp ($FE.b),Y		; D1 FE
	sbc $030384.l,X		; FF 84 03 03
	jmp ($F8FC.w,X)		; 7C FC F8
	sed		; F8
	sbc ($F1.b),Y		; F1 F1
	sbc $E3.b,S		; E3 E3
	cmp [$C7.b]		; C7 C7
	sta $2C189F.l,X		; 9F 9F 18 2C
	adc $58D838.l,X		; 7F 38 D8 58
	bpl -23.b		; 10 E9
	asl $92.b		; 06 92
	sbc ($BC.b),Y		; F1 BC
	ora [$96.b]		; 07 96
	adc ($71.b),Y		; 71 71
	stx $D28E.w		; 8E 8E D2
	bit #$C0.b		; 89 C0
	beq -16.b		; F0 F0
	jmp.w [$B86D]		; DC 6D B8
	eor #$CE.b		; 49 CE
	plx		; FA
	bne  13.b		; D0 0D
	jsr $D842.w		; 20 42 D8
	ora $D480.w		; 0D 80 D4
	rol $B88A.w		; 2E 8A B8
	sbc ($F0.b),Y		; F1 F0
	eor [$B1.b],Y		; 57 B1
	cpy #$42.b		; C0 42
	and $B9E020.l,X		; 3F 20 E0 B9
	and $030371.l,X		; 3F 71 03 03
	asl $C7.b		; 06 C7
	ora [$9F.b]		; 07 9F
	sta $A6.b		; 85 A6
	cpy #$F1.b		; C0 F1
	clc		; 18
	sbc $04FFF8.l,X		; FF F8 FF 04
	ora $0901.w,X		; 1D 01 09
	asl $0E.b		; 06 0E
	ora #$19.b		; 09 19
	and $B6A6C6.l,X		; 3F C6 A6 B6
	bit #$58.b		; 89 58
	eor [$30.b]		; 47 30
	xce		; FB
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $6FEFEF.l,X		; FF EF EF 6F
	sbc $086E2E.l		; EF 2E 6E 08
	lda #$1C.b		; A9 1C
	trb $6363.w		; 1C 63 63
	stz $639C.w		; 9C 9C 63
	rts		; 60

	adc $809FFF.l,X		; 7F FF 9F 80
	adc [$0C.b],Y		; 77 0C
	cmp $F93E3C.l,X		; DF 3C 3E F9
	txa		; 8A
	jsr ($FCFC.w,X)		; FC FC FC
	cpx #$E3.b		; E0 E3
	sty $9E.b		; 84 9E
	sbc $7D1C2A.l,X		; FF 2A 1C 7D
	sec		; 38
	sbc $7071.w,X		; FD 71 70
	sta $047B80.l		; 8F 80 7B 04
	lda $8978.w,Y		; B9 78 89
	tsa		; 3B
	wai		; CB
	bit $6880.w,X		; 3C 80 68
	beq -15.b		; F0 F1
	sta $8F.b,S		; 83 8F
	lda [$9E.b]		; A7 9E
	asl $7E.b,X		; 16 7E
	bit $90CC.w		; 2C CC 90
	cmp ($D0.b)		; D2 D0
	rts		; 60

	cmp ($FE.b,X)		; C1 FE
	sed		; F8
	beq  -4.b		; F0 FC
	cpy #$F2.b		; C0 F2
	tsb $8041.w		; 0C 41 80
	ora ($8A.b),Y		; 11 8A
	stx $F5.b		; 86 F5
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sed		; F8
	sbc $FF.b,X		; F5 FF
	brk $8C.b		; 00 8C
	bpl -80.b		; 10 B0
	ora $10B0A6.l		; 0F A6 B0 10
	cop $0F.b		; 02 0F
	tsb $17.b		; 04 17
	php		; 08
	and $003F10.l		; 2F 10 3F 00
	eor $0086AF.l,X		; 5F AF 86 00
	ldx $FF00.w,Y		; BE 00 FF
	sta ($90.b,X)		; 81 90
	sty $FE.b		; 84 FE
	tax		; AA
	lsr $B2.b,X		; 56 B2
	ror $FFA4.w,X		; 7E A4 FF
	sbc $2FF00F.l,X		; FF 0F F0 2F
	ldy #$E00F.w		; A0 0F E0
	eor $C01F40.l,X		; 5F 40 1F C0
	ldx $3E80.w,Y		; BE 80 3E
	sta ($7E.b,X)		; 81 7E
	sbc $0F1C21.l		; EF 21 1C 0F
	cmp $1E1FFE.l		; CF FE 1F 1E
	sta $FE3E3F.l,X		; 9F 3F 3E FE
	sbc $7E7FFE.l,X		; FF FE 7F 7E
	ror $F205.w,X		; 7E 05 F2
	ora $F8.b,S		; 03 F8
	ora ($FC.b,X)		; 01 FC
	cop $18.b		; 02 18
	ora $09.b		; 05 09
	ora #$FFFF.w		; 09 FF FF
	ora ($8B.b,X)		; 01 8B
	ora ($13.b)		; 12 13
	cop $F0.b		; 02 F0
	xce		; FB
	sed		; F8
	sbc $FEFC.w,X		; FD FC FE
	ora $02FD.w,Y		; 19 FD 02
	sbc ($06.b,S),Y		; F3 06
	sbc $04F7FF.l,X		; FF FF F7 04
	ror $0C.b		; 66 0C
	inc $74DC.w		; EE DC 74
	cmp ($6A.b,S),Y		; D3 6A
	sbc $093C2C.l,X		; FF 2C 3C 09
	cld		; D8
	sta $F0.b,S		; 83 F0
	sbc $E847FF.l,X		; FF FF 47 E8
	sbc $E8.b,S		; E3 E8
	cmp $03.b,S		; C3 03
	bvs   4.b		; 70 04
	rts		; 60

	brk $20.b		; 00 20
	cmp ($C3.b,X)		; C1 C3
	adc $E7.b,S		; 63 E7
	sbc [$C3.b]		; E7 C3
	cmp ($EF.b,X)		; C1 EF
	sbc ($F7.b,S),Y		; F3 F7
	inc $A1F8.w,X		; FE F8 A1
	cpx #$1193.w		; E0 93 11
	cpx #$5709.w		; E0 09 57
	ora $270187.l		; 0F 87 01 27
	ora $50EAA1.l		; 0F A1 EA 50
	lda $02A1CC.l,X		; BF CC A1 02
	phd		; 0B
	tsb $87.b		; 04 87
	sta $DD.b,X		; 95 DD
	ora [$00.b],Y		; 17 00
	and $FF20D9.l		; 2F D9 20 FF
	tya		; 98
	sbc ($5E.b),Y		; F1 5E
	sed		; F8
	ora #$1C20.w		; 09 20 1C
	jmp $FCFDCD.l		; 5C CD FD FC
	cop $FA.b		; 02 FA
	brk $FE.b		; 00 FE
	stx $FE.b		; 86 FE
	inc $F604.w,X		; FE 04 F6
	tsb $C2.b		; 04 C2
	tsb $FE.b		; 04 FE
	bra -29.b		; 80 E3
	jsr ($406D.w,X)		; FC 6D 40
	sta $01.b,X		; 95 01
	adc #$01FE.w		; 69 FE 01
	sta $0BE2.w,Y		; 99 E2 0B
	ldx #$FF5E.w		; A2 5E FF
	inc $003E.w,X		; FE 3E 00
	tsb $287E.w		; 0C 7E 28
	sbc ($C2.b,S),Y		; F3 C2
	lda $FF.b,S		; A3 FF
	rol $0CFF.w,X		; 3E FF 0C
	sbc $E1FF12.l,X		; FF 12 FF E1
	cop $FB.b		; 02 FB
	cop $19.b		; 02 19
	sbc ($1C.b,X)		; E1 1C
	cpx #$E016.w		; E0 16 E0
	phd		; 0B
	sbc $00.b,S		; E3 00
	ora ($3F.b,S),Y		; 13 3F
	sbc $0D04.w,X		; FD 04 0D
	sbc $EE0E0C.l		; EF 0C 0E EE
	sbc $F707FF.l		; EF FF 07 F7
	ora $F3.b,S		; 03 F3
	brk $FF.b		; 00 FF
	sbc $0088E8.l,X		; FF E8 88 00
	jmp $CA40.w		; 4C 40 CA
	rti		; 40

	sta $5094.w,Y		; 99 94 50
	ora $6027B0.l		; 0F B0 27 60
	lsr $D0.b,X		; 56 D0
	sbc $F023F0.l,X		; FF F0 23 F0
	sbc [$B0.b],Y		; F7 B0
	sbc ($30.b,S),Y		; F3 30
	adc $64.b,X		; 75 64
	inc $41.b,X		; F6 41
	cmp [$EF.b]		; C7 EF
	stx $C1.b		; 86 C1
	ora [$CF.b]		; 07 CF
	and $6B.b,S		; 23 6B
	and $039A.w,Y		; 39 9A 03
	bra   3.b		; 80 03
	rts		; 60

	adc $69EA.w		; 6D EA 69
	tya		; 98
	and $7FBDF0.l,X		; 3F F0 BD 7F
	ora [$9F.b]		; 07 9F
	tya		; 98
	and $03E1FF.l,X		; 3F FF E1 03
	sec		; 38
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	tsb $02.b		; 04 02
	ora [$02.b]		; 07 02
	ora $4AA4.w		; 0D A4 4A
	ror A		; 6A
	sec		; 38
	jsl $C709E0.l		; 22 E0 09 C7
	rts		; 60

	sta $83CB.w,Y		; 99 CB 83
	dec $63DC.w		; CE DC 63
	bvc -113.b		; 50 8F
	adc $944A.w		; 6D 4A 94
	inc $4CFD.w,X		; FE FD 4C
	sep #$82		; E2 82
	tsb $06.b		; 04 06
	sbc $03FE4B.l,X		; FF 4B FE 03
	cop $05.b		; 02 05
	asl $0A.b		; 06 0A
	tsb $101C.w		; 0C 1C 10
	bcs  32.b		; B0 20
	rol A		; 2A
	jsr ($FEE5.w,X)		; FC E5 FE
	bne -16.b		; D0 F0
	sbc $06B2AC.l,X		; FF AC B2 06
	bvc -95.b		; 50 A1
	cpy #$20.b		; C0 20
	bra  96.b		; 80 60
	bra  -2.b		; 80 FE
	sbc $D50561.l,X		; FF 61 05 D5
	sbc $C700.w,Y		; F9 00 C7
	jsr $603F.w		; 20 3F 60
	adc $217F61.l,X		; 7F 61 7F 21
	asl $42.b		; 06 42
	ora #$FF.b		; 09 FF
	sbc $040987.l,X		; FF 87 09 04
	ora ($0D.b,S),Y		; 13 0D
	and ($0F.b)		; 32 0F
	rts		; 60

	asl $39C1.w,X		; 1E C1 39
	cmp [$04.b]		; C7 04
	jmp.w [$BD08]		; DC 08 BD
	sbc $7B09FF.l,X		; FF FF 09 7B
	bpl  -5.b		; 10 FB
	bmi -10.b		; 30 F6
	rts		; 60

	sbc $C0.b,X		; F5 C0
	xba		; EB
	cmp ($C7.b,X)		; C1 C7
	pla		; 68
	bra -92.b		; 80 A4
	cpy #$FF.b		; C0 FF
	sbc $9140B2.l,X		; FF B2 40 91
	rts		; 60

	cld		; D8
	bit $68.b		; 24 68
	sta ($BC.b)		; 92 BC
	cmp ($DE.b,X)		; C1 DE
	sbc ($00.b,X)		; E1 00
	cmp [$80.b],Y		; D7 80
	stp		; DB
	sbc $6D007F.l,X		; FF 7F 00 6D
	brk $6E.b		; 00 6E
	tsb $B7.b		; 04 B7
	cop $B7.b		; 02 B7
	sta ($DB.b,X)		; 81 DB
	cmp ($ED.b,X)		; C1 ED
	brk $8F.b		; 00 8F
	brk $43.b		; 00 43
	xce		; FB
	sbc $74BC.w		; ED BC 74
	jsr $C928.w		; 20 28 C9
	tsb $80.b		; 04 80
	sta $6343FF.l		; 8F FF 43 63
	jsr ($573F.w,X)		; FC 3F 57
	cmp ($E7.b),Y		; D1 E7
	sbc $FB80FF.l,X		; FF FF 80 FB
	ora $183807.l,X		; 1F 07 38 18
	and ($12.b,S),Y		; 33 12
	and $043C19.l,X		; 3F 19 3C 04
	trb $1F0C.w		; 1C 0C 1F
	asl $82FE.w		; 0E FE 82
	ora $079123.l,X		; 1F 23 91 07
	ora $001E0C.l,X		; 1F 0C 1E 00
	ora $79AD.w,Y		; 19 AD 79
	ora ($FF.b,S),Y		; 13 FF
	sbc $3981D3.l,X		; FF D3 81 39
	ora ($7F.b,X)		; 01 7F
	rts		; 60

	sbc ($10.b,S),Y		; F3 10
	and $DF01.w,X		; 3D 01 DF
	bpl  -7.b		; 10 F9
	bit #$C7.b		; 89 C7
	mvp $E1,$1E		; 44 1E E1
	beq  17.b		; F0 11
	inc $E011.w,X		; FE 11 E0
	ora $E0FA1F.l		; 0F 1F FA E0
	beq   6.b		; F0 06
	and $388FFC.l,X		; 3F FC 8F 38
	jmp ($F3E0.w,X)		; 7C E0 F3
	cpx #$80.b		; E0 80
	sec		; 38
	tya		; 98
	bpl  -4.b		; 10 FC
	php		; 08
	inc $101F.w,X		; FE 1F 10
	pea $08FE.w		; F4 FE 08
	stz $F664.w,X		; 9E 64 F6
	and #$0B.b		; 29 0B
	jmp $E47F.w		; 4C 7F E4
	adc $F4E1.w		; 6D E1 F4
	jsr ($F8F0.w,X)		; FC F0 F8
	bra  55.b		; 80 37
	rti		; 40

	ora $7FFA20.l,X		; 1F 20 FA 7F
	inc $100F.w,X		; FE 0F 10
	asl $19.b		; 06 19
	cop $1D.b		; 02 1D
	cop $37.b		; 02 37
	adc $1F3F1F.l,X		; 7F 1F 3F 1F
	sty $FF.b		; 84 FF
	sbc $0F06BC.l,X		; FF BC 06 0F
	cop $06.b		; 02 06
	cop $0A.b		; 02 0A
	and [$8F.b],Y		; 37 8F
	sbc $9F67F8.l,X		; FF F8 67 9F
	eor $3FCF3F.l		; 4F 3F CF 3F
	sta $FE9F7F.l		; 8F 7F 9F FE
	ora $8787FF.l,X		; 1F FF 87 87
	bpl -33.b		; 10 DF
	sta [$BF.b]		; 87 BF
	ora $FE7FFE.l		; 0F FE 7F FE
	ora $F2EBE1.l,X		; 1F E1 EB F2
	inc $F0EE.w,X		; FE EE F0
	sbc ($FC.b,S),Y		; F3 FC
	sed		; F8
	plp		; 28
	lda ($FA.b),Y		; B1 FA
	ror $E0.b,X		; 76 E0
	sbc $F1DF.w,X		; FD DF F1
	beq -16.b		; F0 F0
	sed		; F8
	tsb $E003.w		; 0C 03 E0
	brk $70.b		; 00 70
	bra 120.b		; 80 78
	bra  60.b		; 80 3C
	rti		; 40

	stz $B980.w,X		; 9E 80 B9
	sbc $10CFFF.l,X		; FF FF CF 10
	inc $E0.b		; E6 E0
	jsr ($FF70.w,X)		; FC 70 FF
	sei		; 78
	adc $1E7F3C.l,X		; 7F 3C 7F 1E
	lda $0FDF1F.l,X		; BF 1F DF 0F
	eor [$A8.b]		; 47 A8
	cmp $0EEF06.l,X		; DF 06 EF 0E
	txy		; 9B
	and $03.b,X		; 35 03
	mvp $A8,$91		; 44 91 A8
	sbc $F7E4C4.l,X		; FF C4 E4 F7
	eor [$8C.b]		; 47 8C
	lda $E5.b,X		; B5 E5
	tsa		; 3B
	and [$77.b]		; 27 77
	eor $C39FE3.l		; 4F E3 9F C3
	sbc $C13FC3.l,X		; FF C3 3F C1
	and $603FC0.l,X		; 3F C0 3F 60
	ora $C30F30.l,X		; 1F 30 0F C3
	sbc $83037E.l		; EF 7E 03 83
	sta $BF.b,S		; 83 BF
	ora $7F.b,S		; 03 7F
	ora #$FB.b		; 09 FB
	sta $1F.b,S		; 83 1F
	plx		; FA
	sta [$FA.b],Y		; 97 FA
	jsr $C120.w		; 20 20 C1
	eor #$E1.b		; 49 E1
	txa		; 8A
	sbc $FCF8.w		; ED F8 FC
	jsr ($FEFE.w,X)		; FC FE FE
	sty $FC.b		; 84 FC
	sbc $F0FF.w,X		; FD FF F0
	ora $08.b,X		; 15 08
	asl $09.b,X		; 16 09
	inc A		; 1A
	ora [$9B.b]		; 07 9B
	ora [$8B.b]		; 07 8B
	ora [$CB.b]		; 07 CB
	ora [$4F.b]		; 07 4F
	xce		; FB
	brk $83.b		; 00 83
	sbc $916F83.l		; EF 83 6F 91
	ora $0F02.w		; 0D 02 0F
	ora $FE.b,S		; 03 FE
	sbc ($AA.b,X)		; E1 AA
	phb		; 8B
	sta [$FE.b]		; 87 FE
	sta $C7.b,S		; 83 C7
	and $40E9BC.l,X		; 3F BC E9 40
	lda $FEEBAE.l		; AF AE EB FE
	sbc $F0.b,X		; F5 F0
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	ora $86F089.l,X		; 1F 89 F0 86
	sbc $FFC0.w,Y		; F9 C0 FF
	sbc ($A0.b,X)		; E1 A0
	adc #$FF.b		; 69 FF
	jsr ($F680.w,X)		; FC 80 F6
	rol A		; 2A
	sbc $F8F080.l,X		; FF 80 F0 F8
	tsb $A8C2.w		; 0C C2 A8
	phd		; 0B
	and ($68.b),Y		; 31 68
	asl $56FF.w		; 0E FF 56
	bit #$74.b		; 89 74
	phb		; 8B
	pha		; 48
	bmi  -2.b		; 30 FE
	lda [$FE.b],Y		; B7 FE
	mvp $FE,$BB		; 44 BB FE
	tsa		; 3B
	lsr $39.b		; 46 39
	ldy #$A3.b		; A0 A3
	cmp [$0F.b]		; C7 0F
	bra -109.b		; 80 93
	bra -69.b		; 80 BB
	inc $80B9.w,X		; FE B9 80
	tsx		; BA
	brk $BB.b		; 00 BB
	sbc $77FEFF.l,X		; FF FF FE 77
	sbc $F36F.w,Y		; F9 6F F3
	ora $E71BF3.l		; 0F F3 1B E7
	ora $30E7.w,Y		; 19 E7 30
	cmp $23CE31.l		; CF 31 CE 23
	and $71DCEC.l,X		; 3F EC DC 71
	xce		; FB
	adc $FB.b,S		; 63 FB
	ora $F7.b,S		; 03 F7
	inc $EF01.w,X		; FE 01 EF
	ora ($81.b,X)		; 01 81
	cmp $00F7F1.l,X		; DF F1 F7 00
	dec $F817.w,X		; DE 17 F8
	inc $FBF1.w,X		; FE F1 FB
	cmp [$F7.b]		; C7 F7
	lsr $DE99.w,X		; 5E 99 DE
	and $BCFDE1.l,X		; 3F E1 FD BC
	adc $FDF805.l,X		; 7F 05 F8 FD
	beq -13.b		; F0 F3
	phx		; DA
	sbc ($0F.b)		; F2 0F
	lda $477F1E.l,X		; BF 1E 7F 47
	sty $3C.b		; 84 3C
	sbc $ED3EDD.l,X		; FF DD 3E ED
	tya		; 98
	ror $62FF.w		; 6E FF 62
	bra  -1.b		; 80 FF
	ora $7FE2.w,X		; 1D E2 7F
	bra  28.b		; 80 1C
	ror $F07E.w,X		; 7E 7E F0
	sbc $55C270.l,X		; FF 70 C2 55
	eor ($16.b),Y		; 51 16
	clv		; B8
	ora #$C2.b		; 09 C2
	ldy #$13.b		; A0 13
	lda $EA10BB.l,X		; BF BB 10 EA
	tsb $C9.b		; 04 C9
	inc $E109.w,X		; FE 09 E1
	ora #$1D.b		; 09 1D
	jmp.w [$FED3]		; DC D3 FE
	sbc $C6F296.l,X		; FF 96 F2 C6
	and $FC3C.w,Y		; 39 3C FC
	inc $8943.w,X		; FE 43 89
	adc $7D82.w,Y		; 79 82 7D
	inc $7C83.w,X		; FE 83 7C
	cmp $3C.b,S		; C3 3C
	brk $18.b		; 00 18
	sbc ($7B.b,S),Y		; F3 7B
	inc $FE7D.w,X		; FE 7D FE
	sbc $7EFE.w,X		; FD FE 7E
	adc $9C63F8.l,X		; 7F F8 63 9C
	ror $99.b		; 66 99
	lsr $B9.b		; 46 B9
	jmp $FEB3.w		; 4C B3 FE
	cli		; 58
	lda [$59.b]		; A7 59
	ldx $9F.b		; A6 9F
	dec $5B.b		; C6 5B
	ldy $00.b		; A4 00
	cmp $BD00.w,X		; DD 00 BD
	plp		; 28
	brk $B7.b		; 00 B7
	inc $FFFF.w,X		; FE FF FF
	lda $39AE00.l		; AF 00 AE 39
	inc $F807.w,X		; FE 07 F8
	asl $38E2.w,X		; 1E E2 38
	iny		; C8
	adc ($90.b,S),Y		; 73 90
	sbc [$20.b]		; E7 20
	cmp [$F7.b]		; C7 F7
	lda $800F40.l		; AF 40 0F 80
	sec		; 38
	eor ($E1.b,S),Y		; 53 E1
	ora ($F0.b,X)		; 01 F0
	ora [$E0.b]		; 07 E0
	ora $921FC0.l		; 0F C0 1F 92
	adc ($83.b),Y		; 71 83
	ora $8936.w,Y		; 19 36 89
	sec		; 38
	sty $4C.b		; 84 4C
	ldx $B3.b,Y		; B6 B3
	pea $EAFE.w		; F4 FE EA
	sbc $5E78FF.l,X		; FF FF 78 5E
	tyx		; BB
	inc $02FE.w,X		; FE FE 02
	sbc $F102.w,X		; FD 02 F1
	cop $E1.b		; 02 E1
	tsb $01.b		; 04 01
	tsb $87.b		; 04 87
	cmp $020403.l,X		; DF 03 04 02
	ora #$FE.b		; 09 FE
	tsb $FD.b		; 04 FD
	sbc $FDF1.w,X		; FD F1 FD
	sbc ($CD.b,X)		; E1 CD
	lda $7FFD.w,Y		; B9 FD 7F
	ora $FB.b,S		; 03 FB
	sta [$D9.b]		; 87 D9
	inc $04.b,X		; F6 04
	inc $43.b,X		; F6 43
	bit $9E21.w,X		; 3C 21 9E
	and ($DE.b,X)		; 21 DE
	adc ($9E.b,X)		; 61 9E
	rti		; 40

	sbc $C082.w,X		; FD 82 C0
	sbc #$16.b		; E9 16
	cmp $BE.b,S		; C3 BE
	bra -34.b		; 80 DE
	cpy #$DE.b		; C0 DE
	lda $FE71.w		; AD 71 FE
	sbc $DBF7FF.l,X		; FF FF F7 DB
	cmp ($2D.b)		; D2 2D
	cmp [$29.b],Y		; D7 29
	pea $F60A.w		; F4 0A F6
	asl A		; 0A
	sbc $7E03.w,X		; FD 03 7E
	sta ($3E.b,X)		; 81 3E
	cmp ($0E.b,X)		; C1 0E
	cmp $FF.b,S		; C3 FF
	sbc ($00.b),Y		; F1 00
	ldy $01FE.w		; AC FE 01
	tay		; A8
	ora ($28.b,X)		; 01 28
	brk $A8.b		; 00 A8
	brk $D4.b		; 00 D4
	brk $A0.b		; 00 A0
	brk $E8.b		; 00 E8
	sta $FED4F8.l,X		; 9F F8 D4 FE
	jsr ($4EF4.w,X)		; FC F4 4E
	eor $2FFE.w,Y		; 59 FE 2F
	beq  15.b		; F0 0F
	jsr ($FE08.w,X)		; FC 08 FE
	pea $C6FE.w		; F4 FE C6
	ldx $FF.b,Y		; B6 FF
	lda $0BF8FE.l		; AF FE F8 0B
	ora ($01.b)		; 12 01
	dec $01.b,X		; D6 01
	bit $0813.w		; 2C 13 08
	and [$18.b]		; 27 18
	eor [$38.b]		; 47 38
	lda $A1.b,S		; A3 A1
	sbc $F1E05F.l,X		; FF 5F E0 F1
	sbc $2B00.w		; ED 00 2B
	bpl -41.b		; 10 D7
	jsr $40F7.w		; 20 F7 40
	sbc $00CF80.l		; EF 80 CF 00
	lda ($5B.b),Y		; B1 5B
	tyx		; BB
	sbc $FF.b,X		; F5 FF
	stz $0AB8.w,X		; 9E B8 0A
	cpx #$81.b		; E0 81
	lda ($F8.b,X)		; A1 F8
	ora $0B3C.w		; 0D 3C 0B
	sbc ($1B.b),Y		; F1 1B
	sbc ($13.b,X)		; E1 13
	sbc ($33.b,X)		; E1 33
	cmp ($63.b,X)		; C1 63
	and $C38149.l		; 2F 49 81 C3
	ora ($83.b,X)		; 01 83
	ora ($A0.b,X)		; 01 A0
	adc $FBAB.w,Y		; 79 AB FB
	tya		; 98
	asl A		; 0A
	rol A		; 2A
	brk $6C.b		; 00 6C
	bvc -108.b		; 50 94
	inc $60FC.w,X		; FE FC 60
	sed		; F8
	ora $4D3B6E.l		; 0F 6E 3B 4D
	plb		; AB
	inc $10F8.w,X		; FE F8 10
	inc $10E8.w,X		; FE E8 10
	pla		; 68
	inc $8C3B.w,X		; FE 3B 8C
	lda $8192FA.l		; AF FA 92 81
	adc $78FF38.l,X		; 7F 38 FF 78
	bvc -31.b		; 50 E1
	lsr $50E4.w		; 4E E4 50
	nop		; EA
	beq  -8.b		; F0 F8
	ora $807E.w		; 0D 7E 80
	asl $F0.b		; 06 F0
	bvs  -8.b		; 70 F8
	inc $F804.w,X		; FE 04 F8
	tsb $FEF0.w		; 0C F0 FE
	php		; 08
	beq  24.b		; F0 18
	eor ($04.b)		; 52 04
	dey		; 88
	adc ($F2.b,S),Y		; 73 F2
	sta $F4.b,S		; 83 F4
	lda [$6E.b],Y		; B7 6E
	eor $05.b,X		; 55 05
	inc $0DF8.w,X		; FE F8 0D
	dec $4E.b,X		; D6 4E
	inc $68FE.w,X		; FE FE 68
	inc $FC58.w,X		; FE 58 FC
	cpy #$F0.b		; C0 F0
	ora ($6E.b),Y		; 11 6E
	plb		; AB
	cop $6C.b		; 02 6C
	jsr ($FED0.w,X)		; FC D0 FE
	sbc $FE68.w,X		; FD 68 FE
	inc $00FE.w,X		; FE FE 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $ED.b		; 00 ED
	lda $F8FF00.l,X		; BF 00 FF F8
	bit $EEC1.w		; 2C C1 EE
	sed		; F8
	bpl  60.b		; 10 3C
	brk $43.b		; 00 43
	bit $3F40.w,X		; 3C 40 3F
	bra 127.b		; 80 7F
	cmp $F9.b,S		; C3 F9
	inc $00FC.w,X		; FE FC 00
	sbc $1818EE.l,X		; FF EE 18 18
	and $7F7FFF.l,X		; 3F FF 7F 7F
	php		; 08
	sbc $F0FF7E.l,X		; FF 7E FF F0
	bra   0.b		; 80 00
	rts		; 60

	bra  24.b		; 80 18
	cpx #$04.b		; E0 04
	sta $02F8FC.l		; 8F FC F8 02
	jsr ($7E81.w,X)		; FC 81 7E
	dec $C0FF.w,X		; DE FF C0
	cpy #$F0.b		; C0 F0
	sbc $78F010.l,X		; FF 10 F0 78
	sei		; 78
	jmp ($3E7C.w,X)		; 7C 7C 3E
	rol $0001.w,X		; 3E 01 00
	inc $E207.w,X		; FE 07 E2
	txy		; 9B
	inc $FC02.w,X		; FE 02 FC
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	lda #$FE.b		; A9 FE
	cop $62.b		; 02 62
	sty $FF.b		; 84 FF
	ora $FF.b,S		; 03 FF
	eor ($8C.b,X)		; 41 8C
	inc $C0FF.w,X		; FE FF C0
	lda ($00.b,X)		; A1 00
	eor ($00.b),Y		; 51 00
	adc $00BC00.l		; 6F 00 BC 00
	cmp $0030B2.l,X		; DF B2 30 00
	sbc $E0E0C0.l,X		; FF C0 E0 E0
	ldx $E09E.w,Y		; BE 9E E0
	and $FF8E9A.l,X		; 3F 9A 8E FF
	ora $FC.b,S		; 03 FC
	trb $6FE0.w		; 1C E0 6F
	bra -65.b		; 80 BF
	sta $7F.b		; 85 7F
	sbc $00.b,X		; F5 00
	cpx $FFFF.w		; EC FF FF
	sed		; F8
	sed		; F8
	cmp $C3.b,S		; C3 C3
	ora $18021F.l,X		; 1F 1F 02 18
	inc $FF.b,X		; F6 FF
	stx $817E.w		; 8E 7E 81
	pha		; 48
	clc		; 18
	cpy #$E6.b		; C0 E6
	inc $E8FC.w,X		; FE FC E8
	ora ($01.b,X)		; 01 01
	pha		; 48
	cmp #$8A.b		; C9 8A
	inc $FF.b		; E6 FF
	jsr ($F834.w,X)		; FC 34 F8
	phd		; 0B
	stz $FF.b,X		; 74 FF
	sed		; F8
	ora $03C3F8.l		; 0F F8 C3 03
	ror A		; 6A
	tas		; 1B
	brk $3F.b		; 00 3F
	bpl  95.b		; 10 5F
	brk $A0.b		; 00 A0
	inc $03.b,X		; F6 03
	bit $6B86.w,X		; 3C 86 6B
	php		; 08
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora [$07.b]		; 07 07
	ora $FE7D1F.l		; 0F 1F 7D FE
	jsr $FF79.w		; 20 79 FF
	sbc [$FF.b],Y		; F7 FF
	lda $0FFF7F.l		; AF 7F FF 0F
	sbc $7D691F.l,X		; FF 1F 69 7D
	sbc $DFA010.l,X		; FF 10 A0 DF
	cmp $09F8A4.l,X		; DF A4 F8 09
	sta $20FFFC.l,X		; 9F FC FF 20
	sbc $4BFCE0.l,X		; FF E0 FC 4B
	inc $FFBF.w,X		; FE BF FF
	asl $1CFF.w,X		; 1E FF 1C
	sbc $F8E208.l,X		; FF 08 E2 F8
	asl $750F.w		; 0E 0F 75
	cpx #$FD00.w		; E0 00 FD
	jsr $E0FE.w		; 20 FE E0
	bra  94.b		; 80 5E
	sbc $F8FF.w,X		; FD FF F8
	asl $0103.w		; 0E 03 01
	clc		; 18
	brk $FE.b		; 00 FE
	cop $00.b		; 02 00
	inc $88FA.w,X		; FE FA 88
	dey		; 88
	stz $F4.b		; 64 F4
	tad		; 5B
	sbc $558071.l,X		; FF 71 80 55
	sed		; F8
	cmp [$10.b],Y		; D7 10
	pla		; 68
	stz $F1.b		; 64 F1
	ora $0640FF.l		; 0F FF 40 06
	jsr $41FB.w		; 20 FB 41
	sbc $FFEFEF.l,X		; FF EF EF FF
	and $03.b,S		; 23 03
	ror $BFBF.w,X		; 7E BF BF
	adc $02.b,S		; 63 02
	rts		; 60

	sta $FF.b		; 85 FF
	ldy $FCF7.w		; AC F7 FC
	bpl -17.b		; 10 EF
	jsr $08BF.w		; 20 BF 08
	cmp $227F19.l,X		; DF 19 7F 22
	sta $1B.b,S		; 83 1B
	tax		; AA
	jsr ($D8DA.w,X)		; FC DA D8
	sbc $E8FBE1.l,X		; FF E1 FB E8
	inc $FB.b,X		; F6 FB
	phx		; DA
	sta ($ED.b,X)		; 81 ED
	bra  -9.b		; 80 F7
	ora ($86.b,X)		; 01 86
	sed		; F8
	ora #$FFFE.w		; 09 FE FF
	inc $53.b,X		; F6 53
	bra -10.b		; 80 F6
	cpx $C2EC.w		; EC EC C2
	cmp $1FC004.l,X		; DF 04 C0 1F
	inx		; E8
	bra -17.b		; 80 EF
	rti		; 40

	xce		; FB
	cpy #$347B.w		; C0 7B 34
.ACCU 16
	rep #$EF		; C2 EF
	cmp $DFFFC7.l		; CF C7 FF DF
	ora $FF1F9F.l,X		; 1F 9F 1F FF
	sta $03073F.l,X		; 9F 3F 07 03
	ora $01.b		; 05 01
	ora $026105.l		; 0F 05 61 02
	phd		; 0B
	brk $FE.b		; 00 FE
	tas		; 1B
	php		; 08
	inc $CC5D.w,X		; FE 5D CC
	ora #$07FF.w		; 09 FF 07
	sbc $FEFE0F.l,X		; FF 0F FE FE
	adc $DEDEB9.l,X		; 7F B9 DE DE
	inc $BFA6.w		; EE A6 BF
	and $DF.b,S		; 23 DF
	ora $7F.b,S		; 03 7F
	brk $77.b		; 00 77
	brk $D7.b		; 00 D7
	rti		; 40

	ldy #$868F.w		; A0 8F 86
	sty $DE.b		; 84 DE
	sbc $BEBFBE.l,X		; FF BE BF BE
	xce		; FB
	sbc $7E3EFF.l,X		; FF FF 3E 7E
	inx		; E8
	sbc ($7E.b),Y		; F1 7E
	lda $06FF36.l,X		; BF 36 FF 06
	cmp $80BE02.l,X		; DF 02 BE 80
	lda [$81.b],Y		; B7 81
	and ($03.b,S),Y		; 33 03
	lda [$80.b]		; A7 80
	and $E7FF44.l,X		; 3F 44 FF E7
	cpy #$FEFF.w		; C0 FF FE
	rep #$04		; C2 04
	ldx $EC12.w,Y		; BE 12 EC
	pha		; 48
	jmp ($E804.w)		; 6C 04 E8
	rti		; 40

	sbc $58F8C3.l,X		; FF C3 F8 58
	sbc ($20.b)		; F2 20
	ror $A0.b,X		; 76 A0
	sbc #$C9EC.w		; E9 EC C9
	cld		; D8
	sta ($FE.b,S),Y		; 93 FE
	bcc  -1.b		; 90 FF
	ora $071017.l,X		; 1F 17 10 07
	bpl  15.b		; 10 0F
	jsr $208F.w		; 20 8F 20
	sbc [$A0.b],Y		; F7 A0
	cmp [$80.b],Y		; D7 80
	cmp $9DFE88.l,X		; DF 88 FE 9D
	inc $80CE.w,X		; FE CE 80
	pla		; 68
	jsr $2169.w		; 20 69 21
	and #$6741.w		; 29 41 67
	sbc ($3F.b),Y		; F1 3F
	and [$1E.b],Y		; 37 1E
	lsr $37FE.w		; 4E FE 37
	sta [$37.b],Y		; 97 37
	stx $FE.b,Y		; 96 FE
	ora [$18.b],Y		; 17 18
	php		; 08
	sbc $08FE0B.l,X		; FF 0B FE 08
	brk $0C.b		; 00 0C
	tsb $04.b		; 04 04
	brk $06.b		; 00 06
	cop $03.b		; 02 03
	ora ($6A.b,X)		; 01 6A
	jsr ($F000.w,X)		; FC 00 F0
	adc $5C.b,S		; 63 5C
	eor $0054.w,Y		; 59 54 00
	ora ($CD.b,X)		; 01 CD
	sbc ($F0.b,X)		; E1 F0
	pha		; 48
	cmp #$40FE.w		; C9 FE 40
	cmp #$FE41.w		; C9 41 FE
	cpy $CC84.w		; CC 84 CC
	sta $468887.l		; 8F 87 88 46
	cop $36.b		; 02 36
	ror $76FE.w,X		; 7E FE 76
	rol $77.b,X		; 36 77
	inc $10FF.w,X		; FE FF 10
	and ($B7.b,S),Y		; 33 B7
	and ($BB.b,S),Y		; 33 BB
	lda $87BB.w,Y		; B9 BB 87
	.db $82, $83, $FE		; 82 83 FE
	cop $FA.b		; 02 FA
	adc $FE.b,S		; 63 FE
	sta ($7A.b,X)		; 81 7A
	sbc #$80C7.w		; E9 C7 80
	sbc $7CA0.w,Y		; F9 A0 7C
	inc $7EFE.w,X		; FE FE 7E
	bra  -1.b		; 80 FF
	inc $3EFF.w,X		; FE FF 3E
	rol $B838.w,X		; 3E 38 B8
	asl $A6.b		; 06 A6
	adc [$A0.b],Y		; 77 A0
	sbc $D02B1F.l,X		; FF 1F 2B D0
	ror $DA.b,X		; 76 DA
	tda		; 7B
	jmp.w [$7FBE]		; DC BE 7F
	eor $1FE73F.l,X		; 5F 3F E7 1F
	sbc $FE07.w,Y		; F9 07 FE
	and $00D76E.l		; 2F 6E D7 00
	cmp $5C00.w,Y		; D9 00 5C
	brk $3F.b		; 00 3F
	brk $9F.b		; 00 9F
	brk $0F.b		; 00 0F
	bit $0CE9.w		; 2C E9 0C
	sbc $45ED6E.l,X		; FF 6E ED 45
	inc $98BC.w,X		; FE BC 98
	jsr ($C680.w,X)		; FC 80 C6
	tsx		; BA
	dec $43.b,X		; D6 43
	jsr ($C7BC.w,X)		; FC BC C7
	lda $926E.w,Y		; B9 6E 92
	inc $1B43.w,X		; FE 43 1B
	ora $83.b,S		; 03 83
	lda $0391FF.l		; AF FF 91 03
	lda $A815.w,Y		; B9 15 A8
	and [$F1.b],Y		; 37 F1
	sbc $E61DF8.l,X		; FF F8 1D E6
	bit $67.b		; 24 67
	and $63.b		; 25 63
	brk $73.b		; 00 73
	sbc $7912FF.l,X		; FF FF 12 79
	and #$347C.w		; 29 7C 34
	adc $24772B.l		; 6F 2B 77 24
	ora $183D.w,Y		; 19 3D 18
	and $1C1C.w,X		; 3D 1C 1C
	tsb $FFFF.w		; 0C FF FF
	asl $2F06.w,X		; 1E 06 2F
	ora $37.b,S		; 03 37
	bpl  59.b		; 10 3B
	clc		; 18
	bit $1070.w,X		; 3C 70 10
	jmp ($BF0C.w,X)		; 7C 0C BF
	jsr $FFD9.w		; 20 D9 FF
	sbc $2CFFCE.l,X		; FF CE FF 2C
	sbc ($8D.b)		; F2 8D
	jsr ($FC7B.w,X)		; FC 7B FC
	plb		; AB
	sta $8F839F.l		; 8F 9F 83 8F
	rti		; 40

	rts		; 60

	jsr $F807.w		; 20 07 F8
	cpx #$2000.w		; E0 00 20
	brk $4D.b		; 00 4D
	jsr $CE83.w		; 20 83 CE
	bit #$FF67.w		; 89 67 FF
	sbc $07F746.l,X		; FF 46 F7 07
	sta $7B.b,S		; 83 7B
	dec A		; 3A
	cpy $45.b		; C4 45
	txs		; 9A
	inc $BB19.w,X		; FE 19 BB
	ora $8031.w,Y		; 19 31 80
	tya		; 98
	sbc $00C0E1.l,X		; FF E1 C0 00
	php		; 08
	brk $7C.b		; 00 7C
	ora ($C6.b,X)		; 01 C6
	brk $BB.b		; 00 BB
	clc		; 18
	sbc ($7D.b),Y		; F1 7D
	sbc [$FF.b]		; E7 FF
	rti		; 40

	ldy $39E7.w,X		; BC E7 39
	jmp.w [$7AB0]		; DC B0 7A
	rti		; 40

	cmp $7F4EC0.l,X		; DF C0 4E 7F
	pea $B4FE.w		; F4 FE B4
	bpl  56.b		; 10 38
	php		; 08
	ora ($00.b,S),Y		; 13 00
	sta [$F6.b]		; 87 F6
	inx		; E8
	cpx $2575.w		; EC 75 25
	sbc $045DFF.l,X		; FF FF 5D 04
	eor $065706.l,X		; 5F 06 57 06
	adc [$06.b],Y		; 77 06
	adc $7908.w,Y		; 79 08 79
	ora #$48F8.w		; 09 F8 48
	inc A		; 1A
	and $3AE1C0.l,X		; 3F C0 E1 3A
	php		; 08
	inc $FE36.w,X		; FE 36 FE
	and $FFFF37.l,X		; 3F 37 FF FF
	adc $C731FF.l,X		; 7F FF 31 C7
	lda $A3.b		; A5 A3
	sta ($33.b,X)		; 81 33
	eor ($63.b),Y		; 51 63
	eor ($93.b),Y		; 51 93
	lda ($9B.b,X)		; A1 9B
	plp		; 28
	tay		; A8
	adc $03307C.l,X		; 7F 7C 30 03
	ora ($1B.b,X)		; 01 1B
	ora ($5F.b,X)		; 01 5F
	ora ($8F.b,X)		; 01 8F
	inc $014F.w,X		; FE 4F 01
	eor [$00.b]		; 47 00
	bra  -1.b		; 80 FF
	inc $E79D.w,X		; FE 9D E7
	ora $01DF.w,Y		; 19 DF 01
	lda $65C361.l,X		; BF 61 C3 65
	sbc $01BFFF.l,X		; FF FF BF 01
	jsr ($3B80.w,X)		; FC 80 3B
	bit $5D19.w,X		; 3C 19 5D
	ora ($59.b,X)		; 01 59
	ora ($65.b,X)		; 01 65
	and ($65.b,X)		; 21 65
	eor ($FD.b,X)		; 41 FD
	eor $F901A3.l,X		; 5F A3 01 F9
	sta $80.b,S		; 83 80
	cmp $04.b,S		; C3 04
	cmp $FEDA.w		; CD DA FE
	inc $FEEF.w,X		; FE EF FE
	nop		; EA
	sbc $09F8F2.l,X		; FF F2 F8 09
	inc $62FC.w,X		; FE FC 62
	cpx #$D20D.w		; E0 0D D2
	beq  17.b		; F0 11
	cpx $B548.w		; EC 48 B5
	bpl -67.b		; 10 BD
	bpl  -1.b		; 10 FF
	bpl -33.b		; 10 DF
	and $DB1074.l,X		; 3F 74 10 DB
	bcc -30.b		; 90 E2
	ldy #$2062.w		; A0 62 20
	ror $FE6F.w		; 6E 6F FE
	inc $5FFF.w,X		; FE FF 5F
	sbc $E9962F.l,X		; FF 2F 96 E9
	jmp.w [$F854]		; DC 54 F8
	ldy $7C.b		; A4 7C
	rti		; 40

	rol $0C22.w,X		; 3E 22 0C
	asl $0200.w		; 0E 00 02
	sbc ($FC.b),Y		; F1 FC
	and $0023C0.l,X		; 3F C0 23 00
	tas		; 1B
	tya		; 98
	txy		; 9B
	cld		; D8
	cmp ($E0.b,X)		; C1 E0
	sbc ($FC.b),Y		; F1 FC
	sbc $ECFC.w,X		; FD FC EC
	and ($FF.b)		; 32 FF
	inc $CCFE.w,X		; FE FE CC
	stp		; DB
	bvc 111.b		; 50 6F
	cpy #$F6E1.w		; C0 E1 F6
	cmp [$F0.b],Y		; D7 F0
	plx		; FA
	lda $80E114.l		; AF 14 E1 80
	inc $A69F.w,X		; FE 9F A6
	bvs -49.b		; 70 CF
	bvs  62.b		; 70 3E
	eor $97.b		; 45 97
	bit $E1.b		; 24 E1
	rol $7900.w,X		; 3E 00 79
	adc $5C.b,S		; 63 5C
	sta $56A3FE.l		; 8F FE A3 56
	cli		; 58
	jsr ($FC9C.w,X)		; FC 9C FC
	ror A		; 6A
	jsr ($E464.w,X)		; FC 64 E4
	cop $9E.b		; 02 9E
	sbc #$F851.w		; E9 51 F8
	phd		; 0B
	jsr ($FF43.w,X)		; FC 43 FF
	ora $66.b,S		; 03 66
	jsr $20A4.w		; 20 A4 20
	cpy $40.b		; C4 40
	inc $5448.w,X		; FE 48 54
	sta $46FE.w		; 8D FE 46
	phx		; DA
	dey		; 88
	sbc ($0D.b,X)		; E1 0D
	sbc #$FCFE.w		; E9 FE FC
	adc $FE251A.l,X		; 7F 1A 25 FE
	rol $09F8.w		; 2E F8 09
	and #$01E3.w		; 29 E3 01
	ror $E780.w		; 6E 80 E7
	inc $FFF8.w,X		; FE F8 FF
	ror $803F.w		; 6E 3F 80
	sta $A0EF40.l,X		; 9F 40 EF A0
	lda [$90.b],Y		; B7 90
	tas		; 1B
	php		; 08
	asl $FC0A.w		; 0E 0A FC
	sta [$03.b]		; 87 03
	jmp $1F003F.l		; 5C 3F 00 1F
	bra  79.b		; 80 4F
	cpy #$3CE7.w		; C0 E7 3C
	bne  10.b		; D0 0A
	sed		; F8
	rol $D2E7.w,X		; 3E E7 D2
	beq  12.b		; F0 0C
	ldx $DEBA.w,Y		; BE BA DE
	inc $30FD.w,X		; FE FD 30
	tsb $6ED4.w		; 0C D4 6E
	ora $01.b		; 05 01
	inc $060E.w,X		; FE 0E 06
	and $0FFEC4.l,X		; 3F C4 FE 0F
	brk $7C.b		; 00 7C
	ora $CB.b,S		; 03 CB
	and [$6E.b],Y		; 37 6E
	cop $FE.b		; 02 FE
	ora ($0F.b,X)		; 01 0F
	ora ($07.b,X)		; 01 07
	inc $078D.w,X		; FE 8D 07
	ora $77.b,S		; 03 77
	inc $6E8B.w,X		; FE 8B 6E
	.db $82, $FC, $7C		; 82 FC 7C
	jmp $38C7.w		; 4C C7 38
	cmp $3C.b,S		; C3 3C
	rti		; 40

	lda $FFDBC9.l,X		; BF C9 DB FF
	stx $83FF.w		; 8E FF 83
	cmp $383030.l		; CF 30 30 38
	sta $778F38.l,X		; 9F 38 8F 77
	cmp ($02.b,S),Y		; D3 02
	tsb $87.b		; 04 87
	and $C8FF.w,Y		; 39 FF C8
	pha		; 48
	adc $FDFFD4.l,X		; 7F D4 FF FD
	inc $F6FB.w,X		; FE FB F6
	inc $37FE.w,X		; FE FE 37
	bit $D1.b,X		; 34 D1
	beq -16.b		; F0 F0
	cop $62.b		; 02 62
	stp		; DB
	ora [$05.b]		; 07 05
	ora $0F3A08.l		; 0F 08 3A 0F
	ora ($25.b),Y		; 11 25
.INDEX 8
	sep #$1D		; E2 1D
	asl $F9.b		; 06 F9
	ror $FEFD.w		; 6E FD FE
	inc $67FF.w,X		; FE FF 67
	beq  -8.b		; F0 F8
	cmp $E5.b		; C5 E5
	ora $F815.w,X		; 1D 15 F8
	inx		; E8
	sbc $22.b,S		; E3 22
	ldx $62C1.w,Y		; BE C1 62
	ror $8827.w,X		; 7E 27 88
	php		; 08
	php		; 08
	cpy #$40.b		; C0 40
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	trb $C005.w		; 1C 05 C0
	sty $81.b,X		; 94 81
	ldy $3CD9.w		; AC D9 3C
	sbc $030021.l,X		; FF 21 00 03
	jsr ($752E.w,X)		; FC 2E 75
	ora $03.b		; 05 03
	inc $EAFC.w,X		; FE FC EA
	plx		; FA
	asl $3B05.w		; 0E 05 3B
	php		; 08
	adc $22.b,S		; 63 22
	sbc $B5F1.w,Y		; F9 F1 B5
	sbc ($64.b)		; F2 64
	sbc $04.b,S		; E3 04
	beq 127.b		; F0 7F
	ora ($D2.b,X)		; 01 D2
	adc $F3FFF3.l,X		; 7F F3 FF F3
	sbc $F5F3.w,X		; FD F3 F5
	xce		; FB
	sbc [$F9.b],Y		; F7 F9
	sbc $FEF3FC.l,X		; FF FC F3 FE
	adc ($FD.b,S),Y		; 73 FD
	adc ($F7.b,S),Y		; 73 F7
	sbc ($FB.b,S),Y		; F3 FB
	sbc ($FE.b),Y		; F1 FE
	sbc $FFF0.w,Y		; F9 F0 FF
	sbc $71FE.w,X		; FD FE 71
	sbc $BFC0.w,X		; FD C0 BF
.ACCU 16
.INDEX 16
	rep #$BF		; C2 BF
	sbc $9F.b,S		; E3 9F
	lda $DF.b,S		; A3 DF
	sbc ($FF.b),Y		; F1 FF
	sbc $EFD1CF.l,X		; FF CF D1 EF
	beq -49.b		; F0 CF
	sed		; F8
	cmp [$B8.b]		; C7 B8
	lda [$9E.b]		; A7 9E
	sta $9F.b,S		; 83 9F
	cmp ($8F.b,S),Y		; D3 8F
	cmp $CD.b,S		; C3 CD
	lda $CFE3B9.l,X		; BF B9 E3 CF
	sbc #$E1C6.w		; E9 C6 E1
	cmp [$D4.b]		; C7 D4
	sbc $F6.b,X		; F5 F6
	bra  -2.b		; 80 FE
	cpy #$0807.w		; C0 07 08
	and $FC.b,S		; 23 FC
	adc $1F9F7F.l,X		; 7F 7F 9F 1F
	sbc ($BF.b),Y		; F1 BF
	sbc $C0F101.l,X		; FF 01 F1 C0
	phd		; 0B
	pea $F70F.w		; F4 0F F7
	tsb $08F4.w		; 0C F4 08
	beq  -2.b		; F0 FE
	ldx $FA87.w,Y		; BE 87 FA
	tsb $0DF3.w		; 0C F3 0D
	sbc $F0.b,X		; F5 F0
	tay		; A8
	cmp #$D0F3.w		; C9 F3 D0
	sbc [$FE.b],Y		; F7 FE
	ora $F390FF.l,X		; 1F FF 90 F3
	bpl -16.b		; 10 F0
	brk $F2.b		; 00 F2
	tad		; 5B
	cpx #$5F1F.w		; E0 1F 5F
	rts		; 60

	ora [$04.b]		; 07 04
	xce		; FB
	sta $0B.b,S		; 83 0B
	php		; 08
	adc [$B2.b]		; 67 B2
	sbc ($3C.b),Y		; F1 3C
	sta ($7F.b,X)		; 81 7F
	jmp ($0D0F.w,X)		; 7C 0F 0D
	and [$AC.b],Y		; 37 AC
	lsr A		; 4A
	cmp ($D1.b)		; D2 D1
	lda #$C921.w		; A9 21 C9
	lsr $0CE8.w,X		; 5E E8 0C
	rts		; 60

	cmp ($FF.b),Y		; D1 FF
	sed		; F8
	asl $AF5F.w		; 0E 5F AF
	cpx $020E.w		; EC 0E 02
	tas		; 1B
	php		; 08
	and $ECFC7B.l		; 2F 7B FC EC
	sbc $0007.w,X		; FD 07 00
	ora $3FF1FE.l,X		; 1F FE F1 3F
	stz $92.b		; 64 92
	nop		; EA
	cmp ($40.b),Y		; D1 40
	adc $FC01.w,Y		; 79 01 FC
	brk $FE.b		; 00 FE
	inc $88FE.w,X		; FE FE 88
	inc $3EF8.w,X		; FE F8 3E
	plx		; FA
	rol $0BF0.w,X		; 3E F0 0B
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
	.db $82, $7D, $C3		; 82 7D C3
	sbc $C33C3F.l,X		; FF 3F 3C C3
	ldy $1C63.w,X		; BC 63 1C
	adc $5C.b,S		; 63 5C
	and ($0E.b),Y		; 31 0E
	and $4026.w,Y		; 39 26 40
	sbc $7D00.w,X		; FD 00 7D
	inc $FEF0.w,X		; FE F0 FE
	and $3E80.w,X		; 3D 80 3E
	bra  30.b		; 80 1E
	cpy #$0FFE.w		; C0 FE 0F
	ldy $FFC3.w,X		; BC C3 FF
	sbc $26CB34.l,X		; FF 34 CB 26
	cmp $9C63.w,Y		; D9 63 9C
	adc ($9E.b),Y		; 71 9E
	cli		; 58
	lda $FE3FFC.l,X		; BF FC 3F FE
	and $FFD883.l,X		; 3F 83 D8 FF
	sbc $00D801.l,X		; FF 01 D8 00
	jmp.w [$DE00]		; DC 00 DE
	bpl -65.b		; 10 BF
	clc		; 18
	lda $3EBF3C.l,X		; BF 3C BF 3E
	adc $FBFF40.l,X		; 7F 40 FF FB
	and $18FF70.l,X		; 3F 70 FF 18
	sta [$C9.b]		; 87 C9
	stx $477F.w		; 8E 7F 47
	and $309F23.l,X		; 3F 23 9F 30
	cmp $FCE05F.l		; CF 5F E0 FC
	sbc $38DFEF.l,X		; FF EF DF 38
	sbc $0E7F9C.l,X		; FF 9C 7F 0E
	and $D31F87.l,X		; 3F 87 1F D3
	asl $04E9.w		; 0E E9 04
	cmp $FF.b,S		; C3 FF
	sed		; F8
	asl $FA.b		; 06 FA
	inc $FA04.w,X		; FE 04 FA
	cop $FC.b		; 02 FC
	ora $FD.b,S		; 03 FD
	.db $82, $FD, $C1		; 82 FD C1
	sta [$F0.b]		; 87 F0
	inc $08FB.w,X		; FE FB 08
	sbc $00FE.w,Y		; F9 FE 00
	inc $04FD.w,X		; FE FD 04
	jsr ($E83F.w,X)		; FC 3F E8
	tsb $BC.b		; 04 BC
	cpy #$E2DE.w		; C0 DE E2
	plx		; FA
	.db $42, $F4		; 42 F4
	clv		; B8
	nop		; EA
	inc $3FFC.w,X		; FE FC 3F
	ora $0B.b		; 05 0B
	ora ($BD.b,X)		; 01 BD
	.db $62, $F8, $0C		; 62 F8 0C
	mvn $F8,$FF		; 54 FF F8
	ora $3A81.w		; 0D 81 3A
	cld		; D8
	asl $AF.b,X		; 16 AF
	lda $010E0E.l,X		; BF 0E 0E 01
	bmi  15.b		; 30 0F
	sta $2FD9.w,X		; 9D D9 2F
	cpx #$070A.w		; E0 0A 07
	ora [$1F.b]		; 07 1F
	ora $007C7C.l,X		; 1F 7C 7C 00
	sta ($F4.b,S),Y		; 93 F4
	jsr ($8008.w,X)		; FC 08 80
	ora ($FE.b,X)		; 01 FE
	inc $FF0B.w,X		; FE 0B FF
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sei		; 78
	sei		; 78
	.db $62, $E2, $FF		; 62 E2 FF
	.db $82, $01, $44		; 82 01 44
	sta $C8.b,S		; 83 C8
	ora [$77.b]		; 07 77
	xba		; EB
	and $04DC08.l		; 2F 08 DC 04
	sty $D8E4.w		; 8C E4 D8
	sep #$03		; E2 03
	ora $80.b,S		; 03 80
	bra -29.b		; 80 E3
	sbc [$35.b]		; E7 35
	pea $7FE2.w		; F4 E2 7F
	dec $C6FC.w		; CE FC C6
	and $C7F8.w,Y		; 39 F8 C7
	cld		; D8
	ora [$F4.b],Y		; 17 F4
	ora $FA.b,S		; 03 FA
	ora ($FE.b,X)		; 01 FE
	cpy #$E1.b		; C0 E1
	sbc $1010C6.l,X		; FF C6 10 10
	ora $C3.b,S		; 03 C3
	sbc $F3.b,S		; E3 F3
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	sbc $E972.w,Y		; F9 72 E9
	sbc $247E81.l		; EF 81 7E 24
	jsr ($2402.w,X)		; FC 02 24
	jsr $FB2F.w		; 20 2F FB
	inc $FF8E.w,X		; FE 8E FF
	clc		; 18
	dec $F8E8.w,X		; DE E8 F8
	sed		; F8
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	xce		; FB
	sbc ($F3.b,S),Y		; F3 F3
	bcc  -2.b		; 90 FE
	ora $05.b		; 05 05
	cpx #$00.b		; E0 00
	jmp $60FEBA.l		; 5C BA FE 60
	sed		; F8
	ora #$5C.b		; 09 5C
	tsx		; BA
	phx		; DA
	adc $FF14F5.l,X		; 7F F5 14 FF
	bra 127.b		; 80 7F
	rti		; 40

	cmp $00BF40.l,X		; DF 40 BF 00
	wai		; CB
	lda $3EEB.w,X		; BD EB 3E
	sbc $DF.b,S		; E3 DF
	sbc $FD01A8.l,X		; FF A8 01 FD
	sta ($DE.b,X)		; 81 DE
	jsr ($E9EE.w,X)		; FC EE E9
	php		; 08
	inc $FF8D.w,X		; FE 8D FF
	sta ($BE.b,X)		; 81 BE
	cmp [$F7.b]		; C7 F7
	inc $F708.w,X		; FE 08 F7
	dey		; 88
	adc [$90.b],Y		; 77 90
	adc $7FFF50.l		; 6F 50 FF 7F
	and $A05FE0.l		; 2F E0 5F A0
	ora $D02FF0.l,X		; 1F F0 2F D0
	eor $677373.l		; 4F 73 73 67
	adc [$27.b]		; 67 27
	and [$8F.b]		; 27 8F
	sed		; F8
	bvc  -1.b		; 50 FF
	cmp $CFDFDF.l		; CF DF DF CF
	sbc $860CFF.l		; EF FF 0C 86
	sbc #$F8.b		; E9 F8
	ora $E01086.l,X		; 1F 86 10 E0
	bmi -64.b		; 30 C0
	jsr $60C0.w		; 20 C0 60
	bra  64.b		; 80 40
	bra  34.b		; 80 22
	bra -116.b		; 80 8C
	cpx #$FF.b		; E0 FF
	sty $FF.b		; 84 FF
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	cmp ($DA.b)		; D2 DA
	sta ($E9.b,X)		; 81 E9
	stx $EF20.w		; 8E 20 EF
	inc $EF23.w,X		; FE 23 EF
	and ($61.b,X)		; 21 61
	sbc $20AB.w,X		; FD AB 20
	inc $44FF.w,X		; FE FF 44
	cpy #$FEDA.w		; C0 DA FE
	sed		; F8
	ora #$DF9B.w		; 09 9B DF
	xce		; FB
	rol A		; 2A
	sbc [$07.b],Y		; F7 07
	xce		; FB
	pld		; 2B
	sbc $21.b,X		; F5 21
	adc ($E1.b),Y		; 71 E1
	jsr ($A0FA.w,X)		; FC FA A0
	lda $7ABD02.l,X		; BF 02 BD 7A
	tsb $18.b		; 04 18
	sty $2528.w		; 8C 28 25
	sbc $FCFD.w,Y		; F9 FD FC
	sbc [$FF.b],Y		; F7 FF
	lda $4FF0F2.l,X		; BF F2 F0 4F
	sbc $E976.w,Y		; F9 76 E9
	inc $EB.b		; E6 EB
	cpx $A2.b		; E4 A2
	sbc #$FF0A.w		; E9 0A FF
	cmp $43.b,S		; C3 43
	asl A		; 0A
	adc $00.b,X		; 75 00
	stx $F6E6.w		; 8E E6 F6
	pea $9AF4.w		; F4 F4 9A
	sbc ($10.b),Y		; F1 10
	cop $FF.b		; 02 FF
	ldy $FFE1.w,X		; BC E1 FF
	cpy #$B418.w		; C0 18 B4
	jsr $80FE.w		; 20 FE 80
	inc $40FE.w,X		; FE FE 40
	ora $FC.b		; 05 FC
	dey		; 88
	inc $C0FD.w,X		; FE FD C0
	ora $5F8EFF.l		; 0F FF 8E 5F
	tsb $57.b		; 04 57
	tsb $D7.b		; 04 D7
	sty $3F.b		; 84 3F
	tsb $F5FE.w		; 0C FE F5
	mvp $40,$FD		; 44 FD 40
	sbc $BB8E42.l		; EF 42 8E BB
	lda $FEBFF1.l,X		; BF F1 BF FE
	tsa		; 3B
	inc $1F1B.w,X		; FE 1B 1F
	tas		; 1B
	tas		; 1B
	ora $FF1B.w,Y		; 19 1B FF
	eor ($FE.b,X)		; 41 FE
	cmp [$2F.b]		; C7 2F
	cpy $D1.b		; C4 D1
	cmp $56DE00.l,X		; DF 00 DE 56
	sbc $00AF40.l		; EF 40 AF 00
	ldx $F2E8.w,Y		; BE E8 F2
	ora [$38.b]		; 07 38
	sbc $1DFE9F.l,X		; FF 9F FE 1D
	cmp $FC00F5.l,X		; DF F5 00 FC
	adc $80DD6C.l,X		; 7F 6C DD 80
	sbc $F544.w		; ED 44 F5
	bit $6D.b		; 24 6D
	tsb $FC.b		; 04 FC
	pha		; 48
	ldx $02.b,Y		; B6 02
	tda		; 7B
	trb $FFFE.w		; 1C FE FF
	tsa		; 3B
	tyx		; BB
	tsx		; BA
	wai		; CB
	sbc $B3F7F3.l		; EF F3 F7 B3
	xce		; FB
	sta ($A6.b,X)		; 81 A6
	cmp $8EDB.w,Y		; D9 DB 8E
	ror $40E0.w,X		; 7E E0 40
	inc $E941.w,X		; FE 41 E9
	ldy #$FE00.w		; A0 00 FE
	jsr $71B4.w		; 20 B4 71
	jsr ($FFFF.w,X)		; FC FF FF
	eor ($87.b)		; 52 87
	sbc $9324DE.l,X		; FF DE 24 93
	adc ($FE.b,X)		; 61 FE
	txy		; 9B
	pla		; 68
	sbc $FC91.w,Y		; F9 91 FC
	ldy $6E.b,X		; B4 6E
	rol A		; 2A
	sta $1B09FF.l		; 8F FF 09 1B
	and #$6C0D.w		; 29 0D 6C
	inc $0C64.w,X		; FE 64 0C
	asl $87.b		; 06 87
	ora $87.b,S		; 03 87
	sta ($FF.b),Y		; 91 FF
	sbc $10FF83.l,X		; FF 83 FF 10
	sbc [$20.b],Y		; F7 20
	stp		; DB
	php		; 08
	clc		; 18
	bpl -116.b		; 10 8C
	sty $EE.b		; 84 EE
	rol A		; 2A
	sbc [$45.b],Y		; F7 45
	xba		; EB
	ora $22FF.w		; 0D FF 22
	cmp $E7F1AA.l		; CF AA F1 E7
	inc $73F7.w,X		; FE F7 73
	sbc [$11.b],Y		; F7 11
	tsa		; 3B
	php		; 08
	eor $FFC3.w		; 4D C3 FF
	trb $36.b		; 14 36
	sbc ($E2.b)		; F2 E2
	asl A		; 0A
	sta $0D10.w,Y		; 99 10 0D
	ora $0C.b		; 05 0C
	php		; 08
	lsr $42.b		; 46 42
	sbc $22261B.l,X		; FF 1B 26 22
	and [$25.b]		; 27 25
	cmp $E4ED.w		; CD ED E4
	inc $F6E6.w		; EE E6 F6
	sbc ($BA.b)		; F2 BA
	cmp $FEB9.w,Y		; D9 B9 FE
	and $D8FB82.l,X		; 3F 82 FB D8
	sbc $00E0.w,X		; FD E0 00
	rts		; 60

	brk $F0.b		; 00 F0
	ldy #$20F0.w		; A0 F0 20
	bne   0.b		; D0 00
	mvp $FE,$C2		; 44 C2 FE
	beq  -2.b		; F0 FE
	sty $FE75.w		; 8C 75 FE
	and $FEFF60.l,X		; 3F 60 FF FE
	sbc $40FFDD.l		; EF DD FF 40
	sbc ($9E.b,X)		; E1 9E
	tsb $1221.w		; 0C 21 12
	jmp $0C5F.w		; 4C 5F 0C
	bit $FEFC.w		; 2C FC FE
	lda $B9F90C.l,X		; BF 0C F9 B9
	eor $C03F.w		; 4D 3F C0
	and ($80.b,S),Y		; 33 80
	adc $FFF1.w		; 6D F1 FF
	sty $FE7E.w		; 8C 7E FE
	lsr $1C7D.w,X		; 5E 7D 1C
	sbc $3A4A41.l,X		; FF 41 4A 3A
	and $95.b,X		; 35 95
	ora ($FF.b),Y		; 11 FF
	sbc $C839C8.l,X		; FF C8 39 C8
	cmp $7B6C.w,Y		; D9 6C 7B
	.db $42, $82		; 42 82
	stz $0000.w,X		; 9E 00 00
	ora $82.b		; 05 82
	asl A		; 0A
	cpy #$F006.w		; C0 06 F0
	sbc $42FEE0.l,X		; FF E0 FE 42
	cpx #$C064.w		; E0 64 C0
	sta [$94.b],Y		; 97 94
	sta [$15.b],Y		; 97 15
	dec $54.b,X		; D6 54
	sbc [$FF.b]		; E7 FF
	sbc $A8ED22.l,X		; FF 22 ED A8
	cmp $909BC4.l		; CF C4 9B 90
	xce		; FB
	plp		; 28
	pla		; 68
	jsr ($7D68.w,X)		; FC 68 7D
	and #$197D.w		; 29 7D 19
	sbc $133BC3.l,X		; FF C3 3B 13
	tyx		; BB
	and ($F7.b,S),Y		; 33 F7
	adc [$F7.b]		; 67 F7
	ora [$2F.b]		; 07 2F
	sei		; 78
	bpl  -2.b		; 10 FE
	inx		; E8
	bpl -121.b		; 10 87
	brk $FE.b		; 00 FE
	sed		; F8
	inc $08FC.w,X		; FE FC 08
	inc $FE1A.w,X		; FE 1A FE
	cpx #$DA7F.w		; E0 7F DA
	sbc $FEF8FE.l,X		; FF FE F8 FE
	lda ($0C.b,S),Y		; B3 0C
	ldy $9C00.w		; AC 00 9C
	and ($FF.b)		; 32 FF
	sbc $F931E3.l,X		; FF E3 31 F9
	brk $F3.b		; 00 F3
	rti		; 40

	and $00FF21.l,X		; 3F 21 FF 00
	bra  76.b		; 80 4C
	bra  83.b		; 80 53
	bcc 115.b		; 90 73
	adc $7FA1F8.l,X		; 7F F8 A1 7F
	bra 126.b		; 80 7E
	cpy #$C04C.w		; C0 4C C0
	ora ($F0.b)		; 12 F0
	adc [$42.b]		; 67 42
	adc $1FFF41.l,X		; 7F 41 FF 1F
	ply		; 7A
	rti		; 40

	ror $FE45.w,X		; 7E 45 FE
	mvp $82,$BE		; 44 BE 82
	jmp ($F500.w,X)		; 7C 00 F5
	ora ($7C.b,X)		; 01 7C
	cpy #$FFFE.w		; C0 FE FF
	inc $C07D.w,X		; FE 7D C0
	sei		; 78
	cpy #$40F9.w		; C0 F9 40
	sbc $FB80.w,Y		; F9 80 FB
	brk $FA.b		; 00 FA
	brk $B3.b		; 00 B3
	bne -121.b		; D0 87
	sbc $634063.l,X		; FF 63 40 63
	cpy #$23FC.w		; C0 FC 23
	rti		; 40

	cmp $80.b,S		; C3 80
	eor ($80.b,X)		; 41 80
	sta ($00.b,X)		; 81 00
	cop $38.b		; 02 38
	ora $FCB347.l		; 0F 47 B3 FC
	inc $A45C.w,X		; FE 5C A4
	pea $1800.w		; F4 00 18
	brk $FE.b		; 00 FE
	bra -37.b		; 80 DB
	tsb $FE.b		; 04 FE
	cmp ($2A.b)		; D2 2A
	ora $F8FE.w,Y		; 19 FE F8
	sbc $D13CFE.l,X		; FF FE 3C D1
	sbc $14E926.l,X		; FF 26 E9 14
	ldy $FE.b,X		; B4 FE
	clv		; B8
	ldy $CC.b,X		; B4 CC
	sep #$C4		; E2 C4
	xba		; EB
	inc $0DD8.w,X		; FE D8 0D
	cop $E9.b		; 02 E9
	sbc $01F901.l		; EF 01 F9 01
	cmp ($FF.b),Y		; D1 FF
	beq   1.b		; F0 01
	sbc ($01.b),Y		; F1 01
	beq  96.b		; F0 60
	bmi  80.b		; 30 50
	inc $06.b,X		; F6 06
	inc $01F0.w,X		; FE F0 01
	inc $FF.b		; E6 FF
	cpx #$EE07.w		; E0 07 EE
	ora $8F0FCE.l		; 0F CE 0F 8F
	and $8E1F8F.l		; 2F 8F 1F 8E
	dec $21C6.w,X		; DE C6 21
	lda $B520E0.l		; AF E0 20 B5
	lda $BF.b,X		; B5 BF
	lda $BCAC68.l,X		; BF 68 AC BC
	inc $FE.b		; E6 FE
	asl A		; 0A
	phx		; DA
	sbc $12561F.l,X		; FF 1F 56 12
	sbc $FD10.w,X		; FD 10 FD
	bcc  -1.b		; 90 FF
	inc $FEF9.w,X		; FE F9 FE
	phb		; 8B
	jsr ($E23B.w,X)		; FC 3B E2
	cmp ($FF.b)		; D2 FF
	sbc $EAA3E0.l,X		; FF E0 A3 EA
	cmp ($01.b),Y		; D1 01
	xce		; FB
	cop $EE.b		; 02 EE
	php		; 08
	jmp.w [$B810]		; DC 10 B8
	phd		; 0B
	bvs   8.b		; 70 08
	cld		; D8
	tay		; A8
	txa		; 8A
	jmp.w [$9250]		; DC 50 92
	sbc $03.b,S		; E3 03
	cmp [$7F.b]		; C7 7F
	inx		; E8
	rol $B1.b,X		; 36 B1
	bvc  16.b		; 50 10
	bvc -112.b		; 50 90
	bcc  16.b		; 90 10
	sbc $FDFF08.l,X		; FF 08 FF FD
	lda $3FF25F.l		; AF 5F F2 3F
	and $7F6F3F.l		; 2F 3F 6F 7F
	sbc $FEE384.l		; EF 84 E3 FE
	stz $EC.b,X		; 74 EC
	eor $8F59.w,Y		; 59 59 8F
	ldy $58.b		; A4 58
	cli		; 58
	pha		; 48
	pha		; 48
	rti		; 40

	sbc $E4448C.l,X		; FF 8C 44 E4
	bpl  14.b		; 10 0E
	inc $8EFC.w,X		; FE FC 8E
	sbc $FFDCFE.l,X		; FF FE DC FF
	cpy $AAAB.w		; CC AB AA
	inc $427F.w,X		; FE 7F 42
	brk $BA.b		; 00 BA
	bra -96.b		; 80 A0
	ora $E8E2F9.l		; 0F F9 E2 E8
.INDEX 8
	sep #$58		; E2 58
	nop		; EA
	lsr $C2EA.w,X		; 5E EA C2
	sbc $5AE4E0.l,X		; FF E0 E4 5A
	inc $B8FF.w		; EE FF B8
	pla		; 68
	sed		; F8
	iny		; C8
	sei		; 78
	php		; 08
	jmp $0F7300.l		; 5C 00 73 0F
	beq  77.b		; F0 4D
	cmp ($2E.b),Y		; D1 2E
	bpl -17.b		; 10 EF
	inc $276E.w,X		; FE 6E 27
	ora $AFF0E7.l		; 0F E7 F0 AF
	ora $0D8C64.l		; 0F 64 8C 0D
	rol $E72A.w		; 2E 2A E7
	tsb $EB.b		; 04 EB
	asl A		; 0A
	ror A		; 6A
	jsr ($FEBF.w,X)		; FC BF FE
	cpy #$C2.b		; C0 C2
	sty $84.b		; 84 84
	cpx $24.b		; E4 24
	bit $6AC4.w,X		; 3C C4 6A
	jsr ($C2C0.w,X)		; FC C0 C2
	tda		; 7B
	sbc $C33F1B.l,X		; FF 1B 3F C3
	ora $4755.w,Y		; 19 55 47
	jsr $3FFF.w		; 20 FF 3F
	bit $28FD.w,X		; 3C FD 28
	cpx $DA.b		; E4 DA
	ldx #$55.b		; A2 55
	adc ($3C.b,X)		; 61 3C
	jsr ($B46A.w,X)		; FC 6A B4
	asl $FEC1.w		; 0E C1 FE
	sbc $F860.w,X		; FD 60 F8
	ora $00E06E.l		; 0F 6E E0 00
	adc $EA4225.l		; 6F 25 42 EA
	beq   0.b		; F0 00
	sed		; F8
	clv		; B8
	sbc #$40F8.w		; E9 F8 40
	xba		; EB
	sbc $91.b,S		; E3 91
	sbc $BD87E1.l,X		; FF E1 87 BD
	xba		; EB
	ror $17F8.w		; 6E F8 17
	cpy $C6CB.w		; CC CB C6
	ora $FE.b		; 05 FE
	sbc $0DEAFF.l,X		; FF FF EA 0D
	tsb $7B.b		; 04 7B
	tsb $8B.b		; 04 8B
	sbc $07072E.l		; EF 2E 07 07
	and ($03.b,S),Y		; 33 03
	sbc $F901.w,Y		; F9 01 F9
	brk $3F.b		; 00 3F
	sed		; F8
	sbc ($00.b),Y		; F1 00
	sta $02.b,S		; 83 02
	adc ($00.b,S),Y		; 73 00
	ora [$F5.b]		; 07 F5
	sta $F80CC8.l		; 8F C8 0C F8
	ora #$02FE.w		; 09 FE 02
	jmp ($2202.w,X)		; 7C 02 22
	beq  11.b		; F0 0B
	pha		; 48
	lsr A		; 4A
	rol $0BC0.w,X		; 3E C0 0B
	jsr ($1F1E.w,X)		; FC 1E 1F
	cpx #$B8.b		; E0 B8
	cmp #$FE61.w		; C9 61 FE
	cmp $FC.b,S		; C3 FC
	pha		; 48
	lsr A		; 4A
	cmp ($41.b,X)		; C1 41
	sbc $1EE80B.l,X		; FF 0B E8 1E
	cmp $79F73E.l,X		; DF 3E F7 79
	ror $DCF2.w		; 6E F2 DC
	sbc $0F.b		; E5 0F
	inc A		; 1A
	lda #$FBFF.w		; A9 FF FB
	inc $00E7.w,X		; FE E7 00
	ora [$E0.b],Y		; 17 E0
	adc $38D780.l,X		; 7F 80 D7 38
	xce		; FB
	bit $FC6A.w,X		; 3C 6A FC
	ora $FFEF1F.l,X		; 1F 1F EF FF
	txa		; 8A
	ora $110303.l		; 0F 03 03 11
	adc $BE38.w,X		; 7D 38 BE
	jsr ($A008.w,X)		; FC 08 A0
	nop		; EA
	ldy $EA.b		; A4 EA
	sta $FE.b,S		; 83 FE
	sta $FD02.w,Y		; 99 02 FD
	cli		; 58
	ldx #$ED.b		; A2 ED
	clc		; 18
	inc $D8.b,X		; F6 D8
	ora [$C8.b],Y		; 17 C8
	ora [$F0.b],Y		; 17 F0
	sbc $2F87.w,X		; FD 87 2F
	bcc -32.b		; 90 E0
	cmp ($40.b),Y		; D1 40
	and $81BF40.l,X		; 3F 40 BF 81
	adc $B404E7.l,X		; 7F E7 04 B4
	tyx		; BB
	phd		; 0B
	cmp $C2CF08.l		; CF 08 CF C2
	lda ($BF.b,X)		; A1 BF
	jsr $C1DE.w		; 20 DE C1
	ora ($01.b,X)		; 01 01
	lda $91.b,S		; A3 91
	sta $FEFB.w		; 8D FB FE
	asl $C93E.w		; 0E 3E C9
	sec		; 38
	ror $FEE1.w,X		; 7E E1 FE
	sta ($D1.b)		; 92 D1
	ora $FB.b,S		; 03 FB
	ora [$87.b]		; 07 87
	sbc $FD0FFE.l,X		; FF FE 0F FD
	asl $7694.w,X		; 1E 94 76
	sed		; F8
	inc $C6E2.w,X		; FE E2 C6
	sbc $F38D.w,Y		; F9 8D F3
	sbc $E719FF.l,X		; FF FF 19 E7
	tsa		; 3B
	cmp [$7B.b]		; C7 7B
	sta [$5B.b]		; 87 5B
	lda [$CF.b]		; A7 CF
	and ($8F.b,S),Y		; 33 8F
	adc ($F8.b,S),Y		; 73 F8
	cmp $F1.b,S		; C3 F1
	sta [$3F.b]		; 87 3F
	jsr ($07E1.w,X)		; FC E1 07
	cmp $17.b,S		; C3 17
	sta $37.b,S		; 83 37
	ora $FE.b,S		; 03 FE
	adc [$03.b],Y		; 77 03
	sbc [$5D.b],Y		; F7 5D
	ldx $861F.w,Y		; BE 1F 86
	sbc $9FFE9E.l,X		; FF 9E FE 9F
	ldx $FEDF.w,Y		; BE DF FE
	lda $0FFEDE.l,X		; BF DE FE 0F
	and $9EFD.w,Y		; 39 FD 9E
	trb $9EBE.w		; 1C BE 9E
	inc $FEDF.w,X		; FE DF FE
	dec $FE8C.w,X		; DE 8C FE
	inc $DE9C.w,X		; FE 9C DE
	inc A		; 1A
	sbc $40BFF3.l,X		; FF F3 BF 40
	ora $C1EFE0.l,X		; 1F E0 EF C1
	sbc ($F0.b,X)		; E1 F0
	sbc [$AE.b],Y		; F7 AE
	txa		; 8A
	sbc #$7F7F.w		; E9 7F 7F
	rti		; 40

	ora $AAAB6F.l		; 0F 6F AB AA
	ora [$F7.b]		; 07 F7
	sbc [$DA.b]		; E7 DA
	cmp $D6F3.w,Y		; D9 F3 D6
	jsr ($FEEA.w,X)		; FC EA FE
	nop		; EA
	sbc ($CF.b,X)		; E1 CF
	inc $B7ED.w,X		; FE ED B7
	bne -42.b		; D0 D6
	dey		; 88
	phd		; 0B
	ora [$02.b]		; 07 02
	phd		; 0B
	asl A		; 0A
	iny		; C8
	asl $2E07.w		; 0E 07 2E
	bit #$37EC.w		; 89 EC 37
	stz $91.b		; 64 91
	ldx #$B5.b		; A2 B5
	lda $DAE5C2.l,X		; BF C2 E5 DA
	bne -15.b		; D0 F1
	ora $FEFDF2.l,X		; 1F F2 FD FE
	sed		; F8
	phd		; 0B
	jsr ($8566.w,X)		; FC 66 85
	.db $82, $DA, $EA		; 82 DA EA
	sed		; F8
	ora ($F8.b)		; 12 F8
	inx		; E8
	jmp.w [$E2AE]		; DC AE E2
	sed		; F8
	ora $FF46.w		; 0D 46 FF
	sbc ($09.b,X)		; E1 09
	asl $1D.b,X		; 16 1D
	ora ($0F.b)		; 12 0F
	php		; 08
	phd		; 0B
	tsb $0406.w		; 0C 06 04
	plx		; FA
	ror $8761.w,X		; 7E 61 87
	adc $1DFF.w,X		; 7D FF 1D
	cpx #$07.b		; E0 07
	inc $02F0.w,X		; FE F0 02
	sbc ($E9.b)		; F2 E9
	ora ($F0.b,X)		; 01 F0
	ora ($80.b,X)		; 01 80
	sed		; F8
	sbc $BF1DD1.l		; EF D1 1D BF
	bvs  -8.b		; 70 F8
	rts		; 60

	cmp [$60.b],Y		; D7 60
	eor [$E0.b],Y		; 57 E0
	ora $B9.b		; 05 B9
	cpy #$F8.b		; C0 F8
	eor $9F.b,S		; 43 9F
	inc $7030.w,X		; FE 30 70
	rts		; 60

	adc [$40.b]		; 67 40
	sbc $8CC0FE.l		; EF FE C0 8C
	sbc $FE80FE.l,X		; FF FE 80 FE
	trb $C2E3.w		; 1C E3 C2
	and $0CB3.w,Y		; 39 B3 0C
	sbc $F860.w		; ED 60 F8
	cop $17.b		; 02 17
	sbc $03EC.w,Y		; F9 EC 03
	cmp #$003C.w		; C9 3C 00
	dec $C800.w		; CE 00 C8
	sbc $9D87F3.l,X		; FF F3 87 9D
	adc ($FE.b),Y		; 71 FE
	and $1CFE.w,Y		; 39 FE 1C
	sbc $0FFF8C.l,X		; FF 8C FF 0F
	adc $E33FC6.l,X		; 7F C6 3F E3
	ora $B00F73.l,X		; 1F 73 0F B0
	ora $FEF27E.l		; 0F 7E F2 FE
	sec		; 38
	sbc $7F9AFF.l,X		; FF FF 9A 7F
	tsb $8E37.w		; 0C 37 8E
	tas		; 1B
	eor [$0F.b]		; 47 0F
	lda $06.b,S		; A3 06
	cmp ($BD.b,X)		; C1 BD
	bra  63.b		; 80 3F
	.db $82, $BA, $FF		; 82 BA FF
	sbc $45DE01.l,X		; FF 01 DE 45
	sty $43.b,X		; 94 43
	mvp $6D,$83		; 44 83 6D
	plb		; AB
	xba		; EB
	lda [$7E.b]		; A7 7E
	brk $7C.b		; 00 7C
	brk $7D.b		; 00 7D
	sbc $390113.l,X		; FF 13 01 39
	brk $3B.b		; 00 3B
	cop $BA.b		; 02 BA
	sta $11.b,S		; 83 11
	sta $93.b,S		; 83 93
	sta [$4A.b]		; 87 4A
	ldy $12E5.w,X		; BC E5 12
	and $1D.b,S		; 23 1D
	eor ($3E.b,X)		; 41 3E
	jsr $3FF1.w		; 20 F1 3F
	inc $FFB9.w,X		; FE B9 FF
	sbc $141CBF.l,X		; FF BF 1C 14
	rol $3F22.w,X		; 3E 22 3F
	and ($3F.b,X)		; 21 3F
	jsr $101F.w		; 20 1F 10
	and [$00.b],Y		; 37 00
	adc $F09F20.l		; 6F 20 9F F0
	cop $1E.b		; 02 1E
	xba		; EB
	plx		; FA
	ror $30A0.w		; 6E A0 30
	bne -28.b		; D0 E4
	beq   9.b		; F0 09
	plx		; FA
	stz $A8.b		; 64 A8
	inc $8F.b,X		; F6 8F
	trb $E032.w		; 1C 32 E0
	ror $FEF1.w,X		; 7E F1 FE
	sta $00.b		; 85 00
	sed		; F8
	ora $E8.b,X		; 15 E8
	inc $07.b,X		; F6 07
	tsb $1F.b		; 04 1F
	ora ($72.b),Y		; 11 72
	rti		; 40

	dec $44.b		; C6 44
	sbc $B0E8.w		; ED E8 B0
	beq  -8.b		; F0 F8
	cpy $8101.w		; CC 01 81
	cmp $B9.b,X		; D5 B9
	inx		; E8
	asl $7012.w,X		; 1E 12 70
.ACCU 16
	rep #$EF		; C2 EF
	rti		; 40

	eor $09F0.w,Y		; 59 F0 09
	inx		; E8
	sbc ($03.b,X)		; E1 03
	sta $3F3F0F.l		; 8F 0F 3F 3F
	cpy #$E6.b		; C0 E6
	sta [$BF.b]		; 87 BF
	sbc $010585.l,X		; FF 85 05 01
	asl $01.b		; 06 01
	tsb $FE0B.w		; 0C 0B FE
	jsr ($1116.w,X)		; FC 16 11
	adc $F9FD.w,Y		; 79 FD F9
	xce		; FB
	sed		; F8
	sbc $FB8D.w,X		; FD 8D FB
	beq  -2.b		; F0 FE
	sbc $FBE8.w,X		; FD E8 FB
	lda $C02FC0.l		; AF C0 2F C0
	and $7A.b		; 25 7A
	and $FE0D71.l,X		; 3F 71 0D FE
	eor $DF80FE.l,X		; 5F FE 80 DF
	ora ($C9.b,S),Y		; 13 C9
	inc $BFFE.w,X		; FE FE BF
	dec $56.b		; C6 56
	inc $FC90.w,X		; FE 90 FC
	sbc ($5E.b,S),Y		; F3 5E
	cpx $D13A.w		; EC 3A D1
	pea $C14F.w		; F4 4F C1
	inc $18FF.w,X		; FE FF 18
	ror $F7EB.w,X		; 7E EB F7
	brk $B4.b		; 00 B4
	ora [$FC.b]		; 07 FC
	ora $F4.b,S		; 03 F4
	ora $FB.b,S		; 03 FB
	sed		; F8
	adc $6803E6.l,X		; 7F E6 03 68
	ora [$50.b]		; 07 50
	ora $070F10.l		; 0F 10 0F 07
	cpx $03.b		; E4 03
	sbc ($01.b)		; F2 01
	cmp $7F.b,S		; C3 7F
	ora $D1.b,X		; 15 D1
	ora $E7.b,S		; 03 E7
	sbc ($0F.b),Y		; F1 0F
	sbc #$E10F.w		; E9 0F E1
	lsr A		; 4A
	lda [$58.b]		; A7 58
	lda [$F8.b],Y		; B7 F8
	xce		; FB
	sbc $05.b,X		; F5 05
	plx		; FA
	asl A		; 0A
	jsr ($FE1D.w,X)		; FC 1D FE
	rol $E91A.w,X		; 3E 1A E9
	ora ($86.b,S),Y		; 13 86
	sta $F8.b,S		; 83 F8
	eor $8AF104.l,X		; 5F 04 F1 8A
	jsr ($FEE1.w,X)		; FC E1 FE
	jmp.w [$9DBF]		; DC BF 9D
	and $D6C21C.l,X		; 3F 1C C2 D6
	eor $98FE.w,Y		; 59 FE 98
	lda ($FE.b,X)		; A1 FE
	ldx #$E8.b		; A2 E8
	asl A		; 0A
	sbc $18DF20.l,X		; FF 20 DF 18
	sbc [$C2.b]		; E7 C2
	sbc $E13C06.l,X		; FF 06 3C E1
	eor $9F60.w,X		; 5D 60 9F
	trb $03E3.w		; 1C E3 03
	jsr ($484F.w,X)		; FC 4F 48
	sbc $FF.b,S		; E3 FF
	cmp $E2.b,S		; C3 E2
	sed		; F8
	iny		; C8
	ror $3F42.w,X		; 7E 42 3F
	jsr $8C8F.w		; 20 8F 8C
	cpy #$C0.b		; C0 C0
	inc $18.b,X		; F6 18
	sbc $0CE8C1.l,X		; FF C1 E8 0C
	pea $F907.w		; F4 07 F9
	cmp ($3E.b,X)		; C1 3E
	sec		; 38
	cmp [$07.b]		; C7 07
	txa		; 8A
	lda ($D1.b)		; B2 D1
	sbc $20E7EF.l,X		; FF EF E7 20
	sbc ($10.b,S),Y		; F3 10
	sed		; F8
	dey		; 88
	asl $C312.w,X		; 1E 12 C3
	eor $F8.b,S		; 43 F8
	clc		; 18
	sbc $037131.l,X		; FF 31 71 03
	sbc $025F.w,X		; FD 5F 02
	asl $C1C2.w		; 0E C2 C1
	beq  96.b		; F0 60
	bvs -128.b		; 70 80
	tya		; 98
	rts		; 60

	pla		; 68
	bcc -120.b		; 90 88
	bvs 122.b		; 70 7A
	nop		; EA
	ldy #$BF.b		; A0 BF
	bit $FF.b,X		; 34 FF
	rti		; 40

	rti		; 40

	bcc -112.b		; 90 90
	jsr $0420.w		; 20 20 04
	sbc $89D307.l,X		; FF 07 D3 89
	clc		; 18
	php		; 08
	bpl   0.b		; 10 00
	bmi  16.b		; 30 10
	jsr $6000.w		; 20 00 60
	jsr $D040.w		; 20 40 D0
	lda $EA.b,S		; A3 EA
	and $82.b,S		; 23 82
	ora $8201FF.l		; 0F FF 01 82
	ldx $16C9.w,Y		; BE C9 16
	bcs  15.b		; B0 0F
	rts		; 60

	cld		; D8
	ora $3C3016.l		; 0F 16 30 3C
	ora ($FE.b),Y		; 11 FE
	bit $21.b		; 24 21
	inc $4546.w,X		; FE 46 45
	eor [$44.b]		; 47 44
	jmp.w [$FE38]		; DC 38 FE
	stz $E890.w		; 9C 90 E8
	ldy $D8F1.w		; AC F1 D8
	inc $FDB8.w,X		; FE B8 FD
	lsr $FE11.w,X		; 5E 11 FE
	jsr ($F360.w,X)		; FC 60 F3
	ldx $CE.b		; A6 CE
	lda $F1.b,X		; B5 F1
	inc $98.b,X		; F6 98
	ldy $F784.w,X		; BC 84 F7
	inc $AD8D.w,X		; FE 8D AD
	plx		; FA
	brk $FD.b		; 00 FD
	bvs -48.b		; 70 D0
	ror $ED.b		; 66 ED
	eor ($83.b,X)		; 41 83
	brk $0C.b		; 00 0C
	cpx #$F1.b		; E0 F1
	inc $FDFE.w,X		; FE FE FD
	sbc $0F10FF.l,X		; FF FF 10 0F
	trb $0F.b		; 14 0F
	dec $0F.b,X		; D6 0F
	and [$0D.b],Y		; 37 0D
	wai		; CB
	asl $CD.b		; 06 CD
	ora $96.b,S		; 03 96
	ora ($27.b,X)		; 01 27
	brk $FF.b		; 00 FF
	sbc $E10F.w,X		; FD 0F E1
	ora $200FE0.l		; 0F E0 0F 20
	ora $F107CA.l		; 0F CA 07 F1
	rol $E9.b,X		; 36 E9
	sbc #$DA00.w		; E9 00 DA
	php		; 08
	sbc $FF87.w,X		; FD 87 FF
	cop $C2.b		; 02 C2
	cmp $FBFE.w,Y		; D9 FE FB
	sbc $FA06.w,X		; FD 06 FA
	stz $F804.w		; 9C 04 F8
	jsl $BF1EC7.l		; 22 C7 1E BF
	ldy #$FF.b		; A0 FF
	beq -55.b		; F0 C9
	ora $96.b		; 05 96
	cmp #$F861.w		; C9 61 F8
	phd		; 0B
	ora $8E.b,X		; 15 8E
	ora ($7E.b,X)		; 01 7E
	bra  31.b		; 80 1F
	ora $B3.b		; 05 B3
	adc [$4C.b],Y		; 77 4C
	bpl  48.b		; 10 30
	adc $18A92D.l,X		; 7F 2D A9 18
	ora [$FF.b]		; 07 FF
	cmp ($7F.b,X)		; C1 7F
	rts		; 60

	ora $6D9A3B.l,X		; 1F 3B 9A 6D
	pei ($0F.b)		; D4 0F
	bra 108.b		; 80 6C
	tsb $6BFD.w		; 0C FD 6B
	and ($0F.b),Y		; 31 0F
	sbc $3F.b		; E5 3F
	ldx $C9.b		; A6 C9
	sta [$86.b]		; 87 86
	sbc $FFED01.l,X		; FF 01 ED FF
	sed		; F8
	php		; 08
	phd		; 0B
	lda ($FF.b,X)		; A1 FF
	beq  -4.b		; F0 FC
	bpl -32.b		; 10 E0
	and ($C0.b),Y		; 31 C0
	sbc ($00.b),Y		; F1 00
	eor ($E1.b,S),Y		; 53 E1
	plx		; FA
	adc $EEE0FF.l,X		; 7F FF E0 EE
	sbc ($FC.b)		; F2 FC
	beq -12.b		; F0 F4
	sed		; F8
	cpy #$FA.b		; C0 FA
	bit #$2000.w		; 89 00 20
	rti		; 40

	sbc ($E1.b,X)		; E1 E1
	sbc ($07.b),Y		; F1 07
	eor $E1.b,X		; 55 E1
	sbc ($F3.b,S),Y		; F3 F3
	xce		; FB
	inc $B29B.w,X		; FE 9B B2
	sta ($F8.b),Y		; 91 F8
	phd		; 0B
	eor [$75.b]		; 47 75
	rts		; 60

	pla		; 68
	tsb $C141.w		; 0C 41 C1
	asl $F4.b,X		; 16 F4
	sbc $E69276.l,X		; FF 76 92 E6
	dey		; 88
	ora #$76FE.w		; 09 FE 76
	sta ($E1.b)		; 92 E1
	dec $B4.b		; C6 B4
	ldy #$FE.b		; A0 FE
	asl $0A10.w,X		; 1E 10 0A
	ldy $0462.w,X		; BC 62 04
	and ($EE.b,S),Y		; 33 EE
	phy		; 5A
	brk $24.b		; 00 24
.ACCU 8
	sep #$E0		; E2 E0
	sbc [$37.b],Y		; F7 37
	cmp $F8FB.w,Y		; D9 FB F8
	brk $B3.b		; 00 B3
	mvp $41,$DA		; 44 DA 41
	tax		; AA
	sta $82B5.w,Y		; 99 B5 82
	bmi -87.b		; 30 A9
	stx $F3.b,Y		; 96 F3
	tax		; AA
	sbc ($BE.b,S),Y		; F3 BE
	dec A		; 3A
	lda $879F.w,Y		; B9 9F 87
	dec $8B.b		; C6 8B
	.db $82, $0B, $AA		; 82 0B AA
	ora $00.b,S		; 03 00
	sty $E0D2.w		; 8C D2 E0
	sta [$F2.b],Y		; 97 F2
	sbc $7FFF.w		; ED FF 7F
	ldy #$F7.b		; A0 F7
	cpy $03.b		; C4 03
	tsb $2803.w		; 0C 03 28
	ora [$D9.b]		; 07 D9
	asl $93.b		; 06 93
	tsb $10AF.w		; 0C AF 10
	dec A		; 3A
	ora ($50.b,X)		; 01 50
	plp		; 28
	jmp.w [$3B10]		; DC 10 3B
	rol A		; 2A
	sbc #$FE.b		; E9 FE
	sbc $19EE00.l		; EF 00 EE 19
	adc $FFFF.w,Y		; 79 FF FF
	cmp [$00.b]		; C7 00
	lda $89806A.l,X		; BF 6A 80 89
	bvs -120.b		; 70 88
	bvs -52.b		; 70 CC
	bmi -60.b		; 30 C4
	sec		; 38
	ror $98.b		; 66 98
	adc ($E1.b)		; 72 E1
	dec $368C.w,X		; DE 8C 36
	txy		; 9B
	sbc $00.b,X		; F5 00
	inc $17.b,X		; F6 17
	adc ($7B.b),Y		; 71 7B
	brk $BB.b		; 00 BB
	ora [$B2.b]		; 07 B2
	lda $ED00AA.l,X		; BF AA 00 ED
	php		; 08
	ora [$08.b]		; 07 08
	ora $06.b,S		; 03 06
	lsr $EA.b		; 46 EA
	mvp $17,$86		; 44 86 17
	.db $62, $24, $91		; 62 24 91
	bvc -85.b		; 50 AB
	sbc ($FE.b),Y		; F1 FE
	ora ($3F.b)		; 12 3F
	dec $F1.b,X		; D6 F1
	trb $81D2.w		; 1C D2 81
	sta $F0E3.w,Y		; 99 E3 F0
	sed		; F8
	ora #$F8.b		; 09 F8
	eor [$15.b]		; 47 15
	sbc ($54.b,X)		; E1 54
	inc $FAF8.w,X		; FE F8 FA
	jsr ($FCFF.w,X)		; FC FF FC
	sbc $4111.w,X		; FD 11 41
	bvc -14.b		; 50 F2
	tsx		; BA
	sep #$0A		; E2 0A
	sta ($28.b)		; 92 28
	eor [$82.b]		; 47 82
	beq  -4.b		; F0 FC
	sta $A2.b		; 85 A2
	adc ($D7.b),Y		; 71 D7
	jmp $8002D2.l		; 5C D2 02 80
	ldy $BF.b		; A4 BF
	sbc $B45555.l,X		; FF 55 55 B4
	adc #$BF.b		; 69 BF
	rti		; 40

	dey		; 88
	ora #$FF.b		; 09 FF
	jsr ($8840.w,X)		; FC 40 88
	ora #$FE.b		; 09 FE
	jsr ($F4A6.w,X)		; FC A6 F4
	bra -16.b		; 80 F0
	ora #$A6.b		; 09 A6
	pea $7805.w		; F4 05 78
	rts		; 60

	rts		; 60

	ora $E217.w		; 0D 17 E2
	ora $00B7FA.l		; 0F FA B7 00
	sta $C62120.l		; 8F 20 21 C6
	sta ($83.b,X)		; 81 83
	inc $FE5F.w,X		; FE 5F FE
	adc $5746FE.l		; 6F FE 46 57
	adc [$40.b],Y		; 77 40
	tsx		; BA
	sbc $86FE.w,X		; FD FE 86
	sta $F401.w,Y		; 99 01 F4
	pld		; 2B
	sbc ($81.b,X)		; E1 81
	cmp $70EA.w,X		; DD EA 70
	xba		; EB
	xce		; FB
	cmp $408A.w,Y		; D9 8A 40
	and $7F8728.l,X		; 3F 28 87 7F
	ora $DF6001.l		; 0F 01 60 DF
	tad		; 5B
	inc $B524.w,X		; FE 24 B5
	ora ($7F.b,X)		; 01 7F
	beq  47.b		; F0 2F
	jsr $F8F0.w		; 20 F0 F8
	ora #$9D.b		; 09 9D
	cpx #$CB.b		; E0 CB
	beq -29.b		; F0 E3
	jsr ($79F1.w,X)		; FC F1 79
	lda $5FE2.w,Y		; B9 E2 5F
	ora $8086.w,Y		; 19 86 80
	sbc ($C0.b)		; F2 C0
	jsr ($FEE0.w,X)		; FC E0 FE
	beq 107.b		; F0 6B
	lda $FFDB.w,Y		; B9 DB FF
	beq  -4.b		; F0 FC
	ora $F2.b,S		; 03 F2
	sbc ($0E.b),Y		; F1 0E
	tsb $CD.b		; 04 CD
	sta $FC.b,S		; 83 FC
	ora [$F8.b]		; 07 F8
	xce		; FB
	sta [$F7.b]		; 87 F7
	ora $EFFFC2.l		; 0F C2 FF EF
	tsb $C9.b		; 04 C9
	sbc $BCE2FE.l		; EF FE E2 BC
	cmp $78.b		; C5 78
	dey		; 88
	cmp $FC.b,S		; C3 FC
	tsb $FF.b		; 04 FF
	bvs  -5.b		; 70 FB
	php		; 08
	sbc [$33.b],Y		; F7 33
	cmp $CF9F67.l		; CF 67 9F CF
	bmi -93.b		; 30 A3
	sta $F8FC00.l		; 8F 00 FC F8
	ora $8BEC.w		; 0D EC 8B
	cpx #$07.b		; E0 07
	cmp $0F.b,S		; C3 0F
	sta [$BE.b]		; 87 BE
	sep #$80		; E2 80
	sbc $2DFCFF.l,X		; FF FF FC 2D
	sbc ($7C.b,S),Y		; F3 7C
	sbc ($FC.b,S),Y		; F3 FC
	sbc ($F4.b,S),Y		; F3 F4
	xce		; FB
	inc $F9.b,X		; F6 F9
	and $18EFF8.l,X		; 3F F8 EF 18
	cmp [$37.b],Y		; D7 37
	jmp.w [$2108]		; DC 08 21
	sbc [$70.b],Y		; F7 70
	bit $DD.b		; 24 DD
	sec		; 38
	iny		; C8
	inc A		; 1A
	brk $E8.b		; 00 E8
	inc $89.b,X		; F6 89
	ora $DA9CFD.l		; 0F FD 9C DA
	and $39C7.w,X		; 3D C7 39
	inc $C2CD.w,X		; FE CD C2
	cmp ($9B.b,X)		; C1 9B
	adc [$9C.b]		; 67 9C
	ldx $C10F.w,Y		; BE 0F C1
	trb $18BD.w		; 1C BD 18
	lda $FE01.w,X		; BD 01 FE
	tda		; 7B
	inc $C2C0.w,X		; FE C0 C2
	dec $7F.b		; C6 7F
	sbc [$E0.b],Y		; F7 E0
	lda ($F8.b)		; B2 F8
	plx		; FA
	pea $F0EB.w		; F4 EB F0
	cmp $D0F7E8.l,X		; DF E8 F7 D0
	sbc ($05.b,S),Y		; F3 05
	plb		; AB
	cpy $C899.w		; CC 99 C8
	sta ($FE.b),Y		; 91 FE
	sep #$C1		; E2 C1
	cmp [$F8.b]		; C7 F8
	eor $BE80.w,Y		; 59 80 BE
	phy		; 5A
	eor ($7E.b,X)		; 41 7E
	ldx $B880.w,Y		; BE 80 B8
	asl A		; 0A
	ror $19BB.w,X		; 7E BB 19
	ror $53.b		; 66 53
	rol $FCD2.w		; 2E D2 FC
	bit $58C1.w		; 2C C1 58
	cmp $D2.b,X		; D5 D2
	and [$80.b]		; 27 80
	sta $61EA.w,Y		; 99 EA 61
	ror $F13F.w,X		; 7E 3F F1
	bpl 112.b		; 10 70
	asl $F8EF.w		; 0E EF F8
	asl $51DF.w		; 0E DF 51
	sbc $05EA00.l		; EF 00 EA 05
	plx		; FA
	ora $45.b		; 05 45
	sta ($04.b,S),Y		; 93 04
	xba		; EB
	inc $E9A0.w,X		; FE A0 E9
	xce		; FB
	sbc $F4FCFE.l,X		; FF FE FC F4
	plx		; FA
	jsr ($E718.w,X)		; FC 18 E7
	bmi -49.b		; 30 CF
	sbc ($1E.b,X)		; E1 1E
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	stx $1D72.w		; 8E 72 1D
	sbc $69E4FF.l		; EF FF E4 69
	tya		; 98
	cmp ($30.b,S),Y		; D3 30
	eor [$F3.b],Y		; 57 F3
	ldx $7C01.w,Y		; BE 01 7C
	ora ($F8.b,X)		; 01 F8
	ora $E0.b,S		; 03 E0
	ora [$C0.b]		; 07 C0
	sbc $000FA1.l,X		; FF A1 0F 00
	sbc [$90.b],Y		; F7 90
	lda [$50.b],Y		; B7 50
	and ($50.b,S),Y		; 33 50
	sbc $40.b,S		; E3 40
	inc $7FA1.w,X		; FE A1 7F
	lda ($BA.b,S),Y		; B3 BA
	eor #$00E1.w		; 49 E1 00
	sta $1F0F9F.l		; 8F 9F 0F 1F
	sta $DFAB00.l		; 8F 00 AB DF
	inc $AAAA.w,X		; FE AA AA
	txa		; 8A
	ldx #$A2FC.w		; A2 FC A2
	lsr $60BA.w,X		; 5E BA 60
	tyx		; BB
	phd		; 0B
	sta ($5E.b)		; 92 5E
	ldx $BAF3.w,Y		; BE F3 BA
	txa		; 8A
	cmp $EAB5.w,Y		; D9 B5 EA
	eor $0570E4.l,X		; 5F E4 70 05
	sbc ($44.b,S),Y		; F3 44
	sbc #$437C.w		; E9 7C 43
	cpy #$370B.w		; C0 0B 37
	sbc $0BF840.l,X		; FF 40 F8 0B
	cpx #$0AF8.w		; E0 F8 0A
	inc $7C3F.w		; EE 3F 7C
	ora ($FF.b,X)		; 01 FF
	ora ($FC.b,X)		; 01 FC
	cop $FE.b		; 02 FE
	cop $9E.b		; 02 9E
	pei ($00.b)		; D4 00
	cld		; D8
	tsb $DC.b		; 04 DC
	bra  67.b		; 80 43
	rti		; 40

	sbc [$EC.b],Y		; F7 EC
	ora ($E8.b,X)		; 01 E8
	inc $0A03.w,X		; FE 03 0A
	eor ($FE.b),Y		; 51 FE
	cpx #$47FE.w		; E0 FE 47
	jmp $417AF6.l		; 5C F6 7A 41
	sbc $FE.b,S		; E3 FE
	jsr ($88CF.w,X)		; FC CF 88
	ror $FE.b		; 66 FE
	inc $FEE0.w,X		; FE E0 FE
	bcs  14.b		; B0 0E
	pei ($10.b)		; D4 10
	inc $E8FC.w,X		; FE FC E8
	pha		; 48
	inc $CF4C.w,X		; FE 4C CF
	inc $A8FD.w,X		; FE FD A8
	tax		; AA
	sta [$FE.b],Y		; 97 FE
	rti		; 40

	ldx $865C.w,Y		; BE 5C 86
	bra -120.b		; 80 88
	phd		; 0B
	cpy #$40DC.w		; C0 DC 40
	clv		; B8
	ora #$DC2A.w		; 09 2A DC
	rti		; 40

	lda $55BE40.l		; AF 40 BE 55
	sbc ($3D.b),Y		; F1 3D
	phx		; DA
	asl $0041.w,X		; 1E 41 00
	bmi  24.b		; 30 18
	cmp ($DA.b),Y		; D1 DA
	tax		; AA
	asl $40.b		; 06 40
	.db $82, $B5, $FC		; 82 B5 FC
	lda $F7D9F1.l,X		; BF F1 D9 F7
	sbc $E079.w,Y		; F9 79 E0
	adc $72.b,S		; 63 72
	dec $FE.b		; C6 FE
	sbc $606ACD.l,X		; FF CD 6A 60
	beq  15.b		; F0 0F
	beq   8.b		; F0 08
	bcs   8.b		; B0 08
	clv		; B8
	php		; 08
	sed		; F8
	plp		; 28
	sei		; 78
	php		; 08
	bvs   8.b		; 70 08
	stz $1F21.w		; 9C 21 1F
	tsb $9C.b		; 04 9C
	jmp.w [$FEC0]		; DC C0 FE
	ldy #$8007.w		; A0 07 80
	lsr $FCE1.w,X		; 5E E1 FC
	ora $70.b,S		; 03 70
	ora $78.b,S		; 03 78
	adc ($68.b)		; 72 68
	ora $B80A.w		; 0D 0A B8
	ora ($2E.b),Y		; 11 2E
	tay		; A8
	pha		; 48
	adc ($9A.b,X)		; 61 9A
	ldy $44.b		; A4 44
	inc $24E4.w,X		; FE E4 24
	inc $2464.w,X		; FE 64 24
	eor ($55.b)		; 52 55
	bit $FE9B.w		; 2C 9B FE
	and $91FCFE.l,X		; 3F FE FC 91
	cpx $00.b		; E4 00
	tay		; A8
	ora $EC82.w,Y		; 19 82 EC
	eor $80.b,X		; 55 80
	tsb $AC.b		; 04 AC
	rol $F2.b,X		; 36 F2
	.db $82, $ED, $C0		; 82 ED C0
	sta $FF.b,X		; 95 FF
	cpx #$C56A.w		; E0 6A C5
	sei		; 78
	phy		; 5A
	adc ($89.b),Y		; 71 89
	sbc ($A0.b,X)		; E1 A0
	wai		; CB
	eor $D36B7C.l,X		; 5F 7C 6B D3
	sbc [$EB.b],Y		; F7 EB
	sta $00C01D.l		; 8F 1D C0 00
	and ($00.b),Y		; 31 00
	asl $E308.w		; 0E 08 E3
	bra  91.b		; 80 5B
	sta $02.b,X		; 95 02
	rtl		; 6B

	sbc $E5CE95.l,X		; FF 95 CE E5
	lda ($3C.b,X)		; A1 3C
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	rol $EFC1.w,X		; 3E C1 EF
	ldy $5804.w		; AC 04 58
	brk $B8.b		; 00 B8
	ora $F8100F.l		; 0F 0F 10 F8
	bmi -40.b		; 30 D8
	bvc  -2.b		; 50 FE
	tya		; 98
	bpl -72.b		; 10 B8
	bmi 126.b		; 30 7E
	sei		; 78
	bit $B19F.w		; 2C 9F B1
	bne   7.b		; D0 07
	bmi  39.b		; 30 27
	bvs  -2.b		; 70 FE
	adc [$70.b]		; 67 70
	eor [$70.b]		; 47 70
	sbc $9D.b,X		; F5 9D
	rts		; 60

	inc $FEFE.w,X		; FE FE FE
	jsr $0FF8.w		; 20 F8 0F
	.db $62, $22, $42		; 62 22 42
	cop $FE.b		; 02 FE
	jsr ($82C2.w,X)		; FC C2 82
	ror $FE56.w		; 6E 56 FE
	sta $BD3F.w,X		; 9D 3F BD
	inc $3DFD.w,X		; FE FD 3D
	inc $F280.w,X		; FE 80 F2
	inc $55FC.w,X		; FE FC 55
	eor $E7.b,X		; 55 E7
	cmp ($C1.b)		; D2 C1
	cmp $F8FF.w,Y		; D9 FF F8
	asl $A0C4.w		; 0E C4 A0
	ora #$62.b		; 09 62
	nop		; EA
	adc $D1.b,S		; 63 D1
	cpy $A7.b		; C4 A7
	phx		; DA
	sty $01.b,X		; 94 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $0018.w,X		; 7D 18 00
	sbc $0F1EF8.l,X		; FF F8 1E 0F
	brk $0C.b		; 00 0C
	ora $FE.b,S		; 03 FE
	ora $6002.w		; 0D 02 60
	bra  -2.b		; 80 FE
	inc $09.b,X		; F6 09
	asl $FC.b		; 06 FC
	sbc $070198.l,X		; FF 98 01 07
	sbc $F4FF06.l,X		; FF 06 FF F4
	inc $FCFF.w,X		; FE FF FC
	beq   0.b		; F0 00
	rol $E7C0.w,X		; 3E C0 E7
	clc		; 18
	jmp.w [$BB63]		; DC 63 BB
	jmp ($BFFE.w,X)		; 7C FE BF
	lda $FFE1DF.l,X		; BF DF E1 FF
	sbc $F0ECDF.l		; EF DF EC F0
	beq  30.b		; F0 1E
	asl $E303.w,X		; 1E 03 E3
	jsr $3CFC.w		; 20 FC 3C
	sbc $9FFFA7.l,X		; FF A7 FF 9F
	sbc $BCFFCF.l,X		; FF CF FF BC
	cpy #$00.b		; C0 00
	bvs -128.b		; 70 80
	trb $CFE0.w		; 1C E0 CF
	bmi 119.b		; 30 77
	sed		; F8
	sbc $9C.b,S		; E3 9C
	sbc ($CE.b),Y		; F1 CE
	tax		; AA
	jsr ($C0C0.w,X)		; FC C0 C0
	phx		; DA
	jmp ($3F7C.w,X)		; 7C 7C 3F
	lda $9F7468.l,X		; BF 68 74 9F
	bne  -1.b		; D0 FF
	sed		; F8
	ora #$80.b		; 09 80
	dec $FF.b,X		; D6 FF
	sed		; F8
	ora $8080.w		; 0D 80 80
	brk $38.b		; 00 38
	stx $84FE.w		; 8E FE 84
	phd		; 0B
	tsb $07.b		; 04 07
	bmi 125.b		; 30 7D
	dey		; 88
	inc $0488.w,X		; FE 88 04
	tsb $01.b		; 04 01
	ora ($03.b,X)		; 01 03
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $F7EFEF.l,X		; FF EF EF F7
	tda		; 7B
	sbc [$FF.b],Y		; F7 FF
	tda		; 7B
	xce		; FB
	adc $7DBE.w,X		; 7D BE 7D
	sbc $FFFF3E.l,X		; FF 3E FF FF
	dec $473F.w,X		; DE 3F 47
	sbc $33FF67.l,X		; FF 67 FF 33
	sbc $197F31.l,X		; FF 31 7F 19
	adc $8C7F1C.l,X		; 7F 1C 7F 8C
	lda $8E3FFF.l,X		; BF FF 3F 8E
	lda $FCEFF0.l,X		; BF F0 EF FC
	sbc ($F6.b,S),Y		; F3 F6
	sbc $F9FE.w,Y		; F9 FE F9
	jsr ($FBFB.w,X)		; FC FB FB
	jsr ($FCFF.w,X)		; FC FF FC
	sbc ($FE.b,X)		; E1 FE
	jmp ($E0C0.w,X)		; 7C C0 E0
	sbc [$F7.b]		; E7 F7
	sbc ($FB.b,S),Y		; F3 FB
	inc $F8F8.w,X		; FE F8 F8
	sbc $30.b,S		; E3 30
	sbc $79FD.w,Y		; F9 FD 79
	inc $C020.w,X		; FE 20 C0
	stz $38.b		; 64 38
	cpy #$C0.b		; C0 C0
	ora $02FE62.l		; 0F 62 FE 02
	jsr ($F00E.w,X)		; FC 0E F0
	cmp [$38.b]		; C7 38
	ora $84.b,S		; 03 84
	sty $E0E0.w		; 8C E0 E0
	stz $E2.b		; 64 E2
	sec		; 38
	xba		; EB
	ora $FCC042.l,X		; 1F 42 C0 FC
	jsr ($FEFE.w,X)		; FC FE FE
	cop $96.b		; 02 96
	brk $FE.b		; 00 FE
	ora ($16.b,X)		; 01 16
	jsr ($FFFE.w,X)		; FC FE FF
	inc $5E82.w,X		; FE 82 5E
	sed		; F8
	ora #$AF.b		; 09 AF
	eor $871FEF.l,X		; 5F EF 1F 87
	sbc $FB0FF7.l,X		; FF F7 0F FB
	ora [$17.b]		; 07 17
	sbc $0A.b,X		; F5 0A
	sbc $40BF10.l		; EF 10 BF 40
	ora [$1F.b]		; 07 1F
	ora $DFC3FE.l,X		; 1F FE C3 DF
	sbc ($EF.b,X)		; E1 EF
	beq  -9.b		; F0 F7
	ldy $E4E4.w,X		; BC E4 E4
	lsr $1E4E.w		; 4E 4E 1E
	asl $FFFF.w,X		; 1E FF FF
	lda $9FEF60.l,X		; BF 60 EF 9F
	sbc [$B8.b],Y		; F7 B8
	sed		; F8
	rts		; 60

	stz $D3.b		; 64 D3
	plb		; AB
	cmp $DF.b		; C5 DF
	sta ($CA.b,X)		; 81 CA
	sta $FF.b,X		; 95 FF
	adc $07E020.l,X		; 7F 20 E0 07
	cmp $47B8A0.l,X		; DF A0 B8 47
	adc [$0C.b]		; 67 0C
	cpy $D919.w		; CC 19 D9
	lda $B8B9.w,Y		; B9 B9 B8
	clv		; B8
	sed		; F8
	adc $CCB38E.l,X		; 7F 8E B3 CC
	tda		; 7B
	cpx $FF.b		; E4 FF
	bmi  55.b		; 30 37
	cli		; 58
	and $881F98.l		; 2F 98 1F 88
	sed		; F8
	sbc $0E0EFE.l,X		; FF FE 0E 0E
	bcc -48.b		; 90 D0
	and $3717EF.l		; 2F EF 17 37
	sta $9B.b,S		; 83 9B
	.db $42, $5A		; 42 5A
	lda [$FF.b]		; A7 FF
	adc #$69.b		; 69 69
	adc $6B.b,S		; 63 6B
	stz $0081.w		; 9C 81 00
	sta $03FC00.l		; 8F 00 FC 03
	cpx #$1F.b		; E0 1F
	phd		; 0B
	sbc $206F90.l,X		; FF 90 6F 20
	bne -11.b		; D0 F5
	ror $0F0F.w,X		; 7E 0F 0F
	adc $9F9F7F.l,X		; 7F 7F 9F 9F
	sbc [$F0.b]		; E7 F0
	bpl -25.b		; 10 E7
	stz $0D.b		; 64 0D
	cop $F4.b		; 02 F4
	phd		; 0B
	inc $00.b		; E6 00
	cpy $A0.b		; C4 A0
	adc $E4FCFE.l,X		; 7F FE FC E4
	ora [$72.b]		; 07 72
	sbc $00BFFF.l,X		; FF FF BF 00
	phk		; 4B
	sed		; F8
	ora #$00.b		; 09 00
	ora [$0A.b]		; 07 0A
	ora ($18.b,X)		; 01 18
	ora [$A2.b]		; 07 A2
	beq  11.b		; F0 0B
	cld		; D8
	sbc $5FBAFF.l,X		; FF FF BA 5F
	jsr $023D.w		; 20 3D 02
	and $681710.l		; 2F 10 17 68
	phd		; 0B
	pea $0176.w		; F4 76 01
	ora $03F0.w		; 0D F0 03
	beq -16.b		; F0 F0
	jsr ($184E.w,X)		; FC 4E 18
	clc		; 18
	asl $06.b		; 06 06
	inc $03.b		; E6 03
	ora $F8.b,S		; 03 F8
	brk $3F.b		; 00 3F
	sed		; F8
	cop $C0.b		; 02 C0
	cpy $A790.w		; CC 90 A7
	iny		; C8
	rts		; 60

	cmp [$FC.b],Y		; D7 FC
	sbc $38F740.l,X		; FF 40 F7 38
	sbc $BE1E.w		; ED 1E BE
	eor ($63.b,X)		; 41 63
	trb $BF3F.w		; 1C 3F BF
	ora $000FDF.l,X		; 1F DF 0F 00
	sbc $3C40CF.l,X		; FF CF 40 3C
	cpy #$DE.b		; C0 DE
	jsr $8120.w		; 20 20 81
	sta ($57.b,X)		; 81 57
	ora $AC084F.l		; 0F 4F 08 AC
	ora ($37.b,S),Y		; 13 37
	pha		; 48
	stz $C0.b		; 64 C0
	and $FF7F80.l,X		; 3F 80 7F FF
	cpx #$80.b		; E0 80
	sbc $EB.b,S		; E3 EB
	cpy #$D0.b		; C0 D0
	sta [$87.b]		; 87 87
	and $80623F.l,X		; 3F 3F 62 80
	jsr ($0404.w,X)		; FC 04 04
	clc		; 18
	xce		; FB
	inx		; E8
	jsr ($FF46.w,X)		; FC 46 FF
	bra  96.b		; 80 60
	ldx #$FC.b		; A2 FC
	sbc $BFBFE4.l,X		; FF E4 BF BF
	cmp ($0F.b,X)		; C1 0F
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	stz $FF48.w		; 9C 48 FF
	sbc $10F10E.l,X		; FF 0E F1 10
	sbc $B80BC2.l		; EF C2 0B B8
	lsr $F8.b		; 46 F8
	ora #$FF.b		; 09 FF
	sbc ($F1.b),Y		; F1 F1
	sbc $FE43EF.l		; EF EF 43 FE
	eor $0518F0.l,X		; 5F F0 18 05
	ora $07.b,S		; 03 07
	ora ($09.b,X)		; 01 09
	rti		; 40

	sbc $ECFC1A.l,X		; FF 1A FC EC
	sec		; 38
	ora $70F0BF.l		; 0F BF F0 70
	ora $E03FE0.l,X		; 1F E0 3F E0
	adc $F123DC.l,X		; 7F DC 23 F1
	inc $FFD8.w,X		; FE D8 FF
	ora $1F93D2.l,X		; 1F D2 93 1F
	sty $F8.b		; 84 F8
	ora #$FF.b		; 09 FF
	ora $FE01F0.l		; 0F F0 01 FE
	dey		; 88
	inc $FEFF.w,X		; FE FF FE
	inc $F8FF.w,X		; FE FF F8
	ora $F201DE.l		; 0F DE 01 F2
	ora $EC.b		; 05 EC
	ora $71.b,S		; 03 71
	stx $9C63.w		; 8E 63 9C
	inc $19.b		; E6 19
	cmp $30F0FF.l		; CF FF F0 30
	adc $E1E106.l,X		; 7F 06 E1 E1
	sbc $F7F9.w,Y		; F9 F9 F7
	sbc [$88.b],Y		; F7 88
	dec $B4DE.w,X		; DE DE B4
	sbc $A8B5FF.l,X		; FF FF B5 A8
	tay		; A8
	stx $96.b,Y		; 96 96
	bmi -49.b		; 30 CF
	sei		; 78
	lda [$78.b]		; A7 78
	lda [$FC.b],Y		; B7 FC
	ora ($FC.b,S),Y		; 13 FC
	txy		; 9B
	inc $FFFF.w		; EE FF FF
	cmp ($7E.b),Y		; D1 7E
	sbc $55BE.w		; ED BE 55
	cmp $AFAFDF.l,X		; DF DF AF AF
	sta [$B7.b],Y		; 97 B7
	eor [$57.b],Y		; 57 57
	phd		; 0B
	txy		; 9B
	sta $DF.b,S		; 83 DF
	sta [$D3.b]		; 87 D3
	eor $ED.b		; 45 ED
	ora ($55.b,X)		; 01 55
	ora [$3E.b]		; 07 3E
	sed		; F8
	asl A		; 0A
	phd		; 0B
	pea $EB14.w		; F4 14 EB
	ldx $5805.w		; AE 05 58
	beq -16.b		; F0 F0
	ldy $FE.b		; A4 FE
	jsl $BF40F4.l		; 22 F4 40 BF
	inx		; E8
	pea $E018.w		; F4 18 E0
	sei		; 78
	asl $F9.b		; 06 F9
	sei		; 78
	stz $5F5F.w,X		; 9E 5F 5F
	cmp ($87.b,X)		; C1 87
	sta $005E9F.l,X		; 9F 9F 5E 00
	plx		; FA
	sbc [$E7.b]		; E7 E7
	cmp ($C1.b,X)		; C1 C1
	sec		; 38
	sbc $030D23.l,X		; FF 23 0D 03
	ora ($0F.b),Y		; 11 0F
	clc		; 18
	ora [$10.b]		; 07 10
	ora $301F20.l		; 0F 20 1F 30
	jsr ($8198.w,X)		; FC 98 81
	inc $E2A2.w,X		; FE A2 E2
	ora $3E36FF.l		; 0F FF 36 3E
	php		; 08
	sbc $3CFF98.l,X		; FF 98 FF 3C
	sbc $40C21C.l,X		; FF 1C C2 40
	sed		; F8
	clc		; 18
	bvs  -8.b		; 70 F8
	jsl $FC02FE.l		; 22 FE 02 FC
	stx $A4.b		; 86 A4
	inc $EF13.w,X		; FE 13 EF
	and [$FB.b]		; 27 FB
	sbc $A35DDB.l,X		; FF DB 5D A3
	stx $FE.b		; 86 FE
	sbc ($F6.b)		; F2 F6
	sbc ($F7.b)		; F2 F7
	sbc ($E3.b,X)		; E1 E3
	cmp $6BDB.w,Y		; D9 DB 6B
	sta [$DE.b],Y		; 97 DE
	adc $B721FA.l,X		; 7F FA 21 B7
	pha		; 48
	xba		; EB
	asl $CB.b,X		; 16 CB
	rol $CF.b,X		; 36 CF
	inc $31B6.w,X		; FE B6 31
	and [$60.b],Y		; 37 60
	sbc $586130.l,X		; FF 30 61 58
	cli		; 58
	bmi  54.b		; 30 36
	and ($36.b)		; 32 36
	adc ($76.b)		; 72 76
	inc $B632.w,X		; FE 32 B6
	jsr ($283F.w,X)		; FC 3F 28
	jsr ($F8A3.w,X)		; FC A3 F8
	adc [$70.b]		; 67 70
	sta $E25FA0.l		; 8F A0 5F E2
	ora $09F6.w,X		; 1D F6 09
	jsr ($9F40.w,X)		; FC 40 9F
	sta ($9B.b,S),Y		; 93 9B
	ora [$A7.b]		; 07 A7
	and $F1886F.l		; 2F 6F 88 F1
	sbc $FFFD5E.l,X		; FF 5E FD FF
	cli		; 58
	lda [$5B.b]		; A7 5B
	ldy $4E.b		; A4 4E
	lda ($6A.b)		; B2 6A
	stx $4F.b,Y		; 96 4F
	bcs  31.b		; B0 1F
	cpx #$B4.b		; E0 B4
	phk		; 4B
	txs		; 9A
	adc $AD.b		; 65 AD
	eor ($2E.b,S),Y		; 53 2E
	sbc $FFF0F1.l,X		; FF F1 F0 FF
	beq -79.b		; F0 B1
	bcs -104.b		; B0 98
	tya		; 98
	txy		; 9B
	tya		; 98
	lda $938C.w		; AD 8C 93
	and $8E.b,S		; 23 8E
	sbc $62.b,S		; E3 62
	sbc $043787.l,X		; FF 87 37 04
	sbc $5B0A.w		; ED 0A 5B
	trb $F7.b		; 14 F7
	tsb $AF5E.w		; 0C 5E AF
	lda $2E76.w		; AD 76 2E
	sbc $001C0E.l,X		; FF 0E 1C 00
	sed		; F8
	brk $F2.b		; 00 F2
	brk $E5.b		; 00 E5
	ora ($0C.b,X)		; 01 0C
	lsr A		; 4A
	sbc #$26.b		; E9 26
	jsr $952F.w		; 20 2F 95
	rol $3F40.w		; 2E 40 3F
	rts		; 60

	ora $09F8FE.l,X		; 1F FE F8 09
	sbc $F8FF3F.l,X		; FF 3F FF F8
	asl A		; 0A
	bmi  12.b		; 30 0C
	bit $FD3E.w		; 2C 3E FD
	jsr ($FB04.w,X)		; FC 04 FB
	tsa		; 3B
	cmp $FA.b		; C5 FA
	php		; 08
	sbc [$40.b],Y		; F7 40
	jsr ($FEFE.w,X)		; FC FE FE
	sty $FB.b		; 84 FB
	sbc $A7FFFF.l,X		; FF FF FF A7
	eor $F906.w,Y		; 59 06 F9
	ora $E01FF0.l		; 0F F0 1F E0
	tsa		; 3B
	cpy $33.b		; C4 33
	cpy $8977.w		; CC 77 89
	adc [$99.b]		; 67 99
	sbc $BDBC38.l,X		; FF 38 BC BD
	jmp ($7A7D.w,X)		; 7C 7D 7A
	ply		; 7A
	inc $F6.b,X		; F6 F6
	inc $DCFF.w		; EE FF DC
	cmp $FFFC.w,X		; DD FC FF
	sbc ($EF.b)		; F2 EF
	stx $EF.b,Y		; 96 EF
	dec $EE.b,X		; D6 EE
	cmp [$FE.b],Y		; D7 FE
	sbc [$6F.b]		; E7 6F
	sbc [$BF.b],Y		; F7 BF
	rts		; 60

	sbc $9FFFFF.l,X		; FF FF FF 9F
	sbc [$CF.b],Y		; F7 CF
	lda ($B6.b)		; B2 B6
	ora ($D6.b)		; 12 D6
	eor ($D7.b)		; 52 D7
	.db $42, $E7		; 42 E7
	jsl $6000F7.l		; 22 F7 00 60
	stx $0FFF.w		; 8E FF 0F
	sta $FDCF81.l,X		; 9F 81 CF FD
	cop $DE.b		; 02 DE
	and ($DF.b,X)		; 21 DF
	jsr $08F7.w		; 20 F7 08
	xce		; FB
	tsb $FF.b		; 04 FF
	sbc $738CFA.l,X		; FF FA 8C 73
	sbc [$88.b],Y		; F7 88
	jsr ($DAFC.w,X)		; FC FC DA
	phx		; DA
	jmp $64645C.l		; 5C 5C 64 64
	adc ($71.b),Y		; 71 71
	clc		; 18
	sbc $0C18FF.l,X		; FF FF 18 0C
	tsb $B030.w		; 0C 30 B0
	eor $FEA3.w,X		; 5D A3 FE
	ora $9F.b		; 05 9F
	.db $62, $FA, $18		; 62 FA 18
	sbc [$20.b]		; E7 20
	rti		; 40

	adc $C783FF.l,X		; 7F FF 83 C7
	phk		; 4B
	cmp #$62.b		; C9 62
	eor $40.b,S		; 43 40
	ora ($8A.b,X)		; 01 8A
	cmp $0005.w,Y		; D9 05 00
	ora $003C00.l,X		; 1F 00 3C 00
	ora $0030FE.l,X		; 1F FE 30 00
	trb $00.b		; 14 00
	phb		; 8B
	and $63.b		; 25 63
	cmp $FB24.w,X		; DD 24 FB
	iny		; C8
	cmp [$00.b]		; C7 00
	sbc $C07F8F.l,X		; FF 8F 7F C0
	lda $C01FA0.l,X		; BF A0 1F C0
	mvn $71,$50		; 54 50 71
	bvs  35.b		; 70 23
	jsr $1007.w		; 20 07 10
	ora $5F4549.l,X		; 1F 49 45 5F
	jsr ($2F50.w,X)		; FC 50 2F
	bmi  15.b		; 30 0F
	asl $FE0E.w,X		; 1E 0E FE
	rol A		; 2A
	ora $1E.b,X		; 15 1E
	ora ($FE.b,X)		; 01 FE
	ora [$08.b],Y		; 17 08
	ora $C8F0AC.l		; 0F AC F0 C8
	sbc $34F43E.l,X		; FF 3E F4 34
	sbc ($2A.b)		; F2 2A
	ora ($EE.b),Y		; 11 EE
	and ($FF.b,X)		; 21 FF
	bpl -34.b		; 10 DE
	bvs -113.b		; 70 8F
	adc $D986.w,Y		; 79 86 D9
	rol $E9.b		; 26 E9
	asl $7A.b,X		; 16 7A
	sbc [$1F.b],Y		; F7 1F
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc [$E7.b]		; E7 E7
	inc $E6.b		; E6 E6
	.db $42, $CE		; 42 CE
	sbc $FE1BDE.l,X		; FF DE 1B FE
	dec $31CF.w,X		; DE CF 31
	ror A		; 6A
	sbc ($37.b),Y		; F1 37
	inc $758F.w,X		; FE 8F 75
	sta $7B8776.l		; 8F 76 87 7B
	sbc $FD03FF.l,X		; FF FF 03 FD
	clv		; B8
	lda $7672.w,Y		; B9 72 76
	adc ($77.b,S),Y		; 73 77
	adc ($77.b),Y		; 71 77
	beq -11.b		; F0 F5
	beq -10.b		; F0 F6
	sed		; F8
	xce		; FB
	sbc $FDFCFF.l,X		; FF FF FC FD
	sbc $F2D3.w		; ED D3 F2
	sbc $6BF7.w		; ED F7 6B
	tyx		; BB
	adc [$EF.b]		; 67 EF
	sta [$AF.b],Y		; 97 AF
	adc [$EF.b],Y		; 77 EF
	sbc [$FF.b],Y		; F7 FF
	sbc $40F7FF.l,X		; FF FF F7 40
	cmp ($40.b,S),Y		; D3 40
	sbc $6B21.w		; ED 21 6B
	ora $67.b,S		; 03 67
	sta $97.b,S		; 83 97
	ora [$77.b]		; 07 77
	eor [$F7.b]		; 47 F7
	beq -29.b		; F0 E3
	cmp $EE.b,S		; C3 EE
	bra -37.b		; 80 DB
	lda $BF.b		; A5 BF
	cpy #$E1.b		; C0 E1
	inc $FFE0.w,X		; FE E0 FF
	ora $C1.b,S		; 03 C1
	cpx #$C2.b		; E0 C2
	cpx #$C3.b		; E0 C3
	ldx $98BE.w,Y		; BE BE 98
	tya		; 98
	bra -64.b		; 80 C0
	inc $FFFC.w,X		; FE FC FF
	sbc $C2C1C1.l,X		; FF C1 C1 C2
	rep #$83		; C2 83
	cmp $9F.b,S		; C3 9F
	phb		; 8B
	sty $4184.w		; 8C 84 41
	iny		; C8
	and $FF.b,S		; 23 FF
	sbc $103360.l,X		; FF 60 33 10
	tya		; 98
	php		; 08
	eor ($09.b),Y		; 51 09
	bit $6004.w,X		; 3C 04 60
	brk $73.b		; 00 73
	brk $37.b		; 00 37
	brk $9F.b		; 00 9F
	cmp $CF00FF.l,X		; DF FF 00 CF
	brk $67.b		; 00 67
	brk $26.b		; 00 26
	tax		; AA
	sbc ($8F.b,X)		; E1 8F
	cpx #$1F.b		; E0 1F
	bpl -17.b		; 10 EF
	brk $FB.b		; 00 FB
	brk $7F.b		; 00 7F
	brk $F3.b		; 00 F3
	tsb $B7.b		; 04 B7
	tsb $FF.b		; 04 FF
	eor ($FC.b,X)		; 41 FC
	ora [$08.b]		; 07 08
	sbc ($01.b)		; F2 01
	nop		; EA
	sta [$EA.b],Y		; 97 EA
	inc $BEFE.w		; EE FE BE
	rol $F1.b,X		; 36 F1
	stx $D2.b		; 86 D2
	ora $50.b		; 05 50
	ora $02.b,X		; 15 02
	cld		; D8
	cop $0B.b		; 02 0B
	cmp $E28C.w,X		; DD 8C E2
	sty $E2.b		; 84 E2
	sei		; 78
	inc $9E.b		; E6 9E
	stx $2E.b		; 86 2E
	lda $20DF40.l,X		; BF 40 DF 20
	dec $807F.w		; CE 7F 80
	sed		; F8
	sta $205F7F.l		; 8F 7F 5F 20
	cmp $9DDD.w,X		; DD DD 9D
	sbc $BBBDBD.l,X		; FF BD BD BB
	tyx		; BB
	tsa		; 3B
	tsa		; 3B
	tas		; 1B
	sty $87.b		; 84 87
	sbc $FC032E.l,X		; FF 2E 03 FC
	ora $7FFEF0.l		; 0F F0 FE 7F
	iny		; C8
	and $FED2.w		; 2D D2 FE
	brk $FA.b		; 00 FA
	tsb $FC.b		; 04 FC
	brk $2E.b		; 00 2E
	inc $F631.w,X		; FE 31 F6
	sbc $F8FFFC.l,X		; FF FC FF F8
	sbc $DAF0F3.l,X		; FF F3 F0 DA
	sbc $F00FBF.l,X		; FF BF 0F F0
	adc $7E3F5F.l,X		; 7F 5F 3F 7E
	ora $63FEFC.l,X		; 1F FC FE 63
	sbc $FFFF61.l,X		; FF 61 FF FF
	sbc $1FFF39.l,X		; FF 39 FF 1F
	adc $083F1E.l,X		; 7F 1E 3F 08
	ora $063F0C.l,X		; 1F 0C 3F 06
	and $C0C4A0.l,X		; 3F A0 C4 C0
	sbc $C0983F.l,X		; FF 3F 98 C0
	sta [$C0.b],Y		; 97 C0
	ldy #$41.b		; A0 41
	ldy #$42.b		; A0 42
	sta ($43.b,X)		; 81 43
	sta ($47.b,X)		; 81 47
	sta ($84.b,X)		; 81 84
	cpy $3C.b		; C4 3C
	dey		; 88
	jsr $9797.w		; 20 97 97
	jsr $FEA0.w		; 20 A0 FE
	sbc #$D1.b		; E9 D1
	sbc $0DFEFF.l,X		; FF FF FE 0D
	sty $0B.b		; 84 0B
	stx $7E.b		; 86 7E
	cop $75.b		; 02 75
	ora ($FA.b,S),Y		; 13 FA
	ora #$EB.b		; 09 EB
	dex		; CA
	cmp $F5E5.w,X		; DD E5 F5
	ora $83E5FF.l		; 0F FF E5 83
	bra -127.b		; 80 81
	bra  99.b		; 80 63
	plp		; 28
	sec		; 38
	trb $1C.b		; 14 1C
	trb $DE.b		; 14 DE
	lsr A		; 4A
	ora $CEEFFF.l		; 0F FF EF CE
	sbc $FE03F8.l		; EF F8 03 FE
	jsr ($7D01.w,X)		; FC 01 7D
	ora ($DE.b,X)		; 01 DE
	cpy #$AF.b		; C0 AF
	ora [$00.b],Y		; 17 00
	rts		; 60

	pld		; 2B
	clc		; 18
	ora $D9F5.w		; 0D F5 D9
	inc $5A76.w,X		; FE 76 5A
	ora $FE.b		; 05 FE
	and $C7F11E.l,X		; 3F 1E F1 C7
	ply		; 7A
	cmp #$04.b		; C9 04
	cmp $F14A.w,Y		; D9 4A F1
	asl $B857.w,X		; 1E 57 B8
	jsr $0BFE.w		; 20 FE 0B
	phd		; 0B
	asl $20FC.w,X		; 1E FC 20
	inc $F4D2.w,X		; FE D2 F4
	php		; 08
	sed		; F8
	and $F1F8E8.l,X		; 3F E8 F8 F1
	sbc $B700.w,X		; FD 00 B7
	pha		; 48
	adc $2CCC10.l		; 6F 10 CC 2C
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	jsr ($C331.w,X)		; FC 31 C3
	tsb $31.b		; 04 31
	asl $E00E.w		; 0E 0E E0
	adc $10FE3F.l,X		; 7F 3F FE 10
	ora $FEFE40.l,X		; 1F 40 FE FE
	inc $FF7E.w,X		; FE 7E FF
	asl $103F.w		; 0E 3F 10
	bmi  70.b		; 30 46
	inc $FE40.w,X		; FE 40 FE
	trb $FFFC.w		; 1C FC FF
	inc $CBFF.w,X		; FE FF CB
	asl $CF.b		; 06 CF
	ora [$8F.b]		; 07 8F
	ora [$8B.b]		; 07 8B
	ora [$9D.b]		; 07 9D
	phd		; 0B
	inc $05.b		; E6 05
	cmp $FD.b,S		; C3 FD
	stp		; DB
	.db $42, $BD		; 42 BD
	cmp $870086.l		; CF 86 00 87
	and [$D9.b],Y		; 37 D9
	ora [$00.b]		; 07 00
	ora $18.b,S		; 03 18
	sbc $3C01FF.l,X		; FF FF 01 3C
	brk $7E.b		; 00 7E
	brk $EE.b		; 00 EE
	sbc ($FF.b)		; F2 FF
	adc ($FB.b)		; 72 FB
	lda ($D7.b)		; B2 D7
	lda $D9A7.w,Y		; B9 A7 D9
	and $FFFF.w,X		; 3D FF FF
	cmp ($43.b,X)		; C1 43
	ldy $9C.b		; A4 9C
	eor ($67.b,X)		; 41 67
	sbc [$27.b],Y		; F7 27
	adc [$07.b],Y		; 77 07
	lda [$83.b],Y		; B7 83
	tyx		; BB
	ora $DB.b,S		; 03 DB
	ora $0F.b,S		; 03 0F
	sbc ($C3.b),Y		; F1 C3
	clc		; 18
	tya		; 98
	rol $303E.w,X		; 3E 3E 30
	cmp $FE.b,S		; C3 FE
	sbc ($40.b,S),Y		; F3 40
	adc $40FB5D.l,X		; 7F 5D FB 40
	sbc $41FE40.l,X		; FF 40 FE 41
	sbc $F2C821.l,X		; FF 21 C8 F2
	sbc $7C09F8.l,X		; FF F8 09 7C
	jmp ($CA68.w,X)		; 7C 68 CA
	tya		; 98
	ldx $0544.w		; AE 44 05
	ora $FE.b,S		; 03 FE
	phd		; 0B
	ora ($0F.b,X)		; 01 0F
	pha		; 48
	jsr ($0838.w,X)		; FC 38 08
	cmp ($D2.b),Y		; D1 D2
	inc $0504.w,X		; FE 04 05
	inc $D13D.w,X		; FE 3D D1
	jsr ($FD7F.w,X)		; FC 7F FD
	inc $FEFD.w,X		; FE FD FE
	plx		; FA
	jsr ($F8F5.w,X)		; FC F5 F8
	clc		; 18
	sbc $38FE18.l,X		; FF 18 FE 38
	ora $FDFEE2.l,X		; 1F E2 FE FD
	adc ($FD.b),Y		; 71 FD
	jsl $7C28FA.l		; 22 FA 28 7C
	inc $FF79.w,X		; FE 79 FF
	rts		; 60

	ora ($73.b,X)		; 01 73
	cop $66.b		; 02 66
	ora $CD.b		; 05 CD
	php		; 08
	sta $6E90.w,Y		; 99 90 6E
	bit $F2.b,X		; 34 F2
	inc $C384.w,X		; FE 84 C3
	php		; 08
	tsb $0070.w		; 0C 70 00
	rts		; 60

	eor ($40.b),Y		; 51 40
	sbc ($41.b)		; F2 41
	sta $68.b,S		; 83 68
	cmp ($FE.b,X)		; C1 FE
	ora ($02.b,X)		; 01 02
	sta ($FE.b,X)		; 81 FE
	ldx #$D2.b		; A2 D2
	ora [$F8.b]		; 07 F8
	sbc $7E7EFC.l,X		; FF FC 7E 7E
	.db $82, $FF, $7F		; 82 FF 7F
	lda ($3F.b,X)		; A1 3F
	eor ($FF.b,X)		; 41 FF
	sbc $4F219F.l,X		; FF 9F 21 4F
	ora ($07.b),Y		; 11 07
	ora #$07.b		; 09 07
	bra   8.b		; 80 08
	sbc $1A.b		; E5 1A
	sbc $3C.b		; E5 3C
	bit $9C9C.w,X		; 3C 9C 9C
	sbc $CCCCFF.l,X		; FF FF CC CC
	cpx $E4.b		; E4 E4
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	ora ($12.b)		; 12 12
	ora $01160F.l		; 0F 0F 16 01
	ora $00.b,X		; 15 00
	sta [$C3.b]		; 87 C3
	inc A		; 1A
	brk $14.b		; 00 14
	ora ($FC.b,X)		; 01 FC
	ora $0A00.w		; 0D 00 0A
	cli		; 58
	brk $FF.b		; 00 FF
	sbc $0D0C.w,X		; FD 0C 0D
	asl $070E.w		; 0E 0E 07
	ora [$0B.b]		; 07 0B
	phd		; 0B
	ora $9A0D.w		; 0D 0D 9A
	cpy $F0E9.w		; CC E9 F0
	and ($C0.b,S),Y		; 33 C0
	sbc $00DDF0.l		; EF F0 DD 00
	and $F2C0.w,Y		; 39 C0 F2
	cpy $24D9.w		; CC D9 24
	cpy #$8C.b		; C0 8C
	asl $F6.b		; 06 F6
	tsb $F00F.w		; 0C 0F F0
	cpy $3A3A.w		; CC 3A 3A
	inc $F6.b,X		; F6 F6
	ldy $F8B6.w,X		; BC B6 F8
	sed		; F8
	cpy #$1F.b		; C0 1F
	and ($C0.b,X)		; 21 C0
	and ($A0.b),Y		; 31 A0
	lda ($40.b,X)		; A1 40
	eor ($1E.b,X)		; 41 1E
	inc $BC06.w,X		; FE 06 BC
	sta $C0.b,S		; 83 C0
	brk $12.b		; 00 12
	brk $40.b		; 00 40
	ply		; 7A
	cpy #$0A.b		; C0 0A
	ora $05.b		; 05 05
	tsx		; BA
	adc ($85.b,X)		; 61 85
	adc $C0.b,X		; 75 C0
	asl A		; 0A
	ora ($0F.b,X)		; 01 0F
	bit $4C43.w,X		; 3C 43 4C
	dex		; CA
	ldy $C0DE.w,X		; BC DE C0
	sbc $8080FF.l,X		; FF FF 80 80
	and [$DF.b]		; 27 DF
	inc $0F.b		; E6 0F
	rol A		; 2A
	ora [$35.b],Y		; 17 35
	cop $28.b		; 02 28
	eor $CF.b,X		; 55 CF
	bmi  10.b		; 30 0A
	cmp [$C6.b],Y		; D7 C6
	sbc ($11.b,X)		; E1 11
	tay		; A8
	cmp ($CF.b,S),Y		; D3 CF
	sbc $CF8282.l,X		; FF 82 82 CF
	jsr $7B27.w		; 20 27 7B
	bvs -32.b		; 70 E0
	sbc $B80003.l		; EF 03 00 B8
	asl $000B.w,X		; 1E 0B 00
	tsb $84.b		; 04 84
	tsb $C0.b		; 04 C0
	asl A		; 0A
	tsb $04.b		; 04 04
	lda $D5F1.w,X		; BD F1 D5
	sbc $3CBC36.l		; EF 36 BC 3C
	brk $F0.b		; 00 F0
	eor #$BA.b		; 49 BA
	bra 102.b		; 80 66
	and ($00.b),Y		; 31 00
	rep #$02		; C2 02
	and $E1E0.w,X		; 3D E0 E1
	stz $3F3F.w,X		; 9E 3F 3F
	trb $FACA.w		; 1C CA FA
	jsr ($1617.w,X)		; FC 17 16
	cop $12.b		; 02 12
	trb $0B.b		; 14 0B
	dec A		; 3A
	ora $3D.b		; 05 3D
	asl $DC5E.w,X		; 1E 5E DC
	sbc #$F1.b		; E9 F1
	ora $E06AED.l,X		; 1F ED 6A E0
	xba		; EB
	cpy #$C5.b		; C0 C5
	iny		; C8
	dec $BF9C.w,X		; DE 9C BF
	asl A		; 0A
	nop		; EA
	inc $D23E.w,X		; FE 3E D2
	sbc #$FE.b		; E9 FE
	sta ($F8.b)		; 92 F8
	ora $F8A7.w		; 0D A7 F8
	asl A		; 0A
	nop		; EA
	sed		; F8
	tsb $FF07.w		; 0C 07 FF
	inc $1C00.w,X		; FE 00 1C
	ora $31.b,S		; 03 31
	asl $1DE2.w		; 0E E2 1D
	sta [$7B.b]		; 87 7B
	tsb $FE.b		; 04 FE
	ora [$07.b]		; 07 07
	asl $3C1E.w,X		; 1E 1E 3C
	sbc $813DBF.l,X		; FF BF 3D 81
	sta $0F.b,S		; 83 0F
	brk $7C.b		; 00 7C
	ora $CE.b,S		; 03 CE
	and ($3B.b),Y		; 31 3B
	cpy $3ADF.w		; CC DF 3A
	ply		; 7A
	sbc [$C2.b],Y		; F7 C2
	sbc $D0D9E0.l,X		; FF E0 D9 D0
	cmp ($80.b,X)		; C1 80
	adc ($71.b),Y		; 71 71
	cpy #$CE.b		; C0 CE
	brk $3E.b		; 00 3E
	and ($FF.b)		; 32 FF
	inc $3F.b		; E6 3F
	bit $C6FF.w,X		; 3C FF C6
	sbc $6020C0.l,X		; FF C0 20 60
	bra  -2.b		; 80 FE
	bvc -96.b		; 50 A0
	bvs -128.b		; 70 80
	bcc 116.b		; 90 74
	eor $84FE.w,Y		; 59 FE 84
	lda ($FF.b)		; B2 FF
	cpx #$E0.b		; E0 E0
	rts		; 60

	stx $0A.b		; 86 0A
	sbc $200433.l,X		; FF 33 04 20
	lda ($7E.b),Y		; B1 7E
	cpy $D01B.w		; CC 1B D0
	inc $1E61.w,X		; FE 61 1E
	ldy $FC.b		; A4 FC
	tsb $38ED.w		; 0C ED 38
	lsr $D2.b,X		; 56 D2
	sbc $E71FFF.l,X		; FF FF 1F E7
	and [$CF.b],Y		; 37 CF
	and $9F7FDF.l		; 2F DF 7F 9F
	lsr $DFBF.w,X		; 5E BF DF
	rol $3DFE.w,X		; 3E FE 3D
	xce		; FB
	and $08FF.w,X		; 3D FF 08
	adc ($77.b,S),Y		; 73 77
	sbc [$EF.b]		; E7 EF
	ora [$1F.b]		; 07 1F
	cmp $3E9EDF.l		; CF DF 9E 3E
	sbc $99FEA1.l,X		; FF A1 FE 99
	lda $BFDFEE.l,X		; BF EE DF BF
	dec $BEFF.w,X		; DE FF BE
	lda $7C37.w,X		; BD 37 7C
	sbc $D953FE.l,X		; FF FE 53 D9
	plx		; FA
	sbc [$F8.b],Y		; F7 F8
	cpy $9CFF.w		; CC FF 9C
	inc $A41C.w,X		; FE 1C A4
	sbc #$78.b		; E9 78
	jsr ($FD71.w,X)		; FC 71 FD
	sbc ($83.b,X)		; E1 83
	cmp ($F9.b)		; D2 F9
	cmp $FB.b,S		; C3 FB
	stx $FE86.w		; 8E 86 FE
	inc $8CFC.w,X		; FE FC 8C
	jsr $FAA4.w		; 20 A4 FA
	jsr $FA80.w		; 20 80 FA
	jsr ($F81C.w,X)		; FC 1C F8
	ora #$9C.b		; 09 9C
	bcs  13.b		; B0 0D
	sbc $1C63FE.l,X		; FF FE 63 1C
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $33CF3D.l,X		; FF 3D CF 33
	sta $ED1666.l,X		; 9F 66 16 ED
	dec A		; 3A
	cpy $48BD.w		; CC BD 48
	ldy $3E49.w,X		; BC 49 3E
	rol $FF70.w,X		; 3E 70 FF
	sbc ($71.b),Y		; F1 71
	lsr A		; 4A
	phk		; 4B
	bit $36.b,X		; 34 36
	rts		; 60

	jmp ($6D61.w)		; 6C 61 6D
	xba		; EB
	sbc $FF03FF.l,X		; FF FF 03 FF
	ora $77FDFB.l,X		; 1F FB FD 77
	stx $038F.w		; 8E 8F 03
	eor $35.b,S		; 43 35
	lda ($59.b)		; B2 59
	sbc ($18.b),Y		; F1 18
	lda ($58.b,X)		; A1 58
	inc $48FF.w,X		; FE FF 48
	sei		; 78
	sbc $8E02.w,X		; FD 02 8E
	adc ($73.b),Y		; 71 73
	iny		; C8
	cmp #$9594.w		; C9 94 95
	stx $96.b,Y		; 96 96
	stx $86.b		; 86 86
	sbc $F4EB1F.l,X		; FF 1F EB F4
	cmp $C8B7E0.l,X		; DF E0 B7 C8
	sbc $B04F00.l,X		; FF 00 4F B0
	xce		; FB
	sty $FF.b		; 84 FF
	bra 126.b		; 80 7E
	sed		; F8
	inc $F303.w,X		; FE 03 F3
	ora [$E7.b]		; 07 E7
	ora [$C7.b]		; 07 C7
	bit $03.b		; 24 03
	sta $39.b,S		; 83 39
	lda $0187.w,Y		; B9 87 01
	ldx $9FBE.w,Y		; BE BE 9F
	sta $20D06E.l,X		; 9F 6E D0 20
	inc $82E0.w,X		; FE E0 82
	adc $A0FE.w,Y		; 79 FE A0
	rti		; 40

	cpy #$F137.w		; C0 37 F1
	ror $0110.w		; 6E 10 01
	cpx #$FFF4.w		; E0 F4 FF
	bra  -1.b		; 80 FF
	bra -42.b		; 80 D6
	adc $7C83C6.l,X		; 7F C6 83 7C
	asl $09C0.w,X		; 1E C0 09
	ldy #$F3B2.w		; A0 B2 F3
	sbc ($CF.b,S),Y		; F3 CF
	cmp $FBBCBC.l		; CF BC BC FB
	xce		; FB
	sbc ($05.b,X)		; E1 05
	txs		; 9A
	cpx $FA6E.w		; EC 6E FA
	tsb $C53E.w		; 0C 3E C5
	txs		; 9A
	tsx		; BA
	inc $FDFF.w,X		; FE FF FD
	brk $BC.b		; 00 BC
	ora ($0D.b,X)		; 01 0D
	jsr $F824.w		; 20 24 F8
	sed		; F8
	jsr ($E0FC.w,X)		; FC FC E0
	jsr ($00C5.w,X)		; FC C5 00
	ply		; 7A
	sta ($01.b,X)		; 81 01
	ror $7503.w,X		; 7E 03 75
	rts		; 60

	jmp $7D7DFA.l		; 5C FA 7D 7D
	.db $82, $67, $98		; 82 67 98
	ora $D906F0.l		; 0F F0 06 D9
	sbc $F9F8.w,X		; FD F8 F9
	rts		; 60

	jmp $017C00.l		; 5C 00 7C 01
	sbc $470183.l,X		; FF 83 01 47
	eor [$DF.b]		; 47 DF
	ldy #$90EF.w		; A0 EF 90
	ply		; 7A
	sta $BF.b		; 85 BF
	rti		; 40

	cpx $FF.b		; E4 FF
	adc $08C9E4.l,X		; 7F E4 C9 08
	inc $8F11.w		; EE 11 8F
	sta $32A727.l		; 8F 27 A7 32
	lda ($3A.b)		; B2 3A
	dec A		; 3A
	sei		; 78
	sei		; 78
	sbc $F8F9.w,Y		; F9 F9 F8
	sta [$96.b],Y		; 97 96
	sbc [$E7.b]		; E7 E7
	sei		; 78
	bra -73.b		; 80 B7
	pha		; 48
.INDEX 8
	sep #$1D		; E2 1D
	ldx #$B6.b		; A2 B6
	lsr $80F8.w,X		; 5E F8 80
	bmi  48.b		; 30 30
	ror $207E.w,X		; 7E 7E 20
	bcs  13.b		; B0 0D
	lsr A		; 4A
	bcs  64.b		; B0 40
	plp		; 28
	bne  95.b		; D0 5F
	jsr $F00E.w		; 20 0E F0
	ora $FA.b		; 05 FA
	cop $FD.b		; 02 FD
	iny		; C8
	ldx $38.b		; A6 38
	jmp ($FC30.w,X)		; 7C 30 FC
	sta ($02.b)		; 92 02
	lda $FEFD.w,Y		; B9 FD FE
	ora [$FB.b]		; 07 FB
	asl $FB.b		; 06 FB
	ora $F6C383.l		; 0F 83 C3 F6
	ora $58F6.w		; 0D F6 58
	ldx $C4.b		; A6 C4
	plx		; FA
	xce		; FB
	inc $10F4.w,X		; FE F4 10
	inc $FEF6.w,X		; FE F6 FE
	beq   1.b		; F0 01
	sbc $F75DA2.l,X		; FF A2 5D F7
	rol A		; 2A
	sbc $F0FF.w,X		; FD FF F0
	ror $DE.b		; 66 DE
	adc $CDFA.w		; 6D FA CD
	ldy $FCDB.w,X		; BC DB FC
	ora $AE.b,S		; 03 AE
	eor $285D.w,X		; 5D 5D 28
	sbc $442AFF.l,X		; FF FF 2A 44
	ror $49.b		; 66 49
	adc $CD89.w		; 6D 89 CD
	sta ($DB.b,S),Y		; 93 DB
	ora $03.b,S		; 03 03
	and $C936C0.l,X		; 3F C0 36 C9
	ora $E0F0E0.l,X		; 1F E0 F0 E0
	inc $D23C.w,X		; FE 3C D2
	ora [$F8.b]		; 07 F8
	inc $6F6F.w,X		; FE 6F 6F
	inc $00.b		; E6 00
	trb $E6.b		; 14 E6
	dex		; CA
	cop $BA.b		; 02 BA
	inc $01.b,X		; F6 01
	brk $FF.b		; 00 FF
	lsr $E7.b		; 46 E7
	.db $62, $06, $18		; 62 06 18
	jsr ($33CC.w,X)		; FC CC 33
	ldx $FA.b,Y		; B6 FA
	adc $561480.l,X		; 7F 80 14 56
	rti		; 40

	cop $EA.b		; 02 EA
	sbc $C3F6FC.l,X		; FF FC F6 C3
	cmp $48.b,S		; C3 48
	sbc $18B840.l,X		; FF 40 B8 18
	cop $88.b		; 02 88
	nop		; EA
	bit #$01FE.w		; 89 FE 01
	inc $FEF0.w,X		; FE F0 FE
	cpx #$F8.b		; E0 F8
	ora ($40.b),Y		; 11 40
	bra -96.b		; 80 A0
	rti		; 40

	bvc -96.b		; 50 A0
	jsl $04E018.l		; 22 18 E0 04
	eor $8AF84A.l		; 4F 4A F8 8A
	pea $F886.w		; F4 86 F8
	bit $C8.b		; 24 C8
	nop		; EA
	ror $C3D2.w,X		; 7E D2 C3
	beq  30.b		; F0 1E
	ora $0DFEED.l,X		; 1F ED FE 0D
	sbc ($C8.b)		; F2 C8
	bpl -17.b		; 10 EF
	tsb $EBFF.w		; 0C FF EB
	sbc ($08.b,S),Y		; F3 08
	sbc [$88.b],Y		; F7 88
	adc [$E9.b],Y		; 77 E9
	sbc $EDE0.w		; ED E0 ED
	sbc ($F2.b)		; F2 F2
	cpy $FC.b		; C4 FC
	cpy #$BA.b		; C0 BA
	sed		; F8
	bmi  -3.b		; 30 FD
	lda [$FE.b],Y		; B7 FE
	bcs  79.b		; B0 4F
	stz $BF40.w		; 9C 40 BF
	jsl $BF62DD.l		; 22 DD 62 BF
	mvn $27,$9D		; 54 9D 27
	lda [$07.b],Y		; B7 07
	lda [$4F.b],Y		; B7 4F
	eor $09F8A0.l		; 4F A0 F8 09
	bit $5C02.w		; 2C 02 5C
	cmp #$0722.w		; C9 22 07
	sed		; F8
	trb $BAA8.w		; 1C A8 BA
	phx		; DA
	phx		; DA
	iny		; C8
	sta $1E.b,X		; 95 1E
	cli		; 58
	rep #$C0		; C2 C0
	ldy $AA42.w		; AC 42 AA
	inc $7F83.w,X		; FE 83 7F
	sta ($7F.b,X)		; 81 7F
	sty $00.b,X		; 94 00
	asl $28.b,X		; 16 28
	sbc ($FE.b)		; F2 FE
	dec $FF.b,X		; D6 FF
	inc $20C6.w		; EE C6 20
	cmp [$3E.b]		; C7 3E
	cmp ($C2.b,X)		; C1 C2
	inc $3642.w,X		; FE 42 36
	dex		; CA
	ldy $EE10.w,X		; BC 10 EE
	sta $F3F38F.l		; 8F 8F F3 F3
	cop $F6.b		; 02 F6
	sbc $FE1039.l,X		; FF 39 10 FE
	stz $C228.w,X		; 9E 28 C2
	cpx #$1F.b		; E0 1F
	beq -113.b		; F0 8F
	clv		; B8
	cmp [$DD.b]		; C7 DD
	ora $E19E.w,X		; 1D 9E E1
	cpx $F0.b		; E4 F0
	ora #$DFDF.w		; 09 DF DF
	eor $99.b		; 45 99
	sbc [$81.b],Y		; F7 81
	.db $62, $A9, $84		; 62 A9 84
	xce		; FB
	lsr $35.b,X		; 56 35
	jsr ($EC13.w,X)		; FC 13 EC
	stz $4CF4.w,X		; 9E F4 4C
	sbc ($3C.b)		; F2 3C
	cld		; D8
	ora #$F420.w		; 09 20 F4
	.db $82, $D2, $40		; 82 D2 40
	cli		; 58
	ora #$180A.w		; 09 0A 18
	sbc ($A0.b),Y		; F1 A0
	ora ($D8.b,X)		; 01 D8
	ora #$F1F8.w		; 09 F8 F1
	sbc $0E7FFE.l,X		; FF FE 7F 0E
	tya		; 98
	adc [$B7.b]		; 67 B7
	pha		; 48
	sbc $08FF10.l		; EF 10 FF 08
	tda		; 7B
	lda $FC68F7.l,X		; BF F7 68 FC
	cmp ($92.b,S),Y		; D3 92
	jsr ($9E0C.w,X)		; FC 0C 9E
	tsx		; BA
	dex		; CA
	eor ($DA.b),Y		; 51 DA
	eor $BA.b		; 45 BA
	cmp $3A.b		; C5 3A
	ora $738C3E.l,X		; 1F 3E 8C 73
	cmp $F826.w,Y		; D9 26 F8
	cmp [$7B.b]		; C7 7B
	inc $5F69.w,X		; FE 69 5F
	tsx		; BA
	cmp $FDFE.w,X		; DD FE FD
	sbc $3BBDBD.l,X		; FF BD BD 3B
	tsa		; 3B
	trb $031C.w		; 1C 1C 03
	ora $DB.b		; 05 DB
	eor $A05FB0.l		; 4F B0 5F A0
	sbc ($61.b,X)		; E1 61
	sta [$68.b],Y		; 97 68
	inc $C03F.w,X		; FE 3F C0
	lda $BDF650.l		; AF 50 F6 BD
	.db $42, $FA		; 42 FA
	adc $B7B78C.l,X		; 7F 8C B7 B7
	ldx $B6.b,Y		; B6 B6
	ror $8E6E.w		; 6E 6E 8E
	stx $1E1E.w		; 8E 1E 1E
	bit $34.b,X		; 34 34
	bpl  96.b		; 10 60
	jsr $FEFE.w		; 20 FE FE
	rol $DC1B.w,X		; 3E 1B DC
	and $65.b,S		; 23 65
	ora $08.b,X		; 15 08
	inc $9113.w,X		; FE 13 91
	rti		; 40

	ora [$99.b]		; 07 99
	jsr $1CF0.w		; 20 F0 1C
	dec $EA.b		; C6 EA
	rti		; 40

	ora $2A.b,X		; 15 2A
	jsr $C17B.w		; 20 7B C1
	asl $F3.b,X		; 16 F3
	dec $EC.b		; C6 EC
	asl $09F8.w,X		; 1E F8 09
	lsr $05.b,X		; 56 05
	sep #$8F		; E2 8F
	bvs -64.b		; 70 C0
	ldy $BCBC.w,X		; BC BC BC
	inx		; E8
	inc $FC9C.w,X		; FE 9C FC
	sbc $0EAA50.l,X		; FF 50 AA 0E
	stz $E2.b		; 64 E2
	jmp $F0FEE2.l		; 5C E2 FE F0
	cop $F3.b		; 02 F3
	inc $FFF0.w,X		; FE F0 FF
	sed		; F8
	ora #$E91A.w		; 09 1A E9
	inc $38.b		; E6 38
	rol $1CD8.w,X		; 3E D8 1C
	sed		; F8
	inc $F80C.w,X		; FE 0C F8
	ora $C43F.w		; 0D 3F C4
	xce		; FB
	tsb $0DFF.w		; 0C FF 0D
	ora ($0D.b,X)		; 01 0D
	cmp ($F8.b,X)		; C1 F8
	tas		; 1B
	inc $3FFF.w,X		; FE FF 3F
	phd		; 0B
	plx		; FA
	asl A		; 0A
	sbc $F909.w,Y		; F9 09 F9
	ora $16EF.w		; 0D EF 16
	and $4CC9.w,Y		; 39 C9 4C
	beq  96.b		; F0 60
	inx		; E8
	jmp ($FEBF.w,X)		; 7C BF FE
	cpy #$70.b		; C0 70
	cpy #$30.b		; C0 30
	cpy #$8C.b		; C0 8C
	cmp $E0E6.w,Y		; D9 E6 E0
	sbc $E0.b,S		; E3 E0
	sbc [$9B.b],Y		; F7 9B
	inc $915F.w,X		; FE 5F 91
	adc $B15260.l		; 6F 60 52 B1
	bpl -118.b		; 10 8A
	cmp $046788.l		; CF 88 67 04
	adc $FF8774.l		; 6F 74 87 FF
	ora [$20.b]		; 07 20
	ora [$24.b]		; 07 24
	inc $EDED.w,X		; FE ED ED
	ora ($01.b,X)		; 01 01
	and ($03.b,S),Y		; 33 03
	sta $1F01.w,Y		; 99 01 1F
	inc $0181.w,X		; FE 81 01
	cmp $D801.w,Y		; D9 01 D8
	brk $FC.b		; 00 FC
	dec $39.b		; C6 39
	sbc $1C.b,S		; E3 1C
	bmi -49.b		; 30 CF
	lda $05.b		; A5 05
	bcc 111.b		; 90 6F
	ror $FEE2.w,X		; 7E E2 FE
	sbc $62F9.w,Y		; F9 F9 62
	beq  11.b		; F0 0B
	jmp $E227E1.l		; 5C E1 27 E2
	nop		; EA
	cpx $70.b		; E4 70
	sta $0EE718.l		; 8F 18 E7 0E
	sbc ($18.b),Y		; F1 18
	and [$A0.b]		; 27 A0
	bit $F6.b		; 24 F6
	sbc [$E7.b]		; E7 E7
	asl $D4.b,X		; 16 D4
	and #$197F.w		; 29 7F 19
	cop $FD.b		; 02 FD
	adc ($9E.b,X)		; 61 9E
	and ($CC.b,S),Y		; 33 CC
	adc $DF86.w,Y		; 79 86 DF
	beq  19.b		; F0 13
	plb		; AB
	tsb $CA.b		; 04 CA
	asl A		; 0A
	lda $FFC6F7.l,X		; BF F7 C6 FF
	sbc $FF082A.l		; EF 2A 08 FF
	jmp ($C4EA.w,X)		; 7C EA C4
	bne  11.b		; D0 0B
	mvn $0E,$DA		; 54 DA 0E
	sbc $DE0BF8.l,X		; FF F8 0B DE
	ora $99E532.l,X		; 1F 32 E5 99
	asl $FA.b		; 06 FA
	ora $4E.b,S		; 03 4E
	rep #$8F		; C2 8F
	ora ($8F.b,X)		; 01 8F
	cpx #$4F.b		; E0 4F
	ldy #$16.b		; A0 16
	asl $FEF0.w,X		; 1E F0 FE
	asl $11.b		; 06 11
	stz $1FEE.w		; 9C EE 1F
	brk $5F.b		; 00 5F
	rti		; 40

	sbc $200FFF.l,X		; FF FF 0F 20
	brk $C0.b		; 00 C0
	cpx #$00.b		; E0 00
	sbc ($00.b,X)		; E1 00
	sbc $22.b,S		; E3 22
	sep #$01		; E2 01
	inc $04.b		; E6 04
	and $30FB81.l,X		; 3F 81 FB 30
	cmp $DCE251.l,X		; DF 51 E2 DC
	trb $07C3.w		; 1C C3 07
	rti		; 40

	asl $3FBF.w		; 0E BF 3F
	ora #$949B.w		; 09 9B 94
	beq -28.b		; F0 E4
	cpx #$03.b		; E0 03
	cmp $00B8EC.l		; CF EC B8 00
	sbc ($03.b,S),Y		; F3 03
	stz $04.b		; 64 04
	tay		; A8
	beq  -1.b		; F0 FF
.ACCU 8
	sep #$EC		; E2 EC
	ldy $D9.b		; A4 D9
	php		; 08
	sbc ($22.b),Y		; F1 22
	bit $1EC3.w,X		; 3C C3 1E
	lda $1F21F4.l,X		; BF F4 21 1F
	jsr $1007.w		; 20 07 10
	ora ($10.b,X)		; 01 10
	pla		; 68
	pea $271C.w		; F4 1C 27
	and [$11.b]		; 27 11
	eor ($15.b,X)		; 41 15
	ora ($10.b),Y		; 11 10
	inc $DD08.w		; EE 08 DD
	sed		; F8
	sbc ($20.b)		; F2 20
	sed		; F8
	ora ($0D.b),Y		; 11 0D
	cmp #$7F.b		; C9 7F
	sei		; 78
	cpx $40BF.w		; EC BF 40
	sbc $08F710.l		; EF 10 F7 08
	jsr ($04FB.w,X)		; FC FB 04
	sbc $FA02.w,X		; FD 02 FA
	sed		; F8
.INDEX 16
	rep #$9F		; C2 9F
	sta $E7CFCF.l,X		; 9F CF CF E7
	sbc $F9F3F3.l,X		; FF F3 F3 F9
	rol $B5.b		; 26 B5
	sbc $E8C1.w,Y		; F9 C1 E8
	asl $0C00.w		; 0E 00 0C
	bit $FFEA.w,X		; 3C EA FF
	inc $D062.w,X		; FE 62 D0
	phd		; 0B
	rti		; 40

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	adc $D062D1.l		; 6F D1 62 D0
	ora $CFFF.w		; 0D FF CF
	jsr $DFFE.w		; 20 FE DF
	brk $FC.b		; 00 FC
	ora $FE.b,S		; 03 FE
	eor $81BF80.l,X		; 5F 80 BF 81
	xce		; FB
	cop $5F.b		; 02 5F
	ora $0C22.w,Y		; 19 22 0C
	ora $E0FFFE.l		; 0F FE FF E0
	inc $607F.w,X		; FE 7F 60
	ror $F040.w,X		; 7E 40 F0
	sbc $ECC820.l,X		; FF 20 C8 EC
	asl A		; 0A
	cpx $DE08.w		; EC 08 DE
	bpl -78.b		; 10 B2
	plp		; 28
	stz $50.b		; 64 50
	rts		; 60

	ora $80.b,X		; 15 80
	bra -48.b		; 80 D0
	asl A		; 0A
	lda #$F2BA.w		; A9 BA F2
	nop		; EA
	ldy $5E.b,X		; B4 5E
	bcs -61.b		; B0 C3
	jsr $3020.w		; 20 20 30
	bmi -110.b		; 30 92
	iny		; C8
	ora $FFCE.w		; 0D CE FF
	sed		; F8
	bpl   8.b		; 10 08
	ror A		; 6A
	eor $FDFE.w,X		; 5D FE FD
	sbc ($FE.b),Y		; F1 FE
	sbc $FEF0FD.l,X		; FF FD F0 FE
	adc $487960.l,X		; 7F 60 79 48
	iny		; C8
	phd		; 0B
	ora $B8E20F.l		; 0F 0F E2 B8
	phd		; 0B
	sbc $A2E07F.l,X		; FF 7F E0 A2
	inc $BD01.w,X		; FE 01 BD
	.db $42, $6F		; 42 6F
	bpl -105.b		; 10 97
	php		; 08
	lsr $4B01.w		; 4E 01 4B
	tsb $23.b		; 04 23
	tsb $F8.b		; 04 F8
	sbc $FCFC0E.l,X		; FF 0E FC FC
	bit $8E3C.w,X		; 3C 3C 8E
	stx $6666.w		; 8E 66 66
	rol $36.b,X		; 36 36
	and ($33.b,S),Y		; 33 33
	sbc $1BC3.w,X		; FD C3 1B
	tas		; 1B
	cmp #$00D9.w		; C9 D9 00
	sbc $FE02.w,X		; FD 02 FE
	brk $76.b		; 00 76
	dey		; 88
	sty $E8.b		; 84 E8
	eor [$A3.b]		; 47 A3
	bpl  -8.b		; 10 F8
	brk $FA.b		; 00 FA
	sbc $70A2E8.l,X		; FF E8 A2 70
	sbc $D4FFFF.l,X		; FF FF FF D4
.INDEX 16
	rep #$9F		; C2 9F
	ror $DE.b		; 66 DE
	plp		; 28
	sei		; 78
	jmp.w [$FC7B]		; DC 7B FC
	inc $7770.w,X		; FE 70 77
	bit $AD.b		; 24 AD
	dey		; 88
	txy		; 9B
	inc $90FF.w,X		; FE FF 90
	rts		; 60

.INDEX 16
	rep #$5B		; C2 5B
	ora $78.b,S		; 03 78
	brk $71.b		; 00 71
	ora ($A9.b,X)		; 01 A9
	ora ($53.b,X)		; 01 53
	ora $67.b,S		; 03 67
	ora [$5F.b]		; 07 5F
	sbc $9F00FF.l,X		; FF FF 00 9F
	ora ($BF.b,X)		; 01 BF
	cop $7F.b		; 02 7F
	ora $FE.b		; 05 FE
	asl A		; 0A
	sbc $FB14.w,X		; FD 14 FB
	and #$53F7.w		; 29 F7 53
	lda [$EA.b],Y		; B7 EA
	sbc $F25EB7.l,X		; FF B7 5E F2
	brk $BC.b		; 00 BC
	stx $C9.b,Y		; 96 C9
	xce		; FB
	xce		; FB
	bcs  -1.b		; B0 FF
	.db $42, $FF		; 42 FF
	stx $3E5F.w		; 8E 5F 3E
	and $3EFDFC.l,X		; 3F FC FD 3E
	adc $7DBBBD.l,X		; 7F BD BB 7D
	sbc $F0FCB7.l,X		; FF B7 FC F0
	sbc ($C4.b)		; F2 C4
	dec $3AFF.w		; CE FF 3A
	stz $18BE.w		; 9C BE 18
	rol $BD38.w,X		; 3E 38 BD
	and ($7D.b),Y		; 31 7D
	and ($B0.b),Y		; 31 B0
	lda $DAA4.w,Y		; B9 A4 DA
	ldy #$44C0.w		; A0 C0 44
	bvc  -2.b		; 50 FE
	cpx #$FAFE.w		; E0 FE FA
	adc [$76.b],Y		; 77 76
	ldy $F19A.w,X		; BC 9A F1
	.db $82, $8D, $DB		; 82 8D DB
	sbc $090006.l,X		; FF 06 00 09
	sbc $FAF3.w,X		; FD F3 FA
	stz $0DFE.w,X		; 9E FE 0D
	adc ($66.b),Y		; 71 66
	clv		; B8
	ora $2701.w		; 0D 01 27
	brk $FE.b		; 00 FE
	rol $01.b		; 26 01
	and $02.b		; 25 02
	lsr A		; 4A
	tsb $7A.b		; 04 7A
	trb $CE8C.w		; 1C 8C CE
	sta ($0C.b),Y		; 91 0C
	ldx #$1A1A.w		; A2 1A 1A
	clc		; 18
	sbc $AE3030.l,X		; FF 30 30 AE
	stx $3E.b,Y		; 96 3E
	cpy #$D0C0.w		; C0 C0 D0
	ora $48C1.w,Y		; 19 C1 48
	sbc ($FF.b)		; F2 FF
	inc $3E40.w,X		; FE 40 3E
	cld		; D8
	asl A		; 0A
	ror $FF78.w,X		; 7E 78 FF
	ora $213710.l,X		; 1F 10 37 21
	adc $B83A42.l		; 6F 42 3A B8
	tsb $C1.b		; 04 C1
	jsr $DFFF.w		; 20 FF DF
	brk $72.b		; 00 72
	sbc [$07.b]		; E7 07
	cmp $1F9F0F.l		; CF 0F 9F 1F
	clv		; B8
	sec		; 38
	eor $43.b,S		; 43 43
	ora $EAD41F.l,X		; 1F 1F D4 EA
	ora $A7EEEF.l		; 0F EF EE A7
	cmp $FF4E.w,X		; DD 4E FF
	dey		; 88
	cpy #$007F.w		; C0 7F 00
	cmp [$2D.b]		; C7 2D
	lda #$0F02.w		; A9 02 0F
	inc $F000.w,X		; FE 00 F0
	sbc [$E0.b],Y		; F7 E0
	inc $9CCA.w		; EE CA 9C
	iny		; C8
	ora #$7BF7.w		; 09 F7 7B
	adc $FFAFF7.l,X		; 7F F7 AF FF
	sbc $AF5677.l,X		; FF 77 56 AF
	adc $5B1E.w		; 6D 1E 5B
	bit $BA77.w,X		; 3C 77 BA
	sta $7B1366.l,X		; 9F 66 13 7B
	cop $F7.b		; 02 F7
	asl $FF.b		; 06 FF
	ora $77.b,S		; 03 77
	brk $2F.b		; 00 2F
	bra -98.b		; 80 9E
	bra -68.b		; 80 BC
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	tsa		; 3B
	lda #$82FF.w		; A9 FF 82
	bra  -8.b		; 80 F8
	ora #$D3B3.w		; 09 B3 D3
	sbc $200AF8.l,X		; FF F8 0A 20
	dec $9E21.w		; CE 21 9E
	lda ($5E.b,X)		; A1 5E
	ror $03.b		; 66 03
	dec $BB18.w,X		; DE 18 BB
	brk $42.b		; 00 42
	ora ($20.b),Y		; 11 20
	sta ($91.b),Y		; 91 91
	ldy $EA.b		; A4 EA
	ora [$60.b],Y		; 17 60
	sta ($81.b,X)		; 81 81
	eor [$47.b]		; 47 47
	rol $7CB2.w,X		; 3E B2 7C
	stx $0102.w		; 8E 02 01
	ora $9A97AB.l,X		; 1F AB 97 9A
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	inc $A805.w,X		; FE 05 A8
	sbc ($40.b)		; F2 40
	stz $FFFF.w,X		; 9E FF FF
	rol $F19A.w,X		; 3E 9A F1
	ora ($CA.b)		; 12 CA
	rti		; 40

	txs		; 9A
	bra  62.b		; 80 3E
	tsb $7E.b		; 04 7E
	tsb $FA.b		; 04 FA
	tsb $7A.b		; 04 7A
	tsb $7C.b		; 04 7C
	ora $FD.b		; 05 FD
	brk $0C.b		; 00 0C
	iny		; C8
	bit #$CEFA.w		; 89 FA CE
	txs		; 9A
	inc $A0FC.w,X		; FE FC A0
	bvc -112.b		; 50 90
	plp		; 28
	sbc $34881F.l,X		; FF 1F 88 34
	sty $1A.b		; 84 1A
	sta $0C.b,S		; 83 0C
	bra  15.b		; 80 0F
	rti		; 40

	sta [$C0.b]		; 87 C0
	.db $82, $0F, $0F		; 82 0F 0F
	rts		; 60

	sbc $6124A6.l,X		; FF A6 24 61
	adc ($20.b,X)		; 61 20
	sbc ($38.b)		; F2 38
	clv		; B8
	and $07BD.w,X		; 3D BD 07
	ora ($FF.b,X)		; 01 FF
	cmp $080805.l,X		; DF 05 08 08
	bpl  16.b		; 10 10
	brk $11.b		; 00 11
	ldy #$01E7.w		; A0 E7 01
	ora $3293.w		; 0D 93 32
	eor ($46.b,X)		; 41 46
	sta ($FF.b,X)		; 81 FF
	ora $E7E7F2.l		; 0F F2 E7 E7
	sbc $4E4EEF.l		; EF EF 4E 4E
	clc		; 18
	clc		; 18
	rts		; 60

	rts		; 60

	sty $878C.w		; 8C 8C 87
	sbc $0034B2.l,X		; FF B2 34 00
	ldy $AE.b,X		; B4 AE
	php		; 08
	ldy $B408.w,X		; BC 08 B4
	dey		; 88
	sty $88.b		; 84 88
	cpx $05F4.w		; EC F4 05
	beq -84.b		; F0 AC
	sei		; 78
	brk $B0.b		; 00 B0
	bra 112.b		; 80 70
	.db $62, $A1, $FE		; 62 A1 FE
	xba		; EB
	sbc $0FA8DA.l,X		; FF DA A8 0F
	asl $E884.w,X		; 1E 84 E8
	tsb $B236.w		; 0C 36 B2
	ora [$0C.b],Y		; 17 0C
	ora [$0F.b],Y		; 17 0F
	ora ($0F.b,S),Y		; 13 0F
	tsa		; 3B
	ora [$6B.b]		; 07 6B
	sta ($C2.b,S),Y		; 93 C2
	ora [$C5.b],Y		; 17 C5
	tsa		; 3B
	inc $A179.w,X		; FE 79 A1
	lda $FE62.w		; AD 62 FE
	and [$07.b],Y		; 37 07
	eor $00.b		; 45 00
	and $FEBB80.l,X		; 3F 80 BB FE
	eor $4410D0.l		; 4F D0 10 44
	cpx #$FE09.w		; E0 09 FE
	and $60A8.w,X		; 3D A8 60
	ldy $7184.w		; AC 84 71
	cop $06.b		; 02 06
	ora ($FE.b,X)		; 01 FE
	inc $A1.b,X		; F6 A1
	ldy #$F0FD.w		; A0 FD F0
	xce		; FB
	bra 102.b		; 80 66
	sed		; F8
	rts		; 60

	ora [$80.b]		; 07 80
	eor $1C7E01.l,X		; 5F 01 7E 1C
	sta ($1E.b)		; 92 1E
	sbc ($7D.b,X)		; E1 7D
	xba		; EB
	sbc $05FA82.l,X		; FF 82 FA 05
	cpy $80AA.w		; CC AA 80
	ldx $FC.b		; A6 FC
	jsr ($F9F9.w,X)		; FC F9 F9
.INDEX 8
	sep #$1D		; E2 1D
	lda ($4C.b,S),Y		; B3 4C
	stp		; DB
	and $BD26FC.l,X		; 3F FC 26 BD
	eor $4E.b,S		; 43 4E
	lda ($87.b),Y		; B1 87
	sei		; 78
	jmp.w [$E51A]		; DC 1A E5
	bra -67.b		; 80 BD
	bra  -1.b		; 80 FF
	inc $9D.b,X		; F6 9D
	rep #$CE		; C2 CE
	sta ($97.b),Y		; 91 97
	sec		; 38
	tsa		; 3B
	jmp ($C07D.w,X)		; 7C 7D C0
	sbc ($FE.b)		; F2 FE
	adc $B7E9.w		; 6D E9 B7
	adc $FFFF.w,Y		; 79 FF FF
	cmp $87FF33.l		; CF 33 FF 87
	sbc $FACE.w,X		; FD CE FA
	jmp $3C70AD.l		; 5C AD 70 3C
	sbc $10FE30.l,X		; FF 30 FE 10
	sbc $D5FF.w,X		; FD FF D5
	ora ($7B.b,X)		; 01 7B
	stx $B7.b		; 86 B7
	iny		; C8
	dec $DD51.w		; CE 51 DD
	and $73.b,S		; 23 73
	sty $64.b		; 84 64
	bit $0BF8.w		; 2C F8 0B
	cpy #$E8.b		; C0 E8
	ora $BFFF.w		; 0D FF BF
	sed		; F8
	ora $F0.b,S		; 03 F0
	ora $C10FE0.l		; 0F E0 0F C1
	asl $3E81.w,X		; 1E 81 3E
	cmp $3C.b,S		; C3 3C
	sta [$38.b]		; 87 38
	eor $C07C2F.l,X		; 5F 2F 7C C0
	cmp $E7E7.w,Y		; D9 E7 E7
	cmp $9E5ADF.l,X		; DF DF 5A 9E
	sed		; F8
	and $CA.b,X		; 35 CA
	adc $FB84.w,Y		; 79 84 FB
	sed		; F8
	sbc $F900EA.l,X		; FF EA 00 F9
	asl $E1.b		; 06 E1
	asl $0EF1.w		; 0E F1 0E
	cmp ($3E.b,X)		; C1 3E
	sbc ($F1.b),Y		; F1 F1
	sbc ($82.b,S),Y		; F3 82
	sbc $7220F3.l,X		; FF F3 20 72
	sbc $9FD298.l,X		; FF 98 D2 9F
	sta $5720DB.l,X		; 9F DB 20 57
	tay		; A8
	sbc $FF.b		; E5 FF
	beq   0.b		; F0 00
	stp		; DB
	tsb $E6.b		; 04 E6
	clc		; 18
	sbc ($1E.b,X)		; E1 1E
	sbc $1C.b,S		; E3 1C
	jsr ($6707.w,X)		; FC 07 67
	ora $FF.b,S		; 03 FF
	sbc ($23.b),Y		; F1 23
	txy		; 9B
	txy		; 9B
	lda $BDB9.w,Y		; B9 B9 BD
	lda $BCBC.w,X		; BD BC BC
	ldx $2FFF.w,Y		; BE FF 2F
	brk $82.b		; 00 82
	asl $17.b,X		; 16 17
	cmp ($F1.b,S),Y		; D3 F1
	tsb $FC.b		; 04 FC
	lsr $8224.w,X		; 5E 24 82
	ora [$BA.b]		; 07 BA
	rts		; 60

	asl A		; 0A
	asl $86FE.w,X		; 1E FE 86
	adc ($9E.b,X)		; 61 9E
	sta ($7E.b,X)		; 81 7E
	.db $82, $41, $BE		; 82 41 BE
	ora ($7E.b,X)		; 01 7E
	cmp $805700.l,X		; DF 00 57 80
	tsa		; 3B
	cpy #$BF.b		; C0 BF
	lda $7C7A2A.l,X		; BF 2A 7A 7C
	cpx $F8.b		; E4 F8
	dec $41.b,X		; D6 41
	ora ($E0.b,X)		; 01 E0
	ora $B1C1AC.l,X		; 1F AC C1 B1
	inc $F4FD.w,X		; FE FD F4
	pea $AE7F.w		; F4 7F AE
	rol A		; 2A
	dex		; CA
	sbc $F709F8.l,X		; FF F8 09 F7
	sei		; 78
	cmp $40804F.l		; CF 4F 80 40
	eor $206F00.l		; 4F 00 6F 20
	clc		; 18
	mvn $3F,$FE		; 54 FE 3F
	bpl  -2.b		; 10 FE
	jsr $64B1.w		; 20 B1 64
	bit #$8A62.w		; 89 62 8A
	beq  -1.b		; F0 FF
	inc $F259.w,X		; FE 59 F2
	sbc $C1BE00.l,X		; FF 00 BE C1
	tda		; 7B
	adc $0D8F.w,X		; 7D 8F 0D
	sbc [$05.b],Y		; F7 05
	adc #$FB2B.w		; 69 2B FB
	cop $FE.b		; 02 FE
	rol $3D3E.w,X		; 3E 3E 3D
	nop		; EA
	beq  -6.b		; F0 FA
	sbc #$8A36.w		; E9 36 8A
	jsr ($FEFF.w,X)		; FC FF FE
	cpy #$81.b		; C0 81
	cmp ($82.b,X)		; C1 82
	sbc [$88.b]		; E7 88
	lda $CCB3D0.l		; AF D0 B3 CC
	sta [$F9.b]		; 87 F9
	sta $E3FFFF.l,X		; 9F FF FF E3
	adc $BE3E87.l,X		; 7F 87 3E BE
	bit $10BC.w,X		; 3C BC 10
	bne   0.b		; D0 00
	dec $00.b		; C6 00
	cpy $FD01.w		; CC 01 FD
	ora $FF.b,S		; 03 FF
	sbc $E706F3.l,X		; FF F3 06 E7
	sbc ($18.b,X)		; E1 18
	ora $07E4.w,Y		; 19 E4 07
	beq -31.b		; F0 E1
	bpl -15.b		; 10 F1
	pha		; 48
	cmp ($EC.b),Y		; D1 EC
	lda $C0FBF0.l,X		; BF F0 FB C0
	mvn $06,$06		; 54 06 06
	ora $03.b,S		; 03 03
	ora #$7C09.w		; 09 09 7C
	sta ($E7.b),Y		; 91 E7
	cmp $E3.b,S		; C3 E3
	sbc $E000FF.l		; EF FF 00 E0
	asl $F4DE.w,X		; 1E DE F4
	cpx $F1.b		; E4 F1
	sbc #$F904.w		; E9 04 F9
	tsb $E9.b		; 04 E9
	brk $F1.b		; 00 F1
	php		; 08
	cmp ($EF.b),Y		; D1 EF
	lda $1CE20C.l,X		; BF 0C E2 1C
	php		; 08
	php		; 08
	ror $02EA.w,X		; 7E EA 02
	cop $F6.b		; 02 F6
	inc $E6.b,X		; F6 E6
	inc $22.b		; E6 22
	jsl $EEFBFF.l		; 22 FF FB EE
	cmp ($1F.b),Y		; D1 1F
	sbc ($7C.b,S),Y		; F3 7C
	cpx $B7F0.w		; EC F0 B7
	cpy #$6E.b		; C0 6E
	sta ($9F.b,X)		; 81 9F
	inc $79.b		; E6 79
	txy		; 9B
	rts		; 60

	clc		; 18
	sbc $209FEB.l,X		; FF EB 9F 20
	jmp ($F3C3.w,X)		; 7C C3 F3
	ora $9F1FCF.l		; 0F CF 1F 9F
	adc $D2546F.l		; 6F 6F 54 D2
	tsb $B2.b		; 04 B2
	jsr ($AF0F.w,X)		; FC 0F AF
	ora $5F.b,S		; 03 5F
	brk $2F.b		; 00 2F
	cpy #$21.b		; C0 21
	sta [$70.b]		; 87 70
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	tsb $9C.b		; 04 9C
	lsr $E280.w,X		; 5E 80 E2
	tsx		; BA
	inc $32C4.w,X		; FE C4 32
	cpy $AA0E.w		; CC 0E AA
	eor $D839.w,Y		; 59 39 D8
	eor $F5.b,X		; 55 F5
	sbc ($0E.b),Y		; F1 0E
	txa		; 8A
	dex		; CA
	asl $52.b		; 06 52
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	tsx		; BA
	cpx $6B.b		; E4 6B
	cpx #$14.b		; E0 14
	sbc $8F0AF8.l,X		; FF F8 0A 8F
	bvs -73.b		; 70 B7
	ora [$C3.b],Y		; 17 C3
	sec		; 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	ldy $1EF1.w,X		; BC F1 1E
	sbc ($B1.b,X)		; E1 B1
	ora $C00778.l		; 0F 78 07 C0
	clv		; B8
	ora $E6B860.l		; 0F 60 B8 E6
	nop		; EA
	sed		; F8
	ora [$7E.b]		; 07 7E
	inc $BF01.w,X		; FE 01 BF
	lda $FF.b,X		; B5 FF
	jmp ($8072.w)		; 6C 72 80
	inc $FE.b		; E6 FE
	jmp $187CBE.l		; 5C BE 7C 18
	cmp #$8038.w		; C9 38 80
	bpl -32.b		; 10 E0
	php		; 08
	beq  24.b		; F0 18
	eor $E1.b,X		; 55 E1
	cpx #$B4B0.w		; E0 B0 B4
	lda $5426.w,Y		; B9 26 54
	cpy #$C0AC.w		; C0 AC C0
	rep #$C4		; C2 C4
	ldy $A103.w,X		; BC 03 A1
	bcs 124.b		; B0 7C
	sta $C2.b,S		; 83 C2
	eor $3CC17A.l,X		; 5F 7A C1 3C
	sbc $C203.w,X		; FD 03 C2
	bvs -54.b		; 70 CA
	cpx $F266.w		; EC 66 F2
	cpy $DE.b		; C4 DE
	dec $6FE0.w,X		; DE E0 6F
	bra  23.b		; 80 17
	sbc $49E2BB.l,X		; FF BB E2 49
	bit $6CC0.w,X		; 3C C0 6C
	tya		; 98
	pea $6410.w		; F4 10 64
	cpx #$6004.w		; E0 04 60
	cmp ($EC.b,X)		; C1 EC
	cpx $3BF7.w		; EC F7 3B
	cpy $FC.b		; C4 FC
	dey		; 88
	bra  24.b		; 80 18
	ply		; 7A
	sbc ($D0.b),Y		; F1 D0
	bmi -121.b		; 30 87
	bra  31.b		; 80 1F
	lsr $BFF3.w		; 4E F3 BF
	bra  85.b		; 80 55
	stx $FE.b		; 86 FE
	ora $34C9EE.l		; 0F EE C9 34
	lda $CEFE.w,X		; BD FE CE
	plb		; AB
	cop $C4.b		; 02 C4
	brk $E4.b		; 00 E4
	inc $0AF8.w,X		; FE F8 0A
	inc $D8.b		; E6 D8
	ora #$FCFE.w		; 09 FE FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($FF.b,S),Y		; D3 FF
	sbc $AFFE00.l,X		; FF 00 FE AF
	bvc  -9.b		; 50 F7
	php		; 08
	eor $AAA2.w,X		; 5D A2 AA
	eor $55.b,X		; 55 55
	sbc $7F.b,X		; F5 7F
	tax		; AA
	brk $FF.b		; 00 FF
	sed		; F8
	asl $FCE0.w		; 0E E0 FC
	sbc $F502.w,X		; FD 02 F5
	asl A		; 0A
	adc $9C.b,S		; 63 9C
	cmp $2A.b,X		; D5 2A
	rti		; 40

	lda $E047E1.l,X		; BF E1 47 E0
	sed		; F8
	ora $E2.b,X		; 15 E2
	cli		; 58
	lda [$B5.b]		; A7 B5
	lsr A		; 4A
	bvc -81.b		; 50 AF
	sbc $7F.b,X		; F5 7F
	bit $E0.b		; 24 E0
	sed		; F8
	ora ($7F.b)		; 12 7F
	bra  69.b		; 80 45
	tsx		; BA
	stx $A471.w		; 8E 71 A4
	sbc ($77.b,S),Y		; F3 77
	bra -32.b		; 80 E0
	sed		; F8
	ora ($72.b)		; 12 72
	sta $F8E0.w		; 8D E0 F8
	ora $56A9.w,X		; 1D A9 56
	ldx $5F9E.w,Y		; BE 9E 5F
	jsl $139A65.l		; 22 65 9A 13
	cpx $FA05.w		; EC 05 FA
	cpx #$11F8.w		; E0 F8 11
	lsr A		; 4A
	phx		; DA
	cld		; D8
	adc ($FA.b,X)		; 61 FA
	clv		; B8
	eor [$40.b]		; 47 40
	sed		; F8
	ora ($57.b,S),Y		; 13 57
	tay		; A8
	jsr ($15EA.w,X)		; FC EA 15
	sed		; F8
	sbc $6BFC.w,X		; FD FC 6B
	sty $54.b,X		; 94 54
	plb		; AB
	plb		; AB
	mvn $F8,$E0		; 54 E0 F8
	ora $50B1B1.l		; 0F B1 B1 50
	bvc  63.b		; 50 3F
	rol $0001.w,X		; 3E 01 00
	ora $00.b		; 05 00
	lsr $8F00.w,X		; 5E 00 8F
	pei ($FE.b)		; D4 FE
	ora ($B1.b,X)		; 01 B1
	lsr $F00B.w		; 4E 0B F0
	dec A		; 3A
	inc $A3FF.w,X		; FE FF A3
	jmp.w [$0010]		; DC 10 00
	adc $F1.b		; 65 F1
	adc $00.b,X		; 75 00
	sbc ($F3.b,S),Y		; F3 F3
	sbc $2CD310.l		; EF 10 D3 2C
	phy		; 5A
	sbc $FFFE.w,X		; FD FE FF
	eor [$57.b],Y		; 57 57
	bra -29.b		; 80 E3
	cpx #$58C2.w		; E0 C2 58
	brk $BF.b		; 00 BF
	sbc ($F8.b,S),Y		; F3 F8
	sta $03.b,S		; 83 03
	ora [$35.b]		; 07 35
	dex		; CA
	sta ($E0.b)		; 92 E0
	sed		; F8
	ora $5151.w		; 0D 51 51
	ldx #$DA64.w		; A2 64 DA
	lda $F38E.w,X		; BD 8E F3
	trb $AE51.w		; 1C 51 AE
	cpx #$0DF8.w		; E0 F8 0D
	cmp ($FD.b,X)		; C1 FD
	lsr A		; 4A
	lsr A		; 4A
	cpy #$F8E0.w		; C0 E0 F8
	phd		; 0B
	lsr A		; 4A
	lda $E0.b,X		; B5 E0
	sed		; F8
	ora $BFBA.w		; 0D BA BF
	eor $57.b,X		; 55 57
	and $0B0B3E.l,X		; 3F 3E 0B 0B
	bne   0.b		; D0 00
	cpx $00.b		; E4 00
	xce		; FB
	sbc ($67.b),Y		; F1 67
	tya		; 98
	lda $0C2C40.l,X		; BF 40 2C 0C
	stz $F40B.w,X		; 9E 0B F4
	cpx #$09F8.w		; E0 F8 09
	ora $55.b		; 05 55
	sbc $FFBC03.l,X		; FF 03 BC FF
	tax		; AA
	tax		; AA
	txs		; 9A
	and $BB.b		; 25 BB
	brk $FC.b		; 00 FC
	ora $C1.b,S		; 03 C1
	sbc $AAFCE9.l,X		; FF E9 FC AA
	lda $FDE0.w		; AD E0 FD
	plx		; FA
	plx		; FA
	eor $D5.b,X		; 55 D5
	sbc ($E0.b,X)		; E1 E0
	sta $80.b		; 85 80
	and $FC.b,S		; 23 FC
	asl $4F00.w,X		; 1E 00 4F
	jmp $05FA20.l		; 5C 20 FA 05
	cmp $2A.b,X		; D5 2A
	cpx #$F18B.w		; E0 8B F1
	ora $C07F80.l,X		; 1F 80 7F C0
	sbc $BC82D6.l,X		; FF D6 82 BC
	asl A		; 0A
	sbc $A540B8.l,X		; FF B8 40 A5
	clv		; B8
	inc $E2FE.w,X		; FE FE E2
	beq  13.b		; F0 0D
	tax		; AA
	ora $98E0DF.l,X		; 1F DF E0 98
	sbc $B3FF65.l,X		; FF 65 FF B3
.ACCU 8
	sep #$EF		; E2 EF
	sbc $E29393.l		; EF 93 93 E2
	sed		; F8
	phd		; 0B
	xce		; FB
	cmp [$10.b]		; C7 10
	brk $6C.b		; 00 6C
	sta $FF02F1.l,X		; 9F F1 02 FF
	sbc $FF.b		; E5 FF
	cli		; 58
	sbc $F7E0BF.l,X		; FF BF E0 F7
	clc		; 18
	sed		; F8
	sed		; F8
	and $35.b,X		; 35 35
	cpx #$0BF8.w		; E0 F8 0B
	ora [$00.b]		; 07 00
	dex		; CA
	cpx #$233B.w		; E0 3B 23
	ldy $8EA2.w		; AC A2 8E
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	stx $B28E.w		; 8E 8E B2
	sbc ($81.b)		; F2 81
	xce		; FB
	sbc $7109F8.l,X		; FF F8 09 71
	ldx #$E0.b		; A2 E0
	eor $E0.b		; 45 E0
	sed		; F8
	trb $FF80.w		; 1C 80 FF
	pha		; 48
	ora $D5FFB7.l,X		; 1F B7 FF D5
	sbc $F7FFEA.l,X		; FF EA FF F7
	dec $6767.w,X		; DE 67 67
	rts		; 60

	sed		; F8
	ora $7F98.w		; 0D 98 7F
	jmp.w [$EBDF]		; DC DF EB
	ora $FF.b,X		; 15 FF
	.db $42, $FF		; 42 FF
	lda #$FF.b		; A9 FF
	adc [$E0.b],Y		; 77 E0
	jsr ($E0FC.w,X)		; FC FC E0
	sed		; F8
	ora $77FC.w		; 0D FC 77
	ora $E0.b,S		; 03 E0
	lsr A		; 4A
	sbc $5AFF35.l,X		; FF 35 FF 5A
	sbc $F8208F.l,X		; FF 8F 20 F8
	trb $85.b		; 14 85
	ply		; 7A
	and $F2106E.l,X		; 3F 6E 10 F2
	ora ($FF.b,X)		; 01 FF
	tad		; 5B
	sbc $FAE0AF.l,X		; FF AF E0 FA
	plx		; FA
	.db $82, $F0, $0D		; 82 F0 0D
	ora $08.b		; 05 08
	ora ($64.b),Y		; 11 64
	tsx		; BA
	plx		; FA
	bpl  28.b		; 10 1C
	.db $62, $5D, $3C		; 62 5D 3C
	plx		; FA
	cpx #$BF.b		; E0 BF
	ora $FEF2.w,Y		; 19 F2 FE
	sed		; F8
	asl A		; 0A
	rti		; 40

	sbc $80ECD2.l,X		; FF D2 EC 80
	ldy $3C5C.w		; AC 5C 3C
	tax		; AA
	phy		; 5A
	cpx #$F8.b		; E0 F8
	ora $1C2B.w		; 0D 2B 1C
	sed		; F8
	inx		; E8
	asl A		; 0A
	sbc $F356AB.l,X		; FF AB 56 F3
	cpx $F8.b		; E4 F8
	ora ($82.b,S),Y		; 13 82
	ora $FF.b,S		; 03 FF
	eor [$5F.b],Y		; 57 5F
	beq -128.b		; F0 80
	ply		; 7A
	plx		; FA
	sbc $82FD.w,X		; FD FD 82
	sed		; F8
	ora $0C88.w		; 0D 88 0C
	xba		; EB
	sbc $161190.l,X		; FF 90 11 16
	sbc $8280CC.l,X		; FF CC 80 82
	adc $F8826F.l		; 6F 6F 82 F8
	ora $005E.w		; 0D 5E 00
	inx		; E8
	and $54C6.w,Y		; 39 C6 54
	plb		; AB
	jmp ($80F2.w,X)		; 7C F2 80
	sty $D8.b		; 84 D8
	and $FF.b		; 25 FF
	inc $A6EE.w		; EE EE A6
	sed		; F8
	ora $FF11.w		; 0D 11 FF
	jsr $40FC.w		; 20 FC 40
	adc [$38.b],Y		; 77 38
	jsr $15F8.w		; 20 F8 15
	sty $84.b		; 84 84
	brk $EA.b		; 00 EA
	phy		; 5A
	brk $87.b		; 00 87
	tax		; AA
	brk $D5.b		; 00 D5
	inc $ED8F.w		; EE 8F ED
	tda		; 7B
	brk $01.b		; 00 01
	inx		; E8
	tsb $0500.w		; 0C 00 05
	ora $00.b		; 05 00
	brk $14.b		; 00 14
	eor [$C1.b],Y		; 57 C1
	cpx $5D.b		; E4 5D
	brk $02.b		; 00 02
	cli		; 58
	sbc #$C0.b		; E9 C0
	sbc #$43.b		; E9 43
	sed		; F8
	asl $18C2.w		; 0E C2 18
	sbc ($D8.b)		; F2 D8
	and $AE.b,X		; 35 AE
	cpx $BF.b		; E4 BF
	txs		; 9A
	sbc ($A1.b,X)		; E1 A1
	lsr $F8C2.w,X		; 5E C2 F8
	ora $E431.w		; 0D 31 E4
	eor ($76.b),Y		; 51 76
	lda $FEC0.w		; AD C0 FE
	ror A		; 6A
	xba		; EB
	pei ($2B.b)		; D4 2B
	ora $F8.b,S		; 03 F8
	ora $BBFCE0.l		; 0F E0 FC BB
	lsr A		; 4A
	sbc $C3D3.w		; ED D3 C3
	cpx #$F8.b		; E0 F8
	ora ($12.b),Y		; 11 12
	ora ($7E.b)		; 12 7E
	bcc   0.b		; 90 00
	jsr ($8600.w,X)		; FC 00 86
	lda $40EF47.l,X		; BF 47 EF 40
	adc $F8ED90.l		; 6F 90 ED F8
	cpx #$F8.b		; E0 F8
	phd		; 0B
	lda #$A9.b		; A9 A9
	mvn $E1,$2C		; 54 2C E1
	ora $C7.b,S		; 03 C7
	cmp [$00.b],Y		; D7 00
	lsr $00.b		; 46 00
	sbc $11EEF2.l		; EF F2 EE 11
	lsr $00.b,X		; 56 00
	sbc ($F1.b),Y		; F1 F1
	inc $0AF8.w,X		; FE F8 0A
	ora #$22.b		; 09 22
	sta $85.b		; 85 85
	lsr $5B1E.w,X		; 5E 1E 5B
	jmp $F287DC.l		; 5C DC 87 F2
	plx		; FA
	ora $7A.b		; 05 7A
	jsr $0EF8.w		; 20 F8 0E
	ldy $D0AC.w		; AC AC D0
	bne -32.b		; D0 E0
	cmp ($D7.b)		; D2 D7
	tsb $56.b		; 04 56
	sbc #$E8.b		; E9 E8
	sbc $5302.w,X		; FD 02 53
	sbc $EB742F.l,X		; FF 2F 74 EB
	sbc $E3FFFE.l,X		; FF FE FF E3
	eor $1A1A4F.l		; 4F 4F 1A 1A
	ora [$07.b]		; 07 07
	rti		; 40

	brk $B0.b		; 00 B0
	brk $E7.b		; 00 E7
	stx $DF.b		; 86 DF
	sbc $203F.w		; ED 3F 20
	bcs  18.b		; B0 12
	sbc #$F8.b		; E9 F8
	dec $0CF8.w,X		; DE F8 0C
	lda $2A2ABF.l,X		; BF BF 2A 2A
	and ($21.b,X)		; 21 21
	bpl  16.b		; 10 10
	jmp.w [$BADE]		; DC DE BA
	sta $DA00.w		; 8D 00 DA
	bcc -23.b		; 90 E9
	rti		; 40

	sed		; F8
	sbc #$DE.b		; E9 DE
	sbc $FDE2EF.l,X		; FF EF E2 FD
	sbc ($A1.b,X)		; E1 A1
	nop		; EA
	nop		; EA
	rts		; 60

	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	stz $F70A.w,X		; 9E 0A F7
	rol $F1A0.w,X		; 3E A0 F1
	lda $F81500.l,X		; BF 00 15 F8
	sbc #$5F.b		; E9 5F
	sbc $FFC23F.l,X		; FF 3F C2 FF
	tax		; AA
	tax		; AA
	cld		; D8
	cld		; D8
	trb $CB7B.w		; 1C 7B CB
	cop $00.b		; 02 00
	cmp $48.b		; C5 48
	sbc $F1DA.w,X		; FD DA F1
	eor $FF.b,X		; 55 FF
	and [$37.b]		; 27 37
	ror $F8A2.w,X		; 7E A2 F8
	tsb $3232.w		; 0C 32 32
	.db $82, $FC, $6F		; 82 FC 6F
	.db $82, $7F, $00		; 82 7F 00
	cmp $27CD30.l		; CF 30 CD 27
	iny		; C8
	.db $82, $F8, $0E		; 82 F8 0E
	lda #$A9.b		; A9 A9
	stx $20.b		; 86 20
	asl $C1D7.w,X		; 1E D7 C1
	php		; 08
	inc $5601.w,X		; FE 01 56
	stx $FF.b		; 86 FF
	sbc $A4A4FC.l,X		; FF FC A4 A4
	sty $20.b		; 84 20
	sed		; F8
	ora #$4B.b		; 09 4B
	sbc ($FB.b,X)		; E1 FB
	tsb $5B.b		; 04 5B
	sty $F8.b		; 84 F8
	asl A		; 0A
	sbc $557F55.l,X		; FF 55 7F 55
	rti		; 40

	sbc [$FD.b],Y		; F7 FD
	lda $547F88.l,X		; BF 88 7F 54
	cpx #$E9.b		; E0 E9
	adc $FAFD.w,X		; 7D FD FA
	plx		; FA
	cpx $F0.b		; E4 F0
	phd		; 0B
	sbc $FA02.w,X		; FD 02 FA
	ora $6F.b		; 05 6F
	inc A		; 1A
	adc $8086.w,Y		; 79 86 80
	adc $E10030.l,X		; 7F 30 00 E1
	tsx		; BA
	pei ($55.b)		; D4 55
	lda $DBB784.l		; AF 84 B7 DB
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	cpy $AF.b		; C4 AF
	bvc  10.b		; 50 0A
	sbc $40.b,X		; F5 40
	nop		; EA
	ora ($3A.b)		; 12 3A
	rti		; 40

	ldx #$EB.b		; A2 EB
	bra -22.b		; 80 EA
	.db $42, $F0		; 42 F0
	ora $11EE.w		; 0D EE 11
	dec $44DA.w,X		; DE DA 44
	cmp $5AC1.w,X		; DD C1 5A
	stp		; DB
	rts		; 60

	nop		; EA
	tyx		; BB
	tyx		; BB
	cpx #$F8.b		; E0 F8
	ora $44BB.w		; 0D BB 44
	stz $FEE0.w,X		; 9E E0 FE
	eor $FFBFF8.l,X		; 5F F8 BF FF
	xce		; FB
	xce		; FB
	and $35.b,X		; 35 35
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	phd		; 0B
	eor ($35.b)		; 52 35
	dex		; CA
	and ($CC.b,S),Y		; 33 CC
	lda $F906EF.l,X		; BF EF 06 F9
	eor ($FE.b,X)		; 41 FE
	bcs  -1.b		; B0 FF
	cpy #$00.b		; C0 00
	sbc #$BD.b		; E9 BD
	lda $E07F50.l,X		; BF 50 7F E0
	sed		; F8
	phd		; 0B
	lda $40C013.l,X		; BF 13 C0 40
	adc $FC4080.l,X		; 7F 80 40 FC
	ply		; 7A
	bpl  17.b		; 10 11
	ldy $FF.b		; A4 FF
	jsr $EBBC.w		; 20 BC EB
	cpy #$E8.b		; C0 E8
	ora $8755E0.l		; 0F E0 55 87
	eor $DA3AA0.l,X		; 5F A0 3A DA
	jsr ($24E2.w,X)		; FC E2 24
	sbc ($E0.b),Y		; F1 E0
	sed		; F8
	asl $45BA.w		; 0E BA 45
	dec $F0AF.w,X		; DE AF F0
	rol A		; 2A
	cmp $05.b,X		; D5 05
	sbc $DBE05E.l,X		; FF 5E E0 DB
	sbc $4011F8.l,X		; FF F8 11 40
	phy		; 5A
	lda $04.b		; A5 04
	eor [$07.b],Y		; 57 07
	xce		; FB
	rts		; 60

	sbc $F8E2F0.l,X		; FF F0 E2 F8
	trb $EC.b		; 14 EC
	cmp ($40.b),Y		; D1 40
	wai		; CB
	and [$D8.b]		; 27 D8
	sbc $BD68.w,Y		; F9 68 BD
	lsr $E0C5.w,X		; 5E C5 E0
	sed		; F8
	ora ($F5.b)		; 12 F5
	tsb $E9.b		; 04 E9
	stz $15F2.w,X		; 9E F2 15
	sbc $61FE0E.l,X		; FF 0E FE 61
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora ($57.b),Y		; 11 57
	brk $AD.b		; 00 AD
	cop $F8.b		; 02 F8
	ora [$50.b]		; 07 50
	sta $89FF.w,Y		; 99 FF 89
	ora [$EB.b]		; 07 EB
	ldy #$F8.b		; A0 F8
	trb $92.b		; 14 92
	adc $7E82.w		; 6D 82 7E
	phx		; DA
	and $5E.b		; 25 5E
	cmp $F8FF.w,Y		; D9 FF F8
	ora ($E3.b,S),Y		; 13 E3
	sbc $1CFE.w,X		; FD FE 1C
	mvp $E1,$C3		; 44 C3 E1
	ora ($FF.b,X)		; 01 FF
	mvn $BB,$FF		; 54 FF BB
	cpx #$F8.b		; E0 F8
	trb $28.b		; 14 28
	cmp $04.b,X		; D5 04
	ply		; 7A
	plp		; 28
	eor $85D701.l,X		; 5F 01 D7 85
	sbc $DBFFAE.l,X		; FF AE FF DB
	cpx #$F8.b		; E0 F8
	trb $00.b		; 14 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sbc $F8FF00.l		; EF 00 FF F8
	mvp $00,$38		; 44 38 00
	stz $30.b,X		; 74 30
	stz $20.b		; 64 20
	jmp $5C00.w		; 4C 00 5C
	inc $08FF.w		; EE FF 08
	ora ($0C.b),Y		; 11 0C
	brk $18.b		; 00 18
	nop		; EA
	inc $FCFF.w,X		; FE FF FC
	bpl -65.b		; 10 BF
	brk $F6.b		; 00 F6
	bpl  60.b		; 10 3C
	clc		; 18
	trb $00.b		; 14 00
	asl $E0.b,X		; 16 E0
	sbc $1E18EE.l,X		; FF EE 18 1E
	cpx #$DB.b		; E0 DB
	tsb $0FFB.w		; 0C FB 0F
	brk $1C.b		; 00 1C
	tsb $1CFE.w		; 0C FE 1C
	jsr ($0001.w,X)		; FC 01 00
	ora $032C00.l,X		; 1F 00 2C 03
	eor $0903E4.l,X		; 5F E4 03 09
	sbc ($F2.b)		; F2 F2
	sbc $F830EE.l,X		; FF EE 30 F8
	cpy #$C3.b		; C0 C3
	and $40A000.l		; 2F 00 A0 40
	jsr ($00E0.w,X)		; FC E0 00
	bvs -32.b		; 70 E0
	inx		; E8
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	bpl -124.b		; 10 84
	sbc ($FF.b)		; F2 FF
	inc $B960.w		; EE 60 B9
	and ($10.b,X)		; 21 10
	brk $07.b		; 00 07
	tyx		; BB
	tsb $FC.b		; 04 FC
	cmp ($80.b)		; D2 80
	inc A		; 1A
	cpy #$C0FC.w		; C0 FC C0
	jsr ($FCFF.w,X)		; FC FF FC
	sbc ($FC.b)		; F2 FC
	bra -121.b		; 80 87
	clc		; 18
	cld		; D8
	bcc  96.b		; 90 60
	jsr ($C0F0.w,X)		; FC F0 C0
	beq -108.b		; F0 94
	inx		; E8
	sbc $FDEE.w,Y		; F9 EE FD
	cpy #$F8FC.w		; C0 FC F8
	cpy #$0009.w		; C0 09 00
	and $003B21.l,X		; 3F 21 3B 00
	ror $21.b		; 66 21
	bit $0803.w,X		; 3C 03 08
	lda [$C0.b],Y		; B7 C0
	brk $90.b		; 00 90
	sbc $C2FE.w,Y		; F9 FE C2
	plx		; FA
	sbc $FCD03D.l,X		; FF 3D D0 FC
	tya		; 98
	brk $FC.b		; 00 FC
	php		; 08
	dec A		; 3A
	cpx #$00EA.w		; E0 EA 00
	cpy $20.b		; C4 20
	sed		; F8
	asl A		; 0A
	cpx #$0004.w		; E0 04 00
	cpx #$FE31.w		; E0 31 FE
	sbc $0D0006.l,X		; FF 06 00 0D
	cpy #$9E33.w		; C0 33 9E
	adc $C0.b,S		; 63 C0
	and $EE1A00.l,X		; 3F 00 1A EE
	cop $EC.b		; 02 EC
	asl $6404.w		; 0E 04 64
	cpy #$2123.w		; C0 23 21
	sbc $49F7F8.l,X		; FF F8 F7 49
	bne  32.b		; D0 20
	sei		; 78
	bcs 120.b		; B0 78
	bne -28.b		; D0 E4
	rti		; 40

	cpy #$20FE.w		; C0 FE 20
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	cpx $4000.w		; EC 00 40
	xce		; FB
	sbc ($92.b),Y		; F1 92
	sbc ($50.b,X)		; E1 50
	wai		; CB
	ora $10C0.w,X		; 1D C0 10
	asl $C001.w,X		; 1E 01 C0
	cli		; 58
	bra  -3.b		; 80 FD
	bpl -128.b		; 10 80
	inc $F2EE.w,X		; FE EE F2
	sbc $BFE0EE.l,X		; FF EE E0 BF
	.db $82, $12, $F8		; 82 12 F8
	brk $1C.b		; 00 1C
	sed		; F8
	sec		; 38
	cpy #$E07C.w		; C0 7C E0
	inc $00.b		; E6 00
	rol $FD40.w		; 2E 40 FD
	inc $EEEE.w,X		; FE EE EE
	sbc ($E0.b)		; F2 E0
	trb $FCB2.w		; 1C B2 FC
	cpy #$D407.w		; C0 07 D4
	dec $0106.w		; CE 06 01
	tsb $1903.w		; 0C 03 19
	sta [$09.b]		; 87 09
	brk $FF.b		; 00 FF
	sbc $B3EE.w,X		; FD EE B3
	ply		; 7A
	inc $FF07.w,X		; FE 07 FF
	sei		; 78
	brk $C8.b		; 00 C8
	bmi -112.b		; 30 90
	rts		; 60

	jsr $40C0.w		; 20 C0 40
	bra -54.b		; 80 CA
	and $E8.b,S		; 23 E8
	sbc $C670FC.l,X		; FF FC 70 C6
.ACCU 16
.INDEX 16
	rep #$F2		; C2 F2
	inc $F8FF.w,X		; FE FF F8
	and $FF74.w,X		; 3D 74 FF
	eor [$08.b]		; 47 08
	stz $18.b		; 64 18
	eor $38.b		; 45 38
	lsr $3C38.w		; 4E 38 3C
	clc		; 18
	and $1218.w,Y		; 39 18 12
	bpl -15.b		; 10 F1
	ora ($0C.b,X)		; 01 0C
	sbc ($FE.b)		; F2 FE
	ora ($18.b,X)		; 01 18
	ora $18.b,S		; 03 18
	stz $61.b,X		; 74 61
	dey		; 88
	ora ($7E.b,X)		; 01 7E
	asl A		; 0A
	tsb $FE.b		; 04 FE
	stx $B282.w		; 8E 82 B2
	inc $F3E5.w,X		; FE E5 F3
	sbc $FEF2CA.l,X		; FF CA F2 FE
	jsr ($10FF.w,X)		; FC FF 10
	lsr $1E.b		; 46 1E
	pea $18FF.w		; F4 FF 18
	trb $18.b		; 14 18
	ora ($0A.b,S),Y		; 13 0A
	eor $89.b		; 45 89
	sbc $E509F8.l,X		; FF F8 09 E5
	sbc ($F1.b),Y		; F1 F1
	ldy $9CEA.w		; AC EA 9C
	sta ($8C.b)		; 92 8C
	bit $3E60.w,X		; 3C 60 3E
	sta $FF3BFD.l,X		; 9F FD 3B FF
	ora [$F1.b],Y		; 17 F1
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $0E1E07.l		; 0F 07 1E 0E
	and $3A1C.w,X		; 3D 1C 3A
	ldy #$7CE9.w		; A0 E9 7C
	inx		; E8
	cpy $FD08.w		; CC 08 FD
	ora ($1C.b,X)		; 01 1C
	cop $18.b		; 02 18
	stz $1C08.w,X		; 9E 08 1C
	sbc ($C0.b),Y		; F1 C0
	sbc $80C007.l,X		; FF 07 C0 80
	jsr $F400.w		; 20 00 F4
	brk $5E.b		; 00 5E
	bit $5A.b		; 24 5A
	jsr $3074.w		; 20 74 30
	cmp #$DF86.w		; C9 86 DF
	php		; 08
	xce		; FB
	rts		; 60

	brk $24.b		; 00 24
	tsb $24.b		; 04 24
	php		; 08
	adc ($E9.b,X)		; 61 E9
	sbc $0F1117.l,X		; FF 17 11 0F
	pld		; 2B
	ora [$5F.b],Y		; 17 5F
	and [$5E.b]		; 27 5E
	rol $5C.b		; 26 5C
	bit $79.b		; 24 79
	bmi 124.b		; 30 7C
	sbc ($FF.b),Y		; F1 FF
	sbc $00178D.l		; EF 8D 17 00
	and [$00.b]		; 27 00
	rol $01.b		; 26 01
	bit $03.b		; 24 03
	bmi   7.b		; 30 07
	bpl -63.b		; 10 C1
	sbc ($F0.b),Y		; F1 F0
	sbc $D8C00F.l,X		; FF 0F C0 D8
	brk $B4.b		; 00 B4
	php		; 08
	sty $08.b,X		; 94 08
	stz $BC08.w		; 9C 08 BC
	clc		; 18
	sei		; 78
	bmi   2.b		; 30 02
	bra  82.b		; 80 52
	stx $E9.b		; 86 E9
	xce		; FB
	sta $F8A6.w,Y		; 99 A6 F8
	beq  31.b		; F0 1F
	nop		; EA
	eor $32.b,S		; 43 32
	tsb $1824.w		; 0C 24 18
	inc $186C.w,X		; FE 6C 18
	lsr $247F.w,X		; 5E 7F 24
	sec		; 38
	adc $7B30.w,X		; 7D 30 7B
	bmi  49.b		; 30 31
	brk $1C.b		; 00 1C
	sbc #$B8FE.w		; E9 FE B8
	cmp [$A5.b]		; C7 A5
	bmi   2.b		; 30 02
	bmi  61.b		; 30 3D
	sbc ($FC.b),Y		; F1 FC
	rti		; 40

	ldy $B8C0.w,X		; BC C0 B8
	and ($EC.b,X)		; 21 EC
	eor ($A0.b,S),Y		; 53 A0
	rti		; 40

	ror $40F2.w,X		; 7E F2 40
	iny		; C8
	pha		; 48
	ror $FC.b		; 66 FC
	inc $FE40.w,X		; FE 40 FE
	adc $3F.b,X		; 75 3F
	brk $0B.b		; 00 0B
	ora [$FF.b]		; 07 FF
	cop $17.b		; 02 17
	php		; 08
	plp		; 28
	bpl  56.b		; 10 38
	bpl  31.b		; 10 1F
	php		; 08
	phd		; 0B
	bcc -21.b		; 90 EB
	jsr ($C444.w,X)		; FC 44 C4
	cmp $FE10.w,X		; DD 10 FE
	eor $F1.b,S		; 43 F1
	sta $40CCF0.l		; 8F F0 CC 40
	stz $F480.w		; 9C 80 F4
	eor [$AE.b],Y		; 57 AE
	sed		; F8
	bpl  48.b		; 10 30
	beq -126.b		; F0 82
	cpx #$40BA.w		; E0 BA 40
	bmi -128.b		; 30 80
	sei		; 78
	lda #$DDE5.w		; A9 E5 DD
	pea $F2A5.w		; F4 A5 F2
	sbc #$1780.w		; E9 80 17
	tsb $060E.w		; 0C 0E 06
	asl $CC.b		; 06 CC
	sbc $80.b		; E5 80
	tax		; AA
	eor ($0C.b),Y		; 51 0C
	pea $F1E9.w		; F4 E9 F1
	sbc $FDFF.w,X		; FD FF FD
	jsr ($F8E4.w,X)		; FC E4 F8
	rti		; 40

	sbc $0CF8.w		; ED F8 0C
	eor ($15.b,X)		; 41 15
	sbc ($FF.b),Y		; F1 FF
	asl A		; 0A
	sty $F0.b		; 84 F0
	ora $F385.w		; 0D 85 F3
	sbc $800AF8.l,X		; FF F8 0A 80
	nop		; EA
	pei ($BF.b)		; D4 BF
	jsr ($F8EE.w,X)		; FC EE F8
	ora $FEFF.w		; 0D FF FE
	brk $E8.b		; 00 E8
	ora $17000A.l,X		; 1F 0A 00 17
	asl A		; 0A
	adc $00DA0A.l,X		; 7F 0A DA 00
	rep #$00		; C2 00
	inx		; E8
	asl A		; 0A
	inc $00FE.w		; EE FE 00
	inx		; E8
	ora #$497B.w		; 09 7B 49
	sbc $3002.w,X		; FD 02 30
	eor $F1C4.w,Y		; 59 C4 F1
	ror $4B21.w		; 6E 21 4B
	brk $59.b		; 00 59
	stz $0AF8.w,X		; 9E F8 0A
	ror $FFD0.w		; 6E D0 FF
	inc $5F.b		; E6 5F
	nop		; EA
	brk $D7.b		; 00 D7
	rol A		; 2A
	sta $E01A6A.l,X		; 9F 6A 1A E0
	bit $0005.w,X		; 3C 05 00
	sed		; F8
	sei		; 78
	rti		; 40

	sbc $EE.b		; E5 EE
	inc $50F7.w,X		; FE F7 50
	ply		; 7A
	ror $E440.w,X		; 7E 40 E4
	rti		; 40

	sed		; F8
	ora $0AFF80.l,X		; 1F 80 FF 0A
	inc A		; 1A
	beq -87.b		; F0 A9
	stx $4E.b,Y		; 96 4E
	sed		; F8
	ora #$F080.w		; 09 80 F0
	sbc ($FF.b)		; F2 FF
	bra -30.b		; 80 E2
	ora $78.b		; 05 78
	sbc ($54.b),Y		; F1 54
	sbc $40.b,S		; E3 40
	wai		; CB
	pea $E280.w		; F4 80 E2
	bvs -38.b		; 70 DA
	cmp [$F6.b],Y		; D7 F6
	cpy #$3CFE.w		; C0 FE 3C
	cmp [$FE.b],Y		; D7 FE
	cpy #$F83A.w		; C0 3A F8
	jmp ($DFC0.w,X)		; 7C C0 DF
	jmp ($04E3.w)		; 6C E3 04
	bra  -4.b		; 80 FC
	sec		; 38
	brk $4C.b		; 00 4C
	sec		; 38
	jmp $38300A.l		; 5C 0A 30 38
	brk $D8.b		; 00 D8
	ora $F8FF.w,X		; 1D FF F8
	ora $8694.w,X		; 1D 94 86
	adc ($30.b,S),Y		; 73 30
	jmp $07FC09.l		; 5C 09 FC 07
	brk $09.b		; 00 09
	rti		; 40

	sbc [$40.b]		; E7 40
	jsr ($FEF1.w,X)		; FC F1 FE
	lda $9C.b		; A5 9C
	bne  32.b		; D0 20
	stz $1E60.w		; 9C 60 1E
	jsr ($E03C.w,X)		; FC 3C E0
	rti		; 40

	dec $4C88.w,X		; DE 88 4C
	sbc $F1FAFC.l,X		; FF FC FA F1
	asl $1D00.w		; 0E 00 1D
	tsb $0819.w		; 0C 19 08
	ora ($9F.b,S),Y		; 13 9F
	ora $00.b		; 05 00
	adc [$00.b],Y		; 77 00
	sty $7903.w		; 8C 03 79
	cpy #$F480.w		; C0 80 F4
	inc $FDF0.w,X		; FE F0 FD
	ldx $E200.w		; AE 00 E2
	bpl   0.b		; 10 00
	plp		; 28
	bpl -96.b		; 10 A0
	nop		; EA
	inc $7310.w,X		; FE 10 73
	beq  26.b		; F0 1A
.ACCU 16
	rep #$EE		; C2 EE
	cmp [$ED.b]		; C7 ED
	inc $F0FC.w,X		; FE FC F0
	sbc ($10.b,X)		; E1 10
	dec $0A.b,X		; D6 0A
	adc $140485.l,X		; 7F 85 04 14
	php		; 08
	and $1C3C10.l		; 2F 10 3C 1C
	and $E580.w,Y		; 39 80 E5
	cmp #$E4E2.w		; C9 E2 E4
	sta $F0.b,S		; 83 F0
	trb $1803.w		; 1C 03 18
	adc ($BB.b),Y		; 71 BB
	sbc [$92.b],Y		; F7 92
	dec $9A3C.w		; CE 3C 9A
	sta $8F.b,S		; 83 8F
	sei		; 78
	and ($F0.b)		; 32 F0
	sed		; F8
	sbc $04FCFF.l,X		; FF FF FC 04
	jsr ($FE0C.w,X)		; FC 0C FE
	lsr $F1.b,X		; 56 F1
	brk $E8.b		; 00 E8
	and $690079.l,X		; 3F 79 00 69
	bpl  73.b		; 10 49
	bmi  -2.b		; 30 FE
	cpx $8837.w		; EC 37 88
	sbc ($0C.b),Y		; F1 0C
	sbc ($85.b)		; F2 85
	sta $FE.b,S		; 83 FE
	sbc $E235.w,X		; FD 35 E2
	tsb $C0.b		; 04 C0
	bcc -128.b		; 90 80
	pea $8B3E.w		; F4 3E 8B
	ora ($E2.b,S),Y		; 13 E2
	cpy #$C0FC.w		; C0 FC C0
	jsr $6080.w		; 20 80 60
	ora [$6B.b]		; 07 6B
	sbc ($82.b)		; F2 82
	adc $C0.b,X		; 75 C0
	rti		; 40

	sed		; F8
	and $E080DB.l,X		; 3F DB 80 E0
	ora $80C8.w,X		; 1D C8 80
	cpx #$641E.w		; E0 1E 64
	phx		; DA
	mvp $0F,$38		; 44 38 0F
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	nop		; EA
	tda		; 7B
	sec		; 38
	and ($BC.b,S),Y		; 33 BC
	adc ($DF.b,X)		; 61 DF
	inc $2C04.w,X		; FE 04 2C
	mvn $80,$10		; 54 10 80
	pea $A0F2.w		; F4 F2 A0
	pha		; 48
	jmp ($48D3.w,X)		; 7C D3 48
	cpy $C006.w		; CC 06 C0
	lda ($2B.b,X)		; A1 2B
	sec		; 38
	sbc ($69.b),Y		; F1 69
	tya		; 98
	ora [$09.b],Y		; 17 09
	inc $060F.w,X		; FE 0F 06
	tsb $3F.b		; 04 3F
	bpl -78.b		; 10 B2
	sta ($40.b,S),Y		; 93 40
	ora #$FE.b		; 09 FE
	and $10F2.w,Y		; 39 F2 10
	ora ($40.b,X)		; 01 40
	xba		; EB
	lda $D0FE00.l,X		; BF 00 FE D0
	jsr $F800.w		; 20 00 F8
	asl $D53D.w		; 0E 3D D5
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b,S),Y		; 13 0E
	ora [$0E.b],Y		; 17 0E
	ora $2D240E.l,X		; 1F 0E 24 2D
	jsr ($40EA.w,X)		; FC EA 40
	php		; 08
	sbc ($FE.b)		; F2 FE
	tsb $3402.w		; 0C 02 34
	cmp #$66.b		; C9 66
	eor $40.b,X		; 55 40
	plp		; 28
	stz $D9.b,X		; 74 D9
	cmp ($FC.b,X)		; C1 FC
	sbc ($00.b),Y		; F1 00
	xce		; FB
	ora $F4.b		; 05 F4
	lsr $57.b,X		; 56 57
	sbc $80FA00.l,X		; FF 00 FA 80
	dec $C0.b		; C6 C0
	dex		; CA
	and $8002.w,X		; 3D 02 80
	dec $CDAE.w		; CE AE CD
	pld		; 2B
	php		; 08
	bra -53.b		; 80 CB
	beq -64.b		; F0 C0
	wai		; CB
	sty $D2.b		; 84 D2
	cmp ($80.b),Y		; D1 80
	cpy $7EA0.w		; CC A0 7E
	inc $C27D.w		; EE 7D C2
	cpy $CA80.w		; CC 80 CA
	brk $EA.b		; 00 EA
	eor $7538.w,X		; 5D 38 75
	bmi 101.b		; 30 65
	sbc $83.b,S		; E3 83
	brk $E8.b		; 00 E8
	clc		; 18
	ldy #$42.b		; A0 42
	bvc -96.b		; 50 A0
	bvs -96.b		; 70 A0
	sed		; F8
	rti		; 40

	inc $FEFF.w,X		; FE FF FE
	inc $FE.b,X		; F6 FE
	brk $E8.b		; 00 E8
	and $0A.b,S		; 23 0A
	brk $F7.b		; 00 F7
	asl A		; 0A
	cmp [$05.b],Y		; D7 05
	and $2A.b,X		; 35 2A
	stz $E800.w,X		; 9E 00 E8
	asl A		; 0A
	inc $E202.w		; EE 02 E2
	brk $E8.b		; 00 E8
	ora #$40.b		; 09 40
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	lsr $52.b,X		; 56 52
	cpy #$3E.b		; C0 3E
	brk $CF.b		; 00 CF
	cpy #$C4.b		; C0 C4
	ora ($00.b,X)		; 01 00
	nop		; EA
	mvn $00,$E2		; 54 E2 00
	tax		; AA
	cmp ($C0.b)		; D2 C0
	dec $40F8.w		; CE F8 40
	sbc [$AA.b]		; E7 AA
	asl A		; 0A
	inc $EC.b,X		; F6 EC
	cpy #$DE.b		; C0 DE
	sei		; 78
	cmp ($00.b)		; D2 00
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sed		; F8
	phd		; 0B
	brk $E6.b		; 00 E6
	sbc $17BFFC.l,X		; FF FC BF 17
	dec $38.b,X		; D6 38
	cpx #$74.b		; E0 74
	beq -26.b		; F0 E6
	jsr $F8EE.w		; 20 EE F8
	phd		; 0B
	beq   8.b		; F0 08
	jsr $F900.w		; 20 00 F9
	rol $25.b		; 26 25
	dex		; CA
	jmp $443C.w		; 4C 3C 44
	sty $80C9.w		; 8C C9 80
	sbc $7E092C.l,X		; FF 2C 09 7E
	sta ($EA.b,X)		; 81 EA
	bra -106.b		; 80 96
	dec $3C.b		; C6 3C
	sty $1070.w		; 8C 70 10
	cpx #$AD.b		; E0 AD
	sta $CB42.w		; 8D 42 CB
	adc ($ED.b)		; 72 ED
	beq  67.b		; F0 43
	cpy $EDF3.w		; CC F3 ED
	plp		; 28
	cpx $B3.b		; E4 B3
	ora [$5A.b],Y		; 17 5A
	sbc ($BE.b,X)		; E1 BE
	bra -68.b		; 80 BC
	cpy #$F4.b		; C0 F4
	tsb $D96A.w		; 0C 6A D9
	sbc ($FE.b),Y		; F1 FE
	sta $1C7E.w,Y		; 99 7E 1C
	and $78BA7C.l		; 2F 7C BA 78
	adc ($F0.b)		; 72 F0
	cpx $FF4F.w		; EC 4F FF
	inc $0478.w		; EE 78 04
	beq  12.b		; F0 0C
	cpx #$FB.b		; E0 FB
	sta $00.b,X		; 95 00
	lda $0039.w,X		; BD 39 00
	sbc $0037.w,Y		; F9 37 00
	ora $3A02.w,X		; 1D 02 3A
	bra -45.b		; 80 D3
	inc $40C2.w,X		; FE C2 40
	lda $E1FE84.l		; AF 84 FE E1
	ldy $BA42.w,X		; BC 42 BA
	asl $EAEC.w,X		; 1E EC EA
	cld		; D8
	sbc ($58.b),Y		; F1 58
	jmp $A2B5C1.l		; 5C C1 B5 A2
	cpx $E2D7.w		; EC D7 E2
	sbc $00033D.l,X		; FF 3D 03 00
	sbc #$A3.b		; E9 A3
	dec $EBC0.w		; CE C0 EB
	ora #$CA.b		; 09 CA
	dec $F2.b		; C6 F2
	ldy $0CEC.w,X		; BC EC 0C
	cop $20.b		; 02 20
	cpy #$F1.b		; C0 F1
	dec $4A.b		; C6 4A
	sbc $BC72.w,X		; FD 72 BC
	sec		; 38
	jsr $F0E8.w		; 20 E8 F0
	pha		; 48
	dex		; CA
	clv		; B8
	asl A		; 0A
	tyx		; BB
	tyx		; BB
	cmp ($00.b),Y		; D1 00
	inx		; E8
	eor $0F.b,S		; 43 0F
	bvc  -3.b		; 50 FD
	asl $95.b		; 06 95
	ora ($00.b),Y		; 11 00
	inx		; E8
	asl A		; 0A
	xce		; FB
	cpx $E800.w		; EC 00 E8
	rol $0F.b		; 26 0F
	and $1C.b,S		; 23 1C
	rol $00.b		; 26 00
	asl A		; 0A
	trb $3318.w		; 1C 18 33
	cop $EA.b		; 02 EA
	php		; 08
	sbc ($02.b)		; F2 02
	.db $42, $F4		; 42 F4
	xba		; EB
	lda $ED.b,X		; B5 ED
	rti		; 40

	clc		; 18
	inc A		; 1A
	sbc $B9802A.l,X		; FF 2A 80 B9
	asl $1E04.w		; 0E 04 1E
	tsb $18FC.w		; 0C FC 18
	sec		; 38
	rti		; 40

	sbc ($E1.b,X)		; E1 E1
	cmp $82.b,S		; C3 82
	tsx		; BA
	bra  80.b		; 80 50
	plx		; FA
	inc $B2.b,X		; F6 B2
	sbc [$F3.b],Y		; F7 F3
	ora $E5FB00.l,X		; 1F 00 FB E5
	sbc $09F8FF.l,X		; FF FF F8 09
	lsr $C9.b		; 46 C9
	sbc ($2E.b),Y		; F1 2E
	brk $3A.b		; 00 3A
	tsb $32.b		; 04 32
	tsb $1C66.w		; 0C 66 1C
	pld		; 2B
	sta $CC.b,X		; 95 CC
	sec		; 38
	tya		; 98
	ldy $87A9.w,X		; BC A9 87
	sbc ($FE.b,S),Y		; F3 FE
	bit $B1A9.w,X		; 3C A9 B1
	and ($FE.b,X)		; 21 FE
	sbc ($E4.b),Y		; F1 E4
	jsl $1C2E80.l		; 22 80 2E 1C
	and $191C.w,X		; 3D 1C 19
	txa		; 8A
	nop		; EA
	php		; 08
	tsx		; BA
.ACCU 8
	sep #$E1		; E2 E1
	jsr ($80FE.w,X)		; FC FE 80
.ACCU 8
.INDEX 8
	sep #$77		; E2 77
	ldx $EB36.w		; AE 36 EB
	plx		; FA
	cmp $11.b		; C5 11
	brk $34.b		; 00 34
	jmp ($0AC8.w,X)		; 7C C8 0A
	adc ($04.b,X)		; 61 04
	php		; 08
	sbc ($1E.b),Y		; F1 1E
	lsr A		; 4A
	rti		; 40

	ora ($0F.b,S),Y		; 13 0F
	and [$1E.b]		; 27 1E
	cpy #$3E.b		; C0 3E
	rti		; 40

	cmp $AB59.w,X		; DD 59 AB
	inc $BE1E.w,X		; FE 1E BE
	cpy #$B1.b		; C0 B1
	brk $F9.b		; 00 F9
	beq -52.b		; F0 CC
	inc $40.b,X		; F6 40
	sbc $C2.b		; E5 C2
	lda $40FEF2.l,X		; BF F2 FE 40
	inc $80.b		; E6 80
	stz $18.b		; 64 18
	eor [$38.b]		; 47 38
	rol $0F02.w,X		; 3E 02 0F
	tsb $E0.b		; 04 E0
	ply		; 7A
	brk $FC.b		; 00 FC
	iny		; C8
	sty $F2.b		; 84 F2
	cop $01.b		; 02 01
	and $F1.b,S		; 23 F1
	brk $FB.b		; 00 FB
	bne  64.b		; D0 40
	bcc   1.b		; 90 01
	stx $C196.w		; 8E 96 C1
	eor ($40.b,S),Y		; 53 40
	txs		; 9A
	rts		; 60

	bit $EB.b		; 24 EB
	lda $B4.b,X		; B5 B4
	rti		; 40

	jsr $F188.w		; 20 88 F1
	ldx $78F2.w,Y		; BE F2 78
	tsb $64.b		; 04 64
	lda ($FC.b,S),Y		; B3 FC
	rti		; 40

	cpx $77.b		; E4 77
	eor $E1.b,X		; 55 E1
	rti		; 40

	cpx #$0E.b		; E0 0E
	ora #$40.b		; 09 40
	iny		; C8
	tsb $E4C0.w		; 0C C0 E4
	sbc $F20BF8.l,X		; FF F8 0B F2
	sed		; F8
	phd		; 0B
	dey		; 88
	ora $BF00.w,Y		; 19 00 BF
	ply		; 7A
	and [$10.b],Y		; 37 10
	rol A		; 2A
	ora ($4A.b,X)		; 01 4A
	ora ($52.b,X)		; 01 52
	txa		; 8A
	lda $E136.w,X		; BD 36 E1
	rol $31F1.w		; 2E F1 31
	brk $21.b		; 00 21
	inc $F2BF.w,X		; FE BF F2
	beq   0.b		; F0 00
	tya		; 98
	rts		; 60

	trb $3CF8.w		; 1C F8 3C
	iny		; C8
	adc ($C0.b)		; 72 C0
	inc $1186.w		; EE 86 11
	eor ($FD.b,X)		; 41 FD
	.db $42, $C2		; 42 C2
	iny		; C8
	sta ($0C.b,X)		; 81 0C
	cpy #$59.b		; C0 59
	ldx $D4B5.w,Y		; BE B5 D4
	bit $5B04.w,X		; 3C 04 5B
	sec		; 38
	adc $2E99E4.l,X		; 7F E4 99 2E
	lda #$F1.b		; A9 F1
	rti		; 40

	cpx $1505.w		; EC 05 15
	trb $C93C.w		; 1C 3C C9
	tsb $CBB4.w		; 0C B4 CB
	bvc -28.b		; 50 E4
	rol $9AC0.w,X		; 3E C0 9A
	dec A		; 3A
	bpl  12.b		; 10 0C
	sta ($DE.b)		; 92 DE
	cpy #$98.b		; C0 98
	phd		; 0B
	bpl -62.b		; 10 C2
	brk $EB.b		; 00 EB
	ora [$A0.b],Y		; 17 A0
	tsx		; BA
	rti		; 40

	phx		; DA
	inc $40.b,X		; F6 40
	dec $01.b		; C6 01
	tsx		; BA
	sta $F0.b,S		; 83 F0
	ora #$FE.b		; 09 FE
	phx		; DA
	rti		; 40

	bra -110.b		; 80 92
	lsr $C2.b,X		; 56 C2
	nop		; EA
	.db $42, $EE		; 42 EE
	inc $00.b,X		; F6 00
	tay		; A8
	ora $02B938.l		; 0F 38 B9 02
	cpy $EEC9.w		; CC C9 EE
	sed		; F8
	tsb $BF49.w		; 0C 49 BF
	ldy $0DB8.w		; AC B8 0D
	iny		; C8
	tsb $98.b		; 04 98
	ora ($02.b,S),Y		; 13 02
	nop		; EA
	adc $30.b,X		; 75 30
	ror $21.b		; 66 21
	eor $FFFD.w		; 4D FD FF
	brk $D8.b		; 00 D8
	tsb $C019.w		; 0C 19 C0
	sbc $2A.b,X		; F5 2A
	brk $57.b		; 00 57
	rol A		; 2A
	eor $20DE2A.l,X		; 5F 2A DE 20
	dec A		; 3A
	sed		; F8
	jsr ($0220.w,X)		; FC 20 02
	cpy #$70.b		; C0 70
	cpy #$DB.b		; C0 DB
	inc $F7FE.w		; EE FE F7
	sed		; F8
	rti		; 40

	plx		; FA
	tsb $FC.b		; 04 FC
	sbc ($00.b),Y		; F1 00
	sed		; F8
	ora $BA42.w,X		; 1D 42 BA
	sta [$0A.b],Y		; 97 0A
	lda $0AE0A0.l,X		; BF A0 E0 0A
	tsb $00.b		; 04 00
	inc $BA42.w,X		; FE 42 BA
	inc $F800.w,X		; FE 00 F8
	pld		; 2B
	sty $3F.b,X		; 94 3F
	php		; 08
	brk $EE.b		; 00 EE
	trb $7E.b		; 14 7E
	sty $7A.b,X		; 94 7A
	bcc  -8.b		; 90 F8
	rti		; 40

	inc $0350.w,X		; FE 50 03
	inc $FE.b,X		; F6 FE
	bcc   0.b		; 90 00
	sbc $40.b,S		; E3 40
	ldx $5E.b		; A6 5E
	ror $4A9A.w,X		; 7E 9A 4A
	bit $E744.w,X		; 3C 44 E7
	ora ($FE.b,X)		; 01 FE
	bmi  -3.b		; 30 FD
	cmp ($95.b,X)		; C1 95
	ldy $0C.b		; A4 0C
	rti		; 40

	cpy #$C5.b		; C0 C5
	tsb $B9F7.w		; 0C F7 B9
	cpy #$C1.b		; C0 C1
	sbc $FF.b,X		; F5 FF
	and $0173.w,X		; 3D 73 01
	adc [$03.b],Y		; 77 03
	eor [$23.b],Y		; 57 23
	lsr $22.b,X		; 56 22
	bit $0014.w,X		; 3C 14 00
	ldy $21.b		; A4 21
	brk $23.b		; 00 23
	dec $FEFF.w,X		; DE FF FE
	jsl $001401.l		; 22 01 14 00
	lda $CE.b		; A5 CE
	bra -54.b		; 80 CA
	sty $4A.b		; 84 4A
	tsb $96.b		; 04 96
	tsb $843F.w		; 0C 3F 84
	jmp.w [$BC08]		; DC 08 BC
	cli		; 58
	clv		; B8
	bvs 112.b		; 70 70
	cmp $04.b		; C5 04
	inc $2A11.w,X		; FE 11 2A
	brk $84.b		; 00 84
	inc $A4.b		; E6 A4
	cli		; 58
	and #$E1.b		; 29 E1
	cpy #$DF.b		; C0 DF
	mvn $22,$41		; 54 41 22
	tsa		; 3B
	brk $EB.b		; 00 EB
	ror $BCFE.w,X		; 7E FE BC
	lda $81D8.w,Y		; B9 D8 81
	sbc ($5F.b),Y		; F1 5F
	xba		; EB
	rti		; 40

	cpy $1068.w		; CC 68 10
	bvc  32.b		; 50 20
	cpy #$DD.b		; C0 DD
	rti		; 40

	cpy $C530.w		; CC 30 C5
	sbc ($C0.b),Y		; F1 C0
	stp		; DB
	ora $FF.b,S		; 03 FF
	sta [$01.b],Y		; 97 01
	tas		; 1B
	ora ($2B.b,X)		; 01 2B
	ora ($52.b),Y		; 11 52
	jsr $205A.w		; 20 5A 20
	adc $F42B28.l,X		; 7F 28 2B F4
	sbc ($42.b),Y		; F1 42
	plp		; 28
	asl $11.b		; 06 11
	sbc $01.b,S		; E3 01
	inc $7D28.w,X		; FE 28 7D
	cmp ($FC.b)		; D2 FC
	lda $D880DD.l,X		; BF DD 80 D8
	bra  52.b		; 80 34
	php		; 08
	ror $EE04.w		; 6E 04 EE
	tsb $BA.b		; 04 BA
	pha		; 48
	jmp $D3D8.w		; 4C D8 D3
	inc $43EB.w,X		; FE EB 43
	iny		; C8
	and [$91.b],Y		; 37 91
	cpy $04.b		; C4 04
	cpy $39F5.w		; CC F5 39
	bvs  99.b		; 70 63
	ora [$40.b]		; 07 40
	sbc $01.b,S		; E3 01
	cmp ($D4.b,X)		; C1 D4
	sbc [$17.b],Y		; F7 17
	.db $42, $41		; 42 41
	lda ($F0.b,X)		; A1 F0
	jsl $C00AF0.l		; 22 F0 0A C0
	ldy #$80.b		; A0 80
	cmp $CC80.w,Y		; D9 80 CC
	sec		; 38
	phy		; 5A
	ora $D6.b,S		; 03 D6
	sec		; 38
	bit $10.b,X		; 34 10
	ror A		; 6A
	cpy #$40.b		; C0 40
	ora $D2.b		; 05 D2
	cpy #$E1.b		; C0 E1
	lda $1A.b,X		; B5 1A
	bit $6108.w,X		; 3C 08 61
	sbc #$40.b		; E9 40
	jsr ($C04D.w,X)		; FC 4D C0
	beq  15.b		; F0 0F
	ldx $C0F3.w,Y		; BE F3 C0
	sbc ($50.b)		; F2 50
	ora ($5E.b,X)		; 01 5E
	inc $C0D3.w,X		; FE D3 C0
	jmp.w [$DA28]		; DC 28 DA
	jsr $E280.w		; 20 80 E2
	bit $38.b		; 24 38
	pha		; 48
	inc $28ED.w,X		; FE ED 28
	tsb $24.b		; 04 24
	cmp $40FA.w,Y		; D9 FA 40
	brk $F8.b		; 00 F8
	phk		; 4B
	rtl		; 6B

	brk $F8.b		; 00 F8
	asl $005C.w,X		; 1E 5C 00
	sed		; F8
	ora ($C0.b)		; 12 C0
	cpy $081B.w		; CC 1B 08
	trb $F0.b		; 14 F0
	asl A		; 0A
	brk $71.b		; 00 71
	rol $5500.w		; 2E 00 55
	cop $EE.b		; 02 EE
	ldx $40.b		; A6 40
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	adc $8022EC.l		; 6F EC 22 80
	cmp $FF.b		; C5 FF
	asl A		; 0A
	rol $3A14.w,X		; 3E 14 3A
	clc		; 18
	and ($10.b)		; 32 10
	ldx $80.b		; A6 80
	xba		; EB
	nop		; EA
	stz $7D.b,X		; 74 7D
	jsr ($9194.w,X)		; FC 94 91
	tsb $10.b		; 04 10
	eor $00EA.w,X		; 5D EA 00
	inx		; E8
	asl $000E.w,X		; 1E 0E 00
	and ($0E.b,S),Y		; 33 0E
	phd		; 0B
	eor ($00.b),Y		; 51 00
	sbc #$002E.w		; E9 2E 00
	inx		; E8
	ora #$2AEE.w		; 09 EE 2A
	stx $00.b,Y		; 96 00
	inx		; E8
	ora #$1C97.w		; 09 97 1C
	rti		; 40

	cpy #$3C09.w		; C0 09 3C
	ora $00.b,S		; 03 00
	dey		; 88
	phd		; 0B
	plx		; FA
	brk $88.b		; 00 88
	phd		; 0B
	sei		; 78
	bra  74.b		; 80 4A
	and $FE.b		; 25 FE
	cpx $00.b		; E4 00
	dey		; 88
	asl A		; 0A
	plx		; FA
	cpx #$F17E.w		; E0 7E F1
	rti		; 40

	bcs -22.b		; B0 EA
	sty $C0.b,X		; 94 C0
	.db $82, $0C, $0C		; 82 0C 0C
	lda ($00.b)		; B2 00
	cmp $40C200.l		; CF 00 C2 40
	stx $D8.b		; 86 D8
	adc $3C00EB.l,X		; 7F EB 00 3C
	iny		; C8
	dex		; CA
	brk $8A.b		; 00 8A
	brk $86.b		; 00 86
	rts		; 60

	sbc $8C76C8.l,X		; FF C8 76 8C
	cpy #$0AA0.w		; C0 A0 0A
	rol $17.b,X		; 36 17
	plx		; FA
	ora ($4D.b,X)		; 01 4D
	cop $39.b		; 02 39
	cpy #$0AA0.w		; C0 A0 0A
	ldx $403E.w,Y		; BE 3E 40
	cmp $60.b,S		; C3 60
	brk $50.b		; 00 50
	cmp $59.b,S		; C3 59
	jsr $1028.w		; 20 28 10
	bcc  60.b		; 90 3C
	sed		; F8
	sbc ($F0.b)		; F2 F0
	and $55F2.w,X		; 3D F2 55
	sei		; 78
	lda $D143B2.l,X		; BF B2 43 D1
	ldx $CA.b,Y		; B6 CA
	cpy #$969D.w		; C0 9D 96
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	bvc -63.b		; 50 C1
	inc $FE40.w,X		; FE 40 FE
	inc $C0FE.w,X		; FE FE C0
	stz $4044.w,X		; 9E 44 40
	sta $2155.w,Y		; 99 55 21
	bra -64.b		; 80 C0
	stx $7AF3.w		; 8E F3 7A
	pea $FC3E.w		; F4 3E FC
	sbc $3C09F8.l,X		; FF F8 09 3C
	and $C1AB.w		; 2D AB C1
	bpl  -2.b		; 10 FE
	bra  11.b		; 80 0B
	brk $DC.b		; 00 DC
	phb		; 8B
	inc $40.b		; E6 40
	cpy #$D872.w		; C0 72 D8
	clc		; 18
	lsr $01A1.w,X		; 5E A1 01
	ror $4C91.w,X		; 7E 91 4C
	ora $5B.b,S		; 03 5B
	tax		; AA
	sta $FF.b		; 85 FF
	jsr ($34EE.w,X)		; FC EE 34
	bvs -123.b		; 70 85
	cpy $F8.b		; C4 F8
	asl A		; 0A
	inc $C060.w,X		; FE 60 C0
	beq -117.b		; F0 8B
	lda [$3C.b],Y		; B7 3C
	stz $ADF1.w		; 9C F1 AD
	inx		; E8
	adc $01.b,S		; 63 01
	cpy $30DC.w		; CC DC 30
	bra -59.b		; 80 C5
	cmp #$0988.w		; C9 88 09
	trb $E980.w		; 1C 80 E9
	inc $D77A.w		; EE 7A D7
	bra   0.b		; 80 00
	tax		; AA
	bra -126.b		; 80 82
	tya		; 98
	bvs  48.b		; 70 30
	bra -23.b		; 80 E9
	bra  28.b		; 80 1C
	brk $AB.b		; 00 AB
	bra -126.b		; 80 82
	plx		; FA
	sbc $E840F0.l,X		; FF F0 40 E8
	ora #$E800.w		; 09 00 E8
	and $033D.w,Y		; 39 3D 03
	ora [$03.b]		; 07 03
	ora $1E2E03.l,X		; 1F 03 2E 1E
	jmp $FA7D20.l		; 5C 20 7D FA
	rts		; 60

	jsr $BAC0.w		; 20 C0 BA
	dex		; CA
	pea $011E.w		; F4 1E 01
	jsr $FE03.w		; 20 03 FE
	cpy #$F8BA.w		; C0 BA F8
	tda		; 7B
	sbc $CC.b,X		; F5 CC
	sbc ($40.b),Y		; F1 40
	cpy #$F873.w		; C0 73 F8
	bpl -108.b		; 10 94
	sta $F3CCF1.l		; 8F F1 CC F3
	ora $F3.b		; 05 F3
	brk $90.b		; 00 90
	sed		; F8
	eor $08.b,S		; 43 08
	ldy #$0F31.w		; A0 31 0F
	tda		; 7B
	ora [$5F.b]		; 07 5F
	and [$C0.b]		; 27 C0
	trb $0885.w		; 1C 85 08
	jmp ($0089.w,X)		; 7C 89 00
	dex		; CA
	ldx $FE27.w,Y		; BE 27 FE
	asl A		; 0A
	eor [$C0.b],Y		; 57 C0
	ror $F1.b,X		; 76 F1
	bra -61.b		; 80 C3
	cmp [$8C.b],Y		; D7 8C
	brk $94.b		; 00 94
	rti		; 40

	sta $00.b,S		; 83 00
	cmp ($A5.b,X)		; C1 A5
	inc $B940.w,X		; FE 40 B9
	adc $ED.b,S		; 63 ED
	inc $4098.w,X		; FE 98 40
	tsx		; BA
	ora #$0B07.w		; 09 07 0B
	ora [$0F.b]		; 07 0F
	plb		; AB
	inc $0E07.w,X		; FE 07 0E
	asl $3C.b		; 06 3C
	pea $7406.w		; F4 06 74
	bit $F2.b,X		; 34 F2
	eor ($F6.b,X)		; 41 F6
	inc $DA00.w		; EE 00 DA
	tsb $B4.b		; 04 B4
	ldy #$0850.w		; A0 50 08
	cmp $3C.b,X		; D5 3C
	sbc ($BE.b)		; F2 BE
	adc ($D7.b,S),Y		; 73 D7
	bit $F369.w		; 2C 69 F3
	tyx		; BB
	asl $E5B5.w		; 0E B5 E5
	ora $40.b		; 05 40
	inc $7D30.w,X		; FE 30 7D
	cpy #$4079.w		; C0 79 40
	sed		; F8
	ora #$0330.w		; 09 30 03
	tsb $00.b		; 04 00
	inc $4240.w,X		; FE 40 42
	inc $E15F.w,X		; FE 5F E1
	.db $42, $78		; 42 78
	brk $EC.b		; 00 EC
	clc		; 18
	phx		; DA
	.db $82, $EB, $40		; 82 EB 40
	sbc $9842.w,X		; FD 42 98
	tsb $F4.b		; 04 F4
	sbc $717584.l,X		; FF 84 75 71
	ora $6718E7.l		; 0F E7 18 67
	clc		; 18
	rol $1F18.w		; 2E 18 1F
	tsb $021A.w		; 0C 1A 02
	cli		; 58
	php		; 08
	cpy #$BED2.w		; C0 D2 BE
	pei ($08.b)		; D4 08
	sbc ($01.b),Y		; F1 01
	cmp $EAADD1.l,X		; DF D1 AD EA
	jmp $7940BA.l		; 5C BA 40 79
	bne -107.b		; D0 95
	sbc ($11.b,S),Y		; F3 11
	tsx		; BA
	asl $6D.b		; 06 6D
	ldx $F5F4.w,Y		; BE F4 F5
	sbc $BD75.w		; ED 75 BD
	tax		; AA
	php		; 08
	adc $40.b		; 65 40
	cmp ($4F.b),Y		; D1 4F
	bit $34.b,X		; 34 34
	rol $9A.b,X		; 36 9A
	pha		; 48
	sbc #$F482.w		; E9 82 F4
	php		; 08
	sbc ($5E.b),Y		; F1 5E
	ora $CAFB.w		; 0D FB CA
	and ($E9.b)		; 32 E9
	inx		; E8
	bra  -8.b		; 80 F8
	eor $740EF1.l		; 4F F1 0E 74
	php		; 08
	sbc ($10.b,S),Y		; F3 10
	plb		; AB
	tax		; AA
	inc $9000.w,X		; FE 00 90
	ora [$F1.b]		; 07 F1
	lda $E8.b,X		; B5 E8
	ora $CD00.w		; 0D 00 CD
	bra -96.b		; 80 A0
	ora #$FCEE.w		; 09 EE FC
	sbc ($F8.b),Y		; F1 F8
	tsb $5570.w		; 0C 70 55
	sbc $9716F8.l,X		; FF F8 16 97
	cop $00.b		; 02 00
	and $6500.w,Y		; 39 00 65
	rti		; 40

	stz $BC.b		; 64 BC
	nop		; EA
	brk $A0.b		; 00 A0
	ora #$4180.w		; 09 80 41
	sta [$42.b],Y		; 97 42
	dey		; 88
	bvs 124.b		; 70 7C
	pha		; 48
	rts		; 60

	ora #$BFD0.w		; 09 D0 BF
	plx		; FA
	ora [$D1.b]		; 07 D1
	inc A		; 1A
	inx		; E8
	asl A		; 0A
	and $3F18.w		; 2D 18 3F
	clc		; 18
	and [$10.b],Y		; 37 10
	rol $52.b		; 26 52
	sbc $F1A7.w,X		; FD A7 F1
	brk $CC.b		; 00 CC
	ldx $B60A.w,Y		; BE 0A B6
	sta $BAD4.w		; 8D D4 BA
	cld		; D8
	jsr $18EC.w		; 20 EC 18
	ora $D4.b,X		; 15 D4
	asl $0A0C.w,X		; 1E 0C 0A
	dex		; CA
	bra -28.b		; 80 E4
	inc $B23B.w		; EE 3B B2
	tsx		; BA
	ror $6108.w		; 6E 08 61
	brk $AA.b		; 00 AA
	trb $CEFC.w		; 1C FC CE
	tsb $40B9.w		; 0C B9 40
	adc [$FE.b]		; 67 FE
	rts		; 60

	ora #$57F0.w		; 09 F0 57
	rti		; 40

	stz $1080.w		; 9C 80 10
	cpx #$C020.w		; E0 20 C0
	bvs -128.b		; 70 80
	inx		; E8
	rti		; 40

	sta $F4B0.w,X		; 9D B0 F4
	adc $55.b,X		; 75 55
	adc $1BF1.w,Y		; 79 F1 1B
	sbc #$E200.w		; E9 00 E2
	and $C008.w,Y		; 39 08 C0
	ldx #$A640.w		; A2 40 A6
	cpy #$4086.w		; C0 86 40
	ldy $FF.b		; A4 FF
	.db $42, $CE		; 42 CE
	stz $98.b		; 64 98
	bvs  60.b		; 70 3C
	iny		; C8
	mvn $94,$80		; 54 80 94
	lsr A		; 4A
	sbc $10C8EE.l,X		; FF EE C8 10
	sbc $EABAC0.l,X		; FF C0 BA EA
	cli		; 58
	rol $7A1C.w		; 2E 1C 7A
	clc		; 18
	lda ($70.b,S),Y		; B3 70
	and $016644.l		; 2F 44 66 01
	bit $3B03.w		; 2C 03 3B
	tas		; 1B
	adc $661D60.l		; 6F 60 1D 66
	sbc $760B.w,Y		; F9 0B 76
	lda $388C.w		; AD 8C 38
	beq -12.b		; F0 F4
	bpl  20.b		; 10 14
	php		; 08
	sed		; F8
	asl A		; 0A
	eor $EE15.w,Y		; 59 15 EE
	bpl -64.b		; 10 C0
	rti		; 40

	ldy #$C00B.w		; A0 0B C0
	jsr ($A040.w,X)		; FC 40 A0
	ora $00EAD1.l		; 0F D1 EA 00
	tax		; AA
	rti		; 40

	jsr ($B6F0.w,X)		; FC F0 B6
	.db $82, $98, $0A		; 82 98 0A
	eor $55AE.w,Y		; 59 AE 55
	eor #$DC80.w		; 49 80 DC
	phd		; 0B
.INDEX 16
	rep #$99		; C2 99
	brk $98.b		; 00 98
	phd		; 0B
	sec		; 38
	cpx $9E00.w		; EC 00 9E
	trb $0E.b		; 14 0E
	cpx $ED.b		; E4 ED
	adc $18E604.l,X		; 7F 04 E6 18
	lda [$06.b],Y		; B7 06
	brk $E9.b		; 00 E9
	asl $1F.b		; 06 1F
	asl $3C.b		; 06 3C
	trb $2079.w		; 1C 79 20
	and ($10.b)		; 32 10
	brk $F1.b		; 00 F1
	bcc -65.b		; 90 BF
	cop $E9.b		; 02 E9
	inc $031C.w,X		; FE 1C 03
	eor $83.b,X		; 55 83
	jsr $2006.w		; 20 06 20
	cmp ($DC.b),Y		; D1 DC
	phx		; DA
	txa		; 8A
	cmp $DBD4.w,Y		; D9 D4 DB
	rti		; 40

	inc $5F8A.w,X		; FE 8A 5F
	cpy #$719A.w		; C0 9A 71
	sbc ($E9.b,X)		; E1 E9
	ldx $75F6.w,Y		; BE F6 75
	phd		; 0B
	adc $1C.b,S		; 63 1C
	jmp $6BA8.w		; 4C A8 6B
	lda ($EA.b,X)		; A1 EA
	bra -22.b		; 80 EA
	lsr A		; 4A
	tsa		; 3B
	bit $A9F1.w,X		; 3C F1 A9
	adc $C0F181.l		; 6F 81 F1 C0
	.db $62, $34, $1F		; 62 34 1F
	mvn $14,$08		; 54 08 14
	php		; 08
	bit $D818.w		; 2C 18 D8
	phx		; DA
	brk $E1.b		; 00 E1
	cpy #$C267.w		; C0 67 C2
	.db $62, $84, $05		; 62 84 05
	sbc ($E4.b,S),Y		; F3 E4
	bit $18.b		; 24 18
	inc A		; 1A
	sbc ($95.b)		; F2 95
	eor $58.b,X		; 55 58
	rti		; 40

	ldy $D80C.w		; AC 0C D8
	asl A		; 0A
	rti		; 40

	plb		; AB
	cpy #$C05C.w		; C0 5C C0
	trb $8008.w		; 1C 08 80
	sty $F5.b		; 84 F5
	adc $C6F50A.l,X		; 7F 0A F5 C6
	sbc ($80.b)		; F2 80
	sta $11.b,S		; 83 11
	asl $1C22.w		; 0E 22 1C
	lsr $38.b		; 46 38
	and $081E06.l,X		; 3F 06 1E 08
	sta $4003.w		; 8D 03 40
	sty $CC.b		; 84 CC
	sbc ($38.b)		; F2 38
	rti		; 40

	php		; 08
	ora ($FE.b,X)		; 01 FE
	eor $8045.w,Y		; 59 45 80
	brk $A6.b		; 00 A6
	stz $A200.w,X		; 9E 00 A2
	brk $E2.b		; 00 E2
	brk $A0.b		; 00 A0
	phd		; 0B
	sbc ($BF.b),Y		; F1 BF
	lsr $C0.b,X		; 56 C0
	.db $82, $27, $1E		; 82 27 1E
	eor $FC7D2E.l,X		; 5F 2E 7D FC
	wai		; CB
	cpy $84.b		; C4 84
	asl $C960.w,X		; 1E 60 C9
	cpy #$8581.w		; C0 81 85
	plb		; AB
	xce		; FB
	nop		; EA
	jmp ($B2E9.w)		; 6C E9 B2
	sei		; 78
	brk $76.b		; 00 76
	cpy #$005B.w		; C0 5B 00
	rep #$8A		; C2 8A
	inc $B289.w,X		; FE 89 B2
	.db $82, $C3, $C0		; 82 C3 C0
	phy		; 5A
	sbc ($00.b),Y		; F1 00
	ldx #$3C46.w		; A2 46 3C
	lda $35FE5C.l		; AF 5C FE 35
	pei ($1C.b)		; D4 1C
	tsa		; 3B
	cpx #$E3C1.w		; E0 C1 E3
	stz $FA5C.w,X		; 9E 5C FA
	ora ($E0.b,X)		; 01 E0
	cmp $40.b,S		; C3 40
	sbc $ECF657.l,X		; FF 57 F6 EC
	clc		; 18
	tya		; 98
	bvs -126.b		; 70 82
	stp		; DB
	rti		; 40

	inc $4082.w,X		; FE 82 40
	phx		; DA
	adc [$19.b]		; 67 19
	sta [$5C.b]		; 87 5C
	and $0C1F07.l,X		; 3F 07 1F 0C
	jsr $401B.w		; 20 1B 40
	ora $09E1B4.l,X		; 1F B4 E1 09
	jmp ($E9EE.w,X)		; 7C EE E9
	ora $6200DA.l,X		; 1F DA 00 62
	bra -112.b		; 80 90
	bra -96.b		; 80 A0
	eor $16C5.w,X		; 5D C5 16
	lsr A		; 4A
	brk $A5.b		; 00 A5
	bra  48.b		; 80 30
	lda ($D9.b),Y		; B1 D9
	stx $F3.b		; 86 F3
	brk $A4.b		; 00 A4
	rti		; 40

	lda $0FAA.w,X		; BD AA 0F
	and [$80.b]		; 27 80
	sta $1C3E.w,Y		; 99 3E 1C
	jmp ($697C.w,X)		; 7C 7C 69
	bcc -62.b		; 90 C2
	inc $FA94.w,X		; FE 94 FA
	sbc ($85.b)		; F2 85
	lda $E0D280.l		; AF 80 D2 E0
	cpy #$9791.w		; C0 91 97
	adc ($00.b)		; 72 00
	eor $20.b,X		; 55 20
	eor $F320.w,X		; 5D 20 F3
	cpx #$3400.w		; E0 00 34
	sbc ($C0.b),Y		; F1 C0
	cpy #$02D9.w		; C0 D9 02
	jsl $4542FE.l		; 22 FE 42 45
	phb		; 8B
	rol $E0.b,X		; 36 E0
	ora $5829.w		; 0D 29 58
	bit $E0.b		; 24 E0
	asl $58D0.w		; 0E D0 58
	asl A		; 0A
	sbc $075555.l,X		; FF 55 55 07
	lda $4F40.w,Y		; B9 40 4F
	inc $FFFE.w		; EE FE FF
	sed		; F8
	ora $C840.w		; 0D 40 C8
	ora $F8FF.w		; 0D FF F8
	ora ($8B.b),Y		; 11 8B
	cld		; D8
	bpl -64.b		; 10 C0
	sed		; F8
	rol $A555.w		; 2E 55 A5
	jmp ($0D98.w,X)		; 7C 98 0D
	cpy $80FE.w		; CC FE 80
	.db $82, $F8, $E3		; 82 F8 E3
	bra -57.b		; 80 C7
	ror $DE.b		; 66 DE
	inc $EF.b,X		; F6 EF
	ora [$F8.b],Y		; 17 F8
	brk $C4.b		; 00 C4
	sec		; 38
	inc $E9FE.w,X		; FE FE E9
	txa		; 8A
	brk $54.b		; 00 54
	bra -28.b		; 80 E4
	ora [$EB.b]		; 07 EB
	jmp ($EEAD.w,X)		; 7C AD EE
	cmp [$DB.b]		; C7 DB
	tsb $80.b		; 04 80
	php		; 08
	bra -97.b		; 80 9F
	cpy #$CE0B.w		; C0 0B CE
	cmp $CA3E.w,Y		; D9 3E CA
	bvc  12.b		; 50 0C
	inc $36AB.w		; EE AB 36
	jmp.w [$E9EE]		; DC EE E9
	tsb $1E.b		; 04 1E
	cpy #$7C89.w		; C0 89 7C
	clc		; 18
	sed		; F8
	bvs -128.b		; 70 80
	stz $C1.b		; 64 C1
	inc $5AD4.w		; EE D4 5A
	tax		; AA
	cmp ($DC.b)		; D2 DC
	cop $40.b		; 02 40
	tda		; 7B
	adc [$C0.b]		; 67 C0
	sta [$7C.b],Y		; 97 7C
	lda ($0F.b)		; B2 0F
	brk $DF.b		; 00 DF
	tad		; 5B
	bvc -128.b		; 50 80
	ror $E0FA.w,X		; 7E FA E0
	sbc #$8026.w		; E9 26 80
	sbc [$EE.b]		; E7 EE
	cpy #$00B6.w		; C0 B6 00
	sei		; 78
	ora #$5555.w		; 09 55 55
	rol $00DA.w,X		; 3E DA 00
	sei		; 78
	phd		; 0B
	bit $00A4.w,X		; 3C A4 00
	rts		; 60

	ora $0BF852.l,X		; 1F 52 F8 0B
	eor ($F8.b,X)		; 41 F8
	asl $B8D2.w		; 0E D2 B8
	asl $B9C0.w		; 0E C0 B9
	lda #$3F43.w		; A9 43 3F
	tya		; 98
	tsb $7878.w		; 0C 78 78
	stz $C1.b		; 64 C1
	pha		; 48
	bmi  -2.b		; 30 FE
	tad		; 5B
	lda $05.b,X		; B5 05
	rti		; 40

	cmp #$EAE0.w		; C9 E0 EA
	bra  96.b		; 80 60
	asl A		; 0A
	cop $40.b		; 02 40
	nop		; EA
	cpx #$89C0.w		; E0 C0 89
	clc		; 18
	cli		; 58
	eor $FE.b,X		; 55 FE
	bvc  32.b		; 50 20
	ora $7C.b		; 05 7C
	asl $C0F1.w		; 0E F1 C0
	xba		; EB
	eor $B3.b		; 45 B3
	rti		; 40

	wai		; CB
	eor ($B5.b,X)		; 41 B5
	jmp $12F4.w		; 4C F4 12
	bra -28.b		; 80 E4
	rol $09F0.w,X		; 3E F0 09
	cpy #$8064.w		; C0 64 80
	nop		; EA
	bcs -86.b		; B0 AA
	tsx		; BA
	ora $E9.b,X		; 15 E9
	rti		; 40

	sta [$80.b]		; 87 80
	nop		; EA
	inc $40FC.w,X		; FE FC 40
	sta $C0.b,S		; 83 C0
	inc $E8FE.w,X		; FE FE E8
	ora [$CE.b],Y		; 17 CE
	cpy #$F855.w		; C0 55 F8
	tsb $0DF0.w		; 0C F0 0D
	cpy #$CEDD.w		; C0 DD CE
	sbc $C280FD.l,X		; FF FD 80 C2
	inc $0206.w,X		; FE 06 02
	tsb $00.b		; 04 00
	phy		; 5A
	and $4BFC0D.l		; 2F 0D FC 4B
	bra -60.b		; 80 C4
	cop $40.b		; 02 40
	cpy $BB.b		; C4 BB
	sbc ($C8.b),Y		; F1 C8
	cpy #$4FF0.w		; C0 F0 4F
	cmp $9508.w,Y		; D9 08 95
	inc $5DD1.w,X		; FE D1 5D
	plx		; FA
	bmi -64.b		; 30 C0
	lda $D5FB.w,X		; BD FB D5
	mvn $80,$57		; 54 57 80
	iny		; C8
	sbc ($FE.b)		; F2 FE
	jsr ($F880.w,X)		; FC 80 F8
	ora ($80.b),Y		; 11 80
	sei		; 78
	ora #$6090.w		; 09 90 60
	bra -38.b		; 80 DA
	bra 120.b		; 80 78
	asl A		; 0A
	ora $49.b		; 05 49
	sta ($F3.b,X)		; 81 F3
	dec $0284.w,X		; DE 84 02
	rti		; 40

	sep #$82		; E2 82
	cop $F8.b		; 02 F8
	ora #$57D1.w		; 09 D1 57
	rti		; 40

	sbc ($F1.b,X)		; E1 F1
	cpy #$247C.w		; C0 7C 24
	clc		; 18
	jmp $C038.w		; 4C 38 C0
	ldy $63.b,X		; B4 63
	sbc $01.b		; E5 01
	sbc $ABEAE3.l,X		; FF E3 EA AB
	sbc ($05.b),Y		; F1 05
	cop $0B.b		; 02 0B
	asl $0F.b		; 06 0F
	tsb $7F.b		; 04 7F
	bvc  31.b		; 50 1F
	tsb $081D.w		; 0C 1D 08
	and $7918.w,X		; 3D 18 79
	bmi -19.b		; 30 ED
	sty $CA.b		; 84 CA
	ldx #$75EA.w		; A2 EA 75
	lda $A1.b,X		; B5 A1
	and $F880.w,X		; 3D 80 F8
	jsr $3A00.w		; 20 00 3A
	ora $B90007.l,X		; 1F 07 00 B9
	rti		; 40

	lda $CC0A.w,X		; BD 0A CC
	asl $0B55.w,X		; 1E 55 0B
	rti		; 40

	lda $A50CC0.l,X		; BF C0 0C A5
	ora $883EFE.l		; 0F FE 3E 88
	ora ($C0.b),Y		; 11 C0
	cpy $0C1F.w		; CC 1F 0C
	and $B92A.w,Y		; 39 2A B9
	dex		; CA
	iny		; C8
	sbc ($40.b),Y		; F1 40
	lda $F1C2AC.l		; AF AC C2 F1
	rti		; 40

	tay		; A8
	asl A		; 0A
	cpy #$AAE0.w		; C0 E0 AA
	tax		; AA
	and $AE40E3.l,X		; 3F E3 40 AE
	and ($D3.b)		; 32 D3
	txy		; 9B
	sbc ($C0.b),Y		; F1 C0
	stz $9A54.w,X		; 9E 54 9A
	cpy #$0B98.w		; C0 98 0B
	sta [$5C.b],Y		; 97 5C
	eor $50.b,X		; 55 50
	brk $6A.b		; 00 6A
	inc $D960.w		; EE 60 D9
	cpy #$009A.w		; C0 9A 00
	cpx $FDEE.w		; EC EE FD
	sbc ($00.b,S),Y		; F3 00
	sbc $8A9575.l		; EF 75 95 8A
	sbc ($00.b)		; F2 00
	nop		; EA
	bra  56.b		; 80 38
	ora $38FA.w,X		; 1D FA 38
	cpy #$EEFE.w		; C0 FE EE
	jsr ($69A0.w,X)		; FC A0 69
	lda ($15.b,X)		; A1 15
	cpy #$1C96.w		; C0 96 1C
	sep #$C9		; E2 C9
	and [$40.b],Y		; 37 40
	adc $2F.b,S		; 63 2F
	cld		; D8
	ora #$DD40.w		; 09 40 DD
	nop		; EA
	rti		; 40

	lda ($C3.b,X)		; A1 C3
	lsr $C2.b,X		; 56 C2
	brk $C1.b		; 00 C1
	stz $8070.w		; 9C 70 80
	sta $830A.w,Y		; 99 0A 83
	bvs -64.b		; 70 C0
	trb $EA30.w		; 1C 30 EA
	inc $04F8.w,X		; FE F8 04
	jsr ($822F.w,X)		; FC 2F 82
	cpy #$3C1A.w		; C0 1A 3C
	brk $4F.b		; 00 4F
	bit $D28C.w,X		; 3C 8C D2
	sed		; F8
	ldy $5082.w		; AC 82 50
	brk $85.b		; 00 85
	sbc $EEFC.w,Y		; F9 FC EE
	sed		; F8
	jsr ($8E32.w,X)		; FC 32 8E
	cpy #$ABD9.w		; C0 D9 AB
	bcs -128.b		; B0 80
	tsx		; BA
	stx $CF65.w		; 8E 65 CF
	ldy #$BE73.w		; A0 73 BE
	sta $5988.w,X		; 9D 88 59
	sec		; 38
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	.db $42, $F8		; 42 F8
	ora $78B9.w		; 0D B9 78
	tsb $8C54.w		; 0C 54 8C
	sei		; 78
	jmp.w [$7C38]		; DC 38 7C
	sec		; 38
	sei		; 78
	bmi 104.b		; 30 68
	cmp ($15.b),Y		; D1 15
	dex		; CA
	sbc $42.b		; E5 42
	rts		; 60

	cmp ($00.b)		; D2 00
	jsr $BD80.w		; 20 80 BD
	sty $CA.b		; 84 CA
	lsr $6F.b,X		; 56 6F
	rol $034C.w,X		; 3E 4C 03
	bra -104.b		; 80 98
	phd		; 0B
	rti		; 40

	lsr $BA.b		; 46 BA
	sed		; F8
	ora #$74.b		; 09 74
	beq -10.b		; F0 F6
	tay		; A8
	sed		; F8
	tsb $15F0.w		; 0C F0 15
	lsr $C0.b,X		; 56 C0
	ora ($40.b,S),Y		; 13 40
	sed		; F8
	ora $7AC0.w,X		; 1D C0 7A
	inc $0A9F.w,X		; FE 9F 0A
	rti		; 40

	sed		; F8
	ora #$C0.b		; 09 C0
	jmp ($3D5F.w,X)		; 7C 5F 3D
	rti		; 40

	inc $013F.w,X		; FE 3F 01
	adc $1F.b,S		; 63 1F
	inc $09E0.w,X		; FE E0 09
	stz $DC.b,X		; 74 DC
	stx $0CD0.w		; 8E D0 0C
	cpy #$9A.b		; C0 9A
	sty $78.b		; 84 78
	eor $B8.b,X		; 55 B8
	bra -24.b		; 80 E8
	asl A		; 0A
	brk $80.b		; 00 80
	jmp ($E880.w,X)		; 7C 80 E8
	phd		; 0B
	dec $C0CE.w,X		; DE CE C0
	stz $F8FF.w,X		; 9E FF F8
	ora #$AD.b		; 09 AD
	.db $82, $C0, $9C		; 82 C0 9C
	brk $EA.b		; 00 EA
	adc ($5C.b)		; 72 5C
	adc #$C0.b		; 69 C0
	adc ($00.b,X)		; 61 00
	inx		; E8
	ora #$AF.b		; 09 AF
	ror A		; 6A
	adc [$AB.b],Y		; 77 AB
	rep #$C0		; C2 C0
	txy		; 9B
	asl $E0.b		; 06 E0
	phd		; 0B
	jsr ($0FE8.w,X)		; FC E8 0F
	bmi -64.b		; 30 C0
	sbc $0C32.w,X		; FD 32 0C
	stz $DA62.w,X		; 9E 62 DA
	sec		; 38
	ora $AB.b,X		; 15 AB
	cpy #$63.b		; C0 63
	sta $818067.l,X		; 9F 67 80 81
	sbc ($14.b),Y		; F1 14
	ldy $B9.b		; A4 B9
	eor $FA7B.w,Y		; 59 7B FA
	eor $0C2DFC.l		; 4F FC 2D 0C
	pea $E8BB.w		; F4 BB E8
	ora #$C8.b		; 09 C8
	rti		; 40

	tya		; 98
	brk $B8.b		; 00 B8
	brk $E8.b		; 00 E8
	bpl -106.b		; 10 96
	mvp $C0,$40		; 44 40 C0
	.db $82, $40, $B3		; 82 40 B3
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	tsx		; BA
	sep #$80		; E2 80
	sbc ($7D.b,X)		; E1 7D
	dec $F4.b,X		; D6 F4
	dey		; 88
	jmp $38793C.l		; 5C 3C 79 38
	bra  -8.b		; 80 F8
	phd		; 0B
	bit $3803.w,X		; 3C 03 38
	ora [$2A.b]		; 07 2A
	mvn $1E,$80		; 54 80 1E
	cpy #$B9.b		; C0 B9
	bra -28.b		; 80 E4
	rti		; 40

	sed		; F8
	ora #$2B.b		; 09 2B
	rol A		; 2A
	eor ($17.b,X)		; 41 17
	lda $C2.b,S		; A3 C2
	sty $40.b		; 84 40
	sbc $62F2C6.l,X		; FF C6 F2 62
	brk $40.b		; 00 40
	txs		; 9A
	mvn $D2,$A8		; 54 A8 D2
	adc ($D0.b,S),Y		; 73 D0
	ora #$40.b		; 09 40
	sta $F141.w,Y		; 99 41 F1
	bra -112.b		; 80 90
	ora $5B.b,X		; 15 5B
	tay		; A8
	.db $42, $40		; 42 40
	stz $8680.w,X		; 9E 80 86
	jsr ($9D40.w,X)		; FC 40 9D
	rti		; 40

	rti		; 40

	ora $047CAE.l,X		; 1F AE 7C 04
	eor $40.b,X		; 55 40
	eor ($C0.b),Y		; 51 C0
	eor $C0CC87.l,X		; 5F 87 CC C0
	eor $43F840.l,X		; 5F 40 F8 43
	sbc $4035.w,X		; FD 35 40
	inx		; E8
	tas		; 1B
	cpy #$EA.b		; C0 EA
	sbc [$0A.b],Y		; F7 0A
	sta $30DE6A.l,X		; 9F 6A DE 30
	rti		; 40

	inc $EAC2.w		; EE C2 EA
	nop		; EA
	tax		; AA
	asl A		; 0A
	bit $EE40.w		; 2C 40 EE
	cpy #$78.b		; C0 78
	ora $E000.w,X		; 1D 00 E0
	ora $7AC0.w		; 0D C0 7A
	brk $E0.b		; 00 E0
	ora ($2E.b),Y		; 11 2E
	lda #$D0.b		; A9 D0
	brk $0C.b		; 00 0C
	rol $0001.w,X		; 3E 01 00
	sty $EE.b		; 84 EE
	ror $8A.b,X		; 76 8A
	stz $EC.b,X		; 74 EC
	ora $E240AB.l		; 0F AB 40 E2
	bcs  64.b		; B0 40
	jsr $FEC0.w		; 20 C0 FE
	jmp ($80C0.w,X)		; 7C C0 80
	bit $D2C7.w,X		; 3C C7 D2
	ror A		; 6A
	eor $FE.b,X		; 55 FE
	jsr ($3A80.w,X)		; FC 80 3A
	brk $A4.b		; 00 A4
	sed		; F8
	tyx		; BB
	ora $40.b,S		; 03 40
	cpy $7A.b		; C4 7A
	dec $30.b,X		; D6 30
	bit $00.b		; 24 00
.ACCU 16
	rep #$E1		; C2 E1
	cpx $5288.w		; EC 88 52
	txa		; 8A
	adc ($F0.b)		; 72 F0
	jsr ($7A0E.w,X)		; FC 0E 7A
	lsr $F0.b,X		; 56 F0
	ldy $95.b		; A4 95
	tsb $40F1.w		; 0C F1 40
	ldx #$64.b		; A2 64
	jmp.w [$C02F]		; DC 2F C0
	sbc [$7E.b]		; E7 7E
	cmp ($54.b)		; D2 54
	sbc ($5C.b)		; F2 5C
	jsr ($0D38.w,X)		; FC 38 0D
	sei		; 78
	lda ($C1.b,X)		; A1 C1
	bne  14.b		; D0 0E
	sbc ($C0.b),Y		; F1 C0
	sed		; F8
	ora $230028.l,X		; 1F 28 00 23
	php		; 08
	mvn $5C,$28		; 54 28 5C
	inc $C0F8.w,X		; FE F8 C0
	inc $AEA4.w,X		; FE A4 AE
	inc $FE.b,X		; F6 FE
	cpy #$FE.b		; C0 FE
	cpy #$BA.b		; C0 BA
	cpy $2C8C.w		; CC 8C 2C
	ora $48.b,S		; 03 48
	cmp ($A4.b),Y		; D1 A4
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	sbc $7EFE.w		; ED FE 7E
	cmp ($CC.b)		; D2 CC
	lda ($04.b)		; B2 04
	rol A		; 2A
	cop $3C.b		; 02 3C
	tax		; AA
	plb		; AB
	cpy #$FE40.w		; C0 40 FE
	cop $FE.b		; 02 FE
	rti		; 40

	jsr ($3E52.w,X)		; FC 52 3E
	rol $01.b		; 26 01
	eor ($F8.b)		; 52 F8
	ora $F8F2.w		; 0D F2 F8
	ora $B1EA.w		; 0D EA B1
	rti		; 40

	ply		; 7A
	rol $1710.w,X		; 3E 10 17
	rti		; 40

	inx		; E8
	tsa		; 3B
	cpy #$3F78.w		; C0 78 3F
	and $FE0301.l,X		; 3F 01 03 FE
	cop $82.b		; 02 82
	jsl $40F1FC.l		; 22 FC F1 40
	rep #$8F		; C2 8F
	sei		; 78
	cmp $5C3F.w,X		; DD 3F 5C
	bra -84.b		; 80 AC
	ldy $0E.b		; A4 0E
	ldy #$1580.w		; A0 80 15
	ror A		; 6A
	ora ($45.b),Y		; 11 45
	plx		; FA
	and ($C6.b,S),Y		; 33 C6
	mvp $B4,$6A		; 44 6A B4
	sbc ($C2.b,S),Y		; F3 C2
	cpy #$C600.w		; C0 00 C6
	cpy #$00FF.w		; C0 FF 00
	cmp $E0.b		; C5 E0
	lda $EA.b,X		; B5 EA
	cpy #$00FD.w		; C0 FD 00
	cmp [$C0.b]		; C7 C0
	sed		; F8
	asl $4033.w		; 0E 33 40
	eor $60.b		; 45 60
	cpx $DFA3.w		; EC A3 DF
	rts		; 60

	inc $AB00.w		; EE 00 AB
	ply		; 7A
	cld		; D8
	rti		; 40

	jmp ($707A.w,X)		; 7C 7A 70
	tsb $41C0.w		; 0C C0 41
	cpy $0CA8.w		; CC A8 0C
	cpy #$3FF8.w		; C0 F8 3F
	rti		; 40

	inc $0012.w,X		; FE 12 00
	and $6AAD.w,X		; 3D AD 6A
	cpy #$00F5.w		; C0 F5 00
	inc $4010.w,X		; FE 10 40
	sed		; F8
	bit $16.b		; 24 16
	inc $E000.w		; EE 00 E0
	ora [$00.b],Y		; 17 00
	clc		; 18
	ora $0BE000.l,X		; 1F 00 E0 0B
	ora [$55.b]		; 07 55
	ora $B972.w,X		; 1D 72 B9
	brk $E0.b		; 00 E0
	ora $FCF1.w		; 0D F1 FC
	rti		; 40

	dec $821C.w		; CE 1C 82
	rti		; 40

	iny		; C8
	tsb $2008.w		; 0C 08 20
	eor $8D.b,X		; 55 8D
	bit $40.b,X		; 34 40
	ror $84.b		; 66 84
	sed		; F8
	ora #$F585.w		; 09 85 F5
	.db $82, $40, $0A		; 82 40 0A
	rti		; 40

.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	lsr A		; 4A
	tax		; AA
	cpy #$C480.w		; C0 80 C4
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	cpy #$C280.w		; C0 80 C2
	bpl -24.b		; 10 E8
	ora #$A840.w		; 09 40 A8
	ora $BF.b,X		; 15 BF
	ror A		; 6A
	rti		; 40

	sty $18.b		; 84 18
	beq  56.b		; F0 38
	beq 120.b		; F0 78
	beq  64.b		; F0 40
	bra   9.b		; 80 09
	inc $40FC.w,X		; FE FC 40
	stx $C0.b		; 86 C0
.INDEX 16
	rep #$17		; C2 17
	lda $5F.b,X		; B5 5F
	pei ($CB.b)		; D4 CB
	cpy #$0BC0.w		; C0 C0 0B
	inc $2C.b,X		; F6 2C
	dex		; CA
	rol $BF59.w,X		; 3E 59 BF
	lsr A		; 4A
	sta $7A68.w,X		; 9D 68 7A
	.db $82, $59, $E3		; 82 59 E3
	ror A		; 6A
	bra -60.b		; 80 C4
	lsr A		; 4A
	inc $0268.w,X		; FE 68 02
	tsa		; 3B
	plb		; AB
	inc $15.b,X		; F6 15
	bra -72.b		; 80 B8
	tas		; 1B
	trb $F8.b		; 14 F8
	phd		; 0B
	tay		; A8
	trb $EE.b		; 14 EE
	trb $3E.b		; 14 3E
	pei ($FC.b)		; D4 FC
	jsr $FE00.w		; 20 00 FE
	bpl -43.b		; 10 D5
	inc $D4FE.w		; EE FE D4
	rep #$00		; C2 00
	jsr ($FC8E.w,X)		; FC 8E FC
	brk $24.b		; 00 24
	eor ($85.b)		; 52 85
	dec A		; 3A
	and $0BEEFF.l,X		; 3F FF EE 0B
	ror $51.b,X		; 76 51
	cpy #$FEFC.w		; C0 FC FE
	pld		; 2B
	sbc #$143E.w		; E9 3E 14
	sty $80.b,X		; 94 80
	lda ($C0.b,X)		; A1 C0
	ldy $C0.b,X		; B4 C0
	inc $7A.b,X		; F6 7A
	bvs -122.b		; 70 86
	sec		; 38
	eor $0009.w,X		; 5D 09 00
	jmp $4FF3A4.l		; 5C A4 F3 4F
	brk $00.b		; 00 00
	dec $76C0.w,X		; DE C0 76
	jmp ($9F84.w)		; 6C 84 9F
	bit $E9A0.w,X		; 3C A0 E9
	cpy #$7C1C.w		; C0 1C 7C
	brk $F4.b		; 00 F4
	bvs  -8.b		; 70 F8
	ora ($68.b,X)		; 01 68
	cmp $26C2EE.l		; CF EE C2 26
	bvs   8.b		; 70 08
	and $2C.b		; 25 2C
	brk $E6.b		; 00 E6
	rti		; 40

	sed		; F8
	tas		; 1B
	cpy #$DC40.w		; C0 40 DC
	rti		; 40

	sed		; F8
	ora #$A175.w		; 09 75 A1
	cpy #$40DC.w		; C0 DC 40
	sbc $0205.w,X		; FD 05 02
	bra -22.b		; 80 EA
	eor #$A022.w		; 49 22 A0
	sbc $E500.w,X		; FD 00 E5
	pha		; 48
	ply		; 7A
	sbc $00.b,X		; F5 00
	sbc [$98.b]		; E7 98
	eor ($E3.b,S),Y		; 53 E3
	bne  32.b		; D0 20
	jmp.w [$A830]		; DC 30 A8
	bvc -78.b		; 50 B2
	cpx #$C3C0.w		; E0 C0 C3
	cmp ($72.b,X)		; C1 72
	inc $C0B0.w,X		; FE B0 C0
	txa		; 8A
	eor $515C59.l,X		; 5F 59 5C 51
	ora $47.b,S		; 03 47
	and $A1803E.l,X		; 3F 3E 80 A1
	bra -84.b		; 80 AC
	inc $A680.w		; EE 80 A6
	cpx $F1D7.w		; EC D7 F1
	iny		; C8
	rti		; 40

	lda #$0078.w		; A9 78 00
	mvn $CC,$08		; 54 08 CC
	cpy #$8065.w		; C0 65 80
	lda ($56.b,X)		; A1 56
	bvc  96.b		; 50 60
	bra 105.b		; 80 69
	dey		; 88
	adc $F608AE.l		; 6F AE 08 F6
	dey		; 88
	jsr ($3CCA.w,X)		; FC CA 3C
	sed		; F8
	asl A		; 0A
	trb $76.b		; 14 76
	ldx $62C0.w,Y		; BE C0 62
	cpy #$8098.w		; C0 98 80
	bra  -4.b		; 80 FC
	ldy #$4240.w		; A0 40 42
	eor $C012.w,Y		; 59 12 C0
	bra  -2.b		; 80 FE
	ora $80.b,S		; 03 80
	bit $55.b		; 24 55
	ora $7E.b,X		; 15 7E
	lsr A		; 4A
	brk $8C.b		; 00 8C
	tsb $8E.b		; 04 8E
	rts		; 60

	cpx $44C0.w		; EC C0 44
	bra 122.b		; 80 7A
	jmp.w [$54AA]		; DC AA 54
	sty $0A.b,X		; 94 0A
	adc $AA6BE1.l		; 6F E1 6B AA
	bra 122.b		; 80 7A
	inc $BDC7.w,X		; FE C7 BD
	lda $61FF93.l		; AF 93 FF 61
	brk $7F.b		; 00 7F
	bra  91.b		; 80 5B
	sbc $2009F8.l,X		; FF F8 09 20
	ora ($80.b,X)		; 01 80
	tax		; AA
	cmp $2C.b,X		; D5 2C
	sta ($C0.b)		; 92 C0
	ldy $FC80.w,X		; BC 80 FC
	mvp $AF,$DD		; 44 DD AF
	adc [$71.b]		; 67 71
	ldy $CA17.w		; AC 17 CA
	sbc $98C0.w,X		; FD C0 98
	bpl -62.b		; 10 C2
	pha		; 48
	tya		; 98
	jmp.w [$5E51]		; DC 51 5E
	asl $840C.w,X		; 1E 0C 84
	brk $E4.b		; 00 E4
	rti		; 40

	cmp $F159C4.l,X		; DF C4 59 F1
	jsr ($AA00.w,X)		; FC 00 AA
	nop		; EA
	adc [$C0.b],Y		; 77 C0
	bpl  30.b		; 10 1E
	asl $C0F6.w,X		; 1E F6 C0
	clc		; 18
	ora [$40.b],Y		; 17 40
	sed		; F8
	and $0DC000.l,X		; 3F 00 C0 0D
	sbc ($E5.b),Y		; F1 E5
	rti		; 40

	tay		; A8
	asl $57FC.w		; 0E FC 57
	ora $00.b,X		; 15 00
	stx $FE7C.w		; 8E 7C FE
	jsr $00DB.w		; 20 DB 00
	inc $3E.b		; E6 3E
.ACCU 16
	rep #$20		; C2 20
	phx		; DA
	brk $EC.b		; 00 EC
	pei ($AA.b)		; D4 AA
	sta $1A04.w,Y		; 99 04 1A
	txa		; 8A
	inx		; E8
	phd		; 0B
	cpy #$0DF8.w		; C0 F8 0D
	bra  -2.b		; 80 FE
	inc A		; 1A
	tsb $31.b		; 04 31
	inc $0BF8.w		; EE F8 0B
	tax		; AA
	tax		; AA
	sbc ($F8.b)		; F2 F8
	phd		; 0B
	cmp ($EC.b,S),Y		; D3 EC
	cpy #$0042.w		; C0 42 00
	asl $D401.w		; 0E 01 D4
	rti		; 40

	stz $7C.b		; 64 7C
	rtl		; 6B

	brk $C9.b		; 00 C9
	ror A		; 6A
	brk $3E.b		; 00 3E
	bit $B8.b		; 24 B8
	ror $D0FF.w,X		; 7E FF D0
	phd		; 0B
	cpy $1871.w		; CC 71 18
	jsr ($49C0.w,X)		; FC C0 49
	sta $3EC0.w		; 8D C0 3E
	bra -127.b		; 80 81
	cpx $FC2A.w		; EC 2A FC
	rti		; 40

	phx		; DA
	sei		; 78
	phk		; 4B
	ror A		; 6A
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	bra -64.b		; 80 C0
	ldy $81EE.w,X		; BC EE 81
	cpx $BAC0.w		; EC C0 BA
	cpy #$33DC.w		; C0 DC 33
	eor ($41.b,X)		; 41 41
	cpy #$C099.w		; C0 99 C0
	bra  -4.b		; 80 FC
	cpy #$AEDC.w		; C0 DC AE
	cpy #$AB3E.w		; C0 3E AB
	tax		; AA
	cpy #$F2C6.w		; C0 C6 F2
	brk $A7.b		; 00 A7
	cpy #$00C5.w		; C0 C5 00
	eor $8C.b,S		; 43 8C
	cpy #$7C19.w		; C0 19 7C
	bra  19.b		; 80 13
	sbc $2A19F8.l,X		; FF F8 19 2A
	mvn $B9,$38		; 54 38 B9
	brk $C5.b		; 00 C5
	inc $09F8.w		; EE F8 09
	sbc ($F8.b),Y		; F1 F8
	phd		; 0B
	asl $8060.w		; 0E 60 80
	sta $EE.b,X		; 95 EE
	sed		; F8
	ora #$5412.w		; 09 12 54
	sbc ($00.b),Y		; F1 00
	ldy $0016.w,X		; BC 16 00
	txs		; 9A
	bra -42.b		; 80 D6
	stz $F8.b,X		; 74 F8
	phd		; 0B
	ora $BC00DA.l		; 0F DA 00 BC
	jsr ($3A00.w,X)		; FC 00 3A
	rti		; 40

	cpy #$C995.w		; C0 95 C9
	cpx $80F8.w		; EC F8 80
	lda ($7F.b,S),Y		; B3 7F
	lda $0038.w		; AD 38 00
	ora $08.b,X		; 15 08
	ora $020705.l		; 0F 05 07 02
	php		; 08
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cpx $8208.w		; EC 08 82
	tas		; 1B
	eor $55.b,X		; 55 55
	sta $FE.b		; 85 FE
	jmp $41D9.w		; 4C D9 41
	eor [$62.b],Y		; 57 62
	inc $025C.w,X		; FE 5C 02
	sta ($48.b,X)		; 81 48
	sta $5DFE.w		; 8D FE 5D
	rti		; 40

	ora #$55.b		; 09 55
	plb		; AB
	tsb $7CF4.w		; 0C F4 7C
	pea $D888.w		; F4 88 D8
	phd		; 0B
	stz $34.b,X		; 74 34
	cmp $80B9.w,Y		; D9 B9 80
	phb		; 8B
	sbc ($FC.b)		; F2 FC
	nop		; EA
	tay		; A8
	rtl		; 6B

	brk $22.b		; 00 22
	inc $CF.b,X		; F6 CF
	inc $FB.b		; E6 FB
	xba		; EB
	ora #$07.b		; 09 07
	brk $AA.b		; 00 AA
	cpy #$C2.b		; C0 C2
	adc $40EA2B.l,X		; 7F 2B EA 40
	cmp #$7F.b		; C9 7F
	inc $40A5.w,X		; FE A5 40
	adc $06B3.w		; 6D B3 06
	ora ($40.b),Y		; 11 40
	sbc $FE.b,S		; E3 FE
	lda $9A0C57.l		; AF 57 0C 9A
	sei		; 78
	ply		; 7A
	bra  64.b		; 80 40
	and ($40.b,S),Y		; 33 40
	cpx $0C.b		; E4 0C
	tsb $FC.b		; 04 FC
	ldx $C042.w,Y		; BE 42 C0
	dec A		; 3A
	eor ($B1.b,X)		; 41 B1
	brk $84.b		; 00 84
	lsr A		; 4A
	cop $8C.b		; 02 8C
	brk $80.b		; 00 80
	asl A		; 0A
	bit $AEFC.w,X		; 3C FC AE
	tay		; A8
	cpy #$3B.b		; C0 3B
	cmp $BCC2.w		; CD C2 BC
	rti		; 40

	cpy #$63.b		; C0 63
	cpy #$3E.b		; C0 3E
	and $6ACA00.l		; 2F 00 CA 6A
	eor ($00.b,X)		; 41 00
	mvp $FC,$C0		; 44 C0 FC
	brk $40.b		; 00 40
	ora #$40.b		; 09 40
	cld		; D8
	ora #$BC.b		; 09 BC
	cpy $29.b		; C4 29
	jmp ($C48D.w,X)		; 7C 8D C4
	eor ($AF.b,X)		; 41 AF
	bra -21.b		; 80 EB
	stx $0D.b		; 86 0D
	txs		; 9A
	lda $0F3187.l		; AF 87 31 0F
	ora $4ABD40.l,X		; 1F 40 BD 4A
	rol A		; 2A
	jmp ($CAD4.w,X)		; 7C D4 CA
	sta $2B.b		; 85 2B
	stp		; DB
	rti		; 40

	brk $42.b		; 00 42
	bra  -4.b		; 80 FC
	inc $A84A.w,X		; FE 4A A8
	ora $F880FC.l		; 0F FC 80 F8
	asl A		; 0A
	sbc $00F2.w		; ED F2 00
	cmp ($0F.b,X)		; C1 0F
	ora ($17.b,X)		; 01 17
	ora $0EAA00.l		; 0F 00 AA 0E
	cpy #$C6.b		; C0 C6
	rti		; 40

	sep #$C4		; E2 C4
	jmp ($FCC0.w)		; 6C C0 FC
	tax		; AA
	tax		; AA
	rti		; 40

	sep #$00		; E2 00
	dec $FC.b		; C6 FC
	ldy $EB08.w		; AC 08 EB
	adc ($FC.b,S),Y		; 73 FC
	inc $BAFC.w,X		; FE FC BA
	rti		; 40

	asl A		; 0A
	bra 116.b		; 80 74
	nop		; EA
	ora ($FF.b)		; 12 FF
	sed		; F8
	ora #$80.b		; 09 80
	stz $80.b,X		; 74 80
	sei		; 78
	ora $0BC0C0.l,X		; 1F C0 C0 0B
	ora $0002.w,X		; 1D 02 00
	pha		; 48
	ora $A9FE.w		; 0D FE A9
	ldx #$B8.b		; A2 B8
.INDEX 16
	rep #$D4		; C2 D4
	cpy #$40D2.w		; C0 D2 40
	jmp $34C1.w		; 4C C1 34
	ldy #$6155.w		; A0 55 61
	rti		; 40

	eor $4D8009.l		; 4F 09 80 4D
	bra  70.b		; 80 46
	tsx		; BA
	pea $E4C0.w		; F4 C0 E4
	.db $42, $D0		; 42 D0
	jsr $AACA.w		; 20 CA AA
	inc $FEF0.w,X		; FE F0 FE
	jmp.w [$FED4]		; DC D4 FE
	sed		; F8
	ora #$C0.b		; 09 C0
	asl $186A.w,X		; 1E 6A 18
	cpy #$C03C.w		; C0 3C C0
	clc		; 18
	phd		; 0B
	cpy #$FF66.w		; C0 66 FF
	sed		; F8
	and ($30.b,X)		; 21 30
	iny		; C8
	bmi  51.b		; 30 33
	cmp $AA.b,X		; D5 AA
	bra -126.b		; 80 82
	bvs   9.b		; 70 09
	adc $E2.b		; 65 E2
	sbc ($F8.b)		; F2 F8
	ora #$04.b		; 09 04
	rol $0061.w,X		; 3E 61 00
	.db $62, $C0, $3E		; 62 C0 3E
	dec $4005.w,X		; DE 05 40
	bra  13.b		; 80 0D
	rti		; 40

	rts		; 60

	ora $EE0094.l,X		; 1F 94 00 EE
	brk $C1.b		; 00 C1
	asl $40E0.w,X		; 1E E0 40
	rts		; 60

	ora #$EE.b		; 09 EE
	bvc  85.b		; 50 55
	inc $397C.w,X		; FE 7C 39
	rti		; 40

	sta $A440.w,X		; 9D 40 A4
	cpy $002A.w		; CC 2A 00
	inc $D842.w,X		; FE 42 D8
	ora #$F2.b		; 09 F2
	eor $A3D5F1.l,X		; 5F F1 D5 A3
	rts		; 60

	bvc -96.b		; 50 A0
	sei		; 78
	bcs -72.b		; B0 B8
	bpl -84.b		; 10 AC
	pha		; 48
	sbc $15.b		; E5 15
	lda $F132.w		; AD 32 F1
	tax		; AA
	sbc #$92.b		; E9 92
	cmp ($FD.b),Y		; D1 FD
	rti		; 40

	phy		; 5A
	eor $A4FD00.l,X		; 5F 00 FD A4
	tad		; 5B
	cpy #$4634.w		; C0 34 46
	brk $F8.b		; 00 F8
	ora #$00.b		; 09 00
	tsx		; BA
	cpx $8018.w		; EC 18 80
	pea $EEE8.w		; F4 E8 EE
	lda $45.b,X		; B5 45
	cli		; 58
	and $43FCCC.l,X		; 3F CC FC 43
	cmp ($79.b)		; D2 79
	ora $6408.w,Y		; 19 08 64
	cmp ($55.b)		; D2 55
	ora $40.b,X		; 15 40
	inc $D1B4.w,X		; FE B4 D1
	cmp $C08B.w,Y		; D9 8B C0
	jsr ($30C0.w,X)		; FC C0 30
	ora #$32.b		; 09 32
	rol $C0.b,X		; 36 C0
	and [$57.b],Y		; 37 57
	eor $FF.b,X		; 55 FF
	ora ($0E.b),Y		; 11 0E
	cpx $80F4.w		; EC F4 80
	lsr $8E.b		; 46 8E
	sei		; 78
	asl A		; 0A
	rti		; 40

	rtl		; 6B

	cmp ($EA.b,S),Y		; D3 EA
	stz $5582.w		; 9C 82 55
	pea $11FE.w		; F4 FE 11
	bra  68.b		; 80 44
	ora $F6.b,S		; 03 F6
	clv		; B8
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	cpy #$2EE4.w		; C0 E4 2E
	asl $75.b		; 06 75
	xce		; FB
	eor $C024.w,X		; 5D 24 C0
	bit $26C0.w,X		; 3C C0 26
	bit $02.b		; 24 02
	cpy #$D03C.w		; C0 3C D0
	dec $B1.b,X		; D6 B1
	plx		; FA
	tsb $FE.b		; 04 FE
	eor $5E0473.l,X		; 5F 73 04 5E
	bit $5C.b		; 24 5C
	plp		; 28
	sei		; 78
	cld		; D8
	dec A		; 3A
	phd		; 0B
	sbc ($24.b)		; F2 24
	inc $5528.w,X		; FE 28 55
	sty $B6.b		; 84 B6
	sep #$00		; E2 00
	asl $C800.w		; 0E 00 C8
	ora [$22.b],Y		; 17 22
	adc ($80.b),Y		; 71 80
	.db $82, $AF, $EA		; 82 AF EA
	pha		; 48
	bmi -112.b		; 30 90
	rts		; 60

	rts		; 60

	brk $D4.b		; 00 D4
	.db $82, $FC, $78		; 82 FC 78
	txs		; 9A
	lda ($D7.b),Y		; B1 D7
	brk $88.b		; 00 88
	ora $AA34.w,X		; 1D 34 AA
	nop		; EA
	php		; 08
	brk $88.b		; 00 88
	asl $F2E5.w		; 0E E5 F2
	brk $8D.b		; 00 8D
	stz $BCEC.w,X		; 9E EC BC
	ror A		; 6A
	rti		; 40

	rts		; 60

	and $40.b,X		; 35 40
	sty $2E.b		; 84 2E
	lda $F1.b,X		; B5 F1
	asl $803F.w,X		; 1E 3F 80
	eor [$BE.b]		; 47 BE
	tsa		; 3B
	ora ($80.b,X)		; 01 80
	lsr $2C.b		; 46 2C
	cmp ($F4.b,S),Y		; D3 F4
	php		; 08
	plb		; AB
	eor $66.b		; 45 66
	trb $80FE.w		; 1C FE 80
	adc ($8D.b,S),Y		; 73 8D
	sbc ($45.b),Y		; F1 45
	pea $41FC.w		; F4 FC 41
	cmp ($FF.b,X)		; C1 FF
	pld		; 2B
	bra -128.b		; 80 80
	phy		; 5A
	adc [$00.b]		; 67 00
	sbc $DA00.w,X		; FD 00 DA
	rti		; 40

	inc $0834.w,X		; FE 34 08
	inc $09F0.w,X		; FE F0 09
	rti		; 40

	bne -64.b		; D0 C0
	eor [$80.b],Y		; 57 80
	sbc ($2A.b)		; F2 2A
	sbc #$4060.w		; E9 60 40
	bit $B9C0.w,X		; 3C C0 B9
	eor $FED2.w,X		; 5D D2 FE
	ldx $C03B.w,Y		; BE 3B C0
	inc $3E.b,X		; F6 3E
	.db $82, $A0, $1C		; 82 A0 1C
	jmp ($4FC2.w,X)		; 7C C2 4F
	cpy $FE.b		; C4 FE
	txa		; 8A
	rti		; 40

	and $0A8A.w,Y		; 39 8A 0A
	and ($FD.b),Y		; 31 FD
	and ($E1.b)		; 32 E1
	rti		; 40

	eor #$40C0.w		; 49 C0 40
	sbc ($5F.b)		; F2 5F
	dey		; 88
	ora #$B6AC.w		; 09 AC B6
	cpy #$80F1.w		; C0 F1 80
	inx		; E8
	phd		; 0B
	cpy #$40EE.w		; C0 EE 40
	jsr $7C11.w		; 20 11 7C
	ror $12E9.w,X		; 7E E9 12
	sta ($AA.b)		; 92 AA
.ACCU 8
	sep #$ED		; E2 ED
	rti		; 40

	jsl $CC0039.l		; 22 39 00 CC
	rti		; 40

	inx		; E8
	ora $888200.l,X		; 1F 00 82 88
	stz $5AAA.w,X		; 9E AA 5A
	bra  20.b		; 80 14
	rol $0D50.w		; 2E 50 0D
	rti		; 40

	inx		; E8
	and $D8C0.w,X		; 3D C0 D8
	ora $FC80.w		; 0D 80 FC
	cpy #$0DD8.w		; C0 D8 0D
	rti		; 40

	cld		; D8
	phd		; 0B
	pea $D840.w		; F4 40 D8
	ora ($55.b)		; 12 55
	eor $00.b,X		; 55 00
	jmp $C0EA4C.l		; 5C 4C EA C0
	sec		; 38
	ora #$FE.b		; 09 FE
	sed		; F8
	ora #$00.b		; 09 00
	lsr $BA82.w,X		; 5E 82 BA
	cpy #$AE46.w		; C0 46 AE
	bvc  13.b		; 50 0D
	pld		; 2B
	jsr ($F880.w,X)		; FC 80 F8
	phd		; 0B
	eor $F880.w,X		; 5D 80 F8
	ora ($82.b)		; 12 82
	sbc ($84.b)		; F2 84
	sec		; 38
	bpl 112.b		; 10 70
	jsr $DAE0.w		; 20 E0 DA
	plx		; FA
	rti		; 40

	cpy #$E2FC.w		; C0 FC E2
	adc ($10.b)		; 72 10
	sbc $40E1.w,Y		; F9 E1 40
	cpy #$10F8.w		; C0 F8 10
	brk $D8.b		; 00 D8
	and ($3C.b,S),Y		; 33 3C
	brk $4E.b		; 00 4E
	sbc [$C2.b],Y		; F7 C2
	bit $385A.w,X		; 3C 5A 38
	adc [$40.b],Y		; 77 40
	cmp $014E.w,Y		; D9 4E 01
	lsr $C54A.w,X		; 5E 4A C5
	stz $050A.w,X		; 9E 0A 05
	sbc $B61A00.l,X		; FF 00 1A B6
	and #$FE.b		; 29 FE
	sta $1824EA.l		; 8F EA 24 18
	bit $5C18.w		; 2C 18 5C
	plp		; 28
	ora [$C1.b]		; 07 C1
	jmp ($F428.w,X)		; 7C 28 F4
	rti		; 40

	inc $CCD4.w,X		; FE D4 CC
	inc $7A7E.w,X		; FE 7E 7A
	eor ($D5.b,X)		; 41 D5
	rti		; 40

	php		; 08
	inc $E080.w,X		; FE 80 E0
	ora #$80.b		; 09 80
	cpx $E080.w		; EC 80 E0
	asl A		; 0A
	bra -21.b		; 80 EB
	rti		; 40

	rol A		; 2A
	lda $0C1292.l		; AF 92 12 0C
	trb $08.b		; 14 08
	jmp ($2940.w)		; 6C 40 29
	brk $EB.b		; 00 EB
	ora $3C.b,S		; 03 3C
	adc ($AA.b,X)		; 61 AA
	cmp $00.b,X		; D5 00
	xba		; EB
	rti		; 40

	inx		; E8
	ora $BA4180.l,X		; 1F 80 41 BA
	lda $C0C280.l		; AF 80 C2 C0
	lda $0A28.w		; AD 28 0A
	bra -62.b		; 80 C2
	rti		; 40

	inx		; E8
	and ($BA.b,X)		; 21 BA
	mvp $1C,$3E		; 44 3E 1C
	lda ($00.b,X)		; A1 00
	cpx $E034.w		; EC 34 E0
	brk $DC.b		; 00 DC
	sbc $51.b,S		; E3 51
	lda $7E.b,X		; B5 7E
	php		; 08
	sbc ($80.b),Y		; F1 80
	sed		; F8
	ora #$80.b		; 09 80
	cpx $80.b		; E4 80
	sed		; F8
	tsb $F122.w		; 0C 22 F1
	cpy $410A.w		; CC 0A 41
	cpy #$C039.w		; C0 39 C0
	cpx $00.b		; E4 00
	sbc ($EF.b)		; F2 EF
	cpy #$01E9.w		; C0 E9 01
	inc $55.b,X		; F6 55
	eor $00.b,X		; 55 00
	lda $C0.b,S		; A3 C0
	sec		; 38
	ora #$00.b		; 09 00
	cpy $C0.b		; C4 C0
	clv		; B8
	tsb $43C0.w		; 0C C0 43
	rti		; 40

	dec $00.b		; C6 00
	cpy $40.b		; C4 40
	cpy #$FC0C.w		; C0 0C FC
	lda $77F5.w		; AD F5 77
	ora #$67.b		; 09 67
	tas		; 1B
	eor [$3C.b]		; 47 3C
	bra  -8.b		; 80 F8
	ora #$39.b		; 09 39
	inc $FA13.w,X		; FE 13 FA
	phb		; 8B
	bra  -8.b		; 80 F8
	ora #$C2.b		; 09 C2
	sbc #$40.b		; E9 40
	cmp ($F0.b,X)		; C1 F0
	brk $48.b		; 00 48
	bmi  60.b		; 30 3C
	clc		; 18
	cpy #$AAE4.w		; C0 E4 AA
	rol A		; 2A
	wai		; CB
	and $B1.b,X		; 35 B1
	plx		; FA
	ora ($ED.b)		; 12 ED
	txs		; 9A
	brk $D8.b		; 00 D8
	ora $0BA890.l,X		; 1F 90 A8 0B
	brk $A0.b		; 00 A0
	ora $E9DC.w		; 0D DC E9
	lsr $F171.w,X		; 5E 71 F1
	adc $08.b,X		; 75 08
	adc $00.b		; 65 00
	sed		; F8
	tsb $F040.w		; 0C 40 F0
	tsb $DC80.w		; 0C 80 DC
	bra -88.b		; 80 A8
	ply		; 7A
	inc $0094.w,X		; FE 94 00
	sed		; F8
	asl A		; 0A
	tsb $0029.w		; 0C 29 00
	sed		; F8
	tsb $F2A0.w		; 0C A0 F2
	eor $5D3C.w		; 4D 3C 5D
	eor $E9C08F.l,X		; 5F 8F C0 E9
	ror $21.b		; 66 21
	lsr $4001.w		; 4E 01 40
	cpx $BA32.w		; EC 32 BA
	phd		; 0B
	brk $19.b		; 00 19
	phx		; DA
	pld		; 2B
	bit $80.b,X		; 34 80
	nop		; EA
	rep #$C4		; C2 C4
	stx $C1C0.w		; 8E C0 C1
	lsr A		; 4A
	bra -50.b		; 80 CE
	rti		; 40

	sbc $25C0.w		; ED C0 25
	plx		; FA
	cmp $FE.b,X		; D5 FE
	rti		; 40

	cpx $1B.b		; E4 1B
	php		; 08
	bit $10.b,X		; 34 10
	bit $94.b		; 24 94
	txy		; 9B
	brk $60.b		; 00 60
	phd		; 0B
	cpy #$09D8.w		; C0 D8 09
	php		; 08
	.db $82, $C8, $02		; 82 C8 02
	inc $C6C0.w,X		; FE C0 C6
	inc $B5AA.w		; EE AA B5
	sbc $E00A.w,X		; FD 0A E0
	and $C3C0.w,Y		; 39 C0 C3
	cpy #$1FD8.w		; C0 D8 1F
	brk $E2.b		; 00 E2
	cpy $E9E0.w		; CC E0 E9
	bra -102.b		; 80 9A
	cpx $A0.b		; E4 A0
	lsr $C0.b,X		; 56 C0
	tyx		; BB
	inc $EAE0.w		; EE E0 EA
	bra -98.b		; 80 9E
	cpy #$43F8.w		; C0 F8 43
	and $E000.w,X		; 3D 00 E0
	inc A		; 1A
	cpy #$55A4.w		; C0 A4 55
	lda $E000.w		; AD 00 E0
	phd		; 0B
.INDEX 16
	rep #$9E		; C2 9E
	brk $E0.b		; 00 E0
	ora ($40.b),Y		; 11 40
	cpx #$C013.w		; E0 13 C0
	bcs  31.b		; B0 1F
	cpy #$26FE.w		; C0 FE 26
	rti		; 40

	adc $6E550A.l,X		; 7F 0A 55 6E
	cmp $7D40.w		; CD 40 7D
	bra -12.b		; 80 F4
	inc $C01A.w,X		; FE 1A C0
	sbc $9B0DBD.l,X		; FF BD 0D 9B
	sbc ($B5.b)		; F2 B5
	ora $C0.b,X		; 15 C0
	sed		; F8
	asl A		; 0A
	bra  -8.b		; 80 F8
	ora [$C0.b],Y		; 17 C0
	inc $0A0A.w,X		; FE 0A 0A
	adc $00EE.w,Y		; 79 EE 00
	sbc $40.b,S		; E3 40
	inc $AE.b,X		; F6 AE
	sbc $0440FE.l,X		; FF FE 40 04
	adc $80.b,X		; 75 80
	sbc $15E8C0.l		; EF C0 E8 15
	inc $AAC0.w		; EE C0 AA
	tsb $BA.b		; 04 BA
	tsb $7E.b		; 04 7E
	and $4E04DC.l		; 2F DC 04 4E
	bit $3A.b,X		; 34 3A
	bpl -64.b		; 10 C0
	phd		; 0B
	dex		; CA
	mvp $64,$00		; 44 00 64
	.db $42, $C1		; 42 C1
	rtl		; 6B

	eor $34.b,X		; 55 34
	tsb $14.b		; 04 14
	brk $82.b		; 00 82
	rti		; 40

	cpx $222C.w		; EC 2C 22
	sbc ($C0.b),Y		; F1 C0
	cpy $C6.b		; C4 C6
	jsr ($F222.w,X)		; FC 22 F2
	adc ($D5.b,X)		; 61 D5
	cpy #$0DC0.w		; C0 C0 0D
	dec $30D8.w,X		; DE D8 30
	cpy #$0CC0.w		; C0 C0 0C
	and ($2A.b,X)		; 21 2A
	cpy #$0CD8.w		; C0 D8 0C
	rti		; 40

	cpx #$5515.w		; E0 15 55
	plb		; AB
	cld		; D8
	cpy #$181C.w		; C0 1C 18
	ora $C900.w		; 0D 00 C9
	sbc $C00CF8.l,X		; FF F8 0C C0
	sed		; F8
	ora $C1C0C8.l,X		; 1F C8 C0 C1
	cpy #$AA9A.w		; C0 9A AA
	ply		; 7A
	cpy #$80CA.w		; C0 CA 80
	rep #$80		; C2 80
	cmp $9EC0.w,Y		; D9 C0 9E
	bra -61.b		; 80 C3
	brk $E0.b		; 00 E0
	and $09D840.l,X		; 3F 40 D8 09
	and $1B18.w,Y		; 39 18 1B
	stz $55.b,X		; 74 55
	ldx $D840.w,Y		; BE 40 D8
	ora #$18.b		; 09 18
	asl $01.b		; 06 01
	lda ($C0.b)		; B2 C0
	bcs   9.b		; B0 09
	brk $F9.b		; 00 F9
	cpy #$0DB0.w		; C0 B0 0D
	rti		; 40

	eor [$76.b],Y		; 57 76
	sbc ($C0.b),Y		; F1 C0
	ldy $060E.w,X		; BC 0E 06
	ldy $80A2.w,X		; BC A2 80
	ldy $D2.b,X		; B4 D2
	bit $74FE.w		; 2C FE 74
	nop		; EA
	lda ($74.b),Y		; B1 74
	bit $40B2.w		; 2C B2 40
	.db $82, $A8, $88		; 82 A8 88
	inc $A200.w,X		; FE 00 A2
	lda #$25.b		; A9 25
	sta $41.b		; 85 41
	inc $47F0.w,X		; FE F0 47
	sbc ($80.b),Y		; F1 80
	adc $18.b		; 65 18
	eor $38.b		; 45 38
	lsr $3C3C.w		; 4E 3C 3C
	bra -19.b		; 80 ED
	inc $7240.w,X		; FE 40 72
	.db $82, $FC, $3C		; 82 FC 3C
	stz $69.b,X		; 74 69
	clc		; 18
	ora [$40.b]		; 07 40
	adc ($EE.b)		; 72 EE
	rti		; 40

	phx		; DA
	sty $72.b		; 84 72
	sbc $A40CF0.l,X		; FF F0 0C A4
	clc		; 18
	ldy $BC18.w		; AC 18 BC
	clc		; 18
	bit $10.b,X		; 34 10
	cmp $40.b,S		; C3 40
	tsb $80.b		; 04 80
	tyx		; BB
	asl $0024.w,X		; 1E 24 00
	ldy $F380.w		; AC 80 F3
	clc		; 18
	php		; 08
	.db $42, $83		; 42 83
	cpy #$72EC.w		; C0 EC 72
	bmi  39.b		; 30 27
	trb $AA.b		; 14 AA
	lsr $80.b,X		; 56 80
	sta [$25.b]		; 87 25
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	ora $C0AB40.l		; 0F 40 AB C0
	cpx $44AB.w		; EC AB 44
	rol $F0CA.w,X		; 3E CA F0
	jsr $8C80.w		; 20 80 8C
	.db $82, $EB, $3E		; 82 EB 3E
	wai		; CB
	sbc ($8B.b),Y		; F1 8B
	lda ($C0.b)		; B2 C0
	dec A		; 3A
	clc		; 18
	mvp $4C,$51		; 44 51 4C
	cpy #$CC1C.w		; C0 1C CC
	.db $82, $92, $72		; 82 92 72
	ora $C800.w,X		; 1D 00 C8
	ora #$40C2.w		; 09 C2 40
	stx $F8C2.w		; 8E C2 F8
	ora #$4AF1.w		; 09 F1 4A
	nop		; EA
	bra -60.b		; 80 C4
	stz $A2.b		; 64 A2
	bpl -20.b		; 10 EC
	inc $5230.w		; EE 30 52
	and ($ED.b,X)		; 21 ED
	bra -59.b		; 80 C5
	ldy #$5550.w		; A0 50 55
	rti		; 40

	inc $3E70.w,X		; FE 70 3E
	adc ($80.b,X)		; 61 80
	dec $6C.b		; C6 6C
	sbc ($C0.b)		; F2 C0
	stz $E300.w		; 9C 00 E3
	sty $AA.b		; 84 AA
	inc $FE.b		; E6 FE
	bvc   0.b		; 50 00
	cpx #$980A.w		; E0 0A 98
	stz $DF80.w,X		; 9E 80 DF
	adc [$15.b]		; 67 15
	bra -31.b		; 80 E1
	bit $00.b,X		; 34 00
	inx		; E8
	cpy #$DA80.w		; C0 80 DA
	bra -28.b		; 80 E4
	brk $62.b		; 00 62
	ldy $F412.w		; AC 12 F4
	stz $D2.b		; 64 D2
	asl $88.b,X		; 16 88
	sbc ($00.b,S),Y		; F3 00
	lsr $F259.w,X		; 5E 59 F2
	ror $41C1.w,X		; 7E C1 41
	sbc ($20.b),Y		; F1 20
	stz $18.b		; 64 18
	cli		; 58
	ldy $C0.b		; A4 C0
	adc ($33.b),Y		; 71 33
	ora ($40.b),Y		; 11 40
	dec $18.b		; C6 18
	ldx $7E.b		; A6 7E
	sbc ($00.b),Y		; F1 00
	bra -10.b		; 80 F6
	cpx $FE.b		; E4 FE
	jsr $5225.w		; 20 25 52
	jmp ($0A62.w)		; 6C 62 0A
	beq 120.b		; F0 78
	asl A		; 0A
	stz $00F1.w,X		; 9E F1 00
	cpx $00.b		; E4 00
.INDEX 16
	rep #$55		; C2 55
	eor ($FE.b,X)		; 41 FE
	tsx		; BA
	and $BC09A8.l,X		; 3F A8 09 BC
	jsr ($FEC0.w,X)		; FC C0 FE
	rti		; 40

	jsr ($B4FE.w,X)		; FC FE B4
	pla		; 68
	ora $B5D5.w		; 0D D5 B5
	lda ($68.b)		; B2 68
	ora $13F8FF.l		; 0F FF F8 13
	brk $F8.b		; 00 F8
	rol $40.b		; 26 40
	lda ($34.b),Y		; B1 34
	bpl   0.b		; 10 00
	sed		; F8
	ora #$E2FD.w		; 09 FD E2
	bpl  22.b		; 10 16
	rti		; 40

	brk $F9.b		; 00 F9
	brk $EA.b		; 00 EA
	ora $FEBD60.l		; 0F 60 BD FE
	sbc ($0B.b,X)		; E1 0B
	nop		; EA
	lda #$60BF.w		; A9 BF 60
	inc $D3.b,X		; F6 D3
	cpx #$6140.w		; E0 40 61
	sec		; 38
	brk $E4.b		; 00 E4
	clc		; 18
	lsr $C63C.w		; 4E 3C C6
	sta $20.b,S		; 83 20
	jmp $8980.w		; 4C 80 89
	rts		; 60

	lda $3C0078.l		; AF 78 00 3C
	wai		; CB
	rol A		; 2A
	xba		; EB
	brk $63.b		; 00 63
	rti		; 40

	eor [$8F.b]		; 47 8F
	sty $40.b		; 84 40
	rti		; 40

	asl A		; 0A
	sbc [$40.b],Y		; F7 40
	dey		; 88
	ora $2FE2E6.l,X		; 1F E6 E2 2F
	phd		; 0B
	rol $2E10.w		; 2E 10 2E
	asl $FC3E.w,X		; 1E 3E FC
	dec $A7.b,X		; D6 A7
	stz $011E.w		; 9C 1E 01
	sep #$8E		; E2 8E
	sei		; 78
	sta ($2C.b),Y		; 91 2C
	eor $A2.b,X		; 55 A2
	pla		; 68
	bpl  -4.b		; 10 FC
	rti		; 40

	cmp $C0EB.w		; CD EB C0
	phd		; 0B
	cmp $CD407E.l,X		; DF 7E 40 CD
	adc ($0F.b),Y		; 71 0F
	adc $ABF3C0.l,X		; 7F C0 F3 AB
	adc [$FE.b],Y		; 77 FE
	adc $BC8020.l,X		; 7F 20 80 BC
	ldy $88.b		; A4 88
	ora #$BA80.w		; 09 80 BA
	beq -64.b		; F0 C0
	cld		; D8
	brk $E3.b		; 00 E3
	bit $5108.w,X		; 3C 08 51
	ora ($80.b),Y		; 11 80
	jmp.w [$038D]		; DC 8D 03
	pea $8238.w		; F4 38 82
	sbc ($16.b,S),Y		; F3 16
	tax		; AA
	mvp $02,$07		; 44 07 02
	jsr $DEEC.w		; 20 EC DE
	jmp ($D9C0.w,X)		; 7C C0 D9
	and ($92.b)		; 32 92
	asl $84E1.w,X		; 1E E1 84
	inc $8417.w		; EE 17 84
	cpy #$A080.w		; C0 80 A0
	.db $42, $A0		; 42 A0
	cli		; 58
	jsr $5555.w		; 20 55 55
	stz $10.b,X		; 74 10
	bcs -46.b		; B0 D2
	tsb $83F1.w		; 0C F1 83
	sbc $E2C0.w		; ED C0 E2
	cpy #$0054.w		; C0 54 00
	inc $EA46.w,X		; FE 46 EA
	eor ($59.b,X)		; 41 59
	brk $F8.b		; 00 F8
	ora $D2C2.w		; 0D C2 D2
	tay		; A8
	phd		; 0B
	phk		; 4B
	rti		; 40

	tsb $75FF.w		; 0C FF 75
	.db $62, $55, $55		; 62 55 55
	rti		; 40

	sed		; F8
	phd		; 0B
	cpx $80.b		; E4 80
	phd		; 0B
	rti		; 40

	rti		; 40

	ora #$C000.w		; 09 00 C0
	ora $F800.w,Y		; 19 00 F8
	ora #$F4C0.w		; 09 C0 F4
	ldx $0DF8.w,Y		; BE F8 0D
	brk $FA.b		; 00 FA
	jsl $9C406B.l		; 22 6B 40 9C
	lsr $0CEA.w,X		; 5E EA 0C
	tsx		; BA
	bit $E4C5.w,X		; 3C C5 E4
	bpl -67.b		; 10 BD
	tax		; AA
	brk $C4.b		; 00 C4
	rti		; 40

	cpy $3C.b		; C4 3C
	bpl  40.b		; 10 28
	sty $F1.b,X		; 94 F1
	bra -20.b		; 80 EC
	inc $65EA.w,X		; FE EA 65
	txa		; 8A
	inc A		; 1A
	asl $BE.b,X		; 16 BE
	jsr ($61DA.w,X)		; FC DA 61
	rti		; 40

	bit #$0478.w		; 89 78 04
	bpl  52.b		; 10 34
	bra -51.b		; 80 CD
	tax		; AA
	sta ($EE.b,S),Y		; 93 EE
	rts		; 60

	tda		; 7B
	sbc ($C0.b,S),Y		; F3 C0
	ldy #$C409.w		; A0 09 C4
	txa		; 8A
	cop $01.b		; 02 01
	inc $5FD5.w,X		; FE D5 5F
	cpy #$05FC.w		; C0 FC 05
	bmi  64.b		; 30 40
	tsb $F802.w		; 0C 02 F8
	ora $5CCC.w,Y		; 19 CC 5C
	trb $3F0C.w		; 1C 0C 3F
	clc		; 18
	sei		; 78
	bmi   0.b		; 30 00
	inx		; E8
	ora #$0069.w		; 09 69 00
	rti		; 40

	inx		; E8
	ora $305880.l		; 0F 80 58 30
	bra  -2.b		; 80 FE
	adc $55.b		; 65 55
	dex		; CA
	bit $C1.b		; 24 C1
	ldy $7E.b,X		; B4 7E
	brk $8D.b		; 00 8D
	bra -70.b		; 80 BA
	rol $90AA.w		; 2E AA 90
	.db $42, $59		; 42 59
	eor $80.b,X		; 55 80
	ldx $00E0.w,Y		; BE E0 00
	inx		; E8
	tsb $86C0.w		; 0C C0 86
	brk $EE.b		; 00 EE
	cpy #$7E84.w		; C0 84 7E
	lsr $2555.w,X		; 5E 55 25
	stx $6A.b		; 86 6A
	bra -36.b		; 80 DC
	inc $F8FC.w		; EE FC F8
	nop		; EA
	cmp $2A04F2.l,X		; DF F2 04 2A
	inc $9A85.w,X		; FE 85 9A
	ldy #$80F2.w		; A0 F2 80
	jmp.w [$A0EE]		; DC EE A0
	stz $0AF0.w,X		; 9E F0 0A
	bra  98.b		; 80 62
	and $64952B.l,X		; 3F 2B 95 64
	pld		; 2B
	txa		; 8A
	bit #$F840.w		; 89 40 F8
	ora #$1380.w		; 09 80 13
	bra  24.b		; 80 18
	asl A		; 0A
	eor $25.b,X		; 55 25
	ror $80.b,X		; 76 80
	clc		; 18
	tsb $5422.w		; 0C 22 54
	rti		; 40

	sed		; F8
	ora #$F8C0.w		; 09 C0 F8
	ora #$FE40.w		; 09 40 FE
	cpy #$49AF.w		; C0 AF 49
	brk $98.b		; 00 98
	ora #$00EA.w		; 09 EA 00
	jsr ($C3F3.w,X)		; FC F3 C3
	brk $9F.b		; 00 9F
	tsb $F1.b		; 04 F1
	brk $1E.b		; 00 1E
	ora $00.b		; 05 00
	ldx $0B90.w		; AE 90 0B
	iny		; C8
	inx		; E8
	ora $C080.w		; 0D 80 C0
	rts		; 60

	ora $05.b		; 05 05
	stz $80F2.w,X		; 9E F2 80
	jmp.w [$BBEE]		; DC EE BB
	dex		; CA
	lda $F1CA.w,X		; BD CA F1
	eor $EC8049.l,X		; 5F 49 80 EC
	plp		; 28
	bpl  60.b		; 10 3C
	bpl  64.b		; 10 40
	cpy $2A.b		; C4 2A
	jsr ($4084.w,X)		; FC 84 40
	cpy $61.b		; C4 61
	eor $40.b,X		; 55 40
	cpy $68E0.w		; CC E0 68
	bpl -128.b		; 10 80
	sta $02.b		; 85 02
	bra   9.b		; 80 09
	bra -125.b		; 80 83
	brk $E0.b		; 00 E0
	ora #$0541.w		; 09 41 05
	bpl  58.b		; 10 3A
	jsr ($E000.w,X)		; FC 00 E0
	tsb $C9C1.w		; 0C C1 C9
	asl $F0.b		; 06 F0
	ora #$3514.w		; 09 14 35
	jsr ($CB40.w,X)		; FC 40 CB
	and $220D58.l,X		; 3F 58 0D 22
	sbc ($19.b,X)		; E1 19
	cmp $1F01.w,Y		; D9 01 1F
	asl $3E.b		; 06 3E
	clc		; 18
	ora $6A.b,X		; 15 6A
	adc $EA0030.l,X		; 7F 30 00 EA
	adc $06C7F2.l		; 6F F2 C7 06
	sbc ($BB.b,X)		; E1 BB
	brk $EA.b		; 00 EA
	pha		; 48
	eor $61.b,X		; 55 61
	cmp ($39.b,S),Y		; D3 39
	ora [$84.b],Y		; 17 84
	brk $ED.b		; 00 ED
	php		; 08
	bra  10.b		; 80 0A
	brk $EA.b		; 00 EA
	sty $11.b		; 84 11
	brk $40.b		; 00 40
	sta $62.b,X		; 95 62
	rti		; 40

	bra -67.b		; 80 BD
	stx $1DEA.w		; 8E EA 1D
	eor $55.b		; 45 55
	sbc ($40.b,X)		; E1 40
	cpy #$8086.w		; C0 86 80
	ldx $87C0.w,Y		; BE C0 87
	bra -67.b		; 80 BD
	bra 127.b		; 80 7F
	brk $D5.b		; 00 D5
	lsr $47.b,X		; 56 47
	and $0978C8.l,X		; 3F C8 78 09
	asl A		; 0A
	nop		; EA
	ldx $30.b,Y		; B6 30
	phd		; 0B
	bvc -42.b		; 50 D6
	and ($32.b),Y		; 31 32
	eor [$99.b],Y		; 57 99
	stz $05E4.w,X		; 9E E4 05
	eor $E1F110.l,X		; 5F 10 F1 E1
	sbc ($F1.b)		; F2 F1
	ora ($F7.b,X)		; 01 F7
	and ($0C.b,S),Y		; 33 0C
	bit $B410.w		; 2C 10 B4
	sbc ($6B.b)		; F2 6B
	cmp $C0.b,X		; D5 C0
	inc $1C.b,X		; F6 1C
	lda $C0ED.w		; AD ED C0
	inc $C8.b,X		; F6 C8
	sbc ($99.b)		; F2 99
	bra  -8.b		; 80 F8
	phd		; 0B
	sta $ED.b		; 85 ED
	bra  -1.b		; 80 FF
	lda [$B6.b],Y		; B7 B6
	tsa		; 3B
	tsb $24.b		; 04 24
	clc		; 18
	rti		; 40

	sed		; F8
	phd		; 0B
	trb $1F.b		; 14 1F
	cmp $40.b		; C5 40
	inc $40EC.w,X		; FE EC 40
	adc $AA0A.w,Y		; 79 0A AA
	.db $82, $60, $D9		; 82 60 D9
	rti		; 40

	sta [$05.b]		; 87 05
	sbc ($7C.b)		; F2 7C
	sty $40.b,X		; 94 40
	sta $C2.b		; 85 C2
	bit $FE.b,X		; 34 FE
	asl A		; 0A
	tax		; AA
	rti		; 40

	tsx		; BA
	eor ($CF.b,X)		; 41 CF
	xba		; EB
	inc $4CDD.w,X		; FE DD 4C
	cmp #$CA58.w		; C9 58 CA
	stx $E6.b		; 86 E6
	ror A		; 6A
	bvc  76.b		; 50 4C
	wai		; CB
	adc $0CE0.w,Y		; 79 E0 0C
	bra -20.b		; 80 EC
	ldy $AA.b		; A4 AA
	ora $E880F6.l,X		; 1F F6 80 E8
	asl A		; 0A
	cmp $F5B1.w,X		; DD B1 F5
	txs		; 9A
	ldx $EB.b,Y		; B6 EB
	bra -20.b		; 80 EC
	rti		; 40

	tax		; AA
	pea $F810.w		; F4 10 F8
	bra -17.b		; 80 EF
	xce		; FB
	xba		; EB
	php		; 08
	rts		; 60

	plb		; AB
	sbc ($8A.b),Y		; F1 8A
	trb $4004.w		; 1C 04 40
	inc $58.b		; E6 58
	rti		; 40

	cpx #$BE0E.w		; E0 0E BE
	cmp ($95.b)		; D2 95
	tax		; AA
	bra -32.b		; 80 E0
	phd		; 0B
	bit $80.b		; 24 80
	cpx #$BE0F.w		; E0 0F BE
	cmp ($C0.b),Y		; D1 C0
	tsa		; 3B
	stz $B9.b		; 64 B9
	brk $80.b		; 00 80
	phd		; 0B
	.db $82, $AA, $C0		; 82 AA C0
	tya		; 98
	phd		; 0B
	rti		; 40

	ldy $C0.b		; A4 C0
	bra -54.b		; 80 CA
	cpy #$409C.w		; C0 9C 40
	ldx #$B941.w		; A2 41 B9
	ldy #$80AA.w		; A0 AA 80
	rts		; 60

	asl A		; 0A
	tsb $80.b		; 04 80
	phy		; 5A
	bra -34.b		; 80 DE
	and ($E2.b)		; 32 E2
	ror $92DE.w,X		; 7E DE 92
	adc $A0.b		; 65 A0
	ldy $84.b		; A4 84
	cmp #$80FE.w		; C9 FE 80
	ldx $C881.w,Y		; BE 81 C8
	ora #$80F1.w		; 09 F1 80
	jsr ($E8AA.w,X)		; FC AA E8
	brk $78.b		; 00 78
	ora $F880.w		; 0D 80 F8
	ora ($C0.b),Y		; 11 C0
	stz $F880.w		; 9C 80 F8
	ora #$1520.w		; 09 20 15
	bra   0.b		; 80 00
	inc $5768.w,X		; FE 68 57
	lda $4820.w		; AD 20 48
	brk $31.b		; 00 31
	brk $F8.b		; 00 F8
	asl A		; 0A
	nop		; EA
	nop		; EA
	cmp ($FC.b)		; D2 FC
	cpy #$09F8.w		; C0 F8 09
	inc $80.b		; E6 80
	tya		; 98
	ora $8F57F6.l		; 0F F6 57 8F
	cmp $D880.w,X		; DD 80 D8
	tas		; 1B
	bvs   0.b		; 70 00
	tas		; 1B
	tya		; 98
	bvs -72.b		; 70 B8
	bvs  -8.b		; 70 F8
	bvs -64.b		; 70 C0
	trb $FF.b		; 14 FF
	jsl $485541.l		; 22 41 55 48
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cpy #$12.b		; C0 12
	brk $98.b		; 00 98
	ora #$C0.b		; 09 C0
	asl $9800.w,X		; 1E 00 98
	ora #$36.b		; 09 36
	nop		; EA
	lda ($42.b,X)		; A1 42
	bra -40.b		; 80 D8
	ora #$88.b		; 09 88
	beq  64.b		; F0 40
	sbc ($80.b,S),Y		; F3 80
	cld		; D8
	ora #$F1.b		; 09 F1
	ora ($55.b,S),Y		; 13 55
	eor ($64.b),Y		; 51 64
	lda ($80.b,X)		; A1 80
	inc $E240.w		; EE 40 E2
	lda #$EA.b		; A9 EA
	bra -17.b		; 80 EF
	lda ($80.b)		; B2 80
	inx		; E8
	tsb $07C5.w		; 0C C5 07
	bra 105.b		; 80 69
	bra -24.b		; 80 E8
	tsb $37F1.w		; 0C F1 37
	php		; 08
	tas		; 1B
	ora [$D9.b]		; 07 D9
	clv		; B8
	lsr A		; 4A
	asl $38.b,X		; 16 38
	bpl  63.b		; 10 3F
	jsr ($CAA9.w,X)		; FC A9 CA
	eor ($BD.b)		; 52 BD
	ldy $BD7E.w		; AC 7E BD
	ldx $4A37.w,Y		; BE 37 4A
	jmp.w [$BC00]		; DC 00 BC
	bra -44.b		; 80 D4
	brk $EE.b		; 00 EE
	rti		; 40

	nop		; EA
	plp		; 28
	bra  72.b		; 80 48
	plp		; 28
	mvn $EF,$00		; 54 00 EF
	sbc ($C0.b),Y		; F1 C0
	ldx $80.b		; A6 80
	tsa		; 3B
	cpy #$A0.b		; C0 A0
	tsb $F220.w		; 0C 20 F2
	sta [$55.b]		; 87 55
	rti		; 40

	pha		; 48
	ora #$26.b		; 09 26
	trb $DCC0.w		; 1C C0 DC
	sec		; 38
	brk $EB.b		; 00 EB
	cpy #$9C.b		; C0 9C
	ror $1464.w,X		; 7E 64 14
	pha		; 48
	sbc ($80.b),Y		; F1 80
	cld		; D8
	ora #$93.b		; 09 93
	bra -128.b		; 80 80
	cld		; D8
	tsb $2157.w		; 0C 57 21
	cpy #$40.b		; C0 40
	tsb $40B8.w		; 0C B8 40
	cpy #$DA.b		; C0 DA
	bra -72.b		; 80 B8
	phd		; 0B
	cpy #$DA.b		; C0 DA
	ldy $1D.b		; A4 1D
	ldx $BC1A.w,Y		; BE 1A BC
	asl $3F02.w		; 0E 02 3F
	tsb $7C40.w		; 0C 40 7C
	ror $84F2.w,X		; 7E F2 84
	sbc ($01.b),Y		; F1 01
	mvn $21,$85		; 54 85 21
	rti		; 40

	jmp ($3E00.w,X)		; 7C 00 3E
	rti		; 40

	ror $3800.w,X		; 7E 00 38
	asl A		; 0A
	rti		; 40

	tda		; 7B
	cpy $42.b		; C4 42
	rts		; 60

	and ($C0.b),Y		; 31 C0
	lda #$FE.b		; A9 FE
	cli		; 58
	cpy $40.b		; C4 40
	sta $CE.b,X		; 95 CE
	stx $46EA.w		; 8E EA 46
	cmp $EB1E.w,Y		; D9 1E EB
	rti		; 40

	cpy $DAC0.w		; CC C0 DA
	rtl		; 6B

	cmp ($40.b),Y		; D1 40
	rol $401C.w		; 2E 1C 40
	jsr ($7980.w,X)		; FC 80 79
	bit $1F5B.w,X		; 3C 5B 1F
	rti		; 40

	bra -40.b		; 80 D8
	ora $C80BE3.l,X		; 1F E3 0B C8
	rti		; 40

	stz $EC5C.w		; 9C 5C EC
	bpl -56.b		; 10 C8
	bmi  -2.b		; 30 FE
	nop		; EA
	.db $82, $92, $85		; 82 92 85
	bra  19.b		; 80 13
	dey		; 88
	ora ($F4.b,X)		; 01 F4
	cpy #$31.b		; C0 31
	pei ($AB.b)		; D4 AB
	sta $BE.b,S		; 83 BE
	tax		; AA
	cli		; 58
	jsr $F480.w		; 20 80 F4
	dec $C0.b		; C6 C0
	ora #$80.b		; 09 80
	pea $C0C8.w		; F4 C8 C0
	cpy #$5A.b		; C0 5A
	bvc -100.b		; 50 9C
	sbc ($00.b)		; F2 00
	lsr $9900.w,X		; 5E 00 99
	sei		; 78
	sta $00FAF3.l,X		; 9F F3 FA 00
	tad		; 5B
	brk $E8.b		; 00 E8
	phd		; 0B
	and $5F.b		; 25 5F
	cpy #$E8.b		; C0 E8
	ora #$00.b		; 09 00
	inc $80A2.w		; EE A2 80
	dec $081A.w		; CE 1A 08
	cpx $0000.w		; EC 00 00
	cpx #$09.b		; E0 09
	and $55.b		; 25 55
	sbc $DB69.w,X		; FD 69 DB
	lda $80F1.w,Y		; B9 F1 80
	nop		; EA
	lsr $10FE.w		; 4E FE 10
	cpy $80.b		; C4 80
	iny		; C8
	ora $5561.w		; 0D 61 55
	cop $E2.b		; 02 E2
	.db $82, $5C, $38		; 82 5C 38
	rti		; 40

	nop		; EA
	bra -20.b		; 80 EC
	inc $31.b,X		; F6 31
	tda		; 7B
	ora $8096BB.l,X		; 1F BB 96 80
	jsr ($A439.w,X)		; FC 39 A4
	sbc $2D.b,S		; E3 2D
	cop $CC.b		; 02 CC
	bit $6400.w		; 2C 00 64
	trb $997E.w		; 1C 7E 99
	pla		; 68
	cmp $F1.b,X		; D5 F1
	bra -116.b		; 80 8C
	sei		; 78
	jsr $0092.w		; 20 92 00
	ora #$80.b		; 09 80
	sbc $FC3D.w,X		; FD 3D FC
	tax		; AA
	stx $70.b,Y		; 96 70
	bra -33.b		; 80 DF
	rti		; 40

	cpx #$3B.b		; E0 3B
	rti		; 40

	cli		; 58
	and $8CE742.l,X		; 3F 42 E7 8C
	sta ($38.b),Y		; 91 38
	rti		; 40

	ora $EE2FEA.l,X		; 1F EA 2F EE
	ora $C6237C.l		; 0F 7C 23 C6
	bit $10.b		; 24 10
	cpx #$38.b		; E0 38
	beq 116.b		; F0 74
	beq -128.b		; F0 80
	trb $2009.w		; 1C 09 20
	inc $E174.w		; EE 74 E1
	inc $0F40.w,X		; FE 40 0F
	sbc [$C0.b]		; E7 C0
	txs		; 9A
	sta ($64.b)		; 92 64
	ora $8002.w,X		; 1D 02 80
	pei ($EE.b)		; D4 EE
	inc $5D0E.w,X		; FE 0E 5D
	sta ($76.b,X)		; 81 76
	brk $E0.b		; 00 E0
	ora #$78.b		; 09 78
	beq -64.b		; F0 C0
	pea $F603.w		; F4 03 F6
	ldx $AB6C.w,Y		; BE 6C AB
	sbc ($C0.b),Y		; F1 C0
	lda ($1B.b)		; B2 1B
	stz $51.b		; 64 51
	bit $D4.b		; 24 D4
	sbc ($5D.b,X)		; E1 5D
	sbc $FA00CB.l,X		; FF CB 00 FA
	bne  90.b		; D0 5A
	adc ($E2.b,X)		; 61 E2
	lda $22.b,S		; A3 22
	rti		; 40

	sbc $A0EE.w,X		; FD EE A0
	and ($00.b,X)		; 21 00
	plx		; FA
	ldx $42.b		; A6 42
	ora [$57.b],Y		; 17 57
	lda $00.b,X		; B5 00
	inc $0C73.w,X		; FE 73 0C
	brk $86.b		; 00 86
	bra -28.b		; 80 E4
	mvp $7E,$6E		; 44 6E 7E
	sbc ($80.b,X)		; E1 80
	sbc $CC.b,S		; E3 CC
	rol A		; 2A
	tax		; AA
	bra -27.b		; 80 E5
	rti		; 40

	inc $F3C5.w		; EE C5 F3
	rti		; 40

	inx		; E8
	asl A		; 0A
	asl $80.b,X		; 16 80
	sbc ($C0.b,X)		; E1 C0
	.db $82, $A4, $58		; 82 A4 58
	jsr ($012A.w,X)		; FC 2A 01
	sta $CB.b		; 85 CB
	sbc $D0F1F4.l,X		; FF F4 F1 D0
	bra -29.b		; 80 E3
	eor $8D2B.w,X		; 5D 2B 8D
.ACCU 8
.INDEX 8
	sep #$7C		; E2 7C
	cpy $20C0.w		; CC C0 20
	bra -29.b		; 80 E3
	adc $8033CF.l		; 6F CF 33 80
	sed		; F8
	asl A		; 0A
	rti		; 40

	nop		; EA
	lda #$8A.b		; A9 8A
	lda #$80.b		; A9 80
	sbc $80E940.l,X		; FF 40 E9 80
	sed		; F8
	tsb $DA80.w		; 0C 80 DA
	bra  -8.b		; 80 F8
	phd		; 0B
	jsr $F1AC.w		; 20 AC F1
	cpy #$80.b		; C0 80
	phx		; DA
	trb $3C.b		; 14 3C
	clc		; 18
	brk $EC.b		; 00 EC
	cmp ($F7.b)		; D2 F7
	ror $1C3A.w,X		; 7E 3A 1C
	lsr $CEC0.w,X		; 5E C0 CE
	brk $9A.b		; 00 9A
	sty $F2.b		; 84 F2
	cpy #$F8.b		; C0 F8
	phd		; 0B
	bit $AA80.w,X		; 3C 80 AA
	dec A		; 3A
	jmp ($F8C0.w,X)		; 7C C0 F8
	phd		; 0B
	cpy #$78.b		; C0 78
	and ($40.b,X)		; 21 40
	lsr $BD4D.w,X		; 5E 4D BD
	rti		; 40

	cli		; 58
	asl A		; 0A
	cpy #$33.b		; C0 33
	ora $F4940B.l		; 0F 0B 94 F4
	bra   3.b		; 80 03
.INDEX 16
	rep #$16		; C2 16
	sta $8349.w		; 8D 49 83
	eor [$17.b]		; 47 17
	cpy $95C0.w		; CC C0 95
	lsr $98.b,X		; 56 98
	bra  77.b		; 80 4D
	tsx		; BA
	dey		; 88
	lda $C0.b,S		; A3 C0
	sec		; 38
	bra   9.b		; 80 09
	nop		; EA
	sbc ($FE.b),Y		; F1 FE
	sbc $DD40DB.l,X		; FF DB 40 DD
	asl $02.b		; 06 02
	tsb $3904.w		; 0C 04 39
	php		; 08
	adc ($30.b,S),Y		; 73 30
	bit $DD47.w,X		; 3C 47 DD
	cop $B4.b		; 02 B4
	sta ($FB.b,X)		; 81 FB
	tas		; 1B
	php		; 08
	ora [$30.b]		; 07 30
	cpy #$C032.w		; C0 32 C0
	stz $3280.w		; 9C 80 32
	tsb $C06C.w		; 0C 6C C0
	sed		; F8
	ora #$20.b		; 09 20
	tyx		; BB
	adc $C0.b,X		; 75 C0
	cpy $F8C0.w		; CC C0 F8
	ora #$73.b		; 09 73
	ora ($86.b,X)		; 01 86
	sed		; F8
	ora #$13.b		; 09 13
	dec $0E08.w		; CE 08 0E
	brk $FA.b		; 00 FA
	inc $B880.w		; EE 80 B8
	lsr $F4C0.w,X		; 5E C0 F4
	php		; 08
	pla		; 68
	cpy #$40D9.w		; C0 D9 40
	ldy $80.b,X		; B4 80
	trb $C380.w		; 1C 80 C3
	sep #$01		; E2 01
	adc $DABA.w,X		; 7D BA DA
	ply		; 7A
	ldy $CA98.w,X		; BC 98 CA
	rol $5900.w,X		; 3E 00 59
	sec		; 38
	tay		; A8
	phx		; DA
	php		; 08
	asl $90.b,X		; 16 90
	sbc ($80.b,X)		; E1 80
	ror A		; 6A
	eor [$B5.b]		; 47 B5
	cmp [$33.b],Y		; D7 33
	trb $8396.w		; 1C 96 83
	sta [$AF.b]		; 87 AF
	jsr ($8E00.w,X)		; FC 00 8E
	jmp ($7AFC.w,X)		; 7C FC 7A
	sec		; 38
	sbc ($40.b)		; F2 40
	inc $80.b,X		; F6 80
	cmp #$7E.b		; C9 7E
	pei ($45.b)		; D4 45
	sbc ($FE.b)		; F2 FE
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	tsb $40.b		; 04 40
	tsb $5E60.w		; 0C 60 5E
	bra -22.b		; 80 EA
	cpy #$1C.b		; C0 1C
	asl A		; 0A
	nop		; EA
	bit $DD46.w		; 2C 46 DD
	rti		; 40

.ACCU 8
	sep #$EA		; E2 EA
	ror $9FEA.w,X		; 7E EA 9F
	ply		; 7A
	brk $E2.b		; 00 E2
	inx		; E8
	eor [$50.b],Y		; 57 50
	bpl  24.b		; 10 18
	beq -16.b		; F0 F0
	ror $8099.w,X		; 7E 99 80
	mvp $3F,$EE		; 44 EE 3F
	sta ($77.b)		; 92 77
	lda ($2D.b)		; B2 2D
	jmp $80CA1F.l		; 5C 1F CA 80
	phy		; 5A
	and $E9C4.w,Y		; 39 C4 E9
	cpy $4D.b		; C4 4D
	cop $5E.b		; 02 5E
	bra  93.b		; 80 5D
	jsr $C0F0.w		; 20 F0 C0
	inc $E0E6.w,X		; FE E6 E0
	trb $3048.w		; 1C 48 30
	sbc $689C42.l,X		; FF 42 9C 68
	bit $3AC8.w,X		; 3C C8 3A
	sed		; F8
	plx		; FA
	brk $EC.b		; 00 EC
	cpy #$C3.b		; C0 C3
	eor $68.b,S		; 43 68
	plb		; AB
	nop		; EA
	tay		; A8
	lda ($F8.b),Y		; B1 F8
	ply		; 7A
	cmp #$40.b		; C9 40
	.db $82, $C0, $F8		; 82 C0 F8
	phd		; 0B
	rti		; 40

	cpx $C0.b		; E4 C0
	sed		; F8
	ora $EA00.w		; 0D 00 EA
	inc $817F.w,X		; FE 7F 81
	tsb $0C1E.w		; 0C 1E 0C
	ply		; 7A
	php		; 08
	sbc ($70.b)		; F2 70
	jsr ($AB00.w,X)		; FC 00 AB
	inc $F09E.w		; EE 9E F0
	bit $08.b		; 24 08
	tsb $70.b		; 04 70
	tsb $C8F1.w		; 0C F1 C8
	bit $FF5B.w,X		; 3C 5B FF
	inc A		; 1A
	bmi 123.b		; 30 7B
	bmi 111.b		; 30 6F
	jsr $034C.w		; 20 4C 03
	phy		; 5A
	ora $C0.b		; 05 C0
	jsr ($B2B4.w,X)		; FC B4 B2
	trb $E3.b		; 14 E3
	cmp $E6.b,S		; C3 E6
	and $F2.b,X		; 35 F2
	stz $00.b,X		; 74 00
	dec $8024.w,X		; DE 24 80
	asl $08DF.w,X		; 1E DF 08
	jsr ($D03C.w,X)		; FC 3C D0
	adc ($F0.b)		; 72 F0
	pea $F38A.w		; F4 8A F3
	stz $80.b		; 64 80
	lda ($C2.b,X)		; A1 C2
	ldy $3CD0.w,X		; BC D0 3C
	tsb $51B4.w		; 0C B4 51
	brk $1B.b		; 00 1B
	bra 115.b		; 80 73
	eor $15.b,X		; 55 15
	bmi  62.b		; 30 3E
	brk $21.b		; 00 21
	rti		; 40

	dec $E204.w,X		; DE 04 E2
	ora ($EA.b,X)		; 01 EA
	bvs -44.b		; 70 D4
	bne -14.b		; D0 F2
	ldy #$0A.b		; A0 0A
	cpy #$FC.b		; C0 FC
	cpx #$C0.b		; E0 C0
	cmp $BC.b,X		; D5 BC
	cld		; D8
	ora #$F1.b		; 09 F1
	jsr ($B555.w,X)		; FC 55 B5
	stz $0A.b,X		; 74 0A
	cpy #$10.b		; C0 10
	tsb $A225.w		; 0C 25 A2
	cmp $6A.b,S		; C3 6A
	cpy #$1C.b		; C0 1C
	sbc $F176FE.l,X		; FF FE 76 F1
	bra  10.b		; 80 0A
	tax		; AA
	rti		; 40

	ldy $F8EE.w,X		; BC EE F8
	ora #$B0.b		; 09 B0
	ldy #$0D.b		; A0 0D
	cmp ($40.b)		; D2 40
	bvs   9.b		; 70 09
	inc $FFFE.w		; EE FE FF
	sed		; F8
	phd		; 0B
	inc $00F7.w,X		; FE F7 00
	dec $EE.b		; C6 EE
	sed		; F8
	phd		; 0B
	and $08.b,X		; 35 08
	adc [$19.b]		; 67 19
	sbc $18.b		; E5 18
	cpx $3D18.w		; EC 18 3D
	cpy #$E1.b		; C0 E1
	and [$10.b],Y		; 37 10
	.db $42, $AF		; 42 AF
	ora $F14E.w,X		; 1D 4E F1
	bit $58.b,X		; 34 58
	sbc ($6C.b,X)		; E1 6C
	ora ($10.b,X)		; 01 10
	ora #$40.b		; 09 40
	sbc #$FE.b		; E9 FE
	and ($C0.b,X)		; 21 C0
	eor #$80.b		; 49 80
	ror A		; 6A
	jsr ($AA08.w,X)		; FC 08 AA
	rti		; 40

	eor $80.b		; 45 80
	sta $8C.b,S		; 83 8C
	sec		; 38
	plx		; FA
	sbc ($F1.b,X)		; E1 F1
	sta ($BA.b,X)		; 81 BA
	iny		; C8
	tsb $C4.b		; 04 C4
	cop $82.b		; 02 82
	cpx #$79.b		; E0 79
	ora [$AF.b]		; 07 AF
	ora $5F166B.l,X		; 1F 6B 16 5F
	and [$6F.b]		; 27 6F
	rti		; 40

	adc #$00.b		; 69 00
	tsb $0037.w		; 0C 37 00
	rol $00.b,X		; 36 00
	and [$B5.b]		; 27 B5
	cmp [$42.b],Y		; D7 42
	ldx $52.b,Y		; B6 52
	cpy #$C2.b		; C0 C2
	jmp.w [$C900]		; DC 00 C9
	dec A		; 3A
	tsb $F6.b		; 04 F6
	ldy $0091.w,X		; BC 91 00
	eor $16.b		; 45 16
	sbc $5728.w,X		; FD 28 57
	cmp $67E4.w,Y		; D9 E4 67
	sbc ($76.b),Y		; F1 76
	cpy #$C2.b		; C0 C2
	adc ($0E.b),Y		; 71 0E
	tsa		; 3B
	asl $78.b		; 06 78
	rtl		; 6B

	ora $042DFE.l		; 0F FE 2D 04
	adc $8900.w,Y		; 79 00 89
	and $F14C.w,X		; 3D 4C F1
	mvp $04,$F4		; 44 F4 04
	ora [$FA.b],Y		; 17 FA
	cpy #$19.b		; C0 19
	bmi  13.b		; 30 0D
	rti		; 40

	sbc ($C0.b,X)		; E1 C0
	sty $00.b		; 84 00
	dex		; CA
	lsr $DA34.w		; 4E 34 DA
	sta [$DB.b]		; 87 DB
	sec		; 38
	dec A		; 3A
	cpy #$C6.b		; C0 C6
	cpy #$3C.b		; C0 3C
	bra  52.b		; 80 34
	cmp $F1.b,S		; C3 F1
	bmi -128.b		; 30 80
	eor $6FE0.w,Y		; 59 E0 6F
	bit $C07E.w,X		; 3C 7E C0
	jsr ($1A27.w,X)		; FC 27 1A
	ora $187D06.l,X		; 1F 06 7D 18
	cpy #$F8.b		; C0 F8
	ora #$1A.b		; 09 1A
	cmp #$87.b		; C9 87
	cpy #$9A.b		; C0 9A
	cpy #$62.b		; C0 62
	sbc #$CE.b		; E9 CE
	rti		; 40

	ply		; 7A
	tsb $FE.b		; 04 FE
	cmp $0C3605.l,X		; DF 05 36 0C
	dec $FA34.w		; CE 34 FA
	php		; 08
	brk $C2.b		; 00 C2
	rti		; 40

	bit $F191.w,X		; 3C 91 F1
	ldx $FFDC.w,Y		; BE DC FF
	jsr ($8C04.w,X)		; FC 04 8C
	brk $C2.b		; 00 C2
	tda		; 7B
	ora $6B.b		; 05 6B
	trb $47.b		; 14 47
	bit $344F.w,X		; 3C 4F 34
	lda $345F00.l,X		; BF 00 5F 34
	tda		; 7B
	bmi -13.b		; 30 F3
	rts		; 60

	sbc $F10E.w		; ED 0E F1
	sbc $00.b,S		; E3 00
	cmp [$DD.b]		; C7 DD
	jsr ($30FE.w,X)		; FC FE 30
	tsb $60.b		; 04 60
	bra  -2.b		; 80 FE
	ora $C180DE.l,X		; 1F DE 80 C1
	bit $08.b,X		; 34 08
	pea $FC08.w		; F4 08 FC
	php		; 08
	ldy $7448.w,X		; BC 48 74
	bcc -104.b		; 90 98
	ldy #$0E.b		; A0 0E
	cpy #$42.b		; C0 42
	rts		; 60

	adc $E97F7A.l		; 6F 7A 7F E9
	iny		; C8
	php		; 08
	sbc $00F1DF.l,X		; FF DF F1 00
	and $7B07.w,Y		; 39 07 7B
	ora [$5F.b]		; 07 5F
	and [$56.b]		; 27 56
	jsl $7D2054.l		; 22 54 20 7D
	bmi -128.b		; 30 80
	.db $62, $08, $BF		; 62 08 BF
	ora [$02.b],Y		; 17 02
	inc $0122.w,X		; FE 22 01
	jsr $3003.w		; 20 03 30
	ora $7F.b,S		; 03 7F
	ldy $6280.w,X		; BC 80 62
	cpy $DA00.w		; CC 00 DA
	tsb $FA.b		; 04 FA
	tsb $EE.b		; 04 EE
	inc $08DA.w,X		; FE DA 08
	ldy $F6.b,X		; B4 F6
	dey		; 88
	bra  97.b		; 80 61
	and ($E9.b),Y		; 31 E9
	bit $F1FE.w		; 2C FE F1
	mvp $C4,$00		; 44 00 C4
	bra  94.b		; 80 5E
	ldy $F1.b,X		; B4 F1
	cpy #$14.b		; C0 14
	asl $0D06.w		; 0E 06 0D
	rts		; 60

	eor ($51.b),Y		; 51 51
	cpy #$17.b		; C0 17
	tsb $A8.b		; 04 A8
	txa		; 8A
	ora ($B2.b,X)		; 01 B2
	sbc $98D2C0.l,X		; FF C0 D2 98
	jmp ($5E00.w)		; 6C 00 5E
	sbc ($F8.b),Y		; F1 F8
	tsb $0A8A.w		; 0C 8A 0A
	cpy #$1C.b		; C0 1C
	beq  13.b		; F0 0D
	sbc $C00EE8.l,X		; FF E8 0E C0
	cpy #$50.b		; C0 50
	ora $F000.w,X		; 1D 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	sbc $F8FF00.l,X		; FF 00 FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	eor #$2E.b		; 49 2E
	asl $0E2F.w		; 0E 2F 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $0E4E.w		; 0E 4E 0E
	sbc $0E4FDF.l,X		; FF DF 4F 0E
	bit $0E.b		; 24 0E
	and $0E.b		; 25 0E
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	jsl $0E230E.l		; 22 0E 23 0E
	jmp.w [$0BF8]		; DC F8 0B
	sbc $1126F7.l,X		; FF F7 26 11
	and [$11.b]		; 27 11
	php		; 08
	ora ($09.b),Y		; 11 09
	ora ($C4.b),Y		; 11 C4
	bpl -59.b		; 10 C5
	bpl -64.b		; 10 C0
	sed		; F8
	ora $FF0E3E.l		; 0F 3E 0E FF
	sbc $720E3F.l,X		; FF 3F 0E 72
	asl $0E73.w		; 0E 73 0E
	lsr $5F0E.w,X		; 5E 0E 5F
	asl $0E34.w		; 0E 34 0E
	and $0E.b,X		; 35 0E
	plx		; FA
	ora $FFEF.w		; 0D EF FF
	xce		; FB
	ora $0E32.w		; 0D 32 0E
	and ($C0.b,S),Y		; 33 C0
	sed		; F8
	tsb $1136.w		; 0C 36 11
	and [$11.b],Y		; 37 11
	clc		; 18
	ora ($19.b),Y		; 11 19
	ora ($D4.b),Y		; 11 D4
	sbc $FF.b,X		; F5 FF
	bpl -43.b		; 10 D5
	cpy #$F8.b		; C0 F8
	bpl  -1.b		; 10 FF
	sed		; F8
	and $EF0CEE.l,X		; 3F EE 0C EF
	tsb $0CC2.w		; 0C C2 0C
	cmp $0C.b,S		; C3 0C
	cpx $0C.b		; E4 0C
	sbc $0CE5CF.l,X		; FF CF E5 0C
	ror $6F0D.w		; 6E 0D 6F
	ora $0D02.w		; 0D 02 0D
	ora $0D.b,S		; 03 0D
	dex		; CA
	tsb $FECB.w		; 0C CB FE
	sbc $F4.b,X		; F5 F4
	phx		; DA
	sed		; F8
	ora #$0A.b		; 09 0A
	ora $640F0B.l		; 0F 0B 0F 64
	ora $EE65.w		; 0D 65 EE
	sed		; F8
	asl A		; 0A
	sbc $0CFEFE.l,X		; FF FE FE 0C
	sbc $0CFFFF.l,X		; FF FF FF 0C
	cmp ($0C.b)		; D2 0C
	cmp ($0C.b,S),Y		; D3 0C
	pea $F50C.w		; F4 0C F5
	tsb $0D7E.w		; 0C 7E 0D
	adc $0D120D.l,X		; 7F 0D 12 0D
	cmp $0D13FE.l		; CF FE 13 0D
	phx		; DA
	tsb $F4DB.w		; 0C DB F4
	phx		; DA
	sed		; F8
	ora #$1A.b		; 09 1A
	ora $740F1B.l		; 0F 1B 0F 74
	sbc $AF.b,X		; F5 AF
	ora $C075.w		; 0D 75 C0
	sed		; F8
	ora ($FF.b)		; 12 FF
	sed		; F8
	and $2D0E2C.l,X		; 3F 2C 0E 2D
	asl $0E44.w		; 0E 44 0E
	eor $80.b		; 45 80
	sbc ($4F.b,S),Y		; F3 4F
	inc $F8DA.w,X		; FE DA F8
	ora $0EC4.w,Y		; 19 C4 0E
	cmp $0E.b		; C5 0E
	jsr ($F8E6.w,X)		; FC E6 F8
	ora ($3C.b),Y		; 11 3C
	asl $0E3D.w		; 0E 3D 0E
	mvn $C9,$F5		; 54 F5 C9
	asl $8055.w		; 0E 55 80
	sbc ($C0.b,S),Y		; F3 C0
	sed		; F8
	ora $0ED4.w,Y		; 19 D4 0E
	cmp $0E.b,X		; D5 0E
	jsr ($F840.w,X)		; FC 40 F8
	eor ($7F.b),Y		; 51 7F
	lda $E10CE0.l		; AF E0 0C E1
	tsb $0CC4.w		; 0C C4 0C
	cmp $0C.b		; C5 0C
	sty $C8F2.w		; 8C F2 C8
	tsb $88C9.w		; 0C C9 88
	beq  14.b		; F0 0E
	sbc $F8405E.l,X		; FF 5E 40 F8
	and ($F0.b,X)		; 21 F0
	tsb $0CF1.w		; 0C F1 0C
	pei ($0C.b)		; D4 0C
	cmp $0C.b,X		; D5 0C
	sty $D8F2.w		; 8C F2 D8
	tsb $88D9.w		; 0C D9 88
	beq  14.b		; F0 0E
	eor $95.b,X		; 55 95
	rti		; 40

	sed		; F8
	adc ($4C.b,X)		; 61 4C
	inc $EEB8.w,X		; FE B8 EE
	bra -16.b		; 80 F0
	and $B8FE4C.l		; 2F 4C FE B8
	inc $F080.w		; EE 80 F0
	adc $4095FE.l		; 6F FE 95 40
	nop		; EA
	tsb $0CEB.w		; 0C EB 0C
	mvp $45,$0D		; 44 0D 45
	ora $F840.w		; 0D 40 F8
	ora $F8FF.w,Y		; 19 FF F8
	ora $55FE.w,Y		; 19 FE 55
	rti		; 40

	plx		; FA
	tsb $0CFB.w		; 0C FB 0C
	mvn $55,$0D		; 54 0D 55
	ora $F840.w		; 0D 40 F8
	ora $F8FF.w,Y		; 19 FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($0005.w,X)		; FC 05 00
	sbc $0097F8.l,X		; FF F8 97 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	sbc $FE0801.l,X		; FF 01 08 FE
	sed		; F8
	sta $02.b		; 85 02
	php		; 08
	ora $08.b,S		; 03 08
	tsb $08.b		; 04 08
	ora $08.b		; 05 08
	asl $08.b		; 06 08
	ora [$B0.b]		; 07 B0
	sbc $02FF08.l,X		; FF 08 FF 02
	pha		; 48
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	and $0809.w		; 2D 09 08
	asl A		; 0A
	php		; 08
	phd		; 0B
	php		; 08
	tsb $F7FF.w		; 0C FF F7
	php		; 08
	ora $0E08.w		; 0D 08 0E
	php		; 08
	ora $081008.l		; 0F 08 10 08
	ora ($08.b),Y		; 11 08
	ora ($C2.b)		; 12 C2
	sed		; F8
	rol A		; 2A
	ora ($08.b,S),Y		; 13 08
	sbc $0814FF.l,X		; FF FF 14 08
	ora $08.b,X		; 15 08
	asl $08.b,X		; 16 08
	ora [$08.b],Y		; 17 08
	clc		; 18
	php		; 08
	ora $1A08.w,Y		; 19 08 1A
	php		; 08
	tas		; 1B
	php		; 08
	sta $FF.b,S		; 83 FF
	trb $1D08.w		; 1C 08 1D
	nop		; EA
	jmp ($28F8.w,X)		; 7C F8 28
	asl $1F08.w,X		; 1E 08 1F
	php		; 08
	jsr $2108.w		; 20 08 21
	sbc $22087F.l,X		; FF 7F 08 22
	php		; 08
	and $08.b,S		; 23 08
	bit $08.b		; 24 08
	and $08.b		; 25 08
	rol $08.b		; 26 08
	and [$08.b]		; 27 08
	plp		; 28
	php		; 08
	and #$FFFF.w		; 29 FF FF
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	rol $2A.b		; 26 2A
	php		; 08
	pld		; 2B
	php		; 08
	bit $2D08.w		; 2C 08 2D
	php		; 08
	rol $2F08.w		; 2E 08 2F
	php		; 08
	bmi   8.b		; 30 08
	sbc $083183.l,X		; FF 83 31 08
	and ($08.b)		; 32 08
	and ($08.b,S),Y		; 33 08
	bit $08.b,X		; 34 08
	and $08.b,X		; 35 08
	rol $E6.b,X		; 36 E6
	sbc $F87EFF.l,X		; FF FF 7E F8
	bit $37.b		; 24 37
	php		; 08
	sec		; 38
	php		; 08
	and $3A08.w,Y		; 39 08 3A
	php		; 08
	tsa		; 3B
	php		; 08
	bit $3D08.w,X		; 3C 08 3D
	php		; 08
	rol $F7FF.w,X		; 3E FF F7
	php		; 08
	and $084008.l,X		; 3F 08 40 08
	eor ($08.b,X)		; 41 08
	.db $42, $08		; 42 08
	eor $08.b,S		; 43 08
	mvp $F8,$80		; 44 80 F8
	bit $45.b		; 24 45
	php		; 08
	sbc $0846FF.l,X		; FF FF 46 08
	eor [$08.b]		; 47 08
	pha		; 48
	php		; 08
	eor #$4A08.w		; 49 08 4A
	php		; 08
	phk		; 4B
	php		; 08
	jmp $4D08.w		; 4C 08 4D
	php		; 08
	sbc $084EFE.l,X		; FF FE 4E 08
	eor $085008.l		; 4F 08 50 08
	eor ($08.b),Y		; 51 08
	eor ($C0.b)		; 52 C0
	sed		; F8
	bit $53.b		; 24 53
	php		; 08
	mvn $55,$08		; 54 08 55
	sbc $5608FF.l,X		; FF FF 08 56
	php		; 08
	eor [$08.b],Y		; 57 08
	cli		; 58
	php		; 08
	eor $5A08.w,Y		; 59 08 5A
	php		; 08
	tad		; 5B
	php		; 08
	jmp $DF5D08.l		; 5C 08 5D DF
	sbc $085E08.l		; EF 08 5E 08
	eor $C06008.l,X		; 5F 08 60 C0
	sed		; F8
	bit $61.b		; 24 61
	php		; 08
	.db $62, $08, $63		; 62 08 63
	beq  -8.b		; F0 F8
	asl A		; 0A
	stz $FF.b		; 64 FF
	lda $6508.w,X		; BD 08 65
	php		; 08
	ror $08.b		; 66 08
	adc [$08.b]		; 67 08
	pla		; 68
	php		; 08
	adc #$F8C0.w		; 69 C0 F8
	bit $6A.b		; 24 6A
	php		; 08
	rtl		; 6B

	cmp $F8EA5E.l,X		; DF 5E EA F8
	ora ($6C.b)		; 12 6C
	php		; 08
	adc $6E08.w		; 6D 08 6E
	cpy #$24F8.w		; C0 F8 24
	adc $16F8E8.l		; 6F E8 F8 16
	bvs   8.b		; 70 08
	adc ($E4.b),Y		; 71 E4
	cpx #$FD86.w		; E0 86 FD
	sbc $FCF8FE.l,X		; FF FE F8 FC
	inc $DEF8.w,X		; FE F8 DE
	bra  28.b		; 80 1C
	sta ($1C.b,X)		; 81 1C
	.db $82, $1C, $83		; 82 1C 83
	trb $1C84.w		; 1C 84 1C
	sta $1C.b		; 85 1C
	sbc [$FF.b],Y		; F7 FF
	stx $1C.b		; 86 1C
	sta [$1C.b]		; 87 1C
	beq  -8.b		; F0 F8
	and $911C90.l		; 2F 90 1C 91
	trb $1C92.w		; 1C 92 1C
	sta ($1C.b,S),Y		; 93 1C
	sty $1C.b,X		; 94 1C
	sbc $1C95FF.l		; EF FF 95 1C
	stx $1C.b,Y		; 96 1C
	sta [$F0.b],Y		; 97 F0
	sed		; F8
	bmi -96.b		; 30 A0
	trb $1CA1.w		; 1C A1 1C
	ldx #$A31C.w		; A2 1C A3
	trb $DFA4.w		; 1C A4 DF
	sbc $1CA51C.l,X		; FF 1C A5 1C
	ldx $1C.b		; A6 1C
	lda [$F0.b]		; A7 F0
	sed		; F8
	bmi -80.b		; 30 B0
	trb $1CB1.w		; 1C B1 1C
	lda ($1C.b)		; B2 1C
	lda ($1C.b,S),Y		; B3 1C
	lda $1CB4FF.l,X		; BF FF B4 1C
	lda $1C.b,X		; B5 1C
	ldx $1C.b,Y		; B6 1C
	lda [$F0.b],Y		; B7 F0
	sed		; F8
	bmi -120.b		; 30 88
	trb $1C89.w		; 1C 89 1C
	txa		; 8A
	trb $7F8B.w		; 1C 8B 7F
	sbc $1C8C1C.l,X		; FF 1C 8C 1C
	sta $8E1C.w		; 8D 1C 8E
	trb $F08F.w		; 1C 8F F0
	sed		; F8
	bmi -104.b		; 30 98
	trb $1C99.w		; 1C 99 1C
	txs		; 9A
	trb $FEFF.w		; 1C FF FE
	txy		; 9B
	trb $1C9C.w		; 1C 9C 1C
	sta $9E1C.w,X		; 9D 1C 9E
	trb $F09F.w		; 1C 9F F0
	sed		; F8
	bmi -88.b		; 30 A8
	trb $1CA9.w		; 1C A9 1C
	tax		; AA
	sbc $AB1CFD.l,X		; FF FD 1C AB
	trb $1CAC.w		; 1C AC 1C
	lda $AE1C.w		; AD 1C AE
	trb $F0AF.w		; 1C AF F0
	sed		; F8
	bmi -72.b		; 30 B8
	trb $1CB9.w		; 1C B9 1C
	sbc $1CBA5B.l,X		; FF 5B BA 1C
	tyx		; BB
	trb $1CBC.w		; 1C BC 1C
	lda $BE1C.w,X		; BD 1C BE
	trb $F0BF.w		; 1C BF F0
	sed		; F8
	bmi   0.b		; 30 00
	sbc $017EF8.l,X		; FF F8 7E 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AD.b		; 00 AD
	adc $F8FF00.l		; 6F 00 FF F8
	asl $FFFF.w,X		; 1E FF FF
	sed		; F8
	asl $F8E0.w		; 0E E0 F8
	ora $55AAAA.l		; 0F AA AA 55
	eor $FC.b,X		; 55 FC
	sed		; F8
	phd		; 0B
	eor $A8.b,X		; 55 A8
	asl A		; 0A
	inc $FC00.w		; EE 00 FC
	sed		; F8
	phd		; 0B
	bcs  -8.b		; B0 F8
	bpl  -2.b		; 10 FE
	sed		; F8
	asl $F8D2.w		; 0E D2 F8
	ora $F0FA.w		; 0D FA F0
	jsr ($F8E0.w,X)		; FC E0 F8
	ora $1FF8FE.l		; 0F FE F8 1F
	ora $F2.b		; 05 F2
	brk $FE.b		; 00 FE
	sbc $DF20.w,Y		; F9 20 DF
	trb $0F.b		; 14 0F
	cmp [$EB.b]		; C7 EB
	rol A		; 2A
	cmp $15.b,X		; D5 15
	nop		; EA
	jsr ($000F.w,X)		; FC 0F 00
	ora ($9A.b,X)		; 01 9A
	cmp $0020F4.l		; CF F4 20 00
	bit $3F00.w,X		; 3C 00 3F
	inc $156B.w,X		; FE 6B 15
	tax		; AA
	asl A		; 0A
	ora $05D553.l		; 0F 53 D5 05
	nop		; EA
	cop $F5.b		; 02 F5
	cld		; D8
	bra 127.b		; 80 7F
	cpy $1C7F.w		; CC 7F 1C
	dec $1FE8.w		; CE E8 1F
	brk $D6.b		; 00 D6
	bra   0.b		; 80 00
	cpy #$D55E.w		; C0 5E D5
	cpx #$FFFC.w		; E0 FC FF
	rol A		; 2A
	txa		; 8A
	cmp $A2.b,X		; D5 A2
	sed		; F8
	ora $FCC0.w		; 0D C0 FC
	jsr ($0BF8.w,X)		; FC F8 0B
	bra  -8.b		; 80 F8
	ora $0DF8E0.l		; 0F E0 F8 0D
	cmp $AF3F.w		; CD 3F AF
	bvc -30.b		; 50 E2
	sed		; F8
	ora $E0FC.w		; 0D FC E0
	lsr $A9.b,X		; 56 A9
	lda $5752.w		; AD 52 57
	tay		; A8
	bit $E401.w,X		; 3C 01 E4
	inc $FC01.w,X		; FE 01 FC
	ora $EA.b,S		; 03 EA
	eor $E87F1C.l		; 4F 1C 7F E8
	beq   0.b		; F0 00
	cpx #$0356.w		; E0 56 03
	brk $4F.b		; 00 4F
	bcs -65.b		; B0 BF
	rti		; 40

	sed		; F8
	bra -18.b		; 80 EE
	sbc $C106.w,Y		; F9 06 C1
	rol $E101.w,X		; 3E 01 E1
	brk $70.b		; 00 70
	inc $6AEA.w,X		; FE EA 6A
	sbc $3E0006.l,X		; FF 06 00 3E
	bit $21.b		; 24 21
	phx		; DA
	inc $F80F.w,X		; FE 0F F8
	ora $12E44A.l		; 0F 4A E4 12
	ora $C4.b		; 05 C4
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sec		; 38
	ldy $46FF.w,X		; BC FF 46
	inx		; E8
	sbc $FF10.w,X		; FD 10 FF
	rol A		; 2A
	sbc $A1FF57.l,X		; FF 57 FF A1
	rts		; 60

	sbc ($1E.b),Y		; F1 1E
	bit $F2.b		; 24 F2
	sbc $F2F822.l,X		; FF 22 F8 F2
	asl $4000.w		; 0E 00 40
	sbc $78F7B0.l		; EF B0 F7 78
	sbc $7FFB78.l,X		; FF 78 FB 7F
	txa		; 8A
	jmp ($DCFF.w,X)		; 7C FF DC
	sbc $FD8C.w,X		; FD 8C FD
	txa		; 8A
	xce		; FB
	inc $87.b		; E6 87
	adc $83FEFD.l,X		; 7F FD FE 83
	brk $23.b		; 00 23
	brk $73.b		; 00 73
	brk $75.b		; 00 75
	ldy #$10F8.w		; A0 F8 10
	jsr $0FF8.w		; 20 F8 0F
	ora $E01FF0.l		; 0F F0 1F E0
	cmp $3F.b,S		; C3 3F
	asl $3EE1.w,X		; 1E E1 3E
	adc ($C1.b,X)		; 61 C1
	ror A		; 6A
	sta $51.b,X		; 95 51
	ldx $DF20.w		; AE 20 DF
	sed		; F8
	dec $8F.b		; C6 8F
	sty $E1.b		; 84 E1
	inc $00C1.w,X		; FE C1 00
	cpy $00.b		; C4 00
	stx $00F0.w		; 8E F0 00
	inc $87DE.w,X		; FE DE 87
	sei		; 78
	ora [$F8.b]		; 07 F8
	inc $1C43.w,X		; FE 43 1C
	cld		; D8
	rol A		; 2A
	cmp $14.b,X		; D5 14
	txa		; 8A
	lda $880078.l		; AF 78 00 88
.INDEX 8
	sep #$DC		; E2 DC
	phx		; DA
	sec		; 38
	bvs -64.b		; 70 C0
	cld		; D8
	and ($38.b,X)		; 21 38
	and [$F0.b]		; 27 F0
	xce		; FB
	ora $F2E0DD.l		; 0F DD E0 F2
	inc $445D.w,X		; FE 5D 44
	iny		; C8
	inx		; E8
	and [$7E.b]		; 27 7E
	inc $FF07.w,X		; FE 07 FF
	sbc $005C40.l,X		; FF 40 5C 00
	asl A		; 0A
	sbc $29FF03.l,X		; FF 03 FF 29
	sbc $13FF14.l,X		; FF 14 FF 13
	sbc $87FF2B.l,X		; FF 2B FF 87
	ora ($62.b),Y		; 11 62
	sbc $482077.l,X		; FF 77 20 48
	bit $0602.w,X		; 3C 02 06
	jsr ($E2FF.w,X)		; FC FF E2
	bne   0.b		; D0 00
	jmp.w [$5A00]		; DC 00 5A
	sbc $7AFF35.l,X		; FF 35 FF 7A
	sbc $7FFFDD.l,X		; FF DD FF 7F
	dey		; 88
	sbc $FE76FF.l		; EF FF 76 FE
	lda $DAFD.w,Y		; B9 FD DA
	plx		; FA
	cpx #$8F.b		; E0 8F
	adc $33BEFC.l,X		; 7F FC BE 33
	brk $18.b		; 00 18
	brk $CD.b		; 00 CD
	brk $E6.b		; 00 E6
	rti		; 40

	ldy $D3FD.w		; AC FD D3
	xce		; FB
	sbc $FDECFF.l,X		; FF FF EC FD
	bpl -72.b		; 10 B8
	pha		; 48
	cli		; 58
	ldy #$A0.b		; A0 A0
	rti		; 40

	rti		; 40

	bra -126.b		; 80 82
	tda		; 7B
	brk $3D.b		; 00 3D
	brk $78.b		; 00 78
	jsr ($6ABB.w,X)		; FC BB 6A
	lda $FC5F00.l,X		; BF 00 5F FC
	adc $FFAA00.l,X		; 7F 00 AA FF
	adc $5525.w,X		; 7D 25 55
	sbc $2AFEFC.l,X		; FF FC FE 2A
	adc $803F15.l,X		; 7F 15 3F 80
	inx		; E8
	bpl -32.b		; 10 E0
	sed		; F8
	asl A		; 0A
	jsr ($FEBF.w,X)		; FC BF FE
	cpx #$F8.b		; E0 F8
	inc A		; 1A
	inc $FDAA.w,X		; FE AA FD
	eor $FB.b,X		; 55 FB
	cpx $F8.b		; E4 F8
	phd		; 0B
	sec		; 38
	sbc ($CB.b)		; F2 CB
	rol $DFB4.w,X		; 3E B4 DF
	php		; 08
	ora $C1.b,S		; 03 C1
	sbc $FCFF15.l,X		; FF 15 FF FC
	sbc $9ED8.w		; ED D8 9E
	cmp [$FC.b]		; C7 FC
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	inc $2010.w,X		; FE 10 20
	rti		; 40

	brk $A5.b		; 00 A5
	sbc $51FAFF.l,X		; FF FF FA 51
	sbc $4CFF84.l,X		; FF 84 FF 4C
	sbc $33FF18.l,X		; FF 18 FF 33
	sbc $5FFF27.l,X		; FF 27 FF 5F
	sbc $008DF0.l,X		; FF F0 8D 00
	brk $F1.b		; 00 F1
	rol $CCF1.w,X		; 3E F1 CC
	rti		; 40

	bit $C7FF.w,X		; 3C FF C7
	sec		; 38
	asl $F500.w		; 0E 00 F5
	plx		; FA
	bra  -1.b		; 80 FF
	bit $7CFF.w,X		; 3C FF 7C
	sbc $63C260.l,X		; FF 60 C2 63
	sta $7FFF0B.l		; 8F 0B FF 7F
	cpx #$80.b		; E0 80
	brk $F9.b		; 00 F9
	jmp ($6000.w,X)		; 7C 00 60
	eor $0BC2F0.l,X		; 5F F0 C2 0B
	brk $3B.b		; 00 3B
	brk $DF.b		; 00 DF
	sty $EAE1.w		; 8C E1 EA
	sbc $FDFDFC.l,X		; FF FC FD FD
	adc $FBFB3F.l		; 6F 3F FB FB
	phx		; DA
	brk $D3.b		; 00 D3
	cpy $F1.b		; C4 F1
	tsb $F1DA.w		; 0C DA F1
	cmp $00.b,S		; C3 00
	sep #$00		; E2 00
	sbc [$FC.b]		; E7 FC
	sbc ($C0.b,X)		; E1 C0
	sbc $EB.b,X		; F5 EB
	xba		; EB
	cmp $B9DD.w,X		; DD DD B9
	lda $EDFC.w,Y		; B9 FC ED
	sbc $18FF.w		; ED FF 18
	eor $C04D.w		; 4D 4D C0
	cpy #$2A.b		; C0 2A
	brk $17.b		; 00 17
	brk $2B.b		; 00 2B
	tsb $EF.b		; 04 EF
	sty $FE.b		; 84 FE
	dec $00.b		; C6 00
	sbc $07AB.w,Y		; F9 AB 07
	sbc $9B03FE.l,X		; FF FE 03 9B
	sta $9C9D.w,Y		; 99 9D 9C
	sbc $3F9F.w,X		; FD 9F 3F
	trb $F820.w		; 1C 20 F8
	ora $AF1F5F.l		; 0F 5F 1F AF
	ora $B78FDF.l,X		; 1F DF 8F B7
	sta $D6C7FF.l		; 8F FF C7 D6
	adc $07FEFE.l,X		; 7F FE FE 07
	stz $10E0.w,X		; 9E E0 10
	sbc $FFFEFD.l,X		; FF FD FE FF
	sbc $BAFE.w,Y		; F9 FE BA
	cmp $F5.b		; C5 F5
	asl A		; 0A
	sbc $F8E09F.l,X		; FF 9F E0 F8
	ora $F4FDFE.l		; 0F FE FD F4
	xba		; EB
	tay		; A8
	cmp [$51.b],Y		; D7 51
	lda $7F5FAF.l		; AF AF 5F 7F
	lda $57CC6D.l,X		; BF 6D CC 57
	cpy #$E8.b		; C0 E8
	ora $EA5EFF.l		; 0F FF 5E EA
	jsr $3F1C.w		; 20 1C 3F
	cop $C0.b		; 02 C0
	inc $F8A0.w,X		; FE A0 F8
	ora ($C9.b,S),Y		; 13 C9
	inc $5FC3.w,X		; FE C3 5F
	eor [$FE.b],Y		; 57 FE
	sbc $DCFEAF.l,X		; FF AF FE DC
	ldy #$F0.b		; A0 F0
	tsb $E2C0.w		; 0C C0 E2
	sty $FD.b		; 84 FD
	jsr ($F8FB.w,X)		; FC FB F8
	lda $F0F742.l,X		; BF 42 F7 F0
	sbc $03FE01.l		; EF 01 FE 03
	sbc $F688.w,X		; FD 88 F6
	stz $FFEA.w,X		; 9E EA FF
	ora ($38.b,X)		; 01 38
	mvp $EF,$FA		; 44 FA EF
	bra 127.b		; 80 7F
	sbc $A004.w		; ED 04 A0
	brk $B0.b		; 00 B0
	sbc $5C.b		; E5 5C
	jsr ($EC88.w,X)		; FC 88 EC
	tsb $40.b		; 04 40
	ora $DCF1BC.l		; 0F BC F1 DC
	inc $DF3F.w,X		; FE 3F DF
	ora [$FB.b]		; 07 FB
	adc [$28.b]		; 67 28
	iny		; C8
	sta $FF.b		; 85 FF
	plx		; FA
	cpx #$FF.b		; E0 FF
	and $00F1C2.l,X		; 3F C2 F1 00
	bra -54.b		; 80 CA
	jmp.w [$E4D8]		; DC D8 E4
	sep #$83		; E2 83
	cmp [$D9.b]		; C7 D9
	jsr $7FFE.w		; 20 FE 7F
	adc $FDAFDF.l,X		; 7F DF AF FD
	jmp ($0C46.w,X)		; 7C 46 0C
	stx $FE.b		; 86 FE
	jmp.w [$03DA]		; DC DA 03
	ldx $C8.b,Y		; B6 C8
	sbc [$6B.b],Y		; F7 6B
	cpy $F56B.w		; CC 6B F5
	sbc $24FED8.l		; EF D8 FE 24
	nop		; EA
	sbc ($FE.b),Y		; F1 FE
	sbc $87.b,S		; E3 87
	stz $FE.b		; 64 FE
	cpx #$00.b		; E0 00
	nop		; EA
	cpx $FF.b		; E4 FF
	jsr ($FEFF.w,X)		; FC FF FE
	cpy #$24.b		; C0 24
	clv		; B8
	cpx $F8FE.w		; EC FE F8
	sta $3900.w,Y		; 99 00 39
	eor $E16007.l,X		; 5F 07 60 E1
	ldx $D5FF.w		; AE FF D5
	sbc $E940BA.l,X		; FF BA 40 E9
	sbc $FCFCFC.l,X		; FF FC FC FC
	ror $F8.b		; 66 F8
	clc		; 18
	inc $90.b		; E6 90
	brk $98.b		; 00 98
	brk $B3.b		; 00 B3
	inc $42B0.w,X		; FE B0 42
	bit $03A1.w		; 2C A1 03
	ldy $DF.b		; A4 DF
	cpy #$75.b		; C0 75
	ldy #$E9.b		; A0 E9
	adc $FF8C.w,X		; 7D 8C FF
	and $005B3F.l,X		; 3F 3F 5B 00
	wai		; CB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sbc ($FF.b),Y		; F1 FF
	lsr $56C3.w,X		; 5E C3 56
	ora [$C0.b]		; 07 C0
	ldx $B6.b,Y		; B6 B6
	lsr A		; 4A
	lsr A		; 4A
	stx $96.b,Y		; 96 96
	lda #$FFA9.w		; A9 A9 FF
	sta [$58.b]		; 87 58
	cli		; 58
	lda $A5.b		; A5 A5
	.db $82, $82, $50		; 82 82 50
	bvc -86.b		; 50 AA
	eor ($55.b,X)		; 41 55
	ldy #$FFFC.w		; A0 FC FF
	sbc $AB0057.l,X		; FF 57 00 AB
	tsb $5D.b		; 04 5D
	cop $AE.b		; 02 AE
	eor ($75.b),Y		; 51 75
	txa		; 8A
	bra -128.b		; 80 80
	ora $05.b		; 05 05
	dey		; 88
	dey		; 88
	sbc $4547FF.l,X		; FF FF 47 45
	tsb $2308.w		; 0C 08 23
	ora ($56.b,X)		; 01 56
	cop $8B.b		; 02 8B
	brk $BF.b		; 00 BF
	rti		; 40

	sbc [$08.b],Y		; F7 08
	tsx		; BA
	eor $87.b		; 45 87
	sbc $EE8877.l,X		; FF 77 88 EE
	ora ($F8.b),Y		; 11 F8
	inc $DF01.w,X		; FE 01 DF
	jsr $084B.w		; 20 4B 08
	and [$14.b],Y		; 37 14
	sbc $88CE38.l,X		; FF 38 CE 88
	lda $7A01.w,X		; BD 01 7A
	cop $FD.b		; 02 FD
	ora $FA.b		; 05 FA
	jsr ($14EB.w,X)		; FC EB 14
	lda $E4FF.w,X		; BD FF E4
	sbc $FA02.w,X		; FD 02 FA
	ora $FC.b		; 05 FC
	jsr ($02F9.w,X)		; FC F9 02
	tda		; 7B
	mvp $81,$BE		; 44 BE 81
	adc $0FFF.w,X		; 7D FF 0F
	.db $42, $FA		; 42 FA
	sta $75.b		; 85 75
	phd		; 0B
	nop		; EA
	asl $D5.b,X		; 16 D5
	and #$04FB.w		; 29 FB 04
	adc $806080.l,X		; 7F 80 60 80
	ldy $FEFC.w,X		; BC FC FE
	sbc ($80.b),Y		; F1 80
	cpy #$FFE0.w		; C0 E0 FF
	ora [$AA.b]		; 07 AA
	eor $54.b,X		; 55 54
	lda $AA.b,X		; B5 AA
	pld		; 2B
	mvn $A8,$D5		; 54 D5 A8
	pld		; 2B
	rti		; 40

	sta $4380EB.l,X		; 9F EB 80 43
	cmp $E8.b,S		; C3 E8
	sbc $0A.b,X		; F5 0A
	plb		; AB
	sbc ($2A.b),Y		; F1 2A
	brk $80.b		; 00 80
	jsr ($F4A4.w,X)		; FC A4 F4
	ldy $4F.b,X		; B4 4F
	adc $01EB28.l,X		; 7F 28 EB 01
	sbc [$02.b],Y		; F7 02
	cmp [$FE.b],Y		; D7 FE
	ora $FF.b		; 05 FF
	asl A		; 0A
	sbc $20FD15.l,X		; FF 15 FD 20
	trb $A0.b		; 14 A0
	dey		; 88
	sbc ($67.b),Y		; F1 67
	stp		; DB
	ror $F8F8.w,X		; 7E F8 F8
	asl A		; 0A
	plx		; FA
	eor $5F.b,X		; 55 5F
	tax		; AA
	lda $BFABFC.l		; AF FC AB BF
	eor [$FF.b],Y		; 57 FF
	sta [$07.b]		; 87 07
	lda $D757FF.l		; AF FF 57 D7
	sty $A05F.w		; 8C 5F A0
	lda $E1FC50.l		; AF 50 FC E1
	sbc $FEDA0A.l,X		; FF 0A DA FE
	cmp [$28.b],Y		; D7 28
	clv		; B8
	sbc [$70.b],Y		; F7 70
	sbc $C1DFE1.l		; EF E1 DF C1
	sbc $C7C6BF.l,X		; FF BF C6 C7
	lda $BEFF95.l,X		; BF 95 FF BE
	sbc $F1A0DF.l,X		; FF DF A0 F1
	ldy #$C1DA.w		; A0 DA C1
	inc $885E.w,X		; FE 5E 88
	sty $A0.b		; 84 A0
	stp		; DB
	phd		; 0B
	sbc $F3447D.l,X		; FF 7D 44 F3
	jsr ($5F55.w,X)		; FC 55 5F
	tax		; AA
	cpy #$FF7F.w		; C0 7F FF
	ora $00.b,S		; 03 00
	adc $DDA0.w,Y		; 79 A0 DD
	sbc $F14070.l,X		; FF 70 40 F1
	pea $C40B.w		; F4 0B C4
	nop		; EA
	sbc $D5FBFB.l,X		; FF FB FB D5
	cmp $B6.b,X		; D5 B6
	ldx $A0.b,Y		; B6 A0
	cld		; D8
	ora #$F86F.w		; 09 6F F8
	inc $002A.w,X		; FE 2A 00
	eor $08.b,X		; 55 08
	.db $42, $ED		; 42 ED
	inc $AAE4.w,X		; FE E4 AA
	tax		; AA
	mvn $1B,$54		; 54 54 1B
	sta $E0E0.w		; 8D E0 E0
	bit $F182.w,X		; 3C 82 F1
	cpy #$94A2.w		; C0 A2 94
	dex		; CA
	plb		; AB
	ora [$7C.b]		; 07 7C
	ror $F7F7.w,X		; 7E F7 F7
	plx		; FA
	lda $DF.b		; A5 DF
	adc $ACAC7F.l,X		; 7F 7F AC AC
	sed		; F8
	xce		; FB
	bcs  41.b		; B0 29
	and #$0008.w		; 29 08 00
	adc $7E00.w,X		; 7D 00 7E
	cop $F1.b		; 02 F1
	ldx $5700.w,Y		; BE 00 57
	bmi -36.b		; 30 DC
	brk $3C.b		; 00 3C
	sbc $DEA310.l		; EF 10 A3 DE
	dec $E375.w,X		; DE 75 E3
	cpy $0FFF.w		; CC FF 0F
	rol A		; 2A
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rts		; 60

	brk $02.b		; 00 02
	and ($A9.b,X)		; 21 A9
	cop $56.b		; 02 56
	ora ($8B.b,X)		; 01 8B
	cmp ($C4.b,S),Y		; D3 C4
	mvn $D8,$81		; 54 81 D8
	sbc ($A4.b,S),Y		; F3 A4
	jmp $0AE05C.l		; 5C 5C E0 0A
	sbc [$FF.b],Y		; F7 FF
	asl A		; 0A
	and $15.b,X		; 35 15
	jsr $F10E.w		; 20 0E F1
	sec		; 38
	ora ($3A.b,X)		; 01 3A
	sta ($95.b,X)		; 81 95
	rti		; 40

	lsr A		; 4A
	ldy #$E015.w		; A0 15 E0
	sbc $C02A1F.l,X		; FF 1F 2A C0
	and $FCFCC0.l,X		; 3F C0 FC FC
	eor $44444F.l		; 4F 4F 44 44
	php		; 08
	php		; 08
	eor $45.b		; 45 45
	lsr $F8.b		; 46 F8
	cpy #$1515.w		; C0 15 15
	eor $B03F.w		; 4D 3F B0
	php		; 08
	lda ($44.b,S),Y		; B3 44
	ora $22B377.l		; 0F 77 B3 22
	tya		; 98
	eor $90.b		; 45 90
	cpx #$04FB.w		; E0 FB 04
	and $17E1ED.l,X		; 3F ED E1 17
	ora [$00.b],Y		; 17 00
	clc		; 18
	cpx $E0.b		; E4 E0
	cpy #$0404.w		; C0 04 04
	stx $1F.b		; 86 1F
	sbc ($07.b,X)		; E1 07
	cpy #$2B48.w		; C0 48 2B
	cpy #$8055.w		; C0 55 80
	txa		; 8A
	bmi  62.b		; 30 3E
	trb $30C0.w		; 1C C0 30
	wai		; CB
	ldy $5B.b		; A4 5B
	ora ($90.b,X)		; 01 90
	brk $05.b		; 00 05
	brk $FC.b		; 00 FC
	adc [$6A.b],Y		; 77 6A
	pei ($CA.b)		; D4 CA
	lsr $00.b,X		; 56 00
	ldy #$2300.w		; A0 00 23
	jmp.w [$D02F]		; DC 2F D0
	bne -52.b		; D0 CC
	cmp $3C.b,S		; C3 3C
	clc		; 18
	phx		; DA
	rts		; 60

	beq  15.b		; F0 0F
	asl $1B.b,X		; 16 1B
	ldx $D9.b,Y		; B6 D9
	sbc [$AE.b]		; E7 AE
	cmp $FFC2.w,Y		; D9 C2 FF
	cld		; D8
	sbc ($F1.b)		; F2 F1
	cop $8F.b		; 02 8F
	bvs  27.b		; 70 1B
	cpx $33.b		; E4 33
	cpy $18E7.w		; CC E7 18
	cpy $FD0F.w		; CC 0F FD
	and ($D8.b,S),Y		; 33 D8
	and [$70.b]		; 27 70
	sta $D0FDE0.l		; 8F E0 FD D0
	sep #$01		; E2 01
	sbc $02.b		; E5 02
	.db $42, $FF		; 42 FF
	rep #$05		; C2 05
	mvp $C2,$02		; 44 02 C2
	tsb $84.b		; 04 84
	cop $FD.b		; 02 FD
	cop $88.b		; 02 88
	sbc ($E0.b)		; F2 E0
	eor [$FF.b]		; 47 FF
	sbc $B946B8.l,X		; FF B8 46 B9
	dec $39.b		; C6 39
	stx $79.b		; 86 79
	dey		; 88
	bvc  16.b		; 50 10
	dey		; 88
	php		; 08
	bpl  16.b		; 10 10
	plp		; 28
	jsr $F842.w		; 20 42 F8
	ora $E90F.w,Y		; 19 0F E9
	ora #$CAEF.w		; 09 EF CA
	tya		; 98
	adc [$18.b]		; 67 18
	sbc [$07.b]		; E7 07
	sei		; 78
	sec		; 38
	cmp [$39.b]		; C7 39
	dec $44.b		; C6 44
	jsl $0010EF.l		; 22 EF 10 00
	eor $0F.b,S		; 43 0F
	sbc $86E977.l,X		; FF 77 E9 86
	brk $8C.b		; 00 8C
	sta $F301.w		; 8D 01 F3
	cop $F6.b		; 02 F6
	trb $FC.b		; 14 FC
	eor $00.b,S		; 43 00
	cmp $BC.b,S		; C3 BC
	dey		; 88
	dex		; CA
	sty $7E73.w		; 8C 73 7E
	sbc ($FF.b,S),Y		; F3 FF
	sbc $09F60C.l,X		; FF 0C F6 09
	jsr ($0203.w,X)		; FC 03 02
	cmp $15.b,S		; C3 15
	sta $40F0A0.l,X		; 9F A0 F0 40
	cpx #$E7A7.w		; E0 A7 E7
	ora $3FC30F.l,X		; 1F 0F C3 3F
	and $713D.w,X		; 3D 3D 71
	adc ($E2.b),Y		; 71 E2
	sta $E08A60.l,X		; 9F 60 8A E0
	brk $FF.b		; 00 FF
	ora $3DC09E.l,X		; 1F 9E C0 3D
.ACCU 16
.INDEX 16
	rep #$71		; C2 71
	stx $F0B0.w		; 8E B0 F0
	inc $0FFF.w,X		; FE FF 0F
	inc $C3C3.w,X		; FE C3 C3
	cmp ($C1.b,X)		; C1 C1
	sbc $FAF9.w,Y		; F9 F9 FA
	plx		; FA
	and $25.b		; 25 25
	and $23.b,S		; 23 23
	brk $00.b		; 00 00
	cpx $72.b		; E4 72
	jmp.w [$F042]		; DC 42 F0
	sbc $2604C0.l,X		; FF C0 04 26
	cld		; D8
	bit $D8.b		; 24 D8
	ldx $C97F.w,Y		; BE 7F C9
	rtl		; 6B

	lda [$77.b],Y		; B7 77
	iny		; C8
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ror A		; 6A
	cmp $DA.b,S		; C3 DA
	dec $B5.b,X		; D6 B5
	lda $9E.b,X		; B5 9E
	brk $88.b		; 00 88
	trb $95.b		; 14 95
	php		; 08
	dey		; 88
	.db $42, $FF		; 42 FF
	ora $C0.b,X		; 15 C0
	cmp ($0C.b)		; D2 0C
	lsr A		; 4A
	jsr $BEF1.w		; 20 F1 BE
	ldx $5D5D.w,Y		; BE 5D 5D
	tsx		; BA
	tsx		; BA
	and $F4F4FC.l,X		; 3F FC F4 F4
	inx		; E8
	inx		; E8
	bcc -112.b		; 90 90
	rts		; 60

	ldy $00.b		; A4 00
	lda ($40.b),Y		; B1 40
	mvp $FF,$A2		; 44 A2 FF
	sbc $134489.l,X		; FF 89 44 13
	php		; 08
	rol $11.b		; 26 11
	jmp $9923.w		; 4C 23 99
	asl $A5.b		; 06 A5
	lda $2A.b		; A5 2A
	rol A		; 2A
	php		; 08
	php		; 08
	sbc [$0F.b],Y		; F7 0F
	mvn $20,$54		; 54 54 20
	jsr $BD70.w		; 20 70 BD
	bvc -43.b		; 50 D5
	brk $EB.b		; 00 EB
	trb $D7.b		; 14 D7
	plp		; 28
	beq  -1.b		; F0 FF
	mvp $74,$FE		; 44 FE 74
	phb		; 8B
	cpx $1B.b		; E4 1B
	bit $063C.w,X		; 3C 3C 06
	asl $AA.b		; 06 AA
	ldy #$FF55.w		; A0 55 FF
	pea $AA50.w		; F4 50 AA
	php		; 08
	eor [$03.b],Y		; 57 03
	sbc $717F43.l		; EF 43 7F 71
	cop $AF.b		; 02 AF
	bvc  87.b		; 50 57
	inc $A8FF.w,X		; FE FF A8
	rol $F1.b		; 26 F1
	ora ($FF.b,X)		; 01 FF
	.db $42, $FF		; 42 FF
	adc ($14.b),Y		; 71 14
	trb $28.b		; 14 28
	plp		; 28
	sbc $94.b,X		; F5 94
	xce		; FB
	dex		; CA
	sbc $70EFE1.l,X		; FF E1 EF 70
	sbc $90FF30.l,X		; FF 30 FF 90
	sbc $29D6C0.l,X		; FF C0 D6 29
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	asl A		; 0A
	ora [$FD.b],Y		; 17 FD
	xce		; FB
	sty $FF.b		; 84 FF
	rti		; 40

	phk		; 4B
	cmp $AAF0.w,Y		; D9 F0 AA
	dex		; CA
	bcs -96.b		; B0 A0
	pha		; 48
	rti		; 40

	sbc $00747F.l,X		; FF 7F 74 00
	tay		; A8
	brk $DC.b		; 00 DC
	php		; 08
	inc $BB0C.w,X		; FE 0C BB
	mvp $A6,$59		; 44 59 A6
	clv		; B8
	eor [$5C.b]		; 47 5C
	lda $80.b,S		; A3 80
	and [$06.b]		; 27 06
	inc $09FE.w,X		; FE FE 09
	sbc $8F8C0C.l,X		; FF 0C 8C 8F
	jsr $BA46.w		; 20 46 BA
	eor ($00.b,X)		; 41 00
	jsl $287BFC.l		; 22 FC 7B 28
	cpx $01FC.w		; EC FC 01
	ldx #$1CE3.w		; A2 E3 1C
	.db $62, $9D, $63		; 62 9D 63
	stz $3161.w		; 9C 61 31
	sbc $44FFFE.l,X		; FF FE FF 44
	brk $A2.b		; 00 A2
	brk $D1.b		; 00 D1
	brk $0A.b		; 00 0A
	ror A		; 6A
	cmp $000B.w,Y		; D9 0B 00
	sbc ($0E.b),Y		; F1 0E
	cld		; D8
	sbc $CC2717.l,X		; FF 17 27 CC
	and ($E7.b,S),Y		; 33 E7
	clc		; 18
	sbc ($0C.b,S),Y		; F3 0C
	tas		; 1B
	cpx $0E.b		; E4 0E
	sbc ($0F.b),Y		; F1 0F
	and $62EB.w,Y		; 39 EB 62
	sty $C0.b		; 84 C0
	txa		; 8A
	trb $82.b		; 14 82
	sed		; F8
	jmp.w [$1F87]		; DC 87 1F
	cpy $3B.b		; C4 3B
	pea $C00B.w		; F4 0B C0
	sta $7C8360.l,X		; 9F 60 83 7C
	cmp $3C.b,S		; C3 3C
	ldy #$3E0A.w		; A0 0A 3E
	cpx #$3A47.w		; E0 47 3A
	wai		; CB
	lsr A		; 4A
.INDEX 16
	rep #$16		; C2 16
	sbc ($D3.b)		; F2 D3
	asl $D1.b		; 06 D1
	cmp [$38.b]		; C7 38
	ldy #$E01F.w		; A0 1F E0
	lda $F0C1.w		; AD C1 F0
	ldx $34A8.w,Y		; BE A8 34
	xce		; FB
	sbc ($F0.b),Y		; F1 F0
	cmp ($F0.b,S),Y		; D3 F0
	tsx		; BA
	inc $2BD0.w,X		; FE D0 2B
	plp		; 28
	trb $10A0.w		; 1C A0 10
	sbc ($7E.b)		; F2 7E
	sbc ($FE.b)		; F2 FE
	sbc ($1E.b,X)		; E1 1E
	jsr ($BE1E.w,X)		; FC 1E BE
	ldx $05.b		; A6 05
	tsb $8B.b		; 04 8B
	dey		; 88
	ora ($2B.b,X)		; 01 2B
	jsr $4057.w		; 20 57 40
	and $C7BFC3.l		; 2F C3 BF C7
	cmp ($8F.b)		; D2 8F
	bvs  -2.b		; 70 FE
	dec $7C20.w,X		; DE 20 7C
	bra 120.b		; 80 78
	bra 112.b		; 80 70
	bra  17.b		; 80 11
	rol $EBAB.w		; 2E AB EB
	cmp $FACDA1.l,X		; DF A1 CD FA
	brk $C2.b		; 00 C2
	sta [$E9.b],Y		; 97 E9
	nop		; EA
	sbc #$80FE.w		; E9 FE 80
	ldy $E98D.w,X		; BC 8D E9
	and $FD00.w,X		; 3D 00 FD
	inc $EE0A.w,X		; FE 0A EE
	ora $70.b		; 05 70
	ora ($FB.b,X)		; 01 FB
	cmp [$D3.b],Y		; D7 D3
	sta ($D4.b,X)		; 81 D4
	lda $1EB9.w		; AD B9 1E
	ora ($D1.b,X)		; 01 D1
	sbc $FFD2C0.l,X		; FF C0 D2 FF
	lda $E9E9D5.l,X		; BF D5 E9 E9
	cmp $C7CD.w		; CD CD C7
	cmp [$72.b]		; C7 72
	adc ($87.b)		; 72 87
	ora $0A9D1D.l,X		; 1F 1D 9D 0A
	dex		; CA
	inc $FE03.w		; EE 03 FE
	sbc #$CD16.w		; E9 16 CD
	and ($FE.b)		; 32 FE
	sbc ($5C.b,X)		; E1 5C
	sbc ($0D.b)		; F2 0D
	eor $2A22.w,X		; 5D 22 2A
	ora $02.b,X		; 15 02
	ora ($D6.b,X)		; 01 D6
	ora [$07.b]		; 07 07
	sbc $2727F7.l,X		; FF F7 27 27
	lsr $AE5E.w,X		; 5E 5E AE
	ldx $4C4C.w		; AE 4C 4C
	bit $24.b		; 24 24
	php		; 08
	php		; 08
	inc $F8E1.w,X		; FE E1 F8
	plp		; 28
	sbc $51D0EF.l,X		; FF EF D0 51
	ldy #$51A0.w		; A0 A0 51
	eor ($A1.b)		; 52 A1
	sec		; 38
	cmp $14.b,S		; C3 14
	sbc $0A.b,S		; E3 0A
	cpx #$E2EA.w		; E0 EA E2
	asl A		; 0A
	brk $0F.b		; 00 0F
	asl A		; 0A
	jsr ($44F8.w,X)		; FC F8 44
	mvp $82,$82		; 44 82 82
	and $95FCFC.l,X		; 3F FC FC 95
	rti		; 40

	rol A		; 2A
	cpy #$E015.w		; C0 15 E0
	inx		; E8
	ora $C0.b,X		; 15 C0
	jsl $034499.l		; 22 99 44 03
	and ($39.b),Y		; 31 39
	sta $38.b,S		; 83 38
	cmp $93.b,X		; D5 93
	stx $3FFE.w		; 8E FE 3F
	adc ($04.b,X)		; 61 04
	brk $5B.b		; 00 5B
	tsb $3F.b		; 04 3F
	cpy #$906F.w		; C0 6F 90
	adc [$98.b]		; 67 98
	jmp $0CB3.w		; 4C B3 0C
	bvc  -2.b		; 50 FE
	eor $EA8FB0.l		; 4F B0 8F EA
	trb $CA.b		; 14 CA
	sbc ($F8.b),Y		; F1 F8
	adc $00AF51.l,X		; 7F 51 AF 00
	ora $07FF03.l,X		; 1F 03 FF 07
	and $5BA407.l,X		; 3F 07 A4 5B
	bit $CB.b,X		; 34 CB
	brk $E3.b		; 00 E3
	ora $1C.b		; 05 1C
	mvp $C3,$B1		; 44 B1 C3
	beq -57.b		; F0 C7
	and $FFFC.w,X		; 3D FC FF
	pla		; 68
	sta $C1.b,S		; 83 C1
	trb $31FE.w		; 1C FE 31
	pea $8FFF.w		; F4 FF 8F
	sbc $8F.b,X		; F5 8F
	cmp $AF070A.l,X		; DF 0A 07 AF
	beq  -4.b		; F0 FC
	trb $F1.b		; 14 F1
	beq  15.b		; F0 0F
	sbc $FCEC80.l,X		; FF 80 EC FC
	sbc $FF0CFC.l,X		; FF FC 0C FF
	bit $FF.b		; 24 FF
	stz $FE.b		; 64 FE
	adc $FB.b,X		; 75 FB
	rol $BE.b,X		; 36 BE
	adc [$55.b],Y		; 77 55
	inc $AA02.w,X		; FE 02 AA
	beq  -2.b		; F0 FE
	sbc $32FF34.l,X		; FF 34 FF 32
	sbc $F19436.l,X		; FF 36 94 F1
	sbc ($FC.b)		; F2 FC
	eor $DF1ED2.l,X		; 5F D2 1E DF
	rol $57AB.w,X		; 3E AB 57
	adc $FA.b,X		; 75 FA
	plx		; FA
	adc $7D.b,X		; 75 7D
	plx		; FA
	beq  -4.b		; F0 FC
	tsb $80.b		; 04 80
	inc $9C92.w,X		; FE 92 9C
	inc $5F5E.w,X		; FE 5E 5F
	sei		; 78
	pea $EFCA.w		; F4 CA EF
	bpl  84.b		; 10 54
	lda $DA.b,S		; A3 DA
	xce		; FB
	cmp $AB54.w,Y		; D9 54 AB
	sbc ($0E.b),Y		; F1 0E
	ror $B2F4.w,X		; 7E F4 B2
	adc $F256FE.l,X		; 7F FE 56 F2
	sta $6AD1D0.l		; 8F D0 D1 6A
	ora $05.b,X		; 15 05
	asl A		; 0A
	cop $05.b		; 02 05
	ora $18.b		; 05 18
	bvc  65.b		; 50 41
	sta [$04.b]		; 87 04
	sta $F22866.l		; 8F 66 28 F2
	sta [$7E.b]		; 87 7E
	cpy $87B2.w		; CC B2 87
	sei		; 78
	pea $92E3.w		; F4 E3 92
	wai		; CB
	sed		; F8
	brk $A0.b		; 00 A0
	bvc  80.b		; 50 50
	sei		; 78
	cmp ($16.b,X)		; C1 16
	cld		; D8
	brk $0F.b		; 00 0F
	sbc $5E.b,S		; E3 5E
	cmp $E3.b,S		; C3 E3
	cpy $A1B2.w		; CC B2 A1
	asl $27D8.w,X		; 1E D8 27
	xce		; FB
	cpy #$D952.w		; C0 52 D9
	bvc -39.b		; 50 D9
	cop $DA.b		; 02 DA
	ora $5E.b		; 05 5E
	jmp $14EAB8.l		; 5C B8 EA 14
	bne  32.b		; D0 20
	lda $FED9.w		; AD D9 FE
	cmp $3C.b,S		; C3 3C
	.db $82, $D2, $FF		; 82 D2 FF
	and [$18.b],Y		; 37 18
	sbc ($20.b)		; F2 20
	ora [$40.b],Y		; 17 40
	and $405EA0.l		; 2F A0 5E 40
	stz $7E80.w,X		; 9E 80 7E
	ora #$71B9.w		; 09 B9 71
	jsr ($FE10.w,X)		; FC 10 FE
	sec		; 38
	cpy #$8070.w		; C0 70 80
	cpx #$FE01.w		; E0 01 FE
	cpy #$0FFA.w		; C0 FA 0F
	inc $5F04.w,X		; FE 04 5F
	ldx $00.b,Y		; B6 00
	ora [$01.b]		; 07 01
	ora [$02.b]		; 07 02
	ora $FA7F05.l		; 0F 05 7F FA
	adc $D9D10F.l,X		; 7F 0F D1 D9
	eor $F00DB0.l,X		; 5F B0 0D F0
	asl A		; 0A
	ora $20D810.l		; 0F 10 D8 20
	beq  80.b		; F0 50
	beq -72.b		; F0 B8
	sed		; F8
	eor [$FF.b]		; 47 FF
	cld		; D8
	cmp ($E2.b)		; D2 E2
.ACCU 8
	sep #$E8		; E2 E8
	eor $1D0BB0.l,X		; 5F B0 0B 1D
	bra -64.b		; 80 C0
	eor $67.b		; 45 67
	rol A		; 2A
	sbc [$0B.b],Y		; F7 0B
	and $7F3F15.l,X		; 3F 15 3F 7F
	tda		; 7B
	tyx		; BB
	ora $3F001F.l,X		; 1F 1F 00 3F
	php		; 08
	lda $FFFED2.l,X		; BF D2 FE FF
	inc $EBD9.w,X		; FE D9 EB
	brk $E0.b		; 00 E0
	ora $8707FF.l,X		; 1F FF 07 87
	sta ($81.b,X)		; 81 81
	ora ($81.b,X)		; 01 81
	cmp ($C1.b,X)		; C1 C1
	xce		; FB
	eor $FEFB83.l		; 4F 83 FB FE
	inc $C6C6.w,X		; FE C6 C6
	ldy #$3E40.w		; A0 40 3E
	inc $3FF0.w,X		; FE F0 3F
	and $80B1.w,X		; 3D B1 80
	ora ($00.b,X)		; 01 00
	and $8ACA.w,Y		; 39 CA 8A
	pea $E8C4.w		; F4 C4 E8
	inx		; E8
	cpy #$8FFA.w		; C0 FA 8F
	sbc $55E460.l,X		; FF 60 E4 55
	jsr $003B.w		; 20 3B 00
	trb $03.b		; 14 03
	rol $AD01.w,X		; 3E 01 AD
	beq  -2.b		; F0 FE
	cmp ($5D.b,X)		; C1 5D
	sbc #$E0.b		; E9 E0
	ldy $E6D2.w		; AC D2 E6
	jsr ($0AD3.w,X)		; FC D3 0A
	brk $15.b		; 00 15
	and $470010.l,X		; 3F 10 00 47
	sec		; 38
	stx $39.b		; 86 39
	ror $99.b		; 66 99
	ora $C5E4.w,X		; 1D E4 C5
	adc $FE.b,S		; 63 FE
	php		; 08
	adc $0C.b,X		; 75 0C
	brk $4C.b		; 00 4C
	rtl		; 6B

	lsr $3EEC.w		; 4E EC 3E
	cpy $8A70.w		; CC 70 8A
	sbc ($4F.b,X)		; E1 4F
	bcs   4.b		; B0 04
	sbc ($67.b)		; F2 67
	tya		; 98
	adc $EFFC90.l		; 6F 90 FC EF
	phx		; DA
	sbc ($0C.b,S),Y		; F3 0C
	and $2FD717.l		; 2F 17 D7 2F
	pld		; 2B
	ora [$D4.b],Y		; 17 D4
	pld		; 2B
	sta [$F1.b],Y		; 97 F1
	ora $0BC2B7.l,X		; 1F B7 C2 0B
	and $0EBF1B.l,X		; 3F 1B BF 0E
	sbc ($07.b),Y		; F1 07
	asl $F1.b		; 06 F1
	sed		; F8
	cmp ($C4.b),Y		; D1 C4
	and $CBB43F.l,X		; 3F 3F B4 CB
	lda $DFAF5B.l,X		; BF 5B AF DF
	cpy #$08BF.w		; C0 BF 08
	ora [$0F.b]		; 07 0F
	sbc ($1C.b),Y		; F1 1C
	eor ($FF.b,X)		; 41 FF
	ora [$F1.b]		; 07 F1
	pla		; 68
	and $F20E.w,X		; 3D 0E F2
	sbc $AA0AF8.l		; EF F8 0A AA
	eor $77.b,X		; 55 77
	ldx $7FB6.w,Y		; BE B6 7F
	tas		; 1B
	sta $BE75.w		; 8D 75 BE
	stz $0B.b		; 64 0B
	sbc ($0C.b),Y		; F1 0C
	sbc $82.b		; E5 82
	sbc ($36.b),Y		; F1 36
	sbc $FF.b		; E5 FF
	inc $FE34.w,X		; FE 34 FE
	sbc #$EF.b		; E9 EF
	plx		; FA
	adc $FB77.w,X		; 7D 77 FB
	and $AF5FF7.l		; 2F F7 5F AF
	phd		; 0B
	and $06FF0E.l		; 2F 0E FF 06
	txs		; 9A
	lda $FFFE.w,Y		; B9 FE FF
	sei		; 78
	sbc $B13773.l,X		; FF 73 37 B1
	sed		; F8
	cmp $FDEFBE.l,X		; DF BE EF FD
	ldy #$405F.w		; A0 5F 40
	lda $017F80.l,X		; BF 80 7F 01
	sbc $A9FC02.l,X		; FF 02 FC A9
	ldx $2A7D.w,Y		; BE 7D 2A
	cpy #$12A8.w		; C0 A8 12
	php		; 08
	jsr ($FE14.w,X)		; FC 14 FE
	cpy #$ABAA.w		; C0 AA AB
	jsr $FAD9.w		; 20 D9 FA
	plx		; FA
	sbc $6DFD.w,X		; FD FD 6D
	inc $E1DD.w,X		; FE DD E1
	eor $00A6.w		; 4D A6 00
	bra -62.b		; 80 C2
	ora $FF.b,S		; 03 FF
	cmp $C3.b,S		; C3 C3
	xba		; EB
	xba		; EB
	eor $FC.b		; 45 FC
	eor $55.b,X		; 55 55
	trb $EA.b		; 14 EA
	ora $3CC3FE.l,X		; 1F FE C3 3C
	xba		; EB
	trb $01.b		; 14 01
	asl $AA55.w,X		; 1E 55 AA
	ldy $DB.b		; A4 DB
	ldy #$5040.w		; A0 40 50
	ldy $DFA1.w		; AC A1 DF
	sed		; F8
	stz $8E07.w		; 9C 07 8E
	sbc ($81.b),Y		; F1 81
	brk $83.b		; 00 83
	cpx #$BC1F.w		; E0 1F BC
	txs		; 9A
	sbc $40BF7F.l,X		; FF 7F BF 40
	sta [$78.b]		; 87 78
	sta ($7E.b,X)		; 81 7E
	.db $82, $7C, $84		; 82 7C 84
	sei		; 78
	brk $61.b		; 00 61
	brk $63.b		; 00 63
	brk $62.b		; 00 62
	sbc #$6F.b		; E9 6F
	sbc $AA.b,X		; F5 AA
	jmp ($BF05.w,X)		; 7C 05 BF
	brk $9E.b		; 00 9E
	brk $9C.b		; 00 9C
	bra 127.b		; 80 7F
	tax		; AA
	clc		; 18
	sbc $AC7FFF.l,X		; FF FF 7F AC
	ora $0E0E0F.l		; 0F 0F 0E 0E
	tas		; 1B
	tas		; 1B
	and ($33.b,S),Y		; 33 33
	sbc [$E7.b]		; E7 E7
	jmp $D8CC.w		; 4C CC D8
	cld		; D8
	ora $FE.b,X		; 15 FE
	sbc ($F1.b),Y		; F1 F1
	jsr $7FF1.w		; 20 F1 7F
	tay		; A8
	tsb $7FE0.w		; 0C E0 7F
	adc $83C2C2.l,X		; 7F C2 C2 83
	sta $E1.b,S		; 83 E1
	and $9F9F.w		; 2D 9F 9F
	eor $F4.b		; 45 F4
	pea $C4C4.w		; F4 C4 C4
	inx		; E8
	xba		; EB
	and $A87F.w,X		; 3D 7F A8
	ora #$0C.b		; 09 0C
	cmp $66.b,S		; C3 66
	sbc $DCF9.w,Y		; F9 F9 DC
	ora [$07.b]		; 07 07
	cpy #$6FFC.w		; C0 FC 6F
	sty $BCFC.w		; 8C FC BC
	ldy $8E8E.w,X		; BC 8E 8E
	lda [$B1.b]		; A7 B1
	asl $DC.b		; 06 DC
	sed		; F8
	ora $C0F0.w		; 0D F0 C0
	ora $E4.b,S		; 03 E4
	cmp #$71.b		; C9 71
	cpy $DE.b		; C4 DE
	adc ($61.b,X)		; 61 61
	and ($FF.b),Y		; 31 FF
	php		; 08
	and ($9E.b),Y		; 31 9E
	stz $CCCC.w,X		; 9E CC CC
	pla		; 68
	pla		; 68
	and ($30.b),Y		; 31 30
	cpy $F0.b		; C4 F0
	lda $CE7CDE.l		; AF DE 7C CE
	ora ($60.b,X)		; 01 60
	ora $30.b,S		; 03 30
	ora [$90.b]		; 07 90
	ora $21F10A.l		; 0F 0A F1 21
	pea $E244.w		; F4 44 E2
	tsb $77.b		; 04 77
	rti		; 40

	jsr ($AC2A.w,X)		; FC 2A AC
	cmp ($1B.b,X)		; C1 1B
	cpx $7F.b		; E4 7F
	sta $08F609.l		; 8F 09 F6 08
	sbc [$1C.b],Y		; F7 1C
	sbc $9C.b,S		; E3 9C
	and $F6.b,S		; 23 F6
	sbc ($F7.b)		; F2 F7
	php		; 08
	asl A		; 0A
	and ($02.b),Y		; 31 02
	cpx $FCAF.w		; EC AF FC
	jsl $08373B.l		; 22 3B 37 08
	xce		; FB
	and ($C0.b,S),Y		; 33 C0
	pei ($E8.b)		; D4 E8
	.db $62, $9D, $C0		; 62 9D C0
	pei ($E0.b)		; D4 E0
	ora ($C0.b),Y		; 11 C0
	sbc $C018EF.l,X		; FF EF 18 C0
	tsb $07E0.w		; 0C E0 07
	bpl  35.b		; 10 23
	php		; 08
	ora ($04.b)		; 12 04
	asl A		; 0A
	asl A		; 0A
	ora $C0.b		; 05 C0
	dec $33.b,X		; D6 33
	tad		; 5B
	pla		; 68
	cpy $E51A.w		; CC 1A E5
	cpy #$3BD2.w		; C0 D2 3B
	dex		; CA
	lda ($CF.b,X)		; A1 CF
	rts		; 60

	ldx $3CA1.w,Y		; BE A1 3C
	sbc [$EF.b],Y		; F7 EF
	phk		; 4B
	lda ($1F.b)		; B2 1F
	sbc $0AF8EF.l,X		; FF EF F8 0A
	adc $E01F80.l,X		; 7F 80 1F E0
	adc ($FF.b),Y		; 71 FF
	eor $55.b,S		; 43 55
	sbc ($18.b,X)		; E1 18
	ora [$DA.b],Y		; 17 DA
	sbc $F0FFF8.l,X		; FF F8 FF F0
	eor $FFDCF1.l		; 4F F1 DC FF
	sbc $C00EF8.l		; EF F8 0E C0
	tas		; 1B
	cmp ($78.b),Y		; D1 78
	mvp $D1,$30		; 44 30 D1
	dec $9EFF.w		; CE FF 9E
.ACCU 8
	sep #$E0		; E2 E0
	eor ($AF.b,X)		; 41 AF
	sbc $B50EF8.l		; EF F8 0E B5
	tay		; A8
	sbc ($80.b,S),Y		; F3 80
	lda $FFF5.w,Y		; B9 F5 FF
	xce		; FB
	sbc $FDC083.l,X		; FF 83 C0 FD
	inc $C2FD.w,X		; FE FD C2
	inc $48AB.w,X		; FE AB 48
	lda #$BF.b		; A9 BF
	sbc $BFF575.l,X		; FF 75 F5 BF
	inc $EAEA.w,X		; FE EA EA
	cmp $D5.b,X		; D5 D5
	tay		; A8
	tay		; A8
	bvc   0.b		; 50 00
	sta $54.b,X		; 95 54
	sbc ($15.b,X)		; E1 15
	cmp $2A.b,X		; D5 2A
	tay		; A8
	eor [$61.b],Y		; 57 61
	sei		; 78
	eor ($AE.b),Y		; 51 AE
	inx		; E8
	pea $E8F4.w		; F4 F4 E8
	rti		; 40

	eor ($80.b,X)		; 41 80
	sta $03.b,S		; 83 03
	jsr ($E1AE.w,X)		; FC AE E1
	and $F4E8E5.l,X		; 3F E5 E8 F4
	phd		; 0B
	lda #$56.b		; A9 56
	.db $42, $5F		; 42 5F
	ldx $BC.b,Y		; B6 BC
	sty $78.b		; 84 78
	php		; 08
	beq  64.b		; F0 40
	ldy $EAE2.w,X		; BC E2 EA
	stx $D1.b,Y		; 96 D1
	sbc ($C1.b,X)		; E1 C1
	adc $01F122.l,X		; 7F 22 F1 01
	inc $FCEA.w,X		; FE EA FC
	cop $00.b		; 02 00
	bpl  14.b		; 10 0E
	rti		; 40

	rol $7E80.w,X		; 3E 80 7E
	adc $E12A09.l		; 6F 09 2A E1
	sbc [$00.b]		; E7 00
	and [$2D.b],Y		; 37 2D
	sta ($0E.b),Y		; 91 0E
	lda #$99.b		; A9 99
	inc $F83E.w,X		; FE 3E F8
	and $C03818.l		; 2F 18 38 C0
	bpl -31.b		; 10 E1
	inc $AE7F.w,X		; FE 7F AE
	asl A		; 0A
	ora $AFFF15.l,X		; 1F 15 FF AF
	ora $171F0B.l,X		; 1F 0B 1F 17
	ora $463F2B.l,X		; 1F 2B 3F 46
	ror $86.b		; 66 86
	dec $47.b		; C6 47
	cmp [$F7.b]		; C7 F7
	cmp $F1FF.w		; CD FF F1
	adc $FBFBAF.l,X		; 7F AF FB FB
	and $6F6F3F.l,X		; 3F 3F 6F 6F
	adc [$67.b]		; 67 67
	jmp $4FFF.w		; 4C FF 4F
	eor $FCFFF5.l		; 4F F5 FF FC
	jsr ($F175.w,X)		; FC 75 F1
	adc $030BA8.l,X		; 7F A8 0B 03
	ldy $A4.b		; A4 A4
	bit $34.b,X		; 34 34
	asl $CF1E.w,X		; 1E 1E CF
	cmp $C17F7F.l		; CF 7F 7F C1
	adc $F83C3C.l,X		; 7F 3C 3C F8
	sed		; F8
	sec		; 38
	sec		; 38
	brk $7F.b		; 00 7F
	tax		; AA
	ldx #$AE7F.w		; A2 7F AE
	sbc $97C7F0.l,X		; FF F0 C7 97
	sta [$B3.b],Y		; 97 B3
	lda ($E3.b,S),Y		; B3 E3
	sbc $CC.b,S		; E3 CC
	cpy $F0E4.w		; CC E4 F0
	beq 122.b		; F0 7A
	bcs   3.b		; B0 03
	bvs  -1.b		; 70 FF
	brk $68.b		; 00 68
	adc ($E1.b,S),Y		; 73 E1
	trb $E003.w		; 1C 03 E0
	tsb $E4FF.w		; 0C FF E4
	ora $8FDC0F.l		; 0F 0F DC 8F
	.db $62, $60, $81		; 62 60 81
	bra  11.b		; 80 0B
	brk $BF.b		; 00 BF
	sbc $8B0013.l,X		; FF 13 00 8B
	brk $43.b		; 00 43
	cop $89.b		; 02 89
	sec		; 38
	sbc ($1F.b),Y		; F1 1F
	bra 115.b		; 80 73
	tsb $24DB.w		; 0C DB 24
	txy		; 9B
	eor $1B.b,S		; 43 1B
	stz $CB.b		; 64 CB
	bit $FE.b,X		; 34 FE
	cmp #$C0.b		; C9 C0
	cmp ($A3.b),Y		; D1 A3
	cmp ($8D.b)		; D2 8D
	beq -61.b		; F0 C3
	sta [$8D.b]		; 87 8D
	sty $03FE.w		; 8C FE 03
	sbc $1C.b,S		; E3 1C
	sbc ($1E.b,X)		; E1 1E
	inc $DDFF.w,X		; FE FF DD
	cmp ($3E.b,X)		; C1 3E
	beq  15.b		; F0 0F
	tya		; 98
	adc [$8C.b]		; 67 8C
	adc ($8F.b,S),Y		; 73 8F
	bvs 111.b		; 70 6F
	sbc #$01.b		; E9 01
	sbc ($26.b),Y		; F1 26
	cmp $F77F.w,Y		; D9 7F F7
	pei ($2A.b)		; D4 2A
	tay		; A8
	lsr $10.b,X		; 56 10
	sbc $C0EF08.l,X		; FF 08 EF C0
	cmp ($FB.b)		; D2 FB
	tsb $C0.b		; 04 C0
	dec $EF.b,X		; D6 EF
	bpl -33.b		; 10 DF
	eor $05.b,X		; 55 05
	txa		; 8A
	tax		; AA
	eor $50.b,X		; 55 50
	lda $87B52F.l		; AF 2F B5 87
	brk $C0.b		; 00 C0
	cmp ($6A.b,S),Y		; D3 6A
	txa		; 8A
	cpy #$50D6.w		; C0 D6 50
	sta $5E.b,X		; 95 5E
	lda $82EBD5.l,X		; BF D5 EB 82
	cpy #$E0D1.w		; C0 D1 E0
	cpy $C0.b		; C4 C0
	bne   9.b		; D0 09
	sta $20.b		; 85 20
	cmp ($31.b),Y		; D1 31
	ldy $FE.b		; A4 FE
	adc $D14C2C.l		; 6F 2C 4C D1
	sbc $01.b,X		; F5 01
	sbc ($80.b),Y		; F1 80
	lda $6FD2.w,Y		; B9 D2 6F
	bcc -61.b		; 90 C3
	bit $0AD1.w,X		; 3C D1 0A
	and [$99.b]		; 27 99
	rol $9D64.w,X		; 3E 64 9D
	inc $FF57.w,X		; FE 57 FF
	sbc $5FC1C0.l,X		; FF C0 C1 5F
	sbc $74FAFC.l		; EF FC FA 74
	cmp ($FE.b),Y		; D1 FE
	inc $FDFD.w,X		; FE FD FD
	tsx		; BA
	plx		; FA
	jsr $FFF2.w		; 20 F2 FF
	phx		; DA
	ror $D4BA.w,X		; 7E BA D4
	pei ($FE.b)		; D4 FE
	sbc ($FD.b,X)		; E1 FD
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	stz $D2.b,X		; 74 D2
	sec		; 38
	sbc ($E8.b),Y		; F1 E8
	dey		; 88
	cmp $700F.w,Y		; D9 0F 70
	ldy #$A1.b		; A0 A1
	rti		; 40

	eor $80.b,S		; 43 80
	pla		; 68
	rts		; 60

	ora $FF1900.l,X		; 1F 00 19 FF
	ora $B103.w,X		; 1D 03 B1
	bmi -94.b		; 30 A2
	jmp $88B844.l		; 5C 44 B8 88
	bvs  16.b		; 70 10
	ror $24F1.w,X		; 7E F1 24
	rep #$42		; C2 42
	cpy $4864.w		; CC 64 48
	inc $F9.b		; E6 F9
	ora $03.b,S		; 03 03
	inc $FE75.w,X		; FE 75 FE
	adc ($92.b),Y		; 71 92
	cmp [$06.b]		; C7 06
	brk $22.b		; 00 22
	trb $7C80.w		; 1C 80 7C
	adc $9B.b		; 65 9B
	php		; 08
	cmp $1820.w,Y		; D9 20 18
	ldy $2CF8.w		; AC F8 2C
	cpx $D370.w		; EC 70 D3
	ora $99.b,X		; 15 99
	inc $40F1.w,X		; FE F1 40
	sec		; 38
	rti		; 40

	asl A		; 0A
	bpl -42.b		; 10 D6
	trb $83.b		; 14 83
	txs		; 9A
	and $01FE82.l,X		; 3F 82 FE 01
	tay		; A8
	asl $F3.b		; 06 F3
	cop $0E.b		; 02 0E
	tsb $0E.b		; 04 0E
	cop $07.b		; 02 07
	ora $E8.b		; 05 E8
	stz $FF.b,X		; 74 FF
	ldx $06.b		; A6 06
	sbc ($FE.b,S),Y		; F3 FE
	sbc #$F1.b		; E9 F1
	php		; 08
	sei		; 78
	sbc ($87.b,X)		; E1 87
	cmp [$46.b]		; C7 46
	dec $26.b		; C6 26
	ror $17.b		; 66 17
	rtl		; 6B

	ora [$3F.b],Y		; 17 3F
	ora $FCFF1F.l		; 0F 1F FF FC
	jmp ($0639.w,X)		; 7C 39 06
	sbc ($79.b),Y		; F1 79
	stz $FDE0.w,X		; 9E E0 FD
	sbc [$80.b],Y		; F7 80
	tax		; AA
	tsb $F2.b		; 04 F2
	adc [$67.b]		; 67 67
	adc $3F3F6F.l		; 6F 6F 3F 3F
	xce		; FB
	xce		; FB
	bra -86.b		; 80 AA
	brk $B3.b		; 00 B3
	sbc $B102FF.l		; EF FF 02 B1
	php		; 08
	bcc  16.b		; 90 10
	ora ($7A.b,X)		; 01 7A
	tsb $38.b		; 04 38
	sec		; 38
	sed		; F8
	sed		; F8
	bit $7F3C.w,X		; 3C 3C 7F
	adc $CF85E1.l,X		; 7F E1 85 CF
	cmp $3434C4.l		; CF C4 34 34
	ldy $A4.b		; A4 A4
	bcs -15.b		; B0 F1
	stz $FFC6.w		; 9C C6 FF
	cmp $02.b,S		; C3 02
	sbc ($30.b),Y		; F1 30
	rep #$CB		; C2 CB
	brk $5B.b		; 00 5B
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	cpy #$51.b		; C0 51
	jsr ($80C0.w,X)		; FC C0 80
	sbc $6BBAD3.l,X		; FF D3 BA 6B
	sta $30801F.l		; 8F 1F 80 30
	sbc $780F1F.l,X		; FF 1F 0F 78
	ora [$4F.b]		; 07 4F
	bmi -25.b		; 30 E7
	clc		; 18
	lda ($4C.b,S),Y		; B3 4C
	sta [$68.b],Y		; 97 68
	lda $FF0900.l		; AF 00 09 FF
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	phd		; 0B
	brk $1A.b		; 00 1A
	ora ($D2.b,X)		; 01 D2
	ora ($F2.b,X)		; 01 F2
	lsr $3DD1.w,X		; 5E D1 3D
	cmp #$FFF0.w		; C9 F0 FF
	rol $FE.b,X		; 36 FE
	wai		; CB
	bit $9B.b,X		; 34 9B
	stz $D3.b		; 64 D3
	bit $0CF3.w		; 2C F3 0C
	and $BF88C0.l,X		; 3F C0 88 BF
	sed		; F8
	ora [$80.b]		; 07 80
	tsb $1880.w		; 0C 80 18
	bra 112.b		; 80 70
	sbc $48EB.w,Y		; F9 EB 48
	sta $EF8C70.l		; 8F 70 8C EF
	bvs 115.b		; 70 73
	tya		; 98
	adc [$F0.b]		; 67 F0
	ora $E3EAFA.l		; 0F FA EA E3
	trb $04FE.w		; 1C FE 04
	sbc [$01.b]		; E7 01
	cpy #$E816.w		; C0 16 E8
	cli		; 58
	jsr $E94E.w		; 20 4E E9
	rti		; 40

	tax		; AA
	cmp #$F540.w		; C9 40 F5
	tax		; AA
	inx		; E8
	ora $D4.b		; 05 D4
	clc		; 18
	dex		; CA
	bit $91.b		; 24 91
	txs		; 9A
	lda $1F10.w,Y		; B9 10 1F
	lda $0F085E.l		; AF 5E 08 0F
	tsb $07.b		; 04 07
	cop $EE.b		; 02 EE
	sbc ($CA.b,S),Y		; F3 CA
	phx		; DA
	cop $BA.b		; 02 BA
	ora [$F8.b]		; 07 F8
	ora $CE.b,S		; 03 CE
	pea $41A1.w		; F4 A1 41
	ldy $F4.b		; A4 F4
	lsr $22F3.w		; 4E F3 22
	adc ($FF.b),Y		; 71 FF
	dec $C0.b,X		; D6 C0
	dec $D0.b,X		; D6 D0
	ldx $D884.w		; AE 84 D8
	ldy $A7.b,X		; B4 A7
	wai		; CB
	ora $00.b,S		; 03 00
	cmp #$051F.w		; C9 1F 05
	sec		; 38
	sbc $01.b,S		; E3 01
	rti		; 40

	bmi -31.b		; 30 E1
	inc $C2E0.w,X		; FE E0 C2
	inc $E7.b		; E6 E7
	cpx $D78B.w		; EC 8B D7
	dex		; CA
	adc ($AF.b)		; 72 AF
	sty $8A.b		; 84 8A
	jsr ($FEBE.w,X)		; FC BE FE
	lsr $D040.w,X		; 5E 40 D0
	tsb $EA7E.w		; 0C 7E EA
	lda $E8E8F8.l,X		; BF F8 E8 E8
	bne -48.b		; D0 D0
	ldy #$C0A0.w		; A0 A0 C0
	sed		; F8
	plb		; AB
	jsr ($E841.w,X)		; FC 41 E8
	ora [$07.b],Y		; 17 07
	sed		; F8
	bne  47.b		; D0 2F
	ldy #$665F.w		; A0 5F 66
	jsr ($BE41.w,X)		; FC 41 BE
	lda ($5E.b,X)		; A1 5E
	and $42A4.w		; 2D A4 42
	ldy $A18B.w,X		; BC 8B A1
	adc ($49.b),Y		; 71 49
	cmp $73FE.w,Y		; D9 FE 73
	cmp $57E0.w		; CD E0 57
	jsr $8CA2.w		; 20 A2 8C
	cmp ($10.b,X)		; C1 10
	stx $0C92.w		; 8E 92 0C
	sty $F341.w		; 8C 41 F3
	rtl		; 6B

	lda #$FD0B.w		; A9 0B FD
	sta ($72.b,S),Y		; 93 72
	ora $E9E4.w		; 0D E4 E9
	rts		; 60

	inc $16.b		; E6 16
	sbc ($40.b)		; F2 40
	sec		; 38
	php		; 08
	bvs  23.b		; 70 17
	phx		; DA
	bcc  98.b		; 90 62
	jsr $2BC6.w		; 20 C6 2B
	cmp #$13EC.w		; C9 EC 13
	bit $3FEB.w		; 2C EB 3F
	cmp $F5B6E3.l,X		; DF E3 B6 F5
	cmp $7AE95C.l		; CF 5C E9 7A
	sec		; 38
	cmp ($78.b),Y		; D1 78
	ror A		; 6A
	sbc ($1E.b),Y		; F1 1E
	rep #$C1		; C2 C1
	ror $85E2.w,X		; 7E E2 85
	brk $02.b		; 00 02
	brk $1D.b		; 00 1D
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sbc $F8FF00.l,X		; FF 00 FF F8
	pha		; 48
	bra   7.b		; 80 07
	sta ($07.b,X)		; 81 07
	.db $82, $07, $83		; 82 07 83
	ora [$84.b]		; 07 84
	ora [$85.b]		; 07 85
	ora [$FF.b]		; 07 FF
	sbc $870786.l,X		; FF 86 07 87
	ora [$88.b]		; 07 88
	ora [$89.b]		; 07 89
	ora [$8A.b]		; 07 8A
	ora [$8B.b]		; 07 8B
	ora [$8C.b]		; 07 8C
	ora [$8D.b]		; 07 8D
	ora [$FF.b]		; 07 FF
	adc $8F078E.l,X		; 7F 8E 07 8F
	ora [$A0.b]		; 07 A0
	ora [$A1.b]		; 07 A1
	ora [$A2.b]		; 07 A2
	ora [$A3.b]		; 07 A3
	ora [$A4.b]		; 07 A4
	ora [$A5.b]		; 07 A5
	ora [$FF.b]		; 07 FF
	sbc $13F8C0.l,X		; FF C0 F8 13
	bcc   7.b		; 90 07
	sta ($07.b),Y		; 91 07
	sta ($07.b)		; 92 07
	sta ($07.b,S),Y		; 93 07
	sty $07.b,X		; 94 07
	sta $07.b,X		; 95 07
	stx $07.b,Y		; 96 07
	sbc $0797FF.l,X		; FF FF 97 07
	tya		; 98
	ora [$99.b]		; 07 99
	ora [$9A.b]		; 07 9A
	ora [$9B.b]		; 07 9B
	ora [$9C.b]		; 07 9C
	ora [$9D.b]		; 07 9D
	ora [$9E.b]		; 07 9E
	ora [$FF.b]		; 07 FF
	sbc $B0079F.l		; EF 9F 07 B0
	ora [$B1.b]		; 07 B1
	ora [$B2.b]		; 07 B2
	ora [$B3.b]		; 07 B3
	ora [$B4.b]		; 07 B4
	ora [$B5.b]		; 07 B5
	cpy #$12F8.w		; C0 F8 12
	ldx $BF.b		; A6 BF
	sbc [$0E.b],Y		; F7 0E
	lda [$0E.b]		; A7 0E
	mvp $45,$0E		; 44 0E 45
	asl $F85A.w		; 0E 5A F8
	ora $A90EA8.l,X		; 1F A8 0E A9
	cld		; D8
	sed		; F8
	trb $B6.b		; 14 B6
	asl $FDEF.w		; 0E EF FD
	lda [$0E.b],Y		; B7 0E
	mvn $55,$0E		; 54 0E 55
	cpy #$20F8.w		; C0 F8 20
	clv		; B8
	asl $D8B9.w		; 0E B9 D8
	sed		; F8
	asl $11E0.w		; 0E E0 11
	sbc ($11.b,X)		; E1 11
	sbc $11AE7F.l,X		; FF 7F AE 11
	lda $11EA11.l		; AF 11 EA 11
	xba		; EB
	ora ($66.b),Y		; 11 66
	ora ($67.b),Y		; 11 67
	ora ($02.b),Y		; 11 02
	ora ($03.b)		; 12 03
	ora ($FA.b)		; 12 FA
	adc $0DE6E8.l,X		; 7F E8 E6 0D
	sbc [$0D.b]		; E7 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	tax		; AA
	ora $0DAB.w		; 0D AB 0D
	sbc $F8D8FF.l,X		; FF FF D8 F8
	tas		; 1B
	beq  17.b		; F0 11
	sbc ($11.b),Y		; F1 11
	ldx $BF11.w,Y		; BE 11 BF
	ora ($FA.b),Y		; 11 FA
	ora ($FB.b),Y		; 11 FB
	ora ($76.b),Y		; 11 76
	ora ($CF.b),Y		; 11 CF
	sbc $121177.l,X		; FF 77 11 12
	ora ($13.b)		; 12 13
	inx		; E8
	inc $0D.b,X		; F6 0D
	sbc [$0D.b],Y		; F7 0D
	stz $0D.b,X		; 74 0D
	adc $67.b,X		; 75 67
	lda $BA0D.w,X		; BD 0D BA
	ora $C0BB.w		; 0D BB C0
	cld		; D8
	sed		; F8
	ora [$FF.b],Y		; 17 FF
	inc $0E6A.w,X		; FE 6A 0E
	rtl		; 6B

	sbc $F86A7F.l,X		; FF 7F 6A F8
	asl A		; 0A
	inc $0E.b		; E6 0E
	sbc [$0E.b]		; E7 0E
	ror $0F.b		; 66 0F
	adc [$0F.b]		; 67 0F
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	ldy $0D.b		; A4 0D
	lda $D6.b		; A5 D6
	xce		; FB
	ldx $F8D8.w,Y		; BE D8 F8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	ora #$0E7A.w		; 09 7A 0E
	tda		; 7B
	inx		; E8
	sed		; F8
	asl A		; 0A
	inc $0E.b,X		; F6 0E
	sbc [$FF.b],Y		; F7 FF
	eor [$0E.b],Y		; 57 0E
	ror $0F.b,X		; 76 0F
	adc [$0F.b],Y		; 77 0F
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	ldy $0D.b,X		; B4 0D
	lda $C0.b,X		; B5 C0
	sed		; F8
	asl A		; 0A
	cld		; D8
	sed		; F8
	ora $D5EF.w		; 0D EF D5
	sbc $6809F8.l,X		; FF F8 09 68
	asl $E869.w		; 0E 69 E8
	sed		; F8
	asl A		; 0A
	cpx $0E.b		; E4 0E
	sbc $80.b		; E5 80
	sed		; F8
	asl $D8.b,X		; 16 D8
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	ora #$F57B.w		; 09 7B F5
	sei		; 78
	asl $E879.w		; 0E 79 E8
	sed		; F8
	asl A		; 0A
	pea $F50E.w		; F4 0E F5
	bra  -8.b		; 80 F8
	asl $D8.b,X		; 16 D8
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	ora #$0E66.w		; 09 66 0E
	inc $675F.w,X		; FE 5F 67
	brk $F8.b		; 00 F8
	asl $0D80.w		; 0E 80 0D
	sta ($0D.b,X)		; 81 0D
	stz $0F.b		; 64 0F
	adc $0F.b		; 65 0F
	.db $82, $0D, $83		; 82 0D 83
	cpy #$0AF8.w		; C0 F8 0A
	lda $D8FF.w,X		; BD FF D8
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	ora #$0E76.w		; 09 76 0E
	adc [$00.b],Y		; 77 00
	sed		; F8
	asl $0D90.w		; 0E 90 0D
	sta ($0D.b),Y		; 91 0D
	stz $0F.b,X		; 74 0F
	adc $57.b,X		; 75 57
	lda $0D920F.l		; AF 0F 92 0D
	sta ($C0.b,S),Y		; 93 C0
	sed		; F8
	asl A		; 0A
	cld		; D8
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	ora #$0E64.w		; 09 64 0E
	adc $00.b		; 65 00
	sed		; F8
	asl $D57A.w		; 0E 7A D5
	bra  -8.b		; 80 F8
	ora $D8.b,X		; 15 D8
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	ora #$0E74.w		; 09 74 0E
	adc $00.b,X		; 75 00
	sed		; F8
	asl $F880.w		; 0E 80 F8
	ora $D8.b,X		; 15 D8
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	ora #$FF4B.w		; 09 4B FF
	inc $EF0E.w		; EE 0E EF
	inx		; E8
	sbc $2C04.w,X		; FD 04 2C
	ora $2E0F2D.l		; 0F 2D 0F 2E
	ora $A5EA2F.l		; 0F 2F EA A5
	ora $0FE87A.l		; 0F 7A E8 0F
	cld		; D8
	sed		; F8
	phd		; 0B
	sbc $FE0DF8.l,X		; FF F8 0D FE
	asl $E8FF.w		; 0E FF E8
	sbc $7F04.w,X		; FD 04 7F
	sta $3C.b,X		; 95 3C
	ora $3E0F3D.l		; 0F 3D 0F 3E
	ora $7A0F3F.l		; 0F 3F 0F 7A
	inx		; E8
	ora $0BF8D8.l		; 0F D8 F8 0B
	bra  -8.b		; 80 F8
	ora [$24.b],Y		; 17 24
	sbc $8004.w,X		; FD 04 80
	sed		; F8
	tsa		; 3B
	tsb $80.b		; 04 80
	sed		; F8
	and ($FF.b),Y		; 31 FF
	sed		; F8
	sta $0D8A.w		; 8D 8A 0D
	phb		; 8B
	ora $F5F3.w		; 0D F3 F5
	ldx $0D.b		; A6 0D
	lda [$04.b]		; A7 04
	stx $8F0D.w		; 8E 0D 8F
	rti		; 40

	beq  10.b		; F0 0A
	sbc $9A25F8.l,X		; FF F8 25 9A
	ora $D7CF.w		; 0D CF D7
	txy		; 9B
	ora $0DB6.w		; 0D B6 0D
	lda [$04.b],Y		; B7 04
	stz $9F0D.w,X		; 9E 0D 9F
	cpy #$20F8.w		; C0 F8 20
	stz $D3EB.w		; 9C EB D3
	sbc $0E010E.l,X		; FF 0E 01 0E
	dey		; 88
	ldx #$A30D.w		; A2 0D A3
	ora $0E02.w		; 0D 02 0E
	ora $0E.b,S		; 03 0E
	tay		; A8
	cmp $0DF3.w,Y		; D9 F3 0D
	lda #$7880.w		; A9 80 78
	nop		; EA
	cpx $ED0D.w		; EC 0D ED
	pea $5FCA.w		; F4 CA 5F
	sta $0ECB0E.l,X		; 9F 0E CB 0E
	dec $CF0E.w		; CE 0E CF
	ldx $10F0.w,Y		; BE F0 10
	stz $10EA.w		; 9C EA 10
	asl $0E11.w		; 0E 11 0E
	inc $88CF.w,X		; FE CF 88
	lda ($0D.b)		; B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ora ($0E.b)		; 12 0E
	ora ($0E.b,S),Y		; 13 0E
	clv		; B8
	ora $9EB9.w		; 0D B9 9E
	sbc $EA7880.l,X		; FF 80 78 EA
	jsr ($FD0D.w,X)		; FC 0D FD
	pea $0EDA.w		; F4 DA 0E
	stp		; DB
	asl $0EDE.w		; 0E DE 0E
	tax		; AA
	brk $DF.b		; 00 DF
	ror $A2F0.w,X		; 7E F0 A2
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	plp		; 28
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b		; 24 00
	brk $01.b		; 00 01
	php		; 08
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
	brk $10.b		; 00 10
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
	clc		; 18
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
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
	brk $04.b		; 00 04
	pha		; 48
	jsr $2000.w		; 20 00 20
	iny		; C8
	pla		; 68
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
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
	cop $00.b		; 02 00
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
	brk $C2.b		; 00 C2
	bmi -51.b		; 30 CD
	trb $F01C.w		; 1C 1C F0
	tsb $1A.b		; 04 1A
	inc A		; 1A
	bra   3.b		; 80 03
	lda #$0000.w		; A9 00 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	cmp #$0000.w		; C9 00 00
	beq   4.b		; F0 04
	dec A		; 3A
	dec A		; 3A
	bra   3.b		; 80 03
	lda $1C1C.w		; AD 1C 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C32.w		; AD 32 1C
	bmi  10.b		; 30 0A
	lda $1C30.w		; AD 30 1C
	cmp $1C36.w		; CD 36 1C
	bpl 118.b		; 10 76
	bra   8.b		; 80 08
	lda $1C30.w		; AD 30 1C
	cmp $1C34.w		; CD 34 1C
	bmi 108.b		; 30 6C
	lda $1C30.w		; AD 30 1C
	sta $1C2E.w		; 8D 2E 1C
	clc		; 18
	adc $1C32.w		; 6D 32 1C
	sta $1C30.w		; 8D 30 1C
	eor $1C2E.w		; 4D 2E 1C
	and #$0020.w		; 29 20 00
	beq  87.b		; F0 57
	lda $1C32.w		; AD 32 1C
	beq  82.b		; F0 52
	bmi  38.b		; 30 26
	nop		; EA
	lda $1C30.w		; AD 30 1C
	sec		; 38
	sbc #$0040.w		; E9 40 00
	asl A		; 0A
	clc		; 18
	adc #$0780.w		; 69 80 07
	clc		; 18
	adc $1C2C.w		; 6D 2C 1C
	and #$FFC0.w		; 29 C0 FF
	sta $1C26.w		; 8D 26 1C
	sta $1C2A.w		; 8D 2A 1C
	lda $1C30.w		; AD 30 1C
	sec		; 38
	sbc #$0020.w		; E9 20 00
	and #$03E0.w		; 29 E0 03
	bra  35.b		; 80 23
	nop		; EA
	lda $1C30.w		; AD 30 1C
	sec		; 38
	sbc #$0020.w		; E9 20 00
	asl A		; 0A
	sec		; 38
	sbc #$0080.w		; E9 80 00
	clc		; 18
	adc $1C2C.w		; 6D 2C 1C
	and #$FFC0.w		; 29 C0 FF
	sta $1C26.w		; 8D 26 1C
	sta $1C2A.w		; 8D 2A 1C
	lda $1C30.w		; AD 30 1C
	and #$FFFC.w		; 29 FC FF
	and #$03E0.w		; 29 E0 03
	clc		; 18
	adc $1C22.w		; 6D 22 1C
	sta $1C20.w		; 8D 20 1C
	ldx $1C38.w		; AE 38 1C
	lda $1C30.w		; AD 30 1C
	lsr A		; 4A
	lsr A		; 4A
	sta $0000.w,X		; 9D 00 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C12.w		; AD 12 1C
	sta $10.b		; 85 10
	lda $1C14.w		; AD 14 1C
	sta $12.b		; 85 12
	lda [$10.b]		; A7 10
	inc $10.b		; E6 10
	inc $10.b		; E6 10
	sta $14.b		; 85 14
	lda [$10.b]		; A7 10
	inc $10.b		; E6 10
	inc $10.b		; E6 10
	sta $16.b		; 85 16
	lda [$10.b]		; A7 10
	inc $10.b		; E6 10
	inc $10.b		; E6 10
	sta $00.b		; 85 00
	lda [$10.b]		; A7 10
	inc $10.b		; E6 10
	inc $10.b		; E6 10
	sta $04.b		; 85 04
	lda #$0000.w		; A9 00 00
	sta $02.b		; 85 02
	jsr $80FB.w		; 20 FB 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $04.b		; C6 04
	beq  17.b		; F0 11
	lda $10.b		; A5 10
	clc		; 18
	adc $00.b		; 65 00
	sta $10.b		; 85 10
	lda $14.b		; A5 14
	clc		; 18
	adc #$0040.w		; 69 40 00
	sta $14.b		; 85 14
	bra -26.b		; 80 E6
	rts		; 60

	php		; 08
.ACCU 8
	sep #$20		; E2 20
	lda $16.b		; A5 16
	and #$01.b		; 29 01
	sta $16.b		; 85 16
	lda $14.b		; A5 14
	sta WMADDL.w		; 8D 81 21
	lda $15.b		; A5 15
	sta WMADDM.w		; 8D 82 21
	lda $16.b		; A5 16
	sta WMADDH.w		; 8D 83 21
	lda $02.b		; A5 02
	sta DMAP0.w		; 8D 00 43
	lda #$80.b		; A9 80
	sta DMADEST0.w		; 8D 01 43
	lda $10.b		; A5 10
	sta DMASRC0L.w		; 8D 02 43
	lda $11.b		; A5 11
	sta DMASRC0H.w		; 8D 03 43
	lda $12.b		; A5 12
	sta DMASRC0B.w		; 8D 04 43
	lda $00.b		; A5 00
	sta DMALEN0L.w		; 8D 05 43
	lda $01.b		; A5 01
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
	plp		; 28
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  32.b		; D0 20
	lda $1C02.w		; AD 02 1C
	bne  27.b		; D0 1B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	ora $62.b		; 05 62
	and #$5080.w		; 29 80 50
	beq  16.b		; F0 10
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
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

.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  35.b		; D0 23
	lda $1C02.w		; AD 02 1C
	bne  30.b		; D0 1E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$FE.b]		; A7 FE
	and #$1000.w		; 29 00 10
	beq  21.b		; F0 15
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
.ACCU 8
	sep #$20		; E2 20
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  83.b		; D0 53
	lda $1C02.w		; AD 02 1C
	bne  78.b		; D0 4E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	ora $62.b		; 05 62
	and #$1000.w		; 29 00 10
	beq  21.b		; F0 15
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
.ACCU 8
	sep #$20		; E2 20
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	cmp #$0004.w		; C9 04 00
	beq  34.b		; F0 22
	cmp #$0003.w		; C9 03 00
	beq  29.b		; F0 1D
	lda $60.b		; A5 60
	ora $62.b		; 05 62
	and #$2000.w		; 29 00 20
	beq  20.b		; F0 14
	lda #$00FF.w		; A9 FF 00
	sta $1B12.w		; 8D 12 1B
	rts		; 60

	jsr $F2A9.w		; 20 A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  40.b		; D0 28
	lda $1C02.w		; AD 02 1C
	bne  35.b		; D0 23
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $61.b		; A5 61
	ora $63.b		; 05 63
	and #$0010.w		; 29 10 00
	beq  24.b		; F0 18
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
.ACCU 8
	sep #$20		; E2 20
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
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

	phb		; 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
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
	stz $98.b		; 64 98
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C18.w		; AE 18 1C
	lda $BCFF.w,X		; BD FF BC
	tax		; AA
	jsr $82CA.w		; 20 CA 82
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C18.w		; AE 18 1C
	lda $BCCD.w,X		; BD CD BC
	tax		; AA
	jsr $82CA.w		; 20 CA 82
	rts		; 60

	php		; 08
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8272.w		; 20 72 82
	plb		; AB
	plp		; 28
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C18.w		; AE 18 1C
	lda $BCFF.w,X		; BD FF BC
	tax		; AA
	lda $0004.w,X		; BD 04 00
	sta $00.b		; 85 00
	lda $0006.w,X		; BD 06 00
	and #$00FF.w		; 29 FF 00
	sta $02.b		; 85 02
	lda $0007.w,X		; BD 07 00
	sta $03.b		; 85 03
	lda $0009.w,X		; BD 09 00
	and #$00FF.w		; 29 FF 00
	sta $05.b		; 85 05
.ACCU 8
	sep #$20		; E2 20
	jsl $80927D.l		; 22 7D 92 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C18.w		; AE 18 1C
	lda $BCCD.w,X		; BD CD BC
	tax		; AA
	lda $0004.w,X		; BD 04 00
	sta $00.b		; 85 00
	lda $0006.w,X		; BD 06 00
	and #$00FF.w		; 29 FF 00
	sta $02.b		; 85 02
	lda $0007.w,X		; BD 07 00
	sta $03.b		; 85 03
	lda $0009.w,X		; BD 09 00
	and #$00FF.w		; 29 FF 00
	sta $05.b		; 85 05
.ACCU 8
	sep #$20		; E2 20
	jsl $80927D.l		; 22 7D 92 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0004.w,X		; BD 04 00
	sta $00.b		; 85 00
	lda $0006.w,X		; BD 06 00
	and #$00FF.w		; 29 FF 00
	sta $02.b		; 85 02
	lda $0007.w,X		; BD 07 00
	sta $03.b		; 85 03
	lda $0009.w,X		; BD 09 00
	and #$00FF.w		; 29 FF 00
	sta $05.b		; 85 05
	stx $1C1A.w		; 8E 1A 1C
.ACCU 8
	sep #$20		; E2 20
	jsl $80927D.l		; 22 7D 92 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C1A.w		; AE 1A 1C
	lda $0000.w,X		; BD 00 00
	sta $00.b		; 85 00
	lda $0002.w,X		; BD 02 00
	sta $02.b		; 85 02
	lda $0007.w,X		; BD 07 00
	sta $04.b		; 85 04
	lda $0009.w,X		; BD 09 00
	and #$00FF.w		; 29 FF 00
	sta $06.b		; 85 06
	jsl $8092AD.l		; 22 AD 92 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0000.w,X		; BD 00 00
	sta $00.b		; 85 00
	lda $0002.w,X		; BD 02 00
	sta $02.b		; 85 02
	lda $0004.w,X		; BD 04 00
	sta $04.b		; 85 04
	lda $0006.w,X		; BD 06 00
	and #$00FF.w		; 29 FF 00
	sta $06.b		; 85 06
	jsl $8092AD.l		; 22 AD 92 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0000.w,X		; BD 00 00
	sta $00.b		; 85 00
	lda $0002.w,X		; BD 02 00
	sta $02.b		; 85 02
	lda $0007.w,X		; BD 07 00
	sta $04.b		; 85 04
	lda $0009.w,X		; BD 09 00
	and #$00FF.w		; 29 FF 00
	sta $06.b		; 85 06
	jsl $8092AD.l		; 22 AD 92 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0020.w		; A9 20 00
	sta $12.b		; 85 12
	lda $1C30.w		; AD 30 1C
	sta $1B10.w		; 8D 10 1B
	asl A		; 0A
	clc		; 18
	adc $1C2C.w		; 6D 2C 1C
	sec		; 38
	sbc #$00C0.w		; E9 C0 00
	sta $1B12.w		; 8D 12 1B
	lda #$0040.w		; A9 40 00
	sta $02.b		; 85 02
	lda $1C28.w		; AD 28 1C
	and #$00FF.w		; 29 FF 00
	sta $06.b		; 85 06
	lda $1B10.w		; AD 10 1B
	and #$03FC.w		; 29 FC 03
	clc		; 18
	adc $83A8.w,X		; 7D A8 83
	sta $00.b		; 85 00
	lda $1B12.w		; AD 12 1B
	sta $04.b		; 85 04
	stx $10.b		; 86 10
	jsl $8092AD.l		; 22 AD 92 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $12.b		; C6 12
	beq  24.b		; F0 18
	ldx $10.b		; A6 10
	lda $1B10.w		; AD 10 1B
	clc		; 18
	adc #$0020.w		; 69 20 00
	sta $1B10.w		; 8D 10 1B
	lda $1B12.w		; AD 12 1B
	clc		; 18
	adc #$0040.w		; 69 40 00
	sta $1B12.w		; 8D 12 1B
	bra -53.b		; 80 CB
	rts		; 60

	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	jsr $83FA.w		; 20 FA 83
.ACCU 8
	sep #$20		; E2 20
	stz TMAIN.w		; 9C 2C 21
	stz TSUB.w		; 9C 2D 21
	stz TMW.w		; 9C 2E 21
	stz TSW.w		; 9C 2F 21
	lda #$0F.b		; A9 0F
	sta $40.b		; 85 40
	sta INIDSP.w		; 8D 00 21
	lda $41.b		; A5 41
	and #$30.b		; 29 30
	ora #$81.b		; 09 81
	sta $41.b		; 85 41
	sta NMITIMEN.w		; 8D 00 42
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
	sta $40.b		; 85 40
	jsr $83FA.w		; 20 FA 83
	lda $41.b		; A5 41
	and #$30.b		; 29 30
	sta NMITIMEN.w		; 8D 00 42
	sta $41.b		; 85 41
	stz TMAIN.w		; 9C 2C 21
	stz TSUB.w		; 9C 2D 21
	stz TMW.w		; 9C 2E 21
	stz TSW.w		; 9C 2F 21
	stz MDMAEN.w		; 9C 0B 42
	stz HDMAEN.w		; 9C 0C 42
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda RDNMI.w		; AD 10 42
	and #$80.b		; 29 80
	bne  -7.b		; D0 F9
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $1C3A.w		; 9C 3A 1C
	stz $1C3C.w		; 9C 3C 1C
	stz $1C3E.w		; 9C 3E 1C
	stz $1C40.w		; 9C 40 1C
	lda $00.b		; A5 00
	sta $00.b		; 85 00
	lda $00.b		; A5 00
	sec		; 38
	sbc #$03E8.w		; E9 E8 03
	bmi   5.b		; 30 05
	inc $1C40.w		; EE 40 1C
	bra -15.b		; 80 F1
	lda $00.b		; A5 00
	sta $00.b		; 85 00
	lda $00.b		; A5 00
	sec		; 38
	sbc #$0064.w		; E9 64 00
	bmi   5.b		; 30 05
	inc $1C3E.w		; EE 3E 1C
	bra -15.b		; 80 F1
	lda $00.b		; A5 00
	sta $00.b		; 85 00
	lda $00.b		; A5 00
	sec		; 38
	sbc #$000A.w		; E9 0A 00
	bmi   5.b		; 30 05
	inc $1C3C.w		; EE 3C 1C
	bra -15.b		; 80 F1
	lda $00.b		; A5 00
	sta $1C42.w		; 8D 42 1C
	sta $1C3A.w		; 8D 3A 1C
	lda $1C3C.w		; AD 3C 1C
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	ora $1C42.w		; 0D 42 1C
	sta $1C42.w		; 8D 42 1C
	lda $1C3E.w		; AD 3E 1C
	xba		; EB
	ora $1C42.w		; 0D 42 1C
	sta $1C42.w		; 8D 42 1C
	lda $1C40.w		; AD 40 1C
	xba		; EB
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	ora $1C42.w		; 0D 42 1C
	sta $1C42.w		; 8D 42 1C
	rts		; 60

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $00.b		; A5 00
	sta $D0.b		; 85 D0
	lda $02.b		; A5 02
	sta $D2.b		; 85 D2
	lda #$0000.w		; A9 00 00
	ldy #$0000.w		; A0 00 00
	ldx #$0400.w		; A2 00 04
	sta ($D0.b),Y		; 91 D0
	iny		; C8
	iny		; C8
	dex		; CA
	bne  -7.b		; D0 F9
	stz $D6.b		; 64 D6
	stz $D8.b		; 64 D8
	stz $DA.b		; 64 DA
	stz $DC.b		; 64 DC
	stz $DE.b		; 64 DE
	stz $E0.b		; 64 E0
	stz $E2.b		; 64 E2
	stz $E4.b		; 64 E4
	stz $E6.b		; 64 E6
	stz $E8.b		; 64 E8
	stz $EA.b		; 64 EA
	lda #$FFFF.w		; A9 FF FF
	sta $1C52.w		; 8D 52 1C
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
	rep #$20		; C2 20
	stz $1C52.w		; 9C 52 1C
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
	rep #$20		; C2 20
	lda #$0001.w		; A9 01 00
	sta $1C52.w		; 8D 52 1C
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $00.b		; A5 00
	sta $E0.b		; 85 E0
	lda $02.b		; A5 02
	sta $E2.b		; 85 E2
	lda $04.b		; A5 04
	sta $E4.b		; 85 E4
	lda $06.b		; A5 06
	sta $E6.b		; 85 E6
	lda $08.b		; A5 08
	sta $EA.b		; 85 EA
	lda $E0.b		; A5 E0
	cmp $E2.b		; C5 E2
	bcc  26.b		; 90 1A
	beq  24.b		; F0 18
	lda $E0.b		; A5 E0
	sta $1E.b		; 85 1E
	lda $E2.b		; A5 E2
	sta $E0.b		; 85 E0
	lda $1E.b		; A5 1E
	sta $E2.b		; 85 E2
	lda $E4.b		; A5 E4
	sta $1E.b		; 85 1E
	lda $E6.b		; A5 E6
	sta $E4.b		; 85 E4
	lda $1E.b		; A5 1E
	sta $E6.b		; 85 E6
	lda $E2.b		; A5 E2
	sec		; 38
	sbc $E0.b		; E5 E0
	sta $D6.b		; 85 D6
	clc		; 18
	adc $D6.b		; 65 D6
	sta $D8.b		; 85 D8
	lda $E6.b		; A5 E6
	sec		; 38
	sbc $E4.b		; E5 E4
	sta $1E.b		; 85 1E
	bpl   4.b		; 10 04
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $DA.b		; 85 DA
	clc		; 18
	adc $DA.b		; 65 DA
	sta $DC.b		; 85 DC
	lda $1E.b		; A5 1E
	beq   7.b		; F0 07
	bmi  10.b		; 30 0A
	lda #$0001.w		; A9 01 00
	bra   8.b		; 80 08
	lda #$0000.w		; A9 00 00
	bra   3.b		; 80 03
	lda #$FFFF.w		; A9 FF FF
	sta $E8.b		; 85 E8
	lda $D6.b		; A5 D6
	bne  10.b		; D0 0A
	lda $DA.b		; A5 DA
	bne   6.b		; D0 06
	jsr $85A7.w		; 20 A7 85
	jmp $85A5.w		; 4C A5 85
	lda $DA.b		; A5 DA
	cmp $D6.b		; C5 D6
	bcc  51.b		; 90 33
	beq  49.b		; F0 31
	bmi  47.b		; 30 2F
	lda $D8.b		; A5 D8
	sec		; 38
	sbc $DA.b		; E5 DA
	sta $DE.b		; 85 DE
	jsr $85A7.w		; 20 A7 85
	lda $DE.b		; A5 DE
	beq  13.b		; F0 0D
	bmi  11.b		; 30 0B
	lda $DE.b		; A5 DE
	sec		; 38
	sbc $DC.b		; E5 DC
	sta $DE.b		; 85 DE
	inc $E0.b		; E6 E0
	bra -17.b		; 80 EF
	lda $DE.b		; A5 DE
	clc		; 18
	adc $D8.b		; 65 D8
	sta $DE.b		; 85 DE
	lda $E4.b		; A5 E4
	clc		; 18
	adc $E8.b		; 65 E8
	sta $E4.b		; 85 E4
	cmp $E6.b		; C5 E6
	bne -38.b		; D0 DA
	bra  51.b		; 80 33
	lda $DC.b		; A5 DC
	sec		; 38
	sbc $D6.b		; E5 D6
	sta $DE.b		; 85 DE
	jsr $85A7.w		; 20 A7 85
	lda $DE.b		; A5 DE
	beq  18.b		; F0 12
	bmi  16.b		; 30 10
	lda $DE.b		; A5 DE
	sec		; 38
	sbc $D8.b		; E5 D8
	sta $DE.b		; 85 DE
	lda $E4.b		; A5 E4
	clc		; 18
	adc $E8.b		; 65 E8
	sta $E4.b		; 85 E4
	bra -22.b		; 80 EA
	lda $DE.b		; A5 DE
	clc		; 18
	adc $DC.b		; 65 DC
	sta $DE.b		; 85 DE
	inc $E0.b		; E6 E0
	lda $E0.b		; A5 E0
	cmp $E2.b		; C5 E2
	beq -40.b		; F0 D8
	bcc -42.b		; 90 D6
	bmi -44.b		; 30 D4
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $D0.b		; A5 D0
	sta $1E.b		; 85 1E
	lda $E4.b		; A5 E4
	and #$FFF8.w		; 29 F8 FF
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $1E.b		; 65 1E
	sta $1E.b		; 85 1E
	lda $E4.b		; A5 E4
	and #$0007.w		; 29 07 00
	clc		; 18
	adc $1E.b		; 65 1E
	sta $1E.b		; 85 1E
	lda $E0.b		; A5 E0
	and #$FFF8.w		; 29 F8 FF
	clc		; 18
	adc $1E.b		; 65 1E
	sta $1E.b		; 85 1E
	lda $E0.b		; A5 E0
	and #$0007.w		; 29 07 00
	tay		; A8
	lda $EA.b		; A5 EA
	beq  15.b		; F0 0F
	lda #$85FA.w		; A9 FA 85
	sta $1C.b		; 85 1C
.ACCU 8
	sep #$20		; E2 20
	lda ($1E.b)		; B2 1E
	ora ($1C.b),Y		; 11 1C
	sta ($1E.b)		; 92 1E
	bra  15.b		; 80 0F
.ACCU 16
	rep #$20		; C2 20
	lda #$8602.w		; A9 02 86
	sta $1C.b		; 85 1C
.ACCU 8
	sep #$20		; E2 20
	lda ($1E.b)		; B2 1E
	and ($1C.b),Y		; 31 1C
	sta ($1E.b)		; 92 1E
	plp		; 28
	rts		; 60

	bra  64.b		; 80 40
	jsr $0810.w		; 20 10 08
	tsb $02.b		; 04 02
	ora ($7F.b,X)		; 01 7F
	lda $F7EFDF.l,X		; BF DF EF F7
	xce		; FB
	sbc $C2FE.w,X		; FD FE C2
	bmi -122.b		; 30 86
	brk $84.b		; 00 84
	cop $85.b		; 02 85
	tsb $AD.b		; 04 AD
	asl $1B.b,X		; 16 1B
	beq  16.b		; F0 10
	lda $04.b		; A5 04
	cmp #$05.b		; C9 05
	brk $F0.b		; 00 F0
	tsb $1A.b		; 04 1A
	dec $1B16.w		; CE 16 1B
	ldx $00.b		; A6 00
	ldy $02.b		; A4 02
	rts		; 60

	lda $04.b		; A5 04
	ldx $00.b		; A6 00
	ldy $02.b		; A4 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stx $00.b		; 86 00
	sty $02.b		; 84 02
	sta $04.b		; 85 04
	lda $04.b		; A5 04
	cmp #$0000.w		; C9 00 00
	beq   4.b		; F0 04
	dec A		; 3A
	inc $1B16.w		; EE 16 1B
	ldx $00.b		; A6 00
	ldy $02.b		; A4 02
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$01.b		; A9 01
	sta APUIO2.w		; 8D 42 21
	lda #$01.b		; A9 01
	sta APUIO3.w		; 8D 43 21
	stz $1F66.w		; 9C 66 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0005.w		; A9 05 00
	jsl $8083EB.l		; 22 EB 83 80
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $A2.b		; 85 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$15.b		; A9 15
	sta APUIO2.w		; 8D 42 21
	lda #$01.b		; A9 01
	sta $1D00.w		; 8D 00 1D
	lda #$01.b		; A9 01
	sta $1D03.w		; 8D 03 1D
	jsr $8C15.w		; 20 15 8C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$4BB8.w		; A9 B8 4B
	sta $1C84.w		; 8D 84 1C
	jsl $82B8B2.l		; 22 B2 B8 82
.ACCU 8
	sep #$20		; E2 20
	stz $6D.b		; 64 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	jsl $808772.l		; 22 72 87 80
	jsr $83AE.w		; 20 AE 83
	jsl $808386.l		; 22 86 83 80
	jsl $808772.l		; 22 72 87 80
	jsr $8238.w		; 20 38 82
	jsr $813D.w		; 20 3D 81
	jsl $82B8FB.l		; 22 FB B8 82
	jsr $8A66.w		; 20 66 8A
	jsr $B8A7.w		; 20 A7 B8
	jsr $B8C9.w		; 20 C9 B8
	jsr $B933.w		; 20 33 B9
	jsr $B9BA.w		; 20 BA B9
	jsr $BA1C.w		; 20 1C BA
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C00.w		; AE 00 1C
	jsr ($86E1.w,X)		; FC E1 86
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $8AB6.w		; 20 B6 8A
	jsr $821D.w		; 20 1D 82
	lda $1C02.w		; AD 02 1C
	beq -57.b		; F0 C7
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -63.b		; D0 C1
	stz $1C02.w		; 9C 02 1C
	jsr $BAD8.w		; 20 D8 BA
	plb		; AB
	rtl		; 6B

	sbc ($86.b),Y		; F1 86
	and $87.b		; 25 87
	eor ($87.b)		; 52 87
	lda ($87.b)		; B2 87
	cpx $0A87.w		; EC 87 0A
	dey		; 88
	plp		; 28
	dey		; 88
	and [$88.b],Y		; 37 88
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FFFD.w		; A9 FD FF
	sta $1C32.w		; 8D 32 1C
	jsr $801E.w		; 20 1E 80
	lda $1C30.w		; AD 30 1C
	cmp #$0200.w		; C9 00 02
	bpl  18.b		; 10 12
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne   4.b		; D0 04
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
.ACCU 16
	rep #$20		; C2 20
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	lda $1C30.w		; AD 30 1C
	cmp #$0320.w		; C9 20 03
	bpl   6.b		; 10 06
	lda #$0001.w		; A9 01 00
	sta $1B1A.w		; 8D 1A 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FFFD.w		; A9 FD FF
	sta $1C32.w		; 8D 32 1C
	jsr $801E.w		; 20 1E 80
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  27.b		; D0 1B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F5D.w		; AD 5D 1F
	beq  11.b		; F0 0B
	stz $1C32.w		; 9C 32 1C
	lda #$0004.w		; A9 04 00
	sta $1C00.w		; 8D 00 1C
	bra   9.b		; 80 09
	stz $1C32.w		; 9C 32 1C
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	jsl $808386.l		; 22 86 83 80
	jsr $83D2.w		; 20 D2 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0000.w		; A9 00 00
	sta $1C34.w		; 8D 34 1C
	lda #$0800.w		; A9 00 08
	sta $1C36.w		; 8D 36 1C
	lda #$0080.w		; A9 80 00
	sta $1C30.w		; 8D 30 1C
	lda #$5000.w		; A9 00 50
	sta $1C2C.w		; 8D 2C 1C
	lda #$007E.w		; A9 7E 00
	sta $1C28.w		; 8D 28 1C
	lda #$0040.w		; A9 40 00
	sta $1C24.w		; 8D 24 1C
	ldx #$0000.w		; A2 00 00
	jsr $834C.w		; 20 4C 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C30.w		; AD 30 1C
	lsr A		; 4A
	lsr A		; 4A
	sta $0A06.w		; 8D 06 0A
	lda #$0006.w		; A9 06 00
	sta $1C00.w		; 8D 00 1C
	lda #$0010.w		; A9 10 00
	sta $1C1E.w		; 8D 1E 1C
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1F66.w		; 8D 66 1F
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
	jsr $83AE.w		; 20 AE 83
.ACCU 8
	sep #$20		; E2 20
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C1E.w		; CE 1E 1C
	bne  30.b		; D0 1E
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $87D8.w,X		; BD D8 87
	sta $1C88.w		; 8D 88 1C
	jsl $82B86B.l		; 22 6B B8 82
	lda #$0008.w		; A9 08 00
	sta $1C00.w		; 8D 00 1C
	lda #$0020.w		; A9 20 00
	sta $1C1E.w		; 8D 1E 1C
	rts		; 60

	plp		; 28
	brk $28.b		; 00 28
	brk $2C.b		; 00 2C
	brk $30.b		; 00 30
	brk $34.b		; 00 34
	brk $38.b		; 00 38
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $3C.b		; 00 3C
	brk $C2.b		; 00 C2
	bmi -83.b		; 30 AD
	eor $F01F.w,X		; 5D 1F F0
	ora $AD.b		; 05 AD
	tya		; 98
	trb $11D0.w		; 1C D0 11
	dec $1C1E.w		; CE 1E 1C
	bne  12.b		; D0 0C
	lda #$000A.w		; A9 0A 00
	sta $1C00.w		; 8D 00 1C
	lda #$0040.w		; A9 40 00
	sta $1C1E.w		; 8D 1E 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C1E.w		; CE 1E 1C
	bne  22.b		; D0 16
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne   4.b		; D0 04
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1F5D.w		; 8D 5D 1F
	jsr $89C5.w		; 20 C5 89
	bcs   2.b		; B0 02
	plb		; AB
	rtl		; 6B

.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	jsl $8083EB.l		; 22 EB 83 80
	jsr $89EB.w		; 20 EB 89
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$4D26.w		; A9 26 4D
	sta $1C84.w		; 8D 84 1C
	jsl $82B8B2.l		; 22 B2 B8 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0020.w		; A9 20 00
	sta $1C1E.w		; 8D 1E 1C
.ACCU 8
	sep #$20		; E2 20
	lda #$13.b		; A9 13
	sta $A2.b		; 85 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	stz $6D.b		; 64 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	jsl $808772.l		; 22 72 87 80
	jsr $83AE.w		; 20 AE 83
	jsl $808386.l		; 22 86 83 80
	jsl $808772.l		; 22 72 87 80
	jsl $82B8FB.l		; 22 FB B8 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C00.w		; AE 00 1C
	jsr ($88B4.w,X)		; FC B4 88
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	beq -27.b		; F0 E5
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -33.b		; D0 DF
	stz $1C02.w		; 9C 02 1C
	jsr $89BE.w		; 20 BE 89
	plb		; AB
	rtl		; 6B

	iny		; C8
	dey		; 88
	dec $88.b,X		; D6 88
	sbc #$88.b		; E9 88
	sbc $1188.w,X		; FD 88 11
	bit #$28.b		; 89 28
	bit #$38.b		; 89 38
	bit #$74.b		; 89 74
	bit #$96.b		; 89 96
	bit #$BA.b		; 89 BA
	bit #$C2.b		; 89 C2
	bmi -50.b		; 30 CE
	asl $D01C.w,X		; 1E 1C D0
	asl $A9.b		; 06 A9
	cop $00.b		; 02 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $1C88.w		; 8D 88 1C
	jsl $82B86B.l		; 22 6B B8 82
	lda #$0004.w		; A9 04 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C98.w		; AD 98 1C
	bne  12.b		; D0 0C
	lda #$0060.w		; A9 60 00
	sta $1C1E.w		; 8D 1E 1C
	lda #$0006.w		; A9 06 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C1E.w		; CE 1E 1C
	bne  12.b		; D0 0C
	lda #$0008.w		; A9 08 00
	sta $1C00.w		; 8D 00 1C
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  14.b		; D0 0E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $1C00.w		; 8D 00 1C
	lda #$0060.w		; A9 60 00
	sta $1C1E.w		; 8D 1E 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C1E.w		; CE 1E 1C
	bne   6.b		; D0 06
	lda #$000C.w		; A9 0C 00
	sta $1C00.w		; 8D 00 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	jsr $83D2.w		; 20 D2 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000E.w		; A9 0E 00
	sta $1C00.w		; 8D 00 1C
	lda #$4E94.w		; A9 94 4E
	sta $74.b		; 85 74
	lda #$00C4.w		; A9 C4 00
	sta $76.b		; 85 76
	jsl $808C43.l		; 22 43 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$89BB.w		; A9 BB 89
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
	jsr $83AE.w		; 20 AE 83
.ACCU 8
	sep #$20		; E2 20
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $1C32.w		; 8D 32 1C
	jsr $801E.w		; 20 1E 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C30.w		; AD 30 1C
	cmp #$23C0.w		; C9 C0 23
	bmi  12.b		; 30 0C
	lda #$0300.w		; A9 00 03
	sta $1C1E.w		; 8D 1E 1C
	lda #$0010.w		; A9 10 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

	dec $1C1E.w		; CE 1E 1C
	bne  30.b		; D0 1E
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
	lda #$0012.w		; A9 12 00
	sta $1C00.w		; 8D 00 1C
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  12.b		; D0 0C
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

	rts		; 60

	ora $1B.b		; 05 1B
	sbc $A930E2.l,X		; FF E2 30 A9
	ora $85.b,S		; 03 85
	txa		; 8A
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D00.w		; AD 00 1D
	and #$00FF.w		; 29 FF 00
	cmp #$0001.w		; C9 01 00
	bne  18.b		; D0 12
	lda $1F60.w		; AD 60 1F
	bne  11.b		; D0 0B
	lda $1F5A.w		; AD 5A 1F
	and #$00FF.w		; 29 FF 00
	cmp #$000C.w		; C9 0C 00
	bmi   2.b		; 30 02
	sec		; 38
	rts		; 60

	lda #$0003.w		; A9 03 00
	sta $8A.b		; 85 8A
	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0A04.w		; 9C 04 0A
	stz $0A08.w		; 9C 08 0A
	stz $0A06.w		; 9C 06 0A
	stz $0A0A.w		; 9C 0A 0A
	lda #$0042.w		; A9 42 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0024.w		; A9 24 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
	lda #$0026.w		; A9 26 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
	lda #$0028.w		; A9 28 00
	sta $1C18.w		; 8D 18 1C
	jsr $829E.w		; 20 9E 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8A63.w		; A9 63 8A
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
	lda #$0000.w		; A9 00 00
	sta $1C34.w		; 8D 34 1C
	lda #$2780.w		; A9 80 27
	sta $1C36.w		; 8D 36 1C
	lda #$0000.w		; A9 00 00
	sta $1C30.w		; 8D 30 1C
	lda #$0000.w		; A9 00 00
	sta $1C2C.w		; 8D 2C 1C
	lda #$007F.w		; A9 7F 00
	sta $1C28.w		; 8D 28 1C
	lda #$1000.w		; A9 00 10
	sta $1C22.w		; 8D 22 1C
	lda #$0040.w		; A9 40 00
	sta $1C24.w		; 8D 24 1C
	jsl $82B890.l		; 22 90 B8 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0500.w		; 9C 00 05
	lda #$0A16.w		; A9 16 0A
	sta $1C38.w		; 8D 38 1C
	rts		; 60

	ora $1A.b		; 05 1A
	sbc $1B1CCE.l,X		; FF CE 1C 1B
	bne  22.b		; D0 16
	lda $1B1E.w		; AD 1E 1B
	beq  17.b		; F0 11
	dec $1B1E.w		; CE 1E 1B
	lda #$0090.w		; A9 90 00
	sta $1B1C.w		; 8D 1C 1B
.ACCU 8
	sep #$20		; E2 20
	lda #$15.b		; A9 15
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1900.w		; A2 00 19
	lda #$0000.w		; A9 00 00
	sta $1B18.w		; 8D 18 1B
	lda $1B18.w		; AD 18 1B
	sta $0008.w,X		; 9D 08 00
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	sta $1B18.w		; 8D 18 1B
	txa		; 8A
	and #$0010.w		; 29 10 00
	bne   6.b		; D0 06
	lda #$0100.w		; A9 00 01
	sta $000E.w,X		; 9D 0E 00
	txa		; 8A
	clc		; 18
	adc #$0010.w		; 69 10 00
	tax		; AA
	cpx #$1B00.w		; E0 00 1B
	bmi -40.b		; 30 D8
	rts		; 60

	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1900.w		; A2 00 19
	txy		; 9B
	ldx $0000.w,Y		; BE 00 00
	jsr ($8ADF.w,X)		; FC DF 8A
	lda $0000.w,X		; BD 00 00
	cmp #$0006.w		; C9 06 00
	beq   3.b		; F0 03
	jsr $8BCB.w		; 20 CB 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	txa		; 8A
	clc		; 18
	adc #$0010.w		; 69 10 00
	tax		; AA
	cpx #$1B00.w		; E0 00 1B
	bmi -31.b		; 30 E1
	rts		; 60

	sbc [$8A.b]		; E7 8A
	lsr A		; 4A
	phb		; 8B
	lda $B78B.w		; AD 8B B7
	phb		; 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tyx		; BB
	lda $1B1A.w		; AD 1A 1B
	beq   8.b		; F0 08
	lda #$0006.w		; A9 06 00
	sta $0000.w,X		; 9D 00 00
	bra  82.b		; 80 52
	lda $000E.w,X		; BD 0E 00
	and #$0100.w		; 29 00 01
	bne  32.b		; D0 20
	lda $08.b,X		; B5 08
	bne  67.b		; D0 43
	jsl $808C1E.l		; 22 1E 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $9A.b		; A5 9A
	and #$0006.w		; 29 06 00
	tay		; A8
	lda $8BBB.w,Y		; B9 BB 8B
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	clc		; 18
	adc #$0060.w		; 69 60 00
	lda #$00E0.w		; A9 E0 00
	bra  20.b		; 80 14
	lda $08.b,X		; B5 08
	bne  35.b		; D0 23
	lda $9A.b		; A5 9A
	and #$0006.w		; 29 06 00
	tay		; A8
	lda $8BBB.w,Y		; B9 BB 8B
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	lda #$0010.w		; A9 10 00
	sta $0004.w,X		; 9D 04 00
	iny		; C8
	sty $0C.b,X		; 94 0C
	lda #$0000.w		; A9 00 00
	sta $0006.w,X		; 9D 06 00
	lda #$0002.w		; A9 02 00
	sta $0000.w,X		; 9D 00 00
	rts		; 60

	dec A		; 3A
	sta $08.b,X		; 95 08
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tyx		; BB
	cpx #$1900.w		; E0 00 19
	bne   0.b		; D0 00
	lda #$3000.w		; A9 00 30
	sta $000A.w,X		; 9D 0A 00
	lda $000E.w,X		; BD 0E 00
	and #$0100.w		; 29 00 01
	bne  25.b		; D0 19
	ldy $0C.b,X		; B4 0C
	lda $0000.w,Y		; B9 00 00
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $0004.w,X		; 7D 04 00
	sta $0004.w,X		; 9D 04 00
	bra  27.b		; 80 1B
	ldy $0C.b,X		; B4 0C
	lda $0000.w,Y		; B9 00 00
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc $0004.w,X		; 7D 04 00
	sta $0004.w,X		; 9D 04 00
	iny		; C8
	sty $0C.b,X		; 94 0C
	lda $0006.w,X		; BD 06 00
	clc		; 18
	adc #$0002.w		; 69 02 00
	sta $0006.w,X		; 9D 06 00
	cmp #$0100.w		; C9 00 01
	bmi   6.b		; 30 06
	lda #$0004.w		; A9 04 00
	sta $0000.w,X		; 9D 00 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tyx		; BB
	lda #$0000.w		; A9 00 00
	sta $0000.w,X		; 9D 00 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tyx		; BB
	rts		; 60

	pha		; 48
	stx $8F88.w		; 8E 88 8F
	iny		; C8
	bcc   8.b		; 90 08
	sta ($48.b)		; 92 48
	stx $8F88.w		; 8E 88 8F
	iny		; C8
	bcc   8.b		; 90 08
	sta ($C2.b)		; 92 C2
	bmi -67.b		; 30 BD
	tsb $00.b		; 04 00
	sta $01.b		; 85 01
	lda $0006.w,X		; BD 06 00
	sta $03.b		; 85 03
	lda $0A.b,X		; B5 0A
	sta $06.b		; 85 06
	ldy $0002.w,X		; BC 02 00
	lda $8C06.w,Y		; B9 06 8C
	inc A		; 1A
	sta $12.b		; 85 12
	lda $8C08.w,Y		; B9 08 8C
	and #$00FF.w		; 29 FF 00
	sta $1B16.w		; 8D 16 1B
	lda $8C06.w,Y		; B9 06 8C
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	phb		; 8B
	lda $1B16.w		; AD 16 1B
	pha		; 48
	plb		; AB
	phx		; DA
	jsl $809C7E.l		; 22 7E 9C 80
	plx		; FA
	plb		; AB
	rts		; 60

	and $83A0.w		; 2D A0 83
	bit $A0.b,X		; 34 A0
	sta $3B.b,S		; 83 3B
	ldy #$4283.w		; A0 83 42
	ldy #$4983.w		; A0 83 49
	ldy #$C283.w		; A0 83 C2
	bmi -100.b		; 30 9C
	tsb $0A.b		; 04 0A
	stz $0A08.w		; 9C 08 0A
	stz $0A06.w		; 9C 06 0A
	stz $0A0A.w		; 9C 0A 0A
	lda #$00.b		; A9 00
	brk $8D.b		; 00 8D
	clc		; 18
	trb $4E20.w		; 1C 20 4E
	.db $82, $A9, $02		; 82 A9 02
	brk $8D.b		; 00 8D
	clc		; 18
	trb $4E20.w		; 1C 20 4E
	.db $82, $A9, $40		; 82 A9 40
	brk $8D.b		; 00 8D
	clc		; 18
	trb $4E20.w		; 1C 20 4E
	.db $82, $A9, $00		; 82 A9 00
	brk $8D.b		; 00 8D
	clc		; 18
	trb $5B20.w		; 1C 20 5B
	.db $82, $A9, $02		; 82 A9 02
	brk $8D.b		; 00 8D
	clc		; 18
	trb $9E20.w		; 1C 20 9E
	.db $82, $A9, $3E		; 82 A9 3E
	brk $8D.b		; 00 8D
	clc		; 18
	trb $7220.w		; 1C 20 72
	.db $82, $A9, $1E		; 82 A9 1E
	brk $8D.b		; 00 8D
	clc		; 18
	trb $7220.w		; 1C 20 72
	.db $82, $A9, $20		; 82 A9 20
	brk $8D.b		; 00 8D
	clc		; 18
	trb $7220.w		; 1C 20 72
	.db $82, $A9, $16		; 82 A9 16
	brk $8D.b		; 00 8D
	clc		; 18
	trb $7220.w		; 1C 20 72
	.db $82, $A9, $22		; 82 A9 22
	brk $8D.b		; 00 8D
	clc		; 18
	trb $7220.w		; 1C 20 72
	.db $82, $A9, $1C		; 82 A9 1C
	brk $8D.b		; 00 8D
	clc		; 18
	trb $9E20.w		; 1C 20 9E
	.db $82, $A9, $1E		; 82 A9 1E
	brk $8D.b		; 00 8D
	clc		; 18
	trb $9E20.w		; 1C 20 9E
	.db $82, $C2, $30		; 82 C2 30
	lda $1F58.w		; AD 58 1F
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tax		; AA
	lda $8D5E.w,X		; BD 5E 8D
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda $1F58.w		; AD 58 1F
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tax		; AA
	lda $8D4A.w,X		; BD 4A 8D
	sta $1C18.w		; 8D 18 1C
	jsr $829E.w		; 20 9E 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$BD93.w		; A2 93 BD
	jsr $8310.w		; 20 10 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $8D1E.w,X		; BD 1E 8D
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
	lda #$0000.w		; A9 00 00
	sta $1C34.w		; 8D 34 1C
	lda #$0800.w		; A9 00 08
	sta $1C36.w		; 8D 36 1C
	lda #$0540.w		; A9 40 05
	sta $1C30.w		; 8D 30 1C
	lda #$3000.w		; A9 00 30
	sta $1C2C.w		; 8D 2C 1C
	lda #$007E.w		; A9 7E 00
	sta $1C28.w		; 8D 28 1C
	lda #$0040.w		; A9 40 00
	sta $1C24.w		; 8D 24 1C
	ldx #$0000.w		; A2 00 00
	jsr $834C.w		; 20 4C 83
	jsr $8A82.w		; 20 82 8A
	jsr $8D72.w		; 20 72 8D
	jsl $82B890.l		; 22 90 B8 82
	jsr $8E07.w		; 20 07 8E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0500.w		; 9C 00 05
	lda #$0A06.w		; A9 06 0A
	sta $1C38.w		; 8D 38 1C
	lda #$0030.w		; A9 30 00
	sta $1B1C.w		; 8D 1C 1B
	lda #$0002.w		; A9 02 00
	sta $1B1E.w		; 8D 1E 1B
	rts		; 60

	and ($8D.b)		; 32 8D
	and ($8D.b)		; 32 8D
	rol $8D.b,X		; 36 8D
	dec A		; 3A
	sta $8D3E.w		; 8D 3E 8D
	.db $42, $8D		; 42 8D
	and ($8D.b)		; 32 8D
	and ($8D.b)		; 32 8D
	and ($8D.b)		; 32 8D
	lsr $8D.b		; 46 8D
	ora $06.b,S		; 03 06
	php		; 08
	sbc $090603.l,X		; FF 03 06 09
	sbc $0A0603.l,X		; FF 03 06 0A
	sbc $0B0603.l,X		; FF 03 06 0B
	sbc $0C0603.l,X		; FF 03 06 0C
	sbc $0D0603.l,X		; FF 03 06 0D
	sbc $080008.l,X		; FF 08 00 08
	brk $0A.b		; 00 0A
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $12.b		; 00 12
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	brk $12.b		; 00 12
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $14.b		; 00 14
	brk $C2.b		; 00 C2
	bmi -83.b		; 30 AD
	eor $F01F.w,X		; 5D 1F F0
	eor ($AD.b),Y		; 51 AD
	cli		; 58
	ora $00FF29.l,X		; 1F 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $8DCB.w,X		; BD CB 8D
	sta $1C12.w		; 8D 12 1C
	lda #$00C4.w		; A9 C4 00
	sta $1C14.w		; 8D 14 1C
	jsr $80AF.w		; 20 AF 80
	lda $1F61.w		; AD 61 1F
	and #$00FF.w		; 29 FF 00
	bne  26.b		; D0 1A
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $8DDF.w,X		; BD DF 8D
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	bra  24.b		; 80 18
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $8DF3.w,X		; BD F3 8D
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

	ldy #$A068.w		; A0 68 A0
	pla		; 68
	inx		; E8
	pla		; 68
	bmi 105.b		; 30 69
	sei		; 78
	adc #$69C0.w		; 69 C0 69
	ldy #$A068.w		; A0 68 A0
	pla		; 68
	ldy #$0868.w		; A0 68 08
	ror A		; 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $6C.b		; 64 6C
	dex		; CA
	jmp ($6D30.w)		; 6C 30 6D
	ror $6D.b,X		; 76 6D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $6A.b,Y		; 96 6A
	trb $6B.b		; 14 6B
	sta ($6B.b)		; 92 6B
	cld		; D8
	rtl		; 6B

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0007.w		; A9 07 00
	sta $00.b		; 85 00
	lda #$0044.w		; A9 44 00
	sta $01.b		; 85 01
	lda #$0026.w		; A9 26 00
	sta $02.b		; 85 02
	lda #$5002.w		; A9 02 50
	sta $10.b		; 85 10
	lda #$00C4.w		; A9 C4 00
	sta $12.b		; 85 12
	lda #$52A3.w		; A9 A3 52
	sta $14.b		; 85 14
	lda #$00C4.w		; A9 C4 00
	sta $16.b		; 85 16
	jsl $809529.l		; 22 29 95 80
	lda #$0080.w		; A9 80 00
	sta $006F.w		; 8D 6F 00
.ACCU 8
	sep #$20		; E2 20
	lda #$AA.b		; A9 AA
	sta W12SEL.w		; 8D 23 21
	lda #$0A.b		; A9 0A
	sta WOBJSEL.w		; 8D 25 21
	lda #$05.b		; A9 05
	sta WBGLOG.w		; 8D 2A 21
	rts		; 60

	and ($00.b,X)		; 21 00
	xce		; FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $4F.b		; 00 4F
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
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
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $6B.b		; 00 6B
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $6A.b		; 00 6A
	brk $01.b		; 00 01
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
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $8B.b		; 00 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $9CE4.w		; 20 E4 9C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$48DC.w		; A9 DC 48
	sta $1C84.w		; 8D 84 1C
	jsl $82B8B2.l		; 22 B2 B8 82
.ACCU 8
	sep #$20		; E2 20
	lda #$07.b		; A9 07
	sta $A2.b		; 85 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B1C.w		; AD 1C 1B
	asl A		; 0A
	tax		; AA
	lda $93CE.w,X		; BD CE 93
	sta $1C88.w		; 8D 88 1C
	jsl $82B86B.l		; 22 6B B8 82
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $6D.b		; 85 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	lda #$81.b		; A9 81
	sta NMITIMEN.w		; 8D 00 42
	jsl $808386.l		; 22 86 83 80
	jsl $808772.l		; 22 72 87 80
	jsr $9B59.w		; 20 59 9B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $0A08.w		; EE 08 0A
	inc $0A0A.w		; EE 0A 0A
	ldx $1B10.w		; AE 10 1B
	jsr ($93CA.w,X)		; FC CA 93
	lda $1B10.w		; AD 10 1B
	bmi  18.b		; 30 12
	jsl $82B8FB.l		; 22 FB B8 82
	jsr $8167.w		; 20 67 81
	lda $1C02.w		; AD 02 1C
	beq -42.b		; F0 D6
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -48.b		; D0 D0
	jsr $BB0B.w		; 20 0B BB
	plb		; AB
	rtl		; 6B

.INDEX 8
	sep #$93		; E2 93
	pea $0093.w		; F4 93 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $14.b		; 00 14
	brk $C2.b		; 00 C2
	bmi -83.b		; 30 AD
	asl $491B.w		; 0E 1B 49
	sbc $0E8DFF.l,X		; FF FF 8D 0E
	tas		; 1B
	jsr $93F5.w		; 20 F5 93
	jmp $93F3.w		; 4C F3 93
	rts		; 60

	rts		; 60

	jsr $84AC.w		; 20 AC 84
	jsr $96C0.w		; 20 C0 96
	ldx $1B12.w		; AE 12 1B
	jmp ($9401.w,X)		; 7C 01 94
	ora $8094.w		; 0D 94 80
	sty $F3.b,X		; 94 F3
	sty $66.b,X		; 94 66
	sta $D9.b,X		; 95 D9
	sta $4C.b,X		; 95 4C
	stx $AD.b,Y		; 96 AD
	tax		; AA
	tas		; 1B
	sta $00.b		; 85 00
	lda $1B82.w		; AD 82 1B
	sta $02.b		; 85 02
	lda $1BAE.w		; AD AE 1B
	sta $04.b		; 85 04
	lda $1B86.w		; AD 86 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B82.w		; AD 82 1B
	sta $00.b		; 85 00
	lda $1B8A.w		; AD 8A 1B
	sta $02.b		; 85 02
	lda $1B86.w		; AD 86 1B
	sta $04.b		; 85 04
	lda $1B8E.w		; AD 8E 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA8.w		; AD A8 1B
	sta $00.b		; 85 00
	lda $1B80.w		; AD 80 1B
	sta $02.b		; 85 02
	lda $1BAC.w		; AD AC 1B
	sta $04.b		; 85 04
	lda $1B84.w		; AD 84 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B80.w		; AD 80 1B
	sta $00.b		; 85 00
	lda $1B88.w		; AD 88 1B
	sta $02.b		; 85 02
	lda $1B84.w		; AD 84 1B
	sta $04.b		; 85 04
	lda $1B8C.w		; AD 8C 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	jmp $96BC.w		; 4C BC 96
	lda $1B82.w		; AD 82 1B
	sta $00.b		; 85 00
	lda $1B8A.w		; AD 8A 1B
	sta $02.b		; 85 02
	lda $1B86.w		; AD 86 1B
	sta $04.b		; 85 04
	lda $1B8E.w		; AD 8E 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B8A.w		; AD 8A 1B
	sta $00.b		; 85 00
	lda $1B92.w		; AD 92 1B
	sta $02.b		; 85 02
	lda $1B8E.w		; AD 8E 1B
	sta $04.b		; 85 04
	lda $1B96.w		; AD 96 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B80.w		; AD 80 1B
	sta $00.b		; 85 00
	lda $1B88.w		; AD 88 1B
	sta $02.b		; 85 02
	lda $1B84.w		; AD 84 1B
	sta $04.b		; 85 04
	lda $1B8C.w		; AD 8C 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B88.w		; AD 88 1B
	sta $00.b		; 85 00
	lda $1B90.w		; AD 90 1B
	sta $02.b		; 85 02
	lda $1B8C.w		; AD 8C 1B
	sta $04.b		; 85 04
	lda $1B94.w		; AD 94 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	jmp $96BC.w		; 4C BC 96
	lda $1B8A.w		; AD 8A 1B
	sta $00.b		; 85 00
	lda $1B92.w		; AD 92 1B
	sta $02.b		; 85 02
	lda $1B8E.w		; AD 8E 1B
	sta $04.b		; 85 04
	lda $1B96.w		; AD 96 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B92.w		; AD 92 1B
	sta $00.b		; 85 00
	lda $1B9A.w		; AD 9A 1B
	sta $02.b		; 85 02
	lda $1B96.w		; AD 96 1B
	sta $04.b		; 85 04
	lda $1B9E.w		; AD 9E 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B88.w		; AD 88 1B
	sta $00.b		; 85 00
	lda $1B90.w		; AD 90 1B
	sta $02.b		; 85 02
	lda $1B8C.w		; AD 8C 1B
	sta $04.b		; 85 04
	lda $1B94.w		; AD 94 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B90.w		; AD 90 1B
	sta $00.b		; 85 00
	lda $1B98.w		; AD 98 1B
	sta $02.b		; 85 02
	lda $1B94.w		; AD 94 1B
	sta $04.b		; 85 04
	lda $1B9C.w		; AD 9C 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	jmp $96BC.w		; 4C BC 96
	lda $1B92.w		; AD 92 1B
	sta $00.b		; 85 00
	lda $1B9A.w		; AD 9A 1B
	sta $02.b		; 85 02
	lda $1B96.w		; AD 96 1B
	sta $04.b		; 85 04
	lda $1B9E.w		; AD 9E 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B9A.w		; AD 9A 1B
	sta $00.b		; 85 00
	lda $1BA2.w		; AD A2 1B
	sta $02.b		; 85 02
	lda $1B9E.w		; AD 9E 1B
	sta $04.b		; 85 04
	lda $1BA6.w		; AD A6 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B90.w		; AD 90 1B
	sta $00.b		; 85 00
	lda $1B98.w		; AD 98 1B
	sta $02.b		; 85 02
	lda $1B94.w		; AD 94 1B
	sta $04.b		; 85 04
	lda $1B9C.w		; AD 9C 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B98.w		; AD 98 1B
	sta $00.b		; 85 00
	lda $1BA0.w		; AD A0 1B
	sta $02.b		; 85 02
	lda $1B9C.w		; AD 9C 1B
	sta $04.b		; 85 04
	lda $1BA4.w		; AD A4 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	jmp $96BC.w		; 4C BC 96
	lda $1B9A.w		; AD 9A 1B
	sta $00.b		; 85 00
	lda $1BA2.w		; AD A2 1B
	sta $02.b		; 85 02
	lda $1B9E.w		; AD 9E 1B
	sta $04.b		; 85 04
	lda $1BA6.w		; AD A6 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA2.w		; AD A2 1B
	sta $00.b		; 85 00
	lda $1BAA.w		; AD AA 1B
	sta $02.b		; 85 02
	lda $1BA6.w		; AD A6 1B
	sta $04.b		; 85 04
	lda $1BAE.w		; AD AE 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1B98.w		; AD 98 1B
	sta $00.b		; 85 00
	lda $1BA0.w		; AD A0 1B
	sta $02.b		; 85 02
	lda $1B9C.w		; AD 9C 1B
	sta $04.b		; 85 04
	lda $1BA4.w		; AD A4 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA0.w		; AD A0 1B
	sta $00.b		; 85 00
	lda $1BA8.w		; AD A8 1B
	sta $02.b		; 85 02
	lda $1BA4.w		; AD A4 1B
	sta $04.b		; 85 04
	lda $1BAC.w		; AD AC 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	jmp $96BC.w		; 4C BC 96
	lda $1BA2.w		; AD A2 1B
	sta $00.b		; 85 00
	lda $1BAA.w		; AD AA 1B
	sta $02.b		; 85 02
	lda $1BA6.w		; AD A6 1B
	sta $04.b		; 85 04
	lda $1BAE.w		; AD AE 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1BAA.w		; AD AA 1B
	sta $00.b		; 85 00
	lda $1B82.w		; AD 82 1B
	sta $02.b		; 85 02
	lda $1BAE.w		; AD AE 1B
	sta $04.b		; 85 04
	lda $1B86.w		; AD 86 1B
	sta $06.b		; 85 06
	lda #$00.b		; A9 00
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA0.w		; AD A0 1B
	sta $00.b		; 85 00
	lda $1BA8.w		; AD A8 1B
	sta $02.b		; 85 02
	lda $1BA4.w		; AD A4 1B
	sta $04.b		; 85 04
	lda $1BAC.w		; AD AC 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA8.w		; AD A8 1B
	sta $00.b		; 85 00
	lda $1B80.w		; AD 80 1B
	sta $02.b		; 85 02
	lda $1BAC.w		; AD AC 1B
	sta $04.b		; 85 04
	lda $1B84.w		; AD 84 1B
	sta $06.b		; 85 06
	lda #$01.b		; A9 01
	brk $85.b		; 00 85
	php		; 08
	jsr $84BF.w		; 20 BF 84
	jsr $84B4.w		; 20 B4 84
	rts		; 60

	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1B80.w		; A9 80 1B
	sta $10.b		; 85 10
	ldy #$0000.w		; A0 00 00
	ldx #$000C.w		; A2 0C 00
	lda ($10.b),Y		; B1 10
	iny		; C8
	iny		; C8
	sta ($10.b),Y		; 91 10
	iny		; C8
	iny		; C8
	dex		; CA
	bne -11.b		; D0 F5
	lda #$1B80.w		; A9 80 1B
	sta $10.b		; 85 10
	lda #$1BB0.w		; A9 B0 1B
	sta $12.b		; 85 12
	lda #$9725.w		; A9 25 97
	sta $14.b		; 85 14
	stz $00.b		; 64 00
	ldx #$0006.w		; A2 06 00
	ldy $00.b		; A4 00
	lda ($14.b),Y		; B1 14
	sta $16.b		; 85 16
	lda ($12.b)		; B2 12
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	lda ($16.b),Y		; B1 16
	sta $02.b		; 85 02
	iny		; C8
	iny		; C8
	lda ($16.b),Y		; B1 16
	sta $04.b		; 85 04
	ldy #$0000.w		; A0 00 00
	lda $02.b		; A5 02
	sta ($10.b),Y		; 91 10
	ldy #$0004.w		; A0 04 00
	lda $04.b		; A5 04
	sta ($10.b),Y		; 91 10
	lda $10.b		; A5 10
	clc		; 18
	adc #$0008.w		; 69 08 00
	sta $10.b		; 85 10
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	inc $12.b		; E6 12
	inc $12.b		; E6 12
	dex		; CA
	bne -54.b		; D0 CA
	plp		; 28
	rts		; 60

	and ($97.b),Y		; 31 97
	eor #$6197.w		; 49 97 61
	sta [$79.b],Y		; 97 79
	sta [$91.b],Y		; 97 91
	sta [$A9.b],Y		; 97 A9
	sta [$47.b],Y		; 97 47
	brk $35.b		; 00 35
	brk $47.b		; 00 47
	brk $2F.b		; 00 2F
	brk $47.b		; 00 47
	brk $29.b		; 00 29
	brk $47.b		; 00 47
	brk $23.b		; 00 23
	brk $47.b		; 00 47
	brk $1D.b		; 00 1D
	brk $47.b		; 00 47
	brk $15.b		; 00 15
	brk $4E.b		; 00 4E
	brk $39.b		; 00 39
	brk $53.b		; 00 53
	brk $36.b		; 00 36
	brk $59.b		; 00 59
	brk $33.b		; 00 33
	brk $5F.b		; 00 5F
	brk $30.b		; 00 30
	brk $64.b		; 00 64
	brk $2D.b		; 00 2D
	brk $6A.b		; 00 6A
	brk $2A.b		; 00 2A
	brk $4E.b		; 00 4E
	brk $41.b		; 00 41
	brk $53.b		; 00 53
	brk $44.b		; 00 44
	brk $59.b		; 00 59
	brk $47.b		; 00 47
	brk $5F.b		; 00 5F
	brk $4A.b		; 00 4A
	brk $64.b		; 00 64
	brk $4D.b		; 00 4D
	brk $6A.b		; 00 6A
	brk $50.b		; 00 50
	brk $47.b		; 00 47
	brk $45.b		; 00 45
	brk $47.b		; 00 47
	brk $4B.b		; 00 4B
	brk $47.b		; 00 47
	brk $51.b		; 00 51
	brk $47.b		; 00 47
	brk $57.b		; 00 57
	brk $47.b		; 00 47
	brk $5D.b		; 00 5D
	brk $47.b		; 00 47
	brk $65.b		; 00 65
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $3B.b		; 00 3B
	brk $44.b		; 00 44
	brk $35.b		; 00 35
	brk $47.b		; 00 47
	brk $2F.b		; 00 2F
	brk $4A.b		; 00 4A
	brk $2A.b		; 00 2A
	brk $4D.b		; 00 4D
	brk $24.b		; 00 24
	brk $50.b		; 00 50
	brk $40.b		; 00 40
	brk $39.b		; 00 39
	brk $3B.b		; 00 3B
	brk $36.b		; 00 36
	brk $35.b		; 00 35
	brk $33.b		; 00 33
	brk $2F.b		; 00 2F
	brk $30.b		; 00 30
	brk $2A.b		; 00 2A
	brk $2D.b		; 00 2D
	brk $24.b		; 00 24
	brk $2A.b		; 00 2A
	brk $8B.b		; 00 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0005.w		; A9 05 00
	jsl $8083EB.l		; 22 EB 83 80
.ACCU 8
	sep #$20		; E2 20
	lda $1E14.w		; AD 14 1E
	cmp #$01.b		; C9 01
	bne   5.b		; D0 05
	lda $1D00.w		; AD 00 1D
	bra   3.b		; 80 03
	lda $1D03.w		; AD 03 1D
	sta $1B10.w		; 8D 10 1B
	jsr $99DB.w		; 20 DB 99
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0020.w		; A9 20 00
	sta $1C1E.w		; 8D 1E 1C
	lda #$4720.w		; A9 20 47
	sta $1C84.w		; 8D 84 1C
	lda #$47FE.w		; A9 FE 47
	sta $1C86.w		; 8D 86 1C
	jsl $82B8B2.l		; 22 B2 B8 82
	jsl $82B890.l		; 22 90 B8 82
.ACCU 8
	sep #$20		; E2 20
	stz $6D.b		; 64 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	jsl $808772.l		; 22 72 87 80
	jsr $83AE.w		; 20 AE 83
	jsl $808386.l		; 22 86 83 80
	jsl $808772.l		; 22 72 87 80
	jsr $81EB.w		; 20 EB 81
	jsl $82B8FB.l		; 22 FB B8 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C00.w		; AE 00 1C
	jsr ($983B.w,X)		; FC 3B 98
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	beq -30.b		; F0 E2
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -36.b		; D0 DC
	stz $1C02.w		; 9C 02 1C
	jsr $98C8.w		; 20 C8 98
	plb		; AB
	rtl		; 6B

	eor [$98.b]		; 47 98
	eor $98.b,X		; 55 98
	bvs -104.b		; 70 98
	sty $98.b		; 84 98
	sta ($98.b)		; 92 98
	lda ($98.b,S),Y		; B3 98
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C1E.w		; CE 1E 1C
	bne   6.b		; D0 06
	lda #$0002.w		; A9 02 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $98B4.w,X		; BD B4 98
	sta $1C88.w		; 8D 88 1C
	jsl $82B86B.l		; 22 6B B8 82
	lda #$0004.w		; A9 04 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C98.w		; AD 98 1C
	bne  12.b		; D0 0C
	lda #$0006.w		; A9 06 00
	sta $1C00.w		; 8D 00 1C
	lda #$01E0.w		; A9 E0 01
	sta $1C1E.w		; 8D 1E 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C1E.w		; CE 1E 1C
	bne   6.b		; D0 06
	lda #$0008.w		; A9 08 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $1C00.w		; 8D 00 1C
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  12.b		; D0 0C
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

	rts		; 60

	php		; 08
	cop $08.b		; 02 08
	cop $0C.b		; 02 0C
	cop $10.b		; 02 10
	cop $14.b		; 02 14
	cop $18.b		; 02 18
	cop $1C.b		; 02 1C
	cop $20.b		; 02 20
	cop $24.b		; 02 24
	cop $28.b		; 02 28
	cop $E2.b		; 02 E2
	jsr $01A9.w		; 20 A9 01
	sta $8A.b		; 85 8A
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $83D2.w		; 20 D2 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0005.w		; A9 05 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $9A94.w		; 20 94 9A
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0020.w		; A9 20 00
	sta $1C1E.w		; 8D 1E 1C
	lda #$4A4A.w		; A9 4A 4A
	sta $1C84.w		; 8D 84 1C
	jsl $82B8B2.l		; 22 B2 B8 82
	jsl $82B890.l		; 22 90 B8 82
.ACCU 8
	sep #$20		; E2 20
	lda #$09.b		; A9 09
	sta $A2.b		; 85 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	stz $6D.b		; 64 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	jsl $808772.l		; 22 72 87 80
	jsr $83AE.w		; 20 AE 83
	jsl $808386.l		; 22 86 83 80
	jsl $808772.l		; 22 72 87 80
	jsr $81EB.w		; 20 EB 81
	jsl $82B8FB.l		; 22 FB B8 82
	jsr $9AE4.w		; 20 E4 9A
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C00.w		; AE 00 1C
	jsr ($9947.w,X)		; FC 47 99
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	beq -33.b		; F0 DF
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -39.b		; D0 D9
	stz $1C02.w		; 9C 02 1C
	jsr $99D4.w		; 20 D4 99
	plb		; AB
	rtl		; 6B

	eor ($99.b,S),Y		; 53 99
	adc ($99.b,X)		; 61 99
	jmp ($9099.w,X)		; 7C 99 90
	sta $999E.w,Y		; 99 9E 99
	lda $30C299.l,X		; BF 99 C2 30
	dec $1C1E.w		; CE 1E 1C
	bne   6.b		; D0 06
	lda #$02.b		; A9 02
	brk $8D.b		; 00 8D
	brk $1C.b		; 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D00.w		; AD 00 1D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $99C0.w,X		; BD C0 99
	sta $1C88.w		; 8D 88 1C
	jsl $82B86B.l		; 22 6B B8 82
	lda #$0004.w		; A9 04 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C98.w		; AD 98 1C
	bne  12.b		; D0 0C
	lda #$0006.w		; A9 06 00
	sta $1C00.w		; 8D 00 1C
	lda #$0020.w		; A9 20 00
	sta $1C1E.w		; 8D 1E 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C1E.w		; CE 1E 1C
	bne   6.b		; D0 06
	lda #$0008.w		; A9 08 00
	sta $1C00.w		; 8D 00 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $1C00.w		; 8D 00 1C
	lda #$0001.w		; A9 01 00
	sta $1C02.w		; 8D 02 1C
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne  12.b		; D0 0C
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda #$C0.b		; A9 C0
	sta $73.b		; 85 73
	rts		; 60

	rts		; 60

	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	stz $00.b,X		; 74 00
	sei		; 78
	brk $7C.b		; 00 7C
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $84.b		; 00 84
	brk $E2.b		; 00 E2
	jsr $01A9.w		; 20 A9 01
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0A04.w		; 9C 04 0A
	stz $0A08.w		; 9C 08 0A
	stz $0A06.w		; 9C 06 0A
	stz $0A0A.w		; 9C 0A 0A
	lda #$0004.w		; A9 04 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda $1B10.w		; AD 10 1B
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $9A3D.w,X		; BD 3D 9A
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $9A51.w,X		; BD 51 9A
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$002A.w		; A9 2A 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
	lda #$002C.w		; A9 2C 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B10.w		; AD 10 1B
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $9A65.w,X		; BD 65 9A
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
	rts		; 60

	lsr $00.b		; 46 00
	lsr $00.b		; 46 00
	lsr $00.b		; 46 00
	lsr $00.b		; 46 00
	lsr $00.b		; 46 00
	rts		; 60

	brk $46.b		; 00 46
	brk $46.b		; 00 46
	brk $46.b		; 00 46
	brk $46.b		; 00 46
	brk $4C.b		; 00 4C
	brk $4C.b		; 00 4C
	brk $4E.b		; 00 4E
	brk $50.b		; 00 50
	brk $52.b		; 00 52
	brk $54.b		; 00 54
	brk $56.b		; 00 56
	brk $58.b		; 00 58
	brk $5A.b		; 00 5A
	brk $5C.b		; 00 5C
	brk $79.b		; 00 79
	txs		; 9A
	adc $7C9A.w,Y		; 79 9A 7C
	txs		; 9A
	adc $9A829A.l,X		; 7F 9A 82 9A
	sta $9A.b		; 85 9A
	dey		; 88
	txs		; 9A
	phb		; 8B
	txs		; 9A
	stx $919A.w		; 8E 9A 91
	txs		; 9A
	ora $FF11.w,X		; 1D 11 FF
	ora $FF12.w,X		; 1D 12 FF
	ora $FF13.w,X		; 1D 13 FF
	ora $FF14.w,X		; 1D 14 FF
	jsr $FF15.w		; 20 15 FF
	ora $FF16.w,X		; 1D 16 FF
	ora $FF17.w,X		; 1D 17 FF
	ora $FF18.w,X		; 1D 18 FF
	ora $FF19.w,X		; 1D 19 FF
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0A04.w		; 9C 04 0A
	stz $0A08.w		; 9C 08 0A
	stz $0A06.w		; 9C 06 0A
	stz $0A0A.w		; 9C 0A 0A
	lda #$0048.w		; A9 48 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$C02E.w		; A2 2E C0
	jsr $8310.w		; 20 10 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$002E.w		; A9 2E 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
	lda #$0030.w		; A9 30 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$9AE2.w		; A9 E2 9A
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0003.w		; A9 03 00
	sta $1C4A.w		; 8D 4A 1C
	lda #$BC4D.w		; A9 4D BC
	sta $1C44.w		; 8D 44 1C
	rts		; 60

	trb $C2FF.w		; 1C FF C2
	bmi -50.b		; 30 CE
	lsr A		; 4A
	trb $27D0.w		; 1C D0 27
	nop		; EA
	ldx $1C44.w		; AE 44 1C
	ldy #$05E0.w		; A0 E0 05
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $83,$00		; 54 00 83
	plb		; AB
	lda $1C44.w		; AD 44 1C
	clc		; 18
	adc #$0020.w		; 69 20 00
	cmp #$BCCD.w		; C9 CD BC
	bne   3.b		; D0 03
	lda #$BC4D.w		; A9 4D BC
	sta $1C44.w		; 8D 44 1C
	lda #$0003.w		; A9 03 00
	sta $1C4A.w		; 8D 4A 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B12.w		; AE 12 1B
	cpx $1B14.w		; EC 14 1B
	beq  35.b		; F0 23
	lda $9B41.w,X		; BD 41 9B
	sta $0074.w		; 8D 74 00
	ldx $1B14.w		; AE 14 1B
	lda $9B4D.w,X		; BD 4D 9B
	sta $1C06.w		; 8D 06 1C
	lda #$00C4.w		; A9 C4 00
	sta $1C08.w		; 8D 08 1C
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	rol A		; 2A
	adc [$6C.b]		; 67 6C
	adc [$A2.b]		; 67 A2
	adc [$E6.b]		; 67 E6
	adc [$2A.b]		; 67 2A
	pla		; 68
	ror $68.b		; 66 68
	brk $67.b		; 00 67
	mvn $84,$67		; 54 67 84
	adc [$C0.b]		; 67 C0
	adc [$0C.b]		; 67 0C
	pla		; 68
	pha		; 48
	pla		; 68
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C98.w		; AD 98 1C
	beq   1.b		; F0 01
	rts		; 60

	lda $1B12.w		; AD 12 1B
	sta $1B14.w		; 8D 14 1B
	lda $1B16.w		; AD 16 1B
	sta $1B18.w		; 8D 18 1B
	jsr $9B79.w		; 20 79 9B
	bcs   6.b		; B0 06
	jsr $9BBD.w		; 20 BD 9B
	jsr $9C52.w		; 20 52 9C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$FE.b]		; A7 FE
	and #$0220.w		; 29 20 02
	beq  23.b		; F0 17
	lda $1B12.w		; AD 12 1B
	cmp #$0000.w		; C9 00 00
	bne   5.b		; D0 05
	lda #$000A.w		; A9 0A 00
	bra   2.b		; 80 02
	dec A		; 3A
	dec A		; 3A
	sta $1B12.w		; 8D 12 1B
	jsr $9B13.w		; 20 13 9B
	bra  28.b		; 80 1C
	lda [$FE.b]		; A7 FE
	and #$0110.w		; 29 10 01
	beq  25.b		; F0 19
	lda $1B12.w		; AD 12 1B
	cmp #$000A.w		; C9 0A 00
	bne   5.b		; D0 05
	lda #$0000.w		; A9 00 00
	bra   2.b		; 80 02
	inc A		; 1A
	inc A		; 1A
	sta $1B12.w		; 8D 12 1B
	jsr $9B13.w		; 20 13 9B
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

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B12.w		; AE 12 1B
	jsr ($9BC8.w,X)		; FC C8 9B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	pei ($9B.b)		; D4 9B
	pei ($9B.b)		; D4 9B
	pei ($9B.b)		; D4 9B
	pei ($9B.b)		; D4 9B
	pei ($9B.b)		; D4 9B
	pei ($9B.b)		; D4 9B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$FE.b]		; A7 FE
	and #$4080.w		; 29 80 40
	beq  25.b		; F0 19
	ldx $1B12.w		; AE 12 1B
	ldy $9C46.w,X		; BC 46 9C
	lda $0000.w,Y		; B9 00 00
	jsr $860A.w		; 20 0A 86
	sta $0000.w,Y		; 99 00 00
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	bra  30.b		; 80 1E
	lda [$FE.b]		; A7 FE
	and #$8040.w		; 29 40 80
	beq  23.b		; F0 17
	ldx $1B12.w		; AE 12 1B
	ldy $9C46.w,X		; BC 46 9C
	lda $0000.w,Y		; B9 00 00
	jsr $862E.w		; 20 2E 86
	sta $0000.w,Y		; 99 00 00
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$FE.b]		; A7 FE
	and #$8040.w		; 29 40 80
	beq  17.b		; F0 11
	ldx $1B12.w		; AE 12 1B
	ldy $9C46.w,X		; BC 46 9C
	lda $0000.w,Y		; B9 00 00
	jsr $860A.w		; 20 0A 86
	sta $0000.w,Y		; 99 00 00
	bra  22.b		; 80 16
	lda [$FE.b]		; A7 FE
	and #$4080.w		; 29 80 40
	beq  15.b		; F0 0F
	ldx $1B12.w		; AE 12 1B
	ldy $9C46.w,X		; BC 46 9C
	lda $0000.w,Y		; B9 00 00
	jsr $862E.w		; 20 2E 86
	sta $0000.w,Y		; 99 00 00
	rts		; 60

	bcs  27.b		; B0 1B
	lda ($1B.b)		; B2 1B
	ldy $1B.b,X		; B4 1B
	ldx $1B.b,Y		; B6 1B
	clv		; B8
	tas		; 1B
	tsx		; BA
	tas		; 1B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B16.w		; AD 16 1B
	cmp $1B18.w		; CD 18 1B
	beq  24.b		; F0 18
	lda $1B16.w		; AD 16 1B
	sta $00.b		; 85 00
	jsr $8404.w		; 20 04 84
	ldy #$1B46.w		; A0 46 1B
	jsr $9C75.w		; 20 75 9C
	lda #$1B40.w		; A9 40 1B
	sta $74.b		; 85 74
	lda #$0083.w		; A9 83 00
	sta $76.b		; 85 76
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C3C.w		; AD 3C 1C
	asl A		; 0A
	tax		; AA
	lda $9CBA.w,X		; BD BA 9C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $0000.w,Y		; 99 00 00
	lda $0002.w,X		; BD 02 00
	sta $0002.w,Y		; 99 02 00
	lda $0004.w,X		; BD 04 00
	sta $0008.w,Y		; 99 08 00
	lda $0006.w,X		; BD 06 00
	sta $000A.w,Y		; 99 0A 00
	lda $1C3A.w		; AD 3A 1C
	asl A		; 0A
	tax		; AA
	lda $9CBA.w,X		; BD BA 9C
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $0004.w,Y		; 99 04 00
	lda $0002.w,X		; BD 02 00
	sta $0006.w,Y		; 99 06 00
	lda $0004.w,X		; BD 04 00
	sta $000C.w,Y		; 99 0C 00
	lda $0006.w,X		; BD 06 00
	sta $000E.w,Y		; 99 0E 00
	rts		; 60

	cmp $E59F.w,X		; DD 9F E5
	sta $F59FED.l,X		; 9F ED 9F F5
	sta $059FFD.l,X		; 9F FD 9F 05
	ldy #$A00D.w		; A0 0D A0
	ora $A0.b,X		; 15 A0
	ora $25A0.w,X		; 1D A0 25
	ldy #$D7A2.w		; A0 A2 D7
	sta $0000BD.l,X		; 9F BD 00 00
	sta $1B40.w		; 8D 40 1B
	lda $0002.w,X		; BD 02 00
	sta $1B42.w		; 8D 42 1B
	lda $0004.w,X		; BD 04 00
	sta $1B44.w		; 8D 44 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0A04.w		; 9C 04 0A
	stz $0A08.w		; 9C 08 0A
	stz $0A06.w		; 9C 06 0A
	stz $0A0A.w		; 9C 0A 0A
	lda #$0004.w		; A9 04 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0006.w		; A9 06 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$003A.w		; A9 3A 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$003C.w		; A9 3C 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0004.w		; A9 04 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
	lda #$0006.w		; A9 06 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B1C.w		; AD 1C 1B
	asl A		; 0A
	tax		; AA
	lda $9F67.w,X		; BD 67 9F
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B1C.w		; AD 1C 1B
	asl A		; 0A
	tax		; AA
	lda $9F7B.w,X		; BD 7B 9F
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
	lda #$10CD.w		; A9 CD 10
	sta $00.b		; 85 00
	lda #$2400.w		; A9 00 24
	sta $02.b		; 85 02
	lda #$0010.w		; A9 10 00
	sta $04.b		; 85 04
	lda #$0010.w		; A9 10 00
	sta $06.b		; 85 06
	jsl $8094E8.l		; 22 E8 94 80
	lda #$1000.w		; A9 00 10
	sta $00.b		; 85 00
	lda #$5000.w		; A9 00 50
	sta $02.b		; 85 02
	jsr $8473.w		; 20 73 84
	lda #$0007.w		; A9 07 00
	sta $00.b		; 85 00
	lda #$0044.w		; A9 44 00
	sta $01.b		; 85 01
	lda #$0026.w		; A9 26 00
	sta $02.b		; 85 02
	lda #$52AB.w		; A9 AB 52
	sta $10.b		; 85 10
	lda #$00C4.w		; A9 C4 00
	sta $12.b		; 85 12
	lda #$554C.w		; A9 4C 55
	sta $14.b		; 85 14
	lda #$00C4.w		; A9 C4 00
	sta $16.b		; 85 16
	jsl $809529.l		; 22 29 95 80
	lda #$0080.w		; A9 80 00
	sta $006F.w		; 8D 6F 00
.ACCU 8
	sep #$20		; E2 20
	lda #$A0.b		; A9 A0
	sta WOBJSEL.w		; 8D 25 21
	lda #$04.b		; A9 04
	sta WOBJLOG.w		; 8D 2B 21
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0500.w		; 9C 00 05
	stz $1B0C.w		; 9C 0C 1B
	lda #$0008.w		; A9 08 00
	sta $1B00.w		; 8D 00 1B
	stz $1B0E.w		; 9C 0E 1B
	jsr $84AC.w		; 20 AC 84
	jsr $96C0.w		; 20 C0 96
	lda $1BA8.w		; AD A8 1B
	sta $00.b		; 85 00
	lda $1B80.w		; AD 80 1B
	sta $02.b		; 85 02
	lda $1BAC.w		; AD AC 1B
	sta $04.b		; 85 04
	lda $1B84.w		; AD 84 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B80.w		; AD 80 1B
	sta $00.b		; 85 00
	lda $1B88.w		; AD 88 1B
	sta $02.b		; 85 02
	lda $1B84.w		; AD 84 1B
	sta $04.b		; 85 04
	lda $1B8C.w		; AD 8C 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B80.w		; AD 80 1B
	sta $00.b		; 85 00
	lda $1B88.w		; AD 88 1B
	sta $02.b		; 85 02
	lda $1B84.w		; AD 84 1B
	sta $04.b		; 85 04
	lda $1B8C.w		; AD 8C 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B88.w		; AD 88 1B
	sta $00.b		; 85 00
	lda $1B90.w		; AD 90 1B
	sta $02.b		; 85 02
	lda $1B8C.w		; AD 8C 1B
	sta $04.b		; 85 04
	lda $1B94.w		; AD 94 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B88.w		; AD 88 1B
	sta $00.b		; 85 00
	lda $1B90.w		; AD 90 1B
	sta $02.b		; 85 02
	lda $1B8C.w		; AD 8C 1B
	sta $04.b		; 85 04
	lda $1B94.w		; AD 94 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B90.w		; AD 90 1B
	sta $00.b		; 85 00
	lda $1B98.w		; AD 98 1B
	sta $02.b		; 85 02
	lda $1B94.w		; AD 94 1B
	sta $04.b		; 85 04
	lda $1B9C.w		; AD 9C 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B90.w		; AD 90 1B
	sta $00.b		; 85 00
	lda $1B98.w		; AD 98 1B
	sta $02.b		; 85 02
	lda $1B94.w		; AD 94 1B
	sta $04.b		; 85 04
	lda $1B9C.w		; AD 9C 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B98.w		; AD 98 1B
	sta $00.b		; 85 00
	lda $1BA0.w		; AD A0 1B
	sta $02.b		; 85 02
	lda $1B9C.w		; AD 9C 1B
	sta $04.b		; 85 04
	lda $1BA4.w		; AD A4 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1B98.w		; AD 98 1B
	sta $00.b		; 85 00
	lda $1BA0.w		; AD A0 1B
	sta $02.b		; 85 02
	lda $1B9C.w		; AD 9C 1B
	sta $04.b		; 85 04
	lda $1BA4.w		; AD A4 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA0.w		; AD A0 1B
	sta $00.b		; 85 00
	lda $1BA8.w		; AD A8 1B
	sta $02.b		; 85 02
	lda $1BA4.w		; AD A4 1B
	sta $04.b		; 85 04
	lda $1BAC.w		; AD AC 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA0.w		; AD A0 1B
	sta $00.b		; 85 00
	lda $1BA8.w		; AD A8 1B
	sta $02.b		; 85 02
	lda $1BA4.w		; AD A4 1B
	sta $04.b		; 85 04
	lda $1BAC.w		; AD AC 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	lda $1BA8.w		; AD A8 1B
	sta $00.b		; 85 00
	lda $1B80.w		; AD 80 1B
	sta $02.b		; 85 02
	lda $1BAC.w		; AD AC 1B
	sta $04.b		; 85 04
	lda $1B84.w		; AD 84 1B
	sta $06.b		; 85 06
	lda #$0001.w		; A9 01 00
	sta $08.b		; 85 08
	jsr $84BF.w		; 20 BF 84
	jsr $84B4.w		; 20 B4 84
	lda #$672A.w		; A9 2A 67
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	jsl $82B890.l		; 22 90 B8 82
	jsr $9CCE.w		; 20 CE 9C
	lda $1B16.w		; AD 16 1B
	sta $00.b		; 85 00
	jsr $8404.w		; 20 04 84
	ldy #$1B46.w		; A0 46 1B
	jsr $9C75.w		; 20 75 9C
	lda #$1B40.w		; A9 40 1B
	sta $74.b		; 85 74
	lda #$0083.w		; A9 83 00
	sta $76.b		; 85 76
	jsl $808C43.l		; 22 43 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8A.b		; A5 8A
	and #$00FF.w		; 29 FF 00
	cmp #$0008.w		; C9 08 00
	bne   3.b		; D0 03
	jsr $9F54.w		; 20 54 9F
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$6892.w		; A9 92 68
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

	plp		; 28
	brk $28.b		; 00 28
	brk $2A.b		; 00 2A
	brk $2C.b		; 00 2C
	brk $2E.b		; 00 2E
	brk $30.b		; 00 30
	brk $32.b		; 00 32
	brk $34.b		; 00 34
	brk $36.b		; 00 36
	brk $38.b		; 00 38
	brk $8F.b		; 00 8F
	sta $929F8F.l,X		; 9F 8F 9F 92
	sta $989F95.l,X		; 9F 95 9F 98
	sta $9E9F9B.l,X		; 9F 9B 9F 9E
	sta $A49FA1.l,X		; 9F A1 9F A4
	sta $079FA7.l,X		; 9F A7 9F 07
	ora ($FF.b),Y		; 11 FF
	ora [$12.b]		; 07 12
	sbc $FF1307.l,X		; FF 07 13 FF
	ora [$14.b]		; 07 14
	sbc $FF1507.l,X		; FF 07 15 FF
	ora [$16.b]		; 07 16
	sbc $FF1707.l,X		; FF 07 17 FF
	ora [$18.b]		; 07 18
	sbc $FF1907.l,X		; FF 07 19 FF
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $D0.b		; 64 D0
	stz $D2.b		; 64 D2
	stz $D6.b		; 64 D6
	stz $D8.b		; 64 D8
	stz $DA.b		; 64 DA
	stz $DC.b		; 64 DC
	stz $DE.b		; 64 DE
	stz $E0.b		; 64 E0
	stz $E2.b		; 64 E2
	stz $E4.b		; 64 E4
	stz $E6.b		; 64 E6
	stz $E8.b		; 64 E8
	stz $EA.b		; 64 EA
	stz $F1.b		; 64 F1
	stz $F2.b		; 64 F2
	stz $F3.b		; 64 F3
	stz $F4.b		; 64 F4
	stz $F5.b		; 64 F5
	stz $F6.b		; 64 F6
	stz $F7.b		; 64 F7
	stz $F8.b		; 64 F8
	rts		; 60

	inc A		; 1A
	ora $08.b,S		; 03 08
	brk $02.b		; 00 02
	brk $72.b		; 00 72
	cop $73.b		; 02 73
	cop $82.b		; 02 82
	cop $83.b		; 02 83
	cop $74.b		; 02 74
	cop $75.b		; 02 75
	cop $84.b		; 02 84
	cop $85.b		; 02 85
	cop $76.b		; 02 76
	cop $77.b		; 02 77
	cop $86.b		; 02 86
	cop $87.b		; 02 87
	cop $78.b		; 02 78
	cop $79.b		; 02 79
	cop $88.b		; 02 88
	cop $89.b		; 02 89
	cop $7A.b		; 02 7A
	cop $7B.b		; 02 7B
	cop $8A.b		; 02 8A
	cop $8B.b		; 02 8B
	cop $7C.b		; 02 7C
	cop $7D.b		; 02 7D
	cop $8C.b		; 02 8C
	cop $8D.b		; 02 8D
	cop $7E.b		; 02 7E
	cop $7F.b		; 02 7F
	cop $8E.b		; 02 8E
	cop $8F.b		; 02 8F
	cop $90.b		; 02 90
	cop $91.b		; 02 91
	cop $A0.b		; 02 A0
	cop $A1.b		; 02 A1
	cop $92.b		; 02 92
	cop $93.b		; 02 93
	cop $A2.b		; 02 A2
	cop $A3.b		; 02 A3
	cop $94.b		; 02 94
	cop $95.b		; 02 95
	cop $A4.b		; 02 A4
	cop $A5.b		; 02 A5
	cop $01.b		; 02 01
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	sed		; F8
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	ora ($00.b,X)		; 01 00
	sed		; F8
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	ora ($00.b,X)		; 01 00
	sed		; F8
	brk $00.b		; 00 00
	ora $40.b,S		; 03 40
	ora ($00.b,X)		; 01 00
	sed		; F8
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda #$0002.w		; A9 02 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $A4C7.w		; 20 C7 A4
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $6D.b		; 85 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	lda #$81.b		; A9 81
	sta NMITIMEN.w		; 8D 00 42
	jsl $808386.l		; 22 86 83 80
	jsl $808772.l		; 22 72 87 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	bne  13.b		; D0 0D
	jsr $A388.w		; 20 88 A3
	jsl $80A3CA.l		; 22 CA A3 80
	ldx $1B10.w		; AE 10 1B
	jsr ($A09F.w,X)		; FC 9F A0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	beq -35.b		; F0 DD
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -41.b		; D0 D7
	stz $1C02.w		; 9C 02 1C
	jsr $BAEF.w		; 20 EF BA
	plb		; AB
	rtl		; 6B

	plb		; AB
	ldy #$A0D2.w		; A0 D2 A0
	sbc $35A0.w,Y		; F9 A0 35
	lda ($71.b,X)		; A1 71
	lda ($AD.b,X)		; A1 AD
	lda ($C2.b,X)		; A1 C2
	bmi -83.b		; 30 AD
	trb $1B.b		; 14 1B
	sta $1B20.w		; 8D 20 1B
	jsr $A32B.w		; 20 2B A3
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B14.w		; AD 14 1B
	cmp $1B20.w		; CD 20 1B
	beq  17.b		; F0 11
	ldx $1B14.w		; AE 14 1B
	lda $A44F.w,X		; BD 4F A4
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B16.w		; AD 16 1B
	sta $1B22.w		; 8D 22 1B
	jsr $A32B.w		; 20 2B A3
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B16.w		; AD 16 1B
	cmp $1B22.w		; CD 22 1B
	beq  17.b		; F0 11
	ldx $1B16.w		; AE 16 1B
	lda $A457.w,X		; BD 57 A4
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A2B5.w		; 20 B5 A2
	bcs  52.b		; B0 34
	lda $1B18.w		; AD 18 1B
	sta $1B24.w		; 8D 24 1B
	jsr $A32B.w		; 20 2B A3
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B18.w		; AD 18 1B
	cmp $1B24.w		; CD 24 1B
	beq  33.b		; F0 21
	lda $1B18.w		; AD 18 1B
	sta $00.b		; 85 00
	lda #$1806.w		; A9 06 18
	sta $02.b		; 85 02
	jsr $A6F9.w		; 20 F9 A6
	lda #$1886.w		; A9 86 18
	sta $02.b		; 85 02
	jsr $A746.w		; 20 46 A7
	lda #$1800.w		; A9 00 18
	sta $74.b		; 85 74
	lda #$0083.w		; A9 83 00
	sta $76.b		; 85 76
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A26C.w		; 20 6C A2
	bcs  52.b		; B0 34
	lda $1B1A.w		; AD 1A 1B
	sta $1B26.w		; 8D 26 1B
	jsr $A32B.w		; 20 2B A3
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B1A.w		; AD 1A 1B
	cmp $1B26.w		; CD 26 1B
	beq  33.b		; F0 21
	lda $1B1A.w		; AD 1A 1B
	sta $00.b		; 85 00
	lda #$1826.w		; A9 26 18
	sta $02.b		; 85 02
	jsr $A6F9.w		; 20 F9 A6
	lda #$18A6.w		; A9 A6 18
	sta $02.b		; 85 02
	jsr $A746.w		; 20 46 A7
	lda #$1820.w		; A9 20 18
	sta $74.b		; 85 74
	lda #$0083.w		; A9 83 00
	sta $76.b		; 85 76
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $A1C2.w		; 20 C2 A1
	bcs  52.b		; B0 34
	lda $1B1C.w		; AD 1C 1B
	sta $1B28.w		; 8D 28 1B
	jsr $A32B.w		; 20 2B A3
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B1C.w		; AD 1C 1B
	cmp $1B28.w		; CD 28 1B
	beq  33.b		; F0 21
	lda $1B1C.w		; AD 1C 1B
	sta $00.b		; 85 00
	lda #$1846.w		; A9 46 18
	sta $02.b		; 85 02
	jsr $A6F9.w		; 20 F9 A6
	lda #$18C6.w		; A9 C6 18
	sta $02.b		; 85 02
	jsr $A746.w		; 20 46 A7
	lda #$1840.w		; A9 40 18
	sta $74.b		; 85 74
	lda #$0083.w		; A9 83 00
	sta $76.b		; 85 76
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $813D.w		; 20 3D 81
	bcc  10.b		; 90 0A
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$F2.b		; A9 F2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0060.w		; AD 60 00
	and #$00C0.w		; 29 C0 00
	bne   2.b		; D0 02
	clc		; 18
	rts		; 60

	lda #$005D.w		; A9 5D 00
	sta $1C50.w		; 8D 50 1C
	jsl $808386.l		; 22 86 83 80
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1C54.w		; 8D 54 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B1C.w		; AD 1C 1B
	lsr A		; 4A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $A23F.w,X		; BD 3F A2
	beq  10.b		; F0 0A
	sta $1C50.w		; 8D 50 1C
	lda $A212.w,X		; BD 12 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda SLHV.w		; AD 37 21
	lda OPVCT.w		; AD 3D 21
	cmp #$E1.b		; C9 E1
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
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora [$20.b],Y		; 17 20
	jsr $1820.w		; 20 20 18
	and ($21.b,X)		; 21 21
	and ($21.b,X)		; 21 21
	ora $2222.w,Y		; 19 22 22
	jsl $231A22.l		; 22 22 1A 23
	and $23.b,S		; 23 23
	and $1B.b,S		; 23 1B
	bit $24.b		; 24 24
	bit $24.b		; 24 24
	trb $2525.w		; 1C 25 25
	and $25.b		; 25 25
	ora $2626.w,X		; 1D 26 26
	rol $26.b		; 26 26
	asl $2727.w,X		; 1E 27 27
	and [$27.b]		; 27 27
	brk $30.b		; 00 30
	and ($32.b),Y		; 31 32
	and ($34.b,S),Y		; 33 34
	and $36.b,X		; 35 36
	and [$38.b],Y		; 37 38
	dec A		; 3A
	tsa		; 3B
	bit $3E3D.w,X		; 3C 3D 3E
	and $424140.l,X		; 3F 40 41 42
	eor $44.b,S		; 43 44
	eor $46.b		; 45 46
	eor [$48.b]		; 47 48
	eor #$4B4A.w		; 49 4A 4B
	jmp $4E4D.w		; 4C 4D 4E
	eor $525150.l		; 4F 50 51 52
	eor ($54.b,S),Y		; 53 54
	eor $56.b,X		; 55 56
	eor [$58.b],Y		; 57 58
	eor $5B5A.w,Y		; 59 5A 5B
	jmp $AD30C2.l		; 5C C2 30 AD
	rts		; 60

	brk $29.b		; 00 29
	cpy #$F000.w		; C0 00 F0
	ora ($AD.b)		; 12 AD
	inc A		; 1A
	tas		; 1B
	lsr A		; 4A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $A28C.w,X		; BD 8C A2
	sta $78.b		; 85 78
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

	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	ora $06.b		; 05 06
	ora [$08.b]		; 07 08
	ora #$0B0A.w		; 09 0A 0B
	tsb $0E0D.w		; 0C 0D 0E
	ora $121110.l		; 0F 10 11 12
	ora ($14.b,S),Y		; 13 14
	ora $16.b,X		; 15 16
	ora [$18.b],Y		; 17 18
	ora $1B1A.w,Y		; 19 1A 1B
	trb $1F1E.w		; 1C 1E 1F
	jsr $2221.w		; 20 21 22
	and $24.b,S		; 23 24
	and $28.b		; 25 28
	and #$2B2A.w		; 29 2A 2B
	bit $30C2.w		; 2C C2 30
	lda $0060.w		; AD 60 00
	and #$00C0.w		; 29 C0 00
	bne   2.b		; D0 02
	clc		; 18
	rts		; 60

	lda #$0001.w		; A9 01 00
	jsl $80EB8C.l		; 22 8C EB 80
	jsl $808386.l		; 22 86 83 80
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1C54.w		; 8D 54 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B18.w		; AD 18 1B
	lsr A		; 4A
	tax		; AA
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $A317.w,X		; BD 17 A3
	beq  33.b		; F0 21
	sta $A2.b		; 85 A2
	jsl $80EB4B.l		; 22 4B EB 80
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $A2.b		; A5 A2
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
	lda SLHV.w		; AD 37 21
	lda OPVCT.w		; AD 3D 21
	cmp #$E1.b		; C9 E1
	bne -10.b		; D0 F6
	stz $1C54.w		; 9C 54 1C
	bra  11.b		; 80 0B
	lda #$01.b		; A9 01
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 8
	sep #$20		; E2 20
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

	brk $02.b		; 00 02
	ora $05.b,S		; 03 05
	asl $07.b		; 06 07
	php		; 08
	ora #$0B0A.w		; 09 0A 0B
	tsb $0E0D.w		; 0C 0D 0E
	ora $121110.l		; 0F 10 11 12
	ora ($14.b,S),Y		; 13 14
	ora $AD.b,X		; 15 AD
	rts		; 60

	brk $29.b		; 00 29
	brk $0C.b		; 00 0C
	bne  64.b		; D0 40
	lda $0060.w		; AD 60 00
	and #$0100.w		; 29 00 01
	beq  25.b		; F0 19
	lda $1B10.w		; AD 10 1B
	asl A		; 0A
	tax		; AA
	lda $A376.w,X		; BD 76 A3
	sta $1C1C.w		; 8D 1C 1C
	ldy $A374.w,X		; BC 74 A3
	lda $0000.w,Y		; B9 00 00
	jsr $8000.w		; 20 00 80
	sta $0000.w,Y		; 99 00 00
	bra  31.b		; 80 1F
	lda $0060.w		; AD 60 00
	and #$0200.w		; 29 00 02
	beq  23.b		; F0 17
	lda $1B10.w		; AD 10 1B
	asl A		; 0A
	tax		; AA
	lda $A376.w,X		; BD 76 A3
	sta $1C1C.w		; 8D 1C 1C
	ldy $A374.w,X		; BC 74 A3
	lda $0000.w,Y		; B9 00 00
	jsr $800F.w		; 20 0F 80
	sta $0000.w,Y		; 99 00 00
	rts		; 60

	trb $1B.b		; 14 1B
	asl $00.b		; 06 00
	asl $1B.b,X		; 16 1B
	cop $00.b		; 02 00
	clc		; 18
	tas		; 1B
	rol $00.b		; 26 00
	inc A		; 1A
	tas		; 1B
	bvc   0.b		; 50 00
	trb $581B.w		; 1C 1B 58
	brk $C2.b		; 00 C2
	bmi -83.b		; 30 AD
	bpl  27.b		; 10 1B
	sta $1B12.w		; 8D 12 1B
	lda $60.b		; A5 60
	and #$0800.w		; 29 00 08
	beq  30.b		; F0 1E
	lda $1B10.w		; AD 10 1B
	cmp #$0000.w		; C9 00 00
	bne   5.b		; D0 05
	lda #$000A.w		; A9 0A 00
	bra   2.b		; 80 02
	dec A		; 3A
	dec A		; 3A
	sta $1B10.w		; 8D 10 1B
	jsr $A3DB.w		; 20 DB A3
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	lda $60.b		; A5 60
	and #$0400.w		; 29 00 04
	beq  30.b		; F0 1E
	lda $1B10.w		; AD 10 1B
	cmp #$000A.w		; C9 0A 00
	bne   5.b		; D0 05
	lda #$0000.w		; A9 00 00
	bra   2.b		; 80 02
	inc A		; 1A
	inc A		; 1A
	sta $1B10.w		; 8D 10 1B
	jsr $A3DB.w		; 20 DB A3
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B10.w		; AE 10 1B
	cpx $1B12.w		; EC 12 1B
	beq   9.b		; F0 09
	jsr ($A3EF.w,X)		; FC EF A3
	ldx $1B12.w		; AE 12 1B
	jsr ($A3FB.w,X)		; FC FB A3
	rts		; 60

	ora [$A4.b]		; 07 A4
	ora $67A4.w,Y		; 19 A4 67
	ldy $76.b		; A4 76
	ldy $85.b		; A4 85
	ldy $94.b		; A4 94
	ldy $2B.b		; A4 2B
	ldy $3D.b		; A4 3D
	ldy $97.b		; A4 97
	ldy $A6.b		; A4 A6
	ldy $B5.b		; A4 B5
	ldy $C4.b		; A4 C4
	ldy $C2.b		; A4 C2
	bmi -82.b		; 30 AE
	trb $1B.b		; 14 1B
	lda $A44F.w,X		; BD 4F A4
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B16.w		; AE 16 1B
	lda $A457.w,X		; BD 57 A4
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B14.w		; AE 14 1B
	lda $A45B.w,X		; BD 5B A4
	sta $1C06.w		; 8D 06 1C
	lda #$00C4.w		; A9 C4 00
	sta $1C08.w		; 8D 08 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B16.w		; AE 16 1B
	lda $A463.w,X		; BD 63 A4
	sta $1C06.w		; 8D 06 1C
	lda #$00C4.w		; A9 C4 00
	sta $1C08.w		; 8D 08 1C
	rts		; 60

	bcc 101.b		; 90 65
	ldx $EC65.w,Y		; BE 65 EC
	adc $1A.b		; 65 1A
	ror $A4.b		; 66 A4
	ror $D2.b		; 66 D2
	ror $D8.b		; 66 D8
	stz $06.b		; 64 06
	adc $34.b		; 65 34
	adc $62.b		; 65 62
	adc $48.b		; 65 48
	ror $76.b		; 66 76
	ror $C2.b		; 66 C2
	bmi -87.b		; 30 A9
	brk $18.b		; 00 18
	sta $0074.w		; 8D 74 00
	lda #$0083.w		; A9 83 00
	sta $0076.w		; 8D 76 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1820.w		; A9 20 18
	sta $0074.w		; 8D 74 00
	lda #$0083.w		; A9 83 00
	sta $0076.w		; 8D 76 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1840.w		; A9 40 18
	sta $0074.w		; 8D 74 00
	lda #$0083.w		; A9 83 00
	sta $0076.w		; 8D 76 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1880.w		; A9 80 18
	sta $1C06.w		; 8D 06 1C
	lda #$0083.w		; A9 83 00
	sta $1C08.w		; 8D 08 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$18A0.w		; A9 A0 18
	sta $1C06.w		; 8D 06 1C
	lda #$0083.w		; A9 83 00
	sta $1C08.w		; 8D 08 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$18C0.w		; A9 C0 18
	sta $1C06.w		; 8D 06 1C
	lda #$0083.w		; A9 83 00
	sta $1C08.w		; 8D 08 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$01.b		; A9 01
	jsl $80EB8C.l		; 22 8C EB 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0A04.w		; 9C 04 0A
	stz $0A08.w		; 9C 08 0A
	stz $0A06.w		; 9C 06 0A
	stz $0A0A.w		; 9C 0A 0A
	lda #$003E.w		; A9 3E 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0000.w		; A9 00 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0016.w		; A9 16 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0018.w		; A9 18 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0014.w		; A9 14 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
	lda #$0016.w		; A9 16 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$A566.w		; A9 66 A5
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F5C.w		; AD 5C 1F
	and #$0080.w		; 29 80 00
	beq   6.b		; F0 06
	lda #$0002.w		; A9 02 00
	sta $1B16.w		; 8D 16 1B
	ldx $1B16.w		; AE 16 1B
	lda $A463.w,X		; BD 63 A4
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	lda $1F5A.w		; AD 5A 1F
	and #$00FF.w		; 29 FF 00
	lsr A		; 4A
	sta $1B14.w		; 8D 14 1B
	ldx $1B14.w		; AE 14 1B
	lda $A44F.w,X		; BD 4F A4
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	jsr $A569.w		; 20 69 A5
	jsr $A5C4.w		; 20 C4 A5
	rts		; 60

	ora $0F.b		; 05 0F
	sbc $B651A2.l,X		; FF A2 51 B6
	lda $0000.w,X		; BD 00 00
	sta $1800.w		; 8D 00 18
	sta $1880.w		; 8D 80 18
	lda $0002.w,X		; BD 02 00
	sta $1802.w		; 8D 02 18
	sta $1882.w		; 8D 82 18
	lda $0004.w,X		; BD 04 00
	sta $1804.w		; 8D 04 18
	sta $1884.w		; 8D 84 18
	ldx #$B657.w		; A2 57 B6
	lda $0000.w,X		; BD 00 00
	sta $1820.w		; 8D 20 18
	sta $18A0.w		; 8D A0 18
	lda $0002.w,X		; BD 02 00
	sta $1822.w		; 8D 22 18
	sta $18A2.w		; 8D A2 18
	lda $0004.w,X		; BD 04 00
	sta $1824.w		; 8D 24 18
	sta $18A4.w		; 8D A4 18
	ldx #$B65D.w		; A2 5D B6
	lda $0000.w,X		; BD 00 00
	sta $1840.w		; 8D 40 18
	sta $18C0.w		; 8D C0 18
	lda $0002.w,X		; BD 02 00
	sta $1842.w		; 8D 42 18
	sta $18C2.w		; 8D C2 18
	lda $0004.w,X		; BD 04 00
	sta $1844.w		; 8D 44 18
	sta $18C4.w		; 8D C4 18
	rts		; 60

	lda $1B18.w		; AD 18 1B
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $A6D9.w,X		; BD D9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $1806.w		; 8D 06 18
	sta $1826.w		; 8D 26 18
	sta $1846.w		; 8D 46 18
	lda $0002.w,X		; BD 02 00
	sta $1808.w		; 8D 08 18
	sta $1828.w		; 8D 28 18
	sta $1848.w		; 8D 48 18
	lda $0004.w,X		; BD 04 00
	sta $180E.w		; 8D 0E 18
	sta $182E.w		; 8D 2E 18
	sta $184E.w		; 8D 4E 18
	lda $0006.w,X		; BD 06 00
	sta $1810.w		; 8D 10 18
	sta $1830.w		; 8D 30 18
	sta $1850.w		; 8D 50 18
	lda $1B18.w		; AD 18 1B
	and #$00F0.w		; 29 F0 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tax		; AA
	lda $A6D9.w,X		; BD D9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $180A.w		; 8D 0A 18
	sta $182A.w		; 8D 2A 18
	sta $184A.w		; 8D 4A 18
	lda $0002.w,X		; BD 02 00
	sta $180C.w		; 8D 0C 18
	sta $182C.w		; 8D 2C 18
	sta $184C.w		; 8D 4C 18
	lda $0004.w,X		; BD 04 00
	sta $1812.w		; 8D 12 18
	sta $1832.w		; 8D 32 18
	sta $1852.w		; 8D 52 18
	lda $0006.w,X		; BD 06 00
	sta $1814.w		; 8D 14 18
	sta $1834.w		; 8D 34 18
	sta $1854.w		; 8D 54 18
	lda $1B24.w		; AD 24 1B
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	lda $A6B9.w,X		; BD B9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $1886.w		; 8D 86 18
	sta $18A6.w		; 8D A6 18
	sta $18C6.w		; 8D C6 18
	lda $0002.w,X		; BD 02 00
	sta $1888.w		; 8D 88 18
	sta $18A8.w		; 8D A8 18
	sta $18C8.w		; 8D C8 18
	lda $0004.w,X		; BD 04 00
	sta $188E.w		; 8D 8E 18
	sta $18AE.w		; 8D AE 18
	sta $18CE.w		; 8D CE 18
	lda $0006.w,X		; BD 06 00
	sta $1890.w		; 8D 90 18
	sta $18B0.w		; 8D B0 18
	sta $18D0.w		; 8D D0 18
	lda $1B24.w		; AD 24 1B
	and #$00F0.w		; 29 F0 00
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tax		; AA
	lda $A6B9.w,X		; BD B9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $188A.w		; 8D 8A 18
	sta $18AA.w		; 8D AA 18
	sta $18CA.w		; 8D CA 18
	lda $0002.w,X		; BD 02 00
	sta $188C.w		; 8D 8C 18
	sta $18AC.w		; 8D AC 18
	sta $18CC.w		; 8D CC 18
	lda $0004.w,X		; BD 04 00
	sta $1892.w		; 8D 92 18
	sta $18B2.w		; 8D B2 18
	sta $18D2.w		; 8D D2 18
	lda $0006.w,X		; BD 06 00
	sta $1894.w		; 8D 94 18
	sta $18B4.w		; 8D B4 18
	sta $18D4.w		; 8D D4 18
	rts		; 60

	adc $B6.b,S		; 63 B6
	rtl		; 6B

	ldx $73.b,Y		; B6 73
	ldx $7B.b,Y		; B6 7B
	ldx $83.b,Y		; B6 83
	ldx $8B.b,Y		; B6 8B
	ldx $93.b,Y		; B6 93
	ldx $9B.b,Y		; B6 9B
	ldx $A3.b,Y		; B6 A3
	ldx $AB.b,Y		; B6 AB
	ldx $B3.b,Y		; B6 B3
	ldx $BB.b,Y		; B6 BB
	ldx $C3.b,Y		; B6 C3
	ldx $CB.b,Y		; B6 CB
	ldx $D3.b,Y		; B6 D3
	ldx $DB.b,Y		; B6 DB
	ldx $E3.b,Y		; B6 E3
	ldx $EB.b,Y		; B6 EB
	ldx $F3.b,Y		; B6 F3
	ldx $FB.b,Y		; B6 FB
	ldx $03.b,Y		; B6 03
	lda [$0B.b],Y		; B7 0B
	lda [$13.b],Y		; B7 13
	lda [$1B.b],Y		; B7 1B
	lda [$23.b],Y		; B7 23
	lda [$2B.b],Y		; B7 2B
	lda [$33.b],Y		; B7 33
	lda [$3B.b],Y		; B7 3B
	lda [$43.b],Y		; B7 43
	lda [$4B.b],Y		; B7 4B
	lda [$53.b],Y		; B7 53
	lda [$5B.b],Y		; B7 5B
	lda [$C2.b],Y		; B7 C2
	bmi -92.b		; 30 A4
	cop $A5.b		; 02 A5
	brk $29.b		; 00 29
	cpx #$4A01.w		; E0 01 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tax		; AA
	lda $A6D9.w,X		; BD D9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $0000.w,Y		; 99 00 00
	lda $0002.w,X		; BD 02 00
	sta $0002.w,Y		; 99 02 00
	lda $0004.w,X		; BD 04 00
	sta $0008.w,Y		; 99 08 00
	lda $0006.w,X		; BD 06 00
	sta $000A.w,Y		; 99 0A 00
	lda $00.b		; A5 00
	and #$001E.w		; 29 1E 00
	tax		; AA
	lda $A6D9.w,X		; BD D9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $0004.w,Y		; 99 04 00
	lda $0002.w,X		; BD 02 00
	sta $0006.w,Y		; 99 06 00
	lda $0004.w,X		; BD 04 00
	sta $000C.w,Y		; 99 0C 00
	lda $0006.w,X		; BD 06 00
	sta $000E.w,Y		; 99 0E 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $02.b		; A4 02
	lda $00.b		; A5 00
	and #$01E0.w		; 29 E0 01
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tax		; AA
	lda $A6B9.w,X		; BD B9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $0000.w,Y		; 99 00 00
	lda $0002.w,X		; BD 02 00
	sta $0002.w,Y		; 99 02 00
	lda $0004.w,X		; BD 04 00
	sta $0008.w,Y		; 99 08 00
	lda $0006.w,X		; BD 06 00
	sta $000A.w,Y		; 99 0A 00
	lda $00.b		; A5 00
	and #$001E.w		; 29 1E 00
	tax		; AA
	lda $A6B9.w,X		; BD B9 A6
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $0004.w,Y		; 99 04 00
	lda $0002.w,X		; BD 02 00
	sta $0006.w,Y		; 99 06 00
	lda $0004.w,X		; BD 04 00
	sta $000C.w,Y		; 99 0C 00
	lda $0006.w,X		; BD 06 00
	sta $000E.w,Y		; 99 0E 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda #$0002.w		; A9 02 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $AF7C.w		; 20 7C AF
	jsl $82C17D.l		; 22 7D C1 82
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $6D.b		; 85 6D
	lda #$40.b		; A9 40
	sta $73.b		; 85 73
	lda #$81.b		; A9 81
	sta NMITIMEN.w		; 8D 00 42
	jsl $808386.l		; 22 86 83 80
	jsl $808772.l		; 22 72 87 80
	jsr $8191.w		; 20 91 81
	jsl $82C190.l		; 22 90 C1 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	bne  87.b		; D0 57
	lda $73.b		; A5 73
	and #$00FF.w		; 29 FF 00
	bne  80.b		; D0 50
	lda $1D01.w		; AD 01 1D
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq  29.b		; F0 1D
	lda #$0060.w		; A9 60 00
	sta $FE.b		; 85 FE
	ldx #$1800.w		; A2 00 18
	stx $1B00.w		; 8E 00 1B
	jsr $AECA.w		; 20 CA AE
	ldx $1B00.w		; AE 00 1B
	lda $0000.w,X		; BD 00 00
	cmp $0002.w,X		; DD 02 00
	bne   4.b		; D0 04
	tax		; AA
	jsr ($A839.w,X)		; FC 39 A8
	lda $1D04.w		; AD 04 1D
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq  29.b		; F0 1D
	lda #$0062.w		; A9 62 00
	sta $FE.b		; 85 FE
	ldx #$1880.w		; A2 80 18
	stx $1B00.w		; 8E 00 1B
	jsr $AECA.w		; 20 CA AE
	ldx $1B00.w		; AE 00 1B
	lda $0000.w,X		; BD 00 00
	cmp $0002.w,X		; DD 02 00
	bne   4.b		; D0 04
	tax		; AA
	jsr ($A839.w,X)		; FC 39 A8
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C02.w		; AD 02 1C
	beq -116.b		; F0 8C
.ACCU 8
	sep #$20		; E2 20
	lda $73.b		; A5 73
	bne -122.b		; D0 86
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $BB57.w		; 20 57 BB
	stz $1C02.w		; 9C 02 1C
	plb		; AB
	rtl		; 6B

	eor #$BAA8.w		; 49 A8 BA
	tay		; A8
	sbc ($A8.b,S),Y		; F3 A8
	bit $65A9.w		; 2C A9 65
	lda #$A99E.w		; A9 9E A9
	jmp.w [$1AA9]		; DC A9 1A
	tax		; AA
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F63.w		; AD 63 1F
	and #$00FF.w		; 29 FF 00
	bne  10.b		; D0 0A
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	cmp #$0004.w		; C9 04 00
	beq  92.b		; F0 5C
	ldx $1B00.w		; AE 00 1B
	lda $0004.w,X		; BD 04 00
	nop		; EA
	nop		; EA
	nop		; EA
	sta $1B04.w		; 8D 04 1B
	lda #$0002.w		; A9 02 00
	sta $1C1C.w		; 8D 1C 1C
	jsr $B131.w		; 20 31 B1
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	nop		; EA
	nop		; EA
	nop		; EA
	cmp $0006.w,X		; DD 06 00
	bra  55.b		; 80 37
	lda $003E.w,X		; BD 3E 00
	clc		; 18
	adc $0004.w,X		; 7D 04 00
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	ldy $0042.w,X		; BC 42 00
	sta $0000.w,Y		; 99 00 00
	lda #$00C4.w		; A9 C4 00
	sta $0002.w,Y		; 99 02 00
	ldy $0004.w,X		; BC 04 00
	lda $B57D.w,Y		; B9 7D B5
	sta $0046.w,X		; 9D 46 00
	jsr $B2E1.w		; 20 E1 B2
	jsr $B15D.w		; 20 5D B1
	jsr $B429.w		; 20 29 B4
.ACCU 8
	sep #$20		; E2 20
	lda $0004.w,X		; BD 04 00
	sta $0006.w,X		; 9D 06 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0008.w,X		; BD 08 00
	sta $0018.w,X		; 9D 18 00
	sta $1B04.w		; 8D 04 1B
	jsr $AEBD.w		; 20 BD AE
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	sta $0008.w,X		; 9D 08 00
	cmp $0018.w,X		; DD 18 00
	beq  23.b		; F0 17
	sta $0024.w,X		; 9D 24 00
	jsr $B459.w		; 20 59 B4
	jsr $B414.w		; 20 14 B4
.ACCU 8
	sep #$20		; E2 20
	lda $0008.w,X		; BD 08 00
	sta $0018.w,X		; 9D 18 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $000A.w,X		; BD 0A 00
	sta $0014.w,X		; 9D 14 00
	sta $1B04.w		; 8D 04 1B
	jsr $AEBD.w		; 20 BD AE
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	sta $000A.w,X		; 9D 0A 00
	cmp $0014.w,X		; DD 14 00
	beq  23.b		; F0 17
	sta $0020.w,X		; 9D 20 00
	jsr $B46E.w		; 20 6E B4
	jsr $B414.w		; 20 14 B4
.ACCU 8
	sep #$20		; E2 20
	lda $000A.w,X		; BD 0A 00
	sta $0014.w,X		; 9D 14 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $000C.w,X		; BD 0C 00
	sta $001A.w,X		; 9D 1A 00
	sta $1B04.w		; 8D 04 1B
	jsr $AEBD.w		; 20 BD AE
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	sta $000C.w,X		; 9D 0C 00
	cmp $001A.w,X		; DD 1A 00
	beq  23.b		; F0 17
	sta $0026.w,X		; 9D 26 00
	jsr $B483.w		; 20 83 B4
	jsr $B414.w		; 20 14 B4
.ACCU 8
	sep #$20		; E2 20
	lda $000C.w,X		; BD 0C 00
	sta $001A.w,X		; 9D 1A 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $000E.w,X		; BD 0E 00
	sta $0016.w,X		; 9D 16 00
	sta $1B04.w		; 8D 04 1B
	jsr $AEBD.w		; 20 BD AE
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	sta $000E.w,X		; 9D 0E 00
	cmp $0016.w,X		; DD 16 00
	beq  23.b		; F0 17
	sta $0022.w,X		; 9D 22 00
	jsr $B498.w		; 20 98 B4
	jsr $B414.w		; 20 14 B4
.ACCU 8
	sep #$20		; E2 20
	lda $000E.w,X		; BD 0E 00
	sta $0016.w,X		; 9D 16 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0046.w,X		; BD 46 00
	beq  51.b		; F0 33
	lda $0010.w,X		; BD 10 00
	sta $001C.w,X		; 9D 1C 00
	sta $1B04.w		; 8D 04 1B
	jsr $AEBD.w		; 20 BD AE
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	sta $0010.w,X		; 9D 10 00
	cmp $001C.w,X		; DD 1C 00
	beq  23.b		; F0 17
	sta $0028.w,X		; 9D 28 00
	jsr $B4AD.w		; 20 AD B4
	jsr $B414.w		; 20 14 B4
.ACCU 8
	sep #$20		; E2 20
	lda $0010.w,X		; BD 10 00
	sta $001C.w,X		; 9D 1C 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0046.w,X		; BD 46 00
	beq  51.b		; F0 33
	lda $0012.w,X		; BD 12 00
	sta $001E.w,X		; 9D 1E 00
	sta $1B04.w		; 8D 04 1B
	jsr $AEBD.w		; 20 BD AE
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	sta $0012.w,X		; 9D 12 00
	cmp $001E.w,X		; DD 1E 00
	beq  23.b		; F0 17
	sta $002A.w,X		; 9D 2A 00
	jsr $B4C2.w		; 20 C2 B4
	jsr $B414.w		; 20 14 B4
.ACCU 8
	sep #$20		; E2 20
	lda $0012.w,X		; BD 12 00
	sta $001E.w,X		; 9D 1E 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0038.w,X		; BD 38 00
	sta $003A.w,X		; 9D 3A 00
	sta $1B04.w		; 8D 04 1B
	lda $1F59.w		; AD 59 1F
	and #$00FF.w		; 29 FF 00
	beq   5.b		; F0 05
	lda #$0010.w		; A9 10 00
	bra   3.b		; 80 03
	lda #$0012.w		; A9 12 00
	sta $1C1C.w		; 8D 1C 1C
	jsr $B131.w		; 20 31 B1
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $1B04.w		; AD 04 1B
	sta $0038.w,X		; 9D 38 00
	cmp $003A.w,X		; DD 3A 00
	beq  32.b		; F0 20
	ldy $0038.w,X		; BC 38 00
	lda $B5C1.w,Y		; B9 C1 B5
	ldy $0042.w,X		; BC 42 00
	sta $0000.w,Y		; 99 00 00
	lda #$00C0.w		; A9 C0 00
	sta $0002.w,Y		; 99 02 00
.ACCU 8
	sep #$20		; E2 20
	lda $0038.w,X		; BD 38 00
	sta $003A.w,X		; 9D 3A 00
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($AA7C.w,X)		; FC 7C AA
	rts		; 60

	sta $98AA.w		; 8D AA 98
	tax		; AA
	tya		; 98
	tax		; AA
	sta ($AA.b),Y		; 91 AA
	stx $AA.b		; 86 AA
	jsr $AAD3.w		; 20 D3 AA
	jsr $AAAF.w		; 20 AF AA
	rts		; 60

	jsr $AA9C.w		; 20 9C AA
	rts		; 60

	jsr $AA9C.w		; 20 9C AA
	jsr $AAD3.w		; 20 D3 AA
	rts		; 60

	jsr $AAAF.w		; 20 AF AA
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$6290.w		; A9 90 62
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8E.b		; A5 8E
	and #$00FF.w		; 29 FF 00
	tax		; AA
	lda $B5AD.w,X		; BD AD B5
	sta $0074.w		; 8D 74 00
	lda #$00C0.w		; A9 C0 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	lda $8E.b		; A5 8E
	and #$00FF.w		; 29 FF 00
	sta $1838.w		; 8D 38 18
	sta $183A.w		; 8D 3A 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$6356.w		; A9 56 63
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($AAF3.w,X)		; FC F3 AA
	rts		; 60

	sbc $FDAA.w,X		; FD AA FD
	tax		; AA
	sbc $02AA.w,X		; FD AA 02
	plb		; AB
	sbc $22AA.w,X		; FD AA 22
	stx $97.b		; 86 97
	bra  96.b		; 80 60
	jsl $8096FA.l		; 22 FA 96 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($AB14.w,X)		; FC 14 AB
	rts		; 60

	asl $22AB.w,X		; 1E AB 22
	plb		; AB
	rol A		; 2A
	plb		; AB
	rol $26AB.w		; 2E AB 26
	plb		; AB
	jsr $AB86.w		; 20 86 AB
	rts		; 60

	jsr $AB63.w		; 20 63 AB
	rts		; 60

	jsr $AB63.w		; 20 63 AB
	rts		; 60

	jsr $AB86.w		; 20 86 AB
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D06.w		; AD 06 1D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $B555.w,X		; BD 55 B5
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D07.w		; AD 07 1D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $B569.w,X		; BD 69 B5
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$63DC.w		; A9 DC 63
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	lda #$6468.w		; A9 68 64
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$63DC.w		; A9 DC 63
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	lda #$64CA.w		; A9 CA 64
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($ABB6.w,X)		; FC B6 AB
	rts		; 60

	cpy #$C0AB.w		; C0 AB C0
	plb		; AB
	cpy #$F1AB.w		; C0 AB F1
	plb		; AB
	sbc $30C2AB.l,X		; FF AB C2 30
	stz $1B08.w		; 9C 08 1B
	lda $1F56.w		; AD 56 1F
	and #$00FF.w		; 29 FF 00
	beq  12.b		; F0 0C
	lda #$0001.w		; A9 01 00
	sta $1B08.w		; 8D 08 1B
	sta $184A.w		; 8D 4A 18
	sta $1846.w		; 8D 46 18
	stz $1B0A.w		; 9C 0A 1B
	lda $1F57.w		; AD 57 1F
	and #$00FF.w		; 29 FF 00
	beq  12.b		; F0 0C
	lda #$0001.w		; A9 01 00
	sta $1B0A.w		; 8D 0A 1B
	sta $18CA.w		; 8D CA 18
	sta $18C6.w		; 8D C6 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $1B08.w		; 9C 08 1B
	stz $184A.w		; 9C 4A 18
	stz $1B0A.w		; 9C 0A 1B
	stz $18CA.w		; 9C CA 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	cmp #$4000.w		; C9 00 40
	bne   9.b		; D0 09
	tya		; 98
	sta $0008.w,X		; 9D 08 00
	sta $0024.w,X		; 9D 24 00
	bra  93.b		; 80 5D
	cmp #$0040.w		; C9 40 00
	bne   9.b		; D0 09
	tya		; 98
	sta $000A.w,X		; 9D 0A 00
	sta $0020.w,X		; 9D 20 00
	bra  79.b		; 80 4F
	cmp #$8000.w		; C9 00 80
	bne   9.b		; D0 09
	tya		; 98
	sta $000C.w,X		; 9D 0C 00
	sta $0026.w,X		; 9D 26 00
	bra  65.b		; 80 41
	cmp #$0080.w		; C9 80 00
	bne   9.b		; D0 09
	tya		; 98
	sta $000E.w,X		; 9D 0E 00
	sta $0022.w,X		; 9D 22 00
	bra  51.b		; 80 33
	cmp #$0020.w		; C9 20 00
	bne  24.b		; D0 18
	tya		; 98
	sta $0010.w,X		; 9D 10 00
	lda $00.b		; A5 00
	beq   8.b		; F0 08
	lda $0010.w,X		; BD 10 00
	sta $0028.w,X		; 9D 28 00
	bra  30.b		; 80 1E
	lda #$000C.w		; A9 0C 00
	sta $0028.w,X		; 9D 28 00
	bra  22.b		; 80 16
	tya		; 98
	sta $0012.w,X		; 9D 12 00
	lda $00.b		; A5 00
	beq   8.b		; F0 08
	lda $0012.w,X		; BD 12 00
	sta $002A.w,X		; 9D 2A 00
	bra   6.b		; 80 06
	lda #$000C.w		; A9 0C 00
	sta $002A.w,X		; 9D 2A 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1B08.w		; AD 08 1B
	sta $00.b		; 85 00
	lda $1E20.w		; AD 20 1E
	ldx #$1800.w		; A2 00 18
	ldy #$0000.w		; A0 00 00
	jsr $AC00.w		; 20 00 AC
	lda $1E22.w		; AD 22 1E
	ldx #$1800.w		; A2 00 18
	ldy #$0002.w		; A0 02 00
	jsr $AC00.w		; 20 00 AC
	lda $1E24.w		; AD 24 1E
	ldx #$1800.w		; A2 00 18
	ldy #$0004.w		; A0 04 00
	jsr $AC00.w		; 20 00 AC
	lda $1E26.w		; AD 26 1E
	ldx #$1800.w		; A2 00 18
	ldy #$0006.w		; A0 06 00
	jsr $AC00.w		; 20 00 AC
	lda $1E28.w		; AD 28 1E
	ldx #$1800.w		; A2 00 18
	ldy #$0008.w		; A0 08 00
	jsr $AC00.w		; 20 00 AC
	lda $1E2A.w		; AD 2A 1E
	ldx #$1800.w		; A2 00 18
	ldy #$000A.w		; A0 0A 00
	jsr $AC00.w		; 20 00 AC
	lda $1B0A.w		; AD 0A 1B
	sta $00.b		; 85 00
	lda $1E2C.w		; AD 2C 1E
	ldx #$1880.w		; A2 80 18
	ldy #$0000.w		; A0 00 00
	jsr $AC00.w		; 20 00 AC
	lda $1E2E.w		; AD 2E 1E
	ldx #$1880.w		; A2 80 18
	ldy #$0002.w		; A0 02 00
	jsr $AC00.w		; 20 00 AC
	lda $1E30.w		; AD 30 1E
	ldx #$1880.w		; A2 80 18
	ldy #$0004.w		; A0 04 00
	jsr $AC00.w		; 20 00 AC
	lda $1E32.w		; AD 32 1E
	ldx #$1880.w		; A2 80 18
	ldy #$0006.w		; A0 06 00
	jsr $AC00.w		; 20 00 AC
	lda $1E34.w		; AD 34 1E
	ldx #$1880.w		; A2 80 18
	ldy #$0008.w		; A0 08 00
	jsr $AC00.w		; 20 00 AC
	lda $1E36.w		; AD 36 1E
	ldx #$1880.w		; A2 80 18
	ldy #$000A.w		; A0 0A 00
	jsr $AC00.w		; 20 00 AC
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1808.w		; AD 08 18
	clc		; 18
	adc #$1E20.w		; 69 20 1E
	tay		; A8
	lda #$4000.w		; A9 00 40
	sta $0000.w,Y		; 99 00 00
	lda $180A.w		; AD 0A 18
	clc		; 18
	adc #$1E20.w		; 69 20 1E
	tay		; A8
	lda #$0040.w		; A9 40 00
	sta $0000.w,Y		; 99 00 00
	lda $180C.w		; AD 0C 18
	clc		; 18
	adc #$1E20.w		; 69 20 1E
	tay		; A8
	lda #$8000.w		; A9 00 80
	sta $0000.w,Y		; 99 00 00
	lda $180E.w		; AD 0E 18
	clc		; 18
	adc #$1E20.w		; 69 20 1E
	tay		; A8
	lda #$0080.w		; A9 80 00
	sta $0000.w,Y		; 99 00 00
	lda $1810.w		; AD 10 18
	clc		; 18
	adc #$1E20.w		; 69 20 1E
	tay		; A8
	lda #$0020.w		; A9 20 00
	sta $0000.w,Y		; 99 00 00
	lda $1812.w		; AD 12 18
	clc		; 18
	adc #$1E20.w		; 69 20 1E
	tay		; A8
	lda #$0010.w		; A9 10 00
	sta $0000.w,Y		; 99 00 00
	lda $1888.w		; AD 88 18
	clc		; 18
	adc #$1E2C.w		; 69 2C 1E
	tay		; A8
	lda #$4000.w		; A9 00 40
	sta $0000.w,Y		; 99 00 00
	lda $188A.w		; AD 8A 18
	clc		; 18
	adc #$1E2C.w		; 69 2C 1E
	tay		; A8
	lda #$0040.w		; A9 40 00
	sta $0000.w,Y		; 99 00 00
	lda $188C.w		; AD 8C 18
	clc		; 18
	adc #$1E2C.w		; 69 2C 1E
	tay		; A8
	lda #$8000.w		; A9 00 80
	sta $0000.w,Y		; 99 00 00
	lda $188E.w		; AD 8E 18
	clc		; 18
	adc #$1E2C.w		; 69 2C 1E
	tay		; A8
	lda #$0080.w		; A9 80 00
	sta $0000.w,Y		; 99 00 00
	lda $1890.w		; AD 90 18
	clc		; 18
	adc #$1E2C.w		; 69 2C 1E
	tay		; A8
	lda #$0020.w		; A9 20 00
	sta $0000.w,Y		; 99 00 00
	lda $1892.w		; AD 92 18
	clc		; 18
	adc #$1E2C.w		; 69 2C 1E
	tay		; A8
	lda #$0010.w		; A9 10 00
	sta $0000.w,Y		; 99 00 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	cmp $0008.w,X		; DD 08 00
	bne  20.b		; D0 14
	sta $00.b		; 85 00
	lda $1B04.w		; AD 04 1B
	sta $0008.w,X		; 9D 08 00
	sta $0024.w,X		; 9D 24 00
	lda $00.b		; A5 00
	sta $1B04.w		; 8D 04 1B
	jsr $B4D7.w		; 20 D7 B4
	rts		; 60

	cmp $000A.w,X		; DD 0A 00
	bne  20.b		; D0 14
	sta $00.b		; 85 00
	lda $1B04.w		; AD 04 1B
	sta $000A.w,X		; 9D 0A 00
	sta $0020.w,X		; 9D 20 00
	lda $00.b		; A5 00
	sta $1B04.w		; 8D 04 1B
	jsr $B4EC.w		; 20 EC B4
	rts		; 60

	cmp $000C.w,X		; DD 0C 00
	bne  20.b		; D0 14
	sta $00.b		; 85 00
	lda $1B04.w		; AD 04 1B
	sta $000C.w,X		; 9D 0C 00
	sta $0026.w,X		; 9D 26 00
	lda $00.b		; A5 00
	sta $1B04.w		; 8D 04 1B
	jsr $B501.w		; 20 01 B5
	rts		; 60

	cmp $000E.w,X		; DD 0E 00
	bne  20.b		; D0 14
	sta $00.b		; 85 00
	lda $1B04.w		; AD 04 1B
	sta $000E.w,X		; 9D 0E 00
	sta $0022.w,X		; 9D 22 00
	lda $00.b		; A5 00
	sta $1B04.w		; 8D 04 1B
	jsr $B516.w		; 20 16 B5
	rts		; 60

	cmp $0010.w,X		; DD 10 00
	bne  28.b		; D0 1C
	sta $00.b		; 85 00
	lda $1B04.w		; AD 04 1B
	sta $0010.w,X		; 9D 10 00
	lda $0046.w,X		; BD 46 00
	beq   6.b		; F0 06
	lda $1B04.w		; AD 04 1B
	sta $0028.w,X		; 9D 28 00
	lda $00.b		; A5 00
	sta $1B04.w		; 8D 04 1B
	jsr $B52B.w		; 20 2B B5
	rts		; 60

	cmp $0012.w,X		; DD 12 00
	bne  28.b		; D0 1C
	sta $00.b		; 85 00
	lda $1B04.w		; AD 04 1B
	sta $0012.w,X		; 9D 12 00
	lda $0046.w,X		; BD 46 00
	beq   6.b		; F0 06
	lda $1B04.w		; AD 04 1B
	sta $002A.w,X		; 9D 2A 00
	lda $00.b		; A5 00
	sta $1B04.w		; 8D 04 1B
	jsr $B540.w		; 20 40 B5
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$FE.b]		; A7 FE
	bne   1.b		; D0 01
	rts		; 60

	lda [$FE.b]		; A7 FE
	and #$0080.w		; 29 80 00
	beq   7.b		; F0 07
	lda #$0006.w		; A9 06 00
	jsr $ADB6.w		; 20 B6 AD
	rts		; 60

	lda [$FE.b]		; A7 FE
	and #$8000.w		; 29 00 80
	beq   7.b		; F0 07
	lda #$0004.w		; A9 04 00
	jsr $ADB6.w		; 20 B6 AD
	rts		; 60

	lda [$FE.b]		; A7 FE
	and #$0040.w		; 29 40 00
	beq   7.b		; F0 07
	lda #$0002.w		; A9 02 00
	jsr $ADB6.w		; 20 B6 AD
	rts		; 60

	lda [$FE.b]		; A7 FE
	and #$4000.w		; 29 00 40
	beq   7.b		; F0 07
	lda #$0000.w		; A9 00 00
	jsr $ADB6.w		; 20 B6 AD
	rts		; 60

	lda [$FE.b]		; A7 FE
	and #$0020.w		; 29 20 00
	beq   7.b		; F0 07
	lda #$0008.w		; A9 08 00
	jsr $ADB6.w		; 20 B6 AD
	rts		; 60

	lda [$FE.b]		; A7 FE
	and #$0010.w		; 29 10 00
	beq   6.b		; F0 06
	lda #$000A.w		; A9 0A 00
	jsr $ADB6.w		; 20 B6 AD
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$FE.b]		; A7 FE
	and #$0C00.w		; 29 00 0C
	bne   3.b		; D0 03
	jsr $AE62.w		; 20 62 AE
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0000.w,X		; BD 00 00
	sta $0002.w,X		; 9D 02 00
	lda $0048.w,X		; BD 48 00
	sta $1C1C.w		; 8D 1C 1C
	lda [$FE.b]		; A7 FE
	and #$0800.w		; 29 00 08
	beq  21.b		; F0 15
	lda $0000.w,X		; BD 00 00
	jsr $800F.w		; 20 0F 80
	sta $0000.w,X		; 9D 00 00
	jsr $B2E2.w		; 20 E2 B2
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	lda [$FE.b]		; A7 FE
	and #$0400.w		; 29 00 04
	beq  21.b		; F0 15
	lda $0000.w,X		; BD 00 00
	jsr $8000.w		; 20 00 80
	sta $0000.w,X		; 9D 00 00
	jsr $B2E2.w		; 20 E2 B2
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1800.w		; A2 00 18
	lda #$B589.w		; A9 89 B5
	sta $003C.w,X		; 9D 3C 00
	lda #$B581.w		; A9 81 B5
	sta $003E.w,X		; 9D 3E 00
	lda #$1900.w		; A9 00 19
	sta $0040.w,X		; 9D 40 00
	lda #$0074.w		; A9 74 00
	sta $0042.w,X		; 9D 42 00
	lda #$1C06.w		; A9 06 1C
	sta $0044.w,X		; 9D 44 00
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	cmp #$0000.w		; C9 00 00
	beq  13.b		; F0 0D
	cmp #$0003.w		; C9 03 00
	beq   8.b		; F0 08
	lda #$000E.w		; A9 0E 00
	sta $0048.w,X		; 9D 48 00
	bra   6.b		; 80 06
	lda #$000C.w		; A9 0C 00
	sta $0048.w,X		; 9D 48 00
	ldx #$1880.w		; A2 80 18
	lda #$B58D.w		; A9 8D B5
	sta $003C.w,X		; 9D 3C 00
	lda #$B585.w		; A9 85 B5
	sta $003E.w,X		; 9D 3E 00
	lda #$1940.w		; A9 40 19
	sta $0040.w,X		; 9D 40 00
	lda #$1C0A.w		; A9 0A 1C
	sta $0042.w,X		; 9D 42 00
	lda #$1C0E.w		; A9 0E 1C
	sta $0044.w,X		; 9D 44 00
	lda #$000C.w		; A9 0C 00
	sta $0048.w,X		; 9D 48 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0A04.w		; 9C 04 0A
	stz $0A08.w		; 9C 08 0A
	stz $0A06.w		; 9C 06 0A
	stz $0A0A.w		; 9C 0A 0A
	lda #$001A.w		; A9 1A 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$001C.w		; A9 1C 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0001.w		; A9 01 00
	jsl $C01E38.l		; 22 38 1E C0
	nop		; EA
	nop		; EA
	lda #$0000.w		; A9 00 00
	jsl $C01E38.l		; 22 38 1E C0
	nop		; EA
	nop		; EA
	lda #$001A.w		; A9 1A 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $AAE6.w		; 20 E6 AA
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$B00B.w		; A9 0B B0
	ldx #$0083.w		; A2 83 00
	jsl $8092D3.l		; 22 D3 92 80
	jsr $B0FE.w		; 20 FE B0
	jsr $AF14.w		; 20 14 AF
	jsr $B2E1.w		; 20 E1 B2
	jsr $ABA9.w		; 20 A9 AB
	jsr $AC6E.w		; 20 6E AC
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $B00D.w		; 20 0D B0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1800.w		; A2 00 18
	stx $1B00.w		; 8E 00 1B
	jsr $B1CA.w		; 20 CA B1
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1880.w		; A2 80 18
	stx $1B00.w		; 8E 00 1B
	jsr $B1CA.w		; 20 CA B1
	jsr $B0D9.w		; 20 D9 B0
	jsr $B03A.w		; 20 3A B0
	ldx #$1800.w		; A2 00 18
	jsr $B2BA.w		; 20 BA B2
	ldx #$1880.w		; A2 80 18
	jsr $B2BA.w		; 20 BA B2
	jsr $AA6F.w		; 20 6F AA
	jsr $AB07.w		; 20 07 AB
	rts		; 60

	bpl  -1.b		; 10 FF
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D01.w		; AD 01 1D
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	bne   9.b		; D0 09
	ldx #$1800.w		; A2 00 18
	stx $1B00.w		; 8E 00 1B
	jsr $B1AF.w		; 20 AF B1
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D04.w		; AD 04 1D
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	bne   9.b		; D0 09
	ldx #$1880.w		; A2 80 18
	stx $1B00.w		; 8E 00 1B
	jsr $B1AF.w		; 20 AF B1
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	cmp #$0004.w		; C9 04 00
	beq  52.b		; F0 34
	lda $1D01.w		; AD 01 1D
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq  10.b		; F0 0A
	lda $1B08.w		; AD 08 1B
	beq   8.b		; F0 08
	jsr $B07B.w		; 20 7B B0
	bra   3.b		; 80 03
	jsr $B0B3.w		; 20 B3 B0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1D04.w		; AD 04 1D
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	beq  10.b		; F0 0A
	lda $1B0A.w		; AD 0A 1B
	beq  10.b		; F0 0A
	jsr $B097.w		; 20 97 B0
	bra   5.b		; 80 05
	jsr $B0C6.w		; 20 C6 B0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $1804.w		; 8D 04 18
	sta $1806.w		; 8D 06 18
	lda #$5A0E.w		; A9 0E 5A
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $1884.w		; 8D 84 18
	sta $1886.w		; 8D 86 18
	lda #$5A6A.w		; A9 6A 5A
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$5928.w		; A9 28 59
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$59B2.w		; A9 B2 59
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1900.w		; A9 00 19
	sta $0074.w		; 8D 74 00
	lda #$0083.w		; A9 83 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1940.w		; A9 40 19
	sta $0074.w		; 8D 74 00
	lda #$0083.w		; A9 83 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$B5D5.w		; A0 D5 B5
	ldx #$1900.w		; A2 00 19
	lda $0000.w,Y		; B9 00 00
	sta $0000.w,X		; 9D 00 00
	lda $0002.w,Y		; B9 02 00
	sta $0002.w,X		; 9D 02 00
	lda $0004.w,Y		; B9 04 00
	sta $0004.w,X		; 9D 04 00
	ldy #$B5DB.w		; A0 DB B5
	ldx #$1940.w		; A2 40 19
	lda $0000.w,Y		; B9 00 00
	sta $0000.w,X		; 9D 00 00
	lda $0002.w,Y		; B9 02 00
	sta $0002.w,X		; 9D 02 00
	lda $0004.w,Y		; B9 04 00
	sta $0004.w,X		; 9D 04 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda [$FE.b]		; A7 FE
	and #$0C00.w		; 29 00 0C
	bne  34.b		; D0 22
	lda [$FE.b]		; A7 FE
	and #$0100.w		; 29 00 01
	beq  11.b		; F0 0B
	lda $1B04.w		; AD 04 1B
	jsr $8000.w		; 20 00 80
	sta $1B04.w		; 8D 04 1B
	bra  16.b		; 80 10
	lda [$FE.b]		; A7 FE
	and #$0200.w		; 29 00 02
	beq   9.b		; F0 09
	lda $1B04.w		; AD 04 1B
	jsr $800F.w		; 20 0F 80
	sta $1B04.w		; 8D 04 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $B24B.w		; 20 4B B2
	jsr $B176.w		; 20 76 B1
	lda $0046.w,X		; BD 46 00
	bne   5.b		; D0 05
	jsr $B1A0.w		; 20 A0 B1
	bra   3.b		; 80 03
	jsr $B191.w		; 20 91 B1
	jsr $B1CA.w		; 20 CA B1
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0008.w,X		; BD 08 00
	sta $0024.w,X		; 9D 24 00
	lda $000A.w,X		; BD 0A 00
	sta $0020.w,X		; 9D 20 00
	lda $000C.w,X		; BD 0C 00
	sta $0026.w,X		; 9D 26 00
	lda $000E.w,X		; BD 0E 00
	sta $0022.w,X		; 9D 22 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0010.w,X		; BD 10 00
	sta $0028.w,X		; 9D 28 00
	lda $0012.w,X		; BD 12 00
	sta $002A.w,X		; 9D 2A 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000C.w		; A9 0C 00
	sta $0028.w,X		; 9D 28 00
	lda #$000C.w		; A9 0C 00
	sta $002A.w,X		; 9D 2A 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda #$000C.w		; A9 0C 00
	sta $0020.w,X		; 9D 20 00
	sta $0022.w,X		; 9D 22 00
	sta $0024.w,X		; 9D 24 00
	sta $0026.w,X		; 9D 26 00
	sta $0028.w,X		; 9D 28 00
	sta $002A.w,X		; 9D 2A 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	ldy $0024.w,X		; BC 24 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$0006.w		; A9 06 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	ldx $1B00.w		; AE 00 1B
	ldy $0020.w,X		; BC 20 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$000E.w		; A9 0E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	ldx $1B00.w		; AE 00 1B
	ldy $0026.w,X		; BC 26 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$0016.w		; A9 16 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	ldx $1B00.w		; AE 00 1B
	ldy $0022.w,X		; BC 22 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$001E.w		; A9 1E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	ldx $1B00.w		; AE 00 1B
	ldy $0028.w,X		; BC 28 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$0026.w		; A9 26 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	ldx $1B00.w		; AE 00 1B
	ldy $002A.w,X		; BC 2A 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$002E.w		; A9 2E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0008.w,X		; BD 08 00
	sta $1B10.w		; 8D 10 1B
	lda $000A.w,X		; BD 0A 00
	sta $1B12.w		; 8D 12 1B
	lda $000C.w,X		; BD 0C 00
	sta $1B14.w		; 8D 14 1B
	lda $000E.w,X		; BD 0E 00
	sta $1B16.w		; 8D 16 1B
	lda $0010.w,X		; BD 10 00
	sta $1B18.w		; 8D 18 1B
	lda $0012.w,X		; BD 12 00
	sta $1B1A.w		; 8D 1A 1B
	lda $002C.w,X		; BD 2C 00
	sta $0008.w,X		; 9D 08 00
	lda $002E.w,X		; BD 2E 00
	sta $000A.w,X		; 9D 0A 00
	lda $0030.w,X		; BD 30 00
	sta $000C.w,X		; 9D 0C 00
	lda $0032.w,X		; BD 32 00
	sta $000E.w,X		; 9D 0E 00
	lda $0034.w,X		; BD 34 00
	sta $0010.w,X		; 9D 10 00
	lda $0036.w,X		; BD 36 00
	sta $0012.w,X		; 9D 12 00
	lda $1B10.w		; AD 10 1B
	sta $002C.w,X		; 9D 2C 00
	lda $1B12.w		; AD 12 1B
	sta $002E.w,X		; 9D 2E 00
	lda $1B14.w		; AD 14 1B
	sta $0030.w,X		; 9D 30 00
	lda $1B16.w		; AD 16 1B
	sta $0032.w,X		; 9D 32 00
	lda $1B18.w		; AD 18 1B
	sta $0034.w,X		; 9D 34 00
	lda $1B1A.w		; AD 1A 1B
	sta $0036.w,X		; 9D 36 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0000.w		; A9 00 00
	sta $002C.w,X		; 9D 2C 00
	lda #$0002.w		; A9 02 00
	sta $002E.w,X		; 9D 2E 00
	lda #$0004.w		; A9 04 00
	sta $0030.w,X		; 9D 30 00
	lda #$0006.w		; A9 06 00
	sta $0032.w,X		; 9D 32 00
	lda #$0008.w		; A9 08 00
	sta $0034.w,X		; 9D 34 00
	lda #$000A.w		; A9 0A 00
	sta $0036.w,X		; 9D 36 00
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0000.w,X		; BD 00 00
	cmp $0002.w,X		; DD 02 00
	beq  14.b		; F0 0E
	tax		; AA
	jsr ($B2FE.w,X)		; FC FE B2
	ldx $1B00.w		; AE 00 1B
	lda $0002.w,X		; BD 02 00
	tax		; AA
	jsr ($B30E.w,X)		; FC 0E B3
	rts		; 60

	asl $84B3.w,X		; 1E B3 84
	lda ($90.b,S),Y		; B3 90
	lda ($9C.b,S),Y		; B3 9C
	lda ($A8.b,S),Y		; B3 A8
	lda ($B4.b,S),Y		; B3 B4
	lda ($C0.b,S),Y		; B3 C0
	lda ($3F.b,S),Y		; B3 3F
	lda ($51.b,S),Y		; B3 51
	lda ($CC.b,S),Y		; B3 CC
	lda ($D8.b,S),Y		; B3 D8
	lda ($E4.b,S),Y		; B3 E4
	lda ($F0.b,S),Y		; B3 F0
	lda ($FC.b,S),Y		; B3 FC
	lda ($08.b,S),Y		; B3 08
	ldy $72.b,X		; B4 72
	lda ($C2.b,S),Y		; B3 C2
	bmi -82.b		; 30 AE
	brk $1B.b		; 00 1B
	lda $0004.w,X		; BD 04 00
	sta $00.b		; 85 00
	lda $003E.w,X		; BD 3E 00
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	ldy $0042.w,X		; BC 42 00
	sta $0000.w,Y		; 99 00 00
	lda #$00C4.w		; A9 C4 00
	sta $0002.w,Y		; 99 02 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1838.w		; AE 38 18
	lda $B5C1.w,X		; BD C1 B5
	sta $0074.w		; 8D 74 00
	lda #$00C0.w		; A9 C0 00
	sta $0076.w		; 8D 76 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0006.w,X		; BD 06 00
	sta $00.b		; 85 00
	lda $003C.w,X		; BD 3C 00
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	ldy $0044.w,X		; BC 44 00
	sta $0000.w,Y		; 99 00 00
	lda #$00C4.w		; A9 C4 00
	sta $0002.w,Y		; 99 02 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1838.w		; AE 38 18
	lda $B5AD.w,X		; BD AD B5
	sta $1C06.w		; 8D 06 1C
	lda #$00C0.w		; A9 C0 00
	sta $1C08.w		; 8D 08 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B459.w		; 20 59 B4
	jsr $B414.w		; 20 14 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B46E.w		; 20 6E B4
	jsr $B414.w		; 20 14 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B483.w		; 20 83 B4
	jsr $B414.w		; 20 14 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B498.w		; 20 98 B4
	jsr $B414.w		; 20 14 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B4AD.w		; 20 AD B4
	jsr $B414.w		; 20 14 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B4C2.w		; 20 C2 B4
	jsr $B414.w		; 20 14 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B4D7.w		; 20 D7 B4
	jsr $B429.w		; 20 29 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B4EC.w		; 20 EC B4
	jsr $B429.w		; 20 29 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B501.w		; 20 01 B5
	jsr $B429.w		; 20 29 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B516.w		; 20 16 B5
	jsr $B429.w		; 20 29 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B52B.w		; 20 2B B5
	jsr $B429.w		; 20 29 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	jsr $B540.w		; 20 40 B5
	jsr $B429.w		; 20 29 B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0040.w,X		; BD 40 00
	ldy $0042.w,X		; BC 42 00
	sta $0000.w,Y		; 99 00 00
	lda #$0083.w		; A9 83 00
	sta $0002.w,Y		; 99 02 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B00.w		; AE 00 1B
	lda $0040.w,X		; BD 40 00
	ldy $0044.w,X		; BC 44 00
	sta $0000.w,Y		; 99 00 00
	lda #$0083.w		; A9 83 00
	sta $0002.w,Y		; 99 02 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0000.w,Y		; B9 00 00
	sta $0000.w,X		; 9D 00 00
	lda $0002.w,Y		; B9 02 00
	sta $0002.w,X		; 9D 02 00
	lda $0004.w,Y		; B9 04 00
	sta $0004.w,X		; 9D 04 00
	lda $0006.w,Y		; B9 06 00
	sta $0006.w,X		; 9D 06 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0024.w,X		; BC 24 00
	lda $B59F.w,Y		; B9 9F B5
	tay		; A8
	lda #$0006.w		; A9 06 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0020.w,X		; BC 20 00
	lda $B59F.w,Y		; B9 9F B5
	tay		; A8
	lda #$000E.w		; A9 0E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0026.w,X		; BC 26 00
	lda $B59F.w,Y		; B9 9F B5
	tay		; A8
	lda #$0016.w		; A9 16 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0022.w,X		; BC 22 00
	lda $B59F.w,Y		; B9 9F B5
	tay		; A8
	lda #$001E.w		; A9 1E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0028.w,X		; BC 28 00
	lda $B59F.w,Y		; B9 9F B5
	tay		; A8
	lda #$0026.w		; A9 26 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $002A.w,X		; BC 2A 00
	lda $B59F.w,Y		; B9 9F B5
	tay		; A8
	lda #$002E.w		; A9 2E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0024.w,X		; BC 24 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$0006.w		; A9 06 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0020.w,X		; BC 20 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$000E.w		; A9 0E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0026.w,X		; BC 26 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$0016.w		; A9 16 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0022.w,X		; BC 22 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$001E.w		; A9 1E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $0028.w,X		; BC 28 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$0026.w		; A9 26 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy $002A.w,X		; BC 2A 00
	lda $B591.w,Y		; B9 91 B5
	tay		; A8
	lda #$002E.w		; A9 2E 00
	clc		; 18
	adc $0040.w,X		; 7D 40 00
	tax		; AA
	jsr $B43E.w		; 20 3E B4
	rts		; 60

	jmp.w [$DC63]		; DC 63 DC
	adc $EA.b,S		; 63 EA
	adc $F8.b,S		; 63 F8
	adc $06.b,S		; 63 06
	stz $14.b		; 64 14
	stz $22.b		; 64 22
	stz $30.b		; 64 30
	stz $3E.b		; 64 3E
	stz $4C.b		; 64 4C
	stz $5A.b		; 64 5A
	stz $5A.b		; 64 5A
	stz $68.b		; 64 68
	stz $76.b		; 64 76
	stz $84.b		; 64 84
	stz $92.b		; 64 92
	stz $A0.b		; 64 A0
	stz $AE.b		; 64 AE
	stz $BC.b		; 64 BC
	stz $CA.b		; 64 CA
	stz $00.b		; 64 00
	brk $01.b		; 00 01
	brk $E0.b		; 00 E0
	eor $5A0E.w,Y		; 59 0E 5A
	bit $6A5A.w,X		; 3C 5A 6A
	phy		; 5A
	cpy $FA58.w		; CC 58 FA
	cli		; 58
	lsr $59.b,X		; 56 59
	sty $59.b		; 84 59
	sbc ($B5.b,X)		; E1 B5
	sbc #$F1B5.w		; E9 B5 F1
	lda $F9.b,X		; B5 F9
	lda $09.b,X		; B5 09
	ldx $11.b,Y		; B6 11
	ldx $01.b,Y		; B6 01
	ldx $19.b,Y		; B6 19
	ldx $21.b,Y		; B6 21
	ldx $29.b,Y		; B6 29
	ldx $31.b,Y		; B6 31
	ldx $41.b,Y		; B6 41
	ldx $49.b,Y		; B6 49
	ldx $39.b,Y		; B6 39
	ldx $11.b,Y		; B6 11
	pha		; 48
	sta [$48.b]		; 87 48
	sbc $7348.w,X		; FD 48 73
	eor #$49E9.w		; 49 E9 49
	eor $4AD54A.l,X		; 5F 4A D5 4A
	phk		; 4B
	phk		; 4B
	cmp ($4B.b,X)		; C1 4B
	and [$4C.b],Y		; 37 4C
	adc $43.b,X		; 75 43
	xba		; EB
	eor $61.b,S		; 43 61
	mvp $44,$D7		; 44 D7 44
	eor $C345.w		; 4D 45 C3
	eor $39.b		; 45 39
	lsr $AF.b		; 46 AF
	lsr $25.b		; 46 25
	eor [$9B.b]		; 47 9B
	eor [$E5.b]		; 47 E5
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $F9.b		; 00 F9
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $6A.b		; 00 6A
	asl $0E6B.w		; 0E 6B 0E
	ply		; 7A
	asl $0E7B.w		; 0E 7B 0E
	pla		; 68
	asl $0E69.w		; 0E 69 0E
	sei		; 78
	asl $0E79.w		; 0E 79 0E
	ror $0E.b		; 66 0E
	adc [$0E.b]		; 67 0E
	ror $0E.b,X		; 76 0E
	adc [$0E.b],Y		; 77 0E
	stz $0E.b		; 64 0E
	adc $0E.b		; 65 0E
	stz $0E.b,X		; 74 0E
	adc $0E.b,X		; 75 0E
	inc $EF0E.w		; EE 0E EF
	asl $0EFE.w		; 0E FE 0E
	sbc $0E6C0E.l,X		; FF 0E 6C 0E
	adc $7C0E.w		; 6D 0E 7C
	asl $0E7D.w		; 0E 7D 0E
	ror $6F0E.w		; 6E 0E 6F
	asl $0E7E.w		; 0E 7E 0E
	adc $126A0E.l,X		; 7F 0E 6A 12
	rtl		; 6B

	ora ($7A.b)		; 12 7A
	ora ($7B.b)		; 12 7B
	ora ($68.b)		; 12 68
	ora ($69.b)		; 12 69
	ora ($78.b)		; 12 78
	ora ($79.b)		; 12 79
	ora ($66.b)		; 12 66
	ora ($67.b)		; 12 67
	ora ($76.b)		; 12 76
	ora ($77.b)		; 12 77
	ora ($64.b)		; 12 64
	ora ($65.b)		; 12 65
	ora ($74.b)		; 12 74
	ora ($75.b)		; 12 75
	ora ($EE.b)		; 12 EE
	ora ($EF.b)		; 12 EF
	ora ($FE.b)		; 12 FE
	ora ($FF.b)		; 12 FF
	ora ($6C.b)		; 12 6C
	ora ($6D.b)		; 12 6D
	ora ($7C.b)		; 12 7C
	ora ($7D.b)		; 12 7D
	ora ($6E.b)		; 12 6E
	ora ($6F.b)		; 12 6F
	ora ($7E.b)		; 12 7E
	ora ($7F.b)		; 12 7F
	ora ($77.b)		; 12 77
	ora ($08.b,X)		; 01 08
	brk $02.b		; 00 02
	brk $D7.b		; 00 D7
	ora ($08.b,X)		; 01 08
	brk $02.b		; 00 02
	brk $37.b		; 00 37
	cop $08.b		; 02 08
	brk $02.b		; 00 02
	brk $C4.b		; 00 C4
	asl $0EC5.w		; 0E C5 0E
	pei ($0E.b)		; D4 0E
	cmp $0E.b,X		; D5 0E
	dec $0E.b		; C6 0E
	cmp [$0E.b]		; C7 0E
	dec $0E.b,X		; D6 0E
	cmp [$0E.b],Y		; D7 0E
	iny		; C8
	asl $0EC9.w		; 0E C9 0E
	cld		; D8
	asl $0ED9.w		; 0E D9 0E
	dex		; CA
	asl $0ECB.w		; 0E CB 0E
	phx		; DA
	asl $0EDB.w		; 0E DB 0E
	cpy $CD0E.w		; CC 0E CD
	asl $0EDC.w		; 0E DC 0E
	cmp $CE0E.w,X		; DD 0E CE
	asl $0ECF.w		; 0E CF 0E
	dec $DF0E.w,X		; DE 0E DF
	asl $0EE0.w		; 0E E0 0E
	sbc ($0E.b,X)		; E1 0E
	beq  14.b		; F0 0E
	sbc ($0E.b),Y		; F1 0E
	sep #$0E		; E2 0E
	sbc $0E.b,S		; E3 0E
	sbc ($0E.b)		; F2 0E
	sbc ($0E.b,S),Y		; F3 0E
	cpx $0E.b		; E4 0E
	sbc $0E.b		; E5 0E
	pea $F50E.w		; F4 0E F5
	asl $0EE6.w		; 0E E6 0E
	sbc [$0E.b]		; E7 0E
	inc $0E.b,X		; F6 0E
	sbc [$0E.b],Y		; F7 0E
	rol A		; 2A
	asl $0E2B.w		; 0E 2B 0E
	dec A		; 3A
	asl $0E3B.w		; 0E 3B 0E
	bit $2D0E.w		; 2C 0E 2D
	asl $0E3C.w		; 0E 3C 0E
	and $2E0E.w,X		; 3D 0E 2E
	asl $0E2F.w		; 0E 2F 0E
	rol $3F0E.w,X		; 3E 0E 3F
	asl $0E40.w		; 0E 40 0E
	eor ($0E.b,X)		; 41 0E
	bvc  14.b		; 50 0E
	eor ($0E.b),Y		; 51 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	inx		; E8
	asl $0EE9.w		; 0E E9 0E
	sed		; F8
	asl $0EF9.w		; 0E F9 0E
	cpy $12.b		; C4 12
	cmp $12.b		; C5 12
	pei ($12.b)		; D4 12
	cmp $12.b,X		; D5 12
	dec $12.b		; C6 12
	cmp [$12.b]		; C7 12
	dec $12.b,X		; D6 12
	cmp [$12.b],Y		; D7 12
	iny		; C8
	ora ($C9.b)		; 12 C9
	ora ($D8.b)		; 12 D8
	ora ($D9.b)		; 12 D9
	ora ($CA.b)		; 12 CA
	ora ($CB.b)		; 12 CB
	ora ($DA.b)		; 12 DA
	ora ($DB.b)		; 12 DB
	ora ($CC.b)		; 12 CC
	ora ($CD.b)		; 12 CD
	ora ($DC.b)		; 12 DC
	ora ($DD.b)		; 12 DD
	ora ($CE.b)		; 12 CE
	ora ($CF.b)		; 12 CF
	ora ($DE.b)		; 12 DE
	ora ($DF.b)		; 12 DF
	ora ($E0.b)		; 12 E0
	ora ($E1.b)		; 12 E1
	ora ($F0.b)		; 12 F0
	ora ($F1.b)		; 12 F1
	ora ($E2.b)		; 12 E2
	ora ($E3.b)		; 12 E3
	ora ($F2.b)		; 12 F2
	ora ($F3.b)		; 12 F3
	ora ($E4.b)		; 12 E4
	ora ($E5.b)		; 12 E5
	ora ($F4.b)		; 12 F4
	ora ($F5.b)		; 12 F5
	ora ($E6.b)		; 12 E6
	ora ($E7.b)		; 12 E7
	ora ($F6.b)		; 12 F6
	ora ($F7.b)		; 12 F7
	ora ($2A.b)		; 12 2A
	ora ($2B.b)		; 12 2B
	ora ($3A.b)		; 12 3A
	ora ($3B.b)		; 12 3B
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($2E.b)		; 12 2E
	ora ($2F.b)		; 12 2F
	ora ($3E.b)		; 12 3E
	ora ($3F.b)		; 12 3F
	ora ($40.b)		; 12 40
	ora ($41.b)		; 12 41
	ora ($50.b)		; 12 50
	ora ($51.b)		; 12 51
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($E8.b)		; 12 E8
	ora ($E9.b)		; 12 E9
	ora ($F8.b)		; 12 F8
	ora ($F9.b)		; 12 F9
	ora ($8B.b)		; 12 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$003E.w		; A9 3E 00
	sta $1C18.w		; 8D 18 1C
	jsr $8272.w		; 20 72 82
	lda #$001E.w		; A9 1E 00
	sta $1C18.w		; 8D 18 1C
	jsr $8272.w		; 20 72 82
	lda #$0020.w		; A9 20 00
	sta $1C18.w		; 8D 18 1C
	jsr $8272.w		; 20 72 82
	lda #$0016.w		; A9 16 00
	sta $1C18.w		; 8D 18 1C
	jsr $8272.w		; 20 72 82
	lda #$0022.w		; A9 22 00
	sta $1C18.w		; 8D 18 1C
	jsr $8272.w		; 20 72 82
	lda #$001C.w		; A9 1C 00
	sta $1C18.w		; 8D 18 1C
	jsr $829E.w		; 20 9E 82
	lda #$001E.w		; A9 1E 00
	sta $1C18.w		; 8D 18 1C
	jsr $829E.w		; 20 9E 82
	plb		; AB
	rtl		; 6B

	phb		; 8B
	phk		; 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$003E.w		; A2 3E 00
	lda $BCFF.w,X		; BD FF BC
	tax		; AA
	jsr $832E.w		; 20 2E 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$0000.w		; A2 00 00
	lda $BCFF.w,X		; BD FF BC
	tax		; AA
	jsr $832E.w		; 20 2E 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $B825.w,X		; BD 25 B8
	tax		; AA
	lda $BCFF.w,X		; BD FF BC
	tax		; AA
	jsr $832E.w		; 20 2E 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$0016.w		; A2 16 00
	lda $BCFF.w,X		; BD FF BC
	tax		; AA
	jsr $832E.w		; 20 2E 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	jsl $C01E38.l		; 22 38 1E C0
	nop		; EA
	nop		; EA
	nop		; EA
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0003.w		; A9 03 00
	jsl $C01E38.l		; 22 38 1E C0
	nop		; EA
	nop		; EA
	nop		; EA
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$001E.w		; A2 1E 00
	lda $BCCD.w,X		; BD CD BC
	tax		; AA
	jsr $832E.w		; 20 2E 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1F58.w		; AD 58 1F
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	lda $B839.w,X		; BD 39 B8
	sta $0074.w		; 8D 74 00
	lda #$00C4.w		; A9 C4 00
	sta $0076.w		; 8D 76 00
	jsl $808C43.l		; 22 43 8C 80
	plb		; AB
	rtl		; 6B

	jsr $1E00.w		; 20 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $C8.b		; 00 C8
	adc ($00.b,S),Y		; 73 00
	brk $BC.b		; 00 BC
	adc $70C2.w		; 6D C2 70
	iny		; C8
	adc ($CE.b,S),Y		; 73 CE
	ror $00.b,X		; 76 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D4.b		; 00 D4
	adc $4B8B.w,Y		; 79 8B 4B
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$001A.w		; A9 1A 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0026.w		; A9 26 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0024.w		; A9 24 00
	sta $1C18.w		; 8D 18 1C
	jsr $824E.w		; 20 4E 82
	lda #$0020.w		; A9 20 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
	lda #$0022.w		; A9 22 00
	sta $1C18.w		; 8D 18 1C
	jsr $825B.w		; 20 5B 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($B88D.w,X)		; FC 8D B8
	plb		; AB
	rtl		; 6B

	sta [$B8.b],Y		; 97 B8
	ldy #$A0B8.w		; A0 B8 A0
	clv		; B8
	ldy #$A0B8.w		; A0 B8 A0
	clv		; B8
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0018.w		; A9 18 00
	sta $1B20.w		; 8D 20 1B
	rts		; 60

	lda #$00B8.w		; A9 B8 00
	sta $1B20.w		; 8D 20 1B
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C5A.w		; AE 5A 1C
	jsr ($B8B0.w,X)		; FC B0 B8
	rts		; 60

	ldy $B8.b,X		; B4 B8
	iny		; C8
	clv		; B8
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $5C.b		; A5 5C
	and #$0070.w		; 29 70 00
	cmp #$0070.w		; C9 70 00
	bne   1.b		; D0 01
	rts		; 60

	lda #$0002.w		; A9 02 00
	sta $1C5A.w		; 8D 5A 1C
	rts		; 60

	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1C5C.w		; AE 5C 1C
	jsr ($B8D2.w,X)		; FC D2 B8
	rts		; 60

	cld		; D8
	clv		; B8
	jsr ($10B8.w,X)		; FC B8 10
	lda $30C2.w,Y		; B9 C2 30
	ldx $1B20.w		; AE 20 1B
	lda $B911.w,X		; BD 11 B9
	and $60.b		; 25 60
	bne   1.b		; D0 01
	rts		; 60

	nop		; EA
	inx		; E8
	inx		; E8
	stx $1B20.w		; 8E 20 1B
	lda $B911.w,X		; BD 11 B9
	cmp #$FFFF.w		; C9 FF FF
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	lda #$0002.w		; A9 02 00
	sta $1C5C.w		; 8D 5C 1C
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$02.b		; A9 02
	sta $78.b		; 85 78
	lda #$01.b		; A9 01
	sta $1F60.w		; 8D 60 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $1C5C.w		; 8D 5C 1C
	rts		; 60

	rts		; 60

	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	sbc $30C2FF.l,X		; FF FF C2 30
	lda $1F5D.w		; AD 5D 1F
	beq   6.b		; F0 06
	ldx $1C5E.w		; AE 5E 1C
	jsr ($B941.w,X)		; FC 41 B9
	rts		; 60

	eor [$B9.b]		; 47 B9
	rtl		; 6B

	lda $B97F.w,Y		; B9 7F B9
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B22.w		; AE 22 1B
	lda $B980.w,X		; BD 80 B9
	and $62.b		; 25 62
	bne   1.b		; D0 01
	rts		; 60

	nop		; EA
	inx		; E8
	inx		; E8
	stx $1B22.w		; 8E 22 1B
	lda $B980.w,X		; BD 80 B9
	cmp #$FFFF.w		; C9 FF FF
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	lda #$0002.w		; A9 02 00
	sta $1C5E.w		; 8D 5E 1C
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$1B.b		; A9 1B
	sta $78.b		; 85 78
	lda #$01.b		; A9 01
	sta $1F61.w		; 8D 61 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $1C5E.w		; 8D 5E 1C
	rts		; 60

	rts		; 60

	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	rti		; 40

	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	sbc $AE30C2.l,X		; FF C2 30 AE
	rts		; 60

	trb $C3FC.w		; 1C FC C3
	lda $C960.w,Y		; B9 60 C9
	lda $B9ED.w,Y		; B9 ED B9
	ora ($BA.b,X)		; 01 BA
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B24.w		; AE 24 1B
	lda $BA02.w,X		; BD 02 BA
	and $62.b		; 25 62
	bne   1.b		; D0 01
	rts		; 60

	nop		; EA
	inx		; E8
	inx		; E8
	stx $1B24.w		; 8E 24 1B
	lda $BA02.w,X		; BD 02 BA
	cmp #$FFFF.w		; C9 FF FF
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	lda #$0002.w		; A9 02 00
	sta $1C60.w		; 8D 60 1C
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$12.b		; A9 12
	sta $78.b		; 85 78
	lda #$01.b		; A9 01
	sta $1F62.w		; 8D 62 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $1C60.w		; 8D 60 1C
	rts		; 60

	rts		; 60

	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	sbc $30C2FF.l,X		; FF FF C2 30
	ldx $1C62.w		; AE 62 1C
	jsr ($BA25.w,X)		; FC 25 BA
	rts		; 60

	pld		; 2B
	tsx		; BA
	eor $BA63BA.l		; 4F BA 63 BA
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $1B26.w		; AE 26 1B
	lda $BA64.w,X		; BD 64 BA
	and $62.b		; 25 62
	bne   1.b		; D0 01
	rts		; 60

	nop		; EA
	inx		; E8
	inx		; E8
	stx $1B26.w		; 8E 26 1B
	lda $BA64.w,X		; BD 64 BA
	cmp #$FFFF.w		; C9 FF FF
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	lda #$0002.w		; A9 02 00
	sta $1C62.w		; 8D 62 1C
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$03.b		; A9 03
	sta $78.b		; 85 78
	lda #$01.b		; A9 01
	sta $1F63.w		; 8D 63 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $1C62.w		; 8D 62 1C
	rts		; 60

	rts		; 60

	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	sbc $30C2FF.l,X		; FF FF C2 30
	ldx $1C64.w		; AE 64 1C
	jsr ($BA7B.w,X)		; FC 7B BA
	rts		; 60

	sta ($BA.b,X)		; 81 BA
	lda $BA.b		; A5 BA
	lda $C2BA.w,Y		; B9 BA C2
	bmi -82.b		; 30 AE
	plp		; 28
	tas		; 1B
	lda $BA64.w,X		; BD 64 BA
	and $62.b		; 25 62
	bne   1.b		; D0 01
	rts		; 60

	nop		; EA
	inx		; E8
	inx		; E8
	stx $1B28.w		; 8E 28 1B
	lda $BA64.w,X		; BD 64 BA
	cmp #$FFFF.w		; C9 FF FF
	beq   1.b		; F0 01
	rts		; 60

	nop		; EA
	lda #$0002.w		; A9 02 00
	sta $1C64.w		; 8D 64 1C
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$02.b		; A9 02
	sta $78.b		; 85 78
	lda #$01.b		; A9 01
	sta $1F64.w		; 8D 64 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $1C64.w		; 8D 64 1C
	rts		; 60

	rts		; 60

	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	sbc $20E2FF.l,X		; FF FF E2 20
	lda $1C5A.w		; AD 5A 1C
	lsr A		; 4A
	stz $1F59.w		; 9C 59 1F
	lda #$8D01.w		; A9 01 8D
	rti		; 40

	asl $01A9.w,X		; 1E A9 01
	sta $8A.b		; 85 8A
	sei		; 78
	jsr $83D2.w		; 20 D2 83
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $1B14.w		; AD 14 1B
	asl A		; 0A
	sta $1F5A.w		; 8D 5A 1F
	lda $1B16.w		; AD 16 1B
	beq   2.b		; F0 02
	lda #$80.b		; A9 80
	sta $1F5C.w		; 8D 5C 1F
	lda #$01.b		; A9 01
	sta $8A.b		; 85 8A
	sei		; 78
	jsr $83D2.w		; 20 D2 83
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $8A.b		; A5 8A
	cmp #$05.b		; C9 05
	beq   6.b		; F0 06
	lda #$00.b		; A9 00
	sta $8A.b		; 85 8A
	bra   3.b		; 80 03
	jsr $BB24.w		; 20 24 BB
	sei		; 78
	jsr $83D2.w		; 20 D2 83
	jsr $9FAA.w		; 20 AA 9F
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $8D.b		; A5 8D
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tax		; AA
	jsr ($BB31.w,X)		; FC 31 BB
	rts		; 60

	tsa		; 3B
	tyx		; BB
	bvc -69.b		; 50 BB
	.db $42, $BB		; 42 BB
	eor #$42BB.w		; 49 BB 42
	tyx		; BB
.ACCU 8
	sep #$20		; E2 20
	lda #$13.b		; A9 13
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	sei		; 78
	jsr $83D2.w		; 20 D2 83
	jsr $AD0B.w		; 20 0B AD
	jsr $BBCA.w		; 20 CA BB
	lda $8D.b		; A5 8D
	and #$FF.b		; 29 FF
	asl A		; 0A
	tax		; AA
	jsr ($BB6D.w,X)		; FC 6D BB
	rts		; 60

	adc [$BB.b],Y		; 77 BB
	sta ($BB.b,S),Y		; 93 BB
	sta ($BB.b,S),Y		; 93 BB
	lda $BBBABB.l		; AF BB BA BB
	jsl $809737.l		; 22 37 97 80
.ACCU 8
	sep #$20		; E2 20
	lda $1838.w		; AD 38 18
	sta $8E.b		; 85 8E
	lda $1C02.w		; AD 02 1C
	cmp #$02.b		; C9 02
	beq   5.b		; F0 05
	lda #$13.b		; A9 13
	sta $8A.b		; 85 8A
	rts		; 60

	lda #$05.b		; A9 05
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $809737.l		; 22 37 97 80
	lda $1838.w		; AD 38 18
	sta $8E.b		; 85 8E
.ACCU 8
	sep #$20		; E2 20
	lda $1C02.w		; AD 02 1C
	cmp #$02.b		; C9 02
	beq   5.b		; F0 05
	lda #$00.b		; A9 00
	sta $8A.b		; 85 8A
	rts		; 60

	lda #$05.b		; A9 05
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $8097D5.l		; 22 D5 97 80
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $8A.b		; 85 8A
	rts		; 60

	jsl $809737.l		; 22 37 97 80
.ACCU 8
	sep #$20		; E2 20
	lda $1838.w		; AD 38 18
	sta $8E.b		; 85 8E
	lda #$04.b		; A9 04
	sta $8A.b		; 85 8A
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $1D01.w		; AD 01 1D
	cmp #$FF.b		; C9 FF
	beq   3.b		; F0 03
	jsr $BBE3.w		; 20 E3 BB
.ACCU 8
	sep #$20		; E2 20
	lda $1D04.w		; AD 04 1D
	cmp #$FF.b		; C9 FF
	beq   3.b		; F0 03
	jsr $BC18.w		; 20 18 BC
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $1846.w		; AD 46 18
	beq  31.b		; F0 1F
	lda #$01.b		; A9 01
	sta $1D01.w		; 8D 01 1D
	lda $8D.b		; A5 8D
	and #$FF.b		; 29 FF
	cmp #$03.b		; C9 03
	beq   8.b		; F0 08
	lda $1D01.w		; AD 01 1D
	sta $1F56.w		; 8D 56 1F
	bra   9.b		; 80 09
	lda $1D01.w		; AD 01 1D
	ldx $1E46.w		; AE 46 1E
	sta $0003.w,X		; 9D 03 00
	rts		; 60

	stz $1D01.w		; 9C 01 1D
	stz $1F56.w		; 9C 56 1F
	ldx $1E46.w		; AE 46 1E
	stz $0003.w,X		; 9E 03 00
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda $18C6.w		; AD C6 18
	beq  31.b		; F0 1F
	lda #$01.b		; A9 01
	sta $1D04.w		; 8D 04 1D
	lda $8D.b		; A5 8D
	and #$FF.b		; 29 FF
	cmp #$03.b		; C9 03
	beq   8.b		; F0 08
	lda $1D04.w		; AD 04 1D
	sta $1F57.w		; 8D 57 1F
	bra   9.b		; 80 09
	lda $1D04.w		; AD 04 1D
	ldx $1E46.w		; AE 46 1E
	sta $0007.w,X		; 9D 07 00
	rts		; 60

	stz $1D04.w		; 9C 04 1D
	stz $1F57.w		; 9C 57 1F
	ldx $1E46.w		; AE 46 1E
	stz $0007.w,X		; 9E 07 00
	rts		; 60

	brk $00.b		; 00 00
	mvp $E0,$20		; 44 20 E0
	adc $007F80.l,X		; 7F 80 7F 00
	adc $447FFF.l,X		; 7F FF 7F 44
	jsr $7FE0.w		; 20 E0 7F
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	beq 127.b		; F0 7F
	mvp $80,$20		; 44 20 80
	adc $807F00.l,X		; 7F 00 7F 80
	ror $7FE0.w,X		; 7E E0 7F
	brk $00.b		; 00 00
	mvp $80,$20		; 44 20 80
	adc $FF7F00.l,X		; 7F 00 7F FF
	adc $447FE0.l,X		; 7F E0 7F 44
	jsr $7F80.w		; 20 80 7F
	brk $7F.b		; 00 7F
	beq 127.b		; F0 7F
	cpx #$447F.w		; E0 7F 44
	jsr $7F00.w		; 20 00 7F
	bra 126.b		; 80 7E
	cpx #$807F.w		; E0 7F 80
	adc $440000.l,X		; 7F 00 00 44
	jsr $7F00.w		; 20 00 7F
	sbc $7FE07F.l,X		; FF 7F E0 7F
	bra 127.b		; 80 7F
	mvp $00,$20		; 44 20 00
	adc $E07FF0.l,X		; 7F F0 7F E0
	adc $447F80.l,X		; 7F 80 7F 44
	jsr $7E80.w		; 20 80 7E
	cpx #$807F.w		; E0 7F 80
	adc $007F00.l,X		; 7F 00 7F 00
	brk $44.b		; 00 44
	jsr $7FFF.w		; 20 FF 7F
	cpx #$807F.w		; E0 7F 80
	adc $447F00.l,X		; 7F 00 7F 44
	jsr $7FF0.w		; 20 F0 7F
	cpx #$807F.w		; E0 7F 80
	adc $447F00.l,X		; 7F 00 7F 44
	jsr $7FE0.w		; 20 E0 7F
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	bra 126.b		; 80 7E
	adc $BD89BD.l,X		; 7F BD 89 BD
	clv		; B8
	lda $BDC2.w,X		; BD C2 BD
	mvp $58,$BE		; 44 BE 58
	ldx $BE6C.w,Y		; BE 6C BE
	bra -66.b		; 80 BE
	sty $BE.b,X		; 94 BE
	tay		; A8
	ldx $BEC6.w,Y		; BE C6 BE
	bne -66.b		; D0 BE
	sed		; F8
	ldx $BF02.w,Y		; BE 02 BF
	rol A		; 2A
	lda $5CBF34.l,X		; BF 34 BF 5C
	lda $7ABF66.l,X		; BF 66 BF 7A
	lda $98BF84.l,X		; BF 84 BF 98
	lda $B6BFAC.l,X		; BF AC BF B6
	lda $42C038.l,X		; BF 38 C0 42
	cpy #$BD61.w		; C0 61 BD
	rtl		; 6B

	lda $BD9A.w,X		; BD 9A BD
	ldy $BD.b		; A4 BD
	bmi -66.b		; 30 BE
	dec A		; 3A
	ldx $BE4E.w,Y		; BE 4E BE
	.db $62, $BE, $76		; 62 BE 76
	ldx $BE8A.w,Y		; BE 8A BE
	stz $B2BE.w,X		; 9E BE B2
	ldx $BEBC.w,Y		; BE BC BE
	phx		; DA
	ldx $BEE4.w,Y		; BE E4 BE
	asl $BF.b,X		; 16 BF
	jsr $0CBF.w		; 20 BF 0C
	lda $52BF48.l,X		; BF 48 BF 52
	lda $D6BDCC.l,X		; BF CC BD D6
	lda $BDE0.w,X		; BD E0 BD
	nop		; EA
	lda $BDF4.w,X		; BD F4 BD
	inc $08BD.w,X		; FE BD 08
	ldx $BE12.w,Y		; BE 12 BE
	trb $26BE.w		; 1C BE 26
	ldx $BDAE.w,Y		; BE AE BD
	rol $75BF.w,X		; 3E BF 75
	lda $BF70.w,X		; BD 70 BF
	stx $A2BF.w		; 8E BF A2
	lda $2EC024.l,X		; BF 24 C0 2E
	cpy #$BFC0.w		; C0 C0 BF
	dex		; CA
	lda $DEBFD4.l,X		; BF D4 BF DE
	lda $F2BFE8.l,X		; BF E8 BF F2
	lda $06BFFC.l,X		; BF FC BF 06
	cpy #$C010.w		; C0 10 C0
	inc $1ABE.w		; EE BE 1A
	cpy #$2000.w		; C0 00 20
	rti		; 40

	asl $0000.w		; 0E 00 00
	rep #$00		; C2 00
	bra 126.b		; 80 7E
	brk $28.b		; 00 28
	brk $22.b		; 00 22
	beq  10.b		; F0 0A
	rep #$00		; C2 00
	jsr $007E.w		; 20 7E 00
	jmp $0800.w		; 4C 00 08
	bpl  29.b		; 10 1D
	rep #$00		; C2 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	brk $22.b		; 00 22
	rep #$00		; C2 00
	jsr $007E.w		; 20 7E 00
	brk $00.b		; 00 00
	php		; 08
	bvs  35.b		; 70 23
	rep #$00		; C2 00
	bmi 126.b		; 30 7E
	brk $60.b		; 00 60
	ldy #$6000.w		; A0 00 60
	and ($C2.b,X)		; 21 C2
	brk $20.b		; 00 20
	cpx #$E010.w		; E0 10 E0
	and [$C2.b]		; 27 C2
	brk $20.b		; 00 20
	ror $3000.w,X		; 7E 00 30
	cpx #$001F.w		; E0 1F 00
	bit $C2.b,X		; 34 C2
	brk $20.b		; 00 20
	ror $4700.w,X		; 7E 00 47
	cpy #$E006.w		; C0 06 E0
	bit $00C2.w,X		; 3C C2 00
	jsr $007E.w		; 20 7E 00
	brk $00.b		; 00 00
	php		; 08
	bcs  62.b		; B0 3E
	rep #$00		; C2 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	rti		; 40

	eor $C2.b,S		; 43 C2
	brk $30.b		; 00 30
	ror $4000.w,X		; 7E 00 40
	brk $0E.b		; 00 0E
	bvc  60.b		; 50 3C
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	rti		; 40

	brk $0E.b		; 00 0E
	brk $43.b		; 00 43
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	rti		; 40

	brk $0E.b		; 00 0E
	cpy #$C548.w		; C0 48 C5
	brk $20.b		; 00 20
	ror $4000.w,X		; 7E 00 40
	brk $0E.b		; 00 0E
	bvs  78.b		; 70 4E
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	rti		; 40

	brk $0E.b		; 00 0E
	jsr $C555.w		; 20 55 C5
	brk $20.b		; 00 20
	ror $4000.w,X		; 7E 00 40
	brk $0E.b		; 00 0E
	cpy #$C55B.w		; C0 5B C5
	brk $20.b		; 00 20
	ror $4000.w,X		; 7E 00 40
	brk $0E.b		; 00 0E
	bmi  98.b		; 30 62
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	rti		; 40

	brk $0E.b		; 00 0E
	bvc 105.b		; 50 69
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	rti		; 40

	brk $0E.b		; 00 0E
	bvc 112.b		; 50 70
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	and #$A0.b		; 29 A0
	asl A		; 0A
	jsr $C60C.w		; 20 0C C6
	brk $20.b		; 00 20
	ror $5800.w,X		; 7E 00 58
	brk $10.b		; 00 10
	bra  69.b		; 80 45
	rep #$00		; C2 00
	cpy #$007F.w		; C0 7F 00
	and $1C00.w,Y		; 39 00 1C
	bne  95.b		; D0 5F
	rep #$00		; C2 00
	rts		; 60

	ror $0000.w,X		; 7E 00 00
	brk $08.b		; 00 08
	bne 106.b		; D0 6A
	rep #$00		; C2 00
	bvc 126.b		; 50 7E
	brk $39.b		; 00 39
	brk $1C.b		; 00 1C
	rts		; 60

	adc $00C2.w		; 6D C2 00
	rts		; 60

	ror $0000.w,X		; 7E 00 00
	brk $08.b		; 00 08
	bra 122.b		; 80 7A
	rep #$00		; C2 00
	bvc 126.b		; 50 7E
	brk $39.b		; 00 39
	brk $1C.b		; 00 1C
	bpl   4.b		; 10 04
	cmp $00.b,S		; C3 00
	rts		; 60

	ror $0000.w,X		; 7E 00 00
	brk $08.b		; 00 08
	jsr $C27C.w		; 20 7C C2
	brk $50.b		; 00 50
	ror $3900.w,X		; 7E 00 39
	brk $1C.b		; 00 1C
	bra  17.b		; 80 11
	cmp $00.b,S		; C3 00
	rts		; 60

	ror $0000.w,X		; 7E 00 00
	brk $08.b		; 00 08
	bvc  21.b		; 50 15
	cmp [$00.b]		; C7 00
	bvc 126.b		; 50 7E
	brk $39.b		; 00 39
	brk $1C.b		; 00 1C
	bvc  32.b		; 50 20
	cmp $00.b,S		; C3 00
	rts		; 60

	ror $0000.w,X		; 7E 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cmp $00.b,S		; C3 00
	bvc 126.b		; 50 7E
	brk $39.b		; 00 39
	brk $1C.b		; 00 1C
	ldy #$C332.w		; A0 32 C3
	brk $60.b		; 00 60
	ror $0000.w,X		; 7E 00 00
	brk $08.b		; 00 08
	bpl   2.b		; 10 02
	cmp $00.b,S		; C3 00
	bvc 126.b		; 50 7E
	brk $28.b		; 00 28
	brk $08.b		; 00 08
	bcc  68.b		; 90 44
	cmp $00.b,S		; C3 00
	bcc 126.b		; 90 7E
	brk $2C.b		; 00 2C
	rti		; 40

	eor $48D0.w		; 4D D0 48
	cmp $00.b,S		; C3 00
	jsr $007E.w		; 20 7E 00
	brk $00.b		; 00 00
	php		; 08
	beq 105.b		; F0 69
	cmp $00.b,S		; C3 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	bvc 107.b		; 50 6B
	cmp $00.b,S		; C3 00
	jsr $007E.w		; 20 7E 00
	jsr $1400.w		; 20 00 14
	bmi 109.b		; 30 6D
	cmp $00.b,S		; C3 00
	jsr $007E.w		; 20 7E 00
	rol A		; 2A
	rti		; 40

	eor $48D0.w		; 4D D0 48
	cmp $00.b,S		; C3 00
	jsr $007E.w		; 20 7E 00
	bvc   0.b		; 50 00
	clc		; 18
	beq   7.b		; F0 07
	cmp [$00.b]		; C7 00
	jsr $007E.w		; 20 7E 00
	brk $00.b		; 00 00
	php		; 08
	brk $7C.b		; 00 7C
	cmp $00.b,S		; C3 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	bit $1EA0.w		; 2C A0 1E
	rts		; 60

	asl $C4.b,X		; 16 C4
	brk $A0.b		; 00 A0
	ror $4000.w,X		; 7E 00 40
	bra  52.b		; 80 34
	bcc  37.b		; 90 25
	cpy $00.b		; C4 00
	cpy #$007E.w		; C0 7E 00
	rti		; 40

	brk $38.b		; 00 38
	brk $00.b		; 00 00
	cmp $00.b		; C5 00
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cpy #$C605.w		; C0 05 C6
	brk $40.b		; 00 40
	adc $000800.l,X		; 7F 00 08 00
	php		; 08
	rti		; 40

	asl A		; 0A
	dec $00.b		; C6 00
	bvc 127.b		; 50 7F
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	rti		; 40

	asl $00C6.w		; 0E C6 00
	rts		; 60

	adc $006000.l,X		; 7F 00 60 00
	jsr $0000.w		; 20 00 00
	cpy $00.b		; C4 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	bmi  80.b		; 30 50
	inc A		; 1A
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	brk $00.b		; 00 00
	php		; 08
	bcs  61.b		; B0 3D
	cpy $00.b		; C4 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	bra  65.b		; 80 41
	cpy $00.b		; C4 00
	jsr $007E.w		; 20 7E 00
	jsr $2220.w		; 20 20 22
	beq  15.b		; F0 0F
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	plp		; 28
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	beq  42.b		; F0 2A
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	bvc   0.b		; 50 00
	jsr $0000.w		; 20 00 00
	cmp [$00.b]		; C7 00
	jsr $007E.w		; 20 7E 00
	bpl   0.b		; 10 00
	php		; 08
	jsr $C62B.w		; 20 2B C6
	brk $00.b		; 00 00
	adc $E02900.l,X		; 7F 00 29 E0
	ora $C63590.l		; 0F 90 35 C6
	brk $20.b		; 00 20
	ror $0000.w,X		; 7E 00 00
	brk $08.b		; 00 08
	bvc  58.b		; 50 3A
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	bmi  61.b		; 30 3D
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $3C50.w		; 0E 50 3C
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $4300.w		; 0E 00 43
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $48C0.w		; 0E C0 48
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $4E70.w		; 0E 70 4E
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $5520.w		; 0E 20 55
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $5BC0.w		; 0E C0 5B
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $6230.w		; 0E 30 62
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $6950.w		; 0E 50 69
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	bmi   0.b		; 30 00
	asl $7050.w		; 0E 50 70
	cmp $00.b		; C5 00
	jsr $007E.w		; 20 7E 00
	and #$E0.b		; 29 E0
	ora $C71730.l		; 0F 30 17 C7
	brk $20.b		; 00 20
	ror $2000.w,X		; 7E 00 20
	brk $20.b		; 00 20
	bvs  63.b		; 70 3F
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	rti		; 40

	brk $20.b		; 00 20
	bcs  87.b		; B0 57
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	brk $00.b		; 00 00
	php		; 08
	bcs 119.b		; B0 77
	dec $00.b		; C6 00
	jsr $007E.w		; 20 7E 00
	php		; 08
	brk $08.b		; 00 08
	rti		; 40

	ply		; 7A
	dec $00.b		; C6 00
	jsr $FF7E.w		; 20 7E FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFBFFF.l		; EF FF BF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
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
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	rti		; 40

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
	sty $04.b		; 84 04
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	asl $00.b		; 06 00
	cop $08.b		; 02 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	brk $44.b		; 00 44
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $08.b		; 00 08
	brk $02.b		; 00 02
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
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
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	ora ($40.b,X)		; 01 40
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $41.b		; 00 41
	brk $40.b		; 00 40
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
	jsr $0000.w		; 20 00 00
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
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0090.w		; 20 90 00
	brk $10.b		; 00 10
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
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	and #$00.b		; 29 00
	ora ($00.b,X)		; 01 00
	adc ($00.b,X)		; 61 00
	php		; 08
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
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	jsr $4008.w		; 20 08 40
	rti		; 40

	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	lda ($00.b,X)		; A1 00
	mvp $00,$00		; 44 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

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
	bra   0.b		; 80 00
	bvc   0.b		; 50 00
	brk $80.b		; 00 80
	php		; 08
	cop $00.b		; 02 00
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
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	mvp $00,$08		; 44 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
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
	brk $00.b		; 00 00
	rti		; 40

	ora #$88.b		; 09 88
	php		; 08
	php		; 08
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
	jsr $0000.w		; 20 00 00
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
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
	ldy #$8200.w		; A0 00 82
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
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
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	rti		; 40

	rti		; 40

	brk $04.b		; 00 04
	brk $C0.b		; 00 C0
	rti		; 40

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
	sbc $FDFFEF.l,X		; FF EF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEDFFF.l,X		; FF FF DF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cop $00.b		; 02 00
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
	ora ($08.b),Y		; 11 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $80.b		; 00 80
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
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	brk $08.b		; 00 08
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
	plp		; 28
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $04.b		; 02 04
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
	brk $20.b		; 00 20
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
	cop $00.b		; 02 00
	jsr $1000.w		; 20 00 10
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $10.b		; 00 10
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	eor ($00.b,X)		; 41 00
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
	cop $00.b		; 02 00
	rti		; 40

	rti		; 40

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
	jsr $1000.w		; 20 00 10
	brk $00.b		; 00 00
	cpy #$0020.w		; C0 20 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $04.b		; 00 04
	jsr $0000.w		; 20 00 00
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
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	ldy #$0008.w		; A0 08 00
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
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	jsr $0000.w		; 20 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFDE.l,X		; FF DE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFDF.l,X		; FF DF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	cmp $FFFFBF.l,X		; DF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFF7.l,X		; 7F F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	tsb $20.b		; 04 20
	brk $40.b		; 00 40
	rts		; 60

	brk $00.b		; 00 00
	rti		; 40

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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	jsr $2000.w		; 20 00 20
	php		; 08
	brk $20.b		; 00 20
	brk $22.b		; 00 22
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	php		; 08
	brk $B0.b		; 00 B0
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0008.w		; 20 08 00
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
	brk $21.b		; 00 21
	mvp $00,$08		; 44 08 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	jsr $0024.w		; 20 24 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
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
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	jsr $0000.w		; 20 00 00
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
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
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $80.b		; 00 80
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
	php		; 08
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	cop $20.b		; 02 20
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	rti		; 40

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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bit $04.b		; 24 04
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $20.b		; 00 20
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $40.b		; 04 40
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
	rti		; 40

	php		; 08
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $20.b		; 00 20
	brk $90.b		; 00 90
	brk $14.b		; 00 14
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6E.b		; 00 6E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
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
	brk $15.b		; 00 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 03FFFE. Skipping.
	.db $25		; Opcode 25 overrunning bank boundry at 03FFFF. Skipping.
.ENDS
