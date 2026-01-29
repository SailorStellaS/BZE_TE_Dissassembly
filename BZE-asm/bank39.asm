.BANK 39 SLOT 0
.ORG $0000

.SECTION "Bank39" FORCE

	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	adc $C9.b,X		; 75 C9
	adc $12.b,X		; 75 12
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	rol $44DC.w		; 2E DC 44
	sbc $0200E3.l,X		; FF E3 00 02
	dec $FE78.w,X		; DE 78 FE
	bvs -32.b		; 70 E0
	ora ($F2.b,X)		; 01 F2
	bit $35CD.w,X		; 3C CD 35
	sei		; 78
	brk $E0.b		; 00 E0
	ora $E2.b,S		; 03 E2
	plx		; FA
	sbc ($24.b)		; F2 24
	ora $0178.w		; 0D 78 01
	ora ($FF.b),Y		; 11 FF
	nop		; EA
	and $10.b		; 25 10
	ora ($11.b,X)		; 01 11
	sei		; 78
	cmp $04CD10.l,X		; DF 10 CD 04
	eor ($1D.b,X)		; 41 1D
	ora ($D1.b)		; 12 D1
	sei		; 78
	jsr ($F5E0.w,X)		; FC E0 F5
	eor $FE300F.l		; 4F 0F 30 FE
	pei ($88.b)		; D4 88
	cmp $E031F2.l,X		; DF F2 31 E0
	jsl $0BF1D0.l		; 22 D0 F1 0B
	dey		; 88
	ora $02FF52.l		; 0F 52 FF 02
	and $1FE1.w,X		; 3D E1 1F
	ldx $1298.w,Y		; BE 98 12
	ora $FE10F2.l,X		; 1F F2 10 FE
	jsl $98F2EC.l		; 22 EC F2 98
	bmi  -1.b		; 30 FF
	ora ($1E.b)		; 12 1E
.ACCU 8
	sep #$2F		; E2 2F
	cmp $9824.w		; CD 24 98
	and $33E1.w		; 2D E1 33
	cmp $0B24.w		; CD 24 0B
	lda ($44.b)		; B2 44
	tay		; A8
	sbc $E02E02.l		; EF 02 2E E0
	bmi  -4.b		; 30 FC
	cop $30.b		; 02 30
	tay		; A8
	cmp $E2FE23.l,X		; DF 23 FE E2
	and $2D23DD.l,X		; 3F DD 23 2D
	tay		; A8
	cmp ($32.b)		; D2 32
	cmp $1F04.w,X		; DD 04 1F
	lda $A00B34.l,X		; BF 34 0B A0
	cpy $3F04.w		; CC 04 3F
	sbc ($65.b,X)		; E1 65
	xce		; FB
	sbc $5F.b,X		; F5 5F
	ldy $BD.b		; A4 BD
	bit $41.b,X		; 34 41
.INDEX 8
	sep #$11		; E2 11
	cpy $3E06.w		; CC 06 3E
	ldy $DC.b,X		; B4 DC
	pei ($53.b)		; D4 53
	sbc $14DD11.l		; EF 11 DD 14
	jsr $FEC4.w		; 20 C4 FE
	cmp $000E44.l,X		; DF 44 0E 00
	ora OAMADDL.w		; 0D 02 21
	cpy $FF.b		; C4 FF
	cmp $31F6.w,X		; DD F6 31
	cpx #$FE.b		; E0 FE
	sbc ($22.b),Y		; F1 22
	cpy $00.b		; C4 00
	sbc $54DF.w		; ED DF 54
	and $23FFED.l		; 2F ED FF 23
	cpy $11.b		; C4 11
	inc $FFEE.w,X		; FE EE FF
	stz $1C.b		; 64 1C
	sbc $C401.w		; ED 01 C4
	.db $42, $1E		; 42 1E
	inc $1EF0.w		; EE F0 1E
	eor $2C.b,S		; 43 2C
	dec $21C4.w,X		; DE C4 21
	and ($0E.b),Y		; 31 0E
	sbc $140D02.l		; EF 02 0D 14
	and $DCB0.w		; 2D B0 DC
	cpx #$46.b		; E0 46
	.db $62, $EC, $E1		; 62 EC E1
	pld		; 2B
	lda $B4.b,S		; A3 B4
	eor $02BF.w		; 4D BF 02
	and ($FE.b,S),Y		; 33 FE
	cmp $C01A03.l,X		; DF 03 1A C0
	cmp ($43.b,X)		; C1 43
	sbc $3212EF.l,X		; FF EF 12 32
	ora $1EC0F0.l		; 0F F0 C0 1E
	lda ($44.b),Y		; B1 44
	ora $3213EF.l		; 0F EF 13 32
	ora $1EF2C4.l		; 0F C4 F2 1E
	ldx $42.b		; A6 42
	lda $0F13E2.l,X		; BF E2 13 0F
	bne  15.b		; D0 0F
	beq  17.b		; F0 11
	cpx $2002.w		; EC 02 20
	sbc $30C4F0.l,X		; FF F0 C4 30
	inc $12F0.w,X		; FE F0 12
	ora $44C0.w,X		; 1D C0 44
	asl $D5B8.w		; 0E B8 D5
	eor $FC.b,S		; 43 FC
	cmp $EC2123.l,X		; DF 23 21 EC
	cmp $A3C0.w		; CD C0 A3
	adc $FD.b		; 65 FD
	cpy #$24.b		; C0 24
	jsr $F2EE.w		; 20 EE F2
	bne  34.b		; D0 22
	asl $23CE.w		; 0E CE 23
	and $2102EF.l		; 2F EF 02 21
	cpy #$FD.b		; C0 FD
	cpx #$34.b		; E0 34
	jsr $C5C9.w		; 20 C9 C5
	adc ($DC.b,S),Y		; 73 DC
	clv		; B8
	rol $FB.b,X		; 36 FB
	bcs  21.b		; B0 15
	ora ($EC.b)		; 12 EC
	cmp $66C420.l,X		; DF 20 C4 66
	xce		; FB
	cpy #$33.b		; C0 33
	and $23F2DE.l		; 2F DE F2 23
	cpy $FE.b		; C4 FE
	inc $46F0.w		; EE F0 46
	cpx $34C0.w		; EC C0 34
	asl $FDC0.w,X		; 1E C0 FD
	cpx #$23.b		; E0 23
	jsr $EEFE.w		; 20 FE EE
	sbc $41.b		; E5 41
	cpy #$CD.b		; C0 CD
	sbc ($42.b,S),Y		; F3 42
	inc $13E0.w,X		; FE E0 13
	jsr $C4FF.w		; 20 FF C4
	ora $DE4EF3.l		; 0F F3 4E DE
	ora ($20.b)		; 12 20
	inc $C001.w		; EE 01 C0
	ora ($21.b),Y		; 11 21
	ora $F4FD0F.l		; 0F 0F FD F4
	jsr $B4EE.w		; 20 EE B4
	eor $2D.b,S		; 43 2D
	cmp $FF1202.l,X		; DF 02 12 FF
	beq  -1.b		; F0 FF
	bcs -69.b		; B0 BB
	ror $2C.b		; 66 2C
	lda $DC3F35.l		; AF 35 3F DC
	sbc ($B0.b),Y		; F1 B0
	and ($10.b,S),Y		; 33 10
	ora $46BBED.l		; 0F ED BB 46
	rol $A8BE.w		; 2E BE A8
	ora $5131B9.l,X		; 1F B9 31 51
	brk $CE.b		; 00 CE
	jsr $B40F.w		; 20 0F B4
	ora $DC6CD6.l		; 0F D6 6C DC
	trb $31.b		; 14 31
	dec $C0E1.w		; CE E1 C0
	ora ($21.b,X)		; 01 21
	brk $0F.b		; 00 0F
	sbc $1004FD.l,X		; FF FD 04 10
	bcs -68.b		; B0 BC
	ora $51.b,S		; 03 51
	sbc $14DE.w,X		; FD DE 14
	and ($00.b),Y		; 31 00
	cpy #$00.b		; C0 00
	sbc $1013EC.l,X		; FF EC 13 10
	cmp $A82002.l,X		; DF 02 20 A8
	lsr $0E73.w		; 4E 73 0E
	dec $2F20.w		; CE 20 2F
	sbc $76B40B.l,X		; FF 0B B4 76
	dec $33B1.w		; CE B1 33
	ora $11EE.w,X		; 1D EE 11
	jsl $0031B0.l		; 22 B0 31 00
	brk $0E.b		; 00 0E
	cpx $62A2.w		; EC A2 62
	tsb $43A4.w		; 0C A4 43
	adc ($BC.b,X)		; 61 BC
	bne  52.b		; D0 34
	and ($DD.b),Y		; 31 DD
	ora ($B0.b,X)		; 01 B0
	brk $FE.b		; 00 FE
	dex		; CA
	inc $32.b		; E6 32
	cmp $30F1.w,X		; DD F1 30
	ldy $FC.b		; A4 FC
	sbc ($25.b)		; F2 25
	ora ($DE.b,X)		; 01 DE
	ora ($FE.b),Y		; 11 FE
	sbc $05DBB0.l		; EF B0 DB 05
	and ($DE.b,X)		; 21 DE
	sbc ($20.b),Y		; F1 20
	inc $B0DE.w,X		; FE DE B0
	ora ($22.b,X)		; 01 22
	bpl   1.b		; 10 01
	ora $C3DCEE.l		; 0F EE DC C3
	ldy $3C.b		; A4 3C
	dex		; CA
	and ($6F.b),Y		; 31 6F
	dec $23D0.w,X		; DE D0 23
	and ($B0.b)		; 32 B0
	jsr $00F0.w		; 20 F0 00
	ora $14DBEE.l		; 0F EE DB 14
	jsl $E1CDA0.l		; 22 A0 CD E1
	bmi  -3.b		; 30 FD
	dec $3402.w,X		; DE 02 34
	and ($A0.b,X)		; 21 A0
	brk $0F.b		; 00 0F
	jmp.w [$DBDE]		; DC DE DB
	sbc $32.b		; E5 32
	asl $3F94.w,X		; 1E 94 3F
	ora $12E1F0.l,X		; 1F F0 E1 12
	mvp $D1,$0B		; 44 0B D1
	ldy $0F.b		; A4 0F
	sbc $B51F01.l		; EF 01 1F B5
	adc $EF3B.w,X		; 7D 3B EF
	sty $14.b,X		; 94 14
	pei ($EF.b)		; D4 EF
	brk $33.b		; 00 33
	rti		; 40

	dec $A0FE.w,X		; DE FE A0
	cpx $EFBC.w		; EC BC EF
	sbc $42C2.w,X		; FD C2 42
	and $0288EE.l		; 2F EE 88 02
	cmp [$9E.b],Y		; D7 9E
	rti		; 40

	eor $7FD3DB.l		; 4F DB D3 7F
	ldy #$FF.b		; A0 FF
	inc $FEFF.w,X		; FE FF FE
	lda $3241.w,X		; BD 41 32
	cmp $02E294.l,X		; DF 94 E2 02
	bit $030E.w,X		; 3C 0E 03
	bit $FE.b,X		; 34 FE
	sbc $0098.w,X		; FD 98 00
	ora ($22.b,X)		; 01 22
.ACCU 16
	rep #$E2		; C2 E2
	lsr A		; 4A
	ora $008801.l		; 0F 01 88 00
	sbc ($0F.b,S),Y		; F3 0F
	jsr $1DF0.w		; 20 F0 1D
	cmp $11.b,S		; C3 11
	ldy #$FF.b		; A0 FF
	beq   0.b		; F0 00
	ora $1291DA.l		; 0F DA 91 12
	rti		; 40

	sty $3A.b		; 84 3A
	jsr ($C707.w,X)		; FC 07 C7
	bit $20.b,X		; 34 20
	plx		; FA
	lda $F098.w,X		; BD 98 F0
	ora ($F1.b),Y		; 11 F1
	ora $0FCF41.l		; 0F 41 CF 0F
	brk $94.b		; 00 94
	inc $DEDF.w,X		; FE DF DE
	and $25.b,S		; 23 25
	and ($00.b)		; 32 00
	sbc $5C88.w		; ED 88 5C
	tsb $13.b		; 04 13
	bmi -86.b		; 30 AA
	sep #$04		; E2 04
	ora $022288.l,X		; 1F 88 22 02
	jsr ($0CEE.w,X)		; FC EE 0C
	ora ($13.b,S),Y		; 13 13
	and ($88.b,X)		; 21 88
	sbc ($FD.b),Y		; F1 FD
	brk $01.b		; 00 01
	cmp ($F0.b)		; D2 F0
	beq  33.b		; F0 21
	sty $F0.b		; 84 F0
	cpx $13BD.w		; EC BD 13
	and ($34.b,S),Y		; 33 34
	bit $22.b		; 24 22
	sei		; 78
	plx		; FA
	ora $3E5ED1.l,X		; 1F D1 5E 3E
	cmp ($17.b)		; D2 17
	sbc $CC78.w		; ED 78 CC
	and $F0F032.l,X		; 3F 32 F0 F0
	cmp ($32.b)		; D2 32
	sbc $60B178.l		; EF 78 B1 60
	nop		; EA
	sbc ($0F.b,S),Y		; F3 0F
	ora $E1.b,S		; 03 E1
	asl $5068.w		; 0E 68 50
	inc $55E1.w		; EE E1 55
	sty $CD.b,X		; 94 CD
	eor $0E.b,S		; 43 0E
	sei		; 78
	sbc ($D0.b,X)		; E1 D0
	cpx $10.b		; E4 10
	tsb $015D.w		; 0C 5D 01
.ACCU 8
.INDEX 8
	sep #$78		; E2 78
	sbc $0E0000.l,X		; FF 00 00 0E
	and ($0F.b,X)		; 21 0F
	bmi -44.b		; 30 D4
	stz $EE.b,X		; 74 EE
	ora $DCDFFF.l		; 0F FF DF DC
	tsb $0FFD.w		; 0C FD 0F
	pla		; 68
	ora ($0B.b,S),Y		; 13 0B
	asl A		; 0A
	and ($10.b)		; 32 10
	cmp $A5.b		; C5 A5
	sbc $E05D68.l		; EF 68 5D E0
	ora ($03.b),Y		; 11 03
	lda $222E3E.l		; AF 3E 2E 22
	pla		; 68
	ldx #$1B.b		; A2 1B
	adc $A60F.w,X		; 7D 0F A6
	sbc $680DF2.l,X		; FF F2 0D 68
	rol $0FFF.w,X		; 3E FF 0F
	cop $3C.b		; 02 3C
	sbc ($F2.b)		; F2 F2
	jsr ($3464.w,X)		; FC 64 34
	bpl -46.b		; 10 D2
	lda $CE1FEB.l,X		; BF EB 1F CE
	sbc $FCF564.l,X		; FF 64 F5 FC
	ora ($F1.b),Y		; 11 F1
	asl $010F.w		; 0E 0F 01
	tsb $64.b		; 04 64
	sbc ($00.b,X)		; E1 00
	ora $104EF1.l		; 0F F1 4E 10
	cmp ($CF.b),Y		; D1 CF
	stz $13.b		; 64 13
	cpx #$10.b		; E0 10
	phd		; 0B
	phd		; 0B
	ora $440021.l,X		; 1F 21 00 44
	lda $D2FBF2.l		; AF F2 FB D2
	rts		; 60

	tsb $3E45.w		; 0C 45 3E
	stz $01.b		; 64 01
	cmp ($E0.b),Y		; D1 E0
	phd		; 0B
	and ($01.b)		; 32 01
	ora $68ED.w		; 0D ED 68
	and $1FF02E.l,X		; 3F 2E F0 1F
	ora ($EC.b),Y		; 11 EC
	bmi  17.b		; 30 11
	mvn $20,$02		; 54 02 20
	inc $0011.w		; EE 11 00
	jmp.w [$5B6C]		; DC 6C 5B
	mvn $EE,$02		; 54 02 EE
	asl $F6EF.w		; 0E EF F6
	cmp $640F30.l		; CF 30 0F 64
	sbc $FF23.w		; ED 23 FF
	ora ($B2.b,X)		; 01 B2
	ora $E023.w		; 0D 23 E0
	mvp $4C,$0F		; 44 0F 4C
	bne -48.b		; D0 D0
	cop $23.b		; 02 23
	lda $E0641F.l,X		; BF 1F 64 E0
	ora ($D2.b),Y		; 11 D2
	ora $F0220C.l		; 0F 0C 22 F0
	cmp ($54.b,S),Y		; D3 54
	cmp $1FFF2F.l,X		; DF 2F FF 1F
	sbc ($20.b),Y		; F1 20
	beq  -1.b		; F0 FF
	cli		; 58
	cmp ($2D.b,S),Y		; D3 2D
	jsr $F0FF.w		; 20 FF F0
	ora ($00.b,X)		; 01 00
	sbc ($48.b),Y		; F1 48
	ldy $C0.b,X		; B4 C0
	pei ($F0.b)		; D4 F0
	jsr $00C0.w		; 20 C0 00
	sbc $F044.w,X		; FD 44 F0
	and ($01.b)		; 32 01
	tax		; AA
	brk $F2.b		; 00 F2
	brk $CF.b		; 00 CF
	bit $44.b,X		; 34 44
	lsr $C2CA.w,X		; 5E CA C2
	bpl -66.b		; 10 BE
	cmp ($ED.b),Y		; D1 ED
	bit $EA.b,X		; 34 EA
	lda $BE4BE4.l,X		; BF E4 4B BE
	eor $34DFF3.l,X		; 5F F3 DF 34
	beq  -4.b		; F0 FC
	bmi -49.b		; 30 CF
	cpx $3E35.w		; EC 35 3E
	jsr ($B338.w,X)		; FC 38 B3
	asl $A2.b		; 06 A2
	nop		; EA
	and ($1D.b)		; 32 1D
	ora ($DC.b,X)		; 01 DC
	bit $E0.b,X		; 34 E0
	dec $0E14.w,X		; DE 14 0E
	asl $FE01.w		; 0E 01 FE
	cmp $200E38.l,X		; DF 38 0E 20
	cpx #$FE.b		; E0 FE
	jsr $C1EF.w		; 20 EF C1
	lsr MPYL.w		; 4E 34 21
	ora #$B7.b		; 09 B7
	ora $FB31D4.l,X		; 1F D4 31 FB
	cpy #$44.b		; C0 44
	inc $2020.w		; EE 20 20
	ora ($DF.b),Y		; 11 DF
	cmp $31FF.w,X		; DD FF 31
	bit $E1.b,X		; 34 E1
	inc $ADE0.w		; EE E0 AD
	beq -31.b		; F0 E1
	trb $340F.w		; 1C 0F 34
	ora $0F35.w		; 0D 35 0F
	sbc ($0F.b,X)		; E1 0F
	cmp $241FD0.l,X		; DF D0 1F 24
	ora $BD3C.w		; 0D 3C BD
	ora $EE01.w		; 0D 01 EE
	inc $24CC.w		; EE CC 24
	tas		; 1B
	pea $EB2F.w		; F4 2F EB
	cpy $E1E1.w		; CC E1 E1
	brk $28.b		; 00 28
	sbc $FC02.w,X		; FD 02 FC
.ACCU 8
	sep #$20		; E2 20
	cmp $28E1D3.l,X		; DF D3 E1 28
	bit $9FF1.w,X		; 3C F1 9F
	sbc ($7E.b,X)		; E1 7E
	ora $1E1C.w		; 0D 1C 1E
	bit $FF.b		; 24 FF
	ldy $12EC.w,X		; BC EC 12
	bpl  33.b		; 10 21
	jsr ($800E.w,X)		; FC 0E 80
	brk $22.b		; 00 22
	sbc ($E0.b)		; F2 E0
	ora $34E220.l,X		; 1F 20 E2 34
	bcc  -1.b		; 90 FF
	sbc $E0EE51.l		; EF 51 EE E0
	ora ($1F.b,X)		; 01 1F
	brk $80.b		; 00 80
	cmp ($FE.b,X)		; C1 FE
	ora $F1CD.w,X		; 1D CD F1
	jsl $800FEE.l		; 22 EE 0F 80
	sbc $32CE.w		; ED CE 32
	cpx #$12.b		; E0 12
	eor ($DF.b),Y		; 51 DF
	cpx $E274.w		; EC 74 E2
	and $C32221.l		; 2F 21 22 C3
	lda $1E5E.w,X		; BD 5E 1E
	dey		; 88
	cmp $01.b		; C5 01
	tsb $1212.w		; 0C 12 12
	sbc $84001D.l,X		; FF 1D 00 84
	sbc $EFCEDC.l,X		; FF DC CE EF
	ora $2002F1.l,X		; 1F F1 02 20
	dey		; 88
	lsr $0021.w		; 4E 21 00
	cpx #$0C.b		; E0 0C
	ora ($E2.b),Y		; 11 E2
	bne 120.b		; D0 78
	jsl $432C5D.l		; 22 5D 2C 43
	cmp $00.b		; C5 00
	phk		; 4B
	tda		; 7B
	dey		; 88
	sbc $0EFFE0.l,X		; FF E0 FF 0E
	and $1FF014.l		; 2F 14 F0 1F
	dey		; 88
	ror $D1F3.w		; 6E F3 D1
	beq  -1.b		; F0 FF
	sbc $88DEF1.l		; EF F1 DE 88
	and ($05.b,X)		; 21 05
	brk $2F.b		; 00 2F
	eor ($F1.b)		; 52 F1
	cmp $980E.w		; CD 0E 98
	beq -16.b		; F0 F0
	asl $111F.w,X		; 1E 1F 11
	tsb $D2.b		; 04 D2
	jsr $3F88.w		; 20 88 3F
	lda ($DC.b,X)		; A1 DC
	ora $F201.w,X		; 1D 01 F2
	sbc $9822.w,X		; FD 22 98
	ora ($0F.b),Y		; 11 0F
	rti		; 40

	bpl -17.b		; 10 EF
	sbc $98F00F.l,X		; FF 0F F0 98
	ora ($0F.b,X)		; 01 0F
	sbc ($01.b)		; F2 01
	bpl -12.b		; 10 F4
	cmp ($2E.b)		; D2 2E
	dey		; 88
	trb $E0E0.w		; 1C E0 E0
	sbc ($0E.b,X)		; E1 0E
	phd		; 0B
	ora [$E6.b],Y		; 17 E6
	tya		; 98
	asl $144E.w,X		; 1E 4E 14
	cpy #$FC.b		; C0 FC
	bpl -30.b		; 10 E2
	sbc ($88.b,X)		; E1 88
	sbc $343020.l,X		; FF 20 30 34
	lda [$F2.b]		; A7 F2
	tsa		; 3B
	dec $E088.w		; CE 88 E0
	inc $0111.w		; EE 11 01
	jsr $E44D.w		; 20 4D E4
	dec $88.b,X		; D6 88
	lda ($F3.b)		; B2 F3
	and $A40F.w,X		; 3D 0F A4
	asl $E100.w		; 0E 00 E1
	tya		; 98
	inc $241F.w,X		; FE 1F 24
.ACCU 8
	sep #$20		; E2 20
	jsr $DFC1.w		; 20 C1 DF
	dey		; 88
	sbc $0212.w		; ED 12 02
	sbc $32F4.w,X		; FD F4 32
	tsa		; 3B
	and $88.b		; 25 88
	pea $FBDD.w		; F4 DD FB
	sep #$C3		; E2 C3
	brk $1F.b		; 00 1F
	sbc ($78.b),Y		; F1 78
	ora ($23.b,S),Y		; 13 23
	rti		; 40

	lsr $9A24.w,X		; 5E 24 9A
	xba		; EB
	cmp $88.b,S		; C3 88
	ora $FE0110.l		; 0F 10 01 FE
	bit $12.b		; 24 12
	asl $8822.w		; 0E 22 88
	cpx #$D0.b		; E0 D0
	rep #$0E		; C2 0E
	and ($F0.b,S),Y		; 33 F0
	jmp.w [$98EB]		; DC EB 98
	eor ($F2.b,X)		; 41 F2
	ora $FC0132.l,X		; 1F 32 01 FC
	ora $88F2.w		; 0D F2 88
	bne  45.b		; D0 2D
	ora $1705.w,X		; 1D 05 17
	inc $0631.w,X		; FE 31 06
	dey		; 88
	lda $D4F0DA.l,X		; BF DA F0 D4
	cpx #$20.b		; E0 20
	ora $DF.b,X		; 15 DF
	dey		; 88
	inc $00.b		; E6 00
	bit $E203.w		; 2C 03 E2
	sbc $033D.w		; ED 3D 03
	tya		; 98
	sbc ($1F.b),Y		; F1 1F
	asl $03DE.w,X		; 1E DE 03
	rol $253E.w		; 2E 3E 25
	tya		; 98
	sbc ($2C.b,X)		; E1 2C
	asl $0ED1.w		; 0E D1 0E
	rol $DFF2.w,X		; 3E F2 DF
	tya		; 98
	eor ($12.b,X)		; 41 12
	sbc $DF216D.l		; EF 6D 21 DF
	inc A		; 1A
	jsr $E288.w		; 20 88 E2
	ora $024E.w		; 0D 4E 02
	sbc $5E.b,S		; E3 5E
	ora ($D3.b)		; 12 D3
	dey		; 88
	bit $D11E.w,X		; 3C 1E D1
	bne  31.b		; D0 1F
	and ($E0.b,X)		; 21 E0
	sbc $F688.w		; ED 88 F6
	cop $0F.b		; 02 0F
	ora $01.b,X		; 15 01
	bit $ADD3.w,X		; 3C D3 AD
	tya		; 98
	and $0DE0F2.l		; 2F F2 E0 0D
	ora $F1.b		; 05 F1
	asl $9814.w,X		; 1E 14 98
.INDEX 8
	sep #$1D		; E2 1D
	brk $D1.b		; 00 D1
	sbc $FEF110.l,X		; FF 10 F1 FE
	dey		; 88
	bit $22.b		; 24 22
	brk $10.b		; 00 10
	beq  17.b		; F0 11
	ora $0188DD.l,X		; 1F DD 88 01
	ora $1E.b,S		; 03 1E
	inc $F5E1.w,X		; FE E1 F5
	sbc $158801.l,X		; FF 01 88 15
	cmp $DC042E.l,X		; DF 2E 04 DC
	rol $F004.w		; 2E 04 F0
	sty $EB.b		; 84 EB
	plb		; AB
	lda $F4FF0F.l		; AF 0F FF F4
	stz $54.b		; 64 54
	sei		; 78
	ldx $ED.b		; A6 ED
	jsr $D0C6.w		; 20 C6 D0
	asl $C5E2.w,X		; 1E E2 C5
	sty $20.b		; 84 20
	brk $CD.b		; 00 CD
	bpl  20.b		; 10 14
	ora ($32.b)		; 12 32
	and ($78.b,S),Y		; 33 78
	cmp $3EF30E.l,X		; DF 0E F3 3E
	cmp $CDEF52.l,X		; DF 52 EF CD
	sei		; 78
	sbc [$B5.b]		; E7 B5
	lsr $F102.w,X		; 5E 02 F1
	and $0ED0.w		; 2D D0 0E
	sei		; 78
	jsl $2EF12C.l		; 22 2C F1 2E
	bit $21B1.w		; 2C B1 21
	jsl $122078.l		; 22 78 20 12
.ACCU 8
	sep #$2B		; E2 2B
	sbc $41F1.w,X		; FD F1 41
	cpy $1378.w		; CC 78 13
	rol $F3FB.w,X		; 3E FB F3
	tsb $31.b		; 04 31
	sep #$02		; E2 02
	sei		; 78
	cpx #$EE.b		; E0 EE
	inc $DD42.w,X		; FE 42 DD
	cop $03.b		; 02 03
	xce		; FB
	sei		; 78
	sbc $312142.l		; EF 42 21 31
	cpx #$3F.b		; E0 3F
	sbc $78DF.w,X		; FD DF 78
	cop $1E.b		; 02 1E
	cpx #$31.b		; E0 31
	inc $32EE.w,X		; FE EE 32
	and $78.b		; 25 78
	sbc ($10.b),Y		; F1 10
	cmp ($EF.b)		; D2 EF
	cpx $E203.w		; EC 03 E2
	cpx $78.b		; E4 78
	dec $F04D.w,X		; DE 4D F0
	and ($31.b),Y		; 31 31
	ora ($E0.b,S),Y		; 13 E0
	inc $1F78.w,X		; FE 78 1F
	cpx $20D2.w		; EC D2 20
	and $F200E0.l,X		; 3F E0 00 F2
	pla		; 68
	mvp $6C,$31		; 44 31 6C
	asl $ED0C.w		; 0E 0C ED
	cmp $7894.w,X		; DD 94 78
	ora $4B.b,S		; 03 4B
	bpl -46.b		; 10 D2
	and ($F3.b),Y		; 31 F3
	and ($E1.b,X)		; 21 E1
	sei		; 78
	asl $DE00.w		; 0E 00 DE
	sbc $52F3.w		; ED F3 52
	dec $78FF.w,X		; DE FF 78
	rti		; 40

	and $D0124F.l,X		; 3F 4F 12 D0
	bit $0C0D.w		; 2C 0D 0C
	sei		; 78
	cpx #$07.b		; E0 07
	asl $D21F.w		; 0E 1F D2
	bvc  18.b		; 50 12
	sbc ($78.b),Y		; F1 78
	ora $FE1DFF.l,X		; 1F FF 1D FE
	bcs -29.b		; B0 E3
	.db $62, $EE, $78		; 62 EE 78
	cmp ($54.b,X)		; C1 54
	sbc ($2E.b),Y		; F1 2E
	ora ($FF.b),Y		; 11 FF
	ora $BC78FE.l		; 0F FE 78 BC
	ora $0EEE74.l,X		; 1F 74 EE 0E
	and $3E.b,S		; 23 3E
	eor ($78.b,X)		; 41 78
	sbc ($F1.b,X)		; E1 F1
	inc $FA0D.w,X		; FE 0D FA
	cmp $783D65.l,X		; DF 65 3D 78
	sbc $4D15.w		; ED 15 4D
	.db $42, $FD		; 42 FD
	and $780E1D.l		; 2F 1D 0E 78
	xce		; FB
	cmp $F257.w		; CD 57 F2
	asl A		; 0A
	ora ($50.b,S),Y		; 13 50
	and ($88.b),Y		; 31 88
	ora $E0F20F.l		; 0F 0F F2 E0
	ora $34DE.w		; 0D DE 34
	brk $88.b		; 00 88
	brk $C3.b		; 00 C3
	rti		; 40

	sbc ($0E.b,S),Y		; F3 0E
	sbc ($EF.b)		; F2 EF
	rol $D188.w		; 2E 88 D1
	cpy $FF46.w		; CC 46 FF
	and $D56FB3.l,X		; 3F B3 6F D5
	tya		; 98
	asl $00F1.w		; 0E F1 00
	ora ($D0.b,X)		; 01 D0
	inc $0E24.w		; EE 24 0E
	dey		; 88
	adc $61C2.w		; 6D C2 61
	cmp ($1C.b)		; D2 1C
	cmp $00.b,S		; C3 00
	and ($98.b,X)		; 21 98
	bne -35.b		; D0 DD
	.db $62, $F1, $3E		; 62 F1 3E
	cmp ($4F.b),Y		; D1 4F
	brk $A4.b		; 00 A4
	ora $10E0FF.l,X		; 1F FF E0 10
	inc $13BA.w,X		; FE BA 13
	ora ($A8.b)		; 12 A8
	lsr A		; 4A
	and ($FC.b,X)		; 21 FC
	eor $252CD2.l		; 4F D2 2C 25
	sbc $CD00B4.l		; EF B4 00 CD
	ora ($02.b),Y		; 11 02
	and $10FF12.l,X		; 3F 12 FF 10
	ldy $D1.b,X		; B4 D1
	asl $0004.w		; 0E 04 00
	asl $31BC.w,X		; 1E BC 31
	trb $A4.b		; 14 A4
	bit $BE33.w,X		; 3C 33 BE
	eor $FBD4.w		; 4D D4 FB
	eor $E2.b		; 45 E2
	clv		; B8
	tsb $41E2.w		; 0C E2 41
	bpl -34.b		; 10 DE
	and ($C3.b,X)		; 21 C3
	asl $01B4.w,X		; 1E B4 01
	inc $0122.w,X		; FE 22 01
	ora $05CC.w		; 0D CC 05
	and ($A4.b,S),Y		; 33 A4
	ora $DFD3.w,X		; 1D D3 DF
	jsl $06ECD2.l		; 22 D2 EC 06
	and ($B4.b,S),Y		; 33 B4
	ora $C6BD.w		; 0D BD C6
	eor ($10.b,S),Y		; 53 10
	lda ($0F.b),Y		; B1 0F
	ora ($C8.b,S),Y		; 13 C8
	cpx #$00.b		; E0 00
	cop $0F.b		; 02 0F
	ora $5B12E0.l		; 0F E0 12 5B
	ldy $4E.b,X		; B4 4E
	tyx		; BB
	rti		; 40

	and $0C.b,S		; 23 0C
	sbc $C043E2.l,X		; FF E2 43 C0
	and ($0D.b)		; 32 0D
	wai		; CB
	cmp ($34.b,S),Y		; D3 34
	ora $C412D0.l,X		; 1F D0 12 C4
	ora $1300EF.l,X		; 1F EF 00 13
	bpl  -3.b		; 10 FD
	dec $C0F5.w,X		; DE F5 C0
	mvn $CD,$40		; 54 40 CD
	ora ($33.b)		; 12 33
	asl $F2DE.w		; 0E DE F2
	cpy #$44.b		; C0 44
	jsr $BCDB.w		; 20 DB BC
	and $41.b,X		; 35 41
	cpx $B8F2.w		; EC F2 B8
	dec $25DD.w,X		; DE DD 25
	bpl  31.b		; 10 1F
	cmp $2200.w,X		; DD 00 22
	cpy #$D3.b		; C0 D3
	eor ($1D.b,S),Y		; 53 1D
	cmp $ED3134.l		; CF 34 31 ED
	cpx #$C0.b		; E0 C0
	ora ($32.b,S),Y		; 13 32
	ora $35CCED.l,X		; 1F ED CC 35
	and ($DC.b),Y		; 31 DC
	cpy $34.b		; C4 34
	ora $31E2ED.l,X		; 1F ED E2 31
	bpl  -1.b		; 10 FF
	inc $DDC0.w,X		; FE C0 DD
	cpy $53.b		; C4 53
	tsb $44C0.w		; 0C C0 44
	jsr $C0DD.w		; 20 DD C0
	sbc ($23.b),Y		; F1 23
	and ($0F.b,X)		; 21 0F
	inc $34ED.w		; EE ED 34
	jsr $91B4.w		; 20 B4 91
	ror $0D.b,X		; 76 0D
	tyx		; BB
	tsb $51.b		; 04 51
	brk $FE.b		; 00 FE
	cpy #$FE.b		; C0 FE
	inc $52C2.w		; EE C2 52
	ora $44D0.w		; 0D D0 44
	and $23E0C4.l		; 2F C4 E0 23
	ora $FFF000.l		; 0F 00 F0 FF
	asl $C445.w		; 0E 45 C4
	dec $34D0.w,X		; DE D0 34
	ora $03DF.w		; 0D DF 03
	jsr $C0F0.w		; 20 F0 C0
	ora ($0F.b),Y		; 11 0F
	inc $53DE.w		; EE DE 53
	asl $35D0.w,X		; 1E D0 35
	ldy $AA.b,X		; B4 AA
	cmp ($45.b,X)		; C1 45
	asl $1FE1.w,X		; 1E E1 1F
	inc $C0EE.w		; EE EE C0
	pei ($41.b)		; D4 41
	cpx $53F3.w		; EC F3 53
	jsr ($23DF.w,X)		; FC DF 23
	cpy #$10.b		; C0 10
	ora ($10.b),Y		; 11 10
	inc $35ED.w		; EE ED 35
	ora $43C4CE.l,X		; 1F CE C4 43
	jsr ($22D0.w,X)		; FC D0 22
	and $FF1FF0.l		; 2F F0 1F FF
	cpy #$EE.b		; C0 EE
	cmp ($51.b,S),Y		; D3 51
	jsr ($53E2.w,X)		; FC E2 53
	jsr ($C0DF.w,X)		; FC DF C0
	ora ($20.b,S),Y		; 13 20
	ora ($1F.b,X)		; 01 1F
	inc $44ED.w		; EE ED 44
	asl $E2C4.w,X		; 1E C4 E2
	eor $EC.b,S		; 43 EC
	cmp ($22.b),Y		; D1 22
	ora $C00FF1.l,X		; 1F F1 0F C0
	inc $E6EC.w,X		; FE EC E6
	bmi -35.b		; 30 DD
	tsb $51.b		; 04 51
	cpx $E0C0.w		; EC C0 E0
	jsl $0F1110.l		; 22 10 11 0F
	inc $51C2.w		; EE C2 51
	ldy $CA.b,X		; B4 CA
	lsr $7E.b		; 46 7E
	txs		; 9A
	ora $43.b,S		; 03 43
	ora $C001.w		; 0D 01 C0
	ora $52CFFE.l		; 0F FE CF 52
	ora $44D0.w		; 0D D0 44
	asl $DEC0.w,X		; 1E C0 DE
	cop $21.b		; 02 21
	ora ($00.b),Y		; 11 00
	inc $53CF.w,X		; FE CF 53
	iny		; C8
	sbc $D02C42.l,X		; FF 42 2C D0
	and ($2F.b,X)		; 21 2F
	sbc $0FC01F.l,X		; FF 1F C0 0F
	sbc $52C2.w		; ED C2 52
	jsr ($54D1.w,X)		; FC D1 54
	ora $DFC0.w		; 0D C0 DF
	ora ($11.b)		; 12 11
	ora ($0F.b),Y		; 11 0F
	cpx $31E5.w		; EC E5 31
	iny		; C8
	sbc $24.b,S		; E3 24
	cmp $11E3.w		; CD E3 11
	asl $0FF1.w,X		; 1E F1 0F
	cpy #$FE.b		; C0 FE
	jmp.w [$2E44]		; DC 44 2E
	cmp $3F24.w,X		; DD 24 3F
	inc $F1C0.w		; EE C0 F1
	and ($11.b,X)		; 21 11
	brk $ED.b		; 00 ED
	cmp $42.b,S		; C3 42
	sbc $07B4.w,X		; FD B4 07
	adc $42F2AC.l		; 6F AC F2 42
	asl $FE0F.w		; 0E 0F FE
	bcs -87.b		; B0 A9
	adc [$4C.b]		; 67 4C
	plb		; AB
	and [$5F.b],Y		; 37 5F
	cpy $C0E1.w		; CC E1 C0
	and ($10.b,X)		; 21 10
	ora $31E4ED.l		; 0F ED E4 31
	sbc $C0E2.w		; ED E2 C0
	and ($FE.b)		; 32 FE
	sbc $001111.l		; EF 11 11 00
	inc $B4C1.w,X		; FE C1 B4
	adc $F6BB.w		; 6D BB F6
	adc ($BC.b,X)		; 61 BC
	sbc ($32.b),Y		; F1 32
	ora $FE00C0.l,X		; 1F C0 00 FE
	cmp $DE1E43.l,X		; DF 43 1E DE
	and $2F.b,S		; 23 2F
	cpy #$EE.b		; C0 EE
	sbc ($21.b),Y		; F1 21
	bpl  -2.b		; 10 FE
	dec $2E43.w,X		; DE 43 2E
	bcs -70.b		; B0 BA
	rol $5F.b,X		; 36 5F
	jmp.w [$34E1]		; DC E1 34
	jsr $C0DB.w		; 20 DB C0
	cmp $DD1E43.l		; CF 43 1E DD
	and $20.b,S		; 23 20
	inc $C0F0.w,X		; FE F0 C0
	jsl $C3EC10.l		; 22 10 EC C3
	eor $0E.b,S		; 43 0E
	cmp $10C023.l		; CF 23 C0 10
	inc $22F1.w		; EE F1 22
	asl $14CB.w,X		; 1E CB 14
	eor ($B4.b,X)		; 41 B4
	dex		; CA
	rol $4F.b,X		; 36 4F
	cpx $44D0.w		; EC D0 44
	and $E4C4BA.l		; 2F BA C4 E4
	eor ($FD.b,X)		; 41 FD
	bne  50.b		; D0 32
	brk $FE.b		; 00 FE
	sbc ($C4.b),Y		; F1 C4
	and ($1E.b,X)		; 21 1E
	cmp $1034.w,X		; DD 34 10
	sbc $11F3.w		; ED F3 11
	cpy $0F.b		; C4 0F
	sbc $ED2111.l		; EF 11 21 ED
	cmp ($41.b)		; D2 41
	asl $BDB4.w,X		; 1E B4 BD
	eor $11.b,S		; 43 11
	sbc $22E1.w,X		; FD E1 22
	and $B2B0A9.l		; 2F A9 B0 B2
	eor $3D.b		; 45 3D
	lda $FD3202.l,X		; BF 02 32 FD
	cpx #$B4.b		; E0 B4
	jsl $42A6EB.l		; 22 EB A6 42
	asl $31BF.w,X		; 1E BF 31
	ora ($C4.b)		; 12 C4
	sbc $1F01F1.l,X		; FF F1 01 1F
	dec $1032.w,X		; DE 32 10
	sbc $11C4.w,X		; FD C4 11
	ora ($1F.b,X)		; 01 1F
	sbc $EE1110.l,X		; FF 10 11 EE
	cpx $B0.b		; E4 B0
	trb $40.b		; 14 40
	cmp $1F13F0.l		; CF F0 13 1F
	sbc $1CB402.l,X		; FF 02 B4 1C
	ldx #$51.b		; A2 51
	and $0230CD.l,X		; 3F CD 30 02
	ora $01E0B4.l,X		; 1F B4 E0 01
	and $3152DA.l		; 2F DA 52 31
	jsr ($B401.w,X)		; FC 01 B4
	sbc ($2F.b),Y		; F1 2F
	brk $0F.b		; 00 0F
	ora ($EC.b),Y		; 11 EC
	inc $03.b		; E6 03
	ldy $2A.b		; A4 2A
	ldy $FE.b		; A4 FE
	eor $D0.b,S		; 43 D0
	ora $B4EB02.l,X		; 1F 02 EB B4
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	jsr $3DDE.w		; 20 DE 3D
	cop $00.b		; 02 00
	bpl -76.b		; 10 B4
	sbc ($0E.b),Y		; F1 0E
	jmp.w [$3260]		; DC 60 32
	sbc $D101.w,X		; FD 01 D1
	ldy $2F.b,X		; B4 2F
	cop $00.b		; 02 00
	ora $03D6ED.l		; 0F ED D6 03
	and $BCB3A4.l		; 2F A4 B3 BC
	jsl $104FF3.l		; 22 F3 4F 10
	tyx		; BB
	lda $3241B4.l		; AF B4 41 32
	inc $E11D.w,X		; FE 1D E1
	brk $22.b		; 00 22
	bpl -76.b		; 10 B4
	sbc $03ED.w,X		; FD ED 03
	jsl $DEF03F.l		; 22 3F F0 DE
	brk $A4.b		; 00 A4
	and $44.b,S		; 23 44
	asl $A39A.w		; 0E 9A A3
	mvp $FF,$55		; 44 55 FF
	ldy $09.b		; A4 09
	cmp $5025E3.l,X		; DF E3 25 50
	cmp $51AC.w,Y		; D9 AC 51
	ldy $45.b		; A4 45
	and ($1E.b,X)		; 21 1E
	lda $23EE.w,X		; BD EE 23
	mvn $A8,$EB		; 54 EB A8
	cop $5E.b		; 02 5E
	rol $1C02.w		; 2E 02 1C
	asl $13F2.w		; 0E F2 13
	ldy #$0924.w		; A0 24 09
	bcs -13.b		; B0 F3
	rol $02D2.w,X		; 3E D2 02
	.db $42, $A4		; 42 A4
	inc $1010.w,X		; FE 10 10
	lda #$3472.w		; A9 72 34
	tsb $B8F3.w		; 0C F3 B8
	cmp ($1F.b),Y		; D1 1F
	ora ($1F.b,X)		; 01 1F
	asl $4ED3.w		; 0E D3 4E
	bpl -76.b		; 10 B4
	sbc $FFF12F.l,X		; FF 2F F1 FF
	sbc ($11.b)		; F2 11
	tsb $A0C4.w		; 0C C4 A0
	cmp ($44.b,X)		; C1 44
	and ($40.b,X)		; 21 40
	sbc ($FD.b),Y		; F1 FD
.ACCU 8
.INDEX 8
	sep #$34		; E2 34
	ldy $FB.b,X		; B4 FB
	sbc ($02.b,S),Y		; F3 02
	bpl -15.b		; 10 F1
	asl $FFF1.w,X		; 1E F1 FF
	ldy $21.b,X		; B4 21
	ora $2131DC.l,X		; 1F DC 31 21
	ora $B8FF02.l		; 0F 02 FF B8
	ora $EF4E1F.l,X		; 1F 1F 4E EF
	cpx $2F.b		; E4 2F
	brk $E0.b		; 00 E0
	ldy $10.b,X		; B4 10
	beq -16.b		; F0 F0
	sbc ($21.b),Y		; F1 21
	sbc $13C2.w,X		; FD C2 13
	tay		; A8
	bcs -32.b		; B0 E0
	tad		; 5B
	sbc ($00.b)		; F2 00
	sbc [$EE.b]		; E7 EE
	lda $E6A4.w,X		; BD A4 E6
	and $2F.b,S		; 23 2F
	cmp ($1F.b)		; D2 1F
	cpx #$1D.b		; E0 1D
	bit $B4.b		; 24 B4
	asl $41CD.w,X		; 1E CD 41
	and ($0F.b,X)		; 21 0F
	sbc ($0F.b),Y		; F1 0F
	sbc ($B4.b),Y		; F1 B4
	ora $C1FC22.l		; 0F 22 FC C1
	and ($11.b)		; 32 11
	asl $B410.w		; 0E 10 B4
	sbc $21F101.l,X		; FF 01 F1 21
	stp		; DB
	sbc $11.b		; E5 11
	ora ($B4.b),Y		; 11 B4
	sbc $10EF10.l,X		; FF 10 EF 10
	cop $1F.b		; 02 1F
	lda $A052.w		; AD 52 A0
	eor $43.b,S		; 43 43
	and ($10.b,X)		; 21 10
	cmp $34F1.w,X		; DD F1 34
	dec A		; 3A
	ldy $C2.b,X		; B4 C2
	eor $F0.b,S		; 43 F0
	brk $0F.b		; 00 0F
	beq   0.b		; F0 00
	cop $B4.b		; 02 B4
	ora $3F34CB.l,X		; 1F CB 34 3F
	beq  16.b		; F0 10
	sbc $00B400.l,X		; FF 00 B4 00
	ora ($0B.b)		; 12 0B
	lda ($54.b),Y		; B1 54
	asl $1FF2.w		; 0E F2 1F
	clv		; B8
	sbc ($2F.b),Y		; F1 2F
	brk $2F.b		; 00 2F
	ldx $1B64.w,Y		; BE 64 1B
	cmp ($B8.b),Y		; D1 B8
	and ($CE.b)		; 32 CE
	and ($2D.b,X)		; 21 2D
	ora ($0D.b),Y		; 11 0D
	ldx $43.b,Y		; B6 43
	clv		; B8
	ldy $4B03.w,X		; BC 03 4B
	sbc $11DF33.l,X		; FF 33 DF 11
	xba		; EB
	clv		; B8
	and $5B.b,X		; 35 5B
	cmp $ED53.w		; CD 53 ED
	sbc $4E.b,S		; E3 4E
	sbc $B110B8.l,X		; FF B8 10 B1
	mvn $E1,$09		; 54 09 E1
	ror $24CE.w,X		; 7E CE 24
	ldy $21.b,X		; B4 21
	beq  12.b		; F0 0C
	cmp ($56.b,X)		; C1 56
	sbc $30D3.w,X		; FD D3 30
	clv		; B8
	cmp ($42.b,X)		; C1 42
	sbc $44DFF1.l		; EF F1 DF 44
	trb $B8B0.w		; 1C B0 B8
	adc ($EC.b,X)		; 61 EC
	ora $3F.b,S		; 03 3F
	bne  14.b		; D0 0E
	ora $41.b,S		; 03 41
	ldy $1D.b,X		; B4 1D
	cmp ($31.b,X)		; C1 31
	cmp $2004.w,X		; DD 04 20
	sbc $43B8DC.l		; EF DC B8 43
	lsr A		; 4A
	cmp $E4ED43.l		; CF 43 ED E4
	bmi -33.b		; 30 DF
	clv		; B8
	asl $33E5.w		; 0E E5 33
	stp		; DB
	pei ($4F.b)		; D4 4F
	dec $B834.w		; CE 34 B8
	asl $EEE0.w		; 0E E0 EE
	and $5B.b,X		; 35 5B
	ldx $ED16.w,Y		; BE 16 ED
	cpy $E0.b		; C4 E0
	jsl $DEFE00.l		; 22 00 FE DE
	bit $4F.b,X		; 34 4F
	inc $2FC8.w		; EE C8 2F
	brk $22.b		; 00 22
	sbc $F4F0F0.l		; EF F0 F0 F4
	bmi -76.b		; 30 B4
	phk		; 4B
	dex		; CA
	inc $5313.w,X		; FE 13 53
	rol $BFDB.w		; 2E DB BF
	cpy $01.b		; C4 01
	eor $3D.b,S		; 43 3D
	cpy $2201.w		; CC 01 22
	jsl $CEC40D.l		; 22 0D C4 CE
	cop $00.b		; 02 00
	eor $2B.b,S		; 43 2B
	cpy $3231.w		; CC 31 32
	iny		; C8
	ora $1114DE.l		; 0F DE 14 11
	cpy #$5F.b		; C0 5F
	phx		; DA
	eor ($C4.b,X)		; 41 C4
	eor ($30.b,X)		; 41 30
	rol $02DC.w		; 2E DC 02
	and ($C2.b),Y		; 31 C2
	and $C0.b,S		; 23 C0
	rol $01CD.w		; 2E CD 01
	and ($40.b,S),Y		; 33 40
	cpx $20E0.w		; EC E0 20
	cpy $D3.b		; C4 D3
	jsl $11F2CE.l		; 22 CE F2 11
	bpl  14.b		; 10 0E
	cpx #$C4.b		; E0 C4
	and ($1D.b,X)		; 21 1D
	sbc $22.b,S		; E3 22
	cmp $1011E2.l		; CF E2 11 10
	cpy $0E.b		; C4 0E
	sbc $E30E21.l,X		; FF 21 0E E3
	and ($CF.b),Y		; 31 CF
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	jsl $E0EC21.l		; 22 21 EC E0
	eor ($1B.b,X)		; 41 1B
	lda [$52.b],Y		; B7 52
	bcs  14.b		; B0 0E
	lda $2F44F2.l,X		; BF F2 44 2F
	cmp $2D02.w,X		; DD 02 2D
	cpy $E3.b		; C4 E3
	and ($DE.b),Y		; 31 DE
	sbc ($11.b),Y		; F1 11
	bpl  14.b		; 10 0E
	beq -76.b		; F0 B4
	and ($0B.b)		; 32 0B
	ldx $63.b,Y		; B6 63
	lda $22D2.w		; AD D2 22
	and $0FFCB4.l,X		; 3F B4 FC 0F
	and ($1B.b)		; 32 1B
	lda $72.b		; A5 72
	cpy $C4FF.w		; CC FF C4
	and ($1F.b,X)		; 21 1F
	asl $1100.w		; 0E 00 11
	asl $41D2.w		; 0E D2 41
	bcs  78.b		; B0 4E
	xba		; EB
	sbc ($43.b),Y		; F1 43
	bmi  -3.b		; 30 FD
	sbc ($2F.b),Y		; F1 2F
	cpy #$CE.b		; C0 CE
	and $2F.b,S		; 23 2F
	sbc $3101.w,X		; FD 01 31
	bpl  -1.b		; 10 FF
	bcs   2.b		; B0 02
	and $50369A.l,X		; 3F 9A 36 50
	plx		; FA
	cpx #$43.b		; E0 43
	bcs  49.b		; B0 31
	sbc $2FF2.w,X		; FD F2 2F
	tax		; AA
	rol $50.b,X		; 36 50
	sbc $E0B0.w,Y		; F9 B0 E0
	eor ($31.b,S),Y		; 53 31
	sbc $20F2.w,X		; FD F2 20
	tsx		; BA
	and $B4.b,X		; 35 B4
	tas		; 1B
	plx		; FA
	.db $42, $4F		; 42 4F
	ora $0E13EE.l		; 0F EE 13 0E
	bcs -71.b		; B0 B9
	and $60.b,X		; 35 60
	sbc $43E0.w,Y		; F9 E0 43
	and ($FD.b)		; 32 FD
	cpy #$F0.b		; C0 F0
	bpl -20.b		; 10 EC
	ora ($30.b)		; 12 30
	ora $21F0.w		; 0D F0 21
	cpy #$21.b		; C0 21
	ora $EC00F0.l		; 0F F0 00 EC
	ora ($31.b)		; 12 31
	ora $F0C0.w		; 0D C0 F0
	and ($21.b,X)		; 21 21
	ora $FC00F0.l		; 0F F0 00 FC
	ora ($B0.b)		; 12 B0
	adc ($1A.b,X)		; 61 1A
	cmp $0E3332.l,X		; DF 32 33 0E
	beq   1.b		; F0 01
	cpy #$FC.b		; C0 FC
	cop $31.b		; 02 31
	asl $11E0.w,X		; 1E E0 11
	ora ($0F.b)		; 12 0F
	ldy $10.b,X		; B4 10
	cop $EA.b		; 02 EA
	eor $1E.b,X		; 55 1E
	tsb $11D4.w		; 0C D4 11
	bcs  36.b		; B0 24
	jsr $E00F.w		; 20 0F E0
	phd		; 0B
	cpy $34.b		; C4 34
	bmi -80.b		; 30 B0
	lda $2114F0.l		; AF F0 14 21
	ora $A40DEF.l,X		; 1F EF 0D A4
	bcs  36.b		; B0 24
	and ($BE.b)		; 32 BE
	sbc $203204.l,X		; FF 04 32 20
	inc $0EB0.w		; EE B0 0E
	lda ($24.b,X)		; A1 24
	mvp $0E,$DC		; 44 DC 0E
	sbc ($42.b)		; F2 42
	bcs  49.b		; B0 31
	inc $CCFE.w		; EE FE CC
	and ($54.b),Y		; 31 54
	tas		; 1B
	ora $E0B0.w		; 0D B0 E0
	and ($33.b)		; 32 33
	asl $DAFE.w		; 0E FE DA
	ora ($44.b),Y		; 11 44
	bcs  78.b		; B0 4E
	sbc $3412DE.l		; EF DE 12 34
	and $B0DDFF.l		; 2F FF DD B0
	ldx #$05.b		; A2 05
	mvp $DD,$D0		; 44 D0 DD
	sbc ($13.b,X)		; E1 13
	.db $42, $B0		; 42 B0
	ora $10CBED.l		; 0F ED CB 10
	mvp $1D,$3F		; 44 3F 1D
	dec $20B4.w,X		; DE B4 20
	and ($FF.b),Y		; 31 FF
	inc $D60F.w		; EE 0F D6
	pea $B411.w		; F4 11 B4
	lda ($CF.b)		; B2 CF
	ora ($03.b),Y		; 11 03
	jsr $DFFF.w		; 20 FF DF
	sbc $41B4.w,X		; FD B4 41
	and ($2C.b)		; 32 2C
	asl $10EF.w		; 0E EF 10
	and $10.b,S		; 23 10
	ldy $FE.b,X		; B4 FE
	sbc $435FDF.l		; EF DF 5F 43
	inc $F02B.w,X		; FE 2B F0
	tay		; A8
	beq 109.b		; F0 6D
	bpl -66.b		; 10 BE
	asl $1D16.w,X		; 1E 16 1D
	lsr $C2A8.w,X		; 5E A8 C2
	plx		; FA
	eor $4D00F4.l,X		; 5F F4 00 4D
	dec $A4FF.w,X		; DE FF A4
	ora ($02.b)		; 12 02
	and $FCEF32.l,X		; 3F 32 EF FC
	brk $03.b		; 00 03
	ldy $30.b		; A4 30
	sbc $11B2.w,X		; FD B2 11
	ora ($E3.b),Y		; 11 E3
	ora $D0A41F.l,X		; 1F 1F A4 D0
	beq  35.b		; F0 23
	brk $DA.b		; 00 DA
	jsl $A81E03.l		; 22 03 1E A8
	rti		; 40

	cmp $EF.b,S		; C3 EF
	jsr $0EF4.w		; 20 F4 0E
	ora $A4D2.w		; 0D D2 A4
	tad		; 5B
	adc ($00.b,X)		; 61 00
	jmp ($DE1F.w)		; 6C 1F DE
	ora $A424.w,X		; 1D 24 A4
	and ($0C.b,X)		; 21 0C
	lda ($F0.b),Y		; B1 F0
	and ($F5.b),Y		; 31 F5
	ora $C0A41E.l,X		; 1F 1E A4 C0
	sbc $EB2133.l		; EF 33 21 EB
	sbc $C4.b,S		; E3 C4
	brk $A0.b		; 00 A0
	sbc $25.b,X		; F5 25
	and ($EE.b),Y		; 31 EE
	lda $4402.w,X		; BD 02 44
	tsb $F2A4.w		; 0C A4 F2
	cpx $F0.b		; E4 F0
	and $F2.b,S		; 23 F2
	sbc $F2FE.w		; ED FE F2
	ldy $23.b		; A4 23
	jsr $E2CC.w		; 20 CC E2
	cpx $00.b		; E4 00
	and ($E2.b,S),Y		; 33 E2
	ldy $DE.b		; A4 DE
	sbc $1023F2.l		; EF F2 23 10
	jmp.w [$D4D3]		; DC D3 D4
	ldy $01.b		; A4 01
	ora $D2.b,X		; 15 D2
	inc $E1E0.w		; EE E0 E1
	and $11.b,S		; 23 11
	ldy $ED.b		; A4 ED
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	ora ($F4.b),Y		; 11 F4
	bpl  14.b		; 10 0E
	sbc $24EE94.l		; EF 94 EE 24
	eor $2B.b,S		; 43 2B
	tsx		; BA
	cop $D5.b		; 02 D5
	bpl -108.b		; 10 94
	lsr $E2.b,X		; 56 E2
	stp		; DB
	cmp $4236D1.l		; CF D1 36 42
	xba		; EB
	ldy $DD.b		; A4 DD
	and $2130.w		; 2D 30 21
	eor $FEED1E.l,X		; 5F 1E ED FE
	ldy $02.b		; A4 02
	bit $2F.b,X		; 34 2F
	sbc $3CCD.w		; ED CD 3C
	eor ($22.b),Y		; 51 22
	ldy $6D.b		; A4 6D
	ora $0ECD.w		; 0D CD 0E
	bit $42.b		; 24 42
	rol $A4DD.w		; 2E DD A4
	dex		; CA
	lsr $2146.w		; 4E 46 21
	eor $DCDE.w		; 4D DE DC
	brk $B4.b		; 00 B4
	ora ($20.b,S),Y		; 13 20
	ora $20ECEF.l,X		; 1F EF EC 20
	and $2F.b,S		; 23 2F
	ldy $5C.b		; A4 5C
	dec $21EB.w		; CE EB 21
	bit $51.b,X		; 34 51
	inc $B4BD.w,X		; FE BD B4
	cpx $3340.w		; EC 40 33
	rol $EF2D.w		; 2E 2D EF
	inc $B421.w,X		; FE 21 B4
	jsl $EEFF2F.l		; 22 2F FF EE
	sbc $2432.w,X		; FD 32 24
	asl $3FA8.w		; 0E A8 3F
	cmp $2D.b		; C5 2D
	adc $03FCF0.l		; 6F F0 FC 03
	cmp ($B0.b),Y		; D1 B0
	dex		; CA
	brk $44.b		; 00 44
	rti		; 40

	asl $0EED.w,X		; 1E ED 0E
	ora ($A4.b),Y		; 11 A4
	and $003C.w,X		; 3D 3C 00
	xce		; FB
	lda $52.b		; A5 52
	eor ($AF.b),Y		; 51 AF
	ldy $1D.b		; A4 1D
	cpx $E1.b		; E4 E1
	ora ($F0.b,S),Y		; 13 F0
	asl $FC00.w,X		; 1E 00 FC
	clv		; B8
	cop $4B.b		; 02 4B
	rol $3EFF.w,X		; 3E FF 3E
	ora ($00.b,X)		; 01 00
	ora ($B0.b,X)		; 01 B0
	ora ($11.b),Y		; 11 11
	bpl  14.b		; 10 0E
	tsx		; BA
	ora ($33.b),Y		; 11 33
	and $F01F94.l		; 2F 94 1F F0
	.db $42, $01		; 42 01
	asl $40FF.w,X		; 1E FF 40
	jsr ($DAA4.w,X)		; FC A4 DA
	lsr $12.b,X		; 56 12
	sbc $001FD1.l		; EF D1 1F 00
	ora $0010B8.l		; 0F B8 10 00
	brk $FF.b		; 00 FF
	ora $0F3CF4.l,X		; 1F F4 3C 0F
	bcc  92.b		; 90 5C
	jmp.w [$E1DE]		; DC DE E1
	cop $34.b		; 02 34
	mvp $B4,$63		; 44 63 B4
	inc $63ED.w,X		; FE ED 63
	and $100FFD.l		; 2F FD 0F 10
	bpl -76.b		; 10 B4
	ora $20001F.l,X		; 1F 1F 00 20
	asl $35CD.w		; 0E CD 35
	bmi -96.b		; 30 A0
	eor ($CC.b,X)		; 41 CC
	cmp $0F2012.l,X		; DF 12 20 0F
	beq  36.b		; F0 24
	ldy $0F.b,X		; B4 0F
	inc $52D2.w		; EE D2 52
	ora $000E.w,X		; 1D 0E 00
	bpl -72.b		; 10 B8
	brk $F2.b		; 00 F2
	beq  16.b		; F0 10
	asl $0F0F.w		; 0E 0F 0F
	mvn $31,$B4		; 54 B4 31
	cmp $1002D0.l		; CF D0 02 10
	ora $B4011F.l		; 0F 1F 01 B4
	ora ($0E.b),Y		; 11 0E
	cmp $63C7.w,X		; DD C7 63
	jsr ($10DE.w,X)		; FC DE 10
	tay		; A8
	lsr $02ED.w,X		; 5E ED 02
	sbc $13.b,S		; E3 13
	xba		; EB
	dec $C422.w,X		; DE 22 C4
	.db $42, $2E		; 42 2E
	inc $0201.w		; EE 01 02
	bpl -17.b		; 10 EF
	brk $C8.b		; 00 C8
	bpl  15.b		; 10 0F
	sbc $EF0402.l,X		; FF 02 04 EF
	cmp $00B813.l,X		; DF 13 B8 00
	asl $13ED.w,X		; 1E ED 13
	and ($E1.b,X)		; 21 E1
	inc $C8E0.w		; EE E0 C8
	jsr $FD4E.w		; 20 4E FD
	sbc ($30.b),Y		; F1 30
	ora ($E0.b,X)		; 01 E0
	sbc ($C8.b,X)		; E1 C8
	cop $1F.b		; 02 1F
	ora $1302E0.l		; 0F E0 02 13
	sbc $C2B4C0.l		; EF C0 B4 C2
	eor $3F.b,S		; 43 3F
	tsb $24DF.w		; 0C DF 24
	jsl $F0C8FD.l		; 22 FD C8 F0
	jsl $02DD3E.l		; 22 3E DD 02
	bmi  15.b		; 30 0F
	ora $24B3B8.l		; 0F B8 B3 24
	asl $EF0C.w,X		; 1E 0C EF
	ora ($55.b,S),Y		; 13 55
	ldy $0DC0.w,X		; BC C0 0D
	dec $3202.w		; CE 02 32
	ora $33F2DD.l,X		; 1F DD F2 33
	iny		; C8
	sbc $2E22F1.l,X		; FF F1 22 2E
	cmp $3F12.w,X		; DD 12 3F
	brk $C8.b		; 00 C8
	inc $12F2.w,X		; FE F2 12
	ora $20E0FF.l		; 0F FF E0 20
	bvc -72.b		; 50 B8
	tsx		; BA
	lda $47.b,S		; A3 47
	cmp ($C0.b)		; D2 C0
	cmp $C84032.l		; CF 32 40 C8
	sbc $15F2E0.l,X		; FF E0 F2 15
	inc $04B1.w		; EE B1 04
	ora $FD1DB8.l,X		; 1F B8 1D FD
	sbc ($52.b,S),Y		; F3 52
	cmp $35E0DF.l,X		; DF DF E0 35
	iny		; C8
	and $3012CC.l,X		; 3F CC 12 30
	ora $12F10E.l		; 0F 0E F1 12
	iny		; C8
	asl $0F0E.w,X		; 1E 0E 0F
	ora ($23.b),Y		; 11 23
	cmp $B824B1.l,X		; DF B1 24 B8
	cpx #$EDD0.w		; E0 D0 ED
	and $32.b,S		; 23 32
	cmp $02EF.w,X		; DD EF 02
	iny		; C8
	ora $FF.b		; 05 FF
	dec $2013.w		; CE 13 20
	sbc $C4F1F0.l,X		; FF F0 F1 C4
	ora $21.b,S		; 03 21
	inc $F1EE.w,X		; FE EE F1
	eor ($1C.b,S),Y		; 53 1C
	dec $46B4.w		; CE B4 46
	and ($FE.b),Y		; 31 FE
	jmp.w [$63F4]		; DC F4 63
	tsb $C8BC.w		; 0C BC C8
	bpl  95.b		; 10 5F
	jsr ($33D2.w,X)		; FC D2 33
	sbc $C80FE0.l,X		; FF E0 0F C8
	ora ($21.b),Y		; 11 21
	cmp $3201E1.l,X		; DF E1 01 32
	jsr ($B4D0.w,X)		; FC D0 B4
	dec $54.b,X		; D6 54
	sbc $46C0ED.l,X		; FF ED C0 46
	and $EFC4CB.l,X		; 3F CB C4 EF
	tsb $42.b		; 04 42
	jmp.w [$42C1]		; DC C1 42
	ora $01C80E.l,X		; 1F 0E C8 01
	and ($1D.b,X)		; 21 1D
	inc $0411.w,X		; FE 11 04
	brk $CD.b		; 00 CD
	cpy $CF.b		; C4 CF
	and ($2F.b,S),Y		; 33 2F
	sbc $3202EF.l,X		; FF EF 02 32
	inc $DEC4.w,X		; FE C4 DE
	ora ($43.b,X)		; 01 43
	ora $14CD.w,X		; 1D CD 14
	and ($FF.b,X)		; 21 FF
	cpy $EF.b		; C4 EF
	sbc ($32.b),Y		; F1 32
	asl $F0DE.w,X		; 1E DE F0
	bit $2F.b,X		; 34 2F
	clv		; B8
	sta ($67.b)		; 92 67
	inc $E0B1.w,X		; FE B1 E0
	tsb $31.b		; 04 31
	nop		; EA
	cpy $ED.b		; C4 ED
	sbc $CD3024.l,X		; FF 24 30 CD
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	ora $020FB8.l		; 0F B8 0F 02
	.db $42, $FB		; 42 FB
	sbc $3631.w		; ED 31 36
	sbc $DCC4.w,X		; FD C4 DC
	cmp ($33.b),Y		; D1 33
	ora $12FF0E.l		; 0F 0E FF 12
	bmi -60.b		; 30 C4
	sbc $03EF.w,X		; FD EF 03
	and ($EC.b,S),Y		; 33 EC
	bne  35.b		; D0 23
	rol $3FB8.w		; 2E B8 3F
	brk $32.b		; 00 32
	and $03CD.w		; 2D CD 03
	rol $F0.b		; 26 F0
	cpy $FC.b		; C4 FC
	cmp $FF2F32.l,X		; DF 32 2F FF
	sbc $C42202.l,X		; FF 02 22 C4
	inc $02DF.w,X		; FE DF 02
	and ($1C.b)		; 32 1C
	dec $2F23.w,X		; DE 23 2F
	clv		; B8
	ora $200301.l,X		; 1F 01 03 20
	cpy $26E3.w		; CC E3 26
	ora $DF0CC4.l,X		; 1F C4 0C DF
	jsl $FFFF20.l		; 22 20 FF FF
	ora ($22.b,X)		; 01 22
	cpy $0E.b		; C4 0E
	dec $33F3.w,X		; DE F3 33
	ora $32CE.w		; 0D CE 32
	jsr $E0B8.w		; 20 B8 E0
	ora $BC2113.l,X		; 1F 13 21 BC
	sbc $25.b,S		; E3 25
	rol $0DC4.w,X		; 3E C4 0D
	cmp $FF2022.l		; CF 22 20 FF
	sbc $B42201.l,X		; FF 01 22 B4
	tsb $E5AD.w		; 0C AD E5
	ror $F9.b,X		; 76 F9
	stz $4E54.w,X		; 9E 54 4E
	iny		; C8
	brk $1F.b		; 00 1F
	ora ($10.b),Y		; 11 10
	cmp $0F2300.l,X		; DF 00 23 0F
	ldy $CA.b,X		; B4 CA
	sta ($54.b)		; 92 54
	ora $03EEEF.l,X		; 1F EF EE 03
	eor ($B4.b)		; 52 B4
	xba		; EB
	ldx $6326.w,Y		; BE 26 63
	tax		; AA
	lda ($45.b,S),Y		; B3 45
	asl $EFB4.w		; 0E B4 EF
	sbc $EB4113.l		; EF 13 41 EB
	ldx $6F56.w,Y		; BE 56 6F
	clv		; B8
	bcs  70.b		; B0 46
	ora $E102CF.l		; 0F CF 02 E1
	and ($FD.b)		; 32 FD
	cpy $ED.b		; C4 ED
	sbc ($33.b,X)		; E1 33
	and $22DD.w		; 2D DD 22
	jsr $B40F.w		; 20 0F B4
	inc $34F1.w		; EE F1 34
	asl $E5AC.w,X		; 1E AC E5
	ror $DA.b,X		; 76 DA
	iny		; C8
	pea $FE20.w		; F4 20 FE
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	sbc $BDB4.w,X		; FD B4 BD
	and [$62.b]		; 27 62
	tax		; AA
	ldy $45.b,X		; B4 45
	sbc $EFB4EF.l,X		; FF EF B4 EF
	trb $31.b		; 14 31
	wai		; CB
	cmp $AA5B76.l		; CF 76 5B AA
	ldy $24.b,X		; B4 24
	bvc  -2.b		; 50 FE
	sbc $2E34E0.l,X		; FF E0 34 2E
	tsx		; BA
	cpy $F3.b		; C4 F3
	.db $42, $FD		; 42 FD
	cmp ($22.b,X)		; C1 22
	ora $B4FFF0.l,X		; 1F F0 FF B4
	cop $43.b		; 02 43
	xce		; FB
	lda $6046.w,X		; BD 46 60
	lda #$F4.b		; A9 F4
	ldy $42.b,X		; B4 42
	sbc $14EFFF.l,X		; FF FF EF 14
	bmi -53.b		; 30 CB
	cmp $B8.b,S		; C3 B8
	bmi -70.b		; 30 BA
	pea $0C6F.w		; F4 6F 0C
	brk $2D.b		; 00 2D
	ora ($B4.b)		; 12 B4
	bit $0C.b,X		; 34 0C
	ldy $6127.w,X		; BC 27 61
	tax		; AA
	pei ($43.b)		; D4 43
	ldy $EF.b,X		; B4 EF
	beq  -1.b		; F0 FF
	ora $30.b,S		; 03 30
	phx		; DA
	cpy $76.b		; C4 76
	ldy $FA.b,X		; B4 FA
	bcc  69.b		; 90 45
	ora $0FF0.w,X		; 1D F0 0F
	sbc ($33.b),Y		; F1 33
	ldy $FC.b,X		; B4 FC
	lda $6D66.w		; AD 66 6D
	txs		; 9A
	bit $5F.b		; 24 5F
	sbc $F000C4.l		; EF C4 00 F0
	cop $10.b		; 02 10
	dec $41F3.w,X		; DE F3 41
	sbc $B4B4.w		; ED B4 B4
	eor $EE.b,S		; 43 EE
	sbc ($0E.b),Y		; F1 0E
	cop $32.b		; 02 32
	stp		; DB
	iny		; C8
	ora $30.b,S		; 03 30
	cmp $3F03.w		; CD 03 3F
	ora $1F01.w		; 0D 01 1F
	ldy $F0.b,X		; B4 F0
	and ($0D.b,S),Y		; 33 0D
	ldy $6E46.w,X		; BC 46 6E
	tax		; AA
	trb $B4.b		; 14 B4
	rti		; 40

	sbc $13FF00.l		; EF 00 FF 13
	rol $05CC.w		; 2E CC 05
	ldy $63.b,X		; B4 63
	tyx		; BB
	ldy $43.b,X		; B4 43
	sbc $0FF1.w,X		; FD F1 0F
	ora ($B4.b,X)		; 01 B4
	and ($DC.b),Y		; 31 DC
	cmp $56.b,S		; C3 56
	asl A		; 0A
	lda $B41D54.l		; AF 54 1D B4
	sbc $23F11F.l,X		; FF 1F F1 23
	sbc $56BE.w,X		; FD BE 56
	jmp $BAB4.w		; 4C B4 BA
	bit $5E.b,X		; 34 5E
	cmp $23FF10.l,X		; DF 10 FF 23
	ora $BCB4.w,X		; 1D B4 BC
	lsr $6E.b		; 46 6E
	tax		; AA
	ora $50.b		; 05 50
	dec $B401.w,X		; DE 01 B4
	sbc $BB2F13.l,X		; FF 13 2F BB
	ora $72.b,X		; 15 72
	tax		; AA
	cmp $B8.b,X		; D5 B8
	inc $21C0.w,X		; FE C0 21
	sbc $DE0C13.l,X		; FF 13 0C DE
	adc $C8.b,X		; 75 C8
	ora $24B1.w,X		; 1D B1 24
	asl $30D0.w		; 0E D0 30
	sbc $FFC812.l,X		; FF 12 C8 FF
	sbc $D01C42.l		; EF 42 1C D0
	bit $0E.b		; 24 0E
	cmp ($C8.b),Y		; D1 C8
	ora ($F0.b),Y		; 11 F0
	ora ($1E.b,X)		; 01 1E
	sbc $D01C42.l		; EF 42 1C D0
	ldy $E6.b,X		; B4 E6
	.db $62, $BD, $02		; 62 BD 02
	asl $3F02.w,X		; 1E 02 3F
	cmp #$C8.b		; C9 C8
	eor $0D.b,S		; 43 0D
	cmp $D1FE44.l		; CF 44 FE D1
	jsr $C80F.w		; 20 0F C8
	ora ($1E.b,X)		; 01 1E
	inc $0C43.w,X		; FE 43 0C
	bne  52.b		; D0 34
	inc $EEC4.w,X		; FE C4 EE
	ora ($00.b,X)		; 01 00
	brk $2F.b		; 00 2F
	sbc $4013.w		; ED 13 40
	iny		; C8
	cpy #$51.b		; C0 51
	asl $11C2.w,X		; 1E C2 11
	beq   1.b		; F0 01
	asl $DEC4.w		; 0E C4 DE
	bit $3F.b		; 24 3F
	ldy $3023.w,X		; BC 23 30
	cmp $00C401.l,X		; DF 01 C4 00
	ora ($1F.b,X)		; 01 1F
	dec $3E24.w,X		; DE 24 3E
	cmp $B023.w		; CD 23 B0
	stz $FD.b,X		; 74 FD
	sbc ($1F.b),Y		; F1 1F
	sbc ($20.b)		; F2 20
	lda $C4F6.w,Y		; B9 F6 C4
	and $24CE.w		; 2D CE 24
	rol $11EF.w		; 2E EF 11
	ora $FEC811.l		; 0F 11 C8 FE
	pea $CC21.w		; F4 21 CC
	tsb $31.b		; 04 31
	dec $C402.w		; CE 02 C4
	ora ($F0.b),Y		; 11 F0
	ora ($FD.b),Y		; 11 FD
.INDEX 8
	sep #$52		; E2 52
	cpx $C8D2.w		; EC D2 C8
	bpl -50.b		; 10 CE
	jsl $1F000F.l		; 22 0F 00 1F
	cpx #$32.b		; E0 32
	cpy $4F.b		; C4 4F
	cpy $4F04.w		; CC 04 4F
	inc $1001.w		; EE 01 10
	sbc ($C8.b),Y		; F1 C8
	sbc $DD32F1.l,X		; FF F1 32 DD
	pei ($32.b)		; D4 32
	cmp $C001.w,X		; DD 01 C0
	sbc ($10.b),Y		; F1 10
	ora ($0E.b,X)		; 01 0E
	cmp $CE2D34.l,X		; DF 34 2D CE
	clv		; B8
	jmp $43AD.w		; 4C AD 43
	ora $C41FE0.l,X		; 1F E0 1F C4
	and $B8.b,X		; 35 B8
	tyx		; BB
	lda $74.b		; A5 74
	wai		; CB
	cmp $41.b,S		; C3 41
	sbc $0DB8F0.l,X		; FF F0 B8 0D
	bit $3C.b,X		; 34 3C
	ldy $3D56.w		; AC 56 3D
	lda $B824.w,X		; BD 24 B8
	ora $031DFF.l,X		; 1F FF 1D 03
	eor ($BB.b,X)		; 41 BB
	pea $B862.w		; F4 62 B8
	ldy $31E3.w,X		; BC E3 31
	sbc $24D3F0.l,X		; FF F0 D3 24
	xba		; EB
	clv		; B8
	cmp ($55.b,X)		; C1 55
	asl A		; 0A
	bne  51.b		; D0 33
	beq -32.b		; F0 E0
	sbc $2D32B8.l,X		; FF B8 32 2D
	cpy $4C54.w		; CC 54 4C
	lda $B82F13.l,X		; BF 13 2F B8
	sbc $3E22FF.l,X		; FF FF 22 3E
	stp		; DB
	ora $5F.b,X		; 15 5F
	cpy $F4B8.w		; CC B8 F4
	and ($FE.b,X)		; 21 FE
	sbc $CD2013.l,X		; FF 13 20 CD
	sbc $B8.b		; E5 B8
	.db $42, $CD		; 42 CD
	cmp ($32.b)		; D2 32
	ora $F4F0.w		; 0D F0 F4
	ora ($B8.b),Y		; 11 B8
	jmp.w [$51F3]		; DC F3 51
	xba		; EB
	sbc ($23.b),Y		; F1 23
	asl $B8EF.w		; 0E EF B8
	tsb $20.b		; 04 20
	cpy WRDIVL.w		; CC 04 42
	cpy $32E2.w		; CC E2 32
	clv		; B8
	ora $13FF.w		; 0D FF 13
	and $4103CE.l		; 2F CE 03 41
	jmp.w [$E2B8]		; DC B8 E2
	and ($0D.b)		; 32 0D
	inc $1E33.w,X		; FE 33 1E
	jmp.w [$B833]		; DC 33 B8
	eor $23F3DC.l		; 4F DC F3 23
	inc $23E0.w		; EE E0 23
	ora $DEB8.w,X		; 1D B8 DE
	and $2E.b		; 25 2E
	stp		; DB
	ora ($50.b,S),Y		; 13 50
	cpx $A8F3.w		; EC F3 A8
	bit $BB.b,X		; 34 BB
	sbc $63.b,S		; E3 63
	cmp $76C1.w,Y		; D9 C1 76
	phd		; 0B
	tay		; A8
	ldx $2C44.w,Y		; BE 44 2C
	cpy #$35.b		; C0 35
	jsr ($46B0.w,X)		; FC B0 46
	tay		; A8
	trb $44CD.w		; 1C CD 44
	ora $1023CD.l,X		; 1F CD 23 10
	jsr ($2398.w,X)		; FC 98 23
	eor ($FB.b)		; 52 FB
	sbc $CE2E23.l		; EF 23 2E CE
	and $98.b,S		; 23 98
	bmi -52.b		; 30 CC
	tsb $50.b		; 04 50
	xce		; FB
	cmp ($30.b)		; D2 30
	ora $2488.w		; 0D 88 24
	eor $14BB.w,X		; 5D BB 14
	adc ($1C.b,X)		; 61 1C
	stp		; DB
	cmp ($94.b,S),Y		; D3 94
	ora ($41.b,S),Y		; 13 41
	jmp.w [$41F1]		; DC F1 41
	asl $10F0.w		; 0E F0 10
	dey		; 88
	bpl -17.b		; 10 EF
	tsb $0F.b		; 04 0F
	dec $1F25.w,X		; DE 25 1F
	cmp $0678.w		; CD 78 06
	adc $F001EC.l,X		; 7F EC 01 F0
	jsr $EF3D.w		; 20 3D EF
	stz $F1.b,X		; 74 F1
	eor ($CC.b)		; 52 CC
	sbc $42.b,S		; E3 42
	sbc $12C0.w		; ED C0 12
	rts		; 60

	and ($42.b)		; 32 42
	sbc $10D0.w,X		; FD D0 10
	tsx		; BA
	and $6F.b		; 25 6F
	stz $CF.b,X		; 74 CF
	mvn $C3,$FE		; 54 FE C3
	and $1200EE.l		; 2F EE 00 12
	sei		; 78
	cpx #$E3.b		; E0 E3
	sbc ($3F.b,X)		; E1 3F
	sbc $42E4.w		; ED E4 42
	cmp $BC74.w,X		; DD 74 BC
	ora $31.b		; 05 31
	inc $21E1.w		; EE E1 21
	asl $64EF.w		; 0E EF 64
	bit $60.b,X		; 34 60
	ldy $54DF.w,X		; BC DF 54
	cpx $320F.w		; EC 0F 32
	stz $01.b		; 64 01
	cmp $1522.w,X		; DD 22 15
	sbc ($F9.b,X)		; E1 F9
	cpx #$42.b		; E0 42
	stz $10.b,X		; 74 10
	beq  34.b		; F0 22
	xba		; EB
	cmp ($44.b,S),Y		; D3 44
	jsr ($68D0.w,X)		; FC D0 68
	and $022EFF.l		; 2F FF 2E 02
	eor $35DD.w,Y		; 59 DD 35
	and ($64.b,S),Y		; 33 64
	ora $5EDE.w		; 0D DE 5E
	sbc $1E31F1.l		; EF F1 31 1E
	cmp $A364.w,X		; DD 64 A3
	eor ($5F.b,S),Y		; 53 5F
	cmp $1E01E0.l		; CF E0 01 1E
	and $64.b,S		; 23 64
	sbc ($AD.b,X)		; E1 AD
	sbc ($56.b),Y		; F1 56
	trb $3FEC.w		; 1C EC 3F
	bmi 112.b		; 30 70
	sbc $FDF0EF.l,X		; FF EF F0 FD
	cpy $3F04.w		; CC 04 3F
	jmp.w [$7268]		; DC 68 72
	lda #$23.b		; A9 23
	rti		; 40

	xce		; FB
	sbc ($6B.b)		; F2 6B
	and $1F64.w,X		; 3D 64 1F
	stp		; DB
	and ($4D.b,S),Y		; 33 4D
	dec CGWSEL.w		; CE 30 21
	nop		; EA
	stz $5F.b		; 64 5F
	rol $2F1C.w		; 2E 1C 2F
	and $E0.b,S		; 23 E0
	sbc $64E5.w		; ED E5 64
	rti		; 40

	tsb $4FD3.w		; 0C D3 4F
	cmp $22F3.w,X		; DD F3 22
	cpy #$54.b		; C0 54
	lda $E1.b,X		; B5 E1
	brk $02.b		; 00 02
	ora $16F0EE.l		; 0F EE F0 16
	adc ($1D.b,X)		; 61 1D
	sbc $0FDF.w		; ED DF 0F
	jmp.w [$3D02]		; DC 02 3D
	cpx $0000.w		; EC 00 00
	brk $08.b		; 00 08
	sty $0009.w		; 8C 09 00
	plp		; 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $1E.b		; 00 1E
	plp		; 28
	plp		; 28
	ldy $0029.w		; AC 29 00
	ora $4B0818.l,X		; 1F 18 08 4B
	rol A		; 2A
	brk $1A.b		; 00 1A
	php		; 08
	clc		; 18
	rol $002B.w		; 2E 2B 00
	jsl $B10818.l		; 22 18 08 B1
	bit $2200.w		; 2C 00 22
	bpl  16.b		; 10 10
	bit $2E.b,X		; 34 2E
	brk $22.b		; 00 22
	php		; 08
	clc		; 18
	lda [$2F.b],Y		; B7 2F
	tsb $241B.w		; 0C 1B 24
	bit $2D.b		; 24 2D
	bmi   0.b		; 30 00
	cmp ($3E.b),Y		; D1 3E
	rol $00F3.w,X		; 3E F3 00
	bcs -33.b		; B0 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $04.b		; 05 04
	lda $0C.b,S		; A3 0C
	cmp $08A204.l,X		; DF 04 A2 08
	lda $0C.b,S		; A3 0C
	cmp $209C04.l,X		; DF 04 9C 20
	cmp $089A10.l,X		; DF 10 9A 08
	lda $0C.b,S		; A3 0C
	cmp $08A204.l,X		; DF 04 A2 08
	lda $0C.b,S		; A3 0C
	cmp $209C04.l,X		; DF 04 9C 20
	cmp $049E10.l,X		; DF 10 9E 04
	stz $0C9A.w		; 9C 9A 0C
	cmp $089C04.l,X		; DF 04 9C 08
	sta $04DF0C.l,X		; 9F 0C DF 04
	lda $08.b,S		; A3 08
	tax		; AA
	tsb $04DF.w		; 0C DF 04
	tay		; A8
	php		; 08
	ldx #$0C.b		; A2 0C
	cmp $08A304.l,X		; DF 04 A3 08
	ldx $10.b		; A6 10
	cmp $0CA508.l,X		; DF 08 A5 0C
	cmp $30A404.l,X		; DF 04 A4 30
	cmp $0CA108.l,X		; DF 08 A1 0C
	cmp $08A004.l,X		; DF 04 A0 08
	lda ($0C.b,X)		; A1 0C
	cmp $209C04.l,X		; DF 04 9C 20
	cmp $089E10.l,X		; DF 10 9E 08
	lda ($0C.b,X)		; A1 0C
	cmp $08A004.l,X		; DF 04 A0 08
	lda ($0C.b,X)		; A1 0C
	cmp $209C04.l,X		; DF 04 9C 20
	cmp $049E10.l,X		; DF 10 9E 04
	stz $0C9A.w		; 9C 9A 0C
	cmp $089E04.l,X		; DF 04 9E 08
	lda ($0C.b,X)		; A1 0C
	cmp $08A404.l,X		; DF 04 A4 08
	tax		; AA
	tsb $04DF.w		; 0C DF 04
	lda #$08.b		; A9 08
	tay		; A8
	tsb $04DF.w		; 0C DF 04
	ldx #$08.b		; A2 08
	lda $54.b,S		; A3 54
	cmp $DFA30C.l,X		; DF 0C A3 DF
	tsb $A2.b		; 04 A2
	php		; 08
	lda $0C.b,S		; A3 0C
	cmp $209C04.l,X		; DF 04 9C 20
	cmp $089A10.l,X		; DF 10 9A 08
	lda $0C.b,S		; A3 0C
	cmp $08A204.l,X		; DF 04 A2 08
	lda $0C.b,S		; A3 0C
	cmp $209C04.l,X		; DF 04 9C 20
	cmp $049E10.l,X		; DF 10 9E 04
	stz $0C9A.w		; 9C 9A 0C
	cmp $089C04.l,X		; DF 04 9C 08
	sta $04DF0C.l,X		; 9F 0C DF 04
	lda $08.b,S		; A3 08
	tax		; AA
	tsb $04DF.w		; 0C DF 04
	tay		; A8
	php		; 08
	ldx #$0C.b		; A2 0C
	cmp $08A304.l,X		; DF 04 A3 08
	ldx $12.b		; A6 12
	cmp $0CA506.l,X		; DF 06 A5 0C
	cmp $20A404.l,X		; DF 04 A4 20
	cmp $08A310.l,X		; DF 10 A3 08
	lda ($0C.b,X)		; A1 0C
	cmp $08A304.l,X		; DF 04 A3 08
	ldy $0C.b		; A4 0C
	cmp $08A604.l,X		; DF 04 A6 08
	stz $DF18.w,X		; 9E 18 DF
	bpl -86.b		; 10 AA
	tsb $A8.b		; 04 A8
	tay		; A8
	tsb $04DF.w		; 0C DF 04
	ldx $1C.b		; A6 1C
	cmp $0CA904.l,X		; DF 04 A9 0C
	cmp $08A804.l,X		; DF 04 A8 08
	ldx $0C.b		; A6 0C
	cmp $08A504.l,X		; DF 04 A5 08
	ldy $0C.b		; A4 0C
	cmp $1CA804.l,X		; DF 04 A8 1C
	cmp $0C9E04.l,X		; DF 04 9E 0C
	cmp $1CA304.l,X		; DF 04 A3 1C
	cmp $449F04.l,X		; DF 04 9F 44
	cmp $189F04.l,X		; DF 04 9F 18
	lda #$0C.b		; A9 0C
	cmp $04DFA9.l,X		; DF A9 DF 04
	tay		; A8
	php		; 08
	ldx $0C.b		; A6 0C
	cmp $1C9F04.l,X		; DF 04 9F 1C
	cmp $249F04.l,X		; DF 04 9F 24
	cmp $30A104.l,X		; DF 04 A1 30
	cmp $0CA708.l,X		; DF 08 A7 0C
	cmp $04DFA7.l,X		; DF A7 DF 04
	ldx $08.b		; A6 08
	ldy $0C.b		; A4 0C
	cmp $189D04.l,X		; DF 04 9D 18
	cmp $249D08.l,X		; DF 08 9D 24
	cmp $309F04.l,X		; DF 04 9F 30
	cmp $0CA108.l,X		; DF 08 A1 0C
	cmp $08A004.l,X		; DF 04 A0 08
	lda ($0C.b,X)		; A1 0C
	cmp $08A204.l,X		; DF 04 A2 08
	ldy $0C.b		; A4 0C
	cmp $20A104.l,X		; DF 04 A1 20
	ldx #$14.b		; A2 14
	cmp $0CA404.l,X		; DF 04 A4 0C
	cmp $34A604.l,X		; DF 04 A6 34
	cmp $0CA404.l,X		; DF 04 A4 0C
	cmp $08A304.l,X		; DF 04 A3 08
	ldy $0C.b		; A4 0C
	cmp $08A604.l,X		; DF 04 A6 08
	tay		; A8
	tsb $04DF.w		; 0C DF 04
	ldy $18.b		; A4 18
	cmp $18A908.l,X		; DF 08 A9 18
	cmp $30A610.l,X		; DF 10 A6 30
	cmp $3AE008.l,X		; DF 08 E0 3A
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $02.b		; 04 02
	sed		; F8
	sbc $18DFF0.l,X		; FF F0 DF 18
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	ldx $08.b		; A6 08
	lda $9F.b,S		; A3 9F
	ldy #$14.b		; A0 14
	cmp $14A804.l,X		; DF 04 A8 14
	cmp $14AA04.l,X		; DF 04 AA 14
	cmp $10A904.l,X		; DF 04 A9 10
	tay		; A8
	bit $DF.b,X		; 34 DF
	trb $60F5.w		; 1C F5 60
	sbc $60.b,X		; F5 60
	ldx $08.b		; A6 08
	ldy $9E.b		; A4 9E
	lda ($14.b,X)		; A1 14
	cmp $14A404.l,X		; DF 04 A4 14
	cmp $14A804.l,X		; DF 04 A8 14
	cmp $10A804.l,X		; DF 04 A8 10
	ldx $34.b		; A6 34
	cmp $60F51C.l,X		; DF 1C F5 60
	sbc $60.b,X		; F5 60
	ldx $08.b		; A6 08
	lda $9F.b,S		; A3 9F
	ldy #$14.b		; A0 14
	cmp $14A804.l,X		; DF 04 A8 14
	cmp $14AA04.l,X		; DF 04 AA 14
	cmp $10A904.l,X		; DF 04 A9 10
	tay		; A8
	bit $DF.b,X		; 34 DF
	jmp $60F5.w		; 4C F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	lda $08.b,S		; A3 08
	ldx $A3.b		; A6 A3
	lda $10DF.w		; AD DF 10
	lda $08AB.w		; AD AB 08
	lda #$10.b		; A9 10
	lda $1C.b,S		; A3 1C
	cmp $08A44C.l,X		; DF 4C A4 08
	tay		; A8
	ldy $AB.b		; A4 AB
	cmp $A9AB10.l,X		; DF 10 AB A9
	php		; 08
	lda [$10.b]		; A7 10
	lda ($1C.b,X)		; A1 1C
	cmp $60F53C.l,X		; DF 3C F5 60
	sbc $60.b,X		; F5 60
	sta $A2A108.l,X		; 9F 08 A1 A2
	txs		; 9A
	sta $2C9C.w,X		; 9D 9C 2C
	cmp $14A204.l,X		; DF 04 A2 14
	cmp $08A404.l,X		; DF 04 A4 08
	plb		; AB
	tay		; A8
	ldy $14.b		; A4 14
	cmp $DF34A1.l,X		; DF A1 34 DF
	tsb $E0.b		; 04 E0
	lda ($29.b)		; B2 29
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $03.b		; 05 03
	cmp $60F538.l,X		; DF 38 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	stx $08.b		; 86 08
	sta [$89.b]		; 87 89
	phb		; 8B
	sty $0C8E.w		; 8C 8E 0C
	cmp $088D04.l,X		; DF 04 8D 08
	stx $DF0C.w		; 8E 0C DF
	tsb $8B.b		; 04 8B
	trb $8EDF.w		; 1C DF 8E
	tsb $04DF.w		; 0C DF 04
	sta $8E08.w		; 8D 08 8E
	tsb $04DF.w		; 0C DF 04
	phb		; 8B
	trb $8BDF.w		; 1C DF 8B
	tsb $04DF.w		; 0C DF 04
	txa		; 8A
	php		; 08
	phb		; 8B
	tsb $04DF.w		; 0C DF 04
	stx $8808.w		; 8E 08 88
	trb $DF.b		; 14 DF
	tsb $8E.b		; 04 8E
	trb $DF.b		; 14 DF
	tsb $8B.b		; 04 8B
	trb $DF.b		; 14 DF
	tsb $8A.b		; 04 8A
	tsb $04DF.w		; 0C DF 04
	bit #$1C.b		; 89 1C
	cmp $DF0C8C.l,X		; DF 8C 0C DF
	tsb $8E.b		; 04 8E
	php		; 08
	bcc  12.b		; 90 0C
	cmp $089204.l,X		; DF 04 92 08
	stx $DF14.w		; 8E 14 DF
	tsb $8C.b		; 04 8C
	trb $DF.b		; 14 DF
	tsb $8B.b		; 04 8B
	trb $DF.b		; 14 DF
	tsb $89.b		; 04 89
	php		; 08
	txa		; 8A
	phb		; 8B
	stx $DF0C.w		; 8E 0C DF
	tsb $8C.b		; 04 8C
	php		; 08
	phb		; 8B
	tsb $04DF.w		; 0C DF 04
	txa		; 8A
	php		; 08
	bit #$0C.b		; 89 0C
	cmp $1C8C04.l,X		; DF 04 8C 1C
	cmp $0C8904.l,X		; DF 04 89 0C
	cmp $1C8E04.l,X		; DF 04 8E 1C
	cmp $408B04.l,X		; DF 04 8B 40
	cmp $60F520.l,X		; DF 20 F5 60
	phb		; 8B
	jsr $08DF.w		; 20 DF 08
	sty $DF34.w		; 8C 34 DF
	tsb $F5.b		; 04 F5
	rts		; 60

	bit #$20.b		; 89 20
	cmp $348A08.l,X		; DF 08 8A 34
	cmp $0C8C04.l,X		; DF 04 8C 0C
	cmp $088B04.l,X		; DF 04 8B 08
	sty $DF0C.w		; 8C 0C DF
	tsb $8E.b		; 04 8E
	php		; 08
	sta $04DF0C.l		; 8F 0C DF 04
	sty $DF1C.w		; 8C 1C DF
	tsb $8E.b		; 04 8E
	trb $DF.b		; 14 DF
	tsb $89.b		; 04 89
	tsb $04DF.w		; 0C DF 04
	txa		; 8A
	bit $DF.b,X		; 34 DF
	tsb $90.b		; 04 90
	tsb $04DF.w		; 0C DF 04
	sta $0C9008.l		; 8F 08 90 0C
	cmp $089104.l,X		; DF 04 91 08
	sta ($0C.b,S),Y		; 93 0C
	cmp $1C9004.l,X		; DF 04 90 1C
	cmp $149504.l,X		; DF 04 95 14
	cmp $DF3492.l,X		; DF 92 34 DF
	tsb $E0.b		; 04 E0
	eor ($2A.b),Y		; 51 2A
	cmp $FFF806.l,X		; DF 06 F8 FF
	sbc ($A1.b,S),Y		; F3 A1
	php		; 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A010.l,X		; DF 10 A0 08
	cmp $08A010.l,X		; DF 10 A0 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A010.l,X		; DF 10 A0 08
	cmp $08A010.l,X		; DF 10 A0 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A010.l,X		; DF 10 A0 08
	cmp $08A010.l,X		; DF 10 A0 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $089D10.l,X		; DF 10 9D 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089D10.l,X		; DF 10 9D 08
	cmp $089D10.l,X		; DF 10 9D 08
	cmp $089D10.l,X		; DF 10 9D 08
	cmp $089D10.l,X		; DF 10 9D 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $DFB4AD.l,X		; DF AD B4 DF
	bpl -95.b		; 10 A1
	php		; 08
	cmp $08A110.l,X		; DF 10 A1 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $DFB2AB.l,X		; DF AB B2 DF
	bpl -97.b		; 10 9F
	php		; 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $DFB7B0.l,X		; DF B0 B7 DF
	bpl -100.b		; 10 9C
	php		; 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $DFB0A9.l,X		; DF A9 B0 DF
	lda ($DF.b,X)		; A1 DF
	bpl -90.b		; 10 A6
	php		; 08
	tax		; AA
	lda $E0B2.w		; AD B2 E0
	bmi  43.b		; 30 2B
	cmp $FFF806.l,X		; DF 06 F8 FF
	sbc ($9E.b,S),Y		; F3 9E
	php		; 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089F10.l,X		; DF 10 9F 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089D10.l,X		; DF 10 9D 08
	cmp $089D10.l,X		; DF 10 9D 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089B10.l,X		; DF 10 9B 08
	cmp $089B10.l,X		; DF 10 9B 08
	cmp $089B10.l,X		; DF 10 9B 08
	cmp $089B10.l,X		; DF 10 9B 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $DFA8A1.l,X		; DF A1 A8 DF
	bpl -98.b		; 10 9E
	php		; 08
	cmp $089E10.l,X		; DF 10 9E 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $DFA69F.l,X		; DF 9F A6 DF
	bpl -102.b		; 10 9A
	php		; 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $DFABA4.l,X		; DF A4 AB DF
	bpl -104.b		; 10 98
	php		; 08
	cmp $089C10.l,X		; DF 10 9C 08
	cmp $089B10.l,X		; DF 10 9B 08
	cmp $DFA49D.l,X		; DF 9D A4 DF
	stz $10DF.w,X		; 9E DF 10
	stz $A108.w,X		; 9E 08 A1
	ldx $AA.b		; A6 AA
	cpx #$B3.b		; E0 B3
	bit $06DF.w		; 2C DF 06
	sed		; F8
	sbc $089AF3.l,X		; FF F3 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089710.l,X		; DF 10 97 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089510.l,X		; DF 10 95 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $DF9C95.l,X		; DF 95 9C DF
	bpl -104.b		; 10 98
	php		; 08
	cmp $089A10.l,X		; DF 10 9A 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $DF9A93.l,X		; DF 93 9A DF
	bpl -106.b		; 10 96
	php		; 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $DF9F98.l,X		; DF 98 9F DF
	bpl -106.b		; 10 96
	php		; 08
	cmp $089610.l,X		; DF 10 96 08
	cmp $089810.l,X		; DF 10 98 08
	cmp $DF9891.l,X		; DF 91 98 DF
	tya		; 98
	cmp $089510.l,X		; DF 10 95 08
	txs		; 9A
	stz $E0A1.w,X		; 9E A1 E0
	rol $2E.b,X		; 36 2E
	cmp $187B06.l,X		; DF 06 7B 18
	cmp $7BDF82.l,X		; DF 82 DF 7B
	cmp $7BDF82.l,X		; DF 82 DF 7B
	cmp $7D7C84.l,X		; DF 84 7C 7D
	cmp $82DF84.l,X		; DF 84 DF 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $7B7A7D.l,X		; DF 7D 7A 7B
	cmp $088282.l,X		; DF 82 82 08
	sty $7A.b		; 84 7A
	tda		; 7B
	clc		; 18
	cmp $7BDF82.l,X		; DF 82 DF 7B
	cmp $7BDF82.l,X		; DF 82 DF 7B
	cmp $7D7C84.l,X		; DF 84 7C 7D
	cmp $7DDF84.l,X		; DF 84 DF 7D
	cmp $7FDF82.l,X		; DF 82 DF 7F
	cmp $08DF84.l,X		; DF 84 DF 08
	sei		; 78
	jmp ($187D.w,X)		; 7C 7D 18
	cmp $7BDF82.l,X		; DF 82 DF 7B
	cmp $087B82.l,X		; DF 82 7B 08
	adc $188284.l,X		; 7F 84 82 18
	adc $7F7B.w,X		; 7D 7B 7F
	bra -126.b		; 80 82
	sty $7B.b		; 84 7B
	bra 123.b		; 80 7B
	adc $7E7D.w,Y		; 79 7D 7E
	bra -126.b		; 80 82
	ror $DF7D.w,X		; 7E 7D DF
	.db $82, $7A, $7B		; 82 7A 7B
	cmp $807B7E.l,X		; DF 7E 7B 80
	cmp $798087.l,X		; DF 87 80 79
	cmp $288210.l,X		; DF 10 82 28
	adc $7A08.w,X		; 7D 08 7A
	cpx #$B9.b		; E0 B9
	and $D006DF.l		; 2F DF 06 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b)		; D2 10
	cmp ($08.b)		; D2 08
	bne -46.b		; D0 D2
	cmp ($D2.b)		; D2 D2
	cmp ($D2.b)		; D2 D2
	cmp ($10.b,S),Y		; D3 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b,S),Y		; D3 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b,S),Y		; D3 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b,S),Y		; D3 10
	cmp ($08.b)		; D2 08
	bne -46.b		; D0 D2
	cmp ($D3.b)		; D2 D3
	bpl -46.b		; 10 D2
	php		; 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b,S),Y		; D3 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b,S),Y		; D3 10
	cmp ($08.b)		; D2 08
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($10.b,S),Y		; D3 10
	cmp ($08.b)		; D2 08
	bne -46.b		; D0 D2
	cmp ($D0.b)		; D2 D0
	bmi -48.b		; 30 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bmi -48.b		; 30 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	bmi -48.b		; 30 D0
	bpl -46.b		; 10 D2
	php		; 08
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	plp		; 28
	bne  16.b		; D0 10
	cmp ($08.b)		; D2 08
	cmp ($D2.b)		; D2 D2
	cmp ($D2.b)		; D2 D2
	cpx #$2F.b		; E0 2F
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	php		; 08
	sbc $09.b,S		; E3 09
	brk $28.b		; 00 28
	php		; 08
	rol $0028.w,X		; 3E 28 00
	ora ($33.b,X)		; 01 33
	and $E6.b,S		; 23 E6
	and #$00.b		; 29 00
	clc		; 18
	and $13.b,S		; 23 13
	lda $2A.b		; A5 2A
	brk $1A.b		; 00 1A
	and $13.b,S		; 23 13
	sec		; 38
	pld		; 2B
	brk $1A.b		; 00 1A
	ora ($23.b,S),Y		; 13 23
	ldy $002B.w,X		; BC 2B 00
	ora $2313.w,X		; 1D 13 23
	and ($28.b),Y		; 31 28
	brk $02.b		; 00 02
	tas		; 1B
	pld		; 2B
	lsr $0C2E.w		; 4E 2E 0C
	ora [$2F.b],Y		; 17 2F
	and $0030A0.l		; 2F A0 30 00
	cmp ($49.b),Y		; D1 49
	eor #$DF.b		; 49 DF
	asl $EC.b		; 06 EC
	tsb $0404.w		; 0C 04 04
	jsr ($DF0F.w,X)		; FC 0F DF
	cop $E0.b		; 02 E0
	eor [$28.b]		; 47 28
	sbc ($00.b,S),Y		; F3 00
	beq -33.b		; F0 DF
	asl $EC.b		; 06 EC
	tsb $0704.w		; 0C 04 07
	cmp $60F53C.l,X		; DF 3C F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $03DF09.l,X		; 9F 09 DF 03
	ldy $09.b		; A4 09
	cmp $09A703.l,X		; DF 03 A7 09
	tax		; AA
	ora $AB.b,S		; 03 AB
	ora #$DF.b		; 09 DF
	ora $DF09AB.l		; 0F AB 09 DF
	ora $A9.b,S		; 03 A9
	ora ($DF.b)		; 12 DF
	asl $A9.b		; 06 A9
	ora #$DF.b		; 09 DF
	ora $A7.b,S		; 03 A7
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora ($DF.b)		; 12 DF
	ora $A8.b,S		; 03 A8
	lda #$09.b		; A9 09
	cmp $099F1B.l,X		; DF 1B 9F 09
	cmp $09A303.l,X		; DF 03 A3 09
	cmp $09A603.l,X		; DF 03 A6 09
	tay		; A8
	ora $A9.b,S		; 03 A9
	ora #$DF.b		; 09 DF
	ora $DF09A9.l		; 0F A9 09 DF
	ora $A7.b,S		; 03 A7
	ora ($DF.b)		; 12 DF
	asl $A7.b		; 06 A7
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora ($DF.b)		; 12 DF
	asl $A4.b		; 06 A4
	ora ($DF.b)		; 12 DF
	ora $A6.b,S		; 03 A6
	lda [$09.b]		; A7 09
	cmp $099F1B.l,X		; DF 1B 9F 09
	cmp $09A403.l,X		; DF 03 A4 09
	cmp $09A703.l,X		; DF 03 A7 09
	tax		; AA
	ora $E2.b,S		; 03 E2
	plb		; AB
	ora #$DF.b		; 09 DF
	ora $DF09AB.l		; 0F AB 09 DF
	ora $A9.b,S		; 03 A9
	ora ($DF.b)		; 12 DF
	asl $A9.b		; 06 A9
	ora #$DF.b		; 09 DF
	ora $A7.b,S		; 03 A7
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora ($DF.b)		; 12 DF
	ora $A8.b,S		; 03 A8
	lda #$09.b		; A9 09
	cmp $099F1B.l,X		; DF 1B 9F 09
	cmp $09A303.l,X		; DF 03 A3 09
	cmp $09A603.l,X		; DF 03 A6 09
	cmp $12A903.l,X		; DF 03 A9 12
	cmp $09AB06.l,X		; DF 06 AB 09
	cmp $09A903.l,X		; DF 03 A9 09
	cmp $09A703.l,X		; DF 03 A7 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $30A706.l,X		; DF 06 A7 30
	cmp $099F18.l,X		; DF 18 9F 09
	cmp $09A403.l,X		; DF 03 A4 09
	cmp $09A703.l,X		; DF 03 A7 09
	tax		; AA
	ora $E2.b,S		; 03 E2
	sbc ($5B.b,X)		; E1 5B
	plp		; 28
	plb		; AB
	ora #$DF.b		; 09 DF
	ora $DF09AB.l		; 0F AB 09 DF
	ora $A9.b,S		; 03 A9
	ora ($DF.b)		; 12 DF
	asl $A9.b		; 06 A9
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora ($DF.b)		; 12 DF
	asl $AE.b		; 06 AE
	ora ($DF.b)		; 12 DF
	asl $AC.b		; 06 AC
	ora #$DF.b		; 09 DF
	tas		; 1B
	ldy $DF09.w		; AC 09 DF
	ora $AB.b,S		; 03 AB
	ora #$DF.b		; 09 DF
	ora $A9.b,S		; 03 A9
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora ($DF.b)		; 12 DF
	asl $A9.b		; 06 A9
	ora #$DF.b		; 09 DF
	ora $A9.b,S		; 03 A9
	ora #$DF.b		; 09 DF
	ora $A7.b,S		; 03 A7
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora ($DF.b)		; 12 DF
	asl $A4.b		; 06 A4
	bmi -33.b		; 30 DF
	bit $A4.b		; 24 A4
	ora ($DF.b)		; 12 DF
	asl $E2.b		; 06 E2
	ldy $DF39.w		; AC 39 DF
	ora $DF09AE.l		; 0F AE 09 DF
	ora $B0.b,S		; 03 B0
	asl $06DF.w,X		; 1E DF 06
	bcs  18.b		; B0 12
	cmp $12AE06.l,X		; DF 06 AE 12
	cmp $12AC06.l,X		; DF 06 AC 12
	cmp $1EAB06.l,X		; DF 06 AB 1E
	cmp $09A906.l,X		; DF 06 A9 09
	cmp $09A703.l,X		; DF 03 A7 09
	cmp $12A903.l,X		; DF 03 A9 12
	cmp $30AB06.l,X		; DF 06 AB 30
	cmp $12A424.l,X		; DF 24 A4 12
	cmp $39AC06.l,X		; DF 06 AC 39
	cmp $09AE0F.l,X		; DF 0F AE 09
	cmp $1EB003.l,X		; DF 03 B0 1E
	cmp $09B012.l,X		; DF 12 B0 09
	cmp $0CB003.l,X		; DF 03 B0 0C
	cmp $0CAE03.l,X		; DF 03 AE 0C
	cmp $0CAC06.l,X		; DF 06 AC 0C
	cmp $57AB03.l,X		; DF 03 AB 57
	cmp $099F45.l,X		; DF 45 9F 09
	cmp $09A403.l,X		; DF 03 A4 09
	cmp $09A703.l,X		; DF 03 A7 09
	tax		; AA
	ora $E1.b,S		; 03 E1
	tad		; 5B
	plp		; 28
	plb		; AB
	ora #$DF.b		; 09 DF
	ora $DF09AB.l		; 0F AB 09 DF
	ora $A9.b,S		; 03 A9
	ora ($DF.b)		; 12 DF
	asl $A9.b		; 06 A9
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora #$DF.b		; 09 DF
	ora $AE.b,S		; 03 AE
	ora ($DF.b)		; 12 DF
	asl $AC.b		; 06 AC
	ora #$DF.b		; 09 DF
	tas		; 1B
	ldy $DF09.w		; AC 09 DF
	ora $AB.b,S		; 03 AB
	ora #$DF.b		; 09 DF
	ora $A9.b,S		; 03 A9
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora ($DF.b)		; 12 DF
	asl $A9.b		; 06 A9
	ora ($DF.b)		; 12 DF
	asl $A7.b		; 06 A7
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora ($DF.b)		; 12 DF
	asl $A4.b		; 06 A4
	bmi -33.b		; 30 DF
	bit $47E0.w,X		; 3C E0 47
	plp		; 28
	cmp $60DF06.l,X		; DF 06 DF 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	inx		; E8
	ora ($FC.b,X)		; 01 FC
	php		; 08
	sbc [$13.b]		; E7 13
	ora ($DF.b,S),Y		; 13 DF
	tsb $5BE1.w		; 0C E1 5B
	plp		; 28
	sbc ($AE.b,X)		; E1 AE
	plp		; 28
	sbc ($5B.b,X)		; E1 5B
	plp		; 28
	sbc ($FF.b,X)		; E1 FF
	plp		; 28
	cmp $24DF54.l,X		; DF 54 DF 24
	inx		; E8
	clc		; 18
	sbc [$23.b]		; E7 23
	ora ($F8.b,S),Y		; 13 F8
	sbc $04A4F3.l,X		; FF F3 A4 04
	lda #$AC.b		; A9 AC
	bcs   6.b		; B0 06
	cmp $A904A4.l,X		; DF A4 04 A9
	ldy $0CB0.w		; AC B0 0C
	cmp $60F530.l,X		; DF 30 F5 60
	ldy $04.b		; A4 04
	lda [$AB.b]		; A7 AB
	bcs   6.b		; B0 06
	cmp $A704A4.l,X		; DF A4 04 A7
	plb		; AB
	bcs  12.b		; B0 0C
	cmp $60F530.l,X		; DF 30 F5 60
	ldx $04.b		; A6 04
	lda #$AC.b		; A9 AC
	bcs   6.b		; B0 06
	cmp $A904A6.l,X		; DF A6 04 A9
	ldy $0CB0.w		; AC B0 0C
	cmp $60F518.l,X		; DF 18 F5 60
	lda ($0C.b,X)		; A1 0C
	ldx #$A3.b		; A2 A3
	asl $DF.b		; 06 DF
	rol $E8.b,X		; 36 E8
	asl $FFF8.w,X		; 1E F8 FF
	cpx #$B7.b		; E0 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($B7.b)		; 12 B7
	asl $DF.b		; 06 DF
	ora ($A7.b)		; 12 A7
	bit $A6.b		; 24 A6
	lda [$18.b]		; A7 18
	ldx $A4.b		; A6 A4
	pha		; 48
	lda $60.b,S		; A3 60
	ldy $30.b		; A4 30
	lda [$0C.b]		; A7 0C
	ldy $06.b		; A4 06
	cmp $E8E01E.l,X		; DF 1E E0 E8
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	tsb $04.b		; 04 04
	inx		; E8
	ora $1EFC.w,X		; 1D FC 1E
	sbc ($C4.b,X)		; E1 C4
	pld		; 2B
	jsr ($F500.w,X)		; FC 00 F5
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	inx		; E8
	inc A		; 1A
	sbc [$23.b]		; E7 23
	ora ($98.b,S),Y		; 13 98
	bit $97.b		; 24 97
	tya		; 98
	sta [$98.b],Y		; 97 98
	clc		; 18
	txs		; 9A
	sta [$24.b],Y		; 97 24
	txs		; 9A
	sta [$98.b],Y		; 97 98
	txs		; 9A
	clc		; 18
	txy		; 9B
	tya		; 98
	bit $97.b		; 24 97
	tya		; 98
	sty $96.b,X		; 94 96
	clc		; 18
	tya		; 98
	sta [$24.b],Y		; 97 24
	txs		; 9A
	sta [$98.b],Y		; 97 98
	clc		; 18
	txs		; 9A
	tsb $9D9B.w		; 0C 9B 9D
	txy		; 9B
	txs		; 9A
	tya		; 98
	pha		; 48
	txs		; 9A
	tsb $249B.w		; 0C 9B 24
	txy		; 9B
	clc		; 18
	txs		; 9A
	txy		; 9B
	tya		; 98
	bit $97.b		; 24 97
	tsb $9596.w		; 0C 96 95
	clc		; 18
	sty $3C.b,X		; 94 3C
	sta ($30.b,S),Y		; 93 30
	sta ($98.b),Y		; 91 98
	sty $60.b,X		; 94 60
	tya		; 98
	rts		; 60

	sta [$0C.b],Y		; 97 0C
	sta $9F9E.w,X		; 9D 9E 9F
	asl $DF.b		; 06 DF
	rol $98.b,X		; 36 98
	bit $97.b		; 24 97
	tya		; 98
	sta [$98.b],Y		; 97 98
	clc		; 18
	txs		; 9A
	sta [$24.b],Y		; 97 24
	txs		; 9A
	sta [$98.b],Y		; 97 98
	txs		; 9A
	clc		; 18
	txy		; 9B
	tya		; 98
	bit $97.b		; 24 97
	tya		; 98
	sty $96.b,X		; 94 96
	clc		; 18
	tya		; 98
	sta [$24.b],Y		; 97 24
	txs		; 9A
	sta [$18.b],Y		; 97 18
	tya		; 98
	bmi -101.b		; 30 9B
	tsb $0698.w		; 0C 98 06
	cmp $ABE01E.l,X		; DF 1E E0 AB
	rol A		; 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $04.b		; 04 04
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	inx		; E8
	inc A		; 1A
	sta $8F8E24.l		; 8F 24 8E 8F
	stx $188F.w		; 8E 8F 18
	sta ($8E.b),Y		; 91 8E
	bit $91.b		; 24 91
	stx $918F.w		; 8E 8F 91
	clc		; 18
	sta ($8F.b,S),Y		; 93 8F
	bit $8E.b		; 24 8E
	sta $188E8C.l		; 8F 8C 8E 18
	sta $91248E.l		; 8F 8E 24 91
	stx $188F.w		; 8E 8F 18
	sta ($0C.b),Y		; 91 0C
	sta ($94.b,S),Y		; 93 94
	sta ($91.b,S),Y		; 93 91
	sty $60.b,X		; 94 60
	sbc $60.b,X		; F5 60
	sta $60F560.l		; 8F 60 F5 60
	sta $60F530.l		; 8F 30 F5 60
	sta ($30.b),Y		; 91 30
	sta ($60.b),Y		; 91 60
	sta ($0C.b),Y		; 91 0C
	sta ($92.b),Y		; 91 92
	sta ($06.b,S),Y		; 93 06
	cmp $248F36.l,X		; DF 36 8F 24
	stx $8E8F.w		; 8E 8F 8E
	sta $8E9118.l		; 8F 18 91 8E
	bit $91.b		; 24 91
	stx $918F.w		; 8E 8F 91
	clc		; 18
	sta ($8F.b,S),Y		; 93 8F
	bit $8E.b		; 24 8E
	sta $188E8C.l		; 8F 8C 8E 18
	sta $91248E.l		; 8F 8E 24 91
	stx $8F18.w		; 8E 18 8F
	bmi -113.b		; 30 8F
	tsb $068C.w		; 0C 8C 06
	cmp $3EE01E.l,X		; DF 1E E0 3E
	pld		; 2B
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $04.b		; 04 04
	inx		; E8
	ora $23E7.w,X		; 1D E7 23
	and $87.b,S		; 23 87
	asl $E7.b		; 06 E7
	ora ($13.b,S),Y		; 13 13
	sta [$87.b]		; 87 87
	sbc [$23.b]		; E7 23
	and $87.b,S		; 23 87
	sbc [$13.b]		; E7 13
	ora ($87.b,S),Y		; 13 87
	sbc [$23.b]		; E7 23
	and $87.b,S		; 23 87
	sbc [$13.b]		; E7 13
	ora ($87.b,S),Y		; 13 87
	sbc [$23.b]		; E7 23
	and $87.b,S		; 23 87
	asl $E7.b		; 06 E7
	ora ($13.b,S),Y		; 13 13
	sta [$87.b]		; 87 87
	sta [$E7.b]		; 87 E7
	and $23.b,S		; 23 23
	sta [$E7.b]		; 87 E7
	ora ($13.b,S),Y		; 13 13
	sta [$E7.b]		; 87 E7
	and $23.b,S		; 23 23
	sta [$06.b]		; 87 06
	sbc [$13.b]		; E7 13
	ora ($87.b,S),Y		; 13 87
	sta [$E9.b]		; 87 E9
	brk $04.b		; 00 04
	cpy $2B.b		; C4 2B
.ACCU 8
	sep #$E8		; E2 E8
	and ($E7.b,X)		; 21 E7
	ora ($23.b,S),Y		; 13 23
	sty $DF09.w		; 8C 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	ora ($DF.b)		; 12 DF
	asl $87.b		; 06 87
	ora #$DF.b		; 09 DF
	ora $8C.b,S		; 03 8C
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	asl $88.b		; 06 88
	sta [$09.b]		; 87 09
	cmp $098B03.l,X		; DF 03 8B 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098E03.l,X		; DF 03 8E 09
	cmp $068703.l,X		; DF 03 87 06
	sta [$85.b]		; 87 85
	sta $87.b		; 85 87
	ora #$DF.b		; 09 DF
	ora $8E.b,S		; 03 8E
	ora #$DF.b		; 09 DF
	ora $8B.b,S		; 03 8B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	ora ($DF.b)		; 12 DF
	asl $87.b		; 06 87
	ora #$DF.b		; 09 DF
	ora $8B.b,S		; 03 8B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	asl $88.b		; 06 88
	sta [$09.b]		; 87 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $099303.l,X		; DF 03 93 09
	cmp $068C03.l,X		; DF 03 8C 06
	sty $8585.w		; 8C 85 85
	sta [$09.b]		; 87 09
	cmp $E1E203.l,X		; DF 03 E2 E1
	asl $2C.b		; 06 2C
	sbc ($06.b,X)		; E1 06
	bit $098C.w		; 2C 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $128803.l,X		; DF 03 88 12
	cmp $098706.l,X		; DF 06 87 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $068703.l,X		; DF 03 87 06
	sta [$85.b]		; 87 85
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $8C.b,S		; 03 8C
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	asl $85.b		; 06 85
	sta $83.b,S		; 83 83
	sta $09.b		; 85 09
	cmp $098E03.l,X		; DF 03 8E 09
	cmp $098B03.l,X		; DF 03 8B 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $128803.l,X		; DF 03 88 12
	cmp $098706.l,X		; DF 06 87 09
	cmp $098B03.l,X		; DF 03 8B 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $068803.l,X		; DF 03 88 06
	dey		; 88
	sta [$09.b]		; 87 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $099303.l,X		; DF 03 93 09
	cmp $068C03.l,X		; DF 03 8C 06
	sty $8585.w		; 8C 85 85
	sta [$09.b]		; 87 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098803.l,X		; DF 03 88 09
	cmp $098803.l,X		; DF 03 88 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098E03.l,X		; DF 03 8E 09
	cmp $098E03.l,X		; DF 03 8E 09
	cmp $098F03.l,X		; DF 03 8F 09
	cmp $098F03.l,X		; DF 03 8F 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098803.l,X		; DF 03 88 09
	cmp $098803.l,X		; DF 03 88 09
	cmp $098803.l,X		; DF 03 88 09
	cmp $098803.l,X		; DF 03 88 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $099103.l,X		; DF 03 91 09
	cmp $099203.l,X		; DF 03 92 09
	cmp $099303.l,X		; DF 03 93 09
	cmp $06E133.l,X		; DF 33 E1 06
	bit $098C.w		; 2C 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $128803.l,X		; DF 03 88 12
	cmp $098706.l,X		; DF 06 87 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $068703.l,X		; DF 03 87 06
	sta [$85.b]		; 87 85
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $8C.b,S		; 03 8C
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	asl $85.b		; 06 85
	sta $83.b,S		; 83 83
	sta $09.b		; 85 09
	cmp $098E03.l,X		; DF 03 8E 09
	cmp $098B03.l,X		; DF 03 8B 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $128803.l,X		; DF 03 88 12
	cmp $098706.l,X		; DF 06 87 09
	cmp $098B03.l,X		; DF 03 8B 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $068803.l,X		; DF 03 88 06
	dey		; 88
	sta [$09.b]		; 87 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098F03.l,X		; DF 03 8F 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $C2E01B.l,X		; DF 1B E0 C2
	pld		; 2B
	cmp $60DF06.l,X		; DF 06 DF 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	bra   9.b		; 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097703.l,X		; DF 03 77 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097B06.l,X		; DF 06 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $067C03.l,X		; DF 03 7C 06
	jmp ($097B.w,X)		; 7C 7B 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $067B03.l,X		; DF 03 7B 06
	tda		; 7B
	adc $7B79.w,Y		; 79 79 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	asl $7C.b		; 06 7C
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	asl $80.b		; 06 80
	adc $7B79.w,Y		; 79 79 7B
	ora #$DF.b		; 09 DF
	ora $E2.b,S		; 03 E2
	sbc ($58.b,X)		; E1 58
	rol $58E1.w		; 2E E1 58
	rol $0980.w		; 2E 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097703.l,X		; DF 03 77 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097B06.l,X		; DF 06 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $067B03.l,X		; DF 03 7B 06
	tda		; 7B
	adc $DF09.w,Y		; 79 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	asl $79.b		; 06 79
	adc [$77.b],Y		; 77 77
	adc $DF09.w,Y		; 79 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	asl $7C.b		; 06 7C
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	asl $80.b		; 06 80
	adc $7B79.w,Y		; 79 79 7B
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	and ($E1.b,S),Y		; 33 E1
	cli		; 58
	rol $0980.w		; 2E 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097703.l,X		; DF 03 77 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097B06.l,X		; DF 06 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $067B03.l,X		; DF 03 7B 06
	tda		; 7B
	adc $DF09.w,Y		; 79 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	asl $79.b		; 06 79
	adc [$77.b],Y		; 77 77
	adc $DF09.w,Y		; 79 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	asl $7C.b		; 06 7C
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	tas		; 1B
	cpx #$50.b		; E0 50
	rol $06DF.w		; 2E DF 06
	cmp $60F560.l,X		; DF 60 F5 60
	bne  24.b		; D0 18
	bne -48.b		; D0 D0
	bne -48.b		; D0 D0
	bne -48.b		; D0 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D1.b),Y		; D1 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
.INDEX 8
	sep #$D0		; E2 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($E1.b),Y		; D1 E1
	ldx $30.b,Y		; B6 30
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	cmp $04.b,X		; D5 04
	cmp $D6.b,X		; D5 D6
	cmp ($0C.b),Y		; D1 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b),Y		; D1 D1
	cmp ($18.b),Y		; D1 18
	cmp $0C.b,X		; D5 0C
	cmp ($D1.b),Y		; D1 D1
	asl $D1.b		; 06 D1
	sbc ($B6.b,X)		; E1 B6
	bmi -48.b		; 30 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	bne -48.b		; D0 D0
	cmp ($24.b),Y		; D1 24
	cpx #$A2.b		; E0 A2
	bmi -33.b		; 30 DF
	asl $DF.b		; 06 DF
	bmi -11.b		; 30 F5
	rts		; 60

	lda $30.b,S		; A3 30
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$96.b		; E0 96
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	php		; 08
	and #$06.b		; 29 06
	brk $28.b		; 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $18.b		; 00 18
	ora ($24.b)		; 12 24
	ora $180029.l		; 0F 29 00 18
	trb $E60C.w		; 1C 0C E6
	and #$00.b		; 29 00
	ora $0818.w,Y		; 19 18 08
	bmi  43.b		; 30 2B
	brk $18.b		; 00 18
	clc		; 18
	php		; 08
	ldy $002B.w,X		; BC 2B 00
	clc		; 18
	php		; 08
	clc		; 18
	pha		; 48
	bit $1A00.w		; 2C 00 1A
	php		; 08
	clc		; 18
	lda [$2C.b],Y		; B7 2C
	tsb $241B.w		; 0C 1B 24
	bit $2D.b		; 24 2D
	and $D100.w		; 2D 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $94.b		; 00 94
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $04.b		; 04 04
	sed		; F8
	sbc $04A6EE.l,X		; FF EE A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $A10C.w		; 9C 0C A1
	tsb $A3.b		; 04 A3
	tsb $04A6.w		; 0C A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	tsb $9F.b		; 04 9F
	php		; 08
	lda ($04.b,X)		; A1 04
	lda $DF.b,S		; A3 DF
	php		; 08
	lda $04.b,S		; A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $0C9F08.l,X		; DF 08 9F 0C
	lda ($08.b,X)		; A1 08
	stz $9F0C.w,X		; 9E 0C 9F
	cop $DF.b		; 02 DF
	lda ($0C.b,X)		; A1 0C
	lda $04.b,S		; A3 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $0C9F08.l,X		; DF 08 9F 0C
	lda ($08.b,X)		; A1 08
	stz $9F0C.w,X		; 9E 0C 9F
	cop $DF.b		; 02 DF
	lda ($0C.b,X)		; A1 0C
	lda $04.b,S		; A3 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A508.l,X		; DF 08 A5 04
	cmp $04A508.l,X		; DF 08 A5 04
	cmp $04A608.l,X		; DF 08 A6 04
	cmp $A8A608.l,X		; DF 08 A6 A8
	tsb $04A6.w		; 0C A6 04
	tay		; A8
	tsb $04A5.w		; 0C A5 04
	cmp $04A508.l,X		; DF 08 A5 04
	cmp $A4A508.l,X		; DF 08 A5 A4
	tsb $A5.b		; 04 A5
	tsb $04A1.w		; 0C A1 04
	cmp $18AD14.l,X		; DF 14 AD 18
	cpx #$3A.b		; E0 3A
	plp		; 28
	cmp $FFF806.l,X		; DF 06 F8 FF
	inc $04A6.w		; EE A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $A10C.w		; 9C 0C A1
	tsb $A3.b		; 04 A3
	tsb $04A6.w		; 0C A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	tsb $9F.b		; 04 9F
	php		; 08
	lda ($04.b,X)		; A1 04
	sta $9F08DF.l,X		; 9F DF 08 9F
	tsb $DF.b		; 04 DF
	php		; 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	php		; 08
	txs		; 9A
	tsb $029C.w		; 0C 9C 02
	cmp $9F0C9E.l,X		; DF 9E 0C 9F
	tsb $DF.b		; 04 DF
	php		; 08
	sta $08DF04.l,X		; 9F 04 DF 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	php		; 08
	txs		; 9A
	tsb $029C.w		; 0C 9C 02
	cmp $9F0C9E.l,X		; DF 9E 0C 9F
	tsb $DF.b		; 04 DF
	php		; 08
	sta $08DF04.l,X		; 9F 04 DF 08
	ldx #$04.b		; A2 04
	cmp $04A208.l,X		; DF 08 A2 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A0A308.l,X		; DF 08 A3 A0
	tsb $04A0.w		; 0C A0 04
	ldy #$0C.b		; A0 0C
	lda ($04.b,X)		; A1 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $A0A108.l,X		; DF 08 A1 A0
	tsb $A1.b		; 04 A1
	tsb $04A1.w		; 0C A1 04
	cmp $18A514.l,X		; DF 14 A5 18
	cpx #$11.b		; E0 11
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	tsb $04.b		; 04 04
	sed		; F8
	sbc $0A95F2.l,X		; FF F2 95 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $9F.b		; 04 9F
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $95.b		; 04 95
	asl A		; 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $A0.b		; 04 A0
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $95.b		; 04 95
	asl A		; 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $9F.b		; 04 9F
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $95.b		; 04 95
	asl A		; 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $A0.b		; 04 A0
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $93.b		; 04 93
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $97.b		; 02 97
	tsb $95.b		; 04 95
	asl $DF.b		; 06 DF
	cop $9E.b		; 02 9E
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9C.b		; 04 9C
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	asl A		; 0A
	cmp $049E02.l,X		; DF 02 9E 04
	txs		; 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $93.b		; 04 93
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $97.b		; 02 97
	tsb $95.b		; 04 95
	asl $DF.b		; 06 DF
	cop $9E.b		; 02 9E
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9C.b		; 04 9C
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	asl A		; 0A
	cmp $049E02.l,X		; DF 02 9E 04
	txs		; 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $97.b		; 04 97
	php		; 08
	sta $089A04.l,X		; 9F 04 9A 08
	sta [$04.b],Y		; 97 04
	stx $9E.b,Y		; 96 9E
	stz $9699.w		; 9C 99 96
	sta ($97.b)		; 92 97
	php		; 08
	stz $9A04.w,X		; 9E 04 9A
	php		; 08
	sta [$A0.b],Y		; 97 A0
	tsb $9C.b		; 04 9C
	txs		; 9A
	sta [$94.b],Y		; 97 94
	sta ($08.b,S),Y		; 93 08
	sta $089C04.l,X		; 9F 04 9C 08
	sta $9504.w,Y		; 99 04 95
	sta $999C9E.l,X		; 9F 9E 9C 99
	stz $DF95.w		; 9C 95 DF
	bpl -107.b		; 10 95
	cop $99.b		; 02 99
	stz $169F.w		; 9C 9F 16
	cpx #$EC.b		; E0 EC
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0505.w		; 0C 05 05
	sed		; F8
	sbc $0CDFF0.l,X		; FF F0 DF 0C
	sta $04.b,X		; 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049C08.l,X		; DF 08 9C 04
	cmp $189C14.l,X		; DF 14 9C 18
	cpx #$36.b		; E0 36
	pld		; 2B
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $05.b		; 05 05
	sed		; F8
	sbc $0CDFF0.l,X		; FF F0 DF 0C
	sta ($04.b)		; 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049414.l,X		; DF 14 94 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049414.l,X		; DF 14 94 04
	cmp $049014.l,X		; DF 14 90 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049908.l,X		; DF 08 99 04
	cmp $189314.l,X		; DF 14 93 18
	cpx #$C2.b		; E0 C2
	pld		; 2B
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $07.b		; 04 07
	stx $DF04.w		; 8E 04 DF
	jsl $F530F5.l		; 22 F5 30 F5
	bmi -11.b		; 30 F5
	bmi -119.b		; 30 89
	cop $8A.b		; 02 8A
	phb		; 8B
	sty $8E8D.w		; 8C 8D 8E
	tsb $DF.b		; 04 DF
	trb $30F5.w		; 1C F5 30
	sbc $30.b,X		; F5 30
	sbc $30.b,X		; F5 30
	stx $9004.w		; 8E 04 90
	php		; 08
	sta ($04.b)		; 92 04
	sta ($DF.b,S),Y		; 93 DF
	jsl $8E30F5.l		; 22 F5 30 8E
	cop $8F.b		; 02 8F
	bcc -111.b		; 90 91
	sta ($93.b)		; 92 93
	tsb $DF.b		; 04 DF
	trb $30F5.w		; 1C F5 30
	stx $9004.w		; 8E 04 90
	php		; 08
	sta ($04.b)		; 92 04
	sta [$DF.b],Y		; 97 DF
	php		; 08
	sta [$04.b],Y		; 97 04
	cmp $049608.l,X		; DF 08 96 04
	cmp $049608.l,X		; DF 08 96 04
	cmp $049508.l,X		; DF 08 95 04
	cmp $949508.l,X		; DF 08 95 94
	bpl -105.b		; 10 97
	tsb $0493.w		; 0C 93 04
	cmp $049308.l,X		; DF 08 93 04
	cmp $929308.l,X		; DF 08 93 92
	tsb $93.b		; 04 93
	tsb $0490.w		; 0C 90 04
	cmp $028922.l,X		; DF 22 89 02
	txa		; 8A
	phb		; 8B
	sty $E08D.w		; 8C 8D E0
	lsr $DF2C.w		; 4E 2C DF
	asl $F8.b		; 06 F8
	sbc $0C82E8.l,X		; FF E8 82 0C
	cmp $7BDF7A.l,X		; DF 7A DF 7B
	cmp $0A7D08.l,X		; DF 08 7D 0A
	cmp $047D02.l,X		; DF 02 7D 04
	adc $DF820C.l,X		; 7F 0C 82 DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	adc $DF0A.w,X		; 7D 0A DF
	cop $7D.b		; 02 7D
	tsb $7F.b		; 04 7F
	tsb $DF82.w		; 0C 82 DF
	ply		; 7A
	cmp $08DF7B.l,X		; DF 7B DF 08
	adc $DF0A.w,X		; 7D 0A DF
	cop $7D.b		; 02 7D
	tsb $7F.b		; 04 7F
	tsb $DF82.w		; 0C 82 DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	adc $DF0A.w,X		; 7D 0A DF
	cop $7D.b		; 02 7D
	tsb $7F.b		; 04 7F
	tsb $DF7B.w		; 0C 7B DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	ror $0A.b,X		; 76 0A
	cmp $047802.l,X		; DF 02 78 04
	ply		; 7A
	tsb $DF7B.w		; 0C 7B DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	ror $0A.b,X		; 76 0A
	cmp $047802.l,X		; DF 02 78 04
	ply		; 7A
	tsb $DF7B.w		; 0C 7B DF
	ply		; 7A
	cmp $08DF7F.l,X		; DF 7F DF 08
	sei		; 78
	bpl -124.b		; 10 84
	tsb $DF7D.w		; 0C 7D DF
	sty $DF.b		; 84 DF
	adc $7DDF.w,X		; 7D DF 7D
	clc		; 18
	cpx #$B9.b		; E0 B9
	bit $06DF.w		; 2C DF 06
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($D2.b)		; D2 D2
	cmp $D5.b,X		; D5 D5
	cmp $D6.b,X		; D5 D6
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($18.b)		; D2 18
	cmp ($08.b,S),Y		; D3 08
	cmp ($04.b),Y		; D1 04
	cmp ($D5.b)		; D2 D5
	dec $E0.b,X		; D6 E0
	and $00002D.l		; 2F 2D 00 00
	brk $08.b		; 00 08
	cpy #$02.b		; C0 02
	brk $28.b		; 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $20.b		; 00 20
	plp		; 28
	plp		; 28
	adc $0028.w,X		; 7D 28 00
	jsr $101C.w		; 20 1C 10
	dec $28.b		; C6 28
	brk $20.b		; 00 20
	bpl  28.b		; 10 1C
	brk $29.b		; 00 29
	brk $1E.b		; 00 1E
	clc		; 18
	php		; 08
	cli		; 58
	and #$00.b		; 29 00
	asl $1808.w,X		; 1E 08 18
	bcs  41.b		; B0 29
	brk $14.b		; 00 14
	clc		; 18
	clc		; 18
	cmp $0C29.w,X		; DD 29 0C
	ora [$24.b],Y		; 17 24
	bit $78.b		; 24 78
	rol A		; 2A
	brk $D1.b		; 00 D1
	rol $F33E.w,X		; 3E 3E F3
	sbc $06DFFF.l,X		; FF FF DF 06
	cpx $0418.w		; EC 18 04
	asl $AA.b		; 06 AA
	ora $DF.b,X		; 15 DF
	ora $DF1EAB.l		; 0F AB 1E DF
	tax		; AA
	ora #$DF.b		; 09 DF
	ora $AA.b,S		; 03 AA
	ora #$DF.b		; 09 DF
	ora $AA.b,S		; 03 AA
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	asl $ADDF.w,X		; 1E DF AD
	ora $DF.b,X		; 15 DF
	ora $DF1EAE.l		; 0F AE 1E DF
	lda $DF09.w		; AD 09 DF
	ora $AD.b,S		; 03 AD
	ora #$DF.b		; 09 DF
	ora $AD.b,S		; 03 AD
	ora #$DF.b		; 09 DF
	ora $AE.b,S		; 03 AE
	asl $B0DF.w,X		; 1E DF B0
	ora $DF.b,X		; 15 DF
	ora $DF1EB0.l		; 0F B0 1E DF
	asl $B0.b		; 06 B0
	ora $DF.b,X		; 15 DF
	ora $B0.b,S		; 03 B0
	asl $06DF.w,X		; 1E DF 06
	lda $F524.w		; AD 24 F5
	rts		; 60

	cmp $DFE618.l,X		; DF 18 E6 DF
	asl $EC.b		; 06 EC
	clc		; 18
	tsb $06.b		; 04 06
	ldx $15.b		; A6 15
	cmp $1EA60F.l,X		; DF 0F A6 1E
	cmp $DF09A6.l,X		; DF A6 09 DF
	ora $A6.b,S		; 03 A6
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	asl $A9DF.w,X		; 1E DF A9
	ora $DF.b,X		; 15 DF
	ora $DF1EA9.l		; 0F A9 1E DF
	lda #$09.b		; A9 09
	cmp $09A903.l,X		; DF 03 A9 09
	cmp $09A903.l,X		; DF 03 A9 09
	cmp $1EA903.l,X		; DF 03 A9 1E
	cmp $DF15A4.l,X		; DF A4 15 DF
	ora $DF1EA4.l		; 0F A4 1E DF
	asl $A4.b		; 06 A4
	ora $DF.b,X		; 15 DF
	ora $A4.b,S		; 03 A4
	asl $06DF.w,X		; 1E DF 06
	lda ($24.b,X)		; A1 24
	sbc $60.b,X		; F5 60
	cmp $DFE618.l,X		; DF 18 E6 DF
	asl $EC.b		; 06 EC
	clc		; 18
	tsb $06.b		; 04 06
	lda ($15.b,X)		; A1 15
	cmp $1EA30F.l,X		; DF 0F A3 1E
	cmp $DF09A1.l,X		; DF A1 09 DF
	ora $A1.b,S		; 03 A1
	ora #$DF.b		; 09 DF
	ora $A1.b,S		; 03 A1
	ora #$DF.b		; 09 DF
	ora $A3.b,S		; 03 A3
	asl $A4DF.w,X		; 1E DF A4
	ora $DF.b,X		; 15 DF
	ora $DF1EA6.l		; 0F A6 1E DF
	ldy $09.b		; A4 09
	cmp $09A403.l,X		; DF 03 A4 09
	cmp $09A403.l,X		; DF 03 A4 09
	cmp $1EA603.l,X		; DF 03 A6 1E
	cmp $60F51E.l,X		; DF 1E F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	inc $DF.b		; E6 DF
	asl $EC.b		; 06 EC
	tsb $0705.w		; 0C 05 07
	tay		; A8
	asl $A6.b		; 06 A6
	lda ($9E.b,X)		; A1 9E
	txs		; 9A
	stz $A6A1.w,X		; 9E A1 A6
	tay		; A8
	ldx $A3.b		; A6 A3
	sta $A39F9A.l,X		; 9F 9A 9F A3
	ldx $A8.b		; A6 A8
	ldx $A1.b		; A6 A1
	stz $9E9A.w,X		; 9E 9A 9E
	lda ($A6.b,X)		; A1 A6
	tay		; A8
	ldx $A3.b		; A6 A3
	sta $A39F9A.l,X		; 9F 9A 9F A3
	ldx $A9.b		; A6 A9
	ldy $A1.b		; A4 A1
	sta $A29F9D.l,X		; 9F 9D 9F A2
	ldx $A9.b		; A6 A9
	ldx $A2.b		; A6 A2
	sta $A29F9D.l,X		; 9F 9D 9F A2
	ldx $A9.b		; A6 A9
	ldy $A1.b		; A4 A1
	sta $A29F9D.l,X		; 9F 9D 9F A2
	ldx $A9.b		; A6 A9
	ldx $A2.b		; A6 A2
	sta $A29F9D.l,X		; 9F 9D 9F A2
	ldx $A1.b		; A6 A1
	clc		; 18
	cmp $249F0C.l,X		; DF 0C 9F 24
	lda ($18.b,X)		; A1 18
	sta $249C24.l,X		; 9F 24 9C 24
	sbc $60.b,X		; F5 60
	cmp $DFE618.l,X		; DF 18 E6 DF
	asl $EC.b		; 06 EC
	tsb $0705.w		; 0C 05 07
	stz $9A06.w		; 9C 06 9A
	sta $92.b,X		; 95 92
	stx $9592.w		; 8E 92 95
	txs		; 9A
	stz $979A.w		; 9C 9A 97
	sta ($8E.b,S),Y		; 93 8E
	sta ($97.b,S),Y		; 93 97
	txs		; 9A
	stz $959A.w		; 9C 9A 95
	sta ($8E.b)		; 92 8E
	sta ($95.b)		; 92 95
	txs		; 9A
	stz $979A.w		; 9C 9A 97
	sta ($8E.b,S),Y		; 93 8E
	sta ($97.b,S),Y		; 93 97
	txs		; 9A
	sta $9598.w,X		; 9D 98 95
	sta ($91.b,S),Y		; 93 91
	sta ($96.b,S),Y		; 93 96
	txs		; 9A
	sta $969A.w,X		; 9D 9A 96
	sta ($91.b,S),Y		; 93 91
	sta ($96.b,S),Y		; 93 96
	txs		; 9A
	sta $9598.w,X		; 9D 98 95
	sta ($91.b,S),Y		; 93 91
	sta ($96.b,S),Y		; 93 96
	txs		; 9A
	sta $969A.w,X		; 9D 9A 96
	sta ($91.b,S),Y		; 93 91
	sta ($96.b,S),Y		; 93 96
	txs		; 9A
	stz $DF18.w		; 9C 18 DF
	tsb $249B.w		; 0C 9B 24
	txs		; 9A
	clc		; 18
	txs		; 9A
	bit $98.b		; 24 98
	bit $F5.b		; 24 F5
	rts		; 60

	cmp $DFE618.l,X		; DF 18 E6 DF
	asl $E8.b		; 06 E8
	trb $F8.b		; 14 F8
	sbc $48DFF2.l,X		; FF F2 DF 48
	sbc $60.b,X		; F5 60
	stx $8E06.w		; 8E 06 8E
	stx $918E.w		; 8E 8E 91
	clc		; 18
	cmp $60F530.l,X		; DF 30 F5 60
	sta $06.b		; 85 06
	sta $85.b		; 85 85
	sta $85.b		; 85 85
	clc		; 18
	cmp $1FE848.l,X		; DF 48 E8 1F
	sed		; F8
	sbc $24A4F2.l,X		; FF F2 A4 24
	lda ($24.b,X)		; A1 24
	sbc $60.b,X		; F5 60
	cmp $DFE618.l,X		; DF 18 E6 DF
	asl $F8.b		; 06 F8
	sbc $0982E8.l,X		; FF E8 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $127903.l,X		; DF 03 79 12
	cmp $DF1E7C.l,X		; DF 7C 1E DF
	asl $7E.b		; 06 7E
	ora ($DF.b)		; 12 DF
	asl $77.b		; 06 77
	asl $06DF.w,X		; 1E DF 06
	adc $F524.w,Y		; 79 24 F5
	rts		; 60

	cmp $DFE618.l,X		; DF 18 E6 DF
	asl $D0.b		; 06 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	tsb $D5D1.w		; 0C D1 D5
	asl $D5.b		; 06 D5
	dec $D6.b,X		; D6 D6
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	cmp ($D4.b),Y		; D1 D4
	tsb $D5.b		; 04 D5
	cmp $D6.b,X		; D5 D6
	tsb $D0D1.w		; 0C D1 D0
	cmp ($D0.b),Y		; D1 D0
	bne -47.b		; D0 D1
	bit $60DF.w,X		; 3C DF 60
	inc $DF.b		; E6 DF
	asl $DF.b		; 06 DF
	bit $F5.b		; 24 F5
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	txs		; 9A
	bit $F5.b		; 24 F5
	rts		; 60

	cmp $00E618.l,X		; DF 18 E6 00
	brk $00.b		; 00 00
	php		; 08
	sta [$03.b]		; 87 03
	brk $28.b		; 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $1D.b		; 00 1D
	tsb $DB0C.w		; 0C 0C DB
	plp		; 28
	brk $20.b		; 00 20
	plp		; 28
	php		; 08
	inc A		; 1A
	and #$00.b		; 29 00
	jsr $2808.w		; 20 08 28
	adc [$29.b]		; 67 29
	brk $19.b		; 00 19
	php		; 08
	clc		; 18
	ora ($2A.b,X)		; 01 2A
	brk $1F.b		; 00 1F
	clc		; 18
	php		; 08
	jmp $002A.w		; 4C 2A 00
	ora $971808.l,X		; 1F 08 18 97
	rol A		; 2A
	tsb $2416.w		; 0C 16 24
	bit $11.b		; 24 11
	pld		; 2B
	brk $D1.b		; 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $E0.b		; 00 E0
	cmp $0CEC06.l,X		; DF 06 EC 0C
	tsb $07.b		; 04 07
	cmp $12AD18.l,X		; DF 18 AD 12
	cmp $12AA06.l,X		; DF 06 AA 12
	cmp $12A606.l,X		; DF 06 A6 12
	cmp $12A306.l,X		; DF 06 A3 12
	cmp $09A606.l,X		; DF 06 A6 09
	cmp $30A803.l,X		; DF 03 A8 30
	cmp $12AD24.l,X		; DF 24 AD 12
	cmp $12AA06.l,X		; DF 06 AA 12
	cmp $12A606.l,X		; DF 06 A6 12
	cmp $12A306.l,X		; DF 06 A3 12
	cmp $09A606.l,X		; DF 06 A6 09
	cmp $30A803.l,X		; DF 03 A8 30
	cmp $12AD24.l,X		; DF 24 AD 12
	cmp $12B206.l,X		; DF 06 B2 12
	cmp $12AD06.l,X		; DF 06 AD 12
	cmp $12AF06.l,X		; DF 06 AF 12
	cmp $09AB06.l,X		; DF 06 AB 09
	cmp $30A803.l,X		; DF 03 A8 30
	cmp $12AD24.l,X		; DF 24 AD 12
	cmp $12B206.l,X		; DF 06 B2 12
	cmp $12AD06.l,X		; DF 06 AD 12
	cmp $12AF06.l,X		; DF 06 AF 12
	cmp $09AB06.l,X		; DF 06 AB 09
	cmp $30A803.l,X		; DF 03 A8 30
	cmp $09AD24.l,X		; DF 24 AD 09
	cmp $09AD03.l,X		; DF 03 AD 09
	cmp $12AE03.l,X		; DF 03 AE 12
	cmp $09AE06.l,X		; DF 06 AE 09
	cmp $1EAF03.l,X		; DF 03 AF 1E
	cmp $09AA06.l,X		; DF 06 AA 09
	cmp $12A803.l,X		; DF 03 A8 12
	cmp $1EAA06.l,X		; DF 06 AA 1E
	cmp $09AB06.l,X		; DF 06 AB 09
	cmp $09AB03.l,X		; DF 03 AB 09
	cmp $09AA03.l,X		; DF 03 AA 09
	cmp $09AA03.l,X		; DF 03 AA 09
	cmp $09A803.l,X		; DF 03 A8 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $57A806.l,X		; DF 06 A8 57
	cmp $3AE015.l,X		; DF 15 E0 3A
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $05.b		; 05 05
	ldx $09.b		; A6 09
	cmp $60F533.l,X		; DF 33 F5 60
	ldx $09.b		; A6 09
	cmp $09A60F.l,X		; DF 0F A6 09
	cmp $60F53F.l,X		; DF 3F F5 60
	ldx $09.b		; A6 09
	cmp $09A60F.l,X		; DF 0F A6 09
	cmp $60F53F.l,X		; DF 3F F5 60
	ldx $09.b		; A6 09
	cmp $09A60F.l,X		; DF 0F A6 09
	cmp $60F53F.l,X		; DF 3F F5 60
	ldx $09.b		; A6 09
	cmp $09A60F.l,X		; DF 0F A6 09
	cmp $60F54B.l,X		; DF 4B F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	lda $DF09.w		; AD 09 DF
	ora $28E1E0.l		; 0F E0 E1 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $05.b		; 05 05
	stz $DF09.w,X		; 9E 09 DF
	and ($F5.b,S),Y		; 33 F5
	rts		; 60

	sta $0FDF09.l,X		; 9F 09 DF 0F
	stz $DF09.w,X		; 9E 09 DF
	and $9F60F5.l,X		; 3F F5 60 9F
	ora #$DF.b		; 09 DF
	ora $DF099E.l		; 0F 9E 09 DF
	and $9F60F5.l,X		; 3F F5 60 9F
	ora #$DF.b		; 09 DF
	ora $DF099E.l		; 0F 9E 09 DF
	and $9F60F5.l,X		; 3F F5 60 9F
	ora #$DF.b		; 09 DF
	ora $DF099E.l		; 0F 9E 09 DF
	ora $E8.b,S		; 03 E8
	inc A		; 1A
	stz $9C30.w,X		; 9E 30 9C
	bit $9A.b		; 24 9A
	bmi -104.b		; 30 98
	clc		; 18
	txs		; 9A
	bit $97.b		; 24 97
	bmi -108.b		; 30 94
	bit $93.b		; 24 93
	mvn $20,$E8		; 54 E8 20
	lda $09.b,S		; A3 09
	cmp $20E00F.l,X		; DF 0F E0 20
	and #$DF.b		; 29 DF
	asl $F8.b		; 06 F8
	sbc $0CDFF2.l,X		; FF F2 DF 0C
	sta ($06.b)		; 92 06
	cmp $92DF9A.l,X		; DF 9A DF 92
	cmp $9ADF99.l,X		; DF 99 DF 9A
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $95DF99.l,X		; DF 99 DF 95
	cmp $06922A.l,X		; DF 2A 92 06
	cmp $92DF9A.l,X		; DF 9A DF 92
	cmp $9ADF99.l,X		; DF 99 DF 9A
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $95DF99.l,X		; DF 99 DF 95
	cmp $06922A.l,X		; DF 2A 92 06
	cmp $92DF9A.l,X		; DF 9A DF 92
	cmp $9ADF99.l,X		; DF 99 DF 9A
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $95DF99.l,X		; DF 99 DF 95
	cmp $06922A.l,X		; DF 2A 92 06
	cmp $92DF9A.l,X		; DF 9A DF 92
	cmp $9ADF99.l,X		; DF 99 DF 9A
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $95DF99.l,X		; DF 99 DF 95
	cmp $06922A.l,X		; DF 2A 92 06
	cmp $92DF9A.l,X		; DF 9A DF 92
	cmp $96DF99.l,X		; DF 99 DF 96
	cmp $06922A.l,X		; DF 2A 92 06
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $95DF98.l,X		; DF 98 DF 95
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $93DF9A.l,X		; DF 9A DF 93
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $95DF9C.l,X		; DF 9C DF 95
	cmp $69E01E.l,X		; DF 1E E0 69
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b		; 05 03
	sed		; F8
	sbc $30A1EE.l,X		; FF EE A1 30
	lda ($A3.b,X)		; A1 A3
	clc		; 18
	cmp $DF9F0C.l,X		; DF 0C 9F DF
	bit $A1.b		; 24 A1
	bit $30A1.w,X		; 3C A1 30
	lda $18.b,S		; A3 18
	cmp $DF9F0C.l,X		; DF 0C 9F DF
	bit $A1.b		; 24 A1
	bit $30A1.w,X		; 3C A1 30
	ldx $18.b		; A6 18
	cmp $DFA50C.l,X		; DF 0C A5 DF
	bit $A1.b		; 24 A1
	bit $30A1.w,X		; 3C A1 30
	ldx $18.b		; A6 18
	cmp $DFA50C.l,X		; DF 0C A5 DF
	bit $A1.b		; 24 A1
	bit $18A2.w,X		; 3C A2 18
	cmp $30A10C.l,X		; DF 0C A1 30
	stz $9F3C.w,X		; 9E 3C 9F
	bmi -93.b		; 30 A3
	tsb $DFA3.w		; 0C A3 DF
	lda $54.b,S		; A3 54
	cmp $07E018.l,X		; DF 18 E0 07
	rol A		; 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $03.b		; 05 03
	sed		; F8
	sbc $309EEE.l,X		; FF EE 9E 30
	stz $189A.w		; 9C 9A 18
	cmp $DF990C.l,X		; DF 0C 99 DF
	bit $9E.b		; 24 9E
	bit $309C.w,X		; 3C 9C 30
	txs		; 9A
	clc		; 18
	cmp $DF990C.l,X		; DF 0C 99 DF
	bit $9E.b		; 24 9E
	bit $309C.w,X		; 3C 9C 30
	stz $DF18.w		; 9C 18 DF
	tsb $DF9F.w		; 0C 9F DF
	bit $9E.b		; 24 9E
	bit $309C.w,X		; 3C 9C 30
	stz $DF18.w		; 9C 18 DF
	tsb $DF9F.w		; 0C 9F DF
	bit $9E.b		; 24 9E
	bit $189E.w,X		; 3C 9E 18
	cmp $309E0C.l,X		; DF 0C 9E 30
	txs		; 9A
	bit $309A.w,X		; 3C 9A 30
	txs		; 9A
	tsb $DF9C.w		; 0C 9C DF
	stz $DF54.w		; 9C 54 DF
	clc		; 18
	cpx #$52.b		; E0 52
	rol A		; 2A
	cmp $FFF806.l,X		; DF 06 F8 FF
	inx		; E8
	.db $82, $18, $DF		; 82 18 DF
	tsb $7A82.w		; 0C 82 7A
	ora ($86.b)		; 12 86
	asl $DF.b		; 06 DF
	tsb $7B7A.w		; 0C 7A 7B
	clc		; 18
	cmp $DF7D0C.l,X		; DF 0C 7D DF
	adc $82DF.w,X		; 7D DF 82
	bit $DF.b		; 24 DF
	tsb $7A82.w		; 0C 82 7A
	ora ($86.b)		; 12 86
	asl $DF.b		; 06 DF
	tsb $7B7A.w		; 0C 7A 7B
	clc		; 18
	cmp $DF7D0C.l,X		; DF 0C 7D DF
	adc $82DF.w,X		; 7D DF 82
	bit $DF.b		; 24 DF
	tsb $7A82.w		; 0C 82 7A
	ora ($86.b)		; 12 86
	asl $DF.b		; 06 DF
	tsb $7B7A.w		; 0C 7A 7B
	clc		; 18
	cmp $DF7D0C.l,X		; DF 0C 7D DF
	adc $82DF.w,X		; 7D DF 82
	bit $DF.b		; 24 DF
	tsb $7A82.w		; 0C 82 7A
	ora ($86.b)		; 12 86
	asl $DF.b		; 06 DF
	tsb $7B7A.w		; 0C 7A 7B
	clc		; 18
	cmp $DF7D0C.l,X		; DF 0C 7D DF
	adc $82DF.w,X		; 7D DF 82
	bit $DF.b		; 24 DF
	tsb $8182.w		; 0C 82 81
	clc		; 18
	cmp $DF7F0C.l,X		; DF 0C 7F DF
	adc $DF7D89.l,X		; 7F 89 7D DF
	adc $7D89.w,X		; 7D 89 7D
	tda		; 7B
	clc		; 18
	cmp $7C0C7C.l,X		; DF 7C 0C 7C
	cmp $DF247D.l,X		; DF 7D 24 DF
	tsb $7D7D.w		; 0C 7D 7D
	sty $89.b		; 84 89
	adc $99E0.w,X		; 7D E0 99
	rol A		; 2A
	cmp $0CD006.l,X		; DF 06 D0 0C
	cmp ($D1.b)		; D2 D1
	bne -48.b		; D0 D0
	cmp ($06.b)		; D2 06
	bne -47.b		; D0 D1
	tsb $D0D0.w		; 0C D0 D0
	cmp ($D1.b)		; D2 D1
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	cmp ($DF.b),Y		; D1 DF
	cmp ($D1.b)		; D2 D1
	bne -48.b		; D0 D0
	cmp ($06.b)		; D2 06
	bne -47.b		; D0 D1
	tsb $D0D0.w		; 0C D0 D0
	cmp ($D1.b)		; D2 D1
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	cmp ($DF.b),Y		; D1 DF
	cmp ($D1.b)		; D2 D1
	bne -48.b		; D0 D0
	cmp ($06.b)		; D2 06
	bne -47.b		; D0 D1
	tsb $D0D0.w		; 0C D0 D0
	cmp ($D1.b)		; D2 D1
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	cmp ($DF.b),Y		; D1 DF
	cmp ($D1.b)		; D2 D1
	bne -48.b		; D0 D0
	cmp ($06.b)		; D2 06
	bne -47.b		; D0 D1
	tsb $D0D0.w		; 0C D0 D0
	cmp ($D1.b)		; D2 D1
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	cmp ($DF.b),Y		; D1 DF
	cmp ($D1.b)		; D2 D1
	bne -48.b		; D0 D0
	cmp ($D1.b)		; D2 D1
	bne -33.b		; D0 DF
	bne -47.b		; D0 D1
	bne -33.b		; D0 DF
	bne -47.b		; D0 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b)		; D2 D0
	bne -47.b		; D0 D1
	bne -33.b		; D0 DF
	cmp ($D1.b)		; D2 D1
	bne -33.b		; D0 DF
	cmp ($D5.b),Y		; D1 D5
	asl $D5.b		; 06 D5
	dec $0C.b,X		; D6 0C
	cpx #$13.b		; E0 13
	pld		; 2B
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jmp.w [$0004]		; DC 04 00
	plp		; 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $18.b		; 00 18
	rol A		; 2A
	trb $2952.w		; 1C 52 29
	brk $18.b		; 00 18
	bpl  32.b		; 10 20
	sta $29.b,S		; 83 29
	brk $18.b		; 00 18
	php		; 08
	bpl  68.b		; 10 44
	rol A		; 2A
	brk $1E.b		; 00 1E
	clc		; 18
	php		; 08
	txa		; 8A
	rol A		; 2A
	brk $1F.b		; 00 1F
	bpl   8.b		; 10 08
	wai		; CB
	rol A		; 2A
	brk $1F.b		; 00 1F
	php		; 08
	bpl  33.b		; 10 21
	pld		; 2B
	tsb $241B.w		; 0C 1B 24
	bit $FD.b		; 24 FD
	pld		; 2B
	brk $D1.b		; 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $A2.b		; 00 A2
	cmp $18EC06.l,X		; DF 06 EC 18
	cop $02.b		; 02 02
	sed		; F8
	sbc $059AF0.l,X		; FF F0 9A 05
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $DF9A03.l,X		; DF 03 9A DF
	ora ($9A.b,X)		; 01 9A
	ora $DF.b		; 05 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	cmp $059A01.l,X		; DF 01 9A 05
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $DF9A03.l,X		; DF 03 9A DF
	ora ($9A.b,X)		; 01 9A
	phd		; 0B
	cmp $0BA301.l,X		; DF 01 A3 0B
	cmp $059E01.l,X		; DF 01 9E 05
	cmp $DF9C03.l,X		; DF 03 9C DF
	ora ($9A.b,X)		; 01 9A
	ora $DF.b		; 05 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	cmp $059A01.l,X		; DF 01 9A 05
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $DF9A03.l,X		; DF 03 9A DF
	ora ($9A.b,X)		; 01 9A
	ora $DF.b		; 05 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	cmp $0B9A01.l,X		; DF 01 9A 0B
	cmp $0BA301.l,X		; DF 01 A3 0B
	cmp $059E01.l,X		; DF 01 9E 05
	cmp $DF9C03.l,X		; DF 03 9C DF
	ora ($9A.b,X)		; 01 9A
	ora $DF.b		; 05 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	cmp $059A01.l,X		; DF 01 9A 05
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $099A03.l,X		; DF 03 9A 09
	cmp $DF9A03.l,X		; DF 03 9A DF
	ora ($9A.b,X)		; 01 9A
	ora $DF.b		; 05 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	cmp $0B9A01.l,X		; DF 01 9A 0B
	cmp $0BA301.l,X		; DF 01 A3 0B
	cmp $0BA401.l,X		; DF 01 A4 0B
	cmp $0BA601.l,X		; DF 01 A6 0B
	cmp $0B9A01.l,X		; DF 01 9A 0B
	cmp $0BA601.l,X		; DF 01 A6 0B
	cmp $20A401.l,X		; DF 01 A4 20
	cmp $0BA304.l,X		; DF 04 A3 0B
	cmp $0B9C01.l,X		; DF 01 9C 0B
	cmp $0BA301.l,X		; DF 01 A3 0B
	cmp $0BA101.l,X		; DF 01 A1 0B
	cmp $0BA301.l,X		; DF 01 A3 0B
	cmp $0BA401.l,X		; DF 01 A4 0B
	cmp $0BA601.l,X		; DF 01 A6 0B
	cmp $0B9A01.l,X		; DF 01 9A 0B
	cmp $0BA601.l,X		; DF 01 A6 0B
	cmp $20A401.l,X		; DF 01 A4 20
	cmp $0BA304.l,X		; DF 04 A3 0B
	cmp $0B9C01.l,X		; DF 01 9C 0B
	cmp $0BA301.l,X		; DF 01 A3 0B
	cmp $A2E201.l,X		; DF 01 E2 A2
	jsr $04DF.w		; 20 DF 04
	lda ($16.b,X)		; A1 16
	cmp $059F02.l,X		; DF 02 9F 05
	cmp $16A107.l,X		; DF 07 A1 16
	cmp $059F02.l,X		; DF 02 9F 05
	cmp $0BA107.l,X		; DF 07 A1 0B
	cmp $1EA61B.l,X		; DF 1B A6 1E
	cmp $3AE004.l,X		; DF 04 E0 3A
	plp		; 28
	cmp $FFF806.l,X		; DF 06 F8 FF
	beq -25.b		; F0 E7
	php		; 08
	clc		; 18
	jsr ($DF14.w,X)		; FC 14 DF
	ora ($E1.b,X)		; 01 E1
	dec A		; 3A
	plp		; 28
	ldx #$20.b		; A2 20
	cmp $10E703.l,X		; DF 03 E7 10
	jsr $169E.w		; 20 9E 16
	cmp $059C02.l,X		; DF 02 9C 05
	cmp $169E07.l,X		; DF 07 9E 16
	cmp $059C02.l,X		; DF 02 9C 05
	cmp $0C9F07.l,X		; DF 07 9F 0C
	cmp $1EA118.l,X		; DF 18 A1 1E
	cmp $54E006.l,X		; DF 06 E0 54
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $04.b		; 05 04
	inx		; E8
	clc		; 18
	sed		; F8
	sbc $08DFF0.l,X		; FF F0 DF 08
	stx $04.b,Y		; 96 04
	sta [$DF.b],Y		; 97 DF
	php		; 08
	txs		; 9A
	tsb $DF.b		; 04 DF
	stx $97.b,Y		; 96 97
	tsb $049A.w		; 0C 9A 04
	cmp $04971C.l,X		; DF 1C 97 04
	tya		; 98
	cmp $049C08.l,X		; DF 08 9C 04
	cmp $0C9897.l,X		; DF 97 98 0C
	txs		; 9A
	tsb $DF.b		; 04 DF
	trb $0496.w		; 1C 96 04
	sta [$DF.b],Y		; 97 DF
	php		; 08
	txs		; 9A
	tsb $DF.b		; 04 DF
	stx $97.b,Y		; 96 97
	tsb $049A.w		; 0C 9A 04
	cmp $04971C.l,X		; DF 1C 97 04
	tya		; 98
	cmp $049C08.l,X		; DF 08 9C 04
	cmp $0C9897.l,X		; DF 97 98 0C
	txs		; 9A
	tsb $DF.b		; 04 DF
	trb $0496.w		; 1C 96 04
	sta [$DF.b],Y		; 97 DF
	php		; 08
	txs		; 9A
	tsb $DF.b		; 04 DF
	stx $97.b,Y		; 96 97
	tsb $049A.w		; 0C 9A 04
	cmp $04971C.l,X		; DF 1C 97 04
	tya		; 98
	cmp $049C08.l,X		; DF 08 9C 04
	cmp $0C9897.l,X		; DF 97 98 0C
	txs		; 9A
	tsb $DF.b		; 04 DF
	trb $0496.w		; 1C 96 04
	sta [$DF.b],Y		; 97 DF
	php		; 08
	txs		; 9A
	tsb $DF.b		; 04 DF
	stx $96.b,Y		; 96 96
	tsb $049A.w		; 0C 9A 04
	cmp $04971C.l,X		; DF 1C 97 04
	tya		; 98
	cmp $049C08.l,X		; DF 08 9C 04
	cmp $0C9897.l,X		; DF 97 98 0C
	txs		; 9A
	tsb $DF.b		; 04 DF
	trb $0496.w		; 1C 96 04
	sta [$DF.b],Y		; 97 DF
	php		; 08
	txs		; 9A
	tsb $DF.b		; 04 DF
	stx $96.b,Y		; 96 96
	tsb $049A.w		; 0C 9A 04
	cmp $04971C.l,X		; DF 1C 97 04
	tya		; 98
	cmp $049C08.l,X		; DF 08 9C 04
	cmp $0C9897.l,X		; DF 97 98 0C
	txs		; 9A
	tsb $DF.b		; 04 DF
	trb $E8.b		; 14 E8
	clc		; 18
	sed		; F8
	sbc $169AEE.l,X		; FF EE 9A 16
	cmp $069A02.l,X		; DF 02 9A 06
	cmp $DF169A.l,X		; DF 9A 16 DF
	cop $9A.b		; 02 9A
	asl $DF.b		; 06 DF
	stz $DF0A.w		; 9C 0A DF
	inc A		; 1A
	stz $DF1E.w,X		; 9E 1E DF
	asl $E0.b		; 06 E0
	bit #$29.b		; 89 29
	cmp $0CEC06.l,X		; DF 06 EC 0C
	tsb $07.b		; 04 07
	cmp $24F524.l,X		; DF 24 F5 24
	sbc $24.b,X		; F5 24
	sbc $24.b,X		; F5 24
	sbc $24.b,X		; F5 24
	sbc $24.b,X		; F5 24
	sbc $24.b,X		; F5 24
	sbc $24.b,X		; F5 24
	lda ($24.b,X)		; A1 24
	ldy #$24.b		; A0 24
	sta $0C9E24.l,X		; 9F 24 9E 0C
	sta $24A1A0.l,X		; 9F A0 A1 24
	ldy #$24.b		; A0 24
	sta $0C9E24.l,X		; 9F 24 9E 0C
	stz $9A9B.w		; 9C 9B 9A
	stz $A0A1.w,X		; 9E A1 A0
	sta $989A.w,X		; 9D 9A 98
	txs		; 9A
	stz $9C9E.w		; 9C 9E 9C
	txy		; 9B
	txs		; 9A
	clc		; 18
	stz $9E0C.w		; 9C 0C 9E
	clc		; 18
	sta $DFA10C.l,X		; 9F 0C A1 DF
	clc		; 18
	txs		; 9A
	bit $E0.b		; 24 E0
	lsr A		; 4A
	rol A		; 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $02.b		; 05 02
	sed		; F8
	sbc $24A3EC.l,X		; FF EC A3 24
	lda $24.b,S		; A3 24
	ldy $24.b		; A4 24
	ldy $24.b		; A4 24
	lda $24.b,S		; A3 24
	lda $24.b,S		; A3 24
	ldy $24.b		; A4 24
	ldy $24.b		; A4 24
	lda $24.b,S		; A3 24
	lda $24.b,S		; A3 24
	ldy $24.b		; A4 24
	ldy $24.b		; A4 24
	lda ($24.b,X)		; A1 24
	ldy #$24.b		; A0 24
	sta $249E24.l,X		; 9F 24 9E 24
	lda ($24.b,X)		; A1 24
	ldy #$24.b		; A0 24
	sta $249E24.l,X		; 9F 24 9E 24
	lda $18.b,S		; A3 18
	lda $0C.b,S		; A3 0C
	lda $18.b,S		; A3 18
	lda $0C.b,S		; A3 0C
	ldy $DF.b		; A4 DF
	clc		; 18
	ldx $24.b		; A6 24
	cpx #$90.b		; E0 90
	rol A		; 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $02.b		; 05 02
	sed		; F8
	sbc $0CA1EC.l,X		; FF EC A1 0C
	stz $9CA1.w,X		; 9E A1 9C
	bit $9F.b		; 24 9F
	tsb $9D9C.w		; 0C 9C 9D
	stz $A124.w,X		; 9E 24 A1
	tsb $9F9E.w		; 0C 9E 9F
	stz $9F24.w		; 9C 24 9F
	tsb $9D9C.w		; 0C 9C 9D
	stz $A124.w,X		; 9E 24 A1
	tsb $9F9E.w		; 0C 9E 9F
	stz $9F24.w		; 9C 24 9F
	tsb $9D9C.w		; 0C 9C 9D
	stz $9E24.w,X		; 9E 24 9E
	tsb $9E97.w		; 0C 97 9E
	sta $9C24.w,X		; 9D 24 9C
	tsb $9C98.w		; 0C 98 9C
	tya		; 98
	clc		; 18
	txs		; 9A
	tsb $979E.w		; 0C 9E 97
	stz $249D.w,X		; 9E 9D 24
	stz $980C.w		; 9C 0C 98
	stz $2498.w		; 9C 98 24
	sta $0C9F18.l,X		; 9F 18 9F 0C
	sta $0C9F18.l,X		; 9F 18 9F 0C
	lda ($DF.b,X)		; A1 DF
	clc		; 18
	txs		; 9A
	bit $E0.b		; 24 E0
	cmp ($2A.b),Y		; D1 2A
	cmp $FFF806.l,X		; DF 06 F8 FF
	inx		; E8
	tda		; 7B
	ora ($DF.b)		; 12 DF
	cop $82.b		; 02 82
	tsb $7F.b		; 04 7F
	asl $DF.b		; 06 DF
	cop $7B.b		; 02 7B
	tsb $7C.b		; 04 7C
	tsb $1284.w		; 0C 84 12
	cmp $047C02.l,X		; DF 02 7C 04
	adc $DF12.w,X		; 7D 12 DF
	cop $84.b		; 02 84
	tsb $80.b		; 04 80
	asl $DF.b		; 06 DF
	cop $84.b		; 02 84
	tsb $82.b		; 04 82
	ora ($DF.b)		; 12 DF
	cop $7D.b		; 02 7D
	tsb $82.b		; 04 82
	tsb $127B.w		; 0C 7B 12
	cmp $048202.l,X		; DF 02 82 04
	adc $02DF06.l,X		; 7F 06 DF 02
	tda		; 7B
	tsb $7C.b		; 04 7C
	tsb $1284.w		; 0C 84 12
	cmp $047C02.l,X		; DF 02 7C 04
	adc $DF12.w,X		; 7D 12 DF
	cop $84.b		; 02 84
	tsb $80.b		; 04 80
	asl $DF.b		; 06 DF
	cop $84.b		; 02 84
	tsb $82.b		; 04 82
	ora ($DF.b)		; 12 DF
	cop $7D.b		; 02 7D
	tsb $82.b		; 04 82
	tsb $127B.w		; 0C 7B 12
	cmp $048202.l,X		; DF 02 82 04
	adc $02DF06.l,X		; 7F 06 DF 02
	tda		; 7B
	tsb $7C.b		; 04 7C
	tsb $1284.w		; 0C 84 12
	cmp $047C02.l,X		; DF 02 7C 04
	adc $DF12.w,X		; 7D 12 DF
	cop $84.b		; 02 84
	tsb $80.b		; 04 80
	asl $DF.b		; 06 DF
	cop $84.b		; 02 84
	tsb $82.b		; 04 82
	ora ($DF.b)		; 12 DF
	cop $7D.b		; 02 7D
	tsb $82.b		; 04 82
	tsb $127F.w		; 0C 7F 12
	cmp $048602.l,X		; DF 02 86 04
	.db $82, $06, $DF		; 82 06 DF
	cop $7F.b		; 02 7F
	tsb $7E.b		; 04 7E
	tsb $1285.w		; 0C 85 12
	cmp $047C02.l,X		; DF 02 7C 04
	adc $DF12.w,X		; 7D 12 DF
	cop $84.b		; 02 84
	tsb $80.b		; 04 80
	asl $DF.b		; 06 DF
	cop $84.b		; 02 84
	tsb $82.b		; 04 82
	ora ($DF.b)		; 12 DF
	cop $7D.b		; 02 7D
	tsb $82.b		; 04 82
	tsb $127F.w		; 0C 7F 12
	cmp $048602.l,X		; DF 02 86 04
	.db $82, $06, $DF		; 82 06 DF
	cop $7F.b		; 02 7F
	tsb $7E.b		; 04 7E
	tsb $1285.w		; 0C 85 12
	cmp $047C02.l,X		; DF 02 7C 04
	adc $DF12.w,X		; 7D 12 DF
	cop $84.b		; 02 84
	tsb $80.b		; 04 80
	asl $DF.b		; 06 DF
	cop $84.b		; 02 84
	tsb $82.b		; 04 82
	ora ($DF.b)		; 12 DF
	cop $7A.b		; 02 7A
	tsb $82.b		; 04 82
	tsb $927B.w		; 0C 7B 92
	bcc 123.b		; 90 7B
	sta ($90.b)		; 92 90
	adc $8487.w,X		; 7D 87 84
	bra 125.b		; 80 7D
	.db $82, $E0, $23		; 82 E0 23
	pld		; 2B
	cmp $0CD006.l,X		; DF 06 D0 0C
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($D2.b)		; D2 D2
	php		; 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($D2.b)		; D2 D2
	tsb $D0.b		; 04 D0
	cmp ($D0.b)		; D2 D0
	tsb $08D2.w		; 0C D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($D2.b)		; D2 D2
	php		; 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($D2.b)		; D2 D2
	tsb $D0.b		; 04 D0
	cmp ($D0.b)		; D2 D0
	tsb $08D2.w		; 0C D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($D2.b)		; D2 D2
	php		; 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne  12.b		; D0 0C
	cmp ($D2.b)		; D2 D2
	tsb $D0.b		; 04 D0
	cmp ($D0.b)		; D2 D0
	php		; 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	php		; 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($D2.b)		; D2 D2
	cmp ($D0.b)		; D2 D0
	tsb $D0D2.w		; 0C D2 D0
	bne -46.b		; D0 D2
	bne -48.b		; D0 D0
	cmp ($D0.b)		; D2 D0
	tsb $D2.b		; 04 D2
	cmp ($D0.b)		; D2 D0
	cmp ($D2.b)		; D2 D2
	bne -46.b		; D0 D2
	cmp ($D0.b)		; D2 D0
	cmp ($D2.b)		; D2 D2
	cpx #$FF.b		; E0 FF
	pld		; 2B
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	pha		; 48
	tsb $00.b		; 04 00
	plp		; 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $1A.b		; 00 1A
	bit $34.b,X		; 34 34
	tsb $29.b		; 04 29
	brk $1F.b		; 00 1F
	php		; 08
	clc		; 18
	eor ($29.b,X)		; 41 29
	brk $1A.b		; 00 1A
	jsr $CB20.w		; 20 20 CB
	and #$00.b		; 29 00
	inc A		; 1A
	php		; 08
	plp		; 28
	adc $2A.b,X		; 75 2A
	brk $1A.b		; 00 1A
	plp		; 28
	php		; 08
	ora $1A002B.l,X		; 1F 2B 00 1A
	jsr $7920.w		; 20 20 79
	pld		; 2B
	tsb $2417.w		; 0C 17 24
	bit $D2.b		; 24 D2
	pld		; 2B
	brk $D1.b		; 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $C2.b		; 00 C2
	cmp $0CEC06.l,X		; DF 06 EC 0C
	tsb $04.b		; 04 04
	tax		; AA
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora ($DF.b)		; 12 DF
	asl $A1.b		; 06 A1
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora #$DF.b		; 09 DF
	ora $AA.b,S		; 03 AA
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora ($DF.b)		; 12 DF
	asl $A8.b		; 06 A8
	ora ($DF.b)		; 12 DF
	asl $AA.b		; 06 AA
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora #$DF.b		; 09 DF
	ora $DF09A8.l		; 0F A8 09 DF
	ora $AA.b,S		; 03 AA
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora ($DF.b)		; 12 DF
	asl $A1.b		; 06 A1
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora ($DF.b)		; 12 DF
	asl $A5.b		; 06 A5
	ora ($DF.b)		; 12 DF
	asl $A3.b		; 06 A3
	ora ($DF.b)		; 12 DF
	asl $A8.b		; 06 A8
	ora ($DF.b)		; 12 DF
	tay		; A8
	ora #$DF.b		; 09 DF
	ora $AA.b,S		; 03 AA
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora ($DF.b)		; 12 DF
	asl $A1.b		; 06 A1
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora #$DF.b		; 09 DF
	ora $AA.b,S		; 03 AA
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora ($DF.b)		; 12 DF
	asl $A8.b		; 06 A8
	ora ($DF.b)		; 12 DF
	asl $AA.b		; 06 AA
	asl $06DF.w,X		; 1E DF 06
	tay		; A8
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora #$DF.b		; 09 DF
	ora $A8.b,S		; 03 A8
	ora #$DF.b		; 09 DF
	ora $AA.b,S		; 03 AA
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora #$DF.b		; 09 DF
	ora $A3.b,S		; 03 A3
	ora #$DF.b		; 09 DF
	ora $A5.b,S		; 03 A5
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora #$DF.b		; 09 DF
	ora $AB.b,S		; 03 AB
	ora #$DF.b		; 09 DF
	ora $AA.b,S		; 03 AA
	ora ($DF.b)		; 12 DF
	asl $A8.b		; 06 A8
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	asl $06DF.w,X		; 1E DF 06
	ldx $09.b		; A6 09
	cmp $09A303.l,X		; DF 03 A3 09
	cmp $09A503.l,X		; DF 03 A5 09
	cmp $09A603.l,X		; DF 03 A6 09
	cmp $09A303.l,X		; DF 03 A3 09
	cmp $09AD03.l,X		; DF 03 AD 09
	cmp $09AA03.l,X		; DF 03 AA 09
	cmp $09A603.l,X		; DF 03 A6 09
	cmp $09A103.l,X		; DF 03 A1 09
	cmp $12A303.l,X		; DF 03 A3 12
	cmp $12A506.l,X		; DF 06 A5 12
	cmp $27A606.l,X		; DF 06 A6 27
	cmp $3AE009.l,X		; DF 09 E0 3A
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	tsb $03.b		; 04 03
	sed		; F8
	sbc $30DFF2.l,X		; FF F2 DF 30
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	lda $AF0C.w		; AD 0C AF
	lda ($AD.b),Y		; B1 AD
	lda ($18.b)		; B2 18
	lda $ADB6.w		; AD B6 AD
	lda $0CAEAB.l		; AF AB AE 0C
	lda $AFAEB1.l		; AF B1 AE AF
	clc		; 18
	lda $AFAB.w		; AD AB AF
	lda ($B1.b)		; B2 B1
	lda ($24.b)		; B2 24
	cmp $ADAB0C.l,X		; DF 0C AB AD
	lda $ADAAAB.l		; AF AB AA AD
	lda ($B6.b)		; B2 B6
	lda [$18.b],Y		; B7 18
	ldy $B2.b,X		; B4 B2
	bmi -32.b		; 30 E0
	asl A		; 0A
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0405.w		; 0C 05 04
	sta $15.b,X		; 95 15
	cmp $159203.l,X		; DF 03 92 15
	cmp $158E03.l,X		; DF 03 8E 15
	cmp $0C9203.l,X		; DF 03 92 0C
	sta $97.b,X		; 95 97
	ora $DF.b,X		; 15 DF
	ora $93.b,S		; 03 93
	ora $DF.b,X		; 15 DF
	ora $95.b,S		; 03 95
	tsb $DF92.w		; 0C 92 DF
	sta ($95.b,S),Y		; 93 95
	ora $DF.b,X		; 15 DF
	ora $92.b,S		; 03 92
	ora $DF.b,X		; 15 DF
	ora $8E.b,S		; 03 8E
	ora $DF.b,X		; 15 DF
	ora $92.b,S		; 03 92
	ora $DF.b,X		; 15 DF
	ora $90.b,S		; 03 90
	ora $DF.b,X		; 15 DF
	ora $8E.b,S		; 03 8E
	ora $DF.b,X		; 15 DF
	ora $93.b,S		; 03 93
	ora $DF.b,X		; 15 DF
	ora $950C93.l		; 0F 93 0C 95
	ora $DF.b,X		; 15 DF
	ora $92.b,S		; 03 92
	ora $DF.b,X		; 15 DF
	ora $8E.b,S		; 03 8E
	ora $DF.b,X		; 15 DF
	ora $92.b,S		; 03 92
	tsb $9795.w		; 0C 95 97
	ora $DF.b,X		; 15 DF
	ora $93.b,S		; 03 93
	ora $DF.b,X		; 15 DF
	ora $96.b,S		; 03 96
	and ($DF.b,X)		; 21 DF
	ora $99.b,S		; 03 99
	tsb $9997.w		; 0C 97 99
	txs		; 9A
	sta [$93.b],Y		; 97 93
	sta $97.b,X		; 95 97
	sta [$95.b],Y		; 97 95
	ora $DF.b,X		; 15 DF
	ora $93.b,S		; 03 93
	ora $DF.b,X		; 15 DF
	ora $92.b,S		; 03 92
	and ($DF.b,X)		; 21 DF
	ora $92.b,S		; 03 92
	tsb $908E.w		; 0C 8E 90
	sta ($8E.b)		; 92 8E
	stz $959A.w,X		; 9E 9A 95
	sta ($93.b)		; 92 93
	ora $DF.b,X		; 15 DF
	ora $93.b,S		; 03 93
	ora $DF.b,X		; 15 DF
	ora $92.b,S		; 03 92
	rol A		; 2A
	cmp $47E006.l,X		; DF 06 E0 47
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	tsb $04.b		; 04 04
	cmp $06950C.l,X		; DF 0C 95 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069412.l,X		; DF 12 94 06
	cmp $069412.l,X		; DF 12 94 06
	cmp $069312.l,X		; DF 12 93 06
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $069512.l,X		; DF 12 95 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069612.l,X		; DF 12 96 06
	cmp $069612.l,X		; DF 12 96 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069312.l,X		; DF 12 93 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $069312.l,X		; DF 12 93 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $069712.l,X		; DF 12 97 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $069712.l,X		; DF 12 97 06
	cmp $069312.l,X		; DF 12 93 06
	cmp $069512.l,X		; DF 12 95 06
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $29D1E0.l,X		; DF E0 D1 29
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $04.b		; 05 04
	cmp $06920C.l,X		; DF 0C 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068D12.l,X		; DF 12 8D 06
	cmp $8DDF8D.l,X		; DF 8D DF 8D
	cmp $069212.l,X		; DF 12 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069012.l,X		; DF 12 90 06
	cmp $069012.l,X		; DF 12 90 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068D12.l,X		; DF 12 8D 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069312.l,X		; DF 12 93 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $068E12.l,X		; DF 12 8E 06
	cmp $068D12.l,X		; DF 12 8D 06
	cmp $069212.l,X		; DF 12 92 06
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $2A7BE0.l,X		; DF E0 7B 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $04.b		; 05 04
	.db $82, $0C, $DF		; 82 0C DF
	adc $82DF.w,X		; 7D DF 82
	cmp $7BDF7D.l,X		; DF 7D DF 7B
	cmp $82DF7B.l,X		; DF 7B DF 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $84DF7D.l,X		; DF 7D DF 84
	cmp $7DDF84.l,X		; DF 84 DF 7D
	adc $827D81.l,X		; 7F 81 7D 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $7BDF7D.l,X		; DF 7D DF 7B
	cmp $7ADF7B.l,X		; DF 7B DF 7A
	cmp $7FDF81.l,X		; DF 81 DF 7F
	cmp $7BDF7D.l,X		; DF 7D DF 7B
	cmp $7DDF82.l,X		; DF 82 DF 7D
	cmp $82DF7D.l,X		; DF 7D DF 82
	sta ($7F.b,X)		; 81 7F
	adc $DF7B.w,X		; 7D 7B DF
	.db $82, $DF, $7A		; 82 DF 7A
	cmp $7BDF82.l,X		; DF 82 DF 7B
	cmp $82DF7D.l,X		; DF 7D DF 82
	adc $817F.w,X		; 7D 7F 81
	cpx #$25.b		; E0 25
	pld		; 2B
	cmp $FFF806.l,X		; DF 06 F8 FF
	inx		; E8
	.db $82, $0C, $DF		; 82 0C DF
	adc $82DF.w,X		; 7D DF 82
	cmp $7BDF7D.l,X		; DF 7D DF 7B
	cmp $82DF7B.l,X		; DF 7B DF 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $84DF7D.l,X		; DF 7D DF 84
	cmp $7DDF84.l,X		; DF 84 DF 7D
	adc $827D81.l,X		; 7F 81 7D 82
	cmp $82DF7D.l,X		; DF 7D DF 82
	cmp $7BDF7D.l,X		; DF 7D DF 7B
	cmp $7ADF7B.l,X		; DF 7B DF 7A
	cmp $7FDF81.l,X		; DF 81 DF 7F
	cmp $7BDF7D.l,X		; DF 7D DF 7B
	cmp $7DDF82.l,X		; DF 82 DF 7D
	cmp $82DF7D.l,X		; DF 7D DF 82
	sta ($7F.b,X)		; 81 7F
	adc $DF7B.w,X		; 7D 7B DF
	.db $82, $DF, $7A		; 82 DF 7A
	cmp $7BDF82.l,X		; DF 82 DF 7B
	cmp $82DF7D.l,X		; DF 7D DF 82
	adc $817F.w,X		; 7D 7F 81
	cpx #$7B.b		; E0 7B
	pld		; 2B
	cmp $0CD006.l,X		; DF 06 D0 0C
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $03D1.w		; 0C D1 03
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D1.b),Y		; D1 D1
	tsb $D0D1.w		; 0C D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $03D1.w		; 0C D1 03
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D1.b),Y		; D1 D1
	tsb $D0D1.w		; 0C D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D1.b),Y		; D1 D1
	tsb $03D1.w		; 0C D1 03
	cmp ($D1.b),Y		; D1 D1
	cmp ($E0.b),Y		; D1 E0
	pei ($2B.b)		; D4 2B
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	eor $0006.w,X		; 5D 06 00
	plp		; 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $0C.b		; 00 0C
	plp		; 28
	plp		; 28
	adc ($28.b,S),Y		; 73 28
	brk $1A.b		; 00 1A
	trb $F21C.w		; 1C 1C F2
	plp		; 28
	brk $0D.b		; 00 0D
	inc A		; 1A
	php		; 08
	and ($29.b),Y		; 31 29
	brk $19.b		; 00 19
	php		; 08
	trb $BE.b		; 14 BE
	rol A		; 2A
	brk $19.b		; 00 19
	trb $08.b		; 14 08
	phk		; 4B
	bit $1A00.w		; 2C 00 1A
	php		; 08
	inc A		; 1A
	adc $160C2C.l,X		; 7F 2C 0C 16
	bit $24.b		; 24 24
	sbc $D1002D.l		; EF 2D 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $E0.b		; 00 E0
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $02.b		; 04 02
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	ldx $30.b		; A6 30
	ldy $18.b		; A4 18
	ldx $0C.b		; A6 0C
	lda ($36.b,X)		; A1 36
	cmp $0C9F06.l,X		; DF 06 9F 0C
	lda ($A2.b,X)		; A1 A2
	sta $9A18A1.l,X		; 9F A1 18 9A
	tsb $3CDF.w		; 0C DF 3C
	sbc $60.b,X		; F5 60
	ldx $30.b		; A6 30
	ldy $18.b		; A4 18
	ldx $0C.b		; A6 0C
	lda ($36.b,X)		; A1 36
	cmp $0C9F06.l,X		; DF 06 9F 0C
	lda ($A2.b,X)		; A1 A2
	sta $DF54A1.l,X		; 9F A1 54 DF
	tsb $24A2.w		; 0C A2 24
	ldy $3C.b		; A4 3C
	cpx #$3A.b		; E0 3A
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $04.b		; 05 04
	sed		; F8
	sbc $0C9AEC.l,X		; FF EC 9A 0C
	sta $18A1.w,X		; 9D A1 18
	tya		; 98
	tsb $9F9C.w		; 0C 9C 9F
	clc		; 18
	stx $0C.b,Y		; 96 0C
	txs		; 9A
	sta $189C.w,X		; 9D 9C 18
	sta $950C.w,Y		; 99 0C 95
	lda ($9A.b,X)		; A1 9A
	sta $18A1.w,X		; 9D A1 18
	tya		; 98
	tsb $9F9C.w		; 0C 9C 9F
	clc		; 18
	stx $0C.b,Y		; 96 0C
	txs		; 9A
	sta $189C.w,X		; 9D 9C 18
	sta $950C.w,Y		; 99 0C 95
	lda ($9A.b,X)		; A1 9A
	sta $18A1.w,X		; 9D A1 18
	tya		; 98
	tsb $9F9C.w		; 0C 9C 9F
	clc		; 18
	stx $0C.b,Y		; 96 0C
	txs		; 9A
	sta $189C.w,X		; 9D 9C 18
	sta $950C.w,Y		; 99 0C 95
	lda ($9A.b,X)		; A1 9A
	sta $18A1.w,X		; 9D A1 18
	tya		; 98
	tsb $9F9C.w		; 0C 9C 9F
	clc		; 18
	stx $0C.b,Y		; 96 0C
	txs		; 9A
	sta $189C.w,X		; 9D 9C 18
	sta $950C.w,Y		; 99 0C 95
	lda ($9A.b,X)		; A1 9A
	sta $18A1.w,X		; 9D A1 18
	tya		; 98
	tsb $9F9C.w		; 0C 9C 9F
	clc		; 18
	stx $0C.b,Y		; 96 0C
	txs		; 9A
	sta $189C.w,X		; 9D 9C 18
	sta $950C.w,Y		; 99 0C 95
	lda ($9A.b,X)		; A1 9A
	sta $18A1.w,X		; 9D A1 18
	tya		; 98
	tsb $9F9C.w		; 0C 9C 9F
	clc		; 18
	stx $0C.b,Y		; 96 0C
	txs		; 9A
	sta $189C.w,X		; 9D 9C 18
	txs		; 9A
	tsb $9F98.w		; 0C 98 9F
	cpx #$79.b		; E0 79
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	tsb $04.b		; 04 04
	cmp $60F52A.l,X		; DF 2A F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	bit #$06.b		; 89 06
	bcc -107.b		; 90 95
	stz $9C95.w		; 9C 95 9C
	lda ($A8.b,X)		; A1 A8
	lda $2ADF.w		; AD DF 2A
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	bit #$06.b		; 89 06
	bcc -107.b		; 90 95
	stz $9C95.w		; 9C 95 9C
	lda ($A8.b,X)		; A1 A8
	lda $2ADF.w		; AD DF 2A
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	bit #$06.b		; 89 06
	bcc -107.b		; 90 95
	txs		; 9A
	sta $9C.b,X		; 95 9C
	lda ($A6.b,X)		; A1 A6
	lda $F8E0.w		; AD E0 F8
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $03.b		; 05 03
	sed		; F8
	sbc $03A1F2.l,X		; FF F2 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9DDF9F.l,X		; DF 9F DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9DDF9F.l,X		; DF 9F DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9DDF9F.l,X		; DF 9F DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9DDF9F.l,X		; DF 9F DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9DDF9F.l,X		; DF 9F DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9DDF9F.l,X		; DF 9F DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9FDF9C.l,X		; DF 9C DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $E0DF9F.l,X		; DF 9F DF E0
	and [$29.b],Y		; 37 29
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $03.b		; 04 03
	sed		; F8
	sbc $039DF2.l,X		; FF F2 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9ADF9C.l,X		; DF 9C DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039909.l,X		; DF 09 99 03
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $99DF9C.l,X		; DF 9C DF 99
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $9DDF99.l,X		; DF 99 DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9ADF9C.l,X		; DF 9C DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039909.l,X		; DF 09 99 03
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $99DF9C.l,X		; DF 9C DF 99
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $9DDF99.l,X		; DF 99 DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9ADF9C.l,X		; DF 9C DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039909.l,X		; DF 09 99 03
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $99DF9C.l,X		; DF 9C DF 99
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $9DDF99.l,X		; DF 99 DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9ADF9C.l,X		; DF 9C DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039909.l,X		; DF 09 99 03
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $99DF9C.l,X		; DF 9C DF 99
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $9DDF99.l,X		; DF 99 DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9ADF9C.l,X		; DF 9C DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039909.l,X		; DF 09 99 03
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $99DF9C.l,X		; DF 9C DF 99
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $9DDF99.l,X		; DF 99 DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9ADF9C.l,X		; DF 9C DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039809.l,X		; DF 09 98 03
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $039809.l,X		; DF 09 98 03
	cmp $9CDF98.l,X		; DF 98 DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $E0DF9C.l,X		; DF 9C DF E0
	cpy $2A.b		; C4 2A
	cmp $0CEC06.l,X		; DF 06 EC 0C
	tsb $07.b		; 04 07
	cmp $60F53C.l,X		; DF 3C F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	txs		; 9A
	tsb $9D9C.w		; 0C 9C 9D
	sta $9C9D18.l,X		; 9F 18 9D 9C
	sta $9C309D.l,X		; 9F 9D 30 9C
	clc		; 18
	sta $9A0C.w,X		; 9D 0C 9A
	bit $0C99.w,X		; 3C 99 0C
	txs		; 9A
	stz $9A99.w		; 9C 99 9A
	bmi -100.b		; 30 9C
	sta $9C24.w,X		; 9D 24 9C
	bit $51E0.w,X		; 3C E0 51
	bit $06DF.w		; 2C DF 06
	sed		; F8
	sbc $0982E8.l,X		; FF E8 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $127D03.l,X		; DF 03 7D 12
	cmp $097D06.l,X		; DF 06 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $127D03.l,X		; DF 03 7D 12
	cmp $097D06.l,X		; DF 06 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $127D03.l,X		; DF 03 7D 12
	cmp $097D06.l,X		; DF 06 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $127D03.l,X		; DF 03 7D 12
	cmp $097D06.l,X		; DF 06 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $127D03.l,X		; DF 03 7D 12
	cmp $097D06.l,X		; DF 06 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $128003.l,X		; DF 03 80 12
	cmp $098006.l,X		; DF 06 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $81E003.l,X		; DF 03 E0 81
	bit $06DF.w		; 2C DF 06
	bne  24.b		; D0 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D1.b),Y		; D1 D1
	asl $D1.b		; 06 D1
	bne  24.b		; D0 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $D1D0.w		; 0C D0 D1
	asl $D1.b		; 06 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($0C.b),Y		; D1 0C
	cmp ($06.b),Y		; D1 06
	cmp ($E0.b),Y		; D1 E0
	sbc ($2D.b),Y		; F1 2D
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sec		; 38
	phd		; 0B
	brk $28.b		; 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $20.b		; 00 20
	bmi  32.b		; 30 20
	rol $0029.w		; 2E 29 00
	clc		; 18
	clc		; 18
	php		; 08
	ora #$2A.b		; 09 2A
	brk $19.b		; 00 19
	tsb $8204.w		; 0C 04 82
	pld		; 2B
	brk $19.b		; 00 19
	tsb $0C.b		; 04 0C
	xce		; FB
	bit $1400.w		; 2C 00 14
	clc		; 18
	clc		; 18
	eor $2D.b		; 45 2D
	brk $1E.b		; 00 1E
	php		; 08
	clc		; 18
	lda $0C2D.w		; AD 2D 0C
	asl $24.b,X		; 16 24
	bit $57.b		; 24 57
	bmi   0.b		; 30 00
	cmp ($3E.b),Y		; D1 3E
	rol $00F3.w,X		; 3E F3 00
	inx		; E8
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $07.b		; 04 07
	sta $03DF15.l,X		; 9F 15 DF 03
	stz $9F0C.w		; 9C 0C 9F
	ora $DF.b,X		; 15 DF
	ora $A1.b,S		; 03 A1
	ora $DF.b,X		; 15 DF
	ora $A3.b,S		; 03 A3
	tsb $15A4.w		; 0C A4 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	lda $21.b,S		; A3 21
	cmp $159F1B.l,X		; DF 1B 9F 15
	cmp $0C9C03.l,X		; DF 03 9C 0C
	sta $03DF15.l,X		; 9F 15 DF 03
	lda ($15.b,X)		; A1 15
	cmp $0CA303.l,X		; DF 03 A3 0C
	ldy $15.b		; A4 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	lda $21.b,S		; A3 21
	cmp $159F1B.l,X		; DF 1B 9F 15
	cmp $0C9C03.l,X		; DF 03 9C 0C
	sta $03DF15.l,X		; 9F 15 DF 03
	lda ($15.b,X)		; A1 15
	cmp $0CA303.l,X		; DF 03 A3 0C
	ldx $15.b		; A6 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	lda $15.b,S		; A3 15
	cmp $21A403.l,X		; DF 03 A4 21
	cmp $42A103.l,X		; DF 03 A1 42
	cmp $A8E21E.l,X		; DF 1E E2 A8
	ora $DF.b,X		; 15 DF
	ora $A6.b,S		; 03 A6
	ora $DF.b,X		; 15 DF
	ora $A3.b,S		; 03 A3
	ora $DF.b,X		; 15 DF
	ora $A1.b,S		; 03 A1
	ora $DF.b,X		; 15 DF
	ora $E2.b,S		; 03 E2
	sbc ($3A.b,X)		; E1 3A
	plp		; 28
	tay		; A8
	ora $DF.b,X		; 15 DF
	ora $A6.b,S		; 03 A6
	ora $DF.b,X		; 15 DF
	ora $A4.b,S		; 03 A4
	ora $DF.b,X		; 15 DF
	ora $A3.b,S		; 03 A3
	ora $DF.b,X		; 15 DF
	ora $A4.b,S		; 03 A4
	and ($F5.b,X)		; 21 F5
	rts		; 60

	cmp $A4E227.l,X		; DF 27 E2 A4
	ora $DF.b,X		; 15 DF
	ora $A2.b,S		; 03 A2
	ora $DF.b,X		; 15 DF
	ora $A2.b,S		; 03 A2
	tsb $21A4.w		; 0C A4 21
	cmp $0CA40F.l,X		; DF 0F A4 0C
	ldx $15.b		; A6 15
	cmp $0CA603.l,X		; DF 03 A6 0C
	tay		; A8
	rol $DF.b,X		; 36 DF
	asl $A4.b		; 06 A4
	ora $DF.b,X		; 15 DF
	ora $A4.b,S		; 03 A4
	tsb $21A6.w		; 0C A6 21
	cmp $0CA60F.l,X		; DF 0F A6 0C
	tay		; A8
	ora $DF.b,X		; 15 DF
	ora $A8.b,S		; 03 A8
	tsb $36A6.w		; 0C A6 36
	cmp $15A406.l,X		; DF 06 A4 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	ldx $21.b		; A6 21
	cmp $0CA60F.l,X		; DF 0F A6 0C
	lda [$15.b]		; A7 15
	cmp $0CA703.l,X		; DF 03 A7 0C
	lda #$36.b		; A9 36
	cmp $15A606.l,X		; DF 06 A6 15
	cmp $09A603.l,X		; DF 03 A6 09
	cmp $21A603.l,X		; DF 03 A6 21
	cmp $0CA403.l,X		; DF 03 A4 0C
	ldx $A7.b		; A6 A7
	ora $DF.b,X		; 15 DF
	ora $A7.b,S		; 03 A7
	ora #$DF.b		; 09 DF
	ora $A7.b,S		; 03 A7
	and ($DF.b,X)		; 21 DF
	ora $A6.b,S		; 03 A6
	tsb $A9A7.w		; 0C A7 A9
	eor [$DF.b],Y		; 57 DF
	ora #$AB.b		; 09 AB
	eor [$DF.b],Y		; 57 DF
	ora #$F5.b		; 09 F5
	rts		; 60

.ACCU 8
	sep #$E0		; E2 E0
	dec A		; 3A
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $04.b		; 05 04
	inx		; E8
	jsr $00E7.w		; 20 E7 00
	php		; 08
	jsr ($DF06.w,X)		; FC 06 DF
	asl $E1.b		; 06 E1
	dec A		; 3A
	plp		; 28
	sbc ($91.b,X)		; E1 91
	plp		; 28
	sbc ($3A.b,X)		; E1 3A
	plp		; 28
	sbc ($A5.b,X)		; E1 A5
	plp		; 28
	ldy $12.b		; A4 12
	inx		; E8
	clc		; 18
	sbc [$18.b]		; E7 18
	php		; 08
	stx $9306.w		; 8E 06 93
	sta [$96.b],Y		; 97 96
	txs		; 9A
	sta ($0C.b,S),Y		; 93 0C
	tya		; 98
	asl $9C.b		; 06 9C
	sta $A49F9C.l,X		; 9F 9C 9F A4
	tay		; A8
	ldx #$9F.b		; A2 9F
	stz $938E.w		; 9C 8E 93
	stx $9A.b,Y		; 96 9A
	sta ($0C.b,S),Y		; 93 0C
	tya		; 98
	asl $9C.b		; 06 9C
	sta $A49F9C.l,X		; 9F 9C 9F A4
	tay		; A8
	ldx #$9F.b		; A2 9F
	stz $9591.w		; 9C 91 95
	tya		; 98
	stz $0C95.w		; 9C 95 0C
	txs		; 9A
	asl $9D.b		; 06 9D
	lda ($9D.b,X)		; A1 9D
	lda ($A6.b,X)		; A1 A6
	lda #$A6.b		; A9 A6
	lda ($9D.b,X)		; A1 9D
	sta ($95.b),Y		; 91 95
	tya		; 98
	stz $0C95.w		; 9C 95 0C
	txs		; 9A
	asl $9D.b		; 06 9D
	lda ($9D.b,X)		; A1 9D
	lda ($A6.b,X)		; A1 A6
	lda #$A6.b		; A9 A6
	lda ($9D.b,X)		; A1 9D
	sta ($94.b),Y		; 91 94
	tya		; 98
	txy		; 9B
	sty $0C.b,X		; 94 0C
	txs		; 9A
	asl $9D.b		; 06 9D
	ldx #$9A.b		; A2 9A
	sta $A6A2.w,X		; 9D A2 A6
	ldx #$A0.b		; A2 A0
	sta $9491.w,X		; 9D 91 94
	tya		; 98
	txy		; 9B
	sty $0C.b,X		; 94 0C
	txs		; 9A
	asl $9D.b		; 06 9D
	ldx #$9A.b		; A2 9A
	sta $A6A2.w,X		; 9D A2 A6
	ldx #$A0.b		; A2 A0
	sta $938F.w,X		; 9D 8F 93
	stx $9B.b,Y		; 96 9B
	stx $0C.b,Y		; 96 0C
	txy		; 9B
	asl $9F.b		; 06 9F
	ldx #$9B.b		; A2 9B
	sta $A2A7A2.l,X		; 9F A2 A7 A2
	sta $948F9B.l,X		; 9F 9B 8F 94
	tya		; 98
	txy		; 9B
	tya		; 98
	tsb $069B.w		; 0C 9B 06
	ldy #$A4.b		; A0 A4
	txy		; 9B
	ldy #$A4.b		; A0 A4
	lda [$A4.b]		; A7 A4
	ldy #$9B.b		; A0 9B
	stx $9591.w		; 8E 91 95
	tya		; 98
	sta $0C.b,X		; 95 0C
	txs		; 9A
	asl $9D.b		; 06 9D
	lda ($9A.b,X)		; A1 9A
	sta $A6A1.w,X		; 9D A1 A6
	lda ($9D.b,X)		; A1 9D
	txs		; 9A
	stx $9591.w		; 8E 91 95
	tya		; 98
	sta $0C.b,X		; 95 0C
	txs		; 9A
	asl $9D.b		; 06 9D
	lda ($9A.b,X)		; A1 9A
	sta $A6A1.w,X		; 9D A1 A6
	lda ($9D.b,X)		; A1 9D
	txs		; 9A
	stx $9591.w		; 8E 91 95
	txs		; 9A
	sta $A6A1.w,X		; 9D A1 A6
	lda #$18.b		; A9 18
	cmp $2934E0.l,X		; DF E0 34 29
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $03.b		; 04 03
	sed		; F8
	sbc $03A3F2.l,X		; FF F2 A3 03
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $A4DFA3.l,X		; DF A3 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $09DFA1.l,X		; DF A1 DF 09
	lda ($03.b,X)		; A1 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $09DF9D.l,X		; DF 9D DF 09
	sta $DF03.w,X		; 9D 03 DF
	sta $A3DF.w,X		; 9D DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $A4DFA3.l,X		; DF A3 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $A3DF9D.l,X		; DF 9D DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $A4DFA3.l,X		; DF A3 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A3DFA4.l,X		; DF A4 DF A3
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A4DFA1.l,X		; DF A1 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $E2DFA4.l,X		; DF A4 DF E2
	lda ($03.b,X)		; A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $E1DFA6.l,X		; DF A6 DF E1
	ora ($2A.b)		; 12 2A
	lda ($03.b,X)		; A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $9FDFA6.l,X		; DF A6 DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $0AFC09.l,X		; DF 09 FC 0A
	sbc ($6F.b,X)		; E1 6F
	and $00FC.w		; 2D FC 00
	cpx #$0F.b		; E0 0F
	rol A		; 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $03.b		; 05 03
	sed		; F8
	sbc $039FF2.l,X		; FF F2 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9DDF9C.l,X		; DF 9C DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $09DF9D.l,X		; DF 9D DF 09
	sta $DF03.w,X		; 9D 03 DF
	txs		; 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9FDF9A.l,X		; DF 9A DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9DDF9C.l,X		; DF 9C DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9FDF9A.l,X		; DF 9A DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9FDF9C.l,X		; DF 9C DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039E09.l,X		; DF 09 9E 03
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $039E09.l,X		; DF 09 9E 03
	cmp $9DDF9E.l,X		; DF 9E DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $E2DF9D.l,X		; DF 9D DF E2
	sta $DF03.w,X		; 9D 03 DF
	ora #$9D.b		; 09 9D
	ora $DF.b,S		; 03 DF
	sta $9DDF.w,X		; 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $E1DF9D.l,X		; DF 9D DF E1
	phb		; 8B
	pld		; 2B
	sta $DF03.w,X		; 9D 03 DF
	ora #$9D.b		; 09 9D
	ora $DF.b,S		; 03 DF
	sta $9DDF.w,X		; 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $98DF9C.l,X		; DF 9C DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $039809.l,X		; DF 09 98 03
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $039809.l,X		; DF 09 98 03
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $0AFC09.l,X		; DF 09 FC 0A
	sbc ($C0.b,X)		; E1 C0
	plp		; 28
	jsr ($E000.w,X)		; FC 00 E0
	dey		; 88
	pld		; 2B
	cmp $068C06.l,X		; DF 06 8C 06
	cmp $8C9398.l,X		; DF 98 93 8C
	cmp $8C9398.l,X		; DF 98 93 8C
	cmp $60F52A.l,X		; DF 2A F5 60
	sbc #$00.b		; E9 00
	ora #$FD.b		; 09 FD
	bit $069C.w		; 2C 9C 06
	sta [$90.b],Y		; 97 90
	cmp $90979C.l,X		; DF 9C 97 90
	cmp $9CDF90.l,X		; DF 90 DF 9C
	cmp $00E91E.l,X		; DF 1E E9 00
	ora #$10.b		; 09 10
	and $069C.w		; 2D 9C 06
	sta [$90.b],Y		; 97 90
	cmp $90979C.l,X		; DF 9C 97 90
	cmp $9CDF90.l,X		; DF 90 DF 9C
	cmp $068C12.l,X		; DF 12 8C 06
	cmp $80DF98.l,X		; DF 98 DF 80
	cmp $8C9398.l,X		; DF 98 93 8C
	sta $809398.l,X		; 9F 98 93 80
	sty $9393.w		; 8C 93 93
	cpx #$FD.b		; E0 FD
	bit $06DF.w		; 2C DF 06
	cpx $0418.w		; EC 18 04
	tsb $DF.b		; 04 DF
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	inx		; E8
	asl $249A.w,X		; 1E 9A 24
	stz $9D3C.w		; 9C 3C 9D
	bit $9F.b		; 24 9F
	bit $249C.w,X		; 3C 9C 24
	sta $9F3C.w,X		; 9D 3C 9F
	bit $9D.b		; 24 9D
	bit $249B.w,X		; 3C 9B 24
	sta $9F3C.w,X		; 9D 3C 9F
	bit $A0.b		; 24 A0
	bit $609D.w,X		; 3C 9D 60
	sta $60A160.l,X		; 9F 60 A1 60
	txs		; 9A
	bit $E8.b		; 24 E8
	inc A		; 1A
	ldx $0C.b		; A6 0C
	lda #$06.b		; A9 06
	lda ($9D.b,X)		; A1 9D
	tsb $A1A4.w		; 0C A4 A1
	asl $A9.b		; 06 A9
	plb		; AB
	sta $ABABA6.l,X		; 9F A6 AB AB
	tsb $06B7.w		; 0C B7 06
	lda [$DF.b],Y		; B7 DF
	bmi -30.b		; 30 E2
	cpx #$4B.b		; E0 4B
	and $06DF.w		; 2D DF 06
	sed		; F8
	sbc $0980E8.l,X		; FF E8 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $068403.l,X		; DF 03 84 06
	sty $82.b		; 84 82
	.db $82, $82, $09		; 82 82 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $068403.l,X		; DF 03 84 06
	sty $82.b		; 84 82
	.db $82, $82, $09		; 82 82 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $067D03.l,X		; DF 03 7D 06
	adc $8484.w,X		; 7D 84 84
	sty $09.b		; 84 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098503.l,X		; DF 03 85 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $067D03.l,X		; DF 03 7D 06
	.db $82, $E2, $7B		; 82 E2 7B
	asl $7B.b		; 06 7B
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $E1.b,S		; 03 E1
	lda ($2D.b)		; B2 2D
	tda		; 7B
	asl $7B.b		; 06 7B
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	asl $84.b		; 06 84
	sta $85.b		; 85 85
	sty $09.b		; 84 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $068303.l,X		; DF 03 83 06
	sta $7C.b,S		; 83 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	asl $7C.b		; 06 7C
	.db $82, $09, $DF		; 82 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	asl $82.b		; 06 82
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	asl $7B.b		; 06 7B
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	asl $7B.b		; 06 7B
	cmp $AFE030.l,X		; DF 30 E0 AF
	and $06DF.w		; 2D DF 06
	bne  24.b		; D0 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D1.b),Y		; D1 D1
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	cmp $D1.b,X		; D5 D1
	dec $06.b,X		; D6 06
	dec $D0.b,X		; D6 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $D0D0.w		; 0C D0 D0
	asl $D1.b		; 06 D1
	ora ($D1.b)		; 12 D1
	clc		; 18
	cpx #$59.b		; E0 59
	bmi -33.b		; 30 DF
	asl $DF.b		; 06 DF
	asl $9B.b		; 06 9B
	sta $DF9B.w,Y		; 99 9B DF
	tsb $069B.w		; 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	txy		; 9B
	cmp $0CDF9B.l,X		; DF 9B DF 0C
	txy		; 9B
	asl $9B.b		; 06 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	txy		; 9B
	cmp $0CDF9B.l,X		; DF 9B DF 0C
	txy		; 9B
	asl $9B.b		; 06 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	txy		; 9B
	cmp $0CDF9B.l,X		; DF 9B DF 0C
	txy		; 9B
	asl $9B.b		; 06 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	rol $9B.b,X		; 36 9B
	asl $99.b		; 06 99
	txy		; 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	txy		; 9B
	cmp $0CDF9B.l,X		; DF 9B DF 0C
	txy		; 9B
	asl $9B.b		; 06 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	txy		; 9B
	cmp $0CDF9B.l,X		; DF 9B DF 0C
	txy		; 9B
	asl $9B.b		; 06 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	txy		; 9B
	cmp $0CDF9B.l,X		; DF 9B DF 0C
	txy		; 9B
	asl $9B.b		; 06 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	txy		; 9B
	cmp $0CDF9B.l,X		; DF 9B DF 0C
	txy		; 9B
	asl $9B.b		; 06 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	cmp $9B999B.l,X		; DF 9B 99 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	cmp $9BDF99.l,X		; DF 99 DF 9B
	sta $DF9B.w,Y		; 99 9B DF
	rol $AE.b,X		; 36 AE
	asl $DF.b		; 06 DF
	ldx $0CDF.w		; AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $AEAEAE.l,X		; DF AE AE AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	ldx $DFAE.w		; AE AE DF
	ldx $AEDF.w		; AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	ldx $DFAE.w		; AE AE DF
	ldx $AEDF.w		; AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	ldx $DFAE.w		; AE AE DF
	ldx $AEDF.w		; AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $30DF.w		; AE DF 30
	cpx #$55.b		; E0 55
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	php		; 08
	cpy #$0A.b		; C0 0A
	brk $28.b		; 00 28
	php		; 08
	rol $0028.w,X		; 3E 28 00
	inc A		; 1A
	plp		; 28
	clc		; 18
	ror $0029.w		; 6E 29 00
	ora $DC1C08.l,X		; 1F 08 1C DC
	and #$00.b		; 29 00
	asl $081C.w,X		; 1E 1C 08
	and $002A.w,X		; 3D 2A 00
	ora $460818.l,X		; 1F 18 08 46
	bit $1F00.w		; 2C 00 1F
	php		; 08
	asl $31.b,X		; 16 31
	plp		; 28
	brk $1A.b		; 00 1A
	asl $16.b		; 06 16
	eor $170C2E.l		; 4F 2E 0C 17
	bit $24.b		; 24 24
	sta $D10031.l		; 8F 31 00 D1
	rol $DF3E.w,X		; 3E 3E DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $04.b		; 05 04
	jsr ($DF04.w,X)		; FC 04 DF
	ora #$E0.b		; 09 E0
	eor [$28.b]		; 47 28
	sbc ($00.b,S),Y		; F3 00
	beq -33.b		; F0 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b		; 05 03
	stx $DF42.w		; 8E 42 DF
	asl $90.b		; 06 90
	tsb $9392.w		; 0C 92 93
	ora $DF.b,X		; 15 DF
	ora $95.b,S		; 03 95
	ora $DF.b,X		; 15 DF
	ora $97.b,S		; 03 97
	ora $DF.b,X		; 15 DF
	ora $98.b,S		; 03 98
	ora ($DF.b)		; 12 DF
	ora $98.b,S		; 03 98
	txs		; 9A
	tsb $368E.w		; 0C 8E 36
	cmp $15901E.l,X		; DF 1E 90 15
	cmp $159203.l,X		; DF 03 92 15
	cmp $159303.l,X		; DF 03 93 15
	txy		; 9B
	ora $9C.b,S		; 03 9C
	ora $DF.b,X		; 15 DF
	ora $9A.b,S		; 03 9A
	tsb $4B97.w		; 0C 97 4B
	cmp $159809.l,X		; DF 09 98 15
	cmp $159703.l,X		; DF 03 97 15
	cmp $159503.l,X		; DF 03 95 15
	cmp $159703.l,X		; DF 03 97 15
	cmp $219503.l,X		; DF 03 95 21
	cmp $189303.l,X		; DF 03 93 18
	sbc $60.b,X		; F5 60
	cmp $15903C.l,X		; DF 3C 90 15
	cmp $159303.l,X		; DF 03 93 15
	cmp $159C03.l,X		; DF 03 9C 15
	cmp $0C9A03.l,X		; DF 03 9A 0C
	tya		; 98
	rol $DF.b,X		; 36 DF
	sta [$15.b],Y		; 97 15
	cmp $159803.l,X		; DF 03 98 15
	cmp $159A03.l,X		; DF 03 9A 15
	cmp $0C9C03.l,X		; DF 03 9C 0C
	sta [$34.b],Y		; 97 34
	tya		; 98
	bpl -102.b		; 10 9A
	tya		; 98
	eor [$DF.b],Y		; 57 DF
	ora #$97.b		; 09 97
	ora $DF.b,X		; 15 DF
	ora $95.b,S		; 03 95
	ora $DF.b,X		; 15 DF
	ora $93.b,S		; 03 93
	ora $DF.b,X		; 15 DF
	ora $97.b,S		; 03 97
	ora $DF.b,X		; 15 DF
	ora $95.b,S		; 03 95
	rol $F5.b,X		; 36 F5
	rts		; 60

	cmp $428E2A.l,X		; DF 2A 8E 42
	cmp $0C9006.l,X		; DF 06 90 0C
	sta ($93.b)		; 92 93
	ora $DF.b,X		; 15 DF
	ora $95.b,S		; 03 95
	ora $DF.b,X		; 15 DF
	ora $97.b,S		; 03 97
	ora $DF.b,X		; 15 DF
	ora $98.b,S		; 03 98
	ora ($DF.b)		; 12 DF
	ora $98.b,S		; 03 98
	txs		; 9A
	tsb $368E.w		; 0C 8E 36
	cmp $15901E.l,X		; DF 1E 90 15
	cmp $159203.l,X		; DF 03 92 15
	cmp $159303.l,X		; DF 03 93 15
	txy		; 9B
	ora $9C.b,S		; 03 9C
	ora $DF.b,X		; 15 DF
	ora $9A.b,S		; 03 9A
	tsb $4B97.w		; 0C 97 4B
	cmp $159809.l,X		; DF 09 98 15
	cmp $159703.l,X		; DF 03 97 15
	cmp $159503.l,X		; DF 03 95 15
	cmp $159703.l,X		; DF 03 97 15
	cmp $219503.l,X		; DF 03 95 21
	cmp $189303.l,X		; DF 03 93 18
	sbc $60.b,X		; F5 60
	cmp $15903C.l,X		; DF 3C 90 15
	cmp $159303.l,X		; DF 03 93 15
	cmp $159C03.l,X		; DF 03 9C 15
	cmp $0C9A03.l,X		; DF 03 9A 0C
	tya		; 98
	rol $DF.b,X		; 36 DF
	sta [$15.b],Y		; 97 15
	cmp $159803.l,X		; DF 03 98 15
	cmp $159A03.l,X		; DF 03 9A 15
	cmp $159003.l,X		; DF 03 90 15
	cmp $0C9003.l,X		; DF 03 90 0C
	txs		; 9A
	and ($DF.b,X)		; 21 DF
	ora $99.b,S		; 03 99
	ora $DF.b,X		; 15 DF
	ora $98.b,S		; 03 98
	rol A		; 2A
	cmp $9F9E03.l,X		; DF 03 9E 9F
	ora $03DF.w		; 0D DF 03
	stz $DF0D.w		; 9C 0D DF
	ora $98.b,S		; 03 98
	ora $03DF.w		; 0D DF 03
	sta [$18.b],Y		; 97 18
	sta $0C.b,X		; 95 0C
	sta ($24.b,S),Y		; 93 24
	sta ($18.b)		; 92 18
	sta ($48.b,S),Y		; 93 48
	cmp $60DF18.l,X		; DF 18 DF 60
	cpx #$47.b		; E0 47
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $03.b		; 05 03
	sed		; F8
	sbc $3CDFF2.l,X		; FF F2 DF 3C
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	stz $A10C.w,X		; 9E 0C A1
	ldx $A4.b		; A6 A4
	bmi -33.b		; 30 DF
	tsb $60F5.w		; 0C F5 60
	stz $A10C.w,X		; 9E 0C A1
	ldx $AA.b		; A6 AA
	bmi -89.b		; 30 A7
	tax		; AA
	bit $A8.b		; 24 A8
	bit $24A4.w,X		; 3C A4 24
	ldx $18.b		; A6 18
	lda $0C.b,S		; A3 0C
	ldy $A6.b		; A4 A6
	ldy $60.b		; A4 60
	cmp $A6A718.l,X		; DF 18 A7 A6
	ldy $A6.b		; A4 A6
	rts		; 60

	ldy #$60.b		; A0 60
	lda ($18.b,X)		; A1 18
	lda $0C.b,S		; A3 0C
	ldy $24.b		; A4 24
	tay		; A8
	tsb $A5A6.w		; 0C A6 A5
	bmi -88.b		; 30 A8
	stz $9F24.w,X		; 9E 24 9F
	lda ($A3.b,X)		; A1 A3
	ldy $18.b		; A4 18
	ldx $DF.b		; A6 DF
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$74.b		; E0 74
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b		; 05 03
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	lda $60.b,S		; A3 60
	tay		; A8
	rts		; 60

	stz $9F60.w,X		; 9E 60 9F
	clc		; 18
	lda ($A3.b,X)		; A1 A3
	ldy $A6.b		; A4 A6
	bmi -86.b		; 30 AA
	rts		; 60

	lda [$30.b]		; A7 30
	tax		; AA
	bit $A8.b		; 24 A8
	bit $24A9.w,X		; 3C A9 24
	lda $3C.b,S		; A3 3C
	ldy $60.b		; A4 60
	lda [$60.b]		; A7 60
	ldx $60.b		; A6 60
	ldy #$60.b		; A0 60
	lda ($30.b,X)		; A1 30
	tay		; A8
	bpl -92.b		; 10 A4
	lda ($9A.b,X)		; A1 9A
	bmi -104.b		; 30 98
	sta [$3C.b],Y		; 97 3C
	sta $A6A30C.l,X		; 9F 0C A3 A6
	lda [$18.b]		; A7 18
	lda [$0C.b]		; A7 0C
	ldx $30.b		; A6 30
	cmp $E2E00C.l,X		; DF 0C E0 E2
	and #$DF.b		; 29 DF
	asl $F8.b		; 06 F8
	sbc $069EEE.l,X		; FF EE 9E 06
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9FDF9E.l,X		; DF 9E DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9CDFA1.l,X		; DF A1 DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $A1DF9C.l,X		; DF 9C DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A3DFA1.l,X		; DF A1 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A4DFA3.l,X		; DF A3 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $DF0CA3.l,X		; DF A3 0C DF
	lda $06.b,S		; A3 06
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A3DFA4.l,X		; DF A4 DF A3
	tsb $A3DF.w		; 0C DF A3
	asl $DF.b		; 06 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	sta $DF9FDF.l,X		; 9F DF 9F DF
	sta $DF9FDF.l,X		; 9F DF 9F DF
	sta $DF9FDF.l,X		; 9F DF 9F DF
	sta $DF9FDF.l,X		; 9F DF 9F DF
	stz $9CDF.w		; 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A1DFA2.l,X		; DF A2 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $2A3FE0.l,X		; DF E0 3F 2A
	cmp $FFF806.l,X		; DF 06 F8 FF
	inc $069A.w		; EE 9A 06
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9CDF9A.l,X		; DF 9A DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9EDF9C.l,X		; DF 9C DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9CDF9E.l,X		; DF 9E DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9EDF9C.l,X		; DF 9C DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $98DF9E.l,X		; DF 9E DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $9EDF98.l,X		; DF 98 DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9FDF9E.l,X		; DF 9E DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $DF0C9D.l,X		; DF 9D 0C DF
	sta $DF06.w,X		; 9D 06 DF
	sta $9DDF.w,X		; 9D DF 9D
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $99DF99.l,X		; DF 99 DF 99
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9DDFA1.l,X		; DF A1 DF 9D
	tsb $9DDF.w		; 0C DF 9D
	asl $DF.b		; 06 DF
	sta $9DDF.w,X		; 9D DF 9D
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9EDF9F.l,X		; DF 9F DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $2C48E0.l,X		; DF E0 48 2C
	cmp $FFF806.l,X		; DF 06 F8 FF
	inx		; E8
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	tsb $0980.w		; 0C 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $0C7F03.l,X		; DF 03 7F 0C
	bra   9.b		; 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $0C7F03.l,X		; DF 03 7F 0C
	bra   9.b		; 80 09
	cmp $0C7803.l,X		; DF 03 78 0C
	adc $DF09.w,Y		; 79 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	tsb $0979.w		; 0C 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $0C7803.l,X		; DF 03 78 0C
	adc $DF09.w,Y		; 79 09 DF
	ora $7E.b,S		; 03 7E
	tsb $097F.w		; 0C 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $0C7E03.l,X		; DF 03 7E 0C
	adc $03DF09.l,X		; 7F 09 DF 03
	adc $03DF09.l,X		; 7F 09 DF 03
	ror $7F0C.w,X		; 7E 0C 7F
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	tsb $0984.w		; 0C 84 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $0C8303.l,X		; DF 03 83 0C
	sty $09.b		; 84 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $0C8303.l,X		; DF 03 83 0C
	sty $09.b		; 84 09
	cmp $247D03.l,X		; DF 03 7D 24
	bra  24.b		; 80 18
	bra  12.b		; 80 0C
	sty $18.b		; 84 18
	adc $8124.w,X		; 7D 24 81
	clc		; 18
	sta ($0C.b,X)		; 81 0C
	sty $18.b		; 84 18
	.db $82, $24, $89		; 82 24 89
	clc		; 18
	bit #$0C.b		; 89 0C
	sta $86.b		; 85 86
	.db $82, $09, $DF		; 82 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	tsb $0980.w		; 0C 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $0C7F03.l,X		; DF 03 7F 0C
	bra   9.b		; 80 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $0C7F03.l,X		; DF 03 7F 0C
	bra   9.b		; 80 09
	cmp $0C7803.l,X		; DF 03 78 0C
	adc $DF09.w,Y		; 79 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	tsb $0979.w		; 0C 79 09
	cmp $097903.l,X		; DF 03 79 09
	cmp $0C7803.l,X		; DF 03 78 0C
	adc $DF09.w,Y		; 79 09 DF
	ora $7E.b,S		; 03 7E
	tsb $097F.w		; 0C 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $0C7E03.l,X		; DF 03 7E 0C
	adc $03DF09.l,X		; 7F 09 DF 03
	adc $03DF09.l,X		; 7F 09 DF 03
	ror $7F0C.w,X		; 7E 0C 7F
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	tsb $0984.w		; 0C 84 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $0C8303.l,X		; DF 03 83 0C
	sty $09.b		; 84 09
	cmp $098403.l,X		; DF 03 84 09
	cmp $0C8303.l,X		; DF 03 83 0C
	sty $09.b		; 84 09
	cmp $247D03.l,X		; DF 03 7D 24
	bra  24.b		; 80 18
	bra  12.b		; 80 0C
	sty $18.b		; 84 18
	.db $82, $24, $7D		; 82 24 7D
	clc		; 18
	adc $820C.w,X		; 7D 0C 82
	clc		; 18
	tda		; 7B
	bit $7F.b		; 24 7F
	clc		; 18
	adc $18820C.l,X		; 7F 0C 82 18
	sta $12.b,S		; 83 12
	cmp $098306.l,X		; DF 06 83 09
	cmp $128203.l,X		; DF 03 82 12
	cmp $098006.l,X		; DF 06 80 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097A03.l,X		; DF 03 7A 09
	cmp $51E003.l,X		; DF 03 E0 51
	rol $06DF.w		; 2E DF 06
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D5.b),Y		; D1 D5
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D5.w		; 0C D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp $D1.b,X		; D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp $D1.b,X		; D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp $D1.b,X		; D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp ($D1.b)		; D2 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D0.b),Y		; D1 D0
	cmp $D1D106.l,X		; DF 06 D1 D1
	cmp ($D1.b),Y		; D1 D1
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D2.w		; 0C D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b)		; D2 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D5.b),Y		; D1 D5
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D5.w		; 0C D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp $D1.b,X		; D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp $D1.b,X		; D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp $D1.b,X		; D5 D1
	bne -42.b		; D0 D6
	dec $D1.b,X		; D6 D1
	bne -48.b		; D0 D0
	cmp ($D1.b)		; D2 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp $06.b,X		; D5 06
	dec $D6.b,X		; D6 D6
	dec $E0.b,X		; D6 E0
	sta ($31.b),Y		; 91 31
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ldx $08.b		; A6 08
	brk $28.b		; 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $20.b		; 00 20
	plp		; 28
	plp		; 28
	sta [$29.b]		; 87 29
	brk $19.b		; 00 19
	clc		; 18
	php		; 08
	phx		; DA
	and #$00.b		; 29 00
	ora $1808.w,Y		; 19 08 18
	eor ($2A.b,S),Y		; 53 2A
	brk $1E.b		; 00 1E
	plp		; 28
	php		; 08
	cmp ($2A.b,X)		; C1 2A
	brk $19.b		; 00 19
	clc		; 18
	php		; 08
	lsr $2A.b		; 46 2A
	brk $1E.b		; 00 1E
	php		; 08
	plp		; 28
	and $2C.b,X		; 35 2C
	tsb $2417.w		; 0C 17 24
	bit $CD.b		; 24 CD
	and $3ED100.l		; 2F 00 D1 3E
	rol $00F3.w,X		; 3E F3 00
	sbc ($DF.b),Y		; F1 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $04.b		; 05 04
	tay		; A8
	ora ($DF.b)		; 12 DF
	asl $A4.b		; 06 A4
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora ($DF.b)		; 12 DF
	asl $A3.b		; 06 A3
	asl $06DF.w,X		; 1E DF 06
	ldy $12.b		; A4 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $12A106.l,X		; DF 06 A1 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $12A103.l,X		; DF 03 A1 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $4EA106.l,X		; DF 06 A1 4E
	cmp $12A81E.l,X		; DF 1E A8 12
	cmp $09A406.l,X		; DF 06 A4 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $1EA306.l,X		; DF 06 A3 1E
	cmp $12A406.l,X		; DF 06 A4 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $12A106.l,X		; DF 06 A1 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $12A103.l,X		; DF 03 A1 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $42A106.l,X		; DF 06 A1 42
	cmp $DFA112.l,X		; DF 12 A1 DF
	asl $9F.b		; 06 9F
	ora ($DF.b)		; 12 DF
	asl $9F.b		; 06 9F
	ora #$DF.b		; 09 DF
	ora $9F.b,S		; 03 9F
	asl $06DF.w,X		; 1E DF 06
	stz $DF09.w		; 9C 09 DF
	ora $9F.b,S		; 03 9F
	ora #$DF.b		; 09 DF
	ora $A1.b,S		; 03 A1
	ora ($DF.b)		; 12 DF
	asl $A1.b		; 06 A1
	ora #$DF.b		; 09 DF
	ora $A1.b,S		; 03 A1
	asl $06DF.w,X		; 1E DF 06
	stz $DF09.w,X		; 9E 09 DF
	ora $A1.b,S		; 03 A1
	ora #$DF.b		; 09 DF
	ora $A2.b,S		; 03 A2
	ora ($DF.b)		; 12 DF
	asl $A2.b		; 06 A2
	ora #$DF.b		; 09 DF
	ora $A2.b,S		; 03 A2
	asl $06DF.w,X		; 1E DF 06
	sta $DF09.w,X		; 9D 09 DF
	ora $A2.b,S		; 03 A2
	ora #$DF.b		; 09 DF
	ora $A4.b,S		; 03 A4
	ora ($DF.b)		; 12 DF
	asl $A4.b		; 06 A4
	ora #$DF.b		; 09 DF
	ora $A4.b,S		; 03 A4
	asl $06DF.w,X		; 1E DF 06
	lda ($09.b,X)		; A1 09
	cmp $09A403.l,X		; DF 03 A4 09
	cmp $39A603.l,X		; DF 03 A6 39
	sbc $60.b,X		; F5 60
	cmp $12A827.l,X		; DF 27 A8 12
	cmp $09A406.l,X		; DF 06 A4 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $1EA306.l,X		; DF 06 A3 1E
	cmp $12A406.l,X		; DF 06 A4 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $12A106.l,X		; DF 06 A1 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $12A103.l,X		; DF 03 A1 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $4EA106.l,X		; DF 06 A1 4E
	cmp $12A81E.l,X		; DF 1E A8 12
	cmp $09A406.l,X		; DF 06 A4 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $1EA306.l,X		; DF 06 A3 1E
	cmp $12A406.l,X		; DF 06 A4 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $12A106.l,X		; DF 06 A1 12
	cmp $09A306.l,X		; DF 06 A3 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $12A103.l,X		; DF 03 A1 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $57A106.l,X		; DF 06 A1 57
.INDEX 8
	sep #$DF		; E2 DF
	ora $DF.b,X		; 15 DF
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$3A.b		; E0 3A
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	tsb $04.b		; 04 04
	inx		; E8
	jsr $08E7.w		; 20 E7 08
	php		; 08
	jsr ($DF0A.w,X)		; FC 0A DF
	ora $E1.b,S		; 03 E1
	dec A		; 3A
	plp		; 28
	cmp $19E812.l,X		; DF 12 E8 19
	sbc [$18.b]		; E7 18
	php		; 08
	sed		; F8
	sbc $069CF1.l,X		; FF F1 9C 06
	lda ($A3.b,X)		; A1 A3
	ldx $A8.b		; A6 A8
	ora ($DF.b)		; 12 DF
	rol $F5.b,X		; 36 F5
	rts		; 60

	tay		; A8
	asl $A6.b		; 06 A6
	lda $A1.b,S		; A3 A1
	stz $DF12.w		; 9C 12 DF
	rol $F5.b,X		; 36 F5
	rts		; 60

	stz $A106.w		; 9C 06 A1
	lda $A6.b,S		; A3 A6
	tay		; A8
	ldx $A3.b		; A6 A3
	lda ($9C.b,X)		; A1 9C
	ora ($DF.b)		; 12 DF
	asl $60F5.w,X		; 1E F5 60
	stz $A106.w		; 9C 06 A1
	lda $A6.b,S		; A3 A6
	tay		; A8
	ldx $A3.b		; A6 A3
	lda ($9C.b,X)		; A1 9C
	ora ($DF.b)		; 12 DF
	asl $60F5.w,X		; 1E F5 60
	cpx #$8D.b		; E0 8D
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0204.w		; 0C 04 02
	sed		; F8
	sbc $30DFF1.l,X		; FF F1 DF 30
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	stz $A306.w		; 9C 06 A3
	tay		; A8
	lda $B4AFA8.l		; AF A8 AF B4
	tyx		; BB
	cmp $60F530.l,X		; DF 30 F5 60
	stz $A306.w		; 9C 06 A3
	tay		; A8
	lda $B4AFA8.l		; AF A8 AF B4
	tyx		; BB
	cmp $60F530.l,X		; DF 30 F5 60
	stz $A306.w		; 9C 06 A3
	tay		; A8
	lda $B4AFA8.l		; AF A8 AF B4
	tyx		; BB
	cmp $60F530.l,X		; DF 30 F5 60
	stz $A306.w		; 9C 06 A3
	tay		; A8
	lda $B4AFA8.l		; AF A8 AF B4
	tyx		; BB
	cpx #$E0.b		; E0 E0
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0203.w		; 0C 03 02
	cmp $0AFC03.l,X		; DF 03 FC 0A
	cpx #$59.b		; E0 59
	rol A		; 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $04.b		; 05 04
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sed		; F8
	sbc $60DFF1.l,X		; FF F1 DF 60
	cmp $049A48.l,X		; DF 48 9A 04
	stz $9E9D.w		; 9C 9D 9E
	sta $0CA1A0.l,X		; 9F A0 A1 0C
	cmp $60F554.l,X		; DF 54 F5 60
	sta $DF0C.w,X		; 9D 0C DF
	clc		; 18
	sta $24DF0C.l,X		; 9F 0C DF 24
	lda ($0C.b,X)		; A1 0C
	cmp $049E54.l,X		; DF 54 9E 04
	sta $0CA1A0.l,X		; 9F A0 A1 0C
	cmp $60F554.l,X		; DF 54 F5 60
	sta $DF0C.w,X		; 9D 0C DF
	clc		; 18
	sta $24DF0C.l,X		; 9F 0C DF 24
	lda ($0C.b,X)		; A1 0C
	cmp $FFF860.l,X		; DF 60 F8 FF
	cpx #$A1.b		; E0 A1
	rts		; 60

	ldy #$60.b		; A0 60
	lda ($60.b,X)		; A1 60
	lda $60.b,S		; A3 60
	lda ($60.b,X)		; A1 60
	ldy #$60.b		; A0 60
	lda ($30.b,X)		; A1 30
	ldy #$A1.b		; A0 A1
	clc		; 18
	lda $A4.b,S		; A3 A4
	ldx $E0.b		; A6 E0
	eor $DF2A.w,Y		; 59 2A DF
	asl $EC.b		; 06 EC
	tsb $0204.w		; 0C 04 02
	sed		; F8
	sbc $0CDFF1.l,X		; FF F1 DF 0C
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $12DF95.l,X		; DF 95 DF 12
	sta ($06.b,S),Y		; 93 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $06921E.l,X		; DF 1E 92 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $06911E.l,X		; DF 1E 91 06
	cmp $12DF96.l,X		; DF 96 DF 12
	sta $06.b,X		; 95 06
	cmp $069612.l,X		; DF 12 96 06
	cmp $06931E.l,X		; DF 1E 93 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $06921E.l,X		; DF 1E 92 06
	cmp $12DF9A.l,X		; DF 9A DF 12
	sta $06.b,X		; 95 06
	cmp $069A12.l,X		; DF 12 9A 06
	cmp $06921E.l,X		; DF 1E 92 06
	cmp $12DF9A.l,X		; DF 9A DF 12
	sta ($06.b)		; 92 06
	cmp $95DF92.l,X		; DF 92 DF 95
	cmp $12DF9A.l,X		; DF 9A DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $069812.l,X		; DF 12 98 06
	cmp $12DF95.l,X		; DF 95 DF 12
	sta $06.b,X		; 95 06
	cmp $12DF98.l,X		; DF 98 DF 12
	sta [$06.b],Y		; 97 06
	cmp $98DF97.l,X		; DF 97 DF 98
	cmp $06DF95.l,X		; DF 95 DF 06
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$C7.b		; E0 C7
	rol A		; 2A
	cmp $FFF806.l,X		; DF 06 F8 FF
	nop		; EA
	adc $DF09.w,X		; 7D 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $DF127D.l		; 0F 7D 12 DF
	asl $84.b		; 06 84
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $DF127D.l		; 0F 7D 12 DF
	asl $84.b		; 06 84
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $81.b,S		; 03 81
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $DF127D.l		; 0F 7D 12 DF
	asl $84.b		; 06 84
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $DF127D.l		; 0F 7D 12 DF
	asl $84.b		; 06 84
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $E0.b,S		; 03 E0
	and [$2C.b],Y		; 37 2C
	cmp $18D006.l,X		; DF 06 D0 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	cmp ($D1.b),Y		; D1 D1
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D5.b),Y		; D1 D5
	cmp $D1.b,X		; D5 D1
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne   6.b		; D0 06
	cmp ($D1.b),Y		; D1 D1
	cmp ($D1.b),Y		; D1 D1
	tsb $06D5.w		; 0C D5 06
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne   6.b		; D0 06
	cmp $D1.b,X		; D5 D1
	cmp $D6.b,X		; D5 D6
	tsb $06D5.w		; 0C D5 06
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne   6.b		; D0 06
	cmp $D1.b,X		; D5 D1
	cmp $D6.b,X		; D5 D6
	tsb $06D6.w		; 0C D6 06
	dec $D0.b,X		; D6 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D1.w		; 0C D1 D1
	cmp ($E0.b),Y		; D1 E0
	cmp $00002F.l		; CF 2F 00 00
	brk $08.b		; 00 08
	and ($09.b)		; 32 09
	brk $28.b		; 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $21.b		; 00 21
	plp		; 28
	plp		; 28
	inc $0028.w		; EE 28 00
	and ($18.b,X)		; 21 18
	clc		; 18
	adc $29.b,X		; 75 29
	brk $21.b		; 00 21
	clc		; 18
	clc		; 18
	cmp $0029.w		; CD 29 00
	inc A		; 1A
	clc		; 18
	clc		; 18
	sta [$2A.b]		; 87 2A
	brk $1A.b		; 00 1A
	clc		; 18
	clc		; 18
	plx		; FA
	rol A		; 2A
	brk $21.b		; 00 21
	clc		; 18
	clc		; 18
	txy		; 9B
	bit $160C.w		; 2C 0C 16
	bit $24.b		; 24 24
	ora [$30.b],Y		; 17 30
	brk $D1.b		; 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $E0.b		; 00 E0
	cmp $21E806.l,X		; DF 06 E8 21
	cpx $0218.w		; EC 18 02
	cop $9F.b		; 02 9F
	ora $A003DF.l		; 0F DF 03 A0
	asl $A2.b		; 06 A2
	tsb $DFA7.w		; 0C A7 DF
	ldx #$21.b		; A2 21
	ldy $03.b		; A4 03
	lda $0C.b		; A5 0C
	ldy $A2.b		; A4 A2
	ldy #$2A.b		; A0 2A
	cmp $0F9F12.l,X		; DF 12 9F 0F
	cmp $06A003.l,X		; DF 03 A0 06
	ldx #$0C.b		; A2 0C
	lda [$DF.b]		; A7 DF
	ldx #$21.b		; A2 21
	ldy $03.b		; A4 03
	lda $0C.b		; A5 0C
	ldy $A2.b		; A4 A2
	ldy #$2A.b		; A0 2A
	cmp $0F9F12.l,X		; DF 12 9F 0F
	cmp $06A003.l,X		; DF 03 A0 06
	ldx #$0C.b		; A2 0C
	lda [$DF.b]		; A7 DF
	ldx #$21.b		; A2 21
	tay		; A8
	ora $A9.b,S		; 03 A9
	tsb $A5A7.w		; 0C A7 A5
	ora #$A6.b		; 09 A6
	ora $A7.b,S		; 03 A7
	ora $DF.b,X		; 15 DF
	ora $A5.b,S		; 03 A5
	tsb $15A4.w		; 0C A4 15
	cmp $60A203.l,X		; DF 03 A2 60
	ldx $60.b		; A6 60
	inx		; E8
	inc A		; 1A
	cpx $040C.w		; EC 0C 04
	ora $DF.b		; 05 DF
	clc		; 18
	tay		; A8
	tay		; A8
	ldy $A9.b		; A4 A9
	tay		; A8
	tsb $18A6.w		; 0C A6 18
	ldy $24.b		; A4 24
	cmp $A8A818.l,X		; DF 18 A8 A8
	ldy $A9.b		; A4 A9
	tay		; A8
	tsb $18A6.w		; 0C A6 18
	ldy $24.b		; A4 24
	cmp $A8A818.l,X		; DF 18 A8 A8
	lda #$AB.b		; A9 AB
	plb		; AB
	tsb $18AB.w		; 0C AB 18
	lda #$0C.b		; A9 0C
	tay		; A8
	clc		; 18
	ldx $60.b		; A6 60
	sbc $60.b,X		; F5 60
	cmp $A8A818.l,X		; DF 18 A8 A8
	lda ($A6.b,X)		; A1 A6
	lda $0C.b		; A5 0C
	lda $18.b,S		; A3 18
	lda ($24.b,X)		; A1 24
	cmp $A8A818.l,X		; DF 18 A8 A8
	lda ($A6.b,X)		; A1 A6
	lda $0C.b		; A5 0C
	lda $18.b,S		; A3 18
	lda ($24.b,X)		; A1 24
	cmp $A8A818.l,X		; DF 18 A8 A8
	lda ($A6.b,X)		; A1 A6
	lda $0C.b		; A5 0C
	lda $18.b,S		; A3 18
	lda ($24.b,X)		; A1 24
	lda $60.b,S		; A3 60
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$36.b		; E0 36
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $03.b		; 05 03
	stx $18.b,Y		; 96 18
	cmp $039C45.l,X		; DF 45 9C 03
	sta $9B0C.w,X		; 9D 0C 9B
	sta $1898.w,Y		; 99 98 18
	txy		; 9B
	tsb $A4A0.w		; 0C A0 A4
	asl $A6.b		; 06 A6
	ldx #$18.b		; A2 18
	cmp $039C45.l,X		; DF 45 9C 03
	sta $9B0C.w,X		; 9D 0C 9B
	sta $1898.w,Y		; 99 98 18
	ldy $0C.b		; A4 0C
	lda #$A7.b		; A9 A7
	ldx #$18.b		; A2 18
	cmp $03A445.l,X		; DF 45 A4 03
	lda $0C.b		; A5 0C
	ldy $A2.b		; A4 A2
	ora #$A3.b		; 09 A3
	ora $A4.b,S		; 03 A4
	clc		; 18
	ldy #$0C.b		; A0 0C
	ldy #$18.b		; A0 18
	txs		; 9A
	eor $039C.w,X		; 5D 9C 03
	sta $DF3C.w,X		; 9D 3C DF
	bit $98.b		; 24 98
	rts		; 60

	sta ($60.b),Y		; 91 60
	tya		; 98
	rts		; 60

	sta ($60.b),Y		; 91 60
	tya		; 98
	rts		; 60

	sta [$60.b],Y		; 97 60
	stx $60.b,Y		; 96 60
	sta ($60.b,S),Y		; 93 60
	sta $60.b,X		; 95 60
	stx $9560.w		; 8E 60 95
	rts		; 60

	stx $9560.w		; 8E 60 95
	rts		; 60

	stx $9360.w		; 8E 60 93
	rts		; 60

	sta ($24.b,S),Y		; 93 24
	sta $8F8D91.l		; 8F 91 8D 8F
	phb		; 8B
	sta $8889.w		; 8D 89 88
	bit $0C8A.w,X		; 3C 8A 0C
	sty $918E.w		; 8C 8E 91
	stx $098F.w		; 8E 8F 09
	sta ($03.b)		; 92 03
	sta ($0C.b,S),Y		; 93 0C
	sta ($09.b),Y		; 91 09
	sta ($03.b,S),Y		; 93 03
	sty $0C.b,X		; 94 0C
	tya		; 98
	ora #$99.b		; 09 99
	ora $9A.b,S		; 03 9A
	tsb $F4E0.w		; 0C E0 F4
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $03.b		; 05 03
	cmp $60F53C.l,X		; DF 3C F5 60
	tya		; 98
	tsb $A09B.w		; 0C 9B A0
	asl $A2.b		; 06 A2
	cmp $60F53C.l,X		; DF 3C F5 60
	txy		; 9B
	tsb $A4A6.w		; 0C A6 A4
	cmp $039F5D.l,X		; DF 5D 9F 03
	ldy #$0C.b		; A0 0C
	sta $9F099D.l,X		; 9F 9D 09 9F
	ora $A0.b,S		; 03 A0
	clc		; 18
	sta $9B0C.w,X		; 9D 0C 9B
	clc		; 18
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$7B.b		; E0 7B
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $02.b,S		; 03 02
	cmp $12A718.l,X		; DF 18 A7 12
	ldx $02.b		; A6 02
	lda $01.b		; A5 01
	ldy $02.b		; A4 02
	lda $01.b,S		; A3 01
	ldx #$02.b		; A2 02
	lda ($01.b,X)		; A1 01
	ldy #$02.b		; A0 02
	sta $029E01.l,X		; 9F 01 9E 02
	sta $9C01.w,X		; 9D 01 9C
	cop $9B.b		; 02 9B
	ora ($DF.b,X)		; 01 DF
	bit $60F5.w,X		; 3C F5 60
.ACCU 8
	sep #$E1		; E2 E1
	cmp $29.b,X		; D5 29
	sbc ($D5.b,X)		; E1 D5
	and #$9A.b		; 29 9A
	clc		; 18
	sta $A2A4.w,X		; 9D A4 A2
	bmi -33.b		; 30 DF
	tsb $06A2.w		; 0C A2 06
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A312A4.l,X		; DF A4 12 A3
	cop $A2.b		; 02 A2
	ora ($A1.b,X)		; 01 A1
	cop $A0.b		; 02 A0
	ora ($9F.b,X)		; 01 9F
	cop $9E.b		; 02 9E
	ora ($9D.b,X)		; 01 9D
	cop $9C.b		; 02 9C
	ora ($9B.b,X)		; 01 9B
	cop $9A.b		; 02 9A
	ora ($99.b,X)		; 01 99
	cop $98.b		; 02 98
	ora ($E2.b,X)		; 01 E2
	cmp $0C9D60.l,X		; DF 60 9D 0C
	cmp $E1249C.l,X		; DF 9C 24 E1
	ora #$2A.b		; 09 2A
	cmp $0C9D60.l,X		; DF 60 9D 0C
	cmp $E1249C.l,X		; DF 9C 24 E1
	ora #$2A.b		; 09 2A
	cmp $18A33C.l,X		; DF 3C A3 18
	lda $0C.b,S		; A3 0C
	lda $18.b,S		; A3 18
	lda ($0C.b,X)		; A1 0C
	sta $309D18.l,X		; 9F 18 9D 30
	ldy $A3.b		; A4 A3
	sta $A012A1.l,X		; 9F A1 12 A0
	cop $9F.b		; 02 9F
	ora ($9E.b,X)		; 01 9E
	cop $9D.b		; 02 9D
	ora ($9C.b,X)		; 01 9C
	cop $9B.b		; 02 9B
	ora ($9A.b,X)		; 01 9A
	cop $99.b		; 02 99
	ora ($98.b,X)		; 01 98
	cop $97.b		; 02 97
	ora ($96.b,X)		; 01 96
	cop $95.b		; 02 95
	ora ($DF.b,X)		; 01 DF
	rts		; 60

	txs		; 9A
	tsb $9EDF.w		; 0C DF 9E
	bit $E9.b		; 24 E9
	brk $03.b		; 00 03
	eor #$2A.b		; 49 2A
	txs		; 9A
	bit $0C9F.w,X		; 3C 9F 0C
	ldx $AB.b		; A6 AB
	bcs  36.b		; B0 24
	lda $ABAE.w		; AD AE AB
	ldy $AAA9.w		; AC A9 AA
	lda [$A9.b]		; A7 A9
	mvn $60,$F5		; 54 F5 60
	cmp $D3E00C.l,X		; DF 0C E0 D3
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b		; 05 03
	cmp $129F18.l,X		; DF 18 9F 12
	stz $9D02.w,X		; 9E 02 9D
	ora ($9C.b,X)		; 01 9C
	cop $9B.b		; 02 9B
	ora ($9A.b,X)		; 01 9A
	cop $99.b		; 02 99
	ora ($98.b,X)		; 01 98
	cop $97.b		; 02 97
	ora ($96.b,X)		; 01 96
	cop $95.b		; 02 95
	ora ($94.b,X)		; 01 94
	cop $93.b		; 02 93
	ora ($E2.b,X)		; 01 E2
	cmp $60F53C.l,X		; DF 3C F5 60
	sta $91E112.l,X		; 9F 12 E1 91
	rol A		; 2A
	cmp $60F53C.l,X		; DF 3C F5 60
	sta $91E112.l,X		; 9F 12 E1 91
	rol A		; 2A
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sta $DF06.w,X		; 9D 06 DF
	sta $9DDF.w,X		; 9D DF 9D
	cmp $60F506.l,X		; DF 06 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	tay		; A8
	bit $A4.b		; 24 A4
	ldx $A2.b		; A6 A2
	ldy $A0.b		; A4 A0
	ldx #$9E.b		; A2 9E
	ldx $54.b		; A6 54
	sbc $60.b,X		; F5 60
	cmp $8DE00C.l,X		; DF 0C E0 8D
	rol A		; 2A
	cmp $0CEC06.l,X		; DF 06 EC 0C
	cop $02.b		; 02 02
	sta $8FDF06.l		; 8F 06 DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8DDF8D.l,X		; DF 8D DF 8D
	cmp $88DF8D.l,X		; DF 8D DF 88
	clc		; 18
	dey		; 88
	asl $DF.b		; 06 DF
	dey		; 88
	cmp $8FDF88.l,X		; DF 88 DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8DDF8F.l,X		; DF 8F DF 8D
	cmp $8DDF8D.l,X		; DF 8D DF 8D
	cmp $881888.l,X		; DF 88 18 88
	asl $DF.b		; 06 DF
	dey		; 88
	cmp $8FDF88.l,X		; DF 88 DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $8DDF8F.l,X		; DF 8F DF 8D
	cmp $8DDF8D.l,X		; DF 8D DF 8D
	cmp $881888.l,X		; DF 88 18 88
	asl $DF.b		; 06 DF
	dey		; 88
	cmp $8ADF88.l,X		; DF 88 DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8CDF8A.l,X		; DF 8A DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $85DF8C.l,X		; DF 8C DF 85
	cmp $85DF85.l,X		; DF 85 DF 85
	cmp $85DF85.l,X		; DF 85 DF 85
	cmp $85DF85.l,X		; DF 85 DF 85
	cmp $8CDF85.l,X		; DF 85 DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $85DF8C.l,X		; DF 8C DF 85
	cmp $85DF85.l,X		; DF 85 DF 85
	cmp $85DF85.l,X		; DF 85 DF 85
	cmp $85DF85.l,X		; DF 85 DF 85
	cmp $8CDF85.l,X		; DF 85 DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $87DF8C.l,X		; DF 8C DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $8ADF87.l,X		; DF 87 DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $87DF8A.l,X		; DF 8A DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $89DF87.l,X		; DF 87 DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $8EDF89.l,X		; DF 89 DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $89DF8E.l,X		; DF 8E DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $8EDF89.l,X		; DF 89 DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $89DF8E.l,X		; DF 8E DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $89DF89.l,X		; DF 89 DF 89
	cmp $8EDF89.l,X		; DF 89 DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $87DF8E.l,X		; DF 8E DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $87DF87.l,X		; DF 87 DF 87
	cmp $8CDF87.l,X		; DF 87 DF 8C
	bit $91.b		; 24 91
	txa		; 8A
	sta $868D88.l		; 8F 88 8D 86
	phb		; 8B
	txa		; 8A
	asl $DF.b		; 06 DF
	txa		; 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $8ADF8A.l,X		; DF 8A DF 8A
	cmp $2B00E0.l,X		; DF E0 00 2B
	cmp $FFF806.l,X		; DF 06 F8 FF
	inc $0983.w		; EE 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097C06.l,X		; DF 06 7C 09
	cmp $097C03.l,X		; DF 03 7C 09
	cmp $097C03.l,X		; DF 03 7C 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097C06.l,X		; DF 06 7C 09
	cmp $097C03.l,X		; DF 03 7C 09
	cmp $097C03.l,X		; DF 03 7C 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098303.l,X		; DF 03 83 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097C06.l,X		; DF 06 7C 09
	cmp $097C03.l,X		; DF 03 7C 09
	cmp $097C03.l,X		; DF 03 7C 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $097E03.l,X		; DF 03 7E 09
	cmp $DF8A03.l,X		; DF 03 8A DF
	txa		; 8A
	cmp $DF097E.l,X		; DF 7E 09 DF
	ora $8A.b,S		; 03 8A
	cmp $80DF8A.l,X		; DF 8A DF 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $8C.b,S		; 03 8C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $8C.b,S		; 03 8C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $8C.b,S		; 03 8C
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $8B.b,S		; 03 8B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $8A.b,S		; 03 8A
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $89.b,S		; 03 89
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $8E.b,S		; 03 8E
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $89.b,S		; 03 89
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $8E.b,S		; 03 8E
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $89.b,S		; 03 89
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $8E.b,S		; 03 8E
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $8A.b,S		; 03 8A
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $81.b,S		; 03 81
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $81.b,S		; 03 81
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $7E.b,S		; 03 7E
	ora #$DF.b		; 09 DF
	ora $8A.b,S		; 03 8A
	cmp $7EDF8A.l,X		; DF 8A DF 7E
	ora #$DF.b		; 09 DF
	ora $8A.b,S		; 03 8A
	cmp $E0DF8A.l,X		; DF 8A DF E0
	sta $DF2C.w,X		; 9D 2C DF
	asl $D0.b		; 06 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	cmp $06.b,X		; D5 06
	cmp $D1.b,X		; D5 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	cmp ($D1.b),Y		; D1 D1
	asl $D1.b		; 06 D1
	cmp ($D1.b),Y		; D1 D1
	ora $D5.b,S		; 03 D5
	cmp $0C.b,X		; D5 0C
	bne -48.b		; D0 D0
	ora #$D5.b		; 09 D5
	ora $D5.b,S		; 03 D5
	tsb $D0D0.w		; 0C D0 D0
	ora #$D5.b		; 09 D5
	ora $D5.b,S		; 03 D5
	tsb $D0D0.w		; 0C D0 D0
	ora #$D5.b		; 09 D5
	ora $D5.b,S		; 03 D5
	tsb $D0D0.w		; 0C D0 D0
	ora #$D5.b		; 09 D5
	ora $D5.b,S		; 03 D5
	tsb $D0D0.w		; 0C D0 D0
	ora #$D5.b		; 09 D5
	ora $D5.b,S		; 03 D5
	tsb $D0D0.w		; 0C D0 D0
	ora #$D5.b		; 09 D5
	ora $D5.b,S		; 03 D5
	tsb $D0D0.w		; 0C D0 D0
	ora #$D5.b		; 09 D5
	ora $D5.b,S		; 03 D5
	tsb $D0D0.w		; 0C D0 D0
	bne  24.b		; D0 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($E0.b),Y		; D1 E0
	ora $0030.w,Y		; 19 30 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0A.b		; 04 0A
	brk $28.b		; 00 28
	php		; 08
	rol $0028.w,X		; 3E 28 00
	inc A		; 1A
	plp		; 28
	clc		; 18
	cmp $0029.w,X		; DD 29 00
	asl $1808.w,X		; 1E 08 18
	dec A		; 3A
	rol A		; 2A
	brk $1E.b		; 00 1E
	clc		; 18
	php		; 08
	cmp $2A.b,S		; C3 2A
	brk $21.b		; 00 21
	clc		; 18
	php		; 08
	stz $002C.w		; 9C 2C 00
	and ($08.b,X)		; 21 08
	clc		; 18
	and ($28.b),Y		; 31 28
	brk $1A.b		; 00 1A
	bpl   8.b		; 10 08
	adc $2E.b,X		; 75 2E
	tsb $2416.w		; 0C 16 24
	bit $9B.b		; 24 9B
	bmi   0.b		; 30 00
	cmp ($3E.b),Y		; D1 3E
	rol $06DF.w,X		; 3E DF 06
	cpx $0518.w		; EC 18 05
	ora $FC.b,S		; 03 FC
	php		; 08
	cmp $47E006.l,X		; DF 06 E0 47
	plp		; 28
	sbc ($00.b,S),Y		; F3 00
	beq -33.b		; F0 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b		; 05 03
	cmp $06A30C.l,X		; DF 0C A3 06
	cmp $9F0CA3.l,X		; DF A3 0C 9F
	asl $DF.b		; 06 DF
	lda ($0C.b,X)		; A1 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $069F.w		; 0C 9F 06
	cmp $A3A203.l,X		; DF 03 A2 A3
	ora $DF.b,X		; 15 DF
	ora $9C.b,S		; 03 9C
	asl $DF.b		; 06 DF
	sta $03DF15.l,X		; 9F 15 DF 03
	lda ($21.b,X)		; A1 21
	cmp $06A30F.l,X		; DF 0F A3 06
	cmp $9F0CA3.l,X		; DF A3 0C 9F
	asl $DF.b		; 06 DF
	lda ($0C.b,X)		; A1 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $06A3.w		; 0C A3 06
	cmp $DF15A1.l,X		; DF A1 15 DF
	ora $9F.b,S		; 03 9F
	asl $DF.b		; 06 DF
	stz $DF21.w		; 9C 21 DF
	and [$A3.b]		; 27 A3
	asl $DF.b		; 06 DF
	lda $0C.b,S		; A3 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $069F.w		; 0C 9F 06
	cmp $9F0CA1.l,X		; DF A1 0C 9F
	asl $DF.b		; 06 DF
	ora $A2.b,S		; 03 A2
	lda $15.b,S		; A3 15
	cmp $069C03.l,X		; DF 03 9C 06
	cmp $DF159F.l,X		; DF 9F 15 DF
	ora $A1.b,S		; 03 A1
	and ($DF.b,X)		; 21 DF
	ora $DF06A3.l		; 0F A3 06 DF
	lda $0C.b,S		; A3 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $069F.w		; 0C 9F 06
	cmp $A30CA1.l,X		; DF A1 0C A3
	asl $DF.b		; 06 DF
	tay		; A8
	eor [$DF.b],Y		; 57 DF
	ora #$DF.b		; 09 DF
	tsb $06A3.w		; 0C A3 06
	cmp $9F0CA3.l,X		; DF A3 0C 9F
	asl $DF.b		; 06 DF
	lda ($0C.b,X)		; A1 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $069F.w		; 0C 9F 06
	cmp $A3A203.l,X		; DF 03 A2 A3
	ora $DF.b,X		; 15 DF
	ora $9C.b,S		; 03 9C
	asl $DF.b		; 06 DF
	sta $03DF15.l,X		; 9F 15 DF 03
	lda ($21.b,X)		; A1 21
	cmp $06A30F.l,X		; DF 0F A3 06
	cmp $9F0CA3.l,X		; DF A3 0C 9F
	asl $DF.b		; 06 DF
	lda ($0C.b,X)		; A1 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $06A3.w		; 0C A3 06
	cmp $DF15A1.l,X		; DF A1 15 DF
	ora $9F.b,S		; 03 9F
	asl $DF.b		; 06 DF
	stz $DF21.w		; 9C 21 DF
	and [$A3.b]		; 27 A3
	asl $DF.b		; 06 DF
	lda $0C.b,S		; A3 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $069F.w		; 0C 9F 06
	cmp $9F0CA1.l,X		; DF A1 0C 9F
	asl $DF.b		; 06 DF
	ora $A2.b,S		; 03 A2
	lda $15.b,S		; A3 15
	cmp $069C03.l,X		; DF 03 9C 06
	cmp $DF159F.l,X		; DF 9F 15 DF
	ora $A1.b,S		; 03 A1
	and ($DF.b,X)		; 21 DF
	ora $DF06A3.l		; 0F A3 06 DF
	lda $0C.b,S		; A3 0C
	sta $A1DF06.l,X		; 9F 06 DF A1
	tsb $069F.w		; 0C 9F 06
	cmp $A30CA1.l,X		; DF A1 0C A3
	asl $DF.b		; 06 DF
	tay		; A8
	eor [$DF.b],Y		; 57 DF
	and ($A3.b,X)		; 21 A3
	asl $DF.b		; 06 DF
	lda $DF.b,S		; A3 DF
	lda $15.b,S		; A3 15
	cmp $15A303.l,X		; DF 03 A3 15
	cmp $15A403.l,X		; DF 03 A4 15
	cmp $06A403.l,X		; DF 03 A4 06
	cmp $DF36A4.l,X		; DF A4 36 DF
	asl $A6.b		; 06 A6
	ora $DF.b,X		; 15 DF
	ora $A6.b,S		; 03 A6
	asl $DF.b		; 06 DF
	ldx $21.b		; A6 21
	cmp $0CA303.l,X		; DF 03 A3 0C
	ldx $A8.b		; A6 A8
	eor [$DF.b],Y		; 57 DF
	and ($A4.b,X)		; 21 A4
	asl $DF.b		; 06 DF
	ldy $DF.b		; A4 DF
	ldy $15.b		; A4 15
	cmp $15A403.l,X		; DF 03 A4 15
	cmp $15A603.l,X		; DF 03 A6 15
	cmp $06A603.l,X		; DF 03 A6 06
	cmp $DF36A6.l,X		; DF A6 36 DF
	asl $A8.b		; 06 A8
	ora $DF.b,X		; 15 DF
	ora $A8.b,S		; 03 A8
	asl $DF.b		; 06 DF
	tay		; A8
	and ($DF.b,X)		; 21 DF
	ora $A4.b,S		; 03 A4
	tsb $AAA8.w		; 0C A8 AA
	ora $DF.b,X		; 15 DF
	ora $AA.b,S		; 03 AA
	asl $DF.b		; 06 DF
	tax		; AA
	rol $DF.b,X		; 36 DF
	asl $AB.b		; 06 AB
	ora $DF.b,X		; 15 DF
	ora $AA.b,S		; 03 AA
	tsb $06A8.w		; 0C A8 06
	cmp $06A612.l,X		; DF 12 A6 06
	cmp $60A812.l,X		; DF 12 A8 60
	cmp $03AA09.l,X		; DF 09 AA 03
	plb		; AB
	ora $DF.b,X		; 15 DF
	ora $AA.b,S		; 03 AA
	tsb $06A8.w		; 0C A8 06
	cmp $06A612.l,X		; DF 12 A6 06
	cmp $60A812.l,X		; DF 12 A8 60
	cmp $15AB0C.l,X		; DF 0C AB 15
	cmp $0CAA03.l,X		; DF 03 AA 0C
	tay		; A8
	asl $DF.b		; 06 DF
	asl $0CAB.w,X		; 1E AB 0C
	plb		; AB
	tax		; AA
	tay		; A8
	ora $DF.b,X		; 15 DF
	ora $A6.b,S		; 03 A6
	and ($DF.b,X)		; 21 DF
	ora $A8.b,S		; 03 A8
	eor [$DF.b],Y		; 57 DF
	ora #$F5.b		; 09 F5
	rts		; 60

	cpx #$47.b		; E0 47
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	cop $08.b		; 02 08
	cmp $60F524.l,X		; DF 24 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	tya		; 98
	tsb $98DF.w		; 0C DF 98
	txs		; 9A
	cmp $48DF9C.l,X		; DF 9C DF 48
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $9A04.w,Y		; 99 04 9A
	txy		; 9B
	stz $DF0C.w		; 9C 0C DF
	clc		; 18
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	tya		; 98
	tsb $98DF.w		; 0C DF 98
	txs		; 9A
	cmp $3CDF9C.l,X		; DF 9C DF 3C
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$E3.b		; E0 E3
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b,S		; 03 03
	cmp $60F530.l,X		; DF 30 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $60F50C.l,X		; 9F 0C F5 60
	stz $9E0C.w		; 9C 0C 9E
	sta $A1489E.l,X		; 9F 9E 48 A1
	clc		; 18
	sta $3C9C60.l,X		; 9F 60 9C 3C
	stz $9F0C.w,X		; 9E 0C 9F
	stz $3C9E.w		; 9C 9E 3C
	sta $9EA10C.l,X		; 9F 0C A1 9E
	sta $0CA33C.l,X		; 9F 3C A3 0C
	lda ($9F.b,X)		; A1 9F
	lda ($18.b,X)		; A1 18
	lda $0C.b,S		; A3 0C
	lda $24.b		; A5 24
	lda [$18.b]		; A7 18
	tay		; A8
	lda ($0C.b,X)		; A1 0C
	sta $12DF06.l,X		; 9F 06 DF 12
	stz $DF06.w,X		; 9E 06 DF
	ora ($9F.b)		; 12 9F
	tsb $60F5.w		; 0C F5 60
	tay		; A8
	clc		; 18
	lda ($0C.b,X)		; A1 0C
	sta $12DF06.l,X		; 9F 06 DF 12
	stz $DF06.w,X		; 9E 06 DF
	ora ($9F.b)		; 12 9F
	tsb $60F5.w		; 0C F5 60
	lda $18.b,S		; A3 18
	lda ($0C.b,X)		; A1 0C
	sta $1EDF06.l,X		; 9F 06 DF 1E
	lda $0C.b,S		; A3 0C
	lda $A1.b,S		; A3 A1
	sta $249E18.l,X		; 9F 18 9E 24
	sta $189E60.l,X		; 9F 60 9E 18
	sta $E0A3A1.l,X		; 9F A1 A3 E0
	rti		; 40

	rol A		; 2A
	cmp $0CEC06.l,X		; DF 06 EC 0C
	cop $02.b		; 02 02
	sta ($06.b,S),Y		; 93 06
	cmp $9ADF93.l,X		; DF 93 DF 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	ora ($9C.b)		; 12 9C
	tsb $95DF.w		; 0C DF 95
	asl A		; 0A
	cmp $0C9502.l,X		; DF 02 95 0C
	cmp $DF0693.l,X		; DF 93 06 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	txs		; 9A
	ora ($9A.b)		; 12 9A
	asl $93.b		; 06 93
	cmp $9C189C.l,X		; DF 9C 18 9C
	asl $DF.b		; 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	ora ($9C.b)		; 12 9C
	tsb $95DF.w		; 0C DF 95
	asl A		; 0A
	cmp $0C9502.l,X		; DF 02 95 0C
	cmp $DF0697.l,X		; DF 97 06 DF
	sta [$DF.b],Y		; 97 DF
	sta [$DF.b],Y		; 97 DF
	sta [$DF.b],Y		; 97 DF
	sta [$DF.b],Y		; 97 DF
	sta [$DF.b],Y		; 97 DF
	sta [$DF.b],Y		; 97 DF
	sta [$DF.b],Y		; 97 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta $DF.b,X		; 95 DF
	sta $DF.b,X		; 95 DF
	sta $DF.b,X		; 95 DF
	sta $DF.b,X		; 95 DF
	sta $DF.b,X		; 95 DF
	sta $DF.b,X		; 95 DF
	sta $DF.b,X		; 95 DF
	sta $DF.b,X		; 95 DF
	sta [$DF.b],Y		; 97 DF
	sta [$0C.b],Y		; 97 0C
	sta $93.b,X		; 95 93
	stx $95.b,Y		; 96 95
	sta ($95.b,S),Y		; 93 95
	sta ($06.b,S),Y		; 93 06
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $95DF93.l,X		; DF 93 DF 95
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $93DF95.l,X		; DF 95 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $92DF93.l,X		; DF 93 DF 92
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $95DF92.l,X		; DF 92 DF 95
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $93DF95.l,X		; DF 95 DF 93
	clc		; 18
	sta $0C.b,X		; 95 0C
	sta [$DF.b],Y		; 97 DF
	sta $DF.b,X		; 95 DF
	sta [$18.b],Y		; 97 18
	sta [$06.b],Y		; 97 06
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $951893.l,X		; DF 93 18 95
	tsb $DF97.w		; 0C 97 DF
	sta $DF.b,X		; 95 DF
	sta [$18.b],Y		; 97 18
	sta [$06.b],Y		; 97 06
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $951893.l,X		; DF 93 18 95
	tsb $DF97.w		; 0C 97 DF
	clc		; 18
	sta ($0C.b,S),Y		; 93 0C
	sta ($95.b,S),Y		; 93 95
	sta [$18.b],Y		; 97 18
	sta $24.b,X		; 95 24
	sta ($06.b,S),Y		; 93 06
	cmp $95DF93.l,X		; DF 93 DF 95
	cmp $97DF95.l,X		; DF 95 DF 97
	cmp $93DF97.l,X		; DF 97 DF 93
	cmp $92DF93.l,X		; DF 93 DF 92
	cmp $93DF92.l,X		; DF 92 DF 93
	cmp $95DF93.l,X		; DF 93 DF 95
	cmp $92DF95.l,X		; DF 95 DF 92
	cmp $E0DF92.l,X		; DF 92 DF E0
	cmp #$2A.b		; C9 2A
	cmp $18EC06.l,X		; DF 06 EC 18
	cop $02.b		; 02 02
	bcc   6.b		; 90 06
	cmp $97DF90.l,X		; DF 90 DF 97
	ora ($97.b)		; 12 97
	asl $90.b		; 06 90
	cmp $991899.l,X		; DF 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	ora ($93.b)		; 12 93
	tsb $92DF.w		; 0C DF 92
	asl A		; 0A
	cmp $0C9202.l,X		; DF 02 92 0C
	cmp $DF0690.l,X		; DF 90 06 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta [$12.b],Y		; 97 12
	sta [$06.b],Y		; 97 06
	bcc -33.b		; 90 DF
	sta $9918.w,Y		; 99 18 99
	asl $DF.b		; 06 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	ora ($93.b)		; 12 93
	tsb $92DF.w		; 0C DF 92
	asl A		; 0A
	cmp $0C9202.l,X		; DF 02 92 0C
	cmp $DF0693.l,X		; DF 93 06 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b,S),Y		; 93 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	bcc -33.b		; 90 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b)		; 92 DF
	sta ($DF.b,S),Y		; 93 DF
	sta [$0C.b],Y		; 97 0C
	sta $93.b,X		; 95 93
	stx $95.b,Y		; 96 95
	sta ($95.b,S),Y		; 93 95
	bcc   6.b		; 90 06
	cmp $90DF90.l,X		; DF 90 DF 90
	cmp $90DF90.l,X		; DF 90 DF 90
	cmp $90DF90.l,X		; DF 90 DF 90
	cmp $92DF90.l,X		; DF 90 DF 92
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $90DF92.l,X		; DF 92 DF 90
	cmp $90DF90.l,X		; DF 90 DF 90
	cmp $90DF90.l,X		; DF 90 DF 90
	cmp $90DF90.l,X		; DF 90 DF 90
	cmp $8FDF90.l,X		; DF 90 DF 8F
	cmp $8FDF8F.l,X		; DF 8F DF 8F
	cmp $92DF8F.l,X		; DF 8F DF 92
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $90DF92.l,X		; DF 92 DF 90
	clc		; 18
	sta ($0C.b)		; 92 0C
	sta ($DF.b,S),Y		; 93 DF
	sta ($DF.b)		; 92 DF
	sta ($18.b,S),Y		; 93 18
	sta ($06.b,S),Y		; 93 06
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $921890.l,X		; DF 90 18 92
	tsb $DF93.w		; 0C 93 DF
	sta ($DF.b)		; 92 DF
	sta ($18.b,S),Y		; 93 18
	sta ($06.b,S),Y		; 93 06
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $93DF93.l,X		; DF 93 DF 93
	cmp $921890.l,X		; DF 90 18 92
	tsb $DF93.w		; 0C 93 DF
	clc		; 18
	bcc  12.b		; 90 0C
	bcc -110.b		; 90 92
	sta ($18.b,S),Y		; 93 18
	sta ($24.b)		; 92 24
	bcc   6.b		; 90 06
	cmp $92DF90.l,X		; DF 90 DF 92
	cmp $93DF92.l,X		; DF 92 DF 93
	cmp $90DF93.l,X		; DF 93 DF 90
	cmp $8FDF90.l,X		; DF 90 DF 8F
	cmp $90DF8F.l,X		; DF 8F DF 90
	cmp $92DF90.l,X		; DF 90 DF 92
	cmp $8FDF92.l,X		; DF 92 DF 8F
	cmp $E0DF8F.l,X		; DF 8F DF E0
	ldx #$2C.b		; A2 2C
	cmp $FFF806.l,X		; DF 06 F8 FF
	inc $1878.w		; EE 78 18
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	tda		; 7B
	adc $810682.l,X		; 7F 82 06 81
	ora ($7B.b)		; 12 7B
	tsb $7B7D.w		; 0C 7D 7B
	sei		; 78
	clc		; 18
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	tda		; 7B
	adc $810682.l,X		; 7F 82 06 81
	ora ($7B.b)		; 12 7B
	tsb $7B7D.w		; 0C 7D 7B
	sei		; 78
	clc		; 18
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	tda		; 7B
	adc $810682.l,X		; 7F 82 06 81
	ora ($7B.b)		; 12 7B
	tsb $7B7D.w		; 0C 7D 7B
	sei		; 78
	clc		; 18
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	clc		; 18
	cmp $DF800C.l,X		; DF 0C 80 DF
	bra -126.b		; 80 82
	clc		; 18
	sei		; 78
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	tda		; 7B
	adc $810682.l,X		; 7F 82 06 81
	ora ($7B.b)		; 12 7B
	tsb $7B7D.w		; 0C 7D 7B
	sei		; 78
	clc		; 18
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	tda		; 7B
	adc $810682.l,X		; 7F 82 06 81
	ora ($7B.b)		; 12 7B
	tsb $7B7D.w		; 0C 7D 7B
	sei		; 78
	clc		; 18
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	tda		; 7B
	adc $810682.l,X		; 7F 82 06 81
	ora ($7B.b)		; 12 7B
	tsb $7B7D.w		; 0C 7D 7B
	sei		; 78
	clc		; 18
	sty $12.b		; 84 12
	adc $0C7D06.l,X		; 7F 06 7D 0C
	sta ($18.b,X)		; 81 18
	sty $0C.b		; 84 0C
	sei		; 78
	clc		; 18
	cmp $DF800C.l,X		; DF 0C 80 DF
	bra -126.b		; 80 82
	clc		; 18
	sei		; 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $8B.b,S		; 03 8B
	tsb $8789.w		; 0C 89 87
	txa		; 8A
	bit #$87.b		; 89 87
	bit #$80.b		; 89 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	clc		; 18
	.db $82, $0C, $84		; 82 0C 84
	cmp $84DF82.l,X		; DF 82 DF 84
	ora $DF.b,X		; 15 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	asl $7A.b		; 06 7A
	tda		; 7B
	tsb $067F.w		; 0C 7F 06
	stx $84.b		; 86 84
	adc $800C78.l,X		; 7F 78 0C 80
	clc		; 18
	ror $0C.b,X		; 76 0C
	sei		; 78
	cmp $84DF76.l,X		; DF 76 DF 84
	clc		; 18
	sty $0C.b		; 84 0C
	sty $7E.b		; 84 7E
	asl $7F.b		; 06 7F
	bra 122.b		; 80 7A
	tda		; 7B
	sei		; 78
	sty $0C.b		; 84 0C
	sei		; 78
	asl $78.b		; 06 78
	bra  24.b		; 80 18
	.db $82, $0C, $84		; 82 0C 84
	cmp $0C8018.l,X		; DF 18 80 0C
	bra -126.b		; 80 82
	sty $18.b		; 84 18
	.db $82, $24, $84		; 82 24 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	asl $7E.b		; 06 7E
	adc $7D0C7A.l,X		; 7F 7A 0C 7D
	adc $7F8006.l,X		; 7F 06 80 7F
	cpx #$77.b		; E0 77
	rol $06DF.w		; 2E DF 06
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b)		; D2 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D5.b),Y		; D1 D5
	tsb $06D6.w		; 0C D6 06
	dec $D0.b,X		; D6 D0
	tsb $D1D2.w		; 0C D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b)		; D2 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D1.b),Y		; D1 D1
	asl $D1.b		; 06 D1
	bne  12.b		; D0 0C
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b)		; D2 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D5.b),Y		; D1 D5
	tsb $06D6.w		; 0C D6 06
	dec $D0.b,X		; D6 D0
	tsb $D1D2.w		; 0C D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b)		; D2 D0
	cmp ($D1.b)		; D2 D1
	ora ($D1.b)		; 12 D1
	asl $D0.b		; 06 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp ($D0.b,S),Y		; D3 D0
	cmp ($D1.b)		; D2 D1
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D1.b),Y		; D1 D1
	asl $D1.b		; 06 D1
	bne  24.b		; D0 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D0.b)		; D2 D0
	bne -47.b		; D0 D1
	cmp ($D0.b)		; D2 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D0.b)		; D2 D0
	bne -47.b		; D0 D1
	cmp ($D0.b)		; D2 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D0.b)		; D2 D0
	bne -47.b		; D0 D1
	cmp ($D0.b)		; D2 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D5.b),Y		; D1 D5
	cmp ($06.b),Y		; D1 06
	cmp ($D1.b),Y		; D1 D1
	tsb $D0D3.w		; 0C D3 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D0.b)		; D2 D0
	bne -47.b		; D0 D1
	cmp ($D0.b)		; D2 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D0.b)		; D2 D0
	bne -47.b		; D0 D1
	cmp ($D0.b)		; D2 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D0.b)		; D2 D0
	bne -47.b		; D0 D1
	cmp ($D0.b)		; D2 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($D0.b)		; D2 D0
	cmp $06.b,X		; D5 06
	cmp $D1.b,X		; D5 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	cmp ($D5.b),Y		; D1 D5
	asl $D5.b		; 06 D5
	dec $D6.b,X		; D6 D6
	bne  24.b		; D0 18
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne   6.b		; D0 06
	cmp ($D1.b),Y		; D1 D1
	cmp ($D1.b),Y		; D1 D1
	tsb $D0D1.w		; 0C D1 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	cmp ($24.b),Y		; D1 24
	cmp ($0C.b),Y		; D1 0C
	cmp ($D1.b),Y		; D1 D1
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	pei ($04.b)		; D4 04
	cmp $D5.b,X		; D5 D5
	cmp $0C.b,X		; D5 0C
	bne  24.b		; D0 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $D2D0.w		; 0C D0 D2
	asl $D3.b		; 06 D3
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b),Y		; D1 D1
	cmp ($D1.b),Y		; D1 D1
	cpx #$9D.b		; E0 9D
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	php		; 08
	and $000B.w		; 2D 0B 00
	plp		; 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $1A.b		; 00 1A
	plp		; 28
	plp		; 28
	ldy $0028.w,X		; BC 28 00
	ora $191808.l,X		; 1F 08 18 19
	and #$00.b		; 29 00
	clc		; 18
	clc		; 18
	php		; 08
	stz $0029.w		; 9C 29 00
	ora $0616.w,Y		; 19 16 06
	bcs  44.b		; B0 2C
	brk $19.b		; 00 19
	tsb $14.b		; 04 14
	cmp $2F.b,S		; C3 2F
	brk $1E.b		; 00 1E
	clc		; 18
	clc		; 18
	bit $30.b,X		; 34 30
	tsb $2417.w		; 0C 17 24
	bit $88.b		; 24 88
	and ($00.b),Y		; 31 00
	cmp ($3E.b),Y		; D1 3E
	rol $00F3.w,X		; 3E F3 00
	xba		; EB
	cmp $18EC06.l,X		; DF 06 EC 18
	cop $03.b		; 02 03
	tay		; A8
	clc		; 18
	lda #$0C.b		; A9 0C
	tay		; A8
	clc		; 18
	ldy $A1.b		; A4 A1
	tsb $45A6.w		; 0C A6 45
	cmp $15A103.l,X		; DF 03 A1 15
	cmp $48A103.l,X		; DF 03 A1 48
	txs		; 9A
	tsb $9FA1.w		; 0C A1 9F
	rts		; 60

	cmp $A19F18.l,X		; DF 18 9F A1
	ldx #$A6.b		; A2 A6
	ldy $09.b		; A4 09
	cmp $24A403.l,X		; DF 03 A4 24
	ldx #$18.b		; A2 18
.ACCU 8
	sep #$A1		; E2 A1
	bmi -11.b		; 30 F5
	rts		; 60

	cmp $3AE130.l,X		; DF 30 E1 3A
	plp		; 28
	lda ($48.b,X)		; A1 48
	sbc $60.b,X		; F5 60
	cmp $60F548.l,X		; DF 48 F5 60
	sbc $60.b,X		; F5 60
	lda ($10.b,X)		; A1 10
	sta $18A19D.l,X		; 9F 9D A1 18
	sta $03DF09.l,X		; 9F 09 DF 03
	sta $189D24.l,X		; 9F 24 9D 18
	lda ($24.b,X)		; A1 24
	cmp $10A60C.l,X		; DF 0C A6 10
	tay		; A8
	lda #$A8.b		; A9 A8
	clc		; 18
	ldx $09.b		; A6 09
	cmp $18A103.l,X		; DF 03 A1 18
	sta $DF099D.l,X		; 9F 9D 09 DF
	ora $9A.b,S		; 03 9A
	bit $A2.b		; 24 A2
	bit $249C.w,X		; 3C 9C 24
	ldy $3C.b		; A4 3C
	ldx $45.b		; A6 45
	sbc $60.b,X		; F5 60
	cmp $18A103.l,X		; DF 03 A1 18
	txs		; 9A
	bit $A2.b		; 24 A2
	and $03DF.w,Y		; 39 DF 03
	stz $A424.w		; 9C 24 A4
	and $03DF.w,Y		; 39 DF 03
	lda ($48.b,X)		; A1 48
	sbc $60.b,X		; F5 60
	cmp $3AE018.l,X		; DF 18 E0 3A
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $02.b,S		; 03 02
	sed		; F8
	sbc $48DFF0.l,X		; FF F0 DF 48
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	lda $AD18.w		; AD 18 AD
	bit $AD.b		; 24 AD
	bit $24DF.w,X		; 3C DF 24
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	lda $A424.w		; AD 24 A4
	clc		; 18
	lda $DF.b		; A5 DF
	tsb $24AD.w		; 0C AD 24
	lda $18.b		; A5 18
	ldx $DF.b		; A6 DF
	tsb $24AD.w		; 0C AD 24
	ldx $18.b		; A6 18
	lda [$DF.b]		; A7 DF
	tsb $3CAD.w		; 0C AD 3C
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$C2.b		; E0 C2
	plp		; 28
	cmp $24DF06.l,X		; DF 06 DF 24
	sbc $60.b,X		; F5 60
	txs		; 9A
	asl $A1.b		; 06 A1
	ldx $A1.b		; A6 A1
	ldx $AD.b		; A6 AD
	lda ($AD.b)		; B2 AD
	lda ($B9.b)		; B2 B9
	cmp $60F524.l,X		; DF 24 F5 60
	txs		; 9A
	asl $9F.b		; 06 9F
	ldx $9F.b		; A6 9F
	ldx $AB.b		; A6 AB
	lda ($AB.b)		; B2 AB
	lda ($B7.b)		; B2 B7
	cmp $60F524.l,X		; DF 24 F5 60
	tya		; 98
	asl $9F.b		; 06 9F
	ldy $9F.b		; A4 9F
	ldy $AB.b		; A4 AB
	bcs -85.b		; B0 AB
	bcs -73.b		; B0 B7
	cmp $60F524.l,X		; DF 24 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	txs		; 9A
	asl $A1.b		; 06 A1
	ldx $A1.b		; A6 A1
	ldx $AD.b		; A6 AD
	lda ($AD.b)		; B2 AD
	lda ($B9.b)		; B2 B9
	cmp $60F524.l,X		; DF 24 F5 60
	txs		; 9A
	asl $9F.b		; 06 9F
	ldx $9F.b		; A6 9F
	ldx $AB.b		; A6 AB
	lda ($AB.b)		; B2 AB
	lda ($B7.b)		; B2 B7
	cmp $60F524.l,X		; DF 24 F5 60
	tya		; 98
	asl $9F.b		; 06 9F
	ldy $9F.b		; A4 9F
	ldy $AB.b		; A4 AB
	bcs -85.b		; B0 AB
	bcs -73.b		; B0 B7
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$1B.b		; E0 1B
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0403.w		; 0C 03 04
	sed		; F8
	sbc $03A1F2.l,X		; FF F2 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda $DF.b,S		; A3 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	lda $DF.b,S		; A3 DF
	ldx #$DF.b		; A2 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ldx #$DF.b		; A2 DF
	ldx #$DF.b		; A2 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ldx #$DF.b		; A2 DF
	ldx #$DF.b		; A2 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ldx #$DF.b		; A2 DF
	ldx #$DF.b		; A2 DF
	ora #$A2.b		; 09 A2
	ora $DF.b,S		; 03 DF
	ldx #$DF.b		; A2 DF
	ldx #$DF.b		; A2 DF
	ldx #$DF.b		; A2 DF
	ldx #$DF.b		; A2 DF
	ldx #$DF.b		; A2 DF
.ACCU 8
	sep #$A4		; E2 A4
	ora $DF.b,S		; 03 DF
	ora #$A4.b		; 09 A4
	ora $DF.b,S		; 03 DF
	ora #$A4.b		; 09 A4
	ora $DF.b,S		; 03 DF
	ora #$A4.b		; 09 A4
	ora $DF.b,S		; 03 DF
	ldy $DF.b		; A4 DF
	ldy $DF.b		; A4 DF
	ora #$A4.b		; 09 A4
	ora $DF.b,S		; 03 DF
	ora #$A4.b		; 09 A4
	ora $DF.b,S		; 03 DF
	ora #$A4.b		; 09 A4
	ora $DF.b,S		; 03 DF
	ldy $DF.b		; A4 DF
	ldx $DF.b		; A6 DF
	ora #$A6.b		; 09 A6
	ora $DF.b,S		; 03 DF
	ora #$A6.b		; 09 A6
	ora $DF.b,S		; 03 DF
	ora #$A8.b		; 09 A8
	ora $DF.b,S		; 03 DF
	tay		; A8
	cmp $09DFA8.l,X		; DF A8 DF 09
	tay		; A8
	ora $DF.b,S		; 03 DF
	tay		; A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $29A5E1.l,X		; DF E1 A5 29
	ldy $03.b		; A4 03
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A5DFA4.l,X		; DF A4 DF A5
	cmp $03A509.l,X		; DF 09 A5 03
	cmp $03A509.l,X		; DF 09 A5 03
	cmp $03A509.l,X		; DF 09 A5 03
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $03A509.l,X		; DF 09 A5 03
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $A6DFA5.l,X		; DF A5 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A4DFA6.l,X		; DF A6 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A6DFA4.l,X		; DF A4 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A5DFA6.l,X		; DF A6 DF A5
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $03A509.l,X		; DF 09 A5 03
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $03A509.l,X		; DF 09 A5 03
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $A5DFA5.l,X		; DF A5 DF A5
	cmp $A4DFA5.l,X		; DF A5 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A6DFA1.l,X		; DF A1 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A8DFA6.l,X		; DF A6 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A6DFA8.l,X		; DF A8 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $03A609.l,X		; DF 09 A6 03
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A8DFA6.l,X		; DF A6 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $03A809.l,X		; DF 09 A8 03
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $E0DFA8.l,X		; DF A8 DF E0
	ldx #$29.b		; A2 29
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $04.b,S		; 03 04
	sed		; F8
	sbc $039DF2.l,X		; FF F2 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9ADF9D.l,X		; DF 9D DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $039A09.l,X		; DF 09 9A 03
	cmp $9CDF9A.l,X		; DF 9A DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $E2DF9C.l,X		; DF 9C DF E2
	stz $DF03.w		; 9C 03 DF
	ora #$9C.b		; 09 9C
	ora $DF.b,S		; 03 DF
	ora #$9C.b		; 09 9C
	ora $DF.b,S		; 03 DF
	ora #$9C.b		; 09 9C
	ora $DF.b,S		; 03 DF
	stz $9CDF.w		; 9C DF 9C
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $9DDF9C.l,X		; DF 9C DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $E1DF9F.l,X		; DF 9F DF E1
	lda $A12C.w,Y		; B9 2C A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	lda ($DF.b,X)		; A1 DF
	sta $9DDF.w,X		; 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $09DF9D.l,X		; DF 9D DF 09
	sta $DF03.w,X		; 9D 03 DF
	sta $9DDF.w,X		; 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9FDF9D.l,X		; DF 9D DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9DDFA1.l,X		; DF A1 DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $039D09.l,X		; DF 09 9D 03
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9FDF9D.l,X		; DF 9D DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9EDF9F.l,X		; DF 9F DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $039E09.l,X		; DF 09 9E 03
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $039E09.l,X		; DF 09 9E 03
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $A2DF9E.l,X		; DF 9E DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $03A209.l,X		; DF 09 A2 03
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $03A209.l,X		; DF 09 A2 03
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $03A209.l,X		; DF 09 A2 03
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $03A209.l,X		; DF 09 A2 03
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A1DFA2.l,X		; DF A2 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9FDFA1.l,X		; DF A1 DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $E0DF9F.l,X		; DF 9F DF E0
	ldx $2C.b,Y		; B6 2C
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $04.b,S		; 03 04
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $9B60.w,X		; 9D 60 9B
	bit $9D.b		; 24 9D
	sta $18.b,X		; 95 18
	stx $98.b,Y		; 96 98
	txs		; 9A
	bpl -100.b		; 10 9C
	sta $249B.w,X		; 9D 9B 24
	ldx #$A5.b		; A2 A5
	clc		; 18
	ldx $30.b		; A6 30
	ldy $9F.b		; A4 9F
	clc		; 18
	sta $A60C.w,X		; 9D 0C A6
	bit $24A2.w,X		; 3C A2 24
	ldx $18.b		; A6 18
	lda #$0C.b		; A9 0C
	tay		; A8
	ldx $A4.b		; A6 A4
	bit $AB.b		; 24 AB
	clc		; 18
	tay		; A8
	tsb $ABA9.w		; 0C A9 AB
	plb		; AB
	bit $18A8.w,X		; 3C A8 18
	plb		; AB
	tsb $18AA.w		; 0C AA 18
	ldx $A1.b		; A6 A1
	stz $A69D.w,X		; 9E 9D A6
	lda #$A8.b		; A9 A8
	tsb $ABA9.w		; 0C A9 AB
	clc		; 18
	lda #$A8.b		; A9 A8
	plb		; AB
	ldx $48.b		; A6 48
	lda $0C.b,S		; A3 0C
	ldx $A5.b		; A6 A5
	rts		; 60

	cpx #$C9.b		; E0 C9
	and $F806DF.l		; 2F DF 06 F8
	sbc $0C82EE.l,X		; FF EE 82 0C
	bra -126.b		; 80 82
	bra   6.b		; 80 06
	.db $82, $DF, $82		; 82 DF 82
	bra  12.b		; 80 0C
	adc $8280.w,X		; 7D 80 82
	bra -126.b		; 80 82
	sta $06.b		; 85 06
	bit #$DF.b		; 89 DF
	bit #$85.b		; 89 85
	tsb $8582.w		; 0C 82 85
	tda		; 7B
	adc $797B.w,Y		; 79 7B 79
	asl $7B.b		; 06 7B
	cmp $0C797B.l,X		; DF 7B 79 0C
	ror $79.b,X		; 76 79
	tda		; 7B
	adc $7F7B.w,Y		; 79 7B 7F
	asl $82.b		; 06 82
	cmp $0C7F82.l,X		; DF 82 7F 0C
	tda		; 7B
	adc $7B797B.l,X		; 7F 7B 79 7B
	adc $7B06.w,Y		; 79 06 7B
	cmp $0C797B.l,X		; DF 7B 79 0C
	ror $79.b,X		; 76 79
	bra 126.b		; 80 7E
	bra -124.b		; 80 84
	asl $87.b		; 06 87
	cmp $0C8487.l,X		; DF 87 84 0C
	bra -124.b		; 80 84
.ACCU 8
.INDEX 8
	sep #$79		; E2 79
	tsb $7978.w		; 0C 78 79
	sei		; 78
	asl $79.b		; 06 79
	cmp $0C7879.l,X		; DF 79 78 0C
	adc $7E78.w,Y		; 79 78 7E
	adc $807E.w,X		; 7D 7E 80
	asl $80.b		; 06 80
	cmp $7D7B80.l,X		; DF 80 7B 7D
	tda		; 7B
	adc $7B78.w,Y		; 79 78 7B
	sbc ($39.b,X)		; E1 39
	bmi -123.b		; 30 85
	tsb $8584.w		; 0C 84 85
	sty $06.b		; 84 06
	sta $DF.b		; 85 DF
	sta $84.b		; 85 84
	tsb $8485.w		; 0C 85 84
	sta $84.b		; 85 84
	sta $84.b		; 85 84
	asl $85.b		; 06 85
	cmp $0C8485.l,X		; DF 85 84 0C
	sta $84.b		; 85 84
	sta $84.b		; 85 84
	sta $84.b		; 85 84
	asl $85.b		; 06 85
	cmp $0C8485.l,X		; DF 85 84 0C
	sta $84.b		; 85 84
	sta $83.b		; 85 83
	sta $83.b		; 85 83
	asl $85.b		; 06 85
	cmp $0C8385.l,X		; DF 85 83 0C
	sta $85.b		; 85 85
	txa		; 8A
	bit #$8A.b		; 89 8A
	bit #$06.b		; 89 06
	txa		; 8A
	cmp $85858A.l,X		; DF 8A 85 85
	sty $898A.w		; 8C 8A 89
	txa		; 8A
	sta $8F8A0C.l		; 8F 0C 8A 8F
	txa		; 8A
	asl $8F.b		; 06 8F
	cmp $8A8A8F.l,X		; DF 8F 8A 8A
	sta ($8F.b),Y		; 91 8F
	txa		; 8A
	sta $8C0C8E.l		; 8F 8E 0C 8C
	stx $068C.w		; 8E 8C 06
	stx $8CDF.w		; 8E DF 8C
	bit #$8C.b		; 89 8C
	sta ($8C.b),Y		; 91 8C
	bit #$8C.b		; 89 8C
	phb		; 8B
	tsb $8B89.w		; 0C 89 8B
	bit #$06.b		; 89 06
	phb		; 8B
	cmp $87878B.l,X		; DF 8B 87 87
	sta ($8E.b,S),Y		; 93 8E
	phb		; 8B
	sta [$8A.b]		; 87 8A
	tsb $8A89.w		; 0C 89 8A
	bit #$06.b		; 89 06
	txa		; 8A
	cmp $85858A.l,X		; DF 8A 85 85
	stx $858A.w		; 8E 8A 85
	txa		; 8A
	sty $870C.w		; 8C 0C 87
	sty $0687.w		; 8C 87 06
	sty $8CDF.w		; 8C DF 8C
	sta [$87.b]		; 87 87
	stx $878C.w		; 8E 8C 87
	sty $0C8E.w		; 8C 8E 0C
	bit #$8E.b		; 89 8E
	bit #$06.b		; 89 06
	stx $8EDF.w		; 8E DF 8E
	bit #$89.b		; 89 89
	stx $8789.w		; 8E 89 87
	bit #$8E.b		; 89 8E
	tsb $8E89.w		; 0C 89 8E
	bit #$06.b		; 89 06
	bit #$DF.b		; 89 DF
	stx $8E89.w		; 8E 89 8E
	sta $92.b,X		; 95 92
	stx $8789.w		; 8E 89 87
	tsb $8785.w		; 0C 85 87
	sta $06.b		; 85 06
	sta [$DF.b]		; 87 DF
	txa		; 8A
	sta [$8A.b]		; 87 8A
	stx $878A.w		; 8E 8A 87
	txa		; 8A
	sty $8A0C.w		; 8C 0C 8A
	sty $068A.w		; 8C 8A 06
	sty $8CDF.w		; 8C DF 8C
	txa		; 8A
	sty $9093.w		; 8C 93 90
	sty $8990.w		; 8C 90 89
	tsb $8987.w		; 0C 87 89
	sta [$06.b]		; 87 06
	bit #$DF.b		; 89 DF
	bit #$87.b		; 89 87
	bit #$8E.b		; 89 8E
	bit #$87.b		; 89 87
	bit #$89.b		; 89 89
	tsb $8987.w		; 0C 87 89
	sta [$06.b]		; 87 06
	bit #$DF.b		; 89 DF
	bit #$87.b		; 89 87
	bit #$90.b		; 89 90
	sta $8987.w		; 8D 87 89
	cpx #$36.b		; E0 36
	bmi -33.b		; 30 DF
	asl $D0.b		; 06 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($E2.b),Y		; D1 E2
	bne  12.b		; D0 0C
	cmp ($D0.b),Y		; D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($E1.b),Y		; D1 E1
	txa		; 8A
	and ($D0.b),Y		; 31 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	tsb $D0D1.w		; 0C D1 D0
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b)		; D2 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b)		; D2 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b)		; D2 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($E0.b),Y		; D1 E0
	txa		; 8A
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	php		; 08
	eor ($09.b,S),Y		; 53 09
	brk $28.b		; 00 28
	php		; 08
	rol $0028.w,X		; 3E 28 00
	ora $0618.w,X		; 1D 18 06
	and $0029.w,Y		; 39 29 00
	asl $2808.w,X		; 1E 08 28
	lda ($29.b,X)		; A1 29
	brk $1D.b		; 00 1D
	php		; 08
	tsb $58.b		; 04 58
	rol A		; 2A
	brk $1D.b		; 00 1D
	tsb $08.b		; 04 08
	ora $21002B.l		; 0F 2B 00 21
	plp		; 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $1D.b		; 00 1D
	brk $06.b		; 00 06
	sed		; F8
	pld		; 2B
	tsb $2416.w		; 0C 16 24
	bit $21.b		; 24 21
	bmi   0.b		; 30 00
	cmp ($3E.b),Y		; D1 3E
	rol $06DF.w,X		; 3E DF 06
	cpx $0318.w		; EC 18 03
	ora $FC.b,S		; 03 FC
	asl A		; 0A
	cmp $47E003.l,X		; DF 03 E0 47
	plp		; 28
	sbc ($00.b,S),Y		; F3 00
	beq -33.b		; F0 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b,S		; 03 03
	cmp $60F55D.l,X		; DF 5D F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	ldy $AD03.w		; AC 03 AD
	clc		; 18
	plb		; AB
	tsb $18AD.w		; 0C AD 18
	lda $06DF1B.l		; AF 1B DF 06
	lda $18B003.l		; AF 03 B0 18
	lda $18AD0C.l		; AF 0C AD 18
	plb		; AB
	tay		; A8
	asl $DF.b		; 06 DF
	ldx $24.b		; A6 24
	tay		; A8
	bit $F5.b		; 24 F5
	rts		; 60

	cmp $03AC15.l,X		; DF 15 AC 03
	lda $AB18.w		; AD 18 AB
	tsb $18AD.w		; 0C AD 18
	lda $06DF1B.l		; AF 1B DF 06
	lda $18B003.l		; AF 03 B0 18
	lda $18AD0C.l		; AF 0C AD 18
	plb		; AB
	bit $AD.b		; 24 AD
	pha		; 48
	sbc $60.b,X		; F5 60
	cmp $03AC15.l,X		; DF 15 AC 03
	lda $AB18.w		; AD 18 AB
	tsb $18AD.w		; 0C AD 18
	lda $06DF1B.l		; AF 1B DF 06
	lda $18B003.l		; AF 03 B0 18
	lda $18AD0C.l		; AF 0C AD 18
	plb		; AB
	tay		; A8
	tsb $24A6.w		; 0C A6 24
	tay		; A8
	bit $F5.b		; 24 F5
	rts		; 60

	cmp $03AC15.l,X		; DF 15 AC 03
	lda $AB18.w		; AD 18 AB
	tsb $18AD.w		; 0C AD 18
	lda $06DF1B.l		; AF 1B DF 06
	lda $18B003.l		; AF 03 B0 18
	lda $18AD0C.l		; AF 0C AD 18
	plb		; AB
	bit $AD.b		; 24 AD
	.db $42, $F5		; 42 F5
	rts		; 60

	cmp $0CAD06.l,X		; DF 06 AD 0C
	lda $DF12B0.l		; AF B0 12 DF
	asl $B0.b		; 06 B0
	tsb $18B0.w		; 0C B0 18
	lda $18AD0C.l		; AF 0C AD 18
	lda $06DF12.l		; AF 12 DF 06
	lda $18AF0C.l		; AF 0C AF 18
	lda $AB0C.w		; AD 0C AB
	clc		; 18
	bcs  18.b		; B0 12
	cmp $0CB006.l,X		; DF 06 B0 0C
	bcs  24.b		; B0 18
	lda $12AD0C.l		; AF 0C AD 12
	cmp $18B406.l,X		; DF 06 B4 18
	lda ($AF.b)		; B2 AF
	plb		; AB
	lda $F542.w		; AD 42 F5
	rts		; 60

	cmp $0CAD06.l,X		; DF 06 AD 0C
	lda $DF12B0.l		; AF B0 12 DF
	asl $B0.b		; 06 B0
	tsb $18B0.w		; 0C B0 18
	lda $18AD0C.l		; AF 0C AD 18
	lda $06DF12.l		; AF 12 DF 06
	lda $18AF0C.l		; AF 0C AF 18
	lda $AB0C.w		; AD 0C AB
	clc		; 18
	bcs  18.b		; B0 12
	cmp $0CB006.l,X		; DF 06 B0 0C
	bcs  24.b		; B0 18
	lda $12AD0C.l		; AF 0C AD 12
	cmp $B7B603.l,X		; DF 03 B6 B7
	clc		; 18
	ldy $B2.b,X		; B4 B2
	lda $48DFAD.l		; AF AD DF 48
	sbc $60.b,X		; F5 60
	cpx #$47.b		; E0 47
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	cop $03.b		; 02 03
	sed		; F8
	sbc $0CA1F0.l,X		; FF F0 A1 0C
	cmp $60F54C.l,X		; DF 4C F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $A1A004.l,X		; 9F 04 A0 A1
	tsb $4CDF.w		; 0C DF 4C
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $A1A004.l,X		; 9F 04 A0 A1
	tsb $4CDF.w		; 0C DF 4C
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $A1A004.l,X		; 9F 04 A0 A1
	tsb $4CDF.w		; 0C DF 4C
	sbc $60.b,X		; F5 60
	sta $E0A004.l,X		; 9F 04 A0 E0
	and $06DF29.l,X		; 3F 29 DF 06
	cpx $0318.w		; EC 18 03
	ora $DF.b,S		; 03 DF
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	tay		; A8
	lsr $60F5.w		; 4E F5 60
	cmp $21A312.l,X		; DF 12 A3 21
	cmp $36A403.l,X		; DF 03 A4 36
	cmp $21A606.l,X		; DF 06 A6 21
	cmp $21A403.l,X		; DF 03 A4 21
	cmp $15A603.l,X		; DF 03 A6 15
	cmp $4EA803.l,X		; DF 03 A8 4E
	sbc $60.b,X		; F5 60
	cmp $4EA612.l,X		; DF 12 A6 4E
	sbc $60.b,X		; F5 60
	cmp $4EA812.l,X		; DF 12 A8 4E
	sbc $60.b,X		; F5 60
	cmp $21A312.l,X		; DF 12 A3 21
	cmp $36A403.l,X		; DF 03 A4 36
	cmp $21A606.l,X		; DF 06 A6 21
	cmp $21A403.l,X		; DF 03 A4 21
	cmp $15A603.l,X		; DF 03 A6 15
	cmp $4EA803.l,X		; DF 03 A8 4E
	sbc $60.b,X		; F5 60
	cmp $4EA612.l,X		; DF 12 A6 4E
	sbc $60.b,X		; F5 60
	cmp $21A412.l,X		; DF 12 A4 21
	cmp $36A403.l,X		; DF 03 A4 36
	cmp $21A606.l,X		; DF 06 A6 21
	cmp $36A603.l,X		; DF 03 A6 36
	cmp $21A406.l,X		; DF 06 A4 21
	cmp $36A403.l,X		; DF 03 A4 36
	cmp $2AA306.l,X		; DF 06 A3 2A
	cmp $2AA606.l,X		; DF 06 A6 2A
	cmp $57A406.l,X		; DF 06 A4 57
	cmp $42A609.l,X		; DF 09 A6 42
	cmp $15A106.l,X		; DF 06 A1 15
	cmp $21A403.l,X		; DF 03 A4 21
	cmp $36A403.l,X		; DF 03 A4 36
	cmp $21A606.l,X		; DF 06 A6 21
	cmp $36A603.l,X		; DF 03 A6 36
	cmp $21A406.l,X		; DF 06 A4 21
	cmp $36A403.l,X		; DF 03 A4 36
	cmp $2AA606.l,X		; DF 06 A6 2A
	cmp $2AA906.l,X		; DF 06 A9 2A
	cmp $15A806.l,X		; DF 06 A8 15
	cmp $60F54B.l,X		; DF 4B F5 60
	cpx #$A7.b		; E0 A7
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $03.b,S		; 03 03
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	ldy $4E.b		; A4 4E
	sbc $60.b,X		; F5 60
	cmp $219F12.l,X		; DF 12 9F 21
	cmp $36A103.l,X		; DF 03 A1 36
	cmp $21A306.l,X		; DF 06 A3 21
	cmp $21A103.l,X		; DF 03 A1 21
	cmp $15A303.l,X		; DF 03 A3 15
	cmp $4EA403.l,X		; DF 03 A4 4E
	sbc $60.b,X		; F5 60
	cmp $4E9E12.l,X		; DF 12 9E 4E
	sbc $60.b,X		; F5 60
	cmp $4EA412.l,X		; DF 12 A4 4E
	sbc $60.b,X		; F5 60
	cmp $219F12.l,X		; DF 12 9F 21
	cmp $36A103.l,X		; DF 03 A1 36
	cmp $21A306.l,X		; DF 06 A3 21
	cmp $21A103.l,X		; DF 03 A1 21
	cmp $15A303.l,X		; DF 03 A3 15
	cmp $4EA403.l,X		; DF 03 A4 4E
	sbc $60.b,X		; F5 60
	cmp $4E9E12.l,X		; DF 12 9E 4E
	sbc $60.b,X		; F5 60
	cmp $219D12.l,X		; DF 12 9D 21
	cmp $369D03.l,X		; DF 03 9D 36
	cmp $219F06.l,X		; DF 06 9F 21
	cmp $369F03.l,X		; DF 03 9F 36
	cmp $219D06.l,X		; DF 06 9D 21
	cmp $369D03.l,X		; DF 03 9D 36
	cmp $2A9F06.l,X		; DF 06 9F 2A
	cmp $2AA306.l,X		; DF 06 A3 2A
	cmp $579C06.l,X		; DF 06 9C 57
	cmp $429E09.l,X		; DF 09 9E 42
	cmp $159E06.l,X		; DF 06 9E 15
	cmp $219D03.l,X		; DF 03 9D 21
	cmp $369D03.l,X		; DF 03 9D 36
	cmp $219F06.l,X		; DF 06 9F 21
	cmp $369F03.l,X		; DF 03 9F 36
	cmp $219D06.l,X		; DF 06 9D 21
	cmp $369D03.l,X		; DF 03 9D 36
	cmp $2A9F06.l,X		; DF 06 9F 2A
	cmp $2A9F06.l,X		; DF 06 9F 2A
	cmp $15A106.l,X		; DF 06 A1 15
	cmp $60F54B.l,X		; DF 4B F5 60
	cpx #$5E.b		; E0 5E
	rol A		; 2A
	cmp $0CEC06.l,X		; DF 06 EC 0C
	cop $04.b		; 02 04
	bit #$09.b		; 89 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098427.l,X		; DF 27 84 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $128E03.l,X		; DF 03 8E 12
	cmp $098C06.l,X		; DF 06 8C 09
	cmp $099003.l,X		; DF 03 90 09
	cmp $09893F.l,X		; DF 3F 89 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098427.l,X		; DF 27 84 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $128E03.l,X		; DF 03 8E 12
	cmp $098C06.l,X		; DF 06 8C 09
	cmp $099003.l,X		; DF 03 90 09
	cmp $09893F.l,X		; DF 3F 89 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098427.l,X		; DF 27 84 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $128E03.l,X		; DF 03 8E 12
	cmp $098C06.l,X		; DF 06 8C 09
	cmp $099003.l,X		; DF 03 90 09
	cmp $09893F.l,X		; DF 3F 89 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098427.l,X		; DF 27 84 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $128E03.l,X		; DF 03 8E 12
	cmp $098C06.l,X		; DF 06 8C 09
	cmp $099003.l,X		; DF 03 90 09
	cmp $60F53F.l,X		; DF 3F F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	tay		; A8
	ora ($DF.b)		; 12 DF
	asl $A8.b		; 06 A8
	ora #$DF.b		; 09 DF
	ora $A8.b,S		; 03 A8
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora #$DF.b		; 09 DF
	ora $A4.b,S		; 03 A4
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora #$DF.b		; 09 DF
	ora $A6.b,S		; 03 A6
	ora ($DF.b)		; 12 DF
	asl $A4.b		; 06 A4
	ora #$DF.b		; 09 DF
	ora $A3.b,S		; 03 A3
	ora ($DF.b)		; 12 DF
	asl $A8.b		; 06 A8
	ora ($DF.b)		; 12 DF
	asl $A8.b		; 06 A8
	ora #$DF.b		; 09 DF
	ora $A8.b,S		; 03 A8
	ora ($DF.b)		; 12 DF
	asl $A6.b		; 06 A6
	ora #$DF.b		; 09 DF
	ora $A4.b,S		; 03 A4
	ora ($DF.b)		; 12 DF
	asl $A3.b		; 06 A3
	and [$DF.b]		; 27 DF
	and $60F5.w,Y		; 39 F5 60
	sbc $60.b,X		; F5 60
	cpx #$15.b		; E0 15
	pld		; 2B
	cmp $FFF806.l,X		; DF 06 F8 FF
	inc $097D.w		; EE 7D 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $7B067B.l,X		; DF 7B 06 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora ($DF.b)		; 12 DF
	asl $80.b		; 06 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	asl $84.b		; 06 84
	cmp $067D0C.l,X		; DF 0C 7D 06
	adc $DF0978.l,X		; 7F 78 09 DF
	ora $7D.b,S		; 03 7D
	asl $7B.b		; 06 7B
	adc $DF09.w,X		; 7D 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	asl $83.b		; 06 83
	sty $80.b		; 84 80
	sei		; 78
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora ($DF.b)		; 12 DF
	asl $80.b		; 06 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	asl $7F.b		; 06 7F
	sei		; 78
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	asl $84.b		; 06 84
	adc $788280.l,X		; 7F 80 82 78
	adc $DF09.w,X		; 7D 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	tda		; 7B
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora ($DF.b)		; 12 DF
	asl $80.b		; 06 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	asl $84.b		; 06 84
	cmp $067D0C.l,X		; DF 0C 7D 06
	adc $DF0978.l,X		; 7F 78 09 DF
	ora $7D.b,S		; 03 7D
	asl $7B.b		; 06 7B
	adc $DF09.w,X		; 7D 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $78.b,S		; 03 78
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	asl $83.b		; 06 83
	sty $80.b		; 84 80
	sei		; 78
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora ($DF.b)		; 12 DF
	asl $80.b		; 06 80
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	asl $7F.b		; 06 7F
	sei		; 78
	ora #$DF.b		; 09 DF
	ora $84.b,S		; 03 84
	asl $84.b		; 06 84
	adc $788280.l,X		; 7F 80 82 78
	adc $DF09.w,X		; 7D 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	asl $7D.b		; 06 7D
	.db $82, $09, $DF		; 82 09 DF
	ora $7A.b,S		; 03 7A
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7D.b,S		; 03 7D
	ora ($DF.b)		; 12 DF
	tsb $60F5.w		; 0C F5 60
	jmp ($7D06.w,X)		; 7C 06 7D
	sei		; 78
	.db $82, $83, $84		; 82 83 84
	adc $7FDF.w,X		; 7D DF 7F
	sei		; 78
	ora #$DF.b		; 09 DF
	ora $E0.b,S		; 03 E0
	plx		; FA
	pld		; 2B
	cmp $0CD006.l,X		; DF 06 D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	dec $D1.b,X		; D6 D1
	cmp $06.b,X		; D5 06
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	dec $D1.b,X		; D6 D1
	cmp $06.b,X		; D5 06
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	cmp $06.b,X		; D5 06
	cmp $D1.b,X		; D5 D1
	dec $D6.b,X		; D6 D6
	dec $D0.b,X		; D6 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	cmp $D1.b,X		; D5 D1
	asl $D6.b		; 06 D6
	cmp ($D1.b),Y		; D1 D1
	bne  24.b		; D0 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	cmp $06.b,X		; D5 06
	cmp $D1.b,X		; D5 D1
	tsb $06D6.w		; 0C D6 06
	dec $D1.b,X		; D6 D1
	tsb $06D0.w		; 0C D0 06
	bne -42.b		; D0 D6
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b),Y		; D1 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($E0.b),Y		; D1 E0
	and $30.b,S		; 23 30
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sta $280007.l		; 8F 07 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $1F.b		; 00 1F
	trb $3A1C.w		; 1C 1C 3A
	and #$00.b		; 29 00
	jsl $4A0818.l		; 22 18 08 4A
	pld		; 2B
	brk $22.b		; 00 22
	php		; 08
	clc		; 18
	and $0029.w		; 2D 29 00
	clc		; 18
	brk $08.b		; 00 08
	and $002B.w,X		; 3D 2B 00
	clc		; 18
	php		; 08
	brk $4B.b		; 00 4B
	and $1E00.w		; 2D 00 1E
	php		; 08
	php		; 08
	lda $2D.b,S		; A3 2D
	tsb $241B.w		; 0C 1B 24
	bit $A2.b		; 24 A2
	rol $D100.w		; 2E 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $F0.b		; 00 F0
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $03.b		; 05 03
	sed		; F8
	sbc $0CA3F0.l,X		; FF F0 A3 0C
	sta $9B979C.l,X		; 9F 9C 97 9B
	stz $A4A1.w,X		; 9E A1 A4
	lda $9F.b,S		; A3 9F
	stz $9B97.w		; 9C 97 9B
	stz $A4A1.w,X		; 9E A1 A4
	lda $9F.b,S		; A3 9F
	stz $A697.w		; 9C 97 A6
	lda $A0.b,S		; A3 A0
	stz $A1A4.w		; 9C A4 A1
	stz $9895.w		; 9C 95 98
	stz $A4A1.w		; 9C A1 A4
	tay		; A8
	lda ($A4.b,X)		; A1 A4
	tay		; A8
	lda [$9E.b]		; A7 9E
	lda ($A7.b,X)		; A1 A7
	tay		; A8
	lda $9F.b,S		; A3 9F
	stz $A1A6.w		; 9C A6 A1
	stz $A49A.w,X		; 9E 9A A4
	lda $9F.b,S		; A3 9F
	stz $A1A3.w		; 9C A3 A1
	stz $9C9B.w,X		; 9E 9B 9C
	bmi -33.b		; 30 DF
	tsb $9F9E.w		; 0C 9E 9F
	lda ($A3.b,X)		; A1 A3
	sta $9B979C.l,X		; 9F 9C 97 9B
	stz $A4A1.w,X		; 9E A1 A4
	lda $9F.b,S		; A3 9F
	stz $9B97.w		; 9C 97 9B
	stz $A4A1.w,X		; 9E A1 A4
	lda $9F.b,S		; A3 9F
	stz $A697.w		; 9C 97 A6
	lda $A0.b,S		; A3 A0
	stz $A1A4.w		; 9C A4 A1
	stz $9895.w		; 9C 95 98
	stz $A4A1.w		; 9C A1 A4
	tay		; A8
	lda ($A4.b,X)		; A1 A4
	tay		; A8
	lda [$9E.b]		; A7 9E
	lda ($A7.b,X)		; A1 A7
	tay		; A8
	lda $9F.b,S		; A3 9F
	stz $A1A6.w		; 9C A6 A1
	stz $A49A.w,X		; 9E 9A A4
	lda $9F.b,S		; A3 9F
	stz $A1A3.w		; 9C A3 A1
	stz $9C9B.w,X		; 9E 9B 9C
	bmi -33.b		; 30 DF
	clc		; 18
	stz $0C9D.w		; 9C 9D 0C
	stz $A0A1.w		; 9C A1 A0
	ldy $A3.b		; A4 A3
	lda #$A8.b		; A9 A8
	lda [$A8.b]		; A7 A8
	lda $A4.b,S		; A3 A4
	ldy #$A1.b		; A0 A1
	txy		; 9B
	stz $9E9D.w		; 9C 9D 9E
	lda ($A4.b,X)		; A1 A4
	tax		; AA
	tay		; A8
	lda ($A2.b,X)		; A1 A2
	lda $9F.b,S		; A3 9F
	ldx $A3.b		; A6 A3
	plb		; AB
	ldx $AF.b		; A6 AF
	ldx $A9.b		; A6 A9
	tay		; A8
	lda ($A0.b,X)		; A1 A0
	ldy $A3.b		; A4 A3
	lda #$A8.b		; A9 A8
	lda [$A8.b]		; A7 A8
	lda $ADACB0.l		; AF B0 AC AD
	lda [$A8.b]		; A7 A8
	tax		; AA
	plb		; AB
	lda $A4A1.w		; AD A1 A4
	tay		; A8
	bcs -83.b		; B0 AD
.ACCU 8
	sep #$AF		; E2 AF
	tax		; AA
	lda [$AA.b]		; A7 AA
	lda [$A3.b]		; A7 A3
	stz $9C9B.w,X		; 9E 9B 9C
	pha		; 48
	sbc $60.b,X		; F5 60
	tay		; A8
	asl $A3.b		; 06 A3
	sta $60989C.l,X		; 9F 9C 98 60
	txs		; 9A
	pha		; 48
	ldx $06.b		; A6 06
	lda $9E.b,S		; A3 9E
	txs		; 9A
	stz $F548.w		; 9C 48 F5
	rts		; 60

	tay		; A8
	asl $A3.b		; 06 A3
	sta $60989C.l,X		; 9F 9C 98 60
	sta [$06.b],Y		; 97 06
	txy		; 9B
	stz $9BA3.w,X		; 9E A3 9B
	stz $A7A3.w,X		; 9E A3 A7
	stz $A7A3.w,X		; 9E A3 A7
	tax		; AA
	lda $9EA3AA.l		; AF AA A3 9E
	cpx #$3A.b		; E0 3A
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $05.b,S		; 03 05
	cmp $0AFC03.l,X		; DF 03 FC 0A
	cpx #$40.b		; E0 40
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	asl $03.b		; 06 03
	tsb $F8.b		; 04 F8
	sbc $0CDFF2.l,X		; FF F2 DF 0C
	stz $9C06.w		; 9C 06 9C
	sta $9C9C9F.l,X		; 9F 9F 9C 9C
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069B.w		; 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069A.w		; 0C 9A 06
	txs		; 9A
	sta $9A9D.w,X		; 9D 9D 9A
	txs		; 9A
	cmp $06980C.l,X		; DF 0C 98 06
	tya		; 98
	stz $989C.w		; 9C 9C 98
	tya		; 98
	cmp $06980C.l,X		; DF 0C 98 06
	tya		; 98
	stz $989C.w		; 9C 9C 98
	tya		; 98
	cmp $06980C.l,X		; DF 0C 98 06
	tya		; 98
	stz $989C.w		; 9C 9C 98
	tya		; 98
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069A.w		; 0C 9A 06
	txs		; 9A
	stz $9A9C.w		; 9C 9C 9A
	txs		; 9A
	cmp $06970C.l,X		; DF 0C 97 06
	sta [$9C.b],Y		; 97 9C
	stz $9797.w		; 9C 97 97
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069C.w		; 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069C.w		; 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069B.w		; 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069B.w		; 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069A.w		; 0C 9A 06
	txs		; 9A
	sta $9A9D.w,X		; 9D 9D 9A
	txs		; 9A
	cmp $06980C.l,X		; DF 0C 98 06
	tya		; 98
	stz $989C.w		; 9C 9C 98
	tya		; 98
	cmp $06980C.l,X		; DF 0C 98 06
	tya		; 98
	stz $989C.w		; 9C 9C 98
	tya		; 98
	cmp $06980C.l,X		; DF 0C 98 06
	tya		; 98
	stz $989C.w		; 9C 9C 98
	tya		; 98
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069A.w		; 0C 9A 06
	txs		; 9A
	stz $9A9C.w		; 9C 9C 9A
	txs		; 9A
	cmp $06970C.l,X		; DF 0C 97 06
	sta [$9C.b],Y		; 97 9C
	stz $9797.w		; 9C 97 97
	cmp $069B0C.l,X		; DF 0C 9B 06
	txy		; 9B
	stz $9B9E.w,X		; 9E 9E 9B
	txy		; 9B
	cmp $069C0C.l,X		; DF 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $DF9C.w		; 9C 9C DF
	tsb $069C.w		; 0C 9C 06
	stz $9F9F.w		; 9C 9F 9F
	stz $E89C.w		; 9C 9C E8
	clc		; 18
	sed		; F8
	sbc $069DF0.l,X		; FF F0 9D 06
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9A9D9D.l,X		; DF 9D 9D 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9C9A9A.l,X		; DF 9A 9A 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9C9C9C.l,X		; DF 9C 9C 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $989C9C.l,X		; DF 9C 9C 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $9E9898.l,X		; DF 98 98 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9A9E9E.l,X		; DF 9E 9E 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9A9A9A.l,X		; DF 9A 9A 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9D9A9A.l,X		; DF 9A 9A 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9A9D9D.l,X		; DF 9D 9D 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $9C9A9A.l,X		; DF 9A 9A 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9C9C9C.l,X		; DF 9C 9C 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9C9C9C.l,X		; DF 9C 9C 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $989C9C.l,X		; DF 9C 9C 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $959898.l,X		; DF 98 98 95
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $9E9595.l,X		; DF 95 95 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	stz $9E9E.w,X		; 9E 9E 9E
	inx		; E8
	jsl $F2FFF8.l		; 22 F8 FF F2
	cmp $06930C.l,X		; DF 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($9C.b,S),Y		; 93 9C
	stz $9393.w		; 9C 93 93
	sta [$97.b],Y		; 97 97
	sta ($93.b,S),Y		; 93 93
	cmp $60F50C.l,X		; DF 0C F5 60
	sta ($06.b,S),Y		; 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($9C.b,S),Y		; 93 9C
	stz $9393.w		; 9C 93 93
	sta [$97.b],Y		; 97 97
	sta ($93.b,S),Y		; 93 93
	cmp $60F50C.l,X		; DF 0C F5 60
	sta ($06.b,S),Y		; 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($9C.b,S),Y		; 93 9C
	stz $9393.w		; 9C 93 93
	sta [$97.b],Y		; 97 97
	sta ($93.b,S),Y		; 93 93
	cmp $60F50C.l,X		; DF 0C F5 60
	sta ($06.b,S),Y		; 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($9C.b,S),Y		; 93 9C
	stz $9393.w		; 9C 93 93
	sta [$97.b],Y		; 97 97
	sta ($93.b,S),Y		; 93 93
	cmp $40E060.l,X		; DF 60 E0 40
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0703.w		; 0C 03 07
	cmp $0AFC03.l,X		; DF 03 FC 0A
	cpx #$50.b		; E0 50
	pld		; 2B
	cmp $06EC06.l,X		; DF 06 EC 06
	ora $04.b,S		; 03 04
	sed		; F8
	sbc $0CDFF2.l,X		; FF F2 DF 0C
	sta ($06.b,S),Y		; 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0694.w		; 0C 94 06
	sty $97.b,X		; 94 97
	sta [$94.b],Y		; 97 94
	sty $DF.b,X		; 94 DF
	tsb $0690.w		; 0C 90 06
	bcc -107.b		; 90 95
	sta $90.b,X		; 95 90
	bcc -33.b		; 90 DF
	tsb $0690.w		; 0C 90 06
	bcc -107.b		; 90 95
	sta $90.b,X		; 95 90
	bcc -33.b		; 90 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0692.w		; 0C 92 06
	sta ($97.b)		; 92 97
	sta [$92.b],Y		; 97 92
	sta ($DF.b)		; 92 DF
	tsb $0690.w		; 0C 90 06
	bcc -109.b		; 90 93
	sta ($90.b,S),Y		; 93 90
	bcc -33.b		; 90 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0694.w		; 0C 94 06
	sty $97.b,X		; 94 97
	sta [$94.b],Y		; 97 94
	sty $DF.b,X		; 94 DF
	tsb $0690.w		; 0C 90 06
	bcc -107.b		; 90 95
	sta $90.b,X		; 95 90
	bcc -33.b		; 90 DF
	tsb $0690.w		; 0C 90 06
	bcc -107.b		; 90 95
	sta $90.b,X		; 95 90
	bcc -33.b		; 90 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0692.w		; 0C 92 06
	sta ($97.b)		; 92 97
	sta [$92.b],Y		; 97 92
	sta ($DF.b)		; 92 DF
	tsb $0690.w		; 0C 90 06
	bcc -109.b		; 90 93
	sta ($90.b,S),Y		; 93 90
	bcc -33.b		; 90 DF
	tsb $0692.w		; 0C 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($DF.b)		; 92 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($DF.b,S),Y		; 93 DF
	tsb $0693.w		; 0C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($E8.b,S),Y		; 93 E8
	clc		; 18
	sed		; F8
	sbc $069AF0.l,X		; FF F0 9A 06
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $979A9A.l,X		; DF 9A 9A 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $989797.l,X		; DF 97 97 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $989898.l,X		; DF 98 98 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $959898.l,X		; DF 98 98 95
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $9A9595.l,X		; DF 95 95 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $979A9A.l,X		; DF 9A 9A 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $979797.l,X		; DF 97 97 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $9A9797.l,X		; DF 97 97 9A
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $979A9A.l,X		; DF 9A 9A 97
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $989797.l,X		; DF 97 97 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $989898.l,X		; DF 98 98 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $989898.l,X		; DF 98 98 98
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $959898.l,X		; DF 98 98 95
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $929595.l,X		; DF 95 95 92
	cmp $92DF92.l,X		; DF 92 DF 92
	cmp $9B9292.l,X		; DF 92 92 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	txy		; 9B
	txy		; 9B
	txy		; 9B
	inx		; E8
	jsl $F2FFF8.l		; 22 F8 FF F2
	cmp $06936C.l,X		; DF 6C 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($9C.b,S),Y		; 93 9C
	stz $9393.w		; 9C 93 93
	sta [$97.b],Y		; 97 97
	sta ($93.b,S),Y		; 93 93
	cmp $60F50C.l,X		; DF 0C F5 60
	sta ($06.b)		; 92 06
	sta ($97.b)		; 92 97
	sta [$92.b],Y		; 97 92
	sta ($9C.b)		; 92 9C
	stz $9292.w		; 9C 92 92
	sta [$97.b],Y		; 97 97
	sta ($92.b)		; 92 92
	cmp $60F50C.l,X		; DF 0C F5 60
	sta ($06.b,S),Y		; 93 06
	sta ($97.b,S),Y		; 93 97
	sta [$93.b],Y		; 97 93
	sta ($9C.b,S),Y		; 93 9C
	stz $9393.w		; 9C 93 93
	sta [$97.b],Y		; 97 97
	sta ($93.b,S),Y		; 93 93
	cmp $60F50C.l,X		; DF 0C F5 60
	sta ($06.b)		; 92 06
	sta ($95.b)		; 92 95
	sta $92.b,X		; 95 92
	sta ($9B.b)		; 92 9B
	txy		; 9B
	sta ($92.b)		; 92 92
	sta $95.b,X		; 95 95
	sta ($92.b)		; 92 92
	cpx #$50.b		; E0 50
	pld		; 2B
	cmp $0CEC06.l,X		; DF 06 EC 0C
	cop $07.b		; 02 07
	inx		; E8
	ora $0808E7.l,X		; 1F E7 08 08
	jsr ($DF0A.w,X)		; FC 0A DF
	asl $E1.b		; 06 E1
	dec A		; 3A
	plp		; 28
	jsr ($E800.w,X)		; FC 00 E8
	asl $18E7.w,X		; 1E E7 18
	clc		; 18
	cmp $0C9236.l,X		; DF 36 92 0C
	sta $97.b,X		; 95 97
	tya		; 98
	bit $97.b		; 24 97
	clc		; 18
	stx $97.b,Y		; 96 97
	tsb $189E.w		; 0C 9E 18
	stz $9C9B.w		; 9C 9B 9C
	txs		; 9A
	bit $98.b		; 24 98
	clc		; 18
	sta [$9A.b],Y		; 97 9A
	tsb $1898.w		; 0C 98 18
	sta [$95.b],Y		; 97 95
	sta [$93.b],Y		; 97 93
	tsb $1895.w		; 0C 95 18
	sta [$9E.b],Y		; 97 9E
	tsb $9F9C.w		; 0C 9C 9F
	clc		; 18
	stz $960C.w,X		; 9E 0C 96
	sta [$9C.b],Y		; 97 9C
	txy		; 9B
	stz $9A9C.w,X		; 9E 9C 9A
	tya		; 98
	clc		; 18
	sta [$98.b],Y		; 97 98
	tsb $1893.w		; 0C 93 18
	sta $97.b,X		; 95 97
	txy		; 9B
	stz $51E0.w,X		; 9E E0 51
	and $06DF.w		; 2D DF 06
	sed		; F8
	sbc $1884EE.l,X		; FF EE 84 18
	cmp $7F840C.l,X		; DF 0C 84 7F
	clc		; 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $7F.b		; 84 7F
	clc		; 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $7C.b		; 84 7C
	clc		; 18
	cmp $0CDF7D.l,X		; DF 7D DF 0C
	adc $187D.w,X		; 7D 7D 18
	cmp $0CDF7A.l,X		; DF 7A DF 0C
	ply		; 7A
	adc $84DF18.l,X		; 7F 18 DF 84
	cmp $82840C.l,X		; DF 0C 84 82
	clc		; 18
	cmp $0CDF80.l,X		; DF 80 DF 0C
	bra 127.b		; 80 7F
	clc		; 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $84.b		; 84 84
	bmi -124.b		; 30 84
	clc		; 18
	cmp $7F840C.l,X		; DF 0C 84 7F
	clc		; 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $7F.b		; 84 7F
	clc		; 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $7C.b		; 84 7C
	clc		; 18
	cmp $0CDF7D.l,X		; DF 7D DF 0C
	adc $187D.w,X		; 7D 7D 18
	cmp $0CDF7A.l,X		; DF 7A DF 0C
	ply		; 7A
	adc $84DF18.l,X		; 7F 18 DF 84
	cmp $82840C.l,X		; DF 0C 84 82
	clc		; 18
	cmp $0CDF80.l,X		; DF 80 DF 0C
	bra 127.b		; 80 7F
	clc		; 18
	cmp $DF3084.l,X		; DF 84 30 DF
	clc		; 18
	sty $7C.b		; 84 7C
	cmp $7C7C0C.l,X		; DF 0C 7C 7C
	clc		; 18
	cmp $7D7C0C.l,X		; DF 0C 7C 7D
	clc		; 18
	cmp $7D7D0C.l,X		; DF 0C 7D 7D
	clc		; 18
	cmp $827D0C.l,X		; DF 0C 7D 82
	clc		; 18
	cmp $82820C.l,X		; DF 0C 82 82
	clc		; 18
	cmp $7B820C.l,X		; DF 0C 82 7B
	clc		; 18
	cmp $7B7B0C.l,X		; DF 0C 7B 7B
	clc		; 18
	cmp $7C7B0C.l,X		; DF 0C 7B 7C
	clc		; 18
	cmp $7C7C0C.l,X		; DF 0C 7C 7C
	clc		; 18
	cmp $7D7C0C.l,X		; DF 0C 7C 7D
	clc		; 18
	cmp $7D7D0C.l,X		; DF 0C 7D 7D
	clc		; 18
	cmp $7A7D0C.l,X		; DF 0C 7D 7A
	clc		; 18
	cmp $7A7A0C.l,X		; DF 0C 7A 7A
	clc		; 18
	cmp $7F7A0C.l,X		; DF 0C 7A 7F
	clc		; 18
	cmp $7F7F0C.l,X		; DF 0C 7F 7F
	clc		; 18
	cmp $847F0C.l,X		; DF 0C 7F 84
	clc		; 18
	cmp $84840C.l,X		; DF 0C 84 84
	clc		; 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $84.b		; 84 84
	clc		; 18
	cmp $0CDF80.l,X		; DF 80 DF 0C
	bra -128.b		; 80 80
	clc		; 18
	cmp $0CDF82.l,X		; DF 82 DF 0C
	.db $82, $82, $18		; 82 82 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $84.b		; 84 84
	clc		; 18
	cmp $0CDF84.l,X		; DF 84 DF 0C
	sty $84.b		; 84 84
	clc		; 18
	cmp $0CDF80.l,X		; DF 80 DF 0C
	bra -128.b		; 80 80
	clc		; 18
	cmp $0CDF7F.l,X		; DF 7F DF 0C
	adc $DF187F.l,X		; 7F 7F 18 DF
	cpx #$A5.b		; E0 A5
	and $06DF.w		; 2D DF 06
	bne  24.b		; D0 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	pei ($D1.b)		; D4 D1
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	pei ($D1.b)		; D4 D1
	pei ($D0.b)		; D4 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	cmp $D1.b,X		; D5 D1
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($E0.b),Y		; D1 E0
	ldy $2E.b		; A4 2E
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	and [$09.b],Y		; 37 09
	brk $28.b		; 00 28
	php		; 08
	rol $0028.w,X		; 3E 28 00
	ora $F52828.l,X		; 1F 28 28 F5
	plp		; 28
	brk $18.b		; 00 18
	clc		; 18
	php		; 08
	php		; 08
	pld		; 2B
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	and ($28.b),Y		; 31 28
	brk $1F.b		; 00 1F
	php		; 08
	php		; 08
	tas		; 1B
	and $1800.w		; 2D 00 18
	php		; 08
	php		; 08
	plp		; 28
	and $1800.w		; 2D 00 18
	clc		; 18
	clc		; 18
	lda #$2D.b		; A9 2D
	tsb $2417.w		; 0C 17 24
	bit $B9.b		; 24 B9
	and $3ED100.l		; 2F 00 D1 3E
	rol $06DF.w,X		; 3E DF 06
	cpx $030C.w		; EC 0C 03
	tsb $FC.b		; 04 FC
	ora $DF.b		; 05 DF
	tsb $47E0.w		; 0C E0 47
	plp		; 28
	sbc ($00.b,S),Y		; F3 00
	cpx #$DF.b		; E0 DF
	asl $EC.b		; 06 EC
	tsb $0304.w		; 0C 04 03
	sed		; F8
	sbc $12A6F1.l,X		; FF F1 A6 12
	lda $9F.b,S		; A3 9F
	bit $18DF.w,X		; 3C DF 18
	ldy $0C.b		; A4 0C
	ldy $A3.b		; A4 A3
	lda ($9F.b,X)		; A1 9F
	lda ($A3.b,X)		; A1 A3
	bit $9A.b		; 24 9A
	bit $F5.b		; 24 F5
	rts		; 60

	cmp $12A618.l,X		; DF 18 A6 12
	lda $9F.b,S		; A3 9F
	bit $18DF.w,X		; 3C DF 18
	ldy $0C.b		; A4 0C
	ldy $A3.b		; A4 A3
	lda ($9F.b,X)		; A1 9F
	lda ($A1.b,X)		; A1 A1
	bit $A3.b		; 24 A3
	asl $A1.b		; 06 A1
	sta $60F518.l,X		; 9F 18 F5 60
	cmp $12A618.l,X		; DF 18 A6 12
	lda $9F.b,S		; A3 9F
	bit $18DF.w,X		; 3C DF 18
	ldy $0C.b		; A4 0C
	ldy $A3.b		; A4 A3
	lda ($9F.b,X)		; A1 9F
	lda ($A3.b,X)		; A1 A3
	bit $9A.b		; 24 9A
	bit $F5.b		; 24 F5
	rts		; 60

	cmp $12A618.l,X		; DF 18 A6 12
	lda $9F.b,S		; A3 9F
	bit $18DF.w,X		; 3C DF 18
	ldy $0C.b		; A4 0C
	ldy $A3.b		; A4 A3
	lda ($9F.b,X)		; A1 9F
	lda ($A1.b,X)		; A1 A1
	bit $A3.b		; 24 A3
	asl $A1.b		; 06 A1
	sta $18DF60.l,X		; 9F 60 DF 18
	sta $0CA6A6.l,X		; 9F A6 A6 0C
	ldx $18.b		; A6 18
	ldy $0C.b		; A4 0C
	lda $A4.b,S		; A3 A4
	ldx $18.b		; A6 18
	ldy $0C.b		; A4 0C
	lda $18.b,S		; A3 18
	ldy $24.b		; A4 24
	cmp $0CA318.l,X		; DF 18 A3 0C
	lda $A3.b,S		; A3 A3
	clc		; 18
	ldy $0C.b		; A4 0C
	ldx $A9.b		; A6 A9
	clc		; 18
	tay		; A8
	tsb $18A6.w		; 0C A6 18
	ldy $A3.b		; A4 A3
	tsb $30A4.w		; 0C A4 30
	cmp $0C9C18.l,X		; DF 18 9C 0C
	sta $309E.w,X		; 9D 9E 30
	cmp $A89A18.l,X		; DF 18 9A A8
	ldx $0C.b		; A6 0C
	ldx $24.b		; A6 24
	cmp $A3A40C.l,X		; DF 0C A4 A3
	clc		; 18
	lda $A4.b,S		; A3 A4
	ldx $A4.b		; A6 A4
	rts		; 60

	lda $18.b,S		; A3 18
	lda ($9F.b,X)		; A1 9F
	lda $0C.b,S		; A3 0C
	lda ($54.b,X)		; A1 54
	sbc $60.b,X		; F5 60
	cmp $47E018.l,X		; DF 18 E0 47
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $04.b		; 05 04
	sed		; F8
	sbc $039EF2.l,X		; FF F2 9E 03
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9EDFA3.l,X		; DF A3 DF 9E
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9CDFA3.l,X		; DF A3 DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $9EDFA4.l,X		; DF A4 DF 9E
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9EDFA3.l,X		; DF A3 DF 9E
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9CDFA3.l,X		; DF A3 DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $9EDFA4.l,X		; DF A4 DF 9E
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9EDFA3.l,X		; DF A3 DF 9E
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9CDFA3.l,X		; DF A3 DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $E2DFA4.l,X		; DF A4 DF E2
	stz $DF03.w,X		; 9E 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	lda $DF.b,S		; A3 DF
	stz $09DF.w,X		; 9E DF 09
	lda $03.b,S		; A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9CDFA3.l,X		; DF A3 DF 9C
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $E1DFA4.l,X		; DF A4 DF E1
	xce		; FB
	plp		; 28
	stz $DF03.w,X		; 9E 03 DF
	ora #$A3.b		; 09 A3
	ora $DF.b,S		; 03 DF
	lda $DF.b,S		; A3 DF
	stz $09DF.w,X		; 9E DF 09
	lda $03.b,S		; A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9DDFA3.l,X		; DF A3 DF 9D
	cmp $03A409.l,X		; DF 09 A4 03
	cmp $9DDFA4.l,X		; DF A4 DF 9D
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9DDFA3.l,X		; DF A3 DF 9D
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $9DDFA3.l,X		; DF A3 DF 9D
	cmp $03A309.l,X		; DF 09 A3 03
	cmp $03DFA3.l,X		; DF A3 DF 03
	sed		; F8
	sbc $06A3F2.l,X		; FF F2 A3 06
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A1DFA3.l,X		; DF A3 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A3DFA1.l,X		; DF A1 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $A4DF9F.l,X		; DF 9F DF A4
	cmp $A8DFA4.l,X		; DF A4 DF A8
	cmp $A4DFA8.l,X		; DF A8 DF A4
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $A4DFA1.l,X		; DF A1 DF A4
	cmp $A6DFA4.l,X		; DF A4 DF A6
	cmp $A4DFA6.l,X		; DF A6 DF A4
	cmp $9EDFA4.l,X		; DF A4 DF 9E
	cmp $A1DF9E.l,X		; DF 9E DF A1
	cmp $A3DFA1.l,X		; DF A1 DF A3
	cmp $A1DFA3.l,X		; DF A3 DF A1
	cmp $A3DFA1.l,X		; DF A1 DF A3
	cmp $A6DFA3.l,X		; DF A3 DF A6
	cmp $A8DFA6.l,X		; DF A6 DF A8
	cmp $A6DFA8.l,X		; DF A8 DF A6
	cmp $9FDFA6.l,X		; DF A6 DF 9F
	cmp $A4DF9F.l,X		; DF 9F DF A4
	cmp $A8DFA4.l,X		; DF A4 DF A8
	cmp $A4DFA8.l,X		; DF A8 DF A4
	cmp $9FDFA4.l,X		; DF A4 DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $A3DFA1.l,X		; DF A1 DF A3
	cmp $9FDFA3.l,X		; DF A3 DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A4DF9F.l,X		; DF 9F DF A4
	cmp $A8DFA4.l,X		; DF A4 DF A8
	cmp $A4DFA8.l,X		; DF A8 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $06A40C.l,X		; DF 0C A4 06
	cmp $06A40C.l,X		; DF 0C A4 06
	cmp $FBE036.l,X		; DF 36 E0 FB
	plp		; 28
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $04.b		; 05 04
	sed		; F8
	sbc $039AF2.l,X		; FF F2 9A 03
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $98DF9F.l,X		; DF 9F DF 98
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $98DF9C.l,X		; DF 9C DF 98
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9ADFA1.l,X		; DF A1 DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $98DF9F.l,X		; DF 9F DF 98
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $98DF9C.l,X		; DF 9C DF 98
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9ADFA1.l,X		; DF A1 DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $98DF9F.l,X		; DF 9F DF 98
	cmp $039C09.l,X		; DF 09 9C 03
	cmp $98DF9C.l,X		; DF 9C DF 98
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $E2DFA1.l,X		; DF A1 DF E2
	txs		; 9A
	ora $DF.b,S		; 03 DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF9ADF.l,X		; 9F DF 9A DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF9ADF.l,X		; 9F DF 9A DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF9ADF.l,X		; 9F DF 9A DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF98DF.l,X		; 9F DF 98 DF
	ora #$9C.b		; 09 9C
	ora $DF.b,S		; 03 DF
	stz $98DF.w		; 9C DF 98
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $03A109.l,X		; DF 09 A1 03
	cmp $E1DFA1.l,X		; DF A1 DF E1
	asl $9A2B.w		; 0E 2B 9A
	ora $DF.b,S		; 03 DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF9ADF.l,X		; 9F DF 9A DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF9ADF.l,X		; 9F DF 9A DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF9ADF.l,X		; 9F DF 9A DF
	ora #$9F.b		; 09 9F
	ora $DF.b,S		; 03 DF
	sta $DF9ADF.l,X		; 9F DF 9A DF
	ora #$A1.b		; 09 A1
	ora $DF.b,S		; 03 DF
	lda ($DF.b,X)		; A1 DF
	txs		; 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $9ADF9F.l,X		; DF 9F DF 9A
	cmp $039F09.l,X		; DF 09 9F 03
	cmp $03DF9F.l,X		; DF 9F DF 03
	sed		; F8
	sbc $069FF2.l,X		; FF F2 9F 06
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9BDF9F.l,X		; DF 9F DF 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	cmp $9BDF9B.l,X		; DF 9B DF 9B
	cmp $9EDF9B.l,X		; DF 9B DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $9EDF9E.l,X		; DF 9E DF 9E
	cmp $A0DF9E.l,X		; DF 9E DF A0
	cmp $A0DFA0.l,X		; DF A0 DF A0
	cmp $A0DFA0.l,X		; DF A0 DF A0
	cmp $A0DFA0.l,X		; DF A0 DF A0
	cmp $9CDFA0.l,X		; DF A0 DF 9C
	cmp $A1DF9C.l,X		; DF 9C DF A1
	cmp $A4DFA1.l,X		; DF A1 DF A4
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $A1DF9E.l,X		; DF 9E DF A1
	cmp $9EDFA1.l,X		; DF A1 DF 9E
	cmp $A1DF9E.l,X		; DF 9E DF A1
	cmp $9ADFA1.l,X		; DF A1 DF 9A
	cmp $9EDF9A.l,X		; DF 9A DF 9E
	cmp $9ADF9E.l,X		; DF 9E DF 9A
	cmp $9EDF9A.l,X		; DF 9A DF 9E
	cmp $A0DF9E.l,X		; DF 9E DF A0
	cmp $A3DFA0.l,X		; DF A0 DF A3
	cmp $A0DFA3.l,X		; DF A3 DF A0
	cmp $A3DFA0.l,X		; DF A0 DF A3
	cmp $9CDFA3.l,X		; DF A3 DF 9C
	cmp $A1DF9C.l,X		; DF 9C DF A1
	cmp $A4DFA1.l,X		; DF A1 DF A4
	cmp $A1DFA4.l,X		; DF A4 DF A1
	cmp $9CDFA1.l,X		; DF A1 DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9FDF9C.l,X		; DF 9C DF 9F
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9FDF9C.l,X		; DF 9C DF 9F
	cmp $A4DF9F.l,X		; DF 9F DF A4
	cmp $9FDFA4.l,X		; DF A4 DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $06A10C.l,X		; DF 0C A1 06
	cmp $06A10C.l,X		; DF 0C A1 06
	cmp $0EE036.l,X		; DF 36 E0 0E
	pld		; 2B
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $04.b,S		; 03 04
	cmp $0FFC03.l,X		; DF 03 FC 0F
	cpx #$2E.b		; E0 2E
	and $06DF.w		; 2D DF 06
	cpx $0518.w		; EC 18 05
	tsb $E8.b		; 04 E8
	bpl -22.b		; 10 EA
	tsb $FFF8.w		; 0C F8 FF
	sbc ($DF.b)		; F2 DF
	bit $60F5.w,X		; 3C F5 60
	sbc $60.b,X		; F5 60
	sta $A6A30C.l,X		; 9F 0C A3 A6
	tay		; A8
	clc		; 18
	ldy $A1.b		; A4 A1
	stz $F59F.w,X		; 9E 9F F5
	bit $F5.b		; 24 F5
	rts		; 60

	sbc $60.b,X		; F5 60
	lda $0C.b,S		; A3 0C
	ldx $AB.b		; A6 AB
	tay		; A8
	clc		; 18
	ldy $A1.b		; A4 A1
	ldx $9F.b		; A6 9F
	sbc $24.b,X		; F5 24
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sta $A6A30C.l,X		; 9F 0C A3 A6
	tay		; A8
	clc		; 18
	ldy $A1.b		; A4 A1
	stz $F59F.w,X		; 9E 9F F5
	pha		; 48
	sbc $60.b,X		; F5 60
	nop		; EA
	pea $1EE8.w		; F4 E8 1E
	sed		; F8
	sbc $3CDFE0.l,X		; FF E0 DF 3C
	lda $0C.b,S		; A3 0C
	ldx $AB.b		; A6 AB
	lda #$18.b		; A9 18
	tay		; A8
	ldx $0C.b		; A6 0C
	tay		; A8
	lda #$AB.b		; A9 AB
	tay		; A8
	rts		; 60

	lda [$60.b]		; A7 60
	ldx $60.b		; A6 60
	ldy #$60.b		; A0 60
	lda ($30.b,X)		; A1 30
	sbc $60.b,X		; F5 60
	ldy $30.b		; A4 30
	stz $A0A1.w,X		; 9E A1 A0
	lda ($18.b,X)		; A1 18
	lda $A1.b,S		; A3 A1
	bmi -97.b		; 30 9F
	stz $9E18.w		; 9C 18 9E
	sta $60A6A8.l,X		; 9F A8 A6 60
	lda ($12.b)		; B2 12
	lda ($06.b)		; B2 06
	cmp $06B20C.l,X		; DF 0C B2 06
	cmp $2EE036.l,X		; DF 36 E0 2E
	and $06DF.w		; 2D DF 06
	sed		; F8
	sbc $0F7BEE.l,X		; FF EE 7B 0F
	cmp $067B03.l,X		; DF 03 7B 06
	cmp $1E780C.l,X		; DF 0C 78 1E
	cmp $097812.l,X		; DF 12 78 09
	cmp $0F7D03.l,X		; DF 03 7D 0F
	cmp $067D03.l,X		; DF 03 7D 06
	cmp $12820C.l,X		; DF 0C 82 12
	cmp $097A06.l,X		; DF 06 7A 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097A03.l,X		; DF 03 7A 09
	cmp $0F7B03.l,X		; DF 03 7B 0F
	cmp $067B03.l,X		; DF 03 7B 06
	cmp $1E780C.l,X		; DF 0C 78 1E
	cmp $097812.l,X		; DF 12 78 09
	cmp $0F7D03.l,X		; DF 03 7D 0F
	cmp $067D03.l,X		; DF 03 7D 06
	cmp $12820C.l,X		; DF 0C 82 12
	cmp $098406.l,X		; DF 06 84 09
	cmp $098603.l,X		; DF 03 86 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $0F7B03.l,X		; DF 03 7B 0F
	cmp $067B03.l,X		; DF 03 7B 06
	cmp $1E780C.l,X		; DF 0C 78 1E
	cmp $097812.l,X		; DF 12 78 09
	cmp $0F7D03.l,X		; DF 03 7D 0F
	cmp $067D03.l,X		; DF 03 7D 06
	cmp $12820C.l,X		; DF 0C 82 12
	cmp $097A06.l,X		; DF 06 7A 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097A03.l,X		; DF 03 7A 09
	cmp $7BE203.l,X		; DF 03 E2 7B
	ora $7B03DF.l		; 0F DF 03 7B
	asl $DF.b		; 06 DF
	tsb $1E78.w		; 0C 78 1E
	cmp $097812.l,X		; DF 12 78 09
	cmp $0F7D03.l,X		; DF 03 7D 0F
	cmp $067D03.l,X		; DF 03 7D 06
	cmp $12820C.l,X		; DF 0C 82 12
	cmp $097D06.l,X		; DF 06 7D 09
	cmp $097A03.l,X		; DF 03 7A 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $AEE103.l,X		; DF 03 E1 AE
	and $0F7B.w		; 2D 7B 0F
	cmp $067B03.l,X		; DF 03 7B 06
	cmp $1E780C.l,X		; DF 0C 78 1E
	cmp $097812.l,X		; DF 12 78 09
	cmp $0F8203.l,X		; DF 03 82 0F
	cmp $068203.l,X		; DF 03 82 06
	cmp $127B0C.l,X		; DF 0C 7B 12
	cmp $097D06.l,X		; DF 06 7D 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $0F8003.l,X		; DF 03 80 0F
	cmp $0F8003.l,X		; DF 03 80 0F
	cmp $128003.l,X		; DF 03 80 12
	cmp $098C06.l,X		; DF 06 8C 09
	cmp $09800F.l,X		; DF 0F 80 09
	cmp $0F8003.l,X		; DF 03 80 0F
	cmp $0F8003.l,X		; DF 03 80 0F
	cmp $128003.l,X		; DF 03 80 12
	cmp $098C06.l,X		; DF 06 8C 09
	cmp $09800F.l,X		; DF 0F 80 09
	cmp $0F7F03.l,X		; DF 03 7F 0F
	cmp $0F7F03.l,X		; DF 03 7F 0F
	cmp $127F03.l,X		; DF 03 7F 12
	cmp $098B06.l,X		; DF 06 8B 09
	cmp $097F0F.l,X		; DF 0F 7F 09
	cmp $0F7803.l,X		; DF 03 78 0F
	cmp $0F7803.l,X		; DF 03 78 0F
	cmp $127803.l,X		; DF 03 78 12
	cmp $098406.l,X		; DF 06 84 09
	cmp $09780F.l,X		; DF 0F 78 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097803.l,X		; DF 03 78 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $097D03.l,X		; DF 03 7D 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098103.l,X		; DF 03 81 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $0F8203.l,X		; DF 03 82 0F
	cmp $068203.l,X		; DF 03 82 06
	cmp $09820C.l,X		; DF 0C 82 09
	cmp $ABE033.l,X		; DF 33 E0 AB
	and $06DF.w		; 2D DF 06
	bne  18.b		; D0 12
	bne   6.b		; D0 06
	cmp ($0C.b),Y		; D1 0C
	bne  36.b		; D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -30.b		; D0 E2
	bne  18.b		; D0 12
	bne   6.b		; D0 06
	cmp ($0C.b),Y		; D1 0C
	bne  36.b		; D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($06.b),Y		; D1 06
	pei ($D5.b)		; D4 D5
	cmp $E1.b,X		; D5 E1
	tyx		; BB
	and $D012D0.l		; 2F D0 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $24D0.w		; 0C D0 24
	cmp ($0C.b),Y		; D1 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	ora ($D0.b)		; 12 D0
	asl $D1.b		; 06 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($D6.b)		; D2 D6
	bne  18.b		; D0 12
	bne   6.b		; D0 06
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D6.b)		; D2 D6
	bne  18.b		; D0 12
	bne   6.b		; D0 06
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D6.b)		; D2 D6
	bne  18.b		; D0 12
	bne   6.b		; D0 06
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($D6.b)		; D2 D6
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	bne -46.b		; D0 D2
	cmp ($D2.b),Y		; D1 D2
	cmp ($12.b),Y		; D1 12
	cmp ($D1.b),Y		; D1 D1
	clc		; 18
	cmp $0C.b,X		; D5 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D1.b),Y		; D1 D1
	cmp ($E0.b),Y		; D1 E0
	tyx		; BB
	and $DF06DF.l		; 2F DF 06 DF
	bmi -82.b		; 30 AE
	asl $AE.b		; 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	pha		; 48
	ldx $AE06.w		; AE 06 AE
	ldx $DFAE.w		; AE AE DF
	clc		; 18
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$AA.b		; E0 AA
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	php		; 08
	and ($0A.b),Y		; 31 0A
	brk $28.b		; 00 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $02.b		; 00 02
	rol $36.b,X		; 36 36
	phy		; 5A
	and #$00.b		; 29 00
	asl $0C18.w,X		; 1E 18 0C
	ora ($2A.b,X)		; 01 2A
	brk $19.b		; 00 19
	php		; 08
	clc		; 18
	stx $2B.b		; 86 2B
	brk $1F.b		; 00 1F
	bpl   6.b		; 10 06
	cpy #$2C.b		; C0 2C
	brk $1F.b		; 00 1F
	asl $06.b		; 06 06
	plx		; FA
	and $1F00.w		; 2D 00 1F
	brk $0E.b		; 00 0E
	bit $2F.b,X		; 34 2F
	tsb $2417.w		; 0C 17 24
	bit $39.b		; 24 39
	bmi   0.b		; 30 00
	cmp ($3E.b),Y		; D1 3E
	rol $00F3.w,X		; 3E F3 00
	bne -33.b		; D0 DF
	asl $EC.b		; 06 EC
	clc		; 18
	ora $04.b		; 05 04
	inx		; E8
	cop $F8.b		; 02 F8
	sbc $18DFEE.l,X		; FF EE DF 18
	ldy $09.b		; A4 09
	cmp $12A303.l,X		; DF 03 A3 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $129F03.l,X		; DF 03 9F 12
	cmp $12A106.l,X		; DF 06 A1 12
	cmp $099F06.l,X		; DF 06 9F 09
	cmp $309F03.l,X		; DF 03 9F 30
	cmp $09A124.l,X		; DF 24 A1 09
	cmp $129F03.l,X		; DF 03 9F 12
	cmp $099D06.l,X		; DF 06 9D 09
	cmp $129C03.l,X		; DF 03 9C 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $099C06.l,X		; DF 06 9C 09
	cmp $309C03.l,X		; DF 03 9C 30
	cmp $099D24.l,X		; DF 24 9D 09
	cmp $129D03.l,X		; DF 03 9D 12
	cmp $099F06.l,X		; DF 06 9F 09
	cmp $12A103.l,X		; DF 03 A1 12
	cmp $9FE206.l,X		; DF 06 E2 9F
	ora ($DF.b)		; 12 DF
	asl $98.b		; 06 98
	ora #$DF.b		; 09 DF
	ora $98.b,S		; 03 98
	asl $06DF.w,X		; 1E DF 06
	stz $DF12.w		; 9C 12 DF
	asl $9C.b		; 06 9C
	ora ($DF.b)		; 12 DF
	asl $9D.b		; 06 9D
	ora #$DF.b		; 09 DF
	ora $9A.b,S		; 03 9A
	bit $60DF.w,X		; 3C DF 60
	sbc ($3F.b,X)		; E1 3F
	plp		; 28
	sta $06DF12.l,X		; 9F 12 DF 06
	stz $DF09.w		; 9C 09 DF
	ora $A4.b,S		; 03 A4
	asl $06DF.w,X		; 1E DF 06
	sta $06DF12.l,X		; 9F 12 DF 06
	lda ($12.b,X)		; A1 12
	cmp $09A406.l,X		; DF 06 A4 09
	cmp $1EA403.l,X		; DF 03 A4 1E
	cmp $12A306.l,X		; DF 06 A3 12
	cmp $39A406.l,X		; DF 06 A4 39
	cmp $1FE80F.l,X		; DF 0F E8 1F
	sed		; F8
	sbc $18A4F1.l,X		; FF F1 A4 18
	lda $30.b,S		; A3 30
	stz $9E24.w		; 9C 24 9E
	mvn $0C,$A1		; 54 A1 0C
	lda $A3.b		; A5 A3
	bmi -100.b		; 30 9C
	bit $9E.b		; 24 9E
	mvn $0C,$A1		; 54 A1 0C
	lda $A6.b		; A5 A6
	bmi -97.b		; 30 9F
	bit $A1.b		; 24 A1
	mvn $0C,$A4		; 54 A4 0C
	tay		; A8
	ldx $30.b		; A6 30
	sta $3CA624.l,X		; 9F 24 A6 3C
	cmp $09A80C.l,X		; DF 0C A8 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $12A406.l,X		; DF 06 A4 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $30A606.l,X		; DF 06 A6 30
	cmp $09A818.l,X		; DF 18 A8 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $12A406.l,X		; DF 06 A4 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $30A606.l,X		; DF 06 A6 30
	cmp $09A818.l,X		; DF 18 A8 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $12A406.l,X		; DF 06 A4 12
	cmp $129F06.l,X		; DF 06 9F 12
	cmp $09A106.l,X		; DF 06 A1 09
	cmp $12A403.l,X		; DF 03 A4 12
	cmp $30A606.l,X		; DF 06 A6 30
	cmp $09A818.l,X		; DF 18 A8 09
	cmp $12A603.l,X		; DF 03 A6 12
	cmp $60A406.l,X		; DF 06 A4 60
	sbc $60.b,X		; F5 60
	cpx #$3A.b		; E0 3A
	plp		; 28
	cmp $18EC06.l,X		; DF 06 EC 18
	ora $04.b		; 05 04
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	inx		; E8
	asl $18DF.w,X		; 1E DF 18
	sta [$9F.b],Y		; 97 9F
	sta $609C.w,X		; 9D 9C 60
	txs		; 9A
	bmi -105.b		; 30 97
	tya		; 98
	rts		; 60

	sta [$30.b],Y		; 97 30
	txs		; 9A
	tya		; 98
	pha		; 48
	sta $9C18.w,X		; 9D 18 9C
	tya		; 98
	tsb $3C9C.w		; 0C 9C 3C
	sta $9D24.w,X		; 9D 24 9D
	txs		; 9A
	clc		; 18
	stz $DF42.w		; 9C 42 DF
	asl $A4.b		; 06 A4
	clc		; 18
	lda $30.b,S		; A3 30
	stz $9E24.w		; 9C 24 9E
	phk		; 4B
	cmp $0CA109.l,X		; DF 09 A1 0C
	lda $A3.b		; A5 A3
	bmi -100.b		; 30 9C
	bit $9E.b		; 24 9E
	phk		; 4B
	cmp $0CA109.l,X		; DF 09 A1 0C
	lda $A6.b		; A5 A6
	bmi -97.b		; 30 9F
	bit $A1.b		; 24 A1
	phk		; 4B
	cmp $0CA409.l,X		; DF 09 A4 0C
	tay		; A8
	ldx $30.b		; A6 30
	sta $42A624.l,X		; 9F 24 A6 42
	cmp $1AE806.l,X		; DF 06 E8 1A
	sta ($0C.b,S),Y		; 93 0C
	sta ($18.b),Y		; 91 18
	bcc  12.b		; 90 0C
	stx $8C90.w		; 8E 90 8C
	sta ($90.b),Y		; 91 90
	clc		; 18
	sta ($95.b),Y		; 91 95
	tsb $9798.w		; 0C 98 97
	clc		; 18
	sta ($0C.b,S),Y		; 93 0C
	sta ($18.b),Y		; 91 18
	bcc  12.b		; 90 0C
	stx $908C.w		; 8E 8C 90
	sta ($95.b),Y		; 91 95
	clc		; 18
	tya		; 98
	sta [$0C.b],Y		; 97 0C
	sta $98.b,X		; 95 98
	sta [$93.b],Y		; 97 93
	sta ($18.b),Y		; 91 18
	bcc  12.b		; 90 0C
	stx $8C90.w		; 8E 90 8C
	sta ($90.b),Y		; 91 90
	clc		; 18
	sta ($95.b),Y		; 91 95
	tsb $9798.w		; 0C 98 97
	clc		; 18
	sta ($0C.b,S),Y		; 93 0C
	sta ($18.b),Y		; 91 18
	sta $24.b,X		; 95 24
	sta ($91.b,S),Y		; 93 91
	clc		; 18
	bcc  96.b		; 90 60
	cpx #$60.b		; E0 60
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0303.w		; 0C 03 03
	sed		; F8
	sbc $24DFF1.l,X		; FF F1 DF 24
	sta ($06.b,S),Y		; 93 06
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $06902A.l,X		; DF 2A 90 06
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $95DF95.l,X		; DF 95 DF 95
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $06952A.l,X		; DF 2A 95 06
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $93E22A.l,X		; DF 2A E2 93
	asl $DF.b		; 06 DF
	stz $9CDF.w		; 9C DF 9C
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $06912A.l,X		; DF 2A 91 06
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $96DF96.l,X		; DF 96 DF 96
	cmp $06912A.l,X		; DF 2A 91 06
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $97DF97.l,X		; DF 97 DF 97
	cmp $0AE106.l,X		; DF 06 E1 0A
	rol A		; 2A
	sta $06.b,X		; 95 06
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $98DF98.l,X		; DF 98 DF 98
	cmp $06952A.l,X		; DF 2A 95 06
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9ADF9A.l,X		; DF 9A DF 9A
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $93DF98.l,X		; DF 98 DF 93
	cmp $069412.l,X		; DF 12 94 06
	cmp $94DF9C.l,X		; DF 9C DF 94
	cmp $9CDF97.l,X		; DF 97 DF 9C
	cmp $0C9512.l,X		; DF 12 95 0C
	cmp $DF0695.l,X		; DF 95 06 DF
	stz $95DF.w		; 9C DF 95
	cmp $9CDF99.l,X		; DF 99 DF 9C
	cmp $06942A.l,X		; DF 2A 94 06
	cmp $94DF9C.l,X		; DF 9C DF 94
	cmp $9CDF97.l,X		; DF 97 DF 9C
	cmp $0C9512.l,X		; DF 12 95 0C
	cmp $DF0695.l,X		; DF 95 06 DF
	stz $95DF.w		; 9C DF 95
	cmp $9CDF99.l,X		; DF 99 DF 9C
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $93DF9A.l,X		; DF 9A DF 93
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $0C9512.l,X		; DF 12 95 0C
	cmp $DF0695.l,X		; DF 95 06 DF
	stz $95DF.w		; 9C DF 95
	cmp $9CDF98.l,X		; DF 98 DF 9C
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $93DF9A.l,X		; DF 9A DF 93
	cmp $9ADF97.l,X		; DF 97 DF 9A
	cmp $0C9512.l,X		; DF 12 95 0C
	cmp $DF069A.l,X		; DF 9A 06 DF
	sta $95DF.w,X		; 9D DF 95
	cmp $9DDF97.l,X		; DF 97 DF 9D
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $DF0398.l,X		; DF 98 03 DF
	tya		; 98
	cmp $DF0693.l,X		; DF 93 06 DF
	sta $95DF.w,X		; 9D DF 95
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $DF0397.l,X		; DF 97 03 DF
	sta [$DF.b],Y		; 97 DF
	sta ($06.b,S),Y		; 93 06
	cmp $93DF9A.l,X		; DF 9A DF 93
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $DF0398.l,X		; DF 98 03 DF
	tya		; 98
	cmp $DF0693.l,X		; DF 93 06 DF
	sta $95DF.w,X		; 9D DF 95
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $DF0397.l,X		; DF 97 03 DF
	sta [$DF.b],Y		; 97 DF
	sta ($06.b,S),Y		; 93 06
	cmp $93DF9A.l,X		; DF 9A DF 93
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $DF0398.l,X		; DF 98 03 DF
	tya		; 98
	cmp $DF0693.l,X		; DF 93 06 DF
	sta $95DF.w,X		; 9D DF 95
	cmp $06932A.l,X		; DF 2A 93 06
	cmp $DF0397.l,X		; DF 97 03 DF
	sta [$DF.b],Y		; 97 DF
	sta ($06.b,S),Y		; 93 06
	cmp $93DF9A.l,X		; DF 9A DF 93
	cmp $06952A.l,X		; DF 2A 95 06
	cmp $DF039D.l,X		; DF 9D 03 DF
	sta $98DF.w,X		; 9D DF 98
	asl $DF.b		; 06 DF
	stz $93DF.w		; 9C DF 93
	cmp $95DF91.l,X		; DF 91 DF 95
	cmp $069312.l,X		; DF 12 93 06
	cmp $93DF98.l,X		; DF 98 DF 93
	cmp $98DF9C.l,X		; DF 9C DF 98
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $2A07E0.l,X		; DF E0 07 2A
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $03.b,S		; 03 03
	sed		; F8
	sbc $06A4F1.l,X		; FF F1 A4 06
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A6DFA4.l,X		; DF A4 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A4DFA6.l,X		; DF A6 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A8DFA4.l,X		; DF A4 DF A8
	cmp $A8DFA8.l,X		; DF A8 DF A8
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A4DFA6.l,X		; DF A6 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $E2DFA4.l,X		; DF A4 DF E2
	ldx $06.b		; A6 06
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A6DFA4.l,X		; DF A4 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A6DFA6.l,X		; DF A6 DF A6
	cmp $A4DFA6.l,X		; DF A6 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $E1DFA3.l,X		; DF A3 DF E1
	sta $06A42B.l		; 8F 2B A4 06
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A8DFA4.l,X		; DF A4 DF A8
	bmi -93.b		; 30 A3
	bit $A1.b		; 24 A1
	bit $30A5.w,X		; 3C A5 30
	tay		; A8
	lda $24.b,S		; A3 24
	lda ($3C.b,X)		; A1 3C
	lda $30.b		; A5 30
	plb		; AB
	ldx $24.b		; A6 24
	ldy $3C.b		; A4 3C
	tay		; A8
	bmi -85.b		; 30 AB
	ldx $24.b		; A6 24
	ldy $DF.b		; A4 DF
	tsb $3CA6.w		; 0C A6 3C
	ldy $15.b		; A4 15
	cmp $15A403.l,X		; DF 03 A4 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	ldy $15.b		; A4 15
	cmp $36A303.l,X		; DF 03 A3 36
	cmp $2AA606.l,X		; DF 06 A6 2A
	cmp $15A406.l,X		; DF 06 A4 15
	cmp $15A403.l,X		; DF 03 A4 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	ldy $15.b		; A4 15
	cmp $36A303.l,X		; DF 03 A3 36
	cmp $2AA606.l,X		; DF 06 A6 2A
	cmp $15A406.l,X		; DF 06 A4 15
	cmp $15A403.l,X		; DF 03 A4 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	ldy $15.b		; A4 15
	cmp $36A303.l,X		; DF 03 A3 36
	cmp $2AA606.l,X		; DF 06 A6 2A
	cmp $15A406.l,X		; DF 06 A4 15
	cmp $0CA403.l,X		; DF 03 A4 0C
	ldy $21.b		; A4 21
	cmp $15A403.l,X		; DF 03 A4 15
	cmp $3CA403.l,X		; DF 03 A4 3C
	ldy $06.b		; A4 06
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $2B8CE0.l,X		; DF E0 8C 2B
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $03.b,S		; 03 03
	sed		; F8
	sbc $069FF1.l,X		; FF F1 9F 06
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A3DF9F.l,X		; DF 9F DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A1DFA3.l,X		; DF A3 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A3DFA1.l,X		; DF A1 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A3DFA3.l,X		; DF A3 DF A3
	cmp $A1DFA3.l,X		; DF A3 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $E2DFA1.l,X		; DF A1 DF E2
	sta $9FDF06.l,X		; 9F 06 DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A4DFA4.l,X		; DF A4 DF A4
	cmp $A2DFA4.l,X		; DF A4 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $A2DFA2.l,X		; DF A2 DF A2
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $2CC9E1.l,X		; DF E1 C9 2C
	sta $9FDF06.l,X		; 9F 06 DF 9F
	cmp $A1DF9F.l,X		; DF 9F DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $A030A3.l,X		; DF A3 30 A0
	bit $9E.b		; 24 9E
	bit $30A1.w,X		; 3C A1 30
	lda $A0.b,S		; A3 A0
	bit $9E.b		; 24 9E
	bit $30A1.w,X		; 3C A1 30
	ldx $A3.b		; A6 A3
	bit $A1.b		; 24 A1
	bit $30A4.w,X		; 3C A4 30
	ldx $A3.b		; A6 A3
	bit $A1.b		; 24 A1
	cmp $3CA30C.l,X		; DF 0C A3 3C
	sta $03DF15.l,X		; 9F 15 DF 03
	sta $03DF15.l,X		; 9F 15 DF 03
	lda ($0C.b,X)		; A1 0C
	lda ($15.b,X)		; A1 15
	cmp $369F03.l,X		; DF 03 9F 36
	cmp $2AA306.l,X		; DF 06 A3 2A
	cmp $159F06.l,X		; DF 06 9F 15
	cmp $159F03.l,X		; DF 03 9F 15
	cmp $0CA103.l,X		; DF 03 A1 0C
	lda ($15.b,X)		; A1 15
	cmp $369F03.l,X		; DF 03 9F 36
	cmp $2AA306.l,X		; DF 06 A3 2A
	cmp $159F06.l,X		; DF 06 9F 15
	cmp $159F03.l,X		; DF 03 9F 15
	cmp $0CA103.l,X		; DF 03 A1 0C
	lda ($15.b,X)		; A1 15
	cmp $369F03.l,X		; DF 03 9F 36
	cmp $2AA306.l,X		; DF 06 A3 2A
	cmp $15A106.l,X		; DF 06 A1 15
	cmp $0CA103.l,X		; DF 03 A1 0C
	sta $03DF21.l,X		; 9F 21 DF 03
	lda ($15.b,X)		; A1 15
	cmp $3C9F03.l,X		; DF 03 9F 3C
	sta $9FDF06.l,X		; 9F 06 DF 9F
	cmp $E0DF9F.l,X		; DF 9F DF E0
	dec $2C.b		; C6 2C
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $03.b,S		; 03 03
	sed		; F8
	sbc $069CF1.l,X		; FF F1 9C 06
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $A1DF9C.l,X		; DF 9C DF A1
	cmp $A1DFA1.l,X		; DF A1 DF A1
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9CDF9F.l,X		; DF 9F DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9FDF9C.l,X		; DF 9C DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9FDF9F.l,X		; DF 9F DF 9F
	cmp $9DDF9F.l,X		; DF 9F DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $E2DF9D.l,X		; DF 9D DF E2
	stz $DF06.w		; 9C 06 DF
	stz $9CDF.w		; 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9DDF9C.l,X		; DF 9C DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $E1DF9D.l,X		; DF 9D DF E1
	ora $2E.b,S		; 03 2E
	stz $DF06.w		; 9C 06 DF
	stz $9CDF.w		; 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9DDF9C.l,X		; DF 9C DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9DDF9D.l,X		; DF 9D DF 9D
	cmp $9CDF9D.l,X		; DF 9D DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $A0DF9C.l,X		; DF 9C DF A0
	bmi -100.b		; 30 9C
	bit $9C.b		; 24 9C
	bit $309E.w,X		; 3C 9E 30
	ldy #$9C.b		; A0 9C
	bit $9C.b		; 24 9C
	bit $309E.w,X		; 3C 9E 30
	lda $9F.b,S		; A3 9F
	bit $9F.b		; 24 9F
	bit $30A1.w,X		; 3C A1 30
	lda $9F.b,S		; A3 9F
	bit $9D.b		; 24 9D
	cmp $3C9D0C.l,X		; DF 0C 9D 3C
	stz $DF15.w		; 9C 15 DF
	ora $9C.b,S		; 03 9C
	ora $DF.b,X		; 15 DF
	ora $9F.b,S		; 03 9F
	tsb $159D.w		; 0C 9D 15
	cmp $369D03.l,X		; DF 03 9D 36
	cmp $2A9F06.l,X		; DF 06 9F 2A
	cmp $159C06.l,X		; DF 06 9C 15
	cmp $159C03.l,X		; DF 03 9C 15
	cmp $0C9F03.l,X		; DF 03 9F 0C
	sta $DF15.w,X		; 9D 15 DF
	ora $9D.b,S		; 03 9D
	rol $DF.b,X		; 36 DF
	asl $9F.b		; 06 9F
	rol A		; 2A
	cmp $159C06.l,X		; DF 06 9C 15
	cmp $159C03.l,X		; DF 03 9C 15
	cmp $0C9F03.l,X		; DF 03 9F 0C
	sta $DF15.w,X		; 9D 15 DF
	ora $9D.b,S		; 03 9D
	rol $DF.b,X		; 36 DF
	asl $9F.b		; 06 9F
	rol A		; 2A
	cmp $159D06.l,X		; DF 06 9D 15
	cmp $0C9D03.l,X		; DF 03 9D 0C
	stz $DF21.w		; 9C 21 DF
	ora $9D.b,S		; 03 9D
	ora $DF.b,X		; 15 DF
	ora $9C.b,S		; 03 9C
	bit $069C.w,X		; 3C 9C 06
	cmp $9CDF9C.l,X		; DF 9C DF 9C
	cmp $2E00E0.l,X		; DF E0 00 2E
	cmp $FFF806.l,X		; DF 06 F8 FF
	inc $1880.w		; EE 80 18
	cmp $80800C.l,X		; DF 0C 80 80
	clc		; 18
	cmp $0CDF7F.l,X		; DF 7F DF 0C
	adc $DF187F.l,X		; 7F 7F 18 DF
	adc $0CDF.w,X		; 7D DF 0C
	adc $187D.w,X		; 7D 7D 18
	cmp $0CDF7B.l,X		; DF 7B DF 0C
	tda		; 7B
	tda		; 7B
	clc		; 18
	cmp $0CDF79.l,X		; DF 79 DF 0C
	adc $1879.w,Y		; 79 79 18
	cmp $0CDF78.l,X		; DF 78 DF 0C
	sei		; 78
	sei		; 78
	clc		; 18
	cmp $0CDF7E.l,X		; DF 7E DF 0C
	ror $187E.w,X		; 7E 7E 18
	cmp $0CDF7B.l,X		; DF 7B DF 0C
	tda		; 7B
	tda		; 7B
	adc $7B7F.w,X		; 7D 7F 7B
	bra  24.b		; 80 18
	cmp $80800C.l,X		; DF 0C 80 80
	clc		; 18
	cmp $0CDF7F.l,X		; DF 7F DF 0C
	adc $DF187F.l,X		; 7F 7F 18 DF
	adc $0CDF.w,X		; 7D DF 0C
	adc $187D.w,X		; 7D 7D 18
	cmp $0CDF7B.l,X		; DF 7B DF 0C
	tda		; 7B
	tda		; 7B
	clc		; 18
	cmp $0CDF79.l,X		; DF 79 DF 0C
	adc $1879.w,Y		; 79 79 18
	cmp $0CDF78.l,X		; DF 78 DF 0C
	adc $8418.w,X		; 7D 18 84
	tsb $7D80.w		; 0C 80 7D
	.db $82, $18, $DF		; 82 18 DF
	tsb $247B.w		; 0C 7B 24
	tda		; 7B
	clc		; 18
	bra -33.b		; 80 DF
	tsb $1880.w		; 0C 80 18
	sei		; 78
	tsb $807B.w		; 0C 7B 80
	adc $0CDF18.l,X		; 7F 18 DF 0C
	adc $DF887F.l,X		; 7F 7F 88 DF
	adc $0CDF24.l,X		; 7F 24 DF 0C
	adc $868B7F.l,X		; 7F 7F 8B 86
	adc $DF187F.l,X		; 7F 7F 18 DF
	tsb $7F7F.w		; 0C 7F 7F
	dey		; 88
	cmp $DF247F.l,X		; DF 7F 24 DF
	tsb $7F7F.w		; 0C 7F 7F
	phb		; 8B
	stx $7F.b		; 86 7F
	.db $82, $18, $DF		; 82 18 DF
	tsb $8282.w		; 0C 82 82
	phb		; 8B
	cmp $DF2482.l,X		; DF 82 24 DF
	tsb $8282.w		; 0C 82 82
	sty $8289.w		; 8C 89 82
	.db $82, $18, $DF		; 82 18 DF
	tsb $8282.w		; 0C 82 82
	phb		; 8B
	cmp $DF2482.l,X		; DF 82 24 DF
	tsb $187B.w		; 0C 7B 18
	sta [$0C.b]		; 87 0C
	sta $7F.b		; 85 7F
	bra  24.b		; 80 18
	bra 121.b		; 80 79
	cmp $187B0C.l,X		; DF 0C 7B 18
	tda		; 7B
	tsb $7B7F.w		; 0C 7F 7B
	.db $82, $7B, $87		; 82 7B 87
	tda		; 7B
	bra  24.b		; 80 18
	bra 121.b		; 80 79
	cmp $187B0C.l,X		; DF 0C 7B 18
	tda		; 7B
	tsb $7B7F.w		; 0C 7F 7B
	.db $82, $7B, $87		; 82 7B 87
	tda		; 7B
	bra  24.b		; 80 18
	bra 121.b		; 80 79
	cmp $187B0C.l,X		; DF 0C 7B 18
	tda		; 7B
	tsb $7B7F.w		; 0C 7F 7B
	.db $82, $7B, $87		; 82 7B 87
	tda		; 7B
	adc $8518.w,Y		; 79 18 85
	tsb $2484.w		; 0C 84 24
	.db $82, $18, $80		; 82 18 80
	cmp $827B0C.l,X		; DF 0C 7B 82
	bra 123.b		; 80 7B
	sei		; 78
	cpx #$36.b		; E0 36
	and $D006DF.l		; 2F DF 06 D0
	clc		; 18
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b)		; D2 D0
	clc		; 18
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b)		; D2 0C
	bne  24.b		; D0 18
	cmp $0C.b,X		; D5 0C
	cmp ($18.b),Y		; D1 18
	bne -46.b		; D0 D2
	tsb $18D0.w		; 0C D0 18
	cmp $0C.b,X		; D5 0C
	cmp ($18.b),Y		; D1 18
	bne -46.b		; D0 D2
	tsb $18D0.w		; 0C D0 18
	cmp $0C.b,X		; D5 0C
	cmp $D6.b,X		; D5 D6
	bne  24.b		; D0 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  36.b		; D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  36.b		; D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($06.b),Y		; D1 06
	pei ($D5.b)		; D4 D5
	dec $D0.b,X		; D6 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  36.b		; D0 24
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne -48.b		; D0 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  36.b		; D0 24
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	pei ($04.b)		; D4 04
	cmp $D5.b,X		; D5 D5
	dec $0C.b,X		; D6 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	cmp $06.b,X		; D5 06
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	cmp $06.b,X		; D5 06
	dec $D0.b,X		; D6 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	cmp $06.b,X		; D5 06
	cmp $D0.b,X		; D5 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  36.b		; D0 24
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	tsb $D0D0.w		; 0C D0 D0
	cmp $06.b,X		; D5 06
	cmp ($D1.b),Y		; D1 D1
	tsb $06D1.w		; 0C D1 06
	cmp ($E0.b),Y		; D1 E0
	tsa		; 3B
	bmi -33.b		; 30 DF
	asl $DF.b		; 06 DF
	bit $06B1.w,X		; 3C B1 06
	lda ($DF.b),Y		; B1 DF
	mvn $06,$A2		; 54 A2 06
	cmp $06B15A.l,X		; DF 5A B1 06
	lda ($DF.b),Y		; B1 DF
	mvn $06,$A2		; 54 A2 06
	cmp $06B15A.l,X		; DF 5A B1 06
	lda ($DF.b),Y		; B1 DF
	mvn $06,$A2		; 54 A2 06
	cmp $06B15A.l,X		; DF 5A B1 06
	lda ($DF.b),Y		; B1 DF
	mvn $60,$F5		; 54 F5 60
	lda ($06.b),Y		; B1 06
	lda ($DF.b),Y		; B1 DF
	mvn $06,$A2		; 54 A2 06
	cmp $06B15A.l,X		; DF 5A B1 06
	lda ($DF.b),Y		; B1 DF
	mvn $06,$A2		; 54 A2 06
	cmp $06B15A.l,X		; DF 5A B1 06
	lda ($DF.b),Y		; B1 DF
	bit $F5.b		; 24 F5
	rts		; 60

	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $24DF.w		; AE DF 24
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $06AE0C.l,X		; DF 0C AE 06
	ldx $AEDF.w		; AE DF AE
	cmp $0CDFAE.l,X		; DF AE DF 0C
	ldx $AE06.w		; AE 06 AE
	cmp $AEDFAE.l,X		; DF AE DF AE
	cmp $60F530.l,X		; DF 30 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$5A.b		; E0 5A
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	php		; 08
	eor $0001.w,Y		; 59 01 00
	plp		; 28
	php		; 08
	and ($28.b),Y		; 31 28
	brk $1F.b		; 00 1F
	rol A		; 2A
	clc		; 18
	adc $0028.w		; 6D 28 00
	ora $980C14.l,X		; 1F 14 0C 98
	plp		; 28
	brk $1F.b		; 00 1F
	tsb $C314.w		; 0C 14 C3
	plp		; 28
	brk $1E.b		; 00 1E
	asl $14.b		; 06 14
	dec $0028.w,X		; DE 28 00
	ora $F00AFE.l,X		; 1F FE 0A F0
	plp		; 28
	brk $1E.b		; 00 1E
	inc $020C.w,X		; FE 0C 02
	and #$0C.b		; 29 0C
	ora [$24.b],Y		; 17 24
	bit $3C.b		; 24 3C
	and #$00.b		; 29 00
	cmp ($46.b),Y		; D1 46
	lsr $F3.b		; 46 F3
	brk $F0.b		; 00 F0
	cmp $FFF806.l,X		; DF 06 F8 FF
	sbc ($E1.b)		; F2 E1
	eor $28.b		; 45 28
	lda $AF0C.w		; AD 0C AF
	asl $06DF.w,X		; 1E DF 06
	lda $A3E63C.l		; AF 3C E6 A3
	tsb $AAA8.w		; 0C A8 AA
	plb		; AB
	tax		; AA
	tay		; A8
	tax		; AA
	rol $DF.b,X		; 36 DF
	asl $A8.b		; 06 A8
	tsb $A4A6.w		; 0C A6 A4
	ldx $1E.b		; A6 1E
	cmp $18A306.l,X		; DF 06 A3 18
	ldy $AF.b		; A4 AF
	tsb $18AD.w		; 0C AD 18
	plb		; AB
	tsb $A8AA.w		; 0C AA A8
	ldx $18.b		; A6 18
	lda $AB0C.w		; AD 0C AB
	clc		; 18
	tax		; AA
	tsb $E2AB.w		; 0C AB E2
	cmp $FFF806.l,X		; DF 06 F8 FF
	sed		; F8
	cmp $0C9F24.l,X		; DF 24 9F 0C
	sta $9E9E9F.l,X		; 9F 9F 9E 9E
	stz $9E9E.w,X		; 9E 9E 9E
	sta $A19F9F.l,X		; 9F 9F 9F A1
	lda ($A1.b,X)		; A1 A1
	lda ($A1.b,X)		; A1 A1
	sta $9E9F9F.l,X		; 9F 9F 9F 9E
	stz $9E9E.w,X		; 9E 9E 9E
	stz $9E9E.w,X		; 9E 9E 9E
	stz $9F9F.w,X		; 9E 9F 9F
	sta $DF9F9F.l,X		; 9F 9F 9F DF
	rts		; 60

	inc $DF.b		; E6 DF
	asl $F8.b		; 06 F8
	sbc $24DFF8.l,X		; FF F8 DF 24
	stz $9C0C.w		; 9C 0C 9C
	stz $9A9A.w		; 9C 9A 9A
	txs		; 9A
	txs		; 9A
	txs		; 9A
	stz $9C9C.w		; 9C 9C 9C
	stz $9E9E.w,X		; 9E 9E 9E
	stz $9C9E.w,X		; 9E 9E 9C
	stz $989C.w		; 9C 9C 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	txs		; 9A
	txs		; 9A
	txs		; 9A
	stz $9C9C.w		; 9C 9C 9C
	stz $DF9C.w		; 9C 9C DF
	rts		; 60

	inc $DF.b		; E6 DF
	asl $E1.b		; 06 E1
	cmp ($28.b),Y		; D1 28
	lda $60.b,S		; A3 60
	lda $1E.b,S		; A3 1E
	cmp $3CA306.l,X		; DF 06 A3 3C
	inc $DF.b		; E6 DF
	bit $A3.b		; 24 A3
	rts		; 60

	sbc $60.b,X		; F5 60
	ldy $1E.b		; A4 1E
	cmp $3CA106.l,X		; DF 06 A1 3C
.INDEX 8
	sep #$DF		; E2 DF
	asl $FC.b		; 06 FC
	ora $E106DF.l		; 0F DF 06 E1
	eor $28.b		; 45 28
	lda $A106.w		; AD 06 A1
	asl $06DF.w,X		; 1E DF 06
	sta $DFE63C.l,X		; 9F 3C E6 DF
	asl $FC.b		; 06 FC
	ora $E106DF.l		; 0F DF 06 E1
	cmp ($28.b),Y		; D1 28
	lda $5A.b,S		; A3 5A
	stz $DF1E.w,X		; 9E 1E DF
	asl $9C.b		; 06 9C
	bit $DFE6.w,X		; 3C E6 DF
	asl $DF.b		; 06 DF
	bit $84.b		; 24 84
	clc		; 18
	cmp $1E820C.l,X		; DF 0C 82 1E
	cmp $0C8606.l,X		; DF 06 86 0C
	.db $82, $80, $18		; 82 80 18
	cmp $1E7F0C.l,X		; DF 0C 7F 1E
	cmp $0C8206.l,X		; DF 06 82 0C
	adc $DF187D.l,X		; 7F 7D 18 DF
	tsb $1E82.w		; 0C 82 1E
	cmp $0C8606.l,X		; DF 06 86 0C
	.db $82, $7B, $18		; 82 7B 18
	cmp $12800C.l,X		; DF 0C 80 12
	cmp $0C8006.l,X		; DF 06 80 0C
	sty $80.b		; 84 80
	.db $82, $18, $DF		; 82 18 DF
	tsb $3678.w		; 0C 78 36
	cmp $DFE606.l,X		; DF 06 E6 DF
	asl $DF.b		; 06 DF
	tsb $18D6.w		; 0C D6 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	cmp ($04.b,S),Y		; D3 04
	cmp ($D3.b,S),Y		; D3 D3
	cmp ($18.b),Y		; D1 18
	sbc #$00.b		; E9 00
	tsb $42.b		; 04 42
	and #$D0.b		; 29 D0
	cmp ($0C.b),Y		; D1 0C
	bne -33.b		; D0 DF
	bmi -26.b		; 30 E6
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	bra  52.b		; 80 34
	brk $8E.b		; 00 8E
	ldx $9294.w		; AE 94 92
	ora $8E00.w		; 0D 00 8E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A6.b		; 00 A6
	bit $E40F.w		; 2C 0F E4
	and $211C.w		; 2D 1C 21
	tsb $0E.b		; 04 0E
	ldx #$F1.b		; A2 F1
	ora ($4F.b,X)		; 01 4F
	brk $C1.b		; 00 C1
	sbc $9642ED.l		; EF ED 42 96
	beq  74.b		; F0 4A
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	ora ($23.b,X)		; 01 23
	ldx $FC.b,Y		; B6 FC
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	ora ($F0.b),Y		; 11 F0
	ora ($20.b,X)		; 01 20
	beq -74.b		; F0 B6
	brk $FC.b		; 00 FC
.ACCU 16
	rep #$21		; C2 21
	bpl   4.b		; 10 04
	and $10BAEF.l,X		; 3F EF BA 10
	beq -89.b		; F0 A7
	jsr $F0FF.w		; 20 FF F0
	ora ($1D.b),Y		; 11 1D
	tax		; AA
	sbc ($FD.b),Y		; F1 FD
	and $F0.b,X		; 35 F0
	sbc $9B2710.l		; EF 10 27 9B
	lda ($21.b)		; B2 21
	brk $FE.b		; 00 FE
	jmp.w [$05CC]		; DC CC 05
	adc ($AA.b,X)		; 61 AA
	tsx		; BA
	lsr $01D0.w		; 4E D0 01
	bpl -15.b		; 10 F1
	sbc $C24E11.l,X		; FF 11 4E C2
	and ($10.b)		; 32 10
	jsr ($42D2.w,X)		; FC D2 42
	bpl   0.b		; 10 00
	brk $B6.b		; 00 B6
	sbc $5F23CD.l,X		; FF CD 23 5F
	lda ($65.b,X)		; A1 65
	cpx $C6D4.w		; EC D4 C6
	ora ($00.b,X)		; 01 00
	phx		; DA
	ora ($11.b)		; 12 11
	brk $01.b		; 00 01
	rti		; 40

	lda ($32.b)		; B2 32
	asl $44BE.w,X		; 1E BE 44
	and $22F100.l		; 2F 00 F1 22
	ldx $F0.b,Y		; B6 F0
	inc $F030.w,X		; FE 30 F0
	xce		; FB
	cop $21.b		; 02 21
	brk $BA.b		; 00 BA
	brk $F2.b		; 00 F2
	sbc $5A0110.l,X		; FF 10 01 5A
	cmp ($FD.b,S),Y		; D3 FD
	ldx #$64D6.w		; A2 D6 64
	and $2211E2.l		; 2F E2 11 22
	bpl   0.b		; 10 00
	ldx $0F.b,Y		; B6 0F
	bpl -36.b		; 10 DC
	and ($20.b,X)		; 21 20
	ora $B61200.l,X		; 1F 00 12 B6
	bne  60.b		; D0 3C
	cop $51.b		; 02 51
	sbc $0F12EF.l		; EF EF 12 0F
	ldx $CC.b		; A6 CC
	ora ($31.b)		; 12 31
	ora ($EF.b,X)		; 01 EF
	and $DF.b,S		; 23 DF
	and ($CA.b,X)		; 21 CA
	sbc $0F2F3F.l		; EF 3F 2F 0F
	ora ($1F.b,X)		; 01 1F
	cpx $DC.b		; E4 DC
	lda ($DF.b)		; B2 DF
	eor ($11.b,S),Y		; 53 11
	brk $01.b		; 00 01
	bpl  36.b		; 10 24
	ora ($B2.b),Y		; 11 B2
	ora $10FFEF.l,X		; 1F EF FF 10
	sbc $BC2C12.l,X		; FF 12 2C BC
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora $14FFFF.l		; 0F FF FF 14
	and $B624DD.l,X		; 3F DD 24 B6
	sbc $01EF.w		; ED EF 01
	bpl  14.b		; 10 0E
	sbc $E2.b		; E5 E2
	lsr $F3BA.w,X		; 5E BA F3
	asl $2A05.w		; 0E 05 2A
	sbc $F025.w,X		; FD 25 F0
	sbc $01FFB6.l,X		; FF B6 FF 01
	lsr $B9.b		; 46 B9
	ora $61.b		; 05 61
	cpy #$B6FF.w		; C0 FF B6
	bpl  12.b		; 10 0C
	cpx #$C222.w		; E0 22 C2
	lsr $EE33.w,X		; 5E 33 EE
	tsx		; BA
	ora $C53A03.l,X		; 1F 03 3A C5
	and ($D1.b,X)		; 21 D1
	ora $25B2E1.l,X		; 1F E1 B2 25
	bvc -66.b		; 50 BE
	.db $42, $F0		; 42 F0
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	sbc $3EC63D.l,X		; FF 3D C6 3E
	bit $DF.b,X		; 34 DF
	xba		; EB
	and $BA.b		; 25 BA
	cmp $61C2.w		; CD C2 61
	bne   0.b		; D0 00
	beq  37.b		; F0 25
	txy		; 9B
	ldx $B2.b,Y		; B6 B2
	bmi   0.b		; 30 00
	brk $FF.b		; 00 FF
	bpl -12.b		; 10 F4
	xba		; EB
	ldx $24.b,Y		; B6 24
	ora $DFEE43.l		; 0F 43 EE DF
	jsl $B6CCFF.l		; 22 FF CC B6
	jsl $F01010.l		; 22 10 10 F0
	ora $2A.b,X		; 15 2A
	lda ($13.b),Y		; B1 13
	ldx #$1032.w		; A2 32 10
	ora $2FF50D.l		; 0F 0D F5 2F
	cpx #$B61F.w		; E0 1F B6
	lsr $ED.b		; 46 ED
	bne  17.b		; D0 11
	ora $1023AB.l		; 0F AB 23 10
	ldx $20.b,Y		; B6 20
	beq  21.b		; F0 15
	bit $13A0.w		; 2C A0 13
	ora $0FB600.l,X		; 1F 00 B6 0F
	ora $F01E12.l		; 0F 12 1E F0
	brk $34.b		; 00 34
	inc $EFB6.w,X		; FE B6 EF
	ora ($0F.b),Y		; 11 0F
	nop		; EA
	jsl $F02FE3.l		; 22 E3 2F F0
	tsx		; BA
	ora ($2B.b),Y		; 11 2B
	lda $21.b,X		; B5 21
	ora $0F10.w		; 0D 10 0F
	bpl -58.b		; 10 C6
	bpl  46.b		; 10 2E
	ora $0E2300.l		; 0F 00 23 0E
	sbc $F0CA11.l,X		; FF 11 CA F0
	cpx #$1401.w		; E0 01 14
	cmp $2F00F2.l		; CF F2 00 2F
	lda ($EB.b)		; B2 EB
	dec $1121.w,X		; DE 21 11
	ora $5001FF.l		; 0F FF 01 50
	ldx $1E.b,Y		; B6 1E
	beq  70.b		; F0 46
	tsb $02EF.w		; 0C EF 02
	asl $C6E1.w,X		; 1E E1 C6
	cmp $0F42.w		; CD 42 0F
	bpl   0.b		; 10 00
	and ($BE.b)		; 32 BE
	bpl -74.b		; 10 B6
	and ($0F.b)		; 32 0F
	sbc $4D1100.l,X		; FF 00 11 4D
	sbc $45B6F0.l		; EF F0 B6 45
	inc $02EF.w,X		; FE EF 02
	sbc $629D10.l,X		; FF 10 9D 62
	lda ($FF.b)		; B2 FF
	ora $0E25FF.l		; 0F FF 25 0E
	sbc $11F2.w,X		; FD F2 11
	ldx $F0.b,Y		; B6 F0
	beq  17.b		; F0 11
	and $431FDE.l,X		; 3F DE 1F 43
	asl $EFB6.w,X		; 1E B6 EF
	ora ($F0.b,X)		; 01 F0
	rol $31BF.w		; 2E BF 31
	sbc ($2F.b),Y		; F1 2F
	lda ($FF.b)		; B2 FF
	trb $0F.b		; 14 0F
	sbc $21F3.w,X		; FD F3 21
	bpl  15.b		; 10 0F
	ldx $11.b,Y		; B6 11
	bmi -50.b		; 30 CE
	ora ($22.b,X)		; 01 22
	and $B601EE.l,X		; 3F EE 01 B6
	sbc ($1C.b),Y		; F1 1C
	cpx #$E300.w		; E0 00 E3
	and $B221E0.l,X		; 3F E0 21 B2
	jsr $D3FC.w		; 20 FC D3
	and ($21.b)		; 32 21
	ora $B65501.l		; 0F 01 55 B6
	cpy $0203.w		; CC 03 02
	adc $0101DD.l		; 6F DD 01 01
	jsr ($F0B6.w,X)		; FC B6 F0
	cmp $E04DE7.l,X		; DF E7 4D E0
	ora ($2E.b,S),Y		; 13 2E
	cmp $30E3C6.l		; CF C6 E3 30
	beq  -1.b		; F0 FF
	ora ($32.b,X)		; 01 32
	cpy $C612.w		; CC 12 C6
	brk $50.b		; 00 50
	cmp $FD0100.l,X		; DF 00 01 FD
	jsr $C6CF.w		; 20 CF C6
	sbc $2E.b,X		; F5 2E
	beq  17.b		; F0 11
	bpl -32.b		; 10 E0
	bne  96.b		; D0 60
	dec $F1.b		; C6 F1
	sbc $BD3201.l		; EF 01 32 BD
	jsr $5011.w		; 20 11 50
	dec $DF.b		; C6 DF
	beq  16.b		; F0 10
	sbc $24CD10.l,X		; FF 10 CD 24
	ora $F0FEC2.l,X		; 1F C2 FE F0
	ora ($0F.b),Y		; 11 0F
	jmp.w [$2213]		; DC 13 22
	ora $2210C6.l,X		; 1F C6 10 22
	cmp $400110.l		; CF 10 01 40
	sbc $00C6F1.l		; EF F1 C6 00
	asl $CD11.w		; 0E 11 CD
	and $1F.b,S		; 23 1F
	beq   1.b		; F0 01
	lda ($11.b)		; B2 11
	ora $53E5D9.l		; 0F D9 E5 53
	jsr $3400.w		; 20 00 34
	ldx $CF.b,Y		; B6 CF
	bpl -14.b		; 10 F2
	eor ($DE.b)		; 52 DE
	beq   0.b		; F0 00
	brk $C6.b		; 00 C6
	brk $EB.b		; 00 EB
	and $2F.b,S		; 23 2F
	beq   1.b		; F0 01
	brk $00.b		; 00 00
	tsx		; BA
	cmp $20BB65.l,X		; DF 65 BB 20
	cop $00.b		; 02 00
	cpx #$BA10.w		; E0 10 BA
	ora ($4D.b,X)		; 01 4D
	cmp ($10.b,X)		; C1 10
	bpl  15.b		; 10 0F
	bpl -38.b		; 10 DA
	ldx $16.b,Y		; B6 16
	eor $0111EF.l		; 4F EF 11 01
	ora $B617EC.l		; 0F EC 17 B6
	rol $01FE.w,X		; 3E FE 01
	ora ($0E.b,X)		; 01 0E
	ora ($E2.b,X)		; 01 E2
	.db $42, $C6		; 42 C6
	sbc $000000.l,X		; FF 00 00 00
	brk $FC.b		; 00 FC
	pea $B610.w		; F4 10 B6
	cpx #$1100.w		; E0 00 11
	brk $EB.b		; 00 EB
	ora $6F.b,X		; 15 6F
	inc $12BA.w		; EE BA 12
	sbc ($EE.b)		; F2 EE
	and ($D3.b,X)		; 21 D3
	eor $10D0.w		; 4D D0 10
	ldx $00.b,Y		; B6 00
	brk $00.b		; 00 00
	xce		; FB
	cmp $20.b,X		; D5 20
	beq   0.b		; F0 00
	lda ($00.b)		; B2 00
	ora ($FC.b),Y		; 11 FC
	cmp $002145.l		; CF 45 21 00
	ora ($BA.b),Y		; 11 BA
	brk $00.b		; 00 00
	sbc ($4D.b),Y		; F1 4D
	sbc ($00.b,X)		; E1 00
	ora ($F1.b,X)		; 01 F1
	ldx $00.b		; A6 00
	phx		; DA
	ldx $4F.b,Y		; B6 4F
	ora $111100.l		; 0F 00 11 11
	ldx $E9.b		; A6 E9
	cpx $75.b		; E4 75
	sbc $11FF.w		; ED FF 11
	brk $0F.b		; 00 0F
	ldx $F1.b		; A6 F1
	bvs -16.b		; 70 F0
	sbc $0001F0.l,X		; FF F0 01 00
	dex		; CA
	tax		; AA
	eor $2C.b,S		; 43 2C
	brk $F0.b		; 00 F0
	and $56CB2F.l		; 2F 2F CB 56
	lda ($04.b)		; B2 04
	.db $42, $11		; 42 11
	ora ($11.b),Y		; 11 11
	bpl   1.b		; 10 01
	and ($A6.b)		; 32 A6
	ora ($FF.b,X)		; 01 FF
	ora $DA0F01.l		; 0F 01 0F DA
	and $00B611.l		; 2F 11 B6 00
	beq  17.b		; F0 11
	ora ($FC.b,X)		; 01 FC
	sbc ($24.b),Y		; F1 24
	rol $E0A6.w		; 2E A6 E0
	brk $10.b		; 00 10
	ora $F15DF3.l		; 0F F3 5D F1
	beq -90.b		; F0 A6
	ora $D90F01.l		; 0F 01 0F D9
	rti		; 40

.INDEX 16
	rep #$10		; C2 10
	beq -74.b		; F0 B6
	ora ($11.b,X)		; 01 11
	sbc $23D1.w,X		; FD D1 23
	eor $A600FF.l		; 4F FF 00 A6
	ora ($0F.b,X)		; 01 0F
	sbc ($6F.b,S),Y		; F3 6F
	cmp $F1FF21.l		; CF 21 FF F1
	ldx $00.b,Y		; B6 00
	sbc $C021.w		; ED 21 C0
	ora ($0F.b),Y		; 11 0F
	ora ($11.b,X)		; 01 11
	tsx		; BA
	sbc $1FF5.w,X		; FD F5 1F
	and $01D1.w,X		; 3D D1 01
	bpl  -1.b		; 10 FF
	ldx $01.b,Y		; B6 01
	bmi -18.b		; 30 EE
	and ($F0.b,X)		; 21 F0
	sbc ($00.b),Y		; F1 00
	sbc $31B6.w		; ED B6 31
	dec $1000.w,X		; DE 00 10
	brk $21.b		; 00 21
	sbc $31B6CF.l,X		; FF CF B6 31
	bit $EF.b,X		; 34 EF
	beq  16.b		; F0 10
	ora $A23101.l		; 0F 01 31 A2
	eor $115326.l,X		; 5F 26 53 11
	jsl $ECEF0D.l		; 22 0D EF EC
	ldx $C1.b,Y		; B6 C1
	bpl   1.b		; 10 01
	ora ($0F.b),Y		; 11 0F
	cmp $B61421.l		; CF 21 14 B6
	and $F001E0.l		; 2F E0 01 F0
	sbc ($23.b),Y		; F1 23
	cpx $BA22.w		; EC 22 BA
	sbc $0F0F02.l		; EF 02 0F 0F
	bpl  30.b		; 10 1E
.ACCU 8
	sep #$2F		; E2 2F
	ldx $01.b,Y		; B6 01
	ora ($0F.b),Y		; 11 0F
	dec $0221.w,X		; DE 21 02
	adc $01B6EF.l		; 6F EF B6 01
	ora $FC2300.l		; 0F 00 23 FC
	ora $0F.b,S		; 03 0F
	beq -90.b		; F0 A6
	jsr $E0FE.w		; 20 FE E0
	bpl -86.b		; 10 AA
	jsl $BA1211.l		; 22 11 12 BA
	beq -17.b		; F0 EF
	rti		; 40

	beq  77.b		; F0 4D
	cmp ($10.b),Y		; D1 10
	brk $A6.b		; 00 A6
	sbc ($27.b),Y		; F1 27
	ora #$D6.b		; 09 D6
	ora $0F01EF.l		; 0F EF 01 0F
	ldx $F0.b,Y		; B6 F0
	sbc ($FC.b),Y		; F1 FC
	ora ($10.b,X)		; 01 10
	ora ($10.b,X)		; 01 10
	sbc $11B6.w		; ED B6 11
	ora ($34.b,X)		; 01 34
	sbc $0F0000.l		; EF 00 00 0F
	trb $A6.b		; 14 A6
	ora $2EC5.w,Y		; 19 C5 2E
	sbc $ED2EE2.l,X		; FF E2 2E ED
	pea $0DB6.w		; F4 B6 0D
	cmp ($10.b),Y		; D1 10
	ora ($00.b),Y		; 11 00
	inc $11F0.w,X		; FE F0 11
	tsx		; BA
	tsb $BF.b		; 04 BF
	bpl   1.b		; 10 01
	sbc ($02.b),Y		; F1 02
	phd		; 0B
	trb $A6.b		; 14 A6
	ora $5ED2FF.l		; 0F FF D2 5E
	sbc $2CE4.w		; ED E4 2C
	tyx		; BB
	ldx $12.b		; A6 12
	ora ($20.b)		; 12 20
	sbc $2723DB.l,X		; FF DB 23 27
	adc $EEA6.w		; 6D A6 EE
	ora ($F0.b,X)		; 01 F0
	ora ($6E.b,S),Y		; 13 6E
	cmp $B6F000.l,X		; DF 00 F0 B6
	cpx #$FE30.w		; E0 30 FE
	sbc ($1F.b)		; F2 1F
	jsr ($11F1.w,X)		; FC F1 11
	ldx $10.b,Y		; B6 10
	beq -18.b		; F0 EE
	cop $12.b		; 02 12
	bvc -17.b		; 50 EF
	brk $B6.b		; 00 B6
	brk $00.b		; 00 00
	and ($EF.b),Y		; 31 EF
	brk $00.b		; 00 00
	sbc $DBA641.l		; EF 41 A6 DB
	cpx $2E.b		; E4 2E
	xce		; FB
	sta ($32.b)		; 92 32
	bpl   0.b		; 10 00
	tax		; AA
	dec $0051.w,X		; DE 51 00
	ply		; 7A
	ldx #$F211.w		; A2 11 F2
	beq -90.b		; F0 A6
	mvn $E2,$CE		; 54 CE E2
	brk $DC.b		; 00 DC
	adc ($EC.b)		; 72 EC
	cpx $AA.b		; E4 AA
	cmp $9610.w,X		; DD 10 96
	lsr $FFF0.w,X		; 5E F0 FF
	jsr ($A653.w,X)		; FC 53 A6
	ora ($76.b),Y		; 11 76
	dec $10FF.w,X		; DE FF 10
	ora $A6EE35.l		; 0F 35 EE A6
	cpx #$EC2F.w		; E0 2F EC
	eor $ED.b		; 45 ED
.INDEX 8
	sep #$1F		; E2 1F
	sbc $3FD2BA.l,X		; FF BA D2 3F
	ora $11FF00.l		; 0F 00 FF 11
	brk $21.b		; 00 21
	ldx $FE.b		; A6 FE
	sbc $250000.l,X		; FF 00 00 25
	inc $20D0.w,X		; FE D0 20
	ldx $FB.b		; A6 FB
	ora [$FD.b],Y		; 17 FD
	sbc ($00.b),Y		; F1 00
	sbc $AA429D.l,X		; FF 9D 42 AA
	sbc ($F0.b,X)		; E1 F0
	sbc $1531E1.l,X		; FF E1 31 15
	sta $A602.w,X		; 9D 02 A6
	brk $00.b		; 00 00
	trb $1E.b		; 14 1E
	inc $EC31.w		; EE 31 EC
	sbc [$A6.b],Y		; F7 A6
	ora $00FF.w,X		; 1D FF 00
	asl $32AD.w		; 0E AD 32
	cop $10.b		; 02 10
	tsx		; BA
	ora $13200F.l		; 0F 0F 20 13
	cpx $2E10.w		; EC 10 2E
	ora ($A6.b),Y		; 11 A6
	sbc $2E.b,X		; F5 2E
	sbc $FD31.w		; ED 31 FD
	dec $3F.b		; C6 3F
	inc $21AA.w		; EE AA 21
	sbc $42E1.w,X		; FD E1 42
	cmp ($E0.b)		; D2 E0
	beq  -5.b		; F0 FB
	ldx $01.b,Y		; B6 01
	trb $4E.b		; 14 4E
	beq  15.b		; F0 0F
	ora ($F3.b,X)		; 01 F3
	rol $41A2.w		; 2E A2 41
	and $31.b,X		; 35 31
	cpy #$64.b		; C0 64
	asl $0DF1.w,X		; 1E F1 0D
	tax		; AA
	sbc ($04.b),Y		; F1 04
	asl $0E1F.w		; 0E 1F 0E
	tsb $0325.w		; 0C 25 03
	ldx $5F.b,Y		; B6 5F
	beq -16.b		; F0 F0
	brk $02.b		; 00 02
	rol $02FE.w,X		; 3E FE 02
	ldx $F0.b,Y		; B6 F0
	bne  65.b		; D0 41
	sbc $EF0F00.l		; EF 00 0F EF
	sbc ($BA.b,X)		; E1 BA
	sbc ($F0.b),Y		; F1 F0
	ora $10030E.l		; 0F 0E 03 10
	bit $A6E0.w,X		; 3C E0 A6
	ora $6D1300.l		; 0F 00 13 6D
	dec $1FF2.w,X		; DE F2 1F
	cpy $41B6.w		; CC B6 41
	inc $0F01.w,X		; FE 01 0F
	bne  -1.b		; D0 FF
	ora ($01.b),Y		; 11 01
	ldx $00.b,Y		; B6 00
	sbc $21E1.w,X		; FD E1 21
	eor ($EF.b,S),Y		; 53 EF
	brk $00.b		; 00 00
	ldx $F4.b		; A6 F4
	adc $D1DF.w		; 6D DF D1
	and $ED55DB.l,X		; 3F DB 55 ED
	ldx $01.b		; A6 01
	sbc $20EDCF.l,X		; FF CF ED 20
	ora ($10.b)		; 12 10
	xce		; FB
	ldx $E0.b,Y		; B6 E0
	and ($35.b,X)		; 21 35
	sbc $0100F0.l,X		; FF F0 00 01
	and $1154A2.l,X		; 3F A2 54 11
	and ($1B.b,S),Y		; 33 1B
	pei ($31.b)		; D4 31
	brk $0F.b		; 00 0F
	ldx $C0.b		; A6 C0
	asl A		; 0A
	ora ($12.b),Y		; 11 12
	bpl  -4.b		; 10 FC
	lda ($32.b),Y		; B1 32
	tsx		; BA
	ora ($BF.b,S),Y		; 13 BF
	ora ($10.b,X)		; 01 10
	sbc ($2C.b)		; F2 2C
	brk $1F.b		; 00 1F
	ldx $11.b,Y		; B6 11
	inc $1FF3.w,X		; FE F3 1F
	beq   0.b		; F0 00
	cpx #$0D.b		; E0 0D
	tax		; AA
	adc ($F1.b,X)		; 61 F1
	sbc $10D6EF.l,X		; FF EF D6 10
	asl $AA.b,X		; 16 AA
	ldx $EF.b		; A6 EF
	ora ($01.b,X)		; 01 01
	adc $31EEDF.l		; 6F DF EE 31
	jsr ($C6A6.w,X)		; FC A6 C6
	eor $0FF0.w		; 4D F0 0F
	cmp $11E239.l,X		; DF 39 E2 11
	ldx $10.b,Y		; B6 10
	asl $02E0.w		; 0E E0 02
	trb $3E.b		; 14 3E
	beq   0.b		; F0 00
	ldx $01.b		; A6 01
	rts		; 60

	dec $12FE.w,X		; DE FE 12
	ora $5FB3.w		; 0D B3 5F
	ldx $E1.b		; A6 E1
	asl $3BDF.w		; 0E DF 3B
	lda ($21.b)		; B2 21
	bpl  30.b		; 10 1E
	ldx $D0.b,Y		; B6 D0
	cop $12.b		; 02 12
	eor $00F1E0.l,X		; 5F E0 F1 00
	and ($A2.b),Y		; 31 A2
	stz $31.b		; 64 31
	trb $31.b		; 14 31
	cpy $1122.w		; CC 22 11
	bpl -74.b		; 10 B6
	sbc $01D02F.l		; EF 2F D0 01
	bpl  31.b		; 10 1F
	cpy #$11.b		; C0 11
	tsx		; BA
	brk $4C.b		; 00 4C
	cmp ($00.b)		; D2 00
	bpl  47.b		; 10 2F
	cmp ($1F.b),Y		; D1 1F
	ldx #$12.b		; A2 12
	and ($DB.b)		; 32 DB
	ora ($11.b,S),Y		; 13 11
	bpl -37.b		; 10 DB
	sbc $2FC3BA.l,X		; FF BA C3 2F
	brk $0E.b		; 00 0E
	sbc ($00.b)		; F2 00
	and $CEA63E.l		; 2F 3E A6 CE
	beq   1.b		; F0 01
	eor ($CE.b,S),Y		; 53 CE
	sbc $B620F1.l,X		; FF F1 20 B6
	sbc $F032.w		; ED 32 F0
	brk $EE.b		; 00 EE
	and ($DE.b,X)		; 21 DE
	ora ($B6.b,X)		; 01 B6
	ora ($1F.b,X)		; 01 1F
	bne   1.b		; D0 01
	ora ($34.b),Y		; 11 34
	sbc $10A6F0.l		; EF F0 A6 10
	eor ($DD.b,S),Y		; 53 DD
	ora $DB30F0.l		; 0F F0 30 DB
	ora $A6.b,X		; 15 A6
	sbc ($1E.b),Y		; F1 1E
	cmp $CA32.w,X		; DD 32 CA
	ora ($12.b),Y		; 11 12
	ora $10DFB6.l,X		; 1F B6 DF 10
	ora ($25.b),Y		; 11 25
	inc $0000.w,X		; FE 00 00
	jsl $E0EDA6.l		; 22 A6 ED E0
	cpx #$40.b		; E0 40
	xba		; EB
	sbc $02.b,X		; F5 02
	ora $00AA.w,X		; 1D AA 00
	eor ($AB.b),Y		; 51 AB
	adc ($F2.b),Y		; 71 F2
	sbc $5DE0.w,X		; FD E0 5D
	tsx		; BA
	bpl   4.b		; 10 04
	jmp.w [$0012]		; DC 12 00
	ora ($CF.b)		; 12 CF
	ora ($A6.b),Y		; 11 A6
	brk $21.b		; 00 21
	sbc $21B6.w		; ED B6 21
	ora $AA24DC.l		; 0F DC 24 AA
	plb		; AB
	mvp $FF,$F1		; 44 F1 FF
	cpy #$5E.b		; C0 5E
	ora ($F5.b),Y		; 11 F5
	ldx $6C.b		; A6 6C
	cmp $EE3511.l,X		; DF 11 35 EE
	inc $120F.w		; EE 0F 12
	ldx $0D.b		; A6 0D
	lda $41.b,S		; A3 41
	ora $0A24DC.l,X		; 1F DC 24 0A
	lda ($B6.b),Y		; B1 B6
	ora ($01.b,X)		; 01 01
	sbc $120110.l		; EF 10 01 12
	eor $11A6EF.l		; 4F EF A6 11
	rol $FD.b		; 26 FD
	inc $031F.w		; EE 1F 03
	ora $A6B0.w		; 0D B0 A6
	eor ($1F.b)		; 52 1F
	jmp.w [$0C05]		; DC 05 0C
	ldy #$01.b		; A0 01
	and ($BA.b,X)		; 21 BA
	cpx #$11.b		; E0 11
	sbc ($00.b),Y		; F1 00
	phk		; 4B
	sbc ($20.b,X)		; E1 20
	ora $A6.b,S		; 03 A6
	sbc $00EE.w,X		; FD EE 00
	sbc ($0F.b,S),Y		; F3 0F
	cmp $2F52.w		; CD 52 2F
	tax		; AA
	sbc $BD46.w,X		; FD 46 BD
	cmp $2F.b		; C5 2F
	and $B64FCF.l		; 2F CF 4F B6
	ora ($01.b,X)		; 01 01
	eor $DF.b,S		; 43 DF
	ora ($04.b,X)		; 01 04
	asl $A6FF.w		; 0E FF A6
	ora $DB1E02.l		; 0F 02 1E DB
	mvp $EC,$2F		; 44 2F EC
	sbc $AA.b		; E5 AA
	dec $40B2.w		; CE B2 40
	brk $ED.b		; 00 ED
	rti		; 40

	beq  47.b		; F0 2F
	ldx $67.b		; A6 67
	cmp $27F1.w		; CD F1 27
	tsb $F0EE.w		; 0C EE F0
	ora ($A6.b,X)		; 01 A6
	and $1025DB.l		; 2F DB 25 10
	sbc $10E4.w		; ED E4 10
	tyx		; BB
	ldx $00.b,Y		; B6 00
	bpl  14.b		; 10 0E
	bpl   0.b		; 10 00
	ora ($24.b),Y		; 11 24
	inc $33AA.w,X		; FE AA 33
	inc $BB.b,X		; F6 BB
	bmi   2.b		; 30 02
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	sbc $55AA.w,X		; FD AA 55
	dec $06D0.w,X		; DE D0 06
	sbc $71EB.w,X		; FD EB 71
	sbc ($AA.b),Y		; F1 AA
	xce		; FB
	bvc -16.b		; 50 F0
	ora ($15.b,X)		; 01 15
	stz $2431.w		; 9C 31 24
	ldx $2D.b		; A6 2D
	inc $F0FF.w,X		; FE FF F0
	jsr $D5FC.w		; 20 FC D5
	rti		; 40

	tax		; AA
	sbc $EAEE07.l		; EF 07 EE EA
	adc $E1.b,S		; 63 E1
	jsr ($A632.w,X)		; FC 32 A6
	bpl   2.b		; 10 02
	and [$4C.b]		; 27 4C
	cpx #$16.b		; E0 16
	and $A6FE.w		; 2D FE A6
	beq  -1.b		; F0 FF
	ora ($FD.b)		; 12 FD
	lda ($60.b,S),Y		; B3 60
	jsr ($AAC4.w,X)		; FC C4 AA
	sbc $36EB.w,X		; FD EB 36
	sbc $F0130D.l		; EF 0D 13 F0
.ACCU 8
	sep #$AA		; E2 AA
	asl $D9.b		; 06 D9
	ora ($23.b),Y		; 11 23
	sbc $E120.w,X		; FD 20 E1
	sbc ($A6.b),Y		; F1 A6
	ora ($FD.b)		; 12 FD
	cmp ($4F.b,S),Y		; D3 4F
	inc $20E1.w,X		; FE E1 20
	jmp.w [$C2A6]		; DC A6 C2
	bpl  30.b		; 10 1E
	ora $250200.l		; 0F 00 02 25
	ror $DFA6.w,X		; 7E A6 DF
	tsb $3E.b		; 04 3E
	brk $FF.b		; 00 FF
	inc $0E02.w,X		; FE 02 0E
	ldx $DF.b		; A6 DF
	adc ($FD.b,X)		; 61 FD
	cmp ($3F.b)		; D2 3F
	cpx $10B1.w		; EC B1 10
	tax		; AA
	trb $F121.w		; 1C 21 F1
	beq  17.b		; F0 11
	tad		; 5B
	lda $14.b,S		; A3 14
	ldx $5E.b		; A6 5E
	cpx #$F0.b		; E0 F0
	sbc $DC0FF2.l		; EF F2 0F DC
	stz $AA.b		; 64 AA
	lda $E01DE6.l,X		; BF E6 1D E0
	cpy $3E.b		; C4 3E
	trb $A614.w		; 1C 14 A6
	cop $F1.b		; 02 F1
	and ($66.b,X)		; 21 66
	dec $6FF3.w		; CE F3 6F
	cmp $FF0FA6.l,X		; DF A6 0F FF
	sbc ($1F.b),Y		; F1 1F
	xba		; EB
	lsr $FD.b		; 46 FD
	lda ($AA.b)		; B2 AA
	tsa		; 3B
	cpx #$D0.b		; E0 D0
	adc $E0050C.l		; 6F 0C 05 E0
	beq -74.b		; F0 B6
	bpl  36.b		; 10 24
	sbc $EF3FF2.l,X		; FF F2 3F EF
	brk $0F.b		; 00 0F
	ldx #$00.b		; A2 00
	and ($0C.b,X)		; 21 0C
	cmp ($41.b,S),Y		; D3 41
	cmp $0E21.w		; CD 21 0E
	tax		; AA
	inc $FC61.w		; EE 61 FC
	inc $FF.b,X		; F6 FF
	beq   0.b		; F0 00
	ora [$A6.b],Y		; 17 A6
	ora $6FF2.w,X		; 1D F2 6F
	cmp $FFFFF0.l,X		; DF F0 FF FF
	jsr $FFB6.w		; 20 B6 FF
	sbc ($1F.b,S),Y		; F3 1F
	cpx #$20.b		; E0 20
	ora $A6F1ED.l		; 0F ED F1 A6
	and $31D3.w		; 2D D3 31
	ora $5C0712.l,X		; 1F 12 07 5C
	sbc ($A6.b,X)		; E1 A6
	adc ($DE.b,X)		; 61 DE
	beq -16.b		; F0 F0
	cpx #$10.b		; E0 10
	inc $AAB7.w,X		; FE B7 AA
	cpy $7AC4.w		; CC C4 7A
	beq  -5.b		; F0 FB
	rol $ED.b,X		; 36 ED
	sbc $B6.b		; E5 B6
	jsr $0110.w		; 20 10 01
	cop $4F.b		; 02 4F
	sbc ($30.b,X)		; E1 30
	sbc $0FFFA6.l,X		; FF A6 FF 0F
	sbc $C4FE11.l,X		; FF 11 FE C4
	lsr $A6CE.w,X		; 5E CE A6
	eor ($FF.b),Y		; 51 FF
	nop		; EA
.INDEX 16
	rep #$1E		; C2 1E
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	bpl -70.b		; 10 BA
	ora ($F1.b,X)		; 01 F1
	bit $3FF1.w,X		; 3C F1 3F
	cpx #$0001.w		; E0 01 00
	ldx #$F110.w		; A2 10 F1
	ora $FC33CD.l,X		; 1F CD 33 FC
	ora ($10.b)		; 12 10
	ldx $FB.b		; A6 FB
	lda ($2E.b,X)		; A1 2E
	cmp ($42.b,X)		; C1 42
	bpl  17.b		; 10 11
	ora ($BA.b,X)		; 01 BA
	rol $3ED2.w,X		; 3E D2 3E
	sbc ($00.b,X)		; E1 00
	ora ($F1.b,X)		; 01 F1
	sbc ($A6.b),Y		; F1 A6
	rol $62DF.w		; 2E DF 62
	cmp $FE42.w		; CD 42 FE
	sbc $A6AF.w,X		; FD AF A6
	and $1142B1.l		; 2F B1 42 11
	brk $11.b		; 00 11
	ror $CE.b		; 66 CE
	ldx $52.b		; A6 52
	sbc $FFF0E0.l		; EF E0 F0 FF
	sbc ($2E.b,X)		; E1 2E
	inc $43A6.w		; EE A6 43
	cpx $FF33.w		; EC 33 FF
	sbc $C020AC.l		; EF AC 20 C0
	ldx $12.b,Y		; B6 12
	ora ($00.b,X)		; 01 00
	bpl  35.b		; 10 23
	asl $F021.w		; 0E 21 F0
	ldx #$3254.w		; A2 54 32
	and ($FF.b,X)		; 21 FF
	bpl -20.b		; 10 EC
	sbc $1D.b,S		; E3 1D
	ldx $33.b		; A6 33
	sbc $11CAEF.l,X		; FF EF CA 11
	cmp $AA1233.l		; CF 33 12 AA
	cpx #$0701.w		; E0 01 07
	plb		; AB
	bvs -78.b		; 70 B2
	sbc ($10.b),Y		; F1 10
	sta ($42.b)		; 92 42
	inc $EB12.w,X		; FE 12 EB
	lda $3A.b		; A5 3A
	asl $41.b		; 06 41
	tax		; AA
	brk $FB.b		; 00 FB
	adc ($B1.b),Y		; 71 B1
	rti		; 40

	sbc $A6F20F.l,X		; FF 0F F2 A6
	asl $4D.b,X		; 16 4D
	and $EF.b,S		; 23 EF
	sbc $FF0F0F.l,X		; FF 0F 0F FF
	tax		; AA
	jsr $04D1.w		; 20 D1 04
	xba		; EB
	adc ($C0.b,X)		; 61 C0
	brk $FB.b		; 00 FB
	ldx $E2.b		; A6 E2
	dec $2132.w,X		; DE 32 21
	bpl   1.b		; 10 01
	trb $6E.b		; 14 6E
	ldx $13.b		; A6 13
	sbc $F000FF.l		; EF FF 00 F0
	sbc $A6FF02.l		; EF 02 FF A6
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	ora ($0F.b,S),Y		; 13 0F
	sbc $EDB2FB.l,X		; FF FB B2 ED
	ldx $32.b		; A6 32
	and ($20.b,X)		; 21 20
	sbc ($22.b),Y		; F1 22
	adc $A6FE03.l,X		; 7F 03 FE A6
	sbc $FE00F0.l,X		; FF F0 00 FE
	cop $F0.b		; 02 F0
	cpx #$4D.b		; E0 4D
	ldx $03.b		; A6 03
	ora $A1FCFF.l		; 0F FF FC A1
	sbc $1232.w,X		; FD 32 12
	tax		; AA
	sbc $5D00F2.l,X		; FF F2 00 5D
	dec $A0.b		; C6 A0
	and $649220.l		; 2F 20 92 64
	and $FA10D0.l		; 2F D0 10 FA
	and $AA42E5.l,X		; 3F E5 42 AA
	brk $0E.b		; 00 0E
	cmp $FE.b,X		; D5 FE
	rti		; 40

	ora $A6F10F.l		; 0F 0F F1 A6
	ora ($55.b),Y		; 11 55
	cpx $FE.b		; E4 FE
	inc $FF01.w,X		; FE 01 FF
	beq -110.b		; F0 92
	cmp $010911.l		; CF 11 09 01
	inc $52.b,X		; F6 52
	asl $AADA.w		; 0E DA AA
.ACCU 16
	rep #$2E		; C2 2E
	eor ($E0.b,X)		; 41 E0
	ora $1411F0.l		; 0F F0 11 14
	ldx $F3.b		; A6 F3
	ora $00FF.w		; 0D FF 00
	ora $10E1FF.l		; 0F FF E1 10
	tax		; AA
	ora $D441.w		; 0D 41 D4
	cmp $DEF001.l,X		; DF 01 F0 DE
	lsr $31AA.w,X		; 5E AA 31
	sbc $11EF01.l,X		; FF 01 EF 11
	trb $B3.b		; 14 B3
	cmp $DE96.w,X		; DD 96 DE
	beq  30.b		; F0 1E
	sbc $2B21C0.l		; EF C0 21 2B
	dec $AA.b		; C6 AA
	cmp ($EE.b,S),Y		; D3 EE
	ora ($F0.b,X)		; 01 F0
	sbc $315E.w		; ED 5E 31
	sbc $0E1FAA.l,X		; FF AA 1F 0E
	ora ($05.b),Y		; 11 05
	inc $02FE.w		; EE FE 02
	ora ($96.b,X)		; 01 96
	asl $EDEF.w,X		; 1E EF ED
	bmi  46.b		; 30 2E
	lda $16.b		; A5 16
	ora $10AA.w,X		; 1D AA 10
	ora $22310B.l		; 0F 0B 31 22
	cpx #$F1.b		; E0 F1
	sbc $16029A.l,X		; FF 9A 02 16
	trb $32DA.w		; 1C DA 32
	cop $1F.b		; 02 1F
.ACCU 8
	sep #$A6		; E2 A6
	inc $1011.w,X		; FE 11 10
	cmp ($22.b,X)		; C1 22
	rol $0FFF.w		; 2E FF 0F
	txs		; 9A
	sbc $4305.w,Y		; F9 05 43
	sbc $0D00.w,X		; FD 00 0D
	cop $05.b		; 02 05
	txs		; 9A
	phy		; 5A
	stp		; DB
	and ($21.b,X)		; 21 21
	brk $F0.b		; 00 F0
	ora $00AA31.l		; 0F 31 AA 00
	rep #$40		; C2 40
	inc $0001.w		; EE 01 00
	inc $AAE1.w,X		; FE E1 AA
	bvc  15.b		; 50 0F
	sbc ($F0.b),Y		; F1 F0
	beq  32.b		; F0 20
	lsr $9AED.w		; 4E ED 9A
	ora ($21.b)		; 12 21
	ora ($E0.b,X)		; 01 E0
	brk $03.b		; 00 03
	ora $51AAAF.l,X		; 1F AF AA 51
	inc $F1F2.w		; EE F2 F1
	cpx #$C1.b		; E0 C1
	eor ($0E.b),Y		; 51 0E
	tax		; AA
	sbc ($1E.b),Y		; F1 1E
	sbc ($10.b),Y		; F1 10
	and ($BD.b)		; 32 BD
	ora ($10.b),Y		; 11 10
	ldx #$22.b		; A2 22
	and ($0F.b,X)		; 21 0F
	sbc $D20C11.l		; EF 11 0C D2
	eor $AA.b,S		; 43 AA
	sbc ($1F.b),Y		; F1 1F
	brk $CF.b		; 00 CF
	eor ($0E.b)		; 52 0E
	brk $00.b		; 00 00
	tax		; AA
	sbc ($10.b,X)		; E1 10
	bit $BC.b		; 24 BC
	ora ($10.b),Y		; 11 10
	ora $0FA21F.l,X		; 1F 1F A2 0F
	inc $0D01.w		; EE 01 0D
	rep #$43		; C2 43
	bpl  15.b		; 10 0F
	tax		; AA
	ora $0F62EC.l,X		; 1F EC 62 0F
	beq  31.b		; F0 1F
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	tax		; AA
	ora $DA.b		; 05 DA
	ora ($2F.b),Y		; 11 2F
	bpl  15.b		; 10 0F
	ora ($E2.b,X)		; 01 E2
	ldx $20.b		; A6 20
	asl $4FE4.w		; 0E E4 4F
	inc $F000.w,X		; FE 00 F0
	phx		; DA
	ldx $E2.b		; A6 E2
	jsl $F01101.l		; 22 01 11 F0
	bpl  38.b		; 10 26
	jmp $E0CE96.l		; 5C 96 CE E0
	brk $0F.b		; 00 0F
	sbc $FC33FD.l		; EF FD 33 FC
	ldx $D4.b		; A6 D4
	rti		; 40

	inc $0F0F.w,X		; FE 0F 0F
	plx		; FA
.ACCU 16
	rep #$22		; C2 22
	ldx $01.b,Y		; B6 01
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	and $A2F0E0.l,X		; 3F E0 F0 A2
	jsl $FE0022.l		; 22 22 00 FE
	sbc ($1F.b),Y		; F1 1F
	dec $A644.w		; CE 44 A6
	sbc $FB0FE0.l,X		; FF E0 0F FB
	lda ($21.b)		; B2 21
	ora ($11.b),Y		; 11 11
	ldx $00.b,Y		; B6 00
	brk $11.b		; 00 11
	rti		; 40

	sbc $000000.l		; EF 00 00 00
	ldx #$00.b		; A2 00
	asl $10E0.w		; 0E E0 10
	cmp $2134.w		; CD 34 21
	ora $FD00A6.l		; 0F A6 00 FD
	sta ($21.b),Y		; 91 21
	and ($01.b,X)		; 21 01
	ora $00BA01.l,X		; 1F 01 BA 00
	jmp $10E1.w		; 4C E1 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx #$E0.b		; A2 E0
	bpl -36.b		; 10 DC
	bit $32.b,X		; 34 32
	brk $FF.b		; 00 FF
	cpx $B7AA.w		; EC AA B7
	ora $E1F11F.l,X		; 1F 1F F1 E1
	sbc ($10.b),Y		; F1 10
	jmp ($CEA6.w)		; 6C A6 CE
	sbc $F00000.l,X		; FF 00 00 F0
	ora $A61FF1.l		; 0F F1 1F A6
	inc $F053.w		; EE 53 F0
	sbc $AE0E0F.l		; EF 0F 0E AE
	and ($A6.b,X)		; 21 A6
	and ($10.b,X)		; 21 10
	bpl   0.b		; 10 00
	ora ($75.b),Y		; 11 75
	cmp $A6F0.w		; CD F0 A6
	brk $00.b		; 00 00
	sbc $10F10F.l,X		; FF 0F F1 10
	sbc $AA45.w		; ED 45 AA
	lda ($F0.b,X)		; A1 F0
	bpl  15.b		; 10 0F
	lda ($40.b,S),Y		; B3 40
	sbc ($E1.b),Y		; F1 E1
	ldx $00.b		; A6 00
	brk $12.b		; 00 12
	lsr $EC.b,X		; 56 EC
	beq -16.b		; F0 F0
	brk $A2.b		; 00 A2
	ora ($0F.b),Y		; 11 0F
	sbc $E4FB10.l		; EF 10 FB E4
	eor $20.b,S		; 43 20
	ldx $0F.b		; A6 0F
	sbc $1112CB.l,X		; FF CB 12 11
	ora ($10.b),Y		; 11 10
	ora $4712A6.l		; 0F A6 12 47
	sbc $00EF.w,X		; FD EF 00
	brk $F0.b		; 00 F0
	sbc $11EFA2.l,X		; FF A2 EF 11
	jsr ($43D3.w,X)		; FC D3 43
	jsr $EE0F.w		; 20 0F EE
	tax		; AA
	dec $F161.w		; CE 61 F1
	sbc ($FF.b,X)		; E1 FF
	ora $A64210.l,X		; 1F 10 42 A6
	trb $F1E0.w		; 1C E0 F1
	beq -16.b		; F0 F0
	beq -32.b		; F0 E0
	jsr $FEAA.w		; 20 AA FE
	and $EC.b,X		; 35 EC
	brk $01.b		; 00 01
	beq -19.b		; F0 ED
	mvp $11,$A6		; 44 A6 11
	and ($10.b,X)		; 21 10
	brk $01.b		; 00 01
	lsr $3D.b		; 46 3D
	cmp $2233A2.l,X		; DF A2 33 22
	and ($1F.b,X)		; 21 1F
	inc $FD01.w		; EE 01 FD
	cpy #$AA.b		; C0 AA
	tas		; 1B
	ora $DFE102.l		; 0F 02 E1 DF
	trb $1E.b		; 14 1E
	ora ($AA.b,X)		; 01 AA
	cpx #$00.b		; E0 00
	sbc ($22.b)		; F2 22
	asl A		; 0A
.ACCU 8
	sep #$20		; E2 20
	brk $AA.b		; 00 AA
	ora ($FF.b,X)		; 01 FF
	bpl  17.b		; 10 11
	sbc $2C33.w		; ED 33 2C
	sbc $FFFFA6.l,X		; FF A6 FF FF
	jmp.w [$22C0]		; DC C0 22
	and ($10.b,X)		; 21 10
	brk $AA.b		; 00 AA
	ora ($23.b,X)		; 01 23
	sbc $10C3.w		; ED C3 10
	ora $AA0E01.l,X		; 1F 01 0E AA
	and $310D2F.l		; 2F 2F 0D 31
	rol $00D0.w,X		; 3E D0 00
	brk $9A.b		; 00 9A
	dec $7DE5.w,X		; DE E5 7D
	brk $EF.b		; 00 EF
	sbc ($F1.b),Y		; F1 F1
	lsr $96.b,X		; 56 96
	lsr $9B.b,X		; 56 9B
	sbc $FEF0FF.l,X		; FF FF F0 FE
	sbc $0DA611.l		; EF 11 A6 0D
	ora ($34.b,X)		; 01 34
	sbc $DCE0FF.l,X		; FF FF E0 DC
	cpx $6FAA.w		; EC AA 6F
	ora $F1000F.l		; 0F 0F 00 F1
	bit $C2.b		; 24 C2
	ldy #$96.b		; A0 96
	sbc $FE0FFF.l		; EF FF 0F FE
	sbc $F31C10.l		; EF 10 1C F3
	ldx $05.b		; A6 05
	asl $E0FF.w,X		; 1E FF E0
	cmp $22EB.w,X		; DD EB 22
	ora ($AA.b)		; 12 AA
	sbc $150000.l,X		; FF 00 00 15
	rep #$CE		; C2 CE
	ora ($00.b)		; 12 00
	ldx $0F.b		; A6 0F
	ora $0E10E0.l		; 0F E0 10 0E
	sbc ($04.b)		; F2 04
	and $0000AA.l		; 2F AA 00 00
	inc $423C.w,X		; FE 3C 42
	beq  14.b		; F0 0E
	ora $1600AA.l,X		; 1F AA 00 16
	lda ($0B.b),Y		; B1 0B
	ora ($01.b)		; 12 01
	sbc ($0F.b),Y		; F1 0F
	stx $CF.b,Y		; 96 CF
	rol $D61D.w,X		; 3E 1D D6
	cmp [$7E.b],Y		; D7 7E
	sbc $AADE.w		; ED DE AA
	inc $243C.w,X		; FE 3C 24
	beq -16.b		; F0 F0
	beq   0.b		; F0 00
	trb $A6.b		; 14 A6
	and ($5D.b),Y		; 31 5D
	cmp $0F0FF0.l,X		; DF F0 0F 0F
	sbc $0FA610.l,X		; FF 10 A6 0F
	sbc $F1.b,S		; E3 F1
	rti		; 40

	sbc $0EFBEF.l,X		; FF EF FB 0E
	ldx $C2.b		; A6 C2
	ora ($11.b)		; 12 11
	bpl  31.b		; 10 1F
	ora $30.b,X		; 15 30
	adc $F0DEA6.l		; 6F A6 DE F0
	brk $F0.b		; 00 F0
	sbc $E3F010.l		; EF 10 F0 E3
	ldx $0E.b		; A6 0E
	adc ($FF.b,X)		; 61 FF
	sbc $A0F0EC.l		; EF EC F0 A0
	and ($A6.b),Y		; 31 A6
	and ($10.b,X)		; 21 10
	bpl   4.b		; 10 04
	eor $FFDE42.l,X		; 5F 42 DE FF
	ldx $00.b		; A6 00
	beq  -2.b		; F0 FE
	ora ($FF.b),Y		; 11 FF
	sbc $1D.b,S		; E3 1D
	eor $A6.b,S		; 43 A6
	sbc $E1FCFE.l,X		; FF FE FC E1
	ldx $2031.w,Y		; BE 31 20
	ora ($A6.b),Y		; 11 A6
	bpl   4.b		; 10 04
	rti		; 40

	and $DD.b		; 25 DD
	sbc $A6F000.l,X		; FF 00 F0 A6
	inc $FF11.w,X		; FE 11 FF
	sbc $1D.b,S		; E3 1D
	bit $FF.b,X		; 34 FF
	inc $FCA6.w,X		; FE A6 FC
	sbc ($CD.b,X)		; E1 CD
	jsl $101111.l		; 22 11 11 10
	ora $A6.b,S		; 03 A6
	eor $E0ED17.l,X		; 5F 17 ED E0
	ora $110DF0.l		; 0F F0 0D 11
	tax		; AA
	cpx #$F4.b		; E0 F4
	phd		; 0B
	and $CD.b,X		; 35 CD
	bpl  -1.b		; 10 FF
	tsb $A6.b		; 04 A6
	xba		; EB
	and ($21.b,X)		; 21 21
	ora ($01.b),Y		; 11 01
	cop $50.b		; 02 50
	asl $A6.b		; 06 A6
	trb $1FEF.w		; 1C EF 1F
	ora $FEF20E.l		; 0F 0E F2 FE
	sbc ($A6.b)		; F2 A6
	and $EF2FE5.l		; 2F E5 2F EF
	sbc $FBD1.w		; ED D1 FB
	cop $A6.b		; 02 A6
	jsr $1111.w		; 20 11 11
	cop $50.b		; 02 50
	sbc $3D.b,X		; F5 3D
	cmp $2243A2.l,X		; DF A2 43 22
	bpl -16.b		; 10 F0
	asl $10CE.w		; 0E CE 10
	cmp ($A6.b),Y		; D1 A6
	eor $D1FCFE.l		; 4F FE FC D1
	phd		; 0B
	sbc $11.b,S		; E3 11
	ora ($A6.b),Y		; 11 A6
	bpl  18.b		; 10 12
	eor ($F3.b,X)		; 41 F3
	adc $F0DF.w		; 6D DF F0
	ora $F010A2.l		; 0F A2 10 F0
	asl $21CE.w		; 0E CE 21
	sbc $A62144.l		; EF 44 21 A6
	jsr ($0DC2.w,X)		; FC C2 0D
.INDEX 16
	rep #$11		; C2 11
	ora ($11.b),Y		; 11 11
	ora ($A6.b),Y		; 11 A6
	bvc -14.b		; 50 F2
	rts		; 60

	cmp $FFF0F0.l		; CF F0 F0 FF
	sbc ($A6.b),Y		; F1 A6
	ora $DF40D1.l		; 0F D1 40 DF
	adc ($EF.b,X)		; 61 EF
	sbc $A6C0.w,X		; FD C0 A6
	asl $11B2.w,X		; 1E B2 11
	ora ($10.b),Y		; 11 10
	ora ($40.b)		; 12 40
	brk $A6.b		; 00 A6
	adc $BE.b,S		; 63 BE
	brk $0F.b		; 00 0F
	sbc $D00FF1.l,X		; FF F1 0F D0
	ldx $50.b		; A6 50
	sbc $FE53.w		; ED 53 FE
	sbc $1FC0.w,X		; FD C0 1F
	bcs -90.b		; B0 A6
	and ($11.b,X)		; 21 11
	ora ($12.b,X)		; 01 12
	eor ($F0.b,X)		; 41 F0
	eor $CE.b		; 45 CE
	ldx #$3244.w		; A2 44 32
	bpl   0.b		; 10 00
	bpl -52.b		; 10 CC
	ora ($0D.b)		; 12 0D
	ldx $34.b		; A6 34
	sbc $00C0FD.l,X		; FF FD C0 00
	cmp $1121.w,X		; DD 21 11
	ldx $01.b		; A6 01
	and ($41.b,X)		; 21 41
	beq  39.b		; F0 27
	sbc $F0F0.w		; ED F0 F0
	ldx #$0011.w		; A2 11 00
	bpl -37.b		; 10 DB
	ora ($FD.b),Y		; 11 FD
	sbc $42.b,S		; E3 42
	ldx $EE.b		; A6 EE
	cmp $22DB11.l		; CF 11 DB 22
	jsr $0111.w		; 20 11 01
	tax		; AA
	eor $15C3.w		; 4D C3 15
	lda $F040.w		; AD 40 F0
	brk $11.b		; 00 11
	ldx $00.b		; A6 00
	cmp $EF50.w,X		; DD 50 EF
	sbc $2E.b,X		; F5 2E
	inc $AACF.w,X		; FE CF AA
	and $E163EB.l		; 2F EB 63 E1
	bne  16.b		; D0 10
	eor $A6C3.w		; 4D C3 A6
	asl $3C.b		; 06 3C
	ora $F1FEF0.l,X		; 1F F0 FE F1
	brk $EC.b		; 00 EC
	tax		; AA
	ror $E7D1.w,X		; 7E D1 E7
	sbc $D4F0.w		; ED F0 D4
	bpl -22.b		; 10 EA
	ldx $D4.b		; A6 D4
	and $10.b,S		; 23 10
	ora ($43.b,X)		; 01 43
	sbc $A66E13.l		; EF 13 6E A6
	inc $0EF0.w,X		; FE F0 0E
	sbc ($00.b),Y		; F1 00
	cpx $1E21.w		; EC 21 1E
	ldx $D3.b		; A6 D3
	eor $11CFFE.l		; 4F FE CF 11
	asl A		; 0A
	ldy $23.b,X		; B4 23
	tax		; AA
	tsb BG3HOFS.w		; 0C 11 21
	ldx #$5A11.w		; A2 11 5A
	asl $A621.w		; 0E 21 A6
	sbc $FB10F0.l,X		; FF F0 10 FB
	ora ($1F.b)		; 12 1F
	lda ($51.b),Y		; B1 51
	ldx $EF.b		; A6 EF
	dec $FC21.w		; CE 21 FC
	ldx #$5032.w		; A2 32 50
	sbc ($A6.b),Y		; F1 A6
	bit $EE.b,X		; 34 EE
	ora ($53.b),Y		; 11 53
	ora $1FEF.w		; 0D EF 1F
	beq -90.b		; F0 A6
	brk $FC.b		; 00 FC
	ora ($20.b,X)		; 01 20
	lda $CEFF52.l		; AF 52 FF CE
	ldx $10.b,Y		; B6 10
	ora $2121C0.l		; 0F C0 21 21
	brk $12.b		; 00 12
	ora $3221AA.l		; 0F AA 21 32
	ldx $3F01.w,Y		; BE 01 3F
.INDEX 8
	sep #$1F		; E2 1F
	ora $E1A6.w		; 0D A6 E1
	and ($BC.b),Y		; 31 BC
	bit $0F.b		; 24 0F
	cmp $0F21.w,X		; DD 21 0F
	tax		; AA
	sta $6D.b,X		; 95 6D
	bmi -80.b		; 30 B0
	and ($B0.b)		; 32 B0
	ora ($24.b),Y		; 11 24
	ldx $1F.b		; A6 1F
	cpy $EF22.w		; CC 22 EF
	ora $20E20D.l,X		; 1F 0D E2 20
	ldx $ED.b		; A6 ED
	cpy $2F.b		; C4 2F
	sbc $0011.w		; ED 11 00
	plb		; AB
	and ($AA.b,S),Y		; 33 AA
	cpx $DE.b		; E4 DE
	ora ($DF.b)		; 12 DF
	bpl  52.b		; 10 34
	cmp $A6EE.w,X		; DD EE A6
	ora ($FE.b,S),Y		; 13 FE
	brk $0D.b		; 00 0D
	sbc ($00.b)		; F2 00
	inc $B693.w,X		; FE 93 B6
	and $1F01FF.l		; 2F FF 01 1F
	cpx $0212.w		; EC 12 02
	and ($AA.b),Y		; 31 AA
	pei ($EF.b)		; D4 EF
	sbc ($F6.b,S),Y		; F3 F6
	inc $73DC.w		; EE DC 73
	cmp $1F3EAA.l		; CF AA 3E 1F
	cop $F1.b		; 02 F1
	cpx #$B5.b		; E0 B5
	tad		; 5B
	sbc $0001B6.l,X		; FF B6 01 00
	jsr ($0102.w,X)		; FC 02 01
	and ($F2.b)		; 32 F2
	ora $14F0A6.l		; 0F A6 F0 14
	eor ($EB.b)		; 52 EB
	sbc $0E.b,S		; E3 0E
	ora $F1A6FF.l		; 0F FF A6 F1
	brk $F0.b		; 00 F0
	cpy $FD41.w		; CC 41 FD
	cop $00.b		; 02 00
	tax		; AA
	plx		; FA
	eor $D2.b		; 45 D2
	jsl $11FD93.l		; 22 93 FD 11
	jsr $64A6.w		; 20 A6 64
	xba		; EB
	cmp ($0E.b,S),Y		; D3 0E
	ora $FF11D0.l,X		; 1F D0 11 FF
	ldx $E2.b		; A6 E2
	xba		; EB
	ora ($FE.b),Y		; 11 FE
	cop $10.b		; 02 10
	jsr ($AAB0.w,X)		; FC B0 AA
	bpl  35.b		; 10 23
	lda ($EE.b),Y		; B1 EE
	cop $10.b		; 02 10
	bvc -68.b		; 50 BC
	ldx $D1.b		; A6 D1
	asl $CF10.w		; 0E 10 CF
	and ($FE.b),Y		; 31 FE
	sbc ($0C.b)		; F2 0C
	tax		; AA
	rol $112F.w,X		; 3E 2F 11
	ora $6F93F0.l		; 0F F0 93 6F
	ora ($AA.b)		; 12 AA
	tas		; 1B
	ora $2F11.w		; 0D 11 2F
	bvc -21.b		; 50 EB
	ora $00.b,S		; 03 00
	ldx $10.b		; A6 10
	lda $F3FD41.l,X		; BF 41 FD F3
	tsb $DF1D.w		; 0C 1D DF
	ldx $01.b,Y		; B6 01
	bpl -16.b		; 10 F0
	cpx $1221.w		; EC 21 12
	.db $42, $0E		; 42 0E
	ldx $0F.b		; A6 0F
	ora ($25.b,X)		; 01 25
	jsr $F0CE.w		; 20 CE F0
	bpl -36.b		; 10 DC
	ldx $43.b		; A6 43
	sbc $1CE3.w,X		; FD E3 1C
	brk $AE.b		; 00 AE
	ora ($10.b)		; 12 10
	ldx $00.b,Y		; B6 00
	sbc $1111.w		; ED 11 11
	and ($0F.b,S),Y		; 33 0F
	beq   1.b		; F0 01
	ldx $13.b		; A6 13
	bmi -34.b		; 30 DE
	cpx #$20.b		; E0 20
	jmp.w [$1C24]		; DC 24 1C
	ldx $F2.b		; A6 F2
	inc $BC01.w,X		; FE 01 BC
	ora ($01.b)		; 12 01
	brk $EA.b		; 00 EA
	tax		; AA
	.db $62, $E1, $32		; 62 E1 32
	lda $1311.w		; AD 11 13
	sbc ($1E.b,X)		; E1 1E
	ldx $EE.b		; A6 EE
	sbc $E5ED11.l,X		; FF 11 ED E5
	rol $E0F0.w		; 2E F0 E0
	plb		; AB
	ora ($BF.b,X)		; 01 BF
	.db $42, $E1		; 42 E1
	inc $120F.w,X		; FE 0F 12
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
	bra  52.b		; 80 34
	brk $8E.b		; 00 8E
	inc $98.b		; E6 98
	sta ($0B.b),Y		; 91 0B
	brk $8E.b		; 00 8E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A6.b		; 00 A6
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	inc $C7EB.w,X		; FE EB C7
	bit $86.b,X		; 34 86
	eor $CFEF.w		; 4D EF CF
	jsl $FEED11.l		; 22 11 ED FE
	ora ($66.b)		; 12 66
	tsb $20.b		; 04 20
	cmp $33BCCC.l		; CF CC BC 33
	and ($35.b),Y		; 31 35
	ror A		; 6A
	jmp $21FD.w		; 4C FD 21
	sbc ($D6.b),Y		; F1 D6
	sbc ($17.b)		; F2 17
	ora ($B6.b)		; 12 B6
	brk $00.b		; 00 00
	sbc $D3E0FF.l,X		; FF FF E0 D3
	.db $42, $0F		; 42 0F
	stx $F6.b		; 86 F6
	bit $E0DD.w		; 2C DD E0
	ora $14FF.w		; 0D FF 14
	bpl 122.b		; 10 7A
	sbc $EE.b,S		; E3 EE
	bit $2151.w		; 2C 51 21
	cmp ($E0.b)		; D2 E0
	jsr $EE7A.w		; 20 7A EE
	jsl $E02010.l		; 22 10 20 E0
	sta $F5.b,X		; 95 F5
	jsr $00B6.w		; 20 B6 00
	brk $FF.b		; 00 FF
	bne  45.b		; D0 2D
	inc $11.b		; E6 11
	ora $BC6386.l		; 0F 86 63 BC
	sbc ($00.b),Y		; F1 00
	jmp.w [$112F]		; DC 2F 11
	sbc $E34F7A.l,X		; FF 7A 4F E3
	sbc ($D4.b,X)		; E1 D4
	and ($1C.b,X)		; 21 1C
	ora ($4A.b),Y		; 11 4A
	ply		; 7A
	bne  52.b		; D0 34
	bpl -93.b		; 10 A3
	cpy $24.b		; C4 24
	bit $AD.b		; 24 AD
	ldx $00.b,Y		; B6 00
	ora $FCE2FD.l		; 0F FD E2 FC
	.db $62, $20, $F0		; 62 20 F0
	txs		; 9A
	bit $20C4.w,X		; 3C C4 20
	asl $11F1.w		; 0E F1 11
	and $7A2E.w		; 2D 2E 7A
	and $1416BF.l,X		; 3F BF 16 14
	bit $21DE.w,X		; 3C DE 21
	asl A		; 0A
	ply		; 7A
	and ($12.b,S),Y		; 33 12
	and #$04.b		; 29 04
	ora ($E6.b,X)		; 01 E6
	mvp $C6,$AD		; 44 AD C6
	brk $0F.b		; 00 0F
	sbc $11D40F.l,X		; FF 0F D4 11
	ora $DA9611.l		; 0F 11 96 DA
	sbc $FE01.w		; ED 01 FE
	bpl  34.b		; 10 22
	bpl  17.b		; 10 11
	ply		; 7A
	xba		; EB
	cmp ($43.b,S),Y		; D3 43
	jsr $DF2C.w		; 20 2C DF
	eor ($C2.b,X)		; 41 C2
	txa		; 8A
	ora ($1F.b),Y		; 11 1F
	jsr ($124F.w,X)		; FC 4F 12
	and ($FC.b,S),Y		; 33 FC
	asl $0FB6.w		; 0E B6 0F
	inc $E9C2.w,X		; FE C2 E9
	eor ($41.b,S),Y		; 53 41
	sbc ($00.b)		; F2 00
	txs		; 9A
	lda $11.b		; A5 11
	pld		; 2B
	sbc ($00.b,S),Y		; F3 00
	and $76F01F.l,X		; 3F 1F F0 76
	wai		; CB
	lda $56E3.w		; AD E3 56
	and ($F5.b),Y		; 31 F5
	adc $208ADE.l,X		; 7F DE 8A 20
	rol $10C3.w		; 2E C3 10
	sbc ($40.b),Y		; F1 40
	dec $B2DB.w,X		; DE DB B2
	jmp.w [$CCC9]		; DC C9 CC
	lda ($22.b)		; B2 22
	brk $22.b		; 00 22
	and ($86.b,X)		; 21 86
	inc $AB21.w,X		; FE 21 AB
	ora $120331.l		; 0F 31 03 12
	ora $22D28A.l		; 0F 8A D2 22
	rol $EF2E.w,X		; 3E 2E EF
	lsr $30D1.w,X		; 5E D1 30
	stx $10.b,Y		; 96 10
	ora $FEFD.w		; 0D FD FE
	cpx #$F0.b		; E0 F0
	pea $B63F.w		; F4 3F B6
	ora $B6E2.w		; 0D E2 B6
	and ($0E.b,X)		; 21 0E
	jsr $0000.w		; 20 00 00
	txa		; 8A
	cmp [$CA.b],Y		; D7 CA
	jsl $41A214.l		; 22 14 A2 41
	cmp $557A0E.l,X		; DF 0E 7A 55
	pea $DDD3.w		; F4 D3 DD
	cop $DF.b		; 02 DF
	and ($3D.b,S),Y		; 33 3D
	txs		; 9A
	brk $EF.b		; 00 EF
	and ($E1.b),Y		; 31 E1
	and $AB2CDF.l,X		; 3F DF 2C AB
	lda ($AD.b)		; B2 AD
	cpy $4244.w		; CC 44 42
	ora ($11.b,X)		; 01 11
	ora ($11.b),Y		; 11 11
	stx $FD.b,Y		; 96 FD
	cmp $30D1.w,X		; DD D1 30
	bit $20.b		; 24 20
	bpl -16.b		; 10 F0
	ply		; 7A
	ora $32.b		; 05 32
	xba		; EB
	tsb $255A.w		; 0C 5A 25
	and ($22.b)		; 32 22
	dec $00.b		; C6 00
	beq  31.b		; F0 1F
	brk $0F.b		; 00 0F
	cmp ($31.b),Y		; D1 31
	sbc $43ECB2.l,X		; FF B2 EC 43
	and ($00.b)		; 32 00
	ora $10F0FF.l		; 0F FF F0 10
	stx $EF.b,Y		; 96 EF
	sbc ($4F.b,S),Y		; F3 4F
	beq  49.b		; F0 31
	asl $23E0.w		; 0E E0 23
	txa		; 8A
	inc $1CE0.w		; EE E0 1C
	and ($13.b),Y		; 31 13
	sbc ($F1.b)		; F2 F1
	jmp.w [$F1BA]		; DC BA F1
	brk $FC.b		; 00 FC
	eor [$BF.b],Y		; 57 BF
	asl $3CFF.w		; 0E FF 3C
	ldx #$46.b		; A2 46
	adc $00.b,X		; 75 00
	sbc $00E0.w		; ED E0 00
	and $21.b,S		; 23 21
	stx $CE.b,Y		; 96 CE
	bmi -16.b		; 30 F0
	jsl $FFF022.l		; 22 22 F0 FF
	brk $9A.b		; 00 9A
	ora $2FFF10.l,X		; 1F 10 FF 2F
	and $DF1C1F.l		; 2F 1F 1C DF
	dec $F0.b		; C6 F0
	brk $12.b		; 00 12
	ora ($00.b,X)		; 01 00
	inc $310E.w,X		; FE 0E 31
	ldx $4E.b		; A6 4E
	rep #$0D		; C2 0D
	cmp ($11.b),Y		; D1 11
	bpl -32.b		; 10 E0
	beq -118.b		; F0 8A
	and $632D.w		; 2D 2D 63
	sbc $40D1BF.l,X		; FF BF D1 40
	cop $AA.b		; 02 AA
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	asl $FC1F.w,X		; 1E 1F FC
	bit $B2.b,X		; 34 B2
	dex		; CA
	ora $33.b,S		; 03 33
	and ($0C.b)		; 32 0C
	cmp #$14.b		; C9 14
	mvn $B2,$A6		; 54 A6 B2
	inc $10BE.w,X		; FE BE 10
	and ($00.b,X)		; 21 00
	asl $8A10.w		; 0E 10 8A
	eor $3E12.w,X		; 5D 12 3E
	ldy $51E1.w,X		; BC E1 51
	and $01B610.l		; 2F 10 B6 01
	brk $01.b		; 00 01
	ora $ECFC00.l		; 0F 00 FC EC
	eor [$B2.b]		; 47 B2
	mvp $21,$32		; 44 32 21
	sbc $34CA.w,X		; FD CA 34
	eor $12.b,S		; 43 12
	tax		; AA
	sbc $53D1.w		; ED D1 53
	ora $F1F0.w		; 0D F0 F1
	ora $609A1E.l,X		; 1F 1E 9A 60
	sbc $F200D2.l		; EF D2 00 F2
	cop $3D.b		; 02 3D
	inc $00C6.w,X		; FE C6 00
	brk $00.b		; 00 00
	beq -35.b		; F0 DD
	.db $42, $11		; 42 11
	brk $B2.b		; 00 B2
	and ($00.b),Y		; 31 00
	jsr ($34CC.w,X)		; FC CC 34
	eor $33.b,S		; 43 33
	ora $F22FAA.l,X		; 1F AA 2F F2
	and ($EE.b)		; 32 EE
	beq  17.b		; F0 11
	sbc ($F0.b),Y		; F1 F0
	stx $1D.b		; 86 1D
	bne  17.b		; D0 11
	bpl -17.b		; 10 EF
	adc $4F.b,S		; 63 4F
	lda $00B6.w		; AD B6 00
	ora $E6D0.w		; 0D D0 E6
	and ($10.b,X)		; 21 10
	ora $00B2FF.l,X		; 1F FF B2 00
	cpx $34BB.w		; EC BB 34
	eor ($23.b,S),Y		; 53 23
	jsr $AAED.w		; 20 ED AA
	asl $5D11.w,X		; 1E 11 5D
	ora $1FFEF2.l		; 0F F2 FE 1F
	jsr $AF86.w		; 20 86 AF
	and $0D.b,S		; 23 0D
	beq  67.b		; F0 43
	and ($EB.b)		; 32 EB
	jmp.w [$EFB6]		; DC B6 EF
	tsb MPYL.w		; 0C 34 21
	brk $F0.b		; 00 F0
	beq  15.b		; F0 0F
	ldx $EE.b,Y		; B6 EE
	sbc $52.b,S		; E3 52
	ora $F0EF00.l		; 0F 00 EF F0
	sbc $54CDA6.l,X		; FF A6 CD 54
	and ($02.b)		; 32 02
	ora $0F01FF.l,X		; 1F FF 01 0F
	tax		; AA
	brk $20.b		; 00 20
	sbc ($F1.b),Y		; F1 F1
	brk $0E.b		; 00 0E
	asl $B6E5.w		; 0E E5 B6
	cmp $32.b		; C5 32
	bpl   0.b		; 10 00
	sbc $EDFF10.l,X		; FF 10 FF ED
	ldx $E7.b,Y		; B6 E7
	ora ($FD.b,S),Y		; 13 FD
	bpl  31.b		; 10 1F
	ora $AAEEFF.l		; 0F FF EE AA
	mvn $FF,$FE		; 54 FE FF
	beq   0.b		; F0 00
	ora ($0F.b,X)		; 01 0F
	bpl -62.b		; 10 C2
	ora ($11.b,X)		; 01 11
	ora ($10.b),Y		; 11 10
	brk $FD.b		; 00 FD
	cpy $B211.w		; CC 11 B2
	bit $23.b,X		; 34 23
	and ($11.b,X)		; 21 11
	ora ($1F.b),Y		; 11 1F
	dex		; CA
	sta ($A6.b),Y		; 91 A6
	and ($DE.b,X)		; 21 DE
	and ($0F.b),Y		; 31 0F
	sbc $C2CEFF.l,X		; FF FF CE C2
	ldx #$14.b		; A2 14
	adc $33.b		; 65 33
	and ($0F.b),Y		; 31 0F
	inc $13F0.w		; EE F0 13
	tsx		; BA
	ora $E0F11F.l		; 0F 1F F1 E0
	ora $0FDE43.l,X		; 1F 43 DE 0F
	tsx		; BA
	ora $1F1F10.l,X		; 1F 10 1F 1F
	asl $3400.w		; 0E 00 34
	cmp $20C0A6.l		; CF A6 C0 20
	brk $F0.b		; 00 F0
	beq -17.b		; F0 EF
	jmp.w [$9A46]		; DC 46 9A
	ldy $03DE.w,X		; BC DE 03
	inc $4202.w,X		; FE 02 42
	cpx #$0F.b		; E0 0F
	lda ($32.b)		; B2 32
	ora $12BACC.l,X		; 1F CC BA 12
	bit $22.b,X		; 34 22
	bpl -74.b		; 10 B6
	ora ($00.b,X)		; 01 00
	ora $51EFFD.l,X		; 1F FD EF 51
	ora $2CAAE1.l,X		; 1F E1 AA 2C
	sbc ($00.b),Y		; F1 00
	ora ($E1.b,X)		; 01 E1
	inc $5BF6.w,X		; FE F6 5B
	txs		; 9A
	cpx $F1F1.w		; EC F1 F1
	ora ($30.b),Y		; 11 30
	bpl -47.b		; 10 D1
	inc $0FC2.w,X		; FE C2 0F
	sbc $12C0.w		; ED C0 12
	and ($10.b,X)		; 21 10
	brk $01.b		; 00 01
	ldx $00.b,Y		; B6 00
	asl $FFEE.w		; 0E EE FF
	bvc  31.b		; 50 1F
	ora ($1F.b,X)		; 01 1F
	ldx $0F.b		; A6 0F
	ora $FF1011.l		; 0F 11 10 FF
	stp		; DB
	ora $42.b		; 05 42
	tax		; AA
	cmp $01E212.l,X		; DF 12 E2 01
	brk $FE.b		; 00 FE
	rol $BAD0.w		; 2E D0 BA
	cop $6D.b		; 02 6D
	sbc $1001F0.l		; EF F0 01 10
	brk $0F.b		; 00 0F
	tsx		; BA
	ora $5C110F.l		; 0F 0F 11 5C
	sbc $10FF11.l,X		; FF 11 FF 10
	txs		; 9A
	ora $C20E31.l,X		; 1F 31 0E C2
	stp		; DB
	and ($75.b),Y		; 31 75
	lda $1111B2.l,X		; BF B2 11 11
	ora ($22.b),Y		; 11 22
	jsl $A1DC1E.l		; 22 1E DC A1
	stx $36.b,Y		; 96 36
	jmp $DFE9.w		; 4C E9 DF
	eor ($12.b)		; 52 12
	asl $A6EB.w,X		; 1E EB A6
	wai		; CB
	dec $53.b,X		; D6 53
	inc $0F11.w		; EE 11 0F
	ora ($10.b,X)		; 01 10
	ldx $01.b		; A6 01
	and ($00.b,X)		; 21 00
	dec $DDEE.w,X		; DE EE DD
	and $41.b,X		; 35 41
	lda ($22.b)		; B2 22
	ora ($11.b),Y		; 11 11
	ora ($FD.b),Y		; 11 FD
	wai		; CB
	ora ($33.b)		; 12 33
	tax		; AA
.INDEX 8
	sep #$D2		; E2 D2
	ora ($00.b),Y		; 11 00
	ora $CF2EF0.l		; 0F F0 2E CF
	ldx $F5.b,Y		; B6 F5
	ora ($0F.b),Y		; 11 0F
	bpl  15.b		; 10 0F
	brk $01.b		; 00 01
	brk $9A.b		; 00 9A
	lsr $B3E0.w,X		; 5E E0 B3
	sbc $5D05F2.l,X		; FF F2 05 5D
	sbc $21B2.w		; ED B2 21
	ora ($1F.b),Y		; 11 1F
	sbc $33B1.w		; ED B1 33
	and ($11.b),Y		; 31 11
	ldx $FF.b,Y		; B6 FF
	ora ($01.b),Y		; 11 01
	beq -16.b		; F0 F0
	asl $F4EF.w		; 0E EF F4
	stx $54.b,Y		; 96 54
	ora $ED4E.w		; 0D 4E ED
	ora ($F3.b)		; 12 F3
	and $20.b,S		; 23 20
	txs		; 9A
	ora $F111.w		; 0D 11 F1
	rol $36C1.w,X		; 3E C1 36
	sbc $B2FE.w,X		; FD FE B2
	ora ($FD.b),Y		; 11 FD
	wai		; CB
	and $43.b,S		; 23 43
	jsl $B6F010.l		; 22 10 F0 B6
	ora ($10.b,X)		; 01 10
	sbc $DEFF00.l,X		; FF 00 FF DE
	and ($20.b,S),Y		; 33 20
	stx $A1.b,Y		; 96 A1
	bmi -17.b		; 30 EF
	sbc ($31.b),Y		; F1 31
	ora ($0F.b),Y		; 11 0F
	jsr ($E0A6.w,X)		; FC A6 E0
	ora ($20.b),Y		; 11 20
	inc $23DF.w,X		; FE DF 23
	and ($FD.b,X)		; 21 FD
	lda ($EC.b)		; B2 EC
	cmp ($33.b,X)		; C1 33
	and ($21.b)		; 32 21
	brk $00.b		; 00 00
	ora ($B6.b),Y		; 11 B6
	brk $F0.b		; 00 F0
	brk $EE.b		; 00 EE
	sbc $E11052.l		; EF 52 10 E1
	stx $3F.b,Y		; 96 3F
	sbc $EF31F2.l		; EF F2 31 EF
	beq  -4.b		; F0 FC
	cmp ($A6.b,S),Y		; D3 A6
	and ($1F.b)		; 32 1F
	asl $D0EE.w		; 0E EE D0
	eor ($EE.b)		; 52 EE
	bne -94.b		; D0 A2
	eor $55.b		; 45 55
	jsl $122112.l		; 22 12 21 12
	jsr $B600.w		; 20 00 B6
	ora ($FF.b,X)		; 01 FF
	inc $53FF.w		; EE FF 53
	brk $F0.b		; 00 F0
	brk $9A.b		; 00 9A
	sbc ($3C.b)		; F2 3C
	ora $0F02.w,X		; 1D 02 0F
	ora $B2EE34.l,X		; 1F 34 EE B2
	jsl $DC0F11.l		; 22 11 0F DC
	inc $E2EE.w		; EE EE E2
	and ($9A.b,S),Y		; 33 9A
	cmp $2250.w,X		; DD 50 22
	sbc $0010.w,X		; FD 10 00
	ora $FFB630.l		; 0F 30 B6 FF
	inc $42E3.w		; EE E3 42
	ora $0100F1.l		; 0F F1 00 01
	txs		; 9A
	cmp $F123FC.l,X		; DF FC 23 F1
	sbc ($4E.b,S),Y		; F3 4E
	sbc $00B6F0.l		; EF F0 B6 00
	sbc $1FF2FD.l,X		; FF FD F2 1F
	eor ($0F.b),Y		; 51 0F
	sbc $43638A.l,X		; FF 8A 63 43
	tyx		; BB
	lsr $21D1.w		; 4E D1 21
	tsa		; 3B
	bcc -74.b		; 90 B6
	sbc $0F31F4.l		; EF F4 31 0F
	ora ($00.b,X)		; 01 00
	bpl -16.b		; 10 F0
	txs		; 9A
	dec $1023.w		; CE 23 10
	tsb $0E.b		; 04 0E
	sbc $BAFFF3.l		; EF F3 FF BA
	ora $F4140E.l		; 0F 0E 14 F4
	cmp $1100F0.l		; CF F0 00 11
	txs		; 9A
	sbc ($DE.b),Y		; F1 DE
	ora $E03D10.l,X		; 1F 10 3D E0
	beq -61.b		; F0 C3
	tax		; AA
	rol $B0.b,X		; 36 B0
	cpy #$4F.b		; C0 4F
	ora $0FF000.l		; 0F 00 F0 0F
	txa		; 8A
	adc $2EFE73.l		; 6F 73 FE 2E
	sbc $0AD0F3.l		; EF F3 D0 0A
	tsx		; BA
	sbc $E05B41.l		; EF 41 5B E0
	brk $00.b		; 00 00
	ora ($F1.b),Y		; 11 F1
	tax		; AA
	cpy #$12.b		; C0 12
	beq  14.b		; F0 0E
	ora ($FF.b,X)		; 01 FF
	bpl  38.b		; 10 26
	stx $52.b,Y		; 96 52
	beq  67.b		; F0 43
	asl $DFEE.w		; 0E EE DF
	wai		; CB
	sbc ($9A.b,X)		; E1 9A
	lsr $2FC1.w		; 4E C1 2F
	brk $F1.b		; 00 F1
	beq -37.b		; F0 DB
	cpy $AA.b		; C4 AA
	adc [$CB.b]		; 67 CB
	inc $0020.w,X		; FE 20 00
	and $A6E2F0.l,X		; 3F F0 E2 A6
	ora ($11.b,X)		; 01 11
	inc $FEEF.w,X		; FE EF FE
	dec $3066.w,X		; DE 66 30
	txs		; 9A
	sbc $3D.b,S		; E3 3D
	brk $0E.b		; 00 0E
	sbc ($D2.b)		; F2 D2
	eor ($FC.b)		; 52 FC
	tsx		; BA
	brk $01.b		; 00 01
	sbc ($F0.b),Y		; F1 F0
	brk $EF.b		; 00 EF
	ora ($3F.b,S),Y		; 13 3F
	stx $3E.b,Y		; 96 3E
	lda $22F0FF.l,X		; BF FF F0 22
	ora $34D0.w		; 0D D0 34
	tax		; AA
	inc $100F.w,X		; FE 0F 10
	asl $6B04.w		; 0E 04 6B
	tsb $9A04.w		; 0C 04 9A
	cmp $0FFE01.l		; CF 01 FE 0F
	and ($20.b,S),Y		; 33 20
	cmp $AA03.w,X		; DD 03 AA
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	cmp $23.b,X		; D5 23
	eor #$FE.b		; 49 FE
	txs		; 9A
	and $F0.b,S		; 23 F0
	ora ($2E.b,X)		; 01 2E
	inc $2D33.w		; EE 33 2D
	inc $009A.w,X		; FE 9A 00
	brk $FE.b		; 00 FE
	and [$69.b]		; 27 69
	cmp $9AD103.l,X		; DF 03 D1 9A
	cpx #$0F.b		; E0 0F
	sbc ($52.b)		; F2 52
	sbc $0033CE.l		; EF CE 33 00
	tax		; AA
	beq  15.b		; F0 0F
	cpx $F663.w		; EC 63 F6
	bcc  -1.b		; 90 FF
	ora ($8A.b),Y		; 11 8A
	asl $D43E.w		; 0E 3E D4
	cpy #$53.b		; C0 53
	and #$FD.b		; 29 FD
	ora ($A6.b)		; 12 A6
	brk $EE.b		; 00 EE
	sbc $32.b		; E5 32
	ora $EE0011.l,X		; 1F 11 00 EE
	txs		; 9A
	beq  67.b		; F0 43
	and $D10E.w		; 2D 0E D1
	and ($0F.b)		; 32 0F
.ACCU 16
	rep #$A6		; C2 A6
	sbc $3FA1.w		; ED A1 3F
	.db $62, $10, $F0		; 62 10 F0
	brk $F0.b		; 00 F0
	stx $0E.b		; 86 0E
	brk $E0.b		; 00 E0
	and $FC.b,X		; 35 FC
	sbc $2C23.w		; ED 23 2C
	ldx $EF.b,Y		; B6 EF
	pea $0F11.w		; F4 11 0F
	ora ($0F.b),Y		; 11 0F
	inc $9AF0.w,X		; FE F0 9A
	eor $10FFFE.l		; 4F FE FF 10
	and ($EE.b),Y		; 31 EE
	inc $A6B4.w,X		; FE B4 A6
	ora ($E6.b),Y		; 11 E6
	jsl $FF100F.l		; 22 0F 10 FF
	brk $F0.b		; 00 F0
	txa		; 8A
	jsr $1FD2.w		; 20 D2 1F
	cmp ($31.b,X)		; C1 31
	bit $B0CB.w,X		; 3C CB B0
	ldx #$C1.b		; A2 C1
	eor $33.b		; 45 33
	mvp $DC,$20		; 44 20 DC
	cmp $F09A11.l		; CF 11 9A F0
	ora $ED4E10.l,X		; 1F 10 4E ED
	inc $2960.w		; EE 60 29
	ldx #$E1.b		; A2 E1
	and $34.b,S		; 23 34
	and ($11.b)		; 32 11
	ora $A601F0.l,X		; 1F F0 01 A6
	sbc ($00.b),Y		; F1 00
	brk $01.b		; 00 01
	ora $73D0ED.l		; 0F ED D0 73
	stx $3F.b,Y		; 96 3F
	cmp ($1D.b)		; D2 1D
	tyx		; BB
	sbc $53.b,S		; E3 53
	sbc $1F96D0.l,X		; FF D0 96 1F
	ora ($30.b)		; 12 30
	phx		; DA
.INDEX 16
	rep #$D0		; C2 D0
	lda [$53.b],Y		; B7 53
	txs		; 9A
	bne  93.b		; D0 5D
	cmp ($20.b,X)		; C1 20
	sep #$00		; E2 00
	rol $AA02.w		; 2E 02 AA
	ora $0F0FF2.l		; 0F F2 0F 0F
	sbc $EF3C24.l,X		; FF 24 3C EF
	stx $F1.b,Y		; 96 F1
	xba		; EB
	ldx $3F56.w		; AE 56 3F
	cmp $00F1.w,X		; DD F1 00
	txs		; 9A
	and $2BB7EE.l,X		; 3F EE B7 2B
	and $9176.w,Y		; 39 76 91
	ora ($86.b),Y		; 11 86
	jmp $DF0ECF.l		; 5C CF 0E DF
	tsb $40.b		; 04 40
	and ($EB.b)		; 32 EB
	ldx #$1101.w		; A2 01 11
	asl $A1CA.w		; 0E CA A1
	eor $42.b		; 45 42
	jsl $55919A.l		; 22 9A 91 55
	bit $11CE.w		; 2C CE 11
	jsr $EF02.w		; 20 02 EF
	stx $CC.b,Y		; 96 CC
	and ($EE.b),Y		; 31 EE
	lda ($60.b,X)		; A1 60
	trb $32.b		; 14 32
	sbc $438A.w,X		; FD 8A 43
	cpx #$5102.w		; E0 02 51
	cmp $5EF3EE.l		; CF EE F3 5E
	tax		; AA
	ora $34E100.l		; 0F 00 E1 34
	cmp $121EFF.l		; CF FF 1E 12
	txs		; 9A
	eor ($CC.b,X)		; 41 CC
	sbc $1F.b,S		; E3 1F
	and ($0E.b,X)		; 21 0E
	sbc $9672.w		; ED 72 96
	jsr ($25DC.w,X)		; FC DC 25
	ora ($33.b,X)		; 01 33
	and $8A0FDF.l		; 2F DF 0F 8A
	and $DB1D24.l,X		; 3F 24 1D DB
	ora ($33.b),Y		; 11 33
	sbc $FDA20F.l,X		; FF 0F A2 FD
	tax		; AA
	ora $43.b,S		; 03 43
	bpl -20.b		; 10 EC
	cmp ($34.b),Y		; D1 34
	stx $DB.b,Y		; 96 DB
	cpx #$32F0.w		; E0 F0 32
	phd		; 0B
	cmp $30.b		; C5 30
	ldy $C296.w,X		; BC 96 C2
	eor ($23.b,X)		; 41 23
	and ($ED.b)		; 32 ED
	cpx #$2201.w		; E0 01 22
	txa		; 8A
	bpl  -3.b		; 10 FD
	cmp $D02232.l		; CF 32 22 D0
	beq -69.b		; F0 BB
	ldx $E5.b		; A6 E5
	and ($0E.b)		; 32 0E
	inc $32F2.w		; EE F2 32
	asl $96FF.w		; 0E FF 96
	sbc $B22F02.l,X		; FF 02 2F B2
	eor ($FB.b,X)		; 41 FB
	cpy $8A04.w		; CC 04 8A
.INDEX 16
	rep #$1E		; C2 1E
	wai		; CB
	ora ($F1.b)		; 12 F1
	eor ($1D.b,S),Y		; 53 1D
	sbc $F000AA.l		; EF AA 00 F0
	ora ($F1.b),Y		; 11 F1
	beq  15.b		; F0 0F
	beq  67.b		; F0 43
	ldx $11.b		; A6 11
	sbc $24E0.w		; ED E0 24
	and $000FEE.l		; 2F EE 0F 00
	txs		; 9A
	bpl -47.b		; 10 D1
	eor $04D0EE.l		; 4F EE D0 04
	eor $EB8A00.l		; 4F 00 8A EB
	cmp ($3F.b),Y		; D1 3F
	tsb $32.b		; 04 32
	jmp.w [$DEF3]		; DC F3 DE
	ldx $F0.b		; A6 F0
	brk $10.b		; 00 10
	beq  -2.b		; F0 FE
	sbc $9A1F52.l		; EF 52 1F 9A
	cmp ($64.b,X)		; C1 64
	ora $21BE.w,X		; 1D BE 21
	ora ($F1.b,X)		; 01 F1
	ora $FF4F9A.l		; 0F 9A 4F FF
	dec $641D.w,X		; DE 1D 64
	brk $FE.b		; 00 FE
	inc $218A.w,X		; FE 8A 21
	jsr $2E13.w		; 20 13 2E
	cmp $0E3F.w,X		; DD 3F 0E
	.db $42, $A6		; 42 A6
	brk $00.b		; 00 00
	beq  -3.b		; F0 FD
	cpx $31.b		; E4 31
	sbc $9AD1.w,X		; FD D1 9A
	ror $D2CD.w		; 6E CD D2
	bpl  16.b		; 10 10
	brk $14.b		; 00 14
	cpy #$FD96.w		; C0 96 FD
	ldy $54AF.w,X		; BC AF 54
	mvn $FF,$00		; 54 00 FF
	ora ($8A.b),Y		; 11 8A
	cmp ($22.b,S),Y		; D3 22
	sbc $1FE2.w		; ED E2 1F
	sbc ($4E.b),Y		; F1 4E
	ora $FF00A6.l,X		; 1F A6 00 FF
	sbc $0034.w		; ED 34 00
	cmp $3125.w		; CD 25 31
	txs		; 9A
	bcs   3.b		; B0 03
	beq  46.b		; F0 2E
	trb $FF.b		; 14 FF
	sbc $BB96FE.l		; EF FE 96 BB
	dec $55.b,X		; D6 55
	bmi   0.b		; 30 00
	brk $01.b		; 00 01
	ora ($7A.b),Y		; 11 7A
	and $E131BD.l,X		; 3F BD 31 E1
	tsb $1F.b		; 04 1F
	asl $A61A.w		; 0E 1A A6
	inc $30E3.w,X		; FE E3 30
	jsr ($52E3.w,X)		; FC E3 52
	ora $3F9AEE.l,X		; 1F EE 9A 3F
	ora ($F1.b),Y		; 11 F1
	jmp $E0FF0E.l		; 5C 0E FF E0
	ora ($96.b,X)		; 01 96
	adc $63.b		; 65 63
	brk $1F.b		; 00 1F
	beq  18.b		; F0 12
	ora ($00.b)		; 12 00
	ply		; 7A
	ldy $0C.b,X		; B4 0C
	bit $02.b,X		; 34 02
	inc $BE02.w		; EE 02 BE
	lda $13A6.w		; AD A6 13
	ora $2144CF.l		; 0F CF 44 21
	inc $F0FF.w		; EE FF F0
	stx $F1.b,Y		; 96 F1
	eor ($10.b,S),Y		; 53 10
	asl $BCDA.w		; 0E DA BC
	inc $66.b		; E6 66
	txa		; 8A
	sta $FE2D.w,X		; 9D 2D FE
	and ($40.b,S),Y		; 33 40
	cmp $96F1F1.l,X		; DF F1 F1 96
	inc $1010.w		; EE 10 10
	sbc $C1FD0F.l,X		; FF 0F FD C1
	bvc -90.b		; 50 A6
	jsr ($4204.w,X)		; FC 04 42
	ora $F00FEE.l		; 0F EE 0F F0
	jsl $0F2196.l		; 22 96 21 0F
	cpx $CFAB.w		; EC AB CF
	ror $63.b,X		; 76 63
	ora ($8A.b),Y		; 11 8A
	dec $33F5.w,X		; DE F5 33
	ora $11DF.w,X		; 1D DF 11
	sbc $109A12.l,X		; FF 12 9A 10
	sbc $FD0F01.l,X		; FF 01 0F FD
	mvn $D5,$AE		; 54 AE D5
	tax		; AA
	bvc -49.b		; 50 CF
	beq   0.b		; F0 00
	bpl  17.b		; 10 11
	ora $0FA60F.l		; 0F 0F A6 0F
	sbc $03DE.w		; ED DE 03
	eor $20.b,S		; 43 20
	ora $358AFF.l		; 0F FF 8A 35
	lsr $00CE.w		; 4E CE 00
	jsr $22E0.w		; 20 E0 22
	asl $F1AA.w,X		; 1E AA F1
	brk $F0.b		; 00 F0
	sbc $1E.b,S		; E3 1E
	inc $FD53.w,X		; FE 53 FD
	txs		; 9A
	dec $F002.w,X		; DE 02 F0
	bit $2C.b		; 24 2C
	beq -16.b		; F0 F0
	inc $F0AA.w,X		; FE AA F0
	ora ($40.b),Y		; 11 40
	inc $F10F.w,X		; FE 0F F1
	brk $21.b		; 00 21
	stx $41.b		; 86 41
	cmp $FED0.w,X		; DD D0 FE
	cmp $E00E02.l,X		; DF 02 0E E0
	tax		; AA
	ora $D0120F.l		; 0F 0F 12 D0
	ora $3F.b,S		; 03 3F
	dec $9AF1.w,X		; DE F1 9A
	brk $12.b		; 00 12
	eor $0EF0DF.l,X		; 5F DF F0 0E
	ora $14AAE2.l		; 0F E2 AA 14
	asl $00EF.w,X		; 1E EF 00
	brk $11.b		; 00 11
	ora $967AF0.l,X		; 1F F0 7A 96
	rti		; 40

	inc $1032.w,X		; FE 32 10
	cmp $DA4F.w,X		; DD 4F DA
	ldx $EF.b		; A6 EF
	ora $4044EF.l,X		; 1F EF 44 40
	inc $FFEF.w,X		; FE EF FF
	txs		; 9A
	and $DE.b,X		; 35 DE
	beq  -1.b		; F0 FF
	asl $0500.w		; 0E 00 05
	rts		; 60

	txa		; 8A
	sta $E0D0.w,Y		; 99 D0 E0
	and $50.b		; 25 50
	dec $02FF.w		; CE FF 02
	txa		; 8A
	rol $1010.w		; 2E 10 10
	ora $DFEFF2.l		; 0F F2 EF DF
	asl $9A.b		; 06 9A
	dec $3C37.w,X		; DE 37 3C
	ldy $0010.w,X		; BC 10 00
	bit $2E.b		; 24 2E
	txs		; 9A
	cmp $00EE01.l,X		; DF 01 EE 00
	cop $36.b		; 02 36
	sbc $8ADE.w,X		; FD DE 8A
	asl $5413.w		; 0E 13 54
	sbc $01DF.w,X		; FD DF 01
	ora ($00.b),Y		; 11 00
	stx $0F.b,Y		; 96 0F
	brk $0F.b		; 00 0F
	ora $1DDDFD.l		; 0F FD DD 1D
	lda ($9A.b,S),Y		; B3 9A
	rts		; 60

	dex		; CA
	cpx #$0210.w		; E0 10 02
	rts		; 60

	dec $9A01.w		; CE 01 9A
	inc $000F.w,X		; FE 0F 00
	bit $5E.b		; 24 5E
	dec $F1D1.w,X		; DE D1 F1
	txa		; 8A
	and $2F.b,X		; 35 2F
	dec $F301.w		; CE 01 F3
	sbc ($0F.b),Y		; F1 0F
	ora ($AA.b,X)		; 01 AA
	brk $0F.b		; 00 0F
	ora $D0020F.l,X		; 1F 0F 02 D0
	eor $0C.b,S		; 43 0C
	txs		; 9A
	cmp $F111.w,X		; DD 11 F1
	mvp $EF,$EE		; 44 EE EF
	bpl -32.b		; 10 E0
	txs		; 9A
	sbc $FC5312.l,X		; FF 12 53 FC
	inc $121F.w		; EE 1F 12
	jsr $4186.w		; 20 86 41
	dec $0FEF.w,X		; DE EF 0F
	ora $FFF0FE.l		; 0F FE F0 FF
	tax		; AA
	brk $0F.b		; 00 0F
	beq  30.b		; F0 1E
	and $3E.b,S		; 23 3E
	dec $9AF1.w,X		; DE F1 9A
	ora $EE2E15.l,X		; 1F 15 2E EE
	ora ($FF.b,X)		; 01 FF
	sbc $259A10.l,X		; FF 10 9A 25
	rol $F1CE.w,X		; 3E CE F1
	beq  50.b		; F0 32
	ora $507AFE.l		; 0F FE 7A 50
	and ($00.b)		; 32 00
	cpx #$1FF2.w		; E0 F2 1F
	asl $AA0C.w		; 0E 0C AA
	ora $41F2F1.l		; 0F F1 F2 41
	inc $01D0.w		; EE D0 01
	ora ($9A.b,X)		; 01 9A
	and ($EE.b)		; 32 EE
	sbc ($F0.b,X)		; E1 F0
	sbc $41230F.l,X		; FF 0F 23 41
	txa		; 8A
	phx		; DA
	lda $52230F.l,X		; BF 0F 23 52
	cmp $11F0.w		; CD F0 11
	ply		; 7A
	jsr $D12E.w		; 20 2E D1
	ora ($1F.b),Y		; 11 1F
	sbc $ADEE.w		; ED EE AD
	tax		; AA
	ora $DF1D34.l		; 0F 34 1D DF
	sbc ($01.b),Y		; F1 01
	ora ($1E.b),Y		; 11 1E
	txs		; 9A
	asl $0F1F.w		; 0E 1F 0F
	sbc ($F3.b,X)		; E1 F3
	and $0E.b		; 25 0E
	cpy #$C18A.w		; C0 8A C1
	sbc ($45.b)		; F2 45
	asl $F3CF.w		; 0E CF F3
	cop $00.b		; 02 00
	stx $FF.b,Y		; 96 FF
	beq   0.b		; F0 00
	beq -17.b		; F0 EF
	cmp $B4CB.w,X		; DD CB B4
	tax		; AA
	eor $10E0DE.l		; 4F DE E0 10
	ora ($2F.b),Y		; 11 2F
	sbc $1E9A00.l,X		; FF 00 9A 1E
	beq -16.b		; F0 F0
	bit $4F.b		; 24 4F
	sbc $F0E1.w		; ED E1 F0
	txa		; 8A
	asl $30.b,X		; 16 30
	dec $30F0.w		; CE F0 30
	ora $AAF11E.l,X		; 1F 1E F1 AA
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	asl $5400.w		; 0E 00 54
	sbc $AE9A.w		; ED 9A AE
	ora ($03.b),Y		; 11 03
	bmi  14.b		; 30 0E
	cpx #$0F1F.w		; E0 1F 0F
	txs		; 9A
	sbc $ED5402.l,X		; FF 02 54 ED
	bne -15.b		; D0 F1
	sbc ($21.b)		; F2 21
	ply		; 7A
	xba		; EB
	lda $0E3F24.l		; AF 24 3F 0E
	sbc $AA2E03.l,X		; FF 03 2E AA
	brk $F0.b		; 00 F0
	ora $3D15E1.l		; 0F E1 15 3D
	cmp $8A01.w,X		; DD 01 8A
	sbc $54.b,S		; E3 54
	and $01DD.w,X		; 3D DD 01
	inc $F10C.w,X		; FE 0C F1
	txs		; 9A
	and $2F.b,X		; 35 2F
	dec $F0F1.w		; CE F1 F0
	jsl $7AFF1F.l		; 22 1F FF 7A
	cpy $42.b		; C4 42
	ora $23F1FE.l		; 0F FE F1 23
	inc $AAFD.w		; EE FD AA
	ora $5103FF.l		; 0F FF 03 51
	cmp $2FEF.w,X		; DD EF 2F
	ora ($9A.b)		; 12 9A
	ora ($FF.b,X)		; 01 FF
	sbc ($F0.b,X)		; E1 F0
	asl $05F0.w		; 0E F0 05
	eor ($8A.b,X)		; 41 8A
	cmp $0EDE.w,Y		; D9 DE 0E
	ora $50.b,X		; 15 50
	sbc $13EF.w,X		; FD EF 13
	txa		; 8A
	sbc ($1E.b),Y		; F1 1E
	ora $FE2F01.l		; 0F 01 2F FE
	beq -20.b		; F0 EC
	tax		; AA
	sbc $DF1C45.l,X		; FF 45 1C DF
	sbc ($02.b),Y		; F1 02
	ora ($00.b,X)		; 01 00
	txs		; 9A
	bne   0.b		; D0 00
	beq -17.b		; F0 EF
	cop $44.b		; 02 44
	ora $8ADF.w,X		; 1D DF 8A
	bne -14.b		; D0 F2
	lsr $0D.b		; 46 0D
	sbc $1102.w		; ED 02 11
	ora ($A6.b,X)		; 01 A6
	ora $00000F.l		; 0F 0F 00 00
	sbc $D2ECFF.l,X		; FF FF EC D2
	tax		; AA
	eor $10E0CE.l,X		; 5F CE E0 10
	ora ($00.b)		; 12 00
	sbc $1F9A1F.l,X		; FF 1F 9A 1F
	inc $2500.w,X		; FE 00 25
	bmi -35.b		; 30 DD
	beq -16.b		; F0 F0
	txa		; 8A
	ora [$3F.b],Y		; 17 3F
	sbc $21E1.w		; ED E1 21
	brk $0F.b		; 00 0F
	sbc ($AA.b),Y		; F1 AA
	brk $01.b		; 00 01
	sbc $F10E00.l,X		; FF 00 0E F1
	mvn $96,$FB		; 54 FB 96
	xba		; EB
	dec $24E0.w		; CE E0 24
	and ($0F.b),Y		; 31 0F
	sbc $FF9AFD.l,X		; FF FD 9A FF
	ora $44.b,S		; 03 44
	sbc $00C0.w,X		; FD C0 00
	sbc ($30.b)		; F2 30
	ply		; 7A
	inc A		; 1A
	lda $0F3F23.l		; AF 23 3F 0F
	cpx #$2F01.w		; E0 01 2F
	tax		; AA
	brk $0F.b		; 00 0F
	beq  -1.b		; F0 FF
	and $3E.b		; 25 3E
	cmp $8A00.w		; CD 00 8A
	rts		; 60

	bit $4E.b,X		; 34 4E
	dec $0EF1.w		; CE F1 0E
	sbc $9A00.w		; ED 00 9A
	and $2F.b,X		; 35 2F
	cmp $2200E0.l		; CF E0 00 22
	rol $6AFF.w		; 2E FF 6A
	lda [$64.b]		; A7 64
	beq  -4.b		; F0 FC
	sbc ($33.b,X)		; E1 33
	asl $AAC9.w		; 0E C9 AA
	ora $51F40E.l		; 0F 0E F4 51
	cpx $12EF.w		; EC EF 12
	sbc ($9A.b),Y		; F1 9A
	jsl $0FF0EF.l		; 22 EF F0 0F
	asl $14F0.w		; 0E F0 14
	.db $42, $8A		; 42 8A
	plb		; AB
	dec $25EF.w,X		; DE EF 25
	.db $42, $DE		; 42 DE
	bne  17.b		; D0 11
	txa		; 8A
	ora ($0F.b),Y		; 11 0F
	beq   0.b		; F0 00
	jsr $E1EF.w		; 20 EF E1
	dec $E0AA.w,X		; DE AA E0
	rol $0E.b,X		; 36 0E
	cmp $0111.w		; CD 11 01
	cop $0F.b		; 02 0F
	txs		; 9A
	sbc $EFF01F.l,X		; FF 1F F0 EF
	ora ($44.b),Y		; 11 44
	ora $8AED.w,X		; 1D ED 8A
	asl $63E3.w,X		; 1E E3 63
	and $F2DE.w		; 2D DE F2
	ora ($1F.b),Y		; 11 1F
	ldx $0F.b		; A6 0F
	ora $FF0000.l		; 0F 00 00 FF
	sbc $AAD1EC.l,X		; FF EC D1 AA
	adc $2FF0DC.l		; 6F DC F0 2F
	ora ($10.b),Y		; 11 10
	sbc $1F9A1F.l,X		; FF 1F 9A 1F
	cpx #$14E2.w		; E0 E2 14
	rti		; 40

	cmp $00FF.w,X		; DD FF 00
	txa		; 8A
	and $40.b		; 25 40
	dec $12E1.w		; CE E1 12
	brk $F0.b		; 00 F0
	ora $1F00AA.l		; 0F AA 00 1F
	brk $0F.b		; 00 0F
	beq -31.b		; F0 E1
	mvn $96,$FC		; 54 FC 96
	xba		; EB
	dec $24EF.w		; CE EF 24
	eor ($FF.b,X)		; 41 FF
	ora $FF9AED.l		; 0F ED 9A FF
	ora ($44.b)		; 12 44
	inc $F1DF.w		; EE DF F1
	sbc ($12.b,S),Y		; F3 12
	ply		; 7A
	wai		; CB
	lda $FF2123.l		; AF 23 21 FF
	sbc $AA3F00.l,X		; FF 00 3F AA
	brk $0F.b		; 00 0F
	beq  -1.b		; F0 FF
	ora [$2D.b],Y		; 17 2D
	dec $8AF0.w,X		; DE F0 8A
	bvc  54.b		; 50 36
	and $0EF1CE.l		; 2F CE F1 0E
	dec $9A01.w,X		; DE 01 9A
	rol $1F.b		; 26 1F
	dec $1FFF.w,X		; DE FF 1F
	and ($00.b)		; 32 00
	inc $056A.w,X		; FE 6A 05
	.db $62, $11, $FC		; 62 11 FC
	bne  51.b		; D0 33
	asl $AADA.w		; 0E DA AA
	ora $61F30E.l		; 0F 0E F3 61
	cpx $2FEF.w		; EC EF 2F
	ora ($9A.b),Y		; 11 9A
	bmi  -1.b		; 30 FF
	sbc ($0F.b,X)		; E1 0F
	sbc $5113F0.l,X		; FF F0 13 51
	txa		; 8A
	cmp $FFDE.w,Y		; D9 DE FF
	ora $51.b,X		; 15 51
	sbc $12EF.w		; ED EF 12
	txa		; 8A
	ora ($00.b,X)		; 01 00
	sbc $FE0101.l,X		; FF 01 01 FE
	sbc $FFAA0B.l,X		; FF 0B AA FF
	rol $1D.b,X		; 36 1D
	dec $F102.w		; CE 02 F1
	ora ($00.b),Y		; 11 00
	txs		; 9A
	bne   0.b		; D0 00
	sbc $4411FF.l,X		; FF FF 11 44
	asl $8ADF.w		; 0E DF 8A
	cmp $0E6501.l,X		; DF 01 65 0E
	cmp $1120F1.l		; CF F1 20 11
	ldx $0F.b		; A6 0F
	ora $0F0F00.l		; 0F 00 0F 0F
	sbc $AAC2EC.l,X		; FF EC C2 AA
	eor $00F1DC.l,X		; 5F DC F1 00
	ora ($10.b),Y		; 11 10
	beq -16.b		; F0 F0
	txs		; 9A
	and $010E.w		; 2D 0E 01
	trb $40.b		; 14 40
	cmp $00FF.w,X		; DD FF 00
	txa		; 8A
	and $5F.b		; 25 5F
	cmp $1200.w		; CD 00 12
	brk $0F.b		; 00 0F
	sbc ($AA.b),Y		; F1 AA
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq -32.b		; F0 E0
	stz $FC.b		; 64 FC
	stx $EB.b,Y		; 96 EB
	dec $24EF.w		; CE EF 24
	and ($0F.b),Y		; 31 0F
	sbc $E19AFD.l,X		; FF FD 9A E1
	sbc ($52.b,S),Y		; F3 52
	tsb $0FEF.w		; 0C EF 0F
	ora ($22.b),Y		; 11 22
	ply		; 7A
	phx		; DA
	lda $0F1015.l		; AF 15 10 0F
	sbc $AA2000.l,X		; FF 00 20 AA
	brk $0F.b		; 00 0F
	beq  -1.b		; F0 FF
	asl $3E.b,X		; 16 3E
	dec $8AE2.w		; CE E2 8A
	brk $45.b		; 00 45
	lsr $01CD.w		; 4E CD 01
	ora $F2FD.w		; 0D FD F2
	txs		; 9A
	bit $2F.b,X		; 34 2F
	dec $1FFF.w,X		; DE FF 1F
	and ($2F.b),Y		; 31 2F
	inc $E76A.w,X		; FE 6A E7
	.db $62, $11, $FC		; 62 11 FC
	cmp $CC0E43.l,X		; DF 43 0E CC
	tax		; AA
	ora $42F4FF.l		; 0F FF F4 42
	cpx $11EF.w		; EC EF 11
	ora ($9A.b,X)		; 01 9A
	ora ($0D.b)		; 12 0D
	sbc ($F0.b),Y		; F1 F0
	sbc $3224FF.l,X		; FF FF 24 32
	txa		; 8A
	dex		; CA
	cmp $6124FE.l		; CF FE 24 61
	dec $11D0.w,X		; DE D0 11
	txa		; 8A
	bpl  16.b		; 10 10
	cpx #$00F2.w		; E0 F2 00
	ora $FC0F.w		; 0D 0F FC
	tax		; AA
	inc $2D54.w,X		; FE 54 2D
	dec $1F01.w		; CE 01 1F
	and ($00.b,X)		; 21 00
	txs		; 9A
	cmp ($0F.b,X)		; C1 0F
	ora $3511E0.l		; 0F E0 11 35
	ora $8AEE.w		; 0D EE 8A
	ora $5502.w		; 0D 02 55
	ora $10DD.w,X		; 1D DD 10
	and ($1F.b,X)		; 21 1F
	ldx $0F.b		; A6 0F
	ora $FF0000.l		; 0F 00 00 FF
	sbc $AAD1EC.l,X		; FF EC D1 AA
	adc $00D2DD.l		; 6F DD D2 00
	ora ($10.b),Y		; 11 10
	beq -16.b		; F0 F0
	txs		; 9A
	ora $3300FE.l,X		; 1F FE 00 33
	eor $E1F0ED.l		; 4F ED F0 E1
	txa		; 8A
	and $5E.b		; 25 5E
	dec $12E1.w,X		; DE E1 12
	sbc ($0F.b),Y		; F1 0F
	beq -86.b		; F0 AA
	brk $1F.b		; 00 1F
	brk $F1.b		; 00 F1
	cpx #$65E0.w		; E0 E0 65
	cpx $EB96.w		; EC 96 EB
	dec $24EF.w		; CE EF 24
	and ($0F.b),Y		; 31 0F
	sbc $E19AFD.l,X		; FF FD 9A E1
	sbc ($52.b,S),Y		; F3 52
	tsb $0FEF.w		; 0C EF 0F
	ora ($22.b),Y		; 11 22
	ply		; 7A
	phx		; DA
	lda $FF2114.l		; AF 14 21 FF
	sbc $AA10F2.l,X		; FF F2 10 AA
	brk $F1.b		; 00 F1
	cpx #$16FF.w		; E0 FF 16
	rol $E2CE.w,X		; 3E CE E2
	txa		; 8A
	sbc ($35.b)		; F2 35
	lsr $01CD.w		; 4E CD 01
	asl $00DE.w		; 0E DE 00
	txs		; 9A
	and $2E.b,X		; 35 2E
	sbc $00F0.w		; ED F0 00
	jsl $76FF2E.l		; 22 2E FF 76
	stz $00F0.w		; 9C F0 00
	sbc $DFBB.w,X		; FD BB DF
	sbc $0FABDA.l		; EF DA AB 0F
	asl $62F3.w		; 0E F3 62
	cmp $01E0.w		; CD E0 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
	bra  52.b		; 80 34
	brk $8E.b		; 00 8E
	asl A		; 0A
	bcc  64.b		; 90 40
	cop $00.b		; 02 00
	stx $0002.w		; 8E 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	eor ($12.b,X)		; 41 12
	jsl $FF1011.l		; 22 11 10 FF
	brk $11.b		; 00 11
	txs		; 9A
	cmp $FF50.w,X		; DD 50 FF
	sbc ($FC.b)		; F2 FC
	inc $F0E0.w,X		; FE E0 F0
	txs		; 9A
	bpl  34.b		; 10 22
	cpx $C0DC.w		; EC DC C0
	and ($FE.b)		; 32 FE
	sbc $10019A.l,X		; FF 9A 01 10
	sbc $F1DE31.l,X		; FF 31 DE F1
	eor ($21.b,S),Y		; 53 21
	txa		; 8A
	sbc $4C.b,X		; F5 4C
	bit $24.b,X		; 34 24
	ora $13DD.w		; 0D DD 13
	brk $9A.b		; 00 9A
	ora ($21.b,S),Y		; 13 21
	asl $E1CB.w		; 0E CB E1
	and ($FE.b,X)		; 21 FE
	sbc $FE039A.l,X		; FF 9A 03 FE
	cop $0F.b		; 02 0F
	cmp $42E1.w,X		; DD E1 42
	ora ($8A.b,X)		; 01 8A
	ora ($EF.b)		; 12 EF
	and ($20.b,S),Y		; 33 20
	jsr ($2FBF.w,X)		; FC BF 2F
	sbc ($9A.b)		; F2 9A
	jsl $BE1C23.l		; 22 23 1C BE
	beq  18.b		; F0 12
	asl $8AF2.w		; 0E F2 8A
	jsr $42D2.w		; 20 D2 42
	rol $03AB.w		; 2E AB 03
	.db $42, $33		; 42 33
	txa		; 8A
	rol $22E3.w		; 2E E3 22
	bmi -52.b		; 30 CC
	dec $00EF.w,X		; DE EF 00
	txs		; 9A
	ora ($42.b,S),Y		; 13 42
	ora $E0DD.w		; 0D DD E0
	bpl  15.b		; 10 0F
	bpl -118.b		; 10 8A
	bpl -16.b		; 10 F0
	mvn $BC,$1D		; 54 1D BC
	ora ($14.b,X)		; 01 14
	eor ($8A.b,X)		; 41 8A
	ora $2E23F0.l		; 0F F0 23 2E
	sbc $FFAC.w		; ED AC FF
	jmp.w [$059A]		; DC 9A 05
	.db $42, $0E		; 42 0E
	cmp $0FF1.w,X		; DD F1 0F
	ora $1E8A01.l		; 0F 01 8A 1E
	ora ($57.b,S),Y		; 13 57
	asl $E0ED.w,X		; 1E ED E0
	and $42.b,X		; 35 42
	txa		; 8A
	rol $43E2.w		; 2E E2 43
	jsr $AFFB.w		; 20 FB AF
	jsr ($9ABE.w,X)		; FC BE 9A
	ora ($42.b,S),Y		; 13 42
	ora $E0DE.w		; 0D DE E0
	sbc $8AF1F0.l,X		; FF F0 F1 8A
	cpx WRDIVL.w		; EC 04 42
	bpl -20.b		; 10 EC
	beq  37.b		; F0 25
	eor ($8A.b,S),Y		; 53 8A
	asl $2403.w		; 0E 03 24
	eor ($CD.b)		; 52 CD
	sbc $9AEEDC.l		; EF DC EE 9A
	tsb $42.b		; 04 42
	ora $EFEF.w		; 0D EF EF
	ora $8A0FF0.l		; 0F F0 0F 8A
	cmp $1F2233.l		; CF 33 22 1F
	sbc $35DF.w		; ED DF 35
	eor ($8A.b,X)		; 41 8A
	ora ($00.b,X)		; 01 00
	lsr $10.b,X		; 56 10
	asl $ECFF.w		; 0E FF EC
	cmp $41249A.l		; CF 9A 24 41
	ora $EF0FFE.l		; 0F FE 0F EF
	ora ($FF.b),Y		; 11 FF
	txa		; 8A
	cmp $102203.l,X		; DF 03 22 10
	jmp.w [$42CF]		; DC CF 42
	ora ($8A.b)		; 12 8A
	inc $34F2.w,X		; FE F2 34
	and $DAFFEF.l		; 2F EF FF DA
	bcs -118.b		; B0 8A
	lsr $65.b		; 46 65
	asl $DDF0.w		; 0E F0 DD
	bne  17.b		; D0 11
	inc $E08A.w,X		; FE 8A E0
	ora ($22.b)		; 12 22
	and $13EFCC.l,X		; 3F CC EF 13
	and ($8A.b)		; 32 8A
	sbc $42F3.w,X		; FD F3 42
	brk $F0.b		; 00 F0
	asl $E0AA.w		; 0E AA E0
	txa		; 8A
	rol $63.b,X		; 36 63
	jsr $DE0E.w		; 20 0E DE
	beq   1.b		; F0 01
	ora $11F08A.l		; 0F 8A F0 11
	mvn $ED,$2F		; 54 2F ED
	inc $4F14.w		; EE 14 4F
	txa		; 8A
	inc $3212.w		; EE 12 32
	inc $EB11.w		; EE 11 EB
	tax		; AA
	ldx $148A.w,Y		; BE 8A 14
	mvp $ED,$21		; 44 21 ED
	dec $1FD0.w,X		; DE D0 1F
	beq -118.b		; F0 8A
	inc $5422.w,X		; FE 22 54
	ora ($1D.b),Y		; 11 1D
	cmp $8A2045.l,X		; DF 45 20 8A
	ora $112124.l		; 0F 24 21 11
	ora ($FE.b),Y		; 11 FE
	tax		; AA
	lda $23248A.l,X		; BF 8A 24 23
	and ($FD.b)		; 32 FD
	dec $01DE.w		; CE DE 01
	inc $DE8A.w,X		; FE 8A DE
	ora ($22.b,S),Y		; 13 22
	jsl $24D1EA.l		; 22 EA D1 24
	ora $22F18A.l,X		; 1F 8A F1 22
	and ($01.b,X)		; 21 01
	jsl $EEAA0D.l		; 22 0D AA EE
	txa		; 8A
	and $34.b,S		; 23 34
	eor ($0F.b,X)		; 41 0F
	dec $01EE.w,X		; DE EE 01
	sbc $E08A.w		; ED 8A E0
	ora ($24.b),Y		; 11 24
	and $22EFCD.l,X		; 3F CD EF 22
	ora $21108A.l		; 0F 8A 10 21
	and ($11.b,X)		; 21 11
	eor $ED.b,S		; 43 ED
	tyx		; BB
	cpx #$138A.w		; E0 8A 13
	bit $53.b,X		; 34 53
	ora $10E0EE.l,X		; 1F EE E0 10
	sbc $F2EE8A.l		; EF 8A EE F2
	mvp $CC,$10		; 44 10 CC
	cpx #$0F01.w		; E0 01 0F
	txa		; 8A
	ora $22FF12.l		; 0F 12 FF 22
	and ($FC.b,X)		; 21 FC
	plb		; AB
	inc $028A.w		; EE 8A 02
	mvp $20,$42		; 44 42 20
	inc $0000.w		; EE 00 00
	ora $02EF8A.l		; 0F 8A EF 02
	eor $2F.b,X		; 55 2F
	sbc $0100.w		; ED 00 01
	ora $20F18A.l,X		; 1F 8A F1 20
	bpl  18.b		; 10 12
	and ($EB.b),Y		; 31 EB
	ldy $8ABD.w,X		; BC BD 8A
	sbc ($23.b)		; F2 23
	eor $0F.b,S		; 43 0F
	inc $10E0.w,X		; FE E0 10
	sbc $F3EE8A.l,X		; FF 8A EE F3
	eor $2F.b,X		; 55 2F
	sbc $001100.l		; EF 00 11 00
	txa		; 8A
	beq  33.b		; F0 21
	beq  35.b		; F0 23
	and ($EC.b),Y		; 31 EC
	tyx		; BB
	cmp $FF8A.w		; CD 8A FF
	and $33.b,S		; 23 33
	asl $FFEE.w,X		; 1E EE FF
	brk $FF.b		; 00 FF
	stx $FE.b		; 86 FE
	eor $11.b,X		; 55 11
	ora ($23.b,X)		; 01 23
	eor $54.b,X		; 55 54
	mvp $10,$7A		; 44 7A 10
	ora ($FF.b),Y		; 11 FF
	beq   1.b		; F0 01
	lsr $52.b		; 46 52
	and ($8A.b,X)		; 21 8A
	cpx $DEBD.w		; EC BD DE
	ora ($0F.b)		; 12 0F
	cop $21.b		; 02 21
	bpl 122.b		; 10 7A
	ora $CEBC.w		; 0D BC CE
	cop $12.b		; 02 12
	.db $42, $01		; 42 01
	bpl 122.b		; 10 7A
	bpl  17.b		; 10 11
	sbc $44F3FE.l,X		; FF FE F3 44
	mvn $8A,$4F		; 54 4F 8A
	sbc $DFBC.w		; ED BC DF
	ora ($0F.b)		; 12 0F
	ora ($22.b),Y		; 11 22
	and $DBFE7A.l		; 2F 7A FE DB
	cmp $313401.l,X		; DF 01 34 31
	jsl $117A01.l		; 22 01 7A 11
	bpl   0.b		; 10 00
	inc $4413.w		; EE 13 44
	eor ($30.b,S),Y		; 53 30
	txa		; 8A
	cpx $EFBC.w		; EC BC EF
	ora ($10.b,X)		; 01 10
	sbc ($22.b),Y		; F1 22
	jsr $EC7A.w		; 20 7A EC
	cpy $01CE.w		; CC CE 01
	and $41.b,S		; 23 41
	ora ($10.b,X)		; 01 10
	ply		; 7A
	bpl  17.b		; 10 11
	asl $03EF.w		; 0E EF 03
	bit $55.b,X		; 34 55
	and $BCED8B.l,X		; 3F 8B ED BC
	sbc $011001.l		; EF 01 10 01
	jsl $000011.l		; 22 11 00 00
	brk $08.b		; 00 08
	lda ($00.b,X)		; A1 00
	brk $05.b		; 00 05
	cpy #$8F20.w		; C0 20 8F
	bit $8FF2.w		; 2C F2 8F
	brk $F3.b		; 00 F3
	sta $8FF23C.l		; 8F 3C F2 8F
	brk $F3.b		; 00 F3
	cmp $BDFE.w		; CD FE BD
	inx		; E8
	brk $5D.b		; 00 5D
	lda $D0F0C8.l		; AF C8 F0 D0
	xce		; FB
	sta $8FF700.l		; 8F 00 F7 8F
	bra -15.b		; 80 F1
	sta $8F2180.l		; 8F 80 21 8F
	sbc $FF8FFA.l,X		; FF FA 8F FF
	brk $8F.b		; 00 8F
	sta ($21.b,X)		; 81 21
	sta $E8F181.l		; 8F 81 F1 E8
	brk $CD.b		; 00 CD
	brk $8D.b		; 00 8D
	brk $D4.b		; 00 D4
	cop $E4.b		; 02 E4
	sbc $8460.w,X		; FD 60 84
	cop $68.b		; 02 68
	php		; 08
	bcs   4.b		; B0 04
	cpy $02.b		; C4 02
	and $6C8DF3.l		; 2F F3 8D 6C
	inx		; E8
	rts		; 60

	wai		; CB
	sbc ($C4.b)		; F2 C4
	sbc ($E4.b,S),Y		; F3 E4
	sbc $8460.w,X		; FD 60 84
	cop $68.b		; 02 68
	php		; 08
	bcs   4.b		; B0 04
	cpy $02.b		; C4 02
	and $00E8F3.l		; 2F F3 E8 00
	pei ($02.b)		; D4 02
	sta $E87D.w		; 8D 7D E8
	brk $CB.b		; 00 CB
	sbc ($C4.b)		; F2 C4
	sbc ($E4.b,S),Y		; F3 E4
	sbc $8460.w,X		; FD 60 84
	cop $68.b		; 02 68
	cop $B0.b		; 02 B0
	tsb $C4.b		; 04 C4
	cop $2F.b		; 02 2F
	sbc ($E8.b,S),Y		; F3 E8
	brk $D4.b		; 00 D4
	cop $8D.b		; 02 8D
	eor $00E8.w		; 4D E8 00
	wai		; CB
	sbc ($C4.b)		; F2 C4
	sbc ($8D.b,S),Y		; F3 8D
	adc $F0E8.w		; 6D E8 F0
	wai		; CB
	sbc ($C4.b)		; F2 C4
	sbc ($E4.b,S),Y		; F3 E4
	sbc $8460.w,X		; FD 60 84
	cop $68.b		; 02 68
	cop $B0.b		; 02 B0
	tsb $C4.b		; 04 C4
	cop $2F.b		; 02 2F
	sbc ($8F.b,S),Y		; F3 8F
	bra -15.b		; 80 F1
	inx		; E8
	brk $8D.b		; 00 8D
	brk $CD.b		; 00 CD
	sbc $F7FF8F.l		; EF 8F FF F7
	eor $00FFC2.l,X		; 5F C2 FF 00
	brk $00.b		; 00 00
	ora $27.b		; 05 27
	brk $00.b		; 00 00
	php		; 08
	jsr $CFCD.w		; 20 CD CF
	lda $F0E8.w,X		; BD E8 F0
	cmp $F1.b		; C5 F1
	brk $E8.b		; 00 E8
	and [$C4.b]		; 27 C4
	asl A		; 0A
	inx		; E8
	php		; 08
	cpy $0B.b		; C4 0B
	inx		; E8
	cmp $0CC4.w,Y		; D9 C4 0C
	inx		; E8
	adc [$C4.b],Y		; 77 C4
	ora $00E8.w		; 0D E8 00
	eor $0AC7.w,X		; 5D C7 0A
	dec A		; 3A
	asl A		; 0A
	inc A		; 1A
	tsb $F8D0.w		; 0C D0 F8
	eor $00FFC0.l,X		; 5F C0 FF 00
	brk $00.b		; 00 00
	php		; 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $88.b		; 00 88
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
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
	brk $80.b		; 00 80
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
	jsr $0008.w		; 20 08 00
	bra  64.b		; 80 40
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
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra  12.b		; 80 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $0000FF.l,X		; FF FF 00 00
	tsb $00.b		; 04 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	php		; 08
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	and ($04.b,X)		; 21 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $10.b		; 00 10
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
	brk $04.b		; 00 04
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
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
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
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsr $0000.w		; 20 00 00
	rti		; 40

	php		; 08
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($40.b,X)		; 01 40
	brk $80.b		; 00 80
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $20.b		; 02 20
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

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
	brk $04.b		; 00 04
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	jsr $0800.w		; 20 00 08
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
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
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $00FFFF.l,X		; FF FF FF 00
	php		; 08
	jsr $0000.w		; 20 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	asl A		; 0A
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
	brk $20.b		; 00 20
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
	brk $01.b		; 00 01
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
	rti		; 40

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
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	php		; 08
	bra   0.b		; 80 00
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($01.b,X)		; 01 01
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $53.b		; 00 53
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A7.b		; 00 A7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 27FFFE. Skipping.
	.db $F7		; Opcode F7 overrunning bank boundry at 27FFFF. Skipping.
.ENDS
