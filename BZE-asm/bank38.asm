.BANK 38 SLOT 0
.ORG $0000

.SECTION "Bank38" FORCE

	xce		; FB
	jsl $00B700.l		; 22 00 B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	bmi -65.b		; 30 BF
	and $3E.b,S		; 23 3E
	and ($2E.b,X)		; 21 2E
	ora $1378DC.l		; 0F DC 78 13
	cpx BG1VOFS.w		; EC 0E 21
	and ($1F.b,S),Y		; 33 1F
	jsr $881F.w		; 20 1F 88
	asl $FFEF.w		; 0E EF FF
	ora $104302.l,X		; 1F 02 43 10
	sbc ($88.b,X)		; E1 88
	asl $E2DC.w,X		; 1E DC E2
	ora $5245FE.l		; 0F FE 45 52
	sbc $1098.w		; ED 98 10
	asl $01D0.w		; 0E D0 01
	sbc $1E4300.l,X		; FF 00 43 1E
	tya		; 98
	sbc ($10.b),Y		; F1 10
	cpx $1000.w		; EC 00 10
	sbc $945004.l		; EF 04 50 94
	eor $34.b,S		; 43 34
	eor ($EC.b)		; 52 EC
	dec $AAFB.w		; CE FB AA
	pei ($88.b)		; D4 88
	rol $52BE.w,X		; 3E BE 52
	sbc $33A0.w,Y		; F9 A0 33
	inc $98BF.w		; EE BF 98
	rol $2F.b		; 26 2F
	inc $FD05.w		; EE 05 FD
	cpy #$12.b		; C0 12
	ora $1D0F98.l		; 0F 98 0F 1D
	eor ($4D.b),Y		; 51 4D
	dec $1C41.w,X		; DE 41 1C
	cmp ($94.b,X)		; C1 94
	ora ($0F.b,X)		; 01 0F
	dec $13EB.w,X		; DE EB 13
	eor ($0E.b)		; 52 0E
	bit $98.b,X		; 34 98
	tas		; 1B
	cmp ($32.b),Y		; D1 32
	inc $01FF.w		; EE FF 01
	and $ED.b,X		; 35 ED
	tya		; 98
	sbc ($43.b,X)		; E1 43
	lda $31D3.w,X		; BD D3 31
	dec $E500.w,X		; DE 00 E5
	tya		; 98
	trb $DE.b		; 14 DE
	pei ($31.b)		; D4 31
	lda $2FE5.w,X		; BD E5 2F
	cmp $45D098.l,X		; DF 98 D0 45
	and $51EF.w,X		; 3D EF 51
	dex		; CA
	tsb $3B.b		; 04 3B
	ldy $B9.b		; A4 B9
	ldy $44.b,X		; B4 44
	ora ($46.b)		; 12 46
	rol $1ECF.w		; 2E CF 1E
	clv		; B8
	jsr ($4D33.w,X)		; FC 33 4D
	ora $FD32.w		; 0D 32 FD
	beq  32.b		; F0 20
	clv		; B8
	cpx $5F23.w		; EC 23 5F
	inc $EE14.w		; EE 14 EE
	cmp ($11.b),Y		; D1 11
	clv		; B8
	cmp $2F26.w,X		; DD 26 2F
	bne  50.b		; D0 32
	jmp.w [$1ED3]		; DC D3 1E
	clv		; B8
	sbc $F20E63.l,X		; FF 63 0E F2
	and $11CD.w		; 2D CD 11
	ora ($A8.b,X)		; 01 A8
	sbc $62.b,X		; F5 62
	sbc ($FE.b),Y		; F1 FE
	plb		; AB
	cmp $03.b,S		; C3 03
	ora $A8.b,S		; 03 A8
	eor $01.b		; 45 01
	jsr ($D1BB.w,X)		; FC BB D1
	ora ($04.b,S),Y		; 13 04
	eor $A8.b,S		; 43 A8
	eor $00ABE9.l,X		; 5F E9 AB 00
	and ($33.b),Y		; 31 33
	.db $62, $21, $B8		; 62 21 B8
	cpx $01ED.w		; EC ED 01
	ora ($13.b),Y		; 11 13
	ora ($20.b),Y		; 11 20
	cmp $DEB8.w,X		; DD B8 DE
	cop $10.b		; 02 10
	ora ($13.b,S),Y		; 13 13
	ora $B8E0CD.l		; 0F CD E0 B8
	cop $01.b		; 02 01
	jsl $CEFD12.l		; 22 12 FD CE
	bpl   1.b		; 10 01
	tay		; A8
	and ($53.b)		; 32 53
	asl $C0CA.w,X		; 1E CA C0
	sbc ($12.b)		; F2 12
	and ($A8.b,S),Y		; 33 A8
	and ($1C.b)		; 32 1C
	cmp #$C0.b		; C9 C0
	and ($21.b,S),Y		; 33 21
	bit $42.b		; 24 42
	clv		; B8
	sbc $03BF.w		; ED BF 03
	bpl  17.b		; 10 11
	jsl $B8EC1C.l		; 22 1C EC B8
	ora ($11.b,X)		; 01 11
	sbc ($22.b)		; F2 22
	brk $EC.b		; 00 EC
	sbc ($01.b,X)		; E1 01
	tay		; A8
	and ($33.b,X)		; 21 33
	jsl $21BFD9.l		; 22 D9 BF 21
	ora ($35.b,X)		; 01 35
	tay		; A8
	ora ($FD.b),Y		; 11 FD
	cpy $12F0.w		; CC F0 12
	bit $02.b		; 24 02
	jsr $FCB8.w		; 20 B8 FC
	sbc $F02103.l		; EF 03 21 F0
	and ($0C.b),Y		; 31 0C
	cmp $23B8.w		; CD B8 23
	jsr $11F2.w		; 20 F2 11
	ora $11DD.w,X		; 1D DD 11
	bpl -88.b		; 10 A8
	and ($23.b)		; 32 23
	inc $D0DC.w,X		; FE DC D0
	ora ($23.b),Y		; 11 23
	bmi -88.b		; 30 A8
	ora $DD.b,S		; 03 DD
	ldy $72F2.w,X		; BC F2 72
	ora $A82B22.l,X		; 1F 22 2B A8
	lda $63F2.w,Y		; B9 F2 63
	ora ($02.b),Y		; 11 02
	and $A8D0AA.l		; 2F AA D0 A8
	and $22.b,X		; 35 22
	ora ($1F.b),Y		; 11 1F
	cpy $30CF.w		; CC CF 30
	eor ($A8.b,X)		; 41 A8
	eor ($1F.b,X)		; 41 1F
	xba		; EB
	cmp $150501.l,X		; DF 01 05 15
	sbc ($A8.b,X)		; E1 A8
	sbc $27FEBC.l,X		; FF BC FE 27
	and $E1.b,S		; 23 E1
	rol $A8DA.w		; 2E DA A8
	cmp $134F53.l		; CF 53 4F 13
	ora ($BC.b,X)		; 01 BC
	cmp $33A82F.l,X		; DF 2F A8 33
	and ($1F.b),Y		; 31 1F
	ora $FFCD.w		; 0D CD FF
	rol $22.b		; 26 22
	tay		; A8
	brk $1F.b		; 00 1F
	lda $54CF.w		; AD CF 54
	eor $A80003.l		; 4F 03 00 A8
	lda $21DF.w		; AD DF 21
	eor $20.b,S		; 43 20
	brk $FB.b		; 00 FB
	cmp $1402A8.l		; CF A8 02 14
	and $F0.b,S		; 23 F0
	inc $F0CD.w,X		; FE CD F0
	asl $A8.b		; 06 A8
	and ($00.b)		; 32 00
	asl $FFDB.w		; 0E DB FF
	ora $32.b,X		; 15 32
	bpl -88.b		; 10 A8
	ora $04DFDC.l		; 0F DC DF 04
	and $0F.b,X		; 35 0F
	ora $DEA8FB.l,X		; 1F FB A8 DE
	cop $44.b		; 02 44
	and $DE1A1F.l		; 2F 1F 1A DE
	sbc $3172A8.l,X		; FF A8 72 31
	sbc ($FE.b),Y		; F1 FE
	ldx $52D0.w,Y		; BE D0 52
	eor ($A8.b),Y		; 51 A8
	sbc ($FF.b),Y		; F1 FF
	cpy $25EF.w		; CC EF 25
	eor ($01.b,X)		; 41 01
	beq -88.b		; F0 A8
	cpy $15EE.w		; CC EE 15
	and ($2F.b)		; 32 2F
	ora $A8CEDD.l,X		; 1F DD CE A8
	ora $25.b		; 05 25
	ora $DE0A2F.l		; 0F 2F 0A DE
	sbc ($45.b)		; F2 45
	tay		; A8
	ora ($1F.b,X)		; 01 1F
	tsb $F1CD.w		; 0C CD F1
	mvp $F2,$30		; 44 30 F2
	tay		; A8
	sbc $E0CD.w,X		; FD CD E0
	eor ($41.b)		; 52 41
	sbc ($FE.b)		; F2 FE
	cmp $DFA8.w		; CD A8 DF
	eor ($40.b,S),Y		; 53 40
	ora ($00.b,X)		; 01 00
	lda $52DF.w		; AD DF 52
	tay		; A8
	bvc   1.b		; 50 01
	brk $AD.b		; 00 AD
	cmp $104F53.l,X		; DF 53 4F 10
	tay		; A8
	rol $D1CB.w		; 2E CB D1
	mvn $12,$2E		; 54 2E 12
	ora $B8CB.w,X		; 1D CB B8
	sbc $13.b,S		; E3 13
	ora $CF1F10.l		; 0F 10 1F CF
	cmp $13.b,X		; D5 13
	clv		; B8
	cpx #$10.b		; E0 10
	and $05CE.w		; 2D CE 05
	and ($EF.b,X)		; 21 EF
	bmi -72.b		; 30 B8
	tsb $44B0.w		; 0C B0 44
	rol $20E2.w		; 2E E2 20
	tyx		; BB
	inc $B8.b		; E6 B8
	.db $42, $EF		; 42 EF
	ora $1B.b,S		; 03 1B
	lda $3F45.w,X		; BD 45 3F
	cmp ($B8.b),Y		; D1 B8
	jsl $54B3DB.l		; 22 DB B3 54
	sbc $2E03.w,X		; FD 03 2E
	tyx		; BB
	clv		; B8
	ora [$31.b]		; 07 31
	cpy #$23.b		; C0 23
	cpx $63BF.w		; EC BF 63
	and $F1B8.w		; 2D B8 F1
	bmi -53.b		; 30 CB
	cpx $52.b		; E4 52
	inc $3C11.w		; EE 11 3C
	clv		; B8
	lda $4F34.w,X		; BD 34 4F
	cmp ($12.b),Y		; D1 12
	plx		; FA
	bne  84.b		; D0 54
	clv		; B8
	ora $AD30E1.l		; 0F E1 30 AD
	sbc $42.b		; E5 42
	inc $B812.w		; EE 12 B8
	trb $44CD.w		; 1C CD 44
	jsr $21D1.w		; 20 D1 21
	stp		; DB
.ACCU 8
.INDEX 8
	sep #$B8		; E2 B8
	eor $0E.b,S		; 43 0E
	sbc ($2F.b)		; F2 2F
	ldx $40F5.w		; AE F5 40
	sbc $1B21B8.l		; EF B8 21 1B
	dec $1054.w		; CE 54 10
	cmp ($12.b),Y		; D1 12
	stp		; DB
	clv		; B8
	pei ($34.b)		; D4 34
	sbc $1D03.w,X		; FD 03 1D
	dec $30F6.w		; CE F6 30
	clv		; B8
	sbc $CEED22.l		; EF 22 ED CE
	adc $1F.b,S		; 63 1F
	sep #$02		; E2 02
	clv		; B8
	wai		; CB
	sbc ($42.b,S),Y		; F3 42
	ora $2D11.w		; 0D 11 2D
	cmp $B815.w		; CD 15 B8
	bmi -32.b		; 30 E0
	bpl  12.b		; 10 0C
	cmp $F12E53.l,X		; DF 53 2E F1
	tay		; A8
	sbc $74D7AC.l,X		; FF AC D7 74
	sbc $FB00.w,X		; FD 00 FB
	lda $43C1B4.l,X		; BF B4 C1 43
	and ($11.b)		; 32 11
	jsr ($13BB.w,X)		; FC BB 13
	eor $B8.b,S		; 43 B8
	sbc $03EE0F.l,X		; FF 0F EE 03
	eor ($0E.b,X)		; 41 0E
	asl $B80E.w		; 0E 0E B8
	sbc $FE1025.l,X		; FF 25 10 FE
	beq -17.b		; F0 EF
	ora ($42.b,X)		; 01 42
	clv		; B8
	asl $0FEE.w,X		; 1E EE 0F
	brk $F6.b		; 00 F6
	ora ($FC.b),Y		; 11 FC
	cpx #$B8.b		; E0 B8
	ora ($F0.b,X)		; 01 F0
	eor ($2D.b),Y		; 51 2D
	cmp $F51FF2.l		; CF F2 1F F5
	tay		; A8
	ora ($CA.b),Y		; 11 CA
	beq  48.b		; F0 30
	ora $05EB31.l,X		; 1F 31 EB 05
	clv		; B8
	and $1001FE.l		; 2F FE 01 10
	cmp $DF2B43.l,X		; DF 43 2B DF
	ldy $E1.b,X		; B4 E1
	and ($ED.b,X)		; 21 ED
	trb $3E.b		; 14 3E
	sbc $1012.w		; ED 12 10
	tay		; A8
	ora $42E4.w		; 0D E4 42
	cmp $2EF2.w,X		; DD F2 2E
	cmp $13B421.l,X		; DF 21 B4 13
	and ($ED.b),Y		; 31 ED
	sbc ($21.b,X)		; E1 21
	cpx $4013.w		; EC 13 40
	tay		; A8
	cpy #$42.b		; C0 42
	asl $33D0.w		; 0E D0 33
	bit $21FD.w		; 2C FD 21
	tay		; A8
	jsr $01ED.w		; 20 ED 01
	bit $1C.b,X		; 34 1C
	lda $B82023.l,X		; BF 23 20 B8
	sbc $2E15.w		; ED 15 2E
	cpy #$F3.b		; C0 F3
	bpl -18.b		; 10 EE
	ora ($A8.b)		; 12 A8
	adc $F2CE.w		; 6D CE F2
	and ($1C.b,X)		; 21 1C
.ACCU 16
.INDEX 16
	rep #$36		; C2 36
	tsb $FDB4.w		; 0C B4 FD
	cpx #$0A24.w		; E0 24 0A
	lda $74.b,S		; A3 74
	sbc $B0DE.w,X		; FD DE B0
	cmp ($4D.b)		; D2 4D
	ldx $1F55.w		; AE 55 1F
	dec $4C15.w,X		; DE 15 4C
	cpy $D2.b		; C4 D2
	eor ($0F.b,X)		; 41 0F
	sbc $EF0F12.l		; EF 12 0F EF
	jsl $DD1EA4.l		; 22 A4 1E DD
	tsb $2B.b		; 04 2B
	lda ($24.b),Y		; B1 24
	eor ($BD.b,X)		; 41 BD
	tay		; A8
	eor ($CC.b),Y		; 51 CC
	and ($11.b,S),Y		; 33 11
	phd		; 0B
	pei ($6D.b)		; D4 6D
	ldy $E3B4.w,X		; BC B4 E3
	eor ($FE.b,X)		; 41 FE
	cpx #$EE32.w		; E0 32 EE
	cmp ($33.b),Y		; D1 33
	ldy $0E.b,X		; B4 0E
	cpx #$FB22.w		; E0 22 FB
	cpy $62.b		; C4 62
	sbc $B0D0.w		; ED D0 B0
	ora $1A.b,X		; 15 1A
	cmp ($43.b,X)		; C1 43
	asl $44D0.w,X		; 1E D0 44
	sbc #$C1B0.w		; E9 B0 C1
	eor $1E.b,S		; 43 1E
	bne  66.b		; D0 42
	xba		; EB
	sbc ($33.b,X)		; E1 33
	ldy $C9.b		; A4 C9
	ora [$5D.b]		; 07 5D
	txs		; 9A
	lsr $50.b		; 46 50
	tyx		; BB
	asl $B0.b,X		; 16 B0
	bmi -68.b		; 30 BC
	trb $42.b		; 14 42
	cpx $4CF4.w		; EC F4 4C
	bcs -60.b		; B0 C4
	and $31F00F.l		; 2F 0F F0 31
	jmp.w [$1023]		; DC 23 10
	inc $E3B4.w,X		; FE B4 E3
	adc $0045AC.l		; 6F AC 45 00
	cpx $4D04.w		; EC 04 4D
	bcs -54.b		; B0 CA
	sbc ($43.b,S),Y		; F3 43
	tsb $41D2.w		; 0C D2 41
	ldy $B413.w,X		; BC 13 B4
	ora $0A25DE.l		; 0F DE 25 0A
	lda $51.b,X		; B5 51
	inc $B0CF.w,X		; FE CF B0
	ora $2B.b,X		; 15 2B
	lda $CD3F44.l		; AF 44 3F CD
	and $1B.b,X		; 35 1B
	bcs -80.b		; B0 B0
	bit $3F.b,X		; 34 3F
	dec $1C34.w		; CE 34 1C
	lda $FDB424.l,X		; BF 24 B4 FD
	cmp ($33.b),Y		; D1 33
	cpx $43D2.w		; EC D2 43
	asl $B4BF.w		; 0E BF B4
	eor $FB.b		; 45 FB
	ldx #$0E54.w		; A2 54 0E
	dec $1B35.w		; CE 35 1B
	ldy $92.b,X		; B4 92
	mvn $CE,$0E		; 54 0E CE
	and $1A.b,X		; 35 1A
	lda $52.b,S		; A3 52
	ldy $1E.b,X		; B4 1E
	lda $A3FA54.l,X		; BF 54 FA A3
	adc $0E.b,S		; 63 0E
	lda $AB52B8.l		; AF B8 52 AB
	sbc [$6E.b]		; E7 6E
	cmp $53E1.w,X		; DD E1 53
	cmp $CCB4.w		; CD B4 CC
	and $3F.b		; 25 3F
	sbc $4FF3.w		; ED F3 4F
	wai		; CB
	and $B4.b		; 25 B4
	and $40F3FC.l,X		; 3F FC F3 40
	tax		; AA
	eor $20.b		; 45 20
	cpx $F4B4.w		; EC B4 F4
	eor $10559B.l,X		; 5F 9B 55 10
	xba		; EB
	ora $4F.b		; 05 4F
	ldy $AA.b,X		; B4 AA
	rol $30.b,X		; 36 30
	xba		; EB
	cpx $51.b		; E4 51
	dex		; CA
	cpx $B8.b		; E4 B8
	ora $13EC.w,X		; 1D EC 13
	rti		; 40

	lda $5012.w,X		; BD 12 50
	cmp $DEB4.w,X		; DD B4 DE
	bit $1C.b		; 24 1C
	cmp $DE1E53.l		; CF 53 1E DE
	bit $B4.b		; 24 B4
	bit $5491.w		; 2C 91 54
	asl $35CE.w		; 0E CE 35
	ora $B0CE.w		; 0D CE B0
	sbc ($41.b,S),Y		; F3 41
	cmp $42F2.w,X		; DD F2 42
	cpx $42F2.w		; EC F2 42
	ldy $CD.b,X		; B4 CD
	bit $3F.b		; 24 3F
	cpx $50F3.w		; EC F3 50
	dex		; CA
	trb $B4.b		; 14 B4
	eor ($FC.b,X)		; 41 FC
	cmp ($42.b)		; D2 42
	nop		; EA
	cmp $51.b,X		; D5 51
	sbc $EEC0.w,X		; FD C0 EE
	ora ($1E.b,S),Y		; 13 1E
	cmp $EF2022.l		; CF 22 20 EF
	ora ($C4.b,S),Y		; 13 C4
	sbc $30E3.w		; ED E3 30
	asl $22E1.w		; 0E E1 22
	sbc $B4D2.w,X		; FD D2 B4
	adc ($FD.b)		; 72 FD
	bcs  84.b		; B0 54
	asl A		; 0A
	ldx #$0D64.w		; A2 64 0D
	ldy $CE.b,X		; B4 CE
	and $1C.b,X		; 35 1C
	lda $DD1D64.l		; AF 64 1D DD
	bit $C4.b,X		; 34 C4
	asl $42DF.w,X		; 1E DF 42
	ora $0E13EF.l		; 0F EF 13 0E
	cmp ($C4.b,X)		; C1 C4
	and ($0F.b)		; 32 0F
	bne  34.b		; D0 22
	asl $32C1.w		; 0E C1 32
	asl $02C8.w		; 0E C8 02
	ora ($DE.b)		; 12 DE
	cpx $30.b		; E4 30
	cpy #$22F1.w		; C0 F1 22
	ldy $1C.b,X		; B4 1C
	stz $0E66.w,X		; 9E 66 0E
	cmp $3D34.w		; CD 34 3D
	ldy $56B4.w		; AC B4 56
	asl $15DD.w,X		; 1E DD 15
	rol $669B.w,X		; 3E 9B 66
	ora $14CDB4.l,X		; 1F B4 CD 14
	lsr $46AB.w		; 4E AB 46
	and $B804DC.l		; 2F DC 04 B8
	tsb $47CF.w		; 0C CF 47
	sbc $25DE.w		; ED DE 25
	asl $B0BD.w,X		; 1E BD B0
	lda $CF2E45.l		; AF 45 2E CF
	eor $09.b		; 45 09
	lda ($55.b,X)		; A1 55
	cpy #$E01E.w		; C0 1E E0
	and $0C.b,S		; 23 0C
	bne  50.b		; D0 32
	ora $45B0EF.l,X		; 1F EF B0 45
	ora $5590.w,Y		; 19 90 55
	rol $46BF.w		; 2E BF 46
	inc A		; 1A
	cpy $F3.b		; C4 F3
	bmi  -2.b		; 30 FE
.ACCU 8
	sep #$22		; E2 22
	cpx $30F3.w		; EC F3 30
	cpy $FE.b		; C4 FE
	sbc ($32.b,X)		; E1 32
	sbc $40D3.w		; ED D3 40
	inc $B4E1.w,X		; FE E1 B4
	mvn $B5,$E9		; 54 E9 B5
	.db $62, $FC, $C1		; 62 FC C1
	mvn $C4,$EA		; 54 EA C4
	cmp ($32.b)		; D2 32
	inc $23E0.w,X		; FE E0 23
	ora $42C1.w		; 0D C1 42
	ldy $FC.b,X		; B4 FC
	cmp $9F1B45.l		; CF 45 1B 9F
	adc $0D.b,X		; 75 0D
	cmp $35B4.w		; CD B4 35
	rol $469B.w,X		; 3E 9B 46
	eor $52F4CB.l		; 4F CB F4 52
	clv		; B8
	lda $3E27.w,X		; BD 27 3E
	wai		; CB
	tsb $51.b		; 04 51
	nop		; EA
	rep #$C4		; C2 C4
	ora $2F.b,X		; 15 2F
	sbc $31F3.w		; ED F3 31
	cpx $32D4.w		; EC D4 32
	cpy $FD.b		; C4 FD
	cmp ($33.b),Y		; D1 33
	ora $43CF.w		; 0D CF 43
	asl $C8DE.w,X		; 1E DE C8
	eor ($FD.b,X)		; 41 FD
	cmp ($42.b),Y		; D1 42
	ora $23EF.w		; 0D EF 23
	asl $BDB8.w,X		; 1E B8 BD
	ora [$6C.b],Y		; 17 6C
	lda $5FF7.w		; AD F7 5F
	tyx		; BB
	sbc $B4.b,X		; F5 B4
	lsr $1C.b,X		; 56 1C
	lda $3D56.w		; AD 56 3D
	ldy $4F25.w,X		; BC 25 4F
	ldy $AA.b,X		; B4 AA
	and [$4F.b]		; 27 4F
	cpy $50F4.w		; CC F4 50
	tsx		; BA
	asl $B4.b,X		; 16 B4
	rti		; 40

	cpy $41F4.w		; CC F4 41
	tsx		; BA
	asl $40.b,X		; 16 40
	stp		; DB
	ldy $F4.b,X		; B4 F4
	bvc -71.b		; 50 B9
	and $4F.b,X		; 35 4F
	jmp.w [$50F4]		; DC F4 50
	ldy $BA.b,X		; B4 BA
	asl $40.b,X		; 16 40
	stp		; DB
	pea $CA41.w		; F4 41 CA
	inc $B8.b,X		; F6 B8
	xce		; FB
	bne  22.b		; D0 16
	asl $66AE.w		; 0E AE 66
	cpx $B4D0.w		; EC D0 B4
	sbc ($41.b,S),Y		; F3 41
	tsx		; BA
	rol $3F.b		; 26 3F
	jmp.w [$4F13]		; DC 13 4F
	ldy $BB.b,X		; B4 BB
	eor $2E.b		; 45 2E
	cmp $4E14.w,X		; DD 14 4E
	plb		; AB
	lsr $B4.b,X		; 56 B4
	asl $25CD.w,X		; 1E CD 25
	rol $569C.w,X		; 3E 9C 56
	asl $B4CD.w,X		; 1E CD B4
	and $3E.b		; 25 3E
	plb		; AB
	lsr $2F.b		; 46 2F
	cpy $4F15.w		; CC 15 4F
	ldy $BA.b,X		; B4 BA
	and $40.b		; 25 40
	phx		; DA
	sbc $51.b,X		; F5 51
	wai		; CB
	sbc ($B4.b,S),Y		; F3 B4
	eor $EA.b,S		; 43 EA
	ldy $63.b,X		; B4 63
	jsr ($44C0.w,X)		; FC C0 44
	tas		; 1B
	ldy $AF.b,X		; B4 AF
	adc $1D.b		; 65 1D
	lda $2E45.w,X		; BD 45 2E
	ldy $B445.w		; AC 45 B4
	and $4035AB.l,X		; 3F AB 35 40
	tyx		; BB
	sbc $51.b,X		; F5 51
	phx		; DA
	ldy $E3.b,X		; B4 E3
	eor ($FB.b,S),Y		; 53 FB
	bcs  85.b		; B0 55
	ora $25BE.w,X		; 1D BE 25
	ldy $30.b,X		; B4 30
	tax		; AA
	sbc [$61.b],Y		; F7 61
	phx		; DA
	cmp ($64.b)		; D2 64
	sbc $D0C4.w,Y		; F9 C4 D0
	eor $0E.b,S		; 43 0E
	cmp $CE1F23.l,X		; DF 23 1F CE
	trb $B8.b		; 14 B8
	phx		; DA
	cmp $BC2D45.l,X		; DF 45 2D BC
	ora [$5F.b],Y		; 17 5F
	ldy $F2C8.w		; AC C8 F2
	and ($FE.b),Y		; 31 FE
	bne  36.b		; D0 24
	asl $13CF.w,X		; 1E CF 13
	clv		; B8
	and ($C9.b),Y		; 31 C9
	sbc ($56.b,S),Y		; F3 56
	sbc #$B0.b		; E9 B0
	adc $2C.b		; 65 2C
	cpy $ED.b		; C4 ED
	cmp ($43.b),Y		; D1 43
	ora $24DE.w		; 0D DE 24
	and $57B8DD.l		; 2F DD B8 57
	tsb $169F.w		; 0C 9F 16
	eor ($9B.b),Y		; 51 9B
	sbc $44.b		; E5 44
	clv		; B8
	sbc $46C0.w,Y		; F9 C0 46
	bit $15BC.w,X		; 3C BC 15
	bvc -38.b		; 50 DA
	clv		; B8
	cmp ($76.b)		; D2 76
	cmp $36D0.w,Y		; D9 D0 36
	bit $05CC.w		; 2C CC 05
	cpy $43.b		; C4 43
	asl $13DE.w,X		; 1E DE 13
	and $42E2ED.l,X		; 3F ED E2 42
	clv		; B8
	tyx		; BB
	ora $42.b,X		; 15 42
	stp		; DB
	cmp ($65.b,X)		; C1 65
	tsb $B8AE.w		; 0C AE B8
	rol $3E.b,X		; 36 3E
	wai		; CB
	ora $72.b,S		; 03 72
	dex		; CA
	sbc ($47.b,X)		; E1 47
	clv		; B8
	cpx $37BE.w		; EC BE 37
	and $24BB.w,X		; 3D BB 24
	eor ($CB.b),Y		; 51 CB
	clv		; B8
	cmp ($45.b,S),Y		; D3 45
	phd		; 0B
	ldy #$3E44.w		; A0 44 3E
	lda $B804.w		; AD 04 B8
	adc ($BB.b),Y		; 71 BB
	cmp ($54.b,S),Y		; D3 54
	xce		; FB
	dec $4E45.w		; CE 45 4E
	clv		; B8
	plb		; AB
	and $61.b,S		; 23 61
	phx		; DA
	cmp ($55.b)		; D2 55
	phd		; 0B
	lda $54E3B4.l,X		; BF B4 E3 54
	plx		; FA
	lda $AD2D75.l		; AF 75 2D AD
	ora $B8.b,X		; 15 B8
	tsb $45BE.w		; 0C BE 45
	jmp $04CC.w		; 4C CC 04
	adc ($CC.b,X)		; 61 CC
	clv		; B8
	cmp $44.b,S		; C3 44
	tsb $16BF.w		; 0C BF 16
	jmp ($04BC.w)		; 6C BC 04
	clv		; B8
	rts		; 60

	nop		; EA
	sbc ($36.b,X)		; E1 36
	pld		; 2B
	ldx $3035.w		; AE 35 30
	clv		; B8
	dex		; CA
	pea $FA44.w		; F4 44 FA
	cpy #$1E45.w		; C0 45 1E
	ldy $24B8.w,X		; BC B8 24
	bvc -37.b		; 50 DB
.INDEX 8
	sep #$52		; E2 52
	tsb $33DE.w		; 0C DE 33
	clv		; B8
	eor $4202DB.l		; 4F DB 02 42
	inc $14CF.w,X		; FE CF 14
	jsl $F1DBB8.l		; 22 B8 DB F1
	eor $0D.b,S		; 43 0D
	cmp $CB3313.l		; CF 13 33 CB
	clv		; B8
	sep #$43		; E2 43
	trb $13B0.w		; 1C B0 13
	eor ($DC.b,X)		; 41 DC
	cmp $B8.b,S		; C3 B8
	eor $0E.b,S		; 43 0E
	ldx $3032.w,Y		; BE 32 30
	tsb $43D0.w		; 0C D0 43
	clv		; B8
	asl $12DD.w,X		; 1E DD 12
	and ($1C.b),Y		; 31 1C
	cmp $A83F32.l,X		; DF 32 3F A8
	lda $32F5.w,Y		; B9 F5 32
	eor $339D.w		; 4D 9D 33
	and ($FD.b),Y		; 31 FD
	tya		; 98
	lda $CD5024.l,X		; BF 24 50 CD
	bmi -33.b		; 30 DF
	and ($21.b)		; 32 21
	tya		; 98
	dex		; CA
	tsb $30.b		; 04 30
	cpx #$4F.b		; E0 4F
	jmp.w [$34F5]		; DC F5 34
	tya		; 98
	nop		; EA
	bcs  84.b		; B0 54
	ora $DCE5.w,X		; 1D E5 DC
	cop $33.b		; 02 33
	sty $41.b,X		; 94 41
	txy		; 9B
	ora $1D.b,S		; 03 1D
	inc $6E.b		; E6 6E
	ldy $A405.w		; AC 05 A4
	and ($DC.b)		; 32 DC
	sbc ($0F.b)		; F2 0F
	tsb $2E.b		; 04 2E
	dec $A014.w		; CE 14 A0
	eor $0D.b,X		; 55 0D
	dec $E4FE.w,X		; DE FE E4
	eor ($DC.b),Y		; 51 DC
	cmp ($A8.b)		; D2 A8
	asl A		; 0A
	cmp ($32.b),Y		; D1 32
	sbc $02CC05.l,X		; FF 05 CC 02
	eor ($A8.b,X)		; 41 A8
	asl A		; 0A
	sbc ($41.b,X)		; E1 41
	inc $CC15.w,X		; FE 15 CC
	cop $32.b		; 02 32
	tay		; A8
	asl A		; 0A
	sbc ($41.b,X)		; E1 41
	sbc $02BD24.l		; EF 24 BD 02
	and ($A8.b)		; 32 A8
	jsr ($41D1.w,X)		; FC D1 41
	sbc $02EB14.l		; EF 14 EB 02
	and $A4.b,S		; 23 A4
	bmi -67.b		; 30 BD
	cop $1F.b		; 02 1F
	cpx $3F.b		; E4 3F
	dec $A404.w		; CE 04 A4
	rti		; 40

	cpy $1F02.w		; CC 02 1F
	sbc $4F.b,S		; E3 4F
	cmp $A402.w,X		; DD 02 A4
	eor $DB.b,S		; 43 DB
	sbc ($2F.b),Y		; F1 2F
	cpx #$52.b		; E0 52
	sbc $A8E0.w		; ED E0 A8
	eor $2F03DD.l		; 4F DD 03 2F
	cpx #$14.b		; E0 14
	cpx $98E3.w		; EC E3 98
	eor $EB.b		; 45 EB
	lda $E10B55.l,X		; BF 55 0B E1
	adc $F488BF.l,X		; 7F BF 88 F4
	bit $FA.b,X		; 34 FA
	inc $0123.w,X		; FE 23 01
	asl $94D1.w		; 0E D1 94
	sbc $50.b		; E5 50
	ldy $6104.w		; AC 04 61
	dex		; CA
	sbc $31.b,S		; E3 31
	sta $DC.b		; 85 DC
	lda $30.b,X		; B5 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bpl -15.b		; 10 F1
	inc $2F.b		; E6 2F
	sei		; 78
	ora $C50E21.l		; 0F 21 0E C5
	sbc ($2E.b,S),Y		; F3 2E
	phy		; 5A
	jmp $1BD288.l		; 5C 88 D2 1B
	and $EE.b,S		; 23 EE
	lsr $D104.w		; 4E 04 D1
	ora $0FF298.l,X		; 1F 98 F2 0F
	cpx $242D.w		; EC 2D 24
	sbc ($30.b)		; F2 30
	jsr $FEA8.w		; 20 A8 FE
	sbc $3EF2FF.l,X		; FF FF F2 3E
	rti		; 40

	ora ($FD.b,S),Y		; 13 FD
	tay		; A8
	trb $DFE0.w		; 1C E0 DF
	.db $42, $E6		; 42 E6
	sbc ($5E.b),Y		; F1 5E
	sbc $0BCEA8.l,X		; FF A8 CE 0B
	sbc ($3F.b,S),Y		; F3 3F
	bvc  22.b		; 50 16
	cmp ($FC.b),Y		; D1 FC
	tay		; A8
	inc $E5B1.w		; EE B1 E5
	ora $21.b,S		; 03 21
	eor ($0F.b,X)		; 41 0F
	cpx $EDA8.w		; EC A8 ED
	sbc $F743.w		; ED 43 F7
	dec $11.b,X		; D6 11
	sbc ($91.b,X)		; E1 91
	clv		; B8
	bne -32.b		; D0 E0
	eor $135F.w		; 4D 5F 13
	sbc ($FD.b),Y		; F1 FD
	ora $E5D0B8.l		; 0F B8 D0 E5
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	eor $0DEF1F.l		; 4F 1F EF 0D
	ldy $C9.b,X		; B4 C9
	cmp $6304C4.l		; CF C4 04 63
	eor ($F0.b,S),Y		; 53 F0
	cmp $A9B4.w		; CD B4 A9
	tas		; 1B
	eor ($36.b,X)		; 41 36
	and $2F.b,X		; 35 2F
	trb $C4EB.w		; 1C EB C4
	cpy #$F0.b		; C0 F0
	and $F02241.l,X		; 3F 41 22 F0
	inc $C4FD.w,X		; FE FD C4
	cmp ($D5.b)		; D2 D5
	cpx $20.b		; E4 20
	and $DDE00F.l,X		; 3F 0F E0 DD
	cpy $2D.b		; C4 2D
	eor $FF0323.l		; 4F 23 03 FF
	ora $D00E.w,X		; 1D 0E D0
	ldy $00.b,X		; B4 00
	adc $D03270.l		; 6F 70 32 D0
	cmp $C0B5EC.l,X		; DF EC B5 C0
	bcs -30.b		; B0 E2
	and ($43.b,S),Y		; 33 43
	jsl $CEEDF0.l		; 22 F0 ED CE
	bcs -94.b		; B0 A2
	pea $7355.w		; F4 55 73
	bmi  -1.b		; 30 FF
	phx		; DA
	tyx		; BB
	ldy $65.b		; A4 65
	trb $21.b		; 14 21
	pld		; 2B
	inc A		; 1A
	ora $B43DDB.l		; 0F DB 3D B4
	rti		; 40

	and ($01.b,X)		; 21 01
	ora $ED100D.l		; 0F 0D 10 ED
	and $5FB4.w,X		; 3D B4 5F
	and ($01.b,X)		; 21 01
	ora $FC2F0D.l		; 0F 0D 2F FC
	phk		; 4B
	bcs  30.b		; B0 1E
	jsl $2F3224.l		; 22 24 32 2F
	bpl  -6.b		; 10 FA
	asl A		; 0A
	bcs  46.b		; B0 2E
	jsl $202224.l		; 22 24 22 20
	bpl -22.b		; 10 EA
	xce		; FB
	bcs  46.b		; B0 2E
	and $24.b,S		; 23 24
	jsl $BE1F11.l		; 22 11 1F BE
	bcs -92.b		; B0 A4
	cmp $20.b,X		; D5 20
	jmp $CAE12E.l		; 5C 2E E1 CA
	tsb $B471.w		; 0C 71 B4
	ora ($11.b)		; 12 11
	ora $DD1F0E.l		; 0F 0E 1F DD
	jmp $B46D.w		; 4C 6D B4
	eor ($F3.b,X)		; 41 F3
	sbc ($E0.b,X)		; E1 E0
	ora $A6D4.w		; 0D D4 A6
	sbc $A4.b,S		; E3 A4
	and ($5C.b,X)		; 21 5C
	asl $DAE1.w,X		; 1E E1 DA
	sbc $0553.w,X		; FD 53 05
	ldy $10.b,X		; B4 10
	ora $EC1E0F.l,X		; 1F 0F 1E EC
	jmp $416D.w		; 4C 6D 41
	ldy $02.b,X		; B4 02
	sbc ($FF.b,X)		; E1 FF
	asl $A6C4.w		; 0E C4 A6
	sbc ($11.b)		; F2 11
	ldy $3D.b		; A4 3D
	ora $FCBBD3.l,X		; 1F D3 BB FC
	adc ($15.b,X)		; 61 15
	and ($B4.b,X)		; 21 B4
	brk $0E.b		; 00 0E
	rol $3EDD.w		; 2E DD 3E
	and $B40231.l,X		; 3F 31 02 B4
	beq -16.b		; F0 F0
	inc $B5C4.w,X		; FE C4 B5
	sbc ($10.b,S),Y		; F3 10
	and $1FB4.w,X		; 3D B4 1F
	ora $5F3BED.l		; 0F ED 3B 5F
	and ($12.b,X)		; 21 12
	sbc ($B4.b,X)		; E1 B4
	beq  14.b		; F0 0E
	cmp ($C4.b),Y		; D1 C4
	ora ($21.b,X)		; 01 21
	bpl   0.b		; 10 00
	ldy $E0.b		; A4 E0
	wai		; CB
	sbc $0542.w		; ED 42 05
	jsl $A40E10.l		; 22 10 0E A4
	ora $01BC.w		; 0D BC 01
	and $011362.l		; 2F 62 13 01
	cpx #$A4.b		; E0 A4
	stp		; DB
	lda $D4.b,S		; A3 D4
	sbc $12.b,X		; F5 12
	eor $A40D2E.l		; 4F 2E 0D A4
	cmp #$4A.b		; C9 4A
	eor $E22542.l,X		; 5F 42 25 E2
	beq -20.b		; F0 EC
	ldy $A2.b		; A4 A2
	lda $F2.b		; A5 F2
	bit $3F.b		; 24 3F
	and $A4DA0E.l,X		; 3F 0E DA A4
	phd		; 0B
	bmi  20.b		; 30 14
	and ($13.b)		; 32 13
	beq  -4.b		; F0 FC
	cmp $E0A4.w		; CD A4 E0
	bpl  66.b		; 10 42
	and ($20.b)		; 32 20
	ora $A4B1DC.l		; 0F DC B1 A4
	cmp ($E5.b)		; D2 E5
	trb $31.b		; 14 31
	bpl  -2.b		; 10 FE
	dex		; CA
	pld		; 2B
	ldy $3F.b		; A4 3F
	rti		; 40

	and ($12.b,S),Y		; 33 12
	brk $ED.b		; 00 ED
	ldx #$A3.b		; A2 A3
	ldy $F2.b		; A4 F2
	ora ($30.b,S),Y		; 13 30
	rti		; 40

	asl $1BEA.w		; 0E EA 1B
	and $F212A8.l		; 2F A8 12 F2
	pei ($B3.b)		; D4 B3
	cmp ($D2.b,X)		; C1 D2
	cop $F0.b		; 02 F0
	ldy $4F.b		; A4 4F
	bvc  64.b		; 50 40
	rol $DFFC.w		; 2E FC DF
	sbc ($E4.b,X)		; E1 E4
	ldy $F4.b		; A4 F4
	ora $02.b,S		; 03 02
	sbc $2E0ECE.l,X		; FF CE 0E 2E
	and $5E7094.l		; 2F 94 70 5E
	eor $F1FA.w		; 4D FA F1
	sbc ($D2.b),Y		; F1 D2
	cpx $84.b		; E4 84
	sbc $F4.b		; E5 F4
	ora $4B2BCE.l,X		; 1F CE 2B 4B
	asl $8411.w		; 0E 11 84
	cpx $F5.b		; E4 F5
	ora ($EF.b),Y		; 11 EF
	sbc $0DFE1E.l		; EF 1E FE 0D
	sty $21.b		; 84 21
	ora ($21.b,S),Y		; 13 21
	ora $EFF1EF.l,X		; 1F EF F1 EF
	cpy #$74.b		; C0 74
	dec $F5.b,X		; D6 F5
	rol $22.b		; 26 22
	cmp $1DD1.w,X		; DD D1 1D
	tsx		; BA
	stz $EF.b,X		; 74 EF
	and $43.b,S		; 23 43
	eor $EF.b		; 45 EF
	cpy #$1E.b		; C0 1E
	cpy $BD74.w		; CC 74 BD
	sbc ($33.b,S),Y		; F3 33
	mvp $DE,$24		; 44 24 DE
	cmp $CC.b,S		; C3 CC
	stz $CC.b,X		; 74 CC
	bcs  68.b		; B0 44
	eor ($70.b),Y		; 51 70
	bit $FE0D.w,X		; 3C 0D FE
	sei		; 78
	cmp ($0E.b),Y		; D1 0E
	eor ($02.b)		; 52 02
	sbc ($B1.b),Y		; F1 B1
	lda ($21.b),Y		; B1 21
	stz $C1.b,X		; 74 C1
	lda $7441DE.l		; AF DE 41 74
	bpl  45.b		; 10 2D
	jsr ($3078.w,X)		; FC 78 30
	ora $F51E.w,X		; 1D 1E F5
	beq  93.b		; F0 5D
	sbc ($D0.b,X)		; E1 D0
	pla		; 68
	sbc $DC61.w,X		; FD 61 DC
	jsr $5BC6.w		; 20 C6 5B
	and ($C0.b,S),Y		; 33 C0
	stz $DD.b		; 64 DD
	xba		; EB
	ora ($1D.b),Y		; 11 1D
	asl $B10C.w		; 0E 0C B1
	sbc $74.b,X		; F5 74
	sbc ($E0.b),Y		; F1 E0
	ora ($03.b),Y		; 11 03
	ora $00.b,S		; 03 00
	tsb $64DC.w		; 0C DC 64
	dec $1F4D.w,X		; DE 4D 1F
	eor ($71.b)		; 52 71
	and ($F5.b),Y		; 31 F5
	cmp $1EEE78.l,X		; DF 78 EE 1E
	mvp $F1,$C2		; 44 C2 F1
	ora $4E0E.w,X		; 1D 0E 4E
	stz $E1.b,X		; 74 E1
	cmp $EFF1.w		; CD F1 EF
	sbc $221014.l,X		; FF 14 10 22
	sei		; 78
	cpx #$1B.b		; E0 1B
	eor $123E.w		; 4D 3E 12
	cmp ($F1.b,S),Y		; D3 F1
	cmp ($64.b)		; D2 64
	rol $EFFF.w,X		; 3E FF EF
	plx		; FA
	jmp $111F.w		; 4C 1F 11
	and ($64.b,X)		; 21 64
	bpl  -2.b		; 10 FE
	rol $D1E1.w		; 2E E1 D1
	cpx #$14.b		; E0 14
	cpy #$64.b		; C0 64
	bpl  45.b		; 10 2D
	bit $1FFE.w,X		; 3C FE 1F
	brk $4E.b		; 00 4E
	sbc ($64.b)		; F2 64
.ACCU 8
	sep #$E3		; E2 E3
	sty $DF.b,X		; 94 DF
	cpx #$10.b		; E0 10
	and $2E641F.l,X		; 3F 1F 64 2E
	inc A		; 1A
	and $F1F1E0.l,X		; 3F E0 F1 F1
	ora ($F1.b),Y		; 11 F1
	cli		; 58
.ACCU 16
	rep #$E1		; C2 E1
	sbc $115E.w		; ED 5E 11
	asl $0F1F.w		; 0E 1F 0F
	stz $F0.b		; 64 F0
	sbc $04F0F0.l		; EF F0 F0 04
	cpx #$10.b		; E0 10
	ora $C20F64.l		; 0F 64 0F C2
	sbc $F10110.l,X		; FF 10 01 F1
	ora ($00.b,X)		; 01 00
	ldy #$00.b		; A0 00
	brk $2F.b		; 00 2F
	ora $FC.b		; 05 FC
	ora ($DE.b,X)		; 01 DE
	asl $F3A0.w		; 0E A0 F3
	beq  63.b		; F0 3F
	and $F1.b,S		; 23 F1
	xce		; FB
	trb $ED.b		; 14 ED
	ldy #$1F.b		; A0 1F
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	beq -16.b		; F0 F0
	inc $E032.w		; EE 32 E0
	sty $5A.b,X		; 94 5A
	cop $BE.b		; 02 BE
	and ($03.b),Y		; 31 03
	jsr $F4EE.w		; 20 EE F4
	sty $1C.b,X		; 94 1C
	dec $3200.w,X		; DE 00 32
	ora ($4F.b,S),Y		; 13 4F
	cpy $9411.w		; CC 11 94
	jsr ($14DE.w,X)		; FC DE 14
	adc $30.b		; 65 30
	lda #$E5.b		; A9 E5
	phd		; 0B
	tay		; A8
	bpl  18.b		; 10 12
	and $23CF0E.l		; 2F 0E CF 23
	asl $A8F2.w		; 0E F2 A8
	ora $3F.b,S		; 03 3F
	cmp $D025B0.l		; CF B0 25 D0
	cop $23.b		; 02 23
	tay		; A8
	rol A		; 2A
	cmp $40F2.w		; CD F2 40
	sbc ($35.b,X)		; E1 35
	and $B8BA.w		; 2D BA B8
.INDEX 8
	sep #$11		; E2 11
	brk $22.b		; 00 22
	and $12E1BE.l		; 2F BE E1 12
	clv		; B8
	sbc ($22.b)		; F2 22
	and $00AD.w,X		; 3D AD 00
	jsl $B83301.l		; 22 01 33 B8
	trb $00AE.w		; 1C AE 00
	jsl $1B3401.l		; 22 01 34 1B
	lda $02B8.w		; AD B8 02
	ora ($21.b),Y		; 11 21
	bit $1A.b		; 24 1A
	ldx $20E3.w,Y		; BE E3 20
	clv		; B8
	and ($34.b,X)		; 21 34
	plx		; FA
	bcs -30.b		; B0 E2
	jsr $3521.w		; 20 21 35
	clv		; B8
	sbc #$C0.b		; E9 C0
.ACCU 8
	sep #$21		; E2 21
	ora ($44.b),Y		; 11 44
	phx		; DA
	cmp $00F4B8.l		; CF B8 F4 00
	and ($25.b),Y		; 31 25
	wai		; CB
	cmp $B80103.l		; CF 03 01 B8
	jsr $BB44.w		; 20 44 BB
	cmp $4FF013.l,X		; DF 13 F0 4F
	mvp $AB,$B8		; 44 B8 AB
	inc $F022.w,X		; FE 22 F0
	eor $FCAD43.l		; 4F 43 AD FC
	clv		; B8
	.db $42, $D2		; 42 D2
	and $EEAD62.l		; 2F 62 AD EE
	rti		; 40

	sbc ($B8.b),Y		; F1 B8
	rol $9F72.w		; 2E 72 9F
	sbc $D241.w		; ED 41 D2
	rol $B862.w		; 2E 62 B8
	cmp $22EE.w		; CD EE 22
	sbc $AF453E.l,X		; FF 3E 45 AF
	xce		; FB
	clv		; B8
	and ($EF.b,S),Y		; 33 EF
	jsr $ED15.w		; 20 15 ED
	tsb $0F03.w		; 0C 03 0F
	tay		; A8
	ora ($04.b),Y		; 11 04
	jmp ($C0CD.w)		; 6C CD C0
	adc $A801F1.l		; 6F F1 01 A8
	rol $CB.b		; 26 CB
	inc $1D14.w		; EE 14 1D
	and $A84C03.l		; 2F 03 4C A8
	cmp $E140D2.l,X		; DF D2 40 E1
	ora $0DEE13.l		; 0F 13 EE 0D
	sty $C3.b,X		; 94 C3
	eor ($0F.b,S),Y		; 53 0F
	cmp $FEFF02.l,X		; DF 02 FF FE
	trb $98.b		; 14 98
	and $F3CE.w		; 2D CE F3
	sbc $F0.b		; E5 F0
	ora $94F003.l,X		; 1F 03 F0 94
	jmp.w [$F0CD]		; DC CD F0
	jsr $2322.w		; 20 22 23
	brk $FF.b		; 00 FF
	bra -54.b		; 80 CA
	lda #$AD.b		; A9 AD
	ldy $67E2.w		; AC E2 67
	adc $56.b		; 65 56
	dey		; 88
	cmp $E45E.w,X		; DD 5E E4
	beq  79.b		; F0 4F
	dec $BF.b,X		; D6 BF
	bit $FF78.w,X		; 3C 78 FF
	tad		; 5B
	jmp $11F062.l		; 5C 62 F0 11
	sta ($0F.b,S),Y		; 93 0F
	stz $00.b,X		; 74 00
	phx		; DA
	trb $E0F3.w		; 1C F3 E0
	beq 101.b		; F0 65
	rol $A274.w		; 2E 74 A2
	cmp ($2E.b)		; D2 2E
	bne  33.b		; D0 21
	bit $0D1C.w		; 2C 1C 0D
	bvs  -1.b		; 70 FF
	inc $1343.w		; EE 43 13
	and $D0AB.w		; 2D AB D0
	and $1F70.w,X		; 3D 70 1F
	ora ($BD.b,X)		; 01 BD
	cpy $01E0.w		; CC E0 01
	and ($F0.b,S),Y		; 33 F0
	stz $F0.b,X		; 74 F0
	sta ($23.b),Y		; 91 23
	sbc ($20.b),Y		; F1 20
	bne  60.b		; D0 3C
	sbc ($70.b,X)		; E1 70
	cop $50.b		; 02 50
	ora ($E1.b),Y		; 11 E1
	sbc $4305E1.l		; EF E1 05 43
	bvs  49.b		; 70 31
	cmp ($AB.b),Y		; D1 AB
	tyx		; BB
	inc $02ED.w		; EE ED 02
	adc $74.b,S		; 63 74
	cmp $0D1E30.l		; CF 30 1E 0D
	beq -31.b		; F0 E1
	ora ($F4.b,S),Y		; 13 F4
	stz $00.b,X		; 74 00
	brk $10.b		; 00 10
	sbc ($AC.b),Y		; F1 AC
	bne -60.b		; D0 C4
	jsl $C30288.l		; 22 88 02 C3
	cpx #$10.b		; E0 10
	beq -46.b		; F0 D2
	sbc ($11.b),Y		; F1 11
	sty $13.b		; 84 13
	and ($32.b),Y		; 31 32
	cpx #$1D.b		; E0 1D
	sbc $D1CE.w,X		; FD CE D1
	sei		; 78
	pea $B510.w		; F4 10 B5
	lda $D2A2C6.l,X		; BF C6 A2 D2
	cmp $88.b,X		; D5 88
	ora ($2F.b),Y		; 11 2F
	sbc $DF.b,S		; E3 DF
	ora $FD2F.w,X		; 1D 2F FD
	eor ($84.b),Y		; 51 84
	trb $31.b		; 14 31
	eor ($03.b,X)		; 41 03
	dec $93E9.w		; CE E9 93
	mvp $40,$84		; 44 84 40
	sbc ($13.b)		; F2 13
	ora $B2BC.w,X		; 1D BC B2
	eor $3E.b,S		; 43 3E
	dey		; 88
	bpl  65.b		; 10 41
	cmp $E066B0.l		; CF B0 66 E0
	ldy $9453.w		; AC 53 94
	and ($0C.b),Y		; 31 0C
	dec $3043.w,X		; DE 43 30
	cmp $22E3.w,X		; DD E3 22
	sty $DC.b,X		; 94 DC
	pei ($63.b)		; D4 63
	trb $32AE.w		; 1C AE 32
	asl $A8CE.w		; 0E CE A8
	and ($EF.b)		; 32 EF
	dec $0F32.w,X		; DE 32 0F
	sbc $A80F15.l,X		; FF 15 0F A8
	cmp $30F2.w,X		; DD F2 30
	sbc $FD4FE4.l,X		; FF E4 4F FD
	bcs -88.b		; B0 A8
	bvc   1.b		; 50 01
	bne  68.b		; D0 44
	cpx #$9E.b		; E0 9E
	tsb $10.b		; 04 10
	tay		; A8
	asl $3D24.w		; 0E 24 3D
	stp		; DB
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	ora $4EA8F5.l		; 0F F5 A8 4E
	xce		; FB
	lda $D22150.l,X		; BF 50 21 D2
	adc $AF.b,S		; 63 AF
	clv		; B8
	cmp $0F1021.l		; CF 21 10 0F
	.db $42, $DF		; 42 DF
	cmp $C5A8F4.l,X		; DF F4 A8 C5
	sbc $ABCE56.l,X		; FF 56 CE AB
	sbc [$F2.b]		; E7 F2
	and $0C14B8.l		; 2F B8 14 0C
	asl A		; 0A
	ora ($01.b)		; 12 01
	and $B81B23.l		; 2F 23 1B B8
	jsr ($11F2.w,X)		; FC F2 11
	jsr $FC23.w		; 20 23 FC
	cmp $B803.w,X		; DD 03 B8
	cop $20.b		; 02 20
	and ($AE.b)		; 32 AE
	cmp $021321.l,X		; DF 21 13 02
	clv		; B8
	rol $E1CD.w		; 2E CD E1
	jsr $224F.w		; 20 4F 22
	and #$FD.b		; 29 FD
	clv		; B8
	sbc ($12.b)		; F2 12
	rol $EA41.w,X		; 3E 41 EA
	sbc $B41302.l,X		; FF 02 13 B4
	and $66.b,S		; 23 66
	inc $CEBB.w,X		; FE BB CE
	ora ($34.b)		; 12 34
	adc ($B4.b)		; 72 B4
	cmp $DFBC.w,X		; DD BC DF
	and ($36.b)		; 32 36
	eor $B8CCCC.l,X		; 5F CC CC B8
	and $01.b,S		; 23 01
	jsl $02F0AD.l		; 22 AD F0 02
	ora ($F2.b,S),Y		; 13 F2
	clv		; B8
	and $01019F.l		; 2F 9F 01 01
	bmi  18.b		; 30 12
	rol A		; 2A
	cpy #$B8.b		; C0 B8
	ora ($12.b,X)		; 01 12
	bpl  34.b		; 10 22
	xba		; EB
	cpx #$10.b		; E0 10
	and $B8.b,S		; 23 B8
	sbc ($31.b,X)		; E1 31
	lda $02F1.w,X		; BD F1 02
	ora ($F2.b),Y		; 11 F2
	rol $BEB8.w,X		; 3E B8 BE
	bpl  32.b		; 10 20
	and $3C12.w,X		; 3D 12 3C
	cmp $02B400.l,X		; DF 00 B4 02
	asl $4103.w,X		; 1E 03 41
	inc $44BE.w,X		; FE BE 44
	jsr ($BEA0.w,X)		; FC A0 BE
	sbc ($41.b),Y		; F1 41
	dec $5225.w		; CE 25 52
	sbc $94CC.w,X		; FD CC 94
	asl $21.b,X		; 16 21
	ora ($D3.b)		; 12 D3
	bit $FDAF.w		; 2C AF FD
	rol $98.b		; 26 98
	dec $E5E0.w,X		; DE E0 E5
	eor $4BB4.w,Y		; 59 B4 4B
	sbc [$0D.b]		; E7 0D
	tya		; 98
	beq  21.b		; F0 15
	and #$F0.b		; 29 F0
	sbc $D423.w,X		; FD 23 D4
	eor $4FEE98.l		; 4F 98 EE 4F
	phd		; 0B
	cpy #$5F.b		; C0 5F
	ora $3D.b,S		; 03 3D
	and $84.b,S		; 23 84
	lsr A		; 4A
	ora $9A.b,S		; 03 9A
	bpl -52.b		; 10 CC
	jmp.w [$3023]		; DC 23 30
	dey		; 88
	eor ($DF.b),Y		; 51 DF
	rol $F21A.w		; 2E 1A F2
	cmp $942136.l,X		; DF 36 21 94
	and ($22.b,S),Y		; 33 22
	asl $2DD0.w,X		; 1E D0 2D
	cmp $88E21D.l		; CF 1D E2 88
	ora $F121.w		; 0D 21 F1
	dec $2FE3.w,X		; DE E3 2F
	ldy #$20.b		; A0 20
	dey		; 88
	bit $1C.b,X		; 34 1C
	ora ($3C.b)		; 12 3C
	ldy $4A34.w,X		; BC 34 4A
	cmp ($A8.b,X)		; C1 A8
	brk $20.b		; 00 20
	brk $F2.b		; 00 F2
	asl $02A4.w,X		; 1E A4 02
	beq -104.b		; F0 98
	bne  37.b		; D0 25
	sbc $3C3F.w,X		; FD 3F 3C
	phx		; DA
	.db $62, $DE, $B4		; 62 DE B4
	ora ($12.b,X)		; 01 12
	jsr $FFE0.w		; 20 E0 FF
	cmp $B41424.l		; CF 24 14 B4
	rol $DCDE.w		; 2E DE DC
	cmp $63.b		; C5 63
	eor $EA.b,S		; 43 EA
	inc $ECC4.w		; EE C4 EC
	bit $22.b,X		; 34 22
	ora $D5FDC0.l,X		; 1F C0 FD D5
	.db $42, $C8		; 42 C8
	sbc $D35ED0.l,X		; FF D0 5E D3
	lsr $DFD1.w,X		; 5E D1 DF
	and ($C4.b,S),Y		; 33 C4
	tsb $30F4.w		; 0C F4 30
	asl $20E0.w,X		; 1E E0 20
	ldx $C434.w,Y		; BE 34 C4
	and ($FD.b,X)		; 21 FD
	beq  16.b		; F0 10
	dec $2F44.w		; CE 44 2F
	inc $F2C4.w		; EE C4 F2
	bpl -51.b		; 10 CD
	and $2F.b,X		; 35 2F
	sbc $21F1.w,X		; FD F1 21
	cpy $CC.b		; C4 CC
	and $30.b		; 25 30
	cpx $31F2.w		; EC F2 31
	phx		; DA
	ora $C4.b		; 05 C4
	eor ($ED.b),Y		; 51 ED
	cmp ($32.b),Y		; D1 32
	nop		; EA
	sbc $61.b		; E5 61
	sbc $D1C4.w		; ED C4 D1
	.db $42, $EB		; 42 EB
	cmp $64.b,S		; C3 64
	sbc $44CF.w		; ED CF 44
	iny		; C8
	wai		; CB
	ora $6E.b		; 05 6E
	dec $32E3.w		; CE E3 32
	jmp.w [$C4F1]		; DC F1 C4
	eor $2E.b		; 45 2E
	cmp $3E14.w,X		; DD 14 3E
	cpy $4015.w		; CC 15 40
	cpy $DC.b		; C4 DC
	sbc $42.b,S		; E3 42
	xba		; EB
	cmp ($32.b,S),Y		; D3 32
	rol $C0BE.w		; 2E BE C0
	sbc ($43.b)		; F2 43
	jsr ($10D0.w,X)		; FC D0 10
	and ($FD.b)		; 32 FD
	beq -64.b		; F0 C0
	and $1F.b,S		; 23 1F
	sbc $0D33FF.l		; EF FF 33 0D
	sbc $3DB024.l		; EF 24 B0 3D
	ldx $56FE.w,Y		; BE FE 56
	phd		; 0B
	cmp $B03D46.l,X		; DF 46 3D B0
	ldx $56FE.w,Y		; BE FE 56
	phd		; 0B
	sbc $CE2D35.l		; EF 35 2D CE
	bcs  14.b		; B0 0E
	eor $0C.b		; 45 0C
	sbc $DE2D35.l		; EF 35 2D DE
	inc $55B0.w,X		; FE B0 55
	tsb $35EF.w		; 0C EF 35
	and $FEDF.w		; 2D DF FE
	ror $B0.b		; 66 B0
	phd		; 0B
	sbc $CE2C46.l		; EF 46 2C CE
	sbc $0B56.w,X		; FD 56 0B
	ldy $21.b,X		; B4 21
	eor ($CA.b,S),Y		; 53 CA
	cop $1E.b		; 02 1E
	stz $AB.b		; 64 AB
	ora ($B4.b),Y		; 11 B4
	eor ($DA.b,S),Y		; 53 DA
	sbc ($1F.b)		; F2 1F
	eor $AB.b		; 45 AB
	ora $33.b,S		; 03 33
	cpy #$2E.b		; C0 2E
	sbc $1FF40F.l		; EF 0F F4 1F
	sbc $B02F02.l		; EF 02 2F B0
	dec $D5FF.w,X		; DE FF D5
	bvc -66.b		; 50 BE
	pea $DD51.w		; F4 51 DD
	ldy $20.b,X		; B4 20
	cpx $5B.b		; E4 5B
	cmp $BF3E33.l		; CF 33 3E BF
	ora ($B0.b)		; 12 B0
	sbc $FB64.w,X		; FD 64 FB
	cpx #$55.b		; E0 55
	tsb $0DD0.w		; 0C D0 0D
	bcs  22.b		; B0 16
	ora $35CF.w,X		; 1D CF 35
	and $1ECF.w		; 2D CF 1E
	dec $B4.b,X		; D6 B4
	cpx $25C2.w		; EC C2 25
	asl A		; 0A
	cmp ($20.b)		; D2 20
	cmp $4B.b,X		; D5 4B
	bcs -51.b		; B0 CD
	pea $CD51.w		; F4 51 CD
	beq -33.b		; F0 DF
	.db $62, $EC, $B0		; 62 EC B0
	sbc ($63.b),Y		; F1 63
	jmp.w [$FEE0]		; DC E0 FE
	eor ($FC.b,S),Y		; 53 FC
	sbc ($B0.b),Y		; F1 B0
	mvn $D0,$EB		; 54 EB D0
	ora $FC54.w		; 0D 54 FC
	beq  68.b		; F0 44
	bcs  -5.b		; B0 FB
	cmp $FC440E.l,X		; DF 0E 44 FC
	beq  68.b		; F0 44
	jsr ($DFB0.w,X)		; FC B0 DF
	ora $0C35.w		; 0D 35 0C
	cpx #$45.b		; E0 45
	tsb $B0CE.w		; 0C CE B0
	asl $FC34.w		; 0E 34 FC
	cpx #$44.b		; E0 44
	tsb $0EDE.w		; 0C DE 0E
	bcs  53.b		; B0 35
	tsb $34F0.w		; 0C F0 34
	tsb $FEDE.w		; 0C DE FE
	eor $B0.b		; 45 B0
	jsr ($44F1.w,X)		; FC F1 44
	tsb $FFDE.w		; 0C DE FF
	mvp $B0,$EC		; 44 EC B0
	sbc ($43.b),Y		; F1 43
	cpx $F0EF.w		; EC EF F0
	eor ($DD.b)		; 52 DD
	ora $B0.b,S		; 03 B0
	eor ($CB.b,X)		; 41 CB
	cpx #$F3.b		; E0 F3
	lsr $34C0.w		; 4E C0 34
	rol $BDB0.w		; 2E B0 BD
	ora $D12DF5.l		; 0F F5 2D D1
	bit $1C.b,X		; 34 1C
	lda $1DB8.w,X		; BD B8 1D
	phy		; 5A
	cpy $41.b		; C4 41
	cpx $41E2.w		; EC E2 41
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	bvc -34.b		; 50 DE
	ora ($30.b)		; 12 30
	cpy $05EF.w		; CC EF 05
	and $F4B4.w,X		; 3D B4 F4
	and ($EC.b,X)		; 21 EC
	sbc $2F.b,S		; E3 2F
	jsl $B423CE.l		; 22 CE 23 B4
	brk $CE.b		; 00 CE
	ora ($01.b)		; 12 01
	jmp $41D1.w		; 4C D1 41
	sbc $C1B4.w,X		; FD B4 C1
	and ($F4.b),Y		; 31 F4
	cpx $1013.w		; EC 13 10
	cpx $B4F2.w		; EC F2 B4
	and ($3E.b,X)		; 21 3E
	cpy #$0D42.w		; C0 42 0D
	dec $2232.w		; CE 32 22
	ldy $EB.b,X		; B4 EB
	ora $3F.b		; 05 3F
	jmp.w [$20F2]		; DC F2 20
	bmi -50.b		; 30 CE
	bcs  19.b		; B0 13
	and ($EB.b),Y		; 31 EB
	cmp $C04E04.l,X		; DF 04 4E C0
	mvp $DF,$B8		; 44 B8 DF
	ora $00.b,X		; 15 00
	sbc $6ED4.w,X		; FD D4 6E
	cmp $B8F4.w		; CD F4 B8
	eor $44DEE1.l		; 4F E1 DE 44
	xce		; FB
	cmp ($43.b),Y		; D1 43
	sbc $04EEB8.l,X		; FF B8 EE 04
	lsr $379D.w		; 4E 9D 37
	asl $02DE.w,X		; 1E DE 02
	clv		; B8
	eor ($E9.b,X)		; 41 E9
	dec $51.b,X		; D6 51
	cpx $33F0.w		; EC F0 33
	ora $9AB4.w,X		; 1D B4 9A
	tsb $32.b		; 04 32
	sbc $35E1.w,X		; FD E1 35
	asl A		; 0A
	ldy #$30B8.w		; A0 B8 30
	sbc $32E1.w,X		; FD E1 32
	rol A		; 2A
	ldx #$0F62.w		; A2 62 0F
	cpy #$EF1F.w		; C0 1F EF
	trb $3E.b		; 14 3E
	dec $1001.w		; CE 01 10
	sbc $1A21B8.l,X		; FF B8 21 1A
	ldy $60.b,X		; B4 60
	sbc $2022D0.l,X		; FF D0 22 20
	cpy #$CE1D.w		; C0 1D CE
	cop $20.b		; 02 20
	sbc $DD4102.l		; EF 02 41 DD
	cpy #$11F0.w		; C0 F0 11
	ora $0D34F0.l		; 0F F0 34 0D
	dec $C401.w,X		; DE 01 C4
	asl $13F0.w,X		; 1E F0 13
	ora $21C0.w,X		; 1D C0 21
	and $02C4FF.l		; 2F FF C4 02
	and ($CD.b,X)		; 21 CD
	cop $12.b		; 02 12
	asl $23F0.w		; 0E F0 23
	iny		; C8
	jmp.w [$0114]		; DC 14 01
	ora $21F1.w		; 0D F1 21
	trb $C8D1.w		; 1C D1 C8
	eor ($0F.b,X)		; 41 0F
	sbc $CE0013.l		; EF 13 00 CE
	bit $0F.b		; 24 0F
	clv		; B8
	tsb $62E2.w		; 0C E2 62
	tsx		; BA
	sbc $51.b		; E5 51
	sbc $32C8AF.l,X		; FF AF C8 32
	asl $33C0.w		; 0E C0 33
	beq  -3.b		; F0 FD
	ora ($3E.b)		; 12 3E
	cpy $FD.b		; C4 FD
	bne  33.b		; D0 21
	jsr $13EE.w		; 20 EE 13
	and $41C8CD.l		; 2F CD C8 41
	sbc ($EC.b),Y		; F1 EC
	bit $2D.b		; 24 2D
	cmp $0F34.w,X		; DD 34 0F
	iny		; C8
	asl $40E2.w		; 0E E2 40
	cmp $3FF3.w,X		; DD F3 3F
	ora $03C4ED.l,X		; 1F ED C4 03
	bmi -36.b		; 30 DC
	sbc ($22.b)		; F2 22
	and $33C1.w		; 2D C1 33
	cpy $FE.b		; C4 FE
	cmp $EC2131.l		; CF 31 21 EC
	trb $2F.b		; 14 2F
	jmp.w [$15B4]		; DC B4 15
	and $4A.b,S		; 23 4A
	sta ($73.b,S),Y		; 93 73
	plx		; FA
	ldy #$C431.w		; A0 31 C4
	and ($DC.b)		; 32 DC
	ora ($20.b,S),Y		; 13 20
	jmp.w [$2302]		; DC 02 23
	trb $D1C4.w		; 1C C4 D1
	eor ($0D.b,X)		; 41 0D
	cmp ($21.b,X)		; C1 21
	jsl $C413CD.l		; 22 CD 13 C4
	jsr $01DD.w		; 20 DD 01
	ora ($3C.b,S),Y		; 13 3C
	cmp ($32.b,X)		; C1 32
	asl $C0C4.w		; 0E C4 C0
	ora ($33.b),Y		; 11 33
	cpy BG4HOFS.w		; CC 13 21
	cpx $C0F1.w		; EC F1 C0
	sbc ($63.b),Y		; F1 63
	cmp $4302.w,X		; DD 02 43
	cpx $F6DE.w		; EC DE F6
	cpy #$CF4E.w		; C0 4E CF
	trb $4F.b		; 14 4F
	cmp $45FF.w		; CD FF 45
	tsb $22C4.w		; 0C C4 22
	and ($DC.b),Y		; 31 DC
	ora ($03.b,X)		; 01 03
	jmp $22C0.w		; 4C C0 22
	cpy #$ED42.w		; C0 42 ED
	sbc $DF4EF5.l		; EF F5 4E DF
	ora $40.b,S		; 03 40
	cpy $D0.b		; C4 D0
	bpl  67.b		; 10 43
	cpy $3211.w		; CC 11 32
	cpx $C0F1.w		; EC F1 C0
	sbc $F0ED53.l,X		; FF 53 ED F0
	bit $0D.b,X		; 34 0D
	cmp $4CC4F1.l,X		; DF F1 C4 4C
	bne  18.b		; D0 12
	and $F501CF.l,X		; 3F CF 01 F5
	trb $DFC0.w		; 1C C0 DF
	sbc ($41.b)		; F2 41
	dec $F4FF.w,X		; DE FF F4
	and $F3C0DF.l,X		; 3F DF C0 F3
	rti		; 40

	dec $05FF.w,X		; DE FF 05
	rol $04EF.w		; 2E EF 04
	cpy $FC.b		; C4 FC
	beq  31.b		; F0 1F
	bit $CD.b,X		; 34 CD
	ora ($23.b,X)		; 01 23
	jsr ($EEC0.w,X)		; FC C0 EE
	inc $0D34.w,X		; FE 34 0D
	inc $2E24.w		; EE 24 2E
	inc $FEC0.w		; EE C0 FE
	mvp $EE,$0D		; 44 0D EE
	bit $2F.b		; 24 2F
	sbc $C8EF.w		; ED EF C8
	rol $30B0.w,X		; 3E B0 30
	eor $3E01CF.l		; 4F CF 01 3E
	eor $0FCDC4.l		; 4F C4 CD 0F
	eor $0D.b,S		; 43 0D
	cmp $DC5210.l,X		; DF 10 52 DC
	cpy $0F.b		; C4 0F
	eor $0D.b,S		; 43 0D
	dec $5211.w,X		; DE 11 52
	jmp.w [$C8FF]		; DC FF C8
	bvc -51.b		; 50 CD
	ora ($30.b,X)		; 01 30
	tad		; 5B
	cmp $C86F30.l		; CF 30 6F C8
	cmp $31F2.w		; CD F2 31
	eor $22DF.w,Y		; 59 DF 22
	eor $02C8DB.l,X		; 5F DB C8 02
	and ($3B.b)		; 32 3B
	dec $6E32.w		; CE 32 6E
	stp		; DB
	ora ($C8.b,X)		; 01 C8
	.db $42, $4A		; 42 4A
	dec $7F31.w		; CE 31 7F
	cpy $42E2.w		; CC E2 42
	iny		; C8
	lsr A		; 4A
	cmp $DC6012.l		; CF 12 60 DC
	cmp ($44.b),Y		; D1 44
	bit $CEC8.w		; 2C C8 CE
	ora $51.b,S		; 03 51
	cpx $34C1.w		; EC C1 34
	and $C8CE.w,X		; 3D CE C8
	cpx $40.b		; E4 40
	trb $42C0.w		; 1C C0 42
	bpl -20.b		; 10 EC
	bpl -80.b		; 10 B0
	lda ($41.b),Y		; B1 41
	bpl -17.b		; 10 EF
	bpl   2.b		; 10 02
	ora ($0E.b),Y		; 11 0E
	ldy $C3.b		; A4 C3
	mvn $CC,$2F		; 54 2F CC
	sbc ($1F.b)		; F2 1F
	ora ($11.b,X)		; 01 11
	ldy $2E.b		; A4 2E
	cpx #$1B01.w		; E0 01 1B
	cmp $12.b,X		; D5 12
	eor $A4D1.w		; 4D D1 A4
	beq  45.b		; F0 2D
	lda ($30.b)		; B2 30
	eor $CF.b,S		; 43 CF
	asl $A411.w		; 0E 11 A4
	ldx $2540.w,Y		; BE 40 25
	ora $F10E.w		; 0D 0E F1
	sbc $9431.w		; ED 31 94
	cmp $6E.b,X		; D5 6E
	jsr $EBBE.w		; 20 BE EB
	eor $FD.b		; 45 FD
	bpl -108.b		; 10 94
	trb $2D.b		; 14 2D
	sbc $40E3.w		; ED E3 40
	sbc $8830DF.l,X		; FF DF 30 88
	asl $4FF1.w,X		; 1E F1 4F
	ora $5E23CC.l,X		; 1F CC 23 5E
	jsr ($2188.w,X)		; FC 88 21
	cop $2E.b		; 02 2E
	lda MPYL.w		; AD 34 21
	jsr ($88F2.w,X)		; FC F2 88
	ora $2D.b,S		; 03 2D
	ldx $3205.w,Y		; BE 05 32
	sbc $11FF.w		; ED FF 11
	dey		; 88
	lsr $03BD.w,X		; 5E BD 03
	adc $03BE1F.l		; 6F 1F BE 03
	eor ($84.b),Y		; 51 84
	tsb $F5CC.w		; 0C CC F5
	mvp $DE,$ED		; 44 ED DE
	eor $2D.b,S		; 43 2D
	dey		; 88
	sbc ($23.b),Y		; F1 23
	bit $100D.w		; 2C 0D 10
	eor ($DF.b,X)		; 41 DF
	cmp ($88.b),Y		; D1 88
	ora ($10.b,S),Y		; 13 10
	dec $4F01.w,X		; DE 01 4F
	sbc $7021FE.l,X		; FF FE 21 70
	ora $30.b,S		; 03 30
	phx		; DA
	cpx #$FB02.w		; E0 02 FB
	ldy $74E1.w		; AC E1 74
	ora $1310ED.l,X		; 1F ED 10 13
	sbc $20E1.w,X		; FD E1 20
	jsr $DD74.w		; 20 74 DD
	and $3FFB21.l,X		; 3F 21 FB 3F
	ora ($2F.b,X)		; 01 2F
	inc $1E64.w,X		; FE 64 1E
	eor $0B.b,S		; 43 0B
	sbc ($00.b),Y		; F1 00
	and $642DEF.l		; 2F EF 2D 64
	bpl  12.b		; 10 0C
	.db $42, $A0		; 42 A0
	ora ($F6.b,S),Y		; 13 F6
	stz $74DE.w,X		; 9E DE 74
	ora ($4F.b)		; 12 4F
	dec $14F0.w,X		; DE F0 14
	asl $02DF.w		; 0E DF 02
	stz $64.b		; 64 64
	tsx		; BA
	sbc $4E25.w		; ED 25 4E
	xce		; FB
	cpy $14.b		; C4 14
	stz $2A.b		; 64 2A
	stp		; DB
	adc $EFFE40.l		; 6F 40 FE EF
	eor $FE640F.l,X		; 5F 0F 64 FE
	sbc $F1.b		; E5 F1
	asl $21EE.w		; 0E EE 21
	ora $CB.b,X		; 15 CB
	stz $E0.b,X		; 74 E0
	and ($00.b),Y		; 31 00
	jsr ($F104.w,X)		; FC 04 F1
	trb $64F0.w		; 1C F0 64
	adc $E1DA32.l		; 6F 32 DA E1
	and $0E.b,S		; 23 0E
	bne  32.b		; D0 20
	stz $02.b		; 64 02
	sbc $E110.w,X		; FD 10 E1
	and $010FB4.l		; 2F B4 0F 01
	stz $00.b		; 64 00
	inc $F1E5.w,X		; FE E5 F1
	sbc ($0E.b,X)		; E1 0E
	ora ($20.b,X)		; 01 20
	stz $EC.b		; 64 EC
	cop $21.b		; 02 21
	ora ($0C.b,X)		; 01 0C
	jsr $1F0F.w		; 20 0F 1F
	stz $F3.b		; 64 F3
	rtl		; 6B

	stp		; DB
	trb $2E.b		; 14 2E
	sbc $5A41.w		; ED 41 5A
	sty $EF.b,X		; 94 EF
	bpl   0.b		; 10 00
	bpl  34.b		; 10 22
	cpx $20D2.w		; EC D2 20
	tya		; 98
	bpl -44.b		; 10 D4
	ora $A71D.w,X		; 1D 1D A7
	jmp $A4A1F6.l		; 5C F6 A1 A4
	and ($DF.b)		; 32 DF
	ldx $F321.w,Y		; BE 21 F3
	and ($32.b,X)		; 21 32
	stp		; DB
	tay		; A8
	ora ($31.b),Y		; 11 31
	sbc ($1F.b)		; F2 1F
	trb $24DD.w		; 1C DD 24
	bpl -88.b		; 10 A8
	bmi   2.b		; 30 02
	lda $62DF.w		; AD DF 62
	ora ($10.b)		; 12 10
	tas		; 1B
	clv		; B8
	cmp $112102.l,X		; DF 02 21 11
	sbc ($CD.b),Y		; F1 CD
	beq  66.b		; F0 42
	clv		; B8
	ora ($00.b),Y		; 11 00
	sbc $06C1.w		; ED C1 06
	ora ($02.b),Y		; 11 02
	dec $BAB4.w		; CE B4 BA
	lda $4644.w,X		; BD 44 46
	and $BBDA.w,X		; 3D DA BB
	lsr $C4.b		; 46 C4
	and $1E.b,S		; 23 1E
	dec $43EE.w,X		; DE EE 43
	ora ($0C.b)		; 12 0C
	cpx #$DDC0.w		; E0 C0 DD
	ora ($34.b,S),Y		; 13 34
	ora $EFEF.w,X		; 1D EF EF
	and ($22.b)		; 32 22
	ldy $AC.b,X		; B4 AC
	eor ($0E.b)		; 52 0E
	ora $33FD12.l,X		; 1F 12 FD 33
	sbc $C7B8.w,X		; FD B8 C7
	rti		; 40

	sbc $40B2.w,X		; FD B2 40
	pld		; 2B
	lda [$4D.b],Y		; B7 4D
	cpy $21.b		; C4 21
	inc $1010.w		; EE 10 10
	cmp $1242.w,X		; DD 42 12
	xce		; FB
	cpy #$F3EE.w		; C0 EE F3
	trb $03F0.w		; 1C F0 03
	and $C002F0.l,X		; 3F F0 02 C0
	trb $12D1.w		; 1C D1 12
	and $3E02DF.l,X		; 3F DF 02 3E
	cpy #$01C4.w		; C0 C4 01
	rol $01D1.w,X		; 3E D1 01
	ora $20C4.w,X		; 1D C4 20
	and $11B1C4.l,X		; 3F C4 B1 11
	and $31B3.w		; 2D B3 31
	jsr $21BF.w		; 20 BF 21
	cpy #$BE31.w		; C0 31 BE
	ora ($34.b),Y		; 11 34
	inc $21F1.w,X		; FE F1 21
	cpy $01C0.w		; CC C0 01
	bit $0E.b,X		; 34 0E
	beq  34.b		; F0 22
	jmp.w [$2401]		; DC 01 24
	cpy $DD.b		; C4 DD
	ora ($20.b),Y		; 11 20
	cmp $1242.w		; CD 42 12
	cpx $C411.w		; EC 11 C4
	and ($CC.b,X)		; 21 CC
	.db $42, $12		; 42 12
	xce		; FB
	cop $12.b		; 02 12
	stp		; DB
	cpy #$14E1.w		; C0 E1 14
	rol $13E0.w		; 2E E0 13
	phd		; 0B
	sbc ($13.b,X)		; E1 13
	cpy #$E03F.w		; C0 3F E0
	ora ($1C.b)		; 12 1C
	bne  19.b		; D0 13
	rti		; 40

	sbc $1D02C0.l		; EF C0 02 1D
	cpy #$4013.w		; C0 13 40
	sbc $C42D01.l		; EF 01 2D C4
	pea $1E11.w		; F4 11 1E
	cmp ($11.b),Y		; D1 11
	ora $11C4.w,X		; 1D C4 11
	cpy $2F.b		; C4 2F
	cmp ($01.b,X)		; C1 01
	and $10C4.w		; 2D C4 10
	and $01C4D0.l,X		; 3F D0 C4 01
	rol $20B3.w		; 2E B3 20
	bmi -64.b		; 30 C0
	brk $2F.b		; 00 2F
	cpy #$00CE.w		; C0 CE 00
	and ($0F.b,S),Y		; 33 0F
	sbc $00DE11.l,X		; FF 11 DE 00
	bcs  70.b		; B0 46
	asl $23FE.w		; 0E FE 23
	tsx		; BA
	brk $37.b		; 00 37
	asl $2EB4.w,X		; 1E B4 2E
	and $AC.b,S		; 23 AC
	adc ($15.b,X)		; 61 15
	cpy $132E.w		; CC 2E 13
	ldy $BB.b,X		; B4 BB
	adc ($16.b,X)		; 61 16
	jmp.w [$041E]		; DC 1E 04
	dex		; CA
	adc ($B4.b,X)		; 61 B4
	asl $FB.b		; 06 FB
	ora $42EAF3.l,X		; 1F F3 EA 42
	ora $1B.b		; 05 1B
	ldy $1F.b,X		; B4 1F
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	and ($F3.b)		; 32 F3
	rol $E000.w		; 2E 00 E0
	ldy $FB.b		; A4 FB
	bit $E2.b		; 24 E2
	and $0FDF11.l,X		; 3F 11 DF 0F
	jsr $DB80.w		; 20 80 DB
	inc $0E13.w		; EE 13 0E
	inc $1024.w		; EE 24 10
	and $F35D88.l,X		; 3F 88 5D F3
	brk $11.b		; 00 11
	sbc $211D3C.l		; EF 3C 1D 21
	sty $00.b		; 84 00
	and ($03.b),Y		; 31 03
	ora ($2C.b,X)		; 01 2C
	dec $41FE.w		; CE FE 41
	dey		; 88
	cpx $1C.b		; E4 1C
	rol $1FB3.w		; 2E B3 1F
	eor $742EF1.l		; 4F F1 2E 74
	eor ($CB.b)		; 52 CB
	ldy $C10F.w,X		; BC 0F C1
	eor $45.b,X		; 55 45
	inc $0A74.w		; EE 74 0A
	ora $6611AD.l		; 0F AD 11 66
	inc $133E.w,X		; FE 3E 13
	sei		; 78
	ldy $0560.w		; AC 60 05
	ldx $E46E.w,Y		; BE 6E E4
	lda ($F1.b),Y		; B1 F1
	stz $F3.b,X		; 74 F3
	lda $0310.w		; AD 10 03
	and $CA1312.l,X		; 3F 12 13 CA
	stz $0F.b,X		; 74 0F
	cmp ($2F.b,S),Y		; D3 2F
	and $0F0E04.l		; 2F 04 0E 0F
	ora ($78.b,X)		; 01 78
	cpx #$D3.b		; E0 D3
	tsb $DF.b		; 04 DF
	jsr $FCC5.w		; 20 C5 FC
	ora ($64.b,X)		; 01 64
.ACCU 16
	rep #$2F		; C2 2F
	and $A4.b,S		; 23 A4
	eor $2EE0FF.l		; 4F FF E0 2E
	stz $2D.b		; 64 2D
	sbc $B30240.l,X		; FF 40 02 B3
	asl $CF01.w		; 0E 01 CF
	rts		; 60

	and ($22.b),Y		; 31 22
	cmp $E9F2EE.l,X		; DF EE F2 E9
	bne   1.b		; D0 01
	pla		; 68
	cmp ($10.b),Y		; D1 10
	phk		; 4B
	cmp ($31.b)		; D2 31
	cmp ($EF.b)		; D2 EF
	ora ($60.b)		; 12 60
	and ($EC.b)		; 32 EC
	cpy #$00.b		; C0 00
	sbc $DDD32F.l,X		; FF 2F D3 DD
	rts		; 60

	sbc $021FEF.l		; EF EF 1F 02
	cmp ($FB.b,S),Y		; D3 FB
	cmp $DC50FE.l		; CF FE 50 DC
	cpx #$26.b		; E0 26
	eor $0DC2.w,X		; 5D C2 0D
	cpx $60CE.w		; EC CE 60
	cop $2F.b		; 02 2F
	and ($C3.b)		; 32 C3
	and ($3E.b)		; 32 3E
	sbc $70DC.w		; ED DC 70
	sbc $123303.l,X		; FF 03 33 12
	lsr $54.b,X		; 56 54
	and $94CC.w,X		; 3D CC 94
	sbc $0101F1.l,X		; FF F1 01 01
	ora ($0D.b,X)		; 01 0D
	ora $1F.b,S		; 03 1F
	sty $1F.b,X		; 94 1F
	cpx #$10.b		; E0 10
	ora ($DC.b)		; 12 DC
	bit $E0.b		; 24 E0
	and $02A4.w		; 2D A4 02
	brk $0C.b		; 00 0C
	pei ($1E.b)		; D4 1E
	and ($04.b),Y		; 31 04
	ora $FDB4.w,X		; 1D B4 FD
	cmp ($21.b)		; D2 21
	and ($F0.b)		; 32 F0
	cpx $24C0.w		; EC C0 24
	ldy $44.b,X		; B4 44
	sbc $CFDC.w,X		; FD DC CF
	eor $53.b,X		; 55 53
	nop		; EA
	cmp $E0C4.w,X		; DD C4 E0
	and ($12.b,S),Y		; 33 12
	cpx $F00F.w		; EC 0F F0
	and ($11.b)		; 32 11
	bcs  27.b		; B0 1B
	cmp $2323FD.l,X		; DF FD 23 23
	tsb $4103.w		; 0C 03 41
	cpy #$DE.b		; C0 DE
	beq  18.b		; F0 12
	ora ($10.b)		; 12 10
	sbc $23C1.w,X		; FD C1 23
	iny		; C8
	inc $01F4.w,X		; FE F4 01
	phd		; 0B
	sbc ($4F.b,S),Y		; F3 4F
	asl $C0C0.w,X		; 1E C0 C0
	dec $1C14.w,X		; DE 14 1C
	sbc $FF2E14.l,X		; FF 14 2E FF
	trb $C4.b		; 14 C4
	phx		; DA
	and $13.b,S		; 23 13
	asl A		; 0A
	ora ($23.b,X)		; 01 23
	plx		; FA
	pei ($C0.b)		; D4 C0
	tsb $51.b		; 04 51
	cmp $40F2.w,X		; DD F2 40
	ldy $54F3.w,X		; BC F3 54
	cpy $AE.b		; C4 AE
	and $30.b,S		; 23 30
	tyx		; BB
	and $31.b		; 25 31
	sbc #$D0F3.w		; E9 F3 D0
	ora ($1E.b,S),Y		; 13 1E
	cmp $DE3013.l		; CF 13 30 DE
	ora $30.b,S		; 03 30
	cpy $B0.b		; C4 B0
	mvp $BE,$1E		; 44 1E BE
	bit $2F.b,X		; 34 2F
	lda $C434.w		; AD 34 C4
	bmi -68.b		; 30 BC
	ora ($50.b,S),Y		; 13 50
	stp		; DB
	sbc ($52.b,S),Y		; F3 52
	jmp.w [$D2C4]		; DC C4 D2
	and ($1C.b,S),Y		; 33 1C
	bne  35.b		; D0 23
	and $11DF.w		; 2D DF 11
	cpy #$34.b		; C0 34
	asl $24EF.w		; 0E EF 24
	asl $04DE.w,X		; 1E DE 04
	bmi -64.b		; 30 C0
	inc $31F2.w		; EE F2 31
	inc $42E0.w		; EE E0 42
	inc $C4EF.w,X		; FE EF C4
	rti		; 40

	dec $1401.w,X		; DE 01 14
	sbc $13F1.w		; ED F1 13
	ora $C0B4.w		; 0D B4 C0
	bit $6B.b		; 24 6B
	ldy #$13.b		; A0 13
	ror $11AD.w		; 6E AD 11
	cpy $42.b		; C4 42
	cmp $3301.w		; CD 01 33
	xba		; EB
	sbc ($15.b),Y		; F1 15
	tas		; 1B
	cpy $E0.b		; C4 E0
	trb $2D.b		; 14 2D
	cmp $CE5F12.l		; CF 12 5F CE
	cop $C4.b		; 02 C4
	and ($CC.b)		; 32 CC
	ora ($24.b),Y		; 11 24
	cpx $24F1.w		; EC F1 24
	jsr ($D1C4.w,X)		; FC C4 D1
	ora ($4C.b,S),Y		; 13 4C
	cpy #$13.b		; C0 13
	rol $11CE.w,X		; 3E CE 11
	cpy $51.b		; C4 51
	cmp $3302.w		; CD 02 33
	cpy $15F2.w		; CC F2 15
	jsr ($E0C4.w,X)		; FC C4 E0
	bit $1C.b		; 24 1C
	cmp ($12.b,X)		; C1 12
	lsr $12CF.w		; 4E CF 12
	cpy $4F.b		; C4 4F
	cmp $4211.w		; CD 11 42
	jmp.w [$3301]		; DC 01 33
	xba		; EB
	cpy #$CE.b		; C0 CE
	pea $DD40.w		; F4 40 DD
	sbc ($51.b,S),Y		; F3 51
	jmp.w [$C0E0]		; DC E0 C0
	mvn $D0,$FD		; 54 FD D0
	mvp $DE,$0C		; 44 0C DE
	ora $3E.b,X		; 15 3E
	cpy $E2.b		; C4 E2
	bit $FC.b		; 24 FC
	cmp ($14.b),Y		; D1 14
	rol $23CE.w		; 2E CE 23
	cpy #$43.b		; C0 43
	cpx $34DF.w		; EC DF 34
	ora $24DF.w		; 0D DF 24
	and $75B8.w		; 2D B8 75
	eor $2327A9.l		; 4F A9 27 23
	lda #$6F15.w		; A9 15 6F
	clv		; B8
	jmp.w [$60D3]		; DC D3 60
	lda $EFF230.l,X		; BF 30 F2 EF
	and $EE0EB4.l,X		; 3F B4 0E EE
	eor ($0D.b,S),Y		; 53 0D
	sbc $BE2D14.l		; EF 14 2D BE
	ldy $34.b,X		; B4 34
	and $3E04CD.l,X		; 3F CD 04 3E
	cmp $A41122.l		; CF 22 11 A4
	lda $EC22.w,X		; BD 22 EC
	ora $3E.b,X		; 15 3E
	sbc $50F3.w		; ED F3 50
	ldy $9B.b		; A4 9B
	and $51.b		; 25 51
	stp		; DB
	cpx $3E.b		; E4 3E
	lda ($41.b),Y		; B1 41
	ldy $00.b		; A4 00
	sbc $04DB22.l		; EF 22 DB 04
	and ($0D.b),Y		; 31 0D
.ACCU 8
	sep #$A4		; E2 A4
	ora $1F42C0.l,X		; 1F C0 42 1F
	cmp $23DD21.l,X		; DF 21 DD 23
	ldy $20.b		; A4 20
	inc $EC02.w,X		; FE 02 EC
	ora ($21.b,S),Y		; 13 21
	asl $98E0.w,X		; 1E E0 98
	ora #$75.b		; 09 75
	sbc $1DF1FD.l		; EF FD F1 1D
	and $F0.b		; 25 F0
	sty $52.b		; 84 52
	plb		; AB
	phx		; DA
	cpx $41.b		; E4 41
	mvp $AD,$1C		; 44 1C AD
	sty $F2.b,X		; 94 F2
	ora $EC3012.l		; 0F 12 30 EC
	cpx $3D.b		; E4 3D
	cmp ($90.b,X)		; C1 90
	ora $41.b,S		; 03 41
	ldy $FE22.w,X		; BC 22 FE
	sbc $80FE02.l,X		; FF 02 FE 80
	ora ($CD.b)		; 12 CD
	ora ($E0.b),Y		; 11 E0
	jsr ($1FC0.w,X)		; FC C0 1F
	sbc ($84.b),Y		; F1 84
	asl $DF00.w,X		; 1E 00 DF
	and $EF.b,S		; 23 EF
	ora ($00.b),Y		; 11 00
	sbc $34D264.l		; EF 64 D2 34
	lsr $F1E0.w		; 4E E0 F1
	lda ($11.b,X)		; A1 11
	lda $E03274.l,X		; BF 74 32 E0
	cpx #$32.b		; E0 32
	cmp $0EF40E.l		; CF 0E F4 0E
	stz $E3.b,X		; 74 E3
	ora ($0B.b)		; 12 0B
	inc $1E32.w,X		; FE 32 1E
	sbc $FC7450.l,X		; FF 50 74 FC
	inc $0034.w		; EE 34 00
	inc $EFF3.w,X		; FE F3 EF
	cop $64.b		; 02 64
	bne  32.b		; D0 20
	eor $12AF.w		; 4D AF 12
	jsl $6412CC.l		; 22 CC 12 64
	and ($DC.b)		; 32 DC
	sbc $41.b,S		; E3 41
	lda ($F0.b),Y		; B1 F0
	and ($EE.b),Y		; 31 EE
	bvc -101.b		; 50 9B
	adc ($30.b,S),Y		; 73 30
	cmp $0E02.w		; CD 02 0E
	cmp $50E0.w,X		; DD E0 50
	ora $B0F1FE.l		; 0F FE F1 B0
	asl $D1FF.w,X		; 1E FF D1
	ror A		; 6A
	bvc -47.b		; 50 D1
	ora $F0DE1F.l		; 0F 1F DE F0
	ora ($11.b),Y		; 11 11
	bcc  80.b		; 90 50
	bvs  -1.b		; 70 FF
	sbc $FFF00F.l,X		; FF 0F F0 FF
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($C1.b,X)		; 01 C1
	sbc $1F1F12.l		; EF 12 1F 1F
	beq  31.b		; F0 1F
	sei		; 78
	brk $01.b		; 00 01
	and $00E2.w		; 2D E2 00
	bpl -31.b		; 10 E1
	tsb $0190.w		; 0C 90 01
	beq -18.b		; F0 EE
	and ($01.b,S),Y		; 33 01
	and $98DCEF.l		; 2F EF DC 98
	jsr $FD12.w		; 20 12 FD
	sbc $120E03.l		; EF 03 0E 12
	bit $A8.b		; 24 A8
	ora $12FD.w		; 0D FD 12
	beq  17.b		; F0 11
	jsl $A8DE1C.l		; 22 1C DE A8
	ora ($11.b,X)		; 01 11
	brk $32.b		; 00 32
	bit $F2DD.w		; 2C DD F2
	ora ($A8.b),Y		; 11 A8
	sbc ($05.b)		; F2 05
	ora $D3CE.w,X		; 1D CE D3
	ora ($F2.b),Y		; 11 F2
	ora ($A8.b)		; 12 A8
	lsr $F19E.w		; 4E 9E F1
	jsr $2111.w		; 20 11 21
	eor $A8BD.w		; 4D BD A8
	beq  34.b		; F0 22
	ora ($22.b,X)		; 01 22
	rol $E29E.w,X		; 3E 9E E2
	ora ($A8.b),Y		; 11 A8
	and $CC4A33.l		; 2F 33 4A CC
	sbc ($11.b)		; F2 11
	ora ($14.b)		; 12 14
	tay		; A8
	bit $E29F.w		; 2C 9F E2
	ora ($20.b),Y		; 11 20
	bit $1A.b,X		; 34 1A
	cmp $01A8.w		; CD A8 01
	ora ($02.b)		; 12 02
	bit $1A.b		; 24 1A
	lda $A821E2.l,X		; BF E2 21 A8
	cop $33.b		; 02 33
	asl A		; 0A
	cmp $1111E3.l		; CF E3 11 11
	and $A8.b		; 25 A8
	nop		; EA
	cmp $2100F3.l,X		; DF F3 00 21
	bit $DA.b,X		; 34 DA
	inc $F4A8.w,X		; FE A8 F4
	beq  48.b		; F0 30
	and $DA.b		; 25 DA
	sbc $A80E12.l		; EF 12 0E A8
	rti		; 40

	and $BC.b		; 25 BC
	ora $FF13.w		; 0D 13 FF
	jsr $A825.w		; 20 25 A8
	jmp.w [$130C]		; DC 0C 13
	asl $172F.w		; 0E 2F 17
	cmp $980C.w,X		; DD 0C 98
	sbc [$0C.b],Y		; F7 0C
	bmi  23.b		; 30 17
	lsr A		; 4A
	cmp $6CB3.w		; CD B3 6C
	tay		; A8
	sbc ($F0.b,S),Y		; F3 F0
	adc $C0E0.w		; 6D E0 C0
	bmi -15.b		; 30 F1
	brk $A8.b		; 00 A8
	and $DF.b,S		; 23 DF
	inc $FF13.w		; EE 13 FF
	bpl   3.b		; 10 03
	ora $EE98.w,X		; 1D 98 EE
	cmp ($31.b,S),Y		; D3 31
	cmp ($01.b),Y		; D1 01
	and $BF.b,S		; 23 BF
	inc $7488.w		; EE 88 74
	trb $031F.w		; 1C 1F 03
	eor $C4E0.w,Y		; 59 E0 C4
	adc $0E88.w,X		; 7D 88 0E
	cpx #$11.b		; E0 11
	and $0100.w		; 2D 00 01
	lsr $89EE.w,X		; 5E EE 89
	cmp $00.b,S		; C3 00
	eor ($D0.b,X)		; 41 D0
	sbc ($00.b),Y		; F1 00
	sbc ($0F.b),Y		; F1 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora $0511FF.l		; 0F FF 11 05
	sbc ($E0.b),Y		; F1 E0
	beq -34.b		; F0 DE
	sei		; 78
	inc $26F4.w,X		; FE F4 26
	sbc ($F0.b),Y		; F1 F0
	xba		; EB
	inc A		; 1A
	wai		; CB
	tya		; 98
	cop $32.b		; 02 32
	ora $C0EE10.l,X		; 1F 10 EE C0
	sbc $13B404.l		; EF 04 B4 13
	ora ($21.b)		; 12 21
	asl $FEEF.w,X		; 1E EF FE
	cmp $BEA834.l		; CF 34 A8 BE
	and $CB.b,S		; 23 CB
	sbc $2D.b		; E5 2D
	bne  87.b		; D0 57
	plx		; FA
	tay		; A8
	sbc ($2C.b,S),Y		; F3 2C
	lda ($41.b),Y		; B1 41
	bne  64.b		; D0 40
	lda ($42.b)		; B2 42
	ldy $0C.b		; A4 0C
	pea $C12E.w		; F4 2E C1
	eor $31E3CB.l		; 4F CB E3 31
	tay		; A8
	sep #$4F		; E2 4F
	ldy #$21.b		; A0 21
	tsb $151F.w		; 0C 1F 15
	bit $E0A8.w,X		; 3C A8 E0
	lsr $33BE.w,X		; 5E BE 33
	tsb $1400.w		; 0C 00 14
	and $0FA4.w		; 2D A4 0F
	and ($EC.b,S),Y		; 33 EC
	sbc ($3E.b),Y		; F1 3E
	wai		; CB
	cpx $6F.b		; E4 6F
	ldy $F1.b		; A4 F1
	adc $DA.b,S		; 63 DA
	jsl $25AA1C.l		; 22 1C AA 25
	ror $F3B4.w		; 6E B4 F3
	bmi -34.b		; 30 DE
	ora ($ED.b)		; 12 ED
	lda ($45.b),Y		; B1 45
	sbc $0E11C4.l,X		; FF C4 11 0E
	sbc ($1F.b),Y		; F1 1F
	jsr ($3F13.w,X)		; FC 13 3F
	sep #$C4		; E2 C4
	jsr $11DF.w		; 20 DF 11
	asl $43B1.w		; 0E B1 43
	inc $C423.w,X		; FE 23 C4
	sbc $2FF1.w,X		; FD F1 2F
	xba		; EB
	trb $3F.b		; 14 3F
	sbc $2F.b,S		; E3 2F
	iny		; C8
	cmp $00.b,X		; D5 00
	inc $3CF6.w		; EE F6 3C
	cmp ($5D.b),Y		; D1 5D
	dec $21C4.w,X		; DE C4 21
	asl $35A0.w,X		; 1E A0 35
	sbc $E10D13.l,X		; FF 13 0D E1
	cpy $2F.b		; C4 2F
	stp		; DB
	asl $2F.b,X		; 16 2F
	cpx $2E.b		; E4 2E
	cmp ($11.b,X)		; C1 11
	cpy $EB.b		; C4 EB
	sbc ($50.b,S),Y		; F3 50
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	dec $0C21.w,X		; DE 21 0C
	cpy $B2.b		; C4 B2
	adc ($0E.b,X)		; 61 0E
	eor ($DD.b,X)		; 41 DD
	ora ($0C.b)		; 12 0C
	cmp ($C8.b,X)		; C1 C8
	tad		; 5B
	sbc ($3D.b,X)		; E1 3D
	cpx #$31.b		; E0 31
	jmp.w [$2A44]		; DC 44 2A
	iny		; C8
	ora ($FE.b)		; 12 FE
	sbc ($0F.b,S),Y		; F3 0F
	cpx $DC75.w		; EC 75 DC
	ora $C8.b		; 05 C8
	dec $D005.w		; CE 05 D0
	cmp ($45.b,X)		; C1 45
	dec $BFF5.w		; CE F5 BF
	cpy $F1.b		; C4 F1
	asl $44A0.w,X		; 1E A0 44
	brk $2F.b		; 00 2F
	inc $C810.w,X		; FE 10 C8
	ora $5BE6.w		; 0D E6 5B
	sbc $3E204A.l,X		; FF 4A 20 3E
	plx		; FA
	cpy $14.b		; C4 14
	eor $F1FE12.l		; 4F 12 FE F1
	brk $CC.b		; 00 CC
	asl $C4.b,X		; 16 C4
	ora ($F3.b),Y		; 11 F3
	cmp $930EF2.l,X		; DF F2 0E 93
	eor $F1.b,S		; 43 F1
	cpy #$52.b		; C0 52
	ora $BE0A20.l		; 0F 20 0A BE
	and ($33.b,X)		; 21 33
	bmi -60.b		; 30 C4
	brk $1F.b		; 00 1F
	dec $F325.w		; CE 25 F3
	sbc ($D1.b),Y		; F1 D1
	sbc ($C4.b),Y		; F1 C4
	sbc $41C3.w,X		; FD C3 41
	bpl  29.b		; 10 1D
	ora $C4DE1E.l,X		; 1F 1E DE C4
	and ($12.b,S),Y		; 33 12
	ora $FCF0E1.l		; 0F E1 F0 FC
	ora $30.b,S		; 03 30
	cpy $3F.b		; C4 3F
	inc $FF1F.w,X		; FE 1F FF
	lda ($33.b)		; B2 33
	ora $0D.b,S		; 03 0D
	ldy $E2.b,X		; B4 E2
	inc $56AB.w		; EE AB 56
	mvp $DF,$1F		; 44 1F DF
	cmp $040CC4.l		; CF C4 0C 04
	bmi  63.b		; 30 3F
	sbc $C20F0E.l		; EF 0E 0F C2
	cpy $42.b		; C4 42
	cop $0D.b		; 02 0D
	brk $FF.b		; 00 FF
	dec $1342.w,X		; DE 42 13
	cpy $FF.b		; C4 FF
	brk $D1.b		; 00 D1
	xba		; EB
	eor $02.b,S		; 43 02
	and $C400.w,X		; 3D 00 C4
	cpx #$0A.b		; E0 0A
	bit $F2.b		; 24 F2
	jmp $2CDF01.l		; 5C 01 DF 2C
	cpy $D5.b		; C4 D5
	ora ($5E.b,X)		; 01 5E
	sbc ($EE.b),Y		; F1 EE
	bit $01B6.w,X		; 3C B6 01
	cpy $30.b		; C4 30
.ACCU 8
	sep #$EE		; E2 EE
	rol $10C3.w		; 2E C3 10
	eor ($D2.b,X)		; 41 D2
	cpy $EF.b		; C4 EF
	ora $4110C1.l,X		; 1F C1 10 41
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	brk $B4.b		; 00 B4
	ldy $6360.w		; AC 60 63
	sbc ($FC.b),Y		; F1 FC
	ora $B46FBB.l,X		; 1F BB 6F B4
	mvn $0B,$10		; 54 10 0B
	ora $3631CB.l,X		; 1F CB 31 36
	asl $3CB4.w,X		; 1E B4 3C
	asl $21DA.w		; 0E DA 21
	and [$1F.b],Y		; 37 1F
	tsa		; 3B
	asl $FFB8.w		; 0E B8 FF
	asl $E5.b,X		; 16 E5
	ldx $303A.w,Y		; BE 3A 30
	sbc $B844.w		; ED 44 B8
	sbc $CE.b,X		; F5 CE
	rol A		; 2A
	rol $42E0.w,X		; 3E E0 42
	bmi -31.b		; 30 E1
	clv		; B8
	bcs  -2.b		; B0 FE
	inc $F6.b		; E6 F6
	ora $D0EF1C.l		; 0F 1C EF D0
	clv		; B8
	and ($33.b),Y		; 31 33
	ora $F2FFFC.l		; 0F FC FF F2
	cop $31.b		; 02 31
	tay		; A8
	asl $1CAD.w		; 0E AD 1C
	rol $4233.w,X		; 3E 33 42
	jsr ($A8C2.w,X)		; FC C2 A8
	inc $331E.w		; EE 1E 33
	rti		; 40

	phd		; 0B
	sbc ($B3.b)		; F2 B3
	cmp ($A8.b,X)		; C1 A8
	and ($4E.b)		; 32 4E
	inc $0E1E.w,X		; FE 1E 0E
	sbc $12.b,S		; E3 12
	and $3E10A4.l		; 2F A4 10 3E
	ora $F2CE.w,X		; 1D CE F2
	and ($02.b),Y		; 31 02
	and $F62A98.l		; 2F 98 2A F6
	inc $FE.b,X		; F6 FE
	sbc ($FC.b,S),Y		; F3 FC
	tas		; 1B
	trb $94.b		; 14 94
	sbc $31.b,X		; F5 31
	sbc ($3D.b)		; F2 3D
	tsb $E4C2.w		; 0C C2 E4
	and $2FE294.l,X		; 3F 94 E2 2F
	tsb $E4E2.w		; 0C E2 E4
	ora $9020D3.l,X		; 1F D3 20 90
	rol $D1CE.w		; 2E CE D1
	and $2D23C3.l		; 2F C3 23 2D
	lda $9380.w,X		; BD 80 93
	jmp $26B6.w		; 4C B6 26
	tsb $D29B.w		; 0C 9B D2
	and $22E290.l,X		; 3F 90 E2 22
	ora $E2CE.w,X		; 1D CE E2
	ora $9424F3.l,X		; 1F F3 24 94
	ldx $22FF.w,Y		; BE FF 22
	and ($04.b),Y		; 31 04
	cpy #$AC.b		; C0 AC
	inc $23A8.w		; EE A8 23
	beq -19.b		; F0 ED
	sbc $C4.b,S		; E3 C4
	pea $FA32.w		; F4 32 FA
	clv		; B8
	inc $303E.w		; EE 3E 30
	jsl $F1BFF0.l		; 22 F0 BF F1
	ora ($B8.b,S),Y		; 13 B8
	ora ($3C.b),Y		; 11 3C
	xce		; FB
	sbc ($21.b),Y		; F1 21
	eor $B8EC3F.l		; 4F 3F EC B8
	bne  33.b		; D0 21
	and ($12.b)		; 32 12
	dec $05CE.w		; CE CE 05
	ora $B8.b		; 05 B8
	cop $EB.b		; 02 EB
	sbc TIMEUP.w		; ED 11 42
	bmi  26.b		; 30 1A
	cpx $F2B8.w		; EC B8 F2
	rts		; 60

	eor $01BD0D.l,X		; 5F 0D BD 01
	eor ($5F.b),Y		; 51 5F
	cpy $31.b		; C4 31
	sbc $10DD.w		; ED DD 10
	.db $42, $30		; 42 30
	inc $C8DD.w		; EE DD C8
	eor $D10E3F.l		; 4F 3F 0E D1
	brk $3F.b		; 00 3F
	eor $B8FF.w		; 4D FF B8
	sbc ($F2.b,X)		; E1 F2
	eor $F2FE4A.l,X		; 5F 4A FE F2
	ora ($4F.b,X)		; 01 4F
	ldy $5F.b,X		; B4 5F
	inc $EFE0.w		; EE E0 EF
	and ($3F.b)		; 32 3F
	sbc $DBA4F1.l,X		; FF F1 A4 DB
	cmp $55.b,X		; D5 55
	beq  -2.b		; F0 FE
	ora $A4F0EC.l		; 0F EC F0 A4
	ror $3F.b		; 66 3F
	lda $00E1.w,X		; BD E1 00
	ora $2F52.w		; 0D 52 2F
	cpy $F0.b		; C4 F0
	ora ($1F.b,X)		; 01 1F
	cmp $3042.w,X		; DD 42 30
	dec $C0F3.w		; CE F3 C0
	and $0B.b,S		; 23 0B
	sbc $FF2024.l		; EF 24 20 FF
	brk $EF.b		; 00 EF
	bcs  36.b		; B0 24
	rti		; 40

	cmp $CB1E13.l,X		; DF 13 1E CB
	ora ($53.b,S),Y		; 13 53
	ldy $CE.b,X		; B4 CE
	tsb $2F.b		; 04 2F
	dex		; CA
	adc $40.b,S		; 63 40
	ldx $C4F5.w		; AE F5 C4
	jsr $23DB.w		; 20 DB 23
	eor ($CE.b,X)		; 41 CE
	sbc ($21.b)		; F2 21
	jmp.w [$53B4]		; DC B4 53
	adc ($BE.b,X)		; 61 BE
	sbc $3E.b,S		; E3 3E
	lda $B03E45.l		; AF 45 3E B0
	sbc $41E2.w		; ED E2 41
	dex		; CA
	lda ($66.b,S),Y		; B3 66
	tas		; 1B
	ldx $2DC8.w,Y		; BE C8 2D
	inc $1F33.w		; EE 33 1F
	bcs  19.b		; B0 13
	ora $AFA0DF.l,X		; 1F DF A0 AF
	lsr $30.b,X		; 56 30
	sbc $44EBFF.l		; EF FF EB 44
	and $11F1C4.l,X		; 3F C4 F1 11
	inc $42E0.w,X		; FE E0 42
	ora $44C1.w		; 0D C1 44
	cpy #$4F.b		; C0 4F
	tax		; AA
	asl $50.b,X		; 16 50
	tyx		; BB
	ora $4F.b,X		; 15 4F
	ldy $15C0.w		; AC C0 15
	rol $24CE.w,X		; 3E CE 24
	asl $22E0.w,X		; 1E E0 22
	sbc $E3B0.w		; ED B0 E3
	eor ($DD.b)		; 52 DD
	tsb $2E.b		; 04 2E
	plb		; AB
	and $4E.b,X		; 35 4E
	iny		; C8
	ora ($2E.b,S),Y		; 13 2E
	cmp $DF3D13.l,X		; DF 13 3D DF
	trb $1E.b		; 14 1E
	ldy $B9.b,X		; B4 B9
	sbc $6F.b,X		; F5 6F
	plb		; AB
	lsr $2C.b,X		; 56 2C
	lda $FDC456.l		; AF 56 C4 FD
	cmp $42.b,S		; C3 42
	cpx $31F2.w		; EC F2 31
	cmp $C423.w		; CD 23 C4
	and $1D23DE.l		; 2F DE 23 1D
	cmp ($42.b,X)		; C1 42
	sbc $C4E2.w,X		; FD E2 C4
	and ($ED.b,X)		; 21 ED
	pea $DD30.w		; F4 30 DD
	ora ($2F.b,S),Y		; 13 2F
	dec $24C4.w		; CE C4 24
	ora $1D23CF.l,X		; 1F CF 23 1D
	dec $0D53.w,X		; DE 53 0D
	iny		; C8
	sbc $20.b,X		; F5 20
	cmp $4E05.w		; CD 05 4E
	ldx $2E15.w,Y		; BE 15 2E
	cpy $DB.b		; C4 DB
	sbc $41.b		; E5 41
	stp		; DB
	tsb $4F.b		; 04 4F
	ldy $C434.w,X		; BC 34 C4
	rol $33CE.w,X		; 3E CE 33
	ora $33C1.w,X		; 1D C1 33
	sbc $C4E1.w,X		; FD E1 C4
	and ($EC.b)		; 32 EC
	cpx $31.b		; E4 31
	cmp $3F03.w,X		; DD 03 3F
	cmp $E2C0.w		; CD C0 E2
	.db $42, $DC		; 42 DC
	sbc ($40.b,S),Y		; F3 40
	ldy $3F14.w,X		; BC 14 3F
	cpy $D1.b		; C4 D1
	eor ($DC.b)		; 52 DC
	cpx $41.b		; E4 41
	stp		; DB
	tsb $4F.b		; 04 4F
	cpy $CC.b		; C4 CC
	and $2E.b		; 25 2E
	dec $2D24.w		; CE 24 2D
	lda $FDC454.l,X		; BF 54 C4 FD
	cmp ($43.b,X)		; C1 43
	cpx $42D3.w		; EC D3 42
	jmp.w [$C0F3]		; DC F3 C0
	bit $FB.b,X		; 34 FB
	cmp ($43.b,X)		; C1 43
	cpx $41E2.w		; EC E2 41
	stp		; DB
	cpy $53.b		; C4 53
	ora $43D0.w		; 0D D0 43
	cpx $42D3.w		; EC D3 42
	jmp.w [$03C4]		; DC C4 03
	bmi -52.b		; 30 CC
	bit $2F.b		; 24 2F
	dec $1D33.w		; CE 33 1D
	cpy $C0.b		; C4 C0
	eor $FD.b,S		; 43 FD
	cmp ($32.b)		; D2 32
	cpx $31E4.w		; EC E4 31
	cpy $DD.b		; C4 DD
	ora $3F.b,S		; 03 3F
	cmp $1E34.w		; CD 34 1E
	cmp $1CC433.l		; CF 33 C4 1C
	bne  67.b		; D0 43
	jsr ($32E2.w,X)		; FC E2 32
	cpx $C4E4.w		; EC E4 C4
	rti		; 40

	jmp.w [$3F13]		; DC 13 3F
	cmp $2E24.w		; CD 24 2E
	cmp $40F3C0.l		; CF C0 F3 40
	cpy $3F14.w		; CC 14 3F
	dec $2D24.w		; CE 24 2D
	cpy $E3.b		; C4 E3
	eor ($EC.b,X)		; 41 EC
	pea $CC30.w		; F4 30 CC
	bit $2F.b		; 24 2F
	cpy #$EC.b		; C0 EC
	sbc ($40.b,S),Y		; F3 40
	cpy $3F14.w		; CC 14 3F
	dec $C424.w		; CE 24 C4
	cpx $41E3.w		; EC E3 41
	jmp.w [$3F04]		; DC 04 3F
	cmp $C024.w		; CD 24 C0
	eor ($ED.b,X)		; 41 ED
	sbc ($30.b,S),Y		; F3 30
	cmp $2E14.w		; CD 14 2E
	cmp $1D23C0.l,X		; DF C0 23 1D
	cpy #$33.b		; C0 33
	sbc $32E1.w,X		; FD E1 32
	sbc $F5B0.w		; ED B0 F5
	rts		; 60

	txy		; 9B
	rol $4D.b		; 26 4D
	ldx $0A46.w		; AE 46 0A
	bcs -95.b		; B0 A1
	stz $EA.b		; 64 EA
	pei ($61.b)		; D4 61
	tax		; AA
	asl $5F.b,X		; 16 5F
	bcs -83.b		; B0 AD
	rol $2B.b,X		; 36 2B
	bcc  85.b		; 90 55
	asl A		; 0A
.ACCU 16
	rep #$62		; C2 62
	bcs -71.b		; B0 B9
	ora $50.b		; 05 50
	ldy $3B26.w,X		; BC 26 3B
	bcc  85.b		; 90 55
	cpy $ED.b		; C4 ED
	ora ($2F.b)		; 12 2F
	dec $0E33.w,X		; DE 33 0E
	bne  50.b		; D0 32
	cpy $FD.b		; C4 FD
	sbc $30.b,S		; E3 30
	sbc $2F03.w		; ED 03 2F
	dec $C433.w,X		; DE 33 C4
	asl $32D0.w		; 0E D0 32
	sbc $30E3.w,X		; FD E3 30
	sbc $C403.w		; ED 03 C4
	and $0E33DE.l		; 2F DE 33 0E
	bne  51.b		; D0 33
	sbc $C0E3.w		; ED E3 C0
	and $0D.b,S		; 23 0D
	cmp ($32.b),Y		; D1 32
	jsr ($31F2.w,X)		; FC F2 31
	jmp.w [$13C0]		; DC C0 13
	and $1D24CE.l,X		; 3F CE 24 1D
	cpy #$33.b		; C0 33
	jsr ($E2C0.w,X)		; FC C0 E2
	eor ($DC.b,X)		; 41 DC
	ora $30.b,S		; 03 30
	dec $2D24.w,X		; DE 24 2D
	cpy $F3.b		; C4 F3
	rti		; 40

	cmp $2F04.w,X		; DD 04 2F
	dec $0D34.w		; CE 34 0D
	cpy $D0.b		; C4 D0
	.db $42, $FC		; 42 FC
	sbc $40.b,S		; E3 40
	cpx $2F04.w		; EC 04 2F
	cpy $CE.b		; C4 CE
	bit $1E.b		; 24 1E
	cpy #$33.b		; C0 33
	tsb $42D2.w		; 0C D2 42
	cpy #$1D.b		; C0 1D
	bne  51.b		; D0 33
	jsr ($42D2.w,X)		; FC D2 42
	cpx $C003.w		; EC 03 C0
	bmi -51.b		; 30 CD
	bit $2E.b		; 24 2E
	cmp $C10C34.l		; CF 34 0C C1
	cpy #$42.b		; C0 42
	jsr ($41F3.w,X)		; FC F3 41
	jmp.w [$3F14]		; DC 14 3F
	dec $24C0.w		; CE C0 24
	ora $33C0.w,X		; 1D C0 33
	jsr ($42D2.w,X)		; FC D2 42
	cpx $F3C0.w		; EC C0 F3
	bmi -51.b		; 30 CD
	trb $2F.b		; 14 2F
	cmp $C00D33.l		; CF 33 0D C0
	cmp ($43.b,X)		; C1 43
	jsr ($41E2.w,X)		; FC E2 41
	jmp.w [$3003]		; DC 03 30
	cpy #$DE.b		; C0 DE
	trb $2E.b		; 14 2E
	dec $1D34.w		; CE 34 1D
	bne  67.b		; D0 43
	cpy #$FC.b		; C0 FC
	cmp ($42.b)		; D2 42
	cpx $41F3.w		; EC F3 41
	jmp.w [$C014]		; DC 14 C0
	and $2E24CE.l,X		; 3F CE 24 2E
	cmp $D10D34.l		; CF 34 0D D1
	cpy #$43.b		; C0 43
	jsr ($42D2.w,X)		; FC D2 42
	cpx $30F3.w		; EC F3 30
	cpy $14C0.w		; CC C0 14
	and $2D24CE.l,X		; 3F CE 24 2D
	cmp $C00D34.l		; CF 34 0D C0
	cmp ($43.b),Y		; D1 43
	jsr ($42D2.w,X)		; FC D2 42
	cpx $40F3.w		; EC F3 40
	cpy #$CC.b		; C0 CC
	tsb $3F.b		; 04 3F
	cmp $2E24.w		; CD 24 2E
	dec $C034.w		; CE 34 C0
	ora $43C0.w,X		; 1D C0 43
	jsr ($42C2.w,X)		; FC C2 42
	cpx $C0E3.w		; EC E3 C0
	eor ($DC.b,X)		; 41 DC
	pea $DD40.w		; F4 40 DD
	trb $3E.b		; 14 3E
	cmp $24C0.w		; CD C0 24
	asl $34CF.w,X		; 1E CF 34
	ora $43C0.w		; 0D C0 43
	sbc $E2C0.w,X		; FD C0 E2
	.db $42, $EC		; 42 EC
	sbc $41.b,S		; E3 41
	cpx $3003.w		; EC 03 30
	cpy #$DD.b		; C0 DD
	tsb $3F.b		; 04 3F
	dec $2E24.w,X		; DE 24 2E
	dec $C034.w		; CE 34 C0
	asl $33D0.w,X		; 1E D0 33
	ora $43D0.w		; 0D D0 43
	sbc $C0E2.w,X		; FD E2 C0
	.db $42, $EC		; 42 EC
	sep #$41		; E2 41
	sbc $30F3.w		; ED F3 30
	cmp $F3C0.w,X		; DD C0 F3
	bmi -35.b		; 30 DD
	trb $2F.b		; 14 2F
	dec $2E14.w,X		; DE 14 2E
	cpy #$DF.b		; C0 DF
	bit $1E.b		; 24 1E
	cmp $D00E33.l,X		; DF 33 0E D0
	and ($C0.b,S),Y		; 33 C0
	sbc $42D0.w,X		; FD D0 42
	sbc $41E2.w,X		; FD E2 41
	sbc $B0E2.w		; ED E2 B0
	adc ($CA.b)		; 72 CA
	inc $60.b,X		; F6 60
	plb		; AB
	sbc [$5F.b],Y		; F7 5F
	tyx		; BB
	bcs  39.b		; B0 27
	eor $27AC.w		; 4D AC 27
	bit $57AE.w,X		; 3C AE 57
	tas		; 1B
	bcs -82.b		; B0 AE
	lsr $0B.b,X		; 56 0B
	lda ($65.b),Y		; B1 65
	plx		; FA
	cpy #$64.b		; C0 64
	bcs -21.b		; B0 EB
	cmp $62.b,S		; C3 62
	stp		; DB
	cmp ($62.b)		; D2 62
	jmp.w [$B4E4]		; DC E4 B4
	pld		; 2B
	cmp $CF2C25.l		; CF 25 2C CF
	mvp $C1,$1B		; 44 1B C1
	bcs -12.b		; B0 F4
	rti		; 40

	cmp $4F14.w,X		; DD 14 4F
	cmp $3FF4.w		; CD F4 3F
	bcs -35.b		; B0 DD
	trb $3E.b		; 14 3E
	cmp $3FF4.w		; CD F4 3F
	cmp $B014.w,X		; DD 14 B0
	rol $04CE.w		; 2E CE 04
	rol $24DE.w,X		; 3E DE 24
	rol $B0CE.w		; 2E CE B0
	tsb $2E.b		; 04 2E
	dec $2E24.w,X		; DE 24 2E
	dec $2F04.w,X		; DE 04 2F
	bcs -34.b		; B0 DE
	trb $2E.b		; 14 2E
	dec $2FF4.w,X		; DE F4 2F
	dec $A014.w,X		; DE 14 A0
	eor $F6AC.w		; 4D AC F6
	lsr $17BC.w,X		; 5E BC 17
	lsr $A0AC.w,X		; 5E AC A0
	sbc ($6F.b,S),Y		; F3 6F
	cpy $5F05.w		; CC 05 5F
	ldy $61F0.w,X		; BC F0 61
	ldy $C0.b		; A4 C0
	ora $2C.b,X		; 15 2C
	dec $5030.w		; CE 30 50
	dec $A0F3.w		; CE F3 A0
	mvp $DF,$0C		; 44 0C DF
	pea $EE2F.w		; F4 2F EE
	ora ($30.b,S),Y		; 13 30
	bcc -69.b		; 90 BB
	cmp $BF0B56.l,X		; DF 56 0B BF
	and ($4F.b)		; 32 4F
	cmp $D390.w		; CD 90 D3
	adc ($DA.b)		; 72 DA
	cmp ($D3.b),Y		; D1 D3
	rti		; 40

	xba		; EB
	sbc $90.b		; E5 90
	eor ($CB.b),Y		; 51 CB
	sbc ($B5.b),Y		; F1 B5
	and $3115FC.l,X		; 3F FC 15 31
	bcc -69.b		; 90 BB
	bpl -92.b		; 10 A4
	bmi  -4.b		; 30 FC
	sbc $40.b,X		; F5 40
	ldy $1290.w,X		; BC 90 12
	ldx #$30.b		; A2 30
	tsb $41F5.w		; 0C F5 41
	ldy $A423.w,X		; BC 23 A4
	bne  48.b		; D0 30
	inc $2FF3.w,X		; FE F3 2F
	sbc $90ED12.l		; EF 12 ED 90
	ora $30.b,X		; 15 30
	lda $2D45.w		; AD 45 2D
	cmp $909E30.l		; CF 30 9E 90
	mvp $CF,$2D		; 44 2D CF
	mvp $D0,$1D		; 44 1D D0
	and ($DD.b)		; 32 DD
	ldy #$FF.b		; A0 FF
	and ($FD.b)		; 32 FD
	sbc ($42.b,X)		; E1 42
	sbc $30F3.w		; ED F3 30
	ldy #$DC.b		; A0 DC
	pei ($60.b)		; D4 60
	cpy $3F05.w		; CC 05 3F
	dec $A034.w		; CE 34 A0
	rol $F4CE.w		; 2E CE F4
	eor $3E15CD.l		; 4F CD 15 3E
	ldx $52A4.w,Y		; BE A4 52
	jmp.w [$2FF2]		; DC F2 2F
	ora $000100.l,X		; 1F 00 01 00
	bcc  14.b		; 90 0E
	beq  34.b		; F0 22
	bpl   0.b		; 10 00
	sbc $94C20E.l,X		; FF 0E C2 94
	bit $23FF.w		; 2C FF 23
	phd		; 0B
	sbc $32.b,S		; E3 32
	jsr ($9002.w,X)		; FC 02 90
	bpl -35.b		; 10 DD
	cmp ($40.b,S),Y		; D3 40
	dec $3003.w,X		; DE 03 30
	cmp $0290.w,X		; DD 90 02
	jsl $00F00E.l		; 22 0E F0 00
	sbc $41C2.w,X		; FD C2 41
	bcc -35.b		; 90 DD
	tsb $30.b		; 04 30
	cmp $3E14.w		; CD 14 3E
	dec $9112.w		; CE 12 91
	tsb $51C2.w		; 0C C2 51
	cmp $41F3.w,X		; DD F3 41
	dec $0002.w,X		; DE 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	dec $F4E3.w,X		; DE E3 F4
	sbc $0E32.w		; ED 32 0E
	sbc $8822.w		; ED 22 88
	ora ($C1.b,S),Y		; 13 C1
	cop $ED.b		; 02 ED
	sbc ($15.b,X)		; E1 15
	sbc ($DD.b)		; F2 DD
	sty $2F.b,X		; 94 2F
	ora $10EE.w,X		; 1D EE 10
	and ($1F.b,S),Y		; 33 1F
	rol $941C.w		; 2E 1C 94
	dec $5301.w,X		; DE 01 53
	ora $ED0A3D.l,X		; 1F 3D 0A ED
	jsl $0D4C98.l		; 22 98 4C 0D
	jmp $40FC.w		; 4C FC 40
	adc $A4DF5B.l		; 6F 5B DF A4
	ora ($DC.b,X)		; 01 DC
	cpx #$23.b		; E0 23
	and ($E0.b,S),Y		; 33 E0
	sbc ($CD.b),Y		; F1 CD
	ldy $D0.b		; A4 D0
	bit $43.b,X		; 34 43
	sbc $D0CCF0.l		; EF F0 CC D0
	eor $B8.b,S		; 43 B8
	rol $2FEF.w		; 2E EF 2F
	sbc $3D5E3E.l,X		; FF 3E 5E 3D
	sbc $2D2DB8.l		; EF B8 2D 2D
	eor $FD2D4F.l		; 4F 4F 2D FD
	bit $B83D.w,X		; 3C 3D B8
	rti		; 40

	jsl $1FDE0E.l		; 22 0E DE 1F
	ora $B81422.l,X		; 1F 22 14 B8
	sbc $201FBE.l		; EF BE 1F 20
	and $10.b,S		; 23 10
	jsr ($B40D.w,X)		; FC 0D B4
	cmp $EC12F3.l		; CF F3 12 EC
	eor ($4E.b),Y		; 51 4E
	sbc $F2B4D2.l,X		; FF D2 B4 F2
	xba		; EB
	pea $BF66.w		; F4 66 BF
	bcs   2.b		; B0 02
	tad		; 5B
	cpy $B4.b		; C4 B4
	tsb $0F.b		; 04 0F
	sbc $2120.w,X		; FD 20 21
	ldy $C442.w,X		; BC 42 C4
	eor $22E1EF.l		; 4F EF E1 22
	xce		; FB
	pei ($34.b)		; D4 34
	inc $FEC0.w		; EE C0 FE
	sbc ($41.b),Y		; F1 41
	tsx		; BA
	sbc $63.b,S		; E3 63
	ora $C8EF.w,X		; 1D EF C8
	ora ($BC.b),Y		; 11 BC
	eor $0F.b,X		; 55 0F
	lda $FC1104.l,X		; BF 04 11 FC
	cpy $BC.b		; C4 BC
	mvn $BD,$4E		; 54 4E BD
	tsb $41.b		; 04 41
	nop		; EA
	cmp ($C8.b),Y		; D1 C8
	eor $51E5BC.l,X		; 5F BC E5 51
	xba		; EB
	cmp ($43.b)		; D2 43
	pei ($C0.b)		; D4 C0
	and $5114CC.l,X		; 3F CC 14 51
	cmp $0202.w,X		; DD 02 02
	ora $F6EDB0.l		; 0F B0 ED F6
	eor ($DB.b,X)		; 41 DB
	tsb $22.b		; 04 22
	inc $B010.w		; EE 10 B0
	lda ($44.b,S),Y		; B3 44
	sbc $63E4.w,Y		; F9 E4 63
	jmp.w [$EA02]		; DC 02 EA
	bcs  68.b		; B0 44
	and $55B0.w		; 2D B0 55
	trb $30D1.w		; 1C D1 30
	bcc -80.b		; 90 B0
	eor $FA.b		; 45 FA
.ACCU 8
	sep #$62		; E2 62
	jmp.w [$2BF4]		; DC F4 2B
	lda $C0.b		; A5 C0
	bmi -19.b		; 30 ED
	ora $2F.b,S		; 03 2F
	sbc $13FB22.l		; EF 22 FB 13
	cpy #$3F.b		; C0 3F
	cmp $E11D23.l		; CF 23 1D E1
	and ($DC.b),Y		; 31 DC
	bit $C4.b,X		; 34 C4
	cmp $4EF3.w,X		; DD F3 4E
	inc $0E13.w		; EE 13 0E
	lda $30.b,X		; B5 30
	cpy #$FC.b		; C0 FC
	sbc ($31.b,X)		; E1 31
	inc $2E02.w		; EE 02 2E
	lda ($32.b,X)		; A1 32
	cpy #$FC.b		; C0 FC
	sbc ($30.b)		; F2 30
	dec $1D03.w,X		; DE 03 1D
	lda ($42.b)		; B2 42
	cpy $CE.b		; C4 CE
	and ($1D.b,S),Y		; 33 1D
	cmp ($23.b),Y		; D1 23
	jsr ($50D3.w,X)		; FC D3 50
	cpy #$0C.b		; C0 0C
	cmp ($43.b,X)		; C1 43
	jsr ($42E1.w,X)		; FC E1 42
	stp		; DB
	cmp $C4.b,X		; D5 C4
	tsb $55CE.w		; 0C CE 55
	sbc $43B1.w,X		; FD B1 43
	phd		; 0B
	bne -64.b		; D0 C0
	bit $3F.b		; 24 3F
	cpy $4004.w		; CC 04 40
	cpy $4004.w		; CC 04 40
	cpy $C0.b		; C4 C0
	bit $1C.b,X		; 34 1C
	cpy #$24.b		; C0 24
	and $13CF.w		; 2D CF 13
	cpy $4E.b		; C4 4E
	cmp $3004.w,X		; DD 04 30
	cmp $4003.w		; CD 03 40
	cmp $E3B4.w,X		; DD B4 E3
	eor $3A.b,S		; 43 3A
	bcs  54.b		; B0 36
	pld		; 2B
	lda $B436.w,X		; BD 36 B4
	and $20F4BC.l,X		; 3F BC F4 20
	jmp $15B1.w		; 4C B1 15
	bit $DDB4.w		; 2C B4 DD
	and $3F.b		; 25 3F
	cmp $2FF2.w		; CD F2 2F
	eor $A0A0EE.l		; 4F EE A0 A0
	eor $1B.b,X		; 55 1B
	lda $5225.w		; AD 25 52
	cpx $A4CE.w		; EC CE A4
	ora $B05F3F.l		; 0F 3F 5F B0
	sbc $5F.b,S		; E3 5F
	xba		; EB
	sbc ($A8.b)		; F2 A8
	jsr $E2CD.w		; 20 CD E2
	eor $EC.b,S		; 43 EC
	jsl $9412DF.l		; 22 DF 12 94
	and ($CC.b,S),Y		; 33 CC
	cmp $62.b,S		; C3 62
	bit $02DD.w		; 2C DD 02
	bpl -96.b		; 10 A0
	sbc $FE1F.w		; ED 1F FE
	cmp $DE3033.l		; CF 33 30 DE
	sbc $E26A98.l,X		; FF 98 6A E2
	pei ($2E.b)		; D4 2E
	trb $F2E4.w		; 1C E4 F2
	cmp $02A0.w		; CD A0 02
	and $FC.b,S		; 23 FC
	inc $3203.w		; EE 03 32
	ora $A4EE.w		; 0D EE A4
	ora ($10.b)		; 12 10
	ora $F0EFFF.l,X		; 1F FF EF F0
	brk $41.b		; 00 41
	sty $F4.b		; 84 F4
	sbc $03B109.l		; EF 09 B1 03
	bmi  19.b		; 30 13
	sbc $4CB278.l,X		; FF 78 B2 4C
	rts		; 60

.ACCU 8
	sep #$EF		; E2 EF
	sbc ($F2.b),Y		; F1 F2
	sbc $2F1F78.l,X		; FF 78 1F 2F
	tsb $0412.w		; 0C 12 04
	cmp ($CE.b),Y		; D1 CE
	jsl $203074.l		; 22 74 30 20
	cpx #$1F.b		; E0 1F
	cmp $BB21F3.l,X		; DF F3 21 BB
	bra -51.b		; 80 CD
	ora ($1E.b,X)		; 01 1E
	sbc $0F10.w		; ED 10 0F
	sbc $64F0.w		; ED F0 64
	and $E0A1.w		; 2D A1 E0
	rol $04DE.w,X		; 3E DE 04
	ora ($C0.b,X)		; 01 C0
	pla		; 68
	sbc ($3C.b),Y		; F1 3C
	ora $2EF3.w		; 0D F3 2E
	eor $64DDD1.l		; 4F D1 DD 64
	lsr $CE02.w		; 4E 02 CE
	.db $42, $5D		; 42 5D
	stp		; DB
	sbc $26.b		; E5 26
	rts		; 60

	dec A		; 3A
	txy		; 9B
	cmp $0F.b,S		; C3 0F
	inc $EFE2.w,X		; FE E2 EF
	sbc $2F64.w		; ED 64 2F
	sbc ($F2.b),Y		; F1 F2
	sbc $FF22C1.l		; EF C1 22 FF
	inc $4F64.w,X		; FE 64 4F
	brk $B0.b		; 00 B0
	lsr $EF11.w,X		; 5E 11 EF
.INDEX 16
	rep #$13		; C2 13
	bvc -16.b		; 50 F0
	tsx		; BA
	cmp $ABCD.w,X		; DD CD AB
.ACCU 16
	rep #$24		; C2 24
	stp		; DB
	bvc  98.b		; 50 62
	tad		; 5B
	dex		; CA
	lda ($24.b,S),Y		; B3 24
	and $50D0CB.l,X		; 3F CB D0 50
	bmi -19.b		; 30 ED
	mvn $CD,$4B		; 54 4B CD
	ora $10.b,S		; 03 10
	sbc $B050.w		; ED 50 B0
	tas		; 1B
	cmp $0EEF.w,X		; DD EF 0E
	cmp $58BD0D.l,X		; DF 0D BD 58
	lsr A		; 4A
	phd		; 0B
	inc $12.b,X		; F6 12
	inc $F40C.w,X		; FE 0C F4
	and $D4EC50.l		; 2F 50 EC D4
	and ($22.b,S),Y		; 33 22
	ora ($12.b),Y		; 11 12
	and ($11.b,X)		; 21 11
	bvc  17.b		; 50 11
	ora ($B1.b),Y		; 11 B1
	bpl  15.b		; 10 0F
	sbc $44F3FE.l,X		; FF FE F3 44
	cpy $11E0.w		; CC E0 11
	xba		; EB
	cmp ($21.b),Y		; D1 21
	sbc $340F.w,X		; FD 0F 34
	dec $31DD.w,X		; DE DD 31
	and $0D0FDD.l		; 2F DD 0F 0D
	cpx #$F244.w		; E0 44 F2
	ora $E42210.l		; 0F 10 22 E4
	cpx #$0121.w		; E0 21 01
	sec		; 38
	sbc ($04.b),Y		; F1 04
	inc $43E0.w		; EE E0 43
	and ($AF.b),Y		; 31 AF
	ora ($38.b,X)		; 01 38
	eor ($E2.b)		; 52 E2
	dec $154E.w,X		; DE 4E 15
	sbc ($E7.b)		; F2 E7
	cmp $0FE728.l,X		; DF 28 E7 0F
	asl $05.b		; 06 05
	beq  79.b		; F0 4F
	.db $42, $F0		; 42 F0
	bit $12.b		; 24 12
	bpl  15.b		; 10 0F
	ora $EDDD.w,X		; 1D DD ED
	ora $1950ED.l,X		; 1F ED 50 19
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	sbc $50FFFF.l,X		; FF FF FF 50
	sbc $FFFFFF.l,X		; FF FF FF FF
	beq   0.b		; F0 00
	bvc  17.b		; 50 11
	plp		; 28
	ora ($3E.b),Y		; 11 3E
	and $2330.w,X		; 3D 30 23
	ora $246D21.l,X		; 1F 21 6D 24
	eor $15.b		; 45 15
	and ($55.b,S),Y		; 33 55
	eor ($64.b,S),Y		; 53 64
	bit $53.b		; 24 53
	plp		; 28
	ora ($04.b)		; 12 04
	bpl  32.b		; 10 20
	jsr $2F03.w		; 20 03 2F
	ora $0054.w,X		; 1D 54 00
	ora $000000.l		; 0F 00 00 00
	ora ($F5.b),Y		; 11 F5
	ora $F20F78.l,X		; 1F 78 0F F2
	ora $00F4.w,X		; 1D F4 00
	and $A4C9EF.l,X		; 3F EF C9 A4
	beq   1.b		; F0 01
	jsl $ADEB31.l		; 22 31 EB AD
	eor ($06.b,X)		; 41 06
	ldy $24.b,X		; B4 24
	and $ABDC.w,X		; 3D DC AB
	and $45.b		; 25 45
	rti		; 40

	ora $DFC4.w,X		; 1D C4 DF
	sbc $33F5.w		; ED F5 33
	rol $D0FF.w		; 2E FF D0
	sbc $F4C4.w,X		; FD C4 F4
	eor ($2E.b,X)		; 41 2E
	sbc $EF0EE1.l,X		; FF E1 0E EF
	eor $C4.b,S		; 43 C4
	jsr $0EFE.w		; 20 FE 0E
	ora ($FD.b),Y		; 11 FD
	sbc $42.b,S		; E3 42
	asl $BFB4.w,X		; 1E B4 BF
	sbc ($10.b)		; F2 10
	tsb $14E4.w		; 0C E4 14
	bit $C0DE.w		; 2C DE C0
	sbc ($0E.b),Y		; F1 0E
	jsl $42E1FF.l		; 22 FF E1 42
	asl $C0F2.w		; 0E F2 C0
	tsb $0023.w		; 0C 23 00
	cmp $E10E42.l,X		; DF 42 0E E1
	ora $36B0.w,X		; 1D B0 36
	brk $BE.b		; 00 BE
	stz $0D.b,X		; 74 0D
	cmp ($2A.b)		; D2 2A
	asl $B0.b,X		; 16 B0
	bpl -67.b		; 10 BD
	eor $0D.b,X		; 55 0D
	cmp ($3B.b)		; D2 3B
	inc $20.b,X		; F6 20
	bcs -51.b		; B0 CD
	eor $0D.b,X		; 55 0D
.ACCU 8
.INDEX 8
	sep #$3B		; E2 3B
	inc $2F.b,X		; F6 2F
	cmp $23C0.w		; CD C0 23
	asl $2CE1.w		; 0E E1 2C
	pea $DF1F.w		; F4 1F DF
	eor $C0.b,S		; 43 C0
	sbc $1BF2.w,X		; FD F2 1B
	ora $1E.b,X		; 15 1E
	cmp $C0ED43.l,X		; DF 43 ED C0
	sbc ($0B.b)		; F2 0B
	bit $0E.b		; 24 0E
	bne  82.b		; D0 52
	sbc $C002.w		; ED 02 C0
	jsr ($FD34.w,X)		; FC 34 FD
.INDEX 8
	sep #$51		; E2 51
	dec $DE12.w,X		; DE 12 DE
	cpy #$42.b		; C0 42
	sbc $3FF3.w,X		; FD F3 3F
	cmp $4FB220.l,X		; DF 20 B2 4F
	cpy #$DE.b		; C0 DE
	trb $1D.b		; 14 1D
	sbc ($1C.b,X)		; E1 1C
	tsb $1D.b		; 04 1D
	bne -64.b		; D0 C0
	.db $42, $DD		; 42 DD
	cop $EE.b		; 02 EE
	and ($ED.b)		; 32 ED
	ora $3F.b,S		; 03 3F
	cpy #$DF.b		; C0 DF
	and $DF4EC3.l		; 2F C3 4E DF
	bit $0C.b		; 24 0C
	sbc ($C0.b),Y		; F1 C0
	tsb $FD24.w		; 0C 24 FD
	sbc ($40.b)		; F2 40
	cmp $C0C210.l		; CF 10 C2 C0
	eor $0C24DF.l		; 4F DF 24 0C
	sbc ($0C.b,X)		; E1 0C
	bit $FD.b		; 24 FD
	cpy #$E2.b		; C0 E2
	rti		; 40

	dec $C310.w		; CE 10 C3
	lsr $24DF.w		; 4E DF 24
	cpy #$0C.b		; C0 0C
	sbc ($FD.b,X)		; E1 FD
	and ($ED.b,S),Y		; 33 ED
	ora $3F.b,S		; 03 3F
	cmp $141DC0.l		; CF C0 1D 14
	ora $42E2.w		; 0D E2 42
	cmp $C300.w,X		; DD 00 C3
	cpy #$4E.b		; C0 4E
	cmp $F10C24.l,X		; DF 24 0C F1
	sbc $B0DE41.l,X		; FF 41 DE B0
	and [$4B.b]		; 27 4B
	ldy #$0E.b		; A0 0E
	.db $62, $BD, $27		; 62 BD 27
	dec A		; 3A
	cpy #$D0.b		; C0 D0
	sbc ($3F.b),Y		; F1 3F
	cmp $E01C24.l,X		; DF 24 1C E0
	sbc ($C0.b,X)		; E1 C0
	eor $1C24DF.l		; 4F DF 24 1C
	cmp ($F1.b),Y		; D1 F1
	eor $23C0DF.l		; 4F DF C0 23
	ora $F1D1.w,X		; 1D D1 F1
	eor $1C34DF.l		; 4F DF 34 1C
	cpy #$D1.b		; C0 D1
	sbc ($4F.b),Y		; F1 4F
	cmp $D11C34.l,X		; DF 34 1C D1
	sbc ($C0.b)		; F2 C0
	lsr $34D0.w		; 4E D0 34
	phd		; 0B
	cmp ($F2.b),Y		; D1 F2
	lsr $C0D0.w		; 4E D0 C0
	bit $0B.b,X		; 34 0B
	sbc ($E3.b,X)		; E1 E3
	eor $34D0.w		; 4D D0 34
	phd		; 0B
	cpy #$E1.b		; C0 E1
	sbc $3C.b,S		; E3 3C
	cmp ($34.b),Y		; D1 34
	xba		; EB
	sbc ($F4.b),Y		; F1 F4
	cpy #$1C.b		; C0 1C
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	jmp.w [$1400]		; DC 00 14
	jsr ($C003.w,X)		; FC 03 C0
	eor ($CD.b,X)		; 41 CD
	ora $13DD33.l,X		; 1F 33 DD 13
	eor $1FC0BE.l		; 4F BE C0 1F
	eor ($CE.b,X)		; 41 CE
	and $3D.b,S		; 23 3D
	cpy #$01.b		; C0 01
	and $33C0C0.l,X		; 3F C0 C0 33
	trb $F3D1.w		; 1C D1 F3
	and $33D1.w,X		; 3D D1 33
	cpy #$FB.b		; C0 FB
	sbc ($F4.b,X)		; E1 F4
	trb $33E2.w		; 1C E2 33
	stp		; DB
	brk $C0.b		; 00 C0
	ora ($FC.b,S),Y		; 13 FC
	ora $31.b,S		; 03 31
	cmp $330F.w		; CD 0F 33
	cmp $13C0.w		; CD C0 13
	rol $00BF.w,X		; 3E BF 00
	rti		; 40

	lda $C02C34.l,X		; BF 34 2C C0
	cpy #$F3.b		; C0 F3
	and $44D1.w,X		; 3D D1 44
	xce		; FB
	sbc ($04.b,X)		; E1 04
	cpy #$1B.b		; C0 1B
	sbc ($42.b,S),Y		; F3 42
	jmp.w [$340F]		; DC 0F 34
	jmp.w [$C014]		; DC 14 C0
	eor $4110BE.l		; 4F BE 10 41
	ldx $3D24.w,Y		; BE 24 3D
	cpy #$C0.b		; C0 C0
	sbc ($3D.b,S),Y		; F3 3D
	cmp ($34.b,X)		; C1 34
	xce		; FB
	cpx #$14.b		; E0 14
	jsr ($03C0.w,X)		; FC C0 03
	rti		; 40

	cmp $4001.w		; CD 01 40
	lda $C02C34.l,X		; BF 34 2C C0
	cpy #$04.b		; C0 04
	pld		; 2B
	sep #$43		; E2 43
	stp		; DB
	beq  67.b		; F0 43
	cpy #$CC.b		; C0 CC
	trb $4E.b		; 14 4E
	ldx $4E03.w,Y		; BE 03 4E
	bcs  68.b		; B0 44
	cpy #$0B.b		; C0 0B
	bne  36.b		; D0 24
	phd		; 0B
	sbc ($41.b,S),Y		; F3 41
	cpy $C001.w		; CC 01 C0
	eor ($BE.b,X)		; 41 BE
	bit $2D.b,X		; 34 2D
	lda $D23C04.l,X		; BF 04 3C D2
	cpy #$43.b		; C0 43
	xba		; EB
	cpx #$34.b		; E0 34
	jmp.w [$4F04]		; DC 04 4F
	lda $03C0.w,X		; BD C0 03
	eor $0C44BF.l		; 4F BF 44 0C
	bne  20.b		; D0 14
	phd		; 0B
	cpy #$E3.b		; C0 E3
	eor ($CC.b,X)		; 41 CC
	brk $42.b		; 00 42
	cmp $2D24.w		; CD 24 2D
	cpy #$CF.b		; C0 CF
	tsb $3C.b		; 04 3C
	cmp ($43.b),Y		; D1 43
	xba		; EB
	beq  67.b		; F0 43
	cpy #$DD.b		; C0 DD
	trb $3E.b		; 14 3E
	lda $C13D04.l,X		; BF 04 3D C1
	eor $C0.b,S		; 43 C0
	xba		; EB
	cpx #$43.b		; E0 43
	jmp.w [$4F14]		; DC 14 4F
	ldx $C003.w,Y		; BE 03 C0
	rol $44C0.w,X		; 3E C0 44
	xce		; FB
	bne  52.b		; D0 34
	cpx $C004.w		; EC 04 C0
	eor $4D04BE.l		; 4F BE 04 4D
	cpy #$54.b		; C0 54
	xba		; EB
	cpx #$C0.b		; E0 C0
	eor $DC.b,S		; 43 DC
	ora $4E.b,X		; 15 4E
	ldx $3C04.w,Y		; BE 04 3C
	rep #$C0		; C2 C0
	eor ($DB.b,S),Y		; 53 DB
	sbc ($52.b),Y		; F1 52
	lda $2C25.w,X		; BD 25 2C
	lda $1B25C0.l,X		; BF C0 25 1B
	cmp ($52.b,S),Y		; D3 52
	tyx		; BB
	cop $50.b		; 02 50
	ldx $45C0.w		; AE C0 45
	tas		; 1B
	cpy #$34.b		; C0 34
	nop		; EA
	sbc $5F.b,X		; F5 5F
	ldy $04C0.w		; AC C0 04
	eor $55B0.w		; 4D B0 55
	nop		; EA
	cmp ($53.b),Y		; D1 53
	wai		; CB
	cpy #$16.b		; C0 16
	eor $15AE.w		; 4D AE 15
	pld		; 2B
.INDEX 16
	rep #$53		; C2 53
	wai		; CB
	cpy #$50F3.w		; C0 F3 50
	lda $1B45.w,X		; BD 45 1B
	cpy #$EB44.w		; C0 44 EB
	cpy #$5FF5.w		; C0 F5 5F
	lda $3D15.w,X		; BD 15 3D
	bcs  84.b		; B0 54
	nop		; EA
	cpy #$52E1.w		; C0 E1 52
	cpy $3D25.w		; CC 25 3D
	lda $C00B25.l,X		; BF 25 0B C0
	cmp ($51.b,S),Y		; D3 51
	ldy $4E04.w,X		; BC 04 4E
	bcs  84.b		; B0 54
	nop		; EA
	cpy #$52D2.w		; C0 D2 52
	cpy $3C25.w		; CC 25 3C
	lda $C0FB45.l,X		; BF 45 FB C0
	cpx $50.b		; E4 50
	ldy $3D15.w,X		; BC 15 3D
	lda ($54.b),Y		; B1 54
	phx		; DA
	cpy #$51E3.w		; C0 E3 51
	lda $1B35.w,X		; BD 35 1B
	bcs  84.b		; B0 54
	stp		; DB
	cpy #$4E05.w		; C0 05 4E
	lda $1B25.w		; AD 25 1B
	cmp ($51.b,S),Y		; D3 51
	tyx		; BB
	cpy #$4D05.w		; C0 05 4D
	bcs  84.b		; B0 54
	phx		; DA
	cpx $50.b		; E4 50
	ldx $45C0.w,Y		; BE C0 45
	asl A		; 0A
.INDEX 16
	rep #$52		; C2 52
	cpy $2C25.w		; CC 25 2C
	bcs -64.b		; B0 C0
	eor ($DC.b,S),Y		; 53 DC
	tsb $2D.b		; 04 2D
	lda $04EC43.l,X		; BF 43 EC 04
	cpy #$BF3E.w		; C0 3E BF
	mvp $F4,$FC		; 44 FC F4
	lsr $34BE.w		; 4E BE 34
	cpy #$E30C.w		; C0 0C E3
	rti		; 40

	lda $1C25.w,X		; BD 25 1C
	cmp ($41.b)		; D2 41
	cpy #$15CC.w		; C0 CC 15
	and $41D1.w		; 2D D1 41
	cpy $2E14.w		; CC 14 2E
	cpy #$30E1.w		; C0 E1 30
	cmp $1E14.w,X		; DD 14 1E
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	cmp $24C0.w		; CD C0 24
	ora $3FF2.w		; 0D F2 3F
	dec $0D24.w		; CE 24 0D
	sbc ($C0.b)		; F2 C0
	and $0D24CE.l,X		; 3F CE 24 0D
	sbc ($2F.b)		; F2 2F
	dec $B423.w		; CE 23 B4
	tyx		; BB
	and $0A.b,X		; 35 0A
	lda ($63.b,S),Y		; B3 63
	stp		; DB
	trb $2D.b		; 14 2D
	ldy $AF.b,X		; B4 AF
	eor $1D.b		; 45 1D
.INDEX 16
	rep #$50		; C2 50
	tsx		; BA
	and $4F.b		; 25 4F
	clv		; B8
	cpy $6D.b		; C4 6D
	cpy $0E46.w		; CC 46 0E
	lda $B4CC62.l,X		; BF 62 CC B4
	lda ($54.b),Y		; B1 54
	phd		; 0B
	cpx $3E.b		; E4 3E
	ldy $3E35.w,X		; BC 35 3E
	ldy $C0.b,X		; B4 C0
	.db $42, $DA		; 42 DA
	sbc $42.b		; E5 42
	jmp.w [$1B24]		; DC 24 1B
	ldy $B0.b,X		; B4 B0
	adc $0D.b,S		; 63 0D
	cmp ($4F.b,S),Y		; D3 4F
	ldy $2015.w,X		; BC 15 20
	lda $CC.b		; A5 CC
	lsr $DC.b,X		; 56 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	asl $DE.b		; 06 DE
	asl $27.b		; 06 27
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	and [$43.b],Y		; 37 43
	rol $6DAE.w,X		; 3E AE 6D
	ora ($2B.b,S),Y		; 13 2B
	lda $0CE354.l,X		; BF 54 E3 0C
	phk		; 4B
	lda $03.b		; A5 03
	rti		; 40

	cmp $1B.b,X		; D5 1B
	bvs   0.b		; 70 00
	bpl  15.b		; 10 0F
	beq  31.b		; F0 1F
	sbc $1F.b		; E5 1F
	ora ($60.b),Y		; 11 60
	tax		; AA
.ACCU 16
	rep #$2C		; C2 2C
	jsl $EE1F36.l		; 22 36 1F EE
	asl $EF60.w		; 0E 60 EF
	dec $3FE5.w,X		; DE E5 3F
	and $D6DF.w		; 2D DF D6
	jsl $34DD74.l		; 22 74 DD 34
	beq   0.b		; F0 00
	sbc ($B0.b,S),Y		; F3 B0
	ora ($20.b)		; 12 20
	rts		; 60

	and ($05.b)		; 32 05
	bpl  31.b		; 10 1F
	and $DFE2.w		; 2D E2 DF
	trb $84.b		; 14 84
	sbc ($F0.b,X)		; E1 F0
	jsr $1CF1.w		; 20 F1 1C
	ora $70F21E.l,X		; 1F 1E F2 70
	jsr $2F03.w		; 20 03 2F
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	eor ($1D.b,X)		; 41 1D
	sbc $151F74.l,X		; FF 74 1F 15
	dec $31FD.w		; CE FD 31
	sbc ($20.b,X)		; E1 20
	lda ($74.b,S),Y		; B3 74
	eor $CEDFFF.l,X		; 5F FF DF CE
	eor [$1D.b],Y		; 57 1D
	bpl  18.b		; 10 12
	bvs  82.b		; 70 52
	ora $EDF121.l,X		; 1F 21 F1 ED
	tas		; 1B
	dec $7422.w,X		; DE 22 74
	asl $F1E1.w,X		; 1E E1 F1
	inc $1220.w,X		; FE 20 12
	xba		; EB
	bit $74.b		; 24 74
	beq  28.b		; F0 1C
	ora ($2C.b,X)		; 01 2C
	tsb $1022.w		; 0C 22 10
	cpy #$70.b		; C0 70
	bpl -52.b		; 10 CC
	sbc $2FE0DD.l		; EF DD E0 2F
	and $FE74D0.l,X		; 3F D0 74 FE
	cop $F2.b		; 02 F2
	and $D2F1.w,X		; 3D F1 D2
	asl $702C.w		; 0E 2C 70
	lda $0E45.w,X		; BD 45 0E
	ora ($EF.b,X)		; 01 EF
	sbc ($1D.b),Y		; F1 1D
	lda $2174.w		; AD 74 21
	ora $ED1EB6.l,X		; 1F B6 1E ED
	sbc $2C.b,S		; E3 2C
	ora $74.b		; 05 74
	ora $00F40D.l		; 0F 0D F4 00
	cmp $1E04FE.l,X		; DF FE 04 1E
	stz $B2.b,X		; 74 B2
	ora ($2E.b)		; 12 2E
	phk		; 4B
	and ($F2.b)		; 32 F2
	asl $70E1.w,X		; 1E E1 70
	sbc ($A9.b),Y		; F1 A9
	sbc $4D45EF.l,X		; FF EF 45 4D
	lda $4074DD.l,X		; BF DD 74 40
	ora $FE04.w,X		; 1D 04 FE
	tsa		; 3B
	sbc $2C.b,S		; E3 2C
	pei ($74.b)		; D4 74
	lda $F1.b,X		; B5 F1
	rol BG2HOFS.w		; 2E 0F 21
	sbc $600F31.l,X		; FF 31 0F 60
	rti		; 40

	phx		; DA
	asl $3392.w,X		; 1E 92 33
	inc $9FAA.w,X		; FE AA 9F
	stz $00.b,X		; 74 00
	and ($4F.b,X)		; 21 4F
	cmp $F3EF.w,X		; DD EF F3
	sbc $3D7052.l,X		; FF 52 70 3D
	cmp ($13.b,X)		; C1 13
	plx		; FA
	ora $14E1D1.l,X		; 1F D1 E1 14
	bvs  49.b		; 70 31
	dec $DFF7.w,X		; DE F7 DF
	jmp $D1F0.w		; 4C F0 D1
	inc A		; 1A
	bra  15.b		; 80 0F
	sbc $EF3104.l,X		; FF 04 31 EF
	bmi -50.b		; 30 CE
	sbc $0270.w,X		; FD 70 02
	and ($00.b,S),Y		; 33 00
	ror $A0.b,X		; 76 A0
	sbc $841B41.l,X		; FF 41 1B 84
	and ($0C.b,X)		; 21 0C
	pea $0021.w		; F4 21 00
	bpl  15.b		; 10 0F
	sbc ($70.b,X)		; E1 70
	eor $F031FA.l,X		; 5F FA 31 F0
	bcs -48.b		; B0 D0
	ora $63.b,X		; 15 63
	bra  15.b		; 80 0F
	bpl  13.b		; 10 0D
	sbc $220200.l		; EF 00 02 22
	cpx $84.b		; E4 84
	sbc $014EE1.l,X		; FF E1 4E 01
	sbc ($0E.b)		; F2 0E
	cmp ($30.b)		; D2 30
	bra  17.b		; 80 11
	cop $2D.b		; 02 2D
	and $2F.b,S		; 23 2F
	sbc $841C43.l		; EF 43 1C 84
	eor $0F.b		; 45 0F
	sbc $C6FC02.l		; EF 02 FC C6
	jsr $84B3.w		; 20 B3 84
	jsr $DA5D.w		; 20 5D DA
	stz $BC.b		; 64 BC
	ora ($30.b)		; 12 30
	jsr ($2084.w,X)		; FC 84 20
	and $2F31.w,X		; 3D 31 2F
	cmp $BE23.w		; CD 23 BE
	eor $FF1180.l		; 4F 80 11 FF
	asl $3B.b,X		; 16 3B
	and ($1F.b,X)		; 21 1F
	sbc ($F0.b)		; F2 F0
	bcc  31.b		; 90 1F
	cpx #$41.b		; E0 41
	inc $0112.w		; EE 12 01
	sbc $8014.w,X		; FD 14 80
	jmp $BB30C3.l		; 5C C3 30 BB
	bit $1E.b		; 24 1E
	brk $26.b		; 00 26
	sty $2A.b		; 84 2A
	cop $D3.b		; 02 D3
	cmp ($24.b),Y		; D1 24
	jmp.w [$1CE3]		; DC E3 1C
	sty $12.b,X		; 94 12
	bpl -51.b		; 10 CD
	sbc $31.b,S		; E3 31
	sbc $F0E2.w,X		; FD E2 F0
	tya		; 98
	ora $40EFF1.l,X		; 1F F1 EF 40
	ora $52C40D.l		; 0F 0D C4 52
	tya		; 98
	cpx $43B2.w		; EC B2 43
	sbc $1FE3.w,X		; FD E3 1F
	sbc $4A8813.l		; EF 13 88 4A
	lda $FC74.w,X		; BD 74 FC
	cmp ($41.b)		; D2 41
	bne -15.b		; D0 F1
	sei		; 78
	trb $CF.b		; 14 CF
	bpl  64.b		; 10 40
	cmp ($20.b,X)		; C1 20
	ora $326400.l,X		; 1F 00 64 32
	and $1042FF.l		; 2F FF 42 10
	ora ($1E.b,S),Y		; 13 1E
	lda ($54.b,S),Y		; B3 54
	eor ($01.b)		; 52 01
	tsb $00.b		; 04 00
	sbc ($00.b),Y		; F1 00
	trb $6455.w		; 1C 55 64
	asl $1AF1.w,X		; 1E F1 1A
	rol $0213.w		; 2E 13 02
	inc $5001.w,X		; FE 01 50
	eor ($43.b)		; 52 43
	and $34.b,S		; 23 34
	asl $0DE7.w,X		; 1E E7 0D
	sbc $0064.w		; ED 64 00
	asl $3D01.w,X		; 1E 01 3D
	sbc $0F1FF0.l,X		; FF F0 1F 0F
	stz $00.b		; 64 00
	asl $F0F3.w		; 0E F3 F0
	asl $13E1.w		; 0E E1 13
	dec $1244.w		; CE 44 12
	tyx		; BB
	ldx $E311.w,Y		; BE 11 E3
	plb		; AB
	jsr ($642F.w,X)		; FC 2F 64
	sbc $30EC01.l,X		; FF 01 EC 30
	ora $10FFB2.l		; 0F B2 FF 10
	stz $EF.b		; 64 EF
	ora $F01F.w,X		; 1D 1F F0
	ora $D4F2EE.l,X		; 1F EE F2 D4
	stz $0E.b		; 64 0E
	sbc $1F010F.l,X		; FF 0F 01 1F
	cmp $1011.w,X		; DD 11 10
	stz $0F.b		; 64 0F
	beq  -1.b		; F0 FF
	brk $69.b		; 00 69
	and $6410F2.l		; 2F F2 10 64
	sbc $FD10F1.l		; EF F1 10 FD
	and ($0A.b)		; 32 0A
	bpl  49.b		; 10 31
	bvc  12.b		; 50 0C
	tyx		; BB
	dec $DEEC.w,X		; DE EC DE
	ora $5064BA.l,X		; 1F BA 64 50
	eor #$DB.b		; 49 DB
	sbc ($1F.b),Y		; F1 1F
	beq  16.b		; F0 10
	sbc $205425.l		; EF 25 54 20
	cmp $FF3E02.l		; CF 02 3E FF
	ora ($01.b)		; 12 01
	sbc ($48.b),Y		; F1 48
	tad		; 5B
	cmp ($14.b,X)		; C1 14
	cop $EC.b		; 02 EC
	and ($01.b)		; 32 01
	ora ($44.b),Y		; 11 44
	ora $F2F010.l		; 0F 10 F0 F2
	ora ($FD.b,X)		; 01 FD
	bpl  45.b		; 10 2D
	bvc  20.b		; 50 14
	.db $42, $1D		; 42 1D
	bne  -6.b		; D0 FA
	pei ($5A.b)		; D4 5A
	sbc $F644.w,X		; FD 44 F6
	and $E0E0.w,X		; 3D E0 E0
	sbc ($20.b,X)		; E1 20
	ora $00640F.l		; 0F 0F 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D3.b		; 00 D3
	brk $34.b		; 00 34
	eor $2DC4ED.l		; 4F ED C4 2D
	bne  69.b		; D0 45
	ora $115012.l		; 0F 12 50 11
	bcc  -1.b		; 90 FF
	sbc $FFF5F0.l,X		; FF F0 F5 FF
	beq  80.b		; F0 50
	ora $FFF0FE.l		; 0F FE F0 FF
	adc ($1F.b,X)		; 61 1F
	rol $5011.w,X		; 3E 11 50
	asl $2260.w		; 0E 60 22
	ora ($22.b),Y		; 11 22
	bpl   1.b		; 10 01
	jsl $F35F24.l		; 22 24 5F F3
	adc $122FD0.l		; 6F D0 2F 12
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	bit $31.b,X		; 34 31
	ora ($EC.b),Y		; 11 EC
	ora ($11.b,X)		; 01 11
	eor $0F.b,S		; 43 0F
	beq  40.b		; F0 28
	ora ($FC.b,X)		; 01 FC
	.db $62, $2A, $72		; 62 2A 72
	phk		; 4B
	lda $5032.w		; AD 32 50
	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	jsl $F62111.l		; 22 11 21 F6
	bvc   1.b		; 50 01
	ora ($12.b),Y		; 11 12
	bpl  -1.b		; 10 FF
	ora $3460FF.l		; 0F FF 60 34
	adc ($1E.b,X)		; 61 1E
	lda $E03E.w		; AD 3E E0
	ora $D2.b,S		; 03 D2
	and ($34.b,S),Y		; 33 34
	tsb $EEC0.w		; 0C C0 EE
	inc $6024.w,X		; FE 24 60
	sbc $DC.b,S		; E3 DC
	bvc  -1.b		; 50 FF
	inc $FFEE.w,X		; FE EE FF
	bit $FE00.w,X		; 3C 00 FE
	cmp $0328.w,X		; DD 28 03
	sbc $0D11.w,X		; FD 11 0D
	sbc $4FDE.w		; ED DE 4F
	ora ($28.b,S),Y		; 13 28
	and $D3AF0C.l		; 2F 0C AF D3
	asl $DD26.w,X		; 1E 26 DD
	jmp $0240.w		; 4C 40 02
	ora ($10.b)		; 12 10
	brk $12.b		; 00 12
	cop $22.b		; 02 22
	lsr $C160.w		; 4E 60 C1
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	ora ($00.b),Y		; 11 00
	brk $50.b		; 00 50
	brk $01.b		; 00 01
	ora ($11.b,X)		; 01 11
	inc A		; 1A
	sbc $B6F5.w,X		; FD F5 B6
	bcc  15.b		; 90 0F
	brk $F1.b		; 00 F1
	ora ($F2.b)		; 12 F2
	tsb $2001.w		; 0C 01 20
	sty $6D.b		; 84 6D
	xce		; FB
	eor $3E4E2D.l		; 4F 2D 4E 3E
	and $209003.l		; 2F 03 90 20
	inc $0EEE.w		; EE EE 0E
	dec $A025.w,X		; DE 25 A0
	ora $D1AE80.l		; 0F 80 AE D1
	sbc $45.b		; E5 45
	adc ($EE.b)		; 72 EE
	ora ($15.b)		; 12 15
	sty $D1.b,X		; 94 D1
	sbc ($E0.b),Y		; F1 E0
	ora ($0F.b),Y		; 11 0F
	lda ($01.b)		; B2 01
	ora ($80.b),Y		; 11 80
	bit $54.b		; 24 54
	xba		; EB
	and $111101.l		; 2F 01 11 11
	jsr $E394.w		; 20 94 E3
	sbc $052F03.l,X		; FF 03 2F 05
	cmp ($EE.b),Y		; D1 EE
	ora $FED088.l		; 0F 88 D0 FE
	lsr A		; 4A
	bvc -15.b		; 50 F1
	lsr $2B5F.w		; 4E 5F 2B
	tya		; 98
	and ($D2.b)		; 32 D2
	tsa		; 3B
	rol $C20E.w		; 2E 0E C2
	cpx #$F1.b		; E0 F1
	tya		; 98
	asl $0021.w,X		; 1E 21 00
	bmi   1.b		; 30 01
	and $BE16.w		; 2D 16 BE
	tay		; A8
	and $E1FFD2.l,X		; 3F D2 FF E1
	beq  31.b		; F0 1F
	ora ($F1.b,X)		; 01 F1
	tay		; A8
	ora ($01.b,X)		; 01 01
	bpl   0.b		; 10 00
	sbc ($2B.b)		; F2 2B
	and ($D1.b),Y		; 31 D1
	tya		; 98
	bne -21.b		; D0 EB
	eor $40EDB6.l,X		; 5F B6 ED 40
	sbc $3E.b,S		; E3 3E
	clv		; B8
	ora $3F0F2F.l,X		; 1F 2F 0F 3F
	pei ($E0.b)		; D4 E0
	beq  29.b		; F0 1D
	tay		; A8
	and ($D0.b),Y		; 31 D0
	and $DFF5.w,X		; 3D F5 DF
	rti		; 40

	sbc ($2F.b),Y		; F1 2F
	clv		; B8
	brk $02.b		; 00 02
	cmp $1D.b,S		; C3 1D
	ora $FFF21E.l,X		; 1F 1E F2 FF
	tay		; A8
	and ($A3.b)		; 32 A3
	bit $EF14.w,X		; 3C 14 EF
	eor $B4C601.l		; 4F 01 C6 B4
	lsr $E242.w		; 4E 42 E2
	sbc $CEECCD.l		; EF CD EC CE
	sbc $F0B4.w,X		; FD B4 F0
	sbc ($11.b,X)		; E1 11
	and ($33.b,S),Y		; 33 33
	and ($6F.b,X)		; 21 6F
	ora $B4.b,X		; 15 B4
	sbc ($FF.b,X)		; E1 FF
	cpx $CDFC.w		; EC FC CD
	sbc $FFE0.w,X		; FD E0 FF
	ldy $21.b,X		; B4 21
	jsl $623033.l		; 22 33 30 62
	inc $0F.b		; E6 0F
	ora $6D0BA8.l,X		; 1F A8 0B 6D
	cmp $0C.b		; C5 0C
	and $C1.b,S		; 23 C1
	jmp $32B414.l		; 5C 14 B4 32
	and ($44.b),Y		; 31 44
	sbc $2E.b		; E5 2E
	and $B8FEFC.l		; 2F FC FE B8
	cmp ($1F.b)		; D2 1F
	cpx $EE.b		; E4 EE
	eor $F003.w,X		; 5D 03 F0
	ora $D317B4.l		; 0F B4 17 D3
	eor $FE3F.w,X		; 5D 3F FE
	cmp $B4DFCD.l,X		; DF CD DF B4
	bcs  -3.b		; B0 FD
	ora ($F3.b),Y		; 11 F3
	and ($32.b)		; 32 32
	asl $F1.b,X		; 16 F1
	ldy $6E.b,X		; B4 6E
	jsr $DFFF.w		; 20 FF DF
	cmp $BFDF.w		; CD DF BF
	ora $02B4.w		; 0D B4 02
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	and $06.b,S		; 23 06
	and $A4127E.l		; 2F 7E 12 A4
	dec $9AAE.w,X		; DE AE 9A
	lda $2A9A.w		; AD 9A 2A
	cmp $E0.b		; C5 E0
	ldy $32.b,X		; B4 32
	and $15.b,S		; 23 15
	rol $F370.w,X		; 3E 70 F3
	sbc $DCB4EF.l,X		; FF EF B4 DC
	inc $0FDC.w		; EE DC 0F
	rep #$00		; C2 00
	jsl $13B423.l		; 22 23 B4 13
	lsr $E453.w,X		; 5E 53 E4
	beq -48.b		; F0 D0
	jmp.w [$B4EE]		; DC EE B4
	jmp.w [$D20E]		; DC 0E D2
	sbc $131332.l,X		; FF 32 13 13
	adc $54B4.w		; 6D B4 54
	sbc $0F.b,S		; E3 0F
	sbc $DCDFED.l		; EF ED DF DC
	ora $1EC1B4.l		; 0F B4 C1 1E
	jsl $6E1213.l		; 22 13 12 6E
	and $E3.b,X		; 35 E3
	clv		; B8
	sbc $011F0F.l		; EF 0F 1F 01
	ora $D34F.w		; 0D 4F D3
	ora $22B4.w,X		; 1D B4 22
	and $03.b,S		; 23 03
	eor $D444.w,X		; 5D 44 D4
	ora $EDB4E0.l		; 0F E0 B4 ED
	sbc $C20FDD.l		; EF DD 0F C2
	asl $2232.w		; 0E 32 22
	ldy $04.b,X		; B4 04
	rol $F360.w		; 2E 60 F3
	ora $FFDDE0.l		; 0F E0 DD FF
	ldy $CF.b,X		; B4 CF
	ora $E2F2.w		; 0D F2 E2
	jsl $D6532F.l		; 22 2F 53 D6
	ldy $0E.b,X		; B4 0E
	bmi  -2.b		; 30 FE
	asl $1BDE.w		; 0E DE 1B
	sbc ($DF.b),Y		; F1 DF
	ldy $2E.b,X		; B4 2E
	trb $11.b		; 14 11
	ora [$E0.b]		; 07 E0
	adc $1D11.w		; 6D 11 1D
	ldy $F1.b,X		; B4 F1
	jmp.w [$C11E]		; DC 1E C1
	sbc $F202.w,X		; FD 02 F2
	rti		; 40

	ldy $06.b,X		; B4 06
	asl $006F.w		; 0E 6F 00
	rol $FCD1.w		; 2E D1 FC
	beq -76.b		; F0 B4
	cpy #$0D.b		; C0 0D
	sbc ($01.b)		; F2 01
	and ($F6.b),Y		; 31 F6
	asl $B45F.w,X		; 1E 5F B4
	ora $FCD12F.l,X		; 1F 2F D1 FC
	sbc ($B1.b),Y		; F1 B1
	ora $B4F2.w		; 0D F2 B4
	sbc ($31.b),Y		; F1 31
	inc $F0.b,X		; F6 F0
	eor $E02F2F.l		; 4F 2F 2F E0
	ldy $FC.b,X		; B4 FC
	brk $B1.b		; 00 B1
	inc $F101.w,X		; FE 01 F1
	and ($F5.b),Y		; 31 F5
	ldy $00.b,X		; B4 00
	rti		; 40

	ora $0CEF2F.l,X		; 1F 2F EF 0C
	brk $C0.b		; 00 C0
	ldy $0E.b,X		; B4 0E
	sbc ($01.b),Y		; F1 01
	jsl $4F1FF4.l		; 22 F4 1F 4F
	ora $E01FB4.l,X		; 1F B4 1F E0
	tsb $D000.w		; 0C 00 D0
	ora $A410F1.l		; 0F F1 10 A4
	eor ($37.b),Y		; 51 37
	dec $1F.b		; C6 1F
	and $CDEF0D.l		; 2F 0D EF CD
	ldy $1D.b,X		; B4 1D
	beq  -1.b		; F0 FF
	bpl  18.b		; 10 12
	ora ($4E.b),Y		; 11 4E
	jsl $F0E2A4.l		; 22 A4 E2 F0
	inc $B2FD.w		; EE FD B2
	cmp $E00E.w		; CD 0E E0
	ldy $10.b,X		; B4 10
	and ($05.b,X)		; 21 05
	sbc ($3F.b),Y		; F1 3F
	ora $A4E01F.l,X		; 1F 1F E0 A4
	nop		; EA
	asl $EFB0.w,X		; 1E B0 EF
	sbc ($13.b)		; F2 13
	and ($70.b,X)		; 21 70
	ldy $25.b		; A4 25
	sep #$00		; E2 00
	inc $A1EF.w,X		; FE EF A1
	jmp.w [$A40D]		; DC 0D A4
	sbc $172213.l,X		; FF 13 22 17
	ora ($6E.b,X)		; 01 6E
	and $02A82E.l		; 2F 2E A8 02
	inc $C54F.w		; EE 4F C5
	sbc $0F0012.l		; EF 12 00 0F
	tay		; A8
	tad		; 5B
	inc $A3.b,X		; F6 A3
	cmp ($EF.b,S),Y		; D3 EF
	bpl -30.b		; 10 E2
	ora $FEA4.w		; 0D A4 FE
	sbc $152211.l		; EF 11 22 15
	lsr $1060.w		; 4E 60 10
	ldy $00.b		; A4 00
	sbc $BFD0FD.l		; EF FD D0 BF
	inc $21E0.w,X		; FE E0 21
	ldy $21.b		; A4 21
	adc $F5.b,S		; 63 F5
	bpl  16.b		; 10 10
	asl $DDFF.w		; 0E FF DD
	ldy $0C.b		; A4 0C
	sbc $12F2EF.l		; EF EF F2 12
	trb $4F.b		; 14 4F
	eor ($98.b),Y		; 51 98
	sbc ($F2.b)		; F2 F2
	ldy $0C.b		; A4 0C
	inc $BE.b,X		; F6 BE
	lsr $A401.w,X		; 5E 01 A4
	ora ($12.b),Y		; 11 12
	bit $03.b,X		; 34 03
	bmi  16.b		; 30 10
	ora $FD98FF.l,X		; 1F FF 98 FD
	bmi -46.b		; 30 D2
	brk $03.b		; 00 03
	beq  16.b		; F0 10
	jmp $E598.w		; 4C 98 E5
	cmp $0FFF11.l,X		; DF 11 FF 0F
	sbc $98F02F.l,X		; FF 2F F0 98
	jsr $F1E3.w		; 20 E3 F1
	ora ($0D.b)		; 12 0D
	jsr $1FE1.w		; 20 E1 1F
	dey		; 88
	asl $FEEF.w		; 0E EF FE
	jsr $2DD3.w		; 20 D3 2D
	jsr $9823.w		; 20 23 98
	ora $DF.b,S		; 03 DF
	rol $0FF2.w,X		; 3E F2 0F
	sbc $88F10F.l,X		; FF 0F F1 88
	asl $EFE5.w,X		; 1E E5 EF
	and $A02450.l		; 2F 50 24 A0
	jmp $2F88.w		; 4C 88 2F
	ora ($90.b),Y		; 11 90
	and $1DD3.w		; 2D D3 1D
	ora ($EF.b)		; 12 EF
	dey		; 88
	and $13.b,S		; 23 13
	cop $D0.b		; 02 D0
	ora $D23B1F.l,X		; 1F 1F 3B D2
	dey		; 88
	dec $EE21.w,X		; DE 21 EE
	eor $2213E1.l		; 4F E1 13 22
	ora ($88.b,X)		; 01 88
	sbc $FD023E.l		; EF 3E 02 FD
	cmp ($FF.b,X)		; C1 FF
	ora ($0C.b,X)		; 01 0C
	dey		; 88
	eor $1313E1.l,X		; 5F E1 13 13
	bpl -46.b		; 10 D2
	ora $0B8801.l		; 0F 01 88 0B
	beq  -2.b		; F0 FE
	ora ($DF.b)		; 12 DF
	lsr $230F.w		; 4E 0F 23
	dey		; 88
	and $00.b,S		; 23 00
	lda [$C0.b],Y		; B7 C0
	ora $EFE10C.l,X		; 1F 0C E1 EF
	sei		; 78
	and ($B0.b)		; 32 B0
	bmi -47.b		; 30 D1
	mvn $3D,$62		; 54 62 3D
	cpx $78.b		; E4 78
	bne   0.b		; D0 00
	wai		; CB
	bne -34.b		; D0 DE
	lsr $FFB6.w,X		; 5E B6 FF
	sei		; 78
	brk $36.b		; 00 36
	eor ($5A.b)		; 52 5A
	inc $BE.b,X		; F6 BE
	jmp $E188EA.l		; 5C EA 88 E1
	cmp ($F1.b)		; D2 F1
	cmp $0F.b,S		; C3 0F
	asl $4051.w,X		; 1E 51 40
	tay		; A8
	asl $013E.w,X		; 1E 3E 01
.ACCU 8
	sep #$E0		; E2 E0
	asl $C411.w		; 0E 11 C4
	ldy $FE.b,X		; B4 FE
	sbc $12120F.l,X		; FF 0F 12 12
	ora ($5E.b),Y		; 11 5E
	and ($B4.b),Y		; 31 B4
	ora ($F0.b,X)		; 01 F0
	sbc $C1FF.w,X		; FD FF C1
	cmp $B400FF.l,X		; DF FF 00 B4
	and ($13.b,X)		; 21 13
	ora $3E.b,S		; 03 3E
	rti		; 40

	bpl -16.b		; 10 F0
	sbc $1CB4.w		; ED B4 1C
	cpx #$D0.b		; E0 D0
	cpx #$00.b		; E0 00
	and ($23.b,X)		; 21 23
	sbc $B4.b,X		; F5 B4
	brk $4F.b		; 00 4F
	ora $0BDE00.l,X		; 1F 00 DE 0B
	ora $F0B4D0.l		; 0F D0 B4 F0
	sbc ($20.b)		; F2 20
	and ($06.b)		; 32 06
	cmp ($2F.b,S),Y		; D3 2F
	ora $C00FB4.l,X		; 1F B4 0F C0
	xce		; FB
	and $F0E0.w		; 2D E0 F0
	sbc ($10.b,S),Y		; F3 10
	ldy $5F.b,X		; B4 5F
	and $D4.b		; 25 D4
	ora $D00E1F.l,X		; 1F 1F 0E D0
	xba		; EB
	ldy $3C.b,X		; B4 3C
	beq -16.b		; F0 F0
	sbc ($11.b,S),Y		; F3 11
	eor $B4D425.l		; 4F 25 D4 B4
	bpl  14.b		; 10 0E
	asl $DCC1.w,X		; 1E C1 DC
	bit $00FF.w,X		; 3C FF 00
	ldy $F3.b,X		; B4 F3
	ora ($4F.b),Y		; 11 4F
	and $C5.b		; 25 C5
	brk $1E.b		; 00 1E
	ora $D1B4.w,X		; 1D B4 D1
	jmp.w [$0F2C]		; DC 2C 0F
	brk $F3.b		; 00 F3
	cop $4F.b		; 02 4F
	ldy $25.b,X		; B4 25
	cmp $00.b		; C5 00
	asl $D11D.w,X		; 1E 1D D1
	jmp.w [$B43B]		; DC 3B B4
	ora $11F300.l		; 0F 00 F3 11
	lsr $B417.w,X		; 5E 17 B4
	and $1E1EB4.l		; 2F B4 1E 1E
	cmp ($DC.b,X)		; C1 DC
	bit $F0F0.w,X		; 3C F0 F0
	sbc ($C4.b,S),Y		; F3 C4
	ora ($20.b,X)		; 01 20
	ora $F1.b,S		; 03 F1
	bpl  15.b		; 10 0F
	ora $FAB4E0.l,X		; 1F E0 B4 FA
	and $F0E0.w,X		; 3D E0 F0
	sbc ($2F.b)		; F2 2F
	eor ($D6.b)		; 52 D6
	ldy $1E.b,X		; B4 1E
	ror $001F.w		; 6E 1F 00
	cmp $C11019.l		; CF 19 10 C1
	ldy $FF.b,X		; B4 FF
	sbc ($3F.b),Y		; F1 3F
	and $C4.b,X		; 35 C4
	tad		; 5B
	eor ($F0.b)		; 52 F0
	ldy $F2.b,X		; B4 F2
	ldx $E32A.w,Y		; BE 2A E3
	lda $30F00F.l,X		; BF 0F F0 30
	cpy $13.b		; C4 13
	beq  78.b		; F0 4E
	ora ($F0.b)		; 12 F0
	ora ($EE.b,X)		; 01 EE
	asl $E2C4.w,X		; 1E C4 E2
	inc $F010.w		; EE 10 F0
	bpl   3.b		; 10 03
	asl $C440.w,X		; 1E 40 C4
	cpx $F0.b		; E4 F0
	ora ($FE.b,X)		; 01 FE
	brk $C1.b		; 00 C1
	ora $B410.w		; 0D 10 B4
	cpx #$11.b		; E0 11
	tsb $4C.b		; 04 4C
	and [$A4.b],Y		; 37 A4
	jmp $B430.w		; 4C 30 B4
	ora $AEE2.w		; 0D E2 AE
	dec A		; 3A
	sbc ($DF.b)		; F2 DF
	ora ($01.b),Y		; 11 01
	cpy $30.b		; C4 30
	sbc ($1E.b,S),Y		; F3 1E
	and $E0F002.l,X		; 3F 02 F0 E0
	sbc $10C4.w,X		; FD C4 10
	cmp ($0E.b),Y		; D1 0E
	bpl   0.b		; 10 00
	jsl $B44EF0.l		; 22 F0 4E B4
	asl $B3.b,X		; 16 B3
	rol $FDFF.w		; 2E FF FD
	cmp $CD.b,S		; C3 CD
	and $F1B4.w		; 2D B4 F1
	brk $23.b		; 00 23
	and $3BB426.l		; 2F 26 B4 3B
	eor ($B4.b),Y		; 51 B4
	cpx #$EF.b		; E0 EF
	cmp $F11C.w,X		; DD 1C F1
	cpy #$1F.b		; C0 1F
	ora ($B4.b)		; 12 B4
	and ($F2.b)		; 32 F2
	rtl		; 6B

	mvp $0E,$B5		; 44 B5 0E
	ora $B8FE.w,X		; 1D FE B8
	sbc ($C2.b,S),Y		; F3 C2
	bit $E330.w		; 2C 30 E3
	sbc ($EF.b)		; F2 EF
	ora $B4.b,X		; 15 B4
	cmp $5B.b,S		; C3 5B
	eor ($E1.b,X)		; 41 E1
	sbc $E01CDD.l		; EF DD 1C E0
	cpy $FF.b		; C4 FF
	brk $01.b		; 00 01
	ora ($1F.b),Y		; 11 1F
	and ($F3.b),Y		; 31 F3
	beq -76.b		; F0 B4
	lsr $EE0F.w,X		; 5E 0F EE
	bne -50.b		; D0 CE
	inc $F0E0.w,X		; FE E0 F0
	cpy $10.b		; C4 10
	ora ($00.b)		; 12 00
	eor $1FE113.l		; 4F 13 E1 1F
	brk $A8.b		; 00 A8
	lda ($20.b,X)		; A1 20
	cmp ($0E.b,S),Y		; D3 0E
	ora ($C3.b,S),Y		; 13 C3
	ora ($04.b,X)		; 01 04
	ldy $F2.b,X		; B4 F2
	tda		; 7B
	eor ($C5.b,S),Y		; 53 C5
	ora $EC0F.w,X		; 1D 0F EC
	asl $C0B4.w		; 0E B4 C0
	inc $00F0.w		; EE F0 00
	ora ($23.b)		; 12 23
	pea $B44C.w		; F4 4C B4
	.db $62, $C5, $0D		; 62 C5 0D
	ora $E01CDD.l		; 0F DD 1C E0
	inc $00B4.w		; EE B4 00
	sbc ($12.b),Y		; F1 12
	and $F2.b,S		; 23 F2
	jmp $B4D452.l		; 5C 52 D4 B4
	ora $CE00.w		; 0D 00 CE
	tas		; 1B
	beq -18.b		; F0 EE
	ora $12B401.l,X		; 1F 01 B4 12
	jsl $336B01.l		; 22 01 6B 33
	cmp $1E.b,S		; C3 1E
	sbc ($A4.b),Y		; F1 A4
	lda #$49.b		; A9 49
	cmp $BD.b,S		; C3 BD
	rol $04F3.w		; 2E F3 04
	eor $B4.b,S		; 43 B4
	asl $D640.w,X		; 1E 40 D6
	sbc $0BD130.l,X		; FF 30 D1 0B
	bpl -76.b		; 10 B4
	cpy #$0E.b		; C0 0E
	sbc ($F1.b),Y		; F1 F1
	ora ($11.b),Y		; 11 11
	and $FFB4F3.l		; 2F F3 B4 FF
	rti		; 40

	cpx $FE.b		; E4 FE
	rol $FDD1.w		; 2E D1 FD
	ora $FFD2A4.l,X		; 1F A4 D2 FF
	jsr $0111.w		; 20 11 01
	asl $E414.w,X		; 1E 14 E4
	ldy $4D.b		; A4 4D
	and ($FF.b)		; 32 FF
	asl $DDC2.w		; 0E C2 DD
	ora $FFA4D2.l,X		; 1F D2 A4 FF
	rol $0121.w		; 2E 21 01
	sbc $310103.l		; EF 03 01 31
	sty $22.b,X		; 94 22
	jmp ($9E02.w)		; 6C 02 9E
	xce		; FB
.INDEX 16
	rep #$DD		; C2 DD
	and $FF02A8.l,X		; 3F A8 02 FF
	ora $E141FD.l,X		; 1F FD 41 E1
	bpl  45.b		; 10 2D
	sty $35.b,X		; 94 35
	asl $A02F.w,X		; 1E 2F A0
	cmp $FEE0.w,X		; DD E0 FE
	eor $2C0684.l		; 4F 84 06 2C
	sbc $CBBC.w,X		; FD BC CB
	sbc $4526.w		; ED 26 45
	tya		; 98
	jsr $FED3.w		; 20 D3 FE
	cop $C2.b		; 02 C2
	bit $F130.w		; 2C 30 F1
	sty $F3.b		; 84 F3
.INDEX 16
	rep #$5C		; C2 5C
	and ($9E.b,X)		; 21 9E
	cmp $EECB.w,Y		; D9 CB EE
	dey		; 88
	ora $E0.b,X		; 15 E0
	adc $A1E4.w,X		; 7D E4 A1
	bit $F0F2.w		; 2C F2 F0
	sty $CF.b		; 84 CF
	nop		; EA
	and $EFE1.w		; 2D E1 EF
	and $DB01.w,X		; 3D 01 DB
	tya		; 98
	rol $101F.w		; 2E 1F 10
	pea $2FE1.w		; F4 E1 2F
	sbc $A2.b		; E5 A2
	dey		; 88
	tas		; 1B
	rol $022F.w		; 2E 2F 02
	sbc $00.b,S		; E3 00
	asl $842F.w,X		; 1E 2F 84
	ora ($E2.b),Y		; 11 E2
	inc $0D0E.w,X		; FE 0E 0D
	dec $20DF.w,X		; DE DF 20
	dey		; 88
	eor ($F2.b,X)		; 41 F2
	beq -29.b		; F0 E3
	lda $DFE53E.l,X		; BF 3E E5 DF
	stz $3D.b,X		; 74 3D
	sbc ($F3.b)		; F2 F3
	sbc ($EC.b,S),Y		; F3 EC
	ora $BBAD.w,X		; 1D AD BB
	sei		; 78
	cmp [$B0.b]		; C7 B0
	and ($B5.b),Y		; 31 B5
	and $2E0E31.l,X		; 3F 31 0E 2E
	dey		; 88
.INDEX 8
	sep #$D0		; E2 D0
	and $F221.w		; 2D 21 F2
	brk $E4.b		; 00 E4
	cmp $DF5C74.l,X		; DF 74 5C DF
	xce		; FB
	sbc $F2FE.w,X		; FD FE F2
	pei ($11.b)		; D4 11
	sei		; 78
	eor $F56B1E.l,X		; 5F 1E 6B F5
	lda ($0D.b,X)		; A1 0D
	tsb $B5.b		; 04 B5
	stz $FB.b,X		; 74 FB
	and $0E00F0.l		; 2F F0 00 0E
	asl $0DAF.w		; 0E AF 0D
	sei		; 78
	pea $5BC1.w		; F4 C1 5B
	ora $B2.b,X		; 15 B2
	phk		; 4B
	rti		; 40

	trb $3274.w		; 1C 74 32
	cmp ($D9.b)		; D2 D9
	asl A		; 0A
	cmp $1BECBF.l		; CF BF EC 1B
	sty $00.b		; 84 00
	cpx #$00.b		; E0 00
	cop $01.b		; 02 01
	rti		; 40

	jsl $F06411.l		; 22 11 64 F0
	sbc ($B3.b),Y		; F1 B3
	asl $E10F.w		; 0E 0F E1
	phd		; 0B
	and ($64.b,X)		; 21 64
	sta ($CF.b)		; 92 CF
	cmp $0D.b,S		; C3 0D
	bvc -11.b		; 50 F5
	bpl  35.b		; 10 23
	stz $A4.b		; 64 A4
	rol $CEEF.w		; 2E EF CE
	and $F2A3F6.l,X		; 3F F6 A3 F2
	rts		; 60

	cpx $B21F.w		; EC 1F B2
	sbc $4322.w,X		; FD 22 43
	sbc $2F.b,S		; E3 2F
	stz $0E.b		; 64 0E
	sbc $611A.w		; ED 1A 61
	cpx $35.b		; E4 35
	pea $5430.w		; F4 30 54
	phy		; 5A
	ora [$A1.b],Y		; 17 A1
	bit $204C.w		; 2C 4C 20
	ora $740D.w,X		; 1D 0D 74
	sbc $E2D1F0.l,X		; FF F0 D1 E2
	rol $0130.w,X		; 3E 30 01
	ora ($64.b),Y		; 11 64
	brk $B1.b		; 00 B1
	sbc ($C1.b),Y		; F1 C1
	rol $0FE3.w		; 2E E3 0F
	ora $70.b,S		; 03 70
	sbc $C2F11D.l		; EF 1D F1 C2
	ora ($33.b),Y		; 11 33
	jsl $206432.l		; 22 32 64 20
	sbc $152C1C.l		; EF 1C 2C 15
	inc $DFF3.w,X		; FE F3 DF
	bvs  45.b		; 70 2D
	sbc ($DE.b),Y		; F1 DE
	inc $12F0.w,X		; FE F0 12
	rti		; 40

	ora ($54.b),Y		; 11 54
	ora $2CD212.l,X		; 1F 12 D2 2C
	rti		; 40

	sep #$0F		; E2 0F
	ora ($50.b),Y		; 11 50
	and ($44.b,S),Y		; 33 44
	and ($41.b,S),Y		; 33 41
	ora ($A1.b)		; 12 A1
	and ($11.b,X)		; 21 11
	bvc   3.b		; 50 03
	asl $32.b		; 06 32
	ora ($21.b)		; 12 21
	rol A		; 2A
	cpx #$23.b		; E0 23
	mvp $01,$24		; 44 24 01
	eor $EFF12F.l		; 4F 2F F1 EF
	ora $442C.w,X		; 1D 2C 44
	rep #$C0		; C2 C0
	sbc $E5221F.l,X		; FF 1F 22 E5
	xba		; EB
	eor $50.b,S		; 43 50
	brk $30.b		; 00 30
	pld		; 2B
	sbc ($0F.b,X)		; E1 0F
	brk $F7.b		; 00 F7
	asl $6050.w,X		; 1E 50 60
	dec $CFFE.w,X		; DE FE CF
	cpx $ADED.w		; EC ED AD
	wai		; CB
	stz $1F.b		; 64 1F
	sbc ($14.b),Y		; F1 14
	sbc ($1F.b,X)		; E1 1F
	sbc #$22.b		; E9 22
	cpx #$78.b		; E0 78
	ora $ED3F01.l,X		; 1F 01 3F ED
	and $FCA230.l		; 2F 30 A2 FC
	stz $DD.b,X		; 74 DD
	sbc ($54.b,X)		; E1 54
	cmp $3126.w,X		; DD 26 31
	sbc $E38803.l		; EF 03 88 E3
	and ($EF.b),Y		; 31 EF
	cop $DB.b		; 02 DB
	cop $2D.b		; 02 2D
	asl $4088.w		; 0E 88 40
	eor ($D1.b,X)		; 41 D1
	sbc $20E2F1.l		; EF F1 E2 20
	brk $88.b		; 00 88
	and ($DF.b),Y		; 31 DF
	brk $D2.b		; 00 D2
	sbc $ED24.w		; ED 24 ED
	eor ($88.b),Y		; 51 88
	cmp ($3C.b)		; D2 3C
	pei ($EF.b)		; D4 EF
	bit $D3.b		; 24 D3
	and ($E2.b,X)		; 21 E2
	tya		; 98
	sbc $141DE0.l		; EF E0 1D 14
	sbc $FF41.w,X		; FD 41 FF
	lsr $B298.w		; 4E 98 B2
	ora $12F122.l		; 0F 22 F1 12
	cpx #$EF.b		; E0 EF
	sbc $32E198.l		; EF 98 E1 32
	sbc ($3F.b),Y		; F1 3F
	cpx #$E0.b		; E0 E0
	ora $3298F1.l		; 0F F1 98 32
	ora $1FFF11.l		; 0F 11 FF 1F
	wai		; CB
	ora $22.b		; 05 22
	sei		; 78
	eor $F23AFA.l		; 4F FA 3A F2
	tax		; AA
	and ($4D.b),Y		; 31 4D
	ror $A8.b		; 66 A8
	ora $D00012.l		; 0F 12 00 D0
	sbc ($DD.b)		; F2 DD
	asl $1F.b,X		; 16 1F
	tya		; 98
	sbc $AC.b,X		; F5 AC
	and $005EC1.l,X		; 3F C1 5E 00
	inc $9817.w,X		; FE 17 98
	inc $1DE6.w,X		; FE E6 1D
	cmp $DE30.w		; CD 30 DE
	tsb $44.b		; 04 44
	tya		; 98
	beq -65.b		; F0 BF
	sbc ($E1.b),Y		; F1 E1
	sbc ($30.b)		; F2 30
	dec $A811.w		; CE 11 A8
	jsr $0F01.w		; 20 01 0F
	ora $0B21.w		; 0D 21 0B
	ora ($41.b,X)		; 01 41
	tya		; 98
	ora ($DC.b)		; 12 DC
	cmp ($FF.b)		; D2 FF
	ora ($20.b)		; 12 20
	asl A		; 0A
	sbc $98.b,S		; E3 98
	and ($24.b),Y		; 31 24
	cmp $D1F2.w,X		; DD F2 D1
	rol $03DD.w		; 2E DD 03
	tya		; 98
	eor [$0D.b]		; 47 0D
	dec $F1E1.w		; CE E1 F1
	sbc ($30.b,S),Y		; F3 30
	cmp $1398.w		; CD 98 13
	ora ($11.b),Y		; 11 11
	cpx #$FE.b		; E0 FE
	ora $1A.b,S		; 03 1A
	lda $3E44A8.l		; AF A8 44 3E
	dec $FFF2.w,X		; DE F2 FF
	ora ($30.b,X)		; 01 30
	ora $C198.w		; 0D 98 C1
	and ($11.b,S),Y		; 33 11
	bpl  47.b		; 10 2F
	txy		; 9B
	and ($F0.b,S),Y		; 33 F0
	tya		; 98
	sbc ($44.b),Y		; F1 44
	ora $D2C1.w		; 0D C1 D2
	sbc $981F15.l		; EF 15 1F 98
	cmp $2102.w,X		; DD 02 21
	and ($1E.b,X)		; 21 1E
	tas		; 1B
	bne  47.b		; D0 2F
	tya		; 98
	sbc ($12.b,S),Y		; F3 12
	and ($BF.b),Y		; 31 BF
	sbc $33E200.l,X		; FF 00 E2 33
	tya		; 98
	sbc $04ED.w,X		; FD ED 04
	and ($01.b,S),Y		; 33 01
	inc $01DC.w		; EE DC 01
	tya		; 98
	sbc $43.b,S		; E3 43
	jsr $F1FA.w		; 20 FA F1
	bne  17.b		; D0 11
	ora $98.b,X		; 15 98
	trb $02ED.w		; 1C ED 02
	bvc   1.b		; 50 01
	bit $BC0E.w		; 2C 0E BC
	tya		; 98
	tsb $66.b		; 04 66
	and $D0CD.w,X		; 3D CD D0
	ora $982100.l,X		; 1F 00 21 98
	and ($EE.b),Y		; 31 EE
	inc $3303.w		; EE 03 33
	brk $DF.b		; 00 DF
	tas		; 1B
	tay		; A8
	bne  19.b		; D0 13
	.db $42, $ED		; 42 ED
	beq   0.b		; F0 00
	asl $9801.w		; 0E 01 98
	eor ($2F.b,X)		; 41 2F
	inc $02E0.w		; EE E0 02
	and ($40.b,S),Y		; 33 40
	stp		; DB
	tay		; A8
	ldx $5305.w		; AE 05 53
	ora $00DF.w,X		; 1D DF 00
	asl $9800.w		; 0E 00 98
	adc ($EF.b),Y		; 71 EF
	sbc ($21.b),Y		; F1 21
	sbc $42F1.w		; ED F1 42
	eor $BEEDA8.l,X		; 5F A8 ED BE
	and $51.b,X		; 35 51
	jsr ($2FE0.w,X)		; FC E0 2F
	inc $1398.w,X		; FE 98 13
	eor ($BE.b)		; 52 BE
	sbc ($42.b)		; F2 42
	plx		; FA
	cmp ($25.b),Y		; D1 25
	tay		; A8
	bmi  13.b		; 30 0D
	ldy $5415.w		; AC 15 54
	inc $10C0.w,X		; FE C0 10
	tya		; 98
	cmp $54E3.w,X		; DD E3 54
	ora $34A0.w		; 0D A0 34
	rol $A8AD.w		; 2E AD A8
	ora ($33.b)		; 12 33
	ora $D4CA.w		; 0D CA D4
	stz $3E.b		; 64 3E
	sbc $01A8.w		; ED A8 01
	sbc $2F24FF.l		; EF FF 24 2F
	jsr ($30F1.w,X)		; FC F1 30
	clv		; B8
	brk $E0.b		; 00 E0
	and ($11.b,X)		; 21 11
	sbc $2314CE.l		; EF CE 14 23
	tay		; A8
	sbc $0FB1.w		; ED B1 0F
	ora $2F42D2.l		; 0F D2 42 2F
	jmp.w [$F1B8]		; DC B8 F1
	ora ($F0.b)		; 12 F0
	sbc ($F2.b),Y		; F1 F2
	ora $A8DE1D.l,X		; 1F 1D DE A8
	eor $65.b		; 45 65
	xce		; FB
	cpy #$01.b		; C0 01
	asl $23C1.w,X		; 1E C1 23
	tay		; A8
	eor ($DD.b,X)		; 41 DD
	cmp $013E12.l,X		; DF 12 3E 01
	sbc ($31.b),Y		; F1 31
	clv		; B8
	brk $AE.b		; 00 AE
	ora ($52.b),Y		; 11 52
	and $00EF.w		; 2D EF 00
	rol $B0A8.w		; 2E A8 B0
	and ($63.b)		; 32 63
	cpx $E2DD.w		; EC DD E2
	bmi  33.b		; 30 21
	clv		; B8
	ora ($00.b,X)		; 01 00
	brk $DC.b		; 00 DC
	sbc ($33.b)		; F2 33
	eor $DEA8C0.l		; 4F C0 A8 DE
	bmi -49.b		; 30 CF
	cop $55.b		; 02 55
	ora $BFCE.w,X		; 1D CE BF
	clv		; B8
	ora ($02.b)		; 12 02
	ora $EBF101.l,X		; 1F 01 F1 EB
	ora $32B833.l		; 0F 33 B8 32
	inc $11FE.w		; EE FE 11
	inc $1300.w,X		; FE 00 13
	and ($A4.b,X)		; 21 A4
	adc ($E9.b,X)		; 61 E9
	txs		; 9A
	cmp ($36.b),Y		; D1 36
	ror $44.b		; 66 44
	dec A		; 3A
	tay		; A8
	cpy #$05.b		; C0 05
	adc $FF.b,X		; 75 FF
	cpx $FD00.w		; EC 00 FD
	cpx #$A8.b		; E0 A8
	ora $52.b		; 05 52
	rol $FCBC.w		; 2E BC FC
	ora $33.b		; 05 33
	and ($A8.b),Y		; 31 A8
	sbc $F2C0FA.l		; EF FA C0 F2
	eor $01.b,X		; 55 01
	trb $A81F.w		; 1C 1F A8
	sbc $F2EF.w		; ED EF F2
	.db $62, $31, $EC		; 62 31 EC
	cpx $A8D2.w		; EC D2 A8
	and ($43.b,S),Y		; 33 43
	sbc $E3C3EA.l,X		; FF EA C3 E3
	and ($E2.b),Y		; 31 E2
	tay		; A8
	ora ($21.b),Y		; 11 21
	jmp.w [$F4CE]		; DC CE F4
	and ($30.b)		; 32 30
	asl $0CA8.w		; 0E A8 0C
	bne   3.b		; D0 03
	.db $42, $3F		; 42 3F
	cpy $30C0.w		; CC C0 30
	tay		; A8
	rti		; 40

	cpx #$03.b		; E0 03
	jsl $D1BEFD.l		; 22 FD BE D1
	eor ($A8.b)		; 52 A8
	ora ($0E.b,S),Y		; 13 0E
	ora $3400CF.l		; 0F CF 00 34
	jsl $90A8DC.l		; 22 DC A8 90
	trb $52.b		; 14 52
	cmp $46F0.w		; CD F0 46
	inc $A8CA.w,X		; FE CA A8
	sbc ($53.b,X)		; E1 53
	bmi -34.b		; 30 DE
	brk $F2.b		; 00 F2
	ora $22A811.l		; 0F 11 A8 22
	plx		; FA
	cmp $DF62F6.l		; CF F6 62 DF
	dec $A833.w		; CE 33 A8
	bmi -53.b		; 30 CB
.INDEX 16
	rep #$15		; C2 15
	bvc  -4.b		; 50 FC
	dec $A823.w,X		; DE 23 A8
	ora ($0F.b)		; 12 0F
	brk $CD.b		; 00 CD
	ora $FE2024.l,X		; 1F 24 20 FE
	tay		; A8
	cpx #$1040.w		; E0 40 10
	cmp $14F0.w		; CD F0 14
	bmi  13.b		; 30 0D
	tay		; A8
	bne  33.b		; D0 21
	and ($1F.b,X)		; 21 1F
	xce		; FB
	bne   3.b		; D0 03
	eor ($A8.b,S),Y		; 53 A8
	sbc $1312DD.l,X		; FF DD 12 13
	sbc $01DE.w,X		; FD DE 01
	eor $A8.b,S		; 43 A8
	asl $03EC.w,X		; 1E EC 03
	trb $10.b		; 14 10
	sbc $00BD.w,X		; FD BD 00
	tay		; A8
	eor $4F.b		; 45 4F
	sbc $21C1.w,X		; FD C1 21
	jsr $E0DD.w		; 20 DD E0
	tay		; A8
	trb $31.b		; 14 31
	inc $21C1.w		; EE C1 21
	.db $42, $0F		; 42 0F
	tyx		; BB
	tay		; A8
	sbc $5335.w		; ED 35 53
	asl $20DC.w		; 0E DC 20
	and ($FC.b)		; 32 FC
	tay		; A8
	inc $42E3.w		; EE E3 42
	and $33F0DF.l		; 2F DF F0 33
	and ($A8.b,X)		; 21 A8
	wai		; CB
	cmp $64F4.w		; CD F4 64
	and $23E0DD.l,X		; 3F DD E0 23
	tay		; A8
	ora $13D1DC.l,X		; 1F DC D1 13
	and ($1F.b)		; 32 1F
	sbc $21A810.l		; EF 10 A8 21
	sbc $F1DD.w,X		; FD DD F1
	bit $22.b,X		; 34 22
	inc $98F0.w		; EE F0 98
	pea $EB11.w		; F4 11 EB
	jmp.w [$45D2]		; DC D2 45
	adc $0F.b,S		; 63 0F
	dey		; 88
	ldy $2C0C.w		; AC 0C 2C
	lda $55D1.w		; AD D1 55
	rts		; 60

	eor $F198.w		; 4D 98 F1
	brk $1F.b		; 00 1F
	inc $F0DD.w,X		; FE DD F0
	trb $45.b		; 14 45
	tya		; 98
	bmi -18.b		; 30 EE
	cpy $11FD.w		; CC FD 11
	jsl $88F011.l		; 22 11 F0 88
	sbc ($42.b),Y		; F1 42
	ora ($DC.b,X)		; 01 DC
	wai		; CB
	sbc $4614.w		; ED 14 46
	tya		; 98
	and ($1F.b,S),Y		; 33 1F
	tsb $B1DE.w		; 0C DE B1
	sbc ($23.b,S),Y		; F3 23
	ora $042F88.l,X		; 1F 88 2F 04
	bpl  12.b		; 10 0C
	tax		; AA
	cpy $5636.w		; CC 36 56
	tya		; 98
	and ($1F.b)		; 32 1F
	xce		; FB
	inc $11D1.w,X		; FE D1 11
	ora $32981E.l,X		; 1F 1E 98 32
	trb $1D.b		; 14 1D
	sbc $EFCE.w,X		; FD CE EF
	and ($34.b)		; 32 34
	tya		; 98
	and ($2E.b,X)		; 21 2E
	cmp $01EC.w,X		; DD EC 01
	and ($2F.b,X)		; 21 2F
	cpx #$3098.w		; E0 98 30
	and ($00.b,S),Y		; 33 00
	cmp $F2AE.w		; CD AE F2
	eor $32.b		; 45 32
	tya		; 98
	ora ($FD.b,X)		; 01 FD
	cmp $1120CF.l,X		; DF CF 20 11
	asl $9821.w,X		; 1E 21 98
	ora ($20.b,S),Y		; 13 20
	sbc $F3DFCB.l,X		; FF CB DF F3
	bit $51.b,X		; 34 51
	tya		; 98
	bmi -17.b		; 30 EF
	stp		; DB
	jsr ($03D2.w,X)		; FC D2 03
	and $11.b		; 25 11
	tay		; A8
	jsr $FD00.w		; 20 00 FD
	dec $34D1.w		; CE D1 34
	eor ($1F.b,S),Y		; 53 1F
	tay		; A8
	inc $FBEB.w,X		; FE EB FB
	sbc $36.b,S		; E3 36
	mvp $0B,$EE		; 44 EE 0B
	tay		; A8
	ora $15D0CF.l,X		; 1F CF D0 15
	eor $2F.b		; 45 2F
	sbc $B80F.w		; ED 0F B8
	bne -64.b		; D0 C0
	ora ($42.b,S),Y		; 13 42
	and $00EFEE.l		; 2F EE EF 00
	tay		; A8
	asl $4500.w		; 0E 00 45
	eor $EB.b,S		; 43 EB
	beq  10.b		; F0 0A
	cpx $E3B8.w		; EC B8 E3
	bit $41.b		; 24 41
	cpx $02FD.w		; EC FD 02
	beq -16.b		; F0 F0
	clv		; B8
	ora ($31.b)		; 12 31
	ora $3EEF.w,X		; 1D EF 3E
	sbc $B843DF.l		; EF DF 43 B8
	eor ($0B.b)		; 52 0B
	dec $2FF2.w,X		; DE F2 2F
	cpx #$4202.w		; E0 02 42
	clv		; B8
	sbc $C031CF.l,X		; FF CF 31 C0
	dec $6233.w,X		; DE 33 62
	inc A		; 1A
	clv		; B8
	cmp $EF4FE2.l		; CF E2 4F EF
	ora ($61.b,X)		; 01 61
	ora $B8DD.w		; 0D DD B8
	.db $42, $DF		; 42 DF
	inc $5133.w		; EE 33 51
	tsb $F2BF.w		; 0C BF F2
	ldy $13.b		; A4 13
	ora ($0F.b),Y		; 11 0F
	bit $32.b		; 24 32
	asl $D1DE.w		; 0E DE D1
	clv		; B8
	ora $3A03F0.l,X		; 1F F0 03 3A
	inc $54E5.w		; EE E5 54
	sbc $ADB8.w		; ED B8 AD
	.db $42, $30		; 42 30
	jmp.w [$2224]		; DC 24 22
	stp		; DB
.ACCU 8
.INDEX 8
	sep #$B8		; E2 B8
	bvs -66.b		; 70 BE
	lda ($75.b)		; B2 75
	pld		; 2B
	cmp $2215.w,Y		; D9 15 22
	clv		; B8
	cmp $42E4.w,X		; DD E4 42
	plx		; FA
	bne 116.b		; D0 74
	wai		; CB
	cmp $4D56B8.l,X		; DF B8 56 4D
	ldy $22C7.w,X		; BC C7 22
	cpx $51E3.w		; EC E3 51
	clv		; B8
	inc A		; 1A
	lda ($45.b)		; B2 45
	plx		; FA
	dec $4F46.w,X		; DE 46 4F
	lda $C4B8.w		; AD B8 C4
	bvc  11.b		; 50 0B
.ACCU 8
	sep #$62		; E2 62
	jsr ($46B0.w,X)		; FC B0 46
	cpy $3F.b		; C4 3F
	cmp $43E2.w,X		; DD E2 43
	ora $1F20CF.l		; 0F CF 20 1F
	ldy $BE.b,X		; B4 BE
	rol $41.b,X		; 36 41
	tyx		; BB
	ora $5E.b,X		; 15 5E
	lda #$D5.b		; A9 D5
	cpy $43.b		; C4 43
	asl $11DF.w		; 0E DF 11
	asl $23EF.w,X		; 1E EF 23
	bpl -76.b		; 10 B4
	cpy $4C26.w		; CC 26 4C
	tax		; AA
	inc $66.b		; E6 66
	cpx $B4BF.w		; EC BF B4
	eor ($0D.b,X)		; 41 0D
	cpy #$44.b		; C0 44
	ora $1A46CE.l,X		; 1F CE 46 1A
	clv		; B8
	bpl  87.b		; 10 57
	sbc $06A0.w		; ED A0 06
	tas		; 1B
	bit $B424.w		; 2C 24 B4
	.db $42, $FE		; 42 FE
.INDEX 16
	rep #$55		; C2 55
	phx		; DA
	lda $4F47.w,X		; BD 47 4F
	ldy $CD.b,X		; B4 CD
	cpx $1E.b		; E4 1E
	sbc $3F14.w,X		; FD 14 3F
	inc $B8F4.w		; EE F4 B8
	trb $1592.w		; 1C 92 15
	eor $11DE.w		; 4D DE 11
	bpl -48.b		; 10 D0
	ldy $E6.b		; A4 E6
	adc $EC.b,S		; 63 EC
	cmp $C11D61.l		; CF 61 1D C1
	jsl $12FFB8.l		; 22 B8 FF 12
	bit $05B2.w		; 2C B2 05
	eor $01DE.w		; 4D DE 01
	ldy $12.b,X		; B4 12
	cmp $EF3110.l,X		; DF 10 31 EF
	sbc ($35.b),Y		; F1 35
	cmp $5FB8.w,Y		; D9 B8 5F
	eor $AD.b,X		; 55 AD
	brk $12.b		; 00 12
	phd		; 0B
	rti		; 40

	cop $B4.b		; 02 B4
	asl $25F0.w		; 0E F0 25
	bit $F49E.w		; 2C 9E F4
	adc $E0B4EF.l,X		; 7F EF B4 E0
	and $1F11E1.l		; 2F E1 11 1F
	cpx #$5003.w		; E0 03 50
	bcs  -5.b		; B0 FB
	plb		; AB
	and $30.b		; 25 30
	inc $EEE0.w,X		; FE E0 EE
	ora ($B4.b,X)		; 01 B4
	bpl -33.b		; 10 DF
	ora ($51.b)		; 12 51
	tsx		; BA
	sbc $B4FD65.l,X		; FF 65 FD B4
	sbc $21EFF2.l,X		; FF F2 EF 21
	bpl -17.b		; 10 EF
	ora ($44.b),Y		; 11 44
	bcs  60.b		; B0 3C
	lda #$E4.b		; A9 E4
	.db $42, $00		; 42 00
	sbc $C8F1EC.l		; EF EC F1 C8
	beq -15.b		; F0 F1
	ora ($10.b,X)		; 01 10
	cmp $EE1221.l		; CF 21 12 EE
	clv		; B8
	ora ($E3.b),Y		; 11 E3
	sbc $E0EF41.l		; EF 41 EF E0
	jsl $5DB020.l		; 22 20 B0 5D
	tsx		; BA
	cmp ($41.b,S),Y		; D3 41
	ora ($FF.b),Y		; 11 FF
	cpx $C4E1.w		; EC E1 C4
	ora ($FF.b,X)		; 01 FF
	ora ($13.b,X)		; 01 13
	cpx $220F.w		; EC 0F 22
	ora $D100A4.l		; 0F A4 00 D1
	sbc $FE63.w		; ED 63 FE
	inc DMASRC3B.w		; EE 34 43
	ldy $DC.b,X		; B4 DC
	beq  19.b		; F0 13
	ora $12F00F.l,X		; 1F 0F F0 12
	and $DEB0.w,X		; 3D B0 DE
	cpy #$2232.w		; C0 32 22
	ora $D1DC.w		; 0D DC D1
	jsl $F2FEB4.l		; 22 B4 FE F2
	bit $CA.b,X		; 34 CA
	asl $FF44.w,X		; 1E 44 FF
	ora $E1D0B4.l		; 0F B4 D0 E1
	and ($00.b)		; 32 00
	sbc $A14C13.l		; EF 13 4C A1
	ldy $E4.b,X		; B4 E4
	and $0EFD00.l,X		; 3F 00 FD 0E
	ora ($11.b,S),Y		; 13 11
	ora $33F1B4.l		; 0F B4 F1 33
	tyx		; BB
	ora $1EE043.l,X		; 1F 43 E0 1E
	bne -80.b		; D0 B0
	lda $2111.w,X		; BD 11 21
	brk $25.b		; 00 25
	lsr $E2CD.w		; 4E CD E2
	ldy $00.b,X		; B4 00
	bpl -50.b		; 10 CE
	beq  50.b		; F0 32
	bpl  -1.b		; 10 FF
	trb $B0.b		; 14 B0
	eor $22D1CC.l,X		; 5F CC D1 22
	and ($FD.b,S),Y		; 33 FD
	tyx		; BB
	cpx #$23B0.w		; E0 B0 23
	and ($14.b),Y		; 31 14
	lsr $D1BD.w,X		; 5E BD D1
	ora ($34.b)		; 12 34
	ldy $CD.b,X		; B4 CD
	inc $3221.w,X		; FE 21 32
	ora $B12A02.l,X		; 1F 02 2A B1
	ldy $F5.b,X		; B4 F5
	ora ($21.b),Y		; 11 21
	cpy $21FD.w		; CC FD 21
	and $20.b,S		; 23 20
	ldy $02.b,X		; B4 02
	rol A		; 2A
	lda ($E3.b,X)		; A1 E3
	jsl $ECDC42.l		; 22 42 DC EC
	iny		; C8
	jsr $F002.w		; 20 02 F0
	sbc ($0C.b),Y		; F1 0C
	ora $F1.b,S		; 03 F1
	bpl -76.b		; 10 B4
	eor ($FD.b,S),Y		; 53 FD
	cpx $04FD.w		; EC FD 04
	and ($22.b,S),Y		; 33 22
	bit $C7B8.w,X		; 3C B8 C7
	sbc $1F.b,S		; E3 1F
	lsr $1EDE.w,X		; 5E DE 1E
	ora $01B824.l		; 0F 24 B8 01
	beq  27.b		; F0 1B
	ldx $F1.b		; A6 F1
	rol $DF50.w,X		; 3E 50 DF
	ldy $FE.b,X		; B4 FE
	cpx $33C0.w		; EC C0 33
	eor $3E.b,S		; 43 3E
	dec $B4CE.w		; CE CE B4
	beq  52.b		; F0 34
	jsl $D0ED1E.l		; 22 1E ED D0
	trb $2F.b		; 14 2F
	tay		; A8
	bit $B0.b		; 24 B0
	cmp ($7C.b,X)		; C1 7C
	ora $11.b,S		; 03 11
	cmp $A411.w,X		; DD 11 A4
	pea $B359.w		; F4 59 B3
	pei ($DF.b)		; D4 DF
	eor $B401F0.l,X		; 5F F0 01 B4
	brk $0F.b		; 00 0F
	brk $13.b		; 00 13
	trb $F101.w		; 1C 01 F1
	bne -92.b		; D0 A4
	rol $24F1.w		; 2E F1 24
	and $1C002E.l		; 2F 2E 00 1C
	sta ($A8.b)		; 92 A8
	sbc ($DE.b,S),Y		; F3 DE
	eor $12EE.w		; 4D EE 12
	bpl  17.b		; 10 11
	and $CFF1B8.l		; 2F B8 F1 CF
	and $F0F220.l,X		; 3F 20 F2 F0
	sbc $0FA42F.l,X		; FF 2F A4 0F
	sbc ($54.b)		; F2 54
	ora $E0E0.w,Y		; 19 E0 E0
	cmp ($32.b),Y		; D1 32
	ldy $F0.b		; A4 F0
	brk $FE.b		; 00 FE
	brk $23.b		; 00 23
	rti		; 40

	cpy #$A4E1.w		; C0 E1 A4
	xce		; FB
	ora ($21.b),Y		; 11 21
	beq  32.b		; F0 20
	sbc $9401F1.l		; EF F1 01 94
	bpl  94.b		; 10 5E
	sbc $33F1DD.l,X		; FF DD F1 33
	jsl $EE880F.l		; 22 0F 88 EE
	and $EC4013.l,X		; 3F 13 40 EC
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	.db $42, $88		; 42 88
	eor $0D1DFF.l		; 4F FF 1D 0D
	and ($D2.b),Y		; 31 D2
	ora ($EC.b,S),Y		; 13 EC
	sty $CF.b		; 84 CF
	asl $230F.w		; 0E 0F 23
	ora $F31F31.l,X		; 1F 31 1F F3
	dey		; 88
	cpy #$20.b		; C0 20
	sbc $4F1CD4.l,X		; FF D4 1C 4F
	brk $F0.b		; 00 F0
	stz $30.b,X		; 74 30
	sbc $5415.w,X		; FD 15 54
	sbc ($2D.b)		; F2 2D
	wai		; CB
	asl A		; 0A
	stz $10.b,X		; 74 10
	sbc ($23.b)		; F2 23
	xce		; FB
	cpy $0502.w		; CC 02 05
	bit $78.b,X		; 34 78
	ora $3B0C.w,X		; 1D 0C 3B
	eor ($F1.b,X)		; 41 F1
	and $882D0E.l		; 2F 0E 2D 88
	cmp $E2.b		; C5 E2
	brk $1F.b		; 00 1F
	sbc ($0D.b)		; F2 0D
	phk		; 4B
	bmi 116.b		; 30 74
	sbc ($FE.b,X)		; E1 FE
	jsr $CDB0.w		; 20 B0 CD
	trb M7X.w		; 1C 1F 21
	stz $02.b,X		; 74 02
	ora [$1B.b],Y		; 17 1B
	and ($32.b,X)		; 21 32
	cmp ($10.b,S),Y		; D3 10
	sbc $CF74.w		; ED 74 CF
	phx		; DA
	eor ($30.b,X)		; 41 30
	pea $DE1C.w		; F4 1C DE
	ora $74.b,S		; 03 74
	ora $63.b		; 05 63
	jsr $9C01.w		; 20 01 9C
	asl $0311.w		; 0E 11 03
	stz $1C.b		; 64 1C
	cpy $F5BF.w		; CC BF F5
	and $13.b		; 25 13
	bmi -16.b		; 30 F0
	stz $6F.b		; 64 6F
	ora $D11F22.l		; 0F 22 1F D1
	asl $55CE.w		; 0E CE 55
	stz $F2.b,X		; 74 F2
	rol $0EFF.w		; 2E FF 0E
	bit $2106.w		; 2C 06 21
	brk $78.b		; 00 78
	ora $F2F3B5.l,X		; 1F B5 F3 F2
	asl $4E1C.w		; 0E 1C 4E
.ACCU 8
	sep #$64		; E2 64
	ldx $43.b,Y		; B6 43
	ora ($3E.b,S),Y		; 13 3E
	tsb $22BE.w		; 0C BE 22
	stz $64.b		; 64 64
	ora $B0EC0D.l,X		; 1F 0D EC B0
	.db $42, $05		; 42 05
	adc $DA64EC.l		; 6F EC 64 DA
	ora ($54.b),Y		; 11 54
	jmp LC0EC31.l		; 5C 31 EC C0
	brk $74.b		; 00 74
	ora ($50.b,X)		; 01 50
	sbc $200FD1.l		; EF D1 0F 20
	and $106010.l,X		; 3F 10 60 10
	inc $F1FD.w,X		; FE FD F1
	eor $32.b		; 45 32
	dec $64ED.w,X		; DE ED 64
	eor $1F.b,S		; 43 1F
	brk $DD.b		; 00 DD
	sbc $02215E.l		; EF 5E 21 02
	stz $00.b		; 64 00
	sbc $21F0.w,X		; FD F0 21
	adc $C1E0.w		; 6D E0 C1
	sbc $FFF454.l,X		; FF 54 F4 FF
	bmi  16.b		; 30 10
	asl $2FF1.w		; 0E F1 2F
	jsr $C550.w		; 20 50 C5
	cpx $CC9A.w		; EC 9A CC
	cpy $EA14.w		; CC 14 EA
	dex		; CA
	mvn $21,$F2		; 54 F2 21
	ora $1FE0DF.l,X		; 1F DF E0 1F
	ora $1E6415.l,X		; 1F 15 64 1E
	inc $3F0D.w		; EE 0D 3F
	ora ($5F.b,X)		; 01 5F
	inc $64DE.w,X		; FE DE 64
	ora $013201.l,X		; 1F 01 32 01
	sbc $01E00C.l		; EF 0C E0 01
	stz $25.b		; 64 25
	sbc ($CE.b),Y		; F1 CE
	cmp ($E1.b,X)		; C1 E1
	sbc ($20.b,S),Y		; F3 20
	ora $222C58.l		; 0F 58 2C 22
	sbc ($0F.b,X)		; E1 0F
	ora $0010E0.l,X		; 1F E0 10 00
	mvn $FB,$F1		; 54 F1 FB
	and ($F0.b,X)		; 21 F0
	beq  46.b		; F0 2E
	bpl -31.b		; 10 E1
	stz $EF.b		; 64 EF
	brk $01.b		; 00 01
	brk $FE.b		; 00 FE
	lsr $1FF0.w		; 4E F0 1F
	mvp $F0,$3E		; 44 3E F0
	sbc $DD.b,S		; E3 DD
	sbc $E101.w,X		; FD 01 E1
	asl A		; 0A
	mvn $11,$6B		; 54 6B 11
	inc $FF2F.w		; EE 2F FF
	sep #$01		; E2 01
	bpl  84.b		; 10 54
	ora $02FCEF.l		; 0F EF FC 02
	brk $12.b		; 00 12
	bit $44EE.w		; 2C EE 44
	sbc $CF.b		; E5 CF
	eor $01.b,S		; 43 01
	pld		; 2B
	tas		; 1B
	bcs -32.b		; B0 E0
	mvn $30,$10		; 54 10 30
	beq -62.b		; F0 C2
	inc $020F.w,X		; FE 0F 02
	ora ($64.b),Y		; 11 64
	and $B110EF.l		; 2F EF 10 B1
	eor $0F101F.l		; 4F 1F 10 0F
	mvp $F1,$90		; 44 90 F1
	eor ($25.b),Y		; 51 25
	lda $13ECFA.l,X		; BF FA EC 13
	mvn $D2,$13		; 54 13 D2
	and $EDE0.w,X		; 3D E0 ED
	eor $502F11.l,X		; 5F 11 2F 50
	sbc $AADC.w		; ED DC AA
	ldx $33F6.w		; AE F6 33
	jsr $50DC.w		; 20 DC 50
	cmp $12B6.w		; CD B6 12
	eor ($FE.b,X)		; 41 FE
	cmp $E7CE.w,X		; DD CE E7
	bvc  52.b		; 50 34
	and ($AF.b,S),Y		; 33 AF
	sbc $5412E0.l,X		; FF E0 12 54
	dec A		; 3A
	rti		; 40

	sbc $67D1CA.l		; EF CA D1 67
	adc [$3F.b]		; 67 3F
	sbc $5244EB.l		; EF EB 44 52
	jsr $0FE1.w		; 20 E1 0F
	beq  32.b		; F0 20
	bpl -15.b		; 10 F1
	bit $12.b,X		; 34 12
	cop $0E.b		; 02 0E
	eor ($E0.b,X)		; 41 E0
	bpl -30.b		; 10 E2
	and $023034.l		; 2F 34 30 02
	jsl $320DFF.l		; 22 FF 0D 32
	tsb $2F.b		; 04 2F
	sec		; 38
	eor $6BB5.w		; 4D B5 6B
	brk $51.b		; 00 51
	cpx #$D0.b		; E0 D0
	rol $F434.w,X		; 3E 34 F4
	sep #$41		; E2 41
	and $EE30C0.l,X		; 3F C0 30 EE
	ora ($34.b,X)		; 01 34
	eor ($01.b)		; 52 01
	asl $D1F4.w		; 0E F4 D1
	bpl  51.b		; 10 33
	brk $34.b		; 00 34
	inc A		; 1A
	ora ($12.b,X)		; 01 12
	ora $12.b,S		; 03 12
	sbc $340FF2.l,X		; FF F2 0F 34
	and $EDF072.l		; 2F 72 F0 ED
	cmp ($23.b),Y		; D1 23
	bit $02.b		; 24 02
	bvc  33.b		; 50 21
	brk $10.b		; 00 10
	ora ($23.b),Y		; 11 23
	and ($21.b)		; 32 21
	lda $262734.l		; AF 34 27 26
	bpl  -2.b		; 10 FE
	sbc $4241FE.l		; EF FE 41 42
	bvc  34.b		; 50 22
	jsl $120110.l		; 22 10 01 12
	and ($11.b,X)		; 21 11
	sta [$40.b],Y		; 97 40
	brk $23.b		; 00 23
	bit $00.b,X		; 34 00
	brk $21.b		; 00 21
	sbc $005000.l,X		; FF 00 50 00
	ror $F032.w		; 6E 32 F0
	brk $00.b		; 00 00
	sbc $4004FF.l,X		; FF FF 04 40
	bne  20.b		; D0 14
	adc $2F.b,S		; 63 2F
	beq  13.b		; F0 0D
	sbc $F050.w,X		; FD 50 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C1.b,X)		; 01 C1
	brk $14.b		; 00 14
	bpl   1.b		; 10 01
	brk $01.b		; 00 01
	and ($32.b,S),Y		; 33 32
	.db $42, $12		; 42 12
	trb $33.b		; 14 33
	and ($42.b)		; 32 42
	brk $00.b		; 00 00
	and ($21.b),Y		; 31 21
	bit $14.b,X		; 34 14
	eor $40.b,S		; 43 40
	cpx #$10.b		; E0 10
	jsl $204303.l		; 22 03 43 20
	trb $F2.b		; 14 F2
	ora ($43.b)		; 12 43
	bmi  34.b		; 30 22
	bpl  51.b		; 10 33
	and ($04.b,X)		; 21 04
	eor ($F0.b)		; 52 F0
	bit $46.b,X		; 34 46
	bvs -32.b		; 70 E0
	and ($E1.b,S),Y		; 33 E1
	bvc  17.b		; 50 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	bpl   2.b		; 10 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tsb $30.b		; 04 30
	beq  -1.b		; F0 FF
	inc $EEEE.w		; EE EE EE
	inc $BA04.w		; EE 04 BA
	txs		; 9A
	cmp $4DF110.l		; CF 10 F1 4D
	ora $EF14C9.l,X		; 1F C9 14 EF
	cmp $11F1.w		; CD F1 11
	ora ($0F.b),Y		; 11 0F
	ora $FE14CC.l		; 0F CC 14 FE
	lda $21120C.l,X		; BF 0C 12 21
	ora ($10.b)		; 12 10
	dec $0014.w,X		; DE 14 00
	jsr $0F10.w		; 20 10 0F
	cmp $020C.w		; CD 0C 02
	sbc ($14.b,S),Y		; F3 14
	bmi  14.b		; 30 0E
	ora $FEED.w		; 0D ED FE
	ora ($40.b),Y		; 11 40
	ora $F00C14.l		; 0F 14 0C F0
	ora $EF16.w,Y		; 19 16 EF
	ora ($0D.b),Y		; 11 0D
	phd		; 0B
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $540C0F.l,X		; FF 0F 0C 54
	inc $F017.w		; EE 17 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $0F.b		; 00 0F
	bpl   0.b		; 10 00
	ora $FC203C.l		; 0F 3C 20 FC
	stz $FF.b,X		; 74 FF
	jmp.w [$1FD3]		; DC D3 1F
	cmp ($1F.b)		; D2 1F
	stz $00.b,X		; 74 00
	stz $14.b,X		; 74 14
	asl $CDE1.w		; 0E E1 CD
	ora $00.b,S		; 03 00
	bit $22.b		; 24 22
	stz $03.b,X		; 74 03
	adc ($21.b,X)		; 61 21
	bit $EEE0.w		; 2C E0 EE
	.db $42, $EB		; 42 EB
	sty $03.b		; 84 03
	ora $0D34.w		; 0D 34 0D
	sbc $FEE31E.l,X		; FF 1E E3 FE
	sty $01.b		; 84 01
	sbc $E340.w		; ED 40 E3
	adc ($02.b,X)		; 61 02
	xce		; FB
	cmp $03DD94.l		; CF 94 DD 03
	dec $0011.w,X		; DE 11 00
	cop $4F.b		; 02 4F
	sbc ($94.b),Y		; F1 94
	rti		; 40

	cmp $DEF0.w,X		; DD F0 DE
	jsr $E42D.w		; 20 2D E4
	cpy $32A4.w		; CC A4 32
	cmp $31E041.l		; CF 41 E0 31
	sbc ($0E.b,X)		; E1 0E
	sbc ($A0.b,X)		; E1 A0
	ora $FBAE.w,X		; 1D AE FB
.INDEX 16
	rep #$1F		; C2 1F
	sbc ($22.b),Y		; F1 22
	and ($A4.b,S),Y		; 33 A4
	sbc ($F1.b),Y		; F1 F1
	inc $0FDF.w,X		; FE DF 0F
	asl $0C14.w,X		; 1E 14 0C
	ldy #$31F5.w		; A0 F5 31
	jsl $011022.l		; 22 22 10 01
	ora $DEA0EE.l		; 0F EE A0 DE
	cpy $10D2.w		; CC D2 10
	ora $42.b,S		; 03 42
	bpl  19.b		; 10 13
	ldy #$0F10.w		; A0 10 0F
	jsl $C03FBE.l		; 22 BE 3F C0
	sbc $F0A033.l,X		; FF 33 A0 F0
	eor $21.b		; 45 21
	eor $FE.b,X		; 55 FE
	and ($AD.b)		; 32 AD
	bit $B7A4.w		; 2C A4 B7
	ror A		; 6A
	ora $3E.b,S		; 03 3E
	ora $FD.b,S		; 03 FD
	ora ($FC.b,S),Y		; 13 FC
	ldy $13.b		; A4 13
	jmp.w [$E201]		; DC 01 E2
	eor $F25DE3.l		; 4F E3 5D F2
	bcs  32.b		; B0 20
	ora ($F0.b),Y		; 11 F0
	jsr $2ED0.w		; 20 D0 2E
	cmp ($1E.b,X)		; C1 1E
	ldy $35.b		; A4 35
	beq  18.b		; F0 12
	asl $1AE1.w		; 0E E1 1A
	ora ($FE.b,S),Y		; 13 FE
	tay		; A8
	and $FD14.w		; 2D 14 FD
	and ($DE.b,S),Y		; 33 DE
	rol $2CF1.w		; 2E F1 2C
	ldy $F1.b		; A4 F1
	sbc $B041.w,X		; FD 41 B0
	bvc -63.b		; 50 C1
	.db $42, $00		; 42 00
	bcs  35.b		; B0 23
	bpl  31.b		; 10 1F
	cmp ($2D.b),Y		; D1 2D
	cmp ($FC.b),Y		; D1 FC
	sbc ($A4.b,X)		; E1 A4
	ora $CE12.w,X		; 1D 12 CE
	eor ($D1.b),Y		; 51 D1
	.db $62, $00, $DD		; 62 00 DD
	ldy $0D.b,X		; B4 0D
	bcs  79.b		; B0 4F
	and $0D.b		; 25 0D
	ora $DD.b,S		; 03 DD
	jsl $3400A4.l		; 22 A4 00 34
	sbc $BEDC.w,X		; FD DC BE
	sbc ($51.b,S),Y		; F3 51
	bit $B8.b,X		; 34 B8
	cmp $41E011.l,X		; DF 11 E0 41
	inc $DF30.w		; EE 30 DF
	jsr $01A8.w		; 20 A8 01
	cmp ($3B.b),Y		; D1 3B
	and ($1D.b,S),Y		; 33 1D
	cpy #$44FE.w		; C0 FE 44
	clv		; B8
	and $02E10F.l		; 2F 0F E1 02
	sbc $12E02B.l,X		; FF 2B E0 12
	clv		; B8
	bit $4D.b		; 24 4D
	cmp $33F2ED.l		; CF ED F2 33
	jsl $0FC4ED.l		; 22 ED C4 0F
	inc $E0CD.w,X		; FE CD E0
	trb $43.b		; 14 43
	asl $B8EE.w		; 0E EE B8
	sbc ($62.b,S),Y		; F3 62
	sbc $FD01.w		; ED 01 FD
	lda ($20.b)		; B2 20
	ora $B8.b,X		; 15 B8
	lsr $DDCF.w,X		; 5E CF DD
	sbc ($31.b,S),Y		; F3 31
	and ($FC.b),Y		; 31 FC
	sbc ($B8.b)		; F2 B8
	rol A		; 2A
	ldy $13.b,X		; B4 13
	sbc $3E.b,X		; F5 3E
	dec $F20D.w		; CE 0D F2
	clv		; B8
	and $20.b,S		; 23 20
	ora $EE00.w		; 0D 00 EE
	rep #$41		; C2 41
	ora $B8.b		; 05 B8
	and $E0DD.w		; 2D DD E0
	ora $22.b,S		; 03 22
	eor $1FC0.w		; 4D C0 1F
	clv		; B8
	ldx $1142.w,Y		; BE 42 11
	eor ($A0.b),Y		; 51 A0
	sbc $12F3.w		; ED F3 12
	clv		; B8
	ora ($00.b)		; 12 00
	cpy #$CFF0.w		; C0 F0 CF
	bit $01.b,X		; 34 01
	rti		; 40

	clv		; B8
	cmp $02EF.w		; CD EF 02
	jsl $01DD22.l		; 22 22 DD 01
	xba		; EB
	clv		; B8
	ora $01.b		; 05 01
	bit $EC.b,X		; 34 EC
	sbc $F143C0.l,X		; FF C0 43 F1
	clv		; B8
	jsl $FCFFCE.l		; 22 CE FF FC
	and $5F.b		; 25 5F
	and $D0B8EB.l		; 2F EB B8 D0
	and $20.b,S		; 23 20
	eor $00DEEE.l		; 4F EE DE 00
	sbc $B8.b,X		; F5 B8
	eor ($FF.b),Y		; 51 FF
	xba		; EB
	cmp ($22.b)		; D2 22
	eor ($0D.b,X)		; 41 0D
	sbc $F5ECB8.l,X		; FF B8 EC F5
	jsr $FD43.w		; 20 43 FD
	lda $3301.w,X		; BD 01 33
	clv		; B8
	bmi  -3.b		; 30 FD
	inc $24EF.w		; EE EF 24
	jsl $B8DC02.l		; 22 02 DC B8
	cpy #$2513.w		; C0 13 25
	inc $EDEE.w,X		; FE EE ED
	sbc $30.b,X		; F5 30
	clv		; B8
	eor ($ED.b,X)		; 41 ED
	dec $33F2.w,X		; DE F2 33
	jsr $DEEC.w		; 20 EC DE
	clv		; B8
	ora $40.b,S		; 03 40
	and ($0D.b),Y		; 31 0D
	cmp $3400.w,X		; DD 00 34
	and $FFDBB8.l,X		; 3F B8 DB FF
	ora $30.b,S		; 03 30
	and ($EE.b)		; 32 EE
	dec $B800.w		; CE 00 B8
	adc $0E.b,S		; 63 0E
	ldx $13F2.w,Y		; BE F2 13
	ora ($20.b,X)		; 01 20
	inc $EEB8.w		; EE B8 EE
	ora ($41.b,S),Y		; 13 41
	jmp.w [$11FF]		; DC FF 11
	jsl $0FB810.l		; 22 10 B8 0F
	inc $14F2.w		; EE F2 14
	tsb $12DF.w		; 0C DF 12
	bpl -72.b		; 10 B8
	jsr $EF10.w		; 20 10 EF
	cpx #$1D14.w		; E0 14 1D
	cmp $02B821.l		; CF 21 B8 02
	and $E10FF0.l		; 2F F0 0F E1
	and $0D.b,S		; 23 0D
	cmp $32B8.w		; CD B8 32
	ora $3F.b,S		; 03 3F
	dec $E21E.w,X		; DE 1E E2
	eor $1E.b,S		; 43 1E
	clv		; B8
	tsx		; BA
	and $F4.b,S		; 23 F4
	eor ($DD.b,X)		; 41 DD
	beq -63.b		; F0 C1
	mvp $20,$B8		; 44 B8 20
	dex		; CA
	cmp $F1.b,X		; D5 F1
	eor ($FB.b,S),Y		; 53 FB
	brk $DE.b		; 00 DE
	clv		; B8
	and $40.b		; 25 40
	nop		; EA
	cmp $1E.b,S		; C3 1E
	eor ($2C.b,S),Y		; 53 2C
	cpx #$EEB8.w		; E0 B8 EE
	tsb $42.b		; 04 42
	xce		; FB
	lda $2D.b,S		; A3 2D
	bit $3D.b,X		; 34 3D
	ldy $F0.b,X		; B4 F0
	jsr ($36CE.w,X)		; FC CE 36
	.db $62, $BA, $0B		; 62 BA 0B
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	stz $00.b		; 64 00
	sbc $16BE.w,X		; FD BE 16
	adc ($CA.b,S),Y		; 73 CA
	sbc $F4B8.w,X		; FD B8 F4
	bvc -65.b		; 50 BF
	ora $25E2.w,X		; 1D E2 25
	and $B89C.w,X		; 3D 9C B8
	ror $51F3.w		; 6E F3 51
	jmp.w [$D12E]		; DC 2E D1
	bit $3F.b,X		; 34 3F
	clv		; B8
	txy		; 9B
	adc $BE34D4.l		; 6F D4 34 BE
	asl $44EF.w,X		; 1E EF 44
	clv		; B8
	jsr $5E9C.w		; 20 9C 5E
	sbc ($34.b,S),Y		; F3 34
	lda $B4D11E.l		; AF 1E D1 B4
	tsb $65.b		; 04 65
	nop		; EA
	ora $46CF.w		; 0D CF 46
	bpl  30.b		; 10 1E
	ldy $AD.b,X		; B4 AD
	tsb $74.b		; 04 74
	stp		; DB
	tsb $55DF.w		; 0C DF 55
	bpl -76.b		; 10 B4
	ora $15BD.w,X		; 1D BD 15
	adc $BD.b,S		; 63 BD
	phd		; 0B
	sbc ($54.b,X)		; E1 54
	clv		; B8
	cmp ($FD.b,X)		; C1 FD
	sbc ($44.b)		; F2 44
	asl A		; 0A
	lda $FD.b,X		; B5 FD
	and ($B4.b,S),Y		; 33 B4
	.db $62, $01, $FB		; 62 01 FB
	cpy #$27.b		; C0 27
	eor $DCD0.w		; 4D D0 DC
	ldy $F4.b,X		; B4 F4
	bvc  17.b		; 50 11
	xba		; EB
	cmp ($46.b),Y		; D1 46
	pld		; 2B
	sbc $15CEB4.l,X		; FF B4 CE 15
	jsr $CC11.w		; 20 11 CC
	sbc ($55.b),Y		; F1 55
	xce		; FB
	clv		; B8
	adc $33E3.w		; 6D E3 33
	bcs  15.b		; B0 0F
	cmp ($33.b),Y		; D1 33
	and $10B0.w		; 2D B0 10
	tsb $13BC.w		; 0C BC 13
	and $3F.b,S		; 23 3F
	wai		; CB
	sbc $B4.b,S		; E3 B4
	eor $CED1.w		; 4D D1 CE
	tsb $30.b		; 04 30
	brk $EC.b		; 00 EC
	sbc ($B4.b),Y		; F1 B4
	lsr $FB.b		; 46 FB
	asl $25C0.w,X		; 1E C0 25
	ora $B4DD1E.l,X		; 1F 1E DD B4
	ora $54.b,S		; 03 54
	lda $53E00C.l,X		; BF 0C E0 53
	sbc ($0D.b),Y		; F1 0D
	ldy $CF.b,X		; B4 CF
	ora $5F.b,X		; 15 5F
	lda ($EC.b),Y		; B1 EC
	ora $40.b,S		; 03 40
	bpl -76.b		; 10 B4
	sbc $36D1.w		; ED D1 36
	tas		; 1B
	ora $1015CF.l		; 0F CF 15 10
	ldy $1F.b,X		; B4 1F
	cmp $54F3.w,X		; DD F3 54
	dec $E00C.w		; CE 0C E0
	eor ($B4.b,S),Y		; 53 B4
	sbc ($0D.b),Y		; F1 0D
	dec $4E25.w,X		; DE 25 4E
.INDEX 16
	rep #$DD		; C2 DD
	sbc ($B4.b,S),Y		; F3 B4
	rti		; 40

	ora ($ED.b,X)		; 01 ED
	cmp ($45.b),Y		; D1 45
	tas		; 1B
	ora $24B4CF.l		; 0F CF B4 24
	bpl  31.b		; 10 1F
	dec $53F3.w		; CE F3 53
	dec $B41C.w		; CE 1C B4
	cpx #$0143.w		; E0 43 01
	tsb $24DF.w		; 0C DF 24
	lsr $B4C1.w,X		; 5E C1 B4
	cmp $5002.w,X		; DD 02 50
	ora ($DD.b,X)		; 01 DD
	sbc ($35.b,X)		; E1 35
	pld		; 2B
	clv		; B8
	eor ($C3.b,X)		; 41 C3
	and $DE.b,S		; 23 DE
	rol $24E0.w		; 2E E0 24
	ora $1CDDB4.l,X		; 1F B4 DD 1C
	cpx #$F143.w		; E0 43 F1
	ora $24DF.w		; 0D DF 24
	ldy $40.b,X		; B4 40
	bcs -19.b		; B0 ED
	cop $41.b		; 02 41
	ora ($DD.b,X)		; 01 DD
	cpx #$35B4.w		; E0 B4 35
	bit $CFE0.w,X		; 3C E0 CF
	tsb $30.b		; 04 30
	brk $DD.b		; 00 DD
	ldy $F1.b,X		; B4 F1
	eor $0B.b		; 45 0B
	asl $24D0.w		; 0E D0 24
	bpl  29.b		; 10 1D
	ldy $DE.b,X		; B4 DE
	ora $53.b,S		; 03 53
	dec $F00C.w		; CE 0C F0
	eor $F1.b,S		; 43 F1
	ldy $FD.b,X		; B4 FD
	sbc $B05014.l		; EF 14 50 B0
	sbc $5101.w		; ED 01 51
	ldy $00.b,X		; B4 00
	sbc $34E0.w		; ED E0 34
	jmp $CFD1.w		; 4C D1 CF
	ora $B4.b,S		; 03 B4
	eor $F1DE1F.l		; 4F 1F DE F1
	and $1B.b,X		; 35 1B
	asl $B4D0.w		; 0E D0 B4
	trb $20.b		; 14 20
	ora $02ED.w,X		; 1D ED 02
	mvp $1D,$FB		; 44 FB 1D
	ldy $E0.b,X		; B4 E0
	bit $01.b		; 24 01
	ora $03EE.w		; 0D EE 03
	eor ($CE.b)		; 52 CE
	clv		; B8
	bit $3F40.w		; 2C 40 3F
	cmp ($EE.b)		; D2 EE
	cop $22.b		; 02 22
	ora $11B0.w,X		; 1D B0 11
	jsr ($13CD.w,X)		; FC CD 13
	and $1E.b,S		; 23 1E
	cpy $B4E2.w		; CC E2 B4
	rti		; 40

	lda ($DD.b),Y		; B1 DD
	cop $41.b		; 02 41
	ora ($DE.b,X)		; 01 DE
	bne -76.b		; D0 B4
	bit $4F.b		; 24 4F
	cmp ($CE.b,X)		; C1 CE
	cop $41.b		; 02 41
	ora ($DD.b,X)		; 01 DD
	ldy $E0.b,X		; B4 E0
	bit $4D.b,X		; 34 4D
	cmp ($CF.b),Y		; D1 CF
	sbc ($40.b,S),Y		; F3 40
	bpl -76.b		; 10 B4
	cmp $24E1.w,X		; DD E1 24
	eor $CFE0.w		; 4D E0 CF
	sbc ($40.b,S),Y		; F3 40
	ldy $10.b,X		; B4 10
	cmp $24E1.w,X		; DD E1 24
	lsr $DED0.w		; 4E D0 DE
	sbc ($A8.b,S),Y		; F3 A8
	sbc $A22D.w,X		; FD 2D A2
	ora ($33.b,X)		; 01 33
	and $B1C2.w		; 2D C2 B1
	ldy $DF.b		; A4 DF
	ora ($76.b,S),Y		; 13 76
	sbc #$0B.b		; E9 0B
	cmp $B41247.l		; CF 47 12 B4
	ora $2400DE.l		; 0F DE 00 24
	and $DEE0.w,X		; 3D E0 DE
	ora $B4.b,S		; 03 B4
	and ($11.b,X)		; 21 11
	dec $03E0.w,X		; DE E0 03
	.db $42, $DE		; 42 DE
	tsb $F0B4.w		; 0C B4 F0
	and ($12.b)		; 32 12
	inc $00EE.w,X		; FE EE 00
	and $2D.b		; 25 2D
	ldy $DF.b		; A4 DF
	ldy $51F6.w		; AC F6 51
	and ($BB.b)		; 32 BB
	inc $B403.w		; EE 03 B4
	eor $FD.b,S		; 43 FD
	asl $12D0.w		; 0E D0 12
	ora ($1F.b)		; 12 1F
	sbc $12EFB4.l		; EF B4 EF 12
	.db $42, $EE		; 42 EE
	ora $23EF.w		; 0D EF 23
	ora ($B4.b)		; 12 B4
	ora $13FFDE.l,X		; 1F DE FF 13
	.db $42, $DF		; 42 DF
	jsr ($B4E0.w,X)		; FC E0 B4
	and $22.b,S		; 23 22
	asl $EFDE.w,X		; 1E DE EF
	trb $43.b		; 14 43
	sbc $2DB8.w		; ED B8 2D
	and ($31.b,X)		; 21 31
	sbc $12F00D.l,X		; FF 0D F0 12
	ora $B8.b,S		; 03 B8
	brk $DB.b		; 00 DB
	eor $2202.w,X		; 5D 02 22
	sbc $B8D00F.l,X		; FF 0F D0 B8
	ora ($11.b),Y		; 11 11
	ora ($0C.b),Y		; 11 0C
	cmp $EF.b		; C5 EF
	jsl $21B42E.l		; 22 2E B4 21
	asl $F0DE.w		; 0E DE F0
	ora $34.b,S		; 03 34
	ora $A8EE.w		; 0D EE A8
	sbc $27.b,S		; E3 27
	inc $BE1E.w		; EE 1E BE
	ora $12.b,S		; 03 12
	and ($A8.b)		; 32 A8
	asl $12D9.w		; 0E D9 12
	sbc ($44.b)		; F2 44
	sbc $A8ECFE.l,X		; FF FE EC A8
	ora ($01.b)		; 12 01
	rti		; 40

	ora $B5FF0E.l,X		; 1F 0E FF B5
	sbc $A4.b,S		; E3 A4
	sbc ($43.b,S),Y		; F3 43
	ora ($0E.b)		; 12 0E
	sbc $F2C30E.l		; EF 0E C3 F2
	ldy $F4.b		; A4 F4
	bmi -48.b		; 30 D0
	ora $20E0.w		; 0D E0 20
	cop $0F.b		; 02 0F
	ldy #$01FF.w		; A0 FF 01
	eor $F0.b		; 45 F0
	sbc $F1CB.w,X		; FD CB F1
	ora $94.b,S		; 03 94
	and $D2DEBF.l		; 2F BF DE D2
	ora ($12.b,S),Y		; 13 12
	rol $A0F2.w,X		; 3E F2 A0
	and ($C0.b),Y		; 31 C0
	inc $10D0.w		; EE D0 10
	ora ($10.b,X)		; 01 10
	ora ($A4.b,X)		; 01 A4
	ora $E1F0F0.l		; 0F F0 F0 E1
	jsr $3122.w		; 20 22 31
	bcc -104.b		; 90 98
	cpx $6E24.w		; EC 24 6E
	ldy $0B.b,X		; B4 0B
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	ldx $90.b,Y		; B6 90
	ldx $34F1.w,Y		; BE F1 34
	and ($14.b,X)		; 21 14
	adc ($A2.b,X)		; 61 A2
	inc $DF90.w		; EE 90 DF
	and $2333E1.l		; 2F E1 33 23
	and ($CD.b),Y		; 31 CD
	cmp $01A4.w,X		; DD A4 01
	and $1300E1.l		; 2F E1 00 13
	tsb $EE20.w		; 0C 20 EE
	sty $03.b,X		; 94 03
	ora $011F33.l		; 0F 33 1F 01
	phd		; 0B
	brk $0E.b		; 00 0E
	ldy $01.b		; A4 01
	ora $112F11.l		; 0F 11 2F 11
	trb $E0E2.w		; 1C E2 E0
	sty $02.b,X		; 94 02
	lsr $1E01.w		; 4E 01 1E
	ora ($00.b,X)		; 01 00
	sbc ($00.b)		; F2 00
	dey		; 88
	lda $FD.b,X		; B5 FD
	bmi  34.b		; 30 22
	sep #$0D		; E2 0D
	inc $94D4.w,X		; FE D4 94
	sbc $3F2211.l,X		; FF 11 22 3F
	pei ($EE.b)		; D4 EE
	sbc $B384FF.l		; EF FF 84 B3
	stz $35.b,X		; 74 35
	rti		; 40

	stp		; DB
	lda $30BC.w,X		; BD BC 30
	dey		; 88
	ora ($20.b),Y		; 11 20
	sbc $F4DDF0.l,X		; FF F0 DD F4
	sbc ($33.b),Y		; F1 33
	sei		; 78
	ora $BC4B.w,X		; 1D 4B BC
	eor $2F0E.w		; 4D 0E 2F
	pei ($3F.b)		; D4 3F
	sty $12.b,X		; 94 12
	and ($32.b,S),Y		; 33 32
	bit $CBEF.w		; 2C EF CB
	sbc $358810.l		; EF 10 88 35
	inc $FAC3.w,X		; FE C3 FA
	sbc ($C5.b)		; F2 C5
	cmp ($32.b)		; D2 32
	sei		; 78
	and $D0.b,S		; 23 D0
	tsb $7BBA.w		; 0C BA 7B
	cmp ($5B.b,S),Y		; D3 5B
	adc $000198.l,X		; 7F 98 01 00
	bpl   0.b		; 10 00
	sbc $D120.w		; ED 20 D1
	jsr $4088.w		; 20 88 40
	and ($1E.b,X)		; 21 1E
	cmp ($EF.b,X)		; C1 EF
	cpx #$11.b		; E0 11
	bpl 120.b		; 10 78
	pea $044D.w		; F4 4D 04
.ACCU 8
.INDEX 8
	sep #$BD		; E2 BD
	sbc ($CC.b,S),Y		; F3 CC
	ora ($88.b,X)		; 01 88
	bpl  63.b		; 10 3F
	eor $0FFF1F.l		; 4F 1F FF 0F
	inc $7803.w,X		; FE 03 78
	asl A		; 0A
	.db $42, $C4		; 42 C4
	and $EFED36.l		; 2F 36 ED EF
	cpy $E278.w		; CC 78 E2
	and ($2F.b,X)		; 21 2F
	adc $0220.w		; 6D 20 02
	lda ($DF.b,S),Y		; B3 DF
	sei		; 78
	bpl -17.b		; 10 EF
	sbc ($E1.b)		; F2 E1
	brk $6C.b		; 00 6C
	adc $7800.w		; 6D 00 78
	lsr $E0A2.w		; 4E A2 E0
	ora $04D2D5.l		; 0F D5 D2 04
	pei ($78.b)		; D4 78
	ora $C21F1E.l		; 0F 1E 1F C2
	asl $0010.w		; 0E 10 00
	ora ($78.b,X)		; 01 78
	ora $23EF21.l		; 0F 21 EF 23
	cpy $00.b		; C4 00
	phd		; 0B
	pei ($78.b)		; D4 78
	inc $3110.w		; EE 10 31
	pea $4DD1.w		; F4 D1 4D
	sbc $ED78D5.l,X		; FF D5 78 ED
	tsa		; 3B
	eor $132E.w,X		; 5D 2E 13
	asl $F13F.w		; 0E 3F F1
	stz $3F.b,X		; 74 3F
	jsr $EF0D.w		; 20 0D EF
	sbc $010000.l,X		; FF 00 00 01
	mvp $63,$F4		; 44 F4 63
	rti		; 40

	asl $CFEE.w		; 0E EE CF
	bpl -16.b		; 10 F0
	jsr $6636.w		; 20 36 66
	adc $43.b		; 65 43
	bit $44.b		; 24 44
	and ($10.b,S),Y		; 33 10
	bvc  15.b		; 50 0F
	rts		; 60

	brk $FF.b		; 00 FF
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	bit $AF.b		; 24 AF
	ora INIDSP.l		; 0F 00 21 00
	sbc ($EE.b,X)		; E1 EE
	sbc ($14.b)		; F2 14
	and ($F2.b),Y		; 31 F2
	cmp $40DD0A.l,X		; DF 0A DD 40
	eor $C014D2.l		; 4F D2 14 C0
	lda $3014.w,X		; BD 14 30
	brk $FF.b		; 00 FF
	bpl  -1.b		; 10 FF
	bvc   0.b		; 50 00
	ora ($10.b),Y		; 11 10
	brk $00.b		; 00 00
	asl A		; 0A
	ora ($21.b)		; 12 21
	bvc -112.b		; 50 90
	brk $00.b		; 00 00
	ora $0000F0.l		; 0F F0 00 00
	brk $40.b		; 00 40
	lda ($70.b,X)		; A1 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc -95.b		; 50 A1
	brk $DE.b		; 00 DE
	ora $0000.w,Y		; 19 00 00
	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $50D1.w		; 0C D1 50
	ora $0040.w		; 0D 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	bvs -13.b		; 70 F3
	lda $050000.l,X		; BF 00 00 05
	bmi  14.b		; 30 0E
	bvc   0.b		; 50 00
	brk $1B.b		; 00 1B
	bpl   1.b		; 10 01
	bcc   0.b		; 90 00
	brk $34.b		; 00 34
	cpx $2E.b		; E4 2E
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	phd		; 0B
	cpx #$30.b		; E0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $10.b,X		; 34 10
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $705A01.l		; 0F 01 5A 70
	ora $CA2202.l		; 0F 02 22 CA
	cmp $2053.w		; CD 53 20
	asl $A4.b		; 06 A4
	ora ($1C.b,X)		; 01 1C
	inc $2125.w,X		; FE 25 21
	dex		; CA
	sbc $F0B852.l,X		; FF 52 B8 F0
	ora ($0F.b,X)		; 01 0F
	rol A		; 2A
	ora $25.b,S		; 03 25
	jsr ($B8CC.w,X)		; FC CC B8
	bvc  96.b		; 50 60
.INDEX 16
	rep #$D2		; C2 D2
	beq  27.b		; F0 1B
	pea $C436.w		; F4 36 C4
	bmi -36.b		; 30 DC
	cpx #$2022.w		; E0 22 20
	brk $0F.b		; 00 0F
	ora $20C8.w		; 0D C8 20
	and ($ED.b)		; 32 ED
	inc $3E41.w		; EE 41 3E
	brk $FF.b		; 00 FF
	iny		; C8
	ora ($EF.b,X)		; 01 EF
	and ($40.b,X)		; 21 40
	jmp.w [$23E2]		; DC E2 23
	ora $F01EC8.l		; 0F C8 1E F0
	ora ($C3.b,X)		; 01 C3
	inc $0E.b,X		; F6 0E
	jmp.w [$B812]		; DC 12 B8
	lsr $D0.b		; 46 D0
	inc $2AF0.w		; EE F0 2A
	ora $66.b,S		; 03 66
	stp		; DB
	iny		; C8
	dec $4031.w		; CE 31 40
	beq  -2.b		; F0 FE
	ora ($D1.b,X)		; 01 D1
	ora ($C8.b,S),Y		; 13 C8
	and $24D2DD.l,X		; 3F DD D2 24
	ora $100F0E.l		; 0F 0E 0F 10
	iny		; C8
	cmp $14.b,S		; C3 14
	asl $12CC.w,X		; 1E CC 12
	eor ($0F.b,X)		; 41 0F
	sbc $0DF1C8.l,X		; FF C8 F1 0D
	ora ($42.b),Y		; 11 42
	sbc $32BF.w,X		; FD BF 32
	bmi -56.b		; 30 C8
	ora $DF11D0.l		; 0F D0 11 DF
	and $3F.b,S		; 23 3F
	cpx $C8D2.w		; EC D2 C8
	ora $01.b,X		; 15 01
	sbc $E31FE0.l		; EF E0 1F E3
	ora $FF.b		; 05 FF
	iny		; C8
	cpy $4121.w		; CC 21 41
	ora $0D01EE.l,X		; 1F EE 01 0D
	and ($C8.b,X)		; 21 C8
	eor ($ED.b,X)		; 41 ED
	cpy #$3F23.w		; C0 23 3F
	ora $C810D0.l		; 0F D0 10 C8
	sbc ($04.b,X)		; E1 04
	and $33F1DC.l		; 2F DC F1 33
	ora $F0C8FE.l,X		; 1F FE C8 F0
	rol $24F1.w		; 2E F1 24
	inc $12DD.w,X		; FE DD 12
	and ($C8.b),Y		; 31 C8
	asl $12FD.w,X		; 1E FD 12
	ora RDNMI.w		; 0D 10 42
	inc $B8CF.w		; EE CF B8
	eor $51.b		; 45 51
	sbc $23CF.w,X		; FD CF 23
	ldx $5116.w,Y		; BE 16 51
	clv		; B8
	cmp #$A3.b		; C9 A3
	and [$21.b]		; 27 21
	sbc $21C1.w		; ED C1 21
	lda ($C8.b,X)		; A1 C8
	ora ($2F.b,S),Y		; 13 2F
	sbc $13D3.w		; ED D3 13
	bpl -17.b		; 10 EF
	sbc ($C8.b,X)		; E1 C8
	and $1F04D2.l		; 2F D2 04 1F
	cmp $22F2.w,X		; DD F2 22
	ora $E2FFC8.l,X		; 1F C8 FF E2
	asl $04F1.w,X		; 1E F1 04
	ora $C811DC.l,X		; 1F DC 11 C8
	and $F0.b,S		; 23 F0
	sbc $E01FE2.l,X		; FF E2 1F E0
	trb $1F.b		; 14 1F
	clv		; B8
	tax		; AA
	sbc ($44.b,S),Y		; F3 44
	ora $31F0FC.l,X		; 1F FC F0 31
	lda ($C4.b,X)		; A1 C4
	sep #$43		; E2 43
	ora $F2CE.w,X		; 1D CE F2
	jsl $B8FE20.l		; 22 20 FE B8
	eor $AF.b,S		; 43 AF
	tsb $60.b		; 04 60
	nop		; EA
	lda ($25.b),Y		; B1 25
	and $C00FB8.l,X		; 3F B8 0F C0
	pea $100B.w		; F4 0B 10
	eor $ED.b,X		; 55 ED
	stz $AFB4.w,X		; 9E B4 AF
	bit $43.b,X		; 34 43
	ora $CD3FDE.l		; 0F DE 3F CD
	sbc $B8.b		; E5 B8
	ora $6210C9.l,X		; 1F C9 10 62
	bpl -18.b		; 10 EE
	sbc $BFB833.l		; EF 33 B8 BF
	tsb $5F.b		; 04 5F
	sbc $25D1.w,Y		; F9 D1 25
	jsr $B4FD.w		; 20 FD B4
	sbc $0DE2.w,X		; FD E2 0D
	cmp $5156.w,X		; DD 56 51
	tax		; AA
	bcs -76.b		; B0 B4
	bit $33.b,X		; 34 33
	asl $3FDF.w		; 0E DF 3F
	cmp $65D5.w,X		; DD D5 65
	clv		; B8
	dex		; CA
	sbc ($43.b)		; F2 43
	ora $25EFFE.l,X		; 1F FE EF 25
	jmp.w [$DCB4]		; DC B4 DC
	rol $62.b,X		; 36 62
	tsx		; BA
	lda $0F4133.l,X		; BF 33 41 0F
	ldy $DF.b,X		; B4 DF
	and ($DC.b,S),Y		; 33 DC
	lda ($57.b),Y		; B1 57
	eor $E2AA.w		; 4D AA E2
	ldy $34.b,X		; B4 34
	bpl  15.b		; 10 0F
	cpx #$CC40.w		; E0 40 CC
	cpy $65.b		; C4 65
	clv		; B8
	phx		; DA
	sbc ($43.b),Y		; F1 43
	asl $FF00.w		; 0E 00 FF
	sbc ($4B.b,S),Y		; F3 4B
	ldy $CB.b,X		; B4 CB
	cmp ($75.b,S),Y		; D3 75
	trb $02AC.w		; 1C AC 02
	and ($11.b),Y		; 31 11
	ldy $FF.b,X		; B4 FF
	sbc ($41.b),Y		; F1 41
	ldy $65B3.w,X		; BC B3 65
	and $B4AC.w,X		; 3D AC B4
	sbc ($21.b)		; F2 21
	bpl  16.b		; 10 10
	beq  51.b		; F0 33
	cpy $B8AF.w		; CC AF B8
	.db $62, $EA, $C0		; 62 EA C0
	bit $1F.b		; 24 1F
	sbc ($01.b),Y		; F1 01
	cmp $1C03B4.l,X		; DF B4 03 1C
	wai		; CB
	rol $73.b		; 26 73
	phx		; DA
	ldx $B413.w,Y		; BE 13 B4
	and ($11.b,X)		; 21 11
	asl $51E0.w		; 0E E0 51
	stp		; DB
	lda ($66.b)		; B2 66
	ldy $3D.b,X		; B4 3D
	plb		; AB
	sbc ($41.b)		; F2 41
	sbc ($01.b),Y		; F1 01
	inc $B814.w,X		; FE 14 B8
	xba		; EB
	inc $1E74.w,X		; FE 74 1E
	ldy $3012.w,X		; BC 12 30
	asl $01B8.w,X		; 1E B8 01
	ora $24F1.w,X		; 1D F1 24
	wai		; CB
	ora $B81D73.l		; 0F 73 1D B8
	cpy $3112.w		; CC 12 31
	sbc $E00F10.l,X		; FF 10 0F E0
	bit $B4.b		; 24 B4
	lsr $D4CA.w,X		; 5E CA D4
	adc $1C.b		; 65 1C
	ldx $1001.w,Y		; BE 01 10
	ldy $11.b,X		; B4 11
	bpl  -3.b		; 10 FD
	pea $CA60.w		; F4 60 CA
	ldx #$B476.w		; A2 76 B4
	and $01BC.w,X		; 3D BC 01
	and $FE22F1.l		; 2F F1 22 FE
	sbc ($B4.b,X)		; E1 B4
	eor $CB.b,X		; 55 CB
	stz $5057.w,X		; 9E 57 50
	cpy $00E0.w		; CC E0 00
	ldy $01.b,X		; B4 01
	and ($1E.b,X)		; 21 1E
	sbc $AA1B36.l		; EF 36 1B AA
	rol $B8.b		; 26 B8
	asl $12BD.w		; 0E BD 12
	ora ($E0.b)		; 12 E0
	ora ($0F.b),Y		; 11 0F
	bne -76.b		; D0 B4
	sbc ($61.b,S),Y		; F3 61
	tsx		; BA
	lda ($66.b)		; B2 66
	and $F0CE.w,X		; 3D CE F0
	ldy $0F.b,X		; B4 0F
	cop $12.b		; 02 12
	asl $36EF.w		; 0E EF 36
	pld		; 2B
	tsx		; BA
	ldy $15.b,X		; B4 15
	mvn $EF,$FC		; 54 FC EF
	brk $FF.b		; 00 FF
	ora ($21.b),Y		; 11 21
	ldy $EF.b,X		; B4 EF
	sbc ($54.b)		; F2 54
	phx		; DA
	stz $4246.w,X		; 9E 46 42
	dec $10B8.w,X		; DE B8 10
	ora $ED2111.l		; 0F 11 21 ED
	brk $23.b		; 00 23
	bit $BAB4.w		; 2C B4 BA
	ldx #$4F55.w		; A2 55 4F
	cmp $010EFF.l		; CF FF 0E 01
	ldy $22.b,X		; B4 22
	asl $24FF.w		; 0E FF 24
	eor $55B3AA.l,X		; 5F AA B3 55
	ldy $6C.b		; A4 6C
	ldx $EBFE.w,Y		; BE FE EB
	pea $1D45.w		; F4 45 1D
	dec $13B4.w,X		; DE B4 13
	bvc -70.b		; 50 BA
	lda ($45.b)		; B2 45
	jsr $0EE0.w		; 20 E0 0E
	ldy $EE.b,X		; B4 EE
	sbc ($33.b),Y		; F1 33
	asl $F3EF.w,X		; 1E EF F3
	mvp $B8,$EB		; 44 EB B8
	sbc ($62.b)		; F2 62
	sbc $E200D0.l,X		; FF D0 00 E2
	sbc $20.b,S		; E3 20
	ldy $10.b,X		; B4 10
	sbc $3D25F1.l		; EF F1 25 3D
	tax		; AA
	sbc $44.b,S		; E3 44
	ldy $3F.b		; A4 3F
	sbc ($EB.b),Y		; F1 EB
	plb		; AB
	and $52.b		; 25 52
	inc $B4F1.w		; EE F1 B4
	cop $43.b		; 02 43
	wai		; CB
	ldx $4234.w		; AE 34 42
	ora $EDB40E.l		; 0F 0E B4 ED
	sbc ($23.b,X)		; E1 23
	bpl  -1.b		; 10 FF
	brk $13.b		; 00 13
	eor $06B2B8.l		; 4F B8 B2 06
	bpl  -2.b		; 10 FE
	sbc ($0D.b),Y		; F1 0D
	ora $22B432.l,X		; 1F 32 B4 22
	ora $3400F0.l		; 0F F0 00 34
	tas		; 1B
	tyx		; BB
	tsb $A8.b		; 04 A8
	ora $2FDD.w		; 0D DD 2F
	cmp $DD52F4.l,X		; DF F4 52 DD
	sbc ($B4.b,X)		; E1 B4
	ora ($F1.b,X)		; 01 F1
	bit $FB.b,X		; 34 FB
	tyx		; BB
	and $32.b		; 25 32
	ora $C12FA8.l,X		; 1F A8 2F C1
	tsb $40.b		; 04 40
	dec $0F01.w,X		; DE 01 0F
	sbc $B4.b		; E5 B4
	and $EA.b,X		; 35 EA
	lda $3034.w,X		; BD 34 30
	brk $2F.b		; 00 2F
	cmp $E1B4.w,X		; DD B4 E1
	and ($F0.b)		; 32 F0
	sbc ($1E.b),Y		; F1 1E
	sbc ($45.b),Y		; F1 45
	plx		; FA
	ldy $AD.b,X		; B4 AD
	bit $20.b,X		; 34 20
	ora ($20.b,X)		; 01 20
	cmp $22E0.w,X		; DD E0 22
	ldy $F0.b,X		; B4 F0
	ora ($1F.b,X)		; 01 1F
	sbc ($35.b,X)		; E1 35
	asl A		; 0A
	lda $A424.w,X		; BD 24 A4
	rol $5212.w,X		; 3E 12 52
	lda #$D0.b		; A9 D0
	eor ($FF.b,X)		; 41 FF
	jsl $110DB8.l		; 22 B8 0D 11
	jsl $05C40A.l		; 22 0A C4 05
	sbc $1FA802.l		; EF 02 A8 1F
	ldy $1F42.w		; AC 42 1F
	cmp ($42.b),Y		; D1 42
	sbc $B8F0.w		; ED F0 B8
	ora ($10.b)		; 12 10
	cpy $3030.w		; CC 30 30
	beq  32.b		; F0 20
	asl $CDA4.w		; 0E A4 CD
	sbc $14DE.w		; ED DE 14
	and ($FF.b),Y		; 31 FF
	ora ($22.b,X)		; 01 22
	ldy $32.b,X		; B4 32
	cpy $11DF.w		; CC DF 11
	ora ($31.b)		; 12 31
	asl $A4DF.w,X		; 1E DF A4
	inc $32F1.w		; EE F1 32
	ora $26110F.l,X		; 1F 0F 11 26
	rtl		; 6B

	tay		; A8
	lda $16.b,X		; B5 16
	ora $EE33.w		; 0D 33 EE
	cmp $0E50.w		; CD 50 0E
	clv		; B8
	cop $01.b		; 02 01
	cpx #$F1F2.w		; E0 F2 F1
	ora ($CB.b)		; 12 CB
	and ($A8.b),Y		; 31 A8
	bmi -15.b		; 30 F1
	bvc -51.b		; 50 CD
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	cmp ($42.b),Y		; D1 42
	ldy $11.b,X		; B4 11
	sbc ($01.b),Y		; F1 01
	bpl  50.b		; 10 32
	stp		; DB
	inc $A810.w,X		; FE 10 A8
	pea $DE4C.w		; F4 4C DE
	ora $ED.b,S		; 03 ED
	tsb $2F.b		; 04 2F
	cpx #$B4.b		; E0 B4
	ora ($00.b)		; 12 00
	cop $40.b		; 02 40
	lda $0FE0.w,X		; BD E0 0F
	ora ($A8.b,S),Y		; 13 A8
	sbc $1FFF.w,X		; FD FF 1F
	cpy #$32.b		; C0 32
	brk $F2.b		; 00 F2
	asl $F1B8.w,X		; 1E B8 F1
	jsr $D51A.w		; 20 1A D5
	ora ($E1.b,X)		; 01 E1
	and $EE.b,S		; 23 EE
	tay		; A8
	sbc ($0E.b),Y		; F1 0E
	bne  64.b		; D0 40
	brk $12.b		; 00 12
	sbc $10B801.l,X		; FF 01 B8 10
	tsb $E0D6.w		; 0C D6 E0
	sbc ($31.b)		; F2 31
	bne -14.b		; D0 F2
	ldy $FD.b		; A4 FD
	lda $DFFE.w,X		; BD FE DF
	ora ($22.b,S),Y		; 13 22
	and ($33.b,S),Y		; 33 33
	ldy $30.b,X		; B4 30
	lda $EEFE.w,X		; BD FE EE
	ora ($21.b,S),Y		; 13 21
	ora ($2F.b,S),Y		; 13 2F
	tya		; 98
	ora ($0B.b),Y		; 11 0B
	cmp $7F.b,S		; C3 7F
	ora ($62.b)		; 12 62
	cmp $B432.w		; CD 32 B4
	and ($AD.b,X)		; 21 AD
	ora $13CF.w		; 0D CF 13
	cop $33.b		; 02 33
	bpl -88.b		; 10 A8
	bpl -65.b		; 10 BF
	ora $F0.b,S		; 03 F0
	and ($1E.b,S),Y		; 33 1E
	cop $0E.b		; 02 0E
	ldy $21.b,X		; B4 21
	stp		; DB
	ora $12CD.w		; 0D CD 12
	ora ($43.b),Y		; 11 43
	and ($A8.b,X)		; 21 A8
	sbc ($EC.b,X)		; E1 EC
	ora ($0F.b),Y		; 11 0F
	and $00.b		; 25 00
	ora ($1C.b,X)		; 01 1C
	clv		; B8
	cop $FD.b		; 02 FD
	cmp $EF.b,X		; D5 EF
	ora $10.b,S		; 03 10
	cpx $FF.b		; E4 FF
	tay		; A8
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	ldy $0E.b,X		; B4 0E
	pea $0030.w		; F4 30 00
	rol $E1A8.w,X		; 3E A8 E1
	jsr $62C9.w		; 20 C9 62
	lda $72DF62.l		; AF 62 DF 72
	tay		; A8
	ldx $CD40.w,Y		; BE 40 CD
	and ($FC.b,X)		; 21 FC
	bit $FF.b		; 24 FF
	ora ($98.b,S),Y		; 13 98
	cmp $1CDE06.l,X		; DF 06 DE 1C
	lda [$CF.b]		; A7 CF
	ora ($02.b)		; 12 02
	dey		; 88
	inc $E1.b,X		; F6 E1
	asl $113F.w		; 0E 3F 11
	ldy $1D4D.w,X		; BC 4D 1D
	dey		; 88
	eor $0E42DD.l		; 4F DD 42 0E
	rti		; 40

	brk $30.b		; 00 30
	tsb $2388.w		; 0C 88 23
	cmp $10C12D.l,X		; DF 2D C1 10
	cpx #$21.b		; E0 21
	bpl -120.b		; 10 88
	and $12FEF4.l		; 2F F4 FE 12
	beq   0.b		; F0 00
	rol A		; 2A
	ora $88.b,S		; 03 88
	jsr ($EE03.w,X)		; FC 03 EE
	tsb $01.b		; 04 01
	and ($0D.b)		; 32 0D
	bpl 116.b		; 10 74
	bit $21CC.w		; 2C CC 21
	ora $32.b,S		; 03 32
	ora ($EC.b)		; 12 EC
	lda $BD78.w,X		; BD 78 BD
	ora ($F2.b,S),Y		; 13 F2
	asl $0E.b		; 06 0E
	ora ($FF.b,S),Y		; 13 FF
	pea $2084.w		; F4 84 20
	cmp $F0DFDE.l		; CF DE DF F0
	sbc ($31.b,X)		; E1 31
	inc $4178.w,X		; FE 78 41
	sta ($1F.b,S),Y		; 93 1F
	cmp ($20.b)		; D2 20
	ora ($32.b,X)		; 01 32
	inc $1F78.w,X		; FE 78 1F
	pld		; 2B
	ora $3C02.w		; 0D 02 3C
	sbc $0D.b,X		; F5 0D
	eor $FE2274.l		; 4F 74 22 FE
	bit $E221.w,X		; 3C 21 E2
	trb $754F.w		; 1C 4F 75
	sty $20.b		; 84 20
	rti		; 40

	ora $FEDCF0.l,X		; 1F F0 DC FE
	cmp $8411.w,X		; DD 11 84
	sbc $124FF2.l,X		; FF F2 4F 12
	sbc ($1F.b)		; F2 1F
	rol $7821.w		; 2E 21 78
	cmp $E3.b		; C5 E3
	dec $CC.b		; C6 CC
	ora $0C50.w,X		; 1D 50 0C
	and ($74.b,X)		; 21 74
	trb $F3.b		; 14 F3
	cmp ($6F.b,X)		; C1 6F
	rti		; 40

	and ($BF.b)		; 32 BF
	ora ($60.b),Y		; 11 60
	and $01.b,X		; 35 01
	lsr $01.b,X		; 56 01
	inc $E2.b,X		; F6 E2
	and $A27422.l		; 2F 22 74 A2
	cmp ($00.b,X)		; C1 00
	and ($20.b,X)		; 21 20
	sbc ($FF.b),Y		; F1 FF
	rol $F160.w		; 2E 60 F1
	rol $1CFB.w,X		; 3E FB 1C
	cmp $144C63.l,X		; DF 63 4C 14
	bvs -63.b		; 70 C1
	bpl  19.b		; 10 13
	ora $EF5D.w,X		; 1D 5D EF
	cmp $10700F.l		; CF 0F 70 10
	and ($FD.b,X)		; 21 FD
	asl $2350.w,X		; 1E 50 23
	ora $DE.b,S		; 03 DE
	bvs  60.b		; 70 3C
	cmp $102E1D.l,X		; DF 1D 2E 10
	and ($F6.b)		; 32 F6
	cmp ($70.b),Y		; D1 70
	tsb $FFF1.w		; 0C F1 FF
	trb $05.b		; 14 05
	jsl $700042.l		; 22 42 00 70
	jmp.w [$CDDB]		; DC DB CD
	and $142623.l,X		; 3F 23 26 14
	sbc $2C70.w		; ED 70 2C
	cmp $3ED1D0.l,X		; DF D0 D1 3E
	ora $12.b,X		; 15 12
	asl $2A70.w,X		; 1E 70 2A
	ora ($BF.b,X)		; 01 BF
	tas		; 1B
	and $E0.b,S		; 23 E0
	ora ($40.b,S),Y		; 13 40
	bvs  17.b		; 70 11
	asl $1121.w		; 0E 21 11
	sbc ($F1.b),Y		; F1 F1
	eor ($F3.b,X)		; 41 F3
	bvs -15.b		; 70 F1
	cmp ($E0.b,X)		; C1 E0
	tas		; 1B
	and ($F3.b,X)		; 21 F3
	dec $1E.b,X		; D6 1E
	bvs  59.b		; 70 3B
	rts		; 60

	sta $4D.b,X		; 95 4D
	and ($06.b)		; 32 06
	sbc $B26031.l		; EF 31 60 B2
	ror $FB5D.w		; 6E 5D FB
	asl $4FF7.w		; 0E F7 4F
	ror $70.b		; 66 70
	brk $03.b		; 00 03
	cmp $113F.w		; CD 3F 11
	bne -14.b		; D0 F2
	trb $1180.w		; 1C 80 11
	bne   1.b		; D0 01
	sbc $D3322F.l,X		; FF 2F 32 D3
	pei ($80.b)		; D4 80
	beq   0.b		; F0 00
	sbc $143E.w,X		; FD 3E 14
	sbc ($3E.b)		; F2 3E
	bpl 112.b		; 10 70
	tas		; 1B
	cop $FB.b		; 02 FB
	bmi -30.b		; 30 E2
	ora $323D.w		; 0D 3D 32
	bra -47.b		; 80 D1
	bit $012D.w		; 2C 2D 01
	cop $E0.b		; 02 E0
	and $7012.w		; 2D 12 70
	ldy $5D.b,X		; B4 5D
	eor ($02.b),Y		; 51 02
	cmp $F9.b,S		; C3 F9
	adc $1C80A2.l		; 6F A2 80 1C
	and ($E0.b,X)		; 21 E0
	and $11FE01.l		; 2F 01 FE 11
	cmp $80.b,S		; C3 80
	sbc $200DFE.l		; EF FE 0D 20
	sbc ($1C.b,X)		; E1 1C
	and $700F.w		; 2D 0F 70
	cpx $0F3B.w		; EC 3B 0F
	sbc ($D5.b,X)		; E1 D5
	ldy #$2E.b		; A0 2E
	and $EED180.l		; 2F 80 D1 EE
	phd		; 0B
	and ($F0.b,X)		; 21 F0
	and $E04D.w		; 2D 4D E0
	bvs  59.b		; 70 3B
	cmp ($D0.b),Y		; D1 D0
	brk $30.b		; 00 30
	cmp $80CDD3.l		; CF D3 CD 80
	ora $EFC2.w,X		; 1D C2 EF
	bpl   0.b		; 10 00
	ora $701D2F.l		; 0F 2F 1D 70
	sbc $E2DFD1.l,X		; FF D1 DF E2
	sbc ($EE.b),Y		; F1 EE
	ora ($F2.b),Y		; 11 F2
	bvs -77.b		; 70 B3
	tsa		; 3B
	tsa		; 3B
	bmi -75.b		; 30 B5
	sbc $4A04.w,X		; FD 04 4A
	bra  45.b		; 80 2D
	brk $0F.b		; 00 0F
	ora $E410.w		; 0D 10 E4
	ora $F280F3.l		; 0F F3 80 F2
	cpx #$2F.b		; E0 2F
	bpl  15.b		; 10 0F
	ora ($E1.b,X)		; 01 E1
	cpx $4C80.w		; EC 80 4C
	eor ($F1.b,X)		; 41 F1
	ora ($0F.b),Y		; 11 0F
	rol $1E12.w,X		; 3E 12 1E
	bvs  19.b		; 70 13
	pei ($B2.b)		; D4 B2
	ora $03123B.l		; 0F 3B 12 03
	lda ($70.b)		; B2 70
	ora $C5.b,S		; 03 C5
	sbc $E211.w,X		; FD 11 E2
	cmp ($FB.b,S),Y		; D3 FB
	bvc 112.b		; 50 70
	inc $344D.w		; EE 4D 34
	sbc $B5.b,S		; E3 B5
	sbc $DD.b,X		; F5 DD
	eor ($70.b)		; 52 70
	ora $A425.w,X		; 1D 25 A4
	lda ($5B.b),Y		; B1 5B
	cpx $F1.b		; E4 F1
	inc $3270.w,X		; FE 70 32
	cpy $DF.b		; C4 DF
	tad		; 5B
	and ($2F.b)		; 32 2F
	jsr $80F7.w		; 20 F7 80
	cmp ($D2.b,S),Y		; D3 D2
	rol $1020.w		; 2E 20 10
	ora ($02.b),Y		; 11 02
	cpx $70.b		; E4 70
	beq  49.b		; F0 31
	sbc $E2F353.l,X		; FF 53 F3 E2
	sbc $E1.b		; E5 E1
	bvs  28.b		; 70 1C
	and $4F3F43.l,X		; 3F 43 3F 4F
	beq  17.b		; F0 11
	ora $2E80.w,X		; 1D 80 2E
	ora $F5123D.l		; 0F 3D 12 F5
	sbc ($11.b,S),Y		; F3 11
	ora ($84.b,X)		; 01 84
	cpx #$FF.b		; E0 FF
	asl $2D0E.w,X		; 1E 0E 2D
	eor $84203E.l		; 4F 3E 20 84
	and $F3.b,S		; 23 F3
	and $EF2C4D.l		; 2F 4D 2C EF
	lda $84EE.w,X		; BD EE 84
	asl $211F.w		; 0E 1F 21
	jsl $42F014.l		; 22 14 F0 42
	and $D03584.l,X		; 3F 84 35 D0
	ora $ADDBBD.l		; 0F BD DB AD
	inc $98F0.w		; EE F0 98
	ora ($01.b,X)		; 01 01
	sbc ($0F.b,X)		; E1 0F
	sbc $C1.b,X		; F5 C1
	bpl -32.b		; 10 E0
	dey		; 88
	rol $1ED0.w,X		; 3E D0 1E
	cpx $FF.b		; E4 FF
	and $980212.l,X		; 3F 12 02 98
	sbc ($0D.b),Y		; F1 0D
	trb $C0.b		; 14 C0
	and $E01FD1.l,X		; 3F D1 1F E0
	tya		; 98
	and $0FF3.w		; 2D F3 0F
	jsr $0210.w		; 20 10 02
	brk $FC.b		; 00 FC
	tya		; 98
	rts		; 60

	sta $1D.b,X		; 95 1D
	sep #$0F		; E2 0F
	cmp ($1C.b)		; D2 1C
	jsl $200FA8.l		; 22 A8 0F 20
	brk $21.b		; 00 21
	cpx #$E3.b		; E0 E3
	phd		; 0B
	and ($98.b)		; 32 98
	stz $A032.w,X		; 9E 32 A0
	bmi -47.b		; 30 D1
	lsr $01F4.w,X		; 5E F4 01
	ldy $36.b		; A4 36
	stz $01.b		; 64 01
	eor $FAD1.w,X		; 5D D1 FA
	lda $11B8CA.l,X		; BF CA B8 11
	beq  17.b		; F0 11
	sep #$00		; E2 00
	brk $20.b		; 00 20
	lda ($B4.b)		; B2 B4
	rol $FDD1.w,X		; 3E D1 FD
	cmp $0ED1FD.l		; CF FD D1 0E
	ora ($B4.b,S),Y		; 13 B4
	cop $23.b		; 02 23
	jsl $2BD142.l		; 22 42 D1 2B
	beq -20.b		; F0 EC
	ldy $AE.b		; A4 AE
	sbc $FEF5.w,Y		; F9 F5 FE
	adc $22.b		; 65 22
	eor [$23.b],Y		; 57 23
	ldy $4E.b,X		; B4 4E
	cmp ($FB.b)		; D2 FB
	ora $0DF0DC.l		; 0F DC F0 0D
	and ($B4.b,S),Y		; 33 B4
	sbc ($32.b),Y		; F1 32
	brk $31.b		; 00 31
	sbc ($3D.b)		; F2 3D
	cmp $EB.b,S		; C3 EB
	ldy $10.b		; A4 10
	wai		; CB
	ora $0D.b,S		; 03 0D
	ror $C1.b		; 66 C1
	rts		; 60

	sbc $F12FB4.l		; EF B4 2F F1
	bmi -63.b		; 30 C1
	bit $0DE2.w,X		; 3C E2 0D
	sbc ($B4.b)		; F2 B4
	asl $0DF4.w		; 0E F4 0D
	jsl $F121EF.l		; 22 EF 21 F1
	and ($B4.b,S),Y		; 33 B4
	sbc $A130.w		; ED 30 A1
	ora $2FC1.w,X		; 1D C1 2F
	sep #$4E		; E2 4E
	ldy $03.b,X		; B4 03
	ora $130FF2.l,X		; 1F F2 0F 13
	phd		; 0B
	ora ($BE.b,S),Y		; 13 BE
	ldy $20.b,X		; B4 20
	cmp $40F021.l,X		; DF 21 F0 40
	sbc ($1F.b,X)		; E1 1F
	cpx #$B4.b		; E0 B4
	ora $D24F03.l,X		; 1F 03 4F D2
	pld		; 2B
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sbc ($B8.b,S),Y		; F3 B8
	dec $B033.w,X		; DE 33 B0
	jsr $02D1.w		; 20 D1 02
.ACCU 8
	sep #$20		; E2 20
	ldy $EC.b,X		; B4 EC
	eor $D11EB1.l		; 4F B1 1E D1
	jsr $3FF2.w		; 20 F2 3F
	ldy $F1.b,X		; B4 F1
	asl $00E1.w		; 0E E1 00
	and $2D.b		; 25 2D
	cpx $DB.b		; E4 DB
	ldy $11.b		; A4 11
	tsx		; BA
	eor $10.b		; 45 10
	adc $ED.b		; 65 ED
	asl $B4BC.w		; 0E BC B4
	ora ($13.b,X)		; 01 13
	eor ($B0.b,S),Y		; 53 B0
	bit $0DB0.w,X		; 3C B0 0D
.ACCU 8
	sep #$A8		; E2 A8
	bit $EAF5.w		; 2C F5 EA
	sbc ($1C.b),Y		; F1 1C
	ora ($33.b,S),Y		; 13 33
	and ($B4.b)		; 32 B4
	trb $AC11.w		; 1C 11 AC
	ora $3133EF.l		; 0F EF 33 31
	and ($B8.b),Y		; 31 B8
	bne -15.b		; D0 F1
	brk $22.b		; 00 22
	and $EAC41C.l,X		; 3F 1C C4 EA
	clv		; B8
	eor ($F2.b),Y		; 51 F2
	trb $0E.b		; 14 0E
	sbc $F3F2FC.l,X		; FF FC F2 F3
	cpy $02.b		; C4 02
	and ($22.b)		; 32 22
	brk $0C.b		; 00 0C
	cpy #$FF.b		; C0 FF
	and ($B8.b,X)		; 21 B8
	rtl		; 6B

	cmp ($DE.b)		; D2 DE
	cmp ($30.b)		; D2 30
	and ($10.b),Y		; 31 10
	sbc $2FB8.w		; ED B8 2F
	bit $79A5.w		; 2C A5 79
	and $02.b		; 25 02
	sta $FEB81F.l,X		; 9F 1F B8 FE
	.db $42, $F1		; 42 F1
	ora ($ED.b),Y		; 11 ED
	ora ($11.b),Y		; 11 11
	lda $F3B4.w		; AD B4 F3
	cpx #$33.b		; E0 33
	eor $DFFEEF.l		; 4F EF FE DF
	jsr $01B8.w		; 20 B8 01
	ora $0C12E1.l,X		; 1F E1 12 0C
	stx $5B.b,Y		; 96 5B
	ora ($B8.b,S),Y		; 13 B8
	ora ($CD.b)		; 12 CD
	and $1F21FF.l		; 2F FF 21 1F
	ora ($EF.b)		; 12 EF
	clv		; B8
	ora $55AC21.l,X		; 1F 21 AC 55
	lda ($12.b,S),Y		; B3 12
	tas		; 1B
	cmp ($B4.b),Y		; D1 B4
	inc $21DF.w,X		; FE DF 21
	ora ($20.b)		; 12 20
	brk $12.b		; 00 12
	bit $DEC0.w		; 2C C0 DE
	inc $24F0.w,X		; FE F0 24
	and ($00.b),Y		; 31 00
	inc $B4EE.w,X		; FE EE B4
	and ($11.b,X)		; 21 11
	bpl  17.b		; 10 11
	rti		; 40

	lda #$3E.b		; A9 3E
	sbc ($B8.b,S),Y		; F3 B8
	sbc $DB.b		; E5 DB
	sbc ($1E.b)		; F2 1E
	cop $11.b		; 02 11
	ora $12C00F.l		; 0F 0F C0 12
	bit $1D.b,X		; 34 1D
	inc $F1EF.w		; EE EF F1
	eor $1F.b,S		; 43 1F
	iny		; C8
	and $0FF201.l		; 2F 01 F2 0F
	ora $DE2F10.l		; 0F 10 2F DE
	ldy $00.b,X		; B4 00
	sbc ($04.b)		; F2 04
	eor $FF0FDC.l,X		; 5F DC 0F FF
	sbc ($C4.b,S),Y		; F3 C4
	ora ($0F.b),Y		; 11 0F
	cop $20.b		; 02 20
	cmp $101F.w,X		; DD 1F 10
	ora $A8.b,S		; 03 A8
	sta $31B3.w,Y		; 99 B3 31
	tas		; 1B
	lsr $ED.b		; 46 ED
	inc $C856.w		; EE 56 C8
	ora $2FD3.w		; 0D D3 2F
	asl $EF30.w,X		; 1E 30 EF
	brk $10.b		; 00 10
	iny		; C8
	ora $F10F20.l		; 0F 20 0F F1
	ora ($DC.b)		; 12 DC
	and $F1.b,S		; 23 F1
	clv		; B8
	cmp ($4D.b)		; D2 4D
	cmp $0022.w,X		; DD 22 00
	pei ($2F.b)		; D4 2F
	inc $F3B4.w		; EE B4 F3
	eor ($9A.b),Y		; 51 9A
	rol $0530.w		; 2E 30 05
	and $E1B4CD.l,X		; 3F CD B4 E1
	asl $4103.w		; 0E 03 41
	inc $2925.w		; EE 25 29
	lda ($B8.b,X)		; A1 B8
	cpx $C1.b		; E4 C1
	eor $2F11CD.l		; 4F CD 11 2F
	sbc ($11.b,S),Y		; F3 11
	cpy #$21.b		; C0 21
	ora ($34.b,X)		; 01 34
	ora $FFED.w		; 0D ED FF
	cop $43.b		; 02 43
	cpy #$0F.b		; C0 0F
	inc $E0ED.w		; EE ED E0
	jsl $3F2411.l		; 22 11 24 3F
	clv		; B8
	eor $03.b,S		; 43 03
	cpy $2E.b		; C4 2E
	ldx $2E20.w,Y		; BE 20 2E
	jsl $ED10B8.l		; 22 B8 10 ED
	and $19.b,S		; 23 19
	lda [$03.b],Y		; B7 03
	ora $B450.w		; 0D 50 B4
	and $FFCD.w,X		; 3D CD FF
	bne  51.b		; D0 33
	rti		; 40

	sbc ($33.b),Y		; F1 33
	cpy #$1D.b		; C0 1D
	cmp $F1EE.w,X		; DD EE F1
	mvp $FE,$20		; 44 20 FE
	jmp.w [$20C8]		; DC C8 20
	ora $FB11F0.l,X		; 1F F0 11 FB
	jsl $B8F1F2.l		; 22 F2 F1 B8
	lsr $F0CF.w		; 4E CF F0
	brk $F4.b		; 00 F4
	ora ($F0.b),Y		; 11 F0
	ora ($B8.b,X)		; 01 B8
	phd		; 0B
	ldx $E2.b,Y		; B6 E2
	ora ($42.b,X)		; 01 42
	cpy #$EF.b		; C0 EF
	ora $CDB4.w,X		; 1D B4 CD
	beq  51.b		; F0 33
	bit $41.b,X		; 34 41
	cpy $EEDC.w		; CC DC EE
	tay		; A8
	eor [$FE.b]		; 47 FE
	trb $B0E0.w		; 1C E0 B0
	rol $3063.w		; 2E 63 30
	tay		; A8
	phd		; 0B
	cmp ($AF.b,S),Y		; D3 AF
	ora ($14.b)		; 12 14
	cpx $1D.b		; E4 1D
	sbc $DDFFA4.l,X		; FF A4 FF DD
	bit $CB.b		; 24 CB
	bmi  17.b		; 30 11
	sbc ($2D.b,S),Y		; F3 2D
	ldy $0F.b,X		; B4 0F
	ora $011FF0.l		; 0F F0 1F 01
	jsl $A4B131.l		; 22 31 B1 A4
	nop		; EA
	cmp $E224.w,X		; DD 24 E2
	eor ($01.b)		; 52 01
	bne -20.b		; D0 EC
	ldy $F3.b		; A4 F3
	and $FC.b,X		; 35 FC
	eor $1DE0EF.l		; 4F EF E0 1D
	bpl -76.b		; 10 B4
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	ora ($FC.b,S),Y		; 13 FC
	and $02A4EF.l		; 2F EF A4 02
	and $0E33.w		; 2D 33 0E
	asl $F21F.w		; 0E 1F F2
	bit $A4.b		; 24 A4
	tad		; 5B
	cmp ($CD.b,S),Y		; D3 CD
	inc $F320.w,X		; FE 20 F3
	rol $A43F.w		; 2E 3F A4
	cpx #$E0.b		; E0 E0
	bit $5C.b		; 24 5C
	trb $AE.b		; 14 AE
	sbc $A40C.w,X		; FD 0C A4
	pea $3100.w		; F4 00 31
	jsl $EB12F0.l		; 22 F0 12 EB
	lsr $D2A4.w,X		; 5E A4 D2
	sbc $D1000E.l,X		; FF 0E 00 D1
	ora ($20.b),Y		; 11 20
	bit $A4.b,X		; 34 A4
	lsr $DBB4.w		; 4E B4 DB
	ora $FFE2F1.l		; 0F F1 E2 FF
	and ($94.b,X)		; 21 94
	sbc ($14.b,X)		; E1 14
	adc ($DE.b,X)		; 61 DE
	jmp ($EEC1.w,X)		; 7C C1 EE
	cmp $3E88.w,X		; DD 88 3E
	asl $D0.b,X		; 16 D0
	rti		; 40

	ora $22EE.w		; 0D EE 22
.ACCU 8
.INDEX 8
	sep #$78		; E2 78
	sep #$0D		; E2 0D
	ora ($FC.b),Y		; 11 FC
	ora $EF23.w		; 0D 23 EF
	and ($78.b,S),Y		; 33 78
	ora $90.b,X		; 15 90
	bit $E011.w,X		; 3C 11 E0
	rti		; 40

	beq   0.b		; F0 00
	dey		; 88
	jsr ($F320.w,X)		; FC 20 F3
	cpy $02.b		; C4 02
	sbc ($EF.b),Y		; F1 EF
	asl $4078.w,X		; 1E 78 40
	tsb $E0.b		; 04 E0
	jsr $ECED.w		; 20 ED EC
	eor $F1841B.l		; 4F 1B 84 F1
	ora ($21.b,X)		; 01 21
	sbc ($11.b)		; F2 11
	brk $42.b		; 00 42
	ora ($74.b,X)		; 01 74
	rol $910A.w		; 2E 0A 91
	dec $33D1.w,X		; DE D1 33
	bpl  14.b		; 10 0E
	stz $1E.b,X		; 74 1E
	asl $20E2.w		; 0E E2 20
	bit $E1.b		; 24 E1
	sbc $F17401.l,X		; FF 01 74 F1
	sbc ($11.b,S),Y		; F3 11
	tsb $BFC1.w		; 0C C1 BF
	sbc $7422.w		; ED 22 74
	and $33.b,S		; 23 33
	and $ECFE20.l,X		; 3F 20 FE EC
	ora $D17430.l,X		; 1F 30 74 D1
	ora $E32F0B.l,X		; 1F 0B 2F E3
	ora ($24.b,S),Y		; 13 24
	ora $F21E78.l,X		; 1F 78 1E F2
	cmp $2F.b		; C5 2F
	ora ($F1.b,X)		; 01 F1
	ora $74E1.w		; 0D E1 74
	sbc $5F01.w,X		; FD 01 5F
	jsl $CDFD0F.l		; 22 0F FD CD
	jsr $4274.w		; 20 74 42
	bit $E1.b		; 24 E1
	ora $E2ED.w		; 0D ED E2
	ora ($23.b)		; 12 23
	pla		; 68
	lda $005E.w,Y		; B9 5E 00
	and ($2F.b)		; 32 2F
	sbc $EE.b,S		; E3 EE
	ora $1368.w		; 0D 68 13
	cmp ($21.b)		; D2 21
	and $EEF3FC.l		; 2F FC F3 EE
	jsr $4F74.w		; 20 74 4F
	ora ($01.b)		; 12 01
	rol $EFC1.w,X		; 3E C1 EF
	ora ($13.b),Y		; 11 13
	sei		; 78
	beq -33.b		; F0 DF
	jsr $12D2.w		; 20 D2 12
	tsa		; 3B
	bpl  44.b		; 10 2C
	stz $DD.b		; 64 DD
	cmp ($C0.b,S),Y		; D3 C0
	ora ($42.b,S),Y		; 13 42
	and $64DDEF.l,X		; 3F EF DD 64
	beq   6.b		; F0 06
	bne 127.b		; D0 7F
	ora ($A0.b),Y		; 11 A0
	inc $64E4.w		; EE E4 64
	lsr $026F.w		; 4E 6F 02
	lda ($DE.b),Y		; B1 DE
	brk $10.b		; 00 10
	ora $64.b,X		; 15 64
	bmi  30.b		; 30 1E
	lda $0633A1.l,X		; BF A1 33 06
	cpx #$1F.b		; E0 1F
	sei		; 78
	beq  16.b		; F0 10
	ora ($11.b,X)		; 01 11
	sbc ($FF.b,X)		; E1 FF
	asl $64E3.w,X		; 1E E3 64
	sbc ($23.b),Y		; F1 23
	eor ($21.b,X)		; 41 21
	ldy $3E1D.w,X		; BC 1D 3E
	inc $64.b,X		; F6 64
	ora $41.b,S		; 03 41
	ora $F6BFCC.l		; 0F CC BF F6
	sbc ($60.b,S),Y		; F3 60
	stz $0F.b		; 64 0F
	cmp $E01F.w		; CD 1F E0
	asl $E3.b,X		; 16 E3
	and ($1D.b,X)		; 21 1D
	rts		; 60

	ora #$CD.b		; 09 CD
	cmp $315524.l		; CF 24 55 31
	ora $D3540F.l		; 0F 0F 54 D3
	ora $3F.b,S		; 03 3F
	ora ($0D.b,X)		; 01 0D
	bne  48.b		; D0 30
	ora ($50.b)		; 12 50
	lsr $65.b		; 46 65
	and ($4A.b,S),Y		; 33 4A
	phx		; DA
	stp		; DB
	sbc $0F74AE.l		; EF AE 74 0F
	ora ($20.b,X)		; 01 20
	ora ($E0.b,X)		; 01 E0
	sbc ($1D.b),Y		; F1 1D
	cmp $70.b		; C5 70
	cmp ($10.b),Y		; D1 10
	ora $1514E0.l		; 0F E0 14 15
	jsl $F270E5.l		; 22 E5 70 F2
	and ($01.b,X)		; 21 01
	and ($01.b,S),Y		; 33 01
	sbc $C4CE.w,X		; FD CE C4
	stz $EE.b,X		; 74 EE
	jsr ($33F2.w,X)		; FC F2 33
	sbc ($1B.b,X)		; E1 1B
	and $337411.l		; 2F 11 74 33
	lda ($4B.b,X)		; A1 4B
	dec A		; 3A
	ror $033D.w		; 6E 3D 03
	dec $5E74.w		; CE 74 5E
	eor $1D03.w,X		; 5D 03 1D
	jsr $EDEC.w		; 20 EC ED
	inc $2E84.w		; EE 84 2E
	lsr $2133.w,X		; 5E 33 21
	ora $FEED1C.l,X		; 1F 1C ED FE
	dey		; 88
	ora $125F4C.l		; 0F 4C 5F 12
	cpx #$D2.b		; E0 D2
	inc $88FF.w		; EE FF 88
	eor ($A5.b,X)		; 41 A5
	ora $E11041.l		; 0F 41 10 E1
	cmp $1F980C.l,X		; DF 0C 98 1F
	ora ($D0.b)		; 12 D0
	eor $1F13.w		; 4D 13 1F
	tsb $944D.w		; 0C 4D 94
	cmp $0EEECD.l,X		; DF CD EE 0E
	sbc ($F3.b,S),Y		; F3 F3
	mvp $94,$34		; 44 34 94
	sbc ($FC.b)		; F2 FC
	cmp $F0AE.w,X		; DD AE F0
	sbc $98455E.l		; EF 5E 45 98
	sep #$0A		; E2 0A
	eor $0DD0.w,X		; 5D D0 0D
	ror $233D.w		; 6E 3D 23
	ldy $F3.b		; A4 F3
	and ($32.b),Y		; 31 32
	ora ($FE.b,X)		; 01 FE
	inc $F0BF.w		; EE BF F0
	ldy $FF.b		; A4 FF
	lsr $1343.w		; 4E 43 13
	and $ECED2F.l,X		; 3F 2F ED EC
	ldy $D0.b		; A4 D0
	sbc $41E403.l,X		; FF 03 E4 41
	bit $F1.b,X		; 34 F1
	asl $CEA4.w		; 0E A4 CE
	ldx $FF0F.w,Y		; BE 0F FF
	jmp $4F0454.l		; 5C 54 04 4F
	ldy $2F.b		; A4 2F
	xce		; FB
	plx		; FA
	bne  14.b		; D0 0E
	inc $C5.b,X		; F6 C5
	eor ($A4.b,X)		; 41 A4
	and $E3.b,X		; 35 E3
	cpx #$BE.b		; E0 BE
	ldy $FD00.w,X		; BC 00 FD
	adc $0113B4.l		; 6F B4 13 01
	and $EE0E2F.l,X		; 3F 2F 0E EE
	sbc $F2B41F.l		; EF 1F B4 F2
	ora $00F441.l,X		; 1F 41 F4 00
	ora $B4EDFE.l,X		; 1F FE ED B4
	sbc ($F0.b),Y		; F1 F0
	pea $10D4.w		; F4 D4 10
	jsl $B4E1F2.l		; 22 F2 E1 B4
	cmp $0E00DE.l,X		; DF DE 00 0E
	eor $4EF114.l		; 4F 14 F1 4E
	ldy $2F.b,X		; B4 2F
	ora $DFFE.w		; 0D FE DF
	ora ($F1.b,X)		; 01 F1
	and $B441.w,X		; 3D 41 B4
	cop $2F.b		; 02 2F
	rol $FC0D.w		; 2E 0D FC
	cpx #$10.b		; E0 10
	sbc ($B4.b,S),Y		; F3 B4
	ora $F1E451.l,X		; 1F 51 E4 F1
	brk $ED.b		; 00 ED
	jsr ($B4D2.w,X)		; FC D2 B4
	ora ($E5.b,X)		; 01 E5
	sbc ($41.b),Y		; F1 41
	pea $E1E2.w		; F4 E2 E1
	dec $ECB4.w,X		; DE B4 EC
	cmp ($01.b,S),Y		; D3 01
	sbc $E2.b,X		; F5 E2
	eor $B4E213.l		; 4F 13 E2 B4
	sbc ($BF.b,X)		; E1 BF
	xba		; EB
	sbc ($0F.b,S),Y		; F3 0F
	bit $E4.b		; 24 E4
	rol $40B8.w,X		; 3E B8 40
	cmp ($E0.b,S),Y		; D3 E0
	cpy $FD.b		; C4 FD
	mvp $50,$CE		; 44 CE 50
	ldy $E5.b,X		; B4 E5
	and $FF31.w,X		; 3D 31 FF
	asl $EBBF.w		; 0E BF EB
	and $B4.b,S		; 23 B4
	asl $F661.w		; 0E 61 F6
	asl $0D3F.w,X		; 1E 3F 0D
	bit $B4B0.w		; 2C B0 B4
	jmp.w [$F043]		; DC 43 F0
	adc $3F0E16.l		; 6F 16 0E 3F
	sbc $0CB4.w,X		; FD B4 0C
	bcs -34.b		; B0 DE
	eor ($E3.b,S),Y		; 53 E3
	lsr $E036.w		; 4E 36 E0
	ldy $10.b,X		; B4 10
	cmp $D00A.w		; CD 0A D0
	cmp ($61.b)		; D2 61
	inc $00.b,X		; F6 00
	ldy $42.b,X		; B4 42
	sbc ($FF.b,X)		; E1 FF
	ldy #$CB.b		; A0 CB
	sbc ($F5.b),Y		; F1 F5
	lsr $43B4.w,X		; 5E B4 43
	sbc ($3F.b,S),Y		; F3 3F
	sbc $DE0B.w,X		; FD 0B DE
	cmp $B430.w		; CD 30 B4
	eor $F5.b,X		; 55 F5
	bpl  49.b		; 10 31
	sbc $EDAEC0.l		; EF C0 AE ED
	ldy $F3.b,X		; B4 F3
	and [$02.b]		; 27 02
	lsr $DF23.w,X		; 5E 23 DF
	cmp $B4DB.w,X		; DD DB B4
	ora $35F3.w,X		; 1D F3 35
	and ($5F.b,X)		; 21 5F
	ora $ED.b,S		; 03 ED
	dec $DBB4.w		; CE B4 DB
	asl $5603.w,X		; 1E 03 56
	sbc ($4D.b,S),Y		; F3 4D
	cop $DC.b		; 02 DC
	clv		; B8
	cop $E1.b		; 02 E1
	and $D51C05.l,X		; 3F 05 1C D5
	lda $C1B84E.l,X		; BF 4E B8 C1
	ora ($D4.b)		; 12 D4
	brk $32.b		; 00 32
	cmp $F25B.w		; CD 5B F2
	clv		; B8
	ora $3DF2.w		; 0D F2 3D
	and ($F2.b)		; 32 F2
	pld		; 2B
	sbc ($B0.b,S),Y		; F3 B0
	ldy $ED.b,X		; B4 ED
	cpy $F3E1.w		; CC E1 F3
	mvp $E2,$54		; 44 54 E2
	tsb $CEB4.w		; 0C B4 CE
	cmp $02C2.w		; CD C2 02
	and $45.b,X		; 35 45
	beq  44.b		; F0 2C
	clv		; B8
	sbc ($E1.b,S),Y		; F3 E1
	sbc $F0.b,X		; F5 F0
	jsl $3CCFF0.l		; 22 F0 CF 3C
	ldy $AD.b,X		; B4 AD
	cmp $31E1.w,X		; DD E1 31
	mvp $0C,$44		; 44 44 0C
	and $ABB4.w		; 2D B4 AB
	inc $51F1.w,X		; FE F1 51
	bit $32.b,X		; 34 32
	rol A		; 2A
	asl $C1B8.w		; 0E B8 C1
	lsr $5D3E.w,X		; 5E 3E 5D
	brk $0E.b		; 00 0E
	rol $B4B4.w		; 2E B4 B4
	cpx $23E2.w		; EC E2 23
	trb $10.b		; 14 10
	sbc $A4F3DF.l,X		; FF DF F3 A4
	sbc $C153.w,Y		; F9 53 C1
	eor ($EE.b,X)		; 41 EE
	and $FDCF.w,X		; 3D CF FD
	ldy $02.b,X		; B4 02
	mvn $1D,$FD		; 54 FD 1D
	dec $F13F.w		; CE 3F F1
	rti		; 40

	bcs  18.b		; B0 12
	and $F044EF.l		; 2F EF 44 F0
	asl $0FCF.w,X		; 1E CF 0F
	ldy $F2.b,X		; B4 F2
	asl $F0F1.w		; 0E F1 F0
	and $4E.b		; 25 4E
	rep #$CC		; C2 CC
	ldy $D3.b,X		; B4 D3
	ora $100F25.l		; 0F 25 0F 10
	cmp $A42B14.l,X		; DF 14 2B A4
	sbc ($9C.b)		; F2 9C
	and $F0.b,X		; 35 F0
	eor $EB.b,S		; 43 EB
	inc $B4E1.w,X		; FE E1 B4
	eor $FB.b,X		; 55 FB
	asl $32CD.w,X		; 1E CD 32
	ora ($41.b,X)		; 01 41
	inc $FDB4.w		; EE B4 FD
	sbc ($73.b),Y		; F1 73
	cmp $40C01D.l		; CF 1D C0 40
	sbc ($B4.b)		; F2 B4
	jsr $EFDF.w		; 20 DF EF
	tsb $70.b		; 04 70
	lda ($ED.b),Y		; B1 ED
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	and ($F4.b),Y		; 31 F4
	ora $26EFCF.l,X		; 1F CF EF 26
	adc $C0B8A1.l		; 6F A1 B8 C0
	inc $1F.b,X		; F6 1F
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	cmp ($F3.b,S),Y		; D3 F3
	bit $B4.b		; 24 B4
	ror $CDB0.w		; 6E B0 CD
	cmp $43.b,S		; C3 43
	ora ($0E.b,S),Y		; 13 0E
	lda $F0C4.w,X		; BD C4 F0
	bit $2E.b		; 24 2E
	cpx #$EE.b		; E0 EE
	sbc ($22.b)		; F2 22
	ora ($C4.b,X)		; 01 C4
	asl $F1DF.w		; 0E DF F1
	and ($3E.b,S),Y		; 33 3E
	bne -33.b		; D0 DF
	sbc ($C4.b)		; F2 C4
	and ($01.b)		; 32 01
	sbc $02DF.w,X		; FD DF 02
	bit $1D.b,X		; 34 1D
	sbc $16C4B8.l		; EF B8 C4 16
	asl $EDDF.w		; 0E DF ED
	tsb $33.b		; 04 33
	jsr $0DC4.w		; 20 C4 0D
	inc $13EF.w		; EE EF 13
	and ($0F.b)		; 32 0F
	cmp $C8EF.w,X		; DD EF C8
	and ($FF.b)		; 32 FF
	cmp $221110.l		; CF 10 11 22
	sbc $1FC8EE.l		; EF EE C8 1F
	jsl $DE0E20.l		; 22 20 0E DE
	jsr $2021.w		; 20 21 20
	iny		; C8
	inc $02EF.w,X		; FE EF 02
	ora ($2F.b)		; 12 2F
	inc $21C0.w,X		; FE C0 21
	clv		; B8
	eor ($3F.b),Y		; 51 3F
	ldy $23D0.w,X		; BC D0 23
	eor ($0D.b,S),Y		; 53 0D
	jmp.w [$A4B8]		; DC B8 A4
	bit $41.b		; 24 41
	ora $02BC.w		; 0D BC 02
	and $40.b		; 25 40
	cpy $21.b		; C4 21
	sbc $F3CE.w,X		; FD CE F3
	and ($2F.b)		; 32 2F
	cmp $B8DF.w,X		; DD DF B8
	eor ($1C.b,S),Y		; 53 1C
	inc $07FB.w		; EE FB 07
	and $D0.b		; 25 D0
	lda $E0B8.w,X		; BD B8 E0
	mvp $EB,$40		; 44 40 EB
	ora ($CD.b,X)		; 01 CD
	mvp $B8,$5F		; 44 5F B8
	cmp $44F3CE.l,X		; DF CE F3 44
	ora $2FDE.w,X		; 1D DE 2F
	lda ($B8.b),Y		; B1 B8
	.db $62, $3B, $1C		; 62 3B 1C
	sbc $0B5113.l		; EF 13 51 0B
.ACCU 8
.INDEX 8
	sep #$B8		; E2 B8
	phd		; 0B
	inc $24.b,X		; F6 24
	cmp $44FFEE.l		; CF EE FF 44
	and $13DDB8.l		; 2F B8 DD 13
	lda $4F43.w,X		; BD 43 4F
	cmp ($C0.b,X)		; C1 C0
	sbc ($B8.b),Y		; F1 B8
	eor ($FE.b,S),Y		; 53 FE
	cmp ($2F.b,X)		; C1 2F
	lda ($53.b),Y		; B1 53
	tas		; 1B
	ora $F0B8.w,X		; 1D B8 F0
	ora $5F.b,S		; 03 5F
	jsr ($1AF3.w,X)		; FC F3 1A
	sbc $24.b,X		; F5 24
	clv		; B8
	bcs -17.b		; B0 EF
	beq  37.b		; F0 25
	asl $32DE.w,X		; 1E DE 32
	lda $61B8.w		; AD B8 61
	eor $E2EE.w,X		; 5D EE E2
	sep #$42		; E2 42
	sbc $B8D2.w,X		; FD D2 B8
	and $35A4.w,X		; 3D A4 35
	xce		; FB
	asl $F401.w		; 0E 01 F4
	bmi -80.b		; 30 B0
	adc $13.b,S		; 63 13
	eor $44E5AA.l		; 4F AA E5 44
	asl $B0CA.w,X		; 1E CA B0
	lda $254146.l,X		; BF 46 41 25
	phd		; 0B
	lda $4135.w		; AD 35 41
	clv		; B8
	ora ($01.b,X)		; 01 01
	and ($ED.b)		; 32 ED
	sbc $3A.b,S		; E3 3A
	pei ($34.b)		; D4 34
	clv		; B8
	cpx $3FFE.w		; EC FE 3F
	ora ($10.b,S),Y		; 13 10
	dec $DA32.w		; CE 32 DA
	clv		; B8
	adc ($5F.b,X)		; 61 5F
	lda $3100D4.l,X		; BF D4 00 31
	tsb $B8E3.w		; 0C E3 B8
	pld		; 2B
	cpx $24.b		; E4 24
	xba		; EB
	sbc $0E1330.l,X		; FF 30 13 0E
	bcs  48.b		; B0 30
	trb $0A.b		; 14 0A
	lda $3035.w,X		; BD 35 30
	tyx		; BB
	lda $03B0.w,X		; BD B0 03
	eor ($02.b,S),Y		; 53 02
	eor $53D4AB.l		; 4F AB D4 53
	xce		; FB
	bcs -53.b		; B0 CB
	cmp ($34.b),Y		; D1 34
	jsr $FA24.w		; 20 24 FA
	ldx $B445.w,Y		; BE 45 B4
	cpx $02C0.w		; EC C0 02
	.db $42, $1E		; 42 1E
	sbc ($0B.b)		; F2 0B
	bne -80.b		; D0 B0
	asl $52.b		; 06 52
	phx		; DA
	tyx		; BB
	sep #$44		; E2 44
	bpl  50.b		; 10 32
	clv		; B8
	ldy $25.b,X		; B4 25
	xce		; FB
	cmp $1E0232.l,X		; DF 32 02 1E
	inc $23B8.w		; EE B8 23
	cpy $4E52.w		; CC 52 4E
	lda $3F10F4.l		; AF F4 10 3F
	ldy $1E.b,X		; B4 1E
	sbc ($3C.b,X)		; E1 3C
	bcs  54.b		; B0 36
	asl $10BC.w,X		; 1E BC 10
	ldy $24.b,X		; B4 24
	bmi -17.b		; 30 EF
	and $5F06AF.l		; 2F AF 06 5F
	dex		; CA
	clv		; B8
	eor $02.b,S		; 43 02
	asl $40DF.w		; 0E DF 40
	lda $B83B62.l,X		; BF 62 3B B8
	cmp $0116.w		; CD 16 01
	and $22FD.w		; 2D FD 22
	xba		; EB
	eor ($B8.b,S),Y		; 53 B8
	and $21D6AE.l,X		; 3F AE D6 21
	rol $03EE.w		; 2E EE 03
	xce		; FB
	clv		; B8
	bit $32.b		; 24 32
	ldy $42E2.w		; AC E2 42
	jsr $03CE.w		; 20 CE 03
	clv		; B8
	xce		; FB
	ora $32.b,X		; 15 32
	ldy $32D2.w,X		; BC D2 32
	and ($EE.b,X)		; 21 EE
	clv		; B8
	cpx #$0D.b		; E0 0D
	and $2F.b,X		; 35 2F
	dec $12FF.w		; CE FF 12
	.db $42, $B8		; 42 B8
	jsr ($22B0.w,X)		; FC B0 22
	eor ($0D.b,X)		; 41 0D
	cmp ($DF.b),Y		; D1 DF
	.db $42, $B8		; 42 B8
	eor $62E1BC.l,X		; 5F BC E1 62
	rol $1DDF.w		; 2E DF 1D
	cmp $B8.b		; C5 B8
	mvp $EC,$09		; 44 09 EC
	bit $32.b,X		; 34 32
	sbc $DEE0.w,X		; FD E0 DE
	clv		; B8
	eor ($50.b)		; 52 50
	lda $61C2.w		; AD C2 61
	lsr $0DDE.w		; 4E DE 0D
	clv		; B8
	cpx $45.b		; E4 45
	plx		; FA
	cmp $1426.w		; CD 26 14
	jsr ($B8EF.w,X)		; FC EF B8
	cmp $AC5F53.l,X		; DF 53 5F AC
	cmp ($62.b)		; D2 62
	jsr $B8CF.w		; 20 CF B8
	cmp $3406.w,X		; DD 06 34
	nop		; EA
	cmp $3235.w,X		; DD 35 32
	dec $EEB8.w,X		; DE B8 EE
	cmp $45.b,S		; C3 45
	dec A		; 3A
	cmp $24E6.w		; CD E6 24
	trb $EFB8.w		; 1C B8 EF
	lda $AC5F63.l,X		; BF 63 5F AC
	sbc ($54.b,X)		; E1 54
	bpl -72.b		; 10 B8
	cmp $44BF.w,X		; DD BF 44
	eor ($BC.b),Y		; 51 BC
	cpy #$44.b		; C0 44
	and ($B8.b),Y		; 31 B8
	cmp $34BE.w,X		; DD BE 34
	eor ($CB.b)		; 52 CB
	bne  36.b		; D0 24
	and ($B8.b)		; 32 B8
	cpx $35BE.w		; EC BE 35
	eor ($CC.b,X)		; 41 CC
	sbc $B84133.l		; EF 33 41 B8
	phx		; DA
	rep #$45		; C2 45
	asl $F1DD.w,X		; 1E DD F1
	bit $2F.b		; 24 2F
	clv		; B8
	nop		; EA
.ACCU 8
.INDEX 8
	sep #$35		; E2 35
	asl $E1EC.w,X		; 1E EC E1
	eor $2F.b,S		; 43 2F
	clv		; B8
	stp		; DB
	sbc ($25.b)		; F2 25
	ora $45F1FA.l		; 0F FA F1 45
	sbc $10CDB8.l,X		; FF B8 CD 10
	eor $0F.b,S		; 43 0F
	lda $5212.w,X		; BD 12 52
	sbc $D0B8.w		; ED B8 D0
	ora $31.b,S		; 03 31
	asl A		; 0A
	cpx #$25.b		; E0 25
	brk $DE.b		; 00 DE
	ldy $DE.b,X		; B4 DE
	ora $42.b,S		; 03 42
	cpx $33C0.w		; EC C0 33
	and $F1B4ED.l		; 2F ED B4 F1
	and ($2E.b,S),Y		; 33 2E
	cpy $42F3.w		; CC F3 42
	ora $B8DE.w		; 0D DE B8
	and ($1E.b)		; 32 1E
	dec $4003.w		; CE 03 40
	sbc $B812C0.l,X		; FF C0 12 B8
	bmi  12.b		; 30 0C
	bne  50.b		; D0 32
	rol $00EE.w,X		; 3E EE 00
	trb $A8.b		; 14 A8
	sbc ($99.b),Y		; F1 99
	ora ($74.b,S),Y		; 13 74
	cmp $13BF.w,X		; DD BF 13
	eor ($B8.b)		; 52 B8
	ora $23C0.w		; 0D C0 23
	rol $F1FD.w,X		; 3E FD F1
	ora ($10.b,S),Y		; 13 10
	clv		; B8
	jmp.w [$4210]		; DC 10 42
	beq -49.b		; F0 CF
	ora ($22.b),Y		; 11 22
	ora $DDB4.w		; 0D B4 DD
	bne  51.b		; D0 33
	ora $23F2EE.l,X		; 1F EE F2 23
	ora $02A8.w,X		; 1D A8 02
	mvp $BF,$E1		; 44 E1 BF
	ora ($50.b,X)		; 01 50
	tas		; 1B
	cmp ($A8.b,X)		; C1 A8
	asl $2E.b		; 06 2E
	cpx $432F.w		; EC 2F 43
	sbc ($BB.b,X)		; E1 BB
	rti		; 40

	ldy $35.b		; A4 35
	bmi -52.b		; 30 CC
.INDEX 8
	sep #$54		; E2 54
	jmp $E4AB.w		; 4C AB E4
	ldy $53.b		; A4 53
	phd		; 0B
	dec $4235.w,X		; DE 35 42
	tsx		; BA
	cmp ($53.b,X)		; C1 53
	tay		; A8
	jsr ($24E2.w,X)		; FC E2 24
	ora $03DD.w,X		; 1D DD 03
	and ($ED.b)		; 32 ED
	ldy $ED.b		; A4 ED
	ora $33.b,S		; 03 33
	sbc $32CF.w		; ED CF 32
	and $F3A4DF.l		; 2F DF A4 F3
	and ($FB.b,S),Y		; 33 FB
	sbc W34SEL.w		; ED 24 21
	cmp $A402.w		; CD 02 A4
	.db $42, $1C		; 42 1C
	dec $2204.w		; CE 04 22
	cpx $43F1.w		; EC F1 43
	tay		; A8
	xce		; FB
	sbc ($25.b),Y		; F1 25
	sbc $3021DE.l,X		; FF DE 21 30
	sbc $D2A8.w,X		; FD A8 D2
	tsb $1E.b		; 04 1E
	ora M7Y.w		; 0D 20 21
	bne -61.b		; D0 C3
	tya		; 98
	ora $2C.b		; 05 2C
	sbc $1E43.w,X		; FD 43 1E
	dec $33E3.w		; CE E3 33
	tya		; 98
	sbc $53E0.w,X		; FD E0 53
	tsb $F7BE.w		; 0C BE F7
	and $CC.b,S		; 23 CC
	tya		; 98
	sbc ($62.b)		; F2 62
	xce		; FB
	cpy $5125.w		; CC 25 51
	cmp $2298D3.l		; CF D3 98 22
	xce		; FB
	sbc $3F33.w,X		; FD 33 3F
	ora $98DF03.l		; 0F 03 DF 98
	cmp $F03012.l,X		; DF 12 30 F0
	sbc ($10.b,S),Y		; F3 10
	cpy $98E0.w		; CC E0 98
	eor ($30.b,S),Y		; 53 30
	sbc $1E02.w		; ED 02 1E
	cpy $5514.w		; CC 14 55
	tya		; 98
	dec $2FEF.w,X		; DE EF 2F
	jsr ($56D1.w,X)		; FC D1 56
	eor $F298BC.l		; 4F BC 98 F2
	and $34EC.w		; 2D EC 34
	adc $CD.b,S		; 63 CD
	cmp ($2E.b),Y		; D1 2E
	tya		; 98
	cpx $65F5.w		; EC F5 65
	sbc $33A0.w		; ED A0 33
	nop		; EA
	lda ($A8.b)		; B2 A8
	bit $2E.b,X		; 34 2E
	dec $1F02.w,X		; DE 02 1F
	sbc $3123.w		; ED 23 31
	tya		; 98
	wai		; CB
	cmp ($3F.b)		; D2 3F
	cpx $73F3.w		; EC F3 73
	jsr ($98C1.w,X)		; FC C1 98
	ora ($FD.b)		; 12 FD
	bne  55.b		; D0 37
	asl $11EC.w,X		; 1E EC 11
	and $04CF98.l		; 2F 98 CF 04
	and ($EE.b)		; 32 EE
	cmp ($30.b),Y		; D1 30
	cmp $4498D1.l,X		; DF D1 98 44
	asl $22DD.w,X		; 1E DD 22
	ora $4113DD.l,X		; 1F DD 13 41
	dey		; 88
	xce		; FB
	dec $BE34.w		; CE 34 BE
	cmp ($64.b)		; D2 64
	bit $88B0.w		; 2C B0 88
	and $EC.b,S		; 23 EC
	ldy #$66.b		; A0 66
	adc $03BB.w		; 6D BB 03
	lsr $ED98.w,X		; 5E 98 ED
	brk $44.b		; 00 44
	asl $12DE.w		; 0E DE 12
	ora $0488D0.l,X		; 1F D0 88 04
	eor ($BF.b,S),Y		; 53 BF
	cmp ($21.b),Y		; D1 21
	dec $64E0.w		; CE E0 64
	dey		; 88
	bit $12DC.w,X		; 3C DC 12
	lsr $F2EC.w		; 4E EC F2
	adc ($0F.b,X)		; 61 0F
	stz $EF.b,X		; 74 EF
	cpx #$2E.b		; E0 2E
	tyx		; BB
	lda ($56.b),Y		; B1 56
	and $1078E1.l,X		; 3F E1 78 10
	sbc $16B5.w		; ED B5 16
	brk $DE.b		; 00 DE
.INDEX 8
	sep #$10		; E2 10
	sei		; 78
	sbc $314F.w		; ED 4F 31
	trb $E001.w		; 1C 01 E0
	asl $741F.w,X		; 1E 1F 74
	bpl  17.b		; 10 11
	cop $22.b		; 02 22
	sbc $3221CC.l		; EF CC 21 32
	pla		; 68
	cpx $4FE3.w		; EC E3 4F
	tsb $05B5.w		; 0C B5 05
	phy		; 5A
	phd		; 0B
	stz $BE.b		; 64 BE
	asl $EC.b		; 06 EC
	bit $40F4.w		; 2C F4 40
	ora $E270CD.l,X		; 1F CD 70 E2
	jsl $E1CC1C.l		; 22 1C CC E1
	jsl $78001F.l		; 22 1F 00 78
	bpl -62.b		; 10 C2
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	rep #$C1		; C2 C1
	sbc $F1.b,S		; E3 F1
	stz $10.b,X		; 74 10
	cmp ($F1.b),Y		; D1 F1
	bit $0E.b,X		; 34 0E
	sbc $42DF.w,X		; FD DF 42
	rts		; 60

	eor $FD.b,S		; 43 FD
	bne  71.b		; D0 47
	lsr $B3AC.w		; 4E AC B3
	adc $51.b,X		; 75 51
	ror A		; 6A
	cpx $00EF.w		; EC EF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	ldy $D6.b		; A4 D6
	ldy $1F.b		; A4 1F
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	ldy #$EF.b		; A0 EF
	cmp ($01.b),Y		; D1 01
	asl $00F0.w		; 0E F0 00
	ora $030038.l		; 0F 38 00 03
	sty $0E.b,X		; 94 0E
	ora ($17.b),Y		; 11 17
	cmp $0158F0.l		; CF F0 58 01
	sbc ($FF.b),Y		; F1 FF
	sbc $BB.b,S		; E3 BB
	phk		; 4B
	rep #$0F		; C2 0F
	pla		; 68
	ora $32.b		; 05 32
	tsb $12.b		; 04 12
	sbc ($1B.b,S),Y		; F3 1B
	sbc ($DE.b)		; F2 DE
	sei		; 78
	cmp $0E0F.w,X		; DD 0F 0E
	asl $43E4.w,X		; 1E E4 43
	and $1F.b,S		; 23 1F
	sei		; 78
	ora ($11.b,S),Y		; 13 11
	brk $9F.b		; 00 9F
	inc $2E2E.w		; EE 2E 2E
	sbc $EF78.w,X		; FD 78 EF
	ora ($23.b,X)		; 01 23
	and $F0.b,X		; 35 F0
	ora ($05.b),Y		; 11 05
	and ($78.b,X)		; 21 78
	cmp $1F0FDD.l		; CF DD 0F 1F
	asl $EFFE.w,X		; 1E FE EF
	brk $78.b		; 00 78
	sbc ($44.b,X)		; E1 44
	jsl $15041F.l		; 22 1F 04 15
	sbc ($DD.b,X)		; E1 DD
	dey		; 88
	cpx #$0F.b		; E0 0F
	bpl  29.b		; 10 1D
	sbc $04000E.l,X		; FF 0E 00 04
	sei		; 78
	and ($32.b,X)		; 21 32
	cpx #$53.b		; E0 53
	jsl $FBCDFD.l		; 22 FD CD FB
	dey		; 88
	jsr $EFF0.w		; 20 F0 EF
	cpx #$D0.b		; E0 D0
	eor $782E26.l		; 4F 26 2E 78
	and ($C2.b,S),Y		; 33 C2
	ror $BD1E.w,X		; 7E 1E BD
	lda $9840FE.l		; AF FE 40 98
	beq  13.b		; F0 0D
	ora $1EE512.l,X		; 1F 12 E5 1E
	and $1D98D4.l,X		; 3F D4 98 1D
	eor $3EEDC2.l		; 4F C2 ED 3E
	cop $EF.b		; 02 EF
	asl $0098.w		; 0E 98 00
	rol $E452.w		; 2E 52 E4
	tsb $F340.w		; 0C 40 F3
	jsr ($1FA8.w,X)		; FC A8 1F
.ACCU 8
	sep #$E0		; E2 E0
	rol $E000.w		; 2E 00 E0
	and $B29805.l		; 2F 05 98 B2
	jmp $D0F5.w		; 4C F5 D0
	jmp $2D90D4.l		; 5C D4 90 2D
	tay		; A8
	bpl -16.b		; 10 F0
	sbc $1EE411.l,X		; FF 11 E4 1E
	bmi -31.b		; 30 E1
	tya		; 98
	and $DD31.w,X		; 3D 31 DD
	rol A		; 2A
	and ($C3.b,X)		; 21 C3
	tsb $A42D.w		; 0C 2D A4
	ldx $52DD.w		; AE DD 52
	rol $43.b,X		; 36 43
	stz $45.b		; 64 45
	eor ($A4.b,X)		; 41 A4
	ora $DBCCCE.l,X		; 1F CE CC DB
	cpy $EB9D.w		; CC 9D EB
	eor $A8.b,S		; 43 A8
	sbc $DF.b		; E5 DF
	rol $0E11.w,X		; 3E 11 0E
	asl $E0D3.w,X		; 1E D3 E0
	tay		; A8
	rol $D2F1.w		; 2E F1 D2
	bit $D670.w		; 2C 70 D6
	cmp $E6983F.l		; CF 3F 98 E6
	sbc $B31D.w		; ED 1D B3
	sbc $B4F14C.l		; EF 4C F1 B4
	ldy $FE.b,X		; B4 FE
	and ($14.b,X)		; 21 14
	jsl $211332.l		; 22 32 13 21
	ora $E0F2A8.l,X		; 1F A8 F2 E0
	ora $F0D3F1.l,X		; 1F F1 D3 F0
	tda		; 7B
	eor ($A8.b,X)		; 41 A8
.ACCU 16
	rep #$2C		; C2 2C
	and ($E0.b),Y		; 31 E0
	tsb $D211.w		; 0C 11 D2
	asl $00B8.w		; 0E B8 00
	ora ($E3.b,X)		; 01 E3
	asl $F13F.w,X		; 1E 3F F1
	ora $2FA82E.l		; 0F 2E A8 2F
	sbc $FF010F.l		; EF 0F 01 FF
	ora $A8433D.l		; 0F 3D 43 A8
	dec $FD.b		; C6 FD
	rol $EEF4.w,X		; 3E F4 EE
	and $EFE2.w		; 2D E2 EF
	clv		; B8
	bpl -31.b		; 10 E1
	ora ($E4.b,X)		; 01 E4
	sbc $D0D430.l,X		; FF 30 D4 D0
	tay		; A8
	eor $FD00.w		; 4D 00 FD
	rol $FEF2.w		; 2E F2 FE
	ora ($0E.b),Y		; 11 0E
	clv		; B8
	bmi -13.b		; 30 F3
	inc $013E.w,X		; FE 3E 01
	beq  15.b		; F0 0F
	brk $B8.b		; 00 B8
	sbc $2E1F2E.l,X		; FF 2E 1F 2E
	ora ($D2.b,S),Y		; 13 D2
	and $A802.w,X		; 3D 02 A8
	lda ($4B.b),Y		; B1 4B
	ora ($C0.b),Y		; 11 C0
	asl $EFF2.w,X		; 1E F2 EF
	bmi -88.b		; 30 A8
	pei ($4A.b)		; D4 4A
	adc ($B3.b),Y		; 71 B3
	pld		; 2B
	and ($C1.b),Y		; 31 C1
	tas		; 1B
	ldy $EE.b,X		; B4 EE
	cmp $DFEC.w,X		; DD EC DF
	inc $1421.w		; EE 21 14
	eor ($A8.b,X)		; 41 A8
	adc $ECD5.w,X		; 7D D5 EC
	eor $FDD2.w		; 4D D2 FD
	and $2AA8D4.l,X		; 3F D4 A8 2A
	stz $A5.b		; 64 A5
	tsa		; 3B
	jsl $F23CC1.l		; 22 C1 3C F2
	clv		; B8
	cpx #$1E.b		; E0 1E
	ora ($E1.b,X)		; 01 E1
	rol $E013.w		; 2E 13 E0
	rol $04A8.w,X		; 3E A8 04
	cpy #$2F.b		; C0 2F
	cmp ($DE.b)		; D2 DE
	and $B4FED2.l		; 2F D2 FE B4
	sbc $4321E2.l,X		; FF E2 21 43
	bit $32.b		; 24 32
	jsl $0EB800.l		; 22 00 B8 0E
	ora $300EF1.l,X		; 1F F1 0E 30
	cpx $FF.b		; E4 FF
	bmi -88.b		; 30 A8
	lda $EF.b,X		; B5 EF
	ora $E2FFF0.l,X		; 1F F0 FF E2
	bne  30.b		; D0 1E
	tay		; A8
	rti		; 40

	sbc $0D.b		; E5 0D
	rti		; 40

	sep #$0F		; E2 0F
	ora $1F98FF.l,X		; 1F FF 98 1F
	bne -18.b		; D0 EE
	ora $4AA427.l,X		; 1F 27 A4 4A
	and $98.b,X		; 35 98
	lda ($4C.b)		; B2 4C
	ora $EEF10E.l,X		; 1F 0E F1 EE
	asl $98F1.w		; 0E F1 98
	ora $0C.b,X		; 15 0C
	lsr $1DD5.w,X		; 5E D5 1D
	and ($E0.b),Y		; 31 E0
	ora ($88.b,X)		; 01 88
	lda $10DF49.l		; AF 49 DF 10
	and $6E.b,S		; 23 6E
	sta $FB.b,X		; 95 FB
	dey		; 88
	.db $62, $E1, $20		; 62 E1 20
	sbc $FEEF1F.l,X		; FF 1F EF FE
	sbc $88.b		; E5 88
	brk $13.b		; 00 13
	xce		; FB
	bpl -32.b		; 10 E0
	and ($00.b),Y		; 31 00
	ora ($84.b,S),Y		; 13 84
	and ($50.b,S),Y		; 33 50
	brk $DE.b		; 00 DE
	cmp $1C0311.l,X		; DF 11 03 1C
	sei		; 78
	sbc $CE.b		; E5 CE
	rts		; 60

	jsl $0E1D4E.l		; 22 4E 1D 0E
	sbc $122E78.l		; EF 78 2E 12
	and ($20.b),Y		; 31 20
	tyx		; BB
	inc $E611.w,X		; FE 11 E6
	sei		; 78
	bpl  35.b		; 10 23
	inc $EEF0.w		; EE F0 EE
	rol $0350.w		; 2E 50 03
	sei		; 78
	and $02DDCE.l		; 2F CE DD 02
	brk $41.b		; 00 41
	ora ($F1.b),Y		; 11 F1
	pla		; 68
	ldx $F0F0.w,Y		; BE F0 F0
	rti		; 40

	ora ($7B.b),Y		; 11 7B
	and $68CC.w		; 2D CC 68
	cmp $30040F.l,X		; DF 0F 04 30
	and $A2E43F.l		; 2F 3F E4 A2
	sei		; 78
	beq  31.b		; F0 1F
	brk $1F.b		; 00 1F
	sbc $FD.b,S		; E3 FD
	jsr $74C4.w		; 20 C4 74
	jmp.w [$032E]		; DC 2E 03
	ora $41.b,S		; 03 41
	jsl $680111.l		; 22 11 01 68
	cmp $E37B.w,X		; DD 7B E3
	lda ($20.b,X)		; A1 20
	bpl  38.b		; 10 26
	dec $3F68.w		; CE 68 3F
	cmp ($E1.b),Y		; D1 E1
	cmp $0E.b		; C5 0E
	bpl -58.b		; 10 C6
	sta ($64.b),Y		; 91 64
	tsb $F4FF.w		; 0C FF F4
	sbc ($53.b),Y		; F1 53
	eor $F0.b,X		; 55 F0
	inc $FB64.w		; EE 64 FB
	asl $0EDF.w,X		; 1E DF 0E
	asl $F3.b		; 06 F3
	brk $10.b		; 00 10
	mvn $A2,$F0		; 54 F0 A2
	jsr ($F20F.w,X)		; FC 0F F2
	ora ($01.b)		; 12 01
	and ($64.b),Y		; 31 64
	brk $FF.b		; 00 FF
	beq -49.b		; F0 CF
	lda ($FF.b),Y		; B1 FF
	ora $5F6433.l		; 0F 33 64 5F
	and $FE.b,S		; 23 FE
	ora $FD910E.l,X		; 1F 0E 91 FD
	ora $F0F064.l		; 0F 64 F0 F0
	jsr $4F12.w		; 20 12 4F
	bpl  12.b		; 10 0C
	ora $FFB264.l,X		; 1F 64 B2 FF
	asl $B100.w		; 0E 00 B1
	asl $131F.w		; 0E 1F 13
	stz $22.b		; 64 22
	ora ($0E.b,X)		; 01 0E
	xba		; EB
	ora $01EFE3.l,X		; 1F E3 EF 01
	stz $0A.b		; 64 0A
	and $033EF0.l		; 2F F0 3E 03
	and $FF.b,S		; 23 FF
	cmp $0D54.w,X		; DD 54 0D
	brk $11.b		; 00 11
	rtl		; 6B

	sbc $2B.b,S		; E3 2B
	rol $641F.w		; 2E 1F 64
	brk $50.b		; 00 50
	bcs  46.b		; B0 2E
	lda $10.b		; A5 10
	sbc $FE6011.l,X		; FF 11 60 FE
	sbc ($1C.b,X)		; E1 1C
	jsl $DEDFFC.l		; 22 FC DF DE
	beq  96.b		; F0 60
	cmp $D1EF.w,X		; DD EF D1
	and $DFDA04.l		; 2F 04 DA DF
	inc $1464.w		; EE 64 14
	phx		; DA
	eor $0D5F91.l		; 4F 91 5F 0D
	bmi -48.b		; 30 D0
	stz $0E.b		; 64 0E
	tsb $E0.b		; 04 E0
	ora $5BE26F.l		; 0F 6F E2 5B
	cpy #$74.b		; C0 74
	sbc ($D1.b,X)		; E1 D1
	rol $12D0.w		; 2E D0 12
	beq  51.b		; F0 33
	cmp $0E3E78.l		; CF 78 3E 0E
	cmp ($C4.b)		; D2 C4
	and $EE0220.l,X		; 3F 20 02 EE
	sei		; 78
	cop $CF.b		; 02 CF
	.db $42, $9D		; 42 9D
	tsb $0E.b		; 04 0E
	and $FD.b		; 25 FD
	sty $33.b		; 84 33
	and ($1F.b),Y		; 31 1F
	brk $FD.b		; 00 FD
	ora ($DB.b),Y		; 11 DB
	cmp $E50F78.l,X		; DF 78 0F E5
	bpl  94.b		; 10 5E
	phd		; 0B
	sbc ($CD.b,S),Y		; F3 CD
	sbc $84.b,S		; E3 84
	eor $0DEFAC.l		; 4F AC EF 0D
	ora ($45.b,S),Y		; 13 45
	stz $10.b		; 64 10
	dey		; 88
	ora $DC24D0.l,X		; 1F D0 24 DC
	cop $20.b		; 02 20
	cmp ($3F.b,S),Y		; D3 3F
	sty $34.b,X		; 94 34
	jsl $DDFD00.l		; 22 00 FD DD
	and $98EFDD.l		; 2F DD EF 98
	ora $2FF221.l,X		; 1F 21 F2 2F
	inc $BD20.w		; EE 20 BD
	eor $A8.b,S		; 43 A8
	cmp $15D051.l		; CF 51 D0 15
	dec $DD42.w,X		; DE 42 DD
	ora $B8.b		; 05 B8
	inc $0D00.w		; EE 00 0D
	mvp $12,$C0		; 44 C0 12
	trb $B423.w		; 1C 23 B4
	and $DE1DF1.l		; 2F F1 1D DE
	phx		; DA
	cpy $10.b		; C4 10
	ora $B4.b,S		; 03 B4
	.db $42, $04		; 42 04
	bmi -32.b		; 30 E0
	rol $DBDD.w		; 2E DD DB
	lda ($B8.b,S),Y		; B3 B8
	inc $20F2.w,X		; FE F2 20
	lda $0D.b,X		; B5 0D
	beq  62.b		; F0 3E
	cmp ($B4.b),Y		; D1 B4
	cpx $41A1.w		; EC A1 41
	sbc ($43.b)		; F2 43
	cop $41.b		; 02 41
	sbc $DD10B4.l		; EF B4 10 DD
	cmp $41A0.w,X		; DD A0 41
	ora ($43.b,X)		; 01 43
	cop $B4.b		; 02 B4
	eor ($EF.b,X)		; 41 EF
	bpl -35.b		; 10 DD
	cpx $41A0.w		; EC A0 41
	ora ($B4.b,X)		; 01 B4
	eor $02.b,S		; 43 02
	eor ($EF.b,X)		; 41 EF
	bpl -34.b		; 10 DE
	jmp.w [$B4A1]		; DC A1 B4
	and ($F2.b),Y		; 31 F2
	eor $03.b,S		; 43 03
	and ($EF.b),Y		; 31 EF
	bpl -34.b		; 10 DE
	ldy $DC.b,X		; B4 DC
	lda ($31.b,X)		; A1 31
	sbc ($43.b)		; F2 43
	ora $31.b,S		; 03 31
	sbc $DE10B4.l		; EF B4 10 DE
	jmp.w [$21A2]		; DC A2 21
	sbc ($43.b)		; F2 43
	pea $30B4.w		; F4 B4 30
	sbc $DBEE2F.l,X		; FF 2F EE DB
	lda ($21.b),Y		; B1 21
	sbc ($B4.b)		; F2 B4
	.db $42, $03		; 42 03
	and ($FF.b),Y		; 31 FF
	and $A1DCEE.l		; 2F EE DC A1
	ldy $6F.b		; A4 6F
	ora $75.b,S		; 03 75
	sbc [$61.b],Y		; F7 61
	sbc $B4BC30.l,X		; FF 30 BC B4
	jmp.w [$30A1]		; DC A1 30
	sbc ($33.b),Y		; F1 33
	cop $41.b		; 02 41
	beq -72.b		; F0 B8
	and $D5F0D1.l		; 2F D1 F0 D5
	rol $20F1.w		; 2E F1 20
	cmp ($B8.b)		; D2 B8
	and $DF11D1.l		; 2F D1 11 DF
	bpl -61.b		; 10 C3
	lsr $A8E0.w,X		; 5E E0 A8
	bit $B0.b,X		; 34 B0
	lsr $24EE.w,X		; 5E EE 24
	ldx $DD00.w,Y		; BE 00 DD
	ldy $25.b		; A4 25
	sbc $3FE3.w,X		; FD E3 3F
	and $31.b,X		; 35 31
	cop $40.b		; 02 40
	ldy $DD.b		; A4 DD
	nop		; EA
	lda ($3F.b,S),Y		; B3 3F
	dec $F121.w		; CE 21 F1
	and ($94.b,S),Y		; 33 94
	bpl  85.b		; 10 55
	and $269AED.l		; 2F ED 9A 26
	phd		; 0B
	lda $E63C88.l		; AF 88 3C E6
	ora $E04EC3.l,X		; 1F C3 4E E0
	cmp $258802.l,X		; DF 02 88 25
	lda $5FD0.w,X		; BD D0 5F
	sbc $210022.l		; EF 22 00 21
	dey		; 88
	sbc $121C00.l		; EF 00 1C 12
	bmi -48.b		; 30 D0
	bne  14.b		; D0 0E
	sei		; 78
	jsr $0F53.w		; 20 53 0F
	adc ($EC.b,X)		; 61 EC
	cmp ($1A.b,S),Y		; D3 1A
	bit $88.b,X		; 34 88
	jmp $FF00DE.l		; 5C DE 00 FF
	rol $2130.w,X		; 3E 30 21
	sbc ($78.b)		; F2 78
	xce		; FB
	ora ($0C.b,X)		; 01 0C
	and ($6D.b),Y		; 31 6D
	lda $100D.w		; AD 0D 10
	sei		; 78
	eor $4F15.w		; 4D 15 4F
	and $3DDD0E.l,X		; 3F 0E DD 3D
	ora $78.b,S		; 03 78
	lsr $D1FD.w		; 4E FD D1
	inc $3210.w,X		; FE 10 32
	ora ($4C.b,S),Y		; 13 4C
	sei		; 78
	jsr ($EC20.w,X)		; FC 20 EC
	ora ($51.b,S),Y		; 13 51
	xce		; FB
	cmp $C07801.l,X		; DF 01 78 C0
	adc $EE50F2.l,X		; 7F F2 50 EE
.ACCU 8
	sep #$ED		; E2 ED
	ora ($88.b,S),Y		; 13 88
	bpl  16.b		; 10 10
	lda $13FE3F.l,X		; BF 3F FE 13
	ora $EF7830.l,X		; 1F 30 78 EF
	sbc $5F210C.l,X		; FF 0C 21 5F
	and $21AB.w,X		; 3D AB 21
	sei		; 78
	sbc $5FF234.l		; EF 34 F2 5F
	trb $2BF0.w		; 1C F0 2B
	ora ($78.b,S),Y		; 13 78
	rti		; 40

	stp		; DB
	inc $C53E.w		; EE 3E C5
	and $881E44.l		; 2F 44 1E 88
	ora $E11E0F.l,X		; 1F 0F 1E E1
	eor $21EE.w,X		; 5D EE 21
	cmp $2098.w,X		; DD 98 20
	ora $F1F013.l,X		; 1F 13 F0 F1
	tsb $53F0.w		; 0C F0 53
	sty $FE.b,X		; 94 FE
	cmp $00E1EC.l		; CF EC E1 00
	tsb $43.b		; 04 43
	and $94.b,X		; 35 94
	and $439B.w		; 2D 9B 43
	stp		; DB
	cpx #$CB.b		; E0 CB
	trb $2F.b		; 14 2F
	ldy $14.b		; A4 14
	and ($21.b)		; 32 21
	cmp $1CD4.w,Y		; D9 D4 1C
	bne  29.b		; D0 1D
	ldy $F2.b,X		; B4 F2
	jsr $3102.w		; 20 02 31
	ora ($0C.b,X)		; 01 0C
	bcs  46.b		; B0 2E
	clv		; B8
	sbc ($2E.b)		; F2 2E
	pea $F21D.w		; F4 1D F2
	and $0BE1.w,X		; 3D E1 0B
	ldy $AF.b,X		; B4 AF
	pld		; 2B
	lda ($50.b)		; B2 50
	asl $6F.b,X		; 16 6F
	sbc $0B.b,X		; F5 0B
	cpy $F0.b		; C4 F0
	inc $EC01.w,X		; FE 01 EC
	trb $F1.b		; 14 F1
	and ($FF.b)		; 32 FF
	cpy $3F.b		; C4 3F
	cmp $1EF110.l,X		; DF 10 F1 1E
	bcs  79.b		; B0 4F
	ora ($C4.b,S),Y		; 13 C4
	and $F0FEF3.l		; 2F F3 FE F0
	ora $04EB20.l		; 0F 20 EB 04
	ldy $F2.b,X		; B4 F2
	adc $ED.b		; 65 ED
	eor $F3119D.l,X		; 5F 9D 11 F3
	bit $A1C4.w		; 2C C4 A1
	rti		; 40

	ora ($2F.b)		; 12 2F
	sep #$0E		; E2 0E
	cmp ($2F.b),Y		; D1 2F
	cpy $11.b		; C4 11
	nop		; EA
	trb $00.b		; 14 00
	bit $FD.b		; 24 FD
	jsr $C4ED.w		; 20 ED C4
	ora ($01.b),Y		; 11 01
	asl $40A1.w,X		; 1E A1 40
	ora ($3E.b)		; 12 3E
	sep #$C4		; E2 C4
	ora $20E1.w		; 0D E1 20
	ora ($DB.b),Y		; 11 DB
	tsb $10.b		; 04 10
	and $C4.b,S		; 23 C4
	inc $ED10.w,X		; FE 10 ED
	ora ($01.b)		; 12 01
	asl $41A0.w,X		; 1E A0 41
	iny		; C8
	sbc ($1C.b)		; F2 1C
	sbc ($0D.b,S),Y		; F3 0D
	ora $2E.b,S		; 03 2E
	sbc ($DD.b),Y		; F1 DD
	ldy $26.b,X		; B4 26
	and ($35.b),Y		; 31 35
	cpx $CB10.w		; EC 10 CB
	and $21.b		; 25 21
	cpy $0E.b		; C4 0E
	lda ($32.b,X)		; A1 32
	cop $2F.b		; 02 2F
	cpx #$0F.b		; E0 0F
	cmp ($C4.b),Y		; D1 C4
	and ($00.b),Y		; 31 00
	stp		; DB
	ora ($20.b,S),Y		; 13 20
	jsl $C400FE.l		; 22 FE 00 C4
	inc $1022.w		; EE 22 10
	sbc $22C2.w,X		; FD C2 22
	ora ($1F.b)		; 12 1F
	iny		; C8
	brk $00.b		; 00 00
	ora $0F.b,S		; 03 0F
	inc $40E2.w,X		; FE E2 40
	ora $E11EC8.l		; 0F C8 1E E1
	ora $FE20F2.l,X		; 1F F2 20 FE
	inc $B842.w,X		; FE 42 B8
	beq -14.b		; F0 F2
	ldx $FF11.w,Y		; BE 11 FF
	mvp $EC,$FC		; 44 FC EC
	cpy $C1.b		; C4 C1
	jsl $EF1022.l		; 22 22 10 EF
	sbc $C421E2.l,X		; FF E2 21 C4
	ora $2122CD.l		; 0F CD 22 21
	and ($FF.b,X)		; 21 FF
	sbc $22C4EF.l,X		; FF EF C4 22
	and $22E2EC.l		; 2F EC E2 22
	jsl $C8FE0F.l		; 22 0F FE C8
	bpl  17.b		; 10 11
	ora $4FE2EF.l,X		; 1F EF E2 4F
	ora $DFB81E.l,X		; 1F 1E B8 DF
	jsr $3102.w		; 20 02 31
	cmp $66CE.w,X		; DD CE 66
	sbc ($B8.b),Y		; F1 B8
	cpx #$ED.b		; E0 ED
	brk $2F.b		; 00 2F
	and ($0E.b)		; 32 0E
	cmp $B4E6.w		; CD E6 B4
	eor $53.b,X		; 55 53
	bmi -51.b		; 30 CD
	sbc $1C43F1.l		; EF F1 43 1C
	clv		; B8
	inc $0166.w		; EE 66 01
	cmp ($DD.b,X)		; C1 DD
	ora ($02.b),Y		; 11 02
	ora ($C8.b),Y		; 11 C8
	ora $5F11FD.l		; 0F FD 11 5F
	ora $11E0F0.l		; 0F F0 E0 11
	cpy $00.b		; C4 00
	and ($0E.b,X)		; 21 0E
	cmp $33E3.w,X		; DD E3 33
	ora ($0E.b),Y		; 11 0E
	ldy $DF.b,X		; B4 DF
	sbc ($13.b),Y		; F1 13
	bpl -37.b		; 10 DB
	stz $6166.w		; 9C 66 61
	ldy $11.b,X		; B4 11
	cmp $10F1.w,X		; DD F1 10
	ora ($0D.b),Y		; 11 0D
	wai		; CB
	cmp $A8.b,S		; C3 A8
	ror $4CAB.w		; 6E AB 4C
	cmp ($23.b,S),Y		; D3 23
	bne  46.b		; D0 2E
	jmp.w [$BCB4]		; DC B4 BC
	rol $52.b		; 26 52
	ora ($0F.b,X)		; 01 0F
	beq  16.b		; F0 10
	beq -76.b		; F0 B4
	ora $54C1DC.l		; 0F DC C1 54
	bpl  17.b		; 10 11
	ora $1FA800.l		; 0F 00 A8 1F
	beq  31.b		; F0 1F
	cpy #$54.b		; C0 54
	ora $2FC2.w		; 0D C2 2F
	tya		; 98
	asl $3002.w		; 0E 02 30
	cpx #$1C.b		; E0 1C
	bne  67.b		; D0 43
	cmp $E298.w,X		; DD 98 E2
	and ($10.b,X)		; 21 10
	sbc ($3F.b,S),Y		; F3 3F
	ora $98FFDF.l		; 0F DF FF 98
	brk $E0.b		; 00 E0
.INDEX 16
	rep #$52		; C2 52
	ora $EF0412.l		; 0F 12 04 EF
	tya		; 98
	cpx #$C10C.w		; E0 0C C1
	and $0133D1.l		; 2F D1 33 01
	sbc $0F4298.l,X		; FF 98 42 0F
	ora ($CD.b,X)		; 01 CD
	cpy #$EF13.w		; C0 13 EF
	bpl -120.b		; 10 88
	.db $62, $D3, $13		; 62 D3 13
	adc ($2A.b,X)		; 61 2A
	plb		; AB
	cmp $8816.w		; CD 16 88
	tsb $54B2.w		; 0C B2 54
	rol $67F5.w		; 2E F5 67
	cmp $98CD.w,Y		; D9 CD 98
	sbc $DF2EF2.l		; EF F2 2E DF
	and $2F.b,S		; 23 2F
	sbc ($42.b)		; F2 42
	dey		; 88
	xba		; EB
	cpy #$D0DD.w		; C0 DD D0
	and ($AA.b),Y		; 31 AA
	bit $63.b,X		; 34 63
	tya		; 98
	sbc $04.b,S		; E3 04
	beq  -1.b		; F0 FF
	sbc $ED21DF.l		; EF DF 21 ED
	tya		; 98
	sbc ($35.b,X)		; E1 35
	ora $EE3301.l,X		; 1F 01 33 EE
	bne  -3.b		; D0 FD
	tya		; 98
	sbc ($20.b,X)		; E1 20
	cmp $6114.w		; CD 14 61
	sbc $981F33.l		; EF 33 1F 98
	inc $DFEF.w		; EE EF DF
	tsb $FD.b		; 04 FD
	bne  83.b		; D0 53
	and $330198.l		; 2F 98 01 33
	inc $EEEE.w		; EE EE EE
	beq  50.b		; F0 32
	cmp $E498.w		; CD 98 E4
	eor $F0.b,S		; 43 F0
	and $4F.b,S		; 23 4F
	plb		; AB
	ora $02A8ED.l		; 0F ED A8 02
	jsr $43DE.w		; 20 DE 43
	ora $ED33E1.l,X		; 1F E1 33 ED
	tay		; A8
	ldx $E3EF.w,Y		; BE EF E3
	adc [$FB.b],Y		; 77 FB
	sbc ($50.b,X)		; E1 50
	cpx $F2B8.w		; EC B8 F2
	ora $01FFEF.l,X		; 1F EF FF 01
	mvp $D0,$1D		; 44 1D D0
	ldy $24.b,X		; B4 24
	ora $0D00DE.l,X		; 1F DE 00 0D
	cpy $26BD.w		; CC BD 26
	clv		; B8
	and $23BF.w		; 2D BF 23
	inc $41E0.w		; EE E0 41
	sbc $FFB8FF.l		; EF FF B8 FF
	stz $3C.b		; 64 3C
	ldx $0D23.w,Y		; BE 23 0D
	sbc ($22.b,X)		; E1 22
	clv		; B8
	inc $FFFF.w,X		; FE FF FF
	eor $3D.b,X		; 55 3D
	lda $0E24.w		; AD 24 0E
	clv		; B8
	sbc $EFFF32.l		; EF 32 FF EF
	sbc $9D3E46.l,X		; FF 46 3E 9D
	ldy $E1.b,X		; B4 E1
	and ($DD.b),Y		; 31 DD
	sbc ($10.b),Y		; F1 10
	cmp $05CB.w,X		; DD CB 05
	clv		; B8
	lsr $149D.w		; 4E 9D 14
	rol $22DF.w		; 2E DF 22
	ora $EDC4EF.l		; 0F EF C4 ED
	ora ($44.b,S),Y		; 13 44
	inc $11F1.w,X		; FE F1 11
	inc $B8F1.w,X		; FE F1 B8
	sbc $55F1FE.l		; EF FE F1 55
	ora $25AD.w,X		; 1D AD 25
	asl $EFB8.w		; 0E B8 EF
	and ($1E.b,X)		; 21 1E
	sbc $0A64F2.l		; EF F2 64 0A
	bcs -72.b		; B0 B8
	bit $EE.b,X		; 34 EE
	sbc ($11.b,X)		; E1 11
	asl $14FE.w		; 0E FE 14
	adc ($B4.b,X)		; 61 B4
	eor $1E23CE.l,X		; 5F CE 23 1E
	ldx $0D00.w,Y		; BE 00 0D
	cpy $27B8.w		; CC B8 27
	jsr $13AB.w		; 20 AB 13
	bmi -50.b		; 30 CE
	cop $10.b		; 02 10
	clv		; B8
	inc $6104.w		; EE 04 61
	sbc $50E0.w,Y		; F9 E0 50
	jsr ($B801.w,X)		; FC 01 B8
	rol $010E.w,X		; 3E 0E 01
	eor $2C.b,S		; 43 2C
	cmp $0F21.w,X		; DD 21 0F
	ldy $EF.b,X		; B4 EF
	inc $EFDD.w,X		; FE DD EF
	bit $76.b		; 24 76
	and $10B8EE.l		; 2F EE B8 10
	bpl  -2.b		; 10 FE
	brk $20.b		; 00 20
	ora ($11.b,S),Y		; 13 11
	cpx $EDA8.w		; EC A8 ED
	and $4F.b,S		; 23 4F
	jmp.w [$43D3]		; DC D3 43
	ora ($33.b)		; 12 33
	tay		; A8
	cmp $26BC.w,Y		; D9 BC 26
	eor $7103C9.l		; 4F C9 03 71
	ora ($B8.b)		; 12 B8
	cop $FD.b		; 02 FD
	dec $2104.w,X		; DE 04 21
	cpy $4103.w		; CC 03 41
	clv		; B8
	ora $DEFC12.l		; 0F 12 FC DE
	bit $3D.b		; 24 3D
	cmp $B815.w		; CD 15 B8
	and ($D0.b)		; 32 D0
	cop $FE.b		; 02 FE
	bcs  35.b		; B0 23
	and $B8CE.w		; 2D CE B8
	bit $30.b,X		; 34 30
	cpx #$FC02.w		; E0 02 FC
	bne  51.b		; D0 33
	ora $C1B8.w		; 0D B8 C1
	bit $2E.b		; 24 2E
	sbc ($12.b),Y		; F1 12
	xba		; EB
	cmp ($42.b),Y		; D1 42
	clv		; B8
	sbc $42E0.w,X		; FD E0 42
	rol $20F1.w		; 2E F1 20
	dec $A8D3.w		; CE D3 A8
	mvp $D2,$DB		; 44 DB D2
	eor $0D.b,X		; 55 0D
	ora $20.b,S		; 03 20
	tax		; AA
	tay		; A8
	cpx $50.b		; E4 50
	xba		; EB
	cpx $51.b		; E4 51
	asl $2013.w		; 0E 13 20
	tay		; A8
	tsx		; BA
	sbc ($41.b)		; F2 41
	cmp $41F2.w,X		; DD F2 41
	asl $A823.w		; 0E 23 A8
	rol $E2DD.w		; 2E DD E2
	bpl  -2.b		; 10 FE
	sbc ($21.b)		; F2 21
	brk $98.b		; 00 98
	tsb $31.b		; 04 31
	xba		; EB
	cmp $F1FE01.l		; CF 01 FE F1
	bit $98.b		; 24 98
	ora $2F33E0.l,X		; 1F E0 33 2F
	xce		; FB
	sbc $98FFFF.l,X		; FF FF FF 98
	and ($3E.b,S),Y		; 33 3E
	inc $1102.w,X		; FE 02 11
	bpl  30.b		; 10 1E
	cmp $F388.w,X		; DD 88 F3
	and ($E0.b,S),Y		; 33 E0
	ora ($FF.b,X)		; 01 FF
	ora ($41.b,X)		; 01 41
	sbc $EF78.w,X		; FD 78 EF
	bmi  30.b		; 30 1E
	ora ($1F.b,S),Y		; 13 1F
	lda $783D14.l,X		; BF 14 3D 78
	trb $F4FE.w		; 1C FE F4
	and ($2D.b)		; 32 2D
	cpx #$F32D.w		; E0 2D F3
	stz $04.b		; 64 04
	lsr $EAC9.w		; 4E C9 EA
	tyx		; BB
	eor ($56.b)		; 52 56
	tsb $74.b		; 04 74
	ora ($01.b,X)		; 01 01
	and $FB.b,S		; 23 FB
	cmp $02FFF0.l		; CF F0 FF 02
	stz $14.b		; 64 14
	trb $5254.w		; 1C 54 52
	tas		; 1B
	jmp.w [$DBE0]		; DC E0 DB
	sei		; 78
	jsr $FD11.w		; 20 11 FD
	ora ($3C.b)		; 12 3C
	cpx #$1F21.w		; E0 21 1F
	stz $DD.b,X		; 74 DD
	beq  32.b		; F0 20
	cmp ($01.b),Y		; D1 01
	and ($0D.b,X)		; 21 0D
	cmp $64.b,S		; C3 64
	and ($00.b,S),Y		; 33 00
	inc $DDDF.w		; EE DF DD
	mvn $0C,$13		; 54 13 0C
	sei		; 78
	bpl   1.b		; 10 01
	and $EF10.w		; 2D 10 EF
	sbc ($11.b,S),Y		; F3 11
	ora $0E74.w,X		; 1D 74 0E
	bpl  -1.b		; 10 FF
	sbc ($20.b)		; F2 20
	ora $32DE.w		; 0D DE 32
	pla		; 68
	sbc ($DC.b,X)		; E1 DC
	eor $320F10.l		; 4F 10 0F 32
	dex		; CA
	and $DD5468.l,X		; 3F 68 54 DD
	and $E3E5FF.l		; 2F FF E5 E3
	pld		; 2B
	lda ($68.b)		; B2 68
	and $292010.l,X		; 3F 10 20 29
	and $AA550F.l,X		; 3F 0F 55 AA
	pla		; 68
	asl $3F50.w		; 0E 50 3F
	asl $3000.w		; 0E 00 30
	bne 125.b		; D0 7D
	stz $2E.b		; 64 2E
	phx		; DA
	lda ($4E.b,X)		; A1 4E
	ora $4030E0.l		; 0F E0 30 40
	stz $23.b		; 64 23
	bpl  -4.b		; 10 FC
	ora $B00FFF.l,X		; 1F FF 0F B0
	beq 100.b		; F0 64
	mvp $FE,$11		; 44 11 FE
	beq   3.b		; F0 03
	lda ($0E.b)		; B2 0E
	lda ($54.b),Y		; B1 54
	sbc $EC4103.l,X		; FF 03 41 EC
	eor $4D2C.w,X		; 5D 2C 4D
	cpx #$DD60.w		; E0 60 DD
	cpy $EBDE.w		; CC DE EB
	tyx		; BB
	inc $FC3D.w,X		; FE 3D FC
	pla		; 68
	and ($E0.b),Y		; 31 E0
	ora ($0F.b,X)		; 01 0F
	asl $41F2.w		; 0E F2 41
	cpy #$FF68.w		; C0 68 FF
	cop $00.b		; 02 00
	sbc ($0F.b),Y		; F1 0F
	inc $3D21.w,X		; FE 21 3D
	stz $21.b		; 64 21
	ora $0112F0.l		; 0F F0 12 01
	ora $681FEA.l		; 0F EA 1F 68
	and ($FD.b,X)		; 21 FD
	rol $223D.w,X		; 3E 3D 22
	cmp ($0F.b,X)		; C1 0F
	trb $1F54.w		; 1C 54 1F
	rol $E2.b		; 26 E2
	sbc $6224.w		; ED 24 62
	and ($A0.b,X)		; 21 A0
	stz $FF.b		; 64 FF
	sbc $F01010.l		; EF 10 10 F0
	eor $641031.l		; 4F 31 10 64
	asl $00CF.w,X		; 1E CF 00
	ora $F12E.w,X		; 1D 2E F1
	and ($31.b),Y		; 31 31
	stz $10.b		; 64 10
	bne -79.b		; D0 B1
	beq  16.b		; F0 10
	inc $35E0.w		; EE E0 35
	stz $01.b		; 64 01
	bpl  -1.b		; 10 FF
	inc $1FF0.w		; EE F0 1F
	cmp ($F0.b,X)		; C1 F0
	mvn $52,$61		; 54 61 52
	bpl  -1.b		; 10 FF
	sbc $FEF0.w		; ED F0 FE
	cmp $00F178.l		; CF 78 F1 00
	ora ($E1.b,X)		; 01 E1
	ora $25FE12.l,X		; 1F 12 FE 25
	tya		; 98
	ora $2CF3.w		; 0D F3 2C
	sbc ($2F.b,X)		; E1 2F
	ora $981310.l		; 0F 10 13 98
	ora $FE.b,S		; 03 FE
	xce		; FB
	sbc ($02.b)		; F2 02
	ora ($FF.b),Y		; 11 FF
	inc $0098.w,X		; FE 98 00
	cop $FE.b		; 02 FE
	eor $50.b		; 45 50
	stp		; DB
	ldy $98F3.w,X		; BC F3 98
	rti		; 40

	and ($FD.b),Y		; 31 FD
	sbc $4011.w		; ED 11 40
	sbc $54.b,S		; E3 54
	tay		; A8
	trb $11CD.w		; 1C CD 11
	jsl $F0EE10.l		; 22 10 EE F0
	cop $A8.b		; 02 A8
	ora $00.b,S		; 03 00
	bpl  29.b		; 10 1D
	cmp $2123.w		; CD 23 21
	ora $F1CC98.l		; 0F 98 CC F1
	trb $23.b		; 14 23
	jsr $CB2E.w		; 20 2E CB
	lda $404698.l,X		; BF 98 46 40
	dec $F4BF.w,X		; DE BF F4
	bpl  34.b		; 10 22
	adc $98.b,S		; 63 98
	cmp $D1BA.w,X		; DD BA D1
	eor $40.b,X		; 55 40
	ldy $21DF.w,X		; BC DF 21
	tya		; 98
	ora ($54.b,S),Y		; 13 54
	ora $BBDF.w		; 0D DF BB
	inc $55.b,X		; F6 55
	jsr ($DB98.w,X)		; FC 98 DB
	pei ($24.b)		; D4 24
	sbc ($71.b,X)		; E1 71
	tsb $BB0D.w		; 0C 0D BB
	tya		; 98
	and $52.b,X		; 35 52
	sbc $11CD.w		; ED CD 11
	and ($15.b,X)		; 21 15
	rti		; 40

	tya		; 98
	dec $BFEC.w,X		; DE EC BF
	adc $20.b		; 65 20
	jsr ($24DC.w,X)		; FC DC 24
	tay		; A8
	ora $EF4103.l		; 0F 03 41 EF
	dec $44EF.w		; CE EF 44
	and $CC1DA4.l		; 2F A4 1D CC
	cmp $7436F1.l		; CF F1 36 74
	ora ($EB.b),Y		; 11 EB
	ldy $AE.b		; A4 AE
	and $31.b,S		; 23 31
	ora $F0BC.w		; 0D BC F0
	sbc $A8E5.w,X		; FD E5 A8
	and ($DA.b),Y		; 31 DA
	bne -14.b		; D0 F2
	bit $2F.b,X		; 34 2F
	lda $B8D2.w,X		; BD D2 B8
	ora ($1F.b),Y		; 11 1F
	cmp ($42.b)		; D2 42
	jsr ($0FFF.w,X)		; FC FF 0F
	jsr $41B8.w		; 20 B8 41
	inc $20DE.w,X		; FE DE 20
	jsl $52F2FD.l		; 22 FD F2 52
	clv		; B8
	xba		; EB
	beq -16.b		; F0 F0
	and $20.b,S		; 23 20
	sbc $21EF.w		; ED EF 21
	clv		; B8
	and ($DD.b),Y		; 31 DD
	cpx $71.b		; E4 71
	cpy $0FE1.w		; CC E1 0F
	bit $C8.b		; 24 C8
	ora $101FFE.l,X		; 1F FE 1F 10
	jsr $F1EF.w		; 20 EF F1
	and ($B8.b,S),Y		; 33 B8
	jmp.w [$0FB1]		; DC B1 0F
	ora $50.b,S		; 03 50
	dec $01E0.w,X		; DE E0 01
	iny		; C8
	ora ($0D.b),Y		; 11 0D
	beq  51.b		; F0 33
	ora $F0E0.w,X		; 1D E0 F0
	brk $B4.b		; 00 B4
	and $52.b,X		; 35 52
	jsr ($F2CD.w,X)		; FC CD F2
	and ($EB.b,X)		; 21 EB
	cmp $B8.b,S		; C3 B8
	ror $00BC.w		; 6E BC 00
	ora $ED2E34.l		; 0F 34 2E ED
	sbc $3E13B8.l,X		; FF B8 13 3E
	inc $63E3.w		; EE E3 63
	jmp.w [$1ED0]		; DC D0 1E
	ldy $D1.b,X		; B4 D1
	mvp $FC,$31		; 44 31 FC
	dec $1E12.w		; CE 12 1E
	cpy $47B8.w		; CC B8 47
	ora $10BE.w		; 0D BE 10
	sep #$42		; E2 42
	asl $B8FF.w		; 0E FF B8
	sbc $DF1E22.l		; EF 22 1E DF
	ora [$4F.b],Y		; 17 4F
	lda $B8F2.w		; AD F2 B8
	sbc $E03E42.l		; EF 42 3E E0
	sbc $FC30F0.l,X		; FF F0 30 FC
	iny		; C8
	cop $40.b		; 02 40
	sbc $0000.w		; ED 00 00
	sbc ($3F.b)		; F2 3F
	sbc $F01FC8.l,X		; FF C8 1F F0
	cop $FF.b		; 02 FF
	sbc ($42.b),Y		; F1 42
	cpx $B800.w		; EC 00 B8
	ora $DE62E2.l,X		; 1F E2 62 DE
	brk $EE.b		; 00 EE
	ora $1E.b,S		; 03 1E
	iny		; C8
.INDEX 8
	sep #$50		; E2 50
	xce		; FB
	sbc ($0F.b)		; F2 0F
	ora ($30.b,X)		; 01 30
	asl $E2B8.w		; 0E B8 E2
	sbc $2F11.w		; ED 11 2F
	ora [$3F.b]		; 07 3F
	txy		; 9B
	cop $B8.b		; 02 B8
	ora $DD2115.l		; 0F 15 21 DD
	brk $EF.b		; 00 EF
	sbc ($03.b)		; F2 03
	clv		; B8
	eor ($FC.b)		; 52 FC
	cmp $4211FF.l		; CF FF 11 42
	brk $EF.b		; 00 EF
	clv		; B8
	sbc $4212EF.l,X		; FF EF 12 42
	asl $0DEF.w,X		; 1E EF 0D
	beq -72.b		; F0 B8
	jsl $FF0110.l		; 22 10 01 FF
	cmp $E03F04.l,X		; DF 04 3F E0
	tay		; A8
	ora ($EB.b,S),Y		; 13 EB
.ACCU 8
	sep #$22		; E2 22
	sbc $CE0F03.l		; EF 03 0F CE
	tay		; A8
	lsr $1E.b		; 46 1E
	dec $1D22.w		; CE 22 1D
	cmp ($32.b),Y		; D1 32
	ora $E198.w		; 0D 98 E1
	and ($EF.b,X)		; 21 EF
	and $10.b,S		; 23 10
	cpy $3103.w		; CC 03 31
	dey		; 88
	lda $EF31F2.l,X		; BF F2 31 EF
	dec $1F23.w,X		; DE 23 1F
	ora $C3ED78.l		; 0F 78 ED C3
	ora [$21.b],Y		; 17 21
	sbc $E3FDF0.l		; EF F0 FD E3
	sei		; 78
	and [$1C.b],Y		; 37 1C
	stp		; DB
	asl $13EF.w		; 0E EF 13
	eor $2E.b		; 45 2E
	sty $FE.b		; 84 FE
	sbc ($22.b,X)		; E1 22
	ora ($54.b)		; 12 54
	and $88DCFF.l,X		; 3F FF DC 88
	ora $00.b,S		; 03 00
	sbc ($21.b,X)		; E1 21
	dec $22F4.w,X		; DE F4 22
	cpx #$78.b		; E0 78
	cmp ($DD.b,S),Y		; D3 DD
	ora $CF.b,S		; 03 CF
	ora $2E.b,X		; 15 2E
	sta $0B7844.l,X		; 9F 44 78 0B
	sbc ($73.b)		; F2 73
	cpx $CF01.w		; EC 01 CF
	and ($E0.b),Y		; 31 E0
	sei		; 78
	sbc $11.b,S		; E3 11
	ldx $1003.w,Y		; BE 03 10
	pea $02F1.w		; F4 F1 02
	sei		; 78
	ora $EC14B0.l		; 0F B0 14 EC
	ora $E2CB34.l,X		; 1F 34 CB E2
	sei		; 78
	eor $20031F.l,X		; 5F 1F 03 20
	ora $11FD.w		; 0D FD 11
	asl $0378.w,X		; 1E 78 03
	pei ($BE.b)		; D4 BE
	sbc $211140.l,X		; FF 40 11 21
	ora ($78.b),Y		; 11 78
	dec $B0F2.w,X		; DE F2 B0
	eor $D10F3E.l		; 4F 3E 0F D1
	ldx $4378.w,Y		; BE 78 43
	eor ($0F.b,X)		; 41 0F
	jsr $0B0C.w		; 20 0C 0B
	jsl $0F8411.l		; 22 11 84 0F
	beq -36.b		; F0 DC
	wai		; CB
	sbc ($32.b),Y		; F1 32
	and $34.b,S		; 23 34
	sei		; 78
	lda $1F10E2.l,X		; BF E2 10 1F
	sbc $22D0EF.l,X		; FF EF D0 22
	sei		; 78
	adc $FD4000.l		; 6F 00 40 FD
	sbc $41FE.w,X		; FD FE 41
	and $F00C88.l		; 2F 88 0C F0
	jsl $32F13E.l		; 22 3E F1 32
	tsb $88D0.w		; 0C D0 88
	sbc $EA2004.l		; EF 04 20 EA
	jsr $FD45.w		; 20 45 FD
	brk $98.b		; 00 98
	and ($DF.b,X)		; 21 DF
	sbc $0023F0.l,X		; FF F0 23 00
	dec $9815.w		; CE 15 98
	bmi -64.b		; 30 C0
	ora ($1C.b),Y		; 11 1C
	cmp $51E61F.l		; CF 1F E6 51
	tya		; 98
	ora $44D3.w,Y		; 19 D3 44
	sbc #$12.b		; E9 12
	lsr $F09C.w		; 4E 9C F0
	tay		; A8
	cop $51.b		; 02 51
	and $20E0.w		; 2D E0 20
	jsr ($3F01.w,X)		; FC 01 3F
	tay		; A8
	cmp $3316F0.l		; CF F0 16 33
	cpx $1FF1.w		; EC F1 1F
	bcs -72.b		; B0 B8
	cop $F0.b		; 02 F0
	cpx #$00.b		; E0 00
	eor ($1F.b),Y		; 51 1F
	bne   0.b		; D0 00
	clv		; B8
	ora $1002.w		; 0D 02 10
	inc $1300.w,X		; FE 00 13
	and ($DE.b),Y		; 31 DE
	clv		; B8
	sbc ($FF.b)		; F2 FF
	cmp ($11.b)		; D2 11
	ora $41F1F0.l		; 0F F0 F1 41
	tay		; A8
	eor #$DF.b		; 49 DF
	bpl -36.b		; 10 DC
	.db $42, $3D		; 42 3D
	sbc $23B8FF.l		; EF FF B8 23
	and ($CE.b,X)		; 21 CE
	bpl  14.b		; 10 0E
	sbc $11.b,S		; E3 11
	sbc $F300B8.l		; EF B8 00 F3
	rti		; 40

	sbc $0F00.w,X		; FD 00 0F
	cmp ($12.b)		; D2 12
	clv		; B8
	sbc $42D2F1.l,X		; FF F1 D2 42
	trb $FFE2.w		; 1C E2 FF
	cpx #$B8.b		; E0 B8
	and ($1E.b,X)		; 21 1E
	sbc ($FE.b),Y		; F1 FE
	mvp $C1,$1E		; 44 1E C1
	ora $D1DCB4.l,X		; 1F B4 DC D1
	ora $D30CE0.l,X		; 1F E0 0C D3
	ror $10.b		; 66 10
	clv		; B8
	ora ($ED.b),Y		; 11 ED
	pea $D120.w		; F4 20 D1
	ora $B861C4.l		; 0F C4 61 B8
	cpx $ED03.w		; EC 03 ED
	sep #$40		; E2 40
	sbc $B4B011.l		; EF 11 B0 B4
	rol $61.b,X		; 36 61
	cop $2F.b		; 02 2F
	ldy $00F1.w,X		; BC F1 00
	brk $B4.b		; 00 B4
	nop		; EA
	inc $63.b		; E6 63
	ora ($40.b,X)		; 01 40
	stp		; DB
	cpx #$0F.b		; E0 0F
	ldy $12.b,X		; B4 12
	phd		; 0B
	sta ($65.b)		; 92 65
	bpl  52.b		; 10 34
	jsr ($B4CF.w,X)		; FC CF B4
	asl $3E02.w		; 0E 02 3E
	lda #$46.b		; A9 46
	rti		; 40

	ora $3D.b,X		; 15 3D
	ldy $CD.b,X		; B4 CD
	asl $32F0.w		; 0E F0 32
	cmp $53B5.w,Y		; D9 B5 53
	ora ($C4.b)		; 12 C4
	and ($FE.b,X)		; 21 FE
	sbc $1E02F0.l,X		; FF F0 02 1E
	dec $B832.w		; CE 32 B8
	inc $CC22.w,X		; FE 22 CC
	jsr $241E.w		; 20 1E 24
	ora $B4BE.w		; 0D BE B4
	sbc $42.b		; E5 42
	bit $30.b		; 24 30
	dec $D0EE.w,X		; DE EE D0
	and ($B4.b,S),Y		; 33 B4
	plx		; FA
	sta ($54.b),Y		; 91 54
	ora ($43.b,S),Y		; 13 43
	sbc $DEFE.w		; ED FE DE
	ldy $13.b,X		; B4 13
	and $35AB.w		; 2D AB 35
	jsl $EF1E34.l		; 22 34 1E EF
	ldy $ED.b,X		; B4 ED
.ACCU 8
	sep #$2F		; E2 2F
	tyx		; BB
	ora $32.b		; 05 32
	bit $3E.b,X		; 34 3E
	clv		; B8
	bpl  29.b		; 10 1D
	ora ($1E.b,S),Y		; 13 1E
	dec $FE64.w		; CE 64 FE
	ora ($B4.b)		; 12 B4
	eor $C0FDEF.l		; 4F EF FD C0
	bpl -53.b		; 10 CB
	sbc $32.b		; E5 32
	ldy $24.b,X		; B4 24
	bvc -32.b		; 50 E0
	inc $00CF.w,X		; FE CF 00
	dex		; CA
	sbc $B8.b		; E5 B8
	sbc $E11CF3.l		; EF F3 1C E1
	asl $1FE3.w,X		; 1E E3 1F
	dec $E5B4.w,X		; DE B4 E5
	and ($24.b)		; 32 24
	eor ($F0.b),Y		; 51 F0
	asl $FFCE.w,X		; 1E CE FF
	ldy $CA.b,X		; B4 CA
	cpx $41.b		; E4 41
	bit $51.b		; 24 51
	sbc ($1F.b),Y		; F1 1F
	dec $1FB8.w,X		; DE B8 1F
	inc $0E35.w		; EE 35 0E
	sbc ($1E.b,S),Y		; F3 1E
	sbc ($1E.b,X)		; E1 1E
	clv		; B8
	sbc $34DE20.l,X		; FF 20 DE 34
	asl $3EF1.w,X		; 1E F1 3E
	sbc ($A8.b,X)		; E1 A8
	and $ED10CF.l		; 2F CF 10 ED
	asl $5E.b		; 06 5E
	inc $9841.w		; EE 41 98
	dec $DC13.w		; CE 13 DC
	sbc ($FD.b)		; F2 FD
	cmp ($66.b,S),Y		; D3 66
	nop		; EA
	sty $BD.b		; 84 BD
	eor $11.b,X		; 55 11
	cop $FE.b		; 02 FE
	ora $41.b,S		; 03 41
	cop $88.b		; 02 88
	jsl $1FF2DB.l		; 22 DB F2 1F
	cmp ($11.b),Y		; D1 11
	cop $31.b		; 02 31
	dey		; 88
	sbc $F30E00.l		; EF 00 0E F3
	ora $F011CF.l,X		; 1F CF 11 F0
	sei		; 78
	rol $0E.b		; 26 0E
	and ($FE.b,X)		; 21 FE
	sbc ($2F.b),Y		; F1 2F
	bcs  17.b		; B0 11
	sei		; 78
	asl $1E22.w		; 0E 22 1E
	ora ($00.b,X)		; 01 00
	cmp $EF32.w,X		; DD 32 EF
	sei		; 78
	jsl $2E1F1F.l		; 22 1F 1F 2E
	cmp $53FC4D.l		; CF 4D FC 53
	sei		; 78
	beq   5.b		; F0 05
	bit $0E0E.w		; 2C 0E 0E
	cmp ($22.b,X)		; C1 22
	sbc $220374.l,X		; FF 74 03 22
	sbc ($31.b)		; F2 31
	bpl   1.b		; 10 01
	cmp $6412.w		; CD 12 64
	tsb $1BF0.w		; 0C F0 1B
	ldx $5053.w,Y		; BE 53 50
	eor $4F.b,S		; 43 4F
	stz $FF.b,X		; 74 FF
	trb $F0FD.w		; 1C FD F0
	sbc $021245.l		; EF 45 12 02
	stz $FC.b		; 64 FC
	cpx $FDEC.w		; EC EC FD
	beq  -1.b		; F0 FF
	eor $60.b		; 45 60
	pla		; 68
	ror A		; 6A
	eor $11C1.w		; 4D C1 11
	xba		; EB
	adc ($EE.b),Y		; 71 EE
	adc ($74.b),Y		; 71 74
	jsl $FE3030.l		; 22 30 30 FE
	cpy #$FC.b		; C0 FC
	cpy #$F0.b		; C0 F0
	stz $03.b,X		; 74 03
	and ($20.b)		; 32 20
	and $EE.b,S		; 23 EE
	sbc ($FD.b,X)		; E1 FD
	cmp $5E68.w		; CD 68 5E
	pea $EE2F.w		; F4 2F EE
	eor $BE.b,S		; 43 BE
.ACCU 8
	sep #$2A		; E2 2A
	pla		; 68
	sbc $0D.b,S		; E3 0D
	eor $140D4F.l,X		; 5F 4F 0D 14
	cmp ($C2.b),Y		; D1 C2
	pla		; 68
	ora $5EFEA3.l		; 0F A3 FE 5E
	and ($0E.b),Y		; 31 0E
	dec A		; 3A
	eor ($64.b),Y		; 51 64
	and ($1F.b,X)		; 21 1F
	ldx $FFBB.w,Y		; BE BB FF
	rti		; 40

	lsr $6410.w		; 4E 10 64
	and [$F2.b]		; 27 F2
	brk $E9.b		; 00 E9
	cpx #$DE.b		; E0 DE
	cop $21.b		; 02 21
	stz $14.b		; 64 14
	sbc $F3.b,X		; F5 F3
	and $DDA1EE.l		; 2F EE A1 DD
	brk $64.b		; 00 64
	brk $F2.b		; 00 F2
	adc $ED1136.l		; 6F 36 11 ED
	inc $64FC.w,X		; FE FC 64
	inc $4EFF.w		; EE FF 4E
	and $25.b,S		; 23 25
	beq  47.b		; F0 2F
	sbc $C0EE64.l,X		; FF 64 EE C0
	cmp $01F203.l		; CF 03 F2 01
	rol $EF.b,X		; 36 EF
	stz $F0.b		; 64 F0
	phd		; 0B
	trb $FFB0.w		; 1C B0 FF
	cop $11.b		; 02 11
	eor ($64.b,X)		; 41 64
	bvc -17.b		; 50 EF
	sbc $CE0D.w,X		; FD 0D CE
	sbc $58E205.l,X		; FF 05 E2 58
	asl $DE2E.w		; 0E 2E DE
	ora ($BE.b,S),Y		; 13 BE
	ora ($20.b,X)		; 01 20
	sbc $64.b,S		; E3 64
	ora $F0.b,X		; 15 F0
	jsl $D2E000.l		; 22 00 E0 D2
	cmp $68FD.w,X		; DD FD 68
	rol $1F11.w,X		; 3E 11 1F
	and $2E3EEE.l		; 2F EE 3E 2E
	jsr ($0F64.w,X)		; FC 64 0F
	cpy #$02.b		; C0 02
	ora ($40.b)		; 12 40
	and ($00.b,X)		; 21 00
	brk $64.b		; 00 64
	sbc $1E0B.w		; ED 0B 1E
	beq   3.b		; F0 03
	bvc  20.b		; 50 14
	cpx #$68.b		; E0 68
	brk $00.b		; 00 00
	ora $200FC5.l		; 0F C5 0F 20
	brk $1E.b		; 00 1E
	mvn $01,$00		; 54 00 01
	ora $DE0AFA.l		; 0F FA 0A DE
	.db $42, $22		; 42 22
	stz $3E.b		; 64 3E
	ora $FE0001.l,X		; 1F 01 00 FE
	ora $13FF.w		; 0D FF 13
	mvn $02,$CF		; 54 CF 02
	ora $ED2F00.l,X		; 1F 00 2F ED
	lda ($DD.b),Y		; B1 DD
	mvp $20,$F3		; 44 F3 20
	cmp $60.b,S		; C3 60
	sbc ($31.b,X)		; E1 31
	sbc $64DC.w		; ED DC 64
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	brk $02.b		; 00 02
	beq   0.b		; F0 00
	ora ($0F.b),Y		; 11 0F
	mvp $FD,$FF		; 44 FF FD
	dec $0010.w		; CE 10 00
	and $00.b,S		; 23 00
	sbc $50.b,S		; E3 50
	jsl $ECFFBF.l		; 22 BF FF EC
	lda $F3EE.w,X		; BD EE F3
	bpl  64.b		; 10 40
	ora ($47.b,X)		; 01 47
	lsr $FE72.w,X		; 5E 72 FE
	txy		; 9B
	.db $62, $12, $54		; 62 12 54
	ora ($0F.b),Y		; 11 0F
	ora ($1E.b,S),Y		; 13 1E
	beq   1.b		; F0 01
	cmp $446F.w,X		; DD 6F 44
	brk $01.b		; 00 01
	ora $CE3004.l		; 0F 04 30 CE
	and $CA.b,S		; 23 CA
	bvc -12.b		; 50 F4
	ora ($11.b),Y		; 11 11
	bpl   1.b		; 10 01
	and ($31.b,S),Y		; 33 31
	brk $50.b		; 00 50
	cpx $EEBD.w		; EC BD EE
	sbc $22E3FF.l		; EF FF E3 22
	dec $CF38.w,X		; DE 38 CF
	cmp $F12C23.l		; CF 23 2C F1
	asl $6DD0.w,X		; 1E D0 6D
	sec		; 38
	jmp.w [$EE03]		; DC 03 EE
	cop $0E.b		; 02 0E
	beq   1.b		; F0 01
	cpy #$1034.w		; C0 34 10
	cmp $DDDD.w		; CD DD DD
	sbc $010F.w		; ED 0F 01
	and ($28.b,X)		; 21 28
	inc $DB2F.w,X		; FE 2F DB
	sbc ($EF.b)		; F2 EF
	sbc $34142F.l		; EF 2F 14 34
	trb $D3.b		; 14 D3
	.db $42, $33		; 42 33
	bit $20.b		; 24 20
	ora $0424EF.l,X		; 1F EF 24 04
	and ($24.b),Y		; 31 24
	and ($00.b)		; 32 00
	bit $22.b		; 24 22
	bmi  36.b		; 30 24
	phx		; DA
	ora $43.b,S		; 03 43
	beq  17.b		; F0 11
	ora $342204.l,X		; 1F 04 22 34
	ora $10EBD3.l,X		; 1F D3 EB 10
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	bit $46.b,X		; 34 46
	lda ($DD.b),Y		; B1 DD
	dec $00FF.w,X		; DE FF 00
	sbc $DE240F.l,X		; FF 0F 24 DE
	brk $21.b		; 00 21
	lda $BBBE.w,Y		; B9 BE BB
	cpx #$380D.w		; E0 0D 38
	beq  30.b		; F0 1E
	sbc $03DD10.l		; EF 10 DD 03
	sbc $2801.w,X		; FD 01 28
	sbc $AE2EA1.l		; EF A1 2E AE
	ora ($DA.b,S),Y		; 13 DA
	cmp ($1C.b,X)		; C1 1C
	bit $BD.b		; 24 BD
	bpl -52.b		; 10 CC
	ora ($0B.b,X)		; 01 0B
	ora ($3D.b,X)		; 01 3D
	cmp $BC0D24.l		; CF 24 0D BC
	bit $2F.b		; 24 2F
	bit $2E.b		; 24 2E
	sbc ($42.b)		; F2 42
	bmi  -1.b		; 30 FF
	beq  14.b		; F0 0E
	sbc $33410F.l		; EF 0F 41 33
	bit $28.b		; 24 28
	jsr $20D0.w		; 20 D0 20
	inc $0033.w,X		; FE 33 00
	asl $2833.w,X		; 1E 33 28
	ora $331220.l		; 0F 20 12 33
	sbc $E0430E.l		; EF 0E 43 E0
	trb $15.b		; 14 15
	ora $3D03.w,X		; 1D 03 3D
	ora $F0DFFC.l		; 0F FC DF F0
	bit $00.b,X		; 34 00
	ora $DF4F0F.l		; 0F 0F 4F DF
	asl $EEEC.w		; 0E EC EE
	plp		; 28
.ACCU 16
	rep #$2F		; C2 2F
	asl $0DD1.w		; 0E D1 0D
	ora ($CD.b,S),Y		; 13 CD
	cpx #$3018.w		; E0 18 30
	cmp #$1F20.w		; C9 20 1F
	lda $4D000B.l,X		; BF 0B 00 4D
	bit $DB.b		; 24 DB
	sbc $24E0EB.l		; EF EB E0 24
	ora $440102.l,X		; 1F 02 01 44
	ora ($0F.b,X)		; 01 0F
	beq  15.b		; F0 0F
	brk $13.b		; 00 13
	sbc ($24.b)		; F2 24
	pla		; 68
	beq   0.b		; F0 00
	ora ($F0.b),Y		; 11 F0
	and $E2F3.w		; 2D F3 E2
	lsr $E078.w,X		; 5E 78 E0
	sbc $3D41.w,X		; FD 41 3D
	beq -13.b		; F0 F3
	asl $7810.w		; 0E 10 78
	sbc ($00.b),Y		; F1 00
	ora $D00F.w		; 0D 0F D0
	rts		; 60

	bcs  49.b		; B0 31
	tya		; 98
	ora ($01.b,X)		; 01 01
	ora ($F0.b),Y		; 11 F0
	sbc $F3FE.w,X		; FD FE F3
	ora $3588.w,X		; 1D 88 35
	beq  85.b		; F0 55
.INDEX 8
	sep #$5F		; E2 5F
	cpy #$1B.b		; C0 1B
	bcc -104.b		; 90 98
	jmp.w [$540E]		; DC 0E 54
	pei ($41.b)		; D4 41
	jsl $A8F02E.l		; 22 2E F0 A8
	sbc $0FFFFF.l		; EF FF FF 0F
	cpx #$44.b		; E0 44
	sep #$4F		; E2 4F
	tya		; 98
	sbc $FB.b,X		; F5 FB
	cmp ($AB.b,X)		; C1 AB
	and $C15DD2.l		; 2F D2 5D C1
	tay		; A8
	rol $C2.b,X		; 36 C2
	lsr $EEE2.w		; 4E E2 EE
	sbc ($EE.b,X)		; E1 EE
	jsr $F498.w		; 20 98 F4
	and $0CE1E4.l,X		; 3F E4 E1 0C
	stz $93.b		; 64 93
	bit $D398.w,X		; 3C 98 D3
	asl A		; 0A
	ora ($FE.b)		; 12 FE
	bit $D3.b,X		; 34 D3
	pld		; 2B
	ldx $03A8.w,Y		; BE A8 03
	jmp $2FDE23.l		; 5C 23 DE 2F
	cmp $A4111F.l,X		; DF 1F 11 A4
	bpl  35.b		; 10 23
	asl $C4DB.w		; 0E DB C4
	jsl $A82255.l		; 22 55 22 A8
	asl $1EC1.w,X		; 1E C1 1E
	jsl $CE2F10.l		; 22 10 2F CE
	sbc $D354A8.l,X		; FF A8 54 D3
	rol $FCE1.w		; 2E E1 FC
	sbc ($0F.b),Y		; F1 0F
	and ($B8.b,S),Y		; 33 B8
	brk $1F.b		; 00 1F
	sbc $F014F0.l		; EF F0 14 F0
	jsr $A8E0.w		; 20 E0 A8
	phd		; 0B
	cmp $00.b,S		; C3 00
	and ($2F.b,S),Y		; 33 2F
	rol $FFBD.w		; 2E BD FF
	clv		; B8
	trb $00.b		; 14 00
	jsr $0EEF.w		; 20 EF 0E
	cmp ($10.b)		; D2 10
	ora ($A8.b,S),Y		; 13 A8
	cpx #$2D.b		; E0 2D
	ldx $4600.w		; AE 00 46
	sbc ($2F.b)		; F2 2F
	dec $ECA8.w		; CE A8 EC
	cop $12.b		; 02 12
	eor ($0F.b,X)		; 41 0F
	xba		; EB
	cpx #$25.b		; E0 25
	tay		; A8
	and ($3F.b,X)		; 21 3F
	cmp $21D2EC.l,X		; DF EC D2 21
	.db $42, $FE		; 42 FE
	tay		; A8
	dec $1E07.w		; CE 07 1E
	.db $42, $BE		; 42 BE
	and $30B1.w		; 2D B1 30
	ldy $03.b		; A4 03
	bmi -22.b		; 30 EA
	lda ($63.b)		; B2 63
	eor [$41.b],Y		; 57 41
	sbc $D0A8.w,X		; FD A8 D0
	bit $22.b		; 24 22
	tsb $F3CD.w		; 0C CD F3
	lsr $20.b		; 46 20
	tay		; A8
	cpx #$AA.b		; E0 AA
	beq  37.b		; F0 25
	.db $62, $FD, $BB		; 62 FD BB
	cmp ($B8.b,S),Y		; D3 B8
	ora ($42.b),Y		; 11 42
	ora $11C0FD.l		; 0F FD C0 11
	and ($0F.b,S),Y		; 33 0F
	tay		; A8
	ldy $42DE.w,X		; BC DE 42
	and $4E.b,X		; 35 4E
	sbc $04AB.w,X		; FD AB 04
	tay		; A8
	and ($5F.b,S),Y		; 33 5F
	jmp.w [$13CE]		; DC CE 13
	and $E5.b,S		; 23 E5
	and $FEA8.w		; 2D A8 FE
	stp		; DB
	bit $22.b		; 24 22
	bpl -49.b		; 10 CF
	bne  18.b		; D0 12
	tay		; A8
	ora ($FF.b),Y		; 11 FF
	and ($20.b),Y		; 31 20
	jmp.w [$32EF]		; DC EF 32
	jsl $ECDD98.l		; 22 98 DD EC
	sbc ($12.b),Y		; F1 12
	and $2205.w		; 2D 05 22
	tsa		; 3B
	tya		; 98
	tsx		; BA
	cmp ($37.b,S),Y		; D3 37
	eor ($CC.b,X)		; 41 CC
	ldx $41F3.w,Y		; BE F3 41
	tay		; A8
	and $2210D1.l		; 2F D1 10 22
	cpx $02F1.w		; EC F1 02
	and ($98.b,X)		; 21 98
	lda $3101DE.l,X		; BF DE 01 31
	and $0722BE.l,X		; 3F BE 22 07
	tya		; 98
	asl $EFBE.w,X		; 1E BE EF
	and $F2.b,S		; 23 F2
	brk $E0.b		; 00 E0
	inc $0298.w,X		; FE 98 02
	asl $F142.w		; 0E 42 F1
	and ($DB.b,X)		; 21 DB
	sbc ($FF.b)		; F2 FF
	dey		; 88
	lsr $0C.b,X		; 56 0C
	eor $45BFEB.l		; 4F EB BF 45
	sbc ($21.b)		; F2 21
	tya		; 98
	ora ($2D.b),Y		; 11 2D
	dec OBJSEL.w		; CE 01 21
	rol $1FD0.w,X		; 3E D0 1F
	tya		; 98
	ora $FF.b,S		; 03 FF
	and $0631CF.l		; 2F CF 31 06
	trb $94F0.w		; 1C F0 94
	cpy $F0EE.w		; CC EE F0
	ora ($01.b)		; 12 01
	ora $94D0CC.l,X		; 1F CC D0 94
	ora $104102.l,X		; 1F 02 41 10
	sbc ($21.b,S),Y		; F3 21
	and ($0D.b,X)		; 21 0D
	dey		; 88
	sbc $E4.b,X		; F5 E4
	rti		; 40

	cpx $33A2.w		; EC A2 33
	phd		; 0B
	and $94.b		; 25 94
	and ($24.b,X)		; 21 24
	sbc $EE1022.l,X		; FF 22 10 EE
	cmp ($20.b,X)		; C1 20
	dey		; 88
	ora $EE22.w		; 0D 22 EE
	cmp ($2F.b,S),Y		; D3 2F
	and $BF.b,S		; 23 BF
	eor ($94.b,S),Y		; 53 94
	asl $D0EF.w,X		; 1E EF D0
	eor $00.b,X		; 55 00
	inc $FDFF.w		; EE FF FD
	sty $01.b,X		; 94 01
	sbc ($31.b,X)		; E1 31
	cmp $F0F1.w,X		; DD F1 F0
	eor ($02.b,X)		; 41 02
	tya		; 98
	rol $11C1.w		; 2E C1 11
	ora $E0.b,S		; 03 E0
	cmp ($01.b,X)		; C1 01
	ora ($98.b),Y		; 11 98
	beq  30.b		; F0 1E
	sbc $2E0212.l,X		; FF 12 02 2E
	cmp $8833.w		; CD 33 88
	tsb $0E4F.w		; 0C 4F 0E
	brk $0F.b		; 00 0F
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	sbc $94.b,S		; E3 94
	and $1F.b,S		; 23 1F
	sbc $0F24EE.l		; EF EE 24 0F
	bpl   1.b		; 10 01
	dey		; 88
	ora $60AD11.l,X		; 1F 11 AD 60
	and $53EFF0.l		; 2F F0 EF 53
	sty $3E.b		; 84 3E
	tsx		; BA
	bne  34.b		; D0 22
	and ($53.b,S),Y		; 33 53
	phx		; DA
	cmp $2F2494.l		; CF 94 24 2F
	dec $1103.w,X		; DE 03 11
	sbc $2F02.w		; ED 02 2F
	sty $DE.b,X		; 94 DE
	sbc ($32.b,S),Y		; F3 32
	cmp $24DE.w,X		; DD DE 24
	asl $98F1.w,X		; 1E F1 98
	jsr $01CE.w		; 20 CE 01
	and $FE.b		; 25 FE
	sbc $F312.w		; ED 12 F3
	sty $41.b		; 84 41
	cmp $1C03.w		; CD 03 1C
	cmp $F1EC53.l		; CF 53 EC F1
	dey		; 88
	asl $41FF.w,X		; 1E FF 41
	ora $5D46AC.l		; 0F AC 46 5D
	cmp $0DF288.l		; CF 88 F2 0D
	rol $3C33.w		; 2E 33 3C
	lda ($02.b),Y		; B1 02
	and $150A88.l		; 2F 88 0A 15
	and $321FDF.l		; 2F DF 1F 32
	ora ($CA.b,X)		; 01 CA
	dey		; 88
	sbc $50.b,X		; F5 50
	sbc ($EB.b),Y		; F1 EB
	sbc $5E.b,X		; F5 5E
	bcc 113.b		; 90 71
	sty $0C.b		; 84 0C
	cpx $2D.b		; E4 2D
	sbc ($1D.b,X)		; E1 1D
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	ora $0F2274.l		; 0F 74 22 0F
	jsr $E21C.w		; 20 1C E2
	rol $E0.b		; 26 E0
	beq 116.b		; F0 74
	and $5490.w		; 2D 90 54
	jmp.w [$2FD2]		; DC D2 2F
	cmp ($5F.b),Y		; D1 5F
	sei		; 78
	ora $63C1.w,X		; 1D C1 63
	beq  43.b		; F0 2B
	cmp $844E4F.l,X		; DF 4F 4E 84
	sbc ($0F.b,X)		; E1 0F
	cop $1D.b		; 02 1D
	cmp ($34.b,X)		; C1 34
	ora $C274DE.l,X		; 1F DE 74 C2
	rol $13DB.w,X		; 3E DB 13
	rti		; 40

	inc $1212.w		; EE 12 12
	stz $3F.b,X		; 74 3F
	wai		; CB
	trb $1F.b		; 14 1F
	ora $23.b,S		; 03 23
	xce		; FB
	ora $84.b		; 05 84
	ora $32CF.w,X		; 1D CF 32
	and $4C15BC.l,X		; 3F BC 15 4C
	ldy $A180.w		; AC 80 A1
	bmi -38.b		; 30 DA
	ldx $1D34.w,Y		; BE 34 1D
	tsb $60.b		; 04 60
	sty $C1.b		; 84 C1
	and ($11.b)		; 32 11
	tsb $2DE1.w		; 0C E1 2D
	dec $8835.w		; CE 35 88
	inc $23CF.w		; EE CF 23
	brk $FE.b		; 00 FE
	bpl  16.b		; 10 10
	ora ($88.b),Y		; 11 88
	cmp $DC53.w,X		; DD 53 DC
	sbc $0E.b		; E5 0E
	eor $CC.b,S		; 43 CC
	sbc ($88.b,S),Y		; F3 88
	and $CD23.w		; 2D 23 CD
	asl $3A.b		; 06 3A
	lda $80FF65.l,X		; BF 65 FF 80
	rol $45BE.w,X		; 3E BE 45
	eor ($EF.b),Y		; 51 EF
	bit $20.b		; 24 20
	sbc $88.b,S		; E3 88
	ora $10D2.w,Y		; 19 D2 10
	bmi -17.b		; 30 EF
	sbc $0F.b,X		; F5 0F
	cpy $0688.w		; CC 88 06
	adc $0035AC.l		; 6F AC 35 00
	sbc $32E1.w		; ED E1 32
	sty $33.b		; 84 33
	inc $3C04.w		; EE 04 3C
	ldx $1111.w		; AE 11 11
	dec $E384.w,X		; DE 84 E3
	bit $56C0.w,X		; 3C C0 56
	and $5FB1.w		; 2D B1 5F
	cpy #$5384.w		; C0 84 53
	bit $FD.b		; 24 FD
	cpy #$BE1F.w		; C0 1F BE
	bpl   4.b		; 10 04
	tya		; 98
	tsb $41E1.w		; 0C E1 41
	cmp $FFF021.l,X		; DF 21 F0 FF
	and ($94.b,S),Y		; 33 94
	bit $20D3.w		; 2C D3 20
	inc $23EF.w,X		; FE EF 23
	tsb $98EF.w		; 0C EF 98
	bpl  29.b		; 10 1D
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	sbc $4C03.w		; ED 03 4C
	lda ($88.b,S),Y		; B3 88
	adc $F905.w		; 6D 05 F9
	cmp [$2E.b]		; C7 2E
	lda ($4F.b),Y		; B1 4F
	ora $88.b,S		; 03 88
	sbc $3D36CE.l		; EF CE 36 3D
	ldy $3D27.w,X		; BC 27 3D
	dec $D084.w,X		; DE 84 D0
	adc $0B.b,S		; 63 0B
	dec $1DEF.w		; CE EF 1D
	tyx		; BB
	bne -108.b		; D0 94
	ora ($1E.b)		; 12 1E
	trb $3F.b		; 14 3F
	cmp $031E43.l		; CF 43 1E 03
	dey		; 88
	dec $22DF.w,X		; DE DF 22
	asl $12B2.w,X		; 1E B2 12
	trb $8801.w		; 1C 01 88
	bit $2E.b,X		; 34 2E
	ldy $4A27.w		; AC 27 4A
	nop		; EA
	bit $24.b		; 24 24
	ldy $00.b		; A4 00
	inc $FE10.w,X		; FE 10 FE
	bne   0.b		; D0 00
	bit $3E.b		; 24 3E
	ldy $F3.b		; A4 F3
	eor ($DC.b,X)		; 41 DC
	sbc ($20.b),Y		; F1 20
	beq -16.b		; F0 F0
	brk $98.b		; 00 98
	ldx $3E32.w,Y		; BE 32 3E
	ora ($1F.b)		; 12 1F
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	lda ($98.b),Y		; B1 98
	eor ($0C.b)		; 52 0C
	cpx $20.b		; E4 20
	cmp $F0F2.w,X		; DD F2 F0
	bit $A8.b		; 24 A8
	brk $0E.b		; 00 0E
	ora $2C.b,S		; 03 2C
	lda ($51.b),Y		; B1 51
	inc $980F.w,X		; FE 0F 98
	and ($0C.b,S),Y		; 33 0C
	lda $BE6141.l,X		; BF 41 61 BE
	and $0D.b,X		; 35 0D
	ldy $0F.b		; A4 0F
	dec $1E13.w		; CE 13 1E
	cpx #$10.b		; E0 10
	inc $B8CD.w		; EE CD B8
	brk $22.b		; 00 22
	bit $41D0.w		; 2C D0 41
	sbc $23F2.w		; ED F2 23
	iny		; C8
	beq  -1.b		; F0 FF
	bpl   0.b		; 10 00
	sbc ($10.b,X)		; E1 10
	and ($CC.b)		; 32 CC
	ldy $A0.b,X		; B4 A0
	adc $DB.b,S		; 63 DB
	cpy #$44.b		; C0 44
	rti		; 40

	dec $C8E1.w,X		; DE E1 C8
	beq -32.b		; F0 E0
	jsl $25CD4D.l		; 22 4D CD 25
	asl $B8D0.w		; 0E D0 B8
	asl $20.b,X		; 16 20
	cmp $0D1000.l		; CF 00 10 0D
	beq  36.b		; F0 24
	iny		; C8
	bmi -52.b		; 30 CC
	trb $2E.b		; 14 2E
	cmp $FE1013.l,X		; DF 13 10 FE
	iny		; C8
	ora $F00F10.l,X		; 1F 10 0F F0
	ora ($5D.b)		; 12 5D
	ldx $B816.w,Y		; BE 16 B8
	ora $24B0.w,Y		; 19 B0 24
	and ($DC.b),Y		; 31 DC
	sbc ($10.b,S),Y		; F3 10
	sbc $13F0C8.l		; EF C8 F0 13
	eor $45AE.w		; 4D AE 45
	jsr ($22FF.w,X)		; FC FF 22
	iny		; C8
	ora ($DF.b),Y		; 11 DF
	ora ($1F.b,X)		; 01 1F
	ora $0B25E1.l		; 0F E1 25 0B
	cpy #$1D.b		; C0 1D
	sbc ($42.b)		; F2 42
	sbc $13DE.w,X		; FD DE 13
	and ($00.b),Y		; 31 00
	iny		; C8
	ora $51F2FF.l,X		; 1F FF F2 51
	wai		; CB
	tsb $4E.b		; 04 4E
	cmp $02EFC4.l,X		; DF C4 EF 02
	bmi  -1.b		; 30 FF
	sbc ($00.b),Y		; F1 00
	cmp $C804.w,X		; DD 04 C8
	pld		; 2B
	bcs  97.b		; B0 61
	inc $02E1.w,X		; FE E1 02
	and $E0C4FE.l		; 2F FE C4 E0
	brk $FD.b		; 00 FD
	cpx $61.b		; E4 61
	jmp.w [$1004]		; DC 04 10
	iny		; C8
	cpx #$11.b		; E0 11
	jsr $010C.w		; 20 0C 01
	ora ($DF.b),Y		; 11 DF
	mvp $3F,$C4		; 44 C4 3F
	lda $E00F32.l,X		; BF 32 0F E0
	sbc ($21.b),Y		; F1 21
	asl $02C8.w		; 0E C8 02
	ora $BD5EE3.l		; 0F E3 5E BD
	and $FE.b,X		; 35 FE
	sbc $1210C8.l,X		; FF C8 10 12
	sbc $FE11E0.l,X		; FF E0 11 FE
	mvp $B0,$DC		; 44 DC B0
	dex		; CA
	ora $52.b		; 05 52
	ora $5026DF.l		; 0F DF 26 50
	jmp.w [$FEC4]		; DC C4 FE
	ora $40.b		; 05 40
	cmp $1F22.w		; CD 22 1F
	beq -16.b		; F0 F0
	iny		; C8
	ora ($FD.b),Y		; 11 FD
	bpl  15.b		; 10 0F
	ora $0D.b,X		; 15 0D
	cpy #$32.b		; C0 32
	cpy $10.b		; C4 10
	ora $1012FF.l		; 0F FF 12 10
	inc $F4FE.w		; EE FE F4
	iny		; C8
	trb $41C0.w		; 1C C0 41
	asl $00F1.w		; 0E F1 00
	bpl  15.b		; 10 0F
	iny		; C8
	beq  15.b		; F0 0F
	bit $FB.b,X		; 34 FB
	sbc ($40.b,X)		; E1 40
	cpx #$00.b		; E0 00
	iny		; C8
	brk $11.b		; 00 11
	sbc $32F200.l		; EF 00 F2 32
	cmp $B4F4.w		; CD F4 B4
	eor ($EE.b,X)		; 41 EE
	ora $ED3101.l		; 0F 01 31 ED
	jmp.w [$C8D6]		; DC D6 C8
	bit $22D0.w		; 2C D0 22
	sbc $10E1F2.l,X		; FF F2 E1 10
	asl $00C8.w		; 0E C8 00
	brk $41.b		; 00 41
	cmp $0003.w,X		; DD 03 00
	sbc $03B810.l,X		; FF 10 B8 03
	inc $1FEF.w,X		; FE EF 1F
	stz $E9.b		; 64 E9
	sbc ($20.b,S),Y		; F3 20
	clv		; B8
	cpx #$FF.b		; E0 FF
	and ($0E.b),Y		; 31 0E
	bne   3.b		; D0 03
	rts		; 60

	phx		; DA
	ldy $D1.b,X		; B4 D1
	jsr $EFF0.w		; 20 F0 EF
	cop $1E.b		; 02 1E
	jmp.w [$B8C2]		; DC C2 B8
	eor $0022BC.l,X		; 5F BC 22 00
	sbc $FF1F02.l,X		; FF 02 1F FF
	clv		; B8
	bne  54.b		; D0 36
	bit $2FC0.w		; 2C C0 2F
	brk $0F.b		; 00 0F
	cop $B8.b		; 02 B8
	rol $F2DF.w		; 2E DF F2
	eor ($EC.b,S),Y		; 53 EC
	sbc ($0F.b)		; F2 0F
	sbc ($B8.b),Y		; F1 B8
	ora $DF0F11.l		; 0F 11 0F DF
	asl $3E.b,X		; 16 3E
	cpy #$10.b		; C0 10
	clv		; B8
	sbc ($00.b,X)		; E1 00
.INDEX 8
	sep #$10		; E2 10
	sbc $5112.w		; ED 12 51
	cmp $E100B8.l,X		; DF B8 00 E1
	brk $FF.b		; 00 FF
	and ($FE.b,X)		; 21 FE
	beq  68.b		; F0 44
	tay		; A8
	cmp $FDE0.w,X		; DD E0 FD
	ora $0C130F.l,X		; 1F 0F 13 0C
	cpx #$A8.b		; E0 A8
	eor [$0D.b],Y		; 57 0D
	cpx #$1D.b		; E0 1D
	cmp ($F0.b),Y		; D1 F0
	bpl  61.b		; 10 3D
	tay		; A8
	cpx #$27.b		; E0 27
	and $D10EDF.l		; 2F DF 0E D1
	brk $D2.b		; 00 D2
	tay		; A8
	and ($DE.b,X)		; 21 DE
	eor $20.b		; 45 20
	cpx #$ED.b		; E0 ED
	sbc ($1D.b,X)		; E1 1D
	tay		; A8
	sep #$4F		; E2 4F
	sbc $E10F37.l		; EF 37 0F E1
	jsr ($A8E2.w,X)		; FC E2 A8
	sbc $3FF2.w,X		; FD F2 3F
	sbc ($54.b,X)		; E1 54
	sbc $A8CD10.l,X		; FF 10 CD A8
	ora ($DE.b,X)		; 01 DE
	tsb $0F.b		; 04 0F
	pea $0031.w		; F4 31 00
	rol $CEA8.w		; 2E A8 CE
	brk $D0.b		; 00 D0
	ora ($FF.b)		; 12 FF
	jsl $980130.l		; 22 30 01 98
	inc $0BCE.w,X		; FE CE 0B
	lda ($32.b)		; B2 32
	sbc $985F33.l		; EF 33 5F 98
	and ($FF.b,X)		; 21 FF
	bne -35.b		; D0 DD
	cmp ($2F.b),Y		; D1 2F
	cpx #$44.b		; E0 44
	dey		; 88
	.db $42, $2F		; 42 2F
	sbc $E19B1C.l,X		; FF 1C 9B E1
	sbc $4388F3.l,X		; FF F3 88 43
	bit $11.b,X		; 34 11
	cop $ED.b		; 02 ED
	txy		; 9B
	sbc ($ED.b)		; F2 ED
	tya		; 98
	cop $30.b		; 02 30
	ora ($00.b)		; 12 00
	sbc ($0E.b,S),Y		; F3 0E
	dec $8800.w		; CE 00 88
	asl $4411.w		; 0E 11 44
	jsr $1101.w		; 20 01 11
	sbc $88D1.w		; ED D1 88
	lda $2342D0.l,X		; BF D0 42 23
	and ($F0.b,X)		; 21 F0
	brk $FC.b		; 00 FC
	dey		; 88
	ora $52EEFD.l,X		; 1F FD EE 52
	ora ($41.b),Y		; 11 41
	brk $FD.b		; 00 FD
	dey		; 88
	cmp ($01.b)		; D2 01
	cmp $31E2.w		; CD E2 31
	and ($21.b,X)		; 21 21
	ora $0EEF88.l,X		; 1F 88 EF 0E
	sbc $23F0FF.l,X		; FF FF F0 23
	and ($F1.b),Y		; 31 F1
	sei		; 78
	ora $CD1CFD.l		; 0F FD 1C CD
.INDEX 16
	rep #$13		; C2 13
	jsl $2E7861.l		; 22 61 78 2E
	asl $DD0E.w		; 0E 0E DD
	sbc $1500.w,X		; FD 00 15
	and ($78.b),Y		; 31 78
	jsl $B3E1C0.l		; 22 C0 E1 B3
	cpy #$F10F.w		; C0 0F F1
	and $E24178.l,X		; 3F 78 41 E2
	beq -49.b		; F0 CF
	ora $F122.w,X		; 1D 22 F1
	ora $25FF64.l		; 0F 64 FF 25
	lsr $4C.b		; 46 4C
	cpy #$EA02.w		; C0 02 EA
	phd		; 0B
	stz $41.b		; 64 41
	bpl  13.b		; 10 0D
	cmp ($02.b),Y		; D1 02
	and $642E30.l		; 2F 30 2E 64
	beq  43.b		; F0 2B
	cpy #$0F20.w		; C0 20 0F
	jsr $45F0.w		; 20 F0 45
	stz $1F.b		; 64 1F
	cmp ($FF.b,X)		; C1 FF
	sbc $10F0DE.l,X		; FF DE F0 10
	bpl 100.b		; 10 64
	bit $20.b,X		; 34 20
	sbc $EF02BB.l,X		; FF BB 02 EF
	cpy #$6821.w		; C0 21 68
	jsl $F0F1A3.l		; 22 A3 F1 F0
	bcc  51.b		; 90 33
	sbc $F16435.l		; EF 35 64 F1
	jsl $0D1133.l		; 22 33 11 0D
	stp		; DB
	ldy #$64D2.w		; A0 D2 64
	cpx #$6423.w		; E0 23 64
	asl $10E0.w		; 0E E0 10
	plb		; AB
	sbc $03E064.l		; EF 64 E0 03
	mvp $2E,$02		; 44 02 2E
	brk $EE.b		; 00 EE
	inc $FF64.w		; EE 64 FF
	sbc ($E2.b)		; F2 E2
	ora ($32.b,S),Y		; 13 32
	tas		; 1B
	trb $6411.w		; 1C 11 64
	plx		; FA
	ora $21005F.l,X		; 1F 5F 00 21
	bpl   1.b		; 10 01
	ora $FDBA44.l		; 0F 44 BA FD
	inc $21E6.w,X		; FE E6 21
	adc ($E0.b,X)		; 61 E0
	ora $AF1050.l,X		; 1F 50 10 AF
	sbc $BCCB.w		; ED CB BC
	dec $33DF.w,X		; DE DF 33
	bvc  51.b		; 50 33
	trb $CBFD.w		; 1C FD CB
	jmp.w [$BEBA]		; DC BA BE
	eor ($50.b),Y		; 51 50
	and $67.b,X		; 35 67
	stz $AD.b		; 64 AD
	cpy $AACB.w		; CC CB AA
	ldy $1260.w		; AC 60 12
	mvp $34,$33		; 44 33 34
	lsr $F0FF.w		; 4E FF F0
	inc $F064.w,X		; FE 64 F0
	ora ($34.b),Y		; 11 34
	inc $0F01.w,X		; FE 01 0F
	sbc $DC500F.l,X		; FF 0F 50 DC
	dec $34E4.w		; CE E4 34
	lsr $52.b,X		; 56 52
	eor ($FD.b,S),Y		; 53 FD
	mvn $FE,$FF		; 54 FF FE
	cop $21.b		; 02 21
	tda		; 7B
	bmi -16.b		; 30 F0
	ora ($64.b,X)		; 01 64
	inc $D40F.w,X		; FE 0F D4
	sbc ($F1.b,X)		; E1 F1
	ora ($E0.b,S),Y		; 13 E0
	cpx #$F358.w		; E0 58 F3
	cmp $24FB11.l,X		; DF 11 FB 24
	sbc ($FE.b)		; F2 FE
	cmp ($64.b,S),Y		; D3 64
	ora $0C1F00.l		; 0F 00 1F 0C
	beq  18.b		; F0 12
	brk $0E.b		; 00 0E
	mvn $31,$4F		; 54 4F 31
	sbc $4FD0.w,X		; FD D0 4F
	cmp $5402F0.l,X		; DF F0 02 54
	sbc $2D2B22.l,X		; FF 22 2B 2D
	cmp ($4E.b,X)		; C1 4E
	sbc ($E2.b,X)		; E1 E2
	bvc  -1.b		; 50 FF
	inc $1AF4.w		; EE F4 1A
	cpy $FD11.w		; CC 11 FD
	sbc $030054.l		; EF 54 00 03
	cmp ($DE.b)		; D2 DE
	rti		; 40

	bpl  48.b		; 10 30
	inc $F550.w		; EE 50 F5
	trb $DF.b		; 14 DF
	cmp $02CC.w,X		; DD CC 02
	eor $12.b		; 45 12
	mvn $25,$E2		; 54 E2 25
	xce		; FB
	sbc $21.b,S		; E3 21
	ora $60040D.l		; 0F 0D 04 60
	and $2E.b,S		; 23 2E
	trb $EF.b		; 14 EF
	and ($21.b,S),Y		; 33 21
	ora $1F54F2.l		; 0F F2 54 1F
	sbc ($1E.b,S),Y		; F3 1E
	brk $05.b		; 00 05
	phk		; 4B
	lda $6050F5.l		; AF F5 50 60
	and $30.b,S		; 23 30
	asl A		; 0A
	eor $0D.b,X		; 55 0D
	cpx $F1.b		; E4 F1
	rts		; 60

	inc $13EF.w,X		; FE EF 13
	sbc ($C0.b,X)		; E1 C0
	and $64EEFE.l,X		; 3F FE EE 64
	brk $B1.b		; 00 B1
	eor $030000.l		; 4F 00 00 03
	asl $641F.w,X		; 1E 1F 64
	asl A		; 0A
	sbc $FE.b,X		; F5 FE
.INDEX 8
	sep #$1F		; E2 1F
	rol $01DF.w,X		; 3E DF 01
	mvn $32,$95		; 54 95 32
	inc $A421.w,X		; FE 21 A4
	ora ($AF.b,S),Y		; 13 AF
	inc $F264.w		; EE 64 F2
	ora ($F5.b,X)		; 01 F5
	jsl $F5CB0E.l		; 22 0E CB F5
	asl A		; 0A
	sei		; 78
	bmi  -1.b		; 30 FF
	bit $FF.b		; 24 FF
	ora ($BE.b,X)		; 01 BE
	mvp $88,$BA		; 44 BA 88
	ora ($00.b)		; 12 00
	and ($EF.b),Y		; 31 EF
	and $CE24DD.l,X		; 3F DD 24 CE
	dey		; 88
	ora ($F0.b)		; 12 F0
	eor $F0.b,S		; 43 F0
	ora $0102BD.l		; 0F BD 02 01
	tya		; 98
	ora $212101.l		; 0F 01 21 21
	asl $BFFE.w		; 0E FE BF
	ora ($98.b)		; 12 98
	brk $11.b		; 00 11
	ora $33.b,S		; 03 33
	brk $0C.b		; 00 0C
	stp		; DB
	cmp $11A8.w,X		; DD A8 11
	sbc $5FF243.l,X		; FF 43 F2 5F
	cmp ($0B.b)		; D2 0B
	cmp ($C4.b,X)		; C1 C4
	inc $EEEE.w		; EE EE EE
	ora ($12.b)		; 12 12
	.db $42, $11		; 42 11
	ora $CACEB4.l,X		; 1F B4 CE CA
	inc $55BD.w		; EE BD 55
	rol $62.b		; 26 62
	cop $B8.b		; 02 B8
	cpx $E021.w		; EC 21 E0
	and $F56CD4.l,X		; 3F D4 6C F5
	jmp.w [$01B4]		; DC B4 01
	jmp.w [$CFFE]		; DC FE CF
	asl $51D3.w,X		; 1E D3 51
	and $B4.b		; 25 B4
	asl $DD01.w,X		; 1E 01 DD
	ora $D21ED1.l		; 0F D1 1E D2
	bmi -88.b		; 30 A8
	mvp $6F,$AB		; 44 AB 6F
	cpy #$4E.b		; C0 4E
	sbc $0A.b		; E5 0A
	sbc ($A8.b,S),Y		; F3 A8
	ror $DCF5.w		; 6E F5 DC
	and ($DE.b,X)		; 21 DE
	eor $3B02.w		; 4D 02 3B
	tay		; A8
	inc $C364.w,X		; FE 64 C3
	trb $0CF1.w		; 1C F1 0C
	and ($F0.b,X)		; 21 F0
	ldy $11.b		; A4 11
	stp		; DB
	cmp $31.b		; C5 31
	adc $FF.b		; 65 FF
	and $00A8CF.l		; 2F CF A8 00
	pea $F5EB.w		; F4 EB F5
	jmp $3FCD23.l		; 5C 23 CD 3F
	ldy $EC.b		; A4 EC
	asl $2DE1.w		; 0E E1 2D
	tyx		; BB
	and $06.b,X		; 35 06
	adc $0CF2A4.l		; 6F A4 F2 0C
	sbc $CA21EF.l		; EF EF 21 CA
	sbc $22.b		; E5 22
	ldy $73.b		; A4 73
	sbc ($1D.b),Y		; F1 1D
	cmp $FB12FE.l		; CF FE 12 FB
	ldx #$A8.b		; A2 A8
	tsa		; 3B
	.db $42, $BE		; 42 BE
	rol $20D1.w,X		; 3E D1 20
	pea $A4FC.w		; F4 FC A4
	ldy $1654.w		; AC 54 16
	lsr $EB10.w,X		; 5E 10 EB
	sbc $2CA8E1.l,X		; FF E1 A8 2C
	dec $B256.w,X		; DE 56 B2
	phk		; 4B
	cmp ($EE.b,S),Y		; D3 EE
	pea $FFA4.w		; F4 A4 FF
	and $DB.b,S		; 23 DB
	ldy $40.b,X		; B4 40
	ror $E0.b		; 66 E0
	asl $CEA4.w		; 0E A4 CE
	ora $AE0C04.l		; 0F 04 0C AE
	adc ($27.b,X)		; 61 27
	rol $10A4.w		; 2E A4 10
	jmp.w [$F2F0]		; DC F0 F2
	rol $35AA.w,X		; 3E AA 35
	ora $A4.b		; 05 A4
	adc $E0FB00.l		; 6F 00 FB E0
	beq  79.b		; F0 4F
	dex		; CA
	inc $A8.b		; E6 A8
	lda ($4A.b)		; B2 4A
	sep #$0C		; E2 0C
	tsb $F0.b		; 04 F0
	and $B5A4CD.l,X		; 3F CD A4 B5
	and ($65.b),Y		; 31 65
	beq  14.b		; F0 0E
	dec $030F.w		; CE 0F 03
	ldy $FC.b		; A4 FC
	sta ($60.b),Y		; 91 60
	eor [$0F.b]		; 47 0F
	bpl -52.b		; 10 CC
	ora $0E01B4.l		; 0F B4 01 0E
	cmp $1F1431.l,X		; DF 31 14 1F
	bpl -18.b		; 10 EE
	ldy $FF.b		; A4 FF
	sbc ($1D.b)		; F2 1D
	lda $1754.w		; AD 54 17
	lsr $A400.w		; 4E 00 A4
	xba		; EB
	beq -31.b		; F0 E1
	and $55AC.w		; 2D AC 55
	asl $5E.b,X		; 16 5E
	ldy $01.b		; A4 01
	jmp.w [$E1E0]		; DC E0 E1
	and $55AC.w		; 2D AC 55
	ora [$A4.b],Y		; 17 A4
	lsr $EB01.w		; 4E 01 EB
	sbc $AF1CE0.l,X		; FF E0 1C AF
	adc ($A8.b,S),Y		; 73 A8
	ora ($CC.b,S),Y		; 13 CC
	ora ($C2.b),Y		; 11 C2
	ora $65DD11.l,X		; 1F 11 DD 65
	ldy $23.b,X		; B4 23
	eor ($FF.b,X)		; 41 FF
	ora $FFEF.w		; 0D EF FF
	inc $A8E3.w,X		; FE E3 A8
	bit $9F21.w		; 2C 21 9F
	ora $003FD1.l,X		; 1F D1 3F 00
	cpx $B8.b		; E4 B8
	bmi -15.b		; 30 F1
	sbc $20FFF0.l		; EF F0 FF 20
	brk $F1.b		; 00 F1
	ldy $44.b,X		; B4 44
	bit $3F.b		; 24 3F
	ora $EFEFDC.l		; 0F DC EF EF
	sbc $C165A8.l,X		; FF A8 65 C1
	tsb $EED0.w		; 0C D0 EE
	ora ($01.b)		; 12 01
	beq -88.b		; F0 A8
	lsr $FE.b		; 46 FE
	tsa		; 3B
	cpy #$EE.b		; C0 EE
	cop $2E.b		; 02 2E
	and $FF37A8.l		; 2F A8 37 FF
	ora $EDDE.w,X		; 1D DE ED
	ora $01.b,S		; 03 01
	ora $0F45A8.l,X		; 1F A8 45 0F
	ora $F1DFBE.l,X		; 1F BE DF F1
	and ($01.b,X)		; 21 01
	tay		; A8
	mvp $0E,$00		; 44 00 0E
	cmp $01DE.w,X		; DD DE 01
	jsr $A811.w		; 20 11 A8
	mvn $FE,$F1		; 54 F1 FE
	cpy $02FE.w		; CC FE 02
	cop $02.b		; 02 02
	tay		; A8
	eor $1F.b,S		; 43 1F
	trb $DFCE.w		; 1C CE DF
	ora ($3F.b,X)		; 01 3F
	and ($A8.b,X)		; 21 A8
	eor $00.b,S		; 43 00
	trb $EFCD.w		; 1C CD EF
	cop $11.b		; 02 11
	and $FE45A8.l		; 2F A8 45 FE
	bit $FDCD.w,X		; 3C CD FD
	ora ($10.b,S),Y		; 13 10
	jsr $15A8.w		; 20 A8 15
	ora $0EBD0F.l,X		; 1F 0F BD 0E
	sbc ($20.b)		; F2 20
	ora ($98.b)		; 12 98
	trb $33.b		; 14 33
	phd		; 0B
	tsx		; BA
	cmp $2101.w,X		; DD 01 21
	rti		; 40

	tya		; 98
	and ($42.b,S),Y		; 33 42
	bit $AECB.w		; 2C CB AE
	ora $982024.l		; 0F 24 20 98
	and $14.b,S		; 23 14
	jmp $ADDC.w		; 4C DC AD
	brk $12.b		; 00 12
	and ($98.b,X)		; 21 98
	and ($22.b,X)		; 21 22
	and ($CC.b)		; 32 CC
	ldx $01E0.w,Y		; BE E0 01
	jsl $041198.l		; 22 98 11 04
	and ($FD.b),Y		; 31 FD
	wai		; CB
	beq -16.b		; F0 F0
	rti		; 40

	tya		; 98
	jsr $5210.w		; 20 10 52
	cpx #$EB.b		; E0 EB
	bne  14.b		; D0 0E
	jsl $1F0298.l		; 22 98 02 1F
	and $1F.b,S		; 23 1F
	ora $1EB0.w		; 0D B0 1E
	ora ($88.b,X)		; 01 88
	ora ($32.b)		; 12 32
	pei ($50.b)		; D4 50
	sbc $DE11D9.l,X		; FF D9 11 DE
	dey		; 88
	lsr $1DF5.w		; 4E F5 1D
	lsr $0F.b		; 46 0F
	tsb $2DDE.w		; 0C DE 2D
	dey		; 88
	beq  16.b		; F0 10
	ora ($E2.b)		; 12 E2
	and ($01.b,S),Y		; 33 01
	jmp.w [$8801]		; DC 01 88
	cmp ($FD.b),Y		; D1 FD
	ora $01.b,S		; 03 01
	ora ($42.b,X)		; 01 42
	beq -34.b		; F0 DE
	dey		; 88
	ora $33CDE2.l,X		; 1F E2 CD 33
	beq  51.b		; F0 33
	sbc ($0E.b)		; F2 0E
	dey		; 88
	sbc $1F0F.w,X		; FD 0F 1F
	cmp $1F.b,S		; C3 1F
	eor $841002.l,X		; 5F 02 10 84
	and ($1C.b)		; 32 1C
	sbc $EEDE.w		; ED DE EE
	sbc ($12.b,X)		; E1 12
	and $78.b,S		; 23 78
	asl $C0B0.w,X		; 1E B0 C0
	rol $E142.w		; 2E 42 E1
	ora $1F784F.l,X		; 1F 4F 78 1F
	cmp $2FF0.w		; CD F0 2F
	tsb $F1.b		; 04 F1
	bmi -16.b		; 30 F0
	sei		; 78
	tsb $D010.w		; 0C 10 D0
	ora $021003.l		; 0F 03 10 02
	eor $FF78.w		; 4D 78 FF
	xce		; FB
	rol $01F2.w,X		; 3E F2 01
	cpx $3D.b		; E4 3D
	and $110E78.l		; 2F 78 0E 11
	ldx $01F3.w,Y		; BE F3 01
	and $1103.w,X		; 3D 03 11
	sei		; 78
	cpx #$FE.b		; E0 FE
	tas		; 1B
	ora ($2F.b),Y		; 11 2F
	bpl   1.b		; 10 01
	and $2178.w,X		; 3D 78 21
	bne  -5.b		; D0 FB
	jmp $F20F14.l		; 5C 14 0F F2
	bpl 104.b		; 10 68
	sbc ($D1.b,X)		; E1 D1
	tsb $02E1.w		; 0C E1 02
	jsr $4D01.w		; 20 01 4D
	stz $13.b,X		; 74 13
	sbc ($FD.b),Y		; F1 FD
	sbc $0110C1.l		; EF C1 10 01
	and ($78.b)		; 32 78
	sbc ($E1.b),Y		; F1 E1
.INDEX 8
	sep #$DE		; E2 DE
	eor $2FF0F3.l,X		; 5F F3 F0 2F
	stz $E2.b		; 64 E2
	and $DFFAED.l,X		; 3F ED FA DF
	eor $4003.w		; 4D 03 40
	stz $43.b		; 64 43
	ora $BB0F.w		; 0D 0F BB
	ora $E4F5F2.l		; 0F F2 F5 E4
	stz $3D.b		; 64 3D
	and ($DD.b,X)		; 21 DD
.INDEX 8
	sep #$DD		; E2 DD
	ora $E135.w		; 0D 35 E1
	stz $31.b		; 64 31
	ora ($0D.b,X)		; 01 0D
	ldy #$0E.b		; A0 0E
	beq  20.b		; F0 14
	sbc ($54.b),Y		; F1 54
	mvp $4B,$FE		; 44 FE 4B
	lda $24FEEE.l,X		; BF EE FE 24
	and [$54.b]		; 27 54
	lda ($12.b)		; B2 12
	sbc ($CE.b),Y		; F1 CE
	sbc $F52FFF.l,X		; FF FF 2F F5
	bvc  36.b		; 50 24
	eor $1E.b,X		; 55 1E
	asl $AA.b		; 06 AA
	tyx		; BB
	sbc $005434.l		; EF 34 54 00
	jsl $E0CEEF.l		; 22 EF CE E0
	sbc ($E1.b)		; F2 E1
	adc $2064.w		; 6D 64 20
	cop $EC.b		; 02 EC
	beq  13.b		; F0 0D
	lsr $1FF1.w,X		; 5E F1 1F
	mvn $3E,$E7		; 54 E7 3E
	ora $6FEAED.l,X		; 1F ED EA 6F
	dec $C1.b,X		; D6 C1
	mvn $3E,$E5		; 54 E5 3E
	ora ($D1.b),Y		; 11 D1
	plb		; AB
	ora $6430D1.l		; 0F D1 30 64
	sbc ($1D.b),Y		; F1 1D
	jsl $C15FEB.l		; 22 EB 5F C1
	and $1064C4.l		; 2F C4 64 10
	ora ($F0.b,X)		; 01 F0
	phd		; 0B
	bpl  16.b		; 10 10
	cop $D2.b		; 02 D2
	stz $E3.b		; 64 E3
	ora $0BE02E.l		; 0F 2E E0 0B
	ora ($C6.b,S),Y		; 13 C6
	bmi  96.b		; 30 60
	sbc ($FF.b,X)		; E1 FF
	inc $BE3E.w,X		; FE 3E BE
	sbc $50EFFD.l		; EF FD EF 50
	pea $52FC.w		; F4 FC 52
	eor ($DF.b),Y		; 51 DF
	cpy $40DD.w		; CC DD 40
	bvc -13.b		; 50 F3
	ora $6B.b,X		; 15 6B
	sbc $5E.b,S		; E3 5E
	cpx $AA.b		; E4 AA
	jmp $34E150.l		; 5C 50 E1 34
	stz $32.b		; 64 32
	sbc ($5E.b,X)		; E1 5E
	inc $50C2.w,X		; FE C2 50
	rti		; 40

	ora $3D.b		; 05 3D
	lda ($60.b,X)		; A1 60
	rol $BACC.w		; 2E CC BA
	bvc -19.b		; 50 ED
	tsa		; 3B
	sbc $EAC0DA.l,X		; FF DA C0 EA
	wai		; CB
	lda ($60.b,S),Y		; B3 60
	ora $FE23.w		; 0D 23 FE
	sbc $00DDEE.l,X		; FF EE DD 00
	jmp.w [$1D60]		; DC 60 1D
	cmp ($03.b)		; D2 03
	and $0B.b,S		; 23 0B
	cmp $2EDE.w		; CD DE 2E
	rts		; 60

	sbc $43D001.l		; EF 01 D0 43
	cmp $00FD.w,X		; DD FD 00
	sbc ($50.b,X)		; E1 50
	asl A		; 0A
	sta $0CC2.w,X		; 9D C2 0C
	ora [$3B.b]		; 07 3B
	jmp $64CE.w		; 4C CE 64
	bit $1D.b,X		; 34 1D
	inc $C4E2.w,X		; FE E2 C4
	cpy $3B.b		; C4 3B
	ora ($54.b),Y		; 11 54
	eor $0C24.w		; 4D 24 0C
	rol $CA21.w		; 2E 21 CA
	eor $FE645D.l,X		; 5F 5D 64 FE
	sbc ($00.b,S),Y		; F3 00
	and $FF30.w,X		; 3D 30 FF
	ora ($ED.b),Y		; 11 ED
	bvc  63.b		; 50 3F
.ACCU 16
	rep #$25		; C2 25
	adc $1E.b		; 65 1E
	adc $6033E1.l		; 6F E1 33 60
	asl $EDED.w		; 0E ED ED
	bit $DF.b		; 24 DF
	bne -14.b		; D0 F2
	and ($64.b)		; 32 64
	cmp $1003BF.l,X		; DF BF 03 10
	bpl  78.b		; 10 4E
	ora ($0F.b,X)		; 01 0F
	stz $F0.b,X		; 74 F0
	ora $F42FFD.l		; 0F FD 2F F4
	cop $F2.b		; 02 F2
	and ($78.b,X)		; 21 78
	cpx #$00.b		; E0 00
	cmp ($5C.b),Y		; D1 5C
	bpl   1.b		; 10 01
	jsr $7811.w		; 20 11 78
	sbc $FFFF.w,X		; FD FF FF
	brk $C4.b		; 00 C4
	rti		; 40

	ora $32.b,S		; 03 32
	dey		; 88
	sbc $C1F2FE.l,X		; FF FE F2 C1
	sbc $044F12.l,X		; FF 12 4F 04
	dey		; 88
	ora $3FB0FE.l,X		; 1F FE B0 3F
	cpy #$1E.b		; C0 1E
	jsl $128840.l		; 22 40 88 12
	and $13BFFD.l		; 2F FD BF 13
	dec $132E.w		; CE 2E 13
	dey		; 88
	and ($20.b),Y		; 31 20
	rol $BE0E.w,X		; 3E 0E BE
	pea $000C.w		; F4 0C 00
	dey		; 88
	sbc ($22.b,S),Y		; F3 22
	ora ($2E.b)		; 12 2E
	ora $4E00DB.l,X		; 1F DB 00 4E
	dey		; 88
	bne   0.b		; D0 00
	jsl $1F4F11.l		; 22 11 4F 1F
	ora $88CD.w		; 0D CD 88
	and $FA.b		; 25 FA
	bpl   0.b		; 10 00
	eor ($04.b,X)		; 41 04
	ora ($0E.b,X)		; 01 0E
	dey		; 88
	cpx $5DF1.w		; EC F1 5D
	lda ($0F.b),Y		; B1 0F
	jsl $884310.l		; 22 10 43 88
	sbc ($0D.b,X)		; E1 0D
	lda $10DB24.l,X		; BF 24 DB 10
	sbc ($13.b)		; F2 13
	dey		; 88
	cop $4E.b		; 02 4E
	rol $D3ED.w		; 2E ED D3
	and $8800A1.l		; 2F A1 00 88
	ora ($30.b),Y		; 11 30
	and $10.b,S		; 23 10
	inc $02DF.w		; EE DF 02
	rol A		; 2A
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	rti		; 40

	and ($31.b,X)		; 21 31
	ora $88FFFB.l		; 0F FB FF 88
	rti		; 40

	ldy #$2F.b		; A0 2F
	bpl  64.b		; 10 40
	ora ($3F.b)		; 12 3F
	ora $FB88.w		; 0D 88 FB
	ora $0B.b,S		; 03 0B
	sbc $2F.b,S		; E3 2F
	ora ($01.b,S),Y		; 13 01
	and $88.b,S		; 23 88
	ora $CE0F.w,X		; 1D 0F CE
	inc $34C1.w,X		; FE C1 34
	sbc ($30.b),Y		; F1 30
	dey		; 88
	sbc ($51.b)		; F2 51
	sbc ($FB.b),Y		; F1 FB
	plb		; AB
	sbc $5126.w		; ED 26 51
	tya		; 98
	ora ($0F.b,X)		; 01 0F
	ora ($02.b,S),Y		; 13 02
	sbc $01CFDD.l,X		; FF DD CF 01
	tya		; 98
	.db $42, $01		; 42 01
	brk $00.b		; 00 00
	and $00.b,S		; 23 00
	jsr ($98CD.w,X)		; FC CD 98
	beq  20.b		; F0 14
	bmi  31.b		; 30 1F
	ora $EF2213.l		; 0F 13 22 EF
	tya		; 98
	stp		; DB
	dec $3412.w,X		; DE 12 34
	brk $FF.b		; 00 FF
	bpl  51.b		; 10 33
	tya		; 98
	rol $ADFC.w		; 2E FC AD
	brk $33.b		; 00 33
	and ($FF.b),Y		; 31 FF
	ora $311498.l		; 0F 98 14 31
	inc $D0CA.w,X		; FE CA D0
	ora $44.b,S		; 03 44
	sbc $01FF98.l,X		; FF 98 FF 01
	mvp $DC,$1F		; 44 1F DC
	stz $4400.w,X		; 9E 00 44
	tya		; 98
	bmi -33.b		; 30 DF
	brk $15.b		; 00 15
	rti		; 40

	inc $EFAA.w,X		; FE AA EF
	tya		; 98
	bit $33.b		; 24 33
	trb $12E0.w		; 1C E0 12
	mvp $CB,$1F		; 44 1F CB
	tya		; 98
	lda $3312.w		; AD 12 33
	eor $25F2DE.l		; 4F DE F2 25
	and ($98.b)		; 32 98
	cpx $D1BA.w		; EC BA D1
	and ($42.b)		; 32 42
	ora $12D1.w		; 0D D1 12
	tya		; 98
	eor $1F.b		; 45 1F
	tsx		; BA
	cmp $4211.w		; CD 11 42
	eor $0298DD.l		; 4F DD 98 02
	and ($52.b,S),Y		; 33 52
	jmp.w [$D2CA]		; DC CA D2
	ora ($23.b,S),Y		; 13 23
	tya		; 98
	tas		; 1B
	sbc $2E3523.l,X		; FF 23 35 2E
	wai		; CB
	lda $9803.w,X		; BD 03 98
	and ($22.b),Y		; 31 22
	stp		; DB
	and ($34.b,X)		; 21 34
	and ($FC.b,S),Y		; 33 FC
	tyx		; BB
	tya		; 98
	bne  35.b		; D0 23
	ora ($2D.b)		; 12 2D
	cmp $2F3523.l,X		; DF 23 35 2F
	tya		; 98
	sbc #$DC.b		; E9 DC
	sbc ($12.b,S),Y		; F3 12
	jsl $43E1ED.l		; 22 ED E1 43
	tya		; 98
	eor $0D.b,S		; 43 0D
	tyx		; BB
	cmp $400122.l,X		; DF 22 01 40
	dec $02A8.w		; CE A8 02
	and ($21.b,X)		; 21 21
	sbc $F3CF.w		; ED CF F3
	ora $1EA812.l,X		; 1F 12 A8 1E
	sbc ($12.b),Y		; F1 12
	ora $0E.b,S		; 03 0E
	ldy $61EF.w,X		; BC EF 61
	tay		; A8
	ora ($14.b,X)		; 01 14
	sbc $1F12.w		; ED 12 1F
	ora ($DA.b),Y		; 11 DA
	cmp $13B8.w,X		; DD B8 13
	and $002D02.l		; 2F 02 2D 00
	bpl -30.b		; 10 E2
	ora $EFB8.w		; 0D B8 EF
.INDEX 8
	sep #$51		; E2 51
	beq  48.b		; F0 30
	bne  16.b		; D0 10
	sbc $ED20B8.l		; EF B8 20 ED
	asl $0F45.w		; 0E 45 0F
	ora $EE.b,S		; 03 EE
	ora ($B8.b,X)		; 01 B8
	inc $FE21.w		; EE 21 FE
	sbc $E14FF6.l,X		; FF F6 4F E1
	and $F0B4.w		; 2D B4 F0
	rol $0FCF.w		; 2E CF 0F
	cmp $45BC.w		; CD BC 45
	.db $42, $B4		; 42 B4
	mvp $00,$0F		; 44 0F 00
	cmp $FDF1.w,X		; DD F1 FD
	phx		; DA
	inc $B8.b,X		; F6 B8
	tsb $0CF2.w		; 0C F2 0C
	ora $FC.b,S		; 03 FC
	and $1C.b,S		; 23 1C
	asl $F3C8.w		; 0E C8 F3
	lsr $1FE0.w		; 4E E0 1F
	beq  61.b		; F0 3D
	sbc ($20.b),Y		; F1 20
	cpy $FF.b		; C4 FF
	cmp $1035.w,X		; DD 35 10
	ora ($0F.b,X)		; 01 0F
	bpl  -2.b		; 10 FE
	cpy $01.b		; C4 01
	ora $31F5ED.l		; 0F ED F5 31
	sbc ($0F.b),Y		; F1 0F
	ora ($C4.b,X)		; 01 C4
	asl $10E1.w		; 0E E1 10
	sbc $52D3.w		; ED D3 52
	beq  16.b		; F0 10
	cpy $F1.b		; C4 F1
	asl $20EF.w,X		; 1E EF 20
	inc $54DF.w,X		; FE DF 54
	ora $002FC8.l		; 0F C8 2F 00
	bpl -47.b		; 10 D1
	ora ($EF.b)		; 12 EF
	sbc $4EB462.l,X		; FF 62 B4 4E
	sbc ($0E.b),Y		; F1 0E
	jsl $1EE3DB.l		; 22 DB E3 1E
	dex		; CA
	iny		; C8
	and $EC.b,X		; 35 EC
	ora ($1E.b,X)		; 01 1E
	ora ($DF.b)		; 12 DF
	ora ($0F.b)		; 12 0F
	cpy $ED.b		; C4 ED
	pea $F050.w		; F4 50 F0
	brk $F2.b		; 00 F2
	asl $C4E0.w		; 0E E0 C4
	bpl -18.b		; 10 EE
	sbc $51.b,S		; E3 51
	beq   0.b		; F0 00
	sbc ($0F.b)		; F2 0F
	iny		; C8
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	inc $3C05.w,X		; FE 05 3C
	cpx #$10.b		; E0 10
	sbc ($C8.b)		; F2 C8
	asl $20E2.w		; 0E E2 20
	inc $3C05.w		; EE 05 3C
	cpx #$10.b		; E0 10
	iny		; C8
	sbc ($0E.b)		; F2 0E
.ACCU 8
	sep #$20		; E2 20
	inc $2D14.w		; EE 14 2D
	cpx #$B8.b		; E0 B8
	jsr $ECF4.w		; 20 F4 EC
	cmp ($5E.b,S),Y		; D3 5E
	bne  69.b		; D0 45
	plx		; FA
	clv		; B8
	sbc ($10.b),Y		; F1 10
	bpl -35.b		; 10 DD
	jsl $2A160F.l		; 22 0F 16 2A
	clv		; B8
	cmp ($00.b),Y		; D1 00
	ora ($0B.b)		; 12 0B
	cmp $21.b,S		; C3 21
	asl $4B.b		; 06 4B
	clv		; B8
	bcc  33.b		; 90 21
	brk $1F.b		; 00 1F
	dec $0423.w		; CE 23 04
	lsr $ADB8.w,X		; 5E B8 AD
	ora ($E1.b)		; 12 E1
	bmi -68.b		; 30 BC
	and ($13.b)		; 32 13
	.db $42, $B8		; 42 B8
	plb		; AB
	ora ($EF.b)		; 12 EF
	.db $42, $CB		; 42 CB
	tsb $13.b		; 04 13
	and ($B8.b)		; 32 B8
	cpy $EF00.w		; CC 00 EF
	eor $DC.b,S		; 43 DC
	sbc ($32.b),Y		; F1 32
	eor ($B8.b,X)		; 41 B8
	sbc $E0EF.w		; ED EF E0
	bit $DD.b,X		; 34 DD
	beq  35.b		; F0 23
	and ($B8.b)		; 32 B8
	sbc $DFFF.w		; ED FF DF
	and ($0D.b,S),Y		; 33 0D
	sbc $B84222.l,X		; FF 22 42 B8
	cmp $13D0EF.l,X		; DF EF D0 13
	ora $3103FF.l		; 0F FF 03 31
	clv		; B8
	asl $DF0D.w		; 0E 0D DF
	and $0F.b,S		; 23 0F
	beq -29.b		; F0 E3
	.db $42, $B8		; 42 B8
	cmp ($1C.b),Y		; D1 1C
	ldy #$41.b		; A0 41
	ora ($0E.b,X)		; 01 0E
	sbc ($41.b),Y		; F1 41
	clv		; B8
	brk $0E.b		; 00 0E
	lda $002F21.l,X		; BF 21 2F 00
	beq  49.b		; F0 31
	clv		; B8
	ora ($FE.b),Y		; 11 FE
	bcs   3.b		; B0 03
	brk $1F.b		; 00 1F
	sbc ($12.b),Y		; F1 12
	clv		; B8
	sbc ($0F.b)		; F2 0F
	cmp $0111.w,X		; DD 11 01
	ora ($F0.b,X)		; 01 F0
	ora ($A8.b),Y		; 11 A8
	sbc ($4D.b,S),Y		; F3 4D
	sta $03F1.w,X		; 9D F1 03
	ora ($F0.b),Y		; 11 F0
	ora ($A8.b),Y		; 11 A8
	sbc $4F.b,S		; E3 4F
	ldy $031E.w,X		; BC 1E 03
	ora $A83D02.l,X		; 1F 02 3D A8
	sbc ($40.b,X)		; E1 40
	sbc $02FE.w,X		; FD FE 02
	ora $982100.l,X		; 1F 00 21 98
	lda ($54.b,X)		; A1 54
	xce		; FB
	inc $33C1.w		; EE C1 33
	sbc $0D9822.l		; EF 22 98 0D
	ora ($2D.b,S),Y		; 13 2D
	cpx #$0F.b		; E0 0F
	ora ($FD.b,X)		; 01 FD
	ora $88.b		; 05 88
	and $DD51C1.l		; 2F C1 51 DD
	asl $2F02.w		; 0E 02 2F
	lda $D484.w		; AD 84 D4
	rts		; 60

	sbc $1F2113.l		; EF 13 21 1F
	and ($0E.b,X)		; 21 0E
	sty $DD.b		; 84 DD
	cpx #$11.b		; E0 11
	ora $ED4303.l,X		; 1F 03 43 ED
	ora $2FF378.l		; 0F 78 F3 2F
	bne  44.b		; D0 2C
	tsb $50.b		; 04 50
	dec $84F1.w,X		; DE F1 84
	inc $F0FF.w		; EE FF F0
	jsr $43F1.w		; 20 F1 43
	ora ($0F.b,X)		; 01 0F
	sei		; 78
	sbc $4E100F.l,X		; FF 0F 10 4E
	sbc ($53.b),Y		; F1 53
	and #$DD.b		; 29 DD
	sei		; 78
	cop $02.b		; 02 02
	cmp ($3E.b,X)		; C1 3E
	cpy #$64.b		; C0 64
	sbc $1278EC.l,X		; FF EC 78 12
	cmp ($1F.b)		; D2 1F
	rol $13D0.w		; 2E D0 13
	ora ($DA.b),Y		; 11 DA
	sei		; 78
	and $1D.b,S		; 23 1D
	and ($FE.b),Y		; 31 FE
	and $DB31F1.l		; 2F F1 31 DB
	sei		; 78
	sbc $E15401.l		; EF 01 54 E1
	beq -32.b		; F0 E0
	ora $19.b,S		; 03 19
	pla		; 68
	eor $10C1D1.l,X		; 5F D1 C1 10
	asl $FD.b,X		; 16 FD
	rts		; 60

	rol $0264.w,X		; 3E 64 02
	asl $ECD4.w		; 0E D4 EC
	beq   0.b		; F0 00
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	pla		; 68
	ora $E50C.w		; 0D 0C E5
	eor ($33.b)		; 52 33
	plx		; FA
	and $74D1.w		; 2D D1 74
	sbc $DBCCED.l		; EF ED CC DB
	ora $4645F1.l,X		; 1F F1 45 46
	pla		; 68
	dec $23AC.w,X		; DE AC 23
	sta ($F7.b),Y		; 91 F7
	beq  94.b		; F0 5E
	phk		; 4B
	stz $02.b		; 64 02
	brk $00.b		; 00 00
	tas		; 1B
	lda ($FF.b),Y		; B1 FF
	cpx #$647A.w		; E0 7A 64
	cmp $13F2E0.l,X		; DF E0 F2 13
	lsr $1FE2.w,X		; 5E E2 1F
	beq 104.b		; F0 68
	ora #$1006.w		; 09 06 10
	sbc ($F2.b,X)		; E1 F2
	ora $1DE3.w		; 0D E3 1D
	stz $D1.b		; 64 D1
	beq  96.b		; F0 60
	tsb $5FCB.w		; 0C CB 5F
	inc A		; 1A
	ldy $3068.w		; AC 68 30
	and $E0.b		; 25 E0
	cmp $1B05C2.l		; CF C2 05 1B
	tsb $2F78.w		; 0C 78 2F
	sbc $2F24.w,X		; FD 24 2F
	cop $FD.b		; 02 FD
	beq -28.b		; F0 E4
	pla		; 68
	cmp ($0B.b,X)		; C1 0B
	bmi -12.b		; 30 F4
	inc $1F52.w,X		; FE 52 1F
	ora $FE78.w		; 0D 78 FE
	sbc ($1E.b),Y		; F1 1E
	jsr $2C02.w		; 20 02 2C
	rti		; 40

	sbc $1168.w,X		; FD 68 11
	sbc $20E2F1.l		; EF F1 E2 20
	ora $68126C.l,X		; 1F 6C 12 68
	phd		; 0B
	sbc $1F12.w		; ED 12 1F
	cmp ($3D.b)		; D2 3D
	ora ($40.b,S),Y		; 13 40
	pla		; 68
	sbc $12FF.w		; ED FF 12
	sbc ($91.b,X)		; E1 91
	and ($E0.b),Y		; 31 E0
	and ($78.b)		; 32 78
	cop $2B.b		; 02 2B
	brk $FF.b		; 00 FF
	sbc ($3D.b)		; F2 3D
	sbc ($B2.b,S),Y		; F3 B2
	pla		; 68
	rol $4B.b,X		; 36 4B
	cpx $9F.b		; E4 9F
	sbc ($F0.b,X)		; E1 F0
	dec $F0.b,X		; D6 F0
	pla		; 68
	ora ($2F.b,X)		; 01 2F
	and [$BB.b]		; 27 BB
	dec $F006.w,X		; DE 06 F0
	pea $DB68.w		; F4 68 DB
	jsl $21B023.l		; 22 23 B0 21
	ora $58F4E0.l		; 0F E0 F4 58
	jmp.w [$3D4F]		; DC 4F 3D
	eor $C6E2.w,Y		; 59 E2 C6
	ora ($FC.b,X)		; 01 FC
	sei		; 78
	and $122F.w,X		; 3D 2F 12
	cmp ($10.b),Y		; D1 10
	and $CFB0.w,Y		; 39 B0 CF
	dey		; 88
	ora $14.b,X		; 15 14
	brk $10.b		; 00 10
	sbc $0FAEFB.l		; EF FB AE 0F
	tya		; 98
	sbc ($55.b,S),Y		; F3 55
	sbc $FDEC23.l		; EF 23 EC FD
	cmp $A811.w,X		; DD 11 A8
	ora $F042F4.l		; 0F F4 42 F0
	and $EF0EDC.l		; 2F DC 0E EF
	clv		; B8
	jsr $24F0.w		; 20 F0 24
	asl $FD01.w,X		; 1E 01 FD
	cpx #$B80F.w		; E0 0F B8
	ora ($1E.b),Y		; 11 1E
	ora ($4F.b,S),Y		; 13 4F
	sbc $10EE1E.l		; EF 1E EE 10
	clv		; B8
	ora ($10.b,X)		; 01 10
	sbc $41.b,S		; E3 41
	dec $EF2E.w,X		; DE 2E EF
	ora ($B8.b,X)		; 01 B8
	brk $2F.b		; 00 2F
	sbc $F2EE44.l,X		; FF 44 EE F2
	dec $B811.w,X		; DE 11 B8
	beq  18.b		; F0 12
	inc $3F04.w		; EE 04 3F
	cmp ($FF.b)		; D2 FF
	cmp ($B8.b),Y		; D1 B8
	bpl -29.b		; 10 E3
	ora $FE25D0.l,X		; 1F D0 25 FE
	ora ($ED.b,X)		; 01 ED
	clv		; B8
	ora ($FF.b)		; 12 FF
	ora ($0D.b)		; 12 0D
	beq  82.b		; F0 52
	cpx #$B8F0.w		; E0 F0 B8
	cmp $201F20.l,X		; DF 20 1F 20
	sbc $6100.w,X		; FD 00 61
	inc $1EB8.w,X		; FE B8 1E
	bne  19.b		; D0 13
	sep #$01		; E2 01
	dec $53F1.w,X		; DE F1 53
	tay		; A8
	xba		; EB
	ora $469F.w		; 0D 9F 46
	beq  78.b		; F0 4E
	dex		; CA
	ora $0D37B8.l		; 0F B8 37 0D
	sbc $2F23DE.l		; EF DE 23 2F
	and $0FC8ED.l		; 2F ED C8 0F
	ora ($3E.b,S),Y		; 13 3E
	cpx #$F3EF.w		; E0 EF F3
	and ($F0.b,X)		; 21 F0
	iny		; C8
	inc $10F0.w,X		; FE F0 10
	rts		; 60

	inc $F1EF.w		; EE EF F1
	.db $42, $C8		; 42 C8
	sbc $11D1FF.l,X		; FF FF D1 11
	asl $0C.b		; 06 0C
	dec $C81F.w,X		; DE 1F C8
	bit $1E.b,X		; 34 1E
	sbc $0003D1.l		; EF D1 03 00
	eor $02C8CC.l,X		; 5F CC C8 02
	cop $40.b		; 02 40
	cmp $03F0.w,X		; DD F0 03
	ora $3EC405.l,X		; 1F 05 C4 3E
	cmp $240F.w		; CD 0F 24
	and $12EFED.l,X		; 3F ED EF 12
	clv		; B8
	ldy $6A.b		; A4 6A
	bcc  65.b		; 90 41
	ora $0D.b		; 05 0D
	lda $21B821.l,X		; BF 21 B8 21
	cmp ($7C.b),Y		; D1 7C
	cmp $1321.w		; CD 21 13
	and $B4CF.w		; 2D CF B4
	sbc $74EF11.l		; EF 11 EF 74
	xce		; FB
	sbc $B453F2.l		; EF F2 53 B4
	cpx $01D0.w		; EC D0 01
	sbc $0D56.w,X		; FD 56 0D
	cpy #$B8F1.w		; C0 F1 B8
	and ($BE.b,X)		; 21 BE
	ora $1F.b,S		; 03 1F
	tsb $CB73.w		; 0C 73 CB
	cop $B8.b		; 02 B8
	cop $20.b		; 02 20
	xba		; EB
	ora ($1F.b,S),Y		; 13 1F
	ora $DB45.w		; 0D 45 DB
	bcs  15.b		; B0 0F
	inc $5114.w		; EE 14 51
	cmp $FCEF.w,X		; DD EF FC
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	eor $23F0DE.l		; 4F DE F0 23
	and $11CF.w		; 2D CF 11
	ora $C2B0.w		; 0D B0 C2
	mvn $EE,$1F		; 54 1F EE
	tsb $52.b		; 04 52
	cpx $B0DF.w		; EC DF B0
	sbc $54D3.w,X		; FD D3 54
	asl $15EE.w		; 0E EE 15
	adc ($DC.b,X)		; 61 DC
	clv		; B8
	and ($ED.b,X)		; 21 ED
	mvp $F2,$DC		; 44 DC F2
	bpl  49.b		; 10 31
	cpy $CFB4.w		; CC B4 CF
	ora ($0D.b)		; 12 0D
	mvp $D0,$1C		; 44 1C D0
	ora ($53.b,X)		; 01 53
	bcs  79.b		; B0 4F
	ldy $EDEF.w,X		; BC EF ED
	and $3F.b		; 25 3F
	inc $B8F1.w		; EE F1 B8
	rol $41BE.w		; 2E BE 41
	rol $2BF4.w		; 2E F4 2B
	cmp $12B841.l,X		; DF 41 B8 12
	xce		; FB
	cmp ($32.b)		; D2 32
	inc $BC25.w,X		; FE 25 BC
	sbc ($B8.b,S),Y		; F3 B8
	ora ($20.b)		; 12 20
	ldx $1012.w		; AE 12 10
	ora ($2C.b)		; 12 2C
	bcs -72.b		; B0 B8
	and ($32.b),Y		; 31 32
	stp		; DB
	sbc ($02.b)		; F2 02
	cop $5C.b		; 02 5C
	lda $22B8.w,X		; BD B8 22
	bit $FD.b		; 24 FD
	bcs  32.b		; B0 20
	jsr $BA52.w		; 20 52 BA
	clv		; B8
	sbc ($24.b)		; F2 24
	and $2101BD.l		; 2F BD 01 21
	rol $DA.b		; 26 DA
	clv		; B8
	cpy #$3224.w		; C0 24 32
	wai		; CB
	beq  19.b		; F0 13
	asl $2A.b		; 06 2A
	clv		; B8
	lda $FC5212.l		; AF 12 52 FC
	dec $2512.w,X		; DE 12 25
	bit $ADB8.w,X		; 3C B8 AD
	cop $43.b		; 02 43
	ora $E2CE.w,X		; 1D CE E2
	eor $3D.b		; 45 3D
	clv		; B8
	ldy $4401.w		; AC 01 44
	asl $F2CE.w		; 0E CE F2
	eor ($0D.b,S),Y		; 53 0D
	tay		; A8
	tyx		; BB
	dec $53.b		; C6 53
	sbc $77BD.w,X		; FD BD 77
	sbc $B8FF.w,X		; FD FF B8
	sbc ($01.b,X)		; E1 01
	ora $4FF31E.l		; 0F 1E F3 4F
	inc $B80F.w		; EE 0F B8
	cop $1F.b		; 02 1F
	asl $36EF.w,X		; 1E EF 36
	sbc $E0FF.w,X		; FD FF E0
	clv		; B8
	and ($F1.b),Y		; 31 F1
	sbc $EF4FE4.l		; EF E4 4F EF
	inc $B412.w,X		; FE 12 B4
	brk $1F.b		; 00 1F
	dec $2134.w,X		; DE 34 21
	ora $B400EE.l		; 0F EE 00 B4
	ora ($ED.b,X)		; 01 ED
	ora $41.b,S		; 03 41
	bpl -18.b		; 10 EE
	beq   0.b		; F0 00
	ldy $FC.b		; A4 FC
	pei ($74.b)		; D4 74
	and ($EB.b,X)		; 21 EB
	cmp $A8FFF0.l,X		; DF F0 FF A8
	ora ($1F.b,S),Y		; 13 1F
	sbc $00F0.w,X		; FD F0 00
	brk $13.b		; 00 13
	and $DEE0A8.l,X		; 3F A8 E0 DE
	ora ($FF.b),Y		; 11 FF
	bpl  37.b		; 10 25
	asl $A4FE.w		; 0E FE A4
	cpx $DDED.w		; EC ED DD
.ACCU 8
	sep #$65		; E2 65
	and ($1D.b)		; 32 1D
	dec $FFA8.w,X		; DE A8 FF
	bpl  98.b		; 10 62
	cpx #$F0ED.w		; E0 ED F0
	asl $A8F1.w,X		; 1E F1 A8
	adc $FF.b,S		; 63 FF
	jsr ($1FE1.w,X)		; FC E1 1F
	beq  53.b		; F0 35
	ora $D0FEA8.l		; 0F A8 FE D0
	ora $53F2.w,X		; 1D F2 53
	asl $D1FD.w,X		; 1E FD D1
	tay		; A8
	ora $F043F2.l		; 0F F2 43 F0
	sbc $0FE0.w,X		; FD E0 0F
	sbc ($A8.b)		; F2 A8
	.db $42, $01		; 42 01
	xce		; FB
	sbc ($0F.b,X)		; E1 0F
	sbc ($51.b)		; F2 51
	ora ($A8.b,X)		; 01 A8
	cpx $0EE1.w		; EC E1 0E
	ora $41.b,S		; 03 41
	bpl -36.b		; 10 DC
	sbc ($A8.b),Y		; F1 A8
	sbc $0F3213.l,X		; FF 13 32 0F
	cmp $E0F1.w,X		; DD F1 E0
	trb $A8.b		; 14 A8
	and ($0E.b),Y		; 31 0E
	dec $F00F.w,X		; DE 0F F0
	ora $20.b,X		; 15 20
	ora $F0EDA8.l		; 0F A8 ED F0
	sbc ($25.b,X)		; E1 25
	ora ($FE.b),Y		; 11 FE
	dec $980F.w,X		; DE 0F 98
	sbc ($67.b,S),Y		; F3 67
	bpl  -4.b		; 10 FC
	stz $F50D.w,X		; 9E 0D F5
	stz $98.b,X		; 74 98
	bmi -22.b		; 30 EA
	ldx $15DF.w,Y		; BE DF 15
	adc ($3F.b,S),Y		; 73 3F
	nop		; EA
	tya		; 98
	dec $26DF.w		; CE DF 26
	eor ($20.b)		; 52 20
	xba		; EB
	cmp $98D0.w,X		; DD D0 98
	and $43.b		; 25 43
	cop $EB.b		; 02 EB
	xba		; EB
	sbc ($24.b,X)		; E1 24
	and ($98.b,S),Y		; 33 98
	jsr $EBDE.w		; 20 DE EB
	cpx #$4223.w		; E0 23 42
	ora ($ED.b)		; 12 ED
	tya		; 98
	cpx $05E0.w		; EC E0 05
	jsl $FCFC21.l		; 22 21 FC FC
	sbc ($98.b,X)		; E1 98
	ora ($32.b)		; 12 32
	ora ($FE.b),Y		; 11 FE
	cpx $12E1.w		; EC E1 12
	jsl $E03098.l		; 22 98 30 E0
	cmp $02E2.w		; CD E2 02
	bmi  48.b		; 30 30
	sbc $F2DD98.l,X		; FF 98 DD F2
	sbc ($21.b)		; F2 21
	ora ($EE.b,S),Y		; 13 EE
	jsr ($98F1.w,X)		; FC F1 98
	cop $20.b		; 02 20
	and ($FE.b),Y		; 31 FE
	phd		; 0B
	sbc ($F2.b),Y		; F1 F2
	jsl $FD2388.l		; 22 88 23 FD
	sbc #$CF.b		; E9 CF
	bit $23.b		; 24 23
	.db $42, $0D		; 42 0D
	dey		; 88
	nop		; EA
	lda $064341.l		; AF 41 43 06
	ora $91E9.w,X		; 1D E9 91
	tya		; 98
	bpl  49.b		; 10 31
	ora ($2E.b),Y		; 11 2E
	sbc $1220CE.l,X		; FF CE 20 12
	dey		; 88
	.db $42, $3F		; 42 3F
	cmp $00AD.w		; CD AD 00
	mvp $3F,$41		; 44 41 3F
	dey		; 88
	dec $02BB.w,X		; DE BB 02
	ora $31.b		; 05 31
	eor ($DE.b,X)		; 41 DE
	tyx		; BB
	dey		; 88
	sbc ($23.b),Y		; F1 23
	and ($02.b,S),Y		; 33 02
	ora $D2DB.w		; 0D DB D2
	ora ($78.b,S),Y		; 13 78
	.db $62, $20, $2D		; 62 20 2D
	ldy $32CE.w,X		; BC CE 32
	bit $00.b,X		; 34 00
	sei		; 78
	and $02BFEE.l,X		; 3F EE BF 02
	ora ($10.b),Y		; 11 10
	ora $2D.b,S		; 03 2D
	sei		; 78
	sbc $400FD1.l		; EF D1 0F 40
	cpy $3F.b		; C4 3F
	asl $74DF.w		; 0E DF 74
	sbc $F1DE.w,X		; FD DE F1
	trb $63.b		; 14 63
	beq -35.b		; F0 DD
	sbc $2F68.w,X		; FD 68 2F
	ror $0E60.w		; 6E 60 0E
	ldx #$0FA1.w		; A2 A1 0F
	rti		; 40

	adc #$5D.b		; 69 5D
	eor ($DB.b),Y		; 51 DB
	cpx $EC.b		; E4 EC
	ora ($10.b,X)		; 01 10
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	eor [$D0.b]		; 47 D0
	eor [$19.b]		; 47 19
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	ora ($10.b,X)		; 01 10
	ora ($C1.b,X)		; 01 C1
	bmi   0.b		; 30 00
	brk $01.b		; 00 01
	tsb $02.b		; 04 02
	sbc $674446.l,X		; FF 46 44 67
	bvc  20.b		; 50 14
	stz $18.b		; 64 18
	bpl  19.b		; 10 13
	bpl  34.b		; 10 22
	eor ($E3.b)		; 52 E3
	ldy $4F.b		; A4 4F
	cli		; 58
	brk $1F.b		; 00 1F
	bpl -15.b		; 10 F1
	brk $00.b		; 00 00
	ora $318036.l,X		; 1F 36 80 31
	cmp ($4D.b,X)		; C1 4D
	sbc $1E.b		; E5 1E
	ora ($E0.b)		; 12 E0
	asl $2584.w		; 0E 84 25
	jmp.w [$FC33]		; DC 33 FC
	sbc ($02.b),Y		; F1 02
	inc $A400.w,X		; FE 00 A4
	bpl  -1.b		; 10 FF
	and ($EE.b),Y		; 31 EE
	and ($EC.b,S),Y		; 33 EC
	sbc ($0F.b)		; F2 0F
	sty $10.b		; 84 10
	asl $61.b,X		; 16 61
	asl A		; 0A
	ldy #$EF31.w		; A0 31 EF
	bmi -120.b		; 30 88
	sbc ($EE.b)		; F2 EE
	jsr $DF6E.w		; 20 6E DF
	bpl  29.b		; 10 1D
	cmp ($80.b,S),Y		; D3 80
	cmp ($43.b)		; D2 43
	and ($13.b,S),Y		; 33 13
	and ($D0.b),Y		; 31 D0
	ora ($00.b),Y		; 11 00
	stz $4B.b,X		; 74 4B
	ora ($0F.b,S),Y		; 13 0F
	eor [$FE.b],Y		; 57 FE
	asl $0EBE.w,X		; 1E BE 0E
	tya		; 98
	sbc ($1E.b),Y		; F1 1E
	ora ($EF.b,X)		; 01 EF
	bit $E1.b		; 24 E1
	jmp $0EA8D0.l		; 5C D0 A8 0E
	and $012F1F.l		; 2F 1F 2F 01
	inc $75E0.w,X		; FE E0 75
	tay		; A8
	cmp $F2EE.w,X		; DD EE F2
	ora ($01.b,X)		; 01 01
	beq  16.b		; F0 10
	xce		; FB
	clv		; B8
	sbc ($43.b,S),Y		; F3 43
	cpy $0100.w		; CC 00 01
	bpl -15.b		; 10 F1
	brk $B8.b		; 00 B8
	brk $0E.b		; 00 0E
	ora $BF1F24.l		; 0F 24 1F BF
	ora ($F0.b)		; 12 F0
	ldy $11.b		; A4 11
	sbc $E11EF0.l,X		; FF F0 1E E1
	eor $64.b,S		; 43 64
	stp		; DB
	tay		; A8
	jsl $1D13F0.l		; 22 F0 13 1D
	cpx $0C.b		; E4 0C
	lda ($5F.b,S),Y		; B3 5F
	clv		; B8
	and ($FC.b,X)		; 21 FC
	cop $E2.b		; 02 E2
	ora $0E2F01.l		; 0F 01 2F 0E
	clv		; B8
	sbc $210221.l,X		; FF 21 02 21
	plb		; AB
	and ($1E.b,S),Y		; 33 1E
	ora $B8.b,S		; 03 B8
	ora $1EF1.w,X		; 1D F1 1E
	cpx #$0024.w		; E0 24 00
	sbc $B8F0.w,X		; FD F0 B8
	ora ($2F.b),Y		; 11 2F
	sbc $E01C03.l,X		; FF 03 1C E0
	and $5EB456.l		; 2F 56 B4 5E
	ldy $22E1.w,X		; BC E1 22
	brk $FE.b		; 00 FE
	ora ($1D.b)		; 12 1D
	clv		; B8
	cmp ($53.b,S),Y		; D3 53
	asl $04BB.w,X		; 1E BB 04
	lsr $FF03.w		; 4E 03 FF
	cpy $F0.b		; C4 F0
	brk $0F.b		; 00 0F
	sbc $50F400.l		; EF 00 F4 50
	inc $EFC4.w		; EE C4 EF
	cop $11.b		; 02 11
	sbc $FD0000.l,X		; FF 00 00 FD
	pea $2BC8.w		; F4 C8 2B
	cmp ($11.b,X)		; C1 11
	bpl   0.b		; 10 00
	sbc $C40020.l,X		; FF 20 00 C4
	inc $10F0.w,X		; FE F0 10
	cpx #$ED45.w		; E0 45 ED
	sbc $01B801.l		; EF 01 B8 01
	sbc $CD42D1.l		; EF D1 42 CD
	sbc ($00.b,S),Y		; F3 00
	stz $B4.b,X		; 74 B4
	ora $D2BB.w,X		; 1D BB D2
	and $31.b,S		; 23 31
	jsr ($10F2.w,X)		; FC F2 10
	iny		; C8
	sbc $9F6120.l		; EF 20 61 9F
	brk $03.b		; 00 03
	brk $E2.b		; 00 E2
	clv		; B8
	sbc ($F0.b,X)		; E1 F0
	asl $2100.w		; 0E 00 21
	inc $F946.w		; EE 46 F9
	clv		; B8
	sbc $4103.w,X		; FD 03 41
	beq -17.b		; F0 EF
	sbc ($00.b)		; F2 00
	ora $23E2A8.l		; 0F A8 E2 23
	and ($BC.b),Y		; 31 BC
	cmp $D03D26.l,X		; DF 26 3D D0
	ldy #$0200.w		; A0 00 02
	and ($1F.b)		; 32 1F
	wai		; CB
	ldy $C5BA.w,X		; BC BA C5
	ldy $4F.b,X		; B4 4F
	inc $11FF.w		; EE FF 11
	bpl  -1.b		; 10 FF
	sbc ($10.b),Y		; F1 10
	tay		; A8
	dec $5D26.w,X		; DE 26 5D
	sta $1E21F1.l,X		; 9F F1 21 1E
	ora ($98.b)		; 12 98
	and $52D0CC.l		; 2F CC D0 52
	jsl $F102CD.l		; 22 CD 02 F1
	tay		; A8
	sbc $1F52F0.l,X		; FF F0 52 1F
	cmp $22E0.w,X		; DD E0 22
	jsr $6D84.w		; 20 84 6D
	dec $13ED.w		; CE ED 13
	and $0B.b,S		; 23 0B
	cpy #$982C.w		; C0 2C 98
	sbc $1E1332.l,X		; FF 32 13 1E
	stp		; DB
	sbc ($31.b),Y		; F1 31
	asl $3188.w,X		; 1E 88 31
	eor $F1A0.w		; 4D A0 F1
	ora $015300.l,X		; 1F 00 53 01
	dey		; 88
	cmp $34E1DC.l,X		; DF DC E1 34
	rol $DDE1.w,X		; 3E E1 DD
	and ($88.b),Y		; 31 88
	ora $EC.b,S		; 03 EC
	brk $21.b		; 00 21
	and ($10.b,X)		; 21 10
	dec $881E.w,X		; DE 1E 88
	sbc ($F0.b,S),Y		; F3 F0
	and $E221.w		; 2D 21 E2
	asl $F0FF.w,X		; 1E FF F0
	dey		; 88
	cop $02.b		; 02 02
	cop $1F.b		; 02 1F
	cmp $1210F0.l		; CF F0 10 12
	sty $21.b		; 84 21
	brk $0E.b		; 00 0E
	dec $12D0.w,X		; DE D0 12
	sbc $037801.l		; EF 01 78 03
	bne -62.b		; D0 C2
	sbc ($5D.b)		; F2 5D
	sbc $7426ED.l,X		; FF ED 26 74
	tsb $00.b		; 04 00
	cpy $13CE.w		; CC CE 13
	ora $78F3FD.l		; 0F FD F3 78
	ora ($DE.b),Y		; 11 DE
	ldy #$2025.w		; A0 25 20
	inc A		; 1A
	brk $23.b		; 00 23
	sei		; 78
	sbc $42F2EE.l		; EF EE F2 42
	beq -34.b		; F0 DE
	lsr $640C.w		; 4E 0C 64
	phx		; DA
	cmp $46.b		; C5 46
	dec $05EF.w,X		; DE EF 05
	bit $78BA.w		; 2C BA 78
	ora $E0.b,X		; 15 E0
	sbc ($0F.b),Y		; F1 0F
	sbc $22401B.l,X		; FF 1B 40 22
	pla		; 68
	lda ($CE.b,S),Y		; B3 CE
	sbc ($00.b)		; F2 00
	brk $0F.b		; 00 0F
	eor $5E68AB.l,X		; 5F AB 68 5E
	ror $EC.b		; 66 EC
	cmp $FE3EE2.l,X		; DF E2 3E FE
	ora $78.b,S		; 03 78
	and ($0C.b,X)		; 21 0C
	tsb $0240.w		; 0C 40 02
	ora $540EFF.l,X		; 1F FF 0E 54
	eor $02D1.w,Y		; 59 D1 02
	trb $2F.b		; 14 2F
	dex		; CA
	sbc ($42.b,S),Y		; F3 42
	mvn $ED,$11		; 54 11 ED
	ora $050FBE.l		; 0F BE 0F 05
	eor $1B.b,S		; 43 1B
	stz $BC.b		; 64 BC
	cop $4F.b		; 02 4F
	and ($10.b)		; 32 10
	sbc $E1DD.w		; ED DD E1
	stz $70.b		; 64 70
	dec A		; 3A
	ora $1E0B10.l		; 0F 10 0B 1E
	tsb $5821.w		; 0C 21 58
	sbc $D11E1F.l,X		; FF 1F 1E D1
	dec $3E06.w,X		; DE 06 3E
	asl $BE48.w		; 0E 48 BE
	jsr $15BF.w		; 20 BF 15
	lsr $CFDE.w,X		; 5E DE CF
	ora ($64.b)		; 12 64
	brk $10.b		; 00 10
	inc $4FFF.w,X		; FE FF 4F
	and $580FF0.l		; 2F F0 0F 58
	and ($BE.b,X)		; 21 BE
	and ($11.b,S),Y		; 33 11
	tsb $F1D1.w		; 0C D1 F1
	.db $42, $64		; 42 64
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora ($22.b,X)		; 01 22
	phd		; 0B
	ora $F164.w,X		; 1D 64 F1
	bpl  15.b		; 10 0F
	sbc $FF1F4E.l,X		; FF 4E 1F FF
	sbc ($64.b),Y		; F1 64
	ora ($5D.b,X)		; 01 5D
	plx		; FA
	bpl  18.b		; 10 12
	ora $480FFF.l,X		; 1F FF 0F 48
	lsr $F0F1.w		; 4E F1 F0
	tas		; 1B
	cmp ($F5.b,S),Y		; D3 F5
	asl A		; 0A
	ora $48.b,S		; 03 48
	bne  27.b		; D0 1B
	bne  21.b		; D0 15
	and $A0EF.w		; 2D EF A0
	and $64.b,X		; 35 64
	ora $E104FE.l,X		; 1F FE 04 E1
	ora $0E01EF.l		; 0F EF 01 0E
	stz $0F.b		; 64 0F
	ora ($10.b,X)		; 01 10
	brk $FF.b		; 00 FF
	sbc ($E0.b,S),Y		; F3 E0
	bpl  68.b		; 10 44
	sbc $DC0E01.l		; EF 01 0E DC
	sbc ($33.b),Y		; F1 33
	jmp.w [$48D1]		; DC D1 48
	bne  18.b		; D0 12
	inc $CEF1.w,X		; FE F1 CE
	bit $3D.b		; 24 3D
	cpy $AB50.w		; CC 50 AB
	cmp $CCFD1A.l,X		; DF 1A FD CC
	sbc ($0F.b),Y		; F1 0F
	stp		; DB
	stz $B6.b		; 64 B6
	sbc ($10.b,X)		; E1 10
	sbc $0010F0.l,X		; FF F0 10 00
	sbc $3FE344.l,X		; FF 44 E3 3F
	sbc $FCE0.w,X		; FD E0 FC
	sbc ($33.b)		; F2 33
	ldx $F364.w		; AE 64 F3
	cmp ($0F.b),Y		; D1 0F
	sbc $0F113D.l,X		; FF 3D 11 0F
	beq 100.b		; F0 64
	beq   0.b		; F0 00
	ora $E0B403.l		; 0F 03 B4 E0
	ora $0E6401.l		; 0F 01 64 0E
	brk $11.b		; 00 11
	cmp $0B0021.l		; CF 21 00 0B
	bmi  68.b		; 30 44
	sbc ($FB.b)		; F2 FB
	bmi -81.b		; 30 AF
	and ($30.b),Y		; 31 30
	cmp $54E0.w,X		; DD E0 54
	asl $02F0.w,X		; 1E F0 02
	jsr $40C0.w		; 20 C0 40
	dec $5001.w,X		; DE 01 50
	jmp.w [$DDCE]		; DC CE DD
	sbc $CDDE.w		; ED DE CD
	cpy $6024.w		; CC 24 60
	brk $0E.b		; 00 0E
	bne  -2.b		; D0 FE
	beq  32.b		; F0 20
	cpy #$74FE.w		; C0 FE 74
	jsr $F4FE.w		; 20 FE F4
	asl $3FEF.w		; 0E EF 3F
	ora ($F1.b)		; 12 F1
	sei		; 78
	tsb $C0.b		; 04 C0
	sbc $200E02.l,X		; FF 02 0E 20
	cpx #$840D.w		; E0 0D 84
	sbc $14DD.w,X		; FD DD 14
	and $55.b,S		; 23 55
	and $2E.b,X		; 35 2E
	cpx $1E78.w		; EC 78 1E
	stz $50.b		; 64 50
	sbc $A0BF.w,X		; FD BF A0
	and #$C7.b		; 29 C7
	sty $45.b,X		; 94 45
	and $54.b,X		; 35 54
	and ($EC.b,X)		; 21 EC
	cpy $03BF.w		; CC BF 03
	ldy $23.b		; A4 23
	bpl  14.b		; 10 0E
	cmp $43E0DD.l,X		; DF DD E0 43
	bit $98.b,X		; 34 98
	inc $B1EF.w		; EE EF B1
	ora $4B3233.l		; 0F 33 32 4B
	bne -88.b		; D0 A8
	sbc $24000F.l		; EF 0F 00 24
	rol $EE10.w		; 2E 10 EE
	ora $F398.w		; 0D 98 F3
	pei ($44.b)		; D4 44
	asl $DA.b,X		; 16 DA
	sbc $0DC1.w		; ED C1 0D
	tay		; A8
	ora ($35.b),Y		; 11 35
	sbc ($0D.b,X)		; E1 0D
	cpx #$10DF.w		; E0 DF 10
	tsb $A8.b		; 04 A8
	ora ($11.b)		; 12 11
	cmp $F000EE.l		; CF EE 00 F0
	jsl $F2A87E.l		; 22 7E A8 F2
	cmp $0FD2EF.l		; CF EF D2 0F
	eor ($22.b),Y		; 51 22
	tsb $FEA8.w		; 0C A8 FE
	cpx #$020F.w		; E0 0F 02
	rol $0E.b		; 26 0E
	and $A8D0.w		; 2D D0 A8
	dec $0411.w,X		; DE 11 04
	and ($21.b,X)		; 21 21
	ldx $010C.w,Y		; BE 0C 01
	tay		; A8
	sbc ($21.b),Y		; F1 21
	adc ($D2.b,X)		; 61 D2
	jmp.w [$E10E]		; DC 0E E1
	and $0252A8.l		; 2F A8 52 02
	ora $D0C0.w		; 0D C0 D0
	rol $1621.w		; 2E 21 16
	tay		; A8
	bit $B11E.w		; 2C 1E B1
	inc $0213.w		; EE 13 02
	rti		; 40

	brk $A8.b		; 00 A8
	cmp $F2FF.w,X		; DD FF F2
	sbc ($20.b),Y		; F1 20
	adc ($B2.b),Y		; 71 B2
	cmp $00A8.w		; CD A8 00
	cmp ($20.b)		; D2 20
	.db $42, $F1		; 42 F1
	phd		; 0B
	sbc $10A8E1.l,X		; FF E1 A8 10
	bpl  38.b		; 10 26
	phd		; 0B
	bit $0DC1.w,X		; 3C C1 0D
	and ($A8.b)		; 32 A8
	pea $103D.w		; F4 3D 10
	dec $020F.w		; CE 0F 02
	sbc ($11.b),Y		; F1 11
	tay		; A8
	adc $0FCEC2.l		; 6F C2 CE 0F
	sbc ($10.b,S),Y		; F3 10
	and ($F0.b)		; 32 F0
	tay		; A8
	jsr ($F1F0.w,X)		; FC F0 F1
	ora $CE3511.l,X		; 1F 11 35 CE
	pld		; 2B
	tay		; A8
	beq  -1.b		; F0 FF
	rti		; 40

	trb $F0.b		; 14 F0
	sbc $A80FDF.l,X		; FF DF 0F A8
	and $3A0511.l		; 2F 11 05 3A
	rol $FEB2.w		; 2E B2 FE
	jsl $2F03A8.l		; 22 A8 03 2F
	brk $CE.b		; 00 CE
	asl $F221.w		; 0E 21 F2
	inc $A8.b,X		; F6 A8
	eor #$4C.b		; 49 4C
	cpy #$32FE.w		; C0 FE 32
	ora $3F.b,S		; 03 3F
	sbc ($B8.b),Y		; F1 B8
	bne  -1.b		; D0 FF
	ora ($00.b),Y		; 11 00
	ora ($1C.b,S),Y		; 13 1C
	and $A8E1.w,X		; 3D E1 A8
	sbc $0542.w		; ED 42 05
	ora $E0BF1E.l,X		; 1F 1E BF E0
	ora ($B8.b),Y		; 11 B8
	ora ($15.b,X)		; 01 15
	cpy #$1F1C.w		; C0 1C 1F
	sbc ($11.b,X)		; E1 11
	ora ($B8.b)		; 12 B8
	brk $0E.b		; 00 0E
	cpx #$F1E2.w		; E0 E2 F1
	cop $4F.b		; 02 4F
.ACCU 8
	sep #$A4		; E2 A4
	inc $9DDA.w		; EE DA 9D
	bne  86.b		; D0 56
	ror $1E.b		; 66 1E
	dex		; CA
	clv		; B8
	ora ($F1.b,X)		; 01 F1
	and $D0.b		; 25 D0
	tas		; 1B
	ora $B42FE1.l,X		; 1F E1 2F B4
	ora $24.b,S		; 03 24
	bmi  -3.b		; 30 FD
	dec $E4DE.w,X		; DE DE E4
	eor $B8.b,S		; 43 B8
	bit $EFF0.w		; 2C F0 EF
	jsr $F204.w		; 20 04 F2
	ora $B8F0.w		; 0D F0 B8
	cpx #$041F.w		; E0 1F 04
	and $C23E.w,X		; 3D 3E C2
	cmp $02B820.l,X		; DF 20 B8 02
	jsr $E01E.w		; 20 1E E0
	sbc ($F0.b,X)		; E1 F0
	tsb $3C.b		; 04 3C
	ldy $53.b,X		; B4 53
	beq -20.b		; F0 EC
	inc $33E0.w		; EE E0 33
	and ($0E.b)		; 32 0E
	clv		; B8
	ora $1E05F0.l,X		; 1F F0 05 1E
	jmp $EEF0.w		; 4C F0 EE
	rol $E1B4.w,X		; 3E B4 E1
	and $32.b,S		; 23 32
	sbc $F4ECEE.l,X		; FF EE EC F4
	trb $A8.b		; 14 A8
	xce		; FB
	ora $2DB2.w,X		; 1D B2 2D
	eor $13.b,S		; 43 13
	sbc $B4D0.w		; ED D0 B4
	sbc $22EE.w,X		; FD EE 22
	bit $11.b		; 24 11
	asl $DFDF.w		; 0E DF DF
	ldy $11.b,X		; B4 11
	and ($1F.b)		; 32 1F
	inc $E2EE.w,X		; FE EE E2
	and ($51.b,X)		; 21 51
	ldy $11.b		; A4 11
	dex		; CA
	xba		; EB
	sbc ($35.b,X)		; E1 35
	.db $42, $EE		; 42 EE
	jmp.w [$DEB4]		; DC B4 DE
	jsl $1E1124.l		; 22 24 11 1E
	dec $12EE.w,X		; DE EE 12
	ldy $22.b,X		; B4 22
	bpl  -2.b		; 10 FE
	sbc $03E3.w		; ED E3 03
	eor ($20.b,X)		; 41 20
	ldy $BC.b		; A4 BC
	dex		; CA
	sbc ($35.b,X)		; E1 35
	eor ($FE.b),Y		; 51 FE
	cpy $B891.w		; CC 91 B8
	ora $EF003E.l,X		; 1F 3E 00 EF
	brk $F2.b		; 00 F2
	jsr $A41F.w		; 20 1F A4
	ora $4FBDEC.l		; 0F EC BD 4F
	eor $24.b,X		; 55 24
	ora $A4EC.w,X		; 1D EC A4
	ldx $4302.w,Y		; BE 02 43
	ora $2FBFED.l,X		; 1F ED BF 2F
	adc $A8.b,S		; 63 A8
	cop $BF.b		; 02 BF
	ora $0313.w		; 0D 13 03
	rol $FEEF.w		; 2E EF FE
	ldy $B1.b		; A4 B1
	ora $0E3563.l		; 0F 63 35 0E
	plx		; FA
	dec $A4F2.w		; CE F2 A4
	eor $00.b,S		; 43 00
	sbc $E0B2.w,X		; FD B2 E0
	eor ($45.b),Y		; 51 45
	beq -92.b		; F0 A4
	xce		; FB
	cmp $31F2.w,X		; DD F2 31
	ora $C4F2FD.l,X		; 1F FD F2 C4
	tay		; A8
	sbc $DFE13E.l		; EF 3E E1 DF
	jsr $FE22.w		; 20 22 FE
	asl $EDA4.w,X		; 1E A4 ED
	and $400304.l		; 2F 04 03 40
	ora $A4FFCD.l		; 0F CD FF A4
	jsl $D1FF00.l		; 22 00 FF D1
	ora $2441.w,X		; 1D 41 24
	bpl -108.b		; 10 94
	ora $D19D.w,Y		; 19 9D D1
	eor ($0F.b,X)		; 41 0F
	xba		; EB
	jsl $D1A8A7.l		; 22 A7 A8 D1
	rol $C100.w		; 2E 00 C1
	brk $30.b		; 00 30
	beq  15.b		; F0 0F
	ldy $E2.b		; A4 E2
	asl $143F.w,X		; 1E 3F 14
	cop $1E.b		; 02 1E
	inc $A4E1.w		; EE E1 A4
	beq  -2.b		; F0 FE
	beq  79.b		; F0 4F
	ora ($F2.b)		; 12 F2
	jsr $942F.w		; 20 2F 94
	cmp $FD1FBF.l		; CF BF 1F FD
	lda $1741.w,X		; BD 41 17
	sbc $94.b,X		; F5 94
	eor ($30.b),Y		; 51 30
	ldx $10CC.w		; AE CC 10
	ora $943FCC.l		; 0F CC 3F 94
	inc $E6.b,X		; F6 E6
	adc $43.b,S		; 63 43
	lda $FFCA.w,X		; BD CA FF
	brk $94.b		; 00 94
	dec $E420.w,X		; DE 20 E4
	sbc $54.b,S		; E3 54
	eor $EE.b		; 45 EE
	phx		; DA
	sty $EB.b		; 84 EB
	dec $35FE.w,X		; DE FE 35
	lda ($ED.b)		; B2 ED
	stz $56.b		; 64 56
	sty $7D.b		; 84 7D
	ora $F0AF.w		; 0D AF F0
	ora ($0E.b,X)		; 01 0E
	jsr ($88AD.w,X)		; FC AD 88
	cpx $32.b		; E4 32
	ora $1D000D.l		; 0F 0D 00 1D
	eor $A088E2.l		; 4F E2 88 A0
	rol $0203.w		; 2E 03 02
	bvc -17.b		; 50 EF
	ora $883D.w,X		; 1D 3D 88
	ora ($0F.b,X)		; 01 0F
	dec $2FE1.w,X		; DE E1 2F
	ora ($42.b)		; 12 42
	jmp $F288.w		; 4C 88 F2
	cmp $EC010F.l		; CF 0F 01 EC
	asl $F022.w,X		; 1E 22 F0
	dey		; 88
	bit $32.b		; 24 32
	sbc $FFD1FF.l		; EF FF D1 FF
	ora $88EF.w		; 0D EF 88
	and ($2E.b),Y		; 31 2E
	ora ($34.b,S),Y		; 13 34
	sbc $0EFE0E.l		; EF 0E FE 0E
	dey		; 88
	ora $05FD.w,X		; 1D FD 05
	ora ($13.b,X)		; 01 13
	and ($1E.b)		; 32 1E
	sbc $0EEE88.l		; EF 88 EE 0E
	ora $22FE.w,X		; 1D FE 22
	ora $04.b,S		; 03 04
	and ($88.b)		; 32 88
	tas		; 1B
	trb $FE0E.w		; 1C 0E FE
	asl $32E0.w		; 0E E0 32
	cop $88.b		; 02 88
	trb $4F.b		; 14 4F
	ora $D0FF.w		; 0D FF D0
	sbc $88E1FE.l		; EF FE E1 88
	rti		; 40

	tsb $24.b		; 04 24
	jsr $EDDF.w		; 20 DF ED
	asl $88EF.w,X		; 1E EF 88
	inc $12F3.w,X		; FE F3 12
	ora ($54.b),Y		; 11 54
	ora $88EFEE.l		; 0F EE EF 88
	sbc $41FDEF.l		; EF EF FD 41
	ora ($24.b),Y		; 11 24
	and ($0D.b)		; 32 0D
	dey		; 88
	tsb $D00F.w		; 0C 0F D0
	dec $41F0.w,X		; DE F0 41
	ora ($33.b)		; 12 33
	dey		; 88
	and ($C0.b),Y		; 31 C0
	cpy #$EE0E.w		; C0 0E EE
	inc $20F4.w		; EE F4 20
	dey		; 88
	and ($43.b)		; 32 43
	asl $D2DF.w,X		; 1E DF D2
	cpy #$D0DF.w		; C0 DF D0
	dey		; 88
	and $02.b,S		; 23 02
	asl $31.b,X		; 16 31
	phd		; 0B
	sbc $88FDEF.l,X		; FF EF FD 88
	tsb $03F4.w		; 0C F4 03
	ora $43.b,S		; 03 43
	and $88E1DC.l,X		; 3F DC E1 88
	inc $E0EE.w		; EE EE E0
	and ($01.b)		; 32 01
	bit $24.b,X		; 34 24
	jsr ($DF88.w,X)		; FC 88 DF
	sbc $3FDE0D.l		; EF 0D DE 3F
	bvc  19.b		; 50 13
	and $98.b,S		; 23 98
	and $0ED0E0.l		; 2F E0 D0 0E
	asl $E3E4.w,X		; 1E E4 E3
	brk $88.b		; 00 88
	eor $07.b,S		; 43 07
	sta $B001EB.l,X		; 9F EB 01 B0
	ldy $22.b,X		; B4 22
	dey		; 88
	and ($F7.b),Y		; 31 F7
	sbc ($1B.b,S),Y		; F3 1B
	sbc $CFD2.w		; ED D2 CF
	cmp $5F4D98.l,X		; DF 98 4D 5F
	ora $1F.b,S		; 03 1F
	phk		; 4B
	ora $980DD1.l		; 0F D1 0D 98
	ora $4F4F.w,X		; 1D 4F 4F
	cop $2F.b		; 02 2F
	jmp $D0F0.w		; 4C F0 D0
	tya		; 98
	ora $321D.w		; 0D 1D 32
	pea $30E1.w		; F4 E1 30
	ora ($B2.b),Y		; 11 B2
	tya		; 98
	lda ($0F.b),Y		; B1 0F
	sbc $D0B7E7.l,X		; FF E7 B7 D0
	rti		; 40

	inc $A4.b,X		; F6 A4
	ora ($FF.b)		; 12 FF
	inc $C0ED.w,X		; FE ED C0
	cmp ($10.b),Y		; D1 10
	jsl $B01498.l		; 22 98 14 B0
	sbc $F12E.w		; ED 2E F1
	cmp ($2F.b)		; D2 2F
	rtl		; 6B

	tya		; 98
	and ($F4.b)		; 32 F4
	sbc $3E29.w		; ED 29 3E
	brk $D1.b		; 00 D1
	phy		; 5A
	ldy $20.b		; A4 20
	ora ($23.b)		; 12 23
	eor ($2F.b,X)		; 41 2F
	sbc $98DDEE.l,X		; FF EE DD 98
	lsr $F54F.w		; 4E 4F F5
	cmp $0E.b		; C5 0E
	ora $F1FF.w		; 0D FF F1
	tya		; 98
	sbc $C5134F.l		; EF 4F 13 C5
.ACCU 8
	sep #$2F		; E2 2F
	tsb $98F0.w		; 0C F0 98
	beq -31.b		; F0 E1
	ora $B6.b		; 05 B6
	lda ($2F.b)		; B2 2F
	eor $1E940D.l		; 4F 0D 94 1E
	sbc $DFDC.w		; ED DC DF
	ora $222D.w		; 0D 2D 22
	and $94.b		; 25 94
	bit $10.b,X		; 34 10
	inc $EEFD.w,X		; FE FD EE
	cmp ($D1.b),Y		; D1 D1
	cpx #$2F98.w		; E0 98 2F
	rol $0F1E.w,X		; 3E 1E 0F
	sbc ($F0.b),Y		; F1 F0
	asl $944D.w,X		; 1E 4D 94
	beq -60.b		; F0 C4
	pea $4F31.w		; F4 31 4F
	ora $94EFFF.l,X		; 1F FF EF 94
	sbc $F2FF1E.l		; EF 1E FF F2
	tsb $12.b		; 04 12
	and $1C841E.l,X		; 3F 1E 84 1C
	sbc $E10DD0.l		; EF D0 0D E1
	lda $F4.b,X		; B5 F4
	eor ($84.b,X)		; 41 84
	ror $EF2E.w		; 6E 2E EF
	sbc $C2D3E1.l,X		; FF E1 D3 C2
	dec $CA80.w,X		; DE 80 CA
	cop $55.b		; 02 55
	eor $32.b,X		; 55 32
	ora ($12.b),Y		; 11 12
	jsr $3D88.w		; 20 88 3D
	ora $C2E413.l		; 0F 13 E4 C2
	cpx #$F110.w		; E0 10 F1
	stz $F0.b,X		; 74 F0
	.db $42, $DE		; 42 DE
	bne -33.b		; D0 DF
	inc $D2F2.w,X		; FE F2 D2
	stz $D3.b,X		; 74 D3
	bmi  17.b		; 30 11
	jsr $5C02.w		; 20 02 5C
	ora ($FF.b)		; 12 FF
	sei		; 78
	sbc $305E.w		; ED 5E 30
	sbc ($0F.b,X)		; E1 0F
	and ($D0.b),Y		; 31 D0
	rol $1074.w		; 2E 74 10
	inc $0DF0.w,X		; FE F0 0D
	beq -32.b		; F0 E0
	lsr $6403.w,X		; 5E 03 64
	cmp [$FF.b],Y		; D7 FF
	asl $EE0E.w,X		; 1E 0E EE
	sbc $60EF5E.l		; EF 5E EF 60
	and ($76.b),Y		; 31 76
	adc $55.b		; 65 55
	eor ($55.b),Y		; 51 55
	xba		; EB
	eor $F1D174.l		; 4F 74 D1 F1
	jsr $4E01.w		; 20 01 4E
	cmp ($F1.b)		; D2 F1
	sbc $32EE60.l,X		; FF 60 EE 32
	ora $20.b,S		; 03 20
	trb $31.b		; 14 31
	cop $32.b		; 02 32
	bvc -68.b		; 50 BC
	lda $76FFEF.l,X		; BF EF FF 76
	rts		; 60

	and $43.b,S		; 23 43
	rts		; 60

	dec $DEDE.w,X		; DE DE DE
	jmp.w [$10E0]		; DC E0 10
	ora $2D6002.l		; 0F 02 60 2D
	sbc $CDEE0F.l,X		; FF 0F EE CD
	sbc $48F00F.l,X		; FF 0F F0 48
	lda ($EF.b),Y		; B1 EF
	lsr $E01F.w		; 4E 1F E0
	sbc ($01.b)		; F2 01
	lsr $1250.w		; 4E 50 12
	and ($AF.b,X)		; 21 AF
	cpx $BDCC.w		; EC CC BD
	lda $44DB.w,X		; BD DB 44
	and ($34.b,X)		; 21 34
	ora $30.b,S		; 03 30
	cpy $F0DE.w		; CC DE F0
	ora ($64.b)		; 12 64
	ora ($FD.b,X)		; 01 FD
	bmi   0.b		; 30 00
	bpl  16.b		; 10 10
	beq -16.b		; F0 F0
	pha		; 48
	jsr $13FF.w		; 20 FF 13
	bne  14.b		; D0 0E
	eor $F14E.w		; 4D 4E F1
	bit $C2.b,X		; 34 C2
	ora ($40.b),Y		; 11 40
	eor $2E.b,X		; 55 2E
	rol $DD01.w,X		; 3E 01 DD
	pha		; 48
	sbc $2F.b,S		; E3 2F
	asl $F44F.w		; 0E 4F F4
	cmp ($0D.b),Y		; D1 0D
	ora $002A50.l,X		; 1F 50 2A 00
	ora $970160.l,X		; 1F 60 01 97
	brk $12.b		; 00 12
	bvc  34.b		; 50 22
	and #$0F.b		; 29 0F
	inc $FFEE.w		; EE EE FF
	ora $D034F0.l		; 0F F0 34 D0
	inc $4E00.w,X		; FE 00 4E
	cmp $F0DEBF.l		; CF BF DE F0
	bit $22.b		; 24 22
	pld		; 2B
	wai		; CB
	and ($20.b,X)		; 21 20
	asl $AED1.w		; 0E D1 AE
	bvs  -1.b		; 70 FF
	sbc $10F000.l,X		; FF 00 F0 10
	inc $5FF3.w		; EE F3 5F
	stz $E4.b,X		; 74 E4
	eor $00CF.w		; 4D CF 00
	asl $1DF1.w,X		; 1E F1 1D
	and ($94.b,S),Y		; 33 94
	beq -12.b		; F0 F4
	rol $21C0.w,X		; 3E C0 21
	ora $9401D0.l,X		; 1F D0 01 94
	asl $20E3.w		; 0E E3 20
	ora ($1F.b,X)		; 01 1F
	inc $230F.w,X		; FE 0F 23
	sty $2A.b		; 84 2A
	bne  16.b		; D0 10
	sbc $1200.w,X		; FD 00 12
	brk $F0.b		; 00 F0
	sei		; 78
	lsr $F4F0.w,X		; 5E F0 F4
	lda $0120.w,X		; BD 20 01
	tyx		; BB
	beq -120.b		; F0 88
	ror $2B.b,X		; 76 2B
	beq  25.b		; F0 19
	cpx #$EE33.w		; E0 33 EE
	ora $040098.l		; 0F 98 00 04
	jsr $E1E1.w		; 20 E1 E1
	dec $3D04.w		; CE 04 3D
	tya		; 98
	bne  47.b		; D0 2F
	beq  85.b		; F0 55
	inc $DDD1.w,X		; FE D1 DD
	sbc $A8.b		; E5 A8
	rol $F1F1.w		; 2E F1 F1
	beq  36.b		; F0 24
	ora $0EFF.w		; 0D FF 0E
	tay		; A8
	ora $1E.b,S		; 03 1E
	beq  46.b		; F0 2E
	sbc ($51.b),Y		; F1 51
	sbc $EEA80F.l		; EF 0F A8 EE
	ora $0D.b,X		; 15 0D
	sbc ($2F.b,X)		; E1 2F
	ora $0D45.w		; 0D 45 0D
	ldy $00.b,X		; B4 00
	inc $20F0.w,X		; FE F0 20
	sbc $F4FE00.l		; EF 00 FE F4
	tay		; A8
	tas		; 1B
	ldx $0320.w,Y		; BE 20 03
	and $42B0.w,X		; 3D B0 42
	xba		; EB
	clv		; B8
	pea $BE6E.w		; F4 6E BE
	sbc ($20.b)		; F2 20
	bpl -18.b		; 10 EE
	ora $C8.b,S		; 03 C8
	ora $ED43EF.l,X		; 1F EF 43 ED
	sbc ($21.b,X)		; E1 21
	beq  15.b		; F0 0F
	iny		; C8
	brk $2F.b		; 00 2F
	ora $2E14.w		; 0D 14 2E
	dec $2E31.w		; CE 31 2E
	iny		; C8
	ora $0E021F.l		; 0F 1F 02 0E
	sbc ($42.b,X)		; E1 42
	xce		; FB
	sep #$C8		; E2 C8
	and ($E0.b),Y		; 31 E0
	sbc ($F1.b),Y		; F1 F1
	ora ($EF.b,X)		; 01 EF
	pea $C44F.w		; F4 4F C4
	xce		; FB
	cmp ($31.b),Y		; D1 31
	sbc $1F010F.l,X		; FF 0F 01 1F
	inc $16C8.w		; EE C8 16
	sbc $42B0.w,X		; FD B0 42
	asl $0FF1.w		; 0E F1 0F
	ora ($C8.b),Y		; 11 C8
	asl $63E0.w		; 0E E0 63
	stp		; DB
	cpy $41.b		; C4 41
	bne -15.b		; D0 F1
	iny		; C8
	ora $E4FE20.l		; 0F 20 FE E4
	adc $3F14BB.l		; 6F BB 14 3F
	iny		; C8
	sbc $10F110.l		; EF 10 F1 10
	inc $3B07.w		; EE 07 3B
	lda $CFC0.w,X		; BD C0 CF
	ora ($11.b),Y		; 11 11
	bpl  -1.b		; 10 FF
	ora ($FC.b),Y		; 11 FC
	cmp ($C4.b,X)		; C1 C4
	bvc -68.b		; 50 BC
	ora ($1F.b,S),Y		; 13 1F
	ora ($0E.b,X)		; 01 0E
	brk $10.b		; 00 10
	iny		; C8
	sbc $D3DB45.l		; EF 45 DB D3
	rti		; 40

	sbc $C8E020.l		; EF 20 E0 C8
	cop $0F.b		; 02 0F
	cmp ($52.b),Y		; D1 52
	cpy $2FF4.w		; CC F4 2F
	sbc ($C4.b,X)		; E1 C4
	and ($EE.b,X)		; 21 EE
	ora ($1F.b,X)		; 01 1F
	sbc $D11C34.l		; EF 34 1C D1
	cpy $10.b		; C4 10
	ora ($20.b,X)		; 01 20
	inc $1F01.w		; EE 01 1F
	sbc $0BB434.l		; EF 34 B4 0B
	bcs  63.b		; B0 3F
	sbc ($52.b),Y		; F1 52
	wai		; CB
	sbc ($20.b,S),Y		; F3 20
	cpy $EE.b		; C4 EE
	bit $1F.b		; 24 1F
	cmp $22F110.l,X		; DF 10 F1 22
	sbc $EFC0.w,X		; FD C0 EF
	ora ($FD.b,X)		; 01 FD
	cmp ($43.b),Y		; D1 43
	ora $B4FFFF.l,X		; 1F FF FF B4
	and $1C.b		; 25 1C
	cmp $C4FD31.l		; CF 31 FD C4
	adc ($EB.b,S),Y		; 73 EB
	clv		; B8
	and ($E0.b,S),Y		; 33 E0
	ora ($0D.b,S),Y		; 13 0D
	bne  49.b		; D0 31
	inc $B4E3.w,X		; FE E3 B4
	ror $2C.b		; 66 2C
	cmp $43F10F.l		; CF 0F F1 43
	inc $B8F0.w,X		; FE F0 B8
	asl $54F0.w		; 0E F0 54
	cpx $2FC2.w		; EC C2 2F
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	tay		; A8
	cmp $DE00.w,X		; DD 00 DE
	sbc ($55.b)		; F2 55
	ora $0DD0.w		; 0D D0 0D
	ldy $BB.b		; A4 BB
	sbc ($13.b),Y		; F1 13
	eor ($EA.b,S),Y		; 53 EA
	cmp ($31.b,X)		; C1 31
	sbc $1D46A4.l		; EF A4 46 1D
	cmp $33E10E.l		; CF 0E E1 33
	xba		; EB
	sbc $A4.b		; E5 A4
	eor $FD43DF.l		; 4F DF 43 FD
	sbc ($0E.b),Y		; F1 0E
	sbc ($30.b,X)		; E1 30
	ldy $DC.b		; A4 DC
	ora $2F.b,X		; 15 2F
	cmp ($41.b)		; D2 41
	sbc $ED11.w		; ED 11 ED
	ldy $F3.b		; A4 F3
	rol $54CF.w		; 2E CF 54
	sbc $3EF4.w,X		; FD F4 3E
	bne -92.b		; D0 A4
	bmi -51.b		; 30 CD
	ora ($0B.b)		; 12 0B
	sbc $62.b		; E5 62
	cmp $B434.w		; CD 34 B4
	inc $1FF2.w,X		; FE F2 1F
	sbc $14EE10.l,X		; FF 10 EE 14
	and $4FD2A4.l		; 2F A4 D2 4F
	lda $0E13.w,X		; BD 13 0E
	ora ($FB.b,X)		; 01 FB
	cpy $A8.b		; C4 A8
	tsa		; 3B
	lda ($61.b),Y		; B1 61
	lda $0D15.w		; AD 15 0D
	cop $2B.b		; 02 2B
	ldy $DF.b,X		; B4 DF
	bit $0E.b,X		; 34 0E
	sbc ($2F.b)		; F2 2F
	cmp $B8FF20.l,X		; DF 20 FF B8
	jsr $44DE.w		; 20 DE 44
	jsr ($2EF2.w,X)		; FC F2 2E
	cmp ($31.b),Y		; D1 31
	ldy $FF.b,X		; B4 FF
	ora ($EC.b),Y		; 11 EC
	sbc $50.b		; E5 50
	cpx #$20.b		; E0 20
	cmp $23B4.w		; CD B4 23
	brk $10.b		; 00 10
	wai		; CB
	sbc [$60.b],Y		; F7 60
	bne  14.b		; D0 0E
	iny		; C8
	sbc ($2F.b)		; F2 2F
	beq  15.b		; F0 0F
	sbc ($24.b,X)		; E1 24
	inc $C8D0.w,X		; FE D0 C8
	bpl   2.b		; 10 02
	bpl -47.b		; 10 D1
	sbc $0C3300.l,X		; FF 00 33 0C
	clv		; B8
	lda $1D3331.l,X		; BF 31 33 1D
	cmp $4611F1.l		; CF F1 11 46
	iny		; C8
	sbc $31C1.w		; ED C1 31
	jsr $E0FE.w		; 20 FE E0
	jsr $C41F.w		; 20 1F C4
	bit $0C.b,X		; 34 0C
	cpy #$21.b		; C0 21
	and $FC.b,S		; 23 FC
	cmp ($20.b),Y		; D1 20
	cpy #$EF.b		; C0 EF
	mvp $E0,$0D		; 44 0D E0
	ora ($32.b,X)		; 01 32
	sbc $B0E0.w,X		; FD E0 B0
	rol $50C3.w		; 2E C3 50
	dec $1321.w		; CE 21 13
	rol $B4BD.w,X		; 3E BD B4
	.db $42, $CC		; 42 CC
	eor $FC.b		; 45 FC
	cop $F0.b		; 02 F0
	and ($DD.b,X)		; 21 DD
	bcs -47.b		; B0 D1
	jsr $55AE.w		; 20 AE 55
	asl $02FF.w		; 0E FF 02
	eor ($B0.b,X)		; 41 B0
	jmp.w [$1BF2]		; DC F2 1B
	cpy $51.b		; C4 51
	sbc $B02400.l		; EF 00 24 B0
	trb $22BF.w		; 1C BF 22
	jmp.w [$1E35]		; DC 35 1E
	beq   2.b		; F0 02
	bcs  66.b		; B0 42
	stp		; DB
.ACCU 8
	sep #$2E		; E2 2E
	lda ($52.b)		; B2 52
	sbc $25B0FF.l		; EF FF B0 25
	and $12BE.w		; 2D BE 12
	cpx $1E25.w		; EC 25 1E
	beq -80.b		; F0 B0
	sbc ($42.b)		; F2 42
	stp		; DB
.ACCU 8
	sep #$2D		; E2 2D
	cmp $51.b,S		; C3 51
	cmp $3400B0.l,X		; DF B0 00 34
	trb $21CE.w		; 1C CE 21
	dec $0D54.w		; CE 54 0D
	ldy $11.b,X		; B4 11
	and $0B.b,S		; 23 0B
	bne  50.b		; D0 32
	cpx $EC54.w		; EC 54 EC
	bcs -33.b		; B0 DF
	sbc ($52.b,S),Y		; F3 52
	jmp.w [$1DD0]		; DC D0 1D
	pei ($40.b)		; D4 40
	ldy $D1.b,X		; B4 D1
	ora ($40.b),Y		; 11 40
	lda $2E12.w,X		; BD 12 2E
	cmp $4F.b		; C5 4F
	bcs  -2.b		; B0 FE
	sbc $CE2D35.l		; EF 35 2D CE
	ora ($CD.b,X)		; 01 CD
	eor $B0.b		; 45 B0
	asl $15EE.w		; 0E EE 15
	eor $ECF1CD.l		; 4F CD F1 EC
	and $B0.b		; 25 B0
	asl $04EF.w,X		; 1E EF 04
	bvc -51.b		; 50 CD
	sbc ($0C.b),Y		; F1 0C
	ora $B4.b,X		; 15 B4
	jmp.w [$1401]		; DC 01 14
	trb $12C0.w		; 1C C0 12
	tsb $B454.w		; 0C 54 B4
	jmp.w [$1500]		; DC 00 15
	bit $02CF.w		; 2C CF 02
	ora $B444.w,X		; 1D 44 B4
	cmp $05F0.w,X		; DD F0 05
	and $F2DF.w		; 2D DF F2
	ora $B454.w		; 0D 54 B4
	cpx $F5F0.w		; EC F0 F5
	and $F1DF.w,X		; 3D DF F1
	ora $B045.w,X		; 1D 45 B0
	and $53D1EE.l,X		; 3F EE D1 53
	inc $0DDE.w,X		; FE DE 0D
	sbc $B0.b,X		; F5 B0
	rti		; 40

	inc $54D0.w,X		; FE D0 54
	ora $D3FEDD.l,X		; 1F DD FE D3
	ldy $2D.b,X		; B4 2D
	sbc $EF51E1.l		; EF E1 51 EF
	inc $D320.w		; EE 20 D3
	bcs  84.b		; B0 54
	bpl -20.b		; 10 EC
	ora $31.b,S		; 03 31
	asl $DCDF.w,X		; 1E DF DC
	bcs  37.b		; B0 25
	and ($0D.b),Y		; 31 0D
	bne  17.b		; D0 11
	and ($EE.b,X)		; 21 EE
	cpx $35B8.w		; EC B8 35
	ldx $031E.w,Y		; BE 1E 03
	ora $10DF11.l		; 0F 11 DF 10
	tay		; A8
	eor ($DE.b,S),Y		; 53 DE
	sbc ($C3.b,X)		; E1 C3
	jsr $DD00.w		; 20 00 DD
	stz $A4.b,X		; 74 A4
	and ($1E.b,X)		; 21 1E
	bne  15.b		; D0 0F
	ora ($0F.b),Y		; 11 0F
	wai		; CB
	lsr $94.b		; 46 94
	and ($5C.b,S),Y		; 33 5C
	lda $42CE.w		; AD CE 42
	sbc $63B2.w,X		; FD B2 63
	sty $12.b		; 84 12
	rol $B2CB.w		; 2E CB B2
	eor ($0E.b,X)		; 41 0E
	ora ($30.b,X)		; 01 30
	sty $FF.b		; 84 FF
	ora $03DF.w		; 0D DF 03
	jsl $20C13E.l		; 22 3E C1 20
	sei		; 78
	ora $AC.b,X		; 15 AC
	inc $D3.b,X		; F6 D3
	sbc $09.b		; E5 09
	cmp $31.b		; C5 31
	stz $04.b,X		; 74 04
	eor $FF0B21.l		; 4F 21 0B FF
	mvp $F1,$CB		; 44 CB F1
	stz $EE.b,X		; 74 EE
	ora $B15E34.l		; 0F 34 5E B1
	rti		; 40

	cmp ($30.b,X)		; C1 30
	stz $D0.b,X		; 74 D0
	jmp.w [$3D05]		; DC 05 3D
	cpx #$40.b		; E0 40
	cpy #$31.b		; C0 31
	sei		; 78
	cmp ($F0.b),Y		; D1 F0
	ora [$CC.b]		; 07 CC
	ora ($4B.b,S),Y		; 13 4B
	bne  17.b		; D0 11
	stz $DF.b,X		; 74 DF
	and ($F0.b)		; 32 F0
	ora $56E1.w,X		; 1D E1 56
	sbc $74CC.w,X		; FD CC 74
	sbc $1253.w		; ED 53 12
	trb $15EF.w		; 1C EF 15
	jmp $74DD.w		; 4C DD 74
	inc $0135.w		; EE 35 01
	and $60E1DE.l		; 2F DE E1 60
	dec $1C74.w		; CE 74 1C
	trb $20.b		; 14 20
	ora ($FC.b)		; 12 FC
	cpy #$43.b		; C0 43
	cmp $BF2074.l,X		; DF 74 20 BF
	and ($31.b)		; 32 31
	trb $23CE.w		; 1C CE 23
	and $DB2074.l		; 2F 74 20 DB
	tsb $12.b		; 04 12
	asl $11EB.w,X		; 1E EB 11
	lsr $1074.w,X		; 5E 74 10
	inc $0102.w		; EE 02 01
	bpl  -3.b		; 10 FD
	sbc $216440.l,X		; FF 40 64 21
	beq -17.b		; F0 EF
	ora $E0BD14.l		; 0F 14 BD E0
	pea $5E64.w		; F4 64 5E
	and ($FE.b,X)		; 21 FE
	inc $CE04.w,X		; FE 04 CE
	sbc ($00.b)		; F2 00
	stz $44.b		; 64 44
	inc $0D10.w		; EE 10 0D
	sbc ($1C.b,X)		; E1 1C
	sbc ($41.b)		; F2 41
	rts		; 60

	and $21.b,S		; 23 21
	ora ($3D.b,S),Y		; 13 3D
	cmp $24CDDC.l		; CF DC CD 24
	stz $FE.b		; 64 FE
	sbc ($13.b),Y		; F1 13
	cmp $C0F3.w,X		; DD F3 C0
	bpl  52.b		; 10 34
	stz $FE.b		; 64 FE
	inc $2003.w		; EE 03 20
	inc $200B.w		; EE 0B 20
	and ($64.b,S),Y		; 33 64
	bpl  12.b		; 10 0C
	lda $21.b,S		; A3 21
	brk $0E.b		; 00 0E
	inc $5414.w		; EE 14 54
	eor ($0C.b),Y		; 51 0C
	tyx		; BB
	bit $1F.b		; 24 1F
	jsr ($F5DD.w,X)		; FC DD F5
	pla		; 68
	asl $EFFF.w,X		; 1E FF EF
	and $0E.b,S		; 23 0E
	ora ($DF.b,X)		; 01 DF
	and ($60.b,X)		; 21 60
	sbc ($33.b)		; F2 33
	ora $DDAC.w,X		; 1D AC DD
	sbc $DE.b,S		; E3 DE
	tyx		; BB
	rts		; 60

	cmp ($23.b,S),Y		; D3 23
	and $F3DDCC.l		; 2F CC DD F3
	ora $6158DC.l		; 0F DC 58 61
	bne  -4.b		; D0 FC
	cpx $00.b		; E4 00
	and ($FB.b)		; 32 FB
	beq  80.b		; F0 50
	lda $6603.w,X		; BD 03 66
	lsr A		; 4A
	cpy #$B0.b		; C0 B0
	and $64.b,X		; 35 64
	stz $EF.b		; 64 EF
	ora ($02.b),Y		; 11 02
	bpl -96.b		; 10 A0
	sbc ($22.b),Y		; F1 22
	adc $9164.w		; 6D 64 91
	brk $11.b		; 00 11
	asl $CC.b,X		; 16 CC
	sbc $506D13.l,X		; FF 13 6D 50
	asl $DFDD.w		; 0E DD DF
	ora $7A.b,X		; 15 7A
	dex		; CA
	lda $1F5045.l		; AF 45 50 1F
	cpx $C2BB.w		; EC BB C2
	rtl		; 6B

	stp		; DB
	plb		; AB
	bne  96.b		; D0 60
	ora $D3EEED.l		; 0F ED EE D3
	and $DCFE.w		; 2D FE DC
	cmp $FE1E54.l,X		; DF 54 1E FE
	ora $DF40F1.l,X		; 1F F1 40 DF
	beq   2.b		; F0 02
	bvc -19.b		; 50 ED
	cmp $DFDD.w		; CD DD DF
	rol A		; 2A
	cpx $CDCD.w		; EC CD CD
	bvc  -3.b		; 50 FD
	cmp $E6FF.w		; CD FF E6
	jsl $EDEE0F.l		; 22 0F EE ED
	mvn $FF,$11		; 54 11 FF
	bmi -15.b		; 30 F1
	rol $0601.w		; 2E 01 06
	ldy #$50.b		; A0 50
	ora $2203FF.l		; 0F FF 03 22
	eor $11.b,S		; 43 11
	ora $5F3460.l		; 0F 60 34 5F
	bpl   1.b		; 10 01
	ldx #$7F.b		; A2 7F
	and ($AA.b),Y		; 31 AA
	sta ($50.b),Y		; 91 50
	brk $F7.b		; 00 F7
	asl A		; 0A
	sbc $FEFF00.l,X		; FF 00 FF FE
	cpy $4244.w		; CC 44 42
	brk $FE.b		; 00 FE
	sbc $CD0E22.l		; EF 22 0E CD
	sbc $DC3248.l,X		; FF 48 32 DC
	cop $E0.b		; 02 E0
	jsl $03B339.l		; 22 39 B3 03
	mvp $01,$21		; 44 21 01
	ora $2112ED.l		; 0F ED 12 21
	jsr ($50C0.w,X)		; FC C0 50
	inc $0000.w		; EE 00 00
	sbc $0FF6FF.l,X		; FF FF F6 0F
	inc $F050.w		; EE 50 F0
	ora $0F2260.l		; 0F 60 22 0F
	brk $21.b		; 00 21
	ora ($54.b),Y		; 11 54
	adc $21E1.w,Y		; 79 E1 21
	ora ($0E.b,X)		; 01 0E
	bpl  16.b		; 10 10
	and $C31034.l		; 2F 34 10 C3
	ora $E10D53.l		; 0F 53 0D E1
	sbc ($23.b)		; F2 23
	bit $0F.b,X		; 34 0F
	beq   4.b		; F0 04
	and $FE.b		; 25 FE
	bne -15.b		; D0 F1
	ora ($34.b)		; 12 34
	brk $FE.b		; 00 FE
	cpx #$10.b		; E0 10
	rol $C200.w		; 2E 00 C2
	beq  40.b		; F0 28
	cpx $CE.b		; E4 CE
	bpl  11.b		; 10 0B
	bmi -46.b		; 30 D2
	tad		; 5B
	cmp ($24.b)		; D2 24
	sbc $41D3EE.l		; EF EE D3 41
	asl $3499.w		; 0E 99 34
	sbc ($34.b),Y		; F1 34
	ora $31C00E.l		; 0F 0E C0 31
	ora ($1C.b,X)		; 01 1C
	pea $5023.w		; F4 23 50
	bpl  17.b		; 10 11
	ora $1F1160.l		; 0F 60 11 1F
	ora ($01.b,X)		; 01 01
	sec		; 38
	cmp ($FF.b),Y		; D1 FF
	rol $F412.w		; 2E 12 F4
	sbc $1002.w		; ED 02 10
	mvp $12,$12		; 44 12 12
	ora $10CE33.l		; 0F 33 CE 10
	cpx $FD.b		; E4 FD
	stz $01.b		; 64 01
	bpl -16.b		; 10 F0
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	eor ($74.b),Y		; 51 74
	jsr ($F310.w,X)		; FC 10 F3
	bne   2.b		; D0 02
	brk $00.b		; 00 00
	jsl $000E84.l		; 22 84 0E 00
	brk $32.b		; 00 32
	inc $13CE.w,X		; FE CE 13
	cpx #$74.b		; E0 74
	lda $34.b,S		; A3 34
	ora ($F1.b),Y		; 11 F1
	sbc ($40.b)		; F2 40
	jmp.w [$74C0]		; DC C0 74
	and ($AC.b),Y		; 31 AC
	mvp $13,$05		; 44 05 13
	asl $0DBE.w		; 0E BE 0D
	dey		; 88
	sbc [$A1.b]		; E7 A1
	bpl  47.b		; 10 2F
	rol $0921.w,X		; 3E 21 09
	phd		; 0B
	tay		; A8
	bpl -32.b		; 10 E0
	eor $3BD014.l		; 4F 14 D0 3B
	cmp ($B2.b,S),Y		; D3 B2
	ldy $DC.b,X		; B4 DC
	ora ($04.b)		; 12 04
	.db $42, $32		; 42 32
	dec $DCDC.w,X		; DE DC DC
	clv		; B8
	bit $E2.b,X		; 34 E2
	ora $A210.w,X		; 1D 10 A2
	beq  15.b		; F0 0F
	.db $42, $B8		; 42 B8
	cop $0E.b		; 02 0E
	asl $F0C2.w		; 0E C2 F0
	sbc ($50.b),Y		; F1 50
	ora ($B8.b)		; 12 B8
	sbc $F0010B.l		; EF 0B 01 F0
	sbc ($5D.b,S),Y		; F3 5D
	rti		; 40

	cmp ($B8.b,X)		; C1 B8
	xce		; FB
	and $F10600.l		; 2F 00 06 F1
	and $CEE1.w,X		; 3D E1 CE
	clv		; B8
	and $E3531E.l		; 2F 1E 53 E3
	sbc $C20F.w,X		; FD 0F C2
	brk $B4.b		; 00 B4
	dec $5542.w,X		; DE 42 55
	ora ($0C.b),Y		; 11 0C
	dec $D2DE.w,X		; DE DE D2
	clv		; B8
	rol $E13D.w		; 2E 3D E1
	sbc $014E.w		; ED 4E 01
	asl $C3.b		; 06 C3
	ldy $40.b,X		; B4 40
	ora $FDFDDE.l		; 0F DE FD FD
	bit $15.b		; 24 15
	and $CF0FB4.l		; 2F B4 0F CF
	sbc $2433EE.l,X		; FF EE 33 24
	ora $EFB40E.l		; 0F 0E B4 EF
	sbc $3341EF.l,X		; FF EF 41 33
	ora $A8FF0D.l		; 0F 0D FF A8
	brk $C6.b		; 00 C6
	adc $A26D.w,Y		; 79 6D A2
	tsb $0D31.w		; 0C 31 0D
	ldy $D2.b,X		; B4 D2
	and ($41.b),Y		; 31 41
	beq  -3.b		; F0 FD
	ora $B4E30D.l		; 0F 0D E3 B4
	and ($40.b),Y		; 31 40
	beq -18.b		; F0 EE
	ora $12F5FD.l		; 0F FD F5 12
	clv		; B8
	ora $D1F2.w,X		; 1D F2 D1
	rol $330F.w		; 2E 0F 33
	cmp ($FD.b)		; D2 FD
	ldy $0F.b,X		; B4 0F
	sbc $33ED0F.l		; EF 0F ED 33
	trb $0F.b		; 14 0F
	asl $E0B4.w		; 0E B4 E0
	asl $32EF.w		; 0E EF 32
	and $0F.b,S		; 23 0F
	inc $B4E0.w,X		; FE E0 B4
	asl $41D2.w		; 0E D2 41
	and ($FF.b)		; 32 FF
	sbc $FEF0.w,X		; FD F0 FE
	ldy $D7.b		; A4 D7
	eor $60.b		; 45 60
	cmp $DB0FBD.l,X		; DF BD 0F DB
	rol $A4.b,X		; 36 A4
	rol $3E.b,X		; 36 3E
	sbc $0ECE.w,X		; FD CE 0E
	ldx $4664.w,Y		; BE 64 46
	ldy $0F.b		; A4 0F
	cpx $EDD0.w		; EC D0 ED
	lda ($44.b,S),Y		; B3 44
	adc $0E.b,S		; 63 0E
	ldy $EC.b		; A4 EC
	cpx #$DB.b		; E0 DB
	pea $5235.w		; F4 35 52
	sbc $20A8CD.l,X		; FF CD A8 20
	cmp $EF0153.l,X		; DF 53 01 EF
	bne -16.b		; D0 F0
	and $24CDA4.l		; 2F A4 CD 24
	mvp $FF,$30		; 44 30 FF
	dec $CF0D.w,X		; DE 0D CF
	tya		; 98
	bit $10.b,X		; 34 10
	bne -35.b		; D0 DD
	sbc ($11.b),Y		; F1 11
	lda ($62.b),Y		; B1 62
	tya		; 98
	and $E0EE0F.l		; 2F 0F EE E0
	bpl -31.b		; 10 E1
	trb $11.b		; 14 11
	sty $34.b,X		; 94 34
	bmi -19.b		; 30 ED
	dec $DFEE.w,X		; DE EE DF
	and ($43.b)		; 32 43
	dey		; 88
	bne -19.b		; D0 ED
	sbc ($02.b),Y		; F1 02
	ora ($00.b,X)		; 01 00
	eor $A178C1.l,X		; 5F C1 78 A1
	rol A		; 2A
	lsr $C455.w,X		; 5E 55 C4
	cpx $B0E2.w		; EC E2 B0
	sei		; 78
	rol $3611.w		; 2E 11 36
	cmp $0B.b,X		; D5 0B
	nop		; EA
	sbc $3C784F.l		; EF 4F 78 3C
	adc $AD006F.l,X		; 7F 6F 00 AD
	asl $D113.w		; 0E 13 D1
	sei		; 78
	adc $CFB014.l		; 6F 14 B0 CF
	inc $C423.w,X		; FE 23 C4
	mvp $A6,$78		; 44 78 A6
	cpy $EFB4.w		; CC B4 EF
	tas		; 1B
	mvn $01,$7B		; 54 7B 01
	sty $20.b		; 84 20
	asl $EFDE.w		; 0E DE EF
	sbc ($32.b,X)		; E1 32
	bit $0F.b,X		; 34 0F
	sei		; 78
	ora $F12F.w		; 0D 2F F1
	and $E1.b,X		; 35 E1
	and $780DCE.l		; 2F CE 0D 78
	rol $33E3.w,X		; 3E E3 33
	brk $D4.b		; 00 D4
	cmp $102C.w		; CD 2C 10
	sei		; 78
	trb $E1.b		; 14 E1
	and $EE11.w,X		; 3D 11 EE
	dec $A4.b		; C6 A4
	ora ($68.b,X)		; 01 68
	bpl  62.b		; 10 3E
	sbc ($BE.b)		; F2 BE
	tas		; 1B
	eor $74C352.l		; 4F 52 C3 74
	and ($11.b,X)		; 21 11
	inc $FE1C.w		; EE 1C FE
	ora ($14.b,X)		; 01 14
	ora ($64.b,X)		; 01 64
	and $EF0ACE.l		; 2F CE 0A EF
	ora ($33.b),Y		; 11 33
	and $FD.b		; 25 FD
	stz $CF.b		; 64 CF
	ora $04C2.w		; 0D C2 04
	eor $F01DF1.l		; 4F F1 1D F0
	stz $0E.b		; 64 0E
	ora $F11330.l		; 0F 30 13 F1
	ldy $0E31.w,X		; BC 31 0E
	stz $01.b		; 64 01
	ora ($20.b),Y		; 11 20
	brk $DD.b		; 00 DD
	bpl  12.b		; 10 0C
	eor $015064.l		; 4F 64 50 01
	tsa		; 3B
	trb $00F1.w		; 1C F1 00
	beq  18.b		; F0 12
	pla		; 68
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	sbc $1E.b		; E5 1E
	ora $5E1000.l		; 0F 00 10 5E
	mvn $E1,$AB		; 54 AB E1
	rol $9AD7.w		; 2E D7 9A
	cmp ($44.b,S),Y		; D3 44
	and $FF64.w		; 2D 64 FF
	and ($DF.b)		; 32 DF
	xce		; FB
	and ($11.b,X)		; 21 11
	ora ($F0.b,X)		; 01 F0
	mvp $CC,$50		; 44 50 CC
	lda $1F10DF.l,X		; BF DF 10 1F
	inc $2B.b,X		; F6 2B
	mvp $42,$CB		; 44 CB 42
	bmi -80.b		; 30 B0
	cmp $DA0E31.l		; CF 31 0E DA
	cli		; 58
	and $DA.b,X		; 35 DA
	jsr $CF06.w		; 20 06 CF
	sbc $F323.w,X		; FD 23 F3
	bvc -96.b		; 50 A0
	sbc $02EE.w		; ED EE 02
	rol $C1BB.w,X		; 3E BB C1
	ora $F460.w		; 0D 60 F4
	bpl  17.b		; 10 11
	ora $F3FEE0.l		; 0F E0 FE F3
	sbc $221450.l,X		; FF 50 14 22
	dec A		; 3A
	inc $F0CE.w		; EE CE F0
	ldy $5002.w,X		; BC 02 50
	bit $1F.b,X		; 34 1F
	asl $CBDF.w		; 0E DF CB
	dec $1355.w,X		; DE 55 13
	bvc -65.b		; 50 BF
	sbc $DDDDFE.l,X		; FF FE DD DD
	beq  42.b		; F0 2A
	stp		; DB
	mvp $00,$42		; 44 42 00
	sbc $D012.w		; ED 12 D0
	inc $D301.w,X		; FE 01 D3
	mvn $14,$0C		; 54 0C 14
	sbc $C50FE1.l,X		; FF E1 0F C5
	lda ($F0.b),Y		; B1 F0
	bvc -30.b		; 50 E2
	bmi -19.b		; 30 ED
	inc $AAA9.w		; EE A9 AA
	plb		; AB
	rol $E154.w,X		; 3E 54 E1
	cmp $C0.b,X		; D5 C0
	xce		; FB
	cop $12.b		; 02 12
	rti		; 40

	inc A		; 1A
	stz $10.b,X		; 74 10
	ora $0000E1.l		; 0F E1 00 00
	and $E214.w,X		; 3D 14 E2
	rts		; 60

	tas		; 1B
	dec $CDFD.w,X		; DE FD CD
	sbc $FD2EED.l,X		; FF ED 2E FD
	bra  -1.b		; 80 FF
	sbc $2EF100.l,X		; FF 00 F1 2E
	bpl -12.b		; 10 F4
	eor $4474.w		; 4D 74 44
	sbc ($CB.b)		; F2 CB
	cmp $1F25.w,X		; DD 25 1F
	and $208047.l		; 2F 47 80 20
	bpl   1.b		; 10 01
	tsb $FFEE.w		; 0C EE FF
	sbc $4170F1.l,X		; FF F1 70 41
	and $EC65C0.l		; 2F C0 65 EC
	bcs  95.b		; B0 5F
	ldx $0370.w		; AE 70 03
	bit $33.b,X		; 34 33
	sbc $DCD5FA.l,X		; FF FA D5 DC
	ora ($88.b)		; 12 88
	beq  75.b		; F0 4B
	cop $D1.b		; 02 D1
	and $D6D4.w,X		; 3D D4 D6
	eor $F288.w		; 4D 88 F2
	bne -16.b		; D0 F0
	inc $E25D.w		; EE 5D E2
	brk $A7.b		; 00 A7
	tya		; 98
	bit $B445.w		; 2C 45 B4
	jsr ($C2E2.w,X)		; FC E2 C2
	ora $0FA810.l,X		; 1F 10 A8 0F
	brk $11.b		; 00 11
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	cpy $D32E.w		; CC 2E D3
	tay		; A8
	rol $FE11.w		; 2E 11 FE
	ora ($E3.b)		; 12 E3
	bne  84.b		; D0 54
	ldx $E998.w,Y		; BE 98 E9
	jsl $2C3D02.l		; 22 02 3D 2C
	tsb $4E.b		; 04 4E
	sbc ($A8.b,S),Y		; F3 A8
	rol $F20B.w		; 2E 0B F2
	ora ($F0.b),Y		; 11 F0
	beq   1.b		; F0 01
	ora ($A8.b,S),Y		; 13 A8
	sbc ($20.b,X)		; E1 20
	sbc $12A2.w,X		; FD A2 12
	rol $F00F.w		; 2E 0F F0
	tay		; A8
	eor ($C1.b,S),Y		; 53 C1
	rol $C0FD.w,X		; 3E FD C0
	and ($00.b)		; 32 00
	cpx #$A8.b		; E0 A8
	sbc ($51.b),Y		; F1 51
	sep #$0E		; E2 0E
	inc $30B2.w,X		; FE B2 30
	and $F5EFA8.l		; 2F A8 EF F5
	jmp $ECFE20.l		; 5C 20 FE EC
	and ($20.b,X)		; 21 20
	tay		; A8
	asl $54E1.w		; 0E E1 54
	bne  31.b		; D0 1F
	inc $42C0.w		; EE C0 42
	clv		; B8
	ora $3CF40F.l		; 0F 0F F4 3C
	ora ($EF.b),Y		; 11 EF
	ora $B403.w,X		; 1D 03 B4
	beq  14.b		; F0 0E
	sbc $001353.l		; EF 53 13 00
	inc $B8DF.w,X		; FE DF B8
	rol $F11E.w		; 2E 1E F1
	.db $42, $D1		; 42 D1
	sbc $E110.w,X		; FD 10 E1
	clv		; B8
	and $36F00E.l,X		; 3F 0E F0 36
	cmp $FF011C.l		; CF 1C 01 FF
	clv		; B8
	rti		; 40

	sbc $D054D0.l,X		; FF D0 54 D0
	tsb $FF01.w		; 0C 01 FF
	clv		; B8
	rti		; 40

	sbc $DF54EF.l,X		; FF EF 54 DF
	ora $E011.w		; 0D 11 E0
	ldy $10.b,X		; B4 10
	ora $63C0.w		; 0D C0 63
	ora ($FD.b,S),Y		; 13 FD
	ora $10B4C1.l,X		; 1F C1 B4 10
	jsr ($50E4.w,X)		; FC E4 50
	bmi -48.b		; 30 D0
	ora $B401.w		; 0D 01 B4
	brk $DC.b		; 00 DC
	and $13.b,X		; 35 13
	ora $DEF1.w,X		; 1D F1 DE
	jsr $FEB4.w		; 20 B4 FE
	cmp $60.b,S		; C3 60
	and ($CF.b)		; 32 CF
	ora $0FE2.w,X		; 1D E2 0F
	ldy $EC.b,X		; B4 EC
	eor $03.b		; 45 03
	bit $DEF1.w		; 2C F1 DE
	and $E5B4FE.l		; 2F FE B4 E5
	and ($3F.b),Y		; 31 3F
	sbc ($ED.b,X)		; E1 ED
	brk $F0.b		; 00 F0
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	tsa		; 3B
	and $220CB4.l,X		; 3F B4 0C 22
	cpx #$6BF2.w		; E0 F2 6B
	ldy $32.b,X		; B4 32
	cmp $EEE01E.l,X		; DF 1E E0 EE
	sbc ($61.b,X)		; E1 61
	.db $42, $B4		; 42 B4
	cmp ($FD.b,X)		; C1 FD
	beq -19.b		; F0 ED
	cpx $41.b		; E4 41
	adc $C1B8E1.l		; 6F E1 B8 C1
	ora ($D0.b),Y		; 11 D0
	eor ($D5.b),Y		; 51 D5
	cmp $034B.w		; CD 4B 03
	clv		; B8
	sbc $5BFE15.l		; EF 15 FE 5B
	sbc ($B1.b,S),Y		; F3 B1
	ora $31B400.l,X		; 1F 00 B4 31
	bit $01.b		; 24 01
	ora $EEFF.w,X		; 1D FF EE
	ora ($10.b,X)		; 01 10
	sty $64.b,X		; 94 64
	ora $3C.b,X		; 15 3C
	jsr ($1CAF.w,X)		; FC AF 1C
	ora ($F4.b),Y		; 11 F4
	tya		; 98
	bne  75.b		; D0 4B
	sbc ($E0.b)		; F2 E0
	ora $2EE003.l,X		; 1F 03 E0 2E
	stz $F5.b,X		; 74 F5
	mvp $D0,$2B		; 44 2B D0
	ora $EE001E.l		; 0F 1E 00 EE
	sei		; 78
	and $FBE61E.l,X		; 3F 1E E6 FB
	bvc -26.b		; 50 E6
	stz $783A.w,X		; 9E 3A 78
	and ($0C.b)		; 32 0C
	ror $E460.w		; 6E 60 E4
	lda $78F309.l,X		; BF 09 F3 78
	sbc ($F3.b,S),Y		; F3 F3
	and ($3F.b),Y		; 31 3F
	sbc $6DCF91.l,X		; FF 91 CF 6D
	dey		; 88
	ora ($E4.b)		; 12 E4
	asl $1F3B.w		; 0E 3B 1F
	cmp ($00.b,S),Y		; D3 00
	ora ($84.b),Y		; 11 84
	sbc ($41.b,S),Y		; F3 41
	bpl  13.b		; 10 0D
	sbc $0FD1.w,X		; FD D1 0F
	eor ($78.b,X)		; 41 78
	ora $90.b,X		; 15 90
	sbc $D3E5.w,X		; FD E5 D3
	bit $F36E.w,X		; 3C 6E F3
	stz $3F.b,X		; 74 3F
	ora $DBA0.w,X		; 1D A0 DB
	bmi  17.b		; 30 11
	.db $42, $2F		; 42 2F
	stz $02.b,X		; 74 02
	sbc $E00C.w		; ED 0C E0
	cop $4F.b		; 02 4F
	and ($E1.b,X)		; 21 E1
	stz $DE.b		; 64 DE
	jsr ($F3E3.w,X)		; FC E3 F3
	bit $2A.b,X		; 34 2A
	pld		; 2B
.ACCU 16
	rep #$64		; C2 64
	beq  17.b		; F0 11
	and ($6C.b,X)		; 21 6C
	sbc $FFF3FE.l,X		; FF FE F3 FF
	stz $20.b		; 64 20
	ora [$BF.b]		; 07 BF
	ora $E0E2.w,X		; 1D E2 E0
	bmi   1.b		; 30 01
	stz $00.b		; 64 00
	tas		; 1B
	jmp $F3C3.w		; 4C C3 F3
	sep #$04		; E2 04
	cpx #$0064.w		; E0 64 00
.ACCU 16
.INDEX 16
	rep #$FB		; C2 FB
	asl $1211.w,X		; 1E 11 12
	ora ($11.b),Y		; 11 11
	cli		; 58
	sta ($EE.b,S),Y		; 93 EE
	and $1E.b,S		; 23 1E
	and ($DD.b),Y		; 31 DD
	.db $42, $A1		; 42 A1
	stz $EC.b		; 64 EC
	cpx #$11E1.w		; E0 E1 11
	and ($0F.b),Y		; 31 0F
	ora ($C1.b),Y		; 11 C1
	stz $EE.b		; 64 EE
	beq  17.b		; F0 11
	asl $93.b		; 06 93
	beq  16.b		; F0 10
	xba		; EB
	rts		; 60

	cpy $EFDE.w		; CC DE EF
	sbc $DFF3FF.l,X		; FF FF F3 DF
	sbc $0254.w		; ED 54 02
	brk $0E.b		; 00 0E
	ora ($11.b)		; 12 11
	ora ($DD.b),Y		; 11 DD
	asl $4F54.w		; 0E 54 4F
	rep #$02		; C2 02
	and $EFEF11.l,X		; 3F 11 EF EF
	jsr $B144.w		; 20 44 B1
	sbc ($03.b),Y		; F1 03
	lsr $CF51.w		; 4E 51 CF
	cpy #$50DB.w		; C0 DB 50
	ldy $F6CE.w,X		; BC CE F6
	ora ($32.b)		; 12 32
	ora $50ABFD.l,X		; 1F FD AB 50
	lda #$02CE.w		; A9 CE 02
	and ($AF.b,S),Y		; 33 AF
	stp		; DB
	cmp #$649A.w		; C9 9A 64
	sbc ($2F.b),Y		; F1 2F
	bpl -16.b		; 10 F0
	brk $0F.b		; 00 0F
	phd		; 0B
	bmi  88.b		; 30 58
	sbc ($FE.b,S),Y		; F3 FE
	sbc ($D3.b)		; F2 D3
	trb $D400.w		; 1C 00 D4
	ora $3F0044.l,X		; 1F 44 00 3F
	ora $C0.b,S		; 03 C0
	and $C00E.w		; 2D 0E C0
	sbc $3F0044.l		; EF 44 00 3F
	sbc $1F1CF3.l,X		; FF F3 1C 1F
	jsr ($38E0.w,X)		; FC E0 38
	lda ($50.b,S),Y		; B3 50
	nop		; EA
	cop $D2.b		; 02 D2
	ldy #$7FFB.w		; A0 FB 7F
	pha		; 48
	ora [$AF.b],Y		; 17 AF
	sbc $20002E.l		; EF 2E 00 20
.INDEX 16
	rep #$1D		; C2 1D
	rts		; 60

	brk $10.b		; 00 10
	sbc $1CF0F0.l,X		; FF F0 F0 1C
	sbc $195000.l,X		; FF 00 50 19
	sbc $23E0FF.l,X		; FF FF E0 23
	ora $50DEEE.l,X		; 1F EE DE 50
	sbc $2211F0.l		; EF F0 11 22
	dec A		; 3A
	inc $EECC.w,X		; FE CC EE
	bvc  96.b		; 50 60
	ora ($10.b),Y		; 11 10
	sbc $BDBADC.l,X		; FF DC BA BD
	dec $54.b,X		; D6 54
	bcc  30.b		; 90 1E
	sbc $10F0FE.l,X		; FF FE F0 10
	jsr $38F0.w		; 20 F0 38
	jsr ($D0F2.w,X)		; FC F2 D0
	jmp $1E11.w		; 4C 11 1E
	cpy #$34ED.w		; C0 ED 34
	cmp $E122.w,X		; DD 22 E1
	asl $2121.w		; 0E 21 21
	cmp $1F34CE.l,X		; DF CE 34 1F
	lsr $1E03.w		; 4E 03 1E
	brk $D0.b		; 00 D0
	ora $DE3002.l		; 0F 02 30 DE
	inc $FF0F.w		; EE 0F FF
	cmp $04FDED.l,X		; DF ED FD 04
	bvc   0.b		; 50 00
	ora ($00.b),Y		; 11 00
	bpl   1.b		; 10 01
	ldy #$F000.w		; A0 00 F0
	bvc   0.b		; 50 00
	ora ($00.b),Y		; 11 00
	inc A		; 1A
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	mvn $E1,$00		; 54 00 E1
	ldx $00.b		; A6 00
	ora $0F0000.l		; 0F 00 00 0F
	bit $20.b,X		; 34 20
	cpx #$FFF0.w		; E0 F0 FF
	sbc $C01E0F.l,X		; FF 0F 1E C0
	bit $FF.b,X		; 34 FF
	sbc ($0C.b),Y		; F1 0C
	jsr $3CCE.w		; 20 CE 3C
	cmp ($DE.b),Y		; D1 DE
	bit $2C.b		; 24 2C
	jmp.w [$2DEE]		; DC EE 2D
	ldx $0EDD.w		; AE DD 0E
	ora ($14.b,X)		; 01 14
	sbc $AADF0D.l		; EF 0D DF AA
	cpy $BEDF.w		; CC DF BE
	tsx		; BA
	trb $40.b		; 14 40
	ora ($B9.b,X)		; 01 B9
	sbc $32.b		; E5 32
	jmp ($11D3.w)		; 6C D3 11
	bit $11.b,X		; 34 11
	brk $F1.b		; 00 F1
	eor $111102.l		; 4F 02 11 11
	brk $14.b		; 00 14
	eor ($F1.b,X)		; 41 F1
	cmp $04400F.l		; CF 0F 40 04
	asl $30.b		; 06 30
	bit $4D.b		; 24 4D
	ora $5001D3.l,X		; 1F D3 01 50
	jsl $50DE0F.l		; 22 0F DE 50
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	ora $28FFFF.l		; 0F FF FF 28
	cmp ($11.b),Y		; D1 11
	inc $D2F0.w		; EE F0 D2
	phd		; 0B
	rti		; 40

	cpx #$E124.w		; E0 24 E1
	sbc $ED0D.w		; ED 0D ED
	sbc $EADF.w		; ED DF EA
	bpl  20.b		; 10 14
	cmp $EE0D9C.l,X		; DF 9C 0D EE
	cmp ($FF.b,X)		; C1 FF
	trb $24EC.w		; 1C EC 24
	dec $0FCC.w,X		; DE CC 0F
	sbc $11F0.w,X		; FD F0 11
	cmp $9000.w,X		; DD 00 90
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	and ($EC.b)		; 32 EC
	cmp $6F.b,S		; C3 6F
	bcc -14.b		; 90 F2
	cmp $E13F.w,X		; DD 3F E1
	sbc $D53F.w,X		; FD 3F D5
	jmp $4094.w		; 4C 94 40
	cmp ($01.b,X)		; C1 01
	and $E120D1.l,X		; 3F D1 20 E1
	xce		; FB
	ldy $F2.b		; A4 F2
	ora ($31.b)		; 12 31
	sbc $AFFEFE.l,X		; FF FE FE AF
	adc $B4.b,S		; 63 B4
	and ($0E.b,S),Y		; 33 0E
	inc $EBE0.w,X		; FE E0 EB
	and $25.b		; 25 25
	rol $DEB4.w,X		; 3E B4 DE
	sbc $34E6FC.l		; EF FC E6 34
	bmi -34.b		; 30 DE
	sbc $D5FCB4.l		; EF B4 FC D5
	mvp $CD,$40		; 44 40 CD
	sbc $B4B40C.l,X		; FF 0C B4 B4
	adc $51.b,S		; 63 51
	cpy $0D0E.w		; CC 0E 0D
	lda ($65.b)		; B2 65
	.db $42, $B4		; 42 B4
	wai		; CB
	sbc $73A21D.l,X		; FF 1D A2 73
	eor $CB.b,S		; 43 CB
	sbc $D10FC4.l,X		; FF C4 0F D1
	and ($21.b)		; 32 21
	sbc $F0F1.w,X		; FD F1 F0
	cmp ($C4.b,X)		; C1 C4
	eor ($21.b,X)		; 41 21
	sbc $0FF1.w,X		; FD F1 0F
	bne  51.b		; D0 33
	ora ($C4.b),Y		; 11 C4
	sbc $00F1.w,X		; FD F1 00
	cmp $EE1152.l		; CF 52 11 EE
	sbc ($C4.b),Y		; F1 C4
	ora $1143DE.l,X		; 1F DE 43 11
	sbc $1FE2.w,X		; FD E2 1F
	sbc $43C4.w		; ED C4 43
	ora ($FC.b),Y		; 11 FC
	sbc ($1F.b)		; F2 1F
	inc $1133.w		; EE 33 11
	cpy $FC.b		; C4 FC
	sbc ($1F.b)		; F2 1F
	inc $1133.w		; EE 33 11
	sbc $C401.w		; ED 01 C4
	ora $1042EE.l,X		; 1F EE 42 10
	sbc $1F01.w,X		; FD 01 1F
	cmp $3303C0.l,X		; DF C0 03 33
	ora $DC00E0.l,X		; 1F E0 00 DC
	ora ($33.b,S),Y		; 13 33
	bcs  45.b		; B0 2D
	bne  31.b		; D0 1F
	txs		; 9A
	rol $65.b		; 26 65
	trb $C0E1.w		; 1C E1 C0
	ora $3223CE.l		; 0F CE 23 32
	inc $0EF0.w,X		; FE F0 0E
	dec $33C0.w		; CE C0 33
	and ($FE.b)		; 32 FE
	ora ($0E.b,X)		; 01 0E
	cmp $C03133.l		; CF 33 31 C0
	inc $0D00.w,X		; FE 00 0D
	cpy #$2033.w		; C0 33 20
	sbc $FDC000.l		; EF 00 C0 FD
	cmp ($33.b),Y		; D1 33
	jsr $00EF.w		; 20 EF 00
	jsr ($C4E2.w,X)		; FC E2 C4
	bpl  -2.b		; 10 FE
	sbc ($1F.b),Y		; F1 1F
	inc $1023.w,X		; FE 23 10
	sbc $D0B0.w,X		; FD B0 D0
	ora $5416B9.l,X		; 1F B9 16 54
	ora $0EE1.w,X		; 1D E1 0E
	bcs -85.b		; B0 AB
	rol $53.b,X		; 36 53
	sbc $0EF1.w,X		; FD F1 0E
	sta $B456.w,X		; 9D 56 B4
	inc $21CF.w,X		; FE CF 21
	sbc $60C6.w,X		; FD C6 60
	inc $B0C0.w,X		; FE C0 B0
	ora ($FB.b,X)		; 01 FB
	ldx #$3F64.w		; A2 64 3F
	cmp $B0EA10.l,X		; DF 10 EA B0
	pei ($54.b)		; D4 54
	rol $10D0.w		; 2E D0 10
	phx		; DA
	ora $53.b		; 05 53
	bcs  29.b		; B0 1D
	cpx #$CB0F.w		; E0 0F CB
	and $43.b		; 25 43
	ora $B0F0.w		; 0D F0 B0
	ora $3235BC.l		; 0F BC 35 32
	ora $0FF0.w		; 0D F0 0F
	lda $34B0.w,X		; BD B0 34
	and ($FD.b)		; 32 FD
	beq  14.b		; F0 0E
	lda $B43244.l,X		; BF 44 32 B4
	cmp $E40D11.l,X		; DF 11 0D E4
	rti		; 40

	ora $B011C0.l		; 0F C0 11 B0
	ora $43B0.w		; 0D B0 43
	and ($EE.b)		; 32 EE
	beq  13.b		; F0 0D
	cmp ($B4.b,X)		; C1 B4
	and $10D00F.l,X		; 3F 0F D0 10
	asl $30E4.w		; 0E E4 30
	ora $F0FEB0.l,X		; 1F B0 FE F0
	ora $33C1.w		; 0D C1 33
	and ($FE.b)		; 32 FE
	sbc $D40FB4.l,X		; FF B4 0F D4
	bmi  16.b		; 30 10
	cmp $D41E10.l		; CF 10 1E D4
	ldy $30.b,X		; B4 30
	bpl -49.b		; 10 CF
	bpl  15.b		; 10 0F
	cmp ($41.b)		; D2 41
	bpl -80.b		; 10 B0
	asl $0FFF.w		; 0E FF 0F
	cmp $3412.w		; CD 12 34
	asl $B4FF.w,X		; 1E FF B4
	brk $EE.b		; 00 EE
	eor ($11.b)		; 52 11
	sbc $0100.w		; ED 00 01
	sbc $33B4.w		; ED B4 33
	ora ($1C.b),Y		; 11 1C
	sbc ($F0.b),Y		; F1 F0
	ora $21F4.w		; 0D F4 21
	clv		; B8
	ora $FFE4.w,X		; 1D E4 FF
	rol $3DE4.w		; 2E E4 3D
	ora ($C0.b,X)		; 01 C0
	ldy $1F.b		; A4 1F
	sbc ($DA.b),Y		; F1 DA
	and [$13.b],Y		; 37 13
	tsa		; 3B
	sbc ($EF.b,X)		; E1 EF
	ldy $1D.b		; A4 1D
	lda ($61.b)		; B2 61
	.db $42, $DE		; 42 DE
	asl $CCF2.w		; 0E F2 CC
	ldy $15.b		; A4 15
	and $3E.b,S		; 23 3E
	sbc $CF2DEF.l		; EF EF 2D CF
	eor ($A4.b)		; 52 A4
	bit $EE.b,X		; 34 EE
	asl $FCE1.w		; 0E E1 FC
	pei ($33.b)		; D4 33
	rti		; 40

	tay		; A8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	jsr $24D1.w		; 20 D1 24
	sbc ($0B.b,X)		; E1 0B
	ora ($98.b),Y		; 11 98
	lda ($2E.b,S),Y		; B3 2E
	sbc ($62.b,X)		; E1 62
	bpl -81.b		; 10 AF
	ora $9404.w		; 0D 04 94
	sbc $65BE.w,X		; FD BE 65
	adc $1E.b		; 65 1E
	cpx $EDC1.w		; EC C1 ED
	tya		; 98
	sbc ($7F.b),Y		; F1 7F
	rol $FEB0.w,X		; 3E B0 FE
	jsl $A4C5EF.l		; 22 EF C5 A4
	and ($33.b)		; 32 33
	beq  14.b		; F0 0E
	ora $22D0FD.l		; 0F FD D0 22
	tay		; A8
	bpl -47.b		; 10 D1
	sbc $F0E110.l,X		; FF 10 E1 F0
	lsr $9812.w,X		; 5E 12 98
	ldy #$EF.b		; A0 EF
	asl $F1F1.w,X		; 1E F1 F1
	jsl $98DE13.l		; 22 13 DE 98
	and $E000.w		; 2D 00 E0
	ora ($0F.b,X)		; 01 0F
	jsl $88D13F.l		; 22 3F D1 88
	cmp $BE.b		; C5 BE
	sbc ($0F.b,X)		; E1 0F
	ora $15.b		; 05 15
	ora #$7B.b		; 09 7B
	tya		; 98
	and $12DF.w,X		; 3D DF 12
	beq -15.b		; F0 F1
	bit $B1.b,X		; 34 B1
	brk $94.b		; 00 94
	asl $0EEE.w,X		; 1E EE 0E
	cmp $61FF.w,X		; DD FF 61
	ora $14.b,S		; 03 14
	sty $F0.b,X		; 94 F0
	sbc $E1CC1D.l		; EF 1D CC E1
	eor $984512.l,X		; 5F 12 45 98
	bcs -14.b		; B0 F2
	sbc $2D22E1.l		; EF E1 22 2D
	and $CE9820.l,X		; 3F 20 98 CE
	and ($EE.b,X)		; 21 EE
.ACCU 8
	sep #$23		; E2 23
	ora $203E.w,X		; 1D 3E 20
	dey		; 88
	ldy $FD21.w,X		; BC 21 FD
	sbc $3F5B52.l		; EF 52 5B 3F
	ora ($88.b)		; 12 88
	cpx $0D02.w		; EC 02 0D
	xce		; FB
	and ($32.b,S),Y		; 33 32
	ldy $D5.b,X		; B4 D5
	dey		; 88
	rol $2DC1.w		; 2E C1 2D
	xce		; FB
	cmp $F6.b,X		; D5 F6
	sbc $238813.l,X		; FF 13 88 23
	lda $DDEF0F.l,X		; BF 0F EF DD
	ora ($42.b)		; 12 42
	sbc ($88.b),Y		; F1 88
	jsr $EE4E.w		; 20 4E EE
	ora $EFFF.w,X		; 1D FF EF
	ora $F08843.l,X		; 1F 43 88 F0
	ora ($5F.b),Y		; 11 5F
	sbc $E01E.w		; ED 1E E0
	bne  29.b		; D0 1D
	dey		; 88
	bit $02.b		; 24 02
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	jsr ($FEE1.w,X)		; FC E1 FE
	sbc $F10E88.l,X		; FF 88 0E F1
	adc $4ED6F3.l		; 6F F3 D6 4E
	bcs  15.b		; B0 0F
	dey		; 88
	sbc $DFF1.w,X		; FD F1 DF
	ora [$0D.b],Y		; 17 0D
	and $88FE63.l		; 2F 63 FE 88
	inc $E00E.w		; EE 0E E0
	sbc ($C1.b),Y		; F1 C1
	and $EF.b		; 25 EF
	trb $88.b		; 14 88
	.db $42, $FA		; 42 FA
	ora $00C10E.l		; 0F 0E C1 00
	cpx #$33.b		; E0 33
	dey		; 88
	sep #$05		; E2 05
	and ($CE.b),Y		; 31 CE
	ora $D00E.w		; 0D 0E D0
	rol $EF88.w,X		; 3E 88 EF
	adc ($1D.b,X)		; 61 1D
	trb $51.b		; 14 51
	dec $FFFF.w		; CE FF FF
	dey		; 88
	cmp ($00.b),Y		; D1 00
	sbc $03FF24.l		; EF 24 FF 03
	adc ($0C.b,X)		; 61 0C
	sei		; 78
	sbc $04CFEA.l		; EF EA CF 04
	cmp $31F6.w,X		; DD F6 31
	cmp $88.b		; C5 88
	and $00.b		; 25 00
	dec $E00D.w,X		; DE 0D E0
	ora ($00.b,X)		; 01 00
	sbc $7278.w,X		; FD 78 72
	bne  51.b		; D0 33
	adc $FF.b		; 65 FF
	cmp $781CEC.l		; CF EC 1C 78
	bmi  14.b		; 30 0E
	sbc $314EEE.l,X		; FF EE 4E 31
	mvn $78,$6F		; 54 6F 78
	xce		; FB
	trb $F30E.w		; 1C 0E F3
	lda ($DE.b)		; B2 DE
	and $78D2.w		; 2D D2 78
	and ($31.b,S),Y		; 33 31
	mvp $CF,$00		; 44 00 CF
	lda ($C0.b,S),Y		; B3 C0
	jmp $2D88.w		; 4C 88 2D
	asl $020E.w,X		; 1E 0E 02
	ora ($03.b,X)		; 01 03
	jsl $E0880F.l		; 22 0F 88 E0
	ora $E000F0.l		; 0F F0 00 E0
	asl $E50F.w		; 0E 0F E5
	dey		; 88
	sbc ($3D.b,S),Y		; F3 3D
	bvc  15.b		; 50 0F
	cmp ($D1.b),Y		; D1 D1
	sbc $1E8810.l,X		; FF 10 88 1E
	bit $2F2D.w		; 2C 2D 2F
	and $F11221.l,X		; 3F 21 12 F1
	sei		; 78
	lda $1FFF0D.l,X		; BF 0D FF 1F
	ora ($FE.b,X)		; 01 FE
	beq   2.b		; F0 02
	sei		; 78
	ora $DF.b,S		; 03 DF
	eor $6D.b,S		; 43 6D
	ora $21FDFD.l		; 0F FD FD 21
	sei		; 78
	cmp ($0F.b)		; D2 0F
	sbc ($DF.b),Y		; F1 DF
	jmp $345B.w		; 4C 5B 34
	trb $78.b		; 14 78
	rol $E11C.w		; 2E 1C E1
	sbc $D303.w		; ED 03 D3
	ora $D288D2.l		; 0F D2 88 D2
	brk $2D.b		; 00 2D
	and ($11.b),Y		; 31 11
	and $881C0E.l		; 2F 0E 1C 88
	beq -15.b		; F0 F1
	sbc ($01.b)		; F2 01
	ora $E005E0.l		; 0F E0 05 E0
	dey		; 88
	rol $F141.w		; 2E 41 F1
	jmp.w [$111C]		; DC 1C 11
	sbc ($14.b)		; F2 14
	tya		; 98
	ora ($FF.b,X)		; 01 FF
	sbc $213D00.l		; EF 00 3D 21
	tsb $E0.b		; 04 E0
	dey		; 88
	inc A		; 1A
	sbc $10D2.w,X		; FD D2 10
	and ($33.b,S),Y		; 33 33
	jsr ($98EA.w,X)		; FC EA 98
	asl $0FF4.w		; 0E F4 0F
	adc $CF33.w,X		; 7D 33 CF
	asl A		; 0A
	brk $98.b		; 00 98
	cpy $12.b		; C4 12
	bit $01.b,X		; 34 01
	jmp.w [$EFDF]		; DC DF EF
	dec $A8.b		; C6 A8
	and $FC015F.l,X		; 3F 5F 01 FC
	ora $10F0.w		; 0D F0 10
	.db $42, $A8		; 42 A8
	ora ($FD.b,S),Y		; 13 FD
	inc $EFD1.w		; EE D1 EF
	rol $F4.b,X		; 36 F4
	and $0FA8.w		; 2D A8 0F
	lda $131D.w,X		; BD 1D 13
	jsl $BD1E50.l		; 22 50 1E BD
	clv		; B8
	beq -15.b		; F0 F1
	sbc ($31.b,S),Y		; F3 31
	brk $FE.b		; 00 FE
	inc $A8E2.w,X		; FE E2 A8
	sbc ($53.b)		; F2 53
	jsl $E0BD0C.l		; 22 0C BD E0
	ora ($05.b,X)		; 01 05
	clv		; B8
	eor ($E1.b,X)		; 41 E1
	dec $F1FF.w,X		; DE FF F1
	and ($22.b,X)		; 21 22
	ora $DFE0B8.l		; 0F B8 E0 DF
	bpl -15.b		; 10 F1
	bit $00.b		; 24 00
	inc $A8EF.w,X		; FE EF A8
	sbc ($04.b,X)		; E1 04
	eor ($30.b,X)		; 41 30
	cmp $F1EE.w,X		; DD EE F1
	and $35F1A8.l,X		; 3F A8 F1 35
	tas		; 1B
	bne -17.b		; D0 EF
	ora ($02.b),Y		; 11 02
	and $FE1FA8.l,X		; 3F A8 1F FE
	beq   2.b		; F0 02
	ora $1C36EF.l		; 0F EF 36 1C
	tya		; 98
	sbc $0301DC.l		; EF DC 01 03
	mvn $0B,$0E		; 54 0E 0B
	cmp $10B8.w,X		; DD B8 10
	ora $FD2400.l		; 0F 00 24 FD
	beq  14.b		; F0 0E
	bpl -88.b		; 10 A8
	eor $E0EE41.l		; 4F 41 EE E0
	beq  18.b		; F0 12
	xce		; FB
	ora $B8.b		; 05 B8
	rti		; 40

	sbc $F100.w		; ED 00 F1
	ora ($10.b,X)		; 01 10
	ora $1FB80E.l,X		; 1F 0E B8 1F
	ora ($1E.b,X)		; 01 1E
	cpx #$45.b		; E0 45
	xce		; FB
	cmp ($0F.b)		; D2 0F
	tay		; A8
	ora ($4E.b,S),Y		; 13 4E
	brk $0D.b		; 00 0D
	sbc ($10.b),Y		; F1 10
	ora $F3C4BE.l,X		; 1F BE C4 F3
	and ($EF.b)		; 32 EF
	beq  -1.b		; F0 FF
	ora ($00.b)		; 12 00
	brk $B8.b		; 00 B8
	asl $0E21.w		; 0E 21 0E
	cmp ($57.b,X)		; C1 57
	sbc #$D1.b		; E9 D1
	and $43E0B4.l,X		; 3F B4 E0 43
	ora $0F00.w		; 0D 00 0F
	ora ($FA.b),Y		; 11 FA
	ldy $C8.b,X		; B4 C8
	rol $21CE.w,X		; 3E CE 21
	asl $FE13.w,X		; 1E 13 FE
	sep #$00		; E2 00
	iny		; C8
	ora $52E21E.l,X		; 1F 1E E2 52
	ldy $2EF4.w,X		; BC F4 2E
	sbc ($C8.b)		; F2 C8
	and $0F21DF.l		; 2F DF 21 0F
	sbc ($E1.b),Y		; F1 E1
	.db $42, $EA		; 42 EA
	clv		; B8
	sbc $5F.b,X		; F5 5F
	cmp ($41.b),Y		; D1 41
	wai		; CB
	ora $2D.b,X		; 15 2D
	dec $14C8.w		; CE C8 14
	and $1F12BF.l		; 2F BF 12 1F
	sbc ($2E.b),Y		; F1 2E
	sbc $0E21C8.l,X		; FF C8 21 0E
	sbc $E1FA63.l		; EF 63 FA E1
	rti		; 40

	beq -56.b		; F0 C8
	cop $EE.b		; 02 EE
	cop $20.b		; 02 20
	dec $4D15.w		; CE 15 4D
	ldx $14C8.w,Y		; BE C8 14
	ora $1E11.w,X		; 1D 11 1E
	cmp ($31.b),Y		; D1 31
	phd		; 0B
	sbc ($C8.b,S),Y		; F3 C8
	eor ($BD.b),Y		; 51 BD
	pea $F03D.w		; F4 3D F0
	bmi -34.b		; 30 DE
	and $C8.b,S		; 23 C8
	ora $52D2.w		; 0D D2 52
	stp		; DB
	sbc $20.b		; E5 20
	cmp $0DC440.l,X		; DF 40 C4 0D
.ACCU 8
	sep #$2F		; E2 2F
	cmp $E2FB44.l,X		; DF 44 FB E2
	bmi -64.b		; 30 C0
	sbc $F00E12.l,X		; FF 12 0E F0
	sbc $CD4003.l,X		; FF 03 40 CD
	clv		; B8
	lsr $43AD.w,X		; 5E AD 43
	sbc $F012.w		; ED 12 F0
	and $FA.b,S		; 23 FA
	clv		; B8
	ldy $64.b,X		; B4 64
	wai		; CB
	ora $0F.b,S		; 03 0F
	sbc ($00.b),Y		; F1 00
	jsl $A30CB8.l		; 22 B8 0C A3
	eor $EB.b		; 45 EB
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	clv		; B8
	jsl $62D20A.l		; 22 0A D2 62
	sbc $1EE2.w		; ED E2 1E
	ora ($B8.b,X)		; 01 B8
	bpl  33.b		; 10 21
	jmp.w [$51E4]		; DC E4 51
	cmp $00F2.w,X		; DD F2 00
	clv		; B8
	brk $03.b		; 00 03
	asl $26CD.w,X		; 1E CD 26
	and $B810CE.l		; 2F CE 10 B8
	bpl   0.b		; 10 00
	and ($DC.b)		; 32 DC
	cmp ($53.b)		; D2 53
	inc $B8E0.w		; EE E0 B8
	brk $10.b		; 00 10
	ora ($2D.b)		; 12 2D
	ldx $3D26.w,Y		; BE 26 3D
	dec $10B8.w,X		; DE B8 10
	cop $F2.b		; 02 F2
	jsr $F4CC.w		; 20 CC F4
	adc ($CD.b,X)		; 61 CD
	clv		; B8
	sbc ($20.b,X)		; E1 20
	bpl  34.b		; 10 22
	cpy $62D4.w		; CC D4 62
	cpx $D0B8.w		; EC B8 D0
	ora $22.b,S		; 03 22
	ora $6205BB.l,X		; 1F BB 05 62
	xba		; EB
	clv		; B8
	dec $4225.w		; CE 25 42
	xba		; EB
	lda $EC4E44.l,X		; BF 44 4E EC
	clv		; B8
	sbc $AB5024.l,X		; FF 24 50 AB
	sbc $52.b,S		; E3 52
	beq -35.b		; F0 DD
	clv		; B8
	pea $EC40.w		; F4 40 EC
	ora ($0C.b)		; 12 0C
	trb $01.b		; 14 01
	cpx #$B8.b		; E0 B8
	sbc $DB51E2.l,X		; FF E2 51 DB
	sbc $40.b,S		; E3 40
	ora ($FB.b),Y		; 11 FB
	clv		; B8
	cmp ($63.b),Y		; D1 63
	jsr ($11D1.w,X)		; FC D1 11
	and $ED.b,S		; 23 ED
	cmp ($A4.b,X)		; C1 A4
	pea $0E41.w		; F4 41 0E
	cmp $CF2D46.l		; CF 46 2D CF
	ora $20F1A8.l,X		; 1F A8 F1 20
	ora ($0D.b,X)		; 01 0D
	cmp ($43.b),Y		; D1 43
	nop		; EA
	sbc ($A8.b,S),Y		; F3 A8
	bit $00.b		; 24 00
	lda $53E3.w,X		; BD E3 53
	jmp.w [$36E0]		; DC E0 36
	tay		; A8
	tsb $11DF.w		; 0C DF 11
	sbc ($11.b),Y		; F1 11
	ora $A8EF1D.l,X		; 1F 1D EF A8
	eor $0C.b,S		; 43 0C
	cmp ($16.b,X)		; C1 16
	and $3204BA.l,X		; 3F BA 04 32
	ldy $1F.b		; A4 1F
	sbc ($32.b,X)		; E1 32
	jsr ($41E2.w,X)		; FC E2 41
	dex		; CA
	sbc $A8.b		; E5 A8
	rol $04AC.w		; 2E AC 04
	bmi -16.b		; 30 F0
	brk $1D.b		; 00 1D
	sbc ($B8.b,X)		; E1 B8
	and ($FE.b,X)		; 21 FE
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	cmp $1F02.w,X		; DD 02 1F
	beq -88.b		; F0 A8
	and $FB.b,X		; 35 FB
	ldx #$34.b		; A2 34
	inc $40E2.w,X		; FE E2 40
	ldy $C1A4.w,X		; BC A4 C1
	eor ($DA.b),Y		; 51 DA
	ora [$60.b],Y		; 17 60
	stz $1C03.w		; 9C 03 1C
	tay		; A8
	and $3C.b		; 25 3C
	lda $F20C24.l,X		; BF 24 0C F2
	eor ($CC.b),Y		; 51 CC
	ldy $BF.b		; A4 BF
	jsl $6E16EC.l		; 22 EC 16 6E
	plb		; AB
	bit $0C.b		; 24 0C
	ldy $E3.b		; A4 E3
	adc ($BA.b,S),Y		; 73 BA
	sbc ($3E.b,S),Y		; F3 3E
	cmp $A80A65.l		; CF 65 0A A8
	and ($3C.b,S),Y		; 33 3C
	sbc ($52.b,X)		; E1 52
	phx		; DA
	pea $DF3F.w		; F4 3F DF
	tay		; A8
	eor $0A.b,S		; 43 0A
	cmp ($60.b),Y		; D1 60
	dec $2B24.w,X		; DE 24 2B
	cmp $2DF3A4.l		; CF A4 F3 2D
	cmp ($64.b)		; D2 64
	stp		; DB
	cmp ($20.b)		; D2 20
	cmp $DB50A8.l,X		; DF A8 50 DB
	ora ($3F.b)		; 12 3F
	sbc $E2EC42.l		; EF 42 EC E2
	tay		; A8
	rti		; 40

	dec $ED35.w,X		; DE 35 ED
	cpy #$43.b		; C0 43
	dec $A813.w,X		; DE 13 A8
	rol $34CD.w		; 2E CD 34
	sbc $ED3FE2.l,X		; FF E2 3F ED
	ora ($98.b)		; 12 98
	asl $41E3.w,X		; 1E E3 41
	wai		; CB
	cpx $40.b		; E4 40
	bcs  53.b		; B0 35
	tya		; 98
	jsr ($32B1.w,X)		; FC B1 32
	sbc $AF2F13.l		; EF 13 2F AF
	tsb $88.b		; 04 88
	beq -13.b		; F0 F3
	rti		; 40

	plb		; AB
	pea $E021.w		; F4 21 E0
	bit $88.b,X		; 34 88
	jmp.w [$3FD1]		; DC D1 3F
	cpx #$45.b		; E0 45
	phd		; 0B
	lda ($21.b,X)		; A1 21
	dey		; 88
	ora ($F4.b,X)		; 01 F4
	ora $3E13BD.l,X		; 1F BD 13 3E
	beq  48.b		; F0 30
	sei		; 78
	phx		; DA
	and ($3C.b,X)		; 21 3C
	cmp ($75.b),Y		; D1 75
	xba		; EB
	lda ($20.b,X)		; A1 20
	stz $E0.b,X		; 74 E0
	rol $3D.b,X		; 36 3D
	cmp $C4CB33.l		; CF 33 CB C4
	stz $74.b		; 64 74
	cpx $0EF1.w		; EC F1 0E
	cpx #$43.b		; E0 43
	ora $2EE3.w		; 0D E3 2E
	stz $AC.b,X		; 74 AC
	rol $5F.b		; 26 5F
	bcs  16.b		; B0 10
	cmp $1005.w,X		; DD 05 10
	stz $00.b,X		; 74 00
	bpl -21.b		; 10 EB
	cop $40.b		; 02 40
	inc $DE15.w		; EE 15 DE
	bra -17.b		; 80 EF
	sbc $1003EE.l,X		; FF EE 03 10
	dec $0E02.w		; CE 02 0E
	bvs -65.b		; 70 BF
	eor $1B.b,X		; 55 1B
	ldy $2F12.w		; AC 12 2F
	sbc ($11.b)		; F2 11
	stz $ED.b,X		; 74 ED
	sbc $FC5C24.l,X		; FF 24 5C FC
	ora $00.b,S		; 03 00
	beq 112.b		; F0 70
	ora ($23.b,X)		; 01 23
	ora $EFDC.w,X		; 1D DC EF
	and ($10.b,X)		; 21 10
	sbc $CC0070.l,X		; FF 70 00 CC
	cmp ($23.b,X)		; C1 23
	ora $EFCD.w,X		; 1D CD EF
	ora ($70.b,X)		; 01 70
	eor $32.b,S		; 43 32
	asl $EDEE.w		; 0E EE ED
	cmp $74FD22.l,X		; DF 22 FD 74
	lda ($22.b)		; B2 22
	brk $00.b		; 00 00
	bpl  -3.b		; 10 FD
	ora $416422.l		; 0F 22 64 41
	dec $0BE0.w,X		; DE E0 0B
	and ($43.b),Y		; 31 43
	phd		; 0B
	cmp ($60.b,X)		; C1 60
	beq  31.b		; F0 1F
	cpx $D3BC.w		; EC BC D3
	bpl -20.b		; 10 EC
	sbc ($60.b)		; F2 60
	and $DC.b,S		; 23 DC
	tax		; AA
	cmp $2C5612.l		; CF 12 56 2C
	lda $0A2264.l		; AF 64 22 0A
	bmi  14.b		; 30 0E
	cop $4C.b		; 02 4C
	ora #$42.b		; 09 42
	rts		; 60

	ora ($10.b)		; 12 10
	ora ($22.b)		; 12 22
	and $3D.b,S		; 23 3D
	tax		; AA
	lda ($64.b,S),Y		; B3 64
	jsl $01DEEE.l		; 22 EE DE 01
	and ($0B.b),Y		; 31 0B
	ora $106810.l,X		; 1F 10 68 10
	cpx #$00.b		; E0 00
	and ($FF.b,X)		; 21 FF
	cpy #$41.b		; C0 41
	ora $0E1160.l		; 0F 60 11 0E
	cpy $00E3.w		; CC E3 00
	sbc $64FEFF.l,X		; FF FF FE 64
	brk $F1.b		; 00 F1
	brk $4E.b		; 00 4E
	sbc $1112A2.l,X		; FF A2 12 11
	bvc  15.b		; 50 0F
	xba		; EB
	cpy #$22.b		; C0 22
	lda $0F11F0.l		; AF F0 11 0F
	mvp $06,$ED		; 44 ED 06
	adc $2D.b,S		; 63 2D
	plb		; AB
	beq  67.b		; F0 43
	mvp $53,$50		; 44 50 53
	xba		; EB
	dec $12.b		; C6 12
	ora ($23.b,X)		; 01 23
	and ($12.b)		; 32 12
	bvc  58.b		; 50 3A
	inc DMASRC1B.w		; EE 14 43
	ora $23F000.l		; 0F 00 F0 23
	bvc  67.b		; 50 43
	and ($10.b,X)		; 21 10
	sbc $1F13E6.l,X		; FF E6 13 1F
	sbc $140B38.l		; EF 38 0B 14
	bpl -64.b		; 10 C0
	bcc  99.b		; 90 63
	ora $7F500D.l		; 0F 0D 50 7F
	sbc $EEFFFF.l,X		; FF FF FF EE
	cpx #$0F.b		; E0 0F
	cpx $5438.w		; EC 38 54
	and $0EFE.w,X		; 3D FE 0E
	sbc $3014.w		; ED 14 30
	sbc $FC28.w,X		; FD 28 FC
	cmp $1C47.w		; CD 47 1C
.ACCU 16
	rep #$2D		; C2 2D
	plb		; AB
	sbc $38.b,X		; F5 38
	jsl $CEFFF0.l		; 22 F0 FF CE
	inc $3E.b		; E6 3E
	ora ($EE.b),Y		; 11 EE
	sec		; 38
	ldy $14.b		; A4 14
	bit $F21E.w		; 2C 1E F2
	jsr $F3FF.w		; 20 FF F3
	rts		; 60

	ora ($11.b),Y		; 11 11
	jsl $11C021.l		; 22 21 C0 11
	and ($11.b,X)		; 21 11
	sec		; 38
	inc SETINI.w		; EE 33 21
	inc $F3E0.w,X		; FE E0 F3
	rti		; 40

	ora $2150.w		; 0D 50 21
	ora ($22.b)		; 12 22
	jsr $11F7.w		; 20 F7 11
	ora ($20.b),Y		; 11 20
	bvc  -2.b		; 50 FE
	cpx #$11.b		; E0 11
	brk $01.b		; 00 01
	lda $34EFDD.l		; AF DD EF 34
	and $DCE3FC.l,X		; 3F FC E3 DC
	pea $0F31.w		; F4 31 0F
	inc $DF38.w,X		; FE 38 DF
	and $00.b		; 25 00
	dec $DF01.w,X		; DE 01 DF
	cop $2F.b		; 02 2F
	sec		; 38
	sbc ($11.b,X)		; E1 11
	cmp $21E2.w		; CD E2 21
	beq   2.b		; F0 02
	cmp $CD35.w,X		; DD 35 CD
	sbc ($11.b),Y		; F1 11
	jsl $50DE2F.l		; 22 2F DE 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	sbc $1CEFD3.l		; EF D3 EF 1C
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	dec $BF01.w,X		; DE 01 BF
	sbc $EFEEEE.l		; EF EE EE EF
	sbc $60.b,X		; F5 60
	bne  14.b		; D0 0E
	and ($DF.b,X)		; 21 DF
	and ($D0.b,S),Y		; 33 D0
	brk $DC.b		; 00 DC
	mvn $02,$24		; 54 24 02
	sbc $141D.w,X		; FD 1D 14
	ldx $0F.b,Y		; B6 0F
	ror $0160.w		; 6E 60 01
	ora ($C2.b),Y		; 11 C2
	and ($12.b,X)		; 21 12
	bpl   0.b		; 10 00
	ora ($60.b),Y		; 11 60
	jsl $43F02E.l		; 22 2E F0 43
	sbc $EE4D25.l,X		; FF 25 4D EE
	rts		; 60

	ora $3D.b,X		; 15 3D
.ACCU 8
	sep #$65		; E2 65
	and $3303FF.l		; 2F FF 03 33
	stz $DE.b		; 64 DE
	.db $62, $EE, $0D		; 62 EE 0D
	sbc ($32.b),Y		; F1 32
	sbc ($E0.b,X)		; E1 E0
	stz $F3.b		; 64 F3
	ora $C2FE13.l		; 0F 13 FE C2
	and ($EC.b,X)		; 21 EC
	cmp ($68.b,X)		; C1 68
	jmp ($54FA.w)		; 6C FA 54
	ldy $CB63.w		; AC 63 CB
	and $69.b,X		; 35 69
	stz $DC.b,X		; 74 DC
	ora ($6E.b,S),Y		; 13 6E
	bcs   1.b		; B0 01
	beq -34.b		; F0 DE
	jsl $04FF78.l		; 22 78 FF 04
	sbc $70A3.w		; ED A3 70
	tsb $4ED4.w		; 0C D4 4E
	stz $00.b,X		; 74 00
	cmp $13D10F.l,X		; DF 0F D1 13
	asl $5FD5.w,X		; 1E D5 5F
	stz $FE.b,X		; 74 FE
	bne -33.b		; D0 DF
	rol $F401.w		; 2E 01 F4
	jmp ($74D2.w)		; 6C D2 74
	and $6E.b		; 25 6E
	lsr $C099.w,X		; 5E 99 C0
	cpx $16F3.w		; EC F3 16
	bra  67.b		; 80 43
	ora ($00.b,X)		; 01 00
	inc $EDEF.w,X		; FE EF ED
	sbc $557001.l		; EF 01 70 55
	sbc $30F5.w,X		; FD F5 30
	wai		; CB
	ldy $DB33.w,X		; BC 33 DB
	dey		; 88
	jmp $001F.w		; 4C 1F 00
	and $0F3E01.l		; 2F 01 3E 0F
	bit $84.b		; 24 84
	tsa		; 3B
	lda ($0B.b),Y		; B1 0B
	tyx		; BB
	cmp $BEDEED.l,X		; DF ED DE BE
	dey		; 88
	bvc -11.b		; 50 F5
	bvc  -2.b		; 50 FE
	inc $5B91.w		; EE 91 5B
	cmp ($A8.b,X)		; C1 A8
	bpl -16.b		; 10 F0
	rol $22F0.w		; 2E F0 22
	and ($ED.b,S),Y		; 33 ED
	rol $AE98.w		; 2E 98 AE
	sbc $3E061E.l		; EF 1E 06 3E
	jsr $DED2.w		; 20 D2 DE
	tay		; A8
	lsr $0B.b		; 46 0B
	bpl -19.b		; 10 ED
	cpx #$0F.b		; E0 0F
	ora ($30.b,X)		; 01 30
	clv		; B8
	bpl  15.b		; 10 0F
	brk $41.b		; 00 41
	cmp $F1D02F.l,X		; DF 2F D0 F1
	clv		; B8
	beq   2.b		; F0 02
	sbc ($00.b)		; F2 00
	ora $01EE24.l		; 0F 24 EE 01
	clv		; B8
	inc $1FF0.w		; EE F0 1F
	ora ($01.b,X)		; 01 01
	ora ($FF.b),Y		; 11 FF
	bit $B8.b		; 24 B8
	sbc $FD01.w,X		; FD 01 FD
	beq  31.b		; F0 1F
	ora ($F0.b),Y		; 11 F0
	and ($B8.b,X)		; 21 B8
	sbc $12FB16.l,X		; FF 16 FB 12
	inc $00E0.w		; EE E0 00
	ora ($B8.b)		; 12 B8
	sbc $240F20.l,X		; FF 20 0F 24
	tsb $ED02.w		; 0C 02 ED
	beq -72.b		; F0 B8
	ora $02E013.l,X		; 1F 13 E0 02
	cpx #$43.b		; E0 43
	jmp.w [$B824]		; DC 24 B8
	lda $F110.w,X		; BD 10 F1
	jsr $20FF.w		; 20 FF 20
	sbc $7D.b,S		; E3 7D
	ldy $F1.b,X		; B4 F1
	eor ($DD.b,X)		; 41 DD
	cmp $10CF.w,X		; DD CF 10
	cpx #$FF.b		; E0 FF
	clv		; B8
	asl $09.b,X		; 16 09
	trb $ED.b		; 14 ED
	asl $221F.w,X		; 1E 1F 22
	sbc $0000C8.l		; EF C8 00 00
	and ($DF.b),Y		; 31 DF
	rol $E1F1.w,X		; 3E F1 E1
	sbc ($C8.b)		; F2 C8
	ora $121EF0.l,X		; 1F F0 1E 12
	tsa		; 3B
	ora $FD.b,S		; 03 FD
	and $0200C8.l		; 2F C8 00 02
	beq -16.b		; F0 F0
	ora $3FDF32.l		; 0F 32 DF 3F
	cpy $F0.b		; C4 F0
	sbc $0F10FF.l,X		; FF FF 10 0F
	asl $31F1.w		; 0E F1 31
	ldy $E4.b,X		; B4 E4
	eor $EE0F.w		; 4D 0F EE
	sbc ($2F.b,X)		; E1 2F
	sbc $27B8DE.l,X		; FF DE B8 27
	lda $B250.w		; AD 50 B2
	beq -15.b		; F0 F1
	bmi -17.b		; 30 EF
	clv		; B8
	beq   3.b		; F0 03
	tad		; 5B
	dec $EC.b,X		; D6 EC
	and $B4220F.l		; 2F 0F 22 B4
	bpl  -3.b		; 10 FD
	inc $0026.w		; EE 26 00
	eor ($E0.b,X)		; 41 E0
	inc $E0B4.w,X		; FE B4 E0
	ora ($0E.b),Y		; 11 0E
	sbc $5FF4.w		; ED F4 5F
	ora ($0F.b,S),Y		; 13 0F
	clv		; B8
	ora $0E20F1.l,X		; 1F F1 20 0E
	beq   2.b		; F0 02
	eor $B8C5.w,X		; 5D C5 B8
	jsr ($1E2F.w,X)		; FC 2F 1E
	ora ($FF.b,S),Y		; 13 FF
	inc $5210.w,X		; FE 10 52
	ldy $F1.b		; A4 F1
	rts		; 60

	sbc $31C1EF.l		; EF EF C1 31
	phx		; DA
	lda $25B8.w,X		; BD B8 25
	cmp $C24F.w		; CD 4F C2
	brk $00.b		; 00 00
	and $DDB4D0.l,X		; 3F D0 B4 DD
	sbc $4F.b,X		; F5 4F
	ora ($FF.b,S),Y		; 13 FF
	sbc $B8120F.l,X		; FF 0F 12 B8
	inc $14F0.w		; EE F0 14
	eor #$12.b		; 49 12
	inc $1E10.w		; EE 10 1E
	clv		; B8
	rti		; 40

	inc $230E.w		; EE 0E 23
	jmp $FCE3.w		; 4C E3 FC
	jsr $1EB8.w		; 20 B8 1E
	and ($DE.b)		; 32 DE
	asl $4C23.w		; 0E 23 4C
	sbc $EE.b,S		; E3 EE
	clv		; B8
	bpl   0.b		; 10 00
	jsl $04F0DE.l		; 22 DE F0 04
	jmp $FEB8D2.l		; 5C D2 B8 FE
	ora ($1E.b,X)		; 01 1E
	eor ($CF.b,X)		; 41 CF
	ora $4B34.w		; 0D 34 4B
	ldy $02.b,X		; B4 02
	ora $FFFF.w		; 0D FF FF
	and ($FE.b)		; 32 FE
	jmp.w [$B8F4]		; DC F4 B8
	trb $DF10.w		; 1C 10 DF
	ora ($E4.b),Y		; 11 E4
	and $D1E0.w		; 2D E0 D1
	clv		; B8
	eor $DC.b		; 45 DC
	lsr $00B2.w,X		; 5E B2 00
	tsb $1B.b		; 04 1B
	ora $46CEB4.l		; 0F B4 CE 46
	sbc ($3E.b)		; F2 3E
	sbc $0F13FE.l		; EF FE 13 0F
	clv		; B8
	inc $3C15.w,X		; FE 15 3C
	cpx $DD.b		; E4 DD
	jsr $3EF2.w		; 20 F2 3E
	clv		; B8
	sbc $BF36E1.l		; EF E1 36 BF
	rol $00D2.w		; 2E D2 00
	tsb $B8.b		; 04 B8
	inc $F4FF.w		; EE FF F4
	jmp ($EDD3.w)		; 6C D3 ED
	jsr $B8F2.w		; 20 F2 B8
	rol $E0EF.w,X		; 3E EF E0
	lsr $CD.b		; 46 CD
	jmp $F1E2.w		; 4C E2 F1
	clv		; B8
	ora ($DF.b,S),Y		; 13 DF
	inc $5B05.w,X		; FE 05 5B
	cpx $CE.b		; E4 CE
	ora ($B8.b),Y		; 11 B8
	sbc ($4C.b)		; F2 4C
	sbc $A064D1.l,X		; FF D1 64 A0
	tsa		; 3B
	sbc ($B4.b),Y		; F1 B4
	sbc $EB1F14.l		; EF 14 1F EB
	pei ($6F.b)		; D4 6F
	bit $ED.b		; 24 ED
	ldy $FD.b,X		; B4 FD
	sbc ($40.b),Y		; F1 40
	ora $54CE.w		; 0D CE 54
	sbc ($2E.b,S),Y		; F3 2E
	clv		; B8
	ora ($E2.b,X)		; 01 E2
	eor $46DFD1.l		; 4F D1 DF 46
	ldy #$3D.b		; A0 3D
	ldy $EF.b,X		; B4 EF
	inc $0F03.w		; EE 03 0F
	sbc $5FD4.w,X		; FD D4 5F
	jsl $0FD0B8.l		; 22 B8 D0 0F
	and ($1D.b,X)		; 21 1D
	ora $E46B02.l		; 0F 02 6B E4
	ldy $0E.b,X		; B4 0E
	sbc $EE30E0.l,X		; FF E0 30 EE
	cmp $B8E246.l,X		; DF 46 E2 B8
	inc $0100.w,X		; FE 00 01
	and $44F1FE.l		; 2F FE F1 44
	lda $F22DB8.l,X		; BF B8 2D F2
	beq  63.b		; F0 3F
	ora $26F1.w		; 0D F1 26
	cmp $30B4.w		; CD B4 30
	bne  -2.b		; D0 FE
	ora ($1E.b),Y		; 11 1E
	dec $5FF4.w,X		; DE F4 5F
	ldy $21.b,X		; B4 21
	sbc $1F01FF.l		; EF FF 01 1F
	cmp $5FE5.w,X		; DD E5 5F
	ldy $21.b,X		; B4 21
	inc $010F.w		; EE 0F 01
	ora $60D4ED.l,X		; 1F ED D4 60
	clv		; B8
	cop $DF.b		; 02 DF
	jsr $1D01.w		; 20 01 1D
	asl $4906.w		; 0E 06 49
	clv		; B8
	cop $DF.b		; 02 DF
	jsr $0E01.w		; 20 01 0E
	asl $3B15.w		; 0E 15 3B
	clv		; B8
	sbc ($C0.b)		; F2 C0
	jsr $0E01.w		; 20 01 0E
	beq   5.b		; F0 05
	dec A		; 3A
	clv		; B8
	cop $C1.b		; 02 C1
	ora $E10E11.l,X		; 1F 11 0E E1
	asl $2A.b		; 06 2A
	ldy $02.b,X		; B4 02
	inc $00F0.w		; EE F0 00
	asl $F4DE.w,X		; 1E DE F4
	adc $DF12B4.l		; 6F B4 12 DF
	beq   0.b		; F0 00
	asl $05ED.w		; 0E ED 05
	eor $D13FB8.l,X		; 5F B8 3F D1
	bpl  16.b		; 10 10
	inc $3500.w,X		; FE 00 35
	jmp.w [$3FB8]		; DC B8 3F
	cmp ($11.b),Y		; D1 11
	sbc ($FD.b),Y		; F1 FD
	ora ($35.b),Y		; 11 35
	lda $E02EB4.l		; AF B4 2E E0
	beq   0.b		; F0 00
	sbc $56DF.w,X		; FD DF 56
	sbc ($B8.b)		; F2 B8
	sbc $0011.w,X		; FD 11 00
	ora ($DF.b,X)		; 01 DF
	jsl $B8D24E.l		; 22 4E D2 B8
	inc $102F.w		; EE 2F 10
	brk $E0.b		; 00 E0
	trb $2B.b		; 14 2B
	ora ($B8.b),Y		; 11 B8
	bne  31.b		; D0 1F
	bpl  15.b		; 10 0F
.INDEX 8
	sep #$14		; E2 14
	sbc $B820.w,X		; FD 20 B8
	bne  31.b		; D0 1F
	ora $41111D.l,X		; 1F 1D 11 41
	bne  45.b		; D0 2D
	clv		; B8
	sbc ($F1.b),Y		; F1 F1
	beq  14.b		; F0 0E
	and ($4F.b,X)		; 21 4F
	cmp ($0D.b)		; D2 0D
	tay		; A8
	rol $1F0F.w,X		; 3E 0F 1F
	sbc $154A44.l		; EF 44 4A 15
	sta $FE2FA8.l,X		; 9F A8 2F FE
	and $1B15C4.l		; 2F C4 15 1B
	eor ($A2.b,X)		; 41 A2
	ldy $F0.b		; A4 F0
	sbc $AEEC.w,X		; FD EC AE
	sbc $30.b,X		; F5 30
	adc $11.b,S		; 63 11
	ldy $F1.b		; A4 F1
	tsb $BEFC.w		; 0C FC BE
	sbc $3E.b		; E5 3E
	eor ($11.b,S),Y		; 53 11
	ldy $F2.b		; A4 F2
	ora $CEFD.w		; 0D FD CE
	sep #$4F		; E2 4F
	ora ($21.b,S),Y		; 13 21
	ldy $01.b		; A4 01
	ora $D0DEFE.l,X		; 1F FE DE D0
	eor ($E2.b,X)		; 41 E2
	and ($94.b,X)		; 21 94
	bpl  34.b		; 10 22
	asl $DDBA.w,X		; 1E BA DD
	asl $0D.b,X		; 16 0D
	and $94.b,S		; 23 94
	and ($E4.b,X)		; 21 E4
	and ($FB.b),Y		; 31 FB
	dec $5FD1.w		; CE D1 5F
	cmp ($98.b,X)		; C1 98
	ora $EE50FF.l,X		; 1F FF 50 EE
	cmp ($00.b),Y		; D1 00
	bit $BC.b		; 24 BC
	tya		; 98
	eor ($FF.b)		; 52 FF
	tsb $1F.b		; 04 1F
	jmp.w [$14FF]		; DC FF 14
	tad		; 5B
	tya		; 98
	lda ($50.b,S),Y		; B3 50
	sbc $E0DB42.l		; EF 42 DB E0
	beq  70.b		; F0 46
	tya		; 98
	tyx		; BB
	eor $FE.b		; 45 FE
	tsb $1C.b		; 04 1C
	lda $98160F.l		; AF 0F 16 98
	dec A		; 3A
	dec $30.b,X		; D6 30
	bne  64.b		; D0 40
	ldy $00F0.w,X		; BC F0 00
	ldy $12.b		; A4 12
	sbc W12SEL.w		; ED 23 21
	ora ($21.b,S),Y		; 13 21
	inc $A4DD.w		; EE DD A4
	cmp ($1E.b),Y		; D1 1E
	sep #$42		; E2 42
	sbc ($32.b)		; F2 32
	ora $A4DD.w		; 0D DD A4
	sbc $23EE31.l		; EF 31 EE 23
	bpl   3.b		; 10 03
	and ($ED.b,X)		; 21 ED
	ldy $CC.b		; A4 CC
.INDEX 16
	rep #$50		; C2 50
	sbc ($42.b,S),Y		; F3 42
	beq  49.b		; F0 31
	inc $ECB4.w		; EE B4 EC
	dec $0244.w,X		; DE 44 02
	and ($FE.b)		; 32 FE
	brk $EF.b		; 00 EF
	ldy $EC.b,X		; B4 EC
	cmp $301265.l,X		; DF 65 12 30
	sbc $D10F.w		; ED 0F D1
	clv		; B8
	cmp $5C25.w,X		; DD 25 5C
	lda $EC.b,X		; B5 EC
	ora ($2F.b,X)		; 01 2F
	cop $B4.b		; 02 B4
	stp		; DB
	ora [$7F.b]		; 07 7F
	ora $ED.b,S		; 03 ED
	sbc $B80F1F.l		; EF 1F 0F B8
.ACCU 16
	rep #$64		; C2 64
	wai		; CB
	lsr $21D0.w		; 4E D0 21
	ora $D0C40C.l,X		; 1F 0C C4 D0
	mvp $1F,$00		; 44 00 1F
	inc $0101.w		; EE 01 01
	sbc $13C8.w,X		; FD C8 13
	jmp $FEE2.w		; 4C E2 FE
	cop $01.b		; 02 01
	beq -17.b		; F0 EF
	cpy $03.b		; C4 03
	rti		; 40

	ora ($FE.b,X)		; 01 FE
	cpx #$1F11.w		; E0 11 1F
	cmp $44C8.w,X		; DD C8 44
	cmp $E02F.w,X		; DD 2F E0
	jsr $FE10.w		; 20 10 FE
	sbc ($C8.b),Y		; F1 C8
	eor ($B0.b)		; 52 B0
	ora $FF22F0.l		; 0F F0 22 FF
	inc $C803.w,X		; FE 03 C8
	rti		; 40

	lda ($0E.b),Y		; B1 0E
	ora ($12.b,X)		; 01 12
	sbc $C824EE.l,X		; FF EE 24 C8
	and $FFD1.w,X		; 3D D1 FF
	ora ($30.b,X)		; 01 30
	inc $35EF.w,X		; FE EF 35
	iny		; C8
	tas		; 1B
	ora $3F210E.l		; 0F 0E 21 3F
	inc $44E1.w		; EE E1 44
	iny		; C8
	jsr ($F0F0.w,X)		; FC F0 F0
	ora ($1E.b,S),Y		; 13 1E
	inc $53F2.w		; EE F2 53
	iny		; C8
	dec $00E0.w		; CE E0 00
	and ($1E.b),Y		; 31 1E
	cmp $C84113.l		; CF 13 41 C8
	dec $20FF.w		; CE FF 20
	jsl $23D00C.l		; 22 0C D0 23
	lsr $CEC8.w,X		; 5E C8 CE
	sbc ($03.b),Y		; F1 03
	ora ($DD.b)		; 12 DD
	cmp ($35.b),Y		; D1 35
	and $CEC8.w		; 2D C8 CE
	sbc ($03.b,S),Y		; F3 03
	bpl -36.b		; 10 DC
	ora ($35.b,X)		; 01 35
	trb $CEC8.w		; 1C C8 CE
	ora $21.b,S		; 03 21
	and $4312BD.l		; 2F BD 12 43
	inc A		; 1A
	iny		; C8
	sbc $1115.w		; ED 15 11
	ora $2433BD.l		; 0F BD 33 24
	xce		; FB
	iny		; C8
	cmp $1035.w,X		; DD 35 10
	ora $14C0.w		; 0D C0 14
	jsl $CFC8FC.l		; 22 FC C8 CF
	and $3E.b		; 25 3E
	sbc $24D0.w,X		; FD D0 24
	bpl  42.b		; 10 2A
	cpy $CB.b		; C4 CB
	cmp ($53.b)		; D2 53
	and $32E3BC.l		; 2F BC E3 32
	and ($C4.b),Y		; 31 C4
	stp		; DB
.INDEX 16
	rep #$53		; C2 53
	ora $41E2DC.l,X		; 1F DC E2 41
	ora ($C4.b)		; 12 C4
	sbc $44C0.w		; ED C0 44
	ora $32E1EC.l,X		; 1F EC E1 32
	sbc ($C4.b)		; F2 C4
	ora $24DE.w,X		; 1D DE 24
	jsr $D0EE.w		; 20 EE D0
	jsl $1BB801.l		; 22 01 B8 1B
	bne 102.b		; D0 66
	xba		; EB
	inc $32E4.w,X		; FE E4 32
	cmp $CB40B4.l,X		; DF B4 40 CB
	cmp $62.b,X		; D5 62
	inc $04BD.w,X		; FE BD 04
	and $DB42B4.l		; 2F B4 42 DB
.ACCU 16
	rep #$63		; C2 63
	ora $3FF3CC.l		; 0F CC F3 3F
	ldy $15.b,X		; B4 15
	cpx $64BF.w		; EC BF 64
	bpl -37.b		; 10 DB
	sbc ($41.b,X)		; E1 41
	ldy $F4.b,X		; B4 F4
	bit $36BD.w		; 2C BD 36
	jsr $CFFC.w		; 20 FC CF
	and ($B4.b,S),Y		; 33 B4
	sbc ($4E.b)		; F2 4E
	wai		; CB
	ora $41.b		; 05 41
	ora $14BE.w		; 0D BE 14
	ldy $0F.b,X		; B4 0F
	eor ($DA.b)		; 52 DA
	cpy $62.b		; C4 62
	ora $B4F3CC.l		; 0F CC F3 B4
	and $A1FB34.l		; 2F 34 FB A1
	mvn $DB,$10		; 54 10 DB
	cmp ($B4.b),Y		; D1 B4
	eor ($04.b,X)		; 41 04
	and $45AC.w		; 2D AC 45
	bmi  -4.b		; 30 FC
	dec $50B8.w		; CE B8 50
	cmp $2B.b,S		; C3 2B
	cmp $FD75.w,X		; DD 75 FD
	inc $B4E0.w,X		; FE E0 B4
	trb $1F.b		; 14 1F
	eor $EA.b,S		; 43 EA
	lda ($53.b,S),Y		; B3 53
	brk $DC.b		; 00 DC
	clv		; B8
	ora $1C.b,X		; 15 1C
	ora $CB.b,X		; 15 CB
	cmp $60.b,X		; D5 60
	bne -19.b		; D0 ED
	ldy $CE.b,X		; B4 CE
	and ($F4.b)		; 32 F4
	eor $3215A9.l,X		; 5F A9 15 32
	ora $02EDC4.l,X		; 1F C4 ED 02
	brk $32.b		; 00 32
	jsr ($21D2.w,X)		; FC D2 21
	ora ($B8.b),Y		; 11 B8
	lda $F63E04.l,X		; BF 04 3E F6
	wai		; CB
	lda $60.b,X		; B5 60
	ora $E1FCB8.l		; 0F B8 FC E1
	rts		; 60

	sep #$4B		; E2 4B
	ldy $0F65.w,X		; BC 65 0F
	clv		; B8
	asl $34CD.w,X		; 1E CD 34
	asl $9B25.w,X		; 1E 25 9B
	inc $31.b		; E6 31
	clv		; B8
	sbc ($EC.b),Y		; F1 EC
	cmp ($41.b,S),Y		; D3 41
	cmp $2A.b,X		; D5 2A
	ldx $B863.w,Y		; BE 63 B8
	brk $2D.b		; 00 2D
	cmp $2D33.w		; CD 33 2D
	adc ($AB.b,X)		; 61 AB
	inc $B8.b		; E6 B8
	and ($02.b,X)		; 21 02
	xba		; EB
	cmp ($41.b)		; D2 41
	inc $FB.b,X		; F6 FB
	lda $1242B8.l,X		; BF B8 42 12
	and $23BD.w		; 2D BD 23
	jsr $CB5E.w		; 20 5E CB
	clv		; B8
	ora ($22.b),Y		; 11 22
	jsl $31D2DB.l		; 22 DB D2 31
	eor ($EC.b,X)		; 41 EC
	ldy $CC.b,X		; B4 CC
	sbc $DC3114.l		; EF 14 31 DC
	cmp ($33.b),Y		; D1 33
	jsr $0CA4.w		; 20 A4 0C
	wai		; CB
	ora $41.b,S		; 03 41
	jmp.w [$40F5]		; DC F5 40
	cpx #$1EA8.w		; E0 A8 1E
	ora ($1F.b,X)		; 01 1F
	sbc $1522.w,X		; FD 22 15
	cpx $A8D0.w		; EC D0 A8
	ora ($F3.b)		; 12 F3
	asl $24CD.w,X		; 1E CD 24
	eor ($BE.b)		; 52 BE
	inc $02A8.w		; EE A8 02
	and ($FF.b)		; 32 FF
	cmp $6E25.w		; CD 25 6E
	lda $E2A81D.l,X		; BF 1D A8 E2
	.db $42, $FE		; 42 FE
	cpy #$2E16.w		; C0 16 2E
	cmp ($0D.b,X)		; C1 0D
	tay		; A8
	sbc ($41.b),Y		; F1 41
	sbc $24F1.w,X		; FD F1 24
	sbc $A8E0E1.l		; EF E1 E0 A8
	ora ($10.b,X)		; 01 10
	sbc $CF50F2.l,X		; FF F2 50 CF
	asl $A800.w,X		; 1E 00 A8
	jsr $FEF0.w		; 20 F0 FE
	and $5D.b,S		; 23 5D
	cmp $A8000E.l,X		; DF 0E 00 A8
	rti		; 40

	ora $25E0.w		; 0D E0 25
	and $EEFF.w		; 2D FF EE
	ora ($98.b),Y		; 11 98
	bit $09.b		; 24 09
	sbc ($76.b,X)		; E1 76
	cpy #$AFFF.w		; C0 FF AF
	cop $A4.b		; 02 A4
	beq  30.b		; F0 1E
	bne  68.b		; D0 44
	ora ($20.b)		; 12 20
	inc $98EE.w		; EE EE 98
	and $5D07FE.l,X		; 3F FE 07 5D
	inc $FF2A.w,X		; FE 2A FF
	bpl -104.b		; 10 98
	eor $25D2.w		; 4D D2 25
	asl $CD20.w,X		; 1E 20 CD
	asl $98F2.w		; 0E F2 98
	rol $24F1.w,X		; 3E F1 24
	inc $DE31.w		; EE 31 DE
	ora $B184E0.l		; 0F E0 84 B1
	brk $15.b		; 00 15
	rol $2FE4.w		; 2E E4 2F
	ora ($1C.b,X)		; 01 1C
	dey		; 88
	ora $41.b,S		; 03 41
	cpx #$D30D.w		; E0 0D D3
	beq  31.b		; F0 1F
	bpl -120.b		; 10 88
	sbc ($30.b),Y		; F1 30
	ora $F2EE10.l		; 0F 10 EE F2
	inc $7803.w,X		; FE 03 78
	inc $2340.w,X		; FE 40 23
	ora ($AE.b,X)		; 01 AE
	brk $FF.b		; 00 FF
	ora ($74.b,S),Y		; 13 74
	sbc $C1DC.w,X		; FD DC C1
	eor $20.b,X		; 55 20
	jsl $74F4EB.l		; 22 EB F4 74
	.db $42, $F1		; 42 F1
	inc $FBFF.w		; EE FF FB
	inc $E40C.w,X		; FE 0C E4
	sei		; 78
	rol $1EE1.w		; 2E E1 1E
	cmp $2D.b,S		; C3 2D
	sbc $F34D.w		; ED 4D F3
	dey		; 88
	and $C01F10.l,X		; 3F 10 1F C0
	bmi  -1.b		; 30 FF
	jsr $74EE.w		; 20 EE 74
	lda $DE3423.l		; AF 23 34 DE
	cpy #$4520.w		; C0 20 45
	phk		; 4B
	sei		; 78
	inc $42.b,X		; F6 42
	cmp $430EEC.l		; CF EC 0E 43
	and ($49.b,X)		; 21 49
	sei		; 78
	lda ($32.b,S),Y		; B3 32
	asl $CB1F.w		; 0E 1F CB
	bit $0F.b,X		; 34 0F
	rol $0E78.w,X		; 3E 78 0E
	ora $EF.b,X		; 15 EF
	ora $3001DF.l,X		; 1F DF 01 30
	sbc ($74.b,X)		; E1 74
	ora ($DE.b,S),Y		; 13 DE
.INDEX 16
	rep #$D1		; C2 D1
	cmp ($20.b)		; D2 20
	cop $EF.b		; 02 EF
	sei		; 78
	bit $C0.b		; 24 C0
	pei ($EF.b)		; D4 EF
	sbc ($10.b),Y		; F1 10
	cpx #$74E4.w		; E0 E4 74
	eor $22.b,S		; 43 22
	bpl -17.b		; 10 EF
	beq   2.b		; F0 02
	eor $0F64EF.l		; 4F EF 64 0F
	ldx $B1FC.w,Y		; BE FC B1
	jsl $000146.l		; 22 46 01 00
	stz $00.b		; 64 00
	mvp $AD,$DF		; 44 DF AD
	ldx $DE31.w,Y		; BE 31 DE
	adc $64.b,S		; 63 64
	cmp $010D41.l		; CF 41 0D 01
	sbc $141E53.l,X		; FF 53 1E 14
	stz $CA.b		; 64 CA
	cmp $4EF01B.l		; CF 1B F0 4E
	and ($25.b),Y		; 31 25
.ACCU 8
	sep #$64		; E2 64
	ora ($EF.b),Y		; 11 EF
	ora ($0E.b,X)		; 01 0E
	inc $F2EB.w,X		; FE EB F2
	cmp $3F2464.l,X		; DF 64 24 3F
	lda ($64.b),Y		; B1 64
	tsb $FF.b		; 04 FF
	sbc $E164BA.l,X		; FF BA 64 E1
	ora $52CD.w		; 0D CD 52
	mvp $D2,$12		; 44 12 D2
	asl $0164.w		; 0E 64 01
	and ($BE.b),Y		; 31 BE
	sbc $E114FA.l		; EF FA 14 E1
	sbc $040464.l,X		; FF 64 04 04
	cpx #$EF25.w		; E0 25 EF
	ora ($1F.b,X)		; 01 1F
	dex		; CA
	stz $ED.b,X		; 74 ED
	sbc ($F3.b,X)		; E1 F3
	rti		; 40

	ora ($E1.b)		; 12 E1
	ora ($00.b),Y		; 11 00
	stz $0F.b,X		; 74 0F
	jsr ($0010.w,X)		; FC 10 00
	cmp ($01.b,X)		; C1 01
	ora ($01.b),Y		; 11 01
	pla		; 68
	sbc $F220.w,X		; FD 20 F2
	tad		; 5B
	sbc $EF.b,S		; E3 EF
	bne  93.b		; D0 5D
	pla		; 68
	sbc ($03.b),Y		; F1 03
	and $AFF5.w,X		; 3D F5 AF
	tsb $C3.b		; 04 C3
	tsa		; 3B
	pla		; 68
	asl $4B0F.w		; 0E 0F 4B
	adc $10D4.w		; 6D D4 10
	jsl $1074B1.l		; 22 B1 74 10
	sbc ($01.b,S),Y		; F3 01
	ora $2DCE0C.l		; 0F 0C CE 2D
	cmp ($68.b)		; D2 68
	lda ($31.b)		; B2 31
	and #$E3.b		; 29 E3
	brk $E2.b		; 00 E2
	bit $78FD.w,X		; 3C FD 78
	sbc ($F0.b)		; F2 F0
	and ($0F.b,X)		; 21 0F
	jsr $002C.w		; 20 2C 00
	beq 120.b		; F0 78
	ora ($E1.b)		; 12 E1
	lda ($01.b),Y		; B1 01
	ora ($01.b,X)		; 01 01
	jsr $78F5.w		; 20 F5 78
	lda $1D111E.l		; AF 1E 11 1D
	jmp $04C2.w		; 4C C2 04
	sbc $223178.l		; EF 78 31 22
	phd		; 0B
.INDEX 8
	sep #$D2		; E2 D2
	bit $EC11.w		; 2C 11 EC
	sei		; 78
	eor $F42020.l		; 4F 20 20 F4
	ror A		; 6A
	cmp ($DF.b,X)		; C1 DF
	phk		; 4B
	dey		; 88
	ora ($C0.b)		; 12 C0
	and $F41101.l		; 2F 01 11 F4
	rol $88B0.w		; 2E B0 88
	cmp ($2F.b),Y		; D1 2F
	lsr $1EC1.w		; 4E C1 1E
	and ($2E.b),Y		; 31 2E
	asl $94.b,X		; 16 94
	eor ($FF.b),Y		; 51 FF
	cmp $2CFF.w,X		; DD FF 2C
	sbc $9423F0.l		; EF F0 23 94
	and ($55.b,X)		; 21 55
	brk $DD.b		; 00 DD
	cpy $CFF1.w		; CC F1 CF
	ora $1F3098.l		; 0F 98 30 1F
	asl $BC.b		; 06 BC
	tsa		; 3B
	cpx #$17.b		; E0 17
	lda $D421A8.l,X		; BF A8 21 D4
	brk $D5.b		; 00 D5
	inc $D1F0.w		; EE F0 D1
	sbc ($A8.b,S),Y		; F3 A8
	ora $F231.w,X		; 1D 31 F2
	ora $F11BF2.l,X		; 1F F2 1B F1
	bne -92.b		; D0 A4
	lda $132C.w		; AD 2C 13
	trb $63.b		; 14 63
	.db $42, $5D		; 42 5D
	dec $C0A8.w,X		; DE A8 C0
	ora $4A.b,S		; 03 4A
	eor ($D1.b,S),Y		; 53 D1
	eor $1AF0.w		; 4D F0 1A
	tay		; A8
	ora ($DE.b,X)		; 01 DE
	bit $1D.b,X		; 34 1D
	mvp $4C,$A3		; 44 A3 4C
.ACCU 8
	sep #$A8		; E2 A8
	stp		; DB
	ora ($CE.b)		; 12 CE
	ror $95.b		; 66 95
	and ($B7.b),Y		; 31 B7
	cpy $F1B4.w		; CC B4 F1
	cmp $BDED.w,X		; DD ED BD
	rti		; 40

	tsb $52.b		; 04 52
	and ($B4.b)		; 32 B4
	ora $CE0E.w		; 0D 0E CE
	xba		; EB
	cpx $11.b		; E4 11
	eor $03.b,X		; 55 03
	ldy $1F.b,X		; B4 1F
	bne -20.b		; D0 EC
	inc $60CE.w		; EE CE 60
	and $31.b		; 25 31
	ldy $20.b,X		; B4 20
	inc $DDFE.w,X		; FE FE DD
	cpx $0324.w		; EC 24 03
	eor ($B4.b)		; 52 B4
	ora ($FE.b)		; 12 FE
	sbc $D4FDDD.l		; EF DD FD D4
	and ($44.b),Y		; 31 44
	ldy $11.b,X		; B4 11
	asl $FDEE.w,X		; 1E EE FD
	cmp $1552DF.l,X		; DF DF 52 15
	clv		; B8
	inc $F01E.w		; EE 1E F0
	bpl  -1.b		; 10 FF
	bpl  36.b		; 10 24
	cmp ($A8.b,X)		; C1 A8
	ror A		; 6A
	beq -33.b		; F0 DF
	sbc ($1E.b),Y		; F1 1E
	sbc ($17.b),Y		; F1 17
	ora $31A8.w		; 0D A8 31
	cmp $20FF0D.l,X		; DF 0D FF 20
	cpx #$04.b		; E0 04
	lsr $E498.w		; 4E 98 E4
	and $EEDD.w		; 2D DD EE
	sbc ($F0.b,S),Y		; F3 F0
	brk $27.b		; 00 27
	sty $62.b,X		; 94 62
	trb $54.b		; 14 54
	ora $0FDF.w,X		; 1D DF 0F
	ora ($0E.b,X)		; 01 0E
	dey		; 88
	and $10F1.w,X		; 3D F1 10
	ora $31.b,S		; 03 31
	dec $0E04.w,X		; DE 04 0E
	dey		; 88
	jsr ($1FF0.w,X)		; FC F0 1F
	rol $2F03.w,X		; 3E 03 2F
	bmi  43.b		; 30 2B
	sei		; 78
	sbc $101C3C.l,X		; FF 3C 1C 10
	sbc ($30.b,X)		; E1 30
	cmp ($74.b,X)		; C1 74
	sei		; 78
	asl $F5DF.w		; 0E DF F5
	asl $B21E.w		; 0E 1E B2
	sbc $780D.w,X		; FD 0D 78
	jsl $2F5D61.l		; 22 61 5D 2F
	sbc ($2D.b)		; F2 2D
	cmp $1178BE.l		; CF BE 78 11
.ACCU 16
	rep #$22		; C2 22
	eor $3E.b		; 45 3E
	sbc $CE.b		; E5 CE
	inc $FE78.w,X		; FE 78 FE
	sbc $510ED4.l,X		; FF D4 0E 51
	sbc ($44.b)		; F2 44
	sta ($78.b),Y		; 91 78
	cpy #$2E.b		; C0 2E
	and $4DCF10.l		; 2F 10 CF 4D
	ora $1B.b,S		; 03 1B
	pla		; 68
	lsr $C647.w		; 4E 47 C6
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	inc $3DDA.w		; EE DA 3D
	dey		; 88
	asl $00E4.w,X		; 1E E4 00
	ora ($1D.b)		; 12 1D
	and $840F1E.l		; 2F 1E 0F 84
	sbc $C1FECD.l,X		; FF CD FE C1
	bpl  49.b		; 10 31
	ora ($01.b)		; 12 01
	sei		; 78
	sbc $CF054C.l		; EF 4C 05 CF
	ora ($10.b),Y		; 11 10
	inc $641D.w,X		; FE 1D 64
	cmp $5213F2.l,X		; DF F2 13 52
	eor ($35.b,S),Y		; 53 35
	dec A		; 3A
	cmp $EDCF74.l		; CF 74 CF ED
	bne  33.b		; D0 21
	ora $40.b,S		; 03 40
	and ($D1.b,S),Y		; 33 D1
	stz $0C.b,X		; 74 0C
	ora $FE02FF.l		; 0F FF 02 FE
	eor $F0.b,S		; 43 F0
	asl $2168.w,X		; 1E 68 21
	sbc ($E2.b),Y		; F1 E2
	asl $155C.w,X		; 1E 5C 15
	cmp ($CA.b),Y		; D1 CA
	stz $F0.b,X		; 74 F0
	bne  13.b		; D0 0D
	and $3211F2.l,X		; 3F F2 11 32
	asl $DF64.w		; 0E 64 DF
	ora $CF912D.l,X		; 1F 2D 91 CF
	ora $645555.l,X		; 1F 55 55 64
	bcs  14.b		; B0 0E
	jsr ($ED2C.w,X)		; FC 2C ED
	sbc $2265.w,X		; FD 65 22
	pla		; 68
	jmp $F0D1.w		; 4C D1 F0
	beq  14.b		; F0 0E
	tsb $07.b		; 04 07
	lda ($74.b,S),Y		; B3 74
	ora ($01.b),Y		; 11 01
	sbc ($EF.b,X)		; E1 EF
	dec $F02E.w,X		; DE 2E F0
	eor $341264.l		; 4F 64 12 34
	cmp $FEFE10.l		; CF 10 FE FE
	inc $6060.w		; EE 60 60
	sbc $2C.b,S		; E3 2C
	ora $FD.b,S		; 03 FD
	sbc $EEFFDD.l,X		; FF DD FF EE
	stz $14.b		; 64 14
	brk $10.b		; 00 10
	phd		; 0B
	sbc $110E.w,X		; FD 0E 11
	lda ($74.b)		; B2 74
	.db $42, $F0		; 42 F0
	rol $EFE1.w,X		; 3E E1 EF
	sbc $60E002.l,X		; FF 02 E0 60
	sbc $FD.b,S		; E3 FD
	ora ($33.b,X)		; 01 33
	and ($DE.b)		; 32 DE
	eor ($EE.b),Y		; 51 EE
	stz $00.b,X		; 74 00
	sbc $011100.l,X		; FF 00 11 01
	jmp $0FF2.w		; 4C F2 0F
	stz $2F.b		; 64 2F
	xce		; FB
	lda $6CE150.l,X		; BF 50 E1 6C
	asl $4E.b,X		; 16 4E
	stz $C4.b		; 64 C4
	xba		; EB
	brk $DD.b		; 00 DD
	bpl -28.b		; 10 E4
	ora ($2C.b)		; 12 2C
	bvs   4.b		; 70 04
	and ($EF.b),Y		; 31 EF
	inc $2ECF.w,X		; FE CF 2E
	ora ($01.b),Y		; 11 01
	bvs  16.b		; 70 10
	sbc ($FF.b),Y		; F1 FF
	ora $11FDCF.l,X		; 1F CF FD 11
	beq 100.b		; F0 64
	sbc $0EEF5F.l		; EF 5F EF 0E
	cpy $1F.b		; C4 1F
	and $337423.l		; 2F 23 74 33
	asl $1D20.w		; 0E 20 1D
	ora $10FFDF.l		; 0F DF FF 10
	pla		; 68
	cop $0F.b		; 02 0F
	phk		; 4B
	bit $0F4D.w		; 2C 4D 0F
	and $EE64A7.l		; 2F A7 64 EE
	bit $FF.b		; 24 FF
	bpl   0.b		; 10 00
	beq -20.b		; F0 EC
	ora $04FF64.l,X		; 1F 64 FF 04
	bne   0.b		; D0 00
	ora $002F.w,X		; 1D 2F 00
	ora $6D0054.l		; 0F 54 00 6D
	and ($00.b,S),Y		; 33 00
	brk $01.b		; 00 01
	bne   1.b		; D0 01
	mvn $60,$0E		; 54 0E 60
	jsr $402C.w		; 20 2C 40
	brk $FE.b		; 00 FE
	asl $4D54.w,X		; 1E 54 4D
	brk $33.b		; 00 33
	brk $10.b		; 00 10
	sbc ($F0.b,X)		; E1 F0
	sbc $ACCA40.l		; EF 40 CA AC
	ora ($45.b)		; 12 45
	mvp $41,$32		; 44 32 41
	bcc  80.b		; 90 50
	sbc $F2DEDD.l,X		; FF DD DE F2
	ora ($AF.b)		; 12 AF
	ora ($21.b)		; 12 21
	mvn $21,$FC		; 54 FC 21
	ora $031F1F.l		; 0F 1F 1F 03
	ora $D0.b,S		; 03 D0
	mvp $CE,$01		; 44 01 CE
	inc $02D1.w,X		; FE D1 02
	sbc ($FF.b),Y		; F1 FF
	ora ($34.b),Y		; 11 34
	lda $C0FA.w,X		; BD FA C0
	dec $3D0F.w		; CE 0F 3D
	rol $34AC.w		; 2E AC 34
	rol $DEE0.w		; 2E E0 DE
	bmi -62.b		; 30 C2
	eor $0DF4.w		; 4D F4 0D
	sec		; 38
	and $121CA5.l		; 2F A5 1C 12
	asl $D000.w		; 0E 00 D0
	eor $0134.w,X		; 5D 34 01
	sbc $9C10.w,X		; FD 10 9C
	and $3DB2.w		; 2D B2 3D
	cmp $44.b,X		; D5 44
	ora $A4E122.l		; 0F 22 E1 A4
	sbc $D10FDE.l,X		; FF DE 0F D1
	bvc -18.b		; 50 EE
	cmp $1F0160.l,X		; DF 60 01 1F
	ora $50EEEE.l		; 0F EE EE 50
	inc $10.b		; E6 10
	ora ($11.b),Y		; 11 11
	brk $11.b		; 00 11
	tsb $480F.w		; 0C 0F 48
	tsb $3B.b		; 04 3B
	cop $E0.b		; 02 E0
	bpl   0.b		; 10 00
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	rti		; 40

	cmp $222223.l		; CF 23 22 22
	ora ($DE.b,X)		; 01 DE
	sbc $F034DC.l,X		; FF DC 34 F0
	ora $4E.b,S		; 03 4E
	sbc ($ED.b)		; F2 ED
	sbc $34E0F0.l,X		; FF F0 E0 34
	dec $14FE.w,X		; DE FE 14
	sbc $02ED20.l		; EF 20 ED 02
	brk $38.b		; 00 38
	jsr ($FF13.w,X)		; FC 13 FF
	asl $11F0.w,X		; 1E F0 11
	sbc $2F24F0.l		; EF F0 24 2F
	bpl -21.b		; 10 EB
	cmp $BA2DFE.l,X		; DF FE 2D BA
	bne  36.b		; D0 24
	bne -17.b		; D0 EF
	jmp $EA90.w		; 4C 90 EA
	brk $DA.b		; 00 DA
	sbc $50B024.l,X		; FF 24 B0 50
	pea $E03A.w		; F4 3A E0
	lda $0F2E.w,X		; BD 2E 0F
	bit $0F.b,X		; 34 0F
	ora $F1451C.l,X		; 1F 1C 45 F1
	inc $FF2F.w,X		; FE 2F FF
	mvn $10,$0F		; 54 0F 10
	ora $C0.b,X		; 15 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $11.b,X		; 34 11
	beq  48.b		; F0 30
	pea $111E.w		; F4 1E 11
	beq   0.b		; F0 00
	bit $0C.b		; 24 0C
	beq  51.b		; F0 33
	pea $E26F.w		; F4 6F E2
	sbc $115021.l		; EF 21 50 11
	brk $00.b		; 00 00
	ora ($11.b,X)		; 01 11
	ora ($0B.b),Y		; 11 0B
	bpl  80.b		; 10 50
	sbc $0F00.w,X		; FD 00 0F
	sbc ($10.b)		; F2 10
	ldy #$00.b		; A0 00
	sbc $EC5E24.l,X		; FF 24 5E EC
	asl $FEC1.w		; 0E C1 FE
	asl $DE00.w,X		; 1E 00 DE
	plp		; 28
	jmp $030D.w		; 4C 0D 03
	inc $0CA3.w,X		; FE A3 0C
	asl $3402.w,X		; 1E 02 34
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	ora $2C20F0.l		; 0F F0 20 2C
	sty $01.b		; 84 01
	beq   2.b		; F0 02
	jsl $1E31CE.l		; 22 CE 31 1E
	cpy $1774.w		; CC 74 17
	asl A		; 0A
	lda $3423.w,X		; BD 23 34
	trb $51.b		; 14 51
	ora $0E98.w		; 0D 98 0E
	brk $02.b		; 00 02
	ora ($22.b)		; 12 22
	beq -34.b		; F0 DE
	cmp $0D0EA8.l		; CF A8 0E 0D
	ror $EF.b		; 66 EF
	eor ($FF.b,X)		; 41 FF
	inc $B8C0.w		; EE C0 B8
	ora $420100.l		; 0F 00 01 42
	beq   1.b		; F0 01
	cmp $E1A8E0.l,X		; DF E0 A8 E1
	ora ($E0.b)		; 12 E0
	bit $61.b		; 24 61
	cpy #$FD.b		; C0 FD
	dec $01A8.w		; CE A8 01
	ora ($30.b),Y		; 11 30
	beq  30.b		; F0 1E
	adc $B800CF.l,X		; 7F CF 00 B8
	sbc ($00.b),Y		; F1 00
	brk $1F.b		; 00 1F
	sbc $EF4200.l,X		; FF 00 42 EF
	tay		; A8
	bpl -34.b		; 10 DE
	brk $02.b		; 00 02
	jsr $01CF.w		; 20 CF 01
	eor $A8.b,X		; 55 A8
	dec $EFF0.w		; CE F0 EF
	and $DC0112.l		; 2F 12 01 DC
	sbc ($B8.b),Y		; F1 B8
	tsb $3D.b		; 04 3D
	ora $00E10F.l		; 0F 0F E1 00
	and ($0E.b,X)		; 21 0E
	clv		; B8
	sbc $B0442F.l		; EF 2F 44 B0
	ora $F201D1.l,X		; 1F D1 01 F2
	clv		; B8
	and $0510DE.l		; 2F DE 10 05
	phk		; 4B
	sbc ($ED.b),Y		; F1 ED
	ora ($B8.b),Y		; 11 B8
	bpl  49.b		; 10 31
	sbc $1FD1.w		; ED D1 1F
	eor [$CB.b],Y		; 57 CB
	rol $EDC4.w		; 2E C4 ED
	sbc ($02.b),Y		; F1 02
	and ($FD.b,X)		; 21 FD
	inc $55FF.w		; EE FF 55
	cpy $10.b		; C4 10
	ora $12DE.w		; 0D DE 12
	ora ($2E.b,S),Y		; 13 2E
	cmp $C8FF.w		; CD FF C8
	pea $B16B.w		; F4 6B B1
	sbc $013F03.l,X		; FF 03 3F 01
	dec $F3C8.w		; CE C8 F3
	bpl -27.b		; 10 E5
	phk		; 4B
	lda ($00.b),Y		; B1 00
	ora $20.b,S		; 03 20
	cpy #$55.b		; C0 55
	and $BFEDCD.l,X		; 3F CD ED BF
	ror $30.b		; 66 30
	sbc $CEC0.w,X		; FD C0 CE
	and $44.b,S		; 23 44
	rol $FDDE.w		; 2E DE FD
	bcs 101.b		; B0 65
	clv		; B8
.INDEX 16
	rep #$11		; C2 11
	tsb $4B.b		; 04 4B
	beq -34.b		; F0 DE
	bit $FC.b		; 24 FC
	cpy $F4.b		; C4 F4
	adc $01FFDE.l		; 6F DE FF 01
	eor ($0F.b,X)		; 41 0F
	inc $F1C4.w		; EE C4 F1
	asl $5E05.w		; 0E 05 5E
	dec $03F0.w		; CE F0 03
	and ($C8.b,X)		; 21 C8
	sbc $FF02F1.l,X		; FF F1 02 FF
	asl $CB.b,X		; 16 CB
	cop $10.b		; 02 10
	iny		; C8
	ora ($0E.b),Y		; 11 0E
	asl $1110.w		; 0E 10 11
	cpx #$CC33.w		; E0 33 CC
	clv		; B8
	tsb $4F.b		; 04 4F
	ora $0B.b,S		; 03 0B
	sbc $D00121.l,X		; FF 21 01 D0
	cpy $35.b		; C4 35
	sbc $10D0.w,X		; FD D0 10
	ora ($1F.b)		; 12 1F
	sbc $00C4F0.l,X		; FF F0 C4 00
	cpx #$FD53.w		; E0 53 FD
	bne  16.b		; D0 10
	ora ($1F.b)		; 12 1F
	iny		; C8
	brk $1F.b		; 00 1F
	bpl -29.b		; 10 E3
	rol $13CF.w,X		; 3E CF 13
	sbc ($C8.b),Y		; F1 C8
	brk $F0.b		; 00 F0
	sbc ($10.b,X)		; E1 10
	ora $C03CF4.l		; 0F F4 3C C0
	ldy $D2.b,X		; B4 D2
	ora ($33.b),Y		; 11 33
	asl $1FDE.w		; 0E DE 1F
	asl $C8E5.w		; 0E E5 C8
	bit $13D0.w		; 2C D0 13
	beq  47.b		; F0 2F
	cpx #$10F1.w		; E0 F1 10
	iny		; C8
	beq -11.b		; F0 F5
	tas		; 1B
	cpx #$F022.w		; E0 22 F0
	bpl -32.b		; 10 E0
	cpy $E0.b		; C4 E0
	brk $0F.b		; 00 0F
	sbc ($40.b,S),Y		; F3 40
	cmp $0101.w,X		; DD 01 01
	cpy $21.b		; C4 21
	sbc $0F00E0.l,X		; FF E0 00 0F
	pea $DD30.w		; F4 30 DD
	bcs -50.b		; B0 CE
	sbc ($45.b),Y		; F1 45
	eor ($DE.b,X)		; 41 DE
	sbc $B4A2EB.l		; EF EB A2 B4
	adc $1103AA.l,X		; 7F AA 03 11
	eor ($FD.b,X)		; 41 FD
	bne   1.b		; D0 01
	cpy $0E.b		; C4 0E
	pea $DD30.w		; F4 30 DD
	ora ($11.b,X)		; 01 11
	ora ($FF.b),Y		; 11 FF
	iny		; C8
	sbc ($01.b)		; F2 01
	cpx #$2B03.w		; E0 03 2B
	sbc $B80F22.l,X		; FF 22 0F B8
	rol $E4EF.w,X		; 3E EF E4
	ora ($FD.b,X)		; 01 FD
	ora $6A.b		; 05 6A
	lda $C4A4.w		; AD A4 C4
	eor ($55.b,X)		; 41 55
	jsr ($119E.w,X)		; FC 9E 11
	and $C8A0.w		; 2D A0 C8
	lsr $13DE.w		; 4E DE 13
	brk $F2.b		; 00 F2
	sbc $B01100.l		; EF 00 11 B0
	ora $7207CA.l		; 0F CA 07 72
	cpy $03EF.w		; CC EF 03
	eor $C8.b,S		; 43 C8
	beq  47.b		; F0 2F
	ora $ED330E.l,X		; 1F 0E 33 ED
	sbc ($20.b),Y		; F1 20
	clv		; B8
.INDEX 8
	sep #$1E		; E2 1E
	inc $1120.w,X		; FE 20 11
	inc $4AF7.w		; EE F7 4A
	bcs  62.b		; B0 3E
	cmp $3224FF.l,X		; DF FF 24 32
	sbc $C00FEF.l,X		; FF EF 0F C0
	sbc $3104.w		; ED 04 31
	sbc $22F1FF.l,X		; FF FF F1 22
	bpl -76.b		; 10 B4
	sbc $06ED10.l,X		; FF 10 ED 06
	adc $F100CD.l		; 6F CD 00 F1
	ldy $41.b,X		; B4 41
	ora $0FF0EF.l		; 0F EF F0 0F
	bne 102.b		; D0 66
	sbc $05A8.w,X		; FD A8 05
	beq  83.b		; F0 53
	cmp $E2E0.w,X		; DD E0 E2
	bmi -50.b		; 30 CE
	ldy $F5.b,X		; B4 F5
	adc $F1FFED.l,X		; 7F ED FF F1
	and ($00.b)		; 32 00
	inc $02B8.w,X		; FE B8 02
	ora $AE62E1.l		; 0F E1 62 AE
	sbc ($F0.b)		; F2 F0
	jsl $FF0FB8.l		; 22 B8 0F FF
	beq  17.b		; F0 11
	sbc $CF5DF4.l,X		; FF F4 5D CF
	tay		; A8
	sbc ($F2.b),Y		; F1 F2
	.db $62, $C1, $FC		; 62 C1 FC
	sbc ($22.b,X)		; E1 22
	dec $14B8.w,X		; DE B8 14
	bit $F0D0.w,X		; 3C D0 F0
	cop $20.b		; 02 20
	sbc ($FD.b),Y		; F1 FD
	clv		; B8
	brk $20.b		; 00 20
	sbc $D02D23.l,X		; FF 23 2D D0
	sbc $4FA812.l,X		; FF 12 A8 4F
	ora ($DB.b,X)		; 01 DB
	sbc ($2F.b,S),Y		; F3 2F
	cpx #$24.b		; E0 24
	jmp ($1EA4.w)		; 6C A4 1E
	cpy $12CF.w		; CC CF 12
	and $2F.b,S		; 23 2F
	cmp $A8F0.w,X		; DD F0 A8
	sbc $CD71F3.l		; EF F3 71 CD
	sbc ($EF.b,X)		; E1 EF
	jsr $A822.w		; 20 22 A8
	ora $ED20DF.l,X		; 1F DF 20 ED
	ora ($35.b),Y		; 11 35
	ora $A8E0.w,X		; 1D E0 A8
	sbc $22E2.w		; ED E2 22
	and $EE00FF.l,X		; 3F FF 00 EE
	brk $98.b		; 00 98
	lsr $60.b,X		; 56 60
	sbc $C0BB.w		; ED BB C0
	lsr $10.b		; 46 10
	asl $F198.w		; 0E 98 F1
	beq -16.b		; F0 F0
	bit $2E.b		; 24 2E
	cmp ($DE.b,X)		; C1 DE
	sbc ($88.b),Y		; F1 88
	stz $0E.b		; 64 0E
	inc $0C23.w		; EE 23 0C
	inc $43.b		; E6 43
	ldy $E188.w,X		; BC 88 E1
	bne -26.b		; D0 E6
	ora $2013FE.l,X		; 1F FE 13 20
	cmp $3778.w		; CD 78 37
	rol $0FC1.w		; 2E C1 0F
	cmp $50.b,S		; C3 50
	cmp ($C3.b,X)		; C1 C3
	sei		; 78
	sbc [$2A.b]		; E7 2A
	cmp ($0F.b)		; D2 0F
	sbc $4F.b,S		; E3 4F
	sta ($11.b),Y		; 91 11
	bvs -82.b		; 70 AE
	sbc $3303FD.l,X		; FF FD 03 33
	eor $2B.b,X		; 55 2B
	sbc $88.b,X		; F5 88
	dec $40E1.w,X		; DE E1 40
	beq -15.b		; F0 F1
	ora ($EE.b,X)		; 01 EE
	ora ($78.b)		; 12 78
	cpx $4C43.w		; EC 43 4C
	cmp $0102.w		; CD 02 01
	cop $2F.b		; 02 2F
	sei		; 78
	beq -19.b		; F0 ED
	rol $401E.w,X		; 3E 1E 40
	eor $E01D.w		; 4D 1D E0
	sei		; 78
	cpx #$52.b		; E0 52
	sbc $5EDC21.l		; EF 21 DC 5E
	lda ($13.b,S),Y		; B3 13
	sei		; 78
	ora ($3E.b,X)		; 01 3E
	tsx		; BA
	.db $42, $4C		; 42 4C
	ora ($0F.b)		; 12 0F
	and $EF78.w		; 2D 78 EF
	asl $0143.w		; 0E 43 01
	pld		; 2B
	lda $740F43.l,X		; BF 43 0F 74
	brk $41.b		; 00 41
	bit $EDEC.w		; 2C EC ED
	tsb $34.b		; 04 34
	lsr $BC74.w		; 4E 74 BC
	jsr $131D.w		; 20 1D 13
	and ($FF.b)		; 32 FF
	phd		; 0B
	cmp $56B364.l		; CF 64 B3 56
	adc ($BF.b)		; 72 BF
	ora $D1E9.w,X		; 1D E9 D1
	mvp $54,$74		; 44 74 54
	inc $A2BB.w,X		; FE BB A2
	jsl $0D0143.l		; 22 43 01 0D
	sei		; 78
	cop $C3.b		; 02 C3
	bit $2C.b		; 24 2C
	inc $13EE.w		; EE EE 13
	and $213374.l,X		; 3F 74 33 21
	brk $0C.b		; 00 0C
	lda $014E24.l		; AF 24 4E 01
	stz $FD.b,X		; 74 FD
	cmp $0F1012.l,X		; DF 12 10 0F
	bit $1B.b		; 24 1B
	sbc ($68.b)		; F2 68
	lda $1A4395.l,X		; BF 95 43 1A
	and $FC21.w		; 2D 21 FC
	ora $74.b,S		; 03 74
	ora ($02.b),Y		; 11 02
	and $34DFDC.l,X		; 3F DC DF 34
	bmi   1.b		; 30 01
	sei		; 78
	cmp $143000.l,X		; DF 00 30 14
	asl A		; 0A
	cpx #$F2.b		; E0 F2
	ora ($74.b),Y		; 11 74
	bmi  52.b		; 30 34
	and $BEEE.w		; 2D EE BE
	sbc ($24.b)		; F2 24
	jsr $1064.w		; 20 64 10
	dec $B0CD.w		; CE CD B0
	and $C0.b		; 25 C0
	.db $42, $0D		; 42 0D
	stz $01.b,X		; 74 01
	inc $1201.w,X		; FE 01 12
	ora ($BC.b)		; 12 BC
	beq  17.b		; F0 11
	stz $10.b,X		; 74 10
	bit $ED.b,X		; 34 ED
	sbc $33F2F0.l,X		; FF F0 F2 33
	asl $DD74.w,X		; 1E 74 DD
	cpx #$20.b		; E0 20
	sbc ($54.b)		; F2 54
	phd		; 0B
	cpx #$0B.b		; E0 0B
	sei		; 78
	ora ($36.b,X)		; 01 36
	xba		; EB
	bit $EC5D.w,X		; 3C 5D EC
	eor ($E0.b,S),Y		; 53 E0
	sei		; 78
	ora $4030EE.l		; 0F EE 30 40
	dec $F2F4.w,X		; DE F4 F2
	jsr ($1F78.w,X)		; FC 78 1F
	asl $3F40.w,X		; 1E 40 3F
	jmp.w [$1F12]		; DC 12 1F
	ora $634364.l,X		; 1F 64 43 63
	eor ($00.b)		; 52 00
	asl A		; 0A
	cmp $20.b,S		; C3 20
	asl $FF88.w,X		; 1E 88 FF
	asl $E302.w,X		; 1E 02 E3
	sbc ($32.b)		; F2 32
	rol $78AF.w,X		; 3E AF 78
	stz $5430.w,X		; 9E 30 54
	cpy $EC22.w		; CC 22 EC
	ora ($E4.b,S),Y		; 13 E4
	tya		; 98
	ora $3E.b,X		; 15 3E
	lda $01EF.w,X		; BD EF 01
	rti		; 40

	brk $FE.b		; 00 FE
	tya		; 98
	ora $1D.b,S		; 03 1D
	sbc $CD6F26.l		; EF 26 6F CD
	cmp $A8E1.w,X		; DD E1 A8
	ora ($1F.b)		; 12 1F
	beq  16.b		; F0 10
	sbc ($EF.b),Y		; F1 EF
	ora ($44.b,X)		; 01 44
	tay		; A8
	tsb $D0D0.w		; 0C D0 D0
	ora $20.b,S		; 03 20
	beq  14.b		; F0 0E
	cop $A8.b		; 02 A8
	asl $35E0.w		; 0E E0 35
	eor $FDCE.w		; 4D CE FD
	cop $31.b		; 02 31
	tay		; A8
	ora $2FF0E0.l,X		; 1F E0 F0 2F
	cmp $CB4F27.l,X		; DF 27 4F CB
	tya		; 98
	sbc $2044F1.l		; EF F1 44 20
	cmp $CA02F1.l		; CF F1 02 CA
	clv		; B8
	sbc ($34.b,S),Y		; F3 34
	cmp $01D0.w,X		; DD D0 01
	ora ($20.b,X)		; 01 20
	cpx #$B8.b		; E0 B8
	brk $00.b		; 00 00
	ora $1C36FF.l		; 0F FF 36 1C
	cmp $00C801.l		; CF 01 C8 00
	ora ($FF.b),Y		; 11 FF
	ora $F01F1F.l,X		; 1F 1F 1F F0
	trb $B8.b		; 14 B8
	dec A		; 3A
	stz $F132.w,X		; 9E 32 F1
	ora ($EF.b)		; 12 EF
	ora ($E1.b,X)		; 01 E1
	iny		; C8
	brk $FF.b		; 00 FF
	ora ($3E.b,S),Y		; 13 3E
	dec $2E10.w,X		; DE 10 2E
	ora ($C8.b),Y		; 11 C8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	asl $5E12.w		; 0E 12 5E
	ldx $B1A4.w,Y		; BE A4 B1
	inc A		; 1A
	pei ($52.b)		; D4 52
	beq  -4.b		; F0 FC
	dec $C8EC.w,X		; DE EC C8
	sbc ($52.b),Y		; F1 52
	ldy $2E11.w,X		; BC 11 2E
	sbc ($1F.b,S),Y		; F3 1F
	beq -56.b		; F0 C8
	ora $F1F001.l		; 0F 01 F0 F1
	eor ($AC.b,S),Y		; 53 AC
	ora $1D.b,S		; 03 1D
	iny		; C8
	cop $3F.b		; 02 3F
	cpx #$1E.b		; E0 1E
	brk $00.b		; 00 00
	ora $3EC454.l		; 0F 54 C4 3E
	bne  14.b		; D0 0E
	cpy #$24.b		; C0 24
	brk $10.b		; 00 10
	inc $10C8.w		; EE C8 10
	beq  53.b		; F0 35
	nop		; EA
	ora ($2D.b,X)		; 01 2D
	sep #$40		; E2 40
	iny		; C8
	sbc ($00.b,X)		; E1 00
	sbc $35EF02.l		; EF 02 EF 35
	sbc $B8F1.w		; ED F1 B8
	bit $72B1.w		; 2C B1 72
	bne  48.b		; D0 30
	cmp $E102.w,X		; DD 02 E1
	tay		; A8
	mvp $D2,$2E		; 44 2E D2
	asl A		; 0A
	cmp ($23.b,X)		; C1 23
	jsr $A41F.w		; 20 1F A4
	sbc $C23D24.l		; EF 24 3D C2
	eor ($FE.b,X)		; 41 FE
	and ($DC.b)		; 32 DC
	tay		; A8
	and $FB.b		; 25 FB
	sbc $12.b,S		; E3 12
	sbc ($0F.b),Y		; F1 0F
	ora ($1E.b,X)		; 01 1E
	tya		; 98
	cpx #$02.b		; E0 02
	cpy #$23.b		; C0 23
	sbc $61E5.w		; ED E5 61
	lda $0598.w		; AD 98 05
	trb $20F1.w		; 1C F1 20
	cpx #$01.b		; E0 01
	cpx #$20.b		; E0 20
	dey		; 88
	bpl  16.b		; 10 10
	cmp $F004.w,X		; DD 04 F0
	ora ($00.b),Y		; 11 00
	sbc ($88.b,X)		; E1 88
	trb $2003.w		; 1C 03 20
	beq  31.b		; F0 1F
	dec $0012.w,X		; DE 12 00
	sty $F0.b		; 84 F0
	brk $12.b		; 00 12
	jsr $43F2.w		; 20 F2 43
	sbc $DE8813.l,X		; FF 13 88 DE
	ora ($ED.b,S),Y		; 13 ED
	ora ($0F.b),Y		; 11 0F
	ora ($2F.b),Y		; 11 2F
	beq 120.b		; F0 78
	lsr $C20F.w,X		; 5E 0F C2
	cmp $EE0143.l,X		; DF 43 01 EE
	cmp $000088.l,X		; DF 88 00 00
	ora $4F.b,S		; 03 4F
	sbc $FD00.w,X		; FD 00 FD
	ora $78.b,X		; 15 78
	ora ($0D.b),Y		; 11 0D
	ora $41BB.w		; 0D BB 41
	ora ($64.b,S),Y		; 13 64
	asl A		; 0A
	dey		; 88
	cmp ($0D.b),Y		; D1 0D
	ora ($21.b,S),Y		; 13 21
	cpx #$1E.b		; E0 1E
	ora $781F.w		; 0D 1F 78
	and $D3BE45.l,X		; 3F 45 BE D3
	brk $14.b		; 00 14
	and $78E0.w		; 2D E0 78
	sbc $0120F1.l,X		; FF F1 20 01
	cop $CB.b		; 02 CB
	cmp ($42.b),Y		; D1 42
	sei		; 78
	inc $4D.b,X		; F6 4D
	lda ($FE.b)		; B2 FE
	bne  34.b		; D0 22
	jsr $8823.w		; 20 23 88
	jsr ($FFD3.w,X)		; FC D3 FF
	ora ($31.b),Y		; 11 31
	cmp ($1E.b)		; D2 1E
	cpx #$84.b		; E0 84
	beq   0.b		; F0 00
	ora ($31.b)		; 12 31
	sbc ($0D.b),Y		; F1 0D
	cpy $78FF.w		; CC FF 78
	sbc ($52.b,X)		; E1 52
	cmp ($B1.b),Y		; D1 B1
	sbc ($1F.b),Y		; F1 1F
	ora ($11.b),Y		; 11 11
	sei		; 78
	inc $E40D.w,X		; FE 0D E4
	cpy #$31.b		; C0 31
	bmi  12.b		; 30 0C
	ora ($78.b,X)		; 01 78
	sbc $2F013F.l,X		; FF 3F 01 2F
	trb $DCE6.w		; 1C E6 DC
	pea $6A68.w		; F4 68 6A
	cmp $F5FE53.l		; CF 53 FE F5
	sep #$C3		; E2 C3
	asl $0374.w		; 0E 74 03
	asl $2D0E.w,X		; 1E 0E 2D
	cmp $EEA2.w,Y		; D9 A2 EE
	brk $78.b		; 00 78
	and ($B4.b),Y		; 31 B4
	rol $E2FF.w		; 2E FF E2
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	ora $B578.w,X		; 1D 78 B5
	inc $1401.w,X		; FE 01 14
	beq   2.b		; F0 02
	phk		; 4B
	ldx $2088.w,Y		; BE 88 20
	sbc ($31.b,X)		; E1 31
	lda $3C13.w,X		; BD 13 3C
	sbc ($32.b,S),Y		; F3 32
	dey		; 88
	sbc ($0D.b,X)		; E1 0D
	bcc  65.b		; 90 41
	sbc $FB.b		; E5 FB
	sbc ($62.b),Y		; F1 62
	tya		; 98
	bne  18.b		; D0 12
	and $E1DE1C.l		; 2F 1C DE E1
	mvp $A4,$EE		; 44 EE A4
	sbc ($43.b)		; F2 43
	ora ($11.b),Y		; 11 11
	bpl -19.b		; 10 ED
	tax		; AA
	sta ($A8.b)		; 92 A8
	rol $52D0.w,X		; 3E D0 52
	lda $0B11.w		; AD 11 0B
	and ($DD.b)		; 32 DD
	clv		; B8
	sbc [$4D.b]		; E7 4D
	cmp ($31.b,X)		; C1 31
	ldx $FF31.w		; AE 31 FF
	trb $C4.b		; 14 C4
	inc $40F2.w,X		; FE F2 40
	beq  32.b		; F0 20
	inc $F011.w		; EE 11 F0
	ldy $13.b,X		; B4 13
	phx		; DA
	cpx $5F.b		; E4 5F
	sbc ($30.b)		; F2 30
	dec $B420.w,X		; DE 20 B4
	cmp ($21.b),Y		; D1 21
	wai		; CB
	sbc $50.b		; E5 50
	ora ($2F.b,X)		; 01 2F
	cmp $F21FB4.l,X		; DF B4 1F F2
	bmi -69.b		; 30 BB
	cpx $51.b		; E4 51
	ora ($2F.b,X)		; 01 2F
	ldy $DF.b,X		; B4 DF
	ora $BB3F03.l		; 0F 03 3F BB
	cmp $52.b,X		; D5 52
	ora ($B4.b,X)		; 01 B4
	ora $1300CF.l,X		; 1F CF 00 13
	rol $D6BA.w,X		; 3E BA D6
	eor ($C4.b)		; 52 C4
	ora ($0F.b,X)		; 01 0F
	sbc $1E1210.l		; EF 10 12 1E
	cmp $B8F4.w,X		; DD F4 B8
	dec $0BD1.w,X		; DE D1 0B
	ora ($21.b)		; 12 21
	jsr $E0EA.w		; 20 EA E0
	iny		; C8
	bit $FE.b,X		; 34 FE
	sbc ($EF.b),Y		; F1 EF
	cop $11.b		; 02 11
	brk $EC.b		; 00 EC
	cpy $DE.b		; C4 DE
	trb $32.b		; 14 32
	beq -19.b		; F0 ED
	sbc ($22.b,X)		; E1 22
	bmi -56.b		; 30 C8
	inc $3212.w		; EE 12 32
	inc $E1D1.w,X		; FE D1 E1
	ora ($01.b,S),Y		; 13 01
	iny		; C8
	sbc $22D0.w,X		; FD D0 22
	and ($DE.b)		; 32 DE
	cmp ($F2.b),Y		; D1 F2
	ora ($C8.b,S),Y		; 13 C8
	ora $22E2FC.l		; 0F FC E2 22
	and ($DC.b),Y		; 31 DC
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	iny		; C8
	and ($0F.b,X)		; 21 0F
	dec $3002.w		; CE 02 30
	eor $C8F1DC.l		; 4F DC F1 C8
	jsl $DF0D20.l		; 22 20 0D DF
	ora ($11.b,S),Y		; 13 11
	rol $B8DB.w,X		; 3E DB B8
	.db $42, $44		; 42 44
	jsr $A0EA.w		; 20 EA A0
	eor $15.b,X		; 55 15
	asl A		; 0A
	iny		; C8
	cmp $2231.w,X		; DD 31 22
	ora $32F1FC.l		; 0F FC F1 32
	ora ($B8.b),Y		; 11 B8
	dex		; CA
	lda $23.b,S		; A3 23
	eor ($FD.b),Y		; 51 FD
	tyx		; BB
	bit $52.b		; 24 52
	clv		; B8
	phk		; 4B
	cmp #$21.b		; C9 21
	and $2F.b,X		; 35 2F
	xba		; EB
	lda ($35.b),Y		; B1 35
	clv		; B8
	eor ($EB.b,X)		; 41 EB
	bcs   4.b		; B0 04
	eor ($0F.b),Y		; 51 0F
	plb		; AB
	ora ($B8.b,S),Y		; 13 B8
	stz $EF.b		; 64 EF
	ldx $35E1.w,Y		; BE E1 35
	ora ($EA.b,X)		; 01 EA
	cmp ($B4.b),Y		; D1 B4
	cpx $64.b		; E4 64
	and $34C0EA.l		; 2F EA C0 34
	bvc -39.b		; 50 D9
	ldy $C2.b,X		; B4 C2
	eor ($30.b,S),Y		; 53 30
	tsb $03CF.w		; 0C CF 03
	and ($FC.b)		; 32 FC
	ldy $B1.b,X		; B4 B1
	.db $42, $11		; 42 11
	asl $01EE.w,X		; 1E EE 01
	and ($FE.b,X)		; 21 FE
	clv		; B8
	sbc ($4D.b,S),Y		; F3 4D
	sbc $2F002E.l,X		; FF 2E 00 2F
	ora $14B8EF.l,X		; 1F EF B8 14
	lsr A		; 4A
	beq  15.b		; F0 0F
	jsr $FF2F.w		; 20 2F FF
	cpx #$B8.b		; E0 B8
	ora [$1D.b]		; 07 1D
	cmp $3F211E.l,X		; DF 1E 21 3F
	sbc $B4FE.w,X		; FD FE B4
	sbc $53.b		; E5 53
	sbc $32F0ED.l,X		; FF ED F0 32
	ora $F6B4CC.l,X		; 1F CC B4 F6
	and ($F0.b)		; 32 F0
	inc $22E1.w		; EE E1 22
	asl $B4DD.w		; 0E DD B4
	and $20.b		; 25 20
	beq -18.b		; F0 EE
	ora ($21.b,X)		; 01 21
	inc $B4D0.w		; EE D0 B4
	eor ($1F.b,S),Y		; 53 1F
	inc $12FF.w,X		; FE FF 12
	ora $B4F4EC.l,X		; 1F EC F4 B4
	and ($0F.b,S),Y		; 33 0F
	inc $12F0.w		; EE F0 12
	ora $33DE.w,X		; 1D DE 33
	ldy $52.b		; A4 52
	inc $D2DD.w,X		; FE DD D2
	eor ($DA.b,X)		; 41 DA
	dec $54.b		; C6 54
	ldy $11.b		; A4 11
	sbc $13ED.w		; ED ED 13
	bit $75AD.w		; 2C AD 75
	and ($B4.b),Y		; 31 B4
	ora $11F0FF.l		; 0F FF F0 11
	sbc $21F4.w		; ED F4 21
	bpl -88.b		; 10 A8
	cmp ($F1.b)		; D2 F1
	ora ($DB.b,S),Y		; 13 DB
	ora [$69.b]		; 07 69
	brk $FD.b		; 00 FD
	ldy $FF.b		; A4 FF
	sbc ($1E.b,X)		; E1 1E
	lda $3066.w,X		; BD 66 30
	asl $B8D0.w		; 0E D0 B8
	brk $00.b		; 00 00
	sbc $F0D034.l		; EF 34 D0 F0
	sbc ($01.b,X)		; E1 01
	ldy $12.b		; A4 12
	nop		; EA
	cmp $63.b,X		; D5 63
	ora ($EE.b),Y		; 11 EE
	sbc $A801.w,X		; FD 01 A8
	asl A		; 0A
	ora [$5B.b]		; 07 5B
	sbc $113EFE.l,X		; FF FE 3E 11
	ora $DFB4.w,X		; 1D B4 DF
	.db $42, $11		; 42 11
	asl $F0F0.w		; 0E F0 F0
	ora $31B8EF.l,X		; 1F EF B8 31
	cmp ($0E.b),Y		; D1 0E
	ora ($F1.b,X)		; 01 F1
	brk $E0.b		; 00 E0
	eor ($B8.b,X)		; 41 B8
	cpx #$0E.b		; E0 0E
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	asl $C0.b,X		; 16 C0
	ldy $11.b,X		; B4 11
	inc $F10F.w		; EE 0F F1
	inc $31F3.w,X		; FE F3 31
	bpl -92.b		; 10 A4
	inc $E0FE.w		; EE FE E0
	xce		; FB
	cmp [$62.b],Y		; D7 62
	jsl $FFB4ED.l		; 22 ED B4 FF
	brk $0D.b		; 00 0D
	sep #$41		; E2 41
	ora ($FF.b)		; 12 FF
	sbc $1C10A8.l		; EF A8 10 1C
	inc $6B.b,X		; F6 6B
	beq  12.b		; F0 0C
	ora ($00.b,X)		; 01 00
	clv		; B8
	asl $4EF3.w,X		; 1E F3 4E
	cpx #$1D.b		; E0 1D
	bpl   0.b		; 10 00
	asl $F3B8.w,X		; 1E B8 F3
	and $101DFF.l,X		; 3F FF 1D 10
	brk $00.b		; 00 00
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	eor $21.b,S		; 43 21
	ora $FFFFEF.l,X		; 1F EF FF FF
	sbc $FFB843.l		; EF 43 B8 FF
	ora $0F01F0.l		; 0F F0 01 0F
	sbc ($4F.b)		; F2 4F
	sbc ($B8.b,X)		; E1 B8
	sbc $1FF0E2.l,X		; FF E2 F0 1F
	sbc ($4F.b)		; F2 4F
	sbc $01A80E.l,X		; FF 0E A8 01
	ora $7DD61F.l		; 0F 1F D6 7D
	beq -20.b		; F0 EC
	sbc ($A8.b),Y		; F1 A8
	brk $2E.b		; 00 2E
	cmp [$5E.b],Y		; D7 5E
	beq  -5.b		; F0 FB
	beq  16.b		; F0 10
	ldy $FE.b,X		; B4 FE
	sep #$42		; E2 42
	and $1E.b,S		; 23 1E
	inc $EEFE.w		; EE FE EE
	ldy $E5.b		; A4 E5
	adc $55.b,X		; 75 55
	ora $DCBB.w,X		; 1D BB DC
	cpy $A816.w		; CC 16 A8
	beq   0.b		; F0 00
	cmp $11E1.w		; CD E1 11
	sep #$42		; E2 42
	sbc $BD3F98.l		; EF 98 3F BD
	sbc ($20.b),Y		; F1 20
	ora ($11.b,X)		; 01 11
	sbc $148000.l,X		; FF 00 80 14
	.db $42, $11		; 42 11
	and $41.b		; 25 41
	ora ($FC.b,X)		; 01 FC
	tyx		; BB
	sty $33.b		; 84 33
	sbc $1F13.w,X		; FD 13 1F
	inc $FD24.w,X		; FE 24 FD
	cmp ($88.b),Y		; D1 88
	ora $3FE2.w,X		; 1D E2 3F
	ora $0E04.w,X		; 1D 04 0E
	cmp $8814.w		; CD 14 88
	rol $20F2.w,X		; 3E F2 20
	sbc $DFFC02.l		; EF 02 FC DF
	mvp $2D,$88		; 44 88 2D
	sbc ($21.b,S),Y		; F3 21
	jmp.w [$1A02]		; DC 02 1A
	cmp $64.b,S		; C3 64
	dey		; 88
	xce		; FB
	bit $2E.b		; 24 2E
	sta $E5DC32.l,X		; 9F 32 DC E5
	eor ($88.b)		; 52 88
	cmp $0A34.w,X		; DD 34 0A
	inc $BD24.w,X		; FE 24 BD
	sbc $42.b,X		; F5 42
	tya		; 98
	sbc $0E22.w,X		; FD 22 0E
	sbc ($2F.b,X)		; E1 2F
	sbc $9831E4.l		; EF E4 31 98
	lda ($22.b),Y		; B1 22
	inc $3FE2.w		; EE E2 3F
	dec $1F32.w		; CE 32 1F
	tya		; 98
	sbc ($12.b),Y		; F1 12
	dec $0E03.w,X		; DE 03 0E
	sbc $0F24.w,X		; FD 24 0F
	tya		; 98
.ACCU 8
	sep #$22		; E2 22
	cmp $FD14.w		; CD 14 FD
	cmp ($43.b,X)		; C1 43
	jsr ($3298.w,X)		; FC 98 32
	rol $21C0.w		; 2E C0 21
	jmp.w [$4203]		; DC 03 42
	cmp ($98.b,X)		; C1 98
	ora ($0D.b)		; 12 0D
	cmp ($20.b),Y		; D1 20
	cmp $3F25.w		; CD 25 3F
	cmp ($98.b),Y		; D1 98
	jsl $0DF4DC.l		; 22 DC F4 0D
	sbc $110C45.l		; EF 45 0C 11
	tya		; 98
	and $12DF.w,X		; 3D DF 12
	inc $52D4.w		; EE D4 52
	dec $9812.w,X		; DE 12 98
	asl $4ED0.w		; 0E D0 4E
	cmp $5E25.w,X		; DD 25 5E
	dec $9832.w,X		; DE 32 98
	cmp $0E03.w,X		; DD 03 0E
	lda ($55.b),Y		; B1 55
	tsb $2EE2.w		; 0C E2 2E
	tya		; 98
	sbc $ED32.w,X		; FD 32 ED
	pei ($52.b)		; D4 52
	dec $1E12.w		; CE 12 1E
	tya		; 98
	cmp ($40.b,X)		; C1 40
	stp		; DB
	bit $5D.b		; 24 5D
	cmp $98DD34.l,X		; DF 34 DD 98
	cpx $2D.b		; E4 2D
	lda $D10D56.l		; AF 56 0D D1
	bvc -51.b		; 50 CD
	tya		; 98
	bit $09.b		; 24 09
.ACCU 16
.INDEX 16
	rep #$75		; C2 75
	jmp.w [$4EF3]		; DC F3 4E
	ldx $31A8.w,Y		; BE A8 31
	cpx $3103.w		; EC 03 31
	cmp $E10E12.l,X		; DF 12 0E E1
	ldy $21.b		; A4 21
	xba		; EB
	cmp ($33.b),Y		; D1 33
	sbc $D11E14.l,X		; FF 14 1E D1
	ldy $21.b		; A4 21
	tyx		; BB
	ora $40.b		; 05 40
	cmp $F5DB32.l,X		; DF 32 DB F5
	ldy $20.b,X		; B4 20
	cmp $F01D24.l		; CF 24 1D F0
	rol $46BF.w		; 2E BF 46
	iny		; C8
	sbc $1E12.w		; ED 12 1E
	sbc ($21.b,X)		; E1 21
	cmp $C41D14.l,X		; DF 14 1D C4
	dec $0D12.w,X		; DE 12 0D
	sbc ($1F.b)		; F2 1F
	bne  67.b		; D0 43
	tsb $24C8.w		; 0C C8 24
	ora $2FE3.w		; 0D E3 2F
	cpy #$DB53.w		; C0 53 DB
	pea $12C0.w		; F4 C0 12
	asl $1DF1.w		; 0E F1 1D
	cmp $F21E45.l		; CF 45 1E F2
	cpy $FE.b		; C4 FE
	sbc ($1F.b)		; F2 1F
	cmp $E10D44.l,X		; DF 44 0D E1
	and $2EF2C8.l		; 2F C8 F2 2E
	sbc $E1EC35.l		; EF 35 EC E1
	eor $31C8EF.l		; 4F EF C8 31
	inc $3FF4.w		; EE F4 3F
	dec $0F22.w		; CE 22 0F
	sbc $C8.b,S		; E3 C8
	ora $DD34E0.l		; 0F E0 34 DD
	pei ($10.b)		; D4 10
	cpx #$C821.w		; E0 21 C8
	cmp $CF2E04.l,X		; DF 04 2E CF
	and ($EF.b)		; 32 EF
	ora $FE.b,S		; 03 FE
	cpy $DF.b		; C4 DF
	bit $1D.b,X		; 34 1D
	cpx #$E020.w		; E0 20 E0
	ora ($ED.b),Y		; 11 ED
	iny		; C8
	bit $FD.b,X		; 34 FD
	cmp ($30.b),Y		; D1 30
	sbc $03FE11.l,X		; FF 11 FE 03
	iny		; C8
	rol $22DE.w,X		; 3E DE 22
	asl $0E02.w		; 0E 02 0E
	beq  81.b		; F0 51
	clv		; B8
	lda #$2F05.w		; A9 05 2F
	cmp ($3F.b),Y		; D1 3F
	dec $D967.w		; CE 67 D9
	cpy $DF.b		; C4 DF
	ora ($FF.b),Y		; 11 FF
	ora ($0E.b,X)		; 01 0E
	sbc $41.b,S		; E3 41
	sbc $71B8.w		; ED B8 71
	sbc $FB23.w		; ED 23 FB
	asl $5D.b		; 06 5D
	lda $B434.w		; AD 34 B4
	ora $2EE2.w,X		; 1D E2 2E
	bcs 103.b		; B0 67
	tsb $1ED1.w		; 0C D1 1E
	clv		; B8
	sbc ($2E.b,S),Y		; F3 2E
	cmp ($73.b,X)		; C1 73
	tyx		; BB
	ora $0E.b,S		; 03 0E
	sbc ($B8.b,S),Y		; F3 B8
	rol $55D0.w		; 2E D0 55
	wai		; CB
	sbc ($0E.b,S),Y		; F3 0E
	sbc ($3F.b)		; F2 3F
	clv		; B8
	dec $FB46.w,X		; DE 46 FB
	cpx #$022D.w		; E0 2D 02
	bmi -50.b		; 30 CE
	clv		; B8
	mvp $D1,$2B		; 44 2B D1
	beq -28.b		; F0 E4
	and $B825EE.l		; 2F EE 25 B8
	asl $FFEF.w		; 0E EF FF
	cop $3F.b		; 02 3F
	sbc $1F15.w,X		; FD 15 1F
	tay		; A8
	cpy $12EE.w		; CC EE 12
	eor ($EC.b),Y		; 51 EC
	sbc ($61.b,S),Y		; F3 61
	ora $BCA8.w		; 0D A8 BC
	sbc ($51.b)		; F2 51
	and $45EE.w		; 2D EE 45
	and $00A8AB.l		; 2F AB A8 00
	and ($21.b),Y		; 31 21
	jsr ($2403.w,X)		; FC 03 24
	tsb $A8BE.w		; 0C BE A8
	cop $22.b		; 02 22
	ora $4013EE.l,X		; 1F EE 13 40
	jmp.w [$A4F0]		; DC F0 A4
	dec $2002.w,X		; DE 02 20
	inc $24E1.w		; EE E1 24
	eor $FC.b,S		; 43 FC
	tya		; 98
	ora ($53.b)		; 12 53
	asl $34BE.w		; 0E BE 34
	and ($EE.b,X)		; 21 EE
	cmp $33D184.l,X		; DF 84 D1 33
	tsb $01F0.w		; 0C F0 01
	sbc ($0E.b),Y		; F1 0E
	dec $4484.w,X		; DE 84 44
	ora $41D2.w,X		; 1D D2 41
	cpx #$ED33.w		; E0 33 ED
	sbc ($88.b),Y		; F1 88
	tsb $2FE4.w		; 0C E4 2F
	cpx #$2A23.w		; E0 23 2A
	sbc ($0E.b)		; F2 0E
	sty $DD.b		; 84 DD
	and ($1B.b,S),Y		; 33 1B
	cmp $301123.l		; CF 23 11 30
	wai		; CB
	sty $E3.b		; 84 E3
	eor ($EC.b),Y		; 51 EC
	ora ($01.b)		; 12 01
	ora ($0D.b,S),Y		; 13 0D
	dec $3284.w,X		; DE 84 32
	sbc $31E3.w		; ED E3 31
	ora $13ED2F.l		; 0F 2F ED 13
	sty $1D.b		; 84 1D
	cmp ($42.b,X)		; C1 42
	ora $140DF1.l		; 0F F1 0D 14
	lsr $9C84.w		; 4E 84 9C
	bit $1F.b		; 24 1F
	ora ($1C.b,X)		; 01 1C
	sbc ($50.b,S),Y		; F3 50
	ldy $1484.w,X		; BC 84 14
	ora $E30EE1.l,X		; 1F E1 0E E3
	adc $CA.b,S		; 63 CA
	sep #$88		; E2 88
	inc $1B11.w,X		; FE 11 1B
	sbc $30.b,X		; F5 30
	stp		; DB
	ora ($1F.b)		; 12 1F
	dey		; 88
	bpl  44.b		; 10 2C
	sbc ($33.b)		; F2 33
	cmp $0E02.w		; CD 02 0E
	cop $88.b		; 02 88
	asl $3201.w		; 0E 01 32
	cpx $1E10.w		; EC 10 1E
	sbc ($1E.b,S),Y		; F3 1E
	sei		; 78
	ldy $35.b,X		; B4 35
	jsr ($FFFF.w,X)		; FC FF FF
	ora $2E.b,S		; 03 2E
	dec $0574.w,X		; DE 74 05
	.db $42, $F1		; 42 F1
	asl $21C0.w		; 0E C0 21
	jmp.w [$78E4]		; DC E4 78
	bit $FFFF.w		; 2C FF FF
	cop $12.b		; 02 12
	cmp $783F00.l,X		; DF 00 3F 78
	ora ($EF.b),Y		; 11 EF
	cmp $12.b,S		; C3 12
	inc $10F3.w,X		; FE F3 10
	brk $64.b		; 00 64
	pld		; 2B
	phx		; DA
	cmp $10.b		; C5 10
	cpx #$E615.w		; E0 15 E6
	inc $AF64.w,X		; FE 64 AF
	cmp ($31.b,X)		; C1 31
	cop $6D.b		; 02 6D
	sbc $68DB10.l,X		; FF 10 DB 68
	lsr $3E31.w		; 4E 31 3E
	tsa		; 3B
	sbc $101FE2.l,X		; FF E2 1F 10
	rts		; 60

	tax		; AA
	lda $5476.w		; AD 76 54
	and ($00.b,X)		; 21 00
	sbc $DC70EB.l,X		; FF EB 70 DC
	pea $1E34.w		; F4 34 1E
	cmp $11DF.w,X		; DD DF 11
	asl $5468.w		; 0E 68 54
	sbc $C75FBC.l,X		; FF BC 5F C7
	bit $9B.b		; 24 9B
	rti		; 40

	stz $31.b,X		; 74 31
	brk $E0.b		; 00 E0
	xce		; FB
	cop $3F.b		; 02 3F
	ora ($21.b,X)		; 01 21
	stz $0D.b,X		; 74 0D
	sbc ($0E.b),Y		; F1 0E
	sbc ($0F.b)		; F2 0F
	sbc $741033.l,X		; FF 33 10 74
	sbc $11FFF0.l		; EF F0 FF 11
	sbc $4F14.w,X		; FD 14 4F
	cpx #$1B64.w		; E0 64 1B
	cmp $DA54.w,X		; DD 54 DA
	sbc ($60.b,S),Y		; F3 60
	sbc $603C.w,X		; FD 3C 60
	rti		; 40

	cpx #$FD2D.w		; E0 2D FD
	cop $FE.b		; 02 FE
	dec $54D2.w,X		; DE D2 54
	asl $DB01.w,X		; 1E 01 DB
	sbc ($35.b)		; F2 35
	cpx #$F22D.w		; E0 2D F2
	sei		; 78
	asl $0310.w		; 0E 10 03
	cmp ($F0.b),Y		; D1 F0
	cop $2D.b		; 02 2D
	jsr ($C664.w,X)		; FC 64 C6
	jsl $0F52CC.l		; 22 CC 52 0F
	pei ($0F.b)		; D4 0F
	ora $70.b,S		; 03 70
	asl $61C3.w,X		; 1E C3 61
	stp		; DB
	sta $FE00.w,X		; 9D 00 FE
	dec $2260.w,X		; DE 60 22
	and [$4E.b]		; 27 4E
	ldx $F10E.w		; AE 0E F1
	and $DB.b,S		; 23 DB
	sei		; 78
	jsr $30FF.w		; 20 FF 30
	sbc $E5DE01.l,X		; FF 01 DE E5
	jmp ($0F74.w)		; 6C 74 0F
	cmp ($35.b,X)		; C1 35
	jsr $CBF3.w		; 20 F3 CB
	bit $1B.b,X		; 34 1B
	stz $B0.b,X		; 74 B0
	.db $42, $FB		; 42 FB
	asl $44.b		; 06 44
	ora $D0EC.w		; 0D EC D0
	tya		; 98
	bpl -17.b		; 10 EF
	bpl  13.b		; 10 0D
	bit $2E.b,X		; 34 2E
	inc $9810.w		; EE 10 98
	bpl  14.b		; 10 0E
	sbc $3234ED.l,X		; FF ED 34 32
	sbc ($40.b,S),Y		; F3 40
	tay		; A8
	cmp $1E01.w		; CD 01 1E
	ora $41140E.l		; 0F 0E 14 41
	sbc $FD20B8.l		; EF B8 20 FD
	sbc ($0F.b),Y		; F1 0F
	brk $1F.b		; 00 1F
	sbc ($33.b,S),Y		; F3 33
	clv		; B8
	sbc $0D01.w		; ED 01 0D
	cmp ($2F.b)		; D2 2F
	sbc $B80111.l,X		; FF 11 01 B8
	eor ($DC.b)		; 52 DC
	cop $FB.b		; 02 FB
	tsb $00.b		; 04 00
	bne  32.b		; D0 20
	clv		; B8
	trb $3E.b		; 14 3E
	dec $DE11.w		; CE 11 DE
	bit $FD.b		; 24 FD
.ACCU 8
.INDEX 8
	sep #$B8		; E2 B8
	and ($23.b,X)		; 21 23
	tsb $1DD0.w		; 0C D0 1D
	sbc ($30.b,S),Y		; F3 30
	cmp $13B8.w,X		; DD B8 13
	jsl $F0CC20.l		; 22 20 CC F0
	ora $B81B33.l,X		; 1F 33 1B B8
	cmp $22.b,S		; C3 22
	ora $1D.b,S		; 03 1D
	ldx $013F.w,Y		; BE 3F 01
	eor $25BCB8.l,X		; 5F B8 BC 25
	adc ($DC.b,X)		; 61 DC
	bne  14.b		; D0 0E
	jsl $ECB84F.l		; 22 4F B8 EC
	sbc ($24.b,S),Y		; F3 24
	ora $F001BE.l,X		; 1F BE 01 F0
	and $B8.b		; 25 B8
	xba		; EB
.ACCU 16
	rep #$64		; C2 64
	asl $E1CE.w,X		; 1E CE E1
	ora $0CB843.l		; 0F 43 B8 0C
	cpy #$34.b		; C0 34
	and $F0F0ED.l,X		; 3F ED F0 F0
	tsb $C8.b		; 04 C8
	ora $4D23DF.l,X		; 1F DF 23 4D
	cmp $12E101.l,X		; DF 01 E1 12
	clv		; B8
	ora $13C0.w		; 0D C0 13
	eor ($CB.b)		; 52 CB
	cmp ($3F.b)		; D2 3F
	sbc ($C8.b)		; F2 C8
	bpl -19.b		; 10 ED
	jsl $02BE41.l		; 22 41 BE 02
	ora $3DC8F2.l		; 0F F2 C8 3D
	sbc $CF3013.l		; EF 13 30 CF
	sbc ($00.b),Y		; F1 00
	cop $B8.b		; 02 B8
	and $22CE.w		; 2D CE 22
	adc $BB.b,S		; 63 BB
	cmp ($21.b)		; D2 21
	sbc ($B8.b),Y		; F1 B8
	and $63F5CD.l,X		; 3F CD F5 63
	cmp #$2FE4.w		; C9 E4 2F
	cmp ($C8.b),Y		; D1 C8
	and $3203EE.l,X		; 3F EE 03 32
	cmp $0010.w		; CD 10 00
	ora ($B8.b,X)		; 01 B8
	lsr $F2DE.w		; 4E DE F2
	and [$EB.b]		; 27 EB
.ACCU 16
	rep #$20		; C2 20
	cpx #$C8.b		; E0 C8
	jsr $F2FE.w		; 20 FE F2
	and ($DC.b,S),Y		; 33 DC
	ora ($2E.b,X)		; 01 2E
	brk $B8.b		; 00 B8
	ror $F2DE.w		; 6E DE F2
	and $FB.b,X		; 35 FB
	bne  79.b		; D0 4F
	cpx #$B8.b		; E0 B8
	and ($DD.b)		; 32 DD
	sbc ($56.b),Y		; F1 56
	cmp $2FE3.w,Y		; D9 E3 2F
	cmp ($B8.b),Y		; D1 B8
	eor ($DE.b,X)		; 41 DE
.ACCU 8
	sep #$24		; E2 24
	dec A		; 3A
	cpy #$31.b		; C0 31
	inc $41B8.w		; EE B8 41
	inc $26D1.w,X		; FE D1 26
	trb $4FB0.w		; 1C B0 4F
	inc $33B8.w,X		; FE B8 33
	inc $22E0.w		; EE E0 22
	lsr $31AF.w,X		; 5E AF 31
	sbc $14B8.w,X		; FD B8 14
	beq -33.b		; F0 DF
	ora ($41.b)		; 12 41
	lda $0D22.w,X		; BD 22 0D
	clv		; B8
	pea $FD00.w		; F4 00 FD
	cop $34.b		; 02 34
	wai		; CB
	and ($2D.b,X)		; 21 2D
	ldy $CF.b,X		; B4 CF
	and ($0F.b,X)		; 21 0F
	inc $40F5.w		; EE F5 40
	cpx #$11.b		; E0 11
	clv		; B8
	cmp $F00E40.l,X		; DF 40 0E F0
	ora $4D.b,S		; 03 4D
	cmp $CEB831.l,X		; DF 31 B8 CE
	eor ($00.b,X)		; 41 00
	sbc $BE4300.l		; EF 00 43 BE
	and ($B4.b,X)		; 21 B4
	asl $11E0.w,X		; 1E E0 11
	sbc $41E4EE.l,X		; FF EE E4 41
	sbc ($B4.b),Y		; F1 B4
	and $1010ED.l		; 2F ED 10 10
	inc $43EF.w,X		; FE EF 43
	ora $0D21B4.l		; 0F B4 21 0D
	sbc ($00.b),Y		; F1 00
	ora $40E4EE.l		; 0F EE E4 40
	ldy $F2.b,X		; B4 F2
	and $0F00EF.l		; 2F EF 00 0F
	asl $34EF.w		; 0E EF 34
	ldy $F0.b		; A4 F0
	.db $42, $FC		; 42 FC
	sbc ($FF.b,X)		; E1 FF
	ora $A8E6CB.l		; 0F CB E6 A8
	asl A		; 0A
	jsl $2DD2FD.l		; 22 FD D2 2D
	bmi -18.b		; 30 EE
	cop $A4.b		; 02 A4
	adc $02.b		; 65 02
	eor ($FD.b)		; 52 FD
	sbc $CC0EEE.l,X		; FF EE 0E CC
	ldy $F7.b		; A4 F7
	eor ($35.b,X)		; 41 35
	and $EFEECE.l,X		; 3F CE EE EF
	sbc $F5A8.w		; ED A8 F5
	tad		; 5B
	pea $C00D.w		; F4 0D C0
	and $A81E01.l		; 2F 01 1E A8
	sbc ($44.b,X)		; E1 44
	bcs  48.b		; B0 30
	dec $0010.w,X		; DE 10 00
	ora ($98.b,X)		; 01 98
	ldx $6B07.w		; AE 07 6B
	and $1C.b,S		; 23 1C
	rep #$0F		; C2 0F
	cpx #$A8.b		; E0 A8
	asl $2300.w		; 0E 00 23
	beq  47.b		; F0 2F
	trb $1E10.w		; 1C 10 1E
	sty $CE.b,X		; 94 CE
	cmp $31CE.w,X		; DD CE 31
	sbc ($11.b),Y		; F1 11
	beq  17.b		; F0 11
	dey		; 88
	jsl $4ED0FE.l		; 22 FE D0 4E
	inc $F4FF.w		; EE FF F4
	and $44E188.l,X		; 3F 88 E1 44
	sbc $A2DC11.l		; EF 11 DC A2
	ora ($0E.b),Y		; 11 0E
	dey		; 88
	ora $124043.l		; 0F 43 40 12
	ora $F1BC.w		; 0D BC F1
	sbc ($88.b,S),Y		; F3 88
	ora $41B3.w,X		; 1D B3 41
	and $6E.b,S		; 23 6E
	cmp $88BF0F.l		; CF 0F BF 88
	beq  30.b		; F0 1E
	cop $E4.b		; 02 E4
	bit $2C.b,X		; 34 2C
	ora $0D.b,S		; 03 0D
	dey		; 88
	dec $13BF.w,X		; DE BF 13
	trb $0115.w		; 1C 15 01
	and ($1F.b)		; 32 1F
	dey		; 88
	bpl -55.b		; 10 C9
	bne  35.b		; D0 23
	beq  -1.b		; F0 FF
	ora $63.b,S		; 03 63
	dey		; 88
	brk $1E.b		; 00 1E
	cpy $02EE.w		; CC EE 02
	and $43C0.w,X		; 3D C0 43
	dey		; 88
	and ($20.b,S),Y		; 33 20
	bne  43.b		; D0 2B
	cpx $11F0.w		; EC F0 11
	rep #$88		; C2 88
	jsr $4024.w		; 20 24 40
	beq  31.b		; F0 1F
	lda $12EE.w		; AD EE 12
	dey		; 88
	rol $23D0.w,X		; 3E D0 23
	eor ($F1.b,S),Y		; 53 F1
	asl $DEEA.w,X		; 1E EA DE
	sty $CE.b,X		; 94 CE
	sbc $EFBC.w,X		; FD BC EF
	trb $56.b		; 14 56
	mvn $88,$40		; 54 40 88
	sbc $EF10F0.l		; EF F0 10 EF
	sbc ($35.b,S),Y		; F3 35
	rti		; 40

	cmp ($88.b),Y		; D1 88
	ora $EDFB.w,X		; 1D FB ED
	and $EB.b		; 25 EB
	sbc ($42.b)		; F2 42
	.db $42, $88		; 42 88
	ora $CFEC2F.l		; 0F 2F EC CF
	ora ($4B.b),Y		; 11 4B
	cmp ($02.b),Y		; D1 02
	dey		; 88
	mvp $E0,$20		; 44 20 E0
	ora $02EC.w,X		; 1D EC 02
	jsr $88DC.w		; 20 DC 88
	pea $6002.w		; F4 02 60
	ora $FED01F.l		; 0F 1F D0 FE
	tsb $88.b		; 04 88
	tas		; 1B
	cmp $3F5110.l,X		; DF 10 51 3F
	asl $CF11.w,X		; 1E 11 CF
	dey		; 88
	tsb $FE.b		; 04 FE
	inc $E4E2.w		; EE E2 E4
	and ($11.b,X)		; 21 11
	asl $CF78.w,X		; 1E 78 CF
	adc $1CD4.w		; 6D D4 1C
	ldx $06D0.w,Y		; BE D0 06
	and ($88.b,S),Y		; 33 88
	beq  48.b		; F0 30
	cmp ($00.b),Y		; D1 00
	asl $1F0E.w,X		; 1E 0E 1F
	beq 120.b		; F0 78
	lda $45.b,S		; A3 45
	sbc ($16.b),Y		; F1 16
	asl A		; 0A
	bne  78.b		; D0 4E
	cop $78.b		; 02 78
	cmp $EEFF.w,X		; DD FF EE
	and $32.b,S		; 23 32
	sbc ($03.b,S),Y		; F3 03
	cmp $E378.w,X		; DD 78 E3
	ora $D13F.w,X		; 1D 3F D1
	dec $32EF.w		; CE EF 32
	adc ($68.b,S),Y		; 73 68
	cmp $191E.w		; CD 1E 19
	bvc   3.b		; 50 03
	cmp $D0EA.w,X		; DD EA D0
	pla		; 68
	sbc ($05.b,S),Y		; F3 05
	rol $32.b		; 26 32
	sbc $B4ED.w,X		; FD ED B4
	bpl 120.b		; 10 78
	bpl -47.b		; 10 D1
	sbc $3E41C0.l,X		; FF C0 41 3E
	and ($E1.b),Y		; 31 E1
	sei		; 78
	sbc $42F2EF.l,X		; FF EF F2 42
	lda ($E0.b)		; B2 E0
	jsr ($6401.w,X)		; FC 01 64
	cpy $6443.w		; CC 43 64
	bit $43.b		; 24 43
	and $05.b		; 25 05
	eor $78.b,X		; 55 78
	sbc ($DF.b),Y		; F1 DF
	sbc $20E1E6.l		; EF E6 E1 20
	rol $680F.w,X		; 3E 0F 68
.ACCU 8
	sep #$E2		; E2 E2
	sbc ($FF.b)		; F2 FF
	sbc $FB5B.w,X		; FD 5B FB
	bvs 100.b		; 70 64
	sbc $7E251F.l		; EF 1F 25 7E
	trb $50.b		; 14 50
	ora $78EF.w		; 0D EF 78
	bmi  15.b		; 30 0F
	brk $D0.b		; 00 D0
	sbc $0E114F.l		; EF 4F 11 0E
	sei		; 78
	eor $10E0E2.l		; 4F E2 E0 10
	ora ($F1.b,X)		; 01 F1
	pld		; 2B
	pei ($78.b)		; D4 78
	lda ($E4.b,S),Y		; B3 E4
	beq  33.b		; F0 21
	ora $FF02.w,X		; 1D 02 FF
	ora ($74.b,X)		; 01 74
	and ($E1.b,X)		; 21 E1
	inc $EBC3.w		; EE C3 EB
	jmp.w [$31E0]		; DC E0 31
	sei		; 78
	beq  35.b		; F0 23
	cmp ($EF.b)		; D2 EF
	sbc $E20F21.l,X		; FF 21 0F E2
	sei		; 78
	ldx $115F.w,Y		; BE 5F 11
	asl $DE.b,X		; 16 DE
	tad		; 5B
	cmp ($F2.b,S),Y		; D3 F2
	dey		; 88
	sbc $CEE320.l		; EF 20 E3 CE
	jsl $F2131F.l		; 22 1F 13 F2
	sty $62.b		; 84 62
	ora $BEDCEF.l		; 0F EF DC BE
	tsa		; 3B
	bcs -14.b		; B0 F2
	sty $12.b,X		; 94 12
	jsl $DD0F55.l		; 22 55 0F DD
	cpx $1BB2.w		; EC B2 1B
	tay		; A8
	ora ($2E.b),Y		; 11 2E
	ora ($0F.b),Y		; 11 0F
	bmi -50.b		; 30 CE
	ora ($FE.b,X)		; 01 FE
	ldy $03.b		; A4 03
	dec $3112.w		; CE 12 31
	mvp $4F,$15		; 44 15 4F
	dex		; CA
	ldy $ED.b,X		; B4 ED
	cpy #$2E.b		; C0 2E
	cop $23.b		; 02 23
	ora ($31.b,S),Y		; 13 31
	bpl -76.b		; 10 B4
	sbc $BDCD.w		; ED CD BD
	bmi   2.b		; 30 02
	bit $32.b,X		; 34 32
	eor ($B4.b,X)		; 41 B4
	asl $BCDD.w		; 0E DD BC
	ldx $1441.w,Y		; BE 41 14
	eor $32.b		; 45 32
	ldy $1F.b,X		; B4 1F
	sbc $BCCC.w		; ED CC BC
	cpy $51.b		; C4 51
	eor $52.b		; 45 52
	clv		; B8
	sbc ($EF.b,X)		; E1 EF
	brk $1F.b		; 00 1F
.INDEX 8
	sep #$54		; E2 54
	cmp $DEB83F.l		; CF 3F B8 DE
	brk $F0.b		; 00 F0
	and $4A250E.l		; 2F 0E 25 4A
	ora $B8.b,S		; 03 B8
	dec $F1E1.w,X		; DE E1 F1
	cop $0E.b		; 02 0E
	sbc ($43.b)		; F2 43
	lda $DF10B8.l,X		; BF B8 10 DF
	and $DE0211.l		; 2F 11 02 DE
	ora ($4E.b)		; 12 4E
	tay		; A8
	sta $0F.b,X		; 95 0F
	cpy #$3F.b		; C0 3F
	ora ($2F.b,X)		; 01 2F
	lda $B825.w,X		; BD 25 B8
	lsr $1EE1.w		; 4E E1 1E
	sbc $0F022F.l,X		; FF 2F 02 0F
	cmp $3D24B8.l,X		; DF B8 24 3D
	cmp ($0F.b)		; D2 0F
	cpx #$20.b		; E0 20
	ora ($0F.b,X)		; 01 0F
	clv		; B8
	cmp $D12D16.l,X		; DF 16 2D D1
	rol $12E0.w		; 2E E0 12
	brk $B8.b		; 00 B8
	asl $34EE.w		; 0E EE 34
	tad		; 5B
	cmp ($10.b),Y		; D1 10
	cmp $1FB822.l,X		; DF 22 B8 1F
	asl $15EF.w		; 0E EF 15
	lsr $12B0.w		; 4E B0 12
	cpx $22B8.w		; EC B8 22
	bmi -33.b		; 30 DF
	sbc $DD6D14.l		; EF 14 6D DD
	ora ($B8.b)		; 12 B8
	tsb $3103.w		; 0C 03 31
	dec $13EF.w,X		; DE EF 13
	adc $F3B8CE.l		; 6F CE B8 F3
	ora $22F3.w		; 0D F3 22
	jsr ($15EE.w,X)		; FC EE 15
	rti		; 40

	clv		; B8
	cmp $1D01.w,X		; DD 01 1D
	ora ($24.b,X)		; 01 24
	jsr ($24CE.w,X)		; FC CE 24
	clv		; B8
	eor ($CE.b),Y		; 51 CE
.INDEX 8
	sep #$1E		; E2 1E
.ACCU 8
	sep #$23		; E2 23
	trb $B8BE.w		; 1C BE B8
	trb $61.b		; 14 61
	cpx $2FE1.w		; EC E1 2F
	cmp ($24.b),Y		; D1 24
	ora $CBB8.w,X		; 1D B8 CB
	trb $72.b		; 14 72
	jmp.w [$2FE1]		; DC E1 2F
	cmp ($15.b),Y		; D1 15
	clv		; B8
	and $13BB.w		; 2D BB 13
	adc $DC.b		; 65 DC
	bne  63.b		; D0 3F
	sbc $3E24B8.l		; EF B8 24 3E
	tyx		; BB
	sbc ($66.b,S),Y		; F3 66
	cpx $12C0.w		; EC C0 12
	clv		; B8
	bne   4.b		; D0 04
	eor $66E3C9.l		; 4F C9 E3 66
	tsb $B8CE.w		; 0C CE B8
	and ($0D.b,X)		; 21 0D
	ora ($41.b,S),Y		; 13 41
	dex		; CA
	cmp ($76.b,X)		; C1 76
	bit $BEB8.w		; 2C B8 BE
	ora ($FE.b,S),Y		; 13 FE
	cop $42.b		; 02 42
	stp		; DB
	ldy #$67.b		; A0 67
	clv		; B8
	jmp $03BD.w		; 4C BD 03
	asl $35F1.w,X		; 1E F1 35
	stp		; DB
	ldx $67B8.w		; AE B8 67
	eor $1FF4AC.l		; 4F AC F4 1F
	cpx #$44.b		; E0 44
	xce		; FB
	iny		; C8
	cmp $DD2015.l,X		; DF 15 20 DD
	cop $01.b		; 02 01
	cpx #$13.b		; E0 13
	iny		; C8
	asl $13CF.w		; 0E CF 13
	eor $2FF1DE.l,X		; 5F DE F1 2F
	ora $1E12C8.l		; 0F C8 12 1E
	cpx $4023.w		; EC 23 40
	inc $11D2.w		; EE D2 11
	iny		; C8
	sbc $DD2F11.l,X		; FF 11 2F DD
	ora $50.b,S		; 03 50
	sbc $C8D1.w,X		; FD D1 C8
	and ($0E.b,X)		; 21 0E
	cop $2F.b		; 02 2F
	dec $52F2.w,X		; DE F2 52
	sbc $D1C8.w		; ED C8 D1
	and ($0F.b,X)		; 21 0F
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	jsr ($43E3.w,X)		; FC E3 43
	clv		; B8
	phx		; DA
	lda $F10C54.l		; AF 54 0C F1
	eor $BA.b,S		; 43 BA
	cmp ($C8.b,S),Y		; D3 C8
	eor $FE.b,S		; 43 FE
	cmp $0F2D31.l		; CF 31 2D 0F
	and ($FC.b),Y		; 31 FC
	iny		; C8
	sbc ($34.b),Y		; F1 34
	inc $23CF.w,X		; FE CF 23
	asl $30E0.w,X		; 1E E0 30
	iny		; C8
	ora $25E1.w		; 0D E1 25
	ora $22CF.w		; 0D CF 22
	rol $C8FF.w		; 2E FF C8
	and ($0E.b,X)		; 21 0E
	bne  67.b		; D0 43
	ora $13DE.w,X		; 1D DE 13
	and $12EFC8.l		; 2F C8 EF 12
	asl $34EF.w		; 0E EF 34
	ora $13DE.w,X		; 1D DE 13
	clv		; B8
	and $1C23DD.l,X		; 3F DD 23 1C
	cmp $9C2C57.l		; CF 57 2C 9C
	clv		; B8
	and $40.b		; 25 40
	cmp $1E22.w		; CD 22 1E
	bcs  85.b		; B0 55
	and $DAB4.w		; 2D B4 DA
	bcs  52.b		; B0 34
	asl $1FF1.w		; 0E F1 1F
	stp		; DB
	ora $B8.b		; 05 B8
	and $14AD.w		; 2D AD 14
	eor $1D02EE.l		; 4F EE 02 1D
	cpx #$B8.b		; E0 B8
	and $2C.b,X		; 35 2C
	lda $2015.w,X		; BD 15 20
	inc $0F02.w		; EE 02 0F
	clv		; B8
	bne  67.b		; D0 43
	and $23BD.w		; 2D BD 23
	bmi -18.b		; 30 EE
	cop $B8.b		; 02 B8
	asl $52E0.w		; 0E E0 52
	bit $23CD.w		; 2C CD 23
	bmi -18.b		; 30 EE
	clv		; B8
	cop $0D.b		; 02 0D
	ora $CE1D52.l		; 0F 52 1D CE
	ora ($30.b,S),Y		; 13 30
	clv		; B8
	bne -14.b		; D0 F2
	sbc $1D42E1.l,X		; FF E1 42 1D
	lda $3FB822.l,X		; BF 22 B8 3F
	inc $1D10.w,X		; FE 10 1D
	brk $34.b		; 00 34
	inc $B8CE.w,X		; FE CE B8
	ora ($30.b,S),Y		; 13 30
	bne -14.b		; D0 F2
	inc $4200.w,X		; FE 00 42
	trb $DEB8.w		; 1C B8 DE
	trb $11.b		; 14 11
	bne   0.b		; D0 00
	asl $4200.w		; 0E 00 42
	clv		; B8
	trb $14DE.w		; 1C DE 14
	ora ($D0.b),Y		; 11 D0
	sbc ($FE.b)		; F2 FE
	sbc ($A8.b)		; F2 A8
	adc $FA.b		; 65 FA
	sta $2137.w,X		; 9D 37 21
	dec $0C01.w		; CE 01 0C
	clv		; B8
	sbc ($32.b)		; F2 32
	ora $22CF.w		; 0D CF 22
	and $A810EF.l,X		; 3F EF 10 A8
	sbc $64E4.w,X		; FD E4 64
	ora #$AD.b		; 09 AD
	rol $30.b,X		; 36 30
	dec $01A8.w,X		; DE A8 01
	inc $64F3.w		; EE F3 64
	plx		; FA
	lda $3036.w		; AD 36 30
	tay		; A8
	dec $0D00.w,X		; DE 00 0D
	sbc ($73.b)		; F2 73
	ora $16AE.w,Y		; 19 AE 16
	tay		; A8
	rti		; 40

	dec $FF00.w,X		; DE 00 FF
.ACCU 8
	sep #$64		; E2 64
	ora $A8BC.w,Y		; 19 BC A8
	rol $31.b		; 26 31
	sbc $FE00.w		; ED 00 FE
	sbc ($63.b)		; F2 63
	rol A		; 2A
	tay		; A8
	lda $5114.w		; AD 14 51
	sbc $FF00.w		; ED 00 FF
	sbc ($64.b,X)		; E1 64
	tay		; A8
	trb $05AC.w		; 1C AC 05
	.db $42, $EE		; 42 EE
	sbc ($FF.b,X)		; E1 FF
	sbc ($A8.b,X)		; E1 A8
	mvn $AB,$2D		; 54 2D AB
	tsb $43.b		; 04 43
	sbc $FEE1.w,X		; FD E1 FE
	tay		; A8
	brk $44.b		; 00 44
	rol $D49D.w,X		; 3E 9D D4
	eor ($0E.b)		; 52 0E
	sbc $FF0FA8.l		; EF A8 0F FF
	eor $20.b		; 45 20
	plb		; AB
	sbc ($54.b,X)		; E1 54
	asl $DFA8.w,X		; 1E A8 DF
	ora $4024F0.l		; 0F F0 24 40
	ldy $35C1.w,X		; BC C1 35
	tay		; A8
	and $0FF0DE.l		; 2F DE F0 0F
	trb $33.b		; 14 33
	wai		; CB
	cmp $4F34A8.l		; CF A8 34 4F
	inc $F1E0.w		; EE E0 F1
	pea $EC33.w		; F4 33 EC
	tay		; A8
	ldx $5123.w,Y		; BE 23 51
	sbc $01FE.w		; ED FE 01
	ora ($34.b,X)		; 01 34
	tay		; A8
	ora $F4BD.w		; 0D BD F4
	bit $0C.b,X		; 34 0C
	inc $0101.w		; EE 01 01
	tay		; A8
	ora ($3F.b,S),Y		; 13 3F
	cpy $35C3.w		; CC C3 35
	asl $01DD.w,X		; 1E DD 01
	tay		; A8
	bpl   1.b		; 10 01
	eor ($FC.b,X)		; 41 FC
	dec $5033.w		; CE 33 50
	jmp.w [$E2A8]		; DC A8 E2
	ora ($F0.b),Y		; 11 F0
	ora ($2F.b,S),Y		; 13 2F
	lda $33F3.w,X		; BD F3 33
	tay		; A8
	ora $31CF.w		; 0D CF 31
	asl $22F2.w,X		; 1E F2 22
	tsb $98CF.w		; 0C CF 98
	ror $4E.b,X		; 76 4E
	plb		; AB
	trb $4E.b		; 14 4E
	nop		; EA
	and [$50.b],Y		; 37 50
	tay		; A8
	cmp $32E1.w,X		; DD E1 32
	ora $12F1.w		; 0D F1 12
	sbc $44A8D0.l		; EF D0 A8 44
	asl $11CD.w,X		; 1E CD 11
	and ($0E.b,X)		; 21 0E
	ora ($2F.b,X)		; 01 2F
	tay		; A8
	dec $44F3.w,X		; DE F3 44
	sbc $22CC.w,X		; FD CC 22
	jsl $00A8FF.l		; 22 FF A8 00
	asl $05EE.w,X		; 1E EE 05
	eor $EB.b,S		; 43 EB
	ldx $A833.w,Y		; BE 33 A8
	bmi  -1.b		; 30 FF
	brk $0F.b		; 00 0F
	dec $3325.w,X		; DE 25 33
	stp		; DB
	tay		; A8
	cmp $E01124.l		; CF 24 11 E0
	ora ($FE.b,X)		; 01 FE
	cpx #$03.b		; E0 03
	tay		; A8
	eor ($1C.b,X)		; 41 1C
	cmp $1203.w,X		; DD 03 12
	ora $A81F0E.l,X		; 1F 0E 1F A8
	sbc $112410.l		; EF 10 24 11
	stp		; DB
	bne  51.b		; D0 33
	and ($A8.b,X)		; 21 A8
	sbc $00FFF0.l		; EF F0 FF 00
	ora $22.b,S		; 03 22
	asl $A8BD.w		; 0E BD A8
	ora $32.b,S		; 03 32
	ora $00F0.w,X		; 1D F0 00
	sbc $A80201.l,X		; FF 01 02 A8
	and ($0D.b,X)		; 21 0D
	dec $2103.w,X		; DE 03 21
	asl $1E10.w		; 0E 10 1E
	tay		; A8
	bne  18.b		; D0 12
	brk $12.b		; 00 12
	rol $02CC.w		; 2E CC 02
	.db $42, $98		; 42 98
	xce		; FB
	sbc ($3F.b,S),Y		; F3 3F
	lda $30F5.w,Y		; B9 F5 30
	.db $42, $5E		; 42 5E
	tay		; A8
	jmp.w [$32D2]		; DC D2 32
	ora $DD01F2.l,X		; 1F F2 01 DD
	sbc ($A8.b,X)		; E1 A8
	and ($01.b),Y		; 31 01
	and ($FB.b),Y		; 31 FB
	cmp $EF3F33.l		; CF 33 3F EF
	tay		; A8
	ora ($1E.b)		; 12 1E
	cmp $020F13.l		; CF 13 0F 02
	rti		; 40

	stp		; DB
	tay		; A8
	cpx #$42.b		; E0 42
	ora $3101.w,X		; 1D 01 31
	xce		; FB
	sbc $FFA832.l		; EF 32 A8 FF
	and $4E.b,S		; 23 4E
	tyx		; BB
	sbc $42.b,S		; E3 42
	inc $A802.w,X		; FE 02 A8
	and ($CB.b),Y		; 31 CB
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	inc $4D23.w,X		; FE 23 4D
	tyx		; BB
	tay		; A8
	pea $FD50.w		; F4 50 FD
	ora ($30.b)		; 12 30
	cmp $32E2.w		; CD E2 32
	tay		; A8
	cpx $4123.w		; EC 23 41
	dex		; CA
	cpx $22.b		; E4 22
	inc $A8E4.w		; EE E4 A8
	and ($EC.b)		; 32 EC
	sbc ($10.b,X)		; E1 10
	ora $4201.w,X		; 1D 01 42
	trb $CC98.w		; 1C 98 CC
	and ($FD.b,S),Y		; 33 FD
	cmp ($47.b,S),Y		; D3 47
	ora $01BE.w		; 0D BE 01
	sei		; 78
	sbc $E3.b,S		; E3 E3
	rol $12.b		; 26 12
	sbc $32C0.w		; ED C0 32
	tsb $CD78.w		; 0C 78 CD
	and ($52.b),Y		; 31 52
	sbc $01.b,S		; E3 01
	asl A		; 0A
	dec $78E3.w,X		; DE E3 78
	mvp $0A,$10		; 44 10 0A
	ora $4124E0.l		; 0F E0 24 41
	dec $A278.w,X		; DE 78 A2
	sbc ($F0.b)		; F2 F0
	ora ($15.b,S),Y		; 13 15
	ldy #$CE.b		; A0 CE
	tsb $68.b		; 04 68
	lsr $E01F.w		; 4E 1F E0
	ora $BE1001.l,X		; 1F 01 10 BE
	sbc $78.b,S		; E3 78
	and ($11.b),Y		; 31 11
	cmp $23010B.l,X		; DF 0B 01 23
	and ($CD.b,S),Y		; 33 CD
	stz $DB.b,X		; 74 DB
	dec $06D0.w,X		; DE D0 06
	eor ($0C.b,S),Y		; 53 0C
	cpy $6802.w		; CC 02 68
	cmp ($1D.b,S),Y		; D3 1D
	cpx #$FA.b		; E0 FA
	ora $72.b,X		; 15 72
	cpx $78AE.w		; EC AE 78
	tsb $F1.b		; 04 F1
	sbc ($02.b),Y		; F1 02
	asl $02ED.w		; 0E ED 02
	and ($78.b),Y		; 31 78
	ora $B2FF10.l		; 0F 10 FF B2
	ora ($3F.b,S),Y		; 13 3F
	bne -14.b		; D0 F2
	stz $2F.b		; 64 2F
	tax		; AA
	sta ($46.b,S),Y		; 93 46
	ror $4100.w,X		; 7E 00 41
	sbc $C378.w		; ED 78 C3
	and ($20.b,X)		; 21 20
	asl $F2FF.w		; 0E FF F2
.INDEX 16
	rep #$14		; C2 14
	pla		; 68
	sbc $BE2E1D.l		; EF 1D 2E BE
	tad		; 5B
	bit $3C.b,X		; 34 3C
	eor $78.b,S		; 43 78
	sbc $311F0B.l		; EF 0B 1F 31
	and ($D0.b,S),Y		; 33 D0
	sbc $78D3.w		; ED D3 78
	sbc ($12.b)		; F2 12
	bpl  44.b		; 10 2C
	cmp $2F01F3.l,X		; DF F3 01 2F
	stz $40.b		; 64 40
	cop $1F.b		; 02 1F
	inc $11DE.w		; EE DE 11
	ora ($24.b,X)		; 01 24
	bvs  67.b		; 70 43
	bpl -19.b		; 10 ED
	sbc $330300.l,X		; FF 00 03 33
	and $C264.w		; 2D 64 C2
	asl $20.b		; 06 20
	ora ($5E.b,X)		; 01 5E
	jsr ($01EF.w,X)		; FC EF 01
	pla		; 68
	ora $FE10F0.l,X		; 1F F0 10 FE
	cop $31.b		; 02 31
	jsr ($74B1.w,X)		; FC B1 74
	sbc ($13.b),Y		; F1 13
	ora ($10.b)		; 12 10
	inc $3FEC.w		; EE EC 3F
	bit $68.b		; 24 68
	nop		; EA
	sbc ($AF.b)		; F2 AF
	adc $C10113.l,X		; 7F 13 01 C1
	sbc $0E60.w,X		; FD 60 0E
	jmp.w [$F1DE]		; DC DE F1
	and $32.b,S		; 23 32
	ora $CF54F3.l		; 0F F3 54 CF
	sbc $EE1A24.l		; EF 24 1A EE
	ora ($2C.b,S),Y		; 13 2C
	sbc $0374.w		; ED 74 03
	brk $0F.b		; 00 0F
	beq  -2.b		; F0 FE
	ora ($44.b,X)		; 01 44
	inc $C268.w		; EE 68 C2
	and $31.b		; 25 31
	cpx #$B3EC.w		; E0 EC B3
	ora $5A.b,S		; 03 5A
	pla		; 68
	eor $CC.b,X		; 55 CC
	plx		; FA
	and ($31.b),Y		; 31 31
	ora ($FE.b),Y		; 11 FE
	ora $43EF58.l		; 0F 58 EF 43
	inc $13D3.w,X		; FE D3 13
	tas		; 1B
	sbc $FE5014.l		; EF 14 50 FE
	cmp $7664.w		; CD 64 76
	and $62DECC.l,X		; 3F CC DE 62
	mvn $0D,$31		; 54 31 0D
	dec $10F1.w		; CE F1 10
	ora $F2.b		; 05 F2
	and ($50.b)		; 32 50
	stz $0D.b		; 64 0D
	dec $25F6.w,X		; DE F6 25
	adc $FF.b		; 65 FF
	cpx #$4350.w		; E0 50 43
	jsr $33E0.w		; 20 E0 33
	ldx $6613.w		; AE 13 66
	rti		; 40

	bvc -50.b		; 50 CE
	and ($10.b),Y		; 31 10
	bit $76.b		; 24 76
	sbc $03BC.w,X		; FD BC 03
	bvc  33.b		; 50 21
	cop $44.b		; 02 44
	trb $07FF.w		; 1C FF 07
	brk $12.b		; 00 12
	bvc  50.b		; 50 32
	lda $41EEEE.l		; AF EE EE 41
	bit $33.b,X		; 34 33
	ora $CC50.w		; 0D 50 CC
	dec $4462.w		; CE 62 44
	bmi -54.b		; 30 CA
	ldy $58D0.w		; AC D0 58
	ora $4EDE.w,X		; 1D DE 4E
	ora ($15.b),Y		; 11 15
	ldx #$D0EF.w		; A2 EF D0
	bvc -86.b		; 50 AA
	ldx $4442.w,Y		; BE 42 44
	asl $BDBA.w,X		; 1E BA BD
	inc $60.b,X		; F6 60
	ora ($22.b,X)		; 01 22
	dec $E2DC.w,X		; DE DC E2
	ora ($11.b)		; 12 11
	ora $FE60.w		; 0D 60 FE
	dec $4232.w,X		; DE 32 42
	dec $F0DE.w,X		; DE DE F0
	ora ($50.b),Y		; 11 50
	eor $3B.b		; 45 3B
	phx		; DA
	lda $46.b,X		; B5 46
	eor ($1A.b,S),Y		; 53 1A
	sbc $F164.w,X		; FD 64 F1
	jsl $21EB5D.l		; 22 5D EB 21
	ora ($F0.b,X)		; 01 F0
	ora ($50.b),Y		; 11 50
	and ($22.b,S),Y		; 33 22
	and $2A.b,S		; 23 2A
	inc $3462.w,X		; FE 62 34
	eor $50.b,S		; 43 50
	and ($21.b)		; 32 21
	sbc [$24.b],Y		; F7 24
	mvn $00,$20		; 54 20 00
	bpl  80.b		; 10 50
	ora ($34.b,X)		; 01 34
	and ($0D.b,S),Y		; 33 0D
	sbc $12.b,X		; F5 12
	jsl $305033.l		; 22 33 50 30
	cpy $23E6.w		; CC E6 23
	and ($21.b,S),Y		; 33 21
	sbc $50CC.w,X		; FD CC 50
	inc $23.b		; E6 23
	and ($AE.b)		; 32 AE
	wai		; CB
	ldx $2251.w,Y		; BE 51 22
	bvc  16.b		; 50 10
	jmp.w [$DEBC]		; DC BC DE
	and ($11.b),Y		; 31 11
	jsr $44ED.w		; 20 ED 44
	beq  17.b		; F0 11
	rts		; 60

	ora $02BF2C.l,X		; 1F 2C BF 02
	ora ($50.b),Y		; 11 50
	ora $F6FFFF.l		; 0F FF FF F6
	ora ($10.b,X)		; 01 10
	inc $50EF.w,X		; FE EF 50
	inc $12.b,X		; F6 12
	and ($20.b)		; 32 20
	cmp $10E0.w,X		; DD E0 10
	ora ($50.b)		; 12 50
	and ($2A.b,S),Y		; 33 2A
	sbc $0110F0.l,X		; FF F0 10 01
	and $20.b,S		; 23 20
	eor ($F0.b),Y		; 51 F0
	rti		; 40

	ora ($12.b),Y		; 11 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	rol A		; 2A
	cmp $2A.b,X		; D5 2A
	asl $B700.w,X		; 1E 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	bvc -48.b		; 50 D0
	brk $1F.b		; 00 1F
	jsr $7ECE.w		; 20 CE 7E
	cpy $D244.w		; CC 44 D2
	eor ($FC.b,X)		; 41 FC
	sbc ($10.b),Y		; F1 10
	inc $DC40.w,X		; FE 40 DC
	mvn $22,$F0		; 54 F0 22
	cmp $1F2CF2.l,X		; DF F2 2C 1F
	sbc ($0E.b),Y		; F1 0E
	mvp $25,$2E		; 44 2E 25
	nop		; EA
	jmp.w [$1D55]		; DC 55 1D
	bcs  53.b		; B0 35
	bvc  79.b		; 50 4F
	jsr ($DEBB.w,X)		; FC BB DE
	inc $3051.w		; EE 51 30
	wai		; CB
	bvc -35.b		; 50 DD
	phd		; 0B
	cpx #$CD1C.w		; E0 1C CD
	eor $50BDDE.l,X		; 5F DE BD 50
	cmp $E2CE.w,X		; DD CE E2
	and ($CC.b,X)		; 21 CC
	ldx $F0.b		; A6 F0
	cmp $FFE364.l,X		; DF 64 E3 FF
	and $E4EF1E.l,X		; 3F 1E EF E4
	ora ($FC.b),Y		; 11 FC
	stz $33.b		; 64 33
	cpx #$F011.w		; E0 11 F0
	ora $FF0E.w		; 0D 0E FF
	eor $53FC50.l		; 4F 50 FC 53
	asl $EA52.w		; 0E 52 EA
	plb		; AB
	plb		; AB
	tyx		; BB
	stz $0E.b		; 64 0E
	sbc ($01.b),Y		; F1 01
	asl $0002.w,X		; 1E 02 00
	beq -78.b		; F0 B2
	rts		; 60

	brk $DC.b		; 00 DC
	cop $0F.b		; 02 0F
	beq  -2.b		; F0 FE
	cmp ($EC.b)		; D2 EC
	stz $D6.b		; 64 D6
	dec A		; 3A
	ora $0C.b		; 05 0C
	beq  76.b		; F0 4C
	cpy $FE.b		; C4 FE
	sei		; 78
	sbc ($1F.b),Y		; F1 1F
	pei ($2C.b)		; D4 2C
	.db $42, $FE		; 42 FE
	adc $0098B0.l		; 6F B0 98 00
	sbc ($00.b,X)		; E1 00
	sbc ($F1.b),Y		; F1 F1
	inc $6F03.w,X		; FE 03 6F
	tya		; 98
	ora ($1B.b),Y		; 11 1B
	inc $33ED.w		; EE ED 33
	sbc ($10.b,X)		; E1 10
	sbc ($98.b)		; F2 98
	rol $1DF2.w		; 2E F2 1D
	bit $0C.b		; 24 0C
	ora $9820D0.l		; 0F D0 20 98
	ora ($1D.b),Y		; 11 1D
	cmp $6322FE.l,X		; DF FE 22 63
	ora $2D.b,X		; 15 2D
	tya		; 98
	stz $24C9.w		; 9C C9 24
	jsl $2FC240.l		; 22 40 C2 2F
	beq -88.b		; F0 A8
	cmp ($60.b),Y		; D1 60
	beq  -4.b		; F0 FC
	ora $E02200.l		; 0F 00 22 E0
	tya		; 98
	sbc ($14.b,X)		; E1 14
	ora $D144.w,X		; 1D 44 D1
	phd		; 0B
	tyx		; BB
	jsr $3498.w		; 20 98 34
	cpx #$1112.w		; E0 12 11
	bpl -49.b		; 10 CF
	jsr $984F.w		; 20 4F 98
	lda ($D0.b),Y		; B1 D0
	jsl $DB300F.l		; 22 0F 30 DB
	dec $B822.w,X		; DE 22 B8
	.db $42, $D2		; 42 D2
	asl $F0EF.w		; 0E EF F0
	cop $F2.b		; 02 F2
	and $B0EEA8.l,X		; 3F A8 EE B0
	sbc $3F.b,X		; F5 3F
	jsl $F0FCEF.l		; 22 EF FC F0
	clv		; B8
	brk $13.b		; 00 13
	beq  12.b		; F0 0C
	brk $5F.b		; 00 5F
	sbc ($0D.b,S),Y		; F3 0D
	tay		; A8
	bpl -50.b		; 10 CE
	ora ($E2.b)		; 12 E2
	bvc  32.b		; 50 20
	txs		; 9A
	ora ($A8.b,S),Y		; 13 A8
	rts		; 60

	sbc $FC.b,X		; F5 FC
	bit $02DE.w,X		; 3C DE 02
	brk $61.b		; 00 61
	clv		; B8
	ora $0E23CE.l,X		; 1F CE 23 0E
	bmi -31.b		; 30 E1
	ora $B8F1.w,X		; 1D F1 B8
	brk $01.b		; 00 01
	ora ($1C.b),Y		; 11 1C
	cmp ($40.b),Y		; D1 40
	sbc ($2D.b),Y		; F1 2D
	clv		; B8
	ora ($D0.b),Y		; 11 D0
	sbc ($00.b),Y		; F1 00
	rol $BD42.w		; 2E 42 BD
	sbc ($B4.b),Y		; F1 B4
	ora ($04.b),Y		; 11 04
	and ($31.b,X)		; 21 31
	sbc $E0DE.w,X		; FD DE E0
	ora ($B8.b,X)		; 01 B8
	lsr $03AE.w,X		; 5E AE 03
	rol $E131.w		; 2E 31 E1
	asl $B8EE.w,X		; 1E EE B8
	bpl  17.b		; 10 11
	trb $0A.b		; 14 0A
	sbc $0FC442.l		; EF 42 C4 0F
	ldy $22.b,X		; B4 22
	ora $00DFEE.l,X		; 1F EE DF 00
	eor $FC.b		; 45 FC
	bcs -72.b		; B0 B8
	bit $D132.w		; 2C 32 D1
	ora $031FD0.l,X		; 1F D0 1F 03
	cop $B8.b		; 02 B8
	and #$D1.b		; 29 D1
	bvc -44.b		; 50 D4
	ora $EE11.w,X		; 1D 11 EE
	ora ($B4.b,X)		; 01 B4
	inc DMASRC1L.w		; EE 12 43
	wai		; CB
	sbc ($F0.b)		; F2 F0
	rti		; 40

	ora ($B0.b)		; 12 B0
	eor ($10.b,S),Y		; 53 10
	sbc $35D0.w		; ED D0 35
	phd		; 0B
	ldx $B8DF.w,Y		; BE DF B8
	asl $FD01.w,X		; 1E 01 FD
	ora ($E2.b),Y		; 11 E2
	jsl $B4B10C.l		; 22 0C B1 B4
	and ($F4.b,X)		; 21 F4
	jsr $0D11.w		; 20 11 0D
	sbc $B024E0.l,X		; FF E0 24 B0
	eor ($BB.b),Y		; 51 BB
	jmp.w [$33E2]		; DC E2 33
	mvp $FD,$20		; 44 20 FD
	bcs -50.b		; B0 CE
	and $2C.b		; 25 2C
	lda $23DE.w		; AD DE 23
	bit $52.b,X		; 34 52
	bcs  15.b		; B0 0F
	jmp.w [$52E2]		; DC E2 52
	wai		; CB
	sbc $22E1.w		; ED E1 22
	bcs  69.b		; B0 45
	bmi  -2.b		; 30 FE
	cmp $0B25.w		; CD 25 0B
	cmp $22B0DF.l		; CF DF B0 22
	and $42.b,S		; 23 42
	ora $4DE4ED.l		; 0F ED E4 4D
	sta $EDB0.w,X		; 9D B0 ED
	and $22.b,S		; 23 22
	.db $42, $0F		; 42 0F
	inc $4FE2.w,X		; FE E2 4F
	ldy $A2.b,X		; B4 A2
	lsr $F033.w		; 4E 33 F0
	ora $0200EF.l,X		; 1F EF 00 02
	cpy #$CD20.w		; C0 20 CD
	sbc $212202.l,X		; FF 02 22 21
	ora $F2B0FF.l		; 0F FF B0 F2
	eor ($99.b)		; 52 99
	sbc $4404.w		; ED 04 44
	eor $00.b,S		; 43 00
	bcs -19.b		; B0 ED
.INDEX 8
	sep #$51		; E2 51
	tax		; AA
	cpx $3304.w		; EC 04 33
	.db $42, $B4		; 42 B4
	cpx #$FF.b		; E0 FF
	trb $1A.b		; 14 1A
	ldy $00.b,X		; B4 00
	eor ($F2.b),Y		; 51 F2
	ldy $FD.b,X		; B4 FD
	beq -30.b		; F0 E2
	eor ($BB.b,X)		; 41 BB
	and ($E6.b),Y		; 31 E6
	brk $B4.b		; 00 B4
	jsr $0EC0.w		; 20 C0 0E
	tsb $2C.b		; 04 2C
	lda $1E.b,S		; A3 1E
	adc ($B4.b,X)		; 61 B4
	sbc ($1C.b),Y		; F1 1C
	sbc ($EF.b),Y		; F1 EF
	eor ($BB.b)		; 52 BB
	rti		; 40

	sbc $B0.b,X		; F5 B0
	and ($44.b),Y		; 31 44
	inc $E3FD.w,X		; FE FD E3
	and $DEB0.w,X		; 3D B0 DE
	bcs  67.b		; B0 43
	trb $3F.b		; 14 3F
	sbc $BC42DF.l,X		; FF DF 42 BC
	tsb $44B4.w		; 0C B4 44
	cpx #$3D.b		; E0 3D
	cmp ($FE.b),Y		; D1 FE
	mvp $51,$BA		; 44 BA 51
	bcs -46.b		; B0 D2
	bmi  37.b		; 30 25
	ora $2BE30D.l		; 0F 0D E3 2B
	lda ($B0.b),Y		; B1 B0
	bne  82.b		; D0 52
	trb $2E.b		; 14 2E
	sbc $A14ED0.l,X		; FF D0 4E A1
	ldy $EE.b,X		; B4 EE
	rts		; 60

	cmp ($2C.b)		; D2 2C
	ora ($D1.b,X)		; 01 D1
	eor $B095.w		; 4D 95 B0
	ora $2225.w,X		; 1D 25 22
	rti		; 40

	cpx #$FE.b		; E0 FE
	and ($AD.b)		; 32 AD
	bcs  29.b		; B0 1D
	ora $21.b,X		; 15 21
	eor ($E0.b,X)		; 41 E0
	inc $BC33.w,X		; FE 33 BC
	bcs  29.b		; B0 1D
	ora $21.b		; 05 21
	eor ($E0.b,X)		; 41 E0
	inc $BD22.w,X		; FE 22 BD
	ldy $4D.b,X		; B4 4D
	bit $EF.b		; 24 EF
	and $00E2.w		; 2D E2 00
	and $B0A5.w,X		; 3D A5 B0
	asl $1124.w		; 0E 24 11
	and $3DF0E0.l,X		; 3F E0 F0 3D
	bcs -80.b		; B0 B0
	sbc $2E1234.l,X		; FF 34 12 2E
	beq -15.b		; F0 F1
	tas		; 1B
	cmp ($B4.b),Y		; D1 B4
	cmp ($3F.b,S),Y		; D3 3F
.ACCU 8
	sep #$ED		; E2 ED
	jsr $DC11.w		; 20 11 DC
	eor $41F3B0.l,X		; 5F B0 F3 41
	jsl $21F0EE.l		; 22 EE F0 21
	ldx $B00E.w,Y		; BE 0E B0
	trb $21.b		; 14 21
	and $2D01EF.l		; 2F EF 01 2D
	cpy #$E0.b		; C0 E0
	ldy $31.b,X		; B4 31
	sbc ($FD.b,X)		; E1 FD
	ora ($11.b,X)		; 01 11
	xba		; EB
	eor ($F3.b,X)		; 41 F3
	bcs  66.b		; B0 42
	ora ($FE.b)		; 12 FE
	beq  17.b		; F0 11
	cmp $130F.w		; CD 0F 13
	ldy $0E.b,X		; B4 0E
	rol $11D1.w		; 2E D1 11
	trb $F1E4.w		; 1C E4 F1
	and ($B4.b),Y		; 31 B4
	cpx #$0D.b		; E0 0D
	ora ($11.b,X)		; 01 11
	jmp.w [$0340]		; DC 40 03
	rol $12B0.w		; 2E B0 12
	inc $10F0.w,X		; FE F0 10
	ldx $130E.w,Y		; BE 0E 13
	and ($B0.b),Y		; 31 B0
	jsr $01EF.w		; 20 EF 01
	trb $E0D0.w		; 1C D0 E0
	and ($12.b,S),Y		; 33 12
	ldy $FE.b,X		; B4 FE
	ora ($10.b,X)		; 01 10
	cmp $2E123F.l		; CF 3F 12 2E
	ora ($A4.b,X)		; 01 A4
	cmp $0923.w		; CD 23 09
	dec $E1.b,X		; D6 E1
	eor ($EF.b,S),Y		; 53 EF
	bit $D1A4.w,X		; 3C A4 D1
	and ($AB.b,X)		; 21 AB
	eor ($F4.b),Y		; 51 F4
	and ($E2.b),Y		; 31 E2
	tsb $F2A4.w		; 0C A4 F2
	rol A		; 2A
	ldy $3D.b		; A4 3D
	bit $1F.b,X		; 34 1F
	ora ($EE.b),Y		; 11 EE
	ldy $11.b,X		; B4 11
	cpx $F012.w		; EC 12 F0
	and ($F0.b,X)		; 21 F0
	and $31A0F1.l		; 2F F1 A0 31
	wai		; CB
	ora $E00FEF.l		; 0F EF 0F E0
	and ($02.b,X)		; 21 02
	ldy #$41.b		; A0 41
	cmp $EF10.w,X		; DD 10 EF
	ora $0210EF.l		; 0F EF 10 02
	ldy #$41.b		; A0 41
	cmp $EF10.w,X		; DD 10 EF
	ora $0220E0.l,X		; 1F E0 20 02
	ldy $2D.b		; A4 2D
	cmp ($4D.b,X)		; C1 4D
	sbc ($3E.b,X)		; E1 3E
	sbc $1F.b,S		; E3 1F
	ora $A4.b,S		; 03 A4
	trb $2CC3.w		; 1C C3 2C
	sbc ($2D.b,S),Y		; F3 2D
	tsb $FE.b		; 04 FE
	bit $A0.b		; 24 A0
	bit $0CC1.w,X		; 3C C1 0C
	cmp ($0D.b),Y		; D1 0D
	ora $00.b,S		; 03 00
	lsr $A4.b,X		; 56 A4
	txy		; 9B
	eor ($AF.b,S),Y		; 53 AF
	eor ($C0.b),Y		; 51 C0
	adc $B06AD3.l		; 6F D3 6A B0
	dec $DF1F.w		; CE 1F DF
	jsr $30F2.w		; 20 F2 30
	trb $2B.b		; 14 2B
	bcs -63.b		; B0 C1
	sbc $0FF3.w,X		; FD F3 0F
	bit $01.b		; 24 01
	eor ($AB.b,X)		; 41 AB
	cpy #$1F.b		; C0 1F
	cpx #$20.b		; E0 20
	sbc ($20.b)		; F2 20
	cop $1C.b		; 02 1C
	cmp ($C0.b),Y		; D1 C0
	asl $1F02.w		; 0E 02 1F
	ora ($F0.b)		; 12 F0
	jsr $10CE.w		; 20 CE 10
	cpy $E3.b		; C4 E3
	rol $0DF2.w		; 2E F2 0D
	ora ($EC.b)		; 12 EC
	and ($E0.b)		; 32 E0
	cpy #$23.b		; C0 23
	brk $20.b		; 00 20
	cpx #$2E.b		; E0 2E
	cpy #$1F.b		; C0 1F
	ora $B0.b,S		; 03 B0
	rol $DD11.w,X		; 3E 11 DD
	bit $DA.b,X		; 34 DA
	ora ($E1.b),Y		; 11 E1
	eor ($B0.b,S),Y		; 53 B0
	sbc ($0D.b),Y		; F1 0D
	cmp ($50.b,S),Y		; D3 50
	stz $141E.w,X		; 9E 1E 14
	eor $EC0FB0.l,X		; 5F B0 0F EC
	asl $2A.b,X		; 16 2A
.ACCU 16
	rep #$E0		; C2 E0
	eor $00.b		; 45 00
	bcs  -3.b		; B0 FD
	cmp ($63.b,X)		; C1 63
	plb		; AB
	asl $6004.w,X		; 1E 04 60
	sbc $16DDB0.l,X		; FF B0 DD 16
	phk		; 4B
	sta ($F0.b),Y		; 91 F0
	lsr $1F.b		; 46 1F
	sbc $E0C0.w		; ED C0 E0
	and ($EC.b,S),Y		; 33 EC
	brk $02.b		; 00 02
	and ($FF.b),Y		; 31 FF
	inc $03C0.w		; EE C0 03
	rol $00CF.w,X		; 3E CF 00
	bit $1F.b		; 24 1F
	inc $C4F0.w		; EE F0 C4
	rti		; 40

	ldy $0341.w,X		; BC 41 03
	asl $01DF.w,X		; 1E DF 01
	and $C4.b,S		; 23 C4
	phd		; 0B
	cmp $21.b,S		; C3 21
	and ($ED.b,X)		; 21 ED
	beq  18.b		; F0 12
	eor $23BCC4.l		; 4F C4 BC 23
	ora ($2D.b)		; 12 2D
	cmp $0A2411.l		; CF 11 24 0A
	cpy $B3.b		; C4 B3
	and ($22.b),Y		; 31 22
	jmp.w [$22F1]		; DC F1 22
	bmi -70.b		; 30 BA
	cpy $24.b		; C4 24
	jsl $12BF1E.l		; 22 1E BF 12
	and $0B.b,S		; 23 0B
	ldx #$C4.b		; A2 C4
	.db $42, $21		; 42 21
	xba		; EB
.ACCU 8
	sep #$23		; E2 23
	jsr $15BA.w		; 20 BA 15
	cpy $32.b		; C4 32
	asl $23BE.w		; 0E BE 23
	jsl $54BF0B.l		; 22 0B BF 54
	iny		; C8
	inc $24EE.w		; EE EE 24
	bpl  -2.b		; 10 FE
	dec $4B35.w,X		; DE 35 4B
	cpy #$52.b		; C0 52
	xba		; EB
	cpy #$34.b		; C0 34
	eor ($DA.b,X)		; 41 DA
	lda ($55.b,X)		; A1 55
	iny		; C8
	inc $3212.w		; EE 12 32
	sbc $01FF.w		; ED FF 01
	eor ($BD.b,S),Y		; 53 BD
	iny		; C8
	sep #$03		; E2 03
	jsr $0FDE.w		; 20 DE 0F
	ora ($5F.b)		; 12 5F
	lda $ECC0.w,X		; BD C0 EC
	cmp $EC2034.l		; CF 34 20 EC
	lda $C02E55.l,X		; BF 55 2E C0
	cmp $43E1.w,X		; DD E1 43
	ora $53C2DC.l,X		; 1F DC C2 53
	asl $DDC0.w		; 0E C0 DD
	ora $42.b,S		; 03 42
	inc $F5DC.w,X		; FE DC F5
	eor ($EE.b,X)		; 41 EE
	cpy #$DF.b		; C0 DF
	bit $30.b		; 24 30
	inc $35DD.w,X		; FE DD 35
	and $E0C0EE.l,X		; 3F EE C0 E0
	and ($1F.b,S),Y		; 33 1F
	sbc $44C0.w		; ED C0 44
	asl $C8EE.w,X		; 1E EE C8
	ora ($FD.b)		; 12 FD
	sbc ($00.b),Y		; F1 00
	bit $DC.b		; 24 DC
	sbc ($11.b)		; F2 11
	cpy $22.b		; C4 22
	ora $FFFF.w,X		; 1D FF FF
	bit $0D.b,X		; 34 0D
	cpx #$F2.b		; E0 F2
	cpy #$23.b		; C0 23
	jsr $DEFE.w		; 20 FE DE
	bit $2F.b		; 24 2F
	inc $C0E0.w		; EE E0 C0
	and $1F.b,S		; 23 1F
	inc $44D0.w,X		; FE D0 44
	asl $F1EE.w,X		; 1E EE F1
	cpy #$32.b		; C0 32
	ora $42D2FD.l		; 0F FD D2 42
	inc $02EE.w,X		; FE EE 02
	iny		; C8
	sbc $1F10.w,X		; FD 10 1F
	bit $BE.b		; 24 BE
	sbc ($01.b,S),Y		; F3 01
	ora ($B4.b,X)		; 01 B4
	tsb $FDEF.w		; 0C EF FD
	adc [$FA.b],Y		; 77 FA
	cpy #$02.b		; C0 02
	bit $C4.b,X		; 34 C4
	inc $FFF0.w,X		; FE F0 FF
	eor $FC.b,S		; 43 FC
	sbc ($01.b),Y		; F1 01
	and ($C8.b,X)		; 21 C8
	sbc $4EF111.l		; EF 11 F1 4E
	cmp $0140.w,X		; DD 40 01
	ora $20D0C8.l,X		; 1F C8 D0 20
	sbc ($4E.b),Y		; F1 4E
	dec $0140.w		; CE 40 01
	ora $20D0C8.l,X		; 1F C8 D0 20
	sbc $3D.b,S		; E3 3D
	cmp $2F1F21.l,X		; DF 21 1F 2F
	iny		; C8
	bne  32.b		; D0 20
	sbc $3D.b,S		; E3 3D
	cmp $2F1F21.l,X		; DF 21 1F 2F
	iny		; C8
	bne  32.b		; D0 20
	sbc $2F.b,S		; E3 2F
	cmp $2F1F21.l		; CF 21 1F 2F
	clv		; B8
	ldy #$32.b		; A0 32
	cmp $7C.b,S		; C3 7C
	ldy $1061.w		; AC 61 10
	and $F1DCB4.l		; 2F B4 DC F1
	sbc $E1DA75.l		; EF 75 DA E1
	ora ($43.b,X)		; 01 43
	ldy $DC.b,X		; B4 DC
.ACCU 8
	sep #$EF		; E2 EF
	adc $F9.b		; 65 F9
	sbc ($01.b,X)		; E1 01
	bit $B0.b,X		; 34 B0
	and $07EBDF.l,X		; 3F DF EB 07
	rts		; 60

	cmp $15DE.w,X		; DD DE 15
	clv		; B8
	ldx $DE05.w,Y		; BE 05 DE
	eor $BA.b,X		; 55 BA
	tsb $F1.b		; 04 F1
	jsl $D02DB4.l		; 22 B4 2D D0
	sbc $5FF7.w,X		; FD F7 5F
	ldx $040E.w,Y		; BE 0E 04
	clv		; B8
	tsb $2EE0.w		; 0C E0 2E
	pea $DC7B.w		; F4 7B DC
	and $20B823.l		; 2F 23 B8 20
	bcs -16.b		; B0 F0
	ora $D2BD73.l		; 0F 73 BD D2
	sbc ($B4.b,S),Y		; F3 B4
	and $20.b		; 25 20
	inc $E5ED.w		; EE ED E5
	.db $62, $ED, $EC		; 62 ED EC
	ldy $02.b,X		; B4 02
	eor ($0E.b)		; 52 0E
	sbc $66CE.w,X		; FD CE 66
	rol $B4ED.w		; 2E ED B4
	cmp $FF2134.l		; CF 34 21 FF
	cpy $63D6.w		; CC D6 63
	inc $DBB4.w,X		; FE B4 DB
	sbc $52.b,S		; E3 52
	bpl  -5.b		; 10 FB
	lda $4066.w,X		; BD 66 40
	clv		; B8
	sbc $FF42E3.l		; EF E3 42 FF
	sbc $34EF.w,X		; FD EF 34
	jmp $EEFDB8.l		; 5C B8 FD EE
	bit $20.b		; 24 20
	beq -20.b		; F0 EC
	sbc ($35.b)		; F2 35
	tay		; A8
	inc $93BC.w		; EE BC 93
	lsr $20.b		; 46 20
	bit $F69A.w		; 2C 9A F6
	clv		; B8
	adc ($FF.b,X)		; 61 FF
	dec $32D2.w,X		; DE D2 32
	jsr $A00D.w		; 20 0D A0
	ldy $B2.b,X		; B4 B2
	mvp $FB,$42		; 44 42 FB
	ldx $4502.w,Y		; BE 02 45
	and $D1B8.w		; 2D B8 D1
	eor ($02.b)		; 52 02
	sbc $02C1.w,X		; FD C1 02
	ora ($0F.b,S),Y		; 13 0F
	ldy #$5E.b		; A0 5E
	tax		; AA
	cmp $FD5246.l		; CF 46 52 FD
	ldx $A023.w,Y		; BE 23 A0
	inc $E1FF.w,X		; FE FF E1
	.db $42, $11		; 42 11
	ora $A42FD0.l,X		; 1F D0 2F A4
	lda ($5F.b,S),Y		; B3 5F
	sbc ($2C.b)		; F2 2C
	sbc ($2E.b,X)		; E1 2E
	pea $A41C.w		; F4 1C A4
	ldx #$50.b		; A2 50
	ora ($2C.b)		; 12 2C
	sbc ($0E.b,X)		; E1 0E
	tsb $0C.b		; 04 0C
	ldy $B2.b		; A4 B2
	rti		; 40

	and $1B.b,S		; 23 1B
	sbc ($0E.b,X)		; E1 0E
	trb $1C.b		; 14 1C
	ldy $B1.b		; A4 B1
	bmi  20.b		; 30 14
	and $0DD1.w		; 2D D1 0D
	pea $A42E.w		; F4 2E A4
	bcs  79.b		; B0 4F
	ora $3E.b,S		; 03 3E
	cpx #$0E.b		; E0 0E
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	ldy $CF.b		; A4 CF
	rti		; 40

	sbc ($30.b),Y		; F1 30
	cpx #$1F.b		; E0 1F
	cmp ($20.b),Y		; D1 20
	ldy $CE.b		; A4 CE
	and ($F1.b,S),Y		; 33 F1
	ora ($E0.b),Y		; 11 E0
	bpl -48.b		; 10 D0
	ora ($A4.b),Y		; 11 A4
	jmp.w [$1024]		; DC 24 10
	ora ($DF.b)		; 12 DF
	ora ($EF.b),Y		; 11 EF
	ora ($A8.b)		; 12 A8
	cmp $ED45.w		; CD 45 ED
	and ($DF.b,X)		; 21 DF
	ora ($FE.b)		; 12 FE
	jsl $B41994.l		; 22 94 19 B4
	eor ($01.b),Y		; 51 01
	bpl -33.b		; 10 DF
	bpl -30.b		; 10 E2
	stz $30.b,X		; 74 30
	inc $3040.w		; EE 40 30
	tyx		; BB
	sbc ($2A.b,S),Y		; F3 2A
	inc $74.b		; E6 74
	and ($04.b,X)		; 21 04
	dec $2DB1.w,X		; DE B1 2D
	sbc ($10.b)		; F2 10
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	rti		; 40

	ora ($3B.b)		; 12 3B
	lda ($1B.b)		; B2 1B
	sbc ($40.b,X)		; E1 40
	cmp $F40F74.l,X		; DF 74 0F F4
	rts		; 60

	beq  26.b		; F0 1A
	ldy $63.b		; A4 63
	ora ($78.b,X)		; 01 78
	sbc $10E5.w		; ED E5 10
	pea $E2FD.w		; F4 FD E2
	jsr $74D6.w		; 20 D6 74
	ora ($EF.b),Y		; 11 EF
	xce		; FB
	inc $E200.w,X		; FE 00 E2
	bpl   5.b		; 10 05
	stz $52.b,X		; 74 52
	cmp $40E11D.l		; CF 1D E1 40
	dec $DE0D.w		; CE 0D DE
	sei		; 78
	eor ($CE.b)		; 52 CE
	jsr $40EE.w		; 20 EE 40
	sbc ($E2.b)		; F2 E2
	lda ($68.b),Y		; B1 68
	asl $0F.b		; 06 0F
	bcs   3.b		; B0 03
	and ($A3.b)		; 32 A3
	and $DE74DE.l,X		; 3F DE 74 DE
	ora ($0E.b,S),Y		; 13 0E
	cmp $D2DF10.l,X		; DF 10 DF D2
	jsl $341174.l		; 22 74 11 34
	cmp $2331BE.l,X		; DF BE 31 23
	inc $78BF.w,X		; FE BF 78
	beq  50.b		; F0 32
	sbc $12F2.w		; ED F2 12
	sbc $CE.b,S		; E3 CE
	and $2378.w		; 2D 78 23
	asl $C10F.w,X		; 1E 0F C1
	ora $11.b,S		; 03 11
	phk		; 4B
	sbc $07CE64.l		; EF 64 CE 07
	bmi -81.b		; 30 AF
	asl $1EF3.w,X		; 1E F3 1E
	lda $D074.w,X		; BD 74 D0
	tsb $23.b		; 04 23
	sbc $2E130F.l,X		; FF 0F 13 2E
	sbc $F12F78.l		; EF 78 2F F1
	bne  62.b		; D0 3E
	tsa		; 3B
	and $C3.b,X		; 35 C3
	bpl -112.b		; 10 90
	eor $EC.b,S		; 43 EC
	sbc $EDEE0F.l,X		; FF 0F EE ED
	brk $12.b		; 00 12
	tya		; 98
	sbc ($F0.b,S),Y		; F3 F0
	wai		; CB
	eor [$92.b],Y		; 57 92
	brk $1F.b		; 00 1F
	pea $11A0.w		; F4 A0 11
	jsl $CD4134.l		; 22 34 41 CD
	jsr ($EFDE.w,X)		; FC DE EF
	ldy $F2.b		; A4 F2
	and $0F0112.l,X		; 3F 12 01 0F
	ldy $D23E.w		; AC 3E D2
	tay		; A8
	asl $2B02.w		; 0E 02 2B
	and ($C1.b),Y		; 31 C1
	ora $A473EB.l,X		; 1F EB 73 A4
	ldx #$3F.b		; A2 3F
	and $33.b,S		; 23 33
	tsb $FF.b		; 04 FF
	ora $B80D.w,X		; 1D 0D B8
	pei ($2B.b)		; D4 2B
	rti		; 40

	sbc ($1F.b),Y		; F1 1F
	sbc ($0E.b),Y		; F1 0E
	ora ($B4.b),Y		; 11 B4
	cpx #$EC.b		; E0 EC
	bpl -45.b		; 10 D3
	bpl  34.b		; 10 22
	bpl  16.b		; 10 10
	ldy $F1.b,X		; B4 F1
	sbc $EFC30D.l,X		; FF 0D C3 EF
	and ($F3.b),Y		; 31 F3
	ora ($B4.b),Y		; 11 B4
	cop $FF.b		; 02 FF
	asl $BF00.w,X		; 1E 00 BF
	and $F222.w		; 2D 22 F2
	ldy $20.b,X		; B4 20
	ora ($0E.b)		; 12 0E
	ora $3FEBF0.l,X		; 1F F0 EB 3F
	cpx $B0.b		; E4 B0
	sbc $522423.l,X		; FF 23 24 52
	and ($01.b,S),Y		; 33 01
	tas		; 1B
	ldx $C3B4.w,Y		; BE B4 C3
	rol $F223.w		; 2E 23 F2
	ora $1DEFF2.l,X		; 1F F2 EF 1D
	ldy $B4.b,X		; B4 B4
	sbc $00044F.l		; EF 4F 04 00
	jsr $0EE1.w		; 20 E1 0E
	ldy $1F.b,X		; B4 1F
	ldx #$1C.b		; A2 1C
	eor ($F3.b,X)		; 41 F3
	ora $B4E031.l,X		; 1F 31 E0 B4
	ora $CE10.w,X		; 1D 10 CE
	bit $E114.w,X		; 3C 14 E1
	lsr $B422.w		; 4E 22 B4
	sbc $DC011E.l,X		; FF 1E 01 DC
	rol $FFE5.w,X		; 3E E5 FF
	eor $FF03B4.l,X		; 5F B4 03 FF
	ora $20EBE2.l,X		; 1F E2 EB 20
	pei ($0F.b)		; D4 0F
	ldy $41.b,X		; B4 41
	cpx $FF.b		; E4 FF
	ora $F2FCE2.l,X		; 1F E2 FC F2
	cmp $A4.b,S		; C3 A4
	jmp $C655.w		; 4C 55 C6
	ora $C111.w,X		; 1D 11 C1
	asl A		; 0A
	ldy $A4.b,X		; B4 A4
	lda ($6C.b),Y		; B1 6C
	and [$D3.b],Y		; 37 D3
	rol $C101.w,X		; 3E 01 C1
	tas		; 1B
	ldy $D1.b,X		; B4 D1
	inc $044F.w,X		; FE 4F 04
	sbc ($2F.b),Y		; F1 2F
	ora ($EF.b,X)		; 01 EF
	ldy $2E.b		; A4 2E
	ldx $712A.w		; AE 2A 71
	inc $2E.b		; E6 2E
	adc $EEA4E2.l		; 6F E2 A4 EE
	ora $254BBB.l,X		; 1F BB 4B 25
	pei ($5D.b)		; D4 5D
	eor ($A4.b),Y		; 51 A4
	sbc ($0C.b,X)		; E1 0C
	bpl -53.b		; 10 CB
	and $E1F6.w		; 2D F6 E1
	adc $E023A4.l		; 6F A4 23 E0
	ora $CB01.w,X		; 1D 01 CB
	sbc ($C6.b),Y		; F1 C6
	ora $F561A4.l		; 0F A4 61 F5
	cpx #$1E.b		; E0 1E
	sbc ($DC.b),Y		; F1 DC
	cmp $B5.b,S		; C3 B5
	ldy $2E.b		; A4 2E
	mvp $FF,$E5		; 44 E5 FF
	ora $B3FBE1.l,X		; 1F E1 FB B3
	ldy $C2.b		; A4 C2
	lsr $D535.w		; 4E 35 D5
	ora $FCD21F.l		; 0F 1F D2 FC
	ldy $B1.b		; A4 B1
	inc $256E.w,X		; FE 6E 25
	sbc ($2E.b,S),Y		; F3 2E
	bpl -47.b		; 10 D1
	ldy $0D.b		; A4 0D
	ldx $601C.w,Y		; BE 1C 60
	ora $01.b		; 05 01
	lsr $A402.w		; 4E 02 A4
	cmp $3CDB1D.l,X		; DF 1D DB 3C
	eor ($F4.b,X)		; 41 F4
	rol $A46E.w,X		; 3E 6E A4
	ora ($EF.b,X)		; 01 EF
	asl $3DDA.w,X		; 1E DA 3D
	trb $E3.b		; 14 E3
	eor $50A4.w,X		; 5D A4 50
	sbc ($FE.b),Y		; F1 FE
	ora $D5E1DC.l,X		; 1F DC E1 D5
	brk $A4.b		; 00 A4
	bvc  19.b		; 50 13
	beq  29.b		; F0 1D
	ora $C4B3FC.l,X		; 1F FC B3 C4
	ldy $10.b		; A4 10
	and ($E5.b,S),Y		; 33 E5
	beq  30.b		; F0 1E
	sbc ($EE.b),Y		; F1 EE
	bcs -92.b		; B0 A4
	sbc $F31440.l,X		; FF 40 14 F3
	and $FEE11F.l		; 2F 1F E1 FE
	ldy $CC.b		; A4 CC
	bit $0441.w,X		; 3C 41 04
	bpl  79.b		; 10 4F
	ora ($E0.b,X)		; 01 E0
	ldy $0E.b		; A4 0E
	nop		; EA
	rol $0103.w		; 2E 03 01
	eor $A4F141.l		; 4F 41 F1 A4
	inc $FC1F.w,X		; FE 1F FC
	ldy $B4.b,X		; B4 B4
	bpl  50.b		; 10 32
	tsb $A4.b		; 04 A4
	beq  30.b		; F0 1E
	brk $EF.b		; 00 EF
	ldy #$1D.b		; A0 1D
	rti		; 40

	tsb $A4.b		; 04 A4
	cop $3F.b		; 02 3F
	bpl -32.b		; 10 E0
	sbc $032EEA.l,X		; FF EA 2E 03
	ldy $00.b		; A4 00
	eor $1DF032.l,X		; 5F 32 F0 1D
	ora $A4A4FD.l,X		; 1F FD A4 A4
.ACCU 16
	rep #$20		; C2 20
	ora $E4.b,X		; 15 E4
	brk $1F.b		; 00 1F
	sbc ($E0.b,X)		; E1 E0
	ldy $CC.b		; A4 CC
	bit $F322.w,X		; 3C 22 F3
	and $EF0140.l,X		; 3F 40 01 EF
	ldy $1E.b		; A4 1E
	ora $C2B3.w		; 0D B3 C2
	and $1FE424.l		; 2F 24 E4 1F
	ldy $2F.b		; A4 2F
.INDEX 8
	sep #$D0		; E2 D0
	sbc $D420.w,Y		; F9 20 D4
	ora $23A45F.l		; 0F 5F A4 23
	beq  45.b		; F0 2D
	ora $3BBDF0.l,X		; 1F F0 BD 3B
	eor ($A4.b,X)		; 41 A4
	sbc $1F.b		; E5 1F
	eor $1EEF02.l,X		; 5F 02 EF 1E
	ora $A4A3.w,X		; 1D A3 A4
	cmp ($3F.b,X)		; C1 3F
	ora $D4.b,X		; 15 D4
	and $EFD310.l		; 2F 10 D3 EF
	ldy $0A.b		; A4 0A
	sbc ($B4.b)		; F2 B4
	asl $0451.w,X		; 1E 51 04
	beq  45.b		; F0 2D
	ldy $10.b		; A4 10
	sbc ($E9.b,X)		; E1 E9
	eor $F0F3.w		; 4D F3 F0
	eor $F1A423.l,X		; 5F 23 A4 F1
	ora $E110.w,X		; 1D 10 E1
	wai		; CB
	jmp $F112.w		; 4C 12 F1
	ldy $4F.b		; A4 4F
	and $F0.b,S		; 23 F0
	and $F010.w		; 2D 10 F0
	nop		; EA
	and $1FE2A4.l		; 2F A4 E2 1F
	eor ($03.b,X)		; 41 03
	asl $013E.w,X		; 1E 3E 01
	cpx #$A4.b		; E0 A4
	ora #$C301.w		; 09 01 C3
	asl $F342.w,X		; 1E 42 F3
	rol $A420.w		; 2E 20 A4
	sbc ($0F.b,X)		; E1 0F
	tas		; 1B
	cmp $C0.b,S		; C3 C0
	and $A40104.l,X		; 3F 04 01 A4
	and $1F0F11.l,X		; 3F 11 0F 1F
	ora $122DBD.l		; 0F BD 2D 12
	tya		; 98
	bcs 121.b		; B0 79
	and $92.b		; 25 92
	bit $C005.w		; 2C 05 C0
	xba		; EB
	sty $C3.b,X		; 94 C3
.INDEX 16
	rep #$10		; C2 10
	tsb $20.b		; 04 20
	rts		; 60

	cop $2E.b		; 02 2E
	sty $2F.b,X		; 94 2F
	inc $4D9A.w,X		; FE 9A 4D
	ora ($0E.b,X)		; 01 0E
	and ($03.b,S),Y		; 33 03
	tya		; 98
	ora $F020.w		; 0D 20 F0
	ora $59D50D.l,X		; 1F 0D D5 59
	and ($84.b),Y		; 31 84
	cmp $33F653.l		; CF 53 F6 33
	tsb $10.b		; 04 10
	jsl $BD94CC.l		; 22 CC 94 BD
	and $010FF0.l,X		; 3F F0 0F 01
	ora $840221.l,X		; 1F 21 02 84
	lsr $0C31.w		; 4E 31 0C
	wai		; CB
	bit $EF.b		; 24 EF
	asl $78EE.w,X		; 1E EE 78
	jsr $4BC6.w		; 20 C6 4B
	and ($CD.b)		; 32 CD
	jmp $78E4E3.l		; 5C E3 E4 78
	eor #$DF12.w		; 49 12 DF
	sta ($11.b,S),Y		; 93 11
	bit $0F.b,X		; 34 0F
	ora ($88.b,X)		; 01 88
	sbc $03DF21.l,X		; FF 21 DF 03
	sbc $20BF03.l		; EF 03 BF 20
	dey		; 88
	ora ($03.b),Y		; 11 03
	tsb $E230.w		; 0C 30 E2
	trb $4EF0.w		; 1C F0 4E
	dey		; 88
	cmp ($2C.b,S),Y		; D3 2C
	cmp $30.b,S		; C3 30
	sbc $2D.b,S		; E3 2D
	cpx $1E.b		; E4 1E
	dey		; 88
	cop $CB.b		; 02 CB
	adc $BF.b,S		; 63 BF
	and ($CC.b),Y		; 31 CC
	adc ($EF.b,X)		; 61 EF
	sty $22.b,X		; 94 22
	brk $32.b		; 00 32
	ora ($1C.b,S),Y		; 13 1C
	lda ($3B.b,S),Y		; B3 3B
	pea $0EA4.w		; F4 A4 0E
	sbc ($FE.b)		; F2 FE
	ora ($FF.b,X)		; 01 FF
	and ($13.b,X)		; 21 13
	rti		; 40

	tay		; A8
	bcs  96.b		; B0 60
	cmp $1E.b		; C5 1E
	sbc ($0D.b),Y		; F1 0D
	bpl  -1.b		; 10 FF
	tay		; A8
	and ($F2.b)		; 32 F2
	ora ($BB.b),Y		; 11 BB
.ACCU 8
.INDEX 8
	sep #$7D		; E2 7D
	jsl $F2A81E.l		; 22 1E A8 F2
	ldx $F211.w,Y		; BE 11 F2
	and ($12.b),Y		; 31 12
	phd		; 0B
	sta $F6B8.w,X		; 9D B8 F6
	brk $30.b		; 00 30
	sbc $D11F.w,X		; FD 1F D1
	ora $F3.b,S		; 03 F3
	ldy $42.b,X		; B4 42
	and ($0D.b),Y		; 31 0D
	tsx		; BA
	lda $53.b		; A5 53
	mvp $B8,$FC		; 44 FC B8
	ora ($E3.b),Y		; 11 E3
	bmi -14.b		; 30 F2
	jsr ($1F10.w,X)		; FC 10 1F
	sbc $F4C4.w		; ED C4 F4
	and ($11.b,X)		; 21 11
	sbc $F10F.w		; ED 0F F1
	and ($01.b,X)		; 21 01
	cpy $0F.b		; C4 0F
	brk $00.b		; 00 00
	cmp $1123.w,X		; DD 23 11
	and $4EB8EE.l		; 2F EE B8 4E
	ora ($1D.b,S),Y		; 13 1D
	ora ($E0.b,X)		; 01 E0
	ora ($FD.b),Y		; 11 FD
	cmp ($B4.b)		; D2 B4
	adc $22.b,X		; 75 22
	ora $1EBE.w,X		; 1D BE 1E
	ora ($20.b,S),Y		; 13 20
	ora ($C8.b,X)		; 01 C8
	beq  17.b		; F0 11
	inc $4CF4.w		; EE F4 4C
	ora $C4F3FF.l,X		; 1F FF F3 C4
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr ($B8E3.w,X)		; FC E3 B8
	inc A		; 1A
	and $C235AF.l		; 2F AF 35 C2
	and $C82FEF.l		; 2F EF 2F C8
	ora ($0F.b,X)		; 01 0F
	bne  53.b		; D0 35
	cmp $21D10F.l,X		; DF 0F D1 21
	cpy $01.b		; C4 01
	jsr $10FF.w		; 20 FF 10
	ora ($1E.b,X)		; 01 1E
	cmp $B435.w		; CD 35 B4
	jsl $31AD1B.l		; 22 1B AD 31
	ora ($2E.b,S),Y		; 13 2E
	cmp ($10.b),Y		; D1 10
	iny		; C8
	bpl  -4.b		; 10 FC
	tsb $5E.b		; 04 5E
	cmp ($EE.b),Y		; D1 EE
	ora $2E.b,S		; 03 2E
	cpy $12.b		; C4 12
	asl $10F1.w		; 0E F1 10
	ora ($DB.b),Y		; 11 DB
	sbc $41.b		; E5 41
	clv		; B8
	asl $66BE.w		; 0E BE 66
	inc $C02E.w		; EE 2E C0
	eor ($E2.b),Y		; 51 E2
	cpy $1D.b		; C4 1D
	lda $1055.w,X		; BD 55 10
	asl $32CE.w		; 0E CE 32
	ora ($C4.b,X)		; 01 C4
	asl $11E1.w,X		; 1E E1 11
	ora ($EB.b,X)		; 01 EB
	dec $50.b,X		; D6 50
	brk $C4.b		; 00 C4
	cpx $10F3.w		; EC F3 10
	ora ($EF.b),Y		; 11 EF
	cop $00.b		; 02 00
	ora $AAC0.w,X		; 1D C0 AA
	trb $33.b		; 14 33
	bmi -52.b		; 30 CC
	ora ($01.b,X)		; 01 01
	jsr $F1C4.w		; 20 C4 F1
	bpl   0.b		; 10 00
	cpy $0F37.w		; CC 37 0F
	brk $DD.b		; 00 DD
	cpy #$E0.b		; C0 E0
	brk $22.b		; 00 22
	brk $11.b		; 00 11
	ora ($EA.b),Y		; 11 EA
	lda ($C4.b,X)		; A1 C4
	eor $F3FCF0.l		; 4F F0 FC F3
	ora $110D21.l,X		; 1F 21 0D 11
	cpy $00.b		; C4 00
	xba		; EB
	inc $50.b,X		; F6 50
	cpx #$FD.b		; E0 FD
	sbc $10.b,S		; E3 10
	cpy $02.b		; C4 02
	asl $1F01.w		; 0E 01 1F
	jmp.w [$51E7]		; DC E7 51
	cpx #$C8.b		; E0 C8
	sbc $100E14.l		; EF 14 0E 10
	inc $1F20.w,X		; FE 20 1F
	cmp $5590C0.l,X		; DF C0 90 55
	eor $0D.b,S		; 43 0D
	ldx $2302.w,Y		; BE 02 23
	jsr $00C4.w		; 20 C4 00
	brk $CC.b		; 00 CC
	and [$3F.b],Y		; 37 3F
	sbc $C8F2ED.l,X		; FF ED F2 C8
	sbc ($F0.b),Y		; F1 F0
	cpx #$01.b		; E0 01
	asl $7DE4.w		; 0E E4 7D
	dec $FDB4.w		; CE B4 FD
	lda $2222.w,X		; BD 22 22
	and ($DE.b),Y		; 31 DE
	sbc $D4C4DB.l,X		; FF DB C4 D4
	.db $62, $0F, $FE		; 62 0F FE
	bne  17.b		; D0 11
	ora ($10.b),Y		; 11 10
	cpy $FF.b		; C4 FF
	sbc $4204FD.l,X		; FF FD 04 42
	ora $B8E0FE.l		; 0F FE E0 B8
	asl $FD22.w,X		; 1E 22 FD
	sbc ($EF.b),Y		; F1 EF
	ora $3F.b,X		; 15 3F
	inc $DDB8.w,X		; FE B8 DD
	jsl $06ED11.l		; 22 11 ED 06
	and $A8FEEF.l,X		; 3F EF FE A8
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	ora ($F2.b,X)		; 01 F2
	mvp $CF,$EC		; 44 EC CF
	sbc $1004A8.l,X		; FF A8 04 10
	dec $2D46.w,X		; DE 46 2D
	sbc $F1FD.w,X		; FD FD F1
	tay		; A8
	jsr $F400.w		; 20 00 F4
	and ($FE.b),Y		; 31 FE
	inc $F1D0.w,X		; FE D0 F1
	tya		; 98
	.db $62, $0D, $45		; 62 0D 45
	sbc $FCF1.w,X		; FD F1 FC
	cpx #$98F0.w		; E0 F0 98
	and ($00.b)		; 32 00
	and ($F0.b),Y		; 31 F0
	asl $EC0F.w		; 0E 0F EC
	and $88.b,S		; 23 88
	and $2F05.w		; 2D 05 2F
	cop $0D.b		; 02 0D
	rep #$09		; C2 09
	ora [$84.b]		; 07 84
	eor ($FA.b,X)		; 41 FA
	lda ($64.b)		; B2 64
	ora ($2E.b),Y		; 11 2E
	ora $1A.b,S		; 03 1A
	dey		; 88
	bit $FD.b,X		; 34 FD
	ora $2D.b		; 05 2D
	sbc $CE0202.l		; EF 02 02 CE
	sei		; 78
	eor $FD215F.l		; 4F 5F 21 FD
	tsb $1E15.w		; 0C 15 1E
	ora $14CC84.l		; 0F 84 CC 14
	asl $2112.w		; 0E 12 21
	inc $0FFF.w,X		; FE FF 0F
	stz $01.b		; 64 01
	and $5D.b,S		; 23 5D
	adc $0F.b,S		; 63 0F
	lda $BF1F.w,Y		; B9 1F BF
	sei		; 78
	ora $DC1410.l		; 0F 10 14 DC
	and ($EB.b,X)		; 21 EB
	ora ($4F.b),Y		; 11 4F
	sei		; 78
	jsl $4CFF2A.l		; 22 2A FF 4C
	lda ($5F.b,S),Y		; B3 5F
	and $741D.w		; 2D 1D 74
	eor ($EF.b,X)		; 41 EF
	ora ($0F.b,X)		; 01 0F
	ora $FF22DF.l		; 0F DF 22 FF
	stz $23.b,X		; 74 23
	ora $0E1CE1.l		; 0F E1 1C 0E
	sbc $742014.l,X		; FF 14 20 74
	and $E2DD1F.l		; 2F 1F DD E2
	ora ($5F.b,X)		; 01 5F
	sbc $74E0.w		; ED E0 74
	ora ($04.b)		; 12 04
	and $00C0.w,X		; 3D C0 00
	inc $241F.w,X		; FE 1F 24
	stz $1F.b,X		; 74 1F
	trb $03ED.w		; 1C ED 03
	ora ($0E.b)		; 12 0E
	cpx #$7811.w		; E0 11 78
	sbc ($D3.b),Y		; F1 D3
	ora $BF.b,S		; 03 BF
	ora ($FD.b,X)		; 01 FD
	.db $42, $4C		; 42 4C
	pla		; 68
	lsr A		; 4A
	cmp $043C01.l		; CF 01 3C 04
	and ($BD.b)		; 32 BD
	ora ($68.b,X)		; 01 68
.INDEX 16
	rep #$14		; C2 14
	jmp $1F0A.w		; 4C 0A 1F
	cmp ($6F.b,X)		; C1 6F
	ora $68.b,S		; 03 68
	phk		; 4B
	beq -82.b		; F0 AE
	phk		; 4B
	.db $62, $4D, $E0		; 62 4D E0
	phd		; 0B
	stz $EC.b		; 64 EC
	sbc ($F0.b),Y		; F1 F0
	bit $10.b,X		; 34 10
	cpy $EFC2.w		; CC C2 EF
	sei		; 78
	jsr $2EFF.w		; 20 FF 2E
	jsr ($E151.w,X)		; FC 51 E1
	rol $68FF.w,X		; 3E FF 68
	brk $D4.b		; 00 D4
	pei ($2D.b)		; D4 2D
	ora $13AF21.l		; 0F 21 AF 13
	stz $F3.b		; 64 F3
	jsl $FFEE2F.l		; 22 2F EE FF
	cpx #$E532.w		; E0 32 E5
	stz $4B.b		; 64 4B
	stz $E105.w,X		; 9E 05 E1
	eor $101E0C.l,X		; 5F 0C 1E 10
	stz $00.b		; 64 00
	brk $40.b		; 00 40
	rol A		; 2A
	lda $004F13.l,X		; BF 13 4F 00
	pha		; 48
	sbc $221E.w,X		; FD 1E 22
	sbc ($FB.b,S),Y		; F3 FB
	eor $58A2FA.l,X		; 5F FA A2 58
	bvs  -3.b		; 70 FD
	brk $F0.b		; 00 F0
	stx $11.b,Y		; 96 11
	sbc $1F6431.l		; EF 31 64 1F
	inc $1DF3.w,X		; FE F3 1D
	brk $3D.b		; 00 3D
	tas		; 1B
	ora $F20064.l,X		; 1F 64 00 F2
	and ($C1.b),Y		; 31 C1
	sbc $0032EF.l		; EF EF 32 00
	stz $10.b		; 64 10
	inc $31FF.w		; EE FF 31
	sbc $1E0B13.l,X		; FF 13 0B 1E
	stz $F2.b		; 64 F2
	brk $13.b		; 00 13
	brk $EC.b		; 00 EC
	jsr $0F10.w		; 20 10 0F
	stz $F2.b		; 64 F2
	sbc $0200D3.l,X		; FF D3 00 02
	ora $64DA11.l,X		; 1F 11 DA 64
	ora $F00034.l,X		; 1F 34 00 F0
	asl $F2E0.w,X		; 1E E0 F2
	ora $EEEE50.l,X		; 1F 50 EE EE
	stp		; DB
	ldx $45.b,Y		; B6 45
	trb $FCEF.w		; 1C EF FC
	stz $E1.b		; 64 E1
	ora $B21012.l,X		; 1F 12 10 B2
	beq -48.b		; F0 D0
	bmi 100.b		; 30 64
	ora ($EF.b,S),Y		; 13 EF
	beq -32.b		; F0 E0
	cmp ($10.b)		; D2 10
	bpl  15.b		; 10 0F
	mvn $10,$DF		; 54 DF 10
	jsr $31FE.w		; 20 FE 31
	cmp $23DE.w,X		; DD DE 23
	mvn $3F,$0F		; 54 0F 3F
	inc $E20B.w,X		; FE 0B E2
	jsr $310E.w		; 20 0E 31
	stz $EF.b		; 64 EF
	brk $00.b		; 00 00
	bpl -16.b		; 10 F0
	brk $FC.b		; 00 FC
	jsl $21C344.l		; 22 44 C3 21
	asl $DFEB.w		; 0E EB DF
	jsl $503E22.l		; 22 22 3E 50
	inc $BDDD.w,X		; FE DD BD
	jmp.w [$61DE]		; DC DE 61
	inc $50DD.w,X		; FE DD 50
	cpy $0AD7.w		; CC D7 0A
	inc $EFEF.w,X		; FE EF EF
	eor $5060.w,X		; 5D 60 50
	ora ($1D.b)		; 12 1D
	dec $F060.w,X		; DE 60 F0
	ora ($DE.b,X)		; 01 DE
	sbc $53EE50.l		; EF 50 EE 53
	bmi  18.b		; 30 12
	asl $FFF0.w		; 0E F0 FF
	beq  64.b		; F0 40
	.db $62, $1E, $EF		; 62 1E EF
	sbc $10F2FE.l,X		; FF FE F2 10
	brk $14.b		; 00 14
	and ($42.b,S),Y		; 33 42
	ora ($0F.b,S),Y		; 13 0F
	cpx #$D000.w		; E0 00 D0
	brk $14.b		; 00 14
	brk $11.b		; 00 11
	jsl $132333.l		; 22 33 23 13
	ora ($43.b)		; 12 43
	clc		; 18
	and $22.b,S		; 23 22
	ora $21.b		; 05 21
	brk $42.b		; 00 42
	adc $421413.l		; 6F 13 14 42
	cop $04.b		; 02 04
	and ($21.b),Y		; 31 21
	and $40.b,S		; 23 40
	sbc $451614.l,X		; FF 14 16 45
	and ($21.b,S),Y		; 33 21
	eor ($01.b,X)		; 41 01
	bit $21.b		; 24 21
	trb $32.b		; 14 32
	ora $00FB0F.l		; 0F 0F FB 00
	asl $0EF0.w		; 0E F0 0E
	bvc   0.b		; 50 00
	brk $0B.b		; 00 0B
	beq   0.b		; F0 00
	sbc $14FFFF.l,X		; FF FF FF 14
	sbc $010EEF.l		; EF EF 0E 01
	jsr $DC26.w		; 20 26 DC
	rts		; 60

	clc		; 18
	rti		; 40

	ora $00.b,S		; 03 00
	cpx #$3000.w		; E0 00 30
	ora ($5B.b,X)		; 01 5B
	tsb $12.b		; 04 12
	bvc -13.b		; 50 F3
	brk $23.b		; 00 23
	ora ($20.b)		; 12 20
	and $18.b,X		; 35 18
	ora ($F3.b,X)		; 01 F3
	and $32.b,S		; 23 32
	jsr $4140.w		; 20 40 41
	inc $5618.w		; EE 18 56
	trb $01.b		; 14 01
	and ($5F.b),Y		; 31 5F
	bvc  34.b		; 50 22
	bmi  24.b		; 30 18
	eor ($21.b)		; 52 21
	and ($23.b),Y		; 31 23
	ora ($41.b,X)		; 01 41
	trb $13.b		; 14 13
	tsb $31.b		; 04 31
	ora ($50.b),Y		; 11 50
	brk $43.b		; 00 43
	cpx #$5FC1.w		; E0 C1 5F
	bvc  17.b		; 50 11
	ora ($10.b),Y		; 11 10
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $14.b		; 00 14
	brk $ED.b		; 00 ED
	cmp $00CCEE.l,X		; DF EE CC 00
	sbc ($E0.b,X)		; E1 E0
	trb $DE.b		; 14 DE
	inc $0201.w,X		; FE 01 02
	jsr ($B1E0.w,X)		; FC E0 B1
	ora $0054.w		; 0D 54 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $C0.b		; 14 C0
	brk $24.b		; 00 24
	.db $42, $23		; 42 23
	jsl $323122.l		; 22 22 31 32
	jsl $013412.l		; 22 12 34 01
	ora ($10.b),Y		; 11 10
	tsb $0110.w		; 0C 10 01
	brk $00.b		; 00 00
	trb $32.b		; 14 32
	eor ($21.b)		; 52 21
	and ($24.b,X)		; 21 24
	brk $10.b		; 00 10
	ora $04.b,S		; 03 04
	cmp ($5F.b,S),Y		; D3 5F
	ora $100000.l		; 0F 00 00 10
	sbc ($FF.b),Y		; F1 FF
	bvc  11.b		; 50 0B
	beq   0.b		; F0 00
	brk $FF.b		; 00 FF
	sbc $54F5FF.l,X		; FF FF F5 54
	cmp ($0D.b)		; D2 0D
	brk $5D.b		; 00 5D
	rol $41.b,X		; 36 41
	cmp $D5.b		; C5 D5
	stz $BD.b		; 64 BD
	sbc $B0.b,X		; F5 B0
	cmp $3D2EE0.l,X		; DF E0 2E 3D
	cmp ($74.b),Y		; D1 74
	jsr $DE14.w		; 20 14 DE
	sbc $FF1E.w,X		; FD 1E FF
	ora ($0F.b)		; 12 0F
	stz $E3.b		; 64 E3
	sbc ($03.b)		; F2 03
	and ($05.b,S),Y		; 33 05
	ora ($EE.b,X)		; 01 EE
	eor ($78.b)		; 52 78
	brk $10.b		; 00 10
	lda ($32.b,X)		; A1 32
	tsa		; 3B
	inc $0C10.w		; EE 10 0C
	ldy $EF.b		; A4 EF
	ora ($34.b,X)		; 01 34
	mvn $CB,$1D		; 54 1D CB
	cmp $1FB811.l,X		; DF 11 B8 1F
	sbc $040001.l,X		; FF 01 00 04
	ora $B803CC.l,X		; 1F CC 03 B8
	and ($F0.b,X)		; 21 F0
	bpl  13.b		; 10 0D
	brk $1F.b		; 00 1F
	ora $0DB836.l		; 0F 36 B8 0D
	ldy $2E23.w,X		; BC 23 2E
	sbc ($31.b)		; F2 31
	cmp $C8F2.w		; CD F2 C8
	ora $FC4100.l,X		; 1F 00 41 FC
	bne  65.b		; D0 41
	asl $C811.w		; 0E 11 C8
	bpl -18.b		; 10 EE
	ora ($01.b,X)		; 01 01
	beq  65.b		; F0 41
	tsb $B8C0.w		; 0C C0 B8
	lsr $0D.b,X		; 56 0D
	sbc $41.b,S		; E3 41
	tyx		; BB
	sbc ($41.b)		; F2 41
	dec $04C4.w		; CE C4 04
	eor ($EB.b,S),Y		; 53 EB
	cmp ($21.b,X)		; C1 21
	sbc $C82013.l,X		; FF 13 20 C8
	cmp ($12.b),Y		; D1 12
	sbc $CD30F3.l,X		; FF F3 30 CD
	sbc ($40.b)		; F2 40
	clv		; B8
	dec $2D14.w		; CE 14 2D
	cpy $3E24.w		; CC 24 3E
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	clv		; B8
	wai		; CB
	sbc $42.b,S		; E3 42
	asl $2EF1.w		; 0E F1 2E
	dec $A824.w		; CE 24 A8
	jsl $CB1BE1.l		; 22 E1 1B CB
	ora $53.b,X		; 15 53
	ora $A81F.w		; 0D 1F A8
	dex		; CA
	ora $55.b,S		; 03 55
	brk $EF.b		; 00 EF
	jmp.w [$36D2]		; DC D2 36
	clv		; B8
	and ($DD.b,X)		; 21 DD
	cmp ($24.b),Y		; D1 24
	ora $FD22D0.l		; 0F D0 22 FD
	clv		; B8
	cpx #$33.b		; E0 33
	asl $24CF.w,X		; 1E CF 24
	ora $B823BE.l,X		; 1F BE 23 B8
	and $2F03DE.l,X		; 3F DE 03 2F
	cmp $3115.w,X		; DD 15 31
	dex		; CA
	clv		; B8
	sbc ($42.b,S),Y		; F3 42
	sbc $30F2.w		; ED F2 30
	xba		; EB
	cop $61.b		; 02 61
	clv		; B8
	phd		; 0B
	cmp ($32.b,X)		; C1 32
	trb $510F.w		; 1C 0F 51
	cpx $B8D2.w		; EC D2 B8
	eor $FC.b		; 45 FC
	cmp $EF1C34.l		; CF 34 1C EF
	bit $FD.b,X		; 34 FD
	clv		; B8
	cmp $BE0D45.l,X		; DF 45 0D BE
	eor $2E.b,S		; 43 2E
	dec $A832.w,X		; DE 32 A8
	tsb $67A2.w		; 0C A2 67
	plx		; FA
	stz $2E55.w,X		; 9E 55 2E
	cpy #$A8.b		; C0 A8
	and ($ED.b,X)		; 21 ED
	trb $31.b		; 14 31
	ldy $40F3.w,X		; BC F3 40
	sbc $12A8.w,X		; FD A8 12
	ora $46D1.w		; 0D D1 46
	tas		; 1B
	stz $3E35.w,X		; 9E 35 3E
	clv		; B8
	cpx #$11.b		; E0 11
	inc $43F1.w,X		; FE F1 43
	cmp $23D1.w,X		; DD D1 23
	tay		; A8
	sbc $CD3FC2.l		; EF C2 3F CD
	rol $5E.b		; 26 5E
	lda $A814.w,Y		; B9 14 A8
	bvc -20.b		; 50 EC
	ora ($FE.b,S),Y		; 13 FE
	cmp ($55.b)		; D2 55
	nop		; EA
	lda $0E46A8.l,X		; BF A8 46 0E
	cmp ($0F.b)		; D2 0F
	inc $3E35.w		; EE 35 3E
	tyx		; BB
	tay		; A8
	ora ($40.b,S),Y		; 13 40
	inc $FD20.w		; EE 20 FD
	ora ($52.b)		; 12 52
	dex		; CA
	tay		; A8
	sbc ($62.b,X)		; E1 62
	inc $FE01.w		; EE 01 FE
	sbc ($54.b),Y		; F1 54
	plx		; FA
	tay		; A8
	dec $2D53.w		; CE 53 2D
	sep #$0F		; E2 0F
	bne  53.b		; D0 35
	pld		; 2B
	tay		; A8
	ldx $1F34.w,Y		; BE 34 1F
	cmp ($20.b,X)		; C1 20
	bne  35.b		; D0 23
	rol $ADA8.w,X		; 3E A8 AD
	trb $4F.b		; 14 4F
	cmp $22F11F.l,X		; DF 1F F1 22
	and $CEA8.w		; 2D A8 CE
	and $2F.b,S		; 23 2F
	bne  31.b		; D0 1F
	sbc ($44.b,X)		; E1 44
	inc A		; 1A
	tay		; A8
	ldx $3D54.w		; AE 54 3D
	bne  30.b		; D0 1E
	sbc $44.b,S		; E3 44
	nop		; EA
	tay		; A8
	lda ($44.b),Y		; B1 44
	ora $FEE0.w,X		; 1D E0 FE
	bit $5F.b		; 24 5F
	plb		; AB
	tay		; A8
	pea $CF51.w		; F4 51 CF
	brk $D2.b		; 00 D2
	and $0C.b,X		; 35 0C
	lda $44A8.w		; AD A8 44
	and $EEF0.w,X		; 3D F0 EE
	trb $42.b		; 14 42
	tyx		; BB
	cmp $A8.b,S		; C3 A8
	eor ($FE.b)		; 52 FE
	ora $2D45C1.l		; 0F C1 45 2D
	stz $A834.w		; 9C 34 A8
	and $F3FED1.l,X		; 3F D1 FE F3
	mvp $B1,$DB		; 44 DB B1
	mvp $EF,$A8		; 44 A8 EF
	ora $3D33D1.l		; 0F D1 33 3D
	tyx		; BB
	mvp $A8,$2D		; 44 2D A8
	sbc ($DF.b),Y		; F1 DF
	and $5F.b,S		; 23 5F
	dex		; CA
	pea $E040.w		; F4 40 E0
	tay		; A8
	sbc $5402.w,X		; FD 02 54
	cpy $43A3.w		; CC A3 43
	sbc $A82E.w		; ED 2E A8
	sbc $BC1D44.l,X		; FF 44 1D BC
	eor ($1E.b,S),Y		; 53 1E
	beq -17.b		; F0 EF
	tay		; A8
	bit $4E.b		; 24 4E
	tsx		; BA
	and $20.b		; 25 20
	lda ($FD.b,S),Y		; B3 FD
	ora ($A8.b)		; 12 A8
	rts		; 60

	wai		; CB
	dec $22.b,X		; D6 22
	ldx #$0D.b		; A2 0D
	ora ($53.b)		; 12 53
	tay		; A8
	plb		; AB
	dec $40.b		; C6 40
	cmp $54F41D.l,X		; DF 1D F4 54
	lda $D3B8.w,Y		; B9 B8 D3
	and ($EE.b),Y		; 31 EE
	rol $3300.w		; 2E 00 33
	jsr ($B8D0.w,X)		; FC D0 B8
	bvc  13.b		; 50 0D
	and $FD24E1.l		; 2F E1 24 FD
	cpy #$50.b		; C0 50
	clv		; B8
	tsb $D130.w		; 0C 30 D1
	trb $2B.b		; 14 2B
	dec $0D51.w,X		; DE 51 0D
	clv		; B8
	jsr $33D0.w		; 20 D0 33
	ora $52BF.w,X		; 1D BF 52
	sbc $B811.w,X		; FD 11 B8
	sbc $D01C24.l		; EF 24 1C D0
	and ($EF.b),Y		; 31 EF
	and ($C0.b,X)		; 21 C0
	clv		; B8
	and $0B.b		; 25 0B
	cpx #$4F.b		; E0 4F
	cpx #$30.b		; E0 30
	lda ($44.b),Y		; B1 44
	clv		; B8
	sbc #$11.b		; E9 11
	lsr $2FD2.w		; 4E D2 2F
	rep #$42		; C2 42
	stp		; DB
	ldy $E2.b,X		; B4 E2
	asl $3ED1.w,X		; 1E D1 3E
	lda ($54.b),Y		; B1 54
	sbc $B402.w,X		; FD 02 B4
	sbc $0C02.w,X		; FD 02 0C
	pei ($51.b)		; D4 51
	cpx #$10.b		; E0 10
	sbc $FC10B4.l		; EF B4 10 FC
	tsb $20.b		; 04 20
	ora ($0F.b,X)		; 01 0F
	beq  15.b		; F0 0F
	ldy $DA.b		; A4 DA
	rol $31.b,X		; 36 31
	jsl $EDF0ED.l		; 22 ED F0 ED
	bcs -92.b		; B0 A4
	eor $22.b,X		; 55 22
	and $CB0EDF.l		; 2F DF 0E CB
	sbc $33.b,X		; F5 33
	ldy $25.b		; A4 25
	ora $FCEF.w		; 0D EF FC
	lda $1345.w,X		; BD 45 13
	eor ($A4.b)		; 52 A4
	sbc $CCEF.w		; ED EF CC
	ldy $52.b,X		; B4 52
	and $3F.b		; 25 3F
	dec $EDA4.w,X		; DE A4 ED
	wai		; CB
	bit $32.b		; 24 32
	eor ($1E.b,S),Y		; 53 1E
	dec $A8EC.w		; CE EC A8
	sbc $3F.b,X		; F5 3F
	sbc ($2C.b),Y		; F1 2C
	inc $0100.w,X		; FE 00 01
	jsr $2298.w		; 20 98 22
	ora $43DFFB.l		; 0F FB DF 43
	sbc $94F004.l,X		; FF 04 F0 94
	jsl $21C1EC.l		; 22 EC C1 21
	ora $FF1110.l		; 0F 10 11 FF
	sty $DC.b		; 84 DC
	inc $61.b		; E6 61
	bne  15.b		; D0 0F
	beq -16.b		; F0 F0
	dec $3588.w,X		; DE 88 35
	cpx $F1E1.w		; EC E1 F1
	beq  49.b		; F0 31
	inc $8435.w		; EE 35 84
	lsr $EDDF.w		; 4E DF ED
	dec $1013.w,X		; DE 13 10
	and $1F.b,S		; 23 1F
	stz $C2.b,X		; 74 C2
	tsb $40E0.w		; 0C E0 40
	sbc $12BA1F.l,X		; FF 1F BA 12
	stz $11.b,X		; 74 11
	and [$3E.b],Y		; 37 3E
	cmp $1E.b,S		; C3 1E
	dec $EEF1.w		; CE F1 EE
	sei		; 78
	bmi -19.b		; 30 ED
	eor $BF.b		; 45 BF
	cop $3B.b		; 02 3B
	ora $FC.b,S		; 03 FC
	sei		; 78
	cmp ($12.b)		; D2 12
.ACCU 8
	sep #$23		; E2 23
	inc $FED3.w,X		; FE D3 FE
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	and $DD0210.l		; 2F 10 02 DD
	cmp $32F3F0.l		; CF F0 F3 32
	stz $31.b		; 64 31
	ora ($3B.b,S),Y		; 13 3B
	bne  46.b		; D0 2E
	cpy #$F9.b		; C0 F9
	lda ($78.b,X)		; A1 78
	sbc $E0.b,S		; E3 E0
	jsl $EEF2C0.l		; 22 C0 F2 EE
	eor $D17811.l		; 4F 11 78 D1
	trb $0F2F.w		; 1C 2F 0F
	eor $F040.w		; 4D 40 F0
	beq 100.b		; F0 64
	cmp ($B1.b)		; D2 B1
	dex		; CA
	ora ($10.b,X)		; 01 10
	and $10.b,S		; 23 10
	sbc $FE64.w		; ED 64 FE
	brk $4E.b		; 00 4E
	ora ($04.b,S),Y		; 13 04
	ora $0CF0.w		; 0D F0 0C
	stz $1F.b		; 64 1F
.ACCU 16
	rep #$EF		; C2 EF
	cop $E1.b		; 02 E1
	bmi   0.b		; 30 00
	ora $64.b,S		; 03 64
	sep #$00		; E2 00
	jsr $EB0F.w		; 20 0F EB
	sbc $64001F.l		; EF 1F 00 64
	jsl $DF5C02.l		; 22 02 5C DF
	rol $BD.b,X		; 36 BD
	and ($FE.b,X)		; 21 FE
	stz $EF.b,X		; 74 EF
	inc $64A1.w		; EE A1 64
	ora ($24.b)		; 12 24
	and $03780C.l		; 2F 0C 78 03
	ora ($E1.b),Y		; 11 E1
	lda $E244.w,X		; BD 44 E2
	eor ($E3.b,X)		; 41 E3
	sei		; 78
	stp		; DB
	cmp $0B55.w		; CD 55 0B
	ora $E542E2.l		; 0F E2 42 E5
	sty $32.b,X		; 94 32
	and ($0C.b,X)		; 21 0C
	cmp $FFFF20.l,X		; DF 20 FF FF
	sbc ($98.b),Y		; F1 98
	sbc ($11.b),Y		; F1 11
	ora $3FF3DD.l		; 0F DD F3 3F
	ora ($00.b,X)		; 01 00
	tya		; 98
	bpl   3.b		; 10 03
	plx		; FA
	ldx #$20.b		; A2 20
	inc $3F.b,X		; F6 3F
	ora ($A8.b,S),Y		; 13 A8
	trb $BB21.w		; 1C 21 BB
	sbc ($20.b,S),Y		; F3 20
	bit $00.b		; 24 00
	ora ($A8.b),Y		; 11 A8
	inc $AD1C.w		; EE 1C AD
	eor $F2.b		; 45 F2
	.db $42, $01		; 42 01
	ora $EEB8.w,X		; 1D B8 EE
	inc $2FF4.w,X		; FE F4 2F
	and $1F.b,S		; 23 1F
	inc $B8EE.w		; EE EE B8
	brk $3E.b		; 00 3E
	and ($21.b),Y		; 31 21
	asl $E0DE.w,X		; 1E DE E0
	sbc ($A8.b,S),Y		; F3 A8
	and ($25.b),Y		; 31 25
	and $BCFB.w,X		; 3D FB BC
	tsb $2266.w		; 0C 66 22
	clv		; B8
	jsl $0FDDFD.l		; 22 FD DD 0F
	cop $41.b		; 02 41
	ora ($1F.b)		; 12 1F
	clv		; B8
	cpy $0FFF.w		; CC FF 0F
	.db $62, $11, $20		; 62 11 20
	jmp.w [$B8DF]		; DC DF B8
	brk $16.b		; 00 16
	ora ($12.b),Y		; 11 12
	jmp.w [$F0C0]		; DC C0 F0
	asl $B8.b		; 06 B8
	bmi  17.b		; 30 11
	xce		; FB
	cmp $6FF62E.l		; CF 2E F6 6F
	sbc ($C4.b),Y		; F1 C4
	bmi -35.b		; 30 DD
	inc $34C0.w		; EE C0 34
	jsl $C4DD3F.l		; 22 3F DD C4
	asl $34C0.w		; 0E C0 34
	ora ($3F.b),Y		; 11 3F
	dec $D0FF.w,X		; DE FF D0
	cpy $43.b		; C4 43
	bpl  16.b		; 10 10
	dec $FE00.w,X		; DE 00 FE
	bit $10.b		; 24 10
	ldy $B0.b		; A4 B0
	sbc $60C4.w,Y		; F9 C4 60
	dex		; CA
	inc $3F.b,X		; F6 3F
	tsb $B4.b		; 04 B4
	ora $F100E0.l,X		; 1F E0 00 F1
	sbc $4F14.w		; ED 14 4F
	sbc ($B4.b,X)		; E1 B4
	asl $23DF.w,X		; 1E DF 23
	jsr ($30E5.w,X)		; FC E5 30
	cpx #$2F.b		; E0 2F
	bcs  -3.b		; B0 FD
	cpx #$10.b		; E0 10
	cpy $3103.w		; CC 03 31
	ora ($1E.b)		; 12 1E
	ldy #$9D.b		; A0 9D
	and $2A.b		; 25 2A
	ldy #$53.b		; A0 53
	beq  67.b		; F0 43
	ora $12B4.w		; 0D B4 12
	trb $52B1.w		; 1C B1 52
	ora $E1FD21.l		; 0F 21 FD E1
	ldy $20.b,X		; B4 20
	jmp.w [$3F26]		; DC 26 3F
	sbc ($0E.b,X)		; E1 0E
	cmp $0CB423.l,X		; DF 23 B4 0C
	sbc $42.b,S		; E3 42
	inc $ED01.w		; EE 01 ED
	ora $40.b,S		; 03 40
	ldy $BC.b,X		; B4 BC
	bit $2D.b,X		; 34 2D
.INDEX 8
	sep #$1F		; E2 1F
	cpx #$23.b		; E0 23
	xce		; FB
	ldy $C3.b,X		; B4 C3
	eor ($DF.b)		; 52 DF
	jsl $3EF3ED.l		; 22 ED F3 3E
	ldx $45B4.w		; AE B4 45
	and $2EE2.w		; 2D E2 2E
	cmp $E5EA34.l		; CF 34 EA E5
	bcs  86.b		; B0 56
	ora $C00C13.l,X		; 1F 13 0C C0
	.db $42, $BA		; 42 BA
	asl $B4.b		; 06 B4
	jsr ($2ED3.w,X)		; FC D3 2E
	cpy #$43.b		; C0 43
	cpy $4E06.w		; CC 06 4E
	clv		; B8
.INDEX 8
	sep #$5F		; E2 5F
	cmp $05EC33.l		; CF 33 EC 05
	and $B8BF.w,X		; 3D BF B8
	.db $42, $FD		; 42 FD
	ora $2C.b,S		; 03 2C
	cmp ($41.b,S),Y		; D3 41
	cmp $B404.w		; CD 04 B4
	and ($DE.b,X)		; 21 DE
	jsl $4004ED.l		; 22 ED 04 40
	dec $B821.w		; CE 21 B8
	sbc $EC24.w,X		; FD 24 EC
	ora ($3F.b,S),Y		; 13 3F
	ldx $0C33.w,Y		; BE 33 0C
	clv		; B8
	pea $B21F.w		; F4 1F B2
	eor $CD.b,S		; 43 CD
	cpx $2F.b		; E4 2F
	bne -72.b		; D0 B8
	and ($DE.b),Y		; 31 DE
	bit $1C.b		; 24 1C
	bne  65.b		; D0 41
	inc $B404.w		; EE 04 B4
	rol $44D0.w		; 2E D0 44
	tsb $2FE1.w		; 0C E1 2F
	sbc $D0B821.l		; EF 21 B8 D0
	and ($FB.b,S),Y		; 33 FB
	sbc ($21.b)		; F2 21
	dec $ED41.w,X		; DE 41 ED
	clv		; B8
	and $2D.b,S		; 23 2D
	cmp $03FD32.l,X		; DF 32 FD 03
	ora $B8E2.w,X		; 1D E2 B8
	bvc -51.b		; 50 CD
	ora $FF.b		; 05 FF
	cmp ($4E.b)		; D2 4E
	cpy #$53.b		; C0 53
	clv		; B8
	xba		; EB
	cpx $2F.b		; E4 2F
	cpy #$51.b		; C0 51
	cmp $1C35.w		; CD 35 1C
	clv		; B8
	lda ($31.b)		; B2 31
	cmp $EC43.w,X		; DD 43 EC
	inc $4E.b,X		; F6 4E
	sta $0C03B4.l,X		; 9F B4 03 0C
	cmp ($3F.b)		; D2 3F
	cmp $E21C55.l		; CF 55 1C E2
	clv		; B8
	tsb $4EE3.w		; 0C E3 4E
	cmp $E5DB64.l		; CF 64 DB E5
	asl $CDB4.w,X		; 1E B4 CD
	jsl $60F5FC.l		; 22 FC F5 60
	cmp $B8DD20.l,X		; DF 20 DD B8
	and ($ED.b)		; 32 ED
	ora $4B.b		; 05 4B
	bne  48.b		; D0 30
	cmp $FCB814.l,X		; DF 14 B8 FC
	tsb $3F.b		; 04 3F
	cmp $23DD22.l		; CF 22 DD 23
	ora $E4B8.w		; 0D B8 E4
	rti		; 40

	dec $DE13.w		; CE 13 DE
	ora ($1D.b)		; 12 1D
	sbc ($B8.b)		; F2 B8
	eor ($DD.b,X)		; 41 DD
	and ($FD.b,X)		; 21 FD
	ora ($2E.b),Y		; 11 2E
	sbc ($51.b,X)		; E1 51
	tay		; A8
	ldy $FD12.w		; AC 12 FD
	sbc $3D.b,S		; E3 3D
	cmp ($63.b)		; D2 63
	xba		; EB
	tay		; A8
	sbc ($FE.b,S),Y		; F3 FE
	sbc ($3F.b,X)		; E1 3F
	cmp ($43.b),Y		; D1 43
	tsb $98F0.w		; 0C F0 98
	phk		; 4B
	bne  49.b		; D0 31
	sbc $C11D45.l		; EF 45 1D C1
	asl $EE98.w,X		; 1E 98 EE
	and ($0E.b),Y		; 31 0E
	ora $3F.b		; 05 3F
	cmp $98CE11.l		; CF 11 CE 98
	and ($FE.b),Y		; 31 FE
	trb $5F.b		; 14 5F
	lda $04DD11.l,X		; BF 11 DD 04
	tya		; 98
	tsb $5106.w		; 0C 06 51
	lda $CD22.w		; AD 22 CD
	cop $2E.b		; 02 2E
	tya		; 98
	cpx $52.b		; E4 52
	jmp.w [$0C01]		; DC 01 0C
	sbc ($2F.b)		; F2 2F
	sbc ($88.b),Y		; F1 88
	lsr $EB.b,X		; 56 EB
	cmp ($1C.b)		; D2 1C
	cpx #$20.b		; E0 20
	ora $3E7832.l,X		; 1F 32 78 3E
	sta $DE30.w,X		; 9D 30 DE
	and ($0E.b,X)		; 21 0E
	eor $1F.b,S		; 43 1F
	stz $6D.b,X		; 74 6D
	ldx $EC11.w,Y		; BE 11 EC
	sbc ($00.b),Y		; F1 00
	mvp $74,$4F		; 44 4F 74
	tyx		; BB
	and $11F1F0.l		; 2F F0 F1 11
	and $40.b,S		; 23 40
	cpy $A074.w		; CC 74 A0
	jsr $1103.w		; 20 03 11
	bpl  52.b		; 10 34
	phx		; DA
	lda $E14D78.l		; AF 78 4D E1
	bvc -81.b		; 50 AF
	eor $E9.b,S		; 43 E9
	dec $6B.b,X		; D6 6B
	stz $FE.b,X		; 74 FE
	eor $F0.b		; 45 F0
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	tyx		; BB
	and ($DF.b,X)		; 21 DF
	bvs -29.b		; 70 E3
	eor ($D0.b,X)		; 41 D0
	ora ($0E.b),Y		; 11 0E
	ora $64F1ED.l		; 0F ED F1 64
	tas		; 1B
	cpy #$31.b		; C0 31
	brk $21.b		; 00 21
	ldx $2E33.w,Y		; BE 33 2E
	rts		; 60

	tax		; AA
	sbc $E0CD.w,X		; FD CD E0
	ora $63D2.w		; 0D D2 63
	and $C3DE64.l		; 2F 64 DE C3
	jsr $4201.w		; 20 01 42
	.db $42, $DC		; 42 DC
	asl $C168.w,X		; 1E 68 C1
	rts		; 60

	beq -11.b		; F0 F5
	cpx #$0B.b		; E0 0B
	cmp ($0D.b,S),Y		; D3 0D
	stz $04.b		; 64 04
	sbc ($20.b,X)		; E1 20
	eor $BEEF11.l,X		; 5F 11 EF BE
	inc $2064.w,X		; FE 64 20
	ora ($10.b,X)		; 01 10
	eor ($2E.b)		; 52 2E
	ldy $2020.w,X		; BC 20 20
	stz $02.b		; 64 02
	asl $43F1.w,X		; 1E F1 43
	ldy $EEF6.w,X		; BC F6 EE
	sbc $60.b,X		; F5 60
	rol $25BC.w		; 2E BC 25
	tas		; 1B
	cmp ($43.b,X)		; C1 43
	sbc $DF7462.l,X		; FF 62 74 DF
	bit $ED.b		; 24 ED
	sbc ($4E.b)		; F2 4E
	cpy #$40.b		; C0 40
	sbc $D270.w		; ED 70 D2
	eor ($DF.b,X)		; 41 DF
	jsl $1DF0FD.l		; 22 FD F0 1D
	dec $3170.w		; CE 70 31
	sbc $2E03.w,X		; FD 03 2E
	sbc ($30.b),Y		; F1 30
	asl $6014.w		; 0E 14 60
	pld		; 2B
	bcc  86.b		; 90 56
	sbc $150E23.l		; EF 23 0E 15
	bit $D564.w		; 2C 64 D5
	adc $50C0.w		; 6D C0 50
	ora $6CD4.w		; 0D D4 6C
	ldx $D260.w		; AE 60 D2
	jsr $51F0.w		; 20 F0 51
	ldx $EC03.w		; AE 03 EC
	cmp [$60.b],Y		; D7 60
	.db $62, $9C, $26		; 62 9C 26
	rti		; 40

	rol $4E.b		; 26 4E
	ldx $8847.w		; AE 47 88
	sbc ($00.b),Y		; F1 00
	sbc $0120.w		; ED 20 01
	and $40.b,S		; 23 40
	sbc $EF98.w		; ED 98 EF
	cmp $54F510.l,X		; DF 10 F5 54
	ora $A8ABFD.l,X		; 1F FD AB A8
	cpx #$11.b		; E0 11
	pea $1142.w		; F4 42 11
	inc $D0AE.w		; EE AE D0
	tay		; A8
	and $F1.b,S		; 23 F1
	stz $0F.b		; 64 0F
	sbc $E0DC.w,X		; FD DC E0
	ora ($A8.b)		; 12 A8
	brk $65.b		; 00 65
	asl $CCFE.w,X		; 1E FE CC
	sbc $A82E12.l,X		; FF 12 2E A8
	rol $4E.b,X		; 36 4E
	inc $EFEB.w		; EE EB EF
	ora ($3F.b)		; 12 3F
	sbc $A8.b		; E5 A8
	bvs -18.b		; 70 EE
	cpx $01DF.w		; EC DF 01
	and ($0F.b),Y		; 31 0F
	and [$B8.b]		; 27 B8
	asl $E0FF.w,X		; 1E FF E0
	sbc ($02.b,X)		; E1 02
	bpl -32.b		; 10 E0
	eor $B8.b,S		; 43 B8
	cmp $11EFFF.l,X		; DF FF EF 11
	ora ($1D.b),Y		; 11 1D
	pea $B84E.w		; F4 4E B8
	sbc $01F2FE.l		; EF FE F2 01
	and $FF44FD.l		; 2F FD 44 FF
	clv		; B8
	cpx #$EE.b		; E0 EE
	ora ($12.b),Y		; 11 12
	ora $DF72C0.l		; 0F C0 72 DF
	ldy $00.b,X		; B4 00
	jmp.w [$F1E0]		; DC E0 F1
	rol $66BF.w		; 2E BF 66
	and ($B8.b,X)		; 21 B8
	asl $21FF.w		; 0E FF 21
	cop $FC.b		; 02 FC
	sbc $5F.b,X		; F5 5F
	dec $1EB8.w,X		; DE B8 1E
	cmp ($20.b)		; D2 20
	ora ($EC.b),Y		; 11 EC
	asl $4C.b,X		; 16 4C
	cpx #$B4.b		; E0 B4
	ora $FFDE.w		; 0D DE FF
	cop $FB.b		; 02 FB
	inc $53.b,X		; F6 53
	ora ($B8.b,X)		; 01 B8
	sbc $0102.w,X		; FD 02 01
	bpl -19.b		; 10 ED
	eor $FE.b		; 45 FE
	sbc ($B8.b,X)		; E1 B8
	sbc $2F01F2.l		; EF F2 01 2F
	dec $FE54.w,X		; DE 54 FE
	sbc ($B8.b,X)		; E1 B8
	inc $1011.w		; EE 11 10
	rol $44EF.w		; 2E EF 44
	sbc $B800.w,X		; FD 00 B8
	sbc $2D1001.l		; EF 01 10 2D
	sbc ($43.b,X)		; E1 43
	inc $B8FF.w,X		; FE FF B8
	sbc $0E1101.l,X		; FF 01 11 0E
	sbc ($33.b),Y		; F1 33
	sbc $CFA8E1.l		; EF E1 A8 CF
	sbc ($22.b)		; F2 22
	inc $62D4.w,X		; FE D4 62
	dec $A4EF.w,X		; DE EF A4
	jmp.w [$F0CD]		; DC CD F0
	asl $56F1.w		; 0E F1 56
	rti		; 40

	sbc $12EE98.l,X		; FF 98 EE 12
	jsl $2005FE.l		; 22 FE 05 20
	cmp $88E0.w,X		; DD E0 88
	ora $DD4313.l		; 0F 13 43 DD
	tsb $3F.b		; 04 3F
	cpx $88CF.w		; EC CF 88
	and $F1.b,S		; 23 F1
	jsl $1F1F0F.l		; 22 0F 1F 1F
	asl $88BC.w,X		; 1E BC 88
	and $10.b		; 25 10
	ora ($1F.b),Y		; 11 1F
	bmi -19.b		; 30 ED
	and $1488CC.l		; 2F CC 88 14
	jsr $0020.w		; 20 20 00
	and $FC0FFE.l,X		; 3F FE 0F FC
	dey		; 88
	ora ($12.b)		; 12 12
	sbc ($11.b),Y		; F1 11
	brk $0F.b		; 00 0F
	asl $78DE.w		; 0E DE 78
	eor $10.b		; 45 10
	pea $2E20.w		; F4 20 2E
	ora $DBDF.w,X		; 1D DF DB
	sei		; 78
	mvp $30,$00		; 44 00 30
	ora ($F3.b)		; 12 F3
	sbc $930B.w,X		; FD 0B 93
	sei		; 78
	adc ($FD.b,X)		; 61 FD
	asl $1C.b,X		; 16 1C
	ora $2D.b,S		; 03 2D
	stp		; DB
	ora ($74.b)		; 12 74
	ora ($10.b)		; 12 10
	ora $1C.b,S		; 03 1C
	sbc ($1D.b)		; F2 1D
	dec $78C1.w		; CE C1 78
	jsr $30E0.w		; 20 E0 30
	cmp $D3D13D.l		; CF 3D D1 D3
	ora $78.b		; 05 78
	and $2FF2.w		; 2D F2 2F
	inc $D01E.w,X		; FE 1E D0
	ora $7462.w		; 0D 62 74
	and $335124.l		; 2F 24 51 33
	ora ($BE.b,X)		; 01 BE
	lda $7802.w,X		; BD 02 78
	sbc $FD30F2.l		; EF F2 30 FD
	and $F4D2.w,X		; 3D D2 F4
	bit $ED74.w,X		; 3C 74 ED
	and $EF0223.l,X		; 3F 23 02 EF
	ldy $4F22.w,X		; BC 22 4F
	stz $10.b,X		; 74 10
	brk $01.b		; 00 01
	asl $CF1D.w		; 0E 1D CF
	trb $11.b		; 14 11
	sei		; 78
	asl $1F10.w		; 0E 10 1F
	beq  30.b		; F0 1E
	ora $74DC43.l,X		; 1F 43 DC 74
	sbc $F11C01.l		; EF 01 1C F1
	ora $1F34D1.l,X		; 1F D1 34 1F
	stz $FD.b,X		; 74 FD
	and $F20E.w,X		; 3D 0E F2
	cpx #$02.b		; E0 02
	ora ($2F.b)		; 12 2F
	pla		; 68
	ora $1FFF2F.l,X		; 1F 2F FF 1F
	bpl  20.b		; 10 14
	beq  50.b		; F0 32
	dey		; 88
	sbc ($E0.b),Y		; F1 E0
	inc M7X.w		; EE 1F 21
	tsb $10.b		; 04 10
	eor $98.b,S		; 43 98
	cpx $E0C1.w		; EC C1 E0
	ora ($42.b),Y		; 11 42
	jsr $2B21.w		; 20 21 2B
	tay		; A8
	ldx $01F2.w,Y		; BE F2 01
	jsl $0F0112.l		; 22 12 01 0F
	stp		; DB
	tay		; A8
	bne  17.b		; D0 11
	ora ($33.b,S),Y		; 13 33
	bpl  31.b		; 10 1F
	jmp.w [$A8BE]		; DC BE A8
	ora ($1F.b),Y		; 11 1F
	stz $21.b		; 64 21
	and $F2ACEC.l		; 2F EC AC F2
	tay		; A8
	bpl  38.b		; 10 26
	eor $01.b,S		; 43 01
	jmp.w [$D1CA]		; DC CA D1
	and $3113B8.l,X		; 3F B8 13 31
	cop $DE.b		; 02 DE
	inc $2FD1.w		; EE D1 2F
	tsb $B8.b		; 04 B8
	and ($10.b),Y		; 31 10
	sbc $E0EE.w,X		; FD EE E0
	and $B841F5.l		; 2F F5 41 B8
	sbc ($EC.b)		; F2 EC
	inc $20E0.w,X		; FE E0 20
	cpx $61.b		; E4 61
	beq -72.b		; F0 B8
	sbc $D0E0.w		; ED E0 D0
	bmi -59.b		; 30 C5
	bvs -16.b		; 70 F0
	cpx $F1C8.w		; EC C8 F1
	cpx #$20.b		; E0 20
	sbc ($41.b,X)		; E1 41
	sbc $A8E00F.l,X		; FF 0F E0 A8
	bit $FD26.w		; 2C 26 FD
	rol $5E.b,X		; 36 5E
	bcs  -4.b		; B0 FC
.ACCU 16
	rep #$A8		; C2 A8
	ora $F3FF15.l,X		; 1F 15 FF F3
	eor $F2DDD0.l,X		; 5F D0 DD F2
	tay		; A8
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	cmp $FDD145.l,X		; DF 45 D1 FD
	lda ($1C.b)		; B2 1C
	tay		; A8
	rol $0B.b		; 26 0B
	pea $E16F.w		; F4 6F E1
	stp		; DB
	ora ($D1.b),Y		; 11 D1
	ldy $02.b,X		; B4 02
	sbc $42F3.w,X		; FD F3 42
	and ($EE.b)		; 32 EE
	sbc $3EB8CF.l,X		; FF CF B8 3E
	bne  52.b		; D0 34
	sbc $3FDF1F.l		; EF 1F DF 3F
	pei ($B4.b)		; D4 B4
	and $2214EE.l		; 2F EE 14 22
	and ($DF.b),Y		; 31 DF
	asl $B8D0.w		; 0E D0 B8
	asl $51E0.w,X		; 1E E0 51
	sbc $1ED22D.l,X		; FF 2D D2 1E
	sbc ($B4.b,S),Y		; F3 B4
	asl $34EE.w,X		; 1E EE 34
	and $3F.b,S		; 23 3F
	bne  12.b		; D0 0C
	cmp ($B8.b),Y		; D1 B8
	tsb $4F11.w		; 0C 11 4F
	sbc ($FC.b)		; F2 FC
	cop $FD.b		; 02 FD
	and ($B8.b)		; 32 B8
	inc $4F01.w,X		; FE 01 4F
	sbc ($ED.b)		; F2 ED
	ora $ED.b,S		; 03 ED
	and ($A8.b,S),Y		; 33 A8
	ldy $6F13.w,X		; BC 13 6F
	sbc ($DA.b)		; F2 DA
	jsl $A845EC.l		; 22 EC 45 A8
	ldx $5FF5.w,Y		; BE F5 5F
	sbc ($EB.b),Y		; F1 EB
	ora $BD.b		; 05 BD
	eor ($A8.b,S),Y		; 53 A8
	jmp.w [$5E14]		; DC 14 5E
	ora ($DC.b,X)		; 01 DC
	jsl $A453EB.l		; 22 EB 53 A4
	cpx $45DF.w		; EC DF 45
	eor $2F.b,S		; 43 2F
	beq  -4.b		; F0 FC
	cpx #$98.b		; E0 98
	inc $70F3.w		; EE F3 70
	ora $CB14DB.l		; 0F DB 14 CB
	stz $A4.b		; 64 A4
	sbc $43E0.w,X		; FD E0 43
	and ($1F.b,S),Y		; 33 1F
	sbc ($FC.b),Y		; F1 FC
	sbc ($98.b,X)		; E1 98
	dec $5220.w		; CE 20 52
	bne -20.b		; D0 EC
	ora ($1D.b),Y		; 11 1D
	and ($88.b,X)		; 21 88
	and $1F.b,S		; 23 1F
	beq  -7.b		; F0 F9
	sbc $10.b,S		; E3 10
	ora $00.b,S		; 03 00
	dey		; 88
	and ($E0.b),Y		; 31 E0
	beq -47.b		; F0 D1
	ora $F012FF.l		; 0F FF 12 F0
	sei		; 78
	eor ($F1.b),Y		; 51 F1
	ora ($DF.b),Y		; 11 DF
	ora $DD43BF.l		; 0F BF 43 DD
	stz $10.b,X		; 74 10
	bne  20.b		; D0 14
	jsl $00EE20.l		; 22 20 EE 00
	inc $3F88.w		; EE 88 3F
	brk $11.b		; 00 11
	jsr ($EF10.w,X)		; FC 10 EF
	ora $C3.b,X		; 15 C3
	sei		; 78
	and $D0.b,S		; 23 D0
	ora $FF00EB.l,X		; 1F EB 00 FF
	and ($22.b,X)		; 21 22
	pla		; 68
	cmp $ABC361.l,X		; DF 61 C3 AB
	ora $DC.b,X		; 15 DC
	rol $7406.w,X		; 3E 06 74
	jsr $4041.w		; 20 41 40
	tsb $0FDF.w		; 0C DF 0F
	ora $68E1.w,X		; 1D E1 68
	bpl   0.b		; 10 00
	sbc $AA.b,S		; E3 AA
	eor ($69.b),Y		; 51 69
	inc A		; 1A
	adc $74.b,S		; 63 74
	ora ($41.b,X)		; 01 41
	ora ($0E.b),Y		; 11 0E
	inc $E011.w,X		; FE 11 E0
.ACCU 8
	sep #$64		; E2 64
	sbc $EB1F61.l		; EF 61 1F EB
	cpx #$53.b		; E0 53
	inc $64F3.w		; EE F3 64
	bne   1.b		; D0 01
	trb $F4A4.w		; 1C A4 F4
	asl $0E.b,X		; 16 0E
	ora $68.b,S		; 03 68
	ldy #$F4.b		; A0 F4
	sbc $D143.w		; ED 43 D1
	and $91.b,S		; 23 91
	pea $CE64.w		; F4 64 CE
	ldx $F20E.w,Y		; BE 0E F2
	and $011E03.l,X		; 3F 03 1E 01
	stz $1D.b		; 64 1D
	sbc ($0D.b,X)		; E1 0D
	pea $E1FD.w		; F4 FD E1
	tsa		; 3B
	adc ($64.b,X)		; 61 64
	and $F1EF00.l		; 2F 00 EF F1
	cmp $11F0.w		; CD F0 11
	.db $42, $64		; 42 64
	brk $E0.b		; 00 E0
	rol $0CF0.w		; 2E F0 0C
	sbc ($11.b,X)		; E1 11
	trb $60.b		; 14 60
	ora $BE0B21.l		; 0F 21 0B BE
	stp		; DB
	inc $12FF.w,X		; FE FF 12
	mvn $FF,$FC		; 54 FC FF
	plx		; FA
	adc $1F14FD.l		; 6F FD 14 1F
	trb $54.b		; 14 54
	tsb $DDEF.w		; 0C EF DD
	jsl $F035EF.l		; 22 EF 35 F0
	bpl  80.b		; 10 50
	ldx $CADC.w		; AE DC CA
	tax		; AA
	lda $4953.w		; AD 53 49
	tax		; AA
	stz $0C.b		; 64 0C
	ora $00F012.l,X		; 1F 12 F0 00
	bpl  -1.b		; 10 FF
	brk $50.b		; 00 50
	tyx		; BB
	lda $4E47.w,X		; BD 47 4E
	mvp $FE,$BF		; 44 BF FE
	cpy $1E64.w		; CC 64 1E
	sbc ($4A.b)		; F2 4A
	ldy $65F2.w		; AC F2 65
	ora $5E.b,S		; 03 5E
	tya		; 98
	sbc $D035.w		; ED 35 D0
	and $C43B11.l		; 2F 11 3B C4
	phd		; 0B
	ldy $BA.b		; A4 BA
.ACCU 16
	rep #$23		; C2 23
	mvn $51,$23		; 54 23 51
	lda $B4EC.w,X		; BD EC B4
	cmp $32D1.w,X		; DD D1 32
	and ($20.b,S),Y		; 33 20
	and ($DD.b,X)		; 21 DD
	sbc $D1DEB4.l		; EF B4 DE D1
	and ($34.b,S),Y		; 33 34
	bpl   1.b		; 10 01
	jmp.w [$B4FF]		; DC FF B4
	inc $340F.w		; EE 0F 34
	and $1F.b,S		; 23 1F
	sbc $A4E00D.l,X		; FF 0D E0 A4
	brk $FE.b		; 00 FE
	cmp $72.b		; C5 72
	.db $42, $FC		; 42 FC
	cop $AB.b		; 02 AB
	ldy $11.b,X		; B4 11
	beq  -3.b		; F0 FD
	bit $11.b		; 24 11
	and $B41DE0.l		; 2F E0 1D B4
	sbc ($10.b,X)		; E1 10
	ora $1231C3.l		; 0F C3 31 12
	inc $B411.w		; EE 11 B4
	dec $F021.w,X		; DE 21 F0
	sbc $1233.w		; ED 33 12
	asl $B4E2.w,X		; 1E E2 B4
	tsb $10F2.w		; 0C F2 10
	ora $21D4.w		; 0D D4 21
	jsr $B4FE.w		; 20 FE B4
	jsr $21DF.w		; 20 DF 21
	sbc $1242CF.l,X		; FF CF 42 12
	asl $02B4.w		; 0E B4 02
	jsr ($FF12.w,X)		; FC 12 FF
	phd		; 0B
	tsb $22.b		; 04 22
	and $2EFFB4.l		; 2F B4 FF 2E
	cmp ($10.b),Y		; D1 10
	sbc $3141B2.l,X		; FF B2 41 31
	ldy $FE.b,X		; B4 FE
	ora ($CD.b)		; 12 CD
	and ($FF.b,X)		; 21 FF
	sbc $2243.w		; ED 43 22
	ldy $1E.b,X		; B4 1E
	sbc ($1C.b,X)		; E1 1C
.INDEX 8
	sep #$1F		; E2 1F
	sbc $22F5.w,X		; FD F5 22
	ldy $10.b,X		; B4 10
	inc $C02F.w,X		; FE 2F C0
	ora ($0E.b),Y		; 11 0E
	cmp ($52.b,X)		; C1 52
	ldy $11.b,X		; B4 11
	ora $F1FDF1.l		; 0F F1 FD F1
	and $B434DC.l		; 2F DC 34 B4
	and ($10.b,X)		; 21 10
	sbc $11EF1E.l,X		; FF 1E EF 11
	jsr ($B8E4.w,X)		; FC E4 B8
	asl $F0E1.w		; 0E E1 F0
	ora $FE12E1.l,X		; 1F E1 12 FE
	cmp ($B4.b,S),Y		; D3 B4
	mvn $01,$2F		; 54 2F 01
	sbc ($EE.b),Y		; F1 EE
	sbc ($10.b,X)		; E1 10
	jmp.w [$24B4]		; DC B4 24
	eor ($F0.b,X)		; 41 F0
	ora ($0E.b,X)		; 01 0E
	bne   1.b		; D0 01
	sbc $D3B4.w,X		; FD B4 D3
	eor $0F.b,S		; 43 0F
	bpl  16.b		; 10 10
	inc $0FF1.w		; EE F1 0F
	ldy $AE.b		; A4 AE
	ror $3F.b		; 66 3F
	sbc $DF1D04.l		; EF 04 1D DF
	ora ($94.b)		; 12 94
	sbc $52D3.w,X		; FD D3 52
	xba		; EB
	cmp $E30C42.l		; CF 42 0C E3
	dey		; 88
	jmp $14F5D9.l		; 5C D9 F5 14
	tsx		; BA
	dec $5F.b,X		; D6 5F
	sbc $2198.w		; ED 98 21
	eor $52F0EC.l		; 4F EC F0 52
	cmp $12E1.w,X		; DD E1 12
	dey		; 88
	and $DA61C3.l		; 2F C3 61 DA
	sbc ($20.b)		; F2 20
	bpl -54.b		; 10 CA
	dey		; 88
	bit $20.b		; 24 20
	ora ($F2.b,X)		; 01 F2
	cop $1B.b		; 02 1B
	cmp ($51.b,X)		; C1 51
	dey		; 88
	jmp.w [$42FF]		; DC FF 42
	jsr $55A2.w		; 20 A2 55
	phx		; DA
	bne -120.b		; D0 88
	.db $42, $1E		; 42 1E
	ldy $5B26.w,X		; BC 26 5B
	cpy #$73.b		; C0 73
	sbc $FF98.w		; ED 98 FF
	cop $20.b		; 02 20
	ldx $1F22.w,Y		; BE 22 1F
	sbc ($F2.b),Y		; F1 F2
	dey		; 88
	bvc -38.b		; 50 DA
	sbc ($50.b)		; F2 50
	stp		; DB
	sbc ($15.b,X)		; E1 15
	ora $F198.w,X		; 1D 98 F1
	eor ($FC.b,X)		; 41 FC
	ora $C02C12.l		; 0F 12 2C C0
	trb $98.b		; 14 98
	ora $1E41E0.l,X		; 1F E0 41 1E
	cmp $2D23.w,X		; DD 23 2D
	cmp $501588.l		; CF 88 15 50
	jsr ($7C16.w,X)		; FC 16 7C
	plb		; AB
	cop $42.b		; 02 42
	tya		; 98
	jsr ($33E1.w,X)		; FC E1 33
	tsb $3102.w		; 0C 02 31
	sbc $98FF.w,X		; FD FF 98
	ora $2D.b,S		; 03 2D
	sbc $4E21.w		; ED 21 4E
	asl $1005.w		; 0E 05 10
	tya		; 98
	dec OBJSEL.w		; CE 01 21
	phd		; 0B
	sbc $F01D33.l,X		; FF 33 1D F0
	tya		; 98
	.db $42, $0D		; 42 0D
	bne   2.b		; D0 02
	and $4112DB.l,X		; 3F DB 12 41
	tya		; 98
	inc $32F3.w		; EE F3 32
	cpx $42EF.w		; EC EF 42
	asl $98AE.w,X		; 1E AE 98
	and $3F.b		; 25 3F
	cmp $4E15.w,X		; DD 15 4E
	cmp $61E2.w		; CD E2 61
	tya		; 98
	sbc $47C2.w,Y		; F9 C2 47
	sbc $56B1.w		; ED B1 56
	cpx $A8AF.w		; EC AF A8
	tsb $20.b		; 04 20
	cpy $4013.w		; CC 13 40
	dec $40E4.w,X		; DE E4 40
	ldy $0F.b,X		; B4 0F
	dec $3102.w,X		; DE 02 31
	cmp $4102.w,X		; DD 02 41
	sbc $24B8.w		; ED B8 24
	asl $16CD.w		; 0E CD 16
	eor ($C9.b,X)		; 41 C9
	jsl $0EC45F.l		; 22 5F C4 0E
	cpx #$22.b		; E0 22
	ora $34C0.w		; 0D C0 34
	rol $C8DF.w		; 2E DF C8
	jsl $3F12DD.l		; 22 DD 12 3F
	sbc $31F4.w		; ED F4 31
	xba		; EB
	cpy $DF.b		; C4 DF
	jsl $32D10E.l		; 22 0E D1 32
	jsr ($44C2.w,X)		; FC C2 44
	iny		; C8
	jmp.w [$3F03]		; DC 03 3F
	dec $2D32.w,X		; DE 32 2D
	cmp $43C435.l		; CF 35 C4 43
	cmp $2FE2.w,X		; DD E2 2F
	sbc $BD1E23.l		; EF 23 1E BD
	cpy $35.b		; C4 35
	eor $0F02CE.l		; 4F CE 02 0F
	beq  50.b		; F0 32
	jsr ($B1C4.w,X)		; FC C4 B1
	mvn $DE,$2D		; 54 2D DE
	and ($0E.b,X)		; 21 0E
	cop $30.b		; 02 30
	cpy $DC.b		; C4 DC
	cmp ($54.b,S),Y		; D3 54
	sbc $11D0.w,X		; FD D0 11
	sbc $1FC413.l,X		; FF 13 C4 1F
	cpy $5114.w		; CC 14 51
	cmp $2FE1.w,X		; DD E1 2F
	brk $C4.b		; 00 C4
	jsl $25CE0D.l		; 22 0D CE 25
	rti		; 40

	cmp $00F2.w		; CD F2 00
	cpy $01.b		; C4 01
	and ($FD.b,X)		; 21 FD
	bcs  69.b		; B0 45
	rol $02CD.w,X		; 3E CD 02
	cpy $00.b		; C4 00
	ora ($2F.b),Y		; 11 2F
	cpx $45D3.w		; EC D3 45
	ora $C4DE.w		; 0D DE C4
	ora ($01.b),Y		; 11 01
	cop $1E.b		; 02 1E
	jmp.w [$4404]		; DC 04 44
	cpx $D0C4.w		; EC C4 D0
	ora ($01.b),Y		; 11 01
	ora ($FE.b)		; 12 FE
	cmp $4134.w		; CD 34 41
	iny		; C8
	cpy #$13.b		; C0 13
	brk $F1.b		; 00 F1
	asl $02FE.w,X		; 1E FE 02
	bvc -76.b		; 50 B4
	jmp ($E39B.w,X)		; 7C 9B E3
	ora ($22.b),Y		; 11 22
	and $C8B4B9.l,X		; 3F B9 B4 C8
	jsr $02DC.w		; 20 DC 02
	and $EF0110.l		; 2F 10 01 EF
	cpx #$C8.b		; E0 C8
	bit $0F.b,X		; 34 0F
	lda $111F12.l,X		; BF 12 1F 11
	beq  -2.b		; F0 FE
	cpy $CE.b		; C4 CE
	and $40.b		; 25 40
	cmp $01E1.w,X		; DD E1 01
	ora ($20.b),Y		; 11 20
	iny		; C8
	sbc $FB3103.l		; EF 03 31 FB
	sbc ($12.b),Y		; F1 12
	sbc ($00.b),Y		; F1 00
	cpy $1F.b		; C4 1F
	sbc $44D2.w		; ED D2 44
	ora $00EE.w,X		; 1D EE 00
	ora ($C4.b),Y		; 11 C4
	ora ($0F.b)		; 12 0F
	cmp $43E4.w,X		; DD E4 43
	sbc $00EF.w,X		; FD EF 00
	iny		; C8
	bpl  31.b		; 10 1F
	cpx #$E0.b		; E0 E0
	bit $F0.b,X		; 34 F0
	bcs -13.b		; B0 F3
	cpy $1F.b		; C4 1F
	ora ($21.b),Y		; 11 21
	sbc $3204DD.l,X		; FF DD 04 32
	inc $EFC4.w,X		; FE C4 EF
	ora $0F2011.l,X		; 1F 11 20 0F
	sbc $42F3.w		; ED F3 42
	ldy $EC.b,X		; B4 EC
	cmp $32021E.l,X		; DF 1E 02 32
	ora $B8D5DA.l		; 0F DA D5 B8
	ora $12DD.w,X		; 1D DD 12
	asl $2F02.w,X		; 1E 02 2F
	cpx #$FD.b		; E0 FD
	ldy $D3.b,X		; B4 D3
	eor $FE.b,S		; 43 FE
	beq  47.b		; F0 2F
	cpx #$12.b		; E0 12
	ora $F5FBA4.l		; 0F A4 FB F5
	bmi -17.b		; 30 EF
	ora ($1E.b,X)		; 01 1E
	sbc ($11.b),Y		; F1 11
	dey		; 88
	ldy $BE.b		; A4 BE
	eor $CC.b,X		; 55 CC
	sbc $5D.b		; E5 5D
	cmp $8443.w,X		; DD 43 84
	ora ($42.b),Y		; 11 42
	phx		; DA
	inc $EB.b		; E6 EB
	lda ($62.b,X)		; A1 62
	ora $0284.w		; 0D 84 02
	ora ($33.b,S),Y		; 13 33
	xce		; FB
	lda ($1D.b)		; B2 1D
	lda $0F9443.l,X		; BF 43 94 0F
	sbc ($03.b),Y		; F1 03
	jsr $CC1F.w		; 20 1F CC
	jsl $01A4FE.l		; 22 FE A4 01
	brk $F0.b		; 00 F0
	ora ($11.b),Y		; 11 11
	ora ($EC.b,X)		; 01 EC
	sbc ($98.b,S),Y		; F3 98
	stp		; DB
	pea $021C.w		; F4 1C 02
	bpl -13.b		; 10 F3
	ora $CFA4BD.l		; 0F BD A4 CF
	.db $42, $2F		; 42 2F
	sbc $1411D0.l,X		; FF D0 11 14
	eor $E0F1C8.l		; 4F C8 F1 E0
	eor $CF.b,S		; 43 CF
	cpx #$03.b		; E0 03
	rol $C000.w		; 2E 00 C0
	bmi -18.b		; 30 EE
	stp		; DB
	inc $63.b,X		; F6 63
	sbc $23AE.w,X		; FD AE 23
	cpy $0F.b		; C4 0F
	ora $FEF1.w		; 0D F1 FE
	eor $FC.b,X		; 55 FC
	inc $C0F4.w		; EE F4 C0
	eor $21.b,S		; 43 21
	asl $EDE0.w		; 0E E0 ED
	and $3F.b,X		; 35 3F
	cpx $D2C0.w		; EC C0 D2
	.db $42, $10		; 42 10
	inc $DFF0.w,X		; FE F0 DF
	mvp $C0,$1F		; 44 1F C0
	cpx $31F3.w		; EC F3 31
	brk $FE.b		; 00 FE
	ora $C043D1.l		; 0F D1 43 C0
	asl $14DD.w		; 0E DD 14
	jsr $EF0F.w		; 20 0F EF
	asl $B0F3.w		; 0E F3 B0
	adc ($EB.b)		; 72 EB
	sta $FD1F66.l,X		; 9F 66 1F FD
	sbc ($EC.b,X)		; E1 EC
	bcs  54.b		; B0 36
	eor $62D4CA.l		; 4F CA D4 62
	sbc $B01FEE.l,X		; FF EE 1F B0
	lda ($65.b),Y		; B1 65
	ora $36AB.w		; 0D AB 36
	rti		; 40

	inc $B0E0.w,X		; FE E0 B0
	tas		; 1B
	sbc $51.b,X		; F5 51
	cpx $64B1.w		; EC B1 64
	ora $F1B0EE.l		; 0F EE B0 F1
	cmp $2F45.w		; CD 45 2F
	stp		; DB
	sbc $51.b,X		; F5 51
	sbc $1DEFB0.l,X		; FF B0 EF 1D
	cmp ($53.b,S),Y		; D3 53
	sbc $45BE.w,X		; FD BE 45
	ora $F0FEB0.l,X		; 1F B0 FE F0
	jsr ($4025.w,X)		; FC 25 40
	xba		; EB
	cmp $63.b,S		; C3 63
	bcs  -1.b		; B0 FF
	inc $CF00.w		; EE 00 CF
	eor $1E.b,X		; 55 1E
	wai		; CB
	ora $B0.b,X		; 15 B0
	rti		; 40

	inc $1CEF.w,X		; FE EF 1C
	cpx $52.b		; E4 52
	sbc $B0B0.w,X		; FD B0 B0
	mvn $FE,$0F		; 54 0F FE
	beq -35.b		; F0 DD
	eor $2F.b		; 45 2F
	stp		; DB
	bcs -12.b		; B0 F4
	rti		; 40

	sbc $D30DEF.l,X		; FF EF 0D D3
	eor ($FD.b,S),Y		; 53 FD
	bcs -65.b		; B0 BF
	mvp $FF,$0F		; 44 0F FF
	beq -35.b		; F0 DD
	and $3F.b,X		; 35 3F
	bcs -37.b		; B0 DB
	pea $FF50.w		; F4 50 FF
	sbc $53D30D.l,X		; FF 0D D3 53
	bcs  -3.b		; B0 FD
	lda $FF0F45.l,X		; BF 45 0F FF
	beq -35.b		; F0 DD
	and $B0.b,X		; 35 B0
	and $50F4DB.l,X		; 3F DB F4 50
	sbc $D30DFF.l,X		; FF FF 0D D3
	ldy $2E.b,X		; B4 2E
	cmp $CE51E3.l		; CF E3 51 CE
	brk $10.b		; 00 10
	bne -80.b		; D0 B0
	eor $2F.b		; 45 2F
	stp		; DB
	pea $FF41.w		; F4 41 FF
	sbc $55B80C.l,X		; FF 0C B8 55
	wai		; CB
	ora ($06.b,X)		; 01 06
	tsb $00E1.w		; 0C E1 00
	jsr $CDB0.w		; 20 B0 CD
	rol $3F.b,X		; 36 3F
	stp		; DB
	pea $0F41.w		; F4 41 0F
	sbc $D30CB0.l		; EF B0 0C D3
	adc $0D.b,S		; 63 0D
	lda $0E1033.l,X		; BF 33 10 0E
	ldy $01.b,X		; B4 01
.INDEX 16
	rep #$53		; C2 53
	sbc $35DD.w		; ED DD 35
	asl $B80F.w,X		; 1E 0F B8
	sbc ($1A.b)		; F2 1A
	adc $DB.b		; 65 DB
	sbc ($E5.b),Y		; F1 E5
	jmp $B0E1.w		; 4C E1 B0
	and $16CAEF.l		; 2F EF CA 16
	eor ($0C.b)		; 52 0C
	lda $00C422.l		; AF 22 C4 00
	ora $31D30F.l		; 0F 0F D3 31
	sbc $B013EE.l,X		; FF EE 13 B0
	and ($33.b,X)		; 21 33
	ora $64A3E9.l		; 0F E9 A3 64
	and ($BB.b),Y		; 31 BB
	ldy $51.b,X		; B4 51
	sbc ($2E.b)		; F2 2E
	sbc $1F66DC.l		; EF DC 66 1F
	xce		; FB
	ldy $C4.b,X		; B4 C4
	and $FE0E13.l		; 2F 13 0E FE
	lda ($72.b),Y		; B1 72
	ora ($B4.b,X)		; 01 B4
	nop		; EA
	ora $F0.b,S		; 03 F0
	and ($EF.b)		; 32 EF
	tsb $31C6.w		; 0C C6 31
	ldy $10.b,X		; B4 10
	cmp $F23F.w		; CD 3F F2
	bmi -16.b		; 30 F0
	stp		; DB
	bit $B4.b,X		; 34 B4
	ora ($2D.b),Y		; 11 2D
	rep #$0E		; C2 0E
	trb $FF.b		; 14 FF
	ora $01B0A1.l,X		; 1F A1 B0 01
	bit $2E.b		; 24 2E
	brk $DE.b		; 00 DE
	ora ($02.b)		; 12 02
	trb $F4B4.w		; 1C B4 F4
	cop $2F.b		; 02 2F
	cmp ($1D.b,X)		; C1 1D
	ora ($0F.b,S),Y		; 13 0F
	bpl -80.b		; 10 B0
	jmp.w [$1300]		; DC 00 13
	and $11EE01.l,X		; 3F 01 EE 11
	cop $B0.b		; 02 B0
	and $F0C0.w		; 2D C0 F0
	and ($F0.b)		; 32 F0
	asl $00E1.w,X		; 1E E1 00
	ldy #$BA33.w		; A0 33 BA
	asl $4F05.w		; 0E 05 4F
	ora ($CD.b,S),Y		; 13 CD
	bpl -96.b		; 10 A0
	tsb $2B.b		; 04 2B
	ldy #$53D0.w		; A0 D0 53
	sbc ($3C.b)		; F2 3C
	cpx #$F0A0.w		; E0 A0 F0
	.db $42, $CB		; 42 CB
	ora $3004.w		; 0D 04 30
	jsl $0EA0DE.l		; 22 DE A0 0E
	ora $2C.b,S		; 03 2C
	cmp $0232D1.l		; CF D1 32 02
	and $FFA0.w		; 2D A0 FF
	cpx #$DC31.w		; E0 31 DC
	sbc $2013.w,X		; FD 13 20
	jsl $FCCF90.l		; 22 90 CF FC
	ora $2A.b,S		; 03 2A
	sta $53B2.w,X		; 9D B2 53
	trb $90.b		; 14 90
	and $D00E.w,X		; 3D 0E D0
	and ($B9.b,X)		; 21 B9
	stp		; DB
	and $31.b		; 25 31
	bcc  68.b		; 90 44
	bne -19.b		; D0 ED
	ora ($1B.b)		; 12 1B
	ldy $53B2.w		; AC B2 53
	bcc  36.b		; 90 24
	rol $D21D.w,X		; 3E 1D D2
	and ($BB.b,X)		; 21 BB
	wai		; CB
	bit $90.b		; 24 90
	and ($54.b)		; 32 54
	sbc ($DD.b,X)		; E1 DD
	ora ($2D.b)		; 12 2D
	lda $90B1.w,X		; BD B1 90
	eor $14.b,S		; 43 14
	lsr $C11D.w,X		; 5E 1D C1
	ora ($DB.b),Y		; 11 DB
	phx		; DA
	bcc   3.b		; 90 03
	and ($35.b,X)		; 21 35
	sbc ($EC.b),Y		; F1 EC
	ora ($1E.b,X)		; 01 1E
	ldx $D494.w,Y		; BE 94 D4
	bmi -15.b		; 30 F1
	and $E1F0.w		; 2D F0 E1
	and ($EB.b,X)		; 21 EB
	sty $43.b		; 84 43
	sbc $5D.b		; E5 5D
	sbc $2B.b,S		; E3 2B
	cmp ($00.b)		; D2 00
	jsl $43A984.l		; 22 84 A9 43
	jsl $0DF11F.l		; 22 1F F1 0D
	brk $21.b		; 00 21
	dey		; 88
	ora $2E42DF.l		; 0F DF 42 2E
	cmp $000002.l,X		; DF 02 00 00
	dey		; 88
	cop $F1.b		; 02 F1
	dec $4E22.w		; CE 22 4E
	sbc $8431D2.l		; EF D2 31 84
	asl $3202.w,X		; 1E 02 32
	sbc $43DE.w		; ED DE 43
	ora $0284CE.l,X		; 1F CE 84 02
	brk $F3.b		; 00 F3
	ora ($0D.b,S),Y		; 13 0D
	cmp $2E24.w,X		; DD 24 2E
	dey		; 88
	ora $202E3F.l		; 0F 3F 2E 20
	sbc ($FD.b)		; F2 FD
.ACCU 8
	sep #$22		; E2 22
	sty $30.b		; 84 30
	cpx $12E0.w		; EC E0 12
	ora ($12.b,X)		; 01 12
	and $F284DE.l		; 2F DE 84 F2
	and ($FD.b),Y		; 31 FD
	dec $0023.w		; CE 23 00
	ora ($02.b)		; 12 02
	sty $0C.b		; 84 0C
	cpx #$FE42.w		; E0 42 FE
	cmp $2F12.w		; CD 12 2F
	cop $74.b		; 02 74
	and $1C.b		; 25 1C
	ldx $3B45.w		; AE 45 3B
	tax		; AA
	ora $20.b,S		; 03 20
	dey		; 88
	sbc ($21.b),Y		; F1 21
	sbc $0F32C0.l,X		; FF C0 32 0F
	inc $8413.w		; EE 13 84
	bpl  14.b		; 10 0E
	and $31.b,S		; 23 31
	ora $34C0.w		; 0D C0 34
	inc $CF84.w,X		; FE 84 CF
	ora ($FD.b)		; 12 FD
	sbc ($34.b,S),Y		; F3 34
	ora $8024BA.l,X		; 1F BA 24 80
	adc $1D.b		; 65 1D
	bcs  49.b		; B0 31
	wai		; CB
	sbc ($66.b)		; F2 66
	bit $C194.w,X		; 3C 94 C1
	eor $FD.b		; 45 FD
	cmp ($22.b),Y		; D1 22
	sbc $1103.w		; ED 03 11
	sty $1E.b,X		; 94 1E
	lda $4D27.w		; AD 27 4D
	dec $0E23.w,X		; DE 23 0E
	bne -88.b		; D0 A8
	bpl   0.b		; 10 00
	cmp $3C43.w,X		; DD 43 3C
	bne  19.b		; D0 13
	inc $F0B4.w,X		; FE B4 F0
	ora ($01.b,X)		; 01 01
	ora $22D1.w,X		; 1D D1 22
	ora $00B800.l		; 0F 00 B8 00
	ora $2C0002.l		; 0F 02 00 2C
	lda $60.b		; A5 60
	lda ($C4.b)		; B2 C4
	ora $010FF0.l,X		; 1F F0 0F 01
	bpl  17.b		; 10 11
	jmp.w [$B013]		; DC 13 B0
	and ($53.b)		; 32 53
	asl $DE00.w		; 0E 00 DE
	ora ($25.b,S),Y		; 13 25
	tad		; 5B
	ldy $A6.b,X		; B4 A6
	adc ($F3.b),Y		; 71 F3
	cmp $EFF3.w		; CD F3 EF
	and $00.b,S		; 23 00
	cpy #$BB31.w		; C0 31 BB
	ora $22.b,S		; 03 22
	bmi -17.b		; 30 EF
	ora $1FC4F1.l		; 0F F1 C4 1F
	ora ($DA.b),Y		; 11 DA
	and $2F.b		; 25 2F
	ora $C421DF.l,X		; 1F DF 21 C4
	sbc ($10.b),Y		; F1 10
	sbc ($0C.b),Y		; F1 0C
	cmp $41.b		; C5 41
	sbc ($DE.b,X)		; E1 DE
	cpy #$10E0.w		; C0 E0 10
	ora ($10.b)		; 12 10
	ora ($CC.b),Y		; 11 CC
	trb $31.b		; 14 31
	cpy $1C.b		; C4 1C
	sbc ($30.b),Y		; F1 30
	sbc ($0F.b),Y		; F1 0F
	ora ($EC.b,X)		; 01 EC
	bit $C4.b,X		; 34 C4
	and $D10F.w		; 2D 0F D1
	jsl $000FF0.l		; 22 F0 0F 00
	trb $91B0.w		; 1C B0 91
	adc $11.b,X		; 75 11
	tyx		; BB
	sbc ($31.b,S),Y		; F3 31
	jsr $C4F0.w		; 20 F0 C4
	asl $31D3.w,X		; 1E D3 31
	cpx #$22EE.w		; E0 EE 22
	ora $FFB000.l,X		; 1F 00 B0 FF
	jsl $40369B.l		; 22 9B 36 40
	phd		; 0B
	cmp ($42.b),Y		; D1 42
	cpy #$0000.w		; C0 00 00
	ora ($EC.b,X)		; 01 EC
	ora $30.b,S		; 03 30
	asl $B4E0.w		; 0E E0 B4
	and ($D0.b),Y		; 31 D0
	sbc $75BB13.l,X		; FF 13 BB 75
	tas		; 1B
	sbc $F4B4.w,X		; FD B4 F4
	and ($D0.b),Y		; 31 D0
	sbc $65CA22.l,X		; FF 22 CA 65
	bit $EDB4.w		; 2C B4 ED
	pea $EF31.w		; F4 31 EF
	sbc $65CB22.l,X		; FF 22 CB 65
	ldy $1C.b,X		; B4 1C
	jsr ($31F4.w,X)		; FC F4 31
	sbc $BC22FF.l		; EF FF 22 BC
	bcs   5.b		; B0 05
	eor ($0B.b),Y		; 51 0B
	cpy #$0133.w		; C0 33 01
	sbc $CAB012.l,X		; FF 12 B0 CA
	ora $40.b,X		; 15 40
	xce		; FB
	cmp ($42.b),Y		; D1 42
	brk $FF.b		; 00 FF
	bcs  17.b		; B0 11
	lda $3036.w		; AD 36 30
	xba		; EB
	sbc ($41.b)		; F2 41
	brk $B4.b		; 00 B4
	sbc ($1C.b),Y		; F1 1C
	dec $41.b,X		; D6 41
	cmp $FE43C0.l		; CF C0 43 FE
	ldy $00.b,X		; B4 00
	ora ($FA.b,X)		; 01 FA
	eor $2D.b		; 45 2D
	inc $31D4.w		; EE D4 31
	bcs  15.b		; B0 0F
	brk $10.b		; 00 10
	ldy $3025.w,X		; BC 25 30
	xba		; EB
	sbc ($B0.b)		; F2 B0
	eor ($F0.b,X)		; 41 F0
	brk $0B.b		; 00 0B
.INDEX 16
	rep #$54		; C2 54
	asl $B4BE.w		; 0E BE B4
	.db $42, $ED		; 42 ED
	bpl  15.b		; 10 0F
	cmp $52.b,S		; C3 52
	cpx $B4EE.w		; EC EE B4
	eor ($1D.b,S),Y		; 53 1D
	sbc $1E43D0.l,X		; FF D0 43 1E
	jmp.w [$B8F6]		; DC F6 B8
	jsr ($02C0.w,X)		; FC C0 02
	.db $42, $EC		; 42 EC
	dec $0C65.w,X		; DE 65 0C
	ldy $FE.b,X		; B4 FE
	lda ($22.b),Y		; B1 22
	bpl -53.b		; 10 CB
	eor $3F.b,S		; 43 3F
	ora $EFB0.w		; 0D B0 EF
	ora ($11.b),Y		; 11 11
	cmp $3113.w		; CD 13 31
	asl $B4F1.w,X		; 1E F1 B4
	ora $2015EC.l,X		; 1F EC 15 20
	inc $21D2.w,X		; FE D2 21
	inc $D2B4.w,X		; FE B4 D2
	and ($F0.b)		; 32 F0
	cmp $C01E21.l,X		; DF 21 1E C0
	.db $42, $B0		; 42 B0
	and ($2E.b,S),Y		; 33 2E
	cpx #$DC21.w		; E0 21 DC
	ora ($23.b,X)		; 01 23
	and $21D0B0.l,X		; 3F B0 D0 21
	cpy $2201.w		; CC 01 22
	and $B430D0.l,X		; 3F D0 30 B4
	ldx #$F251.w		; A2 51 F2
	xce		; FB
	ora $1A.b		; 05 1A
	dec $30.b		; C6 30
	ldy $01.b,X		; B4 01
	jmp.w [$CA34]		; DC 34 CA
	lsr $0E.b		; 46 0E
	ora $4DB4D2.l		; 0F D2 B4 4D
	sta ($61.b,S),Y		; 93 61
	sbc ($ED.b,X)		; E1 ED
	and $DB.b,S		; 23 DB
	and $B4.b,X		; 35 B4
	ora $1BE30D.l,X		; 1F 0D E3 1B
	sbc $40.b		; E5 40
	beq -33.b		; F0 DF
	ldy $1F.b,X		; B4 1F
	cmp ($42.b)		; D2 42
	ora $F1F0ED.l,X		; 1F ED F0 F1
	and ($A8.b,S),Y		; 33 A8
	jmp.w [$F3D0]		; DC D0 F3
	eor $F0.b,S		; 43 F0
	ora $F3CE.w		; 0D CE F3
	tay		; A8
	mvp $0E,$0F		; 44 0F 0E
	cmp $53D5.w		; CD D5 53
	sbc $EEB83F.l		; EF 3F B8 EE
	cmp ($31.b,S),Y		; D3 31
	ora $D00E1F.l		; 0F 1F 0E D0
	eor ($B8.b),Y		; 51 B8
	ora $1E10.w,X		; 1D 10 1E
	cpy #$1D42.w		; C0 42 1D
	bpl  15.b		; 10 0F
	tay		; A8
	lda $1D75.w,X		; BD 75 1D
	sbc ($FE.b),Y		; F1 FE
	cmp $A81E46.l		; CF 46 1E A8
	cmp ($1D.b),Y		; D1 1D
	bcs  86.b		; B0 56
	tsb $0F0F.w		; 0C 0F 0F
	cpy #$14A4.w		; C0 A4 14
	.db $42, $10		; 42 10
	inc $15CB.w,X		; FE CB 15
	and ($10.b)		; 32 10
	tay		; A8
	inc $42E3.w,X		; FE E3 42
	sbc $12EE0F.l		; EF 0F EE 12
	and ($98.b),Y		; 31 98
	sbc $DDD0.w,X		; FD D0 DD
	ora [$4F.b],Y		; 17 4F
	asl $C0ED.w		; 0E ED C0
	sty $F4.b,X		; 94 F4
	eor ($31.b,S),Y		; 53 31
	phd		; 0B
	cmp $3103.w		; CD 03 31
	ora ($88.b),Y		; 11 88
	sbc #$24.b		; E9 24
	and $F1FD11.l,X		; 3F 11 FD F1
	sbc ($01.b,X)		; E1 01
	dey		; 88
	adc $0DFF.w		; 6D FF 0D
	sbc ($02.b)		; F2 02
	and $84F2FE.l,X		; 3F FE F2 84
	sbc $52DF.w,X		; FD DF 52
	ora $FFFD11.l		; 0F 11 FD FF
	ora ($78.b)		; 12 78
	inc A		; 1A
	sbc $DA.b,X		; F5 DA
	and ($6C.b)		; 32 6C
	sbc ($3D.b),Y		; F1 3D
	sta ($74.b)		; 92 74
	beq  33.b		; F0 21
	bit $FF.b,X		; 34 FF
	cmp $3FE1.w,X		; DD E1 3F
	ora $64.b		; 05 64
	phd		; 0B
	and $3411A9.l		; 2F A9 11 34
	adc $C9.b		; 65 C9
	dec $DC70.w		; CE 70 DC
	jmp.w [$33F5]		; DC F5 33
	and $A3FCBC.l		; 2F BC FC A3
	stz $4F.b,X		; 74 4F
	dec $EFFC.w,X		; DE FC EF
	rol $30.b,X		; 36 30
	cpx $80D1.w		; EC D1 80
	sbc $33C0.w,X		; FD C0 33
	asl $FEED.w		; 0E ED FE
	sbc $DF7822.l		; EF 22 78 DF
	and ($00.b),Y		; 31 00
	sbc ($1C.b,S),Y		; F3 1C
	inc $0313.w,X		; FE 13 03
	stz $2F.b		; 64 2F
	asl $B0DB.w		; 0E DB B0
	adc $12.b,S		; 63 12
	and $2F78BC.l		; 2F BC 78 2F
	sbc ($5A.b)		; F2 5A
	cop $EC.b		; 02 EC
	bmi  62.b		; 30 3E
	rol $0D68.w,X		; 3E 68 0D
	trb $50F2.w		; 1C F2 50
	sbc ($FF.b),Y		; F1 FF
	inc $74E1.w,X		; FE E1 74
	cop $3F.b		; 02 3F
	bpl  13.b		; 10 0D
	inc $21F3.w,X		; FE F3 21
	brk $64.b		; 00 64
	inc $E50C.w,X		; FE 0C E5
	sbc ($02.b,S),Y		; F3 02
	sbc ($0E.b),Y		; F1 0E
	sta ($50.b),Y		; 91 50
	dec $5323.w,X		; DE 23 53
	ora $129ADB.l,X		; 1F DB 9A 12
	bit $50.b,X		; 34 50
	bvc -53.b		; 50 CB
	ldy $3363.w,X		; BC 63 33
	and ($DD.b,S),Y		; 33 DD
	tsx		; BA
	bvc -42.b		; 50 D6
	and ($12.b)		; 32 12
	bmi -53.b		; 30 CB
	stz $0151.w,X		; 9E 51 01
	mvn $EC,$49		; 54 49 EC
	trb $11.b		; 14 11
	ora ($11.b),Y		; 11 11
	wai		; CB
	sbc ($64.b,S),Y		; F3 64
	sbc ($11.b),Y		; F1 11
	brk $DF.b		; 00 DF
	sbc $0C0115.l		; EF 15 01 0C
	stz $1E.b		; 64 1E
	beq   0.b		; F0 00
	and ($10.b,X)		; 21 10
	ora $64F4DE.l		; 0F DE F4 64
	sbc ($20.b)		; F2 20
	cmp ($EC.b,X)		; C1 EC
	jsr $1121.w		; 20 21 11
	ora $0F64.w		; 0D 64 0F
.INDEX 16
	rep #$11		; C2 11
	ora $E00F10.l,X		; 1F 10 0F E0
	ora ($50.b,X)		; 01 50
	sbc ($10.b,S),Y		; F3 10
	inc $EFDD.w		; EE DD EF
	sbc ($1E.b),Y		; F1 1E
	eor ($54.b)		; 52 54
	sbc $01F1.w,X		; FD F1 01
	ora $B52F.w,X		; 1D 2F B5
	sbc ($1F.b,X)		; E1 1F
	bvc  96.b		; 50 60
	brk $0A.b		; 00 0A
	inc $F2EF.w,X		; FE EF F2
	ora ($2C.b)		; 12 2C
	bvc -18.b		; 50 EE
	sbc $520E01.l		; EF 01 0E 52
	asl $FEFF.w,X		; 1E FF FE
	bvc   1.b		; 50 01
	ora ($1A.b,X)		; 01 1A
	inc $62FF.w,X		; FE FF 62
	and ($2A.b,S),Y		; 33 2A
	bvc -16.b		; 50 F0
	eor ($22.b)		; 52 22
	ora ($12.b),Y		; 11 12
	brk $0F.b		; 00 0F
	cop $50.b		; 02 50
	jsl $F21060.l		; 22 60 10 F2
	mvp $F0,$3A		; 44 3A F0
	brk $54.b		; 00 54
	ora ($20.b),Y		; 11 20
	inc $12D0.w,X		; FE D0 12
	jmp $500E10.l		; 5C 10 0E 50
	sbc $61DE.w		; ED DE 61
	ora ($DF.b),Y		; 11 DF
	cpx $E6BB.w		; EC BB E6
	bvc -97.b		; 50 9F
	sbc $D1ABEB.l,X		; FF EB AB D1
	brk $FD.b		; 00 FD
	wai		; CB
	pha		; 48
	and ($2D.b,X)		; 21 2D
	beq   0.b		; F0 00
	cmp $C2F132.l,X		; DF 32 F1 C2
	mvn $FF,$B5		; 54 B5 FF
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	sbc $FF5000.l,X		; FF 00 50 FF
	sbc ($02.b),Y		; F1 02
	ora $0170F0.l,X		; 1F F0 70 01
	bpl  37.b		; 10 25
	ora $B24012.l,X		; 1F 12 40 B2
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	wai		; CB
	dex		; CA
	wai		; CB
	ora ($00.b,S),Y		; 13 00
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -32.b		; 10 E0
	brk $0F.b		; 00 0F
	sbc $EDBD.w		; ED BD ED
	inc $68EE.w		; EE EE 68
	brk $00.b		; 00 00
	ora $A3.b,S		; 03 A3
	bpl  90.b		; 10 5A
	rol $6410.w		; 2E 10 64
	brk $EF.b		; 00 EF
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	inc $20F2.w,X		; FE F2 20
	ora $504264.l		; 0F 64 42 50
	lda ($02.b,X)		; A1 02
	rol $21D1.w		; 2E D1 21
	dec $E664.w,X		; DE 64 E6
	jmp $FFCD.w		; 4C CD FF
	and $000191.l		; 2F 91 01 00
	stz $E2.b		; 64 E2
	sbc $ED.b,X		; F5 ED
	brk $20.b		; 00 20
	ora $545FF1.l		; 0F F1 5F 54
	sbc ($12.b),Y		; F1 12
	jsr $2FCB.w		; 20 CB 2F
	asl $01EE.w		; 0E EE 01
	bvc -69.b		; 50 BB
	lda $2201.w,X		; BD 01 22
	and $33.b,S		; 23 33
	rol A		; 2A
	beq  80.b		; F0 50
	rts		; 60

	brk $12.b		; 00 12
	eor $22.b,S		; 43 22
	lsr $53.b		; 46 53
	bpl 100.b		; 10 64
	brk $00.b		; 00 00
	ora $15E112.l		; 0F 12 E1 15
	sbc ($21.b)		; F2 21
	stz $23.b		; 64 23
	and $01.b		; 25 01
	ora ($0E.b)		; 12 0E
	jsr $D210.w		; 20 10 D2
	stz $DB.b		; 64 DB
	asl $FBEC.w,X		; 1E EC FB
	ora $EFEE.w		; 0D EE EF
	brk $44.b		; 00 44
	tyx		; BB
	lda $220F.w		; AD 0F 22
	ora $610F44.l,X		; 1F 44 0F 61
	bvc -68.b		; 50 BC
	cmp $EFDE.w,X		; DD DE EF
	sbc $21.b		; E5 21
	ora $FF50FF.l,X		; 1F FF 50 FF
	sbc $110223.l		; EF 23 02 11
	ora ($3C.b)		; 12 3C
	sbc ($64.b,S),Y		; F3 64
	brk $13.b		; 00 13
	ora ($32.b)		; 12 32
	cmp ($B1.b,X)		; C1 B1
	rol $641E.w		; 2E 1E 64
	ora ($EF.b,X)		; 01 EF
	sbc ($23.b),Y		; F1 23
	sta $5302.w,Y		; 99 02 53
	ora $EF1078.l,X		; 1F 78 10 EF
	eor ($10.b,X)		; 41 10
	cmp ($10.b,X)		; C1 10
	tsb $D4.b		; 04 D4
	pla		; 68
	xba		; EB
	sbc ($22.b),Y		; F1 22
	jsr $0FA4.w		; 20 A4 0F
	cmp ($6E.b),Y		; D1 6E
	sei		; 78
	asl $D212.w		; 0E 12 D2
	ora $0311D0.l,X		; 1F D0 11 03
	trb $EF68.w		; 1C 68 EF
	cop $22.b		; 02 22
	and $121FCE.l,X		; 3F CE 1F 12
	ora $AF6174.l		; 0F 74 61 AF
	trb $1F01.w		; 1C 01 1F
	sbc ($1E.b),Y		; F1 1E
	sbc $223274.l		; EF 74 32 22
	cpx #$DE21.w		; E0 21 DE
	ora ($4D.b)		; 12 4D
	ora $BA2E60.l		; 0F 60 2E BA
	pei ($1C.b)		; D4 1C
	bcs  28.b		; B0 1C
	sbc ($FD.b),Y		; F1 FD
	stz $1C.b		; 64 1C
	sbc ($C6.b)		; F2 C6
	ora $23F0.w,X		; 1D F0 23
	cpy #$6403.w		; C0 03 64
	jsr $EB40.w		; 20 40 EB
	and $3B.b,S		; 23 3B
	cpy #$5B45.w		; C0 45 5B
	bvs -16.b		; 70 F0
	ora ($E0.b),Y		; 11 E0
	bpl -47.b		; 10 D1
	trb $12E1.w		; 1C E1 12
	stz $2D.b,X		; 74 2D
	sbc $1F22.w		; ED 22 1F
	ora $FD.b,X		; 15 FD
	cpx $00.b		; E4 00
	stz $1C.b		; 64 1C
	ora ($22.b),Y		; 11 22
	lda [$FB.b]		; A7 FB
	brk $EC.b		; 00 EC
	eor $74.b,X		; 55 74
	sbc $040B2F.l,X		; FF 2F 0B 04
	and $02C050.l		; 2F 50 C0 02
	stz $F1.b,X		; 74 F1
	and $31EE.w,X		; 3D EE 31
	ora ($0E.b,S),Y		; 13 0E
	asl $64C0.w,X		; 1E C0 64
	eor $0E.b,S		; 43 0E
	jsl $B50C1F.l		; 22 1F 0C B5
	.db $42, $1E		; 42 1E
	bvs -31.b		; 70 E1
	jsr $DCE3.w		; 20 E3 DC
	sbc ($1E.b),Y		; F1 1E
	dec $7422.w		; CE 22 74
	bpl -32.b		; 10 E0
	cmp $B242.w,X		; DD 42 B2
	and ($F1.b)		; 32 F1
	sbc $1ECE74.l		; EF 74 CE 1E
	ora ($4D.b),Y		; 11 4D
	pei ($4F.b)		; D4 4F
	cmp ($EE.b)		; D2 EE
	stz $E3.b,X		; 74 E3
	jmp $3E02.w		; 4C 02 3E
	ora ($F0.b,X)		; 01 F0
	ora $74E3.w		; 0D E3 74
	dec $2332.w		; CE 32 23
	nop		; EA
	ora $F10321.l,X		; 1F 21 03 F1
	bra  30.b		; 80 1E
	ora ($01.b),Y		; 11 01
	ora ($32.b),Y		; 11 32
	jmp.w [$2114]		; DC 14 21
	bvs 100.b		; 70 64
	sbc $E2FE22.l		; EF 22 FE E2
	and ($0E.b,X)		; 21 0E
	cmp $70.b,S		; C3 70
	eor $ED.b,S		; 43 ED
	and ($12.b,X)		; 21 12
	jsr $3012.w		; 20 12 30
	ora ($74.b,S),Y		; 13 74
	cmp ($0F.b,S),Y		; D3 0F
	jsl $EF2FFF.l		; 22 FF 2F EF
	cmp ($2E.b,X)		; C1 2E
	sty $22.b		; 84 22
	sbc $FE0003.l		; EF 03 00 FE
	and $ED.b,S		; 23 ED
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	eor $52CF00.l,X		; 5F 00 CF 52
	sbc ($0E.b,S),Y		; F3 0E
	stp		; DB
	bit $74.b,X		; 34 74
	brk $4D.b		; 00 4D
	lda ($52.b,X)		; A1 52
	bit $42AF.w,X		; 3C AF 42
	jsr ($F274.w,X)		; FC 74 F2
	rti		; 40

	dec $122F.w,X		; DE 2F 12
	brk $20.b		; 00 20
	lda $D270.w,X		; BD 70 D2
	mvp $30,$2F		; 44 2F 30
	lda $BD50E1.l,X		; BF E1 50 BD
	sty $2F.b		; 84 2F
	sbc ($2D.b,X)		; E1 2D
	and ($FF.b,X)		; 21 FF
	sbc ($11.b),Y		; F1 11
	and ($80.b,S),Y		; 33 80
	lsr $0FD2.w,X		; 5E D2 0F
	beq  35.b		; F0 23
	asl $E1EE.w		; 0E EE E1
	stz $2F.b,X		; 74 2F
	cmp $4535.w,X		; DD 35 45
	tyx		; BB
.ACCU 16
.INDEX 16
	rep #$FB		; C2 FB
	stx $80.b,Y		; 96 80
	ora $32.b,X		; 15 32
	bpl  17.b		; 10 11
	trb $54D5.w		; 1C D5 54
	jsr ($E180.w,X)		; FC 80 E1
	ora ($0E.b),Y		; 11 0E
	sbc ($ED.b,S),Y		; F3 ED
	sbc $943EF4.l		; EF F4 3E 94
	bpl  16.b		; 10 10
	sbc $BF1420.l		; EF 20 14 BF
	ora ($01.b,X)		; 01 01
	bra -15.b		; 80 F1
	lsr $FB.b		; 46 FB
	lda $205252.l		; AF 52 52 20
	sbc ($80.b,X)		; E1 80
	eor ($FF.b),Y		; 51 FF
	tsb $25.b		; 04 25
	inc A		; 1A
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	sbc ($84.b,S),Y		; F3 84
	rol $11FC.w		; 2E FC 11
	bmi  30.b		; 30 1E
	ora $845C11.l		; 0F 11 5C 84
	ldy $1C55.w		; AC 55 1C
	cmp ($5D.b)		; D2 5D
	sbc $843FB4.l,X		; FF B4 3F 84
	asl $1F0F.w		; 0E 0F 1F
	ora ($15.b),Y		; 11 15
	bit $5FD3.w		; 2C D3 5F
	tya		; 98
	ora $E1.b,S		; 03 E1
	beq   3.b		; F0 03
	cpx #$A0.b		; E0 A0
	bvc  -1.b		; 50 FF
	tya		; 98
	beq  79.b		; F0 4F
	inc $4F11.w		; EE 11 4F
	cmp ($F3.b)		; D2 F3
	rol $C098.w,X		; 3E 98 C0
	cop $3E.b		; 02 3E
	lda ($31.b),Y		; B1 31
	brk $DE.b		; 00 DE
	bpl -104.b		; 10 98
	sbc ($FD.b)		; F2 FD
	sbc ($35.b)		; F2 35
	tsa		; 3B
	ldy $22.b		; A4 22
	tsb $CF94.w		; 0C 94 CF
	asl $D0DC.w		; 0E DC D0
	and ($1F.b,S),Y		; 33 1F
	inc $980E.w		; EE 0E 98
	cpy #$F1.b		; C0 F1
	cpx #$17.b		; E0 17
	adc $23CE.w		; 6D CE 23
	tsa		; 3B
	tya		; 98
	lda $1F14.w		; AD 14 1F
	cpy $55.b		; C4 55
	ora $2FCF.w,X		; 1D CF 2F
	tay		; A8
	sbc $0000.w,X		; FD 00 00
	sbc $CF5C36.l,X		; FF 36 5C CF
	tsb $A8.b		; 04 A8
	trb $1390.w		; 1C 90 13
	rol $56C3.w		; 2E C3 56
	eor $B89C.w		; 4D 9C B8
	ora ($FF.b),Y		; 11 FF
	cpx #$20.b		; E0 20
	asl $5303.w		; 0E 03 53
	stp		; DB
	clv		; B8
	sbc ($32.b,X)		; E1 32
	lda $31E3.w,X		; BD E3 31
	asl $4102.w		; 0E 02 41
	clv		; B8
	sbc $2FDF.w,X		; FD DF 2F
	asl $2002.w		; 0E 02 20
	inc $B813.w,X		; FE 13 B8
	ror $02CB.w		; 6E CB 02
	lsr $03DE.w		; 4E DE 03
	and ($FE.b),Y		; 31 FE
	tay		; A8
	tsb $21.b		; 04 21
	cmp $00D2.w		; CD D2 00
	ora $B81F04.l		; 0F 04 1F B8
	inc $4F04.w,X		; FE 04 4F
	cmp $21F3.w		; CD F3 21
	cmp $A812.w		; CD 12 A8
	adc ($BD.b,S),Y		; 73 BD
	pea $DB30.w		; F4 30 DB
	cop $20.b		; 02 20
	inc $02B8.w		; EE B8 02
	brk $EF.b		; 00 EF
	pea $CA60.w		; F4 60 CA
	cop $40.b		; 02 40
	clv		; B8
	cmp $44F3.w		; CD F3 44
	cmp $3100.w,X		; DD 00 31
	cmp $B802.w,X		; DD 02 B8
	ora ($EE.b)		; 12 EE
	sbc ($20.b)		; F2 20
	sbc $6401.w		; ED 01 64
	jmp.w [$C0B8]		; DC B8 C0
	eor $DD.b,S		; 43 DD
	cmp ($35.b),Y		; D1 35
	asl $31DF.w,X		; 1E DF 31
	tay		; A8
	ora #$B0.b		; 09 B0
	adc $1C.b,X		; 75 1C
	ldy #$43.b		; A0 43
	jsr ($B8BF.w,X)		; FC BF B8
	asl $5D.b,X		; 16 5D
	wai		; CB
	ora ($4C.b,S),Y		; 13 4C
	dec $6103.w,X		; DE 03 61
	clv		; B8
	dec $10F2.w,X		; DE F2 10
	cmp $4103.w,X		; DD 03 41
	sbc $C8E2.w		; ED E2 C8
	bpl  -1.b		; 10 FF
	ora $C01F32.l		; 0F 32 1F C0
	cop $1D.b		; 02 1D
	clv		; B8
	inc $4025.w,X		; FE 25 40
	dec $10F1.w,X		; DE F1 10
	dec $C414.w		; CE 14 C4
	jsl $00E010.l		; 22 10 E0 00
	asl $14EE.w		; 0E EE 14
	.db $42, $B8		; 42 B8
	lda $DF1D13.l		; AF 13 1D DF
	and $4F.b,X		; 35 4F
	cmp $B8F1.w,X		; DD F1 B8
	ora $4123EE.l,X		; 1F EE 23 41
	cpx $21E0.w		; EC E0 21
	inc $E0B8.w,X		; FE B8 E0
	adc $1B.b,X		; 75 1B
	lda $DE0FF5.l		; AF F5 0F DE
	and $B8.b,X		; 35 B8
	eor $20E0EC.l		; 4F EC E0 20
	inc $5212.w,X		; FE 12 52
	xba		; EB
	clv		; B8
	bne  19.b		; D0 13
	ora $66FF.w		; 0D FF 66
	trb $F59E.w		; 1C 9E F5
	clv		; B8
	ora $5024EE.l,X		; 1F EE 24 50
	jmp.w [$21D0]		; DC D0 21
	asl $E0C4.w		; 0E C4 E0
	bit $30.b		; 24 30
	sbc $00E0.w		; ED E0 00
	inc $C404.w		; EE 04 C4
	eor ($0E.b,S),Y		; 53 0E
	cmp $E0FF00.l		; CF 00 FF E0
	bit $30.b,X		; 34 30
	clv		; B8
	cmp $D20013.l,X		; DF 13 00 D2
	bit $0E.b,X		; 34 0E
	lda $C812.w		; AD 12 C8
	and $4F030E.l		; 2F 0E 03 4F
	sbc $31D1.w		; ED D1 31
	asl $F0B8.w		; 0E B8 F0
	adc $1D.b,S		; 63 1D
	lda $3012.w		; AD 12 30
	sbc $C823.w,X		; FD 23 C8
	and ($DE.b,X)		; 21 DE
	sbc ($12.b,X)		; E1 12
	asl $250F.w		; 0E 0F 25
	inc $FCC4.w,X		; FE C4 FC
	cmp $F00E11.l,X		; DF 11 0E F0
	bit $2F.b,X		; 34 2F
	cmp $52B8.w,X		; DD B8 52
	asl $24E1.w		; 0E E1 24
	ora $3102BC.l,X		; 1F BC 02 31
	clv		; B8
	sbc $4600.w,X		; FD 00 46
	jsr ($F5AF.w,X)		; FC AF F5
	and $22B8DE.l,X		; 3F DE B8 22
	eor ($DC.b,X)		; 41 DC
	cmp ($23.b),Y		; D1 23
	sbc $B823E1.l,X		; FF E1 23 B8
	asl $E2DF.w,X		; 1E DF E2
	ora ($E0.b),Y		; 11 E0
	brk $13.b		; 00 13
	eor $1DB4.w		; 4D B4 1D
	cmp $0E00.w		; CD 00 0E
	cpx #$25.b		; E0 25
	and ($ED.b)		; 32 ED
	tya		; 98
	and $4E.b,X		; 35 4E
	sbc $AA6F45.l		; EF 45 6F AA
	cpy #$42.b		; C0 42
	tya		; 98
	ora $5200.w		; 0D 00 52
	ora $40B4.w		; 0D B4 40
	cmp $94B1.w,X		; DD B1 94
	ora ($40.b,S),Y		; 13 40
	stp		; DB
	sbc $74.b,X		; F5 74
	tas		; 1B
	ldx $9802.w,Y		; BE 02 98
	inc $42E3.w		; EE E3 42
	phd		; 0B
	dec $3115.w,X		; DE 15 31
	ldx $D0A4.w		; AE A4 D0
	ora ($FD.b),Y		; 11 FD
	cmp $45.b,S		; C3 45
	and $A401CD.l		; 2F CD 01 A4
	rol $13DE.w		; 2E DE 13
	adc $FC.b,S		; 63 FC
	dec $0E01.w,X		; DE 01 0E
	tya		; 98
	jsl $BFDA62.l		; 22 62 DA BF
	eor $20.b,S		; 43 20
	cmp ($01.b)		; D2 01
	ldy $20.b		; A4 20
	inc $D0DE.w,X		; FE DE D0
	eor $30.b		; 45 30
	asl $98F0.w		; 0E F0 98
	inc $36E2.w		; EE E2 36
	ora $0FF1CD.l,X		; 1F CD F1 0F
	ora $723588.l		; 0F 88 35 72
	sbc #$CE.b		; E9 CE
	ora ($FE.b)		; 12 FE
	ora ($64.b,X)		; 01 64
	tay		; A8
	ora $00F00E.l,X		; 1F 0E F0 00
	bpl  15.b		; 10 0F
	ora ($50.b,X)		; 01 50
	tay		; A8
	sbc $22DF.w		; ED DF 22
	bpl -32.b		; 10 E0
	ora ($2F.b)		; 12 2F
	sbc $F098.w		; ED 98 F0
	and ($0F.b,S),Y		; 33 0F
	brk $31.b		; 00 31
	ora $01CE.w,X		; 1D CE 01
	dey		; 88
	adc ($00.b,X)		; 61 00
	cpx $4F.b		; E4 4F
	xba		; EB
	lda $882115.l,X		; BF 15 21 88
	sbc $0B21F2.l,X		; FF F2 21 0B
	lda $DD4124.l,X		; BF 24 41 DD
	dey		; 88
	cpx #$44.b		; E0 44
	tas		; 1B
	lda $DF1E34.l,X		; BF 34 1E DF
	tsb $78.b		; 04 78
	rtl		; 6B

	sbc $7100.w,Y		; F9 00 71
	sbc $37B2.w		; ED B2 37
	ora ($74.b,X)		; 01 74
	tsb $DEAD.w		; 0C AD DE
	inc $46F3.w		; EE F3 46
	.db $42, $FD		; 42 FD
	sei		; 78
	sbc $230212.l,X		; FF 12 02 23
	tas		; 1B
	cpx $F2D4.w		; EC D4 F2
	sei		; 78
	eor $5B12D0.l,X		; 5F D0 12 5B
	wai		; CB
	sbc ($34.b,S),Y		; F3 34
	and $02E088.l		; 2F 88 E0 02
	sbc $2015CF.l,X		; FF CF 15 20
	cmp $8802.w,X		; DD 02 88
	rti		; 40

	dec $33D1.w,X		; DE D1 33
	ora $13FC.w,X		; 1D FC 13
	and $DD3074.l		; 2F 74 30 DD
	sbc ($41.b)		; F2 41
	sbc $44FF.w,X		; FD FF 44
	pld		; 2B
	stz $EC.b,X		; 74 EC
	brk $1F.b		; 00 1F
	inc $4304.w,X		; FE 04 43
	cmp $78EF.w,X		; DD EF 78
	jsr $E4D2.w		; 20 D2 E4
	brk $E0.b		; 00 E0
	sbc $1021.w		; ED 21 10
	stz $24.b		; 64 24
	eor $0C.b,S		; 43 0C
	ora $0001F1.l,X		; 1F F1 01 00
	sbc ($68.b)		; F2 68
	sbc $250EC1.l,X		; FF C1 0E 25
	phy		; 5A
	cmp ($EB.b)		; D2 EB
	jsr $1468.w		; 20 68 14
	inc $9F.b,X		; F6 9F
	ora ($00.b,X)		; 01 00
	ora $6094.w		; 0D 94 60
	stz $24.b		; 64 24
	ror $0F32.w,X		; 7E 32 0F
	tax		; AA
	dec $2105.w,X		; DE 05 21
	stz $20.b,X		; 74 20
	brk $FF.b		; 00 FF
	inc $101D.w,X		; FE 1D 10
	eor $0E.b,S		; 43 0E
	pla		; 68
	sbc ($3F.b)		; F2 3F
	brk $F1.b		; 00 F1
	and $114B.w,X		; 3D 4B 11
	dec $CF64.w		; CE 64 CF
	ora ($40.b),Y		; 11 40
	asl $1F02.w		; 0E 02 1F
	phd		; 0B
	ora $13F264.l		; 0F 64 F2 13
	ora ($F0.b,X)		; 01 F0
	sbc $1F5FFC.l,X		; FF FC 5F 1F
	stz $EF.b,X		; 74 EF
	ora ($41.b,X)		; 01 41
	sbc $0F00EF.l		; EF EF 00 0F
.ACCU 8
	sep #$68		; E2 68
	jmp $12CC.w		; 4C CC 12
	sbc $1B513F.l		; EF 3F 51 1B
	sbc $34EF68.l,X		; FF 68 EF 34
	cmp $133E.w,X		; DD 3E 13
	ora $F0F0.w,X		; 1D F0 F0
	pla		; 68
	dec $FF.b		; C6 FF
	jsr $13D1.w		; 20 D1 13
	ora #$C1.b		; 09 C1
	bvs 116.b		; 70 74
	and ($FE.b,X)		; 21 FE
	cop $23.b		; 02 23
	inc $43BE.w,X		; FE BE 43
	asl $C478.w		; 0E 78 C4
	eor $CA.b		; 45 CA
	sbc ($22.b,X)		; E1 22
	rol $E0F2.w		; 2E F2 E0
	sei		; 78
	brk $10.b		; 00 10
	cmp $F2E042.l		; CF 42 E0 F2
	brk $0D.b		; 00 0D
	sei		; 78
	sbc $020D32.l,X		; FF 32 0D 02
	ora $F2ED01.l,X		; 1F 01 ED F2
	stz $13.b,X		; 74 13
	and ($FE.b,X)		; 21 FE
	ora ($1D.b,S),Y		; 13 1D
	dec $1E23.w		; CE 23 1E
	stz $DE.b		; 64 DE
	eor $2B.b,S		; 43 2B
	cmp $F3FFF1.l,X		; DF F1 FF F3
	and $74.b,S		; 23 74
	bpl  -2.b		; 10 FE
	inc $1004.w,X		; FE 04 10
	sbc $30F4.w,X		; FD F4 30
	stz $CB.b,X		; 74 CB
	cpx #$64.b		; E0 64
	xba		; EB
.INDEX 8
	sep #$51		; E2 51
	sbc $74E0.w,X		; FD E0 74
	ora ($C1.b,X)		; 01 C1
	eor $0C.b		; 45 0C
	lda ($34.b)		; B2 34
	nop		; EA
	cmp $60.b,S		; C3 60
.ACCU 8
	sep #$2E		; E2 2E
	wai		; CB
	and ($EA.b,S),Y		; 33 EA
	tsx		; BA
	plb		; AB
	ldy $2274.w,X		; BC 74 22
	dec $2103.w,X		; DE 03 21
	sbc $44B1.w		; ED B1 44
	inc $D164.w,X		; FE 64 D1
	ora $1E.b,S		; 03 1E
	sta ($30.b)		; 92 30
	and ($EE.b),Y		; 31 EE
	lda ($78.b)		; B2 78
	ora $D3012D.l		; 0F 2D 01 D3
	ora ($0C.b),Y		; 11 0C
	sbc $5F7444.l,X		; FF 44 74 5F
	cpx $53D0.w		; EC D0 53
	trb $33D0.w		; 1C D0 33
	ora $F478.w		; 0D 78 F4
	and $01DF1F.l		; 2F 1F DF 01
	and ($2C.b),Y		; 31 2C
	cmp ($74.b),Y		; D1 74
	cpy #$15.b		; C0 15
	eor $F3BD.w,X		; 5D BD F3
	eor ($CE.b,X)		; 41 CE
	bit $70.b		; 24 70
	and ($0E.b),Y		; 31 0E
	sbc ($1F.b),Y		; F1 1F
	lda $3E13.w,X		; BD 13 3E
	lda $4274.w,X		; BD 74 42
	xba		; EB
	cmp ($46.b),Y		; D1 46
	jsr ($41B3.w,X)		; FC B3 41
	ora $0EF084.l		; 0F 84 F0 0E
	sbc ($32.b)		; F2 32
	jsr ($44D0.w,X)		; FC D0 44
	phd		; 0B
	dey		; 88
	ora ($51.b,S),Y		; 13 51
	lda $20E5.w,X		; BD E5 20
	inc $1002.w		; EE 02 10
	stz $FC.b,X		; 74 FC
	jsl $16DA10.l		; 22 10 DA 16
	adc ($AB.b,X)		; 61 AB
	sbc $78.b,S		; E3 78
	pld		; 2B
	inc $FD33.w,X		; FE 33 FD
	cmp ($53.b),Y		; D1 53
	cmp $74F2.w		; CD F2 74
	mvp $DF,$FB		; 44 FB DF
	eor $3E.b,S		; 43 3E
	cmp $74EB23.l,X		; DF 23 EB 74
	sbc ($52.b,X)		; E1 52
	ora $52E1.w		; 0D E1 52
	stp		; DB
	cmp $3D6443.l,X		; DF 43 64 3D
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	brk $EB.b		; 00 EB
	ora $5F.b,S		; 03 5F
	ora $E0D064.l,X		; 1F 64 D0 E0
	adc $DC.b,S		; 63 DC
	dec $0043.w,X		; DE 43 00
	cpx #$64.b		; E0 64
	jsr $BF0F.w		; 20 0F BF
	and ($5F.b,S),Y		; 33 5F
	tyx		; BB
	beq  64.b		; F0 40
	stz $21.b		; 64 21
	inc $DD14.w,X		; FE 14 DD
	ora $33F3.w,X		; 1D F3 33
	sbc $CA50.w		; ED 50 CA
	cmp $BADD.w		; CD DD BA
	cmp $20.b,S		; C3 20
	tsx		; BA
	and $64.b,S		; 23 64
	inc $10B2.w,X		; FE B2 10
	jsl $01DC2E.l		; 22 2E DC 01
	adc $EEFF60.l		; 6F 60 FF EE
	inc $31CE.w,X		; FE CE 31
	ora $22DD.w,X		; 1D DD 22
	bvc 102.b		; 50 66
	phk		; 4B
	jmp.w [$64AC]		; DC AC 64
	eor $541CE6.l		; 4F E6 1C 54
	xba		; EB
	sbc $15.b		; E5 15
	lsr $D0B0.w		; 4E B0 D0
	jsl $20681E.l		; 22 1E 68 20
	ora $3210E0.l		; 0F E0 10 32
	cmp ($CD.b,X)		; C1 CD
	eor ($60.b,X)		; 41 60
	sbc $11F20F.l		; EF 0F F2 11
	bpl -53.b		; 10 CB
	cmp $FD5413.l		; CF 13 54 FD
	asl $0B1F.w		; 0E 1F 0B
	and $1D43F1.l		; 2F F1 43 1D
	pha		; 48
	asl $0D43.w,X		; 1E 43 0D
	cop $2D.b		; 02 2D
	sbc ($0C.b,X)		; E1 0C
	sbc $50.b,S		; E3 50
	lda $CCEE.w,X		; BD EE CC
	bne  17.b		; D0 11
	asl A		; 0A
	eor ($22.b)		; 52 22
	mvn $3E,$FA		; 54 FA 3E
	beq  33.b		; F0 21
	asl $FFEE.w		; 0E EE FF
	ora ($50.b,X)		; 01 50
	cmp $3352FE.l		; CF FE 52 33
	brk $31.b		; 00 31
	and ($1A.b,S),Y		; 33 1A
	bvc -15.b		; 50 F1
	ora ($22.b)		; 12 22
	and ($AF.b),Y		; 31 AF
	inc $DFCD.w,X		; FE CD DF
	bvc  45.b		; 50 2D
	cpx $EDDF.w		; EC DF ED
	wai		; CB
	cmp $3412F3.l,X		; DF F3 12 34
	.db $62, $EC, $25		; 62 EC 25
	eor ($0E.b,X)		; 41 0E
	inc $21CF.w		; EE CF 21
	mvn $1F,$0E		; 54 0E 1F
	tsb $003F.w		; 0C 3F 00
	and ($00.b,X)		; 21 00
	ora $120550.l,X		; 1F 50 05 12
	and ($22.b)		; 32 22
	and ($11.b,X)		; 21 11
	ora ($22.b),Y		; 11 22
	bvc  51.b		; 50 33
	tas		; 1B
	sbc $22E5.w		; ED E5 22
	bpl  -1.b		; 10 FF
	ora ($50.b),Y		; 11 50
	jsr $FEAF.w		; 20 AF FE
	cpx #$12.b		; E0 12
	bit $44.b,X		; 34 44
	and $2054.w		; 2D 54 20
	lsr $0F10.w		; 4E 10 0F
	brk $00.b		; 00 00
	xce		; FB
	bvc  80.b		; 50 50
	and ($0E.b),Y		; 31 0E
	cpx #$12.b		; E0 12
	lda $FE0C51.l		; AF 51 0C FE
	bvc -32.b		; 50 E0
	ora ($1D.b,X)		; 01 1D
	asl $10.b		; 06 10
	bpl  -1.b		; 10 FF
	sbc $F00E50.l		; EF 50 0E F0
	ora ($0E.b),Y		; 11 0E
	sbc $000006.l		; EF 06 00 00
	mvn $0F,$00		; 54 00 0F
	brk $14.b		; 00 14
	tyx		; BB
	adc $50F00F.l		; 6F 0F F0 50
	sbc ($01.b),Y		; F1 01
	ora ($1A.b),Y		; 11 1A
	sbc $60F0EE.l,X		; FF EE F0 60
	bvc   0.b		; 50 00
	ora ($DF.b),Y		; 11 DF
	inc $FFFF.w,X		; FE FF FF
	asl $12.b		; 06 12
	bvc  29.b		; 50 1D
	brk $40.b		; 00 40
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($40.b)		; 12 40
	mvp $DE,$AE		; 44 AE DE
	sbc ($01.b)		; F2 01
	ora ($34.b)		; 12 34
	mvp $FE,$18		; 44 18 FE
	ora ($34.b)		; 12 34
	sbc $DC2313.l		; EF 13 23 DC
	ora $14.b,S		; 03 14
	ora ($45.b,S),Y		; 13 45
	and ($F4.b,X)		; 21 F4
	mvn $00,$21		; 54 21 00
	sbc ($08.b,S),Y		; F3 08
	adc $F06790.l		; 6F 90 67 F0
	eor [$12.b]		; 47 12
	jmp ($28E6.w)		; 6C E6 28
	jsl $2001FF.l		; 22 FF 01 20
	rti		; 40

	beq  36.b		; F0 24
	ora ($18.b),Y		; 11 18
	bne -43.b		; D0 D5
	.db $42, $23		; 42 23
	mvp $52,$30		; 44 30 52
	and $18.b,S		; 23 18
	jsl $352431.l		; 22 31 24 35
	bpl   4.b		; 10 04
	eor $22.b,X		; 55 22
	bit $21.b		; 24 21
	ora ($12.b,X)		; 01 12
	ora ($01.b)		; 12 01
	brk $E1.b		; 00 E1
	eor $18.b,S		; 43 18
	and $1177C0.l		; 2F C0 77 11
	rti		; 40

	ora $30.b,S		; 03 30
	ora $F1EE24.l		; 0F 24 EE F1
	eor $0D.b,S		; 43 0D
	cmp ($65.b,S),Y		; D3 65
	and $0054BC.l		; 2F BC 54 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	and $50B105.l		; 2F 05 B1 50
	ora ($23.b),Y		; 11 23
	bit $42.b,X		; 34 42
	bpl   1.b		; 10 01
	inc A		; 1A
	sbc $510E48.l,X		; FF 48 0E 51
	inc $02F0.w		; EE F0 02
	ora $5012F1.l,X		; 1F F1 12 50
	bit $44.b,X		; 34 44
	eor $43.b		; 45 43
	jsr $01FF.w		; 20 FF 01
	ldy #$50.b		; A0 50
	.db $62, $46, $43		; 62 46 43
	ora $445523.l		; 0F 23 55 44
	and ($50.b,S),Y		; 33 50
	and ($21.b,S),Y		; 33 21
	bit $55.b		; 24 55
	dec A		; 3A
	inc $35.b,X		; F6 35
	bit $0E54.w,X		; 3C 54 0E
	trb $01.b		; 14 01
	sbc ($22.b),Y		; F1 22
	inc $C104.w,X		; FE 04 C1
	stz $01.b		; 64 01
	ora ($11.b,X)		; 01 11
	bpl -49.b		; 10 CF
	sbc ($10.b)		; F2 10
	cmp ($74.b,X)		; C1 74
	ora ($01.b,X)		; 01 01
	brk $FC.b		; 00 FC
	bmi  16.b		; 30 10
	ora $116410.l		; 0F 10 64 11
	inc $210F.w,X		; FE 0F 21
	jsr $31FB.w		; 20 FB 31
	eor $BD64.w,X		; 5D 64 BD
	ora ($37.b),Y		; 11 37
	sbc $F20F.w		; ED 0F F2
	adc $6490.w		; 6D 90 64
	brk $24.b		; 00 24
	cmp $53F1FD.l,X		; DF FD F1 53
	jsr ($68C2.w,X)		; FC C2 68
	jsr $03DD.w		; 20 DD 03
	ora $E549.w,X		; 1D 49 E5
	eor $CC.b,S		; 43 CC
	stz $F0.b,X		; 74 F0
	jsl $F4DE0F.l		; 22 0F DE F4
	and ($ED.b),Y		; 31 ED
	beq 116.b		; F0 74
	and ($1E.b)		; 32 1E
	beq  16.b		; F0 10
	inc $0220.w		; EE 20 02
	bit $78.b		; 24 78
	bcs -43.b		; B0 D5
	and $2235DC.l		; 2F DC 35 22
	cmp $88D3.w,Y		; D9 D3 88
	and $ED.b,S		; 23 ED
	sbc ($63.b,X)		; E1 63
	cpy $5EE2.w		; CC E2 5E
	inc $EE84.w,X		; FE 84 EE
	and ($1F.b,S),Y		; 33 1F
	dec $1F23.w,X		; DE 23 1F
	inc $880F.w		; EE 0F 88
	rti		; 40

	sbc $40F2.w		; ED F2 40
	cpx WRIO.w		; EC 01 42
	tsb $B388.w		; 0C 88 B3
	and ($D0.b)		; 32 D0
	sep #$00		; E2 00
	eor $33EC.w		; 4D EC 33
	stz $46.b,X		; 74 46
	ora $400DC0.l		; 0F C0 0D 40
	lsr $FC.b		; 46 FC
	beq 120.b		; F0 78
	asl $022E.w		; 0E 2E 02
	eor $04D3DF.l		; 4F DF D3 04
	ora $84.b,X		; 15 84
	jmp.w [$23BE]		; DC BE 23
	and ($F1.b,X)		; 21 F1
	jsr $0E1F.w		; 20 1F 0E
	dey		; 88
	and $103F.w		; 2D 3F 10
	jsl $44B3FA.l		; 22 FA B3 44
	rti		; 40

	bcc  80.b		; 90 50
	wai		; CB
	ora $42.b		; 05 42
	ora $EC10F1.l		; 0F F1 10 EC
	sty $14.b,X		; 94 14
	eor ($BC.b,X)		; 41 BC
	beq  53.b		; F0 35
	asl $12ED.w		; 0E ED 12
	sty $0F.b,X		; 94 0F
	brk $32.b		; 00 32
	sbc $43EF.w		; ED EF 43
	jsr $94CE.w		; 20 CE 94
	ora ($1E.b,S),Y		; 13 1E
	cmp $3035.w		; CD 35 30
	dex		; CA
	ora ($21.b)		; 12 21
	dey		; 88
	ldx $DC.b,Y		; B6 DC
	and $ED.b,X		; 35 ED
	ora ($F0.b)		; 12 F0
	bcc  68.b		; 90 44
	tya		; 98
	lsr $00ED.w		; 4E ED 00
	and ($E0.b),Y		; 31 E0
	beq   4.b		; F0 04
	asl $BD94.w,X		; 1E 94 BD
	ora $50.b,S		; 03 50
	tyx		; BB
	cpx #$64.b		; E0 64
	ora $E680DC.l		; 0F DC 80 E6
	eor $CB.b,X		; 55 CB
	and $74.b,X		; 35 74
	nop		; EA
	sbc $00A036.l		; EF 36 A0 00
	inc $11F0.w,X		; FE F0 11
	inc $3004.w,X		; FE 04 30
	cpx $13A4.w		; EC A4 13
	and ($0C.b,S),Y		; 33 0C
	dec $2032.w		; CE 32 20
	dec $A824.w		; CE 24 A8
	cmp $21E4.w,X		; DD E4 21
	jsr ($311E.w,X)		; FC 1E 31
	jmp $84FD.w		; 4C FD 84
	cmp ($0C.b),Y		; D1 0C
	bpl   6.b		; 10 06
	jmp $FB02.w		; 4C 02 FB
	lda $5394.w		; AD 94 53
	asl $F41D.w,X		; 1E 1D F4
	ora ($40.b,X)		; 01 40
	bne -32.b		; D0 E0
	sty $14.b,X		; 94 14
	sbc $DC36BD.l		; EF BD 36 DC
	dec $1B47.w		; CE 47 1B
	ldy $FF.b		; A4 FF
	sbc ($41.b,X)		; E1 41
	bpl -33.b		; 10 DF
	and $31.b,S		; 23 31
	ldy $04A4.w,X		; BC A4 04
	rti		; 40

	jsr ($20F1.w,X)		; FC F1 20
	sbc ($01.b),Y		; F1 01
	cmp $E694.w,X		; DD 94 E6
	ora $FC021C.l		; 0F 1C 02 FC
	sbc ($26.b,X)		; E1 26
	nop		; EA
	tay		; A8
	brk $45.b		; 00 45
	xba		; EB
	inc $1A60.w,X		; FE 60 1A
	and ($32.b,X)		; 21 32
	sty $0A.b,X		; 94 0A
	ldx #$45.b		; A2 45
	bpl -50.b		; 10 CE
	cmp ($F2.b),Y		; D1 F2
	ora $FFA8.w		; 0D A8 FF
	jsl $200E0B.l		; 22 0B 0E 20
	.db $62, $EE, $E0		; 62 EE E0
	tay		; A8
	ora $CD52F2.l		; 0F F2 52 CD
	cmp ($53.b),Y		; D1 53
	inc $981E.w,X		; FE 1E 98
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	bmi  15.b		; 30 0F
	ora ($1A.b,X)		; 01 1A
	ldx $B441.w,Y		; BE 41 B4
	asl $54E3.w		; 0E E3 54
	bmi -34.b		; 30 DE
	ora ($21.b,X)		; 01 21
	brk $98.b		; 00 98
	ror A		; 6A
	ora ($F1.b,S),Y		; 13 F1
	rol $DFF1.w,X		; 3E F1 DF
	ora ($14.b,X)		; 01 14
	clv		; B8
	ora $2FF0FF.l,X		; 1F FF F0 2F
	sbc $DC4022.l,X		; FF 22 40 DC
	tay		; A8
	ldx #$63.b		; A2 63
	and $44B1.w		; 2D B1 44
	ora $98F2D0.l		; 0F D0 F2 98
	ora $5212DE.l,X		; 1F DE 12 52
	ora $D1BF.w		; 0D BF D1
	cpx $0FB8.w		; EC B8 0F
	bit $4E.b,X		; 34 4E
	cmp $31C2.w		; CD C2 31
	beq -32.b		; F0 E0
	tay		; A8
	adc $1E.b		; 65 1E
	cmp $FE13.w		; CD 13 FE
	brk $03.b		; 00 03
	and $F10FB8.l		; 2F B8 0F F1
	beq -32.b		; F0 E0
	sbc ($25.b),Y		; F1 25
	jmp $E1B8CC.l		; 5C CC B8 E1
	rti		; 40

	inc $3301.w,X		; FE 01 33
	cpx #$E0.b		; E0 E0
	ora ($A8.b,X)		; 01 A8
	sbc $24F1.w		; ED F1 24
	ora $1E1FEE.l,X		; 1F EE 1F 1E
	cmp $00C8.w,X		; DD C8 00
	and $FE.b		; 25 FE
	cmp $E01FF3.l,X		; DF F3 1F E0
	cop $B8.b		; 02 B8
	and ($ED.b)		; 32 ED
	ora $E2FD21.l		; 0F 21 FD E2
	and $0F.b,S		; 23 0F
	clv		; B8
	cmp ($01.b),Y		; D1 01
	inc $10E0.w,X		; FE E0 10
	ror $BD.b,X		; 76 BD
	cmp $24B8.w,X		; DD B8 24
	sbc $25FF.w		; ED FF 25
	and $0001EE.l,X		; 3F EE 01 00
	tay		; A8
	bcc  19.b		; 90 13
	mvp $0F,$DD		; 44 DD 0F
	bpl -34.b		; 10 DE
	cpx #$C8.b		; E0 C8
	brk $23.b		; 00 23
	ora $1F01EE.l		; 0F EE 01 1F
	sbc $23B803.l,X		; FF 03 B8 23
	dec $01F1.w,X		; DE F1 01
	cmp $1213.w,X		; DD 13 12
	asl $00B8.w		; 0E B8 00
	ora $0FF10E.l		; 0F 0E F1 0F
	asl $5C.b,X		; 16 5C
	cpx $E1B8.w		; EC B8 E1
	eor $F3C0.w,X		; 5D C0 F3
	eor ($EF.b)		; 52 EF
	beq   2.b		; F0 02
	clv		; B8
	cmp $32F2.w,X		; DD F2 32
	ora $FF00E1.l		; 0F E1 00 FF
	ora $F100C8.l		; 0F C8 00 F1
	bvc -17.b		; 50 EF
	sbc $F0D022.l		; EF 22 D0 F0
	ldy $D4.b,X		; B4 D4
	eor ($11.b)		; 52 11
	ora ($3F.b,S),Y		; 13 3F
	wai		; CB
	sbc ($22.b),Y		; F1 22
	clv		; B8
	cmp $EFF030.l,X		; DF 30 F0 EF
	bpl -16.b		; 10 F0
	adc $CF.b,S		; 63 CF
	clv		; B8
	sbc $DE23.w,X		; FD 23 DE
	beq  20.b		; F0 14
	and $00F2.w		; 2D F2 00
	ldy $61.b		; A4 61
	tax		; AA
	ora ($21.b,X)		; 01 21
	stp		; DB
	cop $1E.b		; 02 1E
	cpx $FFB4.w		; EC B4 FF
	inc $2145.w		; EE 45 21
	asl $0D03.w,X		; 1E 03 0D
	sbc $D3A4.w		; ED A4 D3
	and $4134F2.l,X		; 3F F2 34 41
	sbc ($20.b,X)		; E1 20
	sbc $F1A8.w,X		; FD A8 F1
	bmi  -1.b		; 30 FF
	beq -14.b		; F0 F2
	cpx $6C.b		; E4 6C
	cpy #$A4.b		; C0 A4
	brk $43.b		; 00 43
	cpx $F2CD.w		; EC CD F2
	sbc $34F3.w,X		; FD F3 34
	tya		; 98
	trb $EDD5.w		; 1C D5 ED
	inc $40D2.w,X		; FE D2 40
	beq  -5.b		; F0 FB
	tay		; A8
	ora ($05.b),Y		; 11 05
	pld		; 2B
	cmp ($02.b),Y		; D1 02
	jmp $983FCE.l		; 5C CE 3F 98
	eor ($BD.b),Y		; 51 BD
	bit $22.b,X		; 34 22
	ora $EEF6.w		; 0D F6 EE
	inc $B698.w		; EE 98 B6
	jmp $D000.w		; 4C 00 D0
	bmi -62.b		; 30 C2
	adc $98FE.w,X		; 7D FE 98
	asl $EC62.w		; 0E 62 EC
	ora $F30CF4.l		; 0F F4 0C F3
	sbc ($88.b),Y		; F1 88
	bvs -57.b		; 70 C7
	sbc $C0E1.w,X		; FD E1 C0
	adc $BC02.w		; 6D 02 BC
	dey		; 88
	bvc  28.b		; 50 1C
	sbc ($25.b),Y		; F1 25
	xba		; EB
	ora $841D43.l		; 0F 43 1D 84
	and ($23.b),Y		; 31 23
	bpl -53.b		; 10 CB
	bne  18.b		; D0 12
	and $33.b,S		; 23 33
	sty $EF.b		; 84 EF
	cmp ($4F.b)		; D2 4F
	ora $EB2BC0.l,X		; 1F C0 2B EB
	jsr ($F388.w,X)		; FC 88 F3
	cmp ($2C.b)		; D2 2C
	sbc ($13.b),Y		; F1 13
	sbc ($D1.b),Y		; F1 D1
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	trb $FE.b		; 14 FE
	ora $14EC0F.l,X		; 1F 0F EC 14
	and ($33.b,S),Y		; 33 33
	stz $14.b,X		; 74 14
	rts		; 60

	cmp $E3F400.l,X		; DF 00 F4 E3
	dec $84BC.w		; CE BC 84
	brk $FD.b		; 00 FD
	tsb $4D1B.w		; 0C 1B 4D
	inc $E2FF.w		; EE FF E2
	sty $00.b		; 84 00
	pea $2223.w		; F4 23 22
	sbc $E10021.l,X		; FF 21 00 E1
	sty $F1.b		; 84 F1
	and $F3232F.l		; 2F 2F 23 F3
	asl $C121.w,X		; 1E 21 C1
	sty $1C.b		; 84 1C
	cpy #$FF.b		; C0 FF
.INDEX 16
	rep #$1D		; C2 1D
	sbc ($F0.b,S),Y		; F3 F0
	bpl -124.b		; 10 84
	lda $D2.b,S		; A3 D2
	sbc $003F.w,X		; FD 3F 00
	brk $20.b		; 00 20
	ora ($74.b)		; 12 74
	mvn $3F,$1E		; 54 1E 3F
	ora ($EF.b)		; 12 EF
	bcs  57.b		; B0 39
	pea $0B74.w		; F4 74 0B
	adc $FD2F40.l,X		; 7F 40 2F FD
	eor $EECF.w		; 4D CF EE
	sty $20.b		; 84 20
	asl $4EDC.w,X		; 1E DC 4E
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	jsr $84F1.w		; 20 F1 84
	asl $2C0F.w		; 0E 0F 2C
	and ($E2.b,X)		; 21 E2
	sbc ($2F.b)		; F2 2F
	bpl 112.b		; 10 70
	bpl  28.b		; 10 1C
	and $00.b		; 25 00
	bvc   7.b		; 50 07
	ora $2C840F.l,X		; 1F 0F 84 2C
	.db $42, $B3		; 42 B3
	and $01D0EF.l		; 2F EF D0 01
	cmp ($84.b),Y		; D1 84
	jsr $F1E1.w		; 20 E1 F1
	cpx #$F0.b		; E0 F0
	ora $1B32.w		; 0D 32 1B
	bvs -80.b		; 70 B0
	ora $F01CCF.l		; 0F CF 1C F0
	cmp $704DF4.l,X		; DF F4 4D 70
	bit $31.b,X		; 34 31
	ora ($10.b,X)		; 01 10
	bmi  14.b		; 30 0E
	beq -30.b		; F0 E2
	sty $DE.b		; 84 DE
	asl $E25F.w		; 0E 5F E2
	cpy #$3D.b		; C0 3D
	bpl -14.b		; 10 F2
	stz $C4.b,X		; 74 C4
	cmp ($C5.b),Y		; D1 C5
	ora $041F.w,X		; 1D 1F 04
	lda $1E.b		; A5 1E
	stz $0C.b,X		; 74 0C
	jsr $0E35.w		; 20 35 0E
	sbc $00E3.w		; ED E3 00
	ora ($80.b,X)		; 01 80
	asl $2BEF.w,X		; 1E EF 2B
	asl $0BED.w		; 0E ED 0B
	cpx #$DB.b		; E0 DB
	sty $22.b		; 84 22
.ACCU 16
	rep #$2D		; C2 2D
	jsr $4EE0.w		; 20 E0 4E
	ora $FF.b,S		; 03 FF
	bra  44.b		; 80 2C
	ora ($F2.b),Y		; 11 F2
	sbc $DF242E.l		; EF 2E 24 DF
	cmp $C684.w,X		; DD 84 C6
	tas		; 1B
	inc $B1.b,X		; F6 B1
	bpl -12.b		; 10 F4
	bcs  32.b		; B0 20
	bra -63.b		; 80 C1
	sbc $0FF0.w		; ED F0 0F
	sbc ($1F.b)		; F2 1F
	ora ($32.b)		; 12 32
	bra  29.b		; 80 1D
	brk $51.b		; 00 51
	ora ($1F.b,X)		; 01 1F
	brk $E1.b		; 00 E1
	tsb $1184.w		; 0C 84 11
	sbc $009421.l		; EF 21 94 00
	brk $D2.b		; 00 D2
	and $FFCE80.l		; 2F 80 CE FF
	bpl  79.b		; 10 4F
	trb $02.b		; 14 02
	and ($43.b)		; 32 43
	bcc  18.b		; 90 12
	ora ($F0.b,X)		; 01 F0
	ora $A1DEF0.l		; 0F F0 DE A1
	ora $F584.w,X		; 1D 84 F5
	beq -36.b		; F0 DC
	inc $DE.b,X		; F6 DE
	beq  19.b		; F0 13
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	sbc $6B.b,S		; E3 6B
	adc $1440E4.l,X		; 7F E4 40 14
	pea $8411.w		; F4 11 84
	sbc $F1.b,S		; E3 F1
	cpx $C1.b		; E4 C1
	pld		; 2B
	ora $FF1E.w,X		; 1D 1E FF
	dey		; 88
	cpx #$2B.b		; E0 2B
	lsr $C104.w		; 4E 04 C1
	cmp ($11.b),Y		; D1 11
	tsa		; 3B
	sty $11.b		; 84 11
	rti		; 40

	ora ($01.b),Y		; 11 01
	jsl $131F02.l		; 22 02 1F 13
	sty $00.b,X		; 94 00
	bpl  15.b		; 10 0F
	asl $1C0D.w		; 0E 0D 1C
	sbc $3F88EE.l		; EF EE 88 3F
	ora $41F0.w,X		; 1D F0 41
	trb $200F.w		; 1C 0F 20
	sbc $30FE84.l,X		; FF 84 FE 30
	bpl  35.b		; 10 23
	and $D11401.l,X		; 3F 01 14 D1
	dey		; 88
	ldy $D1.b,X		; B4 D1
	cpy #$1F.b		; C0 1F
	sbc [$DF.b],Y		; F7 DF
	ldy $F5.b,X		; B4 F5
	dey		; 88
	ora ($95.b,X)		; 01 95
	sbc $B2.b,S		; E3 B2
	cmp $340F4F.l,X		; DF 4F 0F 34
	dey		; 88
	cpx #$D2.b		; E0 D2
	ora ($1A.b)		; 12 1A
	cop $0C.b		; 02 0C
	tsb $982F.w		; 0C 2F 98
	ora $DD.b,X		; 15 DD
.INDEX 8
	sep #$5F		; E2 5F
	trb $2210.w		; 1C 10 22
	ldy #$98.b		; A0 98
	sbc ($2F.b)		; F2 2F
	sbc $E2DF53.l		; EF 53 DF E2
	bmi -20.b		; 30 EC
	ldy $E0.b		; A4 E0
	asl $DFDD.w		; 0E DD DF
	rti		; 40

	dec $3313.w,X		; DE 13 33
	tya		; 98
	lda $E2EB62.l		; AF 62 EB E2
	ora ($EC.b,S),Y		; 13 EC
	asl $3E.b,X		; 16 3E
	ldy $0F.b		; A4 0F
	cop $20.b		; 02 20
	inc $EDFF.w		; EE FF ED
	cmp $A433.w		; CD 33 A4
	sbc $43E3.w		; ED E3 43
	bpl   3.b		; 10 03
	eor ($ED.b,X)		; 41 ED
	ora ($98.b,X)		; 01 98
	inc A		; 1A
	sbc ($73.b),Y		; F1 73
	stp		; DB
	pea $BE4F.w		; F4 4F BE
	ora ($A8.b)		; 12 A8
	ora $DD24E0.l		; 0F E0 24 DD
	sbc ($32.b)		; F2 32
	dec $9810.w,X		; DE 10 98
	eor ($DB.b,X)		; 41 DB
	sbc $4E.b		; E5 4E
	dec $3D25.w,X		; DE 25 3D
	cmp $2F1394.l		; CF 94 13 2F
	cmp $D9FF.w		; CD FF D9
	sta ($50.b),Y		; 91 50
	lda #$98.b		; A9 98
	eor [$0C.b],Y		; 57 0C
	sbc $901F23.l		; EF 23 1F 90
	bit $EE.b,X		; 34 EE
	tya		; 98
	cmp ($34.b,S),Y		; D3 34
	cpx $4FF2.w		; EC F2 4F
	inc $1D01.w		; EE 01 1D
	tay		; A8
	sbc $F2ED32.l,X		; FF 32 ED F2
	and ($EF.b),Y		; 31 EF
	brk $20.b		; 00 20
	tya		; 98
	jsr ($40E2.w,X)		; FC E2 40
	dec $3E24.w		; CE 24 3E
	inc $A822.w		; EE 22 A8
	asl $110F.w,X		; 1E 0F 11
	sbc $CE3FF2.l		; EF F2 3F CE
	bit $98.b		; 24 98
	bit $F4D0.w,X		; 3C D0 F4
	and $2C15CC.l		; 2F CC 15 2C
.INDEX 16
	rep #$98		; C2 98
	mvp $D1,$FE		; 44 FE D1
	and ($0C.b),Y		; 31 0C
	sbc ($2F.b),Y		; F1 2F
	cmp $05A8.w		; CD A8 05
	trb $45EE.w		; 1C EE 45
	inc $12F0.w		; EE F0 12
	asl $DC98.w		; 0E 98 DC
	eor $FA.b,X		; 55 FA
	cpx $63.b		; E4 63
	cmp $40F2.w		; CD F2 40
	tay		; A8
	sbc $FD1DF2.l		; EF F2 1D FD
	eor $DB.b,X		; 55 DB
	sbc $60.b,S		; E3 60
	ldy $30.b		; A4 30
	ora ($34.b),Y		; 11 34
	rol $22CF.w		; 2E CF 22
	jsr ($98E2.w,X)		; FC E2 98
	and $1B26BD.l,X		; 3F BD 26 1B
	ldx #$CB22.w		; A2 22 CB
	lda [$B4.b],Y		; B7 B4
	jsl $41F2FE.l		; 22 FE F2 41
	bpl   2.b		; 10 02
	and ($FD.b,X)		; 21 FD
	tay		; A8
	mvn $F1,$FC		; 54 FC F1
	mvp $E2,$ED		; 44 ED E2
	eor $E0B4CE.l		; 4F CE B4 E0
	asl $F3DB.w		; 0E DB F3
	rol $45D0.w,X		; 3E D0 45
	bpl -92.b		; 10 A4
	sbc $55.b,S		; E3 55
	sbc $50B1.w,Y		; F9 B1 50
	tyx		; BB
	sbc $72.b,X		; F5 72
	clv		; B8
	sbc ($21.b,X)		; E1 21
	sbc $1002.w		; ED 02 10
	dec $4E04.w,X		; DE 04 4E
	clv		; B8
	lda ($35.b,X)		; A1 35
	cpx $30F1.w		; EC F1 30
	sbc $4EF3.w		; ED F3 4E
	tay		; A8
	ldy $2F55.w,X		; BC 55 2F
	jsr ($FA42.w,X)		; FC 42 FA
	sbc $3F.b,S		; E3 3F
	clv		; B8
	inc $56FF.w,X		; FE FF 56
	plb		; AB
	bit $2D.b,X		; 34 2D
	cmp $3EB432.l,X		; DF 32 B4 3E
	cmp $FE13.w		; CD 13 FE
	sbc ($21.b,X)		; E1 21
	and ($12.b,X)		; 21 12
	ldy $1F.b,X		; B4 1F
	inc $FEFF.w		; EE FF FE
	jmp.w [$62C0]		; DC C0 62
	bne -72.b		; D0 B8
	and ($CE.b)		; 32 CE
	bpl  48.b		; 10 30
	cmp $1D33.w		; CD 33 1D
	brk $A4.b		; 00 A4
	eor $12.b,S		; 43 12
	and $20.b,S		; 23 20
	sbc $CDEE.w		; ED EE CD
	cpx $CCB4.w		; EC B4 CC
	sbc $4E.b,X		; F5 4E
	sbc ($52.b)		; F2 52
	inc $3EF4.w		; EE F4 3E
	ldy $CF.b,X		; B4 CF
	jsl $2F030F.l		; 22 0F 03 2F
	beq  34.b		; F0 22
	sbc $FDF1B4.l,X		; FF B4 F1 FD
	cpx #$CCFC.w		; E0 FC CC
	eor [$EE.b]		; 47 EE
	ora $B4.b,X		; 15 B4
	rol $44EE.w,X		; 3E EE 44
	sbc $3FE2.w		; ED E2 3F
	beq  50.b		; F0 32
	clv		; B8
	bne  20.b		; D0 14
	inc $0EF3.w		; EE F3 0E
	beq  32.b		; F0 20
	cmp $40E1C4.l		; CF C4 E1 40
	sbc ($22.b,X)		; E1 22
	sbc $EF2FF2.l,X		; FF F2 2F EF
	ldy $66.b		; A4 66
	inc $5D06.w		; EE 06 5D
	lda ($73.b),Y		; B1 73
	dec $C813.w,X		; DE 13 C8
	sbc $F11D01.l,X		; FF 01 1D F1
	bit $CE.b		; 24 CE
	ora ($0D.b,S),Y		; 13 0D
	ldy $CE.b,X		; B4 CE
	and $FB.b,X		; 35 FB
	sep #$4F		; E2 4F
	sbc ($33.b,X)		; E1 33
	sbc $34B8.w		; ED B8 34
	xce		; FB
	ora ($1D.b,S),Y		; 13 1D
	cpx #$CD31.w		; E0 31 CD
	tsb $B0.b		; 04 B0
	lda $50D4A9.l		; AF A9 D4 50
	sbc $F30D65.l		; EF 65 0D F3
	ldy $0E.b,X		; B4 0E
	sbc ($40.b,S),Y		; F3 40
	cmp $03FE43.l		; CF 43 FE 03
	ora $01C8.w		; 0D C8 01
	ora $2A23D0.l,X		; 1F D0 23 2A
	ora $2E.b,S		; 03 2E
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	sbc $3B.b,X		; F5 3B
	cpy #$D051.w		; C0 51 D0
	bit $1D.b		; 24 1D
	sep #$C4		; E2 C4
	jsr $11F0.w		; 20 F0 11
	inc $0E00.w		; EE 00 0E
	cmp $1BB404.l		; CF 04 B4 1B
	and $6E.b		; 25 6E
	cmp $F3DC15.l,X		; DF 15 DC F3
	and $42F1B4.l		; 2F B4 F1 42
	sbc $3D04.w		; ED 04 3D
	sbc ($2F.b)		; F2 2F
	dec $00C4.w		; CE C4 00
	sbc $24DF.w,X		; FD DF 24
	sbc $0F1E23.l		; EF 23 1E 0F
	ldy $51.b,X		; B4 51
	lda $0E14.w,X		; BD 14 0E
	ora ($4F.b,S),Y		; 13 4F
	cmp $FFC433.l,X		; DF 33 C4 FF
	ora ($0E.b),Y		; 11 0E
	beq  15.b		; F0 0F
	dec $40E1.w,X		; DE E1 40
	ldy $C3.b,X		; B4 C3
	stz $CE.b		; 64 CE
	sbc ($3C.b,S),Y		; F3 3C
	cpy #$E041.w		; C0 41 E0
	clv		; B8
	and ($DD.b),Y		; 31 DD
	tsb $3C.b		; 04 3C
.ACCU 8
	sep #$20		; E2 20
	cpy #$C812.w		; C0 12 C8
	ora $1401.w		; 0D 01 14
	cmp $0D31.w,X		; DD 31 0D
	brk $21.b		; 00 21
	ldy $DC.b,X		; B4 DC
	cpx $2E.b		; E4 2E
	ora ($52.b,X)		; 01 52
	dec $2D04.w,X		; DE 04 2D
	cpy $F1.b		; C4 F1
	and $ED00EF.l		; 2F EF 00 ED
	cpx #$D042.w		; E0 42 D0
	bcs -11.b		; B0 F5
	eor ($F0.b),Y		; 51 F0
	eor ($EC.b,S),Y		; 53 EC
	sbc ($10.b)		; F2 10
	trb $B4.b		; 14 B4
	lsr $43DF.w		; 4E DF 43
	sbc $0C22.w		; ED 22 0C
	bne  30.b		; D0 1E
	ldy $AA.b,X		; B4 AA
	sbc [$6B.b],Y		; F7 6B
	pea $CE61.w		; F4 61 CE
	ora $0B.b		; 05 0B
	ldy $D2.b,X		; B4 D2
	eor $FD34F0.l		; 4F F0 34 FD
	sbc ($3F.b,S),Y		; F3 3F
	cmp ($C4.b),Y		; D1 C4
	bpl  -2.b		; 10 FE
	brk $0D.b		; 00 0D
	cmp $23FE33.l,X		; DF 33 FE 23
	ldy $3C.b,X		; B4 3C
	cmp $05CC51.l,X		; DF 51 CC 05
	asl $4102.w,X		; 1E 02 41
	clv		; B8
	cmp ($34.b,X)		; C1 34
	cmp $0C23.w		; CD 23 0C
	beq  94.b		; F0 5E
	cmp $E2C4.w		; CD C4 E2
	rti		; 40

	cpx #$FE33.w		; E0 33 FE
.ACCU 8
	sep #$2F		; E2 2F
	cmp $FE53B4.l,X		; DF B4 53 FE
	trb $3E.b		; 14 3E
	cmp $13ED53.l		; CF 53 ED 13
	iny		; C8
	sbc $FF2D01.l		; EF 01 2D FF
	and $DB.b,X		; 35 DB
	jsl $DAB43C.l		; 22 3C B4 DA
	ora [$0B.b]		; 07 0B
	rep #$42		; C2 42
	inc $1C25.w,X		; FE 25 1C
	clv		; B8
	ora $2D.b,X		; 15 2D
	cmp ($31.b),Y		; D1 31
	cmp $FC05.w,X		; DD 05 FC
	cmp ($B0.b,S),Y		; D3 B0
	sta ($FC.b),Y		; 91 FC
	cmp $75.b,S		; C3 75
	tsb $2C14.w		; 0C 14 2C
	lda $EF41B4.l,X		; BF B4 41 EF
	bit $FB.b,X		; 34 FB
	pea $D03F.w		; F4 3F D0
	and ($C8.b,X)		; 21 C8
	inc $FE12.w,X		; FE 12 FE
	pea $F04B.w		; F4 4B F0
	and ($FD.b,X)		; 21 FD
	ldy $A1.b,X		; B4 A1
	eor ($DC.b,X)		; 41 DC
	ora ($41.b,S),Y		; 13 41
	bne  51.b		; D0 33
	cmp $42B8.w,X		; DD B8 42
	sbc $2FF2.w,X		; FD F2 2F
	cmp $55DF21.l,X		; DF 21 DF 55
	bcs -17.b		; B0 EF
	sbc ($34.b),Y		; F1 34
	eor $DD1FF0.l		; 4F F0 1F DD
	sbc ($A4.b)		; F2 A4
	eor $DE30F1.l,X		; 5F F1 30 DE
	jsl $0EDF20.l		; 22 20 DF 0E
	clv		; B8
	beq -16.b		; F0 F0
	pea $E15B.w		; F4 5B E1
	ora ($0D.b),Y		; 11 0D
	cmp ($A8.b)		; D2 A8
	eor ($CE.b),Y		; 51 CE
	jsl $23DB6F.l		; 22 6F DB 23
	ora $B8F3.w		; 0D F3 B8
	bpl  14.b		; 10 0E
	ora ($0F.b,X)		; 01 0F
	beq -31.b		; F0 E1
	rol $CB.b,X		; 36 CB
	ldy $01.b,X		; B4 01
	and ($1C.b)		; 32 1C
	bne  32.b		; D0 20
	sbc $A433F4.l		; EF F4 33 A4
	cmp $0D13.w		; CD 13 0D
	sbc ($33.b),Y		; F1 33
	jsr ($EEDF.w,X)		; FC DF EE
	clv		; B8
	sbc $B06E03.l		; EF 03 6E B0
	tsb $F0.b		; 04 F0
	ldx $B842.w,Y		; BE 42 B8
	ora $33F0.w,X		; 1D F0 33
	tsb $30E0.w		; 0C E0 30
	ora $21B4F2.l		; 0F F2 B4 21
	asl $0FEE.w		; 0E EE 0F
	stp		; DB
	pei ($72.b)		; D4 72
	asl $31B8.w		; 0E B8 31
	bit $14C1.w		; 2C C1 14
	ora $FC24D1.l		; 0F D1 24 FC
	tay		; A8
	cpy #$1E44.w		; C0 44 1E
	cmp ($32.b,X)		; C1 32
	sbc $20EF.w		; ED EF 20
	clv		; B8
	sbc $D0EF26.l,X		; FF 26 EF D0
	ora ($1C.b),Y		; 11 1C
	sbc $3EA831.l,X		; FF 31 A8 3E
	bne  68.b		; D0 44
	xce		; FB
	cpy #$4F14.w		; C0 14 4F
	bcs -76.b		; B0 B4
	sbc ($00.b),Y		; F1 00
	sbc $EFDD.w		; ED DD EF
	mvp $01,$21		; 44 21 01
	tay		; A8
	pea $D3CB.w		; F4 CB D3
	eor ($0D.b)		; 52 0D
	ora ($42.b,X)		; 01 42
	dec $C0A8.w		; CE A8 C0
	bit $4D.b		; 24 4D
	cmp $DD1F02.l,X		; DF 02 1F DD
	sbc ($B8.b),Y		; F1 B8
	tsb $4D.b		; 04 4D
	inc $3F10.w		; EE 10 3F
	sbc $12E4.w		; ED E4 12
	tay		; A8
	asl $42D1.w		; 0E D1 42
	sbc $36DD.w		; ED DD 36
	rol $B8DD.w,X		; 3E DD B8
	sbc ($10.b)		; F2 10
	sbc $3E25E0.l		; EF E0 25 3E
	dec $B8F2.w		; CE F2 B8
	eor $23F2EC.l		; 4F EC F2 23
	asl $11E0.w,X		; 1E E0 11
	bpl -88.b		; 10 A8
	ldy $4116.w		; AC 16 41
	jmp.w [$52C0]		; DC C0 52
	sbc $B4BD.w,X		; FD BD B4
	cpx $75.b		; E4 75
	and $1E23DE.l		; 2F DE 23 1E
	wai		; CB
.ACCU 8
	sep #$A8		; E2 A8
	eor $42E1CD.l		; 4F CD E1 42
	sbc $32E1.w		; ED E1 32
	and $E0B8.w		; 2D B8 E0
	sbc ($10.b),Y		; F1 10
	sbc $0D2F14.l		; EF 14 2F 0D
	cpx #$31A8.w		; E0 A8 31
	asl $24EC.w,X		; 1E EC 24
	and ($1F.b)		; 32 1F
	dec $9810.w		; CE 10 98
	and ($22.b),Y		; 31 22
	cmp $021F.w		; CD 1F 02
	sbc $B8CCFD.l		; EF FD CC B8
	and $00.b		; 25 00
	sbc $22E0.w,X		; FD E0 22
	sbc $A811FE.l,X		; FF FE 11 A8
	bit $10.b,X		; 34 10
	cmp $1300.w		; CD 00 13
	jsr $FFED.w		; 20 ED FF
	clv		; B8
	bpl  16.b		; 10 10
	asl $05FF.w		; 0E FF 05
	ora ($FF.b)		; 12 FF
	dec $22A8.w		; CE A8 22
	.db $42, $0D		; 42 0D
	dec $4402.w		; CE 02 44
	and $E0A8CD.l		; 2F CD A8 E0
	and $21.b,X		; 35 21
	stp		; DB
	dec $5123.w		; CE 23 51
	sbc $BCA8.w		; ED A8 BC
	lsr $63.b		; 46 63
	sbc $F39C.w,X		; FD 9C F3
	eor $1E.b,S		; 43 1E
	tay		; A8
	jmp.w [$34E1]		; DC E1 34
	bmi  -1.b		; 30 FF
	cmp $A82123.l		; CF 23 21 A8
	jsr ($F3DE.w,X)		; FC DE F3
	and ($0D.b)		; 32 0D
	dec $3414.w,X		; DE 14 34
	tya		; 98
	inc $C09C.w		; EE 9C C0
	bit $3F.b,X		; 34 3F
	sbc $21CE.w		; ED CE 21
	tya		; 98
	eor ($30.b,S),Y		; 53 30
	sbc $1102.w		; ED 02 11
	ora $88D0BE.l		; 0F BE D0 88
	eor $51.b,X		; 55 51
	wai		; CB
.ACCU 16
.INDEX 16
	rep #$36		; C2 36
	eor ($FD.b)		; 52 FD
	jmp.w [$E088]		; DC 88 E0
	and $11.b,S		; 23 11
	jmp.w [$04CE]		; DC CE 04
	lsr $4F.b		; 46 4F
	dey		; 88
	cpx $34E1.w		; EC E1 34
	ora $36C19B.l,X		; 1F 9B C1 36
	bvc -120.b		; 50 88
	wai		; CB
	sbc $1F31F5.l		; EF F5 31 1F
	cpx $2210.w		; EC 10 22
	dey		; 88
	bmi -20.b		; 30 EC
	jmp.w [$2303]		; DC 03 23
	eor $78F0FE.l		; 4F FE F0 78
	tsb $40.b		; 04 40
	sbc $53ED.w,X		; FD ED 53
	jsr $F0BE.w		; 20 BE F0
	sei		; 78
	.db $42, $0C		; 42 0C
	cmp $5400.w		; CD 00 54
	asl $E00C.w,X		; 1E 0C E0
	pla		; 68
	inc $5E21.w,X		; FE 21 5E
	tsb $C202.w		; 0C 02 C2
	and ($FC.b,S),Y		; 33 FC
	pla		; 68
	.db $62, $B4, $FD		; 62 B4 FD
	ora ($31.b,X)		; 01 31
	lda $F0.b,S		; A3 F0
	ora ($78.b),Y		; 11 78
	and $13F0FF.l,X		; 3F FF F0 13
	bpl -33.b		; 10 DF
	inc $681E.w,X		; FE 1E 68
	bvc 109.b		; 50 6D
	nop		; EA
	ora ($E5.b),Y		; 11 E5
	and ($90.b,S),Y		; 33 90
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
	ora ($01.b,S),Y		; 13 01
	dec $23ED.w,X		; DE ED 23
	bpl  46.b		; 10 2E
	ora $052E68.l		; 0F 68 2E 05
	bit $D21C.w,X		; 3C 1C D2
	sbc $20.b,X		; F5 20
	plx		; FA
	sei		; 78
	sbc ($02.b),Y		; F1 02
	and $C200.w,X		; 3D 00 C2
	ora ($21.b),Y		; 11 21
	dec $2C68.w		; CE 68 2C
	ora ($35.b,X)		; 01 35
	sbc $243D0B.l		; EF 0B 3D 24
	asl $EC68.w,X		; 1E 68 EC
	and $AFE231.l		; 2F 31 E2 AF
	ora ($20.b),Y		; 11 20
	eor $64.b		; 45 64
	and ($1F.b)		; 32 1F
	cmp $DD102D.l,X		; DF 2D 10 DD
	cmp $64F2.w		; CD F2 64
	mvp $0C,$1C		; 44 1C 0C
	ora ($11.b)		; 12 11
	and ($00.b),Y		; 31 00
	beq 100.b		; F0 64
	inc $B0C1.w		; EE C1 B0
	ora ($51.b,X)		; 01 51
	jsl $50FF0F.l		; 22 0F FF 50
	sbc ($AF.b,S),Y		; F3 AF
	sbc $6646F5.l,X		; FF F5 46 66
	lsr $4D.b,X		; 56 4D
	pla		; 68
	and $0BEC43.l,X		; 3F 43 EC 0B
	sbc $56.b,S		; E3 56
	xba		; EB
	tsb $0568.w		; 0C 68 05
	bit $F06A.w		; 2C 6A F0
	sbc $191342.l		; EF 42 13 19
	stz $FE.b,X		; 74 FE
	sbc $E10102.l,X		; FF 02 01 E1
	ora ($FD.b)		; 12 FD
.INDEX 16
	rep #$98		; C2 98
	ora $0201FF.l,X		; 1F FF 01 02
	and $42E3DD.l		; 2F DD E3 42
	tya		; 98
	brk $CE.b		; 00 CE
	cmp ($52.b),Y		; D1 52
	jsr $F3BC.w		; 20 BC F3
	and ($98.b,S),Y		; 33 98
	ora $00EE.w,X		; 1D EE 00
	trb $1E.b		; 14 1E
	sbc $2301.w		; ED 01 23
	tya		; 98
	asl $03EF.w		; 0E EF 03
	ora ($EB.b)		; 12 EB
	sbc $A84E54.l,X		; FF 54 4E A8
	cmp $43F2.w		; CD F2 43
	ora $3112BE.l		; 0F BE 12 31
	tsb $DF98.w		; 0C 98 DF
	and ($21.b,S),Y		; 33 21
	sbc $21F0.w,X		; FD F0 21
	inc $9831.w,X		; FE 31 98
	ora $36BD.w,X		; 1D BD 36
	.db $42, $D9		; 42 D9
	cpy #$2055.w		; C0 55 20
	tya		; 98
	wai		; CB
	sbc ($33.b,X)		; E1 33
	jsr $12CE.w		; 20 CE 12
	bpl -34.b		; 10 DE
	dey		; 88
	bit $60.b,X		; 34 60
	phx		; DA
	cpx #$2E24.w		; E0 24 2E
	jsr ($980F.w,X)		; FC 0F 98
	ora ($21.b,S),Y		; 13 21
	jmp.w [$41F2]		; DC F2 41
	cpx $34D0.w		; EC D0 34
	tya		; 98
	lsr $F4DC.w		; 4E DC F4
	and ($FC.b),Y		; 31 FC
	bne  52.b		; D0 34
	jsr $BC98.w		; 20 98 BC
	sbc ($53.b)		; F2 53
	jsr ($24C0.w,X)		; FC C0 24
	and $0298DE.l		; 2F DE 98 02
	jsr $E1FD.w		; 20 FD E1
	.db $42, $1D		; 42 1D
	cmp $4F8823.l		; CF 23 88 4F
	cpy $72D2.w		; CC D2 72
	inc $35BE.w,X		; FE BE 35
	asl $CE88.w,X		; 1E 88 CE
	jsl $F10E2C.l		; 22 2C 0E F1
	and ($EF.b)		; 32 EF
.ACCU 8
.INDEX 8
	sep #$78		; E2 78
	and ($FE.b,S),Y		; 33 FE
	lda $2102F2.l,X		; BF F2 02 21
	wai		; CB
	tsb $78.b		; 04 78
	mvp $DC,$1D		; 44 1D DC
	mvp $FC,$37		; 44 37 FC
	lda #$14.b		; A9 14
	dey		; 88
	eor ($DE.b,X)		; 41 DE
	beq  18.b		; F0 12
	dec $34E1.w,X		; DE E1 34
	ora $E10D88.l,X		; 1F 88 0D E1
	ora ($12.b,X)		; 01 12
	cmp $42D0.w,X		; DD D0 42
	and $01EF88.l		; 2F 88 EF 01
	eor ($FB.b,X)		; 41 FB
	bpl  33.b		; 10 21
	eor $0D880E.l		; 4F 0E 88 0D
	sbc ($12.b),Y		; F1 12
	jsr $CEFD.w		; 20 FD CE
	sbc $418845.l,X		; FF 45 88 41
	cmp $0EF1EF.l,X		; DF EF F1 0E
	bpl  15.b		; 10 0F
	asl $1378.w		; 0E 78 13
	eor $1E.b,X		; 55 1E
	sbc $350FDF.l		; EF DF 0F 35
	ora $88.b,S		; 03 88
	bpl  -2.b		; 10 FE
	rol $10F0.w		; 2E F0 10
	ora ($0E.b),Y		; 11 0E
	jmp.w [$C288]		; DC 88 C2
	adc [$20.b]		; 67 20
	nop		; EA
	cmp ($22.b,X)		; C1 22
	bpl  10.b		; 10 0A
	sei		; 78
	sbc ($53.b,X)		; E1 53
	adc $02C2.w,X		; 7D C2 02
	and $8813BB.l		; 2F BB 13 88
	jsl $00DE40.l		; 22 40 DE 00
	ora ($E0.b),Y		; 11 E0
	cpx #$50.b		; E0 50
	dey		; 88
	ora $F3FFDD.l,X		; 1F DD FF F3
	eor $EF.b,S		; 43 EF
	inc $8801.w		; EE 01 88
	rti		; 40

	lda $44D3.w,X		; BD D3 44
	ora $21DD.w		; 0D DD 21
	bvc -120.b		; 50 88
	sbc $5F21CE.l,X		; FF CE 21 5F
	lsr $E20E.w		; 4E 0E E2
	inc HDMATBL7L.w		; EE 78 43
	jsl $B2EE20.l		; 22 20 EE B2
	inc $042C.w,X		; FE 2C 04
	dey		; 88
	and $03E4E0.l		; 2F E0 E4 03
	stp		; DB
	and $982F04.l		; 2F 04 2F 98
	cmp $1D2211.l		; CF 11 22 1D
	sbc $201201.l		; EF 01 12 20
	dey		; 88
	wai		; CB
	ora ($42.b,X)		; 01 42
	stp		; DB
	sbc $63.b		; E5 63
	jmp.w [$88EF]		; DC EF 88
	and ($DF.b)		; 32 DF
.INDEX 16
	rep #$51		; C2 51
	inc $E22F.w		; EE 2F E2
	rol $E298.w		; 2E 98 E2
	asl $11E2.w		; 0E E2 11
	jsl $12E1BF.l		; 22 BF E1 12
	dey		; 88
	bmi -82.b		; 30 AE
	trb $25.b		; 14 25
	cmp $54D0.w,Y		; D9 D0 54
	lsr $EC94.w,X		; 5E 94 EC
	cmp ($22.b),Y		; D1 22
	and ($FE.b,X)		; 21 FE
	cmp $20F1.w		; CD F1 20
	tya		; 98
	sbc $E0E021.l,X		; FF 21 E0 E0
	ora ($2D.b,S),Y		; 13 2D
	bne   2.b		; D0 02
	dey		; 88
	rol $FFF1.w		; 2E F1 FF
	brk $22.b		; 00 22
	sbc $46C2.w,X		; FD C2 46
	dey		; 88
	inc A		; 1A
	cmp $CD5F14.l		; CF 14 5F CD
	ora ($02.b),Y		; 11 02
	asl $2188.w,X		; 1E 88 21
	asl $FFC1.w,X		; 1E C1 FF
	cop $33.b		; 02 33
	tsb $84CD.w		; 0C CD 84
	bcs 118.b		; B0 76
	xba		; EB
	ora $1422DF.l		; 0F DF 22 14
	eor $23D088.l		; 4F 88 D0 23
	jsr $FD1E.w		; 20 1E FD
	sbc $32.b,S		; E3 32
	ora $1F2E74.l		; 0F 74 2E 1F
	tyx		; BB
	ora $41.b		; 05 41
	ora $741CD0.l,X		; 1F D0 1C 74
	cmp $E00F.w		; CD 0F E0
	sbc $DEEF23.l		; EF 23 EF DE
	tsb $84.b		; 04 84
	ora $33CF.w		; 0D CF 33
	ora ($00.b),Y		; 11 00
	asl $42EF.w,X		; 1E EF 42
	dey		; 88
	sbc $0B23E3.l		; EF E3 23 0B
	beq -13.b		; F0 F3
	jsr $78FE.w		; 20 FE 78
	and $C42D02.l,X		; 3F 02 2D C4
	sbc ($60.b),Y		; F1 60
	ldy $78D0.w,X		; BC D0 78
	lsr $3B.b		; 46 3B
	ldy #$4102.w		; A0 02 41
	cmp $12F1.w		; CD F1 12
	sei		; 78
	ora $CF0ED3.l,X		; 1F D3 0E CF
	and ($30.b,S),Y		; 33 30
	tsb $84CF.w		; 0C CF 84
	sbc $5414.w		; ED 14 54
	sbc $11F0.w		; ED F0 11
	sbc $8813.w,X		; FD 13 88
	ora $06EC.w,X		; 1D EC 06
	lsr $01DE.w,X		; 5E DE 01
	ora $F4740E.l,X		; 1F 0E 74 F4
	eor ($ED.b),Y		; 51 ED
	jmp.w [$5215]		; DC 15 52
	jsr ($64CD.w,X)		; FC CD 64
	sbc $4C1467.l		; EF 67 14 4C
	lda $32D3E2.l		; AF E2 D3 32
	stz $0D.b		; 64 0D
	lda ($66.b)		; B2 66
	jmp.w [$4101]		; DC 01 41
	xce		; FB
	cmp ($64.b),Y		; D1 64
	mvn $EF,$5D		; 54 5D EF
	dec $20F0.w		; CE F0 20
	phd		; 0B
	sbc $0A4F78.l,X		; FF 78 4F 0A
	ora $B1324F.l,X		; 1F 4F 32 B1
	cmp $1F7843.l		; CF 43 78 1F
	cpx $1420.w		; EC 20 14
	cmp $0CE221.l		; CF 21 E2 0C
	stz $EE.b,X		; 74 EE
	ora $30.b,S		; 03 30
	jmp.w [$21F2]		; DC F2 21
	and ($01.b,X)		; 21 01
	stz $0C.b		; 64 0C
	xba		; EB
	lda $24.b		; A5 24
	bvc  14.b		; 50 0E
	dec $7810.w,X		; DE 10 78
	brk $10.b		; 00 10
	sbc ($FF.b,X)		; E1 FF
	and ($20.b,X)		; 21 20
	bne  -1.b		; D0 FF
	stz $D0.b		; 64 D0
	jsr $2100.w		; 20 00 21
	rol $C2.b		; 26 C2
	lda $64D2.w		; AD D2 64
	ora ($DD.b)		; 12 DD
	ora ($43.b,X)		; 01 43
	sbc $0F10.w		; ED 10 0F
	brk $64.b		; 00 64
	ora ($01.b),Y		; 11 01
	ora $15D300.l		; 0F 00 D3 15
	sbc ($FE.b),Y		; F1 FE
	stz $1F.b		; 64 1F
	cpy #$31F5.w		; C0 F5 31
	dec $22F1.w		; CE F1 22
	ora $20B364.l		; 0F 64 B3 20
	dec $5C13.w,X		; DE 13 5C
	xba		; EB
	cpx $67.b		; E4 67
	stz $EB.b		; 64 EB
	cmp $0C15.w		; CD 15 0C
	ora $AF3D35.l		; 0F 35 3D AF
	stz $F5.b		; 64 F5
	eor $33D1D1.l,X		; 5F D1 D1 33
	sbc ($2E.b),Y		; F1 2E
	and $FB64.w		; 2D 64 FB
	bpl  54.b		; 10 36
	jsr ($02EF.w,X)		; FC EF 02
	ora ($00.b,X)		; 01 00
	mvn $EF,$F1		; 54 F1 EF
	and ($0A.b,S),Y		; 33 0A
	xce		; FB
	jmp $646115.l		; 5C 15 61 64
	sbc $2B14.w		; ED 14 2B
	bne -13.b		; D0 F3
	adc ($DE.b),Y		; 71 DE
	sbc ($64.b),Y		; F1 64
	.db $42, $0D		; 42 0D
	ldy #$5104.w		; A0 04 51
	ldx $4301.w,Y		; BE 01 43
	stz $0A.b		; 64 0A
	ldy #$3E43.w		; A0 43 3E
	sbc $02F4.w,X		; FD F4 02
	sbc $FFF364.l		; EF 64 F3 FF
	sbc ($2F.b,X)		; E1 2F
	ora ($3E.b)		; 12 3E
	jsr ($5403.w,X)		; FC 03 54
	rol $CF.b		; 26 CF
	lda ($36.b),Y		; B1 36
	inc $65BF.w		; EE BF 65
	eor $F1EF64.l		; 4F 64 EF F1
	ora ($21.b),Y		; 11 21
	sbc $F0E004.l,X		; FF 04 E0 F0
	stz $40.b		; 64 40
	jsr $D1DC.w		; 20 DC D1
	and ($0F.b),Y		; 31 0F
	ora ($22.b,X)		; 01 22
	stz $FE.b		; 64 FE
	sbc $4211F0.l		; EF F0 11 42
	cmp ($E0.b,X)		; C1 E0
	eor $64.b,S		; 43 64
	xce		; FB
	cpx #$1E5F.w		; E0 5F 1E
	ora ($5F.b,X)		; 01 5F
	asl $64CB.w,X		; 1E CB 64
	tsb $40.b		; 04 40
	sbc $23EE.w,X		; FD EE 23
	ora $54F000.l,X		; 1F 00 F0 54
	inc $52E0.w,X		; FE E0 52
	eor $21F0FF.l		; 4F FF F0 21
	ora ($64.b)		; 12 64
	beq   1.b		; F0 01
	tad		; 5B
	ora $AD0106.l		; 0F 06 01 AD
	cmp $64.b,X		; D5 64
	and ($0E.b,S),Y		; 33 0E
	cmp ($3F.b,X)		; C1 3F
	jsr $F1EF.w		; 20 EF F1
	and ($64.b,X)		; 21 64
	inc $1402.w,X		; FE 02 14
	cmp $1203EE.l		; CF EE 03 12
	asl $0F50.w		; 0E 50 0F
	.db $42, $2B		; 42 2B
	cmp $3252.w,X		; DD 52 32
	ldx $60EF.w		; AE EF 60
	cop $11.b		; 02 11
	asl $11EF.w		; 0E EF 11
	bpl -45.b		; 10 D3
	ora $60.b,X		; 15 60
	mvn $F1,$0E		; 54 0E F1
	mvp $F1,$3E		; 44 3E F1
	and $32.b,S		; 23 32
	bvc   0.b		; 50 00
	lsr $63.b		; 46 63
	ora ($35.b,X)		; 01 35
	ror $4D.b		; 66 4D
	sbc $1264.w,X		; FD 64 12
	brk $F0.b		; 00 F0
	ora $EF.b,X		; 15 EF
	sbc $4F05.w		; ED 05 4F
	stz $DC.b		; 64 DC
	bpl  37.b		; 10 25
	jsr ($45EF.w,X)		; FC EF 45
	sbc $0664DC.l,X		; FF DC 64 06
	ora ($DE.b,X)		; 01 DE
	sbc ($36.b,X)		; E1 36
	lda $25EE.w,X		; BD EE 25
	stz $3D.b		; 64 3D
	cpx $3124.w		; EC 24 31
	phd		; 0B
	inc BG3HOFS.w		; EE 11 21
	mvp $F1,$BA		; 44 BA F1
	eor ($1C.b)		; 52 1C
	sbc $15F1.w,X		; FD F1 15
	sbc ($50.b,X)		; E1 50
	sbc $03EFED.l,X		; FF ED EF 03
	and ($20.b)		; 32 20
	lda $13.b		; A5 13
	stz $11.b		; 64 11
	inc $23F0.w		; EE F0 23
	asl A		; 0A
	ora $54E054.l,X		; 1F 54 E0 54
	stz $5062.w		; 9C 62 50
	inc $34D0.w		; EE D0 34
	cpx $50F5.w		; EC F5 50
	lsr $3F.b,X		; 56 3F
	cpx #$6245.w		; E0 45 62
	ldy $05AC.w		; AC AC 05
	eor $D6.b,X		; 55 D6
	sbc OBJSEL.w		; ED 01 21
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	cmp $DDC1.w,X		; DD C1 DD
	asl A		; 0A
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	inc $130F.w,X		; FE 0F 13
	pea $65F3.w		; F4 F3 65
	rol $04.b,X		; 36 04
	pla		; 68
	lsr A		; 4A
	lsr $4D1E.w,X		; 5E 1E 4D
	sbc ($93.b,S),Y		; F3 93
	ora $880E.w,X		; 1D 0E 88
	sbc ($E0.b),Y		; F1 E0
	beq  47.b		; F0 2F
	pea $30F0.w		; F4 F0 30
	ora $68.b,S		; 03 68
	sta ($C4.b),Y		; 91 C4
	xba		; EB
	ora ($C4.b,X)		; 01 C4
	inc $A041.w,X		; FE 41 A0
	ldy $FE.b		; A4 FE
	inc $0DE0.w		; EE E0 0D
	and ($03.b,X)		; 21 03
	and ($33.b,S),Y		; 33 33
	tya		; 98
	pld		; 2B
	and ($A4.b,X)		; 21 A4
	sbc $D022.w,X		; FD 22 D0
	eor $A413.w,X		; 5D 13 A4
	ora ($13.b),Y		; 11 13
	ora ($21.b),Y		; 11 21
	sbc $BCE0EB.l,X		; FF EB E0 BC
	ldy $1D.b		; A4 1D
	sbc ($22.b,S),Y		; F3 22
	eor $22.b		; 45 22
	eor ($02.b),Y		; 51 02
	ora $0E94.w		; 0D 94 0E
	ldy $B1EE.w,X		; BC EE B1
	ora $F245.w,X		; 1D 45 F2
	and $EFB4.w		; 2D B4 EF
	beq -34.b		; F0 DE
	bit $0212.w		; 2C 12 02
	and ($12.b)		; 32 12
	ldy $50.b		; A4 50
	ora $EE.b,S		; 03 EE
	ora $FDDF.w		; 0D DF FD
	sbc ($F0.b),Y		; F1 F0
	ldy $20.b,X		; B4 20
	cop $0F.b		; 02 0F
	inc $CDE1.w,X		; FE E1 CD
	bit $A812.w		; 2C 12 A8
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	cpx #$2449.w		; E0 49 24
	ldy #$F55B.w		; A0 5B F5
	clv		; B8
	sbc $3EF020.l,X		; FF 20 F0 3E
	sbc ($DE.b)		; F2 DE
	and ($CD.b)		; 32 CD
	ldy $4C.b,X		; B4 4C
	sbc $01.b		; E5 01
	eor ($13.b,S),Y		; 53 13
	eor $B4DE13.l		; 4F 13 DE B4
	bit $FEE1.w		; 2C E1 FE
	bpl -30.b		; 10 E2
	asl $C1FE.w		; 0E FE C1
	cpy $1B.b		; C4 1B
	bmi -60.b		; 30 C4
	ora $300133.l,X		; 1F 33 01 30
	sbc ($B4.b)		; F2 B4
	xce		; FB
	rol $0CB2.w,X		; 3E B2 0C
	ora ($D1.b)		; 12 D1
	asl $C4EF.w,X		; 1E EF C4
	cpx #$112B.w		; E0 2B 11
	cmp $2E.b,S		; C3 2E
	and ($01.b,S),Y		; 33 01
	bmi -76.b		; 30 B4
	pea $2FFC.w		; F4 FC 2F
	lda ($FD.b)		; B2 FD
	ora ($E1.b),Y		; 11 E1
	rol $0FC4.w		; 2E C4 0F
	sbc $B1F33C.l		; EF 3C F3 B1
	and $F124.w,X		; 3D 24 F1
	ldy $70.b,X		; B4 70
	sbc $0C.b,X		; F5 0C
	jsr $1BB2.w		; 20 B2 1B
	ora ($C2.b,S),Y		; 13 C2
	iny		; C8
	asl $C211.w		; 0E 11 C2
	and $CED6.w,X		; 3D D6 CE
	adc $B4E6.w		; 6D E6 B4
	rol $C465.w,X		; 3E 65 C4
	jmp $BF03.w		; 4C 03 BF
	and $B4F3.w,X		; 3D F3 B4
	cpx #$F23F.w		; E0 3F F2
	dec $FB00.w,X		; DE 00 FB
	ora $B4C3.w,X		; 1D C3 B4
	sbc $2EF651.l		; EF 51 F6 2E
	.db $42, $E2		; 42 E2
	ora $A801.w		; 0D 01 A8
	cmp $0B.b		; C5 0B
	bvc -29.b		; 50 E3
	sbc $C63E.w,X		; FD 3E C6
	sbc #$0AA4.w		; E9 A4 0A
	sta ($EE.b)		; 92 EE
	eor ($15.b,S),Y		; 53 15
	rti		; 40

	.db $42, $01		; 42 01
	sty $1D.b,X		; 94 1D
	jsl $413015.l		; 22 15 30 41
	trb $3D.b		; 14 3D
	cmp $3CFFA8.l		; CF A8 FF 3C
	bpl -30.b		; 10 E2
	sep #$0F		; E2 0F
	and $008800.l		; 2F 00 88 00
	beq  -2.b		; F0 FE
	and $014110.l		; 2F 10 41 01
	asl $B698.w,X		; 1E 98 B6
	ora $201F.w,X		; 1D 1F 20
	dec $B0.b		; C6 B0
	rol A		; 2A
	jsl $01B388.l		; 22 88 B3 01
	and $D34F.w		; 2D 4F D3
	dec $2520.w,X		; DE 20 25
	sty $10.b,X		; 94 10
	and $0DF041.l,X		; 3F 41 F0 0D
	sta ($5C.b),Y		; 91 5C
	sbc ($94.b,X)		; E1 94
	dec $EE0A.w		; CE 0A EE
	cmp $33EEE0.l		; CF E0 EE 33
	jsl $024B88.l		; 22 88 4B 02
	beq  28.b		; F0 1C
	lsr $D1F3.w,X		; 5E F3 D1
	and $7C78.w		; 2D 78 7C
	jmp $2CE022.l		; 5C 22 E0 2C
	sbc $782DB1.l,X		; FF B1 2D 78
	ora ($5F.b,X)		; 01 5F
	cmp $2B.b		; C5 2B
	ora $E1.b,S		; 03 E1
	cpx #$640C.w		; E0 0C 64
	ora ($BF.b),Y		; 11 BF
	xce		; FB
	cmp $712C.w		; CD 2C 71
	cpy #$78EA.w		; C0 EA 78
	bpl -31.b		; 10 E1
	sbc $D1.b,S		; E3 D1
	brk $2F.b		; 00 2F
	cmp $D0.b,X		; D5 D0
	rts		; 60

	jsl $327476.l		; 22 76 74 32
	bit $2642.w,X		; 3C 42 26
	ror $68.b,X		; 76 68
	asl $1CD4.w		; 0E D4 1C
	trb $B1.b		; 14 B1
	tsa		; 3B
	jsl $306400.l		; 22 00 64 30
	sbc ($11.b)		; F2 11
	ora $FB1F.w		; 0D 1F FB
	bvc  18.b		; 50 12
	stz $5F.b		; 64 5F
	ora [$C1.b]		; 07 C1
	and ($C1.b,X)		; 21 C1
	jsr ($DDD0.w,X)		; FC D0 DD
	mvn $3F,$F0		; 54 F0 3F
	ora ($2E.b)		; 12 2E
	pld		; 2B
	pld		; 2B
	rol $64F6.w		; 2E F6 64
	beq  50.b		; F0 32
	ora $00.b,S		; 03 00
	lsr $E031.w,X		; 5E 31 E0
	inc $0F74.w		; EE 74 0F
	sbc ($FC.b,X)		; E1 FC
	bpl -16.b		; 10 F0
	brk $1F.b		; 00 1F
	brk $64.b		; 00 64
	bpl  18.b		; 10 12
	ora ($00.b)		; 12 00
	cop $11.b		; 02 11
	adc $FF6416.l		; 6F 16 64 FF
	rti		; 40

	inc $000B.w		; EE 0B 00
	cmp $00FA.w		; CD FA 00
	stz $0E.b		; 64 0E
	lsr $0E11.w		; 4E 11 0E
	jsl $021EE1.l		; 22 E1 1E 02
	stz $F2.b		; 64 F2
	rts		; 60

	pea $312E.w		; F4 2E 31
	cmp ($CE.b,S),Y		; D3 CE
	brk $78.b		; 00 78
	cpy $0D.b		; C4 0D
	bmi -29.b		; 30 E3
	cpx #$F0F2.w		; E0 F2 F0
	ora $3164.w		; 0D 64 31
	sbc $20F46F.l,X		; FF 6F F4 20
	bvc   1.b		; 50 01
	and ($64.b,X)		; 21 64
	sbc ($FD.b,X)		; E1 FD
	ora $0F0EC0.l,X		; 1F C0 0E 0F
	ora ($0F.b,X)		; 01 0F
	bvc -53.b		; 50 CB
	plb		; AB
	dex		; CA
	lda $3FB3.w,X		; BD B3 3F
	ora $34.b,S		; 03 34
	mvn $00,$01		; 54 01 00
	brk $0F.b		; 00 0F
	xce		; FB
	rol $F00E.w,X		; 3E 0E F0
	bra  -1.b		; 80 FF
	ora $EE43FF.l		; 0F FF 43 EE
	lda $EFDD.w,X		; BD DD EF
	sty $F0.b,X		; 94 F0
	sbc $02.b,S		; E3 02
	sbc $134F.w,X		; FD 4F 13
	inc $800E.w,X		; FE 0E 80
	lda ($43.b,S),Y		; B3 43
	tsb $DCAA.w		; 0C AA DC
	tyx		; BB
	tax		; AA
	cpx #$2184.w		; E0 84 21
	inc $2133.w,X		; FE 33 21
	cmp $10C0.w		; CD C0 10
	cpx $CD90.w		; EC 90 CD
	bne  28.b		; D0 1C
	tsb $54.b		; 04 54
	bmi  -1.b		; 30 FF
	sbc ($94.b)		; F2 94
	trb $10FF.w		; 1C FF 10
	brk $FF.b		; 00 FF
	sbc $84FF24.l,X		; FF 24 FF 84
	sbc $53.b,S		; E3 53
	jsr ($1CC3.w,X)		; FC C3 1C
	ora $9410F1.l		; 0F F1 10 94
	bpl -16.b		; 10 F0
	beq -16.b		; F0 F0
	sbc $1D.b,S		; E3 1D
	asl $9054.w,X		; 1E 54 90
	ora $0053DF.l,X		; 1F DF 53 00
.ACCU 8
	sep #$20		; E2 20
	ora $FE90FE.l		; 0F FE 90 FE
	sbc $DFDD.w		; ED DD DF
	eor ($21.b,X)		; 41 21
	sbc $2F9001.l,X		; FF 01 90 2F
	sbc $22E5.w		; ED E5 22
	brk $FF.b		; 00 FF
	inc $84DD.w,X		; FE DD 84
	cpy #$3402.w		; C0 02 34
	ora ($D1.b)		; 12 D1
	jsr ($C021.w,X)		; FC 21 C0
	dey		; 88
	jsr $D24B.w		; 20 4B D2
	cmp $E2.b		; C5 E2
	cmp $846AF1.l,X		; DF F1 6A 84
	ora $0C5C52.l,X		; 1F 52 5C 0C
	eor $1A53.w,X		; 5D 53 1A
	inc $3480.w		; EE 80 34
	rti		; 40

	stp		; DB
	ldy $ECFD.w		; AC FD EC
	cmp $74E1.w		; CD E1 74
	cmp $06EF.w,X		; DD EF 06
	sbc $CE.b,X		; F5 CE
	cmp $840C40.l,X		; DF 40 0C 84
	ora ($13.b,X)		; 01 13
	beq -44.b		; F0 D4
	ora $1F0B.w,X		; 1D 0B 1F
	bit $EEA0.w		; 2C A0 EE
	inc $EFFF.w		; EE FF EF
	nop		; EA
	and $45.b,S		; 23 45
	bit $A4.b		; 24 A4
	sbc ($0E.b),Y		; F1 0E
	trb $F00E.w		; 1C 0E F0
	beq -16.b		; F0 F0
	cop $98.b		; 02 98
	cmp ($E7.b),Y		; D1 E7
	sta $A4.b,X		; 95 A4
	cpy $C2.b		; C4 C2
	inc $A3.b,X		; F6 A3
	dey		; 88
	cmp $2C1E3E.l		; CF 3E 1E 2C
	ora ($D2.b,S),Y		; 13 D2
	ora ($D1.b)		; 12 D1
	sty $51.b		; 84 51
	and ($40.b,S),Y		; 33 40
	eor ($23.b),Y		; 51 23
	sbc $0F.b,S		; E3 0F
	ora $4C98.w,Y		; 19 98 4C
	rol $2E1E.w		; 2E 1E 2E
	and $11F0F3.l,X		; 3F F3 F0 11
	tya		; 98
	pei ($C3.b)		; D4 C3
	sbc ($F2.b,X)		; E1 F2
	sbc ($F0.b,X)		; E1 F0
	ora $E0A4F5.l		; 0F F5 A4 E0
	cpy #$F0C0.w		; C0 C0 F0
	ora ($12.b,X)		; 01 12
	and $03.b,S		; 23 03
	tya		; 98
	cmp $00103D.l,X		; DF 3D 10 00
	cop $B4.b		; 02 B4
	sbc $A3.b,S		; E3 A3
	tya		; 98
	cpy $EE.b		; C4 EE
	and ($F4.b,X)		; 21 F4
	sep #$01		; E2 01
	sbc ($F0.b),Y		; F1 F0
	tya		; 98
	sbc ($F2.b),Y		; F1 F2
	cpx #$0D1F.w		; E0 1F 0D
	and $98A3D5.l		; 2F D5 A3 98
	ora $6D4D.w		; 0D 4D 6D
	and ($F0.b)		; 32 F0
	bit $0E10.w,X		; 3C 10 0E
	tay		; A8
	bpl -30.b		; 10 E2
	sbc ($F0.b,X)		; E1 F0
	ora $D0B511.l		; 0F 11 B5 D0
	tya		; 98
	bvc -12.b		; 50 F4
	bpl   2.b		; 10 02
	sbc $F25B.w,X		; FD 5B F2
	tsb $FEA4.w		; 0C A4 FE
	dec $BBDB.w		; CE DB BB
	jsr ($CFB2.w,X)		; FC B2 CF
	and ($A8.b,S),Y		; 33 A8
	sbc $E1.b		; E5 E1
	ora ($EF.b,X)		; 01 EF
	bit $DE03.w,X		; 3C 03 DE
	lsr $EEB4.w		; 4E B4 EE
	sbc $EDD0.w		; ED D0 ED
	and $5410E3.l		; 2F E3 10 54
	tay		; A8
	cmp ($0D.b,S),Y		; D3 0D
	sbc $AE.b		; E5 AE
	eor $20FDD6.l		; 4F D6 FD 20
	ldy $DD.b,X		; B4 DD
	ora $441DB2.l		; 0F B2 1D 44
	ora $52.b,S		; 03 52
	bit $A8.b		; 24 A8
	lda $A531.w		; AD 31 A5
	bit $BFE7.w,X		; 3C E7 BF
	rol $B4C4.w,X		; 3E C4 B4
	trb $E0F3.w		; 1C F3 E0
	eor ($15.b)		; 52 15
	and ($21.b),Y		; 31 21
	ora $EDEEA4.l		; 0F A4 EE ED
	sbc $DBEEFE.l		; EF FE EE DB
	cmp ($FC.b),Y		; D1 FC
	tay		; A8
	eor ($F0.b,X)		; 41 F0
	jsr $D110.w		; 20 10 D1
	asl $0F10.w		; 0E 10 0F
	dey		; 88
	bvc  20.b		; 50 14
	eor $FDDF.w		; 4D DF FD
	ora ($1A.b,X)		; 01 1A
	asl $1288.w,X		; 1E 88 12
	eor ($22.b)		; 52 22
	cmp ($E2.b),Y		; D1 E2
	ora $88E0DF.l		; 0F DF E0 88
	eor ($21.b,X)		; 41 21
	sbc ($0F.b,X)		; E1 0F
	cmp $0FF0.w,X		; DD F0 0F
	sep #$88		; E2 88
	sbc $44.b,S		; E3 44
	ora $1E01FF.l,X		; 1F FF 01 1E
	sbc $1288C2.l,X		; FF C2 88 12
	jsr $2E1F.w		; 20 1F 2E
	ora $D121BD.l		; 0F BD 21 D1
	dey		; 88
	sep #$05		; E2 05
	eor ($EF.b),Y		; 51 EF
	sbc $DFEF21.l,X		; FF 21 EF DF
	dey		; 88
	sbc ($32.b,S),Y		; F3 32
	beq   1.b		; F0 01
	ora ($CC.b,X)		; 01 CC
	lda ($31.b),Y		; B1 31
	dey		; 88
	sbc $1D4710.l		; EF 10 47 1D
	inc $4FF2.w		; EE F2 4F
	cpx $0D88.w		; EC 88 0D
	.db $62, $1F, $0E		; 62 1F 0E
	ora ($1D.b)		; 12 1D
	ldy $8811.w,X		; BC 11 88
	bpl -17.b		; 10 EF
	ora $71.b,X		; 15 71
	bne -34.b		; D0 DE
	eor $FD.b,S		; 43 FD
	tya		; 98
	sbc $0E0103.l		; EF 03 01 0E
	bpl  32.b		; 10 20
	cpx $98E2.w		; EC E2 98
	bpl  -1.b		; 10 FF
	brk $62.b		; 00 62
	asl $F3EF.w,X		; 1E EF F3
	and $E3DE98.l		; 2F 98 DE E3
	and $FE.b,S		; 23 FE
	sep #$02		; E2 02
	tsb $98B1.w		; 0C B1 98
	bmi  -1.b		; 30 FF
	brk $35.b		; 00 35
	rol $E3EF.w		; 2E EF E3
	jsr $DC98.w		; 20 98 DC
	ora $D11E42.l,X		; 1F 42 1E D1
	ora ($FD.b)		; 12 FD
	dec $4198.w		; CE 98 41
	asl $3600.w		; 0E 00 36
	rol $F2DF.w		; 2E DF F2
	jsr $BD98.w		; 20 98 BD
	ora $23.b,S		; 03 23
	sbc $FF30D0.l,X		; FF D0 30 FF
	bcs -104.b		; B0 98
	eor ($E0.b,X)		; 41 E0
	beq  69.b		; F0 45
	ora $F3E0.w		; 0D E0 F3
	and $12BE98.l		; 2F 98 BE 12
	and ($EE.b),Y		; 31 EE
.ACCU 8
	sep #$21		; E2 21
	dec $98C3.w,X		; DE C3 98
	and $6501FF.l,X		; 3F FF 01 65
	plx		; FA
	cmp $A82A34.l,X		; DF 34 2A A8
	bne  34.b		; D0 22
	bpl -17.b		; 10 EF
	brk $1E.b		; 00 1E
	cpy #$A854.w		; C0 54 A8
	ora $44C0.w,X		; 1D C0 44
	ora $429F.w,X		; 1D 9F 42
	and $B4DF.w		; 2D DF B4
	sbc ($21.b),Y		; F1 21
	sbc $CBFE00.l,X		; FF 00 FE CB
	cmp $54.b,S		; C3 54
	clv		; B8
	sbc $2D13.w		; ED 13 2D
	cmp $E10E24.l		; CF 24 0E E1
	and ($B4.b,X)		; 21 B4
	bmi -17.b		; 30 EF
	bpl -37.b		; 10 DB
	tyx		; BB
	ora $54.b		; 05 54
	bpl -92.b		; 10 A4
	mvp $AC,$3D		; 44 3D AC
	bit $1E.b		; 24 1E
.ACCU 8
.INDEX 8
	sep #$34		; E2 34
	asl $E0B4.w		; 0E B4 E0
	ora $BFCB.w		; 0D CB BF
	ror $40.b,X		; 76 40
	ora ($20.b,X)		; 01 20
	ldy $BB.b		; A4 BB
	pea $DF50.w		; F4 50 DF
	eor $1F.b,S		; 43 1F
	sbc $E0B8FC.l		; EF FC B8 E0
	sbc $62.b,S		; E3 62
	sbc $10E1.w		; ED E1 10
	cpy #$32.b		; C0 32
	tay		; A8
	asl $31B2.w,X		; 1E B2 31
	sbc $EFFD00.l		; EF 00 FD EF
	ora ($B8.b,S),Y		; 13 B8
	.db $42, $EF		; 42 EF
	cmp ($F0.b)		; D2 F0
	cpx #$22.b		; E0 22
	ora $12A8E2.l		; 0F E2 A8 12
	bne -16.b		; D0 F0
	jsr ($1E03.w,X)		; FC 03 1E
	sbc [$5B.b],Y		; F7 5B
	tay		; A8
	cmp $15CB41.l		; CF 41 CB 15
	lsr $51DF.w		; 4E DF 51
	sbc $11A8.w		; ED A8 11
	jsr ($2101.w,X)		; FC 01 21
	cmp ($63.b,X)		; C1 63
	cpy $A413.w		; CC 13 A4
	eor $3034BC.l		; 4F BC 34 30
	ora ($31.b,X)		; 01 31
	sbc $EFA8FF.l,X		; FF FF A8 EF
	cop $0E.b		; 02 0E
	and ($DF.b,S),Y		; 33 DF
	ora ($3D.b),Y		; 11 3D
	dec $7398.w		; CE 98 73
	eor $2DF1.w,X		; 5D F1 2D
	sbc $01BE32.l		; EF 32 BE 01
	ldy $EF.b,X		; B4 EF
	dec $FF23.w,X		; DE 23 FF
	and $3E.b		; 25 3E
	cmp $F0A822.l,X		; DF 22 A8 F0
	ora $1DF4D0.l,X		; 1F D0 F4 1D
	sbc $B8E20F.l,X		; FF 0F E2 B8
	jsl $4D02FD.l		; 22 FD 02 4D
	lda ($23.b),Y		; B1 23
	ora $9802.w		; 0D 02 98
	phx		; DA
	inc $5E.b,X		; F6 5E
	txs		; 9A
	and ($D2.b,S),Y		; 33 D2
	and ($BC.b)		; 32 BC
	tay		; A8
	and ($6B.b)		; 32 6B
	ldy #$23.b		; A0 23
	rol A		; 2A
	eor $EC.b,S		; 43 EC
	sbc $EF7FA8.l,X		; FF A8 7F EF
	beq  28.b		; F0 1C
	sbc $3F.b,X		; F5 3F
	bne  34.b		; D0 22
	tay		; A8
	asl $20C2.w		; 0E C2 20
	bpl  31.b		; 10 1F
	cmp $A41F13.l,X		; DF 13 1F A4
	cmp $CAFC.w,X		; DD FC CA
	cmp ($6E.b,S),Y		; D3 6E
	lda ($63.b,X)		; A1 63
	ora ($A4.b)		; 12 A4
	adc ($BD.b,X)		; 61 BD
	eor $21.b		; 45 21
	bmi -39.b		; 30 D9
	sbc ($2F.b,X)		; E1 2F
	tay		; A8
	sbc $DE25FF.l,X		; FF FF 25 DE
	bpl  34.b		; 10 22
	cpy #$01.b		; C0 01
	ldy $34.b		; A4 34
	asl $1CD7.w		; 0E D7 1C
	bne  17.b		; D0 11
	lda $DEB40C.l		; AF 0C B4 DE
	ora ($20.b)		; 12 20
	cmp ($40.b),Y		; D1 40
	cmp ($42.b)		; D2 42
	cmp $24B4.w,X		; DD B4 24
	sbc $F2EC12.l,X		; FF 12 EC F2
	ora $A800DE.l,X		; 1F DE 00 A8
	cpx #$14.b		; E0 14
	asl A		; 0A
	ora $4A.b,S		; 03 4A
	sbc ($5C.b,S),Y		; F3 5C
	lda ($A4.b)		; B2 A4
	trb $0B.b		; 14 0B
	sbc ($1E.b),Y		; F1 1E
	dec $CD0F.w		; CE 0F CD
	mvp $CE,$A8		; 44 A8 CE
	ora ($03.b,X)		; 01 03
	and $31CF.w,X		; 3D CF 31
	cpx $2A.b		; E4 2A
	ldy $EF.b		; A4 EF
	asl $21CE.w,X		; 1E CE 21
	cmp $EE01.w		; CD 01 EE
	bit $A8.b		; 24 A8
	xba		; EB
	and ($2D.b,X)		; 21 2D
	sbc $7D.b,S		; E3 7D
	lda ($22.b,X)		; A1 22
	cmp $6EA294.l		; CF 94 A2 6E
	lda $BCFF.w,X		; BD FF BC
	and $FB.b		; 25 FB
	cmp $98.b,X		; D5 98
	sbc #$06.b		; E9 06
	tad		; 5B
	sbc $0E1DE6.l		; EF E6 1D 0E
	cop $84.b		; 02 84
	lda $EB42.w		; AD 42 EB
	cpy $FB.b		; C4 FB
	dec $E4FF.w,X		; DE FF E4
	sty $30.b		; 84 30
	cpx #$53.b		; E0 53
	sbc ($13.b)		; F2 13
	inc $DF13.w,X		; FE 13 DF
	bra  17.b		; 80 11
	and $0EFECD.l,X		; 3F CD FE 0E
	lsr $0C.b,X		; 56 0C
	sbc $84.b,X		; F5 84
	rol $DD02.w		; 2E 02 DD
	lda ($41.b,S),Y		; B3 41
	dec $1E26.w		; CE 26 1E
	sty $02.b		; 84 02
	tas		; 1B
	ora ($EC.b),Y		; 11 EC
	ora ($21.b,X)		; 01 21
	beq  16.b		; F0 10
	dey		; 88
	trb $CF.b		; 14 CF
	bit $1003.w		; 2C 03 10
	asl $60FF.w		; 0E FF 60
	stz $CF.b,X		; 74 CF
	trb $50E4.w		; 1C E4 50
	bne -35.b		; D0 DD
	sbc $2384D2.l,X		; FF D2 84 23
	asl $F046.w		; 0E 46 F0
	sbc $2DBE.w		; ED BE 2D
	sbc ($94.b)		; F2 94
	brk $12.b		; 00 12
	ora ($F0.b,X)		; 01 F0
	inc $00FF.w,X		; FE FF 00
	and ($88.b)		; 32 88
	lda $3B.b,S		; A3 3B
	sbc ($01.b)		; F2 01
.ACCU 16
	rep #$E4		; C2 E4
	phy		; 5A
	sbc ($74.b),Y		; F1 74
	cop $FE.b		; 02 FE
	bit $FDCF.w,X		; 3C CF FD
	eor $5F.b,S		; 43 5F
	cmp $14B374.l,X		; DF 74 B3 14
	bpl  -3.b		; 10 FD
	jsl $EBFAEE.l		; 22 EE FA EB
	stz $24.b,X		; 74 24
	dec $044E.w,X		; DE 4E 04
	lsr $0DB0.w,X		; 5E B0 0D
	ora ($78.b),Y		; 11 78
	ldx $1A.b,Y		; B6 1A
	ora ($C2.b)		; 12 C2
	ora $CE42.w		; 0D 42 CE
	and ($74.b),Y		; 31 74
	and ($FD.b),Y		; 31 FD
	brk $F0.b		; 00 F0
	ora $2F22C1.l,X		; 1F C1 22 2F
	sei		; 78
	cmp ($3E.b,S),Y		; D3 3E
	cpy #$40.b		; C0 40
	dec A		; 3A
	tsa		; 3B
	jsl $3C7023.l		; 22 23 70 3C
	ldy $D0DE.w		; AC DE D0
	ora $3E23CE.l		; 0F CE 23 3E
	stz $E4.b,X		; 74 E4
	tsb $01FF.w		; 0C FF 01
	brk $11.b		; 00 11
	asl $7033.w,X		; 1E 33 70
	stp		; DB
	cmp $0DFE0E.l,X		; DF 0E FE 0D
	sbc ($45.b,X)		; E1 45
	eor $F00F74.l		; 4F 74 0F F0
	lda ($40.b,S),Y		; B3 40
	sbc ($2E.b,S),Y		; F3 2E
	cpy #$10.b		; C0 10
	stz $10.b,X		; 74 10
	asl $342D.w,X		; 1E 2D 34
	sbc $2CD05F.l		; EF 5F D0 2C
	bvs -17.b		; 70 EF
	inc $2323.w,X		; FE 23 23
	eor $F1.b,S		; 43 F1
	bit $31.b		; 24 31
	stz $F2.b,X		; 74 F2
	and $2012CD.l,X		; 3F CD 12 20
	sbc ($2F.b),Y		; F1 2F
	dec $E070.w,X		; DE 70 E0
	cop $14.b		; 02 14
	ora $54CF.w		; 0D CF 54
	tsb $3E.b		; 04 3E
	stz $3E.b,X		; 74 3E
	pea $C03E.w		; F4 3E C0
	eor $31E0.w		; 4D E0 31
	sbc $5E1064.l		; EF 64 10 5E
	inc $15E5.w		; EE E5 15
	ldy $F052.w,X		; BC 52 F0
	stz $0E.b,X		; 74 0E
	cpx $3B.b		; E4 3B
.INDEX 16
	rep #$5E		; C2 5E
	sbc $743C02.l,X		; FF 02 3C 74
	cop $5E.b		; 02 5E
	bne  32.b		; D0 20
	bne  49.b		; D0 31
	cmp ($0D.b),Y		; D1 0D
	stz $34.b		; 64 34
	brk $EC.b		; 00 EC
	and [$0D.b],Y		; 37 0D
	lda ($33.b),Y		; B1 33
	pea $0E74.w		; F4 74 0E
	brk $F5.b		; 00 F5
	ora $05BF.w,X		; 1D BF 05
	bit $70E4.w		; 2C E4 70
	ora ($22.b)		; 12 22
	sbc ($43.b,X)		; E1 43
	and ($FE.b,S),Y		; 33 FE
	.db $42, $42		; 42 42
	stz $3D.b,X		; 74 3D
	cpx #$FA25.w		; E0 25 FA
	pei ($3F.b)		; D4 3F
	sbc $E47401.l		; EF 01 74 E4
	ora $02DE13.l,X		; 1F 13 DE 02
	ora $0D1E.w		; 0D 1E 0D
	bvs -64.b		; 70 C0
	and $F401.w		; 2D 01 F4
	ora $3311DE.l,X		; 1F DE 11 33
	stz $E0.b,X		; 74 E0
	cpx #$EC42.w		; E0 42 EC
	and $32F0D1.l,X		; 3F D1 F0 32
	stz $3A.b,X		; 74 3A
	sbc $C1F245.l		; EF 45 F2 C1
	ora $1FF5.w,X		; 1D F5 1F
	stz $EC.b,X		; 74 EC
	rep #$05		; C2 05
	ora ($A1.b)		; 12 A1
	ora $703F2F.l,X		; 1F 2F 3F 70
	sbc ($40.b,S),Y		; F3 40
	eor ($F2.b,X)		; 41 F2
	jsl $01DE12.l		; 22 12 DE 01
	bvs  33.b		; 70 21
	sbc $F412F1.l		; EF F1 12 F4
	sbc $F025.w,X		; FD 25 F0
	stz $3F.b,X		; 74 3F
	asl $1B14.w		; 0E 14 1B
	sbc ($2E.b,S),Y		; F3 2E
	lda $DE7020.l,X		; BF 20 70 DE
	bit $3E.b,X		; 34 3E
	rep #$42		; C2 42
	and $2D.b,X		; 35 2D
	jsr ($4374.w,X)		; FC 74 43
	sbc $D0.b,S		; E3 D0
	ora ($FB.b,X)		; 01 FB
.INDEX 8
	sep #$5E		; E2 5E
	ora $D4CB70.l,X		; 1F 70 CB D4
	and $42.b,X		; 35 42
	ora ($0D.b),Y		; 11 0D
	sbc ($DF.b),Y		; F1 DF
	bvs  15.b		; 70 0F
	sbc $E0DE.w,X		; FD DE E0
	ora ($02.b,S),Y		; 13 02
	bit $3E.b,X		; 34 3E
	bvs   2.b		; 70 02
	jsr ($FDFD.w,X)		; FC FD FD
	ora $1FE3.w		; 0D E3 1F
	ora ($74.b),Y		; 11 74
	sbc ($05.b),Y		; F1 05
	sbc $E103.w		; ED 03 E1
	jsr ($12FF.w,X)		; FC FF 12
	bvs -48.b		; 70 D0
	and $EBF1BB.l		; 2F BB F1 EB
	jsl $7453F1.l		; 22 F1 53 74
	cmp $F02F30.l,X		; DF 30 2F F0
	asl $ECC4.w		; 0E C4 EC
	asl $74.b		; 06 74
	asl $21E1.w,X		; 1E E1 21
	ora ($2F.b,S),Y		; 13 2F
	asl A		; 0A
	and $0F84EF.l,X		; 3F EF 84 0F
	and $31E2F2.l		; 2F F2 E2 31
	cpy #$0F.b		; C0 0F
	sbc ($70.b)		; F2 70
	and ($EB.b,S),Y		; 33 EB
	sbc ($FA.b),Y		; F1 FA
	cmp $1F.b,X		; D5 1F
	xba		; EB
	cpy #$84.b		; C0 84
	and ($1C.b),Y		; 31 1C
	sbc $DD3F00.l		; EF 00 3F DD
	and ($30.b,X)		; 21 30
	sty $05.b		; 84 05
	eor $BE2DCE.l,X		; 5F CE 2D BE
	and $880ECE.l		; 2F CE 0E 88
	sbc ($2F.b,X)		; E1 2F
	lda ($40.b),Y		; B1 40
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	and $4B78F1.l		; 2F F1 78 4B
	rol $5FEF.w,X		; 3E EF 5F
	cop $D5.b		; 02 D5
	cmp ($F9.b,S),Y		; D3 F9
	tya		; 98
	ora ($0F.b,X)		; 01 0F
	sbc $D2F5FF.l		; EF FF F5 D2
	bpl  17.b		; 10 11
	dey		; 88
	dec $FE.b,X		; D6 FE
	tsb $CFF1.w		; 0C F1 CF
	ora ($26.b),Y		; 11 26
	sbc $88.b,X		; F5 88
	ora ($03.b,S),Y		; 13 03
	ldx #$D0.b		; A2 D0
	lda $F9D4.w		; AD D4 F9
	cmp #$A8.b		; C9 A8
	sbc ($5F.b)		; F2 5F
	ora ($01.b,X)		; 01 01
	ora $F10D00.l		; 0F 00 0D F1
	tya		; 98
	asl $3400.w,X		; 1E 00 34
	and $FE2E12.l		; 2F 12 2E FE
	asl $0FA8.w,X		; 1E A8 0F
	sbc ($1D.b,X)		; E1 1D
	ora $41F3.w		; 0D F3 41
	ora $FE98F3.l,X		; 1F F3 98 FE
	cpx #$D0.b		; E0 D0
	cpy #$12.b		; C0 12
	beq  36.b		; F0 24
	bmi -104.b		; 30 98
	sbc ($01.b),Y		; F1 01
	cmp $F2FE00.l,X		; DF 00 FE F2
	tsb $98EE.w		; 0C EE 98
	dec $15.b,X		; D6 15
	and $DBF3B5.l,X		; 3F B5 F3 DB
	sbc ($0E.b,S),Y		; F3 0E
	dey		; 88
	inc $1145.w		; EE 45 11
	bmi  66.b		; 30 42
	dec $4C0F.w		; CE 0F 4C
	tya		; 98
	beq  31.b		; F0 1F
	tsb $04ED.w		; 0C ED 04
	ora ($31.b)		; 12 31
	sbc ($88.b,X)		; E1 88
	sep #$0F		; E2 0F
	cpy $4EF1.w		; CC F1 4E
	cmp ($66.b),Y		; D1 66
	ora $F388.w		; 0D 88 F3
	rol $020E.w		; 2E 0E 02
	ora $EE2D.w		; 0D 2D EE
	phd		; 0B
	tya		; 98
	sbc $040E61.l		; EF 61 0E 04
	tsa		; 3B
	cpx #$12.b		; E0 12
	jsr ($E384.w,X)		; FC 84 E3
	eor $E0.b,S		; 43 E0
	eor $1D.b,X		; 55 1D
	lda $FC12.w		; AD 12 FC
	tya		; 98
	bpl  14.b		; 10 0E
	brk $1F.b		; 00 1F
	cmp $E224.w		; CD 24 E2
	pei ($98.b)		; D4 98
	rti		; 40

	ldx $2D13.w		; AE 13 2D
	bne  83.b		; D0 53
	xce		; FB
	and ($98.b,X)		; 21 98
	rol $53DF.w		; 2E DF 53
	inc A		; 1A
	sbc ($22.b),Y		; F1 22
	dec $98E2.w		; CE E2 98
	cmp $E3303F.l,X		; DF 3F 30 E3
	eor $F6CD.w,X		; 5D CD F6
	ora $42D498.l		; 0F 98 D4 42
	cpy $21E3.w		; CC E3 21
	cpx #$02.b		; E0 02
	rol $FFA8.w		; 2E A8 FF
	bpl  12.b		; 10 0C
	sbc ($40.b),Y		; F1 40
	inc $4C13.w,X		; FE 13 4C
	tay		; A8
	dec $2C15.w		; CE 15 2C
	sbc ($31.b)		; F2 31
	xba		; EB
	cpx $30.b		; E4 30
	tya		; 98
	xba		; EB
	bit $FC.b,X		; 34 FC
	cpy #$50.b		; C0 50
	tyx		; BB
	bit $0F.b,X		; 34 0F
	tay		; A8
	ora ($4D.b),Y		; 11 4D
	dec $3F30.w		; CE 30 3F
	sbc ($3F.b),Y		; F1 3F
	sbc $F3A8.w,X		; FD A8 F3
	bpl -16.b		; 10 F0
	ora ($FE.b,X)		; 01 FE
	beq  48.b		; F0 30
	xce		; FB
	ldy $F0.b,X		; B4 F0
	ora ($11.b,X)		; 01 11
	eor $1F.b,S		; 43 1F
	cpx #$33.b		; E0 33
	and ($A8.b,X)		; 21 A8
	pea $F1FC.w		; F4 FC F1
	and $1C.b,S		; 23 1C
	asl $F001.w		; 0E 01 F0
	ldy $FE.b,X		; B4 FE
	beq -48.b		; F0 D0
	jsl $11F143.l		; 22 43 F1 11
	ora ($A8.b),Y		; 11 A8
	ora $1D.b,S		; 03 1D
	sbc $0032.w,X		; FD 32 00
	ora $A8B31D.l,X		; 1F 1D B3 A8
	jsl $2203FC.l		; 22 FC 03 22
	cmp $002E10.l,X		; DF 10 2E 00
	tay		; A8
	ora ($0C.b),Y		; 11 0C
	bpl  17.b		; 10 11
	cop $FE.b		; 02 FE
	dec $A835.w,X		; DE 35 A8
	xce		; FB
	sbc ($04.b)		; F2 04
	sbc $D150.w,X		; FD 50 D1
	dec $A844.w,X		; DE 44 A8
	and $22BC.w,X		; 3D BC 22
	bvc  -1.b		; 50 FF
	cmp $A81112.l		; CF 12 11 A8
	cmp $11430D.l,X		; DF 0D 43 11
	jmp.w [$0141]		; DC 41 01
	cmp $FE30A8.l,X		; DF A8 30 FE
	sbc ($21.b,S),Y		; F3 21
	sbc $22E2.w		; ED E2 22
	lda $1F10B8.l,X		; BF B8 10 1F
	ora ($1D.b),Y		; 11 1D
	sbc ($5F.b),Y		; F1 5F
	cmp $30B404.l		; CF 04 B4 30
	dec $2FF2.w,X		; DE F2 2F
	cmp $FD01.w		; CD 01 FD
	bne -88.b		; D0 A8
	ora ($C2.b),Y		; 11 C2
	bpl  29.b		; 10 1D
	and ($FA.b,S),Y		; 33 FA
	beq  97.b		; F0 61
	clv		; B8
	inc $2C22.w		; EE 22 2C
	bne  33.b		; D0 21
	brk $F2.b		; 00 F2
	trb $F3A8.w		; 1C A8 F3
	and ($59.b,S),Y		; 33 59
	tsb $F0D6.w		; 0C D6 F0
	and $D1B8F3.l,X		; 3F F3 B8 D1
	beq  32.b		; F0 20
	sbc $D04DF3.l		; EF F3 4D D0
	and $B4.b,S		; 23 B4
	eor $0F160F.l,X		; 5F 0F 16 0F
	inc $1300.w,X		; FE 00 13
	tsb $00B8.w		; 0C B8 00
	.db $42, $DE		; 42 DE
	jsr $E200.w		; 20 00 E2
	eor $B4EE.w,X		; 5D EE B4
	sbc ($10.b,S),Y		; F3 10
	sbc $02EF20.l,X		; FF 20 EF 02
	xba		; EB
	bne -76.b		; D0 B4
	.db $42, $DE		; 42 DE
	sbc ($51.b),Y		; F1 51
	ora ($04.b,X)		; 01 04
	tsb $A40F.w		; 0C 0F A4
	bit $EF.b,X		; 34 EF
	cpx $D0FD.w		; EC FD D0
	ora ($2D.b)		; 12 2D
	bcs -88.b		; B0 A8
	ora $0C.b,X		; 15 0C
	cpx #$F6.b		; E0 F6
	cmp $3D12.w		; CD 12 3D
	lda $B8.b,S		; A3 B8
	bmi  -4.b		; 30 FC
	and $0E.b,S		; 23 0E
	bne  67.b		; D0 43
	ora $B8ED.w		; 0D ED B8
	mvn $B1,$FD		; 54 FD B1
	and $F0.b,S		; 23 F0
.ACCU 8
	sep #$E0		; E2 E0
	sbc ($B4.b,S),Y		; F3 B4
	eor $FC.b,S		; 43 FC
	sep #$42		; E2 42
	beq  34.b		; F0 22
	sbc $B4E0.w,X		; FD E0 B4
	eor ($CA.b),Y		; 51 CA
	cmp $31.b,S		; C3 31
	inc $FD32.w		; EE 32 FD
	tsb $B4.b		; 04 B4
	and ($F1.b,X)		; 21 F1
	and ($BD.b)		; 32 BD
	cop $2C.b		; 02 2C
	lda $FCB432.l,X		; BF 32 B4 FC
	ora $4F.b,S		; 03 4F
	cpx #$2F.b		; E0 2F
	ora ($52.b)		; 12 52
	ldy $E3A4.w,X		; BC A4 E3
	eor $1DF2AB.l		; 4F AB F2 1D
	inc $60.b,X		; F6 60
	lda $142DB4.l		; AF B4 2D 14
	eor ($BD.b,X)		; 41 BD
	bpl  46.b		; 10 2E
	bpl -33.b		; 10 DF
	ldy $D1.b,X		; B4 D1
	and ($1D.b,S),Y		; 33 1D
	cmp $E20E54.l,X		; DF 54 0E E2
	eor ($B4.b),Y		; 51 B4
	lda #$F5.b		; A9 F5
	rti		; 40

	lda $3201.w,X		; BD 01 32
	rol $B4B1.w		; 2E B1 B4
	bit $0E.b		; 24 0E
	and $FF001E.l		; 2F 1E 00 FF
	ora $24B4E0.l		; 0F E0 B4 24
	ora $53E1.w		; 0D E1 53
	lda $1D15.w,X		; BD 15 1D
	cmp ($B4.b),Y		; D1 B4
	brk $FF.b		; 00 FF
	ora $3D1300.l,X		; 1F 00 13 3D
	bcs  68.b		; B0 44
	bcs  63.b		; B0 3F
	sbc ($41.b,X)		; E1 41
	inc $0EF0.w		; EE F0 0E
	inc $B0E2.w		; EE E2 B0
	.db $42, $FE		; 42 FE
	and $23.b,S		; 23 23
	ora $FC31CF.l		; 0F CF 31 FC
	ldy $13.b,X		; B4 13
	ora $3F2DF1.l		; 0F F1 2D 3F
	bmi -47.b		; 30 D1
	sbc ($B4.b),Y		; F1 B4
	inc $0E11.w,X		; FE 11 0E
	cmp ($34.b),Y		; D1 34
	tas		; 1B
	cpx #$42.b		; E0 42
	ldy $1D.b		; A4 1D
	lda $CE1D04.l,X		; BF 04 1D CE
	and ($F1.b),Y		; 31 F1
	sbc ($94.b,X)		; E1 94
	ror $0A.b,X		; 76 0A
	sbc ($4E.b),Y		; F1 4E
	cpx $FFE2.w		; EC E2 FF
	dec $A0.b,X		; D6 A0
	and $041FE1.l		; 2F E1 1F 04
	adc $00.b,S		; 63 00
	eor $5E.b		; 45 5E
	ldy $C2.b		; A4 C2
	and ($DF.b),Y		; 31 DF
	and $E120F2.l,X		; 3F F2 20 E1
	.db $42, $A0		; 42 A0
	bit $11DE.w		; 2C DE 11
	brk $01.b		; 00 01
	phx		; DA
	ora ($54.b,S),Y		; 13 54
	ldy $C1.b,X		; B4 C1
	jsl $32DE1D.l		; 22 1D DE 32
	ora $01F0.w,X		; 1D F0 01
	bcs  18.b		; B0 12
	ora $1E34D1.l,X		; 1F D1 34 1E
	bne  33.b		; D0 21
	sbc $56A4.w		; ED A4 56
	tsb $54A1.w		; 0C A1 54
	plx		; FA
	cmp ($63.b,X)		; C1 63
	dex		; CA
	ldy #$B4.b		; A0 B4
	adc $EE.b,S		; 63 EE
	ora $EC53F2.l,X		; 1F F2 53 EC
	bne -96.b		; D0 A0
	jsl $1C44FF.l		; 22 FF 44 1C
	cmp ($51.b,S),Y		; D3 51
	stp		; DB
.ACCU 8
	sep #$A0		; E2 A0
	mvn $00,$0E		; 54 0E 00
	sbc $C21D04.l,X		; FF 04 1D C2
	eor $A0.b,S		; 43 A0
	ora $02F00F.l		; 0F 0F F0 02
	ora ($EB.b),Y		; 11 EB
	pea $A44D.w		; F4 4D A4
	cmp $6F.b		; C5 6F
	dec $DE31.w		; CE 31 DE
	and ($1B.b,S),Y		; 33 1B
	lda ($A0.b)		; B2 A0
	and ($0D.b,S),Y		; 33 0D
	ora $2F.b,X		; 15 2F
	ora ($3F.b,S),Y		; 13 3F
	cmp $98FF.w,X		; DD FF 98
	cmp ($41.b,S),Y		; D3 41
	cpx $22E1.w		; EC E1 22
	sbc $A05DFE.l,X		; FF FE 5D A0
	ora $3F.b,S		; 03 3F
	sbc ($2D.b),Y		; F1 2D
	cpy #$43.b		; C0 43
	asl $9800.w		; 0E 00 98
	bpl -31.b		; 10 E1
	and $4123FB.l		; 2F FB 23 41
	cpy $94D6.w		; CC D6 94
	mvn $D1,$FC		; 54 FC D1
	and ($EF.b)		; 32 EF
	dec $4F14.w,X		; DE 14 4F
	ldy $D0.b		; A4 D0
	ora ($13.b,X)		; 01 13
	ora $10E0.w,X		; 1D E0 10
	ora $43A4FE.l		; 0F FE A4 43
	sbc $FE03.w		; ED 03 FE
	eor ($DC.b,X)		; 41 DC
	ora $20.b,S		; 03 20
	bcc  29.b		; 90 1D
	dec $EF10.w		; CE 10 EF
	ora $D03FF2.l		; 0F F2 3F D0
	bcc  32.b		; 90 20
	brk $DC.b		; 00 DC
	sbc $3F.b,S		; E3 3F
	tyx		; BB
	cpx #$01.b		; E0 01
	ldy #$34.b		; A0 34
	tsb $43C1.w		; 0C C1 43
	cpx $2F13.w		; EC 13 2F
	sbc ($94.b),Y		; F1 94
	phd		; 0B
	cmp $42.b,S		; C3 42
	ora ($FC.b)		; 12 FC
	inc $1C33.w		; EE 33 1C
	sty $B4.b,X		; 94 B4
	bvc -51.b		; 50 CD
	.db $42, $EE		; 42 EE
	beq  17.b		; F0 11
	ora ($94.b),Y		; 11 94
	ora ($EE.b,X)		; 01 EE
	sbc ($1D.b)		; F2 1D
	sbc $30.b,S		; E3 30
	dec $9024.w		; CE 24 90
	rti		; 40

	cpy $1D02.w		; CC 02 1D
	cpx #$01.b		; E0 01
	bit $30.b,X		; 34 30
	bra -69.b		; 80 BB
	cmp $4D.b,S		; C3 4D
	lda ($41.b,S),Y		; B3 41
	wai		; CB
	and $2C.b,X		; 35 2C
	bcc -32.b		; 90 E0
	and $1C.b,S		; 23 1C
	lda $2C46.w		; AD 46 2C
	lda $1C8065.l		; AF 65 80 1C
.INDEX 8
	sep #$10		; E2 10
	rol $32.b		; 26 32
	inc $1011.w,X		; FE 11 10
	tya		; 98
	ora ($CE.b),Y		; 11 CE
	eor $2E.b,S		; 43 2E
	ldx #$2F.b		; A2 2F
	bpl  15.b		; 10 0F
	sty $B0.b		; 84 B0
	adc ($EA.b,S),Y		; 73 EA
	cpx $2D.b		; E4 2D
	lda $98F152.l,X		; BF 52 F1 98
	ora ($CD.b,S),Y		; 13 CD
	sbc ($3F.b)		; F2 3F
	ora ($0E.b,X)		; 01 0E
	sbc $3D.b		; E5 3D
	tya		; 98
	ldy #$33.b		; A0 33
	asl $35EF.w		; 0E EF 35
	plx		; FA
.ACCU 16
.INDEX 16
	rep #$71		; C2 71
	sty $1D.b,X		; 94 1D
	cmp ($41.b)		; D2 41
	cpx $33F3.w		; EC F3 33
	jsr ($71E1.w,X)		; FC E1 71
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
	brk $35.b		; 00 35
	brk $B7.b		; 00 B7
	sbc ($C7.b)		; F2 C7
	sbc ($10.b)		; F2 10
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	bvc  36.b		; 50 24
	ora ($16.b,S),Y		; 13 16
	inc $10B2.w		; EE B2 10
	cmp ($64.b),Y		; D1 64
	cmp ($DF.b),Y		; D1 DF
	lda ($FE.b),Y		; B1 FE
	sbc $0BEB.w		; ED EB 0B
	ora $F268.w		; 0D 68 F2
	cmp ($E0.b),Y		; D1 E0
	brk $1D.b		; 00 1D
	lsr $F101.w,X		; 5E 01 F1
	pla		; 68
	and $F2.b,S		; 23 F2
	ora ($03.b)		; 12 03
.INDEX 8
	sep #$5C		; E2 5C
	ora $C3.b,X		; 15 C3
	sei		; 78
	bpl  31.b		; 10 1F
	asl $0F1F.w		; 0E 1F 0F
	cpx #$CF.b		; E0 CF
	sbc $4CF078.l,X		; FF 78 F0 4C
	cmp $0033.w		; CD 33 00
	bvc -48.b		; 50 D0
	ora $78.b,S		; 03 78
	ora $12EC24.l		; 0F 24 EC 12
	rti		; 40

	and $F1.b,S		; 23 F1
	cmp ($78.b),Y		; D1 78
	bvc  47.b		; 50 2F
	and $2DF200.l		; 2F 00 F2 2D
	and $780E.w		; 2D 0E 78
	sbc $F0DD1B.l,X		; FF 1B DD F0
	and $43D109.l		; 2F 09 D1 43
	sei		; 78
	and ($4A.b,S),Y		; 33 4A
	ora $3131.w		; 0D 31 31
	ora $6816BF.l		; 0F BF 16 68
	eor ($1F.b,S),Y		; 53 1F
	inc $5614.w,X		; FE 14 56
	asl $D0C4.w		; 0E C4 D0
	sei		; 78
	jsr $E020.w		; 20 20 E0
	ora $CDEFFF.l		; 0F FF EF CD
	inc $0278.w,X		; FE 78 02
	ora $559A.w,X		; 1D 9A 55
	and ($34.b)		; 32 34
	phx		; DA
	cmp [$88.b]		; C7 88
	ora ($F2.b),Y		; 11 F2
	sbc $52E1.w,X		; FD E1 52
	ora ($0F.b,X)		; 01 0F
	bne -120.b		; D0 88
	and ($2D.b,S),Y		; 33 2D
	ora $2F12F0.l,X		; 1F F0 12 2F
	cmp $00A8FE.l,X		; DF FE A8 00
	asl $000F.w		; 0E 0F 00
	bit $2E.b		; 24 2E
	dec $A8F2.w		; CE F2 A8
	and ($1F.b,X)		; 21 1F
	cmp $2104.w,X		; DD 04 21
	ora $9802EE.l,X		; 1F EE 02 98
	rts		; 60

	cpy $25EF.w		; CC EF 25
	eor ($CE.b,X)		; 41 CE
	sbc ($12.b,S),Y		; F3 12
	dey		; 88
	inc A		; 1A
	cmp $1E15.w		; CD 15 1E
	lda $DBF1.w,X		; BD F1 DB
	bcs -72.b		; B0 B8
	ora ($52.b),Y		; 11 52
	phx		; DA
	sbc $ED3031.l		; EF 31 30 ED
	ora ($A8.b)		; 12 A8
	.db $62, $EB, $BD		; 62 EB BD
	rol $20.b		; 26 20
	cmp $A82214.l		; CF 14 22 A8
	stp		; DB
	sbc $F00033.l,X		; FF 33 00 F0
	ora ($0C.b)		; 12 0C
	sbc $01C8.w,X		; FD C8 01
	brk $0F.b		; 00 0F
	sbc ($02.b),Y		; F1 02
	jsl $B8E1DC.l		; 22 DC E1 B8
	ora $30.b,X		; 15 30
	cpx $3013.w		; EC 13 30
	cpx $34D0.w		; EC D0 34
	tay		; A8
	and $23DE.w		; 2D DE 23
	and $44F2BC.l,X		; 3F BC F2 44
	and $ED98.w		; 2D 98 ED
	and ($BC.b,X)		; 21 BC
	sbc ($34.b,X)		; E1 34
	lsr $D2A9.w		; 4E A9 D2
	iny		; C8
	ora ($30.b),Y		; 11 30
	sbc $32D0.w		; ED D0 32
	ora ($DF.b),Y		; 11 DF
	cop $B4.b		; 02 B4
	mvp $BB,$1D		; 44 1D BB
	sbc ($32.b,S),Y		; F3 32
	ora $A812F0.l		; 0F F0 12 A8
	jmp.w [$34E3]		; DC E3 34
	brk $DE.b		; 00 DE
	ora $C80000.l		; 0F 00 00 C8
	ora ($0F.b,X)		; 01 0F
	ora $2112F1.l		; 0F F1 12 21
	cmp $B8E0.w		; CD E0 B8
	adc $3E.b		; 65 3E
	cmp $2023.w		; CD 23 20
	cmp $42D2.w,X		; DD D2 42
	tay		; A8
	bit $23BE.w,X		; 3C BE 23
	rol $04CD.w,X		; 3E CD 04
	mvp $A8,$0C		; 44 0C A8
	dec $0000.w,X		; DE 00 00
	ora ($12.b),Y		; 11 12
	sbc $11BE.w,X		; FD BE 11
	iny		; C8
	and $2C.b,S		; 23 2C
	cmp $2311.w,X		; DD 11 23
	asl $12E0.w		; 0E E0 12
	tay		; A8
	tas		; 1B
	plb		; AB
	ora [$63.b]		; 07 63
	jmp.w [$24D1]		; DC D1 24
	inc $B0A8.w		; EE A8 B0
	eor $31.b		; 45 31
	cpy $11EF.w		; CC EF 11
	sbc ($12.b)		; F2 12
	iny		; C8
	brk $FF.b		; 00 FF
	sbc ($02.b),Y		; F1 02
	and ($DD.b),Y		; 31 DD
	bne  50.b		; D0 32
	clv		; B8
	and ($DB.b,X)		; 21 DB
	ora ($30.b,S),Y		; 13 30
	cmp $34F0.w,X		; DD F0 34
	asl $CFA8.w		; 0E A8 CF
	and $0E.b,S		; 23 0E
	dec $4036.w		; CE 36 40
	jmp.w [$B8EF]		; DC EF B8
	bpl -16.b		; 10 F0
	ora ($00.b)		; 12 00
	sbc $23FF.w,X		; FD FF 23
	eor $C4.b		; 45 C4
	bmi -52.b		; 30 CC
	cpx #$22.b		; E0 22
	ora $0F22F0.l,X		; 1F F0 22 0F
	tay		; A8
	bne  87.b		; D0 57
	asl $40A0.w,X		; 1E A0 40
	tsb $36EF.w		; 0C EF 36
	tay		; A8
	eor $2FF0DB.l		; 4F DB F0 2F
	beq   4.b		; F0 04
	and $0FC8DB.l		; 2F DB C8 0F
	and ($22.b,X)		; 21 22
	jmp.w [$30E1]		; DC E1 30
	jsr $B4EF.w		; 20 EF B4
	sbc ($43.b,S),Y		; F3 43
	sbc $03CE.w		; ED CE 03
	bmi -15.b		; 30 F1
	ora ($A8.b),Y		; 11 A8
	cmp $2D45E1.l		; CF E1 45 2D
	dec $000F.w,X		; DE 0F 00
	brk $C8.b		; 00 C8
	ora ($00.b,X)		; 01 00
	cpx #$01.b		; E0 01
	ora $1F.b,S		; 03 1F
	lda $62A811.l,X		; BF 11 A8 62
	tsb $64D3.w		; 0C D3 64
	tsx		; BA
	cpy #$24.b		; C0 24
	lsr $FFA8.w		; 4E A8 FF
	ora ($FE.b,S),Y		; 13 FE
	dec $3213.w,X		; DE 13 32
	ora $B80E.w		; 0D 0E B8
	ora $101000.l		; 0F 00 10 10
	inc $0300.w,X		; FE 00 03
	and ($B4.b,S),Y		; 33 B4
	lsr $E0AC.w,X		; 5E AC E0
	ora ($FF.b),Y		; 11 FF
	ora $43.b,S		; 03 43
	sbc $21C598.l,X		; FF 98 C5 21
	ora $AC3214.l		; 0F 14 32 AC
	sbc ($03.b,X)		; E1 03
	tya		; 98
	.db $42, $FF		; 42 FF
	sbc $11F2C0.l		; EF C0 F2 11
	asl $B8BE.w,X		; 1E BE B8
	brk $24.b		; 00 24
	ora $0003AE.l,X		; 1F AE 03 00
	brk $F2.b		; 00 F2
	tay		; A8
	and ($DD.b)		; 32 DD
	sbc ($1E.b)		; F2 1E
	beq -16.b		; F0 F0
	and ($3D.b)		; 32 3D
	sty $0F.b,X		; 94 0F
	ora $10DF.w		; 0D DF 10
	ora ($1F.b,X)		; 01 1F
	jmp.w [$B8DD]		; DC DD B8
	sbc ($0F.b),Y		; F1 0F
	ora $DD3201.l,X		; 1F 01 32 DD
	sbc ($20.b,X)		; E1 20
	tya		; 98
	xce		; FB
	ora $37.b,S		; 03 37
	xce		; FB
.ACCU 8
.INDEX 8
	sep #$7E		; E2 7E
	wai		; CB
	brk $88.b		; 00 88
	sbc [$64.b],Y		; F7 64
	cmp ($2E.b)		; D2 2E
	lda $3F12.w		; AD 12 3F
	ora ($98.b,X)		; 01 98
	beq  31.b		; F0 1F
	cmp $21F1.w,X		; DD F1 21
	cpx #$25.b		; E0 25
	eor ($94.b,X)		; 41 94
	adc $DC01CE.l,X		; 7F CE 01 DC
	bne  51.b		; D0 33
	and ($F1.b,X)		; 21 F1
	dey		; 88
	and $CC.b,X		; 35 CC
	sbc $D02130.l		; EF 30 21 D0
	and ($DD.b),Y		; 31 DD
	dey		; 88
	sbc ($20.b)		; F2 20
	ora $F0.b,S		; 03 F0
	asl $D3DB.w		; 0E DB D3
	jsl $10E188.l		; 22 88 E1 10
	and ($FC.b),Y		; 31 FC
	sbc $11312F.l		; EF 2F 31 11
	dey		; 88
	cmp $22010F.l,X		; DF 0F 01 22
	ora $3202FE.l		; 0F FE 02 32
	dey		; 88
	sbc $2FF0D0.l,X		; FF D0 F0 2F
	cpx #$14.b		; E0 14
	eor $0D88DF.l		; 4F DF 88 0D
	beq -31.b		; F0 E1
	tsb $12.b		; 04 12
	inc $E0E0.w,X		; FE E0 E0
	sei		; 78
	sbc ($11.b),Y		; F1 11
	jsr $0CF4.w		; 20 F4 0C
	cmp $882D54.l,X		; DF 54 2D 88
	dec $3213.w,X		; DE 13 32
	dec $1100.w,X		; DE 00 11
	sbc $88F1.w		; ED F1 88
	bit $00.b,X		; 34 00
	sbc $FFD0F0.l,X		; FF F0 D0 FF
	and ($3F.b)		; 32 3F
	sei		; 78
	and #$FE.b		; 29 FE
	ora ($FF.b,X)		; 01 FF
	tsb $6320.w		; 0C 20 63
	xba		; EB
	sei		; 78
	cop $1F.b		; 02 1F
	jsr ($54FE.w,X)		; FC FE 54
	bit $F1E2.w		; 2C E2 F1
	sei		; 78
	rol $05AC.w		; 2E AC 05
	ror $2F2E.w,X		; 7E 2E 2F
	ora $78FD.w,Y		; 19 FD 78
	ora $3F2161.l		; 0F 61 21 3F
	inc $00D1.w		; EE D1 00
	tsb $CE74.w		; 0C 74 CE
	.db $42, $20		; 42 20
	mvp $DD,$4F		; 44 4F DD
	cpy $7822.w		; CC 22 78
	sbc $2210.w		; ED 10 22
	cmp $33DF.w,X		; DD DF 33
	rol $78D1.w		; 2E D1 78
	and $C0.b,S		; 23 C0
	stp		; DB
	ora ($3D.b),Y		; 11 3D
	jsl $78FE50.l		; 22 50 FE 78
	cmp $1E10.w,X		; DD 10 1E
	trb $F0.b		; 14 F0
	sbc ($10.b,S),Y		; F3 10
	sbc $1068.w		; ED 68 10
	ora $10.b,S		; 03 10
	sbc $FF50.w		; ED 50 FF
	tas		; 1B
	sbc $5168.w,X		; FD 68 51
	lda $E7.b,S		; A3 E7
	bpl  -1.b		; 10 FF
	cmp $24DE.w,Y		; D9 DE 24
	sei		; 78
	ora $20.b,S		; 03 20
	and $31D0CE.l		; 2F CE D0 31
	lsr $640F.w		; 4E 0F 64
	mvp $ED,$2F		; 44 2F ED
	lda ($B1.b),Y		; B1 B1
	inc $F1EF.w,X		; FE EF F1
	pla		; 68
	sbc $3FE0B1.l,X		; FF B1 E0 3F
	cop $EF.b		; 02 EF
	rol $787D.w		; 2E 7D 78
	cmp $2F10FF.l,X		; DF FF 10 2F
	bmi  32.b		; 30 20
	jmp.w [$680D]		; DC 0D 68
	stz $61.b,X		; 74 61
	inc $D1FF.w		; EE FF D1
	jsr $0B2E.w		; 20 2E 0B
	sei		; 78
	rol $3000.w,X		; 3E 00 30
	sbc $3FD30E.l		; EF 0E D3 3F
	bpl 104.b		; 10 68
	ldy #$04.b		; A0 04
	ora ($BE.b,X)		; 01 BE
	inc A		; 1A
	ora ($42.b)		; 12 42
	rti		; 40

	sei		; 78
	ora $000FFD.l		; 0F FD 0F 00
	eor ($0D.b),Y		; 51 0D
	ora $6803.w,X		; 1D 03 68
	dec $B0.b,X		; D6 B0
	cmp ($F0.b,X)		; C1 F0
	and ($01.b,S),Y		; 33 01
	ldx $68EE.w		; AE EE 68
	tsb $F1.b		; 04 F1
	trb $A2.b		; 14 A2
	dec A		; 3A
	ora $78BB31.l		; 0F 31 BB 78
	pea $01F3.w		; F4 F3 01
	asl $F0F0.w		; 0E F0 F0
	ora ($2F.b,X)		; 01 2F
	stz $E1.b		; 64 E1
	cpy #$A2.b		; C0 A2
	and $AC0C11.l,X		; 3F 11 0C AC
	cpx $64.b		; E4 64
	trb $2C.b		; 14 2C
	cpx $BF0B.w		; EC 0B BF
	ora $24.b,X		; 15 24
	eor $E01278.l,X		; 5F 78 12 E0
	cmp ($22.b,X)		; C1 22
	cpx #$21.b		; E0 21
	sbc ($FF.b,X)		; E1 FF
	stz $DC.b		; 64 DC
	sbc ($30.b,S),Y		; F3 30
	dec $F0EA.w		; CE EA F0
	eor ($5C.b,X)		; 41 5C
	pla		; 68
	ora $0F06.w,X		; 1D 06 0F
	asl $2F2D.w		; 0E 2D 2F
	jmp.w [$6443]		; DC 43 64
	and ($12.b)		; 32 12
	eor $AD1B64.l		; 4F 64 1B AD
	bpl -16.b		; 10 F0
	stz $45.b		; 64 45
	eor $01E30F.l		; 4F 0F E3 01
	tyx		; BB
	cmp ($BB.b),Y		; D1 BB
	stz $01.b,X		; 74 01
	jsl $E0BD1F.l		; 22 1F BD E0
	ora $A0F2F0.l		; 0F F0 F2 A0
	sbc $03FFFF.l,X		; FF FF FF 03
	rol $40C1.w,X		; 3E C1 40
	ora $A0.b,S		; 03 A0
	and $30D1.w		; 2D D1 30
	ldx $E030.w,Y		; BE 30 E0
	and ($13.b)		; 32 13
	tay		; A8
	pld		; 2B
	ldy $5E.b,X		; B4 5E
.INDEX 8
	sep #$1D		; E2 1D
	rol $32E1.w		; 2E E1 32
	bcs -16.b		; B0 F0
	ora ($1F.b)		; 12 1F
	sbc $140D02.l,X		; FF 02 0D 14
	sbc $41B4.w,X		; FD B4 41
	bcs  64.b		; B0 40
	tsb $1C.b		; 04 1C
	cmp ($0D.b,S),Y		; D3 0D
	ora $A0.b,S		; 03 A0
	eor $BEDBCE.l		; 4F CE DB BE
	brk $01.b		; 00 01
	bpl  17.b		; 10 11
	sty $DD.b,X		; 94 DD
	cop $BD.b		; 02 BD
	brk $F2.b		; 00 F2
	and $8420F1.l,X		; 3F F1 20 84
	cmp $000BF1.l		; CF F1 0B 00
	rti		; 40

	cpy #$22.b		; C0 22
	ora $88.b,S		; 03 88
	cmp ($0F.b,X)		; C1 0F
	asl $0D31.w		; 0E 31 0D
	ora ($0E.b),Y		; 11 0E
	ora $F688.w		; 0D 88 F6
	cpx $CA25.w		; EC 25 CA
	ora ($2B.b,X)		; 01 2B
	eor ($D3.b)		; 52 D3
	sei		; 78
	sbc $EE.b,X		; F5 EE
	ora $4E.b,S		; 03 4E
	cop $10.b		; 02 10
	cmp $E08841.l		; CF 41 88 E0
	jsl $CF21C1.l		; 22 C1 21 CF
	rol $FEEC.w,X		; 3E EC FE
	dey		; 88
	cmp $3FE322.l,X		; DF 22 E3 3F
	rol $10.b,X		; 36 10
	cmp ($EE.b),Y		; D1 EE
	dey		; 88
	rol $1201.w		; 2E 01 12
	sbc ($20.b),Y		; F1 20
	dec $1130.w		; CE 30 11
	tya		; 98
	ora ($DF.b),Y		; 11 DF
	inc $25EC.w,X		; FE EC 25
	cmp ($02.b),Y		; D1 02
	.db $42, $98		; 42 98
	ora $DD02.w,X		; 1D 02 DD
	bmi -18.b		; 30 EE
	bvc -15.b		; 50 F1
	bpl -120.b		; 10 88
	cpy #$1E.b		; C0 1E
	ora ($FE.b,S),Y		; 13 FE
	ora ($BD.b,X)		; 01 BD
	ldy $98F2.w		; AC F2 98
	lsr $EE.b		; 46 EE
	and $FC.b,X		; 35 FC
	sbc ($FC.b)		; F2 FC
	sbc ($1F.b,S),Y		; F3 1F
	dey		; 88
	ora $3F.b,S		; 03 3F
	tsb $EC00.w		; 0C 00 EC
	asl $EB.b		; 06 EB
	sbc $F0A8.w,Y		; F9 A8 F0
	eor $D0.b,S		; 43 D0
	eor ($EE.b,X)		; 41 EE
	ora ($EF.b,X)		; 01 EF
	sbc ($98.b)		; F2 98
	and ($D1.b,X)		; 21 D1
	eor ($DC.b,X)		; 41 DC
	and ($DD.b),Y		; 31 DD
	and $EC.b,S		; 23 EC
	tya		; 98
	cmp $261F16.l,X		; DF 16 1F 26
	bit $FA02.w		; 2C 02 FA
	cmp $98.b,S		; C3 98
	ora $1F2121.l		; 0F 21 21 1F
	ora ($CC.b,X)		; 01 CC
	ora ($ED.b,S),Y		; 13 ED
	tay		; A8
	ora $F033EF.l,X		; 1F EF 33 F0
	bmi -46.b		; 30 D2
	and $00A8CF.l,X		; 3F CF A8 00
	brk $11.b		; 00 11
	bpl -15.b		; 10 F1
	rol $10D0.w		; 2E D0 10
	tay		; A8
	cpx #$10.b		; E0 10
	lda ($61.b),Y		; B1 61
	cmp ($20.b)		; D2 20
	cpx #$3E.b		; E0 3E
	tya		; 98
	inc $52DE.w		; EE DE 52
.INDEX 16
	rep #$51		; C2 51
	sbc $A8AE4E.l		; EF 4E AE A8
	bpl -16.b		; 10 F0
	ora $E330D4.l		; 0F D4 30 E3
	and $98F1.w		; 2D F1 98
	lsr $0FAF.w		; 4E AF 0F
	bmi   2.b		; 30 02
	jsl $A84EEE.l		; 22 EE 4E A8
	dec $EF13.w,X		; DE 13 EF
	beq -14.b		; F0 F2
	eor $A82EF2.l		; 4F F2 2E A8
	cmp ($3D.b)		; D2 3D
	bne  47.b		; D0 2F
	ora ($00.b,X)		; 01 00
	bmi -32.b		; 30 E0
	tay		; A8
	rol $20DE.w,X		; 3E DE 20
	ora $3102FF.l		; 0F FF 02 31
	beq -104.b		; F0 98
	eor $EB10D0.l		; 4F D0 10 EB
	ora ($12.b,X)		; 01 12
	sbc ($23.b),Y		; F1 23
	tay		; A8
	ora $E00E1F.l		; 0F 1F 0E E0
	jsr $E4EE.w		; 20 EE E4
	and $E24198.l,X		; 3F 98 41 E2
	and $A14CA1.l		; 2F A1 4C A1
	and ($01.b,X)		; 21 01
	tya		; 98
	and $F1FF50.l		; 2F 50 FF F1
	jmp.w [$0FF1]		; DC F1 0F
	ldy #$4698.w		; A0 98 46
	ora $1B.b		; 05 1B
	eor ($EC.b,X)		; 41 EC
	sbc $0B.b,S		; E3 0B
	brk $88.b		; 00 88
	adc ($42.b,X)		; 61 42
	dec $6E.b,X		; D6 6E
	ldy #$CC11.w		; A0 11 CC
	stp		; DB
	tay		; A8
	beq -32.b		; F0 E0
	and ($22.b,X)		; 21 22
	bmi -49.b		; 30 CF
	rol $94EF.w,X		; 3E EF 94
	stp		; DB
	bne -22.b		; D0 EA
	cmp ($41.b,S),Y		; D3 41
	and $32.b		; 25 32
	jsr $F0A8.w		; 20 A8 F0
	asl $FE0F.w,X		; 1E 0F FE
	beq -12.b		; F0 F4
	rti		; 40

	sbc ($A8.b,S),Y		; F3 A8
	bit $0CF0.w		; 2C F0 0C
	brk $FF.b		; 00 FF
	and ($1E.b)		; 32 1E
	jsl $2B0198.l		; 22 98 01 2B
	sbc $1FC33E.l,X		; FF 3E C3 1F
	brk $DD.b		; 00 DD
	tay		; A8
	cpx #$250E.w		; E0 0E 25
	eor $00D20E.l		; 4F 0E D2 00
	cmp $0298.w,X		; DD 98 02
	ora $F1.b,X		; 15 F1
	eor ($12.b,X)		; 41 12
	sbc $78EE1F.l,X		; FF 1F EE 78
.ACCU 16
	rep #$23		; C2 23
	bmi -32.b		; 30 E0
	cmp $14BEEF.l,X		; DF EF BE 14
	tya		; 98
	jsl $EFCD0F.l		; 22 0F CD EF
	jsl $1F0020.l		; 22 20 00 1F
	sei		; 78
	stz $3D.b,X		; 74 3D
	cmp $53E4.w,X		; DD E4 53
	cpx #$F35D.w		; E0 5D F3
	sei		; 78
	eor ($10.b)		; 52 10
	ora $BDAFFD.l		; 0F FD AF BD
	sbc $FD88EC.l,X		; FF EC 88 FD
	cpx #$1304.w		; E0 04 13
	ora $02FF.w,X		; 1D FF 02
	ora $78.b,X		; 15 78
	and ($E2.b,X)		; 21 E2
	ora ($34.b,S),Y		; 13 34
	ora $E4E5F3.l,X		; 1F F3 E5 E4
	sei		; 78
	sbc $0C0B.w		; ED 0B 0C
	tyx		; BB
	ora $ABAE.w		; 0D AE AB
	cpy $78.b		; C4 78
	eor ($43.b,X)		; 41 43
	ora $5215F2.l		; 0F F2 15 52
	dec A		; 3A
	ora $201388.l,X		; 1F 88 13 20
	trb $01.b		; 14 01
	ora ($1E.b,X)		; 01 1E
	beq -33.b		; F0 DF
	dey		; 88
	inc $E2FD.w		; EE FD E2
	ora $0FFFDC.l,X		; 1F DC FF 0F
	bmi 120.b		; 30 78
	bit $4043.w		; 2C 43 40
	ror $1C.b		; 66 1C
	cmp ($11.b),Y		; D1 11
	mvp $23,$78		; 44 78 23
	pea $F0F2.w		; F4 F2 F0
	ora $BCD0F0.l		; 0F F0 D0 BC
	dey		; 88
	dec $ED00.w,X		; DE 00 ED
	dec $22F2.w,X		; DE F2 22
	ora $0F.b,S		; 03 0F
	sei		; 78
	rti		; 40

	eor $A7DF34.l		; 4F 34 DF A7
	trb $36.b		; 14 36
	rol $0288.w,X		; 3E 88 02
	sbc ($0F.b),Y		; F1 0F
	ora $DAFF0F.l		; 0F 0F FF DA
	sbc ($78.b),Y		; F1 78
	rol $AFCD.w		; 2E CD AF
	sbc [$33.b],Y		; F7 33
	ora $7822E0.l,X		; 1F E0 22 78
	lsr $3D.b		; 46 3D
	cmp $312425.l,X		; DF 25 24 31
	cmp ($31.b)		; D2 31
	dey		; 88
	ora ($F1.b,X)		; 01 F1
	asl $FDFF.w		; 0E FF FD
	dec $1FF2.w		; CE F2 1F
	dey		; 88
	cpy $231D.w		; CC 1D 23
	jsl $120FF0.l		; 22 F0 0F 12
	mvp $EC,$88		; 44 88 EC
	beq  34.b		; F0 22
	jsl $10103E.l		; 22 3E 10 10
	bpl -120.b		; 10 88
	ora $FE1F.w,X		; 1D 1F FE
	inc $E3CF.w		; EE CF E3
	and $88CD.w		; 2D CD 88
	cpx #$3133.w		; E0 33 31
	beq -16.b		; F0 F0
	ora ($33.b)		; 12 33
	cpx $D578.w		; EC 78 D5
	asl $61.b,X		; 16 61
	jmp $302020.l		; 5C 20 20 30
	ora $0EFE88.l		; 0F 88 FE 0E
	cmp $05ED.w,X		; DD ED 05
	asl $119C.w,X		; 1E 9C 11
	dey		; 88
	ora ($51.b,S),Y		; 13 51
	cmp $5213F0.l,X		; DF F0 13 52
	lda $7800.w,X		; BD 00 78
	stz $63.b,X		; 74 63
	ora $1213.w,X		; 1D 13 12
	ora $88D01C.l,X		; 1F 1C D0 88
	inc $CEEE.w,X		; FE EE CE
	trb $2C.b		; 14 2C
	ldy $22F1.w,X		; BC F1 22
	dey		; 88
	rts		; 60

	sbc $7102F0.l		; EF F0 02 71
	cmp $22F1.w,X		; DD F1 22
	sei		; 78
	eor [$1F.b]		; 47 1F
	cpx #$1320.w		; E0 20 13
	sbc $881CC0.l		; EF C0 1C 88
	sbc $F5EC.w		; ED EC F5
	and $0311A9.l		; 2F A9 11 03
	mvp $0C,$88		; 44 88 0C
	beq -14.b		; F0 F2
	mvn $E0,$0B		; 54 0B E0
	bmi  52.b		; 30 34
	sei		; 78
	brk $E1.b		; 00 E1
	jsr $2E10.w		; 20 10 2E
	cmp $88DAFE.l,X		; DF FE DA 88
	sbc $41D3.w		; ED D3 41
	ldy $01EE.w		; AC EE 01
	adc $2D.b,S		; 63 2D
	dey		; 88
	ora $1E53E2.l		; 0F E2 53 1E
	bne   1.b		; D0 01
	and $3F.b,S		; 23 3F
	dey		; 88
	bpl   0.b		; 10 00
	brk $1F.b		; 00 1F
	sbc $CEEBFE.l,X		; FF FE EB CE
	tya		; 98
	sbc ($52.b)		; F2 52
	ora $E2BD.w,X		; 1D BD E2
	bit $1F.b,X		; 34 1F
	cmp $53E198.l,X		; DF 98 E1 53
	asl $03E0.w,X		; 1E E0 03
	ora ($ED.b)		; 12 ED
	ora $1F1298.l		; 0F 98 12 1F
	asl $E001.w		; 0E 01 E0
	inc $D5FD.w		; EE FD D5
	tay		; A8
	and ($1F.b,S),Y		; 33 1F
	inc $20EE.w		; EE EE 20
	ora $982200.l,X		; 1F 00 22 98
	eor ($DB.b)		; 52 DB
	cpy #$1F32.w		; C0 32 1F
	sbc $A82041.l		; EF 41 20 A8
	cpx #$1FF0.w		; E0 F0 1F
	asl $F000.w,X		; 1E 00 F0
	cpy #$A835.w		; C0 35 A8
	rti		; 40

	sbc $F2BE.w		; ED BE F2
	and ($01.b,X)		; 21 01
	and $00.b,S		; 23 00
	tya		; 98
	plb		; AB
	sbc ($34.b,X)		; E1 34
	beq   1.b		; F0 01
	and ($FC.b),Y		; 31 FC
	dec $11A8.w,X		; DE A8 11
	bpl   0.b		; 10 00
	sbc $35D1EE.l,X		; FF EE D1 35
	eor ($A8.b)		; 52 A8
	xba		; EB
	ldy $3201.w,X		; BC 01 32
	ora ($22.b),Y		; 11 22
	asl $98DE.w		; 0E DE 98
	ora ($42.b,X)		; 01 42
	ora ($04.b),Y		; 11 04
	ora $E0DB.w,X		; 1D DB E0
	and ($A8.b,S),Y		; 33 A8
	ora ($0F.b),Y		; 11 0F
	ora $E1DE.w		; 0D DE E1
	stz $23.b		; 64 23
	inc $ABA8.w		; EE A8 AB
	sbc ($23.b),Y		; F1 23
	and $2E.b,S		; 23 2E
	ora $98F1EF.l		; 0F EF F1 98
	ora $51.b,S		; 03 51
	ora ($FC.b),Y		; 11 FC
	cmp $35FF.w,X		; DD FF 35
	bit $A8.b		; 24 A8
	beq -35.b		; F0 DD
	dec $5202.w,X		; DE 02 52
	bit $0D.b		; 24 0D
	tsx		; BA
	tay		; A8
	cmp ($44.b),Y		; D1 44
	jsr $1100.w		; 20 00 11
	sbc $32FF.w,X		; FD FF 32
	tya		; 98
	bpl  -2.b		; 10 FE
	ora $42D3EE.l,X		; 1F EE D3 42
	rol $A8EC.w,X		; 3E EC A8
	sbc $43E1.w		; ED E1 43
	and ($FF.b),Y		; 31 FF
	sbc $98F2BE.l,X		; FF BE F2 98
	ror $21.b,X		; 76 21
	cop $EE.b		; 02 EE
	lda $42F6.w,X		; BD F6 42
	sbc $0E0F98.l		; EF 98 0F 0E
	cmp $2D2104.l		; CF 04 21 2D
	sbc $1198E2.l		; EF E2 98 11
	lsr $C1EE.w		; 4E EE C1
	ora ($2F.b)		; 12 2F
	bmi  32.b		; 30 20
	tya		; 98
	sbc $1EF0.w		; ED F0 1E
	bpl -14.b		; 10 F2
	ora ($1F.b,S),Y		; 13 1F
	sbc $F098.w		; ED 98 F0
	ora ($10.b),Y		; 11 10
	cmp $FE3123.l,X		; DF 23 31 FE
	inc $0478.w		; EE 78 04
	and ($34.b,S),Y		; 33 34
	cpx #$9CFF.w		; E0 FF 9C
	rol $98C1.w		; 2E C1 98
	bpl  30.b		; 10 1E
	ora ($F4.b)		; 12 F4
	beq  -4.b		; F0 FC
	bne  34.b		; D0 22
	dey		; 88
	ora ($15.b)		; 12 15
	and ($CB.b),Y		; 31 CB
	sbc $EFFF24.l		; EF 24 FF EF
	tya		; 98
	ora $1F04EE.l,X		; 1F EE 04 1F
	ora ($00.b),Y		; 11 00
	bmi -67.b		; 30 BD
	tya		; 98
	ora ($D0.b),Y		; 11 D0
	and ($34.b,X)		; 21 34
	rol $ECE0.w		; 2E E0 EC
	ora $522488.l		; 0F 88 24 52
	stp		; DB
	lda ($51.b),Y		; B1 51
	ora $8846E0.l		; 0F E0 46 88
	dec A		; 3A
	stp		; DB
	lda ($60.b),Y		; B1 60
	inc $40.b		; E6 40
	ora ($FA.b),Y		; 11 FA
	dey		; 88
	bne  49.b		; D0 31
	ora $DAEF01.l,X		; 1F 01 EF DA
	asl $30.b		; 06 30
	tya		; 98
	trb $FC.b		; 14 FC
	ora ($FE.b,X)		; 01 FE
	inc $4E16.w		; EE 16 4E
	cpx #$F388.w		; E0 88 F3
	cpy #$65B0.w		; C0 B0 65
	tsb $EF0E.w		; 0C 0E EF
	lda $102398.l		; AF 98 23 10
	sbc $B00B24.l,X		; FF 24 0B B0
	bmi  46.b		; 30 2E
	dey		; 88
	sbc $52.b,X		; F5 52
	tsx		; BA
	and ($1D.b,X)		; 21 1D
	and $F0.b,S		; 23 F0
	inc $D188.w		; EE 88 D1
	eor $D211E0.l		; 4F E0 11 D2
	bpl  16.b		; 10 10
	sbc $C02288.l,X		; FF 88 22 C0
	bne  49.b		; D0 31
	asl $4030.w		; 0E 30 40
	cpx $D378.w		; EC 78 D3
	ora ($90.b),Y		; 11 90
	.db $42, $0F		; 42 0F
	ora $E2D4.w		; 0D D4 E2
	tya		; 98
	brk $1F.b		; 00 1F
	ora $2201.w,X		; 1D 01 22
	sbc $3EE4.w,X		; FD E4 3E
	sty $DB.b		; 84 DB
	sbc $01DE00.l,X		; FF 00 DE 01
	inc $DEED.w,X		; FE ED DE
	sty $C9.b		; 84 C9
	cmp $5B47.w		; CD 47 5B
	lda $EF4135.l,X		; BF 35 41 EF
	sty $DF.b		; 84 DF
	bit $22.b,X		; 34 22
	lsr $2E.b,X		; 56 2E
	sbc $980A23.l,X		; FF 23 0A 98
	cmp $20.b,X		; D5 20
	ora $F00B00.l,X		; 1F 00 0B F0
	eor ($2C.b),Y		; 51 2C
	tya		; 98
	sbc $0F1C22.l,X		; FF 22 1C 0F
	and ($DD.b),Y		; 31 DD
	ora ($3E.b,S),Y		; 13 3E
	sty $1F.b,X		; 94 1F
	ora ($1F.b)		; 12 1F
	cmp $1E14.w,X		; DD 14 1E
	sbc ($10.b),Y		; F1 10
	sty $1D.b		; 84 1D
	bcs  33.b		; B0 21
	rol $3203.w,X		; 3E 03 32
	cpy $84FB.w		; CC FB 84
	cop $12.b		; 02 12
	and ($1C.b)		; 32 1C
	lda $66B3.w,X		; BD B3 66
	.db $42, $74		; 42 74
	cmp ($DE.b)		; D2 DE
	inc $2DE6.w,X		; FE E6 2D
	ldy #$2D11.w		; A0 11 2D
	sty $00.b		; 84 00
	sbc ($F0.b),Y		; F1 F0
	sbc ($30.b),Y		; F1 30
	inc $B1FE.w,X		; FE FE B1
	sty $22.b		; 84 22
	brk $51.b		; 00 51
	beq   3.b		; F0 03
	bpl  15.b		; 10 0F
	ora $88.b,S		; 03 88
	sbc ($1E.b,X)		; E1 1E
	ora ($10.b,X)		; 01 10
	cmp $D4FD51.l		; CF 51 FD D4
	sty $10.b		; 84 10
	eor $00E0FF.l		; 4F FF E0 00
	jsr $FF31.w		; 20 31 FF
	stz $03.b,X		; 74 03
	eor ($F3.b),Y		; 51 F3
	bit $2D.b,X		; 34 2D
	lda ($24.b),Y		; B1 24
	inc A		; 1A
	dey		; 88
	and ($4D.b,X)		; 21 4D
	sep #$C1		; E2 C1
	ora ($95.b)		; 12 95
	bmi  14.b		; 30 0E
	sei		; 78
	cmp #$226F.w		; C9 6F 22
	asl $933D.w,X		; 1E 3D 93
	adc $740E.w,X		; 7D 0E 74
	bpl  85.b		; 10 55
	cmp $1104.w		; CD 04 11
	and ($AF.b,X)		; 21 AF
	cmp ($74.b,X)		; C1 74
	bit $EAD4.w		; 2C D4 EA
	lda ($FE.b)		; B2 FE
	cop $FF.b		; 02 FF
	sbc ($64.b),Y		; F1 64
	stp		; DB
	lda ($36.b,S),Y		; B3 36
	bmi  26.b		; 30 1A
.INDEX 16
	rep #$19		; C2 19
	and ($84.b,S),Y		; 33 84
	eor $1211F1.l		; 4F F1 11 12
	inc $12D0.w,X		; FE D0 12
	inc $3088.w,X		; FE 88 30
	ora $E31F.w		; 0D 1F E3
	rol $3DE2.w		; 2E E2 3D
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	cmp $1F0E.w,X		; DD 0E 1F
	trb $2D.b		; 14 2D
	cmp ($22.b,S),Y		; D3 22
	ora $74.b,X		; 15 74
	asl $4000.w		; 0E 00 40
	cop $BD.b		; 02 BD
	bpl   2.b		; 10 02
	eor $F278.w,X		; 5D 78 F2
	cmp ($5D.b)		; D2 5D
	lda ($21.b,S),Y		; B3 21
	sbc $B431.w		; ED 31 B4
	bra -18.b		; 80 EE
	ora ($FC.b,X)		; 01 FC
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	brk $0F.b		; 00 0F
	sbc ($74.b),Y		; F1 74
	pea $2C30.w		; F4 30 2C
	cmp $500A.w,X		; DD 0A 50
	asl $84EE.w		; 0E EE 84
	bit $DE.b		; 24 DE
	cpx #$E030.w		; E0 30 E0
	cmp ($21.b),Y		; D1 21
	sbc $1FFE74.l,X		; FF 74 FE 1F
	and ($2C.b,S),Y		; 33 2C
	bpl  67.b		; 10 43
	lda ($FE.b,X)		; A1 FE
	sty $01.b		; 84 01
	and $05F1.w		; 2D F1 05
	ora $20FD.w		; 0D FD 20
	ora ($84.b,X)		; 01 84
	sbc ($00.b,X)		; E1 00
	tsb $0002.w		; 0C 02 00
	cop $ED.b		; 02 ED
	ora ($74.b,S),Y		; 13 74
	rol $15BD.w		; 2E BD 15
	asl $0E72.w		; 0E 72 0E
	lda $7414.w,X		; BD 14 74
	eor ($AF.b)		; 52 AF
	and $EEF3FF.l,X		; 3F FF F3 EE
	cmp $B28865.l		; CF 65 88 B2
	brk $00.b		; 00 00
	beq   2.b		; F0 02
	cmp $2C.b		; C5 2C
	sbc ($74.b),Y		; F1 74
	sbc ($D1.b),Y		; F1 D1
	sbc ($55.b),Y		; F1 55
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	sbc $0374FF.l		; EF FF 74 03
	bit $F4ED.w		; 2C ED F4
	cpy #$30.b		; C0 30
	and ($EA.b,X)		; 21 EA
	stz $B6.b,X		; 74 B6
	eor $E0F0.w		; 4D F0 E0
	sbc $31.b,X		; F5 31
	ora $2274CE.l,X		; 1F CE 74 22
	and $4E02.w,X		; 3D 02 4E
	asl $0CB6.w		; 0E B6 0C
	ora $44B374.l		; 0F 74 B3 44
	sbc ($D3.b,X)		; E1 D3
	wai		; CB
	adc ($D4.b,X)		; 61 D4
	ora $41F070.l		; 0F 70 F0 41
	and $2D.b,S		; 23 2D
	lda ($30.b),Y		; B1 30
	ora $78DD.w		; 0D DD 78
	ora $E031.w,X		; 1D 31 E0
	eor $3FF3CF.l		; 4F CF F3 3F
.ACCU 8
.INDEX 8
	sep #$78		; E2 78
	and $D0FF.w,X		; 3D FF D0
	and $2FDC42.l,X		; 3F 42 DC 2F
	bpl 112.b		; 10 70
	plb		; AB
	cmp $E0BC.w,X		; DD BC E0
	inc $FFFF.w,X		; FE FF FF
	adc $74.b		; 65 74
	brk $B2.b		; 00 B2
	tas		; 1B
	ora ($33.b)		; 12 33
	sbc $78F10F.l,X		; FF 0F F1 78
	ldx $2E.b,Y		; B6 2E
	bne -63.b		; D0 C1
	bvc  30.b		; 50 1E
	and $740F.w		; 2D 0F 74
	ora $DE.b,S		; 03 DE
	rti		; 40

	sbc ($F3.b),Y		; F1 F3
	ora VMAIN.w		; 0D 15 21
	stz $1C.b,X		; 74 1C
	pei ($EE.b)		; D4 EE
	jsl $FFC26D.l		; 22 6D C2 FF
	sbc $74.b		; E5 74
	ora ($4E.b),Y		; 11 4E
	xce		; FB
	cpy #$3C.b		; C0 3C
	ora $1F.b,S		; 03 1F
	and $112380.l		; 2F 80 23 11
	cop $1E.b		; 02 1E
	cmp $04020F.l,X		; DF 0F 02 04
	dey		; 88
	rol $1EEC.w		; 2E EC 1E
	ora ($3F.b,S),Y		; 13 3F
	cpx #$2E.b		; E0 2E
	bpl -124.b		; 10 84
	ora ($EF.b,X)		; 01 EF
	ora ($E3.b)		; 12 E3
	ora $43E30D.l		; 0F 0D E3 43
	stz $AA.b,X		; 74 AA
	cmp ($1C.b,X)		; C1 1C
	lsr $5D.b,X		; 56 5D
	cpy $F2D5.w		; CC D5 F2
	stz $07.b,X		; 74 07
	xba		; EB
	rol $00FE.w,X		; 3E FE 00
	ora $4E.b,X		; 15 4E
	bcs -128.b		; B0 80
	bit $42.b,X		; 34 42
	sbc $00D01E.l		; EF 1E D0 00
	inc $8403.w,X		; FE 03 84
	ora $E60C.w		; 0D 0C E6
	and ($0D.b)		; 32 0D
	ora $1FE3.w,X		; 1D E3 1F
	bra  17.b		; 80 11
	ora $1022DC.l		; 0F DC 22 10
	eor $0E.b,S		; 43 0E
	sbc ($84.b),Y		; F1 84
	rol $C30F.w		; 2E 0F C3
	brk $42.b		; 00 42
	ora $74110B.l,X		; 1F 0B 11 74
	rol $ED.b,X		; 36 ED
	cpx #$F3.b		; E0 F3
	cmp ($CA.b),Y		; D1 CA
	dec $9436.w,X		; DE 36 94
	eor $0F.b		; 45 0F
	ora $F142DE.l		; 0F DE 42 F1
	beq -31.b		; F0 E1
	sty $E1.b,X		; 94 E1
	dec $00F2.w,X		; DE F2 00
	eor ($EC.b)		; 52 EC
	ora ($F0.b,X)		; 01 F0
	dey		; 88
	and $40DA4D.l,X		; 3F 4D DA 40
	and ($D1.b)		; 32 D1
	ora ($E0.b,X)		; 01 E0
	sty $F1.b		; 84 F1
	ora $22CE0F.l		; 0F 0F CE 22
	sbc ($52.b,X)		; E1 52
	pld		; 2B
	sty $BE.b		; 84 BE
	sbc $2D.b,X		; F5 2D
	mvp $AF,$5C		; 44 5C AF
	phx		; DA
	ora ($88.b,X)		; 01 88
	bvc -53.b		; 50 CB
.ACCU 8
	sep #$6E		; E2 6E
	sbc ($32.b,X)		; E1 32
	ldx $745D.w		; AE 5D 74
	nop		; EA
	lda ($1C.b,X)		; A1 1C
	ora ($33.b)		; 12 33
	bit $C1.b,X		; 34 C1
	sbc [$84.b],Y		; F7 84
	rol $0F1C.w		; 2E 1C 0F
	cmp $1CDE.w,X		; DD DE 1C
	eor $61.b		; 45 61
	sty $EF.b		; 84 EF
	ora ($01.b,X)		; 01 01
	trb $ED.b		; 14 ED
	sbc $84DF2C.l,X		; FF 2C DF 84
	sbc ($2F.b),Y		; F1 2F
	ora ($5D.b,X)		; 01 5D
	ora $EF.b,S		; 03 EF
	ora ($FD.b)		; 12 FD
	sty $24.b		; 84 24
	inc $F0EE.w		; EE EE F0
	ora $F212.w		; 0D 12 F2
	bit $84.b,X		; 34 84
	sbc ($41.b),Y		; F1 41
	jmp.w [$1EB3]		; DC B3 1E
	ldy $EA43.w		; AC 43 EA
	sty $03.b,X		; 94 03
	tsb $3FE3.w		; 0C E3 3F
	inc $0001.w		; EE 01 00
	sbc ($84.b),Y		; F1 84
	ora [$31.b],Y		; 17 31
	ora ($21.b,S),Y		; 13 21
	stz $F0.b		; 64 F0
	eor $DF.b		; 45 DF
	sty $11.b,X		; 94 11
	sbc $ED11.w		; ED 11 ED
	sbc $CEDDDE.l,X		; FF DE DD CE
	dey		; 88
	dec $3C4E.w,X		; DE 4E 3C
	cmp ($35.b),Y		; D1 35
	tsb $1B07.w		; 0C 07 1B
	tya		; 98
	ora ($0E.b)		; 12 0E
	sbc ($02.b),Y		; F1 02
	ora $032D11.l		; 0F 11 2D 03
	tya		; 98
	ora $FAD5.w		; 0D D5 FA
	bit $EB.b		; 24 EB
	cop $FE.b		; 02 FE
	bit $98.b		; 24 98
	tas		; 1B
	and $1B.b		; 25 1B
	pea $F41C.w		; F4 1C F4
	sbc $B3884F.l,X		; FF 4F 88 B3
	jsl $E26CB0.l		; 22 B0 6C E2
	pld		; 2B
	lda ($EF.b,S),Y		; B3 EF
	tay		; A8
	asl $41F0.w		; 0E F0 41
	inc $DE34.w		; EE 34 DE
	ora $FF.b,S		; 03 FF
	sty $F0.b,X		; 94 F0
	eor $0C.b		; 45 0C
	tsb $1A.b		; 04 1A
	cmp $98BDFA.l		; CF FA BD 98
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	dec $E24C.w,X		; DE 4C E2
	ora ($26.b,S),Y		; 13 26
	cpy $5C98.w		; CC 98 5C
	rol $F6DF.w,X		; 3E DF F6
	beq  94.b		; F0 5E
	jsr $98FE.w		; 20 FE 98
	pea $23FB.w		; F4 FB 23
	asl A		; 0A
	ora ($DC.b),Y		; 11 DC
	trb $0C.b		; 14 0C
	tya		; 98
	mvn $1D,$D3		; 54 D3 1D
	pea $14DB.w		; F4 DB 14
	trb $98E6.w		; 1C E6 98
	rti		; 40

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	bcs  47.b		; B0 2F
	sbc $A8100D.l		; EF 0D 10 A8
	sbc $36EE31.l		; EF 31 EE 36
	jmp.w [$EC32]		; DC 32 EC
	ora ($98.b)		; 12 98
	inc $0F25.w,X		; FE 25 0F
	and $C21E01.l,X		; 3F 01 1E C2
	rol $FFA8.w,X		; 3E A8 FF
	ora $EFF3E1.l		; 0F E1 F3 EF
	asl $3B.b		; 06 3B
	pei ($A8.b)		; D4 A8
	pld		; 2B
	sbc $1D.b,S		; E3 1D
	ora ($01.b)		; 12 01
	and $981D01.l		; 2F 01 1D 98
	pei ($3D.b)		; D4 3D
	cmp ($1E.b,X)		; C1 1E
	sbc $31E1.w,X		; FD E1 31
	sta ($A8.b,S),Y		; 93 A8
	and ($D0.b)		; 32 D0
	eor $020EC2.l		; 4F C2 0E 02
	sbc $E0A852.l		; EF 52 A8 E0
	and ($C0.b,X)		; 21 C0
	and $1FF0.w,X		; 3D F0 1F
	beq  15.b		; F0 0F
	tay		; A8
	sbc ($1E.b),Y		; F1 1E
	pea $C33F.w		; F4 3F C3
	ora $DEF3.w,X		; 1D F3 DE
	tya		; 98
	eor ($C7.b,S),Y		; 53 C7
	rti		; 40

	lda ($7A.b,S),Y		; B3 7A
	lda ($FE.b,S),Y		; B3 FE
	brk $98.b		; 00 98
	sbc $A13F.w,X		; FD 3F A1
	and ($CD.b,S),Y		; 33 CD
	eor $1A.b		; 45 1A
	rti		; 40

	tya		; 98
	lda ($F2.b)		; B2 F2
	sbc $513F.w,X		; FD 3F 51
	and ($F5.b,X)		; 21 F5
	cmp $0198.w		; CD 98 01
	and #$EE12.w		; 29 12 EE
	sbc $FB.b,S		; E3 FB
	eor ($EB.b)		; 52 EB
	tya		; 98
	eor $EF.b,S		; 43 EF
	eor ($EB.b),Y		; 51 EB
	and ($DE.b)		; 32 DE
	bpl  67.b		; 10 43
	tya		; 98
	sbc ($42.b),Y		; F1 42
	xba		; EB
	ora ($EC.b,X)		; 01 EC
	jsr $2DFF.w		; 20 FF 2D
	tya		; 98
	sbc $44EE11.l,X		; FF 11 EE 44
	ora $DF3F.w		; 0D 3F DF
	trb $3398.w		; 1C 98 33
	sbc $FD66.w,X		; FD 66 FD
	bit $CC.b,X		; 34 CC
	brk $F0.b		; 00 F0
	tya		; 98
	asl $FF01.w		; 0E 01 FF
	inc $2DF2.w,X		; FE F2 2D
	sbc $21.b,X		; F5 21
	tya		; 98
	sbc $E03F.w		; ED 3F E0
	cpy $11.b		; C4 11
	ora ($7E.b),Y		; 11 7E
	sbc ($98.b),Y		; F1 98
	beq -63.b		; F0 C1
	tas		; 1B
	jsr $E20F.w		; 20 0F E2
	dec $A812.w,X		; DE 12 A8
	sbc $0E33.w,X		; FD 33 0E
	sbc ($0D.b,S),Y		; F3 0D
	brk $1F.b		; 00 1F
	ora ($98.b),Y		; 11 98
	sbc $3E.b,X		; F5 3E
	sbc ($3D.b),Y		; F1 3D
	cpy #$FE2F.w		; C0 2F FE
	and $FF0FA8.l		; 2F A8 0F FF
	bpl  46.b		; 10 2E
	cpx $0E.b		; E4 0E
	ora ($0F.b),Y		; 11 0F
	tya		; 98
	cpx $C0.b		; E4 C0
	bpl  34.b		; 10 22
	eor $CD00F3.l		; 4F F3 00 CD
	tya		; 98
	and $0D110F.l		; 2F 0F 11 0D
	sbc M7X.w		; ED 1F 21
	cmp ($98.b,X)		; C1 98
	.db $62, $DF, $01		; 62 DF 01
	sbc $100200.l		; EF 00 02 10
	.db $42, $88		; 42 88
	ora $BF21.w,X		; 1D 21 BF
	inc $2E10.w,X		; FE 10 2E
	cmp $A811.w		; CD 11 A8
	sbc $1D12.w,X		; FD 12 1D
	ora $3E.b,S		; 03 3E
	cpy #$FF4F.w		; C0 4F FF
	tya		; 98
	pea $111F.w		; F4 1F 11
	rts		; 60

	cmp ($02.b,X)		; C1 02
	cpx $982F.w		; EC 2F 98
	jsr $EFE1.w		; 20 E1 EF
	ora $35DF.w		; 0D DF 35
	cmp $9842.w,X		; DD 42 98
	bit $D4E1.w		; 2C E1 D4
	asl $4001.w		; 0E 01 40
	cpx $03.b		; E4 03
	dey		; 88
	tsb $2F0E.w		; 0C 0E 2F
	ldy #$EB51.w		; A0 51 EB
	ora $E098CD.l		; 0F CD 98 E0
	bvc -64.b		; 50 C0
	rti		; 40

	ora $013C.w,X		; 1D 3C 01
	brk $88.b		; 00 88
	sbc $3F.b		; E5 3F
	and $14.b,X		; 35 14
	inc $3CEF.w		; EE EF 3C
	sbc ($88.b,X)		; E1 88
	bmi -21.b		; 30 EB
	tsb $A01D.w		; 0C 1D A0
	stz $CE.b,X		; 74 CE
	ror $F198.w		; 6E 98 F1
	cmp ($F0.b)		; D2 F0
	ora $110004.l,X		; 1F 04 00 11
	bmi -120.b		; 30 88
	cpx #$F0D2.w		; E0 D2 F0
	ora $2E5C.w		; 0D 5C 2E
	dec $88FC.w		; CE FC 88
	brk $25.b		; 00 25
	tyx		; BB
	jmp ($ED35.w)		; 6C 35 ED
	lda ($6F.b)		; B2 6F
	dey		; 88
	cmp $E4.b,S		; C3 E4
	and $40.b,X		; 35 40
	brk $EF.b		; 00 EF
	asl $881F.w		; 0E 1F 88
	ora ($0F.b)		; 12 0F
	cmp $EDFF.w,X		; DD FF ED
	ldy $35.b,X		; B4 35
	plb		; AB
	tya		; 98
	tsb $02.b		; 04 02
	cmp $5100.w,X		; DD 00 51
	bne -14.b		; D0 F2
	eor ($88.b)		; 52 88
	bit $24A2.w		; 2C A2 24
	inc A		; 1A
	cmp $BDFF34.l,X		; DF 34 FF BD
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	cmp $03.b,S		; C3 03
	ora $0FC0F3.l		; 0F F3 C0 0F
	dey		; 88
	and ($21.b),Y		; 31 21
	sbc ($F3.b)		; F2 F3
	eor ($2F.b),Y		; 51 2F
	sbc ($F2.b),Y		; F1 F2
	dey		; 88
	ora $2FF0.w,X		; 1D F0 2F
	and $D1DD.w		; 2D DD D1
	beq  15.b		; F0 0F
	dey		; 88
	sbc $03E6.w,X		; FD E6 03
	cmp $342F.w		; CD 2F 34
	bne -16.b		; D0 F0
	tya		; 98
	rti		; 40

	and ($1E.b,X)		; 21 1E
	brk $10.b		; 00 10
	ora $8810F0.l,X		; 1F F0 10 88
	bit $EFDD.w,X		; 3C DD EF
	asl $DF0E.w,X		; 1E 0E DF
	bit $EC.b,X		; 34 EC
	dey		; 88
	jsr $13F2.w		; 20 F2 13
	dec $5504.w,X		; DE 04 55
	sbc ($10.b,X)		; E1 10
	sei		; 78
	and ($40.b),Y		; 31 40
	cmp $4F14.w		; CD 14 4F
	sbc $88EFAA.l		; EF AA EF 88
	ora $F2D0.w		; 0D D0 F2
	ora $1412EC.l		; 0F EC 12 14
	ora $021C88.l		; 0F 88 1C 02
	tsb $32.b		; 04 32
	and $1E0013.l,X		; 3F 13 00 1E
	sei		; 78
	bpl  34.b		; 10 22
	sbc $FA00.w		; ED 00 FA
	sbc $1DD9.w		; ED D9 1D
	sei		; 78
	bit $FEEC.w,X		; 3C EC FE
	adc $0C.b,S		; 63 0C
	ora $78535D.l,X		; 1F 5D 53 78
	brk $43.b		; 00 43
	and [$73.b]		; 27 73
	cmp $0024.w		; CD 24 00
	ora ($88.b,X)		; 01 88
	cmp $EE1E13.l		; CF 13 1E EE
	ldx $F00F.w,Y		; BE 0F F0
	brk $88.b		; 00 88
	sbc $FF041F.l		; EF 1F 04 FF
.ACCU 16
.INDEX 16
	rep #$33		; C2 33
	cop $00.b		; 02 00
	dey		; 88
	inc $20.b,X		; F6 20
	jsr $F2F1.w		; 20 F1 F2
	brk $10.b		; 00 10
	sbc $2BF078.l,X		; FF 78 F0 2B
	jmp.w [$FCFB]		; DC FB FC
	phd		; 0B
	dec $7852.w,X		; DE 52 78
	ora $EDD4.w		; 0D D4 ED
	and ($7D.b)		; 32 7D
	and ($20.b,S),Y		; 33 20
	mvn $40,$78		; 54 78 40
	pea $22F0.w		; F4 F0 22
	bit $EC40.w,X		; 3C 40 EC
	inc $3C78.w,X		; FE 78 3C
	ora $ECFA.w		; 0D FA EC
	dec $40FD.w,X		; DE FD 40
	inc $0178.w		; EE 78 01
	trb $0215.w		; 1C 15 02
	rol $0E.b		; 26 0E
	and [$04.b]		; 27 04
	sei		; 78
	and $01.b		; 25 01
	ora $D1211E.l,X		; 1F 1E 21 D1
	cpx #$78E0.w		; E0 E0 78
	sbc $EECAFE.l,X		; FF FE CA EE
	cmp $1FE0E2.l,X		; DF E2 E0 1F
	sei		; 78
	inc $E204.w		; EE 04 E2
	eor ($1D.b)		; 52 1D
	and $31.b,S		; 23 31
	ror $78.b		; 66 78
	ora $F5D210.l		; 0F 10 D2 F5
	sbc $0E.b,S		; E3 0E
	cmp ($1F.b,X)		; C1 1F
	sei		; 78
	sbc ($CE.b,X)		; E1 CE
	beq -53.b		; F0 CB
	cmp $4EE2DD.l,X		; DF DD E2 4E
	sei		; 78
	ora ($DE.b)		; 12 DE
	sbc ($1E.b),Y		; F1 1E
	adc $01.b,S		; 63 01
	and $C3.b,X		; 35 C3
	sei		; 78
	and ($00.b)		; 32 00
	bmi   1.b		; 30 01
	rol $3DFE.w,X		; 3E FE 3D
	rol $2C78.w,X		; 3E 78 2C
	ora $C0F0.w,X		; 1D F0 C0
	sbc $DDCECE.l		; EF CE CE DD
	dey		; 88
	ora ($01.b)		; 12 01
	bpl -19.b		; 10 ED
	sbc ($05.b),Y		; F1 05
	and $00782F.l,X		; 3F 2F 78 00
	and $03.b		; 25 03
	and $2004FE.l		; 2F FE 04 20
	and $0E0E78.l		; 2F 78 0E 0E
	sbc ($E0.b)		; F2 E0
	cpx $FEEF.w		; EC EF FE
	sbc $0C88.w,X		; FD 88 0C
	sbc ($01.b,X)		; E1 01
	cop $1D.b		; 02 1D
	cmp ($11.b),Y		; D1 11
	tsb $78.b		; 04 78
	jmp ($5390.w)		; 6C 90 53
	trb $72.b		; 14 72
	ldy #$E4E2.w		; A0 E2 E4
	sei		; 78
	and ($FD.b,S),Y		; 33 FD
	asl $30FF.w		; 0E FF 30
	ora $78ECDF.l,X		; 1F DF EC 78
	cpx #$BCEE.w		; E0 EE BC
	sbc $30F3.w,X		; FD F3 30
	ora $0F781A.l		; 0F 1A 78 0F
	eor $04.b		; 45 04
	cpx #$45E0.w		; E0 E0 45
	eor ($1E.b,X)		; 41 1E
	pla		; 68
	cmp $5635.w,X		; DD 35 56
	dec A		; 3A
	dec $4210.w,X		; DE 10 42
	and $DE78.w		; 2D 78 DE
	cpx #$FB1F.w		; E0 1F FB
	dec $01CC.w,X		; DE CC 01
	sbc ($78.b),Y		; F1 78
	sbc ($FD.b,X)		; E1 FD
	sbc $0D.b		; E5 0D
	ora ($7D.b,S),Y		; 13 7D
	cpx $01.b		; E4 01
	sei		; 78
	sbc $3F.b		; E5 3F
	ora ($20.b),Y		; 11 20
	sbc ($22.b),Y		; F1 22
	sbc ($F2.b)		; F2 F2
	pla		; 68
	trb $E233.w		; 1C 33 E2
	bcs -19.b		; B0 ED
	cmp ($FC.b,X)		; C1 FC
	plb		; AB
	sei		; 78
	cmp $ED0B.w		; CD 0B ED
	brk $2F.b		; 00 2F
	and $780F0E.l		; 2F 0E 0F 78
	rti		; 40

	bit $B2.b		; 24 B2
	ora ($13.b,X)		; 01 13
	and $0F.b		; 25 0F
	ora ($78.b),Y		; 11 78
	sbc ($23.b),Y		; F1 23
	brk $00.b		; 00 00
	ora ($04.b),Y		; 11 04
	cmp ($0D.b),Y		; D1 0D
	sei		; 78
	inc $3C2E.w		; EE 2E 3C
	phd		; 0B
	cpy $D0EE.w		; CC EE D0
	inc $C378.w,X		; FE 78 C3
	ora $114F3D.l,X		; 1F 3D 4F 11
	and $7822FF.l,X		; 3F FF 22 78
	and $432F40.l		; 2F 40 2F 43
	and $0412FF.l,X		; 3F FF 12 04
	sei		; 78
	rol $F01F.w		; 2E 1F F0
	and ($F0.b,X)		; 21 F0
	jsr ($D0F0.w,X)		; FC F0 D0
	sei		; 78
	sbc $FACD0A.l,X		; FF 0A CD FA
	ora $3037D3.l		; 0F D3 37 30
	sei		; 78
	nop		; EA
	cpx #$0C45.w		; E0 45 0C
	cpy $16.b		; C4 16
	mvp $78,$ED		; 44 ED 78
	cop $33.b		; 02 33
	asl $14F0.w		; 0E F0 14
	bmi -31.b		; 30 E1
	beq 120.b		; F0 78
	brk $0F.b		; 00 0F
	and $1DD0FC.l,X		; 3F FC D0 1D
	ora $78DA.w		; 0D DA 78
	cmp $F002.w		; CD 02 F0
	.db $42, $22		; 42 22
	jmp ($EF09.w)		; 6C 09 EF
	sei		; 78
	ora $3E.b		; 05 3E
	ora ($E6.b,S),Y		; 13 E6
	and ($3E.b),Y		; 31 3E
	sep #$00		; E2 00
	sei		; 78
	bit $054F.w		; 2C 4F 05
	bpl  78.b		; 10 4E
	sbc ($B0.b),Y		; F1 B0
	and $4F78.w,X		; 3D 78 4F
	bne -34.b		; D0 DE
	sbc $B1BEFB.l		; EF FB BE B1
	bit $88.b		; 24 88
	brk $F3.b		; 00 F3
	bit $F9.b		; 24 F9
	sbc $EE0301.l,X		; FF 01 03 EE
	dey		; 88
	and $22.b		; 25 22
	ora $21FE.w,X		; 1D FE 21
	brk $F0.b		; 00 F0
	ora $78.b,S		; 03 78
	bvc -17.b		; 50 EF
	ora ($33.b,X)		; 01 33
	ora $E3DE.w,X		; 1D DE E3
	ora $EDEE94.l		; 0F 94 EE ED
	sbc $CBDB.w		; ED DB CB
	cpy $6703.w		; CC 03 67
	dey		; 88
	cmp $CF10.w		; CD 10 CF
	stz $6714.w		; 9C 14 67
	rol $880F.w		; 2E 0F 88
	bmi -19.b		; 30 ED
	cpy $5316.w		; CC 16 53
	ora $8831F3.l		; 0F F3 31 88
	sbc $32D0.w,X		; FD D0 32
	bmi -20.b		; 30 EC
	ora ($21.b)		; 12 21
	xce		; FB
	sei		; 78
	ldx $BA00.w		; AE 00 BA
	cmp $32F7.w,X		; DD F7 32
	cmp $64.b,X		; D5 64
	tya		; 98
	ora ($CC.b,X)		; 01 CC
	dec $1212.w,X		; DE 12 12
	ora ($23.b)		; 12 23
	sbc $C0BC88.l,X		; FF 88 BC C0
	bpl  34.b		; 10 22
	and [$32.b]		; 27 32
	asl $78EE.w,X		; 1E EE 78
	and $00.b,S		; 23 00
	cmp $57.b,S		; C3 57
	inc $F3CD.w,X		; FE CD F3
	bit $88.b,X		; 34 88
	inc $2F0F.w,X		; FE 0F 2F
	ldy $D09C.w		; AC 9C D0
	trb $47.b		; 14 47
	tya		; 98
	and ($0F.b)		; 32 0F
	tsb $DF9C.w		; 0C 9C DF
	bit $63.b		; 24 63
	and ($98.b,X)		; 21 98
	brk $FD.b		; 00 FD
	cpx $23E1.w		; EC E1 23
	and ($2F.b),Y		; 31 2F
	jsr $DD88.w		; 20 88 DD
	sbc $2F54E4.l		; EF E4 54 2F
	tsb $22F0.w		; 0C F0 22
	dey		; 88
	sbc ($F3.b,X)		; E1 F3
	ora ($0D.b,S),Y		; 13 0D
	lda $3FE2.w,X		; BD E2 3F
	cmp $0EA8.w,X		; DD A8 0E
	brk $E0.b		; 00 E0
	trb $31.b		; 14 31
	sbc $F1EF.w		; ED EF F1
	tya		; 98
	dec $6404.w,X		; DE 04 64
	ora $EE12CF.l		; 0F CF 12 EE
	cpx #$5488.w		; E0 88 54
	stz $CC.b		; 64 CC
	ora ($13.b,S),Y		; 13 13
	ora $8821D2.l,X		; 1F D2 21 88
	ora ($0F.b),Y		; 11 0F
	cpy #$4221.w		; C0 21 42
	asl $0ED0.w,X		; 1E D0 0E
	tya		; 98
	beq -31.b		; F0 E1
	asl $EE0D.w		; 0E 0D EE
	sbc ($56.b)		; F2 56
	jsr $DD98.w		; 20 98 DD
	cmp $13BF.w,X		; DD BF 13
	bit $21.b		; 24 21
	sbc $1C781F.l		; EF 1F 78 1C
	cmp $1414.w,X		; DD 14 14
	eor $1E.b		; 45 1E
	and ($31.b,S),Y		; 33 31
	sei		; 78
	rti		; 40

	rol $1F2B.w		; 2E 2B 1F
	eor $65E2.w		; 4D E2 65
	adc $FF88.w		; 6D 88 FF
	sbc $1D10DD.l		; EF DD 10 1D
	sbc $DBDC.w,X		; FD DC DB
	tay		; A8
	ora ($41.b,S),Y		; 13 41
	tsb $12CE.w		; 0C CE 12
	asl $1302.w		; 0E 02 13
	tya		; 98
	jsr $029D.w		; 20 9D 02
	cop $FE.b		; 02 FE
	and $3F.b,S		; 23 3F
	sbc $25F198.l		; EF 98 F1 25
	cpx #$1F01.w		; E0 01 1F
	sbc $43E0.w,X		; FD E0 43
	tya		; 98
	ora $FD211E.l		; 0F 1E 21 FD
	cpy #$FF01.w		; C0 01 FF
	cpx #$1F98.w		; E0 98 1F
	cmp ($52.b),Y		; D1 52
	rti		; 40

	cmp #$6FB1.w		; C9 B1 6F
	inc $03A8.w		; EE A8 03
	.db $42, $ED		; 42 ED
	cpy #$2112.w		; C0 12 21
	sbc $EE9812.l,X		; FF 12 98 EE
	inc $4414.w		; EE 14 44
	sbc $EF0D0D.l,X		; FF 0D 0D EF
	tya		; 98
	and $21.b,S		; 23 21
	sbc ($F0.b),Y		; F1 F0
	inc $12BC.w,X		; FE BC 12
	jsl $EF0EA8.l		; 22 A8 0E EF
	and $61.b,S		; 23 61
	jsr ($F1AF.w,X)		; FC AF F1
	and $4212A8.l		; 2F A8 12 42
	ora $10F2CE.l		; 0F CE F2 10
	brk $12.b		; 00 12
	tya		; 98
	and $02F2CE.l		; 2F CE F2 02
	sbc $CEDD14.l		; EF 14 DD CE
	tay		; A8
	ora ($3E.b),Y		; 11 3E
	cmp ($20.b)		; D2 20
	sbc ($FE.b),Y		; F1 FE
	bit $DD.b,X		; 34 DD
	sty $CC.b,X		; 94 CC
	lda ($53.b)		; B2 53
	cmp $DA4336.l		; CF 36 43 DA
	lda ($98.b)		; B2 98
	asl $15BD.w,X		; 1E BD 15
	eor $1201BD.l		; 4F BD 01 12
	cmp $E098.w,X		; DD 98 E0
	and $2F.b,X		; 35 2F
	lda ($02.b,X)		; A1 02
	sbc $9801F2.l,X		; FF F2 01 98
	and $BF.b		; 25 BF
	cpx #$2104.w		; E0 04 21
	pei ($E0.b)		; D4 E0
	cmp ($98.b)		; D2 98
	jmp.w [$0E55]		; DC 55 0E
	asl $2FDF.w		; 0E DF 2F
	sbc $E19821.l		; EF 21 98 E1
	ora $4E.b		; 05 4E
	xba		; EB
	cmp ($02.b),Y		; D1 02
	jsr $9820.w		; 20 20 98
	lsr $F0EF.w		; 4E EF F0
	ora ($2E.b)		; 12 2E
	and $98F0FA.l,X		; 3F FA F0 98
	and $F1.b,X		; 35 F1
	cmp $CE22.w		; CD 22 CE
	inc $0044.w,X		; FE 44 00
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	cmp $54E2.w,X		; DD E2 54
	jmp.w [$321F]		; DC 1F 32
	tay		; A8
	sbc $32F1.w,X		; FD F1 32
	ora $21D0.w		; 0D D0 21
	ora $13A4E1.l		; 0F E1 A4 13
	and $35C1CB.l		; 2F CB C1 35
	stz $1E.b		; 64 1E
	sbc $EE4398.l,X		; FF 98 43 EE
	ora $0F.b,X		; 15 0F
	tsb $41C3.w		; 0C C3 41
	jsr $DD98.w		; 20 98 DD
	bpl -18.b		; 10 EE
	and $1F.b,S		; 23 1F
	sbc $E4E2.w,X		; FD E2 E4
	tay		; A8
	ora ($FD.b),Y		; 11 FD
	brk $13.b		; 00 13
	ora ($FB.b,X)		; 01 FB
	cop $21.b		; 02 21
	dey		; 88
	jmp $4CDF.w		; 4C DF 4C
	beq -18.b		; F0 EE
	eor $0B.b,X		; 55 0B
	trb $F198.w		; 1C 98 F1
	ora ($FC.b,X)		; 01 FC
	ora ($44.b,X)		; 01 44
	cpy $051F.w		; CC 1F 05
	ldy $32.b		; A4 32
	ora $1D420F.l,X		; 1F 0F 42 1D
	cpx #$1E22.w		; E0 22 1E
	tay		; A8
	ora $1F1E10.l,X		; 1F 10 1E 1F
	bmi  -2.b		; 30 FE
	inc $9834.w		; EE 34 98
	and $70B4CB.l,X		; 3F CB B4 70
	cmp $0124.w		; CD 24 01
	dec $F298.w,X		; DE 98 F2
	jsr $ED2F.w		; 20 2F ED
	jsl $F11EE0.l		; 22 E0 1E F1
	sty $01.b,X		; 94 01
	ora ($EC.b),Y		; 11 EC
	sbc ($22.b,S),Y		; F3 22
	and ($FC.b,S),Y		; 33 FC
	sbc ($A8.b,S),Y		; F3 A8
	and ($FC.b,X)		; 21 FC
	sep #$01		; E2 01
	and $0030FF.l		; 2F FF 30 00
	tya		; 98
	dec $F011.w		; CE 11 F0
	and ($FC.b,S),Y		; 33 FC
	cmp $0E46.w,X		; DD 46 0E
	sty $13.b,X		; 94 13
	ora ($1E.b),Y		; 11 1E
	bpl -16.b		; 10 F0
	.db $42, $FC		; 42 FC
	wai		; CB
	tya		; 98
	mvp $1E,$FF		; 44 FF 1E
	trb $E50E.w		; 1C 0E E5
	ora $5F981F.l,X		; 1F 1F 98 5F
	and #$B0.b		; 29 B0
	ora [$32.b],Y		; 17 32
	jmp.w [$EFF3]		; DC F3 EF
	tya		; 98
	cpy #$3415.w		; C0 15 34
	cmp $FFFD.w,X		; DD FD FF
	eor ($FE.b),Y		; 51 FE
	ldy $EF.b		; A4 EF
	ora ($30.b,S),Y		; 13 30
	sbc $43F1.w		; ED F1 43
	inc $A8C1.w,X		; FE C1 A8
	and $31F20B.l		; 2F 0B F2 31
	sbc $FD31E2.l		; EF E2 31 FD
	tya		; 98
	dec $2033.w		; CE 33 20
	and $75C0EF.l		; 2F EF C0 75
	xba		; EB
	tay		; A8
	sbc $CFFF24.l		; EF 24 FF CF
	jsl $01EE21.l		; 22 21 EE 01
	tya		; 98
	phk		; 4B
	cmp $BD3242.l		; CF 42 32 BD
	ora $9802F3.l,X		; 1F F3 02 98
	and ($DD.b),Y		; 31 DD
	sbc $1401D2.l,X		; FF D2 01 14
	and ($0E.b,X)		; 21 0E
	tya		; 98
	tsx		; BA
	pei ($45.b)		; D4 45
	cop $DD.b		; 02 DD
	sbc $940010.l,X		; FF 10 00 94
	eor $31.b		; 45 31
	tsb $BCCC.w		; 0C CC BC
	rol $63.b,X		; 36 63
	jsr $C498.w		; 20 98 C4
	sbc ($F0.b,X)		; E1 F0
	ora $4F.b,S		; 03 4F
	inc $45CE.w		; EE CE 45
	tya		; 98
	and $C2FE.w,X		; 3D FE C2
	trb $3215.w		; 1C 15 32
	cmp $98E5.w		; CD E5 98
	sbc $5004FC.l,X		; FF FC 04 50
	sbc $31E0.w		; ED E0 31
	and $C088.w		; 2D 88 C0
	jmp $3E250E.l		; 5C 0E 25 3E
	bcs -12.b		; B0 F4
	ora $04AE84.l		; 0F 84 AE 04
	lsr $EB.b,X		; 56 EB
	lda ($23.b),Y		; B1 23
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	dey		; 88
	ora $45F2C1.l		; 0F C1 F2 45
	cpx $EEFF.w		; EC FF EE
	brk $98.b		; 00 98
	bit $EE.b,X		; 34 EE
	sbc ($E1.b,X)		; E1 E1
	rol $0021.w		; 2E 21 00
	dec $0298.w,X		; DE 98 02
	and $1E030F.l,X		; 3F 0F 03 1E
	cmp $5013.w		; CD 13 50
	sta $2B.b		; 85 2B
	cpy #$30.b		; C0 30
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	bra   1.b		; 80 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $02.b		; 00 02
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
	php		; 08
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
	bpl   0.b		; 10 00
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
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
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
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $10.b		; 00 10
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
	brk $C0.b		; 00 C0
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
	tsb $0000.w		; 0C 00 00
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
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	bpl  32.b		; 10 20
	brk $10.b		; 00 10
	brk $02.b		; 00 02
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 26FFFE. Skipping.
	.db $00		; Opcode 00 overrunning bank boundry at 26FFFF. Skipping.
.ENDS
