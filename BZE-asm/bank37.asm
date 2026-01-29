.BANK 37 SLOT 0
.ORG $0000

.SECTION "Bank37" FORCE

	phb		; 8B
	and $00.b,S		; 23 00
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $DC.b		; A4 DC
	sbc ($32.b)		; F2 32
	ora ($CD.b),Y		; 11 CD
	sbc ($33.b,X)		; E1 33
	ora ($A4.b),Y		; 11 A4
	jmp.w [$33E1]		; DC E1 33
	ora ($EC.b),Y		; 11 EC
	cpy #$2143.w		; C0 43 21
	ldy $FC.b		; A4 FC
	bcs  52.b		; B0 34
	bmi  28.b		; 30 1C
	cmp $3224.w		; CD 24 32
	ldy $1D.b		; A4 1D
	cpy $3304.w		; CC 04 33
	brk $BC.b		; 00 BC
	sbc $52.b,S		; E3 52
	ldy $11.b		; A4 11
	ldy $51D2.w,X		; BC D2 51
	and ($DC.b,X)		; 21 DC
	cmp ($42.b),Y		; D1 42
	tay		; A8
	sbc $FD5FFE.l,X		; FF FE 5F FD
	ora ($24.b,S),Y		; 13 24
	lda $B8F4.w		; AD F4 B8
	cmp ($34.b,X)		; C1 34
	sbc $1DEFF0.l		; EF F0 EF 1D
	eor ($1F.b,S),Y		; 53 1F
	clv		; B8
	bne -17.b		; D0 EF
	beq  67.b		; F0 43
	ora $0EFED0.l,X		; 1F D0 FE 0E
	clv		; B8
	eor $3F.b,S		; 43 3F
	cmp ($ED.b,X)		; C1 ED
	asl $3F43.w,X		; 1E 43 3F
	cmp ($B8.b,X)		; C1 B8
	sbc $4122E0.l		; EF E0 22 41
	cmp $F3D1E0.l,X		; DF E0 D1 F3
	clv		; B8
	bit $FB.b,X		; 34 FB
	ora $11FF.w,X		; 1D FF 11
	and $1C.b		; 25 1C
	sbc $FBB4.w,X		; FD B4 FB
	cmp $4501.w,X		; DD 01 45
	jsl $CFCEFE.l		; 22 FE CE CF
	ldy $13.b,X		; B4 13
	and $34.b,S		; 23 34
	cmp $21C0CE.l		; CF CE C0 21
	ora ($B4.b,S),Y		; 13 B4
	.db $62, $CD, $FB		; 62 CD FB
	sbc ($2F.b,X)		; E1 2F
	bit $6E.b,X		; 34 6E
	cpx $FBB4.w		; EC B4 FB
	sbc ($10.b)		; F2 10
	and $5C.b,X		; 35 5C
	sbc $11CD.w		; ED CD 11
	clv		; B8
	sbc ($31.b),Y		; F1 31
	stp		; DB
	cop $C4.b		; 02 C4
	and ($D4.b,X)		; 21 D4
	cop $B8.b		; 02 B8
	ldx $B5D5.w,Y		; BE D5 B5
	jsr $12D3.w		; 20 D3 12
	lda $B8F4.w,X		; BD F4 B8
	lda $3E.b,X		; B5 3E
	sbc $11.b,S		; E3 11
	jmp.w [$C3F4]		; DC F4 C3
	lsr $F2B4.w		; 4E B4 F2
	bit $4C.b		; 24 4C
	cmp $E132CE.l		; CF CE 32 E1
	and $B4.b,S		; 23 B4
	ror $FCDC.w		; 6E DC FC
	sbc ($10.b)		; F2 10
	bit $54.b		; 24 54
	tsx		; BA
	clv		; B8
	bmi -11.b		; 30 F5
	ora $AEFF03.l,X		; 1F 03 FF AE
	ora ($F3.b,S),Y		; 13 F3
	clv		; B8
	and ($02.b,X)		; 21 02
	phx		; DA
	cmp ($3F.b,S),Y		; D3 3F
	and $CE.b,S		; 23 CE
	.db $42, $B4		; 42 B4
	adc ($AC.b)		; 72 AC
	stp		; DB
	sbc ($03.b)		; F2 03
	lsr $1C.b,X		; 56 1C
	ldy $10C4.w,X		; BC C4 10
	ora ($0E.b,X)		; 01 0E
	ora ($1F.b,S),Y		; 13 1F
	inc $3FF3.w		; EE F3 3F
	cpy #$CE0F.w		; C0 0F CE
	and $10.b,S		; 23 10
	cpx $2014.w		; EC 14 20
	jsr ($F6C4.w,X)		; FC C4 F6
	rol $D3FE.w,X		; 3E FE D3
	lsr $DEEF.w,X		; 5E EF DE
	mvn $00,$C4		; 54 C4 00
	jsr ($EF12.w,X)		; FC 12 EF
	asl $43E3.w,X		; 1E E3 43
	ora $EECDC4.l		; 0F C4 CD EE
	ora $41.b,X		; 15 41
	ora $23CD.w,X		; 1D CD 23
	ora $C51DB4.l,X		; 1F B4 1D C5
	adc $64CEDF.l		; 6F DF CE 64
	cmp $C4FB.w,X		; DD FB C4
	tsb $31.b		; 04 31
	ora $02FFDD.l		; 0F DD FF 02
	and ($2F.b,S),Y		; 33 2F
	bcs  44.b		; B0 2C
	dec $FEDD.w		; CE DD FE
	cmp $1B5545.l		; CF 45 55 1B
	iny		; C8
	ora ($23.b),Y		; 11 23
	jsr ($F4FF.w,X)		; FC FF F4
	lsr $FFC1.w		; 4E C1 FF
	cpy $25.b		; C4 25
	asl $D3FD.w,X		; 1E FD D3
	bvc  -1.b		; 50 FF
	dec $B833.w,X		; DE 33 B8
	sta $2C251E.l,X		; 9F 1E 25 2C
	lda $F24B14.l,X		; BF 14 4B F2
	ldy $DC.b,X		; B4 DC
	eor $01.b		; 45 01
	asl $CCFE.w,X		; 1E FE CC
	ora $63.b,X		; 15 63
	clv		; B8
	nop		; EA
	pea $CD62.w		; F4 62 CD
	bne  54.b		; D0 36
	rol A		; 2A
	dec $24B8.w		; CE B8 24
	eor ($BB.b,X)		; 41 BB
	sbc ($54.b),Y		; F1 54
	ora $03CC.w,X		; 1D CC 03
	iny		; C8
	and $FC.b,S		; 23 FC
	sbc $CF5D04.l,X		; FF 04 5D CF
	sbc $63C065.l,X		; FF 65 C0 63
	ora $56AE.w		; 0D AE 56
	ora $41F5CA.l,X		; 1F CA F5 41
	cpy $ED.b		; C4 ED
	sbc $4F.b,X		; F5 4F
	inc $54DF.w		; EE DF 54
	ora $C4DD.w		; 0D DD C4
	tsb $51.b		; 04 51
	cmp $55CF.w,X		; DD CF 55
	asl $F4DD.w		; 0E DD F4
	cpy $50.b		; C4 50
	dec $45E0.w		; CE E0 45
	jsr ($05ED.w,X)		; FC ED 05
	eor $F3F0C8.l		; 4F C8 F0 F3
	rti		; 40

	lda $EC350F.l,X		; BF 0F 35 EC
	beq -56.b		; F0 C8
	sbc ($6D.b,S),Y		; F3 6D
	bcs  15.b		; B0 0F
	eor ($DB.b,S),Y		; 53 DB
	and $2EC804.l		; 2F 04 C8 2E
	cmp $FC3300.l,X		; DF 00 33 FC
	beq -12.b		; F0 F4
	eor $D0C8.w		; 4D C8 D0
	sbc ($34.b,X)		; E1 34
	cmp $F5F0.w,X		; DD F0 F5
	rol $B4D1.w		; 2E D1 B4
	tyx		; BB
	sbc $72.b		; E5 72
	dec $15CC.w,X		; DE CC 15
	and ($2F.b)		; 32 2F
	clv		; B8
	sbc $1E5201.l		; EF 01 52 1E
	dec $0500.w		; CE 00 05
	and $F0C8.w		; 2D C8 F0
	sbc $0FFF32.l,X		; FF 32 FF 0F
	phd		; 0B
	eor $1F.b,S		; 43 1F
	iny		; C8
	trb $30E1.w		; 1C E1 30
	and ($CF.b,X)		; 21 CF
	cpx #$1F24.w		; E0 24 1F
	iny		; C8
	sbc $41F2FF.l		; EF FF F2 41
	cpx #$F3ED.w		; E0 ED F3
	and ($C8.b,S),Y		; 33 C8
	sbc $12ED.w,X		; FD ED 12
	eor ($FD.b,X)		; 41 FD
	sbc $C40012.l,X		; FF 12 00 C4
	bpl -32.b		; 10 E0
	bpl  19.b		; 10 13
	jmp.w [$0301]		; DC 01 03
	rol $FEC0.w,X		; 3E C0 FE
	cmp $23F2.w,X		; DD F2 23
	eor ($BB.b),Y		; 51 BB
	sbc $DCC436.l		; EF 36 C4 DC
	sbc $F03013.l		; EF 13 30 F0
	phd		; 0B
	sbc ($20.b,S),Y		; F3 20
	clv		; B8
	tad		; 5B
	sta ($41.b,S),Y		; 93 41
	and ($CC.b),Y		; 31 CC
	ora ($4A.b),Y		; 11 4A
	bit $C0.b		; 24 C0
	bpl  17.b		; 10 11
	inc $01FF.w,X		; FE FF 01
	brk $12.b		; 00 12
	eor $1F64B8.l		; 4F B8 64 1F
	tad		; 5B
	lda ($21.b),Y		; B1 21
	and ($EF.b,X)		; 21 EF
	ora ($B4.b)		; 12 B4
	tyx		; BB
	ora ($13.b)		; 12 13
	trb $F2F0.w		; 1C F0 F2
	jsr $B022.w		; 20 22 B0
	dec A		; 3A
	ldx $7F05.w		; AE 05 7F
	plb		; AB
.INDEX 8
	sep #$53		; E2 53
	beq -76.b		; F0 B4
	bit $0FD3.w,X		; 3C D3 0F
	bmi -14.b		; 30 F2
	tsb $02F0.w		; 0C F0 02
	bcs  35.b		; B0 23
	jsl $11C03D.l		; 22 3D C0 11
	bmi -51.b		; 30 CD
	ora ($B0.b,X)		; 01 B0
	ora ($03.b),Y		; 11 03
	adc $F2AD.w		; 6D AD F2
	adc $CB.b,S		; 63 CB
	bne -80.b		; D0 B0
	bit $1F.b,X		; 34 1F
	ora ($ED.b,S),Y		; 13 ED
	sbc $14FF02.l,X		; FF 02 FF 14
	ldy $ED.b,X		; B4 ED
	inc $4115.w		; EE 15 41
	cmp $54CE.w,X		; DD CE 54
	ora $E0FCC0.l,X		; 1F C0 FC E0
	jsl $DE2110.l		; 22 10 21 DE
	brk $22.b		; 00 22
	bcs -38.b		; B0 DA
	cpy #$45.b		; C0 45
	asl $3DF3.w,X		; 1E F3 3D
	sbc $FEB8E0.l		; EF E0 B8 FE
	bmi -19.b		; 30 ED
	ora ($13.b),Y		; 11 13
	ora $B42FCE.l,X		; 1F CE 2F B4
	sbc $3F.b		; E5 3F
	sbc $53E2.w		; ED E2 53
	ora $26DA.w		; 0D DA 26
	ldy $31.b,X		; B4 31
	phx		; DA
	cpy $54.b		; C4 54
	ora $D6DB.w,X		; 1D DB D6
	eor ($B4.b),Y		; 51 B4
	jsr ($1DE3.w,X)		; FC E3 1D
	bmi -31.b		; 30 E1
	sbc $2123.w,X		; FD 23 21
	clv		; B8
	cmp $EE3E04.l,X		; DF 04 3E EE
	sbc ($11.b,S),Y		; F3 11
	sbc $EEB0F0.l,X		; FF F0 B0 EE
	ora ($20.b,X)		; 01 20
	sbc $F0ED14.l,X		; FF 14 ED F0
	jsl $22DEB4.l		; 22 B4 DE 22
	bmi -52.b		; 30 CC
	sbc ($53.b,S),Y		; F3 53
	ldy $A010.w,X		; BC 10 A0
	sbc $3E.b		; E5 3E
	ora ($AD.b,X)		; 01 AD
	bit $53.b		; 24 53
	sbc $B0BC.w,X		; FD BC B0
	jsl $25CD1E.l		; 22 1E CD 25
	eor ($EB.b),Y		; 51 EB
	lda ($42.b),Y		; B1 42
	ldy $ED.b,X		; B4 ED
	pei ($52.b)		; D4 52
	sbc $05DE.w,X		; FD DE 05
	and $13C4BC.l,X		; 3F BC C4 13
	jsr $E2ED.w		; 20 ED E2
	and ($0F.b)		; 32 0F
	cmp $B423.w,X		; DD 23 B4
	and $3F26BC.l,X		; 3F BC 26 3F
	plb		; AB
	trb $32.b		; 14 32
	sbc $E0B4.w,X		; FD B4 E0
	ora ($1F.b),Y		; 11 1F
	cop $2C.b		; 02 2C
	lda ($22.b,S),Y		; B3 22
	bit $B1B4.w		; 2C B4 B1
	and ($1F.b,S),Y		; 33 1F
	sbc ($ED.b,X)		; E1 ED
	and ($F0.b)		; 32 F0
	inc $42B8.w,X		; FE B8 42
	sbc $53A4.w		; ED A4 53
	sbc $12D1.w		; ED D1 12
	bpl -88.b		; 10 A8
	sta $B10D35.l,X		; 9F 35 0D B1
	sbc [$3D.b],Y		; F7 3D
	jmp.w [$A4D6]		; DC D6 A4
	adc [$2C.b]		; 67 2C
	stz $DC57.w,X		; 9E 57 DC
	inc $0C44.w		; EE 44 0C
	sty $EF.b,X		; 94 EF
	and [$2D.b]		; 27 2D
	cpy $D035.w		; CC 35 D0
	and $A4FF.w		; 2D FF A4
	ora ($21.b,X)		; 01 21
	sbc $30EFF1.l,X		; FF F1 EF 30
	bpl -50.b		; 10 CE
	ldy #$02.b		; A0 02
	.db $42, $ED		; 42 ED
	and $DE.b,S		; 23 DE
	ora $B0DE11.l		; 0F 11 DE B0
	ora ($21.b),Y		; 11 21
	inc $23F0.w,X		; FE F0 23
	and $23CF.w		; 2D CF 23
	bcs  29.b		; B0 1D
	lda $AB3134.l,X		; BF 34 31 AB
	trb $41.b		; 14 41
	phx		; DA
	ldy $45.b,X		; B4 45
	asl $25CD.w,X		; 1E CD 25
	and $3015CA.l,X		; 3F CA 15 30
	ldy $DC.b,X		; B4 DC
	tsb $30.b		; 04 30
	jmp.w [$3203]		; DC 03 32
	inc $B8A2.w		; EE A2 B8
	jmp $06DD.w		; 4C DD 06
	and $4D14CD.l		; 2F CD 14 4D
	xba		; EB
	bcs -67.b		; B0 BD
	ora $5E.b,X		; 15 5E
	ldy $5114.w		; AC 14 51
	tsx		; BA
	pea $52B0.w		; F4 B0 52
	dex		; CA
	sbc $53.b,S		; E3 53
	phx		; DA
	cmp ($55.b)		; D2 55
	rol A		; 2A
	ldy $F6.b,X		; B4 F6
	eor ($DA.b,X)		; 41 DA
	pea $EC41.w		; F4 41 EC
	cmp ($42.b,S),Y		; D3 42
	bcs  66.b		; B0 42
	tax		; AA
	trb $41.b		; 14 41
	wai		; CB
	ora $41.b,S		; 03 41
	jmp.w [$F3B0]		; DC B0 F3
	eor $2C.b,S		; 43 2C
	ldy #$33.b		; A0 33
	rol $34BF.w		; 2E BF 34
	bcs  46.b		; B0 2E
	dec $3113.w		; CE 13 31
	bit $32B1.w		; 2C B1 32
	ora $BFB0.w,X		; 1D B0 BF
	bit $1D.b,X		; 34 1D
	cmp $2C2123.l		; CF 23 21 2C
	cmp ($B4.b,X)		; C1 B4
	bpl  12.b		; 10 0C
	cpx $30.b		; E4 30
	cpx OAMADDL.w		; EC 02 21
	ora $C13CB0.l		; 0F B0 3C C1
	jsl $23C01D.l		; 22 1D C0 23
	ora $B0DF.w,X		; 1D DF B0
	ora ($21.b)		; 12 21
	bit $22C1.w,X		; 3C C1 22
	ora $23C0.w,X		; 1D C0 23
	bcs  29.b		; B0 1D
	cmp $3B2213.l,X		; DF 13 22 3B
.ACCU 16
	rep #$23		; C2 23
	ora $C0B0.w,X		; 1D B0 C0
	and ($1D.b,S),Y		; 33 1D
	cmp $3B2113.l		; CF 13 21 3B
	cmp ($B0.b,X)		; C1 B0
	jsl $33C01D.l		; 22 1D C0 33
	tsb $22C0.w		; 0C C0 22
	ora ($B0.b),Y		; 11 B0
	dec A		; 3A
	sbc $22.b,S		; E3 22
	tsb $33E2.w		; 0C E2 33
	xce		; FB
	cmp ($B0.b),Y		; D1 B0
	and ($12.b)		; 32 12
	rol A		; 2A
	sbc $12.b,S		; E3 12
	xce		; FB
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	bcs  -5.b		; B0 FB
	cmp ($33.b),Y		; D1 33
	ora ($09.b)		; 12 09
	pea $EB22.w		; F4 22 EB
	ldy $43.b,X		; B4 43
	rol $34CC.w		; 2E CC 34
	and $63DBF1.l		; 2F F1 DB 63
	ldy $F0.b,X		; B4 F0
	cmp $1F43.w		; CD 43 1F
	cmp $2F24.w		; CD 24 2F
	sbc ($B0.b),Y		; F1 B0
	wai		; CB
	trb $21.b		; 14 21
	wai		; CB
	ora $41.b,S		; 03 41
	wai		; CB
	sbc ($B0.b,S),Y		; F3 B0
	and ($13.b)		; 32 13
	ldy $2123.w,X		; BC 23 21
	cpy $3113.w		; CC 13 31
	bcs -53.b		; B0 CB
	sbc ($32.b)		; F2 32
	ora ($BD.b)		; 12 BD
	and $20.b,S		; 23 20
	cmp $13B0.w		; CD B0 13
	jsr $F2DD.w		; 20 DD F2
	and ($02.b,X)		; 21 02
	dec $A422.w		; CE 22 A4
	sbc $64B0.w,X		; FD B0 64
	tsb $46AE.w		; 0C AE 46
	and $DDB0D2.l		; 2F D2 B0 DD
	ora ($11.b)		; 12 11
	jmp.w [$3203]		; DC 03 32
	cpx $B4E0.w		; EC E0 B4
	ora ($F0.b),Y		; 11 F0
	ora $20D4.w,X		; 1D D4 20
	tsb $32E3.w		; 0C E3 32
	bcs  46.b		; B0 2E
	dec $3101.w		; CE 01 31
	ora ($CC.b,S),Y		; 13 CC
	ora ($21.b)		; 12 21
	bcs -52.b		; B0 CC
	ora ($31.b,S),Y		; 13 31
	cpy $22F0.w		; CC F0 22
	ora ($2B.b,X)		; 01 2B
	ldy $44.b,X		; B4 44
	cpx #$ED.b		; E0 ED
	and ($1F.b,S),Y		; 33 1F
	cmp $2113.w,X		; DD 13 21
	bcs  16.b		; B0 10
	tsa		; 3B
	sbc $11.b,S		; E3 11
	tsb $33E2.w		; 0C E2 33
	jsr ($CFB0.w,X)		; FC B0 CF
	and $20.b,S		; 23 20
	rol $31C1.w		; 2E C1 31
	ora $B0C1.w,X		; 1D C1 B0
	and ($1D.b,S),Y		; 33 1D
	ldx $2023.w,Y		; BE 23 20
	ora ($AF.b)		; 12 AF
	and ($B4.b),Y		; 31 B4
	ora $40C4.w,X		; 1D C4 40
	jsr ($42D1.w,X)		; FC D1 42
	asl $B0F3.w,X		; 1E F3 B0
	lda $2032.w,X		; BD 32 20
	lda $3F24.w,X		; BD 24 3F
	ldy $B003.w,X		; BC 03 B0
	.db $42, $02		; 42 02
	cpy W12SEL.w		; CC 23 21
	cpy $4113.w		; CC 13 41
	bcs -69.b		; B0 BB
	sbc ($43.b)		; F2 43
	cop $CB.b		; 02 CB
	and $21.b,S		; 23 21
	cpy $13B0.w		; CC B0 13
	eor ($BB.b,X)		; 41 BB
	sbc ($42.b)		; F2 42
	ora ($CB.b,S),Y		; 13 CB
	bit $B4.b		; 24 B4
	sbc $1E43B0.l		; EF B0 43 1E
	ldx $1044.w		; AE 44 10
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	wai		; CB
	bit $21.b		; 24 21
	wai		; CB
	ora $41.b,S		; 03 41
	dex		; CA
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	eor $12.b,S		; 43 12
	nop		; EA
	trb $22.b		; 14 22
	stp		; DB
	ora $42.b,S		; 03 42
	ldy $BD.b,X		; B4 BD
	bit $20.b,X		; 34 20
	sbc ($DA.b,X)		; E1 DA
	stz $E0.b,X		; 74 E0
	ldx $F3B0.w,Y		; BE B0 F3
	eor $DA.b,S		; 43 DA
	cmp ($33.b),Y		; D1 33
	ora ($19.b),Y		; 11 19
	pea $E0B4.w		; F4 B4 E0
	jmp.w [$2F34]		; DC 34 2F
	cpy $3014.w		; CC 14 30
	sbc $D22BB0.l,X		; FF B0 2B D2
	jsl $34C11C.l		; 22 1C C1 34
	trb $B0BE.w		; 1C BE B0
	ora ($30.b,S),Y		; 13 30
	ora ($AE.b,S),Y		; 13 AE
	jsl $24BD30.l		; 22 30 BD 24
	bcs  64.b		; B0 40
	tyx		; BB
	sbc ($42.b,S),Y		; F3 42
	cop $0A.b		; 02 0A
	ora $12.b,S		; 03 12
	bcs -21.b		; B0 EB
	ora $42.b,S		; 03 42
	nop		; EA
	cmp ($33.b),Y		; D1 33
	bpl  61.b		; 10 3D
	bcs -63.b		; B0 C1
	and ($1D.b,X)		; 21 1D
	cpy #$23.b		; C0 23
	rol $02CD.w		; 2E CD 02
	ldy $1D.b		; A4 1D
	sbc ($1B.b)		; F2 1B
	cmp $30.b		; C5 30
	rol A		; 2A
	ldy $45.b,X		; B4 45
	bcs  63.b		; B0 3F
	cmp $21F1.w		; CD F1 21
	brk $33.b		; 00 33
	ldx $B010.w,Y		; BE 10 B0
	bmi -50.b		; 30 CE
	ora ($3F.b,S),Y		; 13 3F
	cmp $21E0.w		; CD E0 21
	brk $B0.b		; 00 B0
	bit $BE.b		; 24 BE
	bpl  48.b		; 10 30
	dec $3013.w		; CE 13 30
	dec $F0B0.w,X		; DE B0 F0
	ora ($00.b),Y		; 11 00
	and $CC.b		; 25 CC
	ora ($32.b,X)		; 01 32
	jmp.w [$02B0]		; DC B0 02
	.db $42, $DD		; 42 DD
	sbc $150022.l		; EF 22 00 15
	jsr ($F1B0.w,X)		; FC B0 F1
	and $FC.b,S		; 23 FC
	sbc ($43.b),Y		; F1 43
	sbc $12DF.w		; ED DF 12
	bcs  15.b		; B0 0F
	ora $4B.b,S		; 03 4B
	cmp ($14.b),Y		; D1 14
	trb $34D0.w		; 1C D0 34
	bcs  12.b		; B0 0C
	cmp $010F02.l,X		; DF 02 0F 01
	eor ($BE.b),Y		; 51 BE
	ora ($B0.b,X)		; 01 B0
	rti		; 40

	cmp $4003.w		; CD 03 40
	cmp $10F2.w,X		; DD F2 10
	sbc $1B23B4.l		; EF B4 23 1B
	lda ($53.b),Y		; B1 53
	ora $54BF.w		; 0D BF 54
	ora $CBB0.w,X		; 1D B0 CB
	sbc ($30.b,S),Y		; F3 30
	cpy $42F3.w		; CC F3 42
	phd		; 0B
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	eor $0B.b,S		; 43 0B
	cmp ($44.b,X)		; C1 44
	tsb $33C0.w		; 0C C0 33
	jsr ($D1B0.w,X)		; FC B0 D1
	and ($10.b,S),Y		; 33 10
	ldx $2F23.w,Y		; BE 23 2F
	dec $A023.w		; CE 23 A0
	eor $259C.w		; 4D 9C 25
	and $3215D9.l,X		; 3F D9 15 32
	cmp $F4A0.w,Y		; D9 A0 F4
	eor ($DC.b,X)		; 41 DC
	sbc ($30.b)		; F2 30
	wai		; CB
	sbc $41.b,S		; E3 41
	ldy #$CD12.w		; A0 12 CD
	jsl $13CC10.l		; 22 10 CC 13
	rti		; 40

	cmp $5594.w,X		; DD 94 55
	trb $34BF.w		; 1C BF 34
	asl $04EF.w,X		; 1E EF 04
	tsb $CEA0.w		; 0C A0 CE
	ora ($43.b,S),Y		; 13 43
	ora $43C3.w,Y		; 19 C3 43
	xce		; FB
.ACCU 16
	rep #$A4		; C2 A4
	jsr $14CC.w		; 20 CC 14
	bmi -51.b		; 30 CD
	ora $30.b,S		; 03 30
	sbc $01A4.w		; ED A4 01
	rti		; 40

	dec $2002.w,X		; DE 02 20
	sbc $41E5.w		; ED E5 41
	lda ($21.b),Y		; B1 21
	cmp $0000.w		; CD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ora ($B3.b,X)		; 01 B3
	brk $00.b		; 00 00
	ora ($01.b),Y		; 11 01
	brk $FF.b		; 00 FF
	pha		; 48
	sbc ($F2.b),Y		; F1 F2
	ora $04202F.l		; 0F 2F 20 04
	ora $F078FA.l,X		; 1F FA 78 F0
	ora $3FF2F0.l,X		; 1F F0 F2 3F
	and $D2.b,S		; 23 D2
	sbc $1DED78.l,X		; FF 78 ED 1D
	beq  47.b		; F0 2F
	rti		; 40

	bpl -16.b		; 10 F0
	.db $42, $78		; 42 78
	tas		; 1B
	rol $5ADD.w,X		; 3E DD 5A
	ora $500EE5.l,X		; 1F E5 0E 50
	dey		; 88
	beq   2.b		; F0 02
	bpl  34.b		; 10 22
	jmp.w [$1D00]		; DC 00 1D
	sbc ($88.b),Y		; F1 88
	ora ($E1.b)		; 12 E1
	and $EE44C1.l,X		; 3F C1 44 EE
	bmi -50.b		; 30 CE
	dey		; 88
	ora ($DD.b),Y		; 11 DD
	and ($2E.b,X)		; 21 2E
	ora ($0D.b)		; 12 0D
	asl $1D.b,X		; 16 1D
	dey		; 88
	jsl $EEFFB0.l		; 22 B0 FF EE
	sbc ($30.b),Y		; F1 30
	ora ($1F.b,X)		; 01 1F
	dey		; 88
	inc $20.b		; E6 20
	pea $1EBD.w		; F4 BD 1E
	sbc $40F0.w		; ED F0 40
	tya		; 98
	ora ($1F.b,X)		; 01 1F
	ora ($2E.b),Y		; 11 2E
	and ($CF.b,X)		; 21 CF
	and $B4E0.w		; 2D E0 B4
	sbc $22FFF1.l,X		; FF F1 FF 22
	ora ($6D.b,X)		; 01 6D
	cmp ($CC.b,S),Y		; D3 CC
	cpy #$DFF0.w		; C0 F0 DF
	ora $46FFE1.l		; 0F E1 FF 46
	sbc ($3E.b,S),Y		; F3 3E
	cpy $F3.b		; C4 F3
	sbc $1DF14E.l		; EF 4E F1 1D
	eor $CE.b		; 45 CE
	jmp $CFC0.w		; 4C C0 CF
	trb $EF02.w		; 1C 02 EF
	asl $6EF4.w,X		; 1E F4 6E
	.db $42, $D0		; 42 D0
	sbc $0FF11F.l		; EF 1F F1 0F
	brk $F2.b		; 00 F2
	rti		; 40

	ora ($C4.b),Y		; 11 C4
	dec $E54F.w		; CE 4F E5
	inc $D420.w		; EE 20 D4
	ror A		; 6A
	ora $C0.b,S		; 03 C0
	cpx $D300.w		; EC 00 D3
	asl $D200.w,X		; 1E 00 D2
	eor $DEC022.l,X		; 5F 22 C0 DE
	asl $F034.w		; 0E 34 F0
	tas		; 1B
	sbc $E0.b,S		; E3 E0
	and $E4E0C0.l,X		; 3F C0 E0 E4
	adc $1EBC10.l,X		; 7F 10 BC 1E
	cop $0E.b		; 02 0E
	cpy #$370E.w		; C0 0E 37
	sbc ($1C.b)		; F2 1C
	cmp ($E0.b,X)		; C1 E0
	jsr $C0E0.w		; 20 E0 C0
	sbc $7F.b,S		; E3 7F
	and ($CC.b,X)		; 21 CC
	asl $0E02.w,X		; 1E 02 0E
	asl $36C0.w		; 0E C0 36
	sbc ($1C.b)		; F2 1C
	cmp ($E0.b),Y		; D1 E0
	jsr $E5E0.w		; 20 E0 E5
	cpy $FB.b		; C4 FB
	jsr $2EB3.w		; 20 B3 2E
	and ($D0.b,X)		; 21 D0
	cop $6A.b		; 02 6A
	cpy #$EC10.w		; C0 10 EC
	ora $FF0E02.l,X		; 1F 02 0E FF
	adc ($10.b,X)		; 61 10
	cpy #$0FEC.w		; C0 EC 0F
	cop $1E.b		; 02 1E
	sbc $EB1061.l,X		; FF 61 10 EB
	cpy #$021F.w		; C0 1F 02
	asl $71FF.w,X		; 1E FF 71
	ora $C01FEB.l,X		; 1F EB 1F C0
	ora ($1E.b,X)		; 01 1E
	beq 112.b		; F0 70
	ora $011FEB.l,X		; 1F EB 1F 01
	cpy $FE.b		; C4 FE
	ora ($79.b),Y		; 11 79
	and $5EFE.w		; 2D FE 5E
	and ($EE.b,X)		; 21 EE
	cpy #$7FF1.w		; C0 F1 7F
	and $121FDC.l		; 2F DC 1F 12
	asl $C0F2.w		; 0E F2 C0
	adc $1FDC1F.l,X		; 7F 1F DC 1F
	ora ($FE.b)		; 12 FE
	sbc ($6F.b,S),Y		; F3 6F
	cpy #$BE1F.w		; C0 1F BE
	ora $F5FE12.l,X		; 1F 12 FE F5
	bmi  15.b		; 30 0F
	cpy #$F0B0.w		; C0 B0 F0
	ora ($EF.b),Y		; 11 EF
	asl $01.b		; 06 01
	inc $C0C0.w,X		; FE C0 C0
	sbc ($20.b),Y		; F1 20
	sbc $FBF126.l		; EF 26 F1 FB
	cpx #$C401.w		; E0 01 C4
	trb $5F10.w		; 1C 10 5F
	sbc $215F0B.l		; EF 0B 5F 21
	jsr ($F2C0.w,X)		; FC C0 F2
	eor $00CE2F.l,X		; 5F 2F CE 00
	ora ($EF.b)		; 12 EF
	sbc $C0.b,X		; F5 C0
	and ($FF.b,X)		; 21 FF
	bcs -15.b		; B0 F1
	and ($DF.b,X)		; 21 DF
	rol $F2.b		; 26 F2
	cpy $DD.b		; C4 DD
	ora ($F2.b,S),Y		; 13 F2
	ora $5F01.w		; 0D 01 5F
	bne  -4.b		; D0 FC
	cpy #$120F.w		; C0 0F 12
	ora $60F1.w,X		; 1D F1 60
	and $C400DD.l		; 2F DD 00 C4
	ora ($DF.b),Y		; 11 DF
	ora $0C.b,X		; 15 0C
	ora $2F10B4.l,X		; 1F B4 10 2F
	cpy $C2.b		; C4 C2
	bit $B2.b		; 24 B2
	dec $F203.w,X		; DE 03 F2
	ora $C0F1.w,X		; 1D F1 C0
	eor $10.b,S		; 43 10
	xba		; EB
	ora $F21D02.l		; 0F 02 1D F2
	eor $C32EC4.l,X		; 5F C4 2E C3
	bpl  32.b		; 10 20
	cmp ($34.b,X)		; C1 34
	lda ($DD.b)		; B2 DD
	cpy $13.b		; C4 13
	sbc ($0D.b)		; F2 0D
	cop $5B.b		; 02 5B
	and $4FD0.w		; 2D D0 4F
	cpy #$FE12.w		; C0 12 FE
	asl $12.b		; 06 12
	inc $01B1.w,X		; FE B1 01
	jsr $DFC0.w		; 20 C0 DF
	eor $10.b,S		; 43 10
	plx		; FA
	brk $01.b		; 00 01
	ora $C0F3.w,X		; 1D F3 C0
	eor $00BF1F.l,X		; 5F 1F BF 00
	ora ($DE.b),Y		; 11 DE
	and $F2.b		; 25 F2
	cpy #$E0FC.w		; C0 FC E0
	ora ($1E.b,X)		; 01 1E
	sbc ($6F.b,X)		; E1 6F
	and $3FC4CD.l		; 2F CD C4 3F
	jsr $25D0.w		; 20 D0 25
	lda ($ED.b)		; B2 ED
	pea $C0F1.w		; F4 F1 C0
	ora $1051E0.l,X		; 1F E0 51 10
	xba		; EB
	bpl   1.b		; 10 01
	sbc $F5C0.w,X		; FD C0 F5
	bmi  14.b		; 30 0E
	lda ($00.b),Y		; B1 00
	bpl -33.b		; 10 DF
	mvp $00,$C0		; 44 C0 00
	xba		; EB
	bpl   1.b		; 10 01
	ora $40F4.w		; 0D F4 40
	ora $00C5C4.l,X		; 1F C4 C5 00
	ora $C160D1.l,X		; 1F D1 60 C1
	xba		; EB
	rts		; 60

	cpy $01.b		; C4 01
	sbc $2B15.w,X		; FD 15 2B
	asl $00C5.w,X		; 1E C5 00
	bpl -60.b		; 10 C4
	cmp ($52.b,X)		; C1 52
	ldx #$51EB.w		; A2 EB 51
	sbc ($0C.b)		; F2 0C
	ora $C4.b,X		; 15 C4
	rol A		; 2A
	rol $1FB5.w		; 2E B5 1F
	jsr $52C1.w		; 20 C1 52
	ldx #$EBC4.w		; A2 C4 EB
	eor ($F2.b),Y		; 51 F2
	sbc $1B15.w,X		; FD 15 1B
	rol $C4B5.w		; 2E B5 C4
	ora $51D12F.l,X		; 1F 2F D1 51
	lda ($DC.b)		; B2 DC
	eor ($F2.b),Y		; 51 F2
	cpy #$F50C.w		; C0 0C F5
	rti		; 40

	asl $00A1.w,X		; 1E A1 00
	jsr $C0CF.w		; 20 CF C0
	eor ($10.b,S),Y		; 53 10
	stp		; DB
	bpl   2.b		; 10 02
	jsr ($21F6.w,X)		; FC F6 21
	cpy #$B10D.w		; C0 0D B1
	ora ($2F.b),Y		; 11 2F
	cpy #$2061.w		; C0 61 20
	stp		; DB
	cpy $6F.b		; C4 6F
	ora ($CF.b),Y		; 11 CF
	rol $A2.b,X		; 36 A2
	cpx $F105.w		; EC 05 F1
	cpy #$D22E.w		; C0 2E D2
	adc $10BD20.l		; 6F 20 BD 10
	ora ($DE.b)		; 12 DE
	cpy #$F235.w		; C0 35 F2
	plx		; FA
	ora ($02.b,X)		; 01 02
	trb $30F5.w		; 1C F5 30
	cpy #$A11E.w		; C0 1E A1
	brk $2F.b		; 00 2F
	cpy #$1060.w		; C0 60 10
	stp		; DB
	cpy #$0220.w		; C0 20 02
	sbc $F227.w		; ED 27 F2
	tsb $01D1.w		; 0C D1 01
	cpy #$D32D.w		; C0 2D D3
	ror $BF2F.w		; 6E 2F BF
	ora $C0CF21.l,X		; 1F 21 CF C0
	mvn $EA,$F2		; 54 F2 EA
	ora ($F2.b),Y		; 11 F2
	tsb $1106.w		; 0C 06 11
	cpy #$B21D.w		; C0 1D B2
	brk $2F.b		; 00 2F
	cmp ($7E.b)		; D2 7E
	jsr $C0BE.w		; 20 BE C0
	and $54DE12.l		; 2F 12 DE 54
.ACCU 8
	sep #$EA		; E2 EA
	ora ($F2.b),Y		; 11 F2
	cpy #$170C.w		; C0 0C 17
	sbc ($2C.b),Y		; F1 2C
	cmp $FF.b,S		; C3 FF
	rol $C0D4.w,X		; 3E D4 C0
	eor $A030.w,X		; 5D 30 A0
	rol $CF12.w		; 2E 12 CF
	bvs -13.b		; 70 F3
	cpy #$30DB.w		; C0 DB 30
	sbc $FC.b,S		; E3 FC
	rol $D2.b,X		; 36 D2
	inc A		; 1A
	sbc ($C0.b,S),Y		; F3 C0
	cpx #$F72D.w		; E0 2D F7
	ora $0EB32D.l		; 0F 2D B3 0E
	and $2EE2D0.l		; 2F D0 E2 2E
	bpl -48.b		; 10 D0
	ora $4FE001.l,X		; 1F 01 E0 4F
	cpy #$CCF2.w		; C0 F2 CC
	bmi -30.b		; 30 E2
	sbc $D163.w,X		; FD 63 D1
	asl A		; 0A
	cpy #$D112.w		; C0 12 D1
	trb $EF27.w		; 1C 27 EF
	bit $FED3.w		; 2C D3 FE
	cpy #$E62E.w		; C0 2E E6
	asl $B21F.w,X		; 1E 1F B2
	and $D311.w		; 2D 11 D3
	cpy #$026D.w		; C0 6D 02
	ldx $F23F.w,Y		; BE 3F F2
	sbc $C0E270.l		; EF 70 E2 C0
	xce		; FB
	and ($D1.b,X)		; 21 D1
	ora $D045.w		; 0D 45 D0
	tas		; 1B
	sbc ($C0.b,S),Y		; F3 C0
	sbc $FEF72E.l		; EF 2E F7 FE
	rol $1EC2.w		; 2E C2 1E
	bpl -64.b		; 10 C0
	pei ($4D.b)		; D4 4D
	ora ($B0.b,X)		; 01 B0
	rol $D0F2.w,X		; 3E F2 D0
	adc $DDE2C0.l		; 6F C0 E2 DD
	bmi -31.b		; 30 E1
	inc $E152.w,X		; FE 52 E1
	phd		; 0B
	cpy #$E003.w		; C0 03 E0
	asl $EF16.w,X		; 1E 16 EF
	and $0ED3.w		; 2D D3 0E
	cpy #$E61F.w		; C0 1F E6
	asl $C110.w,X		; 1E 10 C1
	rol $E301.w		; 2E 01 E3
	cpy #$F14E.w		; C0 4E F1
	dec $F13F.w		; CE 3F F1
	beq  96.b		; F0 60
	sbc ($C0.b,X)		; E1 C0
	sbc $E111.w		; ED 11 E1
	ora $0CE042.l		; 0F 42 E0 0C
	sbc ($C0.b)		; F2 C0
	sbc $FF241F.l,X		; FF 1F 24 FF
	ora $0FE2.w,X		; 1D E2 0F
	ora $0E05C0.l,X		; 1F C0 05 0E
	asl $1ED1.w,X		; 1E D1 1E
	brk $05.b		; 00 05
	ora $90FFB0.l,X		; 1F B0 FF 90
	rol $F6F0.w,X		; 3E F0 F6
	adc $C49DE1.l		; 6F E1 9D C4
	rol $F2F2.w,X		; 3E F2 F2
	bit $D0E2.w,X		; 3C E2 D0
	bmi -30.b		; 30 E2
	cpy $F1.b		; C4 F1
	jmp $EEF1.w		; 4C F1 EE
	and ($E1.b),Y		; 31 E1
	brk $5E.b		; 00 5E
	ldy $B0.b,X		; B4 B0
	asl A		; 0A
	and ($D0.b,S),Y		; 33 D0
	and ($70.b,X)		; 21 70
	lda $01B4FB.l,X		; BF FB B4 01
	sbc ($34.b),Y		; F1 34
	lsr $CEEF.w,X		; 5E EF CE
	inc $B404.w		; EE 04 B4
	eor ($01.b)		; 52 01
	sbc $DFFE.w,X		; FD FE DF
	ora ($5F.b,S),Y		; 13 5F
	ora ($A4.b,X)		; 01 A4
	sbc $9F1D.w,X		; FD 1D 9F
	and $4C.b		; 25 4C
	cop $01.b		; 02 01
	eor $BDA4.w		; 4D A4 BD
	pea $F34B.w		; F4 4B F3
	cop $60.b		; 02 60
	ldy $A4E1.w		; AC E1 A4
	rtl		; 6B

.ACCU 8
	sep #$21		; E2 21
	.db $62, $AC, $E1		; 62 AC E1
	jmp $A4D2.w		; 4C D2 A4
	and ($63.b,X)		; 21 63
	ldy $2DF0.w,X		; BC F0 2D
	bne  51.b		; D0 33
	and ($A4.b)		; 32 A4
	jsr ($1CE1.w,X)		; FC E1 1C
	cpx $3F.b		; E4 3F
	and ($DD.b,X)		; 21 DD
	jsr $BD90.w		; 20 90 BD
	and ($34.b,S),Y		; 33 34
	ora $DEEF.w,X		; 1D EF DE
	ora ($11.b),Y		; 11 11
	stz $DC.b,X		; 74 DC
	bmi  17.b		; 30 11
	bpl -34.b		; 10 DE
	brk $B3.b		; 00 B3
	adc $1384.w		; 6D 84 13
	sbc $42EDE0.l,X		; FF E0 ED 42
	cmp $5F.b,S		; C3 5F
	sbc ($80.b),Y		; F1 80
	stp		; DB
	cmp $E1EF.w,X		; DD EF E1
	eor $32.b,X		; 55 32
	cpx $74CF.w		; EC CF 74
	sbc ($23.b),Y		; F1 23
	ora ($FA.b,X)		; 01 FA
	sbc $0242E4.l		; EF E4 42 02
	stz $10.b,X		; 74 10
	ldx $3FCE.w		; AE CE 3F
	eor ($41.b)		; 52 41
	bit $74A0.w		; 2C A0 74
	dec $0231.w,X		; DE 31 02
	jmp ($9033.w,X)		; 7C 33 90
	cmp $84D1.w		; CD D1 84
	and ($10.b)		; 32 10
	jsr $1CDF.w		; 20 DF 1C
	sbc ($41.b,X)		; E1 41
	cop $78.b		; 02 78
	cmp $E3B6F2.l		; CF F2 B6 E3
	sbc $F1.b,S		; E3 F1
	sbc $74F4.w		; ED F4 74
	sbc $F13F.w,X		; FD 3F F1
	sbc ($10.b)		; F2 10
	and ($BE.b,X)		; 21 BE
	cpx #$0574.w		; E0 74 05
	bpl  -9.b		; 10 F7
	cpx $BC0F.w		; EC 0F BC
	eor $F4.b		; 45 F4
	stz $10.b,X		; 74 10
	cpx #$0FCD.w		; E0 CD 0F
	and $BF2152.l		; 2F 52 21 BF
	bvs  45.b		; 70 2D
	sbc ($DF.b,X)		; E1 DF
	phd		; 0B
	sbc $EF2C03.l		; EF 03 2C EF
	bvs -22.b		; 70 EA
	rti		; 40

	cpy #$2D0E.w		; C0 0E 2D
	cmp $D00A.w,X		; DD 0A D0
	stz $D5.b,X		; 74 D5
	ora $A31E.w		; 0D 1E A3
	eor $3F0FF0.l,X		; 5F F0 0F 3F
	stz $DD.b,X		; 74 DD
	and $E0E240.l		; 2F 40 E2 E0
	ora ($F1.b)		; 12 F1
	sbc $F174.w,X		; FD 74 F1
	lda ($12.b),Y		; B1 12
	ora ($10.b),Y		; 11 10
	dec A		; 3A
	sbc ($DE.b),Y		; F1 DE
	bvs  17.b		; 70 11
	sbc ($0D.b,X)		; E1 0D
	tsb $F0DF.w		; 0C DF F0
	eor $FD.b,X		; 55 FD
	rts		; 60

	ldy #$2067.w		; A0 67 20
	and $30.b,S		; 23 30
	txy		; 9B
	cpy $64EE.w		; CC EE 64
	ora ($32.b)		; 12 32
	cop $0F.b		; 02 0F
	ora $2CFFDE.l		; 0F DE FF 2C
	stz $F0.b		; 64 F0
	jsl $5DF1E5.l		; 22 E5 F1 5D
	ora $FE.b,S		; 03 FE
	ora $E3BD54.l,X		; 1F 54 BD E3
	rol $10B1.w		; 2E B1 10
	ora ($2E.b,X)		; 01 2E
	and ($54.b,S),Y		; 33 54
	and $DF2A11.l,X		; 3F 11 2A DF
	inc $11EE.w,X		; FE EE 11
	ora ($64.b),Y		; 11 64
	ora $001112.l		; 0F 12 11 00
	ora ($1E.b)		; 12 1E
	xce		; FB
	ora $4FFD64.l,X		; 1F 64 FD 4F
	trb $F1.b		; 14 F1
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	mvp $D0,$0F		; 44 0F D0
	cmp $1F10.w,Y		; D9 10 1F
	jsr $1131.w		; 20 31 11
	stz $00.b,X		; 74 00
	brk $0F.b		; 00 0F
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	eor ($1F.b,X)		; 41 1F
	ora $3F0D78.l		; 0F 78 0D 3F
	ora ($1F.b),Y		; 11 1F
	eor $F11F.w		; 4D 1F F1
	sbc $0FF094.l		; EF 94 F0 0F
	brk $01.b		; 00 01
	ora ($31.b),Y		; 11 31
	dec $B4E4.w		; CE E4 B4
	sbc $130F11.l,X		; FF 11 0F 13
	tsa		; 3B
	cmp $C4E24F.l		; CF 4F E2 C4
	jsr $34D0.w		; 20 D0 34
	cpy $0E03.w		; CC 03 0E
	ora ($0D.b)		; 12 0D
	cpy $02.b		; C4 02
	rti		; 40

	lda $21D202.l,X		; BF 02 D2 21
	cmp $3CC422.l,X		; DF 22 C4 3C
	inc $122F.w		; EE 2F 12
	ora $1C13E0.l,X		; 1F E0 13 1C
	cpy $EF.b		; C4 EF
	and $F01E11.l,X		; 3F 11 1E F0
	and ($DD.b,S),Y		; 33 DD
	sep #$C4		; E2 C4
	brk $22.b		; 00 22
	sbc $3211.w		; ED 11 32
	ldx $F2F3.w,Y		; BE F3 F2
	cpy $20.b		; C4 20
	cmp $BD5E12.l		; CF 12 5E BD
	and ($22.b,X)		; 21 22
	ora $D0C4.w		; 0D C4 D0
	and $2A.b,X		; 35 2A
	bcs  49.b		; B0 31
	rti		; 40

	stp		; DB
	ora $C4.b,S		; 03 C4
	eor $C9.b		; 45 C9
	sbc $33.b,S		; E3 33
	ora $24BF.w,X		; 1D BF 24
	bvc -64.b		; 50 C0
	nop		; EA
	bcs  53.b		; B0 35
	and $15BD.w		; 2D BD 15
	adc ($AA.b),Y		; 71 AA
	iny		; C8
	rti		; 40

	sbc $42B2.w,X		; FD B2 42
	rol $55BB.w		; 2E BB 55
	bpl -64.b		; 10 C0
	bvc -53.b		; 50 CB
.ACCU 8
	sep #$66		; E2 66
	nop		; EA
	bcs  53.b		; B0 35
	and $E2C4.w		; 2D C4 E2
	bit $2A.b,X		; 34 2A
	lda $BD3F43.l,X		; BF 43 3F BD
	ora ($C8.b,S),Y		; 13 C8
	ora $1F45AD.l,X		; 1F AD 45 1F
	xba		; EB
	tsb $30.b		; 04 30
	trb $DAC0.w		; 1C C0 DA
	cpy #$35.b		; C0 35
	ora $15BE.w,X		; 1D BE 15
	adc $4FC8BB.l		; 6F BB C8 4F
	tsb $32C3.w		; 0C C3 32
	ora $0154AD.l,X		; 1F AD 54 01
	iny		; C8
	cpy $3013.w		; CC 13 30
	inc A		; 1A
	cpy $42.b		; C4 42
	inc $C0CF.w,X		; FE CF C0
	dec $5E25.w		; CE 25 5E
	ldy $5103.w,X		; BC 03 51
	jmp.w [$C0E1]		; DC E1 C0
	eor $EC.b,X		; 55 EC
	cmp $CE2D25.l		; CF 25 2D CE
	trb $4F.b		; 14 4F
	cpy $D0.b		; C4 D0
	bit $2D.b		; 24 2D
	cmp $CD3013.l		; CF 13 30 CD
	cop $C4.b		; 02 C4
	and ($EB.b,S),Y		; 33 EB
	sbc ($24.b),Y		; F1 24
	ora $23DF.w		; 0D DF 23
	lsr $ECC0.w		; 4E C0 EC
	cmp $DE1D34.l,X		; DF 34 1D DE
	ora $3E.b,X		; 15 3E
	cmp $23C4.w		; CD C4 23
	and $13DF.w		; 2D DF 13
	lsr $02CE.w		; 4E CE 02
	and ($C4.b),Y		; 31 C4
	sbc $3400.w		; ED 00 34
	cmp $13F0.w,X		; DD F0 13
	ora $B4FF.w,X		; 1D FF B4
	ora [$69.b]		; 07 69
	dec $70F3.w		; CE F3 70
	lda $76F0.w,X		; BD F0 76
	cpy #$0F.b		; C0 0F
	inc $2003.w		; EE 03 20
	inc $40E2.w,X		; FE E2 40
	inc $B0B0.w,X		; FE B0 B0
	stz $0E.b		; 64 0E
	ldy $2035.w,X		; BC 35 20
	stp		; DB
	inc $B0.b,X		; F6 B0
	and ($FB.b),Y		; 31 FB
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	ora $71C0.w		; 0D C0 71
	ora $41D1B4.l,X		; 1F B4 D1 41
	asl $46DF.w		; 0E DF 46
	ldy #$23EE.w		; A0 EE 23
	ldy $00.b,X		; B4 00
	inc $4BF5.w		; EE F5 4B
	asl $30E2.w		; 0E E2 30
	asl $EEB0.w		; 0E B0 EE
	ora $F1.b,X		; 15 F1
	sbc $1100.w		; ED 00 11
	sbc $4FB0F2.l,X		; FF F2 B0 4F
	rol $F1D0.w		; 2E D0 F1
	ora $0133FF.l,X		; 1F FF 33 01
	ldy #$1EBA.w		; A0 BA 1E
	and ($EE.b),Y		; 31 EE
	dec $50.b,X		; D6 50
	tsa		; 3B
	lda ($B0.b,X)		; A1 B0
	sbc ($1F.b)		; F2 1F
	sbc $DD0141.l,X		; FF 41 01 DD
	ora $FFB020.l		; 0F 20 B0 FF
	pea $1D11.w		; F4 11 1D
	cpx #$0FF2.w		; E0 F2 0F
	beq -80.b		; F0 B0
	eor $FFDE10.l,X		; 5F 10 DE FF
	and $011400.l		; 2F 00 14 01
	ldy $BE.b		; A4 BE
	rol $E231.w,X		; 3E 31 E2
	asl $A2.b,X		; 16 A2
	cmp $A002.w		; CD 02 A0
	bcs  -1.b		; B0 FF
	asl $51.b,X		; 16 51
	and $BECF.w,X		; 3D CF BE
	inc $14A4.w,X		; FE A4 14
	jmp $CF1E.w		; 4C 1E CF
	tsa		; 3B
	bmi   2.b		; 30 02
	adc $FD24A0.l		; 6F A0 24 FD
	inc $EECD.w,X		; FE CD EE
	bit $01.b		; 24 01
	jsr $0290.w		; 20 90 02
	sbc $B3DD.w		; ED DD B3
	lsr $F021.w		; 4E 21 F0
	rol $EE90.w		; 2E 90 EE
	cmp $E232.w,X		; DD 32 E2
	ora $0D0F04.l		; 0F 04 0F 0D
	bcc -62.b		; 90 C2
	bit $FF00.w,X		; 3C 00 FF
	eor ($00.b),Y		; 51 00
	phx		; DA
	eor ($90.b)		; 52 90
	lda ($0D.b),Y		; B1 0D
	asl $00.b,X		; 16 00
	inc A		; 1A
	lda $19.b		; A5 19
	rti		; 40

	ldy #$3EE1.w		; A0 E1 3E
	ora $E473BF.l		; 0F BF 73 E4
	xba		; EB
	bpl -76.b		; 10 B4
	cmp ($E0.b,S),Y		; D3 E0
	eor $92.b		; 45 92
	cpx $B514.w		; EC 14 B5
	ora $05B0.w		; 0D B0 05
	ror $B03C.w		; 6E 3C B0
	ora $45E03F.l		; 0F 3F E0 45
	bcs -30.b		; B0 E2
	jmp.w [$0100]		; DC 00 01
	inc $6E05.w		; EE 05 6E
	bit $C1B0.w		; 2C B0 C1
	ora ($2E.b,X)		; 01 2E
	sbc $BCE265.l		; EF 65 E2 BC
	bpl -64.b		; 10 C0
	ora ($EF.b),Y		; 11 EF
	sbc ($5F.b)		; F2 5F
	ora $22D0.w		; 0D D0 22
	asl $F1C4.w,X		; 1E C4 F1
	bit $DD.b,X		; 34 DD
	inc $0E44.w		; EE 44 0E
	dec $C414.w,X		; DE 14 C4
	eor $40D4A0.l		; 4F A0 D4 40
	sbc $35D1.w,X		; FD D1 35
	xce		; FB
	cpy $FD.b		; C4 FD
	bit $1F.b,X		; 34 1F
	cmp $5F13.w,X		; DD 13 5F
	lda $40C4D3.l,X		; BF D3 C4 40
	ora $35E0.w		; 0D E0 35
	dec $33EE.w,X		; DE EE 33
	ora $13EEC4.l		; 0F C4 EE 13
	bit $030D.w,X		; 3C 0D 03
	bpl  13.b		; 10 0D
	brk $B0.b		; 00 B0
	lsr $00.b,X		; 56 00
	ldy $3123.w,X		; BC 23 31
	cpy $40F7.w		; CC F7 40
	cpy #$E1FD.w		; C0 FD E1
	ora ($0E.b)		; 12 0E
	cpx #$0F41.w		; E0 41 0F
	cmp $1E20C4.l,X		; DF C4 20 1E
	cpx #$C133.w		; E0 33 C1
	cmp $B00031.l,X		; DF 31 00 B0
	cpx $7FD3.w		; EC D3 7F
	trb $22B0.w		; 1C B0 22
	rol $B0CE.w		; 2E CE B0
	eor $00.b		; 45 00
	cpy $3211.w		; CC 11 32
	cmp $40E5.w,X		; DD E5 40
	bcs  12.b		; B0 0C
	cmp ($13.b,X)		; C1 13
	asl $53DE.w,X		; 1E DE 53
	brk $CC.b		; 00 CC
	bcs  17.b		; B0 11
	bmi -19.b		; 30 ED
	sbc $20.b,X		; F5 20
	jsr ($03D1.w,X)		; FC D1 03
	bcs  14.b		; B0 0E
	cpx #$1F60.w		; E0 60 1F
	dec $101F.w,X		; DE 1F 10
	sbc $F124B0.l,X		; FF B0 24 F1
	sbc $F1F0.w,X		; FD F0 F1
	ora $B43F03.l		; 0F 03 3F B4
	rol $1FE2.w		; 2E E2 1F
	ora $D24EF2.l,X		; 1F F2 4E D2
	inc $3FB4.w		; EE B4 3F
	sbc ($0F.b),Y		; F1 0F
	and ($C0.b,S),Y		; 33 C0
	asl $EEF3.w,X		; 1E F3 EE
	bcs  -1.b		; B0 FF
	pea $1130.w		; F4 30 11
	cpx #$EF1D.w		; E0 1D EF
	cmp ($B0.b),Y		; D1 B0
	bvc  18.b		; 50 12
	inc $DF1E.w,X		; FE 1E DF
	inc $1263.w		; EE 63 12
	bcs  29.b		; B0 1D
	brk $CE.b		; 00 CE
	ora $0246.w		; 0D 46 02
	rol $B4D1.w,X		; 3E D1 B4
	bcs  78.b		; B0 4E
	and [$BF.b]		; 27 BF
	and $EDC4.w		; 2D C4 ED
	eor ($B0.b,X)		; 41 B0
	sbc [$31.b],Y		; F7 31
	jsl $D1ECCF.l		; 22 CF EC D1
	sbc $42.b,X		; F5 42
	bcs  18.b		; B0 12
	dec $D0FD.w,X		; DE FD D0
	sbc ($41.b,S),Y		; F3 41
	bpl   1.b		; 10 01
	bcs  -1.b		; B0 FF
	sbc $01E1.w,X		; FD E1 01
	and $105EE3.l		; 2F E3 5E 10
	bcs -66.b		; B0 BE
	and $44DE11.l		; 2F 11 DE 44
	sbc ($FB.b),Y		; F1 FB
	sbc ($B0.b)		; F2 B0
	sbc ($1D.b),Y		; F1 1D
	inc $2F.b,X		; F6 2F
	asl $1FB0.w,X		; 1E B0 1F
	ora ($B4.b),Y		; 11 B4
	ldy $6B.b,X		; B4 6B
	sbc ($DE.b),Y		; F1 DE
	bvc -15.b		; 50 F1
	sbc $B046.w,X		; FD 46 B0
	beq  28.b		; F0 1C
	rep #$00		; C2 00
	ora $004ED5.l,X		; 1F D5 4E 00
	cpy #$10E0.w		; C0 E0 10
	ora ($F0.b,X)		; 01 F0
	rti		; 40

	beq  -2.b		; F0 FE
	ora ($B0.b),Y		; 11 B0
	sbc ($1D.b,X)		; E1 1D
	rol $EE.b,X		; 36 EE
	trb $0ED2.w		; 1C D2 0E
	and $2EE6B0.l		; 2F B0 E6 2E
	beq -80.b		; F0 B0
	and $7FE1F2.l		; 2F F2 E1 7F
	bcs -32.b		; B0 E0
	cpx $F121.w		; EC 21 F1
	asl $FE35.w		; 0E 35 FE
	trb $E2B0.w		; 1C B0 E2
	ora $2EE62F.l,X		; 1F 2F E6 2E
	beq -80.b		; F0 B0
	jsr $F3B4.w		; 20 B4 F3
.ACCU 16
.INDEX 16
	rep #$79		; C2 79
.ACCU 8
	sep #$EE		; E2 EE
	eor ($D1.b),Y		; 51 D1
	trb $35B0.w		; 1C B0 35
	inc $D21D.w,X		; FE 1D D2
	asl $E610.w,X		; 1E 10 E6
	and $BFF0B0.l		; 2F B0 F0 BF
	jsr $E0F2.w		; 20 F2 E0
	adc ($E0.b),Y		; 71 E0
	xce		; FB
	ldy $52.b,X		; B4 52
	bne  45.b		; D0 2D
	mvp $3D,$AE		; 44 AE 3D
	sbc $1C.b		; E5 1C
	bcs   0.b		; B0 00
	sbc $4F.b		; E5 4F
	cpx #$21CE.w		; E0 CE 21
	sbc ($F0.b,X)		; E1 F0
	bcs 113.b		; B0 71
	sbc $0F02FB.l		; EF FB 02 0F
	asl $0D26.w,X		; 1E 26 0D
	bcs  13.b		; B0 0D
	cmp ($2F.b,X)		; C1 2F
	brk $F6.b		; 00 F6
	and $B4CEE0.l,X		; 3F E0 CE B4
	eor $6BE1D3.l		; 4F D3 E1 6B
	cmp ($FD.b)		; D2 FD
	.db $42, $EF		; 42 EF
	ldy $1F.b,X		; B4 1F
	eor ($DD.b,X)		; 41 DD
	and $1C04.w		; 2D 04 1C
	and $1FB016.l		; 2F 16 B0 1F
	sbc $F020C0.l,X		; FF C0 20 F0
	sbc $30.b,X		; F5 30
	cpx #$C1B4.w		; E0 B4 C1
	rti		; 40

	cmp ($F2.b)		; D2 F2
	tad		; 5B
	cmp ($FE.b),Y		; D1 FE
	.db $42, $B0		; 42 B0
	ora $0D540F.l		; 0F 0F 54 0D
	ora $3ED1.w		; 0D D1 3E
	ora $2F07B0.l		; 0F B0 07 2F
	cpx #$22CF.w		; E0 CF 22
	cpx #$71F2.w		; E0 F2 71
	bcs -18.b		; B0 EE
	cpx $0F13.w		; EC 13 0F
	asl $0D45.w		; 0E 45 0D
	sbc $D1B0.w,X		; FD B0 D1
	rol $F7FF.w,X		; 3E FF F7
	and $22CFDF.l,X		; 3F DF CF 22
	ldy $C2.b,X		; B4 C2
	sbc $6B.b,S		; E3 6B
	cmp $EE431D.l,X		; DF 1D 43 EE
	ora $1D36B0.l,X		; 1F B0 36 1D
	sbc $3FC1.w,X		; FD C1 3F
	sbc $B440F5.l,X		; FF F5 40 B4
	cmp ($D1.b)		; D2 D1
	.db $42, $C0		; 42 C0
	ora ($5C.b,X)		; 01 5C
	dec $B420.w,X		; DE 20 B4
	and ($1D.b),Y		; 31 1D
	cmp $1FE042.l,X		; DF 42 E0 1F
	bpl -48.b		; 10 D0
	tay		; A8
	and $4E03B1.l,X		; 3F B1 03 4E
	cmp $1010.w,X		; DD 10 10
	ora ($A4.b)		; 12 A4
	bmi  16.b		; 30 10
	dec $04F0.w,X		; DE F0 04
	rol $F0F0.w,X		; 3E F0 F0
	ldy #$F4EC.w		; A0 EC F4
	rol $31D0.w,X		; 3E D0 31
	beq  -1.b		; F0 FF
	brk $90.b		; 00 90
	sbc ($0C.b),Y		; F1 0C
	cmp ($31.b),Y		; D1 31
	ora ($10.b),Y		; 11 10
	inc $90F1.w,X		; FE F1 90
	sbc ($02.b),Y		; F1 02
	ora $CF0C01.l,X		; 1F 01 0C CF
	ora ($1E.b),Y		; 11 1E
	ldy #$1C24.w		; A0 24 1C
	sbc ($0F.b),Y		; F1 0F
	sbc $34DF11.l		; EF 11 DF 34
	bcc  11.b		; 90 0B
	ora $2F.b,S		; 03 2F
	tsb $43CD.w		; 0C CD 43
	stp		; DB
	pea $53A0.w		; F4 A0 53
	stp		; DB
	tsb $FB.b		; 04 FB
	cmp ($32.b,X)		; C1 32
	sbc $3A9034.l,X		; FF 34 90 3A
	ldx #$902A.w		; A2 2A 90
	.db $42, $EF		; 42 EF
	trb $55.b		; 14 55
	sty $ED.b,X		; 94 ED
	sbc ($0E.b,S),Y		; F3 0E
	cmp $2C.b,S		; C3 2C
	sep #$44		; E2 44
	pld		; 2B
	sty $C3.b,X		; 94 C3
	tsa		; 3B
	sta $04FC65.l,X		; 9F 65 FC 04
	adc ($AB.b,S),Y		; 73 AB
	ldy $F0.b		; A4 F0
	asl $52C2.w		; 0E C2 52
	cmp $BE5B15.l,X		; DF 15 5B BE
	ldy $E4.b		; A4 E4
	sbc $0E24.w,X		; FD 24 0E
	ora ($41.b)		; 12 41
	ldy $B401.w		; AC 01 B4
	ora $001001.l		; 0F 01 10 00
	and $EC.b,S		; 23 EC
	sbc ($2F.b,X)		; E1 2F
	ldy $F0.b,X		; B4 F0
	ora ($00.b)		; 12 00
	sbc ($1C.b,S),Y		; F3 1C
	cpy #$CE42.w		; C0 42 CE
	cpy #$10F1.w		; C0 F1 10
	beq  50.b		; F0 32
	sbc $40F2.w,X		; FD F2 40
	cmp $14C0.w		; CD C0 14
	rol $33DF.w		; 2E DF 33
	ora $42E1.w		; 0D E1 42
	cmp $15C0.w,X		; DD C0 15
	bit $41D1.w,X		; 3C D1 41
	inc $32E1.w		; EE E1 32
	inc $15C0.w		; EE C0 15
	trb $30E2.w		; 1C E2 30
	inc $31F1.w		; EE F1 31
	inc $25C0.w		; EE C0 25
	jsr ($2FF3.w,X)		; FC F3 2F
	inc $30F2.w		; EE F2 30
	sbc $EC34C0.l		; EF C0 34 EC
	ora $2F.b,S		; 03 2F
	inc $30F2.w		; EE F2 30
	sbc $CD33C0.l		; EF C0 33 CD
	ora ($0E.b,S),Y		; 13 0E
	sbc $E12F02.l,X		; FF 02 2F E1
	cpy #$C04E.w		; C0 4E C0
	eor ($EE.b,X)		; 41 EE
	beq  18.b		; F0 12
	asl $C004.w		; 0E 04 C0
	jsr ($2EF4.w,X)		; FC F4 2E
	sbc $EF2101.l		; EF 01 21 EF
	rti		; 40

	cpy #$32CE.w		; C0 CE 32
	inc $02FF.w,X		; FE FF 02
	ora $B00CF3.l,X		; 1F F3 0C B0
	dec $4E.b,X		; D6 4E
	dec $42F0.w,X		; DE F0 42
	cpx #$B15D.w		; E0 5D B1
	bcs  80.b		; B0 50
	dec $2100.w,X		; DE 00 21
	sbc ($2B.b)		; F2 2B
	cmp ($50.b,S),Y		; D3 50
	bcs -35.b		; B0 DD
	ora ($32.b,X)		; 01 32
	beq  75.b		; F0 4B
	lda ($71.b),Y		; B1 71
	cmp $F0C0.w,X		; DD C0 F0
	and ($00.b,X)		; 21 00
	rol $40E0.w,X		; 3E E0 40
	inc $C000.w		; EE 00 C0
	ora ($00.b)		; 12 00
	and $40E1.w		; 2D E1 40
	inc INIDSP.w		; EE 00 21
	cpy #$1D00.w		; C0 00 1D
	sep #$40		; E2 40
	inc INIDSP.w		; EE 00 21
	sbc ($B0.b),Y		; F1 B0
	ora $6ED5.w,Y		; 19 D5 6E
	lda $4201.w,X		; BD 01 42
	sbc ($EA.b,S),Y		; F3 EA
	bcs  -9.b		; B0 F7
	lsr $13BD.w		; 4E BD 13
	and ($EF.b)		; 32 EF
	cmp ($32.b,X)		; C1 32
	bcs -20.b		; B0 EC
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	tsa		; 3B
	bcs 115.b		; B0 73
	xba		; EB
	cmp $1222C0.l,X		; DF C0 22 12
	lda $1E14.w,X		; BD 14 1E
	dec $2203.w,X		; DE 03 22
	cpy #$0B.b		; C0 0B
	sbc $40.b,S		; E3 40
	sbc $32E1.w		; ED E1 32
	and $C0CF.w		; 2D CF C0
	eor $FE.b,S		; 43 FE
	sbc $BD2223.l		; EF 23 22 BD
	trb $2F.b		; 14 2F
	cpy #$DE.b		; C0 DE
	sbc ($33.b,S),Y		; F3 33
	phd		; 0B
	cmp ($41.b,S),Y		; D3 41
	sbc $C0D0.w,X		; FD D0 C0
	and ($3D.b,S),Y		; 33 3D
	lda $CD1E43.l,X		; BF 43 1E CD
	bit $31.b		; 24 31
	cpy #$BC.b		; C0 BC
	trb $30.b		; 14 30
	jmp.w [$43F3]		; DC F3 43
	xba		; EB
	cmp ($C0.b)		; D2 C0
	.db $42, $FC		; 42 FC
	cmp ($44.b,X)		; C1 44
	bit $44BF.w		; 2C BF 44
	asl $05C8.w,X		; 1E C8 05
	rol $04DD.w		; 2E DD 04
	eor $F3ED.w,X		; 5D ED F3
	eor ($C8.b,X)		; 41 C8
	cmp $DD51B4.l		; CF B4 51 DD
	sbc $CFFD53.l,X		; FF 53 FD CF
	iny		; C8
	eor ($1C.b,S),Y		; 53 1C
	cmp $DB2E24.l,X		; DF 24 2E DB
	bit $3E.b,X		; 34 3E
	iny		; C8
	cpx $4103.w		; EC 03 41
	jmp.w [$32D5]		; DC D5 32
	cmp $C8E1.w,X		; DD E1 C8
	eor $ED.b,S		; 43 ED
	cmp ($24.b),Y		; D1 24
	ora $23D0.w		; 0D D0 23
	sbc $CF1EB0.l,X		; FF B0 1E CF
	and ($0F.b,X)		; 21 0F
	sbc ($1E.b,S),Y		; F3 1E
	cpx #$F2.b		; E0 F2
	bcs  47.b		; B0 2F
	cmp $CE4E04.l,X		; DF 04 4E CE
	sbc ($40.b)		; F2 40
	cmp $15B4.w		; CD B4 15
	tsa		; 3B
	cpy #$12.b		; C0 12
	eor $6D02CE.l		; 4F CE 02 6D
	ldy #$EC.b		; A0 EC
	tyx		; BB
	and $1E.b,X		; 35 1E
	jmp.w [$0F63]		; DC 63 0F
	nop		; EA
	ldy #$03.b		; A0 03
	ora $FE330D.l		; 0F 0D 33 FE
	phd		; 0B
	sbc ($0F.b,S),Y		; F3 0F
	ldy #$0D.b		; A0 0D
	bit $FE.b		; 24 FE
	ora $1EE2.w		; 0D E2 1E
	asl $A024.w,X		; 1E 24 A0
	inc $E20D.w,X		; FE 0D E2
	asl $240F.w		; 0E 0F 24
	inc $90FE.w,X		; FE FE 90
	cmp $1D.b,S		; C3 1D
	ora $FCFD35.l		; 0F 35 FD FC
	cmp ($0F.b),Y		; D1 0F
	sty $10.b,X		; 94 10
	ora ($BF.b,S),Y		; 13 BF
	rol $FEE5.w		; 2E E5 FE
	and $0C8025.l		; 2F 25 80 0C
	dex		; CA
	ldx #$3E.b		; A2 3E
	sbc $22E4.w		; ED E4 22
	sbc $F484.w		; ED 84 F4
	and $40F5DD.l		; 2F DD F5 40
	dec $40E2.w,X		; DE E2 40
	sty $ED.b		; 84 ED
	lda ($62.b)		; B2 62
	sbc $32FF.w,X		; FD FF 32
	ora $80CE.w,X		; 1D CE 80
	sbc ($20.b,X)		; E1 20
	dec $43F1.w,X		; DE F1 43
	cpx $11DF.w		; EC DF 11
	stz $AE.b,X		; 74 AE
	and ($63.b),Y		; 31 63
	tsx		; BA
	sbc $11BF51.l,X		; FF 51 BF 11
	stz $37.b,X		; 74 37
	cpy $22EE.w		; CC EE 22
	dec $334F.w,X		; DE 4F 33
	tsb $FD70.w		; 0C 70 FD
	lda $F2DFED.l,X		; BF ED DF F2
	eor $88CDFE.l,X		; 5F FE CD 88
	asl $F221.w		; 0E 21 F2
	sbc $D60E.w,X		; FD 0E D6
	rol $B477.w		; 2E 77 B4
	ora $02ED0F.l,X		; 1F 0F ED 02
	ora ($60.b,S),Y		; 13 60
	cmp $C4FA.w		; CD FA C4
	sbc ($20.b)		; F2 20
	bit $DD.b,X		; 34 DD
	inc $41D1.w,X		; FE D1 41
	ora $C4.b,X		; 15 C4
	cpx $D0E0.w		; EC E0 D0
	and ($14.b)		; 32 14
	jsr ($E0D1.w,X)		; FC D1 E0
	cpy #$02.b		; C0 02
	trb $4F.b		; 14 4F
	cmp $1213EE.l,X		; DF EE 13 12
	and $2EB4B4.l,X		; 3F B4 B4 2E
	.db $42, $DF		; 42 DF
	jmp ($4DB1.w)		; 6C B1 4D
	trb $B4.b		; 14 B4
	stp		; DB
	jsl $FDCD7F.l		; 22 7F CD FD
	rol $2B.b		; 26 2B
	brk $B0.b		; 00 B0
	and $0E.b		; 25 0E
	inc $40D2.w		; EE D2 40
	sbc $B05FF7.l		; EF F7 5F B0
	ldx $55CF.w,Y		; BE CF 55
	sbc $51E3.w		; ED E3 51
	inc $C0DD.w		; EE DD C0
	ora ($0E.b)		; 12 0E
	beq  66.b		; F0 42
	inc $03FE.w,X		; FE FE 03
	asl $01C4.w,X		; 1E C4 01
	bit $CD.b		; 24 CD
	brk $03.b		; 00 03
	and $15D1.w		; 2D D1 15
	cpy $0C.b		; C4 0C
	cmp ($F2.b),Y		; D1 F2
	rti		; 40

	dec $5E12.w		; CE 12 5E
	cmp $20C4.w		; CD C4 20
	.db $42, $DB		; 42 DB
	cop $53.b		; 02 53
	wai		; CB
.ACCU 8
.INDEX 8
	sep #$34		; E2 34
	cpy $0B.b		; C4 0B
	cmp ($45.b,X)		; C1 45
	and #$B0.b		; 29 B0
	bit $3E.b,X		; 34 3E
	lda $53C8.w		; AD C8 53
	asl A		; 0A
	ldx #$72.b		; A2 72
	ora $46CD.w		; 0D CD 46
	asl $ACC8.w,X		; 1E C8 AC
	lsr $2E.b		; 46 2E
	cmp $5FF5.w		; CD F5 5F
	sbc #$F4.b		; E9 F4
	cpy $55.b		; C4 55
	rol $16BC.w		; 2E BC 16
	bvc -86.b		; 50 AA
	ora $51.b		; 05 51
	iny		; C8
	bcs  22.b		; B0 16
	and $F5BE.w,X		; 3D BE F5
	bvc -68.b		; 50 BC
	ora $C4.b,S		; 03 C4
	and $3E.b		; 25 3E
	cpy $4F05.w		; CC 05 4F
	dec $42F2.w		; CE F2 42
	iny		; C8
	cmp $CD4EF5.l		; CF F5 4E CD
	and ($41.b,X)		; 21 41
	cmp $C8F0.w,X		; DD F0 C8
	mvp $D2,$DD		; 44 DD D2
	and $1C.b,S		; 23 1C
	inc $3C24.w		; EE 24 3C
	cpy #$2E.b		; C0 2E
	cmp $3104.w,X		; DD 04 31
	cpy $41F4.w		; CC F4 41
	cpx $D2C0.w		; EC C0 D2
	eor $0C.b,S		; 43 0C
	cpy #$43.b		; C0 43
	ora $34CE.w		; 0D CE 34
	iny		; C8
	sbc $5D13.w		; ED 13 5D
	cmp $4121.w,X		; DD 21 41
	dec $C8D3.w		; CE D3 C8
	eor $CD.b,S		; 43 CD
.ACCU 8
	sep #$23		; E2 23
	tas		; 1B
	sbc $1C44.w,X		; FD 44 1C
	iny		; C8
	bne  19.b		; D0 13
	rol $E5DE.w,X		; 3E DE E5
	rti		; 40

	ldx $C801.w,Y		; BE 01 C8
	.db $42, $DE		; 42 DE
	bne  83.b		; D0 53
	jsr ($24D1.w,X)		; FC D1 24
	trb $FCC8.w		; 1C C8 FC
	bit $3F.b		; 24 3F
	cmp $4012.w		; CD 12 40
	sbc $C8D3.w		; ED D3 C8
	and ($ED.b,S),Y		; 33 ED
	cmp ($24.b),Y		; D1 24
	trb $24DF.w		; 1C DF 24
	ora $B2CAB4.l,X		; 1F B4 CA B2
	adc $FA.b		; 65 FA
	bne  51.b		; D0 33
	asl $A4DF.w,X		; 1E DF A4
	eor $1D.b		; 45 1D
	cmp $CE1E51.l		; CF 51 1E CE
	ora $4E.b,X		; 15 4E
	ldy $BC.b		; A4 BC
	rol $2F.b		; 26 2F
	cmp $41D4.w,X		; DD D4 41
	inc $A0D5.w		; EE D5 A0
	and $3FF1F0.l		; 2F F0 F1 3F
	ldx $6103.w,Y		; BE 03 61
	plb		; AB
	ldy $22.b,X		; B4 22
	and $21CF.w,X		; 3D CF 21
	rti		; 40

	cmp $5202.w		; CD 02 52
	ldy $BC.b,X		; B4 BC
	ora ($34.b,X)		; 01 34
	xce		; FB
	cpx #$35.b		; E0 35
	sbc $A0E0.w		; ED E0 A0
	cmp $61.b,S		; C3 61
	cmp $3FE6.w,X		; DD E6 3F
	inc $50C1.w		; EE C1 50
	ldy #$EE.b		; A0 EE
	sbc $4F.b		; E5 4F
	cmp $EF31CF.l,X		; DF CF 31 EF
	sbc $A0.b,X		; F5 A0
	bmi -34.b		; 30 DE
	cmp $05FF21.l		; CF 21 FF 05
	and $D3A4EF.l		; 2F EF A4 D3
	and $ED04F1.l		; 2F F1 04 ED
	beq -15.b		; F0 F1
	and $26E194.l,X		; 3F 94 E1 26
	cmp $E2D0.w		; CD D0 E2
	and $801202.l		; 2F 02 12 80
	rol $D1DE.w		; 2E DE D1
	bpl -34.b		; 10 DE
	ora ($1E.b)		; 12 1E
	phx		; DA
	sty $17.b		; 84 17
	and $02EE.w,X		; 3D EE 02
	and $5EC5FD.l		; 2F FD C5 5E
	sty $0E.b		; 84 0E
.ACCU 8
	sep #$20		; E2 20
	ora $51C0.w,X		; 1D C0 51
	sbc $2284E0.l,X		; FF E0 84 22
	jsr $31AD.w		; 20 AD 31
	lsr $F1FE.w		; 4E FE F1
	eor ($74.b)		; 52 74
	tax		; AA
	cmp $CC1E44.l,X		; DF 44 1E CC
	lsr $2B.b		; 46 2B
	dec $C070.w,X		; DE 70 C0
	bit $1B.b		; 24 1B
	cmp ($32.b,X)		; C1 32
	jsr ($21D1.w,X)		; FC D1 21
	rts		; 60

	and $40D3.w,X		; 3D D3 40
	xba		; EB
	bne  33.b		; D0 21
	xce		; FB
	ldx #$60.b		; A2 60
	.db $42, $FB		; 42 FB
	ldx #$44.b		; A2 44
	xce		; FB
	sta $1C71.w,X		; 9D 71 1C
	rts		; 60

	lda $BE1023.l		; AF 23 10 BE
	bit $20.b		; 24 20
	txs		; 9A
	and $3260.w,X		; 3D 60 32
	xce		; FB
	sbc ($03.b,S),Y		; F3 03
	dec $D0EF.w,X		; DE EF D0
	asl $3064.w		; 0E 64 30
	beq  31.b		; F0 1F
	asl $D4D1.w,X		; 1E D1 D4
	and ($0E.b),Y		; 31 0E
	sty $00.b,X		; 94 00
	ora $EFFE01.l,X		; 1F 01 FE EF
	bit $4E.b		; 24 4E
	cmp $10C8.w,X		; DD C8 10
	ora $1003F0.l		; 0F F0 03 10
	cpx $33F3.w		; EC F3 33
	iny		; C8
	jsr ($02EF.w,X)		; FC EF 02
	bvs -53.b		; 70 CB
	sbc $25.b,S		; E3 25
	tas		; 1B
	iny		; C8
	bne -30.b		; D0 E2
	adc ($BC.b)		; 72 BC
	sbc ($36.b,X)		; E1 36
	asl A		; 0A
	cmp ($C4.b)		; D2 C4
	lda $CD1C56.l,X		; BF 56 1C CD
	asl $4F.b,X		; 16 4F
	dec $C4B0.w,X		; DE B0 C4
	eor $0D.b,X		; 55 0D
	ldx $4E25.w,Y		; BE 25 4E
	dec $64C0.w,X		; DE C0 64
	iny		; C8
	cmp $33F3.w		; CD F3 33
	xba		; EB
	brk $F5.b		; 00 F5
	and $C4ED.w,X		; 3D ED C4
	cmp $DF1D34.l,X		; DF 34 1D DF
	ora ($2F.b,S),Y		; 13 2F
	sbc $B4F3.w,X		; FD F3 B4
	eor $4E15BD.l,X		; 5F BD 15 4E
	lda $5014.w		; AD 14 50
	jmp.w [$E1C4]		; DC C4 E1
	.db $42, $EC		; 42 EC
	sep #$43		; E2 43
	inc $54CE.w		; EE CE 54
	cpy #$3F.b		; C0 3F
	cmp $3203.w		; CD 03 32
	phd		; 0B
	cmp ($41.b)		; D2 41
	sbc $13C4.w,X		; FD C4 13
	and $51C30D.l		; 2F 0D C3 51
	cmp $41E2.w,X		; DD E2 41
	cpy #$21.b		; C0 21
	cpy $2F15.w		; CC 15 2F
	cmp $3114.w		; CD 14 31
	stp		; DB
	cpy $54.b		; C4 54
	jsr ($43D1.w,X)		; FC D1 43
	inc $54B0.w,X		; FE B0 54
	jmp.w [$CEC0]		; DC C0 CE
	bit $3F.b		; 24 3F
	lda $1D35.w,X		; BD 35 1D
	ldx $C034.w,Y		; BE 34 C0
	rol $44BF.w		; 2E BF 44
	tsb $43C0.w		; 0C C0 43
	tsb $C0D2.w		; 0C D2 C0
	eor ($DC.b,X)		; 41 DC
	sbc $42.b,S		; E3 42
	jmp.w [$3F04]		; DC 04 3F
	cmp $14C0.w		; CD C0 14
	and $1D34BD.l,X		; 3F BD 34 1D
	cmp $C02C34.l		; CF 34 2C C0
	cpy #$42.b		; C0 42
	jsr ($43D1.w,X)		; FC D1 43
	jsr ($40E3.w,X)		; FC E3 40
	cpy #$DC.b		; C0 DC
	sbc ($40.b,S),Y		; F3 40
	cmp $1E24.w		; CD 24 1E
	dec $C034.w		; CE 34 C0
	ora $32D1.w,X		; 1D D1 32
	jsr ($42E2.w,X)		; FC E2 42
	cmp $C003.w,X		; DD 03 C0
	and $3E14CD.l		; 2F CD 14 3E
	cmp $D00D32.l		; CF 32 0D D0
	cpy #$43.b		; C0 43
	jsr ($30E2.w,X)		; FC E2 30
	sbc $3003.w		; ED 03 30
	dec $23C0.w		; CE C0 23
	asl $33CF.w		; 0E CF 33
	tsb $31E2.w		; 0C E2 31
	cpx $E3C0.w		; EC C0 E3
	eor ($CD.b,X)		; 41 CD
	ora ($1F.b,S),Y		; 13 1F
	dec $1D24.w		; CE 24 1D
	cpy #$D1.b		; C0 D1
	and ($EC.b),Y		; 31 EC
	sbc ($40.b,S),Y		; F3 40
	dec $1E23.w,X		; DE 23 1E
	cpy #$D0.b		; C0 D0
	and ($ED.b,S),Y		; 33 ED
	sbc ($2F.b)		; F2 2F
	dec $0D24.w,X		; DE 24 0D
	cpy #$E1.b		; C0 E1
	and ($ED.b),Y		; 31 ED
	tsb $4E.b		; 04 4E
	cmp $C00D22.l		; CF 22 0D C0
	cmp ($42.b),Y		; D1 42
	cmp $2F12.w,X		; DD 12 2F
	cmp $C0FD34.l,X		; DF 34 FD C0
.ACCU 8
	sep #$21		; E2 21
	sbc $3E04.w		; ED 04 3E
	cmp $C00D22.l,X		; DF 22 0D C0
	cmp ($41.b)		; D2 41
	cmp $2F12.w,X		; DD 12 2F
	cmp $C0FD34.l,X		; DF 34 FD C0
.ACCU 8
	sep #$21		; E2 21
	sbc $3E04.w		; ED 04 3E
	bne  34.b		; D0 22
	ora $D2C0.w		; 0D C0 D2
	eor ($DD.b),Y		; 51 DD
	ora ($2F.b)		; 12 2F
	cmp $C0FD34.l		; CF 34 FD C0
.ACCU 8
	sep #$21		; E2 21
	cmp $3E14.w,X		; DD 14 3E
	cpy #$22.b		; C0 22
	ora $E2C0.w		; 0D C0 E2
	eor ($DE.b,X)		; 41 DE
	ora ($1E.b)		; 12 1E
	bne  66.b		; D0 42
	sbc $02C0.w		; ED C0 02
	and $FD34DF.l		; 2F DF 34 FD
	sbc ($21.b)		; F2 21
	sbc $14C0.w		; ED C0 14
	and $22D1.w		; 2D D1 22
	sbc $5FE3.w,X		; FD E3 5F
	cmp $FD30C4.l		; CF C4 30 FD
	pea $B04D.w		; F4 4D B0
	eor ($0D.b,X)		; 41 0D
	sep #$C0		; E2 C0
	and ($ED.b,S),Y		; 33 ED
	ora ($20.b,X)		; 01 20
	inc $0D24.w		; EE 24 0D
	sbc ($C0.b,X)		; E1 C0
	and ($ED.b,X)		; 21 ED
	tsb $3E.b		; 04 3E
	bne  34.b		; D0 22
	ora $C4E2.w		; 0D E2 C4
	tsa		; 3B
	cmp ($31.b),Y		; D1 31
	inc $4EE3.w,X		; FE E3 4E
	cmp $2FC041.l		; CF 41 C0 2F
	dec $FD34.w,X		; DE 34 FD
	sbc ($21.b),Y		; F1 21
	sbc $C014.w		; ED 14 C0
	ora $22D1.w,X		; 1D D1 22
	sbc $4FF3.w,X		; FD F3 4F
	cmp $0DC022.l,X		; DF 22 C0 0D
	cmp ($42.b),Y		; D1 42
	cmp $2F12.w,X		; DD 12 2F
	cmp $FDC034.l,X		; DF 34 C0 FD
.ACCU 8
	sep #$21		; E2 21
	sbc $3D04.w		; ED 04 3D
	bne  34.b		; D0 22
	cpy $DE.b		; C4 DE
	trb $2C.b		; 14 2C
	cmp ($31.b),Y		; D1 31
	sbc $4FF3.w,X		; FD F3 4F
	cpy #$ED.b		; C0 ED
	cop $2F.b		; 02 2F
	dec $FD24.w,X		; DE 24 FD
.ACCU 8
	sep #$21		; E2 21
	cpy #$ED.b		; C0 ED
	tsb $2D.b		; 04 2D
	bne  34.b		; D0 22
	sbc $40E2.w,X		; FD E2 40
	bcs -84.b		; B0 AC
	bit $2C.b,X		; 34 2C
	ldy #$77.b		; A0 77
	cmp #$F5.b		; C9 F5
	eor $25DDC0.l		; 4F C0 DD 25
	ora $21D1.w,X		; 1D D1 21
	sbc $4EF3.w		; ED F3 4E
	cpy #$DF.b		; C0 DF
	jsl $42D10D.l		; 22 0D D1 42
	cmp $2F12.w,X		; DD 12 2F
	cpy #$DF.b		; C0 DF
	bit $0D.b,X		; 34 0D
.ACCU 8
	sep #$21		; E2 21
	sbc $3E04.w		; ED 04 3E
	cpy $E3.b		; C4 E3
	bmi -19.b		; 30 ED
	tsb $3D.b		; 04 3D
	cpy #$41.b		; C0 41
	inc $DFC0.w,X		; FE C0 DF
	bit $FD.b,X		; 34 FD
	sbc ($20.b)		; F2 20
	sbc $2D14.w		; ED 14 2D
	cpy $03.b		; C4 03
	and $2C14EE.l		; 2F EE 14 2C
	bne  65.b		; D0 41
	sbc $DFC0.w,X		; FD C0 DF
	bit $ED.b,X		; 34 ED
	sbc ($20.b)		; F2 20
	sbc $1D14.w		; ED 14 1D
	bcs -78.b		; B0 B2
	and ($EA.b)		; 32 EA
	inc $7C.b,X		; F6 7C
	sta $C00B33.l,X		; 9F 33 0B C0
	sbc ($41.b,X)		; E1 41
	cmp $2F12.w,X		; DD 12 2F
	cmp $B0FD34.l,X		; DF 34 FD B0
	cmp ($32.b)		; D2 32
	phx		; DA
	ora [$5C.b],Y		; 17 5C
	lda $C00B33.l		; AF 33 0B C0
	sep #$41		; E2 41
	cmp $2F12.w,X		; DD 12 2F
	cmp $C0FD34.l,X		; DF 34 FD C0
	sbc ($21.b),Y		; F1 21
	sbc $3E04.w,X		; FD 04 3E
	cmp $B41E12.l,X		; DF 12 1E B4
	inc $6C.b,X		; F6 6C
	stz $2D53.w,X		; 9E 53 2D
	lda ($66.b,X)		; A1 66
	lda #$B4.b		; A9 B4
	sbc $41.b,X		; F5 41
	cpy $6B05.w		; CC 05 6B
	cmp $3E24.w		; CD 24 3E
	cpy #$FE.b		; C0 FE
	sbc ($32.b)		; F2 32
	sbc $31F2.w		; ED F2 31
	cpx $C0F3.w		; EC F3 C0
	eor ($CC.b,X)		; 41 CC
	ora $30.b,S		; 03 30
	jmp.w [$3004]		; DC 04 30
	cpy $04C0.w		; CC C0 04
	and $3014CD.l,X		; 3F CD 14 30
	cpy $3F14.w		; CC 14 3F
	cpy $D0.b		; C4 D0
	eor ($FD.b,S),Y		; 53 FD
	cpy #$53.b		; C0 53
	jsr ($43D1.w,X)		; FC D1 43
	cpy #$30.b		; C0 30
	cpy $3F14.w		; CC 14 3F
	cmp $3104.w		; CD 04 31
	cmp $E5B0.w,X		; DD B0 E5
	adc ($CB.b,X)		; 61 CB
	sbc $42.b,S		; E3 42
	jsr ($31E1.w,X)		; FC E1 31
	tay		; A8
	sbc ($44.b)		; F2 44
	stp		; DB
	ora $0FFC52.l		; 0F 52 FC 0F
	and ($A4.b)		; 32 A4
	ora $0012E0.l,X		; 1F E0 12 00
	dec $1F33.w		; CE 33 1F
	cpx $BFA0.w		; EC A0 BF
	bit $32.b,X		; 34 32
	dex		; CA
	cmp ($44.b)		; D2 44
	ora $94DF.w		; 0D DF 94
	adc ($DB.b)		; 72 DB
	cmp ($30.b),Y		; D1 30
	brk $1F.b		; 00 1F
	bit $90F1.w,X		; 3C F1 90
	ora ($3F.b)		; 12 3F
	inc $0FF0.w		; EE F0 0F
	inc $6F14.w		; EE 14 6F
	sty $E0.b,X		; 94 E0
	and ($1D.b,X)		; 21 1D
	bne  84.b		; D0 54
	pld		; 2B
	dec $8812.w,X		; DE 12 88
	sbc $33E1.w		; ED E1 33
	dec $012F.w		; CE 2F 01
	and $0D78E0.l		; 2F E0 78 0D
	eor ($E0.b,X)		; 41 E0
	sbc $30.b		; E5 30
	cmp $00F3.w,X		; DD F3 00
	stz $AD.b,X		; 74 AD
	wai		; CB
	jsl $033201.l		; 22 01 32 03
	adc $CC7411.l,X		; 7F 11 74 CC
	tyx		; BB
	bmi  28.b		; 30 1C
	cpy $65.b		; C4 65
	bvc -50.b		; 50 CE
	stz $11.b,X		; 74 11
	dec $20CD.w		; CE CD 20
	and ($2F.b),Y		; 31 2F
	eor $10.b,S		; 43 10
	stz $3C.b,X		; 74 3C
	cpy $F1C3.w		; CC C3 F1
	cmp $6523.w		; CD 23 65
	tsb $D274.w		; 0C 74 D2
	ora ($EC.b,S),Y		; 13 EC
	bcs  36.b		; B0 24
	sbc ($C0.b),Y		; F1 C0
	and ($60.b,X)		; 21 60
	and ($0F.b),Y		; 31 0F
	inc $CDEF.w,X		; FE EF CD
	and ($FC.b,X)		; 21 FC
	cmp $4164.w		; CD 64 41
	asl $11FF.w		; 0E FF 11
	asl $0EFF.w		; 0E FF 0E
	ora ($74.b)		; 12 74
	ora ($0F.b),Y		; 11 0F
	beq  18.b		; F0 12
	trb $33FD.w		; 1C FD 33
	and $33C378.l		; 2F 78 C3 33
	cmp $2E20E0.l,X		; DF E0 20 2E
	cpx #$3E.b		; E0 3E
	stz $22.b		; 64 22
	trb $0F1F.w		; 1C 1F 0F
	ror $12EB.w		; 6E EB 12
	bit $60.b,X		; 34 60
	bpl -35.b		; 10 DD
	bit $1F.b,X		; 34 1F
	xba		; EB
	cmp ($22.b,S),Y		; D3 22
	sbc $0064.w		; ED 64 00
	.db $42, $FC		; 42 FC
	cpx #$45.b		; E0 45
	cmp $42B3.w		; CD B3 42
	stz $1F.b		; 64 1F
	cmp $0F14.w,X		; DD 14 0F
	cmp $F01F21.l,X		; DF 21 1F F0
	bvc  19.b		; 50 13
	lda $15AD.w,X		; BD AD 15
	jsr $63BB.w		; 20 BB 63
	and ($50.b),Y		; 31 50
	cpx $44E0.w		; EC E0 44
	and $1F42DF.l		; 2F DF 42 1F
	cmp $E050.w,X		; DD 50 E0
	asl $000F.w,X		; 1E 0F 00
	ora ($1B.b)		; 12 1B
	ora $1B5070.l		; 0F 70 50 1B
	asl $11.b		; 06 11
	ora ($11.b),Y		; 11 11
	ora ($1B.b)		; 12 1B
	rts		; 60

	bvc  18.b		; 50 12
	jsr $2301.w		; 20 01 23
	.db $42, $B3		; 42 B3
	and ($4B.b,S),Y		; 33 4B
	bvs -15.b		; 70 F1
	bpl  15.b		; 10 0F
	and ($01.b),Y		; 31 01
	jsl $904E13.l		; 22 13 4E 90
	beq  17.b		; F0 11
	bpl   1.b		; 10 01
	sbc ($4F.b),Y		; F1 4F
	sbc ($FE.b),Y		; F1 FE
	bra   2.b		; 80 02
	ora $0EF4.w		; 0D F4 0E
	adc $D1.b,S		; 63 D1
	and $B284F1.l		; 2F F1 84 B2
	eor $D113.w,X		; 5D 13 D1
	asl $FAF2.w		; 0E F2 FA
	eor $80.b,S		; 43 80
	trb $31.b		; 14 31
	sbc ($3F.b)		; F2 3F
	cmp ($1F.b),Y		; D1 1F
	eor ($CF.b,X)		; 41 CF
	bra  31.b		; 80 1F
	bne  31.b		; D0 1F
	cop $F1.b		; 02 F1
	eor $80DDE2.l		; 4F E2 DD 80
	ora ($23.b),Y		; 11 23
	bpl  20.b		; 10 14
	ora $E210.w,X		; 1D 10 E2
	jmp $DE80.w		; 4C 80 DE
	cpx #$04.b		; E0 04
	ora $E532.w		; 0D 32 E5
	jmp $80D4.w		; 4C D4 80
	sbc $ED05.w,Y		; F9 05 ED
	mvn $20,$EF		; 54 EF 20
	sbc ($E1.b),Y		; F1 E1
	bra  12.b		; 80 0C
	tsb $D2.b		; 04 D2
	rts		; 60

	lda ($4F.b,X)		; A1 4F
	lda $8112.w,X		; BD 12 81
	rol $50B1.w		; 2E B1 50
	cmp $E11E.w		; CD 1E E1
	cpx $4F.b		; E4 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	asl $0EFD.w		; 0E FD 0E
	dec $DFE1.w,X		; DE E1 DF
	inc $64E0.w,X		; FE E0 64
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	ora ($D0.b,X)		; 01 D0
	bit $2F2E.w,X		; 3C 2E 2F
	sbc ($64.b),Y		; F1 64
	jmp $A501.w		; 4C 01 A5
	ora ($03.b,X)		; 01 03
	lda $F1.b,X		; B5 F1
	cpx $60.b		; E4 60
	ora ($33.b,S),Y		; 13 33
	ora $1D1D2B.l		; 0F 2B 1D 1D
	sbc $00703F.l		; EF 3F 70 00
	brk $FE.b		; 00 FE
	asl $D4FF.w		; 0E FF D4
	sbc $640E.w,X		; FD 0E 64
	ora $5E2D3C.l		; 0F 3C 2D 5E
	cmp $1C.b		; C5 1C
	jsr $700C.w		; 20 0C 70
	ora $0BDFE1.l		; 0F E1 DF 0B
	cop $B2.b		; 02 B2
	inc $7410.w,X		; FE 10 74
	cop $DF.b		; 02 DF
	and $D401.w,X		; 3D 01 D4
	sbc $80F1C4.l,X		; FF C4 F1 80
	beq  15.b		; F0 0F
	brk $01.b		; 00 01
	cmp ($FF.b,X)		; C1 FF
	sbc $C07000.l		; EF 00 70 C0
	asl $DEFE.w		; 0E FE DE
	brk $E2.b		; 00 E2
	cpy #$DE.b		; C0 DE
	bra -16.b		; 80 F0
	pei ($D0.b)		; D4 D0
	ora $0F0D00.l		; 0F 00 0D 0F
	ora $1F80.w,X		; 1D 80 1F
	beq -32.b		; F0 E0
	bmi   1.b		; 30 01
	sbc $94C0A1.l,X		; FF A1 C0 94
	bpl   0.b		; 10 00
	cpx #$D0.b		; E0 D0
	ora $23.b,S		; 03 23
	ora ($CD.b,X)		; 01 CD
	ldy $EF.b		; A4 EF
	cop $32.b		; 02 32
	ora ($CD.b),Y		; 11 CD
	dec $3405.w,X		; DE 05 34
	ldy $21.b		; A4 21
	ldy $F6CD.w		; AC CD F6
	mvp $BB,$51		; 44 51 BB
	tyx		; BB
	ldy $F2.b,X		; B4 F2
	and ($32.b)		; 32 32
	cpx $E1DE.w		; EC DE E1
	eor $33.b,S		; 43 33
	ldy $FC.b,X		; B4 FC
	cmp $44D0.w,X		; DD D0 44
	and ($2B.b,S),Y		; 33 2B
	ldy $C4DD.w,X		; BC DD C4
	bit $12.b		; 24 12
	rol $EFCE.w		; 2E CE EF
	ora ($41.b,S),Y		; 13 41
	and $6FBFB8.l		; 2F B8 BF 6F
	mvp $92,$10		; 44 10 92
	sta $C40416.l,X		; 9F 16 04 C4
	bit $F0.b,X		; 34 F0
	cpx $02D1.w		; EC D1 02
	mvp $DC,$E0		; 44 E0 DC
	iny		; C8
	and $F2.b,S		; 23 F2
	ora $2201DE.l,X		; 1F DE 01 22
	asl $B8F0.w		; 0E F0 B8
	sep #$40		; E2 40
	and $FEFD.w		; 2D FD FE
	eor ($31.b,X)		; 41 31
	trb $B4.b		; 14 B4
	ldy #$AC.b		; A0 AC
	cmp $23.b,S		; C3 23
	and ($EE.b),Y		; 31 EE
	sbc ($20.b)		; F2 20
	clv		; B8
	beq -46.b		; F0 D2
	bmi  17.b		; 30 11
	sbc $124B.w		; ED 4B 12
	ora $5EA8.w,X		; 1D A8 5E
	cmp ($5C.b,S),Y		; D3 5C
	sbc ($F1.b,S),Y		; F3 F1
	asl A		; 0A
	brk $A5.b		; 00 A5
	cpy $13.b		; C4 13
	ora ($13.b),Y		; 11 13
	lda $FEF2F0.l,X		; BF F0 F2 FE
	ora $C0.b,S		; 03 C0
	brk $26.b		; 00 26
	sbc ($E0.b),Y		; F1 E0
	cmp ($2F.b)		; D2 2F
	ldy $C4DF.w,X		; BC DF C4
	and ($F0.b,S),Y		; 33 F0
	inc $10F2.w		; EE F2 10
	cpx $33F2.w		; EC F2 33
	cpy $10.b		; C4 10
	tas		; 1B
	inc $2031.w,X		; FE 31 20
	cpy $3203.w		; CC 03 32
	ldy $1C.b,X		; B4 1C
	asl $4ED0.w,X		; 1E D0 4E
	beq -31.b		; F0 E1
	pea $C4FE.w		; F4 FE C4
	beq   0.b		; F0 00
	and $C0.b,X		; 35 C0
	cmp ($E2.b),Y		; D1 E2
	ora $33B4D0.l,X		; 1F D0 B4 33
	jsl $23E9E1.l		; 22 E1 E9 23
	and $B4DC3B.l,X		; 3F 3B DC B4
	bit $2E.b		; 24 2E
	bpl   3.b		; 10 03
	rtl		; 6B

	sbc $202E.w		; ED 2E 20
	ldy $0B.b,X		; B4 0B
	cop $2F.b		; 02 2F
	cop $35.b		; 02 35
	bcc -48.b		; 90 D0
	ora $B4.b,S		; 03 B4
	asl $3491.w		; 0E 91 34
	and ($CD.b),Y		; 31 CD
	eor $1D4E.w,X		; 5D 4E 1D
	ldy $D2.b,X		; B4 D2
	ora ($00.b)		; 12 00
	cmp $1003.w		; CD 03 10
	bpl  47.b		; 10 2F
	ldy $43.b,X		; B4 43
	ldy $12E3.w		; AC E3 12
	ora $1D23BF.l,X		; 1F BF 23 1D
	clv		; B8
	sbc ($53.b),Y		; F1 53
	jsr ($A62C.w,X)		; FC 2C A6
	adc ($CC.b,X)		; 61 CC
	ora ($C4.b,X)		; 01 C4
	sbc ($20.b)		; F2 20
	inc $23F0.w,X		; FE F0 23
	and ($DD.b,X)		; 21 DD
	cpy $B4.b		; C4 B4
	and $DD.b,X		; 35 DD
	ldx $3D36.w,Y		; BE 36 3D
	ldy $76F3.w		; AC F3 76
	cpy #$55.b		; C0 55
	inc $22C1.w,X		; FE C1 22
	asl $03DE.w		; 0E DE 03
	and $D0CBC0.l		; 2F C0 CB D0
	and $43.b,X		; 35 43
	sbc $32E2.w		; ED E2 32
	sbc $F3B4.w,X		; FD B4 F3
	stz $D9.b		; 64 D9
	lda $0D5237.l,X		; BF 37 52 0D
	txy		; 9B
	cpy $32.b		; C4 32
	rol $02EE.w		; 2E EE 02
	jsl $23EFFC.l		; 22 FC EF 23
	cpy #$34.b		; C0 34
	and ($ED.b,S),Y		; 33 ED
	sbc ($31.b)		; F2 31
	sbc $13DF.w,X		; FD DF 13
	ldy $EB.b,X		; B4 EB
	ldx $4135.w		; AE 35 41
	cop $DD.b		; 02 DD
	cpy $32.b		; C4 32
	ldy $CD.b,X		; B4 CD
	sbc ($23.b,X)		; E1 23
	and $43F2BC.l		; 2F BC F2 43
	bpl -76.b		; 10 B4
	and $51EB.w,X		; 3D EB 51
	bit $11FE.w		; 2C FE 11
	and ($FC.b),Y		; 31 FC
	ldy $C0.b,X		; B4 C0
	and ($30.b)		; 32 30
	trb $BF.b		; 14 BF
	lda $12.b,X		; B5 12
	cmp $13FFB4.l		; CF B4 FF 13
	and $23E3CE.l		; 2F CE E3 23
	ora ($3D.b,X)		; 01 3D
	ldy $EB.b,X		; B4 EB
	bvc  60.b		; 50 3C
	sbc $FD3101.l,X		; FF 01 31 FD
	cmp $2122B4.l,X		; DF B4 22 21
	ora ($DE.b,S),Y		; 13 DE
	cmp $13.b,S		; C3 13
	cmp $11B8E0.l,X		; DF E0 B8 11
	asl $23EE.w		; 0E EE 23
	bpl  -1.b		; 10 FF
	bit $A4EF.w,X		; 3C EF A4
	eor $5A.b		; 45 5A
	cpx $5401.w		; EC 01 54
	pld		; 2B
	txs		; 9A
	trb $B4.b		; 14 B4
	and ($10.b),Y		; 31 10
	tsa		; 3B
	inc $EF51.w,X		; FE 51 EF
	cpx #$02.b		; E0 02
	ldy $21.b,X		; B4 21
	jsr ($23EE.w,X)		; FC EE 23
	and ($02.b,X)		; 21 02
	cmp $02B4D4.l,X		; DF D4 B4 02
	cmp $2F12F0.l,X		; DF F0 12 2F
	dec $23D1.w,X		; DE D1 23
	ldy $10.b,X		; B4 10
	tsb $CE.b		; 04 CE
	sbc ($1F.b,S),Y		; F3 1F
	sbc $A412F0.l,X		; FF F0 12 A4
	rol $CFCE.w		; 2E CE CF
	rol $20.b		; 26 20
	ora $0B.b		; 05 0B
	cpy $A4.b		; C4 A4
	ora ($B2.b),Y		; 11 B2
	cmp $DF2F05.l,X		; DF 05 2F DF
	cmp $B406.w		; CD 06 B4
	jsr $2C02.w		; 20 02 2C
	sbc ($20.b,X)		; E1 20
	sbc ($E0.b,X)		; E1 E0
	sbc ($B4.b,S),Y		; F3 B4
	bpl  -1.b		; 10 FF
	inc $1003.w		; EE 03 10
	ora ($3A.b)		; 12 3A
	ora $017CA4.l		; 0F A4 7C 01
	cmp $20E7.w,X		; DD E7 20
	asl $15C9.w		; 0E C9 15
	bcs   1.b		; B0 01
	bit $5F.b		; 24 5F
	beq  17.b		; F0 11
	ora ($DC.b),Y		; 11 DC
	cpx #$B4.b		; E0 B4
	ora ($0E.b),Y		; 11 0E
	dec $2222.w		; CE 22 22
	ora ($B0.b)		; 12 B0
	sbc ($B4.b)		; F2 B4
	sbc ($0E.b)		; F2 0E
	cmp $0D2130.l,X		; DF 30 21 0D
	lda ($13.b),Y		; B1 13
	ldy $23.b,X		; B4 23
	bit $10DF.w		; 2C DF 10
	and ($ED.b),Y		; 31 ED
	sep #$03		; E2 03
	clv		; B8
	inc $33E0.w		; EE E0 33
	brk $C1.b		; 00 C1
.ACCU 16
	rep #$22		; C2 22
	asl $0FB4.w		; 0E B4 0F
	sbc $FF0F20.l		; EF 20 0F FF
	ora ($6C.b,S),Y		; 13 6C
	ora $EAA4.w,X		; 1D A4 EA
	eor $F3.b,S		; 43 F3
	sbc $EC2FD1.l,X		; FF D1 2F EC
	beq -76.b		; F0 B4
	bit $2E.b,X		; 34 2E
	inc $11D1.w,X		; FE D1 11
	ora ($FE.b,X)		; 01 FE
	bpl -76.b		; 10 B4
	asl $F20F.w,X		; 1E 0F F2
	eor $D1.b,S		; 43 D1
	dec $10F1.w,X		; DE F1 10
	tay		; A8
	tsa		; 3B
	bpl  16.b		; 10 10
	sbc ($E4.b,X)		; E1 E4
	asl $AB.b,X		; 16 AB
	tsa		; 3B
	ldy #$AC.b		; A0 AC
	dec $1E03.w		; CE 03 1E
	sbc $BCDB.w		; ED DB BC
	cmp ($B4.b,S),Y		; D3 B4
	jmp $10FE2D.l		; 5C 2D FE 10
	sbc ($F1.b,S),Y		; F3 F1
	beq -18.b		; F0 EE
	ldy $1F.b,X		; B4 1F
	and $5C.b,S		; 23 5C
	bit $10EE.w,X		; 3C EE 10
	ora ($F1.b)		; 12 F1
	clv		; B8
	cpx #$F1.b		; E0 F1
	brk $41.b		; 00 41
	sbc $132B.w		; ED 2B 13
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	and ($11.b),Y		; 31 11
	ora $F0EE.w		; 0D EE F0
	eor $F5.b		; 45 F5
	cmp $A09EA4.l,X		; DF A4 9E A0
	and ($33.b,X)		; 21 33
	ora $01D5F1.l		; 0F F1 D5 01
	sty $12.b,X		; 94 12
	lda $D0D9.w		; AD D9 D0
	sbc $46.b,S		; E3 46
	adc ($3F.b),Y		; 71 3F
	ldy $0D.b		; A4 0D
	ora $FFFF.w,X		; 1D FF FF
	beq   0.b		; F0 00
	bit $03.b		; 24 03
	ldy $11.b		; A4 11
	cmp ($BE.b,S),Y		; D3 BE
	inc $00F0.w		; EE F0 00
	ora ($4F.b,S),Y		; 13 4F
	ldy $4F.b		; A4 4F
	asl $FF1C.w,X		; 1E 1C FF
	sbc $120E.w		; ED 0E 12
	.db $42, $A4		; 42 A4
	ora $F0.b,X		; 15 F0
	sbc $E0FECF.l,X		; FF CF FE E0
	sbc ($15.b,X)		; E1 15
	ldy $F6.b		; A4 F6
	cop $F2.b		; 02 F2
	lda $E0DFEE.l,X		; BF EE DF E0
	and $A4.b,S		; 23 A4
	and ($40.b),Y		; 31 40
	ora ($FD.b,X)		; 01 FD
	asl $FCEE.w		; 0E EE FC
	and ($B4.b,X)		; 21 B4
	and $1E1040.l		; 2F 40 10 1E
	asl $FFFF.w		; 0E FF FF
	ora ($A4.b,X)		; 01 A4
	bmi  50.b		; 30 32
	jsr $FF3E.w		; 20 3E FF
	cmp $E1EE.w,X		; DD EE E1
	tay		; A8
	ora ($01.b,X)		; 01 01
	sbc ($FF.b,X)		; E1 FF
	sbc $C1.b,S		; E3 C1
	brk $03.b		; 00 03
	tya		; 98
	ora ($F4.b),Y		; 11 F4
	lda $B0D52B.l,X		; BF 2B D5 B0
	eor $A417.w		; 4D 17 A4
	bit $15.b,X		; 34 15
	cmp ($DE.b),Y		; D1 DE
	cpy #$D2.b		; C0 D2
	brk $13.b		; 00 13
	ldy $40.b		; A4 40
	rol $0AFD.w,X		; 3E FD 0A
	and $F120.w		; 2D 20 F1
	and $B4.b,S		; 23 B4
	and $D1FF2E.l,X		; 3F 2E FF D1
	sbc ($1F.b,X)		; E1 1F
	ora ($13.b),Y		; 11 13
	ldy $E4.b,X		; B4 E4
	cpy #$EE.b		; C0 EE
	ora $110F01.l,X		; 1F 01 0F 11
	lsr $4CB4.w		; 4E B4 4C
	asl $00FF.w		; 0E FF 00
	bpl -15.b		; 10 F1
	trb $E4.b		; 14 E4
	ldy $C0.b,X		; B4 C0
	sbc $0FF1F1.l		; EF F1 F1 0F
	ora ($4E.b),Y		; 11 4E
	jmp $0EB4.w		; 4C B4 0E
	sbc $F1101F.l,X		; FF 1F 10 F1
	ora $E4.b		; 05 E4
	lda ($B4.b),Y		; B1 B4
	sbc $FF02F0.l		; EF F0 02 FF
	ora ($5D.b),Y		; 11 5D
	phy		; 5A
	asl $E1B4.w,X		; 1E B4 E1
	sbc ($1F.b),Y		; F1 1F
	sbc ($15.b),Y		; F1 15
	sbc $CF.b,S		; E3 CF
	tsb $3EB4.w		; 0C B4 3E
	jsr $13FF.w		; 20 FF 13
	ora ($FF.b)		; 12 FF
	cmp ($C4.b,X)		; C1 C4
	ldy $E2.b,X		; B4 E2
	inc $5F11.w,X		; FE 11 5F
	bit $E1FE.w,X		; 3C FE E1
	ora ($B4.b),Y		; 11 B4
	inc $2403.w,X		; FE 03 24
	sbc $01D3CF.l,X		; FF CF D3 01
	sbc $14B4.w,X		; FD B4 14
	and ($EF.b,S),Y		; 33 EF
	bcs -45.b		; B0 D3
	ora ($FD.b,X)		; 01 FD
	trb $C4.b		; 14 C4
	ora ($FF.b)		; 12 FF
	cpx #$F1.b		; E0 F1
	brk $0E.b		; 00 0E
	ora ($F4.b,S),Y		; 13 F4
	cpy $D0.b		; C4 D0
	sbc $FF0001.l		; EF 01 00 FF
	and $E5.b,S		; 23 E5
	lda ($C4.b),Y		; B1 C4
	inc $0020.w		; EE 20 00
	cpx #$24.b		; E0 24
	cmp $B0.b,X		; D5 B0
	inc $6EB4.w,X		; FE B4 6E
	asl $55D0.w,X		; 1E D0 55
	ora ($BD.b),Y		; 11 BD
	ora $C45F.w		; 0D 5F C4
	beq -31.b		; F0 E1
	lsr $0E5C.w		; 4E 5C 0E
	sbc ($01.b)		; F2 01
	sbc $4EF2C4.l		; EF C4 F2 4E
	jmp $D4F0.w		; 4C F0 D4
	beq  -2.b		; F0 FE
	trb $C4.b		; 14 C4
	pea $EFC0.w		; F4 C0 EF
	jsr $EF1F.w		; 20 1F EF
	and ($F2.b,S),Y		; 33 F2
	cpy $DE.b		; C4 DE
	asl $0F3F.w,X		; 1E 3F 0F
	sep #$4D		; E2 4D
	rtl		; 6B

	beq -60.b		; F0 C4
	pei ($F0.b)		; D4 F0
	sbc $EF0303.l,X		; FF 03 03 EF
	cpx #$01.b		; E0 01
	bcs  30.b		; B0 1E
	wai		; CB
	trb $65.b		; 14 65
	ora $10ED.w		; 0D ED 10
	jmp.w [$C3B0]		; DC B0 C3
	lsr $4E.b		; 46 4E
	jsr ($ED01.w,X)		; FC 01 ED
	lda $0FC446.l,X		; BF 46 C4 0F
.ACCU 16
	rep #$E3		; C2 E3
	asl $5FFF.w		; 0E FF 5F
	and $C00E.w,X		; 3D 0E C0
	sbc $E3EE10.l,X		; FF 10 EE E3
	ora $1F.b		; 05 1F
	inc $C010.w,X		; FE 10 C0
	sbc $4132DF.l,X		; FF DF 32 41
	cpx #$E1.b		; E0 E1
	asl $C0FD.w		; 0E FD C0
	ora ($41.b),Y		; 11 41
	asl $00FF.w		; 0E FF 00
	inc $05E3.w		; EE E3 05
	cpy #$0F.b		; C0 0F
	inc $FE10.w,X		; FE 10 FE
	cmp $E04032.l,X		; DF 32 40 E0
	cpy #$E1.b		; C0 E1
	asl $21ED.w		; 0E ED 21
	eor ($0E.b,X)		; 41 0E
	beq  16.b		; F0 10
	cpy #$ED.b		; C0 ED
	cpx $15.b		; E4 15
	ora $FE10FE.l		; 0F FE 10 FE
	bne -60.b		; D0 C4
	bmi  14.b		; 30 0E
	cmp ($F2.b)		; D2 F2
	asl $4FF0.w		; 0E F0 4F
	jmp $0EC0.w		; 4C C0 0E
	cpx #$00.b		; E0 00
	sbc $15E3.w		; ED E3 15
	asl $B0FE.w		; 0E FE B0
	and ($FC.b),Y		; 31 FC
	ldy #$56.b		; A0 56
	eor ($CF.b),Y		; 51 CF
	sbc $0D.b,S		; E3 0D
	cpy #$DE.b		; C0 DE
	and ($50.b,X)		; 21 50
	asl $10E1.w		; 0E E1 10
	sbc $C4F4.w		; ED F4 C4
	sbc $BF.b,S		; E3 BF
	asl $FE4F.w,X		; 1E 4F FE
	pea $0D20.w		; F4 20 0D
	cpy $E2.b		; C4 E2
	sbc ($FE.b,S),Y		; F3 FE
	beq  64.b		; F0 40
	bit $12FE.w,X		; 3C FE 12
	cpy $1F.b		; C4 1F
	cmp $BFF315.l,X		; DF 15 F3 BF
	sbc ($3F.b),Y		; F1 3F
	ora $DFC0.w		; 0D C0 DF
	.db $42, $5F		; 42 5F
	inc $10E2.w		; EE E2 10
	sbc $C0F4.w		; ED F4 C0
	and $FE.b		; 25 FE
	sbc $C00D21.l		; EF 21 0D C0
	eor $5F.b,S		; 43 5F
	cpy #$EE.b		; C0 EE
	sbc ($10.b)		; F2 10
	jmp.w [$35F4]		; DC F4 35
	inc $C0EF.w,X		; FE EF C0
	and ($0D.b,X)		; 21 0D
	cmp $EE5033.l		; CF 33 50 EE
	sbc ($10.b)		; F2 10
	clv		; B8
	cmp ($56.b)		; D2 56
	lda $34B0.w,X		; BD B0 34
	bpl -82.b		; 10 AE
	trb $C0.b		; 14 C0
	ora $34.b,X		; 15 34
	sbc $31FF.w		; ED FF 31
	sbc $34CF.w,X		; FD CF 34
	cpy $1B.b		; C4 1B
	sbc $DE0F13.l,X		; FF 13 0F DE
	trb $5E.b		; 14 5E
	phd		; 0B
	cpy $E1.b		; C4 E1
	and $FE.b,S		; 23 FE
	dec $4124.w,X		; DE 24 41
	dec $C4C1.w		; CE C1 C4
	and ($2D.b)		; 32 2D
	dec $4303.w,X		; DE 03 43
	sbc $24CF.w		; ED CF 24
	cpy $2F.b		; C4 2F
	cmp $44F2.w		; CD F2 44
	tas		; 1B
	xce		; FB
	bit $21.b		; 24 21
	cpy $DC.b		; C4 DC
	sbc ($33.b,X)		; E1 33
	bmi -50.b		; 30 CE
.ACCU 8
	sep #$22		; E2 22
	ora $DFC4.w		; 0D C4 DF
	ora ($31.b)		; 12 31
	ora $3FF2B1.l,X		; 1F B1 F2 3F
	sbc $BDC0.w,X		; FD C0 BD
	sbc ($23.b)		; F2 23
	eor $030D.w		; 4D 0D 03
	ora ($EC.b),Y		; 11 EC
	bcs -83.b		; B0 AD
	bit $53.b		; 24 53
	jmp $241F.w		; 4C 1F 24
	ora $E0B0BA.l		; 0F BA B0 E0
	and ($12.b,X)		; 21 12
	eor $F0F230.l		; 4F 30 F2 F0
	jmp.w [$20B4]		; DC B4 20
	and $3B4922.l		; 2F 22 49 3B
	tsb $E2.b		; 04 E2
	cmp $DDB0.w,X		; DD B0 DD
	brk $23.b		; 00 23
	adc $13F12C.l		; 6F 2C F1 13
	sbc $CDB0.w,X		; FD B0 CD
	sbc ($21.b),Y		; F1 21
	and $E3.b		; 25 E3
	beq  63.b		; F0 3F
	ora $F1B4.w,X		; 1D B4 F1
	ora ($00.b)		; 12 00
	sbc ($4B.b,S),Y		; F3 4B
	bit $E1F2.w,X		; 3C F2 E1
	ldy $ED.b		; A4 ED
	bpl  18.b		; 10 12
	jsr $0321.w		; 20 21 03
	ldx #$CF.b		; A2 CF
	ldy $0F.b,X		; B4 0F
	brk $01.b		; 00 01
	ora ($10.b,X)		; 01 10
	brk $03.b		; 00 03
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	cmp $F11F1F.l,X		; DF 1F 1F F1
	ora ($12.b)		; 12 12
	and $A2A4C0.l		; 2F C0 A4 A2
	rti		; 40

	plx		; FA
	lda ($36.b),Y		; B1 36
	rti		; 40

	inc $B4F6.w		; EE F6 B4
	jmp $E02B.w		; 4C 2B E0
	sbc ($10.b)		; F2 10
	and $B411F1.l		; 2F F1 11 B4
	ora ($CF.b)		; 12 CF
	bne  49.b		; D0 31
	sbc $23D0.w,X		; FD D0 23
	and ($94.b),Y		; 31 94
	lda ($5A.b,X)		; A1 5A
	jmp $BEBF.w		; 4C BF BE
	dex		; CA
	ora ($35.b,X)		; 01 35
	tay		; A8
	ora $CE4E00.l		; 0F 00 4E CE
	cmp $16.b,S		; C3 16
	bpl -34.b		; 10 DE
	tay		; A8
	ora ($11.b),Y		; 11 11
	inc $42DC.w,X		; FE DC 42
	bvs -35.b		; 70 DD
.ACCU 16
	rep #$A8		; C2 A8
	and ($2D.b)		; 32 2D
	cpy $45F5.w		; CC F5 45
	jsr ($23CE.w,X)		; FC CE 23
	clv		; B8
	jsr $E1FC.w		; 20 FC E1
	bit $1F.b		; 24 1F
	cmp $A82102.l,X		; DF 02 21 A8
	stz $57CF.w		; 9C CF 57
	bmi -37.b		; 30 DB
	ora ($32.b,X)		; 01 32
	cpx $EEA8.w		; EC A8 EE
	bit $30.b,X		; 34 30
	sbc $11F2.w		; ED F2 11
	sbc $3298E0.l,X		; FF E0 98 32
	and ($FE.b,X)		; 21 FE
	sbc $000000.l		; EF 00 00 00
	and ($88.b,X)		; 21 88
	rti		; 40

	and $FFDD.w		; 2D DD FF
	sbc ($C5.b,S),Y		; F3 C5
	dec $8451.w,X		; DE 51 84
	and $14.b		; 25 14
	ora ($0F.b),Y		; 11 0F
	cop $13.b		; 02 13
	ora ($3E.b),Y		; 11 3E
	tya		; 98
	trb $0212.w		; 1C 12 02
	sbc $1F3F10.l		; EF 10 3F 1F
	cpx #$4288.w		; E0 88 42
	bit $10F9.w,X		; 3C F9 10
	.db $42, $2C		; 42 2C
	sbc ($E5.b,X)		; E1 E5
	sty $13.b		; 84 13
	and $6F10EE.l,X		; 3F EE 10 6F
	rol $24D1.w		; 2E D1 24
	dey		; 88
	sbc $F4A2.w		; ED A2 F4
	adc $F1FD.w		; 6D FD F1
	and ($0E.b)		; 32 0E
	sty $DF.b		; 84 DF
	tsb $21.b		; 04 21
	cmp $DF2203.l,X		; DF 03 22 DF
	cpx $2E88.w		; EC 88 2E
	jsr $0401.w		; 20 01 04
	cmp $3F3E1D.l,X		; DF 1D 3E 3F
	sty $0F.b		; 84 0F
	jsl $A0E211.l		; 22 11 E2 A0
	bne  17.b		; D0 11
	bpl 116.b		; 10 74
	lda $40EF.w		; AD EF 40
	jsr ($14D2.w,X)		; FC D2 14
	adc ($3C.b,X)		; 61 3C
	sei		; 78
	sbc ($50.b),Y		; F1 50
	asl $E4C3.w		; 0E C3 E4
	tsb $220C.w		; 0C 0C 22
	sei		; 78
	cop $E2.b		; 02 E2
	cmp ($13.b,X)		; C1 13
	ora $2BE2E0.l		; 0F E0 E2 2B
	stz $4C.b,X		; 74 4C
	brk $DF.b		; 00 DF
	sbc $D00F.w		; ED 0F D0
	ora $F17412.l,X		; 1F 12 74 F1
	ora $E31F1D.l		; 0F 1D 1F E3
	cpx #$1EEC.w		; E0 EC 1E
	stz $EF.b,X		; 74 EF
	cpy #$21E0.w		; C0 E0 21
	sbc ($DF.b),Y		; F1 DF
	cmp ($22.b,S),Y		; D3 22
	stz $32.b		; 64 32
	sbc ($0D.b,S),Y		; F3 0D
	.db $42, $43		; 42 43
	inc $33A2.w		; EE A2 33
	adc $1D.b		; 65 1D
	cpx $5100.w		; EC 00 51
	ora $30D0.w		; 0D D0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $3E.b,X		; 74 3E
	ror A		; 6A
	jsr $3CD0.w		; 20 D0 3C
	sbc ($B2.b,X)		; E1 B2
	pea $0280.w		; F4 80 02
	and ($35.b,S),Y		; 33 35
	eor [$F3.b]		; 47 F3
	brk $F2.b		; 00 F2
	ora $DEDF80.l,X		; 1F 80 DF DE
	and $201452.l		; 2F 52 14 20
	cop $E2.b		; 02 E2
	bra -80.b		; 80 B0
	lda $4462F2.l		; AF F2 62 44
	ora $900501.l,X		; 1F 01 05 90
	cpx #$E2EF.w		; E0 EF E2
	pea $1F01.w		; F4 01 1F
	brk $3E.b		; 00 3E
	sty $30.b,X		; 94 30
	cmp ($00.b),Y		; D1 00
	and $FF104C.l		; 2F 4C 10 FF
	ora ($90.b,S),Y		; 13 90
	sbc $1F.b,S		; E3 1F
	ora $034F10.l		; 0F 10 4F 03
	sbc $0590F1.l,X		; FF F1 90 05
	beq  63.b		; F0 3F
	sbc $215E2F.l,X		; FF 2F 5E 21
	inc $1090.w		; EE 90 10
	pea $E1E6.w		; F4 E6 E1
	cop $E2.b		; 02 E2
	ora ($3C.b,S),Y		; 13 3C
	bcc  62.b		; 90 3E
	asl $4F3E.w		; 0E 3E 4F
	jmp $022111.l		; 5C 11 21 02
	bcc -14.b		; 90 F2
	tsa		; 3B
	ora ($00.b),Y		; 11 00
	bmi  20.b		; 30 14
	bne  28.b		; D0 1C
	bcc -15.b		; 90 F1
	and ($3F.b,X)		; 21 3F
	bit $BF.b,X		; 34 BF
	brk $03.b		; 00 03
	sbc ($90.b,S),Y		; F3 90
	jmp $CF2F.w		; 4C 2F CF
	and $21.b,S		; 23 21
	ora $0B.b,X		; 15 0B
	ora $F190.w		; 0D 90 F1
	and ($21.b),Y		; 31 21
	tsb $BF.b		; 04 BF
	sbc ($13.b),Y		; F1 13
	ora ($90.b,X)		; 01 90
	and $D03D.w,X		; 3D 3D D0
	and $21.b,S		; 23 21
	ora ($C0.b,S),Y		; 13 C0
	cpx $0290.w		; EC 90 02
	eor ($21.b),Y		; 51 21
	bit $B1FF.w,X		; 3C FF B1
	asl $12.b		; 06 12
	bcc  19.b		; 90 13
	dec $100A.w		; CE 0A 10
	adc ($21.b),Y		; 71 21
	and $A0D0.w,X		; 3D D0 A0
	bne   3.b		; D0 03
	ora ($01.b,X)		; 01 01
	inc $101D.w		; EE 1D 10
	rti		; 40

	ldy #$2F11.w		; A0 11 2F
	sbc ($D1.b,X)		; E1 D1
	tsb $01.b		; 04 01
	ora ($FE.b)		; 12 FE
	ldy #$0F1C.w		; A0 1C 0F
	rti		; 40

	ora ($20.b),Y		; 11 20
	cmp ($D1.b),Y		; D1 D1
	pea $01A0.w		; F4 A0 01
	ora ($0D.b)		; 12 0D
	ora $411F.w,X		; 1D 1F 41
	bpl  33.b		; 10 21
	ldy #$D1C1.w		; A0 C1 D1
	pea $0101.w		; F4 01 01
	trb $1F1D.w		; 1C 1D 1F
	ldy #$0030.w		; A0 30 00
	ora ($C1.b)		; 12 C1
	cmp ($F4.b)		; D2 F4
	brk $F2.b		; 00 F2
	ldy #$1E1C.w		; A0 1C 1E
	and $200F40.l		; 2F 40 0F 20
	cmp ($E2.b,X)		; C1 E2
	ldy #$0004.w		; A0 04 00
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	asl $4120.w		; 0E 20 41
	inc $3EA0.w,X		; FE A0 3E
	cpx #$F2.b		; E0 F2
	trb $1F.b		; 14 1F
	cmp ($CF.b,S),Y		; D3 CF
	ora $4112A0.l		; 0F A0 12 41
	sbc $1F2A.w		; ED 2A 1F
	ora ($44.b),Y		; 11 44
	and $E1B0.w		; 2D B0 E1
	cmp ($F1.b,X)		; C1 F1
	cop $11.b		; 02 11
	sbc $A01F0E.l,X		; FF 0E 1F A0
	jsr $2D52.w		; 20 52 2D
	dec $F3D3.w,X		; DE D3 F3
	ora $12.b		; 05 12
	ldy #$DC.b		; A0 DC
	cpy #$1F.b		; C0 1F
	and ($53.b)		; 32 53
	and $B00CBA.l		; 2F BA 0C B0
	ora ($32.b),Y		; 11 32
	and ($0C.b),Y		; 31 0C
	dec $14E3.w		; CE E3 14
	bit $B4.b		; 24 B4
	cmp $0324CE.l,X		; DF CE 24 03
	ora ($EE.b),Y		; 11 EE
	dec $C8D2.w,X		; DE D2 C8
	and $2D3C.w		; 2D 3C 2D
	ora $C32211.l,X		; 1F 11 22 C3
	lda ($B8.b)		; B2 B8
	ldy $F3.b		; A4 F3
	bit $1A.b		; 24 1A
	tas		; 1B
	asl $4122.w		; 0E 22 41
	clv		; B8
	lsr A		; 4A
	inc A		; 1A
	beq  17.b		; F0 11
	eor $10.b,S		; 43 10
	ldx $C4C1.w,Y		; BE C1 C4
	bne  18.b		; D0 12
	bit $FF.b,X		; 34 FF
	dec $12D0.w,X		; DE D0 12
	bit $B4.b,X		; 34 B4
	cmp $34D0AB.l		; CF AB D0 34
	ror $BE.b		; 66 BE
	ldy $B4E2.w		; AC E2 B4
	mvp $AE,$44		; 44 44 AE
	ldx WRMPYB.w		; AE 03 42
	and ($A0.b,X)		; 21 A0
	bcs -19.b		; B0 ED
	sbc $0F0200.l,X		; FF 00 02 0F
	asl $F0.b		; 06 F0
	stp		; DB
	bcs -48.b		; B0 D0
	and ($0E.b)		; 32 0E
	.db $42, $0F		; 42 0F
	ldy $2001.w,X		; BC 01 20
	cpy #$F1.b		; C0 F1
	eor $12DF0D.l		; 4F 0D DF 12
	ora $C011E2.l,X		; 1F E2 11 C0
	ora $11E0.w		; 0D E0 11
	ora $EEF004.l		; 0F 04 F0 EE
	ora ($B0.b,X)		; 01 B0
	jsr $64CC.w		; 20 CC 64
	and $1F02AC.l,X		; 3F AC 02 1F
	cmp $0E50C0.l		; CF C0 50 0E
	cmp $E21F11.l,X		; DF 11 1F E2
	and ($FD.b),Y		; 31 FD
	cpy #$E1.b		; C0 E1
	ora ($0E.b),Y		; 11 0E
	ora $00.b		; 05 00
	sbc $11F1.w		; ED F1 11
	cpy #$FE.b		; C0 FE
	and $0F.b,S		; 23 0F
	dec $1F22.w,X		; DE 22 1F
	bne  80.b		; D0 50
	bcs  28.b		; B0 1C
	lda $C70B32.l		; AF 32 0B C7
	.db $62, $E9, $B3		; 62 E9 B3
	cpy $0F.b		; C4 0F
	sbc $DFCF35.l		; EF 35 CF DF
	and ($FF.b,S),Y		; 33 FF
	bne -64.b		; D0 C0
	bit $1F.b,X		; 34 1F
	cmp $1F13.w		; CD 13 1F
	cmp $C00E53.l		; CF 53 0E C0
	dec $1D33.w		; CE 33 1D
	cpy #$63.b		; C0 63
	ora $43CF.w		; 0D CF 43
	cpy $DD.b		; C4 DD
	inc $4B.b,X		; F6 4B
	dec $2E14.w,X		; DE 14 2E
	dec $C026.w,X		; DE 26 C0
	rts		; 60

	stp		; DB
	sbc $30.b,S		; E3 30
	jmp.w [$4F06]		; DC 06 4F
	wai		; CB
	cpy $45.b		; C4 45
	jsr ($56D0.w,X)		; FC D0 56
	wai		; CB
	cmp ($45.b),Y		; D1 45
	jmp.w [$D2C4]		; DC C4 D2
	stz $AB.b		; 64 AB
	sbc ($53.b)		; F2 53
	cpy $63E3.w		; CC E3 63
	cpy #$FB.b		; C0 FB
	lda $B0FC45.l,X		; BF 45 FC B0
	ror $EA.b		; 66 EA
	cpy #$C0.b		; C0 C0
	mvn $C1,$EB		; 54 EB C1
	ror $DA.b		; 66 DA
	cmp ($63.b,X)		; C1 63
	stp		; DB
	cpy #$D2.b		; C0 D2
	adc $CA.b,X		; 75 CA
.ACCU 16
	rep #$63		; C2 63
	stp		; DB
	cmp ($65.b)		; D2 65
	cpy #$CA.b		; C0 CA
	cmp ($53.b)		; D2 53
	phx		; DA
	cmp ($55.b)		; D2 55
	sbc #$C0C2.w		; E9 C2 C0
	mvn $D2,$EA		; 54 EA D2
	mvp $B1,$1A		; 44 1A B1
	mvp $C0,$FB		; 44 FB C0
	cmp ($44.b,X)		; C1 44
	tsa		; 3B
	lda $BF1C34.l,X		; BF 34 1C BF
	bit $C0.b,X		; 34 C0
	and $3E23AD.l,X		; 3F AD 23 3E
	ldx $3224.w,Y		; BE 24 32
	ldy $13C0.w,X		; BC C0 13
	bmi -51.b		; 30 CD
	ora $33.b,S		; 03 33
	stp		; DB
	sbc ($32.b,S),Y		; F3 32
	cpy #$DB.b		; C0 DB
	sbc ($33.b)		; F2 33
	tas		; 1B
	cmp ($33.b),Y		; D1 33
	jsr ($C0D1.w,X)		; FC D1 C0
	and ($2C.b,S),Y		; 33 2C
	cmp $CF1D33.l		; CF 33 1D CF
	and $20.b,S		; 23 20
	cpy #$BD.b		; C0 BD
	and $3F.b,S		; 23 3F
	dec $3213.w		; CE 13 32
	jmp.w [$C003]		; DC 03 C0
	and ($DC.b),Y		; 31 DC
	sbc ($32.b)		; F2 32
	tas		; 1B
	cmp ($33.b),Y		; D1 33
	tsb $13C4.w		; 0C C4 13
	jsr $D20D.w		; 20 0D D2
	rti		; 40

	tsb $31E2.w		; 0C E2 31
	cpy #$22.b		; C0 22
	jmp.w [$2102]		; DC 02 21
	jmp.w [$32F2]		; DC F2 32
	trb $D1C0.w		; 1C C0 D1
	jsl $23D00D.l		; 22 0D D0 23
	ora ($CE.b),Y		; 11 CE
	ora ($B0.b)		; 12 B0
	rti		; 40

	plb		; AB
	tsb $42.b		; 04 42
	rol A		; 2A
	lda ($43.b)		; B2 43
	phd		; 0B
	bcs -65.b		; B0 BF
	bit $12.b,X		; 34 12
	tyx		; BB
	ora ($31.b,S),Y		; 13 31
	wai		; CB
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	rol $D41B.w		; 2E 1B D4
	eor $24D31B.l		; 4F 1B D3 24
	beq -80.b		; F0 B0
	ora $24D2.w,Y		; 19 D2 24
	xce		; FB
	dec $2334.w		; CE 34 23
	plb		; AB
	bcs   2.b		; B0 02
	.db $42, $DB		; 42 DB
	cmp ($42.b),Y		; D1 42
	ora ($AD.b),Y		; 11 AD
	and ($B0.b,X)		; 21 B0
	and ($CD.b),Y		; 31 CD
	sbc ($32.b,X)		; E1 32
	jsl $4211BC.l		; 22 BC 11 42
	bcs -35.b		; B0 DD
	cmp $CB1432.l,X		; DF 32 14 CB
	brk $34.b		; 00 34
	sbc $DDB0.w,X		; FD B0 DD
	and $14.b,S		; 23 14
	asl A		; 0A
	bne   5.b		; D0 05
	rol $B0EC.w		; 2E EC B0
.ACCU 8
	sep #$21		; E2 21
	and ($BD.b)		; 32 BD
	sbc $BC0F43.l,X		; FF 43 0F BC
	bcs  18.b		; B0 12
	bit $2B.b,X		; 34 2B
	dec $40F5.w		; CE F5 40
	xce		; FB
	cpy #$B0.b		; C0 B0
	and $53.b,S		; 23 53
	wai		; CB
	cmp $BB1054.l,X		; DF 54 10 BB
	sbc ($B8.b),Y		; F1 B8
	ora ($CB.b,X)		; 01 CB
	eor ($14.b),Y		; 51 14
	dec $15FD.w,X		; DE FD 15
	sbc ($B4.b,S),Y		; F3 B4
	eor ($AE.b,X)		; 41 AE
	cmp $DD2043.l,X		; DF 43 20 DD
	beq  36.b		; F0 24
	ldy $5D.b		; A4 5D
	dex		; CA
	lda ($45.b,X)		; A1 45
	rti		; 40

	dec $30C0.w,X		; DE C0 30
	ldy $31.b		; A4 31
	bne -18.b		; D0 EE
	ora $BD3413.l,X		; 1F 13 34 BD
	jsr ($B0A0.w,X)		; FC A0 B0
	ora ($3F.b,X)		; 01 3F
	cpx #$E1.b		; E0 E1
	and $90F2F1.l		; 2F F1 F2 90
	lsr $DF0F.w		; 4E 0F DF
	asl $DFFF.w,X		; 1E FF DF
	ora ($30.b),Y		; 11 30
	sty $C4.b		; 84 C4
	sbc $F241.w,X		; FD 41 F2
	jsr ($03D0.w,X)		; FC D0 03
	.db $42, $88		; 42 88
	tsb $44C2.w		; 0C C2 44
	asl $F0DE.w		; 0E DE F0
	eor ($4C.b),Y		; 51 4C
	dey		; 88
	sbc $F3E4.w		; ED E4 F3
	rol $D4FD.w		; 2E FD D4
	and ($1D.b),Y		; 31 1D
	sty $1C.b		; 84 1C
	beq   1.b		; F0 01
	beq   0.b		; F0 00
	beq -17.b		; F0 EF
	rti		; 40

	sty $13.b		; 84 13
	dec JOY4L.w		; CE 1E 42
	cpx $53D0.w		; EC D0 53
	and $E1DD84.l		; 2F 84 DD E1
	and ($ED.b,S),Y		; 33 ED
	ora $0E02F4.l		; 0F F4 02 0E
	dey		; 88
	sbc ($35.b,X)		; E1 35
	bne -49.b		; D0 CF
	sbc ($20.b,S),Y		; F3 20
	asl $74EE.w,X		; 1E EE 74
	sbc $30.b		; E5 30
	asl $DE00.w,X		; 1E 00 DE
	sbc ($04.b),Y		; F1 04
	ora ($84.b)		; 12 84
	ora $04EE.w,X		; 1D EE 04
	jsr $D00E.w		; 20 0E D0
	cop $20.b		; 02 20
	stz $EF.b,X		; 74 EF
	cmp $DB4311.l,X		; DF 11 43 DB
	lda ($45.b),Y		; B1 45
	and $01AB74.l		; 2F 74 AB 01
	eor ($0D.b,S),Y		; 53 0D
	sbc $243E.w		; ED 3E 24
	brk $74.b		; 00 74
	sbc $42FF.w		; ED FF 42
	inc $220E.w		; EE 0E 22
	rol $70CE.w,X		; 3E CE 70
	inc $0C23.w		; EE 23 0C
	inc $0FF0.w		; EE F0 0F
	phd		; 0B
	cpx #$70.b		; E0 70
	cmp $FC101F.l,X		; DF 1F 10 FC
	lda $F031.w,X		; BD 31 F0
	sbc $4E64.w		; ED 64 4E
	eor ($FB.b,S),Y		; 53 FB
	tsb $1012.w		; 0C 12 10
	ror A		; 6A
	cmp $C170.w		; CD 70 C1
	and ($1D.b),Y		; 31 1D
	cmp $FF02FF.l,X		; DF FF 02 FF
	stp		; DB
	bvs -16.b		; 70 F0
	ora $0D.b,X		; 15 0D
	stp		; DB
	cmp ($32.b,S),Y		; D3 32
	xce		; FB
	cmp $1FF470.l		; CF 70 F4 1F
	sbc $1F0FFF.l,X		; FF FF 0F 1F
	sbc ($0D.b),Y		; F1 0D
	stz $00.b		; 64 00
	rts		; 60

	ora $0FD2.w,X		; 1D D2 0F
	and $64A400.l		; 2F 00 A4 64
	cop $00.b		; 02 00
	bcs  18.b		; B0 12
	cop $1D.b		; 02 1D
	sbc $106400.l,X		; FF 00 64 10
	bpl  -2.b		; 10 FE
	jsr $D003.w		; 20 03 D0
	sbc $2160F1.l		; EF F1 60 21
	and $13BDEE.l		; 2F EE BD 13
	and $DECB.w,X		; 3D CB DE
	rts		; 60

	adc $30.b,X		; 75 30
	tsx		; BA
	cmp $31.b,S		; C3 31
	ora #$9A.b		; 09 9A
	sbc ($64.b,X)		; E1 64
	bpl -49.b		; 10 CF
	cpx #$12.b		; E0 12
	bpl -32.b		; 10 E0
	cpy #$32.b		; C0 32
	stz $21.b		; 64 21
	and #$ED.b		; 29 ED
	eor $30.b,S		; 43 30
	ldy $22F4.w,X		; BC F4 22
	stz $1B.b		; 64 1B
	cmp $E3.b		; C5 E3
	rol $02EF.w		; 2E EF 02
	jsr $50EE.w		; 20 EE 50
	stp		; DB
	ldy $BE23.w,X		; BC 23 BE
	xba		; EB
	cpy $20D3.w		; CC D3 20
	rts		; 60

	jmp.w [$D221]		; DC 21 D2
	rol $1301.w		; 2E 01 13
	and ($1F.b)		; 32 1F
	bvc  34.b		; 50 22
	ora ($4D.b,S),Y		; 13 4D
	sbc $EEDD.w		; ED DD EE
	sbc $CE24FE.l,X		; FF FE 24 CE
	eor $3C.b		; 45 3C
	tsx		; BA
	cmp ($71.b)		; D2 71
	lda $50CE.w,X		; BD CE 50
	sbc $FFFFFF.l		; EF FF FF FF
	sbc ($B0.b),Y		; F1 B0
	asl $01.b		; 06 01
	sec		; 38
	cmp $4FF43C.l,X		; DF 3C F4 4F
	jmp.w [$1023]		; DC 23 10
	and $F3DC24.l,X		; 3F 24 DC F3
	rti		; 40

	ora $35FE12.l		; 0F 12 FE 35
	tsb $34.b		; 04 34
	jsr ($41E0.w,X)		; FC E0 41
	bpl   0.b		; 10 00
	ora ($11.b),Y		; 11 11
	brk $24.b		; 00 24
	beq   3.b		; F0 03
	and $14.b,S		; 23 14
	cmp ($E0.b,S),Y		; D3 E0
	rti		; 40

	cmp ($50.b,X)		; C1 50
	ora ($21.b),Y		; 11 21
	lda $47D4DC.l		; AF DC D4 47
	phy		; 5A
	sbc $0188.w,X		; FD 88 01
	brk $0F.b		; 00 0F
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	bit $CF.b,X		; 34 CF
	trb $F0B4.w		; 1C B4 F0
	sbc $F13113.l		; EF 13 31 F1
	dec $14EC.w		; CE EC 14
	cpy $51.b		; C4 51
	ora $140FDC.l		; 0F DC 0F 14
	eor $DD.b,S		; 43 DD
	xba		; EB
	cpy $21.b		; C4 21
	trb $31.b		; 14 31
	cmp $32DE.w		; CD DE 32
	jsl $FDC02E.l		; 22 2E C0 FD
	cmp $2222.w		; CD 22 22
	jsr $F0EF.w		; 20 EF F0
	and ($C4.b),Y		; 31 C4
	cpx #$14.b		; E0 14
	cmp ($FC.b),Y		; D1 FC
	rol $0612.w,X		; 3E 12 06
	ldx $EEC4.w,Y		; BE C4 EE
	and ($F2.b,S),Y		; 33 F2
	cmp ($0C.b)		; D2 0C
	jsr $D0F4.w		; 20 F4 D0
	cpy #$00.b		; C0 00
	rts		; 60

	ora $1F10C1.l		; 0F C1 10 1F
	bmi -16.b		; 30 F0
	cpy #$F0.b		; C0 F0
	and $F015FF.l		; 2F FF 15 F0
	inc $0F21.w		; EE 21 0F
	cpy #$E4.b		; C0 E4
	bpl  -2.b		; 10 FE
	ora $F0.b,S		; 03 F0
	sbc ($4F.b),Y		; F1 4F
	ora $0FE3C0.l		; 0F C0 E3 0F
	sbc $E0FE51.l,X		; FF 51 FE E0
	and $24C0FF.l,X		; 3F FF C0 24
	sbc $FF31EE.l,X		; FF EE 31 FF
	ora $0F.b		; 05 0F
	sbc $DD25B0.l		; EF B0 25 DD
	inc $6E.b		; E6 6E
	jmp.w [$FCF7]		; DC F7 FC
	sep #$C0		; E2 C0
	eor $2EF3FE.l,X		; 5F FE F3 2E
	beq  81.b		; F0 51
	inc $C0F1.w,X		; FE F1 C0
	rol $42E0.w,X		; 3E E0 42
	inc $3FF1.w,X		; FE F1 3F
	cpx #$33.b		; E0 33
	cpy #$FE.b		; C0 FE
	cpx #$4F.b		; E0 4F
	cmp $E0FE24.l,X		; DF 24 FE E0
	rti		; 40

	cpy #$DF.b		; C0 DF
	bit $FE.b		; 24 FE
	cpx #$30.b		; E0 30
	cmp $C0FE24.l,X		; DF 24 FE C0
	cpx #$30.b		; E0 30
	cmp $E1FE34.l,X		; DF 34 FE E1
	and $33C0DF.l,X		; 3F DF C0 33
	sbc $3EF1.w,X		; FD F1 3E
	bne  65.b		; D0 41
	sbc $C002.w,X		; FD 02 C0
	and $40E1.w		; 2D E1 40
	inc $0D03.w		; EE 03 0D
	sbc ($3F.b,S),Y		; F3 3F
	cpy #$EF.b		; C0 EF
	ora ($ED.b,S),Y		; 13 ED
	trb $0F.b		; 14 0F
	bne  34.b		; D0 22
	dec $24C0.w,X		; DE C0 24
	inc $3FE1.w,X		; FE E1 3F
	bne  66.b		; D0 42
	sbc $C001.w		; ED 01 C0
	rol $4FE1.w		; 2E E1 4F
	inc $0D13.w		; EE 13 0D
	tsb $1E.b		; 04 1E
	cpy #$D0.b		; C0 D0
	jsl $EE34CE.l		; 22 CE 34 EE
	sbc ($4D.b),Y		; F1 4D
	cmp ($C0.b)		; D2 C0
	eor $0C13ED.l,X		; 5F ED 13 0C
	pea $D02E.w		; F4 2E D0
	and $C0.b,S		; 23 C0
	dec $EE34.w		; CE 34 EE
	sbc ($3E.b,X)		; E1 3E
	cmp ($5E.b),Y		; D1 5E
	inc $13C0.w		; EE C0 13
	jsr ($0E05.w,X)		; FC 05 0E
	cpx #$21.b		; E0 21
	cmp $EEC042.l		; CF 42 C0 EE
	cop $2C.b		; 02 2C
	pea $E03D.w		; F4 3D E0
	ora ($CE.b)		; 12 CE
	cpy #$33.b		; C0 33
	inc $3DF1.w		; EE F1 3D
	sbc $4E.b,S		; E3 4E
	sbc $DDC013.l		; EF 13 C0 DD
	bit $EE.b		; 24 EE
	sbc ($3E.b),Y		; F1 3E
	cmp ($4E.b)		; D2 4E
	sbc $ED13C0.l		; EF C0 13 ED
	bit $EF.b		; 24 EF
	beq  62.b		; F0 3E
	cmp ($4E.b),Y		; D1 4E
	cpy #$FF.b		; C0 FF
	cop $FD.b		; 02 FD
	bit $EE.b		; 24 EE
	beq  47.b		; F0 2F
	cmp ($C0.b)		; D2 C0
	lsr $02EF.w		; 4E EF 02
	sbc $EF24.w		; ED 24 EF
	beq  46.b		; F0 2E
	bcs -76.b		; B0 B4
	tda		; 7B
	cmp $65BD15.l,X		; DF 15 BD 65
	ldx $C001.w,Y		; BE 01 C0
	and $1EF4.w		; 2D F4 1E
	beq  17.b		; F0 11
	bne  64.b		; D0 40
	sbc $0D01C0.l		; EF C0 01 0D
	trb $EF.b		; 14 EF
	beq  47.b		; F0 2F
	sbc ($4E.b,X)		; E1 4E
	bcs -33.b		; B0 DF
	tsb $DD.b		; 04 DD
	eor $BE.b		; 45 BE
	brk $3B.b		; 00 3B
	inc $C0.b,X		; F6 C0
	asl $10F0.w		; 0E F0 10
	cmp ($4E.b),Y		; D1 4E
	cpx #$01.b		; E0 01
	inc $55B0.w,X		; FE B0 55
	ldx $2B01.w,Y		; BE 01 2B
	sbc [$0C.b],Y		; F7 0C
	beq  32.b		; F0 20
	bcs -77.b		; B0 B3
	jmp ($02D0.w,X)		; 7C D0 02
	dec $BE53.w,X		; DE 53 BE
	ora ($C0.b),Y		; 11 C0
	asl $FE04.w		; 0E 04 FE
	ora ($1F.b,X)		; 01 1F
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	cpx #$C0.b		; E0 C0
	ora ($EF.b),Y		; 11 EF
	and ($DF.b)		; 32 DF
	ora ($0D.b,X)		; 01 0D
	tsb $FE.b		; 04 FE
	cpy #$01.b		; C0 01
	ora $E04ED2.l,X		; 1F D2 4E E0
	ora ($EE.b),Y		; 11 EE
	and $B0.b,S		; 23 B0
	lda $2B02.w,X		; BD 02 2B
	inc $3B.b		; E6 3B
	sbc ($22.b,X)		; E1 22
	lda $BE63B0.l		; AF B0 63 BE
	ora ($2A.b)		; 12 2A
	sbc [$3B.b],Y		; F7 3B
	cmp ($32.b),Y		; D1 32
	cpy #$DF.b		; C0 DF
	.db $42, $DE		; 42 DE
	ora ($1C.b),Y		; 11 1C
	pea $E02D.w		; F4 2D E0
	cpy #$21.b		; C0 21
	cmp $02DE33.l,X		; DF 33 DE 02
	and $4EE3.w		; 2D E3 4E
	cpy #$D0.b		; C0 D0
	jsl $ED24DD.l		; 22 DD 24 ED
	sbc ($2E.b)		; F2 2E
	cmp ($C0.b)		; D2 C0
	eor $FC22DF.l,X		; 5F DF 22 FC
	tsb $1D.b		; 04 1D
.ACCU 8
	sep #$20		; E2 20
	cpy #$CF.b		; C0 CF
	eor $DD.b,S		; 43 DD
	ora ($1C.b,S),Y		; 13 1C
	sbc $5E.b,S		; E3 5E
	cpy #$C0.b		; C0 C0
	and ($DC.b)		; 32 DC
	and $0C.b		; 25 0C
	sbc $2F.b,S		; E3 2F
	cpy #$43.b		; C0 43
	cpy #$CD.b		; C0 CD
	ora ($1C.b,S),Y		; 13 1C
	cmp ($5F.b,S),Y		; D3 5F
	cmp $C0FC32.l		; CF 32 FC C0
	ora $3C.b		; 05 3C
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	cmp $0B35.w		; CD 35 0B
	cpx $C0.b		; E4 C0
	and $DC44BF.l		; 2F BF 44 DC
	trb $1D.b		; 14 1D
	rep #$43		; C2 43
	cpy #$23CC.w		; C0 CC 23
	tsb $42E2.w		; 0C E2 42
	lda $FC33.w,X		; BD 33 FC
	cpy #$41E3.w		; C0 E3 41
	ldx $EC43.w,Y		; BE 43 EC
	sbc ($40.b,S),Y		; F3 40
	ldx $42C0.w,Y		; BE C0 42
	cpx $3003.w		; EC 03 30
	lda $03DD42.l,X		; BF 42 DD 03
	cpy #$BF20.w		; C0 20 BF
	.db $42, $ED		; 42 ED
	ora $21.b,S		; 03 21
	dec $C033.w		; CE 33 C0
	sbc $31F2.w		; ED F2 31
	cpx $FD23.w		; EC 23 FD
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	cpy #$FC.b		; C0 FC
	trb $0D.b		; 14 0D
	cmp ($31.b)		; D2 31
	tsb $1D04.w		; 0C 04 1D
	bcs -95.b		; B0 A1
	stz $0A.b		; 64 0A
	cmp $5D.b		; C5 5D
	lda $0F55.w		; AD 55 0F
	bcs -111.b		; B0 91
	rts		; 60

	tyx		; BB
	rol $20.b,X		; 36 20
	lda $CB53.w,X		; BD 53 CB
	bcs -28.b		; B0 E4
	rti		; 40

	inc A		; 1A
	asl $0C.b		; 06 0C
	bcs  82.b		; B0 52
	brk $B0.b		; 00 B0
	ldx #$5E.b		; A2 5E
	stp		; DB
	and $21.b		; 25 21
	wai		; CB
	eor $DC.b		; 45 DC
	bcs -61.b		; B0 C3
	eor ($1C.b),Y		; 51 1C
	pei ($3D.b)		; D4 3D
	cmp $1113.w,X		; DD 13 11
	bcs  -2.b		; B0 FE
	sbc ($10.b),Y		; F1 10
	dec $30F2.w,X		; DE F2 30
	ora $CE.b,S		; 03 CE
	bcs  49.b		; B0 31
	sbc $40D2.w		; ED D2 40
	ora ($BE.b,S),Y		; 13 BE
	and ($FD.b),Y		; 31 FD
	bcs -62.b		; B0 C2
	bvc   3.b		; 50 03
	cmp $DE32.w		; CD 32 DE
	cmp ($40.b)		; D2 40
	bcs   3.b		; B0 03
	tas		; 1B
	sbc ($00.b)		; F2 00
	ldx $0143.w,Y		; BE 43 01
	pld		; 2B
	bcs -29.b		; B0 E3
	asl $34DD.w,X		; 1E DD 34
	beq  50.b		; F0 32
	lda $0CB03F.l,X		; BF 3F B0 0C
	cpx $20.b		; E4 20
	trb $DB.b		; 14 DB
	ora ($0E.b,S),Y		; 13 0E
	lda ($B0.b),Y		; B1 B0
	eor ($01.b,X)		; 41 01
	jmp $DC3FB2.l		; 5C B2 3F DC
	ora $1F.b,X		; 15 1F
	bcs   4.b		; B0 04
	jmp.w [$0D12]		; DC 12 0D
.INDEX 16
	rep #$50		; C2 50
	beq  93.b		; F0 5D
	bcs -63.b		; B0 C1
	jsr $14EC.w		; 20 EC 14
	ora $F3FA04.l		; 0F 04 FA F3
	bcs  15.b		; B0 0F
	bcs  65.b		; B0 41
	sbc $21BD33.l,X		; FF 33 BD 21
	ora $C1B0.w,X		; 1D B0 C1
	eor ($EF.b,X)		; 41 EF
	and $DA.b,X		; 35 DA
	tsb $1E.b		; 04 1E
	cmp $FF21C0.l		; CF C0 21 FF
	cop $10.b		; 02 10
	cmp $02EF31.l		; CF 31 EF 02
	bcs  30.b		; B0 1E
	sbc ($41.b)		; F2 41
	lda $0D33.w		; AD 33 0D
	cmp ($2F.b),Y		; D1 2F
	bcs -17.b		; B0 EF
	ora ($31.b,S),Y		; 13 31
	ldx $DE41.w		; AE 41 DE
	sbc ($1F.b)		; F2 1F
	bcs -15.b		; B0 F1
	and $DB.b,S		; 23 DB
	trb $1E.b		; 14 1E
	cpy #$EE30.w		; C0 30 EE
	ldy #$2025.w		; A0 25 20
	tsa		; 3B
	cmp $0B.b,S		; C3 0B
	cpx #$EE22.w		; E0 22 EE
	bcs  17.b		; B0 11
	jsl $0E12EC.l		; 22 EC 12 0E
	cmp $A0EF21.l,X		; DF 21 EF A0
	and $33.b,S		; 23 33
	bit $2CB2.w		; 2C B2 2C
	cpx #$FF01.w		; E0 01 FF
	ldy #$1312.w		; A0 12 13
	and $10C0.w,X		; 3D C0 10
	sbc $20D1.w,X		; FD D1 20
	ldy #$14EF.w		; A0 EF 14
	and ($DC.b)		; 32 DC
	ora ($FF.b),Y		; 11 FF
	sbc $E5840F.l		; EF 0F 84 E5
	bmi -31.b		; 30 E1
	eor ($AD.b),Y		; 51 AD
	and ($BC.b)		; 32 BC
	ora ($94.b,X)		; 01 94
	and $DF40D2.l		; 2F D2 40 DF
	and $2E.b,S		; 23 2E
	bne  46.b		; D0 2E
	sty $D0.b,X		; 94 D0
	ora ($1D.b),Y		; 11 1D
	sbc $2E.b		; E5 2E
	cmp ($13.b),Y		; D1 13
	ora $FF90.w		; 0D 90 FF
	bit $ED.b,X		; 34 ED
	inc $EEFF.w		; EE FF EE
	beq  34.b		; F0 22
	bcc  15.b		; 90 0F
	ora $50.b		; 05 50
	bpl  -1.b		; 10 FF
	ldx $CD20.w,Y		; BE 20 CD
	bcc  19.b		; 90 13
	ora $34F1.w		; 0D F1 34
	tsb $4DF4.w		; 0C F4 4D
	bcs -128.b		; B0 80
	tas		; 1B
	ldy $CCF1.w,X		; BC F1 CC
	and ($FF.b,S),Y		; 33 FF
	lsr $1E.b,X		; 56 1E
	sty $33.b,X		; 94 33
	cpy $3DF3.w		; CC F3 3D
	cmp $20.b,S		; C3 20
	inc $8033.w		; EE 33 80
	bit $31.b		; 24 31
	bit $AC66.w		; 2C 66 AC
	ora $80C0DA.l,X		; 1F DA C0 80
	sbc $00EE.w		; ED EE 00
	cmp ($11.b),Y		; D1 11
	ora $2F24.w		; 0D 24 2F
	sty $00.b		; 84 00
	and $2A22D0.l		; 2F D0 22 2A
	cmp $3E.b		; C5 3E
	asl $2681.w		; 0E 81 26
	jsr ($2013.w,X)		; FC 13 20
	beq  -3.b		; F0 FD
	cpx #$00FE.w		; E0 FE 00
	brk $00.b		; 00 00
	php		; 08
	cmp $15.b,X		; D5 15
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	ora ($FE.b),Y		; 11 FE
	lda ($40.b,S),Y		; B3 40
	ora $F01030.l,X		; 1F 30 10 F0
	bcc -29.b		; 90 E3
	eor $FC.b,S		; 43 FC
	inc $3E33.w		; EE 33 3E
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	ldy #$F0.b		; A0 F0
	sbc $CD2E13.l,X		; FF 13 2E CD
	ora ($5F.b)		; 12 5F
	bne -96.b		; D0 A0
	jsl $14EE01.l		; 22 01 EE 14
	lsr $25CB.w		; 4E CB 25
	bmi -92.b		; 30 A4
	pei ($01.b)		; D4 01
	sbc $DA54FE.l,X		; FF FE 54 DA
	sbc ($54.b),Y		; F1 54
	ldy #$1F.b		; A0 1F
	sbc ($11.b,X)		; E1 11
	and $DB44FF.l		; 2F FF 44 DB
	lda ($A0.b,S),Y		; B3 A0
	eor ($FE.b),Y		; 51 FE
	and ($11.b,X)		; 21 11
	sbc $AC3B06.l,X		; FF 06 3B AC
	ldy #$57.b		; A0 57
	asl $12E2.w		; 0E E2 12
	asl $61E2.w,X		; 1E E2 61
	lda #$B4.b		; A9 B4
	.db $42, $0D		; 42 0D
	sbc ($01.b)		; F2 01
	beq -31.b		; F0 E1
	eor $D3B0CD.l		; 4F CD B0 D3
	eor $1111EF.l		; 4F EF 11 11
	sbc $C0FB23.l		; EF 23 FB C0
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	beq  16.b		; F0 10
	ora ($FF.b),Y		; 11 FF
	ora ($FC.b)		; 12 FC
	cpy #$F2.b		; C0 F2
	and $1010F1.l		; 2F F1 10 10
	beq  47.b		; F0 2F
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpx #$20.b		; E0 20
	ora ($FF.b)		; 12 FF
	ora ($DD.b),Y		; 11 DD
	and $C0.b,X		; 35 C0
	sbc $0012.w		; ED 12 00
	and $050CF1.l		; 2F F1 0C 05
	trb $E3C0.w		; 1C C0 E3
	bpl  17.b		; 10 11
	beq  30.b		; F0 1E
	sbc $4E.b,S		; E3 4E
	rep #$C0		; C2 C0
	bmi   1.b		; 30 01
	ora $5FD20F.l		; 0F 0F D2 5F
	bcs  65.b		; B0 41
	cpy #$F1.b		; C0 F1
	ora $5FE2FF.l		; 0F FF E2 5F
	cpy #$42.b		; C0 42
	sbc ($C0.b),Y		; F1 C0
	asl $12FF.w		; 0E FF 12
	rol $42D1.w		; 2E D1 42
	beq  14.b		; F0 0E
	cpy #$EF.b		; C0 EF
	bit $EC.b,X		; 34 EC
	tsb $30.b		; 04 30
	ora $C0E4EE.l		; 0F EE E4 C0
	lsr $44BF.w,X		; 5E BF 44
	bpl  -3.b		; 10 FD
	cpy #$55.b		; C0 55
	stp		; DB
	cpy #$04.b		; C0 04
	and ($0E.b),Y		; 31 0E
	cmp $4C26.w		; CD 26 4C
	bcs  83.b		; B0 53
	iny		; C8
	ora ($E1.b,X)		; 01 E1
	and $CA.b,X		; 35 CA
	cmp [$5E.b],Y		; D7 5E
	cmp $EFD00F.l		; CF 0F D0 EF
	and ($0D.b,S),Y		; 33 0D
	sbc ($21.b),Y		; F1 21
	ora $D014DE.l,X		; 1F DE 14 D0
	rol $21E0.w		; 2E E0 21
	bpl -35.b		; 10 DD
	tsb $2E.b		; 04 2E
	cpx #$C0.b		; E0 C0
	and ($20.b)		; 32 20
	dex		; CA
	inc $6E.b,X		; F6 6E
	cpy #$22.b		; C0 22
	and ($C0.b,X)		; 21 C0
	cmp #$06.b		; C9 06
	eor $21C1.w,X		; 5D C1 21
	ora $C055AD.l,X		; 1F AD 55 C0
	sbc $0012.w,X		; FD 12 00
	xce		; FB
	sbc $4E.b		; E5 4E
.INDEX 8
	sep #$1F		; E2 1F
	cpy #$10.b		; C0 10
	wai		; CB
	rol $0D.b,X		; 36 0D
	cop $10.b		; 02 10
	ora $C0BF.w		; 0D BF C0
	mvn $01,$EE		; 54 EE 01
	ora ($EA.b),Y		; 11 EA
	sbc $4F.b		; E5 4F
	sbc ($C4.b),Y		; F1 C4
	beq  29.b		; F0 1D
	cpx $4D.b		; E4 4D
.INDEX 8
	sep #$1D		; E2 1D
	brk $E2.b		; 00 E2
	cpy #$42.b		; C0 42
	sbc $C0FD22.l,X		; FF 22 FD C0
	and ($FF.b)		; 32 FF
	ora ($C0.b),Y		; 11 C0
	jsr ($20F2.w,X)		; FC F2 20
	ora ($1F.b,X)		; 01 1F
	dec $0F23.w		; CE 23 0F
	bcs  18.b		; B0 12
	xba		; EB
	tsb $1F.b		; 04 1F
	ora ($0B.b)		; 12 0B
	cmp $40.b,S		; C3 40
	bcs -15.b		; B0 F1
	trb $52B1.w		; 1C B1 52
	cpx #$1F.b		; E0 1F
	ldx $B834.w,Y		; BE 34 B8
	cmp ($21.b,X)		; C1 21
	sbc ($0F.b,X)		; E1 0F
	ora $0E.b,S		; 03 0E
	sbc $F4B0E2.l,X		; FF E2 B0 F4
	and $CD1E01.l,X		; 3F 01 1E CD
	and $2E.b		; 25 2E
	sbc ($B0.b),Y		; F1 B0
	sbc $DD13.w		; ED 13 DD
	and $2E.b,X		; 35 2E
	jmp.w [$21E1]		; DC E1 21
	bcs  18.b		; B0 12
	jsr ($0EF2.w,X)		; FC F2 0E
	ora $41.b,S		; 03 41
	wai		; CB
	sbc ($B0.b)		; F2 B0
	ora ($22.b),Y		; 11 22
	jsr ($21D1.w,X)		; FC D1 21
	sbc $B4CB33.l,X		; FF 33 CB B4
	eor ($FF.b)		; 52 FF
	jsr $36CC.w		; 20 CC 36
	ora $2BD3.w,X		; 1D D3 2B
	ldy $C3.b,X		; B4 C3
	bvc -15.b		; 50 F1
	tsb $10E3.w		; 0C E3 10
	cop $E1.b		; 02 E1
	ldy $ED.b,X		; B4 ED
	and $0F.b,S		; 23 0F
	ora ($FB.b),Y		; 11 FB
	pea $E33E.w		; F4 3E E3
	bcs  65.b		; B0 41
	tyx		; BB
	sbc ($1F.b,S),Y		; F3 1F
	ora $1B.b,S		; 03 1B
	bcs  49.b		; B0 31
	ldy $F2.b,X		; B4 F2
	ora $44CF.w,X		; 1D CF 44
	sbc $04DC12.l		; EF 12 DC 04
	ldy $3D.b,X		; B4 3D
	sbc ($0C.b,S),Y		; F3 0C
	cmp ($41.b)		; D2 41
	cpx #$2F.b		; E0 2F
	cmp $24B4.w,X		; DD B4 24
	ora $C40C11.l		; 0F 11 0C C4
	eor $B020E1.l		; 4F E1 20 B0
	xce		; FB
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sbc ($20.b),Y		; F1 20
	cmp $1200.w,X		; DD 00 12
	clv		; B8
	asl $43E0.w		; 0E E0 43
	cmp $1D12.w,X		; DD 12 1D
	sbc ($31.b,X)		; E1 31
	ldy $23.b		; A4 23
	jsr ($C31D.w,X)		; FC 1D C3
	eor ($FD.b)		; 52 FD
	sep #$0C		; E2 0C
	clv		; B8
	eor $CD31D1.l		; 4F D1 31 CD
	ora $1F.b,X		; 15 1F
	dec $A040.w,X		; DE 40 A0
	sbc $D0FF.w,X		; FD FF D0
	ora ($1F.b,S),Y		; 13 1F
	cpy $0F12.w		; CC 12 0F
	sty $34.b,X		; 94 34
	tsx		; BA
	inc $00.b,X		; F6 00
	sbc ($32.b),Y		; F1 32
	dex		; CA
	tsb $94.b		; 04 94
	sbc $FD0F24.l,X		; FF 24 0F FD
	inc BG4VOFS.w		; EE 14 21
	cpx #$0F90.w		; E0 90 0F
	ldy $F2F0.w,X		; BC F0 F2
	and $D30BDE.l,X		; 3F DE 0B D3
	bcc  64.b		; 90 40
	dec $D0FE.w,X		; DE FE D0
	beq  66.b		; F0 42
	cmp $9012.w		; CD 12 90
	stp		; DB
	asl $3D.b,X		; 16 3D
	dec $F00F.w		; CE 0F F0
	ora ($0D.b),Y		; 11 0D
	sty $F3.b,X		; 94 F3
	ora $C23CE3.l,X		; 1F E3 3C C2
	ora $98CF31.l,X		; 1F 31 CF 98
	jmp $C051D0.l		; 5C D0 51 C0
	jmp $5EB4.w		; 4C B4 5E
	sep #$84		; E2 84
	phy		; 5A
	cmp ($DA.b,S),Y		; D3 DA
	bit $12.b,X		; 34 12
	ora $CE0F.w		; 0D 0F CE
	sty $23.b,X		; 94 23
	bit $B22E.w		; 2C 2E B2
	bpl  35.b		; 10 23
	cmp $CE902C.l,X		; DF 2C 90 CE
	bpl  15.b		; 10 0F
	cmp $12BE10.l,X		; DF 10 BE 12
	ora $30C194.l		; 0F 94 C1 30
.INDEX 8
	sep #$1F		; E2 1F
	ora $DF13F0.l		; 0F F0 13 DF
	sty $11.b,X		; 94 11
	and $0EF1.w		; 2D F1 0E
	bit $BD.b,X		; 34 BD
	eor ($AC.b),Y		; 51 AC
	bcc -26.b		; 90 E6
	bit $00EF.w,X		; 3C EF 00
	asl $429D.w,X		; 1E 9D 42
	ldy #$A0.b		; A0 A0
	and $3DC3.w,X		; 3D C3 3D
.INDEX 8
	sep #$1C		; E2 1C
	sbc ($1F.b),Y		; F1 1F
	brk $90.b		; 00 90
	cmp $E30E.w,X		; DD 0E E3
	eor $0D.b,S		; 43 0D
	cmp $3DC1.w,X		; DD C1 3D
	bcc -30.b		; 90 E2
	rol $CFBD.w		; 2E BD CF
	mvn $12,$CC		; 54 CC 12
	sbc $1094.w,X		; FD 94 10
	brk $44.b		; 00 44
	stp		; DB
	sbc $62A505.l		; EF 05 A5 62
	tya		; 98
	cmp $336FEE.l,X		; DF EE 6F 33
	sbc ($BF.b,X)		; E1 BF
	ora $21A4C3.l		; 0F C3 A4 21
	rol $1E.b,X		; 36 1E
	cmp $4414CA.l,X		; DF CA 14 44
	and $DF1FB8.l,X		; 3F B8 1F DF
	.db $42, $F1		; 42 F1
	rol $3DED.w,X		; 3E ED 3D
	rep #$C8		; C2 C8
	jsl $2CEF10.l		; 22 10 EF 2C
	sbc $2C0161.l		; EF 61 01 2C
	cpy $EF.b		; C4 EF
	wai		; CB
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	eor ($0D.b,X)		; 41 0D
	cpy $B8F2.w		; CC F2 B8
	and ($CF.b,X)		; 21 CF
	xba		; EB
	cpx #$75.b		; E0 75
	and $C809CF.l		; 2F CF 09 C8
.INDEX 8
	sep #$51		; E2 51
	beq   0.b		; F0 00
	jmp.w [$3013]		; DC 13 30
	ora $FC0EC8.l,X		; 1F C8 0E FC
	trb $21.b		; 14 21
	beq  14.b		; F0 0E
	sbc $C823.w		; ED 23 C8
	and $FE0D00.l,X		; 3F 00 0D FE
	ora ($3F.b,S),Y		; 13 3F
	brk $0D.b		; 00 0D
	clv		; B8
	xba		; EB
	lsr $4F.b		; 46 4F
	sbc ($FB.b)		; F2 FB
	ldx $5F44.w,Y		; BE 44 5F
	clv		; B8
	sbc ($FB.b)		; F2 FB
	lda $022F55.l		; AF 55 2F 02
	xce		; FB
	ldy #$B8.b		; A0 B8
	rol $20.b,X		; 36 20
	sbc $FB.b,S		; E3 FB
	lda ($32.b,X)		; A1 32
	eor ($FF.b),Y		; 51 FF
	clv		; B8
	sbc $5124BD.l,X		; FF BD 24 51
	inc $CC1E.w,X		; FE 1E CC
	ora $B8.b,X		; 15 B8
	rts		; 60

	bne  31.b		; D0 1F
	lda $6412.w,X		; BD 12 64
	cmp $B820.w		; CD 20 B8
	jmp.w [$4502]		; DC 02 45
	xce		; FB
	cop $FB.b		; 02 FB
	sbc ($45.b),Y		; F1 45
	clv		; B8
	inc A		; 1A
	ora ($1B.b,X)		; 01 1B
	sbc ($E6.b)		; F2 E6
	eor $4DA1.w,X		; 5D A1 4D
	clv		; B8
	rep #$0F		; C2 0F
	lsr $BA.b,X		; 56 BA
	bit $CD.b		; 24 CD
	jsr $B416.w		; 20 16 B4
	adc $DF2DE1.l		; 6F E1 2D DF
	cpy #$75.b		; C0 75
	cmp $0FC020.l,X		; DF 20 C0 0F
	jsr ($41C0.w,X)		; FC C0 41
	cop $20.b		; 02 20
	inc $C0DE.w,X		; FE DE C0
	ora ($11.b,S),Y		; 13 11
	and ($FF.b,X)		; 21 FF
	xce		; FB
	cmp ($51.b)		; D2 51
	cop $C0.b		; 02 C0
	and $15CCF0.l		; 2F F0 CC 15
	ora $1EFF11.l,X		; 1F 11 FF 1E
	cpy $E4.b		; C4 E4
	lsr $0ED2.w		; 4E D2 0E
	ora ($E0.b,X)		; 01 E0
	and ($EF.b)		; 32 EF
	ldy $20.b,X		; B4 20
	cmp $EE44D2.l,X		; DF D2 44 EE
	brk $0D.b		; 00 0D
	cmp $B8.b,S		; C3 B8
	and $1EC2.w		; 2D C2 1E
	asl $5DE5.w,X		; 1E E5 5D
	lda ($2F.b),Y		; B1 2F
	ldy $FD.b,X		; B4 FD
	cmp ($41.b,S),Y		; D3 41
	brk $F0.b		; 00 F0
	jsr ($40E4.w,X)		; FC E4 40
	ldy $F1.b,X		; B4 F1
	ora $2F14EC.l		; 0F EC 14 2F
	ora ($0F.b,X)		; 01 0F
	dec $E2B0.w		; CE B0 E2
	and ($11.b,X)		; 21 11
	jsr $13BD.w		; 20 BD 13
	bpl  18.b		; 10 12
	bcs  28.b		; B0 1C
	cmp ($21.b,X)		; C1 21
	ora ($11.b),Y		; 11 11
	cpx $20F3.w		; EC F3 20
	bcs -16.b		; B0 F0
	jsr $22CE.w		; 20 CE 22
	ora ($10.b),Y		; 11 10
	jmp.w [$B004]		; DC 04 B0
	jsr $1E00.w		; 20 00 1E
	lda $200142.l,X		; BF 42 01 20
	cpy $76A4.w		; CC A4 76
	cpx #$0E.b		; E0 0E
	sbc $5D16.w,Y		; F9 16 5D
	sbc $0B.b,S		; E3 0B
	ldy $C3.b,X		; B4 C3
	rti		; 40

	sbc ($1E.b,X)		; E1 1E
	bne  50.b		; D0 32
	sbc $BAA420.l,X		; FF 20 A4 BA
	and [$2D.b]		; 27 2D
	ora ($DB.b),Y		; 11 DB
	inc $4E.b,X		; F6 4E
	cop $A4.b		; 02 A4
	xba		; EB
	cmp $52.b,S		; C3 52
	sbc ($0D.b),Y		; F1 0D
	dec $0F34.w,X		; DE 34 0F
	ldy $10.b		; A4 10
	jmp.w [$0F25]		; DC 25 0F
	bpl -36.b		; 10 DC
	ora $10.b,X		; 15 10
	tay		; A8
	brk $FE.b		; 00 FE
	ora ($3E.b,S),Y		; 13 3E
	cpx #$0E.b		; E0 0E
	sbc $40.b,S		; E3 40
	sty $11.b,X		; 94 11
	rol $2799.w		; 2E 99 27
	ora $D2C954.l		; 0F 54 C9 D2
	sty $30.b,X		; 94 30
	trb $0E.b		; 14 0E
	cmp $FF23.w		; CD 23 FF
	eor ($CC.b)		; 52 CC
	sty $02.b,X		; 94 02
	inc $E043.w,X		; FE 43 E0
	ora $10D2.w		; 0D D2 10
	rti		; 40

	tya		; 98
	asl $0E02.w		; 0E 02 0E
	bit $EE.b		; 24 EE
	beq  -1.b		; F0 FF
	and ($94.b,X)		; 21 94
	and $1D.b,X		; 35 1D
	cmp ($0F.b),Y		; D1 0F
	cpx #$33.b		; E0 33
	sbc $01840E.l,X		; FF 0E 84 01
	bmi  -1.b		; 30 FF
	dec $1044.w,X		; DE 44 10
	cmp $3388DD.l,X		; DF DD 88 33
	ora ($DF.b,X)		; 01 DF
	cmp $014F22.l		; CF 22 4F 01
	sbc $D288.w		; ED 88 D2
	bvc -46.b		; 50 D2
	beq -15.b		; F0 F1
	asl $0E21.w		; 0E 21 0E
	sei		; 78
	pei ($F5.b)		; D4 F5
	dec $AF5F.w,X		; DE 5F AF
	jsl $74DF03.l		; 22 03 DF 74
	eor $BB.b,S		; 43 BB
	sbc $2FE043.l,X		; FF 43 E0 2F
	inc $64E1.w,X		; FE E1 64
	.db $42, $E1		; 42 E1
	sbc ($B2.b),Y		; F1 B2
	bvc -84.b		; 50 AC
	eor $74D2.w,X		; 5D D2 74
	eor ($DE.b,S),Y		; 53 DE
	cmp $5521F0.l,X		; DF F0 21 55
	tsx		; BA
	inc $E488.w		; EE 88 E4
	eor $1ED0.w		; 4D D0 1E
	brk $22.b		; 00 22
	ora $3F70FF.l		; 0F FF 70 3F
	ldy $2303.w		; AC 03 23
	rol $45AC.w,X		; 3E AC 45
	bpl 120.b		; 10 78
	trb $2B15.w		; 1C 15 2B
	inc $EB.b,X		; F6 EB
	lda ($60.b,S),Y		; B3 60
	ora $74.b		; 05 74
	trb $DD1B.w		; 1C 1B DD
	bit $20.b,X		; 34 20
	rol $AFF0.w		; 2E F0 AF
	bra   5.b		; 80 05
	and $2DC2.w,X		; 3D C2 2D
	lda ($42.b,X)		; A1 42
	brk $51.b		; 00 51
	bra -54.b		; 80 CA
	bit $0C.b		; 24 0C
	cmp $F100F2.l		; CF F2 00 F1
	bit $F484.w,X		; 3C 84 F4
	jmp $3DE2.w		; 4C E2 3D
	cmp ($12.b),Y		; D1 12
	cpx $9044.w		; EC 44 90
	jsr $020F.w		; 20 0F 02
	ora $C03EC0.l		; 0F C0 3E C0
	eor $A0.b,S		; 43 A0
	beq  16.b		; F0 10
	sbc $43E01F.l		; EF 1F E0 43
	jsr ($9000.w,X)		; FC 00 90
	brk $13.b		; 00 13
	phd		; 0B
	and [$1B.b],Y		; 37 1B
.INDEX 8
	sep #$DF		; E2 DF
	bvc -96.b		; 50 A0
	bne  51.b		; D0 33
	cpx $EB25.w		; EC 25 EB
	ora $EC.b,X		; 15 EC
	sbc $A0.b,X		; F5 A0
	and $0D04.w,X		; 3D 04 0D
	sep #$0F		; E2 0F
	sbc ($30.b,X)		; E1 30
	sbc $FF00A0.l		; EF A0 00 FF
	ora ($20.b,X)		; 01 20
	cmp ($42.b),Y		; D1 42
	ldx $B050.w		; AE 50 B0
	cmp $41CF50.l		; CF 50 CF 41
	ora ($2E.b,X)		; 01 2E
	cpx #$0E.b		; E0 0E
	ldy $42.b,X		; B4 42
	cmp $EF32.w		; CD 32 EF
	bmi -63.b		; 30 C1
	jsr $B0E3.w		; 20 E3 B0
	rti		; 40

	ldx $D331.w,Y		; BE 31 D3
	rol $20D0.w,X		; 3E D0 20
	ora ($B0.b),Y		; 11 B0
	sbc $CD22.w,X		; FD 22 CD
	mvp $32,$DE		; 44 DE 32
	cmp $EEA021.l,X		; DF 21 A0 EE
	and ($E1.b,X)		; 21 E1
	ora $1A26.w,X		; 1D 26 1A
	cpx $1E.b		; E4 1E
	bcs  35.b		; B0 23
	jsr ($1001.w,X)		; FC 01 10
	jsr $22ED.w		; 20 ED 22
	ora ($B0.b,X)		; 01 B0
	rol $1FD1.w		; 2E D1 1F
	tsb $1B.b		; 04 1B
	cpx $2F.b		; E4 2F
	and $B0.b,S		; 23 B0
	stp		; DB
	sbc ($F4.b)		; F2 F4
	eor $D210A0.l		; 4F A0 10 D2
	lsr $D2B0.w		; 4E B0 D2
	jsr $EC22.w		; 20 22 EC
	cop $F1.b		; 02 F1
	and ($CE.b),Y		; 31 CE
	bcs  18.b		; B0 12
	brk $20.b		; 00 20
	ldx $0332.w,Y		; BE 32 03
	rol $B0CF.w		; 2E CF B0
	bpl   2.b		; 10 02
	and $2DE3.w,X		; 3D E3 2D
	cop $FC.b		; 02 FC
	tsb $A0.b		; 04 A0
	rol $BA01.w,X		; 3E 01 BA
	bit $12.b		; 24 12
	rol $4EC1.w,X		; 3E C1 4E
	ldy #$D3.b		; A0 D3
	pld		; 2B
	sbc $50.b		; E5 50
	cpx #$EB.b		; E0 EB
	sbc ($13.b,S),Y		; F3 13
	ldy #$3E.b		; A0 3E
	cmp $1F1113.l		; CF 13 11 1F
	bne  17.b		; D0 11
	and ($B0.b,S),Y		; 33 B0
	inc $0F01.w,X		; FE 01 0F
	jsl $0F02EC.l		; 22 EC 02 0F
	ora ($A0.b)		; 12 A0
	tax		; AA
	bit $22.b,X		; 34 22
	ora $F100FF.l		; 0F FF 00 F1
	ora $F1B0.w,X		; 1D B0 F1
	ora ($21.b),Y		; 11 21
	dec $DF21.w,X		; DE 21 DF
	eor ($EE.b,X)		; 41 EE
	ldy #$23.b		; A0 23
	inc $AF40.w,X		; FE 40 AF
	and $C12B03.l,X		; 3F 03 2B C1
	ldy $2C.b		; A4 2C
	tsb $1B.b		; 04 1B
	cpy $4E.b		; C4 4E
	sbc $0E.b,S		; E3 0E
	cmp ($A0.b,X)		; C1 A0
	ora ($E0.b),Y		; 11 E0
	rti		; 40

	cmp $2F0033.l		; CF 33 00 2F
	cmp $2E90.w		; CD 90 2E
	lda ($72.b,S),Y		; B3 72
	dec $F043.w,X		; DE 43 F0
	cmp $02A4CE.l,X		; DF CE A4 02
	sbc ($0E.b)		; F2 0E
	cmp ($31.b),Y		; D1 31
	sbc ($1D.b),Y		; F1 1D
	cmp $A0.b,S		; C3 A0
	tsb $51D3.w		; 0C D3 51
	bne  64.b		; D0 40
	cmp ($40.b),Y		; D1 40
	dec $2090.w,X		; DE 90 20
	bne  67.b		; D0 43
	asl $25C1.w,X		; 1E C1 25
	asl $A033.w,X		; 1E 33 A0
	wai		; CB
	ora ($01.b,X)		; 01 01
	and ($0F.b,X)		; 21 0F
	ora ($F2.b),Y		; 11 F2
	rol $D0A0.w		; 2E A0 D0
	ora $5FD4.w,X		; 1D D4 5F
	cmp ($2F.b),Y		; D1 2F
	cmp ($30.b)		; D2 30
	bcc -34.b		; 90 DE
	sbc $44C0.w		; ED C0 44
	sbc $33EE0E.l,X		; FF 0E EE 33
	sty $EE.b,X		; 94 EE
	asl $33F1.w		; 0E F1 33
	bit $C10F.w		; 2C 0F C1
	lsr $C681.w,X		; 5E 81 C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $03.b		; 64 03
	bpl -31.b		; 10 E1
	inc $D20F.w		; EE 0F D2
	cop $14.b		; 02 14
	stz $12.b		; 64 12
	sbc ($ED.b,X)		; E1 ED
	and $FEB20D.l		; 2F 0D B2 FE
	and ($78.b)		; 32 78
	beq  15.b		; F0 0F
	sbc ($1F.b)		; F2 1F
	sbc ($D4.b,S),Y		; F3 D4
	brk $3E.b		; 00 3E
	sei		; 78
	bpl -20.b		; 10 EC
	ora ($2C.b,X)		; 01 2C
	sep #$CD		; E2 CD
	pei ($63.b)		; D4 63
	dey		; 88
	bpl  50.b		; 10 32
	and ($FD.b)		; 32 FD
	cmp $D0EE.w,X		; DD EE D0
	cop $98.b		; 02 98
	brk $0F.b		; 00 0F
	cop $5F.b		; 02 5F
	ora ($21.b,X)		; 01 21
	asl $98EE.w,X		; 1E EE 98
	cpy #$D0.b		; C0 D0
	sbc ($21.b),Y		; F1 21
	bpl  35.b		; 10 23
	and ($0E.b,S),Y		; 33 0E
	tay		; A8
	ora $F2FFEE.l		; 0F EE FF F2
	ora ($01.b,X)		; 01 01
	cop $05.b		; 02 05
	tya		; 98
	cmp $CE0D.w,X		; DD 0D CE
	sbc $1F60D1.l		; EF D1 60 1F
	sbc ($A8.b,S),Y		; F3 A8
	brk $42.b		; 00 42
	cmp $E1EFF0.l,X		; DF F0 EF E1
	sbc $11.b,S		; E3 11
	tay		; A8
	sbc $3432.w,X		; FD 32 34
	cpx $D00E.w		; EC 0E D0
	sbc ($F1.b)		; F2 F1
	ldy $00.b,X		; B4 00
	brk $F0.b		; 00 F0
	beq  53.b		; F0 35
	bpl  17.b		; 10 11
	ora $00F1B8.l		; 0F B8 F1 00
	bpl  15.b		; 10 0F
	brk $FF.b		; 00 FF
	and [$DD.b]		; 27 DD
	tay		; A8
	ora $0B.b,S		; 03 0B
.INDEX 16
	rep #$1F		; C2 1F
	eor ($2F.b,X)		; 41 2F
	cmp $F0B82C.l,X		; DF 2C B8 F0
	and $EE.b,X		; 35 EE
	ora ($FE.b,X)		; 01 FE
	cmp ($00.b)		; D2 00
	ora ($B4.b,S),Y		; 13 B4
	and ($F0.b,X)		; 21 F0
	ora $2155DE.l		; 0F DE 55 21
	ora ($EC.b),Y		; 11 EC
	clv		; B8
	jsr $1002.w		; 20 02 10
	ora $FF01.w		; 0D 01 FF
	mvp $A8,$DE		; 44 DE A8
	ora ($EB.b,X)		; 01 EB
	ora ($10.b)		; 12 10
	jsl $FED2FD.l		; 22 FD D2 FE
	clv		; B8
	and [$DB.b],Y		; 37 DB
	cop $EE.b		; 02 EE
	ora ($3F.b,X)		; 01 3F
	sbc ($0E.b)		; F2 0E
	iny		; C8
	ora $5E011F.l		; 0F 1F 01 5E
	bne   0.b		; D0 00
	beq   1.b		; F0 01
	iny		; C8
	and $F00F1F.l		; 2F 1F 0F F0
	ora $19260F.l,X		; 1F 0F 26 19
	clv		; B8
	cmp ($1D.b)		; D2 1D
	sbc $35.b,S		; E3 35
	ora $0EFF.w		; 0D FF 0E
	sbc ($C8.b),Y		; F1 C8
	bpl  -1.b		; 10 FF
	ora $4A.b		; 05 4A
	bne  32.b		; D0 20
	sbc $FFC814.l,X		; FF 14 C8 FF
	sbc ($1E.b,X)		; E1 1E
	brk $2F.b		; 00 2F
	sbc $C4DB46.l		; EF 46 DB C4
	dec $EE00.w,X		; DE 00 EE
	trb $20.b		; 14 20
	beq  14.b		; F0 0E
	sbc $E31FC8.l,X		; FF C8 1F E3
	adc $2E02AE.l		; 6F AE 02 2E
	cpx $20.b		; E4 20
	iny		; C8
	cmp $11FF01.l,X		; DF 01 FF 11
	ora $EB45.w		; 0D 45 EB
	cpx #$44B8.w		; E0 B8 44
	cmp $B21B53.l		; CF 53 1B B2
	bpl -31.b		; 10 E1
	rol $04C8.w		; 2E C8 04
	and $03DE.w		; 2D DE 03
	ora $EE2F11.l		; 0F 11 2F EE
	iny		; C8
	and $E30100.l		; 2F 00 01 E3
	eor $1FF2CE.l		; 4F CE F2 1F
	iny		; C8
	cop $11.b		; 02 11
	inc $0100.w		; EE 00 01
	sbc ($E1.b),Y		; F1 E1
	eor $B4.b,S		; 43 B4
	lsr $0FAA.w		; 4E AA 0F
	sbc $ED6026.l		; EF 26 60 ED
	dec $00C8.w		; CE C8 00
	ora $C0EE34.l		; 0F 34 EE C0
	ora ($F0.b)		; 12 F0
	ora ($C4.b),Y		; 11 C4
	and ($FF.b,S),Y		; 33 FF
	inc $FE0F.w		; EE 0F FE
	tsb $52.b		; 04 52
	sbc $24B8.w,X		; FD B8 24
	sbc $DC3213.l		; EF 13 32 DC
	sbc $B80F20.l		; EF 20 0F B8
	sbc [$6D.b],Y		; F7 6D
	ldy $1FE3.w,X		; BC E3 1F
	sbc ($42.b),Y		; F1 42
	ora $CEA8.w		; 0D A8 CE
	and $61D4F0.l,X		; 3F F0 D4 61
	sbc $11D0.w		; ED D0 11
	sty $73.b,X		; 94 73
	sbc $65C0.w		; ED C0 65
	eor $DDEDFE.l		; 4F FE ED DD
	tay		; A8
	ora ($F0.b,X)		; 01 F0
	jsl $44DD0E.l		; 22 0E DD 44
	ora $98FE.w,X		; 1D FE 98
	and ($EE.b,S),Y		; 33 EE
	sbc ($20.b,X)		; E1 20
	ora ($1E.b,S),Y		; 13 1E
	inc $98B1.w,X		; FE B1 98
	bit $10.b,X		; 34 10
	bne  33.b		; D0 21
	jsr ($11C2.w,X)		; FC C2 11
	ora ($88.b,S),Y		; 13 88
	lsr $D2BA.w		; 4E BA D2
	jsl $2F3500.l		; 22 00 35 2F
	tyx		; BB
	dey		; 88
	sbc $34F2.w		; ED F2 34
	eor $E0FDFD.l		; 4F FD FD E0
	eor $501688.l		; 4F 88 16 50
	cmp #$0D.b		; C9 0D
	brk $E5.b		; 00 E5
	.db $42, $FD		; 42 FD
	dey		; 88
	sbc $0222D0.l		; EF D0 22 02
	eor $FC.b,S		; 43 FC
	bcs   0.b		; B0 00
	dey		; 88
	cmp ($34.b),Y		; D1 34
	asl $EEEF.w		; 0E EF EE
	asl $2E.b		; 06 2E
	ora $88.b,S		; 03 88
	ora ($CE.b),Y		; 11 CE
	sbc ($0D.b,X)		; E1 0D
	jsl $FDE04D.l		; 22 4D E0 FD
	dey		; 88
	tsb $3F.b		; 04 3F
	sbc ($22.b,X)		; E1 22
	ora $DFEF.w,X		; 1D EF DF
	jsl $D12088.l		; 22 88 20 D1
	and $31C1.w		; 2D C1 31
	inc $1043.w,X		; FE 43 10
	dey		; 88
	sbc $C30D.w		; ED 0D C3
	and ($F0.b),Y		; 31 F0
	and ($BD.b),Y		; 31 BD
	ora ($88.b,X)		; 01 88
	bpl -12.b		; 10 F4
	eor ($E0.b,X)		; 41 E0
	bcs -18.b		; B0 EE
	ora ($11.b)		; 12 11
	dey		; 88
	bpl -18.b		; 10 EE
	sbc $14E330.l,X		; FF 30 E3 14
	bit $78EE.w		; 2C EE 78
	sbc ($DF.b,X)		; E1 DF
	eor $22BC51.l		; 4F 51 BC 22
	ora $4578C3.l,X		; 1F C3 78 45
	lsr $C0AD.w,X		; 5E AD C0
	asl $4E1D.w		; 0E 1D 4E
	and ($88.b,X)		; 21 88
	and $33EF00.l		; 2F 00 EF 33
	ora $F01FFE.l		; 0F FE 1F F0
	dey		; 88
	ora $53E0.w		; 0D E0 53
	rol $20C2.w		; 2E C2 20
	sbc $1D881F.l,X		; FF 1F 88 1D
	ora ($0E.b),Y		; 11 0E
	cpx RDDIVH.w		; EC 15 42
	cmp $9403.w,X		; DD 03 94
	and ($1F.b)		; 32 1F
	beq  15.b		; F0 0F
	bpl -21.b		; 10 EB
	ldx $9824.w		; AE 24 98
	sbc $21F2.w,X		; FD F2 21
	dec $14FF.w,X		; DE FF 14
	and $A4EB.w		; 2D EB A4
	cmp $002023.l		; CF 23 20 00
	and $0E.b,S		; 23 0E
	cpx $A8E3.w		; EC E3 A8
	sbc $4024DD.l,X		; FF DD 24 40
	cmp $2EF3.w		; CD F3 2E
	sbc $01B8.w		; ED B8 01
	rti		; 40

	tsb $42E1.w		; 0C E1 42
	ora $21C1.w		; 0D C1 21
	clv		; B8
	inc $63E1.w,X		; FE E1 63
	phd		; 0B
	cmp $DF1B44.l		; CF 44 1B DF
	iny		; C8
	jsr $011D.w		; 20 1D 01
	and ($ED.b,S),Y		; 33 ED
	cmp ($23.b),Y		; D1 23
	sbc $E1C8.w,X		; FD C8 E1
	and ($FE.b,X)		; 21 FE
	trb $10.b		; 14 10
	ldx $3E03.w,Y		; BE 03 3E
	clv		; B8
	jmp.w [$FF24]		; DC 24 FF
	sbc $5F.b,X		; F5 5F
	lda #$F6.b		; A9 F6
	eor ($C8.b),Y		; 51 C8
	sbc $0F03.w		; ED 03 0F
	sbc ($31.b)		; F2 31
	xba		; EB
	sep #$41		; E2 41
	iny		; C8
	inc $1FE2.w,X		; FE E2 1F
	sbc ($32.b),Y		; F1 32
	jsr ($44DF.w,X)		; FC DF 44
	iny		; C8
	inc $11D1.w,X		; FE D1 11
	sbc $BF0D24.l,X		; FF 24 0D BF
	and $C4.b		; 25 C4
	and ($FD.b),Y		; 31 FD
	brk $FE.b		; 00 FE
	tsb $53.b		; 04 53
	xba		; EB
	cpy #$4EC8.w		; C0 C8 4E
	cmp $F4E003.l,X		; DF 03 E0 F4
	jsr $03BD.w		; 20 BD 03
	iny		; C8
	and ($DE.b),Y		; 31 DE
	cop $F0.b		; 02 F0
	pea $CC20.w		; F4 20 CC
	pea $31C8.w		; F4 C8 31
	sbc $1F01.w		; ED 01 1F
	sbc ($31.b)		; F2 31
	cpx $C8D2.w		; EC D2 C8
	.db $42, $FD		; 42 FD
	beq  47.b		; F0 2F
	sbc ($12.b,S),Y		; F3 12
	xba		; EB
	sbc ($C8.b),Y		; F1 C8
	.db $42, $EF		; 42 EF
	cmp ($1F.b)		; D2 1F
	sbc ($33.b),Y		; F1 33
	cmp $C8C1.w,X		; DD C1 C8
	eor $FE.b,S		; 43 FE
	cpx #$102E.w		; E0 2E 10
	and ($0C.b),Y		; 31 0C
	bne -72.b		; D0 B8
	ror $1D.b		; 66 1D
	lda $63E211.l,X		; BF 11 E2 63
	nop		; EA
	lda $1E24C8.l		; AF C8 24 1E
	cmp ($0F.b),Y		; D1 0F
	ora ($22.b,X)		; 01 22
	trb $B8DE.w		; 1C DE B8
	ror $4D.b		; 66 4D
	cmp $F110.w		; CD 10 F1
	mvn $9D,$1A		; 54 1A 9D
	clv		; B8
	lsr $4F.b		; 46 4F
	cmp $F3F0.w		; CD F0 F3
	mvp $AD,$19		; 44 19 AD
	cpy $E1.b		; C4 E1
	and ($0F.b)		; 32 0F
	inc $24EF.w,X		; FE EF 24
	rti		; 40

	jmp.w [$23C8]		; DC C8 23
	and $12FFEF.l		; 2F EF FF 12
	jsl $C8D0FC.l		; 22 FC D0 C8
	and ($1F.b,S),Y		; 33 1F
	inc $0100.w		; EE 00 01
	eor ($FC.b,X)		; 41 FC
	cmp $2F43C8.l,X		; DF C8 43 2F
	cmp $23120F.l		; CF 0F 12 23
	sbc $C8B0.w		; ED B0 C8
	bit $3E.b,X		; 34 3E
	cmp $121F.w,X		; DD 1F 12
	jsl $C8CE0C.l		; 22 0C CE C8
	mvp $CE,$20		; 44 20 CE
	beq  18.b		; F0 12
	jsl $C8CF0C.l		; 22 0C CF C8
	and $2F.b		; 25 2F
	sbc $F2F1.w		; ED F1 F2
	and ($FC.b,S),Y		; 33 FC
	cmp $3F24C8.l		; CF C8 24 3F
	inc $10E0.w		; EE E0 10
	.db $42, $0D		; 42 0D
	lda $4F23C8.l,X		; BF C8 23 4F
	jsr ($010F.w,X)		; FC 0F 01
	bit $FD.b,X		; 34 FD
	cmp $33C8.w		; CD C8 33
	and ($DF.b),Y		; 31 DF
	inc $3311.w		; EE 11 33
	ora $C4BD.w,X		; 1D BD C4
	cpy #$2044.w		; C0 44 20
	sbc $05DD.w		; ED DD 05
	adc $EA.b,S		; 63 EA
	iny		; C8
	and $32.b,S		; 23 32
	inc $E1FF.w		; EE FF E1
	bit $2F.b		; 24 2F
	ldy $03C8.w,X		; BC C8 03
	eor ($0D.b,X)		; 41 0D
	asl $24FF.w		; 0E FF 24
	and $E3C8DB.l,X		; 3F DB C8 E3
	eor $EF.b,S		; 43 EF
	sbc $4103E0.l,X		; FF E0 03 41
	stp		; DB
	iny		; C8
	sbc ($43.b,X)		; E1 43
	beq -17.b		; F0 EF
	sbc $EB4202.l,X		; FF 02 42 EB
	iny		; C8
	cmp ($33.b),Y		; D1 33
	asl $FEF0.w,X		; 1E F0 FE
	brk $53.b		; 00 53
	xce		; FB
	iny		; C8
	bne  35.b		; D0 23
	bpl -32.b		; 10 E0
	ora $3400.w		; 0D 00 34
	trb $B0C8.w		; 1C C8 B0
	trb $1F.b		; 14 1F
	ora $24D10F.l		; 0F 0F D1 24
	and $CDC8.w		; 2D C8 CD
	and $2F.b,S		; 23 2F
	ora $24EF1E.l		; 0F 1E EF 24
	rol $CDC8.w,X		; 3E C8 CD
	ora $3F.b,S		; 03 3F
	ora $23DF1F.l		; 0F 1F DF 23
	and $03EBC8.l,X		; 3F C8 EB 03
	jsr $1F0F.w		; 20 0F 1F
	sbc $5012.w,X		; FD 12 50
	iny		; C8
	cmp $21E2.w,X		; DD E2 21
	ora $12ED10.l		; 0F 10 ED 12
	and ($C8.b)		; 32 C8
	sbc $12D2.w		; ED D2 12
	ora $00EE10.l		; 0F 10 EE 00
	eor ($C8.b)		; 52 C8
	jsr ($12D2.w,X)		; FC D2 12
	beq  16.b		; F0 10
	inc $43E1.w,X		; FE E1 43
	clv		; B8
	stp		; DB
	ldy #$1F51.w		; A0 51 1F
	ora ($FC.b),Y		; 11 FC
	lda ($67.b)		; B2 67
	clv		; B8
	xce		; FB
	ldy #$1E23.w		; A0 23 1E
	jsl $67C0FB.l		; 22 FB C0 67
	clv		; B8
	tsb $23AF.w		; 0C AF 23
	ora $CFFC22.l		; 0F 22 FC CF
	lsr $B8.b,X		; 56 B8
	and $31AE.w		; 2D AE 31
	ora $BF1C12.l,X		; 1F 12 1C BF
	lsr $B8.b,X		; 56 B8
	ora $22CE.w,X		; 1D CE 22
	sbc $B01C22.l,X		; FF 22 1C B0
	lsr $B8.b		; 46 B8
	ora $20DF.w		; 0D DF 20
	ora $B10D22.l		; 0F 22 0D B1
	mvp $51,$B4		; 44 B4 51
	sbc $13FE00.l		; EF 00 FE 13
	rol $14BC.w,X		; 3E BC 14
	ldy $40.b,X		; B4 40
	cpx #$EF00.w		; E0 00 EF
	and $1D.b,S		; 23 1D
	cmp $B824.w		; CD 24 B8
	jsr ($1F01.w,X)		; FC 01 1F
.ACCU 8
	sep #$21		; E2 21
	cmp $31F4.w,X		; DD F4 31
	ldy $0F.b,X		; B4 0F
	sbc ($1E.b),Y		; F1 1E
	beq  34.b		; F0 22
	xce		; FB
	cmp ($42.b)		; D2 42
	clv		; B8
	bne  18.b		; D0 12
	inc $2D21.w		; EE 21 2D
	cmp $B4FD44.l,X		; DF 44 FD B4
	cpx #$FE11.w		; E0 11 FE
	ora ($1E.b)		; 12 1E
	cmp $2E34.w		; CD 34 2E
	ldy $F0.b,X		; B4 F0
	jsr $12E0.w		; 20 E0 12
	jsr ($43D0.w,X)		; FC D0 43
	asl $01B4.w		; 0E B4 01
	ora $EC10F1.l,X		; 1F F1 10 EC
	sbc $41.b,S		; E3 41
	sbc $0F10B4.l,X		; FF B4 10 0F
	cop $1E.b		; 02 1E
	cmp $3F23.w		; CD 23 3F
	brk $A8.b		; 00 A8
	asl $3F01.w,X		; 1E 01 3F
	stp		; DB
	sbc [$60.b],Y		; F7 60
	ldx $A402.w,Y		; BE 02 A4
	asl $2F02.w		; 0E 02 2F
	lda $64D4.w,Y		; B9 D4 64
	beq  16.b		; F0 10
	ldy $FF.b		; A4 FF
	ora ($0C.b)		; 12 0C
	plb		; AB
	and $41.b,X		; 35 41
	ora ($00.b,X)		; 01 00
	ldy $F1.b		; A4 F1
	ora $44C2CB.l,X		; 1F CB C2 44
	ora ($11.b),Y		; 11 11
	brk $A8.b		; 00 A8
	brk $FD.b		; 00 FD
	sbc ($52.b)		; F2 52
	sbc $0F10.w,X		; FD 10 0F
	sbc ($A8.b),Y		; F1 A8
	sbc $0F44EF.l,X		; FF EF 44 0F
	sbc ($10.b,X)		; E1 10
	bne -15.b		; D0 F1
	tay		; A8
	sbc $2015.w,X		; FD 15 20
	bne  48.b		; D0 30
	sbc $1D00.w		; ED 00 1D
	tay		; A8
	cop $50.b		; 02 50
	inc $0C31.w		; EE 31 0C
	beq  30.b		; F0 1E
.ACCU 8
	sep #$A8		; E2 A8
	.db $42, $FE		; 42 FE
	ora $0E.b,S		; 03 0E
	cmp ($F0.b),Y		; D1 F0
	cpx #$9833.w		; E0 33 98
	ora $3B03.w		; 0D 03 3B
	bcs  31.b		; B0 1F
	dec $2E45.w,X		; DE 45 2E
	tya		; 98
	cop $3D.b		; 02 3D
	lda $22FE2E.l,X		; BF 2E FE 22
	and $209802.l,X		; 3F 02 98 20
	lda $030E00.l,X		; BF 00 0E 03
	sbc ($F2.b),Y		; F1 F2
	and ($84.b),Y		; 31 84
	rol $FCEF.w		; 2E EF FC
	sbc $37CFFE.l		; EF FE CF 37
	eor $12D388.l,X		; 5F 88 D3 12
	sbc ($1F.b,X)		; E1 1F
	cpy #$3D04.w		; C0 04 3D
	sbc $2388.w		; ED 88 23
	ora ($FF.b),Y		; 11 FF
	sbc $1113EF.l,X		; FF EF 13 11
	cmp $103288.l		; CF 88 32 10
	inc $D00F.w		; EE 0F D0
	bit $1E.b		; 24 1E
	ora $2F4078.l		; 0F 78 40 2F
	bcs -20.b		; B0 EC
.ACCU 8
	sep #$65		; E2 65
	ora $2078B1.l,X		; 1F B1 78 20
	jsr ($EF10.w,X)		; FC 10 EF
	trb $04.b		; 14 04
	inc $74FF.w,X		; FE FF 74
	ora $04CEFC.l,X		; 1F FC CE 04
	ora $004E03.l,X		; 1F 03 4E 00
	stz $32.b,X		; 74 32
	wai		; CB
	cmp $12F0.w		; CD F0 12
	and $31.b,S		; 23 31
	trb $78.b		; 14 78
	phd		; 0B
	pld		; 2B
	cmp $4045.w,X		; DD 45 40
	and ($CE.b,X)		; 21 CE
	ora ($78.b,X)		; 01 78
	ora $41C0D0.l		; 0F D0 C0 41
	tsb $F5.b		; 04 F5
	cmp $784D.w		; CD 4D 78
	beq -19.b		; F0 ED
	brk $20.b		; 00 20
	ora $5C.b		; 05 5C
	asl $78EF.w,X		; 1E EF 78
	sbc $11E21E.l,X		; FF 1E E2 11
	and $0EEC14.l,X		; 3F 14 EC 0E
	sei		; 78
	sbc ($3E.b),Y		; F1 3E
	beq   1.b		; F0 01
	sbc ($41.b),Y		; F1 41
	cpy #$64E0.w		; C0 E0 64
	sbc $44C3.w,X		; FD C3 44
.INDEX 16
	rep #$11		; C2 11
	xba		; EB
	cmp ($FB.b,X)		; C1 FB
	sei		; 78
	and ($22.b,X)		; 21 22
	cmp $2E20.w		; CD 20 2E
	cmp $0D.b,X		; D5 0D
	sbc $521374.l,X		; FF 74 13 52
	cop $EF.b		; 02 EF
	inc $D1E0.w		; EE E0 D1
	bpl 116.b		; 10 74
	ora ($22.b,S),Y		; 13 22
	and ($FC.b,X)		; 21 FC
	inc $200D.w		; EE 0D 20
	ora ($74.b),Y		; 11 74
	ora ($52.b,X)		; 01 52
	cmp $01DF.w,X		; DD DF 01
	bpl -14.b		; 10 F2
	ora $1364.w,X		; 1D 64 13
	bvc  29.b		; 50 1D
	cpy #$10FB.w		; C0 FB 10
	jsl $00643F.l		; 22 3F 64 00
	ora ($11.b,X)		; 01 11
	sbc $E0FEC1.l,X		; FF C1 FE E0
	eor $0F54.w,X		; 5D 54 0F
	adc $5A.b		; 65 5A
	rol $EBFE.w		; 2E FE EB
	cmp ($3F.b)		; D2 3F
	stz $DF.b		; 64 DF
	bmi  11.b		; 30 0B
	bmi  47.b		; 30 2F
	beq  96.b		; F0 60
	ora $F064.w,X		; 1D 64 F0
	asl $60C2.w		; 0E C2 60
	inc $32F3.w		; EE F3 32
	sbc $0F0068.l		; EF 68 00 0F
	and ($0C.b,S),Y		; 33 0C
	sbc $B21D32.l,X		; FF 32 1D B2
	stz $00.b		; 64 00
	beq   3.b		; F0 03
	.db $42, $B0		; 42 B0
	and ($2C.b,S),Y		; 33 2C
	lda $FF0164.l		; AF 64 01 FF
	ora $4D.b		; 05 4D
	sbc $DFFF23.l,X		; FF 23 FF DF
	stz $00.b		; 64 00
	beq  80.b		; F0 50
	ora $A226EF.l,X		; 1F EF 26 A2
	dec $CD50.w,X		; DE 50 CD
	wai		; CB
	bit $64.b		; 24 64
	tsb $6B17.w		; 0C 17 6B
	cmp $0F50.w		; CD 50 0F
	cpy $4F33.w		; CC 33 4F
	plb		; AB
	ora $ED.b,X		; 15 ED
	cmp $F2FC54.l,X		; DF 54 FC F2
	adc ($FE.b,X)		; 61 FE
	cmp ($3F.b,S),Y		; D3 3F
	lda ($EF.b),Y		; B1 EF
	cli		; 58
	cmp $E03C51.l,X		; DF 51 3C E0
	ora ($0F.b,X)		; 01 0F
	cpx #$6402.w		; E0 02 64
	sbc $0F4F11.l,X		; FF 11 4F 0F
	bpl  30.b		; 10 1E
	sbc $AA5000.l,X		; FF 00 50 AA
	cmp $33.b,S		; C3 33
	ora ($2B.b),Y		; 11 2B
	stp		; DB
	lda $54F0.w		; AD F0 54
	sep #$42		; E2 42
	ora $C0F0.w		; 0D F0 C0
	bne  18.b		; D0 12
	ora ($64.b,X)		; 01 64
	bit $B1.b,X		; 34 B1
	sbc $010F00.l,X		; FF 00 0F 01
	ora ($11.b,X)		; 01 11
	stz $11.b		; 64 11
	sbc ($EC.b,X)		; E1 EC
	and ($3E.b,X)		; 21 3E
	ora ($01.b,X)		; 01 01
	ora ($44.b,X)		; 01 44
	cop $0D.b		; 02 0D
	xba		; EB
	lda ($14.b),Y		; B1 14
	sbc ($23.b,X)		; E1 23
	jsr $3450.w		; 20 50 34
	and ($CE.b)		; 32 CE
	cmp $DEDD.w		; CD DD DE
	eor ($11.b),Y		; 51 11
	bvc   0.b		; 50 00
	and ($DB.b,X)		; 21 DB
	dec $D3ED.w		; CE ED D3
	jsl $E550DE.l		; 22 DE 50 E5
	and $CEAA.w		; 2D AA CE
	jmp.w [$2DE4]		; DC E4 2D
	inc $1054.w		; EE 54 10
	sbc $20F1.w		; ED F1 20
	inc $F1.b,X		; F6 F1
	ora $54E0.w,X		; 1D E0 54
	ora $1001EF.l		; 0F EF 01 10
	lsr $C200.w,X		; 5E 00 C2
	beq  80.b		; F0 50
	cmp $F6DE.w,X		; DD DE F6
	ora ($11.b),Y		; 11 11
	ora ($1D.b)		; 12 1D
	sbc $7E0F34.l,X		; FF 34 0F 7E
	mvn $0F,$31		; 54 31 0F
	bpl -16.b		; 10 F0
	ora $38.b		; 05 38
	sbc $E02D03.l		; EF 03 2D E0
	and ($1E.b),Y		; 31 1E
	trb $4D.b		; 14 4D
	mvp $23,$FF		; 44 FF 23
	and $FF2FF1.l		; 2F F1 2F FF
	bit $2E.b		; 24 2E
	bit $92.b,X		; 34 92
	eor ($E0.b),Y		; 51 E0
	and ($1E.b,S),Y		; 33 1E
	cop $65.b		; 02 65
	xba		; EB
	sec		; 38
	eor $20.b,S		; 43 20
	cop $00.b		; 02 00
	ora $DD30F2.l		; 0F F2 30 DD
	bit $D1.b,X		; 34 D1
	eor ($0F.b,S),Y		; 53 0F
	and ($FC.b)		; 32 FC
	cmp ($31.b),Y		; D1 31
	tsb $B134.w		; 0C 34 B1
	eor ($1A.b)		; 52 1A
	ora $20D0FD.l,X		; 1F FD D0 20
	ldy $F334.w,X		; BC 34 F3
	eor ($FE.b)		; 52 FE
	sbc ($EE.b),Y		; F1 EE
	ora $1B.b,S		; 03 1B
	ldx $EF50.w,Y		; BE 50 EF
	sbc ($00.b),Y		; F1 00
	lda $EDFFEE.l		; AF EE FF ED
	cmp $301044.l,X		; DF 44 10 30
	rol $0F1E.w,X		; 3E 1E 0F
	ora $A136.w,X		; 1D 36 A1
	sec		; 38
	sbc ($30.b),Y		; F1 30
	cpx $1002.w		; EC 02 10
	ora $382F22.l,X		; 1F 22 2F 38
	cpx #$0D13.w		; E0 13 0D
	bne  82.b		; D0 52
	sbc $381E06.l,X		; FF 06 1E 38
	lda ($44.b),Y		; B1 44
	sbc $21E4.w,X		; FD E4 21
	cpx #$0F15.w		; E0 15 0F
	stz $00.b		; 64 00
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	sbc ($54.b),Y		; F1 54
	rol $F0F1.w		; 2E F1 F0
	sbc $12E2DB.l		; EF DB E2 12
	lsr $DE64.w,X		; 5E 64 DE
	ora ($00.b),Y		; 11 00
	ora $10D1FF.l		; 0F FF D1 10
	cmp $68.b,S		; C3 68
	lda ($F3.b,S),Y		; B3 F3
	ora $F100.w,X		; 1D 00 F1
	jsr $30DF.w		; 20 DF 30
	stz $FD.b,X		; 74 FD
	beq  18.b		; F0 12
	and ($DD.b,X)		; 21 DD
	cmp ($42.b)		; D2 42
	asl $F178.w		; 0E 78 F1
	adc ($9B.b,S),Y		; 73 9B
	cmp ($73.b)		; D2 73
	dec $D0F2.w,X		; DE F2 D0
	dey		; 88
	ora ($2E.b)		; 12 2E
	xba		; EB
	ora $41.b,S		; 03 41
	ora $010E.w		; 0D 0E 01
	tya		; 98
	and $FD.b,S		; 23 FD
	bcs   2.b		; B0 02
	.db $42, $FE		; 42 FE
	asl $A824.w		; 0E 24 A8
	and $13E0CE.l		; 2F CE E0 13
	bmi  29.b		; 30 1D
	ora ($13.b),Y		; 11 13
	tay		; A8
	xba		; EB
	dec $3501.w		; CE 01 35
	jsr $21E0.w		; 20 E0 21
	brk $A8.b		; 00 A8
	ldy $03EF.w		; AC EF 03
	adc ($3D.b)		; 72 3D
.ACCU 8
	sep #$20		; E2 20
	xba		; EB
	clv		; B8
	inc $130F.w,X		; FE 0F 13
	rti		; 40

	ora $0F12.w		; 0D 12 0F
	dec $00B8.w,X		; DE B8 00
	sbc $E01F54.l		; EF 54 1F E0
	and $B8F1ED.l,X		; 3F ED F1 B8
	inc $50F5.w,X		; FE F5 50
	inc $FD12.w,X		; FE 12 FD
	sbc $D0B81F.l		; EF 1F B8 D0
	stz $FF.b,X		; 74 FF
.ACCU 8
	sep #$2C		; E2 2C
	inc $DE10.w		; EE 10 DE
	clv		; B8
	eor $2F.b,X		; 55 2F
	sbc ($1F.b,X)		; E1 1F
	cmp $17EE00.l		; CF 00 EE 17
	clv		; B8
	and $CE10F0.l,X		; 3F F0 10 CE
	brk $FE.b		; 00 FE
	inc $5F.b,X		; F6 5F
	clv		; B8
	ora $F0DE10.l		; 0F 10 DE F0
	sbc $FF51E5.l,X		; FF E5 51 FF
	clv		; B8
	bpl -19.b		; 10 ED
	beq  14.b		; F0 0E
	sbc ($7F.b,S),Y		; F3 7F
	ora $CEB811.l		; 0F 11 B8 CE
	ora $6FF40E.l		; 0F 0E F4 6F
	brk $00.b		; 00 00
	dec $0FB8.w,X		; DE B8 0F
	asl $5F04.w		; 0E 04 5F
	brk $00.b		; 00 00
	dec $B80F.w,X		; DE 0F B8
	beq   4.b		; F0 04
	eor $C00000.l		; 4F 00 00 C0
	sbc $C1B4F0.l,X		; FF F0 B4 C1
	eor $44.b,S		; 43 44
	.db $42, $FE		; 42 FE
	cpx $C1CC.w		; EC CC C1
	clv		; B8
	jsr $0F00.w		; 20 00 0F
	bne  15.b		; D0 0F
	beq   2.b		; F0 02
	eor $3343B4.l		; 4F B4 43 33
	asl $DDFE.w		; 0E FE DD
	cmp $2314.w		; CD 14 23
	ldy $65.b		; A4 65
	rol $CAFE.w,X		; 3E FE CA
	lda $54B4.w,Y		; B9 B4 54
	mvn $52,$A4		; 54 A4 52
	sbc $CACBFE.l,X		; FF FE CB CA
	ora $22.b,X		; 15 22
	and $98.b,S		; 23 98
	sbc $1EF0.w,X		; FD F0 1E
	sbc ($F2.b,X)		; E1 F2
	rti		; 40

	dec $8821.w,X		; DE 21 88
	eor $10C3.w		; 4D C3 10
	asl $020D.w		; 0E 0D 02
	rti		; 40

	dec $2098.w		; CE 98 20
	bpl -48.b		; 10 D0
	jsr $11E1.w		; 20 E1 11
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	sty $1F.b,X		; 94 1F
	inc $BDEC.w		; EE EC BD
	jsl $243322.l		; 22 22 33 24
	sty $5E.b,X		; 94 5E
	tsx		; BA
	lda $03EE.w,X		; BD EE 03
	mvn $10,$43		; 54 43 10
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$BD		; E2 BD
	ora ($25.b,S),Y		; 13 25
	beq  36.b		; F0 24
	xce		; FB
	cmp $F488.w		; CD 88 F4
	lsr $20A4.w,X		; 5E A4 20
	and $FEF2.w,X		; 3D F2 FE
	sbc ($94.b,X)		; E1 94
	sbc $E04005.l,X		; FF 05 40 E0
	brk $DC.b		; 00 DC
	sbc ($F0.b,X)		; E1 F0
	dey		; 88
	jsl $AD4E00.l		; 22 00 4E AD
	sbc ($0E.b),Y		; F1 0E
	inc $50.b		; E6 50
	dey		; 88
	sbc ($0D.b),Y		; F1 0D
	ora ($DC.b),Y		; 11 DC
	pea $D14E.w		; F4 4E D1
	rti		; 40

	dey		; 88
	plx		; FA
	ora ($0F.b)		; 12 0F
	sbc ($26.b),Y		; F1 26
	eor $98E1AC.l		; 4F AC E1 98
	sbc $0311E3.l,X		; FF E3 11 03
	brk $10.b		; 00 10
	phd		; 0B
	cmp ($98.b,X)		; C1 98
	jsr $43E0.w		; 20 E0 43
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	cmp $111388.l,X		; DF 88 13 11
	and $0F.b,X		; 35 0F
	cmp $DC3FFF.l,X		; DF FF 3F DC
	dey		; 88
	ora $2E.b,X		; 15 2E
	cop $0E.b		; 02 0E
	ora $212E.w,X		; 1D 2E 21
	rol $EF88.w,X		; 3E 88 EF
	bmi -51.b		; 30 CD
	trb $0E.b		; 14 0E
	sbc ($41.b)		; F2 41
	eor $DE88.w		; 4D 88 DE
	ora $20EF.w		; 0D EF 20
	and ($12.b,X)		; 21 12
	trb $2E.b		; 14 2E
	sty $0F.b,X		; 94 0F
	dec $D0CA.w,X		; DE CA D0
	and ($02.b)		; 32 02
	bpl 101.b		; 10 65
	ldy #$42.b		; A0 42
	brk $EB.b		; 00 EB
	lda $4502.w		; AD 02 45
	bit $B4F4.w		; 2C F4 B4
	inc $0E01.w		; EE 01 0E
	ora ($21.b,S),Y		; 13 21
	bpl -54.b		; 10 CA
	ora ($C4.b,S),Y		; 13 C4
	inc $0012.w,X		; FE 12 00
	ora ($10.b)		; 12 10
	ora $C411CD.l		; 0F CD 11 C4
	sbc $210132.l,X		; FF 32 01 21
	sbc $31BD0E.l,X		; FF 0E BD 31
	cpy $F2.b		; C4 F2
	.db $42, $F1		; 42 F1
	and $C20CDF.l		; 2F DF 0C C2
	and $CC63B8.l,X		; 3F B8 63 CC
	and ($CE.b,X)		; 21 CE
	eor ($B3.b,X)		; 41 B3
	ror $B495.w		; 6E 95 B4
	adc ($E3.b,X)		; 61 E3
	asl $1CD1.w,X		; 1E D1 1C
	trb $FC.b		; 14 FC
	lda $B4.b,S		; A3 B4
	lsr $FE35.w,X		; 5E 35 FE
	sbc ($FD.b,X)		; E1 FD
	and ($EB.b,S),Y		; 33 EB
	ldy $B4.b,X		; B4 B4
	and $01FE52.l,X		; 3F 52 FE 01
	bne  49.b		; D0 31
	dex		; CA
	cmp [$B4.b],Y		; D7 B4
	bpl  97.b		; 10 61
	inc $C200.w		; EE 00 C2
	bmi -53.b		; 30 CB
	tsb $B4.b		; 04 B4
	ora $4F.b,S		; 03 4F
	sbc $2EE30F.l,X		; FF 0F E3 2E
	tsx		; BA
	rol $B4.b		; 26 B4
	tsb $4F.b		; 04 4F
	cmp $1EF4FE.l,X		; DF FE F4 1E
	cpy $B433.w		; CC 33 B4
	ora $2E.b		; 05 2E
	inc $130D.w,X		; FE 0D 13
	asl $54AC.w,X		; 1E AC 54
	ldy $05.b,X		; B4 05
	asl $0DEE.w,X		; 1E EE 0D
	bit $1E.b		; 24 1E
	ldy $C442.w,X		; BC 42 C4
	ora ($00.b)		; 12 00
	sbc $0F110F.l,X		; FF 0F 11 0F
	dec $B431.w,X		; DE 31 B4
	and $0E.b		; 25 0E
	bne  -3.b		; D0 FD
	bit $0E.b,X		; 34 0E
	lda $B441.w		; AD 41 B4
	bit $1F.b,X		; 34 1F
	inc $23FE.w		; EE FE 23
	asl $719D.w,X		; 1E 9D 71
	ldy $24.b,X		; B4 24
	asl $FDD0.w		; 0E D0 FD
	eor $0E.b,S		; 43 0E
	lda $C442.w		; AD 42 C4
	ora ($1F.b)		; 12 1F
	sbc $1F21FF.l,X		; FF FF 21 1F
	cmp $30B830.l		; CF 30 B8 30
	sbc $FF02.w		; ED 02 FF
	adc $6DC4ED.l		; 6F ED C4 6D
	clv		; B8
	and ($DC.b,X)		; 21 DC
	ora ($E1.b)		; 12 E1
	bvc -36.b		; 50 DC
	cmp $6D.b		; C5 6D
	clv		; B8
	and ($DD.b,X)		; 21 DD
	ora ($F1.b,X)		; 01 F1
	eor $6CB7EC.l,X		; 5F EC B7 6C
	clv		; B8
	and ($CD.b,X)		; 21 CD
	ora ($F1.b),Y		; 11 F1
	ror $D4DD.w		; 6E DD D4
	adc $10C8.w		; 6D C8 10
	inc $0001.w,X		; FE 01 00
	and $3EE3EF.l,X		; 3F EF E3 3E
	clv		; B8
	jsr $03DD.w		; 20 DD 03
	sbc ($6E.b,X)		; E1 6E
	jmp.w [$5CE5]		; DC E5 5C
	cpy $22.b		; C4 22
	ora $21F0E0.l		; 0F E0 F0 21
	asl $20C1.w		; 0E C1 20
	ldy $54.b,X		; B4 54
	sbc $E0EF.w		; ED EF E0
	.db $62, $FC, $91		; 62 FC 91
	and ($C4.b)		; 32 C4
	and ($0F.b,X)		; 21 0F
	sbc $0D31F0.l,X		; FF F0 31 0D
.ACCU 16
	rep #$20		; C2 20
	ldy $53.b,X		; B4 53
	sbc $D2EF.w		; ED EF D2
	eor ($FB.b)		; 52 FB
	ldx #$31.b		; A2 31
	ldy $52.b,X		; B4 52
	sbc $D3EF.w,X		; FD EF D3
	.db $42, $F9		; 42 F9
	ldy $41.b		; A4 41
	ldy $52.b,X		; B4 52
	cmp $E3EF.w,X		; DD EF E3
	eor ($EA.b),Y		; 51 EA
	lda ($32.b,S),Y		; B3 32
	cpy $21.b		; C4 21
	inc $F2F0.w,X		; FE F0 F2
	jsr $E3FC.w		; 20 FC E3
	ora ($B8.b),Y		; 11 B8
	lsr A		; 4A
	bne  63.b		; D0 3F
	asl $FD.b		; 06 FD
	cpy $E256.w		; CC 56 E2
	cpy $20.b		; C4 20
	inc $03FF.w,X		; FE FF 03
	bpl -20.b		; 10 EC
	ora $03.b,S		; 03 03
	ldy $2F.b,X		; B4 2F
	cmp $25FE.w,X		; DD FE 25
	and $2534A9.l		; 2F A9 34 25
	ldy $1E.b,X		; B4 1E
	dec $44FE.w,X		; DE FE 44
	ora $529C.w,X		; 1D 9C 52
	mvp $0F,$C4		; 44 C4 0F
	sbc $0E2100.l		; EF 00 21 0E
	cpy #$30.b		; C0 30
	and ($B4.b),Y		; 31 B4
	sbc $E1E0.w		; ED E0 E1
	adc ($EB.b,X)		; 61 EB
	sta ($33.b,S),Y		; 93 33
	eor ($C4.b),Y		; 51 C4
	sbc $20F2FF.l,X		; FF FF F2 20
	jsr ($12E3.w,X)		; FC E3 12
	jsr $C2B8.w		; 20 B8 C2
	bpl  21.b		; 10 15
	cpx $74DD.w		; EC DD 74
	sbc $DC.b,S		; E3 DC
	ldy $DE.b,X		; B4 DE
	inc $1F25.w,X		; FE 25 1F
	txs		; 9A
	mvp $1D,$25		; 44 25 1D
	ldy $DF.b,X		; B4 DF
	inc $0C44.w,X		; FE 44 0C
	lda $4452.w		; AD 52 44
	sbc $FFC4.w,X		; FD C4 FF
	beq  49.b		; F0 31
	ora $30C1.w		; 0D C1 30
	and ($FE.b),Y		; 31 FE
	ldy $FF.b,X		; B4 FF
.INDEX 8
	sep #$51		; E2 51
	nop		; EA
	lda ($33.b,S),Y		; B3 33
	bvc -19.b		; 50 ED
	cpy $F0.b		; C4 F0
	sbc ($20.b)		; F2 20
	cpx $12F3.w		; EC F3 12
	and $4FB8FE.l		; 2F FE B8 4F
	asl $DD.b		; 06 DD
	cmp $D374.w,X		; DD 74 D3
	plx		; FA
	ora ($B4.b,X)		; 01 B4
	sbc $AA1E15.l,X		; FF 15 1E AA
	eor ($25.b,S),Y		; 53 25
	ora $B8DF.w,X		; 1D DF B8
	ora $C5BE60.l		; 0F 60 BE C5
	adc $CE3F.w		; 6D 3F CE
	ora ($C4.b),Y		; 11 C4
	beq  34.b		; F0 22
	sbc $21D1.w,X		; FD D1 21
	and ($FF.b,X)		; 21 FF
	beq -76.b		; F0 B4
	cmp ($50.b,S),Y		; D3 50
	phx		; DA
	cpy $24.b		; C4 24
	rti		; 40

	sbc $C8FF.w		; ED FF C8
	cop $0F.b		; 02 0F
	cmp $0EE133.l,X		; DF 33 E1 0E
	beq  46.b		; F0 2E
	ldy $15.b,X		; B4 15
	ora $1524BA.l,X		; 1F BA 24 15
	rol $FEDF.w		; 2E DF FE
	ldy $24.b,X		; B4 24
	asl $619C.w,X		; 1E 9C 61
	bit $0E.b,X		; 34 0E
	cmp $43B40E.l,X		; DF 0E B4 43
	ora $42AD.w		; 0D AD 42
	bit $0E.b,X		; 34 0E
	inc $C8FF.w		; EE FF C8
	jsr $F3FD.w		; 20 FD F3
	jmp $EF20.w		; 4C 20 EF
	bpl   0.b		; 10 00
	clv		; B8
	lsr $D7DD.w,X		; 5E DD D7
	tad		; 5B
	lsr $F3DF.w		; 4E DF F3
	sep #$C4		; E2 C4
	and ($0D.b,X)		; 21 0D
	cmp ($20.b),Y		; D1 20
	jsl $F0F0FF.l		; 22 FF F0 F0
	ldy $42.b,X		; B4 42
	jsr ($5191.w,X)		; FC 91 51
	.db $42, $0D		; 42 0D
	sbc $42B4E1.l		; EF E1 B4 42
	xce		; FB
	sta ($41.b,S),Y		; 93 41
	eor ($ED.b)		; 52 ED
	sbc $41B4E2.l,X		; FF E2 B4 41
	xba		; EB
	ldy $32.b		; A4 32
	eor ($FD.b,X)		; 41 FD
	cpx #$E2.b		; E0 E2
	ldy $41.b,X		; B4 41
	nop		; EA
	ldx $22.b		; A6 22
	eor ($EE.b,X)		; 41 EE
	sbc $41B4D3.l,X		; FF D3 B4 41
	nop		; EA
	ldy $32.b,X		; B4 32
	eor ($FD.b,X)		; 41 FD
	sbc $41B4D3.l,X		; FF D3 B4 41
	nop		; EA
	lda $22.b		; A5 22
	eor ($ED.b)		; 52 ED
	sbc $41B4D3.l,X		; FF D3 B4 41
	nop		; EA
	ldy $41.b		; A4 41
	eor ($FC.b)		; 52 FC
	sbc $21C4D2.l,X		; FF D2 C4 21
	ora $21C1.w		; 0D C1 21
	jsl $E0F00E.l		; 22 0E F0 E0
	iny		; C8
	rol $E4FE.w,X		; 3E FE E4
	rol $FD20.w		; 2E 20 FD
	cop $F0.b		; 02 F0
	cpy $32.b		; C4 32
	asl $31CE.w		; 0E CE 31
	and $0F.b,S		; 23 0F
	sbc $23C4FF.l		; EF FF C4 23
	ora $1322CD.l		; 0F CD 22 13
	and $C40EEE.l		; 2F EE 0E C4
	ora ($1F.b,S),Y		; 13 1F
	jmp.w [$1313]		; DC 13 13
	and $C40FEE.l		; 2F EE 0F C4
	ora $10.b,S		; 03 10
	jmp.w [$22E4]		; DC E4 22
	and ($EE.b,X)		; 21 EE
	sbc $4003B4.l,X		; FF B4 03 40
	dex		; CA
	ldy $63.b		; A4 63
	eor ($EC.b,S),Y		; 53 EC
	cmp $32F0B4.l,X		; DF B4 F0 32
	xce		; FB
	ldx $4465.w		; AE 65 44
	ora $B4CE.w,X		; 1D CE B4
	sbc $9C1D23.l		; EF 23 1D 9C
	eor $45.b		; 45 45
	asl $B4CE.w,X		; 1E CE B4
	inc $1D34.w		; EE 34 1D
	lda #$4536.w		; A9 36 45
	rol $B4BD.w,X		; 3E BD B4
	sbc $AA3D23.l,X		; FF 23 3D AA
	sbc [$44.b],Y		; F7 44
	rti		; 40

	cpy $FFB4.w		; CC B4 FF
	ora ($31.b,X)		; 01 31
	dex		; CA
	cmp $73.b,S		; C3 73
	eor ($FC.b)		; 52 FC
	ldy $CF.b,X		; B4 CF
	cpx #$23.b		; E0 23
	xce		; FB
	lda $1F3465.l,X		; BF 65 34 1F
	ldy $CC.b,X		; B4 CC
	inc $3D03.w		; EE 03 3D
	ldy $3346.w,X		; BC 46 33
	and ($B4.b),Y		; 31 B4
	wai		; CB
	inc $3FE1.w		; EE E1 3F
	ldx $2356.w,Y		; BE 56 23
	bmi -76.b		; 30 B4
	lda $CF0D.w		; AD 0D CF
	asl $63F7.w,X		; 1E F7 63
	ora ($FC.b),Y		; 11 FC
	clv		; B8
	and ($FE.b,X)		; 21 FE
	jsr $4003.w		; 20 03 40
	sbc $F20D.w		; ED 0D F2
	clv		; B8
	ora $260F00.l,X		; 1F 00 0F 26
	asl $EDFE.w		; 0E FE ED
	jsl $01F0B8.l		; 22 B8 F0 01
	sbc ($43.b,X)		; E1 43
	sbc $4FEFFC.l,X		; FF FC EF 4F
	clv		; B8
	ora $60012F.l		; 0F 2F 01 60
	bne -18.b		; D0 EE
	cmp ($2F.b)		; D2 2F
	clv		; B8
	sbc ($1F.b),Y		; F1 1F
	pea $D031.w		; F4 31 D0
	dec $2FF1.w,X		; DE F1 2F
	clv		; B8
	sbc ($1F.b),Y		; F1 1F
	cop $40.b		; 02 40
	inc $00EE.w,X		; FE EE 00
	rol $02A8.w		; 2E A8 02
	and $0B3123.l		; 2F 23 31 0B
	lda $F021.w,X		; BD 21 F0
	tay		; A8
	ora ($F5.b,X)		; 01 F5
	bvc   0.b		; 50 00
	cmp $3ED2.w,Y		; D9 D2 3E
	sbc ($B8.b)		; F2 B8
	ora $EE1015.l		; 0F 15 10 EE
	sbc $0DF4.w,X		; FD F4 0D
	ora ($B8.b)		; 12 B8
	sbc $E02E24.l,X		; FF 24 2E E0
	cmp $02FF03.l		; CF 03 FF 02
	clv		; B8
	beq   5.b		; F0 05
	ora $01D0FE.l,X		; 1F FE D0 01
	asl $A812.w		; 0E 12 A8
	ora $5114.w,X		; 1D 14 51
	xba		; EB
	dec $FF02.w		; CE 02 FF
	ora $A8.b,S		; 03 A8
	rol $53F2.w		; 2E F2 53
	ora $E2CC.w		; 0D CC E2
	asl $A8F3.w,X		; 1E F3 A8
	eor $3113E0.l		; 4F E0 13 31
	xba		; EB
	cmp ($0F.b),Y		; D1 0F
	sbc $31E2A4.l,X		; FF A4 E2 31
	inc $55F4.w,X		; FE F4 55
	eor ($FE.b)		; 52 FE
	cmp $D198.w,X		; DD 98 D1
	eor $22.b,S		; 43 22
	phx		; DA
	sbc ($51.b,S),Y		; F3 51
	and ($FB.b),Y		; 31 FB
	tya		; 98
	bcc  31.b		; 90 1F
	ora ($41.b)		; 12 41
	sbc $2430FE.l		; EF FE 30 24
	tya		; 98
	sbc $FE12CD.l,X		; FF CD 12 FE
	sbc $42.b,S		; E3 42
	cmp $9802.w,X		; DD 02 98
	sbc $4016.w,X		; FD 16 40
	phx		; DA
	cpx #$30.b		; E0 30
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	tya		; 98
	cpy $2F03.w		; CC 03 2F
	ora ($31.b),Y		; 11 31
	sbc $8803BE.l,X		; FF BE 03 88
	lda ($22.b)		; B2 22
	sbc $2533C3.l,X		; FF C3 33 25
	tsb $98DC.w		; 0C DC 98
	sbc $32F3.w		; ED F3 32
	sbc $2044D0.l,X		; FF D0 44 20
	dec $EE98.w,X		; DE 98 EE
	inc $3301.w,X		; FE 01 33
	ora ($AD.b),Y		; 11 AD
	and $41.b,S		; 23 41
	tya		; 98
	bmi -53.b		; 30 CB
	lda ($1F.b),Y		; B1 1F
	and $3F.b,S		; 23 3F
	inc $A5F0.w,X		; FE F0 A5
	ora ($33.b,X)		; 01 33
	and ($FF.b),Y		; 31 FF
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	lda $F6E7.w,X		; BD E7 F6
	bpl  -4.b		; 10 FC
	inc $3402.w		; EE 02 34
	cpy $1F.b		; C4 1F
	ora $5FCE.w		; 0D CE 5F
	eor ($00.b),Y		; 51 00
	cmp $11C4E0.l,X		; DF E0 C4 11
	and ($F0.b)		; 32 F0
	jmp.w [$24D2]		; DC D2 24
	bmi  14.b		; 30 0E
	iny		; C8
	cpx $E3.b		; E4 E3
	ora ($1D.b,X)		; 01 1D
	ora $33F1.w		; 0D F1 33
	brk $C4.b		; 00 C4
	bpl -20.b		; 10 EC
	sbc $3322.w,X		; FD 22 33
	brk $CB.b		; 00 CB
	cmp ($C4.b)		; D2 C4
	and $21.b		; 25 21
	asl $D2CF.w		; 0E CF D2
	bit $30.b		; 24 30
	xba		; EB
	cpy $CE.b		; C4 CE
	rti		; 40

	adc ($1F.b),Y		; 71 1F
	cmp $33EE.w,X		; DD EE 33
	and ($C4.b)		; 32 C4
	sbc $E5CE.w,X		; FD CE E5
	ora $10.b		; 05 10
	jsr ($02FE.w,X)		; FC FE 02
	clv		; B8
	and $27EEEA.l		; 2F EA EE 27
	lsr $EF1B.w,X		; 5E 1B EF
	lda [$C4.b],Y		; B7 C4
	cmp ($13.b,S),Y		; D3 13
	and $23DEFC.l,X		; 3F FC DE 23
	and ($1E.b)		; 32 1E
	cpy $ED.b		; C4 ED
	sbc $ED2232.l,X		; FF 32 22 ED
	dec $3213.w,X		; DE 13 32
	cpy $0F.b		; C4 0F
	sbc $320F.w		; ED 0F 32
	ora ($ED.b),Y		; 11 ED
	dec $C851.w,X		; DE 51 C8
	bit $F00F.w,X		; 3C 0F F0
	and $D0F03F.l,X		; 3F 3F F0 D0
	brk $C0.b		; 00 C0
	brk $55.b		; 00 55
	.db $42, $FD		; 42 FD
	cmp $4413.w,X		; DD 13 44
	ora $DFC4.w		; 0D C4 DF
	rts		; 60

	adc $F1CFFF.l		; 6F FF CF F1
	eor ($2F.b,X)		; 41 2F
	cpy $DD.b		; C4 DD
	cmp ($41.b),Y		; D1 41
	eor $E3C1FE.l,X		; 5F FE C1 E3
	ora ($C4.b)		; 12 C4
	ora $14D4DD.l,X		; 1F DD D4 14
	and $E4D10D.l		; 2F 0D D1 E4
	cpy $02.b		; C4 02
	asl $F5DD.w,X		; 1E DD F5
	inc $F0.b,X		; F6 F0
	sbc $C4E0.w,X		; FD E0 C4
	ora $12.b,S		; 03 12
	inc $15DD.w,X		; FE DD 15
	tsb $FF.b		; 04 FF
	sbc $0FC4.w,X		; FD C4 0F
	and ($21.b,X)		; 21 21
	inc $40DE.w		; EE DE 40
	bvc -16.b		; 50 F0
	cpy $EE.b		; C4 EE
	ora $EE2030.l		; 0F 30 20 EE
	bne  95.b		; D0 5F
	eor $EF21C0.l		; 4F C0 21 EF
	cpx #$11.b		; E0 11
	jsr $C1FC.w		; 20 FC C1
	tsb $C0.b		; 04 C0
	and ($1E.b,X)		; 21 1E
	sbc $0E1101.l,X		; FF 01 11 0E
	cmp $C411.w		; CD 11 C4
	rol $E0F0.w,X		; 3E F0 E0
	ora ($10.b,X)		; 01 10
	ora $B414EE.l		; 0F EE 14 B4
	ora $DF.b		; 05 DF
	cpx $4110.w		; EC 10 41
	ora $B4C5DC.l		; 0F DC C5 B4
	mvp $FD,$3D		; 44 3D FD
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	bpl  -4.b		; 10 FC
	ldx $40C4.w,Y		; BE C4 40
	eor $00EF0F.l		; 4F 0F EF 00
	bmi  15.b		; 30 0F
	inc $F4C4.w		; EE C4 F4
	tsb $F0.b		; 04 F0
	inc $11F0.w,X		; FE F0 11
	bpl  -2.b		; 10 FE
	clv		; B8
	sbc $6B.b,X		; F5 6B
	dec A		; 3A
	bpl -44.b		; 10 D4
	cpx $0F.b		; E4 0F
	sbc $CDB4.w,X		; FD B4 CD
	ora $24.b,X		; 15 24
	sbc $331DFD.l		; EF FD 1D 33
	ora ($B4.b,X)		; 01 B4
	jmp.w [$52C2]		; DC C2 52
	rol $C2F0.w,X		; 3E F0 C2
	cmp ($40.b)		; D2 40
	ldy $0D.b,X		; B4 0D
	cpy $4143.w		; CC 43 41
	sbc $321EFD.l,X		; FF FD 1E 32
	ldy $10.b,X		; B4 10
	stp		; DB
	dec $06.b,X		; D6 06
	asl $FF1D.w		; 0E 1D FF
	sbc ($B4.b,S),Y		; F3 B4
	and ($0C.b,X)		; 21 0C
	lda $F05F70.l		; AF 70 5F F0
	bne -16.b		; D0 F0
	ldy $22.b,X		; B4 22
	ora $2334BB.l,X		; 1F BB 34 23
	sbc $C40E0E.l		; EF 0E 0E C4
	ora ($01.b),Y		; 11 01
	sbc $F4E4.w,X		; FD E4 F4
	sbc $C4000F.l,X		; FF 0F 00 C4
	sbc ($10.b),Y		; F1 10
	asl $31C1.w,X		; 1E C1 31
	rol $E100.w		; 2E 00 E1
	cpy $F1.b		; C4 F1
	bpl  31.b		; 10 1F
	cmp $4F5F.w,X		; DD 5F 4F
	beq -16.b		; F0 F0
	ldy $F0.b,X		; B4 F0
	and ($10.b,X)		; 21 10
	cmp #$2335.w		; C9 35 23
	inc $B40D.w		; EE 0D B4
	rol $1031.w		; 2E 31 10
	dex		; CA
	ora $33.b,X		; 15 33
	sbc $1FB4FD.l		; EF FD B4 1F
	and ($20.b,X)		; 21 20
	cmp #$4233.w		; C9 33 42
	sbc $1FC4FD.l,X		; FF FD C4 1F
	ora ($10.b),Y		; 11 10
	cpx CGADD.w		; EC 21 21
	beq  14.b		; F0 0E
	cpy $1F.b		; C4 1F
	ora ($10.b),Y		; 11 10
	cpx $3120.w		; EC 20 31
	beq  15.b		; F0 0F
	cpy $0F.b		; C4 0F
	ora ($10.b),Y		; 11 10
	cmp $403F.w,X		; DD 3F 40
	beq -16.b		; F0 F0
	cpy $0F.b		; C4 0F
	bpl  32.b		; 10 20
	cmp $3F4F.w,X		; DD 4F 3F
	sbc ($E2.b),Y		; F1 E2
	clv		; B8
	lda ($3E.b,X)		; A1 3E
	tsa		; 3B
	ldx $6D.b,Y		; B6 6D
	tas		; 1B
	tsb $B5.b		; 04 B5
	cpy $F0.b		; C4 F0
	bpl  30.b		; 10 1E
	cpy $F4.b		; C4 F4
	sbc $C4010F.l,X		; FF 0F 01 C4
	sbc ($01.b),Y		; F1 01
	jsr ($03F4.w,X)		; FC F4 03
	inc $2F1E.w,X		; FE 1E 2F
	cpy $02.b		; C4 02
	sbc ($DC.b),Y		; F1 DC
	eor $E1D140.l,X		; 5F 40 D1 E1
	brk $C4.b		; 00 C4
	jsr $C50D.w		; 20 0D C5
	pea $1D0E.w		; F4 0E 1D
	bpl   2.b		; 10 02
	cpy $00.b		; C4 00
	jmp.w [$4F5F]		; DC 5F 4F
	sbc ($D1.b),Y		; F1 D1
	sbc ($20.b),Y		; F1 20
	cpy #$C01D.w		; C0 1D C0
	cop $10.b		; 02 10
	ora $10F10F.l,X		; 1F 0F F1 10
	cpy #$F2B0.w		; C0 B0 F2
	jsr $0010.w		; 20 10 00
	sbc ($01.b),Y		; F1 01
	cmp $11C0.w,X		; DD C0 11
	and ($F0.b,X)		; 21 F0
	ora ($01.b,X)		; 01 01
	bpl -36.b		; 10 DC
	ora ($C0.b),Y		; 11 C0
	and ($00.b),Y		; 31 00
	sbc ($01.b),Y		; F1 01
	bpl -37.b		; 10 DB
	ora ($31.b),Y		; 11 31
	cpy $E1.b		; C4 E1
	sbc ($F1.b)		; F2 F1
	asl $51DE.w,X		; 1E DE 51
	rol $C4E1.w		; 2E E1 C4
	sbc ($F1.b)		; F2 F1
	ora $2E41C0.l		; 0F C0 41 2E
	cpx #$C402.w		; E0 02 C4
	brk $0E.b		; 00 0E
	cmp $13.b,S		; C3 13
	ora $110E.w,X		; 1D 0E 11
	ora ($C4.b),Y		; 11 C4
	sbc $22E4.w		; ED E4 22
	inc $11F0.w,X		; FE F0 11
	ora $50C4DC.l,X		; 1F DC C4 50
	eor $02E2E0.l		; 4F E0 E2 02
	ora $F5B5.w		; 0D B5 F5
	cpy $0D.b		; C4 0D
	asl $1220.w		; 0E 20 12
	stp		; DB
	bmi  65.b		; 30 41
	cpx #$D1C4.w		; E0 C4 D1
	ora ($1E.b),Y		; 11 1E
	lda ($04.b,S),Y		; B3 04
	asl $100D.w,X		; 1E 0D 10
	cpy $22.b		; C4 22
	cpy $414F.w		; CC 4F 41
	cpx #$11D1.w		; E0 D1 11
	ora $D3C4.w,X		; 1D C4 D3
	ora $0F.b,S		; 03 0F
	asl $1F01.w		; 0E 01 1F
	cmp $F3.b,S		; C3 F3
	cpy #$2F20.w		; C0 20 2F
	brk $11.b		; 00 11
	dec $30E1.w		; CE E1 30
	and $1201C0.l		; 2F C0 01 12
	jmp.w [$31F0]		; DC F0 31
	bpl -16.b		; 10 F0
	ora ($C4.b)		; 12 C4
	cmp $3030.w,X		; DD 30 30
	sbc $DE11F1.l,X		; FF F1 11 DE
	jsr $43B0.w		; 20 B0 43
	jsr $21F1.w		; 20 F1 21
	stz $41E2.w,X		; 9E E2 41
	and $0A12B4.l		; 2F B4 12 0A
	and $E353.w		; 2D 53 E3
	cpy #$F92F.w		; C0 2F F9
	cpy #$11FF.w		; C0 FF 11
	ora ($01.b,X)		; 01 01
	bpl -64.b		; 10 C0
	sbc ($20.b),Y		; F1 20
	bcs  47.b		; B0 2F
	ora ($1B.b)		; 12 1B
	cpx $0313.w		; EC 13 03
	sbc ($21.b),Y		; F1 21
	ldy $DE.b,X		; B4 DE
	tsb $10.b		; 04 10
	bit $0F11.w		; 2C 11 0F
	ldy $03.b		; A4 03
	ldy $00.b,X		; B4 00
	ora $410A1F.l		; 0F 1F 0A 41
	jsr $F100.w		; 20 00 F1
	ldy $0E.b,X		; B4 0E
	lda $F3.b,X		; B5 F3
	brk $0F.b		; 00 0F
	and $B422DD.l		; 2F DD 22 B4
	jsr $011F.w		; 20 1F 01
	jsr ($420E.w,X)		; FC 0E 42
	sbc ($D2.b,S),Y		; F3 D2
	bcs  32.b		; B0 20
	lda $2121D0.l		; AF D0 21 21
	and ($ED.b)		; 32 ED
	lda $3E2FB4.l,X		; BF B4 2F 3E
	jsr $2FEB.w		; 20 EB 2F
	jsl $B01010.l		; 22 10 10 B0
	tas		; 1B
	cpx $12F1.w		; EC F1 12
	bit $1C.b,X		; 34 1C
	xce		; FB
	sbc ($B4.b),Y		; F1 B4
	sbc ($02.b)		; F2 02
	xce		; FB
	trb $0440.w		; 1C 40 04
	sbc $FD.b,S		; E3 FD
	ldy $EE.b,X		; B4 EE
	bmi   3.b		; 30 03
	pea $C0EE.w		; F4 EE C0
	and $F4B422.l		; 2F 22 B4 F4
	sbc $10D0.w		; ED D0 10
	and ($04.b,X)		; 21 04
	inc $B4C0.w		; EE C0 B4
	bpl  33.b		; 10 21
	tsb $EE.b		; 04 EE
	cpy #$1210.w		; C0 10 12
	tsb $B4.b		; 04 B4
	sbc $2FEE.w		; ED EE 2F
	jsl $FDED04.l		; 22 04 ED FD
	rol $22B4.w,X		; 3E B4 22
	tsb $ED.b		; 04 ED
	phd		; 0B
	lsr $0422.w		; 4E 22 04
	cpx $1BB0.w		; EC B0 1B
	inc $34F1.w,X		; FE F1 34
	rol $EFFD.w		; 2E FD EF
	ora ($A4.b,X)		; 01 A4
	ror $95B0.w		; 6E B0 95
	ldy $34.b,X		; B4 34
	bit $0EBE.w,X		; 3C BE 0E
	ldy $22.b		; A4 22
	eor $CD.b		; 45 CD
	jsr ($341E.w,X)		; FC 1E 34
	eor $A4DF.w,X		; 5D DF A4
	cmp ($E3.b),Y		; D1 E3
	asl $DE.b,X		; 16 DE
	tsb $412D.w		; 0C 2D 41
	tad		; 5B
	ldy #$DE0F.w		; A0 0F DE
	cmp ($17.b,S),Y		; D3 17
	sbc $32DDEC.l,X		; FF EC DD 32
	ldy #$0B7F.w		; A0 7F 0B
	cpx $46F2.w		; EC F2 46
	sbc ($AF.b),Y		; F1 AF
	lda ($A4.b),Y		; B1 A4
	ora $DE.b		; 05 DE
	phd		; 0B
	rol $5A50.w		; 2E 50 5A
	ora $A00F.w,X		; 1D 0F A0
	sbc ($33.b),Y		; F1 33
	sbc ($C0.b),Y		; F1 C0
.INDEX 16
	rep #$14		; C2 14
	ora $D0A0ED.l		; 0F ED A0 D0
	ora ($3E.b,S),Y		; 13 3E
	phd		; 0B
	sbc $4022.w,X		; FD 22 40
	inc $EEA0.w,X		; FE A0 EE
	ora ($21.b),Y		; 11 21
	cmp $22F4C0.l,X		; DF C0 F4 22
	inc $D2A4.w		; EE A4 D2
	trb $11.b		; 14 11
	jmp.w [$221D]		; DC 1D 22
	and ($FD.b)		; 32 FD
	sty $CC.b,X		; 94 CC
	ora ($53.b),Y		; 11 53
	eor $12FFBC.l		; 4F BC FF 12
	and ($84.b)		; 32 84
	tsa		; 3B
	cpy $01FF.w		; CC FF 01
	eor $3F.b,S		; 43 3F
	jsr ($94FA.w,X)		; FC FA 94
	ora $FE2131.l,X		; 1F 31 21 FE
	jsr ($2310.w,X)		; FC 10 23
	ora ($84.b,X)		; 01 84
	sbc $2B1B.w,Y		; F9 1B 2B
	eor $55.b,S		; 43 55
	dec $DDDE.w		; CE DE DD
	sty $34.b		; 84 34
	eor ($0D.b),Y		; 51 0D
	inc $31CF.w		; EE CF 31
	and $E0.b		; 25 E0
	sty $D2.b		; 84 D2
	sbc $23C20E.l		; EF 0E C2 23
	bmi  63.b		; 30 3F
	ldy $E488.w,X		; BC 88 E4
	and $EF.b,X		; 35 EF
	cmp $33B3C3.l,X		; DF C3 B3 33
	cop $98.b		; 02 98
	sbc $0FE000.l,X		; FF 00 E0 0F
	jsr $D522.w		; 20 22 D5
	lda $4EFC98.l,X		; BF 98 FC 4E
	and ($03.b,S),Y		; 33 03
	bne -35.b		; D0 DD
	asl $9821.w,X		; 1E 21 98
	bmi  77.b		; 30 4D
	ora $3F0FEE.l		; 0F EE 0F 3F
	ora ($11.b),Y		; 11 11
	dey		; 88
	trb $ED4A.w		; 1C 4A ED
.ACCU 8
	sep #$2F		; E2 2F
	adc $982B5D.l		; 6F 5D 2B 98
	rol $1D0F.w		; 2E 0F 1D
	rol $2F01.w		; 2E 01 2F
	and ($F1.b)		; 32 F1
	dey		; 88
	dec $FCCD.w		; CE CD FC
	jmp $316360.l		; 5C 60 63 31
	cmp $FDC098.l,X		; DF 98 C0 FD
	sbc ($14.b),Y		; F1 14
	ora ($02.b),Y		; 11 02
	beq -16.b		; F0 F0
	ldy $FF.b		; A4 FF
	cpx $0FFE.w		; EC FE 0F
	cop $04.b		; 02 04
	and $E09821.l,X		; 3F 21 98 E0
	cpx #$F3F1.w		; E0 F1 F3
	sbc ($01.b)		; F2 01
	ora ($1E.b,X)		; 01 1E
	dey		; 88
	sbc $CFF0.w,X		; FD F0 CF
	sbc ($6E.b),Y		; F1 6E
	.db $42, $01		; 42 01
	sbc ($88.b),Y		; F1 88
	inc $96B4.w,X		; FE B4 96
	lda $D1.b		; A5 D1
	rol $414B.w,X		; 3E 4B 41
	dey		; 88
	cop $10.b		; 02 10
	jsr ($0DDE.w,X)		; FC DE 0D
	lsr $F334.w		; 4E 34 F3
	dey		; 88
	sbc ($F0.b),Y		; F1 F0
	ora $F2F0FE.l		; 0F FE F0 F2
	cmp $D2.b,X		; D5 D2
	stz $EE.b,X		; 74 EE
	eor $55.b,X		; 55 55
	.db $62, $51, $3B		; 62 51 3B
	dec $78CE.w,X		; DE CE 78
	inc $3E11.w		; EE 11 3E
	ora ($D4.b,S),Y		; 13 D4
	sep #$C1		; E2 C1
	cpy $74.b		; C4 74
	bne -111.b		; D0 91
	trb $F050.w		; 1C 50 F0
	ldy $F220.w		; AC 20 F2
	sty $F1.b		; 84 F1
	and ($31.b,X)		; 21 31
	ora $ED1E.w		; 0D 1E ED
	ora $028410.l		; 0F 10 84 02
	sbc ($01.b)		; F2 01
	ora $020F.w		; 0D 0F 02
	pei ($22.b)		; D4 22
	stz $12.b,X		; 74 12
	sbc ($D1.b)		; F2 D1
	inc A		; 1A
	jsr $EDA0.w		; 20 A0 ED
	ora $3F84.w,X		; 1D 84 3F
	sbc ($32.b,X)		; E1 32
	jsr $D0F4.w		; 20 F4 D0
	cmp $EF75E1.l,X		; DF E1 75 EF
	cmp ($3F.b,S),Y		; D3 3F
	bmi -12.b		; 30 F4
	sbc $0010.w,X		; FD 10 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	inc A		; 1A
	jsl $00B700.l		; 22 00 B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $23.b		; 24 23
	adc ($EE.b,S),Y		; 73 EE
	ora $1C.b,S		; 03 1C
	plb		; AB
	asl $44C2.w		; 0E C2 44
	ora ($D2.b),Y		; 11 D2
	tsb $F1FD.w		; 0C FD F1
	sbc $800FF0.l,X		; FF F0 0F 80
	brk $00.b		; 00 00
	sbc $41F2FF.l,X		; FF FF F2 41
	cmp $8011.w,X		; DD 11 80
	jmp.w [$FDE0]		; DC E0 FD
	beq  -2.b		; F0 FE
	cpx #$FF0F.w		; E0 0F FF
	rts		; 60

	tax		; AA
	ldx #$CEDA.w		; A2 DA CE
	ora ($EF.b,S),Y		; 13 EF
	brk $DB.b		; 00 DB
	stz $0C.b		; 64 0C
	cpx $0E.b		; E4 0E
	tsb $21.b		; 04 21
	sbc ($0B.b)		; F2 0B
	jsr $DF74.w		; 20 74 DF
	eor ($DF.b,X)		; 41 DF
	and ($DE.b,S),Y		; 33 DE
	.db $42, $DE		; 42 DE
	and $78.b,X		; 35 78
	dex		; CA
	bit $2D.b		; 24 2D
	cmp ($31.b),Y		; D1 31
	sbc ($2F.b,X)		; E1 2F
	jmp.w [$1674]		; DC 74 16
	ora $61F0B1.l,X		; 1F B1 F0 61
	cmp $84152E.l,X		; DF 2E 15 84
	asl $10D1.w		; 0E D1 10
	cmp ($60.b)		; D2 60
	lda $BD55.w,X		; BD 55 BD
	sty $37.b		; 84 37
	jsr ($FD01.w,X)		; FC 01 FD
	ora ($FF.b,X)		; 01 FF
	and ($10.b,X)		; 21 10
	bra  51.b		; 80 33
	trb $0EBE.w		; 1C BE 0E
	tyx		; BB
	and $0C.b,S		; 23 0C
	trb $94.b		; 14 94
	ora $F30CF2.l		; 0F F2 0C F3
	and $4ED3.w,X		; 3D D3 4E
.INDEX 16
	rep #$90		; C2 90
	and ($DD.b),Y		; 31 DD
	jsl $EF22EE.l		; 22 EE 22 EF
	eor $EF.b,S		; 43 EF
	bcc  51.b		; 90 33
	cmp $DC43.w,X		; DD 43 DC
	eor $EA.b		; 45 EA
	rol $1D.b		; 26 1D
	bcc -12.b		; 90 F4
	brk $33.b		; 00 33
	and $2F23.w		; 2D 23 2F
	cpx #$9031.w		; E0 31 90
	cpx #$0F22.w		; E0 22 0F
	ora $22021F.l,X		; 1F 1F 02 22
	bcs -112.b		; B0 90
	rol $62D0.w		; 2E D0 62
	cmp ($40.b),Y		; D1 40
	cmp $A0DD51.l,X		; DF 51 DD A0
	and ($FE.b,S),Y		; 33 FE
	sbc ($FE.b),Y		; F1 FE
	bpl -35.b		; 10 DD
	bit $ED.b,X		; 34 ED
	ldy #$FC13.w		; A0 13 FC
	sbc ($1F.b)		; F2 1F
	sbc ($00.b),Y		; F1 00
	ora ($0F.b)		; 12 0F
	bcc  18.b		; 90 12
	ora $ED01.w		; 0D 01 ED
	ora ($DC.b)		; 12 DC
	ora $FB.b,X		; 15 FB
	bcc  36.b		; 90 24
	tas		; 1B
	dec $2B.b,X		; D6 2B
	rep #$4F		; C2 4F
	bne  48.b		; D0 30
	bcc -33.b		; 90 DF
	rti		; 40

	cmp $25DF62.l,X		; DF 62 DF 25
	cmp $A024.w,X		; DD 24 A0
	tsb $0C14.w		; 0C 14 0C
	pea $F02D.w		; F4 2D F0
	bpl -14.b		; 10 F2
	bcc  18.b		; 90 12
	sbc ($3E.b)		; F2 3E
	inc $051F.w		; EE 1F 05
	.db $42, $03		; 42 03
	ldy $1D.b		; A4 1D
	sbc ($0D.b),Y		; F1 0D
	sbc ($30.b,S),Y		; F3 30
	cpx $30.b		; E4 30
	dec $1DA8.w		; CE A8 1D
	sbc $3D.b,X		; F5 3D
	tsb $1E.b		; 04 1E
	cpy #$C3FD.w		; C0 FD C3
	clv		; B8
	rti		; 40

	sbc ($20.b),Y		; F1 20
	cmp ($0E.b),Y		; D1 0E
	cpy #$1032.w		; C0 32 10
	ldy $33.b,X		; B4 33
	bpl  51.b		; 10 33
	stp		; DB
	dec $33E0.w		; CE E0 33
	and ($B8.b),Y		; 31 B8
	sbc ($1C.b,S),Y		; F3 1C
	cpy #$3120.w		; C0 20 31
	bpl  -1.b		; 10 FF
	sbc $B8.b,X		; F5 B8
	sbc #$F2.b		; E9 F2
	and ($02.b),Y		; 31 02
	ora $AC5ED0.l,X		; 1F D0 5E AC
	cpy $E0.b		; C4 E0
	bpl  19.b		; 10 13
	ora $CE0D03.l,X		; 1F 03 0D CE
	ora ($C8.b),Y		; 11 C8
	sbc ($0F.b)		; F2 0F
.ACCU 8
	sep #$2C		; E2 2C
	cmp ($23.b),Y		; D1 23
	sbc ($10.b,X)		; E1 10
	iny		; C8
	inc $DE3F.w,X		; FE 3F DE
	trb $1E.b		; 14 1E
	and $C8132C.l		; 2F 2C 13 C8
	jmp.w [$5E02]		; DC 02 5E
	sbc ($1E.b)		; F2 1E
	pei ($0C.b)		; D4 0C
	cpx #$52C8.w		; E0 C8 52
	cmp ($F2.b)		; D2 F2
	cmp ($3C.b,X)		; C1 3C
	bne  53.b		; D0 35
	cmp ($C8.b,X)		; C1 C8
	bpl  -2.b		; 10 FE
	rol $35ED.w,X		; 3E ED 35
	cpx #$EE02.w		; E0 02 EE
	cpy $20.b		; C4 20
	stp		; DB
	cmp ($20.b,S),Y		; D3 20
	ora ($20.b)		; 12 20
	bpl -21.b		; 10 EB
	cpy $C2.b		; C4 C2
	and ($11.b,X)		; 21 11
	bmi  17.b		; 30 11
	jmp.w [$20B2]		; DC B2 20
	cpy $21.b		; C4 21
	bmi   2.b		; 30 02
	cmp $30B1.w,X		; DD B1 30
	ora ($30.b),Y		; 11 30
	cpy $02.b		; C4 02
	sbc $30B0.w		; ED B0 30
	ora ($21.b),Y		; 11 21
	cop $FC.b		; 02 FC
	iny		; C8
	sbc $2D.b,X		; F5 2D
	and $DEE32F.l		; 2F 2F E3 DE
	cpx $4C.b		; E4 4C
	iny		; C8
	ora ($00.b),Y		; 11 00
	cpx $CE.b		; E4 CE
	cpx $4C.b		; E4 4C
	ora ($01.b),Y		; 11 01
	iny		; C8
	cmp $CE.b		; C5 CE
	sbc ($6B.b)		; F2 6B
	ora ($00.b),Y		; 11 00
	sbc $ED.b,S		; E3 ED
	cpy $B0.b		; C4 B0
	and $F32111.l,X		; 3F 11 21 F3
	jsr ($30C0.w,X)		; FC C0 30
	cpy $01.b		; C4 01
	and ($F2.b,X)		; 21 F2
	sbc $4FB1.w,X		; FD B1 4F
	cop $20.b		; 02 20
	cpy $F2.b		; C4 F2
	sbc $4FB1.w,X		; FD B1 4F
	ora ($20.b),Y		; 11 20
	sbc ($FC.b)		; F2 FC
	cpy $C1.b		; C4 C1
	eor $F21012.l		; 4F 12 10 F2
	cpx $4FC2.w		; EC C2 4F
	cpy $12.b		; C4 12
	and $C3ECF2.l		; 2F F2 EC C3
	and $C41F22.l,X		; 3F 22 1F C4
	sbc ($DC.b)		; F2 DC
	cmp ($4F.b)		; D2 4F
	and $1F.b,S		; 23 1F
	sbc ($DB.b),Y		; F1 DB
	cpy $E2.b		; C4 E2
	eor $F11F32.l		; 4F 32 1F F1
	stp		; DB
	sep #$4F		; E2 4F
	cpy $33.b		; C4 33
	ora $E2DBF1.l		; 0F F1 DB E2
	lsr $0F43.w		; 4E 43 0F
	cpy $F1.b		; C4 F1
	stp		; DB
	sbc ($5E.b,X)		; E1 5E
	bit $0F.b,X		; 34 0F
	sbc ($EA.b),Y		; F1 EA
	cpy $F0.b		; C4 F0
	eor $E10025.l		; 4F 25 00 E1
	plx		; FA
	sbc $05C441.l		; EF 41 C4 05
	bpl  -1.b		; 10 FF
	tas		; 1B
	dec $E433.w,X		; DE 33 E4
	jsr $0FC4.w		; 20 C4 0F
	ora $05CE.w,X		; 1D CE 05
	sep #$40		; E2 40
	asl $C41F.w,X		; 1E 1F C4
	ldx $10E4.w,Y		; BE E4 10
	eor ($1F.b,X)		; 41 1F
	sbc ($CD.b),Y		; F1 CD
	cmp ($C4.b)		; D2 C4
	lsr $0133.w		; 4E 33 01
	sbc ($EC.b,X)		; E1 EC
	inc $0450.w		; EE 50 04
	cpy $11.b		; C4 11
	beq  12.b		; F0 0C
	cmp $F323.w,X		; DD 23 F3
	and ($1F.b,X)		; 21 1F
	clv		; B8
	and $F6E1.w		; 2D E1 F6
	jsr $0FF1.w		; 20 F1 0F
	cpy #$C40F.w		; C0 0F C4
	sbc $31E3.w		; ED E3 31
	ora ($2F.b)		; 12 2F
	cpx #$EDEE.w		; E0 EE ED
	iny		; C8
	eor ($C1.b)		; 52 C1
	ora $F02FEF.l,X		; 1F EF 2F F0
	ora $3C.b,S		; 03 3C
	iny		; C8
	bpl  15.b		; 10 0F
	cmp ($F0.b,S),Y		; D3 F0
	ora $10DF15.l		; 0F 15 DF 10
	ldy $0C.b,X		; B4 0C
	cpx #$DCDF.w		; E0 DF DC
	ror $F1.b		; 66 F1
	jsl $1FC4EC.l		; 22 EC C4 1F
	sbc $0140E0.l,X		; FF E0 40 01
	ora ($E0.b),Y		; 11 E0
	ora $B5FCB4.l		; 0F B4 FC B5
	eor $E13013.l		; 4F 13 30 E1
	inc $C4DB.w,X		; FE DB C4
	sbc $10.b,S		; E3 10
	ora ($10.b)		; 12 10
	sbc ($EF.b),Y		; F1 EF
	jsr ($C4F4.w,X)		; FC F4 C4
	jsr $1F12.w		; 20 12 1F
	beq  -1.b		; F0 FF
	sbc $10F5.w		; ED F5 10
	cpy $12.b		; C4 12
	ora $FEEFF0.l,X		; 1F F0 EF FE
	sbc $2F.b		; E5 2F
	ora ($C4.b),Y		; 11 C4
	bpl -16.b		; 10 F0
	sbc $3FE40D.l		; EF 0D E4 3F
	ora ($1F.b),Y		; 11 1F
	iny		; C8
	bpl -16.b		; 10 F0
	asl $3C03.w,X		; 1E 03 3C
	sbc ($1D.b)		; F2 1D
	ora ($B8.b,X)		; 01 B8
	trb $B022.w		; 1C 22 B0
	stz $BC.b		; 64 BC
	rts		; 60

	bcs  48.b		; B0 30
	iny		; C8
	sbc ($2C.b,X)		; E1 2C
	cop $5B.b		; 02 5B
	pea $02FD.w		; F4 FD 02
	trb $30C8.w		; 1C C8 30
	bne  51.b		; D0 33
	cpy #$E03E.w		; C0 3E E0
	and $0DC8D3.l,X		; 3F D3 C8 0D
	ora $3D.b,S		; 03 3D
	cpx $EE.b		; E4 EE
	cop $1C.b		; 02 1C
	and ($C8.b),Y		; 31 C8
	cmp $4EBF44.l		; CF 44 BF 4E
	cpx #$E23F.w		; E0 3F E2
	trb $F3C8.w		; 1C C8 F3
	lsr $0DD3.w		; 4E D3 0D
	cop $1D.b		; 02 1D
	ora ($CD.b,S),Y		; 13 CD
	cpy $F3.b		; C4 F3
	rol $0E12.w,X		; 3E 12 0E
	cop $FF.b		; 02 FF
	ora ($CC.b),Y		; 11 CC
	cpy $24.b		; C4 24
	beq  33.b		; F0 21
	sbc $1FF010.l,X		; FF 10 F0 1F
	dec $32C8.w,X		; DE C8 32
	bne  16.b		; D0 10
	cpx #$F110.w		; E0 10 F1
	bpl -49.b		; 10 CF
	cpy $14.b		; C4 14
	ora $10FE12.l,X		; 1F 12 FE 10
	sbc ($10.b),Y		; F1 10
	jmp.w [$14C4]		; DC C4 14
	brk $12.b		; 00 12
	inc $F010.w,X		; FE 10 F0
	ora ($DC.b),Y		; 11 DC
	iny		; C8
	mvp $20,$DE		; 44 DE 20
	sbc $11E23F.l		; EF 3F E2 11
	jmp.w [$E5C4]		; DC C4 E5
	rol $0E12.w		; 2E 12 0E
	ora ($EF.b,X)		; 01 EF
	jsl $D4C4FC.l		; 22 FC C4 D4
	and $F20E02.l,X		; 3F 02 0E F2
	sbc $C40C13.l		; EF 13 0C C4
	cmp ($5F.b),Y		; D1 5F
	ora ($1F.b,X)		; 01 1F
	sbc ($0E.b,X)		; E1 0E
	ora ($2D.b)		; 12 2D
	iny		; C8
	sbc $5B.b		; E5 5B
	sbc ($1F.b),Y		; F1 1F
	sbc $FE.b,S		; E3 FE
	jsl $CEC40C.l		; 22 0C C4 CE
	.db $42, $F0		; 42 F0
	ora ($E0.b),Y		; 11 E0
	asl $30F2.w,X		; 1E F2 30
	cpy $CC.b		; C4 CC
	ora $F0.b,X		; 15 F0
	ora ($FF.b),Y		; 11 FF
	ora $C432E1.l,X		; 1F E1 32 C4
	xba		; EB
	pei ($3F.b)		; D4 3F
	ora ($0E.b),Y		; 11 0E
	ora ($E0.b,X)		; 01 E0
	and $C4.b,S		; 23 C4
	jsr ($50B2.w,X)		; FC B2 50
	sbc ($1E.b)		; F2 1E
	sbc ($FF.b),Y		; F1 FF
	ora ($C4.b,S),Y		; 13 C4
	ora $61AF.w,X		; 1D AF 61
	sbc ($2F.b),Y		; F1 2F
	sbc ($FF.b,X)		; E1 FF
	ora $C4.b,S		; 03 C4
	rol $43BD.w		; 2E BD 43
	sbc ($10.b),Y		; F1 10
	cpx #$021E.w		; E0 1E 02
	cpy $3F.b		; C4 3F
	ldy $0F25.w,X		; BC 25 0F
	and ($EF.b,X)		; 21 EF
	ora $31C4E2.l,X		; 1F E2 C4 31
	wai		; CB
	inc $1F.b,X		; F6 1F
	and ($FE.b,X)		; 21 FE
	ora $33C4E1.l,X		; 1F E1 C4 33
	stp		; DB
	cmp ($4F.b,S),Y		; D3 4F
	ora ($0E.b),Y		; 11 0E
	ora ($EF.b,X)		; 01 EF
	iny		; C8
	and ($EA.b),Y		; 31 EA
	ora $6A.b		; 05 6A
	sbc ($EF.b,S),Y		; F3 EF
	sbc ($EF.b,S),Y		; F3 EF
	cpy $23.b		; C4 23
	and $54AD.w		; 2D AD 54
	sbc ($2F.b,X)		; E1 2F
	cpx #$C41E.w		; E0 1E C4
	cop $4F.b		; 02 4F
	ldy $0025.w		; AC 25 00
	jsr $1FEF.w		; 20 EF 1F
	cpy $F1.b		; C4 F1
	eor ($BB.b,X)		; 41 BB
	inc $10.b,X		; F6 10
	ora ($FE.b),Y		; 11 FE
	ora $32F1C4.l,X		; 1F C4 F1 32
	phx		; DA
	cmp $4F.b,X		; D5 4F
	ora ($0D.b),Y		; 11 0D
	bpl -60.b		; 10 C4
	cpx #$FA33.w		; E0 33 FA
	cmp $5F.b,S		; C3 5F
	cop $0E.b		; 02 0E
	sbc ($C8.b),Y		; F1 C8
	cpx #$EA31.w		; E0 31 EA
	ora $6A.b		; 05 6A
	ora ($0D.b,X)		; 01 0D
	ora ($C4.b)		; 12 C4
	inc $2C23.w,X		; FE 23 2C
	ldx $E263.w		; AE 63 E2
	ora $1EC4E0.l,X		; 1F E0 C4 1E
	ora $2F.b,S		; 03 2F
	ldy $F045.w		; AC 45 F0
	and $1EC4E0.l		; 2F E0 C4 1E
	sbc ($30.b,S),Y		; F3 30
	tyx		; BB
	asl $00.b,X		; 16 00
	ora ($EF.b),Y		; 11 EF
	cpy $1F.b		; C4 1F
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	dex		; CA
	sbc $3F.b,X		; F5 3F
	ora ($FE.b),Y		; 11 FE
	cpy $10.b		; C4 10
	cpx #$33.b		; E0 33
	nop		; EA
	cmp ($5F.b,S),Y		; D3 5F
	cop $0E.b		; 02 0E
	cpy $F1.b		; C4 F1
	cpx #$23.b		; E0 23
	phd		; 0B
	lda ($60.b),Y		; B1 60
	ora ($1E.b,X)		; 01 1E
	cpy $F1.b		; C4 F1
	inc $2C23.w,X		; FE 23 2C
	ldx $F153.w,Y		; BE 53 F1
	ora $0EE1C4.l,X		; 1F C4 E1 0E
	ora $3E.b,S		; 03 3E
	ldy $F035.w,X		; BC 35 F0
	jsr $EFC4.w		; 20 C4 EF
	asl $3002.w,X		; 1E 02 30
	wai		; CB
	ora $2F.b		; 05 2F
	ora ($C4.b),Y		; 11 C4
	inc $F11F.w,X		; FE 1F F1
	and ($DB.b)		; 32 DB
	pei ($4F.b)		; D4 4F
	ora ($C4.b),Y		; 11 C4
	ora $E001.w		; 0D 01 E0
	and ($FB.b,S),Y		; 33 FB
	lda ($60.b),Y		; B1 60
	cop $C4.b		; 02 C4
	asl $FFF1.w		; 0E F1 FF
	ora ($2D.b,S),Y		; 13 2D
	ldx $F153.w		; AE 53 F1
	cpy $1F.b		; C4 1F
	cpx #$1E.b		; E0 1E
	ora $3F.b,S		; 03 3F
	tyx		; BB
	rol $0F.b		; 26 0F
	cpy $20.b		; C4 20
	sbc $31F21F.l		; EF 1F F2 31
	dex		; CA
	inc $2F.b,X		; F6 2F
	cpy $11.b		; C4 11
	inc $E101.w,X		; FE 01 E1
	and ($EA.b)		; 32 EA
	cpy $5F.b		; C4 5F
	cpy $11.b		; C4 11
	ora $FF01.w		; 0D 01 FF
	and ($0B.b)		; 32 0B
	lda ($61.b),Y		; B1 61
	cpy $F2.b		; C4 F2
	asl $0FE1.w		; 0E E1 0F
	ora ($2C.b,S),Y		; 13 2C
	ldx $C463.w		; AE 63 C4
	sbc ($1F.b),Y		; F1 1F
	cpx #$1E.b		; E0 1E
	ora ($3E.b)		; 12 3E
	tyx		; BB
	eor $C8.b		; 45 C8
	bcs  31.b		; B0 1F
.INDEX 8
	sep #$1F		; E2 1F
	sbc ($1E.b,S),Y		; F3 1E
	lda $2FC456.l,X		; BF 56 C4 2F
	ora ($EE.b),Y		; 11 EE
	bpl -15.b		; 10 F1
	and ($DA.b)		; 32 DA
	cmp $C4.b,X		; D5 C4
	eor $01FE11.l		; 4F 11 FE 01
	cpx #$32.b		; E0 32
	xce		; FB
	lda ($C4.b,S),Y		; B3 C4
	adc $F20D02.l		; 6F 02 0D F2
	sbc $A00C23.l,X		; FF 23 0C A0
	iny		; C8
	jmp ($FFD2.w)		; 6C D2 FF
	sbc ($FF.b,S),Y		; F3 FF
	jsl $C4D4FB.l		; 22 FB D4 C4
	adc $F1.b,S		; 63 F1
	asl $1EE1.w,X		; 1E E1 1E
	ora $2F.b,S		; 03 2F
	ldy $45C4.w		; AC C4 45
	beq  47.b		; F0 2F
	sbc $30022E.l		; EF 2E 02 30
	plb		; AB
	cpy $26.b		; C4 26
	ora $2FEF2F.l,X		; 1F 2F EF 2F
	sbc ($30.b)		; F2 30
	dex		; CA
	cpy $16.b		; C4 16
	ora $10DF20.l,X		; 1F 20 DF 10
	sbc ($21.b)		; F2 21
	dex		; CA
	cpy $16.b		; C4 16
	ora $10DF20.l,X		; 1F 20 DF 10
	sbc ($31.b),Y		; F1 31
	dex		; CA
	cpy $07.b		; C4 07
	ora $11DF20.l,X		; 1F 20 DF 11
	sbc ($31.b,X)		; E1 31
	dex		; CA
	cpy $16.b		; C4 16
	ora $10DF20.l,X		; 1F 20 DF 10
	sbc ($31.b),Y		; F1 31
	dex		; CA
	cpy $16.b		; C4 16
	ora $10DF20.l,X		; 1F 20 DF 10
	sbc ($21.b)		; F2 21
	tyx		; BB
	cpy $26.b		; C4 26
	ora $2FDF20.l		; 0F 20 DF 2F
	sbc ($20.b)		; F2 20
	tyx		; BB
	cpy $45.b		; C4 45
	brk $1F.b		; 00 1F
	bne  47.b		; D0 2F
	sbc ($2F.b)		; F2 2F
	ldy $55C4.w,X		; BC C4 55
	sbc ($1F.b,X)		; E1 1F
	bne  47.b		; D0 2F
	cop $1E.b		; 02 1E
	ldx $03C0.w,Y		; BE C0 03
	ora ($31.b)		; 12 31
	sbc $300210.l		; EF 10 02 30
	tax		; AA
	cpy $71.b		; C4 71
	sbc ($0E.b),Y		; F1 0E
.INDEX 8
	sep #$1F		; E2 1F
	cop $0C.b		; 02 0C
	lda ($C4.b)		; B2 C4
	bvs -15.b		; 70 F1
	ora $00F2.w		; 0D F2 00
	ora ($FB.b),Y		; 11 FB
	pei ($C4.b)		; D4 C4
	adc $02ED01.l		; 6F 01 ED 02
	brk $21.b		; 00 21
	phx		; DA
	sbc [$C8.b],Y		; F7 C8
	cpy $E02F.w		; CC 2F E0
	and ($E1.b),Y		; 31 E1
	asl $66DE.w,X		; 1E DE 66
	cpy $10.b		; C4 10
	ora $0121DE.l,X		; 1F DE 21 01
	and $C437BB.l		; 2F BB 37 C4
	brk $1F.b		; 00 1F
	dec $0221.w,X		; DE 21 02
	asl $55BC.w,X		; 1E BC 55
	cpy $00.b		; C4 00
	asl $20D0.w,X		; 1E D0 20
	cop $1D.b		; 02 1D
	ldx $C863.w,Y		; BE 63 C8
	cmp ($FE.b),Y		; D1 FE
	ora $1D.b,S		; 03 1D
	bmi -19.b		; 30 ED
	inc $5C.b		; E6 5C
	cpy $F1.b		; C4 F1
	ora $2FE1.w		; 0D E1 2F
	ora ($0C.b)		; 12 0C
	lda ($60.b)		; B2 60
	cpy $01.b		; C4 01
	inc $00E2.w,X		; FE E2 00
	and ($FC.b,X)		; 21 FC
	cmp $50.b,S		; C3 50
	cpy $01.b		; C4 01
	sbc $0001.w,X		; FD 01 00
	and ($EC.b,X)		; 21 EC
	cmp $4F.b,X		; D5 4F
	cpy $01.b		; C4 01
	inc $F002.w		; EE 02 F0
	and ($DC.b,X)		; 21 DC
	inc $3F.b		; E6 3F
	cpy #$22.b		; C0 22
	asl $00F0.w		; 0E F0 00
	jsl $32B1FA.l		; 22 FA B1 32
	iny		; C8
	bpl -32.b		; 10 E0
	bmi -16.b		; 30 F0
	rol $55C0.w		; 2E C0 55
	lda $DF10C4.l		; AF C4 10 DF
	ora ($01.b),Y		; 11 01
	ora $0036DB.l,X		; 1F DB 36 00
	cpy $0F.b		; C4 0F
	sbc $1F0120.l		; EF 20 01 1F
	cpy $0054.w		; CC 54 00
	cpy $0F.b		; C4 0F
	bne  32.b		; D0 20
	cop $0E.b		; 02 0E
	lda $C80062.l,X		; BF 62 00 C8
	asl $1E03.w		; 0E 03 1E
	cop $ED.b		; 02 ED
	inc $5B.b		; E6 5B
	beq -60.b		; F0 C4
	ora $10E2.w		; 0D E2 10
	ora ($EC.b)		; 12 EC
	cpy $50.b		; C4 50
	brk $C4.b		; 00 C4
	sbc $0002.w,X		; FD 02 00
	jsr $E6EB.w		; 20 EB E6
	bmi   0.b		; 30 00
	iny		; C8
	cpx #$22.b		; E0 22
	sbc ($0F.b,X)		; E1 0F
	dec $BF65.w,X		; DE 65 BF
	ora $21EEC4.l		; 0F C4 EE 21
	ora ($1F.b,X)		; 01 1F
	ldy $F155.w,X		; BC 55 F1
	ora $00EEC0.l		; 0F C0 EE 00
	ora ($2F.b)		; 12 2F
	tax		; AA
	ora ($23.b)		; 12 23
	and $10F1C4.l		; 2F C4 F1 10
	ora ($FB.b)		; 12 FB
	cpy $5F.b		; C4 5F
	ora ($ED.b),Y		; 11 ED
	iny		; C8
	and ($F1.b),Y		; 31 F1
	brk $CE.b		; 00 CE
	eor $CF.b,X		; 55 CF
	asl $C4F0.w,X		; 1E F0 C4
	ora ($02.b),Y		; 11 02
	asl $53BE.w,X		; 1E BE 53
	sbc ($1E.b),Y		; F1 1E
	cmp ($C4.b),Y		; D1 C4
	bpl  18.b		; 10 12
	jsr ($50B3.w,X)		; FC B3 50
	ora ($FD.b),Y		; 11 FD
	sbc ($C0.b)		; F2 C0
	brk $23.b		; 00 23
	asl A		; 0A
	ldy #$22.b		; A0 22
	and ($0E.b,S),Y		; 33 0E
	beq -60.b		; F0 C4
	ora ($2E.b,X)		; 01 2E
	cpy $0153.w		; CC 53 01
	asl $10E0.w,X		; 1E E0 10
	cpy $02.b		; C4 02
	tsb $50C2.w		; 0C C2 50
	ora ($FD.b),Y		; 11 FD
	ora ($00.b,X)		; 01 00
	cpy $20.b		; C4 20
	stp		; DB
	asl $00.b,X		; 16 00
	jsr $10DF.w		; 20 DF 10
	cop $C0.b		; 02 C0
	bmi -70.b		; 30 BA
	ora ($13.b),Y		; 11 13
	bmi -32.b		; 30 E0
	brk $13.b		; 00 13
	cpy $EB.b		; C4 EB
	sbc $2F.b		; E5 2F
	and ($EE.b,X)		; 21 EE
	ora ($01.b,X)		; 01 01
	and $63BCC4.l		; 2F C4 BC 63
.INDEX 8
	sep #$1E		; E2 1E
	cpx #$10.b		; E0 10
	ora ($FB.b)		; 12 FB
	cpy $C5.b		; C4 C5
	lsr $FD12.w		; 4E 12 FD
	ora ($00.b,X)		; 01 00
	jsr $C4CB.w		; 20 CB C4
	eor $E1.b		; 45 E1
	and $0210D0.l		; 2F D0 10 02
	tsb $C4C3.w		; 0C C3 C4
	lsr $0D02.w,X		; 5E 02 0D
	cop $F0.b		; 02 F0
	ora ($CC.b),Y		; 11 CC
	mvp $F0,$C4		; 44 C4 F0
	ora $F120D1.l,X		; 1F D1 20 F1
	phd		; 0B
	inc $2F.b		; E6 2F
	cpy #$12.b		; C0 12
	asl $1001.w		; 0E 01 10
	jsr $22BB.w		; 20 BB 22
	ora ($C4.b)		; 12 C4
	ora $10F2.w		; 0D F2 10
	ora ($DB.b,X)		; 01 DB
	and $0F.b,X		; 35 0F
	bpl -60.b		; 10 C4
	cmp $0B0130.l,X		; DF 30 01 0B
	cmp $3F.b,X		; D5 3F
	ora ($ED.b),Y		; 11 ED
	cpy #$F0.b		; C0 F0
	ora ($21.b),Y		; 11 21
	tyx		; BB
	ora ($12.b)		; 12 12
	bmi -32.b		; 30 E0
	cpy $00.b		; C4 00
	ora ($CB.b)		; 12 CB
	bit $F1.b,X		; 34 F1
	and $C410D0.l		; 2F D0 10 C4
	ora ($1B.b,X)		; 01 1B
	sbc $1F.b		; E5 1F
	ora ($EE.b)		; 12 EE
	bpl   0.b		; 10 00
	cpy #$20.b		; C0 20
	lda $0220.w,X		; BD 20 02
	jsr $0F01.w		; 20 01 0F
	ora ($C4.b,X)		; 01 C4
	dec $F151.w		; CE 51 F1
	ora $F20FE2.l,X		; 1F E2 0F F2
	cpx $E2C0.w		; EC C0 E2
	brk $22.b		; 00 22
	beq  16.b		; F0 10
	beq  28.b		; F0 1C
	rep #$C4		; C2 C4
	asl $EE12.w		; 0E 12 EE
	bmi -32.b		; 30 E0
	and $3DC5.w		; 2D C5 3D
	cpy $11.b		; C4 11
	ora $FF21.w		; 0D 21 FF
	ora $F25EB3.l,X		; 1F B3 5E F2
	cpy #$2F.b		; C0 2F
	sbc ($1F.b)		; F2 1F
	brk $CC.b		; 00 CC
	jsl $C42001.l		; 22 01 20 C4
	sbc $1E.b,S		; E3 1E
	ora ($DC.b,X)		; 01 DC
	adc $D0.b,S		; 63 D0
	and $21C0D2.l		; 2F D2 C0 21
	sbc ($0B.b),Y		; F1 0B
	cmp ($10.b,S),Y		; D3 10
	ora ($FF.b)		; 12 FF
	and ($C0.b,X)		; 21 C0
	beq  28.b		; F0 1C
	lda ($20.b)		; B2 20
	ora ($0E.b)		; 12 0E
	ora ($F0.b)		; 12 F0
	cpy #$1E.b		; C0 1E
	ldy #$30.b		; A0 30
	cop $1E.b		; 02 1E
	cop $0F.b		; 02 0F
	ora $5EB4C4.l,X		; 1F C4 B4 5E
.INDEX 8
	sep #$1D		; E2 1D
	ora $FE.b,S		; 03 FE
	bpl -79.b		; 10 B1
	cpy #$32.b		; C0 32
	ora ($20.b,X)		; 01 20
	sbc ($2F.b)		; F2 2F
	ora ($CC.b,X)		; 01 CC
	and $C0.b,S		; 23 C0
	brk $20.b		; 00 20
	sbc ($20.b,X)		; E1 20
	sbc ($DB.b),Y		; F1 DB
	ora ($10.b,S),Y		; 13 10
	cpy $2F.b		; C4 2F
	cmp ($1E.b,S),Y		; D3 1E
	sbc ($DD.b)		; F2 DD
	eor ($EF.b,S),Y		; 53 EF
	bpl -60.b		; 10 C4
	cmp ($2F.b)		; D2 2F
	sbc ($ED.b,X)		; E1 ED
	eor $FF.b,S		; 43 FF
	bpl -46.b		; 10 D2
	cpy $2F.b		; C4 2F
	sbc ($ED.b,X)		; E1 ED
	eor $FF.b,S		; 43 FF
	bpl -31.b		; 10 E1
	and $EDE1C4.l		; 2F C4 E1 ED
	eor $FF.b,S		; 43 FF
	bpl -32.b		; 10 E0
	and $EDC4E1.l,X		; 3F E1 C4 ED
	eor $FF.b,S		; 43 FF
	bpl -32.b		; 10 E0
	and $C4EDE1.l,X		; 3F E1 ED C4
	eor $FF.b,S		; 43 FF
	ora ($D0.b),Y		; 11 D0
	and $43EDF1.l		; 2F F1 ED 43
	cpy $FF.b		; C4 FF
	ora ($D1.b),Y		; 11 D1
	ora $42DEF1.l,X		; 1F F1 DE 42
	ora $E110C4.l		; 0F C4 10 E1
	ora $42DEF1.l,X		; 1F F1 DE 42
	ora $F0C010.l		; 0F 10 C0 F0
	bpl   0.b		; 10 00
	stp		; DB
	cop $11.b		; 02 11
	ora ($F1.b),Y		; 11 F1
	cpy #$10.b		; C0 10
	brk $DC.b		; 00 DC
	ora ($11.b)		; 12 11
	and ($F1.b,X)		; 21 F1
	bpl -64.b		; 10 C0
	brk $CC.b		; 00 CC
	ora ($11.b)		; 12 11
	and ($F1.b,X)		; 21 F1
	ora $CCC000.l,X		; 1F 00 C0 CC
	ora ($11.b)		; 12 11
	and ($F1.b,X)		; 21 F1
	ora $C0CC00.l,X		; 1F 00 CC C0
	ora ($10.b)		; 12 10
	and ($F1.b,X)		; 21 F1
	ora $22CC00.l,X		; 1F 00 CC 22
	cpy #$10.b		; C0 10
	and ($F2.b,X)		; 21 F2
	bpl  15.b		; 10 0F
	cpy $1022.w		; CC 22 10
	cpy #$21.b		; C0 21
	sbc ($10.b)		; F2 10
	brk $CC.b		; 00 CC
	ora ($00.b)		; 12 00
	and ($C4.b,X)		; 21 C4
.INDEX 8
	sep #$1E		; E2 1E
	sbc ($DD.b)		; F2 DD
	eor $E0.b,S		; 43 E0
	jsr $C0D1.w		; 20 D1 C0
	and ($F1.b,X)		; 21 F1
	phd		; 0B
	cmp ($10.b)		; D2 10
	and $0F.b,S		; 23 0F
	and ($C0.b,X)		; 21 C0
	beq  29.b		; F0 1D
	bcs  47.b		; B0 2F
	ora ($1F.b,S),Y		; 13 1F
	ora ($0F.b)		; 12 0F
	cpy $2E.b		; C4 2E
	rep #$4F		; C2 4F
	cop $0D.b		; 02 0D
	ora ($FE.b)		; 12 FE
	ora ($C4.b),Y		; 11 C4
	dec $E242.w		; CE 42 E2
	ora $F20FE2.l,X		; 1F E2 0F F2
	jsr ($D1C0.w,X)		; FC C0 D1
	brk $22.b		; 00 22
	brk $11.b		; 00 11
	beq  31.b		; F0 1F
	dec $6DB4.w		; CE B4 6D
	and $FD.b,S		; 23 FD
	ora ($FF.b),Y		; 11 FF
	ora ($BC.b),Y		; 11 BC
	mvp $E3,$B4		; 44 B4 E3
	ora $F100F0.l,X		; 1F F0 00 F1
	tas		; 1B
	cpy $3F.b		; C4 3F
	ldy $22.b,X		; B4 22
	inc $0F10.w,X		; FE 10 0F
	and ($AB.b,X)		; 21 AB
	eor ($E3.b,S),Y		; 53 E3
	ldy $2F.b,X		; B4 2F
	sbc ($01.b,X)		; E1 01
	sbc ($0D.b),Y		; F1 0D
	cpy #$31.b		; C0 31
	cop $B4.b		; 02 B4
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	asl $4FC0.w		; 0E C0 4F
	ora ($A4.b)		; 12 A4
	bpl -15.b		; 10 F1
	bit $DD10.w		; 2C 10 DD
	lda ($30.b)		; B2 30
	.db $42, $A5		; 42 A5
	bpl -15.b		; 10 F1
	ora $B30C0E.l		; 0F 0E 0C B3
	jsr $0032.w		; 20 32 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $14.b		; 02 14
	ora $11.b,S		; 03 11
	rti		; 40

	ora $14F430.l,X		; 1F 30 F4 14
	sbc $1F00E0.l		; EF E0 00 1F
	cop $4C.b		; 02 4C
	cpx #$7B.b		; E0 7B
	bit $EB.b		; 24 EB
	beq  -4.b		; F0 FC
	beq  78.b		; F0 4E
	lda $24AD4C.l,X		; BF 4C AD 24
	rol A		; 2A
	tyx		; BB
	cpy #$1E.b		; C0 1E
	cmp $20110E.l		; CF 0E 11 20
	bit $DB.b		; 24 DB
	asl A		; 0A
	xba		; EB
	and $1B00FE.l		; 2F FE 00 1B
	ora $40.b,X		; 15 40
	cpy $DDDE.w		; CC DE DD
	cmp $0FCD.w,X		; DD CD 0F
	sbc $5021.w,X		; FD 21 50
	ora $512F11.l		; 0F 11 2F 51
	ora ($11.b),Y		; 11 11
	ora ($32.b),Y		; 11 32
	bit $E1.b,X		; 34 E1
	eor $31F312.l		; 4F 12 F3 31
	and ($1F.b,X)		; 21 1F
	sbc ($34.b)		; F2 34
	bvc -31.b		; 50 E1
	and $1FC7.w,X		; 3D C7 1F
	beq  64.b		; F0 40
	pld		; 2B
	bit $45.b,X		; 34 45
	ora $E113.w,X		; 1D 13 E1
	sbc $CC61.w		; ED 61 CC
	eor $FF1150.l,X		; 5F 50 11 FF
	and $AC.b,S		; 23 AC
	jmp.w [$E2BC]		; DC BC E2
	and ($60.b,S),Y		; 33 60
	and ($21.b,X)		; 21 21
	asl $0F31.w		; 0E 31 0F
	ora ($2D.b,X)		; 01 2D
	and $74.b,X		; 35 74
	bit $4BE2.w,X		; 3C E2 4B
	rep #$00		; C2 00
	pei ($30.b)		; D4 30
	ora ($60.b),Y		; 11 60
	stz $FE.b		; 64 FE
	cmp $F1FF.w		; CD FF F1
	bvc -11.b		; 50 F5
	rol A		; 2A
	bvs  37.b		; 70 25
	bpl  33.b		; 10 21
	ora ($E1.b)		; 12 E1
	and ($1D.b,S),Y		; 33 1D
	bit $70.b,X		; 34 70
	eor $D052C1.l		; 4F C1 52 D0
	eor ($FF.b),Y		; 51 FF
	ora ($0D.b),Y		; 11 0D
	bra -15.b		; 80 F1
	jsr $2F0F.w		; 20 0F 2F
	cpx #$1F.b		; E0 1F
	asl $8051.w		; 0E 51 80
	lda ($40.b)		; B2 40
	ldx #$30.b		; A2 30
	asl $62.b,X		; 16 62
	bmi  16.b		; 30 10
	sty $FF.b,X		; 94 FF
	bpl  -1.b		; 10 FF
	brk $B0.b		; 00 B0
	ora ($F0.b,X)		; 01 F0
	eor ($A4.b,X)		; 41 A4
	ora ($01.b,S),Y		; 13 01
	cop $0E.b		; 02 0E
	cmp ($F0.b),Y		; D1 F0
	ora ($C0.b),Y		; 11 C0
	tya		; 98
	rol $42CF.w		; 2E CF 42
	cmp $BE47.w,X		; DD 47 BE
	ora ($E0.b),Y		; 11 E0
	sty $31.b,X		; 94 31
	ora $FBF0CE.l		; 0F CE F0 FB
	cop $DD.b		; 02 DD
	jsr ($02A4.w,X)		; FC A4 02
	bit $4E.b,X		; 34 4E
	cmp ($3D.b,S),Y		; D3 3D
	sbc ($FE.b),Y		; F1 FE
	sbc $0F00C4.l,X		; FF C4 00 0F
	ora $3E140F.l		; 0F 0F 14 3E
	cmp $E1C821.l,X		; DF 21 C8 E1
	asl $0010.w,X		; 1E 10 00
	sbc ($0F.b),Y		; F1 0F
	ora ($5F.b,X)		; 01 5F
	cpy #$4E.b		; C0 4E
	sbc ($10.b,X)		; E1 10
	ora ($0F.b)		; 12 0F
	brk $FE.b		; 00 FE
	cmp $03C4.w,X		; DD C4 03
	rts		; 60

	ldx $F121.w		; AE 21 F1
	and $C41FD1.l		; 2F D1 1F C4
	inc $4C16.w		; EE 16 4C
	lda ($1F.b)		; B2 1F
	ora ($FD.b)		; 12 FD
	cop $C0.b		; 02 C0
	asl $66BD.w		; 0E BD 66
	sbc $F211.w,X		; FD 11 F2
	and ($EF.b),Y		; 31 EF
	cpy $00.b		; C4 00
	inc $CC55.w,X		; FE 55 CC
	ora ($E1.b)		; 12 E1
	and $1FC4D0.l,X		; 3F D0 C4 1F
	sbc $03CC45.l,X		; FF 45 CC 03
	beq  62.b		; F0 3E
	cpx #$C4.b		; E0 C4
	ora $CE43F0.l,X		; 1F F0 43 CE
	ora ($02.b,X)		; 01 02
	asl $C4E1.w,X		; 1E E1 C4
	ora $EF4EF2.l		; 0F F2 4E EF
	ora $F0EF31.l,X		; 1F 31 EF F0
	ldy $0E.b,X		; B4 0E
	ror $BD.b		; 66 BD
	beq -10.b		; F0 F6
	and $0FED.w		; 2D ED 0F
	cpy $F4.b		; C4 F4
	and $F0FF.w,X		; 3D FF F0
	and ($0E.b),Y		; 31 0E
	cpx #$F0.b		; E0 F0
	cpy #$24.b		; C0 24
	and ($FD.b,X)		; 21 FD
	sbc ($22.b,X)		; E1 22
	ora $C0D2ED.l,X		; 1F ED D2 C0
	.db $42, $1F		; 42 1F
	dec $3102.w,X		; DE 02 31
	inc $23DD.w,X		; FE DD 23
	bcs  84.b		; B0 54
	plx		; FA
	cmp $C92E26.l		; CF 26 2E C9
	ldy $56.b		; A4 56
	cpy $0D.b		; C4 0D
	cpx #$02.b		; E0 02
	lsr $E0EF.w		; 4E EF E0
	rti		; 40

	and ($B0.b,X)		; 21 B0
	ora $F6CA.w		; 0D CA F6
	jsr $D0EB.w		; 20 EB D0
	ora $52.b,X		; 15 52
	ldy $BB.b		; A4 BB
	inc $0C.b,X		; F6 0C
	ora [$0E.b]		; 07 0E
	asl $FF31.w,X		; 1E 31 FF
	bcs  15.b		; B0 0F
	sbc $31CE.w,X		; FD CE 31
	and ($10.b)		; 32 10
	ora $DFA800.l		; 0F 00 A8 DF
	mvp $1D,$1B		; 44 1B 1D
	ora $D60E11.l,X		; 1F 11 0E D6
	ldy $44.b		; A4 44
	rti		; 40

	ora $FFCE.w,X		; 1D CE FF
	inc $2263.w		; EE 63 22
	ldy $00.b,X		; B4 00
	asl $EEF0.w		; 0E F0 EE
	pea $1013.w		; F4 13 10
	asl $CFA4.w		; 0E A4 CF
	inc $33C4.w		; EE C4 33
	eor ($4F.b),Y		; 51 4F
	tyx		; BB
	cpy $05A8.w		; CC A8 05
	jmp $D22D3B.l		; 5C 3B 2D D2
	sbc $A87F02.l		; EF 02 7F A8
	and $C12A.w,X		; 3D 2A C1
	cmp $F7.b,S		; C3 F7
	and $B82C2D.l,X		; 3F 2D 2C B8
	sbc ($D1.b,X)		; E1 D1
	pea $0003.w		; F4 03 00
	sbc $E2E1.w,X		; FD E1 E2
	ldy $D0.b,X		; B4 D0
	ora ($34.b,S),Y		; 13 34
	bmi -19.b		; 30 ED
	cmp $13C1.w,X		; DD C1 13
	tay		; A8
	asl $FF0B.w,X		; 1E 0B FF
	cpx #$E6.b		; E0 E6
	ora ($3E.b,S),Y		; 13 3E
	rol A		; 2A
	tay		; A8
	sbc $E4E2.w,X		; FD E2 E4
	and $E03D5D.l,X		; 3F 5D 3D E0
	lda ($A8.b),Y		; B1 A8
	cmp ($50.b)		; D2 50
	eor $D1D20F.l		; 4F 0F D2 D1
	bne   3.b		; D0 03
	tya		; 98
	tsb $F5.b		; 04 F5
	dec $EE0F.w,X		; DE 0F EE
	inc $6D4C.w,X		; FE 4C 6D
	tay		; A8
	eor $E00F2E.l		; 4F 2E 0F E0
.ACCU 8
	sep #$E2		; E2 E2
	cop $20.b		; 02 20
	tya		; 98
	bit $0B0A.w		; 2C 0A 0B
	eor $2531.w		; 4D 31 25
	ora $D1.b,S		; 03 D1
	ldy $0E.b		; A4 0E
	cmp $0FDC.w		; CD DC 0F
	and ($34.b,S),Y		; 33 34
	jsl $D3A8FE.l		; 22 FE A8 D3
	pei ($F3.b)		; D4 F3
	and $0E1C2D.l		; 2F 2D 1C 0E
	bpl -88.b		; 10 A8
	cop $04.b		; 02 04
	sbc ($0D.b),Y		; F1 0D
	ora $4C1D.w		; 0D 1D 4C
	eor $0121A8.l,X		; 5F A8 21 01
	cmp ($B1.b)		; D2 B1
	cmp ($F1.b,S),Y		; D3 F1
	and $42A44D.l		; 2F 4D A4 42
	bpl -18.b		; 10 EE
	cmp $22F3D0.l		; CF D0 F3 22
	eor ($A8.b,X)		; 41 A8
	trb $3F2C.w		; 1C 2C 3F
	cop $03.b		; 02 03
	sbc ($D0.b,S),Y		; F3 D0
	cmp $3EFFA8.l,X		; DF A8 FF 3E
	lsr $1F40.w		; 4E 40 1F
	cpx #$C0.b		; E0 C0
	cmp $A8.b,X		; D5 A8
	cmp $F4.b,X		; D5 F4
	brk $FE.b		; 00 FE
	sbc $40FF.w		; ED FF 40
	eor ($A8.b,X)		; 41 A8
	and ($DE.b,X)		; 21 DE
	cpy #$C0.b		; C0 C0
	.db $42, $42		; 42 42
	ora ($BE.b),Y		; 11 BE
	tay		; A8
	dec $540E.w		; CE 0E 54
	and $E1.b		; 25 E1
	tsx		; BA
	inc A		; 1A
	jsr $32B8.w		; 20 B8 32
	ora ($FF.b)		; 12 FF
	dec $020E.w,X		; DE 0E 02
	eor ($20.b,X)		; 41 20
	clv		; B8
	sbc $23F0CF.l		; EF CF F0 23
	jsl $FFEC0F.l		; 22 0F EC FF
	clv		; B8
	sbc ($41.b,S),Y		; F3 41
	and $F0D0ED.l,X		; 3F ED D0 F0
	eor ($20.b)		; 52 20
	ldy $20.b,X		; B4 20
	jmp.w [$F3DD]		; DC DD F3
	eor $2F.b		; 45 2F
	jmp.w [$B4EF]		; DC EF B4
	ora $DF2053.l		; 0F 53 20 DF
	inc $E012.w		; EE 12 E0
	bmi -92.b		; 30 A4
	rol $E0F1.w,X		; 3E F1 E0
	asl $25EA.w,X		; 1E EA 25
	mvp $B8,$1E		; 44 1E B8
	asl $0C22.w		; 0E 22 0C
	and ($E1.b,S),Y		; 33 E1
	bne  15.b		; D0 0F
	ora ($A0.b,S),Y		; 13 A0
	bpl -83.b		; 10 AD
	and $53.b,S		; 23 53
	ora $B912DE.l,X		; 1F DE 12 B9
	ldy $63.b		; A4 63
	bmi -34.b		; 30 DE
	cpx #$32.b		; E0 32
	txy		; 9B
	adc $32.b		; 65 32
	ldy $EF.b,X		; B4 EF
	sbc $34CD21.l,X		; FF 21 CD 34
	and ($ED.b,X)		; 21 ED
	beq -76.b		; F0 B4
	ora ($CC.b,S),Y		; 13 CC
	bit $21.b,X		; 34 21
	sbc $23F0.w		; ED F0 23
	tyx		; BB
	cpy $22.b		; C4 22
	ora ($EF.b),Y		; 11 EF
	brk $11.b		; 00 11
	dec $1131.w,X		; DE 31 11
	cpy #$0F.b		; C0 0F
	beq  17.b		; F0 11
	jmp.w [$2201]		; DC 01 22
	ora $2EC400.l		; 0F 00 C4 2E
	cmp ($40.b,X)		; C1 40
	bpl -32.b		; 10 E0
	ora ($1C.b,X)		; 01 1C
	cmp ($C0.b,S),Y		; D3 C0
	jsl $01F031.l		; 22 31 F0 01
	ora $22C1.w,X		; 1D C1 22
	jsr $F1C4.w		; 20 C4 F1
	cop $EB.b		; 02 EB
	bit $10.b		; 24 10
	inc $1101.w,X		; FE 01 11
	cpy $CD.b		; C4 CD
	eor $00.b,S		; 43 00
	inc $2F11.w		; EE 11 2F
	bcs  81.b		; B0 51
	cpy $00.b		; C4 00
	cmp $C32C21.l,X		; DF 21 2C C3
	rti		; 40

	ora $02C0D1.l		; 0F D1 C0 02
	and $32B0.w		; 2D B0 32
	and $0C13EF.l		; 2F EF 13 0C
	cpy #$D2.b		; C0 D2
	and $1E.b,S		; 23 1E
	cpx #$22.b		; E0 22
	xba		; EB
	ora $22.b,S		; 03 22
	cpy #$FE.b		; C0 FE
	beq  49.b		; F0 31
	cmp $2122.w		; CD 22 21
	inc $C4F2.w		; EE F2 C4
	tsb $20E4.w		; 0C E4 20
	asl $12E1.w		; 0E E1 12
	sbc $B013.w		; ED 13 B0
	and $2E.b,X		; 35 2E
	dec $BB32.w,X		; DE 32 BB
	jsl $B00E43.l		; 22 43 0E B0
	bne  45.b		; D0 2D
.ACCU 16
	rep #$22		; C2 22
	and ($FE.b),Y		; 31 FE
	sbc ($CB.b),Y		; F1 CB
	bcs  51.b		; B0 33
	ora ($00.b)		; 12 00
	brk $0D.b		; 00 0D
	ldx #$41.b		; A2 41
	and ($B0.b,X)		; 21 B0
	beq   1.b		; F0 01
	phx		; DA
	and $12.b		; 25 12
	ora $B01D01.l		; 0F 01 1D B0
	sta ($52.b),Y		; 91 52
	jsr $11E0.w		; 20 E0 11
	cmp $3204.w,Y		; D9 04 32
	ldy $FD.b,X		; B4 FD
	ora ($2C.b),Y		; 11 2C
	ldx $4F.b,Y		; B6 4F
	asl $11D1.w,X		; 1E D1 11
	bcs -38.b		; B0 DA
	trb $33.b		; 14 33
	asl $1DE0.w		; 0E E0 1D
	cmp ($33.b,X)		; C1 33
	ldy $0E.b,X		; B4 0E
	sbc $41D200.l,X		; FF 00 D2 41
	ora $B4FFFF.l		; 0F FF FF B4
	sbc ($41.b,X)		; E1 41
	bpl -17.b		; 10 EF
	ora $2132EF.l		; 0F EF 32 21
	ldy $DD.b		; A4 DD
	sbc $4325EB.l		; EF EB 25 43
	trb $EDEF.w		; 1C EF ED
	sty $D6.b,X		; 94 D6
	adc $70.b		; 65 70
	sta $C0FC.w,X		; 9D FC C0
	bit $44.b		; 24 44
	tya		; 98
	cmp $D002.w,X		; DD 02 D0
	and ($F1.b)		; 32 F1
	ora $982FFD.l,X		; 1F FD 2F 98
	pei ($2D.b)		; D4 2D
	jsr $E010.w		; 20 10 E0
	tsb $E241.w		; 0C 41 E2
	bvs -79.b		; 70 B1
	adc $63.b,S		; 63 63
	lda $D3CA.w,X		; BD CA D3
	stz $14.b,X		; 74 14
	sty $DC.b		; 84 DC
	and $ED3302.l		; 2F 02 33 ED
	and $70FEE0.l		; 2F E0 FE 70
	sbc ($72.b)		; F2 72
	beq  -2.b		; F0 FE
	tsb $E3DD.w		; 0C DD E3
	.db $42, $70		; 42 70
	and $BDF2.w,X		; 3D F2 BD
	phx		; DA
	ora $53.b,X		; 15 53
	jmp.w [$70FC]		; DC FC 70
	cmp $66BE.w		; CD BE 66
	adc $ECDDBC.l		; 6F BC DD EC
	bne 120.b		; D0 78
	bit $03C0.w		; 2C C0 03
	eor $F1E2.w		; 4D E2 F1
	and $74B0.w		; 2D B0 74
	trb $11.b		; 14 11
	ora $D1EB30.l,X		; 1F 30 EB D1
	and ($4F.b)		; 32 4F
	stz $F3.b,X		; 74 F3
	phd		; 0B
	ldx $5521.w,Y		; BE 21 55
	sbc $78DE2B.l,X		; FF 2B DE 78
	cop $31.b		; 02 31
	asl A		; 0A
	ora $CE.b,S		; 03 CE
	and $0F.b		; 25 0F
	inc $74.b,X		; F6 74
	sbc $01D0EC.l,X		; FF EC D0 01
	jsl $CE0E21.l		; 22 21 0E CE
	stz $10.b		; 64 10
	ora $5F.b,S		; 03 5F
	adc $F4AC.w		; 6D AC F4
	pld		; 2B
	and ($64.b),Y		; 31 64
	rti		; 40

	dec $7EED.w,X		; DE ED 7E
	sbc ($03.b,X)		; E1 03
	bit $60F0.w		; 2C F0 60
	cpy $ECFD.w		; CC FD EC
	and ($0C.b,S),Y		; 33 0C
	ora $600ED2.l		; 0F D2 0E 60
	ldy $22E3.w		; AC E3 22
	jsr ($ED3E.w,X)		; FC 3E ED
	ora $5350D2.l,X		; 1F D2 50 53
	sbc $BBD1F0.l,X		; FF F0 D1 BB
	and $F5.b,S		; 23 F5
	bmi  84.b		; 30 54
	cpx #$39.b		; E0 39
	and $0C.b,X		; 35 0C
	rts		; 60

	asl A		; 0A
	cpy #$31.b		; C0 31
	stz $0F.b		; 64 0F
	tsb $0B.b		; 04 0B
.INDEX 8
	sep #$1B		; E2 1B
	and ($E0.b,S),Y		; 33 E0
	and ($64.b),Y		; 31 64
	tsb $21B2.w		; 0C B2 21
	ora ($F1.b,X)		; 01 F1
	ora $4EEE.w,X		; 1D EE 4E
	rts		; 60

	beq  18.b		; F0 12
	jsl $1EEEFC.l		; 22 FC EE 1E
	jsl $126011.l		; 22 11 60 12
	lda ($22.b)		; B2 22
	and $201011.l,X		; 3F 11 10 20
	and $F360.w		; 2D 60 F3
	and ($11.b),Y		; 31 11
	sbc $3B22.w,X		; FD 22 3B
	sbc ($5E.b)		; F2 5E
	stz $01.b,X		; 74 01
	sbc ($10.b)		; F2 10
	sbc $E32D20.l		; EF 20 2D E3
	sbc $C450.w,X		; FD 50 C4
	bit $FE.b		; 24 FE
	ora ($1B.b)		; 12 1B
	bne  -5.b		; D0 FB
	dec $E260.w,X		; DE 60 E2
	dec $F10E.w,X		; DE 0E F1
	sbc $113E.w,X		; FD 3E 11
	lda $13E364.l		; AF 64 E3 13
	dec $1CF3.w,X		; DE F3 1C
	stp		; DB
	lda ($1E.b,S),Y		; B3 1E
	tya		; 98
	ora $EDE112.l,X		; 1F 12 E1 ED
	inc $1357.w		; EE 57 13
	ora #$FFC4.w		; 09 C4 FF
	inc $2311.w		; EE 11 23
	asl $DEEF.w,X		; 1E EF DE
	bit $C4.b,X		; 34 C4
	ora ($1C.b,S),Y		; 13 1C
	cmp $1145ED.l,X		; DF ED 45 11
	ora $C8C0.w,X		; 1D C0 C8
	inc $CE62.w,X		; FE 62 CE
	asl $1DE4.w,X		; 1E E4 1D
	and $DC.b		; 25 DC
	bcs  83.b		; B0 53
	wai		; CB
	ora $24649E.l		; 0F 9E 64 24
	trb $B4E2.w		; 1C E2 B4
	nop		; EA
	rol $10.b		; 26 10
	asl $3FD0.w,X		; 1E D0 3F
	cmp $B454.w		; CD 54 B4
	ora $2BE21E.l		; 0F 1E E2 2B
	lda $7F.b		; A5 7F
	sbc $FC.b,S		; E3 FC
	cpy $02.b		; C4 02
	sbc $0014.w		; ED 14 00
	brk $E0.b		; 00 E0
	and $02C0DE.l		; 2F DE C0 02
	jsl $10FF21.l		; 22 21 FF 10
	cmp $2113.w		; CD 13 21
	cpy #$1F.b		; C0 1F
	cpx #$1F.b		; E0 1F
	cmp $0F1133.l		; CF 33 11 0F
	sbc ($C4.b),Y		; F1 C4
	ora $30D3.w,X		; 1D D3 30
	sbc ($0E.b,X)		; E1 0E
	ora $0C.b,S		; 03 0C
	cpx $C0.b		; E4 C0
	and ($01.b)		; 32 01
	ora $C01DF2.l		; 0F F2 1D C0
	.db $42, $00		; 42 00
	cpy $0F.b		; C4 0F
	ora $0C.b,S		; 03 0C
	cmp $4E.b,X		; D5 4E
	bne  31.b		; D0 1F
	ora $C4.b,S		; 03 C4
	tsb $5ED4.w		; 0C D4 5E
	bne  47.b		; D0 2F
	sbc ($1C.b)		; F2 1C
	pei ($C4.b)		; D4 C4
	eor $F22FC0.l,X		; 5F C0 2F F2
	trb $5FD4.w		; 1C D4 5F
	cpy #$C0.b		; C0 C0
	bpl -15.b		; 10 F1
	and $FF43BE.l		; 2F BE 43 FF
	brk $F0.b		; 00 F0
	cpy #$2F.b		; C0 2F
	dec $0E34.w		; CE 34 0E
	brk $F0.b		; 00 F0
	jsr $C0CD.w		; 20 CD C0
	bit $0E.b,X		; 34 0E
	ora ($F0.b,X)		; 01 F0
	jsr $24CD.w		; 20 CD 24
	asl $01C0.w		; 0E C0 01
	brk $20.b		; 00 20
	cmp $0E24.w,X		; DD 24 0E
	ora ($00.b,X)		; 01 00
	bcs  47.b		; B0 2F
	lda $FC66.w		; AD 66 FC
	cop $00.b		; 02 00
	tsb $B4B0.w		; 0C B0 B4
	ror $419F.w,X		; 7E 9F 41
	beq -20.b		; F0 EC
	rol $4B.b		; 26 4B
	lda ($B0.b),Y		; B1 B0
	and ($10.b,X)		; 21 10
	stp		; DB
	inc $6F.b,X		; F6 6F
	cmp $B41F21.l		; CF 21 1F B4
	cmp ($64.b,X)		; C1 64
	phx		; DA
	ora $20.b,S		; 03 20
	cpx $60E5.w		; EC E5 60
	ldy $AD.b,X		; B4 AD
	and $1F.b,S		; 23 1F
	jmp.w [$4B27]		; DC 27 4B
	ldy #$42.b		; A0 42
	ldy $FE.b,X		; B4 FE
	cmp $E3EA56.l,X		; DF 56 EA E3
	and ($ED.b,X)		; 21 ED
	sbc $B4.b,S		; E3 B4
	.db $62, $BC, $13		; 62 BC 13
	ora $4D16EC.l,X		; 1F EC 16 4D
	lda $0F31B4.l,X		; BF B4 31 0F
	cmp $E30A55.l		; CF 55 0A E3
	bpl  -2.b		; 10 FE
	ldy $D3.b,X		; B4 D3
	.db $62, $BC, $14		; 62 BC 14
	sbc $4D25ED.l,X		; FF ED 25 4D
	ldy $A0.b,X		; B4 A0
	eor ($FD.b,X)		; 41 FD
	bne 101.b		; D0 65
	nop		; EA
	cpx $20.b		; E4 20
	bcs  -4.b		; B0 FC
	lda $F20C66.l		; AF 66 0C F2
	and ($DA.b,X)		; 21 DA
	pei ($B4.b)		; D4 B4
	phk		; 4B
	ldy #$52.b		; A0 52
	sbc $75C0.w		; ED C0 75
	sbc #$B0E4.w		; E9 E4 B0
	and ($FB.b)		; 32 FB
	ldy #$66.b		; A0 66
	xce		; FB
	sbc ($30.b,S),Y		; F3 30
	dex		; CA
	cpy $23.b		; C4 23
	ora $20E1.w,X		; 1D E1 20
	asl $42E1.w		; 0E E1 42
	cmp $03C4.w,X		; DD C4 03
	ora $3E13EE.l,X		; 1F EE 13 3E
	cmp $C4FF22.l,X		; DF 22 FF C4
	sbc $F2FC34.l		; EF 34 FC F2
	and $30F3FE.l		; 2F FE F3 30
	bcs  -5.b		; B0 FB
	sbc ($20.b,S),Y		; F3 20
	dex		; CA
	inc $70.b,X		; F6 70
	ldx $C022.w,Y		; BE 22 C0
	asl $34DF.w		; 0E DF 34
	asl $10F1.w,X		; 1E F1 10
	sbc $C4E2.w,X		; FD E2 C4
	and $20D1.w		; 2D D1 20
	asl $42E1.w		; 0E E1 42
	sbc $C402.w		; ED 02 C4
	brk $FD.b		; 00 FD
	ora ($3E.b,S),Y		; 13 3E
	bne  32.b		; D0 20
	ora $43C4EF.l		; 0F EF C4 43
	jsr ($10F2.w,X)		; FC F2 10
	inc $4FF3.w,X		; FE F3 4F
	dec $02B0.w,X		; DE B0 02
	bpl -54.b		; 10 CA
	sbc [$7F.b],Y		; F7 7F
	cmp $C01D21.l		; CF 21 1D C0
	cmp $F10E34.l,X		; DF 34 0E F1
	brk $FD.b		; 00 FD
	sep #$41		; E2 41
	cpy $D1.b		; C4 D1
	and $43D000.l		; 2F 00 D0 43
	cpx $0011.w		; EC 11 00
	cpy #$0E.b		; C0 0E
	bne  66.b		; D0 42
	sbc $FC0100.l,X		; FF 00 01 FC
	pea $3FC0.w		; F4 C0 3F
	sbc ($0F.b),Y		; F1 0F
	bpl -50.b		; 10 CE
	and ($0F.b,S),Y		; 33 0F
	bpl -64.b		; 10 C0
	sbc ($1D.b),Y		; F1 1D
	cmp ($40.b)		; D2 40
	sbc ($0F.b),Y		; F1 0F
	ora ($EC.b)		; 12 EC
	cpy #$13.b		; C0 13
	bpl  16.b		; 10 10
	sbc ($2F.b,X)		; E1 2F
	cpy #$31.b		; C0 31
	ora ($B4.b,X)		; 01 B4
	sbc $BA34.w		; ED 34 BA
	eor [$FD.b]		; 47 FD
	rol $4ED2.w		; 2E D2 4E
	bcs -84.b		; B0 AC
	and ($12.b,S),Y		; 33 12
	asl $2DE2.w,X		; 1E E2 2D
	bcs  50.b		; B0 32
	ldy $0F.b,X		; B4 0F
	sbc $34DC31.l		; EF 31 DC 34
	brk $0E.b		; 00 0E
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	jsr $13CC.w		; 20 CC 13
	jsl $1DF10F.l		; 22 0F F1 1D
	cpy #$B4.b		; C0 B4
	jsr $E00F.w		; 20 0F E0
	jsr $24ED.w		; 20 ED 24
	brk $0E.b		; 00 0E
	bcs -16.b		; B0 F0
	bpl -51.b		; 10 CD
	ora ($22.b)		; 12 22
	ora $B40E01.l		; 0F 01 0E B4
	sbc $3F.b,S		; E3 3F
	ora $EE00F0.l,X		; 1F F0 00 EE
	and $01.b,S		; 23 01
	ldy $0F.b		; A4 0F
	asl $C2EE.w		; 0E EE C2
	eor $FD0212.l,X		; 5F 12 02 FD
	sty $CD.b		; 84 CD
	asl $F9.b		; 06 F9
	ora $51.b		; 05 51
	cpx #$00.b		; E0 00
	and $80.b,S		; 23 80
	trb $FDCE.w		; 1C CE FD
	sbc $D042F0.l		; EF F0 42 D0
	bit $84.b,X		; 34 84
	lda $0BF51E.l,X		; BF 1E F5 0B
	ora $5E.b		; 05 5E
	cmp ($DC.b),Y		; D1 DC
	sty $43.b		; 84 43
	lda $E253.w,X		; BD 53 E2
	eor $A32CB0.l		; 4F B0 2C A3
	bcc   0.b		; 90 00
	sbc ($32.b),Y		; F1 32
	bit $1C.b,X		; 34 1C
	dec $01EE.w		; CE EE 01
	tya		; 98
	beq  76.b		; F0 4C
	cmp $2E.b,S		; C3 2E
	cop $1E.b		; 02 1E
	ora $ED.b,S		; 03 ED
	sty $E2.b		; 84 E2
	xce		; FB
	sbc $0F.b,S		; E3 0F
	.db $42, $DD		; 42 DD
	bit $FF.b,X		; 34 FF
	sty $0E.b		; 84 0E
	lda ($3E.b)		; B2 3E
	sbc $3E.b,S		; E3 3E
	ora $0E.b,S		; 03 0E
	cpx #$88.b		; E0 88
	rep #$41		; C2 41
	sbc ($B3.b,X)		; E1 B3
	jsr $23DA.w		; 20 DA 23
	and $98.b,S		; 23 98
	beq  63.b		; F0 3F
	cmp ($0C.b,X)		; C1 0C
	ora ($20.b),Y		; 11 20
	and ($13.b,X)		; 21 13
	tya		; 98
	lda $E429.w,X		; BD 29 E4
	rti		; 40

	and $F3.b,S		; 23 F3
	sbc $A8DB.w		; ED DB A8
	cmp ($4E.b,S),Y		; D3 4E
	and ($F1.b),Y		; 31 F1
	ora $E3ED.w,X		; 1D ED E3
	and $E332A8.l,X		; 3F A8 32 E3
	jsr ($D3EE.w,X)		; FC EE D3
	lsr $E233.w,X		; 5E 33 E2
	tay		; A8
	ora #$FE.b		; 09 FE
	cmp $4F.b,X		; D5 4F
	bit $D1.b,X		; 34 D1
	cmp $A81E.w,Y		; D9 1E A8
	inc $30.b,X		; F6 30
	bvc -49.b		; 50 CF
	ldx $6100.w		; AE 00 61
	and ($A8.b,S),Y		; 33 A8
	inc $FFBC.w,X		; FE BC FF
	rol $03.b,X		; 36 03
	rol $C0DC.w		; 2E DC C0
	clv		; B8
	cop $20.b		; 02 20
	and ($EE.b,X)		; 21 EE
	sbc $F23200.l		; EF 00 32 F2
	clv		; B8
	ora $FFFE.w,X		; 1D FE FF
	trb $10.b		; 14 10
	ora ($DE.b),Y		; 11 DE
	cpx #$B8.b		; E0 B8
	sbc ($4F.b)		; F2 4F
	ora ($FE.b)		; 12 FE
	inc $240F.w		; EE 0F 24
	sbc ($B8.b)		; F2 B8
	asl $0EFD.w,X		; 1E FD 0E
	tsb $2F.b		; 04 2F
	ora ($EE.b)		; 12 EE
	inc $CCB4.w,X		; FE B4 CC
	ora ($12.b)		; 12 12
	.db $42, $0E		; 42 0E
	cpx $21C1.w		; EC C1 21
	ldy $24.b,X		; B4 24
	and $12DBFD.l,X		; 3F FD DB 12
	ora ($33.b)		; 12 33
	ora $04FEB8.l		; 0F B8 FE 04
	and $FF0DF3.l		; 2F F3 0D FF
	beq  20.b		; F0 14
	tay		; A8
	inc $DB33.w		; EE 33 DB
	sbc $E141E3.l,X		; FF E3 41 E1
	and ($98.b,X)		; 21 98
	tax		; AA
	bne  36.b		; D0 24
	bmi -47.b		; 30 D1
	eor ($DA.b,X)		; 41 DA
	cmp ($94.b,S),Y		; D3 94
	sbc ($23.b),Y		; F1 23
	inc $1C15.w,X		; FE 15 1C
	cpy #$11.b		; C0 11
	and ($98.b)		; 32 98
	dec $FE50.w		; CE 50 FE
	and ($00.b,X)		; 21 00
	rol $02DF.w		; 2E DF 02
	tya		; 98
	jsr $10F1.w		; 20 F1 10
	sbc $40E3FE.l,X		; FF FE E3 40
	beq -120.b		; F0 88
	rol $FBFE.w		; 2E FE FB
	ora ($44.b)		; 12 44
	and $EED2.w		; 2D D2 EE
	sty $BD.b		; 84 BD
	inc $64D4.w		; EE D4 64
	bpl -20.b		; 10 EC
	cpy #$02.b		; C0 02
	sty $10.b		; 84 10
	and $2E.b,S		; 23 2E
	cmp $21D2FE.l,X		; DF FE D2 21
	ora ($84.b),Y		; 11 84
	jsr $1FF1.w		; 20 F1 1F
	wai		; CB
	lda ($43.b,S),Y		; B3 43
	ora ($1E.b,S),Y		; 13 1E
	dey		; 88
	tsb $FF.b		; 04 FF
	cmp $F4.b,S		; C3 F4
	sbc $032F0F.l,X		; FF 0F 2F 03
	dey		; 88
	dec A		; 3A
	lda ($4F.b,X)		; A1 4F
	jsr $E012.w		; 20 12 E0
	ora ($EB.b)		; 12 EB
	dey		; 88
	cmp ($52.b,X)		; C1 52
	brk $2F.b		; 00 2F
	beq   1.b		; F0 01
	xce		; FB
	sbc $88.b,S		; E3 88
	and $0E.b,S		; 23 0E
	and $CB41EF.l,X		; 3F EF 41 CB
	cop $31.b		; 02 31
	dey		; 88
	rol $E101.w		; 2E 01 E1
	and ($BC.b,X)		; 21 BC
	inc $3F.b		; E6 3F
	brk $88.b		; 00 88
	rol $1FF2.w		; 2E F2 1F
	phx		; DA
	bit $3F.b		; 24 3F
	ora ($1E.b,X)		; 01 1E
	dey		; 88
	sbc ($1E.b)		; F2 1E
	lda $F13032.l		; AF 32 30 F1
	ora $88F3.w,X		; 1D F3 88
	ora $6091.w,X		; 1D 91 60
	and $13EF10.l		; 2F 10 EF 13
	phd		; 0B
	ldy $EF.b		; A4 EF
	ora $032F11.l		; 0F 11 2F 03
	rol $C2CB.w		; 2E CB C2
	ldy $33.b,X		; B4 33
	ora ($20.b,X)		; 01 20
	stp		; DB
	lda $313F66.l		; AF 66 3F 31
	cpy $ED.b		; C4 ED
	sbc $4015.w		; ED 15 40
	cpx #$0E.b		; E0 0E
	inc $C4F3.w		; EE F3 C4
	eor ($CD.b,S),Y		; 53 CD
	ora ($FF.b),Y		; 11 FF
	inc $1B45.w		; EE 45 1B
	sep #$C0		; E2 C0
	bpl  14.b		; 10 0E
	ldx $0D56.w,Y		; BE 56 0D
	ora ($01.b,X)		; 01 01
	xba		; EB
	cpy #$E5.b		; C0 E5
	eor $1E20D1.l,X		; 5F D1 20 1E
	lda $C0FE65.l		; AF 65 FE C0
	ora ($01.b)		; 12 01
	nop		; EA
	inc $4E.b,X		; F6 4E
	sbc ($10.b,X)		; E1 10
	asl $AFC0.w,X		; 1E C0 AF
	stz $EE.b		; 64 EE
	ora ($01.b),Y		; 11 01
	nop		; EA
	inc $4E.b		; E6 4E
	cpy #$E1.b		; C0 E1
	bpl  47.b		; 10 2F
	lda $0E55.w		; AD 55 0E
	brk $03.b		; 00 03
	cpy #$2C.b		; C0 2C
	ldx #$62.b		; A2 62
	sbc $E924FF.l		; EF FF 24 E9
	cmp $C0.b,X		; D5 C0
	bvc -18.b		; 50 EE
.INDEX 8
	sep #$51		; E2 51
	tsx		; BA
	asl $3F.b,X		; 16 3F
	cmp $04C0.w,X		; DD C0 04
	lsr $469C.w		; 4E 9C 46
	and $35CF.w		; 2D CF 35
	tas		; 1B
	cpy #$A0.b		; C0 A0
	adc $FB.b		; 65 FB
	cmp ($53.b)		; D2 53
	xba		; EB
	cmp ($62.b,S),Y		; D3 62
	cpy #$CB.b		; C0 CB
	pea $BC40.w		; F4 40 BC
	ora $4F.b		; 05 4F
	ldx $C035.w,Y		; BE 35 C0
	and $35CE.w		; 2D CE 35
	trb $43C1.w		; 1C C1 43
	cpx $C0D1.w		; EC D1 C0
	eor ($DC.b)		; 52 DC
	tsb $30.b		; 04 30
	cmp $3E04.w		; CD 04 3E
	cmp $0D33C0.l		; CF C0 33 0D
	bne  51.b		; D0 33
	jsr ($30F2.w,X)		; FC F2 30
	cmp $F4B0.w,X		; DD B0 F4
	rts		; 60

	sta $1C46.w,X		; 9D 46 1C
	lda $B01A26.l,X		; BF 26 1A B0
	cmp $62.b,S		; C3 62
	stp		; DB
	sbc ($63.b,X)		; E1 63
	tyx		; BB
	rol $3E.b		; 26 3E
	bcs -67.b		; B0 BD
	asl $4C.b		; 06 4C
	ldy #$54.b		; A0 54
	xce		; FB
	cmp $E9B055.l		; CF 55 B0 E9
	pea $CC40.w		; F4 40 CC
	cpx $6F.b		; E4 6F
	lda $0CB044.l		; AF 44 B0 0C
	dec $FA36.w		; CE 36 FA
	pea $DC40.w		; F4 40 DC
	sbc $B4.b,S		; E3 B4
	dec A		; 3A
	ldy $50.b,X		; B4 50
	cmp $44F1.w,X		; DD F1 44
	plb		; AB
	eor $B4.b		; 45 B4
	ora $14DF.w		; 0D DF 14
	lsr A		; 4A
	ldy $50.b,X		; B4 50
	cmp $B000.w,X		; DD 00 B0
	and $FA.b		; 25 FA
	pea $DD30.w		; F4 30 DD
	sbc $5F.b,S		; E3 5F
	bcs -80.b		; B0 B0
	eor $FD.b,S		; 43 FD
	inc $EB44.w		; EE 44 EB
	tsb $3F.b		; 04 3F
	dec $E4B0.w,X		; DE B0 E4
	eor $42B1.w		; 4D B1 42
	sbc $43EF.w		; ED EF 43
	cpy $14B0.w		; CC B0 14
	rol $F5DE.w		; 2E DE F5
	bit $41C2.w,X		; 3C C2 41
	sbc $E0B0.w		; ED B0 E0
	eor ($BD.b)		; 52 BD
	bit $1D.b,X		; 34 1D
	dec $1B15.w,X		; DE 15 1B
	bcs -45.b		; B0 D3
	eor ($DD.b,X)		; 41 DD
.INDEX 8
	sep #$50		; E2 50
	ldx $0D44.w		; AE 44 0D
	bcs -34.b		; B0 DE
	and $FA.b		; 25 FA
	pea $DD40.w		; F4 40 DD
	sbc $5F.b,S		; E3 5F
	bcs -81.b		; B0 AF
	mvp $DE,$FD		; 44 FD DE
	eor $EB.b		; 45 EB
	tsb $3F.b		; 04 3F
	bcs -34.b		; B0 DE
	cpx $4D.b		; E4 4D
	lda ($43.b),Y		; B1 43
	sbc $44EE.w,X		; FD EE 44
	bcs -37.b		; B0 DB
	ora $3E.b,X		; 15 3E
	dec $4CF5.w,X		; DE F5 4C
	lda ($52.b)		; B2 52
	bcs -19.b		; B0 ED
	sbc $25CB54.l		; EF 54 CB 25
	rol $F5DE.w		; 2E DE F5
	bcs  60.b		; B0 3C
	lda ($52.b)		; B2 52
	cmp $53EF.w,X		; DD EF 53
	tyx		; BB
	and $B0.b,X		; 35 B0
	and $F6DE.w		; 2D DE F6
	tsa		; 3B
	cmp $51.b,S		; C3 51
	cmp $B0EF.w,X		; DD EF B0
	adc $BC.b,S		; 63 BC
	and $1D.b,X		; 35 1D
	dec $2B06.w,X		; DE 06 2B
	cmp $B0.b,S		; C3 B0
	eor ($DD.b),Y		; 51 DD
	cpx #$62.b		; E0 62
	ldy $0D45.w		; AC 45 0D
	dec $06B0.w,X		; DE B0 06
	rol A		; 2A
	cpy $50.b		; C4 50
	cmp $62E0.w,X		; DD E0 62
	lda $45B0.w		; AD B0 45
	ora $16EE.w		; 0D EE 16
	inc A		; 1A
	pei ($50.b)		; D4 50
	dec $E1B0.w,X		; DE B0 E1
	adc ($AD.b,X)		; 61 AD
	eor $0D.b		; 45 0D
	inc $1A16.w		; EE 16 1A
	bcs -27.b		; B0 E5
	eor $60E2DE.l,X		; 5F DE E2 60
	ldx $FC54.w		; AE 54 FC
	ldy $2F.b,X		; B4 2F
	eor ($AA.b,S),Y		; 53 AA
	eor [$FB.b],Y		; 57 FB
	cmp ($F5.b)		; D2 F5
	dec A		; 3A
	ldy $A5.b,X		; B4 A5
	adc $532FAE.l,X		; 7F AE 2F 53
	tax		; AA
	eor [$FA.b],Y		; 57 FA
	ldy $E2.b,X		; B4 E2
	sbc $39.b,X		; F5 39
	ldx $6E.b,Y		; B6 6E
	ldx $6210.w,Y		; BE 10 62
	bcs -23.b		; B0 E9
	asl $4E.b		; 06 4E
	dec $5EE4.w		; CE E4 5E
	bcc  99.b		; 90 63
	bcs -20.b		; B0 EC
	inc $DA45.w		; EE 45 DA
	asl $3D.b,X		; 16 3D
	dec $B0E5.w,X		; DE E5 B0
	eor $63A1.w,X		; 5D A1 63
	cmp $54EF.w,X		; DD EF 54
	dex		; CA
	rol $B0.b		; 26 B0
	and $F5DE.w		; 2D DE F5
	jmp $62A2.w		; 4C A2 62
	cmp $B0EF.w,X		; DD EF B0
	adc $BB.b,S		; 63 BB
	rol $2D.b,X		; 36 2D
	dec $3B06.w,X		; DE 06 3B
	lda ($B0.b,S),Y		; B3 B0
	adc ($CD.b,X)		; 61 CD
	cpx #$62.b		; E0 62
	ldy $1C46.w		; AC 46 1C
	dec $16B0.w,X		; DE B0 16
	rol A		; 2A
	cpy $60.b		; C4 60
	cmp $61E1.w		; CD E1 61
	lda $45B0.w		; AD B0 45
	tsb $16DE.w		; 0C DE 16
	inc A		; 1A
	cmp $50.b,X		; D5 50
	cmp $E1B0.w		; CD B0 E1
	adc ($AD.b,X)		; 61 AD
	eor $0C.b,X		; 55 0C
	dec $1A16.w,X		; DE 16 1A
	bcs -43.b		; B0 D5
	bvc -50.b		; 50 CE
	sbc ($62.b,X)		; E1 62
	ldy $0C46.w		; AC 46 0C
	bcs -34.b		; B0 DE
	asl $2A.b,X		; 16 2A
	cpy $60.b		; C4 60
	cmp $62E0.w		; CD E0 62
	bcs -84.b		; B0 AC
	lsr $0D.b		; 46 0D
	dec $3A06.w,X		; DE 06 3A
	ldy $61.b,X		; B4 61
	bcs -35.b		; B0 DD
	cpx #$63.b		; E0 63
	tyx		; BB
	rol $1D.b,X		; 36 1D
	dec $B0F6.w,X		; DE F6 B0
	tsa		; 3B
	lda ($61.b,S),Y		; B3 61
	cmp $64EF.w,X		; DD EF 64
	tyx		; BB
	rol $B0.b,X		; 36 B0
	ora $F6DE.w,X		; 1D DE F6
	phk		; 4B
	ldx #$62.b		; A2 62
	cmp $B0EF.w,X		; DD EF B0
	stz $CA.b		; 64 CA
	rol $2D.b		; 26 2D
	dec $5CE5.w,X		; DE E5 5C
	lda ($B0.b,X)		; A1 B0
	.db $62, $DD, $EE		; 62 DD EE
	eor $D9.b,X		; 55 D9
	asl $3E.b,X		; 16 3E
	dec $E4B0.w,X		; DE B0 E4
	ror $6390.w		; 6E 90 63
	sbc $36ED.w		; ED ED 36
	sbc $F6B0.w,Y		; F9 B0 F6
	eor $60D3DE.l		; 4F DE D3 60
	stz $FD55.w,X		; 9E 55 FD
	bcs -19.b		; B0 ED
	rol $1A.b		; 26 1A
	cmp $50.b,X		; D5 50
	cmp $62D1.w,X		; DD D1 62
	bcs -84.b		; B0 AC
	eor $0D.b		; 45 0D
	cmp $3A06.w,X		; DD 06 3A
	cpy $51.b		; C4 51
	bcs -35.b		; B0 DD
	cpx #$63.b		; E0 63
	tyx		; BB
	rol $1D.b,X		; 36 1D
	dec $B0F5.w,X		; DE F5 B0
	jmp $62B2.w		; 4C B2 62
	cmp $55EE.w,X		; DD EE 55
	dex		; CA
	asl $B0.b,X		; 16 B0
	rol $E4DE.w		; 2E DE E4
	eor $63A0.w,X		; 5D A0 63
	sbc $B0EE.w		; ED EE B0
	lsr $EA.b		; 46 EA
	ora $3E.b		; 05 3E
	dec $6FD3.w,X		; DE D3 6F
	sta $FD54B0.l,X		; 9F B0 54 FD
	inc $0A26.w		; EE 26 0A
	sbc $4F.b		; E5 4F
	dec $E1B0.w,X		; DE B0 E1
	adc ($AD.b,X)		; 61 AD
	eor $0D.b		; 45 0D
	inc $2A16.w		; EE 16 2A
	bcs -60.b		; B0 C4
	bvc -35.b		; 50 DD
	cpx #$63.b		; E0 63
	ldy $1D35.w,X		; BC 35 1D
	bcs -34.b		; B0 DE
	inc $4B.b,X		; F6 4B
	lda ($51.b,S),Y		; B3 51
	cmp $54EF.w,X		; DD EF 54
	bcs -53.b		; B0 CB
	and $2E.b		; 25 2E
	cmp $5DE5.w,X		; DD E5 5D
	lda ($52.b,X)		; A1 52
	bcs  -3.b		; B0 FD
	cmp $DA55.w,X		; DD 55 DA
	ora $2F.b,X		; 15 2F
	cmp $B0D4.w,X		; DD D4 B0
	ror $53A1.w		; 6E A1 53
	sbc $46DD.w,X		; FD DD 46
	nop		; EA
	ora $B0.b		; 05 B0
	and $6ED4DD.l,X		; 3F DD D4 6E
	ldy #$53.b		; A0 53
	sbc $B0DD.w,X		; FD DD B0
	lsr $EA.b		; 46 EA
	ora $3F.b		; 05 3F
	cmp $6ED5.w,X		; DD D5 6E
	ldy #$B0.b		; A0 B0
	eor ($FD.b,S),Y		; 53 FD
	cmp $DA55.w,X		; DD 55 DA
	ora $3F.b,X		; 15 3F
	cmp $E6B0.w,X		; DD B0 E6
	eor $52A1.w,X		; 5D A1 52
	sbc $65DE.w,X		; FD DE 65
	wai		; CB
	bcs  37.b		; B0 25
	and $4BE7DC.l		; 2F DC E7 4B
	lda ($52.b)		; B2 52
	sbc $CFB0.w		; ED B0 CF
	stz $BB.b,X		; 74 BB
	and $2E.b		; 25 2E
	jmp.w [$3BF7]		; DC F7 3B
	cpy #$E1.b		; C0 E1
	and ($FE.b,X)		; 21 FE
	cpx #$41.b		; E0 41
	dec $1F12.w,X		; DE 12 1F
	cpy $F0.b		; C4 F0
	and $EC.b,S		; 23 EC
	ora ($1F.b,S),Y		; 13 1F
	sbc $C43D03.l		; EF 03 3D C4
	cmp ($32.b,X)		; C1 32
	inc $33E1.w		; EE E1 33
	cmp $2E13.w		; CD 13 2E
	cpy #$ED.b		; C0 ED
	sep #$40		; E2 40
	cmp $DE1E23.l,X		; DF 23 1E DE
	and ($B0.b,S),Y		; 33 B0
	nop		; EA
	sbc $62.b,S		; E3 62
	tsx		; BA
	sbc [$6E.b]		; E7 6E
	ldx $C046.w		; AE 46 C0
	ora $43DF.w,X		; 1D DF 43
	sbc $30F2.w		; ED F2 30
	cmp $C404.w,X		; DD 04 C4
	sbc $21E3.w		; ED E3 21
	cpx $4E03.w		; EC 03 4E
	cmp $1DC432.l		; CF 32 C4 1D
	bne  52.b		; D0 34
	cpx $21F3.w		; EC F3 21
	cmp $C403.w,X		; DD 03 C4
	lsr $23CF.w		; 4E CF 23
	ora $34D0.w,X		; 1D D0 34
	sbc $C4E2.w		; ED E2 C4
	and ($DD.b),Y		; 31 DD
	ora $3F.b,S		; 03 3F
	dec $2E22.w,X		; DE 22 2E
	cmp $2F04C0.l		; CF C0 04 2F
	sbc $CF1E13.l		; EF 13 1E CF
	and ($0E.b,S),Y		; 33 0E
	cpy #$E1.b		; C0 E1
	and ($FC.b)		; 32 FC
	sbc ($20.b)		; F2 20
	inc $2F02.w		; EE 02 2F
	bcs -66.b		; B0 BE
	and ($0C.b,S),Y		; 33 0C
	sbc ($32.b,X)		; E1 32
	ora $2FF2.w		; 0D F2 2F
	ldy $C3.b,X		; B4 C3
	and ($0E.b),Y		; 31 0E
	sbc ($21.b,X)		; E1 21
	cmp $1032.w,X		; DD 32 10
	ldy $CD.b		; A4 CD
	and $19.b,S		; 23 19
	dec $41.b		; C6 41
	trb $20D2.w		; 1C D2 20
	ldy #$BB.b		; A0 BB
	cop $44.b		; 02 44
	ora $C00B01.l		; 0F 01 0B C0
	and $A4.b,S		; 23 A4
	asl $1EE0.w,X		; 1E E0 1E
	cmp $30.b,S		; C3 30
	and ($EF.b,X)		; 21 EF
	ora $41DEA4.l		; 0F A4 DE 41
	ora ($0F.b)		; 12 0F
	ora $0102FD.l		; 0F FD 02 01
	sei		; 78
	inc $B0CE.w,X		; FE CE B0
	eor $0B.b,X		; 55 0B
	ora ($1E.b)		; 12 1E
	cpy #$74.b		; C0 74
	brk $50.b		; 00 50
	cmp ($15.b),Y		; D1 15
	phd		; 0B
	cmp $EF23.w		; CD 23 EF
	stz $14.b,X		; 74 14
	eor $DB.b,S		; 43 DB
	cpx #$0D.b		; E0 0D
	cop $15.b		; 02 15
	asl $0160.w,X		; 1E 60 01
	eor $F03EDE.l		; 4F DE 3E F0
	plb		; AB
	sbc ($EC.b,S),Y		; F3 EC
	stz $35.b,X		; 74 35
	beq -68.b		; F0 BC
	pei ($1F.b)		; D4 1F
	beq  52.b		; F0 34
	eor $F0A678.l,X		; 5F 78 A6 F0
	and $B04EE4.l		; 2F E4 4E B0
	and $CB74E1.l,X		; 3F E1 74 CB
	pea $F350.w		; F4 50 F3
	sbc $31ED2E.l,X		; FF 2E ED 31
	stz $FF.b,X		; 74 FF
	and $04EE03.l,X		; 3F 03 EE 04
	sbc $74E1EF.l,X		; FF EF E1 74
	rol $21F4.w		; 2E F4 21
	bpl -16.b		; 10 F0
	sbc $34AE.w,X		; FD AE 34
	sei		; 78
	cmp $DC4FF1.l,X		; DF F1 4F DC
	ora ($0F.b,S),Y		; 13 0F
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	sei		; 78
	sbc $50E2.w,X		; FD E2 50
	lda $6FE4.w		; AD E4 6F
	dec $8432.w,X		; DE 32 84
	and ($FF.b,X)		; 21 FF
	brk $0D.b		; 00 0D
	cmp ($13.b),Y		; D1 13
	ora $457401.l		; 0F 01 74 45
	xba		; EB
	sta ($F0.b),Y		; 91 F0
	ora ($F6.b,X)		; 01 F6
	jsr $80E1.w		; 20 E1 80
	and ($FF.b)		; 32 FF
	jmp.w [$01E0]		; DC E0 01
	ora $6EF5.w,X		; 1D F5 6E
	tya		; 98
	bit $EE.b		; 24 EE
	rti		; 40

	cpx BG3HOFS.w		; EC 11 21
	rol $B04D.w		; 2E 4D B0
	bpl  -3.b		; 10 FD
	bcs  66.b		; B0 42
	and $FE.b,S		; 23 FE
	bpl -68.b		; 10 BC
	bcs  51.b		; B0 33
	bit $1D.b		; 24 1D
	sbc ($0D.b),Y		; F1 0D
	cmp ($43.b,X)		; C1 43
	and $33DFB0.l		; 2F B0 DF 33
	cmp #$04.b		; C9 04
	and $1E.b,S		; 23 1E
	sbc ($2C.b,S),Y		; F3 2C
	cpy #$D0.b		; C0 D0
	and ($10.b,X)		; 21 10
	sbc $13DC22.l,X		; FF 22 DC 13
	ora ($C0.b),Y		; 11 C0
	asl $2EF2.w		; 0E F2 2E
	cpy #$21.b		; C0 21
	bpl -16.b		; 10 F0
	and ($C4.b)		; 32 C4
	ldx $F052.w,Y		; BE 52 F0
	sbc $E40B03.l,X		; FF 03 0B E4
	eor $F0FFC4.l		; 4F C4 FF F0
	bmi -51.b		; 30 CD
	mvp $FF,$FF		; 44 FF FF
	cop $C4.b		; 02 C4
	bit $5FC4.w		; 2C C4 5F
	bne -16.b		; D0 F0
	and ($CB.b)		; 32 CB
	and $C4.b,X		; 35 C4
	asl $13FE.w		; 0E FE 13
	bit $50B3.w		; 2C B3 50
	sbc $23C0F0.l		; EF F0 C0 23
	phd		; 0B
	cmp ($41.b,S),Y		; D3 41
	inc $40F2.w,X		; FE F2 40
	ldy $34C0.w,X		; BC C0 34
	ora $1C14EE.l,X		; 1F EE 14 1C
	rep #$42		; C2 42
	inc $F1C0.w,X		; FE C0 F1
	and ($DB.b)		; 32 DB
	trb $2F.b		; 14 2F
	sbc $C02D03.l		; EF 03 2D C0
	bcs  66.b		; B0 42
	sbc $EB22F0.l,X		; FF F0 22 EB
	tsb $2F.b		; 04 2F
	cpy $00.b		; C4 00
	ora ($0C.b)		; 12 0C
	pei ($4F.b)		; D4 4F
	bne   0.b		; D0 00
	and ($C4.b,X)		; 21 C4
	jmp.w [$FD35]		; DC 35 FD
	brk $02.b		; 00 02
	ora $5FC3.w,X		; 1D C3 5F
	cpy #$FF.b		; C0 FF
	beq  18.b		; F0 12
	jsr ($2FF3.w,X)		; FC F3 2F
	beq   1.b		; F0 01
	cpy #$2F.b		; C0 2F
	cmp $00FF32.l		; CF 32 FF 00
	ora ($FC.b),Y		; 11 FC
	ora $B0.b,S		; 03 B0
	rol $01F0.w,X		; 3E F0 01
	bit $61B2.w		; 2C B2 61
	cpx #$10.b		; E0 10
	bcs  31.b		; B0 1F
	cmp $11FF42.l		; CF 42 FF 11
	asl $42D0.w		; 0E D0 42
	ldy #$EE.b		; A0 EE
	ora ($1F.b),Y		; 11 1F
	sta $0D56.w,X		; 9D 56 0D
	ora ($11.b,X)		; 01 11
	ldy #$CA.b		; A0 CA
	ora [$3D.b]		; 07 3D
	sbc ($01.b,X)		; E1 01
	xce		; FB
	pei ($60.b)		; D4 60
	ldy $E2.b		; A4 E2
	brk $0C.b		; 00 0C
	pea $CF6F.w		; F4 6F CF
	ora ($FE.b),Y		; 11 FE
	tay		; A8
	pea $AE30.w		; F4 30 AE
	and ($FE.b,S),Y		; 33 FE
	cmp ($43.b)		; D2 43
	jmp.w [$E4A8]		; DC A8 E4
	rol $34EE.w		; 2E EE 34
	bit $30B2.w		; 2C B2 30
	sbc $31E4A8.l		; EF A8 E4 31
	cmp $FF22.w		; CD 22 FF
	sbc ($14.b,X)		; E1 14
	ora $D094.w		; 0D 94 D0
	jsr $DFBC.w		; 20 BC DF
	rol $4F.b,X		; 36 4F
	sbc ($FB.b,S),Y		; F3 FB
	tya		; 98
	ora ($E3.b,S),Y		; 13 E3
	eor ($A1.b,X)		; 41 A1
	asl $0FD2.w,X		; 1E D2 0F
	trb $88.b		; 14 88
	jmp $2EA0.w		; 4C A0 2E
	ora $1212.w		; 0D 12 12
	and $E670A1.l		; 2F A1 70 E6
	lsr $4FB1.w,X		; 5E B1 4F
.ACCU 8
	sep #$2E		; E2 2E
	dec $70DD.w		; CE DD 70
	cop $32.b		; 02 32
	cmp $2917.w,X		; DD 17 29
	bcs  30.b		; B0 1E
	plb		; AB
	sty $33.b		; 84 33
	sbc $3FF3.w		; ED F3 3F
	cmp $0E03.w,X		; DD 03 0E
	sbc ($84.b)		; F2 84
	bmi  13.b		; 30 0D
	pea $D00D.w		; F4 0D D0
	and ($0F.b),Y		; 31 0F
	ora ($71.b),Y		; 11 71
	eor ($BB.b),Y		; 51 BB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	and ($2E.b,S),Y		; 33 2E
	sbc ($C1.b,X)		; E1 C1
	sbc $F110C2.l		; EF C2 10 F1
	bra  34.b		; 80 22
	and ($EC.b)		; 32 EC
	dex		; CA
	and ($F2.b,X)		; 21 F2
	inc $9415.w,X		; FE 15 94
	asl $D00F.w		; 0E 0F D0
	and ($14.b,X)		; 21 14
	brk $EE.b		; 00 EE
	and $FFEE84.l,X		; 3F 84 EE FF
	sbc $025F.w,X		; FD 5F 02
	and $2132.w,X		; 3D 32 21
	bra  17.b		; 80 11
	tsb $14.b		; 04 14
	and $1FF0BD.l		; 2F BD F0 1F
	phd		; 0B
	bcc -34.b		; 90 DE
	sbc ($20.b,X)		; E1 20
	sbc ($E2.b,S),Y		; F3 E2
	eor ($12.b)		; 52 12
	bpl -128.b		; 10 80
	and ($B1.b)		; 32 B1
	plx		; FA
	bne -76.b		; D0 B4
	and $E0.b,X		; 35 E0
	ldx #$90.b		; A2 90
	eor $E1C0.w		; 4D C0 E1
	rti		; 40

	trb $1B.b		; 14 1B
	beq  32.b		; F0 20
	bcc -19.b		; 90 ED
	lda $3A.b,S		; A3 3A
	rol $E4E0.w,X		; 3E E0 E4
	ldy $90CB.w,X		; BC CB 90
	ora $A322B1.l		; 0F B1 22 A3
	tsb $CF24.w		; 0C 24 CF
	jsr $D1A4.w		; 20 A4 D1
	pld		; 2B
	cmp $5B.b,X		; D5 5B
	sbc $1F.b,S		; E3 1F
	dec $3C.b		; C6 3C
	bcs -16.b		; B0 F0
	.db $42, $E1		; 42 E1
	rol $0EF0.w,X		; 3E F0 0E
	sbc ($0E.b,X)		; E1 0E
	ldy $0F.b,X		; B4 0F
	and $03FF30.l		; 2F 30 FF 03
	sbc ($21.b,X)		; E1 21
	cmp $E320B0.l		; CF B0 20 E3
	ora ($CB.b)		; 12 CB
	jsr ($51AF.w,X)		; FC AF 51
	cmp ($B4.b)		; D2 B4
	ora $2C13.w		; 0D 13 2C
	sbc ($01.b)		; F2 01
	and ($DD.b),Y		; 31 DD
	dec $FFB4.w,X		; DE B4 FF
	mvp $3E,$1D		; 44 1D 3E
.INDEX 8
	sep #$12		; E2 12
	sbc ($F0.b,X)		; E1 F0
	ldy $2D.b,X		; B4 2D
	lsr $D4CD.w,X		; 5E CD D4
	sbc ($5E.b,S),Y		; F3 5E
	asl $B4D2.w		; 0E D2 B4
	bpl  36.b		; 10 24
.ACCU 16
	rep #$E3		; C2 E3
	cpy #$DE.b		; C0 DE
	ora $B854.w,X		; 1D 54 B8
	inc $01D2.w		; EE D2 01
	sbc $EF.b,X		; F5 EF
	bpl  -2.b		; 10 FE
	ldx $B4.b,Y		; B6 B4
	lda ($21.b),Y		; B1 21
	adc ($3B.b,X)		; 61 3B
	cpy #$21.b		; C0 21
	trb $B2.b		; 14 B2
	cpy $21.b		; C4 21
	cpx $03FE.w		; EC FE 03
	ora ($0E.b,S),Y		; 13 0E
	inc $C803.w,X		; FE 03 C8
	cpx #$FF.b		; E0 FF
	jsr $F00D.w		; 20 0D F0
	eor ($3D.b,X)		; 41 3D
	cmp $13DEC4.l,X		; DF C4 DE 13
	and ($FF.b,X)		; 21 FF
	sbc ($2C.b)		; F2 2C
	cmp $5BB802.l		; CF 02 B8 5B
	lda $35E4.w,X		; BD E4 35
	ora $5AF0.w,Y		; 19 F0 5A
	ldx #$C8.b		; A2 C8
	and $20.b,S		; 23 20
	dec $13F2.w		; CE F2 13
	cpx #$E2.b		; E0 E2
	ora ($C4.b,X)		; 01 C4
	stp		; DB
	cmp ($34.b,S),Y		; D3 34
	asl $F2DE.w,X		; 1E DE F2
	and $0F.b,S		; 23 0F
	iny		; C8
	bpl  -4.b		; 10 FC
	and $3F.b		; 25 3F
	cmp $3200.w		; CD 00 32
	and $FEC4.w		; 2D C4 FE
	ora ($ED.b,X)		; 01 ED
	cmp ($44.b)		; D2 44
	asl $12DD.w		; 0E DD 12
	iny		; C8
	asl $0E0F.w,X		; 1E 0F 0E
	beq  68.b		; F0 44
	sbc $F4D0.w,X		; FD D0 F4
	iny		; C8
	ora ($E0.b),Y		; 11 E0
	brk $CE.b		; 00 CE
	bit $5D.b,X		; 34 5D
	jmp.w [$C8F3]		; DC F3 C8
	ora ($00.b,S),Y		; 13 00
	bne  28.b		; D0 1C
	sbc $41.b		; E5 41
	sbc $C4EF.w		; ED EF C4
	cpx #$23.b		; E0 23
	jsr $BD0E.w		; 20 0E BD
	and $30.b,X		; 35 30
	cmp $E2C4.w		; CD C4 E2
	eor ($00.b,X)		; 41 00
	ora $3F36AD.l,X		; 1F AD 36 3F
	jmp.w [$E0C4]		; DC C4 E0
	eor ($1E.b,S),Y		; 53 1E
	brk $BD.b		; 00 BD
	rol $2F.b,X		; 36 2F
	cpy $E1C4.w		; CC C4 E1
	stz $FC.b		; 64 FC
	ora ($DC.b,X)		; 01 DC
	rol $2D.b,X		; 36 2D
	cmp $F2C4.w		; CD C4 F2
	eor ($FE.b,S),Y		; 53 FE
	sbc ($CE.b),Y		; F1 CE
	eor $0D.b		; 45 0D
	dec $F3C4.w		; CE C4 F3
	adc ($EE.b,X)		; 61 EE
	ora $53D2.w,X		; 1D D2 53
	jmp.w [$C8DF]		; DC DF C8
	and ($EB.b,S),Y		; 33 EB
	pea $63ED.w		; F4 ED 63
	nop		; EA
	sbc ($22.b),Y		; F1 22
	iny		; C8
	eor $D44EAF.l		; 4F AF 4E D4
	eor $2401AF.l,X		; 5F AF 01 24
	cpy $40.b		; C4 40
	sbc $4FF50C.l		; EF 0C F5 4F
	cmp $44EF.w,X		; DD EF 44
	cpy $1E.b		; C4 1E
	beq -34.b		; F0 DE
	mvp $DE,$0D		; 44 0D DE
	ora $50.b,S		; 03 50
	cpy #$11.b		; C0 11
	tsb $42D2.w		; 0C D2 42
	asl $04CC.w		; 0E CC 04
	and ($C8.b),Y		; 31 C8
	and $2E05.w		; 2D 05 2E
	lda ($F1.b),Y		; B1 F1
	bit $DC.b,X		; 34 DC
	sbc ($C4.b,S),Y		; F3 C4
	cpy #$53.b		; C0 53
	sbc $14DE.w,X		; FD DE 14
	rti		; 40

	cmp $31C8D0.l,X		; DF D0 C8 31
	cmp $0402.w		; CD 02 04
	ora $E0C3.w,X		; 1D C3 E0
	.db $42, $C8		; 42 C8
	xba		; EB
	bpl  17.b		; 10 11
	lsr $1EB0.w,X		; 5E B0 1E
	eor ($0B.b),Y		; 51 0B
	iny		; C8
	ora $B04E13.l		; 0F 13 4E B0
	ora $110A32.l,X		; 1F 32 0A 11
	cpy #$CD.b		; C0 CD
	trb $30.b		; 14 30
	cpx $41F2.w		; EC F2 41
	sbc $C8CD.w,X		; FD CD C8
	lsr $1FCF.w		; 4E CF 1F
	bvc  11.b		; 50 0B
	ora ($F4.b,X)		; 01 F4
	rol $EDC4.w,X		; 3E C4 ED
	inc $2E34.w		; EE 34 2E
	dec $51F3.w		; CE F3 51
	inc $00C8.w		; EE C8 00
	bvc -19.b		; 50 ED
	ora $CF2E23.l		; 0F 23 2E CF
	ora $C8.b,S		; 03 C8
	and ($CE.b),Y		; 31 CE
	beq  52.b		; F0 34
	tsb $F4D1.w		; 0C D1 F4
	and $10CEC8.l,X		; 3F C8 CE 10
	and $EC.b		; 25 EC
	sbc $C00F15.l,X		; FF 15 0F C0
	iny		; C8
	sbc ($41.b)		; F2 41
	cmp $420F.w,X		; DD 0F 42
	ora $03D1.w		; 0D D1 03
	cpy $43.b		; C4 43
	sbc $24EE.w,X		; FD EE 24
	rol $F2DE.w		; 2E DE F2
	eor ($C4.b),Y		; 51 C4
	sbc $33D1.w		; ED D1 33
	asl $F4EE.w		; 0E EE F4
	eor $E2C4DE.l		; 4F DE C4 E2
	and ($EE.b,S),Y		; 33 EE
	cmp $FD2E24.l,X		; DF 24 2E FD
	cop $C4.b		; 02 C4
	bmi -18.b		; 30 EE
	sbc $DE1D43.l		; EF 43 1D DE
	and $3E.b,S		; 23 3E
	clv		; B8
	ora $9F5B35.l		; 0F 35 5B 9F
	sbc [$50.b],Y		; F7 50
	plb		; AB
	cop $C4.b		; 02 C4
	tsb $3F.b		; 04 3F
	sbc $32E3.w		; ED E3 32
	inc $24EF.w		; EE EF 24
	cpy $1E.b		; C4 1E
	dec $2013.w,X		; DE 13 20
	inc $33E1.w		; EE E1 33
	inc $DFC4.w,X		; FE C4 DF
	and $2E.b,S		; 23 2E
	inc $41F2.w		; EE F2 41
	sbc $B4E1.w		; ED E1 B4
	eor $1B.b,X		; 55 1B
	ldx $4F26.w,Y		; BE 26 4F
	tyx		; BB
	sbc $42.b,X		; F5 42
	ldy $DD.b,X		; B4 DD
	cmp $CA1D47.l		; CF 47 1D CA
	and $6F.b		; 25 6F
	ldy $E1B4.w,X		; BC B4 E1
	adc $E9.b,X		; 75 E9
	cmp $AD3D55.l		; CF 55 3D AD
	ora $B4.b,X		; 15 B4
	eor ($BC.b),Y		; 51 BC
	cmp $63.b,S		; C3 63
	cpx $44DE.w		; EC DE 44
	and $D4CCB4.l,X		; 3F B4 CC D4
	.db $62, $DB, $E2		; 62 DB E2
	and ($1D.b,S),Y		; 33 1D
	cpy $E2B0.w		; CC B0 E2
	eor $0D.b,S		; 43 0D
	ldx $3035.w,Y		; BE 35 30
	jmp.w [$B4D2]		; DC D2 B4
	and $1213BF.l		; 2F BF 13 12
	sbc $51B2.w,X		; FD B2 51
	sbc $51FFB8.l,X		; FF B8 FF 51
	sbc $4DF4B2.l,X		; FF B2 F4 4D
	cmp $B422.w,X		; DD 22 B4
	and ($10.b)		; 32 10
	stp		; DB
	bit $10.b		; 24 10
	inc $33E0.w,X		; FE E0 33
	clv		; B8
	jsr ($54FF.w,X)		; FC FF 54
	inc $13B2.w		; EE B2 13
	ora ($ED.b,X)		; 01 ED
	ldy $BE.b,X		; B4 BE
	eor ($0F.b,S),Y		; 53 0F
	jsr ($42F3.w,X)		; FC F3 42
	jsr ($B4DD.w,X)		; FC DD B4
	eor $2E.b		; 45 2E
	ldx $3122.w,Y		; BE 22 31
	jsr ($52B3.w,X)		; FC B3 52
	ldy $FE.b,X		; B4 FE
	inc $50F4.w		; EE F4 50
	jmp.w [$44FF]		; DC FF 44
	trb $B0B4.w		; 1C B4 B0
	eor $1F.b,S		; 43 1F
	sbc $51C4.w		; ED C4 51
	inc $B4EE.w		; EE EE B4
	bit $3F.b		; 24 3F
	dec $43F0.w		; CE F0 43
	tsb $53C0.w		; 0C C0 53
	bcs  68.b		; B0 44
	plx		; FA
	lda ($44.b,X)		; A1 44
	ora $62F5CB.l,X		; 1F CB F5 62
	clv		; B8
	sbc ($3F.b,S),Y		; F3 3F
	eor $26CE.w		; 4D CE 26
	ora $0FEE.w,X		; 1D EE 0F
	clv		; B8
	mvn $E3,$DC		; 54 DC E3
	sbc $31.b,S		; E3 31
	lda $0104.w,X		; BD 04 01
	ldy $41.b,X		; B4 41
	stp		; DB
	sbc ($51.b,S),Y		; F3 51
	sbc $36DD.w,X		; FD DD 36
	and $F3B8.w		; 2D B8 F3
	cop $3F.b		; 02 3F
	cmp $0105.w		; CD 05 01
	ora $B8DF.w,X		; 1D DF B8
	bit $1C.b,X		; 34 1C
	sbc $DD541D.l,X		; FF 1D 54 DD
	sbc ($11.b,X)		; E1 11
	clv		; B8
	and $41D1FE.l,X		; 3F FE D1 41
	asl $13ED.w,X		; 1E ED 13
	rti		; 40

	ldy $0F.b,X		; B4 0F
	cpy $52F4.w		; CC F4 52
	jmp.w [$23E0]		; DC E0 23
	bmi -76.b		; 30 B4
	stp		; DB
	cpx $32.b		; E4 32
	asl $25CD.w		; 0E CD 25
	bmi -20.b		; 30 EC
	ldy $DF.b,X		; B4 DF
	eor $0E.b,X		; 55 0E
	dec WRMPYA.w		; CE 02 42
	inc $B4CD.w,X		; FE CD B4
	eor $20.b,S		; 43 20
	cmp $43E1.w,X		; DD E1 43
	ora $B8F4CC.l,X		; 1F CC F4 B8
	trb $21ED.w		; 1C ED 21
	eor ($DF.b,X)		; 41 DF
	sbc $A430E5.l,X		; FF E5 30 A4
	jsr ($F6BB.w,X)		; FC BB F6
	adc ($ED.b)		; 72 ED
	cpy $7EF7.w		; CC F7 7E
	ldy $DB.b		; A4 DB
	sbc $F10E46.l		; EF 46 0E F1
	wai		; CB
	eor $1D.b,X		; 55 1D
	ldy $FF.b		; A4 FF
	cpy #$53.b		; C0 53
	ora ($1B.b,X)		; 01 1B
	lda $A40065.l		; AF 65 00 A4
	wai		; CB
	sbc $51.b		; E5 51
	beq -19.b		; F0 ED
.ACCU 16
	rep #$62		; C2 62
	inc $EDA4.w,X		; FE A4 ED
	sbc $3F.b,X		; F5 3F
	sbc ($2C.b),Y		; F1 2C
	lda ($42.b),Y		; B1 42
	ora ($A4.b,X)		; 01 A4
	cpx $41E3.w		; EC E3 41
	beq  14.b		; F0 0E
	dec $0F44.w,X		; DE 44 0F
	tay		; A8
	sbc $D04C22.l,X		; FF 22 4C D0
	bmi -47.b		; 30 D1
	ora ($E0.b)		; 12 E0
	bcc  65.b		; 90 41
	dex		; CA
	cmp ($42.b,S),Y		; D3 42
	sbc $D5FA22.l,X		; FF 22 FA D5
	bcc  66.b		; 90 42
	inc $15DC.w		; EE DC 15
	and $72D4.w		; 2D D4 72
	dex		; CA
	tya		; 98
	ror $CD01.w		; 6E 01 CD
	sbc [$5D.b]		; E7 5D
	cmp $94FF02.l,X		; DF 02 FF 94
	sbc $0E44.w		; ED 44 0E
	beq -19.b		; F0 ED
	and $0E.b,X		; 35 0E
	sbc ($90.b,S),Y		; F3 90
	eor $45D1CD.l		; 4F CD D1 45
	trb $F2CD.w		; 1C CD F2
	eor $94.b,S		; 43 94
	ldx $2C27.w		; AE 27 2C
	lda $1342.w,X		; BD 42 13
	jsr ($94DE.w,X)		; FC DE 94
	bit $2E.b,X		; 34 2E
	sbc $E1EC33.l		; EF 33 EC E1
	bmi  33.b		; 30 21
	tya		; 98
	cmp ($03.b,X)		; C1 03
	bpl  -3.b		; 10 FD
	sbc ($32.b)		; F2 32
	jmp.w [$84F4]		; DC F4 84
	eor ($D2.b),Y		; 51 D2
	and $F11EC0.l,X		; 3F C0 1E F1
	and ($26.b),Y		; 31 26
	tya		; 98
	xba		; EB
	ora $15.b,S		; 03 15
	sbc $13EF.w		; ED EF 13
	ora ($E1.b,X)		; 01 E1
	sty $0D.b,X		; 94 0D
	sbc $BD1D45.l		; EF 45 1D BD
	and ($10.b,S),Y		; 33 10
	ora $34CD84.l		; 0F 84 CD 34
	sbc $DE33.w		; ED 33 DE
	and $1D.b		; 25 1D
	cpx #$88.b		; E0 88
	cmp $2EEC71.l,X		; DF 71 EC 2E
	tas		; 1B
	adc $2F.b,S		; 63 2F
	lda #$1398.w		; A9 98 13
	eor ($EC.b,X)		; 41 EC
	bne  66.b		; D0 42
	rol $F0FE.w		; 2E FE F0
	sty $F2.b,X		; 94 F2
	and ($FF.b),Y		; 31 FF
	inc $3302.w,X		; FE 02 33
	sbc $94FD.w,X		; FD FD 94
	sbc ($44.b,X)		; E1 44
	inc $E00E.w,X		; FE 0E E0
	trb $1E.b		; 14 1E
	sbc $140098.l,X		; FF 98 00 14
	sbc $21EF.w,X		; FD EF 21
	sbc ($3D.b)		; F2 3D
	bne -120.b		; D0 88
	rti		; 40

	asl $DB51.w		; 0E 51 DB
	ora $0E.b		; 05 0E
	pea $883E.w		; F4 3E 88
	bcs  16.b		; B0 10
	cmp ($54.b),Y		; D1 54
	plx		; FA
	beq  15.b		; F0 0F
	and $84.b,S		; 23 84
	mvn $CC,$FD		; 54 FD CC
	sbc $43.b,X		; F5 43
	cmp $800010.l,X		; DF 10 00 80
	brk $0D.b		; 00 0D
	sbc ($41.b)		; F2 41
	inc $12F1.w		; EE F1 12
	jsl $DFBC70.l		; 22 70 BC DF
	cmp $C33E46.l,X		; DF 46 3E C3
	mvp $78,$1F		; 44 1F 78
	and $2D00E3.l,X		; 3F E3 00 2D
	jsr ($E043.w,X)		; FC 43 E0
	ora ($74.b)		; 12 74
	lsr $F0CC.w,X		; 5E CC F0
	pei ($76.b)		; D4 76
	sbc $3DA3.w,Y		; F9 A3 3D
	stz $C2.b,X		; 74 C2
	and ($11.b)		; 32 11
	sbc $3104DF.l,X		; FF DF 04 31
	inc $F274.w		; EE 74 F2
	dec $30E3.w,X		; DE E3 30
	ora ($20.b),Y		; 11 20
	jsr ($78D0.w,X)		; FC D0 78
	and $CE23.w,X		; 3D 23 CE
	cmp $E01134.l,X		; DF 34 11 E0
	cpx $3078.w		; EC 78 30
	cop $3F.b		; 02 3F
	cmp ($0C.b),Y		; D1 0C
	inc $4D.b		; E6 4D
	beq 120.b		; F0 78
	cop $D0.b		; 02 D0
	sbc ($B2.b)		; F2 B2
	and $EE.b,X		; 35 EE
	sbc ($FF.b,X)		; E1 FF
	stz $90.b		; 64 90
	eor $13.b		; 45 13
	ora $CE10BD.l,X		; 1F BD 10 CE
	mvp $0F,$78		; 44 78 0F
	sbc ($FB.b),Y		; F1 FB
	.db $42, $3E		; 42 3E
	sbc ($2D.b,X)		; E1 2D
.ACCU 16
.INDEX 16
	rep #$70		; C2 70
	cmp $44E4EE.l,X		; DF EE E4 44
	bpl  -3.b		; 10 FD
	dec $6813.w		; CE 13 68
	ldy #$D130.w		; A0 30 D1
	ora ($FF.b)		; 12 FF
	adc $54D9.w		; 6D D9 54
	rts		; 60

	inc $54D2.w		; EE D2 54
	asl $DB33.w,X		; 1E 33 DB
	cmp $236401.l		; CF 01 64 23
	stp		; DB
	ora $0F64E1.l,X		; 1F E1 64 0F
	asl $60A0.w,X		; 1E A0 60
	jmp.w [$14EE]		; DC EE 14
	and ($F1.b),Y		; 31 F1
	and ($DE.b)		; 32 DE
	inc $BD60.w		; EE 60 BD
	trb $53.b		; 14 53
	bpl  15.b		; 10 0F
	asl $C3DC.w		; 0E DC C3
	stz $41.b		; 64 41
	tsb $10BE.w		; 0C BE 10
	ora ($20.b)		; 12 20
	sbc ($1B.b),Y		; F1 1B
	stz $00.b		; 64 00
	ora ($00.b,X)		; 01 00
	ora ($1F.b)		; 12 1F
	cmp ($C1.b)		; D2 C1
	cmp ($50.b)		; D2 50
	adc $56.b,S		; 63 56
	lsr $C399.w,X		; 5E 99 C3
	eor ($DA.b,S),Y		; 53 DA
	lda $2F0351.l,X		; BF 51 03 2F
	sbc $0024.w		; ED 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	ora $1D0F3F.l,X		; 1F 3F 0F 1D
	beq -27.b		; F0 E5
	tay		; A8
	pei ($F3.b)		; D4 F3
	sbc $C1.b,S		; E3 C1
	dec $7D3B.w		; CE 3B 7D
	eor $3DB8.w,X		; 5D B8 3D
	jmp $001E.w		; 4C 1E 00
	sbc $F2.b,S		; E3 F2
	ora ($F2.b,X)		; 01 F2
	ldy $02.b,X		; B4 02
	inc $0FFC.w		; EE FC 0F
	ora ($13.b),Y		; 11 13
	jsr $B42E.w		; 20 2E B4
	inc $F0D0.w		; EE D0 F0
	and $C00251.l,X		; 3F 51 02 C0
	cmp $C0CCB0.l		; CF B0 CC C0
	sbc $45.b,X		; F5 45
	eor ($1C.b,X)		; 41 1C
	cpy $B0CE.w		; CC CE B0
	sbc ($54.b)		; F2 54
	adc $1F.b,S		; 63 1F
	ldy $FEBB.w,X		; BC BB FE
	mvn $11,$B4		; 54 B4 11
	cpy #$B0.b		; C0 B0
	beq  18.b		; F0 12
	and $F2.b		; 25 F2
	sbc $FBB4.w		; ED B4 FB
	asl $F604.w,X		; 1E 04 F6
	ora ($1C.b),Y		; 11 1C
	jsr ($B4E0.w,X)		; FC E0 B4
	sbc ($4F.b),Y		; F1 4F
	adc $A1C02F.l,X		; 7F 2F C0 A1
	sbc $31C45F.l		; EF 5F C4 31
	ora ($EF.b,X)		; 01 EF
	sbc $03120F.l		; EF 0F 12 03
	sbc ($B0.b)		; F2 B0
	bvc  26.b		; 50 1A
	phx		; DA
	bcc -42.b		; 90 D6
	eor $70.b		; 45 70
	tsa		; 3B
	cpy #$EE.b		; C0 EE
	cpy #$F2.b		; C0 F2
	and ($4F.b),Y		; 31 4F
	asl $DFEF.w,X		; 1E EF DF
	cpy #$F0.b		; C0 F0
	rti		; 40

	eor ($00.b,X)		; 41 00
	cmp $411FDE.l		; CF DE 1F 41
	cpy #$32.b		; C0 32
	sbc ($CF.b),Y		; F1 CF
	sbc $322F.w		; ED 2F 32
	ora ($E1.b,S),Y		; 13 E1
	cpy #$DE.b		; C0 DE
	jsr ($2410.w,X)		; FC 10 24
	ora $EF.b,S		; 03 EF
	cpx $C4FD.w		; EC FD C4
	bmi  19.b		; 30 13
	cmp $C0.b,S		; C3 C0
	ora STAT77.w		; 0D 3E 21
	ora ($B4.b,S),Y		; 13 B4
	sta ($AF.b,S),Y		; 93 AF
	jsr ($255E.w,X)		; FC 5E 25
	inc $A3.b,X		; F6 A3
	sta $5FFDB4.l,X		; 9F B4 FD 5F
	asl $E7.b,X		; 16 E7
	sta ($BD.b)		; 92 BD
	pld		; 2B
	eor $E526B4.l,X		; 5F B4 26 E5
	bcs -50.b		; B0 CE
	ora $355F.w		; 0D 5F 35
	sbc $B0.b		; E5 B0
	bit $EE.b		; 24 EE
	cpx $240F.w		; EC 0F 24
	rol $12.b		; 26 12
	sbc $1FB4.w		; ED B4 1F
	bmi  35.b		; 30 23
.ACCU 8
.INDEX 8
	sep #$B1		; E2 B1
	cmp $B43200.l,X		; DF 00 32 B4
	jsl $C0CFE1.l		; 22 E1 CF C0
	ora ($42.b,X)		; 01 42
	rti		; 40

	inc $D3B8.w,X		; FE B8 D3
	cpx $12.b		; E4 12
	ora $E3D00C.l,X		; 1F 0C D0 E3
	ora ($B8.b,S),Y		; 13 B8
	and ($1C.b),Y		; 31 1C
	jsr ($F5B3.w,X)		; FC B3 F5
	jsl $C4C022.l		; 22 22 C0 C4
	cpx $F0CE.w		; EC CE F0
	and $42.b,S		; 23 42
	brk $DC.b		; 00 DC
	sbc $21C4.w		; ED C4 21
	and ($30.b,S),Y		; 33 30
	asl $E0BE.w		; 0E BE E0
	jsl $FDC833.l		; 22 33 C8 FD
	ora $0421.w		; 0D 21 04
	sep #$0F		; E2 0F
	bne -32.b		; D0 E0
	iny		; C8
	rol $F041.w,X		; 3E 41 F0
	asl $D4D2.w		; 0E D2 D4
	brk $3E.b		; 00 3E
	cpy $31.b		; C4 31
	ora $D2ED.w,X		; 1D ED D2
	sbc ($22.b,S),Y		; F3 22
	ora ($FC.b),Y		; 11 FC
	ldy $E9.b,X		; B4 E9
	ora ($26.b)		; 12 26
	bmi  33.b		; 30 21
	ldx $22CC.w		; AE CC 22
	ldy $23.b,X		; B4 23
	and $0BFC12.l		; 2F 12 FC 0B
	sbc ($12.b),Y		; F1 12
	and $0E21B8.l,X		; 3F B8 21 0E
	cmp ($D2.b)		; D2 D2
	lsr $C330.w		; 4E 30 C3
	brk $B4.b		; 00 B4
	cmp $03DB.w,X		; DD DB 03
	tsb $3F.b		; 04 3F
	jsl $B4FB1B.l		; 22 1B FB B4
	cmp ($32.b,X)		; C1 32
	.db $42, $E1		; 42 E1
	jsl $D5E9FB.l		; 22 FB E9 D5
	cpy $32.b		; C4 32
	rol $31F0.w		; 2E F0 31
	jsr ($13EC.w,X)		; FC EC 13
	.db $42, $C4		; 42 C4
	ora $23E2.w		; 0D E2 23
	jmp.w [$35DD]		; DC DD 35
	rti		; 40

	cpx $F2C4.w		; EC C4 F2
	bit $EB.b		; 24 EB
	sbc $2F45.w		; ED 45 2F
	jmp.w [$C4F3]		; DC F3 C4
	and ($3C.b,S),Y		; 33 3C
	lda $DD3F05.l		; AF 05 3F DD
	cmp ($42.b)		; D2 42
	cpy #$35.b		; C0 35
	eor $23DD.w		; 4D DD 23
	bmi -54.b		; 30 CA
	bne  33.b		; D0 21
	cpy #$24.b		; C0 24
	bit $210F.w		; 2C 0F 21
	ora $E0CC.w,X		; 1D CC E0
	ora ($C0.b),Y		; 11 C0
	mvp $FF,$FD		; 44 FD FF
	ora ($0D.b)		; 12 0D
	cmp $22F1.w		; CD F1 22
	cpy #$42.b		; C0 42
	cmp $EC32F2.l		; CF F2 32 EC
	ldx $0101.w,Y		; BE 01 01
	cpy #$31.b		; C0 31
	bne   2.b		; D0 02
	bpl -51.b		; 10 CD
	cmp $B40211.l,X		; DF 11 02 B4
	eor #$A4.b		; 49 A4
	tsb $0E.b		; 04 0E
	lda $F33013.l,X		; BF 13 30 F3
	cpy $3D.b		; C4 3D
	cmp $02.b,S		; C3 02
	sbc $2F12DF.l,X		; FF DF 12 2F
	beq -76.b		; F0 B4
	.db $62, $9F, $F2		; 62 9F F2
	and ($EC.b,X)		; 21 EC
	cmp ($42.b)		; D2 42
	sbc $E0C0.w,X		; FD C0 E0
	bit $1D.b		; 24 1D
	sbc $CE1D22.l		; EF 22 1D CE
	ora ($C4.b)		; 12 C4
	inc $32F3.w		; EE F3 32
	cmp $2002.w		; CD 02 20
	jsr ($C0F3.w,X)		; FC F3 C0
	ora ($0E.b),Y		; 11 0E
	sbc ($45.b,X)		; E1 45
	sbc $22E1.w,X		; FD E1 22
	jsr ($CFC0.w,X)		; FC C0 CF
	and ($FE.b,X)		; 21 FE
	sbc ($44.b,X)		; E1 44
	sbc $22E1.w		; ED E1 22
	cpy #$FC.b		; C0 FC
	bne  33.b		; D0 21
	sbc $44E2.w,X		; FD E2 44
	sbc $C0E1.w		; ED E1 C0
	jsl $21D0EC.l		; 22 EC D0 21
	sbc $43F2.w		; ED F2 43
	cmp $13C8.w,X		; DD C8 13
	dec $32E1.w,X		; DE E1 32
	inc $22F1.w		; EE F1 22
	sbc $DDC0.w,X		; FD C0 DD
	sbc ($21.b)		; F2 21
	jmp.w [$20E1]		; DC E1 20
	sbc $C003.w		; ED 03 C0
	.db $42, $DD		; 42 DD
	sbc ($21.b)		; F2 21
	cmp $10E1.w,X		; DD E1 10
	inc $23C4.w		; EE C4 23
	bit $22C1.w		; 2C C1 22
	ora $0F22DF.l		; 0F DF 22 0F
	cpy #$EF.b		; C0 EF
	ora ($4F.b,S),Y		; 13 4F
	inc $2002.w		; EE 02 20
	dec $B401.w,X		; DE 01 B4
	ora $6FE3.w		; 0D E3 6F
	ldx $32F2.w,Y		; BE F2 32
	ldx $B003.w,Y		; BE 03 B0
	and ($FE.b)		; 32 FE
	asl $5D.b,X		; 16 5D
	sbc $3EF1.w		; ED F1 3E
	cmp $F3B0.w		; CD B0 F3
	and $DF54E1.l,X		; 3F E1 54 DF
	cmp $B0ED13.l,X		; DF 13 ED B0
	cmp $150F23.l,X		; DF 23 0F 15
	and $F10D.w,X		; 3D 0D F1
	and $00B4.w		; 2D B4 00
	jsl $4CF21E.l		; 22 1E F2 4C
.ACCU 16
.INDEX 16
	rep #$F2		; C2 F2
	bpl -80.b		; 10 B0
	dec $22E0.w,X		; DE E0 22
	ora ($36.b,X)		; 01 36
	inc $12EF.w		; EE EF 12
	bcs  -4.b		; B0 FC
	sbc $251002.l		; EF 02 10 25
	phk		; 4B
	sbc $B0F1.w,X		; FD F1 B0
	and $F1EE.w		; 2D EE F1
	jsr $6013.w		; 20 13 60
	dec $B0E0.w,X		; DE E0 B0
	and ($DE.b,X)		; 21 DE
	cpx #$0221.w		; E0 21 02
	mvn $DF,$CF		; 54 CF DF
	bcs  19.b		; B0 13
	dec $13EF.w,X		; DE EF 13
	ora ($36.b,X)		; 01 36
	inc $B0EE.w,X		; FE EE B0
	sbc ($0E.b)		; F2 0E
	inc OAMADDH.w		; EE 03 21
	and $2D.b		; 25 2D
	jsr ($E0B0.w,X)		; FC B0 E0
	and $20F00F.l		; 2F 0F F0 20
	trb $5F.b		; 14 5F
	sbc $F0B4.w,X		; FD B4 F0
	eor $100F10.l		; 4F 10 0F 10
	ora ($4C.b,X)		; 01 4C
	inc $DDA4.w,X		; FE A4 DD
	eor $22.b,S		; 43 22
	ora $1D020F.l,X		; 1F 0F 02 1D
	ora $339B94.l		; 0F 94 9B 33
	bit $21.b		; 24 21
	and ($F2.b),Y		; 31 F2
	tyx		; BB
	ora $2FD398.l		; 0F 98 D3 2F
	bpl -30.b		; 10 E2
	bpl -16.b		; 10 F0
	ldx $8851.w,Y		; BE 51 88
	ldy #$2E44.w		; A0 44 2E
	cmp $D6.b,S		; C3 D6
	ora $8417AA.l		; 0F AA 17 84
	pld		; 2B
	sbc $FD4113.l		; EF 13 41 FD
	mvn $EB,$6C		; 54 6C EB
	sty $20.b		; 84 20
	ora $0D10EC.l,X		; 1F EC 10 0D
	ora $844E15.l,X		; 1F 15 4E 84
.INDEX 8
	sep #$12		; E2 12
	and $00DE.w		; 2D DE 00
	inc $0400.w,X		; FE 00 04
	sty $E1.b		; 84 E1
	sbc $DE1E44.l		; EF 44 1E DE
	bpl  47.b		; 10 2F
	cpx #$84.b		; E0 84
	cop $0E.b		; 02 0E
	cpx $32.b		; E4 32
	cmp $53BF.w,X		; DD BF 53
	asl $1F88.w,X		; 1E 88 1F
	eor $0C30D1.l		; 4F D1 30 0C
	sbc ($25.b,X)		; E1 25
	sbc $F0EE84.l,X		; FF 84 EE F0
	ora $FC21F2.l,X		; 1F F2 21 FC
	cmp $507443.l,X		; DF 43 74 50
	cmp $01FE.w		; CD FE 01
	bvc  11.b		; 50 0B
	cpx $7452.w		; EC 52 74
	stz $2B.b		; 64 2B
	jmp.w [$62FF]		; DC FF 62
	cmp ($DE.b,X)		; C1 DE
	sbc $74.b,X		; F5 74
	ora $41.b,X		; 15 41
	ldx $15B0.w		; AE B0 15
	sbc ($DE.b),Y		; F1 DE
	sbc ($74.b)		; F2 74
	and ($32.b)		; 32 32
	inc $E4BF.w,X		; FE BF E4
	ora ($1D.b,X)		; 01 1D
	cop $74.b		; 02 74
	ora $FD3D40.l,X		; 1F 40 3D FD
	asl $2F20.w,X		; 1E 20 2F
	beq 100.b		; F0 64
	eor $0E1F6D.l,X		; 5F 6D 1F 0E
	sbc ($E0.b),Y		; F1 E0
	eor $CD.b,S		; 43 CD
	stz $01.b,X		; 74 01
	rti		; 40

	inc $F101.w,X		; FE 01 F1
	ora $700EF4.l		; 0F F4 0E 70
	ora ($05.b),Y		; 11 05
	eor $11.b,S		; 43 11
	ora ($12.b,X)		; 01 12
	brk $01.b		; 00 01
	stz $4B.b		; 64 4B
	ora ($3F.b)		; 12 3F
	tsa		; 3B
	ora ($F3.b),Y		; 11 F3
	bne -16.b		; D0 F0
	stz $E3.b		; 64 E3
	brk $5D.b		; 00 5D
	ora $31F010.l		; 0F 10 F0 31
	sbc ($64.b,X)		; E1 64
	ldy $0F.b		; A4 0F
	rts		; 60

	inc $1001.w		; EE 01 10
	bpl  15.b		; 10 0F
	bvc  97.b		; 50 61
	and $106465.l		; 2F 65 64 10
	ora ($64.b,S),Y		; 13 64
	bvc  84.b		; 50 54
	pei ($F1.b)		; D4 F1
	jsr $2D1D.w		; 20 1D 2D
	pea $21E0.w		; F4 E0 21
	bvc -48.b		; 50 D0
	cmp ($04.b)		; D2 04
	inc $E06B.w,X		; FE 6B E0
	bpl   6.b		; 10 06
	bvc -74.b		; 50 B6
	ora ($25.b),Y		; 11 25
	eor ($E4.b)		; 52 E4
	sbc $22.b,X		; F5 22
	ora $54.b,S		; 03 54
	sbc $22020F.l,X		; FF 0F 02 22
	dec $92.b,X		; D6 92
	sbc ($0F.b),Y		; F1 0F
	mvp $4D,$6B		; 44 6B 4D
	sbc $32.b,S		; E3 32
	jmp ($1EEF.w)		; 6C EF 1E
	jmp $303F44.l		; 5C 44 3F 30
	cmp ($00.b,S),Y		; D3 00
	mvp $1E,$FA		; 44 FA 1E
	and ($50.b,X)		; 21 50
	and $13.b,S		; 23 13
	ldx #$31.b		; A2 31
	ora ($52.b,S),Y		; 13 52
	and ($10.b,X)		; 21 10
	bvc  34.b		; 50 22
	and ($C0.b,X)		; 21 C0
	and ($21.b),Y		; 31 21
	and ($21.b)		; 32 21
	bpl  84.b		; 10 54
	ora $B2.b,X		; 15 B2
	ora $0F20.w,X		; 1D 20 0F
	jsl $44F0E0.l		; 22 E0 F0 44
	and ($E0.b,S),Y		; 33 E0
	eor $05D001.l		; 4F 01 D0 05
	ora ($B0.b),Y		; 11 B0
	bit $E6.b,X		; 34 E6
	adc $E102.w		; 6D 02 E1
	sbc $0E04.w,X		; FD 04 0E
	inc $40.b		; E6 40
	cmp ($10.b,S),Y		; D3 10
	.db $62, $21, $31		; 62 21 31
	stz $64.b		; 64 64
	eor $44.b,S		; 43 44
	sbc ($3F.b,X)		; E1 3F
	cmp ($3F.b,S),Y		; D3 3F
	ora ($DF.b),Y		; 11 DF
	and $10442C.l		; 2F 2C 44 10
	bit $0F.b,X		; 34 0F
	and ($02.b,S),Y		; 33 02
	sbc $50C0F2.l,X		; FF F2 C0 50
	bpl  81.b		; 10 51
	ora ($0B.b),Y		; 11 0B
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bit $EA.b		; 24 EA
	ora $3031.w		; 0D 31 30
	trb $4E01.w		; 1C 01 4E
	sbc $0AFF50.l,X		; FF 50 FF 0A
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cmp $0F5000.l,X		; DF 00 50 0F
	beq -16.b		; F0 F0
	bpl  12.b		; 10 0C
	brk $00.b		; 00 00
	ora ($50.b),Y		; 11 50
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	brk $F0.b		; 00 F0
	inc $00.b,X		; F6 00
	bvc   0.b		; 50 00
	sbc [$5E.b],Y		; F7 5E
	sbc $06.b,S		; E3 06
	beq  15.b		; F0 0F
	sbc $01FF34.l,X		; FF 34 FF 01
	ora ($F1.b,X)		; 01 F1
	brk $0F.b		; 00 0F
	asl $8855.w,X		; 1E 55 88
	brk $00.b		; 00 00
	ora $200E1F.l		; 0F 1F 0E 20
	.db $42, $1B		; 42 1B
	tay		; A8
	ora $101D0E.l,X		; 1F 0E 1D 10
	bpl  94.b		; 10 5E
	eor ($CB.b),Y		; 51 CB
	clv		; B8
	and $00F0.w		; 2D F0 00
	bmi -12.b		; 30 F4
	sbc ($0E.b)		; F2 0E
	ldy $B4.b,X		; B4 B4
	tyx		; BB
	cpy $12E2.w		; CC E2 12
	mvn $DF,$56		; 54 56 DF
	cmp $04B8.w,Y		; D9 B8 04
	sbc [$1E.b]		; E7 1E
	ora $F0.b,S		; 03 F0
	phx		; DA
	bit $C413.w,X		; 3C 13 C4
	sbc ($22.b),Y		; F1 22
	jsl $FD1D12.l		; 22 12 1D FD
	cmp $41B800.l		; CF 00 B8 41
	cmp $B41D10.l,X		; DF 10 1D B4
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	bit $B4.b		; 24 B4
	bmi  32.b		; 30 20
	mvp $EA,$CE		; 44 CE EA
	cmp ($C5.b,X)		; C1 C5
	.db $42, $C4		; 42 C4
	cop $F3.b		; 02 F3
	ora $DFFF.w,X		; 1D FF DF
	ora $B40032.l		; 0F 32 00 B4
	ora ($41.b,S),Y		; 13 41
	lda $35FEBC.l		; AF BC FE 35
	and $45B410.l,X		; 3F 10 B4 45
	ldx $C1EA.w,Y		; BE EA C1
	inc $51.b		; E6 51
	sbc ($05.b,X)		; E1 05
	ldy $4A.b,X		; B4 4A
	sbc $20AD.w		; ED AD 20
	stz $0D.b,X		; 74 0D
	sbc $53.b,S		; E3 53
	cpy $EE.b		; C4 EE
	dec $23F2.w,X		; DE F2 23
	bpl -50.b		; 10 CE
	bit $22.b		; 24 22
	cpy $BD.b		; C4 BD
	cpy #$2024.w		; C0 24 20
	jsr ($42D3.w,X)		; FC D3 42
	jmp $BDC4.w		; 4C C4 BD
	ora ($51.b,X)		; 01 51
	asl $34DC.w		; 0E DC 34
	jsl $DFC43A.l		; 22 3A C4 DF
	and ($4E.b,X)		; 21 4E
	cmp $53E0.w,X		; DD E0 53
	sbc ($FA.b,S),Y		; F3 FA
	cpy #$04EE.w		; C0 EE 04
	and ($CB.b),Y		; 31 CB
	lda $FE3522.l,X		; BF 22 35 FE
	cpy $12.b		; C4 12
	ora $CD.b,S		; 03 CD
	cpx #$0033.w		; E0 33 00
	bit $C4E0.w,X		; 3C E0 C4
	rol $DE4D.w,X		; 3E 4D DE
	ora ($20.b)		; 12 20
	ora $DD.b,S		; 03 DD
	ora ($C0.b),Y		; 11 C0
	cop $1F.b		; 02 1F
	cmp $00E0.w		; CD E0 00
	and $EF.b,S		; 23 EF
	beq -76.b		; F0 B4
	jsl $4200CB.l		; 22 CB 00 42
	sbc ($5C.b),Y		; F1 5C
	ldx #$C410.w		; A2 10 C4
	jsr $01EE.w		; 20 EE 01
	jsr $2D01.w		; 20 01 2D
	beq  16.b		; F0 10
	bcs  97.b		; B0 61
	cpx $22CF.w		; EC CF 22
	ora $7E.b,X		; 15 7E
	sbc $2CB412.l,X		; FF 12 B4 2C
	bne   3.b		; D0 03
	jsr $2CE3.w		; 20 E3 2C
	sbc ($01.b,X)		; E1 01
	ldy $1F.b,X		; B4 1F
	sbc $FF2010.l		; EF 10 20 FF
	and $CE.b		; 25 CE
	ora $0E02B4.l		; 0F B4 02 0E
	brk $00.b		; 00 00
	ora $FF2A05.l,X		; 1F 05 2A FF
	bcs -32.b		; B0 E0
	jsr $EEFF.w		; 20 FF EE
	beq -16.b		; F0 F0
	stz $ED.b		; 64 ED
	ldy $01.b,X		; B4 01
	bmi -18.b		; 30 EE
	brk $11.b		; 00 11
	ora $B4CC34.l		; 0F 34 CC B4
	sbc ($13.b)		; F2 13
	sbc $02E0.w,X		; FD E0 02
	ora $B84BF4.l,X		; 1F F4 4B B8
	ora $2F.b		; 05 2F
	trb $10F2.w		; 1C F2 10
	and $42F1.w		; 2D F1 42
	ldy #$AD0A.w		; A0 0A AD
	tsb $0B.b		; 04 0B
	lda $EBD1.w		; AD D1 EB
	cmp $B4.b		; C5 B4
	phy		; 5A
	cmp $EF3E21.l		; CF 21 3E EF
	brk $2F.b		; 00 2F
	sbc ($B4.b),Y		; F1 B4
	eor $AC.b		; 45 AC
	sbc ($13.b)		; F2 13
	sbc $12E0.w,X		; FD E0 12
	sbc $5B13B4.l,X		; FF B4 13 5B
	cmp $DE3E21.l		; CF 21 3E DE
	ora ($11.b),Y		; 11 11
	ldy $E0.b,X		; B4 E0
	eor $CB.b		; 45 CB
	sbc ($13.b),Y		; F1 13
	sbc $11F0.w,X		; FD F0 11
	ldy $0F.b,X		; B4 0F
	trb $5A.b		; 14 5A
	cmp $DF3E12.l		; CF 12 3E DF
	ora ($C4.b),Y		; 11 C4
	brk $00.b		; 00 00
	and ($CF.b),Y		; 31 CF
	ora ($11.b,X)		; 01 11
	inc $B401.w,X		; FE 01 B4
	ora ($FF.b,X)		; 01 FF
	and [$E9.b],Y		; 37 E9
	sbc ($14.b,X)		; E1 14
	inc $C4E1.w,X		; FE E1 C4
	ora ($F0.b,X)		; 01 F0
	ora $2D.b,S		; 03 2D
	bne  17.b		; D0 11
	ora $00C4F0.l,X		; 1F F0 C4 00
	ora $D03E02.l,X		; 1F 02 3E D0
	ora ($10.b,X)		; 01 10
	sbc $1F2FC8.l		; EF C8 2F 1F
	sbc ($4C.b),Y		; F1 4C
	cmp $20.b,S		; C3 20
	ora $EFB0E1.l		; 0F E1 B0 EF
	ora ($10.b,X)		; 01 10
	ror $ED.b		; 66 ED
	ora ($11.b),Y		; 11 11
	jmp.w [$F0C0]		; DC C0 F0
	ora ($00.b,X)		; 01 00
	.db $42, $EF		; 42 EF
	ora ($10.b),Y		; 11 10
	inc $F0C0.w		; EE C0 F0
	ora ($02.b),Y		; 11 02
	eor $1F11E0.l		; 4F E0 11 1F
	dec $F0C0.w,X		; DE C0 F0
	ora ($14.b),Y		; 11 14
	and $12F1.w		; 2D F1 12
	asl $C0DF.w		; 0E DF C0
	sbc ($10.b),Y		; F1 10
	eor $DF.b,S		; 43 DF
	ora ($10.b),Y		; 11 10
	sbc $B4F0.w		; ED F0 B4
	bpl  22.b		; 10 16
	tax		; AA
	and ($F0.b,S),Y		; 33 F0
	cmp $1024.w		; CD 24 10
	ldy $32.b,X		; B4 32
	sta $BF0E21.l,X		; 9F 21 0E BF
	.db $62, $1F, $51		; 62 1F 51
	cpy #$11DF.w		; C0 DF 11
	ora $1101CC.l		; 0F CC 01 11
	.db $42, $CF		; 42 CF
	cpy $2F.b		; C4 2F
	asl $31E1.w		; 0E E1 31
	brk $3D.b		; 00 3D
	cmp $2E.b,S		; C3 2E
	cpy #$BE0D.w		; C0 0D BE
	and ($13.b,X)		; 21 13
	lsr $20F1.w		; 4E F1 20
	phd		; 0B
	cpy #$11B0.w		; C0 B0 11
	trb $2D.b		; 14 2D
	cop $00.b		; 02 00
	stp		; DB
	sbc ($C0.b,X)		; E1 C0
	ora ($35.b),Y		; 11 35
	sbc $BCFF12.l,X		; FF 12 FF BC
	ora ($12.b,X)		; 01 12
	cpy #$D041.w		; C0 41 D0
	bmi  12.b		; 30 0C
	lda $3D1420.l,X		; BF 20 14 3D
	cpy #$1002.w		; C0 02 10
	stp		; DB
	sep #$01		; E2 01
	mvp $21,$D0		; 44 D0 21
	cpy #$AD0D.w		; C0 0D AD
	jsr $5D04.w		; 20 04 5D
	cop $10.b		; 02 10
	stp		; DB
	cpy #$00D1.w		; C0 D1 00
	mvp $21,$D0		; 44 D0 21
	ora $10BD.w		; 0D BD 10
	cpy #$3D14.w		; C0 14 3D
	ora $0F.b,S		; 03 0F
	jmp.w [$02E1]		; DC E1 02
	rti		; 40

	ldy $C5.b,X		; B4 C5
	ora $24ED.w,X		; 1D ED 24
	and ($DC.b,S),Y		; 33 DC
	sbc $F1.b,S		; E3 F1
	cpy $E0.b		; C4 E0
	ora ($13.b)		; 12 13
	ldx $1010.w,Y		; BE 10 10
	beq  18.b		; F0 12
	cpy #$DE43.w		; C0 43 DE
	sbc $13FF00.l,X		; FF 00 FF 13
	bvc -17.b		; 50 EF
	cpy $00.b		; C4 00
	ora $CD1311.l,X		; 1F 11 13 CD
	ora ($00.b,X)		; 01 00
	ora ($C0.b,X)		; 01 C0
	cop $43.b		; 02 43
	sbc $0FE0.w		; ED E0 0F
	brk $24.b		; 00 24
	eor $F0EEC0.l		; 4F C0 EE F0
	beq   2.b		; F0 02
	eor $FE.b,S		; 43 FE
	sbc $02C8FF.l		; EF FF C8 02
	sbc ($ED.b),Y		; F1 ED
	jsl $2000F0.l		; 22 F0 00 20
	ora $C5B8.w		; 0D B8 C5
	rol $321E.w,X		; 3E 1E 32
	beq -67.b		; F0 BD
	and $EF.b,X		; 35 EF
	ldy $F2.b,X		; B4 F2
	eor ($2B.b),Y		; 51 2B
	lda $34E030.l,X		; BF 30 E0 34
	and ($B0.b,X)		; 21 B0
	xce		; FB
	cmp $4503ED.l,X		; DF ED 03 45
	pld		; 2B
	dec $B8DC.w		; CE DC B8
	bit $CE.b,X		; 34 CE
	cpy #$CF43.w		; C0 43 CF
	eor $ED.b,S		; 43 ED
	cmp $B062B8.l		; CF B8 62 B0
	mvp $01,$CB		; 44 CB 01
	bmi -45.b		; 30 D3
	jsr $2EB0.w		; 20 B0 2E
	cpx #$04EB.w		; E0 EB 04
	adc ($BC.b,X)		; 61 BC
	asl $B0BF.w,X		; 1E BF B0
	lsr $1B.b,X		; 56 1B
	lda ($FA.b),Y		; B1 FA
	sbc $72.b,X		; F5 72
	plb		; AB
	and ($C0.b),Y		; 31 C0
	sbc $E11C24.l		; EF 24 1C E1
	asl $4003.w		; 0E 03 40
	dec $10C0.w		; CE C0 10
	cpx #$0C44.w		; E0 44 0C
	sbc ($0E.b,X)		; E1 0E
	ora $4F.b,S		; 03 4F
	cpy #$1FDF.w		; C0 DF 1F
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	sbc $FEF1.w		; ED F1 FE
	bit $C0.b		; 24 C0
	rol $1EDF.w,X		; 3E DF 1E
	sbc ($52.b)		; F2 52
	cmp $EF00.w,X		; DD 00 EF
	cpy $42.b		; C4 42
	cmp $FE03.w		; CD 03 FE
	and $1C.b,S		; 23 1C
	cmp ($2F.b)		; D2 2F
	cpy #$E1.b		; C0 E1
	mvp $01,$ED		; 44 ED 01
	sbc $D11D24.l,X		; FF 24 1D D1
	cpy #$0E.b		; C0 0E
	ora $40.b,S		; 03 40
	cmp $44E11F.l,X		; DF 1F E1 44
	sbc $31C4.w,X		; FD C4 31
	sbc $F3DD33.l		; EF 33 DD F3
	asl $2C22.w		; 0E 22 2C
	cpy #$DF.b		; C0 DF
	ora $FD43F1.l,X		; 1F F1 43 FD
	brk $FF.b		; 00 FF
	bit $B0.b		; 24 B0
	inc A		; 1A
	cmp ($0D.b)		; D2 0D
	ora [$6D.b],Y		; 17 6D
	bcs  30.b		; B0 1E
	sbc $C4.b		; E5 C4
	bit $30D0.w		; 2C D0 30
	sbc ($3F.b),Y		; F1 3F
	cmp $C0F021.l		; CF 21 F0 C0
	bit $0D.b		; 24 0D
	cpx #$FE.b		; E0 FE
	trb $2E.b		; 14 2E
	cmp $02C00F.l,X		; DF 0F C0 02
	eor $F20FDE.l		; 4F DE 0F F2
	.db $42, $ED		; 42 ED
	brk $C4.b		; 00 C4
	sbc ($31.b),Y		; F1 31
	cmp $F012.w		; CD 12 F0
	and $EC.b,S		; 23 EC
	sbc ($C4.b)		; F2 C4
	brk $13.b		; 00 13
	tsb $10E1.w		; 0C E1 10
	ora $2C.b,S		; 03 2C
	cmp ($C0.b),Y		; D1 C0
	sbc $ED42E1.l,X		; FF E1 42 ED
	sbc $0E34F0.l,X		; FF F0 34 0E
	cpy $01.b		; C4 01
	ora $F2EC33.l		; 0F 33 EC F2
	ora $C41B14.l		; 0F 14 1B C4
	sbc ($1F.b,X)		; E1 1F
	ora ($3D.b)		; 12 3D
	cpy #$2F.b		; C0 2F
	cop $30.b		; 02 30
	cpy $CD.b		; C4 CD
	jsr $3101.w		; 20 01 31
	dec $0001.w		; CE 01 00
	bit $C4.b		; 24 C4
	cmp $FFF2.w,X		; DD F2 FF
	and $1C.b,S		; 23 1C
	cpx #$1F.b		; E0 1F
	ora ($B4.b,S),Y		; 13 B4
	phy		; 5A
	lda $70F42F.l		; AF 2F F4 70
	sta $F100.w,X		; 9D 00 F1
	ldy $65.b,X		; B4 65
	dex		; CA
	sbc $3B45F1.l,X		; FF F1 45 3B
	bcs  14.b		; B0 0E
	ldy $06.b,X		; B4 06
	ror $10AC.w		; 6E AC 10
	sbc $73.b,S		; E3 73
	ldy $B4D1.w,X		; BC D1 B4
	beq  87.b		; F0 57
	asl A		; 0A
	cmp $6C260E.l		; CF 0E 26 6C
	lda $2EB4.w		; AD B4 2E
	ora $73.b,S		; 03 73
	ldy $D2D2.w		; AC D2 D2
	lsr $FA.b,X		; 56 FA
	cpy $E0.b		; C4 E0
	beq  19.b		; F0 13
	rol $0FDF.w,X		; 3E DF 0F
	cop $31.b		; 02 31
	ldy $CB.b,X		; B4 CB
	sbc $1B56F1.l,X		; FF F1 56 1B
	dec $16F0.w		; CE F0 16
	ldy $5F.b,X		; B4 5F
	ldy $030F.w		; AC 0F 03
	mvn $C1,$DB		; 54 DB C1
	sbc ($B4.b,X)		; E1 B4
	eor $2C.b		; 45 2C
	cmp $61130E.l		; CF 0E 13 61
	cpy $B80F.w		; CC 0F B8
	ora ($42.b,X)		; 01 42
	plb		; AB
	and ($3F.b,X)		; 21 3F
	tsb $1B.b		; 04 1B
	ldy $B8.b,X		; B4 B8
	ora $BC3102.l,X		; 1F 02 31 BC
	jsl $EC451C.l		; 22 1C 45 EC
	clv		; B8
	cmp ($F2.b)		; D2 F2
	ora ($22.b,X)		; 01 22
	cmp $0110.w		; CD 10 01
	ora $A8.b,S		; 03 A8
	ora $F1EC.w,X		; 1D EC F1
	jsr $3E13.w		; 20 13 3E
	cmp $FFA4D1.l		; CF D1 A4 FF
	pei ($54.b)		; D4 54
	ora $C5FEDC.l,X		; 1F DC FE C5
	stz $A8.b		; 64 A8
	dec $00E1.w,X		; DE E1 00
	ora [$2B.b]		; 07 2B
	ora $02C1.w,X		; 1D C1 02
	tay		; A8
	trb $2D.b		; 14 2D
	tas		; 1B
	sbc ($FF.b,X)		; E1 FF
	.db $62, $3D, $0A		; 62 3D 0A
	tay		; A8
	asl $4111.w		; 0E 11 41
	lsr $EFFB.w		; 4E FB EF
	jsr $A426.w		; 20 26 A4
	eor $3F.b		; 45 3F
	cmp $E3BF.w		; CD BF E3
	bit $33.b,X		; 34 33
	jmp.w [$2EA8]		; DC A8 2E
	jsr $2F5F.w		; 20 5F 2F
	cmp $F100.w,X		; DD 00 F1
	eor ($A8.b,X)		; 41 A8
	ora ($ED.b)		; 12 ED
	lda ($01.b),Y		; B1 01
	inc $12.b,X		; F6 12
	inc $A8BF.w,X		; FE BF A8
	sbc ($13.b),Y		; F1 13
	jsr $CC12.w		; 20 12 CC
	asl $3011.w		; 0E 11 30
	tay		; A8
	and $D2DF1F.l,X		; 3F 1F DF D2
	sbc $E4.b		; E5 E4
	cop $FE.b		; 02 FE
	tay		; A8
	cmp $202F.w,X		; DD 2F 20
	and ($F0.b),Y		; 31 F0
	brk $C2.b		; 00 C2
	brk $94.b		; 00 94
	sbc $FFFEEF.l,X		; FF EF FE FF
	bit $33.b,X		; 34 33
	bit $DB.b		; 24 DB
	dey		; 88
	trb $D2.b		; 14 D2
	ror $F260.w		; 6E 60 F2
	sbc $98B1CC.l,X		; FF CC B1 98
	pea $2200.w		; F4 00 22
	ora $DE000E.l		; 0F 0E 00 DE
	bmi -108.b		; 30 94
	asl $33E2.w		; 0E E2 33
	and ($21.b,S),Y		; 33 21
	tsb $0FDC.w		; 0C DC 0F
	sta $FE.b,X		; 95 FE
	ora ($04.b),Y		; 11 04
	jsl $0000C0.l		; 22 C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	jmp ($0020.w,X)		; 7C 20 00
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -64.b		; 90 C0
	cpx #$05.b		; E0 05
	and ($CE.b)		; 32 CE
	sbc $9434D1.l		; EF D1 34 94
	dec $DE01.w,X		; DE 01 DE
	bit $00.b		; 24 00
	cmp ($10.b)		; D2 10
	sbc ($94.b,X)		; E1 94
	rti		; 40

	jmp.w [$1FF1]		; DC F1 1F
	jsl $DDE01F.l		; 22 1F E0 DD
	ldy $13.b		; A4 13
	and $BF1D01.l		; 2F 01 1D BF
	jsl $942011.l		; 22 11 20 94
	nop		; EA
	lda ($53.b)		; B2 53
	sbc ($21.b),Y		; F1 21
	jmp.w [$F4DF]		; DC DF F4
	ldy $11.b,X		; B4 11
	brk $E0.b		; 00 E0
	sbc $012F03.l,X		; FF 03 2F 01
	bit $CDB4.w,X		; 3C B4 CD
	eor ($10.b,X)		; 41 10
	bmi -17.b		; 30 EF
	brk $EF.b		; 00 EF
	and $A4.b,S		; 23 A4
	ora $F5BB01.l,X		; 1F 01 BB F5
	ora ($04.b),Y		; 11 04
	plx		; FA
	ldy $B8.b,X		; B4 B8
	asl $1EF3.w		; 0E F3 1E
	bcs  51.b		; B0 33
	sbc $B0FD20.l,X		; FF 20 FD B0
	inc $BEFD.w,X		; FE FD BE
	rol $7F.b,X		; 36 7F
	sbc $D0EB.w		; ED EB D0
	bcs  65.b		; B0 41
	trb $50.b		; 14 50
	tyx		; BB
	cpx #$F1.b		; E0 F1
	eor $0D.b,X		; 55 0D
	bcs -33.b		; B0 DF
	cmp $22F2.w,X		; DD F2 22
	and ($0D.b,S),Y		; 33 0D
	pei ($7E.b)		; D4 7E
	bcs -51.b		; B0 CD
	and $EF30ED.l,X		; 3F ED 30 EF
	adc $FC.b		; 65 FC
	sbc $63EEB4.l,X		; FF B4 EE 63
	jmp.w [$DB22]		; DC 22 DB
	and $3D.b,X		; 35 3D
	ora ($B0.b,X)		; 01 B0
	asl $FA06.w,X		; 1E 06 FA
	lda ($3E.b,X)		; A1 3E
	ora ($1B.b,X)		; 01 1B
	lda ($C4.b)		; B2 C4
	rol $1EFF.w,X		; 3E FF 1E
	sbc ($30.b,X)		; E1 30
	sbc $C0EF3F.l,X		; FF 3F EF C0
	brk $0F.b		; 00 0F
	ora ($11.b)		; 12 11
	eor ($CB.b,X)		; 41 CB
	cmp ($00.b),Y		; D1 00
	cpy $11.b		; C4 11
	dec $1F24.w,X		; DE 24 1F
	beq -18.b		; F0 EE
	sbc ($21.b,X)		; E1 21
	iny		; C8
	ora $4FE3FE.l,X		; 1F FE E3 4F
	sbc $B4FE11.l,X		; FF 11 FE B4
	cpy $04.b		; C4 04
	bpl  79.b		; 10 4F
	cpx $3101.w		; EC 01 31
	and ($1B.b),Y		; 31 1B
	iny		; C8
	pea $E240.w		; F4 40 E2
	asl $21C1.w		; 0E C1 21
	sbc ($31.b),Y		; F1 31
	cpy $1A.b		; C4 1A
	bne  15.b		; D0 0F
	sbc ($42.b,S),Y		; F3 42
	sbc $C00200.l		; EF 00 02 C0
	bit $1FBD.w		; 2C BD 1F
	dec $1044.w,X		; DE 44 10
	jsl $2AB8FF.l		; 22 FF B8 2A
	trb $5B.b		; 14 5B
	sbc $500F3C.l,X		; FF 3C 0F 50
	jsr $BFC8.w		; 20 C8 BF
	rti		; 40

	brk $30.b		; 00 30
	lda ($23.b),Y		; B1 23
	sbc #$F5.b		; E9 F5
	cpy $02.b		; C4 02
	trb $41.b		; 14 41
	dec $0F01.w		; CE 01 0F
	inc $C00F.w,X		; FE 0F C0
	sbc ($31.b,X)		; E1 31
	brk $1F.b		; 00 1F
	sbc ($42.b,X)		; E1 42
	wai		; CB
	dec $E4C8.w		; CE C8 E4
	inc $20D2.w,X		; FE D2 20
	ldx $2051.w,Y		; BE 51 20
	asl $FDC4.w,X		; 1E C4 FD
	brk $CC.b		; 00 CC
	tsb $41.b		; 04 41
	ora ($ED.b,X)		; 01 ED
	sbc ($B0.b)		; F2 B0
	and ($BC.b),Y		; 31 BC
	cop $ED.b		; 02 ED
	cop $10.b		; 02 10
	bit $32.b		; 24 32
	clv		; B8
	lsr A		; 4A
	lda $75.b,S		; A3 75
	ora $B3DF.w		; 0D DF B3
	and ($09.b)		; 32 09
	clv		; B8
	pea $ED52.w		; F4 52 ED
	ora $24DE1F.l		; 0F 1F DE 24
	and ($C4.b),Y		; 31 C4
	jsl $BB1000.l		; 22 00 10 BB
	cpx $42.b		; E4 42
	ora ($FD.b)		; 12 FD
	iny		; C8
	ora ($0D.b)		; 12 0D
	ora ($3D.b,S),Y		; 13 3D
	sbc ($1D.b,X)		; E1 1D
	ora ($3E.b,X)		; 01 3E
	clv		; B8
	sbc $5EF54C.l		; EF 4C F5 5E
	ldx $0130.w		; AE 30 01
	and $D2B8.w,Y		; 39 B8 D2
	stz $0E.b		; 64 0E
	sbc $1EF1.w		; ED F1 1E
.ACCU 16
	rep #$65		; C2 65
	iny		; C8
	ora $DD02EF.l		; 0F EF 02 DD
	jsl $0DFF5F.l		; 22 5F FF 0D
	clv		; B8
	sbc ($22.b,X)		; E1 22
	ora ($1F.b)		; 12 1F
	brk $EA.b		; 00 EA
	pea $A861.w		; F4 61 A8
	xba		; EB
	wai		; CB
	eor ($4F.b,X)		; 41 4F
	bpl  28.b		; 10 1C
	cmp ($4F.b),Y		; D1 4F
	iny		; C8
	ora $010F20.l		; 0F 20 0F 01
	tsb $40F2.w		; 0C F2 40
	asl $FFC8.w,X		; 1E C8 FF
	cop $1D.b		; 02 1D
	bne  68.b		; D0 44
	sbc $C4DDF0.l,X		; FF F0 DD C4
	rep #$43		; C2 43
	brk $0F.b		; 00 0F
	cmp $44F2.w		; CD F2 44
	ora $34A8.w,X		; 1D A8 34
	bvc  26.b		; 50 1A
	eor ($3D.b),Y		; 51 3D
	cmp ($23.b,X)		; C1 23
	lda ($B8.b,S),Y		; B3 B8
	ora $46B0.w,X		; 1D B0 46
	rol $23CD.w,X		; 3E CD 23
	dex		; CA
	pea $41C8.w		; F4 C8 41
	ora $1FE1.w,X		; 1D E1 1F
	sbc $3F33.w		; ED 33 3F
	sbc $AF10B8.l		; EF B8 10 AF
	ora [$3D.b],Y		; 17 3D
	sbc ($0F.b),Y		; F1 0F
	lda $49A846.l		; AF 46 A8 49
	lda $0200.w		; AD 00 02
	ora ($31.b,S),Y		; 13 31
	xba		; EB
	sbc ($C8.b,S),Y		; F3 C8
	and $33D0.w		; 2D D0 33
	ora $1EF00E.l,X		; 1F 0E F0 1E
	sbc ($C8.b,X)		; E1 C8
	mvp $E2,$EE		; 44 EE E2
	inc $23E1.w,X		; FE E1 23
	jsr $B0DD.w		; 20 DD B0
	ora $02CCFE.l,X		; 1F FE CC 02
	rol $02CD.w		; 2E CD 02
	and ($B8.b,S),Y		; 33 B8
	ora ($E9.b),Y		; 11 E9
	ora ($53.b,S),Y		; 13 53
	bit $01DF.w		; 2C DF 01
	ldx $57B8.w		; AE B8 57
	eor $11BD.w,X		; 5D BD 11
	tas		; 1B
	cmp $74.b		; C5 74
	stp		; DB
	clv		; B8
	sbc ($FC.b)		; F2 FC
	sbc ($43.b,S),Y		; F3 43
	sbc $E1E0.w,X		; FD E0 E1
	jsl $FEF1A8.l		; 22 A8 F1 FE
	jsr ($75D3.w,X)		; FC D3 75
	cmp $1FE3.w,Y		; D9 E3 1F
	clv		; B8
	ora ($2E.b),Y		; 11 2E
	ora $1054AF.l		; 0F AF 54 10
	sbc $01C4FE.l,X		; FF FE C4 01
	jsr ($21E2.w,X)		; FC E2 21
	brk $11.b		; 00 11
	sbc ($0E.b),Y		; F1 0E
	clv		; B8
	cmp [$5F.b]		; C7 5F
	cmp $43CD4F.l,X		; DF 4F CD 43
	sbc $B402.w,X		; FD 02 B4
	ora $DE51E4.l		; 0F E4 51 DE
	jsl $349129.l		; 22 29 91 34
	ldy $04.b,X		; B4 04
	jsr $4CCF.w		; 20 CF 4C
	stz $2335.w		; 9C 35 23
	and ($C4.b,S),Y		; 33 C4
	sbc $43C00C.l,X		; FF 0C C0 43
	brk $01.b		; 00 01
	bne  19.b		; D0 13
	cpy #$1E.b		; C0 1E
	bne  30.b		; D0 1E
	bne  67.b		; D0 43
	brk $23.b		; 00 23
	ora $E3B4.w		; 0D B4 E3
	and ($34.b,X)		; 21 34
	trb $1DD1.w		; 1C D1 1D
	lda ($41.b),Y		; B1 41
	cpy $F1.b		; C4 F1
	and ($FF.b,X)		; 21 FF
	bpl -51.b		; 10 CD
	and $00.b,S		; 23 00
	cop $C4.b		; 02 C4
	asl $1C12.w		; 0E 12 1C
	cpy #$31.b		; C0 31
	sbc ($21.b)		; F2 21
	cmp $CC22C4.l,X		; DF C4 22 CC
	ora ($1E.b,S),Y		; 13 1E
	ora $2E.b,S		; 03 2E
	sbc ($2D.b,X)		; E1 2D
	cpy $D0.b		; C4 D0
	and ($E0.b),Y		; 31 E0
	and $EE.b,S		; 23 EE
	cop $0C.b		; 02 0C
	sep #$C4		; E2 C4
	and $D031E1.l,X		; 3F E1 31 D0
	ora ($DB.b,S),Y		; 13 DB
	cop $3F.b		; 02 3F
	cpy $02.b		; C4 02
	asl $1CF2.w,X		; 1E F2 1C
	cmp ($31.b),Y		; D1 31
	sbc ($20.b,X)		; E1 20
	cpy $F0.b		; C4 F0
	jsr $14CD.w		; 20 CD 14
	ora $2E03.w		; 0D 03 2E
	sbc ($C8.b)		; F2 C8
	tsb $31F1.w		; 0C F1 31
	cpx #$20.b		; E0 20
	cpy #$04.b		; C0 04
	ora $20D0C8.l		; 0F C8 D0 20
	brk $11.b		; 00 11
	sbc $0D13.w,X		; FD 13 0D
	cmp $C8.b,S		; C3 C8
	eor ($EE.b,X)		; 41 EE
	ora ($F0.b),Y		; 11 F0
	rol $43C1.w		; 2E C1 43
	cmp $13C8.w,X		; DD C8 13
	tsb $0D22.w		; 0C 22 0D
	cmp ($43.b),Y		; D1 43
	cpy #$02.b		; C0 02
	clv		; B8
	cmp $4D04.w		; CD 04 4D
	stp		; DB
	bit $11.b,X		; 34 11
	sbc ($DE.b),Y		; F1 DE
	ldy $CF.b,X		; B4 CF
	eor ($B9.b,S),Y		; 53 B9
	ora $1D.b,X		; 15 1D
	ora $3D.b		; 05 3D
	tsb $C4.b		; 04 C4
	xce		; FB
	cmp ($40.b,S),Y		; D3 40
	cpx #$20.b		; E0 20
	sbc ($31.b,X)		; E1 31
	ldy $91B0.w,X		; BC B0 91
	rol $50F4.w		; 2E F4 50
	bne 101.b		; D0 65
	cmp #$B4B0.w		; C9 B0 B4
	sbc $F4FB45.l		; EF 45 FB F4
	dec A		; 3A
	lda $C4D260.l,X		; BF 60 D2 C4
	jsl $DC20EF.l		; 22 EF 20 DC
	and $1D.b,S		; 23 1D
	ora ($1E.b)		; 12 1E
	cpy $02.b		; C4 02
	ora $31C2.w		; 0D C2 31
	bne  49.b		; D0 31
	inc $C012.w,X		; FE 12 C0
	ora $0FDF.w,X		; 1D DF 0F
	sbc ($32.b),Y		; F1 32
	ora ($31.b,X)		; 01 31
	jmp.w [$F1C0]		; DC C0 F1
	inc $2013.w,X		; FE 13 20
	ora ($0C.b,S),Y		; 13 0C
	cpy #$1F.b		; C0 1F
	iny		; C8
	ora ($0D.b,S),Y		; 13 0D
	pea $E30C.w		; F4 0C E3
	bmi -48.b		; 30 D0
	bmi -76.b		; 30 B4
	xba		; EB
	ora $09.b,X		; 15 09
	ldy $3D.b,X		; B4 3D
	sbc $6E.b,X		; F5 6E
	lda ($C4.b),Y		; B1 C4
	and $FE33CE.l		; 2F CE 33 FE
	ora ($0F.b)		; 12 0F
	cop $0C.b		; 02 0C
	cpy $E2.b		; C4 E2
	and $EF30E2.l		; 2F E2 30 EF
	jsl $B4F1DD.l		; 22 DD F1 B4
	jsl $F3FB43.l		; 22 43 FB F3
	trb $31C0.w		; 1C C0 31
	cop $B4.b		; 02 B4
	jsr $21E0.w		; 20 E0 21
	dex		; CA
	cop $11.b		; 02 11
	eor $FC.b,S		; 43 FC
	ldy $F3.b,X		; B4 F3
	ora $FCE1.w,X		; 1D E1 FC
	asl $70.b		; 06 70
	ldy $C813.w		; AC 13 C8
	ora $4201FE.l		; 0F FE 01 42
	cpx $30F1.w		; EC F1 30
	inc $00B8.w,X		; FE B8 00
	bit $3E.b		; 24 3E
	ldx $1D31.w,Y		; BE 31 1D
	cmp ($23.b),Y		; D1 23
	clv		; B8
	lsr $14CD.w		; 4E CD 14
	ora $4122DE.l		; 0F DE 22 41
	cmp $0FB8.w,X		; DD B8 0F
	and ($10.b,X)		; 21 10
	cmp $4C26.w		; CD 26 4C
	dec $B410.w,X		; DE 10 B4
	cop $1D.b		; 02 1D
	lda $FF0F55.l,X		; BF 55 0F FF
	sbc ($42.b,X)		; E1 42
	cpy $EC.b		; C4 EC
	sbc $32.b,S		; E3 32
	asl $11FF.w		; 0E FF 11
	ora $32B4E0.l		; 0F E0 B4 32
	ora ($FF.b),Y		; 11 FF
	sbc ($20.b)		; F2 20
	tax		; AA
	and [$40.b]		; 27 40
	ldy $C0.b,X		; B4 C0
	ora ($0F.b,X)		; 01 0F
	sbc $31F4.w		; ED F4 31
	beq  15.b		; F0 0F
	iny		; C8
	ora ($1D.b,X)		; 01 1D
	sep #$42		; E2 42
	dec $0101.w		; CE 01 01
	brk $C4.b		; 00 C4
	sbc $31F3.w,X		; FD F3 31
	sbc $EC0100.l,X		; FF 00 01 EC
	pea $40C4.w		; F4 C4 40
	sbc $0E0001.l		; EF 01 00 0E
	cmp ($32.b),Y		; D1 32
	ora $0101C8.l		; 0F C8 01 01
	trb $32E3.w		; 1C E3 32
	dec $1000.w,X		; DE 00 10
	ldy $21.b,X		; B4 21
	stp		; DB
	pea $FF51.w		; F4 51 FF
	sbc ($F1.b),Y		; F1 F1
	sbc $D0B4.w,X		; FD B4 D0
	mvp $F0,$1F		; 44 1F F0
	beq -16.b		; F0 F0
	cmp $0BB823.l,X		; DF 23 B8 0B
	ora ($3F.b),Y		; 11 3F
	cpy #$0E.b		; C0 0E
	eor ($1D.b,S),Y		; 53 1D
	cmp $0F12B4.l		; CF B4 12 0F
	cmp $4302.w		; CD 02 43
	trb $30F1.w		; 1C F1 30
	clv		; B8
	inc DMASRC1L.w		; EE 12 43
	stp		; DB
	pei ($40.b)		; D4 40
	stp		; DB
	tsb $B8.b		; 04 B8
	.db $42, $DF		; 42 DF
	cmp ($23.b,X)		; C1 23
	cmp ($D2.b,X)		; C1 D2
	cop $3F.b		; 02 3F
	clv		; B8
	cmp $EF24.w,X		; DD 24 EF
	cmp $AE6F31.l,X		; DF 31 6F AE
	and $A8.b,S		; 23 A8
	asl A		; 0A
	cmp ($02.b,S),Y		; D3 02
	bit $CC.b,X		; 34 CC
	sbc [$1B.b]		; E7 1B
	inc $1CB8.w		; EE B8 1C
	stz $1C.b		; 64 1C
	bcs  66.b		; B0 42
	sbc $04F2.w		; ED F2 04
	clv		; B8
	asl $05FD.w,X		; 1E FD 05
	bne  28.b		; D0 1C
	rol $CB64.w		; 2E 64 CB
	bcs -16.b		; B0 F0
	eor ($FE.b,X)		; 41 FE
	jmp.w [$43C0]		; DC C0 43
	bpl  35.b		; 10 23
	clv		; B8
	cmp ($C2.b)		; D2 C2
	tsb $4C.b		; 04 4C
	dec $F013.w,X		; DE 13 F0
	sbc $34D1B4.l,X		; FF B4 D1 34
	inc $1F02.w,X		; FE 02 1F
	ora $13DF.w		; 0D DF 13
	ldy $41.b,X		; B4 41
	inc $1E02.w		; EE 02 1E
	cmp $1C54D1.l,X		; DF D1 54 1C
	clv		; B8
	and ($E0.b,S),Y		; 33 E0
	beq  -2.b		; F0 FE
	eor $EB.b,X		; 55 EB
	pei ($10.b)		; D4 10
	ldy $0F.b,X		; B4 0F
	inc $44D2.w		; EE D2 44
	tsb $2FF2.w		; 0C F2 2F
	asl $CDB4.w		; 0E B4 CD
	and $52.b,S		; 23 52
	dec $1E04.w		; CE 04 1E
	dec $B4F1.w		; CE F1 B4
	and $3E.b,S		; 23 3E
	beq  33.b		; F0 21
	phd		; 0B
	jmp.w [$5225]		; DC 25 52
	ldy $BE.b,X		; B4 BE
	ora $2E.b,S		; 03 2E
	inc $24DF.w		; EE DF 24
	eor $21B4EF.l		; 4F EF B4 21
	ora $52E3DC.l		; 0F DC E3 52
	sbc $B410F1.l,X		; FF F1 10 B4
	rol $F4BC.w		; 2E BC F4
	.db $62, $1D, $C1		; 62 1D C1
	and ($19.b)		; 32 19
	clv		; B8
	.db $42, $13		; 42 13
	cmp ($EC.b,S),Y		; D3 EC
	ora ($3E.b)		; 12 3E
	lda $51B822.l,X		; BF 22 B8 51
	cmp $31F1.w		; CD F1 31
	sbc $5F14DE.l,X		; FF DE 14 5F
	ldy $1F.b,X		; B4 1F
	dec $3012.w,X		; DE 12 30
	wai		; CB
	sbc $B83144.l,X		; FF 44 31 B8
	lda ($32.b)		; B2 32
	inc $F5D0.w,X		; FE D0 F5
	bmi  -4.b		; 30 FC
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	ora $10.b,S		; 03 10
	cmp $04D3.w		; CD D3 04
	and ($DD.b),Y		; 31 DD
	and $A8.b,S		; 23 A8
	stp		; DB
	ldx $7A74.w,Y		; BE 74 7A
	phd		; 0B
	ora $A83A05.l,X		; 1F 05 3A A8
	lda $5056.w		; AD 56 50
	lda $6021.w,Y		; B9 21 60
	cmp ($AC.b),Y		; D1 AC
	clv		; B8
	tsb $14.b		; 04 14
	inc $24DF.w		; EE DF 24
	cpx #$B3.b		; E0 B3
	brk $B4.b		; 00 B4
	and $021C41.l		; 2F 41 1C 02
	bvc -37.b		; 50 DB
	cmp $43B413.l,X		; DF 13 B4 43
	cmp $22F3.w,X		; DD F3 22
	jsr ($11EC.w,X)		; FC EC 11
	bit $B4.b,X		; 34 B4
	ora $41D1.w,X		; 1D D1 41
	asl $CFC1.w		; 0E C1 CF
	bit $3F.b		; 24 3F
	ldy $CF.b		; A4 CF
	eor $10.b,S		; 43 10
	dex		; CA
	cpx $74E4.w		; EC E4 74
	sbc $21B4.w		; ED B4 21
	jsr $E1DE.w		; 20 DE E1
	bne   4.b		; D0 04
	lsr $B8E0.w		; 4E E0 B8
	ora ($DD.b)		; 12 DD
	eor $2E33FD.l		; 4F FD 33 2E
	bne   3.b		; D0 03
	ldy $20.b		; A4 20
	inc $BECF.w,X		; FE CF BE
	stz $3E.b		; 64 3E
	bne  52.b		; D0 34
	ldy $1E.b,X		; B4 1E
	sbc $03C200.l,X		; FF 00 C2 03
	asl $1111.w		; 0E 11 11
	ldy #$42.b		; A0 42
	ora $D19A3C.l,X		; 1F 3C 9A D1
	bmi   2.b		; 30 02
	eor $A4.b,S		; 43 A4
.ACCU 8
	sep #$2C		; E2 2C
	jmp.w [$1022]		; DC 22 10
	cop $E0.b		; 02 E0
	ora ($94.b,S),Y		; 13 94
	beq -46.b		; F0 D2
	jsr ($C0EE.w,X)		; FC EE C0
	adc ($7D.b,X)		; 61 7D
	ora $A0.b,S		; 03 A0
	jsl $0CF422.l		; 22 22 F4 0C
	cpy $01E4.w		; CC E4 01
	cpx #$A4.b		; E0 A4
	sbc ($42.b),Y		; F1 42
	inc $0EEF.w,X		; FE EF 0E
	cpx $F2.b		; E4 F2
	sbc ($A0.b),Y		; F1 A0
	and ($02.b,X)		; 21 02
	bit $E0.b,X		; 34 E0
	cop $FB.b		; 02 FB
	dec $A400.w,X		; DE 00 A4
	sbc $FF.b,X		; F5 FF
	cpy #$52.b		; C0 52
	sbc $D100.w		; ED 00 D1
	bmi -112.b		; 30 90
	and $30DF.w		; 2D DF 30
	pea $3135.w		; F4 35 31
	cmp $1E94B2.l		; CF B2 94 1E
	cpx #$0F.b		; E0 0F
	ora $6FE240.l		; 0F 40 E2 6F
	phx		; DA
	bcc  15.b		; 90 0F
	brk $F4.b		; 00 F4
	cpx $12A0.w		; EC A0 12
	cop $24.b		; 02 24
	ldy #$13.b		; A0 13
	asl $02FF.w,X		; 1E FF 02
	cmp $020DF2.l		; CF F2 0D 02
	bcc 111.b		; 90 6F
	sbc $5F.b,S		; E3 5F
	cmp ($40.b),Y		; D1 40
	xba		; EB
	lda $9015.w,X		; BD 15 90
	and $2234DD.l		; 2F DD 34 22
	brk $F0.b		; 00 F0
	ora $D19410.l		; 0F 10 94 D1
	sbc $F1.b,X		; F5 F1
	sbc $D0431E.l		; EF 1E 43 D0
	lda $BF2780.l,X		; BF 80 27 BF
	and $2135AD.l,X		; 3F AD 35 21
	dex		; CA
	eor $90.b,X		; 55 90
	rol $2ED0.w,X		; 3E D0 2E
	ora $0B32.w,X		; 1D 32 0B
	sbc ($4E.b,S),Y		; F3 4E
	bcc -35.b		; 90 DD
	ora ($12.b)		; 12 12
	ora $35DFFF.l		; 0F FF DF 35
	sbc $D390.w		; ED 90 D3
	eor $CC.b,S		; 43 CC
	beq -17.b		; F0 EF
	and $22.b,S		; 23 22
	inc $0290.w		; EE 90 02
	jsr $E3DD.w		; 20 DD E3
	and $C012DF.l		; 2F DF 12 C0
	bcc  98.b		; 90 62
	jmp.w [$2FF3]		; DC F3 2F
	ora ($CA.b)		; 12 CA
	inc $61.b		; E6 61
	bcc -67.b		; 90 BD
	jsl $EC44EF.l		; 22 EF 44 EC
	bne  51.b		; D0 33
	sbc $E190.w,X		; FD 90 E1
	jsr $22FF.w		; 20 FF 22
	jsr ($10F1.w,X)		; FC F1 10
	sbc $011190.l,X		; FF 90 11 01
	sbc $E21C11.l,X		; FF 11 1C E2
	and $6381DF.l,X		; 3F DF 81 63
	trb $54C1.w		; 1C C1 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ora $72.b,S		; 03 72
	ldy $B3.b,X		; B4 B3
	and ($56.b,X)		; 21 56
	ora ($E6.b)		; 12 E6
	bvc  18.b		; 50 12
	tsb $50.b		; 04 50
	eor $3C.b,S		; 43 3C
	ora ($02.b),Y		; 11 02
	jsl $501650.l		; 22 50 16 50
	eor ($D0.b,X)		; 41 D0
	lda ($24.b,X)		; A1 24
	ora $21.b,S		; 03 21
	bvc  26.b		; 50 1A
	rol $FD65.w,X		; 3E 65 FD
	lsr $AD5A.w,X		; 5E 5A AD
	ora $60.b,S		; 03 60
	brk $20.b		; 00 20
	ora $C20E.w		; 0D 0E C2
	beq  30.b		; F0 1E
	and $F61A50.l		; 2F 50 1A F6
	wai		; CB
	and ($21.b)		; 32 21
	brk $4D.b		; 00 4D
	asl A		; 0A
	bvc  61.b		; 50 3D
	ora $2AFC03.l		; 0F 03 FC 2A
	lsr A		; 4A
	sbc $9E.b,S		; E3 9E
	bvc  58.b		; 50 3A
	and $BF063E.l,X		; 3F 3E 06 BF
	ora $C211.w,X		; 1D 11 C2
	rts		; 60

	cpx #$3D.b		; E0 3D
	sbc ($4D.b,S),Y		; F3 4D
	bmi  32.b		; 30 20
	cop $2F.b		; 02 2F
	rts		; 60

	ora ($3F.b)		; 12 3F
	ora ($13.b,X)		; 01 13
	rti		; 40

	ora ($02.b)		; 12 02
	and $2750.w,X		; 3D 50 27
	eor ($C3.b),Y		; 51 C3
	ora ($33.b,X)		; 01 33
	cpy #$C3.b		; C0 C3
	lsr $50.b		; 46 50
	lda ($2D.b),Y		; B1 2D
	mvn $4A,$32		; 54 32 4A
	and $3D3D.w,X		; 3D 3D 3D
	bvc  81.b		; 50 51
	jsl $3C2212.l		; 22 12 22 3C
	bvc -48.b		; 50 D0
	tsb $3F50.w		; 0C 50 3F
	cop $DC.b		; 02 DC
	pea $A6BD.w		; F4 BD A6
	stp		; DB
	asl $F160.w		; 0E 60 F1
	cmp $D310.w		; CD 10 D3
	sbc ($F2.b,S),Y		; F3 F2
	ora $2B5032.l		; 0F 32 50 2B
	dec $B0.b,X		; D6 B0
	sbc $F3.b,X		; F5 F3
	cmp ($62.b)		; D2 62
	rol $4550.w,X		; 3E 50 45
	cmp $35.b		; C5 35
	brk $F5.b		; 00 F5
	tsa		; 3B
	and ($11.b),Y		; 31 11
	bvc -43.b		; 50 D5
	and $24.b,S		; 23 24
	ora $F4.b,S		; 03 F4
	bpl 127.b		; 10 7F
	eor ($60.b),Y		; 51 60
	jsr $140E.w		; 20 0E 14
	sbc $0F0233.l,X		; FF 33 02 0F
	.db $62, $60, $F2		; 62 60 F2
	pea $14EF.w		; F4 EF 14
	sbc ($C6.b,X)		; E1 C6
	cmp ($11.b),Y		; D1 11
	rts		; 60

	ora ($12.b),Y		; 11 12
	ora $F4.b,S		; 03 F4
	sbc ($3F.b),Y		; F1 3F
	ora ($DD.b),Y		; 11 DD
	rts		; 60

	and $FE.b,S		; 23 FE
	cmp ($3F.b),Y		; D1 3F
	dec A		; 3A
	jsl $60120D.l		; 22 0D 12 60
	inc $F2EF.w,X		; FE EF F2
	sbc ($0D.b),Y		; F1 0D
	bit $FD1E.w		; 2C 1E FD
	bvc -61.b		; 50 C3
	inc $BD.b		; E6 BD
	cpy #$BF.b		; C0 BF
	jsr $ED3B.w		; 20 3B ED
	rts		; 60

	ora ($0C.b,X)		; 01 0C
	and ($32.b),Y		; 31 32
	cmp ($02.b),Y		; D1 02
	and ($03.b,S),Y		; 33 03
	rts		; 60

	dec $13E0.w,X		; DE E0 13
	lsr $D1F1.w		; 4E F1 D1
	sbc $3F70EF.l		; EF EF 70 3F
	sbc ($25.b,S),Y		; F3 25
	beq  15.b		; F0 0F
	beq -47.b		; F0 D1
	sbc $1FF184.l,X		; FF 84 F1 1F
	rol $120F.w		; 2E 0F 12
	beq   6.b		; F0 06
	ldy #$84.b		; A0 84
	rep #$01		; C2 01
	beq   2.b		; F0 02
	sbc ($E1.b),Y		; F1 E1
	and ($0D.b)		; 32 0D
	sty $0D.b		; 84 0D
	and $BF.b,S		; 23 BF
	asl $012E.w,X		; 1E 2E 01
	bpl  36.b		; 10 24
	dey		; 88
	cpy #$02.b		; C0 02
	beq  29.b		; F0 1D
	pei ($F0.b)		; D4 F0
	cpx $E1.b		; E4 E1
	sty $03.b,X		; 94 03
	eor $011122.l		; 4F 22 11 01
	ora $DCEC.w		; 0D EC DC
	tya		; 98
	tsb $0E.b		; 04 0E
	trb $3E.b		; 14 3E
	cmp ($0C.b),Y		; D1 0C
	sbc ($FE.b,S),Y		; F3 FE
	tya		; 98
	inc $41F4.w,X		; FE F4 41
	sta $40.b,X		; 95 40
	asl $BC.b,X		; 16 BC
	dec $1EA8.w		; CE A8 1E
	bpl -33.b		; 10 DF
	eor $A0.b,X		; 55 A0
	bvs -32.b		; 70 E0
	lsr $C1B8.w,X		; 5E B8 C1
	inc $1E2F.w		; EE 2F 1E
	eor ($E2.b),Y		; 51 E2
	jsr $B8E1.w		; 20 E1 B8
	ora $EFE1.w		; 0D E1 EF
	bpl   3.b		; 10 03
	jmp $FE23.w		; 4C 23 FE
	clv		; B8
	ora ($DE.b,X)		; 01 DE
	asl $0100.w,X		; 1E 00 01
	and $F0.b,S		; 23 F0
	jsr $DEA8.w		; 20 A8 DE
	ora $FEC1.w		; 0D C1 FE
	ora ($15.b),Y		; 11 15
	tad		; 5B
	eor ($B4.b),Y		; 51 B4
	and ($01.b,S),Y		; 33 01
	sbc $CDDD.w		; ED DD CD
	cpx #$32.b		; E0 32
	and $A8.b		; 25 A8
	cpy #$ED.b		; C0 ED
	ora $E100.w		; 0D 00 E1
	cop $63.b		; 02 63
	lda $A8.b,X		; B5 A8
	inc $FF0D.w,X		; FE 0D FF
	sbc ($D1.b,X)		; E1 D1
	bpl  86.b		; 10 56
	ldy $A8.b		; A4 A8
	asl $FFEE.w,X		; 1E EE FF
	sbc ($FF.b,X)		; E1 FF
	bpl 100.b		; 10 64
	ldy $A8.b,X		; B4 A8
	ora $FEFE.w,X		; 1D FE FE
	ora ($EF.b,X)		; 01 EF
	ora ($63.b),Y		; 11 63
	ldy $B8.b,X		; B4 B8
	ora $010FFF.l		; 0F FF 0F 01
	cpx #$11.b		; E0 11
	and $DEA8F3.l,X		; 3F F3 A8 DE
	sbc $111D.w,X		; FD 1D 11
	cpx #$14.b		; E0 14
	ror A		; 6A
	bit $B4.b		; 24 B4
	ora ($0F.b),Y		; 11 0F
	inc $EEEE.w		; EE EE EE
	ora $30.b,S		; 03 30
	eor $A8.b,S		; 43 A8
	lda ($EF.b,X)		; A1 EF
	sbc ($1D.b),Y		; F1 1D
	ora ($62.b)		; 12 62
	ldy $39.b		; A4 39
	tay		; A8
	ora $E002D0.l		; 0F D0 02 E0
	ora $5B.b,X		; 15 5B
	ora $BD.b		; 05 BD
	tay		; A8
	trb $2E00.w		; 1C 00 2E
	sbc ($35.b,S),Y		; F3 35
	cpy #$4D.b		; C0 4D
	cmp ($A8.b,X)		; C1 A8
	bne -29.b		; D0 E3
	sbc $224B25.l		; EF 25 4B 22
	dec $A81D.w		; CE 1D A8
	ora $63F23D.l		; 0F 3D F2 63
	sty $1C.b,X		; 94 1C
	ora $12A8FE.l		; 0F FE A8 12
	cmp $412A35.l,X		; DF 35 2A 41
	lda ($E0.b),Y		; B1 E0
	sbc ($A4.b,X)		; E1 A4
	sbc $56CE.w,X		; FD CE 56
	ora $5F.b		; 05 5F
	ora $A4D0DC.l		; 0F DC D0 A4
	stp		; DB
	inc $60.b,X		; F6 60
	eor $F0.b		; 45 F0
	inc $0DCC.w		; EE CC 0D
	ldy $CF.b		; A4 CF
	ror $05.b		; 66 05
	eor $C0EBFE.l,X		; 5F FE EB C0
	jmp.w [$03B4]		; DC B4 03
	bmi  35.b		; 30 23
	ora $FFEEFF.l		; 0F FF EE FF
	cpx #$A4.b		; E0 A4
	adc $12.b,X		; 75 12
	.db $42, $ED		; 42 ED
	inc $FEDD.w,X		; FE DD FE
	cmp ($A8.b,S),Y		; D3 A8
	bit $3EE1.w,X		; 3C E1 3E
	lda ($1E.b,S),Y		; B3 1E
	sbc $98043F.l,X		; FF 3F 04 98
	tsb $3CF2.w		; 0C F2 3C
	lda $0C.b,X		; B5 0C
	cmp ($4D.b),Y		; D1 4D
	bit $98.b		; 24 98
	asl $5BE2.w,X		; 1E E2 5B
	cmp ($1C.b,S),Y		; D3 1C
	lda ($4C.b,S),Y		; B3 4C
	ora ($98.b,S),Y		; 13 98
	ora $F24DE2.l,X		; 1F E2 4D F2
	ora $2FD1.w		; 0D D1 2F
	sbc ($88.b)		; F2 88
	sbc $F15001.l,X		; FF 01 50 F1
	asl $11ED.w		; 0E ED 11
	sbc ($74.b)		; F2 74
	dec $03E0.w		; CE E0 03
	rti		; 40

	brk $0E.b		; 00 0E
	pei ($12.b)		; D4 12
	sei		; 78
	ora ($ED.b),Y		; 11 ED
	ora $12FF.w,X		; 1D FF 12
	ora $31.b,S		; 03 31
	sbc $FD1088.l		; EF 88 10 FD
	rol $E1C5.w		; 2E C5 E1
	ora $10.b,S		; 03 10
	sbc ($78.b)		; F2 78
	xba		; EB
	asl $10EE.w,X		; 1E EE 10
	beq  81.b		; F0 51
	rol $784F.w		; 2E 4F 78
	sbc $D3D1.w,X		; FD D1 D3
	cmp ($02.b)		; D2 02
	brk $1F.b		; 00 1F
	and $DF5E74.l,X		; 3F 74 5E DF
	ora $FF00B0.l		; 0F B0 00 FF
	and ($01.b),Y		; 31 01
	stz $20.b		; 64 20
	ora $0EFE0F.l		; 0F 0F FE 0E
	cmp $33.b,S		; C3 33
	cmp ($64.b,X)		; C1 64
	cop $EB.b		; 02 EB
	bpl  -1.b		; 10 FF
	jsr $1315.w		; 20 15 13
	dec $CE64.w,X		; DE 64 CE
	bcs -47.b		; B0 D1
	lsr $25F5.w		; 4E F5 25
	jsr $74B2.w		; 20 B2 74
	jmp.w [$F100]		; DC 00 F1
	sbc ($31.b),Y		; F1 31
	jsl $78DFF1.l		; 22 F1 DF 78
	sbc $2F1010.l,X		; FF 10 10 2F
	rol $1D2D.w		; 2E 2D 1D
	ora $E50068.l,X		; 1F 68 00 E5
	dec $F4.b,X		; D6 F4
	inc $ED1F.w		; EE 1F ED
	sbc ($74.b)		; F2 74
	xba		; EB
	ora $F345E0.l		; 0F E0 45 F3
	and $64FEF0.l		; 2F F0 FE 64
	ldx $13ED.w,Y		; BE ED 13
	rol $E4.b,X		; 36 E4
	trb $DD20.w		; 1C 20 DD
	stz $F9.b		; 64 F9
	ora ($F2.b,S),Y		; 13 F2
	adc $FDF31F.l		; 6F 1F F3 FD
	sbc ($64.b),Y		; F1 64
	lda $0131.w,X		; BD 31 01
	and $DE.b,S		; 23 DE
	eor ($C0.b,X)		; 41 C0
	eor $C074.w		; 4D 74 C0
	and $F2102F.l		; 2F 2F 10 F2
	ora $50EDF3.l		; 0F F3 ED 50
	phx		; DA
	ldy $9CCA.w		; AC CA 9C
	ldy $BDBA.w,X		; BC BA BD
	plb		; AB
	mvn $20,$20		; 54 20 20
	cmp $E0E3D0.l		; CF D0 E3 E0
	brk $12.b		; 00 12
	bvc -15.b		; 50 F1
	inc A		; 1A
	adc ($73.b)		; 72 73
	ora $62DD.w		; 0D DD 62
	dec $FE78.w		; CE 78 FE
	bmi  29.b		; 30 1D
	cmp ($00.b,S),Y		; D3 00
	ora ($E0.b),Y		; 11 E0
	bpl 100.b		; 10 64
	ora $F1BE21.l,X		; 1F 21 BE F1
	sbc $450421.l,X		; FF 21 04 45
	stz $FE.b,X		; 74 FE
	brk $CD.b		; 00 CD
	asl $3503.w		; 0E 03 35
	eor ($1B.b,X)		; 41 1B
	sty $FF.b,X		; 94 FF
	sbc $E011E2.l,X		; FF E2 11 E0
	adc $0F.b		; 65 0F
	inc $0D98.w,X		; FE 98 0D
	sbc ($50.b,S),Y		; F3 50
	bne  19.b		; D0 13
	lsr $FCB1.w		; 4E B1 FC
	tay		; A8
	sbc $E422.w,X		; FD 22 E4
	lsr $23FF.w,X		; 5E FF 23
	lda $B44E.w		; AD 4E B4
	xba		; EB
	dec $54EE.w,X		; DE EE 54
	jsl $F01D24.l		; 22 24 1D F0
	ldy $DD.b,X		; B4 DD
	dec $46ED.w,X		; DE ED 46
	ora ($41.b)		; 12 41
	asl $B4F0.w		; 0E F0 B4
	dec $DEFD.w,X		; DE FD DE
	eor $03.b,X		; 55 03
	rti		; 40

	inc $B40F.w,X		; FE 0F B4
	sbc $45DFED.l		; EF ED DF 45
	ora $4F.b,S		; 03 4F
	asl $B40F.w		; 0E 0F B4
	sbc $34EFED.l		; EF ED EF 34
	ora ($30.b,S),Y		; 13 30
	asl $B40F.w		; 0E 0F B4
	sbc $43EFED.l		; EF ED EF 43
	trb $20.b		; 14 20
	asl $B40F.w		; 0E 0F B4
	sbc $34EFED.l		; EF ED EF 34
	ora ($30.b,S),Y		; 13 30
	asl $B4F0.w		; 0E F0 B4
	sbc $34EFED.l		; EF ED EF 34
	ora ($30.b,S),Y		; 13 30
	asl $B40F.w		; 0E 0F B4
	sbc $34EFED.l		; EF ED EF 34
	ora ($30.b,S),Y		; 13 30
	ora $FFB4FF.l		; 0F FF B4 FF
	sbc $24EE.w		; ED EE 24
	ora ($30.b,S),Y		; 13 30
	ora $F0B8F0.l,X		; 1F F0 B8 F0
	sbc $C1431F.l,X		; FF 1F 43 C1
	and $F100.w		; 2D 00 F1
	ldy $EE.b		; A4 EE
	cpy $E6BC.w		; CC BC E6
	and ($62.b),Y		; 31 62
	ora ($21.b),Y		; 11 21
	ldy $00.b		; A4 00
	sbc $DECD.w		; ED CD DE
	and ($F2.b,X)		; 21 F2
	jsr $8832.w		; 20 32 88
	sbc ($DA.b),Y		; F1 DA
	cmp ($F4.b)		; D2 F4
	bpl  -4.b		; 10 FC
	adc $9823.w		; 6D 23 98
	brk $01.b		; 00 01
	tsb $0010.w		; 0C 10 00
	cop $ED.b		; 02 ED
	eor $22C184.l		; 4F 84 C1 22
	and $53.b,S		; 23 53
	ora $1B01F0.l		; 0F F0 01 1B
	tya		; 98
	cop $FF.b		; 02 FF
	jsr $4F00.w		; 20 00 4F
	cmp ($0F.b,X)		; C1 0F
	and $010D98.l,X		; 3F 98 0D 01
	asl $2F20.w		; 0E 20 2F
	and $BF.b,S		; 23 BF
	and $2E1F98.l		; 2F 98 1F 2E
.INDEX 16
	rep #$1E		; C2 1E
	ora $10.b,S		; 03 10
	ora $FD.b,S		; 03 FD
	tay		; A8
	brk $00.b		; 00 00
	ora ($D0.b,X)		; 01 D0
	rol $0111.w		; 2E 11 01
	pea $5094.w		; F4 94 50
	jsr $A3EB.w		; 20 EB A3
	sta $F43D.w,Y		; 99 3D F4
	eor $A4.b,X		; 55 A4
	rol $20.b,X		; 36 20
	asl A		; 0A
	tyx		; BB
	lda ($C0.b)		; B2 C0
	and ($64.b)		; 32 64
	ldy $22.b,X		; B4 22
	and ($EF.b,X)		; 21 EF
	jmp.w [$1FCD]		; DC CD 1F
	ora ($23.b,S),Y		; 13 23
	tay		; A8
	and $1BFE.w		; 2D FE 1B
	brk $C1.b		; 00 C1
	ora [$0F.b],Y		; 17 0F
	ror $E5A8.w		; 6E A8 E5
	ldx $B100.w,Y		; BE 00 B1
	tsb $7021.w		; 0C 21 70
	ora $A8.b		; 05 A8
	cpy #$0139.w		; C0 39 01
	sbc $D32E.w		; ED 2E D3
	eor $C5.b		; 45 C5
	clv		; B8
	ora $F12E.w,X		; 1D 2E F1
	cpx #$D200.w		; E0 00 D2
	ora ($F1.b,S),Y		; 13 F1
	tay		; A8
	phk		; 4B
	ora ($91.b)		; 12 91
	ora $CFF2.w,X		; 1D F2 CF
	and $2E.b,X		; 35 2E
	tay		; A8
	jmp ($9FE5.w)		; 6C E5 9F
	and $ECE2.w,X		; 3D E2 EC
	eor $5C.b,S		; 43 5C
	clv		; B8
	and ($D3.b,X)		; 21 D3
	cmp $FFE110.l,X		; DF 10 E1 FF
	cop $3E.b		; 02 3E
	tay		; A8
	and ($B3.b,S),Y		; 33 B3
	xce		; FB
	ora ($D0.b),Y		; 11 D0
	tas		; 1B
	ora ($6E.b,S),Y		; 13 6E
	tay		; A8
	trb $DF.b		; 14 DF
	rol A		; 2A
	and $E30EFF.l		; 2F FF 0E E3
	rts		; 60

	tay		; A8
	sbc $ED.b,X		; F5 ED
	lsr A		; 4A
	sbc ($EF.b)		; F2 EF
	ora $A852C4.l		; 0F C4 52 A8
	dec $EC.b,X		; D6 EC
	adc #$00.b		; 69 00
	ora $C42E.w		; 0D 2E C4
	and $A8.b,X		; 35 A8
	dec $EC.b		; C6 EC
	ror A		; 6A
.ACCU 8
	sep #$EE		; E2 EE
	rol $46D2.w		; 2E D2 46
	tay		; A8
	lda [$FB.b]		; A7 FB
	jmp $2FEDD2.l		; 5C D2 ED 2F
	cpy $52.b		; C4 52
	clv		; B8
	sbc ($FE.b,S),Y		; F3 FE
	bit $DFF2.w,X		; 3C F2 DF
	and $3D03.w,X		; 3D 03 3D
	clv		; B8
	and ($C1.b)		; 32 C1
	rol A		; 2A
	jsr $0ED2.w		; 20 D2 0E
	ora $0E.b		; 05 0E
	clv		; B8
	eor $20FCD2.l,X		; 5F D2 FC 20
	cmp ($0D.b)		; D2 0D
	rol $D0.b		; 26 D0
	clv		; B8
	lsr $DDE3.w		; 4E E3 DD
	and $EFF3.w,X		; 3D F3 EF
	and $C3.b		; 25 C3
	clv		; B8
	and $DF01.w		; 2D 01 DF
	asl $D002.w,X		; 1E 02 D0
	eor ($D4.b),Y		; 51 D4
	ldy $42.b,X		; B4 42
	jsl $DEFDFE.l		; 22 FE FD DE
	dec $1422.w		; CE 22 14
	clv		; B8
	ora $D12F.w		; 0D 2F D1
	ora $E220.w		; 0D 20 E2
	eor $A812.w,X		; 5D 12 A8
	inc $D01D.w		; EE 1D D0
	ora $E62F.w		; 0D 2F E6
	eor $A440.w		; 4D 40 A4
	eor $30.b,X		; 55 30
	sbc $BBCB.w		; ED CB BB
	lda ($32.b),Y		; B1 32
	eor $98.b,X		; 55 98
	sbc ($BE.b,X)		; E1 BE
	ora $2DEF.w		; 0D EF 2D
	and $4E.b		; 25 4E
	rol $1398.w		; 2E 98 13
	ldy #$2D2D.w		; A0 2D 2D
.ACCU 8
	sep #$2E		; E2 2E
	and ($FF.b,X)		; 21 FF
	dey		; 88
	ora ($30.b),Y		; 11 30
	ora $00CD21.l		; 0F 21 CD 00
	cpx #$8811.w		; E0 11 88
	sbc ($11.b)		; F2 11
	mvp $DC,$DF		; 44 DF DC
	brk $E0.b		; 00 E0
	beq -120.b		; F0 88
	ora ($20.b,S),Y		; 13 20
	ora $11.b,X		; 15 11
	tsx		; BA
	sbc $88D111.l,X		; FF 11 D1 88
	ora $322F51.l		; 0F 51 2F 32
	tsb $20CC.w		; 0C CC 20
	asl $1E88.w,X		; 1E 88 1E
	ora $10.b		; 05 10
	ora $12.b,S		; 03 12
	stp		; DB
	cmp ($1F.b),Y		; D1 1F
	dey		; 88
	ora $500F.w,X		; 1D 0F 50
	ora ($13.b),Y		; 11 13
	eor $1FCE.w,Y		; 59 CE 1F
	dey		; 88
	ora ($C1.b,X)		; 01 C1
	sbc ($33.b),Y		; F1 33
	cmp $50.b,X		; D5 50
	xba		; EB
	lda ($98.b),Y		; B1 98
	brk $F0.b		; 00 F0
	asl $0022.w		; 0E 22 00
	bmi  33.b		; 30 21
	ldx $2088.w		; AE 88 20
	cmp ($EE.b)		; D2 EE
	and $540153.l		; 2F 53 01 54
	tyx		; BB
	dey		; 88
	cmp $EF11.w		; CD 11 EF
	and $3D16.w		; 2D 16 3D
	eor ($2D.b,S),Y		; 53 2D
	dey		; 88
	cmp #$E5.b		; C9 E5
	bcs  32.b		; B0 20
	cmp ($22.b,S),Y		; D3 22
	rti		; 40

	bit $98.b		; 24 98
	sbc $0FD0.w,X		; FD D0 0F
	ora ($0F.b,X)		; 01 0F
	sbc ($31.b)		; F2 31
	cop $88.b		; 02 88
	bit $FFAC.w,X		; 3C AC FF
	sbc $B160.w		; ED 60 B1
	eor $42.b,X		; 55 42
	dey		; 88
	cop $DA.b		; 02 DA
	cmp $11D0.w		; CD D0 11
	ora $984706.l,X		; 1F 06 47 98
	beq  15.b		; F0 0F
	cmp $F0F0.w,X		; DD F0 F0
	ora ($F1.b)		; 12 F1
	eor ($88.b,X)		; 41 88
	jmp $B9F2.w		; 4C F2 B9
	beq -21.b		; F0 EB
	rol $20.b		; 26 20
	rol $98.b,X		; 36 98
	bit $1C10.w		; 2C 10 1C
	beq -18.b		; F0 EE
	pea $0320.w		; F4 20 03
	dey		; 88
	bit $1EF1.w,X		; 3C F1 1E
	cmp $54A4FC.l		; CF FC A4 54
	sbc ($98.b,S),Y		; F3 98
	and $0D10F0.l		; 2F F0 10 0D
	ora $F105D0.l		; 0F D0 05 F1
	dey		; 88
	lsr M7C.w		; 4E 1D 21
	ora $0FEDED.l,X		; 1F ED ED 0F
	trb $88.b		; 14 88
	ora ($02.b,S),Y		; 13 02
	cpx #$E030.w		; E0 30 E0
	jsr ($E1EF.w,X)		; FC EF E1
	sei		; 78
	and $35.b,S		; 23 35
	eor ($0E.b),Y		; 51 0E
	ora ($EE.b,X)		; 01 EE
	cmp ($CF.b,X)		; C1 CF
	sei		; 78
	lda ($44.b)		; B2 44
	bit $D323.w,X		; 3C 23 D3
	sep #$C0		; E2 C0
	inc $1F78.w		; EE 78 1F
	ora ($41.b)		; 12 41
	trb $2FEE.w		; 1C EE 2F
	ora ($F0.b),Y		; 11 F0
	stz $0D.b,X		; 74 0D
	cpy #$4531.w		; C0 31 45
	asl $FD42.w		; 0E 42 FD
	ldy $4368.w,X		; BC 68 43
	cmp ($6A.b),Y		; D1 6A
	eor ($12.b,X)		; 41 12
	lda $78C20C.l,X		; BF 0C C2 78
	sbc ($00.b,S),Y		; F3 00
	brk $4D.b		; 00 4D
	bpl -14.b		; 10 F2
	cmp $D16801.l,X		; DF 01 68 D1
	beq  33.b		; F0 21
	jsl $FDF2B4.l		; 22 B4 F2 FD
	sbc $C40168.l,X		; FF 68 01 C4
	sbc ($03.b),Y		; F1 03
	cmp ($2E.b,S),Y		; D3 2E
	cpx #$64FD.w		; E0 FD 64
	tas		; 1B
	ora $F3ED.w		; 0D ED F3
	tsb $53.b		; 04 53
	lsr $6412.w,X		; 5E 12 64
	ldx $1CCB.w,Y		; BE CB 1C
	pea $45E0.w		; F4 E0 45
	and $02.b		; 25 02
	pla		; 68
	cpx #$EEA5.w		; E0 A5 EE
	bvc  21.b		; 50 15
	sta ($2D.b,S),Y		; 93 2D
	brk $64.b		; 00 64
	bit $C0DC.w,X		; 3C DC C0
	dec $14F4.w,X		; DE F4 14
	ora ($40.b,S),Y		; 13 40
	stz $00.b		; 64 00
	ora $DEDE.w		; 0D DE DE
	ora $213150.l		; 0F 50 31 21
	stz $FF.b		; 64 FF
	inc $C2EF.w,X		; FE EF C2
	beq  32.b		; F0 20
	and ($1F.b)		; 32 1F
	stz $2F.b		; 64 2F
	bcs -17.b		; B0 EF
	asl $22E3.w,X		; 1E E3 22
	pei ($F2.b)		; D4 F2
	stz $22.b		; 64 22
	stp		; DB
	cmp ($0D.b,X)		; C1 0D
	jsr $5F02.w		; 20 02 5F
	ora ($54.b,X)		; 01 54
	ora ($C2.b),Y		; 11 C2
	lda $B10E.w,X		; BD 0E B1
	ora ($32.b,S),Y		; 13 32
	ora ($54.b)		; 12 54
	eor $EA0FEF.l,X		; 5F EF 0F EA
	sbc $43EF42.l,X		; FF 42 EF 43
	rts		; 60

	and ($1D.b)		; 32 1D
	and ($2E.b,S),Y		; 33 2E
	and ($14.b,X)		; 21 14
	and $0F80FF.l,X		; 3F FF 80 0F
	sbc $F01F12.l		; EF 12 1F F0
	brk $0D.b		; 00 0D
	cpx $84.b		; E4 84
	tsa		; 3B
.ACCU 16
	rep #$20		; C2 20
	sbc ($DC.b),Y		; F1 DC
	ora $2F.b,S		; 03 2F
	ora ($84.b,X)		; 01 84
	cpx #$FF20.w		; E0 20 FF
	jsl $CF30F2.l		; 22 F2 30 CF
	cmp $0288.w,X		; DD 88 02
	ora $3223.w		; 0D 23 32
	bit $DEBE.w		; 2C BE DE
	lsr $EFA8.w,X		; 5E A8 EF
	and ($10.b,S),Y		; 33 10
	and ($DB.b),Y		; 31 DB
	bne -15.b		; D0 F1
	bpl -72.b		; 10 B8
	sbc ($42.b)		; F2 42
	inc $DE0E.w,X		; FE 0E DE
	ora ($1F.b)		; 12 1F
	brk $B8.b		; 00 B8
	eor $FC.b		; 45 FC
	sbc $0113EE.l		; EF EE 13 01
	cmp ($45.b),Y		; D1 45
	clv		; B8
	xce		; FB
	sbc $2E13FD.l,X		; FF FD 13 2E
	beq  37.b		; F0 25
	pld		; 2B
	clv		; B8
	sbc $2F030D.l		; EF 0D 03 2F
	sbc $DF4B16.l		; EF 16 4B DF
	clv		; B8
	ora $30F2.w,X		; 1D F2 30
	cmp $CF5C06.l,X		; DF 06 5C CF
	asl $F1C8.w,X		; 1E C8 F1
	and $20030E.l		; 2F 0E 03 20
	inc $F11F.w		; EE 1F F1
	iny		; C8
	jsr $01FE.w		; 20 FE 01
	eor ($DF.b,X)		; 41 DF
	beq  15.b		; F0 0F
	and ($C8.b),Y		; 31 C8
	sbc $ED34E1.l		; EF E1 34 ED
	beq -15.b		; F0 F1
	ora ($0D.b)		; 12 0D
	iny		; C8
	cpx #$3C24.w		; E0 24 3C
	cpy #$0310.w		; C0 10 03
	ora $23C8DE.l		; 0F DE C8 23
	eor $0201CE.l		; 4F CE 01 02
	bpl -34.b		; 10 DE
	cop $C8.b		; 02 C8
	.db $42, $EC		; 42 EC
	sbc ($11.b,X)		; E1 11
	and ($ED.b,X)		; 21 ED
.ACCU 8
	sep #$24		; E2 24
	iny		; C8
	ora $11CF.w,X		; 1D CF 11
	and ($1E.b,X)		; 21 1E
	cpy #$4112.w		; C0 12 41
	iny		; C8
	dec $21D2.w		; CE D2 21
	ora ($DD.b),Y		; 11 DD
	ora ($34.b,X)		; 01 34
	jsr ($CEB8.w,X)		; FC B8 CE
	and ($23.b,S),Y		; 33 23
	asl A		; 0A
	lda $AA7C64.l,X		; BF 64 7C AA
	clv		; B8
	ora ($23.b,S),Y		; 13 23
	and $7305AC.l		; 2F AC 05 73
	tsx		; BA
	cmp ($B8.b),Y		; D1 B8
	and $23.b,S		; 23 23
	wai		; CB
	cmp $55.b,S		; C3 55
	and $22BE.w,Y		; 39 BE 22
	clv		; B8
	and $1C.b,S		; 23 1C
	ldx $7F34.w,Y		; BE 34 7F
	ldy $31E2.w		; AC E2 31
	clv		; B8
	eor $55E4CC.l		; 4F CC E4 55
	stp		; DB
	cmp $B82313.l,X		; DF 13 23 B8
	sbc $44B0.w		; ED B0 44
	eor $11AD.w,X		; 5D AD 11
	jsl $DDB83D.l		; 22 3D B8 DD
	ora $45.b,S		; 03 45
	ldy $21E0.w,X		; BC E0 21
	and ($0C.b,X)		; 21 0C
	clv		; B8
	sbc $DD4C25.l		; EF 25 4C DD
	ora ($02.b),Y		; 11 02
	jsr $B8DD.w		; 20 DD B8
	ora ($44.b,X)		; 01 44
	jmp.w [$0000]		; DC 00 00
	ora ($0F.b)		; 12 0F
	inc $12B8.w		; EE B8 12
	lsr $F0D0.w,X		; 5E D0 F0
	ora ($11.b,X)		; 01 11
	sbc $F4B4D1.l,X		; FF D1 B4 F4
	and ($00.b),Y		; 31 00
	inc $11F0.w,X		; FE F0 11
	asl $B8DE.w,X		; 1E DE B8
	.db $42, $DF		; 42 DF
	asl $02F1.w,X		; 1E F1 02
	ora $B412EE.l,X		; 1F EE 12 B4
	.db $42, $10		; 42 10
	ora $2001EF.l		; 0F EF 01 20
	cmp $A803.w,X		; DD 03 A8
	inc $EE0F.w		; EE 0F EE
	ora ($21.b)		; 12 21
	xce		; FB
.ACCU 8
	sep #$63		; E2 63
	ldy $22.b		; A4 22
	and $31E0EC.l,X		; 3F EC E0 31
	phd		; 0B
	cmp $E1A854.l		; CF 54 A8 E1
	sbc $2F21D1.l		; EF D1 21 2F
	lda $A44C15.l,X		; BF 15 4C A4
	and ($1D.b)		; 32 1D
	dec $1F02.w,X		; DE 02 1F
	wai		; CB
	sbc $42.b,X		; F5 42
	ldy $32.b		; A4 32
	sbc $11D0.w,X		; FD D0 11
	tsb $35BD.w		; 0C BD 35
	jsl $EE31A4.l		; 22 A4 31 EE
	brk $0F.b		; 00 0F
	cpx $43C0.w		; EC C0 43
	ora ($94.b),Y		; 11 94
	.db $62, $00, $2F		; 62 00 2F
	jmp.w [$D0CC]		; DC CC D0
	and $308801.l		; 2F 01 88 30
	asl $FE1D.w,X		; 1E 1D FE
	brk $00.b		; 00 00
	cpx #$7801.w		; E0 01 78
	and [$61.b],Y		; 37 61
	cpy #$BF0E.w		; C0 0E BF
	cpy #$D5EB.w		; C0 EB D5
	dey		; 88
	eor ($D3.b),Y		; 51 D3
	rti		; 40

	asl $DE2A.w,X		; 1E 2A DE
	brk $10.b		; 00 10
	dey		; 88
	and $0F64E2.l		; 2F E2 64 0F
	sbc $F1DD.w,X		; FD DD F1
	bpl -120.b		; 10 88
	sbc $312222.l		; EF 22 22 31
	ora $CEFF.w		; 0D FF CE
	ora ($88.b),Y		; 11 88
	sbc $1F23.w,X		; FD 23 1F
	ora $20.b,X		; 15 20
	inc $F1DC.w,X		; FE DC F1
	dey		; 88
	ora $F5F010.l,X		; 1F 10 F0 F5
	and ($0F.b,S),Y		; 33 0F
	cmp $88E0.w,X		; DD E0 88
	sbc ($2C.b)		; F2 2C
	sbc $2F2422.l		; EF 22 24 2F
	sbc $00781D.l		; EF 1D 78 00
	cmp $23DE.w,X		; DD DE 23
	lsr $6123.w,X		; 5E 23 61
	cpx $88.b		; E4 88
	dec $02ED.w,X		; DE ED 02
	brk $FF.b		; 00 FF
	ora ($44.b,X)		; 01 44
	ora ($78.b),Y		; 11 78
	sta $43BA.w,X		; 9D BA 43
	and $24CC.w,Y		; 39 CC 24
	rol $23.b,X		; 36 23
	stz $55.b,X		; 74 55
	mvn $10,$51		; 54 51 10
	cpy $ACDC.w		; CC DC AC
	ldy $2278.w		; AC 78 22
	eor $221D0E.l		; 4F 0E 1D 22
	asl $0DDE.w		; 0E DE 0D
	sei		; 78
	trb $E2.b		; 14 E2
	rol $3F30.w,X		; 3E 30 3F
	inc $0F0F.w		; EE 0F 0F
	sei		; 78
	ora ($CD.b,X)		; 01 CD
	and ($04.b),Y		; 31 04
	eor ($EE.b,X)		; 41 EE
	ora $0078F2.l		; 0F F2 78 00
	inc $F3D0.w		; EE D0 F3
	ora ($3F.b),Y		; 11 3F
	and $784D.w,X		; 3D 4D 78
	asl $1EF0.w,X		; 1E F0 1E
	asl $2ED0.w		; 0E D0 2E
	eor ($31.b)		; 52 31
	sei		; 78
	ora $D50EE0.l		; 0F E0 0E D5
	jmp.w [$53B0]		; DC B0 53
	cmp $94.b,X		; D5 94
	ora ($44.b,S),Y		; 13 44
	jsr $CDDD.w		; 20 DD CD
	asl $24EF.w,X		; 1E EF 24
	tay		; A8
	beq  33.b		; F0 21
	inc $0FDD.w,X		; FE DD 0F
	adc $F0.b,S		; 63 F0
	and ($B8.b),Y		; 31 B8
	inc $EF10.w,X		; FE 10 EF
	asl $4400.w,X		; 1E 00 44
	cpx #$B400.w		; E0 00 B4
	inc $DFEE.w,X		; FE EE DF
	asl $55DF.w		; 0E DF 55
	jsl $D2B82F.l		; 22 2F B8 D2
	bpl  33.b		; 10 21
	jsr ($5001.w,X)		; FC 01 50
	sbc ($FE.b,X)		; E1 FE
	clv		; B8
	sbc ($11.b,X)		; E1 11
	eor $7401DB.l		; 4F DB 01 74
	dec $C8ED.w,X		; DE ED C8
.ACCU 8
	sep #$22		; E2 22
	brk $CE.b		; 00 CE
	cop $33.b		; 02 33
	inc $C8DE.w,X		; FE DE C8
	ora ($32.b),Y		; 11 32
	asl $21CE.w		; 0E CE 21
	bit $FC.b,X		; 34 FC
	cmp $4111C8.l,X		; DF C8 11 41
	trb $23CF.w		; 1C CF 23
	ora ($1B.b,S),Y		; 13 1B
	cmp $4230C8.l		; CF C8 30 42
	phd		; 0B
	cmp $2B1232.l,X		; DF 32 12 2B
	cmp $1332C8.l		; CF C8 32 13
	sbc $33CF.w,X		; FD CF 33
	brk $4C.b		; 00 4C
	lda $23E1C4.l,X		; BF C4 E1 23
	and ($CC.b),Y		; 31 CC
	sbc ($21.b,X)		; E1 21
	.db $42, $DC		; 42 DC
	cpy $D2.b		; C4 D2
	ora ($21.b,S),Y		; 13 21
	jmp.w [$20F1]		; DC F1 20
	and $FC.b,S		; 23 FC
	ldy $A2.b,X		; B4 A2
	bit $42.b,X		; 34 42
	dex		; CA
	cmp ($31.b,X)		; C1 31
	and [$F9.b]		; 27 F9
	ldy $A1.b,X		; B4 A1
	bit $32.b,X		; 34 32
	nop		; EA
	cpy #$0732.w		; C0 32 07
	phd		; 0B
	ldy $9F.b,X		; B4 9F
	eor $33.b,S		; 43 33
	xba		; EB
	bcs  50.b		; B0 32
	inc $3B.b,X		; F6 3B
	bcs -71.b		; B0 B9
	sbc ($45.b,X)		; E1 45
	bvc -69.b		; 50 BB
	cpx #$73F3.w		; E0 F3 73
	ldy $AC.b,X		; B4 AC
	mvp $1C,$21		; 44 21 1C
	dec $F123.w		; CE 23 F1
	eor $24BBB4.l,X		; 5F B4 BB 24
	and ($1F.b,X)		; 21 1F
	lda $0F23.w,X		; BD 23 0F
	eor ($B8.b),Y		; 51 B8
	ldx $DE65.w,Y		; BE 65 DE
	ora $ED62DE.l,X		; 1F DE 62 ED
	adc $AF3CB0.l		; 6F B0 3C AF
	jsl $BF0B34.l		; 22 34 0B BF
	ora $EAB416.l,X		; 1F 16 B4 EA
	cmp $41.b,S		; C3 41
	ora ($EB.b),Y		; 11 EB
	sbc $3E.b,S		; E3 3E
	asl $B4.b		; 06 B4
	phd		; 0B
	ldx #$1151.w		; A2 51 11
	xce		; FB
	cmp ($30.b)		; D2 30
	sbc $B0.b		; E5 B0
	adc ($BB.b,X)		; 61 BB
	cop $24.b		; 02 24
	eor $E201AB.l		; 4F AB 01 E2
	bcs  99.b		; B0 63
	dex		; CA
.ACCU 8
	sep #$23		; E2 23
	eor ($BA.b),Y		; 51 BA
	sbc ($F0.b,X)		; E1 F0
	ldy $50.b,X		; B4 50
	plb		; AB
	bit $11.b,X		; 34 11
	rol $34BC.w		; 2E BC 34
	sbc $1B46B0.l,X		; FF B0 46 1B
	bcs  34.b		; B0 22
	mvp $BF,$FA		; 44 FA BF
	ora $3D26B0.l,X		; 1F B0 26 3D
	ldx $3501.w,Y		; BE 01 35
	and $0FAD.w		; 2D AD 0F
	ldy $05.b,X		; B4 05
	ora $22BF.w,X		; 1D BF 22
	ora ($2C.b,S),Y		; 13 2C
	ldx $B822.w,Y		; BE 22 B8
	cpx #$B05C.w		; E0 5C B0
	.db $42, $E2		; 42 E2
	ora $B832A0.l,X		; 1F A0 32 B8
	ora $BD24.w,X		; 1D 24 BD
	pea $211F.w		; F4 1F 21
	xce		; FB
	sbc ($B8.b)		; F2 B8
	bmi -29.b		; 30 E3
	and $31DE.w		; 2D DE 31
	ora ($3E.b,X)		; 01 3E
	dec $43A8.w		; CE A8 43
	and $BA36.w,X		; 3D 36 BA
	cmp ($11.b,S),Y		; D3 11
	bit $F9.b,X		; 34 F9
	tay		; A8
	cmp ($32.b,X)		; C1 32
	cop $4D.b		; 02 4D
	cpy $0421.w		; CC 21 04
	jsr $FCA4.w		; 20 A4 FC
	cmp $4401.w		; CD 01 44
	ora $23EFFE.l,X		; 1F FE EF 23
	tya		; 98
	cpy $65B0.w		; CC B0 65
	tad		; 5B
	cmp $F401.w		; CD 01 F4
	ora ($A8.b,S),Y		; 13 A8
	inc $12D0.w,X		; FE D0 12
	bvc -33.b		; 50 DF
	bne   1.b		; D0 01
	jsl $FC1DA8.l		; 22 A8 1D FC
	ora ($33.b),Y		; 11 33
	asl $0FEF.w		; 0E EF 0F
	ora ($98.b)		; 12 98
	and $36C1EC.l,X		; 3F EC C1 36
	bit $2DFD.w,X		; 3C FD 2D
	cop $88.b		; 02 88
	and ($CE.b,S),Y		; 33 CE
	cmp $EE5F32.l		; CF 32 5F EE
	ora $55780F.l		; 0F 0F 78 55
	bit $2FEA.w		; 2C EA 2F
	bmi  51.b		; 30 33
	dec $889F.w,X		; DE 9F 88
	ora ($43.b),Y		; 11 43
	cmp $14E0F0.l		; CF F0 E0 14
	ora $DD84D0.l,X		; 1F D0 84 DD
	cmp ($31.b),Y		; D1 31
	brk $EF.b		; 00 EF
	cmp ($42.b)		; D2 42
	bpl -120.b		; 10 88
	ora $3002.w		; 0D 02 30
	sbc $33E0F2.l		; EF F2 E0 33
	sbc $FF84.w		; ED 84 FF
	sbc $21E4.w,X		; FD E4 21
	inc $E1FE.w,X		; FE FE E1
	ora ($78.b,S),Y		; 13 78
	cmp ($CE.b,X)		; C1 CE
	cpx $33.b		; E4 33
	sbc $E200.w		; ED 00 E2
	cmp ($78.b,S),Y		; D3 78
	bit $1F0F.w,X		; 3C 0F 1F
	ora ($2D.b,S),Y		; 13 2D
	inc $E402.w,X		; FE 02 E4
	sei		; 78
	sbc ($EF.b),Y		; F1 EF
	cpy $A4.b		; C4 A4
	.db $42, $D0		; 42 D0
	bpl -19.b		; 10 ED
	rts		; 60

	cmp ($3D.b),Y		; D1 3D
	rol $3C.b		; 26 3C
	dec $C02E.w,X		; DE 2E C0
	rol $CF74.w,X		; 3E 74 CF
	ora $EE3002.l,X		; 1F 02 30 EE
	jsr $3302.w		; 20 02 33
	stz $EF.b,X		; 74 EF
	lda ($FD.b),Y		; B1 FD
	ora ($0E.b,X)		; 01 0E
	cpx #$5201.w		; E0 01 52
	stz $2C.b,X		; 74 2C
	asl $04F1.w		; 0E F1 04
	bmi -34.b		; 30 DE
	sbc $5064E0.l,X		; FF E0 64 50
	ldy $C412.w,X		; BC 12 C4
	and [$2D.b],Y		; 37 2D
	sbc ($FF.b),Y		; F1 FF
	stz $14.b,X		; 74 14
	tsb $DCFE.w		; 0C FE DC
	ora $30.b,S		; 03 30
	ora ($1F.b,X)		; 01 1F
	stz $D5.b		; 64 D5
	ror $FE01.w		; 6E 01 FE
	cmp $EF6D.w,X		; DD 6D EF
	plx		; FA
	stz $DF.b		; 64 DF
	adc $34.b,S		; 63 34
	and ($DB.b,X)		; 21 DB
	rol $F2.b,X		; 36 F2
	tsb $D468.w		; 0C 68 D4
	cmp $32.b,S		; C3 32
	cop $DF.b		; 02 DF
	ora $74B1F6.l		; 0F F6 B1 74
	ora $FD.b,S		; 03 FD
	dec $0BFF.w,X		; DE FF 0B
	ora $33.b,S		; 03 33
	eor $2F0F84.l,X		; 5F 84 0F 2F
	inc $ED03.w		; EE 03 ED
	bne  30.b		; D0 1E
	trb $98.b		; 14 98
	rol $00FF.w		; 2E FF 00
	dec $DF43.w,X		; DE 43 DF
	ora $2A.b,X		; 15 2A
	tay		; A8
	ora ($1B.b)		; 12 1B
	sbc ($FE.b),Y		; F1 FE
	sbc $4D.b		; E5 4D
	trb $2B.b		; 14 2B
	ldy $F1.b,X		; B4 F1
	asl $10DF.w		; 0E DF 10
	sbc $41F40F.l		; EF 0F F4 41
	ldy $E1.b,X		; B4 E1
	and $EE32BF.l		; 2F BF 32 EE
	sbc $52F5.w		; ED F5 52
	ldy $E0.b,X		; B4 E0
	and $0D33BE.l		; 2F BE 33 0D
	cmp $52F5.w,X		; DD F5 52
	clv		; B8
	cmp $1C.b,S		; C3 1C
	sbc ($60.b),Y		; F1 60
	cmp $3600.w		; CD 00 36
	sbc $C3B8.w,X		; FD B8 C3
	ora $40E4.w		; 0D E4 40
	cpy $741F.w		; CC 1F 74
	cmp $D1B4.w,X		; DD B4 D1
	ora $43B2.w		; 0D B2 43
	xba		; EB
	cpy $3F67.w		; CC 67 3F
	clv		; B8
	cop $ED.b		; 02 ED
	ora [$1C.b],Y		; 17 1C
	lda $CE4D17.l,X		; BF 17 4D CE
	iny		; C8
	and $ED32E0.l		; 2F E0 32 ED
	ora $F2EE52.l		; 0F 52 EE F2
	iny		; C8
	sbc $D02EE4.l,X		; FF E4 2E D0
	ora $4D.b,S		; 03 4D
	inc $C430.w		; EE 30 C4
	inc $1E02.w		; EE 02 1E
	dec $2F34.w,X		; DE 34 2F
	sbc ($1E.b,X)		; E1 1E
	cpy $E1.b		; C4 E1
	jsr $F4DD.w		; 20 DD F4
	eor ($EF.b,X)		; 41 EF
	bpl -48.b		; 10 D0
	iny		; C8
	and $2D23DF.l		; 2F DF 23 2D
	cpx #$F31F.w		; E0 1F F3
	asl $EFC4.w		; 0E C4 EF
	and ($1E.b,S),Y		; 33 1E
	bpl  -3.b		; 10 FD
	cop $0D.b		; 02 0D
	pei ($C8.b)		; D4 C8
	trb $2EC3.w		; 1C C3 2E
	cmp ($30.b)		; D2 30
	bcs  84.b		; B0 54
	cpy $12C0.w		; CC C0 12
	and $CB1FEF.l		; 2F EF 1F CB
	ora $31.b,X		; 15 31
	ora ($C4.b)		; 12 C4
	inc $0C02.w		; EE 02 0C
	sbc $5F.b		; E5 5F
	cpx #$D01F.w		; E0 1F D0
	cpy #$DBF0.w		; C0 F0 DB
	pea $1341.w		; F4 41 13
	and $C0FDEF.l		; 2F EF FD C0
	ldx $2144.w,Y		; BE 44 21
	jsl $DBFFFE.l		; 22 FE FF DB
	sbc $B4.b,S		; E3 B4
	bit $FCF2.w		; 2C F2 FC
	sbc ($0D.b)		; F2 0D
	sep #$42		; E2 42
	sbc $CF5FA8.l		; EF A8 5F CF
	and ($0D.b),Y		; 31 0D
	sbc $2E.b,X		; F5 2E
	cmp ($4E.b,X)		; C1 4E
	ldy $DC.b		; A4 DC
	trb $0B.b		; 14 0B
	pei ($60.b)		; D4 60
	cmp ($3D.b)		; D2 3D
	lda $22B4.w,X		; BD B4 22
	inc $2E13.w		; EE 13 2E
	sbc ($EC.b)		; F2 EC
	ora $3F.b,S		; 03 3F
	cpy $F1.b		; C4 F1
	ora $03FDF1.l,X		; 1F F1 FD 03
	bmi -15.b		; 30 F1
	ora $22C8.w		; 0D C8 22
	cmp $01FC43.l,X		; DF 43 FC 01
	inc $E121.w,X		; FE 21 E1
	iny		; C8
	eor ($EC.b,X)		; 41 EC
	bpl  -1.b		; 10 FF
	bmi -29.b		; 30 E3
	lsr $C8CF.w		; 4E CF C8
	ora $331E01.l,X		; 1F 01 1E 33
	inc $1FD0.w,X		; FE D0 1F
	ora $C8.b,S		; 03 C8
	sbc $01CD52.l		; EF 52 CD 01
	ora $43EF21.l		; 0F 21 EF 43
	cpy #$0142.w		; C0 42 01
	asl $EBF0.w		; 0E F0 EB
	cmp $53.b,S		; C3 53
	ora ($C0.b),Y		; 11 C0
	asl $0ED0.w,X		; 1E D0 0E
	lda $102144.l,X		; BF 44 21 10
	sbc $DB10C0.l		; EF C0 10 DB
	trb $31.b		; 14 31
	ora ($FE.b),Y		; 11 FE
	ora ($EB.b,X)		; 01 EB
	cpy #$42E4.w		; C0 E4 42
	ora ($0E.b),Y		; 11 0E
	cpx #$B10D.w		; E0 0D B1
	eor ($C0.b,S),Y		; 53 C0
	bpl  15.b		; 10 0F
	cpx #$BE1F.w		; E0 1F BE
	bit $21.b,X		; 34 21
	ora $10EFC0.l		; 0F C0 EF 10
	jmp.w [$3114]		; DC 14 31
	brk $FF.b		; 00 FF
	ora ($C4.b,X)		; 01 C4
	cpx $1E26.w		; EC 26 1E
	cpx #$020F.w		; E0 0F 02
	tsb $C0D5.w		; 0C D5 C0
	mvp $00,$1F		; 44 1F 00
	cpx #$CB20.w		; E0 20 CB
	ora $40.b,X		; 15 40
	cpy #$FEF0.w		; C0 F0 FE
	ora ($FB.b)		; 12 FB
	cmp $53.b,S		; C3 53
	sbc $F1C00F.l,X		; FF 0F C0 F1
	rol $45AE.w		; 2E AE 45
	ora $21FF00.l,X		; 1F 00 FF 21
	cpy $CD.b		; C4 CD
	eor $0D.b,X		; 55 0D
	sbc ($0F.b,X)		; E1 0F
	ora ($EC.b)		; 12 EC
	sbc $C0.b,X		; F5 C0
	mvn $0F,$00		; 54 00 0F
	cpx #$BC2F.w		; E0 2F BC
	and $30.b		; 25 30
	cpy #$FF00.w		; C0 00 FF
	ora ($FB.b)		; 12 FB
	cmp ($52.b,S),Y		; D3 52
	brk $0F.b		; 00 0F
	cpy #$2EF1.w		; C0 F1 2E
	ldx $1044.w,Y		; BE 44 10
	brk $FF.b		; 00 FF
	ora ($C4.b),Y		; 11 C4
	dec $1D44.w		; CE 44 1D
	beq  15.b		; F0 0F
	cop $0C.b		; 02 0C
	sbc $C0.b		; E5 C0
	mvp $00,$00		; 44 00 00
	cpx #$CC10.w		; E0 10 CC
	trb $30.b		; 14 30
	cpy #$0E00.w		; C0 00 0E
	ora ($FC.b,X)		; 01 FC
	cmp ($42.b)		; D2 42
	brk $0F.b		; 00 0F
	ldy $F3.b,X		; B4 F3
	tsb $71D5.w		; 0C D5 71
	cmp $E110.w		; CD 10 E1
	asl $F3B8.w,X		; 1E B8 F3
	eor $0F21BE.l,X		; 5F BE 21 0F
	bpl -32.b		; 10 E0
	.db $42, $B8		; 42 B8
	sbc $1EE3.w		; ED E3 1E
	ora ($0E.b,X)		; 01 0E
	cop $4F.b		; 02 4F
	cmp $FE01A4.l		; CF A4 01 FE
	cpx #$E5FD.w		; E0 FD E5
	.db $62, $EF, $10		; 62 EF 10
	tya		; 98
	cpx $DD44.w		; EC 44 DD
	ora [$3D.b]		; 07 3D
	lda ($60.b,X)		; A1 60
	ldy $2498.w		; AC 98 24
	sbc $D32EF4.l,X		; FF F4 2E D3
	bpl -49.b		; 10 CF
	and ($A4.b),Y		; 31 A4
	jsr ($30F2.w,X)		; FC F2 30
	sbc $F10E22.l		; EF 22 0E F1
	and ($A4.b,X)		; 21 A4
	sbc $3FF3.w		; ED F3 3F
	dec $FE32.w		; CE 32 FE
	ora ($10.b)		; 12 10
	sty $F0.b,X		; 94 F0
	cmp $0B15.w,X		; DD 15 0B
	ldx #$DE62.w		; A2 62 DE
	bit $94.b		; 24 94
	ora $40F3ED.l,X		; 1F ED F3 40
	plb		; AB
	and $0D.b		; 25 0D
	cpx $98.b		; E4 98
	jsr ($EB05.w,X)		; FC 05 EB
	sbc [$2B.b],Y		; F7 2B
	sta ($71.b,S),Y		; 93 71
	dec $2398.w		; CE 98 23
	asl $EDF1.w		; 0E F1 ED
	mvp $E4,$EB		; 44 EB E4
	eor $33BB88.l,X		; 5F 88 BB 33
	lsr $E3DB.w		; 4E DB E3
	eor ($EA.b)		; 52 EA
	sbc ($A4.b,S),Y		; F3 A4
	jsl $30F10F.l		; 22 0F F1 30
	cmp $20E2.w,X		; DD E2 20
	inc $32A8.w,X		; FE A8 32
	ora $31D2.w		; 0D D2 31
	cpx $32E3.w		; EC E3 32
	inc $F0A8.w,X		; FE A8 F0
	and ($DD.b)		; 32 DD
	cop $2F.b		; 02 2F
	bcs  21.b		; B0 15
	rol $EFB8.w,X		; 3E B8 EF
	jsl $20F1EF.l		; 22 EF F1 20
	cmp $2024.w,X		; DD 24 20
	clv		; B8
	dec $0D23.w		; CE 23 0D
	sbc ($22.b,X)		; E1 22
	dec $4E05.w		; CE 05 4E
	clv		; B8
	cmp $0F13.w,X		; DD 13 0F
	cmp ($20.b),Y		; D1 20
	sbc $B81E24.l		; EF 24 1E B8
	cmp $01FE22.l		; CF 22 FE 01
	ora $DD2103.l		; 0F 03 21 DD
	clv		; B8
	sbc ($01.b)		; F2 01
	beq  15.b		; F0 0F
	sbc ($33.b)		; F2 33
	xce		; FB
	sbc $FE32B8.l		; EF B8 32 FE
	bpl  -1.b		; 10 FF
	bit $2C.b,X		; 34 2C
	ldx $B832.w,Y		; BE 32 B8
	ora $150FFF.l,X		; 1F FF 0F 15
	and $31F3AD.l,X		; 3F AD F3 31
	clv		; B8
	sbc $6113FE.l		; EF FE 13 61
	cmp #$E2.b		; C9 E2
	.db $42, $0E		; 42 0E
	iny		; C8
	beq -30.b		; F0 E2
	and ($1C.b),Y		; 31 1C
	cmp $EE1023.l,X		; DF 23 10 EE
	iny		; C8
	ora $CC2E24.l		; 0F 24 2E CC
	trb $20.b		; 14 20
	inc $C40E.w,X		; FE 0E C4
	cmp ($46.b),Y		; D1 46
	and $03BD.w		; 2D BD 03
	bmi  -2.b		; 30 FE
	sbc $43C8.w		; ED C8 43
	ora $24BE.w,X		; 1D BE 24
	and $130EEF.l		; 2F EF 0E 13
	iny		; C8
	and ($CC.b),Y		; 31 CC
	sbc $32.b,S		; E3 32
	inc $00FF.w,X		; FE FF 00
	bit $C8.b,X		; 34 C8
	sbc $24B0.w,X		; FD B0 24
	asl $F0FF.w,X		; 1E FF F0
	ora ($31.b)		; 12 31
	iny		; C8
	wai		; CB
	sbc ($50.b,S),Y		; F3 50
	sbc $33F0F0.l		; EF F0 F0 33
	trb $CEC8.w		; 1C C8 CE
	bit $1F.b,X		; 34 1F
	cmp ($FF.b),Y		; D1 FF
	ora $30.b,S		; 03 30
	xba		; EB
	iny		; C8
	sbc $41.b,S		; E3 41
	sbc $FF01.w,X		; FD 01 FF
	and $2D.b,S		; 23 2D
	lda $1E24C8.l,X		; BF C8 24 1E
	sbc ($F1.b,X)		; E1 F1
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	cpx $C8E2.w		; EC E2 C8
	and ($FD.b)		; 32 FD
	bpl -16.b		; 10 F0
	pea $BD20.w		; F4 20 BD
	trb $C8.b		; 14 C8
	bpl -17.b		; 10 EF
	bpl  -1.b		; 10 FF
	and ($1D.b)		; 32 1D
	cpy #$23.b		; C0 23
	cpy $20.b		; C4 20
	beq  15.b		; F0 0F
	sbc $CE2E25.l		; EF 25 2E CE
	ora ($C8.b)		; 12 C8
	sbc $030EF1.l,X		; FF F1 0E 03
	and $3012EB.l,X		; 3F EB 12 30
	iny		; C8
	cpx #$00.b		; E0 00
	inc $2F23.w,X		; FE 23 2F
	dec $2F03.w		; CE 03 2F
	iny		; C8
	beq   0.b		; F0 00
	inc $1F24.w,X		; FE 24 1F
	ldx $2022.w,Y		; BE 22 20
	iny		; C8
	cpx #$0F.b		; E0 0F
	asl $3D32.w		; 0E 32 3D
	cmp $2F22.w,X		; DD 22 2F
	clv		; B8
	asl $D00F.w		; 0E 0F D0
	and $4E.b,X		; 35 4E
	txs		; 9A
	ora $50.b,X		; 15 50
	clv		; B8
	bne -32.b		; D0 E0
	sbc $A95F16.l		; EF 16 5F A9
	cop $71.b		; 02 71
	iny		; C8
	sbc $02FF00.l,X		; FF 00 FF 02
	and ($ED.b),Y		; 31 ED
	cmp ($32.b),Y		; D1 32
	clv		; B8
	asl $EFD1.w		; 0E D1 EF
	sbc ($73.b),Y		; F1 73
	asl A		; 0A
	sta $3EB836.l,X		; 9F 36 B8 3E
	inc $0F0E.w		; EE 0E 0F
	eor $2D.b		; 45 2D
	ldy $B405.w		; AC 05 B4
	mvp $EE,$20		; 44 20 EE
	inc $44E0.w		; EE E0 44
	bmi -35.b		; 30 DD
	tay		; A8
	rol $2F.b		; 26 2F
	inc $E0F0.w		; EE F0 E0
	tsb $44.b		; 04 44
	sbc #$A8.b		; E9 A8
	lda $D01E55.l,X		; BF 55 1E D0
	beq -17.b		; F0 EF
	and $32.b		; 25 32
	ldy $4E.b		; A4 4E
	ldy $4003.w,X		; BC 03 40
	sbc $ECFE.w,X		; FD FE EC
.ACCU 8
	sep #$A8		; E2 A8
	bmi -20.b		; 30 EC
	beq  64.b		; F0 40
	sbc $FE11F0.l,X		; FF F0 11 FE
	tya		; 98
.ACCU 8
	sep #$67		; E2 67
	ora $13AD.w		; 0D AD 13
	sbc ($E2.b),Y		; F1 E2
	and $E0FEA8.l		; 2F A8 FE E0
	and ($31.b,S),Y		; 33 31
	jmp.w [$21E1]		; DC E1 21
	ora $FD11A8.l		; 0F A8 11 FD
	sbc $EC2134.l		; EF 34 21 EC
	beq  18.b		; F0 12
	dey		; 88
	tda		; 7B
	cmp $FCF0.w		; CD F0 FC
	bpl 116.b		; 10 74
	and $D488CD.l		; 2F CD 88 D4
	and $FE.b,S		; 23 FE
	sbc ($0F.b),Y		; F1 0F
	ldy $3316.w		; AC 16 33
	dey		; 88
	ora $12DF.w,X		; 1D DF 12
	bmi  30.b		; 30 1E
	cmp ($2D.b),Y		; D1 2D
	wai		; CB
	dey		; 88
	and $5F.b,X		; 35 5F
	jmp.w [$46D4]		; DC D4 46
	ora $EFDE.w,X		; 1D DE EF
	dey		; 88
	bit $2D.b		; 24 2D
	dec $30D3.w		; CE D3 30
	sbc $F1.b,S		; E3 F1
	sbc ($98.b,S),Y		; F3 98
	bpl  14.b		; 10 0E
	sbc $EC2D24.l		; EF 24 2D EC
	cop $0F.b		; 02 0F
	sty $E1.b,X		; 94 E1
	and ($FE.b)		; 32 FE
	tsb $33.b		; 04 33
	bpl -15.b		; 10 F1
	jsl $00CC88.l		; 22 88 CC 00
	and ($DD.b,X)		; 21 DD
	eor $2D.b,S		; 43 2D
	jsr $8820.w		; 20 20 88
	ora $55B1.w		; 0D B1 55
	jsr ($12BE.w,X)		; FC BE 12
	brk $D2.b		; 00 D2
	dey		; 88
	.db $42, $D0		; 42 D0
	jsr $ED10.w		; 20 10 ED
	and $88DC60.l		; 2F 60 DC 88
	sbc $A01C42.l		; EF 42 1C A0
	adc $EF.b		; 65 EF
	eor ($DE.b,X)		; 41 DE
	dey		; 88
	sbc $CC4023.l		; EF 23 40 CC
	sbc $FF34.w,X		; FD 34 FF
	lda $5388.w,X		; BD 88 53
	lsr $1F2F.w		; 4E 2F 1F
	bne   1.b		; D0 01
	jsr $88FF.w		; 20 FF 88
	sbc $0C1FF1.l,X		; FF F1 1F 0C
	dec $62.b		; C6 62
	inc $78F0.w		; EE F0 78
	.db $42, $FB		; 42 FB
	cmp $35.b,S		; C3 35
	ldx $03FF.w,Y		; BE FF 03
	sbc $1C78.w,X		; FD 78 1C
	lda ($77.b),Y		; B1 77
	asl $02E1.w,X		; 1E E1 02
	sbc $88EE.w,X		; FD EE 88
	jsr $FF02.w		; 20 02 FF
	asl $E032.w		; 0E 32 E0
	dec $84E0.w		; CE E0 84
	ora ($42.b)		; 12 42
	cop $35.b		; 02 35
	eor $30.b,S		; 43 30
	inc $8801.w,X		; FE 01 88
	and $101D.w,X		; 3D 1D 10
	brk $FF.b		; 00 FF
	dec $3E35.w,X		; DE 35 3E
	sei		; 78
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	ora ($EF.b),Y		; 11 EF
	inc $34E4.w,X		; FE E4 34
	cmp $0EFE84.l		; CF 84 FE 0E
	sbc $9DBB.w,X		; FD BB 9D
	ora $11.b,S		; 03 11
	and ($78.b,S),Y		; 33 78
	jsr $B0E2.w		; 20 E2 B0
	cmp ($24.b),Y		; D1 24
	cop $EA.b		; 02 EA
	lsr $5C78.w		; 4E 78 5C
	bit $F1FD.w		; 2C FD F1
	ora $62.b,S		; 03 62
	cpx $7812.w		; EC 12 78
	brk $10.b		; 00 10
	bcs  46.b		; B0 2E
	and ($0E.b),Y		; 31 0E
	sep #$00		; E2 00
	sei		; 78
	ora $F0111C.l,X		; 1F 1C 11 F0
	sbc ($D4.b),Y		; F1 D4
	ora $F1.b		; 05 F1
	sei		; 78
	bne   0.b		; D0 00
	sbc ($00.b),Y		; F1 00
	sbc $0D502D.l		; EF 2D 50 0D
	pla		; 68
	rtl		; 6B

	ldx $2C.b,Y		; B6 2C
	and $46B2A5.l		; 2F A5 B2 46
	cpx $78.b		; E4 78
	inc $1010.w		; EE 10 10
	ora $5D3DFD.l,X		; 1F FD 3D 5D
	jmp $F278.w		; 4C 78 F2
	sbc ($10.b,X)		; E1 10
	cop $CF.b		; 02 CF
	and $783F00.l		; 2F 00 3F 78
	sbc ($C1.b,S),Y		; F3 C1
	ora ($00.b),Y		; 11 00
	beq  30.b		; F0 1E
	ora ($0E.b,X)		; 01 0E
	sta $EF.b		; 85 EF
	asl $000F.w		; 0E 0F 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	sbc $F3.b		; E5 F3
	dec A		; 3A
	and ($75.b)		; 32 75
	lsr $73FD.w,X		; 5E FD 73
	rts		; 60

	ora $024CE1.l,X		; 1F E1 4C 02
	lsr $10B1.w,X		; 5E B1 10
	tas		; 1B
	stz $23.b,X		; 74 23
	bne  33.b		; D0 21
	asl $11A4.w		; 0E A4 11
.ACCU 8
	sep #$2F		; E2 2F
	bra   1.b		; 80 01
	sbc ($F2.b,X)		; E1 F2
	inc $6FF4.w		; EE F4 6F
	bpl  14.b		; 10 0E
	bra   3.b		; 80 03
	sbc ($24.b)		; F2 24
	sbc $E030A2.l,X		; FF A2 30 E0
	eor $80.b,S		; 43 80
	tsb $E2.b		; 04 E2
	and $BD1B.w		; 2D 1B BD
	cmp $0F.b		; C5 0F
	phd		; 0B
	bcc  36.b		; 90 24
	jsr $3FFE.w		; 20 FE 3F
	ora ($F0.b),Y		; 11 F0
	inc $9000.w,X		; FE 00 90
	cmp $F2F0.w		; CD F0 F2
	jsr $1CF0.w		; 20 F0 1C
	sbc ($10.b),Y		; F1 10
	bcc   1.b		; 90 01
	jsl $1D010D.l		; 22 0D 01 1D
	ora $90CE00.l,X		; 1F 00 CE 90
	rol $CEDE.w,X		; 3E DE CE
	and $1100ED.l		; 2F ED 00 11
	ora $B190.w		; 0D 90 B1
	sbc $D02E.w,X		; FD 2E D0
	sbc $001F3E.l,X		; FF 3E 1F 00
	bcc  51.b		; 90 33
	sbc ($BA.b,S),Y		; F3 BA
	inc $01CF.w		; EE CF 01
	cmp $00A415.l,X		; DF 15 A4 00
	sbc ($C3.b,S),Y		; F3 C3
	beq -14.b		; F0 F2
	cmp $A8E41D.l		; CF 1D E4 A8
	ldx $B67E.w		; AE 7E B6
	ora $FDF4F1.l,X		; 1F F1 F4 FD
	sta $31F1B8.l,X		; 9F B8 F1 31
	lsr $0FEF.w,X		; 5E EF 0F
	rol $3D0F.w		; 2E 0F 3D
	ldy $BD.b,X		; B4 BD
	sep #$45		; E2 45
	ora ($33.b),Y		; 11 33
	sbc $B8B10C.l,X		; FF 0C B1 B8
	cmp $5B22.w,X		; DD 22 5B
	eor $112DD0.l		; 4F D0 2D 11
	sbc $CD1EC0.l,X		; FF C0 1E CD
	cpy $2313.w		; CC 13 23
	and ($33.b,S),Y		; 33 33
	asl $DEB4.w		; 0E B4 DE
	ora ($04.b,X)		; 01 04
	rts		; 60

	sbc ($21.b,X)		; E1 21
	asl $B42E.w		; 0E 2E B4
	jmp.w [$1FB1]		; DC B1 1F
	adc $E3.b,X		; 75 E3
	ora ($2D.b,X)		; 01 2D
	rep #$C4		; C2 C4
	dec $F1F0.w,X		; DE F0 F1
	mvp $10,$00		; 44 00 10
	cmp $B4E3.w,X		; DD E3 B4
	inc $30D1.w		; EE D1 30
	sbc $43.b,X		; F5 43
	brk $C3.b		; 00 C3
	nop		; EA
	clv		; B8
	and ($E4.b,X)		; 21 E4
	adc $CF22FB.l		; 6F FB 22 CF
	ora ($00.b),Y		; 11 00
	ldy $1A.b,X		; B4 1A
	lda $525014.l,X		; BF 14 50 52
	cmp ($21.b)		; D2 21
	asl A		; 0A
	clv		; B8
	cmp $3E.b,X		; D5 3E
	and [$19.b]		; 27 19
	sbc ($0E.b,X)		; E1 0E
	ora ($FB.b,S),Y		; 13 FB
	clv		; B8
	and ($DE.b)		; 32 DE
	eor ($EE.b,S),Y		; 53 EE
	sbc ($0F.b)		; F2 0F
	sbc ($0F.b)		; F2 0F
	clv		; B8
	bpl -30.b		; 10 E2
	sbc $34F3.w		; ED F3 34
	and $0FDE.w		; 2D DE 0F
	ldy $E0.b,X		; B4 E0
	plx		; FA
	cmp $41.b,S		; C3 41
	sbc ($6F.b,S),Y		; F3 6F
	lda $FFC464.l		; AF 64 C4 FF
	cpx $00E1.w		; EC E1 00
	and $3D.b,X		; 35 3D
	bne  16.b		; D0 10
	iny		; C8
	sbc ($2B.b),Y		; F1 2B
	tsb $1D.b		; 04 1D
	dec $3C.b,X		; D6 3C
	rep #$4F		; C2 4F
	cpy $DC.b		; C4 DC
	sbc ($EE.b)		; F2 EE
	and $1E.b		; 25 1E
	cmp ($1F.b),Y		; D1 1F
	cop $C4.b		; 02 C4
	and $A21DF1.l		; 2F F1 1D A2
	rti		; 40

	sbc ($11.b),Y		; F1 11
	dec $4FC8.w,X		; DE C8 4F
	sbc ($2F.b),Y		; F1 2F
	ldx $DF54.w		; AE 54 DF
	and $DD.b,S		; 23 DD
	cpy $D1.b		; C4 D1
	bpl  18.b		; 10 12
	tsb $3FC1.w		; 0C C1 3F
	sbc ($40.b),Y		; F1 40
	iny		; C8
	cpx #$E330.w		; E0 30 E3
	ora $EF24ED.l		; 0F ED 24 EF
	ora ($C8.b,S),Y		; 13 C8
	ora $0FE2.w		; 0D E2 0F
	sbc $21.b,S		; E3 21
	sbc $C4DCF3.l		; EF F3 DC C4
	cop $00.b		; 02 00
	ora ($2C.b,S),Y		; 13 2C
	cmp $311311.l		; CF 11 13 31
	iny		; C8
	beq -20.b		; F0 EC
	mvp $F1,$F2		; 44 F2 F1
	plx		; FA
	sbc ($13.b,S),Y		; F3 13
	iny		; C8
	ora ($FE.b),Y		; 11 FE
	sbc $31D3.w,X		; FD D3 31
	and $C8DF1D.l,X		; 3F 1D DF C8
	ora $CF3033.l		; 0F 33 30 CF
	beq -32.b		; F0 E0
	tsb $4D.b		; 04 4D
	iny		; C8
	asl $D0FF.w,X		; 1E FF D0
	and ($11.b)		; 32 11
	brk $C0.b		; 00 C0
	cpx #$21C8.w		; E0 C8 21
	brk $5E.b		; 00 5E
	cpy #$D1F2.w		; C0 F2 D1
	and ($0F.b),Y		; 31 0F
	clv		; B8
	sbc ($DF.b),Y		; F1 DF
	ora ($0C.b,X)		; 01 0C
	eor [$B0.b],Y		; 57 B0
.INDEX 16
	rep #$1B		; C2 1B
	cpy $EF.b		; C4 EF
	ora ($02.b)		; 12 02
	and ($FF.b,X)		; 21 FF
	jsr ($23D2.w,X)		; FC D2 23
	clv		; B8
	lda $19.b,S		; A3 19
	cmp $24.b,S		; C3 24
	ora ($2E.b),Y		; 11 2E
	dec $C4E0.w		; CE E0 C4
	asl $22F4.w		; 0E F4 22
	asl $DF1D.w		; 0E 1D DF
	jsl $32B411.l		; 22 11 B4 32
	cpx $12CF.w		; EC CF 12
.ACCU 16
	rep #$6F		; C2 6F
	phd		; 0B
	ora ($B0.b)		; 12 B0
	jmp.w [$2FE1]		; DC E1 2F
	cop $33.b		; 02 33
	and ($31.b,S),Y		; 33 31
	txs		; 9A
	ldy $40.b,X		; B4 40
	jsr $CC32.w		; 20 32 CC
	sbc $31352F.l		; EF 2F 35 31
	ldy $EE.b,X		; B4 EE
	inc $26EB.w		; EE EB 26
	jsl $D00AD2.l		; 22 D2 0A D0
	ldy $21.b,X		; B4 21
	tsb $21.b		; 04 21
	brk $EC.b		; 00 EC
	ora $CC.b,S		; 03 CC
	adc ($B4.b,X)		; 61 B4
	eor $DCE4.w		; 4D E4 DC
	sbc ($2F.b),Y		; F1 2F
	trb $11.b		; 14 11
	asl $EFB4.w		; 0E B4 EF
	pld		; 2B
	lda [$24.b],Y		; B7 24
	cmp $14BE4C.l,X		; DF 4C BE 14
	ldy $F1.b,X		; B4 F1
	eor ($1E.b),Y		; 51 1E
	sbc $DBF2.w,X		; FD F2 DB
	adc $2F.b,S		; 63 2F
	ldy $C5.b,X		; B4 C5
	stp		; DB
	brk $40.b		; 00 40
	pea $EF11.w		; F4 11 EF
	inc $12B0.w,X		; FE B0 12
	ldy $3E11.w		; AC 11 3E
	and $ED.b,S		; 23 ED
	dec $B0FD.w,X		; DE FD B0
	ora $45.b,S		; 03 45
	eor ($F0.b,S),Y		; 53 F0
	rol A		; 2A
	sta $B4F235.l,X		; 9F 35 F2 B4
	tas		; 1B
	bcs  98.b		; B0 62
.ACCU 8
	sep #$21		; E2 21
	sbc $122F.w		; ED 2F 12
	bcs -53.b		; B0 CB
	sbc $FF142E.l,X		; FF 2E 14 FF
	inc $F1EC.w		; EE EC F1
	cpy #$3223.w		; C0 23 32
	inc $CE00.w,X		; FE 00 CE
	ora ($2F.b)		; 12 2F
	bpl -76.b		; 10 B4
	ldx $FE27.w,Y		; BE 27 FE
	jsl $13F20D.l		; 22 0D F2 13
	lda $60B4.w,Y		; B9 B4 60
	and $CD05.w,X		; 3D 05 CD
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	ora ($32.b,S),Y		; 13 32
	bcs  49.b		; B0 31
	cmp $AD12.w,X		; DD 12 AD
	and $2C.b,S		; 23 2C
	ora ($DC.b),Y		; 11 DC
	bcs -62.b		; B0 C2
	and $1064F2.l		; 2F F2 64 10
	sbc ($2A.b),Y		; F1 2A
	lda ($B0.b)		; B2 B0
	bit $E1.b		; 24 E1
	bit $14BA.w		; 2C BA 14
	ora ($34.b,X)		; 01 34
	bmi -64.b		; 30 C0
	brk $21.b		; 00 21
	cmp $211F01.l,X		; DF 01 1F 21
	cpx $B4E2.w		; EC E2 B4
	dec $1A34.w,X		; DE 34 1A
	sbc ($13.b,X)		; E1 13
	tyx		; BB
	adc ($1E.b),Y		; 71 1E
	bcs -29.b		; B0 E3
	jsr ($31BD.w,X)		; FC BD 31
	ora ($44.b)		; 12 44
	inc $C0F3.w,X		; FE F3 C0
	and $F002D0.l,X		; 3F D0 02 F0
	and $0101DC.l		; 2F DC 01 01
	ldy $24.b,X		; B4 24
	phx		; DA
	cpx #$6F.b		; E0 6F
	stx $21.b,Y		; 96 21
	jmp.w [$C45D]		; DC 5D C4
	cpx #$23.b		; E0 23
	sbc $120E11.l		; EF 11 0E 12
	tsb $B4E4.w		; 0C E4 B4
	ora ($D0.b)		; 12 D0
	dec A		; 3A
	lda $30E265.l,X		; BF 65 E2 30
	tyx		; BB
	bcs -47.b		; B0 D1
	bvc -95.b		; 50 A1
	cop $EF.b		; 02 EF
	and $C4E1DB.l,X		; 3F DB E1 C4
	beq  34.b		; F0 22
	ora $2EF0.w		; 0D F0 2E
	pei ($11.b)		; D4 11
	sbc $A92DB0.l		; EF B0 2D A9
	asl $21.b		; 06 21
	jsl $6FF31D.l		; 22 1D F3 6F
	ldy $A6.b,X		; B4 A6
	ora $C2.b,S		; 03 C2
	phk		; 4B
	dec $F342.w		; CE 42 F3
	and ($B0.b)		; 32 B0
	eor $A23DDF.l		; 4F DF 3D A2
	bit $EE.b		; 24 EE
	trb $C0CD.w		; 1C CD C0
	jsl $0F11F0.l		; 22 F0 11 0F
	and $1C.b,S		; 23 1C
	cpx #$00.b		; E0 00
	ldy $F6.b,X		; B4 F6
	dex		; CA
	cpx $5E.b		; E4 5E
	ora ($1D.b,S),Y		; 13 1D
.ACCU 16
	rep #$6C		; C2 6C
	cpy #$CF.b		; C0 CF
	ora ($0F.b,S),Y		; 13 0F
	ora $1003DC.l,X		; 1F DC 03 10
	ora ($B0.b)		; 12 B0
	phd		; 0B
	inc $4A.b		; E6 4A
	cmp ($2F.b)		; D2 2F
	rep #$0C		; C2 0C
	cmp ($B0.b,X)		; C1 B0
	bvc -14.b		; 50 F2
	and ($E1.b)		; 32 E1
	ror $369F.w		; 6E 9F 36
	beq -64.b		; F0 C0
	asl $12CD.w		; 0E CD 12
	ora ($11.b),Y		; 11 11
	sbc $B0D020.l,X		; FF 20 D0 B0
	bit $FF.b		; 24 FF
	ora $23BC.w,X		; 1D BC 23
	ora ($43.b,S),Y		; 13 43
	sbc $CF20C0.l,X		; FF C0 20 CF
	ora ($1F.b,S),Y		; 13 1F
	asl $13DE.w,X		; 1E DE 13
	bpl -80.b		; 10 B0
	jsr $53FF.w		; 20 FF 53
	lda $1D23.w		; AD 23 1D
	and $05B0AB.l		; 2F AB B0 05
	ora ($44.b),Y		; 11 44
	ora $9D22.w,X		; 1D 22 9D
	rol $3D.b		; 26 3D
	ldy $3C.b,X		; B4 3C
	cmp ($65.b),Y		; D1 65
	dec $0000.w,X		; DE 00 00
	phk		; 4B
	ldx $B0.b		; A6 B0
	ora $00.b,X		; 15 00
	phd		; 0B
	ldy $0144.w		; AC 44 01
	ora ($14.b)		; 12 14
	bcs  74.b		; B0 4A
	lda $D9F144.l		; AF 44 F1 D9
	bcs  98.b		; B0 62
	ora ($B0.b),Y		; 11 B0
	inc $4AF5.w,X		; FE F5 4A
	cmp ($21.b),Y		; D1 21
	cmp ($FB.b)		; D2 FB
	bne -64.b		; D0 C0
	jsr $1001.w		; 20 01 10
	ora $1C.b,S		; 03 1C
	sbc ($30.b),Y		; F1 30
	beq -80.b		; F0 B0
	lda $50C3.w,Y		; B9 C3 50
	ora ($1F.b)		; 12 1F
	trb $CB.b		; 14 CB
	trb $B4.b		; 14 B4
	asl A		; 0A
	and $44D3.w		; 2D D3 44
	cmp $E10F00.l,X		; DF 00 0F E1
	ldy $03.b,X		; B4 03
	ora $120B.w,X		; 1D 0B 12
	.db $42, $DF		; 42 DF
	sbc ($51.b,X)		; E1 51
	bcs -54.b		; B0 CA
	cop $3D.b		; 02 3D
	asl $26AC.w,X		; 1E AC 26
	ora $22C022.l,X		; 1F 22 C0 22
	cpx $30F2.w		; EC F2 30
	asl $04CD.w		; 0E CD 04
	bmi -76.b		; 30 B4
	ora $0A13.w		; 0D 13 0A
	eor ($1C.b,S),Y		; 53 1C
	lda ($E3.b)		; B2 E3
	eor ($B0.b)		; 52 B0
	eor $26DE.w		; 4D DE 26
	phk		; 4B
	bcs  35.b		; B0 23
.INDEX 8
	sep #$D9		; E2 D9
	cpy $12.b		; C4 12
	rol $0002.w,X		; 3E 02 00
	jmp.w [$4E23]		; DC 23 4E
	sbc $23D4C8.l		; EF C8 D4 23
	cpy $122F.w		; CC 2F 12
	tas		; 1B
	eor ($EF.b,X)		; 41 EF
	cpy #$DE.b		; C0 DE
	inc $2F12.w		; EE 12 2F
	cpx #$25.b		; E0 25
	bit $C8EF.w		; 2C EF C8
	and $C300.w		; 2D 00 C3
	and $ED.b,S		; 23 ED
	ora $C4C211.l,X		; 1F 11 C2 C4
	.db $42, $1D		; 42 1D
	inc $33E2.w,X		; FE E2 33
	inc $21FE.w,X		; FE FE 21
	cpy #$DF.b		; C0 DF
	and $2E.b,S		; 23 2E
	sbc $24D0.w,X		; FD D0 24
	bpl   0.b		; 10 00
	cpy $2D.b		; C4 2D
	sbc $22.b,S		; E3 22
	cmp $3F23EE.l,X		; DF EE 23 3F
	sbc $FAD3B4.l		; EF B4 D3 FA
	adc $2D.b		; 65 2D
	bcs -78.b		; B0 B2
	stz $0C.b		; 64 0C
	ldy $10.b,X		; B4 10
	asl $34A5.w		; 0E A5 34
	inc $16D9.w		; EE D9 16
	rts		; 60

	cpy $0F.b		; C4 0F
	beq -33.b		; F0 DF
	.db $42, $2C		; 42 2C
	inc $43E1.w,X		; FE E1 43
	bcs  82.b		; B0 52
	tsb $A30B.w		; 0C 0B A3
	eor $0D.b,X		; 55 0D
	phx		; DA
	sbc ($C0.b,X)		; E1 C0
	and ($01.b),Y		; 31 01
	jsr $13CE.w		; 20 CE 13
	jsr $DFFD.w		; 20 FD DF
	cpy $30.b		; C4 30
	ora ($E0.b,X)		; 01 E0
	cmp $ED1E43.l		; CF 43 1E ED
	sbc ($C4.b)		; F2 C4
	and ($F0.b)		; 32 F0
	beq -35.b		; F0 DD
	eor $1F.b,S		; 43 1F
	sbc $32C4D1.l		; EF D1 C4 32
	brk $10.b		; 00 10
	jmp.w [$3023]		; DC 23 30
	sbc $C8C0.w		; ED C0 C8
	and ($DF.b),Y		; 31 DF
	inc $353D.w,X		; FE 3D 35
	cmp $C000C1.l,X		; DF C1 00 C0
	sbc ($33.b,X)		; E1 33
	and ($EF.b,X)		; 21 EF
	cmp $4023.w,X		; DD 23 40
	sbc $E3C4.w,X		; FD C4 E3
	and ($00.b)		; 32 00
	sbc $24FE.w,X		; FD FE 24
	jsr $C4CE.w		; 20 CE C4
	bne  67.b		; D0 43
	jsr $F2EC.w		; 20 EC F2
	sbc $30.b,S		; E3 30
	jsr ($F0B4.w,X)		; FC B4 F0
	and $4F.b		; 25 4F
	lda $4BE301.l,X		; BF 01 E3 4B
	cpx #$B0.b		; E0 B0
	dec $2D25.w,X		; DE 25 2D
	dec $3C15.w		; CE 15 3C
	sbc $B0CD.w		; ED CD B0
	rol $1F.b		; 26 1F
	sbc ($41.b)		; F2 41
	ldx $0110.w		; AE 10 01
	jsr $FFB0.w		; 20 B0 FF
	ora $5E.b,S		; 03 5E
	bcs  -2.b		; B0 FE
	ora $3E.b,S		; 03 3E
	sbc $0B25B0.l		; EF B0 25 0B
	sbc $DF44D0.l,X		; FF D0 44 DF
	sbc ($5E.b,S),Y		; F3 5E
	bcs -65.b		; B0 BF
	sbc $3E05.w		; ED 05 3E
	ora $0FDC35.l		; 0F 35 DC 0F
	bcs -17.b		; B0 EF
	eor $E0.b,S		; 43 E0
	pea $AF6F.w		; F4 6F AF
	sbc $B015.w,X		; FD 15 B0
	and $25FF.w,X		; 3D FF 25
	xce		; FB
	inc $35DE.w,X		; FE DE 35
	sbc $61E1B0.l,X		; FF B0 E1 61
	ldx $05ED.w,Y		; BE ED 05
	lsr $05FD.w,X		; 5E FD 05
	bcs  43.b		; B0 2B
	sbc $1224CC.l,X		; FF CC 24 12
	brk $2F.b		; 00 2F
	ldx $21B0.w		; AE B0 21
	sbc ($1F.b,X)		; E1 1F
	sbc ($56.b)		; F2 56
	cmp $F2EE.w,X		; DD EE F2
	ldy $2E.b,X		; B4 2E
	lda ($E4.b)		; B2 E4
	tad		; 5B
	ldy $FC.b		; A4 FC
	mvn $B4,$0D		; 54 0D B4
	beq -12.b		; F0 F4
	plx		; FA
	rts		; 60

	bcs  81.b		; B0 51
	sbc $3BB043.l		; EF 43 B0 3B
	inc $42FF.w,X		; FE FF 42
	jsr ($6001.w,X)		; FC 01 60
	cmp $03EDB0.l		; CF B0 ED 03
	and $1A05E0.l		; 2F E0 05 1A
	cpx #$CE.b		; E0 CE
	bcs  67.b		; B0 43
	ora $D14D02.l,X		; 1F 02 4D D1
	ora $B00101.l		; 0F 01 01 B0
	ora ($42.b,S),Y		; 13 42
	ldx $06EF.w		; AE EF 06
	rol $F5CD.w,X		; 3E CD F5
	bcs  92.b		; B0 5C
	sbc $3244BC.l		; EF BC 44 32
	asl $B110.w		; 0E 10 B1
	cpy #$11.b		; C0 11
	sbc ($FF.b),Y		; F1 FF
	cop $43.b		; 02 43
	sbc $B0F2EF.l		; EF EF F2 B0
	rti		; 40

	inc $0CF2.w,X		; FE F2 0C
	asl $31E0.w,X		; 1E E0 31
	asl $01B0.w		; 0E B0 01
	eor $BF.b,S		; 43 BF
	xba		; EB
	ora $22.b		; 05 22
	ora $0BB0F1.l		; 0F F1 B0 0B
	brk $E0.b		; 00 E0
	jsr $1500.w		; 20 00 15
	eor $B0DF.w,X		; 5D DF B0
	lda $F21053.l,X		; BF 53 10 F2
	jmp $DEE0.w		; 4C E0 DE
	and ($B0.b)		; 32 B0
	bpl -19.b		; 10 ED
	trb $CE.b		; 14 CE
	bit $21C2.w		; 2C C2 21
	bmi -76.b		; 30 B4
	sbc ($4B.b,X)		; E1 4B
	cmp [$DD.b],Y		; D7 DD
	eor ($D0.b),Y		; 51 D0
	tsb $6B.b		; 04 6B
	bcs -64.b		; B0 C0
	cpy $1227.w		; CC 27 12
	sbc $E0B12F.l,X		; FF 2F B1 E0
	bcs  34.b		; B0 22
	sbc $4B06DD.l,X		; FF DD 06 4B
	cmp $B0449D.l,X		; DF 9D 44 B0
	and ($ED.b)		; 32 ED
	sbc $ED.b,S		; E3 ED
	rol $1FC1.w,X		; 3E C1 1F
	ora ($C0.b),Y		; 11 C0
	bit $2D.b		; 24 2D
	asl $31F1.w		; 0E F1 31
	ora $B02EF0.l		; 0F F0 2E B0
	cpx #$CF.b		; E0 CF
	and ($FF.b)		; 32 FF
	inc $CE23.w		; EE 23 CE
	phd		; 0B
	bcs -61.b		; B0 C3
	jsl $0AF120.l		; 22 20 F1 0A
.ACCU 8
	sep #$EF		; E2 EF
	and ($B0.b),Y		; 31 B0
	ora ($14.b,X)		; 01 14
	jmp $54BED0.l		; 5C D0 BE 54
	ora ($13.b)		; 12 13
	bcs  27.b		; B0 1B
	ora $40E3.w,X		; 1D E3 40
	sbc $C140DE.l,X		; FF DE 40 C1
	bcs -20.b		; B0 EC
	sbc ($12.b)		; F2 12
	jsr $1901.w		; 20 01 19
	cmp ($DF.b)		; D2 DF
	ldy $5D.b,X		; B4 5D
	sbc ($12.b,X)		; E1 12
	lsr A		; 4A
	cmp ($C1.b)		; D2 C1
	.db $62, $E1, $B0		; 62 E1 B0
	bpl  -5.b		; 10 FB
	cmp $4203.w,X		; DD 03 42
	inc $3DBE.w,X		; FE BE 3D
	ldy $23.b,X		; B4 23
	lda $2CF530.l,X		; BF 30 F5 2C
	pea $7EAB.w		; F4 AB 7E
	bcs -61.b		; B0 C3
	eor ($12.b),Y		; 51 12
	ora $0C.b,S		; 03 0C
	phd		; 0B
	sbc $41.b,S		; E3 41
	bcs  51.b		; B0 33
	ora ($BB.b,X)		; 01 BB
	cpx $3013.w		; EC 13 30
	bpl -47.b		; 10 D1
	ldy $0A.b,X		; B4 0A
	ror $2DD4.w		; 6E D4 2D
	ora ($F0.b)		; 12 F0
	phk		; 4B
	lda $B0.b		; A5 B0
	stp		; DB
	bit $12.b		; 24 12
	and ($32.b),Y		; 31 32
	lda $B025CC.l		; AF CC 25 B0
	and ($31.b)		; 32 31
	asl A		; 0A
	lda $54B2.w		; AD B2 54
	jsl $FAB400.l		; 22 00 B4 FA
	eor $131FF5.l,X		; 5F F5 1F 13
	inc A		; 1A
	lda ($B4.b,S),Y		; B3 B4
	ldy $50.b,X		; B4 50
	ora $00.b,S		; 03 00
	cmp $442C.w,Y		; D9 2C 44
	jsr $B010.w		; 20 10 B0
	ora ($CA.b),Y		; 11 CA
	cpy DMASRC0L.w		; CC 02 43
	mvn $BB,$1C		; 54 1C BB
	tay		; A8
	ora $FF.b,X		; 15 FF
.INDEX 8
	sep #$DA		; E2 DA
	sbc ($51.b),Y		; F1 51
	rti		; 40

	beq -72.b		; F0 B8
	ora $1FD5EF.l		; 0F EF D5 1F
	lsr $2CD1.w,X		; 5E D1 2C
	ora $F5B0A4.l		; 0F A4 B0 F5
	and $F4.b,X		; 35 F4
	tas		; 1B
	xba		; EB
	dec $A805.w,X		; DE 05 A8
	sbc ($D0.b),Y		; F1 D0
	xba		; EB
	bit $D745.w,X		; 3C 45 D7
	jsr ($A4C2.w,X)		; FC C2 A4
	dec $30EB.w,X		; DE EB 30
	and $5C.b,X		; 35 5C
	cpy #$FF.b		; C0 FF
	tsb $DEA0.w		; 0C A0 DE
	asl $6F.b,X		; 16 6F
	cmp $010CD0.l		; CF D0 0C 01
	bit $94.b		; 24 94
	tsx		; BA
	cmp ($13.b,X)		; C1 13
	and $2E23.w		; 2D 23 2E
	lda $3194EE.l,X		; BF EE 94 31
	jsr $3FF2.w		; 20 F2 3F
	cmp $4331BD.l		; CF BD 31 43
	tya		; 98
	asl $B1D3.w		; 0E D3 B1
	rol $F541.w		; 2E 41 F5
	ldy #$EF.b		; A0 EF
	tya		; 98
	ora $F2.b,S		; 03 F2
	brk $FF.b		; 00 FF
	phd		; 0B
	bit $1F.b		; 24 1F
	bmi -91.b		; 30 A5
	bpl  -2.b		; 10 FE
	cmp $1431E0.l,X		; DF E0 31 14
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	tsb BG2VOFS.w		; 0C 10 21
	cmp ($03.b),Y		; D1 03
	and ($2F.b)		; 32 2F
	and ($70.b),Y		; 31 70
	ora ($20.b),Y		; 11 20
	brk $00.b		; 00 00
	ora ($E3.b)		; 12 E3
	mvp $70,$31		; 44 31 70
	and $0F20FF.l,X		; 3F FF 20 0F
	inc $4403.w,X		; FE 03 44
	ora $1EEF70.l		; 0F 70 EF 1E
	ora ($11.b),Y		; 11 11
	sbc $6E13E1.l,X		; FF E1 13 6E
	stz $EF.b		; 64 EF
	jmp $32F0.w		; 4C F0 32
	ora $0D.b		; 05 0D
	eor ($EC.b,X)		; 41 EC
	sei		; 78
	jsr $122B.w		; 20 2B 12
	cmp ($1F.b),Y		; D1 1F
	eor $0D.b,S		; 43 0D
	cmp ($88.b),Y		; D1 88
	cmp $D4.b,S		; C3 D4
	sbc ($3C.b)		; F2 3C
.ACCU 8
	sep #$E3		; E2 E3
	bne  50.b		; D0 32
	sei		; 78
	tsx		; BA
	eor $D22E11.l		; 4F 11 2E D2
	ldx $E1.b		; A6 E1
	ora ($88.b)		; 12 88
	and ($EC.b,X)		; 21 EC
	eor $21F4B1.l		; 4F B1 F4 21
	ora $F0A82D.l		; 0F 2D A8 F0
	sbc $DD1513.l,X		; FF 13 15 DD
	cmp $65FD.w,X		; DD FD 65
	clv		; B8
	and ($ED.b)		; 32 ED
	cpy #$E0.b		; C0 E0
	and $41.b		; 25 41
	cpx $C8A4.w		; EC A4 C8
	cmp ($13.b),Y		; D1 13
	jsr $D2EF.w		; 20 EF D2
	cmp ($13.b)		; D2 13
	brk $C4.b		; 00 C4
	bpl -48.b		; 10 D0
	cmp $F033F4.l		; CF F4 33 F0
	cmp $23C8DF.l		; CF DF C8 23
	sbc $02E1C1.l,X		; FF C1 E1 02
	and $DF.b,S		; 23 DF
	bne -72.b		; D0 B8
	cpy $25.b		; C4 25
	adc $22CDBC.l		; 6F BC CD 22
	stz $6A.b		; 64 6A
	iny		; C8
	dec $50EF.w,X		; DE EF 50
	jsl $0FEE0D.l		; 22 0D EE 0F
	bvc -56.b		; 50 C8
	and ($DD.b),Y		; 31 DD
	cmp ($F0.b)		; D2 F0
	ror $EC4C.w,X		; 7E 4C EC
	ora ($C4.b),Y		; 11 C4
	cmp ($45.b)		; D2 45
	and $F5DFDC.l,X		; 3F DC DF F5
	eor $FE.b,S		; 43 FE
	clv		; B8
	cmp ($32.b,S),Y		; D3 32
	and $F0A3E3.l		; 2F E3 A3 F0
	and $C410.w		; 2D 10 C4
	ora $EF1031.l		; 0F 31 10 EF
	cpx #$F3.b		; E0 F3
	ora ($1E.b)		; 12 1E
	cpy $FE.b		; C4 FE
	sbc $F03310.l,X		; FF 10 33 F0
	sbc $C011E0.l		; EF E0 11 C0
	sbc $0F3242.l,X		; FF 42 32 0F
	dec $E0FF.w,X		; DE FF E0
	.db $42, $C0		; 42 C0
	jsr $EF0F.w		; 20 0F EF
	beq  -3.b		; F0 FD
	.db $42, $21		; 42 21
	ora ($C0.b),Y		; 11 C0
	inc $0CEF.w		; EE EF 0C
	and ($33.b,S),Y		; 33 33
	sbc $12DF.w,X		; FD DF 12
	cpy $0D.b		; C4 0D
	pei ($20.b)		; D4 20
	bit $1FF0.w		; 2C F0 1F
	brk $E0.b		; 00 E0
	cpy #$53.b		; C0 53
	ora ($E0.b)		; 12 E0
	ora $FC00FF.l		; 0F FF 00 FC
	tsb $C8.b		; 04 C8
	lda ($F1.b),Y		; B1 F1
	beq   1.b		; F0 01
	trb $CD.b		; 14 CD
	sbc ($54.b,X)		; E1 54
	cpy $4D.b		; C4 4D
	lda $F10003.l,X		; BF 03 00 F1
	bpl  -2.b		; 10 FE
	sbc ($C0.b),Y		; F1 C0
	bit $0E.b,X		; 34 0E
	sbc $3112FE.l		; EF FE 12 31
	beq  -1.b		; F0 FF
	ldy $33.b		; A4 33
	inc $FA32.w		; EE 32 FA
	ora $3B.b,S		; 03 3B
	inc $C4A5.w,X		; FE A5 C4
	mvn $24,$AA		; 54 AA 24
	sbc $2D05.w,X		; FD 05 2D
	cpx $B415.w		; EC 15 B4
	asl $4ED1.w		; 0E D1 4E
	inc $2303.w		; EE 03 23
	trb $B0B0.w		; 1C B0 B0
	beq   0.b		; F0 00
	cmp $4324CC.l,X		; DF CC 24 43
	bit $1F.b		; 24 1F
	cpy $FF.b		; C4 FF
	cop $E0.b		; 02 E0
	bpl   2.b		; 10 02
	eor $C0F2DE.l		; 4F DE F2 C0
	bpl -18.b		; 10 EE
	sbc $54150D.l		; EF 0D 15 54
	ldy $B410.w,X		; BC 10 B4
	bit $33D5.w		; 2C D5 33
	plb		; AB
	asl $2D.b		; 06 2D
	cmp $65B022.l,X		; DF 22 B0 65
	sbc $5CF5.w		; ED F5 5C
	cmp $93CB33.l		; CF 33 CB 93
	cpy $5E.b		; C4 5E
	cmp $E022.w		; CD 22 E0
	brk $1F.b		; 00 1F
	cop $F1.b		; 02 F1
	bcs  80.b		; B0 50
	inc $F0D0.w		; EE D0 F0
	and $0020E2.l		; 2F E2 20 00
	bcs  19.b		; B0 13
	ora $22C2DA.l,X		; 1F DA C2 22
	cmp $1624.w,Y		; D9 24 16
	cpy $E1.b		; C4 E1
	asl $D2FE.w,X		; 1E FE D2
	jsl $E2001F.l		; 22 1F 00 E2
	ldy $21.b,X		; B4 21
	and $E1DF.w,Y		; 39 DF E1
	cop $21.b		; 02 21
	ror $B4A2.w		; 6E A2 B4
	ora $2B.b,S		; 03 2B
	tas		; 1B
	lda ($24.b,S),Y		; B3 24
	lsr $D2D1.w		; 4E D1 D2
	ldy $43.b,X		; B4 43
	tas		; 1B
	dec $20C1.w		; CE C1 20
	and ($32.b,S),Y		; 33 32
	lda $2D2FB8.l,X		; BF B8 2F 2D
	sbc $32F021.l,X		; FF 21 F0 32
	tsb $A4D2.w		; 0C D2 A4
	brk $FE.b		; 00 FE
	wai		; CB
	asl $34F5.w		; 0E F5 34
	adc $A423.w		; 6D 23 A4
	jmp.w [$F0DC]		; DC DC F0
	tsb $30.b		; 04 30
	ora $881FE0.l		; 0F E0 1F 88
	ora $25.b,X		; 15 25
	xce		; FB
	ldy $DD.b		; A4 DD
	ora $0402.w,X		; 1D 02 04
	tya		; 98
	ora ($2E.b)		; 12 2E
	cmp ($21.b),Y		; D1 21
	asl $E3A0.w		; 0E A0 E3
	ora $123098.l,X		; 1F 98 30 12
	cmp ($00.b)		; D2 00
	beq -14.b		; F0 F2
	pld		; 2B
	inc $F498.w		; EE 98 F4
	rol $F33F.w		; 2E 3F F3
	sbc $E21F20.l		; EF 20 1F E2
	tya		; 98
	asl $D42C.w		; 0E 2C D4
	bpl  15.b		; 10 0F
	cop $10.b		; 02 10
	inc $4288.w		; EE 88 42
	rol $11C2.w,X		; 3E C2 11
	inc $3BE1.w		; EE E1 3B
	ora ($88.b),Y		; 11 88
	and ($DD.b),Y		; 31 DD
	trb $1F.b		; 14 1F
	phd		; 0B
	tsb $22.b		; 04 22
	cmp $C01A74.l		; CF 74 1A C0
	ora $ABEB.w,X		; 1D EB AB
	sta $43.b,X		; 95 43
	ora $1A3274.l,X		; 1F 74 32 1A
	cmp ($23.b,S),Y		; D3 23
	asl $411F.w		; 0E 1F 41
	ldx $F474.w		; AE 74 F4
	xce		; FB
	cpy #$34.b		; C0 34
	sbc $1012.w		; ED 12 10
	cpx DMASRC7B.w		; EC 74 43
	ora $0F11EF.l,X		; 1F EF 11 0F
	sbc $78F0EF.l,X		; FF EF F0 78
	rol $12CF.w,X		; 3E CF 12
	and ($BE.b)		; 32 BE
	ora $741EF5.l		; 0F F5 1E 74
	bit $E4FE.w		; 2C FE E4
	and ($EF.b,X)		; 21 EF
	asl $0000.w		; 0E 00 00
	sei		; 78
	brk $D1.b		; 00 D1
	cop $11.b		; 02 11
.INDEX 16
	rep #$D0		; C2 D0
	sbc ($24.b),Y		; F1 24
	stz $D1.b,X		; 74 D1
	inc $E30F.w,X		; FE 0F E3
	and $01CF10.l,X		; 3F 10 CF 01
	pla		; 68
	tsa		; 3B
	asl $E0F3.w		; 0E F3 E0
	ora ($FF.b),Y		; 11 FF
	sbc $206412.l,X		; FF 12 64 20
	cmp ($F0.b,X)		; C1 F0
	bpl  15.b		; 10 0F
	dec $E02F.w		; CE 2F E0
	mvn $C0,$FF		; 54 FF C0
	rol $1E32.w		; 2E 32 1E
	lda $54204D.l,X		; BF 4D 20 54
	dec $FAD0.w,X		; DE D0 FA
	eor ($CB.b,S),Y		; 53 CB
	brk $ED.b		; 00 ED
	ora $54.b,X		; 15 54
	adc $3C03AD.l		; 6F AD 03 3C
	cpx $C6F7.w		; EC F7 C6
	dec $0D64.w		; CE 64 0D
	and $1EF1E1.l		; 2F E1 F1 1E
	ora $64DF20.l		; 0F 20 DF 64
	sbc ($2F.b),Y		; F1 2F
	beq -12.b		; F0 F4
	sbc ($F0.b,X)		; E1 F0
	sbc ($00.b),Y		; F1 00
	stz $F0.b		; 64 F0
	cmp ($21.b),Y		; D1 21
	inc $E100.w,X		; FE 00 E1
	cmp $01.b,S		; C3 01
	stz $FF.b		; 64 FF
	sbc $310B12.l		; EF 12 0B 31
	bpl -95.b		; 10 A1
	sbc $54.b,X		; F5 54
	asl $119C.w		; 0E 9C 11
	brk $CF.b		; 00 CF
	bpl  62.b		; 10 3E
.INDEX 16
	rep #$54		; C2 54
	inc $04FF.w,X		; FE FF 04
	lda $C11D1F.l,X		; BF 1F 1D C1
	beq 100.b		; F0 64
	ora $0E01F0.l		; 0F F0 01 0E
	brk $20.b		; 00 20
	phd		; 0B
	and $F20154.l		; 2F 54 01 F2
	bne   0.b		; D0 00
	bpl   1.b		; 10 01
	ora ($D4.b,X)		; 01 D4
	mvp $F2,$EA		; 44 EA F2
	rti		; 40

	cmp $12E0.w,X		; DD E0 12
	sbc $00441E.l,X		; FF 1E 44 00
	and ($D0.b,X)		; 21 D0
	sbc $FFF2FE.l,X		; FF FE F2 FF
	jmp.w [$0134]		; DC 34 01
	inc $DC00.w		; EE 00 DC
	sbc ($43.b,S),Y		; F3 43
	ora $0194F1.l,X		; 1F F1 94 01
	ora $0FF001.l		; 0F 01 F0 0F
	jsr $52F5.w		; 20 F5 52
	ldy $01.b		; A4 01
	dec $21BF.w,X		; DE BF 21
	sbc ($10.b,X)		; E1 10
	ora $DCA0C2.l		; 0F C2 A0 DC
	jsr ($02F2.w,X)		; FC F2 02
	and $32D30F.l		; 2F 0F D3 32
	ldy #$CF50.w		; A0 50 CF
	bne   0.b		; D0 00
	ora ($64.b,X)		; 01 64
	lsr $1A.b,X		; 56 1A
	ldy $1F.b,X		; B4 1F
	sbc $DE.b,X		; F5 DE
	rol $C144.w,X		; 3E 44 C1
	ora $B02D.w		; 0D 2D B0
	sbc $FC20D0.l		; EF D0 20 FC
	sbc $53.b,S		; E3 53
	eor ($F2.b,S),Y		; 53 F2
	bcs -52.b		; B0 CC
	phx		; DA
	and $0E.b,X		; 35 0E
	sep #$03		; E2 03
	and ($1F.b,X)		; 21 1F
	ldy $1E.b,X		; B4 1E
	lda $5E.b		; A5 5E
	and $F110.w		; 2D 10 F1
	and ($E2.b,X)		; 21 E2
	ldy $D9.b,X		; B4 D9
	eor $E343.w,X		; 5D 43 E3
	cpy $D2.b		; C4 D2
	ora $FEB410.l		; 0F 10 B4 FE
	lda ($1E.b)		; B2 1E
	eor $31.b,S		; 43 31
	lda $423C.w,X		; BD 3C 42
	bcs   2.b		; B0 02
	sbc $D5EE.w		; ED EE D5
	bpl  -1.b		; 10 FF
	eor $D4A0F4.l		; 4F F4 A0 D4
	wai		; CB
	trb $30.b		; 14 30
	cmp $B605.w		; CD 05 B6
	bvc -56.b		; 50 C8
	and $E022.w		; 2D 22 E0
	ora $140F2F.l		; 0F 2F 0F 14
	cpx $EEC0.w		; EC C0 EE
	ora ($1F.b),Y		; 11 1F
	cmp $E61E00.l,X		; DF 00 1E E6
	jsr $0CB4.w		; 20 B4 0C
	eor ($B0.b,S),Y		; 53 B0
	inc $E24F.w,X		; FE 4F E2
	and ($EE.b,S),Y		; 33 EE
	iny		; C8
	sbc ($0F.b,S),Y		; F3 0F
	asl $0001.w,X		; 1E 01 00
	ora $C03BF5.l		; 0F F5 3B C0
	trb $41D1.w		; 1C D1 41
	cmp $FCF2.w,X		; DD F2 FC
	ora $41.b		; 05 41
	ldy $AF.b,X		; B4 AF
	adc $DC.b,S		; 63 DC
.ACCU 8
	sep #$20		; E2 20
	sbc [$1B.b],Y		; F7 1B
	cmp ($B8.b),Y		; D1 B8
	cop $A1.b		; 02 A1
	ora ($1E.b),Y		; 11 1E
	asl $D9.b,X		; 16 D9
	ora ($41.b),Y		; 11 41
	cpy $0E.b		; C4 0E
	beq  31.b		; F0 1F
	cpx $4E.b		; E4 4E
	sbc $C01FF1.l,X		; FF F1 1F C0
	inc $EFEF.w,X		; FE EF EF
	mvn $F0,$10		; 54 10 F0
	and ($FE.b,X)		; 21 FE
	cpy #$E0DE.w		; C0 DE E0
	eor $00.b,S		; 43 00
	brk $10.b		; 00 10
	inc $C0ED.w,X		; FE ED C0
	sep #$41		; E2 41
	brk $01.b		; 00 01
	ora $F5ECFF.l,X		; 1F FF EC F5
	cpy #$013F.w		; C0 3F 01
	jsl $DB00FE.l		; 22 FE 00 DB
	asl $1F.b,X		; 16 1F
	cpy #$2100.w		; C0 00 21
	sbc $63BE0F.l		; EF 0F BE 63
	sbc $3EC012.l		; EF 12 C0 3E
	bne  29.b		; D0 1D
	lda ($60.b)		; B2 60
	sbc ($13.b,X)		; E1 13
	ora $E1C0.w,X		; 1D C0 E1
	xce		; FB
	inc $2E.b,X		; F6 2E
	ora ($33.b,X)		; 01 33
	sbc $C000.w		; ED 00 C0
	jmp.w [$EF54]		; DC 54 EF
	ora ($30.b),Y		; 11 30
	bne  30.b		; D0 1E
	lda ($C0.b),Y		; B1 C0
	rts		; 60

	sbc ($13.b,X)		; E1 13
	and $0CE1.w		; 2D E1 0C
	sbc $2D.b		; E5 2D
	cpy #$2201.w		; C0 01 22
	sbc $DC00.w		; ED 00 DC
	eor $EF.b,S		; 43 EF
	ora ($C0.b),Y		; 11 C0
	bmi -48.b		; 30 D0
	asl $4EC3.w,X		; 1E C3 4E
	sbc ($12.b,X)		; E1 12
	ora $F2B0.w		; 0D B0 F2
	cmp $CD67.w,Y		; D9 67 CD
	and $5E.b,S		; 23 5E
	bcc  43.b		; 90 2B
	cpy #$2DD4.w		; C0 D4 2D
	sbc ($22.b),Y		; F1 22
	sbc $DE01.w,X		; FD 01 DE
	eor ($C0.b)		; 52 C0
	bne  18.b		; D0 12
	rol $0DD0.w		; 2E D0 0D
	ora $0D.b		; 05 0D
	ora ($C0.b,X)		; 01 C0
	and ($EE.b,X)		; 21 EE
	ora $E14ED2.l,X		; 1F D2 4E E1
	ora ($0D.b)		; 12 0D
	cpy #$EEF0.w		; C0 F0 EE
	.db $42, $DF		; 42 DF
	ora ($2F.b)		; 12 2F
	bne  13.b		; D0 0D
	cpy #$FD15.w		; C0 15 FD
	ora ($21.b,X)		; 01 21
	cmp $3DD40E.l,X		; DF 0E D4 3D
	cpy #$22F1.w		; C0 F1 22
	inc $D200.w,X		; FE 00 D2
	eor $C012E1.l		; 4F E1 12 C0
	inc $D100.w,X		; FE 00 D1
	eor $0D12E1.l		; 4F E1 12 0D
	brk $C0.b		; 00 C0
	cmp ($4F.b),Y		; D1 4F
	cmp ($12.b),Y		; D1 12
	asl $E200.w		; 0E 00 E2
	rol $D2B0.w,X		; 3E B0 D2
	and ($ED.b,X)		; 21 ED
	ora $4CD7.w,X		; 1D D7 4C
	cop $20.b		; 02 20
	cpy #$0EEF.w		; C0 EF 0E
	trb $0D.b		; 14 0D
	ora ($1F.b)		; 12 1F
	cpx #$B0FF.w		; E0 FF B0
	adc $CF.b,S		; 63 CF
	and ($FC.b)		; 32 FC
	sbc ($C2.b,X)		; E1 C2
	adc $C0D3.w		; 6D D3 C0
	bpl -18.b		; 10 EE
	ora $120DF4.l		; 0F F4 0D 12
	ora $0EB0DF.l,X		; 1F DF B0 0E
	adc $A0.b,S		; 63 A0
	eor ($FC.b)		; 52 FC
	cpx #$4DE4.w		; E0 E4 4D
	bcs -29.b		; B0 E3
	jsr $FEDD.w		; 20 DD FE
	rol $FD.b,X		; 36 FD
	bit $FD.b,X		; 34 FD
	cpy $00.b		; C4 00
	cop $3D.b		; 02 3D
	pei ($1C.b)		; D4 1C
	brk $0F.b		; 00 0F
	.db $42, $C0		; 42 C0
	beq  48.b		; F0 30
	sbc $0E04FE.l		; EF FE 04 0E
	jsl $DDB0EE.l		; 22 EE B0 DD
	sbc $5D.b		; E5 5D
	trb $FD.b		; 14 FD
	jmp.w [$60E3]		; DC E3 60
	ldy $F3.b,X		; B4 F3
	inc $F40F.w		; EE 0F F4
	eor $1DF1CF.l,X		; 5F CF F1 1D
	ldy $E5.b,X		; B4 E5
	bvc -36.b		; 50 DC
	sbc ($0D.b,S),Y		; F3 0D
	cpx $42.b		; E4 42
	asl A		; 0A
	bcs -65.b		; B0 BF
	ora $36BE.w,X		; 1D BE 36
	eor ($BE.b),Y		; 51 BE
	and $B0AE.w		; 2D AE B0
	bit $43.b,X		; 34 43
	cmp $AC1F.w,X		; DD 1F AC
	and $53.b		; 25 53
	cmp $1FB0.w,X		; DD B0 1F
	tyx		; BB
	and $33.b		; 25 33
	tsb $CB00.w		; 0C 00 CB
	ora $B0.b,S		; 03 B0
	eor $1C.b		; 45 1C
	cpx #$E2EC.w		; E0 EC E2
	eor $0C.b,X		; 55 0C
	beq -80.b		; F0 B0
	sbc $35E0.w		; ED E0 35
	and $ECF0.w,X		; 3D F0 EC
	cmp ($34.b,X)		; C1 34
	bcs  61.b		; B0 3D
.INDEX 8
	sep #$DC		; E2 DC
	sbc ($12.b,X)		; E1 12
	eor ($E0.b),Y		; 51 E0
	inc $DDB0.w		; EE B0 DD
	bit $5F.b		; 24 5F
	bne  30.b		; D0 1E
	dec DMASRC2L.w		; CE 22 43
	bcs -48.b		; B0 D0
	ora $F1DE.w,X		; 1D DE F1
	trb $2E.b		; 14 2E
	sbc $F4B4FE.l,X		; FF FE B4 F4
	asl $CF5F.w		; 0E 5F CF
	sbc ($2D.b)		; F2 2D
	ora ($62.b,X)		; 01 62
	bcs -36.b		; B0 DC
	brk $0C.b		; 00 0C
	cop $02.b		; 02 02
	and ($DF.b),Y		; 31 DF
	asl $01B4.w		; 0E B4 01
	ora ($5E.b,X)		; 01 5E
	cmp $12DF21.l		; CF 21 DF 12
	bpl -96.b		; 10 A0
	adc ($CE.b,S),Y		; 73 CE
	cpx #$CF.b		; E0 CF
	jsr $5015.w		; 20 15 50
	cmp $B0EEA0.l,X		; DF A0 EE B0
	sbc $932E46.l,X		; FF 46 2E 93
	bit $B4AE.w		; 2C AE B4
	cop $3F.b		; 02 3F
	cmp $CC23.w,X		; DD 23 CC
	eor ($F4.b)		; 52 F4
	inc $D1B0.w		; EE B0 D1
	ora $D61DD0.l,X		; 1F D0 1D D6
	eor $B42FEF.l,X		; 5F EF 2F B4
	cpy $10.b		; C4 10
	bpl  16.b		; 10 10
	sbc $120DF2.l		; EF F2 0D 12
	bcs   0.b		; B0 00
	trb $0F.b		; 14 0F
	brk $10.b		; 00 10
	sbc $B4D30E.l		; EF 0E D3 B4
	eor $41D0.w,Y		; 59 D0 41
	ldx $9163.w		; AE 63 91
	adc ($BD.b),Y		; 71 BD
	ldy $3F.b,X		; B4 3F
	ora $230BD5.l,X		; 1F D5 0B 23
	jmp $B414DF.l		; 5C DF 14 B4
	lda $DB75.w,Y		; B9 75 DB
	eor [$BB.b],Y		; 57 BB
	bit $D0.b		; 24 D0
	rep #$C0		; C2 C0
	ora ($FD.b,X)		; 01 FD
	ora $40.b,S		; 03 40
	cmp ($2F.b),Y		; D1 2F
	tsb $C0F4.w		; 0C F4 C0
	ora $40E3.w		; 0D E3 40
	beq  15.b		; F0 0F
	sbc $2FE2.w,X		; FD E2 2F
	cpy #$D0.b		; C0 D0
	eor ($FF.b)		; 52 FF
	cop $1E.b		; 02 1E
	sbc $B0ED11.l		; EF 11 ED B0
	lsr $22.b,X		; 56 22
	bne  47.b		; D0 2F
	ora $3ED3.w		; 0D D3 3E
	cmp $2E54B0.l		; CF B0 54 2E
	cmp ($2D.b)		; D2 2D
	cmp $E31021.l,X		; DF 21 10 E3
	ldy #$30.b		; A0 30
	and $A24E.w,X		; 3D 4E A2
	sbc $16A34B.l,X		; FF 4B A3 16
	ldy #$52.b		; A0 52
	asl $CE2D.w		; 0E 2D CE
	and ($E0.b,X)		; 21 E0
	cmp $A04B.w		; CD 4B A0
	eor [$F3.b],Y		; 57 F3
	tsb $BDF6.w		; 0C F6 BD
	eor #$43.b		; 49 43
	sta ($A0.b)		; 92 A0
	sbc $3550.w,X		; FD 50 35
	and $DF1CC2.l		; 2F C2 1C DF
	adc $B0.b,S		; 63 B0
	dec $1001.w		; CE 01 10
	ora $1D.b,S		; 03 1D
	cpx #$10.b		; E0 10
	sbc $3DE0A0.l,X		; FF A0 E0 3D
	cpx #$06.b		; E0 06
	and ($EE.b)		; 32 EE
	and ($EE.b)		; 32 EE
	ldy $01.b		; A4 01
	sbc ($2E.b),Y		; F1 2E
	cmp ($3F.b,S),Y		; D3 3F
	bpl  14.b		; 10 0E
	pei ($A1.b)		; D4 A1
	jmp $CE02.w		; 4C 02 CE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	trb $1F.b		; 14 1F
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	cpx $E2.b		; E4 E2
	sbc ($1F.b)		; F2 1F
	ora $FD.b,S		; 03 FD
	eor $317044.l		; 4F 44 70 31
	ora $F614.w,X		; 1D 14 F6
	bmi  94.b		; 30 5E
	rti		; 40

	eor ($90.b),Y		; 51 90
	eor $B3.b,S		; 43 B3
	ldy $E3.b,X		; B4 E3
	eor $104D6C.l		; 4F 6C 4D 10
	ldy #$01.b		; A0 01
	cop $11.b		; 02 11
	bpl   0.b		; 10 00
	trb $C4.b		; 14 C4
	lda ($A0.b),Y		; B1 A0
	and $2F4E.w		; 2D 4E 2F
	brk $E1.b		; 00 E1
	sbc ($11.b),Y		; F1 11
	and ($A0.b,X)		; 21 A0
	jsr $4B4B.w		; 20 4B 4B
	ora ($E5.b),Y		; 11 E5
	sbc $D0.b,S		; E3 D0
	inc $1FA0.w,X		; FE A0 1F
	and ($22.b,X)		; 21 22
	and ($D1.b),Y		; 31 D1
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	and ($A4.b,X)		; 21 A4
	pld		; 2B
	and $202F.w,X		; 3D 2F 20
	tsb $BF.b		; 04 BF
	asl $A43E.w,X		; 1E 3E A4
	eor $C311.w,X		; 5D 11 C3
	cmp ($E2.b)		; D2 E2
	ora ($DF.b,S),Y		; 13 DF
	sbc $401DA0.l,X		; FF A0 1D 40
	and $F2.b,S		; 23 F2
	sbc ($F1.b),Y		; F1 F1
	and $03.b		; 25 03
	ldy #$D0.b		; A0 D0
	bit $316E.w		; 2C 6E 31
	ora ($F2.b,X)		; 01 F2
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	ldy #$F1.b		; A0 F1
	sbc ($F2.b),Y		; F1 F2
	ora ($3E.b),Y		; 11 3E
	rol $F510.w		; 2E 10 F5
	bcs -14.b		; B0 F2
	sbc ($0F.b),Y		; F1 0F
	ora $011F4E.l,X		; 1F 4E 1F 01
	sbc $A0.b,S		; E3 A0
	sbc $1F.b,S		; E3 1F
	ora $E35010.l,X		; 1F 10 50 E3
	cmp $F1.b,S		; C3 F1
	ldy #$3F.b		; A0 3F
	eor $023E.w		; 4D 3E 02
	and $B4.b,S		; 23 B4
	cmp $0F.b,S		; C3 0F
	ldy #$4D.b		; A0 4D
	jmp $F23F.w		; 4C 3F F2
	and ($D2.b),Y		; 31 D2
	cmp ($F1.b,S),Y		; D3 F1
	ldy #$2F.b		; A0 2F
	and $022F.w,X		; 3D 2F 02
	rol $121D.w,X		; 3E 1D 12
	dec $A0.b,X		; D6 A0
	cmp ($0F.b,S),Y		; D3 0F
	ora $2B3B13.l,X		; 1F 13 3B 2B
	jsl $D3A0D6.l		; 22 D6 A0 D3
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	bit $E0.b,X		; 34 E0
	cpy #$6D2E.w		; C0 2E 6D
	ldy #$E030.w		; A0 30 E0
	beq  81.b		; F0 51
	lda ($B3.b,S),Y		; B3 B3
	ora $B06D.w,X		; 1D 6D B0
	rol $F21F.w		; 2E 1F F2
	ora $E4211C.l,X		; 1F 1C 21 E4
	cmp ($B0.b)		; D2 B0
	beq   0.b		; F0 00
	ora ($F0.b)		; 12 F0
	cmp ($1F.b),Y		; D1 1F
	lsr $A02F.w		; 4E 2F A0
	beq -15.b		; F0 F1
	jmp ($110B.w,X)		; 7C 0B 11
	inc $C4.b,X		; F6 C4
	cmp $3300A0.l,X		; DF A0 00 33
	bne -62.b		; D0 C2
	bpl  78.b		; 10 4E
	bit $B01F.w		; 2C 1F B0
	and ($D1.b,X)		; 21 D1
	rep #$00		; C2 00
	rol $0F1E.w,X		; 3E 1E 0F
	and ($B0.b),Y		; 31 B0
	cmp ($B3.b)		; D2 B3
	ora $0F1F4E.l		; 0F 4E 1F 0F
	bmi -31.b		; 30 E1
	bcs -77.b		; B0 B3
	brk $3E.b		; 00 3E
	and $D2300F.l		; 2F 0F 30 D2
	ldy $B0.b,X		; B4 B0
	ora $002E4D.l		; 0F 4D 2E 00
	bmi -62.b		; 30 C2
	cmp $1F.b,S		; C3 1F
	ldy #$1D6C.w		; A0 6C 1D
	ora ($4E.b),Y		; 11 4E
	lda $1032F2.l,X		; BF F2 32 10
	bcs  -1.b		; B0 FF
	ora ($1D.b)		; 12 1D
	tsb $0430.w		; 0C 30 04
	cmp ($E0.b)		; D2 E0
	ldy #$EC32.w		; A0 32 EC
	cpx #$2123.w		; E0 23 21
	beq -30.b		; F0 E2
	eor $C3AFA0.l		; 4F A0 AF C3
	and $331D6C.l,X		; 3F 6C 1D 33
	cpx $B0EE.w		; EC EE B0
	ora ($12.b)		; 12 12
	beq -14.b		; F0 F2
	ora $110C.w,X		; 1D 0C 11
	ora ($B0.b,S),Y		; 13 B0
	sbc ($F0.b),Y		; F1 F0
	and ($B2.b,X)		; 21 B2
	lda ($1F.b,S),Y		; B3 1F
	eor $B42E.w		; 4D 2E B4
	bmi -33.b		; 30 DF
	and $C3F230.l		; 2F 30 F2 C3
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	bcs  28.b		; B0 1C
	and ($F4.b),Y		; 31 F4
	cmp ($F1.b)		; D2 F1
	ora $11FE.w,X		; 1D FE 11
	ldy $01.b,X		; B4 01
	cpx #$01.b		; E0 01
	asl $E4D4.w		; 0E D4 E4
	asl $B02D.w		; 0E 2D B0
	bpl  31.b		; 10 1F
	bcs -45.b		; B0 D3
	jsr $1F4E.w		; 20 4E 1F
	ora $D2B0B0.l		; 0F B0 B0 D2
	jsr $1F4E.w		; 20 4E 1F
	ora $B0D2B0.l		; 0F B0 D2 B0
	jsr $104E.w		; 20 4E 10
	ora $20E2B0.l		; 0F B0 E2 20
	and $FB3FA4.l,X		; 3F A4 3F FB
	ora ($44.b,X)		; 01 44
	sbc ($DE.b,S),Y		; F3 DE
	sbc ($BC.b),Y		; F1 BC
	ldy $3F.b,X		; B4 3F
	and ($F3.b),Y		; 31 F3
	cmp ($EF.b,X)		; C1 EF
	sep #$03		; E2 03
	asl $5FB0.w,X		; 1E B0 5F
	and $22DFCD.l		; 2F CD DF 22
	and ($11.b)		; 32 11
	jsr ($2FA4.w,X)		; FC A4 2F
	mvn $ED,$13		; 54 13 ED
	sbc $1700.w,Y		; F9 00 17
	bit $B4.b		; 24 B4
	asl $1FDD.w		; 0E DD 1F
	and $03.b,S		; 23 03
	cpx #$EC.b		; E0 EC
	rol $32B4.w		; 2E B4 32
	tsb $DF.b		; 04 DF
	cmp $4120.w,X		; DD 20 41
	bpl -33.b		; 10 DF
	ldy $C2.b		; A4 C2
	trb $30.b		; 14 30
	cpy $15F1.w		; CC F1 15
	and $AC.b,S		; 23 AC
	ldy $E1.b,X		; B4 E1
	cop $31.b		; 02 31
	tsb $10EE.w		; 0C EE 10
	and ($10.b,S),Y		; 33 10
	clv		; B8
	cmp $E4.b,S		; C3 E4
	sbc ($0D.b,S),Y		; F3 0D
	sbc $0222.w,X		; FD 22 02
	ora $FFEEB4.l		; 0F B4 EE FF
	bmi  48.b		; 30 30
	cpy #$C3.b		; C0 C3
	ora ($20.b)		; 12 20
	ldy $0B.b,X		; B4 0B
	ora $3222.w		; 0D 22 32
	sbc $4210CF.l		; EF CF 10 42
	tay		; A8
	lda $0204C5.l,X		; BF C5 04 02
	lda $42F0.w,X		; BD F0 42
	and $1EB4.w,X		; 3D B4 1E
	bne -13.b		; D0 F3
	ora ($0C.b)		; 12 0C
	inc $2122.w,X		; FE 22 21
	ldy $EE.b,X		; B4 EE
	cmp ($13.b),Y		; D1 13
	bpl  -4.b		; 10 FC
	brk $32.b		; 00 32
	brk $B4.b		; 00 B4
	cmp $3202.w,X		; DD 02 32
	sbc $4022CE.l,X		; FF CE 22 40
	inc $D6B8.w		; EE B8 D6
	ora ($DE.b)		; 12 DE
	phd		; 0B
	eor ($13.b)		; 52 13
	lda ($B2.b,X)		; A1 B2
	ldy $F4.b		; A4 F4
	adc $2D.b		; 65 2D
	txs		; 9A
	cop $77.b		; 02 77
	cpx $B49B.w		; EC 9B B4
	and ($40.b),Y		; 31 40
	sbc $23C1.w,X		; FD C1 23
	and $B4D2EC.l,X		; 3F EC D2 B4
	bit $20.b		; 24 20
	cmp $32E1.w		; CD E1 32
	and $A8D2DD.l,X		; 3F DD D2 A8
	ora $DB.b,S		; 03 DB
	dec $1137.w		; CE 37 11
	ora $55DB.w,Y		; 19 DB 55
	ldy $23.b,X		; B4 23
	rti		; 40

	cmp $22C1.w,X		; DD C1 22
	eor $B8DE0C.l,X		; 5F 0C DE B8
	and ($2E.b),Y		; 31 2E
	sbc $31F1.w		; ED F1 31
	and $AF.b,S		; 23 AF
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	tsb $04.b		; 04 04
	jsr ($20ED.w,X)		; FC ED 20
	rti		; 40

	and ($AE.b)		; 32 AE
	ldy $CC.b,X		; B4 CC
	cpx #$42F3.w		; E0 F3 42
	jsr $DCEE.w		; 20 EE DC
	cmp ($C4.b),Y		; D1 C4
	and ($21.b),Y		; 31 21
	bpl -36.b		; 10 DC
	cmp ($22.b),Y		; D1 22
	and ($20.b),Y		; 31 20
	cpy $CD.b		; C4 CD
	cmp ($22.b,X)		; C1 22
	and ($10.b),Y		; 31 10
	sbc $31CF.w		; ED CF 31
	cpy $31.b		; C4 31
	and ($ED.b,X)		; 21 ED
	jmp.w [$2323]		; DC 23 23
	ora ($0C.b,X)		; 01 0C
	cpy $EC.b		; C4 EC
	tsb $12.b		; 04 12
	jsr $EC1E.w		; 20 1E EC
	cmp ($22.b,S),Y		; D3 22
	iny		; C8
	ora $E5E11D.l		; 0F 1D E1 E5
	rol $000F.w,X		; 3E 0F 00
	cmp ($C4.b,X)		; C1 C4
	cpx $1243.w		; EC 43 12
	ora ($0D.b,X)		; 01 0D
	sbc $31D5.w		; ED D5 31
	cpy $20.b		; C4 20
	ora $62DEC0.l		; 0F C0 DE 62
	ora ($01.b,X)		; 01 01
	sbc $0DC4.w		; ED C4 0D
	inc $21.b		; E6 21
	brk $1E.b		; 00 1E
	bne -18.b		; D0 EE
	adc ($C4.b,X)		; 61 C4
	ora ($01.b,X)		; 01 01
	inc $D6FE.w		; EE FE D6
	jsr $FF11.w		; 20 11 FF
	cpy $EF.b		; C4 EF
	jsr ($0053.w,X)		; FC 53 00
	bpl  -1.b		; 10 FF
	cpx #$C4C1.w		; E0 C1 C4
	eor ($F1.b)		; 52 F1
	ora $D5FEEF.l,X		; 1F EF FE D5
	rti		; 40

	sbc ($C0.b),Y		; F1 C0
	and ($FE.b),Y		; 31 FE
	cpx $42A1.w		; EC A1 42
	ora ($20.b,S),Y		; 13 20
	inc $FAC0.w		; EE C0 FA
	cmp $41.b,S		; C3 41
	ora ($2F.b,S),Y		; 13 2F
	cpx #$E5F9.w		; E0 F9 E5
	cpy $EE.b		; C4 EE
	ora ($EE.b),Y		; 11 EE
	cop $FA.b		; 02 FA
	lsr $FD.b		; 46 FD
	jsr $00D0.w		; 20 D0 00
	brk $0E.b		; 00 0E
	cmp ($21.b,X)		; C1 21
	ora ($10.b,X)		; 01 10
	ora $DD00D0.l		; 0F D0 00 DD
	jsl $001100.l		; 22 00 11 00
	beq  12.b		; F0 0C
	cpy #$3FF6.w		; C0 F6 3F
	ora ($0F.b)		; 12 0F
	beq  28.b		; F0 1C
	sta ($51.b,S),Y		; 93 51
	cpy #$20F2.w		; C0 F2 20
	sbc $45BB00.l,X		; FF 00 BB 45
	ora $FFC022.l		; 0F 22 C0 FF
	sbc ($0A.b),Y		; F1 0A
	cmp $4F.b,X		; D5 4F
	cop $1E.b		; 02 1E
	beq -60.b		; F0 C4
	asl $6EA6.w,X		; 1E A6 6E
	lda ($3D.b)		; B2 3D
	beq  32.b		; F0 20
	cpy $26C0.w		; CC C0 26
	asl $FF13.w,X		; 1E 13 FF
	ora ($0B.b,X)		; 01 0B
	ldy $50.b,X		; B4 50
	cpy $E4.b		; C4 E4
	tsb $1E11.w		; 0C 11 1E
	ldy $6F.b,X		; B4 6F
	lda ($4E.b),Y		; B1 4E
	cpy #$10EF.w		; C0 EF 10
	nop		; EA
	and $2D.b		; 25 2D
	ora ($FE.b,S),Y		; 13 FE
	ora ($C0.b,X)		; 01 C0
	phd		; 0B
	cpy $5F.b		; C4 5F
	sbc $2E.b,S		; E3 2E
	sbc ($1E.b,X)		; E1 1E
	ldy #$53C0.w		; A0 C0 53
	cpx #$E040.w		; E0 40 E0
	bpl -53.b		; 10 CB
	and $0E.b,X		; 35 0E
	cpy $41.b		; C4 41
	cpy #$EB11.w		; C0 11 EB
	eor $FB.b,X		; 55 FB
	and $ED.b,S		; 23 ED
	cpy #$0CF1.w		; C0 F1 0C
	cmp $50.b,S		; C3 50
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	cpx #$1E.b		; E0 1E
	cpy #$A1.b		; C0 A1
	eor ($E0.b)		; 52 E0
	eor ($DF.b,X)		; 41 DF
	ora $C044BE.l,X		; 1F BE 44 C0
	sbc $10EF32.l,X		; FF 32 EF 10
	cpy $FE34.w		; CC 34 FE
	and ($C0.b,S),Y		; 33 C0
	inc $DB10.w		; EE 10 DB
	and $0D.b		; 25 0D
	bit $FD.b		; 24 FD
	ora ($C0.b),Y		; 11 C0
	phx		; DA
	and $1D.b		; 25 1D
	trb $0D.b		; 14 0D
	cop $DA.b		; 02 DA
	ora $C4.b,X		; 15 C4
	jmp.w [$DD33]		; DC 33 DD
	jsl $EB65DB.l		; 22 DB 65 EB
	bit $C4.b		; 24 C4
	cpx $EA22.w		; EC 22 EA
	lsr $EA.b,X		; 56 EA
	bit $EC.b,X		; 34 EC
	jsl $E5FAC0.l		; 22 C0 FA E5
	and $2DF4.w,X		; 3D F4 2D
	sbc ($0A.b)		; F2 0A
	cpx $C0.b		; E4 C0
	and $2EF4.w,X		; 3D F4 2E
	sep #$0B		; E2 0B
	pei ($4E.b)		; D4 4E
	cpx $C0.b		; E4 C0
	rol $1BE2.w,X		; 3E E2 1B
	pei ($4E.b)		; D4 4E
	sbc $3E.b,S		; E3 3E
	sep #$C0		; E2 C0
	trb $4ED4.w		; 1C D4 4E
	sbc $3E.b,S		; E3 3E
	sbc ($1C.b,X)		; E1 1C
	cmp ($C0.b,S),Y		; D3 C0
	lsr $3EE3.w		; 4E E3 3E
.INDEX 8
	sep #$1C		; E2 1C
	cmp $4E.b,S		; C3 4E
	sbc $C0.b,S		; E3 C0
	rol $1CE1.w,X		; 3E E1 1C
	cmp $4E.b,S		; C3 4E
	sbc $3E.b,S		; E3 3E
	sbc ($C0.b,X)		; E1 C0
	trb $4FC3.w		; 1C C3 4F
	cmp ($3F.b)		; D2 3F
	cmp ($2D.b),Y		; D1 2D
	lda ($C0.b)		; B2 C0
	eor $D13FD2.l		; 4F D2 3F D1
	rol $40B2.w		; 2E B2 40
	cmp ($C0.b),Y		; D1 C0
	rti		; 40

	bne  46.b		; D0 2E
	lda ($40.b),Y		; B1 40
	cmp ($40.b),Y		; D1 40
	bne -64.b		; D0 C0
	and $D141B1.l		; 2F B1 41 D1
	rti		; 40

	bne  47.b		; D0 2F
	lda ($C4.b),Y		; B1 C4
	and $4DC3.w,X		; 3D C3 4D
	cmp ($2E.b)		; D2 2E
	cpy $4D.b		; C4 4D
	cmp $C4.b,S		; C3 C4
	eor $2ED2.w		; 4D D2 2E
	cpy $4D.b		; C4 4D
	cmp $4D.b,S		; C3 4D
	cmp ($C4.b)		; D2 C4
	rol $4EC4.w		; 2E C4 4E
	lda ($4D.b,S),Y		; B3 4D
	cmp ($2E.b)		; D2 2E
	cpy $C4.b		; C4 C4
	eor $4DC3.w		; 4D C3 4D
	cmp ($2E.b)		; D2 2E
	cpy $4D.b		; C4 4D
	cmp $C0.b,S		; C3 C0
	and ($DF.b),Y		; 31 DF
	and $D040C1.l		; 2F C1 40 D0
	bmi -48.b		; 30 D0
	cpy #$2F.b		; C0 2F
	cmp ($40.b,X)		; C1 40
	cmp ($30.b),Y		; D1 30
	bne  47.b		; D0 2F
	cmp ($C0.b,X)		; C1 C0
	eor $D030D1.l		; 4F D1 30 D0
	rol $3FC2.w		; 2E C2 3F
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	ror $3BB1.w		; 6E B1 3B
	lda $6C.b		; A5 6C
	cmp $5D.b		; C5 5D
	rep #$C0		; C2 C0
	ora $2DE3.w,X		; 1D E3 2D
	sbc ($2E.b,S),Y		; F3 2E
	sbc ($0C.b),Y		; F1 0C
	ora $B0.b,S		; 03 B0
	inc A		; 1A
	ora [$1B.b],Y		; 17 1B
	ora $DA.b,S		; 03 DA
	lsr $CC.b		; 46 CC
	eor $B0.b,X		; 55 B0
	jmp.w [$9E22]		; DC 22 9E
	adc $AF.b,S		; 63 AF
	adc ($BE.b)		; 72 BE
	rol $A3B0.w,X		; 3E B0 A3
	ror $6EB4.w		; 6E B4 6E
	cmp ($2A.b,X)		; C1 2A
	sbc $3A.b		; E5 3A
	bcs  -9.b		; B0 F7
	tsa		; 3B
	sbc ($EA.b,S),Y		; F3 EA
	rol $DB.b,X		; 36 DB
	lsr $EC.b		; 46 EC
	cpy #$11.b		; C0 11
	bne  49.b		; D0 31
	bne  65.b		; D0 41
	bne  46.b		; D0 2E
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	tad		; 5B
	dec $5C.b		; C6 5C
	cmp ($FA.b,S),Y		; D3 FA
	rol $DB.b		; 26 DB
	lsr $B0.b		; 46 B0
	xba		; EB
	and ($B0.b,X)		; 21 B0
	rts		; 60

	ldx #$70.b		; A2 70
	lda ($2B.b),Y		; B1 2B
	cpy #$03.b		; C0 03
	ora $1D04.w,X		; 1D 04 1D
	ora ($EF.b,X)		; 01 EF
	and ($D0.b),Y		; 31 D0
	cpy #$41.b		; C0 41
	bne  30.b		; D0 1E
	sbc ($1D.b)		; F2 1D
	tsb $1D.b		; 04 1D
	sbc ($C0.b),Y		; F1 C0
	sbc $41D021.l		; EF 21 D0 41
	bne  30.b		; D0 1E
	ora $0D.b,S		; 03 0D
	bcs  38.b		; B0 26
	xce		; FB
	bpl -30.b		; 10 E2
	and $3CD5.w,X		; 3D D5 3C
	bne -80.b		; D0 B0
	ora ($3E.b,X)		; 01 3E
	cpx $4D.b		; E4 4D
	dec $2D12.w		; CE 12 2D
	sbc $B0.b		; E5 B0
	eor $13CD.w		; 4D CD 13
	bit $5DD5.w,X		; 3C D5 5D
	cmp $B014.w		; CD 14 B0
	bit $5DD6.w,X		; 3C D6 5D
	cmp $2B14.w		; CD 14 2B
	inc $4C.b		; E6 4C
	cpy #$EF.b		; C0 EF
	ora ($1D.b)		; 12 1D
	pea $DF1D.w		; F4 1D DF
	jsl $17B00E.l		; 22 0E B0 17
	inc A		; 1A
	ldy #$54.b		; A0 54
	cmp $EA56.w		; CD 56 EA
	lda ($C0.b,S),Y		; B3 C0
	and ($DF.b,X)		; 21 DF
	.db $42, $EC		; 42 EC
	sbc ($2E.b,S),Y		; F3 2E
	cmp ($4F.b)		; D2 4F
	cpy #$DD.b		; C0 DD
	ora ($1D.b,S),Y		; 13 1D
	pea $CF2E.w		; F4 2E CF
	and ($DD.b,S),Y		; 33 DD
	cpy #$24.b		; C0 24
	tsb $4FD3.w		; 0C D3 4F
	cpy #$42.b		; C0 42
	stp		; DB
	trb $C0.b		; 14 C0
	bit $4EE4.w		; 2C E4 4E
	lda $34DD43.l		; AF 43 DD 34
	phd		; 0B
	cpy #$D3.b		; C0 D3
	lsr $40C2.w		; 4E C2 40
	lda $EC34.w,X		; BD 34 EC
	bit $C0.b		; 24 C0
	asl A		; 0A
	cpx $3D.b		; E4 3D
	cmp ($4F.b,S),Y		; D3 4F
	bcs  66.b		; B0 42
	dec $43C0.w,X		; DE C0 43
	stp		; DB
	and $0C.b		; 25 0C
	tsb $2B.b		; 04 2B
	cmp ($4E.b,S),Y		; D3 4E
	cpy #$D2.b		; C0 D2
	eor $DF52B0.l		; 4F B0 52 DF
	.db $42, $BD		; 42 BD
	and $C0.b,X		; 35 C0
	sbc $FA24.w		; ED 24 FA
	ora $2C.b		; 05 2C
	cpx $3B.b		; E4 3B
	cmp $C0.b,S		; C3 C0
	eor $A04FC1.l,X		; 5F C1 4F A0
	eor ($CF.b)		; 52 CF
	.db $42, $BC		; 42 BC
	cpy #$35.b		; C0 35
	cpx $EA24.w		; EC 24 EA
	ora $0C.b,X		; 15 0C
	tsb $1A.b		; 04 1A
	cpy #$F4.b		; C0 F4
	and $3BE4.w,X		; 3D E4 3B
	cmp $5E.b,S		; C3 5E
	cmp ($4E.b)		; D2 4E
	cpy #$A1.b		; C0 A1
	bvc -63.b		; 50 C1
	rti		; 40

	lda $52CF52.l		; AF 52 CF 52
	cpy #$AD.b		; C0 AD
	mvp $33,$DD		; 44 DD 33
	cpy $ED24.w		; CC 24 ED
	bit $C0.b		; 24 C0
	stp		; DB
	ora $0C.b,X		; 15 0C
	ora $FA.b,X		; 15 FA
	ora $1D.b		; 05 1D
	ora $C0.b		; 05 C0
	asl A		; 0A
	pea $F42C.w		; F4 2C F4
	tas		; 1B
	cpx $2D.b		; E4 2D
	pea $2BC0.w		; F4 C0 2B
	cpx $2D.b		; E4 2D
	pea $E42B.w		; F4 2B E4
	bit $C0E4.w,X		; 3C E4 C0
	pld		; 2B
	cpx $3C.b		; E4 3C
	cpx $2B.b		; E4 2B
	pei ($3D.b)		; D4 3D
	cpx $C0.b		; E4 C0
	pld		; 2B
	cpx $3D.b		; E4 3D
	cpx $2B.b		; E4 2B
	cpx $2D.b		; E4 2D
	pea $1BC0.w		; F4 C0 1B
	sbc $1C.b,X		; F5 1C
	sbc $0B.b,X		; F5 0B
	sbc $1C.b,X		; F5 1C
	tsb $C0.b		; 04 C0
	phd		; 0B
	tsb $0D.b		; 04 0D
	trb $FC.b		; 14 FC
	trb $FD.b		; 14 FD
	bit $C0.b		; 24 C0
	cpx $ED24.w		; EC 24 ED
	bit $DC.b		; 24 DC
	bit $ED.b,X		; 34 ED
	and ($C0.b,S),Y		; 33 C0
	cmp $DE33.w		; CD 33 DE
	.db $42, $BE		; 42 BE
	.db $42, $CF		; 42 CF
	eor ($C0.b,X)		; 41 C0
	lda $4FC041.l,X		; BF 41 C0 4F
	cmp ($40.b,X)		; C1 40
	cmp ($4E.b,X)		; C1 4E
	cpy #$C2.b		; C0 C2
	lsr $3CD2.w		; 4E D2 3C
	sbc $3D.b,S		; E3 3D
	sbc $1C.b,S		; E3 1C
	cpy #$F4.b		; C0 F4
	ora $0CF4.w,X		; 1D F4 0C
	tsb $0D.b		; 04 0D
	ora ($ED.b,S),Y		; 13 ED
	cpy #$24.b		; C0 24
	sbc $DE22.w		; ED 22 DE
	and ($DF.b)		; 32 DF
	bmi -64.b		; 30 C0
	cpy #$41.b		; C0 41
	bne  62.b		; D0 3E
	cmp ($4F.b,X)		; C1 4F
	cmp ($2D.b)		; D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	and $1CE3.w,X		; 3D E3 1C
	pea $041D.w		; F4 1D 04
	jsr ($C004.w,X)		; FC 04 C0
	ora $DD13.w		; 0D 13 DD
	bit $EE.b		; 24 EE
	jsl $C032CE.l		; 22 CE 32 C0
	cmp $41CF30.l,X		; DF 30 CF 41
	bne  62.b		; D0 3E
	cmp ($4F.b,X)		; C1 4F
	cpy #$D2.b		; C0 D2
	and $3ED3.w		; 2D D3 3E
	sbc ($0C.b,S),Y		; F3 0C
	pea $C01D.w		; F4 1D C0
	ora $EC.b,S		; 03 EC
	trb $FD.b		; 14 FD
	jsl $EE33DD.l		; 22 DD 33 EE
	cpy #$31.b		; C0 31
	dec $D042.w		; CE 42 D0
	and $D140C0.l,X		; 3F C0 40 D1
	cpy #$3E.b		; C0 3E
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	sbc $2C.b,S		; E3 2C
	sbc $2D.b,S		; E3 2D
	sbc ($C0.b,S),Y		; F3 C0
	tsb $0D04.w		; 0C 04 0D
	ora ($EC.b,S),Y		; 13 EC
	trb $FD.b		; 14 FD
	jsl $23DDC0.l		; 22 C0 DD 23
	inc $CF31.w		; EE 31 CF
	and ($D0.b),Y		; 31 D0
	and $40C0C0.l,X		; 3F C0 C0 40
	cmp ($3E.b),Y		; D1 3E
	cmp ($3F.b)		; D2 3F
	sbc $2D.b,S		; E3 2D
	cpy #$2EE3.w		; C0 E3 2E
	sbc ($0C.b,S),Y		; F3 0C
	sbc ($1D.b,S),Y		; F3 1D
	ora $FC.b,S		; 03 FC
	cpy #$0E04.w		; C0 04 0E
	ora ($ED.b,S),Y		; 13 ED
	and $FE.b,S		; 23 FE
	jsl $22C0DD.l		; 22 DD C0 22
	sbc $31CE31.l		; EF 31 CE 31
	cpx #$CF30.w		; E0 30 CF
	cpy #$D031.w		; C0 31 D0
	and $D140C0.l,X		; 3F C0 40 D1
	and $40C0C0.l,X		; 3F C0 C0 40
	cmp ($3E.b),Y		; D1 3E
	cmp ($4F.b,X)		; C1 4F
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	cmp ($C0.b,X)		; C1 C0
	and $C13DE2.l,X		; 3F E2 3D C1
	and $D23DE2.l,X		; 3F E2 3D D2
	bcs 109.b		; B0 6D
	cmp $5A.b		; C5 5A
	sta ($6D.b,S),Y		; 93 6D
	cpy $5B.b		; C4 5B
	sta ($C0.b)		; 92 C0
	and $C03FE2.l,X		; 3F E2 3F C0
	bmi -31.b		; 30 E1
	bmi -49.b		; 30 CF
	bcs  81.b		; B0 51
	bcs 114.b		; B0 72
	stz $CE42.w		; 9C 42 CE
	stz $BA.b		; 64 BA
	cpy #$12.b		; C0 12
	inc $ED23.w		; EE 23 ED
	cop $FE.b		; 02 FE
	ora ($0C.b,S),Y		; 13 0C
	bcs -45.b		; B0 D3
	trb $3A17.w		; 1C 17 3A
	ldx #$3D.b		; A2 3D
	inc $6C.b		; E6 6C
	cpy #$C0.b		; C0 C0
	jsr $40E2.w		; 20 E2 40
	dec $E021.w		; CE 21 E0
	.db $42, $C0		; 42 C0
	cmp $FF12.w,X		; DD 12 FF
	and $FC.b,S		; 23 FC
	sbc ($1F.b)		; F2 1F
	ora $C0.b,S		; 03 C0
	and $2FD1.w		; 2D D1 2F
	sbc ($30.b)		; F2 30
	dec $F021.w		; CE 21 F0
	bcs 100.b		; B0 64
	tsx		; BA
	tsb $FD.b		; 04 FD
	and [$1A.b],Y		; 37 1A
.ACCU 16
	rep #$2D		; C2 2D
	cpy #$F3.b		; C0 F3
	and $E010CF.l,X		; 3F CF 10 E0
	and ($ED.b)		; 32 ED
	sbc ($B0.b),Y		; F1 B0
	sbc $3B27.w,X		; FD 27 3B
	ldy #$2F.b		; A0 2F
	cpx $61.b		; E4 61
	tyx		; BB
	bcs   1.b		; B0 01
	sbc $C01C35.l,X		; FF 35 1C C0
	ora $B051F3.l,X		; 1F F3 51 B0
	cpy $FE01.w		; CC 01 FE
	and $2D.b,X		; 35 2D
	cmp $B8F10F.l,X		; DF 0F F1 B8
	ora $21D1.w,X		; 1D D1 21
	beq  33.b		; F0 21
	xce		; FB
	pea $B410.w		; F4 10 B4
	sbc ($42.b),Y		; F1 42
	cpx $00E1.w		; EC E1 00
	ora ($3F.b,S),Y		; 13 3F
	cmp $51A8.w,X		; DD A8 51
	ora ($22.b,X)		; 01 22
	wai		; CB
	pei ($31.b)		; D4 31
	sbc $3F.b,S		; E3 3F
	tay		; A8
	tsx		; BA
	asl $0F.b,X		; 16 0F
	and $1B.b,S		; 23 1B
	cmp $A80230.l		; CF 30 02 A8
	rti		; 40

	inc $21EC.w		; EE EC 21
	eor $B10B12.l,X		; 5F 12 0B B1
	tay		; A8
	and ($22.b,X)		; 21 22
	lsr $D0CE.w		; 4E CE D0
	tsb $40.b		; 04 40
	ora $C3FAA8.l,X		; 1F A8 FA C3
	eor ($13.b,X)		; 41 13
	asl $F2BD.w,X		; 1E BD F2
	and ($A8.b),Y		; 31 A8
	and ($1E.b,X)		; 21 1E
	cmp $1111.w		; CD 11 11
	and ($DE.b,S),Y		; 33 DE
	cpx #$98.b		; E0 98
	sbc $4145.w		; ED 45 41
	sbc $44A2FB.l		; EF FB A2 44
	ora $98.b		; 05 98
	and $FFAC.w		; 2D AC FF
	and $43.b		; 25 43
	phd		; 0B
	dec $98DD.w,X		; DE DD 98
	lsr $3F.b,X		; 56 3F
	bpl -67.b		; 10 BD
	lda ($23.b,S),Y		; B3 23
	ora $3C.b		; 05 3C
	tya		; 98
	cpy $130E.w		; CC 0E 13
	mvp $CD,$0F		; 44 0F CD
	dec $A816.w,X		; DE 16 A8
	bpl  33.b		; 10 21
	cmp $00F1.w,X		; DD F1 00
	jsl $98EE10.l		; 22 10 EE 98
	sbc $0151E4.l		; EF E4 51 01
	trb $23CC.w		; 1C CC 23
	ora ($98.b)		; 12 98
	ora ($0D.b,S),Y		; 13 0D
	lda $41F411.l		; AF 11 F4 41
	sbc $98EF.w,X		; FD EF 98
	cpy #$53.b		; C0 53
	sbc $F2BC41.l,X		; FF 41 BC F2
	cop $22.b		; 02 22
	dey		; 88
	asl $BFFA.w		; 0E FA BF
	mvp $33,$02		; 44 02 33
	lda $88DF.w,X		; BD DF 88
	sbc $50.b,S		; E3 50
	ora ($2D.b,X)		; 01 2D
	cpy #$D2.b		; C0 D2
	and ($FE.b)		; 32 FE
	dey		; 88
	rts		; 60

	wai		; CB
	eor ($CE.b,X)		; 41 CE
	mvn $3E,$FE		; 54 FE 3E
	cmp $E0EF85.l		; CF 85 EF E0
	bit $10.b,X		; 34 10
	dec $22E0.w,X		; DE E0 22
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $12.b,X		; 34 12
	cmp ($4D.b,S),Y		; D3 4D
	cop $2C.b		; 02 2C
	and ($E0.b)		; 32 E0
	ora ($64.b)		; 12 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($0C.b),Y		; F1 0C
	ora ($FF.b,X)		; 01 FF
	stz $B4.b		; 64 B4
	ora $2D35.w		; 0D 35 2D
	asl $20.b,X		; 16 20
	sbc ($2F.b,X)		; E1 2F
	pla		; 68
.ACCU 8
	sep #$E4		; E2 E4
	ldy $32.b,X		; B4 32
	dec $BC62.w		; CE 62 BC
	bit $54.b,X		; 34 54
	lda #$D3.b		; A9 D3
	ora #$E3.b		; 09 E3
	tsa		; 3B
	cop $E0.b		; 02 E0
	eor ($60.b),Y		; 51 60
	and $21.b,S		; 23 21
	sbc $0CC00C.l,X		; FF 0C C0 0C
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	stz $21.b		; 64 21
	cmp $042BF0.l,X		; DF F0 2B 04
	lda $60CF24.l,X		; BF 24 CF 60
	ora $EDC0.w		; 0D C0 ED
	and $DF.b,S		; 23 DF
	and $60D2FD.l,X		; 3F FD D2 60
	phx		; DA
	cmp $FFEDFE.l		; CF FE ED FF
	ora $70030A.l		; 0F 0A 03 70
	cmp $330D1F.l		; CF 1F 0D 33
	cpx #$32.b		; E0 32
	sbc ($3F.b,S),Y		; F3 3F
	bvs  33.b		; 70 21
	stz $BD20.w		; 9C 20 BD
	ora $E4EFCF.l		; 0F CF EF E4
	tya		; 98
	beq  47.b		; F0 2F
	sbc ($FB.b,S),Y		; F3 FB
	eor $3EDEC3.l,X		; 5F C3 DE 3E
	ldy $FF.b		; A4 FF
	cop $34.b		; 02 34
	eor $25.b,S		; 43 25
	ora $B4DB1A.l		; 0F 1A DB B4
	dec $F1EF.w,X		; DE EF F1
	ora ($44.b)		; 12 44
	and ($5E.b,X)		; 21 5E
	ora ($B4.b,X)		; 01 B4
	ldx $DEDC.w,Y		; BE DC DE
	beq  19.b		; F0 13
	and $5F.b		; 25 5F
	eor ($B4.b)		; 52 B4
.ACCU 16
	rep #$E9		; C2 E9
	inc A		; 1A
	cmp $3403D2.l,X		; DF D2 03 34
	adc $D013C4.l,X		; 7F C4 13 D0
	phd		; 0B
	and $D2E1.w		; 2D E1 D2
	ora ($31.b,X)		; 01 31
	cpy $3F.b		; C4 3F
	and ($D1.b,X)		; 21 D1
	jsr ($F11D.w,X)		; FC 1D F1
	sep #$01		; E2 01
	cpy $22.b		; C4 22
	and $DEE13E.l		; 2F 3E E1 DE
	ora $011F.w,X		; 1D 1F 01
	ldy $05.b,X		; B4 05
	and ($F3.b,S),Y		; 33 F3
	asl A		; 0A
	bit $B0B2.w,X		; 3C B2 B0
	ora $533EB4.l		; 0F B4 3E 53
	and $BDD25E.l		; 2F 5E D2 BD
	trb $B40F.w		; 1C 0F B4
	cop $E6.b		; 02 E6
	and ($06.b),Y		; 31 06
	lda $C0F039.l,X		; BF 39 F0 C0
	ldy $F0.b,X		; B4 F0
	ora ($63.b,X)		; 01 63
	sbc ($3B.b,S),Y		; F3 3B
	and $B4CFA2.l,X		; 3F A2 CF B4
	cpx #$0F.b		; E0 0F
	bit $1F.b,X		; 34 1F
	rti		; 40

	sbc ($EF.b)		; F2 EF
	asl $1EB4.w		; 0E B4 1E
	sbc $0F02E2.l,X		; FF E2 02 0F
	eor $B4F211.l		; 4F 11 F2 B4
	sbc ($FE.b,X)		; E1 FE
	trb $21F1.w		; 1C F1 21
	sbc $2E.b,S		; E3 2E
	bmi -80.b		; 30 B0
	and ($13.b)		; 32 13
	sbc $10CFFB.l,X		; FF FB CF 10
	ora $14.b		; 05 14
	ldy $1E.b,X		; B4 1E
	asl $012C.w		; 0E 2C 01
	bcs  66.b		; B0 42
	brk $7B.b		; 00 7B
	ldy $22.b,X		; B4 22
	cpy #$E2.b		; C0 E2
	ldx #$0A.b		; A2 0A
	mvn $60,$1E		; 54 1E 60
	cpy #$03.b		; C0 03
	and $0DED00.l		; 2F 00 ED 0D
.ACCU 8
	sep #$20		; E2 20
	eor $C4.b,S		; 43 C4
	cmp ($FC.b,S),Y		; D3 FC
	jsr $2DE0.w		; 20 E0 2D
	bit $E0.b		; 24 E0
	jmp $02C0.w		; 4C C0 02
	sbc $DFF0.w,X		; FD F0 DF
	inc $0423.w,X		; FE 23 04
	and $DE0FC0.l		; 2F C0 0F DE
	ora $E2EF.w		; 0D EF E2
	bmi  65.b		; 30 41
	brk $C0.b		; 00 C0
	sbc $DEDF.w		; ED DF DE
	inc $0422.w		; EE 22 04
	ora $BDB00D.l		; 0F 0D B0 BD
	xba		; EB
	sbc $03E6.w		; ED E6 03
	jmp $9EF0.w		; 4C F0 9E
	bcs -34.b		; B0 DE
	cmp $3E33E6.l		; CF E6 33 3E
	sbc ($9F.b,X)		; E1 9F
	sbc $FEB0.w		; ED B0 FE
	sbc [$33.b],Y		; F7 33
	ror $BDE1.w,X		; 7E E1 BD
	tas		; 1B
	ora $2103C0.l		; 0F C0 03 21
	eor $1DEE00.l		; 4F 00 EE 1D
	brk $04.b		; 00 04
	cpy #$21.b		; C0 21
	and $0DEF00.l,X		; 3F 00 EF 0D
	ora $C01324.l		; 0F 24 13 C0
	ora $FFD0F0.l,X		; 1F F0 D0 FF
	sbc $F00433.l,X		; FF 33 04 F0
	cpy #$FF.b		; C0 FF
	cmp ($E0.b),Y		; D1 E0
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	rti		; 40

	beq  -3.b		; F0 FD
	ldy $7C.b,X		; B4 7C
	jmp $A456.w		; 4C 56 A4
	wai		; CB
	eor $C4D3B6.l		; 4F B6 D3 C4
	sbc ($4D.b),Y		; F1 4D
	bpl -62.b		; 10 C2
	asl $F220.w		; 0E 20 F2
	pea $E1C4.w		; F4 C4 E1
	sbc $E210.w,X		; FD 10 E2
	brk $10.b		; 00 10
	eor $C02D.w		; 4D 2D C0
	sbc $000F0D.l,X		; FF 0D 0F 00
	bit $04.b		; 24 04
	sbc $E1C0FF.l,X		; FF FF C0 E1
	beq   3.b		; F0 03
	rti		; 40

	rol $FE0F.w,X		; 3E 0F FE
	ora $12C0.w,X		; 1D C0 12
	eor ($3E.b,X)		; 41 3E
	sbc $020DEE.l,X		; FF EE 0D 02
	and ($C4.b,X)		; 21 C4
	ora $E210.w		; 0D 10 E2
	asl $E132.w		; 0E 32 E1
	jsr ($C03F.w,X)		; FC 3F C0
	bne  -3.b		; D0 FD
	and $01.b,S		; 23 01
	jsr ($D0FD.w,X)		; FC FD D0
	sbc $D240C4.l,X		; FF C4 40 D2
	cmp $023F.w,X		; DD 3F 02
	sbc ($3E.b),Y		; F1 3E
	beq -76.b		; F0 B4
	ldx $343F.w		; AE 3F 34
	cpx $0A.b		; E4 0A
	ora $31E5.w		; 0D E5 31
	clv		; B8
	ora $40D2.w		; 0D D2 40
	and ($FC.b,X)		; 21 FC
	sbc $B85DE3.l,X		; FF E3 5D B8
	and $2FEDE1.l,X		; 3F E1 ED 2F
	.db $42, $E2		; 42 E2
	xce		; FB
	and $E6B8.w,X		; 3D B8 E6
	ora ($01.b,X)		; 01 01
	bne -19.b		; D0 ED
	.db $42, $12		; 42 12
	sbc $DD1EB4.l		; EF B4 1E DD
	sbc ($32.b,X)		; E1 32
	jsr $CE0F.w		; 20 0F CE
	and ($A4.b,X)		; 21 A4
	adc $12.b,S		; 63 12
	and #$CA.b		; 29 CA
	sbc $60.b,X		; F5 60
	eor ($EF.b),Y		; 51 EF
	clv		; B8
	lda $2F.b,X		; B5 2F
	and $F0FDE3.l		; 2F E3 FD F0
	trb $0E.b		; 14 0E
	ldy $41.b		; A4 41
	ora $F400EA.l,X		; 1F EA 00 F4
	bpl  50.b		; 10 32
	sbc $429598.l,X		; FF 98 95 42
.ACCU 8
	sep #$EF		; E2 EF
	jsr $FD95.w		; 20 95 FD
	tda		; 7B
	sty $2E.b,X		; 94 2E
	eor $FF.b,S		; 43 FF
	sbc $20EECF.l,X		; FF CF EE 20
	bmi -108.b		; 30 94
	ora ($EE.b,X)		; 01 EE
	cpx #$1C.b		; E0 1C
	eor ($E4.b)		; 52 E4
	cmp ($EE.b,X)		; C1 EE
	sty $FE.b,X		; 94 FE
	eor $0D01.w		; 4D 01 0D
	ora ($01.b,X)		; 01 01
	brk $C4.b		; 00 C4
	sty $CE.b,X		; 94 CE
	tsb $1E.b		; 04 1E
	ora ($F2.b)		; 12 F2
	bcs -29.b		; B0 E3
	lda ($A0.b)		; B2 A0
	ora ($10.b),Y		; 11 10
	ora $D00DFC.l		; 0F FC 0D D0
	cmp ($11.b),Y		; D1 11
	bcc  42.b		; 90 2A
	and $031C.w		; 2D 1C 03
	inc $C316.w,X		; FE 16 C3
	bpl -112.b		; 10 90
	cmp $FC.b		; C5 FC
	cop $2D.b		; 02 2D
	asl $E22F.w		; 0E 2F E2
	cpx $90.b		; E4 90
	lda $B1.b,X		; B5 B1
	tsb $31.b		; 04 31
	asl $3130.w,X		; 1E 30 31
	asl $0290.w,X		; 1E 90 02
	ora ($E4.b),Y		; 11 E4
	and $13F42E.l,X		; 3F 2E F4 13
	sbc ($94.b,S),Y		; F3 94
	inc $2E00.w,X		; FE 00 2E
	ora ($11.b),Y		; 11 11
	ora $843EC1.l,X		; 1F C1 3E 84
	cmp $7B.b		; C5 7B
	bvc -91.b		; 50 A5
	ldy $E2.b,X		; B4 E2
	jsl $10840F.l		; 22 0F 84 10
	cpx $F0.b		; E4 F0
	and $04D201.l,X		; 3F 01 D2 04
	sbc ($74.b,X)		; E1 74
	ora $E2.b,S		; 03 E2
	dec $F1.b		; C6 F1
	jsr $2C4D.w		; 20 4D 2C
	ora ($84.b,S),Y		; 13 84
	sbc ($D4.b,S),Y		; F3 D4
	pei ($D2.b)		; D4 D2
	sbc ($E3.b),Y		; F1 E3
	cpx #$2F.b		; E0 2F
	stz $10.b,X		; 74 10
	and ($EF.b),Y		; 31 EF
	sep #$C6		; E2 C6
	sbc ($00.b,S),Y		; F3 00
	jsr $DF84.w		; 20 84 DF
	ora ($F1.b),Y		; 11 F1
	and $3C1E3C.l		; 2F 3C 1E 3C
	bpl 112.b		; 10 70
	and ($33.b,S),Y		; 33 33
	pld		; 2B
	and $F22C.w,X		; 3D 2C F2
	ora $F070FF.l		; 0F FF 70 F0
	inc $FF1C.w,X		; FE 1C FF
	xba		; EB
	ora $74EEE0.l,X		; 1F E0 EE 74
	sbc ($C1.b),Y		; F1 C1
	bit $6F49.w,X		; 3C 49 6F
	asl $210C.w		; 0E 0C 21
	stz $F0.b,X		; 74 F0
	bmi -78.b		; 30 B2
	cpx $5F6C.w		; EC 6C 5F
	cmp ($D0.b,X)		; C1 D0
	stz $A6.b		; 64 A6
	ora $CBDE4D.l		; 0F 4D DE CB
	ora ($E3.b,S),Y		; 13 E3
	tsa		; 3B
	stz $3A.b,X		; 74 3A
	ora $D4F3.w		; 0D F3 D4
	ora $F41B.w		; 0D 1B F4
	dec $2E84.w,X		; DE 84 2E
	asl $312B.w,X		; 1E 2B 31
	sbc ($F0.b,X)		; E1 F0
	sbc ($0C.b),Y		; F1 0C
	sty $4D.b		; 84 4D
	tsa		; 3B
	bpl -62.b		; 10 C2
	bpl   0.b		; 10 00
	ora ($F0.b),Y		; 11 F0
	sty $A1.b		; 84 A1
	ora ($D2.b)		; 12 D2
	cpx #$04.b		; E0 04
	cpx $103F.w		; EC 3F 10
	bra  28.b		; 80 1C
	cmp $CECD.w,X		; DD CD CE
	cmp $EEFECF.l		; CF CF FE EE
	sty $00.b		; 84 00
	jsr $2FEE.w		; 20 EE 2F
	sbc ($FC.b),Y		; F1 FC
	bit $13.b		; 24 13
	tya		; 98
	inc $0F10.w,X		; FE 10 0F
	rol $4DB4.w,X		; 3E B4 4D
	ora ($EF.b)		; 12 EF
	sty $02.b,X		; 94 02
	cmp $EDF0.w,X		; DD F0 ED
	bmi   3.b		; 30 03
	eor ($01.b,X)		; 41 01
	sty $DC.b,X		; 94 DC
	ora ($DE.b,X)		; 01 DE
	and ($E3.b,X)		; 21 E3
	and ($2D.b,X)		; 21 2D
	sbc $0F90.w,X		; FD 90 0F
	plb		; AB
	jmp.w [$42E4]		; DC E4 42
	jmp.w [$0DD2]		; DC D2 0D
	bcc -35.b		; 90 DD
	inc $CC21.w		; EE 21 CC
	plb		; AB
	and ($B1.b,X)		; 21 B1
	lsr $20A4.w		; 4E A4 20
	dec $33F1.w,X		; DE F1 33
	sbc ($2E.b,X)		; E1 2E
	ora $00B4EB.l		; 0F EB B4 00
	and ($F3.b,S),Y		; 33 F3
	asl $DDFD.w,X		; 1E FD DD
	ora ($54.b,X)		; 01 54
	clv		; B8
	sep #$CF		; E2 CF
	bne   4.b		; D0 04
	ora $39.b		; 05 39
	adc $C8CF.w,Y		; 79 CF C8
	sbc ($04.b),Y		; F1 04
	cop $E0.b		; 02 E0
	ora $10FF.w		; 0D FF 10
	eor $0443C4.l		; 4F C4 43 04
	sbc $E1CE.w		; ED CE E1
	and $4F.b,S		; 23 4F
	lsr $CDC4.w		; 4E C4 CD
	inc $3413.w		; EE 13 34
	cpx $DC.b		; E4 DC
	cmp $33C4E2.l,X		; DF E2 C4 33
	eor $DE3C.w		; 4D 3C DE
	beq  35.b		; F0 23
	and ($D3.b),Y		; 31 D3
	cpy $BE.b		; C4 BE
	sbc ($03.b,X)		; E1 03
	bit $EE.b		; 24 EE
	pld		; 2B
	asl $C43E.w		; 0E 3E C4
	rti		; 40

	lsr $A2E2.w		; 4E E2 A2
	sbc $E4.b,S		; E3 E4
	sbc $0B.b,S		; E3 0B
	bcs  73.b		; B0 49
	cmp $101C.w,Y		; D9 1C 10
	cpy $4C.b		; C4 4C
	lsr $B0BD.w		; 4E BD B0
	plx		; FA
	beq -83.b		; F0 AD
	ora $D4.b,X		; 15 D4
	nop		; EA
	dec $B0C0.w,X		; DE C0 B0
	bit $4AE0.w,X		; 3C E0 4A
	bit $1DCF.w		; 2C CF 1D
	sbc ($9E.b)		; F2 9E
	bcs -11.b		; B0 F5
	pei ($0C.b)		; D4 0C
	asl $2BCD.w		; 0E CD 2B
	brk $7F.b		; 00 7F
	cpy #$20.b		; C0 20
	cpx #$0F.b		; E0 0F
	cop $E0.b		; 02 E0
	trb $03.b		; 14 03
	ora $D100B0.l		; 0F B0 00 D1
	and $7E22.w,X		; 3D 22 7E
	adc $B02EF0.l		; 6F F0 2E B0
	and $C1.b,S		; 23 C1
	asl $E5.b,X		; 16 E5
	sbc $2CD101.l,X		; FF 01 D1 2C
	bcs  18.b		; B0 12
	ror $F06F.w		; 6E 6F F0
	ora $C112.w,X		; 1D 12 C1
	and $B0.b,X		; 35 B0
	sbc [$F0.b]		; E7 F0
	ora ($C2.b,X)		; 01 C2
	ora $3F04.w,X		; 1D 04 3F
	ror $0FB0.w,X		; 7E B0 0F
	trb $E130.w		; 1C 30 E1
	eor ($15.b),Y		; 51 15
	cpy #$01.b		; C0 01
	bcs -60.b		; B0 C4
	sbc $4C0205.l,X		; FF 05 02 4C
	bpl  13.b		; 10 0D
	and $F0B0.w,X		; 3D B0 F0
	eor $0FC032.l,X		; 5F 32 C0 0F
	cmp ($D0.b,S),Y		; D3 D0
	ora $B0.b		; 05 B0
	pea $001C.w		; F4 1C 00
	inc $013C.w		; EE 3C 01
	lsr $B040.w,X		; 5E 40 B0
	bne  13.b		; D0 0D
	cop $C0.b		; 02 C0
	trb $D5.b		; 14 D5
	inc $B0F0.w,X		; FE F0 B0
	cmp ($1C.b,X)		; C1 1C
	cop $3E.b		; 02 3E
	ror $0BFF.w		; 6E FF 0B
	ora $30C0B0.l,X		; 1F B0 C0 30
	sbc $DF.b,X		; F5 DF
	sbc $13EDB2.l,X		; FF B2 ED 13
	bcs -45.b		; B0 D3
	tas		; 1B
	beq -50.b		; F0 CE
	trb $0EF3.w		; 1C F3 0E
	lsr $D0B0.w		; 4E B0 D0
	asl A		; 0A
	asl $4DB1.w,X		; 1E B1 4D
	jsl $B01CCE.l		; 22 CE 1C B0
	cmp ($DD.b),Y		; D1 DD
	and ($D4.b),Y		; 31 D4
	tsb $A0F1.w		; 0C F1 A0
	tsb $04B0.w		; 0C B0 04
	sbc ($2D.b,X)		; E1 2D
	bne -35.b		; D0 DD
	asl $2DD2.w		; 0E D2 2D
	bcs  49.b		; B0 31
	dec $F01B.w		; CE 1B F0
	bne  94.b		; D0 5E
	jsl $0DB0ED.l		; 22 ED B0 0D
	cmp $0231EE.l,X		; DF EE 31 02
	ora $B0CFE0.l,X		; 1F E0 CF B0
	inc $F213.w,X		; FE 13 F2
	and $FEDEE1.l		; 2F E1 DE FE
	pea $06A0.w		; F4 A0 06
	eor ($F0.b)		; 52 F0
	cpx $D3DD.w		; EC DD D3
	and ($55.b)		; 32 55
	ldy #$2F.b		; A0 2F
	jmp $DEEF.w		; 4C EF DE
	rts		; 60

	eor $32.b		; 45 32
	and ($A0.b)		; 32 A0
	brk $0F.b		; 00 0F
	pea $33F2.w		; F4 F2 33
	trb $31.b		; 14 31
	and ($90.b,X)		; 21 90
	cop $4F.b		; 02 4F
	and $33.b,S		; 23 33
	eor $33.b,X		; 55 33
	eor ($22.b,X)		; 41 22
	stz $C5.b,X		; 74 C5
	lsr $B046.w		; 4E 46 B0
	and $B1E5.w,Y		; 39 E5 B1
	eor ($84.b),Y		; 51 84
	cpx $FE.b		; E4 FE
	bpl -94.b		; 10 A2
	ora $0122.w		; 0D 22 01
	eor $1380.w		; 4D 80 13
	jsr ($CFFB.w,X)		; FC FB CF
	ora $1C1343.l		; 0F 43 13 1C
	sty $2E.b		; 84 2E
	pei ($0F.b)		; D4 0F
	and ($D0.b,S),Y		; 33 D0
	dec A		; 3A
	ora $90.b,S		; 03 90
	sty $2F.b,X		; 94 2F
	pea $200F.w		; F4 0F 20
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	ora ($E2.b),Y		; 11 E2
	sty $5C.b		; 84 5C
	and ($CD.b,S),Y		; 33 CD
	phy		; 5A
	cpx $DD.b		; E4 DD
	rts		; 60

	cmp $80.b,X		; D5 80
	rol $CF23.w,X		; 3E 23 CF
	phd		; 0B
	cmp ($DC.b),Y		; D1 DC
	asl $84E2.w,X		; 1E E2 84
	inc $D14F.w,X		; FE 4F D1
	phd		; 0B
	and ($D4.b,X)		; 21 D4
	rol $7413.w,X		; 3E 13 74
	ldx #$93FC.w		; A2 FC 93
	cmp $5BF452.l		; CF 52 F4 5B
	ror $DE74.w		; 6E 74 DE
	dec A		; 3A
	and ($EE.b)		; 32 EE
	ora $34E2E5.l,X		; 1F E5 E2 34
	stz $D5.b,X		; 74 D5
	tsb $C1E1.w		; 0C E1 C1
	trb $0D4F.w		; 1C 4F 0D
	ror $1174.w		; 6E 74 11
	and $0E024F.l		; 2F 4F 02 0E
	sbc ($E1.b,X)		; E1 E1
	ora ($64.b),Y		; 11 64
	sbc [$CF.b],Y		; F7 CF
	ora ($04.b)		; 12 04
	and $CFF0.w,X		; 3D F0 CF
	eor ($54.b,X)		; 41 54
	rol $EA.b		; 26 EA
	bpl -28.b		; 10 E4
	bmi  38.b		; 30 26
	lda $6470.w		; AD 70 64
	ora $1C.b,S		; 03 1C
	brk $D5.b		; 00 D5
	sbc ($F2.b,X)		; E1 F2
	beq  47.b		; F0 2F
	rts		; 60

	bit $1E.b		; 24 1E
	and $233001.l,X		; 3F 01 30 23
	ora ($1D.b,X)		; 01 1D
	stz $11.b		; 64 11
.INDEX 16
	rep #$11		; C2 11
	sbc ($1D.b,S),Y		; F3 1D
	and $64EDC2.l		; 2F C2 ED 64
	bmi -29.b		; 30 E3
	brk $02.b		; 00 02
	cmp ($1C.b,X)		; C1 1C
	sbc ($FD.b),Y		; F1 FD
	mvn $C5,$7E		; 54 7E C5
	xce		; FB
	eor $2BB0.w		; 4D B0 2B
	ora ($D2.b)		; 12 D2
	mvn $12,$1C		; 54 1C 12
	bcs -16.b		; B0 F0
	sbc $3E2C.w,X		; FD 2C 3E
.ACCU 16
	rep #$64		; C2 64
	asl $E110.w		; 0E 10 E1
	brk $F1.b		; 00 F1
	cmp ($FE.b,X)		; C1 FE
	sbc ($54.b)		; F2 54
	cpy $C2.b		; C4 C2
	brk $FB.b		; 00 FB
	asl $5BDD.w		; 0E DD 5B
	lsr $E354.w		; 4E 54 E3
	inc A		; 1A
	brk $BF.b		; 00 BF
	asl $A213.w		; 0E 13 A2
	bit $EF54.w		; 2C 54 EF
	ora $D0F0.w		; 0D F0 D0
	and $C051.w,Y		; 39 51 C0
	bit $0154.w		; 2C 54 01
	cpx #$033F.w		; E0 3F 03
	sbc $F1B1E0.l		; EF E0 B1 F1
	mvn $10,$03		; 54 03 10
	and $2D2F21.l		; 2F 21 2F 2D
	jmp $105431.l		; 5C 31 54 10
	rol $CF10.w,X		; 3E 10 CF
	brk $D2.b		; 00 D2
	cmp ($C4.b),Y		; D1 C4
	mvn $2F,$B2		; 54 B2 2F
	ora [$03.b],Y		; 17 03
	eor ($01.b),Y		; 51 01
	tsb $5440.w		; 0C 40 54
	inc $5F.b,X		; F6 5F
	.db $62, $EF, $1B		; 62 EF 1B
	bne -17.b		; D0 EF
	and ($54.b,S),Y		; 33 54
	asl $10.b,X		; 16 10
	and ($9F.b)		; 32 9F
	ora $503405.l		; 0F 05 34 50
	bvs  85.b		; 70 55
	eor $22.b,S		; 43 22
	sbc ($C2.b,X)		; E1 C2
	ora ($33.b,X)		; 01 33
	eor ($84.b),Y		; 51 84
	ora $100200.l,X		; 1F 00 02 10
	ora ($0E.b)		; 12 0E
	cpx $FE.b		; E4 FE
	ldy $01.b		; A4 01
	cpx #$FF15.w		; E0 15 FF
	ora $FD35ED.l,X		; 1F ED 35 FD
	bcs  51.b		; B0 33
	ora $DDEC20.l,X		; 1F 20 EC DD
	inc $14.b		; E6 14
	ora ($C4.b,S),Y		; 13 C4
	sbc $11001F.l		; EF 1F 00 11
	rol $0F1E.w,X		; 3E 1E 0F
	ora ($B4.b,X)		; 01 B4
	cmp ($F1.b)		; D2 F1
	asl $B2.b,X		; 16 B2
	bne -62.b		; D0 C2
	tad		; 5B
	rol $0DB0.w		; 2E B0 0D
	adc ($10.b)		; 72 10
	ora $F0D4.w		; 0D D4 F0
	cmp $30B0C6.l,X		; DF C6 B0 30
	ora $FD4FDB.l,X		; 1F DB 4F FD
	jsr ($F245.w,X)		; FC 45 F2
	cpy #$D1FF.w		; C0 FF D1
	brk $FF.b		; 00 FF
	sep #$4F		; E2 4F
	ora $31C4FD.l,X		; 1F FD C4 31
	sbc $C12300.l,X		; FF 00 23 C1
	cpx #$2EE3.w		; E0 E3 2E
	cpy $0F.b		; C4 0F
	ora ($4D.b,X)		; 01 4D
	asl $140F.w		; 0E 0F 14
	sbc $04C0F0.l		; EF F0 C0 04
	and ($0F.b,X)		; 21 0F
	sbc $FF0E31.l		; EF 31 0E FF
	and ($B0.b,S),Y		; 33 B0
	ora ($EE.b),Y		; 11 EE
	cmp $31.b		; C5 31
	dec $70E6.w,X		; DE E6 70
	rol $0FC4.w		; 2E C4 0F
	rti		; 40

	inc $3200.w,X		; FE 00 32
	bne -32.b		; D0 E0
	sbc ($C4.b,S),Y		; F3 C4
	rol $12FF.w		; 2E FF 12
	bit $0F1D.w,X		; 3C 1D 0F
	and ($EF.b)		; 32 EF
	cpy $F1.b		; C4 F1
	and $C1.b,S		; 23 C1
	cmp ($E3.b),Y		; D1 E3
	rol $12FF.w		; 2E FF 12
	cpy $3C.b		; C4 3C
	asl $220F.w,X		; 1E 0F 22
	sbc $D031E2.l		; EF E2 31 D0
	bcs -18.b		; B0 EE
	cmp ($41.b,X)		; C1 41
	stp		; DB
	sbc $5F.b,X		; F5 5F
	ora $24B0ED.l		; 0F ED B0 24
	trb $63B0.w		; 1C B0 63
	sbc $41D20D.l,X		; FF 0D D2 41
	ldy $A1.b,X		; B4 A1
	eor [$BD.b]		; 47 BD
	sbc ($DF.b)		; F2 DF
	adc ($DA.b,X)		; 61 DA
	and $C4.b		; 25 C4
	and $1EFF.w,X		; 3D FF 1E
	ora $0F.b,S		; 03 0F
	cmp ($23.b)		; D2 23
	cmp $CDE0B0.l		; CF B0 E0 CD
	jsl $6EE40A.l		; 22 0A E4 6E
	sbc $E3B00C.l		; EF 0C B0 E3
	rol $53AF.w		; 2E AF 53
	cmp $CF0F.w,X		; DD 0F CF
	and ($B0.b)		; 32 B0
	stp		; DB
	ora [$1D.b]		; 07 1D
	cmp ($EB.b,X)		; C1 EB
	cop $2B.b		; 02 2B
	cmp ($C4.b)		; D2 C4
	bit $2EF0.w,X		; 3C F0 2E
	sbc ($10.b)		; F2 10
.ACCU 16
	rep #$22		; C2 22
	cmp $DDF1B0.l		; CF B0 F1 DD
	ora ($FB.b)		; 12 FB
	inc $2D.b,X		; F6 2D
	lda ($FC.b),Y		; B1 FC
	ldy $23.b,X		; B4 23
	rol A		; 2A
	pea $DF6A.w		; F4 6A DF
	eor $30D3.w,X		; 5D D3 30
	bcs -67.b		; B0 BD
	and $FC.b,X		; 35 FC
	sbc ($ED.b)		; F2 ED
	ora $FC.b,S		; 03 FC
	inc $B4.b,X		; F6 B4
	cpy $0DD6.w		; CC D6 0D
	pea $E61C.w		; F4 1C E6
	and $B0B1.w,X		; 3D B1 B0
	jsr $30EE.w		; 20 EE 30
	inc $0C54.w		; EE 54 0C
	ora ($0D.b,X)		; 01 0D
	ldy $23.b,X		; B4 23
	dec $EC35.w,X		; DE 35 EC
	cpx $FF.b		; E4 FF
	cpx $0E.b		; E4 0E
	bcs -45.b		; B0 D3
	.db $42, $DF		; 42 DF
	bpl  -2.b		; 10 FE
	jsr $53FE.w		; 20 FE 53
	ldy $EC.b,X		; B4 EC
	and ($FD.b),Y		; 31 FD
	and ($FE.b),Y		; 31 FE
	bit $ED.b,X		; 34 ED
	sbc $B0.b,S		; E3 B0
	brk $D1.b		; 00 D1
	bpl -45.b		; 10 D3
	eor $EF.b,S		; 43 EF
	bpl  -2.b		; 10 FE
	bcs  16.b		; B0 10
	sbc $102E53.l,X		; FF 53 2E 10
	asl $0FF1.w		; 0E F1 0F
	ldy $24.b,X		; B4 24
	sbc $E2F0D2.l		; EF D2 F0 E2
	brk $E5.b		; 00 E5
	bpl -80.b		; 10 B0
	ora $00FD10.l		; 0F 10 FD 00
	asl $3F43.w		; 0E 43 3F
	brk $B0.b		; 00 B0
	asl $0FE0.w		; 0E E0 0F
	sbc $33.b,X		; F5 33
	sbc ($0F.b),Y		; F1 0F
	dec $2FB4.w,X		; DE B4 2F
	sbc ($4F.b)		; F2 4F
	inc $0D2E.w,X		; FE 2E 0D
	jsr $A40F.w		; 20 0F A4
	lsr $FD.b,X		; 56 FD
.ACCU 8
	sep #$EF		; E2 EF
	cmp ($F0.b)		; D2 F0
	pea $9011.w		; F4 11 90
	and ($3D.b)		; 32 3D
	jsr ($CEEC.w,X)		; FC EC CE
	ora ($E2.b,X)		; 01 E2
	brk $94.b		; 00 94
	cpy #$0F10.w		; C0 10 0F
	and ($1C.b),Y		; 31 1C
	eor $94F1FD.l		; 4F FD F1 94
	brk $F4.b		; 00 F4
	ora ($E2.b,X)		; 01 E2
	inc $1FEF.w,X		; FE EF 1F
	brk $88.b		; 00 88
	ply		; 7A
	beq  46.b		; F0 2E
	lda $D5.b		; A5 D5
	cmp $20.b,S		; C3 20
	inc $4E84.w,X		; FE 84 4E
	tsb $EEFD.w		; 0C FD EE
	sbc $12.b,X		; F5 12
	ora $FF.b,X		; 15 FF
	sty $EE.b		; 84 EE
	xce		; FB
	sbc $30244F.l,X		; FF 4F 24 30
	cmp ($FF.b),Y		; D1 FF
	dey		; 88
	ldy $30.b,X		; B4 30
	cmp ($4E.b)		; D2 4E
	dec $DD4F.w,X		; DE 4F DD
	bit $84.b,X		; 34 84
	ora $005E14.l		; 0F 14 5E 00
	rol $01BE.w		; 2E BE 01
	cmp ($84.b),Y		; D1 84
	bit $F1.b,X		; 34 F1
	ora ($DD.b)		; 12 DD
	sbc $3012EF.l,X		; FF EF 12 30
	sei		; 78
	lsr $04EC.w,X		; 5E EC 04
	cmp $2C53.w		; CD 53 2C
	and ($DE.b,S),Y		; 33 DE
	sei		; 78
	ldy $1B.b,X		; B4 1B
	cmp $4F.b,X		; D5 4F
	sbc ($3E.b,S),Y		; F3 3E
	lda ($10.b),Y		; B1 10
	sei		; 78
	lda $431F41.l		; AF 41 1F 43
	dec $DC11.w,X		; DE 11 DC
	cop $78.b		; 02 78
	pld		; 2B
	mvp $11,$2D		; 44 2D 11
	tas		; 1B
	sbc $78D23F.l		; EF 3F D2 78
	eor ($F2.b,X)		; 41 F2
	and $CEE3C0.l		; 2F C0 E3 CE
	and ($01.b)		; 32 01
	sei		; 78
	and $DF.b,S		; 23 DF
	sbc ($DE.b)		; F2 DE
	sbc ($2C.b),Y		; F1 2C
	eor ($4B.b),Y		; 51 4B
	sei		; 78
	and ($0E.b,X)		; 21 0E
	cmp ($00.b,X)		; C1 00
	cmp ($31.b,S),Y		; D3 31
.ACCU 8
	sep #$21		; E2 21
	sei		; 78
	bcs   0.b		; B0 00
	cpy #$D122.w		; C0 22 D1
	bit $EE.b,X		; 34 EE
	bpl 116.b		; 10 74
	pld		; 2B
	dec $C1FB.w,X		; DE FB C1
	eor ($24.b,X)		; 41 24
	eor ($FF.b),Y		; 51 FF
	stz $0E.b,X		; 74 0E
	tyx		; BB
	inc $3500.w		; EE 00 35
	and $14.b,S		; 23 14
	cmp $B074.w,X		; DD 74 B0
	jmp.w [$30E1]		; DC E1 30
	bit $6F.b		; 24 6F
	sbc $CE741C.l,X		; FF 1C 74 CE
	beq -30.b		; F0 E2
	eor $F1.b		; 45 F1
	jsl $78FECC.l		; 22 CC FE 78
	sbc $21FE51.l,X		; FF 51 FE 21
	jsr ($0010.w,X)		; FC 10 00
	xce		; FB
	bcc -17.b		; 90 EF
	sbc $222433.l,X		; FF 33 24 22
	wai		; CB
	asl $B0C1.w,X		; 1E C1 B0
	ora $100002.l		; 0F 02 00 10
	inc $D4F4.w,X		; FE F4 D4
	ora ($B0.b)		; 12 B0
	sbc ($2E.b,S),Y		; F3 2E
	and $CFEA.w,X		; 3D EA CF
	bne  50.b		; D0 32
	and $B0.b		; 25 B0
	eor ($3F.b),Y		; 51 3F
	cpx $1DAD.w		; EC AD 1D
	rts		; 60

	eor $71.b,X		; 55 71
	cpy #$EF11.w		; C0 11 EF
	cmp $201D.w		; CD 1D 20
	and ($41.b),Y		; 31 41
	cop $C0.b		; 02 C0
	bne -67.b		; D0 BD
	asl $1101.w		; 0E 01 11
	eor ($02.b,X)		; 41 02
	cmp $E0CDC0.l,X		; DF C0 CD E0
	sbc $02.b,S		; E3 02
	eor ($01.b,X)		; 41 01
	sbc $E2C0DC.l		; EF DC C0 E2
	pei ($12.b)		; D4 12
	eor ($00.b,X)		; 41 00
	sbc $E2FB.w		; ED FB E2
	cpy #$12E4.w		; C0 E4 12
	and ($00.b),Y		; 31 00
	sbc $F2FB.w		; ED FB F2
	cpx $C0.b		; E4 C0
	ora ($30.b)		; 12 30
	beq -35.b		; F0 DD
	xce		; FB
	sbc ($F5.b)		; F2 F5
	ora ($C4.b)		; 12 C4
	trb $C201.w		; 1C 01 C2
	sbc $C21340.l,X		; FF 40 13 C2
	tsb $10C4.w		; 0C C4 10
	cmp $E2.b,S		; C3 E2
	rol $E24F.w,X		; 3E 4F E2
	inc $C01E.w		; EE 1E C0
	sbc $4112C1.l		; EF C1 12 41
	and ($EF.b,X)		; 21 EF
	inc $C00E.w,X		; FE 0E C0
	ora ($05.b,S),Y		; 13 05
	ora ($2E.b,X)		; 01 2E
	sbc ($D2.b),Y		; F1 D2
	cpx #$C040.w		; E0 40 C0
	eor ($02.b),Y		; 51 02
	sbc $F31F1D.l,X		; FF 1D 1F F3
	tsb $11.b		; 04 11
	cpy #$F11F.w		; C0 1F F1
	sbc ($FF.b,X)		; E1 FF
	bmi  66.b		; 30 42
	ora ($0F.b)		; 12 0F
	bcs  29.b		; B0 1D
	ora $4216D5.l		; 0F D5 16 42
	bmi -32.b		; 30 E0
	sbc $420DB0.l,X		; FF B0 0D 42
	eor $22.b,X		; 55 22
	asl $E0FF.w,X		; 1E FF E0
	cpx $B0.b		; E4 B0
	and $42.b		; 25 42
	ora ($EF.b),Y		; 11 EF
	inc $42FE.w,X		; FE FE 42
	eor ($B0.b,S),Y		; 53 B0
	and ($1D.b,X)		; 21 1D
	sbc $15D4EF.l,X		; FF EF D4 15
	jsl $EEB010.l		; 22 10 B0 EE
	sbc $5140ED.l		; EF ED 40 51
	and ($EE.b,X)		; 21 EE
	sbc $0DB0.w,X		; FD B0 0D
	cmp $F6.b,X		; D5 F6
	cop $0E.b		; 02 0E
	cpx #$CEB1.w		; E0 B1 CE
	bcs  93.b		; B0 5D
	adc $1ADE11.l		; 6F 11 DE 1A
	tas		; 1B
	tsb $D7.b		; 04 D7
	bcs -32.b		; B0 E0
	ora $A1D0.w,X		; 1D D0 A1
	lda ($03.b)		; B2 03
	jsr $B01F.w		; 20 1F B0
	inc $DDEF.w		; EE EF DD
	eor $F05E.w		; 4D 5E F0
	cmp $0BB01B.l,X		; DF 1B B0 0B
	and ($33.b,X)		; 21 33
	cop $FE.b		; 02 FE
	cmp $B0D4EE.l,X		; DF EE D4 B0
	cmp $EF.b		; C5 EF
	ora $B0F0.w		; 0D F0 B0
	lda ($03.b),Y		; B1 03
	and $ED2FB0.l,X		; 3F B0 2F ED
	inc $4DEE.w,X		; FE EE 4D
	adc $B0EE00.l		; 6F 00 EE B0
	tas		; 1B
	tsb $412F.w		; 0C 2F 41
	ora ($EF.b,X)		; 01 EF
	sbc $04B00D.l		; EF 0D B0 04
	inc $F2.b,X		; F6 F2
	ora $D4C0E0.l		; 0F E0 C0 D4
	cmp $B0.b,X		; D5 B0
	ora $D1000D.l		; 0F 0D 00 D1
.INDEX 16
	rep #$13		; C2 13
	bmi  63.b		; 30 3F
	bcs  14.b		; B0 0E
	ora $705FFF.l		; 0F FF 5F 70
	jsr $1C0F.w		; 20 0F 1C
	bcs  13.b		; B0 0D
	lsr $F160.w		; 4E 60 F1
	bne  29.b		; D0 1D
	ora $B030.w,X		; 1D 30 B0
	eor ($03.b)		; 52 03
	sbc ($FF.b,X)		; E1 FF
	asl $2513.w,X		; 1E 13 25
	ora ($B0.b,S),Y		; 13 B0
	sbc ($E1.b),Y		; F1 E1
	sbc $01F705.l		; EF 05 F7 01
	ora $C0B0F1.l		; 0F F1 B0 C0
	sbc $E7.b		; E5 E7
	ora $D1000E.l		; 0F 0E 00 D1
	cmp $B0.b,X		; D5 B0
	sbc [$0F.b]		; E7 0F
	ora $D100.w,X		; 1D 00 D1
	cmp $E6.b,X		; D5 E6
	asl $1CB0.w		; 0E B0 1C
	brk $D1.b		; 00 D1
	cmp $E6.b,X		; D5 E6
	asl $012C.w		; 0E 2C 01
	bcs -31.b		; B0 E1
	pei ($F7.b)		; D4 F7
	asl $003C.w		; 0E 3C 00
	sbc ($D4.b),Y		; F1 D4
	bcs -26.b		; B0 E6
	inc $013C.w,X		; FE 3C 01
	sbc ($D4.b,X)		; E1 D4
	inc $0F.b,X		; F6 0F
	bcs  60.b		; B0 3C
	ora ($E1.b,X)		; 01 E1
	pei ($F6.b)		; D4 F6
	ora $B0013C.l		; 0F 3C 01 B0
	sbc ($E4.b,X)		; E1 E4
	inc $00.b,X		; F6 00
	bit $E210.w,X		; 3C 10 E2
	cpx $B0.b		; E4 B0
	inc $00.b,X		; F6 00
	bit $E210.w,X		; 3C 10 E2
	sbc $06.b,S		; E3 06
	brk $B0.b		; 00 B0
	bit $E210.w,X		; 3C 10 E2
	sbc $06.b,S		; E3 06
	brk $2C.b		; 00 2C
	ora $E3E1B0.l,X		; 1F B0 E1 E3
	ora $0F.b		; 05 0F
	bit $E10F.w		; 2C 0F E1
	sbc ($B0.b,S),Y		; F3 B0
	ora $00.b		; 05 00
	bit $E11F.w		; 2C 1F E1
	sbc ($F5.b,S),Y		; F3 F5
	ora $0F2CB0.l		; 0F B0 2C 0F
	cpx #$F5F3.w		; E0 F3 F5
	sbc $B01F2B.l,X		; FF 2B 1F B0
	cpx #$F6F3.w		; E0 F3 F6
	sbc $EF102B.l,X		; FF 2B 10 EF
	tsb $B0.b		; 04 B0
	inc $EF.b		; E6 EF
	pld		; 2B
	bpl -18.b		; 10 EE
	tsb $E6.b		; 04 E6
	inc $2BB0.w		; EE B0 2B
	bpl -19.b		; 10 ED
	ora $D6.b		; 05 D6
	inc $1F2B.w		; EE 2B 1F
	bcs -19.b		; B0 ED
	sbc $D6.b,X		; F5 D6
	sbc $0F2B.w		; ED 2B 0F
	sbc $B0F5.w		; ED F5 B0
	dec $ED.b,X		; D6 ED
	pld		; 2B
	ora $D6F5FD.l		; 0F FD F5 D6
	sbc $1CB0.w		; ED B0 1C
	asl $F5FD.w		; 0E FD F5
	cmp $FD.b,X		; D5 FD
	ora $B0FD.w,X		; 1D FD B0
	ora $F5E5.w		; 0D E5 F5
	asl $ED1E.w		; 0E 1E ED
	asl $A0F4.w		; 0E F4 A0
	ora [$3E.b]		; 07 3E
	asl $0CBA.w		; 0E BA 0C
	inc $24.b		; E6 24
	and $B0F1A4.l,X		; 3F A4 F1 B0
	lsr $2D24.w		; 4E 24 2D
	and $B0B4.w		; 2D B4 B0
	ldy $2F.b,X		; B4 2F
	jsr $2F3C.w		; 20 3C 2F
	cmp ($D1.b,S),Y		; D3 D1
	brk $3E.b		; 00 3E
	bcs  95.b		; B0 5F
	ora ($C1.b),Y		; 11 C1
	sbc $5E3EE0.l		; EF E0 3E 5E
	ora ($B0.b,X)		; 01 B0
	lda ($E0.b),Y		; B1 E0
	bne  94.b		; D0 5E
	ror $B2F2.w		; 6E F2 B2
	sbc ($B0.b,X)		; E1 B0
	bne 110.b		; D0 6E
	ror $B2E3.w,X		; 7E E3 B2
	bne -17.b		; D0 EF
	ror $60B0.w		; 6E B0 60
	sbc $D1.b,S		; E3 D1
	cmp $515FFE.l,X		; DF FE 5F 51
	sbc ($B0.b)		; F2 B0
	sbc $410FEE.l		; EF EE 0F 41
	and ($F0.b)		; 32 F0
	sbc $B0FD.w,X		; FD FD B0
	bpl  35.b		; 10 23
	ora ($0F.b)		; 12 0F
	ora $121D.w,X		; 1D 1D 12
	ora $B0.b		; 05 B0
	cop $1D.b		; 02 1D
	trb $132C.w		; 1C 2C 13
	inc $F0.b,X		; F6 F0
	bit $2CB0.w		; 2C B0 2C
	bit $E605.w		; 2C 05 E6
	sbc $1D2C2B.l		; EF 2B 2C 1D
	bcs -10.b		; B0 F6
	sbc [$FE.b]		; E7 FE
	bit $FF2D.w		; 2C 2D FF
	sbc $F5.b,X		; F5 F5
	ldy #$3B2C.w		; A0 2C 3B
	jsr ($E6B2.w,X)		; FC B2 E6
	mvn $0F,$5F		; 54 5F 0F
	bcs -48.b		; B0 D0
.INDEX 16
	rep #$10		; C2 10
	bvc  33.b		; 50 21
	sbc ($C2.b,X)		; E1 C2
	cmp ($B0.b,X)		; C1 B0
	lsr $116F.w		; 4E 6F 11
	rep #$C2		; C2 C2
	cpy #$7F5E.w		; C0 5E 7F
	bcs -14.b		; B0 F2
	rep #$C1		; C2 C1
	sbc $F1505F.l		; EF 5F 50 F1
	cpx #$EEB0.w		; E0 B0 EE
	bpl  35.b		; 10 23
	ora ($0F.b)		; 12 0F
	ora $121C.w		; 0D 1C 12
	bcs -10.b		; B0 F6
	sbc ($1D.b),Y		; F1 1D
	trb $052D.w		; 1C 2D 05
	sbc [$F0.b]		; E7 F0
	bcs  28.b		; B0 1C
	and $050F.w		; 2D 0F 05
	inc $0F.b,X		; F6 0F
	asl $B00F.w,X		; 1E 0F B0
	sbc ($12.b,X)		; E1 12
	.db $42, $11		; 42 11
	beq -47.b		; F0 D1
	cmp ($3F.b,X)		; C1 3F
	bcs 111.b		; B0 6F
	ora ($C1.b),Y		; 11 C1
.INDEX 16
	rep #$D0		; C2 D0
	lsr $F16F.w		; 4E 6F F1
	bcs -78.b		; B0 B2
	cmp $4140F0.l,X		; DF F0 40 41
	beq -17.b		; F0 EF
	ora $01B0.w		; 0D B0 01
	trb $01.b		; 14 01
	asl $1C0C.w,X		; 1E 0C 1C
	ora ($E6.b,S),Y		; 13 E6
	bcs -16.b		; B0 F0
	trb $0E1C.w		; 1C 1C 0E
	ora $E6.b		; 05 E6
	inc $B01C.w,X		; FE 1C B0
	ora $2303DF.l,X		; 1F DF 03 23
	ora $C0D0FE.l		; 0F FE D0 C0
	bcs  47.b		; B0 2F
	bvc   1.b		; 50 01
	bne -79.b		; D0 B1
	bne  77.b		; D0 4D
	adc $B1F1B0.l		; 6F B0 F1 B1
	cmp $505FF0.l,X		; DF F0 5F 50
	sbc ($CF.b,X)		; E1 CF
	bcs  12.b		; B0 0C
	ora ($23.b,X)		; 01 23
	jsr $FC0F.w		; 20 0F FC
	tsb $B002.w		; 0C 02 B0
	sbc $F0.b,X		; F5 F0
	ora $0D0B.w,X		; 1D 0B 0D
	tsb $D6.b		; 04 D6
	sbc $1D1BB0.l,X		; FF B0 1B 1D
	inc $E6F5.w,X		; FE F5 E6
	inc $0F1B.w,X		; FE 1B 0F
	ldy $E2.b,X		; B4 E2
	ora ($E3.b,S),Y		; 13 E3
	dec $F31E.w,X		; DE 1E F3
	cmp $20.b,S		; C3 20
	bcs  65.b		; B0 41
	bpl -32.b		; 10 E0
	cpy #$3FD0.w		; C0 D0 3F
	adc $D1B001.l		; 6F 01 B0 D1
	bne -32.b		; D0 E0
	lsr $F26F.w,X		; 5E 6F F2
	lda ($FF.b),Y		; B1 FF
	bcs -16.b		; B0 F0
	eor $C0E260.l,X		; 5F 60 E2 C0
	ora $32F1.w		; 0D F1 32
	ldy $2E.b,X		; B4 2E
	sbc ($EF.b,X)		; E1 EF
	bit $F432.w,X		; 3C 32 F4
	bne  -1.b		; D0 FF
	bcs  13.b		; B0 0D
	ora $F603.w,X		; 1D 03 F6
	sbc ($1D.b),Y		; F1 1D
	ora $B01E.w,X		; 1D 1E B0
	trb $E6.b		; 14 E6
	beq  44.b		; F0 2C
	asl $050F.w,X		; 1E 0F 05
	sbc [$B0.b]		; E7 B0
	sbc $EF1F2B.l,X		; FF 2B 1F EF
	ora $E6.b		; 05 E6
	asl $B02C.w		; 0E 2C B0
	brk $DF.b		; 00 DF
	ora $F5.b		; 05 F5
	asl $F02D.w,X		; 1E 2D F0
	cmp $0504B0.l		; CF B0 04 05
	asl $E01D.w,X		; 1E 1D E0
	cmp $B0F504.l		; CF 04 F5 B0
	ora $E01C.w		; 0D 1C E0
	dec $E604.w		; CE 04 E6
	ora $B01C.w		; 0D 1C B0
	cpx #$F5CF.w		; E0 CF F5
	inc $0D.b		; E6 0D
	pld		; 2B
	beq -33.b		; F0 DF
	bcs -11.b		; B0 F5
	inc $FE.b		; E6 FE
	pld		; 2B
	brk $DF.b		; 00 DF
	sbc $E7.b,X		; F5 E7
	bcs  14.b		; B0 0E
	pld		; 2B
	brk $EF.b		; 00 EF
	sbc $E6.b,X		; F5 E6
	sbc $1FB02B.l,X		; FF 2B B0 1F
	sbc $00F604.l,X		; FF 04 F6 00
	bit $0F1E.w		; 2C 1E 0F
	bcs   4.b		; B0 04
	inc $00.b,X		; F6 00
	and $0F1D.w		; 2D 1D 0F
	ora $05.b,S		; 03 05
	bcs   0.b		; B0 00
	asl $1E1C.w,X		; 1E 1C 1E
	cop $24.b		; 02 24
	jsr $B00E.w		; 20 0E B0
	tsb $012C.w		; 0C 2C 01
	and ($40.b),Y		; 31 40
	sbc $B01BFC.l,X		; FF FC 1B B0
	brk $5F.b		; 00 5F
	adc $1BDDE0.l		; 6F E0 DD 1B
	ora $6FB05D.l		; 0F 5D B0 6F
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	ora $4E0F.w		; 0D 0F 4E
	eor $C1B002.l,X		; 5F 02 B0 C1
	cmp $4121FF.l,X		; DF FF 21 41
	sbc ($E0.b),Y		; F1 E0
	lda ($B0.b)		; B2 B0
	cpy #$04.b		; C0 04
	sbc $FF.b,X		; F5 FF
	sbc $B0C1.w,X		; FD C1 B0
	cpx $B0.b		; E4 B0
	dec $FF.b,X		; D6 FF
	tas		; 1B
	ora $F5F3D0.l		; 0F D0 F3 F5
	brk $B0.b		; 00 B0
	ora $0D1B.w,X		; 1D 1B 0D
	sbc ($32.b),Y		; F1 32
	eor $B0FB1F.l		; 4F 1F FB B0
	pld		; 2B
	ora $006F5E.l		; 0F 5E 6F 00
	dec $0E0C.w		; CE 0C 0E
	bcs  63.b		; B0 3F
	bvc   2.b		; 50 02
	cmp ($CF.b)		; D2 CF
	sbc $B02413.l		; EF 13 24 B0
	sbc ($F0.b),Y		; F1 F0
	lda ($B1.b)		; B2 B1
	sbc $E7.b,X		; F5 E7
	sbc ($1D.b),Y		; F1 1D
	bcs -31.b		; B0 E1
	cmp ($F3.b,X)		; C1 F3
	sbc $11.b,X		; F5 11
	rol $0D2C.w		; 2E 2C 0D
	bcs -15.b		; B0 F1
	eor ($6E.b,X)		; 41 6E
	and $0F2BFC.l		; 2F FC 2B 0F
	lsr $60B0.w		; 4E B0 60
	ora ($C0.b),Y		; 11 C0
	inc $12FF.w		; EE FF 12
	and ($02.b,S),Y		; 33 02
	bcs -15.b		; B0 F1
	lda ($B1.b)		; B2 B1
	sbc $E7.b,X		; F5 E7
	ora ($1D.b,X)		; 01 1D
	beq -80.b		; F0 B0
	cpy #$F2.b		; C0 F2
	ora ($30.b,S),Y		; 13 30
	bmi  27.b		; 30 1B
	pld		; 2B
	ora $615EB0.l		; 0F B0 5E 61
	and ($F0.b,X)		; 21 F0
	dec $F4CF.w,X		; DE CF F4
	inc $B0.b,X		; F6 B0
	ora $2E.b,S		; 03 2E
	sbc $12F0CC.l		; EF CC F0 12
	bvc  50.b		; 50 32
	bcs  12.b		; B0 0C
	inc A		; 1A
	dec $532E.w,X		; DE 2E 53
	and $01.b,S		; 23 01
	lda ($C0.b),Y		; B1 C0
	cmp $11F3F1.l		; CF F1 F3 11
	jsr $FCFF.w		; 20 FF FC
	sbc $611FB0.l,X		; FF B0 1F 61
	and ($1D.b,S),Y		; 33 1D
	sbc $0E9D.w,X		; FD 9D 0E
	trb $B4.b		; 14 B4
	asl $C03E.w		; 0E 3E C0
	inc $E214.w		; EE 14 E2
	and ($F1.b,X)		; 21 F1
	ldy $FA.b		; A4 FA
	jmp.w [$E512]		; DC 12 E5
	tsb $03.b		; 04 03
	sbc $D1940B.l,X		; FF 0B 94 D1
	ora $2430.w,X		; 1D 30 24
	bit $E0.b		; 24 E0
	cmp $C298E2.l,X		; DF E2 98 C2
	sbc ($E4.b,S),Y		; F3 E4
	cmp ($D1.b),Y		; D1 D1
	brk $01.b		; 00 01
	ora $401194.l		; 0F 94 11 40
	and $00FF0F.l		; 2F 0F FF 00
	trb $946F.w		; 1C 6F 94
	rti		; 40

	ora $01FFF0.l,X		; 1F F0 FF 01
	cmp ($13.b)		; D2 13
	pea $E094.w		; F4 94 E0
	sbc $C3E1E1.l,X		; FF E1 E1 C3
	ora ($30.b),Y		; 11 30
	brk $94.b		; 00 94
	tsb $EDFF.w		; 0C FF ED
	ora $112223.l,X		; 1F 23 22 11
	inc $FD88.w		; EE 88 FD
	ror $01E5.w		; 6E E5 01
	eor ($BF.b,X)		; 41 BF
	sbc $94B3.w,X		; FD B3 94
	dec $020E.w,X		; DE 0E 02
	bit $24.b		; 24 24
	sbc ($FC.b,X)		; E1 FC
	cmp $5D88.w,X		; DD 88 5D
	eor $5B40.w		; 4D 40 5B
	asl $B0C2.w,X		; 1E C2 B0
	ora $88.b,S		; 03 88
	and $332F.w,X		; 3D 2F 33
	beq -35.b		; F0 DD
	tsa		; 3B
	tsb $9853.w		; 0C 53 98
	beq   2.b		; F0 02
	sbc ($FF.b,S),Y		; F3 FF
	ora $5F0DFF.l		; 0F FF 0D 5F
	dey		; 88
	and $CF06D6.l		; 2F D6 06 CF
	bne -32.b		; D0 E0
	cpy #$42.b		; C0 42
	dey		; 88
	ora ($C3.b,X)		; 01 C3
	mvp $C0,$C1		; 44 C1 C0
.ACCU 8
	sep #$A0		; E2 A0
	bit $98.b		; 24 98
	ora $1F401F.l		; 0F 1F 40 1F
	cpx #$F0.b		; E0 F0
	sbc $5F8811.l		; EF 11 88 5F
	sbc $EB3D53.l,X		; FF 53 3D EB
	bpl -49.b		; 10 CF
	sbc ($88.b,S),Y		; F3 88
	eor $ED.b,S		; 43 ED
	.db $42, $5F		; 42 5F
	cpx $0FFF.w		; EC FF 0F
	cmp ($88.b,X)		; C1 88
	rol $FF.b,X		; 36 FF
	cmp ($41.b,S),Y		; D3 41
	ora $EFF0.w		; 0D F0 EF
	cmp ($84.b)		; D2 84
	cpx $50.b		; E4 50
	ora $10DD4E.l,X		; 1F 4E DD 10
	jmp.w [$88E4]		; DC E4 88
	eor $AFD1B3.l		; 4F B3 D1 AF
	trb $D0.b		; 14 D0
	bit $50.b		; 24 50
	tya		; 98
	sbc ($E0.b,X)		; E1 E0
	sbc $2F2E1F.l		; EF 1F 2E 2F
	.db $42, $FD		; 42 FD
	tya		; 98
	and $103EFC.l		; 2F FC 3E 10
	ora ($F5.b,X)		; 01 F5
	ora $1F94C4.l,X		; 1F C4 94 1F
	dec $FFED.w,X		; DE ED FF
	inc $4033.w,X		; FE 33 40
	eor ($84.b,X)		; 41 84
	plx		; FA
	jsr ($FDBE.w,X)		; FC BE FD
	lda ($63.b)		; B2 63
	adc $4F.b,S		; 63 4F
	dey		; 88
	sbc ($CF.b,S),Y		; F3 CF
	bit $BE.b		; 24 BE
	eor $1F1C23.l,X		; 5F 23 1C 1F
	dey		; 88
	inc $C4F3.w,X		; FE F3 C4
.ACCU 16
	rep #$E1		; C2 E1
	and ($2F.b),Y		; 31 2F
	sbc ($84.b,S),Y		; F3 84
	sbc ($FD.b,X)		; E1 FD
	bne -20.b		; D0 EC
	cmp $2244EF.l,X		; DF EF 44 22
	dey		; 88
	bit $FDF2.w,X		; 3C F2 FD
	and $03F2D1.l		; 2F D1 F2 03
	and $FEE288.l,X		; 3F 88 E2 FE
	ora $E11EFE.l,X		; 1F FE 1E E1
	ora ($F4.b),Y		; 11 F4
	dey		; 88
	sbc ($F0.b)		; F2 F0
	ora $2FCEE4.l,X		; 1F E4 CE 2F
	sbc ($1E.b,X)		; E1 1E
	dey		; 88
	sbc $D2.b		; E5 D2
	sbc ($D2.b,S),Y		; F3 D2
	ora $D34E2C.l,X		; 1F 2C 4E D3
	dey		; 88
	sbc $210E0F.l,X		; FF 0F 0E 21
	sbc ($2E.b,X)		; E1 2E
	bpl  60.b		; 10 3C
	sty $63.b		; 84 63
	sbc $00.b,X		; F5 00
	beq -35.b		; F0 DD
	tsb $FFDF.w		; 0C DF FF
	stz $E1.b,X		; 74 E1
	bpl  68.b		; 10 44
	and $23.b		; 25 23
	eor ($E4.b)		; 52 E4
	sbc $D2F078.l,X		; FF 78 F0 D2
	ora $D213.w,X		; 1D 13 D2
	ora ($01.b,X)		; 01 01
	and $3E78.w		; 2D 78 3E
	sbc $FD.b,S		; E3 FD
	rol $30FF.w,X		; 3E FF 30
	sbc ($01.b,X)		; E1 01
	stz $EF.b,X		; 74 EF
	asl $1021.w		; 0E 21 10
	rti		; 40

	trb $22.b		; 14 22
	and $74.b,S		; 23 74
	sbc $FBDF3D.l,X		; FF 3D DF FB
	sbc $11F1D0.l,X		; FF D0 F1 11
	stz $65.b		; 64 65
	eor $25.b,X		; 55 25
	cop $0C.b		; 02 0C
	rol A		; 2A
	cmp $1264FE.l,X		; DF FE 64 12
	ora ($E4.b)		; 12 E4
	brk $3E.b		; 00 3E
	ora ($0F.b),Y		; 11 0F
	bmi  68.b		; 30 44
	lsr $2E.b,X		; 56 2E
	cmp ($0E.b,S),Y		; D3 0E
	asl $152F.w,X		; 1E 2F 15
	ora $F01254.l,X		; 1F 54 12 F0
	cop $D2.b		; 02 D2
	jsr $0FE5.w		; 20 E5 0F
	jsl $610F44.l		; 22 44 0F 61
	cmp ($21.b,S),Y		; D3 21
	eor ($12.b,X)		; 41 12
	and $3D48EF.l,X		; 3F EF 48 3D
	asl $403D.w,X		; 1E 3D 40
	tsa		; 3B
	mvp $22,$C1		; 44 C1 22
	mvp $0F,$F5		; 44 F5 0F
.INDEX 8
	sep #$DC		; E2 DC
	beq -34.b		; F0 DE
	inc $44D0.w		; EE D0 44
	cpx #$30.b		; E0 30
	and ($11.b)		; 32 11
	and $FCDF01.l		; 2F 01 DF FC
	bit $BC.b,X		; 34 BC
	tsa		; 3B
	cop $E0.b		; 02 E0
	cmp $B2.b,X		; D5 B2
	jsl $1F39CF.l		; 22 CF 39 1F
	asl $01D0.w,X		; 1E D0 01
	cmp ($1E.b,X)		; C1 1E
	jsl $0000A0.l		; 22 A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sbc ($10.b,S),Y		; F3 10
	cop $EF.b		; 02 EF
	mvp $2E,$D0		; 44 D0 2E
	bne -128.b		; D0 80
	ora ($FD.b,S),Y		; 13 FD
	bit $EE.b		; 24 EE
	ora ($F0.b,X)		; 01 F0
	ora $D0802E.l,X		; 1F 2E 80 D0
	jsl $FF1EDD.l		; 22 DD 1E FF
	cmp [$7C.b],Y		; D7 7C
	ldx #$90.b		; A2 90
	asl $3FE3.w,X		; 1E E3 3F
	rep #$4E		; C2 4E
	cmp ($5C.b)		; D2 5C
	sbc ($90.b),Y		; F1 90
	lsr $3CE4.w,X		; 5E E4 3C
	ora ($FD.b)		; 12 FD
	ora $FF.b,S		; 03 FF
	and ($90.b)		; 32 90
	bne  18.b		; D0 12
	sbc ($5F.b),Y		; F1 5F
	cpy $FD.b		; C4 FD
	and ($14.b,X)		; 21 14
	ldy #$E0.b		; A0 E0
	rol $1FF4.w		; 2E F4 1F
	cop $2F.b		; 02 2F
	sep #$01		; E2 01
	bcc  31.b		; 90 1F
	cpx #$0D.b		; E0 0D
	and $BE41E3.l		; 2F E3 41 BE
	bvs -96.b		; 70 A0
	ora $0020F0.l		; 0F F0 20 00
	asl $B221.w		; 0E 21 B2
	lsr $E0A0.w,X		; 5E A0 E0
	cop $0D.b		; 02 0D
	and ($C1.b)		; 32 C1
	lsr $2CD3.w,X		; 5E D3 2C
	ldy #$F5.b		; A0 F5
	inc $E032.w		; EE 32 E0
	beq  50.b		; F0 32
	cmp $A3A051.l,X		; DF 51 A0 A3
	lsr $3CC6.w		; 4E C6 3C
	pei ($1C.b)		; D4 1C
	cmp ($33.b,S),Y		; D3 33
	bcs -15.b		; B0 F1
	bpl  16.b		; 10 10
	beq  46.b		; F0 2E
	ora ($E0.b),Y		; 11 E0
	eor $2B94A0.l		; 4F A0 94 2B
	asl $AD44.w,X		; 1E 44 AD
	mvp $41,$92		; 44 92 41
	ldy #$03.b		; A0 03
	sbc ($0F.b,X)		; E1 0F
	jsr $0DC1.w		; 20 C1 0D
	tsb $B075.w		; 0C 75 B0
	dec $F24E.w,X		; DE 4E F2
	sbc ($30.b),Y		; F1 30
	bpl -29.b		; 10 E3
	xce		; FB
	bcs  66.b		; B0 42
	inc $0D12.w		; EE 12 0D
	jsl $FE030E.l		; 22 0E 03 FE
	ldy #$20.b		; A0 20
	cmp ($00.b),Y		; D1 00
	sbc $4E5F25.l,X		; FF 25 5F 4E
	cpy $B0.b		; C4 B0
	asl $FEE5.w,X		; 1E E5 FE
	inc $0F00.w,X		; FE 00 0F
	ora ($10.b),Y		; 11 10
	bcs  14.b		; B0 0E
	tsb $0D.b		; 04 0D
	tsb $00.b		; 04 00
	ora $2F.b,S		; 03 2F
	inc $2EB4.w		; EE B4 2E
	pea $B13F.w		; F4 3F B1
	rti		; 40

	ldx $DD24.w,Y		; BE 24 DD
	cpy #$13.b		; C0 13
	sbc ($0F.b),Y		; F1 0F
	ora $14FEF0.l		; 0F F0 FE 14
	beq -76.b		; F0 B4
	rol $C5B2.w,X		; 3E B2 C5
	bpl  64.b		; 10 40
	xba		; EB
	and $B02F.w,X		; 3D 2F B0
	sbc $013D45.l,X		; FF 45 3D 01
	jsr ($43C2.w,X)		; FC C2 43
	bit $C0.b,X		; 34 C0
	ora $21D0FE.l		; 0F FE D0 21
	mvp $0E,$ED		; 44 ED 0E
	cmp ($C0.b,X)		; C1 C0
	and ($34.b),Y		; 31 34
	sbc $D20E.w		; ED 0E D2
	jsl $B00E20.l		; 22 20 0E B0
	tax		; AA
	ora ($46.b,S),Y		; 13 46
	adc $9ACD.w		; 6D CD 9A
	stz $56.b		; 64 56
	cpy #$2E.b		; C0 2E
	sbc $44B2.w		; ED B2 44
	ora ($FE.b)		; 12 FE
	wai		; CB
	and $C0.b		; 25 C0
	ora $C5BA42.l,X		; 1F 42 BA C5
	rti		; 40

	pea $BB2D.w		; F4 2D BB
	cpy #$35.b		; C0 35
	ora $C5EA13.l,X		; 1F 13 EA C5
	eor $C02DF3.l		; 4F F3 2D C0
	ldx $FE64.w		; AE 64 FE
	jsl $6FC6FA.l		; 22 FA C6 6F
	cmp ($C0.b),Y		; D1 C0
	bmi -100.b		; 30 9C
	adc $EC.b		; 65 EC
	ora ($0A.b,S),Y		; 13 0A
	lda $6F.b,X		; B5 6F
	cpy #$B1.b		; C0 B1
	eor ($AA.b),Y		; 51 AA
	lsr $FB.b,X		; 56 FB
	ora $2C.b,X		; 15 2C
	lda $C0.b,S		; A3 C0
	rts		; 60

	bcs  82.b		; B0 52
	dex		; CA
	and [$0B.b],Y		; 37 0B
	tsb $2C.b		; 04 2C
	cpy #$A3.b		; C0 A3
	rts		; 60

	cpy #$42.b		; C0 42
	cpy $FD44.w		; CC 44 FD
	ora ($C0.b,S),Y		; 13 C0
	tas		; 1B
	cmp $3D.b,X		; D5 3D
.ACCU 8
	sep #$2F		; E2 2F
	bcs  81.b		; B0 51
	cmp $EB22C0.l,X		; DF C0 22 EB
	bit $FD.b,X		; 34 FD
	ora ($1C.b,S),Y		; 13 1C
	sbc $2D.b		; E5 2D
	cpy #$F2.b		; C0 F2
	and $C050B1.l		; 2F B1 50 C0
	jsl $C043DC.l		; 22 DC 43 C0
	inc $0C12.w		; EE 12 0C
	ora ($FE.b,S),Y		; 13 FE
	ora ($1D.b,X)		; 01 1D
	ora $B0.b,S		; 03 B0
	ora $0B12.w		; 0D 12 0B
	ora $ED.b,X		; 15 ED
	and ($FA.b)		; 32 FA
	and $C0.b		; 25 C0
	inc $FC22.w,X		; FE 22 FC
	and $FE.b,S		; 23 FE
	ora ($FC.b)		; 12 FC
	and $C0.b,S		; 23 C0
	inc $0C12.w,X		; FE 12 0C
	and $FF.b,S		; 23 FF
	ora ($FE.b),Y		; 11 FE
	and ($B0.b,X)		; 21 B0
	dec $BA24.w,X		; DE 24 BA
	adc $B0.b,S		; 63 B0
	ora ($ED.b),Y		; 11 ED
	.db $42, $B0		; 42 B0
	cmp ($2F.b,X)		; C1 2F
	lda ($30.b),Y		; B1 30
.ACCU 16
	rep #$2F		; C2 2F
	lda $3E.b,S		; A3 3E
	bcs -46.b		; B0 D2
	rol $2DC3.w		; 2E C3 2D
	ora ($0C.b,X)		; 01 0C
	ora ($0D.b,S),Y		; 13 0D
	bcs  49.b		; B0 31
	xce		; FB
	and ($ED.b,S),Y		; 33 ED
	and ($DC.b),Y		; 31 DC
	.db $42, $CE		; 42 CE
	bcs  49.b		; B0 31
	cmp $C043.w		; CD 43 C0
	and ($B0.b,X)		; 21 B0
	rti		; 40

.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	jsr $30B1.w		; 20 B1 30
	cmp $1F.b,S		; C3 1F
	lda ($3F.b,S),Y		; B3 3F
	cmp ($B0.b,S),Y		; D3 B0
	ora $E33FB2.l,X		; 1F B2 3F E3
	asl $2EC4.w,X		; 1E C4 2E
	sbc $B0.b,S		; E3 B0
	asl $2DC4.w		; 0E C4 2D
	sbc ($0D.b,S),Y		; F3 0D
	pei ($2C.b)		; D4 2C
	ora $B0.b,S		; 03 B0
	ora $2CD4.w		; 0D D4 2C
	pea $D50C.w		; F4 0C D5
	pld		; 2B
	sbc ($B0.b,S),Y		; F3 B0
	ora $3CC4.w		; 0D C4 3C
	cpx $1C.b		; E4 1C
	cmp $3C.b		; C5 3C
	sbc ($B0.b,S),Y		; F3 B0
	asl $3DB4.w		; 0E B4 3D
	sbc $2D.b,S		; E3 2D
	lda $3C.b,X		; B5 3C
	sbc $C0.b,S		; E3 C0
	brk $D2.b		; 00 D2
	and $C21FE1.l		; 2F E1 1F C2
	and $11C0E1.l		; 2F E1 C0 11
	bne  33.b		; D0 21
	cmp ($20.b),Y		; D1 20
	cmp ($20.b,X)		; C1 20
	sbc ($B0.b,X)		; E1 B0
	and ($DB.b,X)		; 21 DB
	mvn $42,$BE		; 54 BE 42
	cpy $CF44.w		; CC 44 CF
	cpy #$0D11.w		; C0 11 0D
	ora ($FE.b,S),Y		; 13 FE
	ora ($0C.b)		; 12 0C
	ora ($EE.b,S),Y		; 13 EE
	bcs  50.b		; B0 32
	tas		; 1B
	cmp [$3A.b]		; C7 3A
	sbc ($2C.b,S),Y		; F3 2C
	lda $3B.b,X		; B5 3B
	bcs -14.b		; B0 F2
	jsr $70AF.w		; 20 AF 70
	lda ($32.b,X)		; A1 32
	tyx		; BB
	adc $C0.b,S		; 63 C0
	bne  17.b		; D0 11
	tsb $FE14.w		; 0C 14 FE
	ora ($1E.b),Y		; 11 1E
	cmp ($C4.b)		; D2 C4
	tsb $1E12.w		; 0C 12 1E
	cpy $4B.b		; C4 4B
	cpx $01.b		; E4 01
	xba		; EB
	cpy #$DE34.w		; C0 34 DE
	and ($1E.b,X)		; 21 1E
	cmp ($3D.b,S),Y		; D3 3D
	sbc ($20.b),Y		; F1 20
	cpy #$50C0.w		; C0 C0 50
	cmp ($11.b),Y		; D1 11
	trb $FC05.w		; 1C 05 FC
	and ($C0.b,X)		; 21 C0
	ora ($C0.b),Y		; 11 C0
	eor $1C11C2.l,X		; 5F C2 11 1C
	inc $FC.b,X		; F6 FC
	cpy #$1121.w		; C0 21 11
	cmp $10B160.l		; CF 60 B1 10
	rol $C0B5.w		; 2E B5 C0
	bit $11E2.w,X		; 3C E2 11
	asl $2EE4.w		; 0E E4 2E
	cmp ($20.b)		; D2 20
	cpy #$F1FF.w		; C0 FF F1
	and $F03FC2.l,X		; 3F C2 3F F0
	ora $A0B021.l		; 0F 21 B0 A0
	eor ($F0.b,X)		; 41 F0
	trb $0A24.w		; 1C 24 0A
	bit $FF.b		; 24 FF
	bcs -14.b		; B0 F2
	rep #$4F		; C2 4F
	lda $4E.b,S		; A3 4E
	ora $B0131D.l,X		; 1F 1D 13 B0
	asl A		; 0A
	and $DF.b		; 25 DF
	ora ($D1.b,X)		; 01 D1
	and ($B1.b,X)		; 21 B1
	and $100FB0.l,X		; 3F B0 0F 10
	cmp ($5A.b)		; D2 5A
	cpx $00.b		; E4 00
	asl $B03E.w		; 0E 3E B0
	sbc $29.b,S		; E3 29
	and $C0.b		; 25 C0
	rol $E53D.w		; 2E 3D E5
	inc A		; 1A
	bcs  20.b		; B0 14
	bne  29.b		; D0 1D
	jmp $1AD6.w		; 4C D6 1A
	trb $D1.b		; 14 D1
	bcs  29.b		; B0 1D
	bmi -78.b		; 30 B2
	ply		; 7A
	cmp $FF.b,X		; D5 FF
	rol $C0E7.w		; 2E E7 C0
	cpx $CF33.w		; EC 33 CF
	and $30EF11.l		; 2F 11 EF 30
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	ror A		; 6A
	tsb $E0.b		; 04 E0
	and $2BD4.w,X		; 3D D4 2B
	sep #$4D		; E2 4D
	bcs -31.b		; B0 E1
	ora ($0F.b,X)		; 01 0F
	ora ($11.b,X)		; 01 11
	cmp $B0D141.l		; CF 41 D1 B0
	ora $CE23.w		; 0D 23 CE
	bmi   1.b		; 30 01
	inc $E022.w		; EE 22 E0
	ldy #$C000.w		; A0 00 C0
	and ($CD.b)		; 32 CD
	and ($00.b),Y		; 31 00
	cpy #$A031.w		; C0 31 A0
	cmp $B33D1F.l,X		; DF 1F 3D B3
	jmp $FED3.w		; 4C D3 FE
	and $2ED2A0.l,X		; 3F A0 D2 2E
	sbc ($FF.b),Y		; F1 FF
	jsr $E40D.w		; 20 0D E4
	ora $0290.w		; 0D 90 02
	sbc $2DA35E.l		; EF 5E A3 2D
	ora ($C0.b),Y		; 11 C0
	lsr $D390.w,X		; 5E 90 D3
	sbc $17CA22.l,X		; FF 22 CA 17
	xba		; EB
	bmi -46.b		; 30 D2
	bcc  43.b		; 90 2B
	sbc $FD.b		; E5 FD
	bpl -16.b		; 10 F0
	ora $90FDF2.l		; 0F F2 FD 90
	jsr $0EF0.w		; 20 F0 0E
	sbc ($10.b),Y		; F1 10
	inc $1C03.w		; EE 03 1C
	bra -76.b		; 80 B4
	and $EBF0.w,X		; 3D F0 EB
	cmp ($5B.b,S),Y		; D3 5B
	ldy $0A.b		; A4 0A
	sta ($22.b,X)		; 81 22
	lda $00F32C.l		; AF 2C F3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvn $00,$1E		; 54 1E 00
	ora $E2C03F.l,X		; 1F 3F C0 E2
	sbc ($1F.b),Y		; F1 1F
	mvp $03,$56		; 44 56 03
	ora $3D3D0C.l		; 0F 0C 3D 3D
	ora $E34435.l		; 0F 35 44 E3
	bit $2411.w,X		; 3C 11 24
	bpl -14.b		; 10 F2
	sbc $126401.l		; EF 01 64 12
	dec $EC.b,X		; D6 EC
	and $12E0E3.l,X		; 3F E3 E0 12
	and ($78.b,X)		; 21 78
	ora $01100F.l		; 0F 0F 10 01
	trb $C1.b		; 14 C1
	sbc $880D.w		; ED 0D 88
	ora $F5.b,S		; 03 F5
	sbc ($B0.b,S),Y		; F3 B0
	dec $2300.w,X		; DE 00 23
	and $88.b,S		; 23 88
	asl $F0CE.w		; 0E CE F0
	brk $24.b		; 00 24
	and $88FD0C.l,X		; 3F 0C FD 88
	asl $3213.w,X		; 1E 13 32
	asl $E1DE.w,X		; 1E DE E1
	cmp ($14.b,S),Y		; D3 14
	tya		; 98
	ora ($0C.b),Y		; 11 0C
	ora $13020F.l		; 0F 0F 02 13
	bpl -80.b		; 10 B0
	dey		; 88
	sbc $71050F.l		; EF 0F 05 71
	dec A		; 3A
	ldx $F0F0.w		; AE F0 F0
	tya		; 98
	asl $12.b		; 06 12
	cpx $1EEF.w		; EC EF 1E
	bpl  68.b		; 10 44
	bpl -104.b		; 10 98
	ldx $1F1D.w		; AE 1D 1F
	ora ($62.b)		; 12 62
	phd		; 0B
	dec $9800.w,X		; DE 00 98
	cpx #$4236.w		; E0 36 42
	tsx		; BA
	cpx #$02FE.w		; E0 FE 02
	adc [$A8.b]		; 67 A8
	ora $0F0FCE.l,X		; 1F CE 0F 0F
	tsb $33.b		; 04 33
	phd		; 0B
	sbc $E1F0A8.l		; EF A8 F0 E1
	and $30.b		; 25 30
	plx		; FA
	sbc $A8F20F.l,X		; FF 0F F2 A8
	mvp $AE,$3F		; 44 3F AE
	cpx #$13FF.w		; E0 FF 13
	eor ($1D.b,S),Y		; 53 1D
	tay		; A8
	lda $000F.w,X		; BD 0F 00
	asl $52.b		; 06 52
	xba		; EB
	cmp $F1B8F0.l		; CF F0 B8 F1
	and $2F.b,S		; 23 2F
	jsr ($F00F.w,X)		; FC 0F F0
	ora ($33.b),Y		; 11 33
	clv		; B8
	brk $BF.b		; 00 BF
	sbc $411300.l,X		; FF 00 13 41
	tsb $B8DF.w		; 0C DF B8
	sbc ($F2.b,X)		; E1 F2
	and $20.b		; 25 20
	cmp $00D0.w		; CD D0 00
	ora ($B8.b,S),Y		; 13 B8
	and $FF.b,S		; 23 FF
	cmp $2410FF.l		; CF FF 10 24
	and $D1A8ED.l		; 2F ED A8 D1
	cpx #$4E35.w		; E0 35 4E
	inc $EFE0.w,X		; FE E0 EF
	and ($A8.b,S),Y		; 33 A8
	jsr $EFCF.w		; 20 CF EF
	bpl  20.b		; 10 14
	and ($0E.b,S),Y		; 33 0E
	sta $EFA8.w,X		; 9D A8 EF
	sbc ($36.b)		; F2 36
	adc $EA.b		; 65 EA
	txy		; 9B
	cmp ($03.b),Y		; D1 03
	tay		; A8
	adc [$1E.b],Y		; 77 1E
	lda $04DD.w,X		; BD DD 04
	eor $FB.b,X		; 55 FB
	dec $00B8.w		; CE B8 00
	bpl  67.b		; 10 43
	ora $01CD.w		; 0D CD 01
	sbc ($25.b)		; F2 25
	clv		; B8
	eor $2FDECB.l		; 4F CB DE 2F
	ora $33.b,X		; 15 33
	ora $A8BD.w,X		; 1D BD A8
	cmp ($32.b,X)		; C1 32
	and [$41.b],Y		; 37 41
	phx		; DA
	lda $3500.w		; AD 00 35
	tay		; A8
	bit $0E.b,X		; 34 0E
	lda $F2EF.w,X		; BD EF F2
	eor $40.b		; 45 40
	wai		; CB
	clv		; B8
	sbc $3402.w		; ED 02 34
	lsr $DFDC.w		; 4E DC DF
	and ($11.b,X)		; 21 11
	clv		; B8
	bit $0C.b,X		; 34 0C
	jmp.w [$1100]		; DC 00 11
	and ($30.b,S),Y		; 33 30
	cmp $9FA8.w		; CD A8 9F
	trb $31.b		; 14 31
	jsl $DBFD20.l		; 22 20 FD DB
	cmp ($B8.b)		; D2 B8
	and ($22.b,X)		; 21 22
	ora ($DD.b,X)		; 01 DD
	sbc $001023.l		; EF 23 10 00
	tay		; A8
	sbc $03E0.w,X		; FD E0 03
	ora ($21.b),Y		; 11 21
	inc $12BD.w		; EE BD 12
	tay		; A8
	mvp $DA,$4F		; 44 4F DA
	sbc ($10.b),Y		; F1 10
	cmp $A85153.l		; CF 53 51 A8
	cpx $00DB.w		; EC DB 00
	.db $42, $3F		; 42 3F
	rti		; 40

	cpx $A8DE.w		; EC DE A8
	sbc ($30.b)		; F2 30
	eor ($1D.b,S),Y		; 53 1D
	dex		; CA
	cmp ($34.b),Y		; D1 34
	and ($A8.b)		; 32 A8
	ora $F4CCFE.l		; 0F FE CC F4
	eor ($31.b,S),Y		; 53 31
	phx		; DA
	cpy #$22A8.w		; C0 A8 22
	sbc $3FF124.l,X		; FF 24 F1 3F
	jmp.w [$57AF]		; DC AF 57
	clv		; B8
	brk $FF.b		; 00 FF
	and ($FC.b),Y		; 31 FC
	bne  36.b		; D0 24
	ora $F2A8FF.l,X		; 1F FF A8 F2
	ora $F5C13F.l		; 0F 3F C1 F5
	and ($EA.b)		; 32 EA
	cmp $02B8.w,X		; DD B8 02
	bpl  17.b		; 10 11
	sbc ($2E.b)		; F2 2E
	xce		; FB
	sbc ($42.b,X)		; E1 42
	clv		; B8
	sbc $0E21F2.l,X		; FF F2 21 0E
	cpx $32F3.w		; EC F3 32
	inc $FFC4.w		; EE C4 FF
	ora ($32.b,S),Y		; 13 32
	cmp $23D0.w,X		; DD D0 23
	asl $A4FF.w,X		; 1E FF A4
	bit $1E.b		; 24 1E
	sbc ($22.b),Y		; F1 22
	inc $EECD.w,X		; FE CD EE
	brk $B8.b		; 00 B8
	and $1C.b,S		; 23 1C
	cpy $4F25.w		; CC 25 4F
	cpy $3112.w		; CC 12 31
	clv		; B8
	cop $ED.b		; 02 ED
	lda $CF2C54.l,X		; BF 54 2C CF
	eor ($4E.b,S),Y		; 53 4E
	iny		; C8
	cmp $4111.w		; CD 11 41
	inc $100F.w,X		; FE 0F 10
	ora $26B8FF.l,X		; 1F FF B8 26
	bpl -50.b		; 10 CE
	cmp ($30.b)		; D2 30
	ora $20E2.w,X		; 1D E2 20
	clv		; B8
	ora ($1F.b),Y		; 11 1F
	ldy $4023.w,X		; BC 23 40
	cmp $B41F13.l,X		; DF 13 1F B4
	xba		; EB
	cmp $FE3113.l		; CF 13 31 FE
	dec $06FE.w,X		; DE FE 06
	clv		; B8
	bit $25AC.w		; 2C AC 25
	eor $20E1ED.l		; 4F ED E1 20
	beq -56.b		; F0 C8
	and ($FB.b)		; 32 FB
	cpx #$FF43.w		; E0 43 FF
	sbc $C80F12.l		; EF 12 0F C8
	bne  20.b		; D0 14
	rol $F2EC.w,X		; 3E EC F2
	rti		; 40

	ora $C8E1.w		; 0D E1 C8
	jsl $41E3FD.l		; 22 FD E3 41
	jsr ($33D0.w,X)		; FC D0 33
	brk $B8.b		; 00 B8
	ldy $1F13.w,X		; BC 13 1F
	bne 102.b		; D0 66
	xba		; EB
	sta $C856.w,X		; 9D 56 C8
	bpl -17.b		; 10 EF
	beq  32.b		; F0 20
	inc $1E24.w,X		; FE 24 1E
	cmp $06B8.w,X		; DD B8 06
	bvc  29.b		; 50 1D
	cmp $1E21.w,X		; DD 21 1E
	sbc [$6E.b]		; E7 6E
	clv		; B8
	dex		; CA
	cmp ($72.b,X)		; C1 72
	cop $EC.b		; 02 EC
	cmp ($10.b)		; D2 10
	sbc $EE42C8.l,X		; FF C8 42 EE
	inc $1022.w		; EE 22 10
	brk $EF.b		; 00 EF
	bpl -72.b		; 10 B8
	asl $5D15.w		; 0E 15 5D
	xba		; EB
	cpx #$1032.w		; E0 32 10
	ora $0E0EB8.l		; 0F B8 0E 0E
	ora ($52.b,X)		; 01 52
	ora $F2FD.w		; 0D FD F2
	bpl -88.b		; 10 A8
	ora ($F0.b),Y		; 11 F0
	sbc $5F14.w		; ED 14 5F
	inc $10FF.w		; EE FF 10
	tay		; A8
	brk $00.b		; 00 00
	bne -42.b		; D0 D6
	adc ($0D.b,X)		; 61 0D
	cpy $A8F3.w		; CC F3 A8
	ora ($30.b),Y		; 11 30
	sbc $52D4FC.l,X		; FF FC D4 52
	brk $1C.b		; 00 1C
	ldy $FE.b		; A4 FE
	cmp $00E0.w,X		; DD E0 00
	sbc $44D2.w		; ED D2 44
	and ($88.b,X)		; 21 88
	inc $E10F.w		; EE 0F E1
	bmi   1.b		; 30 01
	inc $2D40.w,X		; FE 40 2D
	sei		; 78
	phk		; 4B
	xba		; EB
	beq  65.b		; F0 41
	bpl  64.b		; 10 40
	inc $88ED.w,X		; FE ED 88
	sbc ($23.b),Y		; F1 23
	trb $F3D0.w		; 1C D0 F3
	ora ($F0.b,X)		; 01 F0
	asl $2088.w		; 0E 88 20
	sbc $3D14.w,X		; FD 14 3D
	asl $13CF.w,X		; 1E CF 13
	bpl -120.b		; 10 88
	bmi  -2.b		; 30 FE
	cpx $24D2.w		; EC D2 24
	ora ($0E.b)		; 12 0E
	sbc ($78.b),Y		; F1 78
	ldx $04E2.w,Y		; BE E2 04
	bmi -37.b		; 30 DB
	and ($0A.b,X)		; 21 0A
	rol $78.b		; 26 78
	sbc ($2D.b),Y		; F1 2D
	cpy $5131.w		; CC 31 51
	sbc $EFEF.w,X		; FD EF EF
	sei		; 78
	and ($22.b),Y		; 31 22
	cpx $CC.b		; E4 CC
	trb $016F.w		; 1C 6F 01
	rol $EB74.w		; 2E 74 EB
	cpx $D3E2.w		; EC E2 D3
	and $DF.b,X		; 35 DF
	cmp ($F3.b)		; D2 F3
	sei		; 78
	sbc $CB.b,S		; E3 CB
	jmp $1F31.w		; 4C 31 1F
	and $68C31C.l,X		; 3F 1C C3 68
	mvn $A9,$B3		; 54 B3 A9
	trb $30.b		; 14 30
	bpl  59.b		; 10 3B
	inc A		; 1A
	stz $EE.b,X		; 74 EE
	cpx #$2403.w		; E0 03 24
	sbc $EEFE.w		; ED FE EE
	sbc ($78.b,S),Y		; F3 78
	ora $F5C01D.l		; 0F 1D C0 F5
	ora $C0.b		; 05 C0
	sbc $78FF.w,X		; FD FF 78
	jsr $0041.w		; 20 41 00
	dec $F2D3.w,X		; DE D3 F2
	and ($DF.b,X)		; 21 DF
	stz $EF.b		; 64 EF
	sbc $22E2.w		; ED E2 22
	brk $12.b		; 00 12
	sbc $64F2.w		; ED F2 64
	tsb $BF1B.w		; 0C 1B BF
	lsr $41.b		; 46 41
	stp		; DB
	cmp ($15.b,X)		; C1 15
	pla		; 68
	lda ($A0.b)		; B2 A0
	sbc ($D6.b),Y		; F1 D6
	eor $F1BC0E.l,X		; 5F 0E BC F1
	sei		; 78
	ora ($11.b)		; 12 11
	trb $03ED.w		; 1C ED 03
	and $1D.b,S		; 23 1D
	inc $ED78.w,X		; FE 78 ED
	ora $11.b,X		; 15 11
	rol $E0EB.w,X		; 3E EB E0
	ora ($52.b)		; 12 52
	stz $45.b,X		; 74 45
	xba		; EB
	wai		; CB
	ora ($43.b,X)		; 01 43
	and ($EC.b)		; 32 EC
	inc $2468.w		; EE 68 24
	bpl  -3.b		; 10 FD
	ldy #$2133.w		; A0 33 21
	ora $68A0.w		; 0D A0 68
	lsr $E022.w,X		; 5E 22 E0
	beq -95.b		; F0 A1
	lsr $1F22.w		; 4E 22 1F
	sei		; 78
	inc $00D4.w,X		; FE D4 00
	bpl   1.b		; 10 01
	cmp ($E0.b,X)		; C1 E0
	ora ($68.b)		; 12 68
	phk		; 4B
	phk		; 4B
	cmp $FF3200.l,X		; DF 00 32 FF
	rol $68FA.w		; 2E FA 68
	bit $D2.b		; 24 D2
	and ($EE.b,X)		; 21 EE
	beq   0.b		; F0 00
	sbc ($05.b),Y		; F1 05
	mvn $FF,$C1		; 54 C1 FF
	sbc $33EF.w		; ED EF 33
	sbc $58DD01.l,X		; FF 01 DD 58
	bpl  64.b		; 10 40
	inc $01EF.w		; EE EF 01
	ora ($2F.b)		; 12 2F
	sbc $FEFF64.l		; EF 64 FF FE
	ora ($5F.b,X)		; 01 5F
	brk $ED.b		; 00 ED
	sbc $23545E.l		; EF 5E 54 23
	rol $B6FD.w		; 2E FD B6
	ldy $32.b,X		; B4 32
	sbc $64FD.w,X		; FD FD 64
	beq   1.b		; F0 01
	jsr $2A1C.w		; 20 1C 2A
	and ($02.b,X)		; 21 02
	brk $64.b		; 00 64
	sbc $11F0.w		; ED F0 11
	ora $DF.b,X		; 15 DF
	sbc $401400.l,X		; FF 00 14 40
	trb $42.b		; 14 42
	ora ($24.b),Y		; 11 24
	lsr $77.b,X		; 56 77
	ror $66.b		; 66 66
	clc		; 18
	jsl $1123E2.l		; 22 E2 23 11
	.db $42, $01		; 42 01
	cpx #$04F3.w		; E0 F3 04
	bne  33.b		; D0 21
	jsl $26F0EB.l		; 22 EB F0 26
	and ($DB.b)		; 32 DB
	bit $0A.b		; 24 0A
	dec $0E.b		; C6 0E
	inc $F0DD.w		; EE DD F0
	jsr $1810.w		; 20 10 18
	inc $0FF0.w,X		; FE F0 0F
	cpx #$0B1D.w		; E0 1D 0B
	trb $0C.b		; 14 0C
	clc		; 18
	ldx $F010.w,Y		; BE 10 F0
	ora $00F00F.l,X		; 1F 0F F0 00
	cpx #$0034.w		; E0 34 00
	trb $0F03.w		; 1C 03 0F
	cmp ($20.b),Y		; D1 20
	ora ($3F.b,X)		; 01 3F
	bit $C4.b		; 24 C4
	mvp $12,$10		; 44 10 12
	bpl  19.b		; 10 13
	adc $31.b		; 65 31
	sec		; 38
	ora ($11.b,X)		; 01 11
	cop $11.b		; 02 11
	ora $751101.l		; 0F 01 11 75
	stz $1C.b		; 64 1C
	and $CD5F12.l		; 2F 12 5F CD
	sbc ($11.b),Y		; F1 11
	jsl $F31D78.l		; 22 78 1D F3
	sbc ($FF.b),Y		; F1 FF
	and $D1221F.l		; 2F 1F 22 D1
	tay		; A8
	ora $10E011.l		; 0F 11 E0 10
	sbc ($10.b),Y		; F1 10
	rol $A8BF.w		; 2E BF A8
	and ($23.b)		; 32 23
	sbc $E3DF.w,X		; FD DF E3
	and ($01.b)		; 32 01
	cmp $01B8.w,X		; DD B8 01
	ora $0123.w		; 0D 23 01
	sbc $10D3.w,X		; FD D3 10
	bmi -92.b		; 30 A4
	ora $3AF6DA.l		; 0F DA F6 3A
	ora ($F2.b)		; 12 F2
	bit $B4E3.w		; 2C E3 B4
	brk $20.b		; 00 20
	cpx #$33FF.w		; E0 FF 33
	jsr ($13F0.w,X)		; FC F0 13
	ldy $2D.b		; A4 2D
	beq -63.b		; F0 C1
	and ($01.b),Y		; 31 01
	cmp $A4DA33.l,X		; DF 33 DA A4
	ora ($35.b),Y		; 11 35
	jsr ($F3F0.w,X)		; FC F0 F3
	and $A4E0EF.l,X		; 3F EF E0 A4
	stz $AA.b		; 64 AA
	ora ($36.b,X)		; 01 36
	tsb $F3EF.w		; 0C EF F3
	and $E0FFA4.l,X		; 3F A4 FF E0
	.db $62, $AC, $02		; 62 AC 02
	mvp $F1,$EB		; 44 EB F1
	ldy $04.b		; A4 04
	rol $E3EE.w		; 2E EE E3
	.db $62, $9B, $02		; 62 9B 02
	eor $B4.b,X		; 55 B4
	inc $12F0.w		; EE F0 12
	ora $40F1FF.l,X		; 1F FF F1 40
	cmp $03A4.w,X		; DD A4 03
	eor $DB.b,X		; 55 DB
	cpx #$2D15.w		; E0 15 2D
	dec $B4F4.w,X		; DE F4 B4
	rti		; 40

	cpy $3312.w		; CC 12 33
	jmp.w [$23F1]		; DC F1 23
	ora $02B8.w,X		; 1D B8 02
	jsl $63942A.l		; 22 2A 94 63
	tsb $54AF.w		; 0C AF 54
	iny		; C8
	ora $2111EE.l,X		; 1F EE 11 21
	tsb $50D2.w		; 0C D2 50
	asl $C1C8.w		; 0E C8 C1
	and ($1F.b),Y		; 31 1F
	cmp $FC2012.l,X		; DF 12 20 FC
	sbc $C8.b,S		; E3 C8
	bvc -18.b		; 50 EE
	cmp ($41.b),Y		; D1 41
	asl $22D0.w		; 0E D0 22
	bpl -60.b		; 10 C4
	ora $34B1.w		; 0D B1 34
	ora $23CF.w,X		; 1D CF 23
	and $02C4DE.l		; 2F DE C4 02
	and ($FC.b),Y		; 31 FC
	cmp ($42.b)		; D2 42
	tsb $42D0.w		; 0C D0 42
	clv		; B8
	stp		; DB
	sbc ($61.b,S),Y		; F3 61
	sbc $67A0.w		; ED A0 67
	plx		; FA
	lda $61F6B4.l,X		; BF B4 F6 61
	tyx		; BB
	sbc $53.b,S		; E3 53
	xce		; FB
	lda $9BB877.l		; AF 77 B8 9B
	sbc $62.b,X		; F5 62
	ldy $52D4.w		; AC D4 52
	sbc $C4CF.w		; ED CF C4
	sbc ($31.b,S),Y		; F3 31
	cpx $41F2.w		; EC F2 41
	sbc $22F1.w		; ED F1 22
	cpy $0E.b		; C4 0E
	cmp $DE1E24.l,X		; DF 24 1E DE
	and $2E.b,S		; 23 2E
	cmp $3F25B4.l,X		; DF B4 25 3F
	wai		; CB
	inc $60.b		; E6 60
	tyx		; BB
	sbc $51.b,X		; F5 51
	clv		; B8
	bcs  51.b		; B0 33
	rol $F6DD.w		; 2E DD F6
	lsr $14BC.w,X		; 5E BC 14
	ldy $55.b,X		; B4 55
	xce		; FB
	bne  52.b		; D0 34
	asl $37BC.w,X		; 1E BC 37
	and $BDB4.w		; 2D B4 BD
	rol $3D.b		; 26 3D
	cmp $3023.w		; CD 23 30
	stp		; DB
	sbc $B8.b		; E5 B8
	inc A		; 1A
	cpy #$1C35.w		; C0 35 1C
	bcs  66.b		; B0 42
	rol $B8CE.w		; 2E CE B8
	asl $5C.b		; 06 5C
	ldx $4D25.w		; AE 25 4D
	ldx $2F34.w		; AE 34 2F
	clv		; B8
	stp		; DB
	ora $7E.b		; 05 7E
	sta $5E06.w,X		; 9D 06 5E
	ldy $B415.w,X		; BC 15 B4
	mvp $AE,$1C		; 44 1C AE
	ror $1B.b		; 66 1B
	lda $C40C56.l		; AF 56 0C C4
	bne  34.b		; D0 22
	ora $1E24DE.l,X		; 1F DE 24 1E
	dec $C423.w,X		; DE 23 C4
	asl $13EF.w,X		; 1E EF 13
	ora $2E23DE.l,X		; 1F DE 23 2E
	dec $46B4.w,X		; DE B4 46
	and $34BE.w		; 2D BE 34
	rol $579C.w,X		; 3E 9C 57
	pld		; 2B
	bcs -70.b		; B0 BA
	pea $CB50.w		; F4 50 CB
	pea $A951.w		; F4 51 A9
	inc $B4.b,X		; F6 B4
	phd		; 0B
	ldy #$0B55.w		; A0 55 0B
	cpy #$1B44.w		; C0 44 1B
	lda ($B8.b,X)		; A1 B8
	eor $5D159D.l,X		; 5F 9D 15 5D
	ldx $4E14.w,Y		; BE 14 4E
	dex		; CA
	ldy $C5.b,X		; B4 C5
	.db $62, $CB, $E3		; 62 CB E3
	adc ($CC.b,X)		; 61 CC
	sbc ($51.b,S),Y		; F3 51
	bcs  10.b		; B0 0A
	lda ($64.b,X)		; A1 64
	plx		; FA
.INDEX 16
	rep #$53		; C2 53
	xba		; EB
	cmp ($B0.b)		; D2 B0
	eor ($C9.b,S),Y		; 53 C9
	cpx $51.b		; E4 51
	dex		; CA
	pea $CC50.w		; F4 50 CC
	ldy $35.b,X		; B4 35
	ora $63B3.w,Y		; 19 B3 63
	stp		; DB
	cmp ($61.b,S),Y		; D3 61
	jmp.w [$E3B4]		; DC B4 E3
	eor ($BB.b),Y		; 51 BB
	and $3E.b		; 25 3E
	cmp $1E25.w		; CD 25 1E
	bcs -20.b		; B0 EC
	sbc ($4E.b,S),Y		; F3 4E
	lda $C01D23.l,X		; BF 23 1D C0
	and ($B4.b,S),Y		; 33 B4
	dec $2D03.w,X		; DE 03 2D
	rep #$40		; C2 40
	sbc $30F2.w,X		; FD F2 30
	bcs  14.b		; B0 0E
	sbc ($3F.b,X)		; E1 3F
	dec $1E22.w		; CE 22 1E
	cmp $0CA033.l,X		; DF 33 A0 0C
	lda ($5F.b),Y		; B1 5F
	lda $1D34.w		; AD 34 1D
	lda $0CA044.l,X		; BF 44 A0 0C
	cmp ($2C.b)		; D2 2C
	cmp ($32.b,X)		; C1 32
	xce		; FB
.INDEX 16
	rep #$52		; C2 52
	tay		; A8
	sbc ($5E.b)		; F2 5E
	cmp ($1F.b),Y		; D1 1F
	sbc $FB.b,X		; F5 FB
	sbc ($42.b)		; F2 42
	clv		; B8
	ora $46D0.w		; 0D D0 46
	nop		; EA
.ACCU 16
	rep #$64		; C2 64
	nop		; EA
	ldx #$D2C0.w		; A2 C0 D2
	.db $42, $ED		; 42 ED
	sbc ($41.b,S),Y		; F3 41
	jmp.w [$3003]		; DC 03 30
	cpy #$14DD.w		; C0 DD 14
	rol $23CE.w,X		; 3E CE 23
	asl $32E0.w,X		; 1E E0 32
	clv		; B8
	cmp $51.b,S		; C3 51
	sbc $3FF2.w		; ED F2 3F
	bne  33.b		; D0 21
	sbc $2000A0.l,X		; FF A0 00 20
	cmp $1F24.w		; CD 24 1F
	cpx #$CD41.w		; E0 41 CD
	ldy #$1E24.w		; A0 24 1E
	cmp ($40.b),Y		; D1 40
	dec $0F22.w		; CE 22 0F
	sbc ($90.b)		; F2 90
	inc A		; 1A
	cpy $61.b		; C4 61
	cmp $CC43.w		; CD 43 CC
	and $1D.b		; 25 1D
	bcc -44.b		; 90 D4
	rol A		; 2A
	pei ($51.b)		; D4 51
	cmp $AB43.w		; CD 43 AB
	eor [$90.b]		; 47 90
	bit $3BC3.w		; 2C C3 3B
	cpy $62.b		; C4 62
	cpy $BD22.w		; CC 22 BD
	ldy #$0E23.w		; A0 23 0E
	sep #$0D		; E2 0D
	sbc $41.b,S		; E3 41
	cmp $A020.w,X		; DD 20 A0
	cmp $F20D33.l,X		; DF 33 0D F2
	sbc $2F04.w		; ED 04 2F
	bne -96.b		; D0 A0
	ora $30F2.w,X		; 1D F2 30
	dec $D02F.w,X		; DE 2F D0
	.db $42, $FD		; 42 FD
	ldy #$DF0F.w		; A0 0F DF
	mvp $E1,$FC		; 44 FC E1
	sbc $A00D23.l		; EF 23 0D A0
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	pea $DF3F.w		; F4 3F DF
	sbc $4F04.w,X		; FD 04 4F
	ldy $D2.b		; A4 D2
	rol $1C05.w		; 2E 05 1C
	cmp ($3E.b,X)		; C1 3E
	tsb $2C.b		; 04 2C
	ldy $C1.b		; A4 C1
	and $B02D04.l		; 2F 04 2D B0
	and $A43C04.l,X		; 3F 04 3C A4
	lda $3E034F.l,X		; BF 4F 03 3E
	ldx $153F.w,Y		; BE 3F 15
	bit $BEA4.w		; 2C A4 BE
	bmi  37.b		; 30 25
	tas		; 1B
	bcs  32.b		; B0 20
	and $0A.b,X		; 35 0A
	tay		; A8
	ora $2E.b,X		; 15 2E
	rti		; 40

	plb		; AB
	and $01.b,X		; 35 01
	and $22B89D.l		; 2F 9D B8 22
	ora ($1E.b,X)		; 01 1E
	cmp ($12.b,X)		; C1 12
	cop $0D.b		; 02 0D
	cmp ($B8.b,X)		; C1 B8
	rti		; 40

	ora ($FC.b),Y		; 11 FC
	sbc $2F.b,S		; E3 2F
	and ($CC.b),Y		; 31 CC
	ora ($B4.b,S),Y		; 13 B4
	cop $43.b		; 02 43
	jmp.w [$13E0]		; DC E0 13
	rti		; 40

	cpy $B400.w		; CC 00 B4
	bit $2E.b		; 24 2E
	dec $3301.w		; CE 01 33
	trb $02DF.w		; 1C DF 02
	clv		; B8
	bpl -51.b		; 10 CD
	and ($23.b,X)		; 21 23
	sbc $12EF.w,X		; FD EF 12
	jsl $F1FBB8.l		; 22 B8 FB F1
	ora ($40.b),Y		; 11 40
	cmp $1202.w		; CD 02 12
	bpl -76.b		; 10 B4
	sbc $03EF.w		; ED EF 03
	eor ($CD.b,X)		; 41 CD
	beq  36.b		; F0 24
	rol $F1B8.w		; 2E B8 F1
	ora ($31.b),Y		; 11 31
	cmp $2201.w		; CD 01 22
	ora $22B8DD.l,X		; 1F DD B8 22
	cop $1E.b		; 02 1E
	dec $2230.w,X		; DE 30 22
	ora $B8C1.w		; 0D C1 B8
	and ($21.b,X)		; 21 21
	jsr ($22F0.w,X)		; FC F0 22
	ora ($ED.b),Y		; 11 ED
	sbc ($A8.b),Y		; F1 A8
	trb $50.b		; 14 50
	lda $2402.w,Y		; B9 02 24
	rti		; 40

	txy		; 9B
	ora ($B8.b),Y		; 11 B8
	ora ($3E.b)		; 12 3E
	dec $0202.w,X		; DE 02 02
	jsr $01CE.w		; 20 CE 01
	clv		; B8
	ora ($2E.b,S),Y		; 13 2E
	cmp $2E0302.l		; CF 02 03 2E
	dec $B820.w		; CE 20 B8
	and $0E.b,S		; 23 0E
	cmp $0C0502.l,X		; DF 02 05 0C
	bne   2.b		; D0 02
	clv		; B8
	jsl $11C11C.l		; 22 1C C1 11
	jsl $10D00D.l		; 22 0D D0 10
	ldy $24.b,X		; B4 24
	bmi -35.b		; 30 DD
	cpx #$13.b		; E0 13
	and ($DD.b),Y		; 31 DD
	sbc $3A42A8.l,X		; FF A8 42 3A
	ldx $1133.w,Y		; BE 33 11
	rol $22BD.w,X		; 3E BD 22
	tay		; A8
	bpl  64.b		; 10 40
	stp		; DB
	cop $20.b		; 02 20
	ora ($FC.b,S),Y		; 13 FC
	cmp ($A5.b)		; D2 A5
	inc $4B15.w		; EE 15 4B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	adc ($20.b,S),Y		; 73 20
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ora ($00.b),Y		; 11 00
	inc $1012.w,X		; FE 12 10
	jmp.w [$3FD3]		; DC D3 3F
	mvn $52,$FF		; 54 FF 52
	jmp.w [$25E2]		; DC E2 25
	sbc $4000.w		; ED 00 40
	stz $E2.b,X		; 74 E2
	ora ($A9.b)		; 12 A9
	bit $40.b,X		; 34 40
	beq  34.b		; F0 22
	sbc $DF84.w		; ED 84 DF
	jsl $0C0211.l		; 22 11 02 0C
	inc $1002.w		; EE 02 10
	sty $33.b		; 84 33
	asl $00DD.w		; 0E DD 00
	ora ($33.b),Y		; 11 33
	trb $78D0.w		; 1C D0 78
	sbc ($FF.b),Y		; F1 FF
	and ($6A.b),Y		; 31 6A
	ldy $2F53.w		; AC 53 2F
	ldy $88.b,X		; B4 88
	and $DD.b,S		; 23 DD
	lda $F4FC74.l,X		; BF 74 FC F4
	and $0398AC.l,X		; 3F AC 98 03
	and $0D22FF.l		; 2F FF 22 0D
	dec $0E54.w		; CE 54 0E
	tya		; 98
.INDEX 8
	sep #$12		; E2 12
	ldx $50E3.w,Y		; BE E3 50
	sbc $A82E11.l		; EF 11 2E A8
	dec $0F44.w		; CE 44 0F
	bne  48.b		; D0 30
	inc $31E3.w		; EE E3 31
	tya		; 98
	sbc $D30F.w		; ED 0F D3
	ora $2322.w		; 0D 22 23
	cpx $980E.w		; EC 0E 98
	bpl  15.b		; 10 0F
	ora $10.b,X		; 15 10
	jmp.w [$0E20]		; DC 20 0E
	pei ($98.b)		; D4 98
	adc ($ED.b,X)		; 61 ED
	sbc ($10.b,X)		; E1 10
	dec $5E24.w,X		; DE 24 5E
	dec $02A8.w,X		; DE A8 02
	plx		; FA
	sbc [$41.b],Y		; F7 41
	ldy $1C33.w,X		; BC 33 1C
	ldx #$A4.b		; A2 A4
	pea $E141.w		; F4 41 E1
	and ($EB.b)		; 32 EB
	cmp ($5D.b),Y		; D1 5D
	bcs -76.b		; B0 B4
	and ($1E.b,S),Y		; 33 1E
	sbc $03EF11.l		; EF 11 EF 03
	lsr $B0BF.w		; 4E BF B0
	sbc $2F.b,S		; E3 2F
	cmp $DF2F24.l,X		; DF 24 2F DF
	ora ($0F.b),Y		; 11 0F
	tay		; A8
	and $DD.b		; 25 DD
	cpx $FB.b		; E4 FB
	asl $30.b,X		; 16 30
	ldx $A421.w,Y		; BE 21 A4
	ora $04BE.w,X		; 1D BE 04
	and ($10.b)		; 32 10
	ora $B82DEF.l		; 0F EF 2D B8
	pei ($33.b)		; D4 33
	cpy $2002.w		; CC 02 20
	bcs  51.b		; B0 33
	ora $E1B8.w,X		; 1D B8 E1
	bpl  -1.b		; 10 FF
	tsb $EB.b		; 04 EB
	and ($3F.b,S),Y		; 33 3F
	lda $3DF2B4.l		; AF B4 F2 3D
	cmp $F11E24.l		; CF 24 1E F1
	and $40B8EE.l,X		; 3F EE B8 40
	ldy #$45.b		; A0 45
	asl A		; 0A
	cmp ($42.b)		; D2 42
	cmp #$35.b		; C9 35
	clv		; B8
	eor $23EE.w		; 4D EE 23
	xce		; FB
	pea $A33D.w		; F4 3D A3
	ror $C8.b		; 66 C8
	cmp $3FF2.w,X		; DD F2 3F
	cmp $1E25.w,X		; DD 25 1E
	bne  33.b		; D0 21
	ldy $2C.b,X		; B4 2C
	bne  31.b		; D0 1F
	cpx #$44.b		; E0 44
	ora $B820E0.l		; 0F E0 20 B8
	lda $C10C65.l,X		; BF 65 0C C1
	eor ($CD.b,X)		; 41 CD
	pea $B821.w		; F4 21 B8
	asl $0E10.w		; 0E 10 0E
	sbc ($FE.b)		; F2 FE
	cmp [$52.b]		; C7 52
	dex		; CA
	iny		; C8
	cop $1F.b		; 02 1F
	dec $2F33.w,X		; DE 33 2F
	cmp ($11.b,X)		; C1 11
	sbc $13B8.w,X		; FD B8 13
	and $3004.w		; 2D 04 30
	cpy $2D03.w		; CC 03 2D
	jmp.w [$43C8]		; DC C8 43
	asl $31C0.w,X		; 1E C0 31
	jsr ($41F2.w,X)		; FC F2 41
	inc $F3B8.w,X		; FE B8 F3
	asl $22CE.w,X		; 1E CE 22
	tsb $01.b		; 04 01
	inc $B8FF.w,X		; FE FF B8
	asl $17E0.w,X		; 1E E0 17
	ora ($CD.b),Y		; 11 CD
	ora ($ED.b)		; 12 ED
	cmp ($B8.b),Y		; D1 B8
	lsr $1E.b		; 46 1E
	cmp ($10.b,X)		; C1 10
	stp		; DB
	ora $43.b,S		; 03 43
	brk $B8.b		; 00 B8
	cmp ($1E.b),Y		; D1 1E
	lda $0124F4.l,X		; BF F4 24 01
	beq  -5.b		; F0 FB
	clv		; B8
	dec $3234.w		; CE 34 32
	ora ($1F.b,X)		; 01 1F
	dex		; CA
	cmp ($34.b)		; D2 34
	clv		; B8
	ora ($12.b),Y		; 11 12
	ora $03AB.w,X		; 1D AB 03
	and ($21.b),Y		; 31 21
	bmi -56.b		; 30 C8
	asl $12DE.w		; 0E DE 12
	bpl  17.b		; 10 11
	ora ($ED.b),Y		; 11 ED
	sbc $F131C8.l		; EF C8 31 F1
	ora ($1F.b)		; 12 1F
	cpx $20F2.w		; EC F2 20
	sbc ($B8.b),Y		; F1 B8
	bit $2A.b,X		; 34 2A
	tyx		; BB
	ora $3D.b		; 05 3D
	ora ($44.b)		; 12 44
	phx		; DA
	clv		; B8
	lda $FE53.w,X		; BD 53 FE
	and ($5F.b,S),Y		; 33 5F
	dex		; CA
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	clv		; B8
	cpx #$2D35.w		; E0 35 2D
	tsx		; BA
	ora $20.b,S		; 03 20
	sbc ($45.b),Y		; F1 45
	clv		; B8
	sbc $24AC.w		; ED AC 24
	ora $5213.w,X		; 1D 13 52
	wai		; CB
	cmp $FF41B8.l		; CF B8 41 FF
	and ($5E.b,S),Y		; 33 5E
	ldy $20C4.w,X		; BC C4 20
	sbc ($B8.b,X)		; E1 B8
	and $1D.b,X		; 35 1D
	ldy $3E02.w,X		; BC 02 3E
	sbc ($34.b,S),Y		; F3 34
	xce		; FB
	clv		; B8
	cmp $1D23.w		; CD 23 1D
	ora ($51.b,S),Y		; 13 51
	cpy $32C0.w		; CC C0 32
	clv		; B8
	cpx #$4E14.w		; E0 14 4E
	cpy $21D3.w		; CC D3 21
	cpx #$B833.w		; E0 33 B8
	rol $02CB.w		; 2E CB 02
	bmi -31.b		; 30 E1
	and ($0E.b,S),Y		; 33 0E
	lda $04B8.w,X		; BD B8 04
	ora $0C41F2.l,X		; 1F F2 41 0C
	lda $B81F22.l,X		; BF 22 1F B8
	sbc ($33.b,S),Y		; F3 33
	cpy $43DE.w		; CC DE 43
	inc $4004.w,X		; FE 04 40
	clv		; B8
	wai		; CB
	cmp ($41.b)		; D2 41
	sbc $BD2E24.l		; EF 24 2E BD
	sbc ($A8.b,S),Y		; F3 A8
	rti		; 40

.INDEX 8
	sep #$53		; E2 53
	jsr ($12AC.w,X)		; FC AC 12
	jsl $11B820.l		; 22 20 B8 11
	ora $3F02CE.l		; 0F CE 02 3F
	ora ($31.b,X)		; 01 31
	cpx $DFB8.w		; EC B8 DF
	and ($1E.b)		; 32 1E
	ora $4F.b,S		; 03 4F
	stp		; DB
	sbc ($41.b,X)		; E1 41
	clv		; B8
	sbc $CC3E32.l		; EF 32 3E CC
	sbc ($20.b,S),Y		; F3 20
	brk $22.b		; 00 22
	tay		; A8
	phd		; 0B
	txy		; 9B
	asl $22.b,X		; 16 22
	ora ($2F.b),Y		; 11 2F
	xba		; EB
	lda ($B8.b,X)		; A1 B8
	and ($02.b,X)		; 21 02
	cop $00.b		; 02 00
	cpy OAMADDL.w		; CC 02 21
	beq -72.b		; F0 B8
	and ($FD.b,S),Y		; 33 FD
	ldx $1D15.w,Y		; BE 15 1D
	cop $24.b		; 02 24
	stp		; DB
	clv		; B8
	bne  49.b		; D0 31
	bpl -14.b		; 10 F2
	rol $F00C.w		; 2E 0C F0
	jsl $103EA8.l		; 22 A8 3E 10
	ora $43AC.w,X		; 1D AC 43
	and $B82E42.l		; 2F 42 2E B8
	sbc $12F0.w		; ED F0 12
	ora $DB2D04.l,X		; 1F 04 2D DB
	ora ($A8.b,S),Y		; 13 A8
	rti		; 40

	cmp ($44.b,X)		; C1 44
	inc A		; 1A
	ldy $3033.w,X		; BC 33 30
	sbc ($A8.b,S),Y		; F3 A8
	ora $21CD.w,X		; 1D CD 21
	tsb $12.b		; 04 12
	inc $CD2C.w,X		; FE 2C CD
	clv		; B8
	ora $2F.b,S		; 03 2F
	cop $11.b		; 02 11
	cpy $3100.w		; CC 00 31
	ora $1E21B8.l		; 0F B8 21 1E
	xce		; FB
	ora ($41.b),Y		; 11 41
	beq  -1.b		; F0 FF
	asl $1EA8.w,X		; 1E A8 1E
	inc $32.b,X		; F6 32
	cpx $AC3F.w		; EC 3F AC
	asl $6D.b		; 06 6D
	clv		; B8
	ora ($21.b,X)		; 01 21
	cpy $32F1.w		; CC F1 32
	inc $0122.w,X		; FE 22 01
	clv		; B8
	cpy $2212.w		; CC 12 22
	sbc ($E0.b,X)		; E1 E0
	brk $FF.b		; 00 FF
	jsl $C201A8.l		; 22 A8 01 C2
	tsb $47BF.w		; 0C BF 47
	ora $2D13.w		; 0D 13 2D
	clv		; B8
	dec $3F21.w		; CE 21 3F
.ACCU 8
	sep #$20		; E2 20
	inc $21E1.w		; EE E1 21
	ldy #$CC.b		; A0 CC
.ACCU 8
.INDEX 8
	sep #$34		; E2 34
	and ($1F.b,X)		; 21 1F
	inc $0936.w		; EE 36 09
	tay		; A8
	eor $2C.b		; 45 2C
	ora $D3DC30.l,X		; 1F 30 DC D3
	and ($E1.b)		; 32 E1
	clv		; B8
	ora ($2D.b),Y		; 11 2D
	cmp $1233.w		; CD 33 12
	inc $E100.w,X		; FE 00 E1
	ldy $CE.b,X		; B4 CE
	sbc ($53.b,S),Y		; F3 53
	ora $D2CA00.l,X		; 1F 00 CA D2
	eor ($B8.b,S),Y		; 53 B8
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	lda $1024.w,X		; BD 24 10
	bne  65.b		; D0 41
	cmp $22B8.w		; CD B8 22
	tsa		; 3B
	cmp ($52.b,S),Y		; D3 52
	plb		; AB
	bit $4C.b		; 24 4C
	ldx #$37B4.w		; A2 B4 37
	and $4EC1.w,X		; 3D C1 4E
	plb		; AB
	and [$3C.b]		; 27 3C
	sbc $B4.b		; E5 B4
	eor $FB339C.l,X		; 5F 9C 33 FB
	sbc $6F.b		; E5 6F
	bcs  36.b		; B0 24
	bcs  47.b		; B0 2F
	beq  30.b		; F0 1E
	cmp $F111.w		; CD 11 F1
	lsr $2B.b		; 46 2B
	ldy $E5.b,X		; B4 E5
	rts		; 60

	lda $0D23.w		; AD 23 0D
	ora $3F.b,S		; 03 3F
	bne -76.b		; D0 B4
	and ($BA.b)		; 32 BA
	sbc $4E.b,X		; F5 4E
	sbc $42.b,S		; E3 42
	cpy $B401.w		; CC 01 B4
	tsb $40F3.w		; 0C F3 40
.ACCU 8
	sep #$2F		; E2 2F
	dec $EC31.w,X		; DE 31 EC
	ldy $F4.b,X		; B4 F4
	and $AC42E2.l,X		; 3F E2 42 AC
	sbc ($2E.b,S),Y		; F3 2E
	sbc ($A4.b,X)		; E1 A4
	mvn $11,$E0		; 54 E0 11
	cmp #$D4.b		; C9 D4
	adc $EC.b,X		; 75 EC
	sbc ($B8.b)		; F2 B8
	sbc $5302.w,X		; FD 02 53
	ldy $1FE2.w,X		; BC E2 1F
	ora ($3F.b),Y		; 11 3F
	ldy $F2.b,X		; B4 F2
	bmi -20.b		; 30 EC
	ora ($0E.b,X)		; 01 0E
	sep #$40		; E2 40
	cmp ($B4.b,X)		; C1 B4
	and $FE.b,S		; 23 FE
	ora ($EB.b),Y		; 11 EB
	cmp ($51.b)		; D2 51
	sbc ($43.b),Y		; F1 43
	bcs  60.b		; B0 3C
	ldx $CC20.w		; AE 20 CC
	ora $31.b,S		; 03 31
	trb $2E.b		; 14 2E
	clv		; B8
	sbc $4F.b,X		; F5 4F
	cmp $E3EE02.l,X		; DF 02 EE E3
	and $0A.b,X		; 35 0A
	clv		; B8
	dec $0230.w,X		; DE 30 02
	cop $FF.b		; 02 FF
	eor $31CF.w		; 4D CF 31
	ldy $CD.b		; A4 CD
	sbc [$60.b],Y		; F7 60
	sty $53.b,X		; 94 53
	wai		; CB
	sbc ($EA.b,S),Y		; F3 EA
	ldy $D4.b		; A4 D4
	rts		; 60

	ora $41.b,S		; 03 41
	nop		; EA
	ldy $3315.w		; AC 15 33
	ldy $11.b,X		; B4 11
	ora $34CE.w,X		; 1D CE 34
	inc $1DF3.w,X		; FE F3 1D
	sbc ($B4.b,X)		; E1 B4
	adc ($AB.b,X)		; 61 AB
	ora $0E.b,X		; 15 0E
	trb $3F.b		; 14 3F
	cmp $B8EF.w		; CD EF B8
	bpl  17.b		; 10 11
	eor $46AC.w		; 4D AC 46
	inc $40E2.w		; EE E2 40
	clv		; B8
	sbc $1FE4.w,X		; FD E4 1F
	bcs  51.b		; B0 33
	ora $EC24.w		; 0D 24 EC
	cpy #$F1FD.w		; C0 FD F1
	asl $24DF.w,X		; 1E DF 24
	bpl   2.b		; 10 02
	and $5024B8.l,X		; 3F B8 24 50
	cmp $F1.b,S		; C3 F1
	lda $011210.l,X		; BF 10 12 01
	ldy $26.b,X		; B4 26
	rol $21AC.w		; 2E AC 21
	sbc $1E24F2.l,X		; FF F2 24 1E
	clv		; B8
	sbc ($2E.b,S),Y		; F3 2E
	cpy #$D045.w		; C0 45 D0
	sbc $B4420A.l,X		; FF 0A 42 B4
	jsl $300FF1.l		; 22 F1 0F 30
	sbc $BD0B06.l		; EF 06 0B BD
	ldy $42.b,X		; B4 42
	and ($02.b,S),Y		; 33 02
	cmp $14EEFD.l		; CF FD EE 14
	adc $C4.b		; 65 C4
	sbc $E10DE1.l		; EF E1 0D E1
	and ($10.b)		; 32 10
	beq  -1.b		; F0 FF
	clv		; B8
	sbc ($2F.b)		; F2 2F
	ora ($1F.b),Y		; 11 1F
	cmp $2F23.w		; CD 23 2F
	cmp ($B8.b),Y		; D1 B8
	ora ($3F.b,X)		; 01 3F
	sbc $4F00.w,X		; FD 00 4F
	lda ($14.b),Y		; B1 14
	bpl -72.b		; 10 B8
	tsb $40FE.w		; 0C FE 40
	cmp $14.b,S		; C3 14
	sbc $FD3E.w		; ED 3E FD
	ldy $D4.b,X		; B4 D4
	ora $2241DE.l,X		; 1F DE 41 22
	inc $4FD0.w,X		; FE D0 4F
	clv		; B8
	cmp ($51.b)		; D2 51
	sta ($6D.b),Y		; 91 6D
	plx		; FA
	ror $BC.b		; 66 BC
	pei ($B4.b)		; D4 B4
	eor ($42.b,X)		; 41 42
	sbc ($D2.b),Y		; F1 D2
	xba		; EB
	inc $5343.w		; EE 43 53
	clv		; B8
	dec $EE21.w		; CE 21 EE
	and ($4E.b,S),Y		; 33 4E
	inc $EFD3.w		; EE D3 EF
	cpy $E0.b		; C4 E0
	and ($0F.b)		; 32 0F
	and ($EC.b,X)		; 21 EC
	sbc $31.b,S		; E3 31
	sbc $002FB4.l		; EF B4 2F 00
	ora $E4.b,S		; 03 E4
	phd		; 0B
	cmp $D163.w		; CD 63 D1
	cpy #$3E24.w		; C0 24 3E
	cmp $E1ED21.l,X		; DF 21 ED E1
	eor ($0F.b,X)		; 41 0F
	cpy $32.b		; C4 32
	cmp $31E2.w		; CD E2 31
	bpl  31.b		; 10 1F
	inc $C8E0.w,X		; FE E0 C8
	ora ($02.b,X)		; 01 02
	sbc $30E1.w,X		; FD E1 30
.ACCU 16
	rep #$23		; C2 23
	cpy #$0FB8.w		; C0 B8 0F
	ora $0220.w,X		; 1D 20 02
	ora ($F0.b,X)		; 01 F0
	ora $B4EF.w,X		; 1D EF B4
	ora $0F.b,S		; 03 0F
	sbc ($13.b),Y		; F1 13
	rol $41DE.w		; 2E DE 41
	jmp.w [$D0C0]		; DC C0 D0
	bpl   2.b		; 10 02
	.db $42, $DC		; 42 DC
	ora $1D.b,S		; 03 1D
	bne -76.b		; D0 B4
	and ($D0.b,X)		; 21 D0
	rol $0D3F.w		; 2E 3F 0D
	lda ($06.b),Y		; B1 06
	adc $FBB4.w,X		; 7D B4 FB
	and ($CD.b),Y		; 31 CD
	cmp ($24.b,S),Y		; D3 24
	adc $B404DA.l		; 6F DA 04 B4
	cmp $42E3.w,X		; DD E3 42
	and $F2FE.w,X		; 3D FE F2
	dec $B013.w,X		; DE 13 B0
	bmi  20.b		; 30 14
	jsr $40C0.w		; 20 C0 40
	tyx		; BB
	and $E0.b,S		; 23 E0
	cpy $11.b		; C4 11
	sbc $FC33.w		; ED 33 FC
	cmp ($23.b,S),Y		; D3 23
	inc $B410.w,X		; FE 10 B4
	tsa		; 3B
	lda $1D4604.l		; AF 04 46 1D
	lda $B4D10E.l,X		; BF 0E D1 B4
	and $52.b,S		; 23 52
	nop		; EA
	cpy $2E.b		; C4 2E
	bne  49.b		; D0 31
	and ($B0.b),Y		; 31 B0
	jsr $1DE1.w		; 20 E1 1D
	tyx		; BB
	bit $00.b		; 24 00
	bit $0C.b		; 24 0C
	ldy $33.b,X		; B4 33
	xce		; FB
	sbc $21.b		; E5 21
	ora $13E02C.l		; 0F 2C E0 13
	bcs  -3.b		; B0 FD
	pea $D15F.w		; F4 5F D1
	bmi -51.b		; 30 CD
	asl $C404.w		; 0E 04 C4
	brk $D1.b		; 00 D1
	rol $23DE.w		; 2E DE 23
	rti		; 40

	inc $B410.w		; EE 10 B4
	ldy $4613.w		; AC 13 46
	bmi -86.b		; 30 AA
	sbc ($FE.b),Y		; F1 FE
	asl $B4.b,X		; 16 B4
	eor $EB.b,S		; 43 EB
	cpy #$F110.w		; C0 10 F1
	bit $CD.b,X		; 34 CD
	and ($C8.b,X)		; 21 C8
	asl $DE22.w		; 0E 22 DE
	ora ($FE.b,S),Y		; 13 FE
	and ($0D.b),Y		; 31 0D
	cpy $C4.b		; C4 C4
	brk $FE.b		; 00 FE
	bit $4F.b		; 24 4F
	dec $E00F.w,X		; DE 0F E0
	and ($B8.b,X)		; 21 B8
	ora $AD.b		; 05 AD
	ldx $6D.b		; A6 6D
	bne  98.b		; D0 62
	ldx $B0F1.w,Y		; BE F1 B0
	sbc $00F0.w,X		; FD F0 00
	cop $DC.b		; 02 DC
	mvp $E5,$3D		; 44 3D E5
	cpy $0D.b		; C4 0D
	cpy #$3F32.w		; C0 32 3F
	ora $01EF0E.l		; 0F 0E EF 01
	clv		; B8
	and $9D.b		; 25 9D
	lda $10.b		; A5 10
	ora $10.b,S		; 03 10
	ora $C1B4AF.l,X		; 1F AF B4 C1
	ora $B06F02.l,X		; 1F 02 6F B0
	bmi -35.b		; 30 DD
	mvn $2D,$B0		; 54 B0 2D
	cmp $3F23FF.l		; CF FF 23 3F
	sbc ($1E.b),Y		; F1 1E
	bne -76.b		; D0 B4
	ora $AE3EF3.l,X		; 1F F3 3E AE
	ora ($23.b),Y		; 11 23
	and ($BE.b)		; 32 BE
	cpy #$ECFF.w		; C0 FF EC
	cmp $003044.l,X		; DF 44 30 00
	sbc $B8DF.w		; ED DF B8
	cpx #$DC4B.w		; E0 4B DC
	.db $62, $EF, $26		; 62 EF 26
	ldy $B405.w,X		; BC 05 B4
	ora $5ED4.w		; 0D D4 5E
	lda $44D33F.l,X		; BF 3F D3 44
	dec $2EB8.w,X		; DE B8 2E
	sbc ($41.b,X)		; E1 41
	rol $E1FC.w,X		; 3E FC E1
	sbc ($11.b,S),Y		; F3 11
	clv		; B8
	tsb $0C.b		; 04 0C
	lda $1D71.w		; AD 71 1D
	.db $42, $DE		; 42 DE
	brk $B0.b		; 00 B0
	tsb $10D0.w		; 0C D0 10
	ora $2D.b,S		; 03 2D
	cmp ($33.b,X)		; C1 33
	cmp $BB50B4.l,X		; DF B4 50 BB
	ora ($24.b),Y		; 11 24
	jsl $DFFEDE.l		; 22 DE FE DF
	clv		; B8
	jsr $CC5E.w		; 20 5E CC
	ora ($F1.b)		; 12 F1
	ora ($FD.b,S),Y		; 13 FD
	and ($B0.b),Y		; 31 B0
	rti		; 40

	dec $DFFE.w		; CE FE DF
	mvp $12,$0D		; 44 0D 12
	cpx $F6B0.w		; EC B0 F6
	bvc -51.b		; 50 CD
	jsr ($65D2.w,X)		; FC D2 65
	bpl  -3.b		; 10 FD
	ldy $E0.b,X		; B4 E0
	bit $4F.b		; 24 4F
	asl $F1DD.w		; 0E DD F1
	cop $44.b		; 02 44
	ldy $0C.b,X		; B4 0C
	sbc $040E.w		; ED 0E 04
	and ($11.b,X)		; 21 11
	dec $B0E0.w,X		; DE E0 B0
	sbc $EF42F1.l,X		; FF F1 42 EF
	ora ($ED.b,X)		; 01 ED
	and $4E.b		; 25 4E
	ldy $F0.b,X		; B4 F0
	beq  36.b		; F0 24
	rol $ED00.w		; 2E 00 ED
.INDEX 8
	sep #$1F		; E2 1F
	clv		; B8
	bit $DC.b		; 24 DC
	cpx $1E.b		; E4 1E
	sbc ($4E.b)		; F2 4E
	dec $B051.w,X		; DE 51 B0
	asl $43C1.w		; 0E C1 43
	asl $CC0E.w		; 0E 0E CC
	ora $21.b,S		; 03 21
	ldy $22.b,X		; B4 22
	wai		; CB
	sbc ($1E.b)		; F2 1E
	and $2E.b,X		; 35 2E
	bne -18.b		; D0 EE
	ldy $E1.b,X		; B4 E1
	eor ($F0.b,X)		; 41 F0
	rti		; 40

	cmp $FE13.w		; CD 13 FE
	sbc ($B4.b,S),Y		; F3 B4
	asl $3FF2.w,X		; 1E F2 3F
	bne  49.b		; D0 31
	lda $F022.w,X		; BD 22 F0
	ldy $56.b		; A4 56
	inc A		; 1A
	cpx #$EB.b		; E0 EB
	cpx $52.b		; E4 52
	cmp ($50.b),Y		; D1 50
	ldy $BD.b		; A4 BD
	ora ($DE.b)		; 12 DE
	trb $0C.b		; 14 0C
	bit $3C.b		; 24 3C
	cmp ($A8.b,S),Y		; D3 A8
	jsr ($5DB6.w,X)		; FC B6 5D
	cmp ($4F.b)		; D2 4F
	ldx $DF41.w,Y		; BE 41 DF
	bcc -111.b		; 90 91
	.db $42, $F1		; 42 F1
	rti		; 40

	cmp $EB11.w		; CD 11 EB
	ora $95.b		; 05 95
	jmp.w [$4CF5]		; DC F5 4C
	cpy #$40.b		; C0 40
	dec $30E3.w		; CE E3 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	cpx $11.b		; E4 11
	cop $D1.b		; 02 D1
	jsr $D1F0.w		; 20 F0 D1
	ora ($78.b,X)		; 01 78
	sbc ($B3.b,S),Y		; F3 B3
	sbc $F2.b,S		; E3 F2
.ACCU 8
.INDEX 8
	sep #$B3		; E2 B3
	sbc $EF780E.l,X		; FF 0E 78 EF
	.db $42, $23		; 42 23
	lda ($F4.b),Y		; B1 F4
	ora ($D0.b,X)		; 01 D0
	lda ($74.b),Y		; B1 74
	cpx #$10.b		; E0 10
	sbc $30CC.w		; ED CC 30
	jsr $BDCC.w		; 20 CC BD
	dey		; 88
	asl $F0FF.w,X		; 1E FF F0
	bvc  46.b		; 50 2E
	sbc ($11.b,X)		; E1 11
	ora ($78.b),Y		; 11 78
	lda $42E0.w		; AD E0 42
	jsr $F4A1.w		; 20 A1 F4
	adc $88FF.w		; 6D FF 88
	cmp ($2F.b,X)		; C1 2F
	trb $411D.w		; 1C 1D 41
	and $78F20F.l,X		; 3F 0F F2 78
	and ($FA.b)		; 32 FA
	sbc $5032.w		; ED 32 50
	cpx $601E.w		; EC 1E 60
	dey		; 88
	beq -17.b		; F0 EF
	sbc ($0F.b),Y		; F1 0F
	ora $01.b,S		; 03 01
	beq  32.b		; F0 20
	sei		; 78
	bmi  -5.b		; 30 FB
	cpx #$06.b		; E0 06
	ora ($B0.b,X)		; 01 B0
	sbc ($2E.b)		; F2 2E
	dey		; 88
	ora $FF01EF.l		; 0F EF 01 FF
	eor ($2E.b,X)		; 41 2E
	brk $22.b		; 00 22
	dey		; 88
	ora ($FD.b,X)		; 01 FD
	dec $62F4.w		; CE F4 62
	sbc $60BF.w,X		; FD BF 60
	tay		; A8
	ora $34EE.w		; 0D EE 34
	.db $42, $DD		; 42 DD
	brk $31.b		; 00 31
	jmp.w [$BFA8]		; DC A8 BF
	ror $30.b		; 66 30
	ldy $2010.w,X		; BC 10 20
	lda $B853.w		; AD 53 B8
	and ($EE.b)		; 32 EE
	asl $D011.w,X		; 1E 11 D0
	sbc $A81043.l		; EF 43 10 A8
	ldy $3DF1.w		; AC F1 3D
	ldy $45.b		; A4 45
	lsr $EFDF.w,X		; 5E DF EF
	clv		; B8
	ora $3213EF.l		; 0F EF 13 32
	sbc $20EF.w		; ED EF 20
	sbc $5F40B8.l		; EF B8 40 5F
	ora $0E0F.w		; 0D 0F 0E
	ora $5023.w		; 0D 23 50
	clv		; B8
	xce		; FB
	sbc $31D031.l		; EF 31 D0 31
	ror $E0EE.w		; 6E EE E0
	clv		; B8
	asl $251F.w		; 0E 1F 25
	and $3EF3D9.l		; 2F D9 F3 3E
	ora ($B8.b)		; 12 B8
	ora $E0.b,X		; 15 E0
	cpy $F300.w		; CC 00 F3
	ora $42.b,S		; 03 42
	wai		; CB
	clv		; B8
	ldy #$60.b		; A0 60
	cpx $14.b		; E4 14
	and $B3CC.w,X		; 3D CC B3
	cop $B8.b		; 02 B8
	and ($43.b)		; 32 43
	txy		; 9B
	ldy #$70.b		; A0 70
	trb $F5.b		; 14 F5
	tsb $73C0.w		; 0C C0 73
	xba		; EB
	ldy $67F2.w		; AC F2 67
	eor $C8BCBA.l		; 4F BA BC C8
	and $E2EE2E.l		; 2F 2E EE E2
	bmi  32.b		; 30 20
	asl $C8CE.w,X		; 1E CE C8
	ora ($20.b)		; 12 20
	jsr $ED1E.w		; 20 1E ED
	sbc ($31.b)		; F2 31
	bpl -56.b		; 10 C8
	brk $BE.b		; 00 BE
	tsb $2F.b		; 04 2F
	ora ($1F.b),Y		; 11 1F
	dec $C8F2.w		; CE F2 C8
	eor ($F1.b,X)		; 41 F1
	ora $3E23DC.l		; 0F DC 23 3E
	ora ($1F.b),Y		; 11 1F
	iny		; C8
	ldx $5003.w,Y		; BE 03 50
	cmp ($01.b),Y		; D1 01
	lda $2F33.w,X		; BD 33 2F
	cpy $12.b		; C4 12
	and ($CB.b)		; 32 CB
	cmp ($43.b,X)		; C1 43
	ora ($10.b,X)		; 01 10
	jmp.w [$23C8]		; DC C8 23
	asl $1B11.w,X		; 1E 11 1B
	cmp ($33.b),Y		; D1 33
	and $C4E1.w		; 2D E1 C4
	ora $1012CD.l,X		; 1F CD 12 10
	and ($1B.b)		; 32 1B
	dec $C034.w		; CE 34 C0
	and ($22.b)		; 32 22
	ora $F2FFCD.l,X		; 1F CD FF F2
	eor $0C.b		; 45 0C
	iny		; C8
	and ($1F.b,S),Y		; 33 1F
	rep #$00		; C2 00
	cpx #$21.b		; E0 21
	beq  32.b		; F0 20
	cpy $0D.b		; C4 0D
	lda ($24.b),Y		; B1 24
	asl $0EF0.w,X		; 1E F0 0E
	sbc ($1F.b),Y		; F1 1F
	iny		; C8
	jsl $6FB4EE.l		; 22 EE B4 6F
	phd		; 0B
	ora $D2.b,S		; 03 D2
	sbc $C4.b,S		; E3 C4
	bmi -14.b		; 30 F2
	and $3015CC.l		; 2F CC 15 30
	sbc $F0C40E.l		; EF 0E C4 F0
	ora ($0E.b)		; 12 0E
	and ($EC.b)		; 32 EC
	cmp ($52.b)		; D2 52
	inc $F1C4.w,X		; FE C4 F1
	sbc $330001.l		; EF 01 00 33
	jsr ($43B1.w,X)		; FC B1 43
	cpy $0F.b		; C4 0F
	brk $EE.b		; 00 EE
	ora ($0F.b,X)		; 01 0F
	eor $FC.b,S		; 43 FC
	lda ($B0.b)		; B2 B0
	rol $60.b		; 26 60
	sbc ($FE.b),Y		; F1 FE
	sbc $4E27DB.l,X		; FF DB 27 4E
	cpy #$CF.b		; C0 CF
	jsl $EF0010.l		; 22 10 00 EF
	beq -17.b		; F0 EF
	and ($C8.b,S),Y		; 33 C8
	bne  37.b		; D0 25
	cmp $121EF0.l,X		; DF F0 1E 12
	inc $C034.w,X		; FE 34 C0
	eor ($CB.b,X)		; 41 CB
	ora $32.b,S		; 03 32
	brk $ED.b		; 00 ED
	cpx #$E0.b		; E0 E0
	iny		; C8
	tsa		; 3B
	dec $FD46.w,X		; DE 46 FD
	cpx #$1E.b		; E0 1E
	tsb $1C.b		; 04 1C
	iny		; C8
	ora $BE.b,X		; 15 BE
	pei ($50.b)		; D4 50
	dec $0F1F.w,X		; DE 1F 0F
	rti		; 40

	cpy $0F.b		; C4 0F
	rti		; 40

	cpx $41E3.w		; EC E3 41
	inc $01FF.w,X		; FE FF 01
	cpy #$10.b		; C0 10
	sbc ($30.b,X)		; E1 30
	cpx $4104.w		; EC 04 41
	inc $C4EF.w		; EE EF C4
	ora ($E0.b),Y		; 11 E0
	eor $40F4ED.l		; 4F ED F4 40
	sbc $C4FF.w		; ED FF C4
	ora ($00.b)		; 12 00
	and ($DC.b),Y		; 31 DC
	sbc $42.b,S		; E3 42
	asl $C4DD.w		; 0E DD C4
	cop $20.b		; 02 20
	and ($EB.b),Y		; 31 EB
	cmp ($52.b,S),Y		; D3 52
	asl $C4EC.w		; 0E EC C4
	cpx $30.b		; E4 30
	bmi -21.b		; 30 EB
	cpy $43.b		; C4 43
	ora $E3C4EB.l		; 0F EB C4 E3
	and ($30.b),Y		; 31 30
	cpx $44B3.w		; EC B3 44
	asl $C4EC.w,X		; 1E EC C4
	cmp ($41.b)		; D2 41
	bmi  -5.b		; 30 FB
	cmp ($53.b,X)		; C1 53
	and $C1C4EC.l		; 2F EC C4 C1
	.db $42, $30		; 42 30
	jsr ($44B1.w,X)		; FC B1 44
	and $C1C4FB.l		; 2F FB C4 C1
	.db $42, $30		; 42 30
	jsr ($34C0.w,X)		; FC C0 34
	jsr $C4FC.w		; 20 FC C4
	lda ($33.b),Y		; B1 33
	bmi  12.b		; 30 0C
	bcs  51.b		; B0 33
	bmi  12.b		; 30 0C
	iny		; C8
	pea $1D4F.w		; F4 4F 1D
	ora $30E4.w		; 0D E4 30
	ora $C80D.w,X		; 1D 0D C8
	cpx $30.b		; E4 30
	ora $F30D.w,X		; 1D 0D F3
	and ($0F.b,X)		; 21 0F
	phd		; 0B
	iny		; C8
	cop $32.b		; 02 32
	tsb $F11E.w		; 0C 1E F1
	jsl $B80B0F.l		; 22 0F 0B B8
	ora ($56.b,S),Y		; 13 56
	cmp $0FFD.w		; CD FD 0F
	mvn $EA,$FF		; 54 FF EA
	clv		; B8
	cop $56.b		; 02 56
	lda $F00E.w,X		; BD 0E F0
	mvp $CD,$E0		; 44 E0 CD
	ldy $BD.b,X		; B4 BD
	adc $10.b		; 65 10
	cpx #$CD.b		; E0 CD
	bit $30.b		; 24 30
	sbc $E6B8.w		; ED B8 E6
	eor $3DEE.w		; 4D EE 3D
	cpx $21.b		; E4 21
	cpx $B02E.w		; EC 2E B0
	bcs  35.b		; B0 23
	ora ($2E.b),Y		; 11 2E
	cmp $DC0E13.l,X		; DF 13 0E DC
	bcs  18.b		; B0 12
	and ($01.b,X)		; 21 01
	inc OBJSEL.w		; EE 01 21
	sbc $B4B1.w		; ED B1 B4
	and $F22DFF.l		; 2F FF 2D F2
	ora ($FE.b),Y		; 11 FE
	sbc $B444.w,X		; FD 44 B4
	asl $EFE2.w		; 0E E2 EF
	jsl $D4D01E.l		; 22 1E D0 D4
	rti		; 40

	clv		; B8
	sbc $00F43E.l,X		; FF 3E F4 00
	cpy #$1E.b		; C0 1E
	adc ($C0.b,X)		; 61 C0
	ldy $E1.b,X		; B4 E1
	sbc $2F12.w,X		; FD 12 2F
	sbc $0E40D3.l		; EF D3 40 0E
	ldy $4C.b		; A4 4C
	lda ($23.b)		; B2 23
	inc $66EB.w		; EE EB 66
	beq   4.b		; F0 04
	bcs  14.b		; B0 0E
	sbc $C1FE0F.l,X		; FF 0F FE C1
	and ($01.b,X)		; 21 01
	bmi -96.b		; 30 A0
	cmp $CBCD00.l,X		; DF 00 CD CB
	bit $30.b,X		; 34 30
	ora $0F.b,X		; 15 0F
	bcs   0.b		; B0 00
	asl $D3EC.w		; 0E EC D3
	jsl $F02F01.l		; 22 01 2F F0
	bcs  31.b		; B0 1F
	inc $22CD.w		; EE CD 22
	jsr $FF12.w		; 20 12 FF
	ora ($B0.b,X)		; 01 B0
	asl $D2EC.w		; 0E EC D2
	jsl $003F12.l		; 22 12 3F 00
	bpl -76.b		; 10 B4
	cpx #$E1.b		; E0 E1
	rti		; 40

	ora $11C021.l		; 0F 21 C0 11
	sbc $D1ECB0.l		; EF B0 EC D1
	and ($02.b,X)		; 21 02
	bmi   0.b		; 30 00
	bpl -17.b		; 10 EF
	bcs -52.b		; B0 CC
	ora ($10.b)		; 12 10
	and $00.b,S		; 23 00
	ora ($0E.b,X)		; 01 0E
	jsr ($04B4.w,X)		; FC B4 04
	bpl -15.b		; 10 F1
	and $1000.w		; 2D 00 10
	sbc $42B4EF.l		; EF EF B4 42
	ora $11EE12.l		; 0F 12 EE 11
	asl $E3FF.w		; 0E FF E3
	ldy $30.b,X		; B4 30
	sbc $11D14F.l,X		; FF 4F D1 11
	cmp $B4150D.l,X		; DF 0D 15 B4
	brk $E3.b		; 00 E3
	ora $1F01.w,X		; 1D 01 1F
	bne -48.b		; D0 D0
	eor ($B4.b),Y		; 51 B4
	ora $02D012.l		; 0F 12 D0 02
	ora $E4FE.w		; 0D FE E4
	bmi -76.b		; 30 B4
	beq  77.b		; F0 4D
	sbc ($11.b,X)		; E1 11
	cmp $0025FD.l,X		; DF FD 25 00
	bcs   4.b		; B0 04
	bmi   0.b		; 30 00
	jsr $BBEF.w		; 20 EF BB
	ora ($20.b),Y		; 11 20
	ldy $23.b,X		; B4 23
	cpy #$F2.b		; C0 F2
	ora $E40E.w		; 0D 0E E4
	jsr $B40F.w		; 20 0F B4
	eor $01F0.w,X		; 5D F0 01
	bne  -3.b		; D0 FD
	and ($00.b,S),Y		; 33 00
	pea $0DB4.w		; F4 B4 0D
	brk $2D.b		; 00 2D
	beq -63.b		; F0 C1
	bvc  14.b		; 50 0E
	.db $42, $B4		; 42 B4
	cmp ($F2.b,X)		; C1 F2
	sbc $F50D.w,X		; FD 0D F5
	bpl -15.b		; 10 F1
	eor $F1B4.w		; 4D B4 F1
	ora ($C0.b,X)		; 01 C0
	sbc $0043.w		; ED 43 00
	sbc $FE.b		; E5 FE
	ldy $10.b,X		; B4 10
	and $C1E0.w		; 2D E0 C1
	rti		; 40

	asl $E032.w,X		; 1E 32 E0
	ldy $01.b,X		; B4 01
	sbc $F40D.w,X		; FD 0D F4
	bpl  15.b		; 10 0F
	eor $02B4F0.l,X		; 5F F0 B4 02
	dec $23FD.w,X		; DE FD 23
	brk $F3.b		; 00 F3
	and $B410.w		; 2D 10 B4
	bpl -63.b		; 10 C1
	dec $0F32.w,X		; DE 32 0F
	sbc $0F.b,X		; F5 0F
	brk $A4.b		; 00 A4
	tad		; 5B
	ldx $7EA2.w,Y		; BE A2 7E
	ora $C247.w,X		; 1D 47 C2
	ora ($B4.b),Y		; 11 B4
	ora $E2FE.w		; 0D FE E2
	and $F1320F.l		; 2F 0F 32 F1
	cop $B4.b		; 02 B4
	sbc $F3FD.w,X		; FD FD F3
	ora $02400F.l,X		; 1F 0F 40 02
	cop $A4.b		; 02 A4
	plb		; AB
	xce		; FB
	tsb $F0.b		; 04 F0
.ACCU 8
	sep #$6F		; E2 6F
	and ($22.b),Y		; 31 22
	ldy $AC.b		; A4 AC
	cmp $EF14.w,X		; DD 14 EF
.ACCU 8
.INDEX 8
	sep #$7E		; E2 7E
	jsl $9DA433.l		; 22 33 A4 9D
	cmp $EF22.w,X		; DD 22 EF
	sbc ($6F.b,X)		; E1 6F
	and $24.b,S		; 23 24
	ldy $BA.b		; A4 BA
	inc $0D02.w,X		; FE 02 0D
	inc $0461.w,X		; FE 61 04
	ora $B4.b,X		; 15 B4
	jsr ($010F.w,X)		; FC 0F 01
	asl $210F.w		; 0E 0F 21
	cop $03.b		; 02 03
	ldy $FC.b,X		; B4 FC
	brk $F2.b		; 00 F2
	sbc $F221FF.l,X		; FF FF 21 F2
	ora ($A4.b)		; 12 A4
	plx		; FA
	sbc $EEFD03.l,X		; FF 03 FD EE
	.db $42, $03		; 42 03
	and $B8.b		; 25 B8
	cmp $133F.w,X		; DD 3F 13
	cmp $014D10.l,X		; DF 10 4D 01
	brk $B4.b		; 00 B4
	jmp.w [$04ED]		; DC ED 04
	brk $F2.b		; 00 F2
	eor $B41101.l,X		; 5F 01 11 B4
	ldy $35CD.w,X		; BC CD 35
	ora ($F5.b),Y		; 11 F5
	rol $1EFF.w,X		; 3E FF 1E
	iny		; C8
	sbc $0F5B12.l,X		; FF 12 5B 0F
	and ($C1.b,X)		; 21 C1
	cop $FD.b		; 02 FD
	iny		; C8
	bpl  23.b		; 10 17
	ldx $2C10.w,Y		; BE 10 2C
	cop $01.b		; 02 01
	bne -64.b		; D0 C0
	tyx		; BB
	ora ($22.b,S),Y		; 13 22
	ora ($2F.b,S),Y		; 13 2F
	beq  16.b		; F0 10
	cpx $F4C4.w		; EC C4 F4
	bmi  -1.b		; 30 FF
	and $0D11EF.l,X		; 3F EF 11 0D
	sbc $FF35C4.l		; EF C4 35 FF
	cop $0D.b		; 02 0D
	sbc ($10.b),Y		; F1 10
	inc $C0E3.w		; EE E3 C0
	and ($21.b)		; 32 21
	and $0E.b,S		; 23 0E
	sbc ($1F.b),Y		; F1 1F
	jmp.w [$C0D3]		; DC D3 C0
	jsl $FF3011.l		; 22 11 30 FF
	cop $0E.b		; 02 0E
	cpy $C023.w		; CC 23 C0
	and ($13.b,X)		; 21 13
	ora $EC21E0.l,X		; 1F E0 21 EC
	rep #$42		; C2 42
	cpy #$00.b		; C0 00
	and ($EE.b),Y		; 31 EE
	ora $1F.b,S		; 03 1F
	wai		; CB
	bit $20.b		; 24 20
	cpy $F3.b		; C4 F3
	inc $30F1.w,X		; FE F1 30
	cmp $4FE6.w,X		; DD E6 4F
	inc $30C4.w		; EE C4 30
	cmp $DD1D04.l,X		; DF 04 1D DD
	lsr $FF.b		; 46 FF
	cmp ($C0.b)		; D2 C0
	jsr $13EE.w		; 20 EE 13
	ora $43AD.w		; 0D AD 43
	and $0EC003.l		; 2F 03 C0 0E
	bne  49.b		; D0 31
	nop		; EA
	cpy $42.b		; C4 42
	sbc $FDC021.l,X		; FF 21 C0 FD
	ora $2E.b,S		; 03 2E
	ldy $3F34.w		; AC 34 3F
	sbc ($2F.b,S),Y		; F3 2F
	cpy #$DF.b		; C0 DF
	and ($EA.b)		; 32 EA
	lda ($53.b,S),Y		; B3 53
	inc $FD22.w,X		; FE 22 FD
	cpy #$F3.b		; C0 F3
	and $3F35BB.l		; 2F BB 35 3F
.ACCU 8
	sep #$2F		; E2 2F
	dec $33C0.w,X		; DE C0 33
	xce		; FB
	lda ($53.b)		; B2 53
	inc $0D22.w,X		; FE 22 0D
	sep #$C0		; E2 C0
	and $3025BB.l,X		; 3F BB 25 30
.ACCU 8
	sep #$20		; E2 20
	dec $C023.w,X		; DE 23 C0
	phd		; 0B
	lda ($53.b)		; B2 53
	sbc $1D13.w,X		; FD 13 1D
	cmp ($3F.b),Y		; D1 3F
	cpy #$BD.b		; C0 BD
	rol $2D.b,X		; 36 2D
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	dec $EB22.w,X		; DE 22 EB
	cpy $45.b		; C4 45
	trb $31C2.w		; 1C C2 31
	cmp $FC23.w,X		; DD 23 FC
	sbc $C4.b		; E5 C4
	eor ($BD.b,X)		; 41 BD
	and $0D.b,S		; 23 0D
	sbc $2F.b,S		; E3 2F
	bcs  84.b		; B0 54
	cpy $FB.b		; C4 FB
	sbc $20.b,S		; E3 20
	cpy #$22.b		; C0 22
	cmp $3E24.w,X		; DD 24 3E
	cpy $B0.b		; C4 B0
	and ($FD.b),Y		; 31 FD
	ora $0D.b,S		; 03 0D
	sbc $42.b,S		; E3 42
	cmp $F1C0.w		; CD C0 F1
	and $DD11EF.l		; 2F EF 11 DD
	tsb $40.b		; 04 40
	cpx #$C4.b		; E0 C4
	jsr $21DF.w		; 20 DF 21
	jsr ($4E23.w,X)		; FC 23 4E
	cmp $FDC422.l		; CF 22 C4 FD
	cop $1D.b		; 02 1D
	sbc $42.b,S		; E3 42
	cmp $1E12.w		; CD 12 1E
	iny		; C8
	ora $1D.b,S		; 03 1D
	sbc $30.b,S		; E3 30
	jmp.w [$0E24]		; DC 24 0E
	cmp ($C4.b)		; D2 C4
	and ($ED.b,X)		; 21 ED
	bit $3E.b		; 24 3E
	cmp $11FD31.l		; CF 31 FD 11
	cpy $1D.b		; C4 1D
	sbc ($32.b,S),Y		; F3 32
	cmp $1E12.w		; CD 12 1E
	sbc ($2F.b,X)		; E1 2F
	cpy $D1.b		; C4 D1
	and ($FD.b,S),Y		; 33 FD
.ACCU 8
	sep #$2F		; E2 2F
	sbc $B4EF20.l		; EF 20 EF B4
	eor [$4A.b]		; 47 4A
	ldy #$43.b		; A0 43
	cmp $EA13.w		; CD 13 EA
	rol $C4.b		; 26 C4
	eor $0E12CF.l		; 4F CF 12 0E
	sbc ($1E.b),Y		; F1 1E
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	cpy $EC.b		; C4 EC
	cop $1F.b		; 02 1F
	cpx #$10.b		; E0 10
	cpx #$33.b		; E0 33
	trb $C1B4.w		; 1C B4 C1
	eor ($CE.b,X)		; 41 CE
	ora ($EB.b)		; 12 EB
	lsr $6C.b		; 46 6C
	lda $43B4.w		; AD B4 43
	jsr ($1CF1.w,X)		; FC F1 1C
	ora $62.b		; 05 62
	ldy $B403.w		; AC 03 B4
	ora $1DE1.w,X		; 1D E1 1D
	cpx $55.b		; E4 55
	dex		; CA
	cop $2E.b		; 02 2E
	ldy $D1.b,X		; B4 D1
	and $0957A2.l		; 2F A2 57 09
	cmp ($40.b),Y		; D1 40
	cmp $CC21B4.l		; CF B4 21 CC
	lsr $6B.b,X		; 56 6B
	ldy #$23.b		; A0 23
	cmp $C403.w,X		; DD 03 C4
	inc $4003.w,X		; FE 03 40
	cmp $F20E11.l		; CF 11 0E F2
	asl $C5B4.w		; 0E B4 C5
	adc $AA.b,X		; 75 AA
	tsb $2D.b		; 04 2D
.ACCU 16
	rep #$2F		; C2 2F
	lda ($C4.b,X)		; A1 C4
	bit $0C.b,X		; 34 0C
.ACCU 8
	sep #$2F		; E2 2F
	sbc $34EE20.l		; EF 20 EE 34
	cpy $1D.b		; C4 1D
	cpx #$21.b		; E0 21
	cmp $23FD11.l,X		; DF 11 FD 23
	lsr $C0C4.w		; 4E C4 C0
	and ($EE.b,X)		; 21 EE
	ora ($0D.b),Y		; 11 0D
	pea $CE40.w		; F4 40 CE
	cpy $22.b		; C4 22
	inc $0EF2.w,X		; FE F2 0E
	sbc $42.b,S		; E3 42
	dec $C403.w		; CE 03 C4
	ora $2EF1.w		; 0D F1 2E
	cmp ($53.b),Y		; D1 53
	cpx $1E02.w		; EC 02 1E
	cpy $E0.b		; C4 E0
	and $0C44DF.l,X		; 3F DF 44 0C
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	bne -60.b		; D0 C4
	and ($DD.b,X)		; 21 DD
	and $2C.b,X		; 35 2C
	cpx #$4F.b		; E0 4F
	dec $C822.w,X		; DE 22 C8
	dec $EB54.w		; CE 54 EB
	cpx $3E.b		; E4 3E
	cmp ($31.b,X)		; C1 31
	cpx $E5C4.w		; EC C4 E5
	rti		; 40

	cmp $03ED22.l		; CF 22 ED 03
	ora $C0D3.w		; 0D D3 C0
	and $1F.b,X		; 35 1F
	ora $2F.b,S		; 03 2F
	bne  31.b		; D0 1F
	cpy $C425.w		; CC 25 C4
	cpx $1D12.w		; EC 12 1D
	sbc ($20.b,X)		; E1 20
	dec $0C54.w		; CE 54 0C
	iny		; C8
	and ($0C.b,S),Y		; 33 0C
	sbc ($3D.b,S),Y		; F3 3D
	inc $CD63.w		; EE 63 CD
	sbc $C4.b,X		; F5 C4
	and $FD21DF.l		; 2F DF 21 FD
	sbc $30.b		; E5 30
	bne  33.b		; D0 21
	iny		; C8
	bne  34.b		; D0 22
	inc $3DF4.w		; EE F4 3D
	sbc $C4DF31.l		; EF 31 DF C4
	sbc ($1F.b),Y		; F1 1F
	inc $0E34.w		; EE 34 0E
	sbc ($1E.b)		; F2 1E
	cpx #$B4.b		; E0 B4
	bmi -35.b		; 30 DD
	inc $40.b,X		; F6 40
	cpx #$20.b		; E0 20
	inc $A401.w		; EE 01 A4
	sbc $43C0.w		; ED C0 43
	lsr $2F3E.w		; 4E 3E 2F
	ora $E0A4F0.l		; 0F F0 A4 E0
	sbc $4B60EE.l,X		; FF EE 60 4B
	ora ($30.b,S),Y		; 13 30
	cmp ($94.b,X)		; C1 94
	beq -95.b		; F0 A1
	wai		; CB
	bit $21.b,X		; 34 21
	dec $27.b		; C6 27
	bne -92.b		; D0 A4
	sbc $C2FEF0.l,X		; FF F0 FE C2
	jsl $4F23FE.l		; 22 FE 23 4F
	ldy $0E.b		; A4 0E
	sbc $F3EDF0.l,X		; FF F0 ED F3
	ora ($D1.b)		; 12 D1
	bit $A4.b		; 24 A4
	ora $0F0EFF.l,X		; 1F FF 0E 0F
	sbc $3002.w,X		; FD 02 30
	cmp ($A4.b,X)		; C1 A4
	and $FF.b,X		; 35 FF
	asl $10F0.w		; 0E F0 10
	sbc $1F01.w,X		; FD 01 1F
	dey		; 88
	ora $43.b,S		; 03 43
	cmp $1C4C.w		; CD 4C 1C
	eor ($1D.b,X)		; 41 1D
	beq -120.b		; F0 88
	eor $F43E.w		; 4D 3E F4
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	sbc ($00.b,X)		; E1 00
	rep #$84		; C2 84
	eor $0330E1.l		; 4F E1 30 03
	jsl $EBD510.l		; 22 10 D5 EB
	stz $20.b,X		; 74 20
	cpx $DFFF.w		; EC FF DF
	cop $F0.b		; 02 F0
	and ($A6.b,S),Y		; 33 A6
	sty $1F.b		; 84 1F
	sbc ($C2.b,S),Y		; F3 C2
	eor $DF.b,S		; 43 DF
	rol A		; 2A
	lsr $84EF.w		; 4E EF 84
	and $401D.w		; 2D 1D 40
	cmp $FFD135.l,X		; DF 35 D1 FF
	bit $4484.w		; 2C 84 44
	lda ($02.b),Y		; B1 02
	beq  31.b		; F0 1F
	cpy $C2.b		; C4 C2
	sbc $DFBE70.l		; EF 70 BE DF
	asl $30.b		; 06 30
	sbc ($0F.b,S),Y		; F3 0F
	ldy $7047.w,X		; BC 47 70
	and $13.b,X		; 35 13
	brk $0F.b		; 00 0F
	cmp $FD.b,X		; D5 FD
	dec $80E1.w,X		; DE E1 80
	sbc ($42.b),Y		; F1 42
	and ($0E.b),Y		; 31 0E
	and ($E0.b),Y		; 31 E0
	cop $F0.b		; 02 F0
	bvs  13.b		; 70 0D
	brk $63.b		; 00 63
	phd		; 0B
	sbc ($1F.b,S),Y		; F3 1F
	pld		; 2B
	cpx #$7E74.w		; E0 74 7E
	rtl		; 6B

	tsb $1BC5.w		; 0C C5 1B
	.db $42, $DE		; 42 DE
	and $0274.w		; 2D 74 02
	jsr $F2F0.w		; 20 F0 F2
	trb $BD.b		; 14 BD
	sbc $2E.b,X		; F5 2E
	bvs -34.b		; 70 DE
	cmp $3D0E00.l		; CF 00 0E 3D
	ora ($30.b,X)		; 01 30
	and $84.b,S		; 23 84
	and $161F.w		; 2D 1F 16
	cpx $D4D2.w		; EC D2 D4
	and $E384F0.l		; 2F F0 84 E3
	and $F20E.w		; 2D 0E F2
	ora ($E2.b)		; 12 E2
	cpx #$7023.w		; E0 23 70
	bit $43.b		; 24 43
	lsr $4233.w,X		; 5E 33 42
	and $801F31.l		; 2F 31 1F 80
	sbc ($13.b),Y		; F1 13
	and ($FE.b)		; 32 FE
	bpl  31.b		; 10 1F
	eor $DD.b,S		; 43 DD
	bra  19.b		; 80 13
	and ($10.b,S),Y		; 33 10
	rti		; 40

	sbc $01.b,S		; E3 01
	beq -19.b		; F0 ED
	bra -12.b		; 80 F4
	sbc ($DE.b),Y		; F1 DE
	beq  70.b		; F0 46
	and $10E0.w,X		; 3D E0 10
	bra -31.b		; 80 E1
	and ($23.b,X)		; 21 23
	sbc ($20.b)		; F2 20
	cmp $2E.b,S		; C3 2E
	ora ($84.b)		; 12 84
	and ($C2.b),Y		; 31 C2
	bpl -31.b		; 10 E1
	rol $21CF.w,X		; 3E CF 21
	sep #$84		; E2 84
	eor $0101.w		; 4D 01 01
	cmp ($FF.b),Y		; D1 FF
	jsl $70D1EF.l		; 22 EF D1 70
	eor $EC.b,X		; 55 EC
	rol $A5.b,X		; 36 A5
	eor ($10.b),Y		; 51 10
	and $117022.l		; 2F 22 70 11
	sbc ($74.b),Y		; F1 74
	sbc ($0A.b),Y		; F1 0A
	ldy #$123B.w		; A0 3B 12
	sty $2F.b		; 84 2F
	ora $EE32.w		; 0D 32 EE
	phk		; 4B
	and $3310.w,X		; 3D 10 33
	bra  64.b		; 80 40
	dec $21F0.w,X		; DE F0 21
	brk $F4.b		; 00 F4
	and ($0C.b)		; 32 0C
	bra  47.b		; 80 2F
	cop $0F.b		; 02 0F
	sbc $42.b,S		; E3 42
	ora ($0B.b),Y		; 11 0B
	tsb $80.b		; 04 80
	bmi  -1.b		; 30 FF
	sbc $4144D2.l		; EF D2 44 41
	asl $8423.w,X		; 1E 23 84
	bpl -65.b		; 10 BF
	tsb $0B51.w		; 0C 51 0B
	lsr $0A26.w,X		; 5E 26 0A
	sty $11.b		; 84 11
	cpx #$1934.w		; E0 34 19
	cop $E3.b		; 02 E3
	bpl  16.b		; 10 10
	bcc  32.b		; 90 20
	asl $FB13.w,X		; 1E 13 FB
	eor $E11FF4.l		; 4F F4 1F E1
	bcc  64.b		; 90 40
	sbc $EE1F1D.l,X		; FF 1D 1F EE
	and $47.b,S		; 23 47
	ora $03D180.l		; 0F 80 D1 03
	inc $D2D0.w		; EE D0 D2
	bvc  34.b		; 50 22
	ora $84.b,X		; 15 84
	wai		; CB
	sbc $73.b,X		; F5 73
	tax		; AA
	ldy $43.b		; A4 43
	xce		; FB
	ora $80.b,S		; 03 80
	cmp ($35.b)		; D2 35
	and ($EE.b),Y		; 31 EE
	pei ($34.b)		; D4 34
	cop $E3.b		; 02 E3
	sty $FE.b,X		; 94 FE
	lsr $3FF1.w		; 4E F1 3F
	bne  -3.b		; D0 FD
	sbc ($3E.b),Y		; F1 3E
	ldy #$FFFE.w		; A0 FE FF
	pea $1230.w		; F4 30 12
	.db $42, $11		; 42 11
	brk $A4.b		; 00 A4
	jsr ($041D.w,X)		; FC 1D 04
	sep #$01		; E2 01
	bmi   1.b		; 30 01
	jsl $CFFEA4.l		; 22 A4 FE CF
	ldx $050C.w,Y		; BE 0C 05
	pea $3E52.w		; F4 52 3E
	ldy $20.b,X		; B4 20
	cpx #$DEF0.w		; E0 F0 DE
	bne   0.b		; D0 00
	pea $B441.w		; F4 41 B4
	jsl $DEE11F.l		; 22 1F E1 DE
	sbc $33BF.w		; ED BF 33
	pea $3CB8.w		; F4 B8 3C
	cmp ($1D.b),Y		; D1 1D
	sbc ($1D.b),Y		; F1 1D
	bpl  21.b		; 10 15
	tas		; 1B
	clv		; B8
	and $CC.b,X		; 35 CC
	cpx $EB.b		; E4 EB
	rti		; 40

	sbc $C84C06.l,X		; FF 06 4C C8
	brk $3C.b		; 00 3C
	sbc ($1F.b,X)		; E1 1F
	sbc $FE.b,S		; E3 FE
	ora ($4E.b)		; 12 4E
	clv		; B8
	cmp ($1C.b,S),Y		; D3 1C
	lda $3B.b,S		; A3 3B
	ora ($1C.b),Y		; 11 1C
	ora $50.b,X		; 15 50
	cpy $13.b		; C4 13
	jsr $FFEE.w		; 20 EE FF
	sbc $53E20E.l		; EF 0E E2 53
	ldy $02.b,X		; B4 02
	tsa		; 3B
	ldy #$E10D.w		; A0 0D E1
	inc $1055.w,X		; FE 55 10
	cpy #$0E23.w		; C0 23 0E
	brk $EE.b		; 00 EE
	inc $42E3.w,X		; FE E3 42
	ora ($C0.b)		; 12 C0
	asl $FEE0.w,X		; 1E E0 FE
	cpx #$43EF.w		; E0 EF 43
	and ($10.b,X)		; 21 10
	bcs -66.b		; B0 BE
	ora $57DCDE.l		; 0F DE DC 57
	eor $23.b,S		; 43 23
	jmp.w [$3FB4]		; DC B4 3F
	sbc $D0561F.l,X		; FF 1F 56 D0
	bne -19.b		; D0 ED
	bmi -64.b		; 30 C0
	sbc $3204EE.l,X		; FF EE 04 32
	bpl  14.b		; 10 0E
	beq  -2.b		; F0 FE
	cpy $0F.b		; C4 0F
	bit $E0.b,X		; 34 E0
	ora $0F10FE.l		; 0F FE 10 0F
	ora $FF34C4.l		; 0F C4 34 FF
	beq  -2.b		; F0 FE
	bpl  15.b		; 10 0F
	asl $C034.w,X		; 1E 34 C0
	jsl $0F0E11.l		; 22 11 0E 0F
	sbc $21F4FE.l,X		; FF FE F4 21
	bcs  33.b		; B0 21
	and $DEF0.w		; 2D F0 DE
	jsr ($52C5.w,X)		; FC C5 52
	and ($B0.b),Y		; 31 B0
	rol $DEE0.w,X		; 3E E0 DE
	xba		; EB
	sbc [$33.b],Y		; F7 33
	ora ($FD.b),Y		; 11 FD
	bcs   0.b		; B0 00
	inc $34DD.w		; EE DD 34
	ora ($22.b,S),Y		; 13 22
	inc $B00D.w		; EE 0D B0
	jmp.w [$33E4]		; DC E4 33
	and ($0E.b)		; 32 0E
	inc $D0DD.w		; EE DD D0
	bcs  98.b		; B0 62
	eor $1F.b,S		; 43 1F
	cmp $F6FEDC.l,X		; DF DC FE F6
	.db $42, $B0		; 42 B0
	jsr $0FED.w		; 20 ED 0F
	cpx #$060C.w		; E0 0C 06
	sbc ($02.b),Y		; F1 02
	bcs  14.b		; B0 0E
	jsr $BEDD.w		; 20 DD BE
	rti		; 40

	eor $31.b,S		; 43 31
	sbc $DBEDB0.l		; EF B0 ED DB
	inc $23.b		; E6 23
	.db $42, $0D		; 42 0D
	sbc $DDB0DE.l		; EF DE B0 DD
	adc $23.b,S		; 63 23
	jsr $FEEF.w		; 20 EF FE
	inc $B0C3.w		; EE C3 B0
	eor ($31.b,X)		; 41 31
	ora $EBFEF0.l,X		; 1F F0 FE EB
	sbc $13.b,X		; F5 13
	bcs  50.b		; B0 32
	inc $DE0E.w,X		; FE 0E DE
	cmp $2453.w		; CD 53 24
	jsr $E0B0.w		; 20 B0 E0
	sbc $C3DD.w,X		; FD DD C3
	eor $43.b,S		; 43 43
	asl $B0EF.w		; 0E EF B0
	sbc $25DB.w		; ED DB 25
	ora $21.b,X		; 15 21
	sbc $B0EDFF.l,X		; FF FF ED B0
	lda $1F4460.l		; AF 60 44 1F
	brk $EE.b		; 00 EE
	phx		; DA
	ldx $B0.b,Y		; B6 B0
	jsl $0E0E63.l		; 22 63 0E 0E
	cmp $34CB.w,X		; DD CB 34
	and $C0.b,X		; 35 C0
	jsr $FEFF.w		; 20 FF FE
	sbc $3240E0.l		; EF E0 40 32
	ora $FF0EB0.l		; 0F B0 0E FF
	phx		; DA
	inc $F4.b		; E6 F4
	eor ($01.b)		; 52 01
	asl $FFC0.w		; 0E C0 FF
	cmp $0421.w,X		; DD 21 04
	jsr $FF00.w		; 20 00 FF
	inc $BEB0.w,X		; FE B0 BE
	eor ($46.b),Y		; 51 46
	bpl  14.b		; 10 0E
	inc $C6CA.w		; EE CA C6
	cpy #$3102.w		; C0 02 31
	ora ($0F.b,X)		; 01 0F
	inc $11DD.w,X		; FE DD 11
	tsb $C4.b		; 04 C4
	sbc $0FE000.l		; EF 00 E0 0F
	sbc ($2E.b,S),Y		; F3 2E
	eor $0DB4E0.l		; 4F E0 B4 0D
	sbc $1F07F0.l,X		; FF F0 07 1F
	phy		; 5A
	ora $FEC0D0.l,X		; 1F D0 C0 FE
	cmp $1420.w,X		; DD 20 14
	ora ($10.b),Y		; 11 10
	sbc $D0C0FD.l,X		; FF FD C0 D0
	bpl  67.b		; 10 43
	ora ($1F.b)		; 12 1F
	sbc $C0E0DE.l,X		; FF DE E0 C0
	ora ($41.b),Y		; 11 41
	ora ($FF.b)		; 12 FF
	asl $01DD.w		; 0E DD 01
	tsb $B4.b		; 04 B4
	cmp $FDE02D.l		; CF 2D E0 FD
	sbc ($6E.b,X)		; E1 6E
	mvp $B4,$C2		; 44 C2 B4
	tsb $DF0F.w		; 0C 0F DF
	sbc ($6D.b,X)		; E1 6D
	adc ($F3.b,X)		; 61 F3
	sbc $0CB4.w		; ED B4 0C
	sbc $F543F0.l,X		; FF F0 43 F5
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	asl $EEB4.w		; 0E B4 EE
	sep #$4D		; E2 4D
	adc $FFEF03.l,X		; 7F 03 EF FF
	sbc $5FEEA4.l		; EF A4 EE 5F
	rti		; 40

	and ($E3.b)		; 32 E3
	inc $FE2D.w,X		; FE 2D FE
	ldy $FF.b		; A4 FF
	sbc $C1.b		; E5 C1
	jmp $ECC535.l		; 5C 35 C5 EC
	ora $FEA0.w		; 0D A0 FE
	cmp ($AF.b,X)		; C1 AF
	ora $2533.w		; 0D 33 25
	bpl -17.b		; 10 EF
	ldy #$1D.b		; A0 1D
	ora $1FEFB1.l		; 0F B1 EF 1F
	jsl $90E10F.l		; 22 0F E1 90
	and $FCD112.l		; 2F 12 D1 FC
	sbc $E0E1.w		; ED E1 E0
.INDEX 8
	sep #$94		; E2 94
	ora ($F1.b),Y		; 11 F1
	cmp $D4F30B.l,X		; DF 0B F3 D4
	bpl  63.b		; 10 3F
	sty $40.b,X		; 94 40
	sep #$CC		; E2 CC
	trb $01E3.w		; 1C E3 01
	ror $9421.w		; 6E 21 94
	cop $B2.b		; 02 B2
	jsr ($F0F0.w,X)		; FC F0 F0
	ora ($22.b),Y		; 11 22
	brk $74.b		; 00 74
	cpy $3E0E.w		; CC 0E 3E
	ora $DC.b,X		; 15 DC
	asl A		; 0A
	cmp $7424.w,X		; DD 24 74
	trb $0F.b		; 14 0F
	bit $02.b		; 24 02
	and $BBCD.w,X		; 3D CD BB
	inc $0474.w,X		; FE 74 04
	adc ($23.b,X)		; 61 23
	cmp $0000.w,X		; DD 00 00
	eor $F0781F.l		; 4F 1F 78 F0
	ora $E410F1.l,X		; 1F F1 10 E4
	jsr ($C244.w,X)		; FC 44 C2
	stz $10.b,X		; 74 10
	sbc $ADBA.w,X		; FD BA AD
	phk		; 4B
	rol $43.b		; 26 43
	rti		; 40

	stz $F1.b,X		; 74 F1
	cmp $E22E.w,X		; DD 2E E2
	inc $F20D.w		; EE 0D F2
	brk $70.b		; 00 70
	cpx #$14.b		; E0 14
	inc $FF0E.w,X		; FE 0E FF
	ora $70F122.l		; 0F 22 F1 70
	tas		; 1B
	tyx		; BB
	lda $EDDD.w,X		; BD DD ED
	xba		; EB
	sbc ($F3.b,X)		; E1 F3
	stz $01.b		; 64 01
	rol $ABDC.w		; 2E DC AB
	cpy $474E.w		; CC 4E 47
	ora $64.b		; 05 64
	bpl -32.b		; 10 E0
	lda ($11.b,S),Y		; B3 11
	trb $0E0E.w		; 1C 0E 0E
	cmp $D3F174.l,X		; DF 74 F1 D3
	and $00E32F.l		; 2F 2F E3 00
	ora ($FF.b),Y		; 11 FF
	stz $F0.b,X		; 74 F0
	ora $200E.w		; 0D 0E 20
	brk $E4.b		; 00 E4
	sta $10.b,X		; 95 10
	bra  16.b		; 80 10
	bmi  66.b		; 30 42
	ora $D0.b,S		; 03 D0
	sbc $CA3A.w,X		; FD 3A CA
	bcc -33.b		; 90 DF
	lda ($F0.b),Y		; B1 F0
	ora ($1E.b),Y		; 11 1E
	and ($56.b,X)		; 21 56
	sbc ($94.b)		; F2 94
	ldx #$3C.b		; A2 3C
	inc A		; 1A
	and $02.b,S		; 23 02
	ora ($0F.b,X)		; 01 0F
	ora [$94.b]		; 07 94
	cmp $D0DB13.l		; CF 13 DB D0
	brk $F1.b		; 00 F1
	.db $42, $01		; 42 01
	sty $1C.b,X		; 94 1C
	and ($00.b,X)		; 21 00
	cmp $0B.b		; C5 0B
	inc $F10F.w,X		; FE 0F F1
	sty $44.b,X		; 94 44
	eor $E0E3C0.l,X		; 5F C0 E3 E0
	ora $FF0D.w,Y		; 19 0D FF
	sty $5D.b,X		; 94 5D
	stz $41.b		; 64 41
	ora $DD01.w		; 0D 01 DD
	inc A		; 1A
	tsb $ABA0.w		; 0C A0 AB
	inc $5523.w		; EE 23 55
	eor ($21.b,S),Y		; 53 21
	sbc $3CA42A.l,X		; FF 2A A4 3C
	ora ($30.b,X)		; 01 30
	mvp $FE,$00		; 44 00 FE
	asl $A4D3.w,X		; 1E D3 A4
	lda $143C.w,X		; BD 3C 14
	pea $2050.w		; F4 50 20
	cmp $F2B4FD.l		; CF FD B4 F2
	lda ($EF.b,S),Y		; B3 EF
	and $F5.b,S		; 23 F5
	rol $D01F.w		; 2E 1F D0
	cpy $EF.b		; C4 EF
	bit $0220.w		; 2C 20 02
	ora ($20.b),Y		; 11 20
	ora $EFC4FF.l,X		; 1F FF C4 EF
	cmp ($0C.b)		; D2 0C
	ror $0214.w		; 6E 14 02
	bpl -32.b		; 10 E0
	cpy $EE.b		; C4 EE
	tsb $B612.w		; 0C 12 B6
	sbc ($4F.b),Y		; F1 4F
	and ($F0.b,X)		; 21 F0
	cpy $FE.b		; C4 FE
	inc $4EEE.w,X		; FE EE 4E
	tsb $F2.b		; 04 F2
	and $FFC420.l,X		; 3F 20 C4 FF
	inc $D3EF.w,X		; FE EF D3
	asl $236E.w		; 0E 6E 23
	sbc ($C4.b)		; F2 C4
	ora $FD0EFE.l		; 0F FE 0E FD
	ora ($C5.b,S),Y		; 13 C5
	ora $10C440.l,X		; 1F 40 C4 10
	sbc $EFEFE0.l,X		; FF E0 EF EF
	eor $E324.w		; 4D 24 E3
	cpy $2E.b		; C4 2E
	and $EFFFFF.l		; 2F FF FF EF
	sbc $0E.b,S		; E3 0E
	adc $E213C4.l		; 6F C4 13 E2
	sbc $EEFFFF.l,X		; FF FF FF EE
	jsl $1FC4D5.l		; 22 D5 C4 1F
	eor $FFEF01.l		; 4F 01 EF FF
	sbc $C44CE0.l,X		; FF E0 4C C4
	.db $42, $F3		; 42 F3
	asl $D020.w,X		; 1E 20 D0
	sbc $C405FD.l		; EF FD 05 C4
	cmp ($5E.b),Y		; D1 5E
	bit $D1.b		; 24 D1
	asl $EFFF.w		; 0E FF EF
	sbc $5FC4.w,X		; FD C4 5F
	inc $F0.b,X		; F6 F0
	eor $0FFDF1.l		; 4F F1 FD 0F
	sbc $4BD2C4.l		; EF C4 D2 4B
	adc ($E4.b),Y		; 71 E4
	ora $FFDF00.l,X		; 1F 00 DF FF
	cpy $EE.b		; C4 EE
	inc $C2.b,X		; F6 C2
	eor $0ED105.l,X		; 5F 05 D1 0E
	cpx #$C4.b		; E0 C4
	inc $33FD.w,X		; FE FD 33
	lda [$0F.b],Y		; B7 0F
	eor ($E1.b,X)		; 41 E1
	tsb $00C4.w		; 0C C4 00
	sbc $066DEE.l		; EF EE 6D 06
	sbc $C0016D.l,X		; FF 6D 01 C0
	jsr $DC0F.w		; 20 0F DC
	tax		; AA
	tas		; 1B
	ora $02.b,S		; 03 02
	adc $C4.b,S		; 63 C4
	bpl -17.b		; 10 EF
	beq -17.b		; F0 EF
	sbc ($4B.b,X)		; E1 4B
	.db $42, $E3		; 42 E3
	cpy $2F.b		; C4 2F
	bpl -17.b		; 10 EF
	beq  -1.b		; F0 FF
	sbc $C4134D.l		; EF 4D 13 C4
	brk $30.b		; 00 30
	bpl -16.b		; 10 F0
	cpx #$0E.b		; E0 0E
	inc $C4E4.w,X		; FE E4 C4
	cpx #$40.b		; E0 40
	ora $01.b,S		; 03 01
	ora $FF1E0E.l		; 0F 0E 1E FF
	cpy $D0.b		; C4 D0
	eor $F113.w		; 4D 13 F1
	and $E10F20.l,X		; 3F 20 0F E1
	ldy $DC.b,X		; B4 DC
	tsb $1ED4.w		; 0C D4 1E
	.db $42, $03		; 42 03
	and ($10.b,X)		; 21 10
	ldy $0F.b,X		; B4 0F
	cpx #$EE.b		; E0 EE
	inc $30EF.w,X		; FE EF 30
	cpx $1E.b		; E4 1E
	ldy $50.b,X		; B4 50
	ora ($10.b),Y		; 11 10
	beq  -2.b		; F0 FE
	sbc $B4F3EF.l,X		; FF EF F3 B4
	sbc $02F43F.l		; EF 3F F4 02
	and $EFF12F.l		; 2F 2F F1 EF
	ldy $FD.b		; A4 FD
	dec $9501.w,X		; DE 01 95
	and $1442.w,X		; 3D 42 14
	ora ($94.b,S),Y		; 13 94
	bit $A06C.w		; 2C 6C A0
	ldy $F1CB.w		; AC CB F1
	bcs  47.b		; B0 2F
	sty $04.b,X		; 94 04
	eor $53.b,S		; 43 53
	eor ($03.b),Y		; 51 03
	phd		; 0B
	ora $A4BE.w,X		; 1D BE A4
	asl $B0F1.w		; 0E F1 B0
	and $E413.w		; 2D 13 E4
	jsr $9440.w		; 20 40 94
	sbc $DF.b,X		; F5 DF
	plx		; FA
	ora ($0F.b,X)		; 01 0F
	lda ($DB.b)		; B2 DB
	bit $B694.w,X		; 3C 94 B6
.ACCU 8
	sep #$60		; E2 60
	and ($E6.b,S),Y		; 33 E6
	brk $2B.b		; 00 2B
	ora $A4.b,S		; 03 A4
	jsr $1BB0.w		; 20 B0 1B
	ora ($B1.b,X)		; 01 B1
	brk $21.b		; 00 21
	ora ($84.b)		; 12 84
	sbc [$51.b],Y		; F7 51
	lsr $65D2.w,X		; 5E D2 65
	tax		; AA
	inc $78BB.w		; EE BB 78
	cmp ($D4.b)		; D2 D4
	and ($32.b,X)		; 21 32
	cpy #$1C.b		; C0 1C
	ora ($20.b,S),Y		; 13 20
	dey		; 88
	ora $B23BE6.l		; 0F E6 3B B2
	sbc ($DD.b),Y		; F1 DD
	rtl		; 6B

	ora $88.b		; 05 88
	cmp ($5C.b)		; D2 5C
	cop $C4.b		; 02 C4
	sbc ($30.b,X)		; E1 30
	cmp $E3.b,S		; C3 E3
	dey		; 88
	ora $EF3B.w		; 0D 3B EF
	asl $F42F.w		; 0E 2F F4
	cop $30.b		; 02 30
	dey		; 88
	beq  14.b		; F0 0E
	and ($D0.b)		; 32 D0
	sbc $D12E4D.l		; EF 4D 2E D1
	sei		; 78
	ldx #$21.b		; A2 21
	tsb $06F5.w		; 0C F5 06
	ora $88D401.l,X		; 1F 01 D4 88
	and $111E.w		; 2D 1E 11
	ora ($C1.b,X)		; 01 C1
	asl $C00F.w		; 0E 0F C0
	dey		; 88
	rti		; 40

	ora ($E2.b),Y		; 11 E2
	ora ($0F.b)		; 12 0F
	sbc ($F2.b),Y		; F1 F2
	sbc $030188.l,X		; FF 88 01 03
	sbc $D01FFE.l		; EF FE 1F D0
	cmp ($31.b,S),Y		; D3 31
	sei		; 78
	sbc ($E5.b,X)		; E1 E5
	trb $DF.b		; 14 DF
	tsb $A551.w		; 0C 51 A5
	brk $78.b		; 00 78
	and $0D1E.w,X		; 3D 1E 0D
	tsb $10DE.w		; 0C DE 10
	.db $42, $D4		; 42 D4
	sei		; 78
	ora ($5D.b,X)		; 01 5D
	bpl  15.b		; 10 0F
	tas		; 1B
	eor ($23.b,X)		; 41 23
	cpx $4F78.w		; EC 78 4F
	ora $D0F0DA.l,X		; 1F DA F0 D0
	bpl  17.b		; 10 11
	bit $78.b		; 24 78
	inc $234E.w,X		; FE 4E 23
	cmp $24E2F0.l,X		; DF F0 E2 24
	sbc $F1F288.l		; EF 88 F2 F1
	ora $1D1D.w,X		; 1D 1D 1D
	ora $78400D.l,X		; 1F 0D 40 78
	and $00.b,S		; 23 00
	sbc $E2.b,X		; F5 E2
	xce		; FB
	asl $1102.w		; 0E 02 11
	sei		; 78
	and ($D4.b,X)		; 21 D4
	ora $0E5B.w,X		; 1D 5B 0E
	xba		; EB
	jmp $680F.w		; 4C 0F 68
	cpx $54.b		; E4 54
	and $0233.w,X		; 3D 33 02
	ora $00CB.w		; 0D CB 00
	sei		; 78
	ora ($11.b),Y		; 11 11
	bmi -15.b		; 30 F1
	ora ($0E.b,X)		; 01 0E
	ora $F078A2.l		; 0F A2 78 F0
	inc $3102.w		; EE 02 31
	ora $4F4F.w		; 0D 4F 4F
	sbc $300B78.l,X		; FF 78 0B 30
	beq  44.b		; F0 2C
	adc ($11.b,X)		; 61 11
	sbc ($01.b),Y		; F1 01
	sei		; 78
	ora $FFFE.w		; 0D FE FF
	ora $5F1C.w		; 0D 1C 5F
	bit $C1.b		; 24 C1
	sei		; 78
	and ($F0.b,X)		; 21 F0
	pei ($BF.b)		; D4 BF
	bpl   1.b		; 10 01
	bpl  34.b		; 10 22
	pla		; 68
	tsb $DF.b		; 04 DF
	ora $A1A2E5.l,X		; 1F E5 A2 A1
	pld		; 2B
	rol $0C78.w,X		; 3E 78 0C
	and $3DE002.l,X		; 3F 02 E0 3D
	ora ($EF.b,S),Y		; 13 EF
	jmp $2078.w		; 4C 78 20
	cmp ($E3.b)		; D2 E3
	sep #$C5		; E2 C5
	brk $2F.b		; 00 2F
	sbc ($78.b),Y		; F1 78
	bpl  29.b		; 10 1D
	and $1D2E.w		; 2D 2E 1D
	lsr A		; 4A
	jsr $78F0.w		; 20 F0 78
	tsb $C3.b		; 04 C3
	cmp ($2F.b),Y		; D1 2F
	and $1ED2E1.l		; 2F E1 D2 1E
	stz $2E.b		; 64 2E
	cmp ($1D.b,S),Y		; D3 1D
	and ($44.b)		; 32 44
	ora $06.b,S		; 03 06
	inc $F078.w		; EE 78 F0
	trb $004D.w		; 1C 4D 00
	inc $204F.w		; EE 4F 20
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
	cpx $F1.b		; E4 F1
	ora $0EF3F0.l		; 0F F0 F3 0E
	brk $00.b		; 00 00
	sei		; 78
	jsr $0110.w		; 20 10 01
	brk $11.b		; 00 11
	beq -15.b		; F0 F1
	cmp $78.b,S		; C3 78
	ora $0D10.w		; 0D 10 0D
	ora $F0.b,S		; 03 F0
	asl $F112.w		; 0E 12 F1
	pla		; 68
	sbc $103CE2.l,X		; FF E2 3C 10
	ora $101E12.l		; 0F 12 1E 10
	stz $E2.b		; 64 E2
	ora $201C00.l		; 0F 00 1C 20
	inc $EA0D.w		; EE 0D EA
	adc $EE.b		; 65 EE
	wai		; CB
	cmp $EFBD.w,X		; DD BD EF
	jmp $32F3.w		; 4C F3 32
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($11.b),Y		; 11 11
	and ($11.b,X)		; 21 11
	bpl -16.b		; 10 F0
	sbc $700D.w,X		; FD 0D 70
	xce		; FB
	bit $0433.w		; 2C 33 04
	bit $16.b		; 24 16
	trb $21.b		; 14 21
	stz $FF.b,X		; 74 FF
	ora $0F213A.l		; 0F 3A 21 0F
	ora ($22.b,X)		; 01 22
	asl $80.b		; 06 80
	and ($32.b,S),Y		; 33 32
	ora ($2C.b),Y		; 11 2C
	sbc $EEBF.w,X		; FD BF EE
	cmp ($80.b,S),Y		; D3 80
	cpx $31.b		; E4 31
	eor $32.b,X		; 55 32
	and $A02E.w,X		; 3D 2E A0
	wai		; CB
	bcc -16.b		; 90 F0
	sbc ($40.b),Y		; F1 40
	and ($22.b,S),Y		; 33 22
	and $909102.l		; 2F 02 91 90
	jmp.w [$0EE0]		; DC E0 0E
	bvs  54.b		; 70 36
	and ($42.b,S),Y		; 33 42
	cmp $A0.b,S		; C3 A0
	xce		; FB
	ora $0FD0.w,X		; 1D D0 0F
	asl $F4.b		; 06 F4
	.db $42, $33		; 42 33
	ldy #$3E0D.w		; A0 0D 3E
	ldx #$1FCB.w		; A2 CB 1F
	sbc ($50.b,S),Y		; F3 50
	adc $A0.b		; 65 A0
	tsb $3D.b		; 04 3D
	cmp ($9A.b,S),Y		; D3 9A
	rol A		; 2A
.INDEX 16
	rep #$1F		; C2 1F
	adc $B4.b,X		; 75 B4
	cpx $EE.b		; E4 EE
	ora $3EEED3.l,X		; 1F D3 EE 3E
	ora ($2E.b)		; 12 2E
	bcs  52.b		; B0 34
	trb $20.b		; 14 20
	sbc ($CD.b)		; F2 CD
	xce		; FB
	sbc $5FB40F.l		; EF 0F B4 5F
	tsb $D0.b		; 04 D0
	brk $C0.b		; 00 C0
	ora $E1E2.w		; 0D E2 E1
	ldy $31.b,X		; B4 31
	jsl $EE3F3F.l		; 22 3F 3F EE
	cmp $B42DEC.l,X		; DF EC 2D B4
	bmi  66.b		; 30 42
	trb $F2.b		; 14 F2
	ora $2DDCFE.l		; 0F FE DC 2D
	ldy $D4.b,X		; B4 D4
	sbc ($25.b),Y		; F1 25
	sbc ($4E.b,S),Y		; F3 4E
	jsr $EBDD.w		; 20 DD EB
	clv		; B8
	lsr $4E01.w		; 4E 01 4E
	inc $B1.b,X		; F6 B1
	and $0DE1.w		; 2D E1 0D
	clv		; B8
	and $353BD4.l		; 2F D4 3B 35
	lda $2E.b,S		; A3 2E
	cpx $EC.b		; E4 EC
	ldy $2F.b,X		; B4 2F
	lda $0AB0DB.l,X		; BF DB B0 0A
	adc ($23.b,X)		; 61 23
	adc $C4.b,S		; 63 C4
	ora ($00.b,S),Y		; 13 00
	asl $FCEF.w		; 0E EF FC
	sbc ($EF.b,X)		; E1 EF
	eor $3022C4.l		; 4F C4 22 30
	jsl $E00EE1.l		; 22 E1 0E E0
	sbc $B41E.w		; ED 1E B4
	cmp $1F.b,X		; D5 1F
	mvp $6F,$12		; 44 12 6F
	cop $EE.b		; 02 EE
	inc $D0C4.w,X		; FE C4 D0
	sbc $E220.w,X		; FD 20 E2
	ora ($F4.b)		; 12 F4
	ora ($2F.b,X)		; 01 2F
	ldy $0E.b,X		; B4 0E
	jsr ($BEEE.w,X)		; FC EE BE
	rol $12E5.w,X		; 3E E5 12
	rol $B4.b		; 26 B4
	sbc ($3E.b)		; F2 3E
	ora $DEFDEC.l		; 0F EC FD DE
	and $F4B4D6.l		; 2F D6 B4 F4
	ora [$00.b]		; 07 00
	eor $FC0F.w,X		; 5D 0F FC
	sbc $03B4CD.l		; EF CD B4 03
	lda ($31.b,S),Y		; B3 31
	and $6D.b,S		; 23 6D
	eor ($D1.b,X)		; 41 D1
	inc $CFB4.w		; EE B4 CF
	jmp.w [$0DF2]		; DC F2 0D
	rts		; 60

	and ($60.b),Y		; 31 60
	ora $B4.b		; 05 B4
	cmp $FCDE0D.l,X		; DF 0D DE FC
	cpx #$233C.w		; E0 3C 23
	and ($B4.b,X)		; 21 B4
	mvp $2D,$F2		; 44 F2 2D
	asl $0EEC.w		; 0E EC 0E
	lda $C6B421.l,X		; BF 21 B4 C6
	ora ($16.b)		; 12 16
	asl $E05E.w,X		; 1E 5E E0
	jsr ($B4D0.w,X)		; FC D0 B4
	dec $D003.w		; CE 03 D0
	bvc  35.b		; 50 23
	eor $B4B014.l,X		; 5F 14 B0 B4
	ora $0BCF.w		; 0D CF 0B
	beq  60.b		; F0 3C
	and ($12.b,S),Y		; 33 12
	eor $B4.b,S		; 43 B4
	sbc $2C.b,S		; E3 2C
	ora $C0FEDD.l		; 0F DD FE C0
	cop $C6.b		; 02 C6
	clv		; B8
	ldx #$EE02.w		; A2 02 EE
	rol $D0D4.w,X		; 3E D4 D0
	ora ($F0.b,X)		; 01 F0
	ldy $F1.b,X		; B4 F1
	ora $2241.w,X		; 1D 41 22
	and ($F2.b,S),Y		; 33 F2
	asl $B4FF.w,X		; 1E FF B4
	sbc $D0FE.w		; ED FE D0
	sbc ($1F.b),Y		; F1 1F
	rti		; 40

	and ($32.b),Y		; 31 32
	ldy $E6.b		; A4 E6
	cmp $ADFC.w,X		; DD FC AD
	cpx $F4C0.w		; EC C0 F4
	lda [$A4.b],Y		; B7 A4
	bit $36.b		; 24 36
	rti		; 40

	eor ($B0.b,X)		; 41 B0
	phx		; DA
	dec $A4DB.w		; CE DB A4
	ora $054F.w		; 0D 4F 05
	and ($36.b,S),Y		; 33 36
	bmi  93.b		; 30 5D
	cmp $DEDAA4.l,X		; DF A4 DA DE
	cmp $4E0E.w		; CD 0E 4E
	bit $32.b		; 24 32
	eor $A4.b,X		; 55 A4
	ora ($4B.b),Y		; 11 4B
	inc $EDBC.w,X		; FE BC ED
	inc $6CFF.w		; EE FF 6C
	ldy $24.b		; A4 24
	and ($54.b,X)		; 21 54
	cop $4B.b		; 02 4B
	ora $A4EFAD.l		; 0F AD EF A4
	cmp $512CF1.l		; CF F1 2C 51
	jsl $1E1343.l		; 22 43 13 1E
	ldy $0D.b		; A4 0D
	ldx $D1FE.w,Y		; BE FE D1
	cmp $00147A.l,X		; DF 7A 14 00
	ldy $44.b		; A4 44
	ora ($6C.b,X)		; 01 6C
	brk $CC.b		; 00 CC
	ora $0EEF.w,X		; 1D EF 0E
	ldy $3F.b		; A4 3F
	pei ($1F.b)		; D4 1F
	trb $01.b		; 14 01
	rti		; 40

	sbc ($EC.b),Y		; F1 EC
	sty $41.b,X		; 94 41
	sta ($FD.b),Y		; 91 FD
	bpl  -5.b		; 10 FB
	and ($D3.b,X)		; 21 D3
	and $0122A4.l,X		; 3F A4 22 01
	ora $011ED2.l,X		; 1F D2 1E 01
	dec $9830.w,X		; DE 30 98
	lda $1F.b		; A5 1F
	rol $201F.w		; 2E 1F 20
	pei ($DD.b)		; D4 DD
	eor $94.b,S		; 43 94
	ora $F03C.w,X		; 1D 3C F0
	cmp $DC.b,S		; C3 DC
	lsr $121F.w		; 4E 1F 12
	sty $E3.b,X		; 94 E3
	ora $0EF63E.l		; 0F 3E F6 0E
	rti		; 40

	xba		; EB
	jmp $D0C294.l		; 5C 94 C2 D0
	asl $002F.w,X		; 1E 2F 00
	ora ($F0.b),Y		; 11 F0
	and $D45684.l,X		; 3F 84 56 D4
	and $D02A.w		; 2D 2A D0
	phx		; DA
	bit $840F.w		; 2C 0F 84
	sbc $B2.b		; E5 B2
	and $C750.w		; 2D 50 C7
	jsl $844C34.l		; 22 34 4C 84
	and ($AF.b),Y		; 31 AF
	sbc $2BFC.w,Y		; F9 FC 2B
	ora $94E020.l		; 0F 20 E0 94
	bpl   1.b		; 10 01
	bpl   1.b		; 10 01
	and ($02.b,X)		; 21 02
	sbc ($1C.b),Y		; F1 1C
	sty $5C.b		; 84 5C
	ldy $94.b,X		; B4 94
	lda $202D2C.l		; AF 2C 2D 20
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	inc $C5.b		; E6 C5
	ora $12.b,S		; 03 12
	and ($31.b,S),Y		; 33 31
	eor $0C7410.l		; 4F 10 74 0C
	sbc ($AE.b),Y		; F1 AE
	sbc $FEEE.w		; ED EE FE
	sbc ($F0.b,X)		; E1 F0
	stz $3E.b		; 64 3E
	rti		; 40

	bpl  35.b		; 10 23
	adc $E11431.l		; 6F 31 14 E1
	stz $0F.b		; 64 0F
	cop $0E.b		; 02 0E
	ora $CE00.w,X		; 1D 00 CE
	lda ($E0.b),Y		; B1 E0
	stz $2B.b		; 64 2B
	ora $FEF120.l,X		; 1F 20 F1 FE
	eor $F022.w,X		; 5D 22 F0
	stz $0E.b		; 64 0E
	bne -15.b		; D0 F1
	beq -31.b		; F0 E1
	cop $14.b		; 02 14
	bne 100.b		; D0 64
	brk $2C.b		; 00 2C
	and $0FB230.l,X		; 3F 30 B2 0F
	cpx #$0D.b		; E0 0D
	stz $F1.b		; 64 F1
	sbc $FD.b		; E5 FD
	ora $96B225.l		; 0F 25 B2 96
	inc A		; 1A
	bvs  15.b		; 70 0F
	sbc $FE51DF.l		; EF DF 51 FE
	cmp $841D00.l,X		; DF 00 1D 84
	cop $0F.b		; 02 0F
	cmp $F3FF31.l,X		; DF 31 FF F3
	trb $8436.w		; 1C 36 84
	lda $FE76CC.l		; AF CC 76 FE
	jmp.w [$3122]		; DC 22 31
	cpx $C080.w		; EC 80 C0
	mvp $D1,$FB		; 44 FB D1
	and ($EE.b)		; 32 EE
	cpx #$F1.b		; E0 F1
	sty $1F.b		; 84 1F
	ora ($9C.b)		; 12 9C
	bpl  83.b		; 10 53
	sbc $45C0.w		; ED C0 45
	sty $1E.b,X		; 94 1E
	sbc $031102.l,X		; FF 02 11 03
	trb $15AE.w		; 1C AE 15
	sty $5D.b,X		; 94 5D
	cmp $41F3.w		; CD F3 41
	sbc $24D0.w,X		; FD D0 24
	rol $EFA4.w,X		; 3E A4 EF
	ora ($10.b),Y		; 11 10
	ora $BB1201.l		; 0F 01 12 BB
	trb $94.b		; 14 94
	bvc -68.b		; 50 BC
	sbc ($43.b),Y		; F1 43
	inc $23D0.w,X		; FE D0 23
	ora ($A8.b),Y		; 11 A8
	beq -15.b		; F0 F1
	jsr $11FF.w		; 20 FF 11
	inc $54FF.w,X		; FE FF 54
	sty $3B.b,X		; 94 3B
	cpy $3205.w		; CC 05 32
	jsr ($43D1.w,X)		; FC D1 43
	ora $01FFA4.l,X		; 1F A4 FF 01
	bpl -32.b		; 10 E0
	and ($FE.b),Y		; 31 FE
	dec $A442.w,X		; DE 42 A4
	bpl -37.b		; 10 DB
	bit $1F.b		; 24 1F
	cpx #$10.b		; E0 10
	cop $1E.b		; 02 1E
	tya		; 98
	ora ($24.b),Y		; 11 24
	cmp $F1121E.l		; CF 1E 12 F1
	ora $A030.w		; 0D 30 A0
	brk $21.b		; 00 21
	cmp $1F01.w		; CD 01 1F
	sbc $9420F0.l		; EF F0 20 94
	sbc $1B4004.l		; EF 04 40 1B
	ora $DCB34F.l,X		; 1F 4F B3 DC
	ldy #$F2.b		; A0 F2
	cmp $11FFF0.l		; CF F0 FF 11
	lda ($01.b,S),Y		; B3 01
	jsr $31A0.w		; 20 A0 31
	inc $F504.w,X		; FE 04 F5
	cmp ($40.b)		; D2 40
	asl A		; 0A
	and [$A0.b],Y		; 37 A0
	cmp ($20.b,X)		; C1 20
	plx		; FA
	jsl $0EEEE0.l		; 22 E0 EE 0E
	jsr $10A0.w		; 20 A0 10
	sbc ($43.b,S),Y		; F3 43
	bpl  48.b		; 10 30
	cmp $0EF5.w,X		; DD F5 0E
	bcs  -4.b		; B0 FC
	and ($F2.b,S),Y		; 33 F2
	cmp ($FF.b,X)		; C1 FF
	and $B00140.l		; 2F 40 01 B0
	pea $ED33.w		; F4 33 ED
	and $01.b,S		; 23 01
	rol $F0EE.w		; 2E EE F0
	ldy #$FE.b		; A0 FE
	cpy #$31.b		; C0 31
	sbc ($EE.b)		; F2 EE
	sbc $0012.w		; ED 12 00
	bcs   4.b		; B0 04
	brk $50.b		; 00 50
	asl $10FE.w,X		; 1E FE 10
	ora $1DA4F0.l		; 0F F0 A4 1D
	cmp ($4D.b,S),Y		; D3 4D
	ldy $5F.b,X		; B4 5F
	ora ($FD.b),Y		; 11 FD
	ora ($A0.b,X)		; 01 A0
	ora ($3A.b)		; 12 3A
	sbc ($EF.b,X)		; E1 EF
	sbc ($0E.b),Y		; F1 0E
	eor ($34.b),Y		; 51 34
	ldy $E1.b		; A4 E1
	ora $0D3B.w,X		; 1D 3B 0D
	cmp ($D2.b),Y		; D1 D2
	and ($61.b)		; 32 61
	clv		; B8
	bpl  -1.b		; 10 FF
	bpl  -2.b		; 10 FE
	ora ($04.b,X)		; 01 04
.ACCU 16
	rep #$21		; C2 21
	clv		; B8
	sbc ($1D.b,X)		; E1 1D
	brk $FE.b		; 00 FE
	and $22F2.w		; 2D F2 22
	pei ($B8.b)		; D4 B8
	lsr A		; 4A
	bit $BF.b		; 24 BF
	asl $EEE3.w		; 0E E3 EE
	lsr $C81F.w		; 4E 1F C8
	and ($B5.b),Y		; 31 B5
	bit $EFF2.w		; 2C F2 EF
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	inc $2F.b,X		; F6 2F
	sbc $DC.b		; E5 DC
	rol $DEB5.w,X		; 3E B5 DE
	and $B4.b,S		; 23 B4
	ora $452E33.l		; 0F 33 2E 45
	cpy #$1E.b		; C0 1E
	ora $0E.b,S		; 03 0E
	ldy $1E.b,X		; B4 1E
	cpx #$FD.b		; E0 FD
	rol $43C3.w		; 2E C3 43
	tsb $5D.b		; 04 5D
	cpy $F0.b		; C4 F0
	inc $01FE.w		; EE FE 01
	and ($13.b),Y		; 31 13
	tsb $C4F0.w		; 0C F0 C4
	sbc $4F1311.l		; EF 11 13 4F
	cpx #$EC.b		; E0 EC
	beq   0.b		; F0 00
	cpy #$ED.b		; C0 ED
	inc $61.b,X		; F6 61
	ora ($0E.b)		; 12 0E
	sbc $C811EE.l,X		; FF EE 11 C8
	ora ($0E.b,X)		; 01 0E
	ora ($D0.b,X)		; 01 D0
	mvp $40,$BF		; 44 BF 40
	lda ($B4.b,X)		; A1 B4
	asl $01CE.w,X		; 1E CE 01
	eor ($E1.b,S),Y		; 53 E1
	ldy $DE44.w,X		; BC 44 DE
	clv		; B8
	ror $2BB1.w,X		; 7E B1 2B
	and $0D.b		; 25 0D
	and ($C1.b,X)		; 21 C1
	dec $F2B4.w		; CE B4 F2
	eor $23.b,S		; 43 23
	and $CB.b,S		; 23 CB
	asl $45AE.w		; 0E AE 45
	ldy $00.b,X		; B4 00
	and $4CA6.w		; 2D A6 4C
	sbc ($12.b,X)		; E1 12
	brk $0C.b		; 00 0C
	cpy $11.b		; C4 11
	brk $00.b		; 00 00
	sbc $F134EE.l,X		; FF EE 34 F1
	ora ($B4.b),Y		; 11 B4
	stp		; DB
	ora ($DB.b)		; 12 DB
	sbc $4F.b		; E5 4F
	cpx #$F1.b		; E0 F1
	jsl $F0FEB4.l		; 22 B4 FE F0
	ora $FE2121.l,X		; 1F 21 21 FE
	brk $BC.b		; 00 BC
	cpy #$AB.b		; C0 AB
	bit $23.b,X		; 34 23
	eor ($DE.b)		; 52 DE
	asl $21CF.w,X		; 1E CF 21
	ldy $E0.b,X		; B4 E0
	sbc DMASRC1L.w		; ED 12 43
	inc $FEF0.w,X		; FE F0 FE
	cmp $2113C4.l,X		; DF C4 13 21
	asl $C2ED.w		; 0E ED C2
	.db $42, $21		; 42 21
	bpl -56.b		; 10 C8
	cmp ($20.b),Y		; D1 20
	cpx #$32.b		; E0 32
	sbc $1FF2.w,X		; FD F2 1F
	beq -88.b		; F0 A8
	tsb $5C.b		; 04 5C
	cpx #$01.b		; E0 01
	ora $FBDE00.l,X		; 1F 00 DE FB
	bcs -111.b		; B0 91
	lsr $66.b,X		; 56 66
	adc ($DE.b,X)		; 61 DE
	xba		; EB
	ldx $B422.w		; AE 22 B4
	ora $5E06BD.l,X		; 1F BD 06 5E
	pei ($0B.b)		; D4 0B
	beq -14.b		; F0 F2
	cpy $12.b		; C4 12
	ora $51B2FE.l		; 0F FE B2 51
	ora ($3E.b,X)		; 01 3E
	lda ($B4.b)		; B2 B4
	inc A		; 1A
	bne  99.b		; D0 63
	ora ($DC.b,X)		; 01 DC
	ora $31.b,S		; 03 31
	cmp ($C0.b),Y		; D1 C0
	bpl   0.b		; 10 00
	beq  18.b		; F0 12
	and ($10.b,X)		; 21 10
	nop		; EA
	lda ($C4.b)		; B2 C4
	rol $FC01.w,X		; 3E 01 FC
	sbc ($FF.b,S),Y		; F3 FF
	ora ($11.b,X)		; 01 11
	beq -76.b		; F0 B4
	ldx $4024.w,Y		; BE 24 40
	cmp ($0D.b),Y		; D1 0D
	sbc ($02.b,X)		; E1 02
	eor ($C4.b,X)		; 41 C4
	asl $D2FE.w		; 0E FE D2
	eor ($01.b),Y		; 51 01
	ora $1DC2.w,X		; 1D C2 1D
	clv		; B8
	eor ($20.b)		; 52 20
.ACCU 16
	rep #$A1		; C2 A1
	and ($4C.b)		; 32 4C
	cpy $0D.b		; C4 0D
	cpy $D0.b		; C4 D0
	bpl  17.b		; 10 11
	ora $64BE0F.l,X		; 1F 0F BE 64
	beq -64.b		; F0 C0
	mvp $00,$FD		; 44 FD 00
	inc $11E0.w		; EE E0 11
	ora $B4D0.w		; 0D D0 B4
	rti		; 40

	bne  48.b		; D0 30
	ldx $263F.w		; AE 3F 26
	sbc $DFC4FB.l,X		; FF FB C4 DF
	and $00.b,X		; 35 00
	bpl -35.b		; 10 DD
	and ($FF.b,X)		; 21 FF
	ora ($C0.b,X)		; 01 C0
	ora ($0D.b,X)		; 01 0D
	cmp ($31.b,X)		; C1 31
	ora ($20.b,X)		; 01 20
	inc $C4FF.w		; EE FF C4
	ora ($10.b)		; 12 10
	cmp $0F36ED.l,X		; DF ED 36 0F
	bpl -19.b		; 10 ED
	cpy #$F0.b		; C0 F0
	ora $FCF0FE.l		; 0F FE F0 FC
	sbc $41.b,S		; E3 41
	beq -56.b		; F0 C8
	trb $0E03.w		; 1C 03 0E
	and ($C0.b),Y		; 31 C0
	beq   3.b		; F0 03
	tad		; 5B
	clv		; B8
	cpy $ED.b		; C4 ED
	sbc $4C.b		; E5 4C
	ora $B21DE3.l,X		; 1F E3 1D B2
	cpy $55.b		; C4 55
	inc $FB02.w		; EE 02 FB
	sbc ($2F.b,S),Y		; F3 2F
	and ($EF.b),Y		; 31 EF
	clv		; B8
	sbc $B26A26.l		; EF 26 6A B2
	inc $0014.w		; EE 14 00
	beq -64.b		; F0 C0
	ora $54BEFE.l		; 0F FE BE 54
	ora ($31.b),Y		; 11 31
	cmp $C40F.w,X		; DD 0F C4
	sbc ($3F.b,S),Y		; F3 3F
	inc $24FE.w		; EE FE 24
	ora ($0F.b,X)		; 01 0F
	sbc $01F0C0.l		; EF C0 F0 01
	ora $14DCFF.l		; 0F FF DC 14
	jsr $C423.w		; 20 23 C4
	cmp $F021.w,X		; DD 21 F0
	ora ($0E.b),Y		; 11 0E
	cmp ($4D.b,S),Y		; D3 4D
	ora ($C4.b,X)		; 01 C4
	bpl -48.b		; 10 D0
	ora $0E1200.l,X		; 1F 00 12 0E
	dec $B451.w,X		; DE 51 B4
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	lda ($3C.b),Y		; B1 3C
	sbc ($FE.b)		; F2 FE
	ora $43C0D2.l,X		; 1F D2 C0 43
	brk $21.b		; 00 21
	inc $FF0F.w		; EE 0F FF
	ora ($10.b)		; 12 10
	ldy $EC.b,X		; B4 EC
	ora $40.b		; 05 40
	ora $0F20C0.l,X		; 1F C0 20 0F
	inc $EFC0.w,X		; FE C0 EF
	cmp $1F35.w,X		; DD 35 1F
	and $ED.b,S		; 23 ED
	ora ($0F.b,X)		; 01 0F
	bcs   1.b		; B0 01
	jsr ($6192.w,X)		; FC 92 61
	cop $42.b		; 02 42
	dec $B01F.w		; CE 1F B0
	inc $1C36.w		; EE 36 1C
	sta $1540.w,X		; 9D 40 15
	ora $10C033.l		; 0F 33 C0 10
	ora $F5FCEF.l		; 0F EF FC F5
	bmi   2.b		; 30 02
	asl $C1B0.w,X		; 1E B0 C1
	asl $3F03.w		; 0E 03 3F
	stp		; DB
	sbc $21.b,S		; E3 21
	eor ($C0.b)		; 52 C0
	sbc $000000.l,X		; FF 00 00 00
	brk $FC.b		; 00 FC
	cmp ($31.b,S),Y		; D3 31
	cpy #$10.b		; C0 10
	ora $FF1FF1.l		; 0F F1 1F FF
	sbc $C042C0.l,X		; FF C0 42 C0
	brk $F1.b		; 00 F1
	ora $F0F010.l		; 0F 10 F0 F0
	jsr ($B0F5.w,X)		; FC F5 B0
	bvc  -2.b		; 50 FE
	and ($F4.b,X)		; 21 F4
	bit $10DF.w		; 2C DF 10
	stp		; DB
	ldy $66.b,X		; B4 66
	ldx $4CE2.w,Y		; BE E2 4C
	ora ($B0.b)		; 12 B0
	ora ($1B.b),Y		; 11 1B
	cpy #$D3.b		; C0 D3
	rti		; 40

	inc $F112.w,X		; FE 12 F1
	and $C000F0.l		; 2F F0 00 C0
	jmp.w [$0F35]		; DC 35 0F
	sbc ($1F.b),Y		; F1 1F
	ora ($FF.b)		; 12 FF
	ora $E50DC0.l		; 0F C0 0D E5
	and $E220F0.l,X		; 3F F0 20 E2
	asl $B0F1.w,X		; 1E F1 B0
	and ($DD.b),Y		; 31 DD
	and $0E.b		; 25 0E
	sbc ($40.b)		; F2 40
	jsl $FFC0DD.l		; 22 DD C0 FF
	sbc $3EF6.w,X		; FD F6 3E
	sbc $2EF32F.l		; EF 2F F3 2E
	cpy $11.b		; C4 11
	asl $5AE5.w		; 0E E5 5A
	sbc ($1F.b),Y		; F1 1F
	sbc $1D.b,S		; E3 1D
	cpy #$E1.b		; C0 E1
	ora $E053DE.l		; 0F DE 53 E0
	and ($EF.b,X)		; 21 EF
	and ($C0.b,X)		; 21 C0
	sbc $24ED10.l		; EF 10 ED 24
	asl $0E02.w		; 0E 02 0E
	ora ($C0.b),Y		; 11 C0
	inc $EE00.w		; EE 00 EE
	eor $FE.b,S		; 43 FE
	ora ($FF.b)		; 12 FF
	jsr $BDB0.w		; 20 B0 BD
	and ($DD.b,X)		; 21 DD
	adc $DC.b,X		; 75 DC
	ora $0F.b,S		; 03 0F
	eor ($C0.b,X)		; 41 C0
	sbc $52D000.l		; EF 00 D0 52
	inc $EF02.w,X		; FE 02 EF
	jsr $F0C0.w		; 20 C0 F0
	ora $F050C2.l		; 0F C2 50 F0
	and $C41FE1.l		; 2F E1 1F C4
	ora ($FE.b,X)		; 01 FE
	eor $DE.b,S		; 43 DE
	cop $FE.b		; 02 FE
	and ($EF.b,X)		; 21 EF
	cpy $10.b		; C4 10
	sbc ($3E.b)		; F2 3E
	sbc $2ED130.l		; EF 30 D1 2E
	brk $B4.b		; 00 B4
	ora $AE66.w		; 0D 66 AE
	sbc ($0B.b,S),Y		; F3 0B
	and ($B0.b,S),Y		; 33 B0
	ora $50E5B0.l,X		; 1F B0 E5 50
	inc $C32F.w,X		; FE 2F C3
	rol $B2FD.w		; 2E FD B2
	ldy $5D.b,X		; B4 5D
	jmp.w [$A233]		; DC 33 A2
	jmp $E4F0.w		; 4C F0 E4
	ror $EDB4.w		; 6E B4 ED
	ora $C1.b,S		; 03 C1
	and $F6FF.w,X		; 3D FF F6
	ror A		; 6A
	beq -80.b		; F0 B0
	ora $ED1EBE.l,X		; 1F BE 1E ED
	dec $61.b,X		; D6 61
	ora $E4B40E.l,X		; 1F 0E B4 E4
	sbc $104CF3.l,X		; FF F3 4C 10
	cpx #$E2.b		; E0 E2
	asl $EDB0.w,X		; 1E B0 ED
	rol $10.b		; 26 10
	brk $0E.b		; 00 0E
	ora ($DC.b,X)		; 01 DC
	cpy $B4.b		; C4 B4
	lsr A		; 4A
	inc $D42E.w,X		; FE 2E D4
	ora $1BE43F.l		; 0F 3F E4 1B
	bcs  -2.b		; B0 FE
	ora ($F1.b,S),Y		; 13 F1
	asl $C6EC.w,X		; 1E EC C6
	adc ($1F.b,X)		; 61 1F
	cpy #$1F.b		; C0 1F
	sbc ($0E.b,X)		; E1 0E
	dec $0053.w,X		; DE 53 00
	brk $EF.b		; 00 EF
	cpy #$2F.b		; C0 2F
	cmp $0035.w		; CD 35 00
	and ($ED.b,X)		; 21 ED
	beq  -1.b		; F0 FF
	cpy #$F4.b		; C0 F4
	bmi  31.b		; 30 1F
	ora $ED1FF1.l		; 0F F1 1F ED
	and $B0.b,S		; 23 B0
	pea $0C0F.w		; F4 0F 0C
	bpl -46.b		; 10 D2
	asl $2D14.w		; 0E 14 2D
	cpy #$00.b		; C0 00
	sbc $0F0F01.l,X		; FF 01 0F 0F
	cmp ($40.b),Y		; D1 40
	sbc ($C0.b),Y		; F1 C0
	and $CF0DE1.l		; 2F E1 0D CF
	eor ($11.b,S),Y		; 53 11
	sbc $20C0DF.l,X		; FF DF C0 20
	cmp $0024.w,X		; DD 24 00
	ora ($FE.b),Y		; 11 FE
	brk $FF.b		; 00 FF
	ldy $21.b,X		; B4 21
	and $C110.w,X		; 3D 10 C1
	bpl  14.b		; 10 0E
	sbc ($11.b,S),Y		; F3 11
	bcs  50.b		; B0 32
	asl $0EE0.w		; 0E E0 0E
	sbc $0334.w		; ED 34 03
	sbc $100DB0.l,X		; FF B0 0D 10
	cpx #$CF.b		; E0 CF
	.db $62, $02, $FE		; 62 02 FE
	cpx #$B0.b		; E0 B0
	bmi  15.b		; 30 0F
	lda ($7F.b,X)		; A1 7F
	ora ($00.b,S),Y		; 13 00
	cmp ($2C.b),Y		; D1 2C
	cpy $0F.b		; C4 0F
	.db $42, $D2		; 42 D2
	sbc $D020FF.l,X		; FF FF 20 D0
	bit $C0.b,X		; 34 C0
	ora ($11.b),Y		; 11 11
	sbc $FD01.w,X		; FD 01 FD
	pea $2120.w		; F4 20 21
	bcs -36.b		; B0 DC
	sbc $FD.b,S		; E3 FD
	cmp $E02261.l,X		; DF 61 22 E0
	sbc $ED1EB0.l,X		; FF B0 1E ED
	cmp $30.b,X		; D5 30
	and $FDE2FF.l,X		; 3F FF E2 FD
	bcs -20.b		; B0 EC
	mvn $0E,$F4		; 54 F4 0E
	inc $CC20.w,X		; FE 20 CC
	cmp $C0.b		; C5 C0
	jsr $0F20.w		; 20 20 0F
	sbc ($FE.b),Y		; F1 FE
	bne  65.b		; D0 41
	ora ($B0.b)		; 12 B0
	ora $BC2DDF.l		; 0F DF 2D BC
	ror $13.b		; 66 13
	bpl -35.b		; 10 DD
	cpy #$10.b		; C0 10
	sbc $11F4.w		; ED F4 11
	jsr $F1FE.w		; 20 FE F1
	inc $CFB0.w,X		; FE B0 CF
	.db $62, $23, $F0		; 62 23 F0
	inc $DC1E.w		; EE 1E DC
	dec $B0.b,X		; D6 B0
	and ($51.b),Y		; 31 51
	asl $FDD1.w		; 0E D1 FD
	wai		; CB
	mvn $B0,$15		; 54 15 B0
	cop $ED.b		; 02 ED
	ora $41B5EC.l,X		; 1F EC B5 41
	eor ($1E.b),Y		; 51 1E
	bcs -47.b		; B0 D1
	inc $35CB.w,X		; FE CB 35
	ora $11.b,X		; 15 11
	sbc $B00F.w,X		; FD 0F B0
	cpx $51A3.w		; EC A3 51
	eor ($2F.b),Y		; 51 2F
	bne  -2.b		; D0 FE
	dex		; CA
	bcs  37.b		; B0 25
	ora $22.b		; 05 22
	sbc $ED0F.w,X		; FD 0F ED
	lda $43B051.l		; AF 51 B0 43
	and ($EF.b,X)		; 21 EF
	sbc $23C4EB.l,X		; FF EB C4 23
	.db $42, $B0		; 42 B0
	rol $FEF0.w		; 2E F0 FE
	tyx		; BB
	ora ($24.b,S),Y		; 13 24
	and $0F.b,S		; 23 0F
	ldy $1F.b,X		; B4 1F
	inc $6EE3.w,X		; FE E3 6E
	jsr $D10F.w		; 20 0F D1
	beq -72.b		; F0 B8
	sbc $4BBF44.l		; EF 44 BF 4B
	bit $F130.w,X		; 3C 30 F1
	cmp ($B0.b),Y		; D1 B0
	cmp ($13.b,S),Y		; D3 13
	and ($30.b,S),Y		; 33 30
	brk $FE.b		; 00 FE
	tyx		; BB
	cmp ($B4.b)		; D2 B4
	sbc ($01.b)		; F2 01
	ora $FE1F.w		; 0D 1F FE
	sbc $B50214.l		; EF 14 02 B5
	bpl  31.b		; 10 1F
	sbc $E1EF0F.l,X		; FF 0F EF E1
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	pea $E12F.w		; F4 2F E1
	eor ($F6.b)		; 52 F6
	beq   1.b		; F0 01
	ora ($64.b,X)		; 01 64
	brk $00.b		; 00 00
	sbc $DF.b		; E5 DF
	ora $1D.b,S		; 03 1D
	ora $CC.b,S		; 03 CC
	stz $33.b		; 64 33
	sbc $11.b,S		; E3 11
	sbc $FB.b		; E5 FB
	dec $CC.b,X		; D6 CC
	bit $70.b		; 24 70
	brk $01.b		; 00 01
	ora ($F1.b,X)		; 01 F1
	bpl -15.b		; 10 F1
	and $0C7004.l		; 2F 04 70 0C
	bne -49.b		; D0 CF
	and ($EF.b),Y		; 31 EF
	and ($22.b,X)		; 21 22
	asl $5E74.w		; 0E 74 5E
	cmp ($1D.b),Y		; D1 1D
	eor ($FC.b)		; 52 FC
	ora $BD.b,S		; 03 BD
	eor ($80.b),Y		; 51 80
	cmp $FF33.w,X		; DD 33 FF
	eor $F1.b,S		; 43 F1
	eor ($DE.b,X)		; 41 DE
	bpl 112.b		; 10 70
	ldx $1F53.w,Y		; BE 53 1F
	bit $FC.b		; 24 FC
	ora ($B9.b,S),Y		; 13 B9
	sbc $34CF70.l,X		; FF 70 CF 34
	sbc $01DD55.l		; EF 55 DD 01
	cmp ($53.b),Y		; D1 53
	bra  15.b		; 80 0F
	ora $D01EE0.l,X		; 1F E0 1E D0
	ora $3FC1.w		; 0D C1 3F
	bra   6.b		; 80 06
	rol $FE24.w,X		; 3E 24 FE
	bpl -33.b		; 10 DF
	bmi -79.b		; 30 B1
	bvs  73.b		; 70 49
	lda $FD.b,S		; A3 FD
	mvp $F0,$54		; 44 54 F0
	lsr $7090.w,X		; 5E 90 70
	lsr $FCA2.w,X		; 5E A2 FC
	cmp $45F211.l,X		; DF 11 F2 45
	eor $EC0080.l		; 4F 80 00 EC
	ora $0D.b,S		; 03 0D
	jsl $F121DD.l		; 22 DD 21 F1
	stz $40.b,X		; 74 40
	sbc #$3D.b		; E9 3D
	cmp ($5F.b,S),Y		; D3 5F
	rep #$4F		; C2 4F
	sbc $6BD560.l,X		; FF 60 D5 6B
	sbc [$FE.b],Y		; F7 FE
	and $BB2EBA.l		; 2F BA 2E BB
	bra   1.b		; 80 01
	ora $12DD01.l		; 0F 01 DD 12
	bne  31.b		; D0 1F
	cpy #$70.b		; C0 70
	and $FF3FC3.l		; 2F C3 3F FF
	jsr $0EF2.w		; 20 F2 0E
	ora ($70.b),Y		; 11 70
	inc $D13F.w,X		; FE 3F D1
	tas		; 1B
	cmp $1B.b,X		; D5 1B
	sbc $0D.b,S		; E3 0D
	bvs   2.b		; 70 02
	ora $E34E03.l		; 0F 03 4E E3
	rol $2D04.w,X		; 3E 04 2D
	stz $41.b,X		; 74 41
	sbc $DD421E.l,X		; FF 1E 42 DD
	and $601CF2.l		; 2F F2 1C 60
	sbc $50.b,X		; F5 50
	ora ($20.b),Y		; 11 20
	cpx #$2E.b		; E0 2E
	sbc $2C.b,S		; E3 2C
	rts		; 60

	cpx #$CD.b		; E0 CD
	cpx $D4ED.w		; EC ED D4
	and $702ADE.l		; 2F DE 2A 70
	cmp $DCF20B.l		; CF 0B F2 DC
	jsl $F101F0.l		; 22 F0 01 F1
	bvs  14.b		; 70 0E
	sbc $DE30CF.l,X		; FF CF 30 DE
	ora ($BF.b,X)		; 01 BF
	eor $FDA260.l,X		; 5F 60 A2 FD
	ldx $EFE3.w,Y		; BE E3 EF
	sbc $0C.b,S		; E3 0C
	jmp.w [$D060]		; DC 60 D0
	sbc $AF33.w		; ED 33 AF
	ora ($0F.b,X)		; 01 0F
	asl $FA.b,X		; 16 FA
	bra -18.b		; 80 EE
	ora $2E.b,S		; 03 2E
	ora $0E.b,S		; 03 0E
	lsr $ED.b		; 46 ED
	bvc -76.b		; 50 B4
	sbc $D03101.l,X		; FF 01 31 D0
	asl $1C15.w,X		; 1E 15 1C
	beq -56.b		; F0 C8
	inc $2C34.w		; EE 34 2C
	cmp ($EF.b)		; D2 EF
	eor $CE.b,S		; 43 CE
	rol $CDC4.w,X		; 3E C4 CD
	ora $40.b		; 05 40
	sbc ($ED.b),Y		; F1 ED
	and $F0.b,S		; 23 F0
	asl $FFC8.w		; 0E C8 FF
	stz $BD.b		; 64 BD
	and ($C1.b,X)		; 21 C1
	lsr $0DE1.w,X		; 5E E1 0D
	cpy #$AA.b		; C0 AA
	ora $22.b,S		; 03 22
	and ($F0.b),Y		; 31 F0
	and ($12.b,X)		; 21 12
	tsb $D4C4.w		; 0C C4 D4
	eor $11FE01.l,X		; 5F 01 FE 11
	ora $C8CD2F.l		; 0F 2F CD C8
	mvp $10,$CE		; 44 CE 10
	cmp ($2F.b,S),Y		; D3 2F
	pei ($FC.b)		; D4 FC
	sbc ($C8.b)		; F2 C8
	.db $42, $ED		; 42 ED
	brk $F2.b		; 00 F2
	and $F21BE2.l		; 2F E2 1B F2
	iny		; C8
	and $EC.b		; 25 EC
	brk $F1.b		; 00 F1
	lsr $1BE2.w		; 4E E2 1B
	sbc ($C8.b)		; F2 C8
	eor $CE.b,S		; 43 CE
	ora ($D4.b,X)		; 01 D4
	ora $E20DE2.l,X		; 1F E2 0D E2
	iny		; C8
	mvp $00,$AF		; 44 AF 00
	sbc ($2D.b,S),Y		; F3 2D
	sbc ($FE.b)		; F2 FE
	sbc ($C8.b),Y		; F1 C8
	eor ($BF.b)		; 52 BF
	sbc ($E3.b)		; F2 E3
	asl $EDF3.w,X		; 1E F3 ED
	cop $C4.b		; 02 C4
	mvp $FF,$0E		; 44 0E FF
	sbc ($2F.b)		; F2 2F
	cop $ED.b		; 02 ED
	bne -60.b		; D0 C4
	eor $FE.b		; 45 FE
	sbc $022FF2.l,X		; FF F2 2F 02
	sbc $C0EF.w		; ED EF C0
	cpx $41.b		; E4 41
	beq -32.b		; F0 E0
	jsl $DB1F02.l		; 22 02 1F DB
	cpy #$C2.b		; C0 C2
	eor ($F0.b)		; 52 F0
	sbc $200112.l,X		; FF 12 01 20
	sbc $BEC0.w		; ED C0 BE
	mvp $0F,$1F		; 44 1F 0F
	ora ($21.b,X)		; 01 21
	ora ($FD.b),Y		; 11 FD
	cpy $F0.b		; C4 F0
	mvp $0F,$EE		; 44 EE 0F
	ora ($10.b,X)		; 01 10
	brk $FF.b		; 00 FF
	cpy #$DC.b		; C0 DC
	bne  51.b		; D0 33
	bpl  -1.b		; 10 FF
	sbc ($22.b),Y		; F1 22
	ora ($B4.b),Y		; 11 B4
	inc $01EE.w,X		; FE EE 01
	ora ($3F.b,S),Y		; 13 3F
	bne  -1.b		; D0 FF
	trb $A8.b		; 14 A8
	cmp $F4EE.w		; CD EE F4
	and $3110FE.l		; 2F FE 10 31
	ora $19A4.w		; 0D A4 19
	trb $4E.b		; 14 4E
	eor ($CC.b),Y		; 51 CC
	eor $0CFD.w		; 4D FD 0C
	ldy #$CC.b		; A0 CC
	wai		; CB
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	pea $5534.w		; F4 34 55
	jsl $FCE394.l		; 22 94 E3 FC
	sbc $52DFEE.l		; EF EE DF 52
	cmp $5E.b,S		; C3 5E
	sty $F2.b,X		; 94 F2
	beq  66.b		; F0 42
	bne  31.b		; D0 1F
	cmp ($2E.b)		; D2 2E
	cmp ($74.b)		; D2 74
	tsb $F153.w		; 0C 53 F1
	cpx $201D.w		; EC 1D 20
	cmp $7453.w,Y		; D9 53 74
	ora ($3B.b)		; 12 3B
	ora $1FF42F.l,X		; 1F 2F F4 1F
	ora $78C0.w		; 0D C0 78
	bit $D040.w		; 2C 40 D0
	ldx $30.b		; A6 30
	jsr ($2ED6.w,X)		; FC D6 2E
	stz $D1.b,X		; 74 D1
	inc $DD36.w,X		; FE 36 DD
	xce		; FB
	mvn $FB,$2D		; 54 2D FB
	stz $D3.b,X		; 74 D3
	and $0A.b,X		; 35 0A
	sbc $E41002.l		; EF 02 10 E4
	bpl 116.b		; 10 74
	ldx $21D7.w,Y		; BE D7 21
	cpx $2EE2.w		; EC E2 2E
	and $70E5.w		; 2D E5 70
	and $20BCED.l		; 2F ED BC 20
	asl $13DA.w		; 0E DA 13
	bpl 116.b		; 10 74
	dec $FE41.w,X		; DE 41 FE
	ora $0D45.w,Y		; 19 45 0D
	sbc $107421.l,X		; FF 21 74 10
	tsb $1E15.w		; 0C 15 1E
	phd		; 0B
	cmp $5E.b		; C5 5E
	beq 112.b		; F0 70
	sta $B1DDFF.l,X		; 9F FF DD B1
	ora ($0D.b),Y		; 11 0D
	txy		; 9B
	and ($70.b)		; 32 70
	eor $021FBB.l		; 4F BB 1F 02
	xce		; FB
	jsr $BCFB.w		; 20 FB BC
	bvs -13.b		; 70 F3
	cpx #$D3EA.w		; E0 EA D3
	and ($FD.b,X)		; 21 FD
	sbc ($01.b)		; F2 01
	bvs  27.b		; 70 1B
	cmp ($1D.b,S),Y		; D3 1D
	jsr $42DF.w		; 20 DF 42
	beq -66.b		; F0 BE
	bvs  65.b		; 70 41
	cop $DA.b		; 02 DA
	ora ($01.b)		; 12 01
	phx		; DA
	brk $11.b		; 00 11
	bvs -39.b		; 70 D9
	cmp $12.b		; C5 12
	stp		; DB
	cmp ($21.b,S),Y		; D3 21
	ora $80A2.w,X		; 1D A2 80
	bpl  14.b		; 10 0E
	cmp $DF1F21.l,X		; DF 21 1F DF
	eor ($10.b,X)		; 41 10
	bvs -70.b		; 70 BA
	and $12.b,S		; 23 12
	xba		; EB
	ora $B31BD3.l,X		; 1F D3 1B B3
	bvs  32.b		; 70 20
	xce		; FB
	lda ($7F.b)		; B2 7F
	pea $35A9.w		; F4 A9 35
	ora ($70.b)		; 12 70
	wai		; CB
	and ($DF.b)		; 32 DF
	phx		; DA
	pea $F932.w		; F4 32 F9
	cmp $74.b		; C5 74
	jsr ($E62B.w,X)		; FC 2B E6
	rol $A5FE.w,X		; 3E FE A5
	adc $70F1.w		; 6D F1 70
	xba		; EB
	trb $11.b		; 14 11
	xba		; EB
	ora $00.b,X		; 15 00
	bmi -66.b		; 30 BE
	bvs  53.b		; 70 35
	bmi -99.b		; 30 9D
	and ($21.b,S),Y		; 33 21
	tsx		; BA
	ora ($F0.b,S),Y		; 13 F0
	bvs  45.b		; 70 2D
	bcs  33.b		; B0 21
	and ($B0.b),Y		; 31 B0
	eor $FF.b,S		; 43 FF
	cpx $2380.w		; EC 80 23
	brk $0E.b		; 00 0E
.ACCU 8
	sep #$20		; E2 20
	brk $DF.b		; 00 DF
	eor $70.b,S		; 43 70
	cmp $1F140D.l,X		; DF 0D 14 1F
	asl $52CF.w,X		; 1E CF 52
	sbc #$70.b		; E9 70
	lda ($43.b),Y		; B1 43
	ora $36CE.w		; 0D CE 36
	eor $B4FA.w		; 4D FA B4
	bra  48.b		; 80 30
	dec $F0FF.w,X		; DE FF F0
	ora ($0B.b)		; 12 0B
	cmp ($42.b),Y		; D1 42
	bra  14.b		; 80 0E
	cmp $0B0130.l,X		; DF 30 01 0B
	cmp ($1F.b,S),Y		; D3 1F
	ora $21F090.l		; 0F 90 F0 21
	brk $00.b		; 00 00
	xba		; EB
	lda ($75.b)		; B2 75
	eor ($C0.b,S),Y		; 53 C0
	brk $11.b		; 00 11
	ora $44CFED.l		; 0F ED CF 44
	ora $13C00F.l,X		; 1F 0F C0 13
	bmi  -2.b		; 30 FE
	phx		; DA
	dec $71.b		; C6 71
	sbc $43C0E1.l		; EF E1 C0 43
	brk $FD.b		; 00 FD
	stz $0F65.w,X		; 9E 65 0F
	inc $C023.w,X		; FE 23 C0
	jsr $DA1F.w		; 20 1F DA
	sbc $40.b,X		; F5 40
	ora $C031E1.l		; 0F E1 31 C0
	ora ($0E.b,X)		; 01 0E
	ldx $0054.w		; AE 54 00
	inc $2013.w,X		; FE 13 20
	cpy $00.b		; C4 00
	sbc $5FE6.w,X		; FD E6 5F
	cmp $DE44FF.l		; CF FF 44 DE
	cpy #$FB00.w		; C0 00 FB
	sta ($73.b)		; 92 73
	sbc $1F35DE.l,X		; FF DE 35 1F
	cpy #$FC00.w		; C0 00 FC
	lda $62.b,S		; A3 62
	sbc $1F35EE.l,X		; FF EE 35 1F
	cpy #$FC00.w		; C0 00 FC
	lda $62.b,S		; A3 62
	sbc $0F34DF.l		; EF DF 34 0F
	cpy #$EB00.w		; C0 00 EB
	ldy $61.b,X		; B4 61
	sbc $FF44EF.l		; EF EF 44 FF
	cpy #$EC00.w		; C0 00 EC
	ldx #$EF62.w		; A2 62 EF
	cpx #$0033.w		; E0 33 00
	cpy #$FD10.w		; C0 10 FD
	ldx $FE65.w		; AE 65 FE
	sbc $C01023.l,X		; FF 23 10 C0
	bpl  14.b		; 10 0E
	tyx		; BB
	lsr $1E.b		; 46 1E
	sbc $C02002.l,X		; FF 02 20 C0
	ora ($FE.b),Y		; 11 FE
	wai		; CB
	asl $3F.b,X		; 16 3F
	sbc $C431F1.l,X		; FF F1 31 C4
	beq  14.b		; F0 0E
	sbc $FF0C54.l		; EF 54 0C FF
	ora ($10.b)		; 12 10
	clv		; B8
	cpy $0D.b		; C4 0D
	sbc ($54.b,S),Y		; F3 54
	lda $43E3.w,Y		; B9 E3 43
	sbc $D2B8.w,X		; FD B8 D2
	brk $E1.b		; 00 E1
	eor $0A.b,S		; 43 0A
.ACCU 16
	rep #$23		; C2 23
	ora $00EDB4.l,X		; 1F B4 ED 00
	cmp $DC4204.l,X		; DF 04 42 DC
	ora ($12.b,X)		; 01 12
	ldy $1C.b		; A4 1C
	sbc ($EC.b,X)		; E1 EC
	sbc $34.b,S		; E3 34
	ora $01E0.w,X		; 1D E0 01
	sty $D4.b		; 84 D4
	asl $EE03.w		; 0E 03 EE
	jsr $F1FF.w		; 20 FF F1
	.db $42, $84		; 42 84
	and $3F349B.l,X		; 3F 9B 34 3F
	cmp $21E02F.l		; CF 2F E0 21
	sty $51.b		; 84 51
	lda $11F1.w,X		; BD F1 11
	cop $1B.b		; 02 1B
	cpy #$88E5.w		; C0 E5 88
	rol A		; 2A
	cmp ($E4.b,X)		; C1 E4
	and $F3FDD3.l,X		; 3F D3 FD F3
	sbc ($78.b)		; F2 78
	ora $2BD2D0.l,X		; 1F D0 D2 2B
	adc ($BB.b,S),Y		; 73 BB
	ora ($14.b,X)		; 01 14
	bvs  52.b		; 70 34
	ora $ACEDCD.l,X		; 1F CD ED AC
	ora ($0A.b),Y		; 11 0A
	ldy DMASRC7B.w		; AC 74 43
	cmp $0B11.w,X		; DD 11 0B
	and $DF.b,X		; 35 DF
	tsb $70B6.w		; 0C B6 70
	eor ($1F.b,S),Y		; 53 1F
	lda $F3E0.w,Y		; B9 E0 F3
	bit $EDAB.w		; 2C AB ED
	bvs  34.b		; 70 22
	jsr ($C2BB.w,X)		; FC BB C2
	jsr $EDFF.w		; 20 FF ED
	sbc $31DE80.l		; EF 80 DE 31
	inc $F2EC.w,X		; FE EC F2
	brk $00.b		; 00 00
	cmp $F180.w,X		; DD 80 F1
	ora ($1C.b),Y		; 11 1C
	cmp $DF0021.l,X		; DF 21 00 DF
	brk $74.b		; 00 74
	cmp ($2F.b),Y		; D1 2F
	sbc ($0F.b,X)		; E1 0F
	jsl $0E53BD.l		; 22 BD 53 0E
	stz $ED.b,X		; 74 ED
	ora $3E.b,S		; 03 3E
	sbc ($DA.b,S),Y		; F3 DA
	and $EF.b,X		; 35 EF
	eor $029C70.l		; 4F 70 9C 02
	ora ($1E.b,X)		; 01 1E
	cmp ($0E.b),Y		; D1 0E
	sbc ($DA.b),Y		; F1 DA
	stz $43.b,X		; 74 43
	rep #$4C		; C2 4C
	ldy $5D.b,X		; B4 5D
	cmp ($1E.b),Y		; D1 1E
	pea $ED74.w		; F4 74 ED
	eor ($CD.b,X)		; 41 CD
	eor ($F2.b),Y		; 51 F2
	phd		; 0B
	pei ($5F.b)		; D4 5F
	sty $E1.b		; 84 E1
	sbc $1F1F02.l,X		; FF 02 1F 1F
	inc $E141.w		; EE 41 E1
	stz $1C.b,X		; 74 1C
	dec $2F.b		; C6 2F
	sbc ($0D.b,X)		; E1 0D
	ora ($0D.b,S),Y		; 13 0D
	bmi 116.b		; 30 74
	cmp $D052.w		; CD 52 D0
	and $F052CE.l,X		; 3F CE 52 F0
	asl $DE80.w,X		; 1E 80 DE
	brk $13.b		; 00 13
	and $20B0.w		; 2D B0 20
	sbc ($0E.b)		; F2 0E
	bvs -46.b		; 70 D2
	ora $120FE1.l,X		; 1F E1 0F 12
	asl $FBF3.w,X		; 1E F3 FB
	bvs   2.b		; 70 02
	sbc ($5D.b,X)		; E1 5D
	lda $0D033E.l		; AF 3E 03 0D
	sbc ($80.b,X)		; E1 80
	ora ($0F.b),Y		; 11 0F
	ora $0210D0.l,X		; 1F D0 10 02
	tsb $70E3.w		; 0C E3 70
	and $DCF3.w,X		; 3D F3 DC
	trb $01.b		; 14 01
	ora ($0F.b),Y		; 11 0F
	sbc $E22274.l		; EF 74 22 E2
	cpy $40F5.w		; CC F5 40
	cmp ($EB.b)		; D2 EB
	asl $90.b,X		; 16 90
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bpl  -1.b		; 10 FF
	sbc $C8D5.w		; ED D5 C8
	beq -14.b		; F0 F2
	sep #$00		; E2 00
	sbc ($F1.b,X)		; E1 F1
	sbc ($34.b,X)		; E1 34
	cpy #$EF40.w		; C0 40 EF
	cpx #$2034.w		; E0 34 20
	sbc $C4D2ED.l,X		; FF ED D2 C4
	rol $00C0.w,X		; 3E C0 00
	and $FE.b,S		; 23 FE
	beq  15.b		; F0 0F
	sbc $C0.b,S		; E3 C0
	eor ($FE.b,S),Y		; 53 FE
	inc $3103.w,X		; FE 03 31
	sbc $C0DEFF.l,X		; FF FF DE C0
	mvp $FE,$0E		; 44 0E FE
	cop $41.b		; 02 41
	sbc $C4ED0F.l,X		; FF 0F ED C4
	eor ($DC.b,S),Y		; 53 DC
	ora $EE3F12.l,X		; 1F 12 3F EE
	ora $F5C0FE.l,X		; 1F FE C0 F5
	eor $34E0EF.l		; 4F EF E0 34
	ora $C0FDF0.l,X		; 1F F0 FD C0
	cmp ($52.b,X)		; C1 52
	sbc $2F14FF.l		; EF FF 14 2F
	sbc ($0E.b),Y		; F1 0E
	cpy #$45CD.w		; C0 CD 45
	asl $03FE.w,X		; 1E FE 03
	rti		; 40

	beq  15.b		; F0 0F
	cpy $ED.b		; C4 ED
	stz $FB.b		; 64 FB
	bpl -13.b		; 10 F3
	and $1FE1.w,X		; 3D E1 1F
	cpy #$AFEC.w		; C0 EC AF
	stz $FF.b		; 64 FF
	inc $1F14.w,X		; FE 14 1F
	ora ($C0.b),Y		; 11 C0
	ora $50D5DA.l		; 0F DA D5 50
	sbc $0121E1.l		; EF E1 21 01
	ldy $00.b,X		; B4 00
	xba		; EB
	lda ($74.b)		; B2 74
	asl $01EF.w,X		; 1E EF 01
	cop $B8.b		; 02 B8
	sbc $44EE1E.l,X		; FF 1E EE 44
	sep #$0D		; E2 0D
	cmp ($1F.b)		; D2 1F
	clv		; B8
	and ($F0.b,X)		; 21 F0
	sbc $0F33EF.l,X		; FF EF 33 0F
	ora ($EE.b,X)		; 01 EE
	tay		; A8
	ora $04.b,S		; 03 04
	and $22E0CD.l		; 2F CD E0 22
	and ($E0.b)		; 32 E0
	ldy $F1.b		; A4 F1
	cpx $2303.w		; EC 03 23
	rol $FFDD.w,X		; 3E DD FF
	ora ($94.b,X)		; 01 94
	and $56BFFE.l,X		; 3F FE BF 56
	ora $2201.w,X		; 1D 01 22
	sbc $1290.w,X		; FD 90 12
	mvp $CD,$2D		; 44 2D CD
	sbc $EEEF.w		; ED EF EE
	brk $84.b		; 00 84
	cmp ($30.b),Y		; D1 30
	eor $CB.b,S		; 43 CB
	sbc ($01.b)		; F2 01
	sbc $FD8410.l,X		; FF 10 84 FD
	ora ($33.b,X)		; 01 33
	cpx $0101.w		; EC 01 01
	ora $EF840F.l,X		; 1F 0F 84 EF
	cop $12.b		; 02 12
	trb $21C1.w		; 1C C1 21
	ora $41740E.l,X		; 1F 0E 74 41
	bne  -2.b		; D0 FE
	ora [$1D.b]		; 07 1D
	sbc $7852A1.l		; EF A1 52 78
	ora $42E4.w,Y		; 19 E4 42
	cpy #$41FC.w		; C0 FC 41
	bit $74F0.w,X		; 3C F0 74
	sbc $0114.w		; ED 14 01
	sbc $40F2.w		; ED F2 40
	trb $74DE.w		; 1C DE 74
	trb $2E.b		; 14 2E
	sbc $0030.w		; ED 30 00
	sbc ($0C.b)		; F2 0C
	tsb $70.b		; 04 70
	brk $0D.b		; 00 0D
	stz $0F30.w		; 9C 30 0F
	tsx		; BA
	pea $641F.w		; F4 1F 64
	sbc $B061D2.l,X		; FF D2 61 B0
	tas		; 1B
	and $FF.b		; 25 FF
	cop $70.b		; 02 70
	phx		; DA
	trb $FF.b		; 14 FF
	phd		; 0B
	cmp ($5F.b,S),Y		; D3 5F
	beq -36.b		; F0 DC
	stz $33.b,X		; 74 33
	sbc ($EC.b),Y		; F1 EC
	sbc $30.b		; E5 30
	beq -80.b		; F0 B0
	trb $74.b		; 14 74
	ora $5EF00E.l		; 0F 0E F0 5E
	sbc $2B441A.l,X		; FF 1A 44 2B
	bvs  -3.b		; 70 FD
	lda $1F54.w,X		; BD 54 1F
	sbc $2FD2.w,X		; FD D2 2F
	beq 116.b		; F0 74
	cmp $1CE123.l,X		; DF 23 E1 1C
	cmp $3E.b,X		; D5 3E
	beq -47.b		; F0 D1
	stz $22.b,X		; 74 22
	cmp ($0F.b),Y		; D1 0F
	cmp ($50.b),Y		; D1 50
	cpx #$150B.w		; E0 0B 15
	bvs  32.b		; 70 20
	ora ($DE.b,X)		; 01 DE
	ora ($FF.b,S),Y		; 13 FF
	bpl -49.b		; 10 CF
	and ($74.b),Y		; 31 74
	sbc ($FB.b,X)		; E1 FB
	mvp $00,$FE		; 44 FE 00
	sbc ($5D.b,X)		; E1 5D
	beq 116.b		; F0 74
	trb $3E04.w		; 1C 04 3E
	sbc ($FC.b,X)		; E1 FC
	bit $0E.b,X		; 34 0E
	brk $70.b		; 00 70
	lda $0013.w,X		; BD 13 00
	ora $31CE.w,X		; 1D CE 31
	ora ($EC.b,X)		; 01 EC
	bvs -47.b		; 70 D1
	and $F2DC11.l		; 2F 11 DC F2
	bpl  30.b		; 10 1E
	bne 112.b		; D0 70
	cop $11.b		; 02 11
	ora $1321DF.l,X		; 1F DF 21 13
	trb $74DF.w		; 1C DF 74
	bmi   0.b		; 30 00
	cmp $1F41.w,X		; DD 41 1F
	ora $7032D0.l,X		; 1F D0 32 70
	cpx #$DE32.w		; E0 32 DE
	ora ($11.b,S),Y		; 13 11
	bpl -33.b		; 10 DF
	eor ($70.b,X)		; 41 70
	brk $EE.b		; 00 EE
	cmp ($22.b,X)		; C1 22
	brk $FD.b		; 00 FD
	bne  49.b		; D0 31
	bvs  18.b		; 70 12
	jsr ($4FF4.w,X)		; FC F4 4F
	beq  -2.b		; F0 FE
	ora ($FF.b,X)		; 01 FF
	rts		; 60

	ora ($DA.b,X)		; 01 DA
	ora $9A30FD.l,X		; 1F FD 30 9A
	sbc ($12.b),Y		; F1 12
	bvs  31.b		; 70 1F
	inc $31E0.w,X		; FE E0 31
	sbc $34EE10.l,X		; FF 10 EE 34
	ldy $0F.b		; A4 0F
	brk $F0.b		; 00 F0
	ora $1A.b,X		; 15 1A
	cmp $00.b,S		; C3 00
	lsr $C0.b		; 46 C0
	ora ($0F.b),Y		; 11 0F
	inc $54DF.w		; EE DF 54
	sbc $F1FF.w,X		; FD FF F1
	cpy #$1132.w		; C0 32 11
	asl $E4ED.w		; 0E ED E4
	bvc -33.b		; 50 DF
	sbc $FF13C4.l,X		; FF C4 13 FF
	bpl -33.b		; 10 DF
	ora $11EB53.l		; 0F 53 EB 11
	cpy #$22FF.w		; C0 FF 22
	ora ($1F.b),Y		; 11 1F
	inc $55DF.w		; EE DF 55
	sbc $20C4.w,X		; FD C4 20
	ora ($2F.b,X)		; 01 2F
	ora ($FD.b,X)		; 01 FD
	brk $E5.b		; 00 E5
	lsr $EEC0.w		; 4E C0 EE
	sbc $1121F2.l,X		; FF F2 21 11
	inc $F5EC.w,X		; FE EC F5
	cpy #$EF4F.w		; C0 4F EF
	sbc $0F2123.l,X		; FF 23 21 0F
	inc $C0B0.w,X		; FE B0 C0
	stz $EE.b		; 64 EE
	ora $F042F3.l		; 0F F3 42 F0
	ora $16C0DB.l		; 0F DB C0 16
	rol $F0FF.w,X		; 3E FF F0
	and ($1F.b,S),Y		; 33 1F
	ora ($1F.b,X)		; 01 1F
	ldy $E4.b		; A4 E4
	sbc $2D04.w,X		; FD 04 2D
	cpx #$1012.w		; E0 12 10
	beq -108.b		; F0 94
	and ($31.b,S),Y		; 33 31
	inc $CFFE.w		; EE FE CF
	asl $2FE2.w,X		; 1E E2 2F
	sty $E4.b		; 84 E4
	asl $6016.w,X		; 1E 16 60
	cmp ($1E.b),Y		; D1 1E
	cmp $DA7520.l		; CF 20 75 DA
	cmp $600F12.l		; CF 12 0F 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	cmp #$0021.w		; C9 21 00
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	sbc ($0F.b),Y		; F1 0F
	ora $12E200.l,X		; 1F 00 E2 12
	cmp ($5D.b)		; D2 5D
	tya		; 98
	ora $011E00.l		; 0F 00 1E 01
	bit $DD.b		; 24 DD
	sbc ($0E.b),Y		; F1 0E
	bcs -19.b		; B0 ED
	sbc ($32.b,X)		; E1 32
	brk $10.b		; 00 10
	beq  14.b		; F0 0E
	cpy #$33B0.w		; C0 B0 33
	brk $10.b		; 00 10
	cpx #$DB32.w		; E0 32 DB
	tsb $2F.b		; 04 2F
	ldy $12.b,X		; B4 12
	sbc $0B24.w		; ED 24 0B
	cmp $5F.b		; C5 5F
	cmp ($3E.b,X)		; C1 3E
	bcs -34.b		; B0 DE
	bit $D9.b,X		; 34 D9
	asl $3E.b		; 06 3E
	tsb $1C.b		; 04 1C
	cmp ($C0.b,S),Y		; D3 C0
	rol $41C1.w		; 2E C1 41
	beq  33.b		; F0 21
	sbc $C0DD22.l		; EF 22 DD C0
	bit $0E.b		; 24 0E
	ora ($0E.b)		; 12 0E
	cop $ED.b		; 02 ED
	trb $1E.b		; 14 1E
	cpy #$1FF2.w		; C0 F2 1F
	sbc ($FD.b)		; F2 FD
	tsb $2F.b		; 04 2F
	sbc ($1F.b),Y		; F1 1F
	cpy $02.b		; C4 02
	jsr ($FE43.w,X)		; FC 43 FE
	sbc ($0E.b)		; F2 0E
	ora $EC.b,S		; 03 EC
	cpy #$3F04.w		; C0 04 3F
	sbc ($1E.b)		; F2 1E
	cop $FD.b		; 02 FD
	trb $1F.b		; 14 1F
	cpy #$F001.w		; C0 01 F0
	rol $41D0.w		; 2E D0 41
	beq  32.b		; F0 20
	sbc ($C0.b,X)		; E1 C0
	phd		; 0B
	sbc ($3F.b,S),Y		; F3 3F
	sbc ($2F.b,X)		; E1 2F
	cop $CD.b		; 02 CD
	ora $C4.b,X		; 15 C4
	ldx $FE22.w,Y		; BE 22 FE
	bit $5DE4.w,X		; 3C E4 5D
	bne  63.b		; D0 3F
	cpy #$0BF1.w		; C0 F1 0B
	pea $E13F.w		; F4 3F E1
	ora $C0BF11.l,X		; 1F 11 BF C0
	bit $FE.b,X		; 34 FE
	ora ($01.b),Y		; 11 01
	tas		; 1B
.INDEX 8
	sep #$5F		; E2 5F
	cpx #$C0.b		; E0 C0
	bpl   1.b		; 10 01
	ldx $FE25.w,Y		; BE 25 FE
	ora ($00.b)		; 12 00
	phd		; 0B
	cpy $34.b		; C4 34
	pld		; 2B
	sbc ($1F.b)		; F2 1F
	brk $B4.b		; 00 B4
	and ($BF.b)		; 32 BF
	cpy $21.b		; C4 21
	sbc ($DD.b),Y		; F1 DD
	eor ($FD.b,S),Y		; 53 FD
	sbc ($F0.b,S),Y		; F3 F0
	tas		; 1B
	cpy #$D2.b		; C0 D2
	rti		; 40

	cpx #$10.b		; E0 10
	ora $EF42B1.l		; 0F B1 42 EF
	cpy $20.b		; C4 20
	beq -76.b		; F0 B4
	eor ($BF.b,X)		; 41 BF
	bmi  15.b		; 30 0F
	cpy #$C0.b		; C0 C0
	bit $0E.b,X		; 34 0E
	ora ($10.b)		; 12 10
	jmp.w [$0E24]		; DC 24 0E
	cop $C0.b		; 02 C0
	bpl -37.b		; 10 DB
	bit $1E.b		; 24 1E
	cop $10.b		; 02 10
	stp		; DB
	bit $C0.b		; 24 C0
	asl $1002.w,X		; 1E 02 10
	stp		; DB
	bit $1E.b		; 24 1E
	sbc ($10.b)		; F2 10
	cpy #$DB.b		; C0 DB
	trb $1E.b		; 14 1E
	sbc ($10.b)		; F2 10
	nop		; EA
	trb $2E.b		; 14 2E
	cpy #$F2.b		; C0 F2
	bpl -21.b		; 10 EB
	trb $1E.b		; 14 1E
	sbc ($10.b)		; F2 10
	stp		; DB
	cpy #$14.b		; C0 14
	asl $1002.w,X		; 1E 02 10
	cmp $0F24.w,X		; DD 24 0F
	ora ($C4.b,X)		; 01 C4
	ora $C051C1.l		; 0F C1 51 C0
	jsr $C30E.w		; 20 0E C3
	eor ($C4.b,X)		; 41 C4
	cpy #$20.b		; C0 20
	sbc $C130C4.l,X		; FF C4 30 C1
	jsr $C0FE.w		; 20 FE C0
	lda ($31.b),Y		; B1 31
	beq  17.b		; F0 11
	ora $30D2.w		; 0D D2 30
	sbc ($C4.b),Y		; F1 C4
	ora $1C24FC.l,X		; 1F FC 24 1C
	cop $00.b		; 02 00
	cpx $C053.w		; EC 53 C0
	and $EC1001.l		; 2F 01 10 EC
	ora ($0F.b,S),Y		; 13 0F
	ora ($10.b,X)		; 01 10
	cpy #$CD.b		; C0 CD
	and $FF.b,S		; 23 FF
	ora ($0F.b),Y		; 11 0F
	cpy #$22.b		; C0 22
	beq -64.b		; F0 C0
	ora ($0E.b),Y		; 11 0E
	cmp ($30.b,X)		; C1 30
	sbc ($21.b),Y		; F1 21
	jsr ($C0E2.w,X)		; FC E2 C0
	and $EC10F1.l,X		; 3F F1 10 EC
	ora $1F.b,S		; 03 1F
	cop $10.b		; 02 10
	cpy #$DD.b		; C0 DD
	and $FF.b,S		; 23 FF
	ora ($0F.b)		; 12 0F
	cpy #$22.b		; C0 22
	cpx #$C0.b		; E0 C0
	ora ($0E.b),Y		; 11 0E
	cmp ($30.b,X)		; C1 30
	sbc ($21.b),Y		; F1 21
	jsr ($C0E2.w,X)		; FC E2 C0
	rol $20F1.w		; 2E F1 20
	cpx $1E13.w		; EC 13 1E
	cop $1F.b		; 02 1F
	cpy #$CE.b		; C0 CE
	and $FF.b,S		; 23 FF
	ora ($0E.b)		; 12 0E
	cmp ($31.b,X)		; C1 31
	beq -64.b		; F0 C0
	and ($FC.b,X)		; 21 FC
	sbc ($2F.b)		; F2 2F
	ora ($20.b,X)		; 01 20
	sbc $C013.w		; ED 13 C0
	ora $C01F12.l		; 0F 12 1F C0
	and ($F0.b,X)		; 21 F0
	ora ($FD.b),Y		; 11 FD
	cpy #$E2.b		; C0 E2
	and $EC2001.l		; 2F 01 20 EC
	ora ($0F.b)		; 12 0F
	ora ($C4.b)		; 12 C4
	inc $2FD4.w,X		; FE D4 2F
	sbc ($10.b,X)		; E1 10
	sbc $0D14.w,X		; FD 14 0D
	cpy #$F1.b		; C0 F1
	jsr $12EC.w		; 20 EC 12
	ora $C01F12.l		; 0F 12 1F C0
	cpy $2F.b		; C4 2F
	sbc ($2F.b,X)		; E1 2F
	sbc $0D23.w,X		; FD 23 0D
	ora ($1E.b),Y		; 11 1E
	cpy #$DD.b		; C0 DD
	jsl $0E12FF.l		; 22 FF 12 0E
	cmp ($30.b,X)		; C1 30
	cpx #$C4.b		; E0 C4
	and $FD42ED.l		; 2F ED 42 FD
	jsl $40C20E.l		; 22 0E C2 40
	bcs -49.b		; B0 CF
	bit $09.b,X		; 34 09
	ldy $5E.b		; A4 5E
	sep #$41		; E2 41
	lda $23C0.w,Y		; B9 C0 23
	sbc $C11E12.l,X		; FF 12 1E C1
	bmi -16.b		; 30 F0
	and ($C0.b,X)		; 21 C0
	jsr ($1F12.w,X)		; FC 12 1F
	cop $1F.b		; 02 1F
	cpy #$21.b		; C0 21
	cpx #$C4.b		; E0 C4
	jsr $33EC.w		; 20 EC 33
	tsb $1E21.w		; 0C 21 1E
	rep #$40		; C2 40
	bcs -33.b		; B0 DF
	and ($09.b,S),Y		; 33 09
	cpy $4D.b		; C4 4D
	sbc ($30.b)		; F2 30
	plb		; AB
	bcs  69.b		; B0 45
	sbc $A40B23.l		; EF 23 0B A4
	lsr $30F2.w,X		; 5E F2 30
	bcs -70.b		; B0 BA
	mvp $23,$EF		; 44 EF 23
	phd		; 0B
	ldy $4E.b		; A4 4E
	sbc ($C0.b)		; F2 C0
	jsr $22DE.w		; 20 DE 22
	sbc $F3FC12.l		; EF 12 FC F3
	rol $02C0.w		; 2E C0 02
	and $E031C1.l		; 2F C1 31 E0
	and ($EC.b,X)		; 21 EC
	ora ($C0.b,S),Y		; 13 C0
	asl $1E02.w		; 0E 02 1E
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	sbc ($21.b,X)		; E1 21
	cmp $23C0.w,X		; DD C0 23
	sbc $E30C12.l,X		; FF 12 0C E3
	rol $20F1.w		; 2E F1 20
	cpy $C3.b		; C4 C3
	eor $DD21C1.l		; 4F C1 21 DD
	eor $ED.b,S		; 43 ED
	jsl $C12EC0.l		; 22 C0 2E C1
	bmi -32.b		; 30 E0
	and ($DD.b,X)		; 21 DD
	and $FF.b,S		; 23 FF
	cpy #$0C12.w		; C0 12 0C
	sbc $2E.b,S		; E3 2E
	sbc ($2F.b),Y		; F1 2F
	cmp $E0C032.l		; CF 32 C0 E0
	jsl $0E13FC.l		; 22 FC 13 0E
	cop $1E.b		; 02 1E
	cmp ($C0.b)		; D2 C0
	and $DE20F1.l,X		; 3F F1 20 DE
	and ($EF.b)		; 32 EF
	ora ($FC.b)		; 12 FC
	bcs   6.b		; B0 06
	bit $2B04.w		; 2C 04 2B
	sty $6E.b,X		; 94 6E
.INDEX 16
	rep #$5F		; C2 5F
	cpy #$32CF.w		; C0 CF 32
	cpx #$EC21.w		; E0 21 EC
	and $FE.b,S		; 23 FE
	ora ($C0.b)		; 12 C0
	tsb $2EF3.w		; 0C F3 2E
	sbc ($2E.b)		; F2 2E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sbc ($C0.b,X)		; E1 C0
	jsr $32CE.w		; 20 CE 32
	sbc $23EC22.l		; EF 22 EC 23
	asl $02C0.w		; 0E C0 02
	tsb $2EE3.w		; 0C E3 2E
	sbc ($2D.b)		; F2 2D
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	cpy #$2FE1.w		; C0 E1 2F
	cpy #$EF32.w		; C0 32 EF
	and ($DD.b,X)		; 21 DD
	and ($C0.b,S),Y		; 33 C0
	sbc $24EC22.l		; EF 22 EC 24
	asl $FB13.w		; 0E 13 FB
	tsb $C0.b		; 04 C0
	and $1C03.w		; 2D 03 1C
	cmp ($3E.b,S),Y		; D3 3E
.ACCU 8
	sep #$2D		; E2 2D
	rep #$C0		; C2 C0
	eor $B13EE1.l		; 4F E1 3E B1
	eor ($D0.b,X)		; 41 D0
	bmi -65.b		; 30 BF
	cpy #$DF42.w		; C0 42 DF
	bmi -50.b		; 30 CE
	.db $42, $EF		; 42 EF
	and ($CD.b),Y		; 31 CD
	cpy #$EE33.w		; C0 33 EE
	jsl $FE24DD.l		; 22 DD 24 FE
	ora ($DC.b,S),Y		; 13 DC
	cpy #$FE24.w		; C0 24 FE
	ora ($EC.b,S),Y		; 13 EC
	trb $0D.b		; 14 0D
	ora $EC.b,S		; 03 EC
	cpy #$0D14.w		; C0 14 0D
	ora $EC.b,S		; 03 EC
	trb $0E.b		; 14 0E
	cop $ED.b		; 02 ED
	bcs  54.b		; B0 36
	ora $CE10.w		; 0D 10 CE
	eor $F0.b,S		; 43 F0
	trb $B0C3.w		; 1C C3 B0
	eor $E60AE2.l,X		; 5F E2 0A E6
	lsr $DAF3.w		; 4E F3 DA
	ora [$B0.b],Y		; 17 B0
	and $BD01.w		; 2D 01 BD
	eor $0E.b		; 45 0E
	asl $63AF.w,X		; 1E AF 63
	bcs -17.b		; B0 EF
	tas		; 1B
	cmp $61.b,S		; C3 61
	sbc ($EA.b,X)		; E1 EA
	inc $3F.b,X		; F6 3F
	bcs   0.b		; B0 00
	lda $1F46.w		; AD 46 1F
	trb $64B0.w		; 1C B0 64
	sbc $43E0B8.l,X		; FF B8 E0 43
	stp		; DB
	bpl -11.b		; 10 F5
	and $B8FFCF.l		; 2F CF FF B8
	adc ($1D.b,X)		; 61 1D
	cmp $0F54.w		; CD 54 0F
	cmp $1F15.w,X		; DD 15 1F
	ldy $0E.b,X		; B4 0E
	dec $5114.w		; CE 14 51
	wai		; CB
.ACCU 16
.INDEX 16
	rep #$36		; C2 36
	rol $EFB8.w		; 2E B8 EF
	eor $0F.b		; 45 0F
	cmp $41F4.w		; CD F4 41
	sbc $B4BF.w,X		; FD BF B4
	ora ($53.b,S),Y		; 13 53
	xce		; FB
	bcs  53.b		; B0 35
	eor $C413AA.l		; 4F AA 13 C4
	ora ($2E.b)		; 12 2E
	dec $1222.w		; CE 22 12
	tsb $22D1.w		; 0C D1 22
	cpy #$0C34.w		; C0 34 0C
	cmp $DD4202.l,X		; DF 02 42 DD
	beq  34.b		; F0 22
	clv		; B8
	sbc SETINI.w		; ED 33 21
	stp		; DB
	sbc ($32.b,S),Y		; F3 32
	ora $DEC0DC.l		; 0F DC C0 DE
	beq  36.b		; F0 24
	rol $01DF.w		; 2E DF 01
	bit $1C.b,X		; 34 1C
	cpy $02.b		; C4 02
	ora ($40.b),Y		; 11 40
	lda $1202.w,X		; BD 02 12
	lsr $B8BE.w		; 4E BE B8
	adc $C40C00.l,X		; 7F 00 0C C4
	and ($ED.b,S),Y		; 33 ED
	sbc $11C83F.l,X		; FF 3F C8 11
	ora $30D1.w,X		; 1D D1 30
	ora $FC.b,S		; 03 FC
	cmp $4F.b,S		; C3 4F
	cpy $15.b		; C4 15
	bit $20AF.w,X		; 3C AF 20
	bit $2C.b		; 24 2C
	cmp $21B811.l		; CF 11 B8 21
	tsx		; BA
	bit $23.b		; 24 23
	dec $21D0.w,X		; DE D0 21
	jsl $BF0DB8.l		; 22 B8 0D BF
	and ($13.b)		; 32 13
	bit $12BF.w		; 2C BF 12
	trb $A8.b		; 14 A8
	inc $1FCC.w		; EE CC 1F
	and $2C.b,X		; 35 2C
	cmp $B82500.l,X		; DF 00 25 B8
	ora $12D0.w,X		; 1D D0 12
	ora ($0E.b)		; 12 0E
	lda $C82322.l,X		; BF 22 23 C8
	ora $1112DD.l,X		; 1F DD 12 11
	and ($BB.b),Y		; 31 BB
	ora ($02.b,S),Y		; 13 02
	iny		; C8
	jsl $10F3CC.l		; 22 CC F3 10
	jsr $E0FF.w		; 20 FF E0
	jsr $24B4.w		; 20 B4 24
	rol $12CE.w		; 2E CE 12
	eor ($FC.b,X)		; 41 FC
	dec $C803.w,X		; DE 03 C8
	and $1110CF.l		; 2F CF 10 11
	and ($CE.b),Y		; 31 CE
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	cpy $25.b		; C4 25
	eor $04FECD.l		; 4F CD FE 04
	eor ($EF.b,X)		; 41 EF
	inc $33B8.w		; EE B8 33
	rol $FFEF.w		; 2E EF FF
	and $0D.b,S		; 23 0D
	sbc ($01.b),Y		; F1 01
	clv		; B8
	jsl $F3F2CD.l		; 22 CD F2 F3
	eor $CA.b,S		; 43 CA
	cmp ($02.b)		; D2 02
	iny		; C8
	and $0C.b,S		; 23 0C
	bne  17.b		; D0 11
	cop $3F.b		; 02 3F
	cmp $C82F.w,X		; DD 2F C8
	ora ($22.b,X)		; 01 22
	ora $10E0.w		; 0D E0 10
	ora ($3F.b,X)		; 01 3F
	cmp $F321B8.l,X		; DF B8 21 F3
	rol $1FC0.w,X		; 3E C0 1F
	sbc $52.b,S		; E3 52
	lda $01B8.w		; AD B8 01
	ora $AE2D25.l		; 0F 25 2D AE
	jsr $5302.w		; 20 02 53
	cpy $3F.b		; C4 3F
	dec $02FF.w		; CE FF 02
	eor $ED.b,S		; 43 ED
	sbc $33C8EF.l,X		; FF EF C8 33
	jmp.w [$FF02]		; DC 02 FF
	ora ($2D.b,S),Y		; 13 2D
	cmp ($10.b),Y		; D1 10
	clv		; B8
	cpy $31.b		; C4 31
	xba		; EB
	ora ($F0.b)		; 12 F0
	trb $FD.b		; 14 FD
	cmp ($B8.b)		; D2 B8
	ora $AC4103.l		; 0F 03 41 AC
	and ($FF.b,X)		; 21 FF
	and $1C.b,X		; 35 1C
	clv		; B8
	bcs  61.b		; B0 3D
	sbc ($62.b,S),Y		; F3 62
	phx		; DA
	sep #$0E		; E2 0E
	and $B8.b		; 25 B8
	lsr $30AB.w,X		; 5E AB 30
	sbc $BF2B46.l,X		; FF 46 2B BF
	brk $B8.b		; 00 B8
	sbc ($54.b,S),Y		; F3 54
	wai		; CB
	sbc ($0E.b,X)		; E1 0E
	ora $5F.b,X		; 15 5F
	lda $11B8.w		; AD B8 11
	sbc $B01B46.l		; EF 46 1B B0
	and $B863D4.l		; 2F D4 63 B8
	dex		; CA
	sbc ($FF.b),Y		; F1 FF
	asl $5E.b,X		; 16 5E
	tyx		; BB
	jsr $B8E0.w		; 20 E0 B8
	lsr $2A.b		; 46 2A
	cmp $53E30F.l,X		; DF 0F E3 53
	jsr ($B8C2.w,X)		; FC C2 B8
	asl $4003.w		; 0E 03 40
	sbc $E01F.w		; ED 1F E0
	trb $30.b		; 14 30
	clv		; B8
	jmp.w [$FFF1]		; DC F1 FF
	mvp $BE,$4C		; 44 4C BE
	ora $55B8F1.l,X		; 1F F1 B8 55
	phd		; 0B
	lda ($F0.b),Y		; B1 F0
	sbc ($44.b,S),Y		; F3 44
	xce		; FB
	cpy #$B8.b		; C0 B8
	brk $03.b		; 00 03
	eor $EA.b,S		; 43 EA
	cpx #$1F.b		; E0 1F
	tsb $42.b		; 04 42
	clv		; B8
	wai		; CB
	brk $F0.b		; 00 F0
	tsb $42.b		; 04 42
	wai		; CB
	brk $FF.b		; 00 FF
	clv		; B8
	and ($30.b,S),Y		; 33 30
	jmp.w [$E001]		; DC 01 E0
	and $20.b,S		; 23 20
	sbc $0EA8.w		; ED A8 0E
	beq  38.b		; F0 26
	and ($B0.b)		; 32 B0
	lda $61E2.w,X		; BD E2 61
	tay		; A8
	ora $2D.b,S		; 03 2D
	stz $1210.w,X		; 9E 10 12
	mvp $9E,$1C		; 44 1C 9E
	tay		; A8
	bpl -12.b		; 10 F4
	mvp $CB,$1C		; 44 1C CB
	ora ($02.b,X)		; 01 02
	bit $A8.b,X		; 34 A8
	jsr $E1AC.w		; 20 AC E1
	ora ($15.b,X)		; 01 15
	eor $A8C1DB.l,X		; 5F DB C1 A8
	ora $ED4125.l		; 0F 25 41 ED
	cpy $1411.w		; CC 11 14
	jsl $DB0FA8.l		; 22 A8 0F DB
	sbc ($11.b),Y		; F1 11
	and ($00.b,S),Y		; 33 00
	phd		; 0B
	cmp ($98.b,X)		; C1 98
	eor $DE4305.l,X		; 5F 05 43 DE
	cmp $21FF.w,X		; DD FF 21
	cop $98.b		; 02 98
	and ($00.b),Y		; 31 00
	cmp $00E1.w,X		; DD E1 00
	pea $E241.w		; F4 41 E2
	sty $FD.b,X		; 94 FD
	cmp $E3DB.w,X		; DD DB E3
	eor ($34.b,S),Y		; 53 34
	tas		; 1B
	cmp $36EE88.l		; CF 88 EE 36
	and $ED2D.w		; 2D 2D ED
	cop $01.b		; 02 01
	asl $CD74.w,X		; 1E 74 CD
	and $65.b,S		; 23 65
	lsr $B11C.w		; 4E 1C B1
	inc A		; 1A
	lda ($84.b)		; B2 84
	jsr $5102.w		; 20 02 51
	cmp $FE11.w		; CD 11 FE
	brk $E0.b		; 00 E0
	bra -13.b		; 80 F3
	.db $42, $10		; 42 10
	asl $0E02.w		; 0E 02 0E
	sbc $B370DD.l		; EF DD 70 B3
	eor ($03.b,S),Y		; 53 03
	eor $FF.b,S		; 43 FF
	stp		; DB
	ldy $78F1.w		; AC F1 78
	inc $FF21.w,X		; FE 21 FF
	cpx #$F3.b		; E0 F3
	ora $A2.b,X		; 15 A2
	tsb $0E78.w		; 0C 78 0E
	ora $FE.b,X		; 15 FE
	.db $42, $DE		; 42 DE
	plx		; FA
	eor ($33.b,X)		; 41 33
	pla		; 68
	sty $CE.b,X		; 94 CE
	cmp ($E1.b),Y		; D1 E1
	eor [$EA.b]		; 47 EA
	ora $E274EE.l		; 0F EE 74 E2
	bit $1F.b		; 24 1F
	cpx $1200.w		; EC 00 12
	bmi   0.b		; 30 00
	stz $0B.b		; 64 0B
	cmp $3303.w,X		; DD 03 33
	eor ($BD.b,S),Y		; 53 BD
	ldx $78F3.w		; AE F3 78
	beq   3.b		; F0 03
	inc $F0C5.w		; EE C5 F0
	ora $640E4F.l		; 0F 4F 0E 64
	ora $21E0DE.l,X		; 1F DE E0 21
	bpl -46.b		; 10 D2
	sbc ($BC.b),Y		; F1 BC
	rts		; 60

	cmp $2F.b,X		; D5 2F
	rol $19.b,X		; 36 19
	sta $35DC.w,X		; 9D DC 35
	and $10FF70.l		; 2F 70 FF 10
	jmp.w [$0BF2]		; DC F2 0B
	cpx $1D.b		; E4 1D
	sbc $88.b,S		; E3 88
	dec $EF31.w,X		; DE 31 EF
	ora ($1D.b)		; 12 1D
	rol $B12E.w		; 2E 2E B1
	dey		; 88
	eor ($C5.b)		; 52 C5
	eor $B41EAC.l		; 4F AC 1E B4
	stz $05.b		; 64 05
	tya		; 98
	sbc $22FFB0.l,X		; FF B0 FF 22
	jsr $EE3F.w		; 20 3F EE
	tsb $F398.w		; 0C 98 F3
	jsr $1D32.w		; 20 32 1D
	bcs  28.b		; B0 1C
	trb $31.b		; 14 31
	tya		; 98
	sep #$0D		; E2 0D
	cmp $34F221.l		; CF 21 F2 34
	xba		; EB
	brk $88.b		; 00 88
	sta $125E37.l,X		; 9F 37 5E 12
	tyx		; BB
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	lsr $A4.b,X		; 56 A4
	bpl  16.b		; 10 10
	inc $F111.w		; EE 11 F1
	and ($CE.b),Y		; 31 CE
	ora $55BEA0.l,X		; 1F A0 BE 55
	ora ($41.b),Y		; 11 41
	tyx		; BB
	sbc $9453F3.l		; EF F3 53 94
	ldx $03ED.w,Y		; BE ED 03
	and $4F.b,S		; 23 4F
	sbc $9403AD.l,X		; FF AD 03 94
	adc $D4FBF3.l		; 6F F3 FB D4
	eor $4AF5.w		; 4D F5 4A
	lda $C3EE90.l		; AF 90 EE C3
	stz $FE.b		; 64 FE
	dec $F133.w		; CE 33 F1
	adc ($A0.b,X)		; 61 A0
	dec $050F.w,X		; DE 0F 05
	rti		; 40

	sbc $40E5CA.l,X		; FF CA E5 40
	ldy $33.b		; A4 33
	tyx		; BB
	ora $11.b,S		; 03 11
	ora ($FE.b),Y		; 11 FE
	bne  48.b		; D0 30
	ldy #$74E1.w		; A0 E1 74
	jsr ($AC0E.w,X)		; FC 0E AC
	mvp $43,$11		; 44 11 43
	ldy #$E1DB.w		; A0 DB E1
	and ($01.b,S),Y		; 33 01
	asl $31BE.w,X		; 1E BE 31
	sbc ($A4.b,X)		; E1 A4
	eor $1ED1.w		; 4D D1 1E
	cop $1D.b		; 02 1D
	sbc ($0F.b),Y		; F1 0F
	and ($A4.b,S),Y		; 33 A4
	inc $CD11.w,X		; FE 11 CD
	sbc ($03.b,S),Y		; F3 03
	and ($DE.b)		; 32 DE
	inc $03A4.w		; EE A4 03
	sbc $12EB44.l,X		; FF 44 EB 12
	wai		; CB
	adc $DD.b		; 65 DD
	ldy $43.b		; A4 43
	wai		; CB
	jsl $DC54FE.l		; 22 FE 54 DC
	bpl -34.b		; 10 DE
	ldy #$2014.w		; A0 14 20
	.db $42, $DB		; 42 DB
	inc $34D0.w,X		; FE D0 34
	and ($A8.b,X)		; 21 A8
	and $0101.w		; 2D 01 01
	bmi -35.b		; 30 DD
	jsl $A034DF.l		; 22 DF 34 A0
	bmi   2.b		; 30 02
	and ($DE.b),Y		; 31 DE
	brk $D0.b		; 00 D0
	.db $42, $D0		; 42 D0
	bcc  79.b		; 90 4F
	lda $20F030.l,X		; BF 30 F0 20
	beq  33.b		; F0 21
	cpx #$4190.w		; E0 90 41
	sbc $40F10F.l		; EF 0F F1 40
	beq  13.b		; F0 0D
	sbc ($90.b)		; F2 90
	bpl -15.b		; 10 F1
	bpl   0.b		; 10 00
	cpx $30E4.w		; EC E4 30
	trb $90.b		; 14 90
	trb $11CF.w		; 1C CF 11
	ora ($32.b)		; 12 32
	sbc $CC10.w		; ED 10 CC
	bcc  34.b		; 90 22
	cpx #$ED42.w		; E0 42 ED
	bpl -48.b		; 10 D0
	eor ($EF.b)		; 52 EF
	bcc  64.b		; 90 40
	jmp.w [$0D23]		; DC 23 0D
	and $1C.b,S		; 23 1C
	sbc ($0D.b),Y		; F1 0D
	bcc -30.b		; 90 E2
	rol $30F1.w,X		; 3E F1 30
	ldx $C032.w,Y		; BE 32 C0
	eor ($95.b)		; 52 95
	lda ($3E.b),Y		; B1 3E
	sbc ($3F.b,X)		; E1 3F
	sbc $5B.b,S		; E3 5B
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	bpl  16.b		; 10 10
	bpl  19.b		; 10 13
	sbc $E1F4.w		; ED F4 E1
	.db $42, $94		; 42 94
	sbc ($1F.b,X)		; E1 1F
	and ($DF.b),Y		; 31 DF
	lsr $DC.b		; 46 DC
	inc $98EE.w		; EE EE 98
	asl $2E21.w		; 0E 21 2E
	pea $2FFD.w		; F4 FD 2F
	sbc ($03.b),Y		; F1 03
	ldy $01.b		; A4 01
	ora ($00.b),Y		; 11 00
	sbc $956ACB.l,X		; FF CB 6A 95
	jsr ($25A4.w,X)		; FC A4 25
	jsr $D036.w		; 20 36 D0
	adc $2EE3.w		; 6D E3 2E
	sbc $C4.b,X		; F5 C4
	sbc $2BD10F.l,X		; FF 0F D1 2B
	and ($F0.b,X)		; 21 F0
	jsl $6EB400.l		; 22 00 B4 6E
	sbc $FE.b		; E5 FE
	bpl  -3.b		; 10 FD
	asl $6B9E.w,X		; 1E 9E 6B
	cpy $C5.b		; C4 C5
	ora $220022.l		; 0F 22 00 22
	sbc ($1D.b,X)		; E1 1D
	bpl -60.b		; 10 C4
	sbc $4AD00F.l,X		; FF 0F D0 4A
	ora $E0.b		; 05 E0
	and ($F1.b)		; 32 F1
	cpy $3F.b		; C4 3F
	sbc $EE.b,S		; E3 EE
	rol $FEF0.w		; 2E F0 FE
	sbc $BF.b		; E5 BF
	cpy $6E.b		; C4 6E
	ora $2F.b,S		; 03 2F
	tsb $EE.b		; 04 EE
	rol $FEE2.w		; 2E E2 FE
	cpy #$BDFE.w		; C0 FE BD
	asl A		; 0A
	cpx #$34F0.w		; E0 F0 34
	bit $52.b		; 24 52
	cpy #$F022.w		; C0 22 F0
	ora $0CCDFE.l		; 0F FE CD 0C
	cpx #$C401.w		; E0 01 C4
	and ($F1.b,X)		; 21 F1
	ora $FFFFF0.l		; 0F F0 FF FF
	bit $B430.w		; 2C 30 B4
	sbc $21.b,X		; F5 21
	jsl $C21F1C.l		; 22 1C 1F C2
	cpx $C0DF.w		; EC DF C0
	asl A		; 0A
	sbc ($E2.b,X)		; E1 E2
	and ($34.b,S),Y		; 33 34
	eor ($22.b,X)		; 41 22
	beq -64.b		; F0 C0
	sbc $FABE.w,X		; FD BE FA
	ora $343302.l,X		; 1F 02 33 34
	and ($C0.b),Y		; 31 C0
	jsr $EBF0.w		; 20 F0 EB
	bne -81.b		; D0 AF
	asl $3313.w		; 0E 13 33
	cpy #$1243.w		; C0 43 12
	ora $1ABD0E.l,X		; 1F 0E BD 1A
	sbc ($E1.b),Y		; F1 E1
	cpy #$2433.w		; C0 33 24
	bmi  33.b		; 30 21
	beq -21.b		; F0 EB
	bne -96.b		; D0 A0
	cpy $0F.b		; C4 0F
	jsl $E22F0F.l		; 22 0F 2F E2
	inc $D41E.w,X		; FE 1E D4
	cpy #$1FEC.w		; C0 EC 1F
	ora ($32.b,X)		; 01 32
	and $11.b,S		; 23 11
	jsr $C0FF.w		; 20 FF C0
	cmp $F01B.w,X		; DD 1B F0
	sbc ($22.b),Y		; F1 22
	and $20.b,S		; 23 20
	and ($C0.b,X)		; 21 C0
	beq -20.b		; F0 EC
	ora $F1D1.w		; 0D D1 F1
	ora ($22.b)		; 12 22
	and ($C0.b),Y		; 31 C0
	ora ($F0.b),Y		; 11 F0
	cpx $D10E.w		; EC 0E D1
	sbc ($12.b),Y		; F1 12
	jsl $012CB4.l		; 22 B4 2C 01
	cmp ($CF.b,X)		; C1 CF
	phy		; 5A
	eor ($03.b,X)		; 41 03
	cop $B0.b		; 02 B0
	and $30.b,S		; 23 30
	bmi  -2.b		; 30 FE
	lda ($BC.b,X)		; A1 BC
	and $C021.w		; 2D 21 C0
	ora ($12.b),Y		; 11 12
	ora ($1F.b,X)		; 01 1F
	jsr ($C20F.w,X)		; FC 0F C2
	sbc ($C0.b,X)		; E1 C0
	ora ($21.b),Y		; 11 21
	jsr $FF11.w		; 20 11 FF
	dec $2F0B.w,X		; DE 0B 2F
	cpy #$1201.w		; C0 01 12
	ora ($10.b)		; 12 10
	ora $B1E1FD.l,X		; 1F FD E1 B1
	cpy #$21F0.w		; C0 F0 21
	and ($11.b,X)		; 21 11
	ora ($FF.b,X)		; 01 FF
	inc $B01B.w		; EE 1B B0
	and $1213F3.l,X		; 3F F3 13 12
	and $D2EB3F.l		; 2F 3F EB D2
	cpy #$F0B2.w		; C0 B2 F0
	ora ($20.b),Y		; 11 20
	ora ($01.b),Y		; 11 01
	sbc $0CC0DF.l,X		; FF DF C0 0C
	rol $0101.w		; 2E 01 01
	ora ($00.b,X)		; 01 00
	ora $0FC0FD.l,X		; 1F FD C0 0F
.ACCU 16
	rep #$E1		; C2 E1
	ora ($10.b),Y		; 11 10
	bpl   1.b		; 10 01
	sbc $9EB3B0.l,X		; FF B0 B3 9E
	bit $2131.w,X		; 3C 31 21
	ora ($F2.b)		; 12 F2
	asl $E0C0.w		; 0E C0 E0
	tsb $012F.w		; 0C 2F 01
	ora ($01.b),Y		; 11 01
	brk $0F.b		; 00 0F
	cpy #$1CEF.w		; C0 EF 1C
	jsr $1101.w		; 20 01 11
	ora ($00.b,X)		; 01 00
	ora $2CDEC0.l,X		; 1F C0 DE 2C
	ora ($F2.b,X)		; 01 F2
	ora ($01.b)		; 12 01
	bpl  31.b		; 10 1F
	bcs -70.b		; B0 BA
	and $D2E3.w,Y		; 39 E3 D2
	and $11.b,S		; 23 11
	bmi  16.b		; 30 10
	bcs -70.b		; B0 BA
	dec A		; 3A
	cpy $D2.b		; C4 D2
	and $21.b,S		; 23 21
	rti		; 40

	bpl -80.b		; 10 B0
	lda $B42B.w,Y		; B9 2B B4
	cmp ($24.b)		; D2 24
	and ($40.b,X)		; 21 40
	ora ($B0.b),Y		; 11 B0
	lda $B43B.w,Y		; B9 3B B4
	cmp ($23.b),Y		; D1 23
	ora ($40.b),Y		; 11 40
	ora ($B0.b),Y		; 11 B0
	lda $C33A.w,Y		; B9 3A C3
	cmp ($14.b),Y		; D1 14
	ora ($40.b),Y		; 11 40
	bpl -64.b		; 10 C0
	cmp $F12C.w,X		; DD 2C F1
	sbc ($02.b),Y		; F1 02
	ora ($20.b,X)		; 01 20
	bpl -64.b		; 10 C0
	dec $001B.w,X		; DE 1B 00
	sbc ($12.b),Y		; F1 12
	ora ($20.b,X)		; 01 20
	ora $0BCFC0.l,X		; 1F C0 CF 0B
	and $021201.l		; 2F 01 12 02
	bpl  31.b		; 10 1F
	cpy #$FCC1.w		; C0 C1 FC
	and $022101.l		; 2F 01 21 02
	bpl  29.b		; 10 1D
	cpy #$CFD1.w		; C0 D1 CF
	ora $122010.l,X		; 1F 10 20 12
	ora ($FC.b,X)		; 01 FC
	cpy #$D10F.w		; C0 0F D1
	sbc ($01.b),Y		; F1 01
	bpl  33.b		; 10 21
	brk $CF.b		; 00 CF
	cpy #$1F0C.w		; C0 0C 1F
	ora ($12.b,X)		; 01 12
	cop $10.b		; 02 10
	ora $C0E1.w,X		; 1D E1 C0
	cpy #$100F.w		; C0 0F 10
	jsr $0122.w		; 20 22 01
	sbc $B01D.w		; ED 1D B0
	cmp ($D2.b)		; D2 D2
	ora ($12.b,S),Y		; 13 12
	bvc  29.b		; 50 1D
	ldx #$B0AC.w		; A2 AC B0
	and $3120.w		; 2D 20 31
	and $02.b		; 25 02
	cmp $C22A.w,Y		; D9 2A C2
	cpy #$02F1.w		; C0 F1 02
	ora ($30.b),Y		; 11 30
	ora $1FDEC1.l,X		; 1F C1 DE 1F
	cpy #$2110.w		; C0 10 21
	ora ($01.b,S),Y		; 13 01
	jsr ($E11D.w,X)		; FC 1D E1
	sbc ($C0.b),Y		; F1 C0
	cop $11.b		; 02 11
	bmi  31.b		; 30 1F
	cmp ($DE.b,X)		; C1 DE
	ora $32B010.l,X		; 1F 10 B0 32
	and $11.b		; 25 11
	phx		; DA
	ora $D2D1.w,Y		; 19 D1 D2
	tsb $C0.b		; 04 C0
	ora ($20.b),Y		; 11 20
	asl $CFD1.w,X		; 1E D1 CF
	ora $C02110.l		; 0F 10 21 C0
	jsl $1CEE01.l		; 22 01 EE 1C
	beq -15.b		; F0 F1
	cop $12.b		; 02 12
	cpy #$1D20.w		; C0 20 1D
	cpx #$FFC0.w		; E0 C0 FF
	ora ($21.b),Y		; 11 21
	jsl $DF00C0.l		; 22 C0 00 DF
	jsr ($010E.w,X)		; FC 0E 01
	ora ($13.b)		; 12 13
	and ($C0.b,X)		; 21 C0
	ora $C10E.w		; 0D 0E C1
	cpx #$2101.w		; E0 01 21
	and ($10.b),Y		; 31 10
	bcs -111.b		; B0 91
	tsx		; BA
	trb $2310.w		; 1C 10 23
	rol $22.b		; 26 22
	plx		; FA
	bcs  26.b		; B0 1A
	bcs -63.b		; B0 C1
	ora $33.b,S		; 03 33
	.db $62, $2E, $A2		; 62 2E A2
	bcs -101.b		; B0 9B
	tsb $3210.w		; 0C 10 32
	rol $23.b,X		; 36 23
	nop		; EA
	and #$B0B0.w		; 29 B0 B0
	cmp ($03.b,X)		; C1 03
	and ($62.b,S),Y		; 33 62
	and $B0ABA2.l,X		; 3F A2 AB B0
	tas		; 1B
	bpl  35.b		; 10 23
	rol $23.b,X		; 36 23
	plx		; FA
	rol A		; 2A
	lda ($B0.b,X)		; A1 B0
	lda ($02.b),Y		; B1 02
	and ($62.b,S),Y		; 33 62
	and $1BB9A1.l,X		; 3F A1 B9 1B
	cpy #$1100.w		; C0 00 11
	ora ($11.b,S),Y		; 13 11
	ora $C10E.w		; 0D 0E C1
	cpx #$01C0.w		; E0 C0 01
	ora ($31.b),Y		; 11 31
	bpl -48.b		; 10 D0
	jsr ($F11E.w,X)		; FC 1E F1
	cpy #$1312.w		; C0 12 13
	and ($1D.b,X)		; 21 1D
	cpx #$FFB0.w		; E0 B0 FF
	bpl -64.b		; 10 C0
	and ($32.b,X)		; 21 32
	ora ($EE.b),Y		; 11 EE
	trb $E1F0.w		; 1C F0 E1
	cop $B0.b		; 02 B0
	bit $51.b		; 24 51
	rol $9BA1.w,X		; 3E A1 9B
	trb $3211.w		; 1C 11 32
	cpy #$1123.w		; C0 23 11
	ora $C10E.w		; 0D 0E C1
	cpx #$1111.w		; E0 11 11
	cpy #$1131.w		; C0 31 11
	cmp $F10F0B.l,X		; DF 0B 0F F1
	ora ($13.b)		; 12 13
	cpy #$1E21.w		; C0 21 1E
	sbc ($CF.b,X)		; E1 CF
	asl $1110.w		; 0E 10 11
	jsl $FA23B0.l		; 22 B0 23 FA
	tas		; 1B
	sta ($C0.b)		; 92 C0
	ora ($33.b)		; 12 33
	eor ($C0.b)		; 52 C0
	ora ($DF.b),Y		; 11 DF
	phd		; 0B
	ora $1211F1.l		; 0F F1 11 12
	and ($C0.b,X)		; 21 C0
	ora $1ECED1.l,X		; 1F D1 CE 1E
	ora ($11.b),Y		; 11 11
	and $11.b,S		; 23 11
	cpy #$F00D.w		; C0 0D F0
	lda ($FF.b),Y		; B1 FF
	ora ($11.b),Y		; 11 11
	jsl $DBB011.l		; 22 11 B0 DB
	and #$C1C2.w		; 29 C2 C1
	ora ($33.b)		; 12 33
	eor ($21.b)		; 52 21
	cpy #$0CDF.w		; C0 DF 0C
	ora $1201F1.l		; 0F F1 01 12
	jsr $B01F.w		; 20 1F B0
	lda ($C9.b,X)		; A1 C9
	bit $1201.w		; 2C 01 12
	and $31.b		; 25 31
	bit $E1C0.w,X		; 3C C0 E1
	cmp $11100E.l		; CF 0E 10 11
	ora ($11.b)		; 12 11
	ora $F0C0.w,X		; 1D C0 F0
	cmp ($FF.b,X)		; C1 FF
	bpl  17.b		; 10 11
	jsl $B0FD02.l		; 22 02 FD B0
	trb $C0A2.w		; 1C A2 C0
	ora ($22.b),Y		; 11 22
	eor ($23.b)		; 52 23
	cpy $1CC0.w		; CC C0 1C
	beq -32.b		; F0 E0
	ora ($11.b,X)		; 01 11
	and ($11.b,X)		; 21 11
	bne -60.b		; D0 C4
	tsb $114E.w		; 0C 4E 11
	ora ($01.b,X)		; 01 01
	ora $B0E31E.l		; 0F 1E E3 B0
	dex		; CA
	trb $13F1.w		; 1C F1 13
	and $42.b		; 25 42
	and $C0C1.w,X		; 3D C1 C0
	cmp $11000E.l		; CF 0E 00 11
	ora ($11.b,S),Y		; 13 11
	asl $C4F0.w,X		; 1E F0 C4
	cmp $F0.b,S		; C3 F0
	jsr $0210.w		; 20 10 02
	sbc ($EE.b,X)		; E1 EE
	rol $A0B0.w		; 2E B0 A0
	cmp $553201.l		; CF 01 32 55
	and $DC.b,S		; 23 DC
	ora $11C4.w,Y		; 19 C4 11
	sbc ($01.b)		; F2 01
	ora $D0002F.l,X		; 1F 2F 00 D0
	ora $4FB4.w,X		; 1D B4 4F
	ora $02.b,S		; 03 02
	bpl  62.b		; 10 3E
	asl $ECB3.w		; 0E B3 EC
	ldy $4E.b,X		; B4 4E
	ora ($03.b)		; 12 03
	ora ($3E.b,X)		; 01 3E
	asl $EDC2.w		; 0E C2 ED
	ldy $3F.b		; A4 3F
	and ($27.b,X)		; 21 27
	ora ($7E.b,X)		; 01 7E
	cpx $BA95.w		; EC 95 BA
	ldy $10.b		; A4 10
	jsr $2226.w		; 20 26 22
	eor $EA941A.l		; 4F 1A 94 EA
	ldy $E0.b		; A4 E0
	and $02.b,S		; 23 02
	eor $3E.b,S		; 43 3E
	sbc $DFE0.w,X		; FD E0 DF
	sty $0B.b		; 84 0B
	rol $44.b		; 26 44
	bit $24.b,X		; 34 24
	and $D00D.w		; 2D 0D D0
	sty $DC.b		; 84 DC
	inc $33EF.w,X		; FE EF 33
	trb $01.b		; 14 01
	and $BD840F.l,X		; 3F 0F 84 BD
	sbc ($D1.b),Y		; F1 D1
	jsr $F333.w		; 20 33 F3
	ora ($2F.b,X)		; 01 2F
	dey		; 88
.ACCU 16
	rep #$2E		; C2 2E
	tsb $E1.b		; 04 E1
	bit $C2E6.w,X		; 3C E6 C2
	asl $DE84.w,X		; 1E 84 DE
	cpx $F3D1.w		; EC D1 F3
	and $200012.l		; 2F 12 00 20
	sty $F2.b		; 84 F2
	cmp $C20E.w,X		; DD 0E C2
	ora $10F232.l,X		; 1F 32 F2 10
	stz $20.b,X		; 74 20
	asl $C2FB.w		; 0E FB C2
	ldx #$F620.w		; A2 20 F6
	beq 112.b		; F0 70
	ora $02EADF.l,X		; 1F DF EA 02
	cmp ($42.b,S),Y		; D3 42
	eor $23.b,S		; 43 23
	stz $BD.b,X		; 74 BD
	sbc ($D0.b,X)		; E1 D0
	and ($33.b),Y		; 31 33
	sbc ($3F.b)		; F2 3F
	ora $CF74.w		; 0D 74 CF
	sbc $504FEE.l,X		; FF EE 4F 50
	jsl $64FB10.l		; 22 10 FB 64
	phk		; 4B
	lda ($CD.b,S),Y		; B3 CD
	bmi  98.b		; 30 62
	asl $2E.b		; 06 2E
	sbc $1C74.w		; ED 74 1C
	and $1EE1.w		; 2D E1 1E
	eor $001F03.l		; 4F 03 1F 00
	stz $FE.b,X		; 74 FE
	bit $D0F3.w		; 2C F3 D0
	rol $E203.w,X		; 3E 03 E2
	bpl 116.b		; 10 74
	cmp ($0D.b)		; D2 0D
	bpl -47.b		; 10 D1
	pld		; 2B
	and ($D1.b)		; 32 D1
	jsr $2264.w		; 20 64 22
	bcs  75.b		; B0 4B
	cmp ($0B.b)		; D2 0B
	and ($E0.b,S),Y		; 33 E0
	tas		; 1B
	stz $23.b,X		; 74 23
	cmp ($4D.b,X)		; C1 4D
.ACCU 8
	sep #$E1		; E2 E1
	ora $741BF0.l,X		; 1F F0 1B 74
	rti		; 40

	cmp $0E.b		; C5 0E
	bmi -30.b		; 30 E2
	asl $C002.w		; 0E 02 C0
	bvs  -3.b		; 70 FD
	lda ($FF.b),Y		; B1 FF
	bmi -30.b		; 30 E2
	ora $DFF0.w		; 0D F0 DF
	bvs  -4.b		; 70 FC
	cmp ($DF.b,X)		; C1 DF
	ora $0FFFF0.l,X		; 1F F0 FF 0F
	sbc ($60.b,X)		; E1 60
	jmp.w [$EEF0]		; DC F0 EE
	asl $FCD3.w		; 0E D3 FC
	and $F0640F.l,X		; 3F 0F 64 F0
	rti		; 40

	sbc ($1E.b),Y		; F1 1E
	cmp ($00.b)		; D2 00
	plx		; FA
	rts		; 60

	stz $E2.b		; 64 E2
	and ($00.b,X)		; 21 00
	asl $DEE3.w,X		; 1E E3 DE
	bit $6003.w,X		; 3C 03 60
	sbc ($12.b,S),Y		; F3 12
	and ($6F.b),Y		; 31 6F
	cop $A0.b		; 02 A0
	phd		; 0B
	nop		; EA
	rts		; 60

	sbc $3EE203.l		; EF 03 E2 3E
	asl $CFD3.w,X		; 1E D3 CF
	sbc $FF60.w		; ED 60 FF
	ora $06.b,S		; 03 06
	bpl  46.b		; 10 2E
	beq -84.b		; F0 AC
	sbc $220060.l,X		; FF 60 00 22
	ora ($F1.b,S),Y		; 13 F1
	and $DFCDEF.l		; 2F EF CD DF
	bvc  -2.b		; 50 FE
	ora $E316.w,X		; 1D 16 E3
	lda $CCED.w,X		; BD ED CC
	ldx $CB50.w		; AE 50 CB
	bit $BF4C.w,X		; 3C 4C BF
	inc $EBFC.w		; EE FC EB
	dec $F774.w		; CE 74 F7
	adc $4D11EA.l		; 6F EA 11 4D
	ldy $1042.w		; AC 42 10
	stz $F0.b,X		; 74 F0
	and $1F.b,S		; 23 1F
	ora $0321.w		; 0D 21 03
	bne  34.b		; D0 22
	stz $32.b,X		; 74 32
	cpx #$0FEC.w		; E0 EC 0F
	asl $EFF3.w		; 0E F3 EF
	eor ($74.b,S),Y		; 53 74
	ora ($FF.b),Y		; 11 FF
	pld		; 2B
	cpy #$FF1D.w		; C0 1D FF
	and $FE80B0.l,X		; 3F B0 80 FE
	lda $F2DFFF.l,X		; BF FF DF F2
	cpy #$DFEF.w		; C0 EF DF
	bra  14.b		; 80 0E
	cmp $0C13.w		; CD 13 0C
	bne -15.b		; D0 F1
	sbc ($FD.b,X)		; E1 FD
	bvs   5.b		; 70 05
	cmp $2E02.w,X		; DD 02 2E
	adc $4D.b,X		; 75 4D
	eor ($1E.b,S),Y		; 53 1E
	bra -13.b		; 80 F3
	jsl $0E24F0.l		; 22 F0 24 0E
	and ($12.b,X)		; 21 12
	jsl $4CA374.l		; 22 74 A3 4C
	jmp $3E0E4F.l		; 5C 4F 0E 3E
	and ($F1.b,X)		; 21 F1
	stz $C4.b,X		; 74 C4
	ora $32F22E.l,X		; 1F 2E F2 32
	sbc $7422CF.l		; EF CF 22 74
	and $32F1F0.l,X		; 3F F0 F1 32
	sbc ($1B.b,X)		; E1 1B
	ora ($3F.b,S),Y		; 13 3F
	stz $BF.b		; 64 BF
	ora $5D63.w		; 0D 63 5D
	wai		; CB
	inc $7C.b		; E6 7C
	ora ($70.b,X)		; 01 70
	ora ($12.b,X)		; 01 12
	ora ($24.b,S),Y		; 13 24
	eor $4512F1.l		; 4F F1 12 45
	stz $CC.b		; 64 CC
	inc $3E72.w,X		; FE 72 3E
	cmp $55E2.w		; CD E2 55
	nop		; EA
	stz $F3.b,X		; 74 F3
	sbc $3F.b,S		; E3 3F
	sbc $40F1.w		; ED F1 40
	and ($DE.b,X)		; 21 DE
	stz $20.b		; 64 20
	and ($2F.b,X)		; 21 2F
	trb $3DF2.w		; 1C F2 3D
	rol $606D.w		; 2E 6D 60
	mvn $10,$32		; 54 32 10
	bne   1.b		; D0 01
	and ($5D.b,S),Y		; 33 5D
	ora $64.b,S		; 03 64
	sbc $024E2E.l,X		; FF 2E 4E 02
	cmp $F032D1.l,X		; DF D1 32 F0
	rts		; 60

	jsl $02704F.l		; 22 4F 70 02
	asl $56B2.w		; 0E B2 56
	ror $64.b,X		; 76 64
	asl $212C.w		; 0E 2C 21
	ldy #$E04E.w		; A0 4E E0
	bmi  29.b		; 30 1D
	stz $20.b,X		; 74 20
	brk $FE.b		; 00 FE
	and $FE1FFF.l,X		; 3F FF 1F FE
	trb $64.b		; 14 64
	jmp ($14DD.w)		; 6C DD 14
	and $FFD1.w		; 2D D1 FF
	tsb $FA.b		; 04 FA
	rts		; 60

	bmi -63.b		; 30 C1
	sbc ($EB.b),Y		; F1 EB
	ora ($53.b),Y		; 11 53
	and ($12.b,S),Y		; 33 12
	stz $ED.b		; 64 ED
	eor $61B3.w		; 4D B3 61
	ldx $053B.w		; AE 3B 05
	adc $0270.w		; 6D 70 02
	sbc $D1EE2F.l,X		; FF 2F EE D1
	trb $01DD.w		; 1C DD 01
	pla		; 68
	sbc ($B6.b,X)		; E1 B6
	sbc $946D.w		; ED 6D 94
	eor ($BF.b,S),Y		; 53 BF
	tad		; 5B
	stz $C0.b		; 64 C0
	ora $330E.w		; 0D 0E 33
	cmp ($F0.b)		; D2 F0
	and ($ED.b,X)		; 21 ED
	stz $21.b		; 64 21
	sbc $1F10D4.l,X		; FF D4 10 1F
	pei ($3F.b)		; D4 3F
	dec $E160.w		; CE 60 E1
	sep #$4F		; E2 4F
	cmp ($01.b,X)		; C1 01
	sbc ($ED.b),Y		; F1 ED
	sbc $64.b,S		; E3 64
	sbc ($ED.b),Y		; F1 ED
	bit $FC.b,X		; 34 FC
	ora $1E4EF3.l		; 0F F3 4E 1E
	stz $C6.b		; 64 C6
	cmp $0F0F41.l		; CF 41 0F 0F
	jsr ($05E5.w,X)		; FC E5 05
	rts		; 60

	tsb $20.b		; 04 20
	cmp ($FD.b,S),Y		; D3 FD
	ora $1313.w,X		; 1D 13 13
	rol $0460.w,X		; 3E 60 04
	cpx $FFF2.w		; EC F2 FF
	sbc $61E447.l,X		; FF 47 E4 61
	stz $01.b,X		; 74 01
	bne  31.b		; D0 1F
	ora ($21.b,X)		; 01 21
	jsr $E2F0.w		; 20 F0 E2
	stz $FE.b,X		; 74 FE
	ora ($0F.b,X)		; 01 0F
	ora ($16.b,X)		; 01 16
	phd		; 0B
	rol $74F3.w,X		; 3E F3 74
	sbc $E130.w		; ED 30 E1
	rti		; 40

	sbc $0D.b,S		; E3 0D
	beq  32.b		; F0 20
	stz $D1.b		; 64 D1
	bvc  16.b		; 50 10
	sbc $21FA4F.l,X		; FF 4F FA 21
	ora $F660.w		; 0D 60 F6
	adc $40.b		; 65 40
	bpl  66.b		; 10 42
	bpl  31.b		; 10 1F
	lsr $64.b,X		; 56 64
	ora ($E0.b,X)		; 01 E0
	rol $F00D.w		; 2E 0D F0
	ora $03.b,S		; 03 03
	sbc $012164.l,X		; FF 64 21 01
	cmp ($B2.b),Y		; D1 B2
	ora $1710.w,X		; 1D 10 17
	jmp ($D274.w)		; 6C 74 D2
	inc $C022.w,X		; FE 22 C0
	rti		; 40

	cmp $3A.b		; C5 3A
	bmi 100.b		; 30 64
	cpx #$23CF.w		; E0 CF 23
	and ($D4.b),Y		; 31 D4
	beq  29.b		; F0 1D
	phd		; 0B
	stz $34.b		; 64 34
	brk $5F.b		; 00 5F
	beq  28.b		; F0 1C
	trb $3201.w		; 1C 01 32
	stz $11.b		; 64 11
	asl $2DF0.w		; 0E F0 2D
	pea $6CD0.w		; F4 D0 6C
	sbc $74.b,S		; E3 74
	inc $D311.w,X		; FE 11 D3
	eor $4EAF13.l		; 4F 13 AF 4E
	pei ($74.b)		; D4 74
	cpx $2D33.w		; EC 33 2D
	ora $2EFE6E.l,X		; 1F 6E FE 2E
	inc $F374.w,X		; FE 74 F3
	ora ($03.b,X)		; 01 03
	and $F0D0F1.l		; 2F F1 D0 F0
	jsr $B274.w		; 20 74 B2
	eor $FBD032.l		; 4F 32 D0 FB
	and ($0E.b,S),Y		; 33 0E
	beq -128.b		; F0 80
	ora ($11.b)		; 12 11
	ora $E142.w		; 0D 42 E1
	sbc ($15.b)		; F2 15
	ora $3F0370.l,X		; 1F 70 03 3F
	sbc ($10.b),Y		; F1 10
	sbc ($67.b)		; F2 67
	ora $98B1.w,Y		; 19 B1 98
	ora $0D12FF.l		; 0F FF 12 0D
	brk $30.b		; 00 30
	and $84B2.w,X		; 3D B2 84
	jsl $21C00C.l		; 22 0C C0 21
	ora ($11.b),Y		; 11 11
	ora ($DE.b),Y		; 11 DE
	bra -14.b		; 80 F2
	and ($EE.b)		; 32 EE
	sbc $14DD.w,X		; FD DD 14
	rol $84D0.w,X		; 3E D0 84
	and ($EF.b),Y		; 31 EF
	cmp $31EC03.l,X		; DF 03 EC 31
	brk $23.b		; 00 23
	dey		; 88
	ora $1DE0.w		; 0D E0 1D
	asl $DE.b		; 06 DE
	asl $2C.b,X		; 16 2C
	ora ($A8.b,S),Y		; 13 A8
	asl $1E01.w		; 0E 01 1E
	cmp $E32D05.l,X		; DF 05 2D E3
	bvc -76.b		; 50 B4
	bpl  33.b		; 10 21
	inc $ECF1.w,X		; FE F1 EC
	lda $FF44.w		; AD 44 FF
	cpy $23.b		; C4 23
	and $E0FF01.l		; 2F 01 FF E0
	asl $44DD.w		; 0E DD 44
	cpy $0E.b		; C4 0E
	bit $2D.b		; 24 2D
	sbc ($FE.b),Y		; F1 FE
	sbc ($0E.b,X)		; E1 0E
	lda ($C8.b)		; B2 C8
	jmp $31C2.w		; 4C C2 31
	bcc  65.b		; 90 41
	cpy #$CD32.w		; C0 32 CD
	cpy #$42B0.w		; C0 B0 42
	ora ($54.b,X)		; 01 54
	ora $F1FE11.l		; 0F 11 FE F1
	cpy $0E.b		; C4 0E
	sbc $12FE14.l,X		; FF 14 FE 12
	and $1EE2.w		; 2D E2 1E
	cpy $E1.b		; C4 E1
	and ($FC.b),Y		; 31 FC
	lda $6D.b,X		; B5 6D
	cmp ($42.b),Y		; D1 42
	lda $ED30C4.l,X		; BF C4 30 ED
	bit $0E.b		; 24 0E
	cpy $CE74.w		; CC 74 CE
	and $C0.b		; 25 C0
	eor $D02FF2.l		; 4F F2 2F D0
	eor $0B.b,S		; 43 0B
	sta ($4F.b)		; 92 4F
	cpy $F3.b		; C4 F3
	lsr $3FB1.w		; 4E B1 3F
	cmp $B3EC43.l,X		; DF 43 EC B3
	cpy #$EE53.w		; C0 53 EE
	and $1D.b,X		; 35 1D
	cop $0D.b		; 02 0D
	sbc $40.b,S		; E3 40
	cpy $CD.b		; C4 CD
	stz $CD.b,X		; 74 CD
	bit $FB.b,X		; 34 FB
	sbc ($1E.b,S),Y		; F3 1E
	sbc $C0.b,S		; E3 C0
	eor ($EA.b,S),Y		; 53 EA
	ldy $3F.b,X		; B4 3F
.INDEX 8
	sep #$51		; E2 51
	dec $C421.w,X		; DE 21 C4
	bne  82.b		; D0 52
	dex		; CA
	sbc [$5C.b]		; E7 5C
	cmp $40.b,S		; C3 40
	lda $0F01D0.l		; AF D0 01 0F
	cop $1E.b		; 02 1E
	cmp $22FF31.l		; CF 31 FF 22
	bne  14.b		; D0 0E
	sbc ($0F.b),Y		; F1 0F
	cop $2F.b		; 02 2F
	dec $FF22.w		; CE 22 FF
	cpy #$25.b		; C0 25
	trb $2FE2.w		; 1C E2 2F
	sbc ($4F.b,S),Y		; F3 4F
	stz $C444.w		; 9C 44 C4
	lda $13CC43.l,X		; BF 43 CC 13
	asl $FB03.w,X		; 1E 03 FB
	cpx $C4.b		; E4 C4
	eor $CF40D0.l		; 4F D0 40 CF
	ora ($00.b)		; 12 00
	ora ($CD.b,X)		; 01 CD
	bcs -11.b		; B0 F5
	eor $AC6FE4.l		; 4F E4 6F AC
	ora ($12.b,S),Y		; 13 12
	and $A6B4.w		; 2D B4 A6
	rts		; 60

	cmp $CA45.w,X		; DD 45 CA
	ora $3F.b,S		; 03 3F
	ora ($C4.b,X)		; 01 C4
	jsr ($1F14.w,X)		; FC 14 1F
	sbc ($3F.b,X)		; E1 3F
	cmp $B00012.l,X		; DF 12 00 B0
	jsr $249A.w		; 20 9A 24
	rol $5FF4.w		; 2E F4 5F
	cpy $B002.w		; CC 02 B0
	jsl $32A20B.l		; 22 0B A2 32
	inc $1D35.w,X		; FE 35 1D
	cmp $1022B0.l		; CF B0 22 10
	plb		; AB
	and $2E.b,S		; 23 2E
	sbc $51.b,S		; E3 51
	jmp.w [$33B4]		; DC B4 33
	asl $46CC.w,X		; 1E CC 46
	ora $51B2.w,X		; 1D B2 51
	xba		; EB
	ldy $E4.b,X		; B4 E4
	rti		; 40

	phx		; DA
	sbc [$31.b],Y		; F7 31
	cpy $1F23.w		; CC 23 1F
	ldy $CE.b		; A4 CE
	and $1E.b,S		; 23 1E
	cmp $DF2D33.l		; CF 33 2D DF
	ora ($88.b),Y		; 11 88
	cmp $4FFB5D.l,X		; DF 5D FB 4F
	ora ($5E.b,X)		; 01 5E
	dex		; CA
	and ($84.b,S),Y		; 33 84
	rol $5234.w		; 2E 34 52
	sbc $35BE.w,X		; FD BE 35
	rol $88BE.w,X		; 3E BE 88
	sbc ($F4.b),Y		; F1 F4
	eor $0EEF.w		; 4D EF 0E
	cop $40.b		; 02 40
	lda $D184.w,X		; BD 84 D1
	jsr ($62D5.w,X)		; FC D5 62
	asl $01E0.w		; 0E E0 01
	and $03EC84.l,X		; 3F 84 EC 03
	nop		; EA
	tsb $43.b		; 04 43
	cmp $841021.l		; CF 21 10 84
	sbc $EC22DE.l,X		; FF DE 22 EC
	sbc $5F.b,S		; E3 5F
	sbc ($31.b),Y		; F1 31
	sty $DF.b		; 84 DF
	brk $FE.b		; 00 FE
	ora ($EF.b,S),Y		; 13 EF
	bne   0.b		; D0 00
	bit $74.b		; 24 74
	lsr A		; 4A
	lda $CC63.w,X		; BD 63 CC
	ora $FD.b,X		; 15 FD
	phx		; DA
	ldy $84.b,X		; B4 84
	eor $FB.b		; 45 FB
	sbc ($4F.b)		; F2 4F
	bne  16.b		; D0 10
	asl $88EC.w,X		; 1E EC 88
	and ($5B.b),Y		; 31 5B
	sbc $D034.w,X		; FD 34 D0
	beq  -1.b		; F0 FF
	lsr $0D84.w		; 4E 84 0D
	bne  65.b		; D0 41
	sbc $DD3221.l,X		; FF 21 32 DD
	inc $4384.w		; EE 84 43
	jsr ($33CE.w,X)		; FC CE 33
	sbc ($F3.b),Y		; F1 F3
	bmi -35.b		; 30 DD
	sty $1F.b		; 84 1F
	and ($DD.b,S),Y		; 33 DD
	ldy $F155.w,X		; BC 55 F1
	sbc ($41.b)		; F2 41
	sty $CC.b		; 84 CC
	and $DC34.w		; 2D 34 DC
	stz $EF76.w,X		; 9E 76 EF
	sbc $94.b,S		; E3 94
	and ($DC.b),Y		; 31 DC
	rol $DD42.w		; 2E 42 DD
	bne  51.b		; D0 33
	sbc ($94.b),Y		; F1 94
	sbc ($30.b),Y		; F1 30
	jmp.w [$512F]		; DC 2F 51
	jmp.w [$43D0]		; DC D0 43
	ldy #$11.b		; A0 11
	ora ($22.b,X)		; 01 22
	asl $22FF.w		; 0E FF 22
	ora $A0CD.w		; 0D CD A0
	ora ($11.b,X)		; 01 11
	brk $22.b		; 00 22
	inc $31FF.w,X		; FE FF 31
	jsr ($01A4.w,X)		; FC A4 01
	rti		; 40

	ora $D11E01.l		; 0F 01 1E D1
	pea $A01E.w		; F4 1E A0
	jmp.w [$21C0]		; DC C0 21
	jsr $2E02.w		; 20 02 2E
	sbc $FDA4E3.l		; EF E3 A4 FD
	cmp $FF0025.l,X		; DF 25 00 FF
	jsl $A02FCC.l		; 22 CC 2F A0
	and $0C.b,S		; 23 0C
	plb		; AB
	trb $31.b		; 14 31
	sbc ($52.b),Y		; F1 52
	plb		; AB
	bcs -32.b		; B0 E0
	and ($FD.b,X)		; 21 FD
	bne  51.b		; D0 33
	ora $B42C03.l,X		; 1F 03 2C B4
	beq  67.b		; F0 43
	inc $53D0.w,X		; FE D0 53
	inc $4FC2.w,X		; FE C2 4F
	clv		; B8
	lda $17.b		; A5 17
	jmp.w [$35E0]		; DC E0 35
	cmp $62EF.w,X		; DD EF 62
	clv		; B8
	tsx		; BA
	eor ($6F.b),Y		; 51 6F
	ldx $6E02.w,Y		; BE 02 6E
	dec $B8F5.w		; CE F5 B8
	lsr A		; 4A
	stx $16.b,Y		; 96 16
	xce		; FB
	cpx #$26.b		; E0 26
	xba		; EB
	asl $45B8.w		; 0E B8 45
	tax		; AA
	.db $42, $6F		; 42 6F
	ldx $6EF3.w,Y		; BE F3 6E
	dec $F4B8.w		; CE B8 F4
	jmp $2594.w		; 4C 94 25
	phd		; 0B
	inc $0B26.w,X		; FE 26 0B
	ldy $EC.b,X		; B4 EC
	tsb $1A.b		; 04 1A
	cmp $CF0F35.l,X		; DF 35 0F CF
	mvp $1E,$B4		; 44 B4 1E
	cmp $02BC42.l		; CF 42 BC 02
	eor ($FC.b,X)		; 41 FC
	sbc ($B0.b)		; F2 B0
	bit $40.b,X		; 34 40
	sbc ($30.b,X)		; E1 30
	jmp.w [$11D1]		; DC D1 11
	cpx $E2B0.w		; EC B0 E2
	bit $1F.b,X		; 34 1F
	ora $2F.b,S		; 03 2F
	cmp $1F01.w,X		; DD 01 1F
	ldy $A0.b		; A4 A0
	stz $2F.b		; 64 2F
	lda ($52.b),Y		; B1 52
	cpy $20F2.w		; CC F2 20
	tay		; A8
	xba		; EB
	adc $2E.b,S		; 63 2E
	xce		; FB
	rol $0B.b		; 26 0B
	cpy $11.b		; C4 11
	tay		; A8
	sbc $0F50B3.l,X		; FF B3 50 0F
	cmp ($32.b),Y		; D1 32
	wai		; CB
	eor ($A8.b,X)		; 41 A8
	brk $FA.b		; 00 FA
	eor $1E.b		; 45 1E
	ora $3B04.w		; 0D 04 3B
	lda $A4.b		; A5 A4
	ora $349C00.l,X		; 1F 00 9C 34
	jsl $1B26FF.l		; 22 FF 26 1B
	ldy $E1.b		; A4 E1
	sbc $43B21A.l,X		; FF 1A B2 43
	jsr $62E2.w		; 20 E2 62
	ldy $AE.b		; A4 AE
	ora $24AB00.l,X		; 1F 00 AB 24
	and ($0E.b)		; 32 0E
	rol $A4.b		; 26 A4
	rol A		; 2A
	cmp ($F0.b)		; D2 F0
	asl A		; 0A
	lda ($53.b),Y		; B1 53
	jsr $A4E1.w		; 20 E1 A4
	adc ($9D.b,S),Y		; 73 9D
	and $25AA00.l		; 2F 00 AA 25
	and ($FE.b)		; 32 FE
	ldy $27.b		; A4 27
	rol A		; 2A
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	ldx #$53.b		; A2 53
	and $32F1B4.l		; 2F B4 F1 32
	cmp $CD011F.l		; CF 1F 01 CD
	jsl $0FB420.l		; 22 20 B4 0F
	trb $0D.b		; 14 0D
	beq   0.b		; F0 00
	ora $22D2.w		; 0D D2 22
	clv		; B8
	cpx #$F2.b		; E0 F2
	bit $1FD3.w,X		; 3C D3 1F
	ora ($B3.b,X)		; 01 B3
	jsl $FF11B4.l		; 22 B4 11 FF
	and $FD.b,S		; 23 FD
	ora ($F1.b,X)		; 01 F1
	jsr ($B4F2.w,X)		; FC F2 B4
	bmi  15.b		; 30 0F
	ora ($3D.b)		; 12 3D
	cmp ($1F.b),Y		; D1 1F
	asl $B4D0.w		; 0E D0 B4
	and ($1F.b)		; 32 1F
	sbc ($40.b),Y		; F1 40
	cmp $CFF011.l		; CF 11 F0 CF
	ldy $23.b,X		; B4 23
	bpl  -1.b		; 10 FF
	and $ED.b,S		; 23 ED
	ora ($00.b,X)		; 01 00
	jsr ($CFB0.w,X)		; FC B0 CF
	and ($10.b,X)		; 21 10
	trb $4E.b		; 14 4E
	dec $1C22.w		; CE 22 1C
	cpy $E2.b		; C4 E2
	and ($FF.b)		; 32 FF
	sbc ($1C.b)		; F2 1C
	cpy #$34.b		; C0 34
	ora $21D5C8.l		; 0F C8 D5 21
	ldx $0C14.w,Y		; BE 14 0C
	cpx $23.b		; E4 23
	cmp $DFC4.w		; CD C4 DF
	and ($FD.b,S),Y		; 33 FD
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldx $3D26.w		; AE 26 3D
	cpy $CE.b		; C4 CE
	bit $0C.b,X		; 34 0C
	cmp ($51.b)		; D2 51
	tsx		; BA
	rol $5D.b		; 26 5D
	cpy #$EC.b		; C0 EC
	tsb $4F.b		; 04 4F
	dec $0A35.w		; CE 35 0A
	lda ($54.b),Y		; B1 54
	cpy #$EC.b		; C0 EC
	pea $CF3F.w		; F4 3F CF
	and $1B.b,X		; 35 1B
	lda ($44.b),Y		; B1 44
	cpy #$ED.b		; C0 ED
	ora $2F.b,S		; 03 2F
	cmp $B01D34.l,X		; DF 34 1D B0
	and ($B4.b,S),Y		; 33 B4
	stz $EB55.w		; 9C 55 EB
	sbc $61.b,S		; E3 61
	cpy $60C4.w		; CC C4 60
	bcs  45.b		; B0 2D
	sbc ($2F.b,S),Y		; F3 2F
	sbc $CB2F34.l		; EF 34 2F CB
	ora ($C4.b,S),Y		; 13 C4
	ora $F01FF1.l		; 0F F1 1F F0
	and ($0E.b,X)		; 21 0E
	inc $C833.w		; EE 33 C8
	sbc $1D03.w		; ED 03 1D
	ora ($20.b,X)		; 01 20
	sbc $C054E0.l		; EF E0 54 C0
	eor $FE.b,S		; 43 FE
	ora ($FF.b),Y		; 11 FF
	cop $31.b		; 02 31
	xba		; EB
	lda ($C4.b),Y		; B1 C4
	bmi -35.b		; 30 DD
	and ($FF.b,X)		; 21 FF
	ora ($2F.b)		; 12 2F
	cmp $C0E4.w,X		; DD E4 C0
	mvp $F1,$1E		; 44 1E F1
	ora $0D32F1.l		; 0F F1 32 0D
	ldy $34C0.w,X		; BC C0 34
	rol $0FE0.w,X		; 3E E0 0F
	beq  51.b		; F0 33
	asl $C0BB.w,X		; 1E BB C0
	and $30.b		; 25 30
	bne  16.b		; D0 10
	beq  35.b		; F0 23
	and $56C4CA.l		; 2F CA C4 56
	sbc $2FC2.w,X		; FD C2 2F
	sbc ($21.b),Y		; F1 21
	inc $C0DD.w,X		; FE DD C0
	pei ($52.b)		; D4 52
	sbc $F000.w		; ED 00 F0
	ora ($30.b,S),Y		; 13 30
	stp		; DB
	cpy #$B3.b		; C0 B3
	eor ($FD.b,S),Y		; 53 FD
	brk $F0.b		; 00 F0
	ora $31.b,S		; 03 31
	stp		; DB
	cpy #$A2.b		; C0 A2
	adc $0C.b,S		; 63 0C
	sbc ($00.b),Y		; F1 00
	cop $31.b		; 02 31
	xba		; EB
	cpy $F5.b		; C4 F5
	ror $22DC.w		; 6E DC 22
	beq  18.b		; F0 12
	asl $C0DE.w,X		; 1E DE C0
	ldx $1D64.w		; AE 64 1D
	cmp ($00.b),Y		; D1 00
	cop $32.b		; 02 32
	jsr ($ADC0.w,X)		; FC C0 AD
	eor $2D.b,X		; 55 2D
	bne   0.b		; D0 00
	ora ($32.b,X)		; 01 32
	tsb $ACC0.w		; 0C C0 AC
	lsr $3E.b		; 46 3E
	cpy #$10.b		; C0 10
	brk $33.b		; 00 33
	ora $BBC0.w		; 0D C0 BB
	rol $3F.b,X		; 36 3F
	cmp $230010.l		; CF 10 00 23
	ora $BAC0.w,X		; 1D C0 BA
	asl $40.b,X		; 16 40
	dec $0010.w		; CE 10 00
	and $1E.b,S		; 23 1E
	cpy #$BA.b		; C0 BA
	asl $41.b		; 06 41
	dec $0010.w		; CE 10 00
	and $1E.b,S		; 23 1E
	cpy #$CA.b		; C0 CA
	inc $41.b,X		; F6 41
	cmp $0011.w		; CD 11 00
	ora ($2F.b,S),Y		; 13 2F
	cpy #$CB.b		; C0 CB
	inc $52.b		; E6 52
	jmp.w [$1011]		; DC 11 10
	ora ($2F.b,S),Y		; 13 2F
	cpy #$DB.b		; C0 DB
	cmp $52.b		; C5 52
	stp		; DB
	ora ($10.b,X)		; 01 10
	cop $20.b		; 02 20
	cpy #$DB.b		; C0 DB
	cmp $63.b,S		; C3 63
	xba		; EB
	sbc ($10.b),Y		; F1 10
	cop $20.b		; 02 20
	cpy #$EC.b		; C0 EC
	lda ($63.b)		; B2 63
	xce		; FB
	sbc ($11.b),Y		; F1 11
	cop $21.b		; 02 21
	cpy $DE.b		; C4 DE
	sbc $5E.b,X		; F5 5E
	stp		; DB
	and ($00.b,S),Y		; 33 00
.INDEX 8
	sep #$1F		; E2 1F
	cpy #$EC.b		; C0 EC
	lda $D11B64.l,X		; BF 64 1B D1
	ora ($F1.b),Y		; 11 F1
	and ($C0.b,X)		; 21 C0
	sbc $64BE.w,X		; FD BE 64
	bit $11D1.w		; 2C D1 11
	ora ($21.b,X)		; 01 21
	cpy #$FD.b		; C0 FD
	ldx $2C54.w,Y		; BE 54 2C
	cmp ($11.b,X)		; C1 11
	brk $22.b		; 00 22
	cpy #$FD.b		; C0 FD
	lda $2D55.w,X		; BD 55 2D
	cmp ($11.b,X)		; C1 11
	brk $22.b		; 00 22
	cpy #$0D.b		; C0 0D
	ldy $3D45.w,X		; BC 45 3D
	bcs  17.b		; B0 11
	brk $22.b		; 00 22
	cpy #$0D.b		; C0 0D
	ldy $3E45.w,X		; BC 45 3E
	bcs  17.b		; B0 11
	brk $22.b		; 00 22
	cpy #$0E.b		; C0 0E
	ldy $3E35.w,X		; BC 35 3E
	bcs  17.b		; B0 11
	brk $22.b		; 00 22
	cpy #$0E.b		; C0 0E
	wai		; CB
	and $3F.b,X		; 35 3F
	bcs  17.b		; B0 11
	brk $22.b		; 00 22
	cpy #$0E.b		; C0 0E
	wai		; CB
	and $3F.b		; 25 3F
	lda $220011.l,X		; BF 11 00 22
	cpy #$0E.b		; C0 0E
	wai		; CB
	and $3F.b		; 25 3F
	lda $220F11.l,X		; BF 11 0F 22
	cpy #$1E.b		; C0 1E
	wai		; CB
	and $30.b		; 25 30
	lda $220F11.l,X		; BF 11 0F 22
	cpy #$1E.b		; C0 1E
	wai		; CB
	ora $30.b,X		; 15 30
	lda $120F11.l,X		; BF 11 0F 12
	cpy #$1E.b		; C0 1E
	wai		; CB
	ora $30.b,X		; 15 30
	lda $120011.l,X		; BF 11 00 12
	cpy #$1E.b		; C0 1E
	wai		; CB
	and $3F.b		; 25 3F
	lda $120011.l,X		; BF 11 00 12
	cpy #$0E.b		; C0 0E
	wai		; CB
	and $3F.b		; 25 3F
	lda $220011.l,X		; BF 11 00 22
	cpy #$0E.b		; C0 0E
	cpy $3F25.w		; CC 25 3F
	bcs  18.b		; B0 12
	brk $22.b		; 00 22
	cpy #$0E.b		; C0 0E
	cpy $3F35.w		; CC 35 3F
	bcs  18.b		; B0 12
	brk $12.b		; 00 12
	cpy #$0E.b		; C0 0E
	cpy $3E35.w		; CC 35 3E
	bcs  18.b		; B0 12
	brk $12.b		; 00 12
	cpy #$0E.b		; C0 0E
	cpy $3E34.w		; CC 34 3E
	bcs  18.b		; B0 12
	brk $22.b		; 00 22
	cpy #$0E.b		; C0 0E
	cmp $2E34.w		; CD 34 2E
	cpy #$12.b		; C0 12
	brk $11.b		; 00 11
	cpy #$0E.b		; C0 0E
	cmp $2E34.w		; CD 34 2E
	cpy #$12.b		; C0 12
	brk $11.b		; 00 11
	cpy #$0E.b		; C0 0E
	cmp $2D44.w		; CD 44 2D
	cpy #$12.b		; C0 12
	brk $11.b		; 00 11
	cpy #$0E.b		; C0 0E
	cmp $2E34.w		; CD 34 2E
	bcs  18.b		; B0 12
	brk $11.b		; 00 11
	cpy #$0F.b		; C0 0F
	jmp.w [$3F25]		; DC 25 3F
	bcs  18.b		; B0 12
	brk $11.b		; 00 11
	cpy $FF.b		; C4 FF
	sbc $C4FC53.l		; EF 53 FC C4
	and ($EF.b,X)		; 21 EF
	jsr $0FC0.w		; 20 C0 0F
	jmp.w [$3005]		; DC 05 30
	lda $111F12.l,X		; BF 12 1F 11
	cpy #$1F.b		; C0 1F
	cpx $41F5.w		; EC F5 41
	ldx $1F12.w,Y		; BE 12 1F
	ora ($C0.b,X)		; 01 C0
	bpl -20.b		; 10 EC
	pei ($42.b)		; D4 42
	cmp $2F12.w		; CD 12 2F
	ora ($C0.b,X)		; 01 C0
	bpl  -4.b		; 10 FC
	cmp $43.b,S		; C3 43
	jmp.w [$2F12]		; DC 12 2F
	ora ($C0.b,X)		; 01 C0
	bpl  -3.b		; 10 FD
	cmp ($53.b,X)		; C1 53
	xce		; FB
	ora ($20.b,X)		; 01 20
	sbc ($C0.b),Y		; F1 C0
	ora ($0E.b),Y		; 11 0E
	cmp $E11B54.l		; CF 54 1B E1
	and ($F0.b,X)		; 21 F0
	cpy #$11.b		; C0 11
	asl $34CD.w		; 0E CD 34
	and $22C1.w		; 2D C1 22
	beq -60.b		; F0 C4
	bpl  -1.b		; 10 FF
	sbc $C4EC54.l		; EF 54 EC C4
	and ($E0.b,X)		; 21 E0
	cpy #$11.b		; C0 11
	bpl -20.b		; 10 EC
	sbc $41.b,X		; F5 41
	ldx $1F12.w,Y		; BE 12 1F
	cpy #$01.b		; C0 01
	bpl -19.b		; 10 ED
	pei ($42.b)		; D4 42
	jmp.w [$2F11]		; DC 11 2F
	cpy #$01.b		; C0 01
	bpl  -3.b		; 10 FD
	cmp ($53.b,X)		; C1 53
	xce		; FB
	ora ($20.b,X)		; 01 20
	cpy #$01.b		; C0 01
	bpl  -2.b		; 10 FE
	cmp $E11B53.l		; CF 53 1B E1
	and ($C0.b,X)		; 21 C0
	ora ($10.b,X)		; 01 10
	inc $44DD.w,X		; FE DD 44
	bit $11D1.w		; 2C D1 11
	cpy #$01.b		; C0 01
	ora ($0F.b),Y		; 11 0F
	jmp.w [$3E24]		; DC 24 3E
	bcs  17.b		; B0 11
	cpy #$00.b		; C0 00
	ora ($0F.b),Y		; 11 0F
	cpx $3005.w		; EC 05 30
	lda $00C011.l,X		; BF 11 C0 00
	ora ($0F.b),Y		; 11 0F
	cpx $31E4.w		; EC E4 31
	cmp $C011.w		; CD 11 C0
	bpl  18.b		; 10 12
	ora $42C3FD.l		; 0F FD C3 42
	cpx $C011.w		; EC 11 C0
	bpl  18.b		; 10 12
	ora $43C1FE.l,X		; 1F FE C1 43
	tsb $C001.w		; 0C 01 C0
	brk $12.b		; 00 12
	bpl  -2.b		; 10 FE
	lda $011D43.l,X		; BF 43 1D 01
	cpy #$FF.b		; C0 FF
	cop $21.b		; 02 21
	asl $43BE.w		; 0E BE 43
	asl $C002.w,X		; 1E 02 C0
	sbc $1F2102.l		; EF 02 21 1F
	lda $1E43.w,X		; BD 43 1E
	ora ($C0.b)		; 12 C0
	inc $1102.w		; EE 02 11
	ora $1E33BC.l,X		; 1F BC 33 1E
	ora ($C0.b,S),Y		; 13 C0
	inc $1002.w,X		; FE 02 10
	bpl -68.b		; 10 BC
	and ($0E.b,S),Y		; 33 0E
	ora ($C0.b,S),Y		; 13 C0
	inc $1002.w,X		; FE 02 10
	jsr $33BC.w		; 20 BC 33
	asl $C013.w		; 0E 13 C0
	inc $1002.w,X		; FE 02 10
	and ($BC.b,X)		; 21 BC
	and ($0E.b,S),Y		; 33 0E
	trb $C0.b		; 14 C0
	inc $1002.w,X		; FE 02 10
	and ($BC.b,X)		; 21 BC
	and ($0E.b)		; 32 0E
	trb $C0.b		; 14 C0
	sbc $0002.w,X		; FD 02 00
	and ($BC.b,X)		; 21 BC
	and ($0E.b)		; 32 0E
	trb $C0.b		; 14 C0
	sbc $0F12.w,X		; FD 12 0F
	and ($BB.b,X)		; 21 BB
	and ($FE.b)		; 32 FE
	bit $C0.b		; 24 C0
	inc $0F12.w,X		; FE 12 0F
	jsl $FE32BC.l		; 22 BC 32 FE
	bit $C0.b		; 24 C0
	inc $FF12.w,X		; FE 12 FF
	and ($CC.b)		; 32 CC
	and ($FE.b)		; 32 FE
	and $C0.b,S		; 23 C0
	inc $FF12.w,X		; FE 12 FF
	and ($CC.b)		; 32 CC
	and ($EE.b)		; 32 EE
	and $C0.b,S		; 23 C0
	inc $FF22.w,X		; FE 22 FF
	and ($CC.b,X)		; 21 CC
	jsl $B023EE.l		; 22 EE 23 B0
	inc $EE43.w		; EE 43 EE
	.db $42, $A9		; 42 A9
	and ($DD.b)		; 32 DD
	bit $B0.b,X		; 34 B0
	inc $FF43.w		; EE 43 FF
	and ($BA.b)		; 32 BA
	jsl $B024DD.l		; 22 DD 24 B0
	sbc $32FF43.l,X		; FF 43 FF 32
	dex		; CA
	ora ($DD.b)		; 12 DD
	ora ($B4.b,S),Y		; 13 B4
	cpy #$41.b		; C0 41
	cmp $42BE30.l,X		; DF 30 BE 42
	dec $A423.w,X		; DE 23 A4
	jmp.w [$CD64]		; DC 64 CD
	and ($AB.b,S),Y		; 33 AB
	and [$DC.b]		; 27 DC
	tsb $90.b		; 04 90
	bit $5FC4.w,X		; 3C C4 5F
	sbc $5E.b,X		; F5 5E
	ldy #$61.b		; A0 61
	dec $2F94.w		; CE 94 2F
	lda ($4F.b)		; B2 4F
	sbc ($3F.b),Y		; F1 3F
	cmp ($31.b),Y		; D1 31
	cpx #$84.b		; E0 84
	sbc $0DE1.w		; ED E1 0D
	and $1B.b		; 25 1B
	sbc $3F.b		; E5 3F
	sbc $80.b,X		; F5 80
	eor $9109CF.l,X		; 5F CF 09 91
	and $419E.w,X		; 3D 9E 41
	cpx $84.b		; E4 84
	phk		; 4B
	lda ($3D.b),Y		; B1 3D
	cmp $3C.b		; C5 3C
	lda ($4F.b)		; B2 4F
	pea $3D84.w		; F4 84 3D
	sbc ($1C.b,X)		; E1 1C
	pea $D12A.w		; F4 2A D1
	rol $8405.w,X		; 3E 05 84
	and $1DF2.w		; 2D F2 1D
	sbc $1C.b,X		; F5 1C
	cpy #$1D.b		; C0 1D
	pea $3E84.w		; F4 84 3E
	sbc ($0E.b)		; F2 0E
	ora $3E.b,S		; 03 3E
	sbc ($2D.b,X)		; E1 2D
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	jmp ($E0DE.w,X)		; 7C DE E0
	inc $5D.b		; E6 5D
	cpx $3C.b		; E4 3C
	ldy $84.b		; A4 84
	and ($E0.b),Y		; 31 E0
	inc $00F1.w		; EE F1 00
	sbc ($1F.b)		; F2 1F
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	stz $00.b		; 64 00
	sbc ($F2.b,X)		; E1 F2
	sbc $A0FEA0.l,X		; FF A0 FE A0
	sei		; 78
	rts		; 60

	sta ($D7.b),Y		; 91 D7
	lda ($3E.b),Y		; B1 3E
	cmp ($5C.b,X)		; C1 5C
	bcs 116.b		; B0 74
	asl $0F.b,X		; 16 0F
	cmp ($32.b)		; D2 32
	and $EEF011.l		; 2F 11 F0 EE
	stz $05.b,X		; 74 05
	bit $0FA0.w		; 2C A0 0F
	brk $01.b		; 00 01
	jsl $1374EE.l		; 22 EE 74 13
	eor $0D21B0.l		; 4F B0 21 0D
	ora $74CFE1.l		; 0F E1 CF 74
	ora ($32.b)		; 12 32
	dec $2E50.w		; CE 50 2E
	sbc $F1.b		; E5 F1
	sbc $000F74.l		; EF 74 0F 00
	lda $F32001.l		; AF 01 20 F3
	ora ($E1.b)		; 12 E1
	stz $00.b,X		; 74 00
	ora ($C1.b,S),Y		; 13 C1
	brk $FD.b		; 00 FD
	lda ($0F.b)		; B2 0F
	inc $EF70.w,X		; FE 70 EF
	trb $31.b		; 14 31
	beq  48.b		; F0 30
	cmp $740F31.l,X		; DF 31 0F 74
	rol $0DD2.w		; 2E D2 0D
	sbc ($2C.b,S),Y		; F3 2C
	sbc ($3F.b,S),Y		; F3 3F
	cpy $74.b		; C4 74
	tas		; 1B
	ora $3C.b		; 05 3C
	dec $FB.b,X		; D6 FB
	sbc ($1D.b,X)		; E1 1D
	cmp [$74.b],Y		; D7 74
	asl $4FD2.w,X		; 1E D2 4F
	sbc $0E.b		; E5 0E
	sep #$4C		; E2 4C
	pei ($74.b)		; D4 74
	inc $0DE0.w,X		; FE E0 0D
	cpx $10.b		; E4 10
	cmp ($32.b)		; D2 32
	cmp ($74.b),Y		; D1 74
	lsr $2EC4.w		; 4E C4 2E
	ora ($EF.b,X)		; 01 EF
	inc $B31F.w		; EE 1F B3
	bra  -1.b		; 80 FF
	beq  33.b		; F0 21
	ora ($11.b,X)		; 01 11
	ora $740F14.l,X		; 1F 14 0F 74
	phk		; 4B
	bcs  32.b		; B0 20
	sep #$4F		; E2 4F
	ora ($04.b)		; 12 04
	lda $80.b		; A5 80
	bit $FFF7.w,X		; 3C F7 FF
	asl $EEFB.w		; 0E FB EE
	lda ($0F.b),Y		; B1 0F
	bcc  17.b		; 90 11
	ora ($21.b),Y		; 11 21
	pei ($1E.b)		; D4 1E
	ora $90DFEE.l		; 0F EE DF 90
	inc $022F.w,X		; FE 2F 02
	bit $2E.b		; 24 2E
	sbc [$EE.b]		; E7 EE
	ora $E0FC90.l		; 0F 90 FC E0
	bne  63.b		; D0 3F
	jsl $52FD33.l		; 22 33 FD 52
	ldy #$FFE0.w		; A0 E0 FF
	sbc $13100F.l,X		; FF 0F 10 13
	jsr $A0F4.w		; 20 F4 A0
	cmp $C01F.w,X		; DD 1F C0
	ora ($E3.b,X)		; 01 E3
	bvc 102.b		; 50 66
	tsb $03B0.w		; 0C B0 03
	ldx $D00E.w,Y		; BE 0E D0
	bpl   4.b		; 10 04
	and ($52.b)		; 32 52
	ldy $ED.b,X		; B4 ED
	eor $FDA6.w,X		; 5D A6 FD
	and ($2F.b),Y		; 31 2F
	and $E2.b,S		; 23 E2
	bcs  81.b		; B0 51
	ora $AF2B.w		; 0D 2B AF
	cpy $21F0.w		; CC F0 21
	eor $C0.b,X		; 55 C0
	and $21.b,S		; 23 21
	asl $EF1C.w		; 0E 1C EF
	sbc $C01100.l		; EF 00 11 C0
	and ($23.b,S),Y		; 33 23
	bpl  -2.b		; 10 FE
	tsb $EFEF.w		; 0C EF EF
	ora ($C0.b,X)		; 01 C0
	ora ($32.b),Y		; 11 32
	and $10.b,S		; 23 10
	inc $FF0B.w		; EE 0B FF
	cpx #$01C4.w		; E0 C4 01
	ora $E0003F.l,X		; 1F 3F 00 E0
	sbc ($0C.b,X)		; E1 0C
	eor $22F3B4.l		; 4F B4 F3 22
	ora ($3D.b,X)		; 01 3D
	ora $AEB6DF.l,X		; 1F DF B6 AE
	bcs  12.b		; B0 0C
	sbc ($34.b,X)		; E1 34
	and $63.b		; 25 63
	eor ($EC.b)		; 52 EC
	cpy #$C2C4.w		; C0 C4 C2
	ora $110021.l,X		; 1F 21 00 11
	beq  -1.b		; F0 FF
	cpx #$49B4.w		; E0 B4 49
	and ($E3.b,S),Y		; 33 E3
	and ($00.b,X)		; 21 00
	rol $CE00.w		; 2E 00 CE
	cpy #$CED0.w		; C0 D0 CE
	ora $132201.l		; 0F 01 22 13
	ora ($1F.b),Y		; 11 1F
	bcs -54.b		; B0 CA
	asl A		; 0A
	sta ($E0.b),Y		; 91 E0
	bit $43.b		; 24 43
	mvn $C0,$23		; 54 23 C0
	asl $ECD0.w		; 0E D0 EC
	ora $122201.l,X		; 1F 01 22 12
	and ($C4.b,X)		; 21 C4
	ora $C520EF.l		; 0F EF 20 C5
	beq  17.b		; F0 11
	ora $F0C410.l,X		; 1F 10 C4 F0
	sbc $401BE2.l,X		; FF E2 1B 40
	ora ($11.b,X)		; 01 11
	sbc ($C0.b),Y		; F1 C0
	and ($10.b,X)		; 21 10
	sbc $CFE0.w,X		; FD E0 CF
	ora $C02102.l		; 0F 02 21 C0
	jsl $DE0F11.l		; 22 11 0F DE
	trb $F1F0.w		; 1C F0 F1
	jsl $2111C0.l		; 22 C0 11 21
	ora ($FE.b),Y		; 11 FE
	sbc ($CF.b,X)		; E1 CF
	ora $43B001.l		; 0F 01 B0 43
	bit $22.b		; 24 22
	asl $19CB.w,X		; 1E CB 19
	cmp ($E1.b),Y		; D1 E1
	bcs  35.b		; B0 23
	and ($42.b)		; 32 42
	and ($EC.b,X)		; 21 EC
	lda ($AC.b),Y		; B1 AC
	asl $12B0.w,X		; 1E B0 12
	and ($24.b,S),Y		; 33 24
	jsl $1BDB1F.l		; 22 1F DB 1B
	lda ($B4.b),Y		; B1 B4
	cmp $21.b,S		; C3 21
	brk $1F.b		; 00 1F
	brk $DE.b		; 00 DE
	sbc $BF.b		; E5 BF
	bcs  29.b		; B0 1D
	cop $23.b		; 02 23
	and ($33.b,S),Y		; 33 33
	and $B4FDEB.l		; 2F EB FD B4
	cmp [$D2.b]		; C7 D2
	ora ($10.b),Y		; 11 10
	bpl   0.b		; 10 00
	cmp $1AB4D2.l,X		; DF D2 B4 1A
	ror $1003.w		; 6E 03 10
	bpl  16.b		; 10 10
	asl $B0FE.w		; 0E FE B0
	cpy #$EDAD.w		; C0 AD ED
	ora ($13.b,X)		; 01 13
	and ($33.b,S),Y		; 33 33
	jsr $FDB4.w		; 20 B4 FD
	rol $D2D4.w,X		; 3E D4 D2
	jsr $1011.w		; 20 11 10
	bpl -76.b		; 10 B4
	sbc $4039EF.l		; EF EF 39 40
	sbc $10.b,S		; E3 10
	jsr $B410.w		; 20 10 B4
	ora $ECC3FF.l,X		; 1F FF C3 EC
	eor $1012.w,X		; 5D 12 10
	and ($B0.b,X)		; 21 B0
	and ($42.b,S),Y		; 33 42
	ora $ECBCD0.l,X		; 1F D0 BC EC
	cpx #$B502.w		; E0 02 B5
	cop $01.b		; 02 01
	sbc $B410FD.l,X		; FF FD 10 B4
	cpx #$0030.w		; E0 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $00.b,X		; 94 00
	brk $60.b		; 00 60
	rep #$0F		; C2 0F
	ora ($F1.b,X)		; 01 F1
	bpl -124.b		; 10 84
	ora $EB.b		; 05 EB
	jsr $0ECF.w		; 20 CF 0E
	cpx $2F.b		; E4 2F
	sbc ($84.b,X)		; E1 84
	jsr ($F0DE.w,X)		; FC DE F0
	rol $FC13.w,X		; 3E 13 FC
	asl $84B3.w		; 0E B3 84
	rol $EE03.w,X		; 3E 03 EE
	brk $EF.b		; 00 EF
	and $FB24.w		; 2D 24 FB
	sty $61.b		; 84 61
	lda ($1C.b),Y		; B1 1C
	ora $1D.b,S		; 03 1D
	trb $EF.b		; 14 EF
	jsr $1F90.w		; 20 90 1F
	cpx #$20FD.w		; E0 FD 20
	sbc ($FC.b),Y		; F1 FC
	ora ($E0.b),Y		; 11 E0
	bcc  32.b		; 90 20
	brk $FB.b		; 00 FB
	asl $2EC2.w		; 0E C2 2E
	bpl 100.b		; 10 64
	ldy #$4EF1.w		; A0 F1 4E
	cop $00.b		; 02 00
	sbc $FFE0.w		; ED E0 FF
	cpx #$12A0.w		; E0 A0 12
	and ($64.b),Y		; 31 64
	ldx #$227F.w		; A2 7F 22
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	ldy #$D2.b		; A0 D2
	nop		; EA
	ora ($21.b),Y		; 11 21
	and ($20.b)		; 32 20
	eor $13.b,S		; 43 13
	ldy #$20.b		; A0 20
	brk $ED.b		; 00 ED
	dex		; CA
	ora ($E0.b),Y		; 11 E0
	and $21.b,X		; 35 21
	tay		; A8
	ora ($F0.b)		; 12 F0
	inc $A114.w,X		; FE 14 A1
	trb $DD.b		; 14 DD
	ror $A0.b		; 66 A0
	bne  53.b		; D0 35
	dec $56.b,X		; D6 56
	ora ($2F.b),Y		; 11 2F
	jmp.w [$A0BC]		; DC BC A0
	cpy $1E.b		; C4 1E
	eor $D6.b,X		; 55 D6
	trb $35.b		; 14 35
	eor ($F0.b,X)		; 41 F0
	ldy $BF.b		; A4 BF
	bit $B175.w		; 2C 75 B1
	eor $A204E2.l		; 4F E2 04 A2
	bcs  17.b		; B0 11
	sbc $EFCC.w,X		; FD CC EF
	sbc $52.b,X		; F5 52
	beq 111.b		; F0 6F
	bcs   1.b		; B0 01
	and ($DD.b),Y		; 31 DD
	sbc $33CD.w		; ED CD 33
	eor ($F4.b),Y		; 51 F4
	bcs  78.b		; B0 4E
	and ($2E.b)		; 32 2E
	lda $F0DB.w,X		; BD DB F0
	eor $05.b		; 45 05
	ldy $0B.b,X		; B4 0B
	bpl  16.b		; 10 10
	cmp $30E2.w,X		; DD E2 30
	ora ($5B.b),Y		; 11 5B
	bcs  47.b		; B0 2F
	.db $42, $FF		; 42 FF
	ora $F3EEDE.l		; 0F DE EE F3
	mvp $EE,$B4		; 44 B4 EE
	jsr $DF3D.w		; 20 3D DF
	brk $EE.b		; 00 EE
	mvp $B8,$5E		; 44 5E B8
	bpl   2.b		; 10 02
	sbc ($E0.b),Y		; F1 E0
	sbc ($22.b,X)		; E1 22
	and ($99.b,S),Y		; 33 99
	iny		; C8
	ora ($2E.b)		; 12 2E
	sbc ($0F.b),Y		; F1 0F
	sbc ($14.b)		; F2 14
	jsr ($C4B2.w,X)		; FC B2 C4
	jsl $FEF10D.l		; 22 0D F1 FE
	ora $41.b,X		; 15 41
	cpy $C403.w		; CC 03 C4
	asl $01EE.w		; 0E EE 01
	and $42.b,S		; 23 42
	dex		; CA
	pea $C42D.w		; F4 2D C4
	cmp $2035.w		; CD 35 20
	and ($CB.b,X)		; 21 CB
	ora $1C.b		; 05 1C
	dec $44C4.w,X		; DE C4 44
	ora ($1E.b)		; 12 1E
	ldx $FA33.w,Y		; BE 33 FA
	pei ($52.b)		; D4 52
	iny		; C8
	cpy $0B.b		; C4 0B
	pea $905D.w		; F4 5D 90
	ror $AB.b,X		; 76 AB
	and ($C0.b,S),Y		; 33 C0
	rol $3FC0.w,X		; 3E C0 3F
	txs		; 9A
	rol $3F.b		; 26 3F
	bit $FC.b		; 24 FC
	cpy #$E2.b		; C0 E2
	plx		; FA
	lda ($72.b,S),Y		; B3 72
	sbc ($3F.b),Y		; F1 3F
	cmp $ADC01E.l,X		; DF 1E C0 AD
	lsr $1F.b,X		; 56 1F
	ora ($FD.b)		; 12 FD
	brk $CB.b		; 00 CB
	asl $C4.b,X		; 16 C4
	cpx $FD11.w		; EC 11 FD
	ora ($EC.b)		; 12 EC
	eor $1C.b		; 45 1C
	sbc ($C0.b)		; F2 C0
	asl $0CE1.w,X		; 1E E1 0C
	cmp ($52.b)		; D2 52
	ora ($2F.b,X)		; 01 2F
	bne -60.b		; D0 C4
	ora $3EE5.w,X		; 1D E5 3E
	cmp ($2F.b),Y		; D1 2F
.ACCU 16
	rep #$2D		; C2 2D
	dec $C4.b		; C6 C4
	bvc -96.b		; 50 A0
	and $A43FD0.l,X		; 3F D0 3F A4
	eor ($AE.b,S),Y		; 53 AE
	cpy $31.b		; C4 31
	dec $A140.w,X		; DE 40 A1
	eor $CD.b,X		; 55 CD
	ora ($ED.b)		; 12 ED
	cpy $32.b		; C4 32
	ldx $EC55.w,Y		; BE 55 EC
	tsb $EC.b		; 04 EC
	ora ($EB.b,S),Y		; 13 EB
	cpy #$F4.b		; C0 F4
	rti		; 40

.ACCU 8
	sep #$2E		; E2 2E
	sbc ($0A.b,X)		; E1 0A
	sbc $50.b,S		; E3 50
	cpy #$E1.b		; C0 E1
	and $D11BD1.l		; 2F D1 1B D1
	adc ($F0.b,X)		; 61 F0
	jsr $D3C4.w		; 20 C4 D3
	tas		; 1B
	pea $D06D.w		; F4 6D D0
	rol $2CD2.w,X		; 3E D2 2C
	cpy #$B0.b		; C0 B0
	eor ($0F.b)		; 52 0F
	and ($EF.b,X)		; 21 EF
	asl $53BF.w,X		; 1E BF 53
	cpy #$0F.b		; C0 0F
	and ($EF.b,X)		; 21 EF
	asl $43BF.w,X		; 1E BF 43
	ora $EFC021.l		; 0F 21 C0 EF
	asl $42CF.w,X		; 1E CF 42
	ora $0DEF21.l		; 0F 21 EF 0D
	cpy #$C0.b		; C0 C0
	eor ($00.b)		; 52 00
	jsr $0CEF.w		; 20 EF 0C
	bne  81.b		; D0 51
	cpy $F0.b		; C4 F0
	rol $0CE2.w		; 2E E2 0C
	and $3C.b,S		; 23 3C
	ora ($1E.b,X)		; 01 1E
	cpy $E2.b		; C4 E2
	jsr ($2B34.w,X)		; FC 34 2B
	ora $1C.b,S		; 03 1C
	sbc ($DE.b)		; F2 DE
	cpy $45.b		; C4 45
	sbc $ED04.w		; ED 04 ED
	bpl -62.b		; 10 C2
	mvp $C4,$BF		; 44 BF C4
	ora ($DE.b,S),Y		; 13 DE
	rol $40D4.w		; 2E D4 40
	cpy #$30.b		; C0 30
	bne -60.b		; D0 C4
	tsb $4B24.w		; 0C 24 4B
	sbc ($3D.b),Y		; F1 3D
.ACCU 8
	sep #$EC		; E2 EC
	eor $C4.b,X		; 55 C4
	jsr ($FEF4.w,X)		; FC F4 FE
	brk $C2.b		; 00 C2
	mvp $12,$BF		; 44 BF 12
	cpy $DF.b		; C4 DF
	and $5CF4.w		; 2D F4 5C
	sbc $FDE13E.l,X		; FF 3E E1 FD
	cpy #$04.b		; C0 04
	and $FF1E02.l,X		; 3F 02 1E FF
	lda $C4F026.l,X		; BF 26 F0 C4
	ora ($CF.b)		; 12 CF
	ora $5A14.w,X		; 1D 14 5A
	beq  77.b		; F0 4D
	sbc ($C4.b,X)		; E1 C4
	sbc $04DD45.l		; EF 45 DD 04
	inc $E40E.w		; EE 0E E4
	eor $21FFC0.l,X		; 5F C0 FF 21
	sbc $5FF3EB.l,X		; FF EB F3 5F
	sbc ($2F.b),Y		; F1 2F
	cpy #$FF.b		; C0 FF
	lda $020F25.l,X		; BF 25 0F 02
	ora $C4E1FB.l		; 0F FB E1 C4
	phy		; 5A
	brk $3D.b		; 00 3D
	brk $C2.b		; 00 C2
	and $BF.b,X		; 35 BF
	ora $C4.b,S		; 03 C4
	bne  12.b		; D0 0C
	trb $4C.b		; 14 4C
	beq  61.b		; F0 3D
	brk $D0.b		; 00 D0
	cpy $44.b		; C4 44
	cmp $0DD003.l		; CF 03 D0 0D
	tsb $4D.b		; 04 4D
	cpx #$C4.b		; E0 C4
	rol $D0F0.w,X		; 3E F0 D0
	and $DE.b,X		; 35 DE
	ora $EF.b,S		; 03 EF
	ora $04C4.w		; 0D C4 04
	eor $3EE0.w		; 4D E0 3E
	beq -48.b		; F0 D0
	mvp $C4,$DE		; 44 DE C4
	ora $EF.b,S		; 03 EF
	ora $4D04.w		; 0D 04 4D
	cpx #$3E.b		; E0 3E
	beq -60.b		; F0 C4
	cmp ($34.b),Y		; D1 34
	cmp $0DD003.l		; CF 03 D0 0D
	ora ($4C.b,S),Y		; 13 4C
	cpy $F0.b		; C4 F0
	and $E20F.w,X		; 3D 0F E2
	and ($B0.b,S),Y		; 33 B0
	cop $E0.b		; 02 E0
	cpy #$EC.b		; C0 EC
	sbc ($5F.b,S),Y		; F3 5F
	brk $1F.b		; 00 1F
	sbc $43C0.w,X		; FD C0 43
	cpy $D0.b		; C4 D0
	and $44EFE0.l		; 2F E0 EF 44
	inc $EF02.w		; EE 02 EF
	cpy $0D.b		; C4 0D
	trb $4C.b		; 14 4C
	beq  46.b		; F0 2E
	beq -46.b		; F0 D2
	bit $C0.b,X		; 34 C0
	brk $02.b		; 00 02
	sbc $5FF2EB.l,X		; FF EB F2 5F
	brk $2F.b		; 00 2F
	cpy #$FE.b		; C0 FE
	lda $11F034.l,X		; BF 34 F0 11
	sbc $C404DC.l,X		; FF DC 04 C4
	sbc $FE02.w,X		; FD 02 FE
	ora $4D04.w,X		; 1D 04 4D
	cpx #$3D.b		; E0 3D
	cpy $F0.b		; C4 F0
	cmp ($44.b),Y		; D1 44
	bcs   3.b		; B0 03
	cpy #$0D.b		; C0 0D
	bit $C0.b		; 24 C0
	eor $FE2F00.l,X		; 5F 00 2F FE
	cmp $12F034.l		; CF 34 F0 12
	cpy $D0.b		; C4 D0
	sbc $12FD43.l		; EF 43 FD 12
	inc $130D.w,X		; FE 0D 13
	cpy #$51.b		; C0 51
	brk $20.b		; 00 20
	inc $25CE.w,X		; FE CE 25
	brk $02.b		; 00 02
	cpy #$FF.b		; C0 FF
	cpx $4FF2.w		; EC F2 4F
	brk $2F.b		; 00 2F
	sbc $C0C0.w,X		; FD C0 C0
	and ($F0.b,S),Y		; 33 F0
	ora ($FF.b),Y		; 11 FF
	jmp.w [$2F04]		; DC 04 2F
	cop $C4.b		; 02 C4
	sbc $4D030E.l		; EF 0E 03 4D
	sbc $D2F03E.l,X		; FF 3E F0 D2
	cpy #$15.b		; C0 15
	brk $02.b		; 00 02
	sbc $5FF2EC.l,X		; FF EC F2 5F
	brk $C0.b		; 00 C0
	and $34CFFE.l		; 2F FE CF 34
	beq  18.b		; F0 12
	sbc $03C0EC.l,X		; FF EC C0 03
	and $FD1F01.l,X		; 3F 01 1F FD
	cpy #$42.b		; C0 42
	sbc $F03EC4.l,X		; FF C4 3E F0
	sbc $03DE44.l		; EF 44 DE 03
	sbc $04C40D.l		; EF 0D C4 04
	eor $3EFF.w		; 4D FF 3E
	beq -47.b		; F0 D1
	eor $C0.b,S		; 43 C0
	cpy $F3.b		; C4 F3
	sbc $3C140D.l		; EF 0D 14 3C
	ora $C4F03E.l		; 0F 3E F0 C4
	cmp ($34.b),Y		; D1 34
	cpy #$F3.b		; C0 F3
	sbc $4C130D.l		; EF 0D 13 4C
	cpy $0F.b		; C4 0F
	rol $D1F0.w,X		; 3E F0 D1
	bit $CF.b,X		; 34 CF
	ora $EF.b,S		; 03 EF
	cpy $0E.b		; C4 0E
	pea $E04D.w		; F4 4D E0
	rol $EEF0.w,X		; 3E F0 EE
	eor ($C4.b,S),Y		; 53 C4
	sbc $0E02.w,X		; FD 02 0E
	ora $C031D4.l		; 0F D4 31 C0
	jsr $E0C4.w		; 20 C4 E0
	ora $3C23.w		; 0D 23 3C
	sbc ($2E.b),Y		; F1 2E
	beq -32.b		; F0 E0
	cpy $34.b		; C4 34
	dec $EF03.w,X		; DE 03 EF
	ora $D04FE3.l		; 0F E3 4F D0
	cpy #$22.b		; C0 22
	sbc $50E10C.l,X		; FF 0C E1 50
	beq  48.b		; F0 30
	sbc $04ECC0.l,X		; FF C0 EC 04
	and $F01FF3.l		; 2F F3 1F F0
	cmp $FFC024.l		; CF 24 C0 FF
	ora ($0F.b)		; 12 0F
	asl $42C0.w		; 0E C0 42
	sbc $E0C421.l,X		; FF 21 C4 E0
	trb $4C13.w		; 1C 13 4C
	sbc ($3D.b),Y		; F1 3D
	beq  28.b		; F0 1C
	cpy #$E2.b		; C0 E2
	eor $E03FF1.l		; 4F F1 3F E0
	jsr ($3FF3.w,X)		; FC F3 3F
	cpy #$F2.b		; C0 F2
	and $F4FCF1.l		; 2F F1 FC F4
	and $C02FF2.l		; 2F F2 2F C0
	sbc ($FC.b,X)		; E1 FC
	sbc $30.b,S		; E3 30
	sbc ($3F.b)		; F2 3F
	sbc ($2C.b,X)		; E1 2C
	cpy #$C1.b		; C0 C1
	rts		; 60

	cpx #$40.b		; E0 40
	cmp $53BE4F.l,X		; DF 4F BE 53
	cpy #$ED.b		; C0 ED
	and ($ED.b)		; 32 ED
	and $CB.b,S		; 23 CB
	rol $FD.b		; 26 FD
	ora $C0.b		; 05 C0
	tsb $1AE5.w		; 0C E5 1A
	pei ($5E.b)		; D4 5E
	cmp ($4E.b,S),Y		; D3 4E
	lda ($C4.b),Y		; B1 C4
	lsr A		; 4A
	ldx $6E.b		; A6 6E
	lda ($6F.b,X)		; A1 6F
	ldy #$61.b		; A0 61
	plb		; AB
	cpy #$06.b		; C0 06
	bit $3DF4.w		; 2C F4 3D
	cmp ($4D.b,S),Y		; D3 4D
	sta ($52.b),Y		; 91 52
	cpy #$CF.b		; C0 CF
	eor ($DD.b,S),Y		; 53 DD
	bit $EA.b		; 24 EA
	ora $2C.b		; 05 2C
	pea $3DC0.w		; F4 C0 3D
	cmp ($4F.b)		; D2 4F
	ldy #$43.b		; A0 43
	cmp $C0DD33.l		; CF 33 DD C0
	trb $0C.b		; 14 0C
	sbc $3D.b,S		; E3 3D
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	bne  49.b		; D0 31
	cpy #$EC.b		; C0 EC
	jsl $1D130D.l		; 22 0D 13 1D
	sbc ($2F.b)		; F2 2F
	cmp $CF32B0.l,X		; DF B0 32 CF
	bit $FD.b,X		; 34 FD
	ora $1E.b,S		; 03 1E
	cpy #$12.b		; C0 12
	ldy #$A1.b		; A0 A1
	eor [$CB.b],Y		; 57 CB
	pea $9E1F.w		; F4 1F 9E
	ora $B0.b,X		; 15 B0
	bcs  36.b		; B0 24
	inc $11F2.w,X		; FE F2 11
	inc $FF02.w		; EE 02 FF
	trb $A1.b		; 14 A1
	phd		; 0B
	cmp ($11.b),Y		; D1 11
	sbc $3DF1.w,Y		; F9 F1 3D
	bit $4B.b		; 24 4B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	brk $11.b		; 00 11
	stp		; DB
	ora ($3E.b,S),Y		; 13 3E
	sbc ($1F.b,S),Y		; F3 1F
	cmp ($B4.b),Y		; D1 B4
	jsl $1B43CF.l		; 22 CF 43 1B
	xba		; EB
	cmp $34.b,X		; D5 34
	cpy $C4.b		; C4 C4
	ora ($EF.b,X)		; 01 EF
	bpl  15.b		; 10 0F
	and ($1E.b,X)		; 21 1E
	sbc $D6B0C2.l		; EF C2 B0 D6
	ora ($46.b),Y		; 11 46
	eor $4F01.w,X		; 5D 01 4F
	pea $B452.w		; F4 52 B4
	lda $22E7.w		; AD E7 22
	sbc $1E.b,S		; E3 1E
	sbc $C4F12F.l,X		; FF 2F F1 C4
	jsr $D4EC.w		; 20 EC D4
	and ($E2.b),Y		; 31 E2
	jsr $20DF.w		; 20 DF 20
	cpy $F0.b		; C4 F0
	and ($AB.b),Y		; 31 AB
	and $1D.b		; 25 1D
	and $1C.b		; 25 1C
	cmp ($C4.b)		; D2 C4
	asl $2BF3.w,X		; 1E F3 2B
	lda ($4F.b,S),Y		; B3 4F
	cmp ($50.b,S),Y		; D3 50
	cmp $EF21C4.l		; CF C4 21 EF
	and $DF34BE.l,X		; 3F BE 34 DF
	bit $FC.b,X		; 34 FC
	cpy $12.b		; C4 12
	asl $DB02.w		; 0E 02 DB
	trb $1E.b		; 14 1E
	tsb $2D.b		; 04 2D
	cpy $E2.b		; C4 E2
	and $E30BE1.l		; 2F E1 0B E3
	and $C43FF3.l,X		; 3F F3 3F C4
	bne  49.b		; D0 31
	cmp $40E10C.l,X		; DF 0C E1 40
	ora ($2F.b)		; 12 2F
	clv		; B8
	sbc $1A.b,X		; F5 1A
	cmp ($41.b),Y		; D1 41
	ora ($3F.b)		; 12 3F
	ldx $C813.w,Y		; BE 13 C8
	asl $3FE0.w		; 0E E0 3F
	ora ($12.b),Y		; 11 12
	cmp $B8FFD5.l,X		; DF D5 FF B8
	cmp $6D4D03.l		; CF 03 4D 6D
	lsr A		; 4A
	trb $EF5F.w		; 1C 5F EF
	ldy $AD.b,X		; B4 AD
	sbc $FF5613.l		; EF 13 56 FF
	ora $3E.b,S		; 03 3E
	dex		; CA
	clv		; B8
	eor $CF31F4.l		; 4F F4 31 CF
	trb $B1.b		; 14 B1
	cmp $AD.b,X		; D5 AD
	cpy $D0.b		; C4 D0
	jsl $0F32E0.l		; 22 E0 32 0F
	ora ($FF.b)		; 12 FF
	sbc $F0F0C4.l		; EF C4 F0 F0
	and $3E4F2F.l		; 2F 2F 4F 3E
	ora $E3B4DF.l		; 0F DF B4 E3
	sbc $415110.l		; EF 10 51 41
	bpl -33.b		; 10 DF
	lda $EF1DB4.l,X		; BF B4 1D EF
	.db $42, $21		; 42 21
	ora ($3E.b,S),Y		; 13 3E
	bne -34.b		; D0 DE
	ldy $F0.b,X		; B4 F0
	pea $35EC.w		; F4 EC 35
	and $0E05.w		; 2D 05 0E
	ldy #$B4.b		; A0 B4
	and $044EBF.l,X		; 3F BF 4E 04
	bit $A3.b		; 24 A3
	ora ($ED.b,X)		; 01 ED
	ldy $2D.b,X		; B4 2D
	sbc $30D311.l,X		; FF 11 D3 30
	beq  48.b		; F0 30
	ora $E2A4.w,X		; 1D A4 E2
	ldx $10E1.w,Y		; BE E1 10
	jsr $2440.w		; 20 40 24
	lsr A		; 4A
	ldy $DF.b,X		; B4 DF
	ora ($DE.b,X)		; 01 DE
	jsl $21043D.l		; 22 3D 04 21
	cmp ($B8.b,X)		; C1 B8
	inc $3D12.w		; EE 12 3D
	sbc $01B134.l		; EF 34 B1 01
	ora $0FA4.w		; 0D A4 0F
	inc $F0B0.w,X		; FE B0 F0
	rol $3500.w		; 2E 00 35
	cpx $14B0.w		; EC B0 14
	and $CF1FE1.l,X		; 3F E1 1F CF
	sbc $41D0.w		; ED D0 41
	bcs -35.b		; B0 DD
	bit $FE.b,X		; 34 FE
	ora $DC0FEE.l,X		; 1F EE 0F DC
	sbc ($B4.b),Y		; F1 B4
	inc $1D24.w		; EE 24 1D
.INDEX 8
	sep #$1C		; E2 1C
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	cmp ($B0.b,S),Y		; D3 B0
	and $10.b,S		; 23 10
	bit $2C.b		; 24 2C
	lda $0FBF0D.l,X		; BF 0D BF 0F
	ldy $F3.b		; A4 F3
	rts		; 60

	cmp $CC13.w,X		; DD 13 CC
	sbc ($0F.b),Y		; F1 0F
	jsr $F2A0.w		; 20 A0 F2
	and $DB33CF.l,X		; 3F CF 33 DB
	sbc ($FC.b,X)		; E1 FC
	cmp ($B4.b,S),Y		; D3 B4
	ora $31D3.w		; 0D D3 31
	cmp $32EE21.l		; CF 21 EE 32
	inc $1490.w		; EE 90 14
	and $CE3F57.l		; 2F 57 3F CE
	ora $90EDF0.l		; 0F F0 ED 90
	sbc ($FF.b),Y		; F1 FF
	sbc $0FCE.w,X		; FD CE 0F
	pea $DF3F.w		; F4 3F DF
	bcc  27.b		; 90 1B
	ldy #$1D.b		; A0 1D
	dec $7F.b,X		; D6 7F
	cmp ($43.b,X)		; C1 43
	and $A4.b,S		; 23 A4
	rti		; 40

	cmp $ED14.w		; CD 14 ED
	sbc $EF2210.l,X		; FF 10 22 EF
	ldy $55.b		; A4 55
	nop		; EA
	cmp ($2E.b)		; D2 2E
	sbc $1F150E.l		; EF 0E 15 1F
	ldy $26.b		; A4 26
	tsb $01AF.w		; 0C AF 01
	bpl -52.b		; 10 CC
	ror $0D.b		; 66 0D
	ldy $02.b		; A4 02
	sbc $1F00.w,X		; FD 00 1F
	ora $0C.b,S		; 03 0C
	cmp [$6C.b]		; C7 6C
	ldy #$CD.b		; A0 CD
	bpl -32.b		; 10 E0
	and ($DB.b,S),Y		; 33 DB
	sbc $4E.b,X		; F5 4E
	ldy $1FA8.w,X		; BC A8 1F
	ora ($ED.b),Y		; 11 ED
	ora ($1E.b)		; 12 1E
	rep #$4F		; C2 4F
.INDEX 8
	sep #$94		; E2 94
	rol $2F.b,X		; 36 2F
	lda $F3AB62.l		; AF 62 AB F3
	ora $4F94F4.l,X		; 1F F4 94 4F
	cmp ($22.b)		; D2 22
	cmp $2B24.w		; CD 24 2B
	cmp $5D.b,S		; C3 5D
	ldy $C1.b		; A4 C1
	and $0E44CD.l,X		; 3F CD 44 0E
	ora ($DF.b,S),Y		; 13 DF
	jsr $ECA4.w		; 20 A4 EC
	ora $2E.b,S		; 03 2E
	cmp ($42.b,X)		; C1 42
	sbc $981110.l		; EF 10 11 98
	sbc $EF12E1.l,X		; FF E1 12 EF
	brk $12.b		; 00 12
	tsa		; 3B
	sbc $0EF090.l		; EF 90 F0 0E
	cmp $44BD20.l		; CF 20 BD 44
	trb $94DF.w		; 1C DF 94
	rti		; 40

	ora ($FD.b)		; 12 FD
	cpx #$2C.b		; E0 2C
.ACCU 16
	rep #$64		; C2 64
	ldy $13A4.w		; AC A4 13
	ora $00E1.w		; 0D E1 00
	ora ($3F.b,S),Y		; 13 3F
	cmp $CAA040.l		; CF 40 A0 CA
	bne  -1.b		; D0 FF
	ora $ED4202.l		; 0F 02 42 ED
	cop $A8.b		; 02 A8
	ldx $0D52.w,Y		; BE 52 0D
	ora $E10C14.l		; 0F 14 0C E1
	jsl $BD1B94.l		; 22 94 1B BD
	rol $2D.b,X		; 36 2D
	lda ($41.b,X)		; A1 41
	xba		; EB
	sbc $98.b,S		; E3 98
	asl $22C0.w,X		; 1E C0 22
	inc $4D01.w		; EE 01 4D
	ora $0EA412.l,X		; 1F 12 A4 0E
	sbc ($0E.b,X)		; E1 0E
.ACCU 8
	sep #$2E		; E2 2E
.ACCU 8
	sep #$2F		; E2 2F
	dec $D2A0.w		; CE A0 D2
	and ($F0.b,X)		; 21 F0
	bit $20.b		; 24 20
	ora ($10.b),Y		; 11 10
	sbc $00FFA0.l,X		; FF A0 FF 00
	brk $02.b		; 00 02
	jsr $F1CD.w		; 20 CD F1
	sbc $F0A4.w,X		; FD A4 F0
	jsl $14EE20.l		; 22 20 EE 14
	trb $31D0.w		; 1C D0 31
	ldy $1F.b		; A4 1F
	sbc $E11C02.l		; EF 02 1C E1
	eor ($E0.b,X)		; 41 E0
	ora ($98.b),Y		; 11 98
	bcs  49.b		; B0 31
	sbc $AC62.w		; ED 62 AC
	lsr $BE.b		; 46 BE
	eor $90.b		; 45 90
	stz $36.b,X		; 74 36
	rts		; 60

	cpy #$53.b		; C0 53
	dex		; CA
	dec $98DE.w,X		; DE DE 98
	and $41C2.w,X		; 3D C2 41
	inc $010D.w		; EE 0D 01
	eor ($9B.b)		; 52 9B
	ldy $E0.b		; A4 E0
	bpl  18.b		; 10 12
	jsl $0D1320.l		; 22 20 13 0D
	ldx $00A4.w,Y		; BE A4 00
	jmp.w [$3401]		; DC 01 34
	ora ($13.b),Y		; 11 13
	eor $0C.b,S		; 43 0C
	tay		; A8
	beq  34.b		; F0 22
	sbc $6113.w,X		; FD 13 61
	cmp $BB37.w		; CD 37 BB
	tay		; A8
	cpy $1D03.w		; CC 03 1D
	adc [$0F.b]		; 67 0F
	inc $EA35.w,X		; FE 35 EA
	clv		; B8
	cmp $142EE3.l		; CF E3 2E 14
	and ($EF.b,X)		; 21 EF
	cop $FD.b		; 02 FD
	clv		; B8
	inc $05F0.w		; EE F0 05
	and ($FF.b),Y		; 31 FF
	and $B80EFF.l,X		; 3F FF 0E B8
	ldx $3122.w,Y		; BE 22 31
	jsl $0D030D.l		; 22 0D 03 0D
	dec $FFB8.w		; CE B8 FF
	bit $30.b		; 24 30
	cpx $1F.b		; E4 1F
	sbc $B8DE1B.l		; EF 1B DE B8
	bit $01.b,X		; 34 01
	ora ($20.b)		; 12 20
	sbc $BD0F.w,X		; FD 0F BD
	asl $B8.b,X		; 16 B8
	and $3221.w		; 2D 21 32
	sbc $F5CCFF.l		; EF FF CC F5
	and $2102B8.l,X		; 3F B8 02 21
	ora ($EE.b,X)		; 01 EE
	sbc $51C2.w		; ED C2 51
	sbc ($B8.b),Y		; F1 B8
	ora $F1.b		; 05 F1
	sbc $45CEFD.l		; EF FD CE 45
	sbc $1FB813.l,X		; FF 13 B8 1F
	ora $E6B0FE.l,X		; 1F FE B0 E6
	rol $5D10.w		; 2E 10 5D
	clv		; B8
	bpl  15.b		; 10 0F
	dec $52FF.w		; CE FF 52
	sbc $B8E032.l,X		; FF 32 E0 B8
	bpl  -4.b		; 10 FC
	sbc $012FF5.l		; EF F5 2F 01
	and $F0B8F1.l,X		; 3F F1 B8 F0
	dec $430E.w		; CE 0E 43
	beq  19.b		; F0 13
	sbc $1FB41F.l,X		; FF 1F B4 1F
	wai		; CB
	ldy $01F1.w		; AC F1 01
	mvp $31,$34		; 44 34 31
	tay		; A8
	xba		; EB
	sbc $5D16.w		; ED 16 5D
	bit $3D.b		; 24 3D
	ora ($EC.b,X)		; 01 EC
	tay		; A8
	dec $36D0.w		; CE D0 36
	ora $0EF043.l,X		; 1F 43 F0 0E
	dec $DEA8.w		; CE A8 DE
	sbc ($54.b,X)		; E1 54
	ora ($41.b,X)		; 01 41
	sbc ($FC.b,X)		; E1 FC
	inc $EDA8.w		; EE A8 ED
	cop $52.b		; 02 52
	cop $3F.b		; 02 3F
	bpl -20.b		; 10 EC
	sbc $01EEA8.l		; EF A8 EE 01
	adc ($F4.b,X)		; 61 F4
	bpl  16.b		; 10 10
	nop		; EA
	brk $A8.b		; 00 A8
	sbc $5002.w		; ED 02 50
	tsb $2E.b		; 04 2E
	ora ($DA.b),Y		; 11 DA
	ora ($A8.b)		; 12 A8
	dec $40F1.w,X		; DE F1 40
	tsb $2E.b		; 04 2E
	sbc ($FC.b,S),Y		; F3 FC
.ACCU 8
	sep #$A8		; E2 A8
	ora $1010C1.l		; 0F C1 10 10
	rti		; 40

	cop $0F.b		; 02 0F
.ACCU 16
.INDEX 16
	rep #$B8		; C2 B8
	brk $FF.b		; 00 FF
	ora $F21101.l		; 0F 01 11 F2
	bpl -47.b		; 10 D1
	tay		; A8
	jsr $0FEC.w		; 20 EC 0F
	asl $5CE6.w,X		; 1E E6 5C
	cmp $5E.b,X		; D5 5E
	tay		; A8
	lda ($2F.b),Y		; B1 2F
	cpy $DD41.w		; CC 41 DD
	and $10.b		; 25 10
	ora ($98.b)		; 12 98
	rol A		; 2A
	sbc $01BE3A.l,X		; FF 3A BE 01
	cpx $13.b		; E4 13
	inc $A8.b,X		; F6 A8
	ora ($FC.b)		; 12 FC
	ora ($DD.b)		; 12 DD
	pea $21B1.w		; F4 B1 21
	sbc $3240A8.l,X		; FF A8 40 32
	cpy $FE13.w		; CC 13 FE
	tsb $E131.w		; 0C 31 E1
	tya		; 98
	eor $C065EE.l,X		; 5F EE 65 C0
	lda ($4B.b)		; B2 4B
	sbc $A19840.l		; EF 40 98 A1
	bmi -31.b		; 30 E1
	jsl $2E1D20.l		; 22 20 1D 2E
	sbc $D3B188.l,X		; FF 88 B1 D3
	brk $21.b		; 00 21
	ora ($20.b,S),Y		; 13 20
	bit $84E0.w		; 2C E0 84
	bpl -33.b		; 10 DF
	xba		; EB
	beq  -3.b		; F0 FD
	bit $32.b		; 24 32
	pea $4084.w		; F4 84 40
	jmp.w [$CDFE]		; DC FE CD
	ora ($1F.b,X)		; 01 1F
	bit $32.b		; 24 32
	sei		; 78
	sbc ($1A.b,X)		; E1 1A
	ora $2D352C.l		; 0F 2C 35 2D
	sbc ($51.b,X)		; E1 51
	sei		; 78
	lda $E6CB25.l		; AF 25 CB E6
	ora ($C4.b,X)		; 01 C4
	ora $74D3.w,X		; 1D D3 74
	trb $4B.b		; 14 4B
	tsb $4D.b		; 04 4D
	cpy #$B21F.w		; C0 1F B2
	rol $FE74.w		; 2E 74 FE
	and ($D1.b)		; 32 D1
	ora ($FC.b,X)		; 01 FC
	ldy $40.b,X		; B4 40
	cmp ($74.b),Y		; D1 74
	ora ($10.b),Y		; 11 10
	asl A		; 0A
	ora $3C.b,S		; 03 3C
	cmp $84F042.l		; CF 42 F0 84
	bpl -48.b		; 10 D0
	jsr $04DE.w		; 20 DE 04
	ora $740EF4.l		; 0F F4 0E 74
	cmp ($2B.b),Y		; D1 2B
	sbc $0022.w		; ED 22 00
	and ($21.b)		; 32 21
	phd		; 0B
	stz $1F.b,X		; 74 1F
	asl $42CF.w		; 0E CF 42
	asl $0F02.w,X		; 1E 02 0F
	cmp ($64.b),Y		; D1 64
	sbc ($B0.b,S),Y		; F3 B0
	and $2F.b		; 25 2F
	sbc ($AF.b,S),Y		; F3 AF
	brk $2A.b		; 00 2A
	stz $C1.b,X		; 74 C1
	trb $FD.b		; 14 FD
	and ($50.b,S),Y		; 33 50
	inc $E1FC.w,X		; FE FC E1
	bvs  49.b		; 70 31
	wai		; CB
	rol $43.b		; 26 43
	ora ($1C.b,X)		; 01 1C
	lda $E080FD.l		; AF FD 80 E0
	bit $1E.b,X		; 34 1E
	sbc ($1F.b,S),Y		; F3 1F
	sbc ($1E.b,X)		; E1 1E
	sep #$84		; E2 84
	rol $33CF.w,X		; 3E CF 33
	jsr ($20E2.w,X)		; FC E2 20
	sbc $EB7010.l,X		; FF 10 70 EB
	pei ($FD.b)		; D4 FD
	cpx #$CD1F.w		; E0 1F CD
	lsr $40.b		; 46 40
	stz $D3.b,X		; 74 D3
	and ($CD.b)		; 32 CD
	cop $20.b		; 02 20
	cmp ($F0.b),Y		; D1 F0
	cop $84.b		; 02 84
	ora $FF22FF.l,X		; 1F FF 22 FF
	ora ($EE.b,X)		; 01 EE
	tsb $3F.b		; 04 3F
	bvs -51.b		; 70 CD
	lsr $34.b,X		; 56 34
	lsr $5F.b		; 46 5F
	lda $33EF.w,X		; BD EF 33
	bra  -2.b		; 80 FE
	sbc ($00.b)		; F2 00
	sbc ($4F.b,S),Y		; F3 4F
	cmp ($51.b,X)		; C1 51
	sbc $DF3094.l		; EF 94 30 DF
	and ($CA.b)		; 32 CA
	bit $2E.b,X		; 34 2E
	sbc ($20.b,X)		; E1 20
	dey		; 88
	ldx $60.b,Y		; B6 60
	stp		; DB
	bne  17.b		; D0 11
	cpy $3467.w		; CC 67 34
	tay		; A8
	ora $BFEB20.l,X		; 1F 20 EB BF
	mvn $36,$FF		; 54 FF 36
	ora $F1C8.w,X		; 1D C8 F1
	ora $25EE.w,X		; 1D EE 25
	inc $3E02.w,X		; FE 02 3E
	cmp ($C8.b),Y		; D1 C8
	and $2C34CD.l		; 2F CD 34 2C
	sbc ($4F.b)		; F2 4F
	dec $C832.w,X		; DE 32 C8
	cpy $4F04.w		; CC 04 4F
	cpy #$DE42.w		; C0 42 DE
	ora $0B.b,S		; 03 0B
	iny		; C8
	sbc ($61.b,X)		; E1 61
	cmp $E2EE24.l		; CF 24 EE E2
	and $C4DE.w,X		; 3D DE C4
	sbc $2F.b,S		; E3 2F
	sep #$41		; E2 41
	inc $FD22.w,X		; FE 22 FD
	cmp $ED63B4.l		; CF B4 63 ED
	eor $2E.b		; 45 2E
	cmp ($2F.b,S),Y		; D3 2F
	dex		; CA
	cpx $B4.b		; E4 B4
	and $FE41E2.l,X		; 3F E2 41 FE
	ora ($1D.b)		; 12 1D
	cmp $B424.w		; CD 24 B4
	ora $2003.w		; 0D 03 20
	cpx #$FD21.w		; E0 21 FD
	sbc $ECA422.l		; EF 22 A4 EC
	and $2E.b		; 25 2E
	sep #$40		; E2 40
	jmp.w [$41DF]		; DC DF 41
	ldy $DF.b		; A4 DF
	and ($1E.b,S),Y		; 33 1E
	sbc ($1E.b,S),Y		; F3 1E
	beq -35.b		; F0 DD
	jsl $132F94.l		; 22 94 2F 13
	ora $FF2FD0.l,X		; 1F D0 2F FF
	cpx #$A434.w		; E0 34 A4
	ora $020F00.l		; 0F 00 0F 02
	tsb $64B2.w		; 0C B2 64
	dec $33A4.w		; CE A4 33
	xce		; FB
	sbc $0D.b,S		; E3 0D
	inc $5F.b,X		; F6 5F
	lda $BFA852.l		; AF 52 A8 BF
	eor ($EB.b),Y		; 51 EB
	ora ($52.b)		; 12 52
	dec $EE12.w		; CE 12 EE
	ldy $D1.b		; A4 D1
	and $3D26BB.l		; 2F BB 26 3D
	cmp ($51.b,S),Y		; D3 51
	cmp $12B4.w		; CD B4 12
	sbc $30E3.w		; ED E3 30
	sbc $03EE22.l		; EF 22 EE 03
	ldy $1C.b		; A4 1C
	ldy #$EC54.w		; A0 54 EC
	trb $1E.b		; 14 1E
	sbc ($3E.b,X)		; E1 3E
	ldy $CF.b,X		; B4 CF
	and ($0E.b,S),Y		; 33 0E
	sbc ($2E.b)		; F2 2E
	beq  47.b		; F0 2F
	dec $43B4.w		; CE B4 43
	asl $1E02.w		; 0E 02 1E
	sbc ($1E.b,X)		; E1 1E
	cmp ($32.b),Y		; D1 32
	ldy $EE.b		; A4 EE
	bit $FC.b		; 24 FC
	cmp ($ED.b),Y		; D1 ED
	ora $40.b		; 05 40
	sbc ($A8.b),Y		; F1 A8
	ora $230FC1.l,X		; 1F C1 0F 23
	rol $1FE1.w		; 2E E1 1F
	sbc $25F098.l		; EF 98 F0 25
	lsr $00EF.w		; 4E EF 00
	cpy #$2111.w		; C0 11 21
	dey		; 88
	ora ($BD.b)		; 12 BD
	cmp $211313.l,X		; DF 13 13 21
	sbc $88DF.w		; ED DF 88
	sbc ($21.b),Y		; F1 21
	bmi   1.b		; 30 01
	xce		; FB
	ora $781101.l,X		; 1F 01 11 78
	and ($10.b,X)		; 21 10
	ldx $1EC4.w,Y		; BE C4 1E
	and ($13.b)		; 32 13
	xce		; FB
	sei		; 78
	asl $052B.w		; 0E 2B 05
	and ($D3.b)		; 32 D3
	sbc $74E2C0.l,X		; FF C0 E2 74
	inc $45E2.w,X		; FE E2 45
	ora ($EE.b)		; 12 EE
	inc $E21E.w		; EE 1E E2
	sei		; 78
	sbc $F0.b,S		; E3 F0
	beq -63.b		; F0 C1
	sbc ($10.b)		; F2 10
	ora $DF.b		; 05 DF
	stz $C4.b		; 64 C4
	cpx #$E1FC.w		; E0 FC E1
	bpl   1.b		; 10 01
	and $0260EF.l		; 2F EF 60 02
	jsr $1201.w		; 20 01 12
	ora $041002.l		; 0F 02 10 04
	stz $20.b,X		; 74 20
	dec $0D12.w,X		; DE 12 0D
	ora ($20.b),Y		; 11 20
	bne   0.b		; D0 00
	stz $A0.b		; 64 A0
	ora $30.b,S		; 03 30
	sbc ($21.b)		; F2 21
	ldy #$00F0.w		; A0 F0 00
	bvc -48.b		; 50 D0
	eor $44.b		; 45 44
	and ($FD.b),Y		; 31 FD
	dec $0F.b,X		; D6 0F
	bne  80.b		; D0 50
	eor $AE.b		; 45 AE
	beq -21.b		; F0 EB
	plb		; AB
	eor $5033F1.l,X		; 5F F1 33 50
	sta $F2BC.w,X		; 9D BC F2
	lda ($12.b,X)		; A1 12
	jsr $FFCC.w		; 20 CC FF
	pha		; 48
	lda ($64.b),Y		; B1 64
	txy		; 9B
	and $2B.b		; 25 2B
	cmp $38EF42.l		; CF 42 EF 38
	ora $0F.b,S		; 03 0F
	cmp $32AE3F.l		; CF 3F AE 32
	rol $34E0.w,X		; 3E E0 34
	ora ($1D.b)		; 12 1D
	txy		; 9B
	sbc $75A2.w		; ED A2 75
	inc $64E4.w,X		; FE E4 64
	ora $FF11EE.l		; 0F EE 11 FF
	ora ($0F.b),Y		; 11 0F
	lda ($0F.b,S),Y		; B3 0F
	stz $F0.b		; 64 F0
	bpl  15.b		; 10 0F
	ora ($00.b,X)		; 01 00
	xce		; FB
	and ($10.b)		; 32 10
	pha		; 48
	lda ($33.b),Y		; B1 33
	sbc $51CF.w		; ED CF 51
	beq  -1.b		; F0 FF
	sbc $0F0F58.l,X		; FF 58 0F 0F
	cop $2C.b		; 02 2C
	ora ($F1.b,X)		; 01 F1
	sbc $6054FA.l,X		; FF FA 54 60
	and ($FF.b,X)		; 21 FF
	ora ($00.b),Y		; 11 00
	sbc $3801FF.l		; EF FF 01 38
	sbc $1CC0.w		; ED C0 1C
	bit $FE.b		; 24 FE
	sbc ($0D.b,X)		; E1 0D
	cpx #$0134.w		; E0 34 01
	asl $FEFF.w		; 0E FF FE
	ora ($1F.b,S),Y		; 13 1F
	dec $3434.w,X		; DE 34 34
	brk $53.b		; 00 53
	wai		; CB
	dec $EE10.w,X		; DE 10 EE
	sbc ($23.b),Y		; F1 23
	bit $00.b,X		; 34 00
	ora $E050E1.l,X		; 1F E1 50 E0
	ora ($31.b)		; 12 31
	and $28.b,S		; 23 28
	rol $3D1F.w		; 2E 1F 3D
	ora ($21.b,S),Y		; 13 21
	sbc ($35.b)		; F2 35
	sbc $38.b		; E5 38
	sbc ($0F.b)		; F2 0F
	and $55F2.w		; 2D F2 55
	wai		; CB
	and $14.b,S		; 23 14
	sec		; 38
	sep #$0E		; E2 0E
	ora $2D.b		; 05 2D
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	cpx #$43.b		; E0 43
	bit $20.b,X		; 34 20
	and $61.b		; 25 61
	cmp ($64.b),Y		; D1 64
	ora $21DE.w,X		; 1D DE 21
	bit $0F.b		; 24 0F
	eor $F2DE.w,X		; 5D DE F2
	ora ($02.b)		; 12 02
	.db $42, $52		; 42 52
	sec		; 38
	beq  64.b		; F0 40
	inc $0051.w,X		; FE 51 00
	jsr $1311.w		; 20 11 13
	plp		; 28
	bit $4251.w		; 2C 51 42
	eor ($44.b,X)		; 41 44
	eor ($42.b)		; 52 42
	mvn $22,$38		; 54 38 22
	eor $1207.w,X		; 5D 07 12
	jsl $311223.l		; 22 23 12 31
	sec		; 38
	eor ($11.b,X)		; 41 11
	lsr $EE.b		; 46 EE
	adc ($13.b,X)		; 61 13
	jsl $732412.l		; 22 12 24 73
	and $32.b,X		; 35 32
	stz $35.b		; 64 35
	adc $43.b,X		; 75 43
	eor $54.b		; 45 54
	bpl   1.b		; 10 01
	brk $19.b		; 00 19
	adc $000001.l,X		; 7F 01 00 00
	bit $E0.b,X		; 34 E0
	inc $FEFE.w,X		; FE FE FE
	rol $DECD.w		; 2E CD DE
	sbc $EAF054.l		; EF 54 F0 EA
	brk $0F.b		; 00 0F
	ora $009007.l		; 0F 07 90 00
	bit $F3.b		; 24 F3
	cmp $2E0EA0.l,X		; DF A0 0E 2E
	and ($1E.b)		; 32 1E
	cmp $DEDD50.l,X		; DF 50 DD DE
	inc $FFEE.w		; EE EE FF
	sbc $340F6F.l,X		; FF 6F 0F 34
	and $20.b,S		; 23 20
	bit $33.b,X		; 34 33
	trb $43.b		; 14 43
	rol $26.b		; 26 26
	sec		; 38
	asl $0540.w,X		; 1E 40 05
	beq  21.b		; F0 15
	lsr $70F2.w,X		; 5E F2 70
	stz $00.b		; 64 00
	trb $E1.b		; 14 E1
	ora ($10.b),Y		; 11 10
	ora ($10.b,X)		; 01 10
	ora ($48.b,X)		; 01 48
	bit $DE.b		; 24 DE
	bit $FF.b		; 24 FF
	rol $01.b		; 26 01
	trb $FF.b		; 14 FF
	stz $01.b		; 64 01
	brk $F1.b		; 00 F1
	brk $5E.b		; 00 5E
	adc $78A01F.l,X		; 7F 1F A0 78
	beq  17.b		; F0 11
	and ($E0.b),Y		; 31 E0
	lda $5430F1.l,X		; BF F1 30 54
	tya		; 98
	ora $310D0E.l		; 0F 0E 0D 31
	brk $50.b		; 00 50
	xba		; EB
	ora ($98.b,X)		; 01 98
	sbc $2B1332.l		; EF 32 13 2B
	inc $031C.w		; EE 1C 03
	.db $42, $98		; 42 98
	ora ($DE.b),Y		; 11 DE
	cmp $4213F0.l,X		; DF F0 13 42
	trb $98FD.w		; 1C FD 98
	inc $3501.w		; EE 01 35
	and ($DF.b,X)		; 21 DF
	cmp $12C2.w,X		; DD C2 12
	tya		; 98
	eor $4C.b,S		; 43 4C
	inc $01CC.w		; EE CC 01
	mvp $FC,$33		; 44 33 FC
	tya		; 98
	jmp.w [$24DF]		; DC DF 24
	eor ($3E.b)		; 52 3E
	jmp.w [$F4A0]		; DC A0 F4
	tay		; A8
	ora ($20.b,S),Y		; 13 20
	inc $11FC.w		; EE FC 11
	and $A81B41.l,X		; 3F 41 1B A8
	cpx #$FF.b		; E0 FF
	tsb $22.b		; 04 22
	sbc $04D0FE.l,X		; FF FE D0 04
	tay		; A8
	sbc ($21.b,S),Y		; F3 21
	dec $F2E0.w		; CE E0 F2
	ora ($40.b),Y		; 11 40
	phd		; 0B
	tay		; A8
	ora $412D.w		; 0D 2D 41
	and ($0C.b),Y		; 31 0C
	asl $23E0.w		; 0E E0 23
	tay		; A8
	sbc ($2E.b,S),Y		; F3 2E
	cmp $13F2F1.l		; CF F1 F2 13
	and $A8B0.w,X		; 3D B0 A8
	ora $4F11F2.l,X		; 1F F2 11 4F
	cmp $20D3F1.l		; CF F1 D3 20
	tay		; A8
	and $201EFC.l,X		; 3F FC 1E 20
	bpl  65.b		; 10 41
	cmp $A8F0.w,X		; DD F0 A8
	ora ($2F.b,X)		; 01 2F
	and ($DE.b)		; 32 DE
	cpx #$02.b		; E0 02
	asl $A443.w,X		; 1E 43 A4
	lsr $0ECD.w		; 4E CD 0E
	beq  53.b		; F0 35
	rol $EEEE.w,X		; 3E EE EE
	tay		; A8
	ora ($03.b)		; 12 03
	sbc $00D1.w,X		; FD D1 00
	and $94EE41.l		; 2F 41 EE 94
	dec $E29D.w		; CE 9D E2
	and $55.b		; 25 55
	stp		; DB
	cmp $4694BF.l		; CF BF 94 46
	and ($00.b),Y		; 31 00
	txy		; 9B
	inc $D0.b,X		; F6 D0
	ror $FA.b		; 66 FA
	ldy $F2.b		; A4 F2
	jsr ($4F04.w,X)		; FC 04 4F
	sbc $22D01E.l		; EF 1E D0 22
	bcc  32.b		; 90 20
	jsl $F5BA3E.l		; 22 3E BA F5
	and $942CF3.l,X		; 3F F3 2C 94
	rep #$41		; C2 41
	ora ($20.b),Y		; 11 20
	cpx $42E1.w		; EC E1 42
	asl $3094.w,X		; 1E 94 30
	dex		; CA
	cop $03.b		; 02 03
	jsl $B2E0D1.l		; 22 D1 E0 B2
	bcc -27.b		; 90 E5
	ora $0ECF.w		; 0D CF 0E
	bpl  47.b		; 10 2F
	sbc $EE8420.l		; EF 20 84 EE
	eor ($4D.b,X)		; 41 4D
	bne  -4.b		; D0 FC
	sep #$43		; E2 43
	tad		; 5B
	sty $DC.b		; 84 DC
	ora $2E44.w,X		; 1D 44 2E
	ora $C3CD01.l,X		; 1F 01 CD C3
	bcc  53.b		; 90 35
	bmi  16.b		; 30 10
	jmp.w [$2E03]		; DC 03 2E
	sbc ($2F.b,S),Y		; F3 2F
	sty $D5.b		; 84 D5
	rol $3BF4.w		; 2E F4 3B
	cmp $2C.b		; C5 2C
	cpx $2F.b		; E4 2F
	bvs -15.b		; 70 F1
	stp		; DB
	plb		; AB
	sbc $EEDD01.l,X		; FF 01 DD EE
	lda $84.b,X		; B5 84
	phk		; 4B
	lda $5B.b		; A5 5B
	pei ($5F.b)		; D4 5F
	cpy $00.b		; C4 00
	cmp ($84.b,X)		; C1 84
	eor ($E3.b,X)		; 41 E3
	bit $3BB2.w		; 2C B2 3B
	lda $5E.b,S		; A3 5E
	ldy $94.b		; A4 94
	and ($BE.b),Y		; 31 BE
	bit $EF.b,X		; 34 EF
	ora ($DE.b)		; 12 DE
	ora ($0D.b)		; 12 0D
	sty $2E.b		; 84 2E
	rol $402F.w,X		; 3E 2F 40
	cmp ($4E.b),Y		; D1 4E
	sbc ($30.b,S),Y		; F3 30
	bra -34.b		; 80 DE
	ora ($EC.b,S),Y		; 13 EC
	sbc ($EA.b,S),Y		; F3 EA
	cpy $3F.b		; C4 3F
	tsb $84.b		; 04 84
	asl A		; 0A
	ora $FE.b,S		; 03 FE
	ldx $20.b,Y		; B6 20
	cpy #$5F.b		; C0 5F
	bcs -124.b		; B0 84
	eor $231DEE.l		; 4F EE 1D 23
	ora ($ED.b,X)		; 01 ED
	tsb $1D.b		; 04 1D
	sty $F0.b		; 84 F0
	trb $EF.b		; 14 EF
	tsb $ED.b		; 04 ED
	and $CA.b,S		; 23 CA
	rol $80.b,X		; 36 80
	tsb $EDCE.w		; 0C CE ED
	dec $C4B9.w,X		; DE B9 C4
	asl A		; 0A
	cmp $90.b,X		; D5 90
	sbc $FDE3.w,X		; FD E3 FD
	cmp ($0C.b),Y		; D1 0C
	cmp ($2E.b,X)		; C1 2E
	sbc ($80.b)		; F2 80
	ror $4D04.w,X		; 7E 04 4D
	cmp ($30.b,S),Y		; D3 30
	sbc ($10.b,X)		; E1 10
	cpx #$74.b		; E0 74
	and $53A2.w		; 2D A2 53
	cmp $F0E3F1.l		; CF F1 E3 F0
	bpl -128.b		; 10 80
	brk $22.b		; 00 22
	sbc $ED12.w		; ED 12 ED
	ora ($FC.b,X)		; 01 FC
	sbc ($84.b)		; F2 84
	cpx $0C32.w		; EC 32 0C
	jsr $0F1E.w		; 20 1E 0F
	cop $F2.b		; 02 F2
	bra   3.b		; 80 03
	and $D26E25.l		; 2F 25 6E D2
	adc $804FD1.l		; 6F D1 4F 80
	sbc ($4F.b)		; F2 4F
	dec $1020.w		; CE 20 10
	rol $0C22.w		; 2E 22 0C
	sty $D3.b		; 84 D3
	rti		; 40

	beq  14.b		; F0 0E
	sbc ($1F.b),Y		; F1 1F
.INDEX 16
	rep #$50		; C2 50
	sty $C1.b		; 84 C1
	ora ($E2.b),Y		; 11 E2
	ora $F30EE2.l,X		; 1F E2 0E F3
	and $530180.l,X		; 3F 80 01 53
	sbc $34FD64.l		; EF 64 FD 34
	ora $70FF.w,X		; 1D FF 70
	ora $B2EA.w		; 0D EA B2
	dec A		; 3A
	cmp $59.b,X		; D5 59
	lda ($6B.b,X)		; A1 6B
	stz $96.b,X		; 74 96
	eor $0FE3.w,X		; 5D E3 0F
	cmp $1D.b,X		; D5 1D
	jsl $E570BC.l		; 22 BC 70 E5
	inc A		; 1A
	cmp ($3E.b),Y		; D1 3E
	lda ($30.b),Y		; B1 30
	sbc ($0E.b)		; F2 0E
	stz $0F.b		; 64 0F
	ora ($39.b,X)		; 01 39
	tsb $42.b		; 04 42
	cmp $CA32.w,X		; DD 32 CA
	rts		; 60

	tsb $2D.b		; 04 2D
	ora ($01.b)		; 12 01
	eor ($FF.b),Y		; 51 FF
	ora ($13.b),Y		; 11 13
	rts		; 60

	eor ($FF.b),Y		; 51 FF
	and ($FF.b)		; 32 FF
	cmp $B652F5.l,X		; DF F5 52 B6
	stz $E0.b,X		; 74 E0
	and $BE.b		; 25 BE
	ora $C2.b,S		; 03 C2
	ora ($DD.b)		; 12 DD
	bit $80.b		; 24 80
	bpl   1.b		; 10 01
	ora $021023.l,X		; 1F 23 10 02
	ora ($04.b),Y		; 11 04
	bvs  63.b		; 70 3F
	tsb $40.b		; 04 40
	sbc ($32.b,S),Y		; F3 32
	bit $21.b,X		; 34 21
	bit $64.b		; 24 64
	lda $CD35.w,X		; BD 35 CD
	eor ($A0.b,S),Y		; 53 A0
	mvn $17,$CA		; 54 CA 17
	rts		; 60

	ora $FF43E1.l,X		; 1F E1 43 FF
	rol $10FD.w,X		; 3E FD 10
	sbc ($64.b,S),Y		; F3 64
	jsr $0FED.w		; 20 ED 0F
	.db $42, $22		; 42 22
	cpy #$FD36.w		; C0 36 FD
	adc $F2.b		; 65 F2
	jmp.w [$ED34]		; DC 34 ED
	bpl -32.b		; 10 E0
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rts		; 60

	asl $B700.w,X		; 1E 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	bvc  -2.b		; 50 FE
	cmp $01C000.l,X		; DF 00 C0 01
	bpl  54.b		; 10 36
	tay		; A8
	ora $E0FF1E.l,X		; 1F 1E FF E0
	ora $43E210.l		; 0F 10 E2 43
	tay		; A8
	sbc $EE0D00.l,X		; FF 00 0D EE
	ora ($FF.b)		; 12 FF
	sbc $62.b,S		; E3 62
	tay		; A8
	inc $FEF2.w,X		; FE F2 FE
	dec $0E21.w		; CE 21 0E
	inc $51.b,X		; F6 51
	tay		; A8
	cmp $C1DD02.l,X		; DF 02 DD C1
	ora ($EF.b),Y		; 11 EF
	eor [$1E.b]		; 47 1E
	tay		; A8
	sbc ($1E.b,X)		; E1 1E
	cmp $3DE1.w,X		; DD E1 3D
	sbc $74.b,S		; E3 74
	jsr ($01B8.w,X)		; FC B8 01
	ora $0E02DF.l		; 0F DF 02 0E
	sbc ($50.b,S),Y		; F3 50
	inc $12B8.w		; EE B8 12
	inc $31DF.w,X		; FE DF 31
	inc $4F05.w		; EE 05 4F
	cmp $2F15B4.l,X		; DF B4 15 2F
	ldy $DBF0.w,X		; BC F0 DB
	cmp $65.b,S		; C3 65
	bpl -76.b		; 10 B4
	ora $3E.b,X		; 15 3E
	tyx		; BB
	ora ($DB.b,X)		; 01 DB
	lda ($66.b,S),Y		; B3 66
	ora $0D12C8.l,X		; 1F C8 12 0D
	sbc ($13.b,X)		; E1 13
	dec $3003.w,X		; DE 03 30
	cmp $0F03C8.l,X		; DF C8 03 0F
	cpy #$0D31.w		; C0 31 0D
	sep #$42		; E2 42
	dec $F3C8.w,X		; DE C8 F3
	and $13EE.w,X		; 3D EE 13
	ora $43EF.w,X		; 1D EF 43
	ora $F0C4.w		; 0D C4 F0
	and ($0D.b,S),Y		; 33 0D
	bne  33.b		; D0 21
	cpy $42E3.w		; CC E3 42
	cpy $EF.b		; C4 EF
	bit $2D.b		; 24 2D
	cmp $D2EB12.l,X		; DF 12 EB D2
	eor $C4.b,S		; 43 C4
	inc $3E14.w,X		; FE 14 3E
	dec $FB12.w,X		; DE 12 FB
	cmp ($53.b,X)		; C1 53
	iny		; C8
	dec $FD24.w,X		; DE 24 FD
	cmp ($32.b),Y		; D1 32
	jmp.w [$4F05]		; DC 05 4F
	cpy $FE.b		; C4 FE
	tsb $3F.b		; 04 3F
	dec $FC12.w		; CE 12 FC
	cmp ($53.b,X)		; C1 53
	cpy $FE.b		; C4 FE
	tsb $3F.b		; 04 3F
	cmp $EC22.w		; CD 22 EC
	cmp ($53.b)		; D2 53
	cpy $EE.b		; C4 EE
	trb $2E.b		; 14 2E
	dec $DB22.w		; CE 22 DB
	pea $C442.w		; F4 42 C4
	cmp $D00D24.l,X		; DF 24 0D D0
	jsr $14CD.w		; 20 CD 14
	eor $3FF2C8.l		; 4F C8 F2 3F
	dec $1C22.w,X		; DE 22 1C
	sbc ($41.b)		; F2 41
	cmp $F2C4.w,X		; DD C4 F2
	jsr $01ED.w		; 20 ED 01
	ora $32E3.w		; 0D E3 32
	sbc $EE21C8.l,X		; FF C8 21 EE
	cop $1E.b		; 02 1E
	sep #$41		; E2 41
	dec $C803.w,X		; DE 03 C8
	inc $2FE2.w,X		; FE E2 2F
	sbc $F3FC52.l		; EF 52 FC F3
	ora $31DFC8.l,X		; 1F C8 DF 31
	jsr ($1E34.w,X)		; FC 34 1E
	cmp $C8EE31.l,X		; DF 31 EE C8
	pea $F40D.w		; F4 0D F4
	and $0E21DE.l,X		; 3F DE 21 0E
	sbc $C8.b,S		; E3 C8
	asl $41E2.w,X		; 1E E2 41
	cmp $1D12.w,X		; DD 12 1D
.ACCU 8
	sep #$2F		; E2 2F
	cpy $DE.b		; C4 DE
	bit $3F.b,X		; 34 3F
	cpx #$ED20.w		; E0 20 ED
	ora ($EE.b,X)		; 01 EE
	iny		; C8
	eor ($0D.b,X)		; 41 0D
.INDEX 8
	sep #$1F		; E2 1F
	inc $FF4F.w,X		; FE 4F FF
	and ($C4.b,S),Y		; 33 C4
	eor $ED10E0.l		; 4F E0 10 ED
	brk $FF.b		; 00 FF
	and $30.b,S		; 23 30
	ldy $CF.b,X		; B4 CF
	and ($CB.b,X)		; 21 CB
	sbc $3D67D0.l,X		; FF D0 67 3D
	sbc ($B8.b,X)		; E1 B8
	ora $5DD0.w,X		; 1D D0 5D
	sbc $51.b		; E5 51
	lda $1C33.w,Y		; B9 33 1C
	cpy $D0.b		; C4 D0
	ora $FE44E1.l		; 0F E1 44 FE
	sbc ($0F.b),Y		; F1 0F
	cpx #$C4.b		; E0 C4
	asl $33F3.w		; 0E F3 33
	inc $FE11.w		; EE 11 FE
	cpx #$F1.b		; E0 F1
	clv		; B8
	ora $DC.b		; 05 DC
	cpy #$3F.b		; C0 3F
	inc $41.b		; E6 41
	stp		; DB
	sbc $14E1C8.l,X		; FF C8 E1 14
	ora ($FF.b,X)		; 01 FF
	inc $02D2.w,X		; FE D2 02
	and ($B8.b),Y		; 31 B8
	asl $B0DD.w		; 0E DD B0
	and ($14.b)		; 32 14
	ora ($EB.b)		; 12 EB
	cmp $33B8.w		; CD B8 33
	trb $03.b		; 14 03
	sbc $2703AB.l		; EF AB 03 27
	cop $C8.b		; 02 C8
	ora $03F3DD.l		; 0F DD F3 03
	ora ($00.b),Y		; 11 00
	cmp $C801.w		; CD 01 C8
	and ($20.b,X)		; 21 20
	ora $13E2FC.l,X		; 1F FC E2 13
	bpl   0.b		; 10 00
	iny		; C8
	sbc $12D2.w,X		; FD D2 12
	jsr $FB1F.w		; 20 1F FB
	ora ($22.b,X)		; 01 22
	iny		; C8
	ora ($1E.b,X)		; 01 1E
	cmp $F11011.l,X		; DF 11 10 F1
	bmi -36.b		; 30 DC
	iny		; C8
	ora $3F.b,S		; 03 3F
	sbc $DE34.w,X		; FD 34 DE
	cpy $3F.b		; C4 3F
	jsr ($E4C4.w,X)		; FC C4 E4
	rti		; 40

	cmp $0D23.w,X		; DD 23 0D
	cpx #$12.b		; E0 12
	brk $B4.b		; 00 B4
	ora ($0F.b),Y		; 11 0F
	cmp $65D21E.l,X		; DF 1E D2 65
	jsr ($C8FF.w,X)		; FC FF C8
	ora $ED3101.l		; 0F 01 31 ED
	sbc ($10.b),Y		; F1 10
	ora $FEC823.l		; 0F 23 C8 FE
	cmp ($30.b,X)		; C1 30
	sbc ($F2.b,X)		; E1 F2
	and $B414DD.l,X		; 3F DD 14 B4
	rol $F6EE.w		; 2E EE F6
	eor ($BB.b)		; 52 BB
	ora ($FD.b,S),Y		; 13 FD
	inc $56B4.w		; EE B4 56
	and $2EB1.w		; 2D B1 2E
	dec $51F7.w,X		; DE F7 51
	stp		; DB
	cpy #$00.b		; C0 00
	sbc $24CE.w,X		; FD CE 24
	eor ($F0.b,X)		; 41 F0
	inc $C8CC.w,X		; FE CC C8
	rti		; 40

	dec $0EE4.w,X		; DE E4 0E
	brk $23.b		; 00 23
	inc $C8C1.w,X		; FE C1 C8
	eor $3F02E0.l		; 4F E0 02 3F
	jmp.w [$FE42]		; DC 42 FE
	ora $BC76B8.l		; 0F B8 76 BC
	lda $6C.b		; A5 6C
	dec $5C17.w,X		; DE 17 5C
	stz $33C8.w		; 9C C8 33
	cpy #$E3.b		; C0 E3
	and ($CD.b)		; 32 CD
	ora $1D.b,S		; 03 1D
	beq -56.b		; F0 C8
	and $FC.b		; 25 FC
	cmp ($3F.b)		; D2 3F
	bne   5.b		; D0 05
	rol $C4BF.w		; 2E BF C4
	cop $FE.b		; 02 FE
	bne  68.b		; D0 44
	ora $1ED2.w,X		; 1D D2 1E
	inc $25C8.w		; EE C8 25
	sbc $3EC3.w		; ED C3 3E
	inc $3D14.w,X		; FE 14 3D
	cmp $02C4.w,X		; DD C4 02
	inc $45EE.w,X		; FE EE 45
	and $2FC1.w		; 2D C1 2F
	dec $25C8.w,X		; DE C8 25
	sbc $4FC2.w		; ED C2 4F
	inc $3D14.w		; EE 14 3D
	dec $02C4.w		; CE C4 02
	asl $45DF.w		; 0E DF 45
	trb $10D2.w		; 1C D2 10
	dec $25C8.w,X		; DE C8 25
	dec $3FC3.w,X		; DE C3 3F
	inc $3D05.w		; EE 05 3D
	dec $12C4.w		; CE C4 12
	asl $54DE.w		; 0E DE 54
	ora $1FD2.w,X		; 1D D2 1F
	sbc $35C8.w		; ED C8 35
	sbc $4DB4.w		; ED B4 4D
	inc $2D06.w,X		; FE 06 2D
	lda $0E12C4.l,X		; BF C4 12 0E
	cmp $E21C53.l,X		; DF 53 1C E2
	rol $C8ED.w		; 2E ED C8
	rol $CE.b,X		; 36 CE
	ldy $4D.b,X		; B4 4D
	inc $3D14.w,X		; FE 14 3D
	lda $0E12C4.l,X		; BF C4 12 0E
	inc $1C44.w		; EE 44 1C
.INDEX 8
	sep #$10		; E2 10
	dec $C2C0.w,X		; DE C0 C2
	mvp $12,$FE		; 44 FE 12
	asl $34BE.w		; 0E BE 34
	rol $12C4.w		; 2E C4 12
	ora $1C44DE.l		; 0F DE 44 1C
	sbc ($20.b,X)		; E1 20
	sbc $C1C0.w		; ED C0 C1
	mvp $02,$FE		; 44 FE 02
	ora $3E24CC.l,X		; 1F CC 24 3E
	cpy #$E1.b		; C0 E1
	and ($EC.b,X)		; 21 EC
	cmp ($43.b)		; D2 43
	inc $1E12.w		; EE 12 1E
	cpy #$BE.b		; C0 BE
	and $2E.b,X		; 35 2E
	sbc ($20.b),Y		; F1 20
	xba		; EB
	sbc ($50.b,S),Y		; F3 50
	cpy $D2.b		; C4 D2
	and ($DE.b,X)		; 21 DE
	sbc $31.b		; E5 31
	ldx $0E22.w,Y		; BE 22 0E
	cpy #$DB.b		; C0 DB
	trb $4E.b		; 14 4E
	cpx #$22.b		; E0 22
	sbc $43C2.w,X		; FD C2 43
	cpy #$EE.b		; C0 EE
	ora ($1E.b)		; 12 1E
	cmp $2D35.w		; CD 35 2D
	sbc ($20.b,X)		; E1 20
	cpy $ED.b		; C4 ED
	and $1C.b,X		; 35 1C
	cmp ($21.b)		; D2 21
	inc $41D4.w		; EE D4 41
	cpy #$0D.b		; C0 0D
	sbc ($2F.b)		; F2 2F
	stp		; DB
	tsb $4F.b		; 04 4F
	bne  34.b		; D0 22
	cpy #$FD.b		; C0 FD
	lda ($43.b)		; B2 43
	inc $1E02.w		; EE 02 1E
	cpy $C024.w		; CC 24 C0
	rol $21E1.w,X		; 3E E1 21
	cpx $42D2.w		; EC D2 42
	inc $C012.w		; EE 12 C0
	asl $34CE.w		; 0E CE 34
	and $20F1.w		; 2D F1 20
	xba		; EB
	sbc ($B4.b,S),Y		; F3 B4
	and $51A3.w,Y		; 39 A3 51
	lda $72B7.w,X		; BD B7 72
	tax		; AA
	mvp $0E,$C4		; 44 C4 0E
	sbc $1D43.w,X		; FD 43 1D
	cmp ($20.b)		; D2 20
	sbc $24C0D4.l		; EF D4 C0 24
	asl $1F01.w		; 0E 01 1F
	cpx $3F03.w		; EC 03 3F
	cpx #$C0.b		; E0 C0
	ora ($FE.b),Y		; 11 FE
	cmp ($33.b,X)		; C1 33
	inc $1F01.w,X		; FE 01 1F
	sbc $25B0.w		; ED B0 25
	adc $31D0.w		; 6D D0 31
	cpx $66A3.w		; EC A3 66
	cmp $13B0.w,X		; DD B0 13
	asl $36CA.w,X		; 1E CA 36
	eor $30E0.w,X		; 5D E0 30
	xba		; EB
	bcs -77.b		; B0 B3
	adc $CE.b		; 65 CE
	ora ($0E.b,S),Y		; 13 0E
	tyx		; BB
	rol $5C.b,X		; 36 5C
	bcs -32.b		; B0 E0
	bmi  -5.b		; 30 FB
	lda ($64.b,S),Y		; B3 64
	dec $0F03.w		; CE 03 0F
	bcs -84.b		; B0 AC
	rol $4C.b,X		; 36 4C
	cpx #$3F.b		; E0 3F
	plx		; FA
	cmp $73.b,S		; C3 73
	ldy $92.b,X		; B4 92
	and $C0.b,S		; 23 C0
	lda $64.b,S		; A3 64
	cmp $3C22.w,Y		; D9 22 3C
	cpy $0D.b		; C4 0D
	jsl $11D13E.l		; 22 3E D1 11
	cpx #$D2.b		; E0 D2
	and ($B4.b)		; 32 B4
	plb		; AB
	and $2C.b,S		; 23 2C
	ora #$64.b		; 09 64
	phy		; 5A
	lda ($32.b)		; B2 32
	cpy $E0.b		; C4 E0
	cmp ($22.b,S),Y		; D3 22
	dec $1E11.w,X		; DE 11 1E
	ora $C032.w		; 0D 32 C0
	rti		; 40

	sbc $C00F11.l		; EF 11 0F C0
	bit $FE.b		; 24 FE
	sbc ($C0.b),Y		; F1 C0
	bpl  -4.b		; 10 FC
	cop $4F.b		; 02 4F
	sbc $C00F11.l		; EF 11 0F C0
	cpy #$24.b		; C0 24
	sbc $FC10F2.l,X		; FF F2 10 FC
	cop $4F.b		; 02 4F
	sbc $0F21C0.l,X		; FF C0 21 0F
	cpy #$24.b		; C0 24
	sbc $FC10F2.l,X		; FF F2 10 FC
	cpy #$02.b		; C0 02
	eor $0E21FF.l		; 4F FF 21 0E
	bne  35.b		; D0 23
	sbc $10F4B0.l,X		; FF B0 F4 10
	phx		; DA
	ora $7D.b		; 05 7D
	cmp $B00C41.l,X		; DF 41 0C B0
	lda ($66.b,X)		; A1 66
	cmp $10F4.w,X		; DD F4 10
	dex		; CA
	asl $6C.b,X		; 16 6C
	bcs -33.b		; B0 DF
	rti		; 40

	phd		; 0B
	lda ($65.b),Y		; B1 65
	cmp $0004.w		; CD 04 00
	cpy #$DE.b		; C0 DE
	ora ($2E.b,S),Y		; 13 2E
	beq  32.b		; F0 20
	ora $42E1.w		; 0D E1 42
	cpy $C1.b		; C4 C1
	ora ($E0.b)		; 12 E0
.ACCU 16
	rep #$24		; C2 24
	cmp $2E11.w,X		; DD 11 2E
	cpy $0C.b		; C4 0C
	and $3C.b,S		; 23 3C
	sbc ($21.b,X)		; E1 21
	cpx #$C3.b		; E0 C3
	and $C0.b,S		; 23 C0
	asl $10F1.w		; 0E F1 10
	tsb $4FF1.w		; 0C F1 4F
	sbc $0FC021.l		; EF 21 C0 0F
	cpy #$24.b		; C0 24
	inc $10F2.w,X		; FE F2 10
	jsr ($C002.w,X)		; FC 02 C0
	eor $0F21EF.l		; 4F EF 21 0F
	cpy #$24.b		; C0 24
	inc $C0F2.w,X		; FE F2 C0
	brk $FD.b		; 00 FD
	cop $4F.b		; 02 4F
	sbc $D00E20.l		; EF 20 0E D0
	bcs  87.b		; B0 57
	cmp $11F4.w,X		; DD F4 11
	phx		; DA
	asl $6D.b		; 06 6D
	cmp $1C41B0.l,X		; DF B0 41 1C
	ldy #$66.b		; A0 66
	cmp $0104.w,X		; DD 04 01
	dex		; CA
	cpy #$03.b		; C0 03
	rol $20E0.w,X		; 3E E0 20
	asl $42D0.w		; 0E D0 42
	inc $02C0.w		; EE C0 02
	brk $ED.b		; 00 ED
	tsb $2E.b		; 04 2E
	cpx #$20.b		; E0 20
	ora $D0C0.w		; 0D C0 D0
	.db $42, $EE		; 42 EE
	cop $00.b		; 02 00
	sbc $2E04.w		; ED 04 2E
	cpy #$E0.b		; C0 E0
	jsr $E00D.w		; 20 0D E0
	.db $42, $EE		; 42 EE
	cop $00.b		; 02 00
	cpy #$ED.b		; C0 ED
	tsb $2E.b		; 04 2E
	cpx #$20.b		; E0 20
	asl $42D0.w		; 0E D0 42
	cpy #$EE.b		; C0 EE
	cop $00.b		; 02 00
	sbc $3FF4.w		; ED F4 3F
	cpx #$20.b		; E0 20
	bcs  29.b		; B0 1D
	lda $04DC66.l		; AF 66 DC 04
	ora ($EA.b,X)		; 01 EA
	inc $C0.b		; E6 C0
	eor $0F20E0.l		; 4F E0 20 0F
	cmp $F2FE24.l,X		; DF 24 FE F2
	cpy #$00.b		; C0 00
	sbc $4FF2.w,X		; FD F2 4F
	sbc $DF0F20.l		; EF 20 0F DF
	cpy #$24.b		; C0 24
	inc $00F2.w,X		; FE F2 00
	sbc $4FF2.w,X		; FD F2 4F
	sbc $0F21C0.l		; EF C0 21 0F
	cmp $F2FE24.l,X		; DF 24 FE F2
	brk $0D.b		; 00 0D
	cpy #$F2.b		; C0 F2
	eor $0F20EF.l		; 4F EF 20 0F
	cmp $C0FE24.l,X		; DF 24 FE C0
	sbc ($00.b)		; F2 00
	sbc $4FF2.w,X		; FD F2 4F
	sbc $C00020.l		; EF 20 00 C0
	cmp $F2FE24.l,X		; DF 24 FE F2
	bpl  -3.b		; 10 FD
	sbc ($3F.b)		; F2 3F
	cpy #$EF.b		; C0 EF
	jsr $DF0F.w		; 20 0F DF
	bit $FE.b		; 24 FE
	sbc ($00.b)		; F2 00
	bcs -22.b		; B0 EA
	pea $CF6D.w		; F4 6D CF
	rti		; 40

	asl $57AE.w		; 0E AE 57
	bcs -36.b		; B0 DC
	pea $EA00.w		; F4 00 EA
	sbc $6D.b,X		; F5 6D
	cmp $0DB041.l		; CF 41 B0 0D
	lda $04DC65.l,X		; BF 65 DC 04
	brk $DB.b		; 00 DB
	inc $B0.b,X		; F6 B0
	eor $40C1.w,X		; 5D C1 40
	tsb $74B0.w		; 0C B0 74
	cmp $C413.w,X		; DD 13 C4
	beq -48.b		; F0 D0
	bit $ED.b		; 24 ED
	cop $1F.b		; 02 1F
	ora $C403.w		; 0D 03 C4
	and $30E0.w,X		; 3D E0 30
	beq -47.b		; F0 D1
	bit $CE.b		; 24 CE
	ora $C4.b,S		; 03 C4
	ora $4C120D.l		; 0F 0D 12 4C
	cpx #$30.b		; E0 30
	beq -47.b		; F0 D1
	cpy #$14.b		; C0 14
	asl $10F2.w		; 0E F2 10
	ora $40F1.w		; 0D F1 40
	sbc $0021C0.l		; EF C0 21 00
	cmp $F2FE14.l,X		; DF 14 FE F2
	bpl  13.b		; 10 0D
	cpy #$F2.b		; C0 F2
	eor $0020EF.l		; 4F EF 20 00
	cmp $C0FE24.l,X		; DF 24 FE C0
	sbc ($00.b)		; F2 00
	sbc $4FF2.w,X		; FD F2 4F
	cpx #$20.b		; E0 20
	ora $24DFC0.l		; 0F C0 DF 24
	inc $0002.w,X		; FE 02 00
	sbc $3FF2.w,X		; FD F2 3F
	bcs -33.b		; B0 DF
	and ($1E.b),Y		; 31 1E
	ldx $ED46.w		; AE 46 ED
	ora $11.b,S		; 03 11
	bcs -22.b		; B0 EA
	sbc $6E.b		; E5 6E
	bne  48.b		; D0 30
	ora $B047AE.l,X		; 1F AE 47 B0
	sbc $00F3.w		; ED F3 00
	plx		; FA
	sbc $7F.b,S		; E3 7F
	cmp $00C030.l,X		; DF 30 C0 00
	cmp $F10F14.l,X		; DF 14 0F F1
	brk $0D.b		; 00 0D
	sbc ($C4.b,X)		; E1 C4
	bit $3FF0.w,X		; 3C F0 3F
	sbc ($D0.b),Y		; F1 D0
	bit $CF.b		; 24 CF
	ora $C4.b,S		; 03 C4
	sbc $4D021D.l,X		; FF 1D 02 4D
	cpx #$3F.b		; E0 3F
	sbc ($D0.b),Y		; F1 D0
	cpy #$04.b		; C0 04
	ora $0E00F1.l,X		; 1F F1 00 0E
	cpx #$31.b		; E0 31
	sbc $F131B0.l,X		; FF B0 31 F1
	xba		; EB
	inc $3E.b		; E6 3E
	sbc $1F.b,S		; E3 1F
	asl $CEB0.w		; 0E B0 CE
	eor ($FE.b,S),Y		; 53 FE
	and ($F0.b,X)		; 21 F0
	xce		; FB
	cpx $3F.b		; E4 3F
	bcs -30.b		; B0 E2
	and $44BE0F.l		; 2F 0F BE 44
	inc $F022.w,X		; FE 22 F0
	bcs  11.b		; B0 0B
	sbc $4F.b,S		; E3 4F
	sbc ($2F.b)		; F2 2F
	brk $BE.b		; 00 BE
	bit $B1.b		; 24 B1
	sbc $0BFF22.l,X		; FF 22 FF 0B
	sep #$4F		; E2 4F
	sbc ($2F.b)		; F2 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	ldy $FE.b		; A4 FE
	sbc $EFB2.w,X		; FD B2 EF
	beq   1.b		; F0 01
	and ($64.b),Y		; 31 64
	and ($22.b,X)		; 21 22
	trb $02.b		; 14 02
	eor $C20022.l,X		; 5F 22 00 C2
	stz $DD.b		; 64 DD
	inc $CFA0.w,X		; FE A0 CF
	cmp $031EFA.l		; CF FA 1E 03
	stz $D5.b		; 64 D5
	and $F63734.l,X		; 3F 34 37 F6
	sbc ($12.b)		; F2 12
	ora ($68.b),Y		; 11 68
	and $D1F110.l		; 2F 10 F1 D1
	rol $03E0.w,X		; 3E E0 03
	bne 100.b		; D0 64
	lda ($DE.b),Y		; B1 DE
	cmp $42333D.l,X		; DF 3D 33 42
	eor ($55.b,S),Y		; 53 55
	pla		; 68
	cmp ($D1.b,S),Y		; D3 D1
	ora ($12.b,X)		; 01 12
	cpy $01.b		; C4 01
	brk $0B.b		; 00 0B
	pla		; 68
	ror $FEF0.w		; 6E F0 FE
	jmp ($B3C6.w)		; 6C C6 B3
.ACCU 16
.INDEX 16
	rep #$F2		; C2 F2
	pla		; 68
	and $6F2C.w,X		; 3D 2C 6F
	jsr ($0030.w,X)		; FC 30 00
	brk $20.b		; 00 20
	pla		; 68
	ora $F1.b,S		; 03 F1
	bpl -16.b		; 10 F0
	cpx #$411B.w		; E0 1B 41
	inc $0D68.w,X		; FE 68 0D
	ora $2CF22F.l,X		; 1F 2F F2 2C
	ror $5BE0.w		; 6E E0 5B
	cli		; 58
	cmp $3E.b,S		; C3 3E
	cop $10.b		; 02 10
	and ($32.b),Y		; 31 32
	beq  14.b		; F0 0E
	sei		; 78
	ora $CFB5E4.l		; 0F E4 B5 CF
	and $2C4E0D.l		; 2F 0D 4E 2C
	sei		; 78
	eor $0110.w,X		; 5D 10 01
	cpx #$F010.w		; E0 10 F0
	bpl   0.b		; 10 00
	pla		; 68
	bit $A5.b		; 24 A5
	phk		; 4B
	bmi -31.b		; 30 E1
	dec $F0FF.w,X		; DE FF F0
	sei		; 78
	beq   0.b		; F0 00
	bpl   2.b		; 10 02
	ora $3C2E2C.l		; 0F 2C 2E 3C
	pla		; 68
	rti		; 40

	ora ($E2.b),Y		; 11 E2
	jsr $7A02.w		; 20 02 7A
	jsr $780E.w		; 20 0E 78
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $051000.l,X		; FF 00 10 05
	rep #$01		; C2 01
	pla		; 68
	dex		; CA
	and $B1.b		; 25 B1
	pei ($21.b)		; D4 21
.INDEX 8
	sep #$5D		; E2 5D
	jsl $0E0198.l		; 22 98 01 0E
	asl $C53F.w,X		; 1E 3F C5
	cpx #$E4.b		; E0 E4
	asl $1E98.w		; 0E 98 1E
	ora ($D0.b,S),Y		; 13 D0
	rol $4EEF.w,X		; 3E EF 4E
	and ($FC.b,S),Y		; 33 FC
	ldy $11.b,X		; B4 11
	sbc $D1DD0F.l,X		; FF 0F DD D1
	tsb $2FF4.w		; 0C F4 2F
	clv		; B8
	eor ($EF.b,X)		; 41 EF
	ora $ED.b,S		; 03 ED
	jsl $D030CF.l		; 22 CF 30 D0
	cpy $E0.b		; C4 E0
	rol $3FE4.w,X		; 3E E4 3F
	ora ($2F.b,S),Y		; 13 2F
	sbc ($0D.b),Y		; F1 0D
	cpy $01.b		; C4 01
	inc $EF1F.w,X		; FE 1F EF
	sbc ($2E.b),Y		; F1 2E
	sbc $1F.b,X		; F5 1F
	ldy $54.b,X		; B4 54
	inc $CB00.w,X		; FE 00 CB
	.db $42, $D2		; 42 D2
	phd		; 0B
	inc $F2C4.w,X		; FE C4 F2
	sbc $2FF342.l		; EF 42 F3 2F
	beq  14.b		; F0 0E
	cmp ($C4.b)		; D2 C4
	and $FFDF02.l		; 2F 02 DF FF
	ora $233EE4.l,X		; 1F E4 3E 23
	ldy $FE.b,X		; B4 FE
	cpx #$E9.b		; E0 E9
	asl $F0.b,X		; 16 F0
	jmp $C4E2BE.l		; 5C BE E2 C4
	sbc $F144.w,X		; FD 44 F1
	eor $D00FEF.l		; 4F EF 0F D0
	and ($C4.b),Y		; 31 C4
	sbc ($FD.b,S),Y		; F3 FD
	inc $C310.w,X		; FE 10 C3
	eor $C40D14.l,X		; 5F 14 0D C4
	beq  -3.b		; F0 FD
	sbc ($20.b,S),Y		; F3 20
	jsr $E1DE.w		; 20 DE E1
	tsb $26C4.w		; 0C C4 26
	brk $41.b		; 00 41
	dec $DE0F.w,X		; DE 0F DE
	eor $02.b,S		; 43 02
	iny		; C8
	sbc $2E02.w		; ED 02 2E
	dec $4A.b,X		; D6 4A
	sbc $DB.b,X		; F5 DB
	jsl $25FEC8.l		; 22 C8 FE 25
	phd		; 0B
	and $ED22B1.l,X		; 3F B1 22 ED
	adc ($C4.b,S),Y		; 73 C4
	brk $41.b		; 00 41
	cmp $CF0F.w		; CD 0F CF
	stz $F1.b		; 64 F1
	trb $CFC4.w		; 1C C4 CF
	asl $70D4.w,X		; 1E D4 70
	tsb $0B.b		; 04 0B
	cmp ($ED.b),Y		; D1 ED
	cpy $06.b		; C4 06
	lsr $CC2F.w		; 4E 2F CC
	ora ($EE.b,X)		; 01 EE
	adc $00.b		; 65 00
	iny		; C8
	lsr A		; 4A
	pei ($1F.b)		; D4 1F
	sbc [$2C.b]		; E7 2C
	cpy $DD.b		; C4 DD
	trb $C8.b		; 14 C8
	inc $DC35.w,X		; FE 35 DC
	bmi -65.b		; 30 BF
	and ($E2.b),Y		; 31 E2
	bvc -56.b		; 50 C8
	bcs  28.b		; B0 1C
	ora ($3F.b,X)		; 01 3F
	sbc ($4C.b,S),Y		; F3 4C
	cmp ($FB.b,S),Y		; D3 FB
	iny		; C8
	ora ($0E.b,S),Y		; 13 0E
	and $EB.b,X		; 35 EB
	and $FF22D0.l		; 2F D0 22 FF
	iny		; C8
	eor ($CF.b),Y		; 51 CF
	and $1FD3.w		; 2D D3 1F
	ora $4C.b,S		; 03 4C
	sbc ($C4.b,X)		; E1 C4
	jsr ($2FDE.w,X)		; FC DE 2F
	tsb $50.b		; 04 50
	ora ($EC.b,X)		; 01 EC
	cpx #$C8.b		; E0 C8
	beq  50.b		; F0 32
	inc $F0FF.w		; EE FF F0
	jsl $C84FE1.l		; 22 E1 4F C8
	bne  28.b		; D0 1C
	ora ($2F.b,X)		; 01 2F
	ora $2D.b,S		; 03 2D
	sbc $15B8FF.l,X		; FF FF B8 15
	rol A		; 2A
	ror $BC.b		; 66 BC
	and $41CF.w,X		; 3D CF 41
	sbc $C4.b,S		; E3 C4
	and ($2F.b,S),Y		; 33 2F
	inc $2FDE.w,X		; FE DE 2F
	sbc ($40.b,S),Y		; F3 40
	ora ($B8.b),Y		; 11 B8
	cmp $0F13.w		; CD 13 0F
	mvp $DF,$FC		; 44 FC DF
	beq 109.b		; F0 6D
	cpy $E2.b		; C4 E2
	and ($12.b),Y		; 31 12
	sbc $12FED0.l,X		; FF D0 FE 12
	and ($B4.b,X)		; 21 B4
	asl $2FDC.w,X		; 1E DC 2F
	lda ($51.b)		; B2 51
	jsr $F2FE.w		; 20 FE F2
	ldy $CD.b,X		; B4 CD
	eor $F2.b,S		; 43 F2
	bmi -18.b		; 30 EE
	asl $21C2.w,X		; 1E C2 21
	bcs  31.b		; B0 1F
	jmp.w [$CC01]		; DC 01 CC
	jsl $214402.l		; 22 02 44 21
	ldy $1D.b,X		; B4 1D
.INDEX 8
	sep #$10		; E2 10
	sbc $5EF1.w,X		; FD F1 5E
	cmp $3F.b,S		; C3 3F
	ldy $01.b,X		; B4 01
	and $010DF1.l		; 2F F1 0D 01
	asl $03EF.w		; 0E EF 03
	ldy #$4D.b		; A0 4D
	rep #$40		; C2 40
	sbc ($43.b)		; F2 43
	trb $30.b		; 14 30
	ora ($94.b),Y		; 11 94
	tyx		; BB
	ora ($35.b)		; 12 35
	and $0AC0.w		; 2D C0 0A
	lda ($22.b)		; B2 22
	tya		; 98
	ora $E2ED01.l,X		; 1F 01 ED E2
	bvc -30.b		; 50 E2
	rol $98CF.w		; 2E CF 98
	ora $2020D5.l		; 0F D5 20 20
	ora $22F0FD.l		; 0F FD F0 22
	tya		; 98
	ora $1EDF4F.l,X		; 1F 4F DF 1E
	cmp ($22.b,X)		; C1 22
	cop $0F.b		; 02 0F
	sty $1F.b		; 84 1F
	phx		; DA
	cpx $23.b		; E4 23
	eor [$3F.b],Y		; 57 3F
	.db $62, $9B, $88		; 62 9B 88
	and ($3F.b,S),Y		; 33 3F
	cmp $FEE0.w,X		; DD E0 FE
	.db $62, $20, $2F		; 62 20 2F
	dey		; 88
	cpy #$1C.b		; C0 1C
	ldy $05.b		; A4 05
	eor $BF.b,S		; 43 BF
	ora $88C0.w,X		; 1D C0 88
	bmi -10.b		; 30 F6
	rol A		; 2A
	cpy $FC.b		; C4 FC
	ora [$3B.b]		; 07 3B
	asl $98.b		; 06 98
	sbc $1F0F.w		; ED 0F 1F
	and ($E3.b)		; 32 E3
	ora $00D0.w,X		; 1D D0 00
	tya		; 98
	cmp $1F.b,X		; D5 1F
	ora ($0F.b,X)		; 01 0F
	cmp ($FF.b)		; D2 FF
	ora ($01.b)		; 12 01
	sty $35.b		; 84 35
	trb $B0EE.w		; 1C EE B0
	and $32.b,S		; 23 32
	.db $42, $DD		; 42 DD
	dey		; 88
	ora ($01.b,X)		; 01 01
	jsl $10FED0.l		; 22 D0 FE 10
	cmp $2E.b		; C5 2E
	sty $42.b		; 84 42
	.db $42, $FD		; 42 FD
	dec $22FD.w,X		; DE FD 22
	bmi  34.b		; 30 22
	sty $1C.b		; 84 1C
	cmp $11130E.l		; CF 0E 13 11
	asl $0FEE.w		; 0E EE 0F
	sty $01.b		; 84 01
	and ($F2.b)		; 32 F2
	bit $F0C2.w,X		; 3C C2 F0
	ora ($30.b,X)		; 01 30
	sty $F0.b		; 84 F0
	sbc $001F.w,X		; FD 1F 00
	ora ($E0.b)		; 12 E0
	bit $68D1.w,X		; 3C D1 68
	cmp $5C7C.w		; CD 7C 5C
	sbc ($DE.b,X)		; E1 DE
	and ($10.b,X)		; 21 10
	bpl 116.b		; 10 74
	brk $ED.b		; 00 ED
	asl $F40E.w		; 0E 0E F4
	sbc ($3D.b,X)		; E1 3D
	sbc ($70.b),Y		; F1 70
	jmp.w [$21CF]		; DC CF 21
	ora ($2D.b)		; 12 2D
	sbc $74C0DB.l,X		; FF DB C0 74
	cpx #$3F.b		; E0 3F
	bne  14.b		; D0 0E
	sbc ($30.b),Y		; F1 30
	sbc ($FC.b,S),Y		; F3 FC
	stz $12.b		; 64 12
	cmp $F031E1.l		; CF E1 31 F0
	ora ($0B.b),Y		; 11 0B
	jsl $E50C64.l		; 22 64 0C E5
	tsb $1F04.w		; 0C 04 1F
	cmp $19.b,S		; C3 19
	rol $F564.w		; 2E 64 F5
	lda $E5CC45.l,X		; BF 45 CC E5
	dec $2F40.w,X		; DE 40 2F
	stz $C1.b		; 64 C1
	pld		; 2B
	ora $30F123.l		; 0F 23 F1 30
	ldy $64F6.w,X		; BC F6 64
	lda ($06.b),Y		; B1 06
	ora $FFA00F.l		; 0F 0F A0 FF
	ora ($D4.b,S),Y		; 13 D4
	bvs  20.b		; 70 14
	ora $DCFF.w		; 0D FF DC
	cpx #$11.b		; E0 11
	bpl -51.b		; 10 CD
	stz $00.b,X		; 74 00
	sbc ($00.b)		; F2 00
	lsr $F0FE.w		; 4E FE F0
	sbc $007423.l,X		; FF 23 74 00
	bpl -49.b		; 10 CF
	ora $201010.l		; 0F 10 10 20
	ora $FEA164.l		; 0F 64 A1 FE
	bit $10.b		; 24 10
	and ($CD.b,X)		; 21 CD
	cop $0C.b		; 02 0C
	stz $22.b		; 64 22
	brk $2C.b		; 00 2C
	trb $11D1.w		; 1C D1 11
	jsr $6410.w		; 20 10 64
	beq -32.b		; F0 E0
	inc $1003.w,X		; FE 03 10
	ora ($EA.b)		; 12 EA
	pea $C064.w		; F4 64 C0
	rti		; 40

	asl $FF4D.w,X		; 1E 4D FF
	beq   0.b		; F0 00
	cop $50.b		; 02 50
	bit $CC.b		; 24 CC
	cpy $ABCC.w		; CC CC AB
	inc $DE11.w,X		; FE 11 DE
	mvn $DB,$E2		; 54 E2 DB
	cmp $6B.b		; C5 6B
	bmi  30.b		; 30 1E
	ora ($EE.b,X)		; 01 EE
	mvp $F4,$53		; 44 53 F4
	cpx #$CE.b		; E0 CE
	bit $6FA4.w		; 2C A4 6F
	cmp ($84.b),Y		; D1 84
	brk $00.b		; 00 00
	ora $330010.l		; 0F 10 00 33
	cmp $843E.w,X		; DD 3E 84
	mvp $D1,$C1		; 44 C1 D1
	rts		; 60

	sbc ($ED.b),Y		; F1 ED
	beq -21.b		; F0 EB
	ldy #$DD.b		; A0 DD
	cpy $01EF.w		; CC EF 01
	and $1C.b,S		; 23 1C
	lda ($51.b,X)		; A1 51
	ldy $DF.b,X		; B4 DF
	and ($EE.b)		; 32 EE
	bit $1E.b		; 24 1E
	sbc $B431CF.l,X		; FF CF 31 B4
	sbc $003FE3.l,X		; FF E3 3F 00
	and ($EF.b)		; 32 EF
	phx		; DA
	sbc $B8.b,X		; F5 B8
	dec $6FD2.w,X		; DE D2 6F
	lda ($05.b,X)		; A1 05
	cpx $C50F.w		; EC 0F C5
	cpy $41.b		; C4 41
	bpl   3.b		; 10 03
	rol $11EF.w		; 2E EF 11
	sbc $35C4DC.l,X		; FF DC C4 35
	bpl -15.b		; 10 F1
	and $0E03DE.l,X		; 3F DE 03 0E
	tsb $A1C0.w		; 0C C0 A1
	and ($10.b)		; 32 10
	bit $0E.b		; 24 0E
	cpx #$32.b		; E0 32
	asl $C2C4.w		; 0E C4 C2
	eor ($FE.b),Y		; 51 FE
	ora ($1B.b,S),Y		; 13 1B
	sbc ($32.b,X)		; E1 32
	inc $DCC4.w,X		; FE C4 DC
	eor $0F.b		; 45 0F
	sbc ($4F.b,X)		; E1 4F
	dec $2F05.w		; CE 05 2F
	cpy $DB.b		; C4 DB
	sbc [$30.b]		; E7 30
	cmp $E3EC23.l,X		; DF 23 EC E3
	eor ($C4.b),Y		; 51 C4
	jmp.w [$71B2]		; DC B2 71
	sbc $1C04.w,X		; FD 04 1C
	cmp $FDC454.l,X		; DF 54 C4 FD
	lda $0E64.w,X		; BD 64 0E
	cmp ($4E.b)		; D2 4E
	cmp $C425.w,X		; DD 25 C4
	rol $27BB.w		; 2E BB 27
	rol $32D0.w		; 2E D0 32
	jmp.w [$C4F4]		; DC F4 C4
	bvc -69.b		; 50 BB
	sbc [$40.b]		; E7 40
	dec $FC24.w		; CE 24 FC
	cmp ($C4.b)		; D2 C4
	eor ($CB.b,S),Y		; 53 CB
	cpy $61.b		; C4 61
	cpx $1D05.w		; EC 05 1D
	cpy #$C8.b		; C0 C8
	rti		; 40

	ldy $6C06.w,X		; BC 06 6C
	ldx $FB26.w,Y		; BE 26 FB
	sep #$C0		; E2 C0
	pea $AA50.w		; F4 50 AA
	ora $4F.b,X		; 15 4F
	cmp $C4FC43.l,X		; DF 43 FC C4
	and $2C.b		; 25 2C
	ldx $0C65.w		; AE 65 0C
	cmp ($50.b),Y		; D1 50
	jmp.w [$15C4]		; DC C4 15
	bit $65AE.w,X		; 3C AE 65
	tas		; 1B
	rep #$41		; C2 41
	jmp.w [$E3C0]		; DC C0 E3
	rti		; 40

	tyx		; BB
	ora $4F.b,X		; 15 4F
	cmp $C0FD32.l,X		; DF 32 FD C0
	ora $2E.b,S		; 03 2E
	cmp $F11E34.l		; CF 34 1E F1
	jsr $B0EF.w		; 20 EF B0
	and ($CB.b,X)		; 21 CB
	sbc $61.b,X		; F5 61
	dec $0D24.w,X		; DE 24 0D
	cpx #$B4.b		; E0 B4
	inc $4012.w,X		; FE 12 40
	dec $1E03.w,X		; DE 03 1E
	cpx #$FE.b		; E0 FE
	ldy $26.b		; A4 26
	.db $62, $BC, $03		; 62 BC 03
	and $09D2.w		; 2D D2 09
	cmp $B4.b		; C5 B4
	eor $EC.b		; 45 EC
	sbc ($2E.b)		; F2 2E
	bne  31.b		; D0 1F
	cpx #$35.b		; E0 35
	ldy $1B.b		; A4 1B
	cmp ($3F.b,X)		; C1 3F
	ldx $020E.w		; AE 0E 02
	ror $0D.b		; 66 0D
	tay		; A8
	jsl $E0040B.l		; 22 0B 04 E0
	eor ($3E.b,X)		; 41 3E
	lda ($1F.b,X)		; A1 1F
	ldy $EB.b		; A4 EB
	cpx $46E4.w		; EC E4 46
	and $AFEC21.l,X		; 3F 21 EC AF
	tay		; A8
	cmp ($42.b),Y		; D1 42
	eor $E0A3.w		; 4D A3 E0
	dec $413F.w,X		; DE 3F 41
	tay		; A8
	ora ($FF.b)		; 12 FF
	trb $40DD.w		; 1C DD 40
	sbc $14.b		; E5 14
	inc $1EA8.w		; EE A8 1E
	ora $F3D0.w,X		; 1D D0 F3
	and ($11.b),Y		; 31 11
	ora $AC.b,S		; 03 AC
	tay		; A8
	pei ($3D.b)		; D4 3D
	sbc ($32.b),Y		; F1 32
	ora ($0E.b,X)		; 01 0E
	xce		; FB
	bpl -104.b		; 10 98
	ora [$F0.b],Y		; 17 F0
	sbc ($70.b,X)		; E1 70
	sbc #$FFF2.w		; E9 F2 FF
	cop $88.b		; 02 88
	bmi  18.b		; 30 12
	ora $CA.b,S		; 03 CA
	bpl  30.b		; 10 1E
	sbc ($3D.b,S),Y		; F3 3D
	sty $E1.b,X		; 94 E1
	and $FC.b,X		; 35 FC
	ora $1D.b,S		; 03 1D
	bne  16.b		; D0 10
	beq -124.b		; F0 84
	ora $F0.b,S		; 03 F0
	eor $FE.b		; 45 FE
	inc $F2DD.w,X		; FE DD F2
	brk $88.b		; 00 88
	sbc $3F.b,S		; E3 3F
	trb $00EF.w		; 1C EF 00
	brk $43.b		; 00 43
	cpx #$88.b		; E0 88
	cmp ($20.b),Y		; D1 20
	cpx $330F.w		; EC 0F 33
	cmp ($32.b),Y		; D1 32
	phd		; 0B
	dey		; 88
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	stp		; DB
	eor ($2C.b,S),Y		; 53 2C
	sbc ($11.b),Y		; F1 11
	phd		; 0B
	sty $BE.b		; 84 BE
	ora ($00.b,S),Y		; 13 00
	ora ($1D.b,S),Y		; 13 1D
	inc $D020.w		; EE 20 D0
	sty $E0.b		; 84 E0
	.db $42, $22		; 42 22
	tas		; 1B
	ora $30F1C0.l		; 0F C0 F1 30
	stz $1F.b,X		; 74 1F
	and $FD.b,X		; 35 FD
	cmp $0FF0.w		; CD F0 0F
	mvp $74,$03		; 44 03 74
	dex		; CA
	ora $F3F3.w		; 0D F3 F3
	eor $CF.b,S		; 43 CF
	and $FA.b,S		; 23 FA
	sei		; 78
	cop $60.b		; 02 60
	pld		; 2B
	rol $BD03.w		; 2E 03 BD
	and ($1C.b)		; 32 1C
	stz $FF.b,X		; 74 FF
	adc [$0B.b]		; 67 0B
	ora $03FE1B.l,X		; 1F 1B FE 03
	sbc $64.b,X		; F5 64
	ora ($1C.b,X)		; 01 1C
	cmp ($BA.b),Y		; D1 BA
	jsr $105F.w		; 20 5F 10
	lsr $74.b,X		; 56 74
	xba		; EB
	tsb $3E2F.w		; 0C 2F 3E
	jsr $ED03.w		; 20 03 ED
	cop $70.b		; 02 70
	sbc $1FEFBB.l,X		; FF BB EF 1F
	sbc $14BA0C.l,X		; FF 0C BA 14
	bvs  44.b		; 70 2C
	cmp $00E0.w		; CD E0 00
	cpx $DCC0.w		; EC C0 DC
	ora $21D074.l		; 0F 74 D0 21
	rol $52CF.w,X		; 3E CF 52
	dec $50D1.w		; CE D1 50
	bvs  13.b		; 70 0D
	sbc ($FD.b),Y		; F1 FD
	cmp $DB30.w,X		; DD 30 DB
	cpy $64D0.w		; CC D0 64
	tsa		; 3B
	cmp $E0.b,S		; C3 E0
	inc $CB52.w,X		; FE 52 CB
	sbc ($75.b),Y		; F1 75
	sei		; 78
	inc $3DE3.w		; EE E3 3D
	cpx #$DD41.w		; E0 41 DD
	and $2C.b,S		; 23 2C
	stz $FD.b,X		; 74 FD
	sbc $2FF2.w,X		; FD F2 2F
	sbc ($6F.b),Y		; F1 6F
	sbc $74F2.w		; ED F2 74
	dec A		; 3A
	sbc $030042.l		; EF 42 00 03
	cmp ($BF.b),Y		; D1 BF
	brk $74.b		; 00 74
	lsr $23EF.w,X		; 5E EF 23
	tsa		; 3B
	ora $13B13C.l		; 0F 3C B1 13
	stz $22.b,X		; 74 22
	sbc $0B41DF.l,X		; FF DF 41 0B
	inc $F350.w		; EE 50 F3
	bra  33.b		; 80 21
	asl $E0CD.w,X		; 1E CD E0
	inc $10F1.w,X		; FE F1 10
	ora ($74.b),Y		; 11 74
	bit $03BF.w		; 2C BF 03
	tas		; 1B
	rts		; 60

	sbc $2C.b,S		; E3 2C
	ora $F384.w		; 0D 84 F3
	sbc $E13F20.l		; EF 20 3F E1
	jmp ($0EC0.w)		; 6C C0 0E
	bra -35.b		; 80 DD
	bit $CD.b		; 24 CD
	sbc $DE.b,X		; F5 DE
	dec $9C34.w,X		; DE 34 9C
	dey		; 88
	eor $A6C0.w		; 4D C0 A6
	rol $33FF.w		; 2E FF 33
	jsr ($84F2.w,X)		; FC F2 84
	and ($EF.b)		; 32 EF
	sbc $ED.b,S		; E3 ED
	jsr $E301.w		; 20 01 E3
	sbc $001F84.l,X		; FF 84 1F 00
	sbc $0031.w,X		; FD 31 00
	ora $84EB02.l,X		; 1F 02 EB 84
	ora $0F.b		; 05 0F
	ora ($D2.b),Y		; 11 D2
	ora $FF0F1E.l		; 0F 1E 0F FF
	sty $F3.b		; 84 F3
	asl $2FF2.w,X		; 1E F2 2F
	cmp ($FC.b)		; D2 FC
	and $0F84E0.l,X		; 3F E0 84 0F
	cpy $0E.b		; C4 0E
	and ($02.b,X)		; 21 02
	and $4E.b,S		; 23 4E
	tax		; AA
	sty $15.b		; 84 15
	eor $3F46AB.l,X		; 5F AB 46 3F
	inc BG3VOFS.w		; EE 12 21
	stz $CE.b,X		; 74 CE
	ora ($2E.b)		; 12 2E
	sbc $001003.l		; EF 03 10 00
	ora ($64.b,X)		; 01 64
	plx		; FA
	ora $E23E1E.l		; 0F 1E 3E E2
	and $12E0.w,X		; 3D E0 12
	bvc  19.b		; 50 13
	and ($32.b,S),Y		; 33 32
	dec A		; 3A
	cpx $C3C4.w		; EC C4 C3
	rol $64.b,X		; 36 64
	and ($C0.b,X)		; 21 C0
	brk $CD.b		; 00 CD
	ora ($31.b)		; 12 31
	phd		; 0B
	and ($64.b)		; 32 64
	sbc $D04FA1.l		; EF A1 4F D0
	tsb $4E.b		; 04 4E
	inc $6400.w		; EE 00 64
	sbc $23F0.w,X		; FD F0 23
	ora $EEDE5D.l		; 0F 5D DE EE
	ora ($54.b)		; 12 54
	sbc ($10.b,X)		; E1 10
	jsl $FE0FEE.l		; 22 EE 0F FE
	jmp $6425.w		; 4C 25 64
	cop $EF.b		; 02 EF
	sbc ($0E.b),Y		; F1 0E
	tsb $B335.w		; 0C 35 B3
	brk $60.b		; 00 60
	cpx #$EFED.w		; E0 ED EF
	ora $31EE.w		; 0D EE 31
	asl $540F.w,X		; 1E 0F 54
	sbc $7B21FE.l		; EF FE 21 7B
	asl $C16F.w,X		; 1E 6F C1
	asl $FC50.w		; 0E 50 FC
	bcs  32.b		; B0 20
	cop $FE.b		; 02 FE
	cop $1C.b		; 02 1C
	cpx #$4550.w		; E0 50 45
	jsr $3F01.w		; 20 01 3F
	inc $1F.b		; E6 1F
	jmp.w [$5051]		; DC 51 50
	asl A		; 0A
	sbc $0FFE.w,X		; FD FE 0F
	inc $ECEE.w		; EE EE EC
	dec $1F44.w		; CE 44 1F
	phx		; DA
	and $2C.b,S		; 23 2C
	cmp ($EE.b),Y		; D1 EE
	and $1D.b,S		; 23 1D
	bit $CD.b,X		; 34 CD
	cmp ($21.b,X)		; C1 21
	eor ($CF.b)		; 52 CF
	bpl -68.b		; 10 BC
	asl $DD50.w		; 0E 50 DD
	cpy $EEEE.w		; CC EE EE
	beq  -2.b		; F0 FE
	cmp $5069.w		; CD 69 50
	ora $EF1F52.l		; 0F 52 1F EF
	ora $10.b,S		; 03 10
	ora ($45.b,S),Y		; 13 45
	bit $AA.b,X		; 34 AA
	ora $01.b,S		; 03 01
	and ($42.b),Y		; 31 42
	bmi  48.b		; 30 30
	sbc $44.b,S		; E3 44
	ora $1E22C1.l		; 0F C1 22 1E
	sbc ($2E.b),Y		; F1 2E
	lda $3A5000.l,X		; BF 00 50 3A
	sbc $0FEF.w,X		; FD EF 0F
	cpx $ABCB.w		; EC CB AB
	dec $0050.w,X		; DE 50 00
	sbc $0EDF.w,X		; FD DF 0E
	cmp $E740.w		; CD 40 E7
	.db $42, $84		; 42 84
	and $0A2212.l		; 2F 12 22 0A
	beq   2.b		; F0 02
	lda ($42.b),Y		; B1 42
	sty $FE.b,X		; 94 FE
	bit $EC.b,X		; 34 EC
	sbc $1E.b,S		; E3 1E
	ora $30E0.w		; 0D E0 30
	sty $FF.b,X		; 94 FF
	ora ($33.b)		; 12 33
	tsx		; BA
	trb $1B.b		; 14 1B
	sbc ($11.b,X)		; E1 11
	sty $34.b,X		; 94 34
	and $D1DDFE.l,X		; 3F FE DD D1
	asl A		; 0A
	cpx $32.b		; E4 32
	ldy $33.b		; A4 33
	jsr $CB10.w		; 20 10 CB
.INDEX 16
	rep #$1B		; C2 1B
	pei ($32.b)		; D4 32
	tay		; A8
	cop $3C.b		; 02 3C
	sbc $6FB4EF.l		; EF EF B4 6F
	cmp ($43.b,S),Y		; D3 43
	tay		; A8
	cpx $BB32.w		; EC 32 BB
	cmp ($12.b,X)		; C1 12
	ora ($05.b,S),Y		; 13 05
	jsr $EEA8.w		; 20 A8 EE
	bit $D3AD.w,X		; 3C AD D3
	bvc   3.b		; 50 03
	eor $2B.b		; 45 2B
	clv		; B8
	inc $E2FE.w		; EE FE E2
	bmi -14.b		; 30 F2
	mvn $D2,$CA		; 54 CA D2
	clv		; B8
	trb $12F4.w		; 1C F4 12
	ora ($42.b,X)		; 01 42
	sta $FDE2.w,X		; 9D E2 FD
	clv		; B8
	trb $21.b		; 14 21
	bpl  32.b		; 10 20
	cmp $FDE2.w		; CD E2 FD
	ora [$B8.b]		; 07 B8
	and $BB1210.l		; 2F 10 12 BB
	sbc ($0C.b,S),Y		; F3 0C
	ora [$2F.b],Y		; 17 2F
	ldy $53.b,X		; B4 53
	adc $DA.b		; 65 DA
	lda $04BA.w		; AD BA 04
	lsr $43.b,X		; 56 43
	clv		; B8
	dec A		; 3A
	cmp $43D421.l		; CF 21 D4 43
	beq -46.b		; F0 D2
	xba		; EB
	clv		; B8
	sbc ($2B.b),Y		; F1 2B
	eor [$F1.b]		; 47 F1
	sbc $04BE00.l,X		; FF 00 BE 04
	ldy $CA.b,X		; B4 CA
	rol $54.b,X		; 36 54
	ora ($4F.b),Y		; 11 4F
	tsx		; BA
	sbc $66B4AF.l		; EF AF B4 66
	eor ($03.b,X)		; 41 03
	trb $1DBC.w		; 1C BC 1D
	lda $75.b,S		; A3 75
	cpy $1F.b		; C4 1F
	ora $FD.b,S		; 03 FD
	cpx #$D21E.w		; E0 1E D2
	.db $42, $FF		; 42 FF
	ldy $25.b,X		; B4 25
	nop		; EA
	cmp ($2C.b)		; D2 2C
	bcs  71.b		; B0 47
	cpx #$C013.w		; E0 13 C0
	and ($F0.b),Y		; 31 F0
	ora $11DCFF.l		; 0F FF DC 11
	and ($13.b,X)		; 21 13
	cpy #$FF20.w		; C0 20 FF
	brk $FD.b		; 00 FD
	cmp ($21.b,X)		; C1 21
	ora ($32.b),Y		; 11 32
	ldy $A0.b,X		; B4 A0
	jsr $1AFF.w		; 20 FF 1A
	lsr $E1.b		; 46 E1
	sbc ($1D.b),Y		; F1 1D
	cpy #$00F0.w		; C0 F0 00
	ora ($EC.b,X)		; 01 EC
	ora ($10.b),Y		; 11 10
	cop $1F.b		; 02 1F
	cpy $10.b		; C4 10
	brk $00.b		; 00 00
	cmp ($4F.b,X)		; C1 4F
	ora $C4E021.l		; 0F 21 E0 C4
	ora $D41E0F.l,X		; 1F 0F 1E D4
	and $D12000.l		; 2F 00 20 D1
	cpy #$F00F.w		; C0 0F F0
	ora $10C2.w		; 0D C2 10
	ora ($31.b,X)		; 01 31
	sbc ($C0.b),Y		; F1 C0
	brk $00.b		; 00 00
	tsb $00E2.w		; 0C E2 00
	cop $30.b		; 02 30
	cop $C4.b		; 02 C4
	cpx #$EC01.w		; E0 01 EC
	eor $D0.b,S		; 43 D0
	ora ($0D.b)		; 12 0D
	jsr $00C0.w		; 20 C0 00
	ora ($EB.b,X)		; 01 EB
	ora ($E0.b),Y		; 11 E0
	ora ($1F.b,S),Y		; 13 1F
	and ($C0.b,X)		; 21 C0
	beq   1.b		; F0 01
	jmp.w [$F010]		; DC 10 F0
	ora ($10.b,S),Y		; 13 10
	jsr $00B0.w		; 20 B0 00
	brk $AC.b		; 00 AC
	and $0013F0.l		; 2F F0 13 00
	ora $FE4494.l,X		; 1F 94 44 FE
	lda $4D.b		; A5 4D
	and $F000.w		; 2D 00 F0
	bcs -108.b		; B0 94
	.db $42, $21		; 42 21
	sbc ($0E.b),Y		; F1 0E
	pea $EDFE.w		; F4 FE ED
	ora ($98.b),Y		; 11 98
	sbc $2ED130.l,X		; FF 30 D1 2E
	pei ($1F.b)		; D4 1F
	dec $8443.w,X		; DE 43 84
	ora $060F.w		; 0D 0F 06
	eor $14D3.w,X		; 5D D3 14
	plb		; AB
	eor $F394.w		; 4D 94 F3
	cmp $3E13.w,X		; DD 13 3E
	cop $0E.b		; 02 0E
	pea $940E.w		; F4 0E 94
	sep #$0C		; E2 0C
	sbc $10.b,S		; E3 10
	ora ($0D.b),Y		; 11 0D
	ora $3D.b		; 05 3D
	bcc  47.b		; 90 2F
	sbc $12CCDD.l,X		; FF DD CC 12
	ora $905502.l		; 0F 02 55 90
	and ($CC.b),Y		; 31 CC
	ora $11E2BB.l		; 0F BB E2 11
	jsl $30A004.l		; 22 04 A0 30
	sbc $ED01.w,X		; FD 01 ED
	sbc $0C3411.l,X		; FF 11 34 0C
	ldy $31.b,X		; B4 31
	cmp $21FE02.l,X		; DF 02 FE 21
	ora ($22.b,X)		; 01 22
	phx		; DA
	bcs -45.b		; B0 D3
	stp		; DB
	cpx #$250E.w		; E0 0E 25
	ora ($65.b)		; 12 65
	trb $E5B4.w		; 1C B4 E5
	ldx $1060.w,Y		; BE 60 10
	.db $42, $C2		; 42 C2
	bit $B4DC.w		; 2C DC B4
	ora ($D4.b),Y		; 11 D4
	jsr $1D32.w		; 20 32 1D
	cop $CD.b		; 02 CD
	lda ($C4.b,S),Y		; B3 C4
	ora $F241.w,X		; 1D 41 F2
	bpl -32.b		; 10 E0
	and $03FE.w		; 2D FE 03
	cpy $C3.b		; C4 C3
	rol $0F21.w,X		; 3E 21 0F
	sbc ($DF.b)		; F2 DF
	sbc $23C43D.l,X		; FF 3D C4 23
	sbc ($10.b),Y		; F1 10
	sbc $E4FF2D.l,X		; FF 2D FF E4
	cmp ($C4.b),Y		; D1 C4
	eor $F20F11.l		; 4F 11 0F F2
	cmp $044EFE.l,X		; DF FE 4E 04
	cpy $F1.b		; C4 F1
	bpl  -1.b		; 10 FF
	asl $E4FF.w,X		; 1E FF E4
	sbc ($3F.b,X)		; E1 3F
	ldy $21.b,X		; B4 21
	asl $BEE3.w,X		; 1E E3 BE
	sbc $447B.w		; ED 7B 44
	sbc $B4.b,S		; E3 B4
	bpl -32.b		; 10 E0
	tas		; 1B
	sbc $A6F6.w,X		; FD F6 A6
	rol $C031.w,X		; 3E 31 C0
	and ($11.b,X)		; 21 11
	inc $FDCE.w,X		; FE CE FD
	ora ($12.b),Y		; 11 12
	jsl $FCE1B4.l		; 22 B4 E1 FC
	cpx $F75F.w		; EC 5F F7
.ACCU 8
	sep #$21		; E2 21
	sbc $ED1DB4.l		; EF B4 1D ED
	inc $B3.b		; E6 B3
	lsr $0F31.w,X		; 5E 31 0F
	brk $B0.b		; 00 B0
	sbc $E99B.w		; ED 9B E9
	ora ($15.b),Y		; 11 15
	mvn $2E,$23		; 54 23 2E
	ldy $EC.b,X		; B4 EC
	eor $F206.w,X		; 5D 06 F2
	bmi -16.b		; 30 F0
	ora $B4EC.w		; 0D EC B4
	ora ($C6.b),Y		; 11 C6
	ora ($41.b,X)		; 01 41
	ora $D4ED1D.l		; 0F 1D ED D4
	ldy $B4.b,X		; B4 B4
	and $0F0033.l,X		; 3F 33 00 0F
	cmp $D0C3.w,X		; DD C3 D0
	ldy $5F.b,X		; B4 5F
	and ($20.b)		; 32 20
	brk $CE.b		; 00 CE
	cmp ($0D.b,X)		; C1 0D
	bvc -76.b		; 50 B4
	and $20.b,S		; 23 20
	ora ($DD.b,X)		; 01 DD
	cmp $13511C.l		; CF 1C 51 13
	ldy $21.b,X		; B4 21
	ora ($ED.b,X)		; 01 ED
	dec $332B.w		; CE 2B 33
	ora $31.b,S		; 03 31
	ldy $01.b,X		; B4 01
	jsr ($3CDC.w,X)		; FC DC 3C
	ora ($03.b,S),Y		; 13 03
	and ($01.b)		; 32 01
	ldy $FD.b,X		; B4 FD
	stp		; DB
	rol $02E5.w		; 2E E5 02
	and ($01.b,S),Y		; 33 01
	ora $DBB4.w		; 0D B4 DB
	ora $4202C5.l,X		; 1F C5 02 42
	ora ($0E.b),Y		; 11 0E
	stp		; DB
	ldy $F1.b,X		; B4 F1
	ldy $12.b,X		; B4 12
	and ($20.b,S),Y		; 33 20
	asl $D2DB.w,X		; 1E DB D2
	ldy $B3.b,X		; B4 B3
	and ($33.b,X)		; 21 33
	bmi  31.b		; 30 1F
	cmp $C1B2.w		; CD B2 C1
	ldy $30.b,X		; B4 30
	.db $42, $31		; 42 31
	ora $DFA2DD.l,X		; 1F DD A2 DF
	rti		; 40

	ldy $33.b,X		; B4 33
	and ($10.b),Y		; 31 10
	dec $FDA0.w		; CE A0 FD
	rti		; 40

	and ($B4.b,S),Y		; 33 B4
	and ($01.b)		; 32 01
	dec $1BBE.w,X		; DE BE 1B
	and ($13.b)		; 32 13
	and ($B4.b)		; 32 B4
	ora ($ED.b),Y		; 11 ED
	cpy $232B.w		; CC 2B 23
	tsb $32.b		; 04 32
	ora ($B4.b),Y		; 11 B4
	sbc $2DDA.w,X		; FD DA 2D
	pea $3303.w		; F4 03 33
	bpl  13.b		; 10 0D
	ldy $DB.b,X		; B4 DB
	ora $3303D5.l		; 0F D5 03 33
	bpl  28.b		; 10 1C
	xba		; EB
	ldy $F0.b,X		; B4 F0
	cmp $02.b		; C5 02
	.db $42, $20		; 42 20
	ora $D2DC.w,X		; 1D DC D2
	ldy $B4.b,X		; B4 B4
	ora ($33.b)		; 12 33
	and $C2CD2E.l		; 2F 2E CD C2
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	bmi  66.b		; 30 42
	bmi  15.b		; 30 0F
	cmp $C1B2.w,X		; DD B2 C1
	rti		; 40

	ldy $42.b,X		; B4 42
	jsr $DD1F.w		; 20 1F DD
	lda ($DF.b)		; B2 DF
	bvc  51.b		; 50 33
	ldy $20.b,X		; B4 20
	ora ($CE.b,X)		; 01 CE
	bcs  13.b		; B0 0D
	bvc  51.b		; 50 33
	and ($B4.b,X)		; 21 B4
	sbc ($DD.b),Y		; F1 DD
	lda $23512B.l,X		; BF 2B 51 23
	and ($F1.b),Y		; 31 F1
	ldy $DD.b,X		; B4 DD
	dec $432B.w		; CE 2B 43
	ora ($22.b,S),Y		; 13 22
	sbc ($EC.b),Y		; F1 EC
	ldy $DC.b,X		; B4 DC
	bit $0433.w,X		; 3C 33 04
	jsl $EBFCF0.l		; 22 F0 FC EB
	ldy $3D.b,X		; B4 3D
	ora $04.b		; 05 04
	jsl $DB0CF0.l		; 22 F0 0C DB
	and $03E6B4.l		; 2F B4 E6 03
	and ($FF.b)		; 32 FF
	trb $01DC.w		; 1C DC 01
	dec $B4.b,X		; D6 B4
	ora ($32.b)		; 12 32
	asl $DC1D.w		; 0E 1D DC
	sbc $C5.b,S		; E3 C5
	and ($B4.b,X)		; 21 B4
	and ($1E.b)		; 32 1E
	ora $E3DC.w,X		; 1D DC E3
	cpy $31.b		; C4 31
	and ($B4.b)		; 32 B4
	asl $CD0F.w,X		; 1E 0F CD
	cpy $D1.b		; C4 D1
	bvc  51.b		; 50 33
	asl $0FB4.w,X		; 1E B4 0F
	dec $E0B3.w		; CE B3 E0
	rts		; 60

	and ($2F.b)		; 32 2F
	beq -76.b		; F0 B4
	cmp $0EB2.w		; CD B2 0E
	bvs  35.b		; 70 23
	and $B4CDE1.l		; 2F E1 CD B4
	cmp ($1D.b,X)		; C1 1D
	adc ($22.b,X)		; 61 22
	jsr $DDE1.w		; 20 E1 DD
	cmp $623BB4.l		; CF B4 3B 62
	ora ($20.b,S),Y		; 13 20
	sbc ($DD.b,X)		; E1 DD
	dec $B44B.w		; CE 4B B4
	eor ($13.b,S),Y		; 53 13
	jsr $ECE1.w		; 20 E1 EC
	cmp $344C.w,X		; DD 4C 34
	ldy $13.b,X		; B4 13
	and ($EF.b,X)		; 21 EF
	phd		; 0B
	cmp $254C.w,X		; DD 4C 25
	ora $B4.b,S		; 03 B4
	jsl $DC0CEF.l		; 22 EF 0C DC
	rol $0306.w,X		; 3E 06 03
	jsl $0CEFB4.l		; 22 B4 EF 0C
	jmp.w [$063E]		; DC 3E 06
	cop $32.b		; 02 32
	inc $0DB4.w,X		; FE B4 0D
	cpy $E63F.w		; CC 3F E6
	ora ($23.b)		; 12 23
	inc $B41D.w,X		; FE 1D B4
	ldy $D73F.w,X		; BC 3F D7
	ora ($23.b)		; 12 23
	inc $CC1D.w,X		; FE 1D CC
	ldy $2F.b,X		; B4 2F
	cmp [$11.b],Y		; D7 11
	and ($FF.b,S),Y		; 33 FF
	ora $2FCC.w		; 0D CC 2F
	ldy $D6.b,X		; B4 D6
	and ($33.b,X)		; 21 33
	sbc $2FBC0E.l,X		; FF 0E BC 2F
	dec $B4.b,X		; D6 B4
	ora ($33.b)		; 12 33
	asl $BC0E.w		; 0E 0E BC
	and $B412D6.l		; 2F D6 12 B4
	bit $0E.b		; 24 0E
	ora $1FCC.w,X		; 1D CC 1F
	cmp $21.b,X		; D5 21
	and ($B4.b,S),Y		; 33 B4
	asl $BC1E.w,X		; 1E 1E BC
	ora $3321D5.l,X		; 1F D5 21 33
	asl $1EB4.w,X		; 1E B4 1E
	ldy $D52E.w,X		; BC 2E D5
	and ($24.b,X)		; 21 24
	ora $BCB41E.l		; 0F 1E B4 BC
	rol $21D5.w		; 2E D5 21
	bit $0F.b		; 24 0F
	asl $B4BD.w,X		; 1E BD B4
	ora $2420C5.l,X		; 1F C5 20 24
	asl $BC2F.w,X		; 1E 2F BC
	bpl -76.b		; 10 B4
	lda $20.b,X		; B5 20
	bit $1E.b		; 24 1E
	bpl -52.b		; 10 CC
	ora ($B3.b,X)		; 01 B3
	ldy $30.b,X		; B4 30
	trb $2E.b		; 14 2E
	cop $CB.b		; 02 CB
	sbc ($C0.b,S),Y		; F3 C0
	rti		; 40

	ldy $12.b,X		; B4 12
	and $E3EBF2.l,X		; 3F F2 EB E3
	sbc $0151.w		; ED 51 01
	bcs  69.b		; B0 45
	ora ($4F.b,S),Y		; 13 4F
	ldy $D20B.w,X		; BC 0B D2
	bpl  37.b		; 10 25
	ldy $DE.b,X		; B4 DE
	and $C540BE.l,X		; 3F BE 40 C5
	and $B01CF3.l		; 2F F3 1C B0
	ora $FB.b,S		; 03 FB
.INDEX 16
	rep #$DD		; C2 DD
	jsl $F14201.l		; 22 01 42 F1
	ldy $1C.b,X		; B4 1C
	cpy $3B.b		; C4 3B
	bit $0E.b		; 24 0E
	ora ($ED.b)		; 12 ED
	and ($B4.b),Y		; 31 B4
	lda $B352.w,X		; BD 52 B3
	bmi -47.b		; 30 D1
	rol $0CD3.w,X		; 3E D3 0C
	ldy $D5.b,X		; B4 D5
	bit $2D22.w		; 2C 22 2D
	sbc ($0E.b)		; F2 0E
	ora ($EE.b,X)		; 01 EE
	ldy #$00E1.w		; A0 E1 00
	ora $40.b		; 05 40
	cop $20.b		; 02 20
	sbc $84CF.w		; ED CF 84
	eor $6D41.w		; 4D 41 6D
	cmp $2F21.w		; CD 21 2F
	ora $009403.l		; 0F 03 94 00
	sbc $FF10.w		; ED 10 FF
	and ($14.b,X)		; 21 14
	bit $94E3.w		; 2C E3 94
	rol $FECF.w		; 2E CF FE
	ora $00.b,S		; 03 00
	eor ($EC.b,S),Y		; 53 EC
	jsl $FCEF94.l		; 22 94 EF FC
	cmp ($2F.b,S),Y		; D3 2F
	ora $10.b		; 05 10
	ora $1D9800.l		; 0F 00 98 1D
	sbc ($41.b,X)		; E1 41
	cmp ($2E.b),Y		; D1 2E
	ora $CE.b,S		; 03 CE
	and ($94.b)		; 32 94
	sbc $01EE.w,X		; FD EE 01
	cop $01.b		; 02 01
	and ($EC.b,S),Y		; 33 EC
	and ($88.b,X)		; 21 88
	cmp $C046FE.l		; CF FE 46 C0
	tsb $0E.b		; 04 0E
	sta ($5E.b)		; 92 5E
	sty $FF.b,X		; 94 FF
	cmp $F013.w		; CD 13 F0
	and ($22.b),Y		; 31 22
	sbc $9411.w,X		; FD 11 94
	inc $01DE.w,X		; FE DE 01
	ora ($11.b),Y		; 11 11
	bit $DD.b		; 24 DD
	and ($84.b,X)		; 21 84
	jmp.w [$D4DA]		; DC DA D4
	rti		; 40

	ora $74.b,S		; 03 74
	cmp $9431.w		; CD 31 94
	sbc $0002DC.l,X		; FF DC 02 00
	and ($33.b,X)		; 21 33
	sbc $9422.w		; ED 22 94
	sbc $F2ED.w		; ED ED F2
	ora ($02.b),Y		; 11 02
	.db $42, $C0		; 42 C0
	lsr $0298.w		; 4E 98 02
	dec $B045.w,X		; DE 45 B0
	bmi -31.b		; 30 E1
	inc $9421.w,X		; FE 21 94
	inc $22BD.w,X		; FE BD 22
	sbc ($10.b)		; F2 10
	bit $ED.b,X		; 34 ED
	and ($94.b),Y		; 31 94
	cpx $12DD.w		; EC DD 12
	ora ($01.b),Y		; 11 01
	.db $42, $EE		; 42 EE
	and ($94.b,X)		; 21 94
	sbc $02EC.w		; ED EC 02
	jsr $2312.w		; 20 12 23
	sbc $EE9410.l		; EF 10 94 EE
	jmp.w [$0113]		; DC 13 01
	ora ($33.b),Y		; 11 33
	inc $9420.w		; EE 20 94
	sbc $0013DB.l		; EF DB 13 00
	and ($23.b,X)		; 21 23
	inc $9420.w,X		; FE 20 94
	inc $12DB.w,X		; FE DB 12
	cop $10.b		; 02 10
	bit $FE.b		; 24 FE
	ora ($98.b)		; 12 98
	cmp ($EF.b,X)		; C1 EF
	and ($E1.b,S),Y		; 33 E1
	asl $EC22.w		; 0E 22 EC
	and ($98.b)		; 32 98
	cpy #$341C.w		; C0 1C 34
	sbc $EC131E.l,X		; FF 1E 13 EC
	and ($98.b)		; 32 98
	cpy #$141D.w		; C0 1D 14
	ora $0B121E.l		; 0F 1E 12 0B
	and $94.b,S		; 23 94
	ora $D2FC.w		; 0D FC D2
	ora ($20.b,X)		; 01 20
	ora $3E.b,S		; 03 3E
	sbc ($94.b)		; F2 94
	asl $B0EE.w,X		; 1E EE B0
	jsl $2F0211.l		; 22 11 02 2F
	cmp ($94.b)		; D2 94
	bpl  -3.b		; 10 FD
	lda $F03232.l,X		; BF 32 32 F0
	jmp $A0A1.w		; 4C A1 A0
	ora ($10.b,X)		; 01 10
	jmp.w [$23D1]		; DC D1 23
	jsl $A8CC31.l		; 22 31 CC A8
	jsr $F11B.w		; 20 1B F1
	.db $42, $D0		; 42 D0
	sbc ($2D.b,X)		; E1 2D
	lda ($B8.b,S),Y		; B3 B8
	and ($0C.b),Y		; 31 0C
	sbc ($21.b)		; F2 21
	sbc $C41CF3.l		; EF F3 1C C4
	lda $EB42.w,Y		; B9 42 EB
	ora $3F.b,S		; 03 3F
	bcs  50.b		; B0 32
	ora $00D5.w,Y		; 19 D5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	ldy $0E.b,X		; B4 0E
	ora $CE.b,X		; 15 CE
	and ($FF.b),Y		; 31 FF
	and ($D1.b,X)		; 21 D1
	bra  36.b		; 80 24
	jsl $211043.l		; 22 43 10 21
	lda $84BDDD.l,X		; BF DD BD 84
	asl $0241.w,X		; 1E 41 02
	ora ($02.b),Y		; 11 02
	ora $740F00.l		; 0F 00 0F 74
	ora $01EFE4.l		; 0F E4 EF 01
	sbc $3E1A.w,X		; FD 1A 3E
	cmp ($74.b,S),Y		; D3 74
	sta [$C2.b],Y		; 97 C2
	bmi  96.b		; 30 60
	and ($04.b)		; 32 04
	cpx #$842E.w		; E0 2E 84
	cop $1C.b		; 02 1C
	jsr $EFEE.w		; 20 EE EF
	sbc $020D.w,X		; FD 0D 02
	stz $F1.b,X		; 74 F1
	lsr $24.b		; 46 24
	rts		; 60

	eor ($1F.b,X)		; 41 1F
	cmp ($E2.b,S),Y		; D3 E2
	sty $F0.b,X		; 94 F0
	ora $E31E0E.l		; 0F 0E 1E E3
	cmp ($00.b,X)		; C1 00
	ora $031090.l,X		; 1F 90 10 03
	bit $24.b,X		; 34 24
	and ($33.b)		; 32 33
	bmi  50.b		; 30 32
	sty $D1.b,X		; 94 D1
	cpx #$1DEE.w		; E0 EE 1D
	ora ($F2.b),Y		; 11 F2
	ora $01.b,S		; 03 01
	sty $6F.b		; 84 6F
	jsr $E41E.w		; 20 1E E4
	xce		; FB
	brk $0D.b		; 00 0D
	cmp ($94.b),Y		; D1 94
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	rol $232F.w		; 2E 2F 23
	cpx $01.b		; E4 01
	ora $221E94.l,X		; 1F 94 1E 22
	cpy #$0E1D.w		; C0 1D 0E
	brk $A3.b		; 00 A3
	bne -108.b		; D0 94
	bpl  63.b		; 10 3F
	.db $42, $03		; 42 03
	ora ($F0.b)		; 12 F0
	rol $94FD.w		; 2E FD 94
	ora $F11CAE.l		; 0F AE 1C F1
	brk $15.b		; 00 15
	and $11A471.l		; 2F 71 A4 11
	bpl -14.b		; 10 F2
	tsb $EA00.w		; 0C 00 EA
	eor $00A4A3.l		; 4F A3 A4 00
	sbc ($4C.b,S),Y		; F3 4C
	eor ($F1.b,S),Y		; 53 F1
	ora ($C1.b,S),Y		; 13 C1
	tsa		; 3B
	ldy $E1.b		; A4 E1
	inc A		; 1A
	dec $DA.b		; C6 DA
	rts		; 60

	sbc $A4B662.l,X		; FF 62 B6 A4
	and $1C12.w,X		; 3D 12 1C
	rti		; 40

	bcs  29.b		; B0 1D
	stx $EA.b,Y		; 96 EA
	ldy $23.b		; A4 23
	ora $C364.w		; 0D 64 C3
	eor $212CE3.l,X		; 5F E3 2C 21
	ldy $EF.b,X		; B4 EF
	ora $01FED2.l		; 0F D2 FE 01
	rol $E223.w		; 2E 23 E2
	ldy $31.b		; A4 31
	cmp ($3D.b)		; D2 3D
	brk $DE.b		; 00 DE
	sbc $B2E2.w		; ED E2 B2
	tay		; A8
	cmp $D0.b		; C5 D0
	jmp $E220.w		; 4C 20 E2
	cmp $D1.b		; C5 D1
	sbc $CBFFA4.l		; EF A4 FF CB
	lsr $03B5.w		; 4E B5 03
	sbc $5C.b,X		; F5 5C
	eor ($A4.b,S),Y		; 53 A4
	sbc $FCDF03.l,X		; FF 03 DF FC
	jsr ($AEB6.w,X)		; FC B6 AE
	lsr $3FB4.w,X		; 5E B4 3F
	and ($E4.b)		; 32 E4
	brk $0F.b		; 00 0F
	rol $E0FF.w		; 2E FF E0
	ldy $DE.b,X		; B4 DE
	jmp $E404.w		; 4C 04 E4
	sbc $1D.b		; E5 1D
	lsr $B4F1.w,X		; 5E F1 B4
	sbc ($CF.b)		; F2 CF
	ora $32FD.w,X		; 1D FD 32
	sta $20.b,X		; 95 20
	bpl -76.b		; 10 B4
	jmp ($DFF5.w,X)		; 7C F5 DF
	ora ($0B.b,X)		; 01 0B
	ora ($CD.b),Y		; 11 CD
	ora $B4.b,X		; 15 B4
	ldx $1F61.w,Y		; BE 61 1F
	eor $B2.b,S		; 43 B2
	and $B42DE0.l		; 2F E0 2D B4
	cmp ($FC.b),Y		; D1 FC
	sbc $0C.b		; E5 0C
	and ($4E.b)		; 32 4E
	asl $EE.b		; 06 EE
	ldy $31.b		; A4 31
	and #$9E02.w		; 29 02 9E
	nop		; EA
	inc $DE.b,X		; F6 DE
	eor ($B4.b),Y		; 51 B4
	rti		; 40

	tsb $F0.b		; 04 F0
	ora $D1E02E.l		; 0F 2E E0 D1
	cmp $03B4.w,X		; DD B4 03
	ora SETINI.w		; 0D 33 21
	pea $1F0E.w		; F4 0E 1F
	ora $CDA1A4.l,X		; 1F A4 A1 CD
	asl A		; 0A
	cmp $4A.b,X		; D5 4A
	rol $45.b,X		; 36 45
	dec $B4.b		; C6 B4
	and $101F.w		; 2D 1F 10
	cpy #$0B0D.w		; C0 0D 0B
	asl $DD.b		; 06 DD
	cpy $21.b		; C4 21
	and $00E004.l		; 2F 04 E0 00
	asl $EFF1.w,X		; 1E F1 EF
	ldy $EC.b,X		; B4 EC
	adc ($A4.b,X)		; 61 A4
	bit $2D.b		; 24 2D
	eor ($C1.b)		; 52 C1
	cop $C4.b		; 02 C4
	inc $EF1F.w		; EE 1F EF
	cop $FF.b		; 02 FF
	and ($20.b,X)		; 21 20
	pea $EEB4.w		; F4 B4 EE
	brk $1B.b		; 00 1B
	cmp $DD.b,S		; C3 DD
	sbc $B4C244.l		; EF 44 C2 B4
	eor $2E.b,S		; 43 2E
	tsb $DE.b		; 04 DE
	bpl  -4.b		; 10 FC
.ACCU 8
	sep #$ED		; E2 ED
	ldy $E1.b,X		; B4 E1
	adc $E043E3.l		; 6F E3 43 E0
	bmi -17.b		; 30 EF
	bpl -60.b		; 10 C4
	inc $D11E.w		; EE 1E D1
	bmi -15.b		; 30 F1
	bit $FF.b		; 24 FF
	ora ($C4.b),Y		; 11 C4
	sbc $0FEEF1.l,X		; FF F1 EE 0F
	inc $0E14.w,X		; FE 14 0E
	and $B4.b,S		; 23 B4
	lsr $0DC4.w,X		; 5E C4 0D
	sbc $B21D.w,X		; FD 1D B2
	asl $C4EF.w		; 0E EF C4
	eor $D0.b,S		; 43 D0
	and $1C.b,S		; 23 1C
	sbc ($FF.b)		; F2 FF
	brk $1E.b		; 00 1E
	cpy $F1.b		; C4 F1
	dec $0031.w,X		; DE 31 00
	pea $102E.w		; F4 2E 10
	bpl -56.b		; 10 C8
	sbc $FE.b,S		; E3 FE
	bpl -44.b		; 10 D4
	bit $F402.w,X		; 3C 02 F4
	cmp $30B4.w,X		; DD B4 30
	asl $EAB1.w		; 0E B1 EA
	sbc $45DF.w,X		; FD DF 45
	ora ($B4.b,X)		; 01 B4
	lsr $4D.b		; 46 4D
.ACCU 8
	sep #$EF		; E2 EF
	dec $E00C.w		; CE 0C E0
	sbc ($B8.b),Y		; F1 B8
.INDEX 8
	sep #$5A		; E2 5A
	ora $94.b		; 05 94
	jsr ($135C.w,X)		; FC 5C 13
	lda $C4.b,S		; A3 C4
	inc $F013.w,X		; FE 13 F0
	and ($4F.b,X)		; 21 4F
	sep #$0F		; E2 0F
	inc $1EB4.w,X		; FE B4 1E
	bcs  -2.b		; B0 FE
	mvn $23,$E3		; 54 E3 23
	phk		; 4B
	ora ($B4.b,X)		; 01 B4
	cpx #$DE.b		; E0 DE
	and $C6EE.w		; 2D EE C6
	jmp $B44413.l		; 5C 13 44 B4
	bcs  78.b		; B0 4E
	sbc $CCE2.w,X		; FD E2 CC
	inc $C364.w		; EE 64 C3
	ldy $34.b,X		; B4 34
	phk		; 4B
	ora $CF.b,S		; 03 CF
	cmp $E7D01C.l,X		; DF 1C D0 E7
	cpy $2E.b		; C4 2E
	ora ($22.b)		; 12 22
	cpy #$2E.b		; C0 2E
	sbc $C4EEF1.l,X		; FF F1 EE C4
	ora $12D351.l		; 0F 51 D3 12
	ora $EF11.w,X		; 1D 11 EF
	sbc $FF0EC4.l,X		; FF C4 0E FF
	trb $0F.b		; 14 0F
	and ($3F.b,X)		; 21 3F
	sbc ($1E.b,X)		; E1 1E
	ldy $FD.b,X		; B4 FD
	ora $5DF6AD.l		; 0F AD F6 5D
	trb $62.b		; 14 62
	cmp $EF2FC4.l		; CF C4 2F EF
	ora $3FF3ED.l		; 0F ED F3 3F
	ora ($42.b,X)		; 01 42
	cpy $EF.b		; C4 EF
	jsr $00DF.w		; 20 DF 00
	cmp $5EF2.w,X		; DD F2 5E
	sbc ($C4.b,S),Y		; F3 C4
	and ($EF.b)		; 32 EF
	and $ED10EE.l		; 2F EE 10 ED
	sbc ($4F.b)		; F2 4F
	ldy $E4.b,X		; B4 E4
	adc $BF.b,S		; 63 BF
	lsr $00BF.w		; 4E BF 00
	wai		; CB
	sbc $C4.b		; E5 C4
	eor $D031F2.l		; 4F F2 31 D0
	and $ED00EF.l		; 2F EF 00 ED
	cpy $02.b		; C4 02
	eor $EF3101.l		; 4F 01 31 EF
	ora $C400E0.l,X		; 1F E0 00 C4
	inc $4FF2.w		; EE F2 4F
	cop $21.b		; 02 21
	cmp $B4EF2F.l,X		; DF 2F EF B4
	jsr $E6CB.w		; 20 CB E6
	adc $5204.w,X		; 7D 04 52
	ldx $C45E.w		; AE 5E C4
	cmp $04DD11.l,X		; DF 11 DD 04
	rol $3002.w,X		; 3E 02 30
	bne -56.b		; D0 C8
	and $1FE3.w		; 2D E3 1F
	bne  52.b		; D0 34
	xba		; EB
	and ($1C.b)		; 32 1C
	iny		; C8
	cmp $0E.b,X		; D5 0E
	sbc ($1F.b)		; F2 1F
	bne  52.b		; D0 34
	jmp.w [$C841]		; DC 41 C8
	ora $2CE3.w		; 0D E3 2C
	ora $0E.b,S		; 03 0E
	sbc $B4FB33.l,X		; FF 33 FB B4
	ora $5F.b,X		; 15 5F
	lda ($3D.b,X)		; A1 3D
	cmp ($20.b,X)		; C1 20
	tyx		; BB
	inc $B4.b,X		; F6 B4
	jmp ($5004.w)		; 6C 04 50
	ldy #$3D.b		; A0 3D
	cmp ($21.b),Y		; D1 21
	dex		; CA
	cpy $F2.b		; C4 F2
	lsr OAMADDL.w		; 4E 02 21
	cmp $20E02F.l,X		; DF 2F E0 20
	cpy $FD.b		; C4 FD
	sep #$4F		; E2 4F
	sbc ($31.b),Y		; F1 31
	cmp $C4E010.l,X		; DF 10 E0 C4
	and ($ED.b,X)		; 21 ED
	sbc ($5F.b,X)		; E1 5F
	sbc ($22.b),Y		; F1 22
	dec $C820.w,X		; DE 20 C8
.ACCU 8
	sep #$2F		; E2 2F
	cmp $D45B12.l,X		; DF 12 5B D4
	bpl -79.b		; 10 B1
	iny		; C8
	bmi -47.b		; 30 D1
	and $3C04EE.l,X		; 3F EE 04 3C
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	iny		; C8
	cmp $30D140.l,X		; DF 40 D1 30
	cmp $D45B03.l		; CF 03 5B D4
	iny		; C8
	ora $D140DF.l,X		; 1F DF 40 D1
	and $4D03EE.l,X		; 3F EE 03 4D
	ldy $A2.b,X		; B4 A2
	eor ($CA.b,S),Y		; 53 CA
	jsl $DA44DF.l		; 22 DF 44 DA
	ldy #$C0.b		; A0 C0
	ora ($F0.b)		; 12 F0
	bit $2E.b,X		; 34 2E
	sbc ($FF.b),Y		; F1 FF
	ora ($1E.b,S),Y		; 13 1E
	iny		; C8
	sbc $4B.b,X		; F5 4B
	pei ($1F.b)		; D4 1F
	dec $D250.w,X		; DE 50 D2
	jsr $1EC0.w		; 20 C0 1E
	ldy $F121.w,X		; BC 21 F1
	bit $1E.b,X		; 34 1E
	sbc ($FF.b),Y		; F1 FF
	cpy $31.b		; C4 31
	sbc $6FC2.w		; ED C2 6F
.ACCU 8
	sep #$21		; E2 21
	dec $C420.w		; CE 20 C4
	beq  49.b		; F0 31
	cpx $5ED3.w		; EC D3 5E
	sbc ($3F.b)		; F2 3F
	dec $21C4.w		; CE C4 21
	sbc ($30.b),Y		; F1 30
	jmp.w [$4EE4]		; DC E4 4E
	sbc ($2F.b,S),Y		; F3 2F
	cpy $BF.b		; C4 BF
	and $CC2002.l,X		; 3F 02 20 CC
	tsb $3D.b		; 04 3D
	ora ($C8.b)		; 12 C8
	tsb $2EE4.w		; 0C E4 2E
	cop $0D.b		; 02 0D
	cpx #$35.b		; E0 35
	ldx $22C4.w,Y		; BE C4 22
	ora $20C1.w,X		; 1D C1 20
	ora $0E.b,S		; 03 0E
	cmp $C424.w,X		; DD 24 C4
	ora $D20C22.l		; 0F 22 0C D2
	bpl  18.b		; 10 12
	ora $C0DE.w		; 0D DE C0
.INDEX 8
	sep #$10		; E2 10
	bit $2E.b		; 24 2E
	cmp $2F2300.l		; CF 00 23 2F
	iny		; C8
	sbc ($40.b,S),Y		; F3 40
	lda ($2E.b)		; B2 2E
	sbc $F043.w		; ED 43 F0
	ora $D0EDC4.l		; 0F C4 ED D0
	mvp $10,$F0		; 44 F0 10
	cmp $2004.w		; CD 04 20
	clv		; B8
	bit $35D0.w		; 2C D0 35
	jmp $021CA1.l		; 5C A1 1C 02
	.db $62, $B8, $DD		; 62 B8 DD
	sbc $2213.w		; ED 13 22
	rol $10AE.w,X		; 3E AE 10
	jsl $3013C4.l		; 22 C4 13 30
	cmp $10F1.w		; CD F1 10
	and ($FD.b,S),Y		; 33 FD
	sbc $0201C4.l		; EF C4 01 02
	eor $0101BE.l,X		; 5F BE 01 01
	and ($ED.b)		; 32 ED
	cpy $E0.b		; C4 E0
	bpl   2.b		; 10 02
	lsr $11BE.w,X		; 5E BE 11
	ora ($30.b),Y		; 11 30
	cpy $ED.b		; C4 ED
	beq  17.b		; F0 11
	cop $3E.b		; 02 3E
	dec $1021.w		; CE 21 10
	bcs 102.b		; B0 66
	ora $F0CD.w		; 0D CD F0
	sbc ($74.b)		; F2 74
	stp		; DB
	cpx #$B4.b		; E0 B4
	bpl  64.b		; 10 40
	cmp $0001.w		; CD 01 00
	pea $9F6C.w		; F4 6C 9F
	cpy $11.b		; C4 11
	ora ($11.b,X)		; 01 11
	inc $0F00.w		; EE 00 0F
	trb $2C.b		; 14 2C
	iny		; C8
	ora ($10.b,S),Y		; 13 10
	sbc ($1D.b),Y		; F1 1D
.INDEX 8
	sep #$10		; E2 10
	sbc ($5E.b),Y		; F1 5E
	cpy #$2D.b		; C0 2D
	dec $1400.w,X		; DE 00 14
	and $F3FFDD.l,X		; 3F DD FF F3
	cpy $3C.b		; C4 3C
	cmp $2F0113.l		; CF 13 01 2F
	dec $1011.w		; CE 11 10
	cpy $32.b		; C4 32
	stp		; DB
	cop $21.b		; 02 21
	ora ($FD.b,X)		; 01 FD
	sbc ($10.b),Y		; F1 10
	cpy $02.b		; C4 02
	and $23CF.w,X		; 3D CF 23
	brk $00.b		; 00 00
	inc $C411.w		; EE 11 C4
	brk $32.b		; 00 32
	jmp.w [$2002]		; DC 02 20
	brk $FE.b		; 00 FE
	ora ($B0.b,X)		; 01 B0
	asl $2B37.w		; 0E 37 2B
	lda $FA2254.l		; AF 54 22 FA
	bcs -72.b		; B0 B8
	sbc $9D44.w,Y		; F9 44 9D
	and [$3C.b]		; 27 3C
	lda $FE.b,S		; A3 FE
	asl $B4.b,X		; 16 B4
	rti		; 40

	cpx $1A.b		; E4 1A
	bcs 117.b		; B0 75
	inc $D1FC.w,X		; FE FC D1
	ldy $41.b,X		; B4 41
	cpx $4B.b		; E4 4B
	stz $1F56.w,X		; 9E 56 1F
	sbc $C4B0.w,X		; FD B0 C4
	and ($F2.b,X)		; 21 F2
	rol $24CF.w		; 2E CF 24
	ora $C4E00E.l		; 0F 0E E0 C4
	ora ($03.b),Y		; 11 03
	ora $34DE.w,X		; 1D DE 34
	ora $C8F0FD.l,X		; 1F FD F0 C8
	bpl   3.b		; 10 03
	wai		; CB
	ora ($62.b)		; 12 62
	ldx $14FE.w,Y		; BE FE 14
	iny		; C8
	and $15DAF2.l		; 2F F2 DA 15
	.db $42, $CC		; 42 CC
	sbc $20C814.l,X		; FF 14 C8 20
	sbc ($EA.b,X)		; E1 EA
	and $52.b,S		; 23 52
	cpy $240D.w		; CC 0D 24
	iny		; C8
	jsr $DBD3.w		; 20 D3 DB
	tsb $51.b		; 04 51
	cmp $03E0.w,X		; DD E0 03
	cpy $32.b		; C4 32
	trb $FB.b		; 14 FB
	cmp $ED1F45.l		; CF 45 1F ED
	cpx #$C4.b		; E0 C4
	and ($24.b,X)		; 21 24
	plx		; FA
	cmp ($53.b,X)		; C1 53
	ora $C4F1DD.l,X		; 1F DD F1 C4
	ora ($42.b),Y		; 11 42
	stp		; DB
	cmp ($53.b)		; D2 53
	asl $02CE.w		; 0E CE 02
	cpy $10.b		; C4 10
	eor ($CC.b,X)		; 41 CC
	cpx $51.b		; E4 51
	sbc $12DF.w,X		; FD DF 12
	cpy $01.b		; C4 01
	rti		; 40

	ldy $41F5.w,X		; BC F5 41
	inc $12DF.w		; EE DF 12
	iny		; C8
.INDEX 8
	sep #$1C		; E2 1C
	bne  69.b		; D0 45
	jsr ($12FE.w,X)		; FC FE 12
	bpl -60.b		; 10 C4
	ora $3E.b,S		; 03 3E
	lda $3015.w,X		; BD 15 30
	sbc $11E0.w		; ED E0 11
	cpy $04.b		; C4 04
	bit $45CD.w		; 2C CD 45
	ora $20F0DE.l,X		; 1F DE F0 20
	cpy $14.b		; C4 14
	tsb $54B0.w		; 0C B0 54
	asl $01DE.w		; 0E DE 01
	bpl -56.b		; 10 C8
	jsl $3E06AE.l		; 22 AE 06 3E
	cmp $0F1101.l		; CF 01 11 0F
	cpy $41.b		; C4 41
	jmp.w [$61D3]		; DC D3 61
	sbc $02D0.w,X		; FD D0 02
	brk $C4.b		; 00 C4
	bvc -53.b		; 50 CB
	sbc $41.b,X		; F5 41
	sbc $11E0.w		; ED E0 11
	sbc ($C8.b,S),Y		; F3 C8
	tsb $55D0.w		; 0C D0 55
	jmp.w [$22FF]		; DC FF 22
	brk $E5.b		; 00 E5
	cpy $2D.b		; C4 2D
	ldx $1E36.w,Y		; BE 36 1E
	dec $20F1.w,X		; DE F1 20
	tsb $C4.b		; 04 C4
	tsb $55CF.w		; 0C CF 55
	ora $02DE.w		; 0D DE 02
	ora $AEC824.l,X		; 1F 24 C8 AE
	ora $5D.b		; 05 5D
	cmp $2002.w,X		; DD 02 20
	asl $C44F.w		; 0E 4F C4
	xba		; EB
	cmp ($62.b,S),Y		; D3 62
	sbc $11D0.w		; ED D0 11
	ora ($40.b,X)		; 01 40
	cpy $CB.b		; C4 CB
	sbc $51.b,X		; F5 51
	jmp.w [$12F0]		; DC F0 12
	sbc ($3F.b)		; F2 3F
	iny		; C8
	cmp $C1DD65.l,X		; DF 65 DD C1
	bmi  16.b		; 30 10
	cpx $FB.b		; E4 FB
	cpy $CC.b		; C4 CC
	lsr $2E.b		; 46 2E
	dec $2000.w		; CE 00 20
	tsb $0D.b		; 04 0D
	cpy $BF.b		; C4 BF
	eor $0E.b,X		; 55 0E
	cmp $241F01.l		; CF 01 1F 24
	jsr ($F6C8.w,X)		; FC C8 F6
	lsr $02DD.w		; 4E DD 02
	ora ($F0.b),Y		; 11 F0
	and $C4C4BF.l,X		; 3F BF C4 C4
	eor ($FC.b)		; 52 FC
	cpx #$02.b		; E0 02
	sbc ($40.b),Y		; F1 40
	stp		; DB
	cpy $F5.b		; C4 F5
	eor ($EC.b,X)		; 41 EC
	beq  17.b		; F0 11
	sbc ($3E.b,S),Y		; F3 3E
	cpy $16C4.w		; CC C4 16
	bmi -51.b		; 30 CD
	brk $11.b		; 00 11
	ora $2D.b,S		; 03 2D
	lda $45C4.w,X		; BD C4 45
	and $2FF1CE.l		; 2F CE F1 2F
	bit $FD.b		; 24 FD
	lda $0D55C4.l,X		; BF C4 55 0D
	cmp $331F01.l,X		; DF 01 1F 33
	xba		; EB
	cmp $C4.b,S		; C3 C4
	eor ($FD.b,S),Y		; 53 FD
	cmp $40F112.l,X		; DF 12 F1 40
	stp		; DB
	sbc $C8.b		; E5 C8
	ora $12B0.w		; 0D B0 12
	and $D01CF2.l		; 2F F2 1C D0
	eor $C4.b,X		; 55 C4
	rti		; 40

	cpy $20F1.w		; CC F1 20
	tsb $1D.b		; 04 1D
	lda $C446.w,X		; BD 46 C4
	and $20F1BE.l		; 2F BE F1 20
	trb $FD.b		; 14 FD
	ldy #$55.b		; A0 55
	cpy $1D.b		; C4 1D
	dec $1002.w		; CE 02 10
	and ($EB.b)		; 32 EB
	cmp $63.b,S		; C3 63
	cpy $FC.b		; C4 FC
	cmp $310112.l,X		; DF 12 01 31
	wai		; CB
	sbc $62.b		; E5 62
	cpy $DB.b		; C4 DB
	cpx #$21.b		; E0 21
	cop $3E.b		; 02 3E
	wai		; CB
	rol $40.b		; 26 40
	cpy $BD.b		; C4 BD
	sbc ($20.b),Y		; F1 20
	tsb $1D.b		; 04 1D
	ldx $3D55.w		; AE 55 3D
	iny		; C8
	sbc ($31.b),Y		; F1 31
	ora $CC31.w,X		; 1D 31 CC
	asl $5E.b		; 06 5E
	cpy $CFC4.w		; CC C4 CF
	ora $00.b,S		; 03 00
	eor ($DB.b,X)		; 41 DB
	pei ($63.b)		; D4 63
	xba		; EB
	iny		; C8
	jsl $1BD330.l		; 22 30 D3 1B
	sbc $BFED56.l		; EF 56 ED BF
	cpy $F0.b		; C4 F0
	and ($03.b),Y		; 31 03
	ora $46BD.w,X		; 1D BD 46
	rol $C8BD.w,X		; 3E BD C8
	and $0D.b,S		; 23 0D
	eor $5E06CD.l		; 4F CD 06 5E
	cpy $C402.w		; CC 02 C4
	ora $11.b,S		; 03 11
	rti		; 40

	dex		; CA
	inc $62.b		; E6 62
	stp		; DB
	sbc $0422C4.l		; EF C4 22 04
	ora $46BC.w,X		; 1D BC 46
	and $C4E1CD.l,X		; 3F CD E1 C4
	jsr $EB43.w		; 20 43 EB
	lda ($65.b),Y		; B1 65
	tsb $01DE.w		; 0C DE 01
	cpy $12.b		; C4 12
	eor $51F6CA.l,X		; 5F CA F6 51
	jmp.w [$11FF]		; DC FF 11
	cpy $15.b		; C4 15
	trb $55AD.w		; 1C AD 55
	rol $F0CE.w,X		; 3E CE F0
	jsr $43C4.w		; 20 C4 43
	stp		; DB
	lda ($64.b,S),Y		; B3 64
	jsr ($01DF.w,X)		; FC DF 01
	ora ($C4.b,S),Y		; 13 C4
	lsr $15BB.w		; 4E BB 15
	eor ($CD.b),Y		; 51 CD
	cpx #$10.b		; E0 10
	bit $C8.b,X		; 34 C8
	cpy $60F4.w		; CC F4 60
	cmp $20F1.w		; CD F1 20
	ora ($3B.b),Y		; 11 3B
	cpy $CB.b		; C4 CB
	cpx $52.b		; E4 52
	sbc $01EF.w		; ED EF 01
	bit $1D.b		; 24 1D
	cpy $AD.b		; C4 AD
	eor $3F.b		; 45 3F
	cmp $11E1.w,X		; DD E1 11
	eor ($DB.b),Y		; 51 DB
	cpy $D3.b		; C4 D3
	eor ($FD.b,S),Y		; 53 FD
	cmp $1D25F1.l,X		; DF F1 25 1D
	lda $35C4.w,X		; BD C4 35
	jsr $EFDE.w		; 20 DE EF
	ora ($51.b)		; 12 51
	phx		; DA
	sbc $C4.b,S		; E3 C4
	eor ($FE.b)		; 52 FE
	inc $25F1.w		; EE F1 25
	ora $35AE.w,X		; 1D AE 35
	cpy $2F.b		; C4 2F
	inc $13D0.w		; EE D0 13
	bvc -38.b		; 50 DA
	cpx $42.b		; E4 42
	iny		; C8
	cmp $212100.l,X		; DF 00 21 21
	stp		; DB
	sbc ($60.b,S),Y		; F3 60
	sbc $FFC8.w		; ED C8 FF
	and ($12.b,X)		; 21 12
	trb $54CF.w		; 1C CF 54
	ora $C4D0.w		; 0D D0 C4
	cmp $DC5311.l,X		; DF 11 53 DC
	lda ($44.b)		; B2 44
	asl $C4DE.w		; 0E DE C4
.ACCU 8
	sep #$25		; E2 25
	ora $34BD.w,X		; 1D BD 34
	bmi -19.b		; 30 ED
	cmp $1C31C8.l,X		; DF C8 31 1C
	dec $1E35.w,X		; DE 35 1E
	inc $31F0.w		; EE F0 31
	iny		; C8
	eor $4FF5AE.l		; 4F AE F5 4F
	sbc $04FF.w,X		; FD FF 04
	ora ($C4.b,S),Y		; 13 C4
	and $24BC.w,X		; 3D BC 24
	and ($EE.b),Y		; 31 EE
	cmp $C46104.l		; CF 04 61 C4
	dex		; CA
	sbc $43.b,S		; E3 43
	inc $F1ED.w,X		; FE ED F1
	eor $EB.b,X		; 55 EB
	iny		; C8
	ora $4F.b		; 05 4F
	inc $03FF.w		; EE FF 03
	and ($CC.b)		; 32 CC
	pei ($C4.b)		; D4 C4
	bit $20.b,X		; 34 20
	sbc $15EF.w		; ED EF 15
	lsr $14BC.w		; 4E BC 14
	iny		; C8
	tsb $F2FF.w		; 0C FF F2
	and $1B.b,S		; 23 1B
	cmp $C80E45.l		; CF 45 0E C8
	cmp $3C23F1.l,X		; DF F1 23 3C
	lda $2E36.w,X		; BD 36 2E
	dec $F0C8.w,X		; DE C8 F0
	and $4E.b,S		; 23 4E
	ldy $4F25.w		; AC 25 4F
	cmp $C40E.w,X		; DD 0E C4
	sbc ($66.b,X)		; E1 66
	plx		; FA
	ldy #$45.b		; A0 45
	and $C8D0DC.l		; 2F DC D0 C8
	rts		; 60

	plb		; AB
	sbc $50.b,X		; F5 50
	inc $13EE.w		; EE EE 13
	adc $05BBC8.l		; 6F C8 BB 05
	bmi  -2.b		; 30 FE
	sbc $CB4DF6.l		; EF F6 4D CB
	cpy $E1.b		; C4 E1
	and ($00.b)		; 32 00
	sbc $61E3.w		; ED E3 61
	cpy $C8F3.w		; CC F3 C8
	sbc $44FFFF.l,X		; FF FF FF 44
	cpx $32C3.w		; EC C3 32
	inc $0EC4.w,X		; FE C4 0E
	cmp $CF1C45.l		; CF 45 1C CF
	and ($10.b)		; 32 10
	tsb $C2C4.w		; 0C C4 C2
	adc $EB.b,S		; 63 EB
.ACCU 8
	sep #$21		; E2 21
	bpl -20.b		; 10 EC
	pea $50C4.w		; F4 C4 50
	cmp $2002.w		; CD 02 20
	brk $CE.b		; 00 CE
	mvp $C4,$1C		; 44 1C C4
	cmp ($11.b),Y		; D1 11
	bpl  12.b		; 10 0C
	sbc ($41.b)		; F2 41
	cmp $B412.w,X		; DD 12 B4
	ora $57AD10.l,X		; 1F 10 AD 57
	rol A		; 2A
	ldx #$42.b		; A2 42
	sbc ($B4.b,X)		; E1 B4
	plx		; FA
	inc $62.b		; E6 62
	txy		; 9B
	and $3F.b,S		; 23 3F
	ora $33C4AE.l		; 0F AE C4 33
	ora $12D1.w,X		; 1D D1 12
	sbc ($FD.b),Y		; F1 FD
	sbc ($31.b,S),Y		; F3 31
	cpy $CE.b		; C4 CE
	ora ($10.b),Y		; 11 10
	bpl -49.b		; 10 CF
	and ($1C.b,S),Y		; 33 1C
	sbc ($C0.b,X)		; E1 C0
	ora ($01.b,X)		; 01 01
	ora $33C0.w,X		; 1D C0 33
	inc $10F0.w,X		; FE F0 10
	cpy #$11.b		; C0 11
	jmp.w [$3F03]		; DC 03 3F
	sbc $1D0100.l		; EF 00 01 1D
	cpy #$C0.b		; C0 C0
	and ($FE.b,S),Y		; 33 FE
	ora ($00.b,X)		; 01 00
	ora ($DD.b),Y		; 11 DD
	tsb $C0.b		; 04 C0
	and $0110E0.l,X		; 3F E0 10 01
	ora $43C0.w,X		; 1D C0 43
	inc $01C0.w,X		; FE C0 01
	brk $11.b		; 00 11
	jmp.w [$3F04]		; DC 04 3F
	cpx #$10.b		; E0 10
	cpy #$01.b		; C0 01
	ora $43C1.w,X		; 1D C1 43
	inc $0001.w,X		; FE 01 00
	and ($C0.b,X)		; 21 C0
	cpy $3F14.w		; CC 14 3F
	cpx #$10.b		; E0 10
	cop $1D.b		; 02 1D
	cmp ($C4.b),Y		; D1 C4
	rol $20D0.w,X		; 3E D0 20
	sbc ($2F.b,X)		; E1 2F
	cmp ($33.b,X)		; C1 33
	sbc $F2B1.w		; ED B1 F2
	rol $FAE2.w		; 2E E2 FA
	pei ($71.b)		; D4 71
	cmp $000032.l		; CF 32 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	sbc ($FF.b)		; F2 FF
	bpl   0.b		; 10 00
	ora $52C012.l,X		; 1F 12 C0 52
	sty $10.b,X		; 94 10
	cop $0D.b		; 02 0D
	sbc $BDEC.w		; ED EC BD
	inc $98F5.w		; EE F5 98
	rol $FCD3.w,X		; 3E D3 FC
	sbc ($3F.b,X)		; E1 3F
	ora ($0D.b,X)		; 01 0D
	inc $F0A8.w		; EE A8 F0
	cop $5E.b		; 02 5E
	cmp $3C.b		; C5 3C
	cmp ($00.b,S),Y		; D3 00
.ACCU 8
	sep #$A8		; E2 A8
	bpl  -1.b		; 10 FF
	ora $F5FFDF.l,X		; 1F DF FF F5
	eor $7A88F2.l,X		; 5F F2 88 7A
	dex		; CA
	cmp [$DC.b],Y		; D7 DC
	.db $62, $2D, $DC		; 62 2D DC
	ldy $EFA8.w,X		; BC A8 EF
	sbc ($61.b)		; F2 61
	pei ($1F.b)		; D4 1F
	beq -16.b		; F0 F0
	brk $A8.b		; 00 A8
	ora ($F1.b,X)		; 01 F1
	inc $0EFF.w,X		; FE FF 0E
.ACCU 8
	sep #$60		; E2 60
	cmp ($A8.b,S),Y		; D3 A8
	eor $D1F1D2.l		; 4F D2 F1 D1
	ora ($EF.b)		; 12 EF
	ora $1FA8DE.l,X		; 1F DE A8 1F
.INDEX 8
	sep #$5F		; E2 5F
	sbc $4F.b,S		; E3 4F
	cmp ($11.b),Y		; D1 11
	bne -104.b		; D0 98
	eor ($DF.b)		; 52 DF
	phd		; 0B
	dec $F2EF.w,X		; DE EF F2
	eor ($E4.b),Y		; 51 E4
	tay		; A8
	and $101D01.l,X		; 3F 01 1D 10
	ora ($00.b,X)		; 01 00
	sbc $00A8B1.l,X		; FF B1 A8 00
	cpx #$21.b		; E0 21
	ora $10E052.l		; 0F 52 E0 10
	cpx #$98.b		; E0 98
	and $1D.b,S		; 23 1D
	tsb $02CE.w		; 0C CE 02
	sbc $11D2.w,X		; FD D2 11
	tay		; A8
	ora ($4F.b,S),Y		; 13 4F
	cpx #$2E.b		; E0 2E
	brk $3F.b		; 00 3F
	tsb $B80E.w		; 0C 0E B8
	brk $1F.b		; 00 1F
	beq -14.b		; F0 F2
	sbc ($22.b),Y		; F1 22
	inc $A820.w,X		; FE 20 A8
	inc $FC14.w,X		; FE 14 FC
	sbc $FF0000.l,X		; FF 00 00 FF
	bne -88.b		; D0 A8
	eor ($E5.b,X)		; 41 E5
	ora ($0E.b),Y		; 11 0E
	ora $FD.b,S		; 03 FD
	jsl $1FA8DD.l		; 22 DD A8 1F
	rol $3BE0.w		; 2E E0 3B
	cpx $21.b		; E4 21
	sbc ($10.b,S),Y		; F3 10
	tay		; A8
	bpl -58.b		; 10 C6
	sbc $BF13.w		; ED 13 BF
	and $A80DD2.l		; 2F D2 0D A8
	and $DE34F0.l		; 2F F0 34 DE
	lsr $CE.b		; 46 CE
	pei ($20.b)		; D4 20
	tay		; A8
	sta ($5A.b,S),Y		; 93 5A
	cmp ($1A.b,S),Y		; D3 1A
	and $EE.b,S		; 23 EE
	rol $A823.w,X		; 3E 23 A8
	cmp $1CD161.l,X		; DF 61 D1 1C
	and ($DC.b)		; 32 DC
	rts		; 60

	sta ($98.b),Y		; 91 98
	jmp ($3FDD.w,X)		; 7C DD 3F
	jsr $6AE3.w		; 20 E3 6A
	eor ($FF.b,S),Y		; 53 FF
	tay		; A8
	adc #$E3.b		; 69 E3
	ora $DFE41E.l,X		; 1F 1E E4 DF
	sbc $F2.b,S		; E3 F2
	tay		; A8
	cpy #$11.b		; C0 11
	and ($0C.b,X)		; 21 0C
	and $FA.b,S		; 23 FA
	adc $CE.b		; 65 CE
	ldy $4F.b		; A4 4F
	cmp $49.b,X		; D5 49
	pei ($DB.b)		; D4 DB
	jmp.w [$EDBD]		; DC BD ED
	clv		; B8
	brk $02.b		; 00 02
	sbc $05ED15.l		; EF 15 ED 05
	jmp.w [$A841]		; DC 41 A8
	dec $FF5C.w		; CE 5C FF
	jsl $0EC40F.l		; 22 0F C4 0E
	sbc $B8.b,S		; E3 B8
	jsr $12D0.w		; 20 D0 12
	asl $4BC5.w,X		; 1E C5 4B
	lda ($50.b)		; B2 50
	ldy $DE.b		; A4 DE
	beq -37.b		; F0 DB
	cmp ($2B.b),Y		; D1 2B
	lda ($49.b)		; B2 49
	cmp ($B8.b)		; D2 B8
	sbc ($0F.b),Y		; F1 0F
	tsb $CE.b		; 04 CE
	eor ($DF.b,X)		; 41 DF
	ora ($00.b),Y		; 11 00
	ldy $FE.b,X		; B4 FE
	sbc $EE00F0.l,X		; FF F0 00 EE
	bpl -32.b		; 10 E0
	and ($A4.b),Y		; 31 A4
	cpy #$42.b		; C0 42
	eor ($FD.b,S),Y		; 53 FD
	and ($F2.b),Y		; 31 F2
	and $F2B80D.l,X		; 3F 0D B8 F2
	and $1BF1.w,X		; 3D F1 1B
	and ($E1.b)		; 32 E1
	and $DCB0D2.l		; 2F D2 B0 DC
	tsb $42.b		; 04 42
	bit $32.b,X		; 34 32
	and $54.b,S		; 23 54
	brk $A4.b		; 00 A4
	lsr A		; 4A
	lda ($4D.b,S),Y		; B3 4D
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	ldy #$0031.w		; A0 31 00
	ldy $FD.b		; A4 FD
	trb $50.b		; 14 50
	pei ($5D.b)		; D4 5D
	sbc $1B.b,S		; E3 1B
.ACCU 8
	sep #$A4		; E2 A4
	asl $1DD1.w		; 0E D1 1D
	cpy #$1120.w		; C0 20 11
	bpl  -1.b		; 10 FF
	ldy $46.b		; A4 46
	dec $A073.w		; CE 73 A0
	eor $EDDED0.l,X		; 5F D0 DE ED
	tay		; A8
	bit $CE.b		; 24 CE
	and $D23A03.l		; 2F 03 3A D2
	lsr $A410.w		; 4E 10 A4
	bpl   1.b		; 10 01
	ora $DB.b,S		; 03 DB
	cop $E1.b		; 02 E1
	rol $94B0.w,X		; 3E B0 94
	and $CE2F14.l,X		; 3F 14 2F CE
	cop $2D.b		; 02 2D
	inc $2C.b		; E6 2C
	ldy $F2.b		; A4 F2
	ora ($2C.b,S),Y		; 13 2C
	sbc $FF.b,S		; E3 FF
	.db $42, $FD		; 42 FD
	sbc $F0A4.w		; ED A4 F0
	and ($FC.b)		; 32 FC
	sbc ($11.b),Y		; F1 11
	jsr $0EFF.w		; 20 FF 0E
	sty $37.b,X		; 94 37
	ora $DC06.w,X		; 1D 06 DC
	ora $EB.b,S		; 03 EB
	lda ($22.b,S),Y		; B3 22
	ldy $12.b		; A4 12
	sbc $E023.w,X		; FD 23 E0
	ora $04FDE1.l		; 0F E1 FD 04
	sty $E9.b,X		; 94 E9
	and $13.b		; 25 13
	mvn $D5,$CB		; 54 CB D5
	rol $940F.w,X		; 3E 0F 94
	jmp.w [$F4F1]		; DC F1 F4
	bit $44B1.w,X		; 3C B1 44
	rol $A4B2.w		; 2E B2 A4
	ora $10F2.w		; 0D F2 10
	ora $DC5301.l,X		; 1F 01 53 DC
	bpl -108.b		; 10 94
	cmp $1FEF.w,X		; DD EF 1F
	cmp ($42.b)		; D2 42
	ora ($FF.b,X)		; 01 FF
	ora ($84.b),Y		; 11 84
	brk $0C.b		; 00 0C
	bne  63.b		; D0 3F
	ora $E124FC.l		; 0F FC 24 E1
	bcc  36.b		; 90 24
	ora $1132F2.l,X		; 1F F2 32 11
	and ($DC.b),Y		; 31 DC
	jmp.w [$C498]		; DC 98 C4
	lsr $3DE2.w		; 4E E2 3D
	cmp ($00.b,X)		; C1 00
	jsl $1090C0.l		; 22 C0 90 10
	sbc $E021F1.l		; EF F1 21 E0
	jsr $23BD.w		; 20 BD 23
	bcc   2.b		; 90 02
	.db $42, $EC		; 42 EC
	sbc ($0D.b,X)		; E1 0D
	sbc ($EC.b,X)		; E1 EC
	cpx $94.b		; E4 94
	bit $0CE2.w		; 2C E2 0C
	cop $FF.b		; 02 FF
	bpl   4.b		; 10 04
	phd		; 0B
	bcc   5.b		; 90 05
	eor ($FF.b),Y		; 51 FF
	beq -70.b		; F0 BA
	sep #$01		; E2 01
	jsl $0FF194.l		; 22 94 F1 0F
	asl $4FB0.w		; 0E B0 4F
	sbc ($2D.b,S),Y		; F3 2D
	cop $90.b		; 02 90
	and ($2F.b,S),Y		; 33 2F
	sbc ($1D.b),Y		; F1 1D
	cpy #$D32E.w		; C0 2E D3
	eor ($94.b,S),Y		; 53 94
	beq   0.b		; F0 00
	cpx $FE12.w		; EC 12 FE
	jsl $8022ED.l		; 22 ED 22 80
	inc $0CF1.w,X		; FE F1 0C
	lda ($5D.b,S),Y		; B3 5D
	cpy $2D.b		; C4 2D
	asl $94.b		; 06 94
	sbc $3FC00F.l,X		; FF 0F C0 3F
	sbc ($1F.b),Y		; F1 1F
	ora ($01.b,X)		; 01 01
	sty $10.b		; 84 10
	dec $D24F.w		; CE 4F D2
	rol $1FC0.w,X		; 3E C0 1F
	and ($84.b,S),Y		; 33 84
	wai		; CB
	bit $FF.b		; 24 FF
	ora $2EF5.w		; 0D F5 2E
	ora [$1B.b],Y		; 17 1B
	sty $F2.b		; 84 F2
	dec $D22D.w,X		; DE 2D D2
	asl $B220.w		; 0E 20 B2
	eor ($94.b,X)		; 41 94
	sbc ($10.b),Y		; F1 10
	ora ($32.b),Y		; 11 32
	jmp.w [$DD21]		; DC 21 DD
	sbc $F5D388.l,X		; FF 88 D3 F5
	eor #$E1.b		; 49 E1
	eor #$F6.b		; 49 F6
	dec A		; 3A
	sbc ($84.b,S),Y		; F3 84
	asl $11F0.w,X		; 1E F0 11
	sbc $CB04.w,X		; FD 04 CB
	tsb $C0.b		; 04 C0
	bra -85.b		; 80 AB
	cpy #$51D0.w		; C0 D0 51
	ldx $A1FB.w		; AE FB A1
	jsr ($2384.w,X)		; FC 84 23
	ora $21.b,S		; 03 21
	ora ($CB.b,S),Y		; 13 CB
	cmp $883DEF.l,X		; DF EF 3D 88
	cop $E4.b		; 02 E4
	sbc $44E01F.l,X		; FF 1F E0 44
	xba		; EB
	bpl -124.b		; 10 84
	ora $AB3EEF.l,X		; 1F EF 3E AB
	and ($D0.b),Y		; 31 D0
	ora $0384F0.l		; 0F F0 84 03
	and ($4F.b),Y		; 31 4F
	cmp ($40.b,X)		; C1 40
	cmp ($40.b)		; D2 40
	sta ($84.b)		; 92 84
	eor $D0.b,S		; 43 D0
	inc $0EEF.w,X		; FE EF 0E
	ora ($1F.b),Y		; 11 1F
	ora $20F374.l		; 0F 74 F3 20
	sbc ($3B.b)		; F2 3B
	sbc [$11.b],Y		; F7 11
	bmi -48.b		; 30 D0
	sty $10.b		; 84 10
	cop $FF.b		; 02 FF
	asl $0CEF.w		; 0E EF 0C
	and ($E1.b,X)		; 21 E1
	dey		; 88
	ora ($E0.b,X)		; 01 E0
	jsr $DA10.w		; 20 10 DA
	adc $0D.b		; 65 0D
	cmp $F384.w,X		; DD 84 F3
	sbc $DD52.w		; ED 52 DD
	cmp ($13.b),Y		; D1 13
	ora $2084F1.l,X		; 1F F1 84 20
	brk $30.b		; 00 30
	cmp $2FD342.l		; CF 42 D3 2F
	cpx $84.b		; E4 84
	eor $FFEBCE.l		; 4F CE EB FF
	bpl  -3.b		; 10 FD
	and ($F5.b,X)		; 21 F5
	sty $5E.b		; 84 5E
	pea $12FE.w		; F4 FE 12
	bcs  44.b		; B0 2C
	lda $2D.b,X		; B5 2D
	sty $0F.b		; 84 0F
	cmp ($3C.b)		; D2 3C
	ora $DB.b,X		; 15 DB
	lsr $DD.b,X		; 56 DD
	eor ($84.b,X)		; 41 84
	cmp ($32.b,X)		; C1 32
	bne -18.b		; D0 EE
	bpl -48.b		; 10 D0
	asl $8813.w,X		; 1E 13 88
	cmp $2CD53F.l,X		; DF 3F D5 2C
	sbc ($2D.b,X)		; E1 2D
	and ($D0.b,X)		; 21 D0
	sty $0F.b		; 84 0F
	cmp ($4E.b,X)		; C1 4E
	cpx $0C.b		; E4 0C
	and ($DF.b)		; 32 DF
	and $0FF184.l		; 2F 84 F1 0F
	bit $F0.b		; 24 F0
	bit $FC.b,X		; 34 FC
	and $DE.b,S		; 23 DE
	dey		; 88
	rol $0FE4.w		; 2E E4 0F
	bpl   1.b		; 10 01
	inc $FF13.w		; EE 13 FF
	dey		; 88
	trb $CF.b		; 14 CF
	sep #$00		; E2 00
	sbc ($F1.b,S),Y		; F3 F1
	bne  17.b		; D0 11
	stz $1A.b,X		; 74 1A
	ora ($DC.b),Y		; 11 DC
	eor ($41.b)		; 52 41
	and ($B9.b,S),Y		; 33 B9
	and $88.b,X		; 35 88
	sbc $1301.w,X		; FD 01 13
	asl $DBD4.w		; 0E D4 DB
	rol $DD.b		; 26 DD
	sty $33.b,X		; 94 33
	sbc $FD13.w,X		; FD 13 FD
	ora ($0D.b,S),Y		; 13 0D
	ora ($10.b,S),Y		; 13 10
	sty $DF.b,X		; 94 DF
	and $6DA4.w		; 2D A4 6D
	cpy $3B.b		; C4 3B
	ldx #$846E.w		; A2 6E 84
	lda ($7E.b,X)		; A1 7E
	and ($D2.b)		; 32 D2
	rtl		; 6B

	lda $50.b,X		; B5 50
	ora $88.b,S		; 03 88
	cpx $0C06.w		; EC 06 0C
	cmp [$9B.b],Y		; D7 9B
	eor $FF.b,X		; 55 FF
	cmp ($98.b)		; D2 98
	asl $0F03.w		; 0E 03 0F
	jsr $32C2.w		; 20 C2 32
	dec $8851.w		; CE 51 88
	lda $D04F1C.l		; AF 1C 4F D0
	jmp $ECB3.w		; 4C B3 EC
	and ($98.b,S),Y		; 33 98
	sbc ($2F.b),Y		; F1 2F
	ora $0D.b		; 05 0D
	jsl $F23FC0.l		; 22 C0 3F F2
	tya		; 98
	jsr ($0F00.w,X)		; FC 00 0F
	and $43E2CE.l		; 2F CE E2 43
	ora ($88.b),Y		; 11 88
	eor $FDE212.l,X		; 5F 12 E2 FD
	cmp ($00.b,S),Y		; D3 00
	sbc $A8CE.w,X		; FD CE A8
	brk $FF.b		; 00 FF
	tsb $2E35.w		; 0C 35 2E
	sbc $FD.b,X		; F5 FD
	cop $98.b		; 02 98
	and $4DEE.w		; 2D EE 4D
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	lda $B4DD0F.l		; AF 0F DD B4
	ora ($00.b,S),Y		; 13 00
	bit $11.b,X		; 34 11
	and $22.b,S		; 23 22
	brk $2F.b		; 00 2F
	tay		; A8
	sbc $EE.b		; E5 EE
	sbc $3B25FF.l,X		; FF FF 25 3B
	tsb $1C.b		; 04 1C
	tya		; 98
	ora $21.b,S		; 03 21
	jmp.w [$AE43]		; DC 43 AE
	and $A8FCDD.l,X		; 3F DD FC A8
	ora $5F.b,S		; 03 5F
	cmp ($3D.b,S),Y		; D3 3D
	sbc ($2F.b,X)		; E1 2F
	and $A802.w		; 2D 02 A8
	ora $E010.w		; 0D 10 E0
	inc $61F1.w,X		; FE F1 61
	cmp $C0A86F.l,X		; DF 6F A8 C0
	bmi   0.b		; 30 00
	cmp ($2E.b)		; D2 2E
.ACCU 8
	sep #$EF		; E2 EF
	ora $F1A8.w		; 0D A8 F1
	eor ($DC.b)		; 52 DC
	adc ($CE.b,S),Y		; 73 CE
	eor $B8D12F.l		; 4F 2F D1 B8
	rol $1E0F.w		; 2E 0F 1E
	ora $E041F0.l		; 0F F0 41 E0
	and ($A8.b,X)		; 21 A8
	dec $2D40.w		; CE 40 2D
.ACCU 8
.INDEX 8
	sep #$3B		; E2 3B
	cop $DE.b		; 02 DE
	inc $F2A8.w,X		; FE A8 F2
	.db $62, $D0, $22		; 62 D0 22
	bne  34.b		; D0 22
	inc $A8F2.w,X		; FE F2 A8
	sbc $F0DE0F.l,X		; FF 0F DE F0
	ora $20.b,X		; 15 20
	sbc ($20.b),Y		; F1 20
	tya		; 98
	cmp ($6B.b,X)		; C1 6B
	cmp ($2F.b),Y		; D1 2F
	cmp $F1CF.w,Y		; D9 CF F1
	eor $98.b,X		; 55 98
	bvs -17.b		; 70 EF
	eor $FFFDF2.l		; 4F F2 FD FF
	sbc $98E1.w		; ED E1 98
	trb $41F7.w		; 1C F7 41
	eor $3001D0.l		; 4F D0 01 30
	sbc $DDA8.w,X		; FD A8 DD
	ora $0E.b,S		; 03 0E
	and ($10.b,X)		; 21 10
	ora ($1D.b)		; 12 1D
	sbc ($98.b),Y		; F1 98
	and ($EF.b),Y		; 31 EF
	dex		; CA
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	rol $EF.b,X		; 36 EF
	eor $A8.b,S		; 43 A8
	ora $EF11E1.l,X		; 1F E1 11 EF
	tsb $FE02.w		; 0C 02 FE
	pea $5C98.w		; F4 98 5C
	ora $5E.b		; 05 5E
	lda ($50.b),Y		; B1 50
	cmp $98F1CF.l		; CF CF F1 98
	sbc $E134F0.l		; EF F0 34 E1
	adc ($A1.b),Y		; 71 A1
	bmi   0.b		; 30 00
	tya		; 98
	wai		; CB
	jsr $33CE.w		; 20 CE 33
	asl $10D7.w,X		; 1E D7 10
	cpx $98.b		; E4 98
	and $F40AE0.l		; 2F E0 0A F4
	inc A		; 1A
	cpx $4A.b		; E4 4A
	sbc $98.b		; E5 98
	eor $10F4.w,X		; 5D F4 10
	asl $C30D.w,X		; 1E 0D C3
	and $98D0.w,X		; 3D D0 98
	and ($BF.b,X)		; 21 BF
	adc $FC.b		; 65 FC
	and $0F.b,S		; 23 0F
	cpy #$4C.b		; C0 4C
	dey		; 88
	sbc ($0A.b,S),Y		; F3 0A
	bpl  45.b		; 10 2D
	ora $7D.b		; 05 7D
	sbc ($D3.b),Y		; F1 D3
	sty $20.b,X		; 94 20
	ora ($0F.b,X)		; 01 0F
	sbc $D10CEF.l		; EF EF 0C D1
	and ($94.b,X)		; 21 94
	and ($F1.b,S),Y		; 33 F1
	eor $CD42EF.l		; 4F EF 42 CD
	eor $B984CF.l		; 4F CF 84 B9
	jsr $6310.w		; 20 10 63
	lsr $450D.w,X		; 5E 0D 45
	rol $0194.w,X		; 3E 94 01
	inc $0F00.w		; EE 00 0F
	cpx #$FC.b		; E0 FC
	dec $6F.b,X		; D6 6F
	sty $C3.b,X		; 94 C3
	ror $20A2.w,X		; 7E A2 20
	sbc ($2E.b,X)		; E1 2E
	dec $943F.w,X		; DE 3F 94
	inc $0C21.w,X		; FE 21 0C
	trb $3C.b		; 14 3C
	sbc ($2E.b)		; F2 2E
	cmp ($90.b)		; D2 90
	jsl $BD21F0.l		; 22 F0 21 BD
	and $FF.b,S		; 23 FF
	ora ($FF.b,S),Y		; 13 FF
	bra -19.b		; 80 ED
	tyx		; BB
	trb $0A.b		; 14 0A
	sbc [$3D.b],Y		; F7 3D
	ora $1D84F4.l		; 0F F4 84 1D
	jsr $3FB0.w		; 20 B0 3F
	sbc $F4FC02.l,X		; FF 02 FC F4
	sty $11.b		; 84 11
	bpl  14.b		; 10 0E
	cpx $1F.b		; E4 1F
	brk $E1.b		; 00 E1
	xce		; FB
	bvs -108.b		; 70 94
	adc $C40CE1.l		; 6F E1 0C C4
	jmp $842C15.l		; 5C 15 2C 84
	sbc ($2F.b,X)		; E1 2F
	sbc ($40.b),Y		; F1 40
	inc $FE11.w,X		; FE 11 FE
	bpl 112.b		; 10 70
	bpl -35.b		; 10 DD
	sbc $DDCC0D.l		; EF 0D CC DD
	cmp ($0F.b)		; D2 0F
	stz $01.b,X		; 74 01
	beq  66.b		; F0 42
	sbc $BF00.w,X		; FD 00 BF
	lsr $6402.w		; 4E 02 64
	ora $B420.w		; 0D 20 B4
	bpl -51.b		; 10 CD
	ora ($10.b)		; 12 10
	cmp ($68.b,X)		; C1 68
	lda $E4.b		; A5 E4
	cmp ($BE.b,S),Y		; D3 BE
	bit $A0.b,X		; 34 A0
	bpl -77.b		; 10 B3
	stz $E2.b,X		; 74 E2
	ora $E31FF5.l		; 0F F5 1F E3
	bpl -31.b		; 10 E1
	ora ($74.b,X)		; 01 74
	dec $DF10.w,X		; DE 10 DF
	and ($FD.b)		; 32 FD
	sbc $0D.b		; E5 0D
	cpy $74.b		; C4 74
	ora $D12DF3.l,X		; 1F F3 2D D1
	asl $F010.w		; 0E 10 F0
	tsb $2174.w		; 0C 74 21
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	ora ($1F.b,S),Y		; 13 1F
	tsb $0D.b		; 04 0D
	cmp $FE6C74.l		; CF 74 6C FE
	ora $210FF2.l		; 0F F2 0F 21
	tsb $7410.w		; 0C 10 74
	and ($ED.b,X)		; 21 ED
	sbc ($0E.b,S),Y		; F3 0E
	ora ($DC.b)		; 12 DC
	jsr $74D1.w		; 20 D1 74
	cop $1D.b		; 02 1D
	ora $5BED6E.l		; 0F 6E ED 5B
	cmp ($20.b,X)		; C1 20
	stz $D3.b,X		; 74 D3
	lsr $10E0.w,X		; 5E E0 10
	beq  16.b		; F0 10
	asl $64E1.w,X		; 1E E1 64
	jsr ($EB40.w,X)		; FC 40 EB
	sbc $1D.b,X		; F5 1D
	sbc $4D.b,X		; F5 4D
	cpx #$74.b		; E0 74
	lsr $31EA.w		; 4E EA 31
	sbc $0E01.w		; ED 01 0E
	and ($EF.b,X)		; 21 EF
	stz $41.b,X		; 74 41
	lda $22FF30.l		; AF 30 FF 22
	sbc $0110.w		; ED 10 01
	stz $FF.b,X		; 74 FF
	and $240DC3.l		; 2F C3 0D 24
	inc $EFF2.w,X		; FE F2 EF
	stz $D4.b		; 64 D4
	cmp ($FF.b),Y		; D1 FF
	eor ($51.b)		; 52 51
	ora $0A1B.w		; 0D 1B 0A
	stz $2F.b,X		; 74 2F
	sbc $2531CF.l,X		; FF CF 31 25
	bit $DC00.w		; 2C 00 DC
	rts		; 60

	dec $3AB0.w,X		; DE B0 3A
	sta $EE56D3.l,X		; 9F D3 56 EE
	sbc $E2FF70.l,X		; FF 70 FF E2
	and ($13.b),Y		; 31 13
	ora ($2F.b),Y		; 11 2F
	inc $74C0.w,X		; FE C0 74
	and ($92.b,X)		; 21 92
	adc $79D2F0.l		; 6F F0 D2 79
	sbc ($0B.b),Y		; F1 0B
	stz $02.b,X		; 74 02
	sbc $BC3F50.l		; EF 50 3F BC
	and ($EF.b,S),Y		; 33 EF
	ora ($70.b),Y		; 11 70
	cpx $13C1.w		; EC C1 13
	and ($21.b,S),Y		; 33 21
	and $0F.b,S		; 23 0F
	sbc ($74.b)		; F2 74
	tsb $1BF5.w		; 0C F5 1B
	cpy #$52.b		; C0 52
	ora ($01.b,X)		; 01 01
	cpx $0274.w		; EC 74 02
	trb $1C.b		; 14 1C
.ACCU 8
	sep #$E2		; E2 E2
	and $74D200.l,X		; 3F 00 D2 74
	jsl $E0F1DE.l		; 22 DE F1 E0
	ora ($31.b),Y		; 11 31
	cop $14.b		; 02 14
	sei		; 78
	cmp $E2F12C.l,X		; DF 2C F1 E2
	sbc ($F0.b)		; F2 F0
	eor ($04.b)		; 52 04
	dey		; 88
	sbc ($0D.b),Y		; F1 0D
	cpx #$CD.b		; E0 CD
	brk $15.b		; 00 15
	ora ($47.b)		; 12 47
	ldy $21.b,X		; B4 21
	and ($1F.b,X)		; 21 1F
	cpx $CCFF.w		; EC FF CC
	jsl $44B423.l		; 22 23 B4 44
	jsr $ECF0.w		; 20 F0 EC
	inc $24AC.w		; EE AC 24
	ora ($B8.b,S),Y		; 13 B8
	jmp $FF01DF.l		; 5C DF 01 FF
	sbc ($EF.b),Y		; F1 EF
	adc $E0.b,S		; 63 E0
	clv		; B8
	eor $FF22AE.l		; 4F AE 22 FF
	cmp ($F1.b),Y		; D1 F1
	and $EF.b,X		; 35 EF
	ldy $65.b,X		; B4 65
	jsr ($0EF1.w,X)		; FC F1 0E
	tyx		; BB
	dec DMASRC2B.w		; CE 24 43
	clv		; B8
	ora ($BE.b),Y		; 11 BE
	trb $EE.b		; 14 EE
	sbc $1F3022.l		; EF 22 30 1F
	clv		; B8
	bpl -36.b		; 10 DC
	and ($EE.b,S),Y		; 33 EE
	sbc $1F0124.l		; EF 24 01 1F
	clv		; B8
	cop $CC.b		; 02 CC
	and ($EE.b,S),Y		; 33 EE
	cpx #$14.b		; E0 14
	ora ($1F.b,X)		; 01 1F
	tay		; A8
	cop $B9.b		; 02 B9
	and $FC.b,X		; 35 FC
	cpy #$26.b		; C0 26
	ora ($21.b),Y		; 11 21
	tay		; A8
	sbc ($AB.b),Y		; F1 AB
	jsl $E4E10F.l		; 22 0F E1 E4
	bit $03.b		; 24 03
	tay		; A8
	sbc $01BE.w		; ED BE 01
	ora ($1E.b),Y		; 11 1E
	cmp ($53.b,S),Y		; D3 53
	bpl -75.b		; 10 B5
	bmi -19.b		; 30 ED
	dec $FEF0.w,X		; DE F0 FE
	sbc ($50.b),Y		; F1 50
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
	jsr $8704.w		; 20 04 87
	sta $F1.b		; 85 F1
	jsl $02845A.l		; 22 5A 84 02
	stz $88.b		; 64 88
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
	brk $31.b		; 00 31
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	dey		; 88
	php		; 08
	bra -128.b		; 80 80
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
	asl $D2.b		; 06 D2
	tsb $2822.w		; 0C 22 28
	bra  14.b		; 80 0E
	clc		; 18
	tsb $C8.b		; 04 C8
	php		; 08
	ora $00.b,S		; 03 00
	brk $28.b		; 00 28
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora #$10.b		; 09 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cmp ($12.b,X)		; C1 12
	rti		; 40

	php		; 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	php		; 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	plp		; 28
	eor ($C0.b,X)		; 41 C0
	sta ($70.b)		; 92 70
	lsr $2CA1.w		; 4E A1 2C
	and $12.b,X		; 35 12
	rti		; 40

	asl A		; 0A
	php		; 08
	bpl   0.b		; 10 00
	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	brk $60.b		; 00 60
	tsb $00.b		; 04 00
	cop $A8.b		; 02 A8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9D.b		; 00 9D
	tsb $E5.b		; 04 E5
	and $B0.b,X		; 35 B0
	and ($12.b)		; 32 12
	cop $81.b		; 02 81
	brk $BA.b		; 00 BA
	cop $12.b		; 02 12
	txa		; 8A
	eor #$20.b		; 49 20
	cop $14.b		; 02 14
	bpl -127.b		; 10 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($80.b,X)		; 81 80
	php		; 08
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $84.b		; 06 84
	php		; 08
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
	.db $42, $12		; 42 12
	jsr $E82A.w		; 20 2A E8
	cop $90.b		; 02 90
	rti		; 40

	and $30.b		; 25 30
	brk $6A.b		; 00 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $90.b		; 00 90
	cop $00.b		; 02 00
	brk $40.b		; 00 40
	cop $00.b		; 02 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bit $00.b		; 24 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
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
	stx $6C.b,Y		; 96 6C
	jmp $05C6.w		; 4C C6 05
	cmp [$16.b],Y		; D7 16
	ldx #$18.b		; A2 18
	asl A		; 0A
	ora #$91.b		; 09 91
	asl $00.b		; 06 00
	php		; 08
	brk $90.b		; 00 90
	and ($00.b,X)		; 21 00
	jsr $0810.w		; 20 10 08
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	brk $11.b		; 00 11
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $60.b		; 00 60
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
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
	brk $07.b		; 00 07
	tsb $D0.b		; 04 D0
	sta ($13.b)		; 92 13
	and ($01.b,X)		; 21 01
	mvp $85,$C4		; 44 C4 85
	cpy $00.b		; C4 00
	and ($00.b),Y		; 31 00
	cop $14.b		; 02 14
	tsb $10.b		; 04 10
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	brk $01.b		; 00 01
	sta ($00.b,X)		; 81 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	mvp $4B,$7A		; 44 7A 4B
	stp		; DB
	bcc -64.b		; 90 C0
	and $2C.b,S		; 23 2C
	rts		; 60

	.db $82, $03, $60		; 82 03 60
	clc		; 18
	bcc  32.b		; 90 20
	brk $24.b		; 00 24
	brk $21.b		; 00 21
	rti		; 40

	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	php		; 08
	ora ($80.b,X)		; 01 80
	.db $42, $01		; 42 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $B2.b		; 00 B2
	php		; 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 25FFFE. Skipping.
	.db $6E		; Opcode 6E overrunning bank boundry at 25FFFF. Skipping.
.ENDS
